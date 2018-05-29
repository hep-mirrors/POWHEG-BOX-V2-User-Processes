      subroutine init_couplings
      implicit none
      include "coupl.inc"
      include 'PhysPars.h'
      include 'pwhg_physpar.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
c      include 'pwhg_par.h'
c Avoid multiple calls to this subroutine. The parameter file is opened
c but never closed ...
      logical called
      real * 8 powheginput
      external powheginput
      data called/.false./
      save called
      integer idvecbos,vdecaymode,Vdecmod
      common/cvecbos/idvecbos,vdecaymode
      save/cvecbos/
      real * 8 pwhg_alphas
      external pwhg_alphas
      real * 8 opasopi,sumCKM,nleptfam
      common/decay_corr/opasopi,sumCKM,nleptfam
      save/decay_corr/
      real * 8 decmass
      real * 8 kappa_ghb,kappa_ght,kappa_ghw
      common/Hcoupls/kappa_ghb,kappa_ght,kappa_ghw
      save/Hcoupls/
      logical massivetop,massivebottom
      common/massiveflags/massivetop,massivebottom
      save/massiveflags/

      if(called) then
         return
      else
         called=.true.
      endif

      massivetop = .false.
      if (powheginput("#massivetop").eq.1) massivetop=.true.
      massivebottom = .false.
      if (powheginput("#massivebottom").eq.1) massivebottom=.true.

*********************************************************
***********         MADGRAPH                 ************
*********************************************************
c Parameters are read from the MadGraph param_card.dat,
c except the strong coupling constant, which is defined
c somewhere else
      
      ph_bmass=powheginput("#bmass")
      if (ph_bmass.lt.0d0) then
         ph_bmass=4.75d0        ! b-quark mass used in the massive 
                                ! VIRTUAL diagrams and in the final-state 
                                ! momenta reshuffling
      endif
      ph_tmass=powheginput("#tmass")
      if (ph_tmass.lt.0d0) then
         ph_tmass=172.5d0
      endif

      call setpara("param_card.dat",.true.)

      physpar_ml(1) = 0.511d-3   ! electron
      physpar_ml(2) = 0.1057d0   ! muon
      physpar_ml(3) = 1.777d0    ! tau
      physpar_mq(1) = 0.33d0     ! down
      physpar_mq(2) = 0.33d0     ! up
      physpar_mq(3) = 0.50d0     ! strange
      physpar_mq(4) = 1.50d0     ! charm
      physpar_mq(5) = ph_bmass   ! bottom

      call madtophys

      call golem_initialize


c******************************************************
c     Choose the process to be implemented
c******************************************************
c     ID of the vector boson produced
      idvecbos=powheginput('idvecbos')
c     decay products of the vector boson
      Vdecmod=powheginput('vdecaymode')
      
      if(idvecbos.eq.24) then
         if (Vdecmod.eq.1) then
            vdecaymode=-11
         elseif (Vdecmod.eq.2) then
            vdecaymode=-13
         elseif (Vdecmod.eq.3) then
            vdecaymode=-15
         elseif (Vdecmod.eq.0) then
c     hadronic decay
            vdecaymode=0
         elseif (Vdecmod.eq.10) then
c     inclusive decay
            vdecaymode=10
         elseif (Vdecmod.eq.11) then
c     inclusive lepton decay
            vdecaymode=112
         else
            write(*,*) 'ERROR: The decay mode you selected ',Vdecmod, 
     $           ' is not allowed '
            call pwhg_exit(1)
         endif
         write(*,*) 
         write(*,*) ' POWHEG: H W+ J production with W+ decay ' 
         if (vdecaymode.eq.-11) write(*,*) '     to e+ ve '
         if (vdecaymode.eq.-13) write(*,*) '     to mu+ vmu'
         if (vdecaymode.eq.-15) write(*,*) '     to tau+ vtau'
         if (vdecaymode.eq.  0) write(*,*) '     to hadrons'
         if (vdecaymode.eq. 10) write(*,*) '     inclusive decay'
         if (vdecaymode.eq.112) write(*,*) '     inclusive lepton decay'
         write(*,*) 
      elseif(idvecbos.eq.-24) then
         if (Vdecmod.eq.1) then
            vdecaymode=11
         elseif (Vdecmod.eq.2) then
            vdecaymode=13
         elseif (Vdecmod.eq.3) then
            vdecaymode=15
         elseif (Vdecmod.eq.0) then
            vdecaymode=0
         elseif (Vdecmod.eq.10) then
            vdecaymode=10
         elseif (Vdecmod.eq.11) then
            vdecaymode=112
         else
            write(*,*) 'ERROR: The decay mode you selected ',Vdecmod, 
     $           ' is not allowed '
            call pwhg_exit(1)
         endif
         write(*,*) 
         write(*,*) ' POWHEG: H W- J production with W- decay '
         if (vdecaymode.eq.11)  write(*,*) '     to e- ve~ '
         if (vdecaymode.eq.13)  write(*,*) '     to mu- vmu~'
         if (vdecaymode.eq.15)  write(*,*) '     to tau- vtau~'
         if (vdecaymode.eq. 0)  write(*,*) '     to hadrons'
         if (vdecaymode.eq.10)  write(*,*) '     inclusive decay'
         if (vdecaymode.eq.112) write(*,*) '     inclusive lepton decay'
         write(*,*)    
      else
         write(*,*) 'ERROR: The ID of vector boson you selected ',
     $        idvecbos, ' is not allowed (24: W+ -24: W-)'
         call pwhg_exit(1)
      endif

