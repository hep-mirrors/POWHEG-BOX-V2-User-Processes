#if 0
* ququbar_nInJg_vert_Gen6.F
* form factors for {F[3, {Gen(1), Col1}], -F[3, {Gen(2), Col2}]} -> {F[11, {Neu(3)}], F[11, {Neu(4)}], V[5, {Glu5}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 6-Mar-2017 19:55
#endif

#include "ququbar_nInJg_vars.h"
#include "virt_inline.h"
#include "virt_contains.h"


        subroutine ququbar_nInJg_vert_Gen6
        implicit none

#include "ququbar_nInJg_vars.h"
#include "virt_inline.h"

        Cloop(HelAll(1)) = 
     &   Cloop(HelAll(1)) + 
     &    Alfa*(Alfas*GS*(1/(2.D0*CW*MW*SW2)*
     &           (Mf2(3,Gen6)*Sub18604(HelAll(Gen6),Neu(3),Neu(4))) + 
     &          1/12.D0*Sub18612(HelAll(Gen6),Neu(3),Neu(4))/
     &            (MZ2 - S34 - cI*MZ*WZ))*IndexDelta(Gen(1),Gen(2)))/S

#if DEBUG >= 4
        DEB("ququbar_nInJg_vert_Gen6:Cloop(1)", Cloop(HelAll(1)))
#endif

#include "virt_contains.h"

        end

