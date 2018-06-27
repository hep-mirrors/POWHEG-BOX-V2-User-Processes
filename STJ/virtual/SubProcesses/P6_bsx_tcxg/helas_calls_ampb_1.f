      SUBROUTINE ML5_6_HELAS_CALLS_AMPB_1(P,NHEL,H,IC)
C     
C     Modules
C     
      USE ML5_6_POLYNOMIAL_CONSTANTS
C     
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=5)
      INTEGER    NCOMB
      PARAMETER (NCOMB=32)
      INTEGER NBORNAMPS
      PARAMETER (NBORNAMPS=4)
      INTEGER    NLOOPS, NLOOPGROUPS, NCTAMPS
      PARAMETER (NLOOPS=26, NLOOPGROUPS=21, NCTAMPS=58)
      INTEGER    NLOOPAMPS
      PARAMETER (NLOOPAMPS=84)
      INTEGER    NWAVEFUNCS,NLOOPWAVEFUNCS
      PARAMETER (NWAVEFUNCS=19,NLOOPWAVEFUNCS=58)
      REAL*8     ZERO
      PARAMETER (ZERO=0D0)
      REAL*16     MP__ZERO
      PARAMETER (MP__ZERO=0.0E0_16)
C     These are constants related to the split orders
      INTEGER    NSO, NSQUAREDSO, NAMPSO
      PARAMETER (NSO=1, NSQUAREDSO=1, NAMPSO=2)
C     
C     ARGUMENTS
C     
      REAL*8 P(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL), IC(NEXTERNAL)
      INTEGER H
C     
C     LOCAL VARIABLES
C     
      INTEGER I,J,K
      COMPLEX*16 COEFS(MAXLWFSIZE,0:VERTEXMAXCOEFS-1,MAXLWFSIZE)

      LOGICAL DUMMYFALSE
      DATA DUMMYFALSE/.FALSE./
C     
C     GLOBAL VARIABLES
C     
      INCLUDE 'coupl.inc'
      INCLUDE 'mp_coupl.inc'

      INTEGER HELOFFSET
      INTEGER GOODHEL(NCOMB)
      LOGICAL GOODAMP(NSQUAREDSO,NLOOPGROUPS)
      COMMON/ML5_6_FILTERS/GOODAMP,GOODHEL,HELOFFSET

      LOGICAL CHECKPHASE
      LOGICAL HELDOUBLECHECKED
      COMMON/ML5_6_INIT/CHECKPHASE, HELDOUBLECHECKED

      INTEGER SQSO_TARGET
      COMMON/ML5_6_SOCHOICE/SQSO_TARGET

      LOGICAL UVCT_REQ_SO_DONE,MP_UVCT_REQ_SO_DONE,CT_REQ_SO_DONE
     $ ,MP_CT_REQ_SO_DONE,LOOP_REQ_SO_DONE,MP_LOOP_REQ_SO_DONE
     $ ,CTCALL_REQ_SO_DONE,FILTER_SO
      COMMON/ML5_6_SO_REQS/UVCT_REQ_SO_DONE,MP_UVCT_REQ_SO_DONE
     $ ,CT_REQ_SO_DONE,MP_CT_REQ_SO_DONE,LOOP_REQ_SO_DONE
     $ ,MP_LOOP_REQ_SO_DONE,CTCALL_REQ_SO_DONE,FILTER_SO

      INTEGER I_SO
      COMMON/ML5_6_I_SO/I_SO
      INTEGER I_LIB
      COMMON/ML5_6_I_LIB/I_LIB

      COMPLEX*16 AMP(NBORNAMPS)
      COMMON/ML5_6_AMPS/AMP
      COMPLEX*16 W(20,NWAVEFUNCS)
      COMMON/ML5_6_W/W

      COMPLEX*16 WL(MAXLWFSIZE,0:LOOPMAXCOEFS-1,MAXLWFSIZE
     $ ,0:NLOOPWAVEFUNCS)
      COMPLEX*16 PL(0:3,0:NLOOPWAVEFUNCS)
      COMMON/ML5_6_WL/WL,PL

      COMPLEX*16 AMPL(3,NCTAMPS)
      COMMON/ML5_6_AMPL/AMPL

C     
C     ----------
C     BEGIN CODE
C     ----------

