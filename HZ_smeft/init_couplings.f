      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "pwhg_physpar.h"	
      real * 8 powheginput
      external powheginput
c Avoid multiple calls to this subroutine. The parameter file is opened
c but never closed ...
      logical called
      data called/.false./
      save called
      integer idvecbos,vdecaymode,Vdecmod
      common/cvecbos/idvecbos,vdecaymode
      real *8 decmass
      integer i, j

      if(called) then
         return
      else
         called=.true.
      endif
      
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   INDEPENDENT QUANTITIES       
cccccc
cccccc  we use mZ, mW, v, (sthw2)_eff from leptonic aysmmetries, alpha_em 
cccccc  as defined in the paper  1804.07407
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc     
      ph_Wmass = powheginput("#Wmass")
      if (ph_Wmass.le.0d0) ph_Wmass  = 80.398d0
      ph_Wwidth = powheginput("#Wwidth")
      if (ph_Wwidth.le.0d0) ph_Wwidth =  2.141d0
      ph_Hmass = powheginput('hmass')
      ph_Hwidth = powheginput('hwidth')
      ph_Hmass2low=powheginput("min_h_mass")**2
      ph_Hmass2high=powheginput("max_h_mass")**2
      ph_Zmass2low=powheginput("min_z_mass")**2
      ph_Zmass2high=powheginput("max_z_mass")**2

      ph_alphaem = powheginput("#alphaem")
      if (ph_alphaem.le.0d0) ph_alphaem = 1d0/128.89d0
      ph_Zmass = powheginput("#Zmass")
      if (ph_Zmass.le.0d0) ph_Zmass  = 91.1876d0
      ph_Zwidth = powheginput("#Zwidth")
      if (ph_Zwidth.le.0d0) ph_Zwidth =  2.4952d0
      ph_sthw2 = powheginput("#sthw2")
      if (ph_sthw2.le.0d0) ph_sthw2 = 0.23129
      ph_vev = powheginput("#vev")
      if (ph_vev.le.0d0) ph_vev = 246.21965

cccc  derived couplings: g_eff and (g/cw)_eff
      ph_geff   = 2d0*ph_Wmass/ph_vev
      ph_gcweff = 2d0*ph_Zmass/ph_vev
      
      ph_sthw = sqrt(ph_sthw2)
      ph_cthw = sqrt(1-ph_sthw2)
      
      ph_unit_e = sqrt(4*3.14159265359*ph_alphaem) 
      
      ph_WmWw = ph_Wmass * ph_Wwidth
      ph_ZmZw = ph_Zmass * ph_Zwidth

      ph_Wmass2 = ph_Wmass**2
      ph_Zmass2 = ph_Zmass**2

      
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     Set the dimension six couplings
c
c     I express the Z and photon dipole in terms of the unbroken 
c     couplings, Gamma_W and Gamma_B. 
c     
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

c     include dim. 6 operators 	      
      wdm = .false.
      mfv = .false.
      if(powheginput('#dim6').eq.1) wdm=.true.      
      if(powheginput('#mfv').eq.1)  mfv=.true.     
      
c     scale at which the dim. 6 coefficient are given
      LambdaNP = powheginput('#LambdaNP')
      if (LambdaNP.lt.0)  LambdaNP = 1000

c      set all the couplings to zero 
	do i=1,3
	  do j=1,3 
	    ph_ReGUw(i,j) = 0d0
	    ph_ReGUe(i,j) = 0d0
	    ph_ReGDw(i,j) = 0d0
	    ph_ReGDe(i,j) = 0d0
	    ph_ReYu(i,j) = 0d0
	    ph_ReYd(i,j) = 0d0
	    ph_ImYu(i,j) = 0d0
	    ph_ImYd(i,j) = 0d0
	    ph_QphiD(i,j) = 0d0
	    ph_QphiU(i,j) = 0d0
	    ph_Uphi(i,j) = 0d0
	    ph_Dphi(i,j) = 0d0
	  enddo
	enddo

	
ccccccccccccccccccccccccccccccccccccccccccccccccccc
c  Higgs gauge 
cccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     phi^d phi WW  couplings
      ph_cww = powheginput("#CC_ww")
      if (ph_cww.lt.-1d5) ph_cww =0d0
      ph_cbb = powheginput("#CC_bb")
      if (ph_cbb.lt.-1d5) ph_cbb =0d0
      ph_cwb = powheginput("#CC_wb")
      if (ph_cwb.lt.-1d5) ph_cwb =0d0
