#if 0
* gqu_nInJqug_real.F
* form factors for {V[5, {Glu1}], F[3, {Gen(2), Col2}]} -> {F[11, {Neu(3)}], F[11, {Neu(4)}], F[3, {Gen(5), Col5}], V[5, {Glu6}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 23-Oct-2017 10:14
#endif

#include "gqu_nInJqug_vars.h"
#include "real_inline.h"
#include "real_contains.h"


        subroutine gqu_nInJqug_real
        implicit none

#include "gqu_nInJqug_vars.h"
#include "real_inline.h"

        Ctree(HelAll(1)) = 
     &   Ctree(HelAll(1)) + 
     &    (4*Alfa*Pi**2)/3.D0*
     &     (Alfas*IndexDelta(Gen(2),Gen(5))*
     &       Sub698(HelAll(Gen(2)),Gen(5),Neu(3),Neu(4)))

#if DEBUG >= 4
        DEB("gqu_nInJqug_real:Ctree(1)", Ctree(HelAll(1)))
#endif

        Ctree(HelAll(2)) = 
     &   Ctree(HelAll(2)) + 
     &    (4*Alfa*Pi**2)/(3.D0*CW2)*
     &     (Alfas*Sub717(HelAll(Gen(2)),Gen(5),Neu(3),Neu(4)))

#if DEBUG >= 4
        DEB("gqu_nInJqug_real:Ctree(2)", Ctree(HelAll(2)))
#endif

#include "real_contains.h"

        end

