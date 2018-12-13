      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include "pwhg_physpar.h"
      real * 8 masswindow
      real * 8 powheginput
      integer * 8 i,j,k
      real * 8 aux1(3,3), aux2(3,3)
      real * 8 aux3(3,3), aux4(3,3)
      real * 8 aux5(3,3), aux6(3,3)
      external powheginput
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   INDEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      
      ph_Hmass = powheginput("#hmass")
      ph_Hwidth = powheginput("#hwidth")
      
      ph_topmass = 172.5d0

c     if one of two parameters is missing, use the default ones
      if ((ph_Hmass.lt.0d0).or.(ph_Hwidth.lt.0d0)) then
c     ph_Hmass  = 100d0
c     ph_Hwidth = 0.0033d0
      ph_Hmass  = 125d0
      ph_Hwidth = 4.14d-03
c      ph_Hmass  = 150d0
c      ph_Hwidth = 0.0182d0
c     ph_Hmass  = 300d0
c     ph_Hwidth = 8.4086d0
c     ph_Hmass  = 400d0
c     ph_Hwidth = 29.42d0 
c     ph_Hmass  = 300d0
c     ph_Hwidth = 8.445d0 
c     ph_Hmass  = 600d0
c     ph_Hwidth = 122.6d0 
c     ph_Hmass  = 800d0
c     ph_Hwidth = 265.d0 
      endif

      write(*,*) '**************************************'
      write(*,*) '**************************************'
      write(*,*) 'Higgs boson mass  = ',ph_Hmass
      write(*,*) 'Higgs boson width = ',ph_Hwidth
      write(*,*) '**************************************'
      write(*,*) '**************************************'

      
      
      ph_Zmass  = 91.1876d0
      ph_Zwidth =  2.4952d0
      ph_Wmass  = 80.398d0
      ph_Wwidth =  2.141d0
      ph_alphaem = 1d0/128.930d0
c      ph_sthw2 = 0.2312d0
      ph_sthw2 = 0.23129d0
      
      ph_vev = 246.21965

cccc  derived effective couplings of Z and W: g_eff and (g/cw)_eff
      ph_geff   = 2d0*ph_Wmass/ph_vev 
      ph_gcweff = 2d0*ph_Zmass/ph_vev
      
      
      
c     number of light flavors
      st_nlight = 5

      ph_CKM(1,1)=0.9748 	
      ph_CKM(1,2)=0.2225  	 
      ph_CKM(1,3)=0.0036  	
      ph_CKM(2,1)=0.2225  	
      ph_CKM(2,2)=0.9740 	
      ph_CKM(2,3)=0.041	
      ph_CKM(3,1)=0.009    
      ph_CKM(3,2)=0.0405   
      ph_CKM(3,3)=0.9992

c     initialize CKM with flavor indexes
      call inizialize_ph_CKM_matrix

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   DEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_sthw = sqrt(ph_sthw2)
      ph_cthw = sqrt(1-ph_sthw2)
      ph_Zmass2 = ph_Zmass**2
      ph_Wmass2 = ph_Wmass**2
      ph_Hmass2 = ph_Hmass**2
      ph_ZmZw = ph_Zmass * ph_Zwidth
      ph_WmWw = ph_Wmass * ph_Wwidth
      ph_HmHw = ph_Hmass * ph_Hwidth


c     set mass windows around the resonance peak 
c     It is used in the generation of the Born phase space
      masswindow = 30
c      ph_Zmass2low=(ph_Zmass-masswindow*ph_Zwidth)**2
c      ph_Zmass2high=(ph_Zmass+masswindow*ph_Zwidth)**2
      ph_Hmass2low=max(0d0,ph_Hmass-masswindow*ph_Hwidth)
      ph_Hmass2low=ph_Hmass2low**2
      ph_Hmass2high=(ph_Hmass+masswindow*ph_Hwidth)**2
