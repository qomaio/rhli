#include "rhli.h"

float FNUMNA;
float FNUMNC;
float FNUMND;

double FPRCNA;
double FPRCNC;
double FPRCND;

int FBOONA;
int FBOONC;
int FBOOND;

int FDATNA;
int FDATNC;
int FDATND;

long FAME_INDEX_NA;
long FAME_INDEX_NC;
long FAME_INDEX_ND;

char FSTRNA[3];
char FSTRNC[3];
char FSTRND[3];

static const R_CMethodDef cMethods[] = { { NULL, NULL, 0 } };

void R_init_chli(DllInfo *info) {
	R_registerRoutines(info, cMethods, NULL, NULL, NULL);
	R_useDynamicSymbols(info, TRUE);
}

void cfmabrt(int *status, int connkey) {
	*status = 2;
}
void cfmalob(int *status, int dbkey, char *objnam, int class_, int freq,
		int type, int basis, int observ, int numobs, int numchr, float growth) {
	*status = 2;
}
void cfmasrt(int *status, int connkey, int assert_type, char *assertion,
		int perspective, int grouping, int *dblist) {
	*status = 2;
}
void cfmbwdy(int *status, int freq, int date, int *biwkdy) {
	*status = 2;
}
void cfmchfr(int *status, int sfreq, int sdate, int select, int tfreq,
		int *tdate, int relate) {
	*status = 2;
}
void cfmclcn(int *status, int connkey) {
	*status = 2;
}
void cfmcldb(int *status, int dbkey) {
	*status = 2;
}
void cfmcmmt(int *status, int connkey) {
	*status = 2;
}
void cfmcpob(int *status, int srckey, int tarkey, char *srcnam, char *tarnam) {
	*status = 2;
}
void cfmdatd(int *status, int freq, int date, int *year, int *month, int *day) {
	*status = 2;
}
void cfmdatf(int *status, int freq, int date, int *year, int *period,
		int fmonth, int flabel) {
	*status = 2;
}
void cfmdati(int *status, int freq, int date, char *datstr, char *image,
		int fmonth, int flabel) {
	*status = 2;
}
void cfmdatl(int *status, int freq, int date, char *datstr, int fmonth,
		int flabel) {
	*status = 2;
}
void cfmdatp(int *status, int freq, int date, int *year, int *period) {
	*status = 2;
}
void cfmdatt(int *status, int freq, int date, int *hour, int *minute,
		int *second, int *ddate) {
	*status = 2;
}
void cfmddat(int *status, int freq, int *date, int year, int month, int day) {
	*status = 2;
}
void cfmddes(int *status, int dbkey, char *des) {
	*status = 2;
}
void cfmddoc(int *status, int dbkey, char *doc) {
	*status = 2;
}
void cfmdlen(int *status, int dbkey, char *objnam, int *deslen, int *doclen) {
	*status = 2;
}
void cfmdlob(int *status, int dbkey, char *objnam) {
	*status = 2;
}
void cfmexpiration(int *status, int *date) {
	*status = 2;
}
void cfmfame(int *status, char *cmd) {
	*status = 2;
}
void cfmfdat(int *status, int freq, int *date, int year, int period, int fmonth,
		int flabel) {
	*status = 2;
}
void cfmfdiv(int *status, int freq1, int freq2, int *flag) {
	*status = 2;
}
void cfmferr(int *status, char *errtxt) {
	*status = 2;
}
void cfmfin(int *status) {
	*status = 2;
}
void cfmgcid(int *status, int dbkey, int *connkey) {
	*status = 2;
}
void cfmgdat(int *status, int dbkey, char *objnam, int freq, int *cdate,
		int *mdate) {
	*status = 2;
}
void cfmgdba(int *status, int dbkey, int *cyear, int *cmonth, int *cday,
		int *myear, int *mmonth, int *mday, char *desc, char *doc) {
	*status = 2;
}
void cfmgdbd(int *status, int dbkey, int freq, int *cdate, int *mdate) {
	*status = 2;
}
void cfmget_dimension(int *status, int dbkey, int *dimen) {
	*status = 2;
}
void cfmget_extradots(int *status, int dbkey, int *xdots) {
	*status = 2;
}
void cfmglen(int *status, int dbkey, int *deslen, int *doclen) {
	*status = 2;
}
void cfmgnam(int *status, int dbkey, char *objnam, char *basnam) {
	*status = 2;
}
void cfmgsln(int *status, int dbkey, char *objnam, int *length) {
	*status = 2;
}
void cfmgtali(int *status, int dbkey, char *objnam, char *aliass, int inlen,
		int *outlen) {
	*status = 2;
}
void cfmgtaso(int *status, int dbkey, char *objnam, char *assoc, int inlen,
		int *outlen) {
	*status = 2;
}
void cfmgtatt_f(int *status, int dbkey, char *objnam, int *atttyp, char *attnam,
		void *value, int inlen, int *outlen) {
	*status = 2;
}
void cfmgtnl(int *status, int dbkey, char *objnam, int index, char *strval,
		int inlen, int *outlen) {
	*status = 2;
}
void cfmgtstr(int *status, int dbkey, char *objnam, int *range_, char *strval,
		int *ismiss, int inlen, int *outlen) {
	*status = 2;
}
void cfmgtsts(int *status, int dbkey, char *objnam, int *range_, char **strary,
		int *misary, int *inlenary, int *outlenary) {
	*status = 2;
}
void cfmidat(int *status, int freq, int *date, char *datstr, char *image,
		int fmonth, int flabel, int centry) {
	*status = 2;
}
void cfmini(int *status) {
	*status = 98;
}
void cfminwc(int *status, int dbkey, char *wilnam) {
	*status = 2;
}
void cfmisbm(int *status, int value, int *ismiss) {
	*status = 2;
}
void cfmisdm(int *status, int value, int *ismiss) {
	*status = 2;
}
void cfmislp(int *status, int year, int *leap) {
	*status = 2;
}
void cfmisnm(int *status, float value, int *ismiss) {
	*status = 2;
}
void cfmispm(int *status, double value, int *ismiss) {
	*status = 2;
}
void cfmissm(int *status, char *value, int *ismiss) {
	*status = 2;
}
void cfmlali(int *status, int dbkey, char *objnam, int *alilen) {
	*status = 2;
}
void cfmlaso(int *status, int dbkey, char *objnam, int *asolen) {
	*status = 2;
}
void cfmlatt(int *status, int dbkey, char *objnam, int atttyp, char *attnam,
		int *attlen) {
	*status = 2;
}
void cfmldat(int *status, int freq, int *date, char *datstr, int fmonth,
		int flabel, int centry) {
	*status = 2;
}
void cfmlerr(int *status, int *len) {
	*status = 2;
}
void cfmlsts(int *status, int dbkey, char *objnam, int *range_, int *lenary) {
	*status = 2;
}
void cfmncnt(int *status, int dbkey, char *objnam, int *length) {
	*status = 2;
}
void cfmnlen(int *status, int dbkey, char *objnam, int index, int *length) {
	*status = 2;
}
void cfmnwob(int *status, int dbkey, char *objnam, int class_, int freq,
		int type, int basis, int observ) {
	*status = 2;
}
void cfmnxwc(int *status, int dbkey, char *objnam, int *class_, int *type,
		int *freq) {
	*status = 2;
}
void cfmopcn(int *status, int *connkey, char *service, char *hostname,
		char *username, char *password) {
	*status = 2;
}
void cfmopdb(int *status, int *dbkey, char *dbname, int mode) {
	*status = 2;
}
void cfmopdc(int *status, int *dbkey, char *dbname, int mode, int connkey) {
	*status = 2;
}
void cfmoprc(int *status, int *dbkey, int connkey) {
	*status = 2;
}
void cfmopre(int *status, int *dbkey, char *svname) {
	*status = 2;
}
void cfmopwk(int *status, int *dbkey) {
	*status = 2;
}
void cfmosiz(int *status, int dbkey, char *objnam, int *class_, int *type,
		int *freq, int *fyear, int *fprd, int *lyear, int *lprd) {
	*status = 2;
}
void cfmpack(int *status, int dbkey) {
	*status = 2;
}
void cfmpdat(int *status, int freq, int *date, int year, int period) {
	*status = 2;
}
void cfmpfrq(int *status, int *freq, int base, int nunits, int year,
		int month) {
	*status = 2;
}
void cfmpind(int *status, int freq, int *count) {
	*status = 2;
}
void cfmpinm(int *status, int freq, int year, int month, int *count) {
	*status = 2;
}
void cfmpiny(int *status, int freq, int year, int *count) {
	*status = 2;
}
void cfmpodb(int *status, int dbkey) {
	*status = 2;
}
void cfmrdfa_f(int *status, int dbkey, char *objnam, int wntobs, int *syear,
		int *sprd, int *gotobs, void *valary, int tmiss, void *mistt) {
	*status = 2;
}
void cfmrdfm(int *status, int dbkey, char *objnam, char *source, int ilen,
		int *olen) {
	*status = 2;
}
void cfmrmev(int *status, int dbkey, char *expr, char *optns, int wdbkey,
		char *objnam) {
	*status = 2;
}
void cfmrnob(int *status, int dbkey, char *srcnam, char *tarnam) {
	*status = 2;
}
void cfmrrng_f(int *status, int dbkey, char *objnam, int *range_, void *valary,
		int tmiss, void *mistt) {
	*status = 2;
}
void cfmrsdb(int *status, int dbkey) {
	*status = 2;
}
void cfmsali(int *status, int dbkey, char *objnam, char *aliass) {
	*status = 2;
}
void cfmsaso(int *status, int dbkey, char *objnam, char *assoc) {
	*status = 2;
}
void cfmsatt_f(int *status, int dbkey, char *objnam, int atttyp, char *attnam,
		void *value) {
	*status = 2;
}
void cfmsbas(int *status, int dbkey, char *objnam, int basis) {
	*status = 2;
}
void cfmsbm(int *status, int nctran, int ndtran, int natran, int *bmistt) {
	*status = 2;
}
void cfmsdes(int *status, int dbkey, char *objnam, char *desc) {
	*status = 2;
}
void cfmsdm(int *status, int nctran, int ndtran, int natran, int *dmistt) {
	*status = 2;
}
void cfmsdoc(int *status, int dbkey, char *objnam, char *doc) {
	*status = 2;
}
void cfmset_dimension(int *status, int dbkey, int dimen) {
	*status = 2;
}
void cfmset_extradots(int *status, int dbkey, int xdots) {
	*status = 2;
}
void cfmsfis(int *status, int freq, int *syear, int *sprd, int *eyear,
		int *eprd, int *range_, int *numobs, int fmonth, int flabel) {
	*status = 2;
}
void cfmsinp(int *status, char *cmd) {
	*status = 2;
}
void cfmsnm(int *status, float nctran, float ndtran, float natran,
		float *nmistt) {
	*status = 2;
}
void cfmsobs(int *status, int dbkey, char *objnam, int observ) {
	*status = 2;
}
void cfmsopt(int *status, char *optnam, char *optval) {
	*status = 2;
}
void cfmspm(int *status, double nctran, double ndtran, double natran,
		double *pmistt) {
	*status = 2;
}
void cfmspos(int *status, int flag) {
	*status = 2;
}
void cfmsrng(int *status, int freq, int *syear, int *sprd, int *eyear,
		int *eprd, int *range_, int *numobs) {
	*status = 2;
}
void cfmssln(int *status, int dbkey, char *objnam, int length) {
	*status = 2;
}
void cfmtdat(int *status, int freq, int *date, int hour, int minute, int second,
		int ddate) {
	*status = 2;
}
void cfmtody(int *status, int freq, int *date) {
	*status = 2;
}
void cfmufrq(int *status, int freq, int *base, int *nunits, int *year,
		int *month) {
	*status = 2;
}
void cfmver(int *status, float *ver) {
	*status = 2;
}
void cfmwhat(int *status, int dbkey, char *objnam, int *class_, int *type,
		int *freq, int *basis, int *observ, int *fyear, int *fprd, int *lyear,
		int *lprd, int *cyear, int *cmonth, int *cday, int *myear, int *mmonth,
		int *mday, char *desc, char *doc) {
	*status = 2;
}
void cfmwkdy(int *status, int freq, int date, int *wkdy) {
	*status = 2;
}
void cfmwrmt_f(int *status, int dbkey, char *objnam, int objtyp, int *range_,
		void *valary, int tmiss, void *mistt) {
	*status = 2;
}
void cfmwrng_f(int *status, int dbkey, char *objnam, int *range_, void *valary,
		int tmiss, void *mistt) {
	*status = 2;
}
void cfmwstr(int *status, int dbkey, char *objnam, int *range_, char *strval,
		int ismiss, int length) {
	*status = 2;
}
void cfmwsts(int *status, int dbkey, char *objnam, int *range_, char **strary,
		int *misary, int *lenary) {
	*status = 2;
}
void cfmwtnl(int *status, int dbkey, char *objnam, int index, char *strval) {
	*status = 2;
}
int fame_biweekday(int freq, long date, int *biweekday) {
	return 2;
}
int fame_create_formula(int dbkey, char *oname, char *value) {
	return 2;
}
int fame_create_global_formula(int dbkey, char *oname, char *value) {
	return 2;
}
int fame_current_time(int freq, fame_date *date) {
	return 2;
}
int fame_date_missing_type(long date, int *missing_type) {
	return 2;
}
int fame_date_to_literal(int freq, fame_date date, char *literal, int end_month,
		int label_year, int inlen, int *outlen) {
	return 2;
}
int fame_dateof(int from_freq, fame_date from_date, int select, int to_freq,
		fame_date *to_date, int relate) {
	return 2;
}
int fame_day_to_index(int freq, fame_date *date, int year, int month, int day,
		int relate) {
	return 2;
}
int fame_dimchar(char *dimchar, int dimnum) {
	return 2;
}
int fame_dimnum(int *dimnum, char dimchar) {
	return 2;
}
int fame_expiration_date(fame_date *date) {
	return 2;
}
int fame_format_date(int freq, long date, char *string, char *image,
		int end_month, int label_year, int inlen, int *outlen) {
	return 2;
}
int fame_free_wildcard(int wildkey) {
	return 2;
}
int fame_get_base_frequency(int *base_freq, int freq) {
	return 2;
}
int fame_get_boolean_attribute(int dbkey, char *objnam, char *attnam,
		int *value) {
	return 2;
}
int fame_get_booleans(int dbkey, char *objnam, fame_range *range_,
		int *valary) {
	return 2;
}
int fame_get_date_attribute(int dbkey, char *objnam, char *attnam,
		fame_index *value, int *freq) {
	return 2;
}
int fame_get_dates(int dbkey, char *objnam, fame_range *range_,
		fame_date *valary) {
	return 2;
}
int fame_get_db_dates(int dbkey, fame_index *cdate, fame_index *mdate) {
	return 2;
}
int fame_get_dbversion(int dbkey, int *dbversion) {
	return 2;
}
int fame_get_namelist_attribute(int dbkey, char *objnam, char *attnam,
		char *value, int inlen, int *outlen) {
	return 2;
}
int fame_get_next_wildcard(int wildkey, char *objname, int *obj_class,
		int *type, int *freq, fame_index *start, fame_index *end, int inlen,
		int *outlen) {
	return 2;
}
int fame_get_numeric_attribute(int dbkey, char *objnam, char *attnam,
		float *value) {
	return 2;
}
int fame_get_numerics(int dbkey, char *objnam, fame_range *range_,
		float *valary) {
	return 2;
}
int fame_get_precision_attribute(int dbkey, char *objnam, char *attnam,
		double *value) {
	return 2;
}
int fame_get_precisions(int dbkey, char *objnam, fame_range *range_,
		double *valary) {
	return 2;
}
int fame_get_range_numobs(fame_range *range_, int *numobs) {
	return 2;
}
int fame_get_real_name(int dbkey, char *objname, char *basename, int inlen,
		int *outlen) {
	return 2;
}
int fame_get_server_input(char *buffer, int buffer_size, size_t *input_size) {
	return 2;
}
int fame_get_string_attribute(int dbkey, char *objnam, char *attnam,
		char *value, int inlen, int *outlen) {
	return 2;
}
int fame_get_strings(int dbkey, char *objnam, fame_range *range_, char **strary,
		int *inlenary, int *outlenary) {
	return 2;
}
int fame_index_to_day(int freq, long date, int *year, int *month, int *day) {
	return 2;
}
int fame_index_to_int(fame_index *indexes64, int *indexes32, int numobs) {
	return 2;
}
int fame_index_to_time(int freq, long date, int *year, int *month, int *day,
		int *hour, int *minute, int *second, int *millisecond) {
	return 2;
}
int fame_index_to_year_period(int freq, long date, int *year, int *period) {
	return 2;
}
int fame_info(int dbkey, char *oname, int *oclass, int *type, int *freq,
		fame_index *findex, fame_index *lindex, int *basis, int *observ,
		fame_index *cdate, fame_index *mdate, char *desc, int indesclen,
		int *outdesclen, char *doc, int indoclen, int *outdoclen) {
	return 2;
}
int fame_init_range_from_end_numobs(fame_range *range_, int freq, long end,
		int numobs) {
	return 2;
}
int fame_init_range_from_indexes(fame_range *range_, int freq, long start,
		long end) {
	return 2;
}
int fame_init_range_from_start_numobs(fame_range *range_, int freq, long start,
		int numobs) {
	return 2;
}
int fame_init_wildcard(int dbkey, int *wildkey, char *wildname, int wildonly,
		char *wildstart) {
	return 2;
}
int fame_int_to_index(int *indexes32, fame_index *indexes64, int numobs) {
	return 2;
}
int fame_len_strings(int dbkey, char *objnam, fame_range *range_, int *lenary) {
	return 2;
}
int fame_literal_to_date(int freq, fame_index *date, char *literal,
		int end_month, int label_year, int century) {
	return 2;
}
int fame_modify_formula(int dbkey, char *oname, char *value) {
	return 2;
}
int fame_parse_frequency(int *freq, char *frequency_spec) {
	return 2;
}
int fame_quick_info(int dbkey, char *oname, int *oclass, int *type, int *freq,
		fame_index *findex, fame_index *lindex) {
	return 2;
}
int fame_remexec(int dbkey, char *command, int wdbkey, char *objnam) {
	return 2;
}
int fame_scan_date(int freq, fame_index *date, char *string, char *image,
		int end_month, int label_year, int century) {
	return 2;
}
int fame_set_boolean_attribute(int dbkey, char *objnam, char *attnam,
		int value) {
	return 2;
}
int fame_set_date_attribute(int dbkey, char *objnam, char *attnam, long value,
		int freq) {
	return 2;
}
int fame_set_namelist_attribute(int dbkey, char *objnam, char *attnam,
		char *value) {
	return 2;
}
int fame_set_numeric_attribute(int dbkey, char *objnam, char *attnam,
		float value) {
	return 2;
}
int fame_set_precision_attribute(int dbkey, char *objnam, char *attnam,
		double value) {
	return 2;
}
int fame_set_string_attribute(int dbkey, char *objnam, char *attnam,
		char *value) {
	return 2;
}
int fame_time_to_index(int freq, fame_index *date, int year, int month, int day,
		int hour, int minute, int second, int millisecond, int relate) {
	return 2;
}
int fame_type_to_string(int type, char *type_spec, int inlen, int *outlen) {
	return 2;
}
int fame_weekday(int freq, long date, int *weekday) {
	return 2;
}
int fame_write_booleans(int dbkey, char *objnam, fame_range *range_,
		int *valary) {
	return 2;
}
int fame_write_dates(int dbkey, char *objnam, fame_range *range_,
		int value_type, fame_date *valary) {
	return 2;
}
int fame_write_numerics(int dbkey, char *objnam, fame_range *range_,
		float *valary) {
	return 2;
}
int fame_write_precisions(int dbkey, char *objnam, fame_range *range_,
		double *valary) {
	return 2;
}
int fame_write_strings(int dbkey, char *objnam, fame_range *range_,
		const char **strary) {
	return 2;
}
int fame_year_period_to_index(int freq, fame_index *date, int year,
		int period) {
	return 2;
}
