C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     4*Epsilon(1,2,3,-2)*P(-2,3)*P(-1,1)*P(-1,2) + 4*Epsilon(1,2,3,-2)
C     *P(-2,2)*P(-1,1)*P(-1,3) + 4*Epsilon(1,2,3,-2)*P(-2,1)*P(-1,2)*P(
C     -1,3) - 2*Epsilon(2,3,-1,-2)*P(-2,3)*P(-1,1)*P(1,2) + 2*Epsilon(2
C     ,3,-1,-2)*P(-2,1)*P(-1,3)*P(1,2) - 2*Epsilon(2,3,-1,-2)*P(-2,2)*P
C     (-1,1)*P(1,3) + 2*Epsilon(2,3,-1,-2)*P(-2,1)*P(-1,2)*P(1,3) +
C      2*Epsilon(1,3,-1,-2)*P(-2,3)*P(-1,2)*P(2,1) - 2*Epsilon(1,3,-1,-
C     2)*P(-2,2)*P(-1,3)*P(2,1) - 2*Epsilon(1,3,-1,-2)*P(-2,2)*P(-1,1)*
C     P(2,3) + 2*Epsilon(1,3,-1,-2)*P(-2,1)*P(-1,2)*P(2,3) + 2*Epsilon(
C     1,2,-1,-2)*P(-2,3)*P(-1,2)*P(3,1) - 2*Epsilon(1,2,-1,-2)*P(-2,2)*
C     P(-1,3)*P(3,1) + 2*Epsilon(1,2,-1,-2)*P(-2,3)*P(-1,1)*P(3,2) -
C      2*Epsilon(1,2,-1,-2)*P(-2,1)*P(-1,3)*P(3,2) + Epsilon(3,-1,-2,-3
C     )*P(-3,3)*P(-2,2)*P(-1,1)*Metric(1,2) - Epsilon(3,-1,-2,-3)*P(-3,
C     3)*P(-2,1)*P(-1,2)*Metric(1,2) + Epsilon(3,-1,-2,-3)*P(-3,2)*P(-2
C     ,1)*P(-1,3)*Metric(1,2) - Epsilon(3,-1,-2,-3)*P(-3,1)*P(-2,2)*P(-
C     1,3)*Metric(1,2) - Epsilon(2,-1,-2,-3)*P(-3,2)*P(-2,3)*P(-1,1)*Me
C     tric(1,3) - Epsilon(2,-1,-2,-3)*P(-3,3)*P(-2,1)*P(-1,2)*Metric(1,
C     3) + Epsilon(2,-1,-2,-3)*P(-3,1)*P(-2,3)*P(-1,2)*Metric(1,3) +
C      Epsilon(2,-1,-2,-3)*P(-3,2)*P(-2,1)*P(-1,3)*Metric(1,3) +
C      Epsilon(1,-1,-2,-3)*P(-3,3)*P(-2,2)*P(-1,1)*Metric(2,3) -
C      Epsilon(1,-1,-2,-3)*P(-3,2)*P(-2,3)*P(-1,1)*Metric(2,3) +
C      Epsilon(1,-1,-2,-3)*P(-3,1)*P(-2,3)*P(-1,2)*Metric(2,3) -
C      Epsilon(1,-1,-2,-3)*P(-3,1)*P(-2,2)*P(-1,3)*Metric(2,3)
C     
      SUBROUTINE VVV10_3(V1, V2, COUP, M3, W3,V3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 TMP10
      COMPLEX*16 TMP56
      REAL*8 P3(0:3)
      COMPLEX*16 TMP6
      COMPLEX*16 TMP28
      COMPLEX*16 TMP25
      COMPLEX*16 TMP12
      COMPLEX*16 TMP43
      COMPLEX*16 TMP37
      COMPLEX*16 TMP57
      REAL*8 P2(0:3)
      COMPLEX*16 TMP36
      COMPLEX*16 TMP20
      COMPLEX*16 TMP26
      COMPLEX*16 TMP15
      COMPLEX*16 OM3
      COMPLEX*16 TMP42
      COMPLEX*16 V2(*)
      COMPLEX*16 TMP34
      COMPLEX*16 TMP58
      REAL*8 P1(0:3)
      REAL*8 W3
      COMPLEX*16 TMP23
      COMPLEX*16 DENOM
      COMPLEX*16 V3(6)
      COMPLEX*16 TMP41
      COMPLEX*16 V1(*)
      REAL*8 M3
      COMPLEX*16 TMP38
      COMPLEX*16 TMP17
      COMPLEX*16 TMP55
      COMPLEX*16 TMP40
      COMPLEX*16 TMP29
      COMPLEX*16 COUP
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
      TMP42 = -1D0*(P1(0)*(P2(1)*(P3(2)*V1(6)-P3(3)*V1(5))+(P2(2)
     $ *(P3(3)*V1(4)-P3(1)*V1(6))+P2(3)*(P3(1)*V1(5)-P3(2)*V1(4))))
     $ +(P1(1)*(P2(0)*(P3(3)*V1(5)-P3(2)*V1(6))+(P2(2)*(P3(0)*V1(6)
     $ -P3(3)*V1(3))+P2(3)*(P3(2)*V1(3)-P3(0)*V1(5))))+(P1(2)*(P2(0)
     $ *(P3(1)*V1(6)-P3(3)*V1(4))+(P2(1)*(P3(3)*V1(3)-P3(0)*V1(6))
     $ +P2(3)*(P3(0)*V1(4)-P3(1)*V1(3))))+P1(3)*(P2(0)*(P3(2)*V1(4)
     $ -P3(1)*V1(5))+(P2(1)*(P3(0)*V1(5)-P3(2)*V1(3))+P2(2)*(P3(1)
     $ *V1(3)-P3(0)*V1(4)))))))
      TMP25 = -1D0*(P2(0)*(P3(1)*(V2(6)*V1(5)-V2(5)*V1(6))+(P3(2)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+P3(3)*(V2(5)*V1(4)-V2(4)*V1(5))))
     $ +(P2(1)*(P3(0)*(V2(5)*V1(6)-V2(6)*V1(5))+(P3(2)*(V2(6)*V1(3)
     $ -V2(3)*V1(6))+P3(3)*(V2(3)*V1(5)-V2(5)*V1(3))))+(P2(2)*(P3(0)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+(P3(1)*(V2(3)*V1(6)-V2(6)*V1(3))
     $ +P3(3)*(V2(4)*V1(3)-V2(3)*V1(4))))+P2(3)*(P3(0)*(V2(4)*V1(5)
     $ -V2(5)*V1(4))+(P3(1)*(V2(5)*V1(3)-V2(3)*V1(5))+P3(2)*(V2(3)
     $ *V1(4)-V2(4)*V1(3)))))))
      TMP40 = -1D0*(P1(0)*(P2(1)*(P3(2)*V1(6)-P3(3)*V1(5))+(P2(2)
     $ *(P3(3)*V1(4)-P3(1)*V1(6))+P2(3)*(P3(1)*V1(5)-P3(2)*V1(4))))
     $ +(P1(1)*(P2(0)*(P3(3)*V1(5)-P3(2)*V1(6))+(P2(2)*(P3(0)*V1(6)
     $ -P3(3)*V1(3))+P2(3)*(P3(2)*V1(3)-P3(0)*V1(5))))+(P1(2)*(P2(0)
     $ *(P3(1)*V1(6)-P3(3)*V1(4))+(P2(1)*(P3(3)*V1(3)-P3(0)*V1(6))
     $ +P2(3)*(P3(0)*V1(4)-P3(1)*V1(3))))+P1(3)*(P2(0)*(P3(2)*V1(4)
     $ -P3(1)*V1(5))+(P2(1)*(P3(0)*V1(5)-P3(2)*V1(3))+P2(2)*(P3(1)
     $ *V1(3)-P3(0)*V1(4)))))))
      TMP41 = -1D0*(P1(0)*(P2(1)*(P3(3)*V1(5)-P3(2)*V1(6))+(P2(2)
     $ *(P3(1)*V1(6)-P3(3)*V1(4))+P2(3)*(P3(2)*V1(4)-P3(1)*V1(5))))
     $ +(P1(1)*(P2(0)*(P3(2)*V1(6)-P3(3)*V1(5))+(P2(2)*(P3(3)*V1(3)
     $ -P3(0)*V1(6))+P2(3)*(P3(0)*V1(5)-P3(2)*V1(3))))+(P1(2)*(P2(0)
     $ *(P3(3)*V1(4)-P3(1)*V1(6))+(P2(1)*(P3(0)*V1(6)-P3(3)*V1(3))
     $ +P2(3)*(P3(1)*V1(3)-P3(0)*V1(4))))+P1(3)*(P2(0)*(P3(1)*V1(5)
     $ -P3(2)*V1(4))+(P2(1)*(P3(2)*V1(3)-P3(0)*V1(5))+P2(2)*(P3(0)
     $ *V1(4)-P3(1)*V1(3)))))))
      TMP20 = (P3(0)*V2(3)-P3(1)*V2(4)-P3(2)*V2(5)-P3(3)*V2(6))
      TMP23 = -1D0*(P2(0)*(P3(1)*(V2(5)*V1(6)-V2(6)*V1(5))+(P3(2)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+P3(3)*(V2(4)*V1(5)-V2(5)*V1(4))))
     $ +(P2(1)*(P3(0)*(V2(6)*V1(5)-V2(5)*V1(6))+(P3(2)*(V2(3)*V1(6)
     $ -V2(6)*V1(3))+P3(3)*(V2(5)*V1(3)-V2(3)*V1(5))))+(P2(2)*(P3(0)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+(P3(1)*(V2(6)*V1(3)-V2(3)*V1(6))
     $ +P3(3)*(V2(3)*V1(4)-V2(4)*V1(3))))+P2(3)*(P3(0)*(V2(5)*V1(4)
     $ -V2(4)*V1(5))+(P3(1)*(V2(3)*V1(5)-V2(5)*V1(3))+P3(2)*(V2(4)
     $ *V1(3)-V2(3)*V1(4)))))))
      TMP28 = -1D0*(P1(0)*(P3(1)*(V2(6)*V1(5)-V2(5)*V1(6))+(P3(2)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+P3(3)*(V2(5)*V1(4)-V2(4)*V1(5))))
     $ +(P1(1)*(P3(0)*(V2(5)*V1(6)-V2(6)*V1(5))+(P3(2)*(V2(6)*V1(3)
     $ -V2(3)*V1(6))+P3(3)*(V2(3)*V1(5)-V2(5)*V1(3))))+(P1(2)*(P3(0)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+(P3(1)*(V2(3)*V1(6)-V2(6)*V1(3))
     $ +P3(3)*(V2(4)*V1(3)-V2(3)*V1(4))))+P1(3)*(P3(0)*(V2(4)*V1(5)
     $ -V2(5)*V1(4))+(P3(1)*(V2(5)*V1(3)-V2(3)*V1(5))+P3(2)*(V2(3)
     $ *V1(4)-V2(4)*V1(3)))))))
      TMP29 = (V2(3)*V1(3)-V2(4)*V1(4)-V2(5)*V1(5)-V2(6)*V1(6))
      TMP10 = (P2(0)*P3(0)-P2(1)*P3(1)-P2(2)*P3(2)-P2(3)*P3(3))
      TMP34 = -1D0*(P1(0)*(P2(1)*(P3(3)*V2(5)-P3(2)*V2(6))+(P2(2)
     $ *(P3(1)*V2(6)-P3(3)*V2(4))+P2(3)*(P3(2)*V2(4)-P3(1)*V2(5))))
     $ +(P1(1)*(P2(0)*(P3(2)*V2(6)-P3(3)*V2(5))+(P2(2)*(P3(3)*V2(3)
     $ -P3(0)*V2(6))+P2(3)*(P3(0)*V2(5)-P3(2)*V2(3))))+(P1(2)*(P2(0)
     $ *(P3(3)*V2(4)-P3(1)*V2(6))+(P2(1)*(P3(0)*V2(6)-P3(3)*V2(3))
     $ +P2(3)*(P3(1)*V2(3)-P3(0)*V2(4))))+P1(3)*(P2(0)*(P3(1)*V2(5)
     $ -P3(2)*V2(4))+(P2(1)*(P3(2)*V2(3)-P3(0)*V2(5))+P2(2)*(P3(0)
     $ *V2(4)-P3(1)*V2(3)))))))
      TMP55 = -1D0*(P2(0)*(P3(1)*(V2(6)*V1(5)-V2(5)*V1(6))+(P3(2)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+P3(3)*(V2(5)*V1(4)-V2(4)*V1(5))))
     $ +(P2(1)*(P3(0)*(V2(5)*V1(6)-V2(6)*V1(5))+(P3(2)*(V2(6)*V1(3)
     $ -V2(3)*V1(6))+P3(3)*(V2(3)*V1(5)-V2(5)*V1(3))))+(P2(2)*(P3(0)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+(P3(1)*(V2(3)*V1(6)-V2(6)*V1(3))
     $ +P3(3)*(V2(4)*V1(3)-V2(3)*V1(4))))+P2(3)*(P3(0)*(V2(4)*V1(5)
     $ -V2(5)*V1(4))+(P3(1)*(V2(5)*V1(3)-V2(3)*V1(5))+P3(2)*(V2(3)
     $ *V1(4)-V2(4)*V1(3)))))))
      TMP57 = -1D0*(P1(0)*(P2(1)*(P3(2)*V1(6)-P3(3)*V1(5))+(P2(2)
     $ *(P3(3)*V1(4)-P3(1)*V1(6))+P2(3)*(P3(1)*V1(5)-P3(2)*V1(4))))
     $ +(P1(1)*(P2(0)*(P3(3)*V1(5)-P3(2)*V1(6))+(P2(2)*(P3(0)*V1(6)
     $ -P3(3)*V1(3))+P2(3)*(P3(2)*V1(3)-P3(0)*V1(5))))+(P1(2)*(P2(0)
     $ *(P3(1)*V1(6)-P3(3)*V1(4))+(P2(1)*(P3(3)*V1(3)-P3(0)*V1(6))
     $ +P2(3)*(P3(0)*V1(4)-P3(1)*V1(3))))+P1(3)*(P2(0)*(P3(2)*V1(4)
     $ -P3(1)*V1(5))+(P2(1)*(P3(0)*V1(5)-P3(2)*V1(3))+P2(2)*(P3(1)
     $ *V1(3)-P3(0)*V1(4)))))))
      TMP56 = -1D0*(P1(0)*(P2(1)*(P3(3)*V2(5)-P3(2)*V2(6))+(P2(2)
     $ *(P3(1)*V2(6)-P3(3)*V2(4))+P2(3)*(P3(2)*V2(4)-P3(1)*V2(5))))
     $ +(P1(1)*(P2(0)*(P3(2)*V2(6)-P3(3)*V2(5))+(P2(2)*(P3(3)*V2(3)
     $ -P3(0)*V2(6))+P2(3)*(P3(0)*V2(5)-P3(2)*V2(3))))+(P1(2)*(P2(0)
     $ *(P3(3)*V2(4)-P3(1)*V2(6))+(P2(1)*(P3(0)*V2(6)-P3(3)*V2(3))
     $ +P2(3)*(P3(1)*V2(3)-P3(0)*V2(4))))+P1(3)*(P2(0)*(P3(1)*V2(5)
     $ -P3(2)*V2(4))+(P2(1)*(P3(2)*V2(3)-P3(0)*V2(5))+P2(2)*(P3(0)
     $ *V2(4)-P3(1)*V2(3)))))))
      TMP58 = -1D0*(P1(0)*(P2(1)*(P3(3)*V1(5)-P3(2)*V1(6))+(P2(2)
     $ *(P3(1)*V1(6)-P3(3)*V1(4))+P2(3)*(P3(2)*V1(4)-P3(1)*V1(5))))
     $ +(P1(1)*(P2(0)*(P3(2)*V1(6)-P3(3)*V1(5))+(P2(2)*(P3(3)*V1(3)
     $ -P3(0)*V1(6))+P2(3)*(P3(0)*V1(5)-P3(2)*V1(3))))+(P1(2)*(P2(0)
     $ *(P3(3)*V1(4)-P3(1)*V1(6))+(P2(1)*(P3(0)*V1(6)-P3(3)*V1(3))
     $ +P2(3)*(P3(1)*V1(3)-P3(0)*V1(4))))+P1(3)*(P2(0)*(P3(1)*V1(5)
     $ -P3(2)*V1(4))+(P2(1)*(P3(2)*V1(3)-P3(0)*V1(5))+P2(2)*(P3(0)
     $ *V1(4)-P3(1)*V1(3)))))))
      TMP38 = -1D0*(P1(0)*(P2(1)*(P3(2)*V2(6)-P3(3)*V2(5))+(P2(2)
     $ *(P3(3)*V2(4)-P3(1)*V2(6))+P2(3)*(P3(1)*V2(5)-P3(2)*V2(4))))
     $ +(P1(1)*(P2(0)*(P3(3)*V2(5)-P3(2)*V2(6))+(P2(2)*(P3(0)*V2(6)
     $ -P3(3)*V2(3))+P2(3)*(P3(2)*V2(3)-P3(0)*V2(5))))+(P1(2)*(P2(0)
     $ *(P3(1)*V2(6)-P3(3)*V2(4))+(P2(1)*(P3(3)*V2(3)-P3(0)*V2(6))
     $ +P2(3)*(P3(0)*V2(4)-P3(1)*V2(3))))+P1(3)*(P2(0)*(P3(2)*V2(4)
     $ -P3(1)*V2(5))+(P2(1)*(P3(0)*V2(5)-P3(2)*V2(3))+P2(2)*(P3(1)
     $ *V2(3)-P3(0)*V2(4)))))))
      TMP15 = (P3(0)*V1(3)-P3(1)*V1(4)-P3(2)*V1(5)-P3(3)*V1(6))
      TMP17 = (P1(0)*V2(3)-P1(1)*V2(4)-P1(2)*V2(5)-P1(3)*V2(6))
      TMP37 = -1D0*(P1(0)*(P2(1)*(P3(2)*V2(6)-P3(3)*V2(5))+(P2(2)
     $ *(P3(3)*V2(4)-P3(1)*V2(6))+P2(3)*(P3(1)*V2(5)-P3(2)*V2(4))))
     $ +(P1(1)*(P2(0)*(P3(3)*V2(5)-P3(2)*V2(6))+(P2(2)*(P3(0)*V2(6)
     $ -P3(3)*V2(3))+P2(3)*(P3(2)*V2(3)-P3(0)*V2(5))))+(P1(2)*(P2(0)
     $ *(P3(1)*V2(6)-P3(3)*V2(4))+(P2(1)*(P3(3)*V2(3)-P3(0)*V2(6))
     $ +P2(3)*(P3(0)*V2(4)-P3(1)*V2(3))))+P1(3)*(P2(0)*(P3(2)*V2(4)
     $ -P3(1)*V2(5))+(P2(1)*(P3(0)*V2(5)-P3(2)*V2(3))+P2(2)*(P3(1)
     $ *V2(3)-P3(0)*V2(4)))))))
      TMP36 = -1D0*(P1(0)*(P2(1)*(P3(3)*V2(5)-P3(2)*V2(6))+(P2(2)
     $ *(P3(1)*V2(6)-P3(3)*V2(4))+P2(3)*(P3(2)*V2(4)-P3(1)*V2(5))))
     $ +(P1(1)*(P2(0)*(P3(2)*V2(6)-P3(3)*V2(5))+(P2(2)*(P3(3)*V2(3)
     $ -P3(0)*V2(6))+P2(3)*(P3(0)*V2(5)-P3(2)*V2(3))))+(P1(2)*(P2(0)
     $ *(P3(3)*V2(4)-P3(1)*V2(6))+(P2(1)*(P3(0)*V2(6)-P3(3)*V2(3))
     $ +P2(3)*(P3(1)*V2(3)-P3(0)*V2(4))))+P1(3)*(P2(0)*(P3(1)*V2(5)
     $ -P3(2)*V2(4))+(P2(1)*(P3(2)*V2(3)-P3(0)*V2(5))+P2(2)*(P3(0)
     $ *V2(4)-P3(1)*V2(3)))))))
      TMP12 = (P2(0)*V1(3)-P2(1)*V1(4)-P2(2)*V1(5)-P2(3)*V1(6))
      TMP8 = (P1(0)*P3(0)-P1(1)*P3(1)-P1(2)*P3(2)-P1(3)*P3(3))
      TMP26 = -1D0*(P1(0)*(P3(1)*(V2(5)*V1(6)-V2(6)*V1(5))+(P3(2)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+P3(3)*(V2(4)*V1(5)-V2(5)*V1(4))))
     $ +(P1(1)*(P3(0)*(V2(6)*V1(5)-V2(5)*V1(6))+(P3(2)*(V2(3)*V1(6)
     $ -V2(6)*V1(3))+P3(3)*(V2(5)*V1(3)-V2(3)*V1(5))))+(P1(2)*(P3(0)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+(P3(1)*(V2(6)*V1(3)-V2(3)*V1(6))
     $ +P3(3)*(V2(3)*V1(4)-V2(4)*V1(3))))+P1(3)*(P3(0)*(V2(5)*V1(4)
     $ -V2(4)*V1(5))+(P3(1)*(V2(3)*V1(5)-V2(5)*V1(3))+P3(2)*(V2(4)
     $ *V1(3)-V2(3)*V1(4)))))))
      TMP6 = (P1(0)*P2(0)-P1(1)*P2(1)-P1(2)*P2(2)-P1(3)*P2(3))
      TMP43 = -1D0*(P1(0)*(P2(1)*(P3(3)*V1(5)-P3(2)*V1(6))+(P2(2)
     $ *(P3(1)*V1(6)-P3(3)*V1(4))+P2(3)*(P3(2)*V1(4)-P3(1)*V1(5))))
     $ +(P1(1)*(P2(0)*(P3(2)*V1(6)-P3(3)*V1(5))+(P2(2)*(P3(3)*V1(3)
     $ -P3(0)*V1(6))+P2(3)*(P3(0)*V1(5)-P3(2)*V1(3))))+(P1(2)*(P2(0)
     $ *(P3(3)*V1(4)-P3(1)*V1(6))+(P2(1)*(P3(0)*V1(6)-P3(3)*V1(3))
     $ +P2(3)*(P3(1)*V1(3)-P3(0)*V1(4))))+P1(3)*(P2(0)*(P3(1)*V1(5)
     $ -P3(2)*V1(4))+(P2(1)*(P3(2)*V1(3)-P3(0)*V1(5))+P2(2)*(P3(0)
     $ *V1(4)-P3(1)*V1(3)))))))
      DENOM = COUP/(P3(0)**2-P3(1)**2-P3(2)**2-P3(3)**2 - M3 * (M3 
     $ -CI* W3))
      V3(3)= DENOM*CI*(OM3*P3(0)*(TMP20*(TMP40+TMP42+2D0*(TMP58)-TMP41
     $ -TMP43-2D0*(TMP57))+(TMP15*-1D0*(TMP38+TMP34+TMP36-TMP37
     $ -2D0*(TMP56))+(TMP8*2D0*(TMP23+2D0*(TMP55)-TMP25)+2D0*(TMP10
     $ *(TMP28+TMP26)))))+(P1(1)*(P2(2)*-4D0*(V2(6)*TMP15+V1(6)*TMP20
     $ +P3(3)*TMP29)+(P2(3)*4D0*(V2(5)*TMP15+V1(5)*TMP20+P3(2)*TMP29)
     $ +(TMP10*4D0*(V2(5)*V1(6)-V2(6)*V1(5))+4D0*(TMP12*(P3(3)*V2(5)
     $ -P3(2)*V2(6))))))+(P1(2)*(P2(1)*4D0*(V2(6)*TMP15+V1(6)*TMP20
     $ +P3(3)*TMP29)+(P2(3)*-4D0*(V2(4)*TMP15+V1(4)*TMP20+P3(1)*TMP29)
     $ +(TMP10*4D0*(V2(6)*V1(4)-V2(4)*V1(6))+4D0*(TMP12*(P3(1)*V2(6)
     $ -P3(3)*V2(4))))))+(P1(3)*(P2(1)*-4D0*(V2(5)*TMP15+V1(5)*TMP20
     $ +P3(2)*TMP29)+(P2(2)*4D0*(V2(4)*TMP15+V1(4)*TMP20+P3(1)*TMP29)
     $ +(TMP10*4D0*(V2(4)*V1(5)-V2(5)*V1(4))+4D0*(TMP12*(P3(2)*V2(4)
     $ -P3(1)*V2(5))))))+(TMP17*(P2(1)*4D0*(P3(2)*V1(6)-P3(3)*V1(5))
     $ +(P2(2)*4D0*(P3(3)*V1(4)-P3(1)*V1(6))+4D0*(P2(3)*(P3(1)*V1(5)
     $ -P3(2)*V1(4)))))+(TMP6*(P3(1)*4D0*(V2(5)*V1(6)-V2(6)*V1(5))
     $ +(P3(2)*4D0*(V2(6)*V1(4)-V2(4)*V1(6))+4D0*(P3(3)*(V2(4)*V1(5)
     $ -V2(5)*V1(4)))))+(TMP8*(P2(1)*4D0*(V2(5)*V1(6)-V2(6)*V1(5))
     $ +(P2(2)*4D0*(V2(6)*V1(4)-V2(4)*V1(6))+4D0*(P2(3)*(V2(4)*V1(5)
     $ -V2(5)*V1(4)))))+(V1(3)*(TMP34+TMP36-TMP37-TMP38)+(V2(3)*(TMP41
     $ +TMP43-TMP40-TMP42)+(P1(0)*2D0*(TMP25-TMP23)+2D0*(P2(0)*(TMP28
     $ -TMP26))))))))))))
      V3(4)= DENOM*CI*(OM3*P3(1)*(TMP20*(TMP40+TMP42+2D0*(TMP58)-TMP41
     $ -TMP43-2D0*(TMP57))+(TMP15*-1D0*(TMP38+TMP34+TMP36-TMP37
     $ -2D0*(TMP56))+(TMP8*2D0*(TMP23+2D0*(TMP55)-TMP25)+2D0*(TMP10
     $ *(TMP28+TMP26)))))+(P1(0)*(P2(2)*-4D0*(V2(6)*TMP15+V1(6)*TMP20
     $ +P3(3)*TMP29)+(P2(3)*4D0*(V2(5)*TMP15+V1(5)*TMP20+P3(2)*TMP29)
     $ +(TMP10*4D0*(V2(5)*V1(6)-V2(6)*V1(5))+4D0*(TMP12*(P3(3)*V2(5)
     $ -P3(2)*V2(6))))))+(P1(2)*(P2(0)*4D0*(V2(6)*TMP15+V1(6)*TMP20
     $ +P3(3)*TMP29)+(P2(3)*-4D0*(V2(3)*TMP15+V1(3)*TMP20+P3(0)*TMP29)
     $ +(TMP10*4D0*(V2(6)*V1(3)-V2(3)*V1(6))+4D0*(TMP12*(P3(0)*V2(6)
     $ -P3(3)*V2(3))))))+(P1(3)*(P2(0)*-4D0*(V2(5)*TMP15+V1(5)*TMP20
     $ +P3(2)*TMP29)+(P2(2)*4D0*(V2(3)*TMP15+V1(3)*TMP20+P3(0)*TMP29)
     $ +(TMP10*4D0*(V2(3)*V1(5)-V2(5)*V1(3))+4D0*(TMP12*(P3(2)*V2(3)
     $ -P3(0)*V2(5))))))+(TMP17*(P2(0)*4D0*(P3(2)*V1(6)-P3(3)*V1(5))
     $ +(P2(2)*4D0*(P3(3)*V1(3)-P3(0)*V1(6))+4D0*(P2(3)*(P3(0)*V1(5)
     $ -P3(2)*V1(3)))))+(TMP6*(P3(0)*4D0*(V2(5)*V1(6)-V2(6)*V1(5))
     $ +(P3(2)*4D0*(V2(6)*V1(3)-V2(3)*V1(6))+4D0*(P3(3)*(V2(3)*V1(5)
     $ -V2(5)*V1(3)))))+(TMP8*(P2(0)*4D0*(V2(5)*V1(6)-V2(6)*V1(5))
     $ +(P2(2)*4D0*(V2(6)*V1(3)-V2(3)*V1(6))+4D0*(P2(3)*(V2(3)*V1(5)
     $ -V2(5)*V1(3)))))+(V1(4)*(TMP34+TMP36-TMP37-TMP38)+(V2(4)*(TMP41
     $ +TMP43-TMP40-TMP42)+(P1(1)*2D0*(TMP25-TMP23)+2D0*(P2(1)*(TMP28
     $ -TMP26))))))))))))
      V3(5)= DENOM*CI*(OM3*P3(2)*(TMP20*(TMP40+TMP42+2D0*(TMP58)-TMP41
     $ -TMP43-2D0*(TMP57))+(TMP15*-1D0*(TMP38+TMP34+TMP36-TMP37
     $ -2D0*(TMP56))+(TMP8*2D0*(TMP23+2D0*(TMP55)-TMP25)+2D0*(TMP10
     $ *(TMP28+TMP26)))))+(P1(0)*(P2(1)*4D0*(V2(6)*TMP15+V1(6)*TMP20
     $ +P3(3)*TMP29)+(P2(3)*-4D0*(V2(4)*TMP15+V1(4)*TMP20+P3(1)*TMP29)
     $ +(TMP10*4D0*(V2(6)*V1(4)-V2(4)*V1(6))+4D0*(TMP12*(P3(1)*V2(6)
     $ -P3(3)*V2(4))))))+(P1(1)*(P2(0)*-4D0*(V2(6)*TMP15+V1(6)*TMP20
     $ +P3(3)*TMP29)+(P2(3)*4D0*(V2(3)*TMP15+V1(3)*TMP20+P3(0)*TMP29)
     $ +(TMP10*4D0*(V2(3)*V1(6)-V2(6)*V1(3))+4D0*(TMP12*(P3(3)*V2(3)
     $ -P3(0)*V2(6))))))+(P1(3)*(P2(0)*4D0*(V2(4)*TMP15+V1(4)*TMP20
     $ +P3(1)*TMP29)+(P2(1)*-4D0*(V2(3)*TMP15+V1(3)*TMP20+P3(0)*TMP29)
     $ +(TMP10*4D0*(V2(4)*V1(3)-V2(3)*V1(4))+4D0*(TMP12*(P3(0)*V2(4)
     $ -P3(1)*V2(3))))))+(TMP17*(P2(0)*4D0*(P3(3)*V1(4)-P3(1)*V1(6))
     $ +(P2(1)*4D0*(P3(0)*V1(6)-P3(3)*V1(3))+4D0*(P2(3)*(P3(1)*V1(3)
     $ -P3(0)*V1(4)))))+(TMP6*(P3(0)*4D0*(V2(6)*V1(4)-V2(4)*V1(6))
     $ +(P3(1)*4D0*(V2(3)*V1(6)-V2(6)*V1(3))+4D0*(P3(3)*(V2(4)*V1(3)
     $ -V2(3)*V1(4)))))+(TMP8*(P2(0)*4D0*(V2(6)*V1(4)-V2(4)*V1(6))
     $ +(P2(1)*4D0*(V2(3)*V1(6)-V2(6)*V1(3))+4D0*(P2(3)*(V2(4)*V1(3)
     $ -V2(3)*V1(4)))))+(V1(5)*(TMP34+TMP36-TMP37-TMP38)+(V2(5)*(TMP41
     $ +TMP43-TMP40-TMP42)+(P1(2)*2D0*(TMP25-TMP23)+2D0*(P2(2)*(TMP28
     $ -TMP26))))))))))))
      V3(6)= DENOM*CI*(OM3*P3(3)*(TMP20*(TMP40+TMP42+2D0*(TMP58)-TMP41
     $ -TMP43-2D0*(TMP57))+(TMP15*-1D0*(TMP38+TMP34+TMP36-TMP37
     $ -2D0*(TMP56))+(TMP8*2D0*(TMP23+2D0*(TMP55)-TMP25)+2D0*(TMP10
     $ *(TMP28+TMP26)))))+(P1(0)*(P2(1)*-4D0*(V2(5)*TMP15+V1(5)*TMP20
     $ +P3(2)*TMP29)+(P2(2)*4D0*(V2(4)*TMP15+V1(4)*TMP20+P3(1)*TMP29)
     $ +(TMP10*4D0*(V2(4)*V1(5)-V2(5)*V1(4))+4D0*(TMP12*(P3(2)*V2(4)
     $ -P3(1)*V2(5))))))+(P1(1)*(P2(0)*4D0*(V2(5)*TMP15+V1(5)*TMP20
     $ +P3(2)*TMP29)+(P2(2)*-4D0*(V2(3)*TMP15+V1(3)*TMP20+P3(0)*TMP29)
     $ +(TMP10*4D0*(V2(5)*V1(3)-V2(3)*V1(5))+4D0*(TMP12*(P3(0)*V2(5)
     $ -P3(2)*V2(3))))))+(P1(2)*(P2(0)*-4D0*(V2(4)*TMP15+V1(4)*TMP20
     $ +P3(1)*TMP29)+(P2(1)*4D0*(V2(3)*TMP15+V1(3)*TMP20+P3(0)*TMP29)
     $ +(TMP10*4D0*(V2(3)*V1(4)-V2(4)*V1(3))+4D0*(TMP12*(P3(1)*V2(3)
     $ -P3(0)*V2(4))))))+(TMP17*(P2(0)*4D0*(P3(1)*V1(5)-P3(2)*V1(4))
     $ +(P2(1)*4D0*(P3(2)*V1(3)-P3(0)*V1(5))+4D0*(P2(2)*(P3(0)*V1(4)
     $ -P3(1)*V1(3)))))+(TMP6*(P3(0)*4D0*(V2(4)*V1(5)-V2(5)*V1(4))
     $ +(P3(1)*4D0*(V2(5)*V1(3)-V2(3)*V1(5))+4D0*(P3(2)*(V2(3)*V1(4)
     $ -V2(4)*V1(3)))))+(TMP8*(P2(0)*4D0*(V2(4)*V1(5)-V2(5)*V1(4))
     $ +(P2(1)*4D0*(V2(5)*V1(3)-V2(3)*V1(5))+4D0*(P2(2)*(V2(3)*V1(4)
     $ -V2(4)*V1(3)))))+(V1(6)*(TMP34+TMP36-TMP37-TMP38)+(V2(6)*(TMP41
     $ +TMP43-TMP40-TMP42)+(P1(3)*2D0*(TMP25-TMP23)+2D0*(P2(3)*(TMP28
     $ -TMP26))))))))))))
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     4*Epsilon(1,2,3,-2)*P(-2,3)*P(-1,1)*P(-1,2) + 4*Epsilon(1,2,3,-2)
C     *P(-2,2)*P(-1,1)*P(-1,3) + 4*Epsilon(1,2,3,-2)*P(-2,1)*P(-1,2)*P(
C     -1,3) - 2*Epsilon(2,3,-1,-2)*P(-2,3)*P(-1,1)*P(1,2) + 2*Epsilon(2
C     ,3,-1,-2)*P(-2,1)*P(-1,3)*P(1,2) - 2*Epsilon(2,3,-1,-2)*P(-2,2)*P
C     (-1,1)*P(1,3) + 2*Epsilon(2,3,-1,-2)*P(-2,1)*P(-1,2)*P(1,3) +
C      2*Epsilon(1,3,-1,-2)*P(-2,3)*P(-1,2)*P(2,1) - 2*Epsilon(1,3,-1,-
C     2)*P(-2,2)*P(-1,3)*P(2,1) - 2*Epsilon(1,3,-1,-2)*P(-2,2)*P(-1,1)*
C     P(2,3) + 2*Epsilon(1,3,-1,-2)*P(-2,1)*P(-1,2)*P(2,3) + 2*Epsilon(
C     1,2,-1,-2)*P(-2,3)*P(-1,2)*P(3,1) - 2*Epsilon(1,2,-1,-2)*P(-2,2)*
C     P(-1,3)*P(3,1) + 2*Epsilon(1,2,-1,-2)*P(-2,3)*P(-1,1)*P(3,2) -
C      2*Epsilon(1,2,-1,-2)*P(-2,1)*P(-1,3)*P(3,2) + Epsilon(3,-1,-2,-3
C     )*P(-3,3)*P(-2,2)*P(-1,1)*Metric(1,2) - Epsilon(3,-1,-2,-3)*P(-3,
C     3)*P(-2,1)*P(-1,2)*Metric(1,2) + Epsilon(3,-1,-2,-3)*P(-3,2)*P(-2
C     ,1)*P(-1,3)*Metric(1,2) - Epsilon(3,-1,-2,-3)*P(-3,1)*P(-2,2)*P(-
C     1,3)*Metric(1,2) - Epsilon(2,-1,-2,-3)*P(-3,2)*P(-2,3)*P(-1,1)*Me
C     tric(1,3) - Epsilon(2,-1,-2,-3)*P(-3,3)*P(-2,1)*P(-1,2)*Metric(1,
C     3) + Epsilon(2,-1,-2,-3)*P(-3,1)*P(-2,3)*P(-1,2)*Metric(1,3) +
C      Epsilon(2,-1,-2,-3)*P(-3,2)*P(-2,1)*P(-1,3)*Metric(1,3) +
C      Epsilon(1,-1,-2,-3)*P(-3,3)*P(-2,2)*P(-1,1)*Metric(2,3) -
C      Epsilon(1,-1,-2,-3)*P(-3,2)*P(-2,3)*P(-1,1)*Metric(2,3) +
C      Epsilon(1,-1,-2,-3)*P(-3,1)*P(-2,3)*P(-1,2)*Metric(2,3) -
C      Epsilon(1,-1,-2,-3)*P(-3,1)*P(-2,2)*P(-1,3)*Metric(2,3)
C     
      SUBROUTINE VVV10_2_3_4_7_8_9_3(V1, V2, COUP1, COUP2, COUP3
     $ , COUP4, COUP5, COUP6, COUP7, M3, W3,V3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP6
      REAL*8 P3(0:3)
      COMPLEX*16 COUP2
      COMPLEX*16 VTMP(6)
      COMPLEX*16 COUP5
      REAL*8 P2(0:3)
      COMPLEX*16 COUP1
      COMPLEX*16 OM3
      COMPLEX*16 COUP4
      COMPLEX*16 V2(*)
      REAL*8 P1(0:3)
      REAL*8 W3
      COMPLEX*16 DENOM
      COMPLEX*16 V3(6)
      INTEGER*4 I
      COMPLEX*16 V1(*)
      REAL*8 M3
      COMPLEX*16 COUP7
      COMPLEX*16 COUP3
      CALL VVV10_3(V1,V2,COUP1,M3,W3,V3)
      CALL VVV2_3(V1,V2,COUP2,M3,W3,VTMP)
      DO I = 3, 6
        V3(I) = V3(I) + VTMP(I)
      ENDDO
      CALL VVV3_3(V1,V2,COUP3,M3,W3,VTMP)
      DO I = 3, 6
        V3(I) = V3(I) + VTMP(I)
      ENDDO
      CALL VVV4_3(V1,V2,COUP4,M3,W3,VTMP)
      DO I = 3, 6
        V3(I) = V3(I) + VTMP(I)
      ENDDO
      CALL VVV7_3(V1,V2,COUP5,M3,W3,VTMP)
      DO I = 3, 6
        V3(I) = V3(I) + VTMP(I)
      ENDDO
      CALL VVV8_3(V1,V2,COUP6,M3,W3,VTMP)
      DO I = 3, 6
        V3(I) = V3(I) + VTMP(I)
      ENDDO
      CALL VVV9_3(V1,V2,COUP7,M3,W3,VTMP)
      DO I = 3, 6
        V3(I) = V3(I) + VTMP(I)
      ENDDO
      END


