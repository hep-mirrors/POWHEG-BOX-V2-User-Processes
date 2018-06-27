      SUBROUTINE SREALMTRX_012(P1,ANS)
C  
C Generated by MadGraph II                                              
C MadGraph StandAlone Version
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : u1 b1 -> t d1 g g  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      Include "nexternal.inc"
      INTEGER                 NCOMB,     NCROSS         
      PARAMETER (             NCOMB=  64, NCROSS=  1)
      INTEGER    THEL
      PARAMETER (THEL=NCOMB*NCROSS)
      INTEGER NGRAPHS
      PARAMETER (NGRAPHS=  24)
C  
C ARGUMENTS 
C  
      REAL*8 P1(0:3,NEXTERNAL),ANS(NCROSS)
C  
C LOCAL VARIABLES 
C  
      REAL*8 P(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL,NCOMB),NTRY
      REAL*8 T
      REAL*8 REALMTRX_012
      REAL*8 ZERO
      PARAMETER(ZERO=0d0)
      INTEGER IHEL,IDEN(NCROSS),IC(NEXTERNAL,NCROSS)
      INTEGER IPROC,JC(NEXTERNAL), I,L,K
      LOGICAL GOODHEL(NCOMB,NCROSS)
      DATA NTRY/0/
      INTEGER NGOOD,igood(ncomb),jhel
      data ngood /0/
      save igood,jhel
      REAL*8 hwgt
      integer maxamps
      parameter (maxamps=6000)
      Double Precision amp2(maxamps), jamp2(0:maxamps)
      common/to_Ramps_012/  amp2,       jamp2

      integer j,jj
      integer max_bhel
      parameter ( max_bhel =          64 )

      INTEGER NCOLOR
      DATA NCOLOR   /   6/          
      DATA GOODHEL/THEL*.FALSE./
      DATA (NHEL(IHEL,   1),IHEL=1, 6) /-1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,   2),IHEL=1, 6) /-1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,   3),IHEL=1, 6) /-1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,   4),IHEL=1, 6) /-1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,   5),IHEL=1, 6) /-1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,   6),IHEL=1, 6) /-1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,   7),IHEL=1, 6) /-1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,   8),IHEL=1, 6) /-1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,   9),IHEL=1, 6) /-1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  10),IHEL=1, 6) /-1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  11),IHEL=1, 6) /-1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  12),IHEL=1, 6) /-1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  13),IHEL=1, 6) /-1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  14),IHEL=1, 6) /-1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  15),IHEL=1, 6) /-1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  16),IHEL=1, 6) /-1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  17),IHEL=1, 6) /-1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  18),IHEL=1, 6) /-1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  19),IHEL=1, 6) /-1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  20),IHEL=1, 6) /-1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  21),IHEL=1, 6) /-1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  22),IHEL=1, 6) /-1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  23),IHEL=1, 6) /-1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  24),IHEL=1, 6) /-1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  25),IHEL=1, 6) /-1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  26),IHEL=1, 6) /-1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  27),IHEL=1, 6) /-1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  28),IHEL=1, 6) /-1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  29),IHEL=1, 6) /-1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  30),IHEL=1, 6) /-1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  31),IHEL=1, 6) /-1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  32),IHEL=1, 6) /-1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  33),IHEL=1, 6) / 1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  34),IHEL=1, 6) / 1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  35),IHEL=1, 6) / 1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  36),IHEL=1, 6) / 1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  37),IHEL=1, 6) / 1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  38),IHEL=1, 6) / 1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  39),IHEL=1, 6) / 1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  40),IHEL=1, 6) / 1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  41),IHEL=1, 6) / 1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  42),IHEL=1, 6) / 1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  43),IHEL=1, 6) / 1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  44),IHEL=1, 6) / 1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  45),IHEL=1, 6) / 1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  46),IHEL=1, 6) / 1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  47),IHEL=1, 6) / 1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  48),IHEL=1, 6) / 1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  49),IHEL=1, 6) / 1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  50),IHEL=1, 6) / 1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  51),IHEL=1, 6) / 1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  52),IHEL=1, 6) / 1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  53),IHEL=1, 6) / 1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  54),IHEL=1, 6) / 1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  55),IHEL=1, 6) / 1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  56),IHEL=1, 6) / 1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  57),IHEL=1, 6) / 1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  58),IHEL=1, 6) / 1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  59),IHEL=1, 6) / 1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  60),IHEL=1, 6) / 1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  61),IHEL=1, 6) / 1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  62),IHEL=1, 6) / 1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  63),IHEL=1, 6) / 1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  64),IHEL=1, 6) / 1, 1, 1, 1, 1, 1/
      DATA (  IC(IHEL,  1),IHEL=1, 6) / 1, 2, 3, 4, 5, 6/
      DATA (IDEN(IHEL),IHEL=  1,  1) /  72/
