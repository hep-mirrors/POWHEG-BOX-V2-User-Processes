*
*--------------------------------------------------------------------
*  EIDELMAN-JEGERLEHNER HADRONIC CONTRIBUTION TO ALPHA_QED
*

       SUBROUTINE HADR5(E,ST2,DER,ERRDER,DEG,ERRDEG)
C ******************************************************************
C *                                                                *
C *      SUBROUTINE FOR THE EVALUATION OF THE LIGHT HADRON         *
C *           CONTRIBUTIONS TO DELTA_R  AND  DELTA_G               *
C *                    USING FITS TO THE                           *
C *          QED VACUUM POLARIZATION FROM E^+ E^- DATA             *
C *                                                                *
C *    F. JEGERLEHNER, PAUL SCHERRER INSTITUTE, CH-5232 VILLIGEN   *
C *                                                                *
C *    E-MAIL:JEGERLEHNER@CVAX.PSI.CH                              *
C *    PHONE :   +41-56-993662                                     *
C *                                                                *
C *    REFERENCE: F. JEGERLEHNER, Z. PHYS. C32 (1986) 195          *
C *               H. BURKHARDT ET AL., Z. PHYS. C42 (1989) 497     *
C *               S. EIDELMAN, F. JEGERLEHNER, Z. PHYS. C (1995)   *
C *                                                                *
C ******************************************************************
C       VERSION: 24/02/1995
C
C  NOTATION: E ENERGY ( MOMENTUM TRANSFER ): E>0 TIMELIKE , E<0 SPACELIKE
C            ST2 IS SIN^2(THETA); ST2=0.2322 IS THE REFERENCE VALUE
C  THE ROUTINE RETURNS THE HADRONIC CONTRIBUTION OF 5 FLAVORS (U,D,S,C,B)
C                 TO   DER=DELTA_R WITH HADRONIC ERROR ERRDER
C                AND   DEG=DELTA_G WITH HADRONIC ERROR ERRDEG
C  THE EFFECTIVE VALUE OF THE FINE STRUCTURE CONSTANT ALPHAQED AT ENERGY
C  E IS ALPHAQED(E)=ALPHAQED(0)/(1-DELTA_R) ,SIMILARLY FOR THE SU(2)
C  COUPLING ALPHASU2(E)=ALPHASU2(0)/(1-DELTA_G), WHERE DELTA_R(G) IS THE
C  SUM OF LEPTONIC, HADRONIC CONTRIBUTIONS (TOP TO BE ADDED).
C
C  THIS PROGRAM DOES NOT YET KNOW HOW TO COMPUTE DELTA R AND DELTA G FOR
C  ENERGIES IN THE RANGES  |E|>1TEV AND 2M_PI < E < 40(13) GEV !!!!!!!!!
C
       IMPLICIT NONE
       INTEGER *2 NF,NS,I,J
       PARAMETER(NF=9,NS=4)
       REAL *4 E,ST2,ST20,DER,DEG,ERRDER,ERRDEG,S,S0,X1,XI,X2,XLOG,XLAR
       REAL *4 M1(NF),C1(NF,NS),C2(NF,NS),C3(NF,NS),C4(NF,NS),AE(NF,NS)
       REAL *4 EU(NF),EO(NF),RES(NS),L1(NF,NS),FX,GX,HX,XX,U,SE
       DO I=1,NF
         DO J=1,NS
           AE(I,J)=0.0
         ENDDO
       ENDDO
C #1# DELTA_R
C FIT PARAMETERS SPACELIKE  -1000 TO  -200 GEV
      EU(1)  =-1000.
      EO(1)  = -200.
      M1(1)=  -1000.000
      C1(1,1)=  4.2069394E-02
      C2(1,1)=  2.9253566E-03
      C3(1,1)= -6.7782454E-04
      C4(1,1)=  9.3214130E-06
C   CHI2=  2.5763808E-05
C FIT PARAMETERS SPACELIKE  -200 TO  -20 GEV
      EU(2)  = -200.
      EO(2)  =  -20.
      M1(2)  =  -100.0000
      C1(2,1)=  2.8526291E-02
      C2(2,1)=  2.9520725E-03
      C3(2,1)= -2.7906310E-03
      C4(2,1)=  6.4174528E-05
C   CHI2=  6.6264300E-04
C FIT PARAMETERS SPACELIKE   -20 TO   -2 GEV
      EU(3)  =  -20.
      EO(3)  =   -2.
      M1(3)  =   -20.0000
      L1(3,1)=  9.3055E-3
      C1(3,1)=  2.8668314E-03
      C2(3,1)=  0.3514608
      C3(3,1)=  0.5496359
      C4(3,1)=  1.9892334E-04
