#if 0
* ddbar_n4n4_self_Sfe5_Sfe6.F
* form factors for {F[4, {1, Col1}], -F[4, {1, Col2}]} -> {F[11, {4}], F[11, {4}]}
* generated by FormCalc 8.4 on 7-Jul-2015 9:57
#endif

#include "ddbar_n4n4_vars.h"
#include "contains.h"


	subroutine ddbar_n4n4_self_Sfe5_Sfe6
	implicit none

#include "ddbar_n4n4_vars.h"


        Cloop(HelInd(1)) = 
     &   Cloop(HelInd(1)) - 
     &    Alfa/(CW2*MW2*SW2)*
     &     (1/27.D0*((F9*Sub14(Sfe6) + F11*Sub15(Sfe6))*
     &            Sub208(Sfe5,Sfe6)*
     &            (F10*Sub1(Sfe5) + F12*Sub3(Sfe5)))/
     &          ((T - MSf2(Sfe5,4,1))*(T - MSf2(Sfe6,4,1))) - 
     &        1/27.D0*((F7*Sub14(Sfe6) + F1*Sub15(Sfe6))*
     &            Sub209(Sfe5,Sfe6)*(F2*Sub1(Sfe5) + F8*Sub3(Sfe5))
     &            )/((U - MSf2(Sfe5,4,1))*(U - MSf2(Sfe6,4,1))))/
     &      CB2

#ifdef DEBUGQ
	DEB("ddbar_n4n4_self_Sfe5_Sfe6: Cloop(1) =", Cloop(HelInd(1)))
#endif

#include "contains.h"

	end
