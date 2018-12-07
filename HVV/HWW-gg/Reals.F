      subroutine setreal(p,rflav,amp2real)
      implicit none

#include "PhysPars.h"
#include "nlegborn.h"
#include "pwhg_flst.h"
#include "pwhg_math.h"
#include "pwhg_st.h"

      double precision p(0:3,nlegreal)
      integer rflav(nlegreal)
      ! the real amplitudes
      double precision amp2real
      amp2real=0.d0

      end
