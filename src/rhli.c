#include "rhli.h"

static const R_CMethodDef cMethods[] = { { NULL, NULL, 0 } };

void R_init_rhli(DllInfo *info) {
	R_registerRoutines(info, cMethods, NULL, NULL, NULL);
	R_useDynamicSymbols(info, TRUE);
}

void _cfmabrt(int *status, int *connkey) {
	cfmabrt(status, *connkey);
}

void _cfmalob(int *status, int *dbkey, char **objnam, int *class, 
		int *freq, int *type, int *basis, int *observ, int *numobs, 
		int *numchr, float *growth) {
	cfmalob(status,*dbkey,*objnam,*class,*freq,*type,*basis,*observ,
			*numobs,*numchr,*growth);
}

void _cfmasrt(int *status, int *connkey, int *assert_type, char **assertion,
		int *perspective, int *grouping, int *dblist) {
	cfmasrt(status, *connkey, *assert_type, *assertion, 
			*perspective, *grouping, dblist);
}

void _cfmbwdy(int *status, int *freq, int *date, int *biwkdy) {
	cfmbwdy(status, *freq, *date, biwkdy);
}

void _cfmchfr(int *status, int *sfreq, int *sdate, int *select, int *tfreq,
		int *tdate, int *relate) {
	cfmchfr(status, *sfreq, *sdate, *select, *tfreq, tdate, *relate);
}

void _cfmclcn(int *status, int *connkey) {
	cfmclcn(status, *connkey);
}

void _cfmcldb(int *status, int *dbkey) {
	cfmcldb(status, *dbkey);
}

void _cfmcmmt(int *status, int *connkey) {
	cfmcmmt(status, *connkey);
}

void _cfmcpob(int *status, int *srckey, int *tarkey, char **srcnam,
		char **tarnam) {
	cfmcpob(status, *srckey, *tarkey, *srcnam, *tarnam);
}

void _cfmdatd(int *status, int *freq, int *date, int *year, int *month,
		int *day) {
	cfmdatd(status, *freq, *date, year, month, day);
}

void _cfmdatf(int *status, int *freq, int *date, int *year, int *period,
		int *fmonth, int *flabel) {
	cfmdatf(status, *freq, *date, year, period, *fmonth, *flabel);
}

void _cfmdati(int *status, int *freq, int *date, char **datstr, char **image,
		int *fmonth, int *flabel) {
	cfmdati(status, *freq, *date, *datstr, *image, *fmonth, *flabel);
}

void _cfmdatl(int *status, int *freq, int *date, char **datstr, int *fmonth,
		int *flabel) {
	cfmdatl(status, *freq, *date, *datstr, *fmonth, *flabel);
}

void _cfmdatp(int *status, int *freq, int *date, int *year, int *period) {
	cfmdatp(status, *freq, *date, year, period);
}

void _cfmdatt(int *status, int *freq, int *date, int *hour, int *minute,
		int *second, int *ddate) {
	cfmdatt(status, *freq, *date, hour, minute, second, ddate);
}

void _cfmddat(int *status, int *freq, int *date, int *year, int *month,
		int *day) {
	cfmddat(status, *freq, date, *year, *month, *day);
}

void _cfmddes(int *status, int *dbkey, char **des) {
	cfmddes(status, *dbkey, *des);
}

void _cfmddoc(int *status, int *dbkey, char **doc) {
	cfmddoc(status, *dbkey, *doc);
}

void _cfmdlen(int *status, int *dbkey, char **objnam, int *deslen,
		int *doclen) {
	cfmdlen(status, *dbkey, *objnam, deslen, doclen);
}

void _cfmdlob(int *status, int *dbkey, char **objnam) {
	cfmdlob(status, *dbkey, *objnam);
}

void _cfmexpiration(int *status, int *date) {
	cfmexpiration(status, date);
}

void _cfmfame(int *status, char **cmd) {
	cfmfame(status, *cmd);
}

void _cfmfdat(int *status, int *freq, int *date, int *year, int *period,
		int *fmonth, int *flabel) {
	cfmfdat(status, *freq, date, *year, *period, *fmonth, *flabel);
}

void _cfmfdiv(int *status, int *freq1, int *freq2, int *flag) {
	cfmfdiv(status, *freq1, *freq2, flag);
}

void _cfmferr(int *status, char **errtxt) {
	cfmferr(status, *errtxt);
}

void _cfmfin(int *status) {
	qomafin(status);
}

void _cfmgcid(int *status, int *dbkey, int *connkey) {
	cfmgcid(status, *dbkey, connkey);
}

void _cfmgdat(int *status, int *dbkey, char **objnam, int *freq, int *cdate,
		int *mdate) {
	cfmgdat(status, *dbkey, *objnam, *freq, cdate, mdate);
}

void _cfmgdba(int *status, int *dbkey, int *cyear, int *cmonth, int *cday,
		int *myear, int *mmonth, int *mday, char **desc, char **doc) {
	cfmgdba(status, *dbkey, cyear, cmonth, cday, myear, mmonth, mday, *desc,
			*doc);
}

void _cfmgdbd(int *status, int *dbkey, int *freq, int *cdate, int *mdate) {
	cfmgdbd(status, *dbkey, *freq, cdate, mdate);
}

