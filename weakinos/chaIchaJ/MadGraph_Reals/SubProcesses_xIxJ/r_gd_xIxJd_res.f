      SUBROUTINE SMATRIX_GD_XIXJD_RES(P1,CHAN,ANS)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : g d -> xi+ xj- d  
C  
C Crossing   1 is g d -> xi+ xj- d  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      Include "genps.inc"
      Include "nexternal.inc"
      Include "maxamps_xixj.inc"
      INTEGER                 NCOMB,     NCROSS         
      PARAMETER(             NCOMB=  32, NCROSS=  1)
      INTEGER    THEL
      PARAMETER(THEL=NCOMB*NCROSS)
C  
C ARGUMENTS 
C  
      REAL*8 P1(0:3,NEXTERNAL),ANS(NCROSS)
      CHARACTER*4 CHAN
C  
C LOCAL VARIABLES 
C  
      INTEGER NHEL(NEXTERNAL,NCOMB),NTRY
      REAL*8 T, P(0:3,NEXTERNAL)
      REAL*8 MATRIX_GD_XIXJD_RES
      INTEGER IHEL,IDEN(NCROSS),IC(NEXTERNAL,NCROSS)
      INTEGER IPROC,JC(NEXTERNAL), I
      LOGICAL GOODHEL(NCOMB,NCROSS)
      INTEGER NGRAPHS
      REAL*8 hwgt, xtot, xtry, xrej, xr, yfrac(0:ncomb)
      INTEGER idum, ngood, igood(ncomb), jhel, j, jj
      LOGICAL warned
