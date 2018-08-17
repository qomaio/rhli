/*
 * qoma-hli.h
 */

#ifndef SRC_QOMA_HLI_H_
#define SRC_QOMA_HLI_H_

#include "rhli.h"

#include <R.h>
#include <Rinternals.h>
#include <Rmath.h>
#include <R_ext/Rdynload.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void qomaini(int *status);
void qomafin(int *status);

int check_pin(int expiry, char *nameid, int pin);
char *get_nameid();
int get_days_to_expiry();
char *get_expiry_string();
int get_expiry_date();
int get_pin(int expiry, char *nameid);
unsigned long long hash(int expiry, char *nameid);

#define fm(a) {a; if(status!=HSUCC) Rprintf("%s %d\n",#a,status);}
#define PRIME ((unsigned long long) 9973)
#define HSUCC 0
#define HBPROD 55
#define HDAILY    8	/* DAILY			*/
#define HDEC    12	/* DECEMBER	*/
#define HFYAUT     3	/* AUTO		*/

void cfmfin(int *status);
void cfmini(int *status);

#endif /* SRC_QOMA_HLI_H_ */
