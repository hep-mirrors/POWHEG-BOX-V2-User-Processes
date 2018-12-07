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
      if(wtype.eq.-1) then
c- W-:
         bflav(1) =  1
         bflav(2) = -2
         bflav(3) =  25
         bflav(4) =  23
         bflav(5) = -24
c
c- W+:
      else
         bflav(1) = -1
         bflav(2) =  2
         bflav(3) =  25
         bflav(4) =  23
         bflav(5) =  24
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
