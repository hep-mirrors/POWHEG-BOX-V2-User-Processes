#if 0
* uubar_n1n2_abbr1h.F
* abbreviations for {F[3, {1, Col1}], -F[3, {1, Col2}]} -> {F[11, {1}], F[11, {2}]}
* generated by FormCalc 8.4 on 11-Jun-2015 10:57
#endif

#include "uubar_n1n2_vars.h"
#include "contains.h"


	subroutine uubar_n1n2_abbr1h
	implicit none

#include "uubar_n1n2_vars.h"


	F35 = ChainV1(Spinor(3,1,2),0,k(1),0,Spinor(4,-1,1))

	F27 = -ChainV0(Spinor(3,1,2),0,0,Spinor(4,-1,1))

	F19 = ChainB0(Spinor(3,1,2),0,0,Spinor(4,-1,1))

	F31 = ChainV1(Spinor(2,-1,2),0,k(1),0,Spinor(3,-1,1))

	F33 = ChainV1(Spinor(2,-1,2),0,k(1),1,Spinor(3,1,2))

	F40 = ChainV1(Spinor(2,-1,2),0,k(1),0,Spinor(4,-1,1))

	F42 = ChainV1(Spinor(2,-1,2),0,k(1),1,Spinor(4,1,2))

	F32 = ChainB1(Spinor(2,-1,2),0,k(1),0,Spinor(3,-1,1))

	F34 = -ChainB1(Spinor(2,-1,2),0,k(1),1,Spinor(3,1,2))

	F41 = ChainB1(Spinor(2,-1,2),0,k(1),0,Spinor(4,-1,1))

	F39 = -ChainB1(Spinor(2,-1,2),0,k(1),1,Spinor(4,1,2))

	F28 = ChainV1(Spinor(3,1,2),0,k(2),0,Spinor(1,1,1))

	F38 = -ChainB1(Spinor(3,1,2),0,k(1),0,Spinor(4,-1,1))

	F30 = ChainB1(Spinor(3,1,2),0,k(2),0,Spinor(1,1,1))

	F36 = ChainV1(Spinor(4,1,2),0,k(2),0,Spinor(1,1,1))

	F37 = ChainB1(Spinor(4,1,2),0,k(2),0,Spinor(1,1,1))

	F16 = ChainV0(Spinor(2,-1,2),0,0,Spinor(1,1,1))

	F23 = ChainV0(Spinor(2,-1,2),0,1,Spinor(3,1,2))

	F13 = -ChainB0(Spinor(2,-1,2),0,0,Spinor(1,1,1))

	F20 = -ChainB0(Spinor(2,-1,2),0,1,Spinor(3,1,2))

	F22 = -ChainV0(Spinor(3,-1,1),1,0,Spinor(1,1,1))

	F26 = ChainB0(Spinor(3,-1,1),1,0,Spinor(1,1,1))

	F21 = -ChainV0(Spinor(4,-1,1),1,0,Spinor(1,1,1))

	F24 = ChainB0(Spinor(4,-1,1),1,0,Spinor(1,1,1))

	F25 = ChainV1(Spinor(2,-1,2),0,k(3),0,Spinor(1,1,1))

	F29 = -ChainB1(Spinor(2,-1,2),0,k(3),0,Spinor(1,1,1))

	F14 = -ChainV0(Spinor(4,1,2),0,0,Spinor(3,-1,1))

	F15 = ChainB0(Spinor(4,1,2),0,0,Spinor(3,-1,1))

	F17 = ChainV1(Spinor(4,1,2),0,k(1),0,Spinor(3,-1,1))

	F18 = -ChainB1(Spinor(4,1,2),0,k(1),0,Spinor(3,-1,1))

	Sub212 = F12*F31*MNeu(1) - F11*(2*F12*Sub198 + F36*MNeu(2))

	Sub210 = F32*F4*MNeu(1) - F3*(2*F4*Sub198 + F37*MNeu(2))

	Sub201 = F5*F6*MNeu2(1) + F16*F27*MNeu2(2)

	Sub213 = F36*MNeu(2) - F12*(Sub208 + MNeu2(2))

	Sub209 = F37*MNeu(2) - F4*(Sub208 + MNeu2(2))

        Sub191 = -((F3*F36 + F13*F14*MNeu(1))*MNeu(2)) + 
     &    F13*(F18*MNeu(1) + F15*MNeu2(1)) + F12*F3*MNeu2(2)

	Sub223 = F30*F5*MNeu(1) + F6*(2*F5*Sub198 - F40*MNeu(2))

	Sub224 = F28*F5*MNeu(1) + F7*(2*F5*Sub198 - F40*MNeu(2))

	Sub225 = F10*F30*MNeu(1) + F6*(2*F10*Sub198 - F41*MNeu(2))

	Sub226 = F10*F28*MNeu(1) + F7*(2*F10*Sub198 - F41*MNeu(2))

	Sub179 = 2*F18 + F15*MNeu(1) - F14*MNeu(2)

	Sub178 = 2*F17 + F14*MNeu(1) - F15*MNeu(2)

        Sub204 = F10*F7*MNeu2(1) + 
     &    F13*((F38 - F27*MNeu(1))*MNeu(2) + F19*MNeu2(2))

	Sub184 = F18 + F15*MNeu(1) - F14*MNeu(2)

	Sub183 = F17 + F14*MNeu(1) - F15*MNeu(2)

        Sub182 = 1/SW2*
     &    (Sub181*(F8*F9*Sub7 - F11*F12*Sub8) + 
     &      SW2*(Sub180*(4*F3*F4*Sub7 - 4*F1*F2*Sub8)))

        Sub200 = F5*(F6*U + F30*MNeu(1)) - 
     &    F16*(F35 - F19*MNeu(1))*MNeu(2)

	Sub228 = F31*MNeu(1) - F11*(T - MNeu2(1))

	Sub229 = F32*MNeu(1) - F3*(T - MNeu2(1))

	Sub236 = F41*MNeu(2) - F10*(U - MNeu2(2))

	Sub234 = F40*MNeu(2) - F5*(U - MNeu2(2))

	Sub216 = F31*MNeu(1) - F11*(T - MNeu2(1) - MNeu2(2))

	Sub218 = F32*MNeu(1) - F3*(T - MNeu2(1) - MNeu2(2))

	Sub240 = F30*MNeu(1) + F6*(U - MNeu2(1) - MNeu2(2))

	Sub244 = F28*MNeu(1) + F7*(U - MNeu2(1) - MNeu2(2))

	Sub205 = F30*MNeu(1) + F6*(U - MNeu2(1))

	Sub202 = F28*MNeu(1) + F7*(U - MNeu2(1))

	Sub231 = F26*F39*MNeu(2) + F12*F3*(T - MNeu2(1))

        Sub243 = -((F41*F6 - F20*F21*MNeu(1))*MNeu(2)) + 
     &    F10*(F30*MNeu(1) + F6*(U - MNeu2(1) - MNeu2(2)))

        Sub242 = -((F40*F7 - F23*F24*MNeu(1))*MNeu(2)) + 
     &    F5*(F28*MNeu(1) + F7*(U - MNeu2(1) - MNeu2(2)))

	Sub190 = F37*MNeu(2) + F4*(T - MNeu2(2))

        Sub189 = -((F11*F37 + F15*F16*MNeu(1))*MNeu(2)) + 
     &    F16*(F17*MNeu(1) + F14*MNeu2(1)) - F11*F4*(T - MNeu2(2))

	Sub221 = F12*Sub218 - (F3*F36 + F13*F14*MNeu(1))*MNeu(2)

	Sub217 = F4*Sub216 - (F11*F37 + F15*F16*MNeu(1))*MNeu(2)

	Sub241 = F5*Sub240 - (F40*F6 - F16*F19*MNeu(1))*MNeu(2)

	Sub219 = F4*Sub218 - (F3*F37 + F2*F22*MNeu(1))*MNeu(2)

	Sub245 = F10*Sub244 - (F41*F7 - F13*F27*MNeu(1))*MNeu(2)

	Sub220 = F12*Sub216 - (F11*F36 + F26*F9*MNeu(1))*MNeu(2)

	LOOP(Sfe5, 1,2,1)

        Sub211(HelInd(Sfe5)) = 
     &   (F11*Sub209 - F31*F4*MNeu(1))*Sub12(Sfe5) + 
     &    Sub210*Sub13(Sfe5)

        Sub214(HelInd(Sfe5)) = 
     &   Sub212*Sub12(Sfe5) + 
     &    (F3*Sub213 - F12*F32*MNeu(1))*Sub13(Sfe5)

        Sub139(HelInd(Sfe5)) = 
     &   (F11*Sub12(Sfe5) - F3*Sub13(Sfe5))*Sub138(Sfe5) + 
     &    (F11*Sub127(Sfe5) + F3*Sub132(Sfe5))*Sub15(Sfe5)

        Sub196(HelInd(Sfe5)) = 
     &   F11*F12*Sub12(Sfe5) - 2*F2*F26*Sub13(Sfe5)

        Sub195(HelInd(Sfe5)) = 
     &   2*F22*F9*Sub12(Sfe5) - F3*F4*Sub13(Sfe5)

        Sub140(HelInd(Sfe5)) = 
     &   F4*(F11*Sub128(Sfe5) + F3*Sub133(Sfe5)) - 
     &    F12*Sub139(HelInd(Sfe5))

        Sub199(HelInd(Sfe5)) = 
     &   F22*F9*Sub10(Sfe5)*Sub12(Sfe5) + 
     &    F2*F26*Sub13(Sfe5)*Sub15(Sfe5)

        Sub215(HelInd(Sfe5)) = 
     &   Sub10(Sfe5)*Sub211(HelInd(Sfe5)) + 
     &    Sub15(Sfe5)*Sub214(HelInd(Sfe5))

        Sub186(HelInd(Sfe5)) = 
     &   F10*F6*Sub3(Sfe5) - 2*F20*F24*Sub5(Sfe5)

	Sub185(HelInd(Sfe5)) = 2*F21*F23*Sub3(Sfe5) - F5*F7*Sub5(Sfe5)

        Sub188(HelInd(Sfe5)) = 
     &   F21*F23*Sub2(Sfe5)*Sub3(Sfe5) + 
     &    F20*F24*Sub5(Sfe5)*Sub6(Sfe5)

        Sub227(HelInd(Sfe5)) = 
     &   Sub2(Sfe5)*(Sub223*Sub3(Sfe5) - Sub224*Sub5(Sfe5)) - 
     &    (Sub225*Sub3(Sfe5) - Sub226*Sub5(Sfe5))*Sub6(Sfe5)

        Sub110(HelInd(Sfe5)) = 
     &   Sub109(Sfe5)*(F6*Sub3(Sfe5) - F7*Sub5(Sfe5)) - 
     &    Sub6(Sfe5)*(F6*Sub59(Sfe5) - F7*Sub97(Sfe5))

        Sub98(HelInd(Sfe5)) = 
     &   F6*Sub77(Sfe5) - F7*
     &     (Sub5(Sfe5)*Sub76(Sfe5) + Sub2(Sfe5)*Sub97(Sfe5))

        Sub197(HelInd(Sfe5)) = 
     &   Sub10(Sfe5)*Sub195(HelInd(Sfe5)) - 
     &    Sub15(Sfe5)*Sub196(HelInd(Sfe5))

        Sub279(HelInd(Sfe5)) = 
     &   3*Pi*Sub140(HelInd(Sfe5))/(SB*SW) + 
     &    2*CW2*MW2*(Alfas*(F11*Sub12(Sfe5) - F3*Sub13(Sfe5))*
     &       (F4*Sub10(Sfe5) - F12*Sub15(Sfe5))*
     &       (Sub276(Sfe5) + 2*Sub278(Sfe5)))

        Sub187(HelInd(Sfe5)) = 
     &   Sub185(HelInd(Sfe5))*Sub2(Sfe5) - 
     &    Sub186(HelInd(Sfe5))*Sub6(Sfe5)

        Sub283(HelInd(Sfe5)) = 
     &   2*CW2*MW2*(Alfas*(Sub280(Sfe5) + 2*Sub282(Sfe5))*
     &       (F6*Sub3(Sfe5) - F7*Sub5(Sfe5))*
     &       (F5*Sub2(Sfe5) - F10*Sub6(Sfe5))) + 
     &    3*Pi*(F10*Sub110(HelInd(Sfe5)) + F5*Sub98(HelInd(Sfe5)))/
     &      (SB*SW)

        Sub192(HelInd(Sfe5)) = 
     &   F11*MNeu2(2)*Sub12(Sfe5) + F3*T*Sub13(Sfe5)

        Sub206(HelInd(Sfe5)) = 
     &   Sub205*Sub3(Sfe5) - (F7*U + F28*MNeu(1))*Sub5(Sfe5)

        Sub193(HelInd(Sfe5)) = 
     &   F11*(F12*T + F36*MNeu(2))*Sub12(Sfe5) + 
     &    Sub191*Sub13(Sfe5) - F12*Sub192(HelInd(Sfe5))

        Sub230(HelInd(Sfe5)) = 
     &   (F4*Sub228 - F22*F42*MNeu(2))*Sub12(Sfe5) - 
     &    F4*Sub229*Sub13(Sfe5)

        Sub232(HelInd(Sfe5)) = 
     &   Sub228*Sub12(Sfe5) - F32*MNeu(1)*Sub13(Sfe5)

        Sub203(HelInd(Sfe5)) = 
     &   (Sub200 - Sub201)*Sub3(Sfe5) - F5*Sub202*Sub5(Sfe5)

        Sub235(HelInd(Sfe5)) = 
     &   (F6*Sub234 - F21*F33*MNeu(1))*Sub3(Sfe5) - 
     &    F7*Sub234*Sub5(Sfe5)

        Sub237(HelInd(Sfe5)) = 
     &   F6*Sub236*Sub3(Sfe5) - 
     &    (F7*Sub236 - F24*F34*MNeu(1))*Sub5(Sfe5)

        Sub222(HelInd(Sfe5)) = 
     &   Sub10(Sfe5)*(Sub217*Sub12(Sfe5) - Sub219*Sub13(Sfe5)) - 
     &    (Sub220*Sub12(Sfe5) - Sub221*Sub13(Sfe5))*Sub15(Sfe5)

        Sub194(HelInd(Sfe5)) = 
     &   Sub10(Sfe5)*(Sub189*Sub12(Sfe5) + 
     &       F3*Sub190*Sub13(Sfe5)) + 
     &    Sub15(Sfe5)*Sub193(HelInd(Sfe5))

        Sub233(HelInd(Sfe5)) = 
     &   Sub10(Sfe5)*Sub230(HelInd(Sfe5)) - 
     &    Sub15(Sfe5)*(Sub231*Sub13(Sfe5) + 
     &       F12*Sub232(HelInd(Sfe5)))

        Sub238(HelInd(Sfe5)) = 
     &   Sub2(Sfe5)*Sub235(HelInd(Sfe5)) - 
     &    Sub237(HelInd(Sfe5))*Sub6(Sfe5)

        Sub207(HelInd(Sfe5)) = 
     &   -(Sub2(Sfe5)*Sub203(HelInd(Sfe5))) + 
     &    (F10*Sub206(HelInd(Sfe5)) + Sub204*Sub5(Sfe5))*Sub6(Sfe5)

        Sub246(HelInd(Sfe5)) = 
     &   Sub2(Sfe5)*(Sub241*Sub3(Sfe5) - Sub242*Sub5(Sfe5)) - 
     &    (Sub243*Sub3(Sfe5) - Sub245*Sub5(Sfe5))*Sub6(Sfe5)

        Sub293(HelInd(Sfe5)) = 
     &   S*pave7(PVC(dd12),Sfe5)*Sub199(HelInd(Sfe5)) + 
     &    pave6(PVC(dd13),Sfe5)*Sub207(HelInd(Sfe5)) + 
     &    pave7(PVC(dd3),Sfe5)*Sub215(HelInd(Sfe5)) + 
     &    pave6(PVC(dd23),Sfe5)*Sub238(HelInd(Sfe5))

        Sub296(HelInd(Sfe5)) = 
     &   S*pave6(PVC(dd12),Sfe5)*Sub188(HelInd(Sfe5)) + 
     &    pave7(PVC(dd13),Sfe5)*Sub194(HelInd(Sfe5)) + 
     &    pave7(PVC(dd33),Sfe5)*Sub222(HelInd(Sfe5)) + 
     &    pave6(PVC(dd3),Sfe5)*Sub227(HelInd(Sfe5)) + 
     &    pave7(PVC(dd23),Sfe5)*Sub233(HelInd(Sfe5)) + 
     &    pave6(PVC(dd33),Sfe5)*Sub246(HelInd(Sfe5)) + 
     &    pave23(PVC(cc0),Sfe5)*(F6*Sub3(Sfe5) - F7*Sub5(Sfe5))*
     &     (F5*Sub2(Sfe5) - F10*Sub6(Sfe5))

	ENDLOOP(Sfe5)

	LOOP(Sfe6, 1,2,1)
	LOOP(Sfe5, 1,2,1)

        Sub151(HelInd(Sfe5),Sfe6) = 
     &   F11*Sub145(Sfe6)*USfC(Sfe5,2,3,1)*USfC(Sfe6,1,3,1) - 
     &    F3*Sub148(Sfe6)*USfC(Sfe5,1,3,1)*USfC(Sfe6,2,3,1)

        Sub165(HelInd(Sfe5),Sfe6) = 
     &   F5*Sub154(Sfe6)*USfC(Sfe5,2,3,1)*USfC(Sfe6,1,3,1) - 
     &    F10*Sub160(Sfe6)*USfC(Sfe5,1,3,1)*USfC(Sfe6,2,3,1)

        Sub173(HelInd(Sfe5),Sfe6) = 
     &   F11*Mino3*Sub148(Sfe6)*USfC(Sfe5,1,3,1)*
     &     USfC(Sfe6,1,3,1) - 
     &    F3*Mino3C*Sub145(Sfe6)*USfC(Sfe5,2,3,1)*USfC(Sfe6,2,3,1)

        Sub166(HelInd(Sfe5),Sfe6) = 
     &   F5*Mino3*Sub160(Sfe6)*USfC(Sfe5,1,3,1)*USfC(Sfe6,1,3,1) - 
     &    F10*Mino3C*Sub154(Sfe6)*USfC(Sfe5,2,3,1)*USfC(Sfe6,2,3,1)

        Sub150(HelInd(Sfe5),Sfe6) = 
     &   F11*Sub146(Sfe5,Sfe6) - F3*Sub149(Sfe5,Sfe6)

        Sub157(HelInd(Sfe5),Sfe6) = 
     &   F6*Sub155(Sfe5,Sfe6) - F7*Sub156(Sfe5,Sfe6)

        Sub168(HelInd(Sfe5),Sfe6) = 
     &   MNeu2(2)*Sub165(HelInd(Sfe5),Sfe6) + 
     &    MNeu(2)*Sub166(HelInd(Sfe5),Sfe6)

        Sub167(HelInd(Sfe5),Sfe6) = 
     &   MSf2(Sfe6,3,1)*Sub165(HelInd(Sfe5),Sfe6) + 
     &    MNeu(2)*Sub166(HelInd(Sfe5),Sfe6)

        Sub174(HelInd(Sfe5),Sfe6) = 
     &   MNeu2(1)*Sub151(HelInd(Sfe5),Sfe6) + 
     &    MNeu(1)*Sub173(HelInd(Sfe5),Sfe6)

        Sub175(HelInd(Sfe5),Sfe6) = 
     &   MSf2(Sfe6,3,1)*Sub151(HelInd(Sfe5),Sfe6) + 
     &    MNeu(1)*Sub173(HelInd(Sfe5),Sfe6)

        Sub152(HelInd(Sfe5),Sfe6) = 
     &   Sub15(Sfe5)*Sub151(HelInd(Sfe5),Sfe6) + 
     &    (F11*Sub12(Sfe5) - F3*Sub13(Sfe5))*Sub24(Sfe6)*
     &     USf(Sfe5,2,3,1)*USf(Sfe6,1,3,1)

        Sub170(HelInd(Sfe5),Sfe6) = 
     &   F12*Sub24(Sfe6)*USf(Sfe5,2,3,1)*USf(Sfe6,1,3,1) - 
     &    F4*Sub23(Sfe6)*USf(Sfe5,1,3,1)*USf(Sfe6,2,3,1)

        Sub158(HelInd(Sfe5),Sfe6) = 
     &   F7*Sub29(Sfe6)*USf(Sfe5,2,3,1)*USf(Sfe6,1,3,1) - 
     &    F6*Sub28(Sfe6)*USf(Sfe5,1,3,1)*USf(Sfe6,2,3,1)

        Sub171(HelInd(Sfe5),Sfe6) = 
     &   F12*Mino3C*Sub23(Sfe6)*USf(Sfe5,1,3,1)*USf(Sfe6,1,3,1) - 
     &    F4*Mino3*Sub24(Sfe6)*USf(Sfe5,2,3,1)*USf(Sfe6,2,3,1)

        Sub163(HelInd(Sfe5),Sfe6) = 
     &   F7*Mino3C*Sub28(Sfe6)*USf(Sfe5,1,3,1)*USf(Sfe6,1,3,1) - 
     &    F6*Mino3*Sub29(Sfe6)*USf(Sfe5,2,3,1)*USf(Sfe6,2,3,1)

        Sub161(HelInd(Sfe5),Sfe6) = 
     &   Sub158(HelInd(Sfe5),Sfe6)*Sub6(Sfe5) - 
     &    Sub160(Sfe6)*(F6*Sub3(Sfe5) - F7*Sub5(Sfe5))*
     &     USfC(Sfe5,1,3,1)*USfC(Sfe6,2,3,1)

        Sub153(HelInd(Sfe5),Sfe6) = 
     &   F4*Sub150(HelInd(Sfe5),Sfe6) - 
     &    F12*Sub152(HelInd(Sfe5),Sfe6)

        Sub162(HelInd(Sfe5),Sfe6) = 
     &   F5*Sub157(HelInd(Sfe5),Sfe6) + 
     &    F10*Sub161(HelInd(Sfe5),Sfe6)

        Sub169(HelInd(Sfe5),Sfe6) = 
     &   MNeu2(1)*Sub158(HelInd(Sfe5),Sfe6) + 
     &    MNeu(1)*Sub163(HelInd(Sfe5),Sfe6)

        Sub164(HelInd(Sfe5),Sfe6) = 
     &   MSf2(Sfe6,3,1)*Sub158(HelInd(Sfe5),Sfe6) + 
     &    MNeu(1)*Sub163(HelInd(Sfe5),Sfe6)

        Sub270(HelInd(Sfe5),Sfe6) = 
     &   pave18(PVC(cc0),Sfe6)*Sub167(HelInd(Sfe5),Sfe6) + 
     &    pave18(PVC(cc1),Sfe6)*Sub168(HelInd(Sfe5),Sfe6)

        Sub176(HelInd(Sfe5),Sfe6) = 
     &   MNeu2(2)*Sub170(HelInd(Sfe5),Sfe6) + 
     &    MNeu(2)*Sub171(HelInd(Sfe5),Sfe6)

        Sub172(HelInd(Sfe5),Sfe6) = 
     &   MSf2(Sfe6,3,1)*Sub170(HelInd(Sfe5),Sfe6) + 
     &    MNeu(2)*Sub171(HelInd(Sfe5),Sfe6)

        Sub266(HelInd(Sfe5),Sfe6) = 
     &   pave20(PVC(cc1),Sfe6)*Sub174(HelInd(Sfe5),Sfe6) + 
     &    pave20(PVC(cc0),Sfe6)*Sub175(HelInd(Sfe5),Sfe6)

        Sub272(HelInd(Sfe5),Sfe6) = 
     &   pave19(PVC(cc0),Sfe6)*Sub164(HelInd(Sfe5),Sfe6) + 
     &    pave19(PVC(cc1),Sfe6)*Sub169(HelInd(Sfe5),Sfe6)

        Sub268(HelInd(Sfe5),Sfe6) = 
     &   pave21(PVC(cc0),Sfe6)*Sub172(HelInd(Sfe5),Sfe6) + 
     &    pave21(PVC(cc1),Sfe6)*Sub176(HelInd(Sfe5),Sfe6)

        Sub267(HelInd(Sfe5),Sfe6) = 
     &   pave9(PVC(bb0))*Sub153(HelInd(Sfe5),Sfe6) + 
     &    (F4*Sub10(Sfe5) - F12*Sub15(Sfe5))*
     &     Sub266(HelInd(Sfe5),Sfe6)

        Sub271(HelInd(Sfe5),Sfe6) = 
     &   pave8(PVC(bb0))*Sub162(HelInd(Sfe5),Sfe6) + 
     &    Sub270(HelInd(Sfe5),Sfe6)*(F6*Sub3(Sfe5) - F7*Sub5(Sfe5))

        Sub269(HelInd(Sfe5),Sfe6) = 
     &   Sub267(HelInd(Sfe5),Sfe6) - 
     &    (F11*Sub12(Sfe5) - F3*Sub13(Sfe5))*
     &     Sub268(HelInd(Sfe5),Sfe6)

        Sub252(HelInd(Sfe5),Sfe6) = 
     &   F17*Sub148(Sfe6)*Sub2(Sfe5) + F18*Sub145(Sfe6)*Sub6(Sfe5)

        Sub249(HelInd(Sfe5),Sfe6) = 
     &   (F17 - F15*MNeu(2))*Sub148(Sfe6)*Sub2(Sfe5) + 
     &    (F18 - F14*MNeu(2))*Sub145(Sfe6)*Sub6(Sfe5)

        Sub273(HelInd(Sfe5),Sfe6) = 
     &   Sub271(HelInd(Sfe5),Sfe6) - 
     &    Sub272(HelInd(Sfe5),Sfe6)*
     &     (F5*Sub2(Sfe5) - F10*Sub6(Sfe5))

        Sub177(HelInd(Sfe5),Sfe6) = 
     &   F16*Mino3*USf(Sfe5,2,3,1)*USfC(Sfe6,1,3,1) + 
     &    F13*Mino3C*USf(Sfe5,1,3,1)*USfC(Sfe6,2,3,1)

        Sub143(HelInd(Sfe5),Sfe6) = 
     &   F11*F12*USf(Sfe5,1,3,1)*USfC(Sfe6,1,3,1) + 
     &    F1*F2*USf(Sfe5,2,3,1)*USfC(Sfe6,2,3,1)

        Sub247(HelInd(Sfe5),Sfe6) = 
     &   F25*USf(Sfe5,1,3,1)*USfC(Sfe6,1,3,1) + 
     &    F29*USf(Sfe5,2,3,1)*USfC(Sfe6,2,3,1)

        Sub142(HelInd(Sfe5),Sfe6) = 
     &   F8*F9*USf(Sfe5,1,3,1)*USfC(Sfe6,1,3,1) + 
     &    F3*F4*USf(Sfe5,2,3,1)*USfC(Sfe6,2,3,1)

        Sub254(HelInd(Sfe5),Sfe6) = 
     &   -Sub177(HelInd(Sfe5),Sfe6) + Sub247(HelInd(Sfe5),Sfe6)

        Sub250(HelInd(Sfe5),Sfe6) = 
     &   F17*Sub13(Sfe5)*Sub154(Sfe6) + 
     &    F18*Sub12(Sfe5)*Sub160(Sfe6)

        Sub253(HelInd(Sfe5),Sfe6) = 
     &   Sub183*Sub13(Sfe5)*Sub154(Sfe6) + 
     &    Sub184*Sub12(Sfe5)*Sub160(Sfe6)

        Sub248(HelInd(Sfe5),Sfe6) = 
     &   (F17 + F14*MNeu(1))*Sub13(Sfe5)*Sub154(Sfe6) + 
     &    (F18 + F15*MNeu(1))*Sub12(Sfe5)*Sub160(Sfe6)

        Sub239(HelInd(Sfe5),Sfe6) = 
     &   Sub13(Sfe5)*Sub142(HelInd(Sfe5),Sfe6)*Sub154(Sfe6) + 
     &    Sub12(Sfe5)*Sub143(HelInd(Sfe5),Sfe6)*Sub160(Sfe6)

        Sub284(HelInd(Sfe5),Sfe6) = 
     &   pave4(PVC(dd0),Sfe5,Sfe6)*Sub177(HelInd(Sfe5),Sfe6) - 
     &    pave4(PVC(dd11),Sfe5,Sfe6)*Sub247(HelInd(Sfe5),Sfe6)

        Sub285(HelInd(Sfe5),Sfe6) = 
     &   pave4(PVC(dd2),Sfe5,Sfe6)*Sub177(HelInd(Sfe5),Sfe6) - 
     &    pave4(PVC(dd12),Sfe5,Sfe6)*Sub247(HelInd(Sfe5),Sfe6)

        Sub286(HelInd(Sfe5),Sfe6) = 
     &   pave4(PVC(dd3),Sfe5,Sfe6)*Sub177(HelInd(Sfe5),Sfe6) - 
     &    pave4(PVC(dd13),Sfe5,Sfe6)*Sub247(HelInd(Sfe5),Sfe6)

        Sub251(HelInd(Sfe5),Sfe6) = 
     &   Sub142(HelInd(Sfe5),Sfe6)*Sub148(Sfe6)*Sub2(Sfe5) + 
     &    Sub143(HelInd(Sfe5),Sfe6)*Sub145(Sfe6)*Sub6(Sfe5)

        Sub274(HelInd(Sfe5),Sfe6) = 
     &   Sub269(HelInd(Sfe5),Sfe6)/(U - MSf2(Sfe5,3,1)) - 
     &    Sub273(HelInd(Sfe5),Sfe6)/(T - MSf2(Sfe5,3,1))

        Sub263(HelInd(Sfe5),Sfe6) = 
     &   (F17*Sub7 - F18*Sub8)*pave17(PVC(cc1),Sfe5,Sfe6) + 
     &    (Sub183*Sub7 - Sub184*Sub8)*pave17(PVC(cc2),Sfe5,Sfe6)

        Sub255(HelInd(Sfe5),Sfe6) = 
     &   Sub177(HelInd(Sfe5),Sfe6) + Sub247(HelInd(Sfe5),Sfe6)

        Sub144(HelInd(Sfe5),Sfe6) = 
     &   Sub7*Sub142(HelInd(Sfe5),Sfe6) - 
     &    Sub8*Sub143(HelInd(Sfe5),Sfe6)

        Sub287(HelInd(Sfe5),Sfe6) = 
     &   pave5(PVC(dd2),Sfe5,Sfe6)*Sub177(HelInd(Sfe5),Sfe6) + 
     &    pave5(PVC(dd12),Sfe5,Sfe6)*Sub247(HelInd(Sfe5),Sfe6)

        Sub289(HelInd(Sfe5),Sfe6) = 
     &   pave5(PVC(dd3),Sfe5,Sfe6)*Sub177(HelInd(Sfe5),Sfe6) + 
     &    pave5(PVC(dd13),Sfe5,Sfe6)*Sub247(HelInd(Sfe5),Sfe6)

        Sub264(HelInd(Sfe5),Sfe6) = 
     &   (Sub178*Sub7 - Sub179*Sub8)*pave17(PVC(cc0),Sfe5,Sfe6) + 
     &    2*Sub263(HelInd(Sfe5),Sfe6)

        Sub256(HelInd(Sfe5),Sfe6) = 
     &   Sub183*Sub148(Sfe6)*Sub2(Sfe5) + 
     &    Sub184*Sub145(Sfe6)*Sub6(Sfe5)

        Sub288(HelInd(Sfe5),Sfe6) = 
     &   pave5(PVC(dd0),Sfe5,Sfe6)*Sub177(HelInd(Sfe5),Sfe6) + 
     &    pave5(PVC(dd11),Sfe5,Sfe6)*Sub247(HelInd(Sfe5),Sfe6) + 
     &    pave5(PVC(dd1),Sfe5,Sfe6)*Sub255(HelInd(Sfe5),Sfe6)

        Sub265(HelInd(Sfe5),Sfe6) = 
     &   4*pave17(PVC(cc00),Sfe5,Sfe6)*Sub144(HelInd(Sfe5),Sfe6) + 
     &    Sub177(HelInd(Sfe5),Sfe6)*Sub264(HelInd(Sfe5),Sfe6)

        Sub290(HelInd(Sfe5),Sfe6) = 
     &   pave4(PVC(dd1),Sfe5,Sfe6)*Sub248(HelInd(Sfe5),Sfe6)*
     &     Sub254(HelInd(Sfe5),Sfe6) + 
     &    Sub252(HelInd(Sfe5),Sfe6)*Sub287(HelInd(Sfe5),Sfe6) + 
     &    Sub249(HelInd(Sfe5),Sfe6)*Sub288(HelInd(Sfe5),Sfe6) + 
     &    Sub256(HelInd(Sfe5),Sfe6)*Sub289(HelInd(Sfe5),Sfe6)

	ENDLOOP(Sfe5)
	ENDLOOP(Sfe6)

#include "contains.h"

	end
