      SUBROUTINE SREALMTRX_014(P1,ANS)
C  
C Generated by MadGraph II                                              
C MadGraph StandAlone Version
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : d d~ -> el- el+ d d~  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      Include "nexternal.inc"
      INTEGER                 NCOMB,     NCROSS         
      PARAMETER (             NCOMB=  16, NCROSS=  1)
      INTEGER    THEL
      PARAMETER (THEL=NCOMB*NCROSS)
      INTEGER NGRAPHS
      PARAMETER (NGRAPHS=  16)
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
      REAL*8 REALMTRX_014
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
      common/to_Ramps_014/  amp2,       jamp2

      integer j,jj
      integer max_bhel
      parameter ( max_bhel =          16 )

      INTEGER NCOLOR
      DATA NCOLOR   /   2/          
      DATA GOODHEL/THEL*.FALSE./
      DATA (NHEL(IHEL,   1),IHEL=1, 6) /-1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,   2),IHEL=1, 6) /-1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,   3),IHEL=1, 6) /-1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,   4),IHEL=1, 6) /-1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,   5),IHEL=1, 6) /-1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,   6),IHEL=1, 6) /-1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,   7),IHEL=1, 6) /-1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,   8),IHEL=1, 6) /-1, 1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,   9),IHEL=1, 6) / 1,-1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  10),IHEL=1, 6) / 1,-1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  11),IHEL=1, 6) / 1,-1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  12),IHEL=1, 6) / 1,-1,-1,-1, 1, 1/
      DATA (NHEL(IHEL,  13),IHEL=1, 6) / 1, 1,-1,-1,-1,-1/
      DATA (NHEL(IHEL,  14),IHEL=1, 6) / 1, 1,-1,-1,-1, 1/
      DATA (NHEL(IHEL,  15),IHEL=1, 6) / 1, 1,-1,-1, 1,-1/
      DATA (NHEL(IHEL,  16),IHEL=1, 6) / 1, 1,-1,-1, 1, 1/
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
                 T=REALMTRX_014(P1,NHEL(1,IHEL),IHEL,JC(1))              
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
       
       
      REAL*8 FUNCTION REALMTRX_014(P,NHEL,HELL,IC)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : d d~ -> el- el+ d d~  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER (NGRAPHS=  16,NEIGEN=  2) 
      include "nexternal.inc"
      INTEGER    NWAVEFUNCS     , NCOLOR
      PARAMETER (NWAVEFUNCS=  26, NCOLOR=   2) 
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
      common/to_Ramps_014/  amp2,       jamp2
      integer max_bhel
      parameter ( max_bhel =          16 )
      include "coupl.inc"
C  
C COLOR DATA
C  
      DATA Denom(1  )/            3/                                       
      DATA (CF(i,1  ),i=1  ,2  ) /     6,   -2/                            
C               T[ 5, 1]T[ 2, 6]                                           
      DATA Denom(2  )/            3/                                       
      DATA (CF(i,2  ),i=1  ,2  ) /    -2,    6/                            
