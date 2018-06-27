      SUBROUTINE ML5_3_MP_HELAS_CALLS_AMPB_1(P,NHEL,H,IC)
C     
      USE ML5_3_POLYNOMIAL_CONSTANTS
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
      REAL*16     ZERO
      PARAMETER (ZERO=0.0E0_16)
      COMPLEX*32     IZERO
      PARAMETER (IZERO=CMPLX(0.0E0_16,0.0E0_16,KIND=16))
C     These are constants related to the split orders
      INTEGER    NSO, NSQUAREDSO, NAMPSO
      PARAMETER (NSO=1, NSQUAREDSO=1, NAMPSO=2)
C     
C     ARGUMENTS
C     
      REAL*16 P(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL), IC(NEXTERNAL)
      INTEGER H
C     
C     LOCAL VARIABLES
C     
      INTEGER I,J,K
      COMPLEX*32 COEFS(MAXLWFSIZE,0:VERTEXMAXCOEFS-1,MAXLWFSIZE)
C     
C     GLOBAL VARIABLES
C     
      INCLUDE 'mp_coupl_same_name.inc'

      INTEGER GOODHEL(NCOMB)
      LOGICAL GOODAMP(NSQUAREDSO,NLOOPGROUPS)
      COMMON/ML5_3_FILTERS/GOODAMP,GOODHEL

      INTEGER SQSO_TARGET
      COMMON/ML5_3_SOCHOICE/SQSO_TARGET

      LOGICAL UVCT_REQ_SO_DONE,MP_UVCT_REQ_SO_DONE,CT_REQ_SO_DONE
     $ ,MP_CT_REQ_SO_DONE,LOOP_REQ_SO_DONE,MP_LOOP_REQ_SO_DONE
     $ ,CTCALL_REQ_SO_DONE,FILTER_SO
      COMMON/ML5_3_SO_REQS/UVCT_REQ_SO_DONE,MP_UVCT_REQ_SO_DONE
     $ ,CT_REQ_SO_DONE,MP_CT_REQ_SO_DONE,LOOP_REQ_SO_DONE
     $ ,MP_LOOP_REQ_SO_DONE,CTCALL_REQ_SO_DONE,FILTER_SO

      COMPLEX*32 AMP(NBORNAMPS)
      COMMON/ML5_3_MP_AMPS/AMP
      COMPLEX*32 W(20,NWAVEFUNCS)
      COMMON/ML5_3_MP_W/W

      COMPLEX*32 WL(MAXLWFSIZE,0:LOOPMAXCOEFS-1,MAXLWFSIZE
     $ ,0:NLOOPWAVEFUNCS)
      COMPLEX*32 PL(0:3,0:NLOOPWAVEFUNCS)
      COMMON/ML5_3_MP_WL/WL,PL

      COMPLEX*32 AMPL(3,NCTAMPS)
      COMMON/ML5_3_MP_AMPL/AMPL

C     
C     ----------
C     BEGIN CODE
C     ----------

C     The target squared split order contribution is already reached
C      if true.
      IF (FILTER_SO.AND.MP_CT_REQ_SO_DONE) THEN
        GOTO 1001
      ENDIF

      CALL MP_IMLXXX(P(0,1),ZERO,NHEL(1),+1*IC(1),W(1,1))
      CALL MP_IMLXXX(P(0,2),ZERO,NHEL(2),+1*IC(2),W(1,2))
      CALL MP_OMLXXX(P(0,3),MDL_MT,NHEL(3),+1*IC(3),W(1,3))
      CALL MP_OMLXXX(P(0,4),ZERO,NHEL(4),+1*IC(4),W(1,4))
      CALL MP_VMLXXX(P(0,5),ZERO,NHEL(5),+1*IC(5),W(1,5))
      CALL MP_FFV2_3(W(1,1),W(1,4),GC_47,MDL_MW,MDL_WW,W(1,6))
      CALL MP_FFV1_2(W(1,2),W(1,5),GC_5,ZERO,ZERO,W(1,7))
C     Amplitude(s) for born diagram with ID 1
      CALL MP_FFV2_0(W(1,7),W(1,3),W(1,6),GC_47,AMP(1))
      CALL MP_FFV1_1(W(1,3),W(1,5),GC_5,MDL_MT,MDL_WT,W(1,8))
