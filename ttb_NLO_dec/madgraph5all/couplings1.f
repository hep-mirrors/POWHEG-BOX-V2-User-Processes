ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c      written by the UFO converter
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      SUBROUTINE COUP1()

      IMPLICIT NONE
      DOUBLE PRECISION PI
      PARAMETER  (PI=3.141592653589793D0)


      INCLUDE 'input.inc'
      INCLUDE 'coupl.inc'

      include 'complexmass.inc'

      GC_1 = -(EE*COMPLEXI)/3.000000D+00
      GC_2 = (2.000000D+00*EE*COMPLEXI)/3.000000D+00
      GC_3 = -(EE*COMPLEXI)
      GC_4 = EE*COMPLEXI
      GC_50 = -(CWcomplex*EE*COMPLEXI)/(2.000000D+00*SWcomplex)
      GC_51 = (CWcomplex*EE*COMPLEXI)/(2.000000D+00*SWcomplex)
      GC_53 = (CWcomplex*EE*COMPLEXI)/SWcomplex
      GC_58 = -(EE*COMPLEXI*SWcomplex)/(6.000000D+00*CWcomplex)
      GC_59 = (EE*COMPLEXI*SWcomplex)/(2.000000D+00*CWcomplex)
      GC_62 = (CWcomplex*EE*COMPLEXI)/(2.000000D+00*SWcomplex)+(EE*COMPLEXI
     $ *SWcomplex)/(2.000000D+00*CWcomplex)
      GC_72 = (EE__EXP__2*COMPLEXI*VEV)/(2.000000D+00*SWcomplex__EXP__2)
      GC_81 = EE__EXP__2*COMPLEXI*VEV+(CWcomplex__EXP__2*EE__EXP__2*COMPLEXI
     $ *VEV)/(2.000000D+00*SWcomplex__EXP__2)+(EE__EXP__2*COMPLEXI*SWcomplex__EXP__2
     $ *VEV)/(2.000000D+00*CWcomplex__EXP__2)
      GC_83 = -((COMPLEXI*YB)/SQRT__2)
      GC_100 = (EE*COMPLEXI*CONJG__CKM1X1)/(SWcomplex*SQRT__2)
      END
