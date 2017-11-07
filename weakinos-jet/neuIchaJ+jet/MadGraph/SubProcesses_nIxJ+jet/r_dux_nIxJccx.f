      SUBROUTINE SMATRIX_DUX_NIXJCCX(P1,ANS)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : d u~ -> n1 x2- c c~  
C  
C Crossing   1 is d u~ -> n1 x2- c c~  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      Include "genps.inc"
      Include "nexternal.inc"
      Include "maxamps.inc"
      INTEGER                 NCOMB,     NCROSS         
      PARAMETER(             NCOMB=  64, NCROSS=  1)
      INTEGER    THEL
      PARAMETER(THEL=NCOMB*NCROSS)
C
C FINAL STATES
C
#include "finalstate.h"
C  
C ARGUMENTS 
C  
      REAL*8 P1(0:3,NEXTERNAL),ANS(NCROSS)
C  
C LOCAL VARIABLES 
C  
      INTEGER NHEL(NEXTERNAL,NCOMB),NTRY
      REAL*8 T, P(0:3,NEXTERNAL)
      REAL*8 MATRIX_DUX_NIXJCCX
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
      common/to_Ramps_dux_nIxJccx/  amp2,       jamp2

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
      DATA NGRAPHS /   16/          
      DATA jamp2(0) /   1/          
      DATA GOODHEL/THEL*.FALSE./
      DATA(NHEL(IHEL,   1),IHEL=1, 6) /-1,-1,-1,-1,-1,-1/
      DATA(NHEL(IHEL,   2),IHEL=1, 6) /-1,-1,-1,-1,-1, 1/
      DATA(NHEL(IHEL,   3),IHEL=1, 6) /-1,-1,-1,-1, 1,-1/
      DATA(NHEL(IHEL,   4),IHEL=1, 6) /-1,-1,-1,-1, 1, 1/
      DATA(NHEL(IHEL,   5),IHEL=1, 6) /-1,-1,-1, 1,-1,-1/
      DATA(NHEL(IHEL,   6),IHEL=1, 6) /-1,-1,-1, 1,-1, 1/
      DATA(NHEL(IHEL,   7),IHEL=1, 6) /-1,-1,-1, 1, 1,-1/
      DATA(NHEL(IHEL,   8),IHEL=1, 6) /-1,-1,-1, 1, 1, 1/
      DATA(NHEL(IHEL,   9),IHEL=1, 6) /-1,-1, 1,-1,-1,-1/
      DATA(NHEL(IHEL,  10),IHEL=1, 6) /-1,-1, 1,-1,-1, 1/
      DATA(NHEL(IHEL,  11),IHEL=1, 6) /-1,-1, 1,-1, 1,-1/
      DATA(NHEL(IHEL,  12),IHEL=1, 6) /-1,-1, 1,-1, 1, 1/
      DATA(NHEL(IHEL,  13),IHEL=1, 6) /-1,-1, 1, 1,-1,-1/
      DATA(NHEL(IHEL,  14),IHEL=1, 6) /-1,-1, 1, 1,-1, 1/
      DATA(NHEL(IHEL,  15),IHEL=1, 6) /-1,-1, 1, 1, 1,-1/
      DATA(NHEL(IHEL,  16),IHEL=1, 6) /-1,-1, 1, 1, 1, 1/
      DATA(NHEL(IHEL,  17),IHEL=1, 6) /-1, 1,-1,-1,-1,-1/
      DATA(NHEL(IHEL,  18),IHEL=1, 6) /-1, 1,-1,-1,-1, 1/
      DATA(NHEL(IHEL,  19),IHEL=1, 6) /-1, 1,-1,-1, 1,-1/
      DATA(NHEL(IHEL,  20),IHEL=1, 6) /-1, 1,-1,-1, 1, 1/
      DATA(NHEL(IHEL,  21),IHEL=1, 6) /-1, 1,-1, 1,-1,-1/
      DATA(NHEL(IHEL,  22),IHEL=1, 6) /-1, 1,-1, 1,-1, 1/
      DATA(NHEL(IHEL,  23),IHEL=1, 6) /-1, 1,-1, 1, 1,-1/
      DATA(NHEL(IHEL,  24),IHEL=1, 6) /-1, 1,-1, 1, 1, 1/
      DATA(NHEL(IHEL,  25),IHEL=1, 6) /-1, 1, 1,-1,-1,-1/
      DATA(NHEL(IHEL,  26),IHEL=1, 6) /-1, 1, 1,-1,-1, 1/
      DATA(NHEL(IHEL,  27),IHEL=1, 6) /-1, 1, 1,-1, 1,-1/
      DATA(NHEL(IHEL,  28),IHEL=1, 6) /-1, 1, 1,-1, 1, 1/
      DATA(NHEL(IHEL,  29),IHEL=1, 6) /-1, 1, 1, 1,-1,-1/
      DATA(NHEL(IHEL,  30),IHEL=1, 6) /-1, 1, 1, 1,-1, 1/
      DATA(NHEL(IHEL,  31),IHEL=1, 6) /-1, 1, 1, 1, 1,-1/
      DATA(NHEL(IHEL,  32),IHEL=1, 6) /-1, 1, 1, 1, 1, 1/
      DATA(NHEL(IHEL,  33),IHEL=1, 6) / 1,-1,-1,-1,-1,-1/
      DATA(NHEL(IHEL,  34),IHEL=1, 6) / 1,-1,-1,-1,-1, 1/
      DATA(NHEL(IHEL,  35),IHEL=1, 6) / 1,-1,-1,-1, 1,-1/
      DATA(NHEL(IHEL,  36),IHEL=1, 6) / 1,-1,-1,-1, 1, 1/
      DATA(NHEL(IHEL,  37),IHEL=1, 6) / 1,-1,-1, 1,-1,-1/
      DATA(NHEL(IHEL,  38),IHEL=1, 6) / 1,-1,-1, 1,-1, 1/
      DATA(NHEL(IHEL,  39),IHEL=1, 6) / 1,-1,-1, 1, 1,-1/
      DATA(NHEL(IHEL,  40),IHEL=1, 6) / 1,-1,-1, 1, 1, 1/
      DATA(NHEL(IHEL,  41),IHEL=1, 6) / 1,-1, 1,-1,-1,-1/
      DATA(NHEL(IHEL,  42),IHEL=1, 6) / 1,-1, 1,-1,-1, 1/
      DATA(NHEL(IHEL,  43),IHEL=1, 6) / 1,-1, 1,-1, 1,-1/
      DATA(NHEL(IHEL,  44),IHEL=1, 6) / 1,-1, 1,-1, 1, 1/
      DATA(NHEL(IHEL,  45),IHEL=1, 6) / 1,-1, 1, 1,-1,-1/
      DATA(NHEL(IHEL,  46),IHEL=1, 6) / 1,-1, 1, 1,-1, 1/
      DATA(NHEL(IHEL,  47),IHEL=1, 6) / 1,-1, 1, 1, 1,-1/
      DATA(NHEL(IHEL,  48),IHEL=1, 6) / 1,-1, 1, 1, 1, 1/
      DATA(NHEL(IHEL,  49),IHEL=1, 6) / 1, 1,-1,-1,-1,-1/
      DATA(NHEL(IHEL,  50),IHEL=1, 6) / 1, 1,-1,-1,-1, 1/
      DATA(NHEL(IHEL,  51),IHEL=1, 6) / 1, 1,-1,-1, 1,-1/
      DATA(NHEL(IHEL,  52),IHEL=1, 6) / 1, 1,-1,-1, 1, 1/
      DATA(NHEL(IHEL,  53),IHEL=1, 6) / 1, 1,-1, 1,-1,-1/
      DATA(NHEL(IHEL,  54),IHEL=1, 6) / 1, 1,-1, 1,-1, 1/
      DATA(NHEL(IHEL,  55),IHEL=1, 6) / 1, 1,-1, 1, 1,-1/
      DATA(NHEL(IHEL,  56),IHEL=1, 6) / 1, 1,-1, 1, 1, 1/
      DATA(NHEL(IHEL,  57),IHEL=1, 6) / 1, 1, 1,-1,-1,-1/
      DATA(NHEL(IHEL,  58),IHEL=1, 6) / 1, 1, 1,-1,-1, 1/
      DATA(NHEL(IHEL,  59),IHEL=1, 6) / 1, 1, 1,-1, 1,-1/
      DATA(NHEL(IHEL,  60),IHEL=1, 6) / 1, 1, 1,-1, 1, 1/
      DATA(NHEL(IHEL,  61),IHEL=1, 6) / 1, 1, 1, 1,-1,-1/
      DATA(NHEL(IHEL,  62),IHEL=1, 6) / 1, 1, 1, 1,-1, 1/
      DATA(NHEL(IHEL,  63),IHEL=1, 6) / 1, 1, 1, 1, 1,-1/
      DATA(NHEL(IHEL,  64),IHEL=1, 6) / 1, 1, 1, 1, 1, 1/
      DATA(  IC(IHEL,  1),IHEL=1, 6) / 1, 2, 3, 4, 5, 6/
      DATA(IDEN(IHEL),IHEL=  1,  1) /  36/