c      ph_Hmass2low=0d0
c      ph_Hmass2high=kn_sbeams/4
    
      ph_unit_e = sqrt(4*pi*ph_alphaem)


c     Set here lepton and quark masses for momentum reshuffle in the LHE event file
      physpar_ml(1) = 0.51099891d-3
      physpar_ml(2) = 0.1056583668d0
      physpar_ml(3) = 1.77684d0
      physpar_mq(1) = 0.33d0     ! down
      physpar_mq(2) = 0.33d0     ! up
      physpar_mq(3) = 0.50d0     ! strange
      physpar_mq(4) = 1.50d0     ! charm
      physpar_mq(5) = 4.5d0      ! bottom

      
      
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
      if(powheginput('#mfv').eq.1) mfv=.true.      
      
c     scale at which the dim. 6 coefficient are given
      LambdaNP = powheginput('#LambdaNP')
      if (LambdaNP.lt.0)  LambdaNP = 1000      

c     for the weak edm and the modifications to the quark-W left handed coupling
c     set all non-diagonal couplings
c     to zero  and request only diagonal couplings. 
c     Otherwise, need to include flavor changing neutral currents
c     in Z exchange diagrams
      do i=1,3
	do j=1,3
	  ph_ReGDe(i,j) = 0d0
	  ph_ImGDe(i,j) = 0d0
          ph_ReGUe(i,j) = 0d0
          ph_ImGUe(i,j) = 0d0
      	  ph_ReGDw(i,j) = 0d0
	  ph_ImGDw(i,j) = 0d0
          ph_ReGUw(i,j) = 0d0
          ph_ImGUw(i,j) = 0d0
          ph_QphiW(i,j) = 0d0
          ph_ReXi(i,j)  = 0d0 
          ph_ImXi(i,j)  = 0d0
  	enddo
  	ph_Qphi1(i) = 0d0
  	ph_Qphi3(i) = 0d0
  	ph_Uphi(i)  = 0d0
  	ph_Dphi(i)  = 0d0
      enddo

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccc 
c  Gauge-Higgs couplings
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
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
      

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccc 
c  Quark level couplings
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
      if(.not.mfv) then
c     in units of v x Gamma
c     ReGU: 
	ph_ReGUw(1,1) = powheginput("#ReGUw_uu")
	if (ph_ReGUw(1,1).lt.-1d5) ph_ReGUw(1,1)=0d0 
	ph_ReGUw(2,2) = powheginput("#ReGUw_cc")
	if (ph_ReGUw(2,2).lt.-1d5) ph_ReGUw(2,2)=0d0       
	ph_ReGUw(3,3) = powheginput("#ReGUw_tt")
	if (ph_ReGUw(3,3).lt.-1d5) ph_ReGUw(3,3)=0d0       
	ph_ReGUe(1,1) = powheginput("#ReGUe_uu")
	if (ph_ReGUe(1,1).lt.-1d5) ph_ReGUe(1,1)=0d0 
	ph_ReGUe(2,2) = powheginput("#ReGUe_cc")
	if (ph_ReGUe(2,2).lt.-1d5) ph_ReGUe(2,2)=0d0       
	ph_ReGUe(3,3) = powheginput("#ReGUe_tt")
	if (ph_ReGUe(3,3).lt.-1d5) ph_ReGUe(3,3)=0d0
c     ImGU
	ph_ImGUw(1,1) = powheginput("#ImGUw_uu")
	if (ph_ImGUw(1,1).lt.-1d5) ph_ImGUw(1,1)=0d0 
	ph_ImGUw(2,2) = powheginput("#ImGUw_cc")
	if (ph_ImGUw(2,2).lt.-1d5) ph_ImGUw(2,2)=0d0       
	ph_ImGUw(3,3) = powheginput("#ImGUw_tt")
	if (ph_ImGUw(3,3).lt.-1d5) ph_ImGUw(3,3)=0d0       
	ph_ImGUe(1,1) = powheginput("#ImGUe_uu")
	if (ph_ImGUe(1,1).lt.-1d5) ph_ImGUe(1,1)=0d0 
	ph_ImGUe(2,2) = powheginput("#ImGUe_cc")
	if (ph_ImGUe(2,2).lt.-1d5) ph_ImGUe(2,2)=0d0       
	ph_ImGUe(3,3) = powheginput("#ImGUe_tt")
	if (ph_ImGUe(3,3).lt.-1d5) ph_ImGUe(3,3)=0d0
