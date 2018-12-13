      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      real * 8 mass_low,mass_high
      real * 8 powheginput
      external powheginput
      integer i,j, k, l
      logical verbose
      parameter(verbose=.true.)
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   INDEPENDENT QUANTITIES       
cccccc
cccccc  we use mZ, mW, v, (sthw2)_eff from leptonic aysmmetries, alpha_em 
cccccc  as defined in the paper 
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_Wmass = powheginput("#Wmass")
      if (ph_Wmass.le.0d0) ph_Wmass  = 80.398d0     
      ph_Wwidth = powheginput("#Wwidth")
      if (ph_Wwidth.le.0d0) ph_Wwidth =  2.141d0

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

c     CAVEAT: 
      ph_CKM(1,1) = powheginput("#CKM_Vud")
      if (ph_CKM(1,1).le.0d0) ph_CKM(1,1)=0.975d0 
      ph_CKM(1,2) = powheginput("#CKM_Vus")
      if (ph_CKM(1,2).le.0d0) ph_CKM(1,2)=0.222d0 
      ph_CKM(1,3) = powheginput("#CKM_Vub")
      if (ph_CKM(1,3).le.0d0) ph_CKM(1,3)=1d-10
      ph_CKM(2,1) = powheginput("#CKM_Vcd")
      if (ph_CKM(2,1).le.0d0) ph_CKM(2,1)=-0.222d0 
      ph_CKM(2,2) = powheginput("#CKM_Vcs")
      if (ph_CKM(2,2).le.0d0)  ph_CKM(2,2)=0.975d0 
      ph_CKM(2,3) = powheginput("#CKM_Vcb")
      if (ph_CKM(2,3).le.0d0) ph_CKM(2,3)=1d-10
      ph_CKM(3,1) = powheginput("#CKM_Vtd")
      if (ph_CKM(3,1).le.0d0) ph_CKM(3,1)=1d-10
      ph_CKM(3,2) = powheginput("#CKM_Vts")
      if (ph_CKM(3,2).le.0d0) ph_CKM(3,2)=1d-10
      ph_CKM(3,3) = powheginput("#CKM_Vtb")
      if (ph_CKM(3,3).le.0d0) ph_CKM(3,3)=1d0
      
      
c     number of light flavors
      st_nlight = 5

c     mass window
      mass_low = powheginput("#mass_low")
      if (mass_low.lt.0d0) mass_low=0
      mass_high = powheginput("#mass_high")
      if (mass_high.lt.0d0) mass_high=sqrt(kn_sbeams)   

c     running width
      ph_runwidth = powheginput("#running_width").eq.1d0

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   DEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_sthw = sqrt(ph_sthw2)
      ph_cthw = sqrt(1-ph_sthw2)
      ph_Zmass2 = ph_Zmass**2

      ph_Zmass2low=mass_low**2
      if (sqrt(ph_Zmass2low).lt.1d0) then
         write(*,*) '*************************************'
         write(*,*) 'WARNING: Z virtuality cutoff at 1 GeV'
         write(*,*) '         to avoid the photon pole    '
         write(*,*) '*************************************'
         ph_Zmass2low=1d0
      endif
     
      ph_Zmass2high=min(kn_sbeams,mass_high**2)

      ph_ZmZw = ph_Zmass * ph_Zwidth
      ph_unit_e = sqrt(4*pi*ph_alphaem)


      if( ph_Zmass2low.ge.ph_Zmass2high ) then
         write(*,*) "Error in init_couplings: mass_low >= mass_high"
         call exit(1)
      endif

      if(verbose) then
      write(*,*) '*************************************'
      write(*,*) 'Z mass = ',ph_Zmass
      write(*,*) 'Z width = ',ph_Zwidth
      write(*,*) 'W mass = ',ph_Wmass
      write(*,*) 'W width = ',ph_Wwidth
      write(*,*) '1/alphaem = ',1d0/ph_alphaem
      write(*,*) 'sthw2 = ',ph_sthw2
      if(ph_runwidth) write(*,*) 'using running Z width'
      write(*,*) '*************************************'
      write(*,*)
      write(*,*) '*************************************'
      write(*,*) sqrt(ph_Zmass2low),'< M_Z <',sqrt(ph_Zmass2high)
      write(*,*) '*************************************'
      endif


ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     Set the dimension six couplings
c
c     I express the Z and photon dipole in terms of the unbroken 
c     couplings, Gamma_W and Gamma_B. 
c     
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     
      edm = .false.
      mfv = .false.
      if(powheginput('#dim6').eq.1) edm=.true.
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
	    ph_QLd(i,j) = 0d0
	    ph_QLu(i,j) = 0d0
	    ph_Ced(i,j) = 0d0
	    ph_Ceu(i,j) = 0d0
	    ph_CLd(i,j) = 0d0
	    ph_CLu(i,j) = 0d0
	    ph_Qe(i,j)  = 0d0
	    ph_Re_LeQu(i,j) = 0d0
	    ph_Re_LeQu3(i,j) = 0d0
	    ph_Re_LedQ(i,j) = 0d0
	    ph_Im_LeQu(i,j) = 0d0
	    ph_Im_LeQu3(i,j) = 0d0
	    ph_Im_LedQ(i,j) = 0d0
	    ph_Qeu(i,j) = 0d0
	    ph_QLd_nu(i,j) = 0d0
	    ph_QLu_nu(i,j) = 0d0
	  enddo
	enddo


