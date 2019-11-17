***********************************************************************
      subroutine theta_star_he5(qlep, qZ, c_theta_star,
     &     phi_star)
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Refs: ATLAS-CONF-2018-034
c     this routine works for W
c     test routine for ATLAS paper
c     modified HELicity frame using the true WZ c.m.s, for W boson
c     qlep(4,1) for the 4-momentum of the charged lepton from W-> l nu
c     qlep(4,2) for the 4-momentum of the neutrino from W-> l nu
c     qZ(4) for 4-momentum of the invariant Z boson
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      implicit none
#include "pwhg_math.h"
#include "nlegborn.h"
#include "pwhg_kn.h"
      double precision qW(4), qZ(4)
      integer i, j, ipart
      double precision qlep(4,2)
      double precision c_theta_star, phi_star, qW_inv(4), 
     &     qlep_Wrest(4), dot_space, qWZ_inv(4), qW_WZrest(4)
      double precision proton_lab(4,2), proton_Wrest(4,2),
     &     lep_P_Wrest, W_P_Wrest
      double precision proton_P_Wrest(2), c_theta_proton(2),
     &     protonX_Wrest_xyz(1:3), qlep_Wrest_xyz(1:3), vectorY(1:3)
      double precision temp, tmp(2)

      do i=1,4
         qW(i) = qlep(i,2) + qlep(i,1)
      enddo

***[cos_theta_star calculation
      qW_inv(4) = qW(4)
      do i = 1, 3
         qW_inv(i) = -qW(i)
      enddo

      qWZ_inv(4) = qW(4)+qZ(4)
      do i = 1, 3
         qWZ_inv(i) = -(qW(i)+qZ(i))
      enddo

c--   qW in the WZ-rest frame:
      call boostn(qW,qWZ_inv,qW_WZrest)
c--   |q_W| in the xyz plane, in the WZ-rest frame: 
      W_P_Wrest = dsqrt(qW_WZrest(1)**2 +
     &     qW_WZrest(2)**2 + qW_WZrest(3)**2)

c---  boost from the Lab (proton-proton CMS) frame to the W-rest frame
      call boostn(qlep(1,1),qW_inv,qlep_Wrest)
      lep_P_Wrest = dsqrt(qlep_Wrest(1)**2 +
     &     qlep_Wrest(2)**2 + qlep_Wrest(3)**2)
      c_theta_star = dot_space(qlep_Wrest(1),qW_WZrest(1))/
     &     (lep_P_Wrest*W_P_Wrest)
***]cos_theta_star calculation

***[phi_star calculation
      qlep_Wrest_xyz(3) = lep_P_Wrest*c_theta_star

      proton_lab(4,1) = kn_sbeams/2d0
      proton_lab(1,1) = 0
      proton_lab(2,1) = 0
      proton_lab(3,1) = proton_lab(4,1)

      proton_lab(4,2) = kn_sbeams/2d0
      proton_lab(1,2) = 0
      proton_lab(2,2) = 0
      proton_lab(3,2) = -proton_lab(4,2)
C Note: the y component is still 0 after this boost
      do i = 1, 2
       call boostn(proton_lab(1,i),qW_inv,proton_Wrest(1,i))
      enddo

***[find the x-axis proton
      do i = 1,2
         proton_P_Wrest(i) = dsqrt(proton_Wrest(1,i)**2 +
     &        proton_Wrest(2,i)**2 + proton_Wrest(3,i)**2)
         temp = W_P_Wrest*proton_P_Wrest(i)
      c_theta_proton(i) = dot_space(proton_Wrest(1,i),qW_WZrest(1))/temp
      enddo

      if ( c_theta_proton(1) .gt. c_theta_proton(2) ) then
         ipart = 1
      else
         ipart = 2
      endif

      protonX_Wrest_xyz(3) = proton_P_Wrest(ipart)*c_theta_proton(ipart)
      protonX_Wrest_xyz(2) = 0  ! y-component vanishes
      protonX_Wrest_xyz(1) = dsqrt(proton_P_Wrest(ipart)**2 -
     &     protonX_Wrest_xyz(3)**2)
***]find the x-axis proton

***[find the y-axis vector
C Y = Z x X (right-handed system), Z = qW, X = proton(ipart)
      vectorY(1) = qW_WZrest(2)*proton_Wrest(3,ipart) -
     &     qW_WZrest(3)*proton_Wrest(2,ipart)
      vectorY(2) = qW_WZrest(3)*proton_Wrest(1,ipart) -
     &     qW_WZrest(1)*proton_Wrest(3,ipart)
      vectorY(3) = qW_WZrest(1)*proton_Wrest(2,ipart) -
     &     qW_WZrest(2)*proton_Wrest(1,ipart)
***]find the y-axis vector

C component X
      temp = dot_space(qlep_Wrest(1),proton_Wrest(1,ipart))
      temp = temp - qlep_Wrest_xyz(3)*protonX_Wrest_xyz(3) ! y-part vanishes
      qlep_Wrest_xyz(1) = temp/protonX_Wrest_xyz(1)
C component Y
      temp = dot_space(qlep_Wrest(1),vectorY(1))
c in the xyz frame, vectorY_y = |vectorY|
      qlep_Wrest_xyz(2) = 
     &     temp/dsqrt(vectorY(1)**2 + vectorY(2)**2 + vectorY(3)**2)


       phi_star = datan2( qlep_Wrest_xyz(2), qlep_Wrest_xyz(1) ) ! from -pi to +pi

       if ( phi_star .lt. 0D0 ) phi_star = phi_star + 2d0*pi ! from 0 to 2*pi
***]phi_star calculation
      END

