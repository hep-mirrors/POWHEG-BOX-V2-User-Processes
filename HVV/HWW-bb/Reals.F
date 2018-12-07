c############### Reals.f ###############################################
c Higgs + W pair production in the SM
c real emission contributions at NLO QCD:
c parton parton -> higgs + W+ + W- + parton
c last modified by Julien Baglio, 25/03/2015

c############### subroutine setreal ####################################
c average over incoming helicites
      subroutine setreal(p,rflav,amp2real)
      implicit none

#include "PhysPars.h"
#include "nlegborn.h"
#include "pwhg_flst.h"
#include "pwhg_math.h"
#include "pwhg_st.h"

      double precision p(0:3,nlegreal)
      integer rflav(nlegreal)
      ! the real amplitudes
      double precision amp2real
      double precision amp2
      ! function to calculate the squared momentum sum
      double precision momsum3sq, momsum2sq
      ! kinematics debug variables
      double precision s126, s12, s26, s16
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
        
#ifdef DEBUGQ
      verbose = .true.
#endif
        
      if ( (rflav(2).ne.-rflav(1)) .and. (rflav(2).ne.0) .and.
     &     (rflav(1).ne.0)   ) then
         print*,"the current Real subprocess is ",rflav
         print*,"check your settings in init_processes"
         stop
      endif
        
      if(verbose) then
         ! calculate kinematics only for debug purpose
         s126 = momsum3sq(p(0:3,1),p(0:3,2),p(0:3,6)) ! invariant mass of particle 1 + 2 + 6
         s12  = momsum2sq(p(0:3,1),p(0:3,2)) ! invariant mass of particle 1 + 2
         s26  = momsum2sq(p(0:3,2),p(0:3,5)) ! invariant mass of particle 2 + 6
         s16  = momsum2sq(p(0:3,1),p(0:3,5)) ! invariant mass of particle 1 + 6
      endif
        
      ! check five momentum conservation
      call check_5conservation(p, nlegreal)
      call set_ebe_couplings
      
      call sreal_proc(p,rflav,amp2)

      ! Cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2real = amp2/(st_alpha/(2d0*pi))

      if (verbose) then
         print*, "process = ", rflav
         print*, "s126 = ", s126
         print*, "s12  = ", s12
         print*, "s26  = ", s26 
         print*, "s16  = ", s16
         print*, "Real amplitude = ", amp2real
         print*
      end if

      end
c############### end subroutine setreal ################################


c############### subroutine real_color #################################
c Wrapper subroutine to call the MadGraph code to associate
c a (leading) color structure to an event.
      subroutine realcolour_lh
      implicit none
#include "nlegborn.h"
#include "LesHouches.h"
      integer rflav(nlegreal),color(2,nlegreal)
      integer i,j

      do i=1,nlegreal
         rflav(i)=idup(i)
         if (rflav(i).eq.21) rflav(i)=0
      enddo

      call real_color(rflav,color)

      do i=1,2
         do j=1,nlegreal
            icolup(i,j)=color(i,j)
         enddo
      enddo

      end
c############### end subroutine real_color #############################
