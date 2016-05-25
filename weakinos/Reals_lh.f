c############### Reals_lh.f ############################################
c last modified by MK, 04.05.2016
c weakino pair productions

c############### subroutine realcolour_lh ##############################
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
c############### end subroutine realcolour_lh ##########################