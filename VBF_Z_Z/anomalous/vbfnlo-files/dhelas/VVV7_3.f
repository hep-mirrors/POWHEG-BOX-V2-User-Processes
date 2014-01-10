C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     P(3,1)*Metric(1,2) - P(3,2)*Metric(1,2) - P(2,1)*Metric(1,3) +
C      P(2,3)*Metric(1,3) + P(1,2)*Metric(2,3) - P(1,3)*Metric(2,3)
C     
      SUBROUTINE VVV7_3(V1, V2, COUP, M3, W3,V3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 V2(*)
      COMPLEX*16 TMP12
      COMPLEX*16 V3(6)
      REAL*8 P1(0:3)
      REAL*8 W3
      COMPLEX*16 TMP10
      REAL*8 P2(0:3)
      REAL*8 M3
      COMPLEX*16 TMP17
      REAL*8 P3(0:3)
      COMPLEX*16 TMP20
      COMPLEX*16 TMP15
      COMPLEX*16 OM3
      COMPLEX*16 DENOM
      COMPLEX*16 TMP29
      COMPLEX*16 COUP
      COMPLEX*16 V1(*)
      COMPLEX*16 TMP8
      P1(0) = DBLE(V1(1))
      P1(1) = DBLE(V1(2))
      P1(2) = DIMAG(V1(2))
      P1(3) = DIMAG(V1(1))
      P2(0) = DBLE(V2(1))
      P2(1) = DBLE(V2(2))
      P2(2) = DIMAG(V2(2))
      P2(3) = DIMAG(V2(1))
      OM3 = 0D0
      IF (M3.NE.0D0) OM3=1D0/(M3*(M3 - CI*W3))
c     IF (M3.NE.0D0) OM3=1D0/M3**2
      V3(1) = +V1(1)+V2(1)
      V3(2) = +V1(2)+V2(2)
      P3(0) = -DBLE(V3(1))
      P3(1) = -DBLE(V3(2))
      P3(2) = -DIMAG(V3(2))
      P3(3) = -DIMAG(V3(1))
      TMP20 = (P3(0)*V2(3)-P3(1)*V2(4)-P3(2)*V2(5)-P3(3)*V2(6))
      TMP29 = (V2(3)*V1(3)-V2(4)*V1(4)-V2(5)*V1(5)-V2(6)*V1(6))
      TMP8 = (P1(0)*P3(0)-P1(1)*P3(1)-P1(2)*P3(2)-P1(3)*P3(3))
      TMP15 = (P3(0)*V1(3)-P3(1)*V1(4)-P3(2)*V1(5)-P3(3)*V1(6))
      TMP17 = (P1(0)*V2(3)-P1(1)*V2(4)-P1(2)*V2(5)-P1(3)*V2(6))
      TMP10 = (P2(0)*P3(0)-P2(1)*P3(1)-P2(2)*P3(2)-P2(3)*P3(3))
      TMP12 = (P2(0)*V1(3)-P2(1)*V1(4)-P2(2)*V1(5)-P2(3)*V1(6))
      DENOM = COUP/(P3(0)**2-P3(1)**2-P3(2)**2-P3(3)**2 - M3 * (M3 
     $ -CI* W3))
      V3(3)= DENOM*(OM3*P3(0)*(TMP29*(-CI*(TMP10)+CI*(TMP8))+(
     $ -CI*(TMP15*TMP17)+CI*(TMP12*TMP20)))+(TMP29*(-CI*(P1(0))
     $ +CI*(P2(0)))+(V1(3)*(-CI*(TMP20)+CI*(TMP17))+V2(3)*(-CI*(TMP12)
     $ +CI*(TMP15)))))
      V3(4)= DENOM*(OM3*P3(1)*(TMP29*(-CI*(TMP10)+CI*(TMP8))+(
     $ -CI*(TMP15*TMP17)+CI*(TMP12*TMP20)))+(TMP29*(-CI*(P1(1))
     $ +CI*(P2(1)))+(V1(4)*(-CI*(TMP20)+CI*(TMP17))+V2(4)*(-CI*(TMP12)
     $ +CI*(TMP15)))))
      V3(5)= DENOM*(OM3*P3(2)*(TMP29*(-CI*(TMP10)+CI*(TMP8))+(
     $ -CI*(TMP15*TMP17)+CI*(TMP12*TMP20)))+(TMP29*(-CI*(P1(2))
     $ +CI*(P2(2)))+(V1(5)*(-CI*(TMP20)+CI*(TMP17))+V2(5)*(-CI*(TMP12)
     $ +CI*(TMP15)))))
      V3(6)= DENOM*(OM3*P3(3)*(TMP29*(-CI*(TMP10)+CI*(TMP8))+(
     $ -CI*(TMP15*TMP17)+CI*(TMP12*TMP20)))+(TMP29*(-CI*(P1(3))
     $ +CI*(P2(3)))+(V1(6)*(-CI*(TMP20)+CI*(TMP17))+V2(6)*(-CI*(TMP12)
     $ +CI*(TMP15)))))
      END


