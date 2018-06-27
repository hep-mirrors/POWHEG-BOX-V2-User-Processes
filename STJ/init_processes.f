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
      st_bornorder=1
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
      integer i,ii
      
      flst_born(   1,   1)=          -1
      flst_born(   2,   1)=           5
      flst_born(   3,   1)=           6
      flst_born(   4,   1)=          -2
      flst_born(   5,   1)=           0
 
      flst_born(   1,   2)=           2
      flst_born(   2,   2)=           5
      flst_born(   3,   2)=           6
      flst_born(   4,   2)=           1
      flst_born(   5,   2)=           0
 
      flst_born(   1,   3)=          -3
      flst_born(   2,   3)=           5
      flst_born(   3,   3)=           6
      flst_born(   4,   3)=          -4
      flst_born(   5,   3)=           0
 
      flst_born(   1,   4)=           4
      flst_born(   2,   4)=           5
      flst_born(   3,   4)=           6
      flst_born(   4,   4)=           3
      flst_born(   5,   4)=           0
 
      flst_born(   1,   5)=           5
      flst_born(   2,   5)=          -1
      flst_born(   3,   5)=           6
      flst_born(   4,   5)=          -2
      flst_born(   5,   5)=           0
 
      flst_born(   1,   6)=           5
      flst_born(   2,   6)=           2
      flst_born(   3,   6)=           6
      flst_born(   4,   6)=           1
      flst_born(   5,   6)=           0
 
      flst_born(   1,   7)=           5
      flst_born(   2,   7)=          -3
      flst_born(   3,   7)=           6
      flst_born(   4,   7)=          -4
      flst_born(   5,   7)=           0
 
      flst_born(   1,   8)=           5
      flst_born(   2,   8)=           4
      flst_born(   3,   8)=           6
      flst_born(   4,   8)=           3
      flst_born(   5,   8)=           0
 
      flst_born(   1,   9)=          -1
      flst_born(   2,   9)=           0
      flst_born(   3,   9)=           6
      flst_born(   4,   9)=          -2
      flst_born(   5,   9)=          -5
 
      flst_born(   1,  10)=           2
      flst_born(   2,  10)=           0
      flst_born(   3,  10)=           6
      flst_born(   4,  10)=           1
      flst_born(   5,  10)=          -5
 
      flst_born(   1,  11)=          -3
      flst_born(   2,  11)=           0
      flst_born(   3,  11)=           6
      flst_born(   4,  11)=          -4
      flst_born(   5,  11)=          -5
 
      flst_born(   1,  12)=           4
      flst_born(   2,  12)=           0
      flst_born(   3,  12)=           6
      flst_born(   4,  12)=           3
      flst_born(   5,  12)=          -5
 
      flst_born(   1,  13)=           5
      flst_born(   2,  13)=           0
      flst_born(   3,  13)=           6
      flst_born(   4,  13)=           1
      flst_born(   5,  13)=          -2
 
      flst_born(   1,  14)=           5
      flst_born(   2,  14)=           0
      flst_born(   3,  14)=           6
      flst_born(   4,  14)=           3
      flst_born(   5,  14)=          -4
 
      flst_born(   1,  15)=           0
      flst_born(   2,  15)=          -1
      flst_born(   3,  15)=           6
      flst_born(   4,  15)=          -2
      flst_born(   5,  15)=          -5
 
      flst_born(   1,  16)=           0
      flst_born(   2,  16)=           2
      flst_born(   3,  16)=           6
      flst_born(   4,  16)=           1
      flst_born(   5,  16)=          -5
 
      flst_born(   1,  17)=           0
      flst_born(   2,  17)=          -3
      flst_born(   3,  17)=           6
      flst_born(   4,  17)=          -4
      flst_born(   5,  17)=          -5
 
      flst_born(   1,  18)=           0
      flst_born(   2,  18)=           4
      flst_born(   3,  18)=           6
      flst_born(   4,  18)=           3
      flst_born(   5,  18)=          -5
 
      flst_born(   1,  19)=           0
      flst_born(   2,  19)=           5
      flst_born(   3,  19)=           6
      flst_born(   4,  19)=           1
      flst_born(   5,  19)=          -2
 
      flst_born(   1,  20)=           0
      flst_born(   2,  20)=           5
      flst_born(   3,  20)=           6
      flst_born(   4,  20)=           3
      flst_born(   5,  20)=          -4
 
      flst_nborn=          20
 
      do i=1,flst_nborn
         do ii=1,nlegborn
            if (flst_born(ii,i).eq.0) then
               flst_borntags(ii,i)=0 ! gluon
            elseif(abs(flst_born(ii,i)).le.4) then
               flst_borntags(ii,i)=2 ! massless quark line
            elseif(abs(flst_born(ii,i)).le.6) then
               flst_borntags(ii,i)=1 ! massive quark line
            else
               write (*,*) 'ERROR #1 in init_processes_born',ii,i
     $              ,flst_born(ii,i)
               stop
            endif
         enddo
      enddo
      end
 
 
 
      subroutine init_processes_real
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      integer i,ii
      logical gluon_process
 
      flst_real(   1,   1)=          -1
      flst_real(   2,   1)=           5
      flst_real(   3,   1)=           6
      flst_real(   4,   1)=          -2
      flst_real(   5,   1)=           1
      flst_real(   6,   1)=          -1
 
      flst_real(   1,   2)=          -1
      flst_real(   2,   2)=           5
      flst_real(   3,   2)=           6
      flst_real(   4,   2)=          -2
      flst_real(   5,   2)=           2
      flst_real(   6,   2)=          -2
 
      flst_real(   1,   3)=          -1
      flst_real(   2,   3)=           5
      flst_real(   3,   3)=           6
      flst_real(   4,   3)=          -2
      flst_real(   5,   3)=           3
      flst_real(   6,   3)=          -3
 
      flst_real(   1,   4)=          -1
      flst_real(   2,   4)=           5
      flst_real(   3,   4)=           6
      flst_real(   4,   4)=          -2
      flst_real(   5,   4)=           4
      flst_real(   6,   4)=          -4
 
      flst_real(   1,   5)=          -1
      flst_real(   2,   5)=           5
      flst_real(   3,   5)=           6
      flst_real(   4,   5)=          -2
      flst_real(   5,   5)=           5
      flst_real(   6,   5)=          -5
 
      flst_real(   1,   6)=          -1
      flst_real(   2,   6)=           5
      flst_real(   3,   6)=           6
      flst_real(   4,   6)=          -2
      flst_real(   5,   6)=           0
      flst_real(   6,   6)=           0
 
      flst_real(   1,   7)=           2
      flst_real(   2,   7)=           5
      flst_real(   3,   7)=           6
      flst_real(   4,   7)=           1
      flst_real(   5,   7)=           1
      flst_real(   6,   7)=          -1
 
      flst_real(   1,   8)=           2
      flst_real(   2,   8)=           5
      flst_real(   3,   8)=           6
      flst_real(   4,   8)=           1
      flst_real(   5,   8)=           2
      flst_real(   6,   8)=          -2
 
      flst_real(   1,   9)=           2
      flst_real(   2,   9)=           5
      flst_real(   3,   9)=           6
      flst_real(   4,   9)=           1
      flst_real(   5,   9)=           3
      flst_real(   6,   9)=          -3
 
      flst_real(   1,  10)=           2
      flst_real(   2,  10)=           5
      flst_real(   3,  10)=           6
      flst_real(   4,  10)=           1
      flst_real(   5,  10)=           4
      flst_real(   6,  10)=          -4
 
      flst_real(   1,  11)=           2
      flst_real(   2,  11)=           5
      flst_real(   3,  11)=           6
      flst_real(   4,  11)=           1
      flst_real(   5,  11)=           5
      flst_real(   6,  11)=          -5
 
      flst_real(   1,  12)=           2
      flst_real(   2,  12)=           5
      flst_real(   3,  12)=           6
      flst_real(   4,  12)=           1
      flst_real(   5,  12)=           0
      flst_real(   6,  12)=           0
 
      flst_real(   1,  13)=          -3
      flst_real(   2,  13)=           5
      flst_real(   3,  13)=           6
      flst_real(   4,  13)=          -4
      flst_real(   5,  13)=           1
      flst_real(   6,  13)=          -1
 
      flst_real(   1,  14)=          -3
      flst_real(   2,  14)=           5
      flst_real(   3,  14)=           6
      flst_real(   4,  14)=          -4
      flst_real(   5,  14)=           2
      flst_real(   6,  14)=          -2
 
      flst_real(   1,  15)=          -3
      flst_real(   2,  15)=           5
      flst_real(   3,  15)=           6
      flst_real(   4,  15)=          -4
      flst_real(   5,  15)=           3
      flst_real(   6,  15)=          -3
 
      flst_real(   1,  16)=          -3
      flst_real(   2,  16)=           5
      flst_real(   3,  16)=           6
      flst_real(   4,  16)=          -4
      flst_real(   5,  16)=           4
      flst_real(   6,  16)=          -4
 
      flst_real(   1,  17)=          -3
      flst_real(   2,  17)=           5
      flst_real(   3,  17)=           6
      flst_real(   4,  17)=          -4
      flst_real(   5,  17)=           5
      flst_real(   6,  17)=          -5
 
      flst_real(   1,  18)=          -3
      flst_real(   2,  18)=           5
      flst_real(   3,  18)=           6
      flst_real(   4,  18)=          -4
      flst_real(   5,  18)=           0
      flst_real(   6,  18)=           0
 
      flst_real(   1,  19)=           4
      flst_real(   2,  19)=           5
      flst_real(   3,  19)=           6
      flst_real(   4,  19)=           3
      flst_real(   5,  19)=           1
      flst_real(   6,  19)=          -1
 
      flst_real(   1,  20)=           4
      flst_real(   2,  20)=           5
      flst_real(   3,  20)=           6
      flst_real(   4,  20)=           3
      flst_real(   5,  20)=           2
      flst_real(   6,  20)=          -2
 
      flst_real(   1,  21)=           4
      flst_real(   2,  21)=           5
      flst_real(   3,  21)=           6
      flst_real(   4,  21)=           3
      flst_real(   5,  21)=           3
      flst_real(   6,  21)=          -3
 
      flst_real(   1,  22)=           4
      flst_real(   2,  22)=           5
      flst_real(   3,  22)=           6
      flst_real(   4,  22)=           3
      flst_real(   5,  22)=           4
      flst_real(   6,  22)=          -4
 
      flst_real(   1,  23)=           4
      flst_real(   2,  23)=           5
      flst_real(   3,  23)=           6
      flst_real(   4,  23)=           3
      flst_real(   5,  23)=           5
      flst_real(   6,  23)=          -5
 
      flst_real(   1,  24)=           4
      flst_real(   2,  24)=           5
      flst_real(   3,  24)=           6
      flst_real(   4,  24)=           3
      flst_real(   5,  24)=           0
      flst_real(   6,  24)=           0
 
      flst_real(   1,  25)=           5
      flst_real(   2,  25)=          -1
      flst_real(   3,  25)=           6
      flst_real(   4,  25)=          -2
      flst_real(   5,  25)=           1
      flst_real(   6,  25)=          -1
 
      flst_real(   1,  26)=           5
      flst_real(   2,  26)=          -1
      flst_real(   3,  26)=           6
      flst_real(   4,  26)=          -2
      flst_real(   5,  26)=           2
      flst_real(   6,  26)=          -2
 
      flst_real(   1,  27)=           5
      flst_real(   2,  27)=          -1
      flst_real(   3,  27)=           6
      flst_real(   4,  27)=          -2
      flst_real(   5,  27)=           3
      flst_real(   6,  27)=          -3
 
      flst_real(   1,  28)=           5
      flst_real(   2,  28)=          -1
      flst_real(   3,  28)=           6
      flst_real(   4,  28)=          -2
      flst_real(   5,  28)=           4
      flst_real(   6,  28)=          -4
 
      flst_real(   1,  29)=           5
      flst_real(   2,  29)=          -1
      flst_real(   3,  29)=           6
      flst_real(   4,  29)=          -2
      flst_real(   5,  29)=           5
      flst_real(   6,  29)=          -5
 
      flst_real(   1,  30)=           5
      flst_real(   2,  30)=          -1
      flst_real(   3,  30)=           6
      flst_real(   4,  30)=          -2
      flst_real(   5,  30)=           0
      flst_real(   6,  30)=           0
 
      flst_real(   1,  31)=           5
      flst_real(   2,  31)=           2
      flst_real(   3,  31)=           6
      flst_real(   4,  31)=           1
      flst_real(   5,  31)=           1
      flst_real(   6,  31)=          -1
 
      flst_real(   1,  32)=           5
      flst_real(   2,  32)=           2
      flst_real(   3,  32)=           6
      flst_real(   4,  32)=           1
      flst_real(   5,  32)=           2
      flst_real(   6,  32)=          -2
 
      flst_real(   1,  33)=           5
      flst_real(   2,  33)=           2
      flst_real(   3,  33)=           6
      flst_real(   4,  33)=           1
      flst_real(   5,  33)=           3
      flst_real(   6,  33)=          -3
 
      flst_real(   1,  34)=           5
      flst_real(   2,  34)=           2
      flst_real(   3,  34)=           6
      flst_real(   4,  34)=           1
      flst_real(   5,  34)=           4
      flst_real(   6,  34)=          -4
 
      flst_real(   1,  35)=           5
      flst_real(   2,  35)=           2
      flst_real(   3,  35)=           6
      flst_real(   4,  35)=           1
      flst_real(   5,  35)=           5
      flst_real(   6,  35)=          -5
 
      flst_real(   1,  36)=           5
      flst_real(   2,  36)=           2
      flst_real(   3,  36)=           6
      flst_real(   4,  36)=           1
      flst_real(   5,  36)=           0
      flst_real(   6,  36)=           0
 
      flst_real(   1,  37)=           5
      flst_real(   2,  37)=          -3
      flst_real(   3,  37)=           6
      flst_real(   4,  37)=          -4
      flst_real(   5,  37)=           1
      flst_real(   6,  37)=          -1
 
      flst_real(   1,  38)=           5
      flst_real(   2,  38)=          -3
      flst_real(   3,  38)=           6
      flst_real(   4,  38)=          -4
      flst_real(   5,  38)=           2
      flst_real(   6,  38)=          -2
 
      flst_real(   1,  39)=           5
      flst_real(   2,  39)=          -3
      flst_real(   3,  39)=           6
      flst_real(   4,  39)=          -4
      flst_real(   5,  39)=           3
      flst_real(   6,  39)=          -3
 
      flst_real(   1,  40)=           5
      flst_real(   2,  40)=          -3
      flst_real(   3,  40)=           6
      flst_real(   4,  40)=          -4
      flst_real(   5,  40)=           4
      flst_real(   6,  40)=          -4
 
      flst_real(   1,  41)=           5
      flst_real(   2,  41)=          -3
      flst_real(   3,  41)=           6
      flst_real(   4,  41)=          -4
      flst_real(   5,  41)=           5
      flst_real(   6,  41)=          -5
 
      flst_real(   1,  42)=           5
      flst_real(   2,  42)=          -3
      flst_real(   3,  42)=           6
      flst_real(   4,  42)=          -4
      flst_real(   5,  42)=           0
      flst_real(   6,  42)=           0
 
      flst_real(   1,  43)=           5
      flst_real(   2,  43)=           4
      flst_real(   3,  43)=           6
      flst_real(   4,  43)=           3
      flst_real(   5,  43)=           1
      flst_real(   6,  43)=          -1
 
      flst_real(   1,  44)=           5
      flst_real(   2,  44)=           4
      flst_real(   3,  44)=           6
      flst_real(   4,  44)=           3
      flst_real(   5,  44)=           2
      flst_real(   6,  44)=          -2
 
      flst_real(   1,  45)=           5
      flst_real(   2,  45)=           4
      flst_real(   3,  45)=           6
      flst_real(   4,  45)=           3
      flst_real(   5,  45)=           3
      flst_real(   6,  45)=          -3
 
      flst_real(   1,  46)=           5
      flst_real(   2,  46)=           4
      flst_real(   3,  46)=           6
      flst_real(   4,  46)=           3
      flst_real(   5,  46)=           4
      flst_real(   6,  46)=          -4
 
      flst_real(   1,  47)=           5
      flst_real(   2,  47)=           4
      flst_real(   3,  47)=           6
      flst_real(   4,  47)=           3
      flst_real(   5,  47)=           5
      flst_real(   6,  47)=          -5
 
      flst_real(   1,  48)=           5
      flst_real(   2,  48)=           4
      flst_real(   3,  48)=           6
      flst_real(   4,  48)=           3
      flst_real(   5,  48)=           0
      flst_real(   6,  48)=           0
 
      flst_real(   1,  49)=          -1
      flst_real(   2,  49)=          -1
      flst_real(   3,  49)=           6
      flst_real(   4,  49)=          -2
      flst_real(   5,  49)=          -5
      flst_real(   6,  49)=          -1
 
      flst_real(   1,  50)=          -1
      flst_real(   2,  50)=           1
      flst_real(   3,  50)=           6
      flst_real(   4,  50)=          -2
      flst_real(   5,  50)=          -5
      flst_real(   6,  50)=           1
 
      flst_real(   1,  51)=          -1
      flst_real(   2,  51)=          -2
      flst_real(   3,  51)=           6
      flst_real(   4,  51)=          -2
      flst_real(   5,  51)=          -5
      flst_real(   6,  51)=          -2
 
      flst_real(   1,  52)=          -1
      flst_real(   2,  52)=           2
      flst_real(   3,  52)=           6
      flst_real(   4,  52)=          -2
      flst_real(   5,  52)=          -5
      flst_real(   6,  52)=           2
 
      flst_real(   1,  53)=          -1
      flst_real(   2,  53)=          -3
      flst_real(   3,  53)=           6
      flst_real(   4,  53)=          -2
      flst_real(   5,  53)=          -5
      flst_real(   6,  53)=          -3
 
      flst_real(   1,  54)=          -1
      flst_real(   2,  54)=           3
      flst_real(   3,  54)=           6
      flst_real(   4,  54)=          -2
      flst_real(   5,  54)=          -5
      flst_real(   6,  54)=           3
 
      flst_real(   1,  55)=          -1
      flst_real(   2,  55)=          -4
      flst_real(   3,  55)=           6
      flst_real(   4,  55)=          -2
      flst_real(   5,  55)=          -5
      flst_real(   6,  55)=          -4
 
      flst_real(   1,  56)=          -1
      flst_real(   2,  56)=           4
      flst_real(   3,  56)=           6
      flst_real(   4,  56)=          -2
      flst_real(   5,  56)=          -5
      flst_real(   6,  56)=           4
 
      flst_real(   1,  57)=          -1
      flst_real(   2,  57)=          -5
      flst_real(   3,  57)=           6
      flst_real(   4,  57)=          -2
      flst_real(   5,  57)=          -5
      flst_real(   6,  57)=          -5
 
      flst_real(   1,  58)=          -1
      flst_real(   2,  58)=           5
      flst_real(   3,  58)=           6
      flst_real(   4,  58)=          -2
      flst_real(   5,  58)=          -5
      flst_real(   6,  58)=           5
 
      flst_real(   1,  59)=          -1
      flst_real(   2,  59)=           0
      flst_real(   3,  59)=           6
      flst_real(   4,  59)=          -2
      flst_real(   5,  59)=          -5
      flst_real(   6,  59)=           0
 
      flst_real(   1,  60)=           2
      flst_real(   2,  60)=          -1
      flst_real(   3,  60)=           6
      flst_real(   4,  60)=           1
      flst_real(   5,  60)=          -5
      flst_real(   6,  60)=          -1
 
      flst_real(   1,  61)=           2
      flst_real(   2,  61)=           1
      flst_real(   3,  61)=           6
      flst_real(   4,  61)=           1
      flst_real(   5,  61)=          -5
      flst_real(   6,  61)=           1
 
      flst_real(   1,  62)=           2
      flst_real(   2,  62)=          -2
      flst_real(   3,  62)=           6
      flst_real(   4,  62)=           1
      flst_real(   5,  62)=          -5
      flst_real(   6,  62)=          -2
 
      flst_real(   1,  63)=           2
      flst_real(   2,  63)=           2
      flst_real(   3,  63)=           6
      flst_real(   4,  63)=           1
      flst_real(   5,  63)=          -5
      flst_real(   6,  63)=           2
 
      flst_real(   1,  64)=           2
      flst_real(   2,  64)=          -3
      flst_real(   3,  64)=           6
      flst_real(   4,  64)=           1
      flst_real(   5,  64)=          -5
      flst_real(   6,  64)=          -3
 
      flst_real(   1,  65)=           2
      flst_real(   2,  65)=           3
      flst_real(   3,  65)=           6
      flst_real(   4,  65)=           1
      flst_real(   5,  65)=          -5
      flst_real(   6,  65)=           3
 
      flst_real(   1,  66)=           2
      flst_real(   2,  66)=          -4
      flst_real(   3,  66)=           6
      flst_real(   4,  66)=           1
      flst_real(   5,  66)=          -5
      flst_real(   6,  66)=          -4
 
      flst_real(   1,  67)=           2
      flst_real(   2,  67)=           4
      flst_real(   3,  67)=           6
      flst_real(   4,  67)=           1
      flst_real(   5,  67)=          -5
      flst_real(   6,  67)=           4
 
      flst_real(   1,  68)=           2
      flst_real(   2,  68)=          -5
      flst_real(   3,  68)=           6
      flst_real(   4,  68)=           1
      flst_real(   5,  68)=          -5
      flst_real(   6,  68)=          -5
 
      flst_real(   1,  69)=           2
      flst_real(   2,  69)=           5
      flst_real(   3,  69)=           6
      flst_real(   4,  69)=           1
      flst_real(   5,  69)=          -5
      flst_real(   6,  69)=           5
 
      flst_real(   1,  70)=           2
      flst_real(   2,  70)=           0
      flst_real(   3,  70)=           6
      flst_real(   4,  70)=           1
      flst_real(   5,  70)=          -5
      flst_real(   6,  70)=           0
 
      flst_real(   1,  71)=          -3
      flst_real(   2,  71)=          -1
      flst_real(   3,  71)=           6
      flst_real(   4,  71)=          -4
      flst_real(   5,  71)=          -5
      flst_real(   6,  71)=          -1
 
      flst_real(   1,  72)=          -3
      flst_real(   2,  72)=           1
      flst_real(   3,  72)=           6
      flst_real(   4,  72)=          -4
      flst_real(   5,  72)=          -5
      flst_real(   6,  72)=           1
 
      flst_real(   1,  73)=          -3
      flst_real(   2,  73)=          -2
      flst_real(   3,  73)=           6
      flst_real(   4,  73)=          -4
      flst_real(   5,  73)=          -5
      flst_real(   6,  73)=          -2
 
      flst_real(   1,  74)=          -3
      flst_real(   2,  74)=           2
      flst_real(   3,  74)=           6
      flst_real(   4,  74)=          -4
      flst_real(   5,  74)=          -5
      flst_real(   6,  74)=           2
 
      flst_real(   1,  75)=          -3
      flst_real(   2,  75)=          -3
      flst_real(   3,  75)=           6
      flst_real(   4,  75)=          -4
      flst_real(   5,  75)=          -5
      flst_real(   6,  75)=          -3
 
      flst_real(   1,  76)=          -3
      flst_real(   2,  76)=           3
      flst_real(   3,  76)=           6
      flst_real(   4,  76)=          -4
      flst_real(   5,  76)=          -5
      flst_real(   6,  76)=           3
 
      flst_real(   1,  77)=          -3
      flst_real(   2,  77)=          -4
      flst_real(   3,  77)=           6
      flst_real(   4,  77)=          -4
      flst_real(   5,  77)=          -5
      flst_real(   6,  77)=          -4
 
      flst_real(   1,  78)=          -3
      flst_real(   2,  78)=           4
      flst_real(   3,  78)=           6
      flst_real(   4,  78)=          -4
      flst_real(   5,  78)=          -5
      flst_real(   6,  78)=           4
 
      flst_real(   1,  79)=          -3
      flst_real(   2,  79)=          -5
      flst_real(   3,  79)=           6
      flst_real(   4,  79)=          -4
      flst_real(   5,  79)=          -5
      flst_real(   6,  79)=          -5
 
      flst_real(   1,  80)=          -3
      flst_real(   2,  80)=           5
      flst_real(   3,  80)=           6
      flst_real(   4,  80)=          -4
      flst_real(   5,  80)=          -5
      flst_real(   6,  80)=           5
 
      flst_real(   1,  81)=          -3
      flst_real(   2,  81)=           0
      flst_real(   3,  81)=           6
      flst_real(   4,  81)=          -4
      flst_real(   5,  81)=          -5
      flst_real(   6,  81)=           0
 
      flst_real(   1,  82)=           4
      flst_real(   2,  82)=          -1
      flst_real(   3,  82)=           6
      flst_real(   4,  82)=           3
      flst_real(   5,  82)=          -5
      flst_real(   6,  82)=          -1
 
      flst_real(   1,  83)=           4
      flst_real(   2,  83)=           1
      flst_real(   3,  83)=           6
      flst_real(   4,  83)=           3
      flst_real(   5,  83)=          -5
      flst_real(   6,  83)=           1
 
      flst_real(   1,  84)=           4
      flst_real(   2,  84)=          -2
      flst_real(   3,  84)=           6
      flst_real(   4,  84)=           3
      flst_real(   5,  84)=          -5
      flst_real(   6,  84)=          -2
 
      flst_real(   1,  85)=           4
      flst_real(   2,  85)=           2
      flst_real(   3,  85)=           6
      flst_real(   4,  85)=           3
      flst_real(   5,  85)=          -5
      flst_real(   6,  85)=           2
 
      flst_real(   1,  86)=           4
      flst_real(   2,  86)=          -3
      flst_real(   3,  86)=           6
      flst_real(   4,  86)=           3
      flst_real(   5,  86)=          -5
      flst_real(   6,  86)=          -3
 
      flst_real(   1,  87)=           4
      flst_real(   2,  87)=           3
      flst_real(   3,  87)=           6
      flst_real(   4,  87)=           3
      flst_real(   5,  87)=          -5
      flst_real(   6,  87)=           3
 
      flst_real(   1,  88)=           4
      flst_real(   2,  88)=          -4
      flst_real(   3,  88)=           6
      flst_real(   4,  88)=           3
      flst_real(   5,  88)=          -5
      flst_real(   6,  88)=          -4
 
      flst_real(   1,  89)=           4
      flst_real(   2,  89)=           4
      flst_real(   3,  89)=           6
      flst_real(   4,  89)=           3
      flst_real(   5,  89)=          -5
      flst_real(   6,  89)=           4
 
      flst_real(   1,  90)=           4
      flst_real(   2,  90)=          -5
      flst_real(   3,  90)=           6
      flst_real(   4,  90)=           3
      flst_real(   5,  90)=          -5
      flst_real(   6,  90)=          -5
 
      flst_real(   1,  91)=           4
      flst_real(   2,  91)=           5
      flst_real(   3,  91)=           6
      flst_real(   4,  91)=           3
      flst_real(   5,  91)=          -5
      flst_real(   6,  91)=           5
 
      flst_real(   1,  92)=           4
      flst_real(   2,  92)=           0
      flst_real(   3,  92)=           6
      flst_real(   4,  92)=           3
      flst_real(   5,  92)=          -5
      flst_real(   6,  92)=           0
 
      flst_real(   1,  93)=           5
      flst_real(   2,  93)=          -1
      flst_real(   3,  93)=           6
      flst_real(   4,  93)=           1
      flst_real(   5,  93)=          -2
      flst_real(   6,  93)=          -1
 
      flst_real(   1,  94)=           5
      flst_real(   2,  94)=           1
      flst_real(   3,  94)=           6
      flst_real(   4,  94)=           1
      flst_real(   5,  94)=          -2
      flst_real(   6,  94)=           1
 
      flst_real(   1,  95)=           5
      flst_real(   2,  95)=          -2
      flst_real(   3,  95)=           6
      flst_real(   4,  95)=           1
      flst_real(   5,  95)=          -2
      flst_real(   6,  95)=          -2
 
      flst_real(   1,  96)=           5
      flst_real(   2,  96)=           2
      flst_real(   3,  96)=           6
      flst_real(   4,  96)=           1
      flst_real(   5,  96)=          -2
      flst_real(   6,  96)=           2
 
      flst_real(   1,  97)=           5
      flst_real(   2,  97)=          -3
      flst_real(   3,  97)=           6
      flst_real(   4,  97)=           1
      flst_real(   5,  97)=          -2
      flst_real(   6,  97)=          -3
 
      flst_real(   1,  98)=           5
      flst_real(   2,  98)=           3
      flst_real(   3,  98)=           6
      flst_real(   4,  98)=           1
      flst_real(   5,  98)=          -2
      flst_real(   6,  98)=           3
 
      flst_real(   1,  99)=           5
      flst_real(   2,  99)=          -4
      flst_real(   3,  99)=           6
      flst_real(   4,  99)=           1
      flst_real(   5,  99)=          -2
      flst_real(   6,  99)=          -4
 
      flst_real(   1, 100)=           5
      flst_real(   2, 100)=           4
      flst_real(   3, 100)=           6
      flst_real(   4, 100)=           1
      flst_real(   5, 100)=          -2
      flst_real(   6, 100)=           4
 
      flst_real(   1, 101)=           5
      flst_real(   2, 101)=          -5
      flst_real(   3, 101)=           6
      flst_real(   4, 101)=           1
      flst_real(   5, 101)=          -2
      flst_real(   6, 101)=          -5
 
      flst_real(   1, 102)=           5
      flst_real(   2, 102)=           5
      flst_real(   3, 102)=           6
      flst_real(   4, 102)=           1
      flst_real(   5, 102)=          -2
      flst_real(   6, 102)=           5
 
      flst_real(   1, 103)=           5
      flst_real(   2, 103)=           0
      flst_real(   3, 103)=           6
      flst_real(   4, 103)=           1
      flst_real(   5, 103)=          -2
      flst_real(   6, 103)=           0
 
      flst_real(   1, 104)=           5
      flst_real(   2, 104)=          -1
      flst_real(   3, 104)=           6
      flst_real(   4, 104)=           3
      flst_real(   5, 104)=          -4
      flst_real(   6, 104)=          -1
 
      flst_real(   1, 105)=           5
      flst_real(   2, 105)=           1
      flst_real(   3, 105)=           6
      flst_real(   4, 105)=           3
      flst_real(   5, 105)=          -4
      flst_real(   6, 105)=           1
 
      flst_real(   1, 106)=           5
      flst_real(   2, 106)=          -2
      flst_real(   3, 106)=           6
      flst_real(   4, 106)=           3
      flst_real(   5, 106)=          -4
      flst_real(   6, 106)=          -2
 
      flst_real(   1, 107)=           5
      flst_real(   2, 107)=           2
      flst_real(   3, 107)=           6
      flst_real(   4, 107)=           3
      flst_real(   5, 107)=          -4
      flst_real(   6, 107)=           2
 
      flst_real(   1, 108)=           5
      flst_real(   2, 108)=          -3
      flst_real(   3, 108)=           6
      flst_real(   4, 108)=           3
      flst_real(   5, 108)=          -4
      flst_real(   6, 108)=          -3
 
      flst_real(   1, 109)=           5
      flst_real(   2, 109)=           3
      flst_real(   3, 109)=           6
      flst_real(   4, 109)=           3
      flst_real(   5, 109)=          -4
      flst_real(   6, 109)=           3
 
      flst_real(   1, 110)=           5
      flst_real(   2, 110)=          -4
      flst_real(   3, 110)=           6
      flst_real(   4, 110)=           3
      flst_real(   5, 110)=          -4
      flst_real(   6, 110)=          -4
 
      flst_real(   1, 111)=           5
      flst_real(   2, 111)=           4
      flst_real(   3, 111)=           6
      flst_real(   4, 111)=           3
      flst_real(   5, 111)=          -4
      flst_real(   6, 111)=           4
 
      flst_real(   1, 112)=           5
      flst_real(   2, 112)=          -5
      flst_real(   3, 112)=           6
      flst_real(   4, 112)=           3
      flst_real(   5, 112)=          -4
      flst_real(   6, 112)=          -5
 
      flst_real(   1, 113)=           5
      flst_real(   2, 113)=           5
      flst_real(   3, 113)=           6
      flst_real(   4, 113)=           3
      flst_real(   5, 113)=          -4
      flst_real(   6, 113)=           5
 
      flst_real(   1, 114)=           5
      flst_real(   2, 114)=           0
      flst_real(   3, 114)=           6
      flst_real(   4, 114)=           3
      flst_real(   5, 114)=          -4
      flst_real(   6, 114)=           0
 
      flst_real(   1, 115)=          -1
      flst_real(   2, 115)=          -1
      flst_real(   3, 115)=           6
      flst_real(   4, 115)=          -2
      flst_real(   5, 115)=          -5
      flst_real(   6, 115)=          -1
 
      flst_real(   1, 116)=           1
      flst_real(   2, 116)=          -1
      flst_real(   3, 116)=           6
      flst_real(   4, 116)=          -2
      flst_real(   5, 116)=          -5
      flst_real(   6, 116)=           1
 
      flst_real(   1, 117)=          -2
      flst_real(   2, 117)=          -1
      flst_real(   3, 117)=           6
      flst_real(   4, 117)=          -2
      flst_real(   5, 117)=          -5
      flst_real(   6, 117)=          -2
 
      flst_real(   1, 118)=           2
      flst_real(   2, 118)=          -1
      flst_real(   3, 118)=           6
      flst_real(   4, 118)=          -2
      flst_real(   5, 118)=          -5
      flst_real(   6, 118)=           2
 
      flst_real(   1, 119)=          -3
      flst_real(   2, 119)=          -1
      flst_real(   3, 119)=           6
      flst_real(   4, 119)=          -2
      flst_real(   5, 119)=          -5
      flst_real(   6, 119)=          -3
 
      flst_real(   1, 120)=           3
      flst_real(   2, 120)=          -1
      flst_real(   3, 120)=           6
      flst_real(   4, 120)=          -2
      flst_real(   5, 120)=          -5
      flst_real(   6, 120)=           3
 
      flst_real(   1, 121)=          -4
      flst_real(   2, 121)=          -1
      flst_real(   3, 121)=           6
      flst_real(   4, 121)=          -2
      flst_real(   5, 121)=          -5
      flst_real(   6, 121)=          -4
 
      flst_real(   1, 122)=           4
      flst_real(   2, 122)=          -1
      flst_real(   3, 122)=           6
      flst_real(   4, 122)=          -2
      flst_real(   5, 122)=          -5
      flst_real(   6, 122)=           4
 
      flst_real(   1, 123)=          -5
      flst_real(   2, 123)=          -1
      flst_real(   3, 123)=           6
      flst_real(   4, 123)=          -2
      flst_real(   5, 123)=          -5
      flst_real(   6, 123)=          -5
 
      flst_real(   1, 124)=           5
      flst_real(   2, 124)=          -1
      flst_real(   3, 124)=           6
      flst_real(   4, 124)=          -2
      flst_real(   5, 124)=          -5
      flst_real(   6, 124)=           5
 
      flst_real(   1, 125)=           0
      flst_real(   2, 125)=          -1
      flst_real(   3, 125)=           6
      flst_real(   4, 125)=          -2
      flst_real(   5, 125)=          -5
      flst_real(   6, 125)=           0
 
      flst_real(   1, 126)=          -1
      flst_real(   2, 126)=           2
      flst_real(   3, 126)=           6
      flst_real(   4, 126)=           1
      flst_real(   5, 126)=          -5
      flst_real(   6, 126)=          -1
 
      flst_real(   1, 127)=           1
      flst_real(   2, 127)=           2
      flst_real(   3, 127)=           6
      flst_real(   4, 127)=           1
      flst_real(   5, 127)=          -5
      flst_real(   6, 127)=           1
 
      flst_real(   1, 128)=          -2
      flst_real(   2, 128)=           2
      flst_real(   3, 128)=           6
      flst_real(   4, 128)=           1
      flst_real(   5, 128)=          -5
      flst_real(   6, 128)=          -2
 
      flst_real(   1, 129)=           2
      flst_real(   2, 129)=           2
      flst_real(   3, 129)=           6
      flst_real(   4, 129)=           1
      flst_real(   5, 129)=          -5
      flst_real(   6, 129)=           2
 
      flst_real(   1, 130)=          -3
      flst_real(   2, 130)=           2
      flst_real(   3, 130)=           6
      flst_real(   4, 130)=           1
      flst_real(   5, 130)=          -5
      flst_real(   6, 130)=          -3
 
      flst_real(   1, 131)=           3
      flst_real(   2, 131)=           2
      flst_real(   3, 131)=           6
      flst_real(   4, 131)=           1
      flst_real(   5, 131)=          -5
      flst_real(   6, 131)=           3
 
      flst_real(   1, 132)=          -4
      flst_real(   2, 132)=           2
      flst_real(   3, 132)=           6
      flst_real(   4, 132)=           1
      flst_real(   5, 132)=          -5
      flst_real(   6, 132)=          -4
 
      flst_real(   1, 133)=           4
      flst_real(   2, 133)=           2
      flst_real(   3, 133)=           6
      flst_real(   4, 133)=           1
      flst_real(   5, 133)=          -5
      flst_real(   6, 133)=           4
 
      flst_real(   1, 134)=          -5
      flst_real(   2, 134)=           2
      flst_real(   3, 134)=           6
      flst_real(   4, 134)=           1
      flst_real(   5, 134)=          -5
      flst_real(   6, 134)=          -5
 
      flst_real(   1, 135)=           5
      flst_real(   2, 135)=           2
      flst_real(   3, 135)=           6
      flst_real(   4, 135)=           1
      flst_real(   5, 135)=          -5
      flst_real(   6, 135)=           5
 
      flst_real(   1, 136)=           0
      flst_real(   2, 136)=           2
      flst_real(   3, 136)=           6
      flst_real(   4, 136)=           1
      flst_real(   5, 136)=          -5
      flst_real(   6, 136)=           0
 
      flst_real(   1, 137)=          -1
      flst_real(   2, 137)=          -3
      flst_real(   3, 137)=           6
      flst_real(   4, 137)=          -4
      flst_real(   5, 137)=          -5
      flst_real(   6, 137)=          -1
 
      flst_real(   1, 138)=           1
      flst_real(   2, 138)=          -3
      flst_real(   3, 138)=           6
      flst_real(   4, 138)=          -4
      flst_real(   5, 138)=          -5
      flst_real(   6, 138)=           1
 
      flst_real(   1, 139)=          -2
      flst_real(   2, 139)=          -3
      flst_real(   3, 139)=           6
      flst_real(   4, 139)=          -4
      flst_real(   5, 139)=          -5
      flst_real(   6, 139)=          -2
 
      flst_real(   1, 140)=           2
      flst_real(   2, 140)=          -3
      flst_real(   3, 140)=           6
      flst_real(   4, 140)=          -4
      flst_real(   5, 140)=          -5
      flst_real(   6, 140)=           2
 
      flst_real(   1, 141)=          -3
      flst_real(   2, 141)=          -3
      flst_real(   3, 141)=           6
      flst_real(   4, 141)=          -4
      flst_real(   5, 141)=          -5
      flst_real(   6, 141)=          -3
 
      flst_real(   1, 142)=           3
      flst_real(   2, 142)=          -3
      flst_real(   3, 142)=           6
      flst_real(   4, 142)=          -4
      flst_real(   5, 142)=          -5
      flst_real(   6, 142)=           3
 
      flst_real(   1, 143)=          -4
      flst_real(   2, 143)=          -3
      flst_real(   3, 143)=           6
      flst_real(   4, 143)=          -4
      flst_real(   5, 143)=          -5
      flst_real(   6, 143)=          -4
 
      flst_real(   1, 144)=           4
      flst_real(   2, 144)=          -3
      flst_real(   3, 144)=           6
      flst_real(   4, 144)=          -4
      flst_real(   5, 144)=          -5
      flst_real(   6, 144)=           4
 
      flst_real(   1, 145)=          -5
      flst_real(   2, 145)=          -3
      flst_real(   3, 145)=           6
      flst_real(   4, 145)=          -4
      flst_real(   5, 145)=          -5
      flst_real(   6, 145)=          -5
 
      flst_real(   1, 146)=           5
      flst_real(   2, 146)=          -3
      flst_real(   3, 146)=           6
      flst_real(   4, 146)=          -4
      flst_real(   5, 146)=          -5
      flst_real(   6, 146)=           5
 
      flst_real(   1, 147)=           0
      flst_real(   2, 147)=          -3
      flst_real(   3, 147)=           6
      flst_real(   4, 147)=          -4
      flst_real(   5, 147)=          -5
      flst_real(   6, 147)=           0
 
      flst_real(   1, 148)=          -1
      flst_real(   2, 148)=           4
      flst_real(   3, 148)=           6
      flst_real(   4, 148)=           3
      flst_real(   5, 148)=          -5
      flst_real(   6, 148)=          -1
 
      flst_real(   1, 149)=           1
      flst_real(   2, 149)=           4
      flst_real(   3, 149)=           6
      flst_real(   4, 149)=           3
      flst_real(   5, 149)=          -5
      flst_real(   6, 149)=           1
 
      flst_real(   1, 150)=          -2
      flst_real(   2, 150)=           4
      flst_real(   3, 150)=           6
      flst_real(   4, 150)=           3
      flst_real(   5, 150)=          -5
      flst_real(   6, 150)=          -2
 
      flst_real(   1, 151)=           2
      flst_real(   2, 151)=           4
      flst_real(   3, 151)=           6
      flst_real(   4, 151)=           3
      flst_real(   5, 151)=          -5
      flst_real(   6, 151)=           2
 
      flst_real(   1, 152)=          -3
      flst_real(   2, 152)=           4
      flst_real(   3, 152)=           6
      flst_real(   4, 152)=           3
      flst_real(   5, 152)=          -5
      flst_real(   6, 152)=          -3
 
      flst_real(   1, 153)=           3
      flst_real(   2, 153)=           4
      flst_real(   3, 153)=           6
      flst_real(   4, 153)=           3
      flst_real(   5, 153)=          -5
      flst_real(   6, 153)=           3
 
      flst_real(   1, 154)=          -4
      flst_real(   2, 154)=           4
      flst_real(   3, 154)=           6
      flst_real(   4, 154)=           3
      flst_real(   5, 154)=          -5
      flst_real(   6, 154)=          -4
 
      flst_real(   1, 155)=           4
      flst_real(   2, 155)=           4
      flst_real(   3, 155)=           6
      flst_real(   4, 155)=           3
      flst_real(   5, 155)=          -5
      flst_real(   6, 155)=           4
 
      flst_real(   1, 156)=          -5
      flst_real(   2, 156)=           4
      flst_real(   3, 156)=           6
      flst_real(   4, 156)=           3
      flst_real(   5, 156)=          -5
      flst_real(   6, 156)=          -5
 
      flst_real(   1, 157)=           5
      flst_real(   2, 157)=           4
      flst_real(   3, 157)=           6
      flst_real(   4, 157)=           3
      flst_real(   5, 157)=          -5
      flst_real(   6, 157)=           5
 
      flst_real(   1, 158)=           0
      flst_real(   2, 158)=           4
      flst_real(   3, 158)=           6
      flst_real(   4, 158)=           3
      flst_real(   5, 158)=          -5
      flst_real(   6, 158)=           0
 
      flst_real(   1, 159)=          -1
      flst_real(   2, 159)=           5
      flst_real(   3, 159)=           6
      flst_real(   4, 159)=           1
      flst_real(   5, 159)=          -2
      flst_real(   6, 159)=          -1
 
      flst_real(   1, 160)=           1
      flst_real(   2, 160)=           5
      flst_real(   3, 160)=           6
      flst_real(   4, 160)=           1
      flst_real(   5, 160)=          -2
      flst_real(   6, 160)=           1
 
      flst_real(   1, 161)=          -2
      flst_real(   2, 161)=           5
      flst_real(   3, 161)=           6
      flst_real(   4, 161)=           1
      flst_real(   5, 161)=          -2
      flst_real(   6, 161)=          -2
 
      flst_real(   1, 162)=           2
      flst_real(   2, 162)=           5
      flst_real(   3, 162)=           6
      flst_real(   4, 162)=           1
      flst_real(   5, 162)=          -2
      flst_real(   6, 162)=           2
 
      flst_real(   1, 163)=          -3
      flst_real(   2, 163)=           5
      flst_real(   3, 163)=           6
      flst_real(   4, 163)=           1
      flst_real(   5, 163)=          -2
      flst_real(   6, 163)=          -3
 
      flst_real(   1, 164)=           3
      flst_real(   2, 164)=           5
      flst_real(   3, 164)=           6
      flst_real(   4, 164)=           1
      flst_real(   5, 164)=          -2
      flst_real(   6, 164)=           3
 
      flst_real(   1, 165)=          -4
      flst_real(   2, 165)=           5
      flst_real(   3, 165)=           6
      flst_real(   4, 165)=           1
      flst_real(   5, 165)=          -2
      flst_real(   6, 165)=          -4
 
      flst_real(   1, 166)=           4
      flst_real(   2, 166)=           5
      flst_real(   3, 166)=           6
      flst_real(   4, 166)=           1
      flst_real(   5, 166)=          -2
      flst_real(   6, 166)=           4
 
      flst_real(   1, 167)=          -5
      flst_real(   2, 167)=           5
      flst_real(   3, 167)=           6
      flst_real(   4, 167)=           1
      flst_real(   5, 167)=          -2
      flst_real(   6, 167)=          -5
 
      flst_real(   1, 168)=           5
      flst_real(   2, 168)=           5
      flst_real(   3, 168)=           6
      flst_real(   4, 168)=           1
      flst_real(   5, 168)=          -2
      flst_real(   6, 168)=           5
 
      flst_real(   1, 169)=           0
      flst_real(   2, 169)=           5
      flst_real(   3, 169)=           6
      flst_real(   4, 169)=           1
      flst_real(   5, 169)=          -2
      flst_real(   6, 169)=           0
 
      flst_real(   1, 170)=          -1
      flst_real(   2, 170)=           5
      flst_real(   3, 170)=           6
      flst_real(   4, 170)=           3
      flst_real(   5, 170)=          -4
      flst_real(   6, 170)=          -1
 
      flst_real(   1, 171)=           1
      flst_real(   2, 171)=           5
      flst_real(   3, 171)=           6
      flst_real(   4, 171)=           3
      flst_real(   5, 171)=          -4
      flst_real(   6, 171)=           1
 
      flst_real(   1, 172)=          -2
      flst_real(   2, 172)=           5
      flst_real(   3, 172)=           6
      flst_real(   4, 172)=           3
      flst_real(   5, 172)=          -4
      flst_real(   6, 172)=          -2
 
      flst_real(   1, 173)=           2
      flst_real(   2, 173)=           5
      flst_real(   3, 173)=           6
      flst_real(   4, 173)=           3
      flst_real(   5, 173)=          -4
      flst_real(   6, 173)=           2
 
      flst_real(   1, 174)=          -3
      flst_real(   2, 174)=           5
      flst_real(   3, 174)=           6
      flst_real(   4, 174)=           3
      flst_real(   5, 174)=          -4
      flst_real(   6, 174)=          -3
 
      flst_real(   1, 175)=           3
      flst_real(   2, 175)=           5
      flst_real(   3, 175)=           6
      flst_real(   4, 175)=           3
      flst_real(   5, 175)=          -4
      flst_real(   6, 175)=           3
 
      flst_real(   1, 176)=          -4
      flst_real(   2, 176)=           5
      flst_real(   3, 176)=           6
      flst_real(   4, 176)=           3
      flst_real(   5, 176)=          -4
      flst_real(   6, 176)=          -4
 
      flst_real(   1, 177)=           4
      flst_real(   2, 177)=           5
      flst_real(   3, 177)=           6
      flst_real(   4, 177)=           3
      flst_real(   5, 177)=          -4
      flst_real(   6, 177)=           4
 
      flst_real(   1, 178)=          -5
      flst_real(   2, 178)=           5
      flst_real(   3, 178)=           6
      flst_real(   4, 178)=           3
      flst_real(   5, 178)=          -4
      flst_real(   6, 178)=          -5
 
      flst_real(   1, 179)=           5
      flst_real(   2, 179)=           5
      flst_real(   3, 179)=           6
      flst_real(   4, 179)=           3
      flst_real(   5, 179)=          -4
      flst_real(   6, 179)=           5
 
      flst_real(   1, 180)=           0
      flst_real(   2, 180)=           5
      flst_real(   3, 180)=           6
      flst_real(   4, 180)=           3
      flst_real(   5, 180)=          -4
      flst_real(   6, 180)=           0
 
      flst_real(   1, 181)=           0
      flst_real(   2, 181)=           0
      flst_real(   3, 181)=           6
      flst_real(   4, 181)=           1
      flst_real(   5, 181)=          -2
      flst_real(   6, 181)=          -5
 
      flst_real(   1, 182)=           0
      flst_real(   2, 182)=           0
      flst_real(   3, 182)=           6
      flst_real(   4, 182)=           3
      flst_real(   5, 182)=          -4
      flst_real(   6, 182)=          -5
 
      flst_nreal=         182
 
      do i=1,flst_nreal
         if (gluon_process(flst_real(1,i))) then
            do ii=1,nlegreal
               if (flst_real(ii,i).eq.0) then
                  flst_realtags(ii,i)=0 ! gluon
               elseif(abs(flst_real(ii,i)).le.4) then
                  flst_realtags(ii,i)=2 ! massless quark line
               elseif(abs(flst_real(ii,i)).le.6) then
                  flst_realtags(ii,i)=1 ! massive quark line
               endif
            enddo
         else
            if (i.le.24) then
               ! p1 b1 > t j1 j2 j2
               flst_realtags(1,i)=2
               flst_realtags(2,i)=1
               flst_realtags(3,i)=1
               flst_realtags(4,i)=2
               flst_realtags(5,i)=3
               flst_realtags(6,i)=3
            elseif (i.le.48) then
               ! b1 p1 > t j1 j2 j2
               flst_realtags(1,i)=1
               flst_realtags(2,i)=2
               flst_realtags(3,i)=1
               flst_realtags(4,i)=2
               flst_realtags(5,i)=3
               flst_realtags(6,i)=3
            elseif(i.le.92) then
               ! p1 p2 > t j1 b1 j2
               flst_realtags(1,i)=2
               flst_realtags(2,i)=3
               flst_realtags(3,i)=1
               flst_realtags(4,i)=2
               flst_realtags(5,i)=1
               flst_realtags(6,i)=3
            elseif(i.le.114) then
               ! b1 p2 > t j1 j1 j2
               flst_realtags(1,i)=1
               flst_realtags(2,i)=3
               flst_realtags(3,i)=1
               flst_realtags(4,i)=2
               flst_realtags(5,i)=2
               flst_realtags(6,i)=3
            elseif(i.le.158) then
               ! p2 p1 > t j1 b1 j2
               flst_realtags(1,i)=3
               flst_realtags(2,i)=2
               flst_realtags(3,i)=1
               flst_realtags(4,i)=2
               flst_realtags(5,i)=1
               flst_realtags(6,i)=3
            elseif(i.le.180) then
               ! p2 b1 > t j1 j1 j2
               flst_realtags(1,i)=3
               flst_realtags(2,i)=1
               flst_realtags(3,i)=1
               flst_realtags(4,i)=2
               flst_realtags(5,i)=2
               flst_realtags(6,i)=3
            endif
         endif
      enddo

      
      return
      end
 

      logical function gluon_process(flst)
      implicit none
      include "nlegborn.h"
      integer flst(nlegreal),i
      gluon_process=.false.
      do i=1,nlegreal
         if (flst(i).eq.0) then
            ! there is gluon in this process
            gluon_process=.true.
            return
         endif
      enddo
      end
