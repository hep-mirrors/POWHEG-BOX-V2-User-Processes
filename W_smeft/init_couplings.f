      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      real * 8 mass_low,mass_high
      real * 8 powheginput
      real * 8 aux1(3,3), aux2(3,3)
      real * 8 aux3(3,3), aux4(3,3)
      real * 8 aux5(3,3), aux6(3,3)
      external powheginput
      logical verbose
      parameter(verbose=.true.)
      integer i,j, k

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
      if (mass_low.lt.0d0) mass_low=1d0
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
      ph_Wmass2 = ph_Wmass**2

      ph_Wmass2low=mass_low**2
      ph_Wmass2high=mass_high**2

      ph_WmWw = ph_Wmass * ph_Wwidth
      ph_unit_e = sqrt(4*pi*ph_alphaem)

      if( ph_Wmass2low.ge.ph_Wmass2high ) then
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
      write(*,*) '(unit_e)^2 = ',ph_unit_e**2   
      write(*,*) '(g_w)^2 = ',ph_unit_e*ph_unit_e/ph_sthw2   
      if(ph_runwidth) write(*,*) 'using running W width'
      write(*,*) 'CKM matrix' 
      do i=1,3
         write(*,*) (ph_CKM(i,j),j=1,3)
      enddo
      write(*,*) '*************************************'
      write(*,*)
      write(*,*) '*************************************'
      write(*,*) sqrt(ph_Wmass2low),'< M_W <',sqrt(ph_Wmass2high)
      write(*,*) '*************************************'
      endif
      
      
      
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c      
c      DIM 6 operators
c
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      
c     include dimension 6 operators	 	      
      
      wdm = .false.
      mfv = .false.
      if(powheginput('#dim6').eq.1) wdm=.true.
      if(powheginput('#mfv').eq.1)  mfv=.true.
      
      
c     scale at which the dim. 6 coefficient are given
      LambdaNP = powheginput('#LambdaNP')
      if (LambdaNP.lt.0)  LambdaNP = 1000
      
c     for the weak edm, set all non-diagonal couplings to zero
c     and request only diagonal couplings. 
c     Otherwise, need to include flavor changing neutral currents
c     in p p --> Z process
      do i=1,3
	do j=1,3
      	  ph_ReGDw(i,j) = 0d0
	  ph_ImGDw(i,j) = 0d0
          ph_ReGUw(i,j) = 0d0
          ph_ImGUw(i,j) = 0d0
          ph_ReXi(i,j)   = 0d0
	  ph_QphiU(i,j)  = 0d0
	  ph_QphiD(i,j)  = 0d0
	  ph_QLu(i,j)    = 0d0
	  ph_QLd(i,j)    = 0d0
	  ph_Re_LeQu(i,j)= 0d0
	  ph_Im_LeQu(i,j)= 0d0
	  ph_Re_LedQ(i,j)= 0d0
	  ph_Im_LedQ(i,j)= 0d0
	  ph_Re_LeQu3(i,j) =0d0
	  ph_Im_LeQu3(i,j) =0d0
	  aux1(i,j)      = 0d0
	  aux2(i,j)      = 0d0
	  aux3(i,j)      = 0d0
	  aux4(i,j)      = 0d0
	  aux5(i,j)      = 0d0
	  aux6(i,j)      = 0d0
	enddo
      enddo          
      
      
      if(.not.mfv) then
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     DIPOLE
c
c  Define the neutral current couplings in the flavor basis	
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
	
c      leptonic dipole coefficients       
	ph_ReGEw = powheginput("#ReGEw")
	if (ph_ReGEw.lt.-1d5) ph_ReGEw =0d0       
	ph_ImGEw = powheginput("#ImGEw")
	if (ph_ImGEw.lt.-1d5) ph_ImGEw =0d0            
	
	
	
c     the CKM induces some additional non-diagonal
c     W couplings
c     ReGU
	do i=1,3
	  do j = 1,3 
	    do k = 1,3 
	    aux1(i,j) = aux1(i,j) + ph_ReGUw(k,i) * ph_CKM(k,j)  
	    aux2(i,j) = aux2(i,j) - ph_ImGUw(k,i) * ph_CKM(k,j)
	    aux3(i,j) = aux3(i,j) + ph_CKM(i,k) * ph_ReGDw(k,j)
	    aux4(i,j) = aux4(i,j) + ph_CKM(i,k) * ph_ImGDw(k,j)
	    enddo	
	  enddo	  
	enddo	  
	
	ph_ReGUw = aux1
	ph_ImGUw = aux2
	ph_ReGDw = aux3
	ph_ImGDw = aux4
	    
	do i=1,3
	  do j=1,3
	    aux1(i,j)      = 0d0
	    aux2(i,j)      = 0d0
	    aux3(i,j)      = 0d0
	    aux4(i,j)      = 0d0
	  enddo
	enddo                	      
	
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

	
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     Vertex corrections 						c	
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc            
c     Matrices have to be hermitian.   
c     left handed quarks. Up type
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
c     left handed quark. Down type 
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
	      
c     CKM effects 
	do i=1,3
	  do j = 1,3 
	    do k = 1,3 
	    aux1(i,j) = aux1(i,j) + 1/2d0*
     .   ( ph_CKM(i,k) * ph_QphiD(k,j)  )
     .    -1/2d0 * 
     .	 ( ph_QphiU(i,k) * ph_CKM(k,j) )
	    enddo	
	  enddo	  
	enddo	
	
	ph_Qphi3 = aux1
	do i=1,3
	  do j=1,3
	    aux1(i,j)      = 0d0
	  enddo
	enddo                	      
	
	