c     ReGD: 
	ph_ReGDw(1,1) = powheginput("#ReGDw_dd")
	if (ph_ReGDw(1,1).lt.-1d5) ph_ReGDw(1,1)=0d0 
	ph_ReGDw(2,2) = powheginput("#ReGDw_ss")
	if (ph_ReGDw(2,2).lt.-1d5) ph_ReGDw(2,2)=0d0       
	ph_ReGDw(3,3) = powheginput("#ReGDw_bb")
	if (ph_ReGDw(3,3).lt.-1d5) ph_ReGDw(3,3)=0d0       
	ph_ReGDe(1,1) = powheginput("#ReGDe_dd")
	if (ph_ReGDe(1,1).lt.-1d5) ph_ReGDe(1,1)=0d0 
	ph_ReGDe(2,2) = powheginput("#ReGDe_ss")
	if (ph_ReGDe(2,2).lt.-1d5) ph_ReGDe(2,2)=0d0       
	ph_ReGDe(3,3) = powheginput("#ReGDe_bb")
	if (ph_ReGDe(3,3).lt.-1d5) ph_ReGDe(3,3)=0d0
c     ImGD
	ph_ImGDw(1,1) = powheginput("#ImGDw_dd")
	if (ph_ImGDw(1,1).lt.-1d5) ph_ImGDw(1,1)=0d0 
	ph_ImGDw(2,2) = powheginput("#ImGDw_ss")
	if (ph_ImGDw(2,2).lt.-1d5) ph_ImGDw(2,2)=0d0       
	ph_ImGDw(3,3) = powheginput("#ImGDw_bb")
	if (ph_ImGDw(3,3).lt.-1d5) ph_ImGDw(3,3)=0d0       
	ph_ImGDe(1,1) = powheginput("#ImGDe_dd")
	if (ph_ImGDe(1,1).lt.-1d5) ph_ImGDe(1,1)=0d0 
	ph_ImGDe(2,2) = powheginput("#ImGDe_ss")
	if (ph_ImGDe(2,2).lt.-1d5) ph_ImGDe(2,2)=0d0       
	ph_ImGDe(3,3) = powheginput("#ImGDe_bb")
	if (ph_ImGDe(3,3).lt.-1d5) ph_ImGDe(3,3)=0d0            
	
c     off-diagonal couplings for the W      
c     ReGU
	ph_ReGU_W(1,1) = ph_ReGUw(1,1) * ph_CKM(1,1)
	ph_ReGU_W(1,2) = ph_ReGUw(1,1) * ph_CKM(1,2)
	ph_ReGU_W(1,3) = ph_ReGUw(1,1) * ph_CKM(1,3)
	ph_ReGU_W(2,1) = ph_ReGUw(2,2) * ph_CKM(2,1)
	ph_ReGU_W(2,2) = ph_ReGUw(2,2) * ph_CKM(2,2)
	ph_ReGU_W(2,3) = ph_ReGUw(2,2) * ph_CKM(2,3)
	ph_ReGU_W(3,1) = ph_ReGUw(3,3) * ph_CKM(3,1)
	ph_ReGU_W(3,2) = ph_ReGUw(3,3) * ph_CKM(3,2)
	ph_ReGU_W(3,3) = ph_ReGUw(3,3) * ph_CKM(3,3)
