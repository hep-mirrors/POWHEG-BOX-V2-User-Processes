      subroutine init_processes
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "pwhg_st.h"
      include "pwhg_flg.h"
      include "coupl.inc"
      integer i
 
      call init_processes_born
      call init_processes_real
      call init_processes_decay

      ! as in the case of Wbb also Wtt has bornzero configurations
      ! This has to be treated always
      flg_withdamp = .true.
      flg_bornzerodamp = .true.

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C    Set here the number of light flavours
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      st_nlight=5
      call init_couplings
      do i=3,nlegreal
         if (abs(flst_real(i,1)).le.st_nlight) then
            flst_lightpart=i
            exit
         endif
      enddo
 
      end
 
      SUBROUTINE init_processes_decay
      implicit none
      include 'nlegborn.h'
      include 'pwhg_rad.h'
      integer :: flv_dec(6)
      real(kind(1d0)) :: mass_dec(6), totbr
      real(kind(1d0)), external :: powheginput
     
      if( powheginput('#topdecaymode') > 0 ) then 
        call pickwdecays(flv_dec,mass_dec,totbr)
        rad_branching = totbr
        print*, "POWHEG: Branching ratio: ", totbr
      endif
  
      END SUBROUTINE 
 
      subroutine init_processes_born
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
 
      flst_born(   1,   1)=          -1
      flst_born(   2,   1)=           2
      flst_born(   3,   1)=          24
      flst_born(   4,   1)=           6
      flst_born(   5,   1)=          -6
 
      flst_born(   1,   2)=           2
      flst_born(   2,   2)=          -1
      flst_born(   3,   2)=          24
      flst_born(   4,   2)=           6
      flst_born(   5,   2)=          -6
 
      flst_born(   1,   3)=           4
      flst_born(   2,   3)=          -3
      flst_born(   3,   3)=          24
      flst_born(   4,   3)=           6
      flst_born(   5,   3)=          -6
 
      flst_born(   1,   4)=          -3
      flst_born(   2,   4)=           4
      flst_born(   3,   4)=          24
      flst_born(   4,   4)=           6
      flst_born(   5,   4)=          -6
 
      flst_nborn=           4
 
      end
 
 
 
      subroutine init_processes_real
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
 
      flst_real(   1,   1)=          -1
      flst_real(   2,   1)=           2
      flst_real(   3,   1)=          24
      flst_real(   4,   1)=           6
      flst_real(   5,   1)=          -6
      flst_real(   6,   1)=           0
 
      flst_real(   1,   2)=          -1
      flst_real(   2,   2)=           0
      flst_real(   3,   2)=          24
      flst_real(   4,   2)=           6
      flst_real(   5,   2)=          -6
      flst_real(   6,   2)=          -2
 
      flst_real(   1,   3)=           2
      flst_real(   2,   3)=          -1
      flst_real(   3,   3)=          24
      flst_real(   4,   3)=           6
      flst_real(   5,   3)=          -6
      flst_real(   6,   3)=           0
 
      flst_real(   1,   4)=           2
      flst_real(   2,   4)=           0
      flst_real(   3,   4)=          24
      flst_real(   4,   4)=           6
      flst_real(   5,   4)=          -6
      flst_real(   6,   4)=           1
 
      flst_real(   1,   5)=           4
      flst_real(   2,   5)=          -3
      flst_real(   3,   5)=          24
      flst_real(   4,   5)=           6
      flst_real(   5,   5)=          -6
      flst_real(   6,   5)=           0
 
      flst_real(   1,   6)=           4
      flst_real(   2,   6)=           0
      flst_real(   3,   6)=          24
      flst_real(   4,   6)=           6
      flst_real(   5,   6)=          -6
      flst_real(   6,   6)=           3
 
      flst_real(   1,   7)=          -3
      flst_real(   2,   7)=           4
      flst_real(   3,   7)=          24
      flst_real(   4,   7)=           6
      flst_real(   5,   7)=          -6
      flst_real(   6,   7)=           0
 
      flst_real(   1,   8)=          -3
      flst_real(   2,   8)=           0
      flst_real(   3,   8)=          24
      flst_real(   4,   8)=           6
      flst_real(   5,   8)=          -6
      flst_real(   6,   8)=          -4
 
      flst_real(   1,   9)=           0
      flst_real(   2,   9)=          -1
      flst_real(   3,   9)=          24
      flst_real(   4,   9)=           6
      flst_real(   5,   9)=          -6
      flst_real(   6,   9)=          -2
 
      flst_real(   1,  10)=           0
      flst_real(   2,  10)=           2
      flst_real(   3,  10)=          24
      flst_real(   4,  10)=           6
      flst_real(   5,  10)=          -6
      flst_real(   6,  10)=           1
 
      flst_real(   1,  11)=           0
      flst_real(   2,  11)=           4
      flst_real(   3,  11)=          24
      flst_real(   4,  11)=           6
      flst_real(   5,  11)=          -6
      flst_real(   6,  11)=           3
 
      flst_real(   1,  12)=           0
      flst_real(   2,  12)=          -3
      flst_real(   3,  12)=          24
      flst_real(   4,  12)=           6
      flst_real(   5,  12)=          -6
      flst_real(   6,  12)=          -4
 
      flst_nreal=          12
 
      return
      end
 
