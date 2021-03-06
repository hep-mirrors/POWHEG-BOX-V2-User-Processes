#if 0
* qdqdbar_nInJg_vert.F
* form factors for {F[4, {Gen(1), Col1}], -F[4, {Gen(2), Col2}]} -> {F[11, {Neu(3)}], F[11, {Neu(4)}], V[5, {Glu5}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 6-Mar-2017 20:30
#endif

#include "qdqdbar_nInJg_vars.h"
#include "virt_inline.h"
#include "virt_contains.h"


        subroutine qdqdbar_nInJg_vert
        implicit none

#include "qdqdbar_nInJg_vars.h"
#include "virt_inline.h"

        Cloop(HelAll(1)) = 
     &   Cloop(HelAll(1)) + 
     &    Alfa/CW2*(GS*(1/36.D0*
     &           (IndexDelta(Gen(1),Gen(2))*
     &             Sub17703(HelAll(Gen(1)),Gen(2),Neu(3),Neu(4))) + 
     &          1/9.D0*(-(Sub17706(HelAll(Gen(1)),Gen(2),Neu(3),Neu(4))/
     &                (Mf2(4,Gen(2)) + Sub17382(Gen(1),Gen(2),Neu(3),Neu(4)))
     &                ) - Sub17711(HelAll(Gen(1)),Gen(2),Neu(3),Neu(4))/
     &              (Mf2(4,Gen(1)) + Sub1554(Gen(1),Gen(2),Neu(3),Neu(4))))))
     &       /(MZ2 - S34 - cI*MZ*WZ)

#if DEBUG >= 4
        DEB("qdqdbar_nInJg_vert:Cloop(1)", Cloop(HelAll(1)))
#endif

#include "virt_contains.h"

        end

