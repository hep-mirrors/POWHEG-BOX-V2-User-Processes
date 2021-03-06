* LL_born.F
* form factors for {MU, MU} -> {MSf[1, 3, 1], MSf[1, 3, 1]}
* generated by FormCalc 6.1D0 24 Jun 2011 11:45

	subroutine LL_born
	implicit none

#include "LL_vars.h"


        Ctree(4) = Ctree(4) + 
     -   (4*Pi)/3.D0*(Alfas*F3*MGl)/(-MGl2 + T) - 
     -   4*Pi*(Alfas*F3*MGl)/(-MGl2 + U)

#ifdef DEBUG
	DEB 'born: Ctree(4) =', Ctree(4)
#endif

        Ctree(5) = Ctree(5) - 4*Pi*(Alfas*F3*MGl)/(-MGl2 + T) + 
     -   (4*Pi)/3.D0*(Alfas*F3*MGl)/(-MGl2 + U)

#ifdef DEBUG
	DEB 'born: Ctree(5) =', Ctree(5)
#endif

	end
