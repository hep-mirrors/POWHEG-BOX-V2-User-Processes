#if 0
* qdbarg_xIxJqdbar_pent_Sfe6_Sfe7.F
* form factors for {-F[4, {Gen(1), Col1}], V[5, {Glu2}]} -> {-F[12, {Cha(3)}], F[12, {Cha(4)}], -F[4, {Gen(5), Col5}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 11-Nov-2017 20:04
#endif

#include "qdbarg_xIxJqdbar_vars.h"
#include "virt_inline.h"
#include "virt_contains.h"


        subroutine qdbarg_xIxJqdbar_pent_Sfe6_Sfe7
        implicit none

#include "qdbarg_xIxJqdbar_vars.h"
#include "virt_inline.h"

        Cloop(HelAll(1)) = 
     &   Cloop(HelAll(1)) + 
     &    Alfa/(6.D0*MW2*SW2)*
     &     (Alfas*GS*IndexDelta(Gen(1),Gen(5))*
     &        (Sqrt(2.D0)*(Mf2(3,Gen(1))*
     &             Sub13778(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &             Sub6504(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7))+
     &            S2B*(9/2.D0*
     &              Sub13776(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)
     &               + 1/2.D0*
     &              Sub13782(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)
     &               - 9/2.D0*
     &              Sub13786(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)
     &               - 9*Sub13811(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,
     &               Sfe7) + 
     &             9*Sub13813(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,
     &               Sfe7) - 
     &             Sub13827(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,
     &              Sfe7) + 
     &             Sub13810(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub9342(HelAll(Gen(1)),Gen(5),Sfe6,Sfe7) + 
     &             Sub13784(Cha(3),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub9365(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)+
     &               Sub13820(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,
     &               Sfe7)*Sub9380(HelAll(Gen(1)),Gen(5),Sfe6,Sfe7) - 
     &             Sub13787(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub2349(HelAll(Gen(1)),Gen(5),Sfe6,Sfe7)*
     &              Sub9384(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)+
     &               Sub13788(Cha(3),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub9393(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)+
     &               Sub13789(Cha(3),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub9400(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)+
     &               Sub13791(Cha(3),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub9426(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)-
     &               Sub13793(Cha(3),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub9473(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)-
     &               Sub13794(Cha(3),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub9499(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)-
     &               Sub13795(Cha(3),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub9510(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)+
     &               Sub13797(Cha(3),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub9540(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)+
     &               Sub13798(Cha(3),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub9551(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)+
     &               Abb1*AaE0i20(Epsi(ee122),Sfe6,Sfe7)*
     &              Sub9607(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)-
     &               Sub13829(Cha(3),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7)*
     &              Sub9841(HelAll(Cha(3)),Cha(4),Gen(1),Gen(5),Sfe6,Sfe7))
     &          ))/S2B

#if DEBUG >= 4
        DEB("qdbarg_xIxJqdbar_pent_Sfe6_Sfe7:Cloop(1)", Cloop(HelAll(1)))
#endif

#include "virt_contains.h"

        end

