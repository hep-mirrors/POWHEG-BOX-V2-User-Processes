C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     -(Epsilon(1,2,-1,-2)*P(-2,3)*P(-1,1)) + 3*Epsilon(1,2,-1,-2)*P(-2
C     ,1)*P(-1,3)
C     
      SUBROUTINE VVS1_3(V1, V2, COUP, M3, W3,S3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 V2(*)
      COMPLEX*16 S3(3)
      REAL*8 P1(0:3)
      REAL*8 W3
      REAL*8 P3(0:3)
      REAL*8 M3
      COMPLEX*16 DENOM
      COMPLEX*16 TMP26
      COMPLEX*16 TMP28
      COMPLEX*16 COUP
      COMPLEX*16 V1(*)
      P1(0) = DBLE(V1(1))
      P1(1) = DBLE(V1(2))
      P1(2) = DIMAG(V1(2))
      P1(3) = DIMAG(V1(1))
      S3(1) = +V1(1)+V2(1)
      S3(2) = +V1(2)+V2(2)
      P3(0) = -DBLE(S3(1))
      P3(1) = -DBLE(S3(2))
      P3(2) = -DIMAG(S3(2))
      P3(3) = -DIMAG(S3(1))
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
      DENOM = COUP/(P3(0)**2-P3(1)**2-P3(2)**2-P3(3)**2 - M3 * (M3 
     $ -CI* W3))
      S3(3)= DENOM*(+3D0 * CI*(TMP28)-CI*(TMP26))
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     -(Epsilon(1,2,-1,-2)*P(-2,3)*P(-1,1)) + 3*Epsilon(1,2,-1,-2)*P(-2
C     ,1)*P(-1,3)
C     
      SUBROUTINE VVS1_3_4_7_8_9_3(V1, V2, COUP1, COUP2, COUP3, COUP4
     $ , COUP5, COUP6, M3, W3,S3)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 V2(*)
      COMPLEX*16 COUP2
      COMPLEX*16 S3(3)
      COMPLEX*16 COUP6
      REAL*8 P1(0:3)
      REAL*8 W3
      COMPLEX*16 COUP5
      COMPLEX*16 STMP(3)
      REAL*8 P3(0:3)
      REAL*8 M3
      COMPLEX*16 COUP1
      COMPLEX*16 DENOM
      COMPLEX*16 COUP3
      INTEGER*4 I
      COMPLEX*16 V1(*)
      COMPLEX*16 COUP4
      CALL VVS1_3(V1,V2,COUP1,M3,W3,S3)
      CALL VVS3_3(V1,V2,COUP2,M3,W3,STMP)
      DO I = 3, 3
        S3(I) = S3(I) + STMP(I)
      ENDDO
      CALL VVS4_3(V1,V2,COUP3,M3,W3,STMP)
      DO I = 3, 3
        S3(I) = S3(I) + STMP(I)
      ENDDO
      CALL VVS7_3(V1,V2,COUP4,M3,W3,STMP)
      DO I = 3, 3
        S3(I) = S3(I) + STMP(I)
      ENDDO
      CALL VVS8_3(V1,V2,COUP5,M3,W3,STMP)
      DO I = 3, 3
        S3(I) = S3(I) + STMP(I)
      ENDDO
      CALL VVS9_3(V1,V2,COUP6,M3,W3,STMP)
      DO I = 3, 3
        S3(I) = S3(I) + STMP(I)
      ENDDO
      END


