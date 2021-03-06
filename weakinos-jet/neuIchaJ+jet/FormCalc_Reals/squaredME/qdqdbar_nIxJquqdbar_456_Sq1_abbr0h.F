#if 0
* qdqdbar_nIxJquqdbar_456_Sq1_abbr0h.F
* abbreviations for {F[4, {Gen(1), Col1}], -F[4, {Gen(2), Col2}]} -> {F[11, {Neu(3)}], F[12, {Cha(4)}], F[3, {Gen(5), Col5}], -F[4, {Gen(6), Col6}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 23-Oct-2017 10:55
#endif

#include "qdqdbar_nIxJquqdbar_456_Sq1_vars.h"
#include "realOS_inline.h"
#include "realOS_contains.h"


        subroutine qdqdbar_nIxJquqdbar_456_Sq1_abbr0h
        implicit none

#include "qdqdbar_nIxJquqdbar_456_Sq1_vars.h"
#include "realOS_inline.h"

        F10 = ChainB0(Spinor(4,1,2),0,0,Spinor(5,-1,1))

        F14 = -ChainV0(Spinor(4,1,2),0,0,Spinor(5,-1,1))

        F17 = ChainV1(Spinor(2,-1,2),0,k(1),0,Spinor(6,-1,1))

        F18 = ChainB0(Spinor(3,1,2),0,0,Spinor(1,1,1))

        F19 = ChainV1(Spinor(2,-1,2),0,k(3),0,Spinor(6,-1,1))

        F20 = ChainV0(Spinor(3,1,2),0,0,Spinor(1,1,1))

        F21 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(6,-1,1))

        F22 = -ChainV0(Spinor(2,-1,2),0,0,Spinor(6,-1,1))

        F23 = ChainB1(Spinor(2,-1,2),0,k(1),0,Spinor(6,-1,1))

        F24 = ChainB1(Spinor(2,-1,2),0,k(3),0,Spinor(6,-1,1))

        F25 = ChainB0(Spinor(6,1,2),0,0,Spinor(1,1,1))

        F26 = -ChainV0(Spinor(2,-1,2),0,0,Spinor(3,-1,1))

        F27 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(3,-1,1))

        F28 = ChainB1(Spinor(6,1,2),0,k(3),0,Spinor(1,1,1))

        F29 = ChainB1(Spinor(6,1,2),0,k(2),0,Spinor(1,1,1))

        F30 = ChainV1(Spinor(6,1,2),0,k(2),0,Spinor(1,1,1))

        F31 = ChainV1(Spinor(6,1,2),0,k(3),0,Spinor(1,1,1))

        F32 = ChainV0(Spinor(6,1,2),0,0,Spinor(1,1,1))


        Sub12(HelAll(Cha(4)),Gen(5),Sq1) = 
     &   (1/Sqrt(2.D0)*(F14*S2B*Sub7(Cha(4),Gen(5),Sq1)) + 
     &      2*CB2*F10*Mf(3,Gen(5))*USfC(Sq1,1,4,Gen(5))*VChaC(Cha(4),2))
     &     /(CB2*S2B)


        LOOP(Sfe8, 1,2,1)

        Sub19(HelAll(Gen(1)),Neu(3),Sfe8) = 
     &   F20*Sub17(Gen(1),Neu(3),Sfe8) + F18*Sub18(Gen(1),Neu(3),Sfe8)

        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)

        Sub25(HelAll(Gen(2)),Neu(3),Sfe8) = 
     &   F26*Sub23(Gen(2),Neu(3),Sfe8) + F27*Sub24(Gen(2),Neu(3),Sfe8)

        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)

        Sub26(HelAll(Gen(1)),Gen(6),Sq1,Sfe8) = 
     &   (F30 - F31)*USf(Sq1,2,4,Gen(6))*USf(Sfe8,1,4,Gen(1)) + 
     &    (-F28 + F29)*USf(Sq1,1,4,Gen(6))*USf(Sfe8,2,4,Gen(1))

        Sub27(HelAll(Gen(1)),Gen(6),Sq1,Sfe8) = 
     &   Sub26(HelAll(Gen(1)),Gen(6),Sq1,Sfe8) - 
     &    F25*Mino3C*USf(Sq1,1,4,Gen(6))*USf(Sfe8,1,4,Gen(1)) - 
     &    F32*Mino3*USf(Sq1,2,4,Gen(6))*USf(Sfe8,2,4,Gen(1))

        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)

        Sub20(HelAll(Gen(2)),Gen(6),Sq1,Sfe8) = 
     &   (F17 - F19)*USf(Sq1,1,4,Gen(6))*USfC(Sfe8,1,4,Gen(2)) + 
     &    (F23 - F24)*USf(Sq1,2,4,Gen(6))*USfC(Sfe8,2,4,Gen(2))

        Sub21(HelAll(Gen(2)),Gen(6),Sq1,Sfe8) = 
     &   Sub20(HelAll(Gen(2)),Gen(6),Sq1,Sfe8) + 
     &    F22*Mino3*USf(Sq1,2,4,Gen(6))*USfC(Sfe8,1,4,Gen(2)) + 
     &    F21*Mino3C*USf(Sq1,1,4,Gen(6))*USfC(Sfe8,2,4,Gen(2))

        ENDLOOP(Sfe8)

        LOOP(Sfe8, 1,2,1)

        Sub154(HelAll(Gen(1)),Gen(2),Gen(6),Neu(3),Sq1,Sfe8) = 
     &   (Sub19(HelAll(Gen(1)),Neu(3),Sfe8)*
     &       Sub21(HelAll(Gen(2)),Gen(6),Sq1,Sfe8))/
     &     (T - Sub147(Gen(1),Sfe8)) - 
     &    (Sub25(HelAll(Gen(2)),Neu(3),Sfe8)*
     &       Sub27(HelAll(Gen(1)),Gen(6),Sq1,Sfe8))/
     &     (U - Sub147(Gen(1),Sfe8))

        ENDLOOP(Sfe8)

#include "realOS_contains.h"

        end

