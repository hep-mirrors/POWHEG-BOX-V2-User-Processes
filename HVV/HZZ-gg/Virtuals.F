      subroutine setvirtual(p,vflav,virtual)
      implicit none

#include "PhysPars.h"
#include "pwhg_st.h"
#include "pwhg_math.h"
#include "nlegborn.h"

      real *8 p(0:3,nlegborn),virtual
      integer vflav(nlegborn)
      real * 8 c0,q2,llog
      real *8 born,bornjk(nlegborn,nlegborn),bmunu(0:3,0:3,nlegborn)
      real *8 dotp
      external dotp
      
      virtual=0d0
        
      end