C ----------
C BEGIN CODE
C ----------
      NTRY=NTRY+1
      DO IPROC=1,NCROSS
      !CALL SWITCHMOM(P1,P,IC(1,IPROC),JC,NEXTERNAL)
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
                 T=MATRIX_DUX_NIXJCCX(P1,NHEL(1,IHEL),JC(1))            
               ANS(IPROC)=ANS(IPROC)+T
               IF(T .NE. 0D0 .AND. .NOT.    GOODHEL(IHEL,IPROC)) THEN
                   GOODHEL(IHEL,IPROC)=.TRUE.
                   NGOOD = NGOOD +1
                   IGOOD(NGOOD) = IHEL
               ENDIF
             ENDIF
          ENDDO
      
      if(final1.eq.final2) then ! equal final states
        ANS(IPROC)=ANS(IPROC)/DBLE(IDEN(IPROC)*2)
      else
        ANS(IPROC)=ANS(IPROC)/DBLE(IDEN(IPROC))
      endif
      ENDDO
      END
       
       
      REAL*8 FUNCTION MATRIX_DUX_NIXJCCX(P,NHEL,IC)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : d u~ -> n1 x2- c c~  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER(NGRAPHS=  16,NEIGEN=  1) 
      include "genps.inc"
      include "nexternal.inc"
      include "maxamps.inc"
      INTEGER    NWAVEFUNCS, NCOLOR
      PARAMETER(NWAVEFUNCS=  37, NCOLOR=   1) 
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
      Double Precision amp2(maxamps), jamp2(0:maxflow)
      common/to_Ramps_dux_nIxJccx/  amp2,       jamp2
      include "coupl.inc"