c     phi^d phi Wtilde W couplings      
      ph_cwwt = powheginput("#CC_wwt")
      if (ph_cwwt.lt.-1d5) ph_cwwt =0d0
      ph_cbbt = powheginput("#CC_bbt")
      if (ph_cbbt.lt.-1d5) ph_cbbt =0d0
      ph_cwbt = powheginput("#CC_wbt")
      if (ph_cwbt.lt.-1d5) ph_cwbt =0d0	
      
      
c quark couplings      
      
      if(.not.mfv) then
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     DIPOLE 								c	
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     UP type dipoles 	
c     W dipole ReGUw: 
	ph_ReGUw(1,1) = powheginput("#ReGUw_uu")
	ph_ReGUw(1,2) = powheginput("#ReGUw_uc")
	ph_ReGUw(1,3) = powheginput("#ReGUw_ut")
	ph_ReGUw(2,1) = powheginput("#ReGUw_cu")
	ph_ReGUw(2,2) = powheginput("#ReGUw_cc")
	ph_ReGUw(2,3) = powheginput("#ReGUw_ct")
	ph_ReGUw(3,1) = powheginput("#ReGUw_tu")
	ph_ReGUw(3,2) = powheginput("#ReGUw_tc")
	ph_ReGUw(3,3) = powheginput("#ReGUw_tt")
	if (ph_ReGUw(1,1).lt.-1d5) ph_ReGUw(1,1)=0d0 
	if (ph_ReGUw(1,2).lt.-1d5) ph_ReGUw(1,2)=0d0 
	if (ph_ReGUw(1,3).lt.-1d5) ph_ReGUw(1,3)=0d0 
	if (ph_ReGUw(2,1).lt.-1d5) ph_ReGUw(2,1)=0d0       
	if (ph_ReGUw(2,2).lt.-1d5) ph_ReGUw(2,2)=0d0       
	if (ph_ReGUw(2,3).lt.-1d5) ph_ReGUw(2,3)=0d0
	if (ph_ReGUw(3,1).lt.-1d5) ph_ReGUw(3,1)=0d0
	if (ph_ReGUw(3,2).lt.-1d5) ph_ReGUw(3,2)=0d0
	if (ph_ReGUw(3,3).lt.-1d5) ph_ReGUw(3,3)=0d0       
c     Photon Dipole ReGUe
	ph_ReGUe(1,1) = powheginput("#ReGUe_uu")
	ph_ReGUe(1,2) = powheginput("#ReGUe_uc")
	ph_ReGUe(1,3) = powheginput("#ReGUe_ut")
	ph_ReGUe(2,1) = powheginput("#ReGUe_cu")
	ph_ReGUe(2,2) = powheginput("#ReGUe_cc")
	ph_ReGUe(2,3) = powheginput("#ReGUe_ct")
	ph_ReGUe(3,1) = powheginput("#ReGUe_tu")
	ph_ReGUe(3,2) = powheginput("#ReGUe_tc")
	ph_ReGUe(3,3) = powheginput("#ReGUe_tt")      
	if (ph_ReGUe(1,1).lt.-1d5) ph_ReGUe(1,1)=0d0 
	if (ph_ReGUe(1,2).lt.-1d5) ph_ReGUe(1,2)=0d0 
	if (ph_ReGUe(1,3).lt.-1d5) ph_ReGUe(1,3)=0d0 
	if (ph_ReGUe(2,1).lt.-1d5) ph_ReGUe(2,1)=0d0       
	if (ph_ReGUe(2,2).lt.-1d5) ph_ReGUe(2,2)=0d0       
	if (ph_ReGUe(2,3).lt.-1d5) ph_ReGUe(2,3)=0d0
	if (ph_ReGUe(3,1).lt.-1d5) ph_ReGUe(3,1)=0d0
	if (ph_ReGUe(3,2).lt.-1d5) ph_ReGUe(3,2)=0d0
	if (ph_ReGUe(3,3).lt.-1d5) ph_ReGUe(3,3)=0d0       