c     set lepton mass
      if(vdecaymode.eq.0.or.vdecaymode.eq.10) then
         decmass = physpar_mq(5)+ physpar_mq(4) ! worst case: W -> b c 
      elseif(vdecaymode.eq.112) then
         decmass=physpar_ml(3)                  ! worst case: W -> tau + nutau
      else
         decmass=physpar_ml(Vdecmod)
      endif

      if (ph_Wmass2low.lt.decmass**2) then
         write(*,*) 'min_w_mass less than the minimun invariant mass of'
         write(*,*) 'W decay products ',decmass
         write(*,*) 'POWHEG exits'
         call pwhg_exit(-1)
      endif

*********************************************************      
***  MODIFICATION OF Higgs-top and Higgs-W couplings:
***  (we assume multiplicative kappa factors)
      kappa_ghb=powheginput("#kappa_ghb")
      if (kappa_ghb.eq.-1000000d0) then
         kappa_ghb=1d0
      endif
      kappa_ght=powheginput("#kappa_ght")
      if (kappa_ght.eq.-1000000d0) then
         kappa_ght=1d0
      endif
      kappa_ghw=powheginput("#kappa_ghw")
      if (kappa_ghw.eq.-1000000d0) then
         kappa_ghw=1d0
      endif

c     hadronic and inclusive W decay:
c     factor 1+as(mw)/pi to take into account corrections to the decay products
      opasopi = 1+pwhg_alphas(ph_Wmass**2,st_lambda5MSB,st_nlight)/pi
c     sum over the allowed hadronic W decay products (all apart from the 
c     top quark ones) ==> should be 2
      sumCKM = ph_CKM(1,1)**2+ph_CKM(1,2)**2+ph_CKM(1,3)**2+
     $     ph_CKM(2,1)**2+ph_CKM(2,2)**2+ph_CKM(2,3)**2
c     number of leptonic families considered in inclusive decay:
c     nleptfam = 2: the W boson can decay into e/ve, mu/vmu
c     nleptfam = 3: the W boson can decay into e/ve, mu/vmu, tau/vtau
      nleptfam = 3
      end


      subroutine lh_readin(param_name)
c overrides the lh_readin subroutine in MODEL/couplings.f;
c to make it work, rename or delete
c the lh_readin routine in MODEL/couplings.f
      implicit none
      character*(*) param_name
      include 'coupl.inc'
      include 'PhysPars.h'
      double precision  Two, Four, Rt2, Pi
      parameter( Two = 2.0d0, Four = 4.0d0 )
      parameter( Rt2   = 1.414213562d0 )
      parameter( Pi = 3.14159265358979323846d0 )

c     Common to lh_readin and printout
      double precision  alpha, gfermi, alfas
      double precision  mtMS,mbMS,mcMS,mtaMS!MSbar masses
      double precision  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb !CKM matrix elements
      common/values/    alpha,gfermi,alfas,   
     &                  mtMS,mbMS,mcMS,mtaMS,
     &                  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb
      real * 8 powheginput
      external powheginput
c the only parameters relevant for this process are set
c via powheginput. All others are needed for the
c madgraph routines not to blow.

      alpha= 1/132.34890451910636d0  !WB: from GIancarlo's code
c      alpha= 1/132.50698d0
      gfermi = 0.1166370d-4 !WB: from Giancarlo's code
c      gfermi = 0.1166390d-4
      alfas = 0.119d0
c      zmass = 91.188d0    !--- WB: zmass defined in 'wz_parameters.inc'
c      tmass = 172.5d0
      tmass = ph_tmass
      lmass = 0d0
      mcMS = 0d0
      mbMS = 0d0
      mtMS = 172.5d0
      mtaMS = 1.777d0
      cmass = 0d0
      bmass = 0d0 ! must be zero in MadGraph, otherwise the amplitudes are 
                  ! evaluated with massive bottom
      lmass=0d0
