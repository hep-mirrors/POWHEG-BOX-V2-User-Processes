c############### Virtuals.f ############################################
c Higgs + Z + W+/W- production in the SM
c virtual corrections at NLO QCD
c parton parton -> higgs + Z + W+/W-
c adapted from Higgs + Z pair production
c last modified by Julien Baglio, 01/04/2015

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
      double precision MQ1, MQ2
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
c      st_muren2 = 200000D0
      st_alpha =  9.6934150432177207D-2
      if(wtype.eq.-1) then
c- W-:
         vflav(1) =  1
         vflav(2) = -2
         vflav(3) =  25
         vflav(4) =  23
         vflav(5) = -24
c
c- W+:
      else
         vflav(1) = -1
         vflav(2) =  2
         vflav(3) =  25
         vflav(4) =  23
         vflav(5) =  24
      endif
c
      p(0,1) =  868.63617879461435d0
      p(1,1) =  0d0
      p(2,1) =  0d0
      p(3,1) =  868.63617879461435d0
      p(0,2) =  868.63617879461435d0
      p(1,2) =  0d0
      p(2,2) =  0d0
      p(3,2) = -868.63617879461435d0
      p(0,3) =  523.56857578185361d0
      p(1,3) =  111.29339999452239d0
      p(2,3) =  333.11504789772187d0
      p(3,3) = -367.52157423476024d0
      p(0,4) =  622.63054334661422d0
      p(1,4) =  349.65482986111084d0
      p(2,4) =  0d0
      p(3,4) =  507.04547633238724d0
      p(0,5) =  591.07323846076076d0
      p(1,5) = -460.94822985563326d0
      p(2,5) = -333.11504789772187d0
      p(3,5) = -139.52390209762703d0
#endif
        
      if (vflav(1).eq.(-vflav(2))) then
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
c#ifdef DEBUGV
      call setdebugkey(DebugC) ! DEBUG for LoopTools
#endif
cc      call setversionkey(1*KeyAll)
cc      call setversionkey(1*KeyC0)
      call setlambda(0d0)      ! Only finite part
      call setuvdiv(0d0)        ! no 1/eps_UV terms 
      call setdelta(0d0)        ! set divergences to zero
      call setmudim(st_muren2)  ! renormalization scale
        !print*,"DEBUG: minMass = ", getminmass()
c       call setminmass(1d-5)
        
      ! define MQ mass depending on the flavor
      if(abs(vflav(1)).eq.2.or.abs(vflav(1)).eq.4) MQ1=MU
      if(abs(vflav(1)).eq.1.or.abs(vflav(1)).eq.3) MQ1=MD
      if(abs(vflav(2)).eq.2.or.abs(vflav(2)).eq.4) MQ2=MU
      if(abs(vflav(2)).eq.1.or.abs(vflav(2)).eq.3) MQ2=MD

      ! calculate unit vectors
      psNorm=dsqrt(p(1,1)**2+p(2,1)**2+p(3,1)**2)
      ex=p(1,1)/psNorm
      ey=p(2,1)/psNorm
      ez=p(3,1)/psNorm
      if(abs(vflav(1)).eq.1.or.abs(vflav(1)).eq.3) then
         call VecSet(1, MQ1, psNorm, ex,ey,ez)
      else
         call VecSet(2, MQ1, psNorm, ex,ey,ez)
      endif
      psNorm=dsqrt(p(1,2)**2+p(2,2)**2+p(3,2)**2)
      ex=p(1,2)/psNorm
      ey=p(2,2)/psNorm
      ez=p(3,2)/psNorm
      if(abs(vflav(2)).eq.2.or.abs(vflav(2)).eq.4) then
         call VecSet(2, MQ2, psNorm, ex,ey,ez)
      else
         call VecSet(1, MQ2, psNorm, ex,ey,ez)
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
      call VecSet(4, MZ, psNorm, ex,ey,ez)
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
      call setDelta(1D-5)      ! Test UV finiteness
#endif

      call calcRenConst
      fc_result(1) = 0.D0       ! born
      fc_result(2) = 0.D0       ! virtual amplitude

      if(wtype.eq.-1) then      ! H Z W- production
         if((vflav(1).eq.1.and.vflav(2).eq.-2).or.
     .        (vflav(1).eq.-2.and.vflav(2).eq.1)) then ! d + ubar -> h + z + w-
            call dubar_SquaredME(fc_result, helicities, flags)
         else if((vflav(1).eq.1.and.vflav(2).eq.-4).or.
     .           (vflav(1).eq.-4.and.vflav(2).eq.1)) then ! d + cbar -> h + z + w-
            call dcbar_SquaredME(fc_result, helicities, flags)
         else if((vflav(1).eq.3.and.vflav(2).eq.-2).or.
     .           (vflav(1).eq.-2.and.vflav(2).eq.3)) then ! s + ubar -> h + z + w-
            call subar_SquaredME(fc_result, helicities, flags)
         else if((vflav(1).eq.3.and.vflav(2).eq.-4).or.
     .           (vflav(1).eq.-4.and.vflav(2).eq.3)) then ! s + cbar -> h + z + w-
            call scbar_SquaredME(fc_result, helicities, flags)
         else
            print*, "ERROR: Wrong flavor structure in subr. setvirtual."
            print*, "vflav(1) = ", vflav(1)
            print*, "vflav(2) = ", vflav(2)
            stop
         endif
      else                      ! H Z W+ production
         if((vflav(1).eq.-1.and.vflav(2).eq.2).or.
     .        (vflav(1).eq.2.and.vflav(2).eq.-1)) then ! dbar + u -> h + z + w+
            call dbaru_SquaredME(fc_result, helicities, flags)
         else if((vflav(1).eq.-1.and.vflav(2).eq.4).or.
     .           (vflav(1).eq.4.and.vflav(2).eq.-1)) then ! dbar + c -> h + z + w+
            call dbarc_SquaredME(fc_result, helicities, flags)
         else if((vflav(1).eq.-3.and.vflav(2).eq.2).or.
     .           (vflav(1).eq.2.and.vflav(2).eq.-3)) then ! sbar + u -> h + z + w+
            call sbaru_SquaredME(fc_result, helicities, flags)
         else if((vflav(1).eq.-3.and.vflav(2).eq.4).or.
     .           (vflav(1).eq.4.and.vflav(2).eq.-3)) then ! sbar + c -> h + z + w+
            call sbarc_SquaredME(fc_result, helicities, flags)
         else
            print*, "ERROR: Wrong flavor structure in subr. setvirtual."
            print*, "vflav(1) = ", vflav(1)
            print*, "vflav(2) = ", vflav(2)
            stop
         endif
      endif
      avgfac=1.d0/36.d0

      fcborn    = fc_result(1)*avgfac
      virtual   = fc_result(2)*avgfac ! = 2 x Re[M_tree* x M_1-loop], FC8Guid.pdf p.48
        
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
