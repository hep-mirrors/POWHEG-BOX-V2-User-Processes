c############### init_process.F ########################################
c last modified by Julien Baglio, 27/03/2015

!############### Subroutine init_processes #############################

      subroutine init_processes
      implicit none

#include "nlegborn.h"
#include "pwhg_flst.h"
c#include "LesHouches.h"
#include "pwhg_st.h"

      double precision powheginput
      external powheginput
      integer i,Nfin 
        
      Nfin = 4 ! number of flavor in the initial state, just for debugging purpose
      
      if(powheginput("#wtype").lt.0) then
         stop "W+/W- selection is missing, program terminated!!"
      endif
      if(powheginput("wtype").eq.0) then
         wtype=-1
      else
         wtype=powheginput("wtype")
      endif

      print*
      print*, "###################################################"
      if(wtype.eq.-1) then ! W-Z production
         print*, "# POWHEG: Higgs + Z + W- production in the SM     #"
      else                 ! W+Z production
         print*, "# POWHEG: Higgs + Z + W+ production in the SM     #"
      endif
      print*, "###################################################"
      print* 
      print*, "number of incoming quark flavors: ", Nfin

      call init_processes_born(Nfin)
      call init_processes_real(Nfin)

      ! index of the first coloured particle in the final state for all
      ! real processes (all subsequent particles are coloured)
c$$$      do i=3,nlegreal
c$$$         if (abs(flst_real(i,1)).le.st_nlight) then
c$$$            flst_lightpart=i
c$$$            exit
c$$$         endif
c$$$      enddo
      flst_lightpart=6
        
      st_nlight = 5
      print*,"number of light quarks in alphaS:",st_nlight

      call init_couplings
        
      end

!############### end subroutine init_processes #########################
 
!############### subroutine init_processes_born ########################
 
      subroutine init_processes_born(Nfin)
      implicit none

#include "nlegborn.h"
#include "pwhg_flst.h"

      integer Nfin
      
      if(wtype.eq.-1) then ! W-Z production
         flst_born(   1,   1)=           1
         flst_born(   2,   1)=          -2
         flst_born(   3,   1)=          25
         flst_born(   4,   1)=          23
         flst_born(   5,   1)=         -24
 
         flst_born(   1,   2)=           1
         flst_born(   2,   2)=          -4
         flst_born(   3,   2)=          25
         flst_born(   4,   2)=          23
         flst_born(   5,   2)=         -24
 
         flst_born(   1,   3)=          -2
         flst_born(   2,   3)=           1
         flst_born(   3,   3)=          25
         flst_born(   4,   3)=          23
         flst_born(   5,   3)=         -24
 
         flst_born(   1,   4)=          -2
         flst_born(   2,   4)=           3
         flst_born(   3,   4)=          25
         flst_born(   4,   4)=          23
         flst_born(   5,   4)=         -24
 
         flst_born(   1,   5)=          -4
         flst_born(   2,   5)=           1
         flst_born(   3,   5)=          25
         flst_born(   4,   5)=          23
         flst_born(   5,   5)=         -24
 
         flst_born(   1,   6)=          -4
         flst_born(   2,   6)=           3
         flst_born(   3,   6)=          25
         flst_born(   4,   6)=          23
         flst_born(   5,   6)=         -24
 
         flst_born(   1,   7)=           3
         flst_born(   2,   7)=          -2
         flst_born(   3,   7)=          25
         flst_born(   4,   7)=          23
         flst_born(   5,   7)=         -24
 
         flst_born(   1,   8)=           3
         flst_born(   2,   8)=          -4
         flst_born(   3,   8)=          25
         flst_born(   4,   8)=          23
         flst_born(   5,   8)=         -24
      else                 ! W+Z production
         flst_born(   1,   1)=          -1
         flst_born(   2,   1)=           2
         flst_born(   3,   1)=          25
         flst_born(   4,   1)=          23
         flst_born(   5,   1)=          24
 
         flst_born(   1,   2)=          -1
         flst_born(   2,   2)=           4
         flst_born(   3,   2)=          25
         flst_born(   4,   2)=          23
         flst_born(   5,   2)=          24
 
         flst_born(   1,   3)=           2
         flst_born(   2,   3)=          -1
         flst_born(   3,   3)=          25
         flst_born(   4,   3)=          23
         flst_born(   5,   3)=          24
 
         flst_born(   1,   4)=           2
         flst_born(   2,   4)=          -3
         flst_born(   3,   4)=          25
         flst_born(   4,   4)=          23
         flst_born(   5,   4)=          24
 
         flst_born(   1,   5)=           4
         flst_born(   2,   5)=          -1
         flst_born(   3,   5)=          25
         flst_born(   4,   5)=          23
         flst_born(   5,   5)=          24
 
         flst_born(   1,   6)=           4
         flst_born(   2,   6)=          -3
         flst_born(   3,   6)=          25
         flst_born(   4,   6)=          23
         flst_born(   5,   6)=          24
 
         flst_born(   1,   7)=          -3
         flst_born(   2,   7)=           2
         flst_born(   3,   7)=          25
         flst_born(   4,   7)=          23
         flst_born(   5,   7)=          24
 
         flst_born(   1,   8)=          -3
         flst_born(   2,   8)=           4
         flst_born(   3,   8)=          25
         flst_born(   4,   8)=          23
         flst_born(   5,   8)=          24
      endif
 
      if(NFin .eq. 4 ) then
         flst_nborn  = 8
      else
         print*, "Can't handle less then 4 incoming flavors."
         stop
      endif
        
      end
 
