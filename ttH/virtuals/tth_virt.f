      subroutine tthvirt(nlo,qqg,sp,t1,t2,u1,u2,
     $     sig0qq,sig0gg,sigvqq,sigvgg,sigvqq_ir,sigvgg_ir)
***********************************************************
c virtual O(alpha_s) corrections to ttbarH production
c October 2011, D.W.
c February 2012: IR poles added, D.W.
***********************************************************
      implicit none
      integer nlo
      integer i,j
      real*8 sig0(2),sig0qq(2),sig0gg(2)
      real*8 sigv(2),sigvqq(2),sigvgg(2)
      real*8 sp,t1(2),t2(2),u1(2),u2(2)
      real*8 mtop,alphas,mb
      common/topas/mtop,alphas,mb
      real*8 mh
      common/smhiggs/mh
      real*8 pi,pi2,w2
      common/para/pi,pi2,w2
      real*8 delta,muedr
      common/dimreg/delta,muedr
      real*8 ceps1(2,2),ceps2(2,2)
      common/irpoles/ceps1,ceps2
      real*8 irfinite(2,2)
      real*8 gmu,yukt,yukb,yukf
      common/gf/gmu
      common/yukawa/yukt,yukb,yukf
c Coulomb singularity
c      real*8 betamax,dcoul
c      complex*16 spence
c
c o_fac: overall factor (coupling constant)
c
      real*8 o_fac
c matrix elements squared
      real*8 matb_gg,matb_qq
c coefficients of IR single and double poles
      real*8 sigv_irpole(2,2),sigvqq_ir(2,2),sigvgg_ir(2,2)
c switch for qqbar and/or gluon fusion
      integer qqg
c new common block for sqrt(p_h^2) (which can be =/= mh)                        
      real*8 sph
      common/offshell/sph
c
c initialization
      do i=1,2
         sig0qq(i)=0d0
         sig0gg(i)=0d0
         sigvqq(i)=0d0
         sigvgg(i)=0d0
         do j=1,2
            sigvqq_ir(i,j)=0d0
            sigvgg_ir(i,j)=0d0
         enddo
      enddo
c constants
      pi=4d0*datan(1d0)
      pi2=pi*pi
      w2=dsqrt(2d0)
c
c overall factor and Yukawa couplings
c
c MSM-Higgs-fermion coupling:
c          eta
*          -----
c     yukt=-mtop/2d0/sw/mw*dsqrt(4d0*pi*alpha)
c      gmu=1.16639d-5
      yukt=-mtop*dsqrt(gmu*w2)
      yukb=-mb*dsqrt(gmu*w2)
c      write(6,*)'top-Yukawa:',yukt
c      write(6,*)'bottom-Yukawa:',yukb
      yukf=yukt
c
      o_fac=yukf**2*(4d0*pi*alphas)**2
c     
c Born-matrix element squared:
c     
c qqbar annihilation
      do i=1,2
         sig0(i)=0d0
      enddo
      if (qqg.eq.1.or.qqg.eq.3) then
         sig0(1)=matb_qq(sp,t1(1),t2(1),u1(1),u2(1),mtop,sph)
         sig0(2)=matb_qq(sp,t1(2),t2(2),u1(2),u2(2),mtop,sph)
         do i=1,2
            sig0qq(i)=o_fac*sig0(i)
         enddo
      end if
c gluon fusion
      do i=1,2
         sig0(i)=0d0
      enddo
      if (qqg.eq.2.or.qqg.eq.3) then
         sig0(1)=matb_gg(sp,t1(1),t2(1),u1(1),u2(1),mtop,sph)
         sig0(2)=matb_gg(sp,t1(2),t2(2),u1(2),u2(2),mtop,sph)
         do i=1,2
            sig0gg(i)=o_fac*sig0(i)
         enddo
      endif


      if (nlo.eq.0) return 

c
c Coulomb singularity:
c      betamax=dsqrt((dsqrt(sp)-mh)**2-4d0*mtop**2)/2d0/mtop
c      dcoul=-8d0/6d0*alphas/3d0/betamax
c      do i=1.2
c      sig0qq(i)=sig0qq(i)*dcoul
c      sig0gg(i)=sig0gg(i)*dcoul
c      enddo
c
c virtual O(alpha_s) corrections 
c
c renormalization constants      
c      do j=1,3
c         muedr=10d0**(j**2)
      call renorm(mtop,mh)
c qqbar annihilation:
      do i=1,2
         sigv(i)=0d0
         do j=1,2
            sigv_irpole(i,j)=0d0
         enddo
      enddo
      if (qqg.eq.1.or.qqg.eq.3) then
         call mvirt_qq(sp,t1(1),t2(1),u1(1),u2(1),mtop,sph,sigv(1),
     $        sigv_irpole(1,1),sigv_irpole(2,1))
         call mvirt_qq(sp,t1(2),t2(2),u1(2),u2(2),mtop,sph,sigv(2),
     $        sigv_irpole(1,2),sigv_irpole(2,2))
         do i=1,2
            sigvqq(i)=o_fac*sigv(i)*alphas/4d0/pi
c IR poles
c single
            sigvqq_ir(1,i)=o_fac*sigv_irpole(1,i)*alphas/4d0/pi
c double
            sigvqq_ir(2,i)=o_fac*sigv_irpole(2,i)*alphas/4d0/pi
         enddo
      endif
c gluon fusion:
      do i=1,2
         sigv(i)=0d0
         do j=1,2
            sigv_irpole(i,j)=0d0
         enddo
      enddo
      if (qqg.eq.2.or.qqg.eq.3) then
         call mvirt_gg(sp,t1(1),t2(1),u1(1),u2(1),mtop,sph,sigv(1),
     $        sigv_irpole(1,1),sigv_irpole(2,1))
         call mvirt_gg(sp,t1(2),t2(2),u1(2),u2(2),mtop,sph,sigv(2),
     $        sigv_irpole(1,2),sigv_irpole(2,2))
c        sigv(2)=sigv(1)
c        nlf=5d0
         do i=1,2
            sigvgg(i)=o_fac*sigv(i)*alphas/4d0/pi
c           sigvgg(i)=sigvgg(i)-2d0*sig0gg(i)*alphas/4d0/pi*
c     $        (-2d0/3d0*5d0+11d0/3d0*3d0)*dlog(muedr**2/sp)
c IR poles
c single
            sigvgg_ir(1,i)=o_fac*sigv_irpole(1,i)*alphas/4d0/pi
c double
            sigvgg_ir(2,i)=o_fac*sigv_irpole(2,i)*alphas/4d0/pi
         enddo
      endif
c      write(6,*)muedr,sigvqq(1),sigvgg(1)
c      enddo
      return
      end
