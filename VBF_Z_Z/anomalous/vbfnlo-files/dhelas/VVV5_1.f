C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     P(3,1)*Metric(1,2) - P(3,2)*Metric(1,2) - P(2,1)*Metric(1,3) +
C      P(1,2)*Metric(2,3)
C     
      SUBROUTINE VVV5_1(V2, V3, COUP, M1, W1,V1)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 V2(*)
      COMPLEX*16 TMP39
      COMPLEX*16 V3(*)
      REAL*8 P1(0:3)
      REAL*8 M1
      REAL*8 P2(0:3)
      COMPLEX*16 TMP17
      REAL*8 W1
      COMPLEX*16 TMP6
      COMPLEX*16 DENOM
      COMPLEX*16 OM1
      COMPLEX*16 TMP27
      COMPLEX*16 TMP24
      COMPLEX*16 COUP
      COMPLEX*16 V1(6)
      OM1 = 0D0
      IF (M1.NE.0D0) OM1=1D0/(M1*(M1 - CI*W1))
c     IF (M1.NE.0D0) OM1=1D0/M1**2
      P2(0) = DBLE(V2(1))
      P2(1) = DBLE(V2(2))
      P2(2) = DIMAG(V2(2))
      P2(3) = DIMAG(V2(1))
      V1(1) = +V2(1)+V3(1)
      V1(2) = +V2(2)+V3(2)
      P1(0) = -DBLE(V1(1))
      P1(1) = -DBLE(V1(2))
      P1(2) = -DIMAG(V1(2))
      P1(3) = -DIMAG(V1(1))
      TMP24 = (V3(3)*P1(0)-V3(4)*P1(1)-V3(5)*P1(2)-V3(6)*P1(3))
      TMP17 = (P1(0)*V2(3)-P1(1)*V2(4)-P1(2)*V2(5)-P1(3)*V2(6))
      TMP27 = (V3(3)*P2(0)-V3(4)*P2(1)-V3(5)*P2(2)-V3(6)*P2(3))
      TMP39 = (V3(3)*V2(3)-V3(4)*V2(4)-V3(5)*V2(5)-V3(6)*V2(6))
      TMP6 = (P1(0)*P2(0)-P1(1)*P2(1)-P1(2)*P2(2)-P1(3)*P2(3))
      DENOM = COUP/(P1(0)**2-P1(1)**2-P1(2)**2-P1(3)**2 - M1 * (M1 
     $ -CI* W1))
      V1(3)= DENOM*(OM1*P1(0)*(-CI*(TMP17*TMP27)+CI*(TMP6*TMP39))
     $ +(V2(3)*(-CI*(TMP24)+CI*(TMP27))+(-CI*(P2(0)*TMP39)+CI*(V3(3)
     $ *TMP17))))
      V1(4)= DENOM*(OM1*P1(1)*(-CI*(TMP17*TMP27)+CI*(TMP6*TMP39))
     $ +(V2(4)*(-CI*(TMP24)+CI*(TMP27))+(-CI*(P2(1)*TMP39)+CI*(V3(4)
     $ *TMP17))))
      V1(5)= DENOM*(OM1*P1(2)*(-CI*(TMP17*TMP27)+CI*(TMP6*TMP39))
     $ +(V2(5)*(-CI*(TMP24)+CI*(TMP27))+(-CI*(P2(2)*TMP39)+CI*(V3(5)
     $ *TMP17))))
      V1(6)= DENOM*(OM1*P1(3)*(-CI*(TMP17*TMP27)+CI*(TMP6*TMP39))
     $ +(V2(6)*(-CI*(TMP24)+CI*(TMP27))+(-CI*(P2(3)*TMP39)+CI*(V3(6)
     $ *TMP17))))
      END


