C$$$      implicit none
C$$$      real * 8 p(0:3),p1(0:3),p2(0:3)
C$$$      real * 8 pp(4),pp1(4),pp2(4)
C$$$      real * 8 m1,m2,xjac,x1,x2

C$$$      p(0)=50
C$$$      p(1)=5
C$$$      p(2)=20
C$$$      p(3)=0.1d0

C$$$      m1=5
C$$$      m2=1

C$$$      x1=0.754
C$$$      x2=0.231

C$$$      xjac =1
C$$$      call twobodyphsp(x1,x2,m1,m2,p,xjac,p1,p2)

C$$$      write(*,*) p1
C$$$      write(*,*) p2
C$$$      write(*,*) p1+p2
C$$$      write(*,*) sqrt(p1(0)**2-p1(1)**2-p1(2)**2-p1(3)**2),
C$$$     1           sqrt(p2(0)**2-p2(1)**2-p2(2)**2-p2(3)**2)

C$$$      write(*,*) xjac

C$$$      pp(4)=p(0)
C$$$      pp(1:3)=p(1:3)

C$$$      call phi1_2(x1,x2,pp,pp1,pp2,
C$$$     .     m1,m2,xjac)

C$$$      write(*,*) pp1(4), pp1(1:3)
C$$$      write(*,*) pp2(4), pp2(1:3)
C$$$      write(*,*) pp1(4)+pp2(4),pp1(1:3)+pp2(1:3)
C$$$      write(*,*) sqrt(pp1(4)**2-pp1(1)**2-pp1(2)**2-pp1(3)**2),
C$$$     1           sqrt(pp2(4)**2-pp2(1)**2-pp2(2)**2-pp2(3)**2)

C$$$      write(*,*) xjac
C$$$      end

      



c Basic routines for phase space construction

      subroutine twobodyphsp(x1,x2,m1,m2,p,xjac,p1,p2)
c Given a pair of random numbers between zero and 1, a mass for lines 1 and 2,
c the four momentum p of the incoming line, it builds phase space momenta
c p1,p2 such that p1+p2=p, and d x1 d x2 jac = d Phi2.
c xjac is multiplied by jac on exit.
c d Phi2 is defined according to the usual conventions:
c                                     d^3 p1         d^3 p2
c d Phi2 = (2 pi)^4 delta(p-p1-p2) -------------  -------------
c                                  p1^0 (2 pi)^3  p2^0 (2 pi)^3 
c
      implicit none
      include 'pwhg_math.h'
      real * 8 x1,x2,m1,m2,cphi,sphi,cth,sth,p12,phi,
     1     p(0:3),p1(0:3),p2(0:3),xjac
      real * 8 s,m,xjac0,pf(0:3,2)
      parameter (xjac0 = 1/(8*pi))
      s = p(0)**2-p(1)**2-p(2)**2-p(3)**2
      if(s.lt.0) then
         if(s-(m1+m2)**2.gt.-1d-6) then
            p1=0
            p2=0
            xjac=xjac*xjac0
            return
         else
            write(*,*) ' twobodyphsp entered with s<0'
            stop
         endif
      endif
      m=sqrt(s)
c 3-momentum of 1 and 2 in rest frame
      if(m.lt.m1+m2) then
         if(m-(m1+m2).gt.-1d-6) then
            p12 =0
         else
            write(*,*) ' twobodyphsp entered m<m1+m2'
            stop
         endif
      else
         p12 = sqrt((m-(m1+m2))*(m+(m1+m2))*(m-(m1-m2))*(m+(m1-m2)))
     1        /(2*m)
      endif
c try the best to avoid sqrt(-1)
      cth = 2*x1-1
      sth = 2*sqrt((1-x1)*x1)
      phi = 2*pi*x2
      cphi = cos(phi)
      sphi = sin(phi)
