      subroutine setborn(p,bflav,born,bornjk,bmunu)
c Wrapper subroutine to call the MadGraph Borns
c and set the event-by-event couplings constant
      implicit none
#include "nlegborn.h"
      double precision p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      integer bflav(nlegborn)
      integer iloop,jloop,kloop
      double precision bmunu(0:3,0:3,nlegborn),born
      ! function to calculate the squared momentum sum
      double precision momsum2sq
      ! kinematics for debug purpose
      double precision s, t, t14, u, t24, s34
      ! initialization variables 
      logical verbose
      logical init_born
      data init_born/.true./

      if (init_born) then
         print*
         print*, "=== Init born... ==="
         verbose = .true.
         init_born = .false.
      else
         verbose = .false.
      endif
        
#ifdef DEBUG
      verbose = .true.
      bflav(1) =  2
      bflav(2) = -2
      bflav(3) =  25
      bflav(4) =  24
      bflav(5) = -24
      p(0,1) =  3247.3516379310995d0
      p(1,1) =  0d0
      p(2,1) =  0d0
      p(3,1) =  3247.3516379310995d0
      p(0,2) =  3247.3516379310995d0
      p(1,2) =  0d0
      p(2,2) =  0d0
      p(3,2) = -3247.3516379310995d0
      p(0,3) =  1008.3269380727662d0
      p(1,3) = -37.791294139925583d0
      p(2,3) = -603.47340574433576d0
      p(3,3) = -797.94415887940568d0
      p(0,4) =  2807.5315814576611d0
      p(1,4) =  2642.3727706285804d0
      p(2,4) =  0d0
      p(3,4) =  945.32316353657484d0
      p(0,5) =  2678.8447563317714d0
      p(1,5) = -2604.5814764886545d0
      p(2,5) =  603.47340574433576d0
      p(3,5) = -147.37900465716916d0
#endif

      if ( bflav(2).ne.-bflav(1) ) then
         print*,"the current Born subprocess is ",bflav
         print*,"check your settings in init_processes"
         stop
      endif
        
      ! check five momentum conservation
      call check_5conservation(p, nlegborn)

#ifdef DEBUGQ
      verbose = .true.
#endif

      if(verbose) then
         ! calculate kinematics only for debug purpose
         s   = momsum2sq(p(0:3,1), p(0:3,2))
         t   = momsum2sq(p(0:3,1),-p(0:3,3))
         t14 = momsum2sq(p(0:3,1),-p(0:3,4))
         u   = momsum2sq(p(0:3,2),-p(0:3,3))
         t24 = momsum2sq(p(0:3,2),-p(0:3,4))
         s34 = momsum2sq(p(0:3,3), p(0:3,4))
      endif

      call set_ebe_couplings

      call sborn_proc(p,bflav,born,bornjk,bmunu)
         
      if (verbose) then
         print*, "process: ", bflav
         print*, "s     = ", s
         print*, "t     = ", t
         print*, "t14   = ", t14
         print*, "u     = ", u
         print*, "t24   = ", t24
         print*, "s34   = ", s34
         print*, "born  = ", born
         print*
      endif

      end

c############### subroutine borncolour_lh ##############################
c Wrapper subroutine to call the MadGraph code to associate
c a (leading) color structure to an event.

      subroutine borncolour_lh

        implicit none
        
#include "nlegborn.h"
#include "LesHouches.h"

        integer bflav(nlegborn),color(2,nlegborn)
        integer i,j
        do i=1,nlegborn
          bflav(i)=idup(i)
          if (bflav(i).eq.21) bflav(i)=0
        enddo
        call born_color(bflav,color)
        do i=1,2
          do j=1,nlegborn
            icolup(i,j)=color(i,j)
          enddo
        enddo
      end

c############### end subroutine borncolour_lh ##########################

c################# subroutine finalize_lh ##############################
      subroutine finalize_lh
c Specify here if resonances need be written in the event file.
      implicit none
      end
c############### end subroutine finalize_lh ############################