C ----------
C BEGIN CODE
C ----------
      NTRY=NTRY+1
      DO IPROC=1,NCROSS
      DO IHEL=1,NEXTERNAL
         JC(IHEL) = +1
      ENDDO
      DO IHEL=1,NGRAPHS
          amp2(ihel)=0d0
      ENDDO
      jamp2(0)=dble(NCOLOR)
      DO IHEL=1,int(jamp2(0))
          jamp2(ihel)=0d0
      ENDDO
      ANS(IPROC) = 0D0
          DO IHEL=1,NCOMB
             IF (GOODHEL(IHEL,IPROC) .OR. NTRY .LT. 2) THEN
                 T=REALMTRX_012(P1,NHEL(1,IHEL),IHEL,JC(1))              
               ANS(IPROC)=ANS(IPROC)+T
               IF (T .GT. 0D0 .AND. .NOT. GOODHEL(IHEL,IPROC)) THEN
                   GOODHEL(IHEL,IPROC)=.TRUE.
                   NGOOD = NGOOD +1
                   IGOOD(NGOOD) = IHEL
               ENDIF
             ENDIF
          ENDDO
      ANS(IPROC)=ANS(IPROC)/DBLE(IDEN(IPROC))
      ENDDO
      END
       
       
      REAL*8 FUNCTION REALMTRX_012(P,NHEL,HELL,IC)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : u1 b1 -> t d1 g g  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER (NGRAPHS=  24,NEIGEN=  6) 
      include "nexternal.inc"
      INTEGER    NWAVEFUNCS     , NCOLOR
      PARAMETER (NWAVEFUNCS=  40, NCOLOR=   6) 
      REAL*8     ZERO
      PARAMETER (ZERO=0D0)
C  
C ARGUMENTS 
C  
      REAL*8 P(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL), IC(NEXTERNAL), HELL
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
      integer maxamps
      parameter (maxamps=6000)
      Double Precision amp2(maxamps), jamp2(0:maxamps)
      common/to_Ramps_012/  amp2,       jamp2
      integer max_bhel
      parameter ( max_bhel =          64 )
      include "coupl.inc"
C  
C COLOR DATA
C  
c$$$      DATA Denom(1  )/            1/                                       
c$$$      DATA (CF(i,1  ),i=1  ,6  ) /    16,    0,   -2,    0,    2,    2/    
c$$$C               T[ 3, 2]T[ 4, 1, 5, 6]                                     
c$$$      DATA Denom(2  )/            1/                                       
c$$$      DATA (CF(i,2  ),i=1  ,6  ) /     0,   16,    0,    2,    0,    0/    
c$$$C               T[ 3, 2, 6]T[ 4, 1, 5]                                     
c$$$      DATA Denom(3  )/            1/                                       
c$$$      DATA (CF(i,3  ),i=1  ,6  ) /    -2,    0,   16,    0,    2,    2/    
c$$$C               T[ 3, 2]T[ 4, 1, 6, 5]                                     
c$$$      DATA Denom(4  )/            1/                                       
c$$$      DATA (CF(i,4  ),i=1  ,6  ) /     0,    2,    0,   16,    0,    0/    
c$$$C               T[ 3, 2, 5]T[ 4, 1, 6]                                     
c$$$      DATA Denom(5  )/            1/                                       
c$$$      DATA (CF(i,5  ),i=1  ,6  ) /     2,    0,    2,    0,   16,   -2/    
c$$$C               T[ 3, 2, 5, 6]T[ 4, 1]                                     
c$$$      DATA Denom(6  )/            1/                                       
c$$$      DATA (CF(i,6  ),i=1  ,6  ) /     2,    0,    2,    0,   -2,   16/    
c$$$C               T[ 3, 2, 6, 5]T[ 4, 1]                                     
      DATA Denom(1  )/            1/                                       
      DATA (CF(i,1  ),i=1  ,6  ) /    16,    0,   -2,    0,    0,    0/    