C   CHI2=  4.2017717E-03
      AE(3,1)=  3.0
C FIT PARAMETERS SPACELIKE    -2 TO    0.25 GEV
      EU(4)  =   -2.
      EO(4)  =    0.25
      M1(4)  =    -2.0000
      L1(4,1)=  9.3055E-3
      C1(4,1)=  2.2694240E-03
      C2(4,1)=   8.073429
      C3(4,1)=  0.1636393
      C4(4,1)= -3.3545541E-05
C   CHI2=  0.1239052
      AE(4,1)=  2.0
C FIT PARAMETERS TIMELIKE   0.25 TO    2 GEV
      EU(5)  =    0.25
      EO(5)  =    2.
C FIT PARAMETERS TIMELIKE   2    TO   40 GEV
      EU(6)  =    2.
      EO(6)  =   40.
C FIT PARAMETERS TIMELIKE     40 TO   80 GEV
      EU(7)  =   40.
      EO(7)  =   80.
      M1(7)  =   80.00000
      C1(7,1)=  2.7266588E-02
      C2(7,1)=  2.9285045E-03
      C3(7,1)= -4.7720564E-03
      C4(7,1)=  7.7295507E-04
C   CHI2=  7.7148885E-05
C FIT PARAMETERS TIMELIKE     80 TO  250 GEV
      EU(8)  =   80.
      EO(8)  =  250.
      M1(8)  =   91.18880
      C1(8,1)=  2.8039809E-02
      C2(8,1)=  2.9373798E-03
      C3(8,1)= -2.8432352E-03
      C4(8,1)= -5.2537734E-04
C   CHI2=  4.2241514E-05
C FIT PARAMETERS TIMELIKE    250 TO 1000 GEV
      EU(9)  =  250.
      EO(9)  = 1000.
      M1(9)  = 1000.00000
      C1(9,1)=  4.2092260E-02
      C2(9,1)=  2.9233438E-03
      C3(9,1)= -3.2966913E-04
      C4(9,1)=  3.4324117E-07
C   CHI2=  6.0426464E-05
C #2# DELTA_G
C FIT PARAMETERS SPACELIKE  -1000 TO  -200 GEV
C     EU(1)  =-1000.
C     EO(1)  = -200.
C     M1(1)=  -1000.000
      C1(1,2)=  8.6415343E-02
      C2(1,2)=  6.0127582E-03
      C3(1,2)= -6.7379221E-04
      C4(1,2)=  9.0877611E-06
C   CHI2=  9.6284139E-06
C FIT PARAMETERS SPACELIKE  -200 TO  -20 GEV
C     EU(2)  = -200.
C     EO(2)  =  -20.
C     M1(2)  =  -100.0000
      C1(2,2)=  5.8580618E-02
      C2(2,2)=  6.0678599E-03
      C3(2,2)= -2.4153464E-03
      C4(2,2)=  6.1934326E-05
C   CHI2=  6.3297758E-04
C FIT PARAMETERS SPACELIKE   -20 TO   -2 GEV
C     EU(3)  =  -20.
C     EO(3)  =   -2.
C     M1(3)  =   -20.0000
      L1(3,2)=  1.9954E-2
      C1(3,2)=  5.7231588E-03
      C2(3,2)=  0.3588257
      C3(3,2)=  0.5532265
      C4(3,2)=  6.0730567E-04
C   CHI2=  7.9884287E-03
      AE(3,2)=  3.0
C   CHI2=  4.2017717E-03
C FIT PARAMETERS SPACELIKE    -2 TO    0.25 GEV
C     EU(4)  =   -2.
C     EO(4)  =    0.25
C     M1(4)  =    -2.0000
      L1(4,2)=  1.9954E-2
      C1(4,2)=  4.8065037E-03
      C2(4,2)=   8.255167
      C3(4,2)=  0.1599882
      C4(4,2)= -1.8624817E-04
C   CHI2=  0.1900761
      AE(3,2)=  2.0
C FIT PARAMETERS TIMELIKE     40 TO   80 GEV
C     EU(7)  =   40.

C     EO(7)  =   80.
C     M1(7)  =   80.00000
      C1(7,2)=  5.5985276E-02
      C2(7,2)=  6.0203830E-03
      C3(7,2)= -5.0066952E-03
      C4(7,2)=  7.1363564E-04
C   CHI2=  7.6000040E-05
C FIT PARAMETERS TIMELIKE     80 TO  250 GEV
C     EU(8)  =   80.
C     EO(8)  =  250.
C     M1(8)  =   91.18880
      C1(8,2)=  5.7575710E-02
      C2(8,2)=  6.0372148E-03
      C3(8,2)= -3.4556778E-03
      C4(8,2)= -4.9574347E-04
