      SUBROUTINE SMATRIX_CBX_NINJCBX(P1,ANS)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : c b~ -> n1 n2 c b~  
C  
C Crossing   1 is c b~ -> n1 n2 c b~  
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
      REAL*8 MATRIX_CBX_NINJCBX
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
      common/to_Ramps_cbx_nInJcbx/  amp2,       jamp2

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
      DATA NGRAPHS /   66/          
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
                 T=MATRIX_CBX_NINJCBX(P1,NHEL(1,IHEL),JC(1))            
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
       
       
      REAL*8 FUNCTION MATRIX_CBX_NINJCBX(P,NHEL,IC)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : c b~ -> n1 n2 c b~  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER(NGRAPHS=  66,NEIGEN=  1) 
      include "genps.inc"
      include "nexternal.inc"
      include "maxamps.inc"
      INTEGER    NWAVEFUNCS, NCOLOR
      PARAMETER(NWAVEFUNCS=  96, NCOLOR=   1) 
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
      common/to_Ramps_cbx_nInJcbx/  amp2,       jamp2
      include "coupl.inc"
C  
C COLOR DATA
C  
      DATA Denom(1)/            1/                                       
      DATA(CF(i,1),i=1,1) /     2/                                  
C               T[ 5, 6]T[ 2, 1]                                           
C ----------
C BEGIN CODE
C ----------
      CALL IXXXXX(P(0,1),ZERO,NHEL(1),+1*IC(1),W(1,1))        
      CALL OXXXXX(P(0,2),BMASS,NHEL(2),-1*IC(2),W(1,2))       
      CALL OXXXXX(P(0,3),MNI,NHEL(3),+1*IC(3),W(1,3))         
      CALL OXXXXX(P(0,4),MNJ,NHEL(4),+1*IC(4),W(1,4))         
      CALL IXXXXX(P(0,5),ZERO,NHEL(5),-1*IC(5),W(1,5))        
      CALL IXXXXX(P(0,6),BMASS,NHEL(6),-1*IC(6),W(1,6))       
      CALL HIOXXX(W(1,1),W(1,4),GULNJM,MCL,WCL,W(1,7))                                                          
      CALL FSOCXX(W(1,3),W(1,7),GULNIP,ZERO,ZERO,W(1,8))                                                          
      CALL JIOCXX(W(1,5),W(1,8),GG,ZERO,ZERO,W(1,9))    
      CALL IOVXXX(W(1,6),W(1,2),W(1,9),GG,AMP(1))             
      CALL HIOXXX(W(1,1),W(1,4),GURNJM,MCR,WCR,W(1,10))                                                          
      CALL FSOCXX(W(1,3),W(1,10),GURNIP,ZERO,ZERO,W(1,11))                                                          
      CALL JIOCXX(W(1,5),W(1,11),GG,ZERO,ZERO,W(1,12))    
      CALL IOVXXX(W(1,6),W(1,2),W(1,12),GG,AMP(2))             
      CALL HIOCXX(W(1,5),W(1,3),GULNIP,MCL,WCL,W(1,13))                                                          
      CALL JSSXXX(W(1,13),W(1,7),GC,ZERO,ZERO,W(1,14))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,14),GG,AMP(3))             
      CALL HIOCXX(W(1,5),W(1,3),GURNIP,MCR,WCR,W(1,15))                                                          
      CALL JSSXXX(W(1,15),W(1,10),GC,ZERO,ZERO,W(1,16))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,16),GG,AMP(4))             
      CALL FSOXXX(W(1,4),W(1,13),GULNJM,ZERO,ZERO,W(1,17))                                                          
      CALL JIOXXX(W(1,1),W(1,17),GG,ZERO,ZERO,W(1,18))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,18),GG,AMP(5))             
      CALL FSOXXX(W(1,4),W(1,15),GURNJM,ZERO,ZERO,W(1,19))                                                          
      CALL JIOXXX(W(1,1),W(1,19),GG,ZERO,ZERO,W(1,20))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,20),GG,AMP(6))             
      CALL HIOCXX(W(1,5),W(1,4),GULNJP,MCL,WCL,W(1,21))                                                          
      CALL FSIXXX(W(1,1),W(1,21),GQLGOM,MGO,WGO,W(1,22))                                                          
      CALL HIOXXX(W(1,22),W(1,2),GB1GOP,MBL,WBL,W(1,23))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,23),GB1NIM,AMP(7))         
      CALL HIOXXX(W(1,22),W(1,2),GB2GOP,MBR,WBR,W(1,24))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,24),GB2NIM,AMP(8))         
      CALL HIOCXX(W(1,5),W(1,4),GURNJP,MCR,WCR,W(1,25))                                                          
      CALL FSIXXX(W(1,1),W(1,25),GQRGOM,MGO,WGO,W(1,26))                                                          
      CALL HIOXXX(W(1,26),W(1,2),GB1GOP,MBL,WBL,W(1,27))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,27),GB1NIM,AMP(9))         
      CALL HIOXXX(W(1,26),W(1,2),GB2GOP,MBR,WBR,W(1,28))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,28),GB2NIM,AMP(10))         
      CALL FSICXX(W(1,5),W(1,7),GQLGOP,MGO,WGO,W(1,29))                                                          
      CALL HIOXXX(W(1,29),W(1,2),GB1GOP,MBL,WBL,W(1,30))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,30),GB1NIM,AMP(11))         
      CALL HIOXXX(W(1,29),W(1,2),GB2GOP,MBR,WBR,W(1,31))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,31),GB2NIM,AMP(12))         
      CALL FSICXX(W(1,5),W(1,10),GQRGOP,MGO,WGO,W(1,32))                                                          
      CALL HIOXXX(W(1,32),W(1,2),GB1GOP,MBL,WBL,W(1,33))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,33),GB1NIM,AMP(13))         
      CALL HIOXXX(W(1,32),W(1,2),GB2GOP,MBR,WBR,W(1,34))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,34),GB2NIM,AMP(14))         
      CALL HIOXXX(W(1,1),W(1,3),GULNIM,MCL,WCL,W(1,35))                                                          
      CALL FSOCXX(W(1,4),W(1,35),GULNJP,ZERO,ZERO,W(1,36))                                                          
      CALL JIOCXX(W(1,5),W(1,36),GG,ZERO,ZERO,W(1,37))    
      CALL IOVXXX(W(1,6),W(1,2),W(1,37),GG,AMP(15))             
      CALL HIOXXX(W(1,1),W(1,3),GURNIM,MCR,WCR,W(1,38))                                                          
      CALL FSOCXX(W(1,4),W(1,38),GURNJP,ZERO,ZERO,W(1,39))                                                          
      CALL JIOCXX(W(1,5),W(1,39),GG,ZERO,ZERO,W(1,40))    
      CALL IOVXXX(W(1,6),W(1,2),W(1,40),GG,AMP(16))             
      CALL JSSXXX(W(1,21),W(1,35),GC,ZERO,ZERO,W(1,41))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,41),GG,AMP(17))             
      CALL JSSXXX(W(1,25),W(1,38),GC,ZERO,ZERO,W(1,42))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,42),GG,AMP(18))             
      CALL FSOXXX(W(1,3),W(1,21),GULNIM,ZERO,ZERO,W(1,43))                                                          
      CALL JIOXXX(W(1,1),W(1,43),GG,ZERO,ZERO,W(1,44))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,44),GG,AMP(19))             
      CALL FSOXXX(W(1,3),W(1,25),GURNIM,ZERO,ZERO,W(1,45))                                                          
      CALL JIOXXX(W(1,1),W(1,45),GG,ZERO,ZERO,W(1,46))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,46),GG,AMP(20))             
      CALL FSIXXX(W(1,1),W(1,13),GQLGOM,MGO,WGO,W(1,47))                                                          
      CALL HIOXXX(W(1,47),W(1,2),GB1GOP,MBL,WBL,W(1,48))                                                          
      CALL IOSXXX(W(1,6),W(1,4),W(1,48),GB1NJM,AMP(21))         
      CALL HIOXXX(W(1,47),W(1,2),GB2GOP,MBR,WBR,W(1,49))                                                          
      CALL IOSXXX(W(1,6),W(1,4),W(1,49),GB2NJM,AMP(22))         
      CALL FSIXXX(W(1,1),W(1,15),GQRGOM,MGO,WGO,W(1,50))                                                          
      CALL HIOXXX(W(1,50),W(1,2),GB1GOP,MBL,WBL,W(1,51))                                                          
      CALL IOSXXX(W(1,6),W(1,4),W(1,51),GB1NJM,AMP(23))         
      CALL HIOXXX(W(1,50),W(1,2),GB2GOP,MBR,WBR,W(1,52))                                                          
      CALL IOSXXX(W(1,6),W(1,4),W(1,52),GB2NJM,AMP(24))         
      CALL FSICXX(W(1,5),W(1,35),GQLGOP,MGO,WGO,W(1,53))                                                          
      CALL HIOXXX(W(1,53),W(1,2),GB1GOP,MBL,WBL,W(1,54))                                                          
      CALL IOSXXX(W(1,6),W(1,4),W(1,54),GB1NJM,AMP(25))         
      CALL HIOXXX(W(1,53),W(1,2),GB2GOP,MBR,WBR,W(1,55))                                                          
      CALL IOSXXX(W(1,6),W(1,4),W(1,55),GB2NJM,AMP(26))         
      CALL FSICXX(W(1,5),W(1,38),GQRGOP,MGO,WGO,W(1,56))                                                          
      CALL HIOXXX(W(1,56),W(1,2),GB1GOP,MBL,WBL,W(1,57))                                                          
      CALL IOSXXX(W(1,6),W(1,4),W(1,57),GB1NJM,AMP(27))         
      CALL HIOXXX(W(1,56),W(1,2),GB2GOP,MBR,WBR,W(1,58))                                                          
      CALL IOSXXX(W(1,6),W(1,4),W(1,58),GB2NJM,AMP(28))         
      CALL IXXXXX(P(0,4),MNJ,NHEL(4),-1*IC(4),W(1,59))         
      CALL OXXXXX(P(0,5),ZERO,NHEL(5),+1*IC(5),W(1,60))        
      CALL HIOXXX(W(1,59),W(1,2),GB1NJP,MBL,WBL,W(1,61))                                                          
      CALL JIOXXX(W(1,1),W(1,60),GG,ZERO,ZERO,W(1,62))     
      CALL HVSXXX(W(1,62),W(1,61),GC,MBL,WBL,W(1,63))     
      CALL IOSXXX(W(1,6),W(1,3),W(1,63),GB1NIM,AMP(29))         
      CALL HIOXXX(W(1,59),W(1,2),GB2NJP,MBR,WBR,W(1,64))                                                          
      CALL HVSXXX(W(1,62),W(1,64),GC,MBR,WBR,W(1,65))     
      CALL IOSXXX(W(1,6),W(1,3),W(1,65),GB2NIM,AMP(30))         
      CALL FSOXXX(W(1,3),W(1,61),GB1NIM,BMASS,ZERO,W(1,66))                                                          
      CALL IOVXXX(W(1,6),W(1,66),W(1,62),GG,AMP(31))             
      CALL FSOXXX(W(1,3),W(1,64),GB2NIM,BMASS,ZERO,W(1,67))                                                          
      CALL IOVXXX(W(1,6),W(1,67),W(1,62),GG,AMP(32))             
      CALL FVOXXX(W(1,2),W(1,62),GG,BMASS,ZERO,W(1,68))     
      CALL HIOXXX(W(1,59),W(1,68),GB1NJP,MBL,WBL,W(1,69))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,69),GB1NIM,AMP(33))         
      CALL HIOXXX(W(1,59),W(1,68),GB2NJP,MBR,WBR,W(1,70))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,70),GB2NIM,AMP(34))         
      CALL FSOXXX(W(1,60),W(1,35),GQLGOP,MGO,WGO,W(1,71))                                                          
      CALL IOSXXX(W(1,6),W(1,71),W(1,61),GB1GOM,AMP(35))         
      CALL IOSXXX(W(1,6),W(1,71),W(1,64),GB2GOM,AMP(36))         
      CALL FSOXXX(W(1,60),W(1,38),GQRGOP,MGO,WGO,W(1,72))                                                          
      CALL IOSXXX(W(1,6),W(1,72),W(1,61),GB1GOM,AMP(37))         
      CALL IOSXXX(W(1,6),W(1,72),W(1,64),GB2GOM,AMP(38))         
      CALL JIOCXX(W(1,59),W(1,3),GZNIJ,ZMASS,ZWIDTH,W(1,73))                                                          
      CALL IOVXXX(W(1,6),W(1,68),W(1,73),GZD,AMP(39))            
      CALL HIOCXX(W(1,59),W(1,3),GH1NIJ,MH1,WH1,W(1,74))                                                          
      CALL IOSXXX(W(1,6),W(1,68),W(1,74),GH1BB,AMP(40))          
      CALL HIOCXX(W(1,59),W(1,3),GH2NIJ,MH2,WH2,W(1,75))                                                          
      CALL IOSXXX(W(1,6),W(1,68),W(1,75),GH2BB,AMP(41))          
      CALL HIOCXX(W(1,59),W(1,3),GH3NIJ,MH3,WH3,W(1,76))                                                          
      CALL IOSXXX(W(1,6),W(1,68),W(1,76),GH3BB,AMP(42))          
      CALL FVOXXX(W(1,2),W(1,73),GZD,BMASS,ZERO,W(1,77))    
      CALL IOVXXX(W(1,6),W(1,77),W(1,62),GG,AMP(43))             
      CALL FSOXXX(W(1,2),W(1,74),GH1BB,BMASS,ZERO,W(1, 78))                                                          
      CALL IOVXXX(W(1,6),W(1,78),W(1,62),GG,AMP(44))             
      CALL FSOXXX(W(1,2),W(1,75),GH2BB,BMASS,ZERO,W(1, 79))                                                          
      CALL IOVXXX(W(1,6),W(1,79),W(1,62),GG,AMP(45))             
      CALL FSOXXX(W(1,2),W(1,76),GH3BB,BMASS,ZERO,W(1, 80))                                                          
      CALL IOVXXX(W(1,6),W(1,80),W(1,62),GG,AMP(46))             
      CALL FVIXXX(W(1,1),W(1,73),GZU,ZERO,ZERO,W(1,81))    
      CALL JIOXXX(W(1,81),W(1,60),GG,ZERO,ZERO,W(1,82))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,82),GG,AMP(47))             
      CALL FVOXXX(W(1,60),W(1,73),GZU,ZERO,ZERO,W(1,83))    
      CALL JIOXXX(W(1,1),W(1,83),GG,ZERO,ZERO,W(1,84))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,84),GG,AMP(48))             
      CALL OXXXXX(P(0,6),BMASS,NHEL(6),+1*IC(6),W(1,85))       
      CALL IOSCXX(W(1,47),W(1,85),W(1,61),GB1GOM,AMP(49))        
      CALL IOSCXX(W(1,50),W(1,85),W(1,61),GB1GOM,AMP(50))        
      CALL IOSCXX(W(1,47),W(1,85),W(1,64),GB2GOM,AMP(51))        
      CALL IOSCXX(W(1,50),W(1,85),W(1,64),GB2GOM,AMP(52))        
      CALL IXXXXX(P(0,3),MNI,NHEL(3),-1*IC(3),W(1,86))         
      CALL HIOXXX(W(1,86),W(1,2),GB1NIP,MBL,WBL,W(1,87))                                                          
      CALL HVSXXX(W(1,62),W(1,87),GC,MBL,WBL,W(1,88))     
      CALL IOSXXX(W(1,6),W(1,4),W(1,88),GB1NJM,AMP(53))         
      CALL HIOXXX(W(1,86),W(1,2),GB2NIP,MBR,WBR,W(1,89))                                                          
      CALL HVSXXX(W(1,62),W(1,89),GC,MBR,WBR,W(1,90))     
      CALL IOSXXX(W(1,6),W(1,4),W(1,90),GB2NJM,AMP(54))         
      CALL FSOXXX(W(1,4),W(1,87),GB1NJM,BMASS,ZERO,W(1,91))                                                          
      CALL IOVXXX(W(1,6),W(1,91),W(1,62),GG,AMP(55))             
      CALL FSOXXX(W(1,4),W(1,89),GB2NJM,BMASS,ZERO,W(1,92))                                                          
      CALL IOVXXX(W(1,6),W(1,92),W(1,62),GG,AMP(56))             
      CALL HIOXXX(W(1,86),W(1,68),GB1NIP,MBL,WBL,W(1,93))                                                          
      CALL IOSXXX(W(1,6),W(1,4),W(1,93),GB1NJM,AMP(57))         
      CALL HIOXXX(W(1,86),W(1,68),GB2NIP,MBR,WBR,W(1,94))                                                          
      CALL IOSXXX(W(1,6),W(1,4),W(1,94),GB2NJM,AMP(58))         
      CALL FSOXXX(W(1,60),W(1,7),GQLGOP,MGO,WGO,W(1,95))                                                          
      CALL IOSXXX(W(1,6),W(1,95),W(1,87),GB1GOM,AMP(59))         
      CALL FSOXXX(W(1,60),W(1,10),GQRGOP,MGO,WGO,W(1,96))                                                          
      CALL IOSXXX(W(1,6),W(1,96),W(1,87),GB1GOM,AMP(60))         
      CALL IOSXXX(W(1,6),W(1,95),W(1,89),GB2GOM,AMP(61))         
      CALL IOSXXX(W(1,6),W(1,96),W(1,89),GB2GOM,AMP(62))         
      CALL IOSCXX(W(1,22),W(1,85),W(1,87),GB1GOM,AMP(63))        
      CALL IOSCXX(W(1,26),W(1,85),W(1,87),GB1GOM,AMP(64))        
      CALL IOSCXX(W(1,22),W(1,85),W(1,89),GB2GOM,AMP(65))        
      CALL IOSCXX(W(1,26),W(1,85),W(1,89),GB2GOM,AMP(66))        
      JAMP(   1) = +AMP(   1)+AMP(   2)+AMP(   3)+AMP(   4)+AMP(   5)
     &             +AMP(   6)+AMP(   7)+AMP(   8)+AMP(   9)+AMP(  10)
     &             -AMP(  11)-AMP(  12)-AMP(  13)-AMP(  14)-AMP(  15)
     &             -AMP(  16)-AMP(  17)-AMP(  18)-AMP(  19)-AMP(  20)
     &             -AMP(  21)-AMP(  22)-AMP(  23)-AMP(  24)+AMP(  25)
     &             +AMP(  26)+AMP(  27)+AMP(  28)+AMP(  29)+AMP(  30)
     &             +AMP(  31)+AMP(  32)+AMP(  33)+AMP(  34)-AMP(  35)
     &             -AMP(  36)-AMP(  37)-AMP(  38)-AMP(  39)-AMP(  40)
     &             -AMP(  41)-AMP(  42)-AMP(  43)-AMP(  44)-AMP(  45)
     &             -AMP(  46)-AMP(  47)-AMP(  48)-AMP(  49)-AMP(  50)
     &             -AMP(  51)-AMP(  52)-AMP(  53)-AMP(  54)-AMP(  55)
     &             -AMP(  56)-AMP(  57)-AMP(  58)+AMP(  59)+AMP(  60)
     &             +AMP(  61)+AMP(  62)+AMP(  63)+AMP(  64)+AMP(  65)
     &             +AMP(  66)
      MATRIX_CBX_NINJCBX = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP =(0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          MATRIX_CBX_NINJCBX =MATRIX_CBX_NINJCBX+ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO
      Do I = 1, NGRAPHS
          amp2(i)=amp2(i)+amp(i)*dconjg(amp(i))
      Enddo
      Do I = 1, NCOLOR
          Jamp2(i)=Jamp2(i)+Jamp(i)*dconjg(Jamp(i))
      Enddo
C      CALL GAUGECHECK(JAMP,ZTEMP,EIGEN_VEC,EIGEN_VAL,NCOLOR,NEIGEN) 
      END
       
       
