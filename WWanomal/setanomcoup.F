      subroutine setanomcoup
c --- reads in anomalous couplings from powheg.input
      implicit none
#include "anomcoup.h"
#include "PhysPars.h"
      double precision v, voverlambda, delv, delgz, dels2w
      double precision powheginput
      external powheginput


c--   Main switches to control the EFT (anomalous) couplings

      EFTswitch = powheginput("EFTswitch")
      if(EFTswitch.eq.-1d6) EFTswitch = 0 ! default value
      if(EFTswitch.lt.0) then
         print*,"Error! EFTswitch cannot be negative!"
         print*,"Program stopped..."
         stop
      endif

      EFTsu2 = powheginput("EFTsu2")
      if(EFTsu2.eq.-1d6) EFTsu2 = 1 ! default value
      if(EFTsu2.lt.0) then
         print*,"Error! EFTsu2 cannot be negative!"
         print*,"Program stopped..."
         stop
      endif

      nEFT = powheginput("nLambdaEFT")
      if(nEFT.eq.-1d6) nEFT = 2 ! default value
      if(nEFT.lt.0) then
         print*,"Error! nLambdaEFT cannot be negative!"
         print*,"Program stopped..."
         stop
      endif

      tevscale = powheginput("#tevscale")
      if(tevscale.eq.-1d6) tevscale = 1d10 ! default value

      if(nEFT.gt.0) then
c--   Set the anomalous couplings
      if(EFTswitch.eq.0) then   ! anomalous couplings
      
         delg1_z    = powheginput("#delg1_z")
         lambda_z   = powheginput("#lambda_z")
         delk_z     = powheginput("#delk_z")
         
         delgQuL_z  = powheginput("#delgQuL_z")
         delgQuR_z  = powheginput("#delgQuR_z")
         delgQdL_z  = powheginput("#delgQdL_z")
         delgQdR_z  = powheginput("#delgQdR_z")
         delgQR_w   = powheginput("#delgQR_w")
         
         if(delg1_z.eq.-1d6) delg1_z = 0.d0
         if(lambda_z.eq.-1d6) lambda_z = 0.d0
         if(delk_z.eq.-1d6) delk_z = 0.d0
         
         if(delgQuL_z.eq.-1d6) delgQuL_z = 0.d0
         if(delgQuR_z.eq.-1d6) delgQuR_z = 0.d0
         if(delgQdL_z.eq.-1d6) delgQdL_z = 0.d0
         if(delgQdR_z.eq.-1d6) delgQdR_z = 0.d0
         if(delgQR_w.eq.-1d6) delgQR_w = 0.d0

         if(EFTsu2.eq.1) then
            delk_g   = (delg1_z-delk_z)*ph_cthw2/ph_sthw2
            delg1_g  = 0.d0
            lambda_g = lambda_z
            delgQL_w  = delgQuL_z - delgQdL_z
         else
            delg1_g   = powheginput("#delg1_g")
            lambda_g  = powheginput("#lambda_g")
            delk_g    = powheginput("#delk_g")
            delgQL_w   = powheginput("#delgQL_w")
            if(delg1_g.eq.-1d6) delg1_g = 0.d0
            if(lambda_g.eq.-1d6) lambda_g = 0.d0
            if(delk_g.eq.-1d6) delk_g = 0.d0
            if(delgQL_w.eq.-1d6) delgQL_w = 0.d0
         endif
      else                      ! EFT Wilson coefficients
