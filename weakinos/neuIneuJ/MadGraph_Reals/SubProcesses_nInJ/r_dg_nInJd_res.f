      SUBROUTINE SMATRIX_DG_NINJD_RES(P1,CHAN,ANS)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C AND HELICITIES
C FOR THE POINT IN PHASE SPACE P(0:3,NEXTERNAL)
C  
C FOR PROCESS : d g -> ni nj d  
C  
C Crossing   1 is d g -> ni nj d  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      Include "genps.inc"
      Include "nexternal.inc"
      Include "maxamps_ninj.inc"
      INTEGER                 NCOMB,     NCROSS         
      PARAMETER(             NCOMB=  32, NCROSS=  1)
      INTEGER    THEL
      PARAMETER(THEL=NCOMB*NCROSS)
C
C FINAL STATES
#include "finalstate.h"
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
      REAL*8 MATRIX_DG_NINJD_RES
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
      common/to_amps_dg_res/  amp2,       jamp2

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
      DATA NGRAPHS /   14/          
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
C
C Additional goodhel check
C
      INTEGER NTRY1,NTRY2,NTRY3,NTRY4 
      DATA NTRY1,NTRY2,NTRY3,NTRY4 /0,0,0,0/
      LOGICAL GOODHEL1(NCOMB,NCROSS), GOODHEL2(NCOMB,NCROSS)
      LOGICAL GOODHEL3(NCOMB,NCROSS), GOODHEL4(NCOMB,NCROSS)
      DATA GOODHEL1/THEL*.FALSE./
      DATA GOODHEL2/THEL*.FALSE./
      DATA GOODHEL3/THEL*.FALSE./
      DATA GOODHEL4/THEL*.FALSE./

C ----------
C BEGIN CODE
C ----------
      if(CHAN.eq."dl35") then

        NTRY1=NTRY1+1
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
               IF(GOODHEL1(IHEL,IPROC) .OR. NTRY1 .LT. 2) THEN
                   T=MATRIX_DG_NINJD_RES(P,NHEL(1,IHEL),JC(1),CHAN)
                 ANS(IPROC)=ANS(IPROC)+T
                 IF(T .NE. 0D0 .AND. .NOT.    GOODHEL1(IHEL,IPROC)) THEN
                     GOODHEL1(IHEL,IPROC)=.TRUE.
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

      else if(CHAN.eq."dr35") then

        NTRY2=NTRY2+1
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
               IF(GOODHEL2(IHEL,IPROC) .OR. NTRY2 .LT. 2) THEN
                   T=MATRIX_DG_NINJD_RES(P,NHEL(1,IHEL),JC(1),CHAN)
                 ANS(IPROC)=ANS(IPROC)+T
                 IF(T .NE. 0D0 .AND. .NOT.    GOODHEL2(IHEL,IPROC)) THEN
                     GOODHEL2(IHEL,IPROC)=.TRUE.
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

      else if(CHAN.eq."dl45") then

        NTRY3=NTRY3+1
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
               IF(GOODHEL3(IHEL,IPROC) .OR. NTRY3 .LT. 2) THEN
                   T=MATRIX_DG_NINJD_RES(P,NHEL(1,IHEL),JC(1),CHAN)
                 ANS(IPROC)=ANS(IPROC)+T
                 IF(T .NE. 0D0 .AND. .NOT.    GOODHEL3(IHEL,IPROC)) THEN
                     GOODHEL3(IHEL,IPROC)=.TRUE.
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

      else if(CHAN.eq."dr45") then

        NTRY4=NTRY4+1
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
               IF(GOODHEL4(IHEL,IPROC) .OR. NTRY4 .LT. 2) THEN
                   T=MATRIX_DG_NINJD_RES(P,NHEL(1,IHEL),JC(1),CHAN)
                 ANS(IPROC)=ANS(IPROC)+T
                 IF(T .NE. 0D0 .AND. .NOT.    GOODHEL4(IHEL,IPROC)) THEN
                     GOODHEL4(IHEL,IPROC)=.TRUE.
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

      endif

      END


      REAL*8 FUNCTION MATRIX_DG_NINJD_RES(P,NHEL,IC,CHAN)
C  
C Generated by MadGraph II                                              
C RETURNS AMPLITUDE SQUARED SUMMED/AVG OVER COLORS
C FOR THE POINT WITH EXTERNAL LINES W(0:6,NEXTERNAL)
C  
C FOR PROCESS : d g -> ni nj d  
C  
      IMPLICIT NONE
C  
C CONSTANTS
C  
      INTEGER    NGRAPHS,    NEIGEN 
      PARAMETER(NGRAPHS=  14,NEIGEN=  1) 
      include "genps.inc"
      include "nexternal.inc"
      include "maxamps_ninj.inc"
      INTEGER    NWAVEFUNCS, NCOLOR
      PARAMETER(NWAVEFUNCS=  25, NCOLOR=   1) 
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
#include "dsubtraction_ninj.h"
C  
C COLOR DATA
C  
      DATA Denom(1)/            1/                                       
      DATA(CF(i,1),i=1,1) /     4/                                  
