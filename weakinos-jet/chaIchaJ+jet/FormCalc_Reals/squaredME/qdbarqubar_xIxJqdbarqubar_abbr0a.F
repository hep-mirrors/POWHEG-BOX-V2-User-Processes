#if 0
* qdbarqubar_xIxJqdbarqubar_abbr0a.F
* abbreviations for {-F[4, {Gen(1), Col1}], -F[3, {Gen(2), Col2}]} -> {-F[12, {Cha(3)}], F[12, {Cha(4)}], -F[4, {Gen(5), Col5}], -F[3, {Gen(6), Col6}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 23-Oct-2017 11:07
#endif

#include "qdbarqubar_xIxJqdbarqubar_vars.h"
#include "real_inline.h"
#include "real_contains.h"


        subroutine qdbarqubar_xIxJqdbarqubar_abbr0a
        implicit none

#include "qdbarqubar_xIxJqdbarqubar_vars.h"
#include "real_inline.h"

        Opt3(Gen(6)) = S + T + T14 + T15 - Mf2(3,Gen(6))


        Opt1(Cha(3),Cha(4)) = S34 + T + T14 - MCha2(Cha(3)) - MCha2(Cha(4))



        Sub29(Cha(3),Cha(4),Gen(1)) = -2*Mf2(4,Gen(1)) + Opt1(Cha(3),Cha(4))

        Sub179(Cha(3),Cha(4),Gen(1)) = -Mf2(4,Gen(1)) + Opt1(Cha(3),Cha(4))



        Sub19(Cha(3),Cha(4),Gen(2)) = 
     &   S34 + T24 + U - MCha2(Cha(3)) - MCha2(Cha(4)) - 2*Mf2(3,Gen(2))



        Sub21(Cha(3),Cha(4),Gen(5)) = 
     &   S34 + S35 + S45 - MCha2(Cha(3)) - MCha2(Cha(4)) - 
     &    2*Mf2(4,Gen(5))



        Sub175(Gen(1),Gen(2),Gen(5)) = 
     &   S + T15 + T25 - Mf2(3,Gen(2)) - Mf2(4,Gen(1)) - Mf2(4,Gen(5))



        Opt4(Gen(1),Gen(5),Gen(6)) = 
     &   U - 3*Mf2(4,Gen(1)) - 2*Mf2(4,Gen(5)) + Opt3(Gen(6))



        Opt2(Cha(4),Gen(1),Gen(5),Gen(6)) = 
     &   U - MCha2(Cha(4)) - Mf2(3,Gen(6)) - Mf2(4,Gen(1)) - Mf2(4,Gen(5))



        Sub20(Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -Mf2(3,Gen(6)) + Sub175(Gen(1),Gen(2),Gen(5))



        Sub167(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   S34 + S35 + T - 3*MCha2(Cha(3)) - Mf2(3,Gen(2)) + 
     &    Opt2(Cha(4),Gen(1),Gen(5),Gen(6))

        Sub173(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   S34 + S35 - 3*MCha2(Cha(3)) - 
     &    2*(MCha2(Cha(4)) + Mf2(3,Gen(2))) + Opt4(Gen(1),Gen(5),Gen(6))

        Sub174(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   S35 + S45 + T25 - 
     &    2*(MCha2(Cha(3)) + MCha2(Cha(4)) + Mf2(3,Gen(2))) - 
     &    3*(Mf2(4,Gen(1)) + Mf2(4,Gen(5))) + Opt3(Gen(6))

        Sub177(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   S + T24 + T25 - MCha2(Cha(3)) - 3*Mf2(3,Gen(2)) + 
     &    Opt2(Cha(4),Gen(1),Gen(5),Gen(6))

        Sub178(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   T24 + T25 - 2*(MCha2(Cha(3)) + MCha2(Cha(4))) - 
     &    3*Mf2(3,Gen(2)) + Opt4(Gen(1),Gen(5),Gen(6))

        Sub180(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -(Sub21(Cha(3),Cha(4),Gen(5))/
     &       (Mf2(4,Gen(1)) + Sub178(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))
     &      + Sub29(Cha(3),Cha(4),Gen(1))/
     &     (Mf2(4,Gen(1)) - Sub179(Cha(3),Cha(4),Gen(1)))

        Sub176(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   -(Sub19(Cha(3),Cha(4),Gen(2))/
     &       (Mf2(3,Gen(2)) + Sub174(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))))
     &      + Sub20(Gen(1),Gen(2),Gen(5),Gen(6))/
     &     (Mf2(3,Gen(2)) - Sub175(Gen(1),Gen(2),Gen(5)))

        Sub181(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) = 
     &   (2*Sub176(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6))*
     &       Sub177(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)) - 
     &      T15*Sub180(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))/
     &    (T15*Sub177(Cha(3),Cha(4),Gen(1),Gen(2),Gen(5),Gen(6)))


#include "real_contains.h"

        end