C   CHI2=  3.3244669E-05
C FIT PARAMETERS TIMELIKE    250 TO 1000 GEV
C     EU(9)  =  250.
C     EO(9)  = 1000.
C     M1(9)  = 1000.00000
      C1(9,2)=  8.6462371E-02
      C2(9,2)=  6.0088057E-03
      C3(9,2)= -3.3235471E-04
      C4(9,2)=  5.9021050E-07
C   CHI2=  2.9821187E-05
C #3# ERROR DELTA_R
C FIT PARAMETERS SPACELIKE  -1000 TO  -200 GEV
C     EU(1)  =-1000.
C     EO(1)  = -200.
C     M1(1)=  -1000.000
      C1(1,3)=  6.3289929E-04
      C2(1,3)=  3.3592437E-06
      C3(1,3)=  0.0
      C4(1,3)=  0.0
C   CHI2=  2.3007713E-05
C FIT PARAMETERS SPACELIKE  -200 TO  -20 GEV
C     EU(2)  = -200.
C     EO(2)  =  -20.
C     M1(2)  =  -100.0000
      C1(2,3)=  6.2759849E-04
      C2(2,3)= -1.0816625E-06
      C3(2,3)=   5.050189
      C4(2,3)= -9.6505374E-02
C   CHI2=  3.4677869E-04
      AE(2,3)=  1.0
C FIT PARAMETERS SPACELIKE   -20 TO   -2 GEV
C     EU(3)  =  -20.
C     EO(3)  =   -2.
C     M1(3)  =   -20.0000
      L1(3,3)=  2.0243E-4
      C1(3,3)=  1.0147886E-04
      C2(3,3)=   1.819327
      C3(3,3)= -0.1174904
      C4(3,3)= -1.2404939E-04
C   CHI2=  7.1917898E-03
      AE(3,3)=  3.0
C FIT PARAMETERS SPACELIKE    -2 TO    0.25 GEV
C     EU(4)  =   -2.
C     EO(4)  =    0.25
C     M1(4)  =    -2.0000
      L1(4,3)=  2.0243E-4
      C1(4,3)= -7.1368617E-05
      C2(4,3)=  9.980347E-04
      C3(4,3)=   1.669151
      C4(4,3)=  3.5645600E-05
C   CHI2=  0.1939734
      AE(4,3)=  2.0
C FIT PARAMETERS TIMELIKE     40 TO   80 GEV
C     EU(7)  =   40.
C     EO(7)  =   80.
C     M1(7)  =   80.00000
      C1(7,3)=  6.4947648E-04
      C2(7,3)=  4.9386853E-07
      C3(7,3)=  -55.22332
      C4(7,3)=   26.13011
C   CHI2=  7.2068366E-04
C FIT PARAMETERS TIMELIKE     80 TO  250 GEV
C     EU(8)  =   80.
C     EO(8)  =  250.
C     M1(8)  =   91.18880
      C1(8,3)=  6.4265809E-04
      C2(8,3)= -2.8453374E-07
      C3(8,3)=  -23.38172
      C4(8,3)=  -6.251794
C   CHI2=  1.1478480E-07
C FIT PARAMETERS TIMELIKE    250 TO 1000 GEV
C     EU(9)  =  250.
C     EO(9)  = 1000.
C     M1(9)  = 1000.00000
      C1(9,3)=  6.3369947E-04
      C2(9,3)= -2.0898329E-07
      C3(9,3)=  0.0
      C4(9,3)=  0.0
C   CHI2=  2.9124376E-06
C #4# ERROR DELTA_G
C FIT PARAMETERS SPACELIKE  -1000 TO  -200 GEV
C     EU(1)  =-1000.
C     EO(1)  = -200.
C     M1(1)=  -1000.000
      C1(1,4)=  1.2999176E-03
      C2(1,4)=  7.4505529E-06
      C3(1,4)=  0.0
      C4(1,4)=  0.0
C   CHI2=  2.5312527E-05
C FIT PARAMETERS SPACELIKE  -200 TO  -20 GEV
C     EU(2)  = -200.
C     EO(2)  =  -20.
C     M1(2)  =  -100.0000
      C1(2,4)=  1.2883141E-03
      C2(2,4)= -1.3790827E-06
      C3(2,4)=   8.056159
      C4(2,4)= -0.1536313
C   CHI2=  2.9774895E-04
      AE(2,4)=  1.0
