      SUBROUTINE SMATRIX_BXBX_NINJBXBX(P1,ANS)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : b~ b~ -> n1 n2 b~ b~  
C  
C Crossing   1 is b~ b~ -> n1 n2 b~ b~  
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
      REAL*8 MATRIX_BXBX_NINJBXBX
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
      common/to_Ramps_bxbx_nInJbxbx/  amp2,       jamp2

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
      DATA NGRAPHS /  144/          
      DATA jamp2(0) /   2/          
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
      DATA(IDEN(IHEL),IHEL=  1,  1) /  72/
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
                 T=MATRIX_BXBX_NINJBXBX(P1,NHEL(1,IHEL),JC(1))            
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
       
       
      REAL*8 FUNCTION MATRIX_BXBX_NINJBXBX(P,NHEL,IC)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : b~ b~ -> n1 n2 b~ b~  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER(NGRAPHS= 144,NEIGEN=  2) 
      include "genps.inc"
      include "nexternal.inc"
      include "maxamps.inc"
      INTEGER    NWAVEFUNCS, NCOLOR
      PARAMETER(NWAVEFUNCS= 162, NCOLOR=   2) 
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
      common/to_Ramps_bxbx_nInJbxbx/  amp2,       jamp2
      include "coupl.inc"
C  
C COLOR DATA
C  
      DATA Denom(1)/            3/                                       
      DATA(CF(i,1),i=1,2) /     6,   -2/                            
C               T[ 2, 5]T[ 1, 6]                                           
      DATA Denom(2)/            3/                                       
      DATA(CF(i,2),i=1,2) /    -2,    6/                            