void _cfmget_dimension(int *status, int *dbkey, int *dimen) {
	cfmget_dimension(status, *dbkey, dimen);
}

void _cfmget_extradots(int *status, int *dbkey, int *xdots) {
	cfmget_extradots(status, *dbkey, xdots);
}

void _cfmglen(int *status, int *dbkey, int *deslen, int *doclen) {
	cfmglen(status, *dbkey, deslen, doclen);
}

void _cfmgnam(int *status, int *dbkey, char **objnam, char **basnam) {
	cfmgnam(status, *dbkey, *objnam, *basnam);
}

void _cfmgsln(int *status, int *dbkey, char **objnam, int *length) {
	cfmgsln(status, *dbkey, *objnam, length);
}

void _cfmgtali(int *status, int *dbkey, char **objnam, char **aliass,
		int *inlen, int *outlen) {
	cfmgtali(status, *dbkey, *objnam, *aliass, *inlen, outlen);
}

void _cfmgtaso(int *status, int *dbkey, char **objnam, char **assoc, int *inlen,
		int *outlen) {
	cfmgtaso(status, *dbkey, *objnam, *assoc, *inlen, outlen);
}

void _cfmgtatt_char(int *status, int *dbkey, char **objnam, int *atttyp,
		char **attnam, char **value, int *inlen, int *outlen) {
	cfmgtatt_f(status, *dbkey, *objnam, atttyp, *attnam, *value, *inlen,
			outlen);
}

void _cfmgtatt_double(int *status, int *dbkey, char **objnam, int *atttyp,
		char **attnam, double *value, int *inlen, int *outlen) {
	cfmgtatt_f(status, *dbkey, *objnam, atttyp, *attnam, value, *inlen, outlen);
}

void _cfmgtatt_float(int *status, int *dbkey, char **objnam, int *atttyp,
		char **attnam, float *value, int *inlen, int *outlen) {
	cfmgtatt_f(status, *dbkey, *objnam, atttyp, *attnam, value, *inlen, outlen);
}

void _cfmgtatt_int(int *status, int *dbkey, char **objnam, int *atttyp,
		char **attnam, int *value, int *inlen, int *outlen) {
	cfmgtatt_f(status, *dbkey, *objnam, atttyp, *attnam, value, *inlen, outlen);
}

void _cfmgtnl(int *status, int *dbkey, char **objnam, int *index, char **strval,
		int *inlen, int *outlen) {
	cfmgtnl(status, *dbkey, *objnam, *index, *strval, *inlen, outlen);
}

void _cfmgtstr(int *status, int *dbkey, char **objnam, int *range,
		char **strval, int *ismiss, int *inlen, int *outlen, int *len_range) {
	if ((*len_range) <= 0)
		range = NULL;
	cfmgtstr(status, *dbkey, *objnam, range, *strval, ismiss, *inlen, outlen);
}

void _cfmgtsts(int *status, int *dbkey, char **objnam, int *range,
		char **strary, int *misary, int *inlenary, int *outlenary,
		int *len_range, int *len_strary, int *len_misary, int *len_inlenary,
		int *len_outlenary) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_strary) <= 0)
		strary = NULL;
	if ((*len_misary) <= 0)
		misary = NULL;
	if ((*len_inlenary) <= 0)
		inlenary = NULL;
	if ((*len_outlenary) <= 0)
		outlenary = NULL;
	cfmgtsts(status, *dbkey, *objnam, range, strary, misary, inlenary,
			outlenary);
}

void _cfmidat(int *status, int *freq, int *date, char **datstr, char **image,
		int *fmonth, int *flabel, int *centry) {
	cfmidat(status, *freq, date, *datstr, *image, *fmonth, *flabel, *centry);
}

void _cfmini(int *status) {
	qomaini(status);
}

void _cfminwc(int *status, int *dbkey, char **wilnam) {
	cfminwc(status, *dbkey, *wilnam);
}

void _cfmisbm(int *status, int *value, int *ismiss) {
	cfmisbm(status, *value, ismiss);
}

void _cfmisdm(int *status, int *value, int *ismiss) {
	cfmisdm(status, *value, ismiss);
}

void _cfmislp(int *status, int *year, int *leap) {
	cfmislp(status, *year, leap);
}

void _cfmisnm(int *status, float *value, int *ismiss) {
	cfmisnm(status, *value, ismiss);
}

void _cfmispm(int *status, double *value, int *ismiss) {
	cfmispm(status, *value, ismiss);
}

void _cfmissm(int *status, char **value, int *ismiss) {
	cfmissm(status, *value, ismiss);
}

void _cfmlali(int *status, int *dbkey, char **objnam, int *alilen) {
	cfmlali(status, *dbkey, *objnam, alilen);
}

void _cfmlaso(int *status, int *dbkey, char **objnam, int *asolen) {
	cfmlaso(status, *dbkey, *objnam, asolen);
}

void _cfmlatt(int *status, int *dbkey, char **objnam, int *atttyp,
		char **attnam, int *attlen) {
	cfmlatt(status, *dbkey, *objnam, *atttyp, *attnam, attlen);
}

void _cfmldat(int *status, int *freq, int *date, char **datstr, int *fmonth,
		int *flabel, int *centry) {
	cfmldat(status, *freq, date, *datstr, *fmonth, *flabel, *centry);
}

