#if 0
* qdqubar_nInJqdqubar_real_Sfe7_Sfe8.F
* form factors for {F[4, {Gen(1), Col1}], -F[3, {Gen(2), Col2}]} -> {F[11, {Neu(3)}], F[11, {Neu(4)}], F[4, {Gen(5), Col5}], -F[3, {Gen(6), Col6}]}
* generated by FormCalc 9.4 (7 Jun 2016) on 23-Oct-2017 10:17
#endif

#include "qdqubar_nInJqdqubar_vars.h"
#include "real_inline.h"
#include "real_contains.h"


        subroutine qdqubar_nInJqdqubar_real_Sfe7_Sfe8
        implicit none

#include "qdqubar_nInJqdqubar_vars.h"
        HelType dup1, dup2, dup3, dup4, dup5, dup6, dup7

#include "real_inline.h"

        dup1 = 1/(S45 - Sub205(Gen(1),Sfe8)) - 
     &    1/(Sub206(Gen(1),Gen(2),Gen(5),Gen(6),Neu(3),Neu(4)) + 
     &       Sub207(Gen(2),Sfe7))

        dup2 = S45 - Sub206(Gen(1),Gen(2),Gen(5),Gen(6),Neu(3),Neu(4)) - 
     &    Sub209(Gen(1),Sfe8) - Sub210(Gen(2),Sfe7)

        Ctree(HelAll(1)) = 
     &   Ctree(HelAll(1)) - 
     &    (8*Alfa*Pi**2)/(9.D0*CW2*MW2*SW2)*
     &     (Alfas*dup1*IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &        Sub14(HelAll(Gen(6)),Neu(3),Sfe7)*
     &        Sub18(HelAll(Gen(5)),Neu(4),Sfe8)*
     &        Sub20(HelAll(Gen(1)),Gen(2),Sfe7,Sfe8))/
     &      (CB*dup2*SB*(MGl2 - cI*(MGl*WGl) - 
     &          Sub204(Gen(1),Gen(5),Neu(4))))

#if DEBUG >= 4
        DEB("qdqubar_nInJqdqubar_real_Sfe7_Sfe8:Ctree(1)", Ctree(HelAll(1)))
#endif

        Ctree(HelAll(2)) = 
     &   Ctree(HelAll(2)) + 
     &    (8*Alfa*Pi**2)/(27.D0*CW2*MW2*SW2)*
     &     (Alfas*dup1*IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &        Sub14(HelAll(Gen(6)),Neu(3),Sfe7)*
     &        Sub18(HelAll(Gen(5)),Neu(4),Sfe8)*
     &        Sub20(HelAll(Gen(1)),Gen(2),Sfe7,Sfe8))/
     &      (CB*dup2*SB*(MGl2 - cI*(MGl*WGl) - 
     &          Sub204(Gen(1),Gen(5),Neu(4))))

#if DEBUG >= 4
        DEB("qdqubar_nInJqdqubar_real_Sfe7_Sfe8:Ctree(2)", Ctree(HelAll(2)))
#endif

        dup3 = 1/(S35 - Sub197(Gen(1),Sfe7)) - 
     &    1/(Sub198(Gen(1),Gen(2),Gen(5),Gen(6),Neu(3),Neu(4)) + 
     &       Sub199(Gen(2),Sfe8))

        dup4 = S35 - Sub198(Gen(1),Gen(2),Gen(5),Gen(6),Neu(3),Neu(4)) - 
     &    Sub201(Gen(1),Sfe7) - Sub202(Gen(2),Sfe8)

        Ctree(HelAll(1)) = 
     &   Ctree(HelAll(1)) + 
     &    (8*Alfa*Pi**2)/(9.D0*CW2*MW2*SW2)*
     &     (Alfas*dup3*IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &        Sub10(HelAll(Gen(1)),Gen(2),Sfe7,Sfe8)*
     &        Sub4(HelAll(Gen(5)),Neu(3),Sfe7)*
     &        Sub8(HelAll(Gen(6)),Neu(4),Sfe8))/
     &      (CB*dup4*SB*(MGl2 - cI*(MGl*WGl) - 
     &          Sub196(Gen(1),Gen(5),Neu(3))))

#if DEBUG >= 4
        DEB("qdqubar_nInJqdqubar_real_Sfe7_Sfe8:Ctree(1)", Ctree(HelAll(1)))