c     ImGU      
	ph_ImGU_W(1,1) = ph_ImGUw(1,1) * ph_CKM(1,1)
	ph_ImGU_W(1,2) = ph_ImGUw(1,1) * ph_CKM(1,2)
	ph_ImGU_W(1,3) = ph_ImGUw(1,1) * ph_CKM(1,3)
	ph_ImGU_W(2,1) = ph_ImGUw(2,2) * ph_CKM(2,1)
	ph_ImGU_W(2,2) = ph_ImGUw(2,2) * ph_CKM(2,2)
	ph_ImGU_W(2,3) = ph_ImGUw(2,2) * ph_CKM(2,3)
	ph_ImGU_W(3,1) = ph_ImGUw(3,3) * ph_CKM(3,1)
	ph_ImGU_W(3,2) = ph_ImGUw(3,3) * ph_CKM(3,2)
	ph_ImGU_W(3,3) = ph_ImGUw(3,3) * ph_CKM(3,3)
c     ReGD
	ph_ReGD_W(1,1) = ph_ReGDw(1,1) * ph_CKM(1,1)
	ph_ReGD_W(1,2) = ph_ReGDw(2,2) * ph_CKM(1,2)
	ph_ReGD_W(1,3) = ph_ReGDw(3,3) * ph_CKM(1,3)
	ph_ReGD_W(2,1) = ph_ReGDw(1,1) * ph_CKM(2,1)
	ph_ReGD_W(2,2) = ph_ReGDw(2,2) * ph_CKM(2,2)
	ph_ReGD_W(2,3) = ph_ReGDw(3,3) * ph_CKM(2,3)
	ph_ReGD_W(3,1) = ph_ReGDw(1,1) * ph_CKM(3,1)
	ph_ReGD_W(3,2) = ph_ReGDw(2,2) * ph_CKM(3,2)
	ph_ReGD_W(3,3) = ph_ReGDw(3,3) * ph_CKM(3,3)
c     ImGD      
	ph_ImGD_W(1,1) = ph_ImGDw(1,1) * ph_CKM(1,1)
	ph_ImGD_W(1,2) = ph_ImGDw(2,2) * ph_CKM(1,2)
	ph_ImGD_W(1,3) = ph_ImGDw(3,3) * ph_CKM(1,3)
	ph_ImGD_W(2,1) = ph_ImGDw(1,1) * ph_CKM(2,1)
	ph_ImGD_W(2,2) = ph_ImGDw(2,2) * ph_CKM(2,2)
	ph_ImGD_W(2,3) = ph_ImGDw(3,3) * ph_CKM(2,3)
	ph_ImGD_W(3,1) = ph_ImGDw(1,1) * ph_CKM(3,1)
	ph_ImGD_W(3,2) = ph_ImGDw(2,2) * ph_CKM(3,2)
	ph_ImGD_W(3,3) = ph_ImGDw(3,3) * ph_CKM(3,3)                 
	
	
	
c     right handed currents
c     in units of v^2 x Xi/2      
c     Real Part of Xi
	ph_ReXi(1,1) = powheginput("#ReXi_ud")
	if (ph_ReXi(1,1).lt.-1d5) ph_ReXi(1,1)=0d0 
	ph_ReXi(1,2) = powheginput("#ReXi_us")
	if (ph_ReXi(1,2).lt.-1d5) ph_ReXi(1,2)=0d0       
	ph_ReXi(1,3) = powheginput("#ReXi_ub")
	if (ph_ReXi(1,3).lt.-1d5) ph_ReXi(1,3)=0d0       
	ph_ReXi(2,1) = powheginput("#ReXi_cd")
	if (ph_ReXi(2,1).lt.-1d5) ph_ReXi(2,1)=0d0 
	ph_ReXi(2,2) = powheginput("#ReXi_cs")
	if (ph_ReXi(2,2).lt.-1d5) ph_ReXi(2,2)=0d0       
	ph_ReXi(2,3) = powheginput("#ReXi_cb")
	if (ph_ReXi(2,3).lt.-1d5) ph_ReXi(2,3)=0d0
	ph_ReXi(3,1) = powheginput("#ReXi_td")
	if (ph_ReXi(3,1).lt.-1d5) ph_ReXi(3,1)=0d0 
	ph_ReXi(3,2) = powheginput("#ReXi_ts")
	if (ph_ReXi(3,2).lt.-1d5) ph_ReXi(3,2)=0d0       
	ph_ReXi(3,3) = powheginput("#ReXi_tb")
	if (ph_ReXi(3,3).lt.-1d5) ph_ReXi(3,3)=0d0
