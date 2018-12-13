      subroutine setreal(p,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real*8 p(0:3,nlegreal),amp2, amp2edm, amp2xi, damp2, amp2w
      real*8 amp2yuk
      integer rflav(nlegreal)
      real*8 pp(0:3,nlegreal), pp2(0:3,nlegreal), pp3(0:3,nlegreal)
      real *8 pp4(0:3,nlegreal), pp5(0:3,nlegreal), pp6(0:3,nlegreal)
      real*8 dotp
      external dotp

      amp2=0d0
      amp2edm = 0d0
      amp2xi = 0d0
      damp2 = 0d0
      amp2w = 0d0
      amp2yuk = 0d0
      pp=p
      pp2 = p
      pp3 = p
      pp4 = p
      pp5 = p
      pp6 = p

c     if it's W- PRODUCTION then pp=p, no exchange p4 <--> p5!!
      if(rflav(4).lt.0)then
c     it's  W+ PRODUCTION!!
         call swap_momenta(pp(:,4),pp(:,5))
      endif

      if (rflav(1).gt.0.and.rflav(2).eq.0) then
c     quark emission, rflav(1)>0
         call swap_momenta_minus(pp(:,2),pp(:,6))

      elseif (rflav(1).eq.0.and.rflav(2).lt.0) then
c     antiquark emission, rflav(1)>0
         call swap_momenta_minus(pp(:,1),pp(:,6))

      elseif (rflav(1).lt.0.and.rflav(2).gt.0) then
c     gluon emission, rflav(1)<0
         call swap_momenta(pp(:,1),pp(:,2))

      elseif (rflav(1).lt.0.and.rflav(2).eq.0) then
c     antiquark emission, rflav(1)<0
         call swap_momenta_minus(pp(:,2),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))

      elseif (rflav(1).eq.0.and.rflav(2).gt.0) then
c     quark emission, rflav(1)<0
         call swap_momenta_minus(pp(:,1),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))
      endif      

      call amplitude(pp,rflav,amp2)
      
      if(wdm) then
         if (rflav(1).eq.0) then
         call swap_momenta(pp2(:,1),pp2(:,2))
	 endif
    
	 call amplitude_wdm(pp2,rflav,amp2edm)
	 call amplitude_xi(pp3,rflav,amp2xi)
	 call amplitude_delta(pp4,rflav,damp2)
	 call amplitude_ww(pp5,rflav,amp2w)
	 call amplitude_yuk(pp6,rflav,amp2yuk)
      endif
 
      amp2 = amp2 + amp2edm + amp2xi + damp2 + amp2w + amp2yuk
      
      
      end

      subroutine swap_momenta(p1,p2)
      implicit none
      real * 8 p1(0:3),p2(0:3),tmp(0:3)
      tmp=p1
      p1=p2
      p2=tmp
      end


      subroutine swap_momenta_minus(p1,p2)
      implicit none
      real * 8 p1(0:3),p2(0:3)
      call swap_momenta(p1,p2)
      p1=-p1
      p2=-p2
      end


