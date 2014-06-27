* CH: some user-defined variables
*  last change: 27.6.2011

	real*8 mtemp1u1,mtemp2u2,mtemp2d2,mtemp2d1
	real*8 mtempd2,mtempu2
! 	real*8 mtempu1,mtempu2

	common/tempmass1/mtemp1u1,mtemp2u2,mtemp2d2,mtemp2d1
	common/tempmass3/mtempd2,mtempu2
!	common/tempmass2/mtempu1,mtempu2

	save/tempmass1/
	save/tempmass3/