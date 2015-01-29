      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_em.h'
      include 'mathx.h'
      real * 8 masswindow_low,masswindow_high
      real * 8 powheginput
      external powheginput
      logical verbose
      parameter(verbose=.true.)
      integer i,j

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   INDEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c      ph_Wmass = powheginput("#Wmass")
c      if (ph_Wmass.le.0d0) ph_Wmass  = 80.376d0     
c      ph_Wwidth = powheginput("#Wwidth")
c      if (ph_Wwidth.le.0d0) ph_Wwidth =  2.124d0
c      ph_alphaem = powheginput("#alphaem")
c      if (ph_alphaem.le.0d0) ph_alphaem = 1d0/128.89d0
c      ph_alphaem0 = powheginput("#alphaem0")
c      if (ph_alphaem0.le.0d0) ph_alphaem0 = 1d0/137.03599911d0
c      ph_Zmass = powheginput("#Zmass")
c      if (ph_Zmass.le.0d0) ph_Zmass  = 91.1876d0     
c      ph_Zwidth = powheginput("#Zwidth")
c      if (ph_Zwidth.le.0d0) ph_Zwidth =  2.4952d0
c      ph_sthw2 = powheginput("#sthw2")
c      if (ph_sthw2.le.0d0) ph_sthw2 = abs(1d0-(ph_Wmass/ph_Zmass)**2)


ccc G_mu scheme
      ph_Wmass = powheginput("#Wmass")
      if (ph_Wmass.le.0d0) ph_Wmass  = 80.385d0     
      ph_Wwidth = powheginput("#Wwidth")
      if (ph_Wwidth.le.0d0) ph_Wwidth =  2.085d0
      ph_alphaem0 = powheginput("#alphaem0")
      if (ph_alphaem0.le.0d0) ph_alphaem0 = 1d0/137.03599911d0
      ph_Zmass = powheginput("#Zmass")
      if (ph_Zmass.le.0d0) ph_Zmass  = 91.1876d0     
      ph_Zwidth = powheginput("#Zwidth")
      if (ph_Zwidth.le.0d0) ph_Zwidth =  2.4952d0
      G_mu = powheginput("#G_mu")
      if (G_mu.le.0d0) G_mu = 1.1663787d-5
      ph_sthw2 = powheginput("#sthw2")
      if (ph_sthw2.le.0d0) ph_sthw2 = abs(1d0-(ph_Wmass/ph_Zmass)**2)
      ph_alphaem = powheginput("#alphaem")
      if (ph_alphaem.le.0d0) ph_alphaem = sqrt(2d0)/pi
     $                       *G_mu*ph_Wmass**2*ph_sthw2

c     CAVEAT: 
      ph_CKM(1,1) = powheginput("#CKM_Vud")
      if (ph_CKM(1,1).lt.0d0) ph_CKM(1,1)=0.975d0 
      ph_CKM(1,2) = powheginput("#CKM_Vus")
      if (ph_CKM(1,2).lt.0d0) ph_CKM(1,2)=0.222d0 
      ph_CKM(1,3) = powheginput("#CKM_Vub")
      if (ph_CKM(1,3).lt.0d0) ph_CKM(1,3)=1d-10
      ph_CKM(2,1) = powheginput("#CKM_Vcd")
      if (ph_CKM(2,1).lt.0d0) ph_CKM(2,1)=0.222d0 
      ph_CKM(2,2) = powheginput("#CKM_Vcs")
      if (ph_CKM(2,2).lt.0d0)  ph_CKM(2,2)=0.975d0 
      ph_CKM(2,3) = powheginput("#CKM_Vcb")
      if (ph_CKM(2,3).lt.0d0) ph_CKM(2,3)=1d-10
      ph_CKM(3,1) = powheginput("#CKM_Vtd")
      if (ph_CKM(3,1).lt.0d0) ph_CKM(3,1)=1d-10
      ph_CKM(3,2) = powheginput("#CKM_Vts")
      if (ph_CKM(3,2).lt.0d0) ph_CKM(3,2)=1d-10
      ph_CKM(3,3) = powheginput("#CKM_Vtb")
      if (ph_CKM(3,3).lt.0d0) ph_CKM(3,3)=1d0

c     number of light flavors
      st_nlight = 5

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   DEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_sthw = sqrt(ph_sthw2)
      ph_Zmass2 = ph_Zmass**2
      ph_Wmass2 = ph_Wmass**2
      ph_WmWw = ph_Wmass * ph_Wwidth

      em_alpha = ph_alphaem0

      ph_unit_e  = sqrt(4*pi*ph_alphaem)
      ph_unit_e0 = sqrt(4*pi*ph_alphaem0)

      qu =  0.6666666666666666666666666666666666666667d0
      qd = -0.3333333333333333333333333333333333333333d0

      epsilon = 1d-40
      mudim2  = 1d0

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
      write(*,*) 'CKM matrix' 
      do i=1,3
         write(*,*) (ph_CKM(i,j),j=1,3)
      enddo
      endif


      end



