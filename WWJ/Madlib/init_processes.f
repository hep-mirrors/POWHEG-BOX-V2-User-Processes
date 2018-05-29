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
      flst_born(   2,   1)=           1
      flst_born(   3,   1)=         -11
      flst_born(   4,   1)=          12
      flst_born(   5,   1)=          13
      flst_born(   6,   1)=         -14
      flst_born(   7,   1)=           0
 
      flst_born(   1,   2)=          -1
      flst_born(   2,   2)=           0
      flst_born(   3,   2)=         -11
      flst_born(   4,   2)=          12
      flst_born(   5,   2)=          13
      flst_born(   6,   2)=         -14
      flst_born(   7,   2)=          -1
 
      flst_born(   1,   3)=           1
      flst_born(   2,   3)=          -1
      flst_born(   3,   3)=         -11
      flst_born(   4,   3)=          12
      flst_born(   5,   3)=          13
      flst_born(   6,   3)=         -14
      flst_born(   7,   3)=           0
 
      flst_born(   1,   4)=           1
      flst_born(   2,   4)=           0
      flst_born(   3,   4)=         -11
      flst_born(   4,   4)=          12
      flst_born(   5,   4)=          13
      flst_born(   6,   4)=         -14
      flst_born(   7,   4)=           1
 
      flst_born(   1,   5)=          -2
      flst_born(   2,   5)=           2
      flst_born(   3,   5)=         -11
      flst_born(   4,   5)=          12
      flst_born(   5,   5)=          13
      flst_born(   6,   5)=         -14
      flst_born(   7,   5)=           0
 
      flst_born(   1,   6)=          -2
      flst_born(   2,   6)=           0
      flst_born(   3,   6)=         -11
      flst_born(   4,   6)=          12
      flst_born(   5,   6)=          13
      flst_born(   6,   6)=         -14
      flst_born(   7,   6)=          -2
 
      flst_born(   1,   7)=           2
      flst_born(   2,   7)=          -2
      flst_born(   3,   7)=         -11
      flst_born(   4,   7)=          12
      flst_born(   5,   7)=          13
      flst_born(   6,   7)=         -14
      flst_born(   7,   7)=           0
 
      flst_born(   1,   8)=           2
      flst_born(   2,   8)=           0
      flst_born(   3,   8)=         -11
      flst_born(   4,   8)=          12
      flst_born(   5,   8)=          13
      flst_born(   6,   8)=         -14
      flst_born(   7,   8)=           2
 
      flst_born(   1,   9)=          -4
      flst_born(   2,   9)=           4
      flst_born(   3,   9)=         -11
      flst_born(   4,   9)=          12
      flst_born(   5,   9)=          13
      flst_born(   6,   9)=         -14
      flst_born(   7,   9)=           0
 
      flst_born(   1,  10)=          -4
      flst_born(   2,  10)=           0
      flst_born(   3,  10)=         -11
      flst_born(   4,  10)=          12
      flst_born(   5,  10)=          13
      flst_born(   6,  10)=         -14
      flst_born(   7,  10)=          -4
 
      flst_born(   1,  11)=           4
      flst_born(   2,  11)=          -4
      flst_born(   3,  11)=         -11
      flst_born(   4,  11)=          12
      flst_born(   5,  11)=          13
      flst_born(   6,  11)=         -14
      flst_born(   7,  11)=           0
 
      flst_born(   1,  12)=           4
      flst_born(   2,  12)=           0
      flst_born(   3,  12)=         -11
      flst_born(   4,  12)=          12
      flst_born(   5,  12)=          13
      flst_born(   6,  12)=         -14
      flst_born(   7,  12)=           4
 
      flst_born(   1,  13)=          -3
      flst_born(   2,  13)=           3
      flst_born(   3,  13)=         -11
      flst_born(   4,  13)=          12
      flst_born(   5,  13)=          13
      flst_born(   6,  13)=         -14
      flst_born(   7,  13)=           0
 
      flst_born(   1,  14)=          -3
      flst_born(   2,  14)=           0
      flst_born(   3,  14)=         -11
      flst_born(   4,  14)=          12
      flst_born(   5,  14)=          13
      flst_born(   6,  14)=         -14
      flst_born(   7,  14)=          -3
 
      flst_born(   1,  15)=           3
      flst_born(   2,  15)=          -3
      flst_born(   3,  15)=         -11
      flst_born(   4,  15)=          12
      flst_born(   5,  15)=          13
      flst_born(   6,  15)=         -14
      flst_born(   7,  15)=           0
 
      flst_born(   1,  16)=           3
      flst_born(   2,  16)=           0
      flst_born(   3,  16)=         -11
      flst_born(   4,  16)=          12
      flst_born(   5,  16)=          13
      flst_born(   6,  16)=         -14
      flst_born(   7,  16)=           3
 
      flst_born(   1,  17)=           0
      flst_born(   2,  17)=          -1
      flst_born(   3,  17)=         -11
      flst_born(   4,  17)=          12
      flst_born(   5,  17)=          13
      flst_born(   6,  17)=         -14
      flst_born(   7,  17)=          -1
 
      flst_born(   1,  18)=           0
      flst_born(   2,  18)=           1
      flst_born(   3,  18)=         -11
      flst_born(   4,  18)=          12
      flst_born(   5,  18)=          13
      flst_born(   6,  18)=         -14
      flst_born(   7,  18)=           1
 
      flst_born(   1,  19)=           0
      flst_born(   2,  19)=          -2
      flst_born(   3,  19)=         -11
      flst_born(   4,  19)=          12
      flst_born(   5,  19)=          13
      flst_born(   6,  19)=         -14
      flst_born(   7,  19)=          -2
 
      flst_born(   1,  20)=           0
      flst_born(   2,  20)=           2
      flst_born(   3,  20)=         -11
      flst_born(   4,  20)=          12
      flst_born(   5,  20)=          13
      flst_born(   6,  20)=         -14
      flst_born(   7,  20)=           2
 
      flst_born(   1,  21)=           0
      flst_born(   2,  21)=          -4
      flst_born(   3,  21)=         -11
      flst_born(   4,  21)=          12
      flst_born(   5,  21)=          13
      flst_born(   6,  21)=         -14
      flst_born(   7,  21)=          -4
 
      flst_born(   1,  22)=           0
      flst_born(   2,  22)=           4
      flst_born(   3,  22)=         -11
      flst_born(   4,  22)=          12
      flst_born(   5,  22)=          13
      flst_born(   6,  22)=         -14
      flst_born(   7,  22)=           4
 
      flst_born(   1,  23)=           0
      flst_born(   2,  23)=          -3
      flst_born(   3,  23)=         -11
      flst_born(   4,  23)=          12
      flst_born(   5,  23)=          13
      flst_born(   6,  23)=         -14
      flst_born(   7,  23)=          -3
 
      flst_born(   1,  24)=           0
      flst_born(   2,  24)=           3
      flst_born(   3,  24)=         -11
      flst_born(   4,  24)=          12
      flst_born(   5,  24)=          13
      flst_born(   6,  24)=         -14
      flst_born(   7,  24)=           3
 
      flst_nborn=          24
 
      end
 
 
 
      subroutine init_processes_real
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
 
      flst_real(   1,   1)=          -1
      flst_real(   2,   1)=          -1
      flst_real(   3,   1)=         -11
      flst_real(   4,   1)=          12
      flst_real(   5,   1)=          13
      flst_real(   6,   1)=         -14
      flst_real(   7,   1)=          -1
      flst_real(   8,   1)=          -1
 
      flst_real(   1,   2)=          -1
      flst_real(   2,   2)=           1
      flst_real(   3,   2)=         -11
      flst_real(   4,   2)=          12
      flst_real(   5,   2)=          13
      flst_real(   6,   2)=         -14
      flst_real(   7,   2)=           1
      flst_real(   8,   2)=          -1
 
      flst_real(   1,   3)=          -1
      flst_real(   2,   3)=           1
      flst_real(   3,   3)=         -11
      flst_real(   4,   3)=          12
      flst_real(   5,   3)=          13
      flst_real(   6,   3)=         -14
      flst_real(   7,   3)=           2
      flst_real(   8,   3)=          -2
 
      flst_real(   1,   4)=          -1
      flst_real(   2,   4)=           1
      flst_real(   3,   4)=         -11
      flst_real(   4,   4)=          12
      flst_real(   5,   4)=          13
      flst_real(   6,   4)=         -14
      flst_real(   7,   4)=           4
      flst_real(   8,   4)=          -4
 
      flst_real(   1,   5)=          -1
      flst_real(   2,   5)=           1
      flst_real(   3,   5)=         -11
      flst_real(   4,   5)=          12
      flst_real(   5,   5)=          13
      flst_real(   6,   5)=         -14
      flst_real(   7,   5)=           3
      flst_real(   8,   5)=          -3
 
      flst_real(   1,   6)=          -1
      flst_real(   2,   6)=           1
      flst_real(   3,   6)=         -11
      flst_real(   4,   6)=          12
      flst_real(   5,   6)=          13
      flst_real(   6,   6)=         -14
      flst_real(   7,   6)=           0
      flst_real(   8,   6)=           0
 
      flst_real(   1,   7)=          -1
      flst_real(   2,   7)=          -2
      flst_real(   3,   7)=         -11
      flst_real(   4,   7)=          12
      flst_real(   5,   7)=          13
      flst_real(   6,   7)=         -14
      flst_real(   7,   7)=          -1
      flst_real(   8,   7)=          -2
 
      flst_real(   1,   8)=          -1
      flst_real(   2,   8)=           2
      flst_real(   3,   8)=         -11
      flst_real(   4,   8)=          12
      flst_real(   5,   8)=          13
      flst_real(   6,   8)=         -14
      flst_real(   7,   8)=          -1
      flst_real(   8,   8)=           2
 
      flst_real(   1,   9)=          -1
      flst_real(   2,   9)=           2
      flst_real(   3,   9)=         -11
      flst_real(   4,   9)=          12
      flst_real(   5,   9)=          13
      flst_real(   6,   9)=         -14
      flst_real(   7,   9)=           4
      flst_real(   8,   9)=          -3
 
      flst_real(   1,  10)=          -1
      flst_real(   2,  10)=          -4
      flst_real(   3,  10)=         -11
      flst_real(   4,  10)=          12
      flst_real(   5,  10)=          13
      flst_real(   6,  10)=         -14
      flst_real(   7,  10)=          -1
      flst_real(   8,  10)=          -4
 
      flst_real(   1,  11)=          -1
      flst_real(   2,  11)=          -4
      flst_real(   3,  11)=         -11
      flst_real(   4,  11)=          12
      flst_real(   5,  11)=          13
      flst_real(   6,  11)=         -14
      flst_real(   7,  11)=          -2
      flst_real(   8,  11)=          -3
 
      flst_real(   1,  12)=          -1
      flst_real(   2,  12)=           4
      flst_real(   3,  12)=         -11
      flst_real(   4,  12)=          12
      flst_real(   5,  12)=          13
      flst_real(   6,  12)=         -14
      flst_real(   7,  12)=          -1
      flst_real(   8,  12)=           4
 
      flst_real(   1,  13)=          -1
      flst_real(   2,  13)=          -3
      flst_real(   3,  13)=         -11
      flst_real(   4,  13)=          12
      flst_real(   5,  13)=          13
      flst_real(   6,  13)=         -14
      flst_real(   7,  13)=          -1
      flst_real(   8,  13)=          -3
 
      flst_real(   1,  14)=          -1
      flst_real(   2,  14)=           3
      flst_real(   3,  14)=         -11
      flst_real(   4,  14)=          12
      flst_real(   5,  14)=          13
      flst_real(   6,  14)=         -14
      flst_real(   7,  14)=          -1
      flst_real(   8,  14)=           3
 
      flst_real(   1,  15)=          -1
      flst_real(   2,  15)=           3
      flst_real(   3,  15)=         -11
      flst_real(   4,  15)=          12
      flst_real(   5,  15)=          13
      flst_real(   6,  15)=         -14
      flst_real(   7,  15)=          -2
      flst_real(   8,  15)=           4
 
      flst_real(   1,  16)=          -1
      flst_real(   2,  16)=           0
      flst_real(   3,  16)=         -11
      flst_real(   4,  16)=          12
      flst_real(   5,  16)=          13
      flst_real(   6,  16)=         -14
      flst_real(   7,  16)=          -1
      flst_real(   8,  16)=           0
 
      flst_real(   1,  17)=           1
      flst_real(   2,  17)=          -1
      flst_real(   3,  17)=         -11
      flst_real(   4,  17)=          12
      flst_real(   5,  17)=          13
      flst_real(   6,  17)=         -14
      flst_real(   7,  17)=           1
      flst_real(   8,  17)=          -1
 
      flst_real(   1,  18)=           1
      flst_real(   2,  18)=          -1
      flst_real(   3,  18)=         -11
      flst_real(   4,  18)=          12
      flst_real(   5,  18)=          13
      flst_real(   6,  18)=         -14
      flst_real(   7,  18)=           2
      flst_real(   8,  18)=          -2
 
      flst_real(   1,  19)=           1
      flst_real(   2,  19)=          -1
      flst_real(   3,  19)=         -11
      flst_real(   4,  19)=          12
      flst_real(   5,  19)=          13
      flst_real(   6,  19)=         -14
      flst_real(   7,  19)=           4
      flst_real(   8,  19)=          -4
 
      flst_real(   1,  20)=           1
      flst_real(   2,  20)=          -1
      flst_real(   3,  20)=         -11
      flst_real(   4,  20)=          12
      flst_real(   5,  20)=          13
      flst_real(   6,  20)=         -14
      flst_real(   7,  20)=           3
      flst_real(   8,  20)=          -3
 
      flst_real(   1,  21)=           1
      flst_real(   2,  21)=          -1
      flst_real(   3,  21)=         -11
      flst_real(   4,  21)=          12
      flst_real(   5,  21)=          13
      flst_real(   6,  21)=         -14
      flst_real(   7,  21)=           0
      flst_real(   8,  21)=           0
 
      flst_real(   1,  22)=           1
      flst_real(   2,  22)=           1
      flst_real(   3,  22)=         -11
      flst_real(   4,  22)=          12
      flst_real(   5,  22)=          13
      flst_real(   6,  22)=         -14
      flst_real(   7,  22)=           1
      flst_real(   8,  22)=           1
 
      flst_real(   1,  23)=           1
      flst_real(   2,  23)=          -2
      flst_real(   3,  23)=         -11
      flst_real(   4,  23)=          12
      flst_real(   5,  23)=          13
      flst_real(   6,  23)=         -14
      flst_real(   7,  23)=           1
      flst_real(   8,  23)=          -2
 
      flst_real(   1,  24)=           1
      flst_real(   2,  24)=          -2
      flst_real(   3,  24)=         -11
      flst_real(   4,  24)=          12
      flst_real(   5,  24)=          13
      flst_real(   6,  24)=         -14
      flst_real(   7,  24)=          -4
      flst_real(   8,  24)=           3
 
      flst_real(   1,  25)=           1
      flst_real(   2,  25)=           2
      flst_real(   3,  25)=         -11
      flst_real(   4,  25)=          12
      flst_real(   5,  25)=          13
      flst_real(   6,  25)=         -14
      flst_real(   7,  25)=           1
      flst_real(   8,  25)=           2
 
      flst_real(   1,  26)=           1
      flst_real(   2,  26)=          -4
      flst_real(   3,  26)=         -11
      flst_real(   4,  26)=          12
      flst_real(   5,  26)=          13
      flst_real(   6,  26)=         -14
      flst_real(   7,  26)=           1
      flst_real(   8,  26)=          -4
 
      flst_real(   1,  27)=           1
      flst_real(   2,  27)=           4
      flst_real(   3,  27)=         -11
      flst_real(   4,  27)=          12
      flst_real(   5,  27)=          13
      flst_real(   6,  27)=         -14
      flst_real(   7,  27)=           1
      flst_real(   8,  27)=           4
 
      flst_real(   1,  28)=           1
      flst_real(   2,  28)=           4
      flst_real(   3,  28)=         -11
      flst_real(   4,  28)=          12
      flst_real(   5,  28)=          13
      flst_real(   6,  28)=         -14
      flst_real(   7,  28)=           2
      flst_real(   8,  28)=           3
 
      flst_real(   1,  29)=           1
      flst_real(   2,  29)=          -3
      flst_real(   3,  29)=         -11
      flst_real(   4,  29)=          12
      flst_real(   5,  29)=          13
      flst_real(   6,  29)=         -14
      flst_real(   7,  29)=           1
      flst_real(   8,  29)=          -3
 
      flst_real(   1,  30)=           1
      flst_real(   2,  30)=          -3
      flst_real(   3,  30)=         -11
      flst_real(   4,  30)=          12
      flst_real(   5,  30)=          13
      flst_real(   6,  30)=         -14
      flst_real(   7,  30)=           2
      flst_real(   8,  30)=          -4
 
      flst_real(   1,  31)=           1
      flst_real(   2,  31)=           3
      flst_real(   3,  31)=         -11
      flst_real(   4,  31)=          12
      flst_real(   5,  31)=          13
      flst_real(   6,  31)=         -14
      flst_real(   7,  31)=           1
      flst_real(   8,  31)=           3
 
      flst_real(   1,  32)=           1
      flst_real(   2,  32)=           0
      flst_real(   3,  32)=         -11
      flst_real(   4,  32)=          12
      flst_real(   5,  32)=          13
      flst_real(   6,  32)=         -14
      flst_real(   7,  32)=           1
      flst_real(   8,  32)=           0
 
      flst_real(   1,  33)=          -2
      flst_real(   2,  33)=          -1
      flst_real(   3,  33)=         -11
      flst_real(   4,  33)=          12
      flst_real(   5,  33)=          13
      flst_real(   6,  33)=         -14
      flst_real(   7,  33)=          -1
      flst_real(   8,  33)=          -2
 
      flst_real(   1,  34)=          -2
      flst_real(   2,  34)=           1
      flst_real(   3,  34)=         -11
      flst_real(   4,  34)=          12
      flst_real(   5,  34)=          13
      flst_real(   6,  34)=         -14
      flst_real(   7,  34)=           1
      flst_real(   8,  34)=          -2
 
      flst_real(   1,  35)=          -2
      flst_real(   2,  35)=           1
      flst_real(   3,  35)=         -11
      flst_real(   4,  35)=          12
      flst_real(   5,  35)=          13
      flst_real(   6,  35)=         -14
      flst_real(   7,  35)=          -4
      flst_real(   8,  35)=           3
 
      flst_real(   1,  36)=          -2
      flst_real(   2,  36)=          -2
      flst_real(   3,  36)=         -11
      flst_real(   4,  36)=          12
      flst_real(   5,  36)=          13
      flst_real(   6,  36)=         -14
      flst_real(   7,  36)=          -2
      flst_real(   8,  36)=          -2
 
      flst_real(   1,  37)=          -2
      flst_real(   2,  37)=           2
      flst_real(   3,  37)=         -11
      flst_real(   4,  37)=          12
      flst_real(   5,  37)=          13
      flst_real(   6,  37)=         -14
      flst_real(   7,  37)=           1
      flst_real(   8,  37)=          -1
 
      flst_real(   1,  38)=          -2
      flst_real(   2,  38)=           2
      flst_real(   3,  38)=         -11
      flst_real(   4,  38)=          12
      flst_real(   5,  38)=          13
      flst_real(   6,  38)=         -14
      flst_real(   7,  38)=           2
      flst_real(   8,  38)=          -2
 
      flst_real(   1,  39)=          -2
      flst_real(   2,  39)=           2
      flst_real(   3,  39)=         -11
      flst_real(   4,  39)=          12
      flst_real(   5,  39)=          13
      flst_real(   6,  39)=         -14
      flst_real(   7,  39)=           4
      flst_real(   8,  39)=          -4
 
      flst_real(   1,  40)=          -2
      flst_real(   2,  40)=           2
      flst_real(   3,  40)=         -11
      flst_real(   4,  40)=          12
      flst_real(   5,  40)=          13
      flst_real(   6,  40)=         -14
      flst_real(   7,  40)=           3
      flst_real(   8,  40)=          -3
 
      flst_real(   1,  41)=          -2
      flst_real(   2,  41)=           2
      flst_real(   3,  41)=         -11
      flst_real(   4,  41)=          12
      flst_real(   5,  41)=          13
      flst_real(   6,  41)=         -14
      flst_real(   7,  41)=           0
      flst_real(   8,  41)=           0
 
      flst_real(   1,  42)=          -2
      flst_real(   2,  42)=          -4
      flst_real(   3,  42)=         -11
      flst_real(   4,  42)=          12
      flst_real(   5,  42)=          13
      flst_real(   6,  42)=         -14
      flst_real(   7,  42)=          -2
      flst_real(   8,  42)=          -4
 
      flst_real(   1,  43)=          -2
      flst_real(   2,  43)=           4
      flst_real(   3,  43)=         -11
      flst_real(   4,  43)=          12
      flst_real(   5,  43)=          13
      flst_real(   6,  43)=         -14
      flst_real(   7,  43)=          -1
      flst_real(   8,  43)=           3
 
      flst_real(   1,  44)=          -2
      flst_real(   2,  44)=           4
      flst_real(   3,  44)=         -11
      flst_real(   4,  44)=          12
      flst_real(   5,  44)=          13
      flst_real(   6,  44)=         -14
      flst_real(   7,  44)=          -2
      flst_real(   8,  44)=           4
 
      flst_real(   1,  45)=          -2
      flst_real(   2,  45)=          -3
      flst_real(   3,  45)=         -11
      flst_real(   4,  45)=          12
      flst_real(   5,  45)=          13
      flst_real(   6,  45)=         -14
      flst_real(   7,  45)=          -1
      flst_real(   8,  45)=          -4
 
      flst_real(   1,  46)=          -2
      flst_real(   2,  46)=          -3
      flst_real(   3,  46)=         -11
      flst_real(   4,  46)=          12
      flst_real(   5,  46)=          13
      flst_real(   6,  46)=         -14
      flst_real(   7,  46)=          -2
      flst_real(   8,  46)=          -3
 
      flst_real(   1,  47)=          -2
      flst_real(   2,  47)=           3
      flst_real(   3,  47)=         -11
      flst_real(   4,  47)=          12
      flst_real(   5,  47)=          13
      flst_real(   6,  47)=         -14
      flst_real(   7,  47)=          -2
      flst_real(   8,  47)=           3
 
      flst_real(   1,  48)=          -2
      flst_real(   2,  48)=           0
      flst_real(   3,  48)=         -11
      flst_real(   4,  48)=          12
      flst_real(   5,  48)=          13
      flst_real(   6,  48)=         -14
      flst_real(   7,  48)=          -2
      flst_real(   8,  48)=           0
 
      flst_real(   1,  49)=           2
      flst_real(   2,  49)=          -1
      flst_real(   3,  49)=         -11
      flst_real(   4,  49)=          12
      flst_real(   5,  49)=          13
      flst_real(   6,  49)=         -14
      flst_real(   7,  49)=          -1
      flst_real(   8,  49)=           2
 
      flst_real(   1,  50)=           2
      flst_real(   2,  50)=          -1
      flst_real(   3,  50)=         -11
      flst_real(   4,  50)=          12
      flst_real(   5,  50)=          13
      flst_real(   6,  50)=         -14
      flst_real(   7,  50)=           4
      flst_real(   8,  50)=          -3
 
      flst_real(   1,  51)=           2
      flst_real(   2,  51)=           1
      flst_real(   3,  51)=         -11
      flst_real(   4,  51)=          12
      flst_real(   5,  51)=          13
      flst_real(   6,  51)=         -14
      flst_real(   7,  51)=           1
      flst_real(   8,  51)=           2
 
      flst_real(   1,  52)=           2
      flst_real(   2,  52)=          -2
      flst_real(   3,  52)=         -11
      flst_real(   4,  52)=          12
      flst_real(   5,  52)=          13
      flst_real(   6,  52)=         -14
      flst_real(   7,  52)=           1
      flst_real(   8,  52)=          -1
 
      flst_real(   1,  53)=           2
      flst_real(   2,  53)=          -2
      flst_real(   3,  53)=         -11
      flst_real(   4,  53)=          12
      flst_real(   5,  53)=          13
      flst_real(   6,  53)=         -14
      flst_real(   7,  53)=           2
      flst_real(   8,  53)=          -2
 
      flst_real(   1,  54)=           2
      flst_real(   2,  54)=          -2
      flst_real(   3,  54)=         -11
      flst_real(   4,  54)=          12
      flst_real(   5,  54)=          13
      flst_real(   6,  54)=         -14
      flst_real(   7,  54)=           4
      flst_real(   8,  54)=          -4
 
      flst_real(   1,  55)=           2
      flst_real(   2,  55)=          -2
      flst_real(   3,  55)=         -11
      flst_real(   4,  55)=          12
      flst_real(   5,  55)=          13
      flst_real(   6,  55)=         -14
      flst_real(   7,  55)=           3
      flst_real(   8,  55)=          -3
 
      flst_real(   1,  56)=           2
      flst_real(   2,  56)=          -2
      flst_real(   3,  56)=         -11
      flst_real(   4,  56)=          12
      flst_real(   5,  56)=          13
      flst_real(   6,  56)=         -14
      flst_real(   7,  56)=           0
      flst_real(   8,  56)=           0
 
      flst_real(   1,  57)=           2
      flst_real(   2,  57)=           2
      flst_real(   3,  57)=         -11
      flst_real(   4,  57)=          12
      flst_real(   5,  57)=          13
      flst_real(   6,  57)=         -14
      flst_real(   7,  57)=           2
      flst_real(   8,  57)=           2
 
      flst_real(   1,  58)=           2
      flst_real(   2,  58)=          -4
      flst_real(   3,  58)=         -11
      flst_real(   4,  58)=          12
      flst_real(   5,  58)=          13
      flst_real(   6,  58)=         -14
      flst_real(   7,  58)=           1
      flst_real(   8,  58)=          -3
 
      flst_real(   1,  59)=           2
      flst_real(   2,  59)=          -4
      flst_real(   3,  59)=         -11
      flst_real(   4,  59)=          12
      flst_real(   5,  59)=          13
      flst_real(   6,  59)=         -14
      flst_real(   7,  59)=           2
      flst_real(   8,  59)=          -4
 
      flst_real(   1,  60)=           2
      flst_real(   2,  60)=           4
      flst_real(   3,  60)=         -11
      flst_real(   4,  60)=          12
      flst_real(   5,  60)=          13
      flst_real(   6,  60)=         -14
      flst_real(   7,  60)=           2
      flst_real(   8,  60)=           4
 
      flst_real(   1,  61)=           2
      flst_real(   2,  61)=          -3
      flst_real(   3,  61)=         -11
      flst_real(   4,  61)=          12
      flst_real(   5,  61)=          13
      flst_real(   6,  61)=         -14
      flst_real(   7,  61)=           2
      flst_real(   8,  61)=          -3
 
      flst_real(   1,  62)=           2
      flst_real(   2,  62)=           3
      flst_real(   3,  62)=         -11
      flst_real(   4,  62)=          12
      flst_real(   5,  62)=          13
      flst_real(   6,  62)=         -14
      flst_real(   7,  62)=           1
      flst_real(   8,  62)=           4
 
      flst_real(   1,  63)=           2
      flst_real(   2,  63)=           3
      flst_real(   3,  63)=         -11
      flst_real(   4,  63)=          12
      flst_real(   5,  63)=          13
      flst_real(   6,  63)=         -14
      flst_real(   7,  63)=           2
      flst_real(   8,  63)=           3
 
      flst_real(   1,  64)=           2
      flst_real(   2,  64)=           0
      flst_real(   3,  64)=         -11
      flst_real(   4,  64)=          12
      flst_real(   5,  64)=          13
      flst_real(   6,  64)=         -14
      flst_real(   7,  64)=           2
      flst_real(   8,  64)=           0
 
      flst_real(   1,  65)=          -4
      flst_real(   2,  65)=          -1
      flst_real(   3,  65)=         -11
      flst_real(   4,  65)=          12
      flst_real(   5,  65)=          13
      flst_real(   6,  65)=         -14
      flst_real(   7,  65)=          -1
      flst_real(   8,  65)=          -4
 
      flst_real(   1,  66)=          -4
      flst_real(   2,  66)=          -1
      flst_real(   3,  66)=         -11
      flst_real(   4,  66)=          12
      flst_real(   5,  66)=          13
      flst_real(   6,  66)=         -14
      flst_real(   7,  66)=          -2
      flst_real(   8,  66)=          -3
 
      flst_real(   1,  67)=          -4
      flst_real(   2,  67)=           1
      flst_real(   3,  67)=         -11
      flst_real(   4,  67)=          12
      flst_real(   5,  67)=          13
      flst_real(   6,  67)=         -14
      flst_real(   7,  67)=           1
      flst_real(   8,  67)=          -4
 
      flst_real(   1,  68)=          -4
      flst_real(   2,  68)=          -2
      flst_real(   3,  68)=         -11
      flst_real(   4,  68)=          12
      flst_real(   5,  68)=          13
      flst_real(   6,  68)=         -14
      flst_real(   7,  68)=          -2
      flst_real(   8,  68)=          -4
 
      flst_real(   1,  69)=          -4
      flst_real(   2,  69)=           2
      flst_real(   3,  69)=         -11
      flst_real(   4,  69)=          12
      flst_real(   5,  69)=          13
      flst_real(   6,  69)=         -14
      flst_real(   7,  69)=           1
      flst_real(   8,  69)=          -3
 
      flst_real(   1,  70)=          -4
      flst_real(   2,  70)=           2
      flst_real(   3,  70)=         -11
      flst_real(   4,  70)=          12
      flst_real(   5,  70)=          13
      flst_real(   6,  70)=         -14
      flst_real(   7,  70)=           2
      flst_real(   8,  70)=          -4
 
      flst_real(   1,  71)=          -4
      flst_real(   2,  71)=          -4
      flst_real(   3,  71)=         -11
      flst_real(   4,  71)=          12
      flst_real(   5,  71)=          13
      flst_real(   6,  71)=         -14
      flst_real(   7,  71)=          -4
      flst_real(   8,  71)=          -4
 
      flst_real(   1,  72)=          -4
      flst_real(   2,  72)=           4
      flst_real(   3,  72)=         -11
      flst_real(   4,  72)=          12
      flst_real(   5,  72)=          13
      flst_real(   6,  72)=         -14
      flst_real(   7,  72)=           1
      flst_real(   8,  72)=          -1
 
      flst_real(   1,  73)=          -4
      flst_real(   2,  73)=           4
      flst_real(   3,  73)=         -11
      flst_real(   4,  73)=          12
      flst_real(   5,  73)=          13
      flst_real(   6,  73)=         -14
      flst_real(   7,  73)=           2
      flst_real(   8,  73)=          -2
 
      flst_real(   1,  74)=          -4
      flst_real(   2,  74)=           4
      flst_real(   3,  74)=         -11
      flst_real(   4,  74)=          12
      flst_real(   5,  74)=          13
      flst_real(   6,  74)=         -14
      flst_real(   7,  74)=           4
      flst_real(   8,  74)=          -4
 
      flst_real(   1,  75)=          -4
      flst_real(   2,  75)=           4
      flst_real(   3,  75)=         -11
      flst_real(   4,  75)=          12
      flst_real(   5,  75)=          13
      flst_real(   6,  75)=         -14
      flst_real(   7,  75)=           3
      flst_real(   8,  75)=          -3
 
      flst_real(   1,  76)=          -4
      flst_real(   2,  76)=           4
      flst_real(   3,  76)=         -11
      flst_real(   4,  76)=          12
      flst_real(   5,  76)=          13
      flst_real(   6,  76)=         -14
      flst_real(   7,  76)=           0
      flst_real(   8,  76)=           0
 
      flst_real(   1,  77)=          -4
      flst_real(   2,  77)=          -3
      flst_real(   3,  77)=         -11
      flst_real(   4,  77)=          12
      flst_real(   5,  77)=          13
      flst_real(   6,  77)=         -14
      flst_real(   7,  77)=          -4
      flst_real(   8,  77)=          -3
 
      flst_real(   1,  78)=          -4
      flst_real(   2,  78)=           3
      flst_real(   3,  78)=         -11
      flst_real(   4,  78)=          12
      flst_real(   5,  78)=          13
      flst_real(   6,  78)=         -14
      flst_real(   7,  78)=           1
      flst_real(   8,  78)=          -2
 
      flst_real(   1,  79)=          -4
      flst_real(   2,  79)=           3
      flst_real(   3,  79)=         -11
      flst_real(   4,  79)=          12
      flst_real(   5,  79)=          13
      flst_real(   6,  79)=         -14
      flst_real(   7,  79)=          -4
      flst_real(   8,  79)=           3
 
      flst_real(   1,  80)=          -4
      flst_real(   2,  80)=           0
      flst_real(   3,  80)=         -11
      flst_real(   4,  80)=          12
      flst_real(   5,  80)=          13
      flst_real(   6,  80)=         -14
      flst_real(   7,  80)=          -4
      flst_real(   8,  80)=           0
 
      flst_real(   1,  81)=           4
      flst_real(   2,  81)=          -1
      flst_real(   3,  81)=         -11
      flst_real(   4,  81)=          12
      flst_real(   5,  81)=          13
      flst_real(   6,  81)=         -14
      flst_real(   7,  81)=          -1
      flst_real(   8,  81)=           4
 
      flst_real(   1,  82)=           4
      flst_real(   2,  82)=           1
      flst_real(   3,  82)=         -11
      flst_real(   4,  82)=          12
      flst_real(   5,  82)=          13
      flst_real(   6,  82)=         -14
      flst_real(   7,  82)=           1
      flst_real(   8,  82)=           4
 
      flst_real(   1,  83)=           4
      flst_real(   2,  83)=           1
      flst_real(   3,  83)=         -11
      flst_real(   4,  83)=          12
      flst_real(   5,  83)=          13
      flst_real(   6,  83)=         -14
      flst_real(   7,  83)=           2
      flst_real(   8,  83)=           3
 
      flst_real(   1,  84)=           4
      flst_real(   2,  84)=          -2
      flst_real(   3,  84)=         -11
      flst_real(   4,  84)=          12
      flst_real(   5,  84)=          13
      flst_real(   6,  84)=         -14
      flst_real(   7,  84)=          -1
      flst_real(   8,  84)=           3
 
      flst_real(   1,  85)=           4
      flst_real(   2,  85)=          -2
      flst_real(   3,  85)=         -11
      flst_real(   4,  85)=          12
      flst_real(   5,  85)=          13
      flst_real(   6,  85)=         -14
      flst_real(   7,  85)=          -2
      flst_real(   8,  85)=           4
 
      flst_real(   1,  86)=           4
      flst_real(   2,  86)=           2
      flst_real(   3,  86)=         -11
      flst_real(   4,  86)=          12
      flst_real(   5,  86)=          13
      flst_real(   6,  86)=         -14
      flst_real(   7,  86)=           2
      flst_real(   8,  86)=           4
 
      flst_real(   1,  87)=           4
      flst_real(   2,  87)=          -4
      flst_real(   3,  87)=         -11
      flst_real(   4,  87)=          12
      flst_real(   5,  87)=          13
      flst_real(   6,  87)=         -14
      flst_real(   7,  87)=           1
      flst_real(   8,  87)=          -1
 
      flst_real(   1,  88)=           4
      flst_real(   2,  88)=          -4
      flst_real(   3,  88)=         -11
      flst_real(   4,  88)=          12
      flst_real(   5,  88)=          13
      flst_real(   6,  88)=         -14
      flst_real(   7,  88)=           2
      flst_real(   8,  88)=          -2
 
      flst_real(   1,  89)=           4
      flst_real(   2,  89)=          -4
      flst_real(   3,  89)=         -11
      flst_real(   4,  89)=          12
      flst_real(   5,  89)=          13
      flst_real(   6,  89)=         -14
      flst_real(   7,  89)=           4
      flst_real(   8,  89)=          -4
 
      flst_real(   1,  90)=           4
      flst_real(   2,  90)=          -4
      flst_real(   3,  90)=         -11
      flst_real(   4,  90)=          12
      flst_real(   5,  90)=          13
      flst_real(   6,  90)=         -14
      flst_real(   7,  90)=           3
      flst_real(   8,  90)=          -3
 
      flst_real(   1,  91)=           4
      flst_real(   2,  91)=          -4
      flst_real(   3,  91)=         -11
      flst_real(   4,  91)=          12
      flst_real(   5,  91)=          13
      flst_real(   6,  91)=         -14
      flst_real(   7,  91)=           0
      flst_real(   8,  91)=           0
 
      flst_real(   1,  92)=           4
      flst_real(   2,  92)=           4
      flst_real(   3,  92)=         -11
      flst_real(   4,  92)=          12
      flst_real(   5,  92)=          13
      flst_real(   6,  92)=         -14
      flst_real(   7,  92)=           4
      flst_real(   8,  92)=           4
 
      flst_real(   1,  93)=           4
      flst_real(   2,  93)=          -3
      flst_real(   3,  93)=         -11
      flst_real(   4,  93)=          12
      flst_real(   5,  93)=          13
      flst_real(   6,  93)=         -14
      flst_real(   7,  93)=          -1
      flst_real(   8,  93)=           2
 
      flst_real(   1,  94)=           4
      flst_real(   2,  94)=          -3
      flst_real(   3,  94)=         -11
      flst_real(   4,  94)=          12
      flst_real(   5,  94)=          13
      flst_real(   6,  94)=         -14
      flst_real(   7,  94)=           4
      flst_real(   8,  94)=          -3
 
      flst_real(   1,  95)=           4
      flst_real(   2,  95)=           3
      flst_real(   3,  95)=         -11
      flst_real(   4,  95)=          12
      flst_real(   5,  95)=          13
      flst_real(   6,  95)=         -14
      flst_real(   7,  95)=           4
      flst_real(   8,  95)=           3
 
      flst_real(   1,  96)=           4
      flst_real(   2,  96)=           0
      flst_real(   3,  96)=         -11
      flst_real(   4,  96)=          12
      flst_real(   5,  96)=          13
      flst_real(   6,  96)=         -14
      flst_real(   7,  96)=           4
      flst_real(   8,  96)=           0
 
      flst_real(   1,  97)=          -3
      flst_real(   2,  97)=          -1
      flst_real(   3,  97)=         -11
      flst_real(   4,  97)=          12
      flst_real(   5,  97)=          13
      flst_real(   6,  97)=         -14
      flst_real(   7,  97)=          -1
      flst_real(   8,  97)=          -3
 
      flst_real(   1,  98)=          -3
      flst_real(   2,  98)=           1
      flst_real(   3,  98)=         -11
      flst_real(   4,  98)=          12
      flst_real(   5,  98)=          13
      flst_real(   6,  98)=         -14
      flst_real(   7,  98)=           1
      flst_real(   8,  98)=          -3
 
      flst_real(   1,  99)=          -3
      flst_real(   2,  99)=           1
      flst_real(   3,  99)=         -11
      flst_real(   4,  99)=          12
      flst_real(   5,  99)=          13
      flst_real(   6,  99)=         -14
      flst_real(   7,  99)=           2
      flst_real(   8,  99)=          -4
 
      flst_real(   1, 100)=          -3
      flst_real(   2, 100)=          -2
      flst_real(   3, 100)=         -11
      flst_real(   4, 100)=          12
      flst_real(   5, 100)=          13
      flst_real(   6, 100)=         -14
      flst_real(   7, 100)=          -1
      flst_real(   8, 100)=          -4
 
      flst_real(   1, 101)=          -3
      flst_real(   2, 101)=          -2
      flst_real(   3, 101)=         -11
      flst_real(   4, 101)=          12
      flst_real(   5, 101)=          13
      flst_real(   6, 101)=         -14
      flst_real(   7, 101)=          -2
      flst_real(   8, 101)=          -3
 
      flst_real(   1, 102)=          -3
      flst_real(   2, 102)=           2
      flst_real(   3, 102)=         -11
      flst_real(   4, 102)=          12
      flst_real(   5, 102)=          13
      flst_real(   6, 102)=         -14
      flst_real(   7, 102)=           2
      flst_real(   8, 102)=          -3
 
      flst_real(   1, 103)=          -3
      flst_real(   2, 103)=          -4
      flst_real(   3, 103)=         -11
      flst_real(   4, 103)=          12
      flst_real(   5, 103)=          13
      flst_real(   6, 103)=         -14
      flst_real(   7, 103)=          -4
      flst_real(   8, 103)=          -3
 
      flst_real(   1, 104)=          -3
      flst_real(   2, 104)=           4
      flst_real(   3, 104)=         -11
      flst_real(   4, 104)=          12
      flst_real(   5, 104)=          13
      flst_real(   6, 104)=         -14
      flst_real(   7, 104)=          -1
      flst_real(   8, 104)=           2
 
      flst_real(   1, 105)=          -3
      flst_real(   2, 105)=           4
      flst_real(   3, 105)=         -11
      flst_real(   4, 105)=          12
      flst_real(   5, 105)=          13
      flst_real(   6, 105)=         -14
      flst_real(   7, 105)=           4
      flst_real(   8, 105)=          -3
 
      flst_real(   1, 106)=          -3
      flst_real(   2, 106)=          -3
      flst_real(   3, 106)=         -11
      flst_real(   4, 106)=          12
      flst_real(   5, 106)=          13
      flst_real(   6, 106)=         -14
      flst_real(   7, 106)=          -3
      flst_real(   8, 106)=          -3
 
      flst_real(   1, 107)=          -3
      flst_real(   2, 107)=           3
      flst_real(   3, 107)=         -11
      flst_real(   4, 107)=          12
      flst_real(   5, 107)=          13
      flst_real(   6, 107)=         -14
      flst_real(   7, 107)=           1
      flst_real(   8, 107)=          -1
 
      flst_real(   1, 108)=          -3
      flst_real(   2, 108)=           3
      flst_real(   3, 108)=         -11
      flst_real(   4, 108)=          12
      flst_real(   5, 108)=          13
      flst_real(   6, 108)=         -14
      flst_real(   7, 108)=           2
      flst_real(   8, 108)=          -2
 
      flst_real(   1, 109)=          -3
      flst_real(   2, 109)=           3
      flst_real(   3, 109)=         -11
      flst_real(   4, 109)=          12
      flst_real(   5, 109)=          13
      flst_real(   6, 109)=         -14
      flst_real(   7, 109)=           4
      flst_real(   8, 109)=          -4
 
      flst_real(   1, 110)=          -3
      flst_real(   2, 110)=           3
      flst_real(   3, 110)=         -11
      flst_real(   4, 110)=          12
      flst_real(   5, 110)=          13
      flst_real(   6, 110)=         -14
      flst_real(   7, 110)=           3
      flst_real(   8, 110)=          -3
 
      flst_real(   1, 111)=          -3
      flst_real(   2, 111)=           3
      flst_real(   3, 111)=         -11
      flst_real(   4, 111)=          12
      flst_real(   5, 111)=          13
      flst_real(   6, 111)=         -14
      flst_real(   7, 111)=           0
      flst_real(   8, 111)=           0
 
      flst_real(   1, 112)=          -3
      flst_real(   2, 112)=           0
      flst_real(   3, 112)=         -11
      flst_real(   4, 112)=          12
      flst_real(   5, 112)=          13
      flst_real(   6, 112)=         -14
      flst_real(   7, 112)=          -3
      flst_real(   8, 112)=           0
 
      flst_real(   1, 113)=           3
      flst_real(   2, 113)=          -1
      flst_real(   3, 113)=         -11
      flst_real(   4, 113)=          12
      flst_real(   5, 113)=          13
      flst_real(   6, 113)=         -14
      flst_real(   7, 113)=          -1
      flst_real(   8, 113)=           3
 
      flst_real(   1, 114)=           3
      flst_real(   2, 114)=          -1
      flst_real(   3, 114)=         -11
      flst_real(   4, 114)=          12
      flst_real(   5, 114)=          13
      flst_real(   6, 114)=         -14
      flst_real(   7, 114)=          -2
      flst_real(   8, 114)=           4
 
      flst_real(   1, 115)=           3
      flst_real(   2, 115)=           1
      flst_real(   3, 115)=         -11
      flst_real(   4, 115)=          12
      flst_real(   5, 115)=          13
      flst_real(   6, 115)=         -14
      flst_real(   7, 115)=           1
      flst_real(   8, 115)=           3
 
      flst_real(   1, 116)=           3
      flst_real(   2, 116)=          -2
      flst_real(   3, 116)=         -11
      flst_real(   4, 116)=          12
      flst_real(   5, 116)=          13
      flst_real(   6, 116)=         -14
      flst_real(   7, 116)=          -2
      flst_real(   8, 116)=           3
 
      flst_real(   1, 117)=           3
      flst_real(   2, 117)=           2
      flst_real(   3, 117)=         -11
      flst_real(   4, 117)=          12
      flst_real(   5, 117)=          13
      flst_real(   6, 117)=         -14
      flst_real(   7, 117)=           1
      flst_real(   8, 117)=           4
 
      flst_real(   1, 118)=           3
      flst_real(   2, 118)=           2
      flst_real(   3, 118)=         -11
      flst_real(   4, 118)=          12
      flst_real(   5, 118)=          13
      flst_real(   6, 118)=         -14
      flst_real(   7, 118)=           2
      flst_real(   8, 118)=           3
 
      flst_real(   1, 119)=           3
      flst_real(   2, 119)=          -4
      flst_real(   3, 119)=         -11
      flst_real(   4, 119)=          12
      flst_real(   5, 119)=          13
      flst_real(   6, 119)=         -14
      flst_real(   7, 119)=           1
      flst_real(   8, 119)=          -2
 
      flst_real(   1, 120)=           3
      flst_real(   2, 120)=          -4
      flst_real(   3, 120)=         -11
      flst_real(   4, 120)=          12
      flst_real(   5, 120)=          13
      flst_real(   6, 120)=         -14
      flst_real(   7, 120)=          -4
      flst_real(   8, 120)=           3
 
      flst_real(   1, 121)=           3
      flst_real(   2, 121)=           4
      flst_real(   3, 121)=         -11
      flst_real(   4, 121)=          12
      flst_real(   5, 121)=          13
      flst_real(   6, 121)=         -14
      flst_real(   7, 121)=           4
      flst_real(   8, 121)=           3
 
      flst_real(   1, 122)=           3
      flst_real(   2, 122)=          -3
      flst_real(   3, 122)=         -11
      flst_real(   4, 122)=          12
      flst_real(   5, 122)=          13
      flst_real(   6, 122)=         -14
      flst_real(   7, 122)=           1
      flst_real(   8, 122)=          -1
 
      flst_real(   1, 123)=           3
      flst_real(   2, 123)=          -3
      flst_real(   3, 123)=         -11
      flst_real(   4, 123)=          12
      flst_real(   5, 123)=          13
      flst_real(   6, 123)=         -14
      flst_real(   7, 123)=           2
      flst_real(   8, 123)=          -2
 
      flst_real(   1, 124)=           3
      flst_real(   2, 124)=          -3
      flst_real(   3, 124)=         -11
      flst_real(   4, 124)=          12
      flst_real(   5, 124)=          13
      flst_real(   6, 124)=         -14
      flst_real(   7, 124)=           4
      flst_real(   8, 124)=          -4
 
      flst_real(   1, 125)=           3
      flst_real(   2, 125)=          -3
      flst_real(   3, 125)=         -11
      flst_real(   4, 125)=          12
      flst_real(   5, 125)=          13
      flst_real(   6, 125)=         -14
      flst_real(   7, 125)=           3
      flst_real(   8, 125)=          -3
 
      flst_real(   1, 126)=           3
      flst_real(   2, 126)=          -3
      flst_real(   3, 126)=         -11
      flst_real(   4, 126)=          12
      flst_real(   5, 126)=          13
      flst_real(   6, 126)=         -14
      flst_real(   7, 126)=           0
      flst_real(   8, 126)=           0
 
      flst_real(   1, 127)=           3
      flst_real(   2, 127)=           3
      flst_real(   3, 127)=         -11
      flst_real(   4, 127)=          12
      flst_real(   5, 127)=          13
      flst_real(   6, 127)=         -14
      flst_real(   7, 127)=           3
      flst_real(   8, 127)=           3
 
      flst_real(   1, 128)=           3
      flst_real(   2, 128)=           0
      flst_real(   3, 128)=         -11
      flst_real(   4, 128)=          12
      flst_real(   5, 128)=          13
      flst_real(   6, 128)=         -14
      flst_real(   7, 128)=           3
      flst_real(   8, 128)=           0
 
      flst_real(   1, 129)=           0
      flst_real(   2, 129)=          -1
      flst_real(   3, 129)=         -11
      flst_real(   4, 129)=          12
      flst_real(   5, 129)=          13
      flst_real(   6, 129)=         -14
      flst_real(   7, 129)=          -1
      flst_real(   8, 129)=           0
 
      flst_real(   1, 130)=           0
      flst_real(   2, 130)=           1
      flst_real(   3, 130)=         -11
      flst_real(   4, 130)=          12
      flst_real(   5, 130)=          13
      flst_real(   6, 130)=         -14
      flst_real(   7, 130)=           1
      flst_real(   8, 130)=           0
 
      flst_real(   1, 131)=           0
      flst_real(   2, 131)=          -2
      flst_real(   3, 131)=         -11
      flst_real(   4, 131)=          12
      flst_real(   5, 131)=          13
      flst_real(   6, 131)=         -14
      flst_real(   7, 131)=          -2
      flst_real(   8, 131)=           0
 
      flst_real(   1, 132)=           0
      flst_real(   2, 132)=           2
      flst_real(   3, 132)=         -11
      flst_real(   4, 132)=          12
      flst_real(   5, 132)=          13
      flst_real(   6, 132)=         -14
      flst_real(   7, 132)=           2
      flst_real(   8, 132)=           0
 
      flst_real(   1, 133)=           0
      flst_real(   2, 133)=          -4
      flst_real(   3, 133)=         -11
      flst_real(   4, 133)=          12
      flst_real(   5, 133)=          13
      flst_real(   6, 133)=         -14
      flst_real(   7, 133)=          -4
      flst_real(   8, 133)=           0
 
      flst_real(   1, 134)=           0
      flst_real(   2, 134)=           4
      flst_real(   3, 134)=         -11
      flst_real(   4, 134)=          12
      flst_real(   5, 134)=          13
      flst_real(   6, 134)=         -14
      flst_real(   7, 134)=           4
      flst_real(   8, 134)=           0
 
      flst_real(   1, 135)=           0
      flst_real(   2, 135)=          -3
      flst_real(   3, 135)=         -11
      flst_real(   4, 135)=          12
      flst_real(   5, 135)=          13
      flst_real(   6, 135)=         -14
      flst_real(   7, 135)=          -3
      flst_real(   8, 135)=           0
 
      flst_real(   1, 136)=           0
      flst_real(   2, 136)=           3
      flst_real(   3, 136)=         -11
      flst_real(   4, 136)=          12
      flst_real(   5, 136)=          13
      flst_real(   6, 136)=         -14
      flst_real(   7, 136)=           3
      flst_real(   8, 136)=           0
 
      flst_real(   1, 137)=           0
      flst_real(   2, 137)=           0
      flst_real(   3, 137)=         -11
      flst_real(   4, 137)=          12
      flst_real(   5, 137)=          13
      flst_real(   6, 137)=         -14
      flst_real(   7, 137)=           1
      flst_real(   8, 137)=          -1
 
      flst_real(   1, 138)=           0
      flst_real(   2, 138)=           0
      flst_real(   3, 138)=         -11
      flst_real(   4, 138)=          12
      flst_real(   5, 138)=          13
      flst_real(   6, 138)=         -14
      flst_real(   7, 138)=           2
      flst_real(   8, 138)=          -2
 
      flst_real(   1, 139)=           0
      flst_real(   2, 139)=           0
      flst_real(   3, 139)=         -11
      flst_real(   4, 139)=          12
      flst_real(   5, 139)=          13
      flst_real(   6, 139)=         -14
      flst_real(   7, 139)=           4
      flst_real(   8, 139)=          -4
 
      flst_real(   1, 140)=           0
      flst_real(   2, 140)=           0
      flst_real(   3, 140)=         -11
      flst_real(   4, 140)=          12
      flst_real(   5, 140)=          13
      flst_real(   6, 140)=         -14
      flst_real(   7, 140)=           3
      flst_real(   8, 140)=          -3
 
      flst_nreal=         140
 
      return
      end
 
