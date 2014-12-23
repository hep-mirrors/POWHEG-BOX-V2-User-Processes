
      subroutine setreal_ew16(p,fermion_flav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_kn.h'
      include 'pwhg_physpar.h'
      include 'pwhg_math.h'
      include 'mathx.h'
*
      real * 8 p(0:3,nlegreal)
      integer fermion_flav(nlegreal)
      real * 8 amp2
*

      real*8 mlep2
      common/leptmass/mlep2

*
      real*16 amp216
      real*16 dotp16
      external dotp16
      
      real*8 chargeofparticle
      external chargeofparticle

      complex*32 e32_
      external e32_
*
      integer kkk
      real*16 p1(0:3),p2(0:3),k1(0:3),k2(0:3),k(0:3)
      real*16 qq2,ql2
      complex*32 glm,glmd,glp,glpd
      complex*32 gqm,gqmd,gqp,gqpd
      complex*32 glm2,glp2
      complex*32 gqm2,gqp2
      real*16 ml2,ml4,deltae
      complex*32 mz2m1,mz2dm1,mz2m2
      real*16 s,sp,t,u
      real*16 s2,u2,t2
      real*16 k1k,k2k,p1k,p2k
      real*16 p1k2,p2k2
      real*16 k1k2,k2k2
      complex*32 dens,densd,dens2,densg
      complex*32 densp,denspd,densp2,denspg

      integer ifirst
*
      data ifirst /0/
      save ifirst
      save glm,glp,glmd,glpd,glm2,glp2
      save mz2m1,mz2dm1,mz2m2

      ml2 = mlep2*1.q0
      ml4 = ml2*ml2

      qq = chargeofparticle(fermion_flav(1))
      ql = chargeofparticle(fermion_flav(3))

      qq2 = qq**2*1.q0
      ql2 = ql**2*1.q0

      if (ifirst.eq.0) then
          ifirst = 1

          if (ql.ne.0d0) then
              glm = gl(0)*1.q0
              glp = gl(1)*1.q0
          else
              glm = gn(0)*1.q0
              glp = gn(1)*1.q0
          endif
          glmd = conjg(glm)
          glpd = conjg(glp)
          glm2 = glm*glmd
          glp2 = glp*glpd

          mz2m1  = 1q0/mz2 
          mz2dm1 = conjg(mz2m1)
          mz2m2  = mz2m1*mz2dm1
      endif

      if (qq.lt.0d0) then
          gqm = gd(0)*1.q0
          gqp = gd(1)*1.q0
      else
          gqm = gu(0)
          gqp = gu(1)
      endif

      gqmd = conjg(gqm)
      gqpd = conjg(gqp)

      gqm2 = gqm*gqmd
      gqp2 = gqp*gqpd

*
      if (fermion_flav(1).lt.0d0) then
          p2 = p(:,1)
          p1 = p(:,2)
      else
          p1 = p(:,1)
          p2 = p(:,2)
      endif
      k1 = p(:,3)
      k2 = p(:,4)
      k  = p(:,5)

c adjust quadruple precision momenta to satisfy momentum conservation
c and on mass-shell conditions.
c Momentum conservation:
      p1(1:2) = 0
      p2(1:2) = 0
      k2(1:3) =  p1(1:3)+p2(1:3)-k(1:3)-k1(1:3)
c Mass shell
      k(0)  = sqrt( k(1)**2+ k(2)**2 +k(3)**2)
      k1(0) = sqrt(k1(1)**2+k1(2)**2+k1(3)**2+ml2)
      k2(0) = sqrt(k2(1)**2+k2(2)**2+k2(3)**2+ml2)
      p1(0) = abs(p1(3))
      p2(0) = abs(p2(3))
c energy conservation by rescaling final momenta.
c fix electron on mass shell and iterate 4 times
      do kkk=1,4
         deltae = p1(0)+p2(0)-k(0)-k1(0)-k2(0)
         k1 = k1*(1+deltae/(p1(0)+p2(0)))
         k2 = k2*(1+deltae/(p1(0)+p2(0)))
         k = k*(1+deltae/(p1(0)+p2(0)))
         k1(0) = sqrt(k1(1)**2+k1(2)**2+k1(3)**2+ml2)
      enddo
      deltae = p1(0)+p2(0)-k(0)-k1(0)-k2(0)
ccc modified fulvio
ccc      if(abs(deltae/(pu(0)+pd(0))).gt.1q-30) then
      if(abs(deltae/(p1(0)+p2(0))).gt.1q-20) then
ccc modified fulvio
         write(*,*) ' worry: momentum not conserved!'
         write(*,*) deltae/(p1(0)+p2(0))
         call exit(-1)
      endif
*


      p1k=dotp16(p1,k)
      p2k=dotp16(p2,k)
      k1k=dotp16(k1,k)
      k2k=dotp16(k2,k)

      p1k2 = p1k**2
      p2k2 = p2k**2
      k1k2 = k1k**2
      k2k2 = k2k**2

      s =  2q0*dotp16(p1,p2)
      t = -2q0*dotp16(p1,k1) + ml2
      u = -2q0*dotp16(p2,k1) + ml2
      sp = 2q0*dotp16(k1,k2) + 2q0*ml2

      s2 = s**2
      t2 = t**2
      u2 = u**2

      dens = 1q0/(s - ph_Zmass2*1.q0 + ii*ph_ZmZw*1.q0)
      densd = conjg(dens)
      dens2 = dens*densd
      densg = 1q0/s

      densp = 1q0/(sp - ph_Zmass2*1.q0 + ii*ph_ZmZw*1.q0)
      denspd = conjg(densp)
      densp2 = densp*denspd
      denspg = 1q0/sp

*
      amp216 =
     -  (-4*densg**2*qq2*(k1k*
     -       (t*(2*p2k*t + s*(2*k1k - 2*p1k + s + t)) + 
     -         (s2 - 2*p1k*t + 4*s*t + 2*t2 - 2*p2k*(s + t) + 
     -            2*k1k*(s + 2*t))*u + (2*p1k + s + 2*t)*u2) - 
     -      4*k2k2*(p2k*(s + t) + p1k*(-4*p2k + s + u)) - 
     -      2*k2k*(4*k1k2*s + t*(-2*p2k2 + 2*p1k*(p2k - s) + s*t) - 
     -         2*(p1k2 - p1k*p2k + p2k*s)*u + s*u2 + 
     -      2*k1k*(-(p1k*s) - p2k*s + 2*p2k*t + s*t + 2*p1k*u + s*u))))/
     -  (k1k*k2k2) +
     -  (-2*dens2*(glp2*(gqp2*(4*k2k2*p2k*(2*p1k - s - t) - 
     -            4*k2k*(k1k - p2k)*(k1k*s + p2k*t) - 
     -         4*k2k*(p1k*(k1k + p2k) + (k1k - p2k)*s)*u - 2*k2k*s*u2 + 
     -         k1k*u*(2*p1k*u + (s + t)*(2*k1k - 2*p2k + s + t + u))) + 
     -         gqm2*(4*k2k2*p1k*(2*p2k - s - u) + 
     -          k1k*t*(2*p2k*t + (s + u)*(2*k1k - 2*p1k + s + t + u)) - 
     -            2*k2k*(2*k1k2*s + t*(2*p1k*(p2k - s) + s*t) - 
     -             2*p1k2*u + 2*k1k*((p2k + s)*t + p1k*(-s + u))))) + 
     -      glm2*(gqm2*(4*k2k2*p2k*(2*p1k - s - t) - 
     -            4*k2k*(k1k - p2k)*(k1k*s + p2k*t) - 
     -         4*k2k*(p1k*(k1k + p2k) + (k1k - p2k)*s)*u - 2*k2k*s*u2 + 
     -         k1k*u*(2*p1k*u + (s + t)*(2*k1k - 2*p2k + s + t + u))) + 
     -         gqp2*(4*k2k2*p1k*(2*p2k - s - u) + 
     -         k1k*t*(2*p2k*t + (s + u)*(2*k1k - 2*p1k + s + t + u)) - 
     -            2*k2k*(2*k1k2*s + t*(2*p1k*(p2k - s) + s*t) - 
     -             2*p1k2*u + 2*k1k*((p2k + s)*t + p1k*(-s + u)))))))/
     -  (k1k*k2k2) +
     -         (2*densd*densg*qq*(glpd*
     -       (gqpd*(4*k2k2*p2k*(2*p1k - s - t) - 
     -            4*k2k*(k1k - p2k)*(k1k*s + p2k*t) - 
     -         4*k2k*(p1k*(k1k + p2k) + (k1k - p2k)*s)*u - 2*k2k*s*u2 + 
     -         k1k*u*(2*p1k*u + (s + t)*(2*k1k - 2*p2k + s + t + u))) + 
     -         gqmd*(4*k2k2*p1k*(2*p2k - s - u) + 
     -         k1k*t*(2*p2k*t + (s + u)*(2*k1k - 2*p1k + s + t + u)) - 
     -            2*k2k*(2*k1k2*s + t*(2*p1k*(p2k - s) + s*t) - 
     -               2*p1k2*u + 2*k1k*((p2k + s)*t + p1k*(-s + u))))) + 
     -      glmd*(gqmd*(4*k2k2*p2k*(2*p1k - s - t) - 
     -            4*k2k*(k1k - p2k)*(k1k*s + p2k*t) - 
     -         4*k2k*(p1k*(k1k + p2k) + (k1k - p2k)*s)*u - 2*k2k*s*u2 + 
     -         k1k*u*(2*p1k*u + (s + t)*(2*k1k - 2*p2k + s + t + u))) + 
     -         gqpd*(4*k2k2*p1k*(2*p2k - s - u) + 
     -          k1k*t*(2*p2k*t + (s + u)*(2*k1k - 2*p1k + s + t + u)) - 
     -            2*k2k*(2*k1k2*s + t*(2*p1k*(p2k - s) + s*t) - 
     -               2*p1k2*u + 2*k1k*((p2k + s)*t + p1k*(-s + u)))))))/
     -  (k1k*k2k2) +
     -         (2*dens*densg*qq*(glp*(gqp*
     -          (4*k2k2*p2k*(2*p1k - s - t) - 
     -            4*k2k*(k1k - p2k)*(k1k*s + p2k*t) - 
     -         4*k2k*(p1k*(k1k + p2k) + (k1k - p2k)*s)*u - 2*k2k*s*u2 + 
     -         k1k*u*(2*p1k*u + (s + t)*(2*k1k - 2*p2k + s + t + u))) + 
     -         gqm*(4*k2k2*p1k*(2*p2k - s - u) + 
     -          k1k*t*(2*p2k*t + (s + u)*(2*k1k - 2*p1k + s + t + u)) - 
     -            2*k2k*(2*k1k2*s + t*(2*p1k*(p2k - s) + s*t) - 
     -             2*p1k2*u + 2*k1k*((p2k + s)*t + p1k*(-s + u))))) + 
     -      glm*(gqm*(4*k2k2*p2k*(2*p1k - s - t) - 
     -            4*k2k*(k1k - p2k)*(k1k*s + p2k*t) - 
     -         4*k2k*(p1k*(k1k + p2k) + (k1k - p2k)*s)*u - 2*k2k*s*u2 + 
     -         k1k*u*(2*p1k*u + (s + t)*(2*k1k - 2*p2k + s + t + u))) + 
     -         gqp*(4*k2k2*p1k*(2*p2k - s - u) + 
     -          k1k*t*(2*p2k*t + (s + u)*(2*k1k - 2*p1k + s + t + u)) - 
     -            2*k2k*(2*k1k2*s + t*(2*p1k*(p2k - s) + s*t) - 
     -             2*p1k2*u + 2*k1k*((p2k + s)*t + p1k*(-s + u)))))))/
     -  (k1k*k2k2) +
     -       (-8*densg*denspg*qq**3*
     -    (2*k1k**3*(p1k - p2k)*s + 
     -      2*k1k2*(((p1k - p2k)*p2k - p1k*s)*t + 
     -         (p1k2 - p1k*(p2k + 2*t) + p2k*(s + 2*t))*u) - 
     -      k2k*(p2k*t - p1k*u)*
     -       (-(s*t) - (s + 2*t)*u + p2k*(s + 3*t + u) + 
     -         p1k*(-4*p2k + s + t + 3*u)) + 
     -      k1k*(p1k*(2*p1k*s - (-2*p2k + s)**2)*t + 
     -         (2*p1k2*(2*p2k + t) - 2*p1k*s*(2*p2k + t) + 
     -            p2k*(s2 + 2*s*t + 2*t2 - 2*p2k*(s + t)))*u - 
     -         2*p1k*t*u2 - k2k*(p1k - p2k)*
     -       (8*p1k*p2k - s2 - 4*p2k*t + s*t + (-4*p1k + s + 4*t)*u))))/
     -  (k1k*k2k*p1k*p2k) +
     -         (2*densd*denspg*qq2*(glpd*
     -       (gqpd*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -               (p1k2 - p1k*t + p2k*(s + t))*u) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) - 
     -               2*p1k2*p2k*u + p2k*(2*p2k - s - t)*(s + t)*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(2*p2k2*t + 2*p2k*(2*s + t)*u + t*u2))) + 
     -         gqmd*(-2*k1k**3*p2k*s + 
     -            2*k1k2*(p1k*s*(p2k - t) - p1k*(p2k + t)*u + 
     -               p2k*t*(-p2k + u)) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -            k1k*(p2k*t2*u + 2*p1k2*(s*t + (p2k + t)*u) - 
     -               p1k*t*(2*p2k2 + (s + u)**2 - 2*p2k*(2*s + u)) + 
     -               k2k*(2*p2k*t*(-2*p2k + s + u) + 
     -                  p1k*(8*p2k2 - 6*p2k*s + s2 - s*t - 4*p2k*u + 
     -                     s*u - 2*t*u))))) + 
     -      glmd*(gqmd*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -               (p1k2 - p1k*t + p2k*(s + t))*u) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) - 
     -               2*p1k2*p2k*u + p2k*(2*p2k - s - t)*(s + t)*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(2*p2k2*t + 2*p2k*(2*s + t)*u + t*u2))) + 
     -         gqpd*(-2*k1k**3*p2k*s + 
     -            2*k1k2*(p1k*s*(p2k - t) - p1k*(p2k + t)*u + 
     -               p2k*t*(-p2k + u)) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -            k1k*(p2k*t2*u + 2*p1k2*(s*t + (p2k + t)*u) - 
     -               p1k*t*(2*p2k2 + (s + u)**2 - 2*p2k*(2*s + u)) + 
     -               k2k*(2*p2k*t*(-2*p2k + s + u) + 
     -                  p1k*(8*p2k2 - 6*p2k*s + s2 - s*t - 4*p2k*u + 
     -                     s*u - 2*t*u)))))))/(k1k*k2k*p1k*p2k) +
     -         (2*dens*denspg*qq2*(glp*
     -       (gqp*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -               (p1k2 - p1k*t + p2k*(s + t))*u) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) - 
     -               2*p1k2*p2k*u + p2k*(2*p2k - s - t)*(s + t)*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(2*p2k2*t + 2*p2k*(2*s + t)*u + t*u2))) + 
     -         gqm*(-2*k1k**3*p2k*s + 
     -            2*k1k2*(p1k*s*(p2k - t) - p1k*(p2k + t)*u + 
     -               p2k*t*(-p2k + u)) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -            k1k*(p2k*t2*u + 2*p1k2*(s*t + (p2k + t)*u) - 
     -               p1k*t*(2*p2k2 + (s + u)**2 - 2*p2k*(2*s + u)) + 
     -               k2k*(2*p2k*t*(-2*p2k + s + u) + 
     -                  p1k*(8*p2k2 - 6*p2k*s + s2 - s*t - 4*p2k*u + 
     -                     s*u - 2*t*u))))) + 
     -      glm*(gqm*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -               (p1k2 - p1k*t + p2k*(s + t))*u) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) - 
     -               2*p1k2*p2k*u + p2k*(2*p2k - s - t)*(s + t)*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(2*p2k2*t + 2*p2k*(2*s + t)*u + t*u2))) + 
     -         gqp*(-2*k1k**3*p2k*s + 
     -            2*k1k2*(p1k*s*(p2k - t) - p1k*(p2k + t)*u + 
     -               p2k*t*(-p2k + u)) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -            k1k*(p2k*t2*u + 2*p1k2*(s*t + (p2k + t)*u) - 
     -               p1k*t*(2*p2k2 + (s + u)**2 - 2*p2k*(2*s + u)) + 
     -               k2k*(2*p2k*t*(-2*p2k + s + u) + 
     -                  p1k*(8*p2k2 - 6*p2k*s + s2 - s*t - 4*p2k*u + 
     -                     s*u - 2*t*u)))))))/(k1k*k2k*p1k*p2k) +
     -        (-8*denspg**2*qq**4*(t*(2*p2k2 + s2 + 2*p2k*(-s + t)) + 
     -      (2*p2k2 - 2*p2k*(s + t) + s*(s + 2*t))*u + 2*p1k2*(t + u) - 
     -      2*p1k*((t - u)*u + s*(t + u)) + 
     -      2*k1k*(2*p1k2 + 2*p2k2 - 2*p1k*(s + t) - 2*p2k*(s + u) + 
     -         s*(s + t + u))))/(p1k*p2k) +
     -         (-4*densp2*qq2*(glp2*
     -       (gqp2*((2*p1k - s - t)*(2*k1k*p1k - k1k*s - p2k*t) + 
     -            (2*p1k2 - 2*k1k*p2k + 2*p1k*p2k + 2*p2k2 + k1k*s - 
     -               3*p1k*s - 2*p2k*s + s2 - (p1k + p2k - s)*t)*u + 
     -            p1k*u2) + gqm2*
     -          (2*p1k2*t + p1k*
     -             (-2*s*t + 2*p2k*(t - u) + s*u - t*u + u2) + 
     -            t*(2*p2k2 + p2k*(-3*s + t - u) + s*(s + u)) + 
     -         k1k*(4*p2k2 - 2*p1k*t - 2*p2k*(2*s + u) + s*(s + t + u)))
     -     ) + glm2*(gqm2*((2*p1k - s - t)*(2*k1k*p1k - k1k*s - p2k*t) + 
     -            (2*p1k2 - 2*k1k*p2k + 2*p1k*p2k + 2*p2k2 + k1k*s - 
     -               3*p1k*s - 2*p2k*s + s2 - (p1k + p2k - s)*t)*u + 
     -            p1k*u2) + gqp2*
     -          (2*p1k2*t + p1k*
     -             (-2*s*t + 2*p2k*(t - u) + s*u - t*u + u2) + 
     -            t*(2*p2k2 + p2k*(-3*s + t - u) + s*(s + u)) + 
     -         k1k*(4*p2k2 - 2*p1k*t - 2*p2k*(2*s + u) + s*(s + t + u)))
     -         )))/(p1k*p2k)+
     -         (2*densg*denspd*qq2*(glmd*
     -       (-(gqpd*(2*k1k**3*p2k*s + 
     -              2*k1k2*(p1k*s*(t + p2k*(-1 + mz2dm1*t)) + 
     -               p2k*t*(p2k - u) + p1k*(p2k + t + mz2dm1*p2k*t)*u) + 
     -              k2k*(p2k*t - p1k*u)*
     -               (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -              k1k*(-(p2k*t2*u) - 
     -                 2*p1k2*
     -               (s*(t + mz2dm1*p2k*t) + (p2k + t + mz2dm1*p2k*t)*u)
     -                  + k2k*(2*p2k*t*(2*p2k - s - u) + 
     -                 p1k*(-8*p2k2 + 6*p2k*s - s2 + s*t + 4*p2k*u - 
     -                       s*u + 2*t*u)) + 
     -              p1k*t*((s + u)**2 - 2*p2k2*(-1 + mz2dm1*(s + u)) + 
     -                    p2k*(mz2dm1*s2 + 
     -                       s*(-4 + mz2dm1*t + 2*mz2dm1*u) + 
     -                       u*(-2 + mz2dm1*(t + u))))))) + 
     -         gqmd*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -          (p1k2 + p2k*(s + t) - p1k*(t + mz2dm1*p2k*(s + t)))*u)
     -              - k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) + 
     -               p2k*(2*p2k - s - t)*(s + t)*u - 
     -               2*p1k2*p2k*(1 + mz2dm1*(s + t))*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(t*u2 + 2*p2k2*(t - mz2dm1*(s + t)*u) + 
     -              p2k*u*(mz2dm1*s2 + s*(4 + 2*mz2dm1*t + mz2dm1*u) + 
     -                     t*(2 + mz2dm1*(t + u))))))) + 
     -      glpd*(-(gqmd*(2*k1k**3*p2k*s + 
     -              2*k1k2*(p1k*s*(t + p2k*(-1 + mz2dm1*t)) + 
     -              p2k*t*(p2k - u) + p1k*(p2k + t + mz2dm1*p2k*t)*u) + 
     -              k2k*(p2k*t - p1k*u)*
     -               (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -              k1k*(-(p2k*t2*u) - 
     -                 2*p1k2*
     -               (s*(t + mz2dm1*p2k*t) + (p2k + t + mz2dm1*p2k*t)*u)
     -                  + k2k*(2*p2k*t*(2*p2k - s - u) + 
     -                 p1k*(-8*p2k2 + 6*p2k*s - s2 + s*t + 4*p2k*u - 
     -                       s*u + 2*t*u)) + 
     -              p1k*t*((s + u)**2 - 2*p2k2*(-1 + mz2dm1*(s + u)) + 
     -                    p2k*(mz2dm1*s2 + 
     -                       s*(-4 + mz2dm1*t + 2*mz2dm1*u) + 
     -                       u*(-2 + mz2dm1*(t + u))))))) + 
     -         gqpd*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -            (p1k2 + p2k*(s + t) - p1k*(t + mz2dm1*p2k*(s + t)))*u)
     -              - k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) + 
     -               p2k*(2*p2k - s - t)*(s + t)*u - 
     -               2*p1k2*p2k*(1 + mz2dm1*(s + t))*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(t*u2 + 2*p2k2*(t - mz2dm1*(s + t)*u) + 
     -              p2k*u*(mz2dm1*s2 + s*(4 + 2*mz2dm1*t + mz2dm1*u) + 
     -                 t*(2 + mz2dm1*(t + u)))))))))/(k1k*k2k*p1k*p2k) +
     -     (-2*dens*denspd*qq*(glp2*
     -       (gqp2*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -               (p1k2 - p1k*t + p2k*(s + t))*u) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) - 
     -               2*p1k2*p2k*u + p2k*(2*p2k - s - t)*(s + t)*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(2*p2k2*t + 2*p2k*(2*s + t)*u + t*u2))) + 
     -         gqm2*(-2*k1k**3*p2k*s + 
     -            2*k1k2*(p1k*s*(p2k - t) - p1k*(p2k + t)*u + 
     -               p2k*t*(-p2k + u)) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -            k1k*(p2k*t2*u + 2*p1k2*(s*t + (p2k + t)*u) - 
     -               p1k*t*(2*p2k2 + (s + u)**2 - 2*p2k*(2*s + u)) + 
     -               k2k*(2*p2k*t*(-2*p2k + s + u) + 
     -                  p1k*(8*p2k2 - 6*p2k*s + s2 - s*t - 4*p2k*u + 
     -                     s*u - 2*t*u))))) + 
     -      glm2*(gqm2*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -               (p1k2 - p1k*t + p2k*(s + t))*u) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) - 
     -               2*p1k2*p2k*u + p2k*(2*p2k - s - t)*(s + t)*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(2*p2k2*t + 2*p2k*(2*s + t)*u + t*u2))) + 
     -         gqp2*(-2*k1k**3*p2k*s + 
     -            2*k1k2*(p1k*s*(p2k - t) - p1k*(p2k + t)*u + 
     -               p2k*t*(-p2k + u)) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -            k1k*(p2k*t2*u + 2*p1k2*(s*t + (p2k + t)*u) - 
     -               p1k*t*(2*p2k2 + (s + u)**2 - 2*p2k*(2*s + u)) + 
     -               k2k*(2*p2k*t*(-2*p2k + s + u) + 
     -                  p1k*(8*p2k2 - 6*p2k*s + s2 - s*t - 4*p2k*u + 
     -                     s*u - 2*t*u)))))))/(k1k*k2k*p1k*p2k)+
     -         (4*denspd*denspg*qq**3*
     -    (glpd*(gqpd*((2*p1k - s - t)*(2*k1k*p1k - k1k*s - p2k*t) + 
     -            (2*p1k2 - 2*k1k*p2k + 2*p1k*p2k + 2*p2k2 + k1k*s - 
     -               3*p1k*s - 2*p2k*s + s2 - (p1k + p2k - s)*t)*u + 
     -            p1k*u2) + gqmd*
     -          (2*p1k2*t + p1k*
     -             (-2*s*t + 2*p2k*(t - u) + s*u - t*u + u2) + 
     -            t*(2*p2k2 + p2k*(-3*s + t - u) + s*(s + u)) + 
     -         k1k*(4*p2k2 - 2*p1k*t - 2*p2k*(2*s + u) + s*(s + t + u)))
     -     ) + glmd*(gqmd*((2*p1k - s - t)*(2*k1k*p1k - k1k*s - p2k*t) + 
     -            (2*p1k2 - 2*k1k*p2k + 2*p1k*p2k + 2*p2k2 + k1k*s - 
     -               3*p1k*s - 2*p2k*s + s2 - (p1k + p2k - s)*t)*u + 
     -            p1k*u2) + gqpd*
     -          (2*p1k2*t + p1k*
     -             (-2*s*t + 2*p2k*(t - u) + s*u - t*u + u2) + 
     -            t*(2*p2k2 + p2k*(-3*s + t - u) + s*(s + u)) + 
     -         k1k*(4*p2k2 - 2*p1k*t - 2*p2k*(2*s + u) + s*(s + t + u)))
     -         )))/(p1k*p2k)+
     -        (2*densg*densp*qq2*(glp*
     -       (gqp*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -               (p1k2 - p1k*t + p2k*(s + t))*u) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) - 
     -               2*p1k2*p2k*u + p2k*(2*p2k - s - t)*(s + t)*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(2*p2k2*t + 2*p2k*(2*s + t)*u + t*u2))) + 
     -         gqm*(-2*k1k**3*p2k*s + 
     -            2*k1k2*(p1k*s*(p2k - t) - p1k*(p2k + t)*u + 
     -               p2k*t*(-p2k + u)) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -            k1k*(p2k*t2*u + 2*p1k2*(s*t + (p2k + t)*u) - 
     -               p1k*t*(2*p2k2 + (s + u)**2 - 2*p2k*(2*s + u)) + 
     -               k2k*(2*p2k*t*(-2*p2k + s + u) + 
     -                  p1k*(8*p2k2 - 6*p2k*s + s2 - s*t - 4*p2k*u + 
     -                     s*u - 2*t*u))))) + 
     -      glm*(gqm*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -               (p1k2 - p1k*t + p2k*(s + t))*u) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) - 
     -               2*p1k2*p2k*u + p2k*(2*p2k - s - t)*(s + t)*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(2*p2k2*t + 2*p2k*(2*s + t)*u + t*u2))) + 
     -         gqp*(-2*k1k**3*p2k*s + 
     -            2*k1k2*(p1k*s*(p2k - t) - p1k*(p2k + t)*u + 
     -               p2k*t*(-p2k + u)) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -            k1k*(p2k*t2*u + 2*p1k2*(s*t + (p2k + t)*u) - 
     -               p1k*t*(2*p2k2 + (s + u)**2 - 2*p2k*(2*s + u)) + 
     -               k2k*(2*p2k*t*(-2*p2k + s + u) + 
     -                  p1k*(8*p2k2 - 6*p2k*s + s2 - s*t - 4*p2k*u + 
     -                     s*u - 2*t*u)))))))/(k1k*k2k*p1k*p2k) +
     -         (-2*densd*densp*qq*(glp2*
     -       (gqp2*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -               (p1k2 - p1k*t + p2k*(s + t))*u) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) - 
     -               2*p1k2*p2k*u + p2k*(2*p2k - s - t)*(s + t)*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(2*p2k2*t + 2*p2k*(2*s + t)*u + t*u2))) + 
     -         gqm2*(-2*k1k**3*p2k*s + 
     -            2*k1k2*(p1k*s*(p2k - t) - p1k*(p2k + t)*u + 
     -               p2k*t*(-p2k + u)) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -            k1k*(p2k*t2*u + 2*p1k2*(s*t + (p2k + t)*u) - 
     -               p1k*t*(2*p2k2 + (s + u)**2 - 2*p2k*(2*s + u)) + 
     -               k2k*(2*p2k*t*(-2*p2k + s + u) + 
     -                  p1k*(8*p2k2 - 6*p2k*s + s2 - s*t - 4*p2k*u + 
     -                     s*u - 2*t*u))))) + 
     -      glm2*(gqm2*(2*k1k**3*p1k*s + 
     -            2*k1k2*(p1k*p2k*(-s + t) + 
     -               (p1k2 - p1k*t + p2k*(s + t))*u) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (-((s + t)*u) + 2*p1k*(-p2k + u) + p2k*(s + t + u)) - 
     -            k1k*(k2k*p2k*(4*p1k - s)*(2*p1k - s - t) - 
     -               2*p1k2*p2k*u + p2k*(2*p2k - s - t)*(s + t)*u - 
     -               k2k*(4*p1k2 - 2*p1k*(s + t) + p2k*(s + 2*t))*u + 
     -               p1k*(2*p2k2*t + 2*p2k*(2*s + t)*u + t*u2))) + 
     -         gqp2*(-2*k1k**3*p2k*s + 
     -            2*k1k2*(p1k*s*(p2k - t) - p1k*(p2k + t)*u + 
     -               p2k*t*(-p2k + u)) - 
     -            k2k*(p2k*t - p1k*u)*
     -             (t*(2*p2k - s - u) + p1k*(-2*p2k + s + t + u)) + 
     -            k1k*(p2k*t2*u + 2*p1k2*(s*t + (p2k + t)*u) - 
     -               p1k*t*(2*p2k2 + (s + u)**2 - 2*p2k*(2*s + u)) + 
     -               k2k*(2*p2k*t*(-2*p2k + s + u) + 
     -                  p1k*(8*p2k2 - 6*p2k*s + s2 - s*t - 4*p2k*u + 
     -                     s*u - 2*t*u)))))))/(k1k*k2k*p1k*p2k)+
     -         (4*densp*denspg*qq**3*(glp*
     -       (gqp*((2*p1k - s - t)*(2*k1k*p1k - k1k*s - p2k*t) + 
     -            (2*p1k2 - 2*k1k*p2k + 2*p1k*p2k + 2*p2k2 + k1k*s - 
     -               3*p1k*s - 2*p2k*s + s2 - (p1k + p2k - s)*t)*u + 
     -            p1k*u2) + gqm*
     -          (2*p1k2*t + p1k*
     -             (-2*s*t + 2*p2k*(t - u) + s*u - t*u + u2) + 
     -            t*(2*p2k2 + p2k*(-3*s + t - u) + s*(s + u)) + 
     -         k1k*(4*p2k2 - 2*p1k*t - 2*p2k*(2*s + u) + s*(s + t + u)))
     -       ) + glm*(gqm*((2*p1k - s - t)*(2*k1k*p1k - k1k*s - p2k*t) + 
     -            (2*p1k2 - 2*k1k*p2k + 2*p1k*p2k + 2*p2k2 + k1k*s - 
     -               3*p1k*s - 2*p2k*s + s2 - (p1k + p2k - s)*t)*u + 
     -            p1k*u2) + gqp*
     -          (2*p1k2*t + p1k*
     -             (-2*s*t + 2*p2k*(t - u) + s*u - t*u + u2) + 
     -            t*(2*p2k2 + p2k*(-3*s + t - u) + s*(s + u)) + 
     -         k1k*(4*p2k2 - 2*p1k*t - 2*p2k*(2*s + u) + s*(s + t + u)))
     -         )))/(p1k*p2k) +
     -         (2*ml4*(-(dens2*p1k*p2k*
     -         (2*(glmd*glp + glm*glpd)*(gqm2 + gqp2)*(k1k2 + k2k2)*s + 
     -           glp2*(gqp2*(2*k1k**3 + 
     -                 2*k2k2*(-2*p1k - 2*p2k + s + t + u) + 
     -                 2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                 k1k2*(2*p1k - 2*p2k + 5*(s + t + u))) + 
     -           gqm2*(2*k1k**3 + 2*k2k2*(-2*p1k - 2*p2k + s + t + u) + 
     -                 2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                 k1k2*(-2*p1k + 2*p2k + 5*(s + t + u)))) + 
     -           glm2*(gqm2*(2*k1k**3 + 
     -                 2*k2k2*(-2*p1k - 2*p2k + s + t + u) + 
     -                 2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                 k1k2*(2*p1k - 2*p2k + 5*(s + t + u))) + 
     -           gqp2*(2*k1k**3 + 2*k2k2*(-2*p1k - 2*p2k + s + t + u) + 
     -                 2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                 k1k2*(-2*p1k + 2*p2k + 5*(s + t + u)))))) + 
     -      qq*(densd*(densg*p1k*p2k*
     -             (glpd*(gqpd*
     -                   (2*k1k**3 + 
     -                     2*k2k2*(-2*p1k - 2*p2k + 2*s + t + u) + 
     -                     2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                     k1k2*(2*p1k - 2*p2k + 7*s + 5*(t + u))) + 
     -                  gqmd*(2*k1k**3 + 
     -                     2*k2k2*(-2*p1k - 2*p2k + 2*s + t + u) + 
     -                     2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                     k1k2*(-2*p1k + 2*p2k + 7*s + 5*(t + u)))) + 
     -               glmd*(gqmd*
     -                   (2*k1k**3 + 
     -                     2*k2k2*(-2*p1k - 2*p2k + 2*s + t + u) + 
     -                     2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                     k1k2*(2*p1k - 2*p2k + 7*s + 5*(t + u))) + 
     -                  gqpd*(2*k1k**3 + 
     -                     2*k2k2*(-2*p1k - 2*p2k + 2*s + t + u) + 
     -                     2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                     k1k2*(-2*p1k + 2*p2k + 7*s + 5*(t + u))))) + 
     -            denspg*k1k*k2k*qq*
     -             (glmd*(gqpd*
     -                   (2*k1k2*(-p1k + p2k) + 
     -                     k1k*
     -                      (3*p1k2 + 2*k2k*(-p1k + p2k) + 
     -                        p1k*(2*p2k - 3*s - t - 2*u) + 
     -                        p2k*(-p2k + s + 2*t + u)) + 
     -                     k2k*
     -                      (3*p1k2 + p2k*(-3*p2k + 2*(s + t) + u) - 
     -                        p1k*(2*s + t + 2*u))) + 
     -                  gqmd*(2*k1k2*(-p1k + p2k) + 
     -                     k1k*
     -                      (p1k2 + 2*k2k*(-p1k + p2k) + 
     -                        p2k*(-3*p2k + 3*s + 2*t + u) - 
     -                        p1k*(2*p2k + s + t + 2*u)) + 
     -                     k2k*
     -                      (3*p1k2 + p2k*(-3*p2k + 2*(s + t) + u) - 
     -                        p1k*(2*s + t + 2*u)))) + 
     -               glpd*(gqmd*
     -                   (2*k1k2*(-p1k + p2k) + 
     -                     k1k*
     -                      (3*p1k2 + 2*k2k*(-p1k + p2k) + 
     -                        p1k*(2*p2k - 3*s - t - 2*u) + 
     -                        p2k*(-p2k + s + 2*t + u)) + 
     -                     k2k*
     -                      (3*p1k2 + p2k*(-3*p2k + 2*(s + t) + u) - 
     -                        p1k*(2*s + t + 2*u))) + 
     -                  gqpd*(2*k1k2*(-p1k + p2k) + 
     -                     k1k*
     -                      (p1k2 + 2*k2k*(-p1k + p2k) + 
     -                        p2k*(-3*p2k + 3*s + 2*t + u) - 
     -                        p1k*(2*p2k + s + t + 2*u)) + 
     -                     k2k*
     -                      (3*p1k2 + p2k*(-3*p2k + 2*(s + t) + u) - 
     -                        p1k*(2*s + t + 2*u))))) + 
     -            densp*k1k*k2k*
     -             (-((glmd*glp + glm*glpd)*(gqm2 + gqp2)*(k1k + k2k)*
     -                  (p1k - p2k)*(p1k + p2k - s)) + 
     -               glp2*(gqp2*
     -                   (2*k1k2*(p1k - p2k) + 
     -                     k1k*
     -                      (2*k2k*(p1k - p2k) + 
     -                        p2k*(2*p2k - 2*(s + t) - u) + 
     -                        p1k*(2*p2k + t + 2*u)) + 
     -                     k2k*
     -                      (-2*p1k2 + 2*p2k2 - p2k*(s + 2*t + u) + 
     -                        p1k*(s + t + 2*u))) + 
     -                  gqm2*(2*k1k2*(p1k - p2k) + 
     -                     k2k*
     -                      (-2*p1k2 + 2*p2k2 - p2k*(s + 2*t + u) + 
     -                        p1k*(s + t + 2*u)) + 
     -                     k1k*
     -                   (-2*p1k2 + 2*k2k*(p1k - p2k) - p2k*(2*t + u) + 
     -                        p1k*(-2*p2k + 2*s + t + 2*u)))) + 
     -               glm2*(gqm2*
     -                   (2*k1k2*(p1k - p2k) + 
     -                     k1k*
     -                      (2*k2k*(p1k - p2k) + 
     -                        p2k*(2*p2k - 2*(s + t) - u) + 
     -                        p1k*(2*p2k + t + 2*u)) + 
     -                     k2k*
     -                      (-2*p1k2 + 2*p2k2 - p2k*(s + 2*t + u) + 
     -                        p1k*(s + t + 2*u))) + 
     -                  gqp2*(2*k1k2*(p1k - p2k) + 
     -                     k2k*
     -                      (-2*p1k2 + 2*p2k2 - p2k*(s + 2*t + u) + 
     -                        p1k*(s + t + 2*u)) + 
     -                     k1k*
     -                   (-2*p1k2 + 2*k2k*(p1k - p2k) - p2k*(2*t + u) + 
     -                        p1k*(-2*p2k + 2*s + t + 2*u)))))) + 
     -         dens*(densg*p1k*p2k*
     -             (glp*(gqp*(2*k1k**3 + 
     -                     2*k2k2*(-2*p1k - 2*p2k + 2*s + t + u) + 
     -                     2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                     k1k2*(2*p1k - 2*p2k + 7*s + 5*(t + u))) + 
     -                  gqm*(2*k1k**3 + 
     -                     2*k2k2*(-2*p1k - 2*p2k + 2*s + t + u) + 
     -                     2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                     k1k2*(-2*p1k + 2*p2k + 7*s + 5*(t + u)))) + 
     -               glm*(gqm*(2*k1k**3 + 
     -                     2*k2k2*(-2*p1k - 2*p2k + 2*s + t + u) + 
     -                     2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                     k1k2*(2*p1k - 2*p2k + 7*s + 5*(t + u))) + 
     -                  gqp*(2*k1k**3 + 
     -                     2*k2k2*(-2*p1k - 2*p2k + 2*s + t + u) + 
     -                     2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -                     k1k2*(-2*p1k + 2*p2k + 7*s + 5*(t + u))))) + 
     -            denspg*k1k*k2k*qq*
     -             (glm*(gqp*(2*k1k2*(-p1k + p2k) + 
     -                     k1k*
     -                      (3*p1k2 + 2*k2k*(-p1k + p2k) + 
     -                        p1k*(2*p2k - 3*s - t - 2*u) + 
     -                        p2k*(-p2k + s + 2*t + u)) + 
     -                     k2k*
     -                      (3*p1k2 + p2k*(-3*p2k + 2*(s + t) + u) - 
     -                        p1k*(2*s + t + 2*u))) + 
     -                  gqm*(2*k1k2*(-p1k + p2k) + 
     -                     k1k*
     -                      (p1k2 + 2*k2k*(-p1k + p2k) + 
     -                        p2k*(-3*p2k + 3*s + 2*t + u) - 
     -                        p1k*(2*p2k + s + t + 2*u)) + 
     -                     k2k*
     -                      (3*p1k2 + p2k*(-3*p2k + 2*(s + t) + u) - 
     -                        p1k*(2*s + t + 2*u)))) + 
     -               glp*(gqm*(2*k1k2*(-p1k + p2k) + 
     -                     k1k*
     -                      (3*p1k2 + 2*k2k*(-p1k + p2k) + 
     -                        p1k*(2*p2k - 3*s - t - 2*u) + 
     -                        p2k*(-p2k + s + 2*t + u)) + 
     -                     k2k*
     -                      (3*p1k2 + p2k*(-3*p2k + 2*(s + t) + u) - 
     -                        p1k*(2*s + t + 2*u))) + 
     -                  gqp*(2*k1k2*(-p1k + p2k) + 
     -                     k1k*
     -                      (p1k2 + 2*k2k*(-p1k + p2k) + 
     -                        p2k*(-3*p2k + 3*s + 2*t + u) - 
     -                        p1k*(2*p2k + s + t + 2*u)) + 
     -                     k2k*
     -                      (3*p1k2 + p2k*(-3*p2k + 2*(s + t) + u) - 
     -                        p1k*(2*s + t + 2*u))))) + 
     -            denspd*k1k*k2k*
     -             (-((glmd*glp + glm*glpd)*(gqm2 + gqp2)*(k1k + k2k)*
     -                  (p1k - p2k)*(p1k + p2k - s)) + 
     -               glp2*(gqp2*
     -                   (2*k1k2*(p1k - p2k) + 
     -                     k1k*
     -                      (2*k2k*(p1k - p2k) + 
     -                        p2k*(2*p2k - 2*(s + t) - u) + 
     -                        p1k*(2*p2k + t + 2*u)) + 
     -                     k2k*
     -                      (-2*p1k2 + 2*p2k2 - p2k*(s + 2*t + u) + 
     -                        p1k*(s + t + 2*u))) + 
     -                  gqm2*(2*k1k2*(p1k - p2k) + 
     -                     k2k*
     -                      (-2*p1k2 + 2*p2k2 - p2k*(s + 2*t + u) + 
     -                        p1k*(s + t + 2*u)) + 
     -                     k1k*
     -                   (-2*p1k2 + 2*k2k*(p1k - p2k) - p2k*(2*t + u) + 
     -                        p1k*(-2*p2k + 2*s + t + 2*u)))) + 
     -               glm2*(gqm2*
     -                   (2*k1k2*(p1k - p2k) + 
     -                     k1k*
     -                      (2*k2k*(p1k - p2k) + 
     -                        p2k*(2*p2k - 2*(s + t) - u) + 
     -                        p1k*(2*p2k + t + 2*u)) + 
     -                     k2k*
     -                      (-2*p1k2 + 2*p2k2 - p2k*(s + 2*t + u) + 
     -                        p1k*(s + t + 2*u))) + 
     -                  gqp2*(2*k1k2*(p1k - p2k) + 
     -                     k2k*
     -                      (-2*p1k2 + 2*p2k2 - p2k*(s + 2*t + u) + 
     -                        p1k*(s + t + 2*u)) + 
     -                     k1k*
     -                   (-2*p1k2 + 2*k2k*(p1k - p2k) - p2k*(2*t + u) + 
     -                        p1k*(-2*p2k + 2*s + t + 2*u)))))) - 
     -         qq*(-2*k1k2*k2k2*
     -             (-(densp2*(glm2 + glp2)*(gqm2 + gqp2)) + 
     -               denspg*qq*
     -                (densp*(glm + glp)*(gqm + gqp) + 
     -              denspd*(glmd + glpd)*(gqmd + gqpd) - 4*denspg*qq))*s
     -             + 4*densg**2*p1k*p2k*
     -             (2*k1k**3 + 2*k2k2*(-2*p1k - 2*p2k + 2*s + t + u) +
     -               2*k1k*k2k*(-2*p1k - 2*p2k + s + 2*(t + u)) + 
     -               k1k2*(7*s + 5*(t + u))) + 
     -            densg*k1k*k2k*
     -             (8*denspg*qq*
     -                (2*k1k2*(-p1k + p2k) + 
     -                  k2k*(3*p1k2 + p2k*(-3*p2k + 2*(s + t) + u) - 
     -                     p1k*(2*s + t + 2*u)) + 
     -                  k1k*(2*p1k2 + 2*k2k*(-p1k + p2k) + 
     -                p2k*(-2*p2k + 2*(s + t) + u) - p1k*(2*s + t + 2*u)
     -                     )) + 
     -               densp*(glp*
     -                   (gqp*(2*k1k2*(p1k - p2k) + 
     -                        k1k*
     -                         (-p1k2 + 2*k2k*(p1k - p2k) + 
     -                          p2k*(3*p2k - 3*s - 2*t - u) + 
     -                          p1k*(2*p2k + s + t + 2*u)) + 
     -                        k2k*
     -                         (-3*p1k2 + p2k*(3*p2k - 2*(s + t) - u) + 
     -                          p1k*(2*s + t + 2*u))) + 
     -                     gqm*
     -                      (2*k1k2*(p1k - p2k) + 
     -                        k2k*
     -                         (-3*p1k2 + p2k*(3*p2k - 2*(s + t) - u) + 
     -                          p1k*(2*s + t + 2*u)) + 
     -                        k1k*
     -                         (-3*p1k2 + 2*k2k*(p1k - p2k) + 
     -                          p2k*(p2k - s - 2*t - u) + 
     -                          p1k*(-2*p2k + 3*s + t + 2*u)))) + 
     -                  glm*(gqm*
     -                      (2*k1k2*(p1k - p2k) + 
     -                        k1k*
     -                         (-p1k2 + 2*k2k*(p1k - p2k) + 
     -                          p2k*(3*p2k - 3*s - 2*t - u) + 
     -                          p1k*(2*p2k + s + t + 2*u)) + 
     -                        k2k*
     -                         (-3*p1k2 + p2k*(3*p2k - 2*(s + t) - u) + 
     -                          p1k*(2*s + t + 2*u))) + 
     -                     gqp*
     -                      (2*k1k2*(p1k - p2k) + 
     -                        k2k*
     -                         (-3*p1k2 + p2k*(3*p2k - 2*(s + t) - u) + 
     -                          p1k*(2*s + t + 2*u)) + 
     -                        k1k*
     -                         (-3*p1k2 + 2*k2k*(p1k - p2k) + 
     -                          p2k*(p2k - s - 2*t - u) + 
     -                          p1k*(-2*p2k + 3*s + t + 2*u))))) + 
     -               denspd*(glmd*
     -                   (gqpd*
     -                      (2*k1k2*(p1k - p2k + mz2dm1*p1k*p2k) + 
     -                        k2k*
     -                         (-3*p1k2 + p2k*(3*p2k - 2*(s + t) - u) + 
     -                          p1k*(2*s + t + 2*u)) + 
     -                        k1k*
     -                         (2*k2k*(p1k - p2k) - 
     -                          p1k2*(3 + 2*mz2dm1*p2k) + 
     -                          p2k*(p2k - s - 2*t - u) + 
     -                          p1k*
     -                          (3*s + t + 2*u + 
     -                     p2k*(-2 + mz2dm1*(-2*p2k + 5*s + 3*(t + u))))
     -                          )) + 
     -                     gqmd*
     -                      (2*k1k2*(p1k - p2k + mz2dm1*p1k*p2k) + 
     -                        k2k*
     -                         (-3*p1k2 + p2k*(3*p2k - 2*(s + t) - u) + 
     -                          p1k*(2*s + t + 2*u)) + 
     -                        k1k*
     -                         (2*k2k*(p1k - p2k) - 
     -                          p1k2*(1 + 2*mz2dm1*p2k) + 
     -                          p2k*(3*p2k - 3*s - 2*t - u) + 
     -                          p1k*
     -                          (s + t + 2*u + 
     -                    p2k*(2 + mz2dm1*(-2*p2k + 5*s + 3*(t + u)))))
     -                        )) + 
     -                  glpd*(gqmd*
     -                      (2*k1k2*(p1k - p2k + mz2dm1*p1k*p2k) + 
     -                        k2k*
     -                         (-3*p1k2 + p2k*(3*p2k - 2*(s + t) - u) + 
     -                          p1k*(2*s + t + 2*u)) + 
     -                        k1k*
     -                         (2*k2k*(p1k - p2k) - 
     -                          p1k2*(3 + 2*mz2dm1*p2k) + 
     -                          p2k*(p2k - s - 2*t - u) + 
     -                          p1k*
     -                          (3*s + t + 2*u + 
     -                     p2k*(-2 + mz2dm1*(-2*p2k + 5*s + 3*(t + u))))
     -                          )) + 
     -                     gqpd*
     -                      (2*k1k2*(p1k - p2k + mz2dm1*p1k*p2k) + 
     -                        k2k*
     -                         (-3*p1k2 + p2k*(3*p2k - 2*(s + t) - u) + 
     -                          p1k*(2*s + t + 2*u)) + 
     -                        k1k*
     -                         (2*k2k*(p1k - p2k) - 
     -                          p1k2*(1 + 2*mz2dm1*p2k) + 
     -                          p2k*(3*p2k - 3*s - 2*t - u) + 
     -                          p1k*
     -                          (s + t + 2*u + 
     -                     p2k*(2 + mz2dm1*(-2*p2k + 5*s + 3*(t + u)))))
     -                        ))))))))/(k1k2*k2k2*p1k*p2k) +
     -     (8*densg**2*ml2*qq2*(2*k1k**3*(2*s + t + u) - 
     -      2*k1k*k2k*(-p1k2 + 2*p1k*p2k - p2k2 - p1k*s - p2k*s + 
     -      k2k*(p1k + p2k + s) + 2*p2k*t + s*t + (2*p1k + s - 2*t)*u) + 
     -      k2k2*(8*p1k*p2k - 2*p1k*s - 2*p2k*s - 4*p2k*t + s*t + 
     -         (-4*p1k + s + 2*t)*u) + 
     -      k1k2*(-3*p1k*s - 3*p2k*s + s2 - 4*k2k*(p1k + p2k + 2*s) - 
     -       p1k*t + p2k*t + 4*s*t + t2 + (p1k - p2k + 4*s + 6*t)*u + 
     -         u2)))/(k1k2*k2k2) +
     -       (2*dens2*ml2*(-2*(glmd*glp + glm*glpd)*(gqm2 + gqp2)*k1k*
     -       (k2k2*s + k1k*(-k1k + p1k + p2k)*s + 
     -         k2k*(p1k*(4*p2k - s) + s*(2*k1k - p2k + t + u))) + 
     -      glm2*(gqp2*(2*k2k2*(2*p1k - t)*(2*p2k - s - u) + 
     -            2*k1k**3*(s + t + u) + 
     -            4*k1k*k2k*(-(k2k*p1k) + p1k2 + p1k*(p2k - u) + 
     -               t*(-p2k + u)) + 
     -            k1k2*(s2 - 4*k2k*(p1k + p2k + s) + 4*p2k*t + 6*s*t + 
     -               t2 + 2*s*u + 6*t*u + u2 - 2*p1k*(s + t + u))) + 
     -         gqm2*(2*k2k2*(2*p1k - s - t)*(2*p2k - u) + 
     -            2*k1k**3*(s + t + u) + 
     -            4*k1k*k2k*(-(k2k*p2k) + p2k*(p1k + p2k - t) + 
     -               (-p1k + t)*u) + 
     -            k1k2*(-4*k2k*(p1k + p2k + s) + (s + t)**2 + 4*p1k*u + 
     -               6*(s + t)*u + u2 - 2*p2k*(s + t + u)))) + 
     -      glp2*(gqm2*(2*k2k2*(2*p1k - t)*(2*p2k - s - u) + 
     -            2*k1k**3*(s + t + u) + 
     -            4*k1k*k2k*(-(k2k*p1k) + p1k2 + p1k*(p2k - u) + 
     -               t*(-p2k + u)) + 
     -            k1k2*(s2 - 4*k2k*(p1k + p2k + s) + 4*p2k*t + 6*s*t + 
     -               t2 + 2*s*u + 6*t*u + u2 - 2*p1k*(s + t + u))) + 
     -         gqp2*(2*k2k2*(2*p1k - s - t)*(2*p2k - u) + 
     -            2*k1k**3*(s + t + u) + 
     -            4*k1k*k2k*(-(k2k*p2k) + p2k*(p1k + p2k - t) + 
     -               (-p1k + t)*u) + 
     -          k1k2*(-4*k2k*(p1k + p2k + s) + (s + t)**2 + 4*p1k*u + 
     -               6*(s + t)*u + u2 - 2*p2k*(s + t + u))))))/
     -  (k1k2*k2k2) +
     -         (-2*densd*densg*ml2*qq*
     -    (glmd*(gqpd*(2*k2k2*(2*p1k - t)*(2*p2k - s - u) + 
     -            2*k1k**3*(2*s + t + u) - 
     -            2*k1k*k2k*(-2*p1k2 + 2*p1k*p2k - p1k*s - p2k*s + 
     -            k2k*(2*p1k + s) + 2*p2k*t + s*t + (2*p1k + s - 2*t)*u)
     -             + k1k2*(-2*p2k*s + s2 - 4*k2k*(p1k + p2k + 2*s) +
     -               4*p2k*t + 6*s*t + t2 + 2*s*u + 6*t*u + u2 - 
     -               2*p1k*(2*s + t + u))) + 
     -         gqmd*(2*k2k2*(2*p1k - s - t)*(2*p2k - u) + 
     -            2*k1k**3*(2*s + t + u) + 
     -            k1k2*(-2*p1k*s - 4*p2k*s + s2 - 
     -               4*k2k*(p1k + p2k + 2*s) - 2*p2k*t + 2*s*t + t2 + 
     -               4*p1k*u - 2*p2k*u + 6*s*u + 6*t*u + u2) - 
     -            2*k1k*k2k*(k2k*(2*p2k + s) - (2*p2k + s)*(p2k - t) + 
     -               (s - 2*t)*u + p1k*(2*p2k - s + 2*u)))) + 
     -      glpd*(gqmd*(2*k2k2*(2*p1k - t)*(2*p2k - s - u) + 
     -            2*k1k**3*(2*s + t + u) - 
     -            2*k1k*k2k*(-2*p1k2 + 2*p1k*p2k - p1k*s - p2k*s + 
     -            k2k*(2*p1k + s) + 2*p2k*t + s*t + (2*p1k + s - 2*t)*u)
     -             + k1k2*(-2*p2k*s + s2 - 4*k2k*(p1k + p2k + 2*s) + 
     -               4*p2k*t + 6*s*t + t2 + 2*s*u + 6*t*u + u2 - 
     -               2*p1k*(2*s + t + u))) + 
     -         gqpd*(2*k2k2*(2*p1k - s - t)*(2*p2k - u) + 
     -            2*k1k**3*(2*s + t + u) + 
     -            k1k2*(-2*p1k*s - 4*p2k*s + s2 - 
     -               4*k2k*(p1k + p2k + 2*s) - 2*p2k*t + 2*s*t + t2 + 
     -               4*p1k*u - 2*p2k*u + 6*s*u + 6*t*u + u2) - 
     -            2*k1k*k2k*(k2k*(2*p2k + s) - (2*p2k + s)*(p2k - t) + 
     -             (s - 2*t)*u + p1k*(2*p2k - s + 2*u))))))/(k1k2*k2k2)+
     -        (-2*dens*densg*ml2*qq*(glm*
     -       (gqp*(2*k2k2*(2*p1k - t)*(2*p2k - s - u) + 
     -            2*k1k**3*(2*s + t + u) - 
     -            2*k1k*k2k*(-2*p1k2 + 2*p1k*p2k - p1k*s - p2k*s + 
     -            k2k*(2*p1k + s) + 2*p2k*t + s*t + (2*p1k + s - 2*t)*u)
     -             + k1k2*(-2*p2k*s + s2 - 4*k2k*(p1k + p2k + 2*s) +
     -               4*p2k*t + 6*s*t + t2 + 2*s*u + 6*t*u + u2 - 
     -               2*p1k*(2*s + t + u))) + 
     -         gqm*(2*k2k2*(2*p1k - s - t)*(2*p2k - u) + 
     -            2*k1k**3*(2*s + t + u) + 
     -            k1k2*(-2*p1k*s - 4*p2k*s + s2 - 
     -               4*k2k*(p1k + p2k + 2*s) - 2*p2k*t + 2*s*t + t2 + 
     -               4*p1k*u - 2*p2k*u + 6*s*u + 6*t*u + u2) - 
     -            2*k1k*k2k*(k2k*(2*p2k + s) - (2*p2k + s)*(p2k - t) + 
     -               (s - 2*t)*u + p1k*(2*p2k - s + 2*u)))) + 
     -      glp*(gqm*(2*k2k2*(2*p1k - t)*(2*p2k - s - u) + 
     -            2*k1k**3*(2*s + t + u) - 
     -            2*k1k*k2k*(-2*p1k2 + 2*p1k*p2k - p1k*s - p2k*s + 
     -            k2k*(2*p1k + s) + 2*p2k*t + s*t + (2*p1k + s - 2*t)*u)
     -             + k1k2*(-2*p2k*s + s2 - 4*k2k*(p1k + p2k + 2*s) +
     -               4*p2k*t + 6*s*t + t2 + 2*s*u + 6*t*u + u2 - 
     -               2*p1k*(2*s + t + u))) + 
     -         gqp*(2*k2k2*(2*p1k - s - t)*(2*p2k - u) + 
     -            2*k1k**3*(2*s + t + u) + 
     -            k1k2*(-2*p1k*s - 4*p2k*s + s2 - 
     -               4*k2k*(p1k + p2k + 2*s) - 2*p2k*t + 2*s*t + t2 + 
     -               4*p1k*u - 2*p2k*u + 6*s*u + 6*t*u + u2) - 
     -            2*k1k*k2k*(k2k*(2*p2k + s) - (2*p2k + s)*(p2k - t) + 
     -            (s - 2*t)*u + p1k*(2*p2k - s + 2*u))))))/(k1k2*k2k2)+
     -         (8*densg*denspg*ml2*qq**3*
     -    (2*k1k2*(p1k - p2k)*(p1k + p2k - 2*(s + t + u)) + 
     -      k2k*(p1k2*(-12*p2k + s + t + 9*u) + 
     -         p2k*(s*(5*t + u) - p2k*(s + 9*t + u) + 2*t*(t + 2*u)) + 
     -         p1k*(12*p2k2 - 2*u*(2*t + u) - s*(t + 5*u))) + 
     -      k1k*(4*k2k*(p1k - p2k)*(p1k + p2k - s - t - u) + 
     -         2*p1k2*(2*p2k + 3*s + t + 2*u) + 
     -         p2k*(3*s2 + 2*s*(2*t + u) - 2*p2k*(3*s + 2*t + u) + 
     -            2*t*(t + 2*u)) - 
     -         p1k*(3*s2 + 2*
     -         (2*p2k2 + s*t + 2*(s + t)*u + u2 + p2k*(-t + u))))))/
     -  (k1k*k2k*p1k*p2k) + 
     -        (2*densd*denspg*ml2*qq2*
     -    (-(glpd*(gqpd*(2*k1k2 + 5*k2k*s + k1k*(4*k2k - t - 3*u)) + 
     -           gqmd*(-2*k1k2 - 5*k2k*s + k1k*(-4*k2k + 3*t + u)))) - 
     -      glmd*(gqmd*(2*k1k2 + 5*k2k*s + k1k*(4*k2k - t - 3*u)) + 
     -         gqpd*(-2*k1k2 - 5*k2k*s + k1k*(-4*k2k + 3*t + u))) + 
     -      (p2k*(glmd*(2*gqpd*k1k*(k1k + 2*k2k + s) + 
     -              gqpd*(k1k + 5*k2k)*t + 
     -              gqmd*(k2k*(s + 4*t + u) + k1k*(4*s + 3*t + 2*u))) + 
     -       glpd*(2*gqmd*k1k*(k1k + 2*k2k + s) + gqmd*(k1k + 5*k2k)*t + 
     -           gqpd*(k2k*(s + 4*t + u) + k1k*(4*s + 3*t + 2*u)))))/p1k
     -       - (glpd*(2*gqpd*(k1k2*p1k + k2k*p2k*(-5*p1k + p2k) + 
     -               k1k*(2*k2k*p1k - p2k*(p1k + 3*p2k) + p1k*s)) + 
     -            gqpd*(k1k + 5*k2k)*p1k*u + 
     -            gqmd*(k1k*(2*p2k2 + p1k*(6*p2k + 4*s + 2*t + 3*u)) + 
     -               k2k*(10*p2k2 + p1k*(-2*p2k + s + t + 4*u)))) + 
     -         glmd*(2*gqmd*(k1k2*p1k + k2k*p2k*(-5*p1k + p2k) + 
     -               k1k*(2*k2k*p1k - p2k*(p1k + 3*p2k) + p1k*s)) + 
     -            gqmd*(k1k + 5*k2k)*p1k*u + 
     -            gqpd*(k1k*(2*p2k2 + p1k*(6*p2k + 4*s + 2*t + 3*u)) + 
     -            k2k*(10*p2k2 + p1k*(-2*p2k + s + t + 4*u)))))/p2k + 
     -      (glpd*(gqpd*(k1k*s*(k1k + 3*k2k + s) + 2*k1k*(k1k + k2k)*t + 
     -               (2*k1k2 + 2*k1k*k2k + k1k*s + 3*k2k*s + 
     -                  2*(k1k + k2k)*t)*u + (k1k + k2k)*u2) + 
     -            gqmd*(k2k*(s*t + 2*(s + t)*u + u2) + 
     -               k1k2*(3*s + 2*(t + u)) + 
     -           k1k*((s + u)*(2*(s + t) + u) + k2k*(s + 2*(t + u))))) + 
     -      glmd*(gqmd*(k1k*s*(k1k + 3*k2k + s) + 2*k1k*(k1k + k2k)*t + 
     -               (2*k1k2 + 2*k1k*k2k + k1k*s + 3*k2k*s + 
     -                  2*(k1k + k2k)*t)*u + (k1k + k2k)*u2) + 
     -            gqpd*(k2k*(s*t + 2*(s + t)*u + u2) + 
     -               k1k2*(3*s + 2*(t + u)) + 
     -           k1k*((s + u)*(2*(s + t) + u) + k2k*(s + 2*(t + u))))))/
     -       p2k - (glmd*(gqpd*
     -             (k2k*t*(3*s + t + 2*u) + 
     -               k1k*(3*k2k*s + s2 + 2*k2k*t + s*t + t2 + 
     -                  2*(k2k + t)*u) + k1k2*(s + 2*(t + u))) + 
     -            gqmd*(k1k2*(3*s + 2*(t + u)) + 
     -               k2k*(s*(2*t + u) + t*(t + 2*u)) + 
     -          k1k*((s + t)*(2*s + t + 2*u) + k2k*(s + 2*(t + u))))) + 
     -         glpd*(gqmd*(k2k*t*(3*s + t + 2*u) + 
     -               k1k*(3*k2k*s + s2 + 2*k2k*t + s*t + t2 + 
     -                  2*(k2k + t)*u) + k1k2*(s + 2*(t + u))) + 
     -            gqpd*(k1k2*(3*s + 2*(t + u)) + 
     -               k2k*(s*(2*t + u) + t*(t + 2*u)) + 
     -          k1k*((s + t)*(2*s + t + 2*u) + k2k*(s + 2*(t + u))))))/
     -       p1k))/(k1k*k2k) +
     -        (2*dens*denspg*ml2*qq2*
     -   ((p2k*(glm*(2*gqp*k1k*(k1k + 2*k2k + s) + gqp*(k1k + 5*k2k)*t + 
     -              gqm*(k2k*(s + 4*t + u) + k1k*(4*s + 3*t + 2*u))) + 
     -          glp*(2*gqm*k1k*(k1k + 2*k2k + s) + gqm*(k1k + 5*k2k)*t + 
     -          gqp*(k2k*(s + 4*t + u) + k1k*(4*s + 3*t + 2*u)))))/p1k - 
     -      (glp*(gqp*(2*k1k2*(p1k + p2k) + 
     -               k2k*(p2k*(2*p2k + 5*s) + 5*p1k*(-2*p2k + u)) + 
     -               k1k*(4*k2k*(p1k + p2k) + p1k*(-2*p2k + 2*s + u) - 
     -                  p2k*(6*p2k + t + 3*u))) + 
     -            gqm*(-2*k1k2*p2k + 
     -               k1k*(-4*k2k*p2k + p2k*(2*p2k + 3*t + u) + 
     -                  p1k*(6*p2k + 4*s + 2*t + 3*u)) + 
     -            k2k*(5*p2k*(2*p2k - s) + p1k*(-2*p2k + s + t + 4*u))))
     -          + glm*(gqm*(2*k1k2*(p1k + p2k) + 
     -               k2k*(p2k*(2*p2k + 5*s) + 5*p1k*(-2*p2k + u)) + 
     -               k1k*(4*k2k*(p1k + p2k) + p1k*(-2*p2k + 2*s + u) - 
     -                  p2k*(6*p2k + t + 3*u))) + 
     -            gqp*(-2*k1k2*p2k + 
     -               k1k*(-4*k2k*p2k + p2k*(2*p2k + 3*t + u) + 
     -                  p1k*(6*p2k + 4*s + 2*t + 3*u)) + 
     -          k2k*(5*p2k*(2*p2k - s) + p1k*(-2*p2k + s + t + 4*u)))))/
     -       p2k + (glp*(gqp*(k1k*s*(k1k + 3*k2k + s) + 
     -               2*k1k*(k1k + k2k)*t + 
     -               (2*k1k2 + 2*k1k*k2k + k1k*s + 3*k2k*s + 
     -                  2*(k1k + k2k)*t)*u + (k1k + k2k)*u2) + 
     -            gqm*(k2k*(s*t + 2*(s + t)*u + u2) + 
     -               k1k2*(3*s + 2*(t + u)) + 
     -           k1k*((s + u)*(2*(s + t) + u) + k2k*(s + 2*(t + u))))) + 
     -         glm*(gqm*(k1k*s*(k1k + 3*k2k + s) + 2*k1k*(k1k + k2k)*t + 
     -               (2*k1k2 + 2*k1k*k2k + k1k*s + 3*k2k*s + 
     -                  2*(k1k + k2k)*t)*u + (k1k + k2k)*u2) + 
     -            gqp*(k2k*(s*t + 2*(s + t)*u + u2) + 
     -               k1k2*(3*s + 2*(t + u)) + 
     -           k1k*((s + u)*(2*(s + t) + u) + k2k*(s + 2*(t + u))))))/
     -       p2k - (glm*(gqp*(k2k*t*(3*s + t + 2*u) + 
     -               k1k*(3*k2k*s + s2 + 2*k2k*t + s*t + t2 + 
     -                  2*(k2k + t)*u) + k1k2*(s + 2*(t + u))) + 
     -            gqm*(k1k2*(3*s + 2*(t + u)) + 
     -               k2k*(s*(2*t + u) + t*(t + 2*u)) + 
     -           k1k*((s + t)*(2*s + t + 2*u) + k2k*(s + 2*(t + u))))) + 
     -         glp*(gqm*(k2k*t*(3*s + t + 2*u) + 
     -               k1k*(3*k2k*s + s2 + 2*k2k*t + s*t + t2 + 
     -                  2*(k2k + t)*u) + k1k2*(s + 2*(t + u))) + 
     -            gqp*(k1k2*(3*s + 2*(t + u)) + 
     -               k2k*(s*(2*t + u) + t*(t + 2*u)) + 
     -           k1k*((s + t)*(2*s + t + 2*u) + k2k*(s + 2*(t + u))))))/
     -       p1k))/(k1k*k2k)+
     -        (16*denspg**2*ml2*qq**4*
     -    (4*p1k2 + 4*p2k2 - 2*k1k*(p1k + p2k - s) - 4*p1k*s - 4*p2k*s + 
     -      2*s2 - p1k*t + p2k*t + s*t + (p1k - p2k + s)*u))/(p1k*p2k)+
     -         (4*densp2*ml2*qq2*((glmd*glp + glm*glpd)*(gqm2 + gqp2)*
     -       (2*(p1k2 + p2k2) - 2*(p1k + p2k)*s + s2) + 
     -      glm2*(gqp2*(2*p1k2 + 2*p2k2 - 2*k1k*(p1k + p2k - s) - 
     -            p1k*s - 3*p2k*s + s2 - p1k*t + p2k*t + s*t + 
     -            (p1k - p2k + s)*u) + 
     -         gqm2*(2*p1k2 + 2*p2k2 - 2*k1k*(p1k + p2k - s) - 3*p1k*s - 
     -          p2k*s + s2 - p1k*t + p2k*t + s*t + (p1k - p2k + s)*u)) + 
     -      glp2*(gqm2*(2*p1k2 + 2*p2k2 - 2*k1k*(p1k + p2k - s) - 
     -            p1k*s - 3*p2k*s + s2 - p1k*t + p2k*t + s*t + 
     -            (p1k - p2k + s)*u) + 
     -         gqp2*(2*p1k2 + 2*p2k2 - 2*k1k*(p1k + p2k - s) - 3*p1k*s - 
     -         p2k*s + s2 - p1k*t + p2k*t + s*t + (p1k - p2k + s)*u))))/
     -  (p1k*p2k)+
     -         (2*densg*denspd*ml2*qq2*
     -((p2k*(glmd*(2*gqpd*k1k*(k1k + 2*k2k + s) + gqpd*(k1k + 5*k2k)*t + 
     -              gqmd*(k2k*(s + 4*t + u) + k1k*(4*s + 3*t + 2*u))) + 
     -       glpd*(2*gqmd*k1k*(k1k + 2*k2k + s) + gqmd*(k1k + 5*k2k)*t + 
     -           gqpd*(k2k*(s + 4*t + u) + k1k*(4*s + 3*t + 2*u)))))/p1k
     -       - (p1k*(glpd*(2*gqpd*k1k*(k1k + 2*k2k + s) + 
     -              gqpd*(k1k + 5*k2k)*u + 
     -              gqmd*(k1k*(4*s + 2*t + 3*u) + k2k*(s + t + 4*u))) + 
     -       glmd*(2*gqmd*k1k*(k1k + 2*k2k + s) + gqmd*(k1k + 5*k2k)*u + 
     -           gqpd*(k1k*(4*s + 2*t + 3*u) + k2k*(s + t + 4*u)))))/p2k
     -       + glmd*(gqpd*(k2k*s + 2*k1k2*(1 + mz2dm1*(2*s + t + u)) + 
     -            k1k*(4*k2k + 2*mz2dm1*s2 - 3*t - u + 
     -               s*(-4 + 5*mz2dm1*t + 3*mz2dm1*u) + 
     -               mz2dm1*(t2 + 4*t*u + u2))) + 
     -         gqmd*(-(k2k*s) + 2*k1k2*(-1 + mz2dm1*(2*s + t + u)) + 
     -            k1k*(-4*k2k + 2*mz2dm1*s2 + t + 3*u + 
     -               s*(4 + 3*mz2dm1*t + 5*mz2dm1*u) + 
     -               mz2dm1*(t2 + 4*t*u + u2)))) + 
     -      glpd*(gqmd*(k2k*s + 2*k1k2*(1 + mz2dm1*(2*s + t + u)) + 
     -            k1k*(4*k2k + 2*mz2dm1*s2 - 3*t - u + 
     -               s*(-4 + 5*mz2dm1*t + 3*mz2dm1*u) + 
     -               mz2dm1*(t2 + 4*t*u + u2))) + 
     -         gqpd*(-(k2k*s) + 2*k1k2*(-1 + mz2dm1*(2*s + t + u)) + 
     -            k1k*(-4*k2k + 2*mz2dm1*s2 + t + 3*u + 
     -               s*(4 + 3*mz2dm1*t + 5*mz2dm1*u) + 
     -               mz2dm1*(t2 + 4*t*u + u2)))) - 
     -      2*p2k*(glmd*(gqpd*(3*k2k + k1k*(-1 + mz2dm1*(s + t + u))) + 
     -            gqmd*(3*k2k + k1k*(-1 + mz2dm1*(3*s + t + u)))) + 
     -         glpd*(gqmd*(3*k2k + k1k*(-1 + mz2dm1*(s + t + u))) + 
     -            gqpd*(3*k2k + k1k*(-1 + mz2dm1*(3*s + t + u))))) - 
     -      2*p1k*(glpd*(gqpd*(-3*k2k + k1k*(1 + mz2dm1*(s + t + u))) + 
     -            gqmd*(-3*k2k + k1k*(1 + mz2dm1*(3*s + t + u)))) + 
     -         glmd*(gqmd*(-3*k2k + k1k*(1 + mz2dm1*(s + t + u))) + 
     -            gqpd*(-3*k2k + k1k*(1 + mz2dm1*(3*s + t + u))))) + 
     -      (glpd*(gqpd*(k1k*s*(k1k + 3*k2k + s) + 2*k1k*(k1k + k2k)*t + 
     -               (2*k1k2 + 2*k1k*k2k + k1k*s + 3*k2k*s + 
     -                  2*(k1k + k2k)*t)*u + (k1k + k2k)*u2) + 
     -            gqmd*(k2k*(s*t + 2*(s + t)*u + u2) + 
     -               k1k2*(3*s + 2*(t + u)) + 
     -           k1k*((s + u)*(2*(s + t) + u) + k2k*(s + 2*(t + u))))) + 
     -       glmd*(gqmd*(k1k*s*(k1k + 3*k2k + s) + 2*k1k*(k1k + k2k)*t + 
     -               (2*k1k2 + 2*k1k*k2k + k1k*s + 3*k2k*s + 
     -                  2*(k1k + k2k)*t)*u + (k1k + k2k)*u2) + 
     -            gqpd*(k2k*(s*t + 2*(s + t)*u + u2) + 
     -               k1k2*(3*s + 2*(t + u)) + 
     -           k1k*((s + u)*(2*(s + t) + u) + k2k*(s + 2*(t + u))))))/
     -       p2k - (glmd*(gqpd*
     -             (k2k*t*(3*s + t + 2*u) + 
     -               k1k*(3*k2k*s + s2 + 2*k2k*t + s*t + t2 + 
     -                  2*(k2k + t)*u) + k1k2*(s + 2*(t + u))) + 
     -            gqmd*(k1k2*(3*s + 2*(t + u)) + 
     -               k2k*(s*(2*t + u) + t*(t + 2*u)) + 
     -           k1k*((s + t)*(2*s + t + 2*u) + k2k*(s + 2*(t + u))))) + 
     -         glpd*(gqmd*(k2k*t*(3*s + t + 2*u) + 
     -               k1k*(3*k2k*s + s2 + 2*k2k*t + s*t + t2 + 
     -                  2*(k2k + t)*u) + k1k2*(s + 2*(t + u))) + 
     -            gqpd*(k1k2*(3*s + 2*(t + u)) + 
     -               k2k*(s*(2*t + u) + t*(t + 2*u)) + 
     -           k1k*((s + t)*(2*s + t + 2*u) + k2k*(s + 2*(t + u))))))/
     -       p1k))/(k1k*k2k)+
     -
     -
     -        (2*dens*denspd*ml2*qq*(-2*
     -       (((glm2 - 2*glmd*glp - glp2)*gqm2 + 
     -            (-glm2 + glp2 - 2*glm*glpd)*gqp2)*k1k + 
     -         ((3*glm2 + glp2 + 2*glm*glpd)*gqm2 + 
     -            (glm2 + 2*glmd*glp + 3*glp2)*gqp2)*k2k)*p1k + 
     -      2*(((-glm2 + glp2 - 2*glm*glpd)*gqm2 + 
     -            (glm2 - 2*glmd*glp - glp2)*gqp2)*k1k + 
     -         ((glm2 + 2*glmd*glp + 3*glp2)*gqm2 + 
     -            (3*glm2 + glp2 + 2*glm*glpd)*gqp2)*k2k)*p2k + 
     -      glm2*(gqp2*(-2*k1k2 + 2*k1k*(-2*k2k + s + 2*t) + 
     -            k2k*(-3*s + t - u)) + 
     -    gqm2*(2*k1k2 + k1k*(4*k2k - 2*s - 4*u) + k2k*(3*s + t - u)))
     -        + glp2*(gqm2*(-2*k1k2 + 2*k1k*(-2*k2k + s + 2*t) + 
     -            k2k*(-3*s + t - u)) + 
     -    gqp2*(2*k1k2 + k1k*(4*k2k - 2*s - 4*u) + k2k*(3*s + t - u)))
     -        + (k1k + k2k)*(-2*(glmd*glp - glm*glpd)*(gqm2 - gqp2)*s - 
     -         (glmd*glp + glm*glpd)*(gqm2 + gqp2)*t + 
     -         (glmd*glp + glm*glpd)*(gqm2 + gqp2)*u) - 
     -      (2*glp2*gqm2*k1k2*s + glm*glpd*gqm2*k1k2*s + 
     -         2*glm2*gqp2*k1k2*s + glm*glpd*gqp2*k1k2*s + 
     -         2*glm2*gqm2*k1k*k2k*s + glm*glpd*gqm2*k1k*k2k*s + 
     -         2*glp2*gqp2*k1k*k2k*s + glm*glpd*gqp2*k1k*k2k*s + 
     -         glp2*gqm2*k1k*s2 + glm*glpd*gqm2*k1k*s2 + 
     -         glm2*gqp2*k1k*s2 + glm*glpd*gqp2*k1k*s2 + 
     -         2*glm2*gqm2*k1k2*t + 2*glp2*gqm2*k1k2*t + 
     -         2*glm2*gqp2*k1k2*t + 2*glp2*gqp2*k1k2*t + 
     -         2*glm2*gqm2*k1k*k2k*t + 2*glp2*gqm2*k1k*k2k*t + 
     -         2*glm2*gqp2*k1k*k2k*t + 2*glp2*gqp2*k1k*k2k*t + 
     -         2*glp2*gqm2*k1k*s*t + 2*glm2*gqp2*k1k*s*t + 
     -         glp2*gqm2*k2k*s*t + glm2*gqp2*k2k*s*t + 
     -         (glm*glpd*(gqm2 + gqp2)*(k1k + k2k)*s + 
     -            glp2*(2*gqp2*(k1k2 + k1k*(k2k + t) + k2k*(s + t)) + 
     -           gqm2*(2*k1k2 + 2*k1k*(k2k + s + t) + k2k*(s + 2*t)))
     -          + glm2*(2*gqm2*(k1k2 + k1k*(k2k + t) + k2k*(s + t)) + 
     -          gqp2*(2*k1k2 + 2*k1k*(k2k + s + t) + k2k*(s + 2*t))))*
     -          u + (glm2 + glp2)*(gqm2 + gqp2)*(k1k + k2k)*u2 + 
     -    glmd*glp*(gqm2 + gqp2)*s*(k1k*(k1k + k2k + s) + (k1k + k2k)*u)
     -         )/p2k - (p2k*((glmd*glp + glm*glpd)*(gqm2 + gqp2)*
     -            (2*k1k*s + (k1k + k2k)*t) + 
     -           glm2*(2*gqp2*(k1k2 + 2*k1k*k2k + 2*k2k*t) + 
     -              gqm2*(2*k1k*(s + t + u) + k2k*(s + 3*t + u))) + 
     -           glp2*(2*gqm2*(k1k2 + 2*k1k*k2k + 2*k2k*t) + 
     -            gqp2*(2*k1k*(s + t + u) + k2k*(s + 3*t + u)))))/p1k + 
     -      (p1k*((glmd*glp + glm*glpd)*(gqm2 + gqp2)*
     -            (2*k1k*s + (k1k + k2k)*u) + 
     -           glp2*(2*gqp2*(k1k2 + 2*k1k*k2k + 2*k2k*u) + 
     -              gqm2*(2*k1k*(s + t + u) + k2k*(s + t + 3*u))) + 
     -           glm2*(2*gqm2*(k1k2 + 2*k1k*k2k + 2*k2k*u) + 
     -            gqp2*(2*k1k*(s + t + u) + k2k*(s + t + 3*u)))))/p2k + 
     -      (glm*glpd*gqm2*k1k2*s + 2*glp2*gqp2*k1k2*s + 
     -         glm*glpd*gqp2*k1k2*s + 2*glp2*gqm2*k1k*k2k*s + 
     -         glm*glpd*gqm2*k1k*k2k*s + glm*glpd*gqp2*k1k*k2k*s + 
     -         glm*glpd*gqm2*k1k*s2 + glp2*gqp2*k1k*s2 + 
     -         glm*glpd*gqp2*k1k*s2 + 2*glp2*gqm2*k1k2*t + 
     -         2*glp2*gqp2*k1k2*t + 2*glp2*gqm2*k1k*k2k*t + 
     -         2*glp2*gqp2*k1k*k2k*t + glm*glpd*gqm2*k1k*s*t + 
     -         2*glp2*gqp2*k1k*s*t + glm*glpd*gqp2*k1k*s*t + 
     -         2*glp2*gqm2*k2k*s*t + glm*glpd*gqm2*k2k*s*t + 
     -         glp2*gqp2*k2k*s*t + glm*glpd*gqp2*k2k*s*t + 
     -         glp2*gqm2*k1k*t2 + glp2*gqp2*k1k*t2 + 
     -         glp2*gqm2*k2k*t2 + glp2*gqp2*k2k*t2 + 
     -         glmd*glp*(gqm2 + gqp2)*s*
     -          (k1k*(k1k + k2k + s) + (k1k + k2k)*t) + 
     -         glp2*(2*gqm2*(k1k + k2k)*(k1k + t) + 
     -        gqp2*(2*k1k2 + 2*k1k*(k2k + s + t) + k2k*(s + 2*t)))*u + 
     -         glm2*(gqm2*(2*k1k + s + t)*(k2k*t + k1k*(s + t)) + 
     -         gqm2*(2*k1k2 + 2*k1k*(k2k + s + t) + k2k*(s + 2*t))*u + 
     -            gqp2*(2*k1k2*(t + u) + k2k*t*(2*s + t + 2*u) + 
     -         k1k*(2*k2k*(s + t + u) + t*(t + 2*u)))))/p1k))/(k1k*k2k)+
     -
     -
     -         (-4*denspd*denspg*ml2*qq**3*
     -    (glmd*(gqpd*(4*p1k2 + 4*p2k2 - 2*k1k*(p1k + p2k - s) - 
     -            3*p1k*s - 5*p2k*s + 2*s2 - p1k*t + p2k*t + s*t + 
     -            (p1k - p2k + s)*u) + 
     -       gqmd*(4*p1k2 + 4*p2k2 - 2*k1k*(p1k + p2k - s) - 5*p1k*s - 
     -       3*p2k*s + 2*s2 - p1k*t + p2k*t + s*t + (p1k - p2k + s)*u)
     -     ) + glpd*(gqmd*(4*p1k2 + 4*p2k2 - 2*k1k*(p1k + p2k - s) - 
     -            3*p1k*s - 5*p2k*s + 2*s2 - p1k*t + p2k*t + s*t + 
     -            (p1k - p2k + s)*u) + 
     -     gqpd*(4*p1k2 + 4*p2k2 - 2*k1k*(p1k + p2k - s) - 5*p1k*s - 
     -       3*p2k*s + 2*s2 - p1k*t + p2k*t + s*t + (p1k - p2k + s)*u)
     -         )))/(p1k*p2k)+
     -         (-2*densg*densp*ml2*qq2*
     -    (glp*(gqp*(k1k2*(2*p1k2 + p1k*(2*p2k - s - 2*(t + u)) + 
     -               p2k*(3*s + 2*(t + u))) + 
     -            k2k*(p1k2*(-6*p2k + 5*u) + 
     -               p1k*(6*p2k2 + p2k*s - u*(3*s + 2*t + u)) + 
     -           p2k*(2*s*t + t2 + s*u + 2*t*u - p2k*(s + 4*t + u))) + 
     -            k1k*(p1k2*(2*(p2k + s) + u) + 
     -           p2k*((s + t)*(2*s + t + 2*u) - p2k*(4*s + 3*t + 2*u)) - 
     -               p1k*(2*p2k2 + s2 + s*u + 2*t*u + u2 + 
     -                  p2k*(4*s + t + 3*u)) + 
     -               k2k*(4*p1k2 + p1k*(4*p2k - 3*s - 2*(t + u)) + 
     -                  p2k*(s + 2*(t + u))))) + 
     -         gqm*(k2k*(p2k*t*(-5*p2k + 3*s + t + 2*u) + 
     -               p1k2*(-6*p2k + s + t + 4*u) + 
     -             p1k*(6*p2k2 - p2k*s - s*t - 2*(s + t)*u - u2)) + 
     -            k1k2*(p2k*(-2*p2k + s + 2*(t + u)) - 
     -               p1k*(2*p2k + 3*s + 2*(t + u))) + 
     -            k1k*(p1k2*(2*(p2k + 2*s + t) + 3*u) + 
     -               p2k*(s2 + s*t + t2 - p2k*(2*s + t) + 2*t*u) - 
     -               p1k*(2*p2k2 - p2k*(4*s + 3*t + u) + 
     -                  (s + u)*(2*(s + t) + u)) - 
     -               k2k*(p2k*(4*p2k - 3*s - 2*(t + u)) + 
     -                  p1k*(4*p2k + s + 2*(t + u)))))) + 
     -      glm*(gqm*(k1k2*(2*p1k2 + p1k*(2*p2k - s - 2*(t + u)) + 
     -               p2k*(3*s + 2*(t + u))) + 
     -            k2k*(p1k2*(-6*p2k + 5*u) + 
     -               p1k*(6*p2k2 + p2k*s - u*(3*s + 2*t + u)) + 
     -           p2k*(2*s*t + t2 + s*u + 2*t*u - p2k*(s + 4*t + u))) + 
     -            k1k*(p1k2*(2*(p2k + s) + u) + 
     -           p2k*((s + t)*(2*s + t + 2*u) - p2k*(4*s + 3*t + 2*u)) - 
     -               p1k*(2*p2k2 + s2 + s*u + 2*t*u + u2 + 
     -                  p2k*(4*s + t + 3*u)) + 
     -               k2k*(4*p1k2 + p1k*(4*p2k - 3*s - 2*(t + u)) + 
     -                  p2k*(s + 2*(t + u))))) + 
     -         gqp*(k2k*(p2k*t*(-5*p2k + 3*s + t + 2*u) + 
     -               p1k2*(-6*p2k + s + t + 4*u) + 
     -             p1k*(6*p2k2 - p2k*s - s*t - 2*(s + t)*u - u2)) + 
     -            k1k2*(p2k*(-2*p2k + s + 2*(t + u)) - 
     -               p1k*(2*p2k + 3*s + 2*(t + u))) + 
     -            k1k*(p1k2*(2*(p2k + 2*s + t) + 3*u) + 
     -               p2k*(s2 + s*t + t2 - p2k*(2*s + t) + 2*t*u) - 
     -               p1k*(2*p2k2 - p2k*(4*s + 3*t + u) + 
     -                  (s + u)*(2*(s + t) + u)) - 
     -               k2k*(p2k*(4*p2k - 3*s - 2*(t + u)) + 
     -              p1k*(4*p2k + s + 2*(t + u))))))))/(k1k*k2k*p1k*p2k)+
     -
     -
     -
     -         (2*densd*densp*ml2*qq*(4*glm*glpd*gqm2*k1k*p1k2*p2k + 
     -      4*glmd*glp*gqp2*k1k*p1k2*p2k - 
     -      4*glmd*glp*gqm2*k2k*p1k2*p2k - 
     -      4*glm*glpd*gqp2*k2k*p1k2*p2k - 
     -      4*glmd*glp*gqm2*k1k*p1k*p2k2 - 
     -      4*glm*glpd*gqp2*k1k*p1k*p2k2 + 
     -      4*glm*glpd*gqm2*k2k*p1k*p2k2 + 
     -     4*glmd*glp*gqp2*k2k*p1k*p2k2 - glmd*glp*gqm2*k1k2*p1k*s - 
     -      glm*glpd*gqm2*k1k2*p1k*s - glmd*glp*gqp2*k1k2*p1k*s - 
     -      glm*glpd*gqp2*k1k2*p1k*s - glmd*glp*gqm2*k1k*k2k*p1k*s - 
     -      glm*glpd*gqm2*k1k*k2k*p1k*s - glmd*glp*gqp2*k1k*k2k*p1k*s - 
     -      glm*glpd*gqp2*k1k*k2k*p1k*s + 2*glmd*glp*gqm2*k1k*p1k2*s + 
     -     2*glm*glpd*gqm2*k1k*p1k2*s + 2*glmd*glp*gqp2*k1k*p1k2*s + 
     -      2*glm*glpd*gqp2*k1k*p1k2*s + glmd*glp*gqm2*k1k2*p2k*s + 
     -      glm*glpd*gqm2*k1k2*p2k*s + glmd*glp*gqp2*k1k2*p2k*s + 
     -      glm*glpd*gqp2*k1k2*p2k*s + glmd*glp*gqm2*k1k*k2k*p2k*s + 
     -      glm*glpd*gqm2*k1k*k2k*p2k*s + glmd*glp*gqp2*k1k*k2k*p2k*s + 
     -    glm*glpd*gqp2*k1k*k2k*p2k*s + 2*glmd*glp*gqm2*k1k*p1k*p2k*s - 
     -   2*glm*glpd*gqm2*k1k*p1k*p2k*s - 2*glmd*glp*gqp2*k1k*p1k*p2k*s + 
     -   2*glm*glpd*gqp2*k1k*p1k*p2k*s + 2*glmd*glp*gqm2*k2k*p1k*p2k*s - 
     -   2*glm*glpd*gqm2*k2k*p1k*p2k*s - 2*glmd*glp*gqp2*k2k*p1k*p2k*s + 
     -    2*glm*glpd*gqp2*k2k*p1k*p2k*s - 2*glmd*glp*gqm2*k1k*p2k2*s - 
     -     2*glm*glpd*gqm2*k1k*p2k2*s - 2*glmd*glp*gqp2*k1k*p2k2*s - 
     -      2*glm*glpd*gqp2*k1k*p2k2*s - glmd*glp*gqm2*k1k*p1k*s2 - 
     -      glm*glpd*gqm2*k1k*p1k*s2 - glmd*glp*gqp2*k1k*p1k*s2 - 
     -      glm*glpd*gqp2*k1k*p1k*s2 + glmd*glp*gqm2*k1k*p2k*s2 + 
     -      glm*glpd*gqm2*k1k*p2k*s2 + glmd*glp*gqp2*k1k*p2k*s2 + 
     -      glm*glpd*gqp2*k1k*p2k*s2 - glmd*glp*gqm2*k1k*p1k*p2k*t - 
     -      glm*glpd*gqm2*k1k*p1k*p2k*t - glmd*glp*gqp2*k1k*p1k*p2k*t - 
     -      glm*glpd*gqp2*k1k*p1k*p2k*t - glmd*glp*gqm2*k2k*p1k*p2k*t - 
     -      glm*glpd*gqm2*k2k*p1k*p2k*t - glmd*glp*gqp2*k2k*p1k*p2k*t - 
     -      glm*glpd*gqp2*k2k*p1k*p2k*t - glmd*glp*gqm2*k1k*p2k2*t - 
     -      glm*glpd*gqm2*k1k*p2k2*t - glmd*glp*gqp2*k1k*p2k2*t - 
     -      glm*glpd*gqp2*k1k*p2k2*t - glmd*glp*gqm2*k2k*p2k2*t - 
     -      glm*glpd*gqm2*k2k*p2k2*t - glmd*glp*gqp2*k2k*p2k2*t - 
     -      glm*glpd*gqp2*k2k*p2k2*t + glmd*glp*gqm2*k1k*p2k*s*t + 
     -      glm*glpd*gqm2*k1k*p2k*s*t + glmd*glp*gqp2*k1k*p2k*s*t + 
     -      glm*glpd*gqp2*k1k*p2k*s*t + glmd*glp*gqm2*k2k*p2k*s*t + 
     -      glm*glpd*gqm2*k2k*p2k*s*t + glmd*glp*gqp2*k2k*p2k*s*t + 
     -      glm*glpd*gqp2*k2k*p2k*s*t + 
     -      (glmd*glp + glm*glpd)*(gqm2 + gqp2)*(k1k + k2k)*p1k*
     -       (p1k + p2k - s)*u + 
     -      glm2*(gqp2*(-2*k1k2*
     -             (p2k*(p2k - t - u) + p1k*(p2k + s + t + u)) + 
     -            k2k*(p2k*t*(-4*p2k + 2*s + t + 2*u) + 
     -               p1k2*(-2*p2k + s + t + 3*u) + 
     -               p1k*(6*p2k2 + p2k*(-3*s + t - u) - s*(t + u) - 
     -                  u*(2*t + u))) + 
     -            k1k*(2*p1k2*(p2k + s + t + u) + p2k*t*(t + 2*u) + 
     -               2*k2k*(-(p1k*(2*p2k + t + u)) + 
     -                  p2k*(-2*p2k + s + t + u)) + 
     -          p1k*(2*p2k2 + 2*p2k*(s + 2*t) - (s + u)*(s + 2*t + u))
     -               )) + gqm2*
     -        (2*k1k2*(p1k2 + p1k*(p2k - t - u) + p2k*(s + t + u)) + 
     -            k1k*(-2*p1k2*p2k - p2k*(2*p2k - s - t)*(s + t) + 
     -               2*p2k*(-p2k + s + t)*u - 
     -               p1k*(2*p2k*(p2k + s) + 2*(2*p2k + t)*u + u2) + 
     -          2*k2k*(2*p1k2 + p1k*(2*p2k - s - t - u) + p2k*(t + u))
     -               ) + k2k*(p1k2*(-6*p2k + 4*u) + 
     -               p2k*(t*(s + t) + (s + 2*t)*u - p2k*(s + 3*t + u)) + 
     -          p1k*(2*p2k2 + p2k*(3*s + t - u) - u*(2*(s + t) + u))))
     -         ) + glp2*(gqm2*(-2*k1k2*
     -             (p2k*(p2k - t - u) + p1k*(p2k + s + t + u)) + 
     -            k2k*(p2k*t*(-4*p2k + 2*s + t + 2*u) + 
     -               p1k2*(-2*p2k + s + t + 3*u) + 
     -               p1k*(6*p2k2 + p2k*(-3*s + t - u) - s*(t + u) - 
     -                  u*(2*t + u))) + 
     -            k1k*(2*p1k2*(p2k + s + t + u) + p2k*t*(t + 2*u) + 
     -               2*k2k*(-(p1k*(2*p2k + t + u)) + 
     -                  p2k*(-2*p2k + s + t + u)) + 
     -          p1k*(2*p2k2 + 2*p2k*(s + 2*t) - (s + u)*(s + 2*t + u))
     -               )) + gqp2*
     -        (2*k1k2*(p1k2 + p1k*(p2k - t - u) + p2k*(s + t + u)) + 
     -            k1k*(-2*p1k2*p2k - p2k*(2*p2k - s - t)*(s + t) + 
     -               2*p2k*(-p2k + s + t)*u - 
     -               p1k*(2*p2k*(p2k + s) + 2*(2*p2k + t)*u + u2) + 
     -          2*k2k*(2*p1k2 + p1k*(2*p2k - s - t - u) + p2k*(t + u))
     -               ) + k2k*(p1k2*(-6*p2k + 4*u) + 
     -               p2k*(t*(s + t) + (s + 2*t)*u - p2k*(s + 3*t + u)) + 
     -          p1k*(2*p2k2 + p2k*(3*s + t - u) - u*(2*(s + t) + u))))
     -         )))/(k1k*k2k*p1k*p2k)+
     -
     -
     -
     -   (-4*densp*denspg*ml2*qq**3*
     -  (glm*(gqp*(4*p1k2 + 4*p2k2 - 2*k1k*(p1k + p2k - s) - 3*p1k*s - 
     -       5*p2k*s + 2*s2 - p1k*t + p2k*t + s*t + (p1k - p2k + s)*u)
     -           + gqm*(4*p1k2 + 4*p2k2 - 2*k1k*(p1k + p2k - s) - 
     -            5*p1k*s - 3*p2k*s + 2*s2 - p1k*t + p2k*t + s*t + 
     -            (p1k - p2k + s)*u)) + 
     -      glp*(gqm*(4*p1k2 + 4*p2k2 - 2*k1k*(p1k + p2k - s) - 
     -            3*p1k*s - 5*p2k*s + 2*s2 - p1k*t + p2k*t + s*t + 
     -            (p1k - p2k + s)*u) + 
     -     gqp*(4*p1k2 + 4*p2k2 - 2*k1k*(p1k + p2k - s) - 5*p1k*s - 
     -       3*p2k*s + 2*s2 - p1k*t + p2k*t + s*t + (p1k - p2k + s)*u)
     -         )))/(p1k*p2k)+
     -       (2*ml2*ml4*(2*dens2*(glm2 + glp2)*(gqm2 + gqp2)*
     -       (2*k1k2 + 2*k1k*k2k + k2k2)*p1k*p2k - 
     -      qq*(-(densg*qq*(densp*(glm + glp)*(gqm + gqp)*k1k*k2k*
     -               (k1k + k2k)*(p1k - p2k) + 
     -              8*densg*(2*k1k2 + 2*k1k*k2k + k2k2)*p1k*p2k + 
     -              denspd*(glmd + glpd)*(gqmd + gqpd)*k1k*k2k*
     -            ((k1k + k2k)*p1k - (k1k + k2k - 2*k1k*mz2dm1*p1k)*p2k)
     -               - 8*denspg*k1k*k2k*(k1k + k2k)*(p1k - p2k)*qq)) + 
     -     dens*(denspd*(glm2 + glp2)*(gqm2 + gqp2)*k1k*k2k*(k1k + k2k)*
     -             (p1k - p2k) + 
     -            (glm + glp)*(gqm + gqp)*
     -             (2*densg*(2*k1k2 + 2*k1k*k2k + k2k2)*p1k*p2k - 
     -               denspg*k1k*k2k*(k1k + k2k)*(p1k - p2k)*qq)) + 
     -     densd*(densp*(glm2 + glp2)*(gqm2 + gqp2)*k1k*k2k*(k1k + k2k)*
     -             (p1k - p2k) + 
     -            (glmd + glpd)*(gqmd + gqpd)*
     -             (2*densg*(2*k1k2 + 2*k1k*k2k + k2k2)*p1k*p2k - 
     -               denspg*k1k*k2k*(k1k + k2k)*(p1k - p2k)*qq)))))/
     -  (k1k2*k2k2*p1k*p2k) +
     -        (-4*qq*(dens*(denspd*((glmd*glp + glm*glpd)*(gqm2 - gqp2)*
     -             (k1k + k2k)*ml2*(p1k - p2k) + 
     -            glp2*(gqp2*(2*k1k2*p1k - 2*k1k*p1k*(ml2 + p2k - u) + 
     -                  k2k*p2k*(-2*p1k + s + t - u)) + 
     -               gqm2*(2*k1k2*p2k - 2*k1k*p2k*(ml2 + p1k - t) + 
     -                  k2k*p1k*(-2*p2k + s - t + u))) - 
     -            glm2*(gqm2*(2*k1k2*p1k - 2*k1k*p1k*(ml2 + p2k - u) + 
     -                  k2k*p2k*(-2*p1k + s + t - u)) + 
     -               gqp2*(2*k1k2*p2k - 2*k1k*p2k*(ml2 + p1k - t) + 
     -                  k2k*p1k*(-2*p2k + s - t + u)))) + 
     -         denspg*qq*(-(glp*
     -               (gqp*(2*k1k2*p1k + 
     -                    k2k*
     -                   (ml2*(-p1k + p2k) + p2k*(-2*p1k + s + t - u)) + 
     -                    k1k*(ml2*(-3*p1k + p2k) + 2*p1k*(-p2k + u))) + 
     -                 gqm*(2*k1k2*p2k + 
     -                    k1k*(ml2*(p1k - 3*p2k) + 2*p2k*(-p1k + t)) + 
     -               k2k*(ml2*(p1k - p2k) + p1k*(-2*p2k + s - t + u)))))
     -              + glm*(gqm*
     -                (2*k1k2*p1k + 
     -              k2k*(ml2*(-p1k + p2k) + p2k*(-2*p1k + s + t - u)) + 
     -                  k1k*(ml2*(-3*p1k + p2k) + 2*p1k*(-p2k + u))) + 
     -               gqp*(2*k1k2*p2k + 
     -                  k1k*(ml2*(p1k - 3*p2k) + 2*p2k*(-p1k + t)) + 
     -              k2k*(ml2*(p1k - p2k) + p1k*(-2*p2k + s - t + u))))))
     -       + densd*(densp*(-((glmd*glp + glm*glpd)*(gqm2 - gqp2)*
     -               (k1k + k2k)*ml2*(p1k - p2k)) - 
     -            glp2*(gqp2*(2*k1k2*p1k - 2*k1k*p1k*(ml2 + p2k - u) + 
     -                  k2k*p2k*(-2*p1k + s + t - u)) + 
     -               gqm2*(2*k1k2*p2k - 2*k1k*p2k*(ml2 + p1k - t) + 
     -                  k2k*p1k*(-2*p2k + s - t + u))) + 
     -            glm2*(gqm2*(2*k1k2*p1k - 2*k1k*p1k*(ml2 + p2k - u) + 
     -                  k2k*p2k*(-2*p1k + s + t - u)) + 
     -               gqp2*(2*k1k2*p2k - 2*k1k*p2k*(ml2 + p1k - t) + 
     -                  k2k*p1k*(-2*p2k + s - t + u)))) + 
     -         denspg*qq*(glpd*
     -             (gqpd*(2*k1k2*p1k + 
     -              k2k*(ml2*(-p1k + p2k) + p2k*(-2*p1k + s + t - u)) + 
     -                  k1k*(ml2*(-3*p1k + p2k) + 2*p1k*(-p2k + u))) + 
     -               gqmd*(2*k1k2*p2k + 
     -                  k1k*(ml2*(p1k - 3*p2k) + 2*p2k*(-p1k + t)) + 
     -              k2k*(ml2*(p1k - p2k) + p1k*(-2*p2k + s - t + u)))) - 
     -            glmd*(gqmd*(2*k1k2*p1k + 
     -               k2k*(ml2*(-p1k + p2k) + p2k*(-2*p1k + s + t - u)) + 
     -                  k1k*(ml2*(-3*p1k + p2k) + 2*p1k*(-p2k + u))) + 
     -               gqpd*(2*k1k2*p2k + 
     -                  k1k*(ml2*(p1k - 3*p2k) + 2*p2k*(-p1k + t)) + 
     -              k2k*(ml2*(p1k - p2k) + p1k*(-2*p2k + s - t + u))))))
     -       + densg*qq*(densp*
     -          (glp*(gqp*(2*k1k2*p1k + 
     -               k2k*(ml2*(-p1k + p2k) + p2k*(-2*p1k + s + t - u)) + 
     -                  k1k*(ml2*(-3*p1k + p2k) + 2*p1k*(-p2k + u))) + 
     -               gqm*(2*k1k2*p2k + 
     -                  k1k*(ml2*(p1k - 3*p2k) + 2*p2k*(-p1k + t)) + 
     -              k2k*(ml2*(p1k - p2k) + p1k*(-2*p2k + s - t + u)))) - 
     -            glm*(gqm*(2*k1k2*p1k + 
     -               k2k*(ml2*(-p1k + p2k) + p2k*(-2*p1k + s + t - u)) + 
     -                  k1k*(ml2*(-3*p1k + p2k) + 2*p1k*(-p2k + u))) + 
     -               gqp*(2*k1k2*p2k + 
     -                  k1k*(ml2*(p1k - 3*p2k) + 2*p2k*(-p1k + t)) + 
     -              k2k*(ml2*(p1k - p2k) + p1k*(-2*p2k + s - t + u)))))
     -          + denspd*(-(glpd*
     -               (gqpd*(2*k1k2*p1k + 
     -                    k2k*
     -                  (ml2*(-p1k + p2k) + p2k*(-2*p1k + s + t - u)) + 
     -                    k1k*(ml2*(-3*p1k + p2k) + 2*p1k*(-p2k + u))) + 
     -                 gqmd*(2*k1k2*p2k + 
     -                    k1k*(ml2*(p1k - 3*p2k) + 2*p2k*(-p1k + t)) + 
     -               k2k*(ml2*(p1k - p2k) + p1k*(-2*p2k + s - t + u)))))
     -              + glmd*(gqmd*
     -                (2*k1k2*p1k + 
     -              k2k*(ml2*(-p1k + p2k) + p2k*(-2*p1k + s + t - u)) + 
     -                  k1k*(ml2*(-3*p1k + p2k) + 2*p1k*(-p2k + u))) + 
     -               gqpd*(2*k1k2*p2k + 
     -                  k1k*(ml2*(p1k - 3*p2k) + 2*p2k*(-p1k + t)) + 
     -             k2k*(ml2*(p1k - p2k) + p1k*(-2*p2k + s - t + u)))))))
     -     *e32_(p1,p2,k,k1))/(k1k*k2k*p1k*p2k)
      amp2 = amp216 * 1.d0
      amp2 = dble( amp2 * el2_scheme*dconjg(el2_scheme) * el2 
     +             /4/3/(st_alpha/(2*pi)) )

      end
