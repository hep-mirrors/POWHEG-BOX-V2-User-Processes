#if 0
* abbr1hel.F
* abbreviations for {-F[3, {1, Index[Colour, 1]}], F[3, {1, Index[Colour, 2]}]} -> {S[1], -V[3], V[3]}
* generated by FormCalc 7.5 on 25-Mar-2015 11:37
#endif

#include "uubar_vars.h"


	subroutine uubar_abbr1hel
	implicit none

#include "uubar_vars.h"


#include "inline.h"

	Pair8 = Pair(ec(5),k(1))

	Pair9 = Pair(ec(5),k(2))

	Abb17 = F3*Pair8

	Abb19 = F6*Pair8

	Abb18 = F3*Pair9

	Abb20 = F6*Pair9

	Abb35 = F5*Pair3*Pair6

	Abb37 = F5*Pair2*Pair7

	Abb36 = F5*Pair3*Pair7

	Abb21 = F4*Pair1*Pair8

	Abb22 = F5*Pair1*Pair8

	Abb27 = F4*Pair4*Pair8

	Abb28 = F5*Pair4*Pair8

	Abb23 = F4*Pair6*Pair8

	Abb24 = F5*Pair6*Pair8

	Abb25 = F4*Pair7*Pair8

	Abb26 = F5*Pair7*Pair8

	Abb31 = F4*Pair1*Pair9

	Abb32 = F5*Pair1*Pair9

	Abb29 = F4*Pair6*Pair9

	Abb30 = F5*Pair6*Pair9

	Abb33 = F4*Pair7*Pair9

	Abb34 = F5*Pair7*Pair9

	Opt1 = Abb17 - Abb7 + 1/2.D0*F10 + 1/2.D0*F9

	Opt4 = 1/2.D0*Abb10 + 1/2.D0*Abb9 - 1/4.D0*F10 - 1/4.D0*F9

	Opt5 = -Abb10 - Abb9 + 1/2.D0*F10 + 1/2.D0*F9

	AbbSum74 = Abb13 - Abb15

	AbbSum21 = -Abb1 + Abb15

	AbbSum56 = -Abb13 + Abb17

	AbbSum97 = Abb17 - 1/2.D0*Abb13

	AbbSum58 = Abb13 + Abb17

	AbbSum69 = Abb18 - 3/2.D0*Abb15

	AbbSum70 = -Abb15 + Abb18

	AbbSum71 = Abb15 + Abb18

	AbbSum77 = Abb23 + Abb24

	AbbSum107 = Abb24 - 2*Abb26

	AbbSum109 = -Abb26 + Abb30

	AbbSum110 = Abb26 + Abb30

	AbbSum85 = Abb33 + Abb34

	AbbSum114 = Abb34 - Abb36

	AbbSum115 = Abb34 - 1/2.D0*Abb36

	AbbSum112 = Abb26 - 2/3.D0*Abb37

	AbbSum113 = Abb26 - 1/2.D0*Abb37

	AbbSum17 = Abb18 - Abb5

	AbbSum103 = -16*Abb15 + F9

	AbbSum105 = -2*Abb15 + F9

	AbbSum106 = -Abb15 + F9

	AbbSum59 = -2*Abb15 + AbbSum58

	AbbSum61 = Abb17 - 1/2.D0*Abb1 + 1/2.D0*Abb15

	AbbSum62 = Abb17 + AbbSum21

	AbbSum68 = -2*Abb15 + Abb18 + 1/2.D0*Abb1

	AbbSum67 = Abb18 + AbbSum74

	AbbSum108 = -Abb35 + AbbSum110

	AbbSum111 = Abb26 - 2*Abb34 + Abb36

	AbbSum99 = -Abb5 + AbbSum70

	AbbSum57 = AbbSum97 - 1/2.D0*Abb7

	AbbSum93 = Abb15 + Abb17 - 1/2.D0*F9

	AbbSum101 = AbbSum70 - 1/2.D0*F9

	AbbSum104 = -4*Abb15 + AbbSum35

	AbbSum102 = 2*Abb13 + AbbSum105

	AbbSum31 = Abb15 + AbbSum35

	AbbSum32 = 2*Abb15 + AbbSum35

	AbbSum33 = 6*Abb15 + AbbSum35

	AbbSum34 = 8*Abb15 + AbbSum35

	AbbSum73 = 2*Abb1 + F10 + F9

	AbbSum36 = Abb17 - AbbSum67

	AbbSum88 = 3*Abb13 - 5*Abb15 + Abb17 + Abb18

	AbbSum42 = Abb1 - 6*Abb15 + Abb17 + 3*Abb18

	AbbSum82 = -Abb21 - Abb22 + Abb25 + Abb26

	AbbSum83 = Abb25 + Abb26 - 2/3.D0*Abb21 - 2/3.D0*Abb22

	AbbSum84 = Abb25 + Abb26 - 1/2.D0*Abb21 - 1/2.D0*Abb22

	AbbSum76 = AbbSum77 - 1/2.D0*Abb27 - 1/2.D0*Abb28

	AbbSum78 = -Abb25 + Abb29 + AbbSum109

	AbbSum79 = Abb25 + Abb29 + AbbSum110

	AbbSum81 = Abb25 + Abb26 - 1/2.D0*Abb33 - 1/2.D0*Abb34

	AbbSum100 = -Abb10 - Abb5 + AbbSum71

	AbbSum92 = Abb5 + AbbSum56 - F9

	AbbSum63 = Abb18 - 1/2.D0*Abb15 - 1/4.D0*F10 - 1/4.D0*F9

	AbbSum64 = AbbSum70 - 1/8.D0*F10 - 1/8.D0*F9

	AbbSum65 = AbbSum70 - 1/12.D0*F10 - 1/12.D0*F9

	AbbSum94 = -Abb10 - Abb15 + Abb17 + 1/2.D0*F9

	AbbSum96 = Abb17 + AbbSum11

	AbbSum15 = -3*Abb10 - 3*Abb15 + Abb17 + 3/2.D0*F9

	AbbSum16 = -5*Abb10 - 5*Abb15 + Abb17 + 5/2.D0*F9

	AbbSum87 = AbbSum97 - 1/2.D0*Abb15 + 1/2.D0*Abb18 - 1/2.D0*Abb3

	AbbSum37 = AbbSum56 + 1/2.D0*Abb15 - 1/2.D0*Abb18 - 1/2.D0*Abb7

	AbbSum38 = AbbSum56 + 1/4.D0*Abb15 - 1/4.D0*Abb18 - 1/4.D0*Abb7

	AbbSum60 = Abb10 + Abb17 + Abb9 - AbbSum21

	AbbSum89 = -4*Abb13 + 5*Abb15 + Abb17 - Abb3 - 3/2.D0*F9

	AbbSum43 = AbbSum62 - 1/2.D0*F10 - 1/2.D0*F9

	AbbSum44 = Abb17 - 3/2.D0*Abb1 + 3/2.D0*Abb15 - 1/2.D0*F10 - 1/2.D0*F9

	AbbSum45 = Abb17 - 5/3.D0*Abb1 + 5/3.D0*Abb15 - 1/2.D0*F10 - 1/2.D0*F9

	AbbSum46 = AbbSum62 - 1/3.D0*F10 - 1/3.D0*F9

        AbbSum13 = Abb17 + 1/2.D0*Abb10 + 1/2.D0*Abb15 - 
     &    1/2.D0*Abb3 - 1/4.D0*F9

	AbbSum90 = AbbSum97 + 1/2.D0*Abb15 - 1/2.D0*Abb3 - 1/4.D0*F9

	AbbSum47 = AbbSum62 - 1/4.D0*F10 - 1/4.D0*F9

	AbbSum48 = AbbSum58 - 1/3.D0*Abb7 + 1/6.D0*F10 + 1/6.D0*F9

	AbbSum49 = AbbSum58 - 1/2.D0*Abb7 + 1/4.D0*F10 + 1/4.D0*F9

	AbbSum98 = AbbSum17 + AbbSum74 + 1/2.D0*F9

	AbbSum52 = 3*Abb13 + Abb17 - 3/2.D0*Abb7 + 1/2.D0*F10 + 1/2.D0*F9

	AbbSum51 = 2*Abb13 + Opt1

	AbbSum53 = 3*Abb13 + Opt1

	AbbSum95 = -3*Abb15 + AbbSum35 + AbbSum56

	AbbSum14 = AbbSum96 - 1/2.D0*Abb3

	AbbSum19 = Abb1 - 2*Abb9 + AbbSum35 + F10

	AbbSum20 = 2*Abb1 - 2*Abb9 + AbbSum35 + F10

	AbbSum18 = -2*Abb9 + AbbSum32 + F10

	AbbSum75 = Abb21 + Abb22 - 2*Abb25 - 2*Abb26 + AbbSum77

	AbbSum80 = Abb25 + Abb26 + Abb31 + Abb32 - AbbSum85

	AbbSum30 = Abb19 + Abb20 + Opt2

	AbbSum29 = Abb17 + Abb18 + Opt3

	AbbSum86 = Abb10 - Abb18 + 2*Abb5 + AbbSum56 - 3/2.D0*F9

        AbbSum40 = AbbSum97 - 1/2.D0*Abb1 + 1/2.D0*Abb18 - 
     &    1/2.D0*F10 - 1/2.D0*F9

	AbbSum50 = Abb17 - Abb7 - Opt4

	AbbSum72 = 2*Abb1 - 2*Abb9 + AbbSum104 + F10

	AbbSum91 = -4*Abb10 - 6*Abb15 - Abb5 + AbbSum56 + 2*F9

        AbbSum22 = Abb17 - 5/2.D0*Abb1 + 5/2.D0*Abb10 + 
     &    5/2.D0*Abb15 + 5/2.D0*Abb9 - 5/4.D0*F10 - 5/4.D0*F9

	AbbSum23 = Abb17 - AbbSum12

	AbbSum24 = Abb10 + Abb9 + AbbSum43

	AbbSum25 = AbbSum61 + Opt4

	AbbSum26 = Abb17 - Opt4 + 1/2.D0*Abb1 - 1/2.D0*Abb15

	AbbSum27 = Abb17 - AbbSum21 + Opt5

	AbbSum66 = Abb1 - 2*Abb15 + Abb18 + Opt5

        AbbSum55 = Abb17 - 2*Abb7 + F10 + F9 - 3/2.D0*Abb10 + 
     &    1/2.D0*Abb13 - 3/2.D0*Abb9

        AbbSum39 = Abb17 - 1/3.D0*Abb1 + 1/3.D0*Abb10 - 
     &    1/3.D0*Abb13 + 1/3.D0*Abb18 + 1/3.D0*Abb9 - 1/2.D0*F10 - 1/2.D0*F9

	AbbSum54 = 2*Abb1 - 2*Abb9 + AbbSum95 + F10

        AbbSum41 = -Abb10 - Abb9 + Opt1 + 1/2.D0*Abb13 - 
     &    1/2.D0*Abb15 + 1/2.D0*Abb18

	AbbSum28 = AbbSum29 + AbbSum30

        Sub62 = Alfa*(Abb1*
     &      (MW*(-2/3.D0 + (8*SW2)/9.D0)*(Alfas*EL*Finite) + 
     &        MW*(EL*(Pi*Conjugate(dZfL1(3,1,1)) - 
     &             (4*Pi*SW2)/3.D0*Conjugate(dZfL1(3,1,1))))))

        Sub68 = Alfa*(Abb3*
     &      (MW*(-2/3.D0 + (8*SW2)/9.D0)*(Alfas*EL*Finite) + 
     &        MW*(EL*(Pi*Conjugate(dZfL1(3,1,1)) - 
     &             (4*Pi*SW2)/3.D0*Conjugate(dZfL1(3,1,1))))))

        Sub63 = Alfa*MW*(-4/3.D0 + (16*SW2)/9.D0)*
     &     (AbbSum29*Alfas*EL*Finite) + 
     &    Alfa*MW*(AbbSum3*EL*
     &       (2*Pi*Conjugate(dZfL1(3,1,1)) - 
     &         (8*Pi*SW2)/3.D0*Conjugate(dZfL1(3,1,1))))

        Sub69 = Alfa*(AbbSum7*
     &      (MW*(-2/3.D0 + (8*SW2)/9.D0)*(Alfas*EL*Finite) + 
     &        MW*(EL*(Pi*Conjugate(dZfL1(3,1,1)) - 
     &             (4*Pi*SW2)/3.D0*Conjugate(dZfL1(3,1,1))))))

        Sub42 = Abb1*Conjugate(dZfL1(3,1,1)) - 
     &    2*AbbSum3*Conjugate(dZfL1(3,1,1)) + 
     &    Abb2*Conjugate(dZfR1(3,1,1)) - 
     &    2*AbbSum4*Conjugate(dZfR1(3,1,1))

        Sub47 = Abb3*Conjugate(dZfL1(3,1,1)) + 
     &    AbbSum7*Conjugate(dZfL1(3,1,1)) + 
     &    Abb4*Conjugate(dZfR1(3,1,1)) + 
     &    AbbSum8*Conjugate(dZfR1(3,1,1))

        Sub64 = Alfa*(Abb2*
     &      ((8*MW)/9.D0*(Alfas*EL*Finite*SW) - 
     &        (4*MW*Pi)/3.D0*(EL*SW*Conjugate(dZfR1(3,1,1)))))

        Sub70 = Alfa*(Abb4*
     &      ((8*MW)/9.D0*(Alfas*EL*Finite*SW) - 
     &        (4*MW*Pi)/3.D0*(EL*SW*Conjugate(dZfR1(3,1,1)))))

        Sub54 = Alfa*(AbbSum10*
     &      ((16*MW)/9.D0*(Alfas*EL*Finite*SW) - 
     &        (8*MW*Pi)/3.D0*(EL*SW*Conjugate(dZfR1(3,1,1)))))

        Sub65 = (16*Alfa*MW)/9.D0*
     &     (AbbSum30*Alfas*EL*Finite*SW) - 
     &    (8*Alfa*MW*Pi)/3.D0*(AbbSum4*EL*SW*Conjugate(dZfR1(3,1,1)))

        Sub71 = Alfa*(AbbSum8*
     &      ((8*MW)/9.D0*(Alfas*EL*Finite*SW) - 
     &        (4*MW*Pi)/3.D0*(EL*SW*Conjugate(dZfR1(3,1,1)))))

	Sub56 = (-3 + 4*SW2)*Abb1 + 4*SW2*Abb2 + 8*CW2*AbbSum30

        Sub67 = Alfa*MW*
     &    (Alfas*EL*(4/9.D0*(S*Sub14*Sub8) + 
     &        Sub8*(8/9.D0*pave10(cc00) - 4/9.D0*pave9(bb0))))

        Sub45 = (4*Alfa*MW*Pi)/3.D0*(EL*Sub42) + 
     &    Alfa*(AbbSum1*Alfas*EL*
     &       (-((8*MW)/9.D0*Finite) + 
     &         MW*(-(32/9.D0*pave10(cc00)) + 16/9.D0*pave9(bb0)))) + 
     &    Alfa*(AbbSum28*Alfas*EL*
     &       ((16*MW)/9.D0*Finite + (64*MW)/9.D0*pave10(cc00))) - 
     &    (32*Alfa*MW)/9.D0*(AbbSum2*Alfas*EL*pave9(bb0))

        Sub48 = -((4*Alfa*MW*Pi)/3.D0*(EL*Sub47)) + 
     &    Alfa*(AbbSum5*Alfas*EL*
     &       ((8*MW)/9.D0*Finite + 
     &         MW*(32/9.D0*pave10(cc00) - 16/9.D0*pave9(bb0)))) + 
     &    Alfa*(AbbSum6*Alfas*EL*
     &       ((8*MW)/9.D0*Finite + 
     &         MW*(32/9.D0*pave10(cc00) - 16/9.D0*pave9(bb0))))

        Sub53 = Alfa*(AbbSum9*
     &       (MW*(-4/3.D0 + (16*SW2)/9.D0)*(Alfas*EL*Finite) + 
     &         MW*(EL*(2*Pi*Conjugate(dZfL1(3,1,1)) - 
     &              (8*Pi*SW2)/3.D0*Conjugate(dZfL1(3,1,1)))))) + 
     &    Alfa*MW*(Alfas*EL*
     &       (8/9.D0*(S*Sub14*Sub4) + 
     &         Sub4*(16/9.D0*pave10(cc00) - 8/9.D0*pave9(bb0))))

        Sub72 = -(1/CW2*Sub70) + 1/SW2*Sub71 - 
     &    (Alfa*MW*Pi)/(3.D0*CW2*SW2**2)*(AbbSum7*EL*Sub51)/SW + 
     &    (Alfa*MW*Pi)/(3.D0*CW*CW2**2*SW2)*(Abb3*EL*Sub59)/SW + 
     &    1/(CW2*SW2)*Sub67/SW - 1/CW2*Sub68/SW + 1/SW2*Sub69/SW - 
     &    (4*Alfa*MW*Pi)/(3.D0*CW2*SW2)*
     &     (AbbSum8*EL*(2*dSW1 + CW2*Sub52)) + 
     &    (4*Alfa*MW*Pi)/(3.D0*CW*CW2**2)*
     &     (Abb4*EL*(CW2**2*dZAZ1 + CW*Sub60))

	Sub20 = AbbSum11*(S + T14) + 2*Abb17*T24

	Sub17 = AbbSum11*(S + T14) + 4*AbbSum13*T24

	Sub30 = AbbSum18*S34 + AbbSum19*(2*T24 + 2*U)

	Sub38 = 2*Abb15*S34 + AbbSum20*(T24 + U)

	Sub28 = AbbSum12*(S + T + T14) + Abb17*(4*S34 + 4*T24 + 4*U)

	Sub85 = 4*AbbSum111 + Abb15*(4*S + 2*T14) + AbbSum105*T24

	Sub84 = 6*AbbSum112 + Abb15*(S + T14) + AbbSum106*T24

	Sub87 = 2*AbbSum109 + AbbSum74*S + AbbSum70*T14 - AbbSum56*T24

        Sub83 = 8*AbbSum113 - AbbSum104*S + 2*Abb15*T14 + 
     &    4*AbbSum87*T24

        Sub86 = 4*AbbSum107 + AbbSum102*S + 2*AbbSum98*T14 - 
     &    4*AbbSum97*T24

        Sub75 = 6*AbbSum83 + AbbSum62*S34 + 
     &    AbbSum44*(2*S + 2*T + 2*T14) + AbbSum61*(2*T24 + 2*U)

        Sub81 = 2*AbbSum78 + AbbSum74*S + AbbSum70*(T + T14) + 
     &    AbbSum56*(-T24 - U)

        Sub79 = 2*AbbSum75 + 2*AbbSum49*S + AbbSum58*S34 + 
     &    AbbSum51*(T + T14) + Abb13*(T24 + U)

        Sub77 = 4*AbbSum81 - 2*AbbSum68*S - AbbSum70*S34 + 
     &    AbbSum69*(-2*T - 2*T14) + AbbSum63*(-2*T24 - 2*U)

        Sub73 = 4*AbbSum84 - 2*AbbSum50*S - AbbSum36*S34 + 
     &    AbbSum57*(-2*T - 2*T14) + AbbSum67*(T24 + U)

        Sub13 = Alfa*(AbbSum12*
     &      (Alfas*EL*(-((4*MW)/3.D0*(Sub11*Sub12)) + 
     &           Finite*((2*MW)/3.D0*MH2 + 
     &              MW*((4*MW2)/3.D0 - 2/3.D0*S - 2/3.D0*T - 2/3.D0*T14)))+
     &          EL*(MW*(MH2*
     &              (Pi*Conjugate(dZfL1(4,1,1)) + Pi*dZfL1(4,1,1)))
     &             + MW*(S34*
     &               (-(Pi*Conjugate(dZfL1(4,1,1))) - 
     &                 Pi*dZfL1(4,1,1)) + 
     &              T24*(-(Pi*Conjugate(dZfL1(4,1,1))) - 
     &                 Pi*dZfL1(4,1,1)) + 
     &              U*(-(Pi*Conjugate(dZfL1(4,1,1))) - 
     &                 Pi*dZfL1(4,1,1)) + 
     &              MW2*(Pi*Conjugate(dZfL1(4,1,1)) + 
     &                 Pi*dZfL1(4,1,1))))))

        Sub24 = -((8*Alfa*MW)/3.D0*(Abb15*Alfas*EL*Sub18*T24)) - 
     &    (4*Alfa*MW)/3.D0*(AbbSum35*Alfas*EL*Sub19*T24) + 
     &    Alfa*(AbbSum11*(MW*
     &          (EL*(-(Pi*Sub22) - Pi*dZfL1(3,1,1) - 
     &              Pi*dZfL1(4,1,1))) + 
     &         Alfas*EL*((4*MW)/3.D0*Finite + 
     &            MW*(-(4/3.D0*Sub15) + 8/3.D0*Sub16 + 
     &               MW2*(4/3.D0*Sub19 - 4/3.D0*Sub21 - 
     &                  4/3.D0*pave8(cc1)))))) + 
     &    Alfa*MW*(Alfas*EL*
     &       (4/3.D0*(Sub20*Sub21) + 4/3.D0*(Sub17*pave8(cc1)))) - 
     &    (4*Alfa*MW)/3.D0*(AbbSum32*Alfas*EL*T24*pave7(cc1)) - 
     &    (8*Alfa*MW)/3.D0*(AbbSum17*Alfas*EL*T24*pave8(cc11)) + 
     &    (8*Alfa*MW)/3.D0*(Abb17*Alfas*EL*T24*pave8(cc12))

	Sub31 = AbbSum19*(2*MH2 + 2*MW2) - Sub30

        Sub25 = 1/SW2**2*
     &    (Alfa*MW*Pi*(AbbSum11*EL*Sub23) + SW2*Sub24)/SW

	Sub57 = CW2*(-6 + 8*SW2)*AbbSum29 + SW2*Sub56

	Sub29 = 4*AbbSum26*MH2 - Sub28 + 4*MW2*AbbSum27

	Sub74 = 2*AbbSum37*MH2 + Sub73 + 4*MW2*AbbSum38

	Sub76 = 4*AbbSum47*MH2 - Sub75 + 6*MW2*AbbSum46

	Sub78 = 4*AbbSum64*MH2 + Sub77 + 6*MW2*AbbSum65

	Sub80 = AbbSum53*MH2 - Sub79 + 3*MW2*AbbSum48

        Sub46 = 1/(3.D0*CW*SW2)*
     &    (-(Alfa*MW*Pi*(Abb1*EL*Sub43)) + 
     &       2*Alfa*MW*Pi*(AbbSum3*EL*Sub43) - 
     &       4*Alfa*MW*Pi*SW2*(Abb2*EL*Sub44) + 
     &       8*Alfa*MW*Pi*SW2*(AbbSum4*EL*Sub44) - 3*CW*SW2*Sub45)/
     &     SW

        Sub49 = 1/(3.D0*CW*SW2)*
     &    (Alfa*MW*Pi*(Abb3*EL*Sub43) + 
     &       Alfa*MW*Pi*(AbbSum7*EL*Sub43) + 
     &       4*Alfa*MW*Pi*SW2*(Abb4*EL*Sub44) + 
     &       4*Alfa*MW*Pi*SW2*(AbbSum8*EL*Sub44) - 3*CW*SW2*Sub48)/
     &     SW

        Sub61 = Alfa*MW*
     &    (Alfas*EL*(4/9.D0*(S*Sub14*Sub2) + 
     &        8/9.D0*(Sub57*pave10(cc00)) - 4/9.D0*(Sub2*pave9(bb0))))

        Sub55 = 1/(3.D0*CW2**2*SW2**2)*
     &    (2*Alfa*MW*Pi*(AbbSum9*EL*Sub51) + 
     &       Alfa*(AbbSum10*
     &          (16*MW*Pi*SW2*(dSW1*EL*SW) + 
     &            8*CW2*MW*Pi*SW2*(EL*Sub52*SW))) + 
     &       CW2*(-(3*SW2*Sub53) - 3*SW2*(Sub54*SW)))/SW

        Sub66 = -(1/CW2*Sub64) - 1/SW2*Sub65 + 
     &    (2*Alfa*MW*Pi)/(3.D0*CW2*SW2**2)*(AbbSum3*EL*Sub51)/SW + 
     &    (Alfa*MW*Pi)/(3.D0*CW*CW2**2*SW2)*(Abb1*EL*Sub59)/SW - 
     &    1/(CW2*SW2)*Sub61/SW - 1/CW2*Sub62/SW - 1/SW2*Sub63/SW + 
     &    (8*Alfa*MW*Pi)/(3.D0*CW2*SW2)*
     &     (AbbSum4*EL*(2*dSW1 + CW2*Sub52)) + 
     &    (4*Alfa*MW*Pi)/(3.D0*CW*CW2**2)*
     &     (Abb2*EL*(CW2**2*dZAZ1 + CW*Sub60))

        Sub40 = (4*Alfa*MW)/3.D0*(AbbSum12*Alfas*EL*Finite) - 
     &    Alfa*MW*Pi*(AbbSum12*EL*Sub22) - 
     &    (4*Alfa*MW)/3.D0*(AbbSum12*Alfas*EL*Sub26) + 
     &    (8*Alfa*MW)/3.D0*(AbbSum12*Alfas*EL*Sub27) - 
     &    (8*Alfa*MW)/3.D0*(Abb17*Alfas*EL*Sub34*Sub35) + 
     &    (4*Alfa*MW)/3.D0*(Alfas*EL*(AbbSum20*(MH2 + MW2) - Sub38)*
     &       Sub39) - Alfa*MW*Pi*
     &     (AbbSum12*EL*(dZfL1(3,1,1) + dZfL1(4,1,1))) + 
     &    (8*Alfa*MW)/3.D0*(Alfas*EL*Sub37*
     &       (AbbSum24*Sub36 + 2*MW2*AbbSum25)) - 
     &    (4*Alfa*MW)/3.D0*(Alfas*EL*Sub29*pave5(cc1)) + 
     &    (4*Alfa*MW)/3.D0*(Alfas*EL*Sub31*pave6(cc1)) - 
     &    (8*Alfa*MW)/3.D0*(AbbSum21*Alfas*EL*Sub33*pave6(cc11)) + 
     &    (8*Alfa*MW)/3.D0*(Abb15*Alfas*EL*Sub34*pave6(cc12))

        Sub82 = (16*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum40*Alfas*EL*pave11(cc0))/SW - 
     &    (4*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum73*Alfas*EL*pave11(cc1))/SW + 
     &    (8*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum43*Alfas*EL*pave11(cc2))/SW - 
     &    (4*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum12*Alfas*EL*S*pave12(dd0))/SW - 
     &    (16*Alfa*MW)/SW2*(AbbSum39*Alfas*EL*pave12(dd00))/SW - 
     &    (16*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum60*Alfas*EL*pave12(dd001))/SW + 
     &    (16*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum71*Alfas*EL*pave12(dd002))/SW - 
     &    (16*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum58*Alfas*EL*pave12(dd003))/SW + 
     &    (8*Alfa*MW)/(3.D0*SW2)*(Alfas*EL*Sub74*pave12(dd1))/SW - 
     &    (8*Alfa*MW)/(3.D0*SW2)*(Alfas*EL*Sub76*pave12(dd11))/SW + 
     &    (16*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum82*Alfas*EL*pave12(dd111))/SW + 
     &    (16*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum80*Alfas*EL*pave12(dd112))/SW - 
     &    (32*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum76*Alfas*EL*pave12(dd113))/SW + 
     &    (8*Alfa*MW)/(3.D0*SW2)*(Alfas*EL*Sub78*pave12(dd12))/SW - 
     &    (16*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum85*Alfas*EL*pave12(dd122))/SW + 
     &    (16*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum79*Alfas*EL*pave12(dd123))/SW + 
     &    (8*Alfa*MW)/(3.D0*SW2)*(Alfas*EL*Sub80*pave12(dd13))/SW - 
     &    (16*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum77*Alfas*EL*pave12(dd133))/SW - 
     &    (4*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum72*Alfas*EL*S*pave12(dd2))/SW + 
     &    (8*Alfa*MW)/(3.D0*SW2)*
     &     (Abb15*Alfas*EL*S*pave12(dd22))/SW - 
     &    (8*Alfa*MW)/(3.D0*SW2)*
     &     (Alfas*EL*(AbbSum36*(MH2 + MW2) + Sub81)*pave12(dd23))/
     &      SW - (8*Alfa*MW)/(3.D0*SW2)*
     &     (AbbSum27*Alfas*EL*S*pave12(dd3))/SW - 
     &    (8*Alfa*MW)/(3.D0*SW2)*(Abb17*Alfas*EL*S*pave12(dd33))/SW

        Sub88 = 1/(3.D0*SW2)*
     &    (Alfa*(Alfas*EL*(-(4*MW*(F9*pave13(cc1))) + 
     &            MW*(4*Sub83*pave14(dd1) + 8*Sub84*pave14(dd11) + 
     &               4*Sub85*pave14(dd12) - 4*Sub86*pave14(dd13) - 
     &               8*Sub87*pave14(dd23)))) + 
     &       8*Alfa*MW*(AbbSum92*Alfas*EL*pave13(cc0)) + 
     &       8*Alfa*MW*(AbbSum93*Alfas*EL*pave13(cc2)) - 
     &       4*Alfa*MW*(AbbSum11*Alfas*EL*S*pave14(dd0)) - 
     &       16*Alfa*MW*(AbbSum86*Alfas*EL*pave14(dd00)) + 
     &       16*Alfa*MW*(AbbSum100*Alfas*EL*pave14(dd001)) + 
     &       16*Alfa*MW*(AbbSum71*Alfas*EL*pave14(dd002)) - 
     &       16*Alfa*MW*(AbbSum58*Alfas*EL*pave14(dd003)) + 
     &       Alfa*MW*MW2*(AbbSum99*Alfas*EL*
     &          (8*pave14(dd1) + 8*pave14(dd11))) - 
     &       16*Alfa*MW*(AbbSum114*Alfas*EL*pave14(dd111)) - 
     &       32*Alfa*MW*(AbbSum115*Alfas*EL*pave14(dd112)) + 
     &       16*Alfa*MW*(AbbSum108*Alfas*EL*pave14(dd113)) + 
     &       8*Alfa*MW*MW2*(AbbSum101*Alfas*EL*pave14(dd12)) - 
     &       16*Alfa*MW*(Abb34*Alfas*EL*pave14(dd122)) + 
     &       16*Alfa*MW*(AbbSum110*Alfas*EL*pave14(dd123)) - 
     &       16*Alfa*MW*MW2*(AbbSum90*Alfas*EL*pave14(dd13)) - 
     &       16*Alfa*MW*(Abb24*Alfas*EL*pave14(dd133)) - 
     &       4*Alfa*MW*(AbbSum104*Alfas*EL*S*pave14(dd2)) + 
     &       8*Alfa*MW*(Abb15*Alfas*EL*S*pave14(dd22)) - 
     &       8*Alfa*MW*MW2*(AbbSum36*Alfas*EL*pave14(dd23)) - 
     &       8*Alfa*MW*(AbbSum94*Alfas*EL*S*pave14(dd3)) - 
     &       8*Alfa*MW*(Abb17*Alfas*EL*S*pave14(dd33)))/SW

        Sub41 = 1/SW2**2*
     &    (Alfa*MW*Pi*(AbbSum12*EL*Sub23) + SW2*Sub40)/SW

	end