c     W dipole ImGUw 
	ph_ImGUw(1,1) = powheginput("#ImGUw_uu")
	ph_ImGUw(1,2) = powheginput("#ImGUw_uc")
	ph_ImGUw(1,3) = powheginput("#ImGUw_ut")
	ph_ImGUw(2,1) = powheginput("#ImGUw_cu")
	ph_ImGUw(2,2) = powheginput("#ImGUw_cc")
	ph_ImGUw(2,3) = powheginput("#ImGUw_ct")
	ph_ImGUw(3,1) = powheginput("#ImGUw_tu")
	ph_ImGUw(3,2) = powheginput("#ImGUw_tc")
	ph_ImGUw(3,3) = powheginput("#ImGUw_tt")
	if (ph_ImGUw(1,1).lt.-1d5) ph_ImGUw(1,1)=0d0 
	if (ph_ImGUw(1,2).lt.-1d5) ph_ImGUw(1,2)=0d0 
	if (ph_ImGUw(1,3).lt.-1d5) ph_ImGUw(1,3)=0d0 
	if (ph_ImGUw(2,1).lt.-1d5) ph_ImGUw(2,1)=0d0       
	if (ph_ImGUw(2,2).lt.-1d5) ph_ImGUw(2,2)=0d0       
	if (ph_ImGUw(2,3).lt.-1d5) ph_ImGUw(2,3)=0d0
	if (ph_ImGUw(3,1).lt.-1d5) ph_ImGUw(3,1)=0d0
	if (ph_ImGUw(3,2).lt.-1d5) ph_ImGUw(3,2)=0d0
	if (ph_ImGUw(3,3).lt.-1d5) ph_ImGUw(3,3)=0d0       
c     Photon Dipole ImGUe
	ph_ImGUe(1,1) = powheginput("#ImGUe_uu")
	ph_ImGUe(1,2) = powheginput("#ImGUe_uc")
	ph_ImGUe(1,3) = powheginput("#ImGUe_ut")
	ph_ImGUe(2,1) = powheginput("#ImGUe_cu")
	ph_ImGUe(2,2) = powheginput("#ImGUe_cc")
	ph_ImGUe(2,3) = powheginput("#ImGUe_ct")
	ph_ImGUe(3,1) = powheginput("#ImGUe_tu")
	ph_ImGUe(3,2) = powheginput("#ImGUe_tc")
	ph_ImGUe(3,3) = powheginput("#ImGUe_tt")      
	if (ph_ImGUe(1,1).lt.-1d5) ph_ImGUe(1,1)=0d0 
	if (ph_ImGUe(1,2).lt.-1d5) ph_ImGUe(1,2)=0d0 
	if (ph_ImGUe(1,3).lt.-1d5) ph_ImGUe(1,3)=0d0 
	if (ph_ImGUe(2,1).lt.-1d5) ph_ImGUe(2,1)=0d0       
	if (ph_ImGUe(2,2).lt.-1d5) ph_ImGUe(2,2)=0d0       
	if (ph_ImGUe(2,3).lt.-1d5) ph_ImGUe(2,3)=0d0
	if (ph_ImGUe(3,1).lt.-1d5) ph_ImGUe(3,1)=0d0
	if (ph_ImGUe(3,2).lt.-1d5) ph_ImGUe(3,2)=0d0
	if (ph_ImGUe(3,3).lt.-1d5) ph_ImGUe(3,3)=0d0       
c     DOWN type dipoles 	
c     W dipole ReGDw: 
	ph_ReGDw(1,1) = powheginput("#ReGDw_dd")
	ph_ReGDw(1,2) = powheginput("#ReGDw_ds")
	ph_ReGDw(1,3) = powheginput("#ReGDw_db")
	ph_ReGDw(2,1) = powheginput("#ReGDw_sd")
	ph_ReGDw(2,2) = powheginput("#ReGDw_ss")
	ph_ReGDw(2,3) = powheginput("#ReGDw_sb")
	ph_ReGDw(3,1) = powheginput("#ReGDw_bd")
	ph_ReGDw(3,2) = powheginput("#ReGDw_bs")
	ph_ReGDw(3,3) = powheginput("#ReGDw_bb")
	if (ph_ReGDw(1,1).lt.-1d5) ph_ReGDw(1,1)=0d0 
	if (ph_ReGDw(1,2).lt.-1d5) ph_ReGDw(1,2)=0d0 
	if (ph_ReGDw(1,3).lt.-1d5) ph_ReGDw(1,3)=0d0 
	if (ph_ReGDw(2,1).lt.-1d5) ph_ReGDw(2,1)=0d0       
	if (ph_ReGDw(2,2).lt.-1d5) ph_ReGDw(2,2)=0d0       
	if (ph_ReGDw(2,3).lt.-1d5) ph_ReGDw(2,3)=0d0
	if (ph_ReGDw(3,1).lt.-1d5) ph_ReGDw(3,1)=0d0
	if (ph_ReGDw(3,2).lt.-1d5) ph_ReGDw(3,2)=0d0
	if (ph_ReGDw(3,3).lt.-1d5) ph_ReGDw(3,3)=0d0       