void _cfmlerr(int *status, int *len) {
	cfmlerr(status, len);
}

void _cfmlsts(int *status, int *dbkey, char **objnam, int *range, int *lenary,
		int *len_range, int *len_lenary) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_lenary) <= 0)
		lenary = NULL;
	cfmlsts(status, *dbkey, *objnam, range, lenary);
}

void _cfmncnt(int *status, int *dbkey, char **objnam, int *length) {
	cfmncnt(status, *dbkey, *objnam, length);
}

void _cfmnlen(int *status, int *dbkey, char **objnam, int *index, int *length) {
	cfmnlen(status, *dbkey, *objnam, *index, length);
}

void _cfmnwob(int *status, int *dbkey, char **objnam, int *class, 
		int *freq, int *type, int *basis, int *observ) {
	cfmnwob(status,*dbkey,*objnam,*class,*freq,*type,*basis,*observ);
}

void _cfmnxwc(int *status, int *dbkey, char **objnam,
		int *class, int *type, int *freq) {
	cfmnxwc(status,*dbkey,*objnam,class,type,freq);
}

void _cfmopcn(int *status, int *connkey, char **service, char **hostname,
		char **username, char **password) {
	cfmopcn(status, connkey, *service, *hostname, *username, *password);
}

void _cfmopdb(int *status, int *dbkey, char **dbname, int *mode) {
	cfmopdb(status, dbkey, *dbname, *mode);
}

void _cfmopdc(int *status, int *dbkey, char **dbname, int *mode, int *connkey) {
	cfmopdc(status, dbkey, *dbname, *mode, *connkey);
}

void _cfmoprc(int *status, int *dbkey, int *connkey) {
	cfmoprc(status, dbkey, *connkey);
}

void _cfmopre(int *status, int *dbkey, char **svname) {
	cfmopre(status, dbkey, *svname);
}

void _cfmopwk(int *status, int *dbkey) {
	cfmopwk(status, dbkey);
}

void _cfmosiz(int *status, int *dbkey, char **objnam, int *class, 
		int *type, int *freq, int *fyear, int *fprd, int *lyear, int *lprd) {
	cfmosiz(status,*dbkey,*objnam,class,type,freq,fyear,fprd,lyear,lprd);
}

void _cfmpack(int *status, int *dbkey) {
	cfmpack(status, *dbkey);
}

void _cfmpdat(int *status, int *freq, int *date, int *year, int *period) {
	cfmpdat(status, *freq, date, *year, *period);
}

void _cfmpfrq(int *status, int *freq, int *base, int *nunits, int *year,
		int *month) {
	cfmpfrq(status, freq, *base, *nunits, *year, *month);
}

void _cfmpind(int *status, int *freq, int *count) {
	cfmpind(status, *freq, count);
}

void _cfmpinm(int *status, int *freq, int *year, int *month, int *count) {
	cfmpinm(status, *freq, *year, *month, count);
}

void _cfmpiny(int *status, int *freq, int *year, int *count) {
	cfmpiny(status, *freq, *year, count);
}

void _cfmpodb(int *status, int *dbkey) {
	cfmpodb(status, *dbkey);
}

void _cfmrdfa_double(int *status, int *dbkey, char **objnam, int *wntobs,
		int *syear, int *sprd, int *gotobs, double *valary, int *tmiss,
		double *mistt, int *len_valary, int *len_mistt) {
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmrdfa_f(status, *dbkey, *objnam, *wntobs, syear, sprd, gotobs, valary,
			*tmiss, mistt);
}

void _cfmrdfa_float(int *status, int *dbkey, char **objnam, int *wntobs,
		int *syear, int *sprd, int *gotobs, float *valary, int *tmiss,
		float *mistt, int *len_valary, int *len_mistt) {
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmrdfa_f(status, *dbkey, *objnam, *wntobs, syear, sprd, gotobs, valary,
			*tmiss, mistt);
}

void _cfmrdfa_int(int *status, int *dbkey, char **objnam, int *wntobs,
		int *syear, int *sprd, int *gotobs, int *valary, int *tmiss, int *mistt,
		int *len_valary, int *len_mistt) {
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmrdfa_f(status, *dbkey, *objnam, *wntobs, syear, sprd, gotobs, valary,
			*tmiss, mistt);
}

void _cfmrdfm(int *status, int *dbkey, char **objnam, char **source, int *ilen,
		int *olen) {
	cfmrdfm(status, *dbkey, *objnam, *source, *ilen, olen);
}

void _cfmrmev(int *status, int *dbkey, char **expr, char **optns, int *wdbkey,
		char **objnam) {
	cfmrmev(status, *dbkey, *expr, *optns, *wdbkey, *objnam);
}

void _cfmrnob(int *status, int *dbkey, char **srcnam, char **tarnam) {
	cfmrnob(status, *dbkey, *srcnam, *tarnam);
}

void _cfmrrng_double(int *status, int *dbkey, char **objnam, int *range,
		double *valary, int *tmiss, double *mistt, int *len_range,
		int *len_valary, int *len_mistt) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmrrng_f(status, *dbkey, *objnam, range, valary, *tmiss, mistt);
}

