#if 0
* qdbarg_nIxJqubar_self_Sfe6_Sfe7_Sfe8.F
* form factors for {-F[4, {Gen(1), Col1}], V[5, {Glu2}]} -> {F[11, {Neu(3)}], -F[12, {Cha(4)}], -F[3, {Gen(5), Col5}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 11-Nov-2017 22:34
#endif

#include "qdbarg_nIxJqubar_vars.h"
#include "virt_inline.h"
#include "virt_contains.h"


        subroutine qdbarg_nIxJqubar_self_Sfe6_Sfe7_Sfe8
        implicit none

#include "qdbarg_nIxJqubar_vars.h"
#include "virt_inline.h"

        Cloop(HelAll(1)) = 
     &   Cloop(HelAll(1)) - 
     &    Alfa/(CW*MW2*SW2)*
     &     (Alfas*GS*(2/9.D0*
     &          (AaA01(Sfe8)*Sub170(Gen(5),Sfe7,Sfe8)*
     &            Sub171(Gen(1),Sfe6,Sfe8)*
     &            Sub20227(HelAll(Cha(4)),Gen(1),Gen(5),Neu(3),Sfe6,Sfe7))-
     &           2/9.D0*(AaA02(Sfe8)*
     &            ((Sub102(Gen(5),Sfe6,Sfe8)*Sub103(Gen(1),Sfe7,Sfe8)*
     &                 Sub105(HelAll(Cha(4)),Gen(1),Sfe7)*
     &                 Sub4(HelAll(Gen(5)),Neu(3),Sfe6))/
     &               ((S - Mf2(4,Gen(1)))*
     &                 (Sub112(Gen(5),Sfe6) + 
     &                   Sub20186(Cha(4),Gen(1),Gen(5),Neu(3)))*
     &                 (Sub20186(Cha(4),Gen(1),Gen(5),Neu(3)) + 
     &                   Sub20229(Gen(1),Sfe7))) - 
     &              (Sub20231(HelAll(Cha(4)),Gen(1),Gen(5),Neu(3),Sfe6,
     &                  Sfe7)*Sub340(Gen(5),Sfe7,Sfe8)*
     &                 Sub341(Gen(1),Sfe6,Sfe8))/
     &               (T14 - Sub407(Gen(1),Sfe6)))))*
     &       IndexDelta(Gen(1),Gen(5)))

#if DEBUG >= 4
        DEB("qdbarg_nIxJqubar_self_Sfe6_Sfe7_Sfe8:Cloop(1)", Cloop(HelAll(1)))
#endif

#include "virt_contains.h"

        end