c      wmass=sqrt(zmass**2/Two+
c     $     sqrt(zmass**4/Four-Pi/Rt2*alpha/gfermi*zmass**2))    !--- WB: wmass defined in 'wz_parameters.inc'

      twidth=1.5083d0

      hmass = powheginput('hmass')
      hwidth = powheginput('hwidth')

      ph_Hmass2low=powheginput("min_h_mass")**2
      ph_Hmass2high=powheginput("max_h_mass")**2
      ph_Wmass2low=powheginput("min_w_mass")**2
      ph_Wmass2high=powheginput("max_w_mass")**2    
c    !--- WB: zmass defined in 'wz_parameters.inc'
c      zwidth=2.441d0
c      wwidth=2.0476d0

c   Use the same W,Z parameters as in NNLO code:
      include 'wz_parameters.h'

c     POWHEG CKM matrix
c
c        d     s     b
c    u
c    c
c    t

      Vud=0.97428d0 
      Vus=0.2253d0  
      Vub=0.00347d0 
      Vcd=0.2252d0  
      Vcs=0.97345d0 
      Vcb=0.0410d0  
      Vtd=0.00862d0 
      Vts=0.0403d0  
      Vtb=0.999152d0

c$$$      Vud=1d0
c$$$      Vus=1d-10
c$$$      Vub=1d-10
c$$$      Vcd=1d-10
c$$$      Vcs=1d0
c$$$      Vcb=1d-10
c$$$      Vtd=1d-10
c$$$      Vts=1d-10
c$$$      Vtb=1d0


c------ PRINT PARAMETERS for checks: ------
      write(*,*) '-----------------------------------------------------'
      write(*,*) 'YOU ARE USING "init_couplings.f" from SVN-repository'
      write(*,*) '-----------------------------------------------------'
      write(*,*) '=================================================='
      write(*,*) 'aeminv, gfermi:', 
     $     1d0/alpha, gfermi
      write(*,*) 'zmass, zwidth: ', zmass, zwidth
      write(*,*) 'wmass, wwidth: ', wmass, wwidth
      write(*,*) 'hmass, hwidth: ', hmass, hwidth
      write(*,*) 'CKM matrix:'
      write(*,*) Vud,Vus,Vub
      write(*,*) Vcd,Vcs,Vcb
      write(*,*) '=================================================='
c------ -----------------------------------
      end

      subroutine set_ebe_couplings
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include "coupl.inc"
c QCD coupling constant
      G=sqrt(st_alpha*4d0*pi)
      GG(1)=-G
      GG(2)=-G

c HEFT coupling
      gh(1) = cmplx( g**2/4d0/PI/(3d0*PI*V), 0d0)
      gh(2) = cmplx( 0d0                   , 0d0)
      ga(1) = cmplx( 0d0                   , 0d0)
      ga(2) = cmplx( g**2/4d0/PI/(2d0*PI*V), 0d0)
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
      include 'pwhg_physpar.h'
      real * 8 e_em,g_weak
c
c     Common to lh_readin and printout
c
      double precision  alpha, gfermi, alfas
      double precision  mtMS,mbMS,mcMS,mtaMS!MSbar masses
      double precision  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb !CKM matrix elements
      common/values/    alpha,gfermi,alfas,   
     &                  mtMS,mbMS,mcMS,mtaMS,
     &                  Vud,Vus,Vub,Vcd,Vcs,Vcb,Vtd,Vts,Vtb
      
      e_em=gal(1)
      ph_unit_e=e_em
      ph_alphaem=e_em**2/(4*pi)
      ph_sthw2=1-(wmass/zmass)**2
      ph_sthw=sqrt(ph_sthw2)
      g_weak=e_em/ph_sthw
      ph_gfermi=sqrt(2d0)*g_weak**2/(8*wmass**2)

      ph_Zmass = zmass
      ph_Wmass = wmass
      ph_Hmass = hmass
      ph_Zwidth = zwidth
      ph_Wwidth = wwidth
      ph_Hwidth = hwidth
c      ph_tmass = tmass
c      ph_bmass = physpar_mq(5)  ! b-quark mass used in the massive VIRTUAL diagrams 
      ph_WmWw = ph_Wmass * ph_Wwidth
      ph_Wmass2 = ph_Wmass**2
      ph_Zmass2 = ph_Zmass**2

c     CKM from PDG 2010 (eq. 11.27)
      ph_CKM(1,1)=Vud
      ph_CKM(1,2)=Vus
      ph_CKM(1,3)=Vub
      ph_CKM(2,1)=Vcd
      ph_CKM(2,2)=Vcs
      ph_CKM(2,3)=Vcb
      ph_CKM(3,1)=Vtd
      ph_CKM(3,2)=Vts
      ph_CKM(3,3)=Vtb

