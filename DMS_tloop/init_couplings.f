      subroutine init_couplings
      implicit none
c      include 'coupl.inc'
      real *8 hmass,hwidth
      include 'pwhg_flg.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_physpar.h'
      double precision  Two, Four, Rt2
      parameter( Two = 2.0d0, Four = 4.0d0 )
      parameter( Rt2   = 1.414213562d0 )
c Avoid multiple calls to this subroutine. The parameter file is opened
c but never closed ...
      logical called
      data called/.false./
      save called

      real * 8 powheginput
      external powheginput
      real * 8 masswindow_low,masswindow_high
      real * 8 mass_low,mass_high
      integer absdecaymode


      if(called) then
         return
      else
         called=.true.
      endif

      flg_processid='HJ'

cccccccccccccccccccccccccccccccccccc
c     !:

c     we cannot do powheg for this process...
c     all events on LH file will be XXbar + 1 parton
c     scalup set to pt (in finalize_lh)
      flg_bornonly=.true.
      flg_LOevents=.true.


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
c     Needed in case one wants to do BW integration when using EFT approach
         phdm_phimass = phdm_LambdaUV
         phdm_phiwidth= phdm_LambdaUV/10d0
      else 
         phdm_efftheory='F'
         phdm_phimass=powheginput('DMphimass')
         phdm_phiwidth=powheginput('DMphiwidth')
cc     needed for the effective coupling...
c         phdm_LambdaUV=powheginput('DMLambda')
c         if(phdm_LambdaUV.lt.0d0) then
c            write(*,*) 'Error: phdm_LambdaUV<0 !'
c            call exit(-1)
c         endif
         
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

ccccccccccccccccccccccccccccccc

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
c         ph_Hmass2high=(ph_Hmass+masswindow_high*ph_Hwidth)**2
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
         write(*,*) "Error in init_couplings: mass_low >= mass_high ",
     $        sqrt(ph_Hmass2low),sqrt(ph_Hmass2high)
         call exit(-1)
      endif

c      hmass =  500d0
c      hwidth =  10d0
      hmass =   phdm_phimass
      hwidth =  phdm_phiwidth
      ph_Hmass  = hmass
      ph_Hmass2 = ph_Hmass**2
      ph_Hwidth = hwidth
      ph_HmHw = ph_Hmass * ph_Hwidth

      ph_alphaem=1/1.32506980E+02
      ph_alphaem=1/1.323384323E+02
      ph_unit_e = sqrt(4*pi*ph_alphaem)
      ph_zmass=91.188d0
      ph_zmass=91.1876d0
      ph_gfermi=0.1166390d-4
c      ph_gfermi=sqrt(2d0)*g_weak**2/(8*wmass**2)
      ph_wmass=sqrt(ph_zmass**2/Two+
     $     sqrt(ph_zmass**4/Four-Pi/Rt2*ph_alphaem/ph_gfermi*ph_zmass**2))
      ph_sthw2=1-(ph_wmass/ph_zmass)**2
      ph_sthw=sqrt(ph_sthw2)

      ph_zwidth=2.441d0
      ph_wwidth=2.0476d0

      ph_zwidth=2.4952000
      ph_wwidth=2.1054000

      write(*,*) '****************************************************'
      write(*,*) 'When using this code, please follow the citation'
      write(*,*) 'guidelines at http://powhegbox.mib.infn.it/'
      write(*,*) 'In particular, for DM+monojet processes,'
      write(*,*) '    http://arxiv.org/abs/arXiv:1310.4491'
      write(*,*) 'should always be included as a reference'
      write(*,*) ''
      write(*,*) 'When DM production via (pseudo)scalar exchange with'
      write(*,*) 'full top-mass dependence is simulated as in this '
      write(*,*) 'run, a citation to'
      write(*,*) '    Haisch,Re: Simplified dark matter top-quark '
      write(*,*) '    interactions at the LHC'
      write(*,*) '    http://arxiv.org/abs/1503.00691'
      write(*,*) 'should also be included'
      write(*,*) '****************************************************'

      if(absdecaymode.eq.1.or.absdecaymode.eq.2) then
         write(*,*) '*************************************'
         write(*,*) sqrt(ph_Hmass2low),'< M_XXbar <',sqrt(ph_Hmass2high)