C FIT PARAMETERS SPACELIKE   -20 TO   -2 GEV
C     EU(3)  =  -20.
C     EO(3)  =   -2.
C     M1(3)  =   -20.0000
      L1(3,4)=  4.3408E-4
      C1(3,4)=  2.0489733E-04
      C2(3,4)=   2.065011
      C3(3,4)= -0.6172962
      C4(3,4)= -2.5603661E-04
C   CHI2=  7.5258738E-03
      AE(3,4)=  3.0
C FIT PARAMETERS SPACELIKE    -2 TO    0.25 GEV
C     EU(4)  =   -2.
C     EO(4)  =    0.25
C     M1(4)  =    -2.0000
      L1(4,4)=  4.3408E-4
      C1(4,4)= -1.5095409E-04
      C2(4,4)=  9.9847501E-04
      C3(4,4)=   1.636659
      C4(4,4)=  7.5892596E-05
C   CHI2=  0.1959371
      AE(4,4)=  2.0
C FIT PARAMETERS TIMELIKE     40 TO   80 GEV
C     EU(7)  =   40.
C     EO(7)  =   80.
C     M1(7)  =   80.00000
      C1(7,4)=  1.3335156E-03
      C2(7,4)=  2.2939612E-07
      C3(7,4)=  -246.4966
      C4(7,4)=   114.9956
C   CHI2=  7.2293193E-04
C FIT PARAMETERS TIMELIKE     80 TO  250 GEV
C     EU(8)  =   80.
C     EO(8)  =  250.
C     M1(8)  =   91.18880
      C1(8,4)=  1.3196438E-03
      C2(8,4)=  2.8937683E-09
      C3(8,4)=   5449.778
      C4(8,4)=   930.3875
C   CHI2=  4.2109136E-08
C FIT PARAMETERS TIMELIKE    250 TO 1000 GEV
C     EU(9)  =  250.
C     EO(9)  = 1000.
C     M1(9)  = 1000.00000
      C1(9,4)=  1.3016918E-03
      C2(9,4)= -3.6027674E-07
      C3(9,4)=  0.0
      C4(9,4)=  0.0
C   CHI2=  2.8220852E-06
C ######################################################################
       SE=654./643.      ! RESCALING ERROR TO PUBLISHED VERSION 1995
       ST20=0.2322
       S=E**2
       DER=0.0
       DEG=0.0
       ERRDER=0.0
       ERRDEG=0.0
       IF ((E.GT.1.E3).OR.(E.LT.-1.E3)) GOTO 100
       IF ((E.LT.4.E1).AND.(E.GT.0.25)) GOTO 100
       I=1
       DO WHILE (E.GE.EO(I))
         I=I+1
       ENDDO
       IF (E.EQ.1.E3) I=9
       IF (E.EQ.0.0 ) GOTO 100
       S0=SIGN(1.0,M1(I))*M1(I)**2
       S =SIGN(1.0,E)*E**2
       X1=S0/S
       XI=1.0/X1
       X2=X1**2
       IF (AE(I,1).LE.0.0) THEN
         DO J=1,4
           XLAR=XI+AE(I,J)*EXP(-XI)
           XLOG=LOG(XLAR)
           RES(J)=C1(I,J)
     .           +C2(I,J)*(XLOG+C3(I,J)*(X1-1.0)+C4(I,J)*(X2-1.0))
         ENDDO
       ELSE IF (AE(I,1).EQ.2.0) THEN
         HX     =XI**2
         DO J=1,2
           FX     =1.0-C2(I,J)*S
           GX     = C3(I,J)*S/(C3(I,J)-S)
           XX     =LOG(ABS(FX))+C2(I,J)*GX
           RES(J)=C1(I,J)*XX-L1(I,J)*GX+C4(I,J)*HX
         ENDDO
         DO J=3,4
           U      =ABS(S)
           GX     =-C3(I,J)*U/(C3(I,J)+U)
           XX     =XI**3/(SQRT(ABS(XI))**5+C2(I,J))
           RES(J)=C1(I,J)*XX-L1(I,J)*GX+C4(I,J)*HX
         ENDDO
       ELSE IF (AE(I,1).EQ.3.0) THEN
         HX     =XI
         DO J=1,4
           FX     =1.0-C2(I,J)*S
           GX     = C3(I,J)*S/(C3(I,J)-S)
           XX     =LOG(ABS(FX))+C2(I,J)*GX
           RES(J)=C1(I,J)*XX-L1(I,J)*GX+C4(I,J)*HX
         ENDDO
       ENDIF
       DER=RES(1)
       DEG=RES(2)*ST20/ST2
       ERRDER=RES(3)*SE
       ERRDEG=RES(4)*SE
       GOTO 100
C 99    WRITE(*,*) ' OUT OF RANGE! '
100    RETURN
       END