c     if the flag mfv is not selected, read coefficients with the notation
c     of Table 1 of arxiv:1804.07407
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
	
c      leptonic dipole coefficients       
	ph_ReGEw = powheginput("#ReGEw")
	if (ph_ReGEw.lt.-1d5) ph_ReGEw =0d0       
	ph_ImGEw = powheginput("#ImGEw")
	if (ph_ImGEw.lt.-1d5) ph_ImGEw =0d0            
	ph_ReGEe = powheginput("#ReGEe")
	if (ph_ReGEe.lt.-1d5) ph_ReGEe =0d0       
	ph_ImGEe = powheginput("#ImGEe")
	if (ph_ImGEe.lt.-1d5) ph_ImGEe =0d0           
	
	
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
	
	
	
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc            
c     SEMILEPTONIC Vector-like operators 
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     assume it is always diagonal in the lepton sector 
c     Matrices have to be hermitian.   

c     UP type left-left 
	ph_QLu(1,1) = powheginput("#QLu_uu")
	ph_QLu(1,2) = powheginput("#QLu_uc")
	ph_QLu(1,3) = powheginput("#QLu_ut")
	ph_QLu(2,2) = powheginput("#QLu_cc")
	ph_QLu(2,3) = powheginput("#QLu_ct")
	ph_QLu(3,3) = powheginput("#QLu_tt")
	if (ph_QLu(1,1).lt.-1d5) ph_QLu(1,1)=0d0
	if (ph_QLu(1,2).lt.-1d5) ph_QLu(1,2)=0d0 
	if (ph_QLu(1,3).lt.-1d5) ph_QLu(1,3)=0d0 
	if (ph_QLu(2,2).lt.-1d5) ph_QLu(2,2)=0d0 
	if (ph_QLu(2,3).lt.-1d5) ph_QLu(2,3)=0d0 
	if (ph_QLu(3,3).lt.-1d5) ph_QLu(3,3)=0d0       
	ph_QLu(2,1) = ph_QLu(1,2)
	ph_QLu(3,1) = ph_QLu(1,3)
	ph_QLu(3,2) = ph_QLu(2,3)
c     DOWN type left-left       
	ph_QLd(1,1) = powheginput("#QLd_dd")
	ph_QLd(1,2) = powheginput("#QLd_ds")
	ph_QLd(1,3) = powheginput("#QLd_db")
	ph_QLd(2,2) = powheginput("#QLd_ss")
	ph_QLd(2,3) = powheginput("#QLd_sb")
	ph_QLd(3,3) = powheginput("#QLd_bb")
	if (ph_QLd(1,1).lt.-1d5) ph_QLd(1,1)=0d0 
	if (ph_QLd(1,2).lt.-1d5) ph_QLd(1,2)=0d0 
	if (ph_QLd(1,3).lt.-1d5) ph_QLd(1,3)=0d0 
	if (ph_QLd(2,2).lt.-1d5) ph_QLd(2,2)=0d0 
	if (ph_QLd(2,3).lt.-1d5) ph_QLd(2,3)=0d0 
	if (ph_QLd(3,3).lt.-1d5) ph_QLd(3,3)=0d0 
	ph_QLd(2,1) = ph_QLd(1,2)
	ph_QLd(3,1) = ph_QLd(1,3)
	ph_QLd(3,2) = ph_QLd(2,3)
