      subroutine init_couplings
      implicit none
      include 'coupl.inc'
      include 'pwhg_flg.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_physpar.h'
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
      absdecaymode=abs(powheginput('decaymode'))
      if(absdecaymode.eq.1) then
         phdm_mode='SC'
      elseif(absdecaymode.eq.2) then
         phdm_mode='PS'
         write(*,*) 'PS not yet implemented, program stops'
         call exit(-1)
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
c     needed for the effective coupling...
         phdm_LambdaUV=powheginput('DMLambda')
         if(phdm_LambdaUV.lt.0d0) then
            write(*,*) 'Error: phdm_LambdaUV<0 !'
            call exit(-1)
         endif
         
         phdm_gSM=powheginput('#DMgSM')
         if(phdm_gSM.eq.-1000000) phdm_gSM=1
         phdm_gDM=powheginput('#DMgDM')
         if(phdm_gDM.eq.-1000000) phdm_gDM=1

c         phdm_rw=powheginput('#runningwidth').gt.0

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
      ph_unit_e = sqrt(4*pi*ph_alphaem)


      write(*,*) '****************************************************'
      write(*,*) 'When using this code, please follow the citation'
      write(*,*) 'guidelines at http://powhegbox.mib.infn.it/'
      write(*,*) 'In particular, for DM+monojet processes,'
      write(*,*) '    http://arxiv.org/abs/arXiv:1310.4491'
      write(*,*) 'should always be included as a reference'
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
            write(*,*) 'DM lambda scale for GGS coupling = ',
     $           phdm_LambdaUV
            write(*,*) 'coupling G_G_mediator (w/o as/LambdaUV) = ',
     $           phdm_gSM
            write(*,*) 'coupling X_Xbar_mediator = ',phdm_gDM
c            write(*,*) 'running width = ',phdm_rw
         endif
         write(*,*) '*************************************'
      endif
ccccccccccccccccccccccccccccccccccccccc



*********************************************************
***********         MADGRAPH                 ************
*********************************************************
c Parameters are read from the MadGraph param_card.dat,
c except the strong coupling constant, which is defined
c somewhere else
      call setpara("param_card.dat",.true.)
c Are these needed?
c$$$      physpar_ml(1)=0.511d-3
c$$$      physpar_ml(2)=0.1057d0
c$$$      physpar_ml(3)=1.777d0
c$$$      physpar_mq(1)=0.33d0     ! up
c$$$      physpar_mq(2)=0.33d0     ! down
c$$$      physpar_mq(3)=0.50d0     ! strange
c$$$      physpar_mq(4)=1.50d0     ! charm
c$$$      physpar_mq(5)=4.80d0     ! bottom
      call madtophys

*********************************************************
***********           MCFM                   ************
*********************************************************
      call i2MCFM_2_POWHEG_IP
!--- Initialise coupling 
      call mcfm_coupling

      end


      subroutine lh_readin(param_name)
c overrides the lh_readin subroutine in MODEL/couplings.f;
c to make it work, rename or delete
c the lh_readin routine in MODEL/couplings.f
      implicit none
      character*(*) param_name
      include 'coupl.inc'
      double precision  Two, Four, Rt2, Pi
      parameter( Two = 2.0d0, Four = 4.0d0 )
      parameter( Rt2   = 1.414213562d0 )
      parameter( Pi = 3.14159265358979323846d0 )
      double precision  alpha, gfermi, alfas
      double precision  mtMS,mbMS,mcMS,mtaMS!MSbar masses
      double precision  Vud             !CKM matrix elements
      common/values/    alpha,gfermi,alfas,   
     &                  mtMS,mbMS,mcMS,mtaMS,
     &                  Vud
c      real * 8 powheginput
c the only parameters relevant for this process are set
c via powheginput. All others are needed for the
c madgraph routines not to blow.
      alpha=1/128.9d0
      alpha=1/1.32506980E+02
      gfermi = 0.1166390d-4
      alfas = 0.119d0
      zmass = 91.188d0
      tmass = 174.3d0
      lmass = 0d0
      mcMS = 0d0
      mbMS = 0d0
      mtMS = 174d0
      mtaMS = 1.777d0
      vud = 1d0
      cmass = 0d0
      bmass = 0d0
      lmass=0d0
c      hmass = powheginput('hmass')
c      hmass = 120d0
      wmass=sqrt(zmass**2/Two+
     $     sqrt(zmass**4/Four-Pi/Rt2*alpha/gfermi*zmass**2))
      twidth=1.5083d0
c      hwidth = powheginput('hwidth')
c      hwidth =  5.75308848d-03
      zwidth=2.441d0
      wwidth=2.0476d0
      end

      subroutine set_ebe_couplings
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include "coupl.inc"
      include 'PhysPars.h'
      logical ini
      data ini/.true./
      double precision axialf,scalarf
      save ini,axialf,scalarf
c QCD coupling constant
      G=sqrt(st_alpha*4d0*pi)
      GG(1)=-G
      GG(2)=-G

c HEFT coupling
ccccccccccccccc
c     !ER: orig
c$$$      gh(1) = dcmplx( g**2/4d0/PI/(3d0*PI*V), 0d0)
c$$$      gh(2) = dcmplx( 0d0                   , 0d0)
      !ER: new
      if(ini) then
         if(phdm_mode.eq.'SC') then
            scalarf = 1d0
            axialf  = 0d0
         elseif(phdm_mode.eq.'PS') then
            scalarf = 0d0
            axialf  = 1d0
         endif
         ini=.false.
      endif
c     this is how the couplings should look for a scalar or pseudoscalar
c     
      gh(1) = dcmplx( scalarf*g**2/4d0/PI/(3d0*PI*V), 0d0) 
c     
      gh(2) = dcmplx( axialf *g**2/4d0/PI/(2d0*PI*V), 0d0)
c     
c$$$c     but for simplicity and later convenience I use the 1/(3*pi*v)
c$$$c     normalization factor (i.e. the SM Higgs) for both of them
c$$$      gh(1) = dcmplx( scalarf*g**2/4d0/PI/(3d0*PI*V), 0d0)
c$$$      gh(2) = dcmplx( axialf *g**2/4d0/PI/(3d0*PI*V), 0d0)

ccccccccccccc
      ga(1) = dcmplx( 0d0                   , 0d0)
      ga(2) = dcmplx( g**2/4d0/PI/(2d0*PI*V), 0d0)
      gh4(1) = G*gh(1)
      gh4(2) = G*gh(2)
      ga4(1) = G*ga(1)
      ga4(2) = G*ga(2)

      return
      end


      subroutine madtophys
      implicit none
      include 'coupl.inc'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      real * 8 e_em,g_weak
      e_em=gal(1)
      ph_alphaem=e_em**2/(4*pi)
      ph_sthw2=1-(wmass/zmass)**2
      ph_sthw=sqrt(ph_sthw2)
      g_weak=e_em/ph_sthw
      ph_gfermi=sqrt(2d0)*g_weak**2/(8*wmass**2)
      end
