* LR_bornuLuR.F
* form factors for {MU, MU} -> {MSf[1, 3, 1], MSf[2, 3, 1]}
* generated by FormCalc 6 Nov 2013 10:58

	subroutine LR_bornuLuR
	implicit none

#include "LR_vars.h"


	Ctree(1) = Ctree(1) + 4*Pi*(Alfas*F19*MGl)/(-MGl2 + T)

#ifdef DEBUG
	DEB 'bornuLuR: Ctree(1) =', Ctree(1)
#endif

	Ctree(2) = Ctree(2) - (4*Pi)/3.D0*(Alfas*F19*MGl)/(-MGl2 + T)

#ifdef DEBUG
	DEB 'bornuLuR: Ctree(2) =', Ctree(2)
#endif

	end

