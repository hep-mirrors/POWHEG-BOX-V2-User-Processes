#if 0
* qug_nIxJqd_vert_Gen6_Sfe6_Sfe7.F
* form factors for {F[3, {Gen(1), Col1}], V[5, {Glu2}]} -> {F[11, {Neu(3)}], -F[12, {Cha(4)}], F[4, {Gen(5), Col5}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 11-Nov-2017 22:57
#endif

#include "qug_nIxJqd_vars.h"
#include "virt_inline.h"
#include "virt_contains.h"


        subroutine qug_nIxJqd_vert_Gen6_Sfe6_Sfe7
        implicit none

#include "qug_nIxJqd_vars.h"
        HelType dup1, dup2, tmp1

#include "virt_inline.h"

        dup1 = (1/Sqrt(2.D0)*
     &       (F15*S2B*Sub2811(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)*
     &         Sub32(Cha(4),Gen(1),Sfe6)) - 
     &      2*F9*SB2*Mf(4,Gen(5))*
     &       Sub2812(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)*
     &       UChaC(Cha(4),2)*USfC(Sfe6,1,3,Gen(1)))/(S2B*SB2)

        dup2 = (Sqrt(2.D0)*
     &       (F39*SB2*Sub2304(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &         Sub44(Cha(4),Gen(1),Sfe6)) + 
     &      F34*S2B*Mf(3,Gen(1))*
     &       Sub2305(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &       USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2))/(S2B*SB2)

        tmp1 = ((4*Sub19081(Gen6,Neu(3),Sfe7)*
     &          (1/2.D0*(F39*S2B*
     &               Sub2365(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &               Sub44(Cha(4),Gen(1),Sfe6)) + 
     &            CB2*F34*Mf(3,Gen(1))*
     &             Sub2366(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &             USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2)))/CB2 + 
     &       (2*AaC0i5(Epsi(cc2),Gen6,Sfe7)*
     &          (F39*SB2*Sub2693(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &             Sub44(Cha(4),Gen(1),Sfe6) + 
     &            F34*S2B*Mf(3,Gen(1))*
     &             Sub2696(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &             USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2)))/SB2)/S2B + 
     &    2*(dup2*AaB0i7(Epsi(bb0),Gen6,Sfe7) + 
     &       ((-2*AaC0i5(Epsi(cc0),Gen6,Sfe7)*Mf(3,Gen6)*
     &             (1/2.D0*(F34*S2B*Mf(3,Gen(1))*
     &                  Sub2326(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                  USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2)) + 
     &               F39*SB2*
     &                Sub2325(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                Sub44(Cha(4),Gen(1),Sfe6)))/SB2 + 
     &          (-2*AaC0i3(Epsi(cc1),Gen6,Sfe7)*
     &              (1/2.D0*(F39*S2B*
     &                   Sub2403(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                   Sub44(Cha(4),Gen(1),Sfe6)) - 
     &                2*CB2*F34*Mf(3,Gen(1))*
     &                 Sub2404(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                 USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2)) + 
     &             2*(AaC0i6(Epsi(cc2),Gen6,Sfe7)*
     &                 (1/2.D0*
     &                    (F39*S2B*
     &                      Sub2262(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*Sub44(Cha(4),Gen(1),Sfe6)) + 
     &                   CB2*F34*Mf(3,Gen(1))*
     &                    Sub2265(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,
     &                     Sfe7)*USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2))+
     &                  AaC0i6(Epsi(cc0),Gen6,Sfe7)*Mf(4,Gen6)*
     &                 (1/2.D0*
     &                    (F39*S2B*
     &                      Sub2331(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*Sub44(Cha(4),Gen(1),Sfe6)) + 
     &                   CB2*F34*Mf(3,Gen(1))*
     &                    Sub2332(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,
     &                     Sfe7)*USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2))))
     &            /CB2)/S2B)

        tmp1 = tmp1 - 4*
     &     (dup2*Sub19086(Gen6,Neu(3),Sfe7) + 
     &       Sub2353(HelAll(Cha(4)),Gen(1),Sfe6)*
     &        (AaC0i4(Epsi(cc0),Gen6,Sfe7)*
     &           Sub2352(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &          Pair4*AaC0i4(Epsi(cc22),Gen6,Sfe7)*
     &           Sub2528(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &          AaC0i5(Epsi(cc12),Gen6,Sfe7)*
     &           Sub2589(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)) + 
     &       Sub19091(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &        Sub53(HelAll(Cha(4)),Gen(1),Sfe6) + 
     &       (-((AaC0i3(Epsi(cc12),Gen6,Sfe7)*
     &               (1/Sqrt(2.D0)*
     &                  (F39*S2B*
     &                    Sub2481(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,
     &                     Sfe7)*Sub44(Cha(4),Gen(1),Sfe6)) + 
     &                 2*CB2*F34*Mf(3,Gen(1))*
     &                  Sub2482(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                  USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2)))/CB2) - 
     &          (AaC0i3(Epsi(cc2),Gen6,Sfe7)*
     &              (1/Sqrt(2.D0)*
     &                 (F39*S2B*
     &                   Sub2247(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                   Sub44(Cha(4),Gen(1),Sfe6)) + 
     &                2*CB2*F34*Mf(3,Gen(1))*
     &                 Sub2248(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                 USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2)) + 
     &             Sub19084(Gen6,Neu(3),Sfe7)*
     &              (1/Sqrt(2.D0)*
     &                 (F39*S2B*
     &                   Sub2418(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                   Sub44(Cha(4),Gen(1),Sfe6)) + 
     &                2*CB2*F34*Mf(3,Gen(1))*
     &                 Sub2419(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                 USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2)))/CB2 + 
     &          (-2*AaC0i4(Epsi(cc12),Gen6,Sfe7)*
     &              (-(1/2.D0*
     &                   (F34*S2B*Mf(3,Gen(1))*
     &                     Sub2549(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,
     &                      Sfe7)*USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2)))
     &                  + F39*SB2*
     &                 Sub2548(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                 Sub44(Cha(4),Gen(1),Sfe6)) + 
     &             AaC0i4(Epsi(cc1),Gen6,Sfe7)*
     &              (Sqrt(2.D0)*
     &                 (F39*SB2*
     &                   Sub2467(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                   Sub44(Cha(4),Gen(1),Sfe6)) + 
     &                F34*S2B*Mf(3,Gen(1))*
     &                 Sub2468(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                 USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2)) + 
     &             Sub19082(Gen6,Neu(3),Sfe7)*
     &              (Sqrt(2.D0)*
     &                 (F39*SB2*
     &                   Sub2506(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                   Sub44(Cha(4),Gen(1),Sfe6)) + 
     &                F34*S2B*Mf(3,Gen(1))*
     &                 Sub2507(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                 USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2)) + 
     &             AaC0i4(Epsi(cc2),Gen6,Sfe7)*
     &              (Sqrt(2.D0)*
     &                 (F39*SB2*
     &                   Sub2653(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                   Sub44(Cha(4),Gen(1),Sfe6)) + 
     &                F34*S2B*Mf(3,Gen(1))*
     &                 Sub2654(HelAll(Gen(5)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                 USf(Sfe6,1,4,Gen(1))*VCha(Cha(4),2)))/SB2)/S2B)

        Cloop(HelAll(1)) = 
     &   Cloop(HelAll(1)) + 
     &    Alfa/(CW*MW2*SW2)*
     &     (Alfas*GS*(1/12.D0*tmp1/(T14 - Sub347(Gen(1),Sfe6)) - 
     &          1/12.D0*(4*Pair4*
     &               (AaC0i3(Epsi(cc0),Gen6,Sfe7)*Mf(4,Gen6)*
     &                  Sub2684(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)*
     &                  Sub2685(HelAll(Cha(4)),Gen(1),Gen(5),Sfe6) + 
     &                 AaC0i4(Epsi(cc0),Gen6,Sfe7)*Mf(3,Gen6)*
     &                  Sub1505(HelAll(Cha(4)),Gen(1),Gen(5),Sfe6)*
     &                  Sub2698(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7))-
     &                (2*((AaC0i5(Epsi(cc2),Gen6,Sfe7)*
     &                      (1/2.D0*
     &                       (F15*S2B*
     &                       Sub2678(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*Sub32(Cha(4),Gen(1),Sfe6)) + 
     &                       2*F9*SB2*Mf(4,Gen(5))*
     &                       Sub2681(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*UChaC(Cha(4),2)*
     &                       USfC(Sfe6,1,3,Gen(1))))/SB2 + 
     &                   (Sub19081(Gen6,Neu(3),Sfe7)*
     &                      (Sqrt(2.D0)*
     &                       (CB2*F15*
     &                       Sub2715(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*Sub32(Cha(4),Gen(1),Sfe6)) - 
     &                       F9*S2B*Mf(4,Gen(5))*
     &                       Sub2716(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*UChaC(Cha(4),2)*
     &                       USfC(Sfe6,1,3,Gen(1))))/CB2))/S2B + 
     &              2*(dup1*AaB0i7(Epsi(bb0),Gen6,Sfe7) + 
     &                 ((2*
     &                       (AaC0i6(Epsi(cc0),Gen6,Sfe7)*
     &                       Mf(4,Gen6)*
     &                       (1/2.D0*
     &                       (F9*S2B*Mf(4,Gen(5))*
     &                       Sub2744(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*UChaC(Cha(4),2)*
     &                       USfC(Sfe6,1,3,Gen(1))) + 
     &                       CB2*F15*
     &                       Sub2743(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*Sub32(Cha(4),Gen(1),Sfe6)) + 
     &                       AaC0i6(Epsi(cc2),Gen6,Sfe7)*
     &                       (1/2.D0*
     &                       (F9*S2B*Mf(4,Gen(5))*
     &                       Sub2803(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*UChaC(Cha(4),2)*
     &                       USfC(Sfe6,1,3,Gen(1))) + 
     &                       CB2*F15*
     &                       Sub2800(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*Sub32(Cha(4),Gen(1),Sfe6))))/CB2 + 
     &                    (AaC0i5(Epsi(cc0),Gen6,Sfe7)*Mf(3,Gen6)*
     &                       (1/Sqrt(2.D0)*
     &                       (F15*S2B*
     &                       Sub2818(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*Sub32(Cha(4),Gen(1),Sfe6)) + 
     &                       2*F9*SB2*Mf(4,Gen(5))*
     &                       Sub2819(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*UChaC(Cha(4),2)*
     &                       USfC(Sfe6,1,3,Gen(1))))/SB2)/S2B) - 
     &              4*(Sub1505(HelAll(Cha(4)),Gen(1),Gen(5),Sfe6)*
     &                  Sub19083(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)+
     &                   dup1*Sub19086(Gen6,Neu(3),Sfe7) + 
     &                 Sub2685(HelAll(Cha(4)),Gen(1),Gen(5),Sfe6)*
     &                  (Sub19085(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                     Sfe7) - 
     &                    AaC0i3(Epsi(cc12),Gen6,Sfe7)*
     &                     Sub2773(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                      Sfe7)) + 
     &                 ((-2*
     &                       (AaC0i3(Epsi(cc1),Gen6,Sfe7)*
     &                       (1/2.D0*
     &                       (F9*S2B*Mf(4,Gen(5))*
     &                       Sub2754(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*UChaC(Cha(4),2)*
     &                       USfC(Sfe6,1,3,Gen(1))) + 
     &                       CB2*F15*
     &                       Sub2753(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*Sub32(Cha(4),Gen(1),Sfe6)) + 
     &                       Sub19084(Gen6,Neu(3),Sfe7)*
     &                       (1/2.D0*
     &                       (F9*S2B*Mf(4,Gen(5))*
     &                       Sub2768(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*UChaC(Cha(4),2)*
     &                       USfC(Sfe6,1,3,Gen(1))) + 
     &                       CB2*F15*
     &                       Sub2767(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*Sub32(Cha(4),Gen(1),Sfe6))))/CB2 + 
     &                    (2*
     &                       (AaC0i4(Epsi(cc1),Gen6,Sfe7)*
     &                       (1/2.D0*
     &                       (F15*S2B*
     &                       Sub2561(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*Sub32(Cha(4),Gen(1),Sfe6)) + 
     &                       F9*SB2*Mf(4,Gen(5))*
     &                       Sub2562(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*UChaC(Cha(4),2)*
     &                       USfC(Sfe6,1,3,Gen(1))) + 
     &                       Sub19082(Gen6,Neu(3),Sfe7)*
     &                       (1/2.D0*
     &                       (F15*S2B*
     &                       Sub2594(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*Sub32(Cha(4),Gen(1),Sfe6)) + 
     &                       F9*SB2*Mf(4,Gen(5))*
     &                       Sub2595(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)*UChaC(Cha(4),2)*
     &                       USfC(Sfe6,1,3,Gen(1)))))/SB2)/S2B))/
     &            (Sub18749(Cha(4),Gen(1),Gen(5),Neu(3)) + 
     &              Sub293(Gen(1),Sfe6)))*IndexDelta(Gen(1),Gen(5)))/
     &      (MGl2 - U - cI*(MGl*WGl))

#if DEBUG >= 4
        DEB("qug_nIxJqd_vert_Gen6_Sfe6_Sfe7:Cloop(1)", Cloop(HelAll(1)))
#endif

#include "virt_contains.h"

        end

