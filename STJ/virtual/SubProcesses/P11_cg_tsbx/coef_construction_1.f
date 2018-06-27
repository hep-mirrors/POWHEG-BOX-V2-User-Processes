      SUBROUTINE ML5_11_COEF_CONSTRUCTION_1(P,NHEL,H,IC)
C     
C     Modules
C     
      USE ML5_11_POLYNOMIAL_CONSTANTS
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
      COMMON/ML5_11_FILTERS/GOODAMP,GOODHEL,HELOFFSET

      LOGICAL CHECKPHASE
      LOGICAL HELDOUBLECHECKED
      COMMON/ML5_11_INIT/CHECKPHASE, HELDOUBLECHECKED

      INTEGER SQSO_TARGET
      COMMON/ML5_11_SOCHOICE/SQSO_TARGET

      LOGICAL UVCT_REQ_SO_DONE,MP_UVCT_REQ_SO_DONE,CT_REQ_SO_DONE
     $ ,MP_CT_REQ_SO_DONE,LOOP_REQ_SO_DONE,MP_LOOP_REQ_SO_DONE
     $ ,CTCALL_REQ_SO_DONE,FILTER_SO
      COMMON/ML5_11_SO_REQS/UVCT_REQ_SO_DONE,MP_UVCT_REQ_SO_DONE
     $ ,CT_REQ_SO_DONE,MP_CT_REQ_SO_DONE,LOOP_REQ_SO_DONE
     $ ,MP_LOOP_REQ_SO_DONE,CTCALL_REQ_SO_DONE,FILTER_SO

      INTEGER I_SO
      COMMON/ML5_11_I_SO/I_SO
      INTEGER I_LIB
      COMMON/ML5_11_I_LIB/I_LIB

      COMPLEX*16 AMP(NBORNAMPS)
      COMMON/ML5_11_AMPS/AMP
      COMPLEX*16 W(20,NWAVEFUNCS)
      COMMON/ML5_11_W/W

      COMPLEX*16 WL(MAXLWFSIZE,0:LOOPMAXCOEFS-1,MAXLWFSIZE
     $ ,0:NLOOPWAVEFUNCS)
      COMPLEX*16 PL(0:3,0:NLOOPWAVEFUNCS)
      COMMON/ML5_11_WL/WL,PL

      COMPLEX*16 AMPL(3,NCTAMPS)
      COMMON/ML5_11_AMPL/AMPL

C     
C     ----------
C     BEGIN CODE
C     ----------

C     The target squared split order contribution is already reached
C      if true.
      IF (FILTER_SO.AND.LOOP_REQ_SO_DONE) THEN
        GOTO 1001
      ENDIF

C     Coefficient construction for loop diagram with ID 3
      CALL FFV1L2P0_3(PL(0,0),W(1,1),GC_5,ZERO,ZERO,PL(0,1),COEFS)
      CALL ML5_11_UPDATE_WL_0_0(WL(1,0,1,0),4,COEFS,4,4,WL(1,0,1,1))
      CALL FFV1L3_1(PL(0,1),W(1,4),GC_5,ZERO,ZERO,PL(0,2),COEFS)
      CALL ML5_11_UPDATE_WL_0_1(WL(1,0,1,1),4,COEFS,4,4,WL(1,0,1,2))
      CALL FFV2L2_1(PL(0,2),W(1,9),GC_47,ZERO,ZERO,PL(0,3),COEFS)
      CALL ML5_11_UPDATE_WL_1_1(WL(1,0,1,2),4,COEFS,4,4,WL(1,0,1,3))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,3),2,4,1,1,1,31,H)
C     Coefficient construction for loop diagram with ID 4
      CALL FFV2L2_1(PL(0,2),W(1,10),GC_47,ZERO,ZERO,PL(0,4),COEFS)
      CALL ML5_11_UPDATE_WL_1_1(WL(1,0,1,2),4,COEFS,4,4,WL(1,0,1,4))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,4),2,4,1,1,1,32,H)
