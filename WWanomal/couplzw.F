      subroutine couplzw(xxw)
      implicit none
#include "constants.h"
#include "zwcouple.h"
#include "ewcharge.h"
c---calculate the couplings as given in Kunszt and Gunion
c---Modified to notation of DKS (ie divided by 2*sw*cw)
c---xxw=sin^2 theta_w
      integer j
      double precision xxw

      sin2w=two*sqrt(xxw*(1d0-xxw))
      do j=1,4   !--  nf=4
      l(j)=(tau(j)-two*Q(j)*xxw)/sin2w
      r(j)=      (-two*Q(j)*xxw)/sin2w
      enddo

      le=(-1d0-two*(-1d0)*xxw)/sin2w
      re=(-two*(-1d0)*xxw)/sin2w

      ln=(+1d0-two*(+0d0)*xxw)/sin2w
      rn=0d0

      return
      end
