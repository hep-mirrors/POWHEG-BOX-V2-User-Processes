C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     2*Epsilon(1,2,3,4)*P(-1,1)*P(-1,2) - 2*Epsilon(1,2,3,4)*P(-1,1)*P
C     (-1,3) - 2*Epsilon(1,2,3,4)*P(-1,2)*P(-1,4) + 2*Epsilon(1,2,3,4)*
C     P(-1,3)*P(-1,4) + 2*Epsilon(2,3,4,-1)*P(-1,1)*P(1,2) + 2*Epsilon(
C     2,3,4,-1)*P(-1,4)*P(1,2) - 2*Epsilon(2,3,4,-1)*P(-1,1)*P(1,3) -
C      2*Epsilon(2,3,4,-1)*P(-1,4)*P(1,3) + 2*Epsilon(2,3,4,-1)*P(-1,2)
C     *P(1,4) - 2*Epsilon(2,3,4,-1)*P(-1,3)*P(1,4) - 2*Epsilon(1,3,4,-1
C     )*P(-1,2)*P(2,1) - 2*Epsilon(1,3,4,-1)*P(-1,3)*P(2,1) -
C      2*Epsilon(1,3,4,-1)*P(-1,1)*P(2,3) + 2*Epsilon(1,3,4,-1)*P(-1,4)
C     *P(2,3) + 2*Epsilon(1,3,4,-1)*P(-1,2)*P(2,4) + 2*Epsilon(1,3,4,-1
C     )*P(-1,3)*P(2,4) - 2*Epsilon(1,2,4,-1)*P(-1,2)*P(3,1) -
C      2*Epsilon(1,2,4,-1)*P(-1,3)*P(3,1) - 2*Epsilon(1,2,4,-1)*P(-1,1)
C     *P(3,2) + 2*Epsilon(1,2,4,-1)*P(-1,4)*P(3,2) + 2*Epsilon(1,2,4,-1
C     )*P(-1,2)*P(3,4) + 2*Epsilon(1,2,4,-1)*P(-1,3)*P(3,4) +
C      2*Epsilon(1,2,3,-1)*P(-1,2)*P(4,1) - 2*Epsilon(1,2,3,-1)*P(-1,3)
C     *P(4,1) + 2*Epsilon(1,2,3,-1)*P(-1,1)*P(4,2) + 2*Epsilon(1,2,3,-1
C     )*P(-1,4)*P(4,2) - 2*Epsilon(1,2,3,-1)*P(-1,1)*P(4,3) -
C      2*Epsilon(1,2,3,-1)*P(-1,4)*P(4,3) + Epsilon(3,4,-1,-2)*P(-2,2)*
C     P(-1,1)*Metric(1,2) + 2*Epsilon(3,4,-1,-2)*P(-2,3)*P(-1,1)*Metric
C     (1,2) - Epsilon(3,4,-1,-2)*P(-2,1)*P(-1,2)*Metric(1,2) -
C      2*Epsilon(3,4,-1,-2)*P(-2,4)*P(-1,2)*Metric(1,2) + 2*Epsilon(2,4
C     ,-1,-2)*P(-2,2)*P(-1,1)*Metric(1,3) + Epsilon(2,4,-1,-2)*P(-2,3)*
C     P(-1,1)*Metric(1,3) - Epsilon(2,4,-1,-2)*P(-2,1)*P(-1,3)*Metric(1
C     ,3) - 2*Epsilon(2,4,-1,-2)*P(-2,4)*P(-1,3)*Metric(1,3) -
C      2*Epsilon(2,3,-1,-2)*P(-2,2)*P(-1,1)*Metric(1,4) + 2*Epsilon(2,3
C     ,-1,-2)*P(-2,3)*P(-1,1)*Metric(1,4) - 2*Epsilon(2,3,-1,-2)*P(-2,2
C     )*P(-1,4)*Metric(1,4) + 2*Epsilon(2,3,-1,-2)*P(-2,3)*P(-1,4)*Metr
C     ic(1,4) - 2*Epsilon(1,4,-1,-2)*P(-2,1)*P(-1,2)*Metric(2,3) +
C      2*Epsilon(1,4,-1,-2)*P(-2,4)*P(-1,2)*Metric(2,3) - 2*Epsilon(1,4
C     ,-1,-2)*P(-2,1)*P(-1,3)*Metric(2,3) + 2*Epsilon(1,4,-1,-2)*P(-2,4
C     )*P(-1,3)*Metric(2,3) + 2*Epsilon(1,3,-1,-2)*P(-2,1)*P(-1,2)*Metr
C     ic(2,4) + Epsilon(1,3,-1,-2)*P(-2,4)*P(-1,2)*Metric(2,4) -
C      Epsilon(1,3,-1,-2)*P(-2,2)*P(-1,4)*Metric(2,4) - 2*Epsilon(1,3,-
C     1,-2)*P(-2,3)*P(-1,4)*Metric(2,4) + 2*Epsilon(1,2,-1,-2)*P(-2,1)*
C     P(-1,3)*Metric(3,4) + Epsilon(1,2,-1,-2)*P(-2,4)*P(-1,3)*Metric(3
C     ,4) - 2*Epsilon(1,2,-1,-2)*P(-2,2)*P(-1,4)*Metric(3,4) -
C      Epsilon(1,2,-1,-2)*P(-2,3)*P(-1,4)*Metric(3,4)
C     
      SUBROUTINE VVVV3_0(V1, V2, V3, V4, COUP,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 TMP39
      COMPLEX*16 TMP61
      COMPLEX*16 TMP93
      COMPLEX*16 TMP12
      COMPLEX*16 TMP78
      COMPLEX*16 TMP104
      REAL*8 P3(0:3)
      COMPLEX*16 TMP82
      COMPLEX*16 TMP71
      COMPLEX*16 TMP5
      COMPLEX*16 TMP89
      COMPLEX*16 TMP97
      COMPLEX*16 TMP14
      COMPLEX*16 TMP28
      COMPLEX*16 TMP98
      COMPLEX*16 TMP86
      COMPLEX*16 TMP75
      COMPLEX*16 COUP
      COMPLEX*16 TMP9
      COMPLEX*16 TMP60
      COMPLEX*16 V3(*)
      COMPLEX*16 TMP11
      COMPLEX*16 TMP79
      COMPLEX*16 TMP103
      REAL*8 P2(0:3)
      COMPLEX*16 TMP81
      COMPLEX*16 TMP20
      COMPLEX*16 TMP6
      COMPLEX*16 TMP88
      COMPLEX*16 TMP90
      COMPLEX*16 TMP15
      COMPLEX*16 TMP67
      COMPLEX*16 TMP99
      COMPLEX*16 TMP85
      COMPLEX*16 TMP72
      COMPLEX*16 TMP24
      COMPLEX*16 TMP94
      COMPLEX*16 TMP63
      COMPLEX*16 V2(*)
      COMPLEX*16 TMP59
      COMPLEX*16 TMP76
      COMPLEX*16 TMP102
      REAL*8 P1(0:3)
      COMPLEX*16 TMP80
      COMPLEX*16 TMP7
      COMPLEX*16 TMP29
      COMPLEX*16 TMP91
      COMPLEX*16 TMP66
      COMPLEX*16 TMP68
      COMPLEX*16 TMP84
      COMPLEX*16 TMP73
      COMPLEX*16 TMP27
      REAL*8 P4(0:3)
      COMPLEX*16 TMP95
      COMPLEX*16 TMP62
      COMPLEX*16 V1(*)
      COMPLEX*16 TMP35
      COMPLEX*16 TMP77
      COMPLEX*16 TMP101
      COMPLEX*16 TMP22
      COMPLEX*16 VERTEX
      COMPLEX*16 TMP92
      COMPLEX*16 TMP17
      COMPLEX*16 V4(*)
      COMPLEX*16 TMP83
      COMPLEX*16 TMP70
      COMPLEX*16 TMP96
      COMPLEX*16 TMP65
      COMPLEX*16 TMP64
      COMPLEX*16 TMP87
      COMPLEX*16 TMP74
      COMPLEX*16 TMP100
      COMPLEX*16 TMP8
      P1(0) = DBLE(V1(1))
      P1(1) = DBLE(V1(2))
      P1(2) = DIMAG(V1(2))
      P1(3) = DIMAG(V1(1))
      P2(0) = DBLE(V2(1))
      P2(1) = DBLE(V2(2))
      P2(2) = DIMAG(V2(2))
      P2(3) = DIMAG(V2(1))
      P3(0) = DBLE(V3(1))
      P3(1) = DBLE(V3(2))
      P3(2) = DIMAG(V3(2))
      P3(3) = DIMAG(V3(1))
      P4(0) = DBLE(V4(1))
      P4(1) = DBLE(V4(2))
      P4(2) = DIMAG(V4(2))
      P4(3) = DIMAG(V4(1))
      TMP68 = (P2(0)*P4(0)-P2(1)*P4(1)-P2(2)*P4(2)-P2(3)*P4(3))
      TMP24 = (V3(3)*P1(0)-V3(4)*P1(1)-V3(5)*P1(2)-V3(6)*P1(3))
      TMP27 = (V3(3)*P2(0)-V3(4)*P2(1)-V3(5)*P2(2)-V3(6)*P2(3))
      TMP20 = (P3(0)*V2(3)-P3(1)*V2(4)-P3(2)*V2(5)-P3(3)*V2(6))
      TMP22 = -1D0*(P1(0)*(P2(1)*(V3(6)*V1(5)-V3(5)*V1(6))+(P2(2)
     $ *(V3(4)*V1(6)-V3(6)*V1(4))+P2(3)*(V3(5)*V1(4)-V3(4)*V1(5))))
     $ +(P1(1)*(P2(0)*(V3(5)*V1(6)-V3(6)*V1(5))+(P2(2)*(V3(6)*V1(3)
     $ -V3(3)*V1(6))+P2(3)*(V3(3)*V1(5)-V3(5)*V1(3))))+(P1(2)*(P2(0)
     $ *(V3(6)*V1(4)-V3(4)*V1(6))+(P2(1)*(V3(3)*V1(6)-V3(6)*V1(3))
     $ +P2(3)*(V3(4)*V1(3)-V3(3)*V1(4))))+P1(3)*(P2(0)*(V3(4)*V1(5)
     $ -V3(5)*V1(4))+(P2(1)*(V3(5)*V1(3)-V3(3)*V1(5))+P2(2)*(V3(3)
     $ *V1(4)-V3(4)*V1(3)))))))
      TMP60 = (V2(3)*V4(3)-V2(4)*V4(4)-V2(5)*V4(5)-V2(6)*V4(6))
      TMP61 = (V3(3)*V4(3)-V3(4)*V4(4)-V3(5)*V4(5)-V3(6)*V4(6))
      TMP62 = (P1(0)*V4(3)-P1(1)*V4(4)-P1(2)*V4(5)-P1(3)*V4(6))
      TMP63 = (V3(3)*P4(0)-V3(4)*P4(1)-V3(5)*P4(2)-V3(6)*P4(3))
      TMP28 = -1D0*(P1(0)*(P3(1)*(V2(6)*V1(5)-V2(5)*V1(6))+(P3(2)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+P3(3)*(V2(5)*V1(4)-V2(4)*V1(5))))
     $ +(P1(1)*(P3(0)*(V2(5)*V1(6)-V2(6)*V1(5))+(P3(2)*(V2(6)*V1(3)
     $ -V2(3)*V1(6))+P3(3)*(V2(3)*V1(5)-V2(5)*V1(3))))+(P1(2)*(P3(0)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+(P3(1)*(V2(3)*V1(6)-V2(6)*V1(3))
     $ +P3(3)*(V2(4)*V1(3)-V2(3)*V1(4))))+P1(3)*(P3(0)*(V2(4)*V1(5)
     $ -V2(5)*V1(4))+(P3(1)*(V2(5)*V1(3)-V2(3)*V1(5))+P3(2)*(V2(3)
     $ *V1(4)-V2(4)*V1(3)))))))
      TMP65 = (P3(0)*V4(3)-P3(1)*V4(4)-P3(2)*V4(5)-P3(3)*V4(6))
      TMP66 = (V2(3)*P4(0)-V2(4)*P4(1)-V2(5)*P4(2)-V2(6)*P4(3))
      TMP67 = (V1(3)*P4(0)-V1(4)*P4(1)-V1(5)*P4(2)-V1(6)*P4(3))
      TMP86 = -1D0*(P1(0)*(P3(1)*(V3(6)*V4(5)-V3(5)*V4(6))+(P3(2)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+P3(3)*(V3(5)*V4(4)-V3(4)*V4(5))))
     $ +(P1(1)*(P3(0)*(V3(5)*V4(6)-V3(6)*V4(5))+(P3(2)*(V3(6)*V4(3)
     $ -V3(3)*V4(6))+P3(3)*(V3(3)*V4(5)-V3(5)*V4(3))))+(P1(2)*(P3(0)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+(P3(1)*(V3(3)*V4(6)-V3(6)*V4(3))
     $ +P3(3)*(V3(4)*V4(3)-V3(3)*V4(4))))+P1(3)*(P3(0)*(V3(4)*V4(5)
     $ -V3(5)*V4(4))+(P3(1)*(V3(5)*V4(3)-V3(3)*V4(5))+P3(2)*(V3(3)
     $ *V4(4)-V3(4)*V4(3)))))))
      TMP87 = -1D0*(P1(0)*(P2(1)*(V3(5)*V4(6)-V3(6)*V4(5))+(P2(2)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+P2(3)*(V3(4)*V4(5)-V3(5)*V4(4))))
     $ +(P1(1)*(P2(0)*(V3(6)*V4(5)-V3(5)*V4(6))+(P2(2)*(V3(3)*V4(6)
     $ -V3(6)*V4(3))+P2(3)*(V3(5)*V4(3)-V3(3)*V4(5))))+(P1(2)*(P2(0)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+(P2(1)*(V3(6)*V4(3)-V3(3)*V4(6))
     $ +P2(3)*(V3(3)*V4(4)-V3(4)*V4(3))))+P1(3)*(P2(0)*(V3(5)*V4(4)
     $ -V3(4)*V4(5))+(P2(1)*(V3(3)*V4(5)-V3(5)*V4(3))+P2(2)*(V3(4)
     $ *V4(3)-V3(3)*V4(4)))))))
      TMP84 = -1D0*(P4(0)*(V1(4)*(V3(6)*V2(5)-V3(5)*V2(6))+(V1(5)
     $ *(V3(4)*V2(6)-V3(6)*V2(4))+V1(6)*(V3(5)*V2(4)-V3(4)*V2(5))))
     $ +(P4(1)*(V1(3)*(V3(5)*V2(6)-V3(6)*V2(5))+(V1(5)*(V3(6)*V2(3)
     $ -V3(3)*V2(6))+V1(6)*(V3(3)*V2(5)-V3(5)*V2(3))))+(P4(2)*(V1(3)
     $ *(V3(6)*V2(4)-V3(4)*V2(6))+(V1(4)*(V3(3)*V2(6)-V3(6)*V2(3))
     $ +V1(6)*(V3(4)*V2(3)-V3(3)*V2(4))))+P4(3)*(V1(3)*(V3(4)*V2(5)
     $ -V3(5)*V2(4))+(V1(4)*(V3(5)*V2(3)-V3(3)*V2(5))+V1(5)*(V3(3)
     $ *V2(4)-V3(4)*V2(3)))))))
      TMP85 = -1D0*(P1(0)*(P2(1)*(V3(6)*V4(5)-V3(5)*V4(6))+(P2(2)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+P2(3)*(V3(5)*V4(4)-V3(4)*V4(5))))
     $ +(P1(1)*(P2(0)*(V3(5)*V4(6)-V3(6)*V4(5))+(P2(2)*(V3(6)*V4(3)
     $ -V3(3)*V4(6))+P2(3)*(V3(3)*V4(5)-V3(5)*V4(3))))+(P1(2)*(P2(0)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+(P2(1)*(V3(3)*V4(6)-V3(6)*V4(3))
     $ +P2(3)*(V3(4)*V4(3)-V3(3)*V4(4))))+P1(3)*(P2(0)*(V3(4)*V4(5)
     $ -V3(5)*V4(4))+(P2(1)*(V3(5)*V4(3)-V3(3)*V4(5))+P2(2)*(V3(3)
     $ *V4(4)-V3(4)*V4(3)))))))
      TMP82 = -1D0*(P1(0)*(V1(4)*(V2(5)*V4(6)-V2(6)*V4(5))+(V1(5)
     $ *(V2(6)*V4(4)-V2(4)*V4(6))+V1(6)*(V2(4)*V4(5)-V2(5)*V4(4))))
     $ +(P1(1)*(V1(3)*(V2(6)*V4(5)-V2(5)*V4(6))+(V1(5)*(V2(3)*V4(6)
     $ -V2(6)*V4(3))+V1(6)*(V2(5)*V4(3)-V2(3)*V4(5))))+(P1(2)*(V1(3)
     $ *(V2(4)*V4(6)-V2(6)*V4(4))+(V1(4)*(V2(6)*V4(3)-V2(3)*V4(6))
     $ +V1(6)*(V2(3)*V4(4)-V2(4)*V4(3))))+P1(3)*(V1(3)*(V2(5)*V4(4)
     $ -V2(4)*V4(5))+(V1(4)*(V2(3)*V4(5)-V2(5)*V4(3))+V1(5)*(V2(4)
     $ *V4(3)-V2(3)*V4(4)))))))
      TMP83 = -1D0*(P4(0)*(V1(4)*(V2(5)*V4(6)-V2(6)*V4(5))+(V1(5)
     $ *(V2(6)*V4(4)-V2(4)*V4(6))+V1(6)*(V2(4)*V4(5)-V2(5)*V4(4))))
     $ +(P4(1)*(V1(3)*(V2(6)*V4(5)-V2(5)*V4(6))+(V1(5)*(V2(3)*V4(6)
     $ -V2(6)*V4(3))+V1(6)*(V2(5)*V4(3)-V2(3)*V4(5))))+(P4(2)*(V1(3)
     $ *(V2(4)*V4(6)-V2(6)*V4(4))+(V1(4)*(V2(6)*V4(3)-V2(3)*V4(6))
     $ +V1(6)*(V2(3)*V4(4)-V2(4)*V4(3))))+P4(3)*(V1(3)*(V2(5)*V4(4)
     $ -V2(4)*V4(5))+(V1(4)*(V2(3)*V4(5)-V2(5)*V4(3))+V1(5)*(V2(4)
     $ *V4(3)-V2(3)*V4(4)))))))
      TMP80 = -1D0*(P2(0)*(V1(4)*(V2(5)*V4(6)-V2(6)*V4(5))+(V1(5)
     $ *(V2(6)*V4(4)-V2(4)*V4(6))+V1(6)*(V2(4)*V4(5)-V2(5)*V4(4))))
     $ +(P2(1)*(V1(3)*(V2(6)*V4(5)-V2(5)*V4(6))+(V1(5)*(V2(3)*V4(6)
     $ -V2(6)*V4(3))+V1(6)*(V2(5)*V4(3)-V2(3)*V4(5))))+(P2(2)*(V1(3)
     $ *(V2(4)*V4(6)-V2(6)*V4(4))+(V1(4)*(V2(6)*V4(3)-V2(3)*V4(6))
     $ +V1(6)*(V2(3)*V4(4)-V2(4)*V4(3))))+P2(3)*(V1(3)*(V2(5)*V4(4)
     $ -V2(4)*V4(5))+(V1(4)*(V2(3)*V4(5)-V2(5)*V4(3))+V1(5)*(V2(4)
     $ *V4(3)-V2(3)*V4(4)))))))
      TMP81 = -1D0*(P3(0)*(V1(4)*(V2(5)*V4(6)-V2(6)*V4(5))+(V1(5)
     $ *(V2(6)*V4(4)-V2(4)*V4(6))+V1(6)*(V2(4)*V4(5)-V2(5)*V4(4))))
     $ +(P3(1)*(V1(3)*(V2(6)*V4(5)-V2(5)*V4(6))+(V1(5)*(V2(3)*V4(6)
     $ -V2(6)*V4(3))+V1(6)*(V2(5)*V4(3)-V2(3)*V4(5))))+(P3(2)*(V1(3)
     $ *(V2(4)*V4(6)-V2(6)*V4(4))+(V1(4)*(V2(6)*V4(3)-V2(3)*V4(6))
     $ +V1(6)*(V2(3)*V4(4)-V2(4)*V4(3))))+P3(3)*(V1(3)*(V2(5)*V4(4)
     $ -V2(4)*V4(5))+(V1(4)*(V2(3)*V4(5)-V2(5)*V4(3))+V1(5)*(V2(4)
     $ *V4(3)-V2(3)*V4(4)))))))
      TMP88 = -1D0*(P2(0)*(P4(1)*(V3(6)*V4(5)-V3(5)*V4(6))+(P4(2)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+P4(3)*(V3(5)*V4(4)-V3(4)*V4(5))))
     $ +(P2(1)*(P4(0)*(V3(5)*V4(6)-V3(6)*V4(5))+(P4(2)*(V3(6)*V4(3)
     $ -V3(3)*V4(6))+P4(3)*(V3(3)*V4(5)-V3(5)*V4(3))))+(P2(2)*(P4(0)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+(P4(1)*(V3(3)*V4(6)-V3(6)*V4(3))
     $ +P4(3)*(V3(4)*V4(3)-V3(3)*V4(4))))+P2(3)*(P4(0)*(V3(4)*V4(5)
     $ -V3(5)*V4(4))+(P4(1)*(V3(5)*V4(3)-V3(3)*V4(5))+P4(2)*(V3(3)
     $ *V4(4)-V3(4)*V4(3)))))))
      TMP89 = -1D0*(P1(0)*(P2(1)*(V2(6)*V4(5)-V2(5)*V4(6))+(P2(2)
     $ *(V2(4)*V4(6)-V2(6)*V4(4))+P2(3)*(V2(5)*V4(4)-V2(4)*V4(5))))
     $ +(P1(1)*(P2(0)*(V2(5)*V4(6)-V2(6)*V4(5))+(P2(2)*(V2(6)*V4(3)
     $ -V2(3)*V4(6))+P2(3)*(V2(3)*V4(5)-V2(5)*V4(3))))+(P1(2)*(P2(0)
     $ *(V2(6)*V4(4)-V2(4)*V4(6))+(P2(1)*(V2(3)*V4(6)-V2(6)*V4(3))
     $ +P2(3)*(V2(4)*V4(3)-V2(3)*V4(4))))+P1(3)*(P2(0)*(V2(4)*V4(5)
     $ -V2(5)*V4(4))+(P2(1)*(V2(5)*V4(3)-V2(3)*V4(5))+P2(2)*(V2(3)
     $ *V4(4)-V2(4)*V4(3)))))))
      TMP77 = -1D0*(P3(0)*(V1(4)*(V3(5)*V4(6)-V3(6)*V4(5))+(V1(5)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+V1(6)*(V3(4)*V4(5)-V3(5)*V4(4))))
     $ +(P3(1)*(V1(3)*(V3(6)*V4(5)-V3(5)*V4(6))+(V1(5)*(V3(3)*V4(6)
     $ -V3(6)*V4(3))+V1(6)*(V3(5)*V4(3)-V3(3)*V4(5))))+(P3(2)*(V1(3)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+(V1(4)*(V3(6)*V4(3)-V3(3)*V4(6))
     $ +V1(6)*(V3(3)*V4(4)-V3(4)*V4(3))))+P3(3)*(V1(3)*(V3(5)*V4(4)
     $ -V3(4)*V4(5))+(V1(4)*(V3(3)*V4(5)-V3(5)*V4(3))+V1(5)*(V3(4)
     $ *V4(3)-V3(3)*V4(4)))))))
      TMP76 = -1D0*(P2(0)*(V1(4)*(V3(5)*V4(6)-V3(6)*V4(5))+(V1(5)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+V1(6)*(V3(4)*V4(5)-V3(5)*V4(4))))
     $ +(P2(1)*(V1(3)*(V3(6)*V4(5)-V3(5)*V4(6))+(V1(5)*(V3(3)*V4(6)
     $ -V3(6)*V4(3))+V1(6)*(V3(5)*V4(3)-V3(3)*V4(5))))+(P2(2)*(V1(3)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+(V1(4)*(V3(6)*V4(3)-V3(3)*V4(6))
     $ +V1(6)*(V3(3)*V4(4)-V3(4)*V4(3))))+P2(3)*(V1(3)*(V3(5)*V4(4)
     $ -V3(4)*V4(5))+(V1(4)*(V3(3)*V4(5)-V3(5)*V4(3))+V1(5)*(V3(4)
     $ *V4(3)-V3(3)*V4(4)))))))
      TMP104 = -1D0*(P3(0)*(P4(1)*(V2(6)*V1(5)-V2(5)*V1(6))+(P4(2)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+P4(3)*(V2(5)*V1(4)-V2(4)*V1(5))))
     $ +(P3(1)*(P4(0)*(V2(5)*V1(6)-V2(6)*V1(5))+(P4(2)*(V2(6)*V1(3)
     $ -V2(3)*V1(6))+P4(3)*(V2(3)*V1(5)-V2(5)*V1(3))))+(P3(2)*(P4(0)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+(P4(1)*(V2(3)*V1(6)-V2(6)*V1(3))
     $ +P4(3)*(V2(4)*V1(3)-V2(3)*V1(4))))+P3(3)*(P4(0)*(V2(4)*V1(5)
     $ -V2(5)*V1(4))+(P4(1)*(V2(5)*V1(3)-V2(3)*V1(5))+P4(2)*(V2(3)
     $ *V1(4)-V2(4)*V1(3)))))))
      TMP102 = -1D0*(P3(0)*(P4(1)*(V2(5)*V1(6)-V2(6)*V1(5))+(P4(2)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+P4(3)*(V2(4)*V1(5)-V2(5)*V1(4))))
     $ +(P3(1)*(P4(0)*(V2(6)*V1(5)-V2(5)*V1(6))+(P4(2)*(V2(3)*V1(6)
     $ -V2(6)*V1(3))+P4(3)*(V2(5)*V1(3)-V2(3)*V1(5))))+(P3(2)*(P4(0)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+(P4(1)*(V2(6)*V1(3)-V2(3)*V1(6))
     $ +P4(3)*(V2(3)*V1(4)-V2(4)*V1(3))))+P3(3)*(P4(0)*(V2(5)*V1(4)
     $ -V2(4)*V1(5))+(P4(1)*(V2(3)*V1(5)-V2(5)*V1(3))+P4(2)*(V2(4)
     $ *V1(3)-V2(3)*V1(4)))))))
      TMP103 = -1D0*(P2(0)*(P4(1)*(V2(6)*V1(5)-V2(5)*V1(6))+(P4(2)
     $ *(V2(4)*V1(6)-V2(6)*V1(4))+P4(3)*(V2(5)*V1(4)-V2(4)*V1(5))))
     $ +(P2(1)*(P4(0)*(V2(5)*V1(6)-V2(6)*V1(5))+(P4(2)*(V2(6)*V1(3)
     $ -V2(3)*V1(6))+P4(3)*(V2(3)*V1(5)-V2(5)*V1(3))))+(P2(2)*(P4(0)
     $ *(V2(6)*V1(4)-V2(4)*V1(6))+(P4(1)*(V2(3)*V1(6)-V2(6)*V1(3))
     $ +P4(3)*(V2(4)*V1(3)-V2(3)*V1(4))))+P2(3)*(P4(0)*(V2(4)*V1(5)
     $ -V2(5)*V1(4))+(P4(1)*(V2(5)*V1(3)-V2(3)*V1(5))+P4(2)*(V2(3)
     $ *V1(4)-V2(4)*V1(3)))))))
      TMP100 = -1D0*(P2(0)*(P4(1)*(V3(6)*V1(5)-V3(5)*V1(6))+(P4(2)
     $ *(V3(4)*V1(6)-V3(6)*V1(4))+P4(3)*(V3(5)*V1(4)-V3(4)*V1(5))))
     $ +(P2(1)*(P4(0)*(V3(5)*V1(6)-V3(6)*V1(5))+(P4(2)*(V3(6)*V1(3)
     $ -V3(3)*V1(6))+P4(3)*(V3(3)*V1(5)-V3(5)*V1(3))))+(P2(2)*(P4(0)
     $ *(V3(6)*V1(4)-V3(4)*V1(6))+(P4(1)*(V3(3)*V1(6)-V3(6)*V1(3))
     $ +P4(3)*(V3(4)*V1(3)-V3(3)*V1(4))))+P2(3)*(P4(0)*(V3(4)*V1(5)
     $ -V3(5)*V1(4))+(P4(1)*(V3(5)*V1(3)-V3(3)*V1(5))+P4(2)*(V3(3)
     $ *V1(4)-V3(4)*V1(3)))))))
      TMP101 = -1D0*(P3(0)*(P4(1)*(V3(6)*V1(5)-V3(5)*V1(6))+(P4(2)
     $ *(V3(4)*V1(6)-V3(6)*V1(4))+P4(3)*(V3(5)*V1(4)-V3(4)*V1(5))))
     $ +(P3(1)*(P4(0)*(V3(5)*V1(6)-V3(6)*V1(5))+(P4(2)*(V3(6)*V1(3)
     $ -V3(3)*V1(6))+P4(3)*(V3(3)*V1(5)-V3(5)*V1(3))))+(P3(2)*(P4(0)
     $ *(V3(6)*V1(4)-V3(4)*V1(6))+(P4(1)*(V3(3)*V1(6)-V3(6)*V1(3))
     $ +P4(3)*(V3(4)*V1(3)-V3(3)*V1(4))))+P3(3)*(P4(0)*(V3(4)*V1(5)
     $ -V3(5)*V1(4))+(P4(1)*(V3(5)*V1(3)-V3(3)*V1(5))+P4(2)*(V3(3)
     $ *V1(4)-V3(4)*V1(3)))))))
      TMP79 = -1D0*(P4(0)*(V1(4)*(V3(5)*V4(6)-V3(6)*V4(5))+(V1(5)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+V1(6)*(V3(4)*V4(5)-V3(5)*V4(4))))
     $ +(P4(1)*(V1(3)*(V3(6)*V4(5)-V3(5)*V4(6))+(V1(5)*(V3(3)*V4(6)
     $ -V3(6)*V4(3))+V1(6)*(V3(5)*V4(3)-V3(3)*V4(5))))+(P4(2)*(V1(3)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+(V1(4)*(V3(6)*V4(3)-V3(3)*V4(6))
     $ +V1(6)*(V3(3)*V4(4)-V3(4)*V4(3))))+P4(3)*(V1(3)*(V3(5)*V4(4)
     $ -V3(4)*V4(5))+(V1(4)*(V3(3)*V4(5)-V3(5)*V4(3))+V1(5)*(V3(4)
     $ *V4(3)-V3(3)*V4(4)))))))
      TMP78 = -1D0*(P1(0)*(V1(4)*(V3(5)*V4(6)-V3(6)*V4(5))+(V1(5)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+V1(6)*(V3(4)*V4(5)-V3(5)*V4(4))))
     $ +(P1(1)*(V1(3)*(V3(6)*V4(5)-V3(5)*V4(6))+(V1(5)*(V3(3)*V4(6)
     $ -V3(6)*V4(3))+V1(6)*(V3(5)*V4(3)-V3(3)*V4(5))))+(P1(2)*(V1(3)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+(V1(4)*(V3(6)*V4(3)-V3(3)*V4(6))
     $ +V1(6)*(V3(3)*V4(4)-V3(4)*V4(3))))+P1(3)*(V1(3)*(V3(5)*V4(4)
     $ -V3(4)*V4(5))+(V1(4)*(V3(3)*V4(5)-V3(5)*V4(3))+V1(5)*(V3(4)
     $ *V4(3)-V3(3)*V4(4)))))))
      TMP59 = (V1(3)*V4(3)-V1(4)*V4(4)-V1(5)*V4(5)-V1(6)*V4(6))
      TMP64 = (P2(0)*V4(3)-P2(1)*V4(4)-P2(2)*V4(5)-P2(3)*V4(6))
      TMP75 = -1D0*(P3(0)*(V2(4)*(V3(5)*V4(6)-V3(6)*V4(5))+(V2(5)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+V2(6)*(V3(4)*V4(5)-V3(5)*V4(4))))
     $ +(P3(1)*(V2(3)*(V3(6)*V4(5)-V3(5)*V4(6))+(V2(5)*(V3(3)*V4(6)
     $ -V3(6)*V4(3))+V2(6)*(V3(5)*V4(3)-V3(3)*V4(5))))+(P3(2)*(V2(3)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+(V2(4)*(V3(6)*V4(3)-V3(3)*V4(6))
     $ +V2(6)*(V3(3)*V4(4)-V3(4)*V4(3))))+P3(3)*(V2(3)*(V3(5)*V4(4)
     $ -V3(4)*V4(5))+(V2(4)*(V3(3)*V4(5)-V3(5)*V4(3))+V2(5)*(V3(4)
     $ *V4(3)-V3(3)*V4(4)))))))
      TMP74 = -1D0*(P2(0)*(V2(4)*(V3(5)*V4(6)-V3(6)*V4(5))+(V2(5)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+V2(6)*(V3(4)*V4(5)-V3(5)*V4(4))))
     $ +(P2(1)*(V2(3)*(V3(6)*V4(5)-V3(5)*V4(6))+(V2(5)*(V3(3)*V4(6)
     $ -V3(6)*V4(3))+V2(6)*(V3(5)*V4(3)-V3(3)*V4(5))))+(P2(2)*(V2(3)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+(V2(4)*(V3(6)*V4(3)-V3(3)*V4(6))
     $ +V2(6)*(V3(3)*V4(4)-V3(4)*V4(3))))+P2(3)*(V2(3)*(V3(5)*V4(4)
     $ -V3(4)*V4(5))+(V2(4)*(V3(3)*V4(5)-V3(5)*V4(3))+V2(5)*(V3(4)
     $ *V4(3)-V3(3)*V4(4)))))))
      TMP73 = -1D0*(P4(0)*(V2(4)*(V3(5)*V4(6)-V3(6)*V4(5))+(V2(5)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+V2(6)*(V3(4)*V4(5)-V3(5)*V4(4))))
     $ +(P4(1)*(V2(3)*(V3(6)*V4(5)-V3(5)*V4(6))+(V2(5)*(V3(3)*V4(6)
     $ -V3(6)*V4(3))+V2(6)*(V3(5)*V4(3)-V3(3)*V4(5))))+(P4(2)*(V2(3)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+(V2(4)*(V3(6)*V4(3)-V3(3)*V4(6))
     $ +V2(6)*(V3(3)*V4(4)-V3(4)*V4(3))))+P4(3)*(V2(3)*(V3(5)*V4(4)
     $ -V3(4)*V4(5))+(V2(4)*(V3(3)*V4(5)-V3(5)*V4(3))+V2(5)*(V3(4)
     $ *V4(3)-V3(3)*V4(4)))))))
      TMP72 = -1D0*(P1(0)*(V2(4)*(V3(5)*V4(6)-V3(6)*V4(5))+(V2(5)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+V2(6)*(V3(4)*V4(5)-V3(5)*V4(4))))
     $ +(P1(1)*(V2(3)*(V3(6)*V4(5)-V3(5)*V4(6))+(V2(5)*(V3(3)*V4(6)
     $ -V3(6)*V4(3))+V2(6)*(V3(5)*V4(3)-V3(3)*V4(5))))+(P1(2)*(V2(3)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+(V2(4)*(V3(6)*V4(3)-V3(3)*V4(6))
     $ +V2(6)*(V3(3)*V4(4)-V3(4)*V4(3))))+P1(3)*(V2(3)*(V3(5)*V4(4)
     $ -V3(4)*V4(5))+(V2(4)*(V3(3)*V4(5)-V3(5)*V4(3))+V2(5)*(V3(4)
     $ *V4(3)-V3(3)*V4(4)))))))
      TMP71 = -1D0*(V1(3)*(V2(4)*(V3(6)*V4(5)-V3(5)*V4(6))+(V2(5)
     $ *(V3(4)*V4(6)-V3(6)*V4(4))+V2(6)*(V3(5)*V4(4)-V3(4)*V4(5))))
     $ +(V1(4)*(V2(3)*(V3(5)*V4(6)-V3(6)*V4(5))+(V2(5)*(V3(6)*V4(3)
     $ -V3(3)*V4(6))+V2(6)*(V3(3)*V4(5)-V3(5)*V4(3))))+(V1(5)*(V2(3)
     $ *(V3(6)*V4(4)-V3(4)*V4(6))+(V2(4)*(V3(3)*V4(6)-V3(6)*V4(3))
     $ +V2(6)*(V3(4)*V4(3)-V3(3)*V4(4))))+V1(6)*(V2(3)*(V3(4)*V4(5)
     $ -V3(5)*V4(4))+(V2(4)*(V3(5)*V4(3)-V3(3)*V4(5))+V2(5)*(V3(3)
     $ *V4(4)-V3(4)*V4(3)))))))
      TMP29 = (V2(3)*V1(3)-V2(4)*V1(4)-V2(5)*V1(5)-V2(6)*V1(6))
      TMP39 = (V3(3)*V2(3)-V3(4)*V2(4)-V3(5)*V2(5)-V3(6)*V2(6))
      TMP15 = (P3(0)*V1(3)-P3(1)*V1(4)-P3(2)*V1(5)-P3(3)*V1(6))
      TMP14 = -1D0*(P1(0)*(P2(1)*(V3(5)*V2(6)-V3(6)*V2(5))+(P2(2)
     $ *(V3(6)*V2(4)-V3(4)*V2(6))+P2(3)*(V3(4)*V2(5)-V3(5)*V2(4))))
     $ +(P1(1)*(P2(0)*(V3(6)*V2(5)-V3(5)*V2(6))+(P2(2)*(V3(3)*V2(6)
     $ -V3(6)*V2(3))+P2(3)*(V3(5)*V2(3)-V3(3)*V2(5))))+(P1(2)*(P2(0)
     $ *(V3(4)*V2(6)-V3(6)*V2(4))+(P2(1)*(V3(6)*V2(3)-V3(3)*V2(6))
     $ +P2(3)*(V3(3)*V2(4)-V3(4)*V2(3))))+P1(3)*(P2(0)*(V3(5)*V2(4)
     $ -V3(4)*V2(5))+(P2(1)*(V3(3)*V2(5)-V3(5)*V2(3))+P2(2)*(V3(4)
     $ *V2(3)-V3(3)*V2(4)))))))
      TMP17 = (P1(0)*V2(3)-P1(1)*V2(4)-P1(2)*V2(5)-P1(3)*V2(6))
      TMP70 = (P3(0)*P4(0)-P3(1)*P4(1)-P3(2)*P4(2)-P3(3)*P4(3))
      TMP11 = -1D0*(P1(0)*(P3(1)*(V3(5)*V2(6)-V3(6)*V2(5))+(P3(2)
     $ *(V3(6)*V2(4)-V3(4)*V2(6))+P3(3)*(V3(4)*V2(5)-V3(5)*V2(4))))
     $ +(P1(1)*(P3(0)*(V3(6)*V2(5)-V3(5)*V2(6))+(P3(2)*(V3(3)*V2(6)
     $ -V3(6)*V2(3))+P3(3)*(V3(5)*V2(3)-V3(3)*V2(5))))+(P1(2)*(P3(0)
     $ *(V3(4)*V2(6)-V3(6)*V2(4))+(P3(1)*(V3(6)*V2(3)-V3(3)*V2(6))
     $ +P3(3)*(V3(3)*V2(4)-V3(4)*V2(3))))+P1(3)*(P3(0)*(V3(5)*V2(4)
     $ -V3(4)*V2(5))+(P3(1)*(V3(3)*V2(5)-V3(5)*V2(3))+P3(2)*(V3(4)
     $ *V2(3)-V3(3)*V2(4)))))))
      TMP35 = (V3(3)*V1(3)-V3(4)*V1(4)-V3(5)*V1(5)-V3(6)*V1(6))
      TMP12 = (P2(0)*V1(3)-P2(1)*V1(4)-P2(2)*V1(5)-P2(3)*V1(6))
      TMP95 = -1D0*(P1(0)*(P2(1)*(V1(5)*V4(6)-V1(6)*V4(5))+(P2(2)
     $ *(V1(6)*V4(4)-V1(4)*V4(6))+P2(3)*(V1(4)*V4(5)-V1(5)*V4(4))))
     $ +(P1(1)*(P2(0)*(V1(6)*V4(5)-V1(5)*V4(6))+(P2(2)*(V1(3)*V4(6)
     $ -V1(6)*V4(3))+P2(3)*(V1(5)*V4(3)-V1(3)*V4(5))))+(P1(2)*(P2(0)
     $ *(V1(4)*V4(6)-V1(6)*V4(4))+(P2(1)*(V1(6)*V4(3)-V1(3)*V4(6))
     $ +P2(3)*(V1(3)*V4(4)-V1(4)*V4(3))))+P1(3)*(P2(0)*(V1(5)*V4(4)
     $ -V1(4)*V4(5))+(P2(1)*(V1(3)*V4(5)-V1(5)*V4(3))+P2(2)*(V1(4)
     $ *V4(3)-V1(3)*V4(4)))))))
      TMP94 = -1D0*(P3(0)*(P4(1)*(V3(6)*V2(5)-V3(5)*V2(6))+(P4(2)
     $ *(V3(4)*V2(6)-V3(6)*V2(4))+P4(3)*(V3(5)*V2(4)-V3(4)*V2(5))))
     $ +(P3(1)*(P4(0)*(V3(5)*V2(6)-V3(6)*V2(5))+(P4(2)*(V3(6)*V2(3)
     $ -V3(3)*V2(6))+P4(3)*(V3(3)*V2(5)-V3(5)*V2(3))))+(P3(2)*(P4(0)
     $ *(V3(6)*V2(4)-V3(4)*V2(6))+(P4(1)*(V3(3)*V2(6)-V3(6)*V2(3))
     $ +P4(3)*(V3(4)*V2(3)-V3(3)*V2(4))))+P3(3)*(P4(0)*(V3(4)*V2(5)
     $ -V3(5)*V2(4))+(P4(1)*(V3(5)*V2(3)-V3(3)*V2(5))+P4(2)*(V3(3)
     $ *V2(4)-V3(4)*V2(3)))))))
      TMP97 = -1D0*(P1(0)*(P3(1)*(V1(5)*V4(6)-V1(6)*V4(5))+(P3(2)
     $ *(V1(6)*V4(4)-V1(4)*V4(6))+P3(3)*(V1(4)*V4(5)-V1(5)*V4(4))))
     $ +(P1(1)*(P3(0)*(V1(6)*V4(5)-V1(5)*V4(6))+(P3(2)*(V1(3)*V4(6)
     $ -V1(6)*V4(3))+P3(3)*(V1(5)*V4(3)-V1(3)*V4(5))))+(P1(2)*(P3(0)
     $ *(V1(4)*V4(6)-V1(6)*V4(4))+(P3(1)*(V1(6)*V4(3)-V1(3)*V4(6))
     $ +P3(3)*(V1(3)*V4(4)-V1(4)*V4(3))))+P1(3)*(P3(0)*(V1(5)*V4(4)
     $ -V1(4)*V4(5))+(P3(1)*(V1(3)*V4(5)-V1(5)*V4(3))+P3(2)*(V1(4)
     $ *V4(3)-V1(3)*V4(4)))))))
      TMP96 = -1D0*(P2(0)*(P4(1)*(V1(6)*V4(5)-V1(5)*V4(6))+(P4(2)
     $ *(V1(4)*V4(6)-V1(6)*V4(4))+P4(3)*(V1(5)*V4(4)-V1(4)*V4(5))))
     $ +(P2(1)*(P4(0)*(V1(5)*V4(6)-V1(6)*V4(5))+(P4(2)*(V1(6)*V4(3)
     $ -V1(3)*V4(6))+P4(3)*(V1(3)*V4(5)-V1(5)*V4(3))))+(P2(2)*(P4(0)
     $ *(V1(6)*V4(4)-V1(4)*V4(6))+(P4(1)*(V1(3)*V4(6)-V1(6)*V4(3))
     $ +P4(3)*(V1(4)*V4(3)-V1(3)*V4(4))))+P2(3)*(P4(0)*(V1(4)*V4(5)
     $ -V1(5)*V4(4))+(P4(1)*(V1(5)*V4(3)-V1(3)*V4(5))+P4(2)*(V1(3)
     $ *V4(4)-V1(4)*V4(3)))))))
      TMP91 = -1D0*(P1(0)*(P3(1)*(V2(5)*V4(6)-V2(6)*V4(5))+(P3(2)
     $ *(V2(6)*V4(4)-V2(4)*V4(6))+P3(3)*(V2(4)*V4(5)-V2(5)*V4(4))))
     $ +(P1(1)*(P3(0)*(V2(6)*V4(5)-V2(5)*V4(6))+(P3(2)*(V2(3)*V4(6)
     $ -V2(6)*V4(3))+P3(3)*(V2(5)*V4(3)-V2(3)*V4(5))))+(P1(2)*(P3(0)
     $ *(V2(4)*V4(6)-V2(6)*V4(4))+(P3(1)*(V2(6)*V4(3)-V2(3)*V4(6))
     $ +P3(3)*(V2(3)*V4(4)-V2(4)*V4(3))))+P1(3)*(P3(0)*(V2(5)*V4(4)
     $ -V2(4)*V4(5))+(P3(1)*(V2(3)*V4(5)-V2(5)*V4(3))+P3(2)*(V2(4)
     $ *V4(3)-V2(3)*V4(4)))))))
      TMP90 = -1D0*(P1(0)*(P3(1)*(V2(6)*V4(5)-V2(5)*V4(6))+(P3(2)
     $ *(V2(4)*V4(6)-V2(6)*V4(4))+P3(3)*(V2(5)*V4(4)-V2(4)*V4(5))))
     $ +(P1(1)*(P3(0)*(V2(5)*V4(6)-V2(6)*V4(5))+(P3(2)*(V2(6)*V4(3)
     $ -V2(3)*V4(6))+P3(3)*(V2(3)*V4(5)-V2(5)*V4(3))))+(P1(2)*(P3(0)
     $ *(V2(6)*V4(4)-V2(4)*V4(6))+(P3(1)*(V2(3)*V4(6)-V2(6)*V4(3))
     $ +P3(3)*(V2(4)*V4(3)-V2(3)*V4(4))))+P1(3)*(P3(0)*(V2(4)*V4(5)
     $ -V2(5)*V4(4))+(P3(1)*(V2(5)*V4(3)-V2(3)*V4(5))+P3(2)*(V2(3)
     $ *V4(4)-V2(4)*V4(3)))))))
      TMP93 = -1D0*(P2(0)*(P4(1)*(V3(6)*V2(5)-V3(5)*V2(6))+(P4(2)
     $ *(V3(4)*V2(6)-V3(6)*V2(4))+P4(3)*(V3(5)*V2(4)-V3(4)*V2(5))))
     $ +(P2(1)*(P4(0)*(V3(5)*V2(6)-V3(6)*V2(5))+(P4(2)*(V3(6)*V2(3)
     $ -V3(3)*V2(6))+P4(3)*(V3(3)*V2(5)-V3(5)*V2(3))))+(P2(2)*(P4(0)
     $ *(V3(6)*V2(4)-V3(4)*V2(6))+(P4(1)*(V3(3)*V2(6)-V3(6)*V2(3))
     $ +P4(3)*(V3(4)*V2(3)-V3(3)*V2(4))))+P2(3)*(P4(0)*(V3(4)*V2(5)
     $ -V3(5)*V2(4))+(P4(1)*(V3(5)*V2(3)-V3(3)*V2(5))+P4(2)*(V3(3)
     $ *V2(4)-V3(4)*V2(3)))))))
      TMP92 = -1D0*(P3(0)*(P4(1)*(V2(6)*V4(5)-V2(5)*V4(6))+(P4(2)
     $ *(V2(4)*V4(6)-V2(6)*V4(4))+P4(3)*(V2(5)*V4(4)-V2(4)*V4(5))))
     $ +(P3(1)*(P4(0)*(V2(5)*V4(6)-V2(6)*V4(5))+(P4(2)*(V2(6)*V4(3)
     $ -V2(3)*V4(6))+P4(3)*(V2(3)*V4(5)-V2(5)*V4(3))))+(P3(2)*(P4(0)
     $ *(V2(6)*V4(4)-V2(4)*V4(6))+(P4(1)*(V2(3)*V4(6)-V2(6)*V4(3))
     $ +P4(3)*(V2(4)*V4(3)-V2(3)*V4(4))))+P3(3)*(P4(0)*(V2(4)*V4(5)
     $ -V2(5)*V4(4))+(P4(1)*(V2(5)*V4(3)-V2(3)*V4(5))+P4(2)*(V2(3)
     $ *V4(4)-V2(4)*V4(3)))))))
      TMP99 = -1D0*(P2(0)*(P4(1)*(V3(5)*V1(6)-V3(6)*V1(5))+(P4(2)
     $ *(V3(6)*V1(4)-V3(4)*V1(6))+P4(3)*(V3(4)*V1(5)-V3(5)*V1(4))))
     $ +(P2(1)*(P4(0)*(V3(6)*V1(5)-V3(5)*V1(6))+(P4(2)*(V3(3)*V1(6)
     $ -V3(6)*V1(3))+P4(3)*(V3(5)*V1(3)-V3(3)*V1(5))))+(P2(2)*(P4(0)
     $ *(V3(4)*V1(6)-V3(6)*V1(4))+(P4(1)*(V3(6)*V1(3)-V3(3)*V1(6))
     $ +P4(3)*(V3(3)*V1(4)-V3(4)*V1(3))))+P2(3)*(P4(0)*(V3(5)*V1(4)
     $ -V3(4)*V1(5))+(P4(1)*(V3(3)*V1(5)-V3(5)*V1(3))+P4(2)*(V3(4)
     $ *V1(3)-V3(3)*V1(4)))))))
      TMP98 = -1D0*(P3(0)*(P4(1)*(V1(6)*V4(5)-V1(5)*V4(6))+(P4(2)
     $ *(V1(4)*V4(6)-V1(6)*V4(4))+P4(3)*(V1(5)*V4(4)-V1(4)*V4(5))))
     $ +(P3(1)*(P4(0)*(V1(5)*V4(6)-V1(6)*V4(5))+(P4(2)*(V1(6)*V4(3)
     $ -V1(3)*V4(6))+P4(3)*(V1(3)*V4(5)-V1(5)*V4(3))))+(P3(2)*(P4(0)
     $ *(V1(6)*V4(4)-V1(4)*V4(6))+(P4(1)*(V1(3)*V4(6)-V1(6)*V4(3))
     $ +P4(3)*(V1(4)*V4(3)-V1(3)*V4(4))))+P3(3)*(P4(0)*(V1(4)*V4(5)
     $ -V1(5)*V4(4))+(P4(1)*(V1(5)*V4(3)-V1(3)*V4(5))+P4(2)*(V1(3)
     $ *V4(4)-V1(4)*V4(3)))))))
      TMP9 = -1D0*(P1(0)*(V1(4)*(V3(6)*V2(5)-V3(5)*V2(6))+(V1(5)
     $ *(V3(4)*V2(6)-V3(6)*V2(4))+V1(6)*(V3(5)*V2(4)-V3(4)*V2(5))))
     $ +(P1(1)*(V1(3)*(V3(5)*V2(6)-V3(6)*V2(5))+(V1(5)*(V3(6)*V2(3)
     $ -V3(3)*V2(6))+V1(6)*(V3(3)*V2(5)-V3(5)*V2(3))))+(P1(2)*(V1(3)
     $ *(V3(6)*V2(4)-V3(4)*V2(6))+(V1(4)*(V3(3)*V2(6)-V3(6)*V2(3))
     $ +V1(6)*(V3(4)*V2(3)-V3(3)*V2(4))))+P1(3)*(V1(3)*(V3(4)*V2(5)
     $ -V3(5)*V2(4))+(V1(4)*(V3(5)*V2(3)-V3(3)*V2(5))+V1(5)*(V3(3)
     $ *V2(4)-V3(4)*V2(3)))))))
      TMP8 = (P1(0)*P3(0)-P1(1)*P3(1)-P1(2)*P3(2)-P1(3)*P3(3))
      TMP5 = -1D0*(P3(0)*(V1(4)*(V3(6)*V2(5)-V3(5)*V2(6))+(V1(5)
     $ *(V3(4)*V2(6)-V3(6)*V2(4))+V1(6)*(V3(5)*V2(4)-V3(4)*V2(5))))
     $ +(P3(1)*(V1(3)*(V3(5)*V2(6)-V3(6)*V2(5))+(V1(5)*(V3(6)*V2(3)
     $ -V3(3)*V2(6))+V1(6)*(V3(3)*V2(5)-V3(5)*V2(3))))+(P3(2)*(V1(3)
     $ *(V3(6)*V2(4)-V3(4)*V2(6))+(V1(4)*(V3(3)*V2(6)-V3(6)*V2(3))
     $ +V1(6)*(V3(4)*V2(3)-V3(3)*V2(4))))+P3(3)*(V1(3)*(V3(4)*V2(5)
     $ -V3(5)*V2(4))+(V1(4)*(V3(5)*V2(3)-V3(3)*V2(5))+V1(5)*(V3(3)
     $ *V2(4)-V3(4)*V2(3)))))))
      TMP7 = -1D0*(P2(0)*(V1(4)*(V3(6)*V2(5)-V3(5)*V2(6))+(V1(5)
     $ *(V3(4)*V2(6)-V3(6)*V2(4))+V1(6)*(V3(5)*V2(4)-V3(4)*V2(5))))
     $ +(P2(1)*(V1(3)*(V3(5)*V2(6)-V3(6)*V2(5))+(V1(5)*(V3(6)*V2(3)
     $ -V3(3)*V2(6))+V1(6)*(V3(3)*V2(5)-V3(5)*V2(3))))+(P2(2)*(V1(3)
     $ *(V3(6)*V2(4)-V3(4)*V2(6))+(V1(4)*(V3(3)*V2(6)-V3(6)*V2(3))
     $ +V1(6)*(V3(4)*V2(3)-V3(3)*V2(4))))+P2(3)*(V1(3)*(V3(4)*V2(5)
     $ -V3(5)*V2(4))+(V1(4)*(V3(5)*V2(3)-V3(3)*V2(5))+V1(5)*(V3(3)
     $ *V2(4)-V3(4)*V2(3)))))))
      TMP6 = (P1(0)*P2(0)-P1(1)*P2(1)-P1(2)*P2(2)-P1(3)*P2(3))
      VERTEX = COUP*2D0*(TMP29*1D0/2D0*(-CI*(TMP85)+CI*(TMP87)
     $ -2D0 * CI*(TMP86)+2D0 * CI*(TMP88))+(TMP35*1D0/2D0*(-2D0 * CI
     $ *(TMP89)+CI*(TMP91)-CI*(TMP90)+2D0 * CI*(TMP92))+(TMP39*(
     $ -CI*(TMP96+TMP98)+CI*(TMP95+TMP97))+(TMP59*(-CI*(TMP11+TMP94)
     $ +CI*(TMP14+TMP93))+(TMP60*1D0/2D0*(-2D0 * CI*(TMP22)+CI
     $ *(TMP100)-CI*(TMP99)+2D0 * CI*(TMP101))+(TMP61*1D0/2D0*(
     $ -2D0 * CI*(TMP28)+CI*(TMP104)-CI*(TMP102)+2D0 * CI*(TMP103))
     $ +(TMP71*(-CI*(TMP6+TMP70)+CI*(TMP8+TMP68))+(TMP12*-1D0*(
     $ +CI*(TMP72+TMP73))+(TMP15*(+CI*(TMP72+TMP73))+(TMP17*(
     $ +CI*(TMP76+TMP77))+(TMP20*(-CI*(TMP79)+CI*(TMP78))+(TMP24*(
     $ +CI*(TMP80+TMP81))+(TMP27*(-CI*(TMP83)+CI*(TMP82))+(TMP62*(
     $ -CI*(TMP7)+CI*(TMP5))+(TMP63*-1D0*(+CI*(TMP80+TMP81))+(TMP64*
     $ -1D0*(+CI*(TMP9+TMP84))+(TMP65*(+CI*(TMP9+TMP84))+(TMP66*-1D0*(
     $ +CI*(TMP76+TMP77))+TMP67*(-CI*(TMP74)+CI*(TMP75))))))))))))))))
     $ ))))
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     2*Epsilon(1,2,3,4)*P(-1,1)*P(-1,2) - 2*Epsilon(1,2,3,4)*P(-1,1)*P
C     (-1,3) - 2*Epsilon(1,2,3,4)*P(-1,2)*P(-1,4) + 2*Epsilon(1,2,3,4)*
C     P(-1,3)*P(-1,4) + 2*Epsilon(2,3,4,-1)*P(-1,1)*P(1,2) + 2*Epsilon(
C     2,3,4,-1)*P(-1,4)*P(1,2) - 2*Epsilon(2,3,4,-1)*P(-1,1)*P(1,3) -
C      2*Epsilon(2,3,4,-1)*P(-1,4)*P(1,3) + 2*Epsilon(2,3,4,-1)*P(-1,2)
C     *P(1,4) - 2*Epsilon(2,3,4,-1)*P(-1,3)*P(1,4) - 2*Epsilon(1,3,4,-1
C     )*P(-1,2)*P(2,1) - 2*Epsilon(1,3,4,-1)*P(-1,3)*P(2,1) -
C      2*Epsilon(1,3,4,-1)*P(-1,1)*P(2,3) + 2*Epsilon(1,3,4,-1)*P(-1,4)
C     *P(2,3) + 2*Epsilon(1,3,4,-1)*P(-1,2)*P(2,4) + 2*Epsilon(1,3,4,-1
C     )*P(-1,3)*P(2,4) - 2*Epsilon(1,2,4,-1)*P(-1,2)*P(3,1) -
C      2*Epsilon(1,2,4,-1)*P(-1,3)*P(3,1) - 2*Epsilon(1,2,4,-1)*P(-1,1)
C     *P(3,2) + 2*Epsilon(1,2,4,-1)*P(-1,4)*P(3,2) + 2*Epsilon(1,2,4,-1
C     )*P(-1,2)*P(3,4) + 2*Epsilon(1,2,4,-1)*P(-1,3)*P(3,4) +
C      2*Epsilon(1,2,3,-1)*P(-1,2)*P(4,1) - 2*Epsilon(1,2,3,-1)*P(-1,3)
C     *P(4,1) + 2*Epsilon(1,2,3,-1)*P(-1,1)*P(4,2) + 2*Epsilon(1,2,3,-1
C     )*P(-1,4)*P(4,2) - 2*Epsilon(1,2,3,-1)*P(-1,1)*P(4,3) -
C      2*Epsilon(1,2,3,-1)*P(-1,4)*P(4,3) + Epsilon(3,4,-1,-2)*P(-2,2)*
C     P(-1,1)*Metric(1,2) + 2*Epsilon(3,4,-1,-2)*P(-2,3)*P(-1,1)*Metric
C     (1,2) - Epsilon(3,4,-1,-2)*P(-2,1)*P(-1,2)*Metric(1,2) -
C      2*Epsilon(3,4,-1,-2)*P(-2,4)*P(-1,2)*Metric(1,2) + 2*Epsilon(2,4
C     ,-1,-2)*P(-2,2)*P(-1,1)*Metric(1,3) + Epsilon(2,4,-1,-2)*P(-2,3)*
C     P(-1,1)*Metric(1,3) - Epsilon(2,4,-1,-2)*P(-2,1)*P(-1,3)*Metric(1
C     ,3) - 2*Epsilon(2,4,-1,-2)*P(-2,4)*P(-1,3)*Metric(1,3) -
C      2*Epsilon(2,3,-1,-2)*P(-2,2)*P(-1,1)*Metric(1,4) + 2*Epsilon(2,3
C     ,-1,-2)*P(-2,3)*P(-1,1)*Metric(1,4) - 2*Epsilon(2,3,-1,-2)*P(-2,2
C     )*P(-1,4)*Metric(1,4) + 2*Epsilon(2,3,-1,-2)*P(-2,3)*P(-1,4)*Metr
C     ic(1,4) - 2*Epsilon(1,4,-1,-2)*P(-2,1)*P(-1,2)*Metric(2,3) +
C      2*Epsilon(1,4,-1,-2)*P(-2,4)*P(-1,2)*Metric(2,3) - 2*Epsilon(1,4
C     ,-1,-2)*P(-2,1)*P(-1,3)*Metric(2,3) + 2*Epsilon(1,4,-1,-2)*P(-2,4
C     )*P(-1,3)*Metric(2,3) + 2*Epsilon(1,3,-1,-2)*P(-2,1)*P(-1,2)*Metr
C     ic(2,4) + Epsilon(1,3,-1,-2)*P(-2,4)*P(-1,2)*Metric(2,4) -
C      Epsilon(1,3,-1,-2)*P(-2,2)*P(-1,4)*Metric(2,4) - 2*Epsilon(1,3,-
C     1,-2)*P(-2,3)*P(-1,4)*Metric(2,4) + 2*Epsilon(1,2,-1,-2)*P(-2,1)*
C     P(-1,3)*Metric(3,4) + Epsilon(1,2,-1,-2)*P(-2,4)*P(-1,3)*Metric(3
C     ,4) - 2*Epsilon(1,2,-1,-2)*P(-2,2)*P(-1,4)*Metric(3,4) -
C      Epsilon(1,2,-1,-2)*P(-2,3)*P(-1,4)*Metric(3,4)
C     
      SUBROUTINE VVVV3_7_8_0(V1, V2, V3, V4, COUP1, COUP2, COUP3
     $ ,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      REAL*8 P3(0:3)
      COMPLEX*16 COUP1
      COMPLEX*16 TMP
      COMPLEX*16 V3(*)
      REAL*8 P2(0:3)
      COMPLEX*16 V2(*)
      REAL*8 P1(0:3)
      REAL*8 P4(0:3)
      COMPLEX*16 V1(*)
      COMPLEX*16 VERTEX
      COMPLEX*16 V4(*)
      COMPLEX*16 COUP3
      COMPLEX*16 COUP2
      CALL VVVV3_0(V1,V2,V3,V4,COUP1,VERTEX)
      CALL VVVV7_0(V1,V2,V3,V4,COUP2,TMP)
      VERTEX = VERTEX + TMP
      CALL VVVV8_0(V1,V2,V3,V4,COUP3,TMP)
      VERTEX = VERTEX + TMP
      END


