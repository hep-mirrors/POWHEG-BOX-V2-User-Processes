#if 0
* qdqdbar_xIxJququbar_3645_Sq1Sq2_abbr0s.F
* abbreviations for {F[4, {Gen(1), Col1}], -F[4, {Gen(2), Col2}]} -> {-F[12, {Cha(3)}], F[12, {Cha(4)}], F[3, {Gen(5), Col5}], -F[3, {Gen(6), Col6}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 23-Oct-2017 11:05
#endif

#include "qdqdbar_xIxJququbar_3645_Sq1Sq2_vars.h"
#include "realOS_inline.h"
#include "realOS_contains.h"


        subroutine qdqdbar_xIxJququbar_3645_Sq1Sq2_abbr0s
        implicit none

#include "qdqdbar_xIxJququbar_3645_Sq1Sq2_vars.h"
#include "realOS_inline.h"

        MatSUN(1,1) = 9

        MatSUN(1,2) = 3

        MatSUN(2,1) = 3

        MatSUN(2,2) = 9


        Sub148(Gen(1),Sq2) = 
     &   -(cI*(MSf(Sq2,4,Gen(1))*WSf(Sq2,4,Gen(1)))) + 
     &    MSf2(Sq2,4,Gen(1))

        Sub151(Gen(1),Sq2) = 
     &   -(cI*(MSf(Sq2,4,Gen(1))*(WREG2 + WSf(Sq2,4,Gen(1))))) + 
     &    MSf2(Sq2,4,Gen(1))



        Sub149(Gen(2),Sq1) = 
     &   -(cI*(MSf(Sq1,4,Gen(2))*WSf(Sq1,4,Gen(2)))) + 
     &    MSf2(Sq1,4,Gen(2))

        Sub152(Gen(2),Sq1) = 
     &   -(cI*(MSf(Sq1,4,Gen(2))*(WREG2 + WSf(Sq1,4,Gen(2))))) + 
     &    MSf2(Sq1,4,Gen(2))



        Sub140(Gen(5),Sq1) = 
     &   -(cI*(MSf(Sq1,4,Gen(5))*WSf(Sq1,4,Gen(5)))) + 
     &    MSf2(Sq1,4,Gen(5))

        Sub144(Gen(5),Sq1) = 
     &   -(cI*(MSf(Sq1,4,Gen(5))*(WREG2 + WSf(Sq1,4,Gen(5))))) + 
     &    MSf2(Sq1,4,Gen(5))



        Sub142(Gen(6),Sq1) = 
     &   -(cI*(MSf(Sq1,4,Gen(6))*WSf(Sq1,4,Gen(6)))) + 
     &    MSf2(Sq1,4,Gen(6))

        Sub145(Gen(6),Sq1) = 
     &   -(cI*(MSf(Sq1,4,Gen(6))*(WREG2 + WSf(Sq1,4,Gen(6))))) + 
     &    MSf2(Sq1,4,Gen(6))



        Sub6(Cha(3),Gen(2),Sq1) = 
     &   -(2*MW*(CB*UChaC(Cha(3),1)*USf(Sq1,1,4,Gen(2)))) + 
     &    Sqrt(2.D0)*(Mf(4,Gen(2))*UChaC(Cha(3),2)*USf(Sq1,2,4,Gen(2)))



        Sub1(Cha(3),Gen(6),Sq1) = 
     &   -(2*MW*(CB*UChaC(Cha(3),1)*USf(Sq1,1,4,Gen(6)))) + 
     &    Sqrt(2.D0)*(Mf(4,Gen(6))*UChaC(Cha(3),2)*USf(Sq1,2,4,Gen(6)))



        Sub7(Cha(4),Gen(1),Sq2) = 
     &   -(2*MW*(CB*UCha(Cha(4),1)*USfC(Sq2,1,4,Gen(1)))) + 
     &    Sqrt(2.D0)*(Mf(4,Gen(1))*UCha(Cha(4),2)*USfC(Sq2,2,4,Gen(1)))



        Sub2(Cha(4),Gen(5),Sq1) = 
     &   -(2*MW*(CB*UCha(Cha(4),1)*USfC(Sq1,1,4,Gen(5)))) + 
     &    Sqrt(2.D0)*(Mf(4,Gen(5))*UCha(Cha(4),2)*USfC(Sq1,2,4,Gen(5)))


#include "realOS_contains.h"

        end