c     for W production, just modify the CKM 
	if(wdm) then
	  do i=1,3
	    do j=1,3 
	      ph_CKM(i,j) = ph_CKM(i,j) - ph_Qphi3(i,j)
	    enddo
	  enddo
	
	endif
  
	
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
	
	
c     if FCNC are forbidden, the CKM induces some non-diagonal
c     W couplings      
	do i=1,3
	  do j = 1,3 
	    do k = 1,3 
	    aux1(i,j) = aux1(i,j) + 1/2d0*
     .   ( -ph_QLu(i,k) * ph_CKM(k,j)   +  ph_CKM(i,k) * ph_QLd(k,j) )
	    enddo	
	  enddo	  
	enddo	  
      
	ph_QL3 =  aux1
	do i=1,3
	  do j=1,3
	    aux1(i,j)      = 0d0
	  enddo
	enddo                	      
	
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc            
c     SEMILEPTONIC Scalar and Tensor operators
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c    Neutral current operators in the flavor basis
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
	
c     CKM effects       
	do i=1,3
	  do j = 1,3 
	    do k = 1,3 
	    aux1(i,j) = aux1(i,j) + ph_Re_LeQu(k,i) * ph_CKM(k,j)  
	    aux2(i,j) = aux2(i,j) - ph_Im_LeQu(k,i) * ph_CKM(k,j)
	    aux5(i,j) = aux5(i,j) + ph_Re_LeQu3(i,k) * ph_CKM(k,j)  
	    aux6(i,j) = aux6(i,j) - ph_Im_LeQu3(i,k) * ph_CKM(k,j)
	    aux3(i,j) = aux3(i,j) + ph_CKM(i,k) * ph_Re_LedQ(j,k)
	    aux4(i,j) = aux4(i,j) - ph_CKM(i,k) * ph_Im_LedQ(j,k)
	    enddo	
	  enddo	  
	enddo	  
	
	ph_Re_LeQu = aux1
	ph_Im_LeQu = aux2
	ph_Re_LeQu3 = aux5
	ph_Im_LeQu3 = aux6
	ph_Re_LedQ = aux3
	ph_Im_LedQ = aux4
      
      
      endif

      
c     MFV structure for the coupligs      
      if(mfv) then
c     MVF couplings for vertex corrections
        ph_A_QphiU =  powheginput("#A_QphiU")
        ph_A_QphiD =  powheginput("#A_QphiD")
        ph_B_QphiD =  powheginput("#B_QphiD")
	if (ph_A_QphiU.lt.-1d5) ph_A_QphiU =0d0
 	if (ph_A_QphiD.lt.-1d5) ph_A_QphiD =0d0
	if (ph_B_QphiD.lt.-1d5) ph_B_QphiD =0d0
c     MFV couplings for semileptonic operators      
	ph_A_QLu = powheginput("#A_QLu")
	ph_A_QLd = powheginput("#A_QLd")
	ph_B_QLd = powheginput("#B_QLd")
	if (ph_A_QLu.lt.-1d5) ph_A_QLu =0d0
	if (ph_A_QLd.lt.-1d5) ph_A_QLd =0d0
	if (ph_B_QLd.lt.-1d5) ph_B_QLd =0d0

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c     Vertex corrections 						c	
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc            
c     Matrices have to be hermitian.   
c     left handed quarks. Up type
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
c     CKM effects 
	do i=1,3
	  do j = 1,3 
	    do k = 1,3 
	    aux1(i,j) = aux1(i,j) + 1/2d0*
     .   ( ph_CKM(i,k) * ph_QphiD(k,j)  )
     .    -1/2d0 * 
     .	 ( ph_QphiU(i,k) * ph_CKM(k,j) )
	    enddo	
	  enddo	  
	enddo	
	
	ph_Qphi3 = aux1
	do i=1,3
	  do j=1,3
	    aux1(i,j)      = 0d0
	  enddo
	enddo                	      
	
	
c     for W production, just modify the CKM 
	if(wdm) then
	  do i=1,3
	    do j=1,3 
	      ph_CKM(i,j) = ph_CKM(i,j) - ph_Qphi3(i,j)
	    enddo
	  enddo
	
	endif
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
c     if FCNC are forbidden, the CKM induces some non-diagonal
c     W couplings      
	do i=1,3
	  do j = 1,3 
	    do k = 1,3 
	    aux1(i,j) = aux1(i,j) + 1/2d0*
     .   ( -ph_QLu(i,k) * ph_CKM(k,j)   +  ph_CKM(i,k) * ph_QLd(k,j) )
	    enddo	
	  enddo	  
	enddo	  
      
	ph_QL3 =  aux1
	do i=1,3
	  do j=1,3
	    aux1(i,j)      = 0d0
	  enddo
	enddo                	      	
	
	
	
      endif
      
      
      if(.not.wdm) then 
	do i=1,3
	  do j=1,3 
	    ph_QL3(i,j) = 0d0
	    ph_Re_LeQu(i,j) = 0d0
	    ph_Re_LeQu3(i,j) = 0d0
	    ph_Re_LedQ(i,j) = 0d0
	    ph_Im_LeQu(i,j) = 0d0
	    ph_Im_LeQu3(i,j) = 0d0
	    ph_Im_LedQ(i,j) = 0d0
	    enddo
	enddo
      endif	    
      
      
      end
      
      