void _cfmrrng_float(int *status, int *dbkey, char **objnam, int *range,
		float *valary, int *tmiss, float *mistt, int *len_range,
		int *len_valary, int *len_mistt) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmrrng_f(status, *dbkey, *objnam, range, valary, *tmiss, mistt);
}

void _cfmrrng_int(int *status, int *dbkey, char **objnam, int *range,
		int *valary, int *tmiss, int *mistt, int *len_range, int *len_valary,
		int *len_mistt) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmrrng_f(status, *dbkey, *objnam, range, valary, *tmiss, mistt);
}

void _cfmrsdb(int *status, int *dbkey) {
	cfmrsdb(status, *dbkey);
}

void _cfmsali(int *status, int *dbkey, char **objnam, char **aliass) {
	cfmsali(status, *dbkey, *objnam, *aliass);
}

void _cfmsaso(int *status, int *dbkey, char **objnam, char **assoc) {
	cfmsaso(status, *dbkey, *objnam, *assoc);
}

void _cfmsatt_char(int *status, int *dbkey, char **objnam, int *atttyp,
		char **attnam, char **value) {
	cfmsatt_f(status, *dbkey, *objnam, *atttyp, *attnam, *value);
}

void _cfmsatt_double(int *status, int *dbkey, char **objnam, int *atttyp,
		char **attnam, double *value) {
	cfmsatt_f(status, *dbkey, *objnam, *atttyp, *attnam, value);
}

void _cfmsatt_float(int *status, int *dbkey, char **objnam, int *atttyp,
		char **attnam, float *value) {
	cfmsatt_f(status, *dbkey, *objnam, *atttyp, *attnam, value);
}

void _cfmsatt_int(int *status, int *dbkey, char **objnam, int *atttyp,
		char **attnam, int *value) {
	cfmsatt_f(status, *dbkey, *objnam, *atttyp, *attnam, value);
}

void _cfmsbas(int *status, int *dbkey, char **objnam, int *basis) {
	cfmsbas(status, *dbkey, *objnam, *basis);
}

void _cfmsbm(int *status, int *nctran, int *ndtran, int *natran, int *bmistt,
		int *len_bmistt) {
	if ((*len_bmistt) <= 0)
		bmistt = NULL;
	cfmsbm(status, *nctran, *ndtran, *natran, bmistt);
}

void _cfmsdes(int *status, int *dbkey, char **objnam, char **desc) {
	cfmsdes(status, *dbkey, *objnam, *desc);
}

void _cfmsdm(int *status, int *nctran, int *ndtran, int *natran, int *dmistt,
		int *len_dmistt) {
	if ((*len_dmistt) <= 0)
		dmistt = NULL;
	cfmsdm(status, *nctran, *ndtran, *natran, dmistt);
}

void _cfmsdoc(int *status, int *dbkey, char **objnam, char **doc) {
	cfmsdoc(status, *dbkey, *objnam, *doc);
}

void _cfmset_dimension(int *status, int *dbkey, int *dimen) {
	cfmset_dimension(status, *dbkey, *dimen);
}

void _cfmset_extradots(int *status, int *dbkey, int *xdots) {
	cfmset_extradots(status, *dbkey, *xdots);
}

void _cfmsfis(int *status, int *freq, int *syear, int *sprd, int *eyear,
		int *eprd, int *range, int *numobs, int *fmonth, int *flabel,
		int *len_range) {
	if ((*len_range) <= 0)
		range = NULL;
	cfmsfis(status, *freq, syear, sprd, eyear, eprd, range, numobs, *fmonth,
			*flabel);
}

void _cfmsinp(int *status, char **cmd) {
	cfmsinp(status, *cmd);
}

void _cfmsnm(int *status, float *nctran, float *ndtran, float *natran,
		float *nmistt, int *len_nmistt) {
	if ((*len_nmistt) <= 0)
		nmistt = NULL;
	cfmsnm(status, *nctran, *ndtran, *natran, nmistt);
}

void _cfmsobs(int *status, int *dbkey, char **objnam, int *observ) {
	cfmsobs(status, *dbkey, *objnam, *observ);
}

void _cfmsopt(int *status, char **optnam, char **optval) {
	cfmsopt(status, *optnam, *optval);
}

void _cfmspm(int *status, double *nctran, double *ndtran, double *natran,
		double *pmistt, int *len_pmistt) {
	if ((*len_pmistt) <= 0)
		pmistt = NULL;
	cfmspm(status, *nctran, *ndtran, *natran, pmistt);
}

void _cfmspos(int *status, int *flag) {
	cfmspos(status, *flag);
}

void _cfmsrng(int *status, int *freq, int *syear, int *sprd, int *eyear,
		int *eprd, int *range, int *numobs, int *len_range) {
	if ((*len_range) <= 0)
		range = NULL;
	cfmsrng(status, *freq, syear, sprd, eyear, eprd, range, numobs);
}

void _cfmssln(int *status, int *dbkey, char **objnam, int *length) {
	cfmssln(status, *dbkey, *objnam, *length);
}

void _cfmtdat(int *status, int *freq, int *date, int *hour, int *minute,
		int *second, int *ddate) {
	cfmtdat(status, *freq, date, *hour, *minute, *second, *ddate);
}

