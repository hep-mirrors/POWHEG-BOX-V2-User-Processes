      subroutine couplz(sin2xw)
      implicit none       
      include 'constants.f'
      include 'zwcouple.f'
      include 'ewcharge.f'
c---calculate the couplings as given in Kunszt and Gunion
c---Modified to notation of DKS (ie divided by 2*sw*cw)
c---xw=sin^2 theta_w
      integer j
      double precision sin2xw

c isospin = mod(j,2)

      sin2w=two*sqrt(sin2xw*(1d0-sin2xw))
      do j=-16,16   !-- 5 is nf
      zfl(j)=(tau(j)-two*fq(j)*sin2xw)/sin2w
      zfr(j)=      (-two*fq(j)*sin2xw)/sin2w
      enddo

      le=(-1d0-two*(-1d0)*sin2xw)/sin2w
      re=(-two*(-1d0)*sin2xw)/sin2w

      ln=(+1d0-two*(+0d0)*sin2xw)/sin2w
      rn=0d0

      return
      end
