* uLdL_abbr1_hel.F
* abbreviations for {MU, MD} -> {MSf[1, 3, 1], MSf[1, 4, 1]}
* generated by FormCalc 6.1D0 24 Sep 2013 14:23

	subroutine uLdL_abbr1_hel
	implicit none

#include "uLdL_vars.h"


	F1339 = Hel(2)*SxS(DottedSpinor(2,-1,7),Spinor(1,1,6))

	F1338 = -(Hel(2)*SxS(DottedSpinor(2,-1,6),Spinor(1,1,7)))

	end

