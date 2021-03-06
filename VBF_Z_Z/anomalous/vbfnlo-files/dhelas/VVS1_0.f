C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     -(Epsilon(1,2,-1,-2)*P(-2,3)*P(-1,1)) + 3*Epsilon(1,2,-1,-2)*P(-2
C     ,1)*P(-1,3)
C     
      SUBROUTINE VVS1_0(V1, V2, S3, COUP,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 V2(*)
      COMPLEX*16 S3(*)
      REAL*8 P1(0:3)
      REAL*8 P3(0:3)
      COMPLEX*16 TMP26
      COMPLEX*16 TMP28
      COMPLEX*16 VERTEX
      COMPLEX*16 COUP
      COMPLEX*16 V1(*)
      P1(0) = DBLE(V1(1))
      P1(1) = DBLE(V1(2))
      P1(2) = DIMAG(V1(2))
      P1(3) = DIMAG(V1(1))
      P3(0) = DBLE(S3(1))
      P3(1) = DBLE(S3(2))
      P3(2) = DIMAG(S3(2))
      P3(3) = DIMAG(S3(1))
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
      VERTEX = COUP*S3(3)*(+CI*(TMP26)-3D0 * CI*(TMP28))
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     -(Epsilon(1,2,-1,-2)*P(-2,3)*P(-1,1)) + 3*Epsilon(1,2,-1,-2)*P(-2
C     ,1)*P(-1,3)
C     
      SUBROUTINE VVS1_3_4_7_8_9_0(V1, V2, S3, COUP1, COUP2, COUP3
     $ , COUP4, COUP5, COUP6,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 V2(*)
      COMPLEX*16 COUP5
      COMPLEX*16 S3(*)
      COMPLEX*16 COUP6
      REAL*8 P1(0:3)
      REAL*8 P3(0:3)
      COMPLEX*16 COUP1
      COMPLEX*16 COUP2
      COMPLEX*16 COUP3
      COMPLEX*16 TMP
      COMPLEX*16 VERTEX
      COMPLEX*16 V1(*)
      COMPLEX*16 COUP4
      CALL VVS1_0(V1,V2,S3,COUP1,VERTEX)
      CALL VVS3_0(V1,V2,S3,COUP2,TMP)
      VERTEX = VERTEX + TMP
      CALL VVS4_0(V1,V2,S3,COUP3,TMP)
      VERTEX = VERTEX + TMP
      CALL VVS7_0(V1,V2,S3,COUP4,TMP)
      VERTEX = VERTEX + TMP
      CALL VVS8_0(V1,V2,S3,COUP5,TMP)
      VERTEX = VERTEX + TMP
      CALL VVS9_0(V1,V2,S3,COUP6,TMP)
      VERTEX = VERTEX + TMP
      END


