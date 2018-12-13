c     RGE for the scalar  and tensor operators in the SMEFT
c     Anomalous Dimension from arXiv:hep-ph/0510137
c     Take into account of a factor of mq in the definition of coefficients
      subroutine RGE(LambdaNP,rg)

      implicit none
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      integer nf
      real * 8 rg, LambdaNP
      real * 8 gamma0, gamma1
      real * 8 beta0, beta1
      real * 8 r, L
      real * 8 mt_thr

c     top thresholds (MSbar masses)
c     not used here
      mt_thr = 160


      nf = 5
      L = 1/2d0 * log(LambdaNP**2/st_muren2)

c     rge
      beta0 =  11d0 - 2/3d0 * nf
      beta1 = 34/3d0 * Nc**2 - 10/3d0* Nc * nf - 2d0 * CF *nf

      gamma0 = 2 * CF
      gamma1 = (257/9d0 * Nc -19*CF -26/9*nf)*CF

c     r = alphas(LambdaNP**2)/alphas(st_mure2)
      r = 1 + beta0 * st_alpha/(2d0*pi) * L
     .  + (st_alpha/(4d0*pi)) * beta1/beta0 * log(1d0
     .  + L * beta0 *st_alpha/(2d0*pi) )

      r = 1/r

      rg = exp( 1/2d0 * gamma0/beta0 *( log(r)
     .- st_alpha/4d0/pi  * (1-r)* (gamma1/gamma0 - beta1/beta0) ))


      end


c     RGE for scalar operators
      subroutine RGE_s(LambdaNP,rg)

      implicit none
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      integer nf
      real * 8 rg, LambdaNP
      real * 8 gamma0, gamma1
      real * 8 beta0, beta1
      real * 8 r, L
      real * 8 mt_thr

c     top thresholds (MSbar masses)
c     not used here
      mt_thr = 160


      nf = 5
      L = 1/2d0 * log(LambdaNP**2/st_muren2)



c     rge
      beta0 =  11d0 - 2/3d0 * nf
      beta1 = 34/3d0 * Nc**2 - 10/3d0* Nc * nf - 2d0 * CF *nf

      gamma0 = 6 * CF
      gamma1 = ( 3*CF  + 97/3d0 * Nc - 10/3d0 * nf )*CF

c     r = alphas(LambdaNP**2)/alphas(st_mure2)
      r = 1 + beta0 * st_alpha/(2d0*pi) * L
     .  + (st_alpha/(4d0*pi)) * beta1/beta0 * log(1d0
     .  + L * beta0 *st_alpha/(2d0*pi) )

      r = 1/r

      rg = exp( - 1/2d0 * gamma0/beta0 *( log(r)
     .- st_alpha/4d0/pi  * (1-r)* (gamma1/gamma0 - beta1/beta0) ))


c      write(*,*) 'LambdaNP', LambdaNP
c      write(*,*) 'mu', sqrt(st_muren2)
c      write(*,*) 'rg', rg

      end