C     The target squared split order contribution is already reached
C      if true.
      IF (FILTER_SO.AND.CT_REQ_SO_DONE) THEN
        GOTO 1001
      ENDIF

      CALL IMLXXX(P(0,1),ZERO,NHEL(1),+1*IC(1),W(1,1))
      CALL OMLXXX(P(0,2),ZERO,NHEL(2),-1*IC(2),W(1,2))
      CALL OMLXXX(P(0,3),MDL_MT,NHEL(3),+1*IC(3),W(1,3))
      CALL IMLXXX(P(0,4),ZERO,NHEL(4),-1*IC(4),W(1,4))
      CALL VMLXXX(P(0,5),ZERO,NHEL(5),+1*IC(5),W(1,5))
      CALL FFV2_3(W(1,1),W(1,3),GC_47,MDL_MW,MDL_WW,W(1,6))
      CALL FFV1_1(W(1,2),W(1,5),GC_5,ZERO,ZERO,W(1,7))
C     Amplitude(s) for born diagram with ID 1
      CALL FFV2_0(W(1,4),W(1,7),W(1,6),GC_47,AMP(1))
      CALL FFV1_2(W(1,4),W(1,5),GC_5,ZERO,ZERO,W(1,8))
C     Amplitude(s) for born diagram with ID 2
      CALL FFV2_0(W(1,8),W(1,2),W(1,6),GC_47,AMP(2))
      CALL FFV1_2(W(1,1),W(1,5),GC_5,ZERO,ZERO,W(1,9))
      CALL FFV2_3(W(1,4),W(1,2),GC_47,MDL_MW,MDL_WW,W(1,10))
C     Amplitude(s) for born diagram with ID 3
      CALL FFV2_0(W(1,9),W(1,3),W(1,10),GC_47,AMP(3))
      CALL FFV1_1(W(1,3),W(1,5),GC_5,MDL_MT,MDL_WT,W(1,11))
C     Amplitude(s) for born diagram with ID 4
      CALL FFV2_0(W(1,1),W(1,11),W(1,10),GC_47,AMP(4))
      CALL FFV2_2(W(1,4),W(1,6),GC_47,ZERO,ZERO,W(1,12))
C     Counter-term amplitude(s) for loop diagram number 5
      CALL R2_QQ_1_0(W(1,12),W(1,7),R2_QQQ,AMPL(1,1))
C     Counter-term amplitude(s) for loop diagram number 6
      CALL FFV2_0(W(1,4),W(1,7),W(1,6),R2_SXCW,AMPL(1,2))
C     Counter-term amplitude(s) for loop diagram number 7
      CALL FFV1_0(W(1,12),W(1,2),W(1,5),UV_GQQQ_1EPS,AMPL(2,3))
      CALL FFV1_0(W(1,12),W(1,2),W(1,5),UV_GQQQ_1EPS,AMPL(2,4))
      CALL FFV1_0(W(1,12),W(1,2),W(1,5),UV_GQQQ_1EPS,AMPL(2,5))
      CALL FFV1_0(W(1,12),W(1,2),W(1,5),UV_GQQQ_1EPS,AMPL(2,6))
      CALL FFV1_0(W(1,12),W(1,2),W(1,5),UV_GQQQ_1EPS,AMPL(2,7))
      CALL FFV1_0(W(1,12),W(1,2),W(1,5),UV_GQQT,AMPL(1,8))
      CALL FFV1_0(W(1,12),W(1,2),W(1,5),UV_GQQQ_1EPS,AMPL(2,9))
      CALL FFV1_0(W(1,12),W(1,2),W(1,5),UV_GQQG_1EPS,AMPL(2,10))
      CALL FFV1_0(W(1,12),W(1,2),W(1,5),R2_GQQ,AMPL(1,11))
C     Counter-term amplitude(s) for loop diagram number 10
      CALL FFV2_0(W(1,8),W(1,2),W(1,6),R2_SXCW,AMPL(1,12))
      CALL FFV2_3(W(1,9),W(1,3),GC_47,MDL_MW,MDL_WW,W(1,13))
C     Counter-term amplitude(s) for loop diagram number 13
      CALL FFV2_0(W(1,4),W(1,2),W(1,13),R2_SXCW,AMPL(1,13))
      CALL FFV2_3(W(1,1),W(1,11),GC_47,MDL_MW,MDL_WW,W(1,14))
C     Counter-term amplitude(s) for loop diagram number 14
      CALL FFV2_0(W(1,4),W(1,2),W(1,14),R2_SXCW,AMPL(1,14))
      CALL FFV2_1(W(1,2),W(1,6),GC_47,ZERO,ZERO,W(1,15))
