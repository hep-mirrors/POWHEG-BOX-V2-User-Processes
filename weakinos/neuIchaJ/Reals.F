c############### Reals.f ###############################################
c last modified by MK, 04.05.2016
c weakino pair production

c############### subroutine setreal ####################################
c NOTE: with flag DSUB_II defined, this routine only calculates the 
c real contributions without the resonant matrix element squared:
c |M_NR|**2 + 2 M_R* M_NR.
c The remaining terms and the on-shell counter terms are added back
c in subroutine setosresreal:
c |M_R|**2 - BW*corrfac*|M_R^OS|**2.
      subroutine setreal(p,rflav,ampreal)
        implicit none
#include "PhysPars.h"
#include "nlegborn.h"
#include "pwhg_flst.h"
#include "pwhg_math.h"
#include "pwhg_st.h"
#include "Flags.h"
#include "osres.h"
        double precision p(0:3,nlegreal),p_in(0:3,nlegreal)
        integer rflav(nlegreal), dflav(nlegreal)
        ! the real amplitudes
        double precision ampreal
        double precision amp
        ! function to calculate the squared momentum sum
        double precision momsum2sq
        external momsum2sq
        ! kinematics
        double precision s12
        ! check 4-momentum conservation
        logical lresult
        ! initialization variables
        logical verbose
        logical init_real
        data init_real/.true./

        if (init_real) then
           print*
           print*, "=== Init real... ==="
           verbose = .true.
           init_real = .false.
        else
           verbose = .false.
        endif

        ! store flavor list and momenta
        dflav = rflav
        p_in(:,:) = p(:,:)
        
        if (.not.( (abs(rflav(2)).eq.abs(rflav(1)))
     &      .or.   (abs(rflav(2)+rflav(1)).eq.1)
     &      .or.   (rflav(2).ne.0)
     &      .or.   (rflav(1).ne.0)   )) then
           print*,"the current Real subprocess is ",rflav
           print*,"check your settings in init_processes"
           stop
        endif
        
        ! check four momentum conservation
        call check_4conservation(p, nlegborn+1, 1, lresult)
        
        ! calculate the couplings for this PS point
        call set_ebe_couplings
        
        ! get the real amplitude from MadGraph
        call sreal_proc(p,rflav,amp)

        ! Cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
        ampreal = amp/(st_alpha/(2d0*pi))

        if(isnan(ampreal)) then
          !print*,"got strange value for ampreal amplitude...",ampreal
          ampreal = 0D0
        endif
        
        if (verbose) then
          s12 = momsum2sq(p(0:3,1),p(0:3,2)) ! invariant mass of particle 1 + 2
          print*, "process = ", rflav
          print*, "s12  = ", s12
          print*, "Real amplitude = ", ampreal
          print*
        end if
        
        ! restore flavor list
        rflav = dflav
        p(:,:) = p_in(:,:)
      end
c############### end subroutine setreal ################################