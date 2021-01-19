      SUBROUTINE SREALMTRX_007(P1,ANS)
C  
C Generated by MadGraph II                                              
C MadGraph StandAlone Version
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : s c~ -> w- t t~ g  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      Include "nexternal.inc"
      INTEGER                 NCOMB,     NCROSS         
      PARAMETER (             NCOMB=  96, NCROSS=  1)
      INTEGER    THEL
      PARAMETER (THEL=NCOMB*NCROSS)
      INTEGER NGRAPHS
      PARAMETER (NGRAPHS=  37)
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
      REAL*8 REALMTRX_007
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
      common/to_Ramps_007/  amp2,       jamp2

      integer j,jj
      integer max_bhel
      parameter ( max_bhel =          96 )

      INTEGER NCOLOR
      DATA NCOLOR   /   2/          
      DATA GOODHEL/THEL*.FALSE./
      DATA (NHEL(IHEL,   1),IHEL=1, 6) /-1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,   2),IHEL=1, 6) /-1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,   3),IHEL=1, 6) /-1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,   4),IHEL=1, 6) /-1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,   5),IHEL=1, 6) /-1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,   6),IHEL=1, 6) /-1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,   7),IHEL=1, 6) /-1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,   8),IHEL=1, 6) /-1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,   9),IHEL=1, 6) /-1,-1, 0,-1,-1,-1/
      DATA (NHEL(IHEL,  10),IHEL=1, 6) /-1,-1, 0,-1,-1, 1/
      DATA (NHEL(IHEL,  11),IHEL=1, 6) /-1,-1, 0,-1, 1,-1/
      DATA (NHEL(IHEL,  12),IHEL=1, 6) /-1,-1, 0,-1, 1, 1/
      DATA (NHEL(IHEL,  13),IHEL=1, 6) /-1,-1, 0, 1,-1,-1/
      DATA (NHEL(IHEL,  14),IHEL=1, 6) /-1,-1, 0, 1,-1, 1/
      DATA (NHEL(IHEL,  15),IHEL=1, 6) /-1,-1, 0, 1, 1,-1/
      DATA (NHEL(IHEL,  16),IHEL=1, 6) /-1,-1, 0, 1, 1, 1/
      DATA (NHEL(IHEL,  17),IHEL=1, 6) /-1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  18),IHEL=1, 6) /-1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  19),IHEL=1, 6) /-1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  20),IHEL=1, 6) /-1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  21),IHEL=1, 6) /-1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  22),IHEL=1, 6) /-1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  23),IHEL=1, 6) /-1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  24),IHEL=1, 6) /-1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  25),IHEL=1, 6) /-1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  26),IHEL=1, 6) /-1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  27),IHEL=1, 6) /-1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  28),IHEL=1, 6) /-1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  29),IHEL=1, 6) /-1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  30),IHEL=1, 6) /-1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  31),IHEL=1, 6) /-1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  32),IHEL=1, 6) /-1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  33),IHEL=1, 6) /-1, 1, 0,-1,-1,-1/
      DATA (NHEL(IHEL,  34),IHEL=1, 6) /-1, 1, 0,-1,-1, 1/
      DATA (NHEL(IHEL,  35),IHEL=1, 6) /-1, 1, 0,-1, 1,-1/
      DATA (NHEL(IHEL,  36),IHEL=1, 6) /-1, 1, 0,-1, 1, 1/
      DATA (NHEL(IHEL,  37),IHEL=1, 6) /-1, 1, 0, 1,-1,-1/
      DATA (NHEL(IHEL,  38),IHEL=1, 6) /-1, 1, 0, 1,-1, 1/
      DATA (NHEL(IHEL,  39),IHEL=1, 6) /-1, 1, 0, 1, 1,-1/
      DATA (NHEL(IHEL,  40),IHEL=1, 6) /-1, 1, 0, 1, 1, 1/
      DATA (NHEL(IHEL,  41),IHEL=1, 6) /-1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  42),IHEL=1, 6) /-1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  43),IHEL=1, 6) /-1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  44),IHEL=1, 6) /-1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  45),IHEL=1, 6) /-1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  46),IHEL=1, 6) /-1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  47),IHEL=1, 6) /-1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  48),IHEL=1, 6) /-1, 1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  49),IHEL=1, 6) / 1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  50),IHEL=1, 6) / 1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  51),IHEL=1, 6) / 1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  52),IHEL=1, 6) / 1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  53),IHEL=1, 6) / 1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  54),IHEL=1, 6) / 1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  55),IHEL=1, 6) / 1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  56),IHEL=1, 6) / 1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  57),IHEL=1, 6) / 1,-1, 0,-1,-1,-1/
      DATA (NHEL(IHEL,  58),IHEL=1, 6) / 1,-1, 0,-1,-1, 1/
      DATA (NHEL(IHEL,  59),IHEL=1, 6) / 1,-1, 0,-1, 1,-1/
      DATA (NHEL(IHEL,  60),IHEL=1, 6) / 1,-1, 0,-1, 1, 1/
      DATA (NHEL(IHEL,  61),IHEL=1, 6) / 1,-1, 0, 1,-1,-1/
      DATA (NHEL(IHEL,  62),IHEL=1, 6) / 1,-1, 0, 1,-1, 1/
      DATA (NHEL(IHEL,  63),IHEL=1, 6) / 1,-1, 0, 1, 1,-1/
      DATA (NHEL(IHEL,  64),IHEL=1, 6) / 1,-1, 0, 1, 1, 1/
      DATA (NHEL(IHEL,  65),IHEL=1, 6) / 1,-1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  66),IHEL=1, 6) / 1,-1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  67),IHEL=1, 6) / 1,-1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  68),IHEL=1, 6) / 1,-1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  69),IHEL=1, 6) / 1,-1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  70),IHEL=1, 6) / 1,-1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  71),IHEL=1, 6) / 1,-1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  72),IHEL=1, 6) / 1,-1, 1, 1, 1, 1/
      DATA (NHEL(IHEL,  73),IHEL=1, 6) / 1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  74),IHEL=1, 6) / 1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  75),IHEL=1, 6) / 1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  76),IHEL=1, 6) / 1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  77),IHEL=1, 6) / 1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  78),IHEL=1, 6) / 1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  79),IHEL=1, 6) / 1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  80),IHEL=1, 6) / 1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  81),IHEL=1, 6) / 1, 1, 0,-1,-1,-1/
      DATA (NHEL(IHEL,  82),IHEL=1, 6) / 1, 1, 0,-1,-1, 1/
      DATA (NHEL(IHEL,  83),IHEL=1, 6) / 1, 1, 0,-1, 1,-1/
      DATA (NHEL(IHEL,  84),IHEL=1, 6) / 1, 1, 0,-1, 1, 1/
      DATA (NHEL(IHEL,  85),IHEL=1, 6) / 1, 1, 0, 1,-1,-1/
      DATA (NHEL(IHEL,  86),IHEL=1, 6) / 1, 1, 0, 1,-1, 1/
      DATA (NHEL(IHEL,  87),IHEL=1, 6) / 1, 1, 0, 1, 1,-1/
      DATA (NHEL(IHEL,  88),IHEL=1, 6) / 1, 1, 0, 1, 1, 1/
      DATA (NHEL(IHEL,  89),IHEL=1, 6) / 1, 1, 1,-1,-1,-1/
      DATA (NHEL(IHEL,  90),IHEL=1, 6) / 1, 1, 1,-1,-1, 1/
      DATA (NHEL(IHEL,  91),IHEL=1, 6) / 1, 1, 1,-1, 1,-1/
      DATA (NHEL(IHEL,  92),IHEL=1, 6) / 1, 1, 1,-1, 1, 1/
      DATA (NHEL(IHEL,  93),IHEL=1, 6) / 1, 1, 1, 1,-1,-1/
      DATA (NHEL(IHEL,  94),IHEL=1, 6) / 1, 1, 1, 1,-1, 1/
      DATA (NHEL(IHEL,  95),IHEL=1, 6) / 1, 1, 1, 1, 1,-1/
      DATA (NHEL(IHEL,  96),IHEL=1, 6) / 1, 1, 1, 1, 1, 1/
      DATA (  IC(IHEL,  1),IHEL=1, 6) / 1, 2, 3, 4, 5, 6/
      DATA (IDEN(IHEL),IHEL=  1,  1) /  36/
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
                 T=REALMTRX_007(P1,NHEL(1,IHEL),IHEL,JC(1))              
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
       
       
      REAL*8 FUNCTION REALMTRX_007(P,NHEL,HELL,IC)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : s c~ -> w- t t~ g  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER (NGRAPHS=  37,NEIGEN=  2) 
      include "nexternal.inc"
      INTEGER    NWAVEFUNCS     , NCOLOR
      PARAMETER (NWAVEFUNCS=  61, NCOLOR=   2) 
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
      common/to_Ramps_007/  amp2,       jamp2
      integer max_bhel
      parameter ( max_bhel =          96 )
      include "coupl.inc"