C  
C GLOBAL VARIABLES
C  
      Double Precision amp2(maxamps), jamp2(0:maxflow)
      common/to_amps_gd_xixj_res/  amp2,       jamp2

      character*79         hel_buff
      !common/to_helicity/  hel_buff

      REAL*8 POL(2)
      !common/to_polarization/ POL

      integer          isum_hel
      logical                    multi_channel
      !common/to_matrix/isum_hel, multi_channel
      INTEGER MAPCONFIG(0:LMAXCONFIGS), ICONFIG
      !common/to_mconfigs/mapconfig, iconfig
      DATA NTRY,IDUM /0,-1/
      DATA xtry, xrej, ngood /0,0,0/
      DATA warned, isum_hel/.false.,0/
      DATA multi_channel/.true./
      SAVE yfrac, igood, jhel
      DATA NGRAPHS /    5/          
      DATA jamp2(0) /   1/          
      DATA GOODHEL/THEL*.FALSE./
      DATA(NHEL(IHEL,   1),IHEL=1, 5) /-1,-1,-1,-1,-1/
      DATA(NHEL(IHEL,   2),IHEL=1, 5) /-1,-1,-1,-1, 1/
      DATA(NHEL(IHEL,   3),IHEL=1, 5) /-1,-1,-1, 1,-1/
      DATA(NHEL(IHEL,   4),IHEL=1, 5) /-1,-1,-1, 1, 1/
      DATA(NHEL(IHEL,   5),IHEL=1, 5) /-1,-1, 1,-1,-1/
      DATA(NHEL(IHEL,   6),IHEL=1, 5) /-1,-1, 1,-1, 1/
      DATA(NHEL(IHEL,   7),IHEL=1, 5) /-1,-1, 1, 1,-1/
      DATA(NHEL(IHEL,   8),IHEL=1, 5) /-1,-1, 1, 1, 1/
      DATA(NHEL(IHEL,   9),IHEL=1, 5) /-1, 1,-1,-1,-1/
      DATA(NHEL(IHEL,  10),IHEL=1, 5) /-1, 1,-1,-1, 1/
      DATA(NHEL(IHEL,  11),IHEL=1, 5) /-1, 1,-1, 1,-1/
      DATA(NHEL(IHEL,  12),IHEL=1, 5) /-1, 1,-1, 1, 1/
      DATA(NHEL(IHEL,  13),IHEL=1, 5) /-1, 1, 1,-1,-1/
      DATA(NHEL(IHEL,  14),IHEL=1, 5) /-1, 1, 1,-1, 1/
      DATA(NHEL(IHEL,  15),IHEL=1, 5) /-1, 1, 1, 1,-1/
      DATA(NHEL(IHEL,  16),IHEL=1, 5) /-1, 1, 1, 1, 1/
      DATA(NHEL(IHEL,  17),IHEL=1, 5) / 1,-1,-1,-1,-1/
      DATA(NHEL(IHEL,  18),IHEL=1, 5) / 1,-1,-1,-1, 1/
      DATA(NHEL(IHEL,  19),IHEL=1, 5) / 1,-1,-1, 1,-1/
      DATA(NHEL(IHEL,  20),IHEL=1, 5) / 1,-1,-1, 1, 1/
      DATA(NHEL(IHEL,  21),IHEL=1, 5) / 1,-1, 1,-1,-1/
      DATA(NHEL(IHEL,  22),IHEL=1, 5) / 1,-1, 1,-1, 1/
      DATA(NHEL(IHEL,  23),IHEL=1, 5) / 1,-1, 1, 1,-1/
      DATA(NHEL(IHEL,  24),IHEL=1, 5) / 1,-1, 1, 1, 1/
      DATA(NHEL(IHEL,  25),IHEL=1, 5) / 1, 1,-1,-1,-1/
      DATA(NHEL(IHEL,  26),IHEL=1, 5) / 1, 1,-1,-1, 1/
      DATA(NHEL(IHEL,  27),IHEL=1, 5) / 1, 1,-1, 1,-1/
      DATA(NHEL(IHEL,  28),IHEL=1, 5) / 1, 1,-1, 1, 1/
      DATA(NHEL(IHEL,  29),IHEL=1, 5) / 1, 1, 1,-1,-1/
      DATA(NHEL(IHEL,  30),IHEL=1, 5) / 1, 1, 1,-1, 1/
      DATA(NHEL(IHEL,  31),IHEL=1, 5) / 1, 1, 1, 1,-1/
      DATA(NHEL(IHEL,  32),IHEL=1, 5) / 1, 1, 1, 1, 1/
      DATA(  IC(IHEL,  1),IHEL=1, 5) / 1, 2, 3, 4, 5/
      DATA(IDEN(IHEL),IHEL=  1,  1) /  96/
C ----------
C BEGIN CODE
C ----------
      NTRY=NTRY+1
      DO IPROC=1,NCROSS
      CALL SWITCHMOM(P1,P,IC(1,IPROC),JC,NEXTERNAL)
      DO IHEL=1,NEXTERNAL
         JC(IHEL) = +1
      ENDDO
       
          DO IHEL=1,NGRAPHS
              amp2(ihel)=0d0
          ENDDO
          DO IHEL=1,int(jamp2(0))
              jamp2(ihel)=0d0
          ENDDO
      ANS(IPROC) = 0D0
          DO IHEL=1,NCOMB
             IF(GOODHEL(IHEL,IPROC) .OR. NTRY .LT. 2) THEN
                 T=MATRIX_GD_XIXJD_RES(P,NHEL(1,IHEL),JC(1),CHAN)
               ANS(IPROC)=ANS(IPROC)+T
               IF(T .NE. 0D0 .AND. .NOT.    GOODHEL(IHEL,IPROC)) THEN
                   GOODHEL(IHEL,IPROC)=.TRUE.
                   NGOOD = NGOOD +1
                   IGOOD(NGOOD) = IHEL
               ENDIF
             ENDIF
          ENDDO
      ANS(IPROC)=ANS(IPROC)/DBLE(IDEN(IPROC))
      ENDDO
      END


      REAL*8 FUNCTION MATRIX_GD_XIXJD_RES(P,NHEL,IC,CHAN)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : g d -> xi+ xj- d  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER(NGRAPHS=   5,NEIGEN=  1) 
      include "genps.inc"
      include "nexternal.inc"
      include "maxamps_xixj.inc"
      INTEGER    NWAVEFUNCS, NCOLOR
      PARAMETER(NWAVEFUNCS=  11, NCOLOR=   1) 
      REAL*8     ZERO
      PARAMETER(ZERO=0D0)