C               T[ 2, 6]T[ 1, 5]                                           
C ----------
C BEGIN CODE
C ----------
      CALL OXXXXX(P(0,1),BMASS,NHEL(1),-1*IC(1),W(1,1))       
      CALL OXXXXX(P(0,2),BMASS,NHEL(2),-1*IC(2),W(1,2))       
      CALL OXXXXX(P(0,3),MNI,NHEL(3),+1*IC(3),W(1,3))         
      CALL IXXXXX(P(0,4),MNJ,NHEL(4),-1*IC(4),W(1,4))         
      CALL IXXXXX(P(0,5),BMASS,NHEL(5),-1*IC(5),W(1,5))       
      CALL IXXXXX(P(0,6),BMASS,NHEL(6),-1*IC(6),W(1,6))       
      CALL HIOXXX(W(1,4),W(1,1),GB1NJP,MBL,WBL,W(1,7))                                                          
      CALL FSOXXX(W(1,3),W(1,7),GB1NIM,BMASS,ZERO,W(1,8))                                                          
      CALL JIOXXX(W(1,5),W(1,8),GG,ZERO,ZERO,W(1,9))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,9),GG,AMP(1))             
      CALL HIOXXX(W(1,4),W(1,1),GB2NJP,MBR,WBR,W(1,10))                                                          
      CALL FSOXXX(W(1,3),W(1,10),GB2NIM,BMASS,ZERO,W(1,11))                                                          
      CALL JIOXXX(W(1,5),W(1,11),GG,ZERO,ZERO,W(1,12))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,12),GG,AMP(2))             
      CALL HIOXXX(W(1,5),W(1,3),GB1NIM,MBL,WBL,W(1,13))                                                          
      CALL JSSXXX(W(1,7),W(1,13),GC,ZERO,ZERO,W(1,14))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,14),GG,AMP(3))             
      CALL HIOXXX(W(1,5),W(1,3),GB2NIM,MBR,WBR,W(1,15))                                                          
      CALL JSSXXX(W(1,10),W(1,15),GC,ZERO,ZERO,W(1,16))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,16),GG,AMP(4))             
      CALL FSOXXX(W(1,2),W(1,13),GB1GOP,MGO,WGO,W(1,17))                                                          
      CALL IOSXXX(W(1,6),W(1,17),W(1,7),GB1GOM,AMP(5))         
      CALL FSOXXX(W(1,2),W(1,15),GB2GOP,MGO,WGO,W(1,18))                                                          
      CALL IOSXXX(W(1,6),W(1,18),W(1,7),GB1GOM,AMP(6))         
      CALL IOSXXX(W(1,6),W(1,17),W(1,10),GB2GOM,AMP(7))         
      CALL IOSXXX(W(1,6),W(1,18),W(1,10),GB2GOM,AMP(8))         
      CALL FSIXXX(W(1,4),W(1,13),GB1NJP,BMASS,ZERO,W(1,19))                                                          
      CALL JIOXXX(W(1,19),W(1,1),GG,ZERO,ZERO,W(1,20))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,20),GG,AMP(9))             
      CALL FSIXXX(W(1,4),W(1,15),GB2NJP,BMASS,ZERO,W(1,21))                                                          
      CALL JIOXXX(W(1,21),W(1,1),GG,ZERO,ZERO,W(1,22))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,22),GG,AMP(10))             
      CALL JIOXXX(W(1,5),W(1,2),GG,ZERO,ZERO,W(1,23))     
      CALL HVSXXX(W(1,23),W(1,7),GC,MBL,WBL,W(1,24))     
      CALL IOSXXX(W(1,6),W(1,3),W(1,24),GB1NIM,AMP(11))         
      CALL HVSXXX(W(1,23),W(1,10),GC,MBR,WBR,W(1,25))     
      CALL IOSXXX(W(1,6),W(1,3),W(1,25),GB2NIM,AMP(12))         
      CALL IOVXXX(W(1,6),W(1,8),W(1,23),GG,AMP(13))             
      CALL IOVXXX(W(1,6),W(1,11),W(1,23),GG,AMP(14))             
      CALL FSIXXX(W(1,5),W(1,7),GB1GOM,MGO,WGO,W(1,26))                                                          
      CALL HIOXXX(W(1,26),W(1,2),GB1GOP,MBL,WBL,W(1,27))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,27),GB1NIM,AMP(15))         
      CALL HIOXXX(W(1,26),W(1,2),GB2GOP,MBR,WBR,W(1,28))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,28),GB2NIM,AMP(16))         
      CALL FSIXXX(W(1,5),W(1,10),GB2GOM,MGO,WGO,W(1,29))                                                          
      CALL HIOXXX(W(1,29),W(1,2),GB1GOP,MBL,WBL,W(1,30))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,30),GB1NIM,AMP(17))         
      CALL HIOXXX(W(1,29),W(1,2),GB2GOP,MBR,WBR,W(1,31))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,31),GB2NIM,AMP(18))         
      CALL FVOXXX(W(1,1),W(1,23),GG,BMASS,ZERO,W(1,32))     
      CALL HIOXXX(W(1,4),W(1,32),GB1NJP,MBL,WBL,W(1,33))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,33),GB1NIM,AMP(19))         
      CALL HIOXXX(W(1,4),W(1,32),GB2NJP,MBR,WBR,W(1,34))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,34),GB2NIM,AMP(20))         
      CALL HIOXXX(W(1,4),W(1,2),GB1NJP,MBL,WBL,W(1,35))                                                          
      CALL FSOXXX(W(1,3),W(1,35),GB1NIM,BMASS,ZERO,W(1,36))                                                          
      CALL JIOXXX(W(1,5),W(1,36),GG,ZERO,ZERO,W(1,37))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,37),GG,AMP(21))             
      CALL HIOXXX(W(1,4),W(1,2),GB2NJP,MBR,WBR,W(1,38))                                                          
      CALL FSOXXX(W(1,3),W(1,38),GB2NIM,BMASS,ZERO,W(1,39))                                                          
      CALL JIOXXX(W(1,5),W(1,39),GG,ZERO,ZERO,W(1,40))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,40),GG,AMP(22))             
      CALL JSSXXX(W(1,35),W(1,13),GC,ZERO,ZERO,W(1,41))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,41),GG,AMP(23))             
      CALL JSSXXX(W(1,38),W(1,15),GC,ZERO,ZERO,W(1,42))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,42),GG,AMP(24))             
      CALL FSOXXX(W(1,1),W(1,13),GB1GOP,MGO,WGO,W(1,43))                                                          
      CALL IOSXXX(W(1,6),W(1,43),W(1,35),GB1GOM,AMP(25))         
      CALL FSOXXX(W(1,1),W(1,15),GB2GOP,MGO,WGO,W(1,44))                                                          
      CALL IOSXXX(W(1,6),W(1,44),W(1,35),GB1GOM,AMP(26))         
      CALL IOSXXX(W(1,6),W(1,43),W(1,38),GB2GOM,AMP(27))         
      CALL IOSXXX(W(1,6),W(1,44),W(1,38),GB2GOM,AMP(28))         
      CALL JIOXXX(W(1,19),W(1,2),GG,ZERO,ZERO,W(1,45))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,45),GG,AMP(29))             
      CALL JIOXXX(W(1,21),W(1,2),GG,ZERO,ZERO,W(1,46))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,46),GG,AMP(30))             
      CALL JIOXXX(W(1,5),W(1,1),GG,ZERO,ZERO,W(1,47))     
      CALL HVSXXX(W(1,47),W(1,35),GC,MBL,WBL,W(1,48))     
      CALL IOSXXX(W(1,6),W(1,3),W(1,48),GB1NIM,AMP(31))         
      CALL HVSXXX(W(1,47),W(1,38),GC,MBR,WBR,W(1,49))     
      CALL IOSXXX(W(1,6),W(1,3),W(1,49),GB2NIM,AMP(32))         
      CALL IOVXXX(W(1,6),W(1,36),W(1,47),GG,AMP(33))             
      CALL IOVXXX(W(1,6),W(1,39),W(1,47),GG,AMP(34))             
      CALL FSIXXX(W(1,5),W(1,35),GB1GOM,MGO,WGO,W(1,50))                                                          
      CALL HIOXXX(W(1,50),W(1,1),GB1GOP,MBL,WBL,W(1,51))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,51),GB1NIM,AMP(35))         
      CALL HIOXXX(W(1,50),W(1,1),GB2GOP,MBR,WBR,W(1,52))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,52),GB2NIM,AMP(36))         
      CALL FSIXXX(W(1,5),W(1,38),GB2GOM,MGO,WGO,W(1,53))                                                          
      CALL HIOXXX(W(1,53),W(1,1),GB1GOP,MBL,WBL,W(1,54))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,54),GB1NIM,AMP(37))         
      CALL HIOXXX(W(1,53),W(1,1),GB2GOP,MBR,WBR,W(1,55))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,55),GB2NIM,AMP(38))         
      CALL FVOXXX(W(1,2),W(1,47),GG,BMASS,ZERO,W(1,56))     
      CALL HIOXXX(W(1,4),W(1,56),GB1NJP,MBL,WBL,W(1,57))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,57),GB1NIM,AMP(39))         
      CALL HIOXXX(W(1,4),W(1,56),GB2NJP,MBR,WBR,W(1,58))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,58),GB2NIM,AMP(40))         
      CALL JIOCXX(W(1,4),W(1,3),GZNIJ,ZMASS,ZWIDTH,W(1,59))                                                          
      CALL FVOXXX(W(1,2),W(1,59),GZD,BMASS,ZERO,W(1,60))    
      CALL JIOXXX(W(1,5),W(1,60),GG,ZERO,ZERO,W(1,61))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,61),GG,AMP(41))             
      CALL HIOCXX(W(1,4),W(1,3),GH1NIJ,MH1,WH1,W(1,62))                                                          
      CALL FSOXXX(W(1,2),W(1,62),GH1BB,BMASS,ZERO,W(1, 63))                                                          
      CALL JIOXXX(W(1,5),W(1,63),GG,ZERO,ZERO,W(1,64))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,64),GG,AMP(42))             
      CALL HIOCXX(W(1,4),W(1,3),GH2NIJ,MH2,WH2,W(1,65))                                                          
      CALL FSOXXX(W(1,2),W(1,65),GH2BB,BMASS,ZERO,W(1, 66))                                                          
      CALL JIOXXX(W(1,5),W(1,66),GG,ZERO,ZERO,W(1,67))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,67),GG,AMP(43))             
      CALL HIOCXX(W(1,4),W(1,3),GH3NIJ,MH3,WH3,W(1,68))                                                          
      CALL FSOXXX(W(1,2),W(1,68),GH3BB,BMASS,ZERO,W(1, 69))                                                          
      CALL JIOXXX(W(1,5),W(1,69),GG,ZERO,ZERO,W(1,70))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,70),GG,AMP(44))             
      CALL IOVXXX(W(1,6),W(1,32),W(1,59),GZD,AMP(45))            
      CALL IOSXXX(W(1,6),W(1,32),W(1,62),GH1BB,AMP(46))          
      CALL IOSXXX(W(1,6),W(1,32),W(1,65),GH2BB,AMP(47))          
      CALL IOSXXX(W(1,6),W(1,32),W(1,68),GH3BB,AMP(48))          
      CALL FVOXXX(W(1,1),W(1,59),GZD,BMASS,ZERO,W(1,71))    
      CALL IOVXXX(W(1,6),W(1,71),W(1,23),GG,AMP(49))             
      CALL FSOXXX(W(1,1),W(1,62),GH1BB,BMASS,ZERO,W(1, 72))                                                          
      CALL IOVXXX(W(1,6),W(1,72),W(1,23),GG,AMP(50))             
      CALL FSOXXX(W(1,1),W(1,65),GH2BB,BMASS,ZERO,W(1, 73))                                                          
      CALL IOVXXX(W(1,6),W(1,73),W(1,23),GG,AMP(51))             
      CALL FSOXXX(W(1,1),W(1,68),GH3BB,BMASS,ZERO,W(1, 74))                                                          
      CALL IOVXXX(W(1,6),W(1,74),W(1,23),GG,AMP(52))             
      CALL FVIXXX(W(1,5),W(1,59),GZD,BMASS,ZERO,W(1,75))    
      CALL JIOXXX(W(1,75),W(1,2),GG,ZERO,ZERO,W(1,76))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,76),GG,AMP(53))             
      CALL FSIXXX(W(1,5),W(1,62),GH1BB,BMASS,ZERO,W(1, 77))                                                          
      CALL JIOXXX(W(1,77),W(1,2),GG,ZERO,ZERO,W(1,78))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,78),GG,AMP(54))             
      CALL FSIXXX(W(1,5),W(1,65),GH2BB,BMASS,ZERO,W(1, 79))                                                          
      CALL JIOXXX(W(1,79),W(1,2),GG,ZERO,ZERO,W(1,80))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,80),GG,AMP(55))             
      CALL FSIXXX(W(1,5),W(1,68),GH3BB,BMASS,ZERO,W(1, 81))                                                          
      CALL JIOXXX(W(1,81),W(1,2),GG,ZERO,ZERO,W(1,82))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,82),GG,AMP(56))             
      CALL IOVXXX(W(1,6),W(1,56),W(1,59),GZD,AMP(57))            
      CALL IOSXXX(W(1,6),W(1,56),W(1,62),GH1BB,AMP(58))          
      CALL IOSXXX(W(1,6),W(1,56),W(1,65),GH2BB,AMP(59))          
      CALL IOSXXX(W(1,6),W(1,56),W(1,68),GH3BB,AMP(60))          
      CALL IOVXXX(W(1,6),W(1,60),W(1,47),GG,AMP(61))             
      CALL IOVXXX(W(1,6),W(1,63),W(1,47),GG,AMP(62))             
      CALL IOVXXX(W(1,6),W(1,66),W(1,47),GG,AMP(63))             
      CALL IOVXXX(W(1,6),W(1,69),W(1,47),GG,AMP(64))             
      CALL JIOXXX(W(1,5),W(1,71),GG,ZERO,ZERO,W(1,83))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,83),GG,AMP(65))             
      CALL JIOXXX(W(1,5),W(1,72),GG,ZERO,ZERO,W(1,84))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,84),GG,AMP(66))             
      CALL JIOXXX(W(1,5),W(1,73),GG,ZERO,ZERO,W(1,85))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,85),GG,AMP(67))             
      CALL JIOXXX(W(1,5),W(1,74),GG,ZERO,ZERO,W(1,86))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,86),GG,AMP(68))             
      CALL JIOXXX(W(1,75),W(1,1),GG,ZERO,ZERO,W(1,87))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,87),GG,AMP(69))             
      CALL JIOXXX(W(1,77),W(1,1),GG,ZERO,ZERO,W(1,88))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,88),GG,AMP(70))             
      CALL JIOXXX(W(1,79),W(1,1),GG,ZERO,ZERO,W(1,89))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,89),GG,AMP(71))             
      CALL JIOXXX(W(1,81),W(1,1),GG,ZERO,ZERO,W(1,90))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,90),GG,AMP(72))             
      CALL IXXXXX(P(0,3),MNI,NHEL(3),-1*IC(3),W(1,91))         
      CALL OXXXXX(P(0,4),MNJ,NHEL(4),+1*IC(4),W(1,92))         
      CALL HIOXXX(W(1,91),W(1,2),GB1NIP,MBL,WBL,W(1,93))                                                          
      CALL FSOXXX(W(1,92),W(1,93),GB1NJM,BMASS,ZERO,W(1,94))                                                          
      CALL JIOXXX(W(1,5),W(1,94),GG,ZERO,ZERO,W(1,95))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,95),GG,AMP(73))             
      CALL HIOXXX(W(1,91),W(1,2),GB2NIP,MBR,WBR,W(1,96))                                                          
      CALL FSOXXX(W(1,92),W(1,96),GB2NJM,BMASS,ZERO,W(1,97))                                                          
      CALL JIOXXX(W(1,5),W(1,97),GG,ZERO,ZERO,W(1,98))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,98),GG,AMP(74))             
      CALL HIOXXX(W(1,5),W(1,92),GB1NJM,MBL,WBL,W(1,99))                                                          
      CALL JSSXXX(W(1,93),W(1,99),GC,ZERO,ZERO,W(1,100))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,100),GG,AMP(75))             
      CALL HIOXXX(W(1,5),W(1,92),GB2NJM,MBR,WBR,W(1,101))                                                          
      CALL JSSXXX(W(1,96),W(1,101),GC,ZERO,ZERO,W(1,102))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,102),GG,AMP(76))             
      CALL FSOXXX(W(1,1),W(1,99),GB1GOP,MGO,WGO,W(1,103))                                                          
      CALL IOSXXX(W(1,6),W(1,103),W(1,93),GB1GOM,AMP(77))         
      CALL FSOXXX(W(1,1),W(1,101),GB2GOP,MGO,WGO,W(1,104))                                                          
      CALL IOSXXX(W(1,6),W(1,104),W(1,93),GB1GOM,AMP(78))         
      CALL IOSXXX(W(1,6),W(1,103),W(1,96),GB2GOM,AMP(79))         
      CALL IOSXXX(W(1,6),W(1,104),W(1,96),GB2GOM,AMP(80))         
      CALL FSIXXX(W(1,91),W(1,99),GB1NIP,BMASS,ZERO,W(1,105))                                                          
      CALL JIOXXX(W(1,105),W(1,2),GG,ZERO,ZERO,W(1,106))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,106),GG,AMP(81))             
      CALL FSIXXX(W(1,91),W(1,101),GB2NIP,BMASS,ZERO,W(1,107))                                                          
      CALL JIOXXX(W(1,107),W(1,2),GG,ZERO,ZERO,W(1,108))     
      CALL IOVXXX(W(1,6),W(1,1),W(1,108),GG,AMP(82))             
      CALL HVSXXX(W(1,47),W(1,93),GC,MBL,WBL,W(1,109))     
      CALL IOSXXX(W(1,6),W(1,92),W(1,109),GB1NJM,AMP(83))         
      CALL HVSXXX(W(1,47),W(1,96),GC,MBR,WBR,W(1,110))     
      CALL IOSXXX(W(1,6),W(1,92),W(1,110),GB2NJM,AMP(84))         
      CALL IOVXXX(W(1,6),W(1,94),W(1,47),GG,AMP(85))             
      CALL IOVXXX(W(1,6),W(1,97),W(1,47),GG,AMP(86))             
      CALL FSIXXX(W(1,5),W(1,93),GB1GOM,MGO,WGO,W(1,111))                                                          
      CALL HIOXXX(W(1,111),W(1,1),GB1GOP,MBL,WBL,W(1,112))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,112),GB1NJM,AMP(87))         
      CALL HIOXXX(W(1,111),W(1,1),GB2GOP,MBR,WBR,W(1,113))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,113),GB2NJM,AMP(88))         
      CALL FSIXXX(W(1,5),W(1,96),GB2GOM,MGO,WGO,W(1,114))                                                          
      CALL HIOXXX(W(1,114),W(1,1),GB1GOP,MBL,WBL,W(1,115))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,115),GB1NJM,AMP(89))         
      CALL HIOXXX(W(1,114),W(1,1),GB2GOP,MBR,WBR,W(1,116))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,116),GB2NJM,AMP(90))         
      CALL HIOXXX(W(1,91),W(1,56),GB1NIP,MBL,WBL,W(1,117))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,117),GB1NJM,AMP(91))         
      CALL HIOXXX(W(1,91),W(1,56),GB2NIP,MBR,WBR,W(1,118))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,118),GB2NJM,AMP(92))         
      CALL HIOXXX(W(1,91),W(1,1),GB1NIP,MBL,WBL,W(1,119))                                                          
      CALL FSOXXX(W(1,92),W(1,119),GB1NJM,BMASS,ZERO,W(1,120))                                                          
      CALL JIOXXX(W(1,5),W(1,120),GG,ZERO,ZERO,W(1,121))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,121),GG,AMP(93))             
      CALL HIOXXX(W(1,91),W(1,1),GB2NIP,MBR,WBR,W(1,122))                                                          
      CALL FSOXXX(W(1,92),W(1,122),GB2NJM,BMASS,ZERO,W(1,123))                                                          
      CALL JIOXXX(W(1,5),W(1,123),GG,ZERO,ZERO,W(1,124))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,124),GG,AMP(94))             
      CALL JSSXXX(W(1,119),W(1,99),GC,ZERO,ZERO,W(1,125))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,125),GG,AMP(95))             
      CALL JSSXXX(W(1,122),W(1,101),GC,ZERO,ZERO,W(1,126))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,126),GG,AMP(96))             
      CALL FSOXXX(W(1,2),W(1,99),GB1GOP,MGO,WGO,W(1,127))                                                          
      CALL IOSXXX(W(1,6),W(1,127),W(1,119),GB1GOM,AMP(97))         
      CALL FSOXXX(W(1,2),W(1,101),GB2GOP,MGO,WGO,W(1,128))                                                          
      CALL IOSXXX(W(1,6),W(1,128),W(1,119),GB1GOM,AMP(98))         
      CALL IOSXXX(W(1,6),W(1,127),W(1,122),GB2GOM,AMP(99))         
      CALL IOSXXX(W(1,6),W(1,128),W(1,122),GB2GOM,AMP(100))         
      CALL JIOXXX(W(1,105),W(1,1),GG,ZERO,ZERO,W(1,129))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,129),GG,AMP(101))             
      CALL JIOXXX(W(1,107),W(1,1),GG,ZERO,ZERO,W(1,130))     
      CALL IOVXXX(W(1,6),W(1,2),W(1,130),GG,AMP(102))             
      CALL HVSXXX(W(1,23),W(1,119),GC,MBL,WBL,W(1,131))     
      CALL IOSXXX(W(1,6),W(1,92),W(1,131),GB1NJM,AMP(103))         
      CALL HVSXXX(W(1,23),W(1,122),GC,MBR,WBR,W(1,132))     
      CALL IOSXXX(W(1,6),W(1,92),W(1,132),GB2NJM,AMP(104))         
      CALL IOVXXX(W(1,6),W(1,120),W(1,23),GG,AMP(105))             
      CALL IOVXXX(W(1,6),W(1,123),W(1,23),GG,AMP(106))             
      CALL FSIXXX(W(1,5),W(1,119),GB1GOM,MGO,WGO,W(1,133))                                                          
      CALL HIOXXX(W(1,133),W(1,2),GB1GOP,MBL,WBL,W(1,134))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,134),GB1NJM,AMP(107))         
      CALL HIOXXX(W(1,133),W(1,2),GB2GOP,MBR,WBR,W(1,135))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,135),GB2NJM,AMP(108))         
      CALL FSIXXX(W(1,5),W(1,122),GB2GOM,MGO,WGO,W(1,136))                                                          
      CALL HIOXXX(W(1,136),W(1,2),GB1GOP,MBL,WBL,W(1,137))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,137),GB1NJM,AMP(109))         
      CALL HIOXXX(W(1,136),W(1,2),GB2GOP,MBR,WBR,W(1,138))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,138),GB2NJM,AMP(110))         
      CALL HIOXXX(W(1,91),W(1,32),GB1NIP,MBL,WBL,W(1,139))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,139),GB1NJM,AMP(111))         
      CALL HIOXXX(W(1,91),W(1,32),GB2NIP,MBR,WBR,W(1,140))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,140),GB2NJM,AMP(112))         
      CALL OXXXXX(P(0,6),BMASS,NHEL(6),+1*IC(6),W(1,141))       
      CALL IOSCXX(W(1,26),W(1,141),W(1,93),GB1GOM,AMP(113))        
      CALL IOSCXX(W(1,29),W(1,141),W(1,93),GB1GOM,AMP(114))        
      CALL IOSCXX(W(1,26),W(1,141),W(1,96),GB2GOM,AMP(115))        
      CALL IOSCXX(W(1,29),W(1,141),W(1,96),GB2GOM,AMP(116))        
      CALL IOSCXX(W(1,111),W(1,141),W(1,7),GB1GOM,AMP(117))        
      CALL IOSCXX(W(1,111),W(1,141),W(1,10),GB2GOM,AMP(118))        
      CALL IOSCXX(W(1,114),W(1,141),W(1,7),GB1GOM,AMP(119))        
      CALL IOSCXX(W(1,114),W(1,141),W(1,10),GB2GOM,AMP(120))        
      CALL IOSCXX(W(1,50),W(1,141),W(1,119),GB1GOM,AMP(121))        
      CALL IOSCXX(W(1,53),W(1,141),W(1,119),GB1GOM,AMP(122))        
      CALL IOSCXX(W(1,50),W(1,141),W(1,122),GB2GOM,AMP(123))        
      CALL IOSCXX(W(1,53),W(1,141),W(1,122),GB2GOM,AMP(124))        
      CALL IOSCXX(W(1,133),W(1,141),W(1,35),GB1GOM,AMP(125))        
      CALL IOSCXX(W(1,133),W(1,141),W(1,38),GB2GOM,AMP(126))        
      CALL IOSCXX(W(1,136),W(1,141),W(1,35),GB1GOM,AMP(127))        
      CALL IOSCXX(W(1,136),W(1,141),W(1,38),GB2GOM,AMP(128))        
      CALL IXXXXX(P(0,2),BMASS,NHEL(2),+1*IC(2),W(1,142))       
      CALL FSICXX(W(1,142),W(1,13),GB1GOP,MGO,WGO,W(1,143))                                                          
      CALL HIOXXX(W(1,143),W(1,1),GB1GOP,MBL,WBL,W(1,144))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,144),GB1NJM,AMP(129))         
      CALL HIOXXX(W(1,143),W(1,1),GB2GOP,MBR,WBR,W(1,145))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,145),GB2NJM,AMP(130))         
      CALL FSICXX(W(1,142),W(1,15),GB2GOP,MGO,WGO,W(1,146))                                                          
      CALL HIOXXX(W(1,146),W(1,1),GB1GOP,MBL,WBL,W(1,147))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,147),GB1NJM,AMP(131))         
      CALL HIOXXX(W(1,146),W(1,1),GB2GOP,MBR,WBR,W(1,148))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,148),GB2NJM,AMP(132))         
      CALL HIOCXX(W(1,142),W(1,43),GB1GOP,MBL,WBL,W(1,149))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,149),GB1NJM,AMP(133))         
      CALL HIOCXX(W(1,142),W(1,43),GB2GOP,MBR,WBR,W(1,150))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,150),GB2NJM,AMP(134))         
      CALL HIOCXX(W(1,142),W(1,44),GB1GOP,MBL,WBL,W(1,151))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,151),GB1NJM,AMP(135))         
      CALL HIOCXX(W(1,142),W(1,44),GB2GOP,MBR,WBR,W(1,152))                                                          
      CALL IOSXXX(W(1,6),W(1,92),W(1,152),GB2NJM,AMP(136))         
      CALL HIOCXX(W(1,142),W(1,103),GB1GOP,MBL,WBL,W(1,153))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,153),GB1NIM,AMP(137))         
      CALL HIOCXX(W(1,142),W(1,103),GB2GOP,MBR,WBR,W(1,154))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,154),GB2NIM,AMP(138))         
      CALL HIOCXX(W(1,142),W(1,104),GB1GOP,MBL,WBL,W(1,155))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,155),GB1NIM,AMP(139))         
      CALL HIOCXX(W(1,142),W(1,104),GB2GOP,MBR,WBR,W(1,156))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,156),GB2NIM,AMP(140))         
      CALL FSICXX(W(1,142),W(1,99),GB1GOP,MGO,WGO,W(1,157))                                                          
      CALL HIOXXX(W(1,157),W(1,1),GB1GOP,MBL,WBL,W(1,158))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,158),GB1NIM,AMP(141))         
      CALL HIOXXX(W(1,157),W(1,1),GB2GOP,MBR,WBR,W(1,159))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,159),GB2NIM,AMP(142))         
      CALL FSICXX(W(1,142),W(1,101),GB2GOP,MGO,WGO,W(1,160))                                                          
      CALL HIOXXX(W(1,160),W(1,1),GB1GOP,MBL,WBL,W(1,161))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,161),GB1NIM,AMP(143))         
      CALL HIOXXX(W(1,160),W(1,1),GB2GOP,MBR,WBR,W(1,162))                                                          
      CALL IOSXXX(W(1,6),W(1,3),W(1,162),GB2NIM,AMP(144))         
      JAMP(   1) = -AMP(   1)-AMP(   2)-AMP(   3)-AMP(   4)-AMP(   9)
     &             -AMP(  10)+AMP(  15)+AMP(  16)+AMP(  17)+AMP(  18)
     &             +AMP(  25)+AMP(  26)+AMP(  27)+AMP(  28)-AMP(  31)
     &             -AMP(  32)-AMP(  33)-AMP(  34)-AMP(  39)-AMP(  40)
     &             +AMP(  57)+AMP(  58)+AMP(  59)+AMP(  60)+AMP(  61)
     &             +AMP(  62)+AMP(  63)+AMP(  64)+AMP(  65)+AMP(  66)
     &             +AMP(  67)+AMP(  68)+AMP(  69)+AMP(  70)+AMP(  71)
     &             +AMP(  72)-AMP(  77)-AMP(  78)-AMP(  79)-AMP(  80)
     &             +AMP(  83)+AMP(  84)+AMP(  85)+AMP(  86)+AMP(  91)
     &             +AMP(  92)+AMP(  93)+AMP(  94)+AMP(  95)+AMP(  96)
     &             +AMP( 101)+AMP( 102)-AMP( 107)-AMP( 108)-AMP( 109)
     &             -AMP( 110)+AMP( 113)+AMP( 114)+AMP( 115)+AMP( 116)
     &             -AMP( 125)-AMP( 126)-AMP( 127)-AMP( 128)+AMP( 133)
     &             +AMP( 134)+AMP( 135)+AMP( 136)-AMP( 137)-AMP( 138)
     &             -AMP( 139)-AMP( 140)
      JAMP(   2) = -AMP(   5)-AMP(   6)-AMP(   7)-AMP(   8)+AMP(  11)
     &             +AMP(  12)+AMP(  13)+AMP(  14)+AMP(  19)+AMP(  20)
     &             +AMP(  21)+AMP(  22)+AMP(  23)+AMP(  24)+AMP(  29)
     &             +AMP(  30)-AMP(  35)-AMP(  36)-AMP(  37)-AMP(  38)
     &             -AMP(  41)-AMP(  42)-AMP(  43)-AMP(  44)-AMP(  45)
     &             -AMP(  46)-AMP(  47)-AMP(  48)-AMP(  49)-AMP(  50)
     &             -AMP(  51)-AMP(  52)-AMP(  53)-AMP(  54)-AMP(  55)
     &             -AMP(  56)-AMP(  73)-AMP(  74)-AMP(  75)-AMP(  76)
     &             -AMP(  81)-AMP(  82)+AMP(  87)+AMP(  88)+AMP(  89)
     &             +AMP(  90)+AMP(  97)+AMP(  98)+AMP(  99)+AMP( 100)
     &             -AMP( 103)-AMP( 104)-AMP( 105)-AMP( 106)-AMP( 111)
     &             -AMP( 112)+AMP( 117)+AMP( 118)+AMP( 119)+AMP( 120)
     &             -AMP( 121)-AMP( 122)-AMP( 123)-AMP( 124)+AMP( 129)
     &             +AMP( 130)+AMP( 131)+AMP( 132)-AMP( 141)-AMP( 142)
     &             -AMP( 143)-AMP( 144)
      MATRIX_BXBX_NINJBXBX = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP =(0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          MATRIX_BXBX_NINJBXBX =MATRIX_BXBX_NINJBXBX+ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO
      Do I = 1, NGRAPHS
          amp2(i)=amp2(i)+amp(i)*dconjg(amp(i))
      Enddo
      Do I = 1, NCOLOR
          Jamp2(i)=Jamp2(i)+Jamp(i)*dconjg(Jamp(i))
      Enddo
C      CALL GAUGECHECK(JAMP,ZTEMP,EIGEN_VEC,EIGEN_VAL,NCOLOR,NEIGEN) 
      END
       
       
