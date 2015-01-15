      SUBROUTINE SREALMTRX_025(P1,ANS)
C  
C Generated by MadGraph II                                              
C MadGraph StandAlone Version
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : g g -> h t t~ g  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      Include "nexternal.inc"
      INTEGER                 NCOMB,     NCROSS         
      PARAMETER (             NCOMB=  32, NCROSS=  1)
      INTEGER    THEL
      PARAMETER (THEL=NCOMB*NCROSS)
      INTEGER NGRAPHS
      PARAMETER (NGRAPHS=  54)
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
      REAL*8 REALMTRX_025
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
      common/to_Ramps_025/  amp2,       jamp2

      integer j,jj
      integer max_bhel
      parameter ( max_bhel =          32 )

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
      DATA (NHEL(IHEL,   9),IHEL=1, 6) /-1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  10),IHEL=1, 6) /-1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  11),IHEL=1, 6) /-1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  12),IHEL=1, 6) /-1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  13),IHEL=1, 6) /-1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  14),IHEL=1, 6) /-1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  15),IHEL=1, 6) /-1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  16),IHEL=1, 6) /-1, 1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  17),IHEL=1, 6) / 1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  18),IHEL=1, 6) / 1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  19),IHEL=1, 6) / 1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  20),IHEL=1, 6) / 1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  21),IHEL=1, 6) / 1,-1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  22),IHEL=1, 6) / 1,-1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  23),IHEL=1, 6) / 1,-1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  24),IHEL=1, 6) / 1,-1,-1, 1, 1, 1/
      DATA (NHEL(IHEL,  25),IHEL=1, 6) / 1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  26),IHEL=1, 6) / 1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  27),IHEL=1, 6) / 1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  28),IHEL=1, 6) / 1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  29),IHEL=1, 6) / 1, 1,-1, 1,-1,-1/
      DATA (NHEL(IHEL,  30),IHEL=1, 6) / 1, 1,-1, 1,-1, 1/
      DATA (NHEL(IHEL,  31),IHEL=1, 6) / 1, 1,-1, 1, 1,-1/
      DATA (NHEL(IHEL,  32),IHEL=1, 6) / 1, 1,-1, 1, 1, 1/
      DATA (  IC(IHEL,  1),IHEL=1, 6) / 1, 2, 3, 4, 5, 6/
      DATA (IDEN(IHEL),IHEL=  1,  1) / 256/
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
                 T=REALMTRX_025(P1,NHEL(1,IHEL),IHEL,JC(1))              
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
       
       
      REAL*8 FUNCTION REALMTRX_025(P,NHEL,HELL,IC)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : g g -> h t t~ g  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER (NGRAPHS=  54,NEIGEN=  6) 
      include "nexternal.inc"
      INTEGER    NWAVEFUNCS     , NCOLOR
      PARAMETER (NWAVEFUNCS=  61, NCOLOR=   6) 
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
      common/to_Ramps_025/  amp2,       jamp2
      integer max_bhel
      parameter ( max_bhel =          32 )
      include "coupl.inc"
C  
C COLOR DATA
C  
      DATA Denom(1  )/            9/                                       
      DATA (CF(i,1  ),i=1  ,6  ) /    64,   -8,   -8,    1,   10,    1/    
C               T[ 4, 5, 1, 6, 2]                                          
      DATA Denom(2  )/            9/                                       
      DATA (CF(i,2  ),i=1  ,6  ) /    -8,   64,    1,   10,    1,   -8/    
C               T[ 4, 5, 6, 1, 2]                                          
      DATA Denom(3  )/            9/                                       
      DATA (CF(i,3  ),i=1  ,6  ) /    -8,    1,   64,   -8,    1,   10/    
C               T[ 4, 5, 1, 2, 6]                                          
      DATA Denom(4  )/            9/                                       
      DATA (CF(i,4  ),i=1  ,6  ) /     1,   10,   -8,   64,   -8,    1/    
C               T[ 4, 5, 2, 1, 6]                                          
      DATA Denom(5  )/            9/                                       
      DATA (CF(i,5  ),i=1  ,6  ) /    10,    1,    1,   -8,   64,   -8/    
C               T[ 4, 5, 2, 6, 1]                                          
      DATA Denom(6  )/            9/                                       
      DATA (CF(i,6  ),i=1  ,6  ) /     1,   -8,   10,    1,   -8,   64/    