c     UP type right-right       
	ph_Ceu(1,1) = powheginput("#Ceu_uu")
	ph_Ceu(1,2) = powheginput("#Ceu_uc")
	ph_Ceu(1,3) = powheginput("#Ceu_ut")
	ph_Ceu(2,2) = powheginput("#Ceu_cc")
	ph_Ceu(2,3) = powheginput("#Ceu_ct")
	ph_Ceu(3,3) = powheginput("#Ceu_tt")
	if (ph_Ceu(1,1).lt.-1d5) ph_Ceu(1,1)=0d0 
	if (ph_Ceu(1,2).lt.-1d5) ph_Ceu(1,2)=0d0 
	if (ph_Ceu(1,3).lt.-1d5) ph_Ceu(1,3)=0d0 
	if (ph_Ceu(2,2).lt.-1d5) ph_Ceu(2,2)=0d0 
	if (ph_Ceu(2,3).lt.-1d5) ph_Ceu(2,3)=0d0 
	if (ph_Ceu(3,3).lt.-1d5) ph_Ceu(3,3)=0d0       
	ph_Ceu(2,1) = ph_Ceu(1,2)
	ph_Ceu(3,1) = ph_Ceu(1,3)
	ph_Ceu(3,2) = ph_Ceu(2,3)
c     DOWN type right-right 
	ph_Ced(1,1) = powheginput("#Ced_dd")
	ph_Ced(1,2) = powheginput("#Ced_ds")
	ph_Ced(1,3) = powheginput("#Ced_db")
	ph_Ced(2,2) = powheginput("#Ced_ss")
	ph_Ced(2,3) = powheginput("#Ced_sb")
	ph_Ced(3,3) = powheginput("#Ced_bb")
	if (ph_Ced(1,1).lt.-1d5) ph_Ced(1,1)=0d0 
	if (ph_Ced(1,2).lt.-1d5) ph_Ced(1,2)=0d0 
	if (ph_Ced(1,3).lt.-1d5) ph_Ced(1,3)=0d0 
	if (ph_Ced(2,2).lt.-1d5) ph_Ced(2,2)=0d0 
	if (ph_Ced(2,3).lt.-1d5) ph_Ced(2,3)=0d0 
	if (ph_Ced(3,3).lt.-1d5) ph_Ced(3,3)=0d0
	ph_Ced(2,1) = ph_Ced(1,2)
	ph_Ced(3,1) = ph_Ced(1,3)
	ph_Ced(3,2) = ph_Ced(2,3)
c     UP type right-left 
	ph_CLu(1,1) = powheginput("#CLu_uu")
	ph_CLu(1,2) = powheginput("#CLu_uc")
	ph_CLu(1,3) = powheginput("#CLu_ut")            
	ph_CLu(2,2) = powheginput("#CLu_cc")
	ph_CLu(2,3) = powheginput("#CLu_ct")
	ph_CLu(3,3) = powheginput("#CLu_tt")
	if (ph_CLu(1,1).lt.-1d5) ph_CLu(1,1)=0d0 
	if (ph_CLu(1,2).lt.-1d5) ph_CLu(1,2)=0d0 
	if (ph_CLu(1,3).lt.-1d5) ph_CLu(1,3)=0d0 
	if (ph_CLu(2,2).lt.-1d5) ph_CLu(2,2)=0d0
	if (ph_CLu(2,3).lt.-1d5) ph_CLu(2,3)=0d0 
	if (ph_CLu(3,3).lt.-1d5) ph_CLu(3,3)=0d0
	ph_CLu(2,1) = ph_CLu(1,2)
	ph_CLu(3,1) = ph_CLu(1,3)
	ph_CLu(3,2) = ph_CLu(2,3)
