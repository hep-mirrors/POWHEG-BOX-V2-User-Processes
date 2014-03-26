      subroutine init_processes
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "pwhg_st.h"
      include "pwhg_flg.h"
      include "coupl.inc"
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      integer i
      real * 8 powheginput
      external powheginput

      idvecbos=powheginput('idvecbos')

      call init_processes_born
      call init_processes_real
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C    Set here the number of light flavours
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      st_nlight=4
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
c     Treat massive b as massless in find_regions:
c      flst_lightpart=5

      end
 
 
 
      subroutine init_processes_born
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      integer jborn

      flst_born(   1,   1)=          -1
      flst_born(   2,   1)=           2
      flst_born(   3,   1)=         -11
      flst_born(   4,   1)=          12
      flst_born(   5,   1)=           5
      flst_born(   6,   1)=          -5
      flst_born(   7,   1)=           0
 
      flst_born(   1,   2)=          -1
      flst_born(   2,   2)=           4
      flst_born(   3,   2)=         -11
      flst_born(   4,   2)=          12
      flst_born(   5,   2)=           5
      flst_born(   6,   2)=          -5
      flst_born(   7,   2)=           0
 
      flst_born(   1,   3)=          -1
      flst_born(   2,   3)=           0
      flst_born(   3,   3)=         -11
      flst_born(   4,   3)=          12
      flst_born(   5,   3)=           5
      flst_born(   6,   3)=          -5
      flst_born(   7,   3)=          -2
 
      flst_born(   1,   4)=          -1
      flst_born(   2,   4)=           0
      flst_born(   3,   4)=         -11
      flst_born(   4,   4)=          12
      flst_born(   5,   4)=           5
      flst_born(   6,   4)=          -5
      flst_born(   7,   4)=          -4
 
      flst_born(   1,   5)=           2
      flst_born(   2,   5)=          -1
      flst_born(   3,   5)=         -11
      flst_born(   4,   5)=          12
      flst_born(   5,   5)=           5
      flst_born(   6,   5)=          -5
      flst_born(   7,   5)=           0
 
      flst_born(   1,   6)=           2
      flst_born(   2,   6)=          -3
      flst_born(   3,   6)=         -11
      flst_born(   4,   6)=          12
      flst_born(   5,   6)=           5
      flst_born(   6,   6)=          -5
      flst_born(   7,   6)=           0
 
      flst_born(   1,   7)=           2
      flst_born(   2,   7)=           0
      flst_born(   3,   7)=         -11
      flst_born(   4,   7)=          12
      flst_born(   5,   7)=           5
      flst_born(   6,   7)=          -5
      flst_born(   7,   7)=           1
 
      flst_born(   1,   8)=           2
      flst_born(   2,   8)=           0
      flst_born(   3,   8)=         -11
      flst_born(   4,   8)=          12
      flst_born(   5,   8)=           5
      flst_born(   6,   8)=          -5
      flst_born(   7,   8)=           3
 
      flst_born(   1,   9)=           4
      flst_born(   2,   9)=          -1
      flst_born(   3,   9)=         -11
      flst_born(   4,   9)=          12
      flst_born(   5,   9)=           5
      flst_born(   6,   9)=          -5
      flst_born(   7,   9)=           0
 
      flst_born(   1,  10)=           4
      flst_born(   2,  10)=          -3
      flst_born(   3,  10)=         -11
      flst_born(   4,  10)=          12
      flst_born(   5,  10)=           5
      flst_born(   6,  10)=          -5
      flst_born(   7,  10)=           0
 
      flst_born(   1,  11)=           4
      flst_born(   2,  11)=           0
      flst_born(   3,  11)=         -11
      flst_born(   4,  11)=          12
      flst_born(   5,  11)=           5
      flst_born(   6,  11)=          -5
      flst_born(   7,  11)=           1
 
      flst_born(   1,  12)=           4
      flst_born(   2,  12)=           0
      flst_born(   3,  12)=         -11
      flst_born(   4,  12)=          12
      flst_born(   5,  12)=           5
      flst_born(   6,  12)=          -5
      flst_born(   7,  12)=           3
 
      flst_born(   1,  13)=          -3
      flst_born(   2,  13)=           2
      flst_born(   3,  13)=         -11
      flst_born(   4,  13)=          12
      flst_born(   5,  13)=           5
      flst_born(   6,  13)=          -5
      flst_born(   7,  13)=           0
 
      flst_born(   1,  14)=          -3
      flst_born(   2,  14)=           4
      flst_born(   3,  14)=         -11
      flst_born(   4,  14)=          12
      flst_born(   5,  14)=           5
      flst_born(   6,  14)=          -5
      flst_born(   7,  14)=           0
 
      flst_born(   1,  15)=          -3
      flst_born(   2,  15)=           0
      flst_born(   3,  15)=         -11
      flst_born(   4,  15)=          12
      flst_born(   5,  15)=           5
      flst_born(   6,  15)=          -5
      flst_born(   7,  15)=          -2
 
      flst_born(   1,  16)=          -3
      flst_born(   2,  16)=           0
      flst_born(   3,  16)=         -11
      flst_born(   4,  16)=          12
      flst_born(   5,  16)=           5
      flst_born(   6,  16)=          -5
      flst_born(   7,  16)=          -4
 
      flst_born(   1,  17)=           0
      flst_born(   2,  17)=          -1
      flst_born(   3,  17)=         -11
      flst_born(   4,  17)=          12
      flst_born(   5,  17)=           5
      flst_born(   6,  17)=          -5
      flst_born(   7,  17)=          -2
 
      flst_born(   1,  18)=           0
      flst_born(   2,  18)=          -1
      flst_born(   3,  18)=         -11
      flst_born(   4,  18)=          12
      flst_born(   5,  18)=           5
      flst_born(   6,  18)=          -5
      flst_born(   7,  18)=          -4
 
      flst_born(   1,  19)=           0
      flst_born(   2,  19)=           2
      flst_born(   3,  19)=         -11
      flst_born(   4,  19)=          12
      flst_born(   5,  19)=           5
      flst_born(   6,  19)=          -5
      flst_born(   7,  19)=           1
 
      flst_born(   1,  20)=           0
      flst_born(   2,  20)=           2
      flst_born(   3,  20)=         -11
      flst_born(   4,  20)=          12
      flst_born(   5,  20)=           5
      flst_born(   6,  20)=          -5
      flst_born(   7,  20)=           3
 
      flst_born(   1,  21)=           0
      flst_born(   2,  21)=           4
      flst_born(   3,  21)=         -11
      flst_born(   4,  21)=          12
      flst_born(   5,  21)=           5
      flst_born(   6,  21)=          -5
      flst_born(   7,  21)=           1
 
      flst_born(   1,  22)=           0
      flst_born(   2,  22)=           4
      flst_born(   3,  22)=         -11
      flst_born(   4,  22)=          12
      flst_born(   5,  22)=           5
      flst_born(   6,  22)=          -5
      flst_born(   7,  22)=           3
 
      flst_born(   1,  23)=           0
      flst_born(   2,  23)=          -3
      flst_born(   3,  23)=         -11
      flst_born(   4,  23)=          12
      flst_born(   5,  23)=           5
      flst_born(   6,  23)=          -5
      flst_born(   7,  23)=          -2
 
      flst_born(   1,  24)=           0
      flst_born(   2,  24)=          -3
      flst_born(   3,  24)=         -11
      flst_born(   4,  24)=          12
      flst_born(   5,  24)=           5
      flst_born(   6,  24)=          -5
      flst_born(   7,  24)=          -4
 
      flst_nborn=          24
 
      if(idvecbos.eq.-24) then
         do jborn=1,flst_nborn
            call cconj(flst_born(:,jborn),nlegborn)
         enddo
      endif

      return
      end

      subroutine cconj(flav,nflav)
      implicit none
      integer nflav,flav(nflav)
      integer k
      do k=1,nflav
         if(flav(k).ne.25) then
            flav(k)=-flav(k)
         endif
      enddo
      end 
 
 
      subroutine init_processes_real
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      integer jreal

      flst_real(   1,   1)=          -1
      flst_real(   2,   1)=          -1
      flst_real(   3,   1)=         -11
      flst_real(   4,   1)=          12
      flst_real(   5,   1)=           5
      flst_real(   6,   1)=          -5
      flst_real(   7,   1)=          -1
      flst_real(   8,   1)=          -2
 
      flst_real(   1,   2)=          -1
      flst_real(   2,   2)=          -1
      flst_real(   3,   2)=         -11
      flst_real(   4,   2)=          12
      flst_real(   5,   2)=           5
      flst_real(   6,   2)=          -5
      flst_real(   7,   2)=          -1
      flst_real(   8,   2)=          -4
 
      flst_real(   1,   3)=          -1
      flst_real(   2,   3)=           1
      flst_real(   3,   3)=         -11
      flst_real(   4,   3)=          12
      flst_real(   5,   3)=           5
      flst_real(   6,   3)=          -5
      flst_real(   7,   3)=           1
      flst_real(   8,   3)=          -2
 
      flst_real(   1,   4)=          -1
      flst_real(   2,   4)=           1
      flst_real(   3,   4)=         -11
      flst_real(   4,   4)=          12
      flst_real(   5,   4)=           5
      flst_real(   6,   4)=          -5
      flst_real(   7,   4)=           1
      flst_real(   8,   4)=          -4
 
      flst_real(   1,   5)=          -1
      flst_real(   2,   5)=           1
      flst_real(   3,   5)=         -11
      flst_real(   4,   5)=          12
      flst_real(   5,   5)=           5
      flst_real(   6,   5)=          -5
      flst_real(   7,   5)=          -2
      flst_real(   8,   5)=           3
 
      flst_real(   1,   6)=          -1
      flst_real(   2,   6)=           1
      flst_real(   3,   6)=         -11
      flst_real(   4,   6)=          12
      flst_real(   5,   6)=           5
      flst_real(   6,   6)=          -5
      flst_real(   7,   6)=          -4
      flst_real(   8,   6)=           3
 
      flst_real(   1,   7)=          -1
      flst_real(   2,   7)=          -2
      flst_real(   3,   7)=         -11
      flst_real(   4,   7)=          12
      flst_real(   5,   7)=           5
      flst_real(   6,   7)=          -5
      flst_real(   7,   7)=          -2
      flst_real(   8,   7)=          -2
 
      flst_real(   1,   8)=          -1
      flst_real(   2,   8)=          -2
      flst_real(   3,   8)=         -11
      flst_real(   4,   8)=          12
      flst_real(   5,   8)=           5
      flst_real(   6,   8)=          -5
      flst_real(   7,   8)=          -2
      flst_real(   8,   8)=          -4
 
      flst_real(   1,   9)=          -1
      flst_real(   2,   9)=           2
      flst_real(   3,   9)=         -11
      flst_real(   4,   9)=          12
      flst_real(   5,   9)=           5
      flst_real(   6,   9)=          -5
      flst_real(   7,   9)=           1
      flst_real(   8,   9)=          -1
 
      flst_real(   1,  10)=          -1
      flst_real(   2,  10)=           2
      flst_real(   3,  10)=         -11
      flst_real(   4,  10)=          12
      flst_real(   5,  10)=           5
      flst_real(   6,  10)=          -5
      flst_real(   7,  10)=          -1
      flst_real(   8,  10)=           3
 
      flst_real(   1,  11)=          -1
      flst_real(   2,  11)=           2
      flst_real(   3,  11)=         -11
      flst_real(   4,  11)=          12
      flst_real(   5,  11)=           5
      flst_real(   6,  11)=          -5
      flst_real(   7,  11)=           2
      flst_real(   8,  11)=          -2
 
      flst_real(   1,  12)=          -1
      flst_real(   2,  12)=           2
      flst_real(   3,  12)=         -11
      flst_real(   4,  12)=          12
      flst_real(   5,  12)=           5
      flst_real(   6,  12)=          -5
      flst_real(   7,  12)=           2
      flst_real(   8,  12)=          -4
 
      flst_real(   1,  13)=          -1
      flst_real(   2,  13)=           2
      flst_real(   3,  13)=         -11
      flst_real(   4,  13)=          12
      flst_real(   5,  13)=           5
      flst_real(   6,  13)=          -5
      flst_real(   7,  13)=           4
      flst_real(   8,  13)=          -4
 
      flst_real(   1,  14)=          -1
      flst_real(   2,  14)=           2
      flst_real(   3,  14)=         -11
      flst_real(   4,  14)=          12
      flst_real(   5,  14)=           5
      flst_real(   6,  14)=          -5
      flst_real(   7,  14)=           3
      flst_real(   8,  14)=          -3
 
      flst_real(   1,  15)=          -1
      flst_real(   2,  15)=           2
      flst_real(   3,  15)=         -11
      flst_real(   4,  15)=          12
      flst_real(   5,  15)=           5
      flst_real(   6,  15)=          -5
      flst_real(   7,  15)=           0
      flst_real(   8,  15)=           0
 
      flst_real(   1,  16)=          -1
      flst_real(   2,  16)=          -4
      flst_real(   3,  16)=         -11
      flst_real(   4,  16)=          12
      flst_real(   5,  16)=           5
      flst_real(   6,  16)=          -5
      flst_real(   7,  16)=          -2
      flst_real(   8,  16)=          -4
 
      flst_real(   1,  17)=          -1
      flst_real(   2,  17)=          -4
      flst_real(   3,  17)=         -11
      flst_real(   4,  17)=          12
      flst_real(   5,  17)=           5
      flst_real(   6,  17)=          -5
      flst_real(   7,  17)=          -4
      flst_real(   8,  17)=          -4
 
      flst_real(   1,  18)=          -1
      flst_real(   2,  18)=           4
      flst_real(   3,  18)=         -11
      flst_real(   4,  18)=          12
      flst_real(   5,  18)=           5
      flst_real(   6,  18)=          -5
      flst_real(   7,  18)=           1
      flst_real(   8,  18)=          -1
 
      flst_real(   1,  19)=          -1
      flst_real(   2,  19)=           4
      flst_real(   3,  19)=         -11
      flst_real(   4,  19)=          12
      flst_real(   5,  19)=           5
      flst_real(   6,  19)=          -5
      flst_real(   7,  19)=          -1
      flst_real(   8,  19)=           3
 
      flst_real(   1,  20)=          -1
      flst_real(   2,  20)=           4
      flst_real(   3,  20)=         -11
      flst_real(   4,  20)=          12
      flst_real(   5,  20)=           5
      flst_real(   6,  20)=          -5
      flst_real(   7,  20)=           2
      flst_real(   8,  20)=          -2
 
      flst_real(   1,  21)=          -1
      flst_real(   2,  21)=           4
      flst_real(   3,  21)=         -11
      flst_real(   4,  21)=          12
      flst_real(   5,  21)=           5
      flst_real(   6,  21)=          -5
      flst_real(   7,  21)=          -2
      flst_real(   8,  21)=           4
 
      flst_real(   1,  22)=          -1
      flst_real(   2,  22)=           4
      flst_real(   3,  22)=         -11
      flst_real(   4,  22)=          12
      flst_real(   5,  22)=           5
      flst_real(   6,  22)=          -5
      flst_real(   7,  22)=           4
      flst_real(   8,  22)=          -4
 
      flst_real(   1,  23)=          -1
      flst_real(   2,  23)=           4
      flst_real(   3,  23)=         -11
      flst_real(   4,  23)=          12
      flst_real(   5,  23)=           5
      flst_real(   6,  23)=          -5
      flst_real(   7,  23)=           3
      flst_real(   8,  23)=          -3
 
      flst_real(   1,  24)=          -1
      flst_real(   2,  24)=           4
      flst_real(   3,  24)=         -11
      flst_real(   4,  24)=          12
      flst_real(   5,  24)=           5
      flst_real(   6,  24)=          -5
      flst_real(   7,  24)=           0
      flst_real(   8,  24)=           0
 
      flst_real(   1,  25)=          -1
      flst_real(   2,  25)=          -3
      flst_real(   3,  25)=         -11
      flst_real(   4,  25)=          12
      flst_real(   5,  25)=           5
      flst_real(   6,  25)=          -5
      flst_real(   7,  25)=          -1
      flst_real(   8,  25)=          -2
 
      flst_real(   1,  26)=          -1
      flst_real(   2,  26)=          -3
      flst_real(   3,  26)=         -11
      flst_real(   4,  26)=          12
      flst_real(   5,  26)=           5
      flst_real(   6,  26)=          -5
      flst_real(   7,  26)=          -1
      flst_real(   8,  26)=          -4
 
      flst_real(   1,  27)=          -1
      flst_real(   2,  27)=          -3
      flst_real(   3,  27)=         -11
      flst_real(   4,  27)=          12
      flst_real(   5,  27)=           5
      flst_real(   6,  27)=          -5
      flst_real(   7,  27)=          -2
      flst_real(   8,  27)=          -3
 
      flst_real(   1,  28)=          -1
      flst_real(   2,  28)=          -3
      flst_real(   3,  28)=         -11
      flst_real(   4,  28)=          12
      flst_real(   5,  28)=           5
      flst_real(   6,  28)=          -5
      flst_real(   7,  28)=          -4
      flst_real(   8,  28)=          -3
 
      flst_real(   1,  29)=          -1
      flst_real(   2,  29)=           3
      flst_real(   3,  29)=         -11
      flst_real(   4,  29)=          12
      flst_real(   5,  29)=           5
      flst_real(   6,  29)=          -5
      flst_real(   7,  29)=          -2
      flst_real(   8,  29)=           3
 
      flst_real(   1,  30)=          -1
      flst_real(   2,  30)=           3
      flst_real(   3,  30)=         -11
      flst_real(   4,  30)=          12
      flst_real(   5,  30)=           5
      flst_real(   6,  30)=          -5
      flst_real(   7,  30)=          -4
      flst_real(   8,  30)=           3
 
      flst_real(   1,  31)=          -1
      flst_real(   2,  31)=           0
      flst_real(   3,  31)=         -11
      flst_real(   4,  31)=          12
      flst_real(   5,  31)=           5
      flst_real(   6,  31)=          -5
      flst_real(   7,  31)=          -2
      flst_real(   8,  31)=           0
 
      flst_real(   1,  32)=          -1
      flst_real(   2,  32)=           0
      flst_real(   3,  32)=         -11
      flst_real(   4,  32)=          12
      flst_real(   5,  32)=           5
      flst_real(   6,  32)=          -5
      flst_real(   7,  32)=          -4
      flst_real(   8,  32)=           0
 
      flst_real(   1,  33)=           1
      flst_real(   2,  33)=          -1
      flst_real(   3,  33)=         -11
      flst_real(   4,  33)=          12
      flst_real(   5,  33)=           5
      flst_real(   6,  33)=          -5
      flst_real(   7,  33)=           1
      flst_real(   8,  33)=          -2
 
      flst_real(   1,  34)=           1
      flst_real(   2,  34)=          -1
      flst_real(   3,  34)=         -11
      flst_real(   4,  34)=          12
      flst_real(   5,  34)=           5
      flst_real(   6,  34)=          -5
      flst_real(   7,  34)=           1
      flst_real(   8,  34)=          -4
 
      flst_real(   1,  35)=           1
      flst_real(   2,  35)=          -1
      flst_real(   3,  35)=         -11
      flst_real(   4,  35)=          12
      flst_real(   5,  35)=           5
      flst_real(   6,  35)=          -5
      flst_real(   7,  35)=          -2
      flst_real(   8,  35)=           3
 
      flst_real(   1,  36)=           1
      flst_real(   2,  36)=          -1
      flst_real(   3,  36)=         -11
      flst_real(   4,  36)=          12
      flst_real(   5,  36)=           5
      flst_real(   6,  36)=          -5
      flst_real(   7,  36)=          -4
      flst_real(   8,  36)=           3
 
      flst_real(   1,  37)=           1
      flst_real(   2,  37)=           2
      flst_real(   3,  37)=         -11
      flst_real(   4,  37)=          12
      flst_real(   5,  37)=           5
      flst_real(   6,  37)=          -5
      flst_real(   7,  37)=           1
      flst_real(   8,  37)=           1
 
      flst_real(   1,  38)=           1
      flst_real(   2,  38)=           2
      flst_real(   3,  38)=         -11
      flst_real(   4,  38)=          12
      flst_real(   5,  38)=           5
      flst_real(   6,  38)=          -5
      flst_real(   7,  38)=           1
      flst_real(   8,  38)=           3
 
      flst_real(   1,  39)=           1
      flst_real(   2,  39)=           4
      flst_real(   3,  39)=         -11
      flst_real(   4,  39)=          12
      flst_real(   5,  39)=           5
      flst_real(   6,  39)=          -5
      flst_real(   7,  39)=           1
      flst_real(   8,  39)=           1
 
      flst_real(   1,  40)=           1
      flst_real(   2,  40)=           4
      flst_real(   3,  40)=         -11
      flst_real(   4,  40)=          12
      flst_real(   5,  40)=           5
      flst_real(   6,  40)=          -5
      flst_real(   7,  40)=           1
      flst_real(   8,  40)=           3
 
      flst_real(   1,  41)=           1
      flst_real(   2,  41)=          -3
      flst_real(   3,  41)=         -11
      flst_real(   4,  41)=          12
      flst_real(   5,  41)=           5
      flst_real(   6,  41)=          -5
      flst_real(   7,  41)=           1
      flst_real(   8,  41)=          -2
 
      flst_real(   1,  42)=           1
      flst_real(   2,  42)=          -3
      flst_real(   3,  42)=         -11
      flst_real(   4,  42)=          12
      flst_real(   5,  42)=           5
      flst_real(   6,  42)=          -5
      flst_real(   7,  42)=           1
      flst_real(   8,  42)=          -4
 
      flst_real(   1,  43)=          -2
      flst_real(   2,  43)=          -1
      flst_real(   3,  43)=         -11
      flst_real(   4,  43)=          12
      flst_real(   5,  43)=           5
      flst_real(   6,  43)=          -5
      flst_real(   7,  43)=          -2
      flst_real(   8,  43)=          -2
 
      flst_real(   1,  44)=          -2
      flst_real(   2,  44)=          -1
      flst_real(   3,  44)=         -11
      flst_real(   4,  44)=          12
      flst_real(   5,  44)=           5
      flst_real(   6,  44)=          -5
      flst_real(   7,  44)=          -2
      flst_real(   8,  44)=          -4
 
      flst_real(   1,  45)=          -2
      flst_real(   2,  45)=           2
      flst_real(   3,  45)=         -11
      flst_real(   4,  45)=          12
      flst_real(   5,  45)=           5
      flst_real(   6,  45)=          -5
      flst_real(   7,  45)=           1
      flst_real(   8,  45)=          -2
 
      flst_real(   1,  46)=          -2
      flst_real(   2,  46)=           2
      flst_real(   3,  46)=         -11
      flst_real(   4,  46)=          12
      flst_real(   5,  46)=           5
      flst_real(   6,  46)=          -5
      flst_real(   7,  46)=           1
      flst_real(   8,  46)=          -4
 
      flst_real(   1,  47)=          -2
      flst_real(   2,  47)=           2
      flst_real(   3,  47)=         -11
      flst_real(   4,  47)=          12
      flst_real(   5,  47)=           5
      flst_real(   6,  47)=          -5
      flst_real(   7,  47)=          -2
      flst_real(   8,  47)=           3
 
      flst_real(   1,  48)=          -2
      flst_real(   2,  48)=           2
      flst_real(   3,  48)=         -11
      flst_real(   4,  48)=          12
      flst_real(   5,  48)=           5
      flst_real(   6,  48)=          -5
      flst_real(   7,  48)=          -4
      flst_real(   8,  48)=           3
 
      flst_real(   1,  49)=          -2
      flst_real(   2,  49)=           4
      flst_real(   3,  49)=         -11
      flst_real(   4,  49)=          12
      flst_real(   5,  49)=           5
      flst_real(   6,  49)=          -5
      flst_real(   7,  49)=           1
      flst_real(   8,  49)=          -2
 
      flst_real(   1,  50)=          -2
      flst_real(   2,  50)=           4
      flst_real(   3,  50)=         -11
      flst_real(   4,  50)=          12
      flst_real(   5,  50)=           5
      flst_real(   6,  50)=          -5
      flst_real(   7,  50)=          -2
      flst_real(   8,  50)=           3
 
      flst_real(   1,  51)=          -2
      flst_real(   2,  51)=          -3
      flst_real(   3,  51)=         -11
      flst_real(   4,  51)=          12
      flst_real(   5,  51)=           5
      flst_real(   6,  51)=          -5
      flst_real(   7,  51)=          -2
      flst_real(   8,  51)=          -2
 
      flst_real(   1,  52)=          -2
      flst_real(   2,  52)=          -3
      flst_real(   3,  52)=         -11
      flst_real(   4,  52)=          12
      flst_real(   5,  52)=           5
      flst_real(   6,  52)=          -5
      flst_real(   7,  52)=          -2
      flst_real(   8,  52)=          -4
 
      flst_real(   1,  53)=           2
      flst_real(   2,  53)=          -1
      flst_real(   3,  53)=         -11
      flst_real(   4,  53)=          12
      flst_real(   5,  53)=           5
      flst_real(   6,  53)=          -5
      flst_real(   7,  53)=           1
      flst_real(   8,  53)=          -1
 
      flst_real(   1,  54)=           2
      flst_real(   2,  54)=          -1
      flst_real(   3,  54)=         -11
      flst_real(   4,  54)=          12
      flst_real(   5,  54)=           5
      flst_real(   6,  54)=          -5
      flst_real(   7,  54)=          -1
      flst_real(   8,  54)=           3
 
      flst_real(   1,  55)=           2
      flst_real(   2,  55)=          -1
      flst_real(   3,  55)=         -11
      flst_real(   4,  55)=          12
      flst_real(   5,  55)=           5
      flst_real(   6,  55)=          -5
      flst_real(   7,  55)=           2
      flst_real(   8,  55)=          -2
 
      flst_real(   1,  56)=           2
      flst_real(   2,  56)=          -1
      flst_real(   3,  56)=         -11
      flst_real(   4,  56)=          12
      flst_real(   5,  56)=           5
      flst_real(   6,  56)=          -5
      flst_real(   7,  56)=           2
      flst_real(   8,  56)=          -4
 
      flst_real(   1,  57)=           2
      flst_real(   2,  57)=          -1
      flst_real(   3,  57)=         -11
      flst_real(   4,  57)=          12
      flst_real(   5,  57)=           5
      flst_real(   6,  57)=          -5
      flst_real(   7,  57)=           4
      flst_real(   8,  57)=          -4
 
      flst_real(   1,  58)=           2
      flst_real(   2,  58)=          -1
      flst_real(   3,  58)=         -11
      flst_real(   4,  58)=          12
      flst_real(   5,  58)=           5
      flst_real(   6,  58)=          -5
      flst_real(   7,  58)=           3
      flst_real(   8,  58)=          -3
 
      flst_real(   1,  59)=           2
      flst_real(   2,  59)=          -1
      flst_real(   3,  59)=         -11
      flst_real(   4,  59)=          12
      flst_real(   5,  59)=           5
      flst_real(   6,  59)=          -5
      flst_real(   7,  59)=           0
      flst_real(   8,  59)=           0
 
      flst_real(   1,  60)=           2
      flst_real(   2,  60)=           1
      flst_real(   3,  60)=         -11
      flst_real(   4,  60)=          12
      flst_real(   5,  60)=           5
      flst_real(   6,  60)=          -5
      flst_real(   7,  60)=           1
      flst_real(   8,  60)=           1
 
      flst_real(   1,  61)=           2
      flst_real(   2,  61)=           1
      flst_real(   3,  61)=         -11
      flst_real(   4,  61)=          12
      flst_real(   5,  61)=           5
      flst_real(   6,  61)=          -5
      flst_real(   7,  61)=           1
      flst_real(   8,  61)=           3
 
      flst_real(   1,  62)=           2
      flst_real(   2,  62)=          -2
      flst_real(   3,  62)=         -11
      flst_real(   4,  62)=          12
      flst_real(   5,  62)=           5
      flst_real(   6,  62)=          -5
      flst_real(   7,  62)=           1
      flst_real(   8,  62)=          -2
 
      flst_real(   1,  63)=           2
      flst_real(   2,  63)=          -2
      flst_real(   3,  63)=         -11
      flst_real(   4,  63)=          12
      flst_real(   5,  63)=           5
      flst_real(   6,  63)=          -5
      flst_real(   7,  63)=           1
      flst_real(   8,  63)=          -4
 
      flst_real(   1,  64)=           2
      flst_real(   2,  64)=          -2
      flst_real(   3,  64)=         -11
      flst_real(   4,  64)=          12
      flst_real(   5,  64)=           5
      flst_real(   6,  64)=          -5
      flst_real(   7,  64)=          -2
      flst_real(   8,  64)=           3
 
      flst_real(   1,  65)=           2
      flst_real(   2,  65)=          -2
      flst_real(   3,  65)=         -11
      flst_real(   4,  65)=          12
      flst_real(   5,  65)=           5
      flst_real(   6,  65)=          -5
      flst_real(   7,  65)=          -4
      flst_real(   8,  65)=           3
 
      flst_real(   1,  66)=           2
      flst_real(   2,  66)=           2
      flst_real(   3,  66)=         -11
      flst_real(   4,  66)=          12
      flst_real(   5,  66)=           5
      flst_real(   6,  66)=          -5
      flst_real(   7,  66)=           1
      flst_real(   8,  66)=           2
 
      flst_real(   1,  67)=           2
      flst_real(   2,  67)=           2
      flst_real(   3,  67)=         -11
      flst_real(   4,  67)=          12
      flst_real(   5,  67)=           5
      flst_real(   6,  67)=          -5
      flst_real(   7,  67)=           2
      flst_real(   8,  67)=           3
 
      flst_real(   1,  68)=           2
      flst_real(   2,  68)=          -4
      flst_real(   3,  68)=         -11
      flst_real(   4,  68)=          12
      flst_real(   5,  68)=           5
      flst_real(   6,  68)=          -5
      flst_real(   7,  68)=           1
      flst_real(   8,  68)=          -4
 
      flst_real(   1,  69)=           2
      flst_real(   2,  69)=          -4
      flst_real(   3,  69)=         -11
      flst_real(   4,  69)=          12
      flst_real(   5,  69)=           5
      flst_real(   6,  69)=          -5
      flst_real(   7,  69)=          -4
      flst_real(   8,  69)=           3
 
      flst_real(   1,  70)=           2
      flst_real(   2,  70)=           4
      flst_real(   3,  70)=         -11
      flst_real(   4,  70)=          12
      flst_real(   5,  70)=           5
      flst_real(   6,  70)=          -5
      flst_real(   7,  70)=           1
      flst_real(   8,  70)=           2
 
      flst_real(   1,  71)=           2
      flst_real(   2,  71)=           4
      flst_real(   3,  71)=         -11
      flst_real(   4,  71)=          12
      flst_real(   5,  71)=           5
      flst_real(   6,  71)=          -5
      flst_real(   7,  71)=           1
      flst_real(   8,  71)=           4
 
      flst_real(   1,  72)=           2
      flst_real(   2,  72)=           4
      flst_real(   3,  72)=         -11
      flst_real(   4,  72)=          12
      flst_real(   5,  72)=           5
      flst_real(   6,  72)=          -5
      flst_real(   7,  72)=           2
      flst_real(   8,  72)=           3
 
      flst_real(   1,  73)=           2
      flst_real(   2,  73)=           4
      flst_real(   3,  73)=         -11
      flst_real(   4,  73)=          12
      flst_real(   5,  73)=           5
      flst_real(   6,  73)=          -5
      flst_real(   7,  73)=           4
      flst_real(   8,  73)=           3
 
      flst_real(   1,  74)=           2
      flst_real(   2,  74)=          -3
      flst_real(   3,  74)=         -11
      flst_real(   4,  74)=          12
      flst_real(   5,  74)=           5
      flst_real(   6,  74)=          -5
      flst_real(   7,  74)=           1
      flst_real(   8,  74)=          -1
 
      flst_real(   1,  75)=           2
      flst_real(   2,  75)=          -3
      flst_real(   3,  75)=         -11
      flst_real(   4,  75)=          12
      flst_real(   5,  75)=           5
      flst_real(   6,  75)=          -5
      flst_real(   7,  75)=           1
      flst_real(   8,  75)=          -3
 
      flst_real(   1,  76)=           2
      flst_real(   2,  76)=          -3
      flst_real(   3,  76)=         -11
      flst_real(   4,  76)=          12
      flst_real(   5,  76)=           5
      flst_real(   6,  76)=          -5
      flst_real(   7,  76)=           2
      flst_real(   8,  76)=          -2
 
      flst_real(   1,  77)=           2
      flst_real(   2,  77)=          -3
      flst_real(   3,  77)=         -11
      flst_real(   4,  77)=          12
      flst_real(   5,  77)=           5
      flst_real(   6,  77)=          -5
      flst_real(   7,  77)=           2
      flst_real(   8,  77)=          -4
 
      flst_real(   1,  78)=           2
      flst_real(   2,  78)=          -3
      flst_real(   3,  78)=         -11
      flst_real(   4,  78)=          12
      flst_real(   5,  78)=           5
      flst_real(   6,  78)=          -5
      flst_real(   7,  78)=           4
      flst_real(   8,  78)=          -4
 
      flst_real(   1,  79)=           2
      flst_real(   2,  79)=          -3
      flst_real(   3,  79)=         -11
      flst_real(   4,  79)=          12
      flst_real(   5,  79)=           5
      flst_real(   6,  79)=          -5
      flst_real(   7,  79)=           3
      flst_real(   8,  79)=          -3
 
      flst_real(   1,  80)=           2
      flst_real(   2,  80)=          -3
      flst_real(   3,  80)=         -11
      flst_real(   4,  80)=          12
      flst_real(   5,  80)=           5
      flst_real(   6,  80)=          -5
      flst_real(   7,  80)=           0
      flst_real(   8,  80)=           0
 
      flst_real(   1,  81)=           2
      flst_real(   2,  81)=           3
      flst_real(   3,  81)=         -11
      flst_real(   4,  81)=          12
      flst_real(   5,  81)=           5
      flst_real(   6,  81)=          -5
      flst_real(   7,  81)=           1
      flst_real(   8,  81)=           3
 
      flst_real(   1,  82)=           2
      flst_real(   2,  82)=           3
      flst_real(   3,  82)=         -11
      flst_real(   4,  82)=          12
      flst_real(   5,  82)=           5
      flst_real(   6,  82)=          -5
      flst_real(   7,  82)=           3
      flst_real(   8,  82)=           3
 
      flst_real(   1,  83)=           2
      flst_real(   2,  83)=           0
      flst_real(   3,  83)=         -11
      flst_real(   4,  83)=          12
      flst_real(   5,  83)=           5
      flst_real(   6,  83)=          -5
      flst_real(   7,  83)=           1
      flst_real(   8,  83)=           0
 
      flst_real(   1,  84)=           2
      flst_real(   2,  84)=           0
      flst_real(   3,  84)=         -11
      flst_real(   4,  84)=          12
      flst_real(   5,  84)=           5
      flst_real(   6,  84)=          -5
      flst_real(   7,  84)=           3
      flst_real(   8,  84)=           0
 
      flst_real(   1,  85)=          -4
      flst_real(   2,  85)=          -1
      flst_real(   3,  85)=         -11
      flst_real(   4,  85)=          12
      flst_real(   5,  85)=           5
      flst_real(   6,  85)=          -5
      flst_real(   7,  85)=          -2
      flst_real(   8,  85)=          -4
 
      flst_real(   1,  86)=          -4
      flst_real(   2,  86)=          -1
      flst_real(   3,  86)=         -11
      flst_real(   4,  86)=          12
      flst_real(   5,  86)=           5
      flst_real(   6,  86)=          -5
      flst_real(   7,  86)=          -4
      flst_real(   8,  86)=          -4
 
      flst_real(   1,  87)=          -4
      flst_real(   2,  87)=           2
      flst_real(   3,  87)=         -11
      flst_real(   4,  87)=          12
      flst_real(   5,  87)=           5
      flst_real(   6,  87)=          -5
      flst_real(   7,  87)=           1
      flst_real(   8,  87)=          -4
 
      flst_real(   1,  88)=          -4
      flst_real(   2,  88)=           2
      flst_real(   3,  88)=         -11
      flst_real(   4,  88)=          12
      flst_real(   5,  88)=           5
      flst_real(   6,  88)=          -5
      flst_real(   7,  88)=          -4
      flst_real(   8,  88)=           3
 
      flst_real(   1,  89)=          -4
      flst_real(   2,  89)=           4
      flst_real(   3,  89)=         -11
      flst_real(   4,  89)=          12
      flst_real(   5,  89)=           5
      flst_real(   6,  89)=          -5
      flst_real(   7,  89)=           1
      flst_real(   8,  89)=          -2
 
      flst_real(   1,  90)=          -4
      flst_real(   2,  90)=           4
      flst_real(   3,  90)=         -11
      flst_real(   4,  90)=          12
      flst_real(   5,  90)=           5
      flst_real(   6,  90)=          -5
      flst_real(   7,  90)=           1
      flst_real(   8,  90)=          -4
 
      flst_real(   1,  91)=          -4
      flst_real(   2,  91)=           4
      flst_real(   3,  91)=         -11
      flst_real(   4,  91)=          12
      flst_real(   5,  91)=           5
      flst_real(   6,  91)=          -5
      flst_real(   7,  91)=          -2
      flst_real(   8,  91)=           3
 
      flst_real(   1,  92)=          -4
      flst_real(   2,  92)=           4
      flst_real(   3,  92)=         -11
      flst_real(   4,  92)=          12
      flst_real(   5,  92)=           5
      flst_real(   6,  92)=          -5
      flst_real(   7,  92)=          -4
      flst_real(   8,  92)=           3
 
      flst_real(   1,  93)=          -4
      flst_real(   2,  93)=          -3
      flst_real(   3,  93)=         -11
      flst_real(   4,  93)=          12
      flst_real(   5,  93)=           5
      flst_real(   6,  93)=          -5
      flst_real(   7,  93)=          -2
      flst_real(   8,  93)=          -4
 
      flst_real(   1,  94)=          -4
      flst_real(   2,  94)=          -3
      flst_real(   3,  94)=         -11
      flst_real(   4,  94)=          12
      flst_real(   5,  94)=           5
      flst_real(   6,  94)=          -5
      flst_real(   7,  94)=          -4
      flst_real(   8,  94)=          -4
 
      flst_real(   1,  95)=           4
      flst_real(   2,  95)=          -1
      flst_real(   3,  95)=         -11
      flst_real(   4,  95)=          12
      flst_real(   5,  95)=           5
      flst_real(   6,  95)=          -5
      flst_real(   7,  95)=           1
      flst_real(   8,  95)=          -1
 
      flst_real(   1,  96)=           4
      flst_real(   2,  96)=          -1
      flst_real(   3,  96)=         -11
      flst_real(   4,  96)=          12
      flst_real(   5,  96)=           5
      flst_real(   6,  96)=          -5
      flst_real(   7,  96)=          -1
      flst_real(   8,  96)=           3
 
      flst_real(   1,  97)=           4
      flst_real(   2,  97)=          -1
      flst_real(   3,  97)=         -11
      flst_real(   4,  97)=          12
      flst_real(   5,  97)=           5
      flst_real(   6,  97)=          -5
      flst_real(   7,  97)=           2
      flst_real(   8,  97)=          -2
 
      flst_real(   1,  98)=           4
      flst_real(   2,  98)=          -1
      flst_real(   3,  98)=         -11
      flst_real(   4,  98)=          12
      flst_real(   5,  98)=           5
      flst_real(   6,  98)=          -5
      flst_real(   7,  98)=          -2
      flst_real(   8,  98)=           4
 
      flst_real(   1,  99)=           4
      flst_real(   2,  99)=          -1
      flst_real(   3,  99)=         -11
      flst_real(   4,  99)=          12
      flst_real(   5,  99)=           5
      flst_real(   6,  99)=          -5
      flst_real(   7,  99)=           4
      flst_real(   8,  99)=          -4
 
      flst_real(   1, 100)=           4
      flst_real(   2, 100)=          -1
      flst_real(   3, 100)=         -11
      flst_real(   4, 100)=          12
      flst_real(   5, 100)=           5
      flst_real(   6, 100)=          -5
      flst_real(   7, 100)=           3
      flst_real(   8, 100)=          -3
 
      flst_real(   1, 101)=           4
      flst_real(   2, 101)=          -1
      flst_real(   3, 101)=         -11
      flst_real(   4, 101)=          12
      flst_real(   5, 101)=           5
      flst_real(   6, 101)=          -5
      flst_real(   7, 101)=           0
      flst_real(   8, 101)=           0
 
      flst_real(   1, 102)=           4
      flst_real(   2, 102)=           1
      flst_real(   3, 102)=         -11
      flst_real(   4, 102)=          12
      flst_real(   5, 102)=           5
      flst_real(   6, 102)=          -5
      flst_real(   7, 102)=           1
      flst_real(   8, 102)=           1
 
      flst_real(   1, 103)=           4
      flst_real(   2, 103)=           1
      flst_real(   3, 103)=         -11
      flst_real(   4, 103)=          12
      flst_real(   5, 103)=           5
      flst_real(   6, 103)=          -5
      flst_real(   7, 103)=           1
      flst_real(   8, 103)=           3
 
      flst_real(   1, 104)=           4
      flst_real(   2, 104)=          -2
      flst_real(   3, 104)=         -11
      flst_real(   4, 104)=          12
      flst_real(   5, 104)=           5
      flst_real(   6, 104)=          -5
      flst_real(   7, 104)=           1
      flst_real(   8, 104)=          -2
 
      flst_real(   1, 105)=           4
      flst_real(   2, 105)=          -2
      flst_real(   3, 105)=         -11
      flst_real(   4, 105)=          12
      flst_real(   5, 105)=           5
      flst_real(   6, 105)=          -5
      flst_real(   7, 105)=          -2
      flst_real(   8, 105)=           3
 
      flst_real(   1, 106)=           4
      flst_real(   2, 106)=           2
      flst_real(   3, 106)=         -11
      flst_real(   4, 106)=          12
      flst_real(   5, 106)=           5
      flst_real(   6, 106)=          -5
      flst_real(   7, 106)=           1
      flst_real(   8, 106)=           2
 
      flst_real(   1, 107)=           4
      flst_real(   2, 107)=           2
      flst_real(   3, 107)=         -11
      flst_real(   4, 107)=          12
      flst_real(   5, 107)=           5
      flst_real(   6, 107)=          -5
      flst_real(   7, 107)=           1
      flst_real(   8, 107)=           4
 
      flst_real(   1, 108)=           4
      flst_real(   2, 108)=           2
      flst_real(   3, 108)=         -11
      flst_real(   4, 108)=          12
      flst_real(   5, 108)=           5
      flst_real(   6, 108)=          -5
      flst_real(   7, 108)=           2
      flst_real(   8, 108)=           3
 
      flst_real(   1, 109)=           4
      flst_real(   2, 109)=           2
      flst_real(   3, 109)=         -11
      flst_real(   4, 109)=          12
      flst_real(   5, 109)=           5
      flst_real(   6, 109)=          -5
      flst_real(   7, 109)=           4
      flst_real(   8, 109)=           3
 
      flst_real(   1, 110)=           4
      flst_real(   2, 110)=          -4
      flst_real(   3, 110)=         -11
      flst_real(   4, 110)=          12
      flst_real(   5, 110)=           5
      flst_real(   6, 110)=          -5
      flst_real(   7, 110)=           1
      flst_real(   8, 110)=          -2
 
      flst_real(   1, 111)=           4
      flst_real(   2, 111)=          -4
      flst_real(   3, 111)=         -11
      flst_real(   4, 111)=          12
      flst_real(   5, 111)=           5
      flst_real(   6, 111)=          -5
      flst_real(   7, 111)=           1
      flst_real(   8, 111)=          -4
 
      flst_real(   1, 112)=           4
      flst_real(   2, 112)=          -4
      flst_real(   3, 112)=         -11
      flst_real(   4, 112)=          12
      flst_real(   5, 112)=           5
      flst_real(   6, 112)=          -5
      flst_real(   7, 112)=          -2
      flst_real(   8, 112)=           3
 
      flst_real(   1, 113)=           4
      flst_real(   2, 113)=          -4
      flst_real(   3, 113)=         -11
      flst_real(   4, 113)=          12
      flst_real(   5, 113)=           5
      flst_real(   6, 113)=          -5
      flst_real(   7, 113)=          -4
      flst_real(   8, 113)=           3
 
      flst_real(   1, 114)=           4
      flst_real(   2, 114)=           4
      flst_real(   3, 114)=         -11
      flst_real(   4, 114)=          12
      flst_real(   5, 114)=           5
      flst_real(   6, 114)=          -5
      flst_real(   7, 114)=           1
      flst_real(   8, 114)=           4
 
      flst_real(   1, 115)=           4
      flst_real(   2, 115)=           4
      flst_real(   3, 115)=         -11
      flst_real(   4, 115)=          12
      flst_real(   5, 115)=           5
      flst_real(   6, 115)=          -5
      flst_real(   7, 115)=           4
      flst_real(   8, 115)=           3
 
      flst_real(   1, 116)=           4
      flst_real(   2, 116)=          -3
      flst_real(   3, 116)=         -11
      flst_real(   4, 116)=          12
      flst_real(   5, 116)=           5
      flst_real(   6, 116)=          -5
      flst_real(   7, 116)=           1
      flst_real(   8, 116)=          -1
 
      flst_real(   1, 117)=           4
      flst_real(   2, 117)=          -3
      flst_real(   3, 117)=         -11
      flst_real(   4, 117)=          12
      flst_real(   5, 117)=           5
      flst_real(   6, 117)=          -5
      flst_real(   7, 117)=           1
      flst_real(   8, 117)=          -3
 
      flst_real(   1, 118)=           4
      flst_real(   2, 118)=          -3
      flst_real(   3, 118)=         -11
      flst_real(   4, 118)=          12
      flst_real(   5, 118)=           5
      flst_real(   6, 118)=          -5
      flst_real(   7, 118)=           2
      flst_real(   8, 118)=          -2
 
      flst_real(   1, 119)=           4
      flst_real(   2, 119)=          -3
      flst_real(   3, 119)=         -11
      flst_real(   4, 119)=          12
      flst_real(   5, 119)=           5
      flst_real(   6, 119)=          -5
      flst_real(   7, 119)=          -2
      flst_real(   8, 119)=           4
 
      flst_real(   1, 120)=           4
      flst_real(   2, 120)=          -3
      flst_real(   3, 120)=         -11
      flst_real(   4, 120)=          12
      flst_real(   5, 120)=           5
      flst_real(   6, 120)=          -5
      flst_real(   7, 120)=           4
      flst_real(   8, 120)=          -4
 
      flst_real(   1, 121)=           4
      flst_real(   2, 121)=          -3
      flst_real(   3, 121)=         -11
      flst_real(   4, 121)=          12
      flst_real(   5, 121)=           5
      flst_real(   6, 121)=          -5
      flst_real(   7, 121)=           3
      flst_real(   8, 121)=          -3
 
      flst_real(   1, 122)=           4
      flst_real(   2, 122)=          -3
      flst_real(   3, 122)=         -11
      flst_real(   4, 122)=          12
      flst_real(   5, 122)=           5
      flst_real(   6, 122)=          -5
      flst_real(   7, 122)=           0
      flst_real(   8, 122)=           0
 
      flst_real(   1, 123)=           4
      flst_real(   2, 123)=           3
      flst_real(   3, 123)=         -11
      flst_real(   4, 123)=          12
      flst_real(   5, 123)=           5
      flst_real(   6, 123)=          -5
      flst_real(   7, 123)=           1
      flst_real(   8, 123)=           3
 
      flst_real(   1, 124)=           4
      flst_real(   2, 124)=           3
      flst_real(   3, 124)=         -11
      flst_real(   4, 124)=          12
      flst_real(   5, 124)=           5
      flst_real(   6, 124)=          -5
      flst_real(   7, 124)=           3
      flst_real(   8, 124)=           3
 
      flst_real(   1, 125)=           4
      flst_real(   2, 125)=           0
      flst_real(   3, 125)=         -11
      flst_real(   4, 125)=          12
      flst_real(   5, 125)=           5
      flst_real(   6, 125)=          -5
      flst_real(   7, 125)=           1
      flst_real(   8, 125)=           0
 
      flst_real(   1, 126)=           4
      flst_real(   2, 126)=           0
      flst_real(   3, 126)=         -11
      flst_real(   4, 126)=          12
      flst_real(   5, 126)=           5
      flst_real(   6, 126)=          -5
      flst_real(   7, 126)=           3
      flst_real(   8, 126)=           0
 
      flst_real(   1, 127)=          -3
      flst_real(   2, 127)=          -1
      flst_real(   3, 127)=         -11
      flst_real(   4, 127)=          12
      flst_real(   5, 127)=           5
      flst_real(   6, 127)=          -5
      flst_real(   7, 127)=          -1
      flst_real(   8, 127)=          -2
 
      flst_real(   1, 128)=          -3
      flst_real(   2, 128)=          -1
      flst_real(   3, 128)=         -11
      flst_real(   4, 128)=          12
      flst_real(   5, 128)=           5
      flst_real(   6, 128)=          -5
      flst_real(   7, 128)=          -1
      flst_real(   8, 128)=          -4
 
      flst_real(   1, 129)=          -3
      flst_real(   2, 129)=          -1
      flst_real(   3, 129)=         -11
      flst_real(   4, 129)=          12
      flst_real(   5, 129)=           5
      flst_real(   6, 129)=          -5
      flst_real(   7, 129)=          -2
      flst_real(   8, 129)=          -3
 
      flst_real(   1, 130)=          -3
      flst_real(   2, 130)=          -1
      flst_real(   3, 130)=         -11
      flst_real(   4, 130)=          12
      flst_real(   5, 130)=           5
      flst_real(   6, 130)=          -5
      flst_real(   7, 130)=          -4
      flst_real(   8, 130)=          -3
 
      flst_real(   1, 131)=          -3
      flst_real(   2, 131)=           1
      flst_real(   3, 131)=         -11
      flst_real(   4, 131)=          12
      flst_real(   5, 131)=           5
      flst_real(   6, 131)=          -5
      flst_real(   7, 131)=           1
      flst_real(   8, 131)=          -2
 
      flst_real(   1, 132)=          -3
      flst_real(   2, 132)=           1
      flst_real(   3, 132)=         -11
      flst_real(   4, 132)=          12
      flst_real(   5, 132)=           5
      flst_real(   6, 132)=          -5
      flst_real(   7, 132)=           1
      flst_real(   8, 132)=          -4
 
      flst_real(   1, 133)=          -3
      flst_real(   2, 133)=          -2
      flst_real(   3, 133)=         -11
      flst_real(   4, 133)=          12
      flst_real(   5, 133)=           5
      flst_real(   6, 133)=          -5
      flst_real(   7, 133)=          -2
      flst_real(   8, 133)=          -2
 
      flst_real(   1, 134)=          -3
      flst_real(   2, 134)=          -2
      flst_real(   3, 134)=         -11
      flst_real(   4, 134)=          12
      flst_real(   5, 134)=           5
      flst_real(   6, 134)=          -5
      flst_real(   7, 134)=          -2
      flst_real(   8, 134)=          -4
 
      flst_real(   1, 135)=          -3
      flst_real(   2, 135)=           2
      flst_real(   3, 135)=         -11
      flst_real(   4, 135)=          12
      flst_real(   5, 135)=           5
      flst_real(   6, 135)=          -5
      flst_real(   7, 135)=           1
      flst_real(   8, 135)=          -1
 
      flst_real(   1, 136)=          -3
      flst_real(   2, 136)=           2
      flst_real(   3, 136)=         -11
      flst_real(   4, 136)=          12
      flst_real(   5, 136)=           5
      flst_real(   6, 136)=          -5
      flst_real(   7, 136)=           1
      flst_real(   8, 136)=          -3
 
      flst_real(   1, 137)=          -3
      flst_real(   2, 137)=           2
      flst_real(   3, 137)=         -11
      flst_real(   4, 137)=          12
      flst_real(   5, 137)=           5
      flst_real(   6, 137)=          -5
      flst_real(   7, 137)=           2
      flst_real(   8, 137)=          -2
 
      flst_real(   1, 138)=          -3
      flst_real(   2, 138)=           2
      flst_real(   3, 138)=         -11
      flst_real(   4, 138)=          12
      flst_real(   5, 138)=           5
      flst_real(   6, 138)=          -5
      flst_real(   7, 138)=           2
      flst_real(   8, 138)=          -4
 
      flst_real(   1, 139)=          -3
      flst_real(   2, 139)=           2
      flst_real(   3, 139)=         -11
      flst_real(   4, 139)=          12
      flst_real(   5, 139)=           5
      flst_real(   6, 139)=          -5
      flst_real(   7, 139)=           4
      flst_real(   8, 139)=          -4
 
      flst_real(   1, 140)=          -3
      flst_real(   2, 140)=           2
      flst_real(   3, 140)=         -11
      flst_real(   4, 140)=          12
      flst_real(   5, 140)=           5
      flst_real(   6, 140)=          -5
      flst_real(   7, 140)=           3
      flst_real(   8, 140)=          -3
 
      flst_real(   1, 141)=          -3
      flst_real(   2, 141)=           2
      flst_real(   3, 141)=         -11
      flst_real(   4, 141)=          12
      flst_real(   5, 141)=           5
      flst_real(   6, 141)=          -5
      flst_real(   7, 141)=           0
      flst_real(   8, 141)=           0
 
      flst_real(   1, 142)=          -3
      flst_real(   2, 142)=          -4
      flst_real(   3, 142)=         -11
      flst_real(   4, 142)=          12
      flst_real(   5, 142)=           5
      flst_real(   6, 142)=          -5
      flst_real(   7, 142)=          -2
      flst_real(   8, 142)=          -4
 
      flst_real(   1, 143)=          -3
      flst_real(   2, 143)=          -4
      flst_real(   3, 143)=         -11
      flst_real(   4, 143)=          12
      flst_real(   5, 143)=           5
      flst_real(   6, 143)=          -5
      flst_real(   7, 143)=          -4
      flst_real(   8, 143)=          -4
 
      flst_real(   1, 144)=          -3
      flst_real(   2, 144)=           4
      flst_real(   3, 144)=         -11
      flst_real(   4, 144)=          12
      flst_real(   5, 144)=           5
      flst_real(   6, 144)=          -5
      flst_real(   7, 144)=           1
      flst_real(   8, 144)=          -1
 
      flst_real(   1, 145)=          -3
      flst_real(   2, 145)=           4
      flst_real(   3, 145)=         -11
      flst_real(   4, 145)=          12
      flst_real(   5, 145)=           5
      flst_real(   6, 145)=          -5
      flst_real(   7, 145)=           1
      flst_real(   8, 145)=          -3
 
      flst_real(   1, 146)=          -3
      flst_real(   2, 146)=           4
      flst_real(   3, 146)=         -11
      flst_real(   4, 146)=          12
      flst_real(   5, 146)=           5
      flst_real(   6, 146)=          -5
      flst_real(   7, 146)=           2
      flst_real(   8, 146)=          -2
 
      flst_real(   1, 147)=          -3
      flst_real(   2, 147)=           4
      flst_real(   3, 147)=         -11
      flst_real(   4, 147)=          12
      flst_real(   5, 147)=           5
      flst_real(   6, 147)=          -5
      flst_real(   7, 147)=          -2
      flst_real(   8, 147)=           4
 
      flst_real(   1, 148)=          -3
      flst_real(   2, 148)=           4
      flst_real(   3, 148)=         -11
      flst_real(   4, 148)=          12
      flst_real(   5, 148)=           5
      flst_real(   6, 148)=          -5
      flst_real(   7, 148)=           4
      flst_real(   8, 148)=          -4
 
      flst_real(   1, 149)=          -3
      flst_real(   2, 149)=           4
      flst_real(   3, 149)=         -11
      flst_real(   4, 149)=          12
      flst_real(   5, 149)=           5
      flst_real(   6, 149)=          -5
      flst_real(   7, 149)=           3
      flst_real(   8, 149)=          -3
 
      flst_real(   1, 150)=          -3
      flst_real(   2, 150)=           4
      flst_real(   3, 150)=         -11
      flst_real(   4, 150)=          12
      flst_real(   5, 150)=           5
      flst_real(   6, 150)=          -5
      flst_real(   7, 150)=           0
      flst_real(   8, 150)=           0
 
      flst_real(   1, 151)=          -3
      flst_real(   2, 151)=          -3
      flst_real(   3, 151)=         -11
      flst_real(   4, 151)=          12
      flst_real(   5, 151)=           5
      flst_real(   6, 151)=          -5
      flst_real(   7, 151)=          -2
      flst_real(   8, 151)=          -3
 
      flst_real(   1, 152)=          -3
      flst_real(   2, 152)=          -3
      flst_real(   3, 152)=         -11
      flst_real(   4, 152)=          12
      flst_real(   5, 152)=           5
      flst_real(   6, 152)=          -5
      flst_real(   7, 152)=          -4
      flst_real(   8, 152)=          -3
 
      flst_real(   1, 153)=          -3
      flst_real(   2, 153)=           3
      flst_real(   3, 153)=         -11
      flst_real(   4, 153)=          12
      flst_real(   5, 153)=           5
      flst_real(   6, 153)=          -5
      flst_real(   7, 153)=           1
      flst_real(   8, 153)=          -2
 
      flst_real(   1, 154)=          -3
      flst_real(   2, 154)=           3
      flst_real(   3, 154)=         -11
      flst_real(   4, 154)=          12
      flst_real(   5, 154)=           5
      flst_real(   6, 154)=          -5
      flst_real(   7, 154)=           1
      flst_real(   8, 154)=          -4
 
      flst_real(   1, 155)=          -3
      flst_real(   2, 155)=           3
      flst_real(   3, 155)=         -11
      flst_real(   4, 155)=          12
      flst_real(   5, 155)=           5
      flst_real(   6, 155)=          -5
      flst_real(   7, 155)=          -2
      flst_real(   8, 155)=           3
 
      flst_real(   1, 156)=          -3
      flst_real(   2, 156)=           3
      flst_real(   3, 156)=         -11
      flst_real(   4, 156)=          12
      flst_real(   5, 156)=           5
      flst_real(   6, 156)=          -5
      flst_real(   7, 156)=          -4
      flst_real(   8, 156)=           3
 
      flst_real(   1, 157)=          -3
      flst_real(   2, 157)=           0
      flst_real(   3, 157)=         -11
      flst_real(   4, 157)=          12
      flst_real(   5, 157)=           5
      flst_real(   6, 157)=          -5
      flst_real(   7, 157)=          -2
      flst_real(   8, 157)=           0
 
      flst_real(   1, 158)=          -3
      flst_real(   2, 158)=           0
      flst_real(   3, 158)=         -11
      flst_real(   4, 158)=          12
      flst_real(   5, 158)=           5
      flst_real(   6, 158)=          -5
      flst_real(   7, 158)=          -4
      flst_real(   8, 158)=           0
 
      flst_real(   1, 159)=           3
      flst_real(   2, 159)=          -1
      flst_real(   3, 159)=         -11
      flst_real(   4, 159)=          12
      flst_real(   5, 159)=           5
      flst_real(   6, 159)=          -5
      flst_real(   7, 159)=          -2
      flst_real(   8, 159)=           3
 
      flst_real(   1, 160)=           3
      flst_real(   2, 160)=          -1
      flst_real(   3, 160)=         -11
      flst_real(   4, 160)=          12
      flst_real(   5, 160)=           5
      flst_real(   6, 160)=          -5
      flst_real(   7, 160)=          -4
      flst_real(   8, 160)=           3
 
      flst_real(   1, 161)=           3
      flst_real(   2, 161)=           2
      flst_real(   3, 161)=         -11
      flst_real(   4, 161)=          12
      flst_real(   5, 161)=           5
      flst_real(   6, 161)=          -5
      flst_real(   7, 161)=           1
      flst_real(   8, 161)=           3
 
      flst_real(   1, 162)=           3
      flst_real(   2, 162)=           2
      flst_real(   3, 162)=         -11
      flst_real(   4, 162)=          12
      flst_real(   5, 162)=           5
      flst_real(   6, 162)=          -5
      flst_real(   7, 162)=           3
      flst_real(   8, 162)=           3
 
      flst_real(   1, 163)=           3
      flst_real(   2, 163)=           4
      flst_real(   3, 163)=         -11
      flst_real(   4, 163)=          12
      flst_real(   5, 163)=           5
      flst_real(   6, 163)=          -5
      flst_real(   7, 163)=           1
      flst_real(   8, 163)=           3
 
      flst_real(   1, 164)=           3
      flst_real(   2, 164)=           4
      flst_real(   3, 164)=         -11
      flst_real(   4, 164)=          12
      flst_real(   5, 164)=           5
      flst_real(   6, 164)=          -5
      flst_real(   7, 164)=           3
      flst_real(   8, 164)=           3
 
      flst_real(   1, 165)=           3
      flst_real(   2, 165)=          -3
      flst_real(   3, 165)=         -11
      flst_real(   4, 165)=          12
      flst_real(   5, 165)=           5
      flst_real(   6, 165)=          -5
      flst_real(   7, 165)=           1
      flst_real(   8, 165)=          -2
 
      flst_real(   1, 166)=           3
      flst_real(   2, 166)=          -3
      flst_real(   3, 166)=         -11
      flst_real(   4, 166)=          12
      flst_real(   5, 166)=           5
      flst_real(   6, 166)=          -5
      flst_real(   7, 166)=           1
      flst_real(   8, 166)=          -4
 
      flst_real(   1, 167)=           3
      flst_real(   2, 167)=          -3
      flst_real(   3, 167)=         -11
      flst_real(   4, 167)=          12
      flst_real(   5, 167)=           5
      flst_real(   6, 167)=          -5
      flst_real(   7, 167)=          -2
      flst_real(   8, 167)=           3
 
      flst_real(   1, 168)=           3
      flst_real(   2, 168)=          -3
      flst_real(   3, 168)=         -11
      flst_real(   4, 168)=          12
      flst_real(   5, 168)=           5
      flst_real(   6, 168)=          -5
      flst_real(   7, 168)=          -4
      flst_real(   8, 168)=           3
 
      flst_real(   1, 169)=           0
      flst_real(   2, 169)=          -1
      flst_real(   3, 169)=         -11
      flst_real(   4, 169)=          12
      flst_real(   5, 169)=           5
      flst_real(   6, 169)=          -5
      flst_real(   7, 169)=          -2
      flst_real(   8, 169)=           0
 
      flst_real(   1, 170)=           0
      flst_real(   2, 170)=          -1
      flst_real(   3, 170)=         -11
      flst_real(   4, 170)=          12
      flst_real(   5, 170)=           5
      flst_real(   6, 170)=          -5
      flst_real(   7, 170)=          -4
      flst_real(   8, 170)=           0
 
      flst_real(   1, 171)=           0
      flst_real(   2, 171)=           2
      flst_real(   3, 171)=         -11
      flst_real(   4, 171)=          12
      flst_real(   5, 171)=           5
      flst_real(   6, 171)=          -5
      flst_real(   7, 171)=           1
      flst_real(   8, 171)=           0
 
      flst_real(   1, 172)=           0
      flst_real(   2, 172)=           2
      flst_real(   3, 172)=         -11
      flst_real(   4, 172)=          12
      flst_real(   5, 172)=           5
      flst_real(   6, 172)=          -5
      flst_real(   7, 172)=           3
      flst_real(   8, 172)=           0
 
      flst_real(   1, 173)=           0
      flst_real(   2, 173)=           4
      flst_real(   3, 173)=         -11
      flst_real(   4, 173)=          12
      flst_real(   5, 173)=           5
      flst_real(   6, 173)=          -5
      flst_real(   7, 173)=           1
      flst_real(   8, 173)=           0
 
      flst_real(   1, 174)=           0
      flst_real(   2, 174)=           4
      flst_real(   3, 174)=         -11
      flst_real(   4, 174)=          12
      flst_real(   5, 174)=           5
      flst_real(   6, 174)=          -5
      flst_real(   7, 174)=           3
      flst_real(   8, 174)=           0
 
      flst_real(   1, 175)=           0
      flst_real(   2, 175)=          -3
      flst_real(   3, 175)=         -11
      flst_real(   4, 175)=          12
      flst_real(   5, 175)=           5
      flst_real(   6, 175)=          -5
      flst_real(   7, 175)=          -2
      flst_real(   8, 175)=           0
 
      flst_real(   1, 176)=           0
      flst_real(   2, 176)=          -3
      flst_real(   3, 176)=         -11
      flst_real(   4, 176)=          12
      flst_real(   5, 176)=           5
      flst_real(   6, 176)=          -5
      flst_real(   7, 176)=          -4
      flst_real(   8, 176)=           0
 
      flst_real(   1, 177)=           0
      flst_real(   2, 177)=           0
      flst_real(   3, 177)=         -11
      flst_real(   4, 177)=          12
      flst_real(   5, 177)=           5
      flst_real(   6, 177)=          -5
      flst_real(   7, 177)=           1
      flst_real(   8, 177)=          -2
 
      flst_real(   1, 178)=           0
      flst_real(   2, 178)=           0
      flst_real(   3, 178)=         -11
      flst_real(   4, 178)=          12
      flst_real(   5, 178)=           5
      flst_real(   6, 178)=          -5
      flst_real(   7, 178)=           1
      flst_real(   8, 178)=          -4
 
      flst_real(   1, 179)=           0
      flst_real(   2, 179)=           0
      flst_real(   3, 179)=         -11
      flst_real(   4, 179)=          12
      flst_real(   5, 179)=           5
      flst_real(   6, 179)=          -5
      flst_real(   7, 179)=          -2
      flst_real(   8, 179)=           3
 
      flst_real(   1, 180)=           0
      flst_real(   2, 180)=           0
      flst_real(   3, 180)=         -11
      flst_real(   4, 180)=          12
      flst_real(   5, 180)=           5
      flst_real(   6, 180)=          -5
      flst_real(   7, 180)=          -4
      flst_real(   8, 180)=           3
 
      flst_nreal=         180
 
      if(idvecbos.eq.-24) then
         do jreal=1,flst_nreal
            call cconj(flst_real(:,jreal),nlegreal)
         enddo
      endif

      return
      end
 
