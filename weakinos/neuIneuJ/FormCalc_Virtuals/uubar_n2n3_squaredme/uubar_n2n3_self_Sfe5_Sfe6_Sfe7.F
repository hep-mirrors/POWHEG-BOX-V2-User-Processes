#if 0
* uubar_n2n3_self_Sfe5_Sfe6_Sfe7.F
* form factors for {F[3, {1, Col1}], -F[3, {1, Col2}]} -> {F[11, {2}], F[11, {3}]}
* generated by FormCalc 8.4 on 7-Jul-2015 9:38
#endif

#include "uubar_n2n3_vars.h"
#include "contains.h"


	subroutine uubar_n2n3_self_Sfe5_Sfe6_Sfe7
	implicit none

#include "uubar_n2n3_vars.h"


        Cloop(HelInd(1)) = 
     &   Cloop(HelInd(1)) + 
     &    1/(648.D0*CW2*MW2*SW2)*
     &     (pave1(Sfe7)*Sub40(Sfe5,Sfe6,Sfe7)*
     &        (((F5*Sub28(Sfe6) - F3*Sub29(Sfe6))*
     &             (F4*Sub1(Sfe5) - F6*Sub6(Sfe5)))/
     &           ((U - MSf2(Sfe5,3,1))*(U - MSf2(Sfe6,3,1))) + 
     &          ((F7*Sub23(Sfe6) - F10*Sub24(Sfe6))*
     &             (F9*Sub11(Sfe5) - F8*Sub9(Sfe5)))/
     &           ((T - MSf2(Sfe5,3,1))*(T - MSf2(Sfe6,3,1)))))/SB2

#ifdef DEBUGQ
	DEB("uubar_n2n3_self_Sfe5_Sfe6_Sfe7: Cloop(1) =", Cloop(HelInd(1)))
#endif

#include "contains.h"

	end
