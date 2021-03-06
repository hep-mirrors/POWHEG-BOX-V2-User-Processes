#if 0
* ddbar_n3n3_vert_Sfe5_Sfe6.F
* form factors for {F[4, {1, Col1}], -F[4, {1, Col2}]} -> {F[11, {3}], F[11, {3}]}
* generated by FormCalc 8.4 on 7-Jul-2015 9:52
#endif

#include "ddbar_n3n3_vars.h"
#include "contains.h"


	subroutine ddbar_n3n3_vert_Sfe5_Sfe6
	implicit none

#include "ddbar_n3n3_vars.h"


        Cloop(HelInd(1)) = 
     &   Cloop(HelInd(1)) - 
     &    Alfa/(CW2*SW2)*(Alfas*
     &       (4/(27.D0*MW2)*Sub218(HelInd(Sfe5),Sfe6)/CB2 - 
     &         4/9.D0*(Sub8*Sub109(Sfe5,Sfe6)*
     &             Sub220(HelInd(Sfe5),Sfe6))/(MZ2 - S -cI*MZ*WZ)))

#ifdef DEBUGQ
	DEB("ddbar_n3n3_vert_Sfe5_Sfe6: Cloop(1) =", Cloop(HelInd(1)))
#endif

#include "contains.h"

	end
