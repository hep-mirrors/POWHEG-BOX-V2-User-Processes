c     ANALYTIC COMPUTATION OF THE MASSLESS SCALAR INTEGRALS
      function B0_FG(mom)
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h'

      real *8 mom(0:3),momsq,mu2
      complex *16 t0,B0_FG
      real *8 dotp
      external dotp

      momsq = dotp(mom,mom)
      mu2=st_muren2

      if(momsq.ge.0) then
         B0_FG = dcmplx(2+log(abs(mu2/momsq)),pi)
      else
         B0_FG = dcmplx(2+log(abs(mu2/momsq)),0d0)
      endif
      end

c######################################################################

      function C0_FG(mom1,mom2)
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h'

      real *8 mom1(0:3),mom2(0:3),mom3(0:3)
      real *8 mom1sq,mom2sq,mom3sq
      complex *16 t0,C0_FG
      real *8 dotp
      external dotp

      mom3 = -mom1-mom2
      mom1sq = dotp(mom1,mom1)
      mom2sq = dotp(mom2,mom2)
      mom3sq = dotp(mom3,mom3)

      if(abs(mom2sq).lt.1d-8) then
         if(mom3sq.gt.0d0) then
            call tri_0_0_pos(mom3sq,C0_FG)
         elseif(mom3sq.lt.0d0) then
            call tri_0_0_neg(mom3sq,C0_FG)
         endif
      elseif(mom2sq.gt.1d-8) then
         if(mom3sq.gt.0d0) then
            call tri_0_pos_pos(mom2sq,mom3sq,C0_FG)            
         elseif(mom3sq.lt.0d0) then
            call tri_0_pos_neg(mom2sq,mom3sq,C0_FG)   
         endif 
      endif
      end

      subroutine tri_0_0_pos(inv,t0)
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h' 
      real *8 inv,mu2
      real *8 reale,immag
      complex *16 t0

      mu2=st_muren2
      
      reale = 1/inv*(-pi**2/2d0+(log(mu2/inv))**2/2d0)
      immag = pi/inv*log(mu2/inv)
      t0 = dcmplx(reale,immag)
      end


      subroutine tri_0_0_neg(inv,t0)
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h' 
      real *8 inv,mu2
      complex *16 t0

      mu2=st_muren2
      
      t0=dcmplx(1/inv*(log(-mu2/inv))**2/2d0,0d0)
      end


      subroutine tri_0_pos_pos(inv1,inv2,t0)
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h' 
      real *8 inv1,inv2,mu2
      real *8 reale,immag
      complex *16 t0

      mu2=st_muren2
      
      reale = log(inv1/inv2)/(inv2-inv1)*(log(mu2/inv2)-
     $     log(inv1/inv2)/2d0)
      immag = pi*log(inv1/inv2)/(inv2-inv1)
      t0 = dcmplx(reale,immag)
      end

      subroutine tri_0_pos_neg(inv1,inv2,t0)
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h' 
      real *8 inv1,inv2,mu2
      real *8 reale,immag
      complex *16 t0

      mu2=st_muren2
      
      reale = 1/(inv2-inv1)*(log(-mu2/inv2)*log(-inv1/inv2)+pi**2/2d0-
     $     (log(-inv1/inv2))**2/2d0)
      immag = -pi/(inv2-inv1)*log(mu2/inv1)
      t0 = dcmplx(reale,immag)
      end