void _cfmtody(int *status, int *freq, int *date) {
	cfmtody(status, *freq, date);
}

void _cfmufrq(int *status, int *freq, int *base, int *nunits, int *year,
		int *month) {
	cfmufrq(status, *freq, base, nunits, year, month);
}

void _cfmver(int *status, float *ver) {
	cfmver(status, ver);
}

void _cfmwhat(int *status, int *dbkey, char **objnam, int *class, int *type, 
		int *freq, int *basis, int *observ, int *fyear, int *fprd, int *lyear, 
		int *lprd, int *cyear, int *cmonth, int *cday, int *myear, int *mmonth, 
		int *mday, char **desc, char **doc) {
	cfmwhat(status,*dbkey,*objnam,class,type,freq,basis,observ,
			fyear,fprd,lyear,lprd,cyear,cmonth,cday,myear,mmonth,mday,
			*desc,*doc);
}

void _cfmwkdy(int *status, int *freq, int *date, int *wkdy) {
	cfmwkdy(status, *freq, *date, wkdy);
}

void _cfmwrmt_double(int *status, int *dbkey, char **objnam, int *objtyp,
		int *range, double *valary, int *tmiss, double *mistt, int *len_range,
		int *len_valary, int *len_mistt) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmwrmt_f(status, *dbkey, *objnam, *objtyp, range, valary, *tmiss, mistt);
}

void _cfmwrmt_float(int *status, int *dbkey, char **objnam, int *objtyp,
		int *range, float *valary, int *tmiss, float *mistt, int *len_range,
		int *len_valary, int *len_mistt) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmwrmt_f(status, *dbkey, *objnam, *objtyp, range, valary, *tmiss, mistt);
}

void _cfmwrmt_int(int *status, int *dbkey, char **objnam, int *objtyp,
		int *range, int *valary, int *tmiss, int *mistt, int *len_range,
		int *len_valary, int *len_mistt) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmwrmt_f(status, *dbkey, *objnam, *objtyp, range, valary, *tmiss, mistt);
}

void _cfmwrng_double(int *status, int *dbkey, char **objnam, int *range,
		double *valary, int *tmiss, double *mistt, int *len_range,
		int *len_valary, int *len_mistt) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmwrng_f(status, *dbkey, *objnam, range, valary, *tmiss, mistt);
}

void _cfmwrng_float(int *status, int *dbkey, char **objnam, int *range,
		float *valary, int *tmiss, float *mistt, int *len_range,
		int *len_valary, int *len_mistt) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmwrng_f(status, *dbkey, *objnam, range, valary, *tmiss, mistt);
}

void _cfmwrng_int(int *status, int *dbkey, char **objnam, int *range,
		int *valary, int *tmiss, int *mistt, int *len_range, int *len_valary,
		int *len_mistt) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_valary) <= 0)
		valary = NULL;
	if ((*len_mistt) <= 0)
		mistt = NULL;
	cfmwrng_f(status, *dbkey, *objnam, range, valary, *tmiss, mistt);
}

void _cfmwstr(int *status, int *dbkey, char **objnam, int *range, char **strval,
		int *ismiss, int *length, int *len_range) {
	if ((*len_range) <= 0)
		range = NULL;
	cfmwstr(status, *dbkey, *objnam, range, *strval, *ismiss, *length);
}

void _cfmwsts(int *status, int *dbkey, char **objnam, int *range, char **strary,
		int *misary, int *lenary, int *len_range, int *len_strary,
		int *len_misary, int *len_lenary) {
	if ((*len_range) <= 0)
		range = NULL;
	if ((*len_strary) <= 0)
		strary = NULL;
	if ((*len_misary) <= 0)
		misary = NULL;
	if ((*len_lenary) <= 0)
		lenary = NULL;
	cfmwsts(status, *dbkey, *objnam, range, strary, misary, lenary);
}

void _cfmwtnl(int *status, int *dbkey, char **objnam, int *index,
		char **strval) {
	cfmwtnl(status, *dbkey, *objnam, *index, *strval);
}

void _fame_biweekday(int *status, int *freq, int *_date, int *biweekday) {
	fame_index date = *_date;
	*status = fame_biweekday(*freq, date, biweekday);
}

void _fame_create_formula(int *status, int *dbkey, char **oname, char **value) {
	*status = fame_create_formula(*dbkey, *oname, *value);
}

void _fame_create_global_formula(int *status, int *dbkey, char **oname,
		char **value) {
	*status = fame_create_global_formula(*dbkey, *oname, *value);
}

void _fame_current_time(int *status, int *freq, int *_date) {
	fame_index date = *_date;
	*status = fame_current_time(*freq, &date);
	*_date = (int) date;
}

void _fame_date_missing_type(int *status, int *_date, int *missing_type) {
	fame_index date = *_date;
	*status = fame_date_missing_type(date, missing_type);
}

void _fame_date_to_literal(int *status, int *freq, int *_date, char **literal,
		int *end_month, int *label_year, int *inlen, int *outlen) {
	fame_index date = *_date;
	*status = fame_date_to_literal(*freq, date, *literal, *end_month,
			*label_year, *inlen, outlen);
}