c     Photon Dipole ReGDe
	ph_ReGDe(1,1) = powheginput("#ReGDe_dd")
	ph_ReGDe(1,2) = powheginput("#ReGDe_ds")
	ph_ReGDe(1,3) = powheginput("#ReGDe_db")
	ph_ReGDe(2,1) = powheginput("#ReGDe_sd")
	ph_ReGDe(2,2) = powheginput("#ReGDe_ss")
	ph_ReGDe(2,3) = powheginput("#ReGDe_sb")
	ph_ReGDe(3,1) = powheginput("#ReGDe_bd")
	ph_ReGDe(3,2) = powheginput("#ReGDe_bs")
	ph_ReGDe(3,3) = powheginput("#ReGDe_bb")      
	if (ph_ReGDe(1,1).lt.-1d5) ph_ReGDe(1,1)=0d0 
	if (ph_ReGDe(1,2).lt.-1d5) ph_ReGDe(1,2)=0d0 
	if (ph_ReGDe(1,3).lt.-1d5) ph_ReGDe(1,3)=0d0 
	if (ph_ReGDe(2,1).lt.-1d5) ph_ReGDe(2,1)=0d0       
	if (ph_ReGDe(2,2).lt.-1d5) ph_ReGDe(2,2)=0d0       
	if (ph_ReGDe(2,3).lt.-1d5) ph_ReGDe(2,3)=0d0
	if (ph_ReGDe(3,1).lt.-1d5) ph_ReGDe(3,1)=0d0
	if (ph_ReGDe(3,2).lt.-1d5) ph_ReGDe(3,2)=0d0
	if (ph_ReGDe(3,3).lt.-1d5) ph_ReGDe(3,3)=0d0       
c     W dipole ImGDw 
	ph_ImGDw(1,1) = powheginput("#ImGDw_dd")
	ph_ImGDw(1,2) = powheginput("#ImGDw_ds")
	ph_ImGDw(1,3) = powheginput("#ImGDw_db")
	ph_ImGDw(2,1) = powheginput("#ImGDw_sd")
	ph_ImGDw(2,2) = powheginput("#ImGDw_ss")
	ph_ImGDw(2,3) = powheginput("#ImGDw_sb")
	ph_ImGDw(3,1) = powheginput("#ImGDw_bd")
	ph_ImGDw(3,2) = powheginput("#ImGDw_bs")
	ph_ImGDw(3,3) = powheginput("#ImGDw_bb")
	if (ph_ImGDw(1,1).lt.-1d5) ph_ImGDw(1,1)=0d0 
	if (ph_ImGDw(1,2).lt.-1d5) ph_ImGDw(1,2)=0d0 
	if (ph_ImGDw(1,3).lt.-1d5) ph_ImGDw(1,3)=0d0 
	if (ph_ImGDw(2,1).lt.-1d5) ph_ImGDw(2,1)=0d0       
	if (ph_ImGDw(2,2).lt.-1d5) ph_ImGDw(2,2)=0d0       
	if (ph_ImGDw(2,3).lt.-1d5) ph_ImGDw(2,3)=0d0
	if (ph_ImGDw(3,1).lt.-1d5) ph_ImGDw(3,1)=0d0
	if (ph_ImGDw(3,2).lt.-1d5) ph_ImGDw(3,2)=0d0
	if (ph_ImGDw(3,3).lt.-1d5) ph_ImGDw(3,3)=0d0       
c     Photon Dipole ImGDe
	ph_ImGDe(1,1) = powheginput("#ImGDe_dd")
	ph_ImGDe(1,2) = powheginput("#ImGDe_ds")
	ph_ImGDe(1,3) = powheginput("#ImGDe_db")
	ph_ImGDe(2,1) = powheginput("#ImGDe_sd")
	ph_ImGDe(2,2) = powheginput("#ImGDe_ss")
	ph_ImGDe(2,3) = powheginput("#ImGDe_sb")
	ph_ImGDe(3,1) = powheginput("#ImGDe_bd")
	ph_ImGDe(3,2) = powheginput("#ImGDe_bs")
	ph_ImGDe(3,3) = powheginput("#ImGDe_bb")      
	if (ph_ImGDe(1,1).lt.-1d5) ph_ImGDe(1,1)=0d0 
	if (ph_ImGDe(1,2).lt.-1d5) ph_ImGDe(1,2)=0d0 
	if (ph_ImGDe(1,3).lt.-1d5) ph_ImGDe(1,3)=0d0 
	if (ph_ImGDe(2,1).lt.-1d5) ph_ImGDe(2,1)=0d0       
	if (ph_ImGDe(2,2).lt.-1d5) ph_ImGDe(2,2)=0d0       
	if (ph_ImGDe(2,3).lt.-1d5) ph_ImGDe(2,3)=0d0
	if (ph_ImGDe(3,1).lt.-1d5) ph_ImGDe(3,1)=0d0
	if (ph_ImGDe(3,2).lt.-1d5) ph_ImGDe(3,2)=0d0
	if (ph_ImGDe(3,3).lt.-1d5) ph_ImGDe(3,3)=0d0       


