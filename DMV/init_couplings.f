      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'pwhg_physpar.h'
      real * 8 masswindow_low,masswindow_high
      real * 8 mass_low,mass_high
      real * 8 powheginput
      external powheginput
      integer absdecaymode

c     !:
c      flg_withdamp=.true.

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   INDEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_Zmass  = 91.188d0     
      ph_Zwidth =  2.486d0
      ph_alphaem = 1d0/128.930d0
      ph_sthw2 = 0.2312d0

c     number of light flavors
      st_nlight = 5
c Masses of light leptons for Z decays:
      physpar_ml(1)=0.511d-3
      physpar_ml(2)=0.1057d0
      physpar_ml(3)=1.777d0


cccccccccccccccccccccccccccccccccccc
c     !:
      absdecaymode=abs(powheginput('vdecaymode'))
      if(absdecaymode.eq.1) then
         phdm_mode='VE'
      elseif(absdecaymode.eq.2) then
         phdm_mode='AX'
      elseif(absdecaymode.eq.3) then
         phdm_mode='VA'
      elseif(absdecaymode.eq.4) then
         phdm_mode='AV'
      elseif(absdecaymode.eq.5) then
         phdm_mode='bb'
         physpar_ml(3)=powheginput('bmass')
c         if(physpar_ml(3).lt.0) physpar_ml(3)=5d0
      elseif(absdecaymode.eq.15) then
         phdm_mode='ta'
         physpar_ml(3)=powheginput('taumass')
c         if(physpar_ml(3).lt.0) physpar_ml(3)=1.777d0
      else
         write(*,*) 'Wrong vdecaymode: ',powheginput('vdecaymode')
         call exit(-1)
      endif
      if(absdecaymode.le.4) then
         if(powheginput('#DMmass').gt.0) then
            physpar_ml(3)=powheginput('#DMmass')
         else
            physpar_ml(3)=200d0
         endif
      endif
      if(powheginput('vdecaymode').gt.0) then
         phdm_efftheory='T'
         if(powheginput('#DMLambda').gt.0) then
            phdm_LambdaUV=powheginput('#DMLambda')
         else
            phdm_LambdaUV=500d0
         endif
         phdm_gSM=1
         phdm_gDM=1        
      else 
         phdm_efftheory='F'
         phdm_Vmass=powheginput('DMVmass')
         phdm_Vwidth=powheginput('DMVwidth')

         phdm_gSM=powheginput('#DMgSM')
         if(phdm_gSM.eq.-1000000) phdm_gSM=1
         phdm_gDM=powheginput('#DMgDM')
         if(phdm_gDM.eq.-1000000) phdm_gDM=1

         phdm_rw=powheginput('#runningwidth').gt.0

      endif

c     mass window
      mass_low = powheginput("#mass_low")
      if (mass_low.le.0d0) mass_low=-1d0
      mass_high = powheginput("#mass_high")
      if (mass_high.le.0d0) mass_high=-1d0   
      
      if(powheginput("#masswindow_low").gt.0) then
         write(*,*) 'masswindow_low NOT implemented'
         call exit(-1)
      endif
      if(powheginput("#masswindow_high").gt.0) then
         write(*,*) 'masswindow_high NOT implemented'
         call exit(-1)
      endif
c$$$      masswindow_low = powheginput("#masswindow_low")
c$$$      if (masswindow_low.le.0d0) masswindow_low=30d0
c$$$      masswindow_high = powheginput("#masswindow_high")
c$$$      if (masswindow_high.le.0d0) masswindow_high=30d0


cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   DEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_sthw = sqrt(ph_sthw2)
      ph_cthw = sqrt(1-ph_sthw2)

      if(mass_low.ge.0d0) then
         ph_Zmass2low=mass_low**2
      else
c         ph_Zmass2low=(max(0d0,ph_Zmass-masswindow_low*ph_Zwidth))**2
         ph_Zmass2low=0
      endif
      if (sqrt(ph_Zmass2low).lt.(2*physpar_ml(3))) then
         ph_Zmass2low=(2*physpar_ml(3))**2
      endif
     
      if(mass_high.ge.0d0) then
         ph_Zmass2high=mass_high**2
      else
c         ph_Zmass2high=ph_Zmass+masswindow_high*ph_Zwidth
         ph_Zmass2high=kn_sbeams
      endif