c$$$c------ PRINT PARAMETERS for checks: ------
c$$$      print*, '=================================================='
c$$$      print*, 'sthw2: ',ph_sthw2
c$$$      print*, 'gweak: ',g_weak
c$$$      print*, 'gwsq:  ',g_weak**2
c$$$      print*, 'gFerm: ',ph_gfermi
c$$$      print*, '=================================================='
c$$$c------ -----------------------------------


      end


      
C     initializes all the couplings in the  virtual, code
C     generated by GoSam and sets them equal to the
C     ones defined in the POWHEG BOX.              
      subroutine golem_initialize
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_rnd.h'
      integer ierr
      integer ioerr
      character * 20 param
      character * 20 value
      character * 50 line
      character * 29 path
      real * 8 powheginput
      external powheginput
      integer parallelstage,rndiwhichseed
      common/cpwhg_info/parallelstage,rndiwhichseed
      logical massivetop,massivebottom
      common/massiveflags/massivetop,massivebottom

      rndiwhichseed=rnd_iwhichseed
      parallelstage=powheginput("#parallelstage")

C     Parameter definition
      
      param = 'Nf='
      write(value,'(I1)') st_nlight
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'alpha='
      write(value,'(F20.10)') ph_alphaem
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'GF='
      write(value,'(F20.10)') ph_gfermi
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'mZ='
      write(value,'(F20.10)') ph_Zmass
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'mW='
      write(value,'(F20.10)') ph_Wmass
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'mH='
      write(value,'(F20.10)') ph_Hmass
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'mC='
      write(value,'(F20.10)') ph_cmass
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'mB='
      write(value,'(F20.10)') ph_bmass
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'mBMS='
      write(value,'(F20.10)') ph_bmass
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'mT='
      if(massivetop) then
         write(value,'(F20.10)') ph_tmass
      else
         write(value,'(F20.10)') 0d0
      end if
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'me='
      write(value,'(F20.10)') ph_emass
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'mmu='
      write(value,'(F20.10)') ph_mumass
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'mtau='
      write(value,'(F20.10)') ph_taumass
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'wZ='
      write(value,'(F20.10)') ph_Zwidth
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'wW='
      write(value,'(F20.10)') ph_Wwidth
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'wH='
      write(value,'(F20.10)') ph_hwidth
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'wB='
      write(value,'(F20.10)') ph_bwidth
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'wT='
      write(value,'(F20.10)') ph_twidth
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'wtau='
      write(value,'(F20.10)') ph_tauwidth
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'VUD='
      write(value,'(F20.10)') ph_CKM(1,1)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'CVDU='
      write(value,'(F20.10)') ph_CKM(1,1)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'VUS='
      write(value,'(F20.10)') ph_CKM(1,2)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'CVSU='
      write(value,'(F20.10)') ph_CKM(1,2)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'VUB='
      write(value,'(F20.10)') ph_CKM(1,3)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'CVBU='
      write(value,'(F20.10)') ph_CKM(1,3)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'VCD='
      write(value,'(F20.10)') ph_CKM(2,1)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'CVDC='
      write(value,'(F20.10)') ph_CKM(2,1)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'VCS='
      write(value,'(F20.10)') ph_CKM(2,2)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'CVSC='
      write(value,'(F20.10)') ph_CKM(2,2)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'VCB='
      write(value,'(F20.10)') ph_CKM(2,3)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'CVBC='
      write(value,'(F20.10)') ph_CKM(2,3)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'VTD='
      write(value,'(F20.10)') ph_CKM(3,1)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'CVDT='
      write(value,'(F20.10)') ph_CKM(3,1)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'VTS='
      write(value,'(F20.10)') ph_CKM(3,2)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'CVST='
      write(value,'(F20.10)') ph_CKM(3,2)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'VTB='
      write(value,'(F20.10)') ph_CKM(3,3)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
      param = 'CVBT='
      write(value,'(F20.10)') ph_CKM(3,3)
      line = trim(param)//trim(adjustl(value))
      call OLP_Option(line,ierr)
      call check_gosam_err(param,ierr)
      
C     Initialize virtual code
      path = '../GoSamlib/orderfile.olc'
      
      call OLP_Start(path,ioerr,parallelstage,rndiwhichseed)
      call check_gosam_err('olp_start routine',ierr)
      end
      
      
      subroutine check_gosam_err(param,ierr)
      implicit none
      character *(*) param
      integer ierr
      if (ierr.lt.0) then
         write(*,*)
     $        'GoSam '//param(1:len_trim(param))// ' reports an error.'
         write(*,*) 'The POWHEG BOX aborts'
         call exit(1)
      endif
      end