*
**
*
      complex*32 function e32_(q1,q2,q3,q4)
      implicit none
      real*16 q1(0:3),q2(0:3),q3(0:3),q4(0:3)

      complex*32 esign

      esign = -(0.q0,1.q0)

      e32_ =q1(1)*q2(2)*q3(3)*q4(0)-q1(1)*q2(2)*q3(0)*q4(3)+
     .      q1(1)*q2(3)*q3(0)*q4(2)-q1(1)*q2(3)*q3(2)*q4(0)+
     .      q1(1)*q2(0)*q3(2)*q4(3)-q1(1)*q2(0)*q3(3)*q4(2)+
     .      q1(2)*q2(1)*q3(0)*q4(3)-q1(2)*q2(1)*q3(3)*q4(0)+
     .      q1(2)*q2(3)*q3(1)*q4(0)-q1(2)*q2(3)*q3(0)*q4(1)+
     .      q1(2)*q2(0)*q3(3)*q4(1)-q1(2)*q2(0)*q3(1)*q4(3)+
     .      q1(3)*q2(1)*q3(2)*q4(0)-q1(3)*q2(1)*q3(0)*q4(2)+
     .      q1(3)*q2(2)*q3(0)*q4(1)-q1(3)*q2(2)*q3(1)*q4(0)+
     .      q1(3)*q2(0)*q3(1)*q4(2)-q1(3)*q2(0)*q3(2)*q4(1)+
     .      q1(0)*q2(1)*q3(3)*q4(2)-q1(0)*q2(1)*q3(2)*q4(3)+
     .      q1(0)*q2(2)*q3(1)*q4(3)-q1(0)*q2(2)*q3(3)*q4(1)+
     .      q1(0)*q2(3)*q3(2)*q4(1)-q1(0)*q2(3)*q3(1)*q4(2)

      e32_ = esign * e32_ 

      return
      end function e32_

      function dotp16(p1,p2)
      implicit none
      real * 16 dotp16,p1(0:3),p2(0:3)
      dotp16 = (p1(0)*p2(0) - p1(3)*p2(3)) - p1(1)*p2(1) - p1(2)*p2(2)
      end

