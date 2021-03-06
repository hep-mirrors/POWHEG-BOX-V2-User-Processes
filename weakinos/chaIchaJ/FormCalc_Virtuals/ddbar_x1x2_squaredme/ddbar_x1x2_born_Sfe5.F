#if 0
* ddbar_x1x2_born_Sfe5.F
* form factors for {F[4, {1, Col1}], -F[4, {1, Col2}]} -> {F[12, {1}], -F[12, {2}]}
* generated by FormCalc 8.4 on 17-Jun-2015 13:07
#endif

#include "ddbar_x1x2_vars.h"
#include "contains.h"


	subroutine ddbar_x1x2_born_Sfe5
	implicit none

#include "ddbar_x1x2_vars.h"


        Ctree(HelInd(1)) = 
     &   Ctree(HelInd(1)) - 
     &    (Alfa*Pi)/(MW2*SW2)*
     &     (F7*F8*Sub1(Sfe5)*Sub2(Sfe5))/(SB2*(T - MSf2(Sfe5,3,1)))

#ifdef DEBUGQQ
	DEB("ddbar_x1x2_born_Sfe5: Ctree(1) =", Ctree(HelInd(1)))
#endif

#include "contains.h"

	end
