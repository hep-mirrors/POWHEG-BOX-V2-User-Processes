c############### Born_lh.f #############################################
c last modified by MK, 04.05.2016

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
c############### end subroutine finalize_lh ############################

c############### subroutine borncolour_lh ##############################
c Sets up the resonances whose mass must be preserved
c on the Les Houches interface; not needed for weakino production.
      subroutine finalize_lh
        implicit none
      end
c############### end subroutine finalize_lh ############################
