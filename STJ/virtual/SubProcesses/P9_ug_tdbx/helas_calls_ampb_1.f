      SUBROUTINE ML5_9_HELAS_CALLS_AMPB_1(P,NHEL,H,IC)
C     
C     Modules
C     
      USE ML5_9_POLYNOMIAL_CONSTANTS
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
      PARAMETER (NBORNAMPS=2)
      INTEGER    NLOOPS, NLOOPGROUPS, NCTAMPS
      PARAMETER (NLOOPS=13, NLOOPGROUPS=11, NCTAMPS=30)
      INTEGER    NLOOPAMPS
      PARAMETER (NLOOPAMPS=43)
      INTEGER    NWAVEFUNCS,NLOOPWAVEFUNCS
      PARAMETER (NWAVEFUNCS=12,NLOOPWAVEFUNCS=31)
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
      COMMON/ML5_9_FILTERS/GOODAMP,GOODHEL,HELOFFSET

      LOGICAL CHECKPHASE
      LOGICAL HELDOUBLECHECKED
      COMMON/ML5_9_INIT/CHECKPHASE, HELDOUBLECHECKED

      INTEGER SQSO_TARGET
      COMMON/ML5_9_SOCHOICE/SQSO_TARGET

      LOGICAL UVCT_REQ_SO_DONE,MP_UVCT_REQ_SO_DONE,CT_REQ_SO_DONE
     $ ,MP_CT_REQ_SO_DONE,LOOP_REQ_SO_DONE,MP_LOOP_REQ_SO_DONE
     $ ,CTCALL_REQ_SO_DONE,FILTER_SO
      COMMON/ML5_9_SO_REQS/UVCT_REQ_SO_DONE,MP_UVCT_REQ_SO_DONE
     $ ,CT_REQ_SO_DONE,MP_CT_REQ_SO_DONE,LOOP_REQ_SO_DONE
     $ ,MP_LOOP_REQ_SO_DONE,CTCALL_REQ_SO_DONE,FILTER_SO

      INTEGER I_SO
      COMMON/ML5_9_I_SO/I_SO
      INTEGER I_LIB
      COMMON/ML5_9_I_LIB/I_LIB

      COMPLEX*16 AMP(NBORNAMPS)
      COMMON/ML5_9_AMPS/AMP
      COMPLEX*16 W(20,NWAVEFUNCS)
      COMMON/ML5_9_W/W

      COMPLEX*16 WL(MAXLWFSIZE,0:LOOPMAXCOEFS-1,MAXLWFSIZE
     $ ,0:NLOOPWAVEFUNCS)
      COMPLEX*16 PL(0:3,0:NLOOPWAVEFUNCS)
      COMMON/ML5_9_WL/WL,PL

      COMPLEX*16 AMPL(3,NCTAMPS)
      COMMON/ML5_9_AMPL/AMPL

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
      CALL VMLXXX(P(0,2),ZERO,NHEL(2),-1*IC(2),W(1,2))
      CALL OMLXXX(P(0,3),MDL_MT,NHEL(3),+1*IC(3),W(1,3))
      CALL OMLXXX(P(0,4),ZERO,NHEL(4),+1*IC(4),W(1,4))
      CALL IMLXXX(P(0,5),ZERO,NHEL(5),-1*IC(5),W(1,5))
      CALL FFV2_3(W(1,1),W(1,4),GC_47,MDL_MW,MDL_WW,W(1,6))
      CALL FFV1_1(W(1,3),W(1,2),GC_5,MDL_MT,MDL_WT,W(1,7))
C     Amplitude(s) for born diagram with ID 1
      CALL FFV2_0(W(1,5),W(1,7),W(1,6),GC_47,AMP(1))
      CALL FFV1_2(W(1,5),W(1,2),GC_5,ZERO,ZERO,W(1,8))
C     Amplitude(s) for born diagram with ID 2
      CALL FFV2_0(W(1,8),W(1,3),W(1,6),GC_47,AMP(2))
      CALL FFV2_3(W(1,5),W(1,7),GC_47,MDL_MW,MDL_WW,W(1,9))
C     Counter-term amplitude(s) for loop diagram number 3
      CALL FFV2_0(W(1,1),W(1,4),W(1,9),R2_SXCW,AMPL(1,1))
      CALL FFV2_3(W(1,8),W(1,3),GC_47,MDL_MW,MDL_WW,W(1,10))
