      double precision function t(j1,j2,j3)
      implicit none
#include "sprods_com.h"
      integer j1,j2,j3
      t=s(j1,j2)+s(j2,j3)+s(j1,j3)
      end