c     DOWN type right left 
	ph_CLd(1,1) = powheginput("#CLd_dd")
	ph_CLd(1,2) = powheginput("#CLd_ds")
	ph_CLd(1,3) = powheginput("#CLd_db")
	ph_CLd(2,2) = powheginput("#CLd_ss")
	ph_CLd(2,3) = powheginput("#CLd_sb")
	ph_CLd(3,3) = powheginput("#CLd_ss")
	if (ph_CLd(1,1).lt.-1d5) ph_CLd(1,1)=0d0 
	if (ph_CLd(1,2).lt.-1d5) ph_CLd(1,2)=0d0 
	if (ph_CLd(1,3).lt.-1d5) ph_CLd(1,3)=0d0 
	if (ph_CLd(2,2).lt.-1d5) ph_CLd(2,2)=0d0 
	if (ph_CLd(2,3).lt.-1d5) ph_CLd(2,3)=0d0 
	if (ph_CLd(3,3).lt.-1d5) ph_CLd(3,3)=0d0
	ph_CLd(2,1) = ph_CLd(1,2)
	ph_CLd(3,1) = ph_CLd(1,3)
	ph_CLd(3,2) = ph_CLd(2,3)
c     left-right
	ph_Qe(1,1) = powheginput("#Qe_dd")
	ph_Qe(1,2) = powheginput("#Qe_ds")
	ph_Qe(1,3) = powheginput("#Qe_db")
	ph_Qe(2,2) = powheginput("#Qe_ss")
	ph_Qe(2,3) = powheginput("#Qe_sb")
	ph_Qe(3,3) = powheginput("#Qe_bb")
	if (ph_Qe(1,1).lt.-1d5) ph_Qe(1,1)=0d0 
	if (ph_Qe(1,2).lt.-1d5) ph_Qe(1,2)=0d0 
	if (ph_Qe(1,3).lt.-1d5) ph_Qe(1,3)=0d0 
	if (ph_Qe(2,2).lt.-1d5) ph_Qe(2,2)=0d0
	if (ph_Qe(2,3).lt.-1d5) ph_Qe(2,3)=0d0
	if (ph_Qe(3,3).lt.-1d5) ph_Qe(3,3)=0d0       
	ph_Qe(2,1) = ph_Qe(1,2)
	ph_Qe(3,1) = ph_Qe(1,3)
	ph_Qe(3,2) = ph_Qe(2,3)

	
c     for the up type       
	do i=1,3
	  do j = 1,3 
	    do k = 1,3 
	      do l = 1,3
	      ph_Qeu(i,j) = ph_Qeu(i,j) 
     .			+ ph_CKM(i,k) * ph_Qe(k,l) * ph_CKM(j,l)
	      ph_QLd_nu(i,j) = ph_QLd_nu(i,j) 
     .			+ ph_CKM(k,i) * ph_QLu(k,l) * ph_CKM(l,j)
	      ph_QLu_nu(i,j) = ph_QLu_nu(i,j) 
     .			+ ph_CKM(i,k) * ph_QLd(k,l) * ph_CKM(j,l)
	      enddo
	    enddo	
	  enddo	  
	enddo	
	
	
	
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc            
c     SEMILEPTONIC Scalar and Tensor operators
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     UP type scalar       
	ph_Re_LeQu(1,1) = powheginput("#ReLeQu_uu")
	ph_Re_LeQu(1,2) = powheginput("#ReLeQu_uc")
	ph_Re_LeQu(1,3) = powheginput("#ReLeQu_ut")
	ph_Re_LeQu(2,1) = powheginput("#ReLeQu_cu")
	ph_Re_LeQu(2,2) = powheginput("#ReLeQu_cc")
	ph_Re_LeQu(2,3) = powheginput("#ReLeQu_ct")
	ph_Re_LeQu(3,1) = powheginput("#ReLeQu_tu")
	ph_Re_LeQu(3,2) = powheginput("#ReLeQu_tc")
	ph_Re_LeQu(3,3) = powheginput("#ReLeQu_tt")
	if (ph_Re_LeQu(1,1).lt.-1d5) ph_Re_LeQu(1,1)=0d0
	if (ph_Re_LeQu(1,2).lt.-1d5) ph_Re_LeQu(1,2)=0d0 
	if (ph_Re_LeQu(1,3).lt.-1d5) ph_Re_LeQu(1,3)=0d0 
	if (ph_Re_LeQu(2,1).lt.-1d5) ph_Re_LeQu(2,1)=0d0 
	if (ph_Re_LeQu(2,2).lt.-1d5) ph_Re_LeQu(2,2)=0d0 
	if (ph_Re_LeQu(2,3).lt.-1d5) ph_Re_LeQu(2,3)=0d0 
	if (ph_Re_LeQu(3,1).lt.-1d5) ph_Re_LeQu(3,1)=0d0       
	if (ph_Re_LeQu(3,2).lt.-1d5) ph_Re_LeQu(3,2)=0d0      
	if (ph_Re_LeQu(3,3).lt.-1d5) ph_Re_LeQu(3,3)=0d0      
