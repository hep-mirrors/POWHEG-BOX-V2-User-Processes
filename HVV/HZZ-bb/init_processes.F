c############### init_process.F ########################################
c last modified by Julien Baglio, 23/03/2015

!############### Subroutine init_processes #############################

      subroutine init_processes
      implicit none

#include "nlegborn.h"
#include "pwhg_flst.h"
c#include "LesHouches.h"
#include "pwhg_st.h"

      double precision powheginput
      external powheginput
      integer i
      
      print*
      print*, "###################################################"
      print*, "# POWHEG: Higgs + Z pair production in the SM     #"
      print*, "###################################################"
      print* 
c      print*, "number of incoming quark flavors: ", Nfin

      call init_processes_born
      call init_processes_real

      ! number of light quarks for alpha_s running:
      st_nlight = 5
      print*,"number of light quarks in alphaS:",st_nlight

      ! index of the first coloured particle in the final state for all
      ! real processes (all subsequent particles are coloured)
      do i=3,nlegreal
         if (abs(flst_real(i,1)).le.st_nlight) then
            flst_lightpart=i
            exit
         endif
      enddo
c      flst_lightpart=5

      
c     call init_couplings
        
      end

!############### end subroutine init_processes #########################
 
!############### subroutine init_processes_born ########################
 
      subroutine init_processes_born
      implicit none

#include "nlegborn.h"
#include "pwhg_flst.h"
      
      flst_born(   1,   1)=          -5
      flst_born(   2,   1)=           5
      flst_born(   3,   1)=          25
      flst_born(   4,   1)=          23
      flst_born(   5,   1)=          23
 
      flst_born(   1,   2)=           5
      flst_born(   2,   2)=          -5
      flst_born(   3,   2)=          25
      flst_born(   4,   2)=          23
      flst_born(   5,   2)=          23
 
      flst_nborn=           2
        
      end
 
!############### end subroutine init_processes_born ####################

!############### subroutine init_processes_real ########################

      subroutine init_processes_real
      implicit none

#include "nlegborn.h"
#include "pwhg_flst.h"

!     only bb~ and b~b initiated process
!     equivalent to a b-jet veto with 100% efficiency
!     to cut away resonant t-quark production

      flst_real(   1,   1)=          -5
      flst_real(   2,   1)=           5
      flst_real(   3,   1)=          25
      flst_real(   4,   1)=          23
      flst_real(   5,   1)=          23
      flst_real(   6,   1)=           0
 
      flst_real(   1,   2)=          -5
      flst_real(   2,   2)=           0
      flst_real(   3,   2)=          25
      flst_real(   4,   2)=          23
      flst_real(   5,   2)=          23
      flst_real(   6,   2)=          -5
 
      flst_real(   1,   3)=           5
      flst_real(   2,   3)=          -5
      flst_real(   3,   3)=          25
      flst_real(   4,   3)=          23
      flst_real(   5,   3)=          23
      flst_real(   6,   3)=           0
 
      flst_real(   1,   4)=           5
      flst_real(   2,   4)=           0
      flst_real(   3,   4)=          25
      flst_real(   4,   4)=          23
      flst_real(   5,   4)=          23
      flst_real(   6,   4)=           5
 
      flst_real(   1,   5)=           0
      flst_real(   2,   5)=          -5
      flst_real(   3,   5)=          25
      flst_real(   4,   5)=          23
      flst_real(   5,   5)=          23
      flst_real(   6,   5)=          -5
 
      flst_real(   1,   6)=           0
      flst_real(   2,   6)=           5
      flst_real(   3,   6)=          25
      flst_real(   4,   6)=          23
      flst_real(   5,   6)=          23
      flst_real(   6,   6)=           5
 
      flst_nreal=           6

      end
 
!############### end subroutine init_processes_real ####################