c#########################################################################

      function D0_FG(mom1,mom2,mom3)
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h'

      real *8 mom1(0:3),mom2(0:3),mom3(0:3),mom4(0:3)
      real *8 s12,s23,mom4sq
      complex *16 t0,D0_FG
      real *8 dotp
      external dotp

      mom4 = -mom1-mom2-mom3
      mom4sq = dotp(mom4,mom4)
      s12 = dotp(mom1+mom2,mom1+mom2)
      s23 = dotp(mom2+mom3,mom2+mom3)

      if(s12.gt.0.and.s23.lt.0) then
         call box_pos_neg(s12,s23,mom4sq,D0_FG)
      elseif(s12.lt.0.and.s23.gt.0) then
         call box_pos_neg(s23,s12,mom4sq,D0_FG)
      elseif(s12.lt.0.and.s23.lt.0) then
         call box_neg_neg(s12,s23,mom4sq,D0_FG)
      endif

      end



      subroutine box_pos_neg(s12,s23,mom4sq,t0)
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h' 
      real *8 mom4sq,s12,s23,s,t,q2,sigma,k,mu2
      real *8 reale,immag
      complex *16 t0
      real *8 dilog
      external dilog

      mu2=st_muren2
      
      q2 = mom4sq
      s = s12
      t = s23
      sigma = s-q2
      k = -sigma/t*(1-(sigma+t)/s)

      reale = 2/s/t*(log(-mu2/t)*log(q2/sigma)-(log(-q2/t))**2/2d0+
     $     log(-sigma/t)*log(mu2/(sigma+t))+(log(mu2/s))**2/2d0+
     $     (log(k))**2/2d0-pi**2/3d0+dilog(1-(sigma+t)/s)-
     $     dilog(1+sigma/t)+dilog(1/k))
      immag = -2*pi/s/t*log(1-t/q2)

      t0 = dcmplx(reale,immag)

      end


      subroutine box_neg_neg(s12,s23,mom4sq,t0)
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h' 
      real *8 mom4sq,s12,s23,t,u,q2,tau,h,mu2
      real *8 reale,immag
      complex *16 t0
      real *8 dilog
      external dilog 

      mu2=st_muren2
      
      q2 = mom4sq
      t = s12
      u = s23
      tau = q2-t
      h = (1-q2/t)*(1-q2/u)

      reale = 2/t/u*(-pi**2/6d0-(log(-q2/t))**2/2d0-
     $     log(1-tau/u)*log((u-q2)/t)-log(-mu2/t)*log(1-u/q2)+
     $     log(-mu2/u)*log((u-q2)/t)+(log(-mu2/u))**2/2d0+
     $     (log((u-tau)/t))**2/2d0+(log(h))**2/2d0+dilog(tau/u)+
     $     dilog(t/(u-tau))+dilog(1/h))
      immag = -2*pi/t/u*(log(mu2/q2)+log(h))

      t0 = dcmplx(reale,immag)

      end



      function B0_FG_mass(mom,m)
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h'

      real *8 mom(0:3),momsq,mu2,m,m2,rhop,rhom,beta,tiny
      complex *16 B0_FG_mass
      real *8 dotp
      external dotp

      tiny = 1d-5

      momsq = dotp(mom,mom)
      m2=m**2
      mu2=st_muren2

      beta=sqrt(abs(1-4*m2/momsq))
      rhop = (1+beta)/2d0
      rhom = (1-beta)/2d0

      if(momsq.ge.4*m2) then
         B0_FG_mass=dcmplx(log(mu2/m2)+2+(rhop-rhom)*log(rhom/rhop),
     $        pi*(rhop-rhom))
      elseif(momsq.gt.tiny.and.momsq.lt.4*m2) then
         B0_FG_mass=dcmplx(log(mu2/m2)+2-beta*(pi-2*atan(beta)),0d0)
      elseif(momsq.lt.-tiny) then
         B0_FG_mass=dcmplx(log(mu2/m2)+2+(rhop-rhom)*log(-rhom/rhop),
     $        0d0)
      elseif(abs(momsq).lt.tiny) then
         B0_FG_mass=dcmplx(log(mu2/m2),0d0)
      endif 

      end


      function C0_FG_mass(mom1,mom2,m)
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h'

      real *8 mom1(0:3),mom2(0:3),mom1sq,mom2sq,mu2,m,m2,tiny
      real *8 beta1,beta2,coef
      complex *16 C0_FG_mass,part1,part2
      real *8 dotp
      external dotp

      tiny = 1d-5

      mom1sq = dotp(mom1,mom1)
      mom2sq = dotp(mom2,mom2)
      m2=m**2
      mu2=st_muren2

      coef = 1/(2*(mom1sq-mom2sq))
      beta1 = sqrt(abs(1-4*m2/mom1sq))
      beta2 = sqrt(abs(1-4*m2/mom2sq))

      if(mom1sq.ge.4*m2) then
         part1 = dcmplx(log((1+beta1)/(1-beta1)),-pi)
      elseif(mom1sq.gt.tiny.and.mom1sq.lt.4*m2) then
         part1 = dcmplx(0d0,2*atan(beta1)-pi)
      elseif(mom1sq.lt.-tiny) then
         part1 = dcmplx(log((beta1+1)/(beta1-1)),0d0)
      endif

      if(mom2sq.ge.4*m2) then
         part2 = dcmplx(log((1+beta2)/(1-beta2)),-pi)
      elseif(mom2sq.gt.tiny.and.mom2sq.lt.4*m2) then
         part2 = dcmplx(0d0,2*atan(beta2)-pi)
      elseif(mom2sq.lt.-tiny) then
         part2 = dcmplx(log((beta2+1)/(beta2-1)),0d0)
      endif
         
      C0_FG_mass = coef*(part1**2-part2**2)

      end


      function theta(a)
      implicit none
      integer theta
      real *8 a

      if(a.gt.0) then
         theta = 1
      elseif(a.lt.0) then
         theta = 0
      endif        

      end

