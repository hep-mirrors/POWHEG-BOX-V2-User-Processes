#if 0
* ddbar_n4n4_abbr1s.F
* abbreviations for {F[4, {1, Col1}], -F[4, {1, Col2}]} -> {F[11, {4}], F[11, {4}]}
* generated by FormCalc 8.4 on 7-Jul-2015 9:57
#endif

#include "ddbar_n4n4_vars.h"
#include "contains.h"


	subroutine ddbar_n4n4_abbr1s
	implicit none

#include "ddbar_n4n4_vars.h"


	Sub88 = 2*dCB1 - CB*(2*dZe1 + dZbarfR1(4,1,1))

	Sub73 = 2*dCB1 - CB*(2*dZe1 + dZfL1(4,1,1))

	Sub74 = CB*(dMWsq1*SW + 2*MW2*dSW1) + MW2*(Sub73*SW)

	Sub89 = CB*(dMWsq1*SW + 2*MW2*dSW1) + MW2*(Sub88*SW)

	Sub75 = MD*Sub74 - 2*MW2*(CB*SW*dMf1(4,1))

	Sub90 = MD*Sub89 - 2*MW2*(CB*SW*dMf1(4,1))

	Sub58 = 2*dCB1 - CB*(2*dZe1 + dZbarfL1(4,1,1))

	Sub70 = 2*dSW1 + SW*(-2*dZe1 - dZfL1(4,1,1))

	Sub50 = -(3*CW*ZNeu(1,2)) + SW*ZNeu(1,1)

	Sub51 = -(3*CW*ZNeu(2,2)) + SW*ZNeu(2,1)

	Sub52 = -(3*CW*ZNeu(3,2)) + SW*ZNeu(3,1)

	Sub78 = -(3*CW*ZNeuC(1,2)) + SW*ZNeuC(1,1)

	Sub79 = -(3*CW*ZNeuC(2,2)) + SW*ZNeuC(2,1)

	Sub80 = -(3*CW*ZNeuC(3,2)) + SW*ZNeuC(3,1)

        Sub92 = dZfL1(11,1,4)*ZNeuC(1,1) + 
     &    dZfL1(11,2,4)*ZNeuC(2,1) + dZfL1(11,3,4)*ZNeuC(3,1) + 
     &    dZfL1(11,4,4)*ZNeuC(4,1)

	Sub41 = 2*MW2*(SW*dMf1(4,1)) - MD*(dMWsq1*SW + 2*MW2*dSW1)

	Sub49 = 2*dSW1 + SW*(-2*dZe1 - dZbarfL1(4,1,1))

	Sub86 = 2*dSW1*SW + CW2*(2*dZe1 + dZbarfR1(4,1,1))

        Sub44 = 2*MW*(CB*SW*USf(1,2,4,1)*ZNeu(4,1)) + 
     &    3*CW*MD*(USf(1,1,4,1)*ZNeu(4,3))

        Sub45 = 2*MW*(CB*SW*USf(2,2,4,1)*ZNeu(4,1)) + 
     &    3*CW*MD*(USf(2,1,4,1)*ZNeu(4,3))

        Sub81 = Sub78*dZfL1(11,1,4) + Sub79*dZfL1(11,2,4) + 
     &    Sub80*dZfL1(11,3,4) + Sub2*dZfL1(11,4,4)

        Sub53 = Sub50*dZfR1(11,1,4) + Sub51*dZfR1(11,2,4) + 
     &    Sub52*dZfR1(11,3,4) + Sub4*dZfR1(11,4,4)

        Sub42 = dZfR1(11,1,4)*ZNeu(1,3) + 
     &    dZfR1(11,2,4)*ZNeu(2,3) + dZfR1(11,3,4)*ZNeu(3,3) + 
     &    dZfR1(11,4,4)*ZNeu(4,3)

        Sub82 = dZfL1(11,1,4)*ZNeuC(1,3) + 
     &    dZfL1(11,2,4)*ZNeuC(2,3) + dZfL1(11,3,4)*ZNeuC(3,3) + 
     &    dZfL1(11,4,4)*ZNeuC(4,3)

	Sub34 = 4*CW2**2*dZe1 + CW2*(1 + 2*CW2)*dZZZ1

	Sub48 = 2*dSW1*SW + CW2*(2*dZe1 + dZbarfL1(4,1,1))

	Sub68 = 2*dSW1*SW + CW2*(2*dZe1 + dZfL1(4,1,1))

	Sub39 = 2*dCB1 - CB*(2*dZe1 + dZfR1(4,1,1))

	Sub37 = 2*dSW1*SW + CW2*(2*dZe1 + dZfR1(4,1,1))

	Sub54 = Sub53*SW + 3*CW*(Sub49*ZNeu(4,2))

	Sub43 = MD*MW2*(Sub42*SW) + Sub41*ZNeu(4,3)

        Sub38 = dZfR1(11,1,4)*ZNeu(1,1) + 
     &    dZfR1(11,2,4)*ZNeu(2,1) + dZfR1(11,3,4)*ZNeu(3,1) + 
     &    dZfR1(11,4,4)*ZNeu(4,1)

	Sub35 = Sub34*SW + 2*SW2*dSW1 - CW2*(6*dSW1 - 2*dZe1*SW)

	Sub32 = 2*dZe1 + dZZZ1 + dZbarfR1(4,1,1) + dZfR1(4,1,1)

	Sub33 = CW2**2*dZAZ1 - CW*(2*dSW1 + CW2*(Sub32*SW))

        Sub36 = 2*CW2**2*SW2*dZAZ1 + 
     &    CW*(Sub35 + CW2*(1 + 2*CW2)*
     &        (SW*(dZbarfL1(4,1,1) + dZfL1(4,1,1))))

        Sub127 = 1/(CW*CW2)*
     &    (3*Pi*Sub33 + 2*CW*CW2*(Alfas*Finite*SW))/SW

        Sub128 = 1/(CW*CW2)*
     &    (3*Pi*Sub36 - CW*CW2*(2 + 4*CW2)*(Alfas*Finite*SW))/SW

	pave17 = A0(MGl2)

	call Bput(pave2(bb0),S,MD2,MD2)

	call Cput(pave3(cc0),MD2,S,MD2,0.D0,MD2,MD2)

	Sub59 = MD*Sub42 + 2*dMf1(4,1)*ZNeu(4,3)

	Sub60 = Sub59*SW - 2*MD*(dSW1*ZNeu(4,3))

	Sub61 = MW2*Sub60 - MD*(dMWsq1*SW*ZNeu(4,3))

	Sub62 = CB*Sub61 - MD*MW2*(Sub58*SW*ZNeu(4,3))

	Sub219 = pave3(PVC(cc0)) + pave3(PVC(cc1)) + pave3(PVC(cc2))

	LOOP(Sfe5, 1,2,1)

        Sub72(Sfe5) = dZbarSf1(1,Sfe5,4,1)*USf(1,2,4,1) + 
     &    dZbarSf1(2,Sfe5,4,1)*USf(2,2,4,1)

        Sub55(Sfe5) = dZSf1(1,Sfe5,4,1)*USfC(1,1,4,1) + 
     &    dZSf1(2,Sfe5,4,1)*USfC(2,1,4,1)

        Sub76(Sfe5) = MD*MW2*(CB*SW*Sub72(Sfe5)) - 
     &    Sub75*USf(Sfe5,2,4,1)

        Sub56(Sfe5) = dZSf1(1,Sfe5,4,1)*USfC(1,2,4,1) + 
     &    dZSf1(2,Sfe5,4,1)*USfC(2,2,4,1)

        Sub91(Sfe5) = MD*MW2*(CB*SW*Sub55(Sfe5)) - 
     &    Sub90*USfC(Sfe5,1,4,1)

        Sub57(Sfe5) = MW*(CB*Sub4*Sub55(Sfe5)) + 
     &    3*CW*MD*(Sub56(Sfe5)*ZNeu(4,3))

        Sub46(Sfe5) = Sub44*dZbarSf1(1,Sfe5,4,1) + 
     &    Sub45*dZbarSf1(2,Sfe5,4,1)

        Sub67(Sfe5) = dZbarSf1(1,Sfe5,4,1)*USf(1,1,4,1) + 
     &    dZbarSf1(2,Sfe5,4,1)*USf(2,1,4,1)

        Sub83(Sfe5) = MW*(CB*Sub81*USf(Sfe5,1,4,1)) + 
     &    3*CW*MD*(Sub82*USf(Sfe5,2,4,1))

	Sub87(Sfe5) = CW2*Sub56(Sfe5) + Sub86*USfC(Sfe5,2,4,1)

        Sub47(Sfe5) = MW2*(SW*Sub46(Sfe5)) + 
     &    3*CW*(Sub43*USf(Sfe5,1,4,1))

	Sub69(Sfe5) = CW2*Sub67(Sfe5) + Sub68*USf(Sfe5,1,4,1)

        Sub40(Sfe5) = 2*MW*SW2*
     &     (CB2*USf(Sfe5,2,4,1)*(CW2*Sub38 + Sub37*ZNeu(4,1))) - 
     &    3*CW*CW2*MD*(Sub39*SW*USf(Sfe5,1,4,1)*ZNeu(4,3))

        call Cput(pave18(cc0,Sfe5),S,MNeu2(4),MNeu2(4),MD2,MD2,
     &   MSf2(Sfe5,4,1))

	Sub71(Sfe5) = SW*Sub67(Sfe5) - Sub70*USf(Sfe5,1,4,1)

        Sub93(Sfe5) = 3*CW*MD*(Sub82*USfC(Sfe5,1,4,1)) + 
     &    2*MW*(CB*Sub92*SW*USfC(Sfe5,2,4,1))

        Sub63(Sfe5) = MW2*(CB*SW*Sub57(Sfe5)) + 
     &    3*CW*(Sub62*USfC(Sfe5,2,4,1))

        Sub77(Sfe5) = MW*MW2*(CB2*Sub71(Sfe5)*ZNeuC(4,2)) - 
     &    Sub76(Sfe5)*ZNeuC(4,3)

        Sub94(Sfe5) = MW2*(CB*SW*Sub93(Sfe5)) + 
     &    3*CW*(Sub91(Sfe5)*ZNeuC(4,3))

	Sub84(Sfe5) = 3*CW*Sub77(Sfe5) - MW2*(CB*SW*Sub83(Sfe5))

        Sub64(Sfe5) = CW2*Sub63(Sfe5) + 
     &    MW*MW2*(CB2*(CW2*Sub54 + SW2*(Sub48*ZNeu(4,1)))*
     &       USfC(Sfe5,1,4,1))

        Sub95(Sfe5) = CW2*Sub94(Sfe5) + 
     &    2*MW*MW2*SW2*(CB2*Sub87(Sfe5)*ZNeuC(4,1))

        Sub85(Sfe5) = CW2*Sub84(Sfe5) - 
     &    MW*MW2*SW2*(CB2*Sub69(Sfe5)*ZNeuC(4,1))

        Sub65(Sfe5) = (MW2*Sub40(Sfe5) + CW2*(CB*Sub47(Sfe5)))*
     &     Sub5(Sfe5) + Sub1(Sfe5)*Sub64(Sfe5)

	ENDLOOP(Sfe5)

	LOOP(Sfe6, 1,2,1)

        Sub101(Sfe6) = 
     &   2*MW*(CB*SW*USf(Sfe6,2,4,1)*ZNeu(4,1)) + 
     &    3*CW*MD*(USf(Sfe6,1,4,1)*ZNeu(4,3))

        Sub104(Sfe6) = 
     &   MW*(CB*Sub2*USf(Sfe6,1,4,1)) + 
     &    3*CW*MD*(USf(Sfe6,2,4,1)*ZNeuC(4,3))

        Sub14(Sfe6) = MW*(CB*Sub4*USfC(Sfe6,1,4,1)) + 
     &    3*CW*MD*(USfC(Sfe6,2,4,1)*ZNeu(4,3))

        Sub15(Sfe6) = 2*MW*
     &     (CB*SW*USfC(Sfe6,2,4,1)*ZNeuC(4,1)) + 
     &    3*CW*MD*(USfC(Sfe6,1,4,1)*ZNeuC(4,3))

	ENDLOOP(Sfe6)

	LOOP(Sfe7, 1,2,1)

	pave1(Sfe7) = A0(MSf2(Sfe7,4,1))

	ENDLOOP(Sfe7)

	LOOP(Sfe6, 1,2,1)
	LOOP(Sfe5, 1,2,1)

        Sub9(Sfe5,Sfe6) = 
     &   dZbarSf1(Sfe5,Sfe6,4,1) + dZSf1(Sfe6,Sfe5,4,1)

        Sub204(Sfe5,Sfe6) = 
     &   Sub104(Sfe6)*Sub5(Sfe5) + Sub101(Sfe6)*Sub6(Sfe5)

        Sub23(Sfe5,Sfe6) = 
     &   USf(Sfe6,1,4,1)*USfC(Sfe5,1,4,1) + 
     &    USf(Sfe6,2,4,1)*USfC(Sfe5,2,4,1)

        Sub10(Sfe5,Sfe6) = 
     &   2*dMSfsq1(Sfe6,Sfe5,4,1) + 
     &    dZbarSf1(Sfe5,Sfe6,4,1)*MSf2(Sfe5,4,1) + 
     &    dZSf1(Sfe6,Sfe5,4,1)*MSf2(Sfe6,4,1)

        call Cput(pave16(cc0,Sfe5,Sfe6),MD2,S,MD2,MGl2,
     &   MSf2(Sfe5,4,1),MSf2(Sfe6,4,1))

        Sub107(Sfe5,Sfe6) = 
     &   -(2*SW2*(USf(Sfe6,2,4,1)*USfC(Sfe5,2,4,1))) + 
     &    USf(Sfe6,1,4,1)*(2*CW2*USfC(Sfe5,1,4,1) + 
     &       USfC(Sfe5,1,4,1))

        Sub114(Sfe5,Sfe6) = 
     &   Sub14(Sfe6)*Sub6(Sfe5)*USf(Sfe5,1,4,1)*USf(Sfe6,1,4,1) + 
     &    Sub101(Sfe6)*Sub3(Sfe5)*USfC(Sfe5,2,4,1)*USfC(Sfe6,2,4,1)

        Sub102(Sfe5,Sfe6) = 
     &   Sub14(Sfe6)*Sub5(Sfe5)*USf(Sfe5,1,4,1)*USf(Sfe6,2,4,1) + 
     &    Sub1(Sfe5)*Sub101(Sfe6)*USfC(Sfe5,2,4,1)*USfC(Sfe6,1,4,1)

	ENDLOOP(Sfe5)
	ENDLOOP(Sfe6)

	LOOP(Sfe7, 1,2,1)
	LOOP(Sfe5, 1,2,1)

        Sub24(Sfe5,Sfe7) = 
     &   USf(Sfe7,1,4,1)*USfC(Sfe5,1,4,1) - 
     &    USf(Sfe7,2,4,1)*USfC(Sfe5,2,4,1)

	ENDLOOP(Sfe5)
	ENDLOOP(Sfe7)

	LOOP(Sfe7, 1,2,1)
	LOOP(Sfe6, 1,2,1)

        Sub25(Sfe6,Sfe7) = 
     &   USf(Sfe6,1,4,1)*USfC(Sfe7,1,4,1) - 
     &    USf(Sfe6,2,4,1)*USfC(Sfe7,2,4,1)

	ENDLOOP(Sfe6)
	ENDLOOP(Sfe7)

	LOOP(Sfe7, 1,2,1)
	LOOP(Sfe6, 1,2,1)
	LOOP(Sfe5, 1,2,1)

        Sub31(Sfe5,Sfe6,Sfe7) = 
     &   48*Alfa*(Alfas*Sub24(Sfe5,Sfe7)*Sub25(Sfe6,Sfe7))

	ENDLOOP(Sfe5)
	ENDLOOP(Sfe6)
	ENDLOOP(Sfe7)

#include "contains.h"

	end