c momenta of 1 and 2 in rest frame
      pf(1,2) = p12*sth*sphi
      pf(2,2) = p12*sth*cphi
      pf(3,2) = p12*cth
      pf(1:3,1)=-pf(1:3,2)
      pf(0,1) = sqrt(p12**2+m1**2)
      pf(0,2) = sqrt(p12**2+m2**2)
c phase space is 1/8pi 2p/m
      xjac = xjac * xjac0 * 2*p12/m
c boost momenta to p frame
      call boost2resoninv(p,2,pf,pf)
      p1 = pf(:,1)
      p2 = pf(:,2)
      end


c Basic routines for phase space construction

      subroutine twobodyphsp0(imode,x1,x2,m1,m2,m,xjac,p1,p2)
c Given a pair of random numbers between zero and 1, a mass for lines 1 and 2,
c and the initial energy m, it builds phase space momenta
c p1,p2 such that p1+p2=(m;0,0,0), and d x1 d x2 jac = d Phi2.
c xjac is multiplied by jac on exit.
c d Phi2 is defined according to the usual conventions:
c                                     d^3 p1         d^3 p2
c d Phi2 = (2 pi)^4 delta(p-p1-p2) -------------  -------------
c                                  p1^0 (2 pi)^3  p2^0 (2 pi)^3 
c
c the flag mode select the kind of importance sampling in cos theta:
c mode = 0  flat;
c mode = 1  ...
c
      implicit none
      include 'pwhg_math.h'
      integer imode
      real * 8 x1,x2,m1,m2,cphi,sphi,cth,sth,p12,phi,
     1       p1(0:3),p2(0:3),z,xjac
      real * 8 s,m,xjac0
      parameter (xjac0 = 1/(8*pi))

      if(m.lt.m1+m2) then
         if(m-(m1+m2).gt.-1d-6) then
            p12 =0
         else
            write(*,*) ' twobodyphsp entered m<m1+m2'
            stop
         endif
      else
         p12 = sqrt((m-(m1+m2))*(m+(m1+m2))*(m-(m1-m2))*(m+(m1-m2)))
     1        /(2*m)
      endif
      if(imode.eq.0) then
         z=x1
      else
         z    = (3-2*x1)*x1**2
         xjac = xjac*6*x1*(1-x1)
         if(z.gt.1) then
            if(z-1.lt.1d-6) then
               z=1
            else
               write(*,*) 'twobodyphsp0: invalid x1=',x1
               stop
            endif
         endif
      endif
c try the best to avoid sqrt(-1)
      cth = 2*z-1
      sth = 2*sqrt((1-z)*z)
      phi = 2*pi*x2
      cphi = cos(phi)
      sphi = sin(phi)
c momenta of 1 and 2 in rest frame
      p1(1) = p12*sth*sphi
      p1(2) = p12*sth*cphi
      p1(3) = p12*cth
      p2(1:3)=-p1(1:3)
      p1(0) = sqrt(p12**2+m1**2)
      p2(0) = sqrt(p12**2+m2**2)
c phase space is 1/8pi 2p/m
      xjac = xjac * xjac0 * 2*p12/m
      end


      subroutine genrapidity(x,tau,y,xjac)
c Generates y given tau (phase space: d y d tau = dx_1 dx_2)
c xjac is multiplied by the appropriate jacobian
      implicit none
      real * 8 x,tau,y,xjac
      real * 8 ymax
      ymax = -log(tau)/2
      y = (1-2*x)*ymax
      xjac = xjac * 2*ymax
      end



      subroutine breit(x,smin,smax,mass,width,s,wt)
      implicit none
      double precision x,smin,smax,mass,width,s,wt,err
      double precision zmin,zmax,z,tanz
      double precision mass2,mgamma
      mass2 = mass**2
      mgamma = mass * width
      zmin = atan((smin-mass2)/mgamma)
      zmax = atan((smax-mass2)/mgamma)
      z  = zmin + (zmax-zmin) * x
      wt = wt * (zmax - zmin)
      tanz =  tan(z)
      s = tanz * mgamma + mass2
      wt = wt * (1 + tanz**2)*mgamma
      end