C               T[ 3, 2]T[ 4, 1, 5, 6]                                     
      DATA Denom(2  )/            1/                                       
      DATA (CF(i,2  ),i=1  ,6  ) /     0,   16,    0,    0,    0,    0/    
C               T[ 3, 2, 6]T[ 4, 1, 5]                                     
      DATA Denom(3  )/            1/                                       
      DATA (CF(i,3  ),i=1  ,6  ) /    -2,    0,   16,    0,    0,    0/    
C               T[ 3, 2]T[ 4, 1, 6, 5]                                     
      DATA Denom(4  )/            1/                                       
      DATA (CF(i,4  ),i=1  ,6  ) /     0,    0,    0,   16,    0,    0/    
C               T[ 3, 2, 5]T[ 4, 1, 6]                                     
      DATA Denom(5  )/            1/                                       
      DATA (CF(i,5  ),i=1  ,6  ) /     0,    0,    0,    0,   16,   -2/    
C               T[ 3, 2, 5, 6]T[ 4, 1]                                     
      DATA Denom(6  )/            1/                                       
      DATA (CF(i,6  ),i=1  ,6  ) /     0,    0,    0,    0,   -2,   16/    
C               T[ 3, 2, 6, 5]T[ 4, 1]                                     
C ----------
C BEGIN CODE
C ----------
      CALL IXXXXX(P(0,1   ),ZERO ,NHEL(1   ),+1*IC(1   ),W(1,1   ))        
      CALL IXXXXX(P(0,2   ),ZERO ,NHEL(2   ),+1*IC(2   ),W(1,2   ))        
      CALL OXXXXX(P(0,3   ),TMASS ,NHEL(3   ),+1*IC(3   ),W(1,3   ))       
      CALL OXXXXX(P(0,4   ),ZERO ,NHEL(4   ),+1*IC(4   ),W(1,4   ))        
      CALL VXXXXX(P(0,5   ),ZERO ,NHEL(5   ),+1*IC(5   ),W(1,5   ))        
      CALL VXXXXX(P(0,6   ),ZERO ,NHEL(6   ),+1*IC(6   ),W(1,6   ))        
      CALL JIOXXX(W(1,2   ),W(1,3   ),GWF ,WMASS   ,WWIDTH  ,W(1,7   ))    
      CALL FVOXXX(W(1,4   ),W(1,7   ),GWF ,ZERO    ,ZERO    ,W(1,8   ))    
      CALL FVOXXX(W(1,8   ),W(1,5   ),GG ,ZERO    ,ZERO    ,W(1,9   ))     
      CALL IOVXXX(W(1,1   ),W(1,9   ),W(1,6   ),GG ,AMP(1   ))             
      CALL FVIXXX(W(1,1   ),W(1,5   ),GG ,ZERO    ,ZERO    ,W(1,10  ))     
      CALL JIOXXX(W(1,10  ),W(1,4   ),GWF ,WMASS   ,WWIDTH  ,W(1,11  ))    
      CALL FVOXXX(W(1,3   ),W(1,11  ),GWF ,ZERO    ,ZERO    ,W(1,12  ))    
      CALL IOVXXX(W(1,2   ),W(1,12  ),W(1,6   ),GG ,AMP(2   ))             
      CALL FVIXXX(W(1,2   ),W(1,11  ),GWF ,TMASS   ,TWIDTH  ,W(1,13  ))    
      CALL IOVXXX(W(1,13  ),W(1,3   ),W(1,6   ),GG ,AMP(3   ))             
      CALL FVIXXX(W(1,10  ),W(1,7   ),GWF ,ZERO    ,ZERO    ,W(1,14  ))    
      CALL IOVXXX(W(1,14  ),W(1,4   ),W(1,6   ),GG ,AMP(4   ))             
      CALL JIOXXX(W(1,1   ),W(1,8   ),GG ,ZERO    ,ZERO    ,W(1,15  ))     
      CALL VVVXXX(W(1,6   ),W(1,5   ),W(1,15  ),G ,AMP(5   ))              
      CALL IOVXXX(W(1,10  ),W(1,8   ),W(1,6   ),GG ,AMP(6   ))             
      CALL FVIXXX(W(1,2   ),W(1,5   ),GG ,ZERO    ,ZERO    ,W(1,16  ))     
      CALL JIOXXX(W(1,16  ),W(1,3   ),GWF ,WMASS   ,WWIDTH  ,W(1,17  ))    
      CALL FVOXXX(W(1,4   ),W(1,17  ),GWF ,ZERO    ,ZERO    ,W(1,18  ))    
      CALL IOVXXX(W(1,1   ),W(1,18  ),W(1,6   ),GG ,AMP(7   ))             
      CALL JIOXXX(W(1,1   ),W(1,4   ),GWF ,WMASS   ,WWIDTH  ,W(1,19  ))    
      CALL FVOXXX(W(1,3   ),W(1,19  ),GWF ,ZERO    ,ZERO    ,W(1,20  ))    
      CALL FVOXXX(W(1,20  ),W(1,5   ),GG ,ZERO    ,ZERO    ,W(1,21  ))     
      CALL IOVXXX(W(1,2   ),W(1,21  ),W(1,6   ),GG ,AMP(8   ))             
      CALL FVIXXX(W(1,16  ),W(1,19  ),GWF ,TMASS   ,TWIDTH  ,W(1,22  ))    
      CALL IOVXXX(W(1,22  ),W(1,3   ),W(1,6   ),GG ,AMP(9   ))             
      CALL FVIXXX(W(1,1   ),W(1,17  ),GWF ,ZERO    ,ZERO    ,W(1,23  ))    
      CALL IOVXXX(W(1,23  ),W(1,4   ),W(1,6   ),GG ,AMP(10  ))             
      CALL JIOXXX(W(1,2   ),W(1,20  ),GG ,ZERO    ,ZERO    ,W(1,24  ))     
      CALL VVVXXX(W(1,6   ),W(1,5   ),W(1,24  ),G ,AMP(11  ))              
      CALL IOVXXX(W(1,16  ),W(1,20  ),W(1,6   ),GG ,AMP(12  ))             
      CALL FVOXXX(W(1,3   ),W(1,5   ),GG ,TMASS   ,TWIDTH  ,W(1,25  ))     
      CALL JIOXXX(W(1,2   ),W(1,25  ),GWF ,WMASS   ,WWIDTH  ,W(1,26  ))    
      CALL FVOXXX(W(1,4   ),W(1,26  ),GWF ,ZERO    ,ZERO    ,W(1,27  ))    
      CALL IOVXXX(W(1,1   ),W(1,27  ),W(1,6   ),GG ,AMP(13  ))             
      CALL FVOXXX(W(1,25  ),W(1,19  ),GWF ,ZERO    ,ZERO    ,W(1,28  ))    
      CALL IOVXXX(W(1,2   ),W(1,28  ),W(1,6   ),GG ,AMP(14  ))             
      CALL FVIXXX(W(1,2   ),W(1,19  ),GWF ,TMASS   ,TWIDTH  ,W(1,29  ))    
      CALL FVIXXX(W(1,29  ),W(1,5   ),GG ,TMASS   ,TWIDTH  ,W(1,30  ))     
      CALL IOVXXX(W(1,30  ),W(1,3   ),W(1,6   ),GG ,AMP(15  ))             
      CALL FVIXXX(W(1,1   ),W(1,26  ),GWF ,ZERO    ,ZERO    ,W(1,31  ))    
      CALL IOVXXX(W(1,31  ),W(1,4   ),W(1,6   ),GG ,AMP(16  ))             
      CALL JIOXXX(W(1,29  ),W(1,3   ),GG ,ZERO    ,ZERO    ,W(1,32  ))     
      CALL VVVXXX(W(1,6   ),W(1,5   ),W(1,32  ),G ,AMP(17  ))              
      CALL IOVXXX(W(1,29  ),W(1,25  ),W(1,6   ),GG ,AMP(18  ))             
      CALL FVOXXX(W(1,4   ),W(1,5   ),GG ,ZERO    ,ZERO    ,W(1,33  ))     
      CALL FVOXXX(W(1,33  ),W(1,7   ),GWF ,ZERO    ,ZERO    ,W(1,34  ))    
      CALL IOVXXX(W(1,1   ),W(1,34  ),W(1,6   ),GG ,AMP(19  ))             
      CALL JIOXXX(W(1,1   ),W(1,33  ),GWF ,WMASS   ,WWIDTH  ,W(1,35  ))    
      CALL FVOXXX(W(1,3   ),W(1,35  ),GWF ,ZERO    ,ZERO    ,W(1,36  ))    
      CALL IOVXXX(W(1,2   ),W(1,36  ),W(1,6   ),GG ,AMP(20  ))             
      CALL FVIXXX(W(1,2   ),W(1,35  ),GWF ,TMASS   ,TWIDTH  ,W(1,37  ))    
      CALL IOVXXX(W(1,37  ),W(1,3   ),W(1,6   ),GG ,AMP(21  ))             
      CALL FVIXXX(W(1,1   ),W(1,7   ),GWF ,ZERO    ,ZERO    ,W(1,38  ))    
      CALL FVIXXX(W(1,38  ),W(1,5   ),GG ,ZERO    ,ZERO    ,W(1,39  ))     
      CALL IOVXXX(W(1,39  ),W(1,4   ),W(1,6   ),GG ,AMP(22  ))             
      CALL JIOXXX(W(1,38  ),W(1,4   ),GG ,ZERO    ,ZERO    ,W(1,40  ))     
      CALL VVVXXX(W(1,6   ),W(1,5   ),W(1,40  ),G ,AMP(23  ))              
      CALL IOVXXX(W(1,38  ),W(1,33  ),W(1,6   ),GG ,AMP(24  ))             
      JAMP(   1) = +AMP(   1)-AMP(   5)+AMP(  19)-AMP(  23)+AMP(  24)
      JAMP(   2) = +AMP(   2)+AMP(   3)+AMP(  20)+AMP(  21)
      JAMP(   3) = +AMP(   4)+AMP(   5)+AMP(   6)+AMP(  22)+AMP(  23)
      JAMP(   4) = +AMP(   7)+AMP(  10)+AMP(  13)+AMP(  16)
      JAMP(   5) = +AMP(   8)-AMP(  11)+AMP(  14)-AMP(  17)+AMP(  18)
      JAMP(   6) = +AMP(   9)+AMP(  11)+AMP(  12)+AMP(  15)+AMP(  17)
      REALMTRX_012 = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP = (0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          REALMTRX_012 =REALMTRX_012+ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO
      Do I = 1, NGRAPHS
          amp2(i)=amp2(i)+amp(i)*dconjg(amp(i))
      Enddo
      Do I = 1, NCOLOR
          Jamp2(i)=Jamp2(i)+Jamp(i)*dconjg(Jamp(i))
      Enddo
      END
       
       
