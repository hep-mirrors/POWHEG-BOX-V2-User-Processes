#if 0
* dubar_n4x1_vert_Sfe5.F
* form factors for {F[4, {1, Col1}], -F[3, {1, Col2}]} -> {F[11, {4}], F[12, {1}]}
* generated by FormCalc 8.4 on 6-Jul-2015 13:22
#endif

#include "dubar_n4x1_vars.h"
#include "contains.h"


	subroutine dubar_n4x1_vert_Sfe5
	implicit none

#include "dubar_n4x1_vars.h"


        Cloop(HelInd(1)) = 
     &   Cloop(HelInd(1)) + 
     &    Alfa/(CW*MW2**2*SW2)*
     &     (1/9.D0*Sub240(HelInd(Sfe5))/
     &          (CB*CB2*(T - MSf2(Sfe5,4,1))) - 
     &        1/9.D0*Sub244(HelInd(Sfe5))/
     &          (SB*SB2*(U - MSf2(Sfe5,3,1))))/SW

#ifdef DEBUGQ
	DEB("dubar_n4x1_vert_Sfe5: Cloop(1) =", Cloop(HelInd(1)))
#endif

#include "contains.h"

	end
