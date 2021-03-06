#if 0
* qdqubar_nIxJg_vert_Gen6_Sfe6_Sfe7.F
* form factors for {F[4, {Gen(1), Col1}], -F[3, {Gen(2), Col2}]} -> {F[11, {Neu(3)}], F[12, {Cha(4)}], V[5, {Glu5}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 11-Nov-2017 22:08
#endif

#include "qdqubar_nIxJg_vars.h"
#include "virt_inline.h"
#include "virt_contains.h"


        subroutine qdqubar_nIxJg_vert_Gen6_Sfe6_Sfe7
        implicit none

#include "qdqubar_nIxJg_vars.h"
        HelType dup1, tmp1, tmp2, tmp3, tmp4

#include "virt_inline.h"

        dup1 = (2*(CB2*
     &         (1/2.D0*(S2B*Sub2583(HelAll(Cha(4)),Gen(1),Sfe6)*
     &              Sub2584(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)) + 
     &           Sqrt(2.D0)*(F4*
     &              Sub2581(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)*
     &              Sub29(Cha(4),Gen(1),Sfe6))) + 
     &        1/2.D0*(F32*S2B*Mf(4,Gen(1))*
     &           Sub2582(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)*
     &           UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1)))))/(CB2*S2B)

        tmp1 = -(dup1*
     &       Sub21438(Cha(4),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)) + 
     &    Sub2583(HelAll(Cha(4)),Gen(1),Sfe6)*
     &     (AaC0i6(Epsi(cc0),Gen6,Sfe7)*
     &        ((Abb101 - Pair3*Sub1516(Cha(4),Gen(1),Neu(3)))*
     &           Sub2653(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &          Pair3*Mf(4,Gen6)*
     &           Sub2654(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)) + 
     &       AaC0i6(Epsi(cc2),Gen6,Sfe7)*
     &        ((Abb103 - Pair3*Sub2391(Cha(4),Gen(1),Gen(2),Neu(3)))*
     &           Sub2653(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &          Pair3*Sub2899(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)))+
     &      AaC0i6(Epsi(cc22),Gen6,Sfe7)*
     &     (Sub2653(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)*
     &        Sub2945(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3),Sfe6) + 
     &       Pair3*Sub2583(HelAll(Cha(4)),Gen(1),Sfe6)*
     &        Sub2946(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)) + 
     &    AaC0i7(Epsi(cc0),Gen6,Sfe7)*
     &     ((Abb101 - Pair3*Sub1516(Cha(4),Gen(1),Neu(3)))*
     &        Sub2378(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &       Pair3*Mf(3,Gen6)*
     &        Sub2380(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7))*
     &     Sub32(HelAll(Cha(4)),Gen(1),Sfe6) - 
     &    AaC0i7(Epsi(cc1),Gen6,Sfe7)*
     &     (1/Sqrt(2.D0)*(F4*Sub29(Cha(4),Gen(1),Sfe6)*
     &           (Pair3*Mf(3,Gen6)*
     &              Sub2379(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &             Sub2462(HelAll(Cha(4)),Gen(1),Gen6,Neu(3),Sfe7)*
     &              USfC(Sfe6,1,3,Gen(2)) + 
     &             2*Sub2466(HelAll(Cha(4)),Gen(1),Gen6,Neu(3),Sfe7)*
     &              USfC(Sfe6,2,3,Gen(2))))/SB2 + 
     &       Pair3*Sub2473(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)*
     &        Sub32(HelAll(Cha(4)),Gen(1),Sfe6) + 
     &       (F32*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1))*
     &          (Pair3*Mf(3,Gen6)*
     &             Sub2379(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &            Sub2321(Gen6,Neu(3),Sfe7)*
     &             Sub2461(HelAll(Cha(4)),Gen(1),Neu(3))*
     &             USfC(Sfe6,1,3,Gen(2)) + 
     &            Sub2325(Gen6,Neu(3),Sfe7)*
     &             Sub2465(HelAll(Cha(4)),Gen(1),Neu(3))*
     &             USfC(Sfe6,2,3,Gen(2))))/(CB*SB)) + 
     &    Sub32(HelAll(Cha(4)),Gen(1),Sfe6)*
     &     (AaC0i7(Epsi(cc2),Gen6,Sfe7)*
     &        (Sub2378(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)*
     &           (Abb103 - Pair3*Sub2391(Cha(4),Gen(1),Gen(2),Neu(3))) - 
     &          Pair3*Sub2394(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)) - 
     &       AaC0i7(Epsi(cc22),Gen6,Sfe7)*
     &        Sub2550(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &       Sub21430(Cha(4),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &        (Pair3*MNeu(Neu(3))*
     &           Sub2572(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &          Sub2321(Gen6,Neu(3),Sfe7)*
     &           Sub2569(HelAll(Cha(4)),Gen(1),Neu(3))*
     &           USfC(Sfe6,1,3,Gen(2)) + 
     &          Sub2325(Gen6,Neu(3),Sfe7)*
     &           Sub2570(HelAll(Cha(4)),Gen(1),Neu(3))*
     &           USfC(Sfe6,2,3,Gen(2))) - 
     &       AaC0i7(Epsi(cc12),Gen6,Sfe7)*
     &        (Pair3*Sub2614(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &          Sub2321(Gen6,Neu(3),Sfe7)*
     &           Sub2610(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &           USfC(Sfe6,1,3,Gen(2)) + 
     &          Sub2325(Gen6,Neu(3),Sfe7)*
     &           Sub2612(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &           USfC(Sfe6,2,3,Gen(2)))) + 
     &    Sub2583(HelAll(Cha(4)),Gen(1),Sfe6)*
     &     (Sub21435(Cha(4),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &        (Pair3*MNeu(Neu(3))*
     &           Sub2781(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &          Sub2569(HelAll(Cha(4)),Gen(1),Neu(3))*
     &           Sub2577(Gen6,Neu(3),Sfe7)*USfC(Sfe6,1,3,Gen(2)) + 
     &          Sub2570(HelAll(Cha(4)),Gen(1),Neu(3))*
     &           Sub2580(Gen6,Neu(3),Sfe7)*USfC(Sfe6,2,3,Gen(2))) + 
     &       AaC0i6(Epsi(cc12),Gen6,Sfe7)*
     &        (Pair3*Sub2813(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &          Sub2577(Gen6,Neu(3),Sfe7)*
     &           Sub2610(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &           USfC(Sfe6,1,3,Gen(2)) + 
     &          Sub2580(Gen6,Neu(3),Sfe7)*
     &           Sub2612(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &           USfC(Sfe6,2,3,Gen(2)))) + 
     &    AaC0i4(Epsi(cc12),Gen6,Sfe7)*
     &     (-(1/Sqrt(2.D0)*(F4*Sub29(Cha(4),Gen(1),Sfe6)*
     &             (Sub2670(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &                USfC(Sfe6,1,3,Gen(2)) + 
     &               Sub2674(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                 Sfe7)*USfC(Sfe6,2,3,Gen(2))))/SB2) + 
     &       Pair3*Sub2676(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)*
     &        Sub32(HelAll(Cha(4)),Gen(1),Sfe6) - 
     &       (F32*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1))*
     &          (Sub2660(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &             USfC(Sfe6,1,3,Gen(2)) - 
     &            Sub2665(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &             USfC(Sfe6,2,3,Gen(2))))/(CB*SB))

        tmp1 = tmp1 + AaC0i6(Epsi(cc1),Gen6,Sfe7)*
     &     (Pair3*Sub2583(HelAll(Cha(4)),Gen(1),Sfe6)*
     &        Sub2707(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &       (F4*(1/Sqrt(2.D0)*
     &             (Pair3*Mf(4,Gen6)*
     &               Sub2652(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)) + 
     &            Sqrt(2.D0)*
     &             (Sub2460(HelAll(Cha(4)),Gen(1),Neu(3))*
     &                Sub2577(Gen6,Neu(3),Sfe7)*USfC(Sfe6,1,3,Gen(2))+
     &                 Sub2464(HelAll(Cha(4)),Gen(1),Neu(3))*
     &                Sub2580(Gen6,Neu(3),Sfe7)*USfC(Sfe6,2,3,Gen(2))))
     &           *Sub29(Cha(4),Gen(1),Sfe6))/(CB*SB) + 
     &       (F32*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1))*
     &          (Pair3*Mf(4,Gen6)*
     &             Sub2652(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &            Sub2461(HelAll(Cha(4)),Gen(1),Neu(3))*
     &             Sub2577(Gen6,Neu(3),Sfe7)*USfC(Sfe6,1,3,Gen(2)) + 
     &            Sub2465(HelAll(Cha(4)),Gen(1),Neu(3))*
     &             Sub2580(Gen6,Neu(3),Sfe7)*USfC(Sfe6,2,3,Gen(2))))/
     &        CB2) - AaC0i5(Epsi(cc12),Gen6,Sfe7)*
     &     (1/Sqrt(2.D0)*(F4*Sub29(Cha(4),Gen(1),Sfe6)*
     &           (Sub2819(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &              USfC(Sfe6,1,3,Gen(2)) + 
     &             Sub2823(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &              USfC(Sfe6,2,3,Gen(2))))/(CB*SB) + 
     &       Pair3*Sub2583(HelAll(Cha(4)),Gen(1),Sfe6)*
     &        Sub2825(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &       (F32*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1))*
     &          (Sub2577(Gen6,Neu(3),Sfe7)*
     &             Sub2657(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             USfC(Sfe6,1,3,Gen(2)) + 
     &            Sub2580(Gen6,Neu(3),Sfe7)*
     &             Sub2662(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             USfC(Sfe6,2,3,Gen(2))))/CB2)

        tmp2 = -2*tmp1 - dup1*AaB0i3(Epsi(bb0),Gen6,Sfe7) - 
     &    (Sub21432(Cha(4),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &       (S2B*(1/Sqrt(2.D0)*
     &             (F4*Sub2329(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)*
     &               Sub29(Cha(4),Gen(1),Sfe6)) - 
     &            SB2*Sub2330(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)*
     &             Sub32(HelAll(Cha(4)),Gen(1),Sfe6)) + 
     &         2*F32*SB2*Mf(4,Gen(1))*
     &          Sub2326(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)*
     &          UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1))))/(S2B*SB2) + 
     &    AaC0i4(Epsi(cc0),Gen6,Sfe7)*Mf(3,Gen6)*
     &     (Sqrt(2.D0)*(F4*Sub29(Cha(4),Gen(1),Sfe6)*
     &           (-(1/2.D0*(Sub2359(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                   Sfe7)*USfC(Sfe6,2,3,Gen(2)))) + 
     &             Sub2363(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &              USfC(Sfe6,1,3,Gen(2))))/SB2 + 
     &       Mino3*Sub2365(HelAll(Cha(4)),Gen(1),Gen6,Neu(3),Sfe6,Sfe7)*
     &        USfC(Sfe6,1,3,Gen(2)) - 
     &       Mino3C*Sub2366(HelAll(Cha(4)),Gen(1),Gen6,Neu(3),Sfe6,Sfe7)*
     &        USfC(Sfe6,2,3,Gen(2)) + 
     &       (F32*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1))*
     &          (Sub2350(Gen6,Neu(3),Sfe7)*
     &             Sub2354(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             USfC(Sfe6,1,3,Gen(2)) - 
     &            Sub2347(Gen6,Neu(3),Sfe7)*
     &             Sub2353(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             USfC(Sfe6,2,3,Gen(2))))/(CB*SB)) - 
     &    AaC0i4(Epsi(cc1),Gen6,Sfe7)*
     &     (Sqrt(2.D0)*(F4*Sub29(Cha(4),Gen(1),Sfe6)*
     &           (1/2.D0*(Sub2536(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                 Sfe7)*USfC(Sfe6,2,3,Gen(2))) + 
     &             Sub2529(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &              USfC(Sfe6,1,3,Gen(2))))/SB2 + 
     &       Sub2330(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)*
     &        Sub32(HelAll(Cha(4)),Gen(1),Sfe6)*
     &        Sub704(Cha(4),Gen(1),Gen(2),Neu(3)) + 
     &       (F32*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1))*
     &          (Sub2321(Gen6,Neu(3),Sfe7)*
     &             Sub2538(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             USfC(Sfe6,1,3,Gen(2)) - 
     &            Sub2325(Gen6,Neu(3),Sfe7)*
     &             Sub2539(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             USfC(Sfe6,2,3,Gen(2))))/(CB*SB)) - 
     &    AaC0i5(Epsi(cc2),Gen6,Sfe7)*
     &     (Sqrt(2.D0)*(F4*Sub29(Cha(4),Gen(1),Sfe6)*
     &           (Pair3*Mf(4,Gen6)*
     &              Sub2652(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &             Sub2501(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &              Sub2577(Gen6,Neu(3),Sfe7)*USfC(Sfe6,1,3,Gen(2)) - 
     &             Sub2508(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &              Sub2580(Gen6,Neu(3),Sfe7)*USfC(Sfe6,2,3,Gen(2))))/
     &         (CB*SB) + Mino3*
     &        Sub2935(HelAll(Cha(4)),Gen(1),Gen6,Neu(3),Sfe6,Sfe7)*
     &        USfC(Sfe6,1,3,Gen(2)) + 
     &       Mino3C*Sub2938(HelAll(Cha(4)),Gen(1),Gen6,Neu(3),Sfe6,Sfe7)*
     &        USfC(Sfe6,2,3,Gen(2)) + 
     &       (F32*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1))*
     &          (2*Pair3*Mf(4,Gen6)*
     &             Sub2652(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &            Sub2490(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             Sub2577(Gen6,Neu(3),Sfe7)*USfC(Sfe6,1,3,Gen(2)) + 
     &            Sub2496(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             Sub2580(Gen6,Neu(3),Sfe7)*USfC(Sfe6,2,3,Gen(2))))/
     &        CB2) + AaC0i5(Epsi(cc1),Gen6,Sfe7)*
     &     (1/Sqrt(2.D0)*(F4*Sub29(Cha(4),Gen(1),Sfe6)*
     &           (Sub2525(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &              Sub2577(Gen6,Neu(3),Sfe7)*USfC(Sfe6,1,3,Gen(2)) + 
     &             Sub2532(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &              Sub2580(Gen6,Neu(3),Sfe7)*USfC(Sfe6,2,3,Gen(2))))/
     &         (CB*SB) + Sub2583(HelAll(Cha(4)),Gen(1),Sfe6)*
     &        Sub2584(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)*
     &        Sub704(Cha(4),Gen(1),Gen(2),Neu(3)) - 
     &       (F32*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1))*
     &          (Sub2538(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             Sub2577(Gen6,Neu(3),Sfe7)*USfC(Sfe6,1,3,Gen(2)) + 
     &            Sub2539(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             Sub2580(Gen6,Neu(3),Sfe7)*USfC(Sfe6,2,3,Gen(2))))/
     &        CB2)

        tmp2 = tmp2 + AaC0i4(Epsi(cc2),Gen6,Sfe7)*
     &     ((F4*(Sqrt(2.D0)*(Pair3*Mf(3,Gen6)*
     &               Sub2379(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7)) + 
     &            1/Sqrt(2.D0)*
     &             (Sub2505(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &                USfC(Sfe6,1,3,Gen(2)) - 
     &               2*Sub2511(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                 Sfe7)*USfC(Sfe6,2,3,Gen(2))))*
     &          Sub29(Cha(4),Gen(1),Sfe6))/SB2 + 
     &       Mino3*Sub2517(HelAll(Cha(4)),Gen(1),Gen6,Neu(3),Sfe6,Sfe7)*
     &        USfC(Sfe6,1,3,Gen(2)) - 
     &       Mino3C*Sub2520(HelAll(Cha(4)),Gen(1),Gen6,Neu(3),Sfe6,Sfe7)*
     &        USfC(Sfe6,2,3,Gen(2)) + 
     &       (F32*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1))*
     &          (2*Pair3*Mf(3,Gen6)*
     &             Sub2379(HelAll(Gen(2)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &            Sub2492(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &             USfC(Sfe6,1,3,Gen(2)) - 
     &            Sub2497(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &             USfC(Sfe6,2,3,Gen(2))))/(CB*SB)) + 
     &    AaC0i5(Epsi(cc0),Gen6,Sfe7)*Mf(4,Gen6)*
     &     (1/2.D0*(Mino3*Sub2639(Gen6,Neu(3),Sfe7)*
     &          Sub2643(HelAll(Cha(4)),Gen(1),Neu(3),Sfe6)*
     &          USfC(Sfe6,1,3,Gen(2))) - 
     &       Sqrt(2.D0)*(F4*Sub29(Cha(4),Gen(1),Sfe6)*
     &           (Sub2361(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &              Sub2640(Gen6,Neu(3),Sfe7)*USfC(Sfe6,1,3,Gen(2)) + 
     &             Sub2356(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &              Sub2639(Gen6,Neu(3),Sfe7)*USfC(Sfe6,2,3,Gen(2))))/
     &         (CB*SB) + Mino3C*Sub2640(Gen6,Neu(3),Sfe7)*
     &        Sub2644(HelAll(Cha(4)),Gen(1),Neu(3),Sfe6)*
     &        USfC(Sfe6,2,3,Gen(2)) - 
     &       (F32*Mf(4,Gen(1))*UCha(Cha(4),2)*USf(Sfe6,1,3,Gen(1))*
     &          (Sub2354(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             Sub2640(Gen6,Neu(3),Sfe7)*USfC(Sfe6,1,3,Gen(2)) + 
     &            Sub2353(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             Sub2639(Gen6,Neu(3),Sfe7)*USfC(Sfe6,2,3,Gen(2))))/
     &        CB2)

        tmp3 = Sub2686(HelAll(Cha(4)),Gen(1),Gen(2),Sfe6)*
     &     (2*Pair3*MNeu(Neu(3))*
     &        Sub21430(Cha(4),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &        Sub2685(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &       Sub21432(Cha(4),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &        Sub2688(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)) - 
     &    Sub21439(Cha(4),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &     Sub2723(HelAll(Cha(4)),Gen(1),Gen(2),Sfe6)*
     &     Sub3084(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &    AaC0i6(Epsi(cc2),Gen6,Sfe7)*
     &     (Sqrt(2.D0)*(F38*Sub16(Cha(4),Gen(1),Sfe6)*
     &           (2*Sub2590(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &              Sub2679(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &             Pair3*Sub2893(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7))
     &           )/CB2 + (2*F35*Mf(3,Gen(2))*
     &          (Sub2587(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             Sub2679(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &            Pair3*Sub2893(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7))*
     &          USfC(Sfe6,1,4,Gen(1))*VChaC(Cha(4),2))/(CB*SB)) + 
     &    AaC0i4(Epsi(cc2),Gen6,Sfe7)*
     &     ((F38*Sub16(Cha(4),Gen(1),Sfe6)*
     &          (Sqrt(2.D0)*(Pair3*Mf(3,Gen6)*
     &               Sub2595(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)) - 
     &            1/2.D0*(Mino3C*Sub2632(HelAll(Gen6),Neu(3),Sfe7)*
     &               USf(Sfe6,1,4,Gen(1))) + 
     &            1/Sqrt(2.D0)*
     &             (Sub2629(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &                USf(Sfe6,1,4,Gen(1)) + 
     &               Sub2624(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                 Sfe7)*USf(Sfe6,2,4,Gen(1))) + 
     &            Mino3*Sub2633(HelAll(Gen6),Neu(3),Sfe7)*
     &             USf(Sfe6,2,4,Gen(1))))/(CB*SB) + 
     &       (F35*Mf(3,Gen(2))*
     &          (2*Pair3*Mf(3,Gen6)*
     &             Sub2595(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &            (Sub2325(Gen6,Neu(3),Sfe7)*
     &                Sub2626(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)) - 
     &               Mino3C*Sub2635(HelAll(Gen6),Neu(3),Sfe7))*
     &             USf(Sfe6,1,4,Gen(1)) + 
     &            (Sub2321(Gen6,Neu(3),Sfe7)*
     &                Sub2623(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)) + 
     &               Mino3*Sub2636(HelAll(Gen6),Neu(3),Sfe7))*
     &             USf(Sfe6,2,4,Gen(1)))*USfC(Sfe6,1,4,Gen(1))*
     &          VChaC(Cha(4),2))/SB2) - 
     &    AaC0i4(Epsi(cc0),Gen6,Sfe7)*Mf(3,Gen6)*
     &     (1/Sqrt(2.D0)*(F38*Sub16(Cha(4),Gen(1),Sfe6)*
     &           ((Mino3C*Sub2350(Gen6,Neu(3),Sfe7)*
     &                 Sub2748(HelAll(Neu(3))) - 
     &                Sub2758(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                 Sfe7))*USf(Sfe6,1,4,Gen(1)) - 
     &             (Mino3*Sub1596(HelAll(Neu(3)))*
     &                 Sub2347(Gen6,Neu(3),Sfe7) + 
     &                Sub2763(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                 Sfe7))*USf(Sfe6,2,4,Gen(1))))/(CB*SB) + 
     &       (F35*Mf(3,Gen(2))*
     &          ((Mino3C*Sub2350(Gen6,Neu(3),Sfe7)*
     &                Sub2748(HelAll(Neu(3))) - 
     &               Sub2347(Gen6,Neu(3),Sfe7)*
     &                Sub2749(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &             USf(Sfe6,1,4,Gen(1)) - 
     &            (Mino3*Sub1596(HelAll(Neu(3)))*
     &                Sub2347(Gen6,Neu(3),Sfe7) + 
     &               Sub2752(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)
     &               )*USf(Sfe6,2,4,Gen(1)))*USfC(Sfe6,1,4,Gen(1))*
     &          VChaC(Cha(4),2))/SB2) - 
     &    (2*(AaC0i6(Epsi(cc0),Gen6,Sfe7)*
     &          (1/2.D0*(F38*S2B*Sub16(Cha(4),Gen(1),Sfe6)*
     &               Sub2681(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)) + 
     &            2*CB2*F35*Mf(3,Gen(2))*
     &             Sub2682(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)*
     &             USfC(Sfe6,1,4,Gen(1))*VChaC(Cha(4),2)) + 
     &         AaC0i6(Epsi(cc1),Gen6,Sfe7)*
     &          (1/2.D0*(F38*S2B*Sub16(Cha(4),Gen(1),Sfe6)*
     &               Sub2718(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)) - 
     &            2*CB2*F35*Mf(3,Gen(2))*
     &             Sub2719(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)*
     &             USfC(Sfe6,1,4,Gen(1))*VChaC(Cha(4),2))))/(CB2*S2B)

        tmp3 = tmp3 + AaC0i5(Epsi(cc0),Gen6,Sfe7)*Mf(4,Gen6)*
     &     ((F38*(1/Sqrt(2.D0)*
     &             Sub3122(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &            Sqrt(2.D0)*
     &             (-(1/2.D0*
     &                  (Sub2640(Gen6,Neu(3),Sfe7)*
     &                    Sub2760(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &                    USf(Sfe6,2,4,Gen(1)))) + 
     &               Sub2639(Gen6,Neu(3),Sfe7)*
     &                Sub2755(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &                USf(Sfe6,1,4,Gen(1))))*Sub16(Cha(4),Gen(1),Sfe6))/
     &        CB2 + (F35*Mf(3,Gen(2))*
     &          ((Mino3C*Sub2640(Gen6,Neu(3),Sfe7)*
     &                Sub2748(HelAll(Neu(3))) + 
     &               Sub2639(Gen6,Neu(3),Sfe7)*
     &                Sub2749(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &             USf(Sfe6,1,4,Gen(1)) + 
     &            (Mino3*Sub1596(HelAll(Neu(3)))*
     &                Sub2639(Gen6,Neu(3),Sfe7) - 
     &               Sub2640(Gen6,Neu(3),Sfe7)*
     &                Sub2760(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &             USf(Sfe6,2,4,Gen(1)))*USfC(Sfe6,1,4,Gen(1))*
     &          VChaC(Cha(4),2))/(CB*SB))

        tmp4 = (2*(AaC0i7(Epsi(cc0),Gen6,Sfe7)*
     &          (1/2.D0*(F35*S2B*Mf(3,Gen(2))*
     &               Sub2778(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)*
     &               USfC(Sfe6,1,4,Gen(1))*VChaC(Cha(4),2)) + 
     &            F38*SB2*Sub16(Cha(4),Gen(1),Sfe6)*
     &             Sub2777(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)) + 
     &         AaC0i7(Epsi(cc1),Gen6,Sfe7)*
     &          (1/2.D0*(F35*S2B*Mf(3,Gen(2))*
     &               Sub2927(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)*
     &               USfC(Sfe6,1,4,Gen(1))*VChaC(Cha(4),2)) + 
     &            F38*SB2*Sub16(Cha(4),Gen(1),Sfe6)*
     &             Sub2926(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7))))/
     &     (S2B*SB2) - Pair3*Sub2723(HelAll(Cha(4)),Gen(1),Gen(2),Sfe6)*
     &     (MNeu(Neu(3))*Sub21435(Cha(4),Gen(1),Gen(2),Gen6,Neu(3),Sfe7)*
     &        Sub2722(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7) - 
     &       AaC0i6(Epsi(cc12),Gen6,Sfe7)*
     &        ((Mino3C*(F85 - F86 - F29*MNeu(Neu(3)))*
     &              Sub2577(Gen6,Neu(3),Sfe7) - 
     &             Sub2580(Gen6,Neu(3),Sfe7)*
     &              Sub2769(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &           USf(Sfe6,1,4,Gen(1)) + 
     &          (-(Mino3*(F83 - F84 + F22*MNeu(Neu(3)))*
     &                Sub2580(Gen6,Neu(3),Sfe7)) + 
     &             Sub2577(Gen6,Neu(3),Sfe7)*
     &              Sub2768(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &           USf(Sfe6,2,4,Gen(1)))) + 
     &    AaC0i7(Epsi(cc2),Gen6,Sfe7)*
     &     ((F38*(1/Sqrt(2.D0)*
     &             (Pair3*Sub2598(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                Sfe7)) + 
     &            Sqrt(2.D0)*
     &             (-(1/2.D0*
     &                  (F22*
     &                    Sub2592(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                     Sfe7)*USf(Sfe6,2,4,Gen(1)))) + 
     &               F29*Sub2593(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                 Sfe7)*USf(Sfe6,1,4,Gen(1))))*
     &          Sub16(Cha(4),Gen(1),Sfe6))/(CB*SB) + 
     &       (F35*Mf(3,Gen(2))*
     &          (Sub2587(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &             Sub2588(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &            Pair3*Sub2598(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7))*
     &          USfC(Sfe6,1,4,Gen(1))*VChaC(Cha(4),2))/SB2) - 
     &    Pair3*(-(AaC0i7(Epsi(cc22),Gen6,Sfe7)*
     &          (1/Sqrt(2.D0)*
     &             (F38*Sub16(Cha(4),Gen(1),Sfe6)*
     &                (((F85 - F86)*Mino3C*
     &                      Sub2321(Gen6,Neu(3),Sfe7) - 
     &                     F29*
     &                      Sub2647(Cha(4),Gen(1),Gen(2),Gen6,Neu(3),Sfe7))
     &                    *USf(Sfe6,1,4,Gen(1)) + 
     &                  ((F83 - F84)*Mino3*
     &                      Sub2325(Gen6,Neu(3),Sfe7) - 
     &                     F22*
     &                      Sub2646(Cha(4),Gen(1),Gen(2),Gen6,Neu(3),Sfe7))
     &                    *USf(Sfe6,2,4,Gen(1))))/(CB*SB) + 
     &            (F35*Mf(3,Gen(2))*
     &               (Sub2352(Cha(4),Gen(1),Gen(2),Neu(3))*
     &                  Sub2588(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7)+
     &                   (F85 - F86)*Mino3C*
     &                  Sub2321(Gen6,Neu(3),Sfe7)*USf(Sfe6,1,4,Gen(1))+
     &                   (F83 - F84)*Mino3*
     &                  Sub2325(Gen6,Neu(3),Sfe7)*USf(Sfe6,2,4,Gen(1)))
     &                *USfC(Sfe6,1,4,Gen(1))*VChaC(Cha(4),2))/SB2)) + 
     &       AaC0i5(Epsi(cc12),Gen6,Sfe7)*
     &        (1/Sqrt(2.D0)*(F38*Sub16(Cha(4),Gen(1),Sfe6)*
     &              ((Mino3C*(F85 - F86 + F29*MNeu(Neu(3)))*
     &                    Sub2577(Gen6,Neu(3),Sfe7) + 
     &                   Sub2580(Gen6,Neu(3),Sfe7)*
     &                    Sub2852(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &                 USf(Sfe6,1,4,Gen(1)) + 
     &                (-(Mino3*(F83 - F84 - F22*MNeu(Neu(3)))*
     &                      Sub2580(Gen6,Neu(3),Sfe7)) + 
     &                   Sub2577(Gen6,Neu(3),Sfe7)*
     &                    Sub2851(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &                 USf(Sfe6,2,4,Gen(1))))/CB2 + 
     &          (F35*Mf(3,Gen(2))*
     &             ((Mino3C*(F85 - F86 + F29*MNeu(Neu(3)))*
     &                   Sub2577(Gen6,Neu(3),Sfe7) + 
     &                  Sub2580(Gen6,Neu(3),Sfe7)*
     &                   Sub2848(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &                USf(Sfe6,1,4,Gen(1)) - 
     &               (Mino3*(F83 - F84 - F22*MNeu(Neu(3)))*
     &                   Sub2580(Gen6,Neu(3),Sfe7) + 
     &                  Sub2577(Gen6,Neu(3),Sfe7)*
     &                   Sub2847(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &                USf(Sfe6,2,4,Gen(1)))*USfC(Sfe6,1,4,Gen(1))*
     &             VChaC(Cha(4),2))/(CB*SB)))

        tmp4 = tmp4 + Pair3*
     &     (AaC0i6(Epsi(cc22),Gen6,Sfe7)*
     &        (1/Sqrt(2.D0)*(F38*Sub16(Cha(4),Gen(1),Sfe6)*
     &              ((MNeu2(Neu(3)) - Sub1710(Cha(4),Gen(1),Gen(2),Neu(3)))*
     &                 Sub2679(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &                (F85 - F86)*Mino3C*Sub2577(Gen6,Neu(3),Sfe7)*
     &                 USf(Sfe6,1,4,Gen(1)) - 
     &                (F83 - F84)*Mino3*Sub2580(Gen6,Neu(3),Sfe7)*
     &                 USf(Sfe6,2,4,Gen(1))))/CB2 - 
     &          (F35*Mf(3,Gen(2))*
     &             (Sub2352(Cha(4),Gen(1),Gen(2),Neu(3))*
     &                Sub2679(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,Sfe7) + 
     &               (-F85 + F86)*Mino3C*Sub2577(Gen6,Neu(3),Sfe7)*
     &                USf(Sfe6,1,4,Gen(1)) + 
     &               (F83 - F84)*Mino3*Sub2580(Gen6,Neu(3),Sfe7)*
     &                USf(Sfe6,2,4,Gen(1)))*USfC(Sfe6,1,4,Gen(1))*
     &             VChaC(Cha(4),2))/(CB*SB)) + 
     &       AaC0i7(Epsi(cc12),Gen6,Sfe7)*
     &        (1/Sqrt(2.D0)*(F38*Sub16(Cha(4),Gen(1),Sfe6)*
     &              ((Mino3C*(F85 - F86 - F29*MNeu(Neu(3)))*
     &                    Sub2321(Gen6,Neu(3),Sfe7) + 
     &                   Sub2964(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                    Sfe7))*USf(Sfe6,1,4,Gen(1)) + 
     &                (Mino3*(F83 - F84 + F22*MNeu(Neu(3)))*
     &                    Sub2325(Gen6,Neu(3),Sfe7) + 
     &                   Sub2962(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                    Sfe7))*USf(Sfe6,2,4,Gen(1))))/(CB*SB) + 
     &          (F35*Mf(3,Gen(2))*
     &             ((Mino3C*(F85 - F86 - F29*MNeu(Neu(3)))*
     &                   Sub2321(Gen6,Neu(3),Sfe7) + 
     &                  Sub2964(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                   Sfe7))*USf(Sfe6,1,4,Gen(1)) + 
     &               (Mino3*(F83 - F84 + F22*MNeu(Neu(3)))*
     &                   Sub2325(Gen6,Neu(3),Sfe7) + 
     &                  Sub2321(Gen6,Neu(3),Sfe7)*
     &                   Sub2768(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &                USf(Sfe6,2,4,Gen(1)))*USfC(Sfe6,1,4,Gen(1))*
     &             VChaC(Cha(4),2))/SB2) - 
     &       AaC0i4(Epsi(cc12),Gen6,Sfe7)*
     &        (1/Sqrt(2.D0)*(F38*Sub16(Cha(4),Gen(1),Sfe6)*
     &              ((Mino3C*(F85 - F86 + F29*MNeu(Neu(3)))*
     &                    Sub2321(Gen6,Neu(3),Sfe7) - 
     &                   Sub3017(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                    Sfe7))*USf(Sfe6,1,4,Gen(1)) + 
     &                (Mino3*(F83 - F84 - F22*MNeu(Neu(3)))*
     &                    Sub2325(Gen6,Neu(3),Sfe7) - 
     &                   Sub3016(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                    Sfe7))*USf(Sfe6,2,4,Gen(1))))/(CB*SB) + 
     &          (F35*Mf(3,Gen(2))*
     &             ((Mino3C*(F85 - F86 + F29*MNeu(Neu(3)))*
     &                   Sub2321(Gen6,Neu(3),Sfe7) - 
     &                  Sub2325(Gen6,Neu(3),Sfe7)*
     &                   Sub2848(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &                USf(Sfe6,1,4,Gen(1)) + 
     &               (Mino3*(F83 - F84 - F22*MNeu(Neu(3)))*
     &                   Sub2325(Gen6,Neu(3),Sfe7) - 
     &                  Sub3016(HelAll(Cha(4)),Gen(1),Gen(2),Gen6,Neu(3),
     &                   Sfe7))*USf(Sfe6,2,4,Gen(1)))*
     &             USfC(Sfe6,1,4,Gen(1))*VChaC(Cha(4),2))/SB2))

        Cloop(HelAll(1)) = 
     &   Cloop(HelAll(1)) + 
     &    Alfa/(CW*MW2*SW2)*
     &     (Alfas*GS*(1/6.D0*tmp2/(T14 - Sub1425(Gen(1),Sfe6)) + 
     &          1/12.D0*(2*tmp3 + 4*tmp4 + 
     &              AaC0i5(Epsi(cc2),Gen6,Sfe7)*
     &               ((F38*Sub16(Cha(4),Gen(1),Sfe6)*
     &                    (Sqrt(2.D0)*
     &                       ((Mino3C*Sub2577(Gen6,Neu(3),Sfe7)*
     &                       Sub2616(HelAll(Neu(3))) - 
     &                       Sub2580(Gen6,Neu(3),Sfe7)*
     &                       Sub2626(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))*
     &                       USf(Sfe6,1,4,Gen(1)) + 
     &                       Sub2577(Gen6,Neu(3),Sfe7)*
     &                       Sub2621(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))*
     &                       USf(Sfe6,2,4,Gen(1))) + 
     &                      2*
     &                       (Sqrt(2.D0)*
     &                       (Pair3*Mf(4,Gen6)*
     &                       Sub2716(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7)) + 
     &                       Mino3*Sub2951(HelAll(Gen6),Neu(3),Sfe7)*
     &                       USf(Sfe6,2,4,Gen(1)))))/CB2 + 
     &                 (2*F35*Mf(3,Gen(2))*
     &                    (2*Pair3*Mf(4,Gen6)*
     &                       Sub2678(HelAll(Gen(1)),Gen6,Neu(3),Sfe6,
     &                       Sfe7) + 
     &                      (-(Sub2580(Gen6,Neu(3),Sfe7)*
     &                       Sub2626(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3)))+
     &                        Mino3C*
     &                       Sub2953(HelAll(Gen6),Neu(3),Sfe7))*
     &                       USf(Sfe6,1,4,Gen(1)) + 
     &                      (Sub2577(Gen6,Neu(3),Sfe7)*
     &                       Sub2623(HelAll(Cha(4)),Gen(1),Gen(2),Neu(3))-
     &                        Mino3*
     &                       Sub2954(HelAll(Gen6),Neu(3),Sfe7))*
     &                       USf(Sfe6,2,4,Gen(1)))*
     &                    USfC(Sfe6,1,4,Gen(1))*VChaC(Cha(4),2))/
     &                  (CB*SB)))/(T24 - Sub1133(Gen(1),Sfe6)))*
     &        IndexDelta(Gen(1),Gen(2)))/
     &      (MGl2 + S34 + T + U - cI*(MGl*WGl) - MCha2(Cha(4)) - 
     &        Mf2(3,Gen(2)) - Mf2(4,Gen(1)) - 2*MNeu2(Neu(3)))

#if DEBUG >= 4
        DEB("qdqubar_nIxJg_vert_Gen6_Sfe6_Sfe7:Cloop(1)", Cloop(HelAll(1)))
#endif

#include "virt_contains.h"

        end

