C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     P(-1,1)*Gamma(-1,2,1)
C     
      SUBROUTINE MP_R2_QQ_1_0(F1, F2, COUP,VERTEX)
      IMPLICIT NONE
      COMPLEX*32 CI
      PARAMETER (CI=(0Q0,1Q0))
      COMPLEX*32 TMP5
      COMPLEX*32 F1(*)
      COMPLEX*32 F2(*)
      COMPLEX*32 P1(0:3)
      COMPLEX*32 VERTEX
      COMPLEX*32 COUP
      P1(0) = F1(1)
      P1(1) = F1(2)
      P1(2) = F1(3)
      P1(3) = F1(4)
      TMP5 = (F1(5)*(F2(7)*(P1(0)+P1(3))+F2(8)*(P1(1)+CI*(P1(2))))
     $ +(F1(6)*(F2(7)*(P1(1)-CI*(P1(2)))+F2(8)*(P1(0)-P1(3)))+(F1(7)
     $ *(F2(5)*(P1(0)-P1(3))-F2(6)*(P1(1)+CI*(P1(2))))+F1(8)*(F2(5)*(
     $ +CI*(P1(2))-P1(1))+F2(6)*(P1(0)+P1(3))))))
      VERTEX = COUP*(-CI * TMP5)
      END