c     Imaginary Part of Xi
	ph_ImXi(1,1) = powheginput("#ImXi_ud")
	if (ph_ImXi(1,1).lt.-1d5) ph_ImXi(1,1)=0d0 
	ph_ImXi(1,2) = powheginput("#ImXi_us")
	if (ph_ImXi(1,2).lt.-1d5) ph_ImXi(1,2)=0d0       
	ph_ImXi(1,3) = powheginput("#ImXi_ub")
	if (ph_ImXi(1,3).lt.-1d5) ph_ImXi(1,3)=0d0       
	ph_ImXi(2,1) = powheginput("#ImXi_cd")
	if (ph_ImXi(2,1).lt.-1d5) ph_ImXi(2,1)=0d0 
	ph_ImXi(2,2) = powheginput("#ImXi_cs")
	if (ph_ImXi(2,2).lt.-1d5) ph_ImXi(2,2)=0d0       
	ph_ImXi(2,3) = powheginput("#ImXi_cb")
	if (ph_ImXi(2,3).lt.-1d5) ph_ImXi(2,3)=0d0
	ph_ImXi(3,1) = powheginput("#ImXi_td")
	if (ph_ImXi(3,1).lt.-1d5) ph_ImXi(3,1)=0d0 
	ph_ImXi(3,2) = powheginput("#ImXi_ts")
	if (ph_ImXi(3,2).lt.-1d5) ph_ImXi(3,2)=0d0       
	ph_ImXi(3,3) = powheginput("#ImXi_tb")
	if (ph_ImXi(3,3).lt.-1d5) ph_ImXi(3,3)=0d0      
	
	
	
c     CP-even quark-weak boson couplings
c     Not allowing flavor changing.
c     Couplings given in units of v^2

c     left handed quarks
	ph_Qphi1(1) = powheginput("#QphiU_uu")
	if (ph_Qphi1(1).lt.-1d5) ph_Qphi1(1)=0d0 
	ph_Qphi1(2) = powheginput("#QphiU_cc")
	if (ph_Qphi1(2).lt.-1d5) ph_Qphi1(2)=0d0 
	ph_Qphi1(3) = powheginput("#QphiU_tt")
	if (ph_Qphi1(3).lt.-1d5) ph_Qphi1(3)=0d0 
	ph_Qphi3(1) = powheginput("#QphiD_dd")
	if (ph_Qphi3(1).lt.-1d5) ph_Qphi3(1)=0d0 
	ph_Qphi3(2) = powheginput("#QphiD_ss")
	if (ph_Qphi3(2).lt.-1d5) ph_Qphi3(2)=0d0 
	ph_Qphi3(3) = powheginput("#QphiD_bb")
	if (ph_Qphi3(3).lt.-1d5) ph_Qphi3(3)=0d0 

