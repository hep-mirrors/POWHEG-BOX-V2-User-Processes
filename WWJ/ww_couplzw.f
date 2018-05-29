      subroutine ww_couplzw(xw)
      implicit none       
      include 'ww_constants.f' 
      include 'ww_zcouple.f'
      include 'ww_ewcharge.f'
c---calculate the couplings as given in Kunszt and Gunion
c---Modified to notation of DKS (ie divided by 2*sw*cw)
c---xw=sin^2 theta_w
      integer j
      double precision xw

      ww_sin2w=ww_two*sqrt(xw*(1d0-xw))
      do j=1,4   !--  nf=4
      ww_l(j)=(ww_tau(j)-ww_two*ww_Q(j)*xw)/ww_sin2w
      ww_r(j)=      (-ww_two*ww_Q(j)*xw)/ww_sin2w
      enddo

      ww_le=(-1d0-ww_two*(-1d0)*xw)/ww_sin2w
      ww_re=(-ww_two*(-1d0)*xw)/ww_sin2w

      ww_ln=(+1d0-ww_two*(+0d0)*xw)/ww_sin2w
      ww_rn=0d0

      return
      end