#endif

        Ctree(HelAll(2)) = 
     &   Ctree(HelAll(2)) - 
     &    (8*Alfa*Pi**2)/(27.D0*CW2*MW2*SW2)*
     &     (Alfas*dup3*IndexDelta(Gen(1),Gen(5))*IndexDelta(Gen(2),Gen(6))*
     &        Sub10(HelAll(Gen(1)),Gen(2),Sfe7,Sfe8)*
     &        Sub4(HelAll(Gen(5)),Neu(3),Sfe7)*
     &        Sub8(HelAll(Gen(6)),Neu(4),Sfe8))/
     &      (CB*dup4*SB*(MGl2 - cI*(MGl*WGl) - 
     &          Sub196(Gen(1),Gen(5),Neu(3))))

#if DEBUG >= 4
        DEB("qdqubar_nInJqdqubar_real_Sfe7_Sfe8:Ctree(2)", Ctree(HelAll(2)))
#endif

        dup5 = (Sub176(HelAll(Gen(2)),Neu(3),Sfe8)*
     &       Sub193(HelAll(Gen(5)),Gen(6),Sfe7,Sfe8))/
     &     (U - Sub199(Gen(2),Sfe8)) - 
     &    (Sub182(HelAll(Gen(6)),Neu(3),Sfe8)*
     &       Sub184(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8))/
     &     (Sub199(Gen(2),Sfe8) + 
     &       Sub206(Gen(1),Gen(2),Gen(5),Gen(6),Neu(3),Neu(4)))

        dup6 = (Sub187(HelAll(Gen(2)),Neu(4),Sfe8)*
     &       Sub244(HelAll(Gen(1)),Gen(5),Gen(6),Neu(3),Sfe7,Sfe8))/
     &     (T24 - Sub199(Gen(2),Sfe8)) - 
     &    (Sub195(HelAll(Gen(2)),Gen(5),Sfe7,Sfe8)*
     &       Sub40(HelAll(Gen(1)),Neu(3),Sfe7)*
     &       Sub8(HelAll(Gen(6)),Neu(4),Sfe8))/
     &     ((T - Sub197(Gen(1),Sfe7))*
     &       (Sub198(Gen(1),Gen(2),Gen(5),Gen(6),Neu(3),Neu(4)) + 
     &         Sub199(Gen(2),Sfe8)))

        dup7 = dup6/
     &     (MGl2 - cI*(MGl*WGl) - Sub196(Gen(1),Gen(5),Neu(3))) - 
     &    ((Sub176(HelAll(Gen(2)),Neu(3),Sfe8)*
     &          Sub178(HelAll(Gen(1)),Gen(6),Sfe7,Sfe8)*
     &          Sub43(HelAll(Gen(5)),Neu(4),Sfe7))/
     &        ((S45 - Sub197(Gen(1),Sfe7))*(U - Sub199(Gen(2),Sfe8)))+
     &         (dup5*Sub47(HelAll(Gen(1)),Neu(4),Sfe7))/
     &        (T14 - Sub197(Gen(1),Sfe7)))/
     &     (MGl2 - cI*(MGl*WGl) - Sub204(Gen(1),Gen(5),Neu(4)))

        Ctree(HelAll(1)) = 
     &   Ctree(HelAll(1)) + 
     &    (8*Alfa*Pi**2)/(9.D0*CW2*MW2*SW2)*
     &     (Alfas*dup7*IndexDelta(Gen(1),Gen(5))*
     &        IndexDelta(Gen(2),Gen(6)))/(CB*SB)

#if DEBUG >= 4
        DEB("qdqubar_nInJqdqubar_real_Sfe7_Sfe8:Ctree(1)", Ctree(HelAll(1)))
#endif

        Ctree(HelAll(2)) = 
     &   Ctree(HelAll(2)) - 
     &    (8*Alfa*Pi**2)/(27.D0*CW2*MW2*SW2)*
     &     (Alfas*dup7*IndexDelta(Gen(1),Gen(5))*
     &        IndexDelta(Gen(2),Gen(6)))/(CB*SB)

#if DEBUG >= 4
        DEB("qdqubar_nInJqdqubar_real_Sfe7_Sfe8:Ctree(2)", Ctree(HelAll(2)))
#endif

#include "real_contains.h"

        end