c     DOWN type scalar     
	ph_Re_LedQ(1,1) = powheginput("#ReLedQ_dd")
	ph_Re_LedQ(1,2) = powheginput("#ReLedQ_ds")
	ph_Re_LedQ(1,3) = powheginput("#ReLedQ_db")
	ph_Re_LedQ(2,1) = powheginput("#ReLedQ_sd")
	ph_Re_LedQ(2,2) = powheginput("#ReLedQ_ss")
	ph_Re_LedQ(2,3) = powheginput("#ReLedQ_sb")
	ph_Re_LedQ(3,1) = powheginput("#ReLedQ_bd")
	ph_Re_LedQ(3,2) = powheginput("#ReLedQ_bs")
	ph_Re_LedQ(3,3) = powheginput("#ReLedQ_bb")     
	if (ph_Re_LedQ(1,1).lt.-1d5) ph_Re_LedQ(1,1)=0d0 
	if (ph_Re_LedQ(1,2).lt.-1d5) ph_Re_LedQ(1,2)=0d0 
	if (ph_Re_LedQ(1,3).lt.-1d5) ph_Re_LedQ(1,3)=0d0
	if (ph_Re_LedQ(2,1).lt.-1d5) ph_Re_LedQ(2,1)=0d0 
	if (ph_Re_LedQ(2,2).lt.-1d5) ph_Re_LedQ(2,2)=0d0 
	if (ph_Re_LedQ(2,3).lt.-1d5) ph_Re_LedQ(2,3)=0d0
	if (ph_Re_LedQ(3,1).lt.-1d5) ph_Re_LedQ(3,1)=0d0 
	if (ph_Re_LedQ(3,2).lt.-1d5) ph_Re_LedQ(3,2)=0d0 
	if (ph_Re_LedQ(3,3).lt.-1d5) ph_Re_LedQ(3,3)=0d0
c     UP type tensor        
	ph_Re_LeQu3(1,1) = powheginput("#ReLeQu3_uu")
	ph_Re_LeQu3(1,2) = powheginput("#ReLeQu3_uc")
	ph_Re_LeQu3(1,3) = powheginput("#ReLeQu3_ut")
	ph_Re_LeQu3(2,1) = powheginput("#ReLeQu3_cu")
	ph_Re_LeQu3(2,2) = powheginput("#ReLeQu3_cc")
	ph_Re_LeQu3(2,3) = powheginput("#ReLeQu3_ct")
	ph_Re_LeQu3(3,1) = powheginput("#ReLeQu3_tu")
	ph_Re_LeQu3(3,2) = powheginput("#ReLeQu3_tc")
	ph_Re_LeQu3(3,3) = powheginput("#ReLeQu3_tt")            
	if (ph_Re_LeQu3(1,1).lt.-1d5) ph_Re_LeQu3(1,1)=0d0 
	if (ph_Re_LeQu3(1,2).lt.-1d5) ph_Re_LeQu3(1,2)=0d0 
	if (ph_Re_LeQu3(1,3).lt.-1d5) ph_Re_LeQu3(1,3)=0d0             
	if (ph_Re_LeQu3(2,1).lt.-1d5) ph_Re_LeQu3(2,1)=0d0 
	if (ph_Re_LeQu3(2,2).lt.-1d5) ph_Re_LeQu3(2,2)=0d0 
	if (ph_Re_LeQu3(2,3).lt.-1d5) ph_Re_LeQu3(2,3)=0d0             
	if (ph_Re_LeQu3(3,1).lt.-1d5) ph_Re_LeQu3(3,1)=0d0 
	if (ph_Re_LeQu3(3,2).lt.-1d5) ph_Re_LeQu3(3,2)=0d0 
	if (ph_Re_LeQu3(3,3).lt.-1d5) ph_Re_LeQu3(3,3)=0d0             
	
