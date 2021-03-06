#if 0
* quqdbar_xIxJquqdbar_abbr0h.F
* abbreviations for {F[3, {Gen(1), Col1}], -F[4, {Gen(2), Col2}]} -> {-F[12, {Cha(3)}], F[12, {Cha(4)}], F[3, {Gen(5), Col5}], -F[4, {Gen(6), Col6}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 23-Oct-2017 11:06
#endif

#include "quqdbar_xIxJquqdbar_vars.h"
#include "real_inline.h"
#include "real_contains.h"


        subroutine quqdbar_xIxJquqdbar_abbr0h
        implicit none

#include "quqdbar_xIxJquqdbar_vars.h"
#include "real_inline.h"

        F1 = ChainV1(Spinor(2,-1,2),0,k(1),0,Spinor(6,-1,1))

        F2 = ChainV1(Spinor(2,-1,2),0,k(3),0,Spinor(6,-1,1))

        F3 = -ChainV0(Spinor(1,-1,2),0,0,Spinor(3,-1,1))

        F4 = ChainB0(Spinor(4,1,2),0,0,Spinor(5,-1,1))

        F5 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(6,-1,1))

        F6 = -ChainV0(Spinor(4,1,2),0,0,Spinor(5,-1,1))

        F7 = -ChainB0(Spinor(1,-1,2),0,0,Spinor(3,-1,1))

        F8 = ChainB1(Spinor(2,-1,2),0,k(1),0,Spinor(6,-1,1))

        F9 = ChainB1(Spinor(2,-1,2),0,k(3),0,Spinor(6,-1,1))

        F10 = -ChainV0(Spinor(2,-1,2),0,0,Spinor(6,-1,1))

        F11 = ChainB0(Spinor(6,1,2),0,0,Spinor(1,1,1))

        F12 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(3,-1,1))

        F13 = ChainB1(Spinor(6,1,2),0,k(3),0,Spinor(1,1,1))

        F14 = ChainB1(Spinor(6,1,2),0,k(2),0,Spinor(1,1,1))

        F15 = ChainV1(Spinor(6,1,2),0,k(3),0,Spinor(1,1,1))

        F16 = ChainV1(Spinor(6,1,2),0,k(2),0,Spinor(1,1,1))

        F17 = ChainV0(Spinor(6,1,2),0,0,Spinor(1,1,1))

        F18 = -ChainV0(Spinor(2,-1,2),0,0,Spinor(3,-1,1))

        F19 = ChainV1(Spinor(5,1,2),0,k(3),0,Spinor(2,1,1))

        F20 = ChainV1(Spinor(5,1,2),0,k(1),0,Spinor(2,1,1))

        F21 = -ChainV0(Spinor(4,1,2),0,0,Spinor(6,-1,1))

        F22 = ChainV0(Spinor(5,1,2),0,0,Spinor(2,1,1))

        F23 = ChainB1(Spinor(5,1,2),0,k(1),0,Spinor(2,1,1))

        F24 = ChainB1(Spinor(5,1,2),0,k(3),0,Spinor(2,1,1))

        F25 = ChainB0(Spinor(5,1,2),0,0,Spinor(2,1,1))

        F26 = ChainB0(Spinor(4,1,2),0,0,Spinor(6,-1,1))

        F27 = ChainV1(Spinor(5,1,2),0,k(2),0,Spinor(1,1,1))

        F28 = ChainV1(Spinor(5,1,2),0,k(3),0,Spinor(1,1,1))

        F29 = ChainB1(Spinor(5,1,2),0,k(3),0,Spinor(1,1,1))

        F30 = ChainB0(Spinor(5,1,2),0,0,Spinor(1,1,1))

        F31 = ChainV0(Spinor(5,1,2),0,0,Spinor(1,1,1))

        F32 = ChainB1(Spinor(5,1,2),0,k(2),0,Spinor(1,1,1))

        F33 = ChainV0(Spinor(2,-1,2),0,1,Spinor(5,1,2))

        F34 = ChainB0(Spinor(6,-1,1),1,0,Spinor(4,-1,1))

        F35 = -ChainV0(Spinor(5,1,2),0,0,Spinor(6,-1,1))

        F36 = -ChainV0(Spinor(5,1,2),0,0,Spinor(4,-1,1))

        F37 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(4,-1,1))

        F38 = -ChainB1(Spinor(2,-1,2),0,k(3),1,Spinor(5,1,2))

        F39 = ChainV0(Spinor(6,-1,1),1,0,Spinor(4,-1,1))

        F40 = -ChainB1(Spinor(2,-1,2),0,k(1),1,Spinor(5,1,2))

        F41 = ChainV1(Spinor(5,1,2),0,k(1),0,Spinor(6,-1,1))

        F42 = -ChainV0(Spinor(2,-1,2),0,0,Spinor(4,-1,1))

        F43 = ChainV1(Spinor(5,1,2),0,k(3),0,Spinor(6,-1,1))

        F44 = ChainB0(Spinor(5,1,2),0,0,Spinor(4,-1,1))

        F45 = ChainB0(Spinor(5,1,2),0,0,Spinor(6,-1,1))

        F46 = -ChainB0(Spinor(2,-1,2),0,1,Spinor(5,1,2))

        F47 = ChainV1(Spinor(2,-1,2),0,k(3),1,Spinor(5,1,2))

        F48 = ChainV1(Spinor(2,-1,2),0,k(1),1,Spinor(5,1,2))

        F49 = -ChainB1(Spinor(5,1,2),0,k(3),0,Spinor(6,-1,1))

        F50 = -ChainB1(Spinor(5,1,2),0,k(1),0,Spinor(6,-1,1))

        F51 = ChainB0(Spinor(1,1,1),1,0,Spinor(6,-1,1))

        F52 = ChainV1(Spinor(5,1,2),0,k(2),1,Spinor(4,1,2))

        F53 = ChainV0(Spinor(4,1,2),0,0,Spinor(1,1,1))

        F54 = ChainV0(Spinor(5,1,2),0,1,Spinor(4,1,2))

        F55 = ChainV1(Spinor(5,1,2),0,k(3),1,Spinor(4,1,2))

        F56 = ChainB1(Spinor(4,1,2),0,k(2),0,Spinor(1,1,1))

        F57 = ChainB1(Spinor(4,1,2),0,k(3),0,Spinor(1,1,1))

        F58 = ChainB0(Spinor(4,1,2),0,0,Spinor(1,1,1))

        F59 = -ChainV0(Spinor(1,1,1),1,0,Spinor(6,-1,1))

        F60 = ChainB0(Spinor(5,1,2),0,1,Spinor(4,1,2))

        F61 = ChainB1(Spinor(5,1,2),0,k(2),1,Spinor(4,1,2))

        F62 = ChainB1(Spinor(5,1,2),0,k(3),1,Spinor(4,1,2))

        F63 = ChainV1(Spinor(4,1,2),0,k(2),0,Spinor(1,1,1))

        F64 = ChainV1(Spinor(4,1,2),0,k(3),0,Spinor(1,1,1))

        F65 = ChainV0(Spinor(2,-1,2),0,0,Spinor(1,1,1))

        F66 = -ChainV0(Spinor(4,1,2),0,0,Spinor(3,-1,1))

        F67 = ChainB0(Spinor(4,1,2),0,0,Spinor(3,-1,1))

        F68 = ChainB0(Spinor(6,-1,1),1,0,Spinor(1,1,1))

        F69 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(1,1,1))

        F70 = -ChainV0(Spinor(6,-1,1),1,0,Spinor(1,1,1))

        F71 = ChainV1(Spinor(4,1,2),0,k(1),0,Spinor(3,-1,1))

        F72 = ChainV1(Spinor(4,1,2),0,k(2),0,Spinor(3,-1,1))

        F73 = ChainV1(Spinor(4,1,2),0,k(5),0,Spinor(3,-1,1))

        F74 = -ChainB1(Spinor(4,1,2),0,k(1),0,Spinor(3,-1,1))

        F75 = -ChainB1(Spinor(4,1,2),0,k(5),0,Spinor(3,-1,1))

        F76 = -ChainB1(Spinor(4,1,2),0,k(2),0,Spinor(3,-1,1))

        F77 = ChainB0(Spinor(6,-1,1),1,0,Spinor(3,-1,1))

        F78 = ChainV1(Spinor(2,-1,2),0,k(4),0,Spinor(1,1,1))

        F79 = -ChainV0(Spinor(5,1,2),0,0,Spinor(3,-1,1))

        F80 = ChainV1(Spinor(2,-1,2),0,k(3),0,Spinor(1,1,1))

        F81 = ChainV1(Spinor(2,-1,2),0,k(4),1,Spinor(5,1,2))

        F82 = -ChainV0(Spinor(3,-1,1),1,0,Spinor(1,1,1))

        F83 = ChainV0(Spinor(6,-1,1),1,0,Spinor(3,-1,1))

        F84 = -ChainB1(Spinor(2,-1,2),0,k(4),0,Spinor(1,1,1))

        F85 = ChainB0(Spinor(5,1,2),0,0,Spinor(3,-1,1))

        F86 = -ChainB1(Spinor(2,-1,2),0,k(3),0,Spinor(1,1,1))

        F87 = -ChainB1(Spinor(2,-1,2),0,k(4),1,Spinor(5,1,2))

        F88 = ChainB0(Spinor(3,-1,1),1,0,Spinor(1,1,1))

        F89 = ChainV1(Spinor(5,1,2),0,k(4),0,Spinor(1,1,1))

        F90 = ChainV0(Spinor(2,-1,2),0,1,Spinor(4,1,2))

        F91 = ChainB1(Spinor(5,1,2),0,k(4),0,Spinor(1,1,1))

        F92 = -ChainB0(Spinor(2,-1,2),0,1,Spinor(4,1,2))

        F93 = -ChainV0(Spinor(1,1,1),1,0,Spinor(3,-1,1))

        F94 = ChainV1(Spinor(2,-1,2),0,k(4),0,Spinor(6,-1,1))

        F95 = ChainB0(Spinor(1,1,1),1,0,Spinor(3,-1,1))

        F96 = ChainB1(Spinor(2,-1,2),0,k(4),0,Spinor(6,-1,1))

        F97 = ChainV1(Spinor(5,1,2),0,k(2),0,Spinor(6,-1,1))

        F98 = -ChainB1(Spinor(5,1,2),0,k(2),0,Spinor(6,-1,1))

        F99 = -ChainV0(Spinor(6,-1,1),1,1,Spinor(4,1,2))

        F100 = ChainB0(Spinor(6,-1,1),1,1,Spinor(4,1,2))

        F101 = ChainB0(Spinor(4,1,2),0,1,Spinor(5,1,2))

        F102 = ChainV0(Spinor(4,1,2),0,1,Spinor(5,1,2))

        F103 = -ChainB1(Spinor(5,1,2),0,k(4),0,Spinor(3,-1,1))

        F104 = ChainV1(Spinor(5,1,2),0,k(4),0,Spinor(3,-1,1))

        F105 = ChainV1(Spinor(4,1,2),0,k(3),1,Spinor(5,1,2))

        F106 = ChainB1(Spinor(4,1,2),0,k(3),1,Spinor(5,1,2))

        F107 = ChainV1(Spinor(2,-1,2),0,k(5),0,Spinor(1,1,1))

        F108 = -ChainB1(Spinor(2,-1,2),0,k(5),0,Spinor(1,1,1))

        F109 = ChainV0(Spinor(2,-1,2),0,1,Spinor(3,1,2))

        F110 = -ChainB1(Spinor(3,1,2),0,k(1),0,Spinor(6,-1,1))

        F111 = -ChainB1(Spinor(3,1,2),0,k(2),0,Spinor(6,-1,1))

        F112 = ChainV1(Spinor(2,-1,2),0,k(4),1,Spinor(3,1,2))

        F113 = ChainV1(Spinor(2,-1,2),0,k(5),1,Spinor(3,1,2))

        F114 = ChainV1(Spinor(3,1,2),0,k(1),0,Spinor(6,-1,1))

        F115 = ChainV1(Spinor(3,1,2),0,k(2),0,Spinor(6,-1,1))

        F116 = -ChainB1(Spinor(2,-1,2),0,k(4),1,Spinor(3,1,2))

        F117 = -ChainB0(Spinor(2,-1,2),0,1,Spinor(3,1,2))

        F118 = -ChainB1(Spinor(2,-1,2),0,k(5),1,Spinor(3,1,2))

        Sub28 = -(F41*F65) + F47*F68 + F50*F69 - F38*F70 + 
     &    F68*F81 - F70*F87 - F65*F97 + F69*F98

        Sub30 = -(F47*F68) - F50*F69 + F38*F70 - F68*F81 + 
     &    F70*F87 + F65*(F41 + F97) - F69*F98

        Sub33 = (F30 - F31)*(F2 + F9 + F94 + F96) + Sub30

        Sub34 = -((F30 - F31)*(F2 + F9 + F94 + F96)) + Sub28

        Sub36 = F45*F65 + F33*F68 + F35*F69 + F46*F70

        Sub41 = F68*(F47 + F81) + F70*(F38 + F87) + 
     &    F65*(F41 + F97) + F69*(F50 + F98)

        Sub50 = -(F2*(F30 + F31)) + F41*F65 + F47*F68 + 
     &    F50*F69 + F38*F70 + F68*F81 + F70*F87 - 
     &    (F30 + F31)*(F9 + F94 + F96) + F65*F97 + F69*F98

        Sub56 = (F33*F68 + F35*F69)*F71 - 
     &    F21*(F104*F69 - F12*(F28 + F89)) - 
     &    (F104*F68 - F77*(F28 + F89))*F90 - 
     &    F54*F95*(F2 + F9 + F94 + F96)

        Sub57 = (F33*F68 + F35*F69)*F74 - F2*F58*F79 - 
     &    F55*F69*F83 - F18*(F106*F68 - F26*(F28 + F89)) - 
     &    F58*F79*F9 + F83*(F28 + F89)*F92 - F58*F79*(F94 + F96)

        Sub59 = (F45*F65 + F46*F70)*F71 - F62*F65*F77 - 
     &    F2*F53*F85 + F77*F90*(F29 + F91) - 
     &    F12*(F105*F70 - F21*(F29 + F91)) - 
     &    F53*F85*(F9 + F94 + F96)

        Sub60 = (F45*F65 + F46*F70)*F74 - 
     &    F26*(F103*F65 - F18*(F29 + F91)) - 
     &    (F103*F70 - F83*(F29 + F91))*F92 - 
     &    F60*F93*(F2 + F9 + F94 + F96)

        Sub69 = (F112 + F113)*F68 + (F110 + F111)*F69

        Sub71 = (F114 + F115)*F65 + (F116 + F118)*F70

        Sub74 = F39*(F38 - F40) + F42*(-F41 + F43) + 
     &    F36*(F1 - F2 + F8 - F9)

        Sub76 = F34*(F47 - F48) + F37*(F49 - F50) + 
     &    F44*(F1 - F2 + F8 - F9)

        Sub81 = F59*(F61 - F62) + F35*(F63 - F64)

        Sub83 = F51*(F52 - F55) + F45*(F56 - F57)

        Sub94 = F12*(F27 + F32) + F108*F85 - F40*F88

        Sub95 = F18*(F27 + F32) + F107*F79 - F48*F82

        Sub101 = 1/SW2*
     &    (F33*F68 + F35*F69 - 4*CW2*(F33*F68 + F35*F69) + 
     &      4*SW2*(F45*F65 + F46*F70))

        Sub103 = F90*(F41 + F97) + (F38 + F87)*F99

        Sub104 = (F33*F68 + F35*F69)*F73 - 
     &    (F28 + F89)*(F12*F21 + F77*F90) + F95*Sub103

        Sub105 = (F33*F68 + F35*F69)*F75 + 
     &    F83*(F58*(F38 + F87) - (F28 + F89)*F92) + 
     &    F18*(-(F26*(F28 + F89)) + F58*(F41 + F97))

        Sub107 = -((F45*F65 + F46*F70)*F73) - 
     &    F77*(F53*(F47 + F81) - F29*F90) + 
     &    (F12*F21 + F77*F90)*F91 + F12*(F21*F29 - F53*(F50 + F98))

        Sub108 = F100*(F47 + F81) + F92*(F50 + F98)

        Sub109 = (F45*F65 + F46*F70)*F75 - 
     &    (F29 + F91)*(F18*F26 + F83*F92) + F93*Sub108

        Sub112 = 1/SW2*
     &    (F45*F65 + F33*F68 + 2*CW2*(F45*F65 + F33*F68) - 
     &      2*SW2*(F35*F69 + F46*F70))

        Sub114 = F54*(F78 + F80) + F53*(F47 + F81)

        Sub115 = (F45*F65 + F33*F68)*F72 + 
     &    (F2 + F94)*(F53*F85 + F54*F95) - F77*Sub114

        Sub116 = (F45*F65 + F33*F68)*F76 + 
     &    F79*(F2*F58 - F26*(F78 + F80)) - F26*(F47 + F81)*F82 + 
     &    F2*F60*F93 + (F58*F79 + F60*F93)*F94

        Sub118 = F85*(F84 + F86) + (F38 + F87)*F88

        Sub119 = (F35*F69 + F46*F70)*F72 + 
     &    (F53*F85 + F54*F95)*(F9 + F96) - F21*Sub118

        Sub120 = F60*(F84 + F86) + F58*(F38 + F87)

        Sub121 = (F35*F69 + F46*F70)*F76 + 
     &    (F58*F79 + F60*F93)*(F9 + F96) - F83*Sub120

        Sub124 = -(F50*F53) + F21*(F28 + F29 + F89)

        Sub125 = -(F41*F58) + F26*(F28 + F29 + F89)

        Sub126 = -(F18*F26*F91) + 
     &    F77*(F47*F53 - F90*(F28 + F29 + F89 + F91)) + 
     &    F83*(F38*F58 - (F28 + F29 + F89 + F91)*F92) + 
     &    F58*(F83*F87 + F18*F97) + F53*(F77*F81 + F12*F98) + 
     &    F95*Sub103 + F93*Sub108 - F12*(F21*F91 + Sub124) - 
     &    F18*Sub125 + (F73 + F75)*Sub36

        Sub128 = F54*(F78 + F80) + F53*(F47 + F81) - 
     &    F90*(F28 + F29 + F89 + F91)

        Sub129 = (F45*F65 + F33*F68)*(F71 + F72 - F73) - F77*Sub128

        Sub130 = -(F79*(F78 + F80)) - (F47 + F81)*F82 + 
     &    F18*(F28 + F29 + F89 + F91)

        Sub131 = (F45*F65 + F33*F68)*(F74 - F75 + F76) + F26*Sub130

        Sub133 = F12*(F28 + F29 + F89 + F91) - Sub118

        Sub134 = (F35*F69 + F46*F70)*(F71 + F72 - F73) + F21*Sub133

        Sub135 = F60*(F84 + F86) + F58*(F38 + F87) - 
     &    (F28 + F29 + F89 + F91)*F92

        Sub136 = (F35*F69 + F46*F70)*(F74 - F75 + F76) - F83*Sub135

        Sub139 = -(F79*(F78 + F80)) - (F47 + F81)*F82 + 
     &    F18*(F89 + F91)

        Sub140 = F90*(F28 + F29 + F89 + F91) - Sub114

        Sub141 = (F12*F21 + F18*F26)*(F28 + F29) + 
     &    F21*(F12*(F89 + F91) - Sub118) - F83*Sub135 + 
     &    F26*Sub139 + F77*Sub140 + 
     &    (F71 + F72 - F73 + F74 - F75 + F76)*Sub36

        Sub143 = F104*F68 - F77*(F28 + F29 + F89)

        Sub144 = F103*F70 - F83*(F28 + F29 + F89 + F91)

        Sub145 = F12*(F21*F29 - F105*F70) - F62*F65*F77 - 
     &    F2*F58*F79 - F55*F69*F83 - 
     &    F21*(F104*F69 - F12*(F28 + F89)) - 
     &    F26*(F103*F65 - F18*(F29 + F89)) - F58*F79*F9 - 
     &    F53*F85*(F2 + F9) + (F12*F21 + F77*F90)*F91 - 
     &    F18*(F106*F68 - F26*(F28 + F91)) - 
     &    (F58*F79 + F53*F85)*(F94 + F96) - 
     &    (F60*F93 + F54*F95)*(F2 + F9 + F94 + F96) - F90*Sub143 - 
     &    F92*Sub144 + (F71 + F74)*Sub36

        Sub146 = F79*(F21*F69 + F68*F90) + F85*(F26*F65 + F70*F92)

        Sub147 = F102*F18*F68 + F101*F12*F70 + F60*F65*F77 + 
     &    F54*F69*F83

        Sub149 = F58*F79 + F53*F85 + F60*F93 + F54*F95

        Sub150 = F79*(F2*F58 - F26*(F78 + F80)) - 
     &    F26*(F47 + F81)*F82 + F2*F60*F93 + 
     &    (F58*F79 + F60*F93)*F94 + 
     &    (F2 + F94)*(F53*F85 + F54*F95) - F77*Sub114 - 
     &    F21*Sub118 - F83*Sub120 + (F9 + F96)*Sub149 + 
     &    (F72 + F76)*Sub36

        Sub77(HelAll(Cha(4))) = Sub74 + (F33*F34 + F35*F37)*MCha(Cha(4))

        Sub78(HelAll(Cha(4))) = Sub76 + (F42*F45 + F39*F46)*MCha(Cha(4))

        Sub85(HelAll(Cha(4))) = Sub83 - (F45*F53 + F51*F54)*MCha(Cha(4))

        Sub86(HelAll(Cha(4))) = Sub81 - (F35*F58 + F59*F60)*MCha(Cha(4))


        Sub32(HelAll(Cha(3)),Cha(4)) = 
     &   F66*Sub28*Sub29(Cha(3),Cha(4)) + F67*Sub30*Sub31(Cha(3),Cha(4))

        Sub35(HelAll(Cha(3)),Cha(4)) = 
     &   F66*Sub33*Sub29(Cha(3),Cha(4)) + F67*Sub34*Sub31(Cha(3),Cha(4))

        Sub44(HelAll(Cha(3)),Cha(4)) = 
     &   F66*Sub42(Cha(3),Cha(4)) + F67*Sub43(Cha(3),Cha(4))

        Sub48(HelAll(Cha(3)),Cha(4)) = 
     &   F66*Sub28*Sub46(Cha(3),Cha(4)) + F67*Sub30*Sub47(Cha(3),Cha(4))

        Sub49(HelAll(Cha(3)),Cha(4)) = 
     &   F66*Sub33*Sub46(Cha(3),Cha(4)) + F67*Sub34*Sub47(Cha(3),Cha(4))

        Sub53(HelAll(Cha(3)),Cha(4)) = 
     &   F66*Sub51(Cha(3),Cha(4)) + F67*Sub52(Cha(3),Cha(4))

        Sub58(HelAll(Cha(3)),Cha(4)) = 
     &   Sub56*Sub54(Cha(3),Cha(4)) + Sub57*Sub55(Cha(3),Cha(4))

        Sub61(HelAll(Cha(3)),Cha(4)) = 
     &   Sub59*Sub54(Cha(3),Cha(4)) + Sub60*Sub55(Cha(3),Cha(4))

        Sub62(HelAll(Cha(3)),Cha(4)) = 
     &   1/SW2*(-4*(CW2*(F79*(F21*F69 + F68*F90)*MCha(Cha(3))) + 
     &         SW2*((F101*F12*F70 + F60*F65*F77)*MCha(Cha(4)))) + 
     &      F79*(F21*F69 + F68*F90)*MCha(Cha(3)))

        Sub63(HelAll(Cha(3)),Cha(4)) = 
     &   1/SW2*(4*SW2*(F85*(F26*F65 + F70*F92)*MCha(Cha(3))) + 
     &      (-1 + 4*CW2)*((F102*F18*F68 + F54*F69*F83)*MCha(Cha(4))))

        Sub64(HelAll(Cha(3)),Cha(4)) = 
     &   1/SW2*(-(4*CW2*Sub58(HelAll(Cha(3)),Cha(4))) + 
     &      SW2*(4*Sub61(HelAll(Cha(3)),Cha(4)) + 
     &         Sub54(Cha(3),Cha(4))*Sub62(HelAll(Cha(3)),Cha(4)) + 
     &         Sub55(Cha(3),Cha(4))*Sub63(HelAll(Cha(3)),Cha(4))) + 
     &      Sub58(HelAll(Cha(3)),Cha(4)))

        Sub99(HelAll(Cha(3)),Cha(4)) = 
     &   F67*Sub54(Cha(3),Cha(4)) + F66*Sub55(Cha(3),Cha(4))

        Sub100(HelAll(Cha(3)),Cha(4)) = 
     &   F66*Sub54(Cha(3),Cha(4)) + F67*Sub55(Cha(3),Cha(4))

        Sub102(HelAll(Cha(3)),Cha(4)) = 
     &   Sub101*(MCha(Cha(3))*Sub100(HelAll(Cha(3)),Cha(4)) - 
     &      MCha(Cha(4))*Sub99(HelAll(Cha(3)),Cha(4)))

        Sub106(HelAll(Cha(3)),Cha(4)) = 
     &   Sub104*Sub54(Cha(3),Cha(4)) + Sub105*Sub55(Cha(3),Cha(4))

        Sub110(HelAll(Cha(3)),Cha(4)) = 
     &   Sub107*Sub54(Cha(3),Cha(4)) - Sub109*Sub55(Cha(3),Cha(4))

        Sub111(HelAll(Cha(3)),Cha(4)) = 
     &   -(1/SW2*(-(4*CW2*Sub106(HelAll(Cha(3)),Cha(4))) - 
     &        SW2*(Sub102(HelAll(Cha(3)),Cha(4)) + 
     &           4*Sub110(HelAll(Cha(3)),Cha(4))) + 
     &        Sub106(HelAll(Cha(3)),Cha(4))))

        Sub113(HelAll(Cha(3)),Cha(4)) = 
     &   Sub112*(MCha(Cha(3))*Sub100(HelAll(Cha(3)),Cha(4)) - 
     &      MCha(Cha(4))*Sub99(HelAll(Cha(3)),Cha(4)))

        Sub117(HelAll(Cha(3)),Cha(4)) = 
     &   Sub115*Sub54(Cha(3),Cha(4)) + Sub116*Sub55(Cha(3),Cha(4))

        Sub122(HelAll(Cha(3)),Cha(4)) = 
     &   Sub119*Sub54(Cha(3),Cha(4)) + Sub121*Sub55(Cha(3),Cha(4))

        Sub123(HelAll(Cha(3)),Cha(4)) = 
     &   1/SW2*(2*CW2*Sub117(HelAll(Cha(3)),Cha(4)) + 
     &      SW2*(Sub113(HelAll(Cha(3)),Cha(4)) - 
     &         2*Sub122(HelAll(Cha(3)),Cha(4))) + 
     &      Sub117(HelAll(Cha(3)),Cha(4)))

        Sub127(HelAll(Cha(3)),Cha(4)) = 
     &   Sub126 - (F66 + F67)*Sub36*(MCha(Cha(3)) - MCha(Cha(4)))

        Sub132(HelAll(Cha(3)),Cha(4)) = 
     &   Sub129*Sub54(Cha(3),Cha(4)) + Sub131*Sub55(Cha(3),Cha(4))

        Sub137(HelAll(Cha(3)),Cha(4)) = 
     &   Sub134*Sub54(Cha(3),Cha(4)) + Sub136*Sub55(Cha(3),Cha(4))

        Sub138(HelAll(Cha(3)),Cha(4)) = 
     &   1/SW2*(2*CW2*Sub132(HelAll(Cha(3)),Cha(4)) + 
     &      SW2*(Sub113(HelAll(Cha(3)),Cha(4)) - 
     &         2*Sub137(HelAll(Cha(3)),Cha(4))) + 
     &      Sub132(HelAll(Cha(3)),Cha(4)))

        Sub142(HelAll(Cha(3)),Cha(4)) = 
     &   Sub141 + (F66 + F67)*Sub36*(MCha(Cha(3)) - MCha(Cha(4)))

        Sub148(HelAll(Cha(3)),Cha(4)) = 
     &   Sub145 + Sub146*MCha(Cha(3)) - Sub147*MCha(Cha(4))

        Sub151(HelAll(Cha(3)),Cha(4)) = 
     &   Sub150 + (F66 + F67)*Sub36*(MCha(Cha(3)) - MCha(Cha(4)))

        Sub165(HelAll(Cha(3)),Cha(4)) = 
     &   -(4*CW2*(IndexDelta(Cha(3),Cha(4))*Sub142(HelAll(Cha(3)),Cha(4)))/
     &        S34) - Sub138(HelAll(Cha(3)),Cha(4))/
     &     (MZ2 - S34 - cI*MZ*WZ)

        Sub176(HelAll(Cha(3)),Cha(4)) = 
     &   -((SA*Sub44(HelAll(Cha(3)),Cha(4)))/(MHH2C - S34)) + 
     &    (CA*Sub53(HelAll(Cha(3)),Cha(4)))/(Mh02C - S34)


        LOOP(Sfe7, 1,2,1)

        Sub66(HelAll(Cha(3)),Gen(1),Sfe7) = 
     &   (2*(1/2.D0*(F7*S2B*Sub65(Cha(3),Gen(1),Sfe7)) + 
     &        Sqrt(2.D0)*(CB2*F3*Mf(3,Gen(1))*USf(Sfe7,1,4,Gen(1))*
     &           VCha(Cha(3),2))))/(CB2*S2B)

        Sub67(HelAll(Cha(3)),Gen(1),Sfe7) = 
     &   (2*(Sqrt(2.D0)*(F7*SB2*Sub65(Cha(3),Gen(1),Sfe7)) + 
     &        F3*S2B*Mf(3,Gen(1))*USf(Sfe7,1,4,Gen(1))*VCha(Cha(3),2)))/
     &    (S2B*SB2)

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub91(HelAll(Cha(4)),Gen(6),Sfe7) = 
     &   (2*(1/2.D0*(F26*S2B*Sub90(Cha(4),Gen(6),Sfe7)) + 
     &        Sqrt(2.D0)*(F21*SB2*Mf(4,Gen(6))*UCha(Cha(4),2)*
     &           USf(Sfe7,1,3,Gen(6)))))/(S2B*SB2)

        Sub92(HelAll(Cha(4)),Gen(6),Sfe7) = 
     &   (2*(Sqrt(2.D0)*(CB2*F26*Sub90(Cha(4),Gen(6),Sfe7)) + 
     &        F21*S2B*Mf(4,Gen(6))*UCha(Cha(4),2)*USf(Sfe7,1,3,Gen(6))))/
     &    (CB2*S2B)

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub87(HelAll(Cha(4)),Gen(2),Gen(6),Sfe7) = 
     &   (2*(1/2.D0*(S2B*Sub84(Cha(4),Gen(2),Sfe7)*
     &           Sub85(HelAll(Cha(4)))) + 
     &        Sqrt(2.D0)*(SB2*Mf(4,Gen(6))*Sub86(HelAll(Cha(4)))*
     &           UCha(Cha(4),2)*USf(Sfe7,1,3,Gen(2)))))/(S2B*SB2)

        Sub88(HelAll(Cha(4)),Gen(2),Gen(6),Sfe7) = 
     &   (2*(Sqrt(2.D0)*(CB2*Sub84(Cha(4),Gen(2),Sfe7)*
     &           Sub85(HelAll(Cha(4)))) + 
     &        S2B*Mf(4,Gen(6))*Sub86(HelAll(Cha(4)))*UCha(Cha(4),2)*
     &         USf(Sfe7,1,3,Gen(2))))/(CB2*S2B)

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub15(HelAll(Cha(4)),Gen(5),Gen(6),Sfe7) = 
     &   (2*(1/Sqrt(2.D0)*(F21*S2B*Mf(4,Gen(6))*UCha(Cha(4),2)*
     &           USf(Sfe7,1,3,Gen(5))) + 
     &        CB2*F26*Sub14(Cha(4),Gen(5),Sfe7)))/(CB2*S2B)

        Sub17(HelAll(Cha(4)),Gen(5),Gen(6),Sfe7) = 
     &   (2*(1/Sqrt(2.D0)*(F26*S2B*Sub14(Cha(4),Gen(5),Sfe7)) + 
     &        2*F21*SB2*Mf(4,Gen(6))*UCha(Cha(4),2)*USf(Sfe7,1,3,Gen(5)))
     &      )/(S2B*SB2)

        Sub22(HelAll(Cha(4)),Gen(5),Gen(6),Sfe7) = 
     &   (2*(1/2.D0*(F26*S2B*Sub14(Cha(4),Gen(5),Sfe7)) + 
     &        Sqrt(2.D0)*(F21*SB2*Mf(4,Gen(6))*UCha(Cha(4),2)*
     &           USf(Sfe7,1,3,Gen(5)))))/(S2B*SB2)

        Sub24(HelAll(Cha(4)),Gen(5),Gen(6),Sfe7) = 
     &   (2*(Sqrt(2.D0)*(CB2*F26*Sub14(Cha(4),Gen(5),Sfe7)) + 
     &        F21*S2B*Mf(4,Gen(6))*UCha(Cha(4),2)*USf(Sfe7,1,3,Gen(5))))/
     &    (CB2*S2B)

        ENDLOOP(Sfe7)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub21(HelAll(Gen(1)),Gen(5),Sfe7,Sfe8) = 
     &   (F27 - F28)*USf(Sfe8,1,3,Gen(1))*USfC(Sfe7,1,3,Gen(5)) + 
     &    (-F29 + F32)*USf(Sfe8,2,3,Gen(1))*USfC(Sfe7,2,3,Gen(5))

        Sub25(HelAll(Gen(1)),Gen(5),Sfe7,Sfe8) = 
     &   F31*Mino3*USf(Sfe8,2,3,Gen(1))*USfC(Sfe7,1,3,Gen(5)) + 
     &    F30*Mino3C*USf(Sfe8,1,3,Gen(1))*USfC(Sfe7,2,3,Gen(5))

        Sub23(HelAll(Gen(1)),Gen(5),Sfe7,Sfe8) = 
     &   Sub21(HelAll(Gen(1)),Gen(5),Sfe7,Sfe8) - 
     &    Sub25(HelAll(Gen(1)),Gen(5),Sfe7,Sfe8)

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub7(HelAll(Gen(1)),Gen(6),Sfe7,Sfe8) = 
     &   (F15 - F16)*USf(Sfe7,2,4,Gen(6))*USf(Sfe8,1,3,Gen(1)) + 
     &    (F13 - F14)*USf(Sfe7,1,4,Gen(6))*USf(Sfe8,2,3,Gen(1))

        Sub9(HelAll(Gen(1)),Gen(6),Sfe7,Sfe8) = 
     &   Sub7(HelAll(Gen(1)),Gen(6),Sfe7,Sfe8) + 
     &    F11*Mino3C*USf(Sfe7,1,4,Gen(6))*USf(Sfe8,1,3,Gen(1)) + 
     &    F17*Mino3*USf(Sfe7,2,4,Gen(6))*USf(Sfe8,2,3,Gen(1))

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub13(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8) = 
     &   (F23 - F24)*USfC(Sfe7,2,3,Gen(5))*USfC(Sfe8,1,4,Gen(2)) + 
     &    (-F19 + F20)*USfC(Sfe7,1,3,Gen(5))*USfC(Sfe8,2,4,Gen(2))

        Sub18(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8) = 
     &   F22*Mino3*USfC(Sfe7,1,3,Gen(5))*USfC(Sfe8,1,4,Gen(2)) + 
     &    F25*Mino3C*USfC(Sfe7,2,3,Gen(5))*USfC(Sfe8,2,4,Gen(2))

        Sub16(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8) = 
     &   Sub13(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8) - 
     &    Sub18(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8)

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub3(HelAll(Gen(2)),Gen(6),Sfe7,Sfe8) = 
     &   (F1 - F2)*USf(Sfe7,1,4,Gen(6))*USfC(Sfe8,1,4,Gen(2)) + 
     &    (F8 - F9)*USf(Sfe7,2,4,Gen(6))*USfC(Sfe8,2,4,Gen(2))

        Sub4(HelAll(Gen(2)),Gen(6),Sfe7,Sfe8) = 
     &   Sub3(HelAll(Gen(2)),Gen(6),Sfe7,Sfe8) + 
     &    F10*Mino3*USf(Sfe7,2,4,Gen(6))*USfC(Sfe8,1,4,Gen(2)) + 
     &    F5*Mino3C*USf(Sfe7,1,4,Gen(6))*USfC(Sfe8,2,4,Gen(2))

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe7, 1,2,1)

        Sub68(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7) = 
     &   F6*Sub2(Cha(4),Gen(5),Sfe7)*Sub66(HelAll(Cha(3)),Gen(1),Sfe7) + 
     &    F4*Mf(3,Gen(5))*Sub67(HelAll(Cha(3)),Gen(1),Sfe7)*
     &     USfC(Sfe7,1,4,Gen(5))*VChaC(Cha(4),2)

        Sub72(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7) = 
     &   F6*(Sub71 + F117*F70*MCha(Cha(3)))*Mf(3,Gen(1))*
     &     Sub2(Cha(4),Gen(5),Sfe7)*USf(Sfe7,1,4,Gen(5))*VCha(Cha(3),2) + 
     &    F4*(Sub69 + F109*F68*MCha(Cha(3)))*Mf(3,Gen(5))*
     &     Sub70(Cha(3),Gen(5),Sfe7)*USfC(Sfe7,1,4,Gen(5))*VChaC(Cha(4),2)

        Sub73(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7) = 
     &   Sqrt(2.D0)*Sub72(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7)/
     &      (CB*SB) + (F6*(Sub69 + F109*F68*MCha(Cha(3)))*
     &       Sub2(Cha(4),Gen(5),Sfe7)*Sub70(Cha(3),Gen(5),Sfe7))/CB2 + 
     &    (2*F4*(Sub71 + F117*F70*MCha(Cha(3)))*Mf(3,Gen(1))*
     &       Mf(3,Gen(5))*USf(Sfe7,1,4,Gen(5))*USfC(Sfe7,1,4,Gen(5))*
     &       VCha(Cha(3),2)*VChaC(Cha(4),2))/SB2

        Sub79(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7) = 
     &   F3*Mf(3,Gen(1))*Sub75(Cha(4),Gen(1),Sfe7)*Sub77(HelAll(Cha(4)))*
     &     USf(Sfe7,1,4,Gen(1))*VCha(Cha(3),2) + 
     &    F7*Mf(3,Gen(5))*Sub65(Cha(3),Gen(1),Sfe7)*Sub78(HelAll(Cha(4)))*
     &     USfC(Sfe7,1,4,Gen(1))*VChaC(Cha(4),2)

        Sub80(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7) = 
     &   (8*(1/2.D0*(1/Sqrt(2.D0)*
     &            (S2B**2*Sub79(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7))+
     &             F7*S2B*SB2*Sub65(Cha(3),Gen(1),Sfe7)*
     &            Sub75(Cha(4),Gen(1),Sfe7)*Sub77(HelAll(Cha(4)))) + 
     &        CB2*F3*S2B*Mf(3,Gen(1))*Mf(3,Gen(5))*Sub78(HelAll(Cha(4)))*
     &         USf(Sfe7,1,4,Gen(1))*USfC(Sfe7,1,4,Gen(1))*VCha(Cha(3),2)*
     &         VChaC(Cha(4),2)))/S2B**3

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub89(HelAll(Cha(3)),Cha(4),Gen(2),Gen(6),Sfe7) = 
     &   F18*Sub82(Cha(3),Gen(2),Sfe7)*
     &     Sub87(HelAll(Cha(4)),Gen(2),Gen(6),Sfe7) + 
     &    F12*Mf(4,Gen(2))*Sub88(HelAll(Cha(4)),Gen(2),Gen(6),Sfe7)*
     &     UChaC(Cha(3),2)*USfC(Sfe7,1,3,Gen(2))

        Sub93(HelAll(Cha(3)),Cha(4),Gen(2),Gen(6),Sfe7) = 
     &   F18*Sub82(Cha(3),Gen(2),Sfe7)*Sub91(HelAll(Cha(4)),Gen(6),Sfe7) + 
     &    F12*Mf(4,Gen(2))*Sub92(HelAll(Cha(4)),Gen(6),Sfe7)*
     &     UChaC(Cha(3),2)*USfC(Sfe7,1,3,Gen(2))

        Sub97(HelAll(Cha(3)),Cha(4),Gen(2),Gen(6),Sfe7) = 
     &   Sub95*Sub91(HelAll(Cha(4)),Gen(6),Sfe7)*
     &     Sub96(Cha(3),Gen(6),Sfe7) + 
     &    Sub94*Mf(4,Gen(2))*Sub92(HelAll(Cha(4)),Gen(6),Sfe7)*
     &     UChaC(Cha(3),2)*USfC(Sfe7,1,3,Gen(6))

        ENDLOOP(Sfe7)


        Sub163(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   Sub111(HelAll(Cha(3)),Cha(4))/
     &     (Sub160(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &       (Mf2(3,Gen(1)) + Sub161(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))
     &      - Sub123(HelAll(Cha(3)),Cha(4))/
     &     (T15*(Mf2(4,Gen(2)) + 
     &         Sub162(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))

        Sub167(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -(Sub127(HelAll(Cha(3)),Cha(4))/
     &       (Mf2(3,Gen(1)) + Sub161(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))
     &      - Sub148(HelAll(Cha(3)),Cha(4))/
     &     (Mf2(3,Gen(1)) - Sub166(Cha(3),Cha(4),Gen(1)))

        Sub168(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -(Sub151(HelAll(Cha(3)),Cha(4))/
     &       (T15*(Mf2(4,Gen(2)) + 
     &           Sub162(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))) - 
     &    (2*Sub167(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))/
     &     Sub160(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))

        Sub169(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -(Sub32(HelAll(Cha(3)),Cha(4))/
     &       (Mf2(3,Gen(1)) + Sub161(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))
     &      + Sub35(HelAll(Cha(3)),Cha(4))/
     &     (Mf2(3,Gen(1)) - Sub166(Cha(3),Cha(4),Gen(1)))

        Sub170(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -(Sub163(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))/
     &       (MZ2 - S34 - cI*MZ*WZ)) - 
     &    Sub165(HelAll(Cha(3)),Cha(4))/
     &     (T15*(Mf2(4,Gen(2)) - Sub164(Gen(1),Gen(2),Gen(5))))

        Sub171(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -((3*Sqrt(2.D0))/(MW*SW2)*
     &       (Mf(3,Gen(1))*Sub169(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),
     &           Gen(6)))/
     &        ((S34 + GaugeXi(2)*(-MZ2 + cI*MZ*WZ))*
     &          Sub160(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))) - 
     &    2/CW2*Sub170(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) + 
     &    (8*IndexDelta(Cha(3),Cha(4))*
     &       Sub168(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))/S34

        Sub174(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -(Sub48(HelAll(Cha(3)),Cha(4))/
     &       (Mf2(3,Gen(1)) + Sub161(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))
     &      + Sub49(HelAll(Cha(3)),Cha(4))/
     &     (Mf2(3,Gen(1)) - Sub166(Cha(3),Cha(4),Gen(1)))

        Sub175(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -(Sub41/
     &       (Mf2(3,Gen(1)) + Sub161(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))
     &      - Sub50/(Mf2(3,Gen(1)) - Sub166(Cha(3),Cha(4),Gen(1)))

        Sub177(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   (-2*CB2*Sub174(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))/
     &     (S2B*(MA02C - S34)) - 
     &    (Sub175(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &       Sub176(HelAll(Cha(3)),Cha(4)))/SB

        Sub178(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   (3*Sqrt(2.D0))/(MW*SW2)*
     &     (Mf(3,Gen(1))*Sub177(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),
     &        Gen(6))) - 2/CW2*
     &     Sub64(HelAll(Cha(3)),Cha(4))/
     &      ((MZ2 - S34 - cI*MZ*WZ)*
     &        (Mf2(3,Gen(1)) - Sub166(Cha(3),Cha(4),Gen(1))))

        Sub179(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   IndexDelta(Gen(2),Gen(6))*
     &     Sub178(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) - 
     &    (8*(F66 + F67)*Sub36*IndexDelta(Cha(3),Cha(4))*
     &       (MCha(Cha(3)) - MCha(Cha(4)))*Sub37(Gen(2),Gen(6))*
     &       Sub45(Cha(3),Cha(4),Gen(1)))/
     &     (S34**2*(Mf2(3,Gen(1)) - Sub166(Cha(3),Cha(4),Gen(1))))

        Sub180(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   (Sub102(HelAll(Cha(3)),Cha(4))*Sub39(Cha(3),Cha(4),Gen(5)))/
     &     (Sub160(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &       (Mf2(3,Gen(1)) + Sub161(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))
     &      - (Sub113(HelAll(Cha(3)),Cha(4))*Sub40(Cha(3),Cha(4),Gen(2)))/
     &     (T15*(Mf2(4,Gen(2)) + 
     &         Sub162(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))

        Sub181(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -((Sub113(HelAll(Cha(3)),Cha(4))*Sub38(Gen(1),Gen(2),Gen(5),Gen(6)))/
     &       (T15*(Mf2(4,Gen(2)) - Sub164(Gen(1),Gen(2),Gen(5))))) + 
     &    (Sub102(HelAll(Cha(3)),Cha(4))*Sub45(Cha(3),Cha(4),Gen(1)))/
     &     (Sub160(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &       (Mf2(3,Gen(1)) - Sub166(Cha(3),Cha(4),Gen(1))))

        Sub182(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   Sub180(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) - 
     &    Sub181(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))

        Sub183(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   IndexDelta(Gen(2),Gen(6))*
     &     Sub171(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) + 
     &    Sub179(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))/
     &     Sub160(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) - 
     &    (4*(F66 + F67)*Sub36*IndexDelta(Cha(3),Cha(4))*
     &       (MCha(Cha(3)) - MCha(Cha(4)))*
     &       Sub173(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*Sub37(Gen(2),Gen(6))
     &       )/S34**2

        Sub184(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -(1/CW2*(Sub182(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &          Sub98(Gen(2),Gen(6)))/
     &        ((MZ2 - S34 - cI*MZ*WZ)*
     &          (S34 + GaugeXi(2)*(-MZ2 + cI*MZ*WZ)))) + 
     &    Sub183(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))


        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub5(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7,Sfe8) = 
     &   F3*F6*Mf(3,Gen(1))*Sub2(Cha(4),Gen(5),Sfe7)*USf(Sfe8,1,4,Gen(1))*
     &     VCha(Cha(3),2) + F4*F7*Mf(3,Gen(5))*Sub1(Cha(3),Gen(1),Sfe8)*
     &     USfC(Sfe7,1,4,Gen(5))*VChaC(Cha(4),2)

        Sub6(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7,Sfe8) = 
     &   (8*(1/2.D0*(1/Sqrt(2.D0)*
     &            (S2B**2*Sub5(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7,
     &               Sfe8)) + 
     &           F6*F7*S2B*SB2*Sub1(Cha(3),Gen(1),Sfe8)*
     &            Sub2(Cha(4),Gen(5),Sfe7)) + 
     &        CB2*F3*F4*S2B*Mf(3,Gen(1))*Mf(3,Gen(5))*
     &         USf(Sfe8,1,4,Gen(1))*USfC(Sfe7,1,4,Gen(5))*VCha(Cha(3),2)*
     &         VChaC(Cha(4),2)))/S2B**3

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub26(HelAll(Cha(4)),Gen(1),Gen(5),Gen(6),Sfe7,Sfe8) = 
     &   Sub24(HelAll(Cha(4)),Gen(5),Gen(6),Sfe7)*
     &    (Sub21(HelAll(Gen(1)),Gen(5),Sfe7,Sfe8) - 
     &      Sub25(HelAll(Gen(1)),Gen(5),Sfe7,Sfe8))

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub19(HelAll(Cha(4)),Gen(2),Gen(5),Gen(6),Sfe7,Sfe8) = 
     &   Sub17(HelAll(Cha(4)),Gen(5),Gen(6),Sfe7)*
     &    (Sub13(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8) - 
     &      Sub18(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8))

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

#include "real_contains.h"

        end