C               T[ 5, 6]T[ 2, 1]                                           
C ----------
C BEGIN CODE
C ----------
      CALL IXXXXX(P(0,1   ),ZERO ,NHEL(1   ),+1*IC(1   ),W(1,1   ))        
      CALL OXXXXX(P(0,2   ),ZERO ,NHEL(2   ),-1*IC(2   ),W(1,2   ))        
      CALL SXXXXX(P(0,3   ),+1*IC(3   ),W(1,3   ))                         
      CALL SXXXXX(P(0,4   ),+1*IC(4   ),W(1,4   ))                         
      CALL OXXXXX(P(0,5   ),ZERO ,NHEL(5   ),+1*IC(5   ),W(1,5   ))        
      CALL IXXXXX(P(0,6   ),ZERO ,NHEL(6   ),-1*IC(6   ),W(1,6   ))        
      CALL JSSXXX(W(1,3   ),W(1,4   ),GAELEL ,ZERO    ,AWIDTH  ,W(1,       
     &     7   ))                                                          
      CALL FVOXXX(W(1,2   ),W(1,7   ),GAD ,ZERO    ,ZERO    ,W(1,8   ))    
      CALL JIOXXX(W(1,1   ),W(1,8   ),GG ,ZERO    ,ZERO    ,W(1,9   ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,9   ),GG ,AMP(1   ))             
      CALL JSSXXX(W(1,3   ),W(1,4   ),GZELEL ,ZMASS   ,ZWIDTH  ,W(1,       
     &     10  ))                                                          
      CALL FVOXXX(W(1,2   ),W(1,10  ),GZD ,ZERO    ,ZERO    ,W(1,11  ))    
      CALL JIOXXX(W(1,1   ),W(1,11  ),GG ,ZERO    ,ZERO    ,W(1,12  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,12  ),GG ,AMP(2   ))             
      CALL FVIXXX(W(1,1   ),W(1,7   ),GAD ,ZERO    ,ZERO    ,W(1,13  ))    
      CALL JIOXXX(W(1,13  ),W(1,2   ),GG ,ZERO    ,ZERO    ,W(1,14  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,14  ),GG ,AMP(3   ))             
      CALL FVIXXX(W(1,1   ),W(1,10  ),GZD ,ZERO    ,ZERO    ,W(1,15  ))    
      CALL JIOXXX(W(1,15  ),W(1,2   ),GG ,ZERO    ,ZERO    ,W(1,16  ))     
      CALL IOVXXX(W(1,6   ),W(1,5   ),W(1,16  ),GG ,AMP(4   ))             
      CALL JIOXXX(W(1,1   ),W(1,2   ),GG ,ZERO    ,ZERO    ,W(1,17  ))     
      CALL FVOXXX(W(1,5   ),W(1,7   ),GAD ,ZERO    ,ZERO    ,W(1,18  ))    
      CALL IOVXXX(W(1,6   ),W(1,18  ),W(1,17  ),GG ,AMP(5   ))             
      CALL FVOXXX(W(1,5   ),W(1,10  ),GZD ,ZERO    ,ZERO    ,W(1,19  ))    
      CALL IOVXXX(W(1,6   ),W(1,19  ),W(1,17  ),GG ,AMP(6   ))             
      CALL FVOXXX(W(1,5   ),W(1,17  ),GG ,ZERO    ,ZERO    ,W(1,20  ))     
      CALL IOVXXX(W(1,6   ),W(1,20  ),W(1,7   ),GAD ,AMP(7   ))            
      CALL IOVXXX(W(1,6   ),W(1,20  ),W(1,10  ),GZD ,AMP(8   ))            
      CALL JIOXXX(W(1,1   ),W(1,5   ),GG ,ZERO    ,ZERO    ,W(1,21  ))     
      CALL FVOXXX(W(1,2   ),W(1,21  ),GG ,ZERO    ,ZERO    ,W(1,22  ))     
      CALL IOVXXX(W(1,6   ),W(1,22  ),W(1,7   ),GAD ,AMP(9   ))            
      CALL IOVXXX(W(1,6   ),W(1,22  ),W(1,10  ),GZD ,AMP(10  ))            
      CALL IOVXXX(W(1,6   ),W(1,8   ),W(1,21  ),GG ,AMP(11  ))             
      CALL IOVXXX(W(1,6   ),W(1,11  ),W(1,21  ),GG ,AMP(12  ))             
      CALL JIOXXX(W(1,13  ),W(1,5   ),GG ,ZERO    ,ZERO    ,W(1,23  ))     
      CALL IOVXXX(W(1,6   ),W(1,2   ),W(1,23  ),GG ,AMP(13  ))             
      CALL JIOXXX(W(1,15  ),W(1,5   ),GG ,ZERO    ,ZERO    ,W(1,24  ))     
      CALL IOVXXX(W(1,6   ),W(1,2   ),W(1,24  ),GG ,AMP(14  ))             
      CALL JIOXXX(W(1,1   ),W(1,18  ),GG ,ZERO    ,ZERO    ,W(1,25  ))     
      CALL IOVXXX(W(1,6   ),W(1,2   ),W(1,25  ),GG ,AMP(15  ))             
      CALL JIOXXX(W(1,1   ),W(1,19  ),GG ,ZERO    ,ZERO    ,W(1,26  ))     
      CALL IOVXXX(W(1,6   ),W(1,2   ),W(1,26  ),GG ,AMP(16  ))             
      JAMP(   1) = -AMP(   1)-AMP(   2)-AMP(   3)-AMP(   4)-AMP(   5)
     &             -AMP(   6)-AMP(   7)-AMP(   8)
      JAMP(   2) = +AMP(   9)+AMP(  10)+AMP(  11)+AMP(  12)+AMP(  13)
     &             +AMP(  14)+AMP(  15)+AMP(  16)
      REALMTRX_014 = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP = (0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          REALMTRX_014 =REALMTRX_014+ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO
      Do I = 1, NGRAPHS
          amp2(i)=amp2(i)+amp(i)*dconjg(amp(i))
      Enddo
      Do I = 1, NCOLOR
          Jamp2(i)=Jamp2(i)+Jamp(i)*dconjg(Jamp(i))
      Enddo
      END
       
       
