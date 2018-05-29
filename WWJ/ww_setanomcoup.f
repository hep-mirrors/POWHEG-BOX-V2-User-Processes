      subroutine ww_setanomcoup
c --- reads in anomalous couplings from powheg.input
      implicit none
      include 'ww_anomcoup.f'
      real * 8 powheginput
      external powheginput

!     anomalous coupling CAN NOT be set here since they are not implemented for WWJ
      ww_delg1_z=0
      ww_delg1_g=0
      ww_lambda_g=0
      ww_lambda_z=0
      ww_delk_g=0
      ww_delk_z=0
      ww_tevscale = 1d10
      ww_anomtgc = .false.
      
      
!      ww_delg1_z = powheginput("#delg1_z")
!      ww_delg1_g =powheginput("#delg1_g")
!      ww_lambda_g = powheginput("#lambda_g")
!      ww_lambda_z = powheginput("#lambda_z")
!      ww_delk_g = powheginput("#delk_g")
!      ww_delk_z = powheginput("#delk_z")
!      ww_tevscale = powheginput("#tevscale")

!      if(ww_delg1_z.eq.-1d6) ww_delg1_z=0
!      if(ww_delg1_g.eq.-1d6) ww_delg1_g=0
!      if(ww_lambda_g.eq.-1d6) ww_lambda_g=0
!      if(ww_lambda_z.eq.-1d6) ww_lambda_z=0
!      if(ww_delk_g.eq.-1d6) ww_delk_g=0
!      if(ww_delk_z.eq.-1d6) ww_delk_z=0
!      if(ww_tevscale.eq.-1d6) ww_tevscale = 1d10
      

!      if ((ww_delg1_z .ne. 0d0) .or. (ww_delg1_g .ne. 0d0) .or. 
!     &     (ww_lambda_z .ne. 0d0) .or. (ww_lambda_g .ne. 0d0) .or.
!     &     (ww_delk_g .ne. 0d0) .or. (ww_delk_z .ne. 0d0)) then
!         ww_anomtgc = .true.
!      else
!         ww_anomtgc = .false.
!      endif

      return 
      end

