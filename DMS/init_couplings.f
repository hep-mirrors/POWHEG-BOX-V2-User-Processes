      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'pwhg_physpar.h'
      real * 8 dmass,umass,smass,cmass,bmass
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
c     just reference value for the integration interval,
c     but not really used.
      ph_Hmass  = 120d0
      ph_Hwidth = 5.75308848d-03
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
      absdecaymode=abs(powheginput('decaymode'))
      if(absdecaymode.eq.1) then
         phdm_mode='SC'
      elseif(absdecaymode.eq.2) then
         phdm_mode='PS'
      else
         write(*,*) 'Wrong decaymode: ',powheginput('decaymode')
         call exit(-1)
      endif
      if(powheginput('#DMmass').gt.0) then
         physpar_ml(3)=powheginput('#DMmass')
      else
         physpar_ml(3)=200d0
      endif
      if(powheginput('decaymode').gt.0) then
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
         phdm_phimass=powheginput('DMphimass')
         phdm_phiwidth=powheginput('DMphiwidth')
c     needed for the coupling q-q-S
         phdm_LambdaUV=powheginput('DMLambda')
         if(phdm_LambdaUV.lt.0d0) then
            write(*,*) 'Error: phdm_LambdaUV<0 !'
            call exit(-1)
         endif

         phdm_gSM=powheginput('#DMgSM')
         if(phdm_gSM.eq.-1000000) phdm_gSM=1
         phdm_gDM=powheginput('#DMgDM')
         if(phdm_gDM.eq.-1000000) phdm_gDM=1

         phdm_rw=powheginput('#runningwidth').gt.0

      endif

c     !:
c     values used for runs
      dmass=0.003d0
      umass=0.003d0
      smass=0.1d0
      cmass=1.75d0
      bmass=4.75d0

c$$$c     to check with mcfm
c$$$      dmass=1d-6
c$$$      umass=1d-6
c$$$      smass=1d-6
c$$$      cmass=1.5d0
c$$$      bmass=4.75d0

      phdm_qqphi(1)=dmass/phdm_LambdaUV *phdm_gSM
      phdm_qqphi(2)=umass/phdm_LambdaUV *phdm_gSM
      phdm_qqphi(3)=smass/phdm_LambdaUV *phdm_gSM
      phdm_qqphi(4)=cmass/phdm_LambdaUV *phdm_gSM
      phdm_qqphi(5)=bmass/phdm_LambdaUV *phdm_gSM

cccccccccccccccccccccccccccccccccccccccccccccc
c     !: useful for checking...
c     need to change some of these couplings
c     when testing against madgraph and/or mcfm.
c     SC, mad: only couplings to b
c     PS, mad: only couplings to c and b
c$$$      phdm_qqphi(1)=1 *1d-15
c$$$      phdm_qqphi(2)=2 *1d-15
c$$$      phdm_qqphi(3)=3 *1d-15
c$$$      phdm_qqphi(4)=4 *1d-15          
c$$$      phdm_qqphi(5)=1
ccccccccccccccccccccccccccccccccccccccccccccccc

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
         ph_Hmass2low=mass_low**2
      else
c         ph_Hmass2low=(max(0d0,ph_Hmass-masswindow_low*ph_Hwidth))**2
         ph_Hmass2low=0
      endif
      if (sqrt(ph_Hmass2low).lt.(2*physpar_ml(3))) then
         ph_Hmass2low=(2*physpar_ml(3))**2
      endif
     
      if(mass_high.ge.0d0) then
         ph_Hmass2high=mass_high**2
      else
c         ph_Hmass2high=ph_Hmass+masswindow_high*ph_Hwidth
         ph_Hmass2high=kn_sbeams
      endif
c     !: m2 obtained by solving
c     shat = m2 + 2 ph*pj. 
c     (going in frame where yj=yh=0, and then shat -> shad, since we are computing
c     the maximum value for m2)
c     *0.99 to stay on the safe side
      ph_Hmass2high=min((kn_sbeams-2*kn_ktmin*sqrt(kn_sbeams))*0.99,
     $     ph_Hmass2high)

      if( ph_Hmass2low.ge.ph_Hmass2high ) then
         write(*,*) "Error in init_couplings: mass_low >= mass_high"
         call exit(-1)
      endif

      if(phdm_efftheory.eq.'F') then
c     Needed for the mass integration interval, when BW integration
         ph_Hmass  = phdm_phimass
         ph_Hwidth = phdm_phiwidth
      else
c     Needed in case one wants to do BW integration when using EFT approach
         ph_Hmass  = sqrt(ph_Hmass2high) - sqrt(ph_Hmass2low) 
         ph_Hmass  = ph_Hmass /2d0
         ph_Hwidth = ph_Hmass /10d0
      endif

      ph_Hmass2 = ph_Hmass**2
      ph_HmHw = ph_Hmass * ph_Hwidth
      ph_unit_e = sqrt(4*pi*ph_alphaem)


c$$$      write(*,*) '*************************************'
c$$$      write(*,*) 'H mass = ',ph_Hmass
c$$$      write(*,*) 'H width = ',ph_Hwidth
c$$$      write(*,*) '1/alphaem = ',1d0/ph_alphaem
c$$$      write(*,*) 'sthw2 = ',ph_sthw2
c$$$      write(*,*) '*************************************'
c$$$      write(*,*)
c$$$      write(*,*) '*************************************'
c$$$      write(*,*) sqrt(ph_Hmass2low),'< M_H <',sqrt(ph_Hmass2high)
c$$$      write(*,*) '*************************************'

      write(*,*) '****************************************************'
      write(*,*) 'When using this code, please follow the citation'
      write(*,*) 'guidelines at http://powhegbox.mib.infn.it/'
      write(*,*) 'In particular, for DM+monojet processes,'
      write(*,*) '    http://arxiv.org/abs/arXiv:1310.4491'
      write(*,*) 'should always be included as a reference'
      write(*,*) '****************************************************'

      if(absdecaymode.eq.1.or.absdecaymode.eq.2) then
         write(*,*) '*************************************'
         write(*,*) 'mediator type: ',phdm_mode
         write(*,*) 'DM mass = ',physpar_ml(3)
c     write(*,*) 'qqphi couplings (mq/LambdaUV)= ',phdm_qqphi(1:5)
         if(phdm_efftheory.eq.'T') then
            write(*,*) 'Effective theory'
            write(*,*) 'DM LambdaUV = ',phdm_LambdaUV
            write(*,*) 'coupling q_q_mediator (mq/LambdaUV)= ',
     $           phdm_qqphi(1:5)
         else
            write(*,*) 'Full theory'
            write(*,*) 'DM mediator mass =  ',phdm_phimass
            write(*,*) 'DM mediator width = ',phdm_phiwidth

            write(*,*) 'coupling q_q_mediator (gSM*mq/LambdaUV)= ',
     $           phdm_qqphi(1:5)
            write(*,*) 'coupling X_Xbar_mediator = ',phdm_gDM
            write(*,*) 'running width = ',phdm_rw
         endif
         write(*,*) '*************************************'
         write(*,*)
         write(*,*) '*************************************'
         write(*,*) sqrt(ph_Hmass2low),'< M_XXbar <',sqrt(ph_Hmass2high)
         write(*,*) '*************************************'
      endif

cccccccccccccccccccccccccccccccccccccccc
c     !: to test with madgraph
c$$$      if(phdm_efftheory.eq.'F') then
c$$$         call set_madgraph_parameters
c$$$      endif
ccccccccccccccccccccccccccccccccccccccc

      end