C  
C ARGUMENTS 
C  
      REAL*8 P(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL), IC(NEXTERNAL)
C  
C LOCAL VARIABLES 
C  
      INTEGER I,J
      COMPLEX*16 ZTEMP
      REAL*8 DENOM(NCOLOR), CF(NCOLOR,NCOLOR)
      COMPLEX*16 AMP(NGRAPHS), JAMP(NCOLOR)
      COMPLEX*16 W(18,NWAVEFUNCS)
C  
C GLOBAL VARIABLES
C  
      include "coupl.inc"
C
C VARIABLES TO APPLY THE DIAGRAM SUBTRACTION SCHEMES 
C
#define _EXTFUNCT_
#include "dsubtraction_xixj.h"
C  
C COLOR DATA
C  
      DATA Denom(1)/            1/                                       
      DATA(CF(i,1),i=1,1) /     4/                                  
C               T[ 5, 2, 1]                                                
C ----------
C BEGIN CODE
C ----------
      CALL VXXXXX(P(0,1),ZERO,NHEL(1),-1*IC(1),W(1,1))        
      CALL IXXXXX(P(0,2),ZERO,NHEL(2),+1*IC(2),W(1,2))        
      CALL IXXXXX(P(0,3),MXI,NHEL(3),-1*IC(3),W(1,3))         
      CALL OXXXXX(P(0,4),MXJ,NHEL(4),+1*IC(4),W(1,4))         
      CALL OXXXXX(P(0,5),ZERO,NHEL(5),+1*IC(5),W(1,5))     
      
      ! diagram 1
      CALL HIOXXX(W(1,2),W(1,4),GULXJM,MUL,WUL,W(1,6))                                                          
      CALL FVOXXX(W(1,5),W(1,1),GG,ZERO,ZERO,W(1,7))     
      CALL IOSXXX(W(1,3),W(1,7),W(1,6),GULXIP,AMP(1))         
      ! diagram 2 <- resonant
      CALL HIOXXX(W(1,3),W(1,5),GULXIP,MUL,WULR,W(1,8))                                                          
      CALL VSSXXX(W(1,1),W(1,8),W(1,6),GC,AMP(2))             
      ! diagram 3 <- resonant
      CALL FVIXXX(W(1,2),W(1,1),GG,ZERO,ZERO,W(1,9))     
      CALL HIOXXX(W(1,9),W(1,4),GULXJM,MUL,WULR,W(1,10))                                                          
      CALL IOSXXX(W(1,3),W(1,5),W(1,10),GULXIP,AMP(3))         
      ! diagram 4
      CALL JIOXXX(W(1,3),W(1,4),GZXIJ,ZMASS,ZWIDTH,W(1, 11))                                                          
      CALL IOVXXX(W(1,2),W(1,7),W(1,11),GZD,AMP(4))            
      ! diagram 5 
      CALL IOVXXX(W(1,9),W(1,5),W(1,11),GZD,AMP(5))      
      
      ! S35 = MUL^2
      if(CHAN.eq."ul35") then
        JAMP(1) = -AMP(2)-AMP(3)
      ! all resonant channels  
      else if (CHAN.eq."allr") then
        JAMP(1) = -AMP(2)-AMP(3)
      else
        ! der Fortrancompiler macht seltsame Sachen, wenn hier eine
        ! exakte Null steht, deshalb hier sehr kleine Zahl
        JAMP(1) = 1D-99
      endif
      
      MATRIX_GD_XIXJD_RES = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP =(0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          MATRIX_GD_XIXJD_RES =MATRIX_GD_XIXJD_RES
     &                       +ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO

      END
       
       