C               T[ 5, 1, 2]                                                
C ----------
C BEGIN CODE
C ----------
      CALL IXXXXX(P(0,1),ZERO,NHEL(1),+1*IC(1),W(1,1))        
      CALL VXXXXX(P(0,2),ZERO,NHEL(2),-1*IC(2),W(1,2))        
      CALL OXXXXX(P(0,3),MNI,NHEL(3),+1*IC(3),W(1,3))         
      CALL OXXXXX(P(0,4),MNJ,NHEL(4),+1*IC(4),W(1,4))         
      CALL IXXXXX(P(0,5),ZERO,NHEL(5),-1*IC(5),W(1,5)) 
      
      ! diagram 1
      CALL HIOXXX(W(1,1),W(1,4),GDLNJM,MDL,WDL,W(1,6))                                                          
      CALL FVICXX(W(1,5),W(1,2),GG,ZERO,ZERO,W(1,7))    
      CALL IOSCXX(W(1,7),W(1,3),W(1,6),GDLNIP,AMP(1))    
      ! diagram 2
      CALL HIOXXX(W(1,1),W(1,4),GDRNJM,MDR,WDR,W(1,8))                                                          
      CALL IOSCXX(W(1,7),W(1,3),W(1,8),GDRNIP,AMP(2)) 
      
      ! diagram 3 <- resonant
      CALL HIOCXX(W(1,5),W(1,3),GDLNIP,MDL,WDLR,W(1,9))                                                          
      CALL VSSXXX(W(1,2),W(1,9),W(1,6),GC,AMP(3))       
      ! diagram 4 <- resonant
      CALL HIOCXX(W(1,5),W(1,3),GDRNIP,MDR,WDRR,W(1,10))                                                          
      CALL VSSXXX(W(1,2),W(1,10),W(1,8),GC,AMP(4))       
      
      ! diagram 5 <- resonant
      CALL FVIXXX(W(1,1),W(1,2),GG,ZERO,ZERO,W(1,11))     
      CALL HIOXXX(W(1,11),W(1,4),GDLNJM,MDL,WDLR,W(1,12))                                                          
      CALL IOSCXX(W(1,5),W(1,3),W(1,12),GDLNIP,AMP(5))   
      ! diagram 6 <- resonant
      CALL HIOXXX(W(1,11),W(1,4),GDRNJM,MDR,WDRR,W(1,13))                                                          
      CALL IOSCXX(W(1,5),W(1,3),W(1,13),GDRNIP,AMP(6))     
      
      ! diagram 7
      CALL HIOXXX(W(1,1),W(1,3),GDLNIM,MDL,WDL,W(1,14))                                                          
      CALL FSOCXX(W(1,4),W(1,14),GDLNJP,ZERO,ZERO,W(1,15))                                                          
      CALL IOVCXX(W(1,5),W(1,15),W(1,2),GG,AMP(7))    
      ! diagram 8
      CALL HIOXXX(W(1,1),W(1,3),GDRNIM,MDR,WDR,W(1,16))                                                          
      CALL FSOCXX(W(1,4),W(1,16),GDRNJP,ZERO,ZERO,W(1,17))                                                          
      CALL IOVCXX(W(1,5),W(1,17),W(1,2),GG,AMP(8))     
      
      ! diagram 9 <- resonant
      CALL HVSXXX(W(1,2),W(1,14),-GC,MDL,WDLR,W(1,18))    
      CALL IOSCXX(W(1,5),W(1,4),W(1,18),GDLNJP,AMP(9))  
      ! diagram 10 <- resonant
      CALL HVSXXX(W(1,2),W(1,16),-GC,MDR,WDRR,W(1,19))    
      CALL IOSCXX(W(1,5),W(1,4),W(1,19),GDRNJP,AMP(10))  
      
      ! diagram 11 <- resonant
      CALL HIOXXX(W(1,11),W(1,3),GDLNIM,MDL,WDLR,W(1,20))                                                          
      CALL IOSCXX(W(1,5),W(1,4),W(1,20),GDLNJP,AMP(11)) 
      ! diagram 12 <- resonant
      CALL HIOXXX(W(1,11),W(1,3),GDRNIM,MDR,WDRR,W(1,21))                                                          
      CALL IOSCXX(W(1,5),W(1,4),W(1,21),GDRNJP,AMP(12)) 
      
      ! diagram 13
      CALL IXXXXX(P(0,4),MNJ,NHEL(4),-1*IC(4),W(1,22))         
      CALL OXXXXX(P(0,5),ZERO,NHEL(5),+1*IC(5),W(1,23))        
      CALL JIOCXX(W(1,22),W(1,3),GZNIJ,ZMASS,ZWIDTH,W(1,24))                                                          
      CALL FVOXXX(W(1,23),W(1,2),GG,ZERO,ZERO,W(1,25))     
      CALL IOVXXX(W(1,1),W(1,25),W(1,24),GZD,AMP(13))     
      ! diagram 14
      CALL IOVXXX(W(1,11),W(1,23),W(1,24),GZD,AMP(14))

      ! S35 = MDL^2
      if(CHAN.eq."dl35") then
        JAMP(1) = +AMP(3)+AMP(5)
      ! S35 = MDR^2
      else if(CHAN.eq."dr35") then
        JAMP(1) = +AMP(4)+AMP(6)
      ! S45 = MDL^2
      else if(CHAN.eq."dl45") then
        JAMP(1) = -AMP(9)-AMP(11)
      ! S45 = MDR^2
      else if(CHAN.eq."dr45") then
        JAMP(1) = -AMP(10)-AMP(12)
      else
        JAMP(1) = 1D-99
      endif

      MATRIX_DG_NINJD_RES = 0.D0 
      DO I = 1, NCOLOR
          ZTEMP =(0.D0,0.D0)
          DO J = 1, NCOLOR
              ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
          ENDDO
          MATRIX_DG_NINJD_RES =MATRIX_DG_NINJD_RES
     &                       +ZTEMP*DCONJG(JAMP(I))/DENOM(I)   
      ENDDO

#ifdef DEBUGQ
      print*,"MATRIX_DG_NINJD_RES" ,MATRIX_DG_NJNJD_RES
#endif

      END
       
       
