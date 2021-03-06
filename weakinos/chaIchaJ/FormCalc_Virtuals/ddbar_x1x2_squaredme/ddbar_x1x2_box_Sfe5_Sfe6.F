#if 0
* ddbar_x1x2_box_Sfe5_Sfe6.F
* form factors for {F[4, {1, Col1}], -F[4, {1, Col2}]} -> {F[12, {1}], -F[12, {2}]}
* generated by FormCalc 8.4 on 17-Jun-2015 13:07
#endif

#include "ddbar_x1x2_vars.h"
#include "contains.h"


	subroutine ddbar_x1x2_box_Sfe5_Sfe6
	implicit none

#include "ddbar_x1x2_vars.h"


        Cloop(HelInd(1)) = 
     &   Cloop(HelInd(1)) + 
     &    Alfa/(MW2*SW2)*(Alfas*
     &        (2/3.D0*Sub112(HelInd(Sfe5),Sfe6) - 
     &          4/3.D0*(pave8(PVC(dd00),Sfe5,Sfe6)*
     &             Sub34(HelInd(Sfe5),Sfe6)) - 
     &          2/3.D0*(Sub110(HelInd(Sfe5),Sfe6)*
     &             Sub86(HelInd(Sfe5),Sfe6)))*Sub38(Sfe6)*
     &        Sub96(Sfe5))/CB2

#ifdef DEBUGQQ
	DEB("ddbar_x1x2_box_Sfe5_Sfe6: Cloop(1) =", Cloop(HelInd(1)))
#endif

#include "contains.h"

	end
