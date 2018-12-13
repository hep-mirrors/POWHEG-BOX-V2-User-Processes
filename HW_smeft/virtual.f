C     returns 2 Re(M_B * M_V)/(as/(2pi)), 
C     where M_B is the Born amplitude and 
C     M_V is the finite parte of the virtual amplitude.
C     The as/(2pi) factor is attached at a later point.
      subroutine setvirtual(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      real *8 p(0:3,nlegborn),virtual, virtualedm, virtualxi, virtuals
      integer vflav(nlegborn)
      real * 8 q2,llog
      real *8 born,bornjk(nlegborn,nlegborn),bmunu(0:3,0:3,nlegborn)
      integer i,j,k,mu,nu,n
      real * 8 amp2,amp2u,amp2d, amp2xi, amp, ampyu, ampyd
      real * 8 bv,ba,gw,mw,props, props1, props2, vev
      real *8 p13,p14,p23,p24,p34,p12,p33, rg, rg_s, yu, yd
      real *8 p15, p25, p35, p45, s, s2
      real *8 dotp, t, u, s1
      real *8 cbox_yu, ctri_yu, cfin_yu, clog_yu
      real *8 cbox_yd, ctri_yd, cfin_yd, clog_yd
      real *8 damp2, dw, ckm, box1, box2, tri
      real *8 amp2ww, eps
      external dotp
      integer tmp1, tmp2

c     virtual diagrams     
      q2=2*dotp(p(0,1),p(0,2))
      llog = log(st_muren2/q2)
      virtual = CF*(pi**2-8-3*llog-llog**2)
      virtualedm = CF*(pi**2-8-4*llog-llog**2)
      virtuals = CF*(pi**2-2-llog**2)  
       
c     recalculate the Born      
      amp2  = 0d0
      amp2u = 0d0
      amp2d = 0d0
      amp2xi = 0d0
      damp2  = 0d0
      amp2ww = 0d0
      dw = 0d0
      ckm = 0d0
      box1 = 0d0
      box2 = 0d0
      tri = 0d0
      
      cbox_yu =0d0 
      ctri_yu =0d0 
      cfin_yu =0d0
      clog_yu =0d0 
      cbox_yd =0d0 
      ctri_yd =0d0 
      cfin_yd =0d0
      clog_yd =0d0
      
      n=3d0 !number of initial colour
c
      gw=ph_geff
      mw=ph_wmass
      vev = ph_vev

c     Scalar products and invariants	
      p12=dotp(p(0,1),p(0,2))
      p13=dotp(p(0,1),p(0,3))
      p14=dotp(p(0,1),p(0,4))
      p23=dotp(p(0,2),p(0,3))
      p24=dotp(p(0,2),p(0,4))
      p33=dotp(p(0,3),p(0,3))
      p34=dotp(p(0,3),p(0,4))
      
      p15=dotp(p(0,1),p(0,5))
      p25=dotp(p(0,2),p(0,5))
      p35=dotp(p(0,3),p(0,5))
      p45=dotp(p(0,4),p(0,5))      
      
      s = 2d0 * p12
      s2 = 2d0 * p45

      s1 = p33
      
      
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c     Standard Model
c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

c     vectorial and axial parts
      bv = -256*p24*p14-128*p24*p13+128*p24*p12-128*p14*p23+128*p14*p12
      ba = -128*p24*p13+128*p24*p12+128*p14*p23-128*p14*p12
c
c     W- PRODUCTION
      if (vflav(4).gt.0) then
c     case one: q(p1),qbar(p2) -> H W- 
         if (vflav(1).gt.0) then
            amp2=bv+ba          
c     case two: qbar(p1),q(p2) -> H W- 
         elseif (vflav(1).lt.0) then
            amp2=bv-ba        
         endif
c     W+ PRODUCTION
      elseif (vflav(4).lt.0) then
c     case one: q(p1),qbar(p2) -> H W+ 
         if (vflav(1).gt.0) then
            amp2=bv-ba         
c     case two: qbar(p1),q(p2) -> H  W+ 
         elseif (vflav(1).lt.0) then
            amp2=bv+ba     
         endif
      endif

c     average over initial spins and colours
      amp2=amp2*n/4d0/n**2
c
c     W propagators
      props = 1/((2*p12-mw**2)**2+ph_Wwidth**2*mw**2)/((p33-2*p13-2*p23+
     #2*p12-mw**2)**2+ph_Wwidth**2*mw**2)
c     s propagator
      props1 = 1/((s-mw**2)**2+ph_Wwidth**2*mw**2)
c     W --> lepton-neutrino decay     
      props2 = 1/((s2-mw**2)**2+ph_Wwidth**2*mw**2)

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc      
c           
c    Dimension 6 operators
c
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      if(wdm) then
c     ReGD^2 + ImGD^2
	amp2d =   mw**4 * s *( 4d0 *( p15 - p25 )*(p14 - p24)
     .  	  + s * s2 ) * props1

	amp2d = amp2d + 2d0 * mw**2 *( s - mw**2)* (- 4d0 * (p14 - p24) * 
     .  	(p14 * p25 - p15 * p24) +  
     .  	(p14 + p24) * s * s2  ) * props1
	amp2d = amp2d  + 4d0 * p14 *  p24 * s2

      
c     ReGU^2 + ImGU^2
	amp2u =  mw**4 * s *( 4d0 *( p15 - p25 )*(p14 - p24)
     .  	 + s * s2 ) * props1
	amp2u = amp2u + 2d0 * mw**2*( s - mw**2) * (- 4d0 * (p15 - p25) * 
     .  	(p15 * p24 - p25 * p14) +  
     .  	(p15 + p25) * s * s2  ) * props1
	amp2u = amp2u +  4d0 * p15 *  p25 * s2
      
      
c     add the couplings gew^4/3d0/vev^4 and the lepton propagator
	amp2d = amp2d * gw**4/vev**4/3d0 * props2
	amp2u = amp2u * gw**4/vev**4/3d0 * props2      
	
c     add the RGE factor 
	call RGE(LambdaNP,rg)
        amp2d = rg**2 * amp2d
        amp2u = rg**2 * amp2u
	
c     add the right handed currents
c     W- PRODUCTION
	if (vflav(4).gt.0) then
c     case one: q(p1),qbar(p2) -> H W- 
	  if (vflav(1).gt.0) then
	      amp= p14 * p25          
c     case two: qbar(p1),q(p2) -> H W- 
	  elseif (vflav(1).lt.0) then
	      amp= p15* p24    
	  endif
c     W+ PRODUCTION
	elseif (vflav(4).lt.0) then
c     case one: q(p1),qbar(p2) -> H W+ 
	  if (vflav(1).gt.0) then
	      amp= p15 * p24         
c     case two: qbar(p1),q(p2) -> H  W+ 
	  elseif (vflav(1).lt.0) then
	      amp= p25* p14     
	  endif
	endif
	
	amp2xi = mw**4 * 4 * amp * props1
	
	amp2xi = amp2xi + 8*mw**2*amp*(s - mw**2) * props1
	
	amp2xi = amp2xi + 4 * amp
c     add the couplings gew^4/3d0/vev^4 and the lepton propagator	
	amp2xi = amp2xi * gw**4/vev**2/3d0 * props2

c     modification of the diagonal W-quark left handed couplings	
	i=vflav(1)
        j=vflav(2)
	if(wdm) then
	  if (mod(i,2).eq.0) then
	    dw = - ph_Qphi3(abs(i)/2,(abs(j)+1)/2)
	    ckm =  ph_CKM(abs(i)/2,(abs(j)+1)/2)
	  elseif(mod(abs(i),2).eq.1) then
	    dw = - ph_Qphi3(abs(j)/2,(abs(i)+1)/2)
	    ckm =  ph_CKM(abs(j)/2,(abs(i)+1)/2)
	  endif
	endif
c     W- PRODUCTION
	if (vflav(4).gt.0) then
c     case one: q(p1),qbar(p2) -> H W- 
	  if (vflav(1).gt.0) then
	      damp2 = p15 * p24          
c     case two: qbar(p1),q(p2) -> H W- 
	  elseif (vflav(1).lt.0) then
	      damp2= p14* p25    
	  endif
c     W+ PRODUCTION
	elseif (vflav(4).lt.0) then
c     case one: q(p1),qbar(p2) -> H W+ 
	  if (vflav(1).gt.0) then
	      damp2 = p14 * p25         
c     case two: qbar(p1),q(p2) -> H  W+ 
	  elseif (vflav(1).lt.0) then
	      damp2= p24* p15     
	  endif
	endif
	
	damp2 = damp2 *4/3d0*gw**4 * 1/vev**2 *props2 * dw * 
     .	( dw + 2 * mw**2 * (s - mw**2) * props1 * (ckm + dw)  ) 

     
c     non standard Yukawa couplings 
	if(mod(i,2).eq.0) then 
	  yu =  (  ph_ReYu(abs(i)/2,(abs(j)+1)/2)**2 
     .           + ph_ImYu(abs(i)/2,(abs(j)+1)/2)**2 )  
	  yd =  (  ph_ReYd(abs(i)/2,(abs(j)+1)/2)**2 
     .           + ph_ImYd(abs(i)/2,(abs(j)+1)/2)**2 ) 
	elseif (mod(abs(i),2).eq.1) then   
	  yu =   ( ph_ReYu(abs(j)/2,(abs(i)+1)/2)**2 
     .           + ph_ImYu(abs(j)/2,(abs(i)+1)/2)**2 )  
	  yd = (   ph_ReYd(abs(j)/2,(abs(i)+1)/2)**2 
     .           + ph_ImYd(abs(j)/2,(abs(i)+1)/2)**2 )
	endif  

	if((abs(yu).gt.0).or.(abs(yd).gt.0)) then 
	call TriangleInt(s,s1,s2,tri)
c     W- PRODUCTION
	if (vflav(4).gt.0) then
c     case one: q(p1),qbar(p2) -> H W- 
	  if (vflav(1).gt.0) then
c     invariants 
	  u = s2 - 2 * p14 - 2*p15 
	  t = s2 - 2 * p24 - 2*p25
	  call BoxInt(s,s1,s2,t,box1)
	  call BoxInt(s,s1,s2,u,box2)

c     Born 
	      ampyu =  p15*(4*p15*p24 - 4*p14*p25 + 2*p14*s 
     .+ 2*p25*s2 - s*s2)/(-2*(p14 + p15) + s2)**2
	      ampyd =  p24*(4*p15*p24 - 4*p14*p25 + 2*p25*s 
     .+ 2*p14*s2 - s*s2)/(-2*(p24 + p25) + s2)**2
c      non born  up type
	     cbox_yu = -((4*p15*(p15 + 2*p24 + p25) - 2*p15*s
     . + 2*p14*(2*p15 - 2*p25 + s) - (2*p15 - 2*p25 + s)*s2)*
     .     (8*(p14 + p15)*(-(p15*p24) + p14*p25) - 2*(p15*(2*p24 
     . + 4*p25 - s) + p14*(2*p25 + s))*s2 + s*s2**2))/
     . (2.*(-2*(p14 + p15) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))
	      ctri_yu = -((-8*(p14 + p15 + p24 + p25)*(-(p15*p24) 
     .+ p14*p25)*(2*p15*(p15 + 2*p24 + p25) - p15*s + p14*(2*p15 
     .- 2*p25 + s)) + 2*(4*(p15**2*(p14 + p15 - p24)*p24 + p15*((p14 
     .+ p15)*(p14 + 2*p15) + (6*p14 + 4*p15)*p24 + p24**2)*p25 
     .+ (-p14**2 + p14*(4*p15 + p24) + p15*(4*p15 + 3*p24))*p25**2 
     .+ (p14 + 2*p15)*p25**3) - 2*(-(p14**2*p15) + p15*(p15**2 
     .+ 8*p15*p24 + 3*p24**2 + 4*(p15 + p24)*p25 + 3*p25**2) 
     .+ 2*p14*(2*p15*p24 + p25*(p24 + 2*p25)))*s + (p14**2 + p15*(p15 
     .+ 3*p24 + p25) + p14*(-2*p15 + p24 + 3*p25))*s**2)*s2 
     .- s*(2*(p15*(p14 + p15 - p24) + (-p14 + 6*p15 + p24)*p25 +p25**2) 
     .+ (p14 - 5*p15 - p24 - 3*p25)*s + s**2)*s2**2)/
     . (s*(2*(p14 + p15) - s2)*(-4*(p14 + p15)*(p24 + p25) + s*s2)))
	      clog_yu = (s2*(-8*(p14 + p15)*(5*p15*(-(p15*p24) 
     .+ p14*p25) - 2*(-p14**2 + p14*p15 + p15**2)*s) + 2*(p15**2*(2*p24 
     .+ 12*p25 - 9*s) + p14*p15*(10*p25 - 3*s) + 4*p14**2*s)*s2
     . - p15*s*s2**2))/(4.*(p14 + p15)**2*(-2*(p14 + p15) + s2)**2)
	      cfin_yu = (8*p15*(p14 + p15)*(-(p15*p24) + p14*p25) 
     .- 2*(p15**2*(2*p24 + 4*p25 - 5*s) + 4*p14**2*s + p14*p15*(2*p25 
     .+ s))*s2 + p15*s*s2**2)/(2.*(p14 + p15)*(-2*(p14 + p15) + s2)**2)
c        non born down type  
	    cbox_yd =         -((8*p15*p24 + 4*p24**2 + 4*p24*p25 
     .- 2*p24*s + 2*p25*s - 2*p24*s2 - s*s2 + 2*p14*(2*p24 - 2*p25 
     .+ s2))*(8*p14*p25*(p24 + p25) - 4*p14*(2*p24 + p25)*s2 + s*s2*(
     . 2*p24 - 2*p25 + s2) - 4*p15*p24*(2*(p24 + p25) + s2)))/
     . (2.*(-2*(p24 + p25) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))
	    ctri_yd =          (8*(p14 + p15 + p24 + p25)*(-(p15*p24) 
     .+ p14*p25)*(2*p14*(p24 - p25) + 2*p24*(2*p15 + p24 + p25) + (-p24
     . + p25)*s) - 2*(4*(p15*p24**2*(-p15 + p24 + p25) + p14**3*(2*p24 
     .+ p25) + p14**2*(4*p24**2 + 4*p24*p25 - p25**2 + p15*(3*p24 + p25
     . )) + p14*p24*(p15**2 + (p24 + p25)*(2*p24 + p25) + p15*(4*p24 
     .+ 6*p25))) - 2*(4*p14*p24*(p15 + p24) + 2*p14*p15*p25 + p14**2*(
     . 3*p24 + 4*p25) + p24*(3*p15**2 + 8*p15*p24 + p24**2 + 4*p15*p25 
     .- p25**2))*s + ((p24 - p25)**2 + p15*(3*p24 + p25) + p14*(p24 
     .+ 3*p25))*s**2)*s2 + s*(2*(p14**2 + p14*(p15 + 6*p24 - p25) 
     .+ p24*(-p15 + p24 + p25)) - (3*p14 + p15 + 5*p24 - p25)*s 
     .+ s**2)*s2**2)/
     .  (s*(2*(p24 + p25) - s2)*(-4*(p14 + p15)*(p24 + p25) + s*s2))
	    clog_yd =           (p24*s2*(8*(p24 + p25)*(5*p15*p24 
     .- 5*p14*p25 + 2*p25*s) + 2*(2*p15*p24 + 2*p14*(6*p24 + 5*p25) 
     .- 5*p24*s - 3*p25*s)*s2 - s*s2**2))/
     .  (4.*(p24 + p25)**2*(-2*(p24 + p25) + s2)**2)
	    cfin_yd = (p24*(8*p14*p25*(p24 + p25) - 4*p14*(2*p24 
     .+ p25)*s2 + s*s2*(2*p24 - 2*p25 + s2) - 4*p15*p24*(2*(p24 + p25) 
     .+ s2)))/(2.*(p24 + p25)*(-2*(p24 + p25) + s2)**2)
c     case two: qbar(p1),q(p2) -> H W- 
	  elseif (vflav(1).lt.0) then
	  u = s2 - 2 * p24 - 2*p25 
	  t = s2 - 2 * p14 - 2*p15
	  call BoxInt(s,s1,s2,t,box1)
	  call BoxInt(s,s1,s2,u,box2)
c      Born	  
	    ampyu = p25*(-4*p15*p24 + 4*p14*p25 + 2*p24*s 
     .+ 2*p15*s2 - s*s2)/(-2*(p24 + p25) + s2)**2
	      ampyd = p14*(-4*p15*p24 + 4*p14*p25 + 2*p15*s 
     .+ 2*p24*s2 - s*s2)/(-2*(p14 + p15) + s2)**2
     	     cbox_yu = -((8*p14*p25 + 4*p24*p25 + 4*p25**2 
     .+ 2*p24*s - 2*p25*s - 2*p25*s2 - s*s2 + 2*p15*(-2*p24 + 2*p25 
     .+ s2))*(8*p15*p24*(p24 + p25) - 4*p15*(p24 + 2*p25)*s2 + s*s2*(
     . -2*p24 + 2*p25 + s2) - 4*p14*p25*(2*(p24 + p25) + s2)))/(
     . 2.*(-2*(p24 + p25) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))
          ctri_yu =  -((-8*(p14 + p15 + p24 + p25)*(p15*p24 
     .- p14*p25)*(2*p15*(-p24 + p25) + 2*p25*(2*p14 + p24 + p25) + (p24
     .- p25)*s) + 2*(4*(p14*p25**2*(-p14 + p24 + p25) + p15**3*(p24 
     .+ 2*p25) + p15**2*(-p24**2 + 4*p24*p25 + 4*p25**2 + p14*(p24 
     .+ 3*p25)) + p15*p25*(p14**2 + (p24 + p25)*(p24 + 2*p25) 
     .+ p14*(6*p24 + 4*p25))) - 2*(3*p14**2*p25 - p24**2*p25 
     .+ 4*p15*p25**2 + p25**3 + 2*p14*(p15 + 2*p25)*(p24 + 2*p25) 
     .+ p15**2*(4*p24 + 3*p25))*s + ((p24 - p25)**2 + p15*(3*p24 + p25) 
     .+ p14*(p24 + 3*p25))*s**2)*s2 - s*(2*(p15**2 + p25*(-p14 + p24 
     .+ p25) + p15*(p14 - p24 + 6*p25)) - (p14 + 3*p15 - p24 + 5*p25)*s
     . + s**2)*s2**2)/
     .(s*(2*(p24 + p25) - s2)*(-4*(p14 + p15)*(p24 + p25) + s*s2)))
	      clog_yu =          (s2*(-8*(p24 + p25)*(5*p15*p24*p25 
     .+ 2*p24**2*s + p25*(-5*p14*p25 - 2*(p24 + p25)*s)) 
     .+ 2*(2*p15*p25*(5*p24 + 6*p25) + 4*p24**2*s + p25*(2*p14*p25 
     .- 3*(p24 + 3*p25)*s))*s2 - p25*s*s2**2))/
     .  (4.*(p24 + p25)**2*(-2*(p24 + p25) + s2)**2)
	      cfin_yu =  (8*p25*(p24 + p25)*(p15*p24 - p14*p25) 
     .- 2*(p25**2*(2*p14 + 4*p15 - 5*s) + 4*p24**2*s + p24*p25*(2*p15
     . + s))*s2+ p25*s*s2**2)/(2.*(p24 + p25)*(-2*(p24 + p25) + s2)**2)
c        non born down type  
	    cbox_yd = -((4*p14*(p14 + p24 + 2*p25) - 2*p14*s 
     .+ 2*p15*(2*p14 - 2*p24 + s) - (2*p14 - 2*p24 + s)*s2)*(8*(p14 
     .+ p15)*(p15*p24 - p14*p25) - 2*(p14*(4*p24 + 2*p25 - s) 
     .+ p15*(2*p24 + s))*s2 + s*s2**2))/
     .(2.*(-2*(p14 + p15) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))  
	    ctri_yd =  (-16*p14**4*p25 - (2*p24 - s)*(2*p15*(p15 + p24 
     .+ p25) + (-p15 + p24 + p25 - s)*s2)*(4*p15*p24 - s*s2) 
     .+ p14*(16*p15*p24*(p15**2 + (p24 + p25)*(p24 + 3*p25) + p15*(p24 
     .+ 4*p25)) - 8*p15*(p15*p25 + (p24 + p25)**2)*s - 2*(4*p24*(p15**2 
     .+ (p24 + p25)*(2*p24 + p25) + p15*(4*p24 + 6*p25)) + 2*(p15**2 
     .- 3*p24**2 - 4*(p15 + p24)*p25 - 3*p25**2)*s + (-2*p15 + p24 
     .+ 3*p25)*s**2)*s2 + (2*p15 + 12*p24 - 2*p25 - 5*s)*s*s2**2) 
     .+ 4*p14**3*(4*p15*(p24 - 2*p25) - 12*p25**2 + 2*p25*s - 2*p25*s2 
     .+ s*s2 - 4*p24*(2*p25 + s2)) + 2*p14**2*(8*p15**2*(2*p24 - p25)
     . - 4*p25*(p24 + p25)*(2*p24 + 4*p25 - s) - (4*(4*p24**2 
     .+ 4*p24*p25 - p25**2) - 8*(p24 + 2*p25)*s + s**2)*s2 + s*s2**2 + 
     . 4*p15*(4*p24**2 + p24*(4*p25 - s - 3*s2) - p25*(6*p25 + s2))))/
     .  (s*(2*(p14 + p15) - s2)*(-4*(p14 + p15)*(p24 + p25) + s*s2))
	    clog_yd =         (p14*s2*(8*(p14 + p15)*(-5*p15*p24
     . + 5*p14*p25 + 2*p15*s) + 2*(12*p14*p24 + 10*p15*p24 + 2*p14*p25 
     .- 5*p14*s - 3*p15*s)*s2 - s*s2**2))/
     .  (4.*(p14 + p15)**2*(-2*(p14 + p15) + s2)**2) 
	    cfin_yd =         (p14*(8*p15*(p14 + p15)*p24 - 4*(2*p14 
     .+ p15)*p24*s2 + s*s2*(2*p14 - 2*p15 + s2) - 4*p14*p25*(2*(p14 
     .+ p15) + s2)))/(2.*(p14 + p15)*(-2*(p14 + p15) + s2)**2)     
	  endif
c     W+ PRODUCTION
	elseif (vflav(4).lt.0) then
c     case one: q(p1),qbar(p2) -> H W+ 
	  if (vflav(1).gt.0) then
c     invariants 
	  t = s2 - 2 * p14 - 2*p15 
	  u = s2 - 2 * p24 - 2*p25
	  call BoxInt(s,s1,s2,t,box1)
	  call BoxInt(s,s1,s2,u,box2)
c     Born   
	      ampyu = p25*(-4*p15*p24 + 4*p14*p25 + 2*p24*s 
     .+ 2*p15*s2 - s*s2)/(-2*(p24 + p25) + s2)**2
	      ampyd = p14*(-4*p15*p24 + 4*p14*p25 + 2*p15*s 
     .+ 2*p24*s2 - s*s2)/(-2*(p14 + p15) + s2)**2
c      non born  up type
	     cbox_yu = -((8*p14*p25 + 4*p24*p25 + 4*p25**2 
     .+ 2*p24*s - 2*p25*s - 2*p25*s2 - s*s2 + 2*p15*(-2*p24 + 2*p25 
     .+ s2))*(8*p15*p24*(p24 + p25) - 4*p15*(p24 + 2*p25)*s2 + s*s2*(
     . -2*p24 + 2*p25 + s2) - 4*p14*p25*(2*(p24 + p25) + s2)))/(
     . 2.*(-2*(p24 + p25) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))
	      ctri_yu =  -((-8*(p14 + p15 + p24 + p25)*(p15*p24 
     .- p14*p25)*(2*p15*(-p24 + p25) + 2*p25*(2*p14 + p24 + p25) + (p24
     .- p25)*s) + 2*(4*(p14*p25**2*(-p14 + p24 + p25) + p15**3*(p24 
     .+ 2*p25) + p15**2*(-p24**2 + 4*p24*p25 + 4*p25**2 + p14*(p24 
     .+ 3*p25)) + p15*p25*(p14**2 + (p24 + p25)*(p24 + 2*p25) 
     .+ p14*(6*p24 + 4*p25))) - 2*(3*p14**2*p25 - p24**2*p25 
     .+ 4*p15*p25**2 + p25**3 + 2*p14*(p15 + 2*p25)*(p24 + 2*p25) 
     .+ p15**2*(4*p24 + 3*p25))*s + ((p24 - p25)**2 + p15*(3*p24 + p25) 
     .+ p14*(p24 + 3*p25))*s**2)*s2 - s*(2*(p15**2 + p25*(-p14 + p24 
     .+ p25) + p15*(p14 - p24 + 6*p25)) - (p14 + 3*p15 - p24 + 5*p25)*s
     . + s**2)*s2**2)/
     .(s*(2*(p24 + p25) - s2)*(-4*(p14 + p15)*(p24 + p25) + s*s2)))
	      clog_yu = (p25*s2*(8*(p24 + p25)*(-5*p15*p24 + 5*p14*p25 
     .+ 2*p24*s) + 2*(2*p14*p25 + 2*p15*(5*p24 + 6*p25) - 3*p24*s 
     .- 5*p25*s)*s2 - s*s2**2))/
     .  (4.*(p24 + p25)**2*(-2*(p24 + p25) + s2)**2) 
	      cfin_yu =  (p25*(8*p15*p24*(p24 + p25) - 4*p15*(p24 
     .+ 2*p25)*s2 + s*s2*(-2*p24 + 2*p25 + s2) - 4*p14*p25*(2*(p24 
     .+ p25) + s2)))/
     .  (2.*(p24 + p25)*(-2*(p24 + p25) + s2)**2)
c        non born down type  
	    cbox_yd = -((4*p14*(p14 + p24 + 2*p25) - 2*p14*s 
     .+ 2*p15*(2*p14 - 2*p24 + s) - (2*p14 - 2*p24 + s)*s2)*(8*(p14 
     .+ p15)*(p15*p24 - p14*p25) - 2*(p14*(4*p24 + 2*p25 - s) 
     .+ p15*(2*p24 + s))*s2 + s*s2**2))/
     .(2.*(-2*(p14 + p15) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))  
	    ctri_yd =  (-16*p14**4*p25 - (2*p24 - s)*(2*p15*(p15 + p24 
     .+ p25) + (-p15 + p24 + p25 - s)*s2)*(4*p15*p24 - s*s2) 
     .+ p14*(16*p15*p24*(p15**2 + (p24 + p25)*(p24 + 3*p25) + p15*(p24 
     .+ 4*p25)) - 8*p15*(p15*p25 + (p24 + p25)**2)*s - 2*(4*p24*(p15**2 
     .+ (p24 + p25)*(2*p24 + p25) + p15*(4*p24 + 6*p25)) + 2*(p15**2 
     .- 3*p24**2 - 4*(p15 + p24)*p25 - 3*p25**2)*s + (-2*p15 + p24 
     .+ 3*p25)*s**2)*s2 + (2*p15 + 12*p24 - 2*p25 - 5*s)*s*s2**2) 
     .+ 4*p14**3*(4*p15*(p24 - 2*p25) - 12*p25**2 + 2*p25*s - 2*p25*s2 
     .+ s*s2 - 4*p24*(2*p25 + s2)) + 2*p14**2*(8*p15**2*(2*p24 - p25)
     . - 4*p25*(p24 + p25)*(2*p24 + 4*p25 - s) - (4*(4*p24**2 
     .+ 4*p24*p25 - p25**2) - 8*(p24 + 2*p25)*s + s**2)*s2 + s*s2**2 + 
     . 4*p15*(4*p24**2 + p24*(4*p25 - s - 3*s2) - p25*(6*p25 + s2))))/
     .  (s*(2*(p14 + p15) - s2)*(-4*(p14 + p15)*(p24 + p25) + s*s2))
	    clog_yd =  (s2*(8*(p14 + p15)*(5*p14*(-(p15*p24) + p14*p25) 
     .+ 2*(p14**2 + p14*p15 - p15**2)*s) + 2*(p14**2*(12*p24 + 2*p25 
     .- 9*s) + p14*p15*(10*p24 - 3*s) + 4*p15**2*s)*s2 - p14*s*s2**2))/
     .  (4.*(p14 + p15)**2*(-2*(p14 + p15) + s2)**2)
	    cfin_yd = (8*p14*(p14 + p15)*(p15*p24 - p14*p25) 
     .- 2*(p14**2*(4*p24 + 2*p25 - 5*s) + 4*p15**2*s + p14*p15*(2*p24 
     .+ s))*s2 + p14*s*s2**2)/(2.*(p14 + p15)*(-2*(p14 + p15) + s2)**2)
c     case two: qbar(p1),q(p2) -> H  W+ 
	  elseif (vflav(1).lt.0) then
c     invariants 
	  t = s2 - 2 * p24 - 2*p25 
	  u = s2 - 2 * p14 - 2*p15
	  call BoxInt(s,s1,s2,t,box1)
	  call BoxInt(s,s1,s2,u,box2)
c     Born   
	      ampyu = p15*(4*p15*p24 - 4*p14*p25 + 2*p14*s 
     .+ 2*p25*s2 - s*s2)/(-2*(p14 + p15) + s2)**2
	      ampyd = p24*(4*p15*p24 - 4*p14*p25 + 2*p25*s 
     .+ 2*p14*s2 - s*s2)/(-2*(p24 + p25) + s2)**2
c      non born  up type
	     cbox_yu = -((4*p15*(p15 + 2*p24 + p25) - 2*p15*s 
     .+ 2*p14*(2*p15 - 2*p25 + s) - (2*p15 - 2*p25 + s)*s2)*(8*p14*(p14
     . + p15)*p25 - 4*(p14 + 2*p15)*p25*s2 + s*s2*(-2*p14 + 2*p15 + s2) 
     .- 4*p15*p24*(2*(p14 + p15) + s2)))/
     . (2.*(-2*(p14 + p15) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))
	      ctri_yu = -((-8*(p14 + p15 + p24 + p25)*(-(p15*p24) 
     .+ p14*p25)*(2*p15*(p15 + 2*p24 + p25) - p15*s + p14*(2*p15 
     .- 2*p25 + s)) + 2*(4*(p15**2*(p14 + p15 - p24)*p24 + p15*((p14 
     .+ p15)*(p14 + 2*p15) + (6*p14 + 4*p15)*p24 + p24**2)*p25 
     .+ (-p14**2 + p14*(4*p15 + p24) + p15*(4*p15 + 3*p24))*p25**2 
     .+ (p14 + 2*p15)*p25**3) - 2*(-(p14**2*p15) + p15*(p15**2 
     .+ 8*p15*p24 + 3*p24**2 + 4*(p15 + p24)*p25 + 3*p25**2) 
     .+ 2*p14*(2*p15*p24 + p25*(p24 + 2*p25)))*s + (p14**2 + p15*(p15 
     .+ 3*p24 + p25) + p14*(-2*p15 + p24 + 3*p25))*s**2)*s2 
     .- s*(2*(p15*(p14 + p15 - p24) + (-p14 + 6*p15 + p24)*p25 +p25**2) 
     .+ (p14 - 5*p15 - p24 - 3*p25)*s + s**2)*s2**2)/
     . (s*(2*(p14 + p15) - s2)*(-4*(p14 + p15)*(p24 + p25) + s*s2)))
	      clog_yu =  (p15*s2*(8*(p14 + p15)*(5*p15*p24 - 5*p14*p25 
     .+ 2*p14*s) + 2*(2*p15*p24 + 10*p14*p25 + 12*p15*p25 - 3*p14*s 
     .- 5*p15*s)*s2 - s*s2**2))/
     .  (4.*(p14 + p15)**2*(-2*(p14 + p15) + s2)**2)
	      cfin_yu =  (p15*(8*p14*(p14 + p15)*p25 - 4*(p14 
     .+ 2*p15)*p25*s2 + s*s2*(-2*p14 + 2*p15 + s2) - 4*p15*p24*(2*(p14 
     .+ p15) + s2)))/
     .  (2.*(p14 + p15)*(-2*(p14 + p15) + s2)**2)
c        non born down type  
	    cbox_yd = -((4*p24*(p14 + 2*p15 + p24) - 2*p24*s + 2*p25*(
     .-2*p14 + 2*p24 + s) - (-2*p14 + 2*p24 + s)*s2)*(8*p14*p25*(p24 
     .+ p25) - 4*p14*(2*p24 + p25)*s2 + s*s2*(2*p24 - 2*p25 + s2) 
     .- 4*p15*p24*(2*(p24 + p25) + s2)))/
     . (2.*(-2*(p24 + p25) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))
	    ctri_yd =          (8*(p14 + p15 + p24 + p25)*(-(p15*p24) 
     .+ p14*p25)*(2*p14*(p24 - p25) + 2*p24*(2*p15 + p24 + p25) + (-p24
     . + p25)*s) - 2*(4*(p15*p24**2*(-p15 + p24 + p25) + p14**3*(2*p24 
     .+ p25) + p14**2*(4*p24**2 + 4*p24*p25 - p25**2 + p15*(3*p24 + p25
     . )) + p14*p24*(p15**2 + (p24 + p25)*(2*p24 + p25) + p15*(4*p24 
     .+ 6*p25))) - 2*(4*p14*p24*(p15 + p24) + 2*p14*p15*p25 + p14**2*(
     . 3*p24 + 4*p25) + p24*(3*p15**2 + 8*p15*p24 + p24**2 + 4*p15*p25 
     .- p25**2))*s + ((p24 - p25)**2 + p15*(3*p24 + p25) + p14*(p24 
     .+ 3*p25))*s**2)*s2 + s*(2*(p14**2 + p14*(p15 + 6*p24 - p25) 
     .+ p24*(-p15 + p24 + p25)) - (3*p14 + p15 + 5*p24 - p25)*s 
     .+ s**2)*s2**2)/
     .  (s*(2*(p24 + p25) - s2)*(-4*(p14 + p15)*(p24 + p25) + s*s2))
	    clog_yd =  (s2*(8*(p24 + p25)*(5*p15*p24**2 - 5*p14*p24*p25 
     .+ 2*(p24**2 + p24*p25 - p25**2)*s) + 2*(p24**2*(12*p14 + 2*p15 
     .- 9*s) + p24*p25*(10*p14 - 3*s) + 4*p25**2*s)*s2 - p24*s*s2**2))/
     .  (4.*(p24 + p25)**2*(-2*(p24 + p25) + s2)**2)
	    cfin_yd = (8*p24*(p24 + p25)*(-(p15*p24) + p14*p25) 
     .- 2*(p24**2*(4*p14 + 2*p15 - 5*s) + 4*p25**2*s + p24*p25*(2*p14 
     .+ s))*s2 + p24*s*s2**2)/(2.*(p24 + p25)*(-2*(p24 + p25) + s2)**2)
	  endif
	endif	
	
	call RGE_s(LambdaNP,rg_s)
	
	yu =  rg_s**2
	yd = rg_s**2
	
	ampyu = ampyu * props2 * 1/6d0 * gw**4  * yu
	ampyd = ampyd * props2 * 1/6d0 * gw**4  * yd	     
     
	ampyu = ampyu * virtuals
	ampyd = ampyd * virtuals

	ampyu = ampyu+1/2d0*(-cbox_yu * box2 + ctri_yu*tri + cfin_yu 
     .   + clog_yu * log(s2/(-u)) ) * 
     .   props2 * 1/6d0 * gw**4  * yu * CF
	
	ampyd = ampyd +1/2d0*(-cbox_yd * box1 + ctri_yd*tri + cfin_yd 
     .   + clog_yd * log(s2/(-t)) ) * 
     .   props2 * 1/6d0 * gw**4  * yd * CF
      endif	 
	  
c     phid phi WW and phid phi tildeW W couplings 
c     W- PRODUCTION
	if (vflav(4).gt.0) then
c     case one: q(p1),qbar(p2) -> H W- 
	  if (vflav(1).gt.0) then
	      call LeviCivita(p(:,1),p(:,2),p(:,4),p(:,5),eps)  	
	      amp2ww =ph_cww * 2d0/3d0 * mw**2 *(p15 + p24)* (
     $           4d0*p15*p24 - 4d0*p14*p25 + s*s2)
	      amp2ww = amp2ww  + 1/3d0* ph_cww**2 * 
     $	      (16d0 * (p15*p24 - p14*p25)**2 +  s**2*s2**2
     $        + 4d0 * (p15**2 + p24**2 - 2d0*p14*p25)*s*s2 )
	      amp2ww = amp2ww + eps * ph_cwwt * 1/3d0 * mw**2 * 
     $        (-16d0 * (p15+p24) )
	      amp2ww = amp2ww -  4/3d0* ph_cwwt**2 * 
     $	      (16d0 * (p15*p24 - p14*p25)**2 +  s**2*s2**2
     $        - 4d0 * (p15**2 + p24**2 + 2d0*p14*p25)*s*s2 )
c     case two: qbar(p1),q(p2) -> H W- 
	  elseif (vflav(1).lt.0) then
	      call LeviCivita(p(:,2),p(:,1),p(:,4),p(:,5),eps) 
	      amp2ww = ph_cww * 2d0/3d0 * mw**2 *(p25 + p14) * (
     $	      4d0*p25*p14 - 4d0* p24* p15 + s *s2) 
	      amp2ww = amp2ww + 1/3d0 * ph_cww**2 *
     $	      (16d0 * (p25 * p14 - p24 * p15)**2 + s**2 * s2**2 + 
     $         4d0*(p25**2 + p14**2 - 2d0*p24*p15)* s *s2 )
     	      amp2ww = amp2ww + eps * ph_cwwt * 1/3d0 * mw**2 * 
     $        (-16d0 * (p25+p14) )
     	      amp2ww = amp2ww - 4/3d0 * ph_cwwt**2 *
     $	      (16d0 * (p25 * p14 - p24 * p15)**2 + s**2 * s2**2 - 
     $         4d0*(p25**2 + p14**2 + 2d0*p24*p15)* s *s2 )
	  endif
c     W+ PRODUCTION
	elseif (vflav(4).lt.0) then
c     case one: q(p1),qbar(p2) -> H W+ 
	  if (vflav(1).gt.0) then
	      call LeviCivita(p(:,1),p(:,2),p(:,5),p(:,4),eps)
	      amp2ww = ph_cww * 2d0/3d0 * mw**2 *(p25 + p14) * (
     $	      4d0*p25*p14 - 4d0* p24* p15 + s *s2) 
	      amp2ww = amp2ww + 1/3d0 * ph_cww**2 *
     $	      (16d0 * (p25 * p14 - p24 * p15)**2 + s**2 * s2**2 + 
     $         4d0*(p25**2 + p14**2 - 2d0*p24*p15)* s *s2 )
     	      amp2ww = amp2ww + eps * ph_cwwt * 1/3d0 * mw**2 * 
     $        (-16d0 * (p25+p14) )
	      amp2ww = amp2ww - 4/3d0 * ph_cwwt**2 *
     $	      (16d0 * (p25 * p14 - p24 * p15)**2 + s**2 * s2**2 - 
     $         4d0*(p25**2 + p14**2 + 2d0*p24*p15)* s *s2 )
c     case two: qbar(p1),q(p2) -> H  W+ 
	  elseif (vflav(1).lt.0) then
	      call LeviCivita(p(:,2),p(:,1),p(:,5),p(:,4),eps)
	      amp2ww =ph_cww * 2d0/3d0 * mw**2 *(p15 + p24)* (
     $           4d0*p15*p24 - 4d0*p14*p25 + s*s2)
	      amp2ww = amp2ww  + 1/3d0* ph_cww**2 * 
     $	      (16d0 * (p15*p24 - p14*p25)**2 +  s**2*s2**2
     $        + 4d0 * (p15**2 + p24**2 - 2d0*p14*p25)*s*s2 )
	      amp2ww = amp2ww + eps * ph_cwwt * 1/3d0 * mw**2 * 
     $        (-16d0 * (p15+p24) )
	      amp2ww = amp2ww  - 4/3d0* ph_cwwt**2 * 
     $	      (16d0 * (p15*p24 - p14*p25)**2 +  s**2*s2**2
     $        - 4d0 * (p15**2 + p24**2 + 2d0*p14*p25)*s*s2 )
	  endif
	endif

	amp2ww = amp2ww * gw**4/vev**2 * props1 *props2  	
	
	
	
	
      endif	
	
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c Combine things
c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
     
      born=amp2*props
c     CKM matrix
      i=vflav(1)
      j=vflav(2)

c     coupling constants and W mass for the SM piece
c     factor gw^2/8 from each weak vertex: two vertices, gw^4/64
c     factor 4mw^4/v^2 from Higgs vertex; but v^2 = 4mw^2/gw^2
c     from Higgs vertex: mw^2 gw^2
      born=born* (gw**2/8d0) * (gw**2/8d0) * (4d0*mw**4/vev**2)      

      
      
c     add CKM and dim. 6 couplings       
      if (mod(i,2).eq.0) then
         virtual= virtual*born*(ph_CKM(abs(i)/2,(abs(j)+1)/2) +dw )**2 
     .	 + virtualedm*amp2u*( ph_ReGUw(abs(i)/2,(abs(j)+1)/2)**2 
     .                      + ph_ImGUw(abs(i)/2,(abs(j)+1)/2)**2 ) 
     .   + virtualedm*amp2d*( ph_ReGDw(abs(i)/2,(abs(j)+1)/2)**2 
     .                      + ph_ImGDw(abs(i)/2,(abs(j)+1)/2)**2 )
     .   + virtual*amp2xi*(   ph_ReXi(abs(i)/2,(abs(j)+1)/2)**2 
     .              	    + ph_ImXi(abs(i)/2,(abs(j)+1)/2)**2  )
     .   + virtual*damp2 
     .   + virtual * amp2ww*(ph_CKM(abs(i)/2,(abs(j)+1)/2) )**2
     .   + ampyu*( ph_ReYu(abs(i)/2,(abs(j)+1)/2)**2 
     .           + ph_ImYu(abs(i)/2,(abs(j)+1)/2)**2 )  
     .	 + ampyd*( ph_ReYd(abs(i)/2,(abs(j)+1)/2)**2 
     .           + ph_ImYd(abs(i)/2,(abs(j)+1)/2)**2 ) 
      elseif (mod(abs(i),2).eq.1) then   
         virtual =virtual* born *(ph_CKM(abs(j)/2,(abs(i)+1)/2) +dw)**2 
     .   + virtualedm*amp2u*( ph_ReGUw(abs(j)/2,(abs(i)+1)/2)**2 
     .                      + ph_ImGUw(abs(j)/2,(abs(i)+1)/2)**2 ) 
     .   + virtualedm*amp2d*( ph_ReGDw(abs(j)/2,(abs(i)+1)/2)**2 
     .                      + ph_ImGDw(abs(j)/2,(abs(i)+1)/2)**2 )
     .   + virtual*amp2xi*(   ph_ReXi(abs(j)/2,(abs(i)+1)/2)**2 
     .              	    + ph_ImXi(abs(j)/2,(abs(i)+1)/2)**2  ) 
     .   + virtual*damp2 
     .   + virtual * amp2ww *(ph_CKM(abs(j)/2,(abs(i)+1)/2))**2
     .   + ampyu*( ph_ReYu(abs(j)/2,(abs(i)+1)/2)**2 
     .           + ph_ImYu(abs(j)/2,(abs(i)+1)/2)**2 )  
     .	 + ampyd*( ph_ReYd(abs(j)/2,(abs(i)+1)/2)**2 
     .           + ph_ImYd(abs(j)/2,(abs(i)+1)/2)**2 ) 
      endif
      
      end

c     loop integrals for the Yukawa     
      
      subroutine BoxInt(s,s1,s2,t,box)
      implicit none 
      include 'pwhg_math.h'
      real *8 s, s1, s2, t, box 
      double precision ddilog
      
      box =    pi**2/3d0  - log(s/(-t))**2 + log(s/s1)* log(s/s2)
     &    + 2d0 * log(1d0 - s1/t) * log(-s1/t) + 2d0 * ddilog(s1/t)
     &    + 2d0 * log(1d0 - s2/t) * log(-s2/t) + 2d0 * ddilog(s2/t)
      
      end
      
      subroutine TriangleInt(s,s1,s2,tri)
      implicit none 
      include 'pwhg_math.h'
      real *8 s, s1, s2, tri 
      double precision ddilog
      real *8 x1, x2, beta
      x1 = s1/s
      x2 = s2/s
      beta = sqrt(1. + (x1 -x2)**2 - 2d0 * (x1 + x2) )
      
      tri = - 1/beta * log(x1) * 
     &      log( (1. + x2 - x1 + beta)/(1. + x2 -x1 - beta) )   

      tri = tri - 2d0/beta * ddilog(1/2d0 *( 1 + x1 - x2 - beta ))
     &          + 2d0/beta * ddilog(1/2d0 *( 1 + x1 - x2 + beta)) 
      
      end
      
      
      