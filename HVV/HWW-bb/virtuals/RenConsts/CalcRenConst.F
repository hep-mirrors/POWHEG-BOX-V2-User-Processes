#if 0
* CalcRenConst.F
* renormalization constants
* generated by FormCalc 7.5 on 25-Mar-2015 11:35
#endif

#include "decl.h"


	subroutine CalcRenConst
	implicit none

#include "decl.h"

	ComplexType dup1, dup2, dup3, dup4

	dCKM1(1,1) = 0
	dCKM1(3,3) = 0
	dMf1(4,3)  = 0

	Finite = 1

	dMf1(3,3) = Alfas*
     &    (MT/(3.D0*Pi)*Finite + 
     &      MT*(-(2/(3.D0*Pi)*Re(B0i(bb0,MT2,0.D0,MT2))) + 
     &         2/(3.D0*Pi)*Re(B0i(bb1,MT2,0.D0,MT2))))
	
#ifdef DEBUG
	DEB("dMf1(3,3) =", dMf1(3,3))
	DEB("dMf1(4,3) =", dMf1(4,3))
#endif

	dup1 = Re(B0i(bb0,MT2,0.D0,MT2)) + Re(B0i(bb1,MT2,0.D0,MT2))

        dup2 = Alfas*(-(2/(3.D0*Pi)*dup1) + 1/(3.D0*Pi)*Finite + 
     &      MT2*(4/(3.D0*Pi)*Re(B0i(dbb0,MT2,0.D0,MT2)) - 
     &         4/(3.D0*Pi)*Re(B0i(dbb1,MT2,0.D0,MT2))))

	dZfL1(3,3,3) = dup2

#ifdef DEBUG
	DEB("dZfL1(3,3,3) =", dZfL1(3,3,3))
#endif

	dZfR1(3,3,3) = dup2

#ifdef DEBUG
	DEB("dZfR1(3,3,3) =", dZfR1(3,3,3))
#endif	


	Finite = 0 ! here no rational terms when DR is used for IR regularization in the counterterms
	
	dup3 = Re(B0i(bb0,MB2,0.D0,MB2)) + Re(B0i(bb1,MB2,0.D0,MB2))

        dup4 = Alfas*(-(2/(3.D0*Pi)*dup3) + 1/(3.D0*Pi)*Finite + 
     &      MB2*(4/(3.D0*Pi)*Re(B0i(dbb0,MB2,0.D0,MB2)) - 
     &         4/(3.D0*Pi)*Re(B0i(dbb1,MB2,0.D0,MB2))))

	dZfL1(4,3,3) = dup4

#ifdef DEBUG
	DEB("dZfL1(4,3,3) =", dZfL1(4,3,3))
#endif

	dZfR1(4,3,3) = dup4

#ifdef DEBUG
	DEB("dZfR1(4,3,3) =", dZfR1(4,3,3))
#endif

	
	dup1 = Re(B0i(bb0,MU2,0.D0,MU2)) + Re(B0i(bb1,MU2,0.D0,MU2))

        dup2 = Alfas*(-(2/(3.D0*Pi)*dup1) + 1/(3.D0*Pi)*Finite + 
     &      MU2*(4/(3.D0*Pi)*Re(B0i(dbb0,MU2,0.D0,MU2)) - 
     &         4/(3.D0*Pi)*Re(B0i(dbb1,MU2,0.D0,MU2))))

	dZfL1(3,1,1) = dup2

#ifdef DEBUG
	DEB("dZfL1(3,1,1) =", dZfL1(3,1,1))
#endif

	dZfR1(3,1,1) = dup2

#ifdef DEBUG
	DEB("dZfR1(3,1,1) =", dZfR1(3,1,1))
#endif

	dup1 = Re(B0i(bb0,MD2,0.D0,MD2)) + Re(B0i(bb1,MD2,0.D0,MD2))

        dup2 = Alfas*(-(2/(3.D0*Pi)*dup1) + 1/(3.D0*Pi)*Finite + 
     &      MD2*(4/(3.D0*Pi)*Re(B0i(dbb0,MD2,0.D0,MD2)) - 
     &         4/(3.D0*Pi)*Re(B0i(dbb1,MD2,0.D0,MD2))))

	dZfL1(4,1,1) = dup2

#ifdef DEBUG
	DEB("dZfL1(4,1,1) =", dZfL1(4,1,1))
#endif

	dZfR1(4,1,1) = dup2

#ifdef DEBUG
	DEB("dZfR1(4,1,1) =", dZfR1(4,1,1))
#endif

	Finite = 1 ! put back rationnal terms now

	end
