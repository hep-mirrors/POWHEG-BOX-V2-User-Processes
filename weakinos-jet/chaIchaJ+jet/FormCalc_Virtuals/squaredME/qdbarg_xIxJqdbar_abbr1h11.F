#if 0
* qdbarg_xIxJqdbar_abbr1h11.F
* abbreviations for {-F[4, {Gen(1), Col1}], V[5, {Glu2}]} -> {-F[12, {Cha(3)}], F[12, {Cha(4)}], -F[4, {Gen(5), Col5}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 11-Nov-2017 20:04
#endif

#include "qdbarg_xIxJqdbar_vars.h"
#include "virt_inline.h"
#include "virt_contains.h"


        subroutine qdbarg_xIxJqdbar_abbr1h11
        implicit none

#include "qdbarg_xIxJqdbar_vars.h"
#include "virt_inline.h"

        LOOP(Sfe7, 1,2,1)

        Sub131(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (2*(1/2.D0*(F7*S2B*Sub102(Cha(4),Gen(5),Sfe7)) + 
     &        Sqrt(2.D0)*(F1*SB2*Mf(4,Gen(5))*UCha(Cha(4),2)*
     &           USf(Sfe7,1,3,Gen(5)))))/(S2B*SB2)

        Sub132(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (2*(Sqrt(2.D0)*(CB2*F7*Sub102(Cha(4),Gen(5),Sfe7)) + 
     &        F1*S2B*Mf(4,Gen(5))*UCha(Cha(4),2)*USf(Sfe7,1,3,Gen(5))))/
     &    (CB2*S2B)

        Sub2027(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (F4 + 2*F3*Pair1)*(MCha2(Cha(4)) - MSf2(Sfe7,4,Gen(5))) - 
     &    2*Sub1852*MSf(Sfe7,4,Gen(5))*WSf(Sfe7,4,Gen(5))

        Sub2029(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (F6 + 2*F5*Pair1)*(MCha2(Cha(4)) - MSf2(Sfe7,4,Gen(5))) - 
     &    2*Sub1850*MSf(Sfe7,4,Gen(5))*WSf(Sfe7,4,Gen(5))

        Sub2030(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (F6 + 2*F5*Pair1)*(MCha2(Cha(4)) - MSf2(Sfe7,4,Gen(5))) - 
     &    Sub200*MSf(Sfe7,4,Gen(5))*WSf(Sfe7,4,Gen(5))

        Sub2032(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   2*(F4 + 2*F3*Pair1)*(MCha2(Cha(4)) - MSf2(Sfe7,4,Gen(5))) - 
     &    Sub2031*MSf(Sfe7,4,Gen(5))*WSf(Sfe7,4,Gen(5))

        Sub2255(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (-2*(1/2.D0*(F7*S2B*(-MGl2 - Sub2252 + cI*(MGl*WGl))*
     &           Sub102(Cha(4),Gen(5),Sfe7)) - 
     &        F1*SB2*Sub2254*Mf(4,Gen(5))*UCha(Cha(4),2)*
     &         USf(Sfe7,1,3,Gen(5))))/(S2B*SB2)

        Sub2256(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (2*(CB2*F7*Sub2254*Sub102(Cha(4),Gen(5),Sfe7) + 
     &        F1*S2B*(MGl2 + Sub2252 - cI*(MGl*WGl))*Mf(4,Gen(5))*
     &         UCha(Cha(4),2)*USf(Sfe7,1,3,Gen(5))))/(CB2*S2B)

        Sub7600(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   F28*Mino3C*USf(Sfe7,1,4,Gen(5)) - 
     &    2*(F27 + 1/2.D0*(F30*MCha(Cha(4))))*USf(Sfe7,2,4,Gen(5))

        Sub7601(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   2*(F29 + 1/2.D0*(F28*MCha(Cha(4))))*USf(Sfe7,1,4,Gen(5)) - 
     &    F30*Mino3*USf(Sfe7,2,4,Gen(5))

        Sub7603(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   F28*Mino3C*USf(Sfe7,1,4,Gen(5)) - 
     &    (2*F27 + F30*MCha(Cha(4)))*USf(Sfe7,2,4,Gen(5))

        Sub7604(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (2*F29 + F28*MCha(Cha(4)))*USf(Sfe7,1,4,Gen(5)) - 
     &    F30*Mino3*USf(Sfe7,2,4,Gen(5))

        Sub8004(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   F43*MCha(Cha(4)) + 2*F1*Sub7406(Cha(4),Gen(5),Sfe7)

        Sub8005(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   F44*MCha(Cha(4)) + 2*F7*Sub7406(Cha(4),Gen(5),Sfe7)

        Sub8006(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   F43*MCha(Cha(4)) + F1*Sub7407(Cha(4),Gen(5),Sfe7)

        Sub8007(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   F44*MCha(Cha(4)) + F7*Sub7407(Cha(4),Gen(5),Sfe7)

        Sub153(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (2*(1/2.D0*(S2B*Sub102(Cha(4),Gen(5),Sfe7)*
     &           Sub14(HelAll(Gen(5)))) - 
     &        SB2*Sub15(HelAll(Gen(5)))*UCha(Cha(4),2)*
     &         USf(Sfe7,1,3,Gen(5))))/(S2B*SB2)

        Sub154(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (2*(CB2*Sub102(Cha(4),Gen(5),Sfe7)*Sub17(HelAll(Gen(5))) - 
     &        S2B*Sub342(HelAll(Gen(5)))*UCha(Cha(4),2)*
     &         USf(Sfe7,1,3,Gen(5))))/(CB2*S2B)

        Sub343(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (2*(1/2.D0*(S2B*Sub102(Cha(4),Gen(5),Sfe7)*
     &           Sub14(HelAll(Gen(5)))) + 
     &        Sqrt(2.D0)*(SB2*Sub342(HelAll(Gen(5)))*UCha(Cha(4),2)*
     &           USf(Sfe7,1,3,Gen(5)))))/(S2B*SB2)

        Sub344(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (2*(Sqrt(2.D0)*(CB2*Sub102(Cha(4),Gen(5),Sfe7)*
     &           Sub14(HelAll(Gen(5)))) + 
     &        S2B*Sub342(HelAll(Gen(5)))*UCha(Cha(4),2)*
     &         USf(Sfe7,1,3,Gen(5))))/(CB2*S2B)

        Sub352(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (-2*(1/2.D0*(S2B*Sub102(Cha(4),Gen(5),Sfe7)*
     &           Sub14(HelAll(Gen(5)))) + 
     &        Sqrt(2.D0)*(SB2*Sub342(HelAll(Gen(5)))*UCha(Cha(4),2)*
     &           USf(Sfe7,1,3,Gen(5)))))/(S2B*SB2)

        Sub2291(HelAll(Cha(4)),Gen(5),Sfe7) = 
     &   (2*Sub2290*(Sqrt(2.D0)*(CB2*F7*Sub102(Cha(4),Gen(5),Sfe7)) + 
     &        F1*S2B*Mf(4,Gen(5))*UCha(Cha(4),2)*USf(Sfe7,1,3,Gen(5))))/
     &    (CB2*S2B)

        ENDLOOP(Sfe7)

        LOOP(Sfe6, 1,2,1)
        LOOP(Gen6, 1,3,1)

        Sub2573(HelAll(Cha(4)),Gen6,Sfe6) = 
     &   Abb27*Sub2572(Gen6,Sfe6) - Sub4521(HelAll(Cha(4)))

        Sub3251(HelAll(Cha(4)),Gen6,Sfe6) = 
     &   Abb27*Sub3250(Gen6,Sfe6) - Sub4521(HelAll(Cha(4)))

        ENDLOOP(Gen6)
        ENDLOOP(Sfe6)

        LOOP(Sfe6, 1,2,1)

        Sub270(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   (F14*F16 + F7*F8)*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    (F10*F12 + F1*F2)*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub271(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   (F10*F12 + F1*F2)*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    (F14*F16 + F7*F8)*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub274(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub272*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub273*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub280(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   (S - Mf2(4,Gen(5)))*Sub271(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Mf(4,Gen(1))*Sub274(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub316(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub314*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub315*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub317(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub315*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub314*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub333(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   F30*Mf(4,Gen(5))*Sub328(Gen(1),Sfe6) - 
     &    Sub332(HelAll(Gen(1)),Sfe6)

        Sub335(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   F28*Mf2(4,Gen(5))*Sub328(Gen(1),Sfe6) - 
     &    Mf(4,Gen(5))*Sub330(HelAll(Gen(1)),Sfe6)

        Sub519(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Mino3*Sub516(HelAll(Gen(1)),Gen(5))*USf(Sfe6,2,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    Mino3C*Sub518(HelAll(Gen(1)),Gen(5))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub583(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   (F13*F14 + F5*F7)*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    (F1*F3 + F10*F9)*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub597(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   F25*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    F17*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub938(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   -(Sub212(HelAll(Gen(1)))*Sub886(Gen(5),Sfe6)) - 
     &    Mf(4,Gen(5))*Sub937(HelAll(Gen(1)))*USf(Sfe6,1,3,Gen(5))

        Sub1057(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub273*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub272*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub1058(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub1057(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Mf(4,Gen(1))*Sub270(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub1085(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub1057(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Mf(4,Gen(5))*Sub271(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub1120(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   (F35 + 2*F20*Pair1)*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    (F36 + 2*F26*Pair1)*USf(Sfe6,2,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub1121(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Mf(4,Gen(1))*Sub1120(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    (S - Mf2(4,Gen(5)))*Sub597(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub1168(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   -(Sub1146(Gen(1),Gen(5),Sfe6)*Sub500(HelAll(Gen(5)))) + 
     &    Sub1167(HelAll(Gen(5)))*USf(Sfe6,1,3,Gen(1))

        Sub1416(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   (F1*F31 + F10*F40)*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    (F14*F39 + F32*F7)*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub1639(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   (F36 + 2*F26*Pair3)*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    (F35 + 2*F20*Pair3)*USf(Sfe6,2,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub1697(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub1695*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub1696*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub1804(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub500(HelAll(Gen(5)))*
     &    (Mf2(3,Gen(1))*USf(Sfe6,1,3,Gen(1)) - 
     &      Mino3*Mf(3,Gen(1))*USf(Sfe6,2,3,Gen(1)))

        Sub1807(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   -(Sub500(HelAll(Gen(5)))*
     &      (Mf2(3,Gen(1))*USf(Sfe6,1,3,Gen(1)) - 
     &        Mino3*Mf(3,Gen(1))*USf(Sfe6,2,3,Gen(1))))

        Sub1838(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   MGl*WGl*(Sub1836*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &       Sub1837*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))) + 
     &    MGl2*(Sub273*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &       Sub272*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1)))

        Sub1841(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   (MGl2 - cI*(MGl*WGl))*Sub1057(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Sub1838(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Mino3*Sub1839(HelAll(Gen(1)),Gen(5))*USf(Sfe6,2,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) - 
     &    Mino3C*Sub1840(HelAll(Gen(1)),Gen(5))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub2018(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Mino3*Sub1994(HelAll(Gen(5)))*USf(Sfe6,2,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    Mino3C*Sub1995(HelAll(Gen(5)))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub2048(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Mf(4,Gen(5))*Sub1416(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    Sub2018(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub2080(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub2078(HelAll(Gen(1)),Gen(5))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub2079(HelAll(Gen(1)),Gen(5))*USf(Sfe6,2,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub2083(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   -(Mino3*Sub1994(HelAll(Gen(5)))*USf(Sfe6,2,4,Gen(5))*
     &       USfC(Sfe6,1,4,Gen(1))) - 
     &    Mino3C*Sub1995(HelAll(Gen(5)))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub2084(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   2*Sub2080(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    2*Pair1*Sub2083(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Mf(4,Gen(5))*(Mf2(4,Gen(1)) - Mf2(4,Gen(5)))*
     &     Sub271(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub2127(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Mino3*Sub2125(HelAll(Gen(1)))*USf(Sfe6,2,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    Mino3C*Sub2126(HelAll(Gen(1)))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub2228(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub1697(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    (F1*F3 + F10*F9)*Mino3*USf(Sfe6,2,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1))

        Sub2229(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Mf(4,Gen(1))*Sub2228(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    Mino3*Sub1696*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) - 
     &    Mino3C*Sub2126(HelAll(Gen(1)))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub2243(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub478*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub476*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub2244(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Pair3*Sub2127(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    Mf2(4,Gen(5))*Sub2243(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub2250(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Mino3*Sub2248(HelAll(Gen(1)))*USf(Sfe6,2,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    Mino3C*Sub2249(HelAll(Gen(1)))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub2324(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Mino3*Sub2322(HelAll(Gen(5)))*USf(Sfe6,2,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    Mino3C*Sub2323(HelAll(Gen(5)))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub2383(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   F24*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    F23*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub2506(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub2504*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub2505*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub2524(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub2522*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub2523*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub2527(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub2525*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub2526*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub7328(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   F26*Mino3*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    F20*Mino3C*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub7695(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   F36*Mino3*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    F35*Mino3C*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub8085(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   (Mf2(4,Gen(1)) - Mf2(4,Gen(5)))*
     &     Sub597(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    2*Pair1*Sub7328(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub279(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub276(HelAll(Gen(1)))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub278(HelAll(Gen(1)))*USf(Sfe6,2,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub281(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Mf(4,Gen(1))*(S + Mf2(4,Gen(5)))*
     &     Sub270(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Sub279(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    Mf(4,Gen(5))*Sub280(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub320(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub318*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub319*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub1417(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Pair1*Mf(4,Gen(5))*Sub1416(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Sub583(HelAll(Gen(1)),Gen(5),Sfe6)*Sub774(HelAll(Gen(1)),Gen(5))

        Sub1451(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Pair1*Mf(4,Gen(5))*Sub1416(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Abb6*Sub583(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub1478(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Pair1*Mf(4,Gen(5))*Sub1416(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Sub583(HelAll(Gen(1)),Gen(5),Sfe6)*Sub818(HelAll(Gen(1)),Gen(5))

        Sub1657(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub319*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &    Sub318*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))

        Sub1658(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub1657(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    Mf(4,Gen(5))*Sub317(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub1692(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub1657(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    Mf(4,Gen(1))*Sub316(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub1757(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Pair3*Mf(4,Gen(1))*Sub1697(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Abb3*Sub583(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub1797(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub14(HelAll(Gen(5)))*
     &    (Mino3C*USf(Sfe6,1,3,Gen(1)) - 
     &      Mf(3,Gen(1))*USf(Sfe6,2,3,Gen(1)))

        Sub1844(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   -(Mino3*Sub2248(HelAll(Gen(1)))*USf(Sfe6,2,4,Gen(5))*
     &       USfC(Sfe6,1,4,Gen(1))) - 
     &    Mino3C*Sub2249(HelAll(Gen(1)))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub1982(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   -(Sub14(HelAll(Gen(5)))*
     &      (Mino3C*USf(Sfe6,1,3,Gen(1)) - 
     &        Mf(3,Gen(1))*USf(Sfe6,2,3,Gen(1))))

        Sub1996(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub2018(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    (Mf2(4,Gen(1)) - Mf2(4,Gen(5)))*
     &     Sub583(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub2016(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   -(Mino3*Sub2322(HelAll(Gen(5)))*USf(Sfe6,2,4,Gen(5))*
     &       USfC(Sfe6,1,4,Gen(1))) - 
     &    Mino3C*Sub2323(HelAll(Gen(5)))*USf(Sfe6,1,4,Gen(5))*
     &     USfC(Sfe6,2,4,Gen(1))

        Sub2019(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Pair1*Sub2018(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    2*Sub583(HelAll(Gen(1)),Gen(5),Sfe6)*
     &     Sub665(HelAll(Gen(1)),Gen(5))

        Sub2049(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Pair1*Sub2048(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    Sub1957(HelAll(Gen(1)),Gen(5))*Sub583(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub2069(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub32(HelAll(Gen(1)))*
     &    (Mino3*USfC(Sfe6,1,3,Gen(5)) - 
     &      Mf(3,Gen(5))*USfC(Sfe6,2,3,Gen(5)))

        Sub2115(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   MGl*WGl*(Sub2113*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &       Sub2114*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1))) + 
     &    MGl2*(Sub319*USf(Sfe6,1,4,Gen(5))*USfC(Sfe6,1,4,Gen(1)) + 
     &       Sub318*USf(Sfe6,2,4,Gen(5))*USfC(Sfe6,2,4,Gen(1)))

        Sub13295(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   AaB0i37(Epsi(bb1),Sfe6)*Sub281(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    AaB0i37(Epsi(bb0),Sfe6)*Sub519(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub13434(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   AaC0i36(Epsi(cc12),Sfe6)*
     &     Sub1417(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    AaC0i36(Epsi(cc22),Sfe6)*
     &     Sub1478(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    Pair1*AaC0i36(Epsi(cc0),Sfe6)*
     &     Sub1996(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    AaC0i36(Epsi(cc1),Sfe6)*
     &     Sub2019(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    AaC0i36(Epsi(cc2),Sfe6)*Sub2049(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub13435(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   Sub1085(HelAll(Gen(1)),Gen(5),Sfe6)*
     &     Sub13433(Gen(1),Gen(5),Sfe6) + 
     &    2*Sub13434(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    2*Sub13428(Gen(1),Gen(5),Sfe6)*Sub566(HelAll(Gen(1)),Gen(5))*
     &     Sub583(HelAll(Gen(1)),Gen(5),Sfe6)

        Sub13436(HelAll(Gen(1)),Gen(5),Sfe6) = 
     &   -Sub13435(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    18*AaC0i35(Epsi(cc12),Sfe6)*
     &     Sub1451(HelAll(Gen(1)),Gen(5),Sfe6) + 
     &    9*AaC0i35(Epsi(cc0),Sfe6)*
     &     Sub1841(HelAll(Gen(1)),Gen(5),Sfe6) - 
     &    9*AaC0i35(Epsi(cc2),Sfe6)*Sub2084(HelAll(Gen(1)),Gen(5),Sfe6)

        ENDLOOP(Sfe6)

        LOOP(Sfe7, 1,2,1)

        Sub2235(HelAll(Gen(1)),Gen(5),Sfe7) = 
     &   F6*Mf2(4,Gen(1))*USf(Sfe7,1,4,Gen(5)) + 
     &    F5*Pair1*(Mf2(4,Gen(1))*USf(Sfe7,1,4,Gen(5)) - 
     &       Mino3*Mf(4,Gen(5))*USf(Sfe7,2,4,Gen(5)))

        Sub2238(HelAll(Gen(1)),Gen(5),Sfe7) = 
     &   -(F4*Mf2(4,Gen(1))*USf(Sfe7,2,4,Gen(5))) + 
     &    F3*Pair1*(Mino3C*Mf(4,Gen(5))*USf(Sfe7,1,4,Gen(5)) - 
     &       Mf2(4,Gen(1))*USf(Sfe7,2,4,Gen(5)))

        Sub1910(HelAll(Gen(1)),Gen(5),Sfe7) = 
     &   (Abb7 - 2*Pair1*Mf2(4,Gen(1)))*USf(Sfe7,1,4,Gen(5)) + 
     &    Mino3*Pair1*Mf(4,Gen(5))*USf(Sfe7,2,4,Gen(5))

        ENDLOOP(Sfe7)

        LOOP(Sfe7, 1,2,1)
        LOOP(Sfe6, 1,2,1)

        Sub146(HelAll(Gen(5)),Sfe6,Sfe7) = 
     &   Abb1*Sub145(Gen(5),Sfe6,Sfe7) - Abb4*Sub59(Gen(5),Sfe6,Sfe7)

        ENDLOOP(Sfe6)
        ENDLOOP(Sfe7)

#include "virt_contains.h"

        end