void _fame_dateof(int *status, int *from_freq, int *_from_date, int *select,
		int *to_freq, int *_to_date, int *relate) {
	long from_date = *_from_date;
	fame_index to_date = *_to_date;
	*status = fame_dateof(*from_freq, from_date, *select, *to_freq, &to_date,
			*relate);
	*_to_date = (int) to_date;
}

void _fame_day_to_index(int *status, int *freq, int *_date, int *year,
		int *month, int *day, int *relate) {
	fame_index date = *_date;
	*status = fame_day_to_index(*freq, &date, *year, *month, *day, *relate);
	*_date = (int) date;
}

void _fame_dimchar(int *status, char **dimchar, int *dimnum) {
	*status = fame_dimchar(*dimchar, *dimnum);
}

void _fame_dimnum(int *status, int *dimnum, char **dimchar) {
	*status = fame_dimnum(dimnum, **dimchar);
}

void _fame_expiration_date(int *status, int *_date) {
	fame_index date = *_date;
	*status = fame_expiration_date(&date);
	*_date = (int) date;
}

void _fame_format_date(int *status, int *freq, int *_date, char **string,
		char **image, int *end_month, int *label_year, int *inlen,
		int *outlen) {
	fame_index date = *_date;
	*status = fame_format_date(*freq, date, *string, *image, *end_month,
			*label_year, *inlen, outlen);
}

void _fame_free_wildcard(int *status, int *wildkey) {
	*status = fame_free_wildcard(*wildkey);
}

void _fame_get_base_frequency(int *status, int *base_freq, int *freq) {
	*status = fame_get_base_frequency(base_freq, *freq);
}

void _fame_get_boolean_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, int *value) {
	*status = fame_get_boolean_attribute(*dbkey, *objnam, *attnam, value);
}

void _fame_get_booleans(int *status, int *dbkey, char **objnam, int *_range,
		int *valary, int *len_range, int *len_valary) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	if ((*len_valary) <= 0)
		valary = NULL;
	*status = fame_get_booleans(*dbkey, *objnam, &range, valary);
}

void _fame_get_date_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, int *_value, int *freq) {
	fame_index value = *_value;
	*status = fame_get_date_attribute(*dbkey, *objnam, *attnam, &value, freq);
	*_value = (int) value;
}

void _fame_get_dates(int *status, int *dbkey, char **objnam, int *_range,
		int *_valary, int *len_range, int *len_valary) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	fame_date *valary =
			((*len_valary) > 0) ?
					malloc(sizeof(valary[0]) * (*len_valary)) : NULL;
	for (int i = 0; i < (*len_valary); i++)
		valary[i] = _valary[i];
	*status = fame_get_dates(*dbkey, *objnam, &range, valary);
	for (int i = 0; i < (*len_valary); i++)
		_valary[i] = (int) valary[i];
	if ((*len_valary) > 0)
		free(valary);
}

void _fame_get_db_dates(int *status, int *dbkey, int *_cdate, int *_mdate) {
	fame_index cdate = *_cdate;
	fame_index mdate = *_mdate;
	*status = fame_get_db_dates(*dbkey, &cdate, &mdate);
	*_cdate = (int) cdate;
	*_mdate = (int) mdate;
}

void _fame_get_dbversion(int *status, int *dbkey, int *dbversion) {
	*status = fame_get_dbversion(*dbkey, dbversion);
}

void _fame_get_namelist_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, char **value, int *inlen, int *outlen) {
	*status = fame_get_namelist_attribute(*dbkey, *objnam, *attnam, *value,
			*inlen, outlen);
}

void _fame_get_next_wildcard(int *status, int *wildkey, char **objname,
		int *obj_class, int *type, int *freq, int *_start, int *_end,
		int *inlen, int *outlen) {
	fame_index start = *_start;
	fame_index end = *_end;
	*status = fame_get_next_wildcard(*wildkey, *objname, obj_class, type, freq,
			&start, &end, *inlen, outlen);
	*_start = (int) start;
	*_end = (int) end;
}

void _fame_get_numeric_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, float *value) {
	*status = fame_get_numeric_attribute(*dbkey, *objnam, *attnam, value);
}

void _fame_get_numerics(int *status, int *dbkey, char **objnam, int *_range,
		float *valary, int *len_range, int *len_valary) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	if ((*len_valary) <= 0)
		valary = NULL;
	*status = fame_get_numerics(*dbkey, *objnam, &range, valary);
}

void _fame_get_precision_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, double *value) {
	*status = fame_get_precision_attribute(*dbkey, *objnam, *attnam, value);
}

void _fame_get_precisions(int *status, int *dbkey, char **objnam, int *_range,
		double *valary, int *len_range, int *len_valary) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	if ((*len_valary) <= 0)
		valary = NULL;
	*status = fame_get_precisions(*dbkey, *objnam, &range, valary);
}

void _fame_get_range_numobs(int *status, int *_range, int *numobs,
		int *len_range) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	*status = fame_get_range_numobs(&range, numobs);
}

void _fame_get_real_name(int *status, int *dbkey, char **objname,
		char **basename, int *inlen, int *outlen) {
	*status = fame_get_real_name(*dbkey, *objname, *basename, *inlen, outlen);
}

void _fame_get_server_input(int *status, char **buffer, int *buffer_size,
		int *input_size) {
	size_t size;
	*status = fame_get_server_input(*buffer, *buffer_size, &size);
	*input_size = size;
}