ccccccccccccccccccccccccccccccccccccccccccccccccccc
c  Non standard Yukawa couplings
cccccccccccccccccccccccccccccccccccccccccccccccccccc
c   Up yukawa
	ph_ReYu(1,1) = powheginput("#ReYu_uu")
	ph_ReYu(1,2) = powheginput("#ReYu_uc")
	ph_ReYu(1,3) = powheginput("#ReYu_ut")
	ph_ReYu(2,1) = powheginput("#ReYu_cu")
	ph_ReYu(2,2) = powheginput("#ReYu_cc")
	ph_ReYu(2,3) = powheginput("#ReYu_ct")
	ph_ReYu(3,1) = powheginput("#ReYu_tu")
	ph_ReYu(3,2) = powheginput("#ReYu_tc")
	ph_ReYu(3,3) = powheginput("#ReYu_tt")
	if (ph_ReYu(1,1).lt.-1d5) ph_ReYu(1,1) =0d0 
	if (ph_ReYu(1,2).lt.-1d5) ph_ReYu(1,2) =0d0 
	if (ph_ReYu(1,3).lt.-1d5) ph_ReYu(1,3) =0d0 
	if (ph_ReYu(2,1).lt.-1d5) ph_ReYu(2,1) =0d0 
	if (ph_ReYu(2,2).lt.-1d5) ph_ReYu(2,2) =0d0 
	if (ph_ReYu(2,3).lt.-1d5) ph_ReYu(2,3) =0d0 
	if (ph_ReYu(3,1).lt.-1d5) ph_ReYu(3,1) =0d0 
	if (ph_ReYu(3,2).lt.-1d5) ph_ReYu(3,2) =0d0 
	if (ph_ReYu(3,3).lt.-1d5) ph_ReYu(3,3) =0d0 
	ph_ImYu(1,1) = powheginput("#ImYu_uu")
	ph_ImYu(1,2) = powheginput("#ImYu_uc")
	ph_ImYu(1,3) = powheginput("#ImYu_ut")
	ph_ImYu(2,1) = powheginput("#ImYu_cu")
	ph_ImYu(2,2) = powheginput("#ImYu_cc")
	ph_ImYu(2,3) = powheginput("#ImYu_ct")
	ph_ImYu(3,1) = powheginput("#ImYu_tu")
	ph_ImYu(3,2) = powheginput("#ImYu_tc")
	ph_ImYu(3,3) = powheginput("#ImYu_tt")
	if (ph_ImYu(1,1).lt.-1d5) ph_ImYu(1,1) =0d0 
	if (ph_ImYu(1,2).lt.-1d5) ph_ImYu(1,2) =0d0 
	if (ph_ImYu(1,3).lt.-1d5) ph_ImYu(1,3) =0d0 
	if (ph_ImYu(2,1).lt.-1d5) ph_ImYu(2,1) =0d0 
	if (ph_ImYu(2,2).lt.-1d5) ph_ImYu(2,2) =0d0 
	if (ph_ImYu(2,3).lt.-1d5) ph_ImYu(2,3) =0d0 
	if (ph_ImYu(3,1).lt.-1d5) ph_ImYu(3,1) =0d0 
	if (ph_ImYu(3,2).lt.-1d5) ph_ImYu(3,2) =0d0 
	if (ph_ImYu(3,3).lt.-1d5) ph_ImYu(3,3) =0d0 
