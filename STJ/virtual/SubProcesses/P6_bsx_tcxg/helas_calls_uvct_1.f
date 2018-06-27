      SUBROUTINE ML5_6_HELAS_CALLS_UVCT_1(P,NHEL,H,IC)
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
      IF (FILTER_SO.AND.UVCT_REQ_SO_DONE) THEN
        GOTO 1001
      ENDIF

C     Amplitude(s) for UVCT diagram with ID 31
      CALL FFV2_0(W(1,4),W(1,7),W(1,6),GC_47,AMPL(1,51))
      AMPL(1,51)=AMPL(1,51)*(1.0D0*UVWFCT_G_2+1.0D0*UVWFCT_T_0)
C     Amplitude(s) for UVCT diagram with ID 32
      CALL FFV2_0(W(1,4),W(1,7),W(1,6),GC_47,AMPL(2,52))
      AMPL(2,52)=AMPL(2,52)*(1.0D0*UVWFCT_T_0_1EPS+1.0D0
     $ *UVWFCT_G_2_1EPS)
C     Amplitude(s) for UVCT diagram with ID 33
      CALL FFV2_0(W(1,8),W(1,2),W(1,6),GC_47,AMPL(1,53))
      AMPL(1,53)=AMPL(1,53)*(1.0D0*UVWFCT_G_2+1.0D0*UVWFCT_T_0)
C     Amplitude(s) for UVCT diagram with ID 34
      CALL FFV2_0(W(1,8),W(1,2),W(1,6),GC_47,AMPL(2,54))
      AMPL(2,54)=AMPL(2,54)*(1.0D0*UVWFCT_T_0_1EPS+1.0D0
     $ *UVWFCT_G_2_1EPS)
C     Amplitude(s) for UVCT diagram with ID 35
      CALL FFV2_0(W(1,9),W(1,3),W(1,10),GC_47,AMPL(1,55))
      AMPL(1,55)=AMPL(1,55)*(1.0D0*UVWFCT_G_2+1.0D0*UVWFCT_T_0)
C     Amplitude(s) for UVCT diagram with ID 36
      CALL FFV2_0(W(1,9),W(1,3),W(1,10),GC_47,AMPL(2,56))
      AMPL(2,56)=AMPL(2,56)*(1.0D0*UVWFCT_T_0_1EPS+1.0D0
     $ *UVWFCT_G_2_1EPS)
C     Amplitude(s) for UVCT diagram with ID 37
      CALL FFV2_0(W(1,1),W(1,11),W(1,10),GC_47,AMPL(1,57))
      AMPL(1,57)=AMPL(1,57)*(1.0D0*UVWFCT_G_2+1.0D0*UVWFCT_T_0)
C     Amplitude(s) for UVCT diagram with ID 38
      CALL FFV2_0(W(1,1),W(1,11),W(1,10),GC_47,AMPL(2,58))
      AMPL(2,58)=AMPL(2,58)*(1.0D0*UVWFCT_T_0_1EPS+1.0D0
     $ *UVWFCT_G_2_1EPS)
C     At this point, all UVCT amps needed for (QCD=4), i.e. of split
C      order ID=1, are computed.
      IF(FILTER_SO.AND.SQSO_TARGET.EQ.1) GOTO 3000

      GOTO 1001
 3000 CONTINUE
      UVCT_REQ_SO_DONE=.TRUE.
 1001 CONTINUE
      END