c         write(*,*) 'hmass,hwidth= ',hmass,hwidth
         write(*,*) '*************************************'
         write(*,*) '*************************************'
         write(*,*) 'mediator type: ',phdm_mode
         write(*,*) 'DM mass = ',physpar_ml(3)
         if(phdm_efftheory.eq.'T') then
            write(*,*) 'Effective theory'
            write(*,*) 'DM LambdaUV = ',phdm_LambdaUV
         else
            write(*,*) 'Full theory'
            write(*,*) 'DM mediator mass =  ',phdm_phimass
            write(*,*) 'DM mediator width = ',phdm_phiwidth
c            write(*,*) 'DM lambda scale for GGS coupling = ',
c     $           phdm_LambdaUV
            write(*,*) 'coupling t_tbar_mediator = ',
     $           phdm_gSM
            write(*,*) '  the full coupling t_tbar_mediator is'//
     $           ' Yukawa like:'
            write(*,*) '  its value is ',phdm_gSM,'  times mtop/EWvev'
            write(*,*) 'coupling X_Xbar_mediator = ',phdm_gDM
            write(*,*) '  the full coupling X_Xbar_mediator is'//
     $           ' NOT Yukawa like: its value is as given above'
            write(*,*) 'running width = ',phdm_rw
         endif
         write(*,*) '*************************************'
      endif
ccccccccccccccccccccccccccccccccccccccc



c$$$*********************************************************
c$$$***********         MADGRAPH                 ************
c$$$*********************************************************
c$$$c Parameters are read from the MadGraph param_card.dat,
c$$$c except the strong coupling constant, which is defined
c$$$c somewhere else
c$$$      call setpara("param_card.dat",.true.)
c$$$c Are these needed?
c$$$c$$$      physpar_ml(1)=0.511d-3
c$$$c$$$      physpar_ml(2)=0.1057d0
c$$$c$$$      physpar_ml(3)=1.777d0
c$$$c$$$      physpar_mq(1)=0.33d0     ! up
c$$$c$$$      physpar_mq(2)=0.33d0     ! down
c$$$c$$$      physpar_mq(3)=0.50d0     ! strange
c$$$c$$$      physpar_mq(4)=1.50d0     ! charm
c$$$c$$$      physpar_mq(5)=4.80d0     ! bottom
c$$$      call madtophys
*********************************************************
***********           MCFM                   ************
*********************************************************
      call i2MCFM_2_POWHEG_IP
!--- Initialise coupling 
      call mcfm_coupling

      end


c$$$       subroutine lh_readin(param_name)
c$$$c overrides the lh_readin subroutine in MODEL/couplings.f;
c$$$c to make it work, rename or delete
c$$$c the lh_readin routine in MODEL/couplings.f
c$$$      implicit none
c$$$      character*(*) param_name
c$$$      include 'coupl.inc'
c$$$      double precision  Two, Four, Rt2, Pi
c$$$      parameter( Two = 2.0d0, Four = 4.0d0 )
c$$$      parameter( Rt2   = 1.414213562d0 )
c$$$      parameter( Pi = 3.14159265358979323846d0 )
c$$$      double precision  alpha, gfermi, alfas
c$$$      double precision  mtMS,mbMS,mcMS,mtaMS!MSbar masses
c$$$      double precision  Vud             !CKM matrix elements
c$$$      common/values/    alpha,gfermi,alfas,   
c$$$     &                  mtMS,mbMS,mcMS,mtaMS,
c$$$     &                  Vud
c$$$      real * 8 powheginput
c$$$c the only parameters relevant for this process are set
c$$$c via powheginput. All others are needed for the
c$$$c madgraph routines not to blow.
c$$$      alpha=1/128.9d0
c$$$      alpha=1/1.32506980E+02
c$$$      gfermi = 0.1166390d-4
c$$$      alfas = 0.119d0
c$$$      zmass = 91.188d0
c$$$c     !ER: needed for setting nflavour in as running (init_processes.f)
c$$$      tmass = 174.3d0
c$$$      tmass=powheginput('tmass')
c$$$      lmass = 0d0
c$$$      mcMS = 0d0
c$$$      mbMS = 0d0
c$$$      mtMS = 174d0
c$$$      mtaMS = 1.777d0
c$$$      vud = 1d0
c$$$      cmass = 0d0
c$$$      bmass = 0d0
c$$$      lmass=0d0
c$$$c      hmass = powheginput('hmass')
c$$$c      hmass = 120d0
c$$$      wmass=sqrt(zmass**2/Two+
c$$$     $     sqrt(zmass**4/Four-Pi/Rt2*alpha/gfermi*zmass**2))
c$$$      twidth=1.5083d0
c$$$c      hwidth = powheginput('hwidth')
c$$$c      hwidth =  5.75308848d-03
c$$$      zwidth=2.441d0
c$$$      wwidth=2.0476d0
c$$$      end

