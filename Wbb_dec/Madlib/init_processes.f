      subroutine init_processes
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "pwhg_st.h"
      include "coupl.inc"
      integer i
 
      call init_processes_born
      call init_processes_real
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C    Set here the number of light flavours
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      st_nlight=5
      call init_couplings
c     if (tmass.eq.0d0) then
c        st_nlight=6
c     elseif(bmass.eq.0d0) then
c        st_nlight=5
c     elseif(cmass.eq.0d0) then
c        st_nlight=4
c     else
c        st_nlight=3
c     endif
      do i=3,nlegreal
         if (abs(flst_real(i,1)).le.st_nlight) then
            flst_lightpart=i
            exit
         endif
      enddo
 
      end
 
 
 
      subroutine init_processes_born
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
 
      flst_born(   1,   1)=          -1
      flst_born(   2,   1)=           2
      flst_born(   3,   1)=         -11
      flst_born(   4,   1)=          12
      flst_born(   5,   1)=           5
      flst_born(   6,   1)=          -5
 
      flst_born(   1,   2)=          -1
      flst_born(   2,   2)=           4
      flst_born(   3,   2)=         -11
      flst_born(   4,   2)=          12
      flst_born(   5,   2)=           5
      flst_born(   6,   2)=          -5
 
      flst_born(   1,   3)=           2
      flst_born(   2,   3)=          -1
      flst_born(   3,   3)=         -11
      flst_born(   4,   3)=          12
      flst_born(   5,   3)=           5
      flst_born(   6,   3)=          -5
 
      flst_born(   1,   4)=           2
      flst_born(   2,   4)=          -3
      flst_born(   3,   4)=         -11
      flst_born(   4,   4)=          12
      flst_born(   5,   4)=           5
      flst_born(   6,   4)=          -5
 
      flst_born(   1,   5)=           4
      flst_born(   2,   5)=          -1
      flst_born(   3,   5)=         -11
      flst_born(   4,   5)=          12
      flst_born(   5,   5)=           5
      flst_born(   6,   5)=          -5
 
      flst_born(   1,   6)=           4
      flst_born(   2,   6)=          -3
      flst_born(   3,   6)=         -11
      flst_born(   4,   6)=          12
      flst_born(   5,   6)=           5
      flst_born(   6,   6)=          -5
 
      flst_born(   1,   7)=          -3
      flst_born(   2,   7)=           2
      flst_born(   3,   7)=         -11
      flst_born(   4,   7)=          12
      flst_born(   5,   7)=           5
      flst_born(   6,   7)=          -5
 
      flst_born(   1,   8)=          -3
      flst_born(   2,   8)=           4
      flst_born(   3,   8)=         -11
      flst_born(   4,   8)=          12
      flst_born(   5,   8)=           5
      flst_born(   6,   8)=          -5
 
      flst_nborn=           8
 
      end
 
 
 
      subroutine init_processes_real
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
 
      flst_real(   1,   1)=          -1
      flst_real(   2,   1)=           2
      flst_real(   3,   1)=         -11
      flst_real(   4,   1)=          12
      flst_real(   5,   1)=           5
      flst_real(   6,   1)=          -5
      flst_real(   7,   1)=           0
 
      flst_real(   1,   2)=          -1
      flst_real(   2,   2)=           4
      flst_real(   3,   2)=         -11
      flst_real(   4,   2)=          12
      flst_real(   5,   2)=           5
      flst_real(   6,   2)=          -5
      flst_real(   7,   2)=           0
 
      flst_real(   1,   3)=          -1
      flst_real(   2,   3)=           0
      flst_real(   3,   3)=         -11
      flst_real(   4,   3)=          12
      flst_real(   5,   3)=           5
      flst_real(   6,   3)=          -5
      flst_real(   7,   3)=          -2
 
      flst_real(   1,   4)=          -1
      flst_real(   2,   4)=           0
      flst_real(   3,   4)=         -11
      flst_real(   4,   4)=          12
      flst_real(   5,   4)=           5
      flst_real(   6,   4)=          -5
      flst_real(   7,   4)=          -4
 
      flst_real(   1,   5)=           2
      flst_real(   2,   5)=          -1
      flst_real(   3,   5)=         -11
      flst_real(   4,   5)=          12
      flst_real(   5,   5)=           5
      flst_real(   6,   5)=          -5
      flst_real(   7,   5)=           0
 
      flst_real(   1,   6)=           2
      flst_real(   2,   6)=          -3
      flst_real(   3,   6)=         -11
      flst_real(   4,   6)=          12
      flst_real(   5,   6)=           5
      flst_real(   6,   6)=          -5
      flst_real(   7,   6)=           0
 
      flst_real(   1,   7)=           2
      flst_real(   2,   7)=           0
      flst_real(   3,   7)=         -11
      flst_real(   4,   7)=          12
      flst_real(   5,   7)=           5
      flst_real(   6,   7)=          -5
      flst_real(   7,   7)=           1
 
      flst_real(   1,   8)=           2
      flst_real(   2,   8)=           0
      flst_real(   3,   8)=         -11
      flst_real(   4,   8)=          12
      flst_real(   5,   8)=           5
      flst_real(   6,   8)=          -5
      flst_real(   7,   8)=           3
 
      flst_real(   1,   9)=           4
      flst_real(   2,   9)=          -1
      flst_real(   3,   9)=         -11
      flst_real(   4,   9)=          12
      flst_real(   5,   9)=           5
      flst_real(   6,   9)=          -5
      flst_real(   7,   9)=           0
 
      flst_real(   1,  10)=           4
      flst_real(   2,  10)=          -3
      flst_real(   3,  10)=         -11
      flst_real(   4,  10)=          12
      flst_real(   5,  10)=           5
      flst_real(   6,  10)=          -5
      flst_real(   7,  10)=           0
 
      flst_real(   1,  11)=           4
      flst_real(   2,  11)=           0
      flst_real(   3,  11)=         -11
      flst_real(   4,  11)=          12
      flst_real(   5,  11)=           5
      flst_real(   6,  11)=          -5
      flst_real(   7,  11)=           1
 
      flst_real(   1,  12)=           4
      flst_real(   2,  12)=           0
      flst_real(   3,  12)=         -11
      flst_real(   4,  12)=          12
      flst_real(   5,  12)=           5
      flst_real(   6,  12)=          -5
      flst_real(   7,  12)=           3
 
      flst_real(   1,  13)=          -3
      flst_real(   2,  13)=           2
      flst_real(   3,  13)=         -11
      flst_real(   4,  13)=          12
      flst_real(   5,  13)=           5
      flst_real(   6,  13)=          -5
      flst_real(   7,  13)=           0
 
      flst_real(   1,  14)=          -3
      flst_real(   2,  14)=           4
      flst_real(   3,  14)=         -11
      flst_real(   4,  14)=          12
      flst_real(   5,  14)=           5
      flst_real(   6,  14)=          -5
      flst_real(   7,  14)=           0
 
      flst_real(   1,  15)=          -3
      flst_real(   2,  15)=           0
      flst_real(   3,  15)=         -11
      flst_real(   4,  15)=          12
      flst_real(   5,  15)=           5
      flst_real(   6,  15)=          -5
      flst_real(   7,  15)=          -2
 
      flst_real(   1,  16)=          -3
      flst_real(   2,  16)=           0
      flst_real(   3,  16)=         -11
      flst_real(   4,  16)=          12
      flst_real(   5,  16)=           5
      flst_real(   6,  16)=          -5
      flst_real(   7,  16)=          -4
 
      flst_real(   1,  17)=           0
      flst_real(   2,  17)=          -1
      flst_real(   3,  17)=         -11
      flst_real(   4,  17)=          12
      flst_real(   5,  17)=           5
      flst_real(   6,  17)=          -5
      flst_real(   7,  17)=          -2
 
      flst_real(   1,  18)=           0
      flst_real(   2,  18)=          -1
      flst_real(   3,  18)=         -11
      flst_real(   4,  18)=          12
      flst_real(   5,  18)=           5
      flst_real(   6,  18)=          -5
      flst_real(   7,  18)=          -4
 
      flst_real(   1,  19)=           0
      flst_real(   2,  19)=           2
      flst_real(   3,  19)=         -11
      flst_real(   4,  19)=          12
      flst_real(   5,  19)=           5
      flst_real(   6,  19)=          -5
      flst_real(   7,  19)=           1
 
      flst_real(   1,  20)=           0
      flst_real(   2,  20)=           2
      flst_real(   3,  20)=         -11
      flst_real(   4,  20)=          12
      flst_real(   5,  20)=           5
      flst_real(   6,  20)=          -5
      flst_real(   7,  20)=           3
 
      flst_real(   1,  21)=           0
      flst_real(   2,  21)=           4
      flst_real(   3,  21)=         -11
      flst_real(   4,  21)=          12
      flst_real(   5,  21)=           5
      flst_real(   6,  21)=          -5
      flst_real(   7,  21)=           1
 
      flst_real(   1,  22)=           0
      flst_real(   2,  22)=           4
      flst_real(   3,  22)=         -11
      flst_real(   4,  22)=          12
      flst_real(   5,  22)=           5
      flst_real(   6,  22)=          -5
      flst_real(   7,  22)=           3
 
      flst_real(   1,  23)=           0
      flst_real(   2,  23)=          -3
      flst_real(   3,  23)=         -11
      flst_real(   4,  23)=          12
      flst_real(   5,  23)=           5
      flst_real(   6,  23)=          -5
      flst_real(   7,  23)=          -2
 
      flst_real(   1,  24)=           0
      flst_real(   2,  24)=          -3
      flst_real(   3,  24)=         -11
      flst_real(   4,  24)=          12
      flst_real(   5,  24)=           5
      flst_real(   6,  24)=          -5
      flst_real(   7,  24)=          -4
 
      flst_nreal=          24
 
      return
      end
 