c###########################################################################
c###########################################################################
c###########################################################################
c SCALAR INTEGRALS WITH ONELOOP

      function B0(mom,m)
      implicit none
      real *8 mom(0:3),momsq,m,m2
      complex *16 ris(0:2),B0
      real *8 dotp
      external dotp

      m2 = m**2
      momsq = dotp(mom,mom)
      
      if(abs(momsq).lt.1d-8) then
         momsq = 0d0
      endif

      call avh_olo_b0m(ris,momsq,m2,m2)
      B0 = ris(0)
      end


      function C0(mom1,mom2,m)
      implicit none
      real *8 mom1(0:3),mom2(0:3),mom3(0:3)
      real *8 mom1sq,mom2sq,mom3sq,m,m2
      complex *16 ris(0:2),C0
      real *8 dotp
      external dotp

      m2 = m**2
      mom3 = -mom1-mom2
      
      mom1sq = dotp(mom1,mom1)
      mom2sq = dotp(mom2,mom2)
      mom3sq = dotp(mom3,mom3)

      if(abs(mom1sq).lt.1d-8) then
         mom1sq = 0d0
      endif
      if(abs(mom2sq).lt.1d-8) then
         mom2sq = 0d0
      endif
      if(abs(mom3sq).lt.1d-8) then
         mom3sq = 0d0
      endif

      call avh_olo_c0m(ris,mom1sq,mom2sq,mom3sq,m2,m2,m2)
      C0 = ris(0)
      end

      function D0(mom1,mom2,mom3,m)
      implicit none
      real *8 mom1(0:3),mom2(0:3),mom3(0:3),mom4(0:3)
      real *8 mom1sq,mom2sq,mom3sq,mom4sq,s12,s23,m,m2
      complex *16 ris(0:2),D0,D1
      real *8 dotp
      external dotp

      m2 = m**2
      mom4 = -mom1-mom2-mom3
      
      mom1sq = dotp(mom1,mom1)
      mom2sq = dotp(mom2,mom2)
      mom3sq = dotp(mom3,mom3)
      mom4sq = dotp(mom4,mom4)

      s12 = dotp(mom1+mom2,mom1+mom2)
      s23 = dotp(mom2+mom3,mom2+mom3)

      if(abs(mom1sq).lt.1d-8) then
         mom1sq = 0d0
      endif
      if(abs(mom2sq).lt.1d-8) then
         mom2sq = 0d0
      endif
      if(abs(mom3sq).lt.1d-8) then
         mom3sq = 0d0
      endif
      if(abs(mom4sq).lt.1d-8) then
         mom4sq = 0d0
      endif

      call avh_olo_d0m(ris,mom1sq,mom2sq,mom3sq,mom4sq,s12,s23,
     $     m2,m2,m2,m2)
      D0 = ris(0)

      end

c###########################################################################
c###########################################################################
c###########################################################################
c SCALAR INTEGRALS WITH QCDLOOP

c$$$      function B0(mom,m)
c$$$      implicit none
c$$$      include 'pwhg_st.h'
c$$$      real *8 mom(0:3),momsq,m,mu2,m2
c$$$      complex *16 B0,qlI2
c$$$      real *8 dotp
c$$$      external dotp
c$$$
c$$$      m2 = m**2
c$$$      mu2 = st_muren2
c$$$      momsq = dotp(mom,mom)
c$$$
c$$$      B0=qlI2(momsq,m2,m2,mu2,0)
c$$$      end
c$$$
c$$$      function C0(mom1,mom2,m)
c$$$      implicit none
c$$$      include 'pwhg_st.h'
c$$$      real *8 mom1(0:3),mom2(0:3),mom3(0:3)
c$$$      real *8 mom1sq,mom2sq,mom3sq,m,m2,mu2
c$$$      complex *16 C0,qlI3
c$$$      real *8 dotp
c$$$      external dotp
c$$$
c$$$      m2 = m**2
c$$$      mu2 = st_muren2
c$$$
c$$$      mom3 = -mom1-mom2
c$$$      
c$$$      mom1sq = dotp(mom1,mom1)
c$$$      mom2sq = dotp(mom2,mom2)
c$$$      mom3sq = dotp(mom3,mom3)
c$$$
c$$$      C0=qlI3(mom1sq,mom2sq,mom3sq,m2,m2,m2,mu2,0)  
c$$$      end
c$$$
c$$$      function D0(mom1,mom2,mom3,m)
c$$$      implicit none
c$$$      include 'pwhg_st.h'
c$$$      real *8 mom1(0:3),mom2(0:3),mom3(0:3),mom4(0:3)
c$$$      real *8 mom1sq,mom2sq,mom3sq,mom4sq,mu2,s12,s23,m,m2
c$$$      complex *16 D0,qlI4
c$$$      real *8 dotp
c$$$      external dotp
c$$$
c$$$      m2 = m**2
c$$$      mu2 = st_muren2
c$$$
c$$$      mom4 = -mom1-mom2-mom3
c$$$      
c$$$      mom1sq = dotp(mom1,mom1)
c$$$      mom2sq = dotp(mom2,mom2)
c$$$      mom3sq = dotp(mom3,mom3)
c$$$      mom4sq = dotp(mom4,mom4)
c$$$
c$$$      s12 = dotp(mom1+mom2,mom1+mom2)
c$$$      s23 = dotp(mom2+mom3,mom2+mom3)
c$$$
c$$$c      D0=qlI4(mom1sq,mom2sq,mom3sq,mom4sq,s12,s23,m2,m2,m2,m2,mu2,0)
c$$$      end



