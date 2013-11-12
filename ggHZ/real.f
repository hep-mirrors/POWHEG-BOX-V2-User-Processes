      subroutine setreal(p,rflav,amp2)
      implicit none
      real*8 dotp
      external dotp
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real *8 p(0:3,nlegreal),amp2
      real *8 pp(0:3,nlegreal)
      integer rflav(nlegreal)

      amp2=0d0

      end