***********************************************************************
      subroutine theta_star_he6(qlep, qW, c_theta_star,
     &     phi_star)
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Refs: ATLAS-CONF-2018-034
c     this routine works for Z
c     test routine for ATLAS paper
c     modified HELicity frame true WZ c.m.s, for Z boson
c     qlep(4,1) for the 4-momentum of the l- coming from Z-> l- l+
c     qlep(4,2) for the 4-momentum of the l+ coming from Z-> l- l+
c     qW(4) for 4-momentum of the invariant W boson
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      implicit none
#include "pwhg_math.h"
#include "nlegborn.h"
#include "pwhg_kn.h"
      double precision qW(4), qZ(4)
      integer i, j, ipart

      double precision qlep(4,2)
      double precision c_theta_star, phi_star, qZ_inv(4), 
     &     qlep_Zrest(4), dot_space, qWZ_inv(4), qZ_WZrest(4)
      double precision proton_lab(4,2), proton_Zrest(4,2),
     &     lep_P_Zrest, Z_P_Zrest
      double precision proton_P_Zrest(2), c_theta_proton(2),
     &     protonX_Zrest_xyz(1:3), qlep_Zrest_xyz(1:3), vectorY(1:3)
      double precision temp, tmp(2)

      do i=1,4
         qZ(i) = qlep(i,1) + qlep(i,2)
      enddo

***[cos_theta_star calculation
      qZ_inv(4) = qZ(4)
      do i = 1, 3
         qZ_inv(i) = -qZ(i)
      enddo

      qWZ_inv(4) = qW(4)+qZ(4)
      do i = 1, 3
         qWZ_inv(i) = -(qW(i)+qZ(i))
      enddo

c--   qZ in the WZ-rest frame:
      call boostn(qZ,qWZ_inv,qZ_WZrest)
c--   |q_W| in the xyz plane, in the WZ-rest frame: 
      Z_P_Zrest = dsqrt(qZ_WZrest(1)**2 +
     &     qZ_WZrest(2)**2 + qZ_WZrest(3)**2)

c---  boost from the Lab (proton-proton CMS) frame to the W-rest frame
      call boostn(qlep(1,1),qZ_inv,qlep_Zrest)
      lep_P_Zrest = dsqrt(qlep_Zrest(1)**2 +
     &     qlep_Zrest(2)**2 + qlep_Zrest(3)**2)
      c_theta_star = dot_space(qlep_Zrest(1),qZ_WZrest(1))/
     &     (lep_P_Zrest*Z_P_Zrest)
***]cos_theta_star calculation

