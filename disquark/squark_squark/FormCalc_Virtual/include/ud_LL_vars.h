* ud_LL_vars.h
* variable declarations
* generated by FormCalc 6.1 24 Jun 2011 11:47

#include "decl.h"
#include "ud_LL_renconst.h"
	
	double precision S, T, U
	common /ud_LL_kinvars/ S, T, U

	integer Hel(4)
	common /ud_LL_kinvars/ Hel

	double complex F6, F3, F7, F8
	common /ud_LL_abbrev/ F6, F3, F7, F8

	integer iint1, iint2, iint3, iint4, iint5, iint6, iint7, iint8
	integer iint9, iint10, iint11, iint12, iint13, iint14, iint15
	integer iint16, iint17, iint18, iint19, iint20, iint21, iint22
	integer iint23, iint24, iint25, iint26, iint27, iint28, iint29
	integer iint30
	common /ud_LL_loopint/ iint1, iint2, iint3, iint4, iint5
	common /ud_LL_loopint/ iint6, iint7, iint8, iint9, iint10
	common /ud_LL_loopint/ iint11, iint12, iint13, iint14, iint15
	common /ud_LL_loopint/ iint16, iint17, iint18, iint19, iint20
	common /ud_LL_loopint/ iint21, iint22, iint23, iint24, iint25
	common /ud_LL_loopint/ iint26, iint27, iint28, iint29, iint30

	double complex MatSUN(5,5), Ctree(5), Cloop(5)
	common /ud_LL_formfactors/ MatSUN, Ctree, Cloop

	save /ud_LL_kinvars/
	save /ud_LL_loopint/
	save /ud_LL_formfactors/