c     Imaginary parts 
c     UP type scalar       
	ph_Im_LeQu(1,1) = powheginput("#ImLeQu_uu")
	ph_Im_LeQu(1,2) = powheginput("#ImLeQu_uc")
	ph_Im_LeQu(1,3) = powheginput("#ImLeQu_ut")
	ph_Im_LeQu(2,1) = powheginput("#ImLeQu_cu")
	ph_Im_LeQu(2,2) = powheginput("#ImLeQu_cc")
	ph_Im_LeQu(2,3) = powheginput("#ImLeQu_ct")
	ph_Im_LeQu(3,1) = powheginput("#ImLeQu_tu")
	ph_Im_LeQu(3,2) = powheginput("#ImLeQu_tc")
	ph_Im_LeQu(3,3) = powheginput("#ImLeQu_tt")
	if (ph_Im_LeQu(1,1).lt.-1d5) ph_Im_LeQu(1,1)=0d0
	if (ph_Im_LeQu(1,2).lt.-1d5) ph_Im_LeQu(1,2)=0d0 
	if (ph_Im_LeQu(1,3).lt.-1d5) ph_Im_LeQu(1,3)=0d0 
	if (ph_Im_LeQu(2,1).lt.-1d5) ph_Im_LeQu(2,1)=0d0 
	if (ph_Im_LeQu(2,2).lt.-1d5) ph_Im_LeQu(2,2)=0d0 
	if (ph_Im_LeQu(2,3).lt.-1d5) ph_Im_LeQu(2,3)=0d0 
	if (ph_Im_LeQu(3,1).lt.-1d5) ph_Im_LeQu(3,1)=0d0       
	if (ph_Im_LeQu(3,2).lt.-1d5) ph_Im_LeQu(3,2)=0d0      
	if (ph_Im_LeQu(3,3).lt.-1d5) ph_Im_LeQu(3,3)=0d0      
c     DOWN type scalar     
	ph_Im_LedQ(1,1) = powheginput("#ImLedQ_dd")
	ph_Im_LedQ(1,2) = powheginput("#ImLedQ_ds")
	ph_Im_LedQ(1,3) = powheginput("#ImLedQ_db")
	ph_Im_LedQ(2,1) = powheginput("#ImLedQ_sd")
	ph_Im_LedQ(2,2) = powheginput("#ImLedQ_ss")
	ph_Im_LedQ(2,3) = powheginput("#ImLedQ_sb")
	ph_Im_LedQ(3,1) = powheginput("#ImLedQ_bd")
	ph_Im_LedQ(3,2) = powheginput("#ImLedQ_bs")
	ph_Im_LedQ(3,3) = powheginput("#ImLedQ_bb")     
	if (ph_Im_LedQ(1,1).lt.-1d5) ph_Im_LedQ(1,1)=0d0 
	if (ph_Im_LedQ(1,2).lt.-1d5) ph_Im_LedQ(1,2)=0d0 
	if (ph_Im_LedQ(1,3).lt.-1d5) ph_Im_LedQ(1,3)=0d0
	if (ph_Im_LedQ(2,1).lt.-1d5) ph_Im_LedQ(2,1)=0d0 
	if (ph_Im_LedQ(2,2).lt.-1d5) ph_Im_LedQ(2,2)=0d0 
	if (ph_Im_LedQ(2,3).lt.-1d5) ph_Im_LedQ(2,3)=0d0
	if (ph_Im_LedQ(3,1).lt.-1d5) ph_Im_LedQ(3,1)=0d0 
	if (ph_Im_LedQ(3,2).lt.-1d5) ph_Im_LedQ(3,2)=0d0 
	if (ph_Im_LedQ(3,3).lt.-1d5) ph_Im_LedQ(3,3)=0d0
