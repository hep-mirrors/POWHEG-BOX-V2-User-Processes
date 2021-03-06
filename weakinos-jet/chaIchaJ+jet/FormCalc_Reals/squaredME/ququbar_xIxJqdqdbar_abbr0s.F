#if 0
* ququbar_xIxJqdqdbar_abbr0s.F
* abbreviations for {F[3, {Gen(1), Col1}], -F[3, {Gen(2), Col2}]} -> {-F[12, {Cha(3)}], F[12, {Cha(4)}], F[4, {Gen(5), Col5}], -F[4, {Gen(6), Col6}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 23-Oct-2017 11:06
#endif

#include "ququbar_xIxJqdqdbar_vars.h"
#include "real_inline.h"
#include "real_contains.h"


        subroutine ququbar_xIxJqdqdbar_abbr0s
        implicit none

#include "ququbar_xIxJqdqdbar_vars.h"
#include "real_inline.h"

        MatSUN(1,1) = 9

        MatSUN(1,2) = 3

        MatSUN(2,1) = 3

        MatSUN(2,2) = 9


        Sub28(Cha(3),Cha(4)) = 
     &   CB*UCha(Cha(4),2)*VCha(Cha(3),1) - 
     &    SB*UCha(Cha(4),1)*VCha(Cha(3),2)

        Sub30(Cha(3),Cha(4)) = 
     &   CB*UChaC(Cha(3),2)*VChaC(Cha(4),1) - 
     &    SB*UChaC(Cha(3),1)*VChaC(Cha(4),2)

        Sub39(Cha(3),Cha(4)) = 
     &   CA*UCha(Cha(4),2)*VCha(Cha(3),1) + 
     &    SA*UCha(Cha(4),1)*VCha(Cha(3),2)

        Sub40(Cha(3),Cha(4)) = 
     &   CA*UChaC(Cha(3),2)*VChaC(Cha(4),1) + 
     &    SA*UChaC(Cha(3),1)*VChaC(Cha(4),2)

        Sub42(Cha(3),Cha(4)) = 
     &   SB*UCha(Cha(4),2)*VCha(Cha(3),1) + 
     &    CB*UCha(Cha(4),1)*VCha(Cha(3),2)

        Sub43(Cha(3),Cha(4)) = 
     &   SB*UChaC(Cha(3),2)*VChaC(Cha(4),1) + 
     &    CB*UChaC(Cha(3),1)*VChaC(Cha(4),2)

        Sub47(Cha(3),Cha(4)) = 
     &   SA*UCha(Cha(4),2)*VCha(Cha(3),1) - 
     &    CA*UCha(Cha(4),1)*VCha(Cha(3),2)

        Sub48(Cha(3),Cha(4)) = 
     &   SA*UChaC(Cha(3),2)*VChaC(Cha(4),1) - 
     &    CA*UChaC(Cha(3),1)*VChaC(Cha(4),2)

        Sub50(Cha(3),Cha(4)) = 
     &   2*SW2*IndexDelta(Cha(3),Cha(4)) - 
     &    2*UCha(Cha(4),1)*UChaC(Cha(3),1) - UCha(Cha(4),2)*UChaC(Cha(3),2)

        Sub51(Cha(3),Cha(4)) = 
     &   2*SW2*IndexDelta(Cha(3),Cha(4)) - 
     &    2*VCha(Cha(3),1)*VChaC(Cha(4),1) - VCha(Cha(3),2)*VChaC(Cha(4),2)


        LOOP(Sfe7, 1,2,1)

        Sub141(Gen(1),Sfe7) = 
     &   -(cI*(MSf(Sfe7,3,Gen(1))*WSf(Sfe7,3,Gen(1)))) + 
     &    MSf2(Sfe7,3,Gen(1))

        Sub145(Gen(1),Sfe7) = 
     &   -(cI*(MSf(Sfe7,3,Gen(1))*(WREG2 + WSf(Sfe7,3,Gen(1))))) + 
     &    MSf2(Sfe7,3,Gen(1))

        Sub177(Gen(1),Sfe7) = 
     &   -(cI*(MSf(Sfe7,4,Gen(1))*WSf(Sfe7,4,Gen(1)))) + 
     &    MSf2(Sfe7,4,Gen(1))

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub178(Gen(2),Sfe7) = 
     &   -(cI*(MSf(Sfe7,4,Gen(2))*WSf(Sfe7,4,Gen(2)))) + 
     &    MSf2(Sfe7,4,Gen(2))

        ENDLOOP(Sfe7)

        LOOP(Sfe8, 1,2,1)

        Sub143(Gen(2),Sfe8) = 
     &   -(cI*(MSf(Sfe8,3,Gen(2))*WSf(Sfe8,3,Gen(2)))) + 
     &    MSf2(Sfe8,3,Gen(2))

        Sub146(Gen(2),Sfe8) = 
     &   -(cI*(MSf(Sfe8,3,Gen(2))*(WREG2 + WSf(Sfe8,3,Gen(2))))) + 
     &    MSf2(Sfe8,3,Gen(2))

        Sub183(Gen(2),Sfe8) = 
     &   -(cI*(MSf(Sfe8,4,Gen(2))*WSf(Sfe8,4,Gen(2)))) + 
     &    MSf2(Sfe8,4,Gen(2))

        ENDLOOP(Sfe8)


        Sub20(Gen(5),Gen(6)) = 
     &   IndexDelta(Gen(5),Gen(6)) - GaugeXi(1)*IndexDelta(Gen(5),Gen(6))

        Sub89(Gen(5),Gen(6)) = 
     &   IndexDelta(Gen(5),Gen(6)) - GaugeXi(2)*IndexDelta(Gen(5),Gen(6))


        LOOP(Sfe7, 1,2,1)

        Sub148(Gen(5),Sfe7) = 
     &   -(cI*(MSf(Sfe7,3,Gen(5))*WSf(Sfe7,3,Gen(5)))) + 
     &    MSf2(Sfe7,3,Gen(5))

        Sub151(Gen(5),Sfe7) = 
     &   -(cI*(MSf(Sfe7,3,Gen(5))*(WREG2 + WSf(Sfe7,3,Gen(5))))) + 
     &    MSf2(Sfe7,3,Gen(5))

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub149(Gen(6),Sfe7) = 
     &   -(cI*(MSf(Sfe7,3,Gen(6))*WSf(Sfe7,3,Gen(6)))) + 
     &    MSf2(Sfe7,3,Gen(6))

        Sub152(Gen(6),Sfe7) = 
     &   -(cI*(MSf(Sfe7,3,Gen(6))*(WREG2 + WSf(Sfe7,3,Gen(6))))) + 
     &    MSf2(Sfe7,3,Gen(6))

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub7(Cha(3),Gen(1),Sfe7) = 
     &   -(2*MW*(SB*USfC(Sfe7,1,3,Gen(1))*VCha(Cha(3),1))) + 
     &    Sqrt(2.D0)*(Mf(3,Gen(1))*USfC(Sfe7,2,3,Gen(1))*VCha(Cha(3),2))

        Sub62(Cha(3),Gen(1),Sfe7) = 
     &   -(2*MW*(CB*UChaC(Cha(3),1)*USf(Sfe7,1,4,Gen(1)))) + 
     &    Sqrt(2.D0)*(Mf(4,Gen(1))*UChaC(Cha(3),2)*USf(Sfe7,2,4,Gen(1)))

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub74(Cha(3),Gen(2),Sfe7) = 
     &   -(2*MW*(CB*UChaC(Cha(3),1)*USf(Sfe7,1,4,Gen(2)))) + 
     &    Sqrt(2.D0)*(Mf(4,Gen(2))*UChaC(Cha(3),2)*USf(Sfe7,2,4,Gen(2)))

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub1(Cha(3),Gen(5),Sfe7) = 
     &   -(2*MW*(SB*USfC(Sfe7,1,3,Gen(5))*VCha(Cha(3),1))) + 
     &    Sqrt(2.D0)*(Mf(3,Gen(5))*USfC(Sfe7,2,3,Gen(5))*VCha(Cha(3),2))

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub96(Cha(3),Gen(6),Sfe7) = 
     &   -(2*MW*(SB*USfC(Sfe7,1,3,Gen(6))*VCha(Cha(3),1))) + 
     &    Sqrt(2.D0)*(Mf(3,Gen(6))*USfC(Sfe7,2,3,Gen(6))*VCha(Cha(3),2))

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub63(Cha(4),Gen(1),Sfe7) = 
     &   -(2*MW*(CB*UCha(Cha(4),1)*USfC(Sfe7,1,4,Gen(1)))) + 
     &    Sqrt(2.D0)*(Mf(4,Gen(1))*UCha(Cha(4),2)*USfC(Sfe7,2,4,Gen(1)))

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub69(Cha(4),Gen(2),Sfe7) = 
     &   -(2*MW*(CB*UCha(Cha(4),1)*USfC(Sfe7,1,4,Gen(2)))) + 
     &    Sqrt(2.D0)*(Mf(4,Gen(2))*UCha(Cha(4),2)*USfC(Sfe7,2,4,Gen(2)))

        ENDLOOP(Sfe7)

        LOOP(Sfe8, 1,2,1)

        Sub8(Cha(4),Gen(2),Sfe8) = 
     &   -(2*MW*(SB*USf(Sfe8,1,3,Gen(2))*VChaC(Cha(4),1))) + 
     &    Sqrt(2.D0)*(Mf(3,Gen(2))*USf(Sfe8,2,3,Gen(2))*VChaC(Cha(4),2))

        Sub116(Cha(4),Gen(2),Sfe8) = 
     &   -(2*MW*(CB*UCha(Cha(4),1)*USfC(Sfe8,1,4,Gen(2)))) + 
     &    Sqrt(2.D0)*(Mf(4,Gen(2))*UCha(Cha(4),2)*USfC(Sfe8,2,4,Gen(2)))

        ENDLOOP(Sfe8)

        LOOP(Sfe7, 1,2,1)

        Sub82(Cha(4),Gen(5),Sfe7) = 
     &   -(2*MW*(SB*USf(Sfe7,1,3,Gen(5))*VChaC(Cha(4),1))) + 
     &    Sqrt(2.D0)*(Mf(3,Gen(5))*USf(Sfe7,2,3,Gen(5))*VChaC(Cha(4),2))

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)

        Sub2(Cha(4),Gen(6),Sfe7) = 
     &   -(2*MW*(SB*USf(Sfe7,1,3,Gen(6))*VChaC(Cha(4),1))) + 
     &    Sqrt(2.D0)*(Mf(3,Gen(6))*USf(Sfe7,2,3,Gen(6))*VChaC(Cha(4),2))

        ENDLOOP(Sfe7)

#include "real_contains.h"

        end

