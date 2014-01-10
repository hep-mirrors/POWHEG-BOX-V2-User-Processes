C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     -(Epsilon(1,2,-1,-2)*P(-2,3)*P(-1,1)) + Epsilon(1,2,-1,-2)*P(-2,3
C     )*P(-1,2) + 3*Epsilon(1,2,-1,-2)*P(-2,1)*P(-1,3) - 3*Epsilon(1,2,
C     -1,-2)*P(-2,2)*P(-1,3)
C     
      SUBROUTINE VVS4_3(V1, V2, COUP, M3, W3,S3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 V2(*)
      COMPLEX*16 S3(3)
      COMPLEX*16 COUP
      REAL*8 P1(0:3)
      REAL*8 W3
      REAL*8 P2(0:3)
      COMPLEX*16 TMP23
      REAL*8 P3(0:3)
      REAL*8 M3
      COMPLEX*16 DENOM
      COMPLEX*16 TMP26
      COMPLEX*16 TMP28
      COMPLEX*16 TMP25
      COMPLEX*16 V1(*)
      P1(0) = DBLE(V1(1))
      P1(1) = DBLE(V1(2))
      P1(2) = DIMAG(V1(2))
      P1(3) = DIMAG(V1(1))
      P2(0) = DBLE(V2(1))
      P2(1) = DBLE(V2(2))
      P2(2) = DIMAG(V2(2))
      P2(3) = DIMAG(V2(1))
      S3(1) = +V1(1)+V2(1)
      S3(2) = +V1(2)+V2(2)
      P3(0) = -DBLE(S3(1))
      P3(1) = -DBLE(S3(2))
      P3(2) = -DIMAG(S3(2))
      P3(3) = -DIMAG(S3(1))
      TMP25 = -1D0*(P2(0)*(P3(1)*(V2(6)*V1(5)-V2(5)*V1(6))+(P3(2)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+P3(3)*(V2(5)*V1(4)-V2(4)*V1(5))))
     $ +(P2(1)*(P3(0)*(V2(5)*V1(6)-V2(6)*V1(5))+(P3(2)*(V2(6)*V1(3)
     $ -V2(3)*V1(6))+P3(3)*(V2(3)*V1(5)-V2(5)*V1(3))))+(P2(2)*(P3(0)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+(P3(1)*(V2(3)*V1(6)-V2(6)*V1(3))
     $ +P3(3)*(V2(4)*V1(3)-V2(3)*V1(4))))+P2(3)*(P3(0)*(V2(4)*V1(5)
     $ -V2(5)*V1(4))+(P3(1)*(V2(5)*V1(3)-V2(3)*V1(5))+P3(2)*(V2(3)
     $ *V1(4)-V2(4)*V1(3)))))))
      TMP26 = -1D0*(P1(0)*(P3(1)*(V2(5)*V1(6)-V2(6)*V1(5))+(P3(2)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+P3(3)*(V2(4)*V1(5)-V2(5)*V1(4))))
     $ +(P1(1)*(P3(0)*(V2(6)*V1(5)-V2(5)*V1(6))+(P3(2)*(V2(3)*V1(6)
     $ -V2(6)*V1(3))+P3(3)*(V2(5)*V1(3)-V2(3)*V1(5))))+(P1(2)*(P3(0)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+(P3(1)*(V2(6)*V1(3)-V2(3)*V1(6))
     $ +P3(3)*(V2(3)*V1(4)-V2(4)*V1(3))))+P1(3)*(P3(0)*(V2(5)*V1(4)
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
      TMP23 = -1D0*(P2(0)*(P3(1)*(V2(5)*V1(6)-V2(6)*V1(5))+(P3(2)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+P3(3)*(V2(4)*V1(5)-V2(5)*V1(4))))
     $ +(P2(1)*(P3(0)*(V2(6)*V1(5)-V2(5)*V1(6))+(P3(2)*(V2(3)*V1(6)
     $ -V2(6)*V1(3))+P3(3)*(V2(5)*V1(3)-V2(3)*V1(5))))+(P2(2)*(P3(0)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+(P3(1)*(V2(6)*V1(3)-V2(3)*V1(6))
     $ +P3(3)*(V2(3)*V1(4)-V2(4)*V1(3))))+P2(3)*(P3(0)*(V2(5)*V1(4)
     $ -V2(4)*V1(5))+(P3(1)*(V2(3)*V1(5)-V2(5)*V1(3))+P3(2)*(V2(4)
     $ *V1(3)-V2(3)*V1(4)))))))
      DENOM = COUP/(P3(0)**2-P3(1)**2-P3(2)**2-P3(3)**2 - M3 * (M3 
     $ -CI* W3))
      S3(3)= DENOM*(+3D0 * CI*(TMP28)-CI*(TMP26)+CI*(TMP23)-3D0 * CI
     $ *(TMP25))
      END