C     Counter-term amplitude(s) for loop diagram number 4
      CALL FFV2_0(W(1,1),W(1,4),W(1,10),R2_SXCW,AMPL(1,2))
C     Counter-term amplitude(s) for loop diagram number 5
      CALL FFV2_0(W(1,5),W(1,7),W(1,6),R2_SXCW,AMPL(1,3))
      CALL FFV2_1(W(1,3),W(1,6),GC_47,ZERO,ZERO,W(1,11))
C     Counter-term amplitude(s) for loop diagram number 6
      CALL R2_QQ_1_0(W(1,8),W(1,11),R2_QQQ,AMPL(1,4))
C     Counter-term amplitude(s) for loop diagram number 7
      CALL FFV2_0(W(1,8),W(1,3),W(1,6),R2_SXCW,AMPL(1,5))
C     Counter-term amplitude(s) for loop diagram number 8
      CALL FFV1_0(W(1,5),W(1,11),W(1,2),UV_GQQQ_1EPS,AMPL(2,6))
      CALL FFV1_0(W(1,5),W(1,11),W(1,2),UV_GQQQ_1EPS,AMPL(2,7))
      CALL FFV1_0(W(1,5),W(1,11),W(1,2),UV_GQQQ_1EPS,AMPL(2,8))
      CALL FFV1_0(W(1,5),W(1,11),W(1,2),UV_GQQQ_1EPS,AMPL(2,9))
      CALL FFV1_0(W(1,5),W(1,11),W(1,2),UV_GQQQ_1EPS,AMPL(2,10))
      CALL FFV1_0(W(1,5),W(1,11),W(1,2),UV_GQQT,AMPL(1,11))
      CALL FFV1_0(W(1,5),W(1,11),W(1,2),UV_GQQQ_1EPS,AMPL(2,12))
      CALL FFV1_0(W(1,5),W(1,11),W(1,2),UV_GQQG_1EPS,AMPL(2,13))
      CALL FFV1_0(W(1,5),W(1,11),W(1,2),R2_GQQ,AMPL(1,14))
      CALL FFV2_2(W(1,5),W(1,6),GC_47,MDL_MT,MDL_WT,W(1,12))
C     Counter-term amplitude(s) for loop diagram number 13
      CALL R2_QQ_1_R2_QQ_2_0(W(1,12),W(1,7),R2_QQQ,R2_QQT,AMPL(1,15))
      CALL R2_QQ_2_0(W(1,12),W(1,7),UV_TMASS,AMPL(1,16))
      CALL R2_QQ_2_0(W(1,12),W(1,7),UV_TMASS_1EPS,AMPL(2,17))
C     Counter-term amplitude(s) for loop diagram number 14
      CALL FFV1_0(W(1,12),W(1,3),W(1,2),UV_GQQQ_1EPS,AMPL(2,18))
      CALL FFV1_0(W(1,12),W(1,3),W(1,2),UV_GQQQ_1EPS,AMPL(2,19))
      CALL FFV1_0(W(1,12),W(1,3),W(1,2),UV_GQQQ_1EPS,AMPL(2,20))
      CALL FFV1_0(W(1,12),W(1,3),W(1,2),UV_GQQQ_1EPS,AMPL(2,21))
      CALL FFV1_0(W(1,12),W(1,3),W(1,2),UV_GQQQ_1EPS,AMPL(2,22))
      CALL FFV1_0(W(1,12),W(1,3),W(1,2),UV_GQQT,AMPL(1,23))
      CALL FFV1_0(W(1,12),W(1,3),W(1,2),UV_GQQQ_1EPS,AMPL(2,24))
      CALL FFV1_0(W(1,12),W(1,3),W(1,2),UV_GQQG_1EPS,AMPL(2,25))
      CALL FFV1_0(W(1,12),W(1,3),W(1,2),R2_GQQ,AMPL(1,26))
C     At this point, all CT amps needed for (QCD=4), i.e. of split
C      order ID=1, are computed.
      IF(FILTER_SO.AND.SQSO_TARGET.EQ.1) GOTO 2000

      GOTO 1001
 2000 CONTINUE
      CT_REQ_SO_DONE=.TRUE.
 1001 CONTINUE
      END

