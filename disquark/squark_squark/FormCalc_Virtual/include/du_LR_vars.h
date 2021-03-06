* du_LR_vars.h
* variable declarations
* generated by FormCalc 6.1 6 Dec 2011 15:58

#include "decl.h"
#include "du_LR_renconst.h"

	double precision S, T, U
	common /du_LR_kinvars/ S, T, U

	integer Hel(4)
	common /du_LR_kinvars/ Hel

	double complex F6, F3, F9, F5, F4
	common /du_LR_abbrev/ F6, F3, F9, F5, F4

	integer iint1, iint2, iint3, iint4, iint5, iint6, iint7, iint8
	integer iint9, iint10, iint11, iint12, iint13, iint14, iint15
	integer iint16, iint17, iint18, iint19, iint20, iint21, iint22
	integer iint23, iint24, iint25, iint26, iint27, iint28, iint29
	integer iint30, iint31
	common /du_LR_loopint/ iint1, iint2, iint3, iint4, iint5
	common /du_LR_loopint/ iint6, iint7, iint8, iint9, iint10
	common /du_LR_loopint/ iint11, iint12, iint13, iint14, iint15
	common /du_LR_loopint/ iint16, iint17, iint18, iint19, iint20
	common /du_LR_loopint/ iint21, iint22, iint23, iint24, iint25
	common /du_LR_loopint/ iint26, iint27, iint28, iint29, iint30
	common /du_LR_loopint/ iint31

	double complex MatSUN(8,8), Ctree(8), Cloop(8)
	common /du_LR_formfactors/ MatSUN, Ctree, Cloop