c     right handed quarks
	ph_Uphi(1) = powheginput("#Uphi_uu")
	if (ph_Uphi(1).lt.-1d5) ph_Uphi(1)=0d0 
	ph_Uphi(2) = powheginput("#Uphi_cc")
	if (ph_Uphi(2).lt.-1d5) ph_Uphi(2)=0d0 
	ph_Uphi(3) = powheginput("#Uphi_tt")
	if (ph_Uphi(3).lt.-1d5) ph_Uphi(3)=0d0 
	ph_Dphi(1) = powheginput("#Dphi_dd")
	if (ph_Dphi(1).lt.-1d5) ph_Dphi(1)=0d0 
	ph_Dphi(2) = powheginput("#Dphi_ss")
	if (ph_Dphi(2).lt.-1d5) ph_Dphi(2)=0d0 
	ph_Dphi(3) = powheginput("#Dphi_bb")
	if (ph_Dphi(3).lt.-1d5) ph_Dphi(3)=0d0       

	    
	ph_QphiW(1,1) = 1/2d0*( ph_CKM(1,1)* ph_Qphi3(1) - 
     . 		              ph_Qphi1(1)* ph_CKM(1,1) )		 	 
	ph_QphiW(1,2) = 1/2d0*( ph_CKM(1,2)* ph_Qphi3(2) - 
     . 		              ph_Qphi1(1)* ph_CKM(1,2) )		 	 
	ph_QphiW(1,3) = 1/2d0*( ph_CKM(1,3)* ph_Qphi3(3) - 
     . 		              ph_Qphi1(1)* ph_CKM(1,3) )		 	  
	ph_QphiW(2,1) = 1/2d0*( ph_CKM(2,1)* ph_Qphi3(1) - 
     . 		              ph_Qphi1(2)* ph_CKM(2,1) )		 	   
	ph_QphiW(2,2) = 1/2d0*( ph_CKM(2,2)* ph_Qphi3(2) - 
     . 		              ph_Qphi1(2)* ph_CKM(2,2) )		 	   
	ph_QphiW(2,3) = 1/2d0*( ph_CKM(2,3)* ph_Qphi3(3) - 
     . 		              ph_Qphi1(2)* ph_CKM(2,3) )		 	   
	ph_QphiW(3,1) = 1/2d0*( ph_CKM(3,1)* ph_Qphi3(1) - 
     . 		              ph_Qphi1(3)* ph_CKM(3,1) )		 	   
	ph_QphiW(3,2) = 1/2d0*( ph_CKM(3,2)* ph_Qphi3(2) - 
     . 		              ph_Qphi1(3)* ph_CKM(3,2) )		 	   
	ph_QphiW(3,3) = 1/2d0*( ph_CKM(3,3)* ph_Qphi3(3) - 
     . 		              ph_Qphi1(3)* ph_CKM(3,3) )		 	   
c      ph_QphiW(1,1) = ph_Qphi3(1) * ph_CKM(1,1)
c      ph_QphiW(1,2) = 1/2d0* ph_CKM(1,2)*
c     . (ph_Qphi3(1) + ph_Qphi3(2) + ph_Qphi1(2) - ph_Qphi1(1))
c      ph_QphiW(1,3) = 1/2d0* ph_CKM(1,3)*
c     . (ph_Qphi3(1) + ph_Qphi3(3) + ph_Qphi1(3) - ph_Qphi1(1))
c      ph_QphiW(2,1) = 1/2d0* ph_CKM(2,1)*
c     . (ph_Qphi3(1) + ph_Qphi3(2) - ph_Qphi1(2) + ph_Qphi1(1))
c      ph_QphiW(2,2) = ph_Qphi3(2) * ph_CKM(2,2)
c      ph_QphiW(2,3) = 1/2d0* ph_CKM(2,3)*
c     . (ph_Qphi3(2) + ph_Qphi3(3) + ph_Qphi1(3) - ph_Qphi1(2)) 
c      ph_QphiW(3,1) = 1/2d0* ph_CKM(3,1)*
c     . (ph_Qphi3(1) + ph_Qphi3(3) - ph_Qphi1(3) + ph_Qphi1(1))
c      ph_QphiW(3,2) = 1/2d0* ph_CKM(3,2)*
c     . (ph_Qphi3(3) + ph_Qphi3(2) + ph_Qphi1(2) - ph_Qphi1(3)) 
c      ph_QphiW(3,3) = ph_Qphi3(3) * ph_CKM(3,3)     
	endif
      
