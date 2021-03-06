#if 0
* abbr0hel.F
* abbreviations for {-F[4, {1, Index[Colour, 1]}], F[4, {1, Index[Colour, 2]}]} -> {S[1], -V[3], V[3]}
* generated by FormCalc 7.5 on 25-Mar-2015 11:35
#endif

#include "ddbar_vars.h"


	subroutine ddbar_abbr0hel
	implicit none

#include "ddbar_vars.h"


#include "inline.h"

	F4 = ChainV1(Spinor(1,-1,2),0,k(3),0,Spinor(2,1,1))*Hel(1)

	F7 = -(ChainB1(Spinor(1,-1,2),0,k(3),0,Spinor(2,1,1))*Hel(1))

	Pair4 = Pair(ec(4),k(5))

	Pair8 = Pair(ec(5),k(1))

	F3 = ChainV1(Spinor(1,-1,2),0,ec(4),0,Spinor(2,1,1))*Hel(1)

	F1 = ChainV1(Spinor(1,-1,2),0,ec(5),0,Spinor(2,1,1))*Hel(1)

	F5 = ChainV1(Spinor(1,-1,2),0,k(4),0,Spinor(2,1,1))*Hel(1)

	F6 = -(ChainB1(Spinor(1,-1,2),0,ec(4),0,Spinor(2,1,1))*Hel(1))

	F2 = -(ChainB1(Spinor(1,-1,2),0,ec(5),0,Spinor(2,1,1))*Hel(1))

	F8 = -(ChainB1(Spinor(1,-1,2),0,k(4),0,Spinor(2,1,1))*Hel(1))

	Pair5 = Pair(ec(4),ec(5))

	Pair6 = Pair(ec(4),k(1))

	Pair7 = Pair(ec(4),k(2))

	Pair1 = Pair(ec(4),k(3))

	Pair9 = Pair(ec(5),k(2))

	Pair2 = Pair(ec(5),k(3))

	Pair3 = Pair(ec(5),k(4))

        F10 = ChainV3(Spinor(1,-1,2),0,ec(4),ec(5),k(3),0,
     &     Spinor(2,1,1))*Hel(1)

        F9 = ChainV3(Spinor(1,-1,2),0,ec(4),ec(5),k(4),0,
     &     Spinor(2,1,1))*Hel(1)

	Abb7 = F1*Pair4

	Abb8 = F2*Pair4

	Abb9 = F4*Pair5

	Abb11 = F7*Pair5

	Abb17 = F3*Pair8

	Abb1 = F1*Pair1

	Abb2 = F2*Pair1

	Abb3 = F3*Pair2

	Abb4 = F6*Pair2

	Abb5 = F3*Pair3

	Abb6 = F6*Pair3

	Abb10 = F5*Pair5

	Abb12 = F8*Pair5

	Abb13 = F1*Pair6

	Abb14 = F2*Pair6

	Abb15 = F1*Pair7

	Abb16 = F2*Pair7

	Abb18 = F3*Pair9

	Opt1 = -Abb11 - Abb12 - Abb8 - 1/2.D0*Abb2

	Opt2 = -Abb10 - Abb7 - Abb9 - 1/2.D0*Abb1

	AbbSum59 = -Abb13 + Abb17

	AbbSum34 = Abb5 - 1/2.D0*F9

	AbbSum10 = -Abb12 + Abb6 - Abb8 - 1/2.D0*Abb11

	AbbSum9 = -Abb10 + Abb5 - Abb7 - 1/2.D0*Abb9

	AbbSum7 = -2*Abb10 - 2*Abb13 - 2*Abb15 + Abb3 + 2*Abb5

	AbbSum3 = Abb3 + Abb5 + Opt2

	AbbSum1 = Abb1 + Abb2

	AbbSum5 = Abb3 + Abb4

	AbbSum11 = -Abb13 + AbbSum34

	AbbSum12 = Abb18 + AbbSum59 - 1/2.D0*F10 - 1/2.D0*F9

        AbbSum6 = -2*Abb10 - 2*Abb12 - 2*Abb13 - 2*Abb14 - 
     &    2*Abb15 - 2*Abb16 + 2*Abb5 + 2*Abb6 + AbbSum5

	AbbSum2 = Abb5 + Abb6 + AbbSum5 + Opt1 + Opt2

	Sub3 = 2*SW2*AbbSum10 + (-3 + 2*SW2)*AbbSum9

	AbbSum8 = -2*Abb12 - 2*Abb14 - 2*Abb16 + Abb4 + 2*Abb6

	AbbSum4 = Abb4 + Abb6 + Opt1

	Sub6 = (3 - 2*SW2)*Abb3 - 2*SW2*Abb4 + 2*CW2*AbbSum8

	Sub1 = (-3 + 2*SW2)*Abb1 + 2*SW2*Abb2 + 4*CW2*AbbSum4

	Sub2 = CW2*(-6 + 4*SW2)*AbbSum3 + SW2*Sub1

	Sub7 = CW2*(-3 + 2*SW2)*AbbSum7 + SW2*Sub6

	end
