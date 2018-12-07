c############### Virtuals.f ############################################
c Higgs + Z pair production in the SM
c virtual corrections at NLO QCD
c parton parton -> higgs + Z + Z
c adapted from private dislepton by Matthias Kesenheimer
c last modified by Julien Baglio, 23/03/2015

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
      double precision born, virtual, ampvirt
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
      vflav(1) =  1
      vflav(2) = -1
      vflav(3) =  25
      vflav(4) =  23
      vflav(5) =  23
c$$$      p(0,1) = 365.11617697737603d0
c$$$      p(1,1) =  0d0
c$$$      p(2,1) =  0d0
c$$$      p(3,1) =  365.11617697737603d0
c$$$      p(0,2) =  365.11617697737603d0
c$$$      p(1,2) =  0d0
c$$$      p(2,2) =  0d0
c$$$      p(3,2) = -365.11617697737603d0
c$$$      p(0,3) =  203.36050279653136d0
c$$$      p(1,3) = -97.088116423590549d0
c$$$      p(2,3) =  8.7162606610141147d0
c$$$      p(3,3) =  127.38905847349740d0
c$$$      p(0,4) =  337.30770661832810d0
c$$$      p(1,4) =  220.17092183011687d0
c$$$      p(2,4) =  0d0
c$$$      p(3,4) = -238.71756477233222d0
c$$$      p(0,5) =  189.56414453989260d0
c$$$      p(1,5) = -123.08280540652638d0
c$$$      p(2,5) = -8.7162606610141147d0
c$$$      p(3,5) =  111.32850629883485d0
c other test, in COM:
      p(0,1) =  189.54154978816484d0
      p(1,1) =  0.d0
      p(2,1) =  0.d0
      p(3,1) =  189.54154978816484d0
      p(0,2) =  189.54154978816484d0
      p(1,2) =  0.d0
      p(2,2) =  0.d0
      p(3,2) = -189.54154978816484d0
      p(0,3) =  157.91166119755542d0
      p(1,3) = -31.424542783722778d0
      p(2,3) =  1.9806630694235718d0
      p(3,3) =  91.212213145011020d0
      p(0,4) =  117.53732140599629d0
      p(1,4) =  56.019176804166854d0
      p(2,4) =  0.d0
      p(3,4) = -48.597277287107111d0
      p(0,5) =  103.63411697277797d0
      p(1,5) = -24.594634020444076d0
      p(2,5) = -1.9806630694235718d0
      p(3,5) = -42.614935857903902d0
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
c#ifdef DEBUGQ
#ifdef DEBUGV
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
      if(abs(vflav(1)).eq.2.or.abs(vflav(1)).eq.4) MQ=MU
      if(abs(vflav(1)).eq.1.or.abs(vflav(1)).eq.3) MQ=MD
      if(abs(vflav(1)).eq.5) MQ=MB

      ! calculate unit vectors
      psNorm=dsqrt(p(1,1)**2+p(2,1)**2+p(3,1)**2)
      ex=p(1,1)/psNorm
      ey=p(2,1)/psNorm
      ez=p(3,1)/psNorm
      call VecSet(1, MQ, psNorm, ex,ey,ez)
      psNorm=dsqrt(p(1,2)**2+p(2,2)**2+p(3,2)**2)
      ex=p(1,2)/psNorm
      ey=p(2,2)/psNorm
      ez=p(3,2)/psNorm
      call VecSet(2, MQ, psNorm, ex,ey,ez)
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
      call VecSet(5, MZ, psNorm, ex,ey,ez)
      
#ifdef CHECKUV
      ! test for finiteness, lambda operates also as IR-cutoff
      ! call setMuDim(1D100)
      print*,"CHECK UV-F"
      call setuvdiv(1d0)
      call setDelta(1D-10)      ! Test UV finiteness
#endif

      call calcRenConst
      fc_result(1) = 0.D0       ! born
      fc_result(2) = 0.D0       ! virtual amplitude

      MU2=0d0
      MD2=0d0
      if(abs(vflav(1)).eq.2) then ! u + ubar -> h + z + z
         call uubar_SquaredME(fc_result, helicities, flags)
      else if(abs(vflav(1)).eq.1) then ! d + dbar -> h + z + z
         call ddbar_SquaredME(fc_result, helicities, flags)
      else if(abs(vflav(1)).eq.4) then ! c + cbar -> h + z + z
         call uubar_SquaredME(fc_result, helicities, flags)
      else if(abs(vflav(1)).eq.3) then ! s + sbar -> h + z + z
         call ddbar_SquaredME(fc_result, helicities, flags)
      else if(abs(vflav(1)).eq.5) then ! b + bbar -> h + z + z
         call ddbar_SquaredME(fc_result, helicities, flags)
      else
         print*, "ERROR: Wrong flavor structure in subr. setvirtual."
         print*, "vflav(1) = ", vflav(1)
         stop
      endif

      avgfac=1.d0/36.d0

      born    = fc_result(1)*avgfac/2d0
      virtual = fc_result(2)*avgfac/2d0 ! = 2 x Re[M_tree* x M_1-loop], FC8Guid.pdf p.48
        
      ampvirt = virtual*2d0*pi  ! FormCalc Alfas = 1
        
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
         print*, "born           = ", born
         print*, "2*Born*Virtual = ", ampvirt
         print*
      end if

#ifdef DSTOP
      stop
#endif
        
      end

c############### end subroutine setvirtual #############################