c     computes the total squared amplitude of the real diagram,
c     with all the coefficients
      subroutine amplitude(pp,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal)
      integer rflav(nlegreal)
      integer i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props,t1
      real * 8 gw,mw,colfac, vev
      external dotp
      real * 8 dotp

      n=3d0
      gw=ph_geff
      mw=ph_Wmass
      vev = ph_vev

      p12=dotp(pp(0,1),pp(0,2))
      p13=dotp(pp(0,1),pp(0,3))
      p14=dotp(pp(0,1),pp(0,4))
      p23=dotp(pp(0,2),pp(0,3))
      p24=dotp(pp(0,2),pp(0,4))
      p33=dotp(pp(0,3),pp(0,3))
      p34=dotp(pp(0,3),pp(0,4))
      p16=dotp(pp(0,1),pp(0,6))
      p26=dotp(pp(0,2),pp(0,6))
      p36=dotp(pp(0,3),pp(0,6))
      p46=dotp(pp(0,4),pp(0,6))

      t1 = (-4*p24+2*p46)/p26*p16-4*p24+2*p14+(-4*p46*p12+2*p24*p34+2*p2
     #4*p46+2*p24*p36-4*p24*p13+2*p14*p46+8*p24*p12+p24*p33-4*p24*p14+2*
     #p46*p13)/p26-2*p24/p16*p26+(-2*p24*p14+4*p24*p12+2*p14*p13+2*p24*p
     #46-2*p24*p13+2*p14**2+2*p24*p36-2*p14*p12)/p16+(-2*p12*p46*p13-2*p
     #12*p24*p36+4*p12*p24*p14-2*p12*p14*p46-2*p12*p24*p46+2*p46*p12**2+
     #4*p12*p24*p13-4*p24*p12**2)/p16/p26

      t0 = -128*t1

c     COLOUR FACTORS, QUARK-GLUON SWITCH AND CKM MATRIX
c     colour factors: CF*n from sum over initial colours, 1/4 from
c     average over initial spins, 1/n from average over quark colours
c     and 1/(n^2-1) from average over gluon colours
      if(.not.rflav(6).eq.0) then
         amp2=-1d0              !quark-gluon switch
         colfac=CF*n/4d0/n/(n**2-1d0)
         j=rflav(6)
         if (rflav(1).eq.0) then
            i=rflav(2)
         else
            i=rflav(1)
         endif
      else
         amp2=1d0               !no quark-gluon switch
         colfac=CF*n/4d0/n**2
         i=rflav(1)
         j=rflav(2)
      endif
      if (mod(i,2).eq.0) then
         amp2=amp2*ph_CKM(abs(i)/2,(abs(j)+1)/2)**2
      else
         amp2=amp2*ph_CKM(abs(j)/2,(abs(i)+1)/2)**2
      endif

      amp2=amp2*colfac*t0

c     coupling constants and W mass
c     factor gw^2/8 from each weak vertex: two vertices, gw^4/64
c     factor 4mw^4/v^2 from Higgs vertex; but v^2 = 4mw^2/gw^2
c     from Higgs vertex: mw^2 gw^2
c     factor 4*pi*alpha_s from strong factor: strip off alpha_s/2pi
c     from strong vertex: 8 pi^2
      amp2=amp2 * (gw**2/8d0) * (gw**2/8d0) * 
     .(4d0*mw**4/vev**2) *(8d0*Pi**2)
c
c     W propagators
      props = 1/((2*p12-2*p16-2*p26-mw**2)**2+ph_Wwidth**2*mw**2)/((-2*p
     #46-2*p34+2*p14+2*p24-mw**2)**2+ph_Wwidth**2*mw**2)
      amp2=amp2*props
      end


c$$$
c$$$
c$$$      subroutine realcolour_lh
c$$$c Wrapper subroutine to call the MadGraph code to associate
c$$$c a (leading) color structure to an event.
c$$$      implicit none
c$$$      include 'nlegborn.h'
c$$$      include 'LesHouches.h'
c$$$      integer rflav(nlegreal),color(2,nlegreal)
c$$$      integer i,j
c$$$      do i=1,nlegreal
c$$$         rflav(i)=idup(i)
c$$$         if (rflav(i).eq.21) rflav(i)=0
c$$$      enddo
c$$$      call real_color(rflav,color)
c$$$      do i=1,2
c$$$         do j=1,nlegreal
c$$$            icolup(i,j)=color(i,j)
c$$$         enddo
c$$$      enddo
c$$$      end


      subroutine amplitude_wdm(pp,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal)
      integer rflav(nlegreal)
      integer i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props,t1
      real * 8 p15,p25,p35,p45,p56
      real * 8 gw,mw,colfac, rg
      real * 8 props1, props2
      real * 8 s, s2, tk, uk, vev
      real * 8 amp2u, amp2d, amp2qgd, amp2qgu
      external dotp
      real * 8 dotp
      
      
      n=3d0
      gw=ph_geff
      mw=ph_Wmass
      vev = ph_vev

      
      p12=dotp(pp(0,1),pp(0,2))
      p13=dotp(pp(0,1),pp(0,3))
      p14=dotp(pp(0,1),pp(0,4))
      p23=dotp(pp(0,2),pp(0,3))
      p24=dotp(pp(0,2),pp(0,4))
      p33=dotp(pp(0,3),pp(0,3))
      p34=dotp(pp(0,3),pp(0,4))
      p16=dotp(pp(0,1),pp(0,6))
      p26=dotp(pp(0,2),pp(0,6))
      p36=dotp(pp(0,3),pp(0,6))
      p46=dotp(pp(0,4),pp(0,6))
      p15=dotp(pp(0,1),pp(0,5))
      p25=dotp(pp(0,2),pp(0,5))
      p35=dotp(pp(0,3),pp(0,5))
      p45=dotp(pp(0,4),pp(0,5))
      p56=dotp(pp(0,5),pp(0,6))
      
c     some invariants      
      s =    2d0*p12
      s2 =   2d0*p45
      tk = - 2d0*p16
      uk = - 2d0*p26
      
      
c     W propagators
c     s propagator
      props1 = 1d0/((s + tk + uk -mw**2)**2+ph_Wwidth**2*mw**2)
c     lepton-neutrino decay     
      props2 = 1d0/((s2-mw**2)**2+ph_Wwidth**2*mw**2)

      
c     Amplitude squared. Color and spin sum already included      
c     q qbar channel     
c     ReGD**2 + ImGD**2
      amp2d = -4d0 * s2 * ( (p24 - p46)*(p46*s + p24*tk) + p14**2*uk  
     .+ p24*p46*uk -  p14 *(- p46*(s + tk - uk) + p24*(2*s + tk + uk)) )
      
      amp2d = amp2d  -2d0 * mw**2 * props1 *( s + tk + uk - mw**2)*( 
     .- (s + tk)*( 2d0*(p24 - p46)*(2d0*p24*p56 - 2d0*p25*p46 + s*s2) 
     .- p46*s2*tk)
     .+ (-4d0*p24**2*p56 + p46*(4d0*p25*p46 + 3d0*s*s2 - 2d0*s2*tk)  
     .+  p24* (4d0*p25*p46 - 4d0* p56*p46 - 2d0*s*s2 + s2*tk) )*uk 
     .+ s2*uk**2*(p46-p24) + p14*( -2d0*s*(4d0*p24*(p15 + p25 - p56)  
     .- 2d0*p46*(p15 - p25 + p56) + s*s2)
     .- 2d0*(2d0*p24*(p15 + 3d0*p25 - 2d0*p56) 
     .- 2d0*(p15 + 2d0*p25 - p56)*p46 + s*s2)*tk - s2*tk**2 
     .+ (-4d0*p24*(3d0* p15 + p25 - 2d0*p56)  
     .+ 4d0*(p15 - 4d0*p25 + p56)*p46 + s2*(-2*s + tk))*uk)
     .+ 4d0*p15*(-p24*p46*(s + 4*tk - 2*uk) - p46**2*(s - tk + uk)  
     .+ p24**2*(2d0*s + 3d0*tk + uk))
     .+ 4d0*p14**2*(-p56*(s + tk + uk) + p25*(2d0*s + tk + 3d0*uk)) )
     
      amp2d = amp2d + mw**4 * props1 *(
     .  8d0*p24*p25*s**2 - 8d0*p46*p56*s**2 + 2d0*s**3*s2 
     .+ 24d0*p24*p25*s*tk - 16d0*p25*p46*s*tk - 8d0*p24*p56*s*tk 
     .+ 4d0*s**2*s2*tk + 12d0*p24*p25*tk**2 - 12d0*p25*p46*tk**2 
     .- 4d0*p24*p56*tk**2 + 4d0*p46*p56*tk**2 + 3d0*s*s2*tk**2 
     .+ s2*tk**3 + (4d0*s*(2d0*p24*(p25 + p56) + s*s2) 
     .+ 2d0*(8d0*p24*p25 + 4d0*p25*p46 - 4d0*p46*p56 + s*s2)*tk 
     .- s2*tk**2)*uk + (4d0*(p24 + p46)*(p25 + p56) 
     .+ s2*(3d0*s - tk))*uk**2 + s2*uk**3 - 4d0*p14*(-(p56*(tk - uk)
     .*(2d0*s + tk + uk)) + p25*(2*s**2 + 4*s*(tk + uk) 
     .+ (tk + uk)*(tk + 3*uk))) + 4d0*p15*(
     .-(p24*(2d0*s**2 + 4d0*s*(tk + uk) + (tk + uk)*(3d0*tk + uk)))
     .+ p46*(-4d0*s*uk + (tk - uk)*(tk + 3d0*uk)) 
     .+p14*(2d0*s**2 + 2d0*s*(tk + 3d0*uk) + (tk + uk)*(tk + 3d0*uk))))  
	
      
c     ReGU**2 + ImGU**2
      amp2u = -4d0 * s2 * (  (p25 - p56)*(p56*s + p25*tk) + p15**2*uk 
     . + p25*p56*uk - p15 *(- p56*(s + tk - uk) + p25*(2*s + tk + uk)) )
      
      amp2u = amp2u - 2d0 * mw**2 * props1 *( s + tk + uk - mw**2)*(   	
     .-((s + tk)*(2*(p25 - p56)*(2d0*p25*p46 - 2d0*p24*p56 + s*s2) 
     .- p56*s2*tk)) + (-4d0*p25**2*p46 + p56*(4d0*p24*p56 + 3d0*s*s2 
     .- 2d0*s2*tk) + p25*(4d0*p24*p56 - 4d0*p46*p56 - 2d0*s*s2 
     .+ s2*tk))*uk + (-p25 + p56)*s2*uk**2 + p15*(-2d0*s*(
     . 4d0*p25*(p14 + p24 - p46) - 2d0*(p14 - p24 + p46)*p56 + s*s2) 
     .- 2d0*(2d0*p25*(p14 + 3d0*p24 - 2d0*p46) - 2d0*(p14 + 2d0*p24 
     .- p46)*p56 + s*s2)*tk - s2*tk**2 + (-4d0*p25*(3d0*p14 + p24 
     .- 2d0*p46) + 4d0*(p14 -4d0*p24 + p46)*p56 + s2*(-2d0*s + tk))*uk)
     . + 4d0*p14*(-(p25*p56*(s + 4d0*tk - 2d0*uk))
     .- p56**2*(s - tk + uk) + p25**2*(2*s + 3*tk + uk)) 
     .+ 4d0*p15**2*(-(p46*(s + tk + uk)) + p24*(2d0*s + tk + 3d0*uk)) )

      amp2u = amp2u + mw**4 * props1 *(-8d0*p14*p25*s**2 
     .+ 8d0*p24*p25*s**2 - 8d0*p46*p56*s**2 + 2d0*s**3*s2 
     .- 16d0*p14*p25*s*tk + 24d0*p24*p25*s*tk - 8d0*p25*p46*s*tk 
     .- 16d0*p24*p56*s*tk + 4d0*s**2*s2*tk - 12d0*p14*p25*tk**2 
     .+ 12d0*p24*p25*tk**2 - 4d0*p25*p46*tk**2 + 4d0*p14*p56*tk**2 
     .- 12d0*p24*p56*tk**2 + 4d0*p46*p56*tk**2 + 3d0*s*s2*tk**2 
     .+ s2*tk**3 + (4d0*s*(2*p25*(p24 + p46) - 4d0*p14*(p25 + p56) 
     .+ s*s2) + 2d0*(8d0*(-p14 + p24)*p25 + 4d0*(p14 + p24 - p46)*p56 
     .+ s*s2)*tk - s2*tk**2)*uk + (4d0*(p24 + p46)*(p25 + p56) 
     .- 4d0*p14*(p25 + 3*p56) + s2*(3d0*s - tk))*uk**2 + s2*uk**3 
     .+ 4d0*p15*(p46*(tk - uk)*(2*s + tk + uk) - p24*(2d0*s**2 
     .+ 4d0*s*(tk + uk) + (tk + uk)*(tk + 3*uk)) 
     .+ p14*(2*s**2 + 2*s*(tk + 3*uk) + (tk + uk)*(tk + 3*uk))) )
    
    
      amp2d = 2d0/3d0 *amp2d * props2 * gw**4/vev**4/tk/uk
      amp2u = 2d0/3d0 *amp2u * props2 * gw**4/vev**4/tk/uk
    
c     color factor  and alpha_s, and normalize to as/2pi
      amp2d = amp2d * CF * (8d0*pi**2)
      amp2u = amp2u * CF * (8d0*pi**2)
    
    
c     q g channel 
c     p1 must be the quark, p2 the gluon, otherwise change momenta
c     Re GD**2 + ImGD**2
      amp2qgd =  4 * s2 * ( -((p24 - p46)*(p46*s + p24*tk)) 
     .+ p14**2*uk + p24*p46*uk + p14*(-(p24*(s + tk - uk)) 
     .+ p46*(s + 2*tk + uk)))
      
      
      amp2qgd = amp2qgd -2 * mw**2 * props1*( s + tk + uk - mw**2) *( 
     .- 4*p15*(p24 - p46)*((p24 - 3*p46)*s - (p24 + 2*p46)*tk) 
     .+ (s + tk)*(-4*p24**2*p56 - 2*p46*(2*p25*p46 + s2*tk) 
     .+ p24*(4*p46*(p25 + p56) + s2*(s + 2*tk))) + 4*p15*(p24**2 
     .- 2*p24*p46 - p46**2)*uk + (4*p24**2*p56 + p46*(-4*p25*p46 
     .+ s2*(s - 2*tk)) + p24*(-4*p25*p46 + 4*p46*p56 - 2*s*s2 
     .+ 3*s2*tk))*uk + (p24 - p46)*s2*uk**2 - 4*p14**2*(
     .  p25*(s + tk + uk) - p56*(s + 2*tk + 3*uk)) 
     .+ p14*(-8*p24*p56*s + 12*p46*p56*s + s**2*s2 + 4*p24*p56*tk
     .+ 8*p46*p56*tk + 2*s*s2*tk + 2*s2*tk**2 + (16*p24*p56 
     .+ 4*p46*p56 - s*s2 + 2*s2*tk)*uk + 4*p25*(p24*(s - tk - uk) 
     .- 2*p46*(s + tk + uk)) + 4*p15*(p24*(s + tk + uk) 
     .- p46*(s + 2*tk + 3*uk))) )

     
      amp2qgd = amp2qgd + mw**4 * props1 *( 4*p15*p24*s**2 
     .- 4*p24*p25*s**2 - 12*p15*p46*s**2 + 4*p25*p46*s**2 
     .+ 12*p24*p56*s**2 - 12*p46*p56*s**2 - s**3*s2 
     .- 16*p15*p46*s*tk + 8*p25*p46*s*tk + 16*p24*p56*s*tk 
     .- 24*p46*p56*s*tk - 3*s**2*s2*tk + 8*p24*p25*tk**2 
     .- 8*p15*p46*tk**2 - 8*p46*p56*tk**2 - 4*s*s2*tk**2 
     .- 2*s2*tk**3 + (s*(8*p24*p25 + 8*p15*(p24 - 2*p46) 
     .- 8*(p24 + 2*p46)*p56 + s*s2) - 2*(8*p15*(p24 + p46) 
     .+ 4*p46*(p25 + p56) + s*s2)*tk - 4*s2*tk**2)*uk 
     .- (4*p15*(3*p24 + p46) + 4*(p24 + p46)*(p25 + p56) 
     .- s2*(s - 3*tk))*uk**2 - s2*uk**3 
     .+ 4*p14*(-((p15 - p25 + p56)*s**2) - 2*(p15 - p25 + 2*p56)*s*tk 
     .- 2*(p15 + p56)*tk**2 - 2*(2*(p15 + p56)*s + (3*p15 
     .+ p25 + 2*p56)*tk)*uk - (3*p15 + p25 + 3*p56)*uk**2))
    
c     Re GU**2 + ImGU**2    
      amp2qgu =  4 * s2 * ( -((p25 - p56)*(p56*s + p25*tk)) 
     .+ p15**2*uk + p25*p56*uk + p15*(-(p25*(s + tk - uk)) 
     .+ p56*(s + 2*tk + uk)))
     
      amp2qgu = amp2qgu -2 * mw**2 * props1 *( s + tk + uk - mw**2)*( 
     . -4*p14*(p25 - p56)*((p25 - 3*p56)*s - (p25 + 2*p56)*tk) 
     .+ (s + tk)*(-4*p25**2*p46 - 2*p56*(2*p24*p56 + s2*tk) 
     .+ p25*(4*(p24 + p46)*p56 + s2*(s + 2*tk))) + 4*p14*(p25**2 
     .- 2*p25*p56 - p56**2)*uk + (4*p25**2*p46 + p56*(-4*p24*p56 
     .+ s2*(s - 2*tk)) + p25*(-4*p24*p56 + 4*p46*p56 - 2*s*s2 
     .+ 3*s2*tk))*uk + (p25 - p56)*s2*uk**2 - 4*p15**2*(
     .  p24*(s + tk + uk) - p46*(s + 2*tk + 3*uk)) + p15*(
     .- 8*p25*p46*s + 12*p46*p56*s + s**2*s2 + 4*p25*p46*tk 
     .+ 8*p46*p56*tk + 2*s*s2*tk + 2*s2*tk**2 + (16*p25*p46 
     .+ 4*p46*p56 -s*s2 + 2*s2*tk)*uk + 4*p24*(p25*(s - tk - uk) 
     .- 2*p56*(s + tk + uk)) + 4*p14*(p25*(s + tk + uk) 
     .- p56*(s + 2*tk + 3*uk))) )
     
      amp2qgu = amp2qgu + mw**4 * props1 *( 4*p25*p14*s**2
     .- 4*p24*p25*s**2 + 12*p25*p46*s**2 - 12*p14*p56*s**2 
     .+ 4*p24*p56*s**2 - 12*p46*p56*s**2 - s**3*s2 
     .+ 16*p25*p46*s*tk - 16*p14*p56*s*tk + 8*p24*p56*s*tk 
     .- 24*p46*p56*s*tk - 3*s**2*s2*tk + 8*p24*p25*tk**2 
     .- 8*p14*p56*tk**2 - 8*p46*p56*tk**2 - 4*s*s2*tk**2 
     .- 2*s2*tk**3 - (s*(-8*p25*(p14 + p24 - p46) 
     .+ 16*(p14 + p46)*p56 - s*s2) + 2*(4*(p24 + p46)*p56 
     .+ 8*p14*(p25 + p56) + s*s2)*tk + 4*s2*tk**2)*uk - (4*(p24 
     .+ p46)*(p25 + p56) + 4*p14*(3*p25 + p56) 
     .- s2*(s - 3*tk))*uk**2 - s2*uk**3 
     .- 4*p15*(-(p24*(s - uk)*(s + 2*tk + uk)) + p46*(s**2 + 4*s*tk 
     .+ 2*tk**2 + 4*(s + tk)*uk + 3*uk**2) + p14*(s**2 + 2*tk**2 
     .+ 6*tk*uk + 3*uk**2 + 2*s*(tk + 2*uk))))
    
      amp2qgd = 1d0/3d0 *amp2qgd * props2 * gw**4/vev**4/s/uk
      amp2qgu = 1d0/3d0 *amp2qgu * props2 * gw**4/vev**4/s/uk
    
c     color factor  and alpha_s, and normalize to as/2pi
      amp2qgd = amp2qgd  * (8d0*pi**2)
      amp2qgu = amp2qgu  * (8d0*pi**2)
    

c     decide what to return, and multiply by the coupling    
      if(rflav(6).eq.0.and.rflav(1).ne.0.and.rflav(2).ne.0) then
	i = rflav(1)
	j = rflav(2)
	if(mod(abs(i),2).eq.0) then
	  amp2=amp2u*( ph_ReGUw(abs(i)/2,(abs(j)+1)/2)**2 
     .               + ph_ImGUw(abs(i)/2,(abs(j)+1)/2)**2 ) 
     .       + amp2d*( ph_ReGDw(abs(i)/2,(abs(j)+1)/2)**2 
     .               + ph_ImGDw(abs(i)/2,(abs(j)+1)/2)**2 )

	elseif(mod(abs(i),2).eq.1) then   
	  amp2=amp2u*( ph_ReGUw(abs(j)/2,(abs(i)+1)/2)**2 
     .               + ph_ImGUw(abs(j)/2,(abs(i)+1)/2)**2 ) 
     .       + amp2d*( ph_ReGDw(abs(j)/2,(abs(i)+1)/2)**2 
     .               + ph_ImGDw(abs(j)/2,(abs(i)+1)/2)**2 )
	endif
      elseif(rflav(6).ne.0.and.rflav(1).eq.0) then
	i = rflav(2)
	j = rflav(6)
	if(mod(abs(i),2).eq.0) then
	  amp2=amp2qgu*( ph_ReGUw(abs(i)/2,(abs(j)+1)/2)**2 
     .                 + ph_ImGUw(abs(i)/2,(abs(j)+1)/2)**2 ) 
     .       + amp2qgd*( ph_ReGDw(abs(i)/2,(abs(j)+1)/2)**2 
     .                 + ph_ImGDw(abs(i)/2,(abs(j)+1)/2)**2 )

	elseif(mod(abs(i),2).eq.1) then   
	  amp2=amp2qgu*( ph_ReGUw(abs(j)/2,(abs(i)+1)/2)**2 
     .                 + ph_ImGUw(abs(j)/2,(abs(i)+1)/2)**2 ) 
     .       + amp2qgd*( ph_ReGDw(abs(j)/2,(abs(i)+1)/2)**2 
     .                 + ph_ImGDw(abs(j)/2,(abs(i)+1)/2)**2 )
	endif
      elseif(rflav(6).ne.0.and.rflav(2).eq.0) then	  
	i = rflav(1)
	j = rflav(6)
	if(mod(abs(i),2).eq.0) then
	  amp2=amp2qgu*( ph_ReGUw(abs(i)/2,(abs(j)+1)/2)**2 
     .                 + ph_ImGUw(abs(i)/2,(abs(j)+1)/2)**2 ) 
     .       + amp2qgd*( ph_ReGDw(abs(i)/2,(abs(j)+1)/2)**2 
     .                 + ph_ImGDw(abs(i)/2,(abs(j)+1)/2)**2 )

	elseif(mod(abs(i),2).eq.1) then   
	  amp2=amp2qgu*( ph_ReGUw(abs(j)/2,(abs(i)+1)/2)**2 
     .                 + ph_ImGUw(abs(j)/2,(abs(i)+1)/2)**2 ) 
     .       + amp2qgd*( ph_ReGDw(abs(j)/2,(abs(i)+1)/2)**2 
     .                 + ph_ImGDw(abs(j)/2,(abs(i)+1)/2)**2 )
	endif
      else 
	write(*,*) "some wrong with flavor"
	write(*,*) rflav(1), rflav(2), rflav(6)
	write(*,*) "not a W + H channel"
      endif

      
c     add the RGE factor 
      call RGE(LambdaNP,rg)
      amp2 = rg**2 * amp2
      
	
      end


c     Real Emission Diagrams for the Right handed current      
      subroutine amplitude_xi(pp,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal), pp2(0:3,nlegreal)
      integer rflav(nlegreal)
      integer i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props,t1
      real * 8 p15,p25,p35,p45,p56
      real * 8 gw,mw,colfac
      real * 8 props1, props2
      real * 8 s, s2, tk, uk, vev
      real * 8 amp2xi, amp2xiqg, amp
      external dotp
      real * 8 dotp
      
      
      n=3d0
      gw=ph_geff
      mw=ph_Wmass
      vev = ph_vev

c     q qbar channel: p1 quark, p2 aq, p4 al, p5 l      
      pp2 = pp
      
c     W+ production e+ nu
      if(rflav(4).lt.0) then
c       if qbar q, exchange 1 and 2 
	if(rflav(2).gt.0.and.rflav(1).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if qb g, exchange lepton-antilepton
	elseif(rflav(1).lt.0.and.rflav(2).eq.0) then
	  call swap_momenta(pp2(:,4),pp2(:,5))
c	if g q, exchange 1 and 2
	elseif(rflav(1).eq.0.and.rflav(2).gt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if g aq, exchange 1 and 2 and lepton antilepton	  
	elseif(rflav(1).eq.0.and.rflav(2).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
	  call swap_momenta(pp2(:,4),pp2(:,5))
	endif
c    W- production
      elseif(rflav(4).gt.0) then
	 call swap_momenta(pp2(:,4),pp2(:,5))
c       if qbar q, exchange 1 and 2 
	if(rflav(2).gt.0.and.rflav(1).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if qb g, exchange lepton-antilepton
	elseif(rflav(1).lt.0.and.rflav(2).eq.0) then
	  call swap_momenta(pp2(:,4),pp2(:,5))
c	if g q, exchange 1 and 2
	elseif(rflav(1).eq.0.and.rflav(2).gt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if g aq, exchange 1 and 2 and lepton antilepton	  
	elseif(rflav(1).eq.0.and.rflav(2).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
	  call swap_momenta(pp2(:,4),pp2(:,5))
	endif
      endif   
      
      
      p12=dotp(pp2(0,1),pp2(0,2))
      p13=dotp(pp2(0,1),pp2(0,3))
      p14=dotp(pp2(0,1),pp2(0,4))
      p23=dotp(pp2(0,2),pp2(0,3))
      p24=dotp(pp2(0,2),pp2(0,4))
      p33=dotp(pp2(0,3),pp2(0,3))
      p34=dotp(pp2(0,3),pp2(0,4))
      p16=dotp(pp2(0,1),pp2(0,6))
      p26=dotp(pp2(0,2),pp2(0,6))
      p36=dotp(pp2(0,3),pp2(0,6))
      p46=dotp(pp2(0,4),pp2(0,6))
      p15=dotp(pp2(0,1),pp2(0,5))
      p25=dotp(pp2(0,2),pp2(0,5))
      p35=dotp(pp2(0,3),pp2(0,5))
      p45=dotp(pp2(0,4),pp2(0,5))
      p56=dotp(pp2(0,5),pp2(0,6))
      
      
      
c     some invariants      
      s =    2d0*p12
      s2 =   2d0*p45
      tk = - 2d0*p16
      uk = - 2d0*p26
      
      
c     W propagators
c     s propagator
      props1 = 1d0/((s + tk + uk -mw**2)**2+ph_Wwidth**2*mw**2)
c     lepton-neutrino decay     
      props2 = 1d0/((s2-mw**2)**2+ph_Wwidth**2*mw**2)

      
c     common prefactor      
      amp = -8*(p24*(p25*tk + p56*(s + uk)) + p15*(p46*(s + tk) 
     .+ p14*uk - p24*(2*s + tk + uk)))
     
     
c     Amplitude squared. Color and spin sum already included      
c     q qbar channel     
c     ReXi**2 + ImXi**2
  

      amp2xi =  mw**4 * amp * props1 
      
      amp2xi = amp2xi + 2 * mw**2 *amp*( s + tk + uk - mw**2)*props1
      
      amp2xi = amp2xi + amp  
    
      amp2xi = 1d0/3d0 *amp2xi * props2 * gw**4/vev**2/tk/uk
    
c     color factor  and alpha_s, and normalize to as/2pi
      amp2xi = amp2xi * CF * (8d0*pi**2)

    
    
c     q g channel 
      amp = 4*(p46*(p56*s + p25*(tk + uk)) + p15*(-(p24*(s + tk)) 
     .+ p14*uk + p46*(s + 2*tk + uk)))


      amp2xiqg =  mw**4 * props1 * amp
      
      
      amp2xiqg = amp2xiqg +2*mw**2*props1*( s + tk + uk - mw**2)*amp

     
      amp2xiqg = amp2xiqg + amp 
      
          
      amp2xiqg = 1d0/3d0 *amp2xiqg * props2 * gw**4/vev**2/s/uk
    
c     color factor  and alpha_s, and normalize to as/2pi
      amp2xiqg = amp2xiqg  * (8d0*pi**2)

    

c     decide what to return, and multiply by the coupling    
      if(rflav(6).eq.0.and.rflav(1).ne.0.and.rflav(2).ne.0) then
	i = rflav(1)
	j = rflav(2)
	if(mod(abs(i),2).eq.0) then
	  amp2=amp2xi*( ph_ReXi(abs(i)/2,(abs(j)+1)/2)**2 
     .                + ph_ImXi(abs(i)/2,(abs(j)+1)/2)**2 ) 
	elseif(mod(abs(i),2).eq.1) then   
	  amp2=amp2xi*( ph_ReXi(abs(j)/2,(abs(i)+1)/2)**2 
     .                + ph_ImXi(abs(j)/2,(abs(i)+1)/2)**2 ) 
	endif
      elseif(rflav(6).ne.0.and.rflav(1).eq.0) then
	i = rflav(2)
	j = rflav(6)
	if(mod(abs(i),2).eq.0) then
	  amp2=amp2xiqg*( ph_ReXi(abs(i)/2,(abs(j)+1)/2)**2 
     .                  + ph_ImXi(abs(i)/2,(abs(j)+1)/2)**2 ) 

	elseif(mod(abs(i),2).eq.1) then   
	  amp2=amp2xiqg*( ph_ReXi(abs(j)/2,(abs(i)+1)/2)**2 
     .                  + ph_ImXi(abs(j)/2,(abs(i)+1)/2)**2 ) 
	endif
      elseif(rflav(6).ne.0.and.rflav(2).eq.0) then	  
	i = rflav(1)
	j = rflav(6)
	if(mod(abs(i),2).eq.0) then
	  amp2=amp2xiqg*( ph_ReXi(abs(i)/2,(abs(j)+1)/2)**2 
     .                  + ph_ImXi(abs(i)/2,(abs(j)+1)/2)**2 ) 
	elseif(mod(abs(i),2).eq.1) then   
	  amp2=amp2xiqg*( ph_ReXi(abs(j)/2,(abs(i)+1)/2)**2 
     .                  + ph_ImXi(abs(j)/2,(abs(i)+1)/2)**2 ) 

	endif
      else 
	write(*,*) "some wrong with flavor"
	write(*,*) rflav(1), rflav(2), rflav(6)
	write(*,*) "not a W + H channel"
      endif

      end      
      
c     Real Emission Diagrams for the modification to the quark-W left handed couplings       
      subroutine amplitude_delta(pp,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal), pp2(0:3,nlegreal)
      integer rflav(nlegreal)
      integer i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props,t1
      real * 8 p15,p25,p35,p45,p56
      real * 8 gw,mw,colfac
      real * 8 props1, props2
      real * 8 s, s2, tk, uk, vev
      real * 8 damp2, damp2qg, amp, dw, ckm
      external dotp
      real * 8 dotp
      
      
      n=3d0
      gw=ph_geff
      mw=ph_Wmass
      vev = ph_vev
      dw = 0d0
      ckm = 0d0
      
      
c     set the couplings  and ckm
      if(rflav(6).eq.0.and.rflav(1).ne.0.and.rflav(2).ne.0) then
	i = rflav(1)
	j = rflav(2)
	if(mod(abs(i),2).eq.0) then
	  dw = - ph_Qphi3(abs(i)/2,(abs(j)+1)/2)
	  ckm = ph_CKM(abs(i)/2,(abs(j)+1)/2)
	elseif(mod(abs(i),2).eq.1) then   
	  dw = -ph_Qphi3(abs(j)/2,(abs(i)+1)/2)
	  ckm = ph_CKM(abs(j)/2,(abs(i)+1)/2)
	endif
      elseif(rflav(6).ne.0.and.rflav(1).eq.0) then
	i = rflav(2)
	j = rflav(6)
	if(mod(abs(i),2).eq.0) then
	  dw = -ph_Qphi3(abs(i)/2,(abs(j)+1)/2)
	  ckm = ph_CKM(abs(i)/2,(abs(j)+1)/2)
	elseif(mod(abs(i),2).eq.1) then   
	  dw = -ph_Qphi3(abs(j)/2,(abs(i)+1)/2)
	  ckm = ph_CKM(abs(j)/2,(abs(i)+1)/2)
	endif
      elseif(rflav(6).ne.0.and.rflav(2).eq.0) then	  
	i = rflav(1)
	j = rflav(6)
	if(mod(abs(i),2).eq.0) then
	  dw = -ph_Qphi3(abs(i)/2,(abs(j)+1)/2)
	  ckm = ph_CKM(abs(i)/2,(abs(j)+1)/2)
	elseif(mod(abs(i),2).eq.1) then   
	  dw = -ph_Qphi3(abs(j)/2,(abs(i)+1)/2)
	  ckm = ph_CKM(abs(j)/2,(abs(i)+1)/2)
	endif
      else 
	write(*,*) "some wrong with flavor"
	write(*,*) rflav(1), rflav(2), rflav(6)
	write(*,*) "not a W + H channel"
      endif
      
           
c     q qbar channel: p1 quark, p2 aq, p4 al, p5 l      
      pp2 = pp
      
c     W+ production e+ nu
      if(rflav(4).lt.0) then
c       if qbar q, exchange 1 and 2 
	if(rflav(2).gt.0.and.rflav(1).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if qb g, exchange lepton-antilepton
	elseif(rflav(1).lt.0.and.rflav(2).eq.0) then
	  call swap_momenta(pp2(:,4),pp2(:,5))
c	if g q, exchange 1 and 2
	elseif(rflav(1).eq.0.and.rflav(2).gt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if g aq, exchange 1 and 2 and lepton antilepton	  
	elseif(rflav(1).eq.0.and.rflav(2).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
	  call swap_momenta(pp2(:,4),pp2(:,5))
	endif
c    W- production
      elseif(rflav(4).gt.0) then
	 call swap_momenta(pp2(:,4),pp2(:,5))
c       if qbar q, exchange 1 and 2 
	if(rflav(2).gt.0.and.rflav(1).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if qb g, exchange lepton-antilepton
	elseif(rflav(1).lt.0.and.rflav(2).eq.0) then
	  call swap_momenta(pp2(:,4),pp2(:,5))
c	if g q, exchange 1 and 2
	elseif(rflav(1).eq.0.and.rflav(2).gt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if g aq, exchange 1 and 2 and lepton antilepton	  
	elseif(rflav(1).eq.0.and.rflav(2).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
	  call swap_momenta(pp2(:,4),pp2(:,5))
	endif
      endif   
      
      
      p12=dotp(pp2(0,1),pp2(0,2))
      p13=dotp(pp2(0,1),pp2(0,3))
      p14=dotp(pp2(0,1),pp2(0,4))
      p23=dotp(pp2(0,2),pp2(0,3))
      p24=dotp(pp2(0,2),pp2(0,4))
      p33=dotp(pp2(0,3),pp2(0,3))
      p34=dotp(pp2(0,3),pp2(0,4))
      p16=dotp(pp2(0,1),pp2(0,6))
      p26=dotp(pp2(0,2),pp2(0,6))
      p36=dotp(pp2(0,3),pp2(0,6))
      p46=dotp(pp2(0,4),pp2(0,6))
      p15=dotp(pp2(0,1),pp2(0,5))
      p25=dotp(pp2(0,2),pp2(0,5))
      p35=dotp(pp2(0,3),pp2(0,5))
      p45=dotp(pp2(0,4),pp2(0,5))
      p56=dotp(pp2(0,5),pp2(0,6))
      
      
      
c     some invariants      
      s =    2d0*p12
      s2 =   2d0*p45
      tk = - 2d0*p16
      uk = - 2d0*p26
      
      
c     W propagators
c     s propagator
      props1 = 1d0/((s + tk + uk -mw**2)**2+ph_Wwidth**2*mw**2)
c     lepton-neutrino decay     
      props2 = 1d0/((s2-mw**2)**2+ph_Wwidth**2*mw**2)

      
c     common prefactor      
      amp = -8*(p25*(p24*tk + p46*(s + uk)) + p14*(p56*(s + tk) 
     .+ p15*uk - p25*(2*s + tk + uk))) * props2 
     

      damp2 =  mw**4 *(dw**2 + 2*dw*ckm )* amp * props1 
      
      damp2 = damp2 + 2 * mw**2 *amp*( s + tk + uk - mw**2)*props1
     . 	      * (ckm + dw) * dw
      
      damp2 = damp2 + amp * dw**2  
    
      damp2 = 1d0/3d0 *damp2 * gw**4/vev**2/tk/uk
    
c     color factor  and alpha_s, and normalize to as/2pi
      damp2 = damp2 * CF * (8d0*pi**2)

    
    
c     q g channel 
      amp = 4*(p56*(p46*s + p24*(tk + uk)) + p14*(-(p25*(s + tk)) 
     .+ p15*uk + p56*(s + 2*tk + uk)))* props2


      damp2qg =  mw**4 *(dw**2 + 2*dw*ckm)* props1 * amp
      
      
      damp2qg = damp2qg 
     . + 2*dw*(ckm + dw)*mw**2*props1*( s + tk + uk - mw**2)*amp

      damp2qg = damp2qg + amp * dw**2
      
          
      damp2qg = 1d0/3d0 *damp2qg  * gw**4/vev**2/s/uk
    
c     color factor  and alpha_s, and normalize to as/2pi
      damp2qg = damp2qg  * (8d0*pi**2)

    

c     decide what to return, and multiply by the coupling    
      if(rflav(6).eq.0.and.rflav(1).ne.0.and.rflav(2).ne.0) then
	amp2= damp2
      elseif(rflav(6).ne.0) then
	amp2 = damp2qg
      else 
	write(*,*) "some wrong with flavor"
	write(*,*) rflav(1), rflav(2), rflav(6)
	write(*,*) "not a W + H channel"
      endif

      end            
      
      
      
c     Real Emission Diagrams for the phi^d phi WW and phi^d phi Wtilde W operators
      subroutine amplitude_ww(pp,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal), pp2(0:3,nlegreal)
      integer rflav(nlegreal)
      integer i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props,t1
      real * 8 p15,p25,p35,p45,p56
      real * 8 gw,mw,colfac
      real * 8 props1, props2
      real * 8 s, s2, tk, uk, vev
      real * 8 amp2ww, amp2wwqg, amp, ckm
      real * 8 eps1, eps2, eps3, eps4, eps5
      external dotp
      real * 8 dotp
      real * 8 amp2a, amp2b
      
      n=3d0
      gw=ph_geff
      mw=ph_Wmass
      vev = ph_vev
      amp2ww = 0d0 
      amp2wwqg = 0d0

            ckm = 0d0
      
      
c     set the couplings  and ckm
      if(rflav(6).eq.0.and.rflav(1).ne.0.and.rflav(2).ne.0) then
	i = rflav(1)
	j = rflav(2)
	if(mod(abs(i),2).eq.0) then
	  ckm = ph_CKM(abs(i)/2,(abs(j)+1)/2)
	elseif(mod(abs(i),2).eq.1) then   
	  ckm = ph_CKM(abs(j)/2,(abs(i)+1)/2)
	endif
      elseif(rflav(6).ne.0.and.rflav(1).eq.0) then
	i = rflav(2)
	j = rflav(6)
	if(mod(abs(i),2).eq.0) then
	  ckm = ph_CKM(abs(i)/2,(abs(j)+1)/2)
	elseif(mod(abs(i),2).eq.1) then   
	  ckm = ph_CKM(abs(j)/2,(abs(i)+1)/2)
	endif
      elseif(rflav(6).ne.0.and.rflav(2).eq.0) then	  
	i = rflav(1)
	j = rflav(6)
	if(mod(abs(i),2).eq.0) then
	  ckm = ph_CKM(abs(i)/2,(abs(j)+1)/2)
	elseif(mod(abs(i),2).eq.1) then   
	  ckm = ph_CKM(abs(j)/2,(abs(i)+1)/2)
	endif
      else 
	write(*,*) "some wrong with flavor"
	write(*,*) rflav(1), rflav(2), rflav(6)
	write(*,*) "not a W + H channel"
      endif
      
      
c     q qbar channel: p1 quark, p2 aq, p4 al, p5 l      
      pp2 = pp
      
c     W+ production e+ nu
      if(rflav(4).lt.0) then
c       if qbar q, exchange 1 and 2 
	if(rflav(2).gt.0.and.rflav(1).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if qb g, exchange lepton-antilepton
	elseif(rflav(1).lt.0.and.rflav(2).eq.0) then
	  call swap_momenta(pp2(:,4),pp2(:,5))
c	if g q, exchange 1 and 2
	elseif(rflav(1).eq.0.and.rflav(2).gt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if g aq, exchange 1 and 2 and lepton antilepton	  
	elseif(rflav(1).eq.0.and.rflav(2).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
	  call swap_momenta(pp2(:,4),pp2(:,5))
	endif
c    W- production
      elseif(rflav(4).gt.0) then
	 call swap_momenta(pp2(:,4),pp2(:,5))
c       if qbar q, exchange 1 and 2 
	if(rflav(2).gt.0.and.rflav(1).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if qb g, exchange lepton-antilepton
	elseif(rflav(1).lt.0.and.rflav(2).eq.0) then
	  call swap_momenta(pp2(:,4),pp2(:,5))
c	if g q, exchange 1 and 2
	elseif(rflav(1).eq.0.and.rflav(2).gt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if g aq, exchange 1 and 2 and lepton antilepton	  
	elseif(rflav(1).eq.0.and.rflav(2).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
	  call swap_momenta(pp2(:,4),pp2(:,5))
	endif
      endif   
      
      
      p12=dotp(pp2(0,1),pp2(0,2))
      p13=dotp(pp2(0,1),pp2(0,3))
      p14=dotp(pp2(0,1),pp2(0,4))
      p23=dotp(pp2(0,2),pp2(0,3))
      p24=dotp(pp2(0,2),pp2(0,4))
      p33=dotp(pp2(0,3),pp2(0,3))
      p34=dotp(pp2(0,3),pp2(0,4))
      p16=dotp(pp2(0,1),pp2(0,6))
      p26=dotp(pp2(0,2),pp2(0,6))
      p36=dotp(pp2(0,3),pp2(0,6))
      p46=dotp(pp2(0,4),pp2(0,6))
      p15=dotp(pp2(0,1),pp2(0,5))
      p25=dotp(pp2(0,2),pp2(0,5))
      p35=dotp(pp2(0,3),pp2(0,5))
      p45=dotp(pp2(0,4),pp2(0,5))
      p56=dotp(pp2(0,5),pp2(0,6))
      
      
      
c     some invariants      
      s =    2d0*p12
      s2 =   2d0*p45
      tk = - 2d0*p16
      uk = - 2d0*p26
      
      call LeviCivita(pp2(:,1),pp2(:,2),pp2(:,5),pp2(:,4),eps1)
      call LeviCivita(pp2(:,1),pp2(:,2),pp2(:,6),pp2(:,5),eps2)
      call LeviCivita(pp2(:,1),pp2(:,2),pp2(:,6),pp2(:,4),eps3)
      call LeviCivita(pp2(:,1),pp2(:,6),pp2(:,5),pp2(:,4),eps4)      
      call LeviCivita(pp2(:,2),pp2(:,6),pp2(:,5),pp2(:,4),eps5)
      
      
c     W propagators
c     s propagator
      props1 = 1d0/((s + tk + uk -mw**2)**2+ph_Wwidth**2*mw**2)
c     lepton-neutrino decay     
      props2 = 1d0/((s2-mw**2)**2+ph_Wwidth**2*mw**2)

      
c     common prefactor      
      amp2ww = ph_cww * 4d0 * mw**2/(3d0 * tk*uk )*(
     $   -4*p25**2*p46*s + 4*p25*p46**2*s + 4*p24*p25*p56*s - 
     $  4*p24*p46*p56*s + 2*p25*s**2*s2 - p46*s**2*s2 - p56*s**2*s2 + 
     $  4*p24*p25*p46*tk - 4*p25**2*p46*tk - 4*p24**2*p56*tk + 
     $  4*p24*p25*p56*tk - p24*s*s2*tk + 3*p25*s*s2*tk - 2*p56*s*s2*tk+ 
     $  p25*s2*tk**2 - p56*s2*tk**2 + 
     $  4*p15*(p24**2*tk + p46*(p25 - p56)*(s + tk) + 
     $     p24*((p46 + p56)*s + p56*tk - 2*p25*(s + tk))) + 
     $  4*p15**2*(p24 - p46)*uk + 
     $  (-2*(p25 - p46)*(2*p25*p46 - 2*p24*p56 - s*s2) + 
     $     (-p24 + p25)*s2*tk)*uk - 
     $  p15*(4*p24*(p25 - p46) + s2*(s + tk))*uk + (p25 - p46)*s2*uk**2+ 
     $  4*p14**2*(-(p56*(s + tk + uk)) + p25*(2*s + tk + 2*uk)) + 
     $  p14*(4*p24*p56*s + 4*p56**2*s + 2*s**2*s2 + 4*p56**2*tk + 
     $     2*s*s2*tk + s2*tk**2 + 4*p24*p56*uk + 3*s*s2*uk + s2*tk*uk + 
     $     s2*uk**2 + 4*p25**2*(2*(s + tk) + uk) - 
     $     4*p25*(p24*tk + 2*p56*(s + tk) + 2*p46*(s + uk)) + 
     $     4*p15*(p46*(s + tk) + (-p25 + p46 + p56)*uk - 
     $        p24*(2*s + tk + 2*uk))) )
     
     
      amp2ww  = amp2ww +  2d0* ph_cww**2/(3d0 *tk*uk)*(
     $         16*p25**2*p46**2*s - 32*p24*p25*p46*p56*s 
     $+ 16*p24**2*p56**2*s + 
     $  8*p25**2*s**2*s2 + 4*p46**2*s**2*s2 + 8*p24*p56*s**2*s2 - 
     $  8*p25*p56*s**2*s2 + 4*p56**2*s**2*s2 + 2*s**3*s2**2 + 
     $  16*p25**2*p46**2*tk - 32*p24*p25*p46*p56*tk 
     $+ 16*p24**2*p56**2*tk + 
     $  8*p24*p25*s*s2*tk + 16*p25**2*s*s2*tk + 8*p24*p46*s*s2*tk + 
     $  8*p24*p56*s*s2*tk - 16*p25*p56*s*s2*tk + 8*p56**2*s*s2*tk + 
     $  4*s**2*s2**2*tk + 4*p24**2*s2*tk**2 + 8*p24*p25*s2*tk**2 + 
     $  8*p25**2*s2*tk**2 - 8*p25*p56*s2*tk**2 + 4*p56**2*s2*tk**2 + 
     $  3*s*s2**2*tk**2 + s2**2*tk**3 + 
     $  (16*(p25*p46 - p24*p56)**2 + 8*(p25**2 + p46**2 
     $+ 2*p24*p56)*s*s2 +  4*s**2*s2**2 + 4*s2*(2*p25**2 
     $+ 2*p24*(p25 + p46 + p56) + s*s2)*   tk + s2**2*tk**2)*uk + 
     $  s2*(4*p25**2 + 4*p46**2 + 8*p24*p56 + 3*s*s2 + s2*tk)*uk**2 + 
     $  s2**2*uk**3 + 4*p15**2*
     $   (s2*uk**2 + 8*p24**2*(s + tk + uk) - 8*p24*p46*(s + tk + uk) + 
     $     4*p46**2*(s + tk + uk)) + 
     $  4*p14**2*(8*p25**2*(s + tk + uk) - 8*p25*p56*(s + tk + uk) + 
     $     4*p56**2*(s + tk + uk) + 
     $     s2*(2*s**2 + 2*s*tk + tk**2 + 4*s*uk + 2*tk*uk + 2*uk**2)) - 
     $  8*p14*(4*p25**2*p46*(s + tk + uk) -4*p24*p25*p56*(s + tk + uk)+ 
     $     s2*(s + uk)*(p24*tk + p46*(s + uk))) - 
     $  8*p15*(4*p24**2*p56*(s + tk + uk) - 
     $     s2*(s + tk)*(p46*(s + tk) + (-p25 + p46 + p56)*uk) - 
     $     p14*(s + tk + uk)*(4*p25*p46 - 4*p46*p56 + 
     $        4*p24*(-2*p25 + p56) + s2*uk) + 
     $     p24*(s + tk + uk)*(-4*p25*p46 + s2*(2*s + tk + uk))))

     
c add the tilde component 
     
      amp2ww  = amp2ww -   8d0* ph_cwwt**2/(3d0 *tk*uk)*(
     $  16*p25**2*p46**2*s - 32*p24*p25*p46*p56*s +16*p24**2*p56**2*s- 
     $  8*p25**2*s**2*s2 - 4*p46**2*s**2*s2 + 8*p24*p56*s**2*s2 + 
     $  8*p25*p56*s**2*s2 - 4*p56**2*s**2*s2 + 2*s**3*s2**2 + 
     $  16*p25**2*p46**2*tk - 32*p24*p25*p46*p56*tk + 
     $  16*p24**2*p56**2*tk + 8*p24*p25*s*s2*tk - 16*p25**2*s*s2*tk - 
     $  8*p24*p46*s*s2*tk + 8*p24*p56*s*s2*tk + 16*p25*p56*s*s2*tk - 
     $  8*p56**2*s*s2*tk + 4*s**2*s2**2*tk - 4*p24**2*s2*tk**2 + 
     $  8*p24*p25*s2*tk**2 - 8*p25**2*s2*tk**2 + 8*p25*p56*s2*tk**2 - 
     $  4*p56**2*s2*tk**2 + 3*s*s2**2*tk**2 + s2**2*tk**3 + 
     $  (16*(p25*p46 - p24*p56)**2 - 
     $     8*(p25**2 + p46**2 - 2*p24*p56)*s*s2 + 4*s**2*s2**2 + 
     $     4*s2*(-2*p25**2 + 2*p24*(p25 - p46 + p56) + s*s2)*tk + 
     $     s2**2*tk**2)*uk + s2*
     $   (-4*p25**2 - 4*p46**2 + 8*p24*p56 + 3*s*s2 + s2*tk)*uk**2 + 
     $  s2**2*uk**3 + 4*p15**2*
     $   (-(s2*uk**2) + 8*p24**2*(s + tk + uk) 
     $ - 8*p24*p46*(s + tk + uk) + 4*p46**2*(s + tk + uk)) + 
     $  4*p14**2*(8*p25**2*(s + tk + uk) - 8*p25*p56*(s + tk + uk) + 
     $     4*p56**2*(s + tk + uk) - 
     $     s2*(2*s**2 + 2*s*tk + tk**2 + 4*s*uk + 2*tk*uk + 2*uk**2))+ 
     $  8*p14*(-4*p25**2*p46*(s + tk + uk)+ 4*p24*p25*p56*(s + tk + uk)+ 
     $     s2*(s + uk)*(p24*tk + p46*(s + uk))) - 
     $  8*p15*(4*p24**2*p56*(s + tk + uk) - 
     $     p14*(s + tk + uk)*(4*p25*p46 - 4*p46*p56 + 
     $        4*p24*(-2*p25 + p56) + s2*uk) + 
     $     s2*(s + tk)*((-p25 + p56)*uk - p46*(s + tk + uk)) + 
     $     p24*(s + tk + uk)*(-4*p25*p46 + s2*(2*s + tk + uk)))    )
     
     
     
      amp2ww = amp2ww + 16*mw**2*ph_cwwt/(3d0 * tk * uk) *(
     $   eps1/tk *         
     $   (tk*(2d0*(p46 + p56)*s + (2d0*p24 + p46 + 3d0*p56)*tk 
     $  - 4d0*p25*(s + tk) -  2d0*p14*(2*s + tk)) + 
     $  (-4d0*p14 + 2d0*p15 - p24 - 3d0*p25 + 3d0*p46 + p56)*tk*uk + 
     $    (p14 + p15)*uk**2)
     $ + eps2 * (
     $   (-2d0*(-p25*p46 + p24*p56)*tk)/uk + 
     $    (2d0*(p15*(-p24 + p46) + p14*(p25 - p56))*uk)/tk )
     $ + eps3 * (       
     $ (-2d0*(-(p25*p46) + p24*p56)*tk)/uk + 
     $  (2d0*(p15*(-p24 + p46) + p14*(p25 - p56))*uk)/tk)
     $ + eps4 *(
     $  (tk*(2d0*(p14 + p25 - p56)*s + (2d0*p14 + p24 + 3d0*p25 
     $ - 2d0*p56)*tk)+ 
     $    ((-p24 - p25 + p46 + p56)*s + 2d0*(p14 - p15)*tk)*uk + 
     $    (p14 + p15)*uk**2)/tk)
     $ + eps5 *( 
     $-((tk**2*((p46 + p56)*s + (p24 + p25)*tk) + 
     $      2d0*tk*((p14 + p25 - p46)*s + (-p24 + p25)*tk)*uk + 
     $      ((p14 + p15)*s + (3d0*p14 + p15 + 2d0*p25 
     $- 2d0*p46)*tk)*uk**2)/    (tk*uk))) )  

     
     
c gluon component 
     
      amp2wwqg = -2d0 * mw**2 * ph_cww/(3d0 * s * uk) *( 
     $ 4*p25*p46**2*s - 4*p24*p46*p56*s - 4*p25*p46*p56*s + 
     $  4*p24*p56**2*s + p25*s**2*s2 - p56*s**2*s2 + 4*p24*p25*p46*tk - 
     $  4*p24**2*p56*tk - 4*p25*p46*p56*tk + 4*p24*p56**2*tk + 
     $  2*p25*s*s2*tk + p46*s*s2*tk - 3*p56*s*s2*tk + p24*s2*tk**2 + 
     $  p25*s2*tk**2 - 2*p56*s2*tk**2 + 4*p15**2*(p24 - p46)*uk + 
     $  4*p24*p25*p46*uk - 4*p24**2*p56*uk - 4*p25*p46*p56*uk + 
     $  4*p24*p56**2*uk + p46*s*s2*uk - p56*s*s2*uk + 2*p24*s2*tk*uk - 
     $  2*p56*s2*tk*uk + p24*s2*uk**2 - p56*s2*uk**2 + 
     $  4*p14**2*(p25*(s + tk + uk) - p56*(s + 2*(tk + uk))) - 
     $  p15*(-4*p46*(p46*s + p25*(s + tk) - 2*p56*(s + tk)) + 
     $     (4*p46*p56 + s2*(s + tk))*uk + 
     $     4*p24*(p25*(s + tk) - p56*(s + tk) - p46*(tk + uk))) + 
     $  p14*(-4*p46*p56*s + 8*p56**2*s + s**2*s2 - 8*p24*p56*tk + 
     $     8*p56**2*tk + 2*s*s2*tk + 2*s2*tk**2 + 4*p25**2*(s + tk) + 
     $     (4*p56*(-2*p24 + p56) + s2*(s + 3*tk))*uk + s2*uk**2 + 
     $     4*p25*(-2*p56*(s + tk) + p46*(tk + uk)) - 
     $     4*p15*((p25 - p56)*uk + p24*(s + tk + uk) - 
     $        p46*(s + 2*(tk + uk))))) 
     
     
      amp2wwqg = amp2wwqg - ph_cww**2/(3d0*s*uk) *(
     $   16*p25**2*p46**2*s - 32*p24*p25*p46*p56*s +16*p24**2*p56**2*s+ 
     $  4*p25**2*s**2*s2 + 4*p46**2*s**2*s2 - 8*p25*p56*s**2*s2 + 
     $  8*p46*p56*s**2*s2 + 8*p56**2*s**2*s2 + s**3*s2**2 + 
     $  16*p25**2*p46**2*tk - 32*p24*p25*p46*p56*tk 
     $+ 16*p24**2*p56**2*tk + 
     $  8*p25**2*s*s2*tk + 8*p24*p46*s*s2*tk + 8*p25*p46*s*s2*tk - 
     $  16*p25*p56*s*s2*tk + 8*p46*p56*s*s2*tk + 16*p56**2*s*s2*tk + 
     $  3*s**2*s2**2*tk + 4*p24**2*s2*tk**2 + 4*p25**2*s2*tk**2 + 
     $  8*p25*p46*s2*tk**2 - 8*p25*p56*s2*tk**2 + 8*p56**2*s2*tk**2 + 
     $  4*s*s2**2*tk**2 + 2*s2**2*tk**3 + 16*p25**2*p46**2*uk - 
     $  32*p24*p25*p46*p56*uk + 16*p24**2*p56**2*uk +8*p24*p46*s*s2*uk+ 
     $  8*p25*p46*s*s2*uk + 8*p46*p56*s*s2*uk + 8*p56**2*s*s2*uk + 
     $  s**2*s2**2*uk + 8*p24**2*s2*tk*uk + 16*p25*p46*s2*tk*uk + 
     $  8*p56**2*s2*tk*uk + 4*s*s2**2*tk*uk + 4*s2**2*tk**2*uk + 
     $  4*p24**2*s2*uk**2 + 8*p25*p46*s2*uk**2 + 4*p56**2*s2*uk**2 + 
     $  s*s2**2*uk**2 + 3*s2**2*tk*uk**2 + s2**2*uk**3 + 
     $  4*p15**2*(s2*uk**2 + 4*p24**2*(s + tk + uk) - 
     $     8*p24*p46*(s + tk + uk) + 8*p46**2*(s + tk + uk)) + 
     $  4*p14**2*(4*p25**2*(s + tk + uk) - 8*p25*p56*(s + tk + uk) + 
     $     8*p56**2*(s + tk + uk) + 
     $     s2*(s**2 + 2*s*(tk + uk) + 2*(tk + uk)**2)) - 
     $  8*p14*(-(p15*(s + tk + uk)*
     $        (4*p25*p46 - 8*p46*p56 + 4*p24*(-p25 + p56) + s2*uk)) + 
     $     p46*(-(s*s2*(tk + uk)) + 4*p25*p56*(s + tk + uk)) - 
     $     p24*(s2*(tk + uk)**2 + 4*p56**2*(s + tk + uk))) - 
     $  8*p15*(p24*(4*p46*p56 + s2*(s + tk))*(s + tk + uk) + 
     $     p25*(s2*(s + tk)*uk - 4*p46**2*(s + tk + uk)) - 
     $     s2*(p56*(s + tk)*uk + p46*(s + tk + uk)*(s + 2*tk + uk))))
     

      amp2wwqg = amp2wwqg + 4*ph_cwwt**2/(3d0*s*uk) *(
     $  16*p25**2*p46**2*s - 32*p24*p25*p46*p56*s 
     $+ 16*p24**2*p56**2*s - 
     $  4*p25**2*s**2*s2 - 4*p46**2*s**2*s2 + 8*p25*p56*s**2*s2 + 
     $  8*p46*p56*s**2*s2 - 8*p56**2*s**2*s2 + s**3*s2**2 + 
     $  16*p25**2*p46**2*tk - 32*p24*p25*p46*p56*tk 
     $+ 16*p24**2*p56**2*tk - 
     $  8*p25**2*s*s2*tk - 8*p24*p46*s*s2*tk + 8*p25*p46*s*s2*tk + 
     $  16*p25*p56*s*s2*tk + 8*p46*p56*s*s2*tk - 16*p56**2*s*s2*tk + 
     $  3*s**2*s2**2*tk - 4*p24**2*s2*tk**2 - 4*p25**2*s2*tk**2 + 
     $  8*p25*p46*s2*tk**2 + 8*p25*p56*s2*tk**2 - 8*p56**2*s2*tk**2 + 
     $  4*s*s2**2*tk**2 + 2*s2**2*tk**3 + 16*p25**2*p46**2*uk - 
     $  32*p24*p25*p46*p56*uk + 16*p24**2*p56**2*uk -8*p24*p46*s*s2*uk+ 
     $  8*p25*p46*s*s2*uk + 8*p46*p56*s*s2*uk - 8*p56**2*s*s2*uk + 
     $  s**2*s2**2*uk - 8*p24**2*s2*tk*uk + 16*p25*p46*s2*tk*uk - 
     $  8*p56**2*s2*tk*uk + 4*s*s2**2*tk*uk + 4*s2**2*tk**2*uk - 
     $  4*p24**2*s2*uk**2 + 8*p25*p46*s2*uk**2 - 4*p56**2*s2*uk**2 + 
     $  s*s2**2*uk**2 + 3*s2**2*tk*uk**2 + s2**2*uk**3 + 
     $  4*p15**2*(-(s2*uk**2) + 4*p24**2*(s + tk + uk) - 
     $     8*p24*p46*(s + tk + uk) + 8*p46**2*(s + tk + uk)) + 
     $  4*p14**2*(4*p25**2*(s + tk + uk) - 8*p25*p56*(s + tk + uk) + 
     $     8*p56**2*(s + tk + uk) - 
     $     s2*(s**2 + 2*s*(tk + uk) + 2*(tk + uk)**2)) - 
     $  8*p14*(-(p15*(s + tk + uk)*
     $        (4*p25*p46 - 8*p46*p56 + 4*p24*(-p25 + p56) + s2*uk)) + 
     $     p46*(s*s2*(tk + uk) + 4*p25*p56*(s + tk + uk)) + 
     $     p24*(s2*(tk + uk)**2 - 4*p56**2*(s + tk + uk))) - 
     $  8*p15*(p24*(4*p46*p56 + s2*(s + tk))*(s + tk + uk) - 
     $     p25*(s2*(s + tk)*uk + 4*p46**2*(s + tk + uk)) - 
     $     s2*(-(p56*(s + tk)*uk) + p46*(s + tk + uk)*(s+2*tk+uk))))
     

      amp2wwqg = amp2wwqg + 16 * mw**2*ph_cwwt/(3d0*s*uk) *(
     $   eps1 *(      
     $   (2*(p14 + p25 - p56)*s*(s + tk) - 
     $  (-2*p14*s + 2*p15*s + (p46 + p56)*(3*s - tk) + (p24 + p25)*tk)*
     $     uk + (p14 + p15)*uk**2)/(2d0*s))
     $ + eps2 *( (-3*p25*p46*s + 3*p24*p56*s - p15*p24*uk + p14*p25*uk+ 
     -    p15*p46*uk - p14*p56*uk)/s)
     $ + eps3 *( (-3*p25*p46*s + 3*p24*p56*s - p15*p24*uk + p14*p25*uk+ 
     -    p15*p46*uk - p14*p56*uk)/s)
     $ + eps4 *( (-2*(p14 + p25 + p46 - 2*p56)*s**2 - 
     $    2*(2*p14 + p24 + p25 - 2*p56)*s*tk + 
     $    (-4*p14 + 2*p15 - 6*p24 - 4*p25 + p46 + 3*p56)*s*uk + 
     $    (p14 + p15)*uk**2)/(2d0*s))
     $ + eps5 *(       
     $ (s*((p46 + 5*p56)*s + (-2*p14 + p24 + 3*p25 + 2*p56)*tk) - 
     $ ((3*p14 + p15 + 2*p24 - 2*p56)*s + (p14 + p15)*tk)*uk)/(2d0*s)))
      
            
 
      amp2ww = CF*(8d0*pi**2)*props1*props2  * gw**4/vev**2 * amp2ww
      amp2wwqg =  (8d0*pi**2)*props1* props2 * gw**4/vev**2 * amp2wwqg
      
    
    
c     decide what to return, and multiply by the coupling    
      if(rflav(6).eq.0.and.rflav(1).ne.0.and.rflav(2).ne.0) then
	amp2= amp2ww * ckm**2 
      elseif(rflav(6).ne.0) then
	amp2 = amp2wwqg * ckm**2
      else 
	write(*,*) "some wrong with flavor"
	write(*,*) rflav(1), rflav(2), rflav(6)
	write(*,*) "not a W + H channel"
      endif

      end      
      

c     Real Emission Diagrams for Yukawa emissions      
      subroutine amplitude_yuk(pp,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal), pp2(0:3,nlegreal)
      integer rflav(nlegreal)
      integer i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props,t1
      real * 8 p15,p25,p35,p45,p56
      real * 8 gw,mw,colfac
      real * 8 props1, props2
      real * 8 s, s2, tk, uk, vev, den1, den2, rg_s
      real * 8 amp2yu, amp2yu_qg, amp2yd, amp2yd_qg
      external dotp
      real * 8 dotp
      
      
      n=3d0
      gw=ph_geff
      mw=ph_Wmass
      vev = ph_vev

c     q qbar channel: p1 quark, p2 aq, p4 al, p5 l      
      pp2 = pp
      
c     W+ production e+ nu
      if(rflav(4).lt.0) then
c       if qbar q, exchange 1 and 2 
	if(rflav(2).gt.0.and.rflav(1).lt.0) then
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if q g, exchange gluon p1
	elseif(rflav(1).gt.0.and.rflav(2).eq.0) then
	  call swap_momenta_minus(pp2(:,2),pp2(:,6))
c	if qb g, exchange lepton-antilepton
	elseif(rflav(1).lt.0.and.rflav(2).eq.0) then
	  call swap_momenta_minus(pp2(:,2),pp2(:,6))
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if g q, exchange 1 and 2
	elseif(rflav(1).eq.0.and.rflav(2).gt.0) then
	  call swap_momenta_minus(pp2(:,1),pp2(:,6))
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if g aq, exchange 1 and 2 and lepton antilepton	  
	elseif(rflav(1).eq.0.and.rflav(2).lt.0) then
	  call swap_momenta_minus(pp2(:,1),pp2(:,6))
	endif
c    W- production
      elseif(rflav(4).gt.0) then
      	if(rflav(2).lt.0.and.rflav(1).gt.0) then
	 call swap_momenta(pp2(:,1),pp2(:,2))
c       if qbar q, exchange 1 and 2 
c	if(rflav(2).gt.0.and.rflav(1).lt.0) then
c	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if q g, exchange gluon p1
	elseif(rflav(1).gt.0.and.rflav(2).eq.0) then
	  call swap_momenta_minus(pp2(:,2),pp2(:,6))
	  call swap_momenta(pp2(:,1),pp2(:,2))
c	if qb g, exchange lepton-antilepton
	elseif(rflav(1).lt.0.and.rflav(2).eq.0) then
	  call swap_momenta_minus(pp2(:,2),pp2(:,6))
c	if g q, exchange 1 and 2
	elseif(rflav(1).eq.0.and.rflav(2).gt.0) then
	  call swap_momenta_minus(pp2(:,1),pp2(:,6))
c	if g aq, exchange 1 and 2 and lepton antilepton	  
	elseif(rflav(1).eq.0.and.rflav(2).lt.0) then
	  call swap_momenta_minus(pp2(:,1),pp2(:,6))
	  call swap_momenta(pp2(:,1),pp2(:,2))
	endif
      endif   
      
      
      p12=dotp(pp2(0,1),pp2(0,2))
      p13=dotp(pp2(0,1),pp2(0,3))
      p14=dotp(pp2(0,1),pp2(0,4))
      p23=dotp(pp2(0,2),pp2(0,3))
      p24=dotp(pp2(0,2),pp2(0,4))
      p33=dotp(pp2(0,3),pp2(0,3))
      p34=dotp(pp2(0,3),pp2(0,4))
      p16=dotp(pp2(0,1),pp2(0,6))
      p26=dotp(pp2(0,2),pp2(0,6))
      p36=dotp(pp2(0,3),pp2(0,6))
      p46=dotp(pp2(0,4),pp2(0,6))
      p15=dotp(pp2(0,1),pp2(0,5))
      p25=dotp(pp2(0,2),pp2(0,5))
      p35=dotp(pp2(0,3),pp2(0,5))
      p45=dotp(pp2(0,4),pp2(0,5))
      p56=dotp(pp2(0,5),pp2(0,6))
      
      
      
c     some invariants      
      s =    2d0*p12
      s2 =   2d0*p45
      tk = - 2d0*p16
      uk = - 2d0*p26
      
      
c     W propagators
c     s propagator
      props1 = 1d0/((s + tk + uk -mw**2)**2+ph_Wwidth**2*mw**2)
c     lepton-neutrino decay     
      props2 = 1d0/((s2-mw**2)**2+ph_Wwidth**2*mw**2)

      
c     common prefactor      
      den1 = 1d0/((-2*(p24 + p25) + s2)**2*tk*uk*(-2*p24 - 2*p25
     . + 2*p46 + 2*p56 + s2 + uk)**2 )
     
      den2 = 1d0/((-2*(p14 + p15) + s2)**2*tk*uk*(-2*p14 - 2*p15 
     . + 2*p46 + 2*p56 + s2 + tk)**2) 
c     Amplitude squared. Color and spin sum already included      
c     q qbar channel     
c     ReXi**2 + ImXi**2
  

      amp2yu =  -4*p25*(2*p14 + 2*p15 - s - tk)*(-4*p14*p25 + 4*p25*p46 
     . + (2*p24 - s2)*(2*p15 - 2*p56 - s - uk))*(2*p24 + 2*p25 - 2*p46 
     . - 2*p56 - s2 - uk)*uk + 2*p25*tk*uk*(8*p15*(p24 + p25)*p46 
     . - 4*p24*p46*s - 4*p25*p46*s - 4*p15*p46*s2 + 2*p46*s*s2 
     .- 4*p24**2*tk - 4*p24*p25*tk - 4*p25*p46*tk + 4*p24*p56*tk 
     .+ 4*p24*s2*tk + 2*p25*s2*tk - 2*p56*s2*tk - s2**2*tk + 2*p14*(
     . 2*(p24 + p25) - s2)*(2*p24 + 2*p25 - 2*p56 - s2 - uk) 
     .+ 2*p24*tk*uk - s2*tk*uk) - 2*p25*uk*(-2*p24 - 2*p25 + 2*p46 
     .+ 2*p56 + s2 + uk)**2*(4*p25*p46 - (2*p24 - s2)*(2*p56 + uk)) + 
     .  2*p56*(-2*(p24 + p25) + s2)**2*tk*((2*p24 - 2*p46 - s2)*(2*p15 
     .- s - tk) + 2*p14*(-2*p25 + 2*p56 + uk)) - (2*(p24 + p25) 
     .- s2)*tk*(2*s*(4*p25*p46**2 - 4*p25*p46*(p24 + p25 - 2*p56) 
     .- 4*p24*p56**2 + 2*(p24*p25 - p25**2 + p56*(-p24 + p46 + p56))*s2 
     .+ (-p25 + p56)*s2**2) + 4*(-2*p24*p56**2 - 2*p25**2*(p24 + s2) 
     .+ p25*(-2*p24**2 + 2*p56*(p46 + s2) + p24*(2*(p46 + p56) 
     .+ s2)))*tk 
     .+ (s*s2*(2*(p46 + p56) + s2) - 2*(2*p25*(p46 - s2) + p56*s2)*tk 
     .- 2*p24*(s*s2 - 2*p25*tk + 2*p56*(s + tk)))*uk - s2*tk*uk**2 
     .+ 2*p14*(8*p25**3 - 4*p25*p56*(2*p24 - 2*p56 + s2) + 4*p25**2*(
     . 2*p24 - 2*p46 - 4*p56 + s2 - uk) + 4*p25*(p46 + p56 - s2)*uk 
     .+ (2*p56 + uk)*(4*p24*p56 + s2*uk)) + 2*p15*(8*p25**2*(-p24 + s2) 
     .+ (2*p56 + uk)*(4*p24**2 + s2*uk - 2*p24*(2*p46 + s2 + uk)) 
     .+ 4*p25*(-2*p24**2 - 2*p56*(p46 + s2) + (p46 - s2)*uk + p24*(
     . 2*p46 + 4*p56 + s2 + 2*uk)))) - (2*(p24 + p25) - s2)*(2*p24 
     .+ 2*p25 - 2*p46 - 2*p56 - s2 - uk)*(8*p25**2*p46*s 
     .- 8*p24*p25*p56*s - 8*p25*p46*p56*s + 8*p24*p56**2*s 
     .- 8*p24*p25*s**2 + 4*p25*p46*s**2 + 4*p24*p56*s**2 
     .+ 4*p25*p56*s*s2 - 4*p56**2*s*s2 + 4*p25*s**2*s2 - 2*p56*s**2*s2 
     .+ 8*p25**2*p46*tk - 8*p24*p25*p56*tk - 8*p25*p46*p56*tk 
     .+ 8*p24*p56**2*tk - 8*p24*p25*s*tk + 4*p25*p46*s*tk 
     .+ 4*p24*p56*s*tk + 4*p25**2*s2*tk - 4*p25*p56*s2*tk 
     .+ 4*p25*s*s2*tk + 2*p25*s2*tk**2 - 8*p24*p25*s*uk 
     .+ 4*p25*p46*s*uk + 4*p24*p56*s*uk + 4*p25*s*s2*uk - 2*p56*s*s2*uk 
     .+ 4*p15**2*(-2*p24 + s2)*uk - 8*p24*p25*tk*uk + 4*p25*p46*tk*uk 
     .+ 4*p24*p56*tk*uk + 2*p56*s2*tk*uk + s*s2*tk*uk + s2*tk*uk**2 
     .+ 4*p14*p25*(uk*(2*p15 + s + uk) - 2*p25*(2*s + tk + uk) 
     .+ 2*p56*(2*s + tk + uk)) + 2*p15*(2*p24*(-2*p56*(s + tk - uk) 
     .+ uk*(s + uk)) + s2*(2*p56*(s - uk) - uk*(s + tk + uk)) 
     .+ p25*(4*p24*(2*s + tk + uk) - 2*(s2*(2*s + tk + uk) 
     .+ 2*p46*(s + 2*uk)))))
      
      amp2yd = -2*p14*tk*(-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)**2*
     .(4*p14*p56 - 2*p15*(2*p46 + tk) + s2*(2*p46 + tk)) + 4*p14*(
     . 4*p14*(p25 - p56) - (2*p15 - s2)*(2*p24 - 2*p46 - s - tk))*(
     . 2*p14 + 2*p15 - 2*p46 - 2*p56 - s2 - tk)*tk*(2*p24 + 2*p25 - s 
     .- uk) + 2*p46*(-2*(p14 + p15) + s2)**2*(2*p25*(-2*p14 + 2*p46 
     .+ tk) + (2*p15 - 2*p56 - s2)*(2*p24 - s - uk))*uk + 2*p14*tk*uk*(
     . 2*(2*(p14 + p15) - s2)*(2*p14*p25 + 2*p15*p25 + p56*(2*p24 - s) 
     .- p25*(2*p46 + s2 + tk)) - (p14*(4*p15 + 4*p56 - 2*s2) + (2*p15 
     .- s2)*(2*p15 - 2*p46 - s2 - tk))*uk) - (2*(p14 + p15) - s2)*uk*(
     . 16*p14**3*p25 + s2*(2*p46 + tk)*(s*(2*(p46 + p56) + s2) + 2*(p24
     . + p25)*tk - tk*uk) + 2*p14*(4*p56*(2*p46 + p56)*s - s*s2**2 
     .- 8*p24*p46*(p56 + s2) + 4*p24*(p56 - s2)*tk + 4*p25*(p46*(2*p46
     . - s2) + (p46 + p56 - s2)*tk) + 2*(2*p46*(p56 + s2) + (-p56 
     .+ s2)*tk)*uk) + 8*p15**2*(p24*(2*p46 + tk) - p14*(2*p24 + uk)) 
     .- 4*p14**2*(2*p56*s + 2*p25*(4*p46 + 2*p56 - s2 + tk) + s2*(
     . -4*p24 + s + 2*uk)) + 2*p15*(-4*p14**2*(2*p24 - 2*p25 + uk) 
     .+ 2*p14*(-4*p25*p46 - 2*p56*s + s*s2 + 2*p24*(4*p46 + 2*p56 + s2
     . + 2*tk) + (2*p46 + 2*p56 + s2 + tk)*uk) - (2*p46 + tk)*(s*s2 
     .+ 2*p24*(2*p56 + s2 + tk) + 2*p46*(-2*p25 + s + uk)))) + (2*(p14 
     .+ p15) - s2)*(2*p14 + 2*p15 - 2*p46 - 2*p56 - s2 - tk)*((2*p24 
     .- 2*p46 - s - tk)*(-2*(-2*p15 + s2)*(p46*s + p24*tk) + (4*p15*p46 
     . + s2*tk)*uk) + 4*p14**2*(-(s2*uk) - 2*p56*(s + uk) + 2*p25*(2*s 
     .+ tk + uk)) - 2*p14*(2*(s*(p46*(-2*p56 + s2) + (p56 + s2)*(s 
     .+ tk)) + p25*(tk*(s + tk) + 2*p46*(2*s + tk))) + 2*(2*p25*p46 
     .+ (-p46 + s)*s2 + p56*(-2*p46 + s + tk))*uk + s2*uk**2 
     .+ 4*p15*(-((p46 + s + tk)*(s + uk)) + p24*(2*s + tk + uk)) 
     .- 2*p24*(-2*p25*tk + 2*p56*(s + 2*tk) + s2*(2*s + tk + uk))))
    
      call RGE_s(LambdaNP,rg_s)
	
    
      amp2yu =  den1*amp2yu *props2/6d0 * gw**4 * rg_s**2
      amp2yd =  den2*amp2yd *props2/6d0 * gw**4 * rg_s**2
    
c     color factor  and alpha_s, and normalize to as/2pi
      amp2yu = amp2yu * CF * (8d0*pi**2)
      amp2yd = amp2yd * CF * (8d0*pi**2)
    
    
c     q g channel 
      amp2yu_qg = - 1/2d0 * 1/CF * amp2yu  
      amp2yd_qg = - 1/2d0 * 1/CF * amp2yd  
      

    

c     decide what to return, and multiply by the coupling    
      if(rflav(6).eq.0.and.rflav(1).ne.0.and.rflav(2).ne.0) then
	i = rflav(1)
	j = rflav(2)
	if(mod(abs(i),2).eq.0) then
	  amp2=amp2yu*( ph_ReYu(abs(i)/2,(abs(j)+1)/2)**2 
     .                + ph_ImYu(abs(i)/2,(abs(j)+1)/2)**2 ) 
     .	     + amp2yd*( ph_ReYd(abs(i)/2,(abs(j)+1)/2)**2 
     .                + ph_ImYd(abs(i)/2,(abs(j)+1)/2)**2 )
	elseif(mod(abs(i),2).eq.1) then   
	  amp2=amp2yu*( ph_ReYu(abs(j)/2,(abs(i)+1)/2)**2 
     .                + ph_ImYu(abs(j)/2,(abs(i)+1)/2)**2 ) 
     .	     + amp2yd*( ph_ReYd(abs(j)/2,(abs(i)+1)/2)**2 
     .                + ph_ImYd(abs(j)/2,(abs(i)+1)/2)**2 )
	endif
      elseif(rflav(6).ne.0.and.rflav(1).eq.0) then
	i = rflav(2)
	j = rflav(6)
	if(mod(abs(i),2).eq.0) then
	  amp2=amp2yu_qg*( ph_ReYu(abs(i)/2,(abs(j)+1)/2)**2 
     .                   + ph_ImYu(abs(i)/2,(abs(j)+1)/2)**2 ) 
     .        +amp2yd_qg*( ph_ReYd(abs(i)/2,(abs(j)+1)/2)**2 
     .                   + ph_ImYd(abs(i)/2,(abs(j)+1)/2)**2 )
	elseif(mod(abs(i),2).eq.1) then   
	  amp2=amp2yu_qg*( ph_ReYu(abs(j)/2,(abs(i)+1)/2)**2 
     .                	 + ph_ImYu(abs(j)/2,(abs(i)+1)/2)**2 ) 
     .	     + amp2yd_qg*( ph_ReYd(abs(j)/2,(abs(i)+1)/2)**2 
     .                	 + ph_ImYd(abs(j)/2,(abs(i)+1)/2)**2 )
	endif
      elseif(rflav(6).ne.0.and.rflav(2).eq.0) then	  
	i = rflav(1)
	j = rflav(6)
	if(mod(abs(i),2).eq.0) then
	  amp2=amp2yu_qg*( ph_ReYu(abs(i)/2,(abs(j)+1)/2)**2 
     .                	 + ph_ImYu(abs(i)/2,(abs(j)+1)/2)**2 )
     . 	     + amp2yd_qg*( ph_ReYd(abs(i)/2,(abs(j)+1)/2)**2 
     .                   + ph_ImYd(abs(i)/2,(abs(j)+1)/2)**2 )
	elseif(mod(abs(i),2).eq.1) then   
	  amp2=amp2yu_qg*( ph_ReYu(abs(j)/2,(abs(i)+1)/2)**2 
     .                	 + ph_ImYu(abs(j)/2,(abs(i)+1)/2)**2 ) 
     .	     + amp2yd_qg*( ph_ReYd(abs(j)/2,(abs(i)+1)/2)**2 
     .                	 + ph_ImYd(abs(j)/2,(abs(i)+1)/2)**2 )
	endif
      else 
	write(*,*) "some wrong with flavor"
	write(*,*) rflav(1), rflav(2), rflav(6)
	write(*,*) "not a W + H channel"
      endif

      end      