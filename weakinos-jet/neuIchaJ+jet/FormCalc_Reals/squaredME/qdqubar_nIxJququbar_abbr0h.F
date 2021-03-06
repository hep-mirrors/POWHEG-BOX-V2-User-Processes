#if 0
* qdqubar_nIxJququbar_abbr0h.F
* abbreviations for {F[4, {Gen(1), Col1}], -F[3, {Gen(2), Col2}]} -> {F[11, {Neu(3)}], F[12, {Cha(4)}], F[3, {Gen(5), Col5}], -F[3, {Gen(6), Col6}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 23-Oct-2017 10:56
#endif

#include "qdqubar_nIxJququbar_vars.h"
#include "real_inline.h"
#include "real_contains.h"


        subroutine qdqubar_nIxJququbar_abbr0h
        implicit none

#include "qdqubar_nIxJququbar_vars.h"
#include "real_inline.h"

        F1 = ChainV1(Spinor(2,-1,2),0,k(5),0,Spinor(1,1,1))

        F2 = -ChainV0(Spinor(3,1,2),0,0,Spinor(6,-1,1))

        F3 = ChainB0(Spinor(4,1,2),0,0,Spinor(5,-1,1))

        F4 = ChainV1(Spinor(2,-1,2),0,k(4),0,Spinor(1,1,1))

        F5 = ChainB0(Spinor(3,1,2),0,0,Spinor(6,-1,1))

        F6 = -ChainV0(Spinor(4,1,2),0,0,Spinor(5,-1,1))

        F7 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(1,1,1))

        F8 = ChainV0(Spinor(2,-1,2),0,0,Spinor(1,1,1))

        F9 = -ChainB1(Spinor(2,-1,2),0,k(4),0,Spinor(1,1,1))

        F10 = -ChainB1(Spinor(2,-1,2),0,k(5),0,Spinor(1,1,1))

        F11 = ChainV1(Spinor(2,-1,2),0,k(4),0,Spinor(6,-1,1))

        F12 = ChainV1(Spinor(2,-1,2),0,k(1),0,Spinor(6,-1,1))

        F13 = ChainB0(Spinor(5,1,2),0,0,Spinor(3,-1,1))

        F14 = ChainV0(Spinor(4,1,2),0,0,Spinor(1,1,1))

        F15 = -ChainV0(Spinor(5,1,2),0,0,Spinor(3,-1,1))

        F16 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(6,-1,1))

        F17 = -ChainV0(Spinor(2,-1,2),0,0,Spinor(6,-1,1))

        F18 = ChainB1(Spinor(2,-1,2),0,k(1),0,Spinor(6,-1,1))

        F19 = ChainB1(Spinor(2,-1,2),0,k(4),0,Spinor(6,-1,1))

        F20 = ChainB0(Spinor(4,1,2),0,0,Spinor(1,1,1))

        F21 = ChainB0(Spinor(6,1,2),0,0,Spinor(1,1,1))

        F22 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(4,-1,1))

        F23 = -ChainV0(Spinor(2,-1,2),0,0,Spinor(4,-1,1))

        F24 = ChainB1(Spinor(6,1,2),0,k(2),0,Spinor(1,1,1))

        F25 = ChainB1(Spinor(6,1,2),0,k(4),0,Spinor(1,1,1))

        F26 = ChainV1(Spinor(6,1,2),0,k(2),0,Spinor(1,1,1))

        F27 = ChainV1(Spinor(6,1,2),0,k(4),0,Spinor(1,1,1))

        F28 = ChainV0(Spinor(6,1,2),0,0,Spinor(1,1,1))

        F29 = ChainV0(Spinor(5,1,2),0,0,Spinor(2,1,1))

        F30 = ChainV1(Spinor(5,1,2),0,k(1),0,Spinor(2,1,1))

        F31 = ChainV1(Spinor(5,1,2),0,k(4),0,Spinor(2,1,1))

        F32 = ChainB1(Spinor(5,1,2),0,k(1),0,Spinor(2,1,1))

        F33 = ChainB1(Spinor(5,1,2),0,k(4),0,Spinor(2,1,1))

        F34 = ChainB0(Spinor(5,1,2),0,0,Spinor(2,1,1))

        F35 = ChainV1(Spinor(5,1,2),0,k(2),0,Spinor(1,1,1))

        F36 = ChainV1(Spinor(5,1,2),0,k(4),0,Spinor(1,1,1))

        F37 = ChainB0(Spinor(5,1,2),0,0,Spinor(1,1,1))

        F38 = ChainV0(Spinor(5,1,2),0,0,Spinor(1,1,1))

        F39 = ChainB1(Spinor(5,1,2),0,k(2),0,Spinor(1,1,1))

        F40 = ChainB1(Spinor(5,1,2),0,k(4),0,Spinor(1,1,1))

        F41 = -ChainB1(Spinor(5,1,2),0,k(1),0,Spinor(6,-1,1))

        F42 = ChainB0(Spinor(3,1,2),0,0,Spinor(1,1,1))

        F43 = ChainV1(Spinor(5,1,2),0,k(3),0,Spinor(6,-1,1))

        F44 = ChainV1(Spinor(5,1,2),0,k(1),0,Spinor(6,-1,1))

        F45 = -ChainB1(Spinor(5,1,2),0,k(3),0,Spinor(6,-1,1))

        F46 = ChainV0(Spinor(3,1,2),0,0,Spinor(1,1,1))

        F47 = ChainV1(Spinor(2,-1,2),0,k(3),0,Spinor(6,-1,1))

        F48 = ChainB1(Spinor(2,-1,2),0,k(3),0,Spinor(6,-1,1))

        F49 = -ChainB0(Spinor(2,-1,2),0,1,Spinor(5,1,2))

        F50 = ChainV0(Spinor(6,-1,1),1,0,Spinor(4,-1,1))

        F51 = ChainB0(Spinor(5,1,2),0,0,Spinor(6,-1,1))

        F52 = ChainV1(Spinor(2,-1,2),0,k(1),1,Spinor(5,1,2))

        F53 = ChainB0(Spinor(6,-1,1),1,0,Spinor(4,-1,1))

        F54 = ChainB0(Spinor(5,1,2),0,0,Spinor(4,-1,1))

        F55 = ChainV1(Spinor(2,-1,2),0,k(3),1,Spinor(5,1,2))

        F56 = ChainV0(Spinor(2,-1,2),0,1,Spinor(5,1,2))

        F57 = -ChainV0(Spinor(5,1,2),0,0,Spinor(6,-1,1))

        F58 = -ChainV0(Spinor(5,1,2),0,0,Spinor(4,-1,1))

        F59 = -ChainB1(Spinor(2,-1,2),0,k(1),1,Spinor(5,1,2))

        F60 = -ChainB1(Spinor(2,-1,2),0,k(3),1,Spinor(5,1,2))

        F61 = ChainB0(Spinor(6,-1,1),1,0,Spinor(2,1,1))

        F62 = -ChainV0(Spinor(4,1,2),0,0,Spinor(6,-1,1))

        F63 = ChainV0(Spinor(5,1,2),0,1,Spinor(4,1,2))

        F64 = -ChainB1(Spinor(4,1,2),0,k(1),0,Spinor(6,-1,1))

        F65 = -ChainB1(Spinor(4,1,2),0,k(3),0,Spinor(6,-1,1))

        F66 = ChainV1(Spinor(5,1,2),0,k(1),1,Spinor(4,1,2))

        F67 = ChainV1(Spinor(5,1,2),0,k(3),1,Spinor(4,1,2))

        F68 = -ChainV0(Spinor(6,-1,1),1,0,Spinor(2,1,1))

        F69 = ChainB0(Spinor(5,1,2),0,1,Spinor(4,1,2))

        F70 = ChainB0(Spinor(4,1,2),0,0,Spinor(6,-1,1))

        F71 = ChainV1(Spinor(4,1,2),0,k(1),0,Spinor(6,-1,1))

        F72 = ChainB1(Spinor(5,1,2),0,k(1),1,Spinor(4,1,2))

        F73 = ChainV1(Spinor(4,1,2),0,k(3),0,Spinor(6,-1,1))

        F74 = ChainB1(Spinor(5,1,2),0,k(3),1,Spinor(4,1,2))

        F75 = ChainV1(Spinor(5,1,2),0,k(2),0,Spinor(6,-1,1))

        F76 = -ChainV0(Spinor(2,-1,2),0,0,Spinor(3,-1,1))

        F77 = -ChainB1(Spinor(5,1,2),0,k(2),0,Spinor(6,-1,1))

        F78 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(3,-1,1))

        F79 = ChainV1(Spinor(6,1,2),0,k(3),0,Spinor(1,1,1))

        F80 = ChainB1(Spinor(6,1,2),0,k(3),0,Spinor(1,1,1))

        F81 = -ChainV0(Spinor(6,-1,1),1,0,Spinor(1,1,1))

        F82 = ChainV1(Spinor(4,1,2),0,k(2),0,Spinor(6,-1,1))

        F83 = ChainB1(Spinor(5,1,2),0,k(2),1,Spinor(4,1,2))

        F84 = ChainB0(Spinor(6,-1,1),1,0,Spinor(1,1,1))

        F85 = -ChainB1(Spinor(4,1,2),0,k(2),0,Spinor(6,-1,1))

        F86 = ChainV1(Spinor(5,1,2),0,k(2),1,Spinor(4,1,2))

        F87 = ChainB0(Spinor(6,-1,1),1,0,Spinor(3,-1,1))

        F88 = ChainV0(Spinor(6,-1,1),1,0,Spinor(3,-1,1))

        F89 = -ChainB1(Spinor(2,-1,2),0,k(4),1,Spinor(5,1,2))

        F90 = ChainV1(Spinor(2,-1,2),0,k(4),1,Spinor(5,1,2))

        F91 = ChainB0(Spinor(3,-1,1),1,0,Spinor(6,-1,1))

        F92 = ChainV0(Spinor(3,-1,1),1,0,Spinor(6,-1,1))

        F93 = ChainV0(Spinor(5,1,2),0,1,Spinor(3,1,2))

        F94 = -ChainB1(Spinor(3,1,2),0,k(2),0,Spinor(6,-1,1))

        F95 = -ChainB1(Spinor(3,1,2),0,k(4),0,Spinor(6,-1,1))

        F96 = ChainV1(Spinor(5,1,2),0,k(2),1,Spinor(3,1,2))

        F97 = ChainV1(Spinor(5,1,2),0,k(4),1,Spinor(3,1,2))

        F98 = ChainV1(Spinor(3,1,2),0,k(4),0,Spinor(6,-1,1))

        F99 = ChainB0(Spinor(5,1,2),0,1,Spinor(3,1,2))

        F100 = ChainB1(Spinor(5,1,2),0,k(2),1,Spinor(3,1,2))

        F101 = ChainV1(Spinor(3,1,2),0,k(2),0,Spinor(6,-1,1))

        F102 = ChainB1(Spinor(5,1,2),0,k(4),1,Spinor(3,1,2))

        F103 = -ChainV0(Spinor(4,1,2),0,0,Spinor(3,-1,1))

        F104 = ChainB0(Spinor(4,1,2),0,0,Spinor(3,-1,1))

        F105 = ChainV1(Spinor(4,1,2),0,k(5),0,Spinor(3,-1,1))

        F106 = ChainB0(Spinor(1,1,1),1,0,Spinor(3,-1,1))

        F107 = -ChainV0(Spinor(6,-1,1),1,1,Spinor(4,1,2))

        F108 = ChainV0(Spinor(2,-1,2),0,1,Spinor(4,1,2))

        F109 = ChainV1(Spinor(5,1,2),0,k(3),0,Spinor(1,1,1))

        F110 = -ChainB1(Spinor(4,1,2),0,k(5),0,Spinor(3,-1,1))

        F111 = -ChainB0(Spinor(2,-1,2),0,1,Spinor(4,1,2))

        F112 = ChainV1(Spinor(4,1,2),0,k(1),0,Spinor(3,-1,1))

        F113 = ChainV1(Spinor(5,1,2),0,k(4),0,Spinor(3,-1,1))

        F114 = ChainV0(Spinor(4,1,2),0,1,Spinor(5,1,2))

        F115 = -ChainB1(Spinor(4,1,2),0,k(1),0,Spinor(3,-1,1))

        F116 = ChainB1(Spinor(4,1,2),0,k(3),1,Spinor(5,1,2))

        F117 = -ChainV0(Spinor(1,1,1),1,0,Spinor(6,-1,1))

        F118 = ChainB0(Spinor(1,1,1),1,0,Spinor(6,-1,1))

        F119 = ChainV1(Spinor(2,-1,2),0,k(4),0,Spinor(3,-1,1))

        F120 = ChainV1(Spinor(2,-1,2),0,k(3),0,Spinor(1,1,1))

        F121 = ChainV1(Spinor(2,-1,2),0,k(3),1,Spinor(4,1,2))

        F122 = ChainV1(Spinor(4,1,2),0,k(2),0,Spinor(3,-1,1))

        F123 = -ChainB1(Spinor(4,1,2),0,k(2),0,Spinor(3,-1,1))

        F124 = -ChainB1(Spinor(2,-1,2),0,k(3),1,Spinor(4,1,2))

        F125 = -ChainB1(Spinor(2,-1,2),0,k(5),1,Spinor(4,1,2))

        F126 = ChainV1(Spinor(2,-1,2),0,k(5),1,Spinor(4,1,2))

        F127 = ChainV0(Spinor(2,-1,2),0,1,Spinor(3,1,2))

        F128 = -ChainB1(Spinor(3,1,2),0,k(1),0,Spinor(6,-1,1))

        F129 = ChainV1(Spinor(2,-1,2),0,k(4),1,Spinor(3,1,2))

        F130 = ChainV1(Spinor(2,-1,2),0,k(5),1,Spinor(3,1,2))

        F131 = -ChainB0(Spinor(2,-1,2),0,1,Spinor(3,1,2))

        F132 = ChainV1(Spinor(3,1,2),0,k(1),0,Spinor(6,-1,1))

        F133 = -ChainB1(Spinor(2,-1,2),0,k(5),1,Spinor(3,1,2))

        F134 = -ChainB1(Spinor(2,-1,2),0,k(4),1,Spinor(3,1,2))

        Sub31 = F15*F20*(F11 + F19 + F47 + F48) - 
     &    F115*F57*F7 - (F109 + F36)*F70*F76 - F115*F56*F84 + 
     &    F116*F76*F84 - (F111*(F109 + F36) - F67*F7)*F88

        Sub32 = F106*(F11 + F19 + F47 + F48)*F63 + 
     &    F62*(F113*F7 - (F109 + F36)*F78) - 
     &    F112*(F57*F7 + F56*F84) + 
     &    F108*(F113*F84 - (F109 + F36)*F87)

        Sub37 = -((F109 + F36)*F70) + F20*(F44 + F75)

        Sub38 = F111*(F109 + F36) - F20*(F60 + F89)

        Sub39 = F110*(F57*F7 + F56*F84) + F76*Sub37 - F88*Sub38

        Sub40 = F108*(F44 + F75) + F107*(F60 + F89)

        Sub41 = -(F36*F62*F78) + F105*(F57*F7 + F56*F84) - 
     &    F108*F36*F87 - F109*(F62*F78 + F108*F87) + F106*Sub40

        Sub45 = -(F11*F15*F20) + F123*(F17*F37 + F118*F56) - 
     &    F15*(F20*F47 - (F120 + F4)*F70) + (F120 + F4)*F69*F88 - 
     &    F20*(F55 + F90)*F92

        Sub46 = F122*(F17*F37 + F118*F56) - 
     &    F106*(F55*F62 + (F11 + F47)*F63) + 
     &    (F120 + F4)*(F13*F62 + F63*F87) - F106*F62*F90

        Sub49 = F115*(F17*F37 + F118*F56) - 
     &    F15*(F118*F121 - (F120 + F4)*F70) - 
     &    F20*F76*(F41 + F44 + F75 + F77) - 
     &    (F121*F37 - (F120 + F4)*F69)*F88

        Sub50 = -(F119*F37) + F13*(F120 + F4)

        Sub51 = F114*F118*F119 - F112*(F17*F37 + F118*F56) + 
     &    F106*F108*(F41 + F44 + F75 + F77) - 
     &    (F120 + F4)*F63*F87 - F62*Sub50

        Sub59 = (F124 + F125)*F81 + F8*(F71 + F82)

        Sub60 = (F121 + F126)*F84 + F7*(F64 + F85)

        Sub71 = (F101 + F132)*F8 + (F133 + F134)*F81

        Sub72 = (F129 + F130)*F84 + F7*(F128 + F94)

        Sub77 = F29*(F71 - F73) + F68*(F72 - F74)

        Sub79 = F34*(F64 - F65) + F61*(F66 - F67)

        Sub85 = F23*(F43 - F44) + 
     &    (F12 + F18 - F47 - F48)*F58 - F50*(F59 - F60)

        Sub86 = F22*(F41 - F45) - 
     &    (F12 + F18 - F47 - F48)*F54 + F53*(F52 - F55)

        Sub90 = (F11 - F12)*F15 + 
     &    F76*(F43 + F45 - F75 - F77) + (-F52 + F90)*F92

        Sub92 = F13*(F18 - F19) - 
     &    (F43 + F45 - F75 - F77)*F78 + (F59 - F89)*F91

        Sub98 = F15*(F11 - F12 - F18 + F19) + 
     &    (F43 - F75)*F76 + F88*(F59 - F89)

        Sub99 = F13*(F11 - F12 - F18 + F19) + 
     &    (F45 - F77)*F78 + F87*(F52 - F90)

        Sub103 = F38*(F73 - F82) + F81*(F74 - F83)

        Sub104 = F37*(F65 - F85) + F84*(F67 - F86)

        Sub110 = (F100 - F102)*F81 + F38*(F101 - F98)

        Sub111 = F37*(F94 - F95) + F84*(F96 - F97)

        Sub125 = F7*(F41 + F77) + F84*(F55 + F90)

        Sub128 = (F44 + F75)*F8 + F81*(F60 + F89)

        Sub138 = F37*(F11 + F19 + F47 + F48) - Sub125

        Sub139 = F38*(F11 + F19 + F47 + F48) - Sub128

        Sub141 = F37*(F19 + F48) + F118*(F60 + F89)

        Sub142 = F38*(F11 + F47) + F117*(F55 + F90)

        Sub133 = -(F7*(F41 + F44 + F75 + F77)) + Sub141

        Sub134 = -((F41 + F44 + F75 + F77)*F8) + Sub142

        Sub80(HelAll(Cha(4))) = Sub77 - (F68*F69 + F29*F70)*MCha(Cha(4))

        Sub81(HelAll(Cha(4))) = Sub79 - (F34*F62 + F61*F63)*MCha(Cha(4))

        Sub87(HelAll(Cha(4))) = Sub85 + (F53*F56 + F22*F57)*MCha(Cha(4))

        Sub88(HelAll(Cha(4))) = Sub86 - (F49*F50 + F23*F51)*MCha(Cha(4))

        Sub106(HelAll(Cha(4))) = Sub104 + (F37*F62 + F63*F84)*MCha(Cha(4))

        Sub107(HelAll(Cha(4))) = Sub103 + (F38*F70 + F69*F81)*MCha(Cha(4))

        Sub140(HelAll(Gen(1))) = Sub138*Mf(3,Gen(1)) - Sub139*Mf(4,Gen(1))

        Sub146(HelAll(Gen(1))) = 
     &   CB2*Sub138*Mf(3,Gen(1)) + SB2*Sub139*Mf(4,Gen(1))

        Sub135(HelAll(Gen(1))) = Sub133*Mf(3,Gen(1)) - Sub134*Mf(4,Gen(1))

        Sub147(HelAll(Gen(1))) = 
     &   CB2*Sub133*Mf(3,Gen(1)) + SB2*Sub134*Mf(4,Gen(1))


        Sub33(HelAll(Cha(4)),Neu(3)) = 
     &   Sub31*Sub29(Cha(4),Neu(3)) + Sub32*Sub30(Cha(4),Neu(3))

        Sub34(HelAll(Cha(4)),Neu(3)) = 
     &   (F114*F76*F84 + F63*F7*F88)*MCha(Cha(4))*Sub29(Cha(4),Neu(3)) - 
     &    F15*(F62*F7 + F108*F84)*MNeu(Neu(3))*Sub30(Cha(4),Neu(3)) + 
     &    Sub33(HelAll(Cha(4)),Neu(3))

        Sub35(HelAll(Cha(4)),Neu(3)) = 
     &   F104*Sub29(Cha(4),Neu(3)) + F103*Sub30(Cha(4),Neu(3))

        Sub36(HelAll(Cha(4)),Neu(3)) = 
     &   F103*Sub29(Cha(4),Neu(3)) + F104*Sub30(Cha(4),Neu(3))

        Sub42(HelAll(Cha(4)),Neu(3)) = 
     &   Sub39*Sub29(Cha(4),Neu(3)) + Sub41*Sub30(Cha(4),Neu(3))

        Sub43(HelAll(Cha(4)),Neu(3)) = 
     &   MNeu(Neu(3))*Sub35(HelAll(Cha(4)),Neu(3)) - 
     &    MCha(Cha(4))*Sub36(HelAll(Cha(4)),Neu(3))

        Sub44(HelAll(Cha(4)),Neu(3)) = 
     &   -Sub42(HelAll(Cha(4)),Neu(3)) + 
     &    (F57*F7 + F56*F84)*Sub43(HelAll(Cha(4)),Neu(3))

        Sub47(HelAll(Cha(4)),Neu(3)) = 
     &   Sub45*Sub29(Cha(4),Neu(3)) + Sub46*Sub30(Cha(4),Neu(3))

        Sub48(HelAll(Cha(4)),Neu(3)) = 
     &   (F17*F37 + F118*F56)*Sub43(HelAll(Cha(4)),Neu(3)) + 
     &    Sub47(HelAll(Cha(4)),Neu(3))

        Sub52(HelAll(Cha(4)),Neu(3)) = 
     &   Sub49*Sub29(Cha(4),Neu(3)) - Sub51*Sub30(Cha(4),Neu(3))

        Sub53(HelAll(Cha(4)),Neu(3)) = 
     &   F108*(F118*F15 + F37*F88)*MCha(Cha(4))*Sub29(Cha(4),Neu(3)) - 
     &    (F114*F118 + F37*F62)*F76*MNeu(Neu(3))*Sub30(Cha(4),Neu(3)) - 
     &    Sub52(HelAll(Cha(4)),Neu(3))

        Sub132(HelAll(Cha(4)),Neu(3)) = 
     &   CB*F103*Sub127(Cha(4),Neu(3)) + F104*SB*Sub130(Cha(4),Neu(3))

        Sub145(HelAll(Cha(4)),Neu(3)) = 
     &   F103*SB*Sub127(Cha(4),Neu(3)) - CB*F104*Sub130(Cha(4),Neu(3))



        Sub143(HelAll(Gen(1)),Gen(2)) = 
     &   Sub141*Mf(3,Gen(2)) - Sub142*Mf(4,Gen(1))

        Sub148(HelAll(Gen(1)),Gen(2)) = 
     &   CB2*Sub141*Mf(3,Gen(2)) + SB2*Sub142*Mf(4,Gen(1))



        Sub131(HelAll(Gen(1)),Gen(5)) = 
     &   Sub125*Mf(3,Gen(5)) - Sub128*Mf(4,Gen(1))

        Sub144(HelAll(Gen(1)),Gen(5)) = 
     &   CB2*Sub125*Mf(3,Gen(5)) + SB2*Sub128*Mf(4,Gen(1))


        LOOP(Sfe7, 1,2,1)

        Sub65(HelAll(Cha(4)),Gen(1),Sfe7) = 
     &   (1/Sqrt(2.D0)*(F20*S2B*Sub64(Cha(4),Gen(1),Sfe7)) + 
     &      2*F14*SB2*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe7,1,3,Gen(1)))/
     &    (S2B*SB2)

        ENDLOOP(Sfe7)

        LOOP(Sfe8, 1,2,1)

        Sub24(HelAll(Cha(4)),Gen(1),Sfe8) = 
     &   (1/Sqrt(2.D0)*(F20*S2B*Sub13(Cha(4),Gen(1),Sfe8)) + 
     &      2*F14*SB2*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe8,1,3,Gen(1)))/
     &    (S2B*SB2)

        ENDLOOP(Sfe8)

        LOOP(Sfe7, 1,2,1)

        Sub84(HelAll(Cha(4)),Gen(2),Sfe7) = 
     &   (1/Sqrt(2.D0)*(F23*S2B*Sub83(Cha(4),Gen(2),Sfe7)) + 
     &      2*CB2*F22*Mf(3,Gen(2))*USfC(Sfe7,1,4,Gen(2))*VChaC(Cha(4),2))
     &     /(CB2*S2B)

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub75(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (1/Sqrt(2.D0)*(F6*S2B*Sub66(Cha(4),Gen(5),Sfe7)) + 
     &      2*CB2*F3*Mf(3,Gen(5))*USfC(Sfe7,1,4,Gen(5))*VChaC(Cha(4),2))/
     &    (CB2*S2B)

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub70(HelAll(Gen(1)),Neu(3),Sfe7) = 
     &   F131*F81*Sub67(Gen(1),Neu(3),Sfe7) + 
     &    F127*F84*Sub69(Gen(1),Neu(3),Sfe7)

        Sub73(HelAll(Gen(1)),Neu(3),Sfe7) = 
     &   Sub71*Sub67(Gen(1),Neu(3),Sfe7) + Sub72*Sub69(Gen(1),Neu(3),Sfe7)

        Sub74(HelAll(Gen(1)),Neu(3),Sfe7) = 
     &   MNeu(Neu(3))*Sub70(HelAll(Gen(1)),Neu(3),Sfe7) + 
     &    Sub73(HelAll(Gen(1)),Neu(3),Sfe7)

        Sub76(HelAll(Gen(1)),Neu(3),Sfe7) = 
     &   F46*Sub67(Gen(1),Neu(3),Sfe7) + F42*Sub69(Gen(1),Neu(3),Sfe7)

        Sub109(HelAll(Gen(1)),Neu(3),Sfe7) = 
     &   (F38*F5 + F81*F99)*Sub67(Gen(1),Neu(3),Sfe7) + 
     &    (F2*F37 + F84*F93)*Sub69(Gen(1),Neu(3),Sfe7)

        Sub112(HelAll(Gen(1)),Neu(3),Sfe7) = 
     &   Sub110*Sub67(Gen(1),Neu(3),Sfe7) + 
     &    Sub111*Sub69(Gen(1),Neu(3),Sfe7)

        Sub113(HelAll(Gen(1)),Neu(3),Sfe7) = 
     &   MNeu(Neu(3))*Sub109(HelAll(Gen(1)),Neu(3),Sfe7) - 
     &    Sub112(HelAll(Gen(1)),Neu(3),Sfe7)

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub94(HelAll(Gen(2)),Neu(3),Sfe7) = 
     &   Sub90*Sub91(Gen(2),Neu(3),Sfe7) + Sub92*Sub93(Gen(2),Neu(3),Sfe7)

        Sub95(HelAll(Gen(2)),Neu(3),Sfe7) = 
     &   (F13*F17 + F56*F91)*Sub91(Gen(2),Neu(3),Sfe7) - 
     &    (F15*F16 + F49*F92)*Sub93(Gen(2),Neu(3),Sfe7)

        Sub96(HelAll(Gen(2)),Neu(3),Sfe7) = 
     &   Sub94(HelAll(Gen(2)),Neu(3),Sfe7) + 
     &    MNeu(Neu(3))*Sub95(HelAll(Gen(2)),Neu(3),Sfe7)

        Sub102(HelAll(Gen(2)),Neu(3),Sfe7) = 
     &   F76*Sub91(Gen(2),Neu(3),Sfe7) - F78*Sub93(Gen(2),Neu(3),Sfe7)

        ENDLOOP(Sfe7)

        LOOP(Sfe8, 1,2,1)

        Sub116(HelAll(Gen(2)),Neu(3),Sfe8) = 
     &   F76*Sub114(Gen(2),Neu(3),Sfe8) - F78*Sub115(Gen(2),Neu(3),Sfe8)

        ENDLOOP(Sfe8)

        LOOP(Sfe7, 1,2,1)

        Sub12(HelAll(Gen(5)),Neu(3),Sfe7) = 
     &   F15*Sub10(Gen(5),Neu(3),Sfe7) - F13*Sub11(Gen(5),Neu(3),Sfe7)

        Sub97(HelAll(Gen(5)),Neu(3),Sfe7) = 
     &   (F57*F78 + F56*F87)*Sub10(Gen(5),Neu(3),Sfe7) - 
     &    (F51*F76 + F49*F88)*Sub11(Gen(5),Neu(3),Sfe7)

        Sub100(HelAll(Gen(5)),Neu(3),Sfe7) = 
     &   Sub98*Sub10(Gen(5),Neu(3),Sfe7) - Sub99*Sub11(Gen(5),Neu(3),Sfe7)

        Sub101(HelAll(Gen(5)),Neu(3),Sfe7) = 
     &   Sub100(HelAll(Gen(5)),Neu(3),Sfe7) - 
     &    MNeu(Neu(3))*Sub97(HelAll(Gen(5)),Neu(3),Sfe7)

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub4(HelAll(Gen(6)),Neu(3),Sfe7) = 
     &   F2*Sub1(Gen(6),Neu(3),Sfe7) - F5*Sub3(Gen(6),Neu(3),Sfe7)

        ENDLOOP(Sfe7)

        LOOP(Sfe8, 1,2,1)

        Sub123(HelAll(Gen(6)),Neu(3),Sfe8) = 
     &   F2*Sub120(Gen(6),Neu(3),Sfe8) - F5*Sub122(Gen(6),Neu(3),Sfe8)

        ENDLOOP(Sfe8)

        LOOP(Sfe7, 1,2,1)

        Sub82(HelAll(Cha(4)),Gen(1),Gen(2),Sfe7) = 
     &   (1/Sqrt(2.D0)*(S2B*Sub78(Cha(4),Gen(1),Sfe7)*
     &         Sub80(HelAll(Cha(4)))) + 
     &      2*CB2*Mf(3,Gen(2))*Sub81(HelAll(Cha(4)))*
     &       USfC(Sfe7,1,4,Gen(1))*VChaC(Cha(4),2))/(CB2*S2B)

        Sub108(HelAll(Cha(4)),Gen(1),Gen(2),Sfe7) = 
     &   (1/Sqrt(2.D0)*(S2B*Sub105(Cha(4),Gen(2),Sfe7)*
     &         Sub106(HelAll(Cha(4)))) + 
     &      2*SB2*Mf(4,Gen(1))*Sub107(HelAll(Cha(4)))*UCha(Cha(4),2)*
     &       USf(Sfe7,1,3,Gen(2)))/(S2B*SB2)

        ENDLOOP(Sfe7)

        LOOP(Sfe8, 1,2,1)

        Sub28(HelAll(Cha(4)),Gen(1),Gen(2),Sfe8) = 
     &   (Sqrt(2.D0)*(F23*SB2*Sub6(Cha(4),Gen(1),Sfe8)) + 
     &      F22*S2B*Mf(3,Gen(2))*USfC(Sfe8,1,4,Gen(1))*VChaC(Cha(4),2))/
     &    (S2B*SB2)

        ENDLOOP(Sfe8)

        LOOP(Sfe7, 1,2,1)

        Sub62(HelAll(Cha(4)),Gen(1),Gen(5),Sfe7) = 
     &   1/Sqrt(2.D0)*((Sub60 + F108*F84*MCha(Cha(4)))*
     &        Sub61(Cha(4),Gen(5),Sfe7))/SB2 + 
     &    ((Sub59 + F111*F81*MCha(Cha(4)))*Mf(4,Gen(1))*UCha(Cha(4),2)*
     &       USf(Sfe7,1,3,Gen(5)))/(CB*SB)

        Sub89(HelAll(Cha(4)),Gen(1),Gen(5),Sfe7) = 
     &   (1/Sqrt(2.D0)*(S2B*Sub78(Cha(4),Gen(1),Sfe7)*
     &         Sub87(HelAll(Cha(4)))) - 
     &      2*CB2*Mf(3,Gen(5))*Sub88(HelAll(Cha(4)))*
     &       USfC(Sfe7,1,4,Gen(1))*VChaC(Cha(4),2))/(CB2*S2B)

        Sub119(HelAll(Cha(4)),Gen(1),Gen(5),Sfe7) = 
     &   (Sqrt(2.D0)*(F6*SB2*Sub78(Cha(4),Gen(1),Sfe7)) + 
     &      F3*S2B*Mf(3,Gen(5))*USfC(Sfe7,1,4,Gen(1))*VChaC(Cha(4),2))/
     &    (S2B*SB2)

        ENDLOOP(Sfe7)

        LOOP(Sfe8, 1,2,1)

        Sub8(HelAll(Cha(4)),Gen(1),Gen(5),Sfe8) = 
     &   (Sqrt(2.D0)*(F6*SB2*Sub6(Cha(4),Gen(1),Sfe8)) + 
     &      F3*S2B*Mf(3,Gen(5))*USfC(Sfe8,1,4,Gen(1))*VChaC(Cha(4),2))/
     &    (S2B*SB2)

        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub5(HelAll(Gen(1)),Gen(2),Sfe7,Sfe8) = 
     &   (F1 + F4)*USf(Sfe8,1,4,Gen(1))*USfC(Sfe7,1,3,Gen(2)) + 
     &    (F10 + F9)*USf(Sfe8,2,4,Gen(1))*USfC(Sfe7,2,3,Gen(2))

        Sub7(HelAll(Gen(1)),Gen(2),Sfe7,Sfe8) = 
     &   Sub5(HelAll(Gen(1)),Gen(2),Sfe7,Sfe8) + 
     &    F8*Mino3*USf(Sfe8,2,4,Gen(1))*USfC(Sfe7,1,3,Gen(2)) + 
     &    F7*Mino3C*USf(Sfe8,1,4,Gen(1))*USfC(Sfe7,2,3,Gen(2))

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub26(HelAll(Gen(1)),Gen(5),Sfe7,Sfe8) = 
     &   (F35 - F36)*USf(Sfe8,1,4,Gen(1))*USfC(Sfe7,1,3,Gen(5)) + 
     &    (F39 - F40)*USf(Sfe8,2,4,Gen(1))*USfC(Sfe7,2,3,Gen(5))

        Sub27(HelAll(Gen(1)),Gen(5),Sfe7,Sfe8) = 
     &   Sub26(HelAll(Gen(1)),Gen(5),Sfe7,Sfe8) - 
     &    F38*Mino3*USf(Sfe8,2,4,Gen(1))*USfC(Sfe7,1,3,Gen(5)) - 
     &    F37*Mino3C*USf(Sfe8,1,4,Gen(1))*USfC(Sfe7,2,3,Gen(5))

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub20(HelAll(Gen(1)),Gen(6),Sfe7,Sfe8) = 
     &   (F26 - F27)*USf(Sfe7,2,3,Gen(6))*USf(Sfe8,1,4,Gen(1)) + 
     &    (F24 - F25)*USf(Sfe7,1,3,Gen(6))*USf(Sfe8,2,4,Gen(1))

        Sub21(HelAll(Gen(1)),Gen(6),Sfe7,Sfe8) = 
     &   Sub20(HelAll(Gen(1)),Gen(6),Sfe7,Sfe8) - 
     &    F21*Mino3C*USf(Sfe7,1,3,Gen(6))*USf(Sfe8,1,4,Gen(1)) - 
     &    F28*Mino3*USf(Sfe7,2,3,Gen(6))*USf(Sfe8,2,4,Gen(1))

        Sub117(HelAll(Gen(1)),Gen(6),Sfe7,Sfe8) = 
     &   (F24 - F80)*USf(Sfe7,2,4,Gen(1))*USf(Sfe8,1,3,Gen(6)) + 
     &    (F26 - F79)*USf(Sfe7,1,4,Gen(1))*USf(Sfe8,2,3,Gen(6))

        Sub118(HelAll(Gen(1)),Gen(6),Sfe7,Sfe8) = 
     &   Sub117(HelAll(Gen(1)),Gen(6),Sfe7,Sfe8) + 
     &    F21*Mino3C*USf(Sfe7,1,4,Gen(1))*USf(Sfe8,1,3,Gen(6)) + 
     &    F28*Mino3*USf(Sfe7,2,4,Gen(1))*USf(Sfe8,2,3,Gen(6))

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub23(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8) = 
     &   (F32 - F33)*USfC(Sfe7,2,3,Gen(5))*USfC(Sfe8,1,3,Gen(2)) + 
     &    (F30 - F31)*USfC(Sfe7,1,3,Gen(5))*USfC(Sfe8,2,3,Gen(2))

        Sub25(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8) = 
     &   Sub23(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8) - 
     &    F29*Mino3*USfC(Sfe7,1,3,Gen(5))*USfC(Sfe8,1,3,Gen(2)) - 
     &    F34*Mino3C*USfC(Sfe7,2,3,Gen(5))*USfC(Sfe8,2,3,Gen(2))

        Sub124(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8) = 
     &   Sub23(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8) + 
     &    F29*Mino3*USfC(Sfe7,1,3,Gen(5))*USfC(Sfe8,1,3,Gen(2)) + 
     &    F34*Mino3C*USfC(Sfe7,2,3,Gen(5))*USfC(Sfe8,2,3,Gen(2))

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub15(HelAll(Gen(2)),Gen(6),Sfe7,Sfe8) = 
     &   (F11 - F12)*USf(Sfe7,1,3,Gen(6))*USfC(Sfe8,1,3,Gen(2)) + 
     &    (-F18 + F19)*USf(Sfe7,2,3,Gen(6))*USfC(Sfe8,2,3,Gen(2))

        Sub18(HelAll(Gen(2)),Gen(6),Sfe7,Sfe8) = 
     &   F17*Mino3*USf(Sfe7,2,3,Gen(6))*USfC(Sfe8,1,3,Gen(2)) + 
     &    F16*Mino3C*USf(Sfe7,1,3,Gen(6))*USfC(Sfe8,2,3,Gen(2))

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub136(HelAll(Gen(5)),Gen(6),Sfe7,Sfe8) = 
     &   (F43 - F75)*USf(Sfe8,1,3,Gen(6))*USfC(Sfe7,1,3,Gen(5)) + 
     &    (F45 - F77)*USf(Sfe8,2,3,Gen(6))*USfC(Sfe7,2,3,Gen(5))

        Sub137(HelAll(Gen(5)),Gen(6),Sfe7,Sfe8) = 
     &   Sub136(HelAll(Gen(5)),Gen(6),Sfe7,Sfe8) + 
     &    F57*Mino3*USf(Sfe8,2,3,Gen(6))*USfC(Sfe7,1,3,Gen(5)) + 
     &    F51*Mino3C*USf(Sfe8,1,3,Gen(6))*USfC(Sfe7,2,3,Gen(5))

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe7, 1,2,1)

        Sub199(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3),Sfe7) = 
     &   ((F43 + F45 - F75 - F77)*Sub102(HelAll(Gen(2)),Neu(3),Sfe7))/
     &     (U - Sub152(Gen(2),Sfe7)) - 
     &    Sub96(HelAll(Gen(2)),Neu(3),Sfe7)/
     &     (Mf2(3,Gen(2)) - Sub164(Cha(4),Gen(1),Neu(3)))

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub197(HelAll(Cha(4)),Gen(1),Gen(5),Neu(3),Sfe7) = 
     &   (Sub101(HelAll(Gen(5)),Neu(3),Sfe7)*
     &       Sub65(HelAll(Cha(4)),Gen(1),Sfe7))/
     &     (T14 - Sub196(Gen(1),Sfe7)) + 
     &    (Sub76(HelAll(Gen(1)),Neu(3),Sfe7)*
     &       Sub89(HelAll(Cha(4)),Gen(1),Gen(5),Sfe7))/
     &     (T - Sub188(Gen(1),Sfe7))

        ENDLOOP(Sfe7)


        Sub169(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   -(Sub144(HelAll(Gen(1)),Gen(5))/
     &       (Mf2(4,Gen(1)) + Sub163(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))
     &      + Sub146(HelAll(Gen(1)))/
     &     (Mf2(3,Gen(1)) - Sub164(Cha(4),Gen(1),Neu(3)))

        Sub173(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   -(Sub34(HelAll(Cha(4)),Neu(3))/
     &       (Mf2(3,Gen(1)) - Sub164(Cha(4),Gen(1),Neu(3)))) - 
     &    Sub44(HelAll(Cha(4)),Neu(3))/
     &     (Mf2(4,Gen(1)) + Sub163(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))

        Sub174(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   -(Sub48(HelAll(Cha(4)),Neu(3))/
     &       (Mf2(4,Gen(1)) + Sub167(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))
     &      - Sub53(HelAll(Cha(4)),Neu(3))/
     &     (Mf2(3,Gen(1)) - Sub164(Cha(4),Gen(1),Neu(3)))

        Sub177(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   -(((F57*F7 + F56*F84)*IndexDelta(Gen(1),Gen(5))*
     &         Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub175(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub54(Gen(2),Gen(6)) + 
     &        3*(F17*F37 + F118*F56)*IndexDelta(Gen(1),Gen(2))*
     &         Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub184(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub57(Gen(5),Gen(6)))/
     &      (Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &        Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))

        Sub178(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   (-2*IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &       Sub173(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &     Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) - 
     &    (6*IndexDelta(Gen(1),Gen(2))*IndexDelta(Gen(5),Gen(6))*
     &       Sub174(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &     Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) - 
     &    (Sub177(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &       Sub43(HelAll(Cha(4)),Neu(3)))/
     &     (S34 + GaugeXi(3)*(-MW2 + cI*MW*WW))

        Sub185(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   -((3*(F57*F7 + F56*F84)*IndexDelta(Gen(1),Gen(5))*
     &         Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub175(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub54(Gen(2),Gen(6)) + 
     &        (F17*F37 + F118*F56)*IndexDelta(Gen(1),Gen(2))*
     &         Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub184(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub57(Gen(5),Gen(6)))/
     &      (Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &        Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))

        Sub186(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   (-6*IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &       Sub173(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &     Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) - 
     &    (2*IndexDelta(Gen(1),Gen(2))*IndexDelta(Gen(5),Gen(6))*
     &       Sub174(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &     Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) - 
     &    (Sub185(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &       Sub43(HelAll(Cha(4)),Neu(3)))/
     &     (S34 + GaugeXi(3)*(-MW2 + cI*MW*WW))

        Sub166(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   -((3*IndexDelta(Gen(1),Gen(2))*IndexDelta(Gen(5),Gen(6))*
     &         Sub135(HelAll(Gen(1)))*
     &         Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) - 
     &        IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &         Sub140(HelAll(Gen(1)))*
     &         Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &      (Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &        Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))

        Sub168(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   (IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &       Sub131(HelAll(Gen(1)),Gen(5)))/
     &     (Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &       (Mf2(4,Gen(1)) + Sub163(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))
     &      - Sub166(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))/
     &     (Mf2(3,Gen(1)) - Sub164(Cha(4),Gen(1),Neu(3))) + 
     &    (3*IndexDelta(Gen(1),Gen(2))*IndexDelta(Gen(5),Gen(6))*
     &       Sub143(HelAll(Gen(1)),Gen(2)))/
     &     (Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &       (Mf2(4,Gen(1)) + Sub167(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))

        Sub170(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   -(Sub147(HelAll(Gen(1)))/
     &       (Mf2(3,Gen(1)) - Sub164(Cha(4),Gen(1),Neu(3)))) - 
     &    Sub148(HelAll(Gen(1)),Gen(2))/
     &     (Mf2(4,Gen(1)) + Sub167(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))

        Sub171(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   -((IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &         Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub169(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) + 
     &        3*IndexDelta(Gen(1),Gen(2))*IndexDelta(Gen(5),Gen(6))*
     &         Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub170(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &      (Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &        Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))

        Sub172(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   (S2B*Sub132(HelAll(Cha(4)),Neu(3))*
     &       Sub168(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &     (S34 + GaugeXi(3)*(-MW2 + cI*MW*WW)) + 
     &    (2*Sub145(HelAll(Cha(4)),Neu(3))*
     &       Sub171(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &     (MHp2C - S34)

        Sub179(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   1/MW*Sub172(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))/S2B + 
     &    Sub178(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))/
     &     (MW2 - S34 - cI*MW*WW)

        Sub180(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   -((IndexDelta(Gen(1),Gen(2))*IndexDelta(Gen(5),Gen(6))*
     &         Sub135(HelAll(Gen(1)))*
     &         Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) - 
     &        3*IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &         Sub140(HelAll(Gen(1)))*
     &         Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &      (Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &        Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))

        Sub181(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   (3*IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &       Sub131(HelAll(Gen(1)),Gen(5)))/
     &     (Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &       (Mf2(4,Gen(1)) + Sub163(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))
     &      + (IndexDelta(Gen(1),Gen(2))*IndexDelta(Gen(5),Gen(6))*
     &       Sub143(HelAll(Gen(1)),Gen(2)))/
     &     (Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &       (Mf2(4,Gen(1)) + Sub167(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))
     &      - Sub180(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))/
     &     (Mf2(3,Gen(1)) - Sub164(Cha(4),Gen(1),Neu(3)))

        Sub182(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   -((3*IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &         Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub169(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) + 
     &        IndexDelta(Gen(1),Gen(2))*IndexDelta(Gen(5),Gen(6))*
     &         Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &         Sub170(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &      (Sub162(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))*
     &        Sub165(Cha(4),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))))

        Sub183(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   (S2B*Sub132(HelAll(Cha(4)),Neu(3))*
     &       Sub181(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &     (S34 + GaugeXi(3)*(-MW2 + cI*MW*WW)) + 
     &    (2*Sub145(HelAll(Cha(4)),Neu(3))*
     &       Sub182(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)))/
     &     (MHp2C - S34)

        Sub187(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3)) = 
     &   1/MW*Sub183(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))/S2B + 
     &    Sub186(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Gen(6),Neu(3))/
     &     (MW2 - S34 - cI*MW*WW)


        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub161(HelAll(Cha(4)),Gen(1),Gen(2),Gen(5),Sfe7,Sfe8) = 
     &   (Sub24(HelAll(Cha(4)),Gen(1),Sfe8)*
     &       Sub25(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8))/
     &     (T14 - Sub159(Gen(1),Sfe8)) - 
     &    (Sub27(HelAll(Gen(1)),Gen(5),Sfe7,Sfe8)*
     &       Sub28(HelAll(Cha(4)),Gen(1),Gen(2),Sfe8))/
     &     (T24 - Sub150(Gen(1),Sfe8))

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)
        LOOP(Sfe7, 1,2,1)

        Sub16(HelAll(Cha(4)),Gen(1),Gen(5),Neu(3),Sfe7,Sfe8) = 
     &   -((Sub12(HelAll(Gen(5)),Neu(3),Sfe7)*
     &        (1/Sqrt(2.D0)*(F20*S2B*Sub13(Cha(4),Gen(1),Sfe8)) + 
     &          2*F14*SB2*Mf(4,Gen(1))*UCha(Cha(4),2)*
     &           USf(Sfe8,1,3,Gen(1))))/(S2B*SB2))

        Sub17(HelAll(Cha(4)),Gen(1),Gen(5),Neu(3),Sfe7,Sfe8) = 
     &   (-2*Sub12(HelAll(Gen(5)),Neu(3),Sfe7)*
     &      (1/Sqrt(2.D0)*(F20*S2B*Sub13(Cha(4),Gen(1),Sfe8)) + 
     &        2*F14*SB2*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe8,1,3,Gen(1)))
     &      )/(S2B*SB2)

        ENDLOOP(Sfe7)
        ENDLOOP(Sfe8)

#include "real_contains.h"

        end

