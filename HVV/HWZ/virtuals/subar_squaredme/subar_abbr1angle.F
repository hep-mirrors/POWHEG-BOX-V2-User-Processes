#if 0
* subar_abbr1angle.F
* abbreviations for {F[4, {2, Index[Colour, 1]}], -F[3, {1, Index[Colour, 2]}]} -> {S[1], V[2], V[3]}
* generated by FormCalc 7.5 on 27-Mar-2015 19:54
#endif

#include "subar_vars.h"


	subroutine subar_abbr1angle
	implicit none

#include "subar_vars.h"


#include "inline.h"

	Sub11 = MH2 + MZ2 - S34 - T - T14

	Sub6 = MH2 + MZ2 - S34 - T24 - U

	Sub50 = 2*S + S34 + 2*T + 2*T14 + T24 + U

	call Bput(pave1(1),S34,MU2,MU2)

	call Bput(pave3(1),S34,MS2,MS2)

	call Bput(pave6(1),T14,0.D0,MS2)

	call Bput(pave7(1),T24,0.D0,MU2)

	call Cput(pave8(1),MS2,Sub3,T24,0.D0,MS2,MU2)

	call Cput(pave9(1),MU2,MZ2,T24,0.D0,MU2,MU2)

	call Cput(pave11(1),MU2,S34,Sub1,0.D0,MU2,MU2)

	call Cput(pave13(1),Sub4,S34,MS2,0.D0,MS2,MS2)

	call Cput(pave14(1),MS2,MZ2,T14,0.D0,MS2,MS2)

	call Cput(pave15(1),T14,Sub3,MU2,0.D0,MS2,MU2)

	call Dput(pave20(1),MS2,S,MZ2,T24,MU2,Sub3,0.D0,MS2,MU2,MU2)

	call Dput(pave21(1),T14,MZ2,S,MU2,MS2,Sub3,0.D0,MS2,MS2,MU2)

	call Cput(pave22(1),S,S34,MW2,MS2,MU2,MU2)

	call Cput(pave23(1),S34,S,MW2,MS2,MS2,MU2)

	call Dput(pave24(1),MS2,S,S34,Sub1,MU2,MW2,0.D0,MS2,MU2,MU2)

	call Dput(pave25(1),Sub4,S34,S,MU2,MS2,MW2,0.D0,MS2,MS2,MU2)

	Sub37 = pave1(bb0) + pave2(bb0)

	Sub85 = pave3(bb0) + pave4(bb0)

	Sub66 = pave5(bb0) + pave6(bb0)

	Sub75 = pave5(bb0) + pave7(bb0)

	Sub8 = pave6(bb0) + pave6(bb1)

	Sub9 = pave7(bb0) + pave7(bb1)

	Sub76 = pave8(cc00) + pave9(cc00)

	Sub38 = pave10(cc00) + pave11(cc00)

	Sub86 = pave12(cc00) + pave13(cc00)

	Sub67 = pave14(cc00) + pave15(cc00)

	Sub68 = pave14(cc0) + pave14(cc1)

	Sub78 = pave9(cc0) + pave9(cc1)

	Sub41 = pave11(cc0) + pave11(cc1)

	Sub69 = pave15(cc0) + pave15(cc2)

	Sub77 = pave9(cc12) + pave9(cc22)

	end
