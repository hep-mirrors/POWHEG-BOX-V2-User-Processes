#if 0
* ququ_xIxJququ_abbr0a.F
* abbreviations for {F[3, {Gen(1), Col1}], F[3, {Gen(2), Col2}]} -> {-F[12, {Cha(3)}], F[12, {Cha(4)}], F[3, {Gen(5), Col5}], F[3, {Gen(6), Col6}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 23-Oct-2017 11:02
#endif

#include "ququ_xIxJququ_vars.h"
#include "real_inline.h"
#include "real_contains.h"


        subroutine ququ_xIxJququ_abbr0a
        implicit none

#include "ququ_xIxJququ_vars.h"
#include "real_inline.h"


        Opt1(Cha(3),Cha(4)) = T + T14 - MCha2(Cha(3)) - MCha2(Cha(4))



        Sub33(Cha(3),Cha(4),Gen(1)) = S34 - 2*Mf2(3,Gen(1)) + Opt1(Cha(3),Cha(4))

        Sub231(Cha(3),Cha(4),Gen(1)) = S34 - Mf2(3,Gen(1)) + Opt1(Cha(3),Cha(4))



        Sub46(Cha(3),Cha(4),Gen(2)) = 
     &   S34 + T24 + U - MCha2(Cha(3)) - MCha2(Cha(4)) - 2*Mf2(3,Gen(2))



        Sub32(Cha(3),Cha(4),Gen(5)) = 
     &   S34 + S35 + S45 - MCha2(Cha(3)) - MCha2(Cha(4)) - 
     &    2*Mf2(3,Gen(5))



        Opt2(Cha(3),Cha(4),Gen(6)) = 
     &   S + T + T14 + T15 + T25 - 2*(MCha2(Cha(3)) + MCha2(Cha(4))) - 
     &    Mf2(3,Gen(6))



        Sub232(Gen(1),Gen(2),Gen(5)) = 
     &   S + T15 + T25 - Mf2(3,Gen(1)) - Mf2(3,Gen(2)) - Mf2(3,Gen(5))



        Sub24(Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -Mf2(3,Gen(6)) + Sub232(Gen(1),Gen(2),Gen(5))



        Sub234(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   S + T15 - 3*Mf2(3,Gen(1)) - Mf2(3,Gen(2)) - Mf2(3,Gen(5)) - 
     &    Mf2(3,Gen(6)) + Opt1(Cha(3),Cha(4))

        Sub235(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   T24 + U - 3*(Mf2(3,Gen(1)) + Mf2(3,Gen(2))) - 2*Mf2(3,Gen(5)) + 
     &    Opt2(Cha(3),Cha(4),Gen(6))

        Sub238(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   S + T24 + T25 + U - MCha2(Cha(3)) - MCha2(Cha(4)) - 
     &    Mf2(3,Gen(1)) - 3*Mf2(3,Gen(2)) - Mf2(3,Gen(5)) - Mf2(3,Gen(6))

        Sub239(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   S35 + S45 - 2*Mf2(3,Gen(2)) - 
     &    3*(Mf2(3,Gen(1)) + Mf2(3,Gen(5))) + Opt2(Cha(3),Cha(4),Gen(6))

        Sub317(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   S34 + S45 + T14 + T24 - MCha2(Cha(3)) - 3*MCha2(Cha(4)) - 
     &    Mf2(3,Gen(1)) - Mf2(3,Gen(2)) - Mf2(3,Gen(5)) - Mf2(3,Gen(6))


#include "real_contains.h"

        end

