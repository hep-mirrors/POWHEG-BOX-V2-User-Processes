#if 0
* dubar_n1x1_abbr1h.F
* abbreviations for {F[4, {1, Col1}], -F[3, {1, Col2}]} -> {F[11, {1}], F[12, {1}]}
* generated by FormCalc 8.4 on 19-Jun-2015 12:29
#endif

#include "dubar_n1x1_vars.h"
#include "contains.h"


	subroutine dubar_n1x1_abbr1h
	implicit none

#include "dubar_n1x1_vars.h"


	F27 = ChainV1(Spinor(4,1,2),0,k(2),0,Spinor(1,1,1))

	F24 = ChainV0(Spinor(3,1,2),0,0,Spinor(2,1,1))

	F23 = ChainB0(Spinor(3,1,2),0,1,Spinor(4,1,2))

	F31 = ChainV1(Spinor(2,-1,2),0,k(1),0,Spinor(3,-1,1))

	F32 = ChainB1(Spinor(2,-1,2),0,k(1),0,Spinor(3,-1,1))

	F29 = -ChainB1(Spinor(2,-1,2),0,k(1),1,Spinor(4,1,2))

	F30 = ChainV1(Spinor(3,1,2),0,k(1),1,Spinor(4,1,2))

	F35 = ChainB1(Spinor(3,1,2),0,k(2),0,Spinor(1,1,1))

	F11 = -ChainV0(Spinor(4,1,2),0,0,Spinor(3,-1,1))

	F34 = ChainV1(Spinor(3,1,2),0,k(2),0,Spinor(1,1,1))

	F28 = ChainB1(Spinor(4,1,2),0,k(1),0,Spinor(2,1,1))

	F14 = -ChainB1(Spinor(4,1,2),0,k(1),0,Spinor(3,-1,1))

	F20 = ChainV0(Spinor(1,1,1),1,0,Spinor(2,1,1))

	F15 = -ChainV0(Spinor(1,1,1),1,0,Spinor(3,-1,1))

	F12 = ChainV0(Spinor(2,-1,2),0,0,Spinor(1,1,1))

	F9 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(1,1,1))

	F17 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(4,-1,1))

	F16 = -ChainB0(Spinor(2,-1,2),0,1,Spinor(4,1,2))

	F22 = ChainB0(Spinor(3,-1,1),1,0,Spinor(1,1,1))

	F21 = ChainV0(Spinor(3,1,2),0,1,Spinor(4,1,2))

	F18 = ChainV0(Spinor(4,1,2),0,0,Spinor(1,1,1))

	F19 = ChainV0(Spinor(4,1,2),0,0,Spinor(2,1,1))

	F25 = ChainV1(Spinor(2,-1,2),0,k(3),0,Spinor(1,1,1))

	F26 = -ChainB1(Spinor(2,-1,2),0,k(3),0,Spinor(1,1,1))

	F33 = ChainB1(Spinor(3,1,2),0,k(1),1,Spinor(4,1,2))

	F10 = ChainB0(Spinor(4,1,2),0,0,Spinor(3,-1,1))

	F13 = ChainV1(Spinor(4,1,2),0,k(1),0,Spinor(3,-1,1))

	Sub192 = (F14 - F11*MCha(1))*MNeu(1) + F10*MNeu2(1)

        Sub212 = -(F7*(F19*S - F28*MCha(1))) + 
     &    (F19*F35 - F20*F23*MCha(1))*MNeu(1)

        Sub213 = -(F6*(F19*S - F28*MCha(1))) + 
     &    (F19*F34 - F2*F24*MCha(1))*MNeu(1)

	Sub208 = F28*F6*MCha(1) - F19*(2*F6*S - F34*MNeu(1))

	Sub207 = F28*F7*MCha(1) - F19*(2*F7*S - F35*MNeu(1))

	Sub180 = F14 - 1/2.D0*(F11*MCha(1)) + 1/2.D0*(F10*MNeu(1))

	Sub181 = F13 - 1/2.D0*(F10*MCha(1)) + 1/2.D0*(F11*MNeu(1))

        Sub209 = F19*F7*S - F20*(F30*MCha(1) - F21*MCha2(1)) - 
     &    (F19*F35 - F20*F23*MCha(1))*MNeu(1)

	Sub203 = F28*MCha(1) - F19*(S - 2*MNeu2(1))

	Sub178 = -F14 + F11*MCha(1) - F10*MNeu(1)

	Sub179 = -F13 + F10*MCha(1) - F11*MNeu(1)

	Sub205 = 1/Sqrt(2.D0)*Sub203 - Sqrt(2.D0)*(F19*MNeu2(1))

        Sub204 = 1/Sqrt(2.D0)*(F7*Sub203 - F20*F33*MNeu(1)) - 
     &    Sqrt(2.D0)*(F19*F7*MNeu2(1))

	Sub185 = F27*MCha(1) + F2*(U - MCha2(1))

        Sub200 = F30*MCha(1) - F21*MCha2(1) - F33*MNeu(1) + 
     &    F21*(U - MNeu2(1))

	Sub183 = F27*MCha(1) + F2*(U - 2*MCha2(1))

	Sub190 = F27*MCha(1) + F2*(T - MCha2(1))

	Sub184 = F31*MNeu(1) - F1*(2*T + U - 2*MNeu2(1))

	Sub197 = F31*MNeu(1) - F1*(T - MNeu2(1))

	Sub198 = F32*MNeu(1) - F8*(T - MNeu2(1))

	Sub194 = F27*MCha(1) + F2*(T - MCha2(1) - MNeu2(1))

	Sub191 = F27*MCha(1) + F2*(T - MCha2(1))

	Sub187 = F8*Sub185 + F2*(F8*Sub186 - F32*MNeu(1))

        Sub201 = F20*Sub200 - F19*F7*(S - MNeu2(1)) + 
     &    (F20*F21 - F19*F7)*MNeu2(1)

	Sub195 = F1*Sub194 - (F2*F31 - F22*F4*MCha(1))*MNeu(1)

	Sub196 = F8*Sub194 - (F2*F32 - F11*F9*MCha(1))*MNeu(1)

	LOOP(Sfe5, 1,2,1)

        Sub235(HelInd(Sfe5)) = 
     &   -(F5*pave6(PVC(cc2),Sfe5)) + F19*pave7(PVC(cc2),Sfe5)

        Sub117(HelInd(Sfe5)) = 
     &   -(F7*(MW2*Sub90(Sfe5) + CW2*(CB*Sub97(Sfe5)))) + 
     &    F6*Sub116(Sfe5)

        Sub165(HelInd(Sfe5)) = 
     &   1/2.D0*(Sqrt(2.D0)*(CB2*F2*Sub139(Sfe5)) + 
     &       2*F18*SB2*Sub129(Sfe5))/(CB2*SB2)

        Sub210(HelInd(Sfe5)) = 
     &   Sub209*Sub4(Sfe5) + F19*(F6*S - F34*MNeu(1))*Sub6(Sfe5)

        Sub118(HelInd(Sfe5)) = 
     &   1/CW2*(Sub117(HelInd(Sfe5))*Sub3(Sfe5)) - 
     &    (F7*Sub4(Sfe5) + F6*Sub6(Sfe5))*Sub80(Sfe5)

        Sub206(HelInd(Sfe5)) = 
     &   Sqrt(2.D0)*(F20*F21*Sub4(Sfe5)) + 
     &    1/Sqrt(2.D0)*(F19*F6*Sub6(Sfe5))

        Sub119(HelInd(Sfe5)) = 
     &   Sqrt(2.D0)*(F5*Sub118(HelInd(Sfe5)))/CB2 - 
     &    (2*F17*(F7*Sub4(Sfe5) + F6*Sub6(Sfe5))*Sub86(Sfe5))/SB2

        Sub182(HelInd(Sfe5)) = 
     &   Sqrt(2.D0)*(2*F16*F22*Sub10(Sfe5) - F1*F2*Sub9(Sfe5))

        Sub166(HelInd(Sfe5)) = 
     &   1/(Sqrt(2.D0)*CW2)*(F2*(F1*Sub156(Sfe5) + F8*Sub164(Sfe5))*
     &        Sub7(Sfe5))/SB2 - 
     &    Sub165(HelInd(Sfe5))*(F8*Sub10(Sfe5) - F1*Sub9(Sfe5))

        Sub243(HelInd(Sfe5)) = 
     &   3*Pi*(SB2*Sub166(HelInd(Sfe5))) - 
     &    2*MW2*(Alfas*F2*SB*SW*Sub242(Sfe5)*Sub7(Sfe5)*
     &       (F8*Sub10(Sfe5) - F1*Sub9(Sfe5)))

        Sub236(HelInd(Sfe5)) = 
     &   -(F5*(T - MNeu2(1))*pave6(PVC(cc1),Sfe5)) + 
     &    F19*(T - MCha2(1))*pave7(PVC(cc1),Sfe5) + 
     &    T*Sub235(HelInd(Sfe5))

	Sub202(HelInd(Sfe5)) = Sub201*Sub4(Sfe5) - F19*F6*S*Sub6(Sfe5)

        Sub188(HelInd(Sfe5)) = 
     &   Sub187*Sub10(Sfe5) + (-(F1*Sub183) + F2*Sub184)*Sub9(Sfe5)

        Sub193(HelInd(Sfe5)) = 
     &   -((F8*Sub191 - F9*Sub192)*Sub10(Sfe5)) + 
     &    F1*Sub190*Sub9(Sfe5)

        Sub199(HelInd(Sfe5)) = 
     &   (F2*Sub198 - F22*F29*MCha(1))*Sub10(Sfe5) - 
     &    F2*Sub197*Sub9(Sfe5)

        Sub258(HelInd(Sfe5)) = 
     &   pave11(PVC(dd23),Sfe5)*Sub193(HelInd(Sfe5)) + 
     &    pave11(PVC(dd13),Sfe5)*Sub199(HelInd(Sfe5))

        Sub237(HelInd(Sfe5)) = 
     &   (F19 - F5)*pave14(PVC(bb0),Sfe5) + 2*Sub236(HelInd(Sfe5))

        Sub255(HelInd(Sfe5)) = 
     &   pave12(PVC(dd12),Sfe5)*Sub202(HelInd(Sfe5)) + 
     &    pave12(PVC(dd3),Sfe5)*
     &     (Sub207*Sub4(Sfe5) + Sub208*Sub6(Sfe5)) + 
     &    pave12(PVC(dd33),Sfe5)*
     &     (Sub212*Sub4(Sfe5) + Sub213*Sub6(Sfe5))

        Sub261(HelInd(Sfe5)) = 
     &   F16*F22*S*pave11(PVC(dd12),Sfe5)*Sub10(Sfe5) + 
     &    pave11(PVC(dd3),Sfe5)*Sub188(HelInd(Sfe5)) + 
     &    pave11(PVC(dd33),Sfe5)*
     &     (Sub196*Sub10(Sfe5) - Sub195*Sub9(Sfe5))

        Sub238(HelInd(Sfe5)) = 
     &   Sqrt(2.D0)*Sub237(HelInd(Sfe5)) - 
     &    2*F5*Sub56*pave6(PVC(cc0),Sfe5) + 
     &    2*F19*Sub57*pave7(PVC(cc0),Sfe5)

        Sub256(HelInd(Sfe5)) = 
     &   -(pave12(PVC(dd23),Sfe5)*Sub210(HelInd(Sfe5))) + 
     &    Sub255(HelInd(Sfe5)) + 
     &    F19*Sub254(Sfe5)*(F7*Sub4(Sfe5) + F6*Sub6(Sfe5))

        Sub262(HelInd(Sfe5)) = 
     &   Sub258(HelInd(Sfe5)) - Sub261(HelInd(Sfe5)) - 
     &    F2*(Sub259(Sfe5) - S*Sub260(Sfe5))*
     &     (F8*Sub10(Sfe5) - F1*Sub9(Sfe5))

        Sub263(HelInd(Sfe5)) = 
     &   Sqrt(2.D0)*Sub262(HelInd(Sfe5)) + 
     &    2*pave11(PVC(dd00),Sfe5)*Sub182(HelInd(Sfe5))

        Sub239(HelInd(Sfe5)) = 
     &   3*Pi*Sub119(HelInd(Sfe5))/(CB*SW) + 
     &    2*MW2*(Alfas*Sub238(HelInd(Sfe5))*Sub3(Sfe5)*
     &        (F7*Sub4(Sfe5) + F6*Sub6(Sfe5)))/CB2

        Sub257(HelInd(Sfe5)) = 
     &   Sqrt(2.D0)*Sub256(HelInd(Sfe5)) + 
     &    4*pave12(PVC(dd00),Sfe5)*Sub206(HelInd(Sfe5)) + 
     &    2*pave12(PVC(dd13),Sfe5)*
     &     (Sub204*Sub4(Sfe5) + F6*Sub205*Sub6(Sfe5))

	ENDLOOP(Sfe5)

	LOOP(Sfe6, 1,2,1)

        Sub176(HelInd(Sfe6)) = 
     &   F2*Mino3C*MCha(1)*USf(Sfe6,1,4,1) - 
     &    F18*MCha2(1)*USf(Sfe6,2,4,1)

        Sub174(HelInd(Sfe6)) = 
     &   F2*Mino3C*MCha(1)*USf(Sfe6,1,4,1) - 
     &    F18*MSf2(Sfe6,4,1)*USf(Sfe6,2,4,1)

        Sub167(HelInd(Sfe6)) = 
     &   F5*Mino3*MCha(1)*USfC(Sfe6,1,3,1) - 
     &    F17*MCha2(1)*USfC(Sfe6,2,3,1)

        Sub226(HelInd(Sfe6)) = 
     &   pave17(PVC(cc0),Sfe6)*Sub174(HelInd(Sfe6)) + 
     &    pave17(PVC(cc1),Sfe6)*Sub176(HelInd(Sfe6))

	ENDLOOP(Sfe6)

	LOOP(Sfe6, 1,2,1)
	LOOP(Sfe5, 1,2,1)

        Sub168(HelInd(Sfe5),Sfe6) = 
     &   F6*Mino3C*Sub65(Sfe6)*USf(Sfe5,1,4,1)*USf(Sfe6,1,4,1) + 
     &    F7*Mino3*Sub66(Sfe6)*USf(Sfe5,2,4,1)*USf(Sfe6,2,4,1)

        Sub123(HelInd(Sfe5),Sfe6) = 
     &   F1*Sub120(Sfe6)*USfC(Sfe5,2,3,1)*USfC(Sfe6,1,3,1) - 
     &    F8*Sub122(Sfe6)*USfC(Sfe5,1,3,1)*USfC(Sfe6,2,3,1)

        Sub124(HelInd(Sfe5),Sfe6) = 
     &   (F2*Sub123(HelInd(Sfe5),Sfe6)*Sub7(Sfe5))/SB2 + 
     &    (F18*Sub15(Sfe6)*(F8*Sub10(Sfe5) - F1*Sub9(Sfe5))*
     &       USf(Sfe5,1,3,1)*USf(Sfe6,2,4,1))/(CB*SB)

        Sub67(HelInd(Sfe5),Sfe6) = 
     &   F6*Sub66(Sfe6)*USf(Sfe5,2,4,1)*USf(Sfe6,1,4,1) + 
     &    F7*Sub65(Sfe6)*USf(Sfe5,1,4,1)*USf(Sfe6,2,4,1)

        Sub68(HelInd(Sfe5),Sfe6) = 
     &   (F5*Sub3(Sfe5)*Sub67(HelInd(Sfe5),Sfe6))/CB2 + 
     &    (F17*(F7*Sub4(Sfe5) + F6*Sub6(Sfe5))*Sub63(Sfe6)*
     &       USfC(Sfe5,1,4,1)*USfC(Sfe6,2,3,1))/(CB*SB)

        Sub221(HelInd(Sfe5),Sfe6) = 
     &   Sub2*(Sub181*pave18(PVC(cc0),Sfe5,Sfe6) + 
     &       F13*pave18(PVC(cc1),Sfe5,Sfe6)) + 
     &    Sub1*(Sub180*pave18(PVC(cc0),Sfe5,Sfe6) + 
     &       F14*pave18(PVC(cc1),Sfe5,Sfe6))

        Sub244(HelInd(Sfe5),Sfe6) = 
     &   (F13 - F10*MCha(1))*pave19(PVC(dd0),Sfe5,Sfe6) + 
     &    F13*pave19(PVC(dd2),Sfe5,Sfe6)

        Sub246(HelInd(Sfe5),Sfe6) = 
     &   (F13 - F10*MCha(1))*pave19(PVC(dd11),Sfe5,Sfe6) + 
     &    F13*pave19(PVC(dd12),Sfe5,Sfe6)

        Sub231(HelInd(Sfe5),Sfe6) = 
     &   pave22(PVC(bb0))*Sub68(HelInd(Sfe5),Sfe6) + 
     &    (2*Sub167(HelInd(Sfe6))*Sub230(Sfe6)*
     &       (F7*Sub4(Sfe5) + F6*Sub6(Sfe5))*Sub63(Sfe6)*
     &       USfC(Sfe5,1,4,1))/S2B

        Sub250(HelInd(Sfe5),Sfe6) = 
     &   (F14 + F10*MNeu(1))*pave21(PVC(dd1),Sfe5,Sfe6) + 
     &    F10*MNeu(1)*pave21(PVC(dd2),Sfe5,Sfe6) + 
     &    F11*MCha(1)*pave21(PVC(dd3),Sfe5,Sfe6)

        Sub249(HelInd(Sfe5),Sfe6) = 
     &   (F14 + F10*MNeu(1))*pave21(PVC(dd11),Sfe5,Sfe6) + 
     &    (F14 + 2*F10*MNeu(1))*pave21(PVC(dd12),Sfe5,Sfe6) + 
     &    (F14 + F11*MCha(1) + F10*MNeu(1))*
     &     pave21(PVC(dd13),Sfe5,Sfe6) + 
     &    F10*MNeu(1)*pave21(PVC(dd22),Sfe5,Sfe6) + 
     &    (F11*MCha(1) + F10*MNeu(1))*
     &     pave21(PVC(dd23),Sfe5,Sfe6) + 
     &    F11*MCha(1)*pave21(PVC(dd33),Sfe5,Sfe6)

        Sub222(HelInd(Sfe5),Sfe6) = 
     &   (Sub1*Sub178 + Sub179*Sub2)*pave18(PVC(cc2),Sfe5,Sfe6) - 
     &    Sub221(HelInd(Sfe5),Sfe6)

        Sub245(HelInd(Sfe5),Sfe6) = 
     &   Sub179*pave19(PVC(dd3),Sfe5,Sfe6) - 
     &    Sub244(HelInd(Sfe5),Sfe6)

        Sub247(HelInd(Sfe5),Sfe6) = 
     &   Sub179*pave19(PVC(dd13),Sfe5,Sfe6) - 
     &    Sub246(HelInd(Sfe5),Sfe6)

        Sub177(HelInd(Sfe5),Sfe6) = 
     &   F12*Mino3*USf(Sfe5,2,4,1)*USfC(Sfe6,1,3,1) + 
     &    F9*Mino3C*USf(Sfe5,1,4,1)*USfC(Sfe6,2,3,1)

        Sub60(HelInd(Sfe5),Sfe6) = 
     &   F1*F2*USf(Sfe5,1,4,1)*USfC(Sfe6,1,3,1) + 
     &    F15*F16*USf(Sfe5,2,4,1)*USfC(Sfe6,2,3,1)

        Sub214(HelInd(Sfe5),Sfe6) = 
     &   F25*USf(Sfe5,1,4,1)*USfC(Sfe6,1,3,1) + 
     &    F26*USf(Sfe5,2,4,1)*USfC(Sfe6,2,3,1)

        Sub61(HelInd(Sfe5),Sfe6) = 
     &   F3*F4*USf(Sfe5,1,4,1)*USfC(Sfe6,1,3,1) + 
     &    F18*F8*USf(Sfe5,2,4,1)*USfC(Sfe6,2,3,1)

        Sub215(HelInd(Sfe5),Sfe6) = 
     &   Sub177(HelInd(Sfe5),Sfe6) + Sub214(HelInd(Sfe5),Sfe6)

        Sub248(HelInd(Sfe5),Sfe6) = 
     &   (F13 - F10*MCha(1))*pave19(PVC(dd1),Sfe5,Sfe6)*
     &     Sub215(HelInd(Sfe5),Sfe6) - 
     &    Sub177(HelInd(Sfe5),Sfe6)*Sub245(HelInd(Sfe5),Sfe6) - 
     &    Sub214(HelInd(Sfe5),Sfe6)*Sub247(HelInd(Sfe5),Sfe6) + 
     &    2*pave19(PVC(dd00),Sfe5,Sfe6)*Sub61(HelInd(Sfe5),Sfe6)

        Sub170(HelInd(Sfe5),Sfe6) = 
     &   MNeu2(1)*Sub123(HelInd(Sfe5),Sfe6) + 
     &    F1*Mino3*MNeu(1)*Sub122(Sfe6)*USfC(Sfe5,1,3,1)*
     &     USfC(Sfe6,1,3,1)

        Sub172(HelInd(Sfe5),Sfe6) = 
     &   MSf2(Sfe6,3,1)*Sub123(HelInd(Sfe5),Sfe6) + 
     &    F1*Mino3*MNeu(1)*Sub122(Sfe6)*USfC(Sfe5,1,3,1)*
     &     USfC(Sfe6,1,3,1)

        Sub171(HelInd(Sfe5),Sfe6) = 
     &   Sub170(HelInd(Sfe5),Sfe6) - 
     &    F8*Mino3C*MNeu(1)*Sub120(Sfe6)*USfC(Sfe5,2,3,1)*
     &     USfC(Sfe6,2,3,1)

        Sub173(HelInd(Sfe5),Sfe6) = 
     &   Sub172(HelInd(Sfe5),Sfe6) - 
     &    F8*Mino3C*MNeu(1)*Sub120(Sfe6)*USfC(Sfe5,2,3,1)*
     &     USfC(Sfe6,2,3,1)

        Sub224(HelInd(Sfe5),Sfe6) = 
     &   pave20(PVC(cc1),Sfe6)*Sub171(HelInd(Sfe5),Sfe6) + 
     &    pave20(PVC(cc0),Sfe6)*Sub173(HelInd(Sfe5),Sfe6)

        Sub169(HelInd(Sfe5),Sfe6) = 
     &   MNeu(1)*Sub168(HelInd(Sfe5),Sfe6) - 
     &    MNeu2(1)*Sub67(HelInd(Sfe5),Sfe6)

        Sub229(HelInd(Sfe5),Sfe6) = 
     &   Sub169(HelInd(Sfe5),Sfe6)*Sub228(Sfe6) - 
     &    (MNeu2(1) - MSf2(Sfe6,4,1))*pave15(PVC(cc0),Sfe6)*
     &     Sub67(HelInd(Sfe5),Sfe6)

        Sub225(HelInd(Sfe5),Sfe6) = 
     &   (SB2*pave5(PVC(bb0))*Sub124(HelInd(Sfe5),Sfe6) + 
     &      F2*Sub224(HelInd(Sfe5),Sfe6)*Sub7(Sfe5))/SB2

        Sub251(HelInd(Sfe5),Sfe6) = 
     &   Sub214(HelInd(Sfe5),Sfe6)*Sub249(HelInd(Sfe5),Sfe6) + 
     &    Sub215(HelInd(Sfe5),Sfe6)*Sub250(HelInd(Sfe5),Sfe6)

        Sub62(HelInd(Sfe5),Sfe6) = 
     &   Sub1*Sub60(HelInd(Sfe5),Sfe6) + 
     &    Sub2*Sub61(HelInd(Sfe5),Sfe6)

        Sub227(HelInd(Sfe5),Sfe6) = 
     &   S2B*Sub225(HelInd(Sfe5),Sfe6) - 
     &    2*Sub15(Sfe6)*Sub226(HelInd(Sfe6))*
     &     (F8*Sub10(Sfe5) - F1*Sub9(Sfe5))*USf(Sfe5,1,3,1)

        Sub232(HelInd(Sfe5),Sfe6) = 
     &   Sub231(HelInd(Sfe5),Sfe6) + 
     &    (F5*Sub229(HelInd(Sfe5),Sfe6)*Sub3(Sfe5))/CB2 - 
     &    (2*F17*(MCha2(1) - MSf2(Sfe6,3,1))*pave16(PVC(cc0),Sfe6)*
     &       (F7*Sub4(Sfe5) + F6*Sub6(Sfe5))*Sub63(Sfe6)*
     &       USfC(Sfe5,1,4,1)*USfC(Sfe6,2,3,1))/S2B

        Sub252(HelInd(Sfe5),Sfe6) = 
     &   Sub251(HelInd(Sfe5),Sfe6) - 
     &    2*pave21(PVC(dd00),Sfe5,Sfe6)*Sub60(HelInd(Sfe5),Sfe6)

        Sub223(HelInd(Sfe5),Sfe6) = 
     &   -(Sub177(HelInd(Sfe5),Sfe6)*Sub222(HelInd(Sfe5),Sfe6)) + 
     &    2*pave18(PVC(cc00),Sfe5,Sfe6)*Sub62(HelInd(Sfe5),Sfe6)

        Sub233(HelInd(Sfe5),Sfe6) = 
     &   Sub227(HelInd(Sfe5),Sfe6)/(U - MSf2(Sfe5,3,1)) + 
     &    (S2B*Sub232(HelInd(Sfe5),Sfe6))/(T - MSf2(Sfe5,4,1))

	ENDLOOP(Sfe5)
	ENDLOOP(Sfe6)

#include "contains.h"

	end
