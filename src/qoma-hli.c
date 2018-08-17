#include "qoma-hli.h"
static char *qoma_support_URL;
void format_support_URL(int *status);

// qoma initialization hook
void qomaini(int *rc) {
	int status = -1;
	fm(cfmini(&status));
	format_support_URL(&status);
	*rc = status;
}

// qoma finalization hook
void qomafin(int *rc) {
	int status = -1;
	fm(cfmfin(&status));
	*rc = status;
}

int check_pin(int expiry, char *nameid, int pin) {
	unsigned long long hash_val = hash(expiry, nameid);
	int wanted = (int) (hash_val % PRIME);

	return (wanted == pin) ?
			HSUCC : // hli success
			HBPROD; // hli unauthorized product
}

char *get_expiry_string() {
	char datstr[80];
	int status, expiry;

	expiry = get_expiry_date();
	fm(cfmdati(&status,HDAILY,expiry, datstr, "<year><mz><dz>", HDEC, HFYAUT));

	return strdup(datstr);
}

int get_expiry_date() {
	int status, expiry;

	fm(cfmexpiration(&status, &expiry));

	return expiry;
}

unsigned long long hash(int date, char *str) {
	unsigned long long hash = date;
	int c;

	while ('\0' != (c = *str++)){
		hash = ((hash << 5) + hash) + c;
		}

	return hash;
}

int get_days_to_expiry() {
	int status, expiry, now;
	fm(cfmtody(&status, HDAILY, &now));
	fm(cfmexpiration(&status, &expiry));
	return expiry - now;
}

void format_support_URL(int *status) {
	char buffer[1024];
	int rc;
	if (*status == 0) {
		char *expiry_str = get_expiry_string();
		int days = get_days_to_expiry();
		int expiry_date = get_expiry_date();
		char *nameid = get_nameid();
		unsigned long long client_id = hash(expiry_date, nameid);
		
#ifdef WIN32
		// not C99 compliant; can not format unsigned long long as "%llx"
		// workaround is not portable, assumes little endian byte order
		unsigned *up =( unsigned * )&client_id;
		sprintf(buffer,
          "https://qoma-hli-pin.appspot.com/?@clientid=%x%x&@expiry=%s&@days=%d\n",
          up[1],up[0],expiry_str, days);
#else
		sprintf(buffer,
          "https://qoma-hli-pin.appspot.com/?@clientid=%llx&@expiry=%s&@days=%d\n",
          client_id, expiry_str, days);
#endif

		qoma_support_URL = strdup(buffer);

		char *qoma_pin = getenv("QOMA_PIN");
		if (qoma_pin == NULL) {
			*status = HBPROD;
		} else {
			*status = check_pin(expiry_date, nameid, atoi(qoma_pin));
		}
		if (*status != HSUCC) {
			qomafin(&rc);
			Rprintf("\nObtain or update your QOMA_PIN:\n\t%s\n\n", qoma_support_URL);
		}
	} else {
		qoma_support_URL = strdup("");
	}
}

char *get_contents(char *filename) {
	char * buffer = NULL;
	long length;
	FILE * f = fopen(filename, "rb");
	size_t got;

	if (f) {
		fseek(f, 0, SEEK_END);
		length = ftell(f);
		fseek(f, 0, SEEK_SET);
		buffer = malloc(length+1);
		if (buffer) {
			got = fread(buffer, 1, length, f);
			if(got!=length){
				Rprintf("read error [%s]\n",filename);
			}
			buffer[length]='\0';
		}
		fclose(f);
	} else {
		Rprintf("Could not open %s\n", filename);
	}

	return buffer;
}

char *get_nameid() {
	char *FAME = getenv("FAME");
	char filename[80];
	sprintf(filename, "%s/nameid.txt", FAME);
	return get_contents(filename);
}

int get_pin(int expiry, char *nameid) {
	unsigned long long hash_val = hash(expiry, nameid);
	int pin = (int) (hash_val % PRIME);
	return pin;
}