c     UP type tensor        
	ph_Im_LeQu3(1,1) = powheginput("#ImLeQu3_uu")
	ph_Im_LeQu3(1,2) = powheginput("#ImLeQu3_uc")
	ph_Im_LeQu3(1,3) = powheginput("#ImLeQu3_ut")
	ph_Im_LeQu3(2,1) = powheginput("#ImLeQu3_cu")
	ph_Im_LeQu3(2,2) = powheginput("#ImLeQu3_cc")
	ph_Im_LeQu3(2,3) = powheginput("#ImLeQu3_ct")
	ph_Im_LeQu3(3,1) = powheginput("#ImLeQu3_tu")
	ph_Im_LeQu3(3,2) = powheginput("#ImLeQu3_tc")
	ph_Im_LeQu3(3,3) = powheginput("#ImLeQu3_tt")            
	if (ph_Im_LeQu3(1,1).lt.-1d5) ph_Im_LeQu3(1,1)=0d0 
	if (ph_Im_LeQu3(1,2).lt.-1d5) ph_Im_LeQu3(1,2)=0d0 
	if (ph_Im_LeQu3(1,3).lt.-1d5) ph_Im_LeQu3(1,3)=0d0             
	if (ph_Im_LeQu3(2,1).lt.-1d5) ph_Im_LeQu3(2,1)=0d0 
	if (ph_Im_LeQu3(2,2).lt.-1d5) ph_Im_LeQu3(2,2)=0d0 
	if (ph_Im_LeQu3(2,3).lt.-1d5) ph_Im_LeQu3(2,3)=0d0             
	if (ph_Im_LeQu3(3,1).lt.-1d5) ph_Im_LeQu3(3,1)=0d0 
	if (ph_Im_LeQu3(3,2).lt.-1d5) ph_Im_LeQu3(3,2)=0d0 
	if (ph_Im_LeQu3(3,3).lt.-1d5) ph_Im_LeQu3(3,3)=0d0             
      endif
      
c     if the flag mfv is set, use MFV
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
c     MFV couplings for semileptonic operators      
	ph_A_QLu = powheginput("#A_QLu")
	ph_A_Ceu = powheginput("#A_eu") 
	ph_A_CLu = powheginput("#A_Lu") 
	ph_A_QLd = powheginput("#A_QLd")
	ph_B_QLd = powheginput("#B_QLd")
     	ph_A_Ced = powheginput("#A_ed") 
     	ph_A_CLd = powheginput("#A_Ld")
     	ph_A_Qe  = powheginput("#A_Qe")  
     	ph_B_Qe  = powheginput("#B_Qe") 
	if (ph_A_QLu.lt.-1d5) ph_A_QLu =0d0
	if (ph_A_Ceu.lt.-1d5) ph_A_Ceu =0d0
 	if (ph_A_CLu.lt.-1d5) ph_A_CLu =0d0
	if (ph_A_QLd.lt.-1d5) ph_A_QLd =0d0
	if (ph_B_QLd.lt.-1d5) ph_B_QLd =0d0
	if (ph_A_Ced.lt.-1d5) ph_A_Ced =0d0	
	if (ph_A_CLd.lt.-1d5) ph_A_CLd =0d0	
	if (ph_A_Qe.lt.-1d5) ph_A_Qe =0d0	      
	if (ph_B_Qe.lt.-1d5) ph_B_Qe =0d0	      
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
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc            
c     SEMILEPTONIC Vector-like operators 
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     assume it is always diagonal in the lepton sector 
c     Matrices have to be hermitian.   

c     UP type left-left 
	ph_QLu(1,1) = ph_A_QLu
	ph_QLu(2,2) = ph_A_QLu
	ph_QLu(3,3) = ph_A_QLu