C     Coefficient construction for loop diagram with ID 5
      CALL FFV1L2P0_3(PL(0,0),W(1,5),GC_5,ZERO,ZERO,PL(0,5),COEFS)
      CALL ML5_11_UPDATE_WL_0_0(WL(1,0,1,0),4,COEFS,4,4,WL(1,0,1,5))
      CALL FFV1L3_1(PL(0,5),W(1,7),GC_5,MDL_MT,MDL_WT,PL(0,6),COEFS)
      CALL ML5_11_UPDATE_WL_0_1(WL(1,0,1,5),4,COEFS,4,4,WL(1,0,1,6))
      CALL FFV2L2_1(PL(0,6),W(1,6),GC_47,ZERO,ZERO,PL(0,7),COEFS)
      CALL ML5_11_UPDATE_WL_1_1(WL(1,0,1,6),4,COEFS,4,4,WL(1,0,1,7))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,7),2,4,2,1,1,33,H)
C     Coefficient construction for loop diagram with ID 6
      CALL FFV1L2P0_3(PL(0,0),W(1,8),GC_5,ZERO,ZERO,PL(0,8),COEFS)
      CALL ML5_11_UPDATE_WL_0_0(WL(1,0,1,0),4,COEFS,4,4,WL(1,0,1,8))
      CALL FFV1L3_1(PL(0,8),W(1,11),GC_5,ZERO,ZERO,PL(0,9),COEFS)
      CALL ML5_11_UPDATE_WL_0_1(WL(1,0,1,8),4,COEFS,4,4,WL(1,0,1,9))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,9),1,4,3,1,1,34,H)
C     Coefficient construction for loop diagram with ID 7
      CALL FFV1L3_1(PL(0,0),W(1,3),GC_5,MDL_MT,MDL_WT,PL(0,10),COEFS)
      CALL ML5_11_UPDATE_WL_0_1(WL(1,0,1,0),4,COEFS,4,4,WL(1,0,1,10))
      CALL FFV2L2_1(PL(0,10),W(1,6),GC_47,ZERO,ZERO,PL(0,11),COEFS)
      CALL ML5_11_UPDATE_WL_1_1(WL(1,0,1,10),4,COEFS,4,4,WL(1,0,1,11))
      CALL FFV1L2P0_3(PL(0,11),W(1,8),GC_5,ZERO,ZERO,PL(0,12),COEFS)
      CALL ML5_11_UPDATE_WL_2_0(WL(1,0,1,11),4,COEFS,4,4,WL(1,0,1,12))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,12),2,4,4,1,1,35,H)
C     Coefficient construction for loop diagram with ID 8
      CALL FFV1L2_1(PL(0,0),W(1,2),GC_5,ZERO,ZERO,PL(0,13),COEFS)
      CALL ML5_11_UPDATE_WL_0_1(WL(1,0,1,0),4,COEFS,4,4,WL(1,0,1,13))
      CALL FFV1L2P0_3(PL(0,13),W(1,5),GC_5,ZERO,ZERO,PL(0,14),COEFS)
      CALL ML5_11_UPDATE_WL_1_0(WL(1,0,1,13),4,COEFS,4,4,WL(1,0,1,14))
      CALL FFV1L3_1(PL(0,14),W(1,11),GC_5,ZERO,ZERO,PL(0,15),COEFS)
      CALL ML5_11_UPDATE_WL_1_1(WL(1,0,1,14),4,COEFS,4,4,WL(1,0,1,15))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,15),2,4,5,1,1,36,H)
C     Coefficient construction for loop diagram with ID 9
      CALL FFV1L3_1(PL(0,14),W(1,3),GC_5,MDL_MT,MDL_WT,PL(0,16),COEFS)
      CALL ML5_11_UPDATE_WL_1_1(WL(1,0,1,14),4,COEFS,4,4,WL(1,0,1,16))
      CALL FFV2L2_1(PL(0,16),W(1,6),GC_47,ZERO,ZERO,PL(0,17),COEFS)
      CALL ML5_11_UPDATE_WL_2_1(WL(1,0,1,16),4,COEFS,4,4,WL(1,0,1,17))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,17),3,4,6,1,1,37,H)
C     Coefficient construction for loop diagram with ID 10
      CALL VVV1L2P0_1(PL(0,0),W(1,2),GC_4,ZERO,ZERO,PL(0,18),COEFS)
      CALL ML5_11_UPDATE_WL_0_1(WL(1,0,1,0),4,COEFS,4,4,WL(1,0,1,18))
      CALL FFV1L3_2(PL(0,18),W(1,5),GC_5,ZERO,ZERO,PL(0,19),COEFS)
      CALL ML5_11_UPDATE_WL_1_1(WL(1,0,1,18),4,COEFS,4,4,WL(1,0,1,19))
      CALL FFV1L1P0_3(PL(0,19),W(1,11),GC_5,ZERO,ZERO,PL(0,20),COEFS)
      CALL ML5_11_UPDATE_WL_2_0(WL(1,0,1,19),4,COEFS,4,4,WL(1,0,1,20))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,20),2,4,5,1,1,38,H)
