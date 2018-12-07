c############### Virtuals.f ############################################
c Higgs + W pair production in the SM
c virtual corrections at NLO QCD
c parton parton -> higgs + W+ + W-
c adapted from Higgs + Z pair production
c last modified by Julien Baglio, 25/03/2015

c############### subroutine setvirtual #################################
c returns 2*(M_B * M_V)/(as/(2pi)) as real number,
c where M_B is the Born amplitude and
c M_V is the finite part of the virtual amplitude
c The as/(2pi) factor is attached at a later point
c A factor (4 Pi)^ep/Gamma(1-ep) with ep=(4-d)/2 is implied.
      subroutine setvirtual(p,vflav,ampvirt)
      implicit none

#include "PhysPars.h"
#include "pwhg_st.h"
#include "pwhg_math.h"
#include "nlegborn.h"
#include "looptools.h"

      ! from const.h"
      double precision Divergence, mudim, lambda, muscale
      integer epscoeff, Finite
      common /renorm/ Divergence, mudim, lambda, muscale
      common /renorm/ epscoeff, Finite

      double precision avgfac

      double precision ph2sqrt
      double precision MQ
      double precision p(0:3,nlegborn)
      integer vflav(nlegborn)
      double precision fcborn, virtual, ampvirt
      ! formcalc results
      double precision fc_result(2)
      ! helicity and flags parameter for formcalc       
      integer*8 helicities
      integer flags
      ! phase space
      double precision ex, ey, ez, psNorm
      ! function to calculate the squared momentum sum
      double precision momsum2sq
      ! kinematics for debug purpose
      double precision s, t, t14, u, t24, s34
      ! Loops
      integer i,j,k
      ! status
      logical verbose
      logical init_virtual
      data init_virtual/.true./

      if (init_virtual) then
         print*
         print*, "=== Init virtual... ==="
         verbose = .true.
         init_virtual = .false.
      else
         verbose = .false.
      endif
        
        
#ifdef DEBUGQ
      verbose = .true.
#endif
#ifdef DEBUGV
#define DSTOP      
      verbose = .true.
      vflav(1) =  5
      vflav(2) = -5
      vflav(3) =  25
      vflav(4) =  24
      vflav(5) = -24
#endif
        
      if (vflav(1).ne.(-vflav(2))) then
         print*, "Error in fct. compvirtual: invalid initial state"
         print*, "vflav(1) = ", vflav(1)
         print*, "vflav(2) = ", vflav(2)
         stop
      endif
        
      ! check five momentum conservation
      call check_5conservation(p, nlegborn)
      call set_ebe_couplings
        
      ! calculate kinematics (debug purpose)
      s   = momsum2sq(p(0:3,1), p(0:3,2))
      t   = momsum2sq(p(0:3,1),-p(0:3,3))
      t14 = momsum2sq(p(0:3,1),-p(0:3,4))
      u   = momsum2sq(p(0:3,2),-p(0:3,3))
      t24 = momsum2sq(p(0:3,2),-p(0:3,4))
      s34 = momsum2sq(p(0:3,3), p(0:3,4))
       
      ! unpolarized particles: B01010 01010 00100 01110 01110
      helicities = 10817998
      ! flags: Bit0 (reset) = 1, Bit1 (loop) = 1 -> B11 = D3
      flags = 3
        
      ! used by Formcalc
      call clearcache
#ifdef DEBUGQ
      call setdebugkey(DebugC) ! DEBUG for LoopTools
#endif
      call setversionkey(1*KeyD0)
      call setlambda(0d0)      ! Only finite part
      call setuvdiv(0d0)        ! no 1/eps_UV terms 
      call setdelta(0d0)        ! set divergences to zero
      call setmudim(st_muren2)  ! renormalization scale
        !print*,"DEBUG: minMass = ", getminmass()
c       call setminmass(1d-5)
        
      ! define MQ mass depending on the flavor
      if(abs(vflav(1)).eq.5) MQ=MU

      ! calculate unit vectors
      psNorm=dsqrt(p(1,1)**2+p(2,1)**2+p(3,1)**2)
      ex=p(1,1)/psNorm
      ey=p(2,1)/psNorm
      ez=p(3,1)/psNorm
      if(vflav(1).le.0) then
         call VecSet(1, MQ, psNorm, ex,ey,ez)
      else
         call VecSet(2, MQ, psNorm, ex,ey,ez)
      endif
      psNorm=dsqrt(p(1,2)**2+p(2,2)**2+p(3,2)**2)
      ex=p(1,2)/psNorm
      ey=p(2,2)/psNorm
      ez=p(3,2)/psNorm
      if(vflav(1).le.0) then
         call VecSet(2, MQ, psNorm, ex,ey,ez)
      else
         call VecSet(1, MQ, psNorm, ex,ey,ez)
      endif
      psNorm=dsqrt(p(1,3)**2+p(2,3)**2+p(3,3)**2)
      ex=p(1,3)/psNorm
      ey=p(2,3)/psNorm
      ez=p(3,3)/psNorm
      ph2sqrt=dsqrt(p(0,3)**2-psNorm**2)
      ! MH is here adapted to the actual virtuality of the Higgs boson
cc      MH=ph2sqrt
cc      MH2=MH**2
      call VecSet(3, MH, psNorm, ex,ey,ez)
      psNorm=dsqrt(p(1,4)**2+p(2,4)**2+p(3,4)**2)
      ex=p(1,4)/psNorm
      ey=p(2,4)/psNorm
      ez=p(3,4)/psNorm
      call VecSet(4, MW, psNorm, ex,ey,ez)
      psNorm=dsqrt(p(1,5)**2+p(2,5)**2+p(3,5)**2)
      ex=p(1,5)/psNorm
      ey=p(2,5)/psNorm
      ez=p(3,5)/psNorm
      call VecSet(5, MW, psNorm, ex,ey,ez)
      
#ifdef CHECKUV
      ! test for finiteness, lambda operates also as IR-cutoff
      ! call setMuDim(1D100)
      print*,"CHECK UV-F"
      call setuvdiv(1d0)
      call setDelta(1D10)      ! Test UV finiteness
#endif

      call calcRenConst
      fc_result(1) = 0.D0       ! born
      fc_result(2) = 0.D0       ! virtual amplitude

      if(abs(vflav(1)).eq.5) then ! b + bbar -> h + w+ + w-
         call bbbar_SquaredME(fc_result, helicities, flags)
      else
         print*, "ERROR: Wrong flavor structure in subr. setvirtual."
         print*, "vflav(1) = ", vflav(1)
         stop
      endif

      avgfac=1.d0/36.d0

      fcborn    = fc_result(1)*avgfac
      virtual = fc_result(2)*avgfac ! = 2 x Re[M_tree* x M_1-loop], FC8Guid.pdf p.48
        
c      ampvirt = virtual*2d0*pi  ! FormCalc Alfas = 1
      ampvirt = virtual*2d0*pi/st_alpha

      if(isnan(virtual)) then
         print*,"got strange value for virtual amplitude...", virtual
         stop
      endif
        
      if (verbose) then
         print*, "process: ", vflav
         print*, "s     = ", s
         print*, "t     = ", t
         print*, "t14   = ", t14
         print*, "u     = ", u
         print*, "t24   = ", t24
         print*, "s34   = ", s34
         print*, "muren2         = ", st_muren2
         print*, "born           = ", fcborn
         print*, "2*Born*Virtual = ", ampvirt
         print*
      end if

#ifdef DSTOP
      stop
#endif
        
      end

c############### end subroutine setvirtual #############################
