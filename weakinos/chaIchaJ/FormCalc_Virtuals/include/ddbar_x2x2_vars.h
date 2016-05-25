#if 0
* vars.h
* variable declarations
* generated by FormCalc 8.4 on 18-Jun-2015 10:11
#endif

#ifndef VARS_H
#define VARS_H

#define LEGS 4

#include "decl.h"

#else

#include "decl.h"

	ComplexType Sub1(2), Sub2(2), Sub4, Sub5
	ComplexType Sub31, Sub88, Sub89, Sub47, Sub55, Sub61, Sub73
	ComplexType Sub30, Sub112, Sub62, Sub74, Sub48, Sub56, Sub60
	ComplexType Sub65, Sub54, Sub72, Sub76, Sub46, Sub50, Sub49
	ComplexType Sub52, Sub66, Sub64, Sub63, Sub78, Sub79
	ComplexType Sub83(2), Sub45(2), Sub71(2), Sub51(2), Sub77(2)
	ComplexType Sub75(2), Sub80(2), Sub53(2), Sub67(2), Sub57(2)
	ComplexType Sub58(2), Sub70(2), Sub101(2), Sub69(2)
	ComplexType Sub68(2), Sub81(2), Sub82(2), Sub42(2), Sub41(2)
	ComplexType Sub14(2), Sub8(2,2), Sub20(2,2), Sub37(2,2)
	ComplexType Sub85(2,2), Sub21(2,2), Sub22(2,2), Sub28(2,2,2)
	ComplexType Sub35, Sub32, Sub113, Sub111, Sub34, Sub33
	ComplexType Sub36, Sub118(2), Sub7(2,2), Sub29, Sub91
	ComplexType pave2(2), pave3, pave7(Nbb), pave8(Ncc)
	ComplexType pave10(Ncc,2), pave11(Ncc,2,2), pave12(Ncc,2)
	common /varXs/ Sub1, Sub2, Sub4, Sub5, Sub31, Sub88, Sub89
	common /varXs/ Sub47, Sub55, Sub61, Sub73, Sub30, Sub112
	common /varXs/ Sub62, Sub74, Sub48, Sub56, Sub60, Sub65
	common /varXs/ Sub54, Sub72, Sub76, Sub46, Sub50, Sub49
	common /varXs/ Sub52, Sub66, Sub64, Sub63, Sub78, Sub79
	common /varXs/ Sub83, Sub45, Sub71, Sub51, Sub77, Sub75
	common /varXs/ Sub80, Sub53, Sub67, Sub57, Sub58, Sub70
	common /varXs/ Sub101, Sub69, Sub68, Sub81, Sub82, Sub42
	common /varXs/ Sub41, Sub14, Sub8, Sub20, Sub37, Sub85
	common /varXs/ Sub21, Sub22, Sub28, Sub35, Sub32, Sub113
	common /varXs/ Sub111, Sub34, Sub33, Sub36, Sub118, Sub7
	common /varXs/ Sub29, Sub91, pave2, pave3, pave7, pave8
	common /varXs/ pave10, pave11, pave12

	ComplexType Sub106, Sub114(2), Sub115(2), Sub116(2)
	ComplexType Sub123(2), Sub124(2), Sub102, pave1(Nbb,2)
	ComplexType pave4(Ndd,2,2), pave5(Ndd,2), pave6(Nbb)
	ComplexType pave9(Ncc,2), pave13(Ncc,2)
	RealType S, T, U
	common /varXa/ Sub106, Sub114, Sub115, Sub116, Sub123, Sub124
	common /varXa/ Sub102, pave1, pave4, pave5, pave6, pave9
	common /varXa/ pave13, S, T, U

	HelType F1, F3, F4, F5, F2, F7, F8, F6, Sub6, Sub3
	HelType F12, F9, F10, F11, F15, F19, F16, F17, F13, F18, F14
	HelType Sub95, Sub94, Sub90, Sub103, Sub96, Sub99, Sub98
	HelType Sub126(HelDim(2)), Sub125(HelDim(2))
	HelType Sub59(HelDim(2)), Sub84(HelDim(2))
	HelType Sub117(HelDim(2)), Sub119(HelDim(2))
	HelType Sub97(HelDim(2)), Sub44(HelDim(2))
	HelType Sub108(HelDim(2),2), Sub109(HelDim(2),2)
	HelType Sub121(HelDim(2),2), Sub40(HelDim(2),2)
	HelType Sub86(HelDim(2),2), Sub87(HelDim(2),2)
	HelType Sub110(HelDim(2),2), Sub93(HelDim(2),2)
	HelType Sub104(HelDim(2),2), Sub39(HelDim(2),2)
	HelType Sub38(HelDim(2),2), Sub43(HelDim(2),2), Sub92
	HelType Sub100, Sub122(HelDim(2),2), Sub120(HelDim(2),2)
	HelType Sub107(HelDim(2),2), Sub105(HelDim(2),2)
	common /varXh/ F1, F3, F4, F5, F2, F7, F8, F6, Sub6, Sub3
	common /varXh/ F12, F9, F10, F11, F15, F19, F16, F17, F13
	common /varXh/ F18, F14, Sub95, Sub94, Sub90, Sub103, Sub96
	common /varXh/ Sub99, Sub98, Sub126, Sub125, Sub59, Sub84
	common /varXh/ Sub117, Sub119, Sub97, Sub44, Sub108, Sub109
	common /varXh/ Sub121, Sub40, Sub86, Sub87, Sub110, Sub93
	common /varXh/ Sub104, Sub39, Sub38, Sub43, Sub92, Sub100
	common /varXh/ Sub122, Sub120, Sub107, Sub105

	integer seq(2), Hel(4)
	common /helind/ seq, Hel

	integer Sfe5, Sfe6, Sfe7
	common /indices/ Sfe5, Sfe6, Sfe7

	HelType Ctree(HelDim(1)), Cloop(HelDim(1))
	ComplexType MatSUN(1,1)
	common /ddbar_x2x2_formfactors/ Ctree, Cloop, MatSUN

#if PARALLEL
	marker ends, enda, endhel
	common /varXs/ ends
	common /varXa/ enda
	common /helind/ endhel
#endif

#endif