c--   The translation from EFT Wilson coefficients to anomalous couplings
c--   is done according to J. Baglio, S. Dawson, I. M. Lewis, PRD 96 (2017) 073003, arXiv:1708.03332
         v = 2d0*ph_Wmass*ph_sthw/ph_unit_e ! vacuum expectation value
         lambda = powheginput("#LambdaEFT")
         if(lambda.eq.-1d6) then
            print*,"Error: EFT scale lambda not defined!"
            stop
         endif
         voverlambda = v**2/lambda**2

         C3W  = powheginput("#C3W")
         if(C3W.eq.-1d6) C3W = 0.d0
         CHDD  = powheginput("#CHD")
         if(CHDD.eq.-1d6) CHDD = 0.d0
         CHWB = powheginput("#CHWB")
         if(CHWB.eq.-1d6) CHWB = 0.d0
         C1Hq = powheginput("#C1Hq")
         if(C1Hq.eq.-1d6) C1Hq = 0.d0
         C3Hq = powheginput("#C3Hq")
         if(C3Hq.eq.-1d6) C3Hq = 0.d0
         C3Hl = powheginput("#C3Hl")
         if(C3Hl.eq.-1d6) C3Hl = 0.d0
         CHu  = powheginput("#CHu")
         if(CHu.eq.-1d6) CHu = 0.d0
         CHd  = powheginput("#CHd")
         if(CHd.eq.-1d6) CHd = 0.d0
         CHud = powheginput("#CHud")
         if(CHud.eq.-1d6) CHud = 0.d0
         Cll  = powheginput("#Cll")
         if(Cll.eq.-1d6) Cll = 0.d0
         
         delv   = C3Hl - 0.5d0*Cll
         delgz  = -voverlambda*(delv+0.25d0*CHDD)
         dels2w = -voverlambda*CHWB*
     &        ph_sthw*ph_cthw/(ph_cthw2-ph_sthw2)+
     &        2d0*delgz*ph_sthw2*ph_cthw2/(ph_cthw2-ph_sthw2)

         delg1_z  = voverlambda*(CHWB*ph_sthw/ph_cthw+
     &        0.25d0*CHDD+delv)/(ph_cthw2-ph_sthw2)
         delk_z   = voverlambda*(2d0*ph_sthw*ph_cthw*CHWB+
     &        0.25d0*CHDD+delv)/(ph_cthw2-ph_sthw2)
         delg1_g  = 0.d0
         delk_g   = -voverlambda*CHWB*ph_cthw/ph_sthw
         lambda_z = voverlambda/v*3d0*ph_Wmass*C3W
         lambda_g = lambda_z

         delgQL_w  = voverlambda*C3Hq+ph_cthw2*delgz+dels2w
         delgQR_w  = voverlambda*CHud*0.5d0

         delgQuL_z = -voverlambda*0.5d0*(C1Hq-C3Hq)
     &        +0.5d0*delgz+2d0/3d0*(dels2w-ph_sthw2*delgz)
         delgQuR_z = -voverlambda*0.5d0*CHu
     &        +2d0/3d0*(dels2w-ph_sthw2*delgz)
         delgQdL_z = -voverlambda*0.5d0*(C1Hq+C3Hq)
     &        +0.5d0*delgz-1d0/3d0*(dels2w-ph_sthw2*delgz)
         delgQdR_z = -voverlambda*0.5d0*CHd
     &        -1d0/3d0*(dels2w-ph_sthw2*delgz)
      endif

      else                      ! SM only
         delg1_z   = 0.d0
         delg1_g   = 0.d0
         lambda_z  = 0.d0
         lambda_g  = 0.d0
         delk_z    = 0.d0
         delk_g    = 0.d0
         delgQuL_z = 0.d0
         delgQuR_z = 0.d0
         delgQdL_z = 0.d0
         delgQdR_z = 0.d0
         delgQL_w  = 0.d0
         delgQR_w  = 0.d0
      endif

      if ((delg1_z .ne. 0d0) .or. (delg1_g .ne. 0d0) .or. 
     &     (lambda_z .ne. 0d0) .or. (lambda_g .ne. 0d0) .or.
     &     (delk_g .ne. 0d0) .or. (delk_z .ne. 0d0) .or.
     &     (delgQuL_z .ne. 0d0) .or. (delgQuR_z .ne. 0d0) .or.
     &     (delgQdL_z .ne. 0d0) .or. (delgQdR_z .ne. 0d0) .or.
     &     (delgQL_w .ne. 0d0) .or. (delgQR_w .ne. 0d0)) then
         anomtgc = .true.
      else
         anomtgc = .false.
      endif

      return 
      end


      subroutine couplzw_anom
      implicit none
#include "constants.h"
#include "anomcoup.h"
#include "zwcouple.h"
#include "zwcouple_anom.h"
c---  calculate the anomalous Z quark couplings
c--   following the conventions of the subroutine
c---  couplzw
      integer j

      do j=1,4 !--  nf=4
         if(j.eq.1.or.j.eq.3) then ! down-type
            l_anom(j) = two*delgQdL_z/sin2w
            r_anom(j) = two*delgQdR_z/sin2w
         else                      ! up-type
            l_anom(j) = two*delgQuL_z/sin2w
            r_anom(j) = two*delgQuR_z/sin2w
         endif
      enddo

      return
      end