C     Amplitude(s) for born diagram with ID 2
      CALL MP_FFV2_0(W(1,2),W(1,8),W(1,6),GC_47,AMP(2))
      CALL MP_FFV1_2(W(1,1),W(1,5),GC_5,ZERO,ZERO,W(1,9))
      CALL MP_FFV2_3(W(1,2),W(1,3),GC_47,MDL_MW,MDL_WW,W(1,10))
C     Amplitude(s) for born diagram with ID 3
      CALL MP_FFV2_0(W(1,9),W(1,4),W(1,10),GC_47,AMP(3))
      CALL MP_FFV1_1(W(1,4),W(1,5),GC_5,ZERO,ZERO,W(1,11))
C     Amplitude(s) for born diagram with ID 4
      CALL MP_FFV2_0(W(1,1),W(1,11),W(1,10),GC_47,AMP(4))
C     Counter-term amplitude(s) for loop diagram number 5
      CALL MP_FFV2_0(W(1,9),W(1,4),W(1,10),R2_SXCW,AMPL(1,1))
      CALL MP_FFV2_2(W(1,1),W(1,10),GC_47,ZERO,ZERO,W(1,12))
C     Counter-term amplitude(s) for loop diagram number 6
      CALL MP_R2_QQ_1_0(W(1,12),W(1,11),R2_QQQ,AMPL(1,2))
C     Counter-term amplitude(s) for loop diagram number 7
      CALL MP_FFV2_0(W(1,1),W(1,11),W(1,10),R2_SXCW,AMPL(1,3))
C     Counter-term amplitude(s) for loop diagram number 8
      CALL MP_FFV1_0(W(1,12),W(1,4),W(1,5),UV_GQQQ_1EPS,AMPL(2,4))
      CALL MP_FFV1_0(W(1,12),W(1,4),W(1,5),UV_GQQQ_1EPS,AMPL(2,5))
      CALL MP_FFV1_0(W(1,12),W(1,4),W(1,5),UV_GQQQ_1EPS,AMPL(2,6))
      CALL MP_FFV1_0(W(1,12),W(1,4),W(1,5),UV_GQQQ_1EPS,AMPL(2,7))
      CALL MP_FFV1_0(W(1,12),W(1,4),W(1,5),UV_GQQQ_1EPS,AMPL(2,8))
      CALL MP_FFV1_0(W(1,12),W(1,4),W(1,5),UV_GQQT,AMPL(1,9))
      CALL MP_FFV1_0(W(1,12),W(1,4),W(1,5),UV_GQQQ_1EPS,AMPL(2,10))
      CALL MP_FFV1_0(W(1,12),W(1,4),W(1,5),UV_GQQG_1EPS,AMPL(2,11))
      CALL MP_FFV1_0(W(1,12),W(1,4),W(1,5),R2_GQQ,AMPL(1,12))
      CALL MP_FFV2_3(W(1,7),W(1,3),GC_47,MDL_MW,MDL_WW,W(1,13))
C     Counter-term amplitude(s) for loop diagram number 13
      CALL MP_FFV2_0(W(1,1),W(1,4),W(1,13),R2_SXCW,AMPL(1,13))
      CALL MP_FFV2_3(W(1,2),W(1,8),GC_47,MDL_MW,MDL_WW,W(1,14))
C     Counter-term amplitude(s) for loop diagram number 14
      CALL MP_FFV2_0(W(1,1),W(1,4),W(1,14),R2_SXCW,AMPL(1,14))
      CALL MP_FFV2_1(W(1,4),W(1,10),GC_47,ZERO,ZERO,W(1,15))
C     Counter-term amplitude(s) for loop diagram number 15
      CALL MP_R2_QQ_1_0(W(1,9),W(1,15),R2_QQQ,AMPL(1,15))