C               T[ 4, 5, 6, 2, 1]                                          
C ----------
C BEGIN CODE
C ----------

c test only:
c      twidth = 0d0


      CALL VXXXXX(P(0,1   ),ZERO ,NHEL(1   ),-1*IC(1   ),W(1,1   ))        
      CALL VXXXXX(P(0,2   ),ZERO ,NHEL(2   ),-1*IC(2   ),W(1,2   ))        
      CALL SXXXXX(P(0,3   ),+1*IC(3   ),W(1,3   ))                         
      CALL OXXXXX(P(0,4   ),TMASS ,NHEL(4   ),+1*IC(4   ),W(1,4   ))       
      CALL IXXXXX(P(0,5   ),TMASS ,NHEL(5   ),-1*IC(5   ),W(1,5   ))       
      CALL VXXXXX(P(0,6   ),ZERO ,NHEL(6   ),+1*IC(6   ),W(1,6   ))        
      CALL FVIXXX(W(1,5   ),W(1,2   ),GG ,TMASS   ,TWIDTH  ,W(1,7   ))     
      CALL FSIXXX(W(1,7   ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     8   ))                                                          
      CALL JIOXXX(W(1,8   ),W(1,4   ),GG ,ZERO    ,ZERO    ,W(1,9   ))     
      CALL VVVXXX(W(1,6   ),W(1,1   ),W(1,9   ),G ,AMP(1   ))              
      CALL FVOXXX(W(1,4   ),W(1,1   ),GG ,TMASS   ,TWIDTH  ,W(1,10  ))     
      CALL FSOXXX(W(1,10  ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     11  ))                                                          
      CALL JIOXXX(W(1,5   ),W(1,11  ),GG ,ZERO    ,ZERO    ,W(1,12  ))     
      CALL VVVXXX(W(1,6   ),W(1,2   ),W(1,12  ),G ,AMP(2   ))              
      CALL FVIXXX(W(1,8   ),W(1,1   ),GG ,TMASS   ,TWIDTH  ,W(1,13  ))     
      CALL IOVXXX(W(1,13  ),W(1,4   ),W(1,6   ),GG ,AMP(3   ))             
      CALL FVOXXX(W(1,11  ),W(1,2   ),GG ,TMASS   ,TWIDTH  ,W(1,14  ))     
      CALL IOVXXX(W(1,5   ),W(1,14  ),W(1,6   ),GG ,AMP(4   ))             
      CALL IOVXXX(W(1,8   ),W(1,10  ),W(1,6   ),GG ,AMP(5   ))             
      CALL IOVXXX(W(1,7   ),W(1,11  ),W(1,6   ),GG ,AMP(6   ))             
      CALL FSIXXX(W(1,5   ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     15  ))                                                          
      CALL FVIXXX(W(1,15  ),W(1,2   ),GG ,TMASS   ,TWIDTH  ,W(1,16  ))     
      CALL JIOXXX(W(1,16  ),W(1,4   ),GG ,ZERO    ,ZERO    ,W(1,17  ))     
      CALL VVVXXX(W(1,6   ),W(1,1   ),W(1,17  ),G ,AMP(7   ))              
      CALL JIOXXX(W(1,15  ),W(1,10  ),GG ,ZERO    ,ZERO    ,W(1,18  ))     
      CALL VVVXXX(W(1,6   ),W(1,2   ),W(1,18  ),G ,AMP(8   ))              
      CALL FVIXXX(W(1,16  ),W(1,1   ),GG ,TMASS   ,TWIDTH  ,W(1,19  ))     
      CALL IOVXXX(W(1,19  ),W(1,4   ),W(1,6   ),GG ,AMP(9   ))             
      CALL FVOXXX(W(1,10  ),W(1,2   ),GG ,TMASS   ,TWIDTH  ,W(1,20  ))     
      CALL FSOXXX(W(1,20  ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     21  ))                                                          
      CALL IOVXXX(W(1,5   ),W(1,21  ),W(1,6   ),GG ,AMP(10  ))             
      CALL IOVXXX(W(1,16  ),W(1,10  ),W(1,6   ),GG ,AMP(11  ))             
      CALL IOVXXX(W(1,15  ),W(1,20  ),W(1,6   ),GG ,AMP(12  ))             
      CALL FVOXXX(W(1,4   ),W(1,2   ),GG ,TMASS   ,TWIDTH  ,W(1,22  ))     
      CALL FSOXXX(W(1,22  ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     23  ))                                                          
      CALL JIOXXX(W(1,5   ),W(1,23  ),GG ,ZERO    ,ZERO    ,W(1,24  ))     
      CALL VVVXXX(W(1,6   ),W(1,1   ),W(1,24  ),G ,AMP(13  ))              
      CALL FVIXXX(W(1,5   ),W(1,1   ),GG ,TMASS   ,TWIDTH  ,W(1,25  ))     
      CALL FSIXXX(W(1,25  ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     26  ))                                                          
      CALL JIOXXX(W(1,26  ),W(1,4   ),GG ,ZERO    ,ZERO    ,W(1,27  ))     
      CALL VVVXXX(W(1,6   ),W(1,2   ),W(1,27  ),G ,AMP(14  ))              
      CALL FVIXXX(W(1,26  ),W(1,2   ),GG ,TMASS   ,TWIDTH  ,W(1,28  ))     
      CALL IOVXXX(W(1,28  ),W(1,4   ),W(1,6   ),GG ,AMP(15  ))             
      CALL FVOXXX(W(1,23  ),W(1,1   ),GG ,TMASS   ,TWIDTH  ,W(1,29  ))     
      CALL IOVXXX(W(1,5   ),W(1,29  ),W(1,6   ),GG ,AMP(16  ))             
      CALL IOVXXX(W(1,26  ),W(1,22  ),W(1,6   ),GG ,AMP(17  ))             
      CALL IOVXXX(W(1,25  ),W(1,23  ),W(1,6   ),GG ,AMP(18  ))             
      CALL JIOXXX(W(1,15  ),W(1,22  ),GG ,ZERO    ,ZERO    ,W(1,30  ))     
      CALL VVVXXX(W(1,6   ),W(1,1   ),W(1,30  ),G ,AMP(19  ))              
      CALL FVIXXX(W(1,15  ),W(1,1   ),GG ,TMASS   ,TWIDTH  ,W(1,31  ))     
      CALL JIOXXX(W(1,31  ),W(1,4   ),GG ,ZERO    ,ZERO    ,W(1,32  ))     
      CALL VVVXXX(W(1,6   ),W(1,2   ),W(1,32  ),G ,AMP(20  ))              
      CALL FVIXXX(W(1,31  ),W(1,2   ),GG ,TMASS   ,TWIDTH  ,W(1,33  ))     
      CALL IOVXXX(W(1,33  ),W(1,4   ),W(1,6   ),GG ,AMP(21  ))             
      CALL FVOXXX(W(1,22  ),W(1,1   ),GG ,TMASS   ,TWIDTH  ,W(1,34  ))     
      CALL FSOXXX(W(1,34  ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     35  ))                                                          
      CALL IOVXXX(W(1,5   ),W(1,35  ),W(1,6   ),GG ,AMP(22  ))             
      CALL IOVXXX(W(1,31  ),W(1,22  ),W(1,6   ),GG ,AMP(23  ))             
      CALL IOVXXX(W(1,15  ),W(1,34  ),W(1,6   ),GG ,AMP(24  ))             
      CALL FSOXXX(W(1,4   ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     36  ))                                                          
      CALL FVOXXX(W(1,36  ),W(1,2   ),GG ,TMASS   ,TWIDTH  ,W(1,37  ))     
      CALL JIOXXX(W(1,5   ),W(1,37  ),GG ,ZERO    ,ZERO    ,W(1,38  ))     
      CALL VVVXXX(W(1,6   ),W(1,1   ),W(1,38  ),G ,AMP(25  ))              
      CALL JIOXXX(W(1,25  ),W(1,36  ),GG ,ZERO    ,ZERO    ,W(1,39  ))     
      CALL VVVXXX(W(1,6   ),W(1,2   ),W(1,39  ),G ,AMP(26  ))              
      CALL FVIXXX(W(1,25  ),W(1,2   ),GG ,TMASS   ,TWIDTH  ,W(1,40  ))     
      CALL FSIXXX(W(1,40  ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     41  ))                                                          
      CALL IOVXXX(W(1,41  ),W(1,4   ),W(1,6   ),GG ,AMP(27  ))             
      CALL FVOXXX(W(1,37  ),W(1,1   ),GG ,TMASS   ,TWIDTH  ,W(1,42  ))     
      CALL IOVXXX(W(1,5   ),W(1,42  ),W(1,6   ),GG ,AMP(28  ))             
      CALL IOVXXX(W(1,40  ),W(1,36  ),W(1,6   ),GG ,AMP(29  ))             
      CALL IOVXXX(W(1,25  ),W(1,37  ),W(1,6   ),GG ,AMP(30  ))             
      CALL JIOXXX(W(1,7   ),W(1,36  ),GG ,ZERO    ,ZERO    ,W(1,43  ))     
      CALL VVVXXX(W(1,6   ),W(1,1   ),W(1,43  ),G ,AMP(31  ))              
      CALL FVOXXX(W(1,36  ),W(1,1   ),GG ,TMASS   ,TWIDTH  ,W(1,44  ))     
      CALL JIOXXX(W(1,5   ),W(1,44  ),GG ,ZERO    ,ZERO    ,W(1,45  ))     
      CALL VVVXXX(W(1,6   ),W(1,2   ),W(1,45  ),G ,AMP(32  ))              
      CALL FVIXXX(W(1,7   ),W(1,1   ),GG ,TMASS   ,TWIDTH  ,W(1,46  ))     
      CALL FSIXXX(W(1,46  ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     47  ))                                                          
      CALL IOVXXX(W(1,47  ),W(1,4   ),W(1,6   ),GG ,AMP(33  ))             
      CALL FVOXXX(W(1,44  ),W(1,2   ),GG ,TMASS   ,TWIDTH  ,W(1,48  ))     
      CALL IOVXXX(W(1,5   ),W(1,48  ),W(1,6   ),GG ,AMP(34  ))             
      CALL IOVXXX(W(1,46  ),W(1,36  ),W(1,6   ),GG ,AMP(35  ))             
      CALL IOVXXX(W(1,7   ),W(1,44  ),W(1,6   ),GG ,AMP(36  ))             
      CALL JIOXXX(W(1,15  ),W(1,4   ),GG ,ZERO    ,ZERO    ,W(1,49  ))     
      CALL JVVXXX(W(1,49  ),W(1,2   ),G ,ZERO    ,ZERO    ,W(1,50  ))      
      CALL VVVXXX(W(1,6   ),W(1,1   ),W(1,50  ),G ,AMP(37  ))              
      CALL JVVXXX(W(1,1   ),W(1,49  ),G ,ZERO    ,ZERO    ,W(1,51  ))      
      CALL VVVXXX(W(1,6   ),W(1,2   ),W(1,51  ),G ,AMP(38  ))              
      CALL JVVXXX(W(1,1   ),W(1,2   ),G ,ZERO    ,ZERO    ,W(1,52  ))      
      CALL FVIXXX(W(1,15  ),W(1,52  ),GG ,TMASS   ,TWIDTH  ,W(1,53  ))     
      CALL IOVXXX(W(1,53  ),W(1,4   ),W(1,6   ),GG ,AMP(39  ))             
      CALL FVOXXX(W(1,4   ),W(1,52  ),GG ,TMASS   ,TWIDTH  ,W(1,54  ))     
      CALL FSOXXX(W(1,54  ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     55  ))                                                          
      CALL IOVXXX(W(1,5   ),W(1,55  ),W(1,6   ),GG ,AMP(40  ))             
      CALL GGGGXX(W(1,1   ),W(1,2   ),W(1,49  ),W(1,6   ),G ,AMP(41  ))    
      CALL GGGGXX(W(1,49  ),W(1,1   ),W(1,2   ),W(1,6   ),G ,AMP(42  ))    
      CALL GGGGXX(W(1,2   ),W(1,49  ),W(1,1   ),W(1,6   ),G ,AMP(43  ))    
      CALL VVVXXX(W(1,6   ),W(1,52  ),W(1,49  ),G ,AMP(44  ))              
      CALL IOVXXX(W(1,15  ),W(1,54  ),W(1,6   ),GG ,AMP(45  ))             
      CALL JIOXXX(W(1,5   ),W(1,36  ),GG ,ZERO    ,ZERO    ,W(1,56  ))     
      CALL JVVXXX(W(1,56  ),W(1,2   ),G ,ZERO    ,ZERO    ,W(1,57  ))      
      CALL VVVXXX(W(1,6   ),W(1,1   ),W(1,57  ),G ,AMP(46  ))              
      CALL JVVXXX(W(1,1   ),W(1,56  ),G ,ZERO    ,ZERO    ,W(1,58  ))      
      CALL VVVXXX(W(1,6   ),W(1,2   ),W(1,58  ),G ,AMP(47  ))              
      CALL FVIXXX(W(1,5   ),W(1,52  ),GG ,TMASS   ,TWIDTH  ,W(1,59  ))     
      CALL FSIXXX(W(1,59  ),W(1,3   ),GHTOP ,TMASS   ,TWIDTH  ,W(1,        
     &     60  ))                                                          
      CALL IOVXXX(W(1,60  ),W(1,4   ),W(1,6   ),GG ,AMP(48  ))             
      CALL FVOXXX(W(1,36  ),W(1,52  ),GG ,TMASS   ,TWIDTH  ,W(1,61  ))     
      CALL IOVXXX(W(1,5   ),W(1,61  ),W(1,6   ),GG ,AMP(49  ))             
      CALL GGGGXX(W(1,1   ),W(1,2   ),W(1,56  ),W(1,6   ),G ,AMP(50  ))    
      CALL GGGGXX(W(1,56  ),W(1,1   ),W(1,2   ),W(1,6   ),G ,AMP(51  ))    
      CALL GGGGXX(W(1,2   ),W(1,56  ),W(1,1   ),W(1,6   ),G ,AMP(52  ))    
      CALL VVVXXX(W(1,6   ),W(1,52  ),W(1,56  ),G ,AMP(53  ))              
      CALL IOVXXX(W(1,59  ),W(1,36  ),W(1,6   ),GG ,AMP(54  ))             
      JAMP(   1) = +AMP(   1)-AMP(   2)-AMP(   5)-AMP(   6)+AMP(   7)
     &             -AMP(   8)-AMP(  11)+AMP(  31)-AMP(  32)-AMP(  36)
     &             -AMP(  37)+AMP(  38)-AMP(  42)+AMP(  43)-AMP(  46)
     &             +AMP(  47)-AMP(  51)+AMP(  52)
      JAMP(   2) = -AMP(   1)-AMP(   3)-AMP(   7)-AMP(   9)-AMP(  31)
     &             -AMP(  33)-AMP(  35)+AMP(  37)-AMP(  39)+AMP(  41)
     &             -AMP(  43)-AMP(  44)+AMP(  46)-AMP(  48)+AMP(  50)
     &             -AMP(  52)-AMP(  53)-AMP(  54)
      JAMP(   3) = +AMP(   2)-AMP(   4)+AMP(   8)-AMP(  10)-AMP(  12)
     &             +AMP(  32)-AMP(  34)-AMP(  38)-AMP(  40)-AMP(  41)
     &             +AMP(  42)+AMP(  44)-AMP(  45)-AMP(  47)-AMP(  49)
     &             -AMP(  50)+AMP(  51)+AMP(  53)
      JAMP(   4) = +AMP(  13)-AMP(  16)+AMP(  19)-AMP(  22)-AMP(  24)
     &             +AMP(  25)-AMP(  28)+AMP(  37)+AMP(  40)+AMP(  41)
     &             -AMP(  43)-AMP(  44)+AMP(  45)+AMP(  46)+AMP(  49)
     &             +AMP(  50)-AMP(  52)-AMP(  53)
      JAMP(   5) = -AMP(  13)+AMP(  14)-AMP(  17)-AMP(  18)-AMP(  19)
     &             +AMP(  20)-AMP(  23)-AMP(  25)+AMP(  26)-AMP(  30)
     &             -AMP(  37)+AMP(  38)-AMP(  42)+AMP(  43)-AMP(  46)
     &             +AMP(  47)-AMP(  51)+AMP(  52)
      JAMP(   6) = -AMP(  14)-AMP(  15)-AMP(  20)-AMP(  21)-AMP(  26)
     &             -AMP(  27)-AMP(  29)-AMP(  38)+AMP(  39)-AMP(  41)
     &             +AMP(  42)+AMP(  44)-AMP(  47)+AMP(  48)-AMP(  50)
     &             +AMP(  51)+AMP(  53)+AMP(  54)
      REALMTRX_025 = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP = (0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          REALMTRX_025 =REALMTRX_025+ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO
      Do I = 1, NGRAPHS
          amp2(i)=amp2(i)+amp(i)*dconjg(amp(i))
      Enddo
      Do I = 1, NCOLOR
          Jamp2(i)=Jamp2(i)+Jamp(i)*dconjg(Jamp(i))
      Enddo


      END
       
       
