#if 0
* ququbar_xIxJgg_real_Sfe7.F
* form factors for {F[3, {Gen(1), Col1}], -F[3, {Gen(2), Col2}]} -> {-F[12, {Cha(3)}], F[12, {Cha(4)}], V[5, {Glu5}], V[5, {Glu6}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 23-Oct-2017 11:01
#endif

#include "ququbar_xIxJgg_vars.h"
#include "real_inline.h"
#include "real_contains.h"


        subroutine ququbar_xIxJgg_real_Sfe7
        implicit none

#include "ququbar_xIxJgg_vars.h"
#include "real_inline.h"

        Ctree(HelAll(2)) = 
     &   Ctree(HelAll(2)) - 
     &    (4*Alfa*Pi**2)/(MW2*SW2)*
     &     (Alfas*IndexDelta(Gen(1),Gen(2))*
     &       Sub790(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Sfe7))

#if DEBUG >= 4
        DEB("ququbar_xIxJgg_real_Sfe7:Ctree(2)", Ctree(HelAll(2)))
#endif

        Ctree(HelAll(1)) = 
     &   Ctree(HelAll(1)) + 
     &    (4*Alfa*Pi**2)/(MW2*SW2)*
     &     (Alfas*IndexDelta(Gen(1),Gen(2))*
     &       Sub798(HelAll(Cha(3)),Cha(4),Gen(1),Gen(2),Sfe7))

#if DEBUG >= 4
        DEB("ququbar_xIxJgg_real_Sfe7:Ctree(1)", Ctree(HelAll(1)))
#endif

#include "real_contains.h"

        end