C     Counter-term amplitude(s) for loop diagram number 15
      CALL R2_QQ_1_0(W(1,8),W(1,15),R2_QQQ,AMPL(1,15))
C     Counter-term amplitude(s) for loop diagram number 16
      CALL FFV1_0(W(1,4),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,16))
      CALL FFV1_0(W(1,4),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,17))
      CALL FFV1_0(W(1,4),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,18))
      CALL FFV1_0(W(1,4),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,19))
      CALL FFV1_0(W(1,4),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,20))
      CALL FFV1_0(W(1,4),W(1,15),W(1,5),UV_GQQT,AMPL(1,21))
      CALL FFV1_0(W(1,4),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,22))
      CALL FFV1_0(W(1,4),W(1,15),W(1,5),UV_GQQG_1EPS,AMPL(2,23))
      CALL FFV1_0(W(1,4),W(1,15),W(1,5),R2_GQQ,AMPL(1,24))
      CALL FFV2_1(W(1,3),W(1,10),GC_47,ZERO,ZERO,W(1,16))
C     Counter-term amplitude(s) for loop diagram number 18
      CALL R2_QQ_1_0(W(1,9),W(1,16),R2_QQQ,AMPL(1,25))
C     Counter-term amplitude(s) for loop diagram number 19
      CALL FFV2_0(W(1,9),W(1,3),W(1,10),R2_SXCW,AMPL(1,26))
C     Counter-term amplitude(s) for loop diagram number 21
      CALL FFV1_0(W(1,1),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,27))
      CALL FFV1_0(W(1,1),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,28))
      CALL FFV1_0(W(1,1),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,29))
      CALL FFV1_0(W(1,1),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,30))
      CALL FFV1_0(W(1,1),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,31))
      CALL FFV1_0(W(1,1),W(1,16),W(1,5),UV_GQQT,AMPL(1,32))
      CALL FFV1_0(W(1,1),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,33))
      CALL FFV1_0(W(1,1),W(1,16),W(1,5),UV_GQQG_1EPS,AMPL(2,34))
      CALL FFV1_0(W(1,1),W(1,16),W(1,5),R2_GQQ,AMPL(1,35))
C     Counter-term amplitude(s) for loop diagram number 23
      CALL FFV2_0(W(1,1),W(1,11),W(1,10),R2_SXCW,AMPL(1,36))
      CALL FFV2_3(W(1,4),W(1,7),GC_47,MDL_MW,MDL_WW,W(1,17))
C     Counter-term amplitude(s) for loop diagram number 26
      CALL FFV2_0(W(1,1),W(1,3),W(1,17),R2_SXCW,AMPL(1,37))
      CALL FFV2_3(W(1,8),W(1,2),GC_47,MDL_MW,MDL_WW,W(1,18))
C     Counter-term amplitude(s) for loop diagram number 27
      CALL FFV2_0(W(1,1),W(1,3),W(1,18),R2_SXCW,AMPL(1,38))
      CALL FFV2_2(W(1,1),W(1,10),GC_47,MDL_MT,MDL_WT,W(1,19))
C     Counter-term amplitude(s) for loop diagram number 28
      CALL R2_QQ_1_R2_QQ_2_0(W(1,19),W(1,11),R2_QQQ,R2_QQT,AMPL(1,39))
      CALL R2_QQ_2_0(W(1,19),W(1,11),UV_TMASS,AMPL(1,40))
      CALL R2_QQ_2_0(W(1,19),W(1,11),UV_TMASS_1EPS,AMPL(2,41))
C     Counter-term amplitude(s) for loop diagram number 29
      CALL FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,42))
      CALL FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,43))
      CALL FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,44))
      CALL FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,45))
      CALL FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,46))
      CALL FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQT,AMPL(1,47))
      CALL FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,48))
      CALL FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQG_1EPS,AMPL(2,49))
      CALL FFV1_0(W(1,19),W(1,3),W(1,5),R2_GQQ,AMPL(1,50))
C     At this point, all CT amps needed for (QCD=4), i.e. of split
C      order ID=1, are computed.
      IF(FILTER_SO.AND.SQSO_TARGET.EQ.1) GOTO 2000

      GOTO 1001
 2000 CONTINUE
      CT_REQ_SO_DONE=.TRUE.
 1001 CONTINUE
      END