void _fame_get_string_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, char **value, int *inlen, int *outlen) {
	*status = fame_get_string_attribute(*dbkey, *objnam, *attnam, *value,
			*inlen, outlen);
}

void _fame_get_strings(int *status, int *dbkey, char **objnam, int *_range,
		char **strary, int *inlenary, int *outlenary, int *len_range,
		int *len_strary, int *len_inlenary, int *len_outlenary) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	if ((*len_strary) <= 0)
		strary = NULL;
	if ((*len_inlenary) <= 0)
		inlenary = NULL;
	if ((*len_outlenary) <= 0)
		outlenary = NULL;
	*status = fame_get_strings(*dbkey, *objnam, &range, strary, inlenary,
			outlenary);
}

void _fame_index_to_day(int *status, int *freq, int *_date, int *year,
		int *month, int *day) {
	fame_index date = *_date;
	*status = fame_index_to_day(*freq, date, year, month, day);
}

void _fame_index_to_int(int *status, int *_indexes64ary, int *indexes32ary,
		int *numobs, int *len_indexes64ary, int *len_indexes32ary) {
	fame_index *indexes64ary =
			((*len_indexes64ary) > 0) ?
					malloc(sizeof(indexes64ary[0]) * (*len_indexes64ary)) :
					NULL;
	for (int i = 0; i < (*len_indexes64ary); i++)
		indexes64ary[i] = _indexes64ary[i];
	if ((*len_indexes32ary) <= 0)
		indexes32ary = NULL;
	*status = fame_index_to_int(indexes64ary, indexes32ary, *numobs);
	if ((*len_indexes64ary) > 0)
		free(indexes64ary);
}

void _fame_index_to_time(int *status, int *freq, int *_date, int *year,
		int *month, int *day, int *hour, int *minute, int *second,
		int *millisecond) {
	fame_index date = *_date;
	*status = fame_index_to_time(*freq, date, year, month, day, hour, minute,
			second, millisecond);
}

void _fame_index_to_year_period(int *status, int *freq, int *_date, int *year,
		int *period) {
	fame_index date = *_date;
	*status = fame_index_to_year_period(*freq, date, year, period);
}

void _fame_info(int *status, int *dbkey, char **oname, int *oclass, int *type,
		int *freq, int *_findex, int *_lindex, int *basis, int *observ,
		int *_cdate, int *_mdate, char **desc, int *indesclen, int *outdesclen,
		char **doc, int *indoclen, int *outdoclen) {
	fame_index findex = *_findex;
	fame_index lindex = *_lindex;
	fame_index cdate = *_cdate;
	fame_index mdate = *_mdate;
	*status = fame_info(*dbkey, *oname, oclass, type, freq, &findex, &lindex,
			basis, observ, &cdate, &mdate, *desc, *indesclen, outdesclen, *doc,
			*indoclen, outdoclen);
	*_findex = (int) findex;
	*_lindex = (int) lindex;
	*_cdate = (int) cdate;
	*_mdate = (int) mdate;
}

void _fame_init_range_from_end_numobs(int *status, int *_range, int *freq,
		int *_end, int *numobs, int *len_range) {
	fame_range range;
	long end = *_end;
	*status = fame_init_range_from_end_numobs(&range, *freq, end, *numobs);
	_range[0] = range.r_freq; /* HLI frequency code */
	_range[1] = range.r_start; /* start index of range */
	_range[2] = range.r_end; /* end index of range */
}

void _fame_init_range_from_indexes(int *status, int *_range, int *freq,
		int *_start, int *_end, int *len_range) {
	fame_range range;
	long start = *_start;
	long end = *_end;
	*status = fame_init_range_from_indexes(&range, *freq, start, end);
	_range[0] = range.r_freq; /* HLI frequency code */
	_range[1] = range.r_start; /* start index of range */
	_range[2] = range.r_end; /* end index of range */
}

void _fame_init_range_from_start_numobs(int *status, int *_range, int *freq,
		int *_start, int *numobs, int *len_range) {
	fame_range range;
	long start = *_start;
	*status = fame_init_range_from_start_numobs(&range, *freq, start, *numobs);
	_range[0] = range.r_freq; /* HLI frequency code */
	_range[1] = range.r_start; /* start index of range */
	_range[2] = range.r_end; /* end index of range */
}

void _fame_init_wildcard(int *status, int *dbkey, int *wildkey, char **wildname,
		int *wildonly, char **wildstart) {
	*status = fame_init_wildcard(*dbkey, wildkey, *wildname, *wildonly,
			*wildstart);
}

void _fame_int_to_index(int *status, int *indexes32, int *_indexes64,
		int *numobs) {
	fame_index indexes64 = *_indexes64;
	*status = fame_int_to_index(indexes32, &indexes64, *numobs);
	*_indexes64 = (int) indexes64;
}

void _fame_len_strings(int *status, int *dbkey, char **objnam, int *_range,
		int *lenary, int *len_range, int *len_lenary) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	if ((*len_lenary) <= 0)
		lenary = NULL;
	*status = fame_len_strings(*dbkey, *objnam, &range, lenary);
}

