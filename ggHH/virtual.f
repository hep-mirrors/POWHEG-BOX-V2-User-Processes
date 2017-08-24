c     returns 2 Re(M_B * M_V)/(as/(2pi)),
c     where M_B is the Born amplitude and
c     M_V is the finite part of the virtual amplitude
c     The as/(2pi) factor is attached at a later point
      subroutine setvirtual(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual,virtualfull,bornhtl,bornfull
      complex * 16 mpol(-1:1,-1:1)
      integer mtdep
      common/cmtdep/mtdep

c******************************************************
c     Choose the type of computation:
c     mtdep = 0: heavy top limit (htl)
c     mtdep = 1: Born improved heavy top limit (full theory born)
c     mtdep = 2: full theory approx (with htl virtual)
c     mtdep = 3: full theory
c     mtdep = 4,5: checks
c******************************************************
      virtual = 0d0

      if (mtdep.eq.0) then
         call ME2virt_htl(p, virtual)

      else if (mtdep.eq.1) then
         call ME2virt_htl(p, virtual)

      else if (mtdep.eq.2) then
         call ME2born_htl(p, bornhtl)
         call ME2born_full(p, bornfull, mpol)
         call ME2virt_htl(p, virtual)
         virtual=virtual*bornfull/bornhtl

      else if (mtdep.eq.3) then
         call ME2virt_full(p, virtual)

      else if (mtdep.eq.4) then
         call ME2virt_htl(p, virtual)
         call ME2virt_full(p, virtualfull)

         print *, "virtual HEFT=", virtual
         print *, "virtual FULL=", virtualfull
         print *, "--->Must be 1: ",virtual/virtualfull
c         pause
         virtual=virtualfull
      else
         write(*,*) "Unknown value of 'largemtlim' for virtual, abort!"
         call exit(1)
      endif
      end


      subroutine ME2virt_htl(p, virtual)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      integer nlegs
      parameter (nlegs=nlegborn)
c     input:
      real * 8 p(0:3,nlegs)
      real * 8 mh,ao2pi
c     output:
      real * 8 born,virtual,grid_virt
c     invariants, abbreviations:
      real * 8 square_Lorentz_vector
      external square_Lorentz_vector
      real * 8 s,t,u,denH,MH2
      real * 8 NA,nf,TR,st_alpha_old
      parameter(NA=8.0d0,TR=0.5d0,nf=5.d0)
      real * 8 pwhg_alphas
      external pwhg_alphas
      real * 8 muf,mur

      MH2   = ph_Hmass2
      s     = square_Lorentz_vector(p(:,1)+p(:,2))
      t     = square_Lorentz_vector(p(:,1)-p(:,3)) ! Conventions: t=(p1-p3)^2
      denH  = 1/(s-MH2)
      ao2pi = st_alpha/(2d0*pi)


      call ME2born_htl(p, born)

      virtual = born*(11d0+CA*pi**2-CA*log(st_muren2/s)**2)

      virtual = virtual +
     $     (ph_GF**2*ao2pi**2*NA*s**2
     $     *(-16d0/27d0+16d0/9d0*MH2*ph_cHHH*denH)
     $     /2.0d0               ! Symmetry factor
     $     /256.0d0)            ! spin/colour average


c     for test only! !!!!!!!!
c$$$      virtual = grid_virt(s,t)
c$$$
c$$$      call set_fac_ren_scales(muf,mur)
c$$$
c$$$      st_alpha_old = pwhg_alphas(mur**2,st_lambda5MSB,st_nlight)
c$$$
c$$$      virtual = virtual * st_alpha**2/st_alpha_old**2 +
c$$$     $     CA*born*(log(mur**2/s)**2 - log(st_muren2/s)**2)

c assuming Powheg will multiply by alphas/2/pi

c     for test only! !!!!!!!!

      end subroutine ME2virt_htl


      subroutine ME2virt_full(p, virtual)
c     use Born_amplitudes, only: ME2born_gbij
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_flg.h'
      integer nlegs
      parameter (nlegs=nlegborn)
c     input:
      real * 8 p(0:3,nlegs)
c     output:
      real * 8 virtual,bornfull
c     invariants, abbreviations:
      real * 8 square_Lorentz_vector
      external square_Lorentz_vector
      real * 8 mh,ao2pi,st_alpha_old
      real * 8 s,t,MH2
      real * 8 NA,NF,TR
      parameter(NA=8.d0,TR=0.5d0,NF=5.d0)
      real * 8 grid_virt
      complex * 16 mpol(-1:1,-1:1)
      real * 8 pwhg_alphas
      external pwhg_alphas
      real * 8 muf,mur

      MH2   = ph_Hmass2
      s     = square_Lorentz_vector(p(:,1)+p(:,2))
      t     = square_Lorentz_vector(p(:,1)-p(:,3)) ! Conventions: t=(p1-p3)^2
      ao2pi = st_alpha/(2d0*pi)

      virtual = grid_virt(s,t)

c    GH: added 23.2.17, warning: NF=5 hardcoded here!
      call ME2born_full(p, bornfull, mpol)
      call set_fac_ren_scales(muf,mur)

c    including the terms from transformation to Vfin:

      st_alpha_old = pwhg_alphas(mur**2,st_lambda5MSB,st_nlight)

      virtual = virtual * st_alpha**2/st_alpha_old**2 +
     $     CA*bornfull*(log(mur**2/s)**2 - log(st_muren2/s)**2)

      end subroutine ME2virt_full


c Wrapper function for calling the python grid function
      function grid_virt(s,t)
      implicit none
      include 'pwhg_rnd.h' ! rndiwhichseed
      real * 8 grid_virt
      real * 8 s,t
      character(len=500) :: res  ! Buffer for function result
      character(len=500) :: arg  ! Buffer for function argument
      character(len=16) :: pyin
      character(len=17) :: pyout
      integer parallelstage,rndiwhichseed
      common/cpwhg_info/parallelstage,rndiwhichseed
      logical verbose

      verbose = .false.

c     Use input seed to determine which FIFOs to use, e.g. seed = 1 => FIFOs: pyInputPipe-0001, pyOutputPipe-0001
      pyin = "pyInputPipe-"
      pyout = "pyOutputPipe-"
      write(pyin,'(A12,I0.4)') pyin,rndiwhichseed
      write(pyout,'(A13,I0.4)') pyout,rndiwhichseed
      if (verbose) then
         write(*,*) "Using FIFOs:"
         write(*,*) pyin
         write(*,*) pyout

c         Build input to python grid
         write(*,*) "Input to grid_virt:"
         write(*,*) s
         write(*,*) t
      endif
      write(arg,'(ES50.40E4,A,ES50.40E4)') s,',',t
      if (verbose) then
         write(*,*) "Will send the following char(len=500) to python:"
         write(*,*) arg
      endif

c     Send input to python script
      open(1,file=pyin,position='asis',action='write')
      write(1,'(A)',advance='no') arg
      close(1)

c     Receive result from python script
      open(2,file=pyout,position='asis',action='read')
      read(2,'(A)') res
      close(2)

c     Parse result of python grid

      if (verbose) then
         write(*,*) "Got the following character(len=500) from python:"
         write(*,*) res
      endif
      read(res,*) grid_virt

      if (verbose) then
         write(*,*) "Output of grid_virt:"
         write(*,*) grid_virt
      endif
      end function grid_virt


c Wrapper function for killing the python grid script
      logical function kill_python()
      implicit none
      character(len=16) :: pyin
      integer parallelstage,rndiwhichseed
      common/cpwhg_info/parallelstage,rndiwhichseed

      ! Use input seed to determine which FIFOs to use,
      ! e.g. seed = 1 => FIFOs: pyInputPipe-0001, pyOutputPipe-0001
      pyin = "pyInputPipe-"
      write(pyin,'(A12,I0.4)') pyin,rndiwhichseed
      write(*,*) "Killing Python script with FIFO:"
      write(*,*) pyin

      open(1,file=pyin,position='asis',action='write')
      write(1,'(A)',advance='no') 'exit'
      close(1)
      end function
