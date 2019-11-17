      double complex function Vpole(sij)
      implicit none
c---  DKS Eq. 2.12
#include "pwhg_st.h"
      !TM added these
      double precision musq
      double precision sij
      double complex Lnrat,xl12
        
      !TM set variables
      musq = st_muren2

      xl12=Lnrat(-sij,musq)

      Vpole=
     .   -0.5d0*xl12**2+1.5d0*xl12-3.5d0

      return
      end