c ############################################################################
      DOUBLE PRECISION FUNCTION DILOG(X)                                       
                                                                                
      DOUBLE PRECISION X,Y,T,S,A,PI3,PI6,ZERO,ONE,HALF,MALF,MONE,MTWO           
      DOUBLE PRECISION C(0:18),H,ALFA,B0,B1,B2                                  
                                                                                
      DATA ZERO /0.0D0/, ONE /1.0D0/                                            
      DATA HALF /0.5D0/, MALF /-0.5D0/, MONE /-1.0D0/, MTWO /-2.0D0/            
      DATA PI3 /3.28986 81336 96453D0/, PI6 /1.64493 40668 48226D0/             
                                                                                
      DATA C( 0) / 0.42996 69356 08137 0D0/                                     
      DATA C( 1) / 0.40975 98753 30771 1D0/                                     
      DATA C( 2) /-0.01858 84366 50146 0D0/                                     
      DATA C( 3) / 0.00145 75108 40622 7D0/                                     
      DATA C( 4) /-0.00014 30418 44423 4D0/                                     
      DATA C( 5) / 0.00001 58841 55418 8D0/                                     
      DATA C( 6) /-0.00000 19078 49593 9D0/                                     
      DATA C( 7) / 0.00000 02419 51808 5D0/                                     
      DATA C( 8) /-0.00000 00319 33412 7D0/                                     
      DATA C( 9) / 0.00000 00043 45450 6D0/                                     
      DATA C(10) /-0.00000 00006 05784 8D0/                                     
      DATA C(11) / 0.00000 00000 86121 0D0/                                     
      DATA C(12) /-0.00000 00000 12443 3D0/                                     
      DATA C(13) / 0.00000 00000 01822 6D0/                                     
      DATA C(14) /-0.00000 00000 00270 1D0/                                     
      DATA C(15) / 0.00000 00000 00040 4D0/                                     
      DATA C(16) /-0.00000 00000 00006 1D0/                                     
      DATA C(17) / 0.00000 00000 00000 9D0/                                     
      DATA C(18) /-0.00000 00000 00000 1D0/                                     
                                                                                
      IF(X .EQ. ONE) THEN                                                       
       DILOG=PI6                                                               
       RETURN                                                                   
      ELSE IF(X .EQ. MONE) THEN                                                 
       DILOG=MALF*PI6                                                          
       RETURN                                                                   
      END IF                                                                    
      T=-X                                                                      
      IF(T .LE. MTWO) THEN                                                      
       Y=MONE/(ONE+T)                                                           
       S=ONE                                                                    
       A=-PI3+HALF*(LOG(-T)**2-LOG(ONE+ONE/T)**2)                               
      ELSE IF(T .LT. MONE) THEN                                                 
       Y=MONE-T                                                                 
       S=MONE                                                                   
       A=LOG(-T)                                                                
       A=-PI6+A*(A+LOG(ONE+ONE/T))                                              
      ELSE IF(T .LE. MALF) THEN                                                 
       Y=(MONE-T)/T                                                             
       S=ONE                                                                    
       A=LOG(-T)                                                                
       A=-PI6+A*(MALF*A+LOG(ONE+T))                                             
      ELSE IF(T .LT. ZERO) THEN                                                 
       Y=-T/(ONE+T)                                                             
       S=MONE                                                                   
       A=HALF*LOG(ONE+T)**2                                                     
      ELSE IF(T .LE. ONE) THEN                                                  
       Y=T                                                                      
       S=ONE                                                                    
       A=ZERO                                                                   
      ELSE                                                                      
       Y=ONE/T                                                                  
       S=MONE                                                                   
       A=PI6+HALF*LOG(T)**2                                                     
      END IF                                                                    
                                                                                
      H=Y+Y-ONE                                                                 
      ALFA=H+H                                                                  
      B1=ZERO                                                                   
      B2=ZERO                                                                   
      DO 1 I = 18,0,-1                                                          
      B0=C(I)+ALFA*B1-B2                                                        
      B2=B1                                                                     
    1 B1=B0                                                                     
      DILOG=-(S*(B0-H*B2)+A)                                                   
      RETURN                                                                    
      END                                                                      