c     MFV structure for the couplings. Only vertex corrections  are non-zero  
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
c     left handed quarks
	ph_Qphi1(1) = ph_A_QphiU
	ph_Qphi1(2) = ph_A_QphiU
	ph_Qphi1(3) = ph_A_QphiU
	ph_Qphi3(1) = ph_A_QphiD
	ph_Qphi3(2) = ph_A_QphiD
	ph_Qphi3(3) = ph_A_QphiD + ph_CKM(3,3)**2 * ph_B_QphiD
c     UP type right handed quarks
	ph_Uphi(1) = ph_A_Uphi
	ph_Uphi(2) = ph_A_Uphi
	ph_Uphi(3) = ph_A_Uphi
c     DOWN type right handed quarks
	ph_Dphi(1) = ph_A_Dphi
	ph_Dphi(2) = ph_A_Dphi
	ph_Dphi(3) = ph_A_Dphi

	    
	ph_QphiW(1,1) = 1/2d0*( ph_CKM(1,1)* ph_Qphi3(1) - 
     . 		              ph_Qphi1(1)* ph_CKM(1,1) )		 	 
	ph_QphiW(1,2) = 1/2d0*( ph_CKM(1,2)* ph_Qphi3(2) - 
     . 		              ph_Qphi1(1)* ph_CKM(1,2) )		 	 
	ph_QphiW(1,3) = 1/2d0*( ph_CKM(1,3)* ph_Qphi3(3) - 
     . 		              ph_Qphi1(1)* ph_CKM(1,3) )		 	  
	ph_QphiW(2,1) = 1/2d0*( ph_CKM(2,1)* ph_Qphi3(1) - 
     . 		              ph_Qphi1(2)* ph_CKM(2,1) )		 	   
	ph_QphiW(2,2) = 1/2d0*( ph_CKM(2,2)* ph_Qphi3(2) - 
     . 		              ph_Qphi1(2)* ph_CKM(2,2) )		 	   
	ph_QphiW(2,3) = 1/2d0*( ph_CKM(2,3)* ph_Qphi3(3) - 
     . 		              ph_Qphi1(2)* ph_CKM(2,3) )		 	   
	ph_QphiW(3,1) = 1/2d0*( ph_CKM(3,1)* ph_Qphi3(1) - 
     . 		              ph_Qphi1(3)* ph_CKM(3,1) )		 	   
	ph_QphiW(3,2) = 1/2d0*( ph_CKM(3,2)* ph_Qphi3(2) - 
     . 		              ph_Qphi1(3)* ph_CKM(3,2) )		 	   
	ph_QphiW(3,3) = 1/2d0*( ph_CKM(3,3)* ph_Qphi3(3) - 
     . 		              ph_Qphi1(3)* ph_CKM(3,3) )		 	         
      endif
      
      end


      subroutine inizialize_ph_CKM_matrix
      implicit none     
      include 'PhysPars.h'  
      integer i,j
      do i=1,6
         do j=1,6
            ph_CKM_matrix(i,j) = 0
         enddo
      enddo
      ph_CKM_matrix(1,2) = ph_CKM(1,1)
      ph_CKM_matrix(1,4) = ph_CKM(2,1)
      ph_CKM_matrix(1,6) = ph_CKM(3,1)
      ph_CKM_matrix(2,3) = ph_CKM(1,2)
      ph_CKM_matrix(2,5) = ph_CKM(1,3)
      ph_CKM_matrix(3,4) = ph_CKM(2,2)
      ph_CKM_matrix(3,6) = ph_CKM(3,2)
      ph_CKM_matrix(4,5) = ph_CKM(2,3)
      ph_CKM_matrix(5,6) = ph_CKM(3,3)
      do i=1,6
         do j=i+1,6
            ph_CKM_matrix(j,i) = ph_CKM_matrix(i,j)
         enddo
      enddo
      end


