      subroutine init_couplings
      implicit none
      include "coupl.inc"
      include 'PhysPars.h'
      include "pwhg_par.h"

      real * 8 powheginput
      external powheginput
c Avoid multiple calls to this subroutine. The parameter file is opened
c but never closed ...
      logical called
      data called/.false./
      save called
      if(called) then
         return
      else
         called=.true.
      endif

      if(powheginput("#par_isrtinycsi").gt.0) 
     $     par_isrtinycsi = powheginput("#par_isrtinycsi")

      if(powheginput("#par_fsrtinycsi").gt.0) 
     $     par_fsrtinycsi = powheginput("#par_fsrtinycsi")

      if(powheginput("#par_isrtinyy").gt.0) 
     $     par_isrtinyy = powheginput("#par_isrtinyy")

      if(powheginput("#par_fsrtinyy").gt.0) 
     $     par_fsrtinyy = powheginput("#par_fsrtinyy")

*********************************************************
***********         MADGRAPH                 ************
*********************************************************
c Parameters are read from the MadGraph param_card.dat,
c except the strong coupling constant, which is defined
c somewhere else
      call setpara("param_card.dat",.true.)

      call madtophys

c Are these needed?
c$$$      physpar_ml(1)=0.511d-3
c$$$      physpar_ml(2)=0.1057d0
c$$$      physpar_ml(3)=1.777d0
c$$$      physpar_mq(1)=0.33d0     ! up
c$$$      physpar_mq(2)=0.33d0     ! down
c$$$      physpar_mq(3)=0.50d0     ! strange
c$$$      physpar_mq(4)=1.50d0     ! charm
c$$$      physpar_mq(5)=4.80d0     ! bottom
      call golem_initialize
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
c
      real * 8 powheginput
      external powheginput
c the only parameters relevant for this process are set
c via powheginput. All others are needed for the
c madgraph routines not to blow.

      alpha  = 1/132.50698d0
      gfermi = 0.1166390d-4
      alfas = 0.119d0
      zmass = 91.188d0
      tmass = 173.2d0
      lmass = 0d0
      mcMS = 0d0
      mbMS = 0d0
      mtMS = 0d0 !ER:172.5d0
      mtaMS = 0d0 !ER:1.777d0
      cmass = 0d0
      bmass = 4.92d0
      lmass = 0d0
C      wmass = sqrt(zmass**2/Two+
C     $     sqrt(zmass**4/Four-Pi/Rt2*alpha/gfermi*zmass**2))
      wmass = 80.3858d0 


      zwidth=2.4952d0
      wwidth=2.08540
      twidth=1.442620d0

      hmass = 125d0
      hwidth = 0.407d-2

C      hmass = powheginput('hmass')
C      hwidth = powheginput('hwidth')
C      ph_Hmass2low=powheginput("hmasslow")**2
C      ph_Hmass2high=powheginput("hmasshigh")**2

c     !: ph_Wmass2low and ph_Wmass2high are used in generating the phase
c     space only if bwwindows (Born_phsp.f) is set to true (for the
c     paper, bwwindows=T, invariant W masses generated in the interval
c     [10:500]). Notice that kn_minmass also depends on ph_Wmass2low in
c     this case.
c      
c     By default, in the released code, the bwwindows option is set to
c     F, and hence kn_minmass=0d0. Strictly speaking this produces an
c     +infinity in maxrat.f, but that appears as finite/infinity, which
c     returns 0, therefore icsi is computed sensibly. Some compilers
c     might spot this. Notice that the same issue is there in the public
c     WW code.
      
      ph_Wmass2low=powheginput("#wmasslow")
      if(ph_Wmass2low.lt.0) then
         ph_Wmass2low=(20d0)**2 
      else
         ph_Wmass2low=ph_Wmass2low**2
      endif
      ph_Wmass2high=powheginput("#wmasshigh")
      if(ph_Wmass2high.lt.0) then
         ph_Wmass2high=(200d0)**2 
      else
         ph_Wmass2high=ph_Wmass2high**2
      endif

C      ph_Zmass2low=powheginput("zmasslow")**2
C      ph_Zmass2high=powheginput("zmasshigh")**2

c     POWHEG CKM matrix
c
c        d     s     b
c    u
c    c
c    t

      !Vud=0.97428d0
      !Vus=0.2253d0
      !Vub=1d-10
      !Vcd=-0.2252d0
      !Vcs=0.97345d0
      !Vcb=1d-10
      !Vtd=1d-10
      !Vts=1d-10
      !Vtb=1d-10
      !
      !Vud=  0.97462d0
      !Vus=  0.2253d0
      !Vub=  1d-10
      !Vcd= -0.2253d0
      !Vcs=  0.97462d0
      !Vcb=1d-10
      !Vtd=1d-10
      !Vts=1d-10
      !Vtb=1d-10

      Vud=1d0
      Vus=1d-10
      Vub=1d-10
      Vcd=1d-10
      Vcs=1d0
      Vcb=1d-10
      Vtd=1d-10
      Vts=1d-10
      Vtb=1d0

