C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     P(2,3)*Metric(1,3) - P(1,3)*Metric(2,3)
C     
      SUBROUTINE VVV6_2(V1, V3, COUP, M2, W2,V2)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 V2(6)
      COMPLEX*16 DENOM
      COMPLEX*16 V3(*)
      COMPLEX*16 TMP10
      REAL*8 P2(0:3)
      REAL*8 W2
      REAL*8 P3(0:3)
      REAL*8 M2
      COMPLEX*16 TMP15
      COMPLEX*16 TMP27
      COMPLEX*16 COUP
      COMPLEX*16 V1(*)
      COMPLEX*16 TMP35
      COMPLEX*16 OM2
      OM2 = 0D0
      IF (M2.NE.0D0) OM2=1D0/(M2*(M2 - CI*W2))
c     IF (M2.NE.0D0) OM2=1D0/M2**2
      P3(0) = DBLE(V3(1))
      P3(1) = DBLE(V3(2))
      P3(2) = DIMAG(V3(2))
      P3(3) = DIMAG(V3(1))
      V2(1) = +V1(1)+V3(1)
      V2(2) = +V1(2)+V3(2)
      P2(0) = -DBLE(V2(1))
      P2(1) = -DBLE(V2(2))
      P2(2) = -DIMAG(V2(2))
      P2(3) = -DIMAG(V2(1))
      TMP15 = (P3(0)*V1(3)-P3(1)*V1(4)-P3(2)*V1(5)-P3(3)*V1(6))
      TMP27 = (V3(3)*P2(0)-V3(4)*P2(1)-V3(5)*P2(2)-V3(6)*P2(3))
      TMP10 = (P2(0)*P3(0)-P2(1)*P3(1)-P2(2)*P3(2)-P2(3)*P3(3))
      TMP35 = (V3(3)*V1(3)-V3(4)*V1(4)-V3(5)*V1(5)-V3(6)*V1(6))
      DENOM = COUP/(P2(0)**2-P2(1)**2-P2(2)**2-P2(3)**2 - M2 * (M2 
     $ -CI* W2))
      V2(3)= DENOM*(OM2*P2(0)*(-CI*(TMP15*TMP27)+CI*(TMP10*TMP35))
     $ +(-CI*(P3(0)*TMP35)+CI*(V3(3)*TMP15)))
      V2(4)= DENOM*(OM2*P2(1)*(-CI*(TMP15*TMP27)+CI*(TMP10*TMP35))
     $ +(-CI*(P3(1)*TMP35)+CI*(V3(4)*TMP15)))
      V2(5)= DENOM*(OM2*P2(2)*(-CI*(TMP15*TMP27)+CI*(TMP10*TMP35))
     $ +(-CI*(P3(2)*TMP35)+CI*(V3(5)*TMP15)))
      V2(6)= DENOM*(OM2*P2(3)*(-CI*(TMP15*TMP27)+CI*(TMP10*TMP35))
     $ +(-CI*(P3(3)*TMP35)+CI*(V3(6)*TMP15)))
      END


