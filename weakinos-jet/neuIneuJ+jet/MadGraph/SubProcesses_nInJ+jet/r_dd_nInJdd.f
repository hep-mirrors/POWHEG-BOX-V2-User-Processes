      SUBROUTINE SMATRIX_DD_NINJDD(P1,ANS)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : d d -> n1 n2 d d  
C  
C Crossing   1 is d d -> n1 n2 d d  
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
      REAL*8 MATRIX_DD_NINJDD
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
      common/to_Ramps_dd_nInJdd/  amp2,       jamp2

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
      DATA NGRAPHS /  120/          
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
                 T=MATRIX_DD_NINJDD(P1,NHEL(1,IHEL),JC(1))            
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
       
       
      REAL*8 FUNCTION MATRIX_DD_NINJDD(P,NHEL,IC)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : d d -> n1 n2 d d  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER(NGRAPHS= 120,NEIGEN=  2) 
      include "genps.inc"
      include "nexternal.inc"
      include "maxamps.inc"
      INTEGER    NWAVEFUNCS, NCOLOR
      PARAMETER(NWAVEFUNCS= 138, NCOLOR=   2) 
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
      common/to_Ramps_dd_nInJdd/  amp2,       jamp2
      include "coupl.inc"
C  
C COLOR DATA
C  
      DATA Denom(1)/            3/                                       
      DATA(CF(i,1),i=1,2) /     6,   -2/                            
C               T[ 6, 1]T[ 5, 2]                                           
      DATA Denom(2)/            3/                                       
      DATA(CF(i,2),i=1,2) /    -2,    6/                            
