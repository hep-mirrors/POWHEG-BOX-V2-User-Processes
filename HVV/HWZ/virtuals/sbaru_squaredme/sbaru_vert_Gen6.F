#if 0
* sbaru_vert_Gen6.F
* form factors for {-F[4, {2, Index[Colour, 1]}], F[3, {1, Index[Colour, 2]}]} -> {S[1], V[2], -V[3]}
* generated by FormCalc 7.5 on 27-Mar-2015 20:08
#endif

#include "sbaru_vars.h"


	subroutine sbaru_vert_Gen6
	implicit none

#include "sbaru_vars.h"


#include "inline.h"

        Cloop(1) = Cloop(1) + 
     &    Sub104(Gen6)/((-MW2 + Sub3)*(T24 - Mf2(3,Gen6))) + 
     &    Sub106(Gen6)/((-MZ2 + S34)*(Sub1 - Mf2(3,Gen6))) + 
     &    Sub109(Gen6)/((-MW2 + Sub3)*(T14 - Mf2(4,Gen6))) + 
     &    Sub111(Gen6)/((-MZ2 + S34)*(Sub4 - Mf2(4,Gen6)))

#ifdef DEBUG
	DEB("sbaru_vert_Gen6: Cloop(1) =", Cloop(1))
#endif

	end