c     Down Yukawa  
	ph_ReYd(1,1) = powheginput("#ReYd_dd")
	ph_ReYd(1,2) = powheginput("#ReYd_ds")
	ph_ReYd(1,3) = powheginput("#ReYd_db")
	ph_ReYd(2,1) = powheginput("#ReYd_sd")
	ph_ReYd(2,2) = powheginput("#ReYd_ss")
	ph_ReYd(2,3) = powheginput("#ReYd_sb")
	ph_ReYd(3,1) = powheginput("#ReYd_bd")
	ph_ReYd(3,2) = powheginput("#ReYd_bs")
	ph_ReYd(3,3) = powheginput("#ReYd_bb")
	if (ph_ReYd(1,1).lt.-1d5) ph_ReYd(1,1) =0d0 
	if (ph_ReYd(1,2).lt.-1d5) ph_ReYd(1,2) =0d0 
	if (ph_ReYd(1,3).lt.-1d5) ph_ReYd(1,3) =0d0 
	if (ph_ReYd(2,1).lt.-1d5) ph_ReYd(2,1) =0d0 
	if (ph_ReYd(2,2).lt.-1d5) ph_ReYd(2,2) =0d0 
	if (ph_ReYd(2,3).lt.-1d5) ph_ReYd(2,3) =0d0 
	if (ph_ReYd(3,1).lt.-1d5) ph_ReYd(3,1) =0d0 
	if (ph_ReYd(3,2).lt.-1d5) ph_ReYd(3,2) =0d0 
	if (ph_ReYd(3,3).lt.-1d5) ph_ReYd(3,3) =0d0 
	ph_ImYd(1,1) = powheginput("#ImYd_dd")
	ph_ImYd(1,2) = powheginput("#ImYd_ds")
	ph_ImYd(1,3) = powheginput("#ImYd_db")
	ph_ImYd(2,1) = powheginput("#ImYd_sd")
	ph_ImYd(2,2) = powheginput("#ImYd_ss")
	ph_ImYd(2,3) = powheginput("#ImYd_sb")
	ph_ImYd(3,1) = powheginput("#ImYd_bd")
	ph_ImYd(3,2) = powheginput("#ImYd_bs")
	ph_ImYd(3,3) = powheginput("#ImYd_bb")
	if (ph_ImYd(1,1).lt.-1d5) ph_ImYd(1,1) =0d0 
	if (ph_ImYd(1,2).lt.-1d5) ph_ImYd(1,2) =0d0 
	if (ph_ImYd(1,3).lt.-1d5) ph_ImYd(1,3) =0d0 
	if (ph_ImYd(2,1).lt.-1d5) ph_ImYd(2,1) =0d0 
	if (ph_ImYd(2,2).lt.-1d5) ph_ImYd(2,2) =0d0 
	if (ph_ImYd(2,3).lt.-1d5) ph_ImYd(2,3) =0d0 
	if (ph_ImYd(3,1).lt.-1d5) ph_ImYd(3,1) =0d0 
	if (ph_ImYd(3,2).lt.-1d5) ph_ImYd(3,2) =0d0 
	if (ph_ImYd(3,3).lt.-1d5) ph_ImYd(3,3) =0d0 
	
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     Vertex corrections 						c	
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc            
c     Matrices have to be hermitian.   
c     left handed quarks
	ph_QphiU(1,1) = powheginput("#QphiU_uu")
	ph_QphiU(1,2) = powheginput("#QphiU_uc")
	ph_QphiU(1,3) = powheginput("#QphiU_ut")
	ph_QphiU(2,2) = powheginput("#QphiU_cc")
	ph_QphiU(2,3) = powheginput("#QphiU_ct")
	ph_QphiU(3,3) = powheginput("#QphiU_tt")
	if (ph_QphiU(1,1).lt.-1d5) ph_QphiU(1,1)=0d0 
	if (ph_QphiU(1,2).lt.-1d5) ph_QphiU(1,2)=0d0 
	if (ph_QphiU(1,3).lt.-1d5) ph_QphiU(1,3)=0d0 
	if (ph_QphiU(2,2).lt.-1d5) ph_QphiU(2,2)=0d0 
	if (ph_QphiU(2,3).lt.-1d5) ph_QphiU(2,3)=0d0 
	if (ph_QphiU(3,3).lt.-1d5) ph_QphiU(3,3)=0d0 
	ph_QphiU(2,1) = ph_QphiU(1,2)
	ph_QphiU(3,1) = ph_QphiU(1,3)
	ph_QphiU(3,2) = ph_QphiU(2,3)
c     left handed quark, isovector 
	ph_QphiD(1,1) = powheginput("#QphiD_dd")
	ph_QphiD(1,2) = powheginput("#QphiD_ds")
	ph_QphiD(1,3) = powheginput("#QphiD_db")
	ph_QphiD(2,2) = powheginput("#QphiD_ss")
	ph_QphiD(2,3) = powheginput("#QphiD_sb")
	ph_QphiD(3,3) = powheginput("#QphiD_bb")
	if (ph_QphiD(1,1).lt.-1d5) ph_QphiD(1,1)=0d0 
	if (ph_QphiD(1,2).lt.-1d5) ph_QphiD(1,2)=0d0 
	if (ph_QphiD(1,3).lt.-1d5) ph_QphiD(1,3)=0d0 
	if (ph_QphiD(2,2).lt.-1d5) ph_QphiD(2,2)=0d0 
	if (ph_QphiD(2,3).lt.-1d5) ph_QphiD(2,3)=0d0 
	if (ph_QphiD(3,3).lt.-1d5) ph_QphiD(3,3)=0d0 
	ph_QphiD(2,1) = ph_QphiD(1,2)
	ph_QphiD(3,1) = ph_QphiD(1,3)
	ph_QphiD(3,2) = ph_QphiD(2,3)