***[phi_star calculation
      qlep_Zrest_xyz(3) = lep_P_Zrest*c_theta_star

      proton_lab(4,1) = kn_sbeams/2d0
      proton_lab(1,1) = 0
      proton_lab(2,1) = 0
      proton_lab(3,1) = proton_lab(4,1)

      proton_lab(4,2) = kn_sbeams/2d0
      proton_lab(1,2) = 0
      proton_lab(2,2) = 0
      proton_lab(3,2) = -proton_lab(4,2)
C Note: the y component is still 0 after this boost
      do i = 1, 2
       call boostn(proton_lab(1,i),qZ_inv,proton_Zrest(1,i))
      enddo

***[find the x-axis proton
      do i = 1,2
         proton_P_Zrest(i) = dsqrt(proton_Zrest(1,i)**2 +
     &        proton_Zrest(2,i)**2 + proton_Zrest(3,i)**2)
         temp = Z_P_Zrest*proton_P_Zrest(i)
      c_theta_proton(i) = dot_space(proton_Zrest(1,i),qZ_WZrest(1))/temp
      enddo

      if ( c_theta_proton(1) .gt. c_theta_proton(2) ) then
         ipart = 1
      else
         ipart = 2
      endif

      protonX_Zrest_xyz(3) = proton_P_Zrest(ipart)*c_theta_proton(ipart)
      protonX_Zrest_xyz(2) = 0  ! y-component vanishes
      protonX_Zrest_xyz(1) = dsqrt(proton_P_Zrest(ipart)**2 -
     &     protonX_Zrest_xyz(3)**2)
***]find the x-axis proton

***[find the y-axis vector
C Y = Z x X (right-handed system), Z = qZ, X = proton(ipart)
      vectorY(1) = qZ_WZrest(2)*proton_Zrest(3,ipart) -
     &     qZ_WZrest(3)*proton_Zrest(2,ipart)
      vectorY(2) = qZ_WZrest(3)*proton_Zrest(1,ipart) -
     &     qZ_WZrest(1)*proton_Zrest(3,ipart)
      vectorY(3) = qZ_WZrest(1)*proton_Zrest(2,ipart) -
     &     qZ_WZrest(2)*proton_Zrest(1,ipart)
***]find the y-axis vector

C component X
      temp = dot_space(qlep_Zrest(1),proton_Zrest(1,ipart))
      temp = temp - qlep_Zrest_xyz(3)*protonX_Zrest_xyz(3) ! y-part vanishes
      qlep_Zrest_xyz(1) = temp/protonX_Zrest_xyz(1)
C component Y
      temp = dot_space(qlep_Zrest(1),vectorY(1))
c in the xyz frame, vectorY_y = |vectorY|
      qlep_Zrest_xyz(2) = 
     &     temp/dsqrt(vectorY(1)**2 + vectorY(2)**2 + vectorY(3)**2)

       phi_star = datan2( qlep_Zrest_xyz(2), qlep_Zrest_xyz(1) ) ! from -pi to +pi

       if ( phi_star .lt. 0D0 ) phi_star = phi_star + 2d0*pi ! from 0 to 2*pi
***]phi_star calculation
      END

C********** BOOSTN ****************************************************
C
      SUBROUTINE BOOSTN(P,R,Q)
C
C
C     The four vector P is assumed to be given in the rest frame of R,
C     which must be a timelike vector.
C     output Q is the vector P boosted to the frame in which R is given.
C                                              Compare Jackson, p.517
C                                              D. Zeppenfeld (28.6.1985)
C     New version with energy stored in zeroth component of four vector
C     arrays. Checked on May 27, 1988.
C     June 2019: Adapted from VBFNLO for vectors in the format p(1:4),
C     time-like component is p(4)
      implicit none

      REAL*8 P(4),R(4),Q(4),R_SQ
      REAL*8 BETA(3), X, Y, GAMMA
      INTEGER I
      X = 0D0
      Y = 0D0
      DO I = 1,3
         BETA(I) = R(I)/R(4)
         X = X + BETA(I)**2
         Y = Y + BETA(I)*P(I)
      ENDDO
      IF (X.GT.1D-16.AND.X.LT.(1D0-1D-12)) THEN
         GAMMA = 1D0/DSQRT(1D0-X)
         DO I = 1,3
            Q(I) = P(I)+BETA(I)*(Y*(GAMMA-1D0)/X + GAMMA*P(4))
         ENDDO
         Q(4) = GAMMA*(P(4) + Y)
      ELSE
         DO I = 1,4
            Q(I) = P(I)
         ENDDO
         R_SQ = R(4)**2-R(1)**2-R(2)**2-R(3)**2
         ! IF(X.GE.(1D0-1D-12)) 
         IF(R_SQ.le.0.d0) 
     *      WRITE(6,1000) R,R_SQ
      ENDIF
 1000 FORMAT (" The reference vector ",4G12.3," is not timelike."/
     1        " R**2 = ",G12.3)
      END


***********************************************************************
      double precision function dot_space(p1,p2)
      implicit none
      double precision p1(1:3),p2(1:3)
      dot_space=p1(1)*p2(1)+p1(2)*p2(2)+p1(3)*p2(3)
      end