c     DOWN type left-left       
	ph_QLd(1,1) = ph_A_QLd + ph_CKM(3,1)**2 * ph_B_QLd 
	ph_QLd(1,2) = ph_CKM(3,1)* ph_CKM(3,2)  * ph_B_QLd
	ph_QLd(1,3) = ph_CKM(3,1)* ph_CKM(3,3)  * ph_B_QLd
	ph_QLd(2,2) = ph_A_QLd + ph_CKM(3,2)**2 * ph_B_QLd
	ph_QLd(2,3) = ph_CKM(3,2)* ph_CKM(3,3)  * ph_B_QLd
	ph_QLd(3,3) = ph_A_QLd + ph_CKM(3,3)**2 * ph_B_QLd
	ph_QLd(2,1) = ph_QLd(1,2)
	ph_QLd(3,1) = ph_QLd(1,3)
	ph_QLd(3,2) = ph_QLd(2,3)
c     UP type right-right       
	ph_Ceu(1,1) = ph_A_Ceu
	ph_Ceu(2,2) = ph_A_Ceu
	ph_Ceu(3,3) = ph_A_Ceu
c     DOWN type right-right 
	ph_Ced(1,1) = ph_A_Ced
	ph_Ced(2,2) = ph_A_Ced
	ph_Ced(3,3) = ph_A_Ced
c     UP type right-left 
	ph_CLu(1,1) = ph_A_CLu
	ph_CLu(2,2) = ph_A_CLu
	ph_CLu(3,3) = ph_A_CLu
c     DOWN type right left 
	ph_CLd(1,1) = ph_A_CLd
	ph_CLd(2,2) = ph_A_CLd
	ph_CLd(3,3) = ph_A_CLd
c     left-right
	ph_Qe(1,1) = ph_A_Qe + ph_CKM(3,1)**2  * ph_B_Qe
	ph_Qe(1,2) = ph_CKM(3,1)* ph_CKM(3,2)  * ph_B_Qe
	ph_Qe(1,3) = ph_CKM(3,1)* ph_CKM(3,3)  * ph_B_Qe
	ph_Qe(2,2) = ph_A_Qe + ph_CKM(3,2)**2  * ph_B_Qe
	ph_Qe(2,3) = ph_CKM(3,2)* ph_CKM(3,3)  * ph_B_Qe
	ph_Qe(3,3) = ph_A_Qe + ph_CKM(3,3)**2  * ph_B_Qe
	ph_Qe(2,1) = ph_Qe(1,2)
	ph_Qe(3,1) = ph_Qe(1,3)
	ph_Qe(3,2) = ph_Qe(2,3)

c     for the up type       
	do i=1,3
	  do j = 1,3 
	    do k = 1,3 
	      do l = 1,3
	      ph_Qeu(i,j) = ph_Qeu(i,j) 
     .			+ ph_CKM(i,k) * ph_Qe(k,l) * ph_CKM(j,l)
	      ph_QLd_nu(i,j) = ph_QLd_nu(i,j) 
     .			+ ph_CKM(k,i) * ph_QLu(k,l) * ph_CKM(l,j)
	      ph_QLu_nu(i,j) = ph_QLu_nu(i,j) 
     .			+ ph_CKM(i,k) * ph_QLd(k,l) * ph_CKM(j,l)
	      enddo
	    enddo	
	  enddo	  
	enddo	
	
      endif      
      
      
      
      
      if(.not.edm) then 
	do i=1,3
	  do j=1,3 
	    ph_QLd(i,j) 	= 0d0
	    ph_QLu(i,j) 	= 0d0
	    ph_QLd_nu(i,j) 	= 0d0
	    ph_QLu_nu(i,j) 	= 0d0
	    ph_Ced(i,j) 	= 0d0
	    ph_Ceu(i,j) 	= 0d0
	    ph_CLd(i,j) 	= 0d0
	    ph_CLu(i,j) 	= 0d0
	    ph_Qe(i,j)  	= 0d0
	    ph_Qeu(i,j)  	= 0d0
	    ph_Re_LeQu(i,j) 	= 0d0
	    ph_Re_LeQu3(i,j) 	= 0d0
	    ph_Re_LedQ(i,j) 	= 0d0
	    ph_Im_LeQu(i,j) 	= 0d0
	    ph_Im_LeQu3(i,j) 	= 0d0
	    ph_Im_LedQ(i,j) 	= 0d0
	  enddo
	enddo
      endif	          
      
      
      end
      