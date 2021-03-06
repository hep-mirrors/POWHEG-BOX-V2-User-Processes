#if 0
* ddbar_n2n2_box_Sfe5.F
* form factors for {F[4, {1, Col1}], -F[4, {1, Col2}]} -> {F[11, {2}], F[11, {2}]}
* generated by FormCalc 8.4 on 8-Jun-2015 15:49
#endif

#include "ddbar_n2n2_vars.h"
#include "contains.h"


	subroutine ddbar_n2n2_box_Sfe5
	implicit none

#include "ddbar_n2n2_vars.h"


        Cloop(HelInd(1)) = 
     &   Cloop(HelInd(1)) + 
     &    Alfa/(CW2*MW2*SW2)*
     &     (Alfas*(8/27.D0*(pave6(PVC(dd00),Sfe5)*
     &             Sub133(HelInd(Sfe5))) - 
     &          8/27.D0*(pave7(PVC(dd00),Sfe5)*
     &             Sub139(HelInd(Sfe5))) - 
     &          4/27.D0*Sub238(HelInd(Sfe5)) + 
     &          4/27.D0*(Sub237(HelInd(Sfe5)) + 
     &             S*Sub241(HelInd(Sfe5)))))/CB2

#ifdef DEBUGQQ
	DEB("ddbar_n2n2_box_Sfe5: Cloop(1) =", Cloop(HelInd(1)))
#endif

#include "contains.h"

	end