c     UP type right handed quarks
	ph_Uphi(1,1) = powheginput("#Uphi_uu")
	ph_Uphi(1,2) = powheginput("#Uphi_uc")
	ph_Uphi(1,3) = powheginput("#Uphi_ut")      
	ph_Uphi(2,2) = powheginput("#Uphi_cc")
	ph_Uphi(2,3) = powheginput("#Uphi_ct")
	ph_Uphi(3,3) = powheginput("#Uphi_tt")
	if (ph_Uphi(1,1).lt.-1d5) ph_Uphi(1,1)=0d0 
	if (ph_Uphi(1,2).lt.-1d5) ph_Uphi(1,2)=0d0 
	if (ph_Uphi(1,3).lt.-1d5) ph_Uphi(1,3)=0d0 
	if (ph_Uphi(2,2).lt.-1d5) ph_Uphi(2,2)=0d0 
	if (ph_Uphi(2,3).lt.-1d5) ph_Uphi(2,3)=0d0 
	if (ph_Uphi(3,3).lt.-1d5) ph_Uphi(3,3)=0d0 
	ph_Uphi(2,1) = ph_Uphi(1,2)
	ph_Uphi(3,1) = ph_Uphi(1,3)
	ph_Uphi(3,2) = ph_uphi(2,3)
c     DOWN type  
	ph_Dphi(1,1) = powheginput("#Dphi_dd")
	ph_Dphi(1,2) = powheginput("#Dphi_ds")
	ph_Dphi(1,3) = powheginput("#Dphi_db")      
	ph_Dphi(2,2) = powheginput("#Dphi_ss")
	ph_Dphi(2,3) = powheginput("#Dphi_sb")
	ph_Dphi(3,3) = powheginput("#Dphi_bb")
	if (ph_Dphi(1,1).lt.-1d5) ph_Dphi(1,1)=0d0 
	if (ph_Dphi(1,2).lt.-1d5) ph_Dphi(1,2)=0d0 
	if (ph_Dphi(1,3).lt.-1d5) ph_Dphi(1,3)=0d0 
	if (ph_Dphi(2,2).lt.-1d5) ph_Dphi(2,2)=0d0 
	if (ph_Dphi(2,3).lt.-1d5) ph_Dphi(2,3)=0d0 
	if (ph_Dphi(3,3).lt.-1d5) ph_Dphi(3,3)=0d0 
	ph_Dphi(2,1) = ph_Dphi(1,2)
	ph_Dphi(3,1) = ph_Dphi(1,3)
	ph_Dphi(3,2) = ph_Dphi(2,3)
      
      endif
      
c     MFV assumptions for the couplings. Neglect yukawas of light quarks
      if(mfv) then	  
c     MVF couplings for vertex corrections
        ph_A_QphiU =  powheginput("#A_QphiU")
        ph_A_Uphi  =  powheginput("#A_Uphi")
        ph_A_QphiD =  powheginput("#A_QphiD")
        ph_B_QphiD =  powheginput("#B_QphiD")
        ph_A_Dphi  =  powheginput("#A_Dphi")
	if (ph_A_QphiU.lt.-1d5) ph_A_QphiU =0d0
	if (ph_A_Uphi.lt.-1d5)  ph_A_Uphi  =0d0
 	if (ph_A_QphiD.lt.-1d5) ph_A_QphiD =0d0
	if (ph_B_QphiD.lt.-1d5) ph_B_QphiD =0d0
	if (ph_A_Dphi.lt.-1d5)  ph_A_Dphi  =0d0
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     Vertex corrections 						c	
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc            
c     Matrices have to be hermitian.   
c     left handed quarks, up type
	ph_QphiU(1,1) = ph_A_QphiU
	ph_QphiU(2,2) = ph_A_QphiU
	ph_QphiU(3,3) = ph_A_QphiU
c     left handed quarks, down type 
	ph_QphiD(1,1) = ph_A_QphiD + ph_CKM(3,1)**2 * ph_B_QphiD
	ph_QphiD(1,2) = ph_CKM(3,1)* ph_CKM(3,2)    * ph_B_QphiD
	ph_QphiD(1,3) = ph_CKM(3,1)* ph_CKM(3,3)    * ph_B_QphiD
	ph_QphiD(2,2) = ph_A_QphiD + ph_CKM(3,2)**2 * ph_B_QphiD
	ph_QphiD(2,3) = ph_CKM(3,2)* ph_CKM(3,3)    * ph_B_QphiD
	ph_QphiD(3,3) = ph_A_QphiD + ph_CKM(3,3)**2 * ph_B_QphiD
	ph_QphiD(2,1) = ph_QphiD(1,2)
	ph_QphiD(3,1) = ph_QphiD(1,3)
	ph_QphiD(3,2) = ph_QphiD(2,3)
