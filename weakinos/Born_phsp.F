c############### Born_phsp.f ###########################################
c last modified by MK, 04.05.2016
c weakino pair production

c############### subroutine born_phsp ##################################
c fills the four-momenta of the Born-process particles,
c both in the laboratory and in the center-of-mass frame,
c the Bjorken x of the two incoming partons,
c the partonic Mandelstam variable s,
c the masses for Born and real emission,
c and the Jacobi factor for the phase space volume
      subroutine born_phsp(xborn)
        implicit none
#include "PhysPars.h"
#include "nlegborn.h"
#include "pwhg_kn.h"
#include "pwhg_math.h"
        ! input:
        double precision xborn(ndiminteg-3)
        ! output, local variables:
        double precision vec(3),beta
        ! jacobian
        double precision jac
        double precision MassQ1, MassQ2, MassF1, MassF2
        double precision p12(0:3)
        integer nu
        ! check 4-momentum conservation
        logical lresult

        ! reset the jacobians
        jac = 1D0
        kn_jacborn = 1d0

        ! set masses for Born and real emission
        kn_masses(1) = 0d0
        kn_masses(2) = 0d0
        kn_masses(3) = dabs(par_Fin1mass)
        kn_masses(4) = dabs(par_Fin2mass)
        kn_masses(5) = 0d0

        ! lower bound on the mass of the final state
        kn_minmass = kn_masses(3) + kn_masses(4)

        ! calculate the parton momentum fractions kn_xb1, kn_xb2
        ! the squared CM energy of the Born process sborn
        ! and the jacobi factor of the PS volume
        call x1x2phspace(2,kn_sbeams,kn_minmass,xborn(1:2),kn_xb1,kn_xb2,
     &                   kn_sborn,jac)
        kn_jacborn = kn_jacborn*jac

        ! center of mass momenta
        kn_cmpborn(0,1) =  dsqrt(kn_sborn)/2d0
        kn_cmpborn(1,1) =  0d0
        kn_cmpborn(2,1) =  0d0
        kn_cmpborn(3,1) =  kn_cmpborn(0,1)
        
        kn_cmpborn(0,2) =  kn_cmpborn(0,1)
        kn_cmpborn(1,2) =  0d0
        kn_cmpborn(2,2) =  0d0
        kn_cmpborn(3,2) = -kn_cmpborn(0,1)

        p12(:) = kn_cmpborn(:,1) + kn_cmpborn(:,2)

        ! generate four-momenta in the cms frame
        ! for the particles produced in the Born process,
        ! calculates the Jacobi factor for the phase space volume
        ! we don't want to integrate over phi, so we provide 0 for xphi
        ! (see phi1_2.f)
        call R2phsp(xborn(3),0D0,kn_masses(3),kn_masses(4),p12,
     &               kn_cmpborn(:,3),kn_cmpborn(:,4),jac)
        kn_jacborn = kn_jacborn*jac
        
        ! physical phase space jacobian ((2*Pi)**(3n-4), n=2)
        kn_jacborn = kn_jacborn/(2D0*pi)**2

        ! velocity of subsystem in laboratory frame
        beta = (kn_xb1-kn_xb2)/(kn_xb1+kn_xb2)

        ! set up boost vector
        vec(1) = 0D0
        vec(2) = 0D0
        vec(3) = 1D0

        ! calculate momenta kn_pborn in the laboratory frame
        ! boost kn_cmpborn (CM) -> kn_pborn (lab. frame)
        call mboost(nlegborn-2,vec,beta,kn_cmpborn(0,3),kn_pborn(0,3))

        do nu=0,3
           kn_pborn(nu,1) = kn_xb1*kn_beams(nu,1)
           kn_pborn(nu,2) = kn_xb2*kn_beams(nu,2)
        enddo

        ! check four momentum conservation
        call check_4conservation(kn_pborn,nlegborn,2,lresult)
        if(.not.lresult) kn_jacborn = 0D0
      end
c############### end subroutine born_phsp ##############################

c############### subroutine born_suppression ###########################
      subroutine born_suppression(fact)
        implicit none
#include "nlegborn.h"
        double precision fact
        double precision powheginput
        external powheginput
        logical init
        data init/.true./
        save init
        
        if (init) then
           if(powheginput("#bornsuppfact").gt.0) then
              fact = powheginput("bornsuppfact")
              print*, "Using Born suppression factor ", fact
           else if(powheginput("#ptsupp").gt.0) then
              fact = powheginput("ptsupp")
              print*, "WARNING: ptsupp is deprecated"
              print*, "Replace it with bornsuppfact"
           else
              fact = 1d0  
           endif
           init=.false.
        endif
        if(fact.le.0d0) fact = 1d0
      end
c############### end subroutine born_suppression #######################

c############### subroutine set_fac_ren_scales #########################
      subroutine set_fac_ren_scales(muf1,mur1)
        implicit none
#include "PhysPars.h"
#include "nlegborn.h"
#include "pwhg_kn.h"
#include "pwhg_st.h"
        ! renamed to prevent conflicts with madgraph parameter mur
        double precision muf1,mur1
        double precision muref
        double precision kn34(0:3)
        logical init
        data init/.true./
        logical runningscale
        save runningscale
        double precision powheginput
        external powheginput

        if(init) then
           if(powheginput("#runningscale").gt.0) then
              if (powheginput("runningscale").ne.1) then
                 print*, "you set runningscale to ", runningscale
                 print*, "this runningscale value is not allowed"
                 stop
              endif
              runningscale = .true.
           else
              runningscale = .false.
           endif
        endif
        
        if (runningscale) then
           kn34(:) = kn_pborn(:,3)+kn_pborn(:,4)
           muref = dsqrt(dabs(kn34(0)**2-kn34(1)**2
     &                      -kn34(2)**2-kn34(3)**2))
        else
           muref = dabs(par_Fin1mass) + dabs(par_Fin2mass)
        endif

        if (init) then
          print*
          print*, "===================================================="
          print*, "Factorization and renormalization scales:"
          if (runningscale) then
            print*, "using running scale and"
            print*, "invariant mass of neutralinos for muref"
          else
            print*, "using fixed scale and"
            print*, "sum of neutralino masses for muref"
            print*, "muref = ", muref
          endif
          ! NOTE: scales will be multiplied (outside of this function) by
          ! an additional factor if renscfact or facscfact is set > 0
          ! in powheg.input
          print*, "muren = muref * ", st_renfact
          print*, "mufac = muref * ", st_facfact
          print*, "===================================================="
          init = .false.
        endif

        muref = max(muref,dsqrt(2d0))  ! avoid too small values of the scales

        muf1 = muref
        mur1 = muref
      end
c############### end subroutine set_fac_ren_scales #####################