C     Coefficient construction for loop diagram with ID 11
      CALL FFV1L3_1(PL(0,18),W(1,3),GC_5,MDL_MT,MDL_WT,PL(0,21),COEFS)
      CALL ML5_11_UPDATE_WL_1_1(WL(1,0,1,18),4,COEFS,4,4,WL(1,0,1,21))
      CALL FFV2L2_1(PL(0,21),W(1,6),GC_47,ZERO,ZERO,PL(0,22),COEFS)
      CALL ML5_11_UPDATE_WL_2_1(WL(1,0,1,21),4,COEFS,4,4,WL(1,0,1,22))
      CALL FFV1L2P0_3(PL(0,22),W(1,5),GC_5,ZERO,ZERO,PL(0,23),COEFS)
      CALL ML5_11_UPDATE_WL_3_0(WL(1,0,1,22),4,COEFS,4,4,WL(1,0,1,23))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,23),3,4,7,1,1,39,H)
C     Coefficient construction for loop diagram with ID 12
      CALL FFV1L1_2(PL(0,0),W(1,2),GC_5,MDL_MT,MDL_WT,PL(0,24),COEFS)
      CALL ML5_11_UPDATE_WL_0_1(WL(1,0,1,0),4,COEFS,4,4,WL(1,0,1,24))
      CALL FFV1L1P0_3(PL(0,24),W(1,3),GC_5,ZERO,ZERO,PL(0,25),COEFS)
      CALL ML5_11_UPDATE_WL_1_0(WL(1,0,1,24),4,COEFS,4,4,WL(1,0,1,25))
      CALL FFV1L3_2(PL(0,25),W(1,5),GC_5,ZERO,ZERO,PL(0,26),COEFS)
      CALL ML5_11_UPDATE_WL_1_1(WL(1,0,1,25),4,COEFS,4,4,WL(1,0,1,26))
      CALL FFV2L1_2(PL(0,26),W(1,6),GC_47,MDL_MT,MDL_WT,PL(0,27),COEFS)
      CALL ML5_11_UPDATE_WL_2_1(WL(1,0,1,26),4,COEFS,4,4,WL(1,0,1,27))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,27),3,4,8,1,1,40,H)
C     Coefficient construction for loop diagram with ID 13
      CALL FFV1L1P0_3(PL(0,0),W(1,7),GC_5,ZERO,ZERO,PL(0,28),COEFS)
      CALL ML5_11_UPDATE_WL_0_0(WL(1,0,1,0),4,COEFS,4,4,WL(1,0,1,28))
      CALL FFV1L3_2(PL(0,28),W(1,12),GC_5,MDL_MT,MDL_WT,PL(0,29),COEFS)
      CALL ML5_11_UPDATE_WL_0_1(WL(1,0,1,28),4,COEFS,4,4,WL(1,0,1,29))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,29),1,4,9,1,1,41,H)
C     Coefficient construction for loop diagram with ID 14
      CALL FFV1L3_2(PL(0,25),W(1,12),GC_5,MDL_MT,MDL_WT,PL(0,30),COEFS)
      CALL ML5_11_UPDATE_WL_1_1(WL(1,0,1,25),4,COEFS,4,4,WL(1,0,1,30))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,30),2,4,10,1,1,42,H)
C     Coefficient construction for loop diagram with ID 15
      CALL FFV1L2P0_3(PL(0,21),W(1,12),GC_5,ZERO,ZERO,PL(0,31),COEFS)
      CALL ML5_11_UPDATE_WL_2_0(WL(1,0,1,21),4,COEFS,4,4,WL(1,0,1,31))
      CALL ML5_11_CREATE_LOOP_COEFS(WL(1,0,1,31),2,4,11,1,1,43,H)
C     At this point, all loop coefficients needed for (QCD=4), i.e. of
C      split order ID=1, are computed.
      IF(FILTER_SO.AND.SQSO_TARGET.EQ.1) GOTO 4000

      GOTO 1001
 4000 CONTINUE
      LOOP_REQ_SO_DONE=.TRUE.
 1001 CONTINUE
      END

