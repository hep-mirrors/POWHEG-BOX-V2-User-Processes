#if 0
* dbarc_self_Gen6.F
* form factors for {-F[4, {1, Index[Colour, 1]}], F[3, {2, Index[Colour, 2]}]} -> {S[1], V[2], -V[3]}
* generated by FormCalc 7.5 on 27-Mar-2015 20:16
#endif

#include "dbarc_vars.h"


	subroutine dbarc_self_Gen6
	implicit none

#include "dbarc_vars.h"


#include "inline.h"

        Cloop(1) = Cloop(1) + 
     &    Sub20(Gen6)/
     &     ((-MW2 + Sub3)*(-MC2 + T24)*(T24 - Mf2(3,Gen6))) - 
     &    Sub23(Gen6)/
     &     ((-MZ2 + S34)*(-MC2 + Sub1)*(Sub1 - Mf2(3,Gen6))) - 
     &    Sub25(Gen6)/
     &     ((-MW2 + Sub3)*(-MD2 + T14)*(T14 - Mf2(4,Gen6))) + 
     &    Sub28(Gen6)/
     &     ((-MZ2 + S34)*(-MD2 + Sub4)*(Sub4 - Mf2(4,Gen6)))

#ifdef DEBUG
	DEB("dbarc_self_Gen6: Cloop(1) =", Cloop(1))
#endif

	end