C               T[ 6, 2]T[ 5, 1]                                           
C ----------
C BEGIN CODE
C ----------
      CALL IXXXXX(P(0,1),ZERO,NHEL(1),+1*IC(1),W(1,1))        
      CALL IXXXXX(P(0,2),ZERO,NHEL(2),+1*IC(2),W(1,2))        
      CALL OXXXXX(P(0,3),MNI,NHEL(3),+1*IC(3),W(1,3))         
      CALL OXXXXX(P(0,4),MNJ,NHEL(4),+1*IC(4),W(1,4))         
      CALL OXXXXX(P(0,5),ZERO,NHEL(5),+1*IC(5),W(1,5))        
      CALL IXXXXX(P(0,6),ZERO,NHEL(6),-1*IC(6),W(1,6))        
      CALL HIOXXX(W(1,2),W(1,3),GDLNIM,MDL,WDL,W(1,7))                                                          
      CALL JIOXXX(W(1,1),W(1,5),GG,ZERO,ZERO,W(1,8))     
      CALL HVSXXX(W(1,8),W(1,7),-GC,MDL,WDL,W(1,9))    
      CALL IOSCXX(W(1,6),W(1,4),W(1,9),GDLNJP,AMP(1))        
      CALL HIOXXX(W(1,2),W(1,3),GDRNIM,MDR,WDR,W(1,10))                                                          
      CALL HVSXXX(W(1,8),W(1,10),-GC,MDR,WDR,W(1,11))    
      CALL IOSCXX(W(1,6),W(1,4),W(1,11),GDRNJP,AMP(2))        
      CALL FSOCXX(W(1,4),W(1,7),GDLNJP,ZERO,ZERO,W(1,12))                                                          
      CALL IOVCXX(W(1,6),W(1,12),W(1,8),GG,AMP(3))            
      CALL FSOCXX(W(1,4),W(1,10),GDRNJP,ZERO,ZERO,W(1,13))                                                          
      CALL IOVCXX(W(1,6),W(1,13),W(1,8),GG,AMP(4))            
      CALL FSOXXX(W(1,5),W(1,7),GQLGOP,MGO,WGO,W(1,14))                                                          
      CALL HIOXXX(W(1,1),W(1,14),GQLGOM,MDL,WDL,W(1,15))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,15),GDLNJP,AMP(5))        
      CALL HIOXXX(W(1,1),W(1,14),GQRGOM,MDR,WDR,W(1,16))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,16),GDRNJP,AMP(6))        
      CALL FSOXXX(W(1,5),W(1,10),GQRGOP,MGO,WGO,W(1,17))                                                          
      CALL HIOXXX(W(1,1),W(1,17),GQLGOM,MDL,WDL,W(1,18))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,18),GDLNJP,AMP(7))        
      CALL HIOXXX(W(1,1),W(1,17),GQRGOM,MDR,WDR,W(1,19))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,19),GDRNJP,AMP(8))        
      CALL FVIXXX(W(1,2),W(1,8),GG,ZERO,ZERO,W(1,20))     
      CALL HIOXXX(W(1,20),W(1,3),GDLNIM,MDL,WDL,W(1,21))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,21),GDLNJP,AMP(9))        
      CALL HIOXXX(W(1,20),W(1,3),GDRNIM,MDR,WDR,W(1,22))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,22),GDRNJP,AMP(10))        
      CALL HIOXXX(W(1,1),W(1,4),GDLNJM,MDL,WDL,W(1,23))                                                          
      CALL JIOXXX(W(1,2),W(1,5),GG,ZERO,ZERO,W(1,24))     
      CALL HVSXXX(W(1,24),W(1,23),-GC,MDL,WDL,W(1,25))    
      CALL IOSCXX(W(1,6),W(1,3),W(1,25),GDLNIP,AMP(11))        
      CALL HIOXXX(W(1,1),W(1,4),GDRNJM,MDR,WDR,W(1,26))                                                          
      CALL HVSXXX(W(1,24),W(1,26),-GC,MDR,WDR,W(1,27))    
      CALL IOSCXX(W(1,6),W(1,3),W(1,27),GDRNIP,AMP(12))        
      CALL FSOCXX(W(1,3),W(1,23),GDLNIP,ZERO,ZERO,W(1,28))                                                          
      CALL IOVCXX(W(1,6),W(1,28),W(1,24),GG,AMP(13))            
      CALL FSOCXX(W(1,3),W(1,26),GDRNIP,ZERO,ZERO,W(1,29))                                                          
      CALL IOVCXX(W(1,6),W(1,29),W(1,24),GG,AMP(14))            
      CALL FSOXXX(W(1,5),W(1,23),GQLGOP,MGO,WGO,W(1,30))                                                          
      CALL HIOXXX(W(1,2),W(1,30),GQLGOM,MDL,WDL,W(1,31))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,31),GDLNIP,AMP(15))        
      CALL HIOXXX(W(1,2),W(1,30),GQRGOM,MDR,WDR,W(1,32))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,32),GDRNIP,AMP(16))        
      CALL FSOXXX(W(1,5),W(1,26),GQRGOP,MGO,WGO,W(1,33))                                                          
      CALL HIOXXX(W(1,2),W(1,33),GQLGOM,MDL,WDL,W(1,34))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,34),GDLNIP,AMP(17))        
      CALL HIOXXX(W(1,2),W(1,33),GQRGOM,MDR,WDR,W(1,35))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,35),GDRNIP,AMP(18))        
      CALL FVIXXX(W(1,1),W(1,24),GG,ZERO,ZERO,W(1,36))     
      CALL HIOXXX(W(1,36),W(1,4),GDLNJM,MDL,WDL,W(1,37))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,37),GDLNIP,AMP(19))        
      CALL HIOXXX(W(1,36),W(1,4),GDRNJM,MDR,WDR,W(1,38))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,38),GDRNIP,AMP(20))        
      CALL IOSCXX(W(1,6),W(1,30),W(1,7),GQLGOP,AMP(21))        
      CALL IOSCXX(W(1,6),W(1,33),W(1,7),GQLGOP,AMP(22))        
      CALL IOSCXX(W(1,6),W(1,30),W(1,10),GQRGOP,AMP(23))        
      CALL IOSCXX(W(1,6),W(1,33),W(1,10),GQRGOP,AMP(24))        
      CALL IOSCXX(W(1,6),W(1,14),W(1,23),GQLGOP,AMP(25))        
      CALL IOSCXX(W(1,6),W(1,14),W(1,26),GQRGOP,AMP(26))        
      CALL IOSCXX(W(1,6),W(1,17),W(1,23),GQLGOP,AMP(27))        
      CALL IOSCXX(W(1,6),W(1,17),W(1,26),GQRGOP,AMP(28))        
      CALL HIOXXX(W(1,2),W(1,4),GDLNJM,MDL,WDL,W(1,39))                                                          
      CALL HVSXXX(W(1,8),W(1,39),-GC,MDL,WDL,W(1,40))    
      CALL IOSCXX(W(1,6),W(1,3),W(1,40),GDLNIP,AMP(29))        
      CALL HIOXXX(W(1,2),W(1,4),GDRNJM,MDR,WDR,W(1,41))                                                          
      CALL HVSXXX(W(1,8),W(1,41),-GC,MDR,WDR,W(1,42))    
      CALL IOSCXX(W(1,6),W(1,3),W(1,42),GDRNIP,AMP(30))        
      CALL FSOCXX(W(1,3),W(1,39),GDLNIP,ZERO,ZERO,W(1,43))                                                          
      CALL IOVCXX(W(1,6),W(1,43),W(1,8),GG,AMP(31))            
      CALL FSOCXX(W(1,3),W(1,41),GDRNIP,ZERO,ZERO,W(1,44))                                                          
      CALL IOVCXX(W(1,6),W(1,44),W(1,8),GG,AMP(32))            
      CALL FSOXXX(W(1,5),W(1,39),GQLGOP,MGO,WGO,W(1,45))                                                          
      CALL HIOXXX(W(1,1),W(1,45),GQLGOM,MDL,WDL,W(1,46))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,46),GDLNIP,AMP(33))        
      CALL HIOXXX(W(1,1),W(1,45),GQRGOM,MDR,WDR,W(1,47))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,47),GDRNIP,AMP(34))        
      CALL FSOXXX(W(1,5),W(1,41),GQRGOP,MGO,WGO,W(1,48))                                                          
      CALL HIOXXX(W(1,1),W(1,48),GQLGOM,MDL,WDL,W(1,49))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,49),GDLNIP,AMP(35))        
      CALL HIOXXX(W(1,1),W(1,48),GQRGOM,MDR,WDR,W(1,50))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,50),GDRNIP,AMP(36))        
      CALL HIOXXX(W(1,20),W(1,4),GDLNJM,MDL,WDL,W(1,51))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,51),GDLNIP,AMP(37))        
      CALL HIOXXX(W(1,20),W(1,4),GDRNJM,MDR,WDR,W(1,52))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,52),GDRNIP,AMP(38))        
      CALL HIOXXX(W(1,1),W(1,3),GDLNIM,MDL,WDL,W(1,53))                                                          
      CALL HVSXXX(W(1,24),W(1,53),-GC,MDL,WDL,W(1,54))    
      CALL IOSCXX(W(1,6),W(1,4),W(1,54),GDLNJP,AMP(39))        
      CALL HIOXXX(W(1,1),W(1,3),GDRNIM,MDR,WDR,W(1,55))                                                          
      CALL HVSXXX(W(1,24),W(1,55),-GC,MDR,WDR,W(1,56))    
      CALL IOSCXX(W(1,6),W(1,4),W(1,56),GDRNJP,AMP(40))        
      CALL FSOCXX(W(1,4),W(1,53),GDLNJP,ZERO,ZERO,W(1,57))                                                          
      CALL IOVCXX(W(1,6),W(1,57),W(1,24),GG,AMP(41))            
      CALL FSOCXX(W(1,4),W(1,55),GDRNJP,ZERO,ZERO,W(1,58))                                                          
      CALL IOVCXX(W(1,6),W(1,58),W(1,24),GG,AMP(42))            
      CALL FSOXXX(W(1,5),W(1,53),GQLGOP,MGO,WGO,W(1,59))                                                          
      CALL HIOXXX(W(1,2),W(1,59),GQLGOM,MDL,WDL,W(1,60))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,60),GDLNJP,AMP(43))        
      CALL HIOXXX(W(1,2),W(1,59),GQRGOM,MDR,WDR,W(1,61))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,61),GDRNJP,AMP(44))        
      CALL FSOXXX(W(1,5),W(1,55),GQRGOP,MGO,WGO,W(1,62))                                                          
      CALL HIOXXX(W(1,2),W(1,62),GQLGOM,MDL,WDL,W(1,63))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,63),GDLNJP,AMP(45))        
      CALL HIOXXX(W(1,2),W(1,62),GQRGOM,MDR,WDR,W(1,64))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,64),GDRNJP,AMP(46))        
      CALL HIOXXX(W(1,36),W(1,3),GDLNIM,MDL,WDL,W(1,65))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,65),GDLNJP,AMP(47))        
      CALL HIOXXX(W(1,36),W(1,3),GDRNIM,MDR,WDR,W(1,66))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,66),GDRNJP,AMP(48))        
      CALL IOSCXX(W(1,6),W(1,45),W(1,53),GQLGOP,AMP(49))        
      CALL IOSCXX(W(1,6),W(1,48),W(1,53),GQLGOP,AMP(50))        
      CALL IOSCXX(W(1,6),W(1,45),W(1,55),GQRGOP,AMP(51))        
      CALL IOSCXX(W(1,6),W(1,48),W(1,55),GQRGOP,AMP(52))        
      CALL IOSCXX(W(1,6),W(1,59),W(1,39),GQLGOP,AMP(53))        
      CALL IOSCXX(W(1,6),W(1,59),W(1,41),GQRGOP,AMP(54))        
      CALL IOSCXX(W(1,6),W(1,62),W(1,39),GQLGOP,AMP(55))        
      CALL IOSCXX(W(1,6),W(1,62),W(1,41),GQRGOP,AMP(56))        
      CALL IXXXXX(P(0,5),ZERO,NHEL(5),-1*IC(5),W(1,67))        
      CALL OXXXXX(P(0,6),ZERO,NHEL(6),+1*IC(6),W(1,68))        
      CALL JIOCXX(W(1,67),W(1,12),GG,ZERO,ZERO,W(1,69))    
      CALL IOVXXX(W(1,1),W(1,68),W(1,69),GG,AMP(57))             
      CALL JIOCXX(W(1,67),W(1,13),GG,ZERO,ZERO,W(1,70))    
      CALL IOVXXX(W(1,1),W(1,68),W(1,70),GG,AMP(58))             
      CALL HIOCXX(W(1,67),W(1,4),GDLNJP,MDL,WDL,W(1,71))                                                          
      CALL JSSXXX(W(1,71),W(1,7),GC,ZERO,ZERO,W(1,72))     
      CALL IOVXXX(W(1,1),W(1,68),W(1,72),GG,AMP(59))             
      CALL HIOCXX(W(1,67),W(1,4),GDRNJP,MDR,WDR,W(1,73))                                                          
      CALL JSSXXX(W(1,73),W(1,10),GC,ZERO,ZERO,W(1,74))     
      CALL IOVXXX(W(1,1),W(1,68),W(1,74),GG,AMP(60))             
      CALL FSIXXX(W(1,1),W(1,71),GQLGOM,MGO,WGO,W(1,75))                                                          
      CALL IOSXXX(W(1,75),W(1,68),W(1,7),GQLGOP,AMP(61))         
      CALL FSIXXX(W(1,1),W(1,73),GQRGOM,MGO,WGO,W(1,76))                                                          
      CALL IOSXXX(W(1,76),W(1,68),W(1,7),GQLGOP,AMP(62))         
      CALL IOSXXX(W(1,75),W(1,68),W(1,10),GQRGOP,AMP(63))         
      CALL IOSXXX(W(1,76),W(1,68),W(1,10),GQRGOP,AMP(64))         
      CALL FSOXXX(W(1,3),W(1,71),GDLNIM,ZERO,ZERO,W(1,77))                                                          
      CALL JIOXXX(W(1,2),W(1,77),GG,ZERO,ZERO,W(1,78))     
      CALL IOVXXX(W(1,1),W(1,68),W(1,78),GG,AMP(65))             
      CALL FSOXXX(W(1,3),W(1,73),GDRNIM,ZERO,ZERO,W(1,79))                                                          
      CALL JIOXXX(W(1,2),W(1,79),GG,ZERO,ZERO,W(1,80))     
      CALL IOVXXX(W(1,1),W(1,68),W(1,80),GG,AMP(66))             
      CALL JIOCXX(W(1,67),W(1,28),GG,ZERO,ZERO,W(1,81))    
      CALL IOVXXX(W(1,2),W(1,68),W(1,81),GG,AMP(67))             
      CALL JIOCXX(W(1,67),W(1,29),GG,ZERO,ZERO,W(1,82))    
      CALL IOVXXX(W(1,2),W(1,68),W(1,82),GG,AMP(68))             
      CALL HIOCXX(W(1,67),W(1,3),GDLNIP,MDL,WDL,W(1,83))                                                          
      CALL JSSXXX(W(1,83),W(1,23),GC,ZERO,ZERO,W(1,84))     
      CALL IOVXXX(W(1,2),W(1,68),W(1,84),GG,AMP(69))             
      CALL HIOCXX(W(1,67),W(1,3),GDRNIP,MDR,WDR,W(1,85))                                                          
      CALL JSSXXX(W(1,85),W(1,26),GC,ZERO,ZERO,W(1,86))     
      CALL IOVXXX(W(1,2),W(1,68),W(1,86),GG,AMP(70))             
      CALL FSIXXX(W(1,2),W(1,83),GQLGOM,MGO,WGO,W(1,87))                                                          
      CALL IOSXXX(W(1,87),W(1,68),W(1,23),GQLGOP,AMP(71))         
      CALL FSIXXX(W(1,2),W(1,85),GQRGOM,MGO,WGO,W(1,88))                                                          
      CALL IOSXXX(W(1,88),W(1,68),W(1,23),GQLGOP,AMP(72))         
      CALL IOSXXX(W(1,87),W(1,68),W(1,26),GQRGOP,AMP(73))         
      CALL IOSXXX(W(1,88),W(1,68),W(1,26),GQRGOP,AMP(74))         
      CALL FSOXXX(W(1,4),W(1,83),GDLNJM,ZERO,ZERO,W(1,89))                                                          
      CALL JIOXXX(W(1,1),W(1,89),GG,ZERO,ZERO,W(1,90))     
      CALL IOVXXX(W(1,2),W(1,68),W(1,90),GG,AMP(75))             
      CALL FSOXXX(W(1,4),W(1,85),GDRNJM,ZERO,ZERO,W(1,91))                                                          
      CALL JIOXXX(W(1,1),W(1,91),GG,ZERO,ZERO,W(1,92))     
      CALL IOVXXX(W(1,2),W(1,68),W(1,92),GG,AMP(76))             
      CALL JIOCXX(W(1,67),W(1,43),GG,ZERO,ZERO,W(1,93))    
      CALL IOVXXX(W(1,1),W(1,68),W(1,93),GG,AMP(77))             
      CALL JIOCXX(W(1,67),W(1,44),GG,ZERO,ZERO,W(1,94))    
      CALL IOVXXX(W(1,1),W(1,68),W(1,94),GG,AMP(78))             
      CALL JSSXXX(W(1,83),W(1,39),GC,ZERO,ZERO,W(1,95))     
      CALL IOVXXX(W(1,1),W(1,68),W(1,95),GG,AMP(79))             
      CALL JSSXXX(W(1,85),W(1,41),GC,ZERO,ZERO,W(1,96))     
      CALL IOVXXX(W(1,1),W(1,68),W(1,96),GG,AMP(80))             
      CALL FSIXXX(W(1,1),W(1,83),GQLGOM,MGO,WGO,W(1,97))                                                          
      CALL IOSXXX(W(1,97),W(1,68),W(1,39),GQLGOP,AMP(81))         
      CALL FSIXXX(W(1,1),W(1,85),GQRGOM,MGO,WGO,W(1,98))                                                          
      CALL IOSXXX(W(1,98),W(1,68),W(1,39),GQLGOP,AMP(82))         
      CALL IOSXXX(W(1,97),W(1,68),W(1,41),GQRGOP,AMP(83))         
      CALL IOSXXX(W(1,98),W(1,68),W(1,41),GQRGOP,AMP(84))         
      CALL JIOXXX(W(1,2),W(1,89),GG,ZERO,ZERO,W(1,99))     
      CALL IOVXXX(W(1,1),W(1,68),W(1,99),GG,AMP(85))             
      CALL JIOXXX(W(1,2),W(1,91),GG,ZERO,ZERO,W(1,100))     
      CALL IOVXXX(W(1,1),W(1,68),W(1,100),GG,AMP(86))             
      CALL JIOCXX(W(1,67),W(1,57),GG,ZERO,ZERO,W(1,101))    
      CALL IOVXXX(W(1,2),W(1,68),W(1,101),GG,AMP(87))             
      CALL JIOCXX(W(1,67),W(1,58),GG,ZERO,ZERO,W(1,102))    
      CALL IOVXXX(W(1,2),W(1,68),W(1,102),GG,AMP(88))             
      CALL JSSXXX(W(1,71),W(1,53),GC,ZERO,ZERO,W(1,103))     
      CALL IOVXXX(W(1,2),W(1,68),W(1,103),GG,AMP(89))             
      CALL JSSXXX(W(1,73),W(1,55),GC,ZERO,ZERO,W(1,104))     
      CALL IOVXXX(W(1,2),W(1,68),W(1,104),GG,AMP(90))             
      CALL FSIXXX(W(1,2),W(1,71),GQLGOM,MGO,WGO,W(1,105))                                                          
      CALL IOSXXX(W(1,105),W(1,68),W(1,53),GQLGOP,AMP(91))         
      CALL FSIXXX(W(1,2),W(1,73),GQRGOM,MGO,WGO,W(1,106))                                                          
      CALL IOSXXX(W(1,106),W(1,68),W(1,53),GQLGOP,AMP(92))         
      CALL IOSXXX(W(1,105),W(1,68),W(1,55),GQRGOP,AMP(93))         
      CALL IOSXXX(W(1,106),W(1,68),W(1,55),GQRGOP,AMP(94))         
      CALL JIOXXX(W(1,1),W(1,77),GG,ZERO,ZERO,W(1,107))     
      CALL IOVXXX(W(1,2),W(1,68),W(1,107),GG,AMP(95))             
      CALL JIOXXX(W(1,1),W(1,79),GG,ZERO,ZERO,W(1,108))     
      CALL IOVXXX(W(1,2),W(1,68),W(1,108),GG,AMP(96))             
      CALL IXXXXX(P(0,4),MNJ,NHEL(4),-1*IC(4),W(1,109))         
      CALL JIOCXX(W(1,109),W(1,3),GZNIJ,ZMASS,ZWIDTH,W(1,110))                                                          
      CALL FVIXXX(W(1,2),W(1,110),GZD,ZERO,ZERO,W(1,111))    
      CALL JIOXXX(W(1,111),W(1,5),GG,ZERO,ZERO,W(1,112))     
      CALL IOVXXX(W(1,1),W(1,68),W(1,112),GG,AMP(97))             
      CALL IOVXXX(W(1,36),W(1,68),W(1,110),GZD,AMP(98))            
      CALL FVIXXX(W(1,1),W(1,110),GZD,ZERO,ZERO,W(1,113))    
      CALL IOVXXX(W(1,113),W(1,68),W(1,24),GG,AMP(99))             
      CALL FVOXXX(W(1,5),W(1,110),GZD,ZERO,ZERO,W(1,114))    
      CALL JIOXXX(W(1,2),W(1,114),GG,ZERO,ZERO,W(1,115))     
      CALL IOVXXX(W(1,1),W(1,68),W(1,115),GG,AMP(100))             
      CALL IOVXXX(W(1,20),W(1,68),W(1,110),GZD,AMP(101))            
      CALL IOVXXX(W(1,111),W(1,68),W(1,8),GG,AMP(102))             
      CALL JIOXXX(W(1,113),W(1,5),GG,ZERO,ZERO,W(1,116))     
      CALL IOVXXX(W(1,2),W(1,68),W(1,116),GG,AMP(103))             
      CALL JIOXXX(W(1,1),W(1,114),GG,ZERO,ZERO,W(1,117))     
      CALL IOVXXX(W(1,2),W(1,68),W(1,117),GG,AMP(104))             
      CALL OXXXXX(P(0,2),ZERO,NHEL(2),-1*IC(2),W(1,118))        
      CALL FSOCXX(W(1,118),W(1,83),GQLGOM,MGO,WGO,W(1,119))                                                          
      CALL HIOXXX(W(1,1),W(1,119),GQLGOM,MDL,WDL,W(1,120))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,120),GDLNJP,AMP(105))        
      CALL HIOXXX(W(1,1),W(1,119),GQRGOM,MDR,WDR,W(1,121))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,121),GDRNJP,AMP(106))        
      CALL FSOCXX(W(1,118),W(1,85),GQRGOM,MGO,WGO,W(1,122))                                                          
      CALL HIOXXX(W(1,1),W(1,122),GQLGOM,MDL,WDL,W(1,123))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,123),GDLNJP,AMP(107))        
      CALL HIOXXX(W(1,1),W(1,122),GQRGOM,MDR,WDR,W(1,124))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,124),GDRNJP,AMP(108))        
      CALL HIOCXX(W(1,97),W(1,118),GQLGOM,MDL,WDL,W(1,125))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,125),GDLNJP,AMP(109))        
      CALL HIOCXX(W(1,97),W(1,118),GQRGOM,MDR,WDR,W(1,126))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,126),GDRNJP,AMP(110))        
      CALL HIOCXX(W(1,98),W(1,118),GQLGOM,MDL,WDL,W(1,127))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,127),GDLNJP,AMP(111))        
      CALL HIOCXX(W(1,98),W(1,118),GQRGOM,MDR,WDR,W(1,128))                                                          
      CALL IOSCXX(W(1,6),W(1,4),W(1,128),GDRNJP,AMP(112))        
      CALL HIOCXX(W(1,75),W(1,118),GQLGOM,MDL,WDL,W(1,129))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,129),GDLNIP,AMP(113))        
      CALL HIOCXX(W(1,75),W(1,118),GQRGOM,MDR,WDR,W(1,130))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,130),GDRNIP,AMP(114))        
      CALL HIOCXX(W(1,76),W(1,118),GQLGOM,MDL,WDL,W(1,131))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,131),GDLNIP,AMP(115))        
      CALL HIOCXX(W(1,76),W(1,118),GQRGOM,MDR,WDR,W(1,132))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,132),GDRNIP,AMP(116))        
      CALL FSOCXX(W(1,118),W(1,71),GQLGOM,MGO,WGO,W(1,133))                                                          
      CALL HIOXXX(W(1,1),W(1,133),GQLGOM,MDL,WDL,W(1,134))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,134),GDLNIP,AMP(117))        
      CALL HIOXXX(W(1,1),W(1,133),GQRGOM,MDR,WDR,W(1,135))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,135),GDRNIP,AMP(118))        
      CALL FSOCXX(W(1,118),W(1,73),GQRGOM,MGO,WGO,W(1,136))                                                          
      CALL HIOXXX(W(1,1),W(1,136),GQLGOM,MDL,WDL,W(1,137))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,137),GDLNIP,AMP(119))        
      CALL HIOXXX(W(1,1),W(1,136),GQRGOM,MDR,WDR,W(1,138))                                                          
      CALL IOSCXX(W(1,6),W(1,3),W(1,138),GDRNIP,AMP(120))        
      JAMP(   1) = +AMP(   1)+AMP(   2)+AMP(   3)+AMP(   4)+AMP(   9)
     &             +AMP(  10)+AMP(  15)+AMP(  16)+AMP(  17)+AMP(  18)
     &             -AMP(  21)-AMP(  22)-AMP(  23)-AMP(  24)-AMP(  29)
     &             -AMP(  30)-AMP(  31)-AMP(  32)-AMP(  37)-AMP(  38)
     &             -AMP(  43)-AMP(  44)-AMP(  45)-AMP(  46)+AMP(  53)
     &             +AMP(  54)+AMP(  55)+AMP(  56)-AMP(  61)-AMP(  62)
     &             -AMP(  63)-AMP(  64)-AMP(  67)-AMP(  68)-AMP(  69)
     &             -AMP(  70)-AMP(  75)-AMP(  76)+AMP(  81)+AMP(  82)
     &             +AMP(  83)+AMP(  84)+AMP(  87)+AMP(  88)+AMP(  89)
     &             +AMP(  90)+AMP(  95)+AMP(  96)+AMP( 101)+AMP( 102)
     &             +AMP( 103)+AMP( 104)-AMP( 109)-AMP( 110)-AMP( 111)
     &             -AMP( 112)+AMP( 113)+AMP( 114)+AMP( 115)+AMP( 116)
      JAMP(   2) = +AMP(   5)+AMP(   6)+AMP(   7)+AMP(   8)+AMP(  11)
     &             +AMP(  12)+AMP(  13)+AMP(  14)+AMP(  19)+AMP(  20)
     &             -AMP(  25)-AMP(  26)-AMP(  27)-AMP(  28)-AMP(  33)
     &             -AMP(  34)-AMP(  35)-AMP(  36)-AMP(  39)-AMP(  40)
     &             -AMP(  41)-AMP(  42)-AMP(  47)-AMP(  48)+AMP(  49)
     &             +AMP(  50)+AMP(  51)+AMP(  52)-AMP(  57)-AMP(  58)
     &             -AMP(  59)-AMP(  60)-AMP(  65)-AMP(  66)-AMP(  71)
     &             -AMP(  72)-AMP(  73)-AMP(  74)+AMP(  77)+AMP(  78)
     &             +AMP(  79)+AMP(  80)+AMP(  85)+AMP(  86)+AMP(  91)
     &             +AMP(  92)+AMP(  93)+AMP(  94)-AMP(  97)-AMP(  98)
     &             -AMP(  99)-AMP( 100)-AMP( 105)-AMP( 106)-AMP( 107)
     &             -AMP( 108)+AMP( 117)+AMP( 118)+AMP( 119)+AMP( 120)
      MATRIX_DD_NINJDD = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP =(0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          MATRIX_DD_NINJDD =MATRIX_DD_NINJDD+ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO
      Do I = 1, NGRAPHS
          amp2(i)=amp2(i)+amp(i)*dconjg(amp(i))
      Enddo
      Do I = 1, NCOLOR
          Jamp2(i)=Jamp2(i)+Jamp(i)*dconjg(Jamp(i))
      Enddo
C      CALL GAUGECHECK(JAMP,ZTEMP,EIGEN_VEC,EIGEN_VAL,NCOLOR,NEIGEN) 
      END
       
       