C  
C COLOR DATA
C  
      DATA Denom(1)/            1/                                       
      DATA(CF(i,1),i=1,1) /     2/                                  
C               T[ 5, 1]T[ 2, 6]                                           
C ----------
C BEGIN CODE
C ----------
      CALL IXXXXX(P(0,1),ZERO,NHEL(1),+1*IC(1),W(1,1))        
      CALL OXXXXX(P(0,2),ZERO,NHEL(2),-1*IC(2),W(1,2))        
      CALL OXXXXX(P(0,3),MNI,NHEL(3),+1*IC(3),W(1,3))         
      CALL OXXXXX(P(0,4),MXJ,NHEL(4),+1*IC(4),W(1,4))         
      CALL IXXXXX(P(0,5),ZERO,NHEL(5),-1*IC(5),W(1,5))        
      CALL IXXXXX(P(0,6),ZERO,NHEL(6),-1*IC(6),W(1,6))        
      CALL HIOXXX(W(1,1),W(1,4),GULXJM,MUL,WUL,W(1,7))                                                          
      CALL FSOXXX(W(1,2),W(1,7),GQLGOP,MGO,WGO,W(1,8))                                                          
      CALL HIOCXX(W(1,5),W(1,8),GQLGOP,MCL,WCL,W(1,9))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,9),GULNIM,AMP(1))         
      CALL HIOCXX(W(1,5),W(1,8),GQRGOP,MCR,WCR,W(1,10))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,10),GURNIM,AMP(2))         
      CALL HIOCXX(W(1,5),W(1,3),GULNIP,MCL,WCL,W(1,11))                                                          
      CALL IOSXXX(W(1,6),W(1,8),W(1,11),GQLGOM,AMP(3))         
      CALL HIOCXX(W(1,5),W(1,3),GURNIP,MCR,WCR,W(1,12))                                                          
      CALL IOSXXX(W(1,6),W(1,8),W(1,12),GQRGOM,AMP(4))         
      CALL IXXXXX(P(0,4),MXJ,NHEL(4),-1*IC(4),W(1,13))         
      CALL OXXXXX(P(0,5),ZERO,NHEL(5),+1*IC(5),W(1,14))        
      CALL HIOXXX(W(1,13),W(1,2),GDLXJP,MDL,WDL,W(1,15))                                                          
      CALL FSOXXX(W(1,3),W(1,15),GDLNIM,ZERO,ZERO,W(1,16))                                                          
      CALL JIOXXX(W(1,1),W(1,16),GG,ZERO,ZERO,W(1,17))     
      CALL IOVXXX(W(1,6),W(1,14),W(1,17),GG,AMP(5))             
      CALL HIOXXX(W(1,1),W(1,3),GDLNIM,MDL,WDL,W(1,18))                                                          
      CALL FSIXXX(W(1,13),W(1,18),GDLXJP,ZERO,ZERO,W(1,19))                                                          
      CALL JIOXXX(W(1,19),W(1,2),GG,ZERO,ZERO,W(1,20))     
      CALL IOVXXX(W(1,6),W(1,14),W(1,20),GG,AMP(6))             
      CALL JSSXXX(W(1,15),W(1,18),GC,ZERO,ZERO,W(1,21))     
      CALL IOVXXX(W(1,6),W(1,14),W(1,21),GG,AMP(7))             
      CALL FSIXXX(W(1,1),W(1,15),GQLGOM,MGO,WGO,W(1,22))                                                          
      CALL HIOXXX(W(1,22),W(1,14),GQLGOP,MCL,WCL,W(1,23))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,23),GULNIM,AMP(8))         
      CALL HIOXXX(W(1,22),W(1,14),GQRGOP,MCR,WCR,W(1,24))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,24),GURNIM,AMP(9))         
      CALL JIOCXX(W(1,13),W(1,3),GWNIXJ,WMASS,WWIDTH,W(1,25))                                                          
      CALL FVOXXX(W(1,2),W(1,25),GWF,ZERO,ZERO,W(1,26))    
      CALL JIOXXX(W(1,1),W(1,26),GG,ZERO,ZERO,W(1,27))     
      CALL IOVXXX(W(1,6),W(1,14),W(1,27),GG,AMP(10))             
      CALL FVIXXX(W(1,1),W(1,25),GWF,ZERO,ZERO,W(1,28))    
      CALL JIOXXX(W(1,28),W(1,2),GG,ZERO,ZERO,W(1,29))     
      CALL IOVXXX(W(1,6),W(1,14),W(1,29),GG,AMP(11))             
      CALL OXXXXX(P(0,6),ZERO,NHEL(6),+1*IC(6),W(1,30))        
      CALL IOSCXX(W(1,22),W(1,30),W(1,11),GQLGOM,AMP(12))        
      CALL IOSCXX(W(1,22),W(1,30),W(1,12),GQRGOM,AMP(13))        
      CALL IXXXXX(P(0,3),MNI,NHEL(3),-1*IC(3),W(1,31))         
      CALL HIOXXX(W(1,31),W(1,2),GULNIP,MUL,WUL,W(1,32))                                                          
      CALL FSOXXX(W(1,4),W(1,32),GULXJM,ZERO,ZERO,W(1,33))                                                          
      CALL JIOXXX(W(1,1),W(1,33),GG,ZERO,ZERO,W(1,34))     
      CALL IOVXXX(W(1,6),W(1,14),W(1,34),GG,AMP(14))             
      CALL FSIXXX(W(1,31),W(1,7),GULNIP,ZERO,ZERO,W(1,35))                                                          
      CALL JIOXXX(W(1,35),W(1,2),GG,ZERO,ZERO,W(1,36))     
      CALL IOVXXX(W(1,6),W(1,14),W(1,36),GG,AMP(15))             
      CALL JSSXXX(W(1,32),W(1,7),GC,ZERO,ZERO,W(1,37))     
      CALL IOVXXX(W(1,6),W(1,14),W(1,37),GG,AMP(16))             
      JAMP(   1) = -AMP(   1)-AMP(   2)+AMP(   3)+AMP(   4)-AMP(   5)
     &             -AMP(   6)-AMP(   7)+AMP(   8)+AMP(   9)+AMP(  10)
     &             +AMP(  11)-AMP(  12)-AMP(  13)+AMP(  14)+AMP(  15)
     &             +AMP(  16)
      MATRIX_DUX_NIXJCCX = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP =(0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          MATRIX_DUX_NIXJCCX =MATRIX_DUX_NIXJCCX+ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO
      Do I = 1, NGRAPHS
          amp2(i)=amp2(i)+amp(i)*dconjg(amp(i))
      Enddo
      Do I = 1, NCOLOR
          Jamp2(i)=Jamp2(i)+Jamp(i)*dconjg(Jamp(i))
      Enddo
C      CALL GAUGECHECK(JAMP,ZTEMP,EIGEN_VEC,EIGEN_VAL,NCOLOR,NEIGEN) 
      END
       
       
