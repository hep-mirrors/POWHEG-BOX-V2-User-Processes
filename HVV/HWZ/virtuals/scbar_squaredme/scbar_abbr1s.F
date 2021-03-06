#if 0
* scbar_abbr1s.F
* abbreviations for {F[4, {2, Index[Colour, 1]}], -F[3, {2, Index[Colour, 2]}]} -> {S[1], V[2], V[3]}
* generated by FormCalc 7.5 on 27-Mar-2015 19:59
#endif

#include "scbar_vars.h"


	subroutine scbar_abbr1s
	implicit none
	ComplexType mOpt8,mOpt9,mSub1,mSub3,mSub4

#include "scbar_vars.h"


#include "inline.h"

	mOpt8 = MC2 + MH2 + MW2 - T14
	mOpt9 = MS2 + MW2 + MZ2 - U
	mSub1 = 2*MS2 + MZ2 + mOpt8 - S - T
	mSub3 = MC2 + 2*MH2 + mOpt9 - S34 - T
	mSub4 = 2*MC2 + MH2 + mOpt9 - S - T24

	Sub29 = 2*dSW1*SW - 2*SW2*dZe1 - SW2*dZW1

	Sub33 = 2*SW2*dZe1 + SW2*dZZZ1 + CW*(dZAZ1*SW)

	Sub49 = 3*MH2 + 2*MW2 + 3*MZ2

        Sub63 = (-6 + 4*SW2)*dZe1 + (-3 + 2*SW2)*dZZZ1 + 
     &    2*CW*(dZAZ1*SW)

        Sub34 = (-6 + 8*SW2)*dZe1 + (-3 + 4*SW2)*dZZZ1 + 
     &    4*CW*(dZAZ1*SW)

	call Bput(pave2(1),mSub1,0.D0,MC2)

	call Bput(pave4(1),mSub4,0.D0,MS2)

	call Bput(pave5(1),mSub3,MC2,MS2)

	call Cput(pave11(1),mSub1,MW2,MS2,0.D0,MC2,MS2)

	call Cput(pave12(1),MC2,MW2,mSub4,0.D0,MC2,MS2)

	call Cput(pave16(1),MC2,S,MS2,0.D0,MC2,MS2)

	call Bput(pave17(1),S,MC2,MS2)

	call Cput(pave22(1),MZ2,mSub3,S,MC2,MC2,MS2)

	call Cput(pave23(1),mSub3,MZ2,S,MC2,MS2,MS2)

	Sub64 = 2*SW2*(dSW1*SW) + CW2*(-6*dSW1*SW - SW2*Sub63)

	Sub5 = pave2(bb0) + pave2(bb1)

	Sub10 = pave4(bb0) + pave4(bb1)

	Sub93 = pave12(cc0) + pave12(cc1)

	Sub30 = pave16(cc0) + pave16(cc1)

	Sub39 = pave11(cc0) + pave11(cc2)

	Sub87 = pave12(cc12) + pave12(cc22)

	Sub35 = 2*SW2*(dSW1*SW) + CW2*(6*dSW1*SW + SW2*Sub34)

	Sub54 = Sub30 + pave16(cc2)

	LOOP(Ind1, 1,3,1)

        Sub103(Ind1) = 
     &   CKM(Ind1,2)*Conjugate(dZfL1(3,Ind1,2)) + 
     &    CKM(2,Ind1)*dZfL1(4,Ind1,2)

	ENDLOOP(Ind1)

	end