c     !: for wwj, in the approximations we are working in, we can use a
c     diagonal CKM matrix. The result for the production cross section
c     is the same as if we had used a generic CKM. This is due to the
c     unitary of this matrix. The only place in the code where one needs
c     to really use the "true" CKM matrix is when generating
c     semileptonic or hadronic decays (see finalize_lh). randomizeckm
c     takes care of that.

      end

      subroutine set_ebe_couplings
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include "coupl.inc"
      logical ini
      save ini
      data ini/.true./
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

      if(ini) then
         write(*,*) '-----------------------------'
         write(*,*) 'muF = ',sqrt(st_mufact2)
         write(*,*) 'muR,alphas = ',sqrt(st_muren2),st_alpha
         write(*,*) '-----------------------------'
         ini=.false.
      endif

      return
      end


      subroutine madtophys
      implicit none
      include 'coupl.inc'
      include 'PhysPars.h'
      include 'pwhg_math.h'
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
      ph_tmass = tmass

      ph_WmWw = ph_Wmass * ph_Wwidth
      ph_ZmZw = ph_Zmass * ph_Zwidth
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

      write(*,*) '----------------------------------------'
      write(*,*) 'mw,gammaw ',ph_wmass,ph_wwidth
      write(*,*) 'mz,gammaz ',ph_zmass,ph_zwidth
      write(*,*) 'aeminv,sthw2,gweak,gfermi ',1./ph_alphaem,ph_sthw2,g_weak,ph_gfermi
      !write(*,*) 'CKM matrix'
      !write(*,*) ph_ckm(1,:)
      !write(*,*) ph_ckm(2,:)
      !write(*,*) ph_ckm(3,:)
      write(*,*) '----------------------------------------'
      
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

      rndiwhichseed=rnd_iwhichseed
      parallelstage=powheginput('#parallelstage')
      
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

c$$$      param = 'mC='
c$$$      write(value,'(F20.10)') ph_cmass
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$
c$$$      param = 'mB='
c$$$      write(value,'(F20.10)') ph_bmass
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$
c$$$      param = 'mBMS='
c$$$      write(value,'(F20.10)') ph_bmass
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$
c$$$      param = 'mT='
c$$$      write(value,'(F20.10)') ph_tmass
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$
c$$$      param = 'me='
c$$$      write(value,'(F20.10)') ph_emass
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$
c$$$      param = 'mmu='
c$$$      write(value,'(F20.10)') ph_mumass
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$
c$$$      param = 'mtau='
c$$$      write(value,'(F20.10)') ph_taumass
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)

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

c$$$      param = 'wB='
c$$$      write(value,'(F20.10)') ph_bwidth
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$
c$$$      param = 'wT='
c$$$      write(value,'(F20.10)') ph_twidth
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$
c$$$      param = 'wtau='
c$$$      write(value,'(F20.10)') ph_tauwidth
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$
c$$$      param = 'VUD='
c$$$      write(value,'(F20.10)') ph_CKM(1,1)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$
c$$$      param = 'CVDU='
c$$$      write(value,'(F20.10)') ph_CKM(1,1)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$
c$$$      param = 'VUS='
c$$$      write(value,'(F20.10)') ph_CKM(1,2)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'CVSU='
c$$$      write(value,'(F20.10)') ph_CKM(1,2)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'VUB='
c$$$      write(value,'(F20.10)') ph_CKM(1,3)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'CVBU='
c$$$      write(value,'(F20.10)') ph_CKM(1,3)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'VCD='
c$$$      write(value,'(F20.10)') ph_CKM(2,1)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'CVDC='
c$$$      write(value,'(F20.10)') ph_CKM(2,1)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'VCS='
c$$$      write(value,'(F20.10)') ph_CKM(2,2)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'CVSC='
c$$$      write(value,'(F20.10)') ph_CKM(2,2)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'VCB='
c$$$      write(value,'(F20.10)') ph_CKM(2,3)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'CVBC='
c$$$      write(value,'(F20.10)') ph_CKM(2,3)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'VTD='
c$$$      write(value,'(F20.10)') ph_CKM(3,1)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'CVDT='
c$$$      write(value,'(F20.10)') ph_CKM(3,1)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'VTS='
c$$$      write(value,'(F20.10)') ph_CKM(3,2)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'CVST='
c$$$      write(value,'(F20.10)') ph_CKM(3,2)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'VTB='
c$$$      write(value,'(F20.10)') ph_CKM(3,3)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
c$$$      
c$$$      param = 'CVBT='
c$$$      write(value,'(F20.10)') ph_CKM(3,3)
c$$$      line = trim(param)//trim(adjustl(value))
c$$$      call OLP_Option(line,ierr)
c$$$      call check_gosam_err(param,ierr)
      
C     Initialize virtual code
      
      path = '../GoSam_POWHEG/orderfile.olc'
      
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
