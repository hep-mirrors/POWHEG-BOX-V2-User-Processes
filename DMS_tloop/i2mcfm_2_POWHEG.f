c$$$!---- This serves as a driver/wrapper for the MCFM pieces of H+j in POWHEG 
c$$$!----- C. Williams August 2011 
c$$$
c$$$      subroutine i2MCFM_2_POWHEG(p,vflav,res) 
c$$$      implicit none 
c$$$      include 'nlegborn.h'
c$$$      include 'MCFM_Include/constants.f' 
c$$$      include 'MCFM_Include/scale.f'
c$$$      include 'MCFM_Include/interface_settings.f' 
c$$$      include 'pwhg_st.h' 
c$$$      include 'PhysPars.h' 
c$$$      integer vflav(nlegborn)
c$$$      double precision p(0:3,nlegborn)
c$$$      double precision res(0:3)
c$$$      double precision pmcfm(mxpart,4)
c$$$
c$$$      call i2mcfm_powheg_momswap(p,pmcfm)
c$$$!----- set st_alpha and scale 
c$$$      call i2mcfm_fill_alphas(st_alpha)
c$$$      scale=dsqrt(st_muren2) !-- CHECK This
c$$$      musq=st_muren2
c$$$
c$$$      ret1=vflav(1) 
c$$$      ret2=vflav(2) 
c$$$      ret3=vflav(4) 
c$$$      
c$$$  !    call pgen(pin,pmcfm)
c$$$c      call gg_hg_vi(pmcfm,res)
c$$$
c$$$      return 
c$$$      end subroutine 


      subroutine i2MCFM_2_POWHEG_IP
      implicit none 
      include 'nlegborn.h'
      include 'MCFM_Include/constants.f' 
      include 'pwhg_st.h'
      include 'PhysPars.h'
      double precision mqs(6),powheginput
        
!------ setup interface settings as needed for POWHEG 
      call set_interface_MCFM
!------ Setup common blocks (ew parameters) 
!----- Need to sort this out! 
c      ph_alphaem = 0.0949563/(4*pi)
c      ph_gfermi=0.116639D-04
c      ph_sthw2=0.2226459d0

c     in the following, set ewscheme = 3, USER choice, i.e. the couplings are set exactly at
c     the user's values
      call i2mcfm_fill_ew(3,ph_gfermi,ph_alphaem,ph_sthw2,5)
!------- Setup initial value of alpha_s 
c      call i2mcfm_set_alphas(st_alpha) 

      mqs(:)=0
      mqs(6)=powheginput('tmass')
      call i2mcfm_fill_mq(mqs)
      
      call i2mcfm_fill_mv(ph_wmass,ph_wwidth,ph_zmass,ph_zwidth)

      return 
      end subroutine 


c$$$      subroutine i2mcfm_powheg_momswap(p,pmcfm) 
c$$$      implicit none 
c$$$      include 'nlegborn.h' 
c$$$      include 'MCFM_Include/constants.f'
c$$$      integer nu,i
c$$$      double precision p(0:3,nlegborn),pmcfm(mxpart,4),swap 
c$$$!---- Initalize pmcfm 
c$$$      do i=1,mxpart 
c$$$         do nu=1,4 
c$$$            pmcfm(i,nu)=0d0 
c$$$         enddo
c$$$      enddo
c$$$!---- swap ingoing/outgoing 
c$$$      do i=1,2 
c$$$         do nu=0,3 
c$$$            pmcfm(i,nu+1)=-p(nu,i) 
c$$$         enddo 
c$$$      enddo 
c$$$
c$$$!------ MCFM needs jet = p5 so set p3 = 0 
c$$$      do i=4,nlegborn+1 
c$$$         do nu=0,3
c$$$            pmcfm(i,nu+1)=p(nu,i-1) 
c$$$         enddo 
c$$$      enddo
c$$$
c$$$
c$$$!------- POWHEG notation 0 = E ,1 =x 2=y 3=z 
c$$$!------- MCFM notation   1=x,2=y,3=z,4=E 
c$$$
c$$$!----- swap POWHEG => MCFM 
c$$$      do i=1,nlegborn+1 
c$$$         swap=pmcfm(i,1)
c$$$         pmcfm(i,1)=pmcfm(i,2)
c$$$         pmcfm(i,2)=pmcfm(i,3)
c$$$         pmcfm(i,3)=pmcfm(i,4) 
c$$$         pmcfm(i,4)=swap
c$$$      enddo
c$$$!---- Check that MCFM momentum conservation is implmented properly, i.e. p1+p2+p3+p4+p5=0 
c$$$
c$$$!      write(6,*) 'PMCFM' 
c$$$!      do i=1,5 
c$$$!         do nu=1,4 
c$$$!            write(6,*) 'p(',i,nu,') = ',pmcfm(i,nu) 
c$$$!         enddo
c$$$!      enddo
c$$$
c$$$      
c$$$!      write(6,*) 'POWHEG' 
c$$$!      do i=1,nlegborn 
c$$$!         do nu=0,3 
c$$$!            write(6,*) 'p(',nu,i,') = ',p(nu,i) 
c$$$!         enddo
c$$$!      enddo
c$$$
c$$$      do i=1,4 
c$$$         if(pmcfm(1,i)+pmcfm(2,i)+pmcfm(3,i)+pmcfm(4,i)+pmcfm(5,i)
c$$$     &        .gt.1d-10) then 
c$$$            write(6,*) 'Momentum problem in i2mcfm_powheg_momswap' 
c$$$      
c$$$         endif
c$$$      enddo
c$$$
c$$$      return 
c$$$      end subroutine 
      
      
