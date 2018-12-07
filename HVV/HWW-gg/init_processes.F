c############### init_process.F ########################################
c last modified by Julien Baglio, 25/03/2015

!############### Subroutine init_processes #############################

      subroutine init_processes
      implicit none

#include "nlegborn.h"
#include "pwhg_flst.h"
#include "pwhg_flg.h"
c#include "LesHouches.h"
#include "pwhg_st.h"

      double precision powheginput
      external powheginput
      integer i
          
      print*
      print*, "###################################################"
      print*, "# POWHEG: gg -> H + W pair production in the SM   #"
      print*, "###################################################"
      print* 

      call init_processes_born
      call init_processes_real

      flst_lightpart=6
        
      st_nlight = 5
      print*,"number of light quarks in alphaS:",st_nlight

c      call init_couplings

      flg_LOevents=.true.
      flg_bornonly=.true.

        
      end

!############### end subroutine init_processes #########################
 
!############### subroutine init_processes_born ########################
 
      subroutine init_processes_born
      implicit none

#include "nlegborn.h"
#include "pwhg_flst.h"

      flst_born(   1,   1)=           0
      flst_born(   2,   1)=           0
      flst_born(   3,   1)=          25
      flst_born(   4,   1)=          24
      flst_born(   5,   1)=         -24
 
      flst_nborn  = 1
              
      end
 
!############### end subroutine init_processes_born ####################

!############### subroutine init_processes_real ########################

      subroutine init_processes_real
      implicit none

#include "nlegborn.h"
#include "pwhg_flst.h"

      flst_nreal = 0
     
      end
 
!############### end subroutine init_processes_real ####################