!############### end subroutine init_processes_born ####################

!############### subroutine init_processes_real ########################

      subroutine init_processes_real(Nfin)
      implicit none

#include "nlegborn.h"
#include "pwhg_flst.h"

      integer Nfin

      if(wtype.eq.-1) then !W-Z production
         flst_real(   1,   1)=           1
         flst_real(   2,   1)=          -2
         flst_real(   3,   1)=          25
         flst_real(   4,   1)=          23
         flst_real(   5,   1)=         -24
         flst_real(   6,   1)=           0
 
         flst_real(   1,  2)=           1
         flst_real(   2,  2)=          -4
         flst_real(   3,  2)=          25
         flst_real(   4,  2)=          23
         flst_real(   5,  2)=         -24
         flst_real(   6,  2)=           0
 
         flst_real(   1,  3)=           1
         flst_real(   2,  3)=           0
         flst_real(   3,  3)=          25
         flst_real(   4,  3)=          23
         flst_real(   5,  3)=         -24
         flst_real(   6,  3)=           2
 
         flst_real(   1,  4)=           1
         flst_real(   2,  4)=           0
         flst_real(   3,  4)=          25
         flst_real(   4,  4)=          23
         flst_real(   5,  4)=         -24
         flst_real(   6,  4)=           4
 
         flst_real(   1,  5)=          -2
         flst_real(   2,  5)=           1
         flst_real(   3,  5)=          25
         flst_real(   4,  5)=          23
         flst_real(   5,  5)=         -24
         flst_real(   6,  5)=           0
 
         flst_real(   1,  6)=          -2
         flst_real(   2,  6)=           3
         flst_real(   3,  6)=          25
         flst_real(   4,  6)=          23
         flst_real(   5,  6)=         -24
         flst_real(   6,  6)=           0
 
         flst_real(   1,  7)=          -2
         flst_real(   2,  7)=           0
         flst_real(   3,  7)=          25
         flst_real(   4,  7)=          23
         flst_real(   5,  7)=         -24
         flst_real(   6,  7)=          -1
 
         flst_real(   1,  8)=          -2
         flst_real(   2,  8)=           0
         flst_real(   3,  8)=          25
         flst_real(   4,  8)=          23
         flst_real(   5,  8)=         -24
         flst_real(   6,  8)=          -3
 
         flst_real(   1,  9)=          -4
         flst_real(   2,  9)=           1
         flst_real(   3,  9)=          25
         flst_real(   4,  9)=          23
         flst_real(   5,  9)=         -24
         flst_real(   6,  9)=           0
 
         flst_real(   1,  10)=          -4
         flst_real(   2,  10)=           3
         flst_real(   3,  10)=          25
         flst_real(   4,  10)=          23
         flst_real(   5,  10)=         -24
         flst_real(   6,  10)=           0
 
         flst_real(   1,  11)=          -4
         flst_real(   2,  11)=           0
         flst_real(   3,  11)=          25
         flst_real(   4,  11)=          23
         flst_real(   5,  11)=         -24
         flst_real(   6,  11)=          -1
 
         flst_real(   1,  12)=          -4
         flst_real(   2,  12)=           0
         flst_real(   3,  12)=          25
         flst_real(   4,  12)=          23
         flst_real(   5,  12)=         -24
         flst_real(   6,  12)=          -3
 
         flst_real(   1,  13)=           3
         flst_real(   2,  13)=          -2
         flst_real(   3,  13)=          25
         flst_real(   4,  13)=          23
         flst_real(   5,  13)=         -24
         flst_real(   6,  13)=           0
 
         flst_real(   1,  14)=           3
         flst_real(   2,  14)=          -4
         flst_real(   3,  14)=          25
         flst_real(   4,  14)=          23
         flst_real(   5,  14)=         -24
         flst_real(   6,  14)=           0
 
         flst_real(   1,  15)=           3
         flst_real(   2,  15)=           0
         flst_real(   3,  15)=          25
         flst_real(   4,  15)=          23
         flst_real(   5,  15)=         -24
         flst_real(   6,  15)=           2
 
         flst_real(   1,  16)=           3
         flst_real(   2,  16)=           0
         flst_real(   3,  16)=          25
         flst_real(   4,  16)=          23
         flst_real(   5,  16)=         -24
         flst_real(   6,  16)=           4
 
         flst_real(   1,  17)=           0
         flst_real(   2,  17)=           1
         flst_real(   3,  17)=          25
         flst_real(   4,  17)=          23
         flst_real(   5,  17)=         -24
         flst_real(   6,  17)=           2
 
         flst_real(   1,  18)=           0
         flst_real(   2,  18)=           1
         flst_real(   3,  18)=          25
         flst_real(   4,  18)=          23
         flst_real(   5,  18)=         -24
         flst_real(   6,  18)=           4
 
         flst_real(   1,  19)=           0
         flst_real(   2,  19)=          -2
         flst_real(   3,  19)=          25
         flst_real(   4,  19)=          23
         flst_real(   5,  19)=         -24
         flst_real(   6,  19)=          -1
 
         flst_real(   1,  20)=           0
         flst_real(   2,  20)=          -2
         flst_real(   3,  20)=          25
         flst_real(   4,  20)=          23
         flst_real(   5,  20)=         -24
         flst_real(   6,  20)=          -3
 
         flst_real(   1,  21)=           0
         flst_real(   2,  21)=          -4
         flst_real(   3,  21)=          25
         flst_real(   4,  21)=          23
         flst_real(   5,  21)=         -24
         flst_real(   6,  21)=          -1
 
         flst_real(   1,  22)=           0
         flst_real(   2,  22)=          -4
         flst_real(   3,  22)=          25
         flst_real(   4,  22)=          23
         flst_real(   5,  22)=         -24
         flst_real(   6,  22)=          -3
 
         flst_real(   1,  23)=           0
         flst_real(   2,  23)=           3
         flst_real(   3,  23)=          25
         flst_real(   4,  23)=          23
         flst_real(   5,  23)=         -24
         flst_real(   6,  23)=           2
 
         flst_real(   1,  24)=           0
         flst_real(   2,  24)=           3
         flst_real(   3,  24)=          25
         flst_real(   4,  24)=          23
         flst_real(   5,  24)=         -24
         flst_real(   6,  24)=           4
      else                 ! W+Z production
         flst_real(   1,   1)=          -1
         flst_real(   2,   1)=           2
         flst_real(   3,   1)=          25
         flst_real(   4,   1)=          23
         flst_real(   5,   1)=          24
         flst_real(   6,   1)=           0
 
         flst_real(   1,   2)=          -1
         flst_real(   2,   2)=           4
         flst_real(   3,   2)=          25
         flst_real(   4,   2)=          23
         flst_real(   5,   2)=          24
         flst_real(   6,   2)=           0
 
         flst_real(   1,   3)=          -1
         flst_real(   2,   3)=           0
         flst_real(   3,   3)=          25
         flst_real(   4,   3)=          23
         flst_real(   5,   3)=          24
         flst_real(   6,   3)=          -2
 
         flst_real(   1,   4)=          -1
         flst_real(   2,   4)=           0
         flst_real(   3,   4)=          25
         flst_real(   4,   4)=          23
         flst_real(   5,   4)=          24
         flst_real(   6,   4)=          -4
 
         flst_real(   1,   5)=           2
         flst_real(   2,   5)=          -1
         flst_real(   3,   5)=          25
         flst_real(   4,   5)=          23
         flst_real(   5,   5)=          24
         flst_real(   6,   5)=           0
 
         flst_real(   1,   6)=           2
         flst_real(   2,   6)=          -3
         flst_real(   3,   6)=          25
         flst_real(   4,   6)=          23
         flst_real(   5,   6)=          24
         flst_real(   6,   6)=           0
 
         flst_real(   1,   7)=           2
         flst_real(   2,   7)=           0
         flst_real(   3,   7)=          25
         flst_real(   4,   7)=          23
         flst_real(   5,   7)=          24
         flst_real(   6,   7)=           1
 
         flst_real(   1,   8)=           2
         flst_real(   2,   8)=           0
         flst_real(   3,   8)=          25
         flst_real(   4,   8)=          23
         flst_real(   5,   8)=          24
         flst_real(   6,   8)=           3
 
         flst_real(   1,   9)=           4
         flst_real(   2,   9)=          -1
         flst_real(   3,   9)=          25
         flst_real(   4,   9)=          23
         flst_real(   5,   9)=          24
         flst_real(   6,   9)=           0
 
         flst_real(   1,  10)=           4
         flst_real(   2,  10)=          -3
         flst_real(   3,  10)=          25
         flst_real(   4,  10)=          23
         flst_real(   5,  10)=          24
         flst_real(   6,  10)=           0
 
         flst_real(   1,  11)=           4
         flst_real(   2,  11)=           0
         flst_real(   3,  11)=          25
         flst_real(   4,  11)=          23
         flst_real(   5,  11)=          24
         flst_real(   6,  11)=           1
 
         flst_real(   1,  12)=           4
         flst_real(   2,  12)=           0
         flst_real(   3,  12)=          25
         flst_real(   4,  12)=          23
         flst_real(   5,  12)=          24
         flst_real(   6,  12)=           3
 
         flst_real(   1,  13)=          -3
         flst_real(   2,  13)=           2
         flst_real(   3,  13)=          25
         flst_real(   4,  13)=          23
         flst_real(   5,  13)=          24
         flst_real(   6,  13)=           0
 
         flst_real(   1,  14)=          -3
         flst_real(   2,  14)=           4
         flst_real(   3,  14)=          25
         flst_real(   4,  14)=          23
         flst_real(   5,  14)=          24
         flst_real(   6,  14)=           0
 
         flst_real(   1,  15)=          -3
         flst_real(   2,  15)=           0
         flst_real(   3,  15)=          25
         flst_real(   4,  15)=          23
         flst_real(   5,  15)=          24
         flst_real(   6,  15)=          -2
 
         flst_real(   1,  16)=          -3
         flst_real(   2,  16)=           0
         flst_real(   3,  16)=          25
         flst_real(   4,  16)=          23
         flst_real(   5,  16)=          24
         flst_real(   6,  16)=          -4

         flst_real(   1,  17)=           0
         flst_real(   2,  17)=          -1
         flst_real(   3,  17)=          25
         flst_real(   4,  17)=          23
         flst_real(   5,  17)=          24
         flst_real(   6,  17)=          -2
 
         flst_real(   1,  18)=           0
         flst_real(   2,  18)=          -1
         flst_real(   3,  18)=          25
         flst_real(   4,  18)=          23
         flst_real(   5,  18)=          24
         flst_real(   6,  18)=          -4
 
         flst_real(   1,  19)=           0
         flst_real(   2,  19)=           2
         flst_real(   3,  19)=          25
         flst_real(   4,  19)=          23
         flst_real(   5,  19)=          24
         flst_real(   6,  19)=           1
 
         flst_real(   1,  20)=           0
         flst_real(   2,  20)=           2
         flst_real(   3,  20)=          25
         flst_real(   4,  20)=          23
         flst_real(   5,  20)=          24
         flst_real(   6,  20)=           3
 
         flst_real(   1,  21)=           0
         flst_real(   2,  21)=           4
         flst_real(   3,  21)=          25
         flst_real(   4,  21)=          23
         flst_real(   5,  21)=          24
         flst_real(   6,  21)=           1
 
         flst_real(   1,  22)=           0
         flst_real(   2,  22)=           4
         flst_real(   3,  22)=          25
         flst_real(   4,  22)=          23
         flst_real(   5,  22)=          24
         flst_real(   6,  22)=           3
 
         flst_real(   1,  23)=           0
         flst_real(   2,  23)=          -3
         flst_real(   3,  23)=          25
         flst_real(   4,  23)=          23
         flst_real(   5,  23)=          24
         flst_real(   6,  23)=          -2
 
         flst_real(   1,  24)=           0
         flst_real(   2,  24)=          -3
         flst_real(   3,  24)=          25
         flst_real(   4,  24)=          23
         flst_real(   5,  24)=          24
         flst_real(   6,  24)=          -4
      endif

      if(NFin .eq. 4 ) then
         flst_nreal = 24
      else
         print*, "Can't handle less then 4 incoming flavors."
         stop
      endif
      
      end
 
!############### end subroutine init_processes_real ####################