void _fame_literal_to_date(int *status, int *freq, int *_date, char **literal,
		int *end_month, int *label_year, int *century) {
	fame_index date = *_date;
	*status = fame_literal_to_date(*freq, &date, *literal, *end_month,
			*label_year, *century);
	*_date = (int) date;
}

void _fame_modify_formula(int *status, int *dbkey, char **oname, char **value) {
	*status = fame_modify_formula(*dbkey, *oname, *value);
}

void _fame_parse_frequency(int *status, int *freq, char **frequency_spec) {
	*status = fame_parse_frequency(freq, *frequency_spec);
}

void _fame_quick_info(int *status, int *dbkey, char **oname, int *oclass,
		int *type, int *freq, int *_findex, int *_lindex) {
	fame_index findex = *_findex;
	fame_index lindex = *_lindex;
	*status = fame_quick_info(*dbkey, *oname, oclass, type, freq, &findex,
			&lindex);
	*_findex = (int) findex;
	*_lindex = (int) lindex;
}

void _fame_remexec(int *status, int *dbkey, char **command, int *wdbkey,
		char **objnam) {
	*status = fame_remexec(*dbkey, *command, *wdbkey, *objnam);
}

void _fame_scan_date(int *status, int *freq, int *_date, char **string,
		char **image, int *end_month, int *label_year, int *century) {
	fame_index date = *_date;
	*status = fame_scan_date(*freq, &date, *string, *image, *end_month,
			*label_year, *century);
	*_date = (int) date;
}

void _fame_set_boolean_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, int *value) {
	*status = fame_set_boolean_attribute(*dbkey, *objnam, *attnam, *value);
}

void _fame_set_date_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, int *_value, int *freq) {
	long value = *_value;
	*status = fame_set_date_attribute(*dbkey, *objnam, *attnam, value, *freq);
}

void _fame_set_namelist_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, char **value) {
	*status = fame_set_namelist_attribute(*dbkey, *objnam, *attnam, *value);
}

void _fame_set_numeric_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, float *value) {
	*status = fame_set_numeric_attribute(*dbkey, *objnam, *attnam, *value);
}

void _fame_set_precision_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, double *value) {
	*status = fame_set_precision_attribute(*dbkey, *objnam, *attnam, *value);
}

void _fame_set_string_attribute(int *status, int *dbkey, char **objnam,
		char **attnam, char **value) {
	*status = fame_set_string_attribute(*dbkey, *objnam, *attnam, *value);
}

void _fame_time_to_index(int *status, int *freq, int *_date, int *year,
		int *month, int *day, int *hour, int *minute, int *second,
		int *millisecond, int *relate) {
	fame_index date = *_date;
	*status = fame_time_to_index(*freq, &date, *year, *month, *day, *hour,
			*minute, *second, *millisecond, *relate);
	*_date = (int) date;
}

void _fame_type_to_string(int *status, int *type, char **type_spec, int *inlen,
		int *outlen) {
	*status = fame_type_to_string(*type, *type_spec, *inlen, outlen);
}

void _fame_weekday(int *status, int *freq, int *_date, int *weekday) {
	fame_index date = *_date;
	*status = fame_weekday(*freq, date, weekday);
}

void _fame_write_booleans(int *status, int *dbkey, char **objnam, int *_range,
		int *valary, int *len_range, int *len_valary) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	if ((*len_valary) <= 0)
		valary = NULL;
	*status = fame_write_booleans(*dbkey, *objnam, &range, valary);
}

void _fame_write_dates(int *status, int *dbkey, char **objnam, int *_range,
		int *value_type, int *_valary, int *len_range, int *len_valary) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	fame_date *valary =
			((*len_valary) > 0) ?
					malloc(sizeof(valary[0]) * (*len_valary)) : NULL;
	for (int i = 0; i < (*len_valary); i++)
		valary[i] = _valary[i];
	*status = fame_write_dates(*dbkey, *objnam, &range, *value_type, valary);
	if ((*len_valary) > 0)
		free(valary);
}

void _fame_write_numerics(int *status, int *dbkey, char **objnam, int *_range,
		float *valary, int *len_range, int *len_valary) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	if ((*len_valary) <= 0)
		valary = NULL;
	*status = fame_write_numerics(*dbkey, *objnam, &range, valary);
}

void _fame_write_precisions(int *status, int *dbkey, char **objnam, int *_range,
		double *valary, int *len_range, int *len_valary) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	if ((*len_valary) <= 0)
		valary = NULL;
	*status = fame_write_precisions(*dbkey, *objnam, &range, valary);
}

void _fame_write_strings(int *status, int *dbkey, char **objnam, int *_range,
		const char **strary, int *len_range, int *len_strary) {
	fame_range range;
	range.r_freq = _range[0]; /* HLI frequency code */
	range.r_start = _range[1]; /* start index of range */
	range.r_end = _range[2]; /* end index of range */
	if ((*len_strary) <= 0)
		strary = NULL;
	*status = fame_write_strings(*dbkey, *objnam, &range, strary);
}

void _fame_year_period_to_index(int *status, int *freq, int *_date, int *year,
		int *period) {
	fame_index date = *(fame_index *) _date;
	*status = fame_year_period_to_index(*freq, &date, *year, *period);
	*_date = (int) date;
}

