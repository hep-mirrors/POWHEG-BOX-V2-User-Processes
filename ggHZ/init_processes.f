      subroutine init_processes
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "pwhg_flg.h"
      include "pwhg_st.h"
      include "coupl.inc"
      integer i
      real * 8 powheginput
      external powheginput

      call init_processes_born
      call init_processes_real

      st_nlight=5

      call init_couplings

      flst_lightpart=6


c$$$CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c$$$      if (powheginput("#LOevents").eq.1) then
c$$$         flg_LOevents=.false.
c$$$         flg_bornonly=.true.
c$$$      endif

      end
 
 
 
      subroutine init_processes_born
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
 
      flst_born(   1,   1)=           0
      flst_born(   2,   1)=           0
      flst_born(   3,   1)=          25
      flst_born(   4,   1)=         -11
      flst_born(   5,   1)=          11
      
      flst_nborn=          1

      end
 
 
 
      subroutine init_processes_real
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
 
      flst_nreal = 0
      end
 