c     UP type right handed quarks
	ph_Uphi(1,1) = ph_A_Uphi
	ph_Uphi(2,2) = ph_A_Uphi
	ph_Uphi(3,3) = ph_A_Uphi
c     DOWN type  
	ph_Dphi(1,1) = ph_A_Dphi
	ph_Dphi(2,2) = ph_A_Dphi
	ph_Dphi(3,3) = ph_A_Dphi
      endif            
      
      
c      set all the couplings to zero 
      if(.not.wdm) then
	do i=1,3
	  do j=1,3 
	    ph_ReGUw(i,j) = 0d0
	    ph_ReGUe(i,j) = 0d0
	    ph_ReGDw(i,j) = 0d0
	    ph_ReGDe(i,j) = 0d0
	    ph_ReYu(i,j) = 0d0
	    ph_ReYd(i,j) = 0d0
	    ph_ImYu(i,j) = 0d0
	    ph_ImYd(i,j) = 0d0
	    ph_QphiD(i,j) = 0d0
	    ph_QphiU(i,j) = 0d0
	    ph_Uphi(i,j) = 0d0
	    ph_Dphi(i,j) = 0d0
	  enddo
	enddo
	ph_cww = 0d0
	ph_cbb = 0d0
	ph_cwb = 0d0 
	ph_cwwt = 0d0
	ph_cbbt = 0d0
	ph_cwbt = 0d0 
      endif
      


c******************************************************
c     Choose the process to be implemented
c******************************************************

      idvecbos = 23
c     decay products of the vector boson
      Vdecmod=powheginput('vdecaymode')
      
      if (Vdecmod.eq.1) then
         vdecaymode=-11
      elseif (Vdecmod.eq.2) then
         vdecaymode=-13
      elseif (Vdecmod.eq.3) then
         vdecaymode=-15
      elseif (Vdecmod.eq.4) then
         vdecaymode=-12
      elseif (Vdecmod.eq.5) then
         vdecaymode=-14
      elseif (Vdecmod.eq.6) then
         vdecaymode=-16
      else
         write(*,*) 'ERROR: The decay mode you selected ',Vdecmod, 
     $        ' is not allowed '
         call pwhg_exit(1)
      endif
      write(*,*) 
      write(*,*) ' POWHEG: H Z production and decay ' 
      if (vdecaymode.eq.-11) write(*,*) '         to e+ e- '
      if (vdecaymode.eq.-13) write(*,*) '         to mu+ mu-'
      if (vdecaymode.eq.-15) write(*,*) '         to tau+ tau-'
      if (vdecaymode.eq.-12) write(*,*) '         to antinue nue'
      if (vdecaymode.eq.-14) write(*,*) '         to antinumu numu'
      if (vdecaymode.eq.-16) write(*,*) '         to antinutau nutau'

c     here we change the flavors of the final-state leptons, since the subroutines 
c     to compute the Born and the real contributions check the id of the fourth particle
c     in the flavor list
      do i=1,flst_nborn
         flst_born(4,i) = vdecaymode
         flst_born(5,i) = -vdecaymode
      enddo
      do i=1,flst_nreal
         flst_real(4,i) = vdecaymode
         flst_real(5,i) = -vdecaymode
      enddo

c     Set here lepton and quark masses for momentum reshuffle in the LHE event file
      physpar_ml(1) = 0.51099891d-3
      physpar_ml(2) = 0.1056583668d0
      physpar_ml(3) = 1.77684d0
      physpar_mq(1) = 0.33d0     ! down
      physpar_mq(2) = 0.33d0     ! up
      physpar_mq(3) = 0.50d0     ! strange
      physpar_mq(4) = 1.50d0     ! charm
      physpar_mq(5) = 4.5d0      ! bottom

      decmass=0d0
      if (abs(vdecaymode).eq.11) decmass = physpar_ml(1)
      if (abs(vdecaymode).eq.13) decmass = physpar_ml(2)
      if (abs(vdecaymode).eq.15) decmass = physpar_ml(3)

      if (ph_Zmass2low.lt.4*decmass**2) then
         write(*,*) 'min_z_mass less than the minimun invariant mass of'
         write(*,*) 'the final-state leptonic system ',2*decmass
         write(*,*) 'POWHEG aborts'
         call pwhg_exit(-1)
      endif


      end


