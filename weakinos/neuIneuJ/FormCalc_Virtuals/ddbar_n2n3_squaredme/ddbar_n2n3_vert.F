#if 0
* ddbar_n2n3_vert.F
* form factors for {F[4, {1, Col1}], -F[4, {1, Col2}]} -> {F[11, {2}], F[11, {3}]}
* generated by FormCalc 8.4 on 7-Jul-2015 9:40
#endif

#include "ddbar_n2n3_vars.h"
#include "contains.h"


	subroutine ddbar_n2n3_vert
	implicit none

#include "ddbar_n2n3_vars.h"


        Cloop(HelInd(1)) = 
     &   Cloop(HelInd(1)) + 
     &    Alfa/(9.D0*CW2)*(Sub170 + 
     &        Alfas*Sub15*(4*S*Sub275 - 4*pave2(PVC(bb0)) + 
     &           8*pave3(PVC(cc00))))/(MZ2 - S -cI*MZ*WZ)

#ifdef DEBUGQ
	DEB("ddbar_n2n3_vert: Cloop(1) =", Cloop(HelInd(1)))
#endif

#include "contains.h"

	end
