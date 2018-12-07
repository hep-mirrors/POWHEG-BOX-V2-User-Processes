      subroutine setborn(p,bflav,ampvirt,bornjk,bmunu)
c Wrapper subroutine to call the FormCalc Virtual gg->HZZ
c and set the event-by-event couplings constant
      implicit none
#include "PhysPars.h"
#include "pwhg_st.h"
#include "pwhg_math.h"
#include "nlegborn.h"
#include "lt_collier.h"

      ! from const.h"
      double precision Divergence, mudim, lambda, muscale
      integer epsi
      common /renorm/ Divergence, mudim, lambda, muscale
      common /ltvars/ epsi

      double precision avgfac

      double precision ph2sqrt

      double precision p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      integer bflav(nlegborn)
      integer iloop,jloop,kloop
      double precision bmunu(0:3,0:3,nlegborn)
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
      logical passedtemp,passed
      ! status
      logical verbose
      logical init_born
      data init_born/.true./
      double precision ltlambda
      
      if (init_born) then
         print*
         print*, "=== Init leading order... ==="
         verbose = .true.
         init_born = .false.
      else
         verbose = .false.
      endif
        
#ifdef DEBUG
#define DSTOP
      verbose = .true.
#endif

      if ( bflav(2).ne.bflav(1) ) then
         print*,"the current leading order subprocess is ",bflav
         print*,"check your settings in init_processes"
         print*, "bflav(1) = ", bflav(1)
         print*, "bflav(2) = ", bflav(2)
         stop
      endif
        
      ! check five momentum conservation
      call check_5conservation(p, nlegborn)
      call set_ebe_couplings

      if(verbose) then
         ! calculate kinematics only for debug purpose
         s   = momsum2sq(p(0:3,1), p(0:3,2))
         t   = momsum2sq(p(0:3,1),-p(0:3,3))
         t14 = momsum2sq(p(0:3,1),-p(0:3,4))
         u   = momsum2sq(p(0:3,2),-p(0:3,3))
         t24 = momsum2sq(p(0:3,2),-p(0:3,4))
         s34 = momsum2sq(p(0:3,3), p(0:3,4))
      endif

      ! unpolarized particles: B01010 01010 00100 01110 01110
      helicities = 10817998
      ! flags: Bit0 (reset) = 1, Bit1 (loop) = 1 -> B11 = D3
      flags = 3

      ! set loop integral parameters; ltlambda=0 means IR-finite part of loop integrals
      ltlambda = 0d0
      call setparam_collier(0.d0,st_muren2,ltlambda)
      
      ! calculate unit vectors
      psNorm=dsqrt(p(1,1)**2+p(2,1)**2+p(3,1)**2)
      ex=p(1,1)/psNorm
      ey=p(2,1)/psNorm
      ez=p(3,1)/psNorm
      call VecSet(1, 0d0, psNorm, ex,ey,ez)
      psNorm=dsqrt(p(1,2)**2+p(2,2)**2+p(3,2)**2)
      ex=p(1,2)/psNorm
      ey=p(2,2)/psNorm
      ez=p(3,2)/psNorm
      call VecSet(2, 0d0, psNorm, ex,ey,ez)
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
#define DSTOP
c$$$      call setlambda(-2d0)
c$$$      epsi=getepsi()
c$$$      print*,"DEB",epsi,getepsi()
      call setparam_collier(1.D7,st_muren2,ltlambda)      ! Test UV finiteness
#endif

      fc_result(1) = 0.D0       ! fc born
      fc_result(2) = 0.D0       ! fc virtual amplitude

      if(bflav(1).eq.0) then    ! g + g -> h + w+ + w-
         passed=.true.
         passedtemp=.true.
         do iloop=3,nlegborn    ! technical cut to improve numerical stability
            do jloop=3,nlegborn
               if(iloop.ne.jloop) then
                  call ps_numerics_cuts(p(0,iloop),
     &                 p(0,jloop),passedtemp)
                  passed=passedtemp.and.passed
               endif
            enddo
         enddo
         if(passed) then
            call gg_SquaredME(fc_result, helicities, flags)
         endif
      else
         print*, "ERROR: Wrong flavor structure in subr. setborn."
         print*, "bflav(1) = ", bflav(1)
         stop
      endif

      avgfac=1.d0/256.d0

      fcborn    = fc_result(1)*avgfac/2.d0
      virtual   = fc_result(2)*avgfac/2.d0 ! = 2 x Re[M_tree* x M_1-loop], FC8Guid.pdf p.48
      ampvirt = virtual
      
      if(isnan(virtual)) then
         print*,"got strange value for virtual amplitude...", virtual
         stop
      endif


      do iloop=1,nlegborn
         do jloop=0,3
            do kloop=0,3
               bmunu(jloop,kloop,iloop)=0.d0
            enddo
         enddo
         do jloop=1,nlegborn
            bornjk(jloop,iloop)=0.d0
         enddo
      enddo
         
      if (verbose) then
         print*, "process: ", bflav
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

      subroutine borncolour_lh     
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structure, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface
      implicit none
#include "LesHouches.h"
#include "nlegborn.h"
#include "pwhg_flst.h"
c     neutral particles
      icolup(1,3)=0
      icolup(2,3)=0
      icolup(1,4)=0
      icolup(2,4)=0
      icolup(1,5)=0
      icolup(2,5)=0
c     colored particles
      if((idup(1).gt.0).and.(idup(2).lt.0)) then
         icolup(1,1)=501
         icolup(2,1)=0
         icolup(1,2)=0
         icolup(2,2)=501
      elseif((idup(1).lt.0).and.(idup(2).gt.0)) then
         icolup(1,1)=0
         icolup(2,1)=501
         icolup(1,2)=501
         icolup(2,2)=0
      elseif ((idup(1).eq.21).and.(idup(2).eq.21)) then
         icolup(1,1)=501
         icolup(2,1)=502
         icolup(1,2)=502
         icolup(2,2)=501         
      else
         write(*,*) ' invalid flavour'
         call pwhg_exit(-1)
      endif
      end


c################# subroutine finalize_lh ##############################
      subroutine finalize_lh
c Specify here if resonances need be written in the event file.
      implicit none
      end
c############### end subroutine finalize_lh ############################


      subroutine ps_numerics_cuts(p1,pj,passed)
      implicit none
#include "pwhg_math.h"
      double precision p1(0:3),pj(0:3)
      logical passed
c internal variable
      double precision kcut,kij,ktest
      double precision pTi,pTj
      double precision yi,yj
      double precision phii,phij
      double precision dy,dphi

      passed=.false.

      pTi=dsqrt(p1(1)**2+p1(2)**2)
      pTj=dsqrt(pj(1)**2+pj(2)**2)
      yi=dlog((p1(0)+p1(3))/(p1(0)-p1(3)))/2
      yj=dlog((pj(0)+pj(3))/(pj(0)-pj(3)))/2
      phii=atan2(p1(1),p1(2))
      phij=atan2(pj(1),pj(2))

      dphi=abs(phii-phij)
      dphi=min(dphi,2d0*pi-dphi)
      dy=yi-yj

      kij  = min(pTi,pTj)*dsqrt(dy**2+dphi**2)/0.6d0
      ktest=min(kij,pTi,pTj)

      kcut = 1d-2

      if((ktest-kcut).gt.0) passed=.true.

c      print*,"DEB kcut",passed,ktest,kij,pTi,pTj

      end subroutine