c$$$      subroutine set_ebe_couplings
c$$$      implicit none
c$$$      include 'pwhg_st.h'
c$$$      include 'pwhg_math.h'
c$$$      include "coupl.inc"
c$$$      include 'PhysPars.h'
c$$$      logical ini
c$$$      data ini/.true./
c$$$      double precision axialf,scalarf
c$$$      save ini,axialf,scalarf
c$$$c QCD coupling constant
c$$$      G=sqrt(st_alpha*4d0*pi)
c$$$      GG(1)=-G
c$$$      GG(2)=-G
c$$$
c$$$c HEFT coupling
c$$$ccccccccccccccc
c$$$c     !ER: orig
c$$$c$$$      gh(1) = dcmplx( g**2/4d0/PI/(3d0*PI*V), 0d0)
c$$$c$$$      gh(2) = dcmplx( 0d0                   , 0d0)
c$$$      !ER: new
c$$$      if(ini) then
c$$$         if(phdm_mode.eq.'SC') then
c$$$            scalarf = 1d0
c$$$            axialf  = 0d0
c$$$         elseif(phdm_mode.eq.'PS') then
c$$$            scalarf = 0d0
c$$$            axialf  = 1d0
c$$$         endif
c$$$         ini=.false.
c$$$      endif
c$$$c     this is how the couplings should look for a scalar or pseudoscalar
c$$$c     
c$$$      gh(1) = dcmplx( scalarf*g**2/4d0/PI/(3d0*PI*V), 0d0) 
c$$$c     
c$$$      gh(2) = dcmplx( axialf *g**2/4d0/PI/(2d0*PI*V), 0d0)
c$$$c     
c$$$c$$$c     but for simplicity and later convenience I use the 1/(3*pi*v)
c$$$c$$$c     normalization factor (i.e. the SM Higgs) for both of them
c$$$c$$$      gh(1) = dcmplx( scalarf*g**2/4d0/PI/(3d0*PI*V), 0d0)
c$$$c$$$      gh(2) = dcmplx( axialf *g**2/4d0/PI/(3d0*PI*V), 0d0)
c$$$
c$$$ccccccccccccc
c$$$      ga(1) = dcmplx( 0d0                   , 0d0)
c$$$      ga(2) = dcmplx( g**2/4d0/PI/(2d0*PI*V), 0d0)
c$$$      gh4(1) = G*gh(1)
c$$$      gh4(2) = G*gh(2)
c$$$      ga4(1) = G*ga(1)
c$$$      ga4(2) = G*ga(2)
c$$$
c$$$      return
c$$$      end
c$$$
c$$$
c$$$      subroutine madtophys
c$$$      implicit none
c$$$      include 'coupl.inc'
c$$$      include 'PhysPars.h'
c$$$      include 'pwhg_math.h'
c$$$      real * 8 e_em,g_weak
c$$$      e_em=gal(1)
c$$$      ph_alphaem=e_em**2/(4*pi)
c$$$      ph_sthw2=1-(wmass/zmass)**2
c$$$      ph_sthw=sqrt(ph_sthw2)
c$$$      g_weak=e_em/ph_sthw
c$$$      ph_gfermi=sqrt(2d0)*g_weak**2/(8*wmass**2)
c$$$      end
