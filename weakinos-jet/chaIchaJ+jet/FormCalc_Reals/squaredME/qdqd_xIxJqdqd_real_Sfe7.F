#if 0
* qdqd_xIxJqdqd_real_Sfe7.F
* form factors for {F[4, {Gen(1), Col1}], F[4, {Gen(2), Col2}]} -> {-F[12, {Cha(3)}], F[12, {Cha(4)}], F[4, {Gen(5), Col5}], F[4, {Gen(6), Col6}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 23-Oct-2017 11:02
#endif

#include "qdqd_xIxJqdqd_vars.h"
#include "real_inline.h"
#include "real_contains.h"


        subroutine qdqd_xIxJqdqd_real_Sfe7
        implicit none

#include "qdqd_xIxJqdqd_vars.h"
        HelType dup1, dup2, dup3, dup4

#include "real_inline.h"

        dup1 = -(Sub104(HelAll(Cha(3)),Cha(4),Gen(1),Gen(6),Sfe7)/
     &       (Mf2(4,Gen(1)) - Sub200(Gen(1),Gen(2),Gen(5)))) + 
     &    ((F1 - F4 + F5 - F6)*
     &       Sub97(HelAll(Cha(3)),Cha(4),Gen(1),Gen(6),Sfe7))/
     &     (T14 - Sub240(Gen(1),Sfe7))

        dup2 = -(Sub120(HelAll(Cha(3)),Cha(4),Gen(2),Gen(6),Sfe7)/
     &       (Mf2(4,Gen(2)) - Sub200(Gen(1),Gen(2),Gen(5)))) + 
     &    ((F29 - F31 - F32 + F33)*
     &       Sub98(HelAll(Cha(3)),Cha(4),Gen(2),Gen(6),Sfe7))/
     &     (T24 - Sub242(Gen(2),Sfe7))

        dup3 = ((F39 - F40 + F43 - F44)*
     &       Sub76(HelAll(Cha(3)),Cha(4),Gen(2),Gen(5),Sfe7))/
     &     (S35 - Sub238(Gen(5),Sfe7)) + 
     &    Sub83(HelAll(Cha(3)),Cha(4),Gen(2),Gen(5),Sfe7)/
     &     (Mf2(4,Gen(5)) + Sub196(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))

        dup4 = Sub89(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7)/
     &     (Sub194(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &       (Mf2(4,Gen(5)) - Sub198(Cha(3),Cha(4),Gen(1)))*
     &       (T14 - Sub240(Gen(1),Sfe7))) + 
     &    Sub95(HelAll(Cha(3)),Cha(4),Gen(2),Gen(6),Sfe7)/
     &     (T15*(Mf2(4,Gen(6)) + 
     &         Sub196(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))*
     &       (T24 - Sub242(Gen(2),Sfe7)))

        Ctree(HelAll(2)) = 
     &   Ctree(HelAll(2)) + 
     &    (4*Alfa*Pi**2)/(3.D0*MW2*SW2)*
     &     (Alfas*(dup4*IndexDelta(Gen(1),Gen(5))*
     &          IndexDelta(Gen(2),Gen(6)) + 
     &         (3*dup3*IndexDelta(Gen(1),Gen(6))*
     &            IndexDelta(Gen(2),Gen(5)))/
     &          (Sub192(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &            (T24 - Sub242(Gen(2),Sfe7))) + 
     &         (3*dup1*T15*IndexDelta(Gen(1),Gen(6))*
     &             IndexDelta(Gen(2),Gen(5)) + 
     &            dup2*T25*IndexDelta(Gen(1),Gen(5))*
     &             IndexDelta(Gen(2),Gen(6)))/
     &          (T15*T25*(Sub245(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) + 
     &              Sub246(Gen(6),Sfe7))) - 
     &         ((3*IndexDelta(Gen(1),Gen(6))*IndexDelta(Gen(2),Gen(5))*
     &               Sub47(HelAll(Cha(3)),Cha(4),Gen(2),Gen(5),Sfe7))/
     &             (Sub192(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &               (Mf2(4,Gen(2)) + 
     &                 Sub193(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))) + 
     &            (IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &               Sub61(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7))/
     &             ((Mf2(4,Gen(1)) + 
     &                 Sub193(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))*
     &               Sub194(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))/
     &          (S35 - Sub238(Gen(5),Sfe7)) - 
     &         ((3*IndexDelta(Gen(1),Gen(6))*IndexDelta(Gen(2),Gen(5))*
     &               Sub69(HelAll(Cha(3)),Cha(4),Gen(1),Gen(6),Sfe7))/
     &             (T25*(Mf2(4,Gen(6)) - Sub198(Cha(3),Cha(4),Gen(1)))) + 
     &            ((F16 - F18 + F23 - F24)*IndexDelta(Gen(1),Gen(5))*
     &               IndexDelta(Gen(2),Gen(6))*
     &               Sub72(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7))/
     &             (Sub194(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &               (S35 - Sub238(Gen(5),Sfe7))))/
     &          (T14 - Sub240(Gen(1),Sfe7))))

#if DEBUG >= 4
        DEB("qdqd_xIxJqdqd_real_Sfe7:Ctree(2)", Ctree(HelAll(2)))
#endif

        Ctree(HelAll(1)) = 
     &   Ctree(HelAll(1)) - 
     &    (4*Alfa*Pi**2)/(3.D0*MW2*SW2)*
     &     (Alfas*(3*dup4*IndexDelta(Gen(1),Gen(5))*
     &          IndexDelta(Gen(2),Gen(6)) + 
     &         (dup3*IndexDelta(Gen(1),Gen(6))*IndexDelta(Gen(2),Gen(5)))/
     &          (Sub192(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &            (T24 - Sub242(Gen(2),Sfe7))) + 
     &         (dup1*T15*IndexDelta(Gen(1),Gen(6))*
     &             IndexDelta(Gen(2),Gen(5)) + 
     &            3*dup2*T25*IndexDelta(Gen(1),Gen(5))*
     &             IndexDelta(Gen(2),Gen(6)))/
     &          (T15*T25*(Sub245(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) + 
     &              Sub246(Gen(6),Sfe7))) - 
     &         ((IndexDelta(Gen(1),Gen(6))*IndexDelta(Gen(2),Gen(5))*
     &               Sub47(HelAll(Cha(3)),Cha(4),Gen(2),Gen(5),Sfe7))/
     &             (Sub192(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &               (Mf2(4,Gen(2)) + 
     &                 Sub193(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))) + 
     &            (3*IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &               Sub61(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7))/
     &             ((Mf2(4,Gen(1)) + 
     &                 Sub193(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))*
     &               Sub194(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))/
     &          (S35 - Sub238(Gen(5),Sfe7)) - 
     &         ((IndexDelta(Gen(1),Gen(6))*IndexDelta(Gen(2),Gen(5))*
     &               Sub69(HelAll(Cha(3)),Cha(4),Gen(1),Gen(6),Sfe7))/
     &             (T25*(Mf2(4,Gen(6)) - Sub198(Cha(3),Cha(4),Gen(1)))) + 
     &            (3*(F16 - F18 + F23 - F24)*IndexDelta(Gen(1),Gen(5))*
     &               IndexDelta(Gen(2),Gen(6))*
     &               Sub72(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe7))/
     &             (Sub194(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &               (S35 - Sub238(Gen(5),Sfe7))))/
     &          (T14 - Sub240(Gen(1),Sfe7))))

#if DEBUG >= 4
        DEB("qdqd_xIxJqdqd_real_Sfe7:Ctree(1)", Ctree(HelAll(1)))
#endif

#include "real_contains.h"

        end