C  
C COLOR DATA
C  
      DATA Denom(1  )/            1/                                       
      DATA (CF(i,1  ),i=1  ,2  ) /    12,    0/                            
C               T[ 2, 1, 6]T[ 4, 5]                                        
      DATA Denom(2  )/            1/                                       
      DATA (CF(i,2  ),i=1  ,2  ) /     0,   12/                            
C               T[ 2, 1]T[ 4, 5, 6]                                        
C ----------
C BEGIN CODE
C ----------
      CALL IXXXXX(P(0,1   ),ZERO ,NHEL(1   ),+1*IC(1   ),W(1,1   ))        
      CALL OXXXXX(P(0,2   ),ZERO ,NHEL(2   ),-1*IC(2   ),W(1,2   ))        
      CALL VXXXXX(P(0,3   ),WMASS ,NHEL(3   ),+1*IC(3   ),W(1,3   ))       
      CALL OXXXXX(P(0,4   ),TMASS ,NHEL(4   ),+1*IC(4   ),W(1,4   ))       
      CALL IXXXXX(P(0,5   ),TMASS ,NHEL(5   ),-1*IC(5   ),W(1,5   ))       
      CALL VXXXXX(P(0,6   ),ZERO ,NHEL(6   ),+1*IC(6   ),W(1,6   ))        
      CALL FVOXXX(W(1,2   ),W(1,3   ),GWF ,ZERO    ,ZERO    ,W(1,7   ))    
      CALL JIOXXX(W(1,5   ),W(1,4   ),GAU ,ZERO    ,AWIDTH  ,W(1,8   ))    
      CALL FVOXXX(W(1,7   ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,9   ))    
      CALL IOVXXX(W(1,1   ),W(1,9   ),W(1,6   ),GG ,AMP(1   ))             
      CALL JIOXXX(W(1,5   ),W(1,4   ),GZU ,ZMASS   ,ZWIDTH  ,W(1,10  ))    
      CALL FVOXXX(W(1,7   ),W(1,10  ),GZD ,ZERO    ,ZERO    ,W(1,11  ))    
      CALL IOVXXX(W(1,1   ),W(1,11  ),W(1,6   ),GG ,AMP(2   ))             
      CALL FVIXXX(W(1,1   ),W(1,8   ),GAD ,ZERO    ,ZERO    ,W(1,12  ))    
      CALL FVIXXX(W(1,12  ),W(1,3   ),GWF ,ZERO    ,ZERO    ,W(1,13  ))    
      CALL IOVXXX(W(1,13  ),W(1,2   ),W(1,6   ),GG ,AMP(3   ))             
      CALL FVIXXX(W(1,1   ),W(1,10  ),GZD ,ZERO    ,ZERO    ,W(1,14  ))    
      CALL FVIXXX(W(1,14  ),W(1,3   ),GWF ,ZERO    ,ZERO    ,W(1,15  ))    
      CALL IOVXXX(W(1,15  ),W(1,2   ),W(1,6   ),GG ,AMP(4   ))             
      CALL JIOXXX(W(1,1   ),W(1,7   ),GAD ,ZERO    ,AWIDTH  ,W(1,16  ))    
      CALL FVIXXX(W(1,5   ),W(1,16  ),GAU ,TMASS   ,TWIDTH  ,W(1,17  ))    
      CALL IOVXXX(W(1,17  ),W(1,4   ),W(1,6   ),GG ,AMP(5   ))             
      CALL JIOXXX(W(1,1   ),W(1,7   ),GZD ,ZMASS   ,ZWIDTH  ,W(1,18  ))    
      CALL FVIXXX(W(1,5   ),W(1,18  ),GZU ,TMASS   ,TWIDTH  ,W(1,19  ))    
      CALL IOVXXX(W(1,19  ),W(1,4   ),W(1,6   ),GG ,AMP(6   ))             
      CALL FVOXXX(W(1,4   ),W(1,16  ),GAU ,TMASS   ,TWIDTH  ,W(1,20  ))    
      CALL IOVXXX(W(1,5   ),W(1,20  ),W(1,6   ),GG ,AMP(7   ))             
      CALL FVOXXX(W(1,4   ),W(1,18  ),GZU ,TMASS   ,TWIDTH  ,W(1,21  ))    
      CALL IOVXXX(W(1,5   ),W(1,21  ),W(1,6   ),GG ,AMP(8   ))             
      CALL IOVXXX(W(1,12  ),W(1,7   ),W(1,6   ),GG ,AMP(9   ))             
      CALL IOVXXX(W(1,14  ),W(1,7   ),W(1,6   ),GG ,AMP(10  ))             
      CALL FVOXXX(W(1,2   ),W(1,8   ),GAU ,ZERO    ,ZERO    ,W(1,22  ))    
      CALL FVOXXX(W(1,22  ),W(1,3   ),GWF ,ZERO    ,ZERO    ,W(1,23  ))    
      CALL IOVXXX(W(1,1   ),W(1,23  ),W(1,6   ),GG ,AMP(11  ))             
      CALL FVOXXX(W(1,2   ),W(1,10  ),GZU ,ZERO    ,ZERO    ,W(1,24  ))    
      CALL FVOXXX(W(1,24  ),W(1,3   ),GWF ,ZERO    ,ZERO    ,W(1,25  ))    
      CALL IOVXXX(W(1,1   ),W(1,25  ),W(1,6   ),GG ,AMP(12  ))             
      CALL FVIXXX(W(1,1   ),W(1,3   ),GWF ,ZERO    ,ZERO    ,W(1,26  ))    
      CALL FVIXXX(W(1,26  ),W(1,8   ),GAU ,ZERO    ,ZERO    ,W(1,27  ))    
      CALL IOVXXX(W(1,27  ),W(1,2   ),W(1,6   ),GG ,AMP(13  ))             
      CALL FVIXXX(W(1,26  ),W(1,10  ),GZU ,ZERO    ,ZERO    ,W(1,28  ))    
      CALL IOVXXX(W(1,28  ),W(1,2   ),W(1,6   ),GG ,AMP(14  ))             
      CALL JIOXXX(W(1,26  ),W(1,2   ),GAU ,ZERO    ,AWIDTH  ,W(1,29  ))    
      CALL FVIXXX(W(1,5   ),W(1,29  ),GAU ,TMASS   ,TWIDTH  ,W(1,30  ))    
      CALL IOVXXX(W(1,30  ),W(1,4   ),W(1,6   ),GG ,AMP(15  ))             
      CALL JIOXXX(W(1,26  ),W(1,2   ),GZU ,ZMASS   ,ZWIDTH  ,W(1,31  ))    
      CALL FVIXXX(W(1,5   ),W(1,31  ),GZU ,TMASS   ,TWIDTH  ,W(1,32  ))    
      CALL IOVXXX(W(1,32  ),W(1,4   ),W(1,6   ),GG ,AMP(16  ))             
      CALL FVOXXX(W(1,4   ),W(1,29  ),GAU ,TMASS   ,TWIDTH  ,W(1,33  ))    
      CALL IOVXXX(W(1,5   ),W(1,33  ),W(1,6   ),GG ,AMP(17  ))             
      CALL FVOXXX(W(1,4   ),W(1,31  ),GZU ,TMASS   ,TWIDTH  ,W(1,34  ))    
      CALL IOVXXX(W(1,5   ),W(1,34  ),W(1,6   ),GG ,AMP(18  ))             
      CALL IOVXXX(W(1,26  ),W(1,22  ),W(1,6   ),GG ,AMP(19  ))             
      CALL IOVXXX(W(1,26  ),W(1,24  ),W(1,6   ),GG ,AMP(20  ))             
      CALL JVVXXX(W(1,8   ),W(1,3   ),GWWA ,WMASS   ,WWIDTH  ,W(1,         
     &     35  ))                                                          
      CALL FVOXXX(W(1,2   ),W(1,35  ),GWF ,ZERO    ,ZERO    ,W(1,36  ))    
      CALL IOVXXX(W(1,1   ),W(1,36  ),W(1,6   ),GG ,AMP(21  ))             
      CALL JVVXXX(W(1,10  ),W(1,3   ),GWWZ ,WMASS   ,WWIDTH  ,W(1,         
     &     37  ))                                                          
      CALL FVOXXX(W(1,2   ),W(1,37  ),GWF ,ZERO    ,ZERO    ,W(1,38  ))    
      CALL IOVXXX(W(1,1   ),W(1,38  ),W(1,6   ),GG ,AMP(22  ))             
      CALL HIOXXX(W(1,5   ),W(1,4   ),GHTOP ,HMASS   ,HWIDTH  ,W(1,        
     &     39  ))                                                          
      CALL JVSXXX(W(1,3   ),W(1,39  ),GWWH ,WMASS   ,WWIDTH  ,W(1,         
     &     40  ))                                                          
      CALL FVOXXX(W(1,2   ),W(1,40  ),GWF ,ZERO    ,ZERO    ,W(1,41  ))    
      CALL IOVXXX(W(1,1   ),W(1,41  ),W(1,6   ),GG ,AMP(23  ))             
      CALL FVIXXX(W(1,1   ),W(1,35  ),GWF ,ZERO    ,ZERO    ,W(1,42  ))    
      CALL IOVXXX(W(1,42  ),W(1,2   ),W(1,6   ),GG ,AMP(24  ))             
      CALL FVIXXX(W(1,1   ),W(1,37  ),GWF ,ZERO    ,ZERO    ,W(1,43  ))    
      CALL IOVXXX(W(1,43  ),W(1,2   ),W(1,6   ),GG ,AMP(25  ))             
      CALL FVIXXX(W(1,1   ),W(1,40  ),GWF ,ZERO    ,ZERO    ,W(1,44  ))    
      CALL IOVXXX(W(1,44  ),W(1,2   ),W(1,6   ),GG ,AMP(26  ))             
      CALL JIOXXX(W(1,1   ),W(1,2   ),GWF ,WMASS   ,WWIDTH  ,W(1,45  ))    
      CALL JVVXXX(W(1,3   ),W(1,45  ),GWWA ,ZERO    ,AWIDTH  ,W(1,         
     &     46  ))                                                          
      CALL FVIXXX(W(1,5   ),W(1,46  ),GAU ,TMASS   ,TWIDTH  ,W(1,47  ))    
      CALL IOVXXX(W(1,47  ),W(1,4   ),W(1,6   ),GG ,AMP(27  ))             
      CALL JVVXXX(W(1,3   ),W(1,45  ),GWWZ ,ZMASS   ,ZWIDTH  ,W(1,         
     &     48  ))                                                          
      CALL FVIXXX(W(1,5   ),W(1,48  ),GZU ,TMASS   ,TWIDTH  ,W(1,49  ))    
      CALL IOVXXX(W(1,49  ),W(1,4   ),W(1,6   ),GG ,AMP(28  ))             
      CALL HVVXXX(W(1,3   ),W(1,45  ),GWWH ,HMASS   ,HWIDTH  ,W(1,         
     &     50  ))                                                          
      CALL FSIXXX(W(1,5   ),W(1,50  ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     51  ))                                                          
      CALL IOVXXX(W(1,51  ),W(1,4   ),W(1,6   ),GG ,AMP(29  ))             
      CALL FVOXXX(W(1,4   ),W(1,46  ),GAU ,TMASS   ,TWIDTH  ,W(1,52  ))    
      CALL IOVXXX(W(1,5   ),W(1,52  ),W(1,6   ),GG ,AMP(30  ))             
      CALL FVOXXX(W(1,4   ),W(1,48  ),GZU ,TMASS   ,TWIDTH  ,W(1,53  ))    
      CALL IOVXXX(W(1,5   ),W(1,53  ),W(1,6   ),GG ,AMP(31  ))             
      CALL FSOXXX(W(1,4   ),W(1,50  ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     54  ))                                                          
      CALL IOVXXX(W(1,5   ),W(1,54  ),W(1,6   ),GG ,AMP(32  ))             
      CALL FVOXXX(W(1,4   ),W(1,3   ),GWF ,ZERO    ,ZERO    ,W(1,55  ))    
      CALL JIOXXX(W(1,5   ),W(1,55  ),GWF ,WMASS   ,WWIDTH  ,W(1,56  ))    
      CALL FVOXXX(W(1,2   ),W(1,56  ),GWF ,ZERO    ,ZERO    ,W(1,57  ))    
      CALL IOVXXX(W(1,1   ),W(1,57  ),W(1,6   ),GG ,AMP(33  ))             
      CALL FVIXXX(W(1,1   ),W(1,56  ),GWF ,ZERO    ,ZERO    ,W(1,58  ))    
      CALL IOVXXX(W(1,58  ),W(1,2   ),W(1,6   ),GG ,AMP(34  ))             
      CALL FVIXXX(W(1,5   ),W(1,45  ),GWF ,ZERO    ,ZERO    ,W(1,59  ))    
      CALL FVIXXX(W(1,59  ),W(1,3   ),GWF ,TMASS   ,TWIDTH  ,W(1,60  ))    
      CALL IOVXXX(W(1,60  ),W(1,4   ),W(1,6   ),GG ,AMP(35  ))             
      CALL FVOXXX(W(1,55  ),W(1,45  ),GWF ,TMASS   ,TWIDTH  ,W(1,61  ))    
      CALL IOVXXX(W(1,5   ),W(1,61  ),W(1,6   ),GG ,AMP(36  ))             
      CALL IOVXXX(W(1,59  ),W(1,55  ),W(1,6   ),GG ,AMP(37  ))             
      JAMP(   1) = -AMP(   1)-AMP(   2)-AMP(   3)-AMP(   4)-AMP(   9)
     &             -AMP(  10)-AMP(  11)-AMP(  12)-AMP(  13)-AMP(  14)
     &             -AMP(  19)-AMP(  20)-AMP(  21)-AMP(  22)-AMP(  23)
     &             -AMP(  24)-AMP(  25)-AMP(  26)-AMP(  33)-AMP(  34)
      JAMP(   2) = -AMP(   5)-AMP(   6)-AMP(   7)-AMP(   8)-AMP(  15)
     &             -AMP(  16)-AMP(  17)-AMP(  18)-AMP(  27)-AMP(  28)
     &             -AMP(  29)-AMP(  30)-AMP(  31)-AMP(  32)-AMP(  35)
     &             -AMP(  36)-AMP(  37)
      REALMTRX_007 = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP = (0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          REALMTRX_007 =REALMTRX_007+ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO
      Do I = 1, NGRAPHS
          amp2(i)=amp2(i)+amp(i)*dconjg(amp(i))
      Enddo
      Do I = 1, NCOLOR
          Jamp2(i)=Jamp2(i)+Jamp(i)*dconjg(Jamp(i))
      Enddo
      END
       
       
