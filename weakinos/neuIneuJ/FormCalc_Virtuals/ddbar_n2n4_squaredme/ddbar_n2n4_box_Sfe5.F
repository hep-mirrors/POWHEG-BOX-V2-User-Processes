#if 0
* ddbar_n2n4_box_Sfe5.F
* form factors for {F[4, {1, Col1}], -F[4, {1, Col2}]} -> {F[11, {2}], F[11, {4}]}
* generated by FormCalc 8.4 on 7-Jul-2015 9:42
#endif

#include "ddbar_n2n4_vars.h"
#include "contains.h"


	subroutine ddbar_n2n4_box_Sfe5
	implicit none

#include "ddbar_n2n4_vars.h"


        Cloop(HelInd(1)) = 
     &   Cloop(HelInd(1)) + 
     &    Alfa/(CW2*MW2*SW2)*
     &     (Alfas*(8/27.D0*(pave6(PVC(dd00),Sfe5)*
     &             Sub176(HelInd(Sfe5))) - 
     &          8/27.D0*(pave7(PVC(dd00),Sfe5)*
     &             Sub179(HelInd(Sfe5))) + 
     &          4/27.D0*(S*Sub287(HelInd(Sfe5)) + 
     &             Sub288(HelInd(Sfe5)) + 
     &             Sub290(Sfe5)*(F8*Sub1(Sfe5) + F9*Sub3(Sfe5))*
     &              (F7*Sub5(Sfe5) + F10*Sub6(Sfe5))) - 
     &          4/27.D0*(Sub291(HelInd(Sfe5)) + 
     &             (F6*Sub10(Sfe5) + F12*Sub12(Sfe5))*
     &              (S*Sub292(Sfe5) - Sub293(Sfe5))*
     &              (F11*Sub8(Sfe5) + F5*Sub9(Sfe5)))))/CB2

#ifdef DEBUGQ
	DEB("ddbar_n2n4_box_Sfe5: Cloop(1) =", Cloop(HelInd(1)))
#endif

#include "contains.h"

	end