c     !: m2 obtained by solving
c     shat = m2 + 2 ph*pj. 
c     (going in frame where yj=yh=0, and then shat -> shad, since we are computing
c     the maximum value for m2)
c     *0.99 to stay on the safe side
      ph_Zmass2high=min((kn_sbeams-2*kn_ktmin*sqrt(kn_sbeams))*0.99,
     $     ph_Zmass2high)

      if( ph_Zmass2low.ge.ph_Zmass2high ) then
         write(*,*) "Error in init_couplings: mass_low >= mass_high ",
     $        sqrt(ph_Zmass2low),sqrt(ph_Zmass2high)
         call exit(-1)
      endif

      if(phdm_efftheory.eq.'F') then
c     Needed for the mass integration interval, when BW integration
         ph_Zmass  = phdm_Vmass
         ph_Zwidth = phdm_Vwidth
      else
c     Needed in case one wants to do BW integration when using EFT approach
         ph_Zmass  = sqrt(ph_Zmass2high) - sqrt(ph_Zmass2low) 
         ph_Zmass  = ph_Zmass /2d0
         ph_Zwidth = ph_Zmass /10d0
      endif

      ph_Zmass2 = ph_Zmass**2
      ph_ZmZw = ph_Zmass * ph_Zwidth
      ph_unit_e = sqrt(4*pi*ph_alphaem)


      write(*,*) '****************************************************'
      write(*,*) 'When using this code, please follow the citation'
      write(*,*) 'guidelines at http://powhegbox.mib.infn.it/'
      write(*,*) 'In particular, for DM+monojet processes,'
      write(*,*) '    http://arxiv.org/abs/arXiv:1310.4491'
      write(*,*) 'should always be included as a reference'
      write(*,*) '****************************************************'


      if(absdecaymode.eq.1.or.absdecaymode.eq.2.or.
     $     absdecaymode.eq.3.or.absdecaymode.eq.4) then
         write(*,*) '*************************************'
         write(*,*) 'mediator type: ',phdm_mode
         write(*,*) 'DM mass = ',physpar_ml(3)
         write(*,*) 'coupling structure: ',phdm_mode
         if(phdm_efftheory.eq.'T') then
            write(*,*) 'Effective theory'
            write(*,*) 'DM LambdaUV = ',phdm_LambdaUV
         else
            write(*,*) 'Full theory'
            write(*,*) 'DM mediator mass =  ',phdm_Vmass
            write(*,*) 'DM mediator width = ',phdm_Vwidth
            write(*,*) 'coupling q_q_mediator = ',phdm_gSM
            write(*,*) 'coupling X_Xbar_mediator = ',phdm_gDM
            write(*,*) 'running width = ',phdm_rw
         endif
         write(*,*) '*************************************'
         write(*,*)
         write(*,*) '*************************************'
         write(*,*) sqrt(ph_Zmass2low),'< M_XXbar <',sqrt(ph_Zmass2high)
         write(*,*) '*************************************'
      elseif(absdecaymode.eq.5.or.absdecaymode.eq.15) then
         write(*,*) '*************************************'
         write(*,*) 'Z mass = ',ph_Zmass
         write(*,*) 'Z width = ',ph_Zwidth
         write(*,*) 'W mass = ',ph_Wmass
         write(*,*) 'W width = ',ph_Wwidth
         write(*,*) '1/alphaem = ',1d0/ph_alphaem
         write(*,*) 'sthw2 = ',ph_sthw2
         if(absdecaymode.eq.5) then
            write(*,*) 'bmass (in Z->bb) ',physpar_ml(3)
         else
            write(*,*) 'taumass (in Z->tautau) ',physpar_ml(3)
         endif
         write(*,*) '*************************************'
         write(*,*)
         write(*,*) '*************************************'
         write(*,*) sqrt(ph_Zmass2low),'< M_Z <',sqrt(ph_Zmass2high)
         write(*,*) '*************************************'
      endif

cccccccccccccccccccccccccccccccccc
c     !: to test with madgraph
c$$$      if(phdm_mode.eq.'ta') then
c$$$         call set_madgraph_parameters
c$$$      endif
cccccccccccccccccccccccccccccccccc

      end



