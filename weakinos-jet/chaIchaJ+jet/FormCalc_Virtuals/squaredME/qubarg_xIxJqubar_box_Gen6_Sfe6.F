#if 0
* qubarg_xIxJqubar_box_Gen6_Sfe6.F
* form factors for {-F[3, {Gen(1), Col1}], V[5, {Glu2}]} -> {-F[12, {Cha(3)}], F[12, {Cha(4)}], -F[3, {Gen(5), Col5}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 11-Nov-2017 20:14
#endif

#include "qubarg_xIxJqubar_vars.h"
#include "virt_inline.h"
#include "virt_contains.h"


        subroutine qubarg_xIxJqubar_box_Gen6_Sfe6
        implicit none

#include "qubarg_xIxJqubar_vars.h"
        HelType tmp1

#include "virt_inline.h"

        tmp1 = -(Alfa/(2.D0*MW2*SW2)*
     &      (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &         (Sqrt(2.D0)*((F25 + F32)*
     &              (AaC0i2(Epsi(cc0),Gen6,Sfe6)*Mf2(3,Gen6)*
     &                 Sub2414(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                AaC0i7(Epsi(cc0),Gen6,Sfe6)*Mf2(4,Gen6)*
     &                 Sub2418(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) + 
     &           (F105 + F95)*
     &            (Sqrt(2.D0)*
     &               (AaD0i5(Epsi(dd0),Gen6,Sfe6)*Mf2(3,Gen6)*
     &                  Sub2415(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &                 2*Pair4*
     &                  (AaD0i3(Epsi(dd0),Gen6,Sfe6)*Mf2(3,Gen6)*
     &                     Sub2414(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                    AaD0i8(Epsi(dd0),Gen6,Sfe6)*Mf2(4,Gen6)*
     &                     Sub2418(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &                 2*Pair2*
     &                  (AaD0i4(Epsi(dd0),Gen6,Sfe6)*Mf2(3,Gen6)*
     &                     Sub2414(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                    AaD0i9(Epsi(dd0),Gen6,Sfe6)*Mf2(4,Gen6)*
     &                     Sub2418(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &                 AaD0i10(Epsi(dd0),Gen6,Sfe6)*Mf2(4,Gen6)*
     &                  Sub2424(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &              1/2.D0*(S2B*
     &                 Sub13185(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                 Sub2785(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) - 
     &           (F28 + F31)*
     &            (Sqrt(2.D0)*
     &               (AaD0i6(Epsi(dd1),Gen6,Sfe6)*Mf2(3,Gen6)*
     &                  Sub2415(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &                 Mf2(3,Gen6)*
     &                  Sub13183(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                  Sub2415(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &                 2*Pair4*
     &                  (AaD0i3(Epsi(dd0),Gen6,Sfe6)*Mf2(3,Gen6)*
     &                     Sub2414(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                    AaD0i8(Epsi(dd0),Gen6,Sfe6)*Mf2(4,Gen6)*
     &                     Sub2418(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &                 AaD0i11(Epsi(dd1),Gen6,Sfe6)*Mf2(4,Gen6)*
     &                  Sub2424(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &                 Mf2(4,Gen6)*
     &                  Sub13184(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                  Sub2424(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &              1/2.D0*(S2B*
     &                 Sub13185(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                 Sub2785(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) - 
     &           S2B*(AaD0i12(Epsi(dd2),Gen6,Sfe6)*
     &               Sub2550(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &              AaD0i12(Epsi(dd3),Gen6,Sfe6)*
     &               Sub2576(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &              AaD0i12(Epsi(dd0),Gen6,Sfe6)*
     &               Sub2587(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &              AaD0i12(Epsi(dd1),Gen6,Sfe6)*
     &               Sub2634(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))))/S2B)

        tmp1 = tmp1 - Alfa/(4.D0*MW2*SW2)*
     &     (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &       (-((F25 + F32)*AaC0i2(Epsi(cc1),Gen6,Sfe6)*MCha(Cha(3))*
     &            Sub2941(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &         (F105 + F95)*
     &          (AaD0i5(Epsi(dd2),Gen6,Sfe6)*
     &             Sub2801(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i5(Epsi(dd3),Gen6,Sfe6)*
     &             Sub2869(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            2*Pair4*MCha(Cha(3))*
     &             Sub13186(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub2941(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &         2*(AaD0i5(Epsi(dd00),Gen6,Sfe6)*
     &             Sub2791(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i13(Epsi(dd0),Gen6,Sfe6)*
     &             Sub2850(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i13(Epsi(dd2),Gen6,Sfe6)*
     &             Sub2909(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i13(Epsi(dd3),Gen6,Sfe6)*
     &             Sub2949(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i13(Epsi(dd1),Gen6,Sfe6)*
     &             Sub2976(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &         2*AaD0i6(Epsi(dd001),Gen6,Sfe6)*
     &          Sub2996(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &         2*AaD0i10(Epsi(dd00),Gen6,Sfe6)*
     &          Sub3073(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         2*AaD0i11(Epsi(dd001),Gen6,Sfe6)*
     &          Sub3104(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &         2*(Sub13187(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub2996(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13190(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub3104(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &         Abb24*(F28 + F31)*
     &          ((2*AaD0i11(Epsi(dd112),Gen6,Sfe6) - 
     &               2*AaD0i14(Epsi(dd112),Gen6,Sfe6))*
     &             Sub3074(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            (-2*AaD0i15(Epsi(dd112),Gen6,Sfe6) + 
     &               2*AaD0i6(Epsi(dd112),Gen6,Sfe6))*
     &             Sub3133(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &         (F28 + F31)*
     &          (2*Pair2*(Sub13188(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub3074(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               Sub13191(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub3133(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &            2*Pair4*(Sub13189(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub3074(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               Sub13192(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub3133(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) + 
     &         2*Pair4*AaD0i8(Epsi(dd1),Gen6,Sfe6)*
     &          Sub3182(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)))

        tmp1 = tmp1 + Alfa/(4.D0*MW2*SW2)*
     &     (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &       (2*(Sub13194(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub3338(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13196(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub3362(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13198(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub3402(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &         AaD0i6(Epsi(dd13),Gen6,Sfe6)*
     &          Sub3410(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         Pair4*(-2*AaD0i3(Epsi(dd1),Gen6,Sfe6)*
     &             Sub3309(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            2*(AaD0i8(Epsi(dd11),Gen6,Sfe6)*
     &                Sub3250(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i3(Epsi(dd11),Gen6,Sfe6)*
     &                Sub3412(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) + 
     &         (F25 + F32)*
     &          (AaC0i7(Epsi(cc1),Gen6,Sfe6)*MCha(Cha(3))*
     &             Sub3346(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            MCha(Cha(4))*
     &             (AaC0i2(Epsi(cc2),Gen6,Sfe6)*
     &                Sub3384(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaC0i7(Epsi(cc2),Gen6,Sfe6)*
     &                Sub3420(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) + 
     &         (-2*AaD0i11(Epsi(dd002),Gen6,Sfe6) + 
     &            2*AaD0i14(Epsi(dd002),Gen6,Sfe6))*
     &          Sub3423(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         AaD0i15(Epsi(dd13),Gen6,Sfe6)*
     &          Sub3458(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         (F28 + F31)*
     &          (Sub13193(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub3248(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            2*Pair2*MCha(Cha(4))*
     &             (Sub13197(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub3384(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               Sub13199(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub3420(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &            2*AaD0i3(Epsi(dd3),Gen6,Sfe6)*
     &             Sub3460(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &         (F105 + F95)*
     &          (-(Sub13193(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &               Sub3248(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &            AaD0i10(Epsi(dd2),Gen6,Sfe6)*
     &             Sub3324(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i10(Epsi(dd3),Gen6,Sfe6)*
     &             Sub3335(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            2*(AaD0i9(Epsi(dd3),Gen6,Sfe6)*
     &                Sub3220(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i4(Epsi(dd3),Gen6,Sfe6)*
     &                Sub3386(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               Pair2*MCha(Cha(4))*
     &                (Sub13197(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                   Sub3384(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                  Sub13199(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                   Sub3420(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) - 
     &            2*(Pair4*MCha(Cha(3))*
     &                Sub13195(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub3346(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i3(Epsi(dd3),Gen6,Sfe6)*
     &                Sub3460(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)))))

        tmp1 = tmp1 - Alfa/(4.D0*MW2*SW2)*
     &     (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &       (AaD0i5(Epsi(dd13),Gen6,Sfe6)*
     &          Sub3466(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         AaD0i6(Epsi(dd22),Gen6,Sfe6)*
     &          Sub3532(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         AaD0i15(Epsi(dd22),Gen6,Sfe6)*
     &          Sub3672(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         Pair4*(2*AaD0i8(Epsi(dd12),Gen6,Sfe6)*
     &             Sub3576(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            2*Sub13204(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub3803(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &         Pair2*(2*AaD0i4(Epsi(dd1),Gen6,Sfe6)*
     &             Sub3470(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            2*AaD0i4(Epsi(dd11),Gen6,Sfe6)*
     &             Sub3493(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            2*AaD0i9(Epsi(dd1),Gen6,Sfe6)*
     &             Sub3534(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            2*(AaD0i9(Epsi(dd11),Gen6,Sfe6)*
     &                Sub3548(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i9(Epsi(dd12),Gen6,Sfe6)*
     &                Sub3676(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &            2*AaD0i6(Epsi(dd133),Gen6,Sfe6)*
     &             Sub3679(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            2*AaD0i5(Epsi(dd133),Gen6,Sfe6)*
     &             Sub3813(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &         2*(Sub13201(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub3512(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13202(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub3571(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i13(Epsi(dd11),Gen6,Sfe6)*
     &             Sub3821(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &         (F105 + F95)*
     &          (2*(AaD0i8(Epsi(dd3),Gen6,Sfe6)*
     &                Sub3520(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i12(Epsi(dd133),Gen6,Sfe6)*
     &                Sub3551(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &            AaD0i5(Epsi(dd22),Gen6,Sfe6)*
     &             Sub3815(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            2*Pair4*Sub13205(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub3903(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &         2*(Sub13200(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub3491(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i13(Epsi(dd12),Gen6,Sfe6)*
     &             Sub3563(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13203(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub3595(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            (F28 + F31)*
     &             (AaD0i8(Epsi(dd3),Gen6,Sfe6)*
     &                Sub3520(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i12(Epsi(dd133),Gen6,Sfe6)*
     &                Sub3551(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               Pair4*Sub13205(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub3903(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) - 
     &         AaD0i11(Epsi(dd12),Gen6,Sfe6)*
     &          Sub3910(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)))

        tmp1 = tmp1 - Alfa/(4.D0*MW2*SW2)*
     &     (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &       (-(AaD0i14(Epsi(dd12),Gen6,Sfe6)*
     &            Sub3922(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &         (F28 + F31)*Pair4*
     &          (4*AaD0i3(Epsi(dd22),Gen6,Sfe6)*
     &             Sub3924(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            2*AaD0i3(Epsi(dd2),Gen6,Sfe6)*
     &             Sub3942(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &         AaD0i10(Epsi(dd12),Gen6,Sfe6)*
     &          Sub4010(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &         AaC0i16(Epsi(cc0),Gen6,Sfe6)*
     &          Sub4196(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         AaC0i17(Epsi(cc0),Gen6,Sfe6)*
     &          Sub4210(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         2*Pair2*AaD0i9(Epsi(dd122),Gen6,Sfe6)*
     &          Sub4213(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         Abb24*(F28 + F31)*
     &          ((2*AaD0i15(Epsi(dd222),Gen6,Sfe6) - 
     &               2*AaD0i6(Epsi(dd222),Gen6,Sfe6))*
     &             Sub4187(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            (2*AaD0i11(Epsi(dd122),Gen6,Sfe6) - 
     &               2*AaD0i14(Epsi(dd122),Gen6,Sfe6))*
     &             Sub4263(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &         AaC0i16(Epsi(cc1),Gen6,Sfe6)*
     &          Sub4266(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         (F105 + F95)*
     &          (Pair4*(4*AaD0i3(Epsi(dd22),Gen6,Sfe6)*
     &                Sub3924(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               2*AaD0i3(Epsi(dd2),Gen6,Sfe6)*
     &                Sub3942(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &            2*AaD0i13(Epsi(dd122),Gen6,Sfe6)*
     &             Sub4086(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Pair2*(2*Sub13206(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub4011(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               4*AaD0i4(Epsi(dd22),Gen6,Sfe6)*
     &                Sub4083(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               2*AaD0i4(Epsi(dd2),Gen6,Sfe6)*
     &                Sub4189(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &            2*AaD0i13(Epsi(dd112),Gen6,Sfe6)*
     &             Sub4269(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &         AaC0i17(Epsi(cc1),Gen6,Sfe6)*
     &          Sub4272(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &         AaD0i6(Epsi(dd2),Gen6,Sfe6)*
     &          Sub4297(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         AaC0i16(Epsi(cc2),Gen6,Sfe6)*
     &          Sub4300(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         2*Pair4*(Sub13207(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub4200(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13208(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub4275(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13209(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub4304(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))))

        tmp1 = tmp1 - Alfa/(2.D0*MW2*SW2)*
     &     (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &        (-(S2B*(Pair4*
     &                Sub13210(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub4311(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &               Pair2*AaD0i9(Epsi(dd112),Gen6,Sfe6)*
     &                Sub4314(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) - 
     &          AaD0i11(Epsi(dd0),Gen6,Sfe6)*
     &           Sub4323(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &          AaD0i14(Epsi(dd0),Gen6,Sfe6)*
     &           Sub4373(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &          S2B*((F28 + F31)*
     &              (AaD0i3(Epsi(dd223),Gen6,Sfe6)*
     &                 Sub4307(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                AaD0i13(Epsi(dd113),Gen6,Sfe6)*
     &                 Sub4353(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                AaD0i8(Epsi(dd33),Gen6,Sfe6)*
     &                 Sub4425(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &             (F105 + F95)*
     &              (AaD0i3(Epsi(dd223),Gen6,Sfe6)*
     &                 Sub4307(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &                Sub13211(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                 Sub4317(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                AaD0i13(Epsi(dd113),Gen6,Sfe6)*
     &                 Sub4353(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                AaD0i8(Epsi(dd33),Gen6,Sfe6)*
     &                 Sub4425(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) + 
     &          S2B*(1/2.D0*(AaC0i17(Epsi(cc2),Gen6,Sfe6)*
     &                Sub4310(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &             1/2.D0*(AaD0i15(Epsi(dd2),Gen6,Sfe6)*
     &                Sub4350(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &             1/2.D0*(AaD0i14(Epsi(dd22),Gen6,Sfe6)*
     &                Sub4375(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &             1/2.D0*(AaD0i14(Epsi(dd13),Gen6,Sfe6)*
     &                Sub4386(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &             1/2.D0*(AaD0i14(Epsi(dd3),Gen6,Sfe6)*
     &                Sub4403(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &             1/2.D0*(AaD0i6(Epsi(dd23),Gen6,Sfe6)*
     &                Sub4420(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &             1/2.D0*(AaC0i18(Epsi(cc0),Gen6,Sfe6)*
     &                Sub4423(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &             1/2.D0*(AaC0i19(Epsi(cc0),Gen6,Sfe6)*
     &                Sub4428(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &             1/2.D0*(AaD0i11(Epsi(dd33),Gen6,Sfe6)*
     &                Sub4446(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &             AaD0i13(Epsi(dd123),Gen6,Sfe6)*
     &              Sub4358(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &             AaD0i12(Epsi(dd22),Gen6,Sfe6)*
     &              Sub4366(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &             AaD0i6(Epsi(dd223),Gen6,Sfe6)*
     &              Sub4380(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &             AaD0i8(Epsi(dd123),Gen6,Sfe6)*
     &              Sub4384(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &             AaD0i15(Epsi(dd223),Gen6,Sfe6)*
     &              Sub4391(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &             AaD0i13(Epsi(dd13),Gen6,Sfe6)*
     &              Sub4438(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))))/S2B

        tmp1 = tmp1 - Alfa/(2.D0*MW2*SW2)*
     &     (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &        (-(AaD0i6(Epsi(dd0),Gen6,Sfe6)*
     &             Sub4455(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &          AaD0i15(Epsi(dd0),Gen6,Sfe6)*
     &           Sub4490(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &          S2B*(1/2.D0*(AaC0i18(Epsi(cc1),Gen6,Sfe6)*
     &                 Sub4456(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                AaC0i19(Epsi(cc1),Gen6,Sfe6)*
     &                 Sub4471(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &             1/2.D0*(AaC0i18(Epsi(cc2),Gen6,Sfe6)*
     &                Sub4483(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &             1/2.D0*(AaC0i19(Epsi(cc2),Gen6,Sfe6)*
     &                Sub4497(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &             1/2.D0*(AaD0i15(Epsi(dd23),Gen6,Sfe6)*
     &                Sub4518(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &             1/2.D0*(AaD0i11(Epsi(dd13),Gen6,Sfe6)*
     &                Sub4530(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &             1/2.D0*(AaD0i10(Epsi(dd13),Gen6,Sfe6)*
     &                Sub4540(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &             1/2.D0*(AaD0i11(Epsi(dd22),Gen6,Sfe6)*
     &                Sub4548(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &             AaD0i8(Epsi(dd13),Gen6,Sfe6)*
     &              Sub4460(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &             AaD0i9(Epsi(dd13),Gen6,Sfe6)*
     &              Sub4470(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &             AaD0i12(Epsi(dd23),Gen6,Sfe6)*
     &              Sub4482(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &             AaD0i13(Epsi(dd00),Gen6,Sfe6)*
     &              Sub4494(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &             AaD0i13(Epsi(dd23),Gen6,Sfe6)*
     &              Sub4496(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &             AaD0i12(Epsi(dd00),Gen6,Sfe6)*
     &              Sub4520(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &             AaD0i8(Epsi(dd00),Gen6,Sfe6)*
     &              Sub4524(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &             (F28 + F31)*AaD0i3(Epsi(dd23),Gen6,Sfe6)*
     &              Sub4528(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &             (F105 + F95)*
     &              (-(1/2.D0*
     &                   (AaD0i5(Epsi(dd33),Gen6,Sfe6)*
     &                     Sub4464(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)))+
     &                  Sub13212(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                 Sub4449(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                AaD0i3(Epsi(dd23),Gen6,Sfe6)*
     &                 Sub4528(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &                AaD0i4(Epsi(dd23),Gen6,Sfe6)*
     &                 Sub4534(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &             AaD0i9(Epsi(dd00),Gen6,Sfe6)*
     &              Sub4538(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &             AaD0i3(Epsi(dd00),Gen6,Sfe6)*
     &              Sub4542(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &             AaD0i11(Epsi(dd00),Gen6,Sfe6)*
     &              Sub4546(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))))/S2B

        tmp1 = tmp1 + Alfa/(4.D0*MW2*SW2)*
     &     (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &       (Pair2*(2*AaD0i11(Epsi(dd133),Gen6,Sfe6)*
     &             Sub4562(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            2*(AaD0i10(Epsi(dd133),Gen6,Sfe6)*
     &                Sub4579(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i4(Epsi(dd112),Gen6,Sfe6)*
     &                Sub4586(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) + 
     &         (F28 + F31)*
     &          (2*AaD0i3(Epsi(dd233),Gen6,Sfe6)*
     &             Sub4565(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Pair4*(4*AaD0i8(Epsi(dd22),Gen6,Sfe6)*
     &                Sub4571(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               2*(AaD0i8(Epsi(dd2),Gen6,Sfe6)*
     &                   Sub4589(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                  Sub13216(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                   Sub4590(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)))) + 
     &         (F105 + F95)*
     &          (AaD0i5(Epsi(dd23),Gen6,Sfe6)*
     &             Sub4552(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            2*AaD0i12(Epsi(dd112),Gen6,Sfe6)*
     &             Sub4572(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            Pair4*(4*AaD0i8(Epsi(dd22),Gen6,Sfe6)*
     &                Sub4571(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               2*(AaD0i8(Epsi(dd2),Gen6,Sfe6)*
     &                   Sub4589(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &                  Sub13216(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                   Sub4590(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) - 
     &            2*(AaD0i3(Epsi(dd233),Gen6,Sfe6)*
     &                Sub4565(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               Pair2*Sub13218(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub4597(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) - 
     &         2*(AaD0i13(Epsi(dd33),Gen6,Sfe6)*
     &             Sub4585(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i6(Epsi(dd233),Gen6,Sfe6)*
     &             Sub4596(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Pair4*(Sub13213(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &                Sub4561(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i3(Epsi(dd12),Gen6,Sfe6)*
     &                Sub4599(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) + 
     &         2*(AaD0i14(Epsi(dd00),Gen6,Sfe6)*
     &             Sub4558(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i4(Epsi(dd00),Gen6,Sfe6)*
     &             Sub4560(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i6(Epsi(dd00),Gen6,Sfe6)*
     &             Sub4567(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i15(Epsi(dd00),Gen6,Sfe6)*
     &             Sub4569(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i12(Epsi(dd001),Gen6,Sfe6)*
     &             Sub4575(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13214(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub4578(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13215(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub4587(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13217(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub4591(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13219(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub4600(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))))

        tmp1 = tmp1 + Alfa/(4.D0*MW2*SW2)*
     &     (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &       ((F105 + F95)*
     &          (2*AaD0i12(Epsi(dd113),Gen6,Sfe6)*
     &             Sub4603(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            Pair2*(4*AaD0i9(Epsi(dd22),Gen6,Sfe6)*
     &                Sub4602(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               2*AaD0i9(Epsi(dd2),Gen6,Sfe6)*
     &                Sub4605(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &            AaD0i10(Epsi(dd33),Gen6,Sfe6)*
     &             Sub4609(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            2*AaD0i12(Epsi(dd122),Gen6,Sfe6)*
     &             Sub4610(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &         (-2*AaD0i15(Epsi(dd002),Gen6,Sfe6) + 
     &            2*AaD0i6(Epsi(dd002),Gen6,Sfe6))*
     &          Sub4615(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         AaD0i11(Epsi(dd2),Gen6,Sfe6)*
     &          Sub4629(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         AaD0i6(Epsi(dd3),Gen6,Sfe6)*
     &          Sub4648(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &         2*((F28 + F31)*AaD0i12(Epsi(dd113),Gen6,Sfe6)*
     &             Sub4603(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i15(Epsi(dd233),Gen6,Sfe6)*
     &             Sub4614(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i9(Epsi(dd123),Gen6,Sfe6)*
     &             Sub4622(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Pair2*(AaD0i4(Epsi(dd12),Gen6,Sfe6)*
     &                Sub4607(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i4(Epsi(dd122),Gen6,Sfe6)*
     &                Sub4649(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) + 
     &         AaD0i15(Epsi(dd3),Gen6,Sfe6)*
     &          Sub4658(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         Abb24*(F28 + F31)*
     &          ((2*AaD0i11(Epsi(dd222),Gen6,Sfe6) - 
     &               2*AaD0i14(Epsi(dd222),Gen6,Sfe6))*
     &             Sub4617(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            (2*AaD0i15(Epsi(dd122),Gen6,Sfe6) - 
     &               2*AaD0i6(Epsi(dd122),Gen6,Sfe6))*
     &             Sub4659(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &         2*(AaD0i13(Epsi(dd001),Gen6,Sfe6)*
     &             Sub4616(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i11(Epsi(dd123),Gen6,Sfe6)*
     &             Sub4634(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            Sub13220(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub4650(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i12(Epsi(dd12),Gen6,Sfe6)*
     &             Sub4652(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i14(Epsi(dd123),Gen6,Sfe6)*
     &             Sub4664(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &         AaD0i14(Epsi(dd2),Gen6,Sfe6)*
     &          Sub4670(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)))

        tmp1 = tmp1 - Alfa/(4.D0*MW2*SW2)*
     &     (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &       (-(AaD0i6(Epsi(dd12),Gen6,Sfe6)*
     &            Sub4682(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &         AaD0i15(Epsi(dd12),Gen6,Sfe6)*
     &          Sub4685(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         AaD0i14(Epsi(dd33),Gen6,Sfe6)*
     &          Sub4696(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         2*(AaD0i12(Epsi(dd123),Gen6,Sfe6)*
     &             Sub4757(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i12(Epsi(dd33),Gen6,Sfe6)*
     &             Sub4818(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i11(Epsi(dd223),Gen6,Sfe6)*
     &             Sub4919(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &         2*(AaD0i3(Epsi(dd123),Gen6,Sfe6)*
     &             Sub4920(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i14(Epsi(dd223),Gen6,Sfe6)*
     &             Sub4973(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) - 
     &         AaD0i5(Epsi(dd12),Gen6,Sfe6)*
     &          Sub4975(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &         2*AaD0i12(Epsi(dd13),Gen6,Sfe6)*
     &          Sub4977(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         2*AaD0i4(Epsi(dd123),Gen6,Sfe6)*
     &          Sub4978(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         2*(AaD0i13(Epsi(dd22),Gen6,Sfe6)*
     &             Sub4672(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i10(Epsi(dd123),Gen6,Sfe6)*
     &             Sub4678(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            (F28 + F31)*
     &             (AaD0i8(Epsi(dd223),Gen6,Sfe6)*
     &                Sub4683(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i8(Epsi(dd23),Gen6,Sfe6)*
     &                Sub4756(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i3(Epsi(dd33),Gen6,Sfe6)*
     &                Sub4980(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) - 
     &         2*AaD0i3(Epsi(dd13),Gen6,Sfe6)*
     &          Sub4982(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         AaD0i11(Epsi(dd23),Gen6,Sfe6)*
     &          Sub5030(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &         (F105 + F95)*
     &          (2*(AaD0i9(Epsi(dd33),Gen6,Sfe6)*
     &                Sub4680(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i8(Epsi(dd223),Gen6,Sfe6)*
     &                Sub4683(HelAll(Cha(3)),Cha(4),Gen6,Sfe6)) + 
     &            AaD0i10(Epsi(dd22),Gen6,Sfe6)*
     &             Sub4687(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            2*Sub13221(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub4688(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            2*AaD0i8(Epsi(dd23),Gen6,Sfe6)*
     &             Sub4756(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            2*AaD0i9(Epsi(dd23),Gen6,Sfe6)*
     &             Sub4820(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i10(Epsi(dd23),Gen6,Sfe6)*
     &             Sub4922(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            2*AaD0i3(Epsi(dd33),Gen6,Sfe6)*
     &             Sub4980(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            2*Sub13222(Cha(3),Cha(4),Gen(1),Gen(5),Gen6,Sfe6)*
     &             Sub5031(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))))

        tmp1 = tmp1 + Alfa/(4.D0*MW2*SW2)*
     &     (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &       (AaD0i14(Epsi(dd23),Gen6,Sfe6)*
     &          Sub5139(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         AaD0i6(Epsi(dd33),Gen6,Sfe6)*
     &          Sub5153(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &         AaD0i15(Epsi(dd33),Gen6,Sfe6)*
     &          Sub5157(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &         (F105 + F95)*
     &          (2*AaD0i4(Epsi(dd33),Gen6,Sfe6)*
     &             Sub5077(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &            2*(AaD0i13(Epsi(dd133),Gen6,Sfe6)*
     &                Sub5078(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i8(Epsi(dd233),Gen6,Sfe6)*
     &                Sub5158(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) + 
     &         2*(AaD0i6(Epsi(dd123),Gen6,Sfe6)*
     &             Sub5075(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i15(Epsi(dd123),Gen6,Sfe6)*
     &             Sub5137(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            (F28 + F31)*
     &             (AaD0i13(Epsi(dd133),Gen6,Sfe6)*
     &                Sub5078(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &               AaD0i8(Epsi(dd233),Gen6,Sfe6)*
     &                Sub5158(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))) + 
     &         AaD0i11(Epsi(dd3),Gen6,Sfe6)*
     &          Sub5166(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) - 
     &         2*(AaD0i4(Epsi(dd13),Gen6,Sfe6)*
     &             Sub5074(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i12(Epsi(dd11),Gen6,Sfe6)*
     &             Sub5151(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i5(Epsi(dd123),Gen6,Sfe6)*
     &             Sub5155(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i11(Epsi(dd233),Gen6,Sfe6)*
     &             Sub5167(HelAll(Cha(3)),Cha(4),Gen6,Sfe6) + 
     &            AaD0i14(Epsi(dd233),Gen6,Sfe6)*
     &             Sub5171(HelAll(Cha(3)),Cha(4),Gen6,Sfe6))))

        Cloop(HelAll(1)) = 
     &   Cloop(HelAll(1)) - 
     &    tmp1/
     &     (S + T + T14 - MCha2(Cha(3)) - MCha2(Cha(4)) - 
     &       2*Mf2(3,Gen(1)) - Mf2(3,Gen(5)))

#if DEBUG >= 4
        DEB("qubarg_xIxJqubar_box_Gen6_Sfe6:Cloop(1)", Cloop(HelAll(1)))
#endif

#include "virt_contains.h"

        end