C     Counter-term amplitude(s) for loop diagram number 16
      CALL MP_FFV1_0(W(1,1),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,16))
      CALL MP_FFV1_0(W(1,1),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,17))
      CALL MP_FFV1_0(W(1,1),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,18))
      CALL MP_FFV1_0(W(1,1),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,19))
      CALL MP_FFV1_0(W(1,1),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,20))
      CALL MP_FFV1_0(W(1,1),W(1,15),W(1,5),UV_GQQT,AMPL(1,21))
      CALL MP_FFV1_0(W(1,1),W(1,15),W(1,5),UV_GQQQ_1EPS,AMPL(2,22))
      CALL MP_FFV1_0(W(1,1),W(1,15),W(1,5),UV_GQQG_1EPS,AMPL(2,23))
      CALL MP_FFV1_0(W(1,1),W(1,15),W(1,5),R2_GQQ,AMPL(1,24))
      CALL MP_FFV2_1(W(1,3),W(1,6),GC_47,ZERO,ZERO,W(1,16))
C     Counter-term amplitude(s) for loop diagram number 18
      CALL MP_R2_QQ_1_0(W(1,7),W(1,16),R2_QQQ,AMPL(1,25))
C     Counter-term amplitude(s) for loop diagram number 19
      CALL MP_FFV2_0(W(1,7),W(1,3),W(1,6),R2_SXCW,AMPL(1,26))
C     Counter-term amplitude(s) for loop diagram number 20
      CALL MP_FFV1_0(W(1,2),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,27))
      CALL MP_FFV1_0(W(1,2),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,28))
      CALL MP_FFV1_0(W(1,2),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,29))
      CALL MP_FFV1_0(W(1,2),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,30))
      CALL MP_FFV1_0(W(1,2),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,31))
      CALL MP_FFV1_0(W(1,2),W(1,16),W(1,5),UV_GQQT,AMPL(1,32))
      CALL MP_FFV1_0(W(1,2),W(1,16),W(1,5),UV_GQQQ_1EPS,AMPL(2,33))
      CALL MP_FFV1_0(W(1,2),W(1,16),W(1,5),UV_GQQG_1EPS,AMPL(2,34))
      CALL MP_FFV1_0(W(1,2),W(1,16),W(1,5),R2_GQQ,AMPL(1,35))
C     Counter-term amplitude(s) for loop diagram number 23
      CALL MP_FFV2_0(W(1,2),W(1,8),W(1,6),R2_SXCW,AMPL(1,36))
      CALL MP_FFV2_3(W(1,9),W(1,4),GC_47,MDL_MW,MDL_WW,W(1,17))
C     Counter-term amplitude(s) for loop diagram number 26
      CALL MP_FFV2_0(W(1,2),W(1,3),W(1,17),R2_SXCW,AMPL(1,37))
      CALL MP_FFV2_3(W(1,1),W(1,11),GC_47,MDL_MW,MDL_WW,W(1,18))
C     Counter-term amplitude(s) for loop diagram number 27
      CALL MP_FFV2_0(W(1,2),W(1,3),W(1,18),R2_SXCW,AMPL(1,38))
      CALL MP_FFV2_2(W(1,2),W(1,6),GC_47,MDL_MT,MDL_WT,W(1,19))
C     Counter-term amplitude(s) for loop diagram number 28
      CALL MP_R2_QQ_1_R2_QQ_2_0(W(1,19),W(1,8),R2_QQQ,R2_QQT,AMPL(1,39)
     $ )
      CALL MP_R2_QQ_2_0(W(1,19),W(1,8),UV_TMASS,AMPL(1,40))
      CALL MP_R2_QQ_2_0(W(1,19),W(1,8),UV_TMASS_1EPS,AMPL(2,41))
C     Counter-term amplitude(s) for loop diagram number 29
      CALL MP_FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,42))
      CALL MP_FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,43))
      CALL MP_FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,44))
      CALL MP_FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,45))
      CALL MP_FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,46))
      CALL MP_FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQT,AMPL(1,47))
      CALL MP_FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQQ_1EPS,AMPL(2,48))
      CALL MP_FFV1_0(W(1,19),W(1,3),W(1,5),UV_GQQG_1EPS,AMPL(2,49))
      CALL MP_FFV1_0(W(1,19),W(1,3),W(1,5),R2_GQQ,AMPL(1,50))
C     At this point, all CT amps needed for (QCD=4), i.e. of split
C      order ID=1, are computed.
      IF(FILTER_SO.AND.SQSO_TARGET.EQ.1) GOTO 2000

      GOTO 1001
 2000 CONTINUE
      MP_CT_REQ_SO_DONE=.TRUE.
 1001 CONTINUE
      END

