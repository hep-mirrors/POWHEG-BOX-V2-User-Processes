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
      real *8 p(0:3,nlegborn),virtual
      integer vflav(nlegborn)
      integer i,j,k,mu,nu,n
      real * 8 p13,p14,p23,p24,p34,p12,p45,VQ,AQ,VL,AL,t0
      real * 8 p15,p25,p35, props1, props2, vev, cw2, sw
      real * 8 c0,c0edm, q2,llog
      real * 8 born,amp2,gw,props,couplz,T3L,T3Q,chargeQ,chargeL
      real * 8 zdmRe_1, zdmIm_1, edmRe_1, edmIm_1
      real * 8 zdmRe_2, zdmIm_2, edmRe_2, edmIm_2
      real * 8 s, s2
      real * 8 amp2edm, amp2zdm, amp2int, rg
      real * 8 zql, zqr, damp2, amp2yuk, yy 
      real * 8 amp2vvtilde, amp2vv, eps
      real *8 dotp
      real * 8 pp(0:3,nlegborn), pp2(0:3,nlegborn)
      external dotp

      virtual = 0d0     
           
      q2=2*dotp(p(0,1),p(0,2))
      

c     2*Re(finite coefficient of the triangle V_mu)
      llog = log(st_muren2/q2)
      c0 = CF*(pi**2-8-3*llog-llog**2)
      c0edm = CF* (pi**2-8-4*llog-llog**2)

c     compute the Born       
      
      amp2 = 0d0
      n=3d0 !number of colours
      gw=ph_geff
      ph_cthw = sqrt(1-ph_sthw**2)
      couplz = ph_gcweff/(2d0)
      cw2 = ph_cthw**2
      sw = ph_sthw
      vev = ph_vev 
c
c     vectorial and axial couplings to Z boson
      if (mod(abs(vflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(vflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (mod(abs(vflav(1)),2).eq.0) then
c     UP TYPE QUARK
         chargeQ = 2d0/3d0
         T3Q = 1d0/2d0
      	 zdmRe_1 = 	    ph_ReGUw(abs(vflav(1))/2,abs(vflav(2))/2) 
     .	       - ph_sthw2 * ph_ReGUe(abs(vflav(1))/2,abs(vflav(2))/2) 
	 edmRe_1 = 	    ph_ReGUe(abs(vflav(1))/2,abs(vflav(2))/2) 
	 zdmIm_1 = 	    ph_ImGUw(abs(vflav(1))/2,abs(vflav(2))/2) 
     .	       - ph_sthw2 * ph_ImGUe(abs(vflav(1))/2,abs(vflav(2))/2) 
	 edmIm_1 = 	    ph_ImGUe(abs(vflav(1))/2,abs(vflav(2))/2)
	 zdmRe_2 = 	    ph_ReGUw(abs(vflav(2))/2,abs(vflav(1))/2) 
     .	       - ph_sthw2 * ph_ReGUe(abs(vflav(2))/2,abs(vflav(1))/2) 
	 edmRe_2 = 	    ph_ReGUe(abs(vflav(2))/2,abs(vflav(1))/2) 
	 zdmIm_2 = 	    ph_ImGUw(abs(vflav(2))/2,abs(vflav(1))/2) 
     .	       - ph_sthw2 * ph_ImGUe(abs(vflav(2))/2,abs(vflav(1))/2) 
	 edmIm_2 = 	    ph_ImGUe(abs(vflav(2))/2,abs(vflav(1))/2)
     	 zql   = 1/2d0 * ph_QphiU(abs(vflav(1))/2,abs(vflav(2))/2) 
     	 zqr   = 1/2d0 * ph_Uphi (abs(vflav(1))/2,abs(vflav(2))/2)
     	 yy = 1/2d0*(ph_ReYu(abs(vflav(1))/2,abs(vflav(2))/2)**2 
     .		  + ph_ImYu(abs(vflav(1))/2,abs(vflav(2))/2)**2
     .		  + ph_ReYu(abs(vflav(2))/2,abs(vflav(1))/2)**2 
     .		  + ph_ImYu(abs(vflav(2))/2,abs(vflav(1))/2)**2)
      elseif (mod(abs(vflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
         chargeQ = -1d0/3d0
         T3Q = -1d0/2d0
         zdmRe_1 = 	    - ph_ReGDw((abs(vflav(1))+1)/2,
     .				       (abs(vflav(2))+1)/2) 
     .	       -   ph_sthw2 * ph_ReGDe((abs(vflav(1))+1)/2,
     .				       (abs(vflav(2))+1)/2) 
	 edmRe_1 = 	      ph_ReGDe((abs(vflav(1))+1)/2,
     .				       (abs(vflav(2))+1)/2)  
	 zdmIm_1 = 	    - ph_ImGDw((abs(vflav(1))+1)/2,
     .				       (abs(vflav(2))+1)/2) 
     .	       -   ph_sthw2 * ph_ImGDe((abs(vflav(1))+1)/2,
     .				       (abs(vflav(2))+1)/2) 
	 edmIm_1 = 	      ph_ImGDe((abs(vflav(1))+1)/2,
     .				       (abs(vflav(2))+1)/2) 
         zdmRe_2 = 	    - ph_ReGDw((abs(vflav(2))+1)/2,
     .				       (abs(vflav(1))+1)/2) 
     .	       -   ph_sthw2 * ph_ReGDe((abs(vflav(2))+1)/2,
     .				       (abs(vflav(1))+1)/2) 
	 edmRe_2 = 	      ph_ReGDe((abs(vflav(2))+1)/2,
     .				       (abs(vflav(1))+1)/2)  
	 zdmIm_2 = 	    - ph_ImGDw((abs(vflav(2))+1)/2,
     .				       (abs(vflav(1))+1)/2) 
     .	       -   ph_sthw2 * ph_ImGDe((abs(vflav(2))+1)/2,
     .				       (abs(vflav(1))+1)/2) 
	 edmIm_2 = 	      ph_ImGDe((abs(vflav(2))+1)/2,
     .				       (abs(vflav(1))+1)/2) 
     	 zql   = 1/2d0 * 
     .		ph_QphiD( (abs(vflav(1))+1)/2,(abs(vflav(2))+1)/2)  
     	 zqr   =1/2d0* 
     .		ph_Dphi( (abs(vflav(1))+1)/2,(abs(vflav(2))+1)/2)
     	 yy    = 1/2d0*(
     .	 	ph_ReYd((abs(vflav(1))+1)/2,(abs(vflav(2))+1)/2)**2 
     . 	    + 	ph_ImYd((abs(vflav(1))+1)/2,(abs(vflav(2))+1)/2)**2 
     .	    +   ph_ReYd((abs(vflav(2))+1)/2,(abs(vflav(1))+1)/2)**2 
     . 	    + 	ph_ImYd((abs(vflav(2))+1)/2,(abs(vflav(1))+1)/2)**2 )
      endif

      VL = T3L - 2*chargeL*ph_sthw**2
      AL = -T3L
      VQ = T3Q - 2*chargeQ*ph_sthw**2
      AQ = -T3Q
c     make sure not to introduce a fcnc piece in the SM 
      if(abs(vflav(1)).ne.abs(vflav(2))) then
	VQ = 1d-20
	AQ = 1d-20
	chargeQ = 1d-20
      endif      
c     add non-standard couplings
      if(wdm) then 
	VQ = VQ + (zqr + zql)
        AQ = AQ + (zqr - zql)
      endif
      

      pp = p
      pp2 = p

      if (vflav(4).lt.0)then
         call swap_momenta(pp(:,4),pp(:,5))
      endif

      if (vflav(1).lt.0.and.vflav(2).gt.0) then
         call swap_momenta(pp(:,1),pp(:,2))
      endif

      p12=dotp(pp(0,1),pp(0,2))
      p13=dotp(pp(0,1),pp(0,3))
      p14=dotp(pp(0,1),pp(0,4))
      p23=dotp(pp(0,2),pp(0,3))
      p24=dotp(pp(0,2),pp(0,4))
      p34=dotp(pp(0,3),pp(0,4))
      p45=dotp(pp(0,4),pp(0,5))
      p15=dotp(pp(0,1),pp(0,5))
      p25=dotp(pp(0,2),pp(0,5))
      p35=dotp(pp(0,3),pp(0,5))
      p45=dotp(pp(0,4),pp(0,5))      
      
      call LeviCivita(pp(:,1),pp(:,2),pp(:,4),pp(:,5),eps)  
      
      s = 2d0 * p12
      s2 = 2d0 * p45
c

      t0 = ((-64*p24*p14-32*p24*p13+32*p14*p12-32*p14*p23+32*p24*p12)*VQ
     #**2+(-64*p24*p14-32*p24*p13+32*p14*p12-32*p14*p23+32*p24*p12)*AQ**
     #2)*VL**2+(128*p24*p12-128*p24*p13-128*p14*p12+128*p14*p23)*AL*AQ*V
     #Q*VL+(-64*p24*p14-32*p24*p13+32*p14*p12-32*p14*p23+32*p24*p12)*AL*
     #*2*VQ**2+(-64*p24*p14-32*p24*p13+32*p14*p12-32*p14*p23+32*p24*p12)
     #*AL**2*AQ**2
c
c     average over initial spins and colours
      amp2=t0*n/4d0/n**2
c
c     Z propagators
      props = 1/((2*p12-ph_Zmass2)**2+ph_ZmZw**2)/
     $     ((2*p45-ph_Zmass2)**2+ph_ZmZw**2)
      props1 = 1/((s-ph_Zmass2)**2+ph_Zwidth**2*ph_Zmass2)
c     lepton decay     
      props2 = 1/((s2-ph_Zmass2)**2+ph_Zwidth**2*ph_Zmass2)

      born=amp2*props
c
c     coupling constants and Z mass
c     factor couplz^2 from each weak vertex: two vertices, couplz^4
c     factor 4mz^4/v^2 from Higgs vertex; but v^2 = 4mw^2/gw^2
c     from Higgs vertex: mz^4 gw^2/mw^2
      born=born*(couplz)**2*(couplz)**2*(4d0*ph_Zmass2**2/vev**2)
      
      amp2edm = 0d0
      amp2zdm = 0d0
      amp2int = 0d0
      if(wdm) then
        amp2zdm = 2*(p14*p24 + p15*p25)*s2
	amp2zdm = amp2zdm + ph_Zmass2 *props1 *( s - ph_Zmass2)*(
     .		 - 4*(p14 - p15 - p24 + p25)*(-p15*p24 + p14*p25) 
     .		 + (p14 + p15 + p24 + p25)*s*s2 )
      
	amp2zdm = amp2zdm + ph_Zmass2**2*props1*s* 
     . 	      (4*(p14 - p24)*(p15 - p25) + s*s2)
     
        amp2zdm =amp2zdm * props2 * 1/3d0   
      
        amp2zdm= amp2zdm * (VL**2 + AL**2) /vev**4 * (2 * couplz)**4
		    
        amp2zdm = amp2zdm * 1/2d0*(zdmIm_1**2 + zdmRe_1**2 +
     . 			     zdmIm_2**2 + zdmRe_2**2	)

c     EDM         
	amp2edm = 8/3d0 * (p14*p24 + p15*p25)/s2
	
	amp2edm = amp2edm * (ph_unit_e)**4/vev**4 * chargeL**2
	
	amp2edm = amp2edm * 1/2d0*(edmIm_1**2 + edmRe_1**2
     .			   + edmIm_2**2 + edmRe_2**2 )
	
c     Interference EDM/ZDM
	amp2int = ph_Zmass2 * props1 * (ph_Zmass2**2 + s*s2 
     . 	- ph_Zmass2*(s + s2))/ (3d0 * s2) *  
     .	  (4*(p14 - p15 - p24 + p25)*(-(p15*p24) + p14*p25) 
     .  - (p14 + p15 + p24 + p25)*s*s2)
	
	amp2int = amp2int 
     .  +  4*(p14*p24 + p15*p25)*(ph_Zmass2 - s2)/3d0
	
	amp2int = amp2int * props2 * (ph_unit_e)**2 *(2 * couplz)**2
     .  /vev**4 * 2 * VL * chargeL
	
	amp2int = - amp2int * 1/2d0*(edmIm_1 * zdmIm_1 
     .	+ edmRe_1 * zdmRe_1 + edmIm_2 * zdmIm_2 + edmRe_2 * zdmRe_2 )
	
	amp2edm = amp2edm + amp2zdm + amp2int

c     add the RGE factor 	
	call RGE(LambdaNP,rg)
        amp2edm = rg**2 * amp2edm
	
	
      endif 
      
c     add modifications to the CP even left and right handed coupligs
      damp2 = 0d0
      if(wdm) then
	damp2 =   4/3d0/vev**2 * props2 * gw**4/cw2**2 *
     .	 (zql**2*(4*p14*p25*sw**4 + p15*p24*(1 - 2*sw**2)**2) 
     . 	+ zqr**2*(4*p15*p24*sw**4 + p14*p25*(1 - 2*sw**2)**2))
	
	damp2 =  damp2 + 4/3d0 * (s -ph_Zmass2)* 
     .	(zql*( VQ - AQ )*(4*p14*p25*sw**4 + p15*p24*(1 - 2*sw**2)**2)+ 
     .   zqr*( VQ + AQ )*(4*p15*p24*sw**4 + p14*p25*(1 - 2*sw**2)**2))
     .  *  props1 * props2 * ph_Zmass2 * gw**4/cw2**2/vev**2
     
      endif      
      
      amp2vvtilde  = 0d0 
      amp2vv  = 0d0
      if(wdm) then
       call amp2_vv(vflav,pp2,amp2vv)
       call amp2_vvtilde(vflav,pp2,amp2vvtilde)
      endif 
      
      amp2yuk = 0d0
      if(wdm.and.(abs(yy).gt.0)) then 
	call amp2v_yuk(vflav,pp,amp2yuk)
      endif
      
      virtual  = born*c0 + amp2edm*c0edm + damp2 * c0 
      
      virtual = virtual + (amp2vv + amp2vvtilde)*c0
      
      virtual = virtual + amp2yuk
      
      end

c     Non standard Yukawa couplings       
      subroutine amp2v_yuk(vflav,pp,amp2)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      real *8 pp(0:3,nlegborn)
      integer vflav(nlegborn)
      real *8 yy, amp2
      real *8 gw,T3L,T3Q,chargeQ,chargeL
      real *8 zql, zqr, zel, zer 
      real *8 props2, sw, cw2, couplz, cw
      real *8 pre, pre2, vev
      real *8 ampll_ll, ampll_rr, amprr_ll, amprr_rr
      real *8 amplr_ll, amplr_rr
      real * 8 p13,p14,p23,p24,p34,p12,p45
      real * 8 p15,p25,p35, s, s2, t, u, s1
      real * 8 dotp, llog, c0_s, rg_s
      real * 8 box1, box2, tri, x1, x2, beta
      real * 8 cll_ll_box1, cll_ll_box2, cll_ll_tri
      real * 8 cll_ll_fin, cll_ll_lg1, cll_ll_lg2
      real * 8 cll_rr_box1, cll_rr_box2, cll_rr_tri
      real * 8 cll_rr_fin, cll_rr_lg1, cll_rr_lg2
      real * 8 clr_ll_box1, clr_ll_box2, clr_ll_tri
      real * 8 clr_ll_fin, clr_ll_lg1, clr_ll_lg2
      double precision ddilog
      external dotp
      
      gw=ph_geff
      ph_cthw = sqrt(1-ph_sthw**2)
      couplz = ph_gcweff/(2d0)
      cw2 = ph_cthw**2
      cw = ph_cthw
      sw = ph_sthw
      vev = ph_vev 
      
      
c     vectorial and axial couplings to Z boson
      if (mod(abs(vflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(vflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (mod(abs(vflav(1)),2).eq.0) then
c     UP TYPE QUARK
         chargeQ = 2d0/3d0
         T3Q = 1d0/2d0
	 yy = 1/2d0*(ph_ReYu(abs(vflav(1))/2,abs(vflav(2))/2)**2 
     .		  + ph_ImYu(abs(vflav(1))/2,abs(vflav(2))/2)**2
     .		  + ph_ReYu(abs(vflav(2))/2,abs(vflav(1))/2)**2 
     .		  + ph_ImYu(abs(vflav(2))/2,abs(vflav(1))/2)**2)
         elseif (mod(abs(vflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
         chargeQ = -1d0/3d0
         T3Q = -1d0/2d0
	 yy = 1/2d0*(
     .	 	ph_ReYd((abs(vflav(1))+1)/2,(abs(vflav(2))+1)/2)**2 
     . 	    + 	ph_ImYd((abs(vflav(1))+1)/2,(abs(vflav(2))+1)/2)**2 
     .	    +   ph_ReYd((abs(vflav(2))+1)/2,(abs(vflav(1))+1)/2)**2 
     . 	    + 	ph_ImYd((abs(vflav(2))+1)/2,(abs(vflav(1))+1)/2)**2 )
      endif

c     define quark and leptons couplings    
      zel = T3L - chargeL*ph_sthw**2
      zer =     - chargeL*ph_sthw**2
      zql = T3Q - chargeQ*ph_sthw**2 
      zqr = 	- chargeQ*ph_sthw**2 

  

      p12=dotp(pp(0,1),pp(0,2))
      p13=dotp(pp(0,1),pp(0,3))
      p14=dotp(pp(0,1),pp(0,4))
      p23=dotp(pp(0,2),pp(0,3))
      p24=dotp(pp(0,2),pp(0,4))
      p34=dotp(pp(0,3),pp(0,4))
      p45=dotp(pp(0,4),pp(0,5))
      p15=dotp(pp(0,1),pp(0,5))
      p25=dotp(pp(0,2),pp(0,5))
      p35=dotp(pp(0,3),pp(0,5))
      p45=dotp(pp(0,4),pp(0,5))      
     
     
      s = 2d0 * p12
      s2 = 2d0 * p45
     
      s1 =  dotp(pp(0,3),pp(0,3)) 
      t  =  s2 - 2* p14 - 2*p15
      u  =  s2 - 2* p24 - 2*p25
      
c     loop functions. triangle       
      x1 = s1/s
      x2 = s2/s
      beta = sqrt(1. + (x1 -x2)**2 - 2d0 * (x1 + x2) )
      tri = - 1/beta * log(x1) * 
     &      log( (1. + x2 - x1 + beta)/(1. + x2 -x1 - beta) )   
      tri = tri - 2d0/beta * ddilog(1/2d0 *( 1 + x1 - x2 - beta ))
     &          + 2d0/beta * ddilog(1/2d0 *( 1 + x1 - x2 + beta)) 
c     box 
      box1 =    pi**2/3d0  - log(s/(-t))**2 + log(s/s1)* log(s/s2)
     &    + 2d0 * log(1d0 - s1/t) * log(-s1/t) + 2d0 * ddilog(s1/t)
     &    + 2d0 * log(1d0 - s2/t) * log(-s2/t) + 2d0 * ddilog(s2/t)
      box2 =    pi**2/3d0  - log(s/(-u))**2 + log(s/s1)* log(s/s2)
     &    + 2d0 * log(1d0 - s1/u) * log(-s1/u) + 2d0 * ddilog(s1/u)
     &    + 2d0 * log(1d0 - s2/u) * log(-s2/u) + 2d0 * ddilog(s2/u)
     

c     define the propagators     
c     Z propagators
c     lepton decay     
      props2 = 1/((s2-ph_Zmass2)**2+ph_Zwidth**2*ph_Zmass2)     
      
      pre = 1/6d0 * (2d0*couplz)**4 * props2 * yy

      ampll_ll = (4*p15*(-2*p25 + s))/(2*(p14 + p15) - s2) 
     .	    + (4*p24*(-2*p14 + s))/(2*(p24 + p25) - s2) 
     .	    + (8*p15**2*(2*(p24 + p25) - s))/(-2*(p14 + p15) + s2)**2 
     .	    + (8*p24**2*(2*(p14 + p15) - s))/(-2*(p24 + p25) + s2)**2
      ampll_rr = (4*p14*(-2*p24 + s))/(2*(p14 + p15) - s2) 
     .	    + (4*p25*(-2*p15 + s))/(2*(p24 + p25) - s2) 
     .	    + (8*p14**2*(2*(p24 + p25) - s))/(-2*(p14 + p15) + s2)**2 
     .	    + (8*p25**2*(2*(p14 + p15) - s))/(-2*(p24 + p25) + s2)**2 
     
      amplr_ll = (-16*(p14**2*p25 + p15*p24*(p15 + p24 - p25 - s) 
     . 	    - p14*(p15*(p24 + p25) + p25*(p24 - p25 + s))) + 
     .    4*(-4*(p14*p24 + p15*p25) + (p14 + p15 + p24 + p25)*s 
     .	    - s**2)*s2)/((2*(p14 + p15) - s2)*(-2*(p24 + p25) + s2))
     
c     

      llog = log(st_muren2/s)
      c0_s = CF* (pi**2-2-llog**2)      
      call RGE_s(LambdaNP,rg_s)
      
      cll_ll_box1 = (-2*(4*p15*(p15 + 2*p24 + p25) - 2*p15*s + 
     -      2*p14*(2*p15 - 2*p25 + s) - (2*p15 - 2*p25 + s)*s2)*
     -    (8*(p14 + p15)*(-(p15*p24) + p14*p25) - 
     -      2*(p15*(2*p24 + 4*p25 - s) + p14*(2*p25 + s))*s2 + s*s2**2))
     -   /((-2*(p14 + p15) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))
      cll_ll_box2 =  
     .  (-2*(8*p15*p24 + 4*p24**2 + 4*p24*p25 - 2*p24*s + 2*p25*s - 
     -      2*p24*s2 - s*s2 + 2*p14*(2*p24 - 2*p25 + s2))*
     -    (8*p14*p25*(p24 + p25) - 4*p14*(2*p24 + p25)*s2 + 
     -      s*s2*(2*p24 - 2*p25 + s2) - 4*p15*p24*(2*(p24 + p25) + s2)))
     -   /((-2*(p24 + p25) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))
      cll_ll_tri   =        
     . (-8*(16*p15**2*p24*(p15 + p24 + p25)*
     -       (-((p15 + p24 + p25)*(3*p24 + p25)) + p24*s) + 
     -      4*p15*(2*(p15 + p24 + p25)*
     -          (p15**2*p24 + (p24 - 2*p25)*(p24 + p25)**2 + 
     -            2*p15*(p24 - p25)*(2*p24 + p25)) + 
     -         (p15**2*(3*p24 + p25) + 
     -            2*p15*(7*p24**2 + 8*p24*p25 + 2*p25**2) + 
     -            (p24 + p25)*(3*p24**2 + 4*p24*p25 + 3*p25**2))*s - 
     -         (2*p24*(p15 + p24) + (p15 + p24)*p25 + p25**2)*s**2)*s2
     -       + (4*p15*((p15 - p24)**2*p24 + 2*(p15 + p24)**2*p25 + 
     -            (4*p15 + 3*p24)*p25**2 + 2*p25**3) - 
     -         2*(p15**3 + 11*p15**2*p24 + 11*p15*p24**2 + p24**3 + 
     -            (3*p15 - p24)*(p15 + p24)*p25 - 
     -            3*(p15 + p24)*p25**2 - p25**3)*s - 
     -         2*(p15*(2*p24 + p25) + p25*(3*p24 + p25))*s**2 + 
     -         (p15 + p24 + p25)*s**3)*s2**2 - 
     -      s*(p15**2 + (p24 + p25)**2 + p15*(-2*p24 + 6*p25 - 3*s) - 
     -         (3*p24 + p25)*s + s**2)*s2**3 + 
     -      p14**2*(16*(p15**2*(-5*p24**2 + 8*p24*p25 + p25**2) + 
     -            p15*(-2*p24**3 + 8*p24**2*p25 + 
     -               2*p24*p25*(5*p25 - s) + p25**2*s) + 
     -            p25*(p24 + p25)*(p24**2 + p25*(-p25 + s))) - 
     -         4*(4*p24**3 + 6*p15**2*(p24 + p25) + 
     -            2*p24**2*(5*p25 - 2*s) + p24*s**2 + 
     -            p15*(14*p24**2 + 38*p24*p25 - 7*p24*s - 5*p25*s) + 
     -            2*p25*(-3*p25**2 + p25*s + s**2))*s2 + 
     -         2*(8*p24**2 - (p25 + s)*(4*p25 + s) + 
     -            p15*(6*p24 + 4*p25 + 3*s) + p24*(8*p25 + 3*s))*s2**2
     -          - s*s2**3) + 
     -      p14*(16*p15*(p15**2*(-7*p24**2 + 2*p24*p25 + p25**2) + 
     -            (p24 + p25)*
     -             (-p24**3 + 3*p24**2*p25 + p25**3 + 
     -               p24*p25*(5*p25 - 2*s)) + 
     -            p15*(-8*p24**3 + 2*p25**3 + 2*p24*p25*(4*p25 - s) + 
     -               p24**2*(-2*p25 + s))) + 
     -         4*(2*p15**3*(p24 - p25) - 2*p25*(p24 + p25)**3 + 
     -            2*p15**2*(2*p24**2 - 15*p24*p25 - 5*p25**2) - 
     -            2*p15*(p24 + p25)*(p24**2 + 14*p24*p25 + 5*p25**2) + 
     -            (4*p15*p24*(4*p24 + 3*p25) + p15**2*(7*p24 + 3*p25) + 
     -               (p24 + p25)*(p24**2 + 2*p24*p25 + 3*p25**2))*s - 
     -            (p24*(p15 + p24) + (p15 + p24)*p25 + 2*p25**2)*s**2)*
     -          s2 + (4*(2*p24*(p15 + p24)**2 + 
     -               3*(p15**2 + 4*p15*p24 + p24**2)*p25 + 
     -               2*(2*p15 + p24)*p25**2 + p25**3) + 
     -            2*(p15**2 - 3*p24**2 - 2*p24*p25 - 5*p25**2 - 
     -               2*p15*(p24 + p25))*s - 
     -            2*(3*p15 + p24 - 4*p25)*s**2 + s**3)*s2**2 + 
     -         s*(-2*p15 - 6*p24 + 2*p25 + s)*s2**3) + 
     -      8*p14**4*(2*p24*(p25 - s2) - p25*(2*p25 + s2)) + 
     -      2*p14**3*(8*p25**2*(-2*p25 + s) + 16*p24**2*(p25 - s2) + 
     -         6*p25*(2*p25 + s)*s2 + (2*p25 + s)*s2**2 + 
     -         2*p24*s2*(-10*p25 + 3*s + 2*s2) - 
     -         4*p15*(2*(p24**2 - 6*p24*p25 + p25**2) + 
     -            (5*p24 + 3*p25)*s2))))/
     -  (s*(2*(p14 + p15) - s2)*(2*(p24 + p25) - s2)*
     -    (4*(p14 + p15)*(p24 + p25) - s*s2))
      cll_ll_lg1   =   
     .      (s2*(-8*(p14 + p15)*(5*p15*(-(p15*p24) + p14*p25) - 
     -         2*(-p14**2 + p14*p15 + p15**2)*s) + 
     -      2*(p15**2*(2*p24 + 12*p25 - 9*s) + p14*p15*(10*p25 - 3*s) + 
     -         4*p14**2*s)*s2 - p15*s*s2**2))/
     -  ((p14 + p15)**2*(-2*(p14 + p15) + s2)**2)
      cll_ll_lg2   = 
     .(p24*s2*(8*(p24 + p25)*(5*p15*p24 - 5*p14*p25 + 2*p25*s) + 
     -      2*(2*p15*p24 + 2*p14*(6*p24 + 5*p25) - 5*p24*s - 3*p25*s)*
     -       s2 - s*s2**2))/((p24 + p25)**2*(-2*(p24 + p25) + s2)**2)
      cll_ll_fin = 
     .        2*(((p14*p24 + p15*(2*p24 + p25))*s)/
     -     ((p14 + p15)*(p24 + p25)) + 
     -    (2*p15**2*(2*p24 + 4*p25 - 7*s) + p14*p15*(4*p25 - 2*s) + 
     -       8*p14**2*s)/((p14 + p15)*(2*(p14 + p15) - s2)) + 
     -    (4*p24*(p15*p24 + p14*(2*p24 + p25)) - 2*p24*(3*p24 + p25)*s)/
     -     ((p24 + p25)*(2*(p24 + p25) - s2)) + 
     -    (-8*p15**2*(2*(p24 + p25) - 3*s) - 16*p14**2*s)/
     -     (-2*(p14 + p15) + s2)**2 + 
     -    (8*p24**2*(-2*(p14 + p15) + s))/(-2*(p24 + p25) + s2)**2)

     
      cll_rr_box1 = 
     .   (2*(8*(p14 + p15)*(-(p15*p24) + p14*p25) + 
     -      2*(p14*(4*p24 + 2*p25 - s) + p15*(2*p24 + s))*s2 - s*s2**2)*
     -    (4*p14**2 - (2*p24 - s)*(2*p15 - s2) + 
     -      p14*(4*p15 + 4*p24 + 8*p25 - 2*(s + s2))))/
     -  ((-2*(p14 + p15) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))
      cll_rr_box2 = 
     .          (2*(8*p15*p24*(p24 + p25) - 4*p15*(p24 + 2*p25)*s2 + 
     -      s*s2*(-2*p24 + 2*p25 + s2) - 4*p14*p25*(2*(p24 + p25) + s2))
     -     *(-8*p14*p25 - 4*p25**2 + 2*p25*s - 2*p24*(2*p25 + s) + 
     -      2*p25*s2 + s*s2 + p15*(4*p24 - 2*(2*p25 + s2))))/
     -  ((-2*(p24 + p25) + s2)**2*(4*(p14 + p15)*(p24 + p25) - s*s2))
      cll_rr_tri  =
     .         (-8*(-16*p15**2*p24*(p15 + p24 + p25)*
     -       ((p24 - p25)*(p15 + p24 + p25) - p24*s) - 
     -      4*p15*(2*(p15 + p24 + p25)*
     -          (p24*(p24 + p25)**2 + p15**2*(p24 + 2*p25) + 
     -            2*p15*(-2*p24**2 + p24*p25 + p25**2)) - 
     -         (3*p15**2*(p24 + p25) - 2*p15*(p24**2 - 2*p25**2) + 
     -            (p24 + p25)*(3*p24**2 + 2*p24*p25 + p25**2))*s + 
     -         (2*p24*(p15 + p24) + (p15 + p24)*p25 + p25**2)*s**2)*s2
     -       + (4*p15*((p15 - p24)**2*p24 + 2*(p15 + p24)**2*p25 + 
     -            (4*p15 + 3*p24)*p25**2 + 2*p25**3) + 
     -         2*(p15**3 + p15**2*(-5*p24 + 3*p25) + 
     -            (p24 + p25)*(p24**2 + 2*p24*p25 - p25**2) - 
     -            p15*(5*p24**2 + 2*p24*p25 + 3*p25**2))*s - 
     -         2*(p15**2 + p15*(-4*p24 + p25) + p24*(p24 + 3*p25))*
     -          s**2 + (p15 + p24 + p25)*s**3)*s2**2 - 
     -      s*(p15**2 + (p24 + p25)**2 - (p24 + 3*p25)*s + s**2 - 
     -         p15*(2*p24 - 6*p25 + s))*s2**3 + 
     -      8*p14**4*p25*(-2*p24 - 6*p25 + s2) + 
     -      2*p14**3*(8*(p15*(p24**2 + 2*p24*p25 - 7*p25**2) + 
     -            p25*(-2*(p24 + p25)*(p24 + 3*p25) + p25*s)) + 
     -         2*(-4*p24**2 - 2*p24*p25 + 10*p25**2 + 
     -            2*p15*(-p24 + p25) + p24*s + 3*p25*s)*s2 + 
     -         (4*p24 + 2*p25 - s)*s2**2) + 
     -      p14**2*(16*(p15**2*(p24**2 + 8*p24*p25 - 5*p25**2) + 
     -            p25*(p24 + p25)*
     -             (-((p24 + p25)*(p24 + 3*p25)) + p25*s) + 
     -            p15*(2*p24**3 + 8*p24**2*p25 + p25**2*(-8*p25 + s) - 
     -               2*p24*p25*(p25 + s))) - 
     -         4*(6*p15**2*(p24 + p25) + 
     -            2*(p24 + p25)*(4*p24**2 + 3*p24*p25 - 5*p25**2) - 
     -            2*(2*p24**2 + 8*p24*p25 + 7*p25**2)*s + 
     -            (p24 + 2*p25)*s**2 + 
     -            p15*(10*p24**2 + 30*p24*p25 - 4*p25**2 - 3*p24*s - 
     -               7*p25*s))*s2 + 
     -         2*(8*p24**2 + 8*p24*p25 - 4*p25**2 - 3*p24*s - 
     -            11*p25*s + p15*(6*p24 + 4*p25 + s))*s2**2 - s*s2**3)
     -       + p14*(16*p15*(-2*p15*p25*(-5*p24 + p25)*(p24 + p25) - 
     -            p15**2*(p24**2 - 6*p24*p25 + p25**2) + 
     -            p15*p24*(p24 - 2*p25)*s + 
     -            (p24 + p25)*
     -             ((p24 + p25)*(p24**2 + 4*p24*p25 - p25**2) - 
     -               2*p24*p25*s)) - 
     -         4*(2*((2*p24 - p25)*(p24 + p25)**3 + 
     -               p15**3*(3*p24 + 5*p25) + 
     -               p15**2*p25*(19*p24 + 7*p25) + 
     -               p15*(p24 + p25)*(5*p24**2 + 14*p24*p25 + p25**2))
     -             - (4*p15*p25*(3*p24 + 4*p25) + 
     -               p15**2*(5*p24 + 7*p25) + 
     -               (p24 + p25)*(3*p24**2 + 4*p24*p25 + 3*p25**2))*s + 
     -            (p24*(p15 + p24) + (p15 + p24)*p25 + 2*p25**2)*s**2)*
     -          s2 + (4*(2*p24*(p15 + p24)**2 + 
     -               3*(p15**2 + 4*p15*p24 + p24**2)*p25 + 
     -               2*(2*p15 + p24)*p25**2 + p25**3) + 
     -            2*(3*p15**2 + 3*p24**2 - 2*p24*p25 - 11*p25**2 - 
     -               2*p15*(p24 + p25))*s - 
     -            2*(3*p15 + p24 + 2*p25)*s**2 + s**3)*s2**2 + 
     -         s*(-2*p15 - 6*p24 + 2*p25 + 3*s)*s2**3)))/
     -  (s*(2*(p14 + p15) - s2)*(2*(p24 + p25) - s2)*
     -    (4*(p14 + p15)*(p24 + p25) - s*s2))
      cll_rr_lg1  = 
     .         (s2*(8*(p14 + p15)*(5*p14*(-(p15*p24) + p14*p25) + 
     -         2*(p14**2 + p14*p15 - p15**2)*s) + 
     -      2*(p14**2*(12*p24 + 2*p25 - 9*s) + p14*p15*(10*p24 - 3*s) + 
     -         4*p15**2*s)*s2 - p14*s*s2**2))/
     -  ((p14 + p15)**2*(-2*(p14 + p15) + s2)**2)
      cll_rr_lg2  = 
     .   (p25*s2*(8*(p24 + p25)*(-5*p15*p24 + 5*p14*p25 + 2*p24*s) + 
     -      2*(2*p14*p25 + 2*p15*(5*p24 + 6*p25) - 3*p24*s - 5*p25*s)*
     -       s2 - s*s2**2))/((p24 + p25)**2*(-2*(p24 + p25) + s2)**2)
      cll_rr_fin = 
     .         (-2*(16*p14**4*p25**2*(2*(p24 + p25) + s2) + 
     -      4*p14**3*p25*(8*(p24 + p25)*
     -          (-(p15*(p24 - 3*p25)) + (p24 + p25)**2) + 
     -         2*(-4*(p24 + p25)*(p24 + 2*p25) + 2*p15*(p24 + 5*p25) + 
     -            (p24 - p25)*s)*s2 - (-2*p24 + 2*p25 + s)*s2**2) + 
     -      2*p14**2*(-16*p15*(p24 - p25)*(p24 + p25)*
     -          (3*p15*p25 + (p24 + p25)**2) + 
     -         4*(6*p15**2*p25*(p24 + 3*p25) + 
     -            4*p15*(p24 + p25)*(p24**2 + p24*p25 - 3*p25**2) + 
     -            (p24 + p25)**3*(4*p24 + 2*p25 - 5*s) + 
     -            3*p15*(p24 - p25)*p25*s)*s2 - 
     -         2*(2*(p24**2*(p15 + 4*p24) + 2*p24*(p15 + 5*p24)*p25 + 
     -               7*(p15 + p24)*p25**2 + p25**3) - 
     -            (10*p24**2 + 18*p24*p25 + 3*p25*(-p15 + 4*p25))*s)*
     -          s2**2 + (4*p24**2 + 6*p24*p25 + 4*p25**2 - 5*p24*s - 
     -            3*p25*s)*s2**3) + 
     -      p14*(2*p15 - s2)*
     -       (8*p15**2*p25*(-6*p24**2 - 4*p24*p25 + 2*p25**2 + 
     -            3*p24*s2 + 7*p25*s2) + 
     -         s*s2*(4*(p24 + p25)**3 - 
     -            2*(2*p24**2 + 5*p24*p25 + p25**2)*s2 + 
     -            (p24 + 2*p25)*s2**2) + 
     -         2*p15*(-8*p24*(p24 + p25)**3 + 
     -            2*(4*p24**3 + 10*p24**2*p25 - p25**2*(2*p25 + 3*s) + 
     -               p24*p25*(4*p25 + 3*s))*s2 - 
     -            (2*p24**2 + 4*p24*p25 + 3*p25*(2*p25 + s))*s2**2)) + 
     -      p15*(-(p25*s*s2**3*(-2*p24 + 2*p25 + s2)) + 
     -         16*p15**3*p25*(-2*p24*(p24 + p25) + (p24 + 2*p25)*s2) - 
     -         4*p15**2*p25*s2*
     -          (-8*p24**2 + 2*p25*s - 2*p24*(4*p25 + s - 2*s2) + 
     -            8*p25*s2 + s*s2) + 
     -         4*p15*s2*(8*(p24 + p25)**3*s - 
     -            2*(3*p25**2*s + p24**2*(p25 + 4*s) + 
     -               p24*p25*(p25 + 9*s))*s2 + 
     -            (p24*(p25 + 2*s) + p25*(2*p25 + 3*s))*s2**2))))/
     -  ((p14 + p15)*(p24 + p25)*(-2*(p14 + p15) + s2)**2*
     -    (-2*(p24 + p25) + s2)**2)
      
c	left and right quarks, left handed leptons     
      clr_ll_box1 =        
     . (4*(-16*p15**2*p24*(p15*(3*p24 - p25) + 
     -         (p24 - p25)*(p24 + p25 - s)) - 
     -      4*p15*(2*(p15 - p24)**2*p24 + 4*p15*(p15 + 3*p24)*p25 + 
     -         2*(2*p15 - p24)*p25**2 - 
     -         (7*p15*p24 + 5*p24**2 + 3*p15*p25 + 10*p24*p25 + p25**2)*
     -          s + (3*p24 + p25)*s**2)*s2 + 
     -      2*(p15**2*(2*p24 + 4*p25 + s) - 
     -         2*p15*(p24**2 + p24*p25 + 2*p25**2 + 2*p24*s - p25*s + 
     -            s**2) + s*((p24 - p25)**2 - 2*(p24 + p25)*s + s**2))*
     -       s2**2 + s*(-p15 + p24 + p25 + s)*s2**3 + 
     -      8*p14**3*(2*p24*(p25 - s2) - p25*(6*p25 + s2)) + 
     -      2*p14**2*(8*(p24 - p25)*p25*(p24 + p25 - s) + 
     -         2*(-4*p24**2 + 3*p24*(-4*p25 + s) + p25*(4*p25 + 7*s))*
     -          s2 + (4*p24 + 2*p25 + s)*s2**2 - 
     -         4*p15*(2*p24**2 + 2*p25*(4*p25 + s2) + 
     -            p24*(-14*p25 + 3*s2))) + 
     -      p14*(s2*(8*(p24 - p25)*p25*(p24 + p25) + 
     -            4*(p24**2 + 10*p24*p25 + 5*p25**2)*s - 
     -            4*(p24 + 3*p25)*s**2 - 
     -            4*(2*p24**2 + p24*(p25 - s) + (p25 + s)**2)*s2 - 
     -            s*s2**2) + 
     -         4*p15*(-4*(p24 - p25)**2*(p24 + p25 - s) + 
     -            2*(2*(p24**2 - 4*p24*p25 + p25**2) + 3*(p24 + p25)*s)*
     -             s2 + (p24 + p25 + s)*s2**2) - 
     -         8*p15**2*(8*p24**2 + 2*p24*(-7*p25 + s2) + 
     -            p25*(2*p25 + 3*s2)))))/
     -  ((2*(p14 + p15) - s2)*(-2*(p24 + p25) + s2)*
     -    (4*(p14 + p15)*(p24 + p25) - s*s2))
      clr_ll_box2 =        
     .(4*(-16*p15**2*p24*(p24 + p25)*(p15 + 3*p24 + p25 - s) - 
     -      4*p15*(2*(p15 - p24)**2*p24 + 4*p24*(-p15 + p24)*p25 + 
     -         2*(2*p15 + 3*p24)*p25**2 + 4*p25**3 - 
     -         (7*p24**2 + 6*p24*p25 + 3*p25**2 + p15*(5*p24 + p25))*
     -          s + (3*p24 + p25)*s**2)*s2 + 
     -      2*((p24 + p25 - s)**2*s + p15**2*(-2*p24 - 4*p25 + s) + 
     -         2*p15*(p24**2 + p24*(p25 - 2*s) + (2*p25 - s)*(p25 + s)))
     -        *s2**2 + s*(p15 - p24 - p25 + s)*s2**3 - 
     -      8*p14**3*p25*(2*(p24 + p25) + s2) + 
     -      2*p14**2*(8*(p24 + p25)*
     -          (p15*p24 + p25*(-p24 - 3*p25 + s)) + 
     -         2*(2*p15*p24 - 4*p24**2 + p24*(4*p25 + s) + 
     -            p25*(4*p25 + 5*s))*s2 + (-4*p24 - 2*p25 + s)*s2**2) + 
     -      p14*(16*p15*(p24 + p25)*
     -          (p24**2 + p15*p25 + 6*p24*p25 + p25**2 - (p24 + p25)*s)
     -          + 4*(2*p15**2*p25 - 
     -            2*(p24 + p25)*(2*p24**2 + p24*p25 + p25**2) - 
     -            4*p15*(3*p24**2 + 4*p24*p25 + 3*p25**2) + 
     -            (3*p24**2 + 6*p24*p25 + 7*p25**2 + 
     -               10*p15*(p24 + p25))*s - (p24 + 3*p25)*s**2)*s2 - 
     -         4*(-2*p24**2 - p25**2 + 2*p25*s + s**2 - p24*(p25 + s) + 
     -            p15*(p24 + p25 + s))*s2**2 + s*s2**3)))/
     -  ((2*(p14 + p15) - s2)*(-2*(p24 + p25) + s2)*
     -    (4*(p14 + p15)*(p24 + p25) - s*s2))
      clr_ll_tri = 
     .         (16*(16*p15**2*p24**2*(p15 + p24 + p25)*
     -       (2*(p15 + p24 + p25) - s) + 
     -      4*p15*(2*(p15 + p24 + p25)*
     -          (-4*p15*p24**2 + (p15 + p24)**2*p25 + 
     -            2*(p15 + p24)*p25**2 + p25**3) - 
     -         (p15 + p24 + p25)*
     -          (3*p24*(p15 + p24) + (2*p15 + 3*p24)*p25 + 2*p25**2)*s
     -          + (2*p24*(p15 + p24) + (p15 + p24)*p25 + p25**2)*s**2)*
     -       s2 - (4*p15*((p15 - p24)**2*p24 + 2*(p15 + p24)**2*p25 + 
     -            (4*p15 + 3*p24)*p25**2 + 2*p25**3) - 
     -         4*p24*(4*p15**2 - p25*(p24 + p25) + p15*(4*p24 + p25))*
     -          s - ((p15 - p24)**2 + 2*(p15 + 3*p24)*p25 + p25**2)*
     -          s**2 + (p15 + p24 + p25)*s**3)*s2**2 + 
     -      s*(p15**2 + (p24 + p25 - s)**2 - 2*p15*(p24 - 3*p25 + s))*
     -       s2**3 + 8*p14**4*(4*p25**2 + p24*s2) + 
     -      4*p14**3*(4*p25*(4*p15*(-p24 + p25) + 4*p25*(p24 + p25) - 
     -            p25*s) + (6*p24**2 + 6*p24*p25 - 8*p25**2 + 
     -            2*p15*(3*p24 + p25) - 2*p24*s - 3*p25*s)*s2 - 
     -         (2*p24 + p25)*s2**2) + 
     -      p14**2*(16*(2*p15**2*(p24**2 - 4*p24*p25 + p25**2) + 
     -            p25**2*(p24 + p25)*(2*(p24 + p25) - s) - 
     -            p15*(2*p24 - p25)*p25*(4*(p24 + p25) - s)) + 
     -         4*(6*p24*(p15 + p24)**2 + 
     -            2*(3*p15**2 + 17*p15*p24 + 6*p24**2)*p25 - 
     -            2*(p15 + p24)*p25**2 - 8*p25**3 - 
     -            (5*p15*p24 + 4*p24**2 + 6*p15*p25 + 8*p24*p25 + 
     -               6*p25**2)*s + (p24 + 2*p25)*s**2)*s2 + 
     -         (-16*p24**2 - 16*p24*p25 + 8*p25**2 + 16*p25*s + s**2 - 
     -            4*p15*(3*p24 + 2*p25 + s))*s2**2 + s*s2**3) + 
     -      p14*(16*p15*p24*(4*p15**2*(p24 - p25) + 
     -            p15*(p24 - 2*p25)*(4*(p24 + p25) - s) + 
     -            2*p25*(p24 + p25)*(-2*(p24 + p25) + s)) + 
     -         4*(2*(p24*(p24 + p25)**3 + p15**3*(p24 + 3*p25) + 
     -               p15*(p24 + p25)*
     -                (3*p24**2 + 14*p24*p25 + 3*p25**2) + 
     -               p15**2*(-p24**2 + 17*p24*p25 + 6*p25**2)) - 
     -            (2*p24*(p15 + p24)*(3*p15 + p24) + 
     -               (5*p15**2 + 12*p15*p24 + 5*p24**2)*p25 + 
     -               2*(4*p15 + 3*p24)*p25**2 + 3*p25**3)*s + 
     -            (p24*(p15 + p24) + (p15 + p24)*p25 + 2*p25**2)*s**2)*
     -          s2 - (4*(2*p24*(p15 + p24)**2 + 
     -               3*(p15**2 + 4*p15*p24 + p24**2)*p25 + 
     -               2*(2*p15 + p24)*p25**2 + p25**3) + 
     -            4*(p15**2 - p15*(p24 + p25) - p25*(p24 + 4*p25))*s - 
     -            2*(3*p15 + p24 - p25)*s**2 + s**3)*s2**2 + 
     -         2*(p15 + 3*p24 - p25 - s)*s*s2**3)))/
     -  (s*(2*(p14 + p15) - s2)*(2*(p24 + p25) - s2)*
     -    (4*(p14 + p15)*(p24 + p25) - s*s2))
      clr_ll_lg1 = 
     .         (s2*(-8*(p14 + p15)*(2*p14**2*p25 + 
     -         p15*p24*(2*p15 + 3*p24 - 3*p25 - 2*s) - 
     -         p14*(2*p15*(p24 + p25) + p25*(3*p24 - 3*p25 + 2*s))) - 
     -      2*(2*(2*p14 + p15)*(3*p14 + p15)*p24 + 
     -         2*(p14 + 2*p15)*(p14 + 3*p15)*p25 - 
     -         (2*p14**2 + p15*(2*p15 + 5*p24 + 3*p25) + 
     -            p14*(4*p15 + 3*p24 + 5*p25))*s + 2*(p14 + p15)*s**2)*
     -       s2 + (p14 + p15 - s)*s*s2**2))/
     -  ((p14 + p15)**2*(2*(p14 + p15) - s2)*(-2*(p24 + p25) + s2)) 
      clr_ll_lg2 = 
     .          (s2*(8*(p24 + p25)*(3*p14**2*p25 + 
     -         p15*p24*(3*p15 + 2*p24 - 2*p25 - 2*s) - 
     -         p14*(3*p15*(p24 + p25) + 2*p25*(p24 - p25 + s))) + 
     -      2*(2*(p14*(2*p24 + p25)*(3*p24 + p25) + 
     -            p15*(p24 + 2*p25)*(p24 + 3*p25)) - 
     -         (2*(p24 + p25)**2 + p15*(5*p24 + 3*p25) + 
     -            p14*(3*p24 + 5*p25))*s + 2*(p24 + p25)*s**2)*s2 - 
     -      (p24 + p25 - s)*s*s2**2))/
     -  ((p24 + p25)**2*(2*(p14 + p15) - s2)*(2*(p24 + p25) - s2))
      clr_ll_fin =         
     .(2*(-8*(p14 + p15)*(p14 - p15 - p24 + p25)*(p24 + p25)*
     -       (-(p15*p24) + p14*p25) - 
     -      2*(8*p14*p15*(p24**2 + p24*p25 + p25**2) + 
     -         4*p14**2*(2*p24**2 + 2*p24*p25 + p25**2) + 
     -         4*p15**2*(p24**2 + 2*p24*p25 + 2*p25**2) - 
     -         (p14 + p15 + p24 + p25)*
     -          (p15*(3*p24 + p25) + p14*(p24 + 3*p25))*s)*s2 - 
     -      s*(-2*(p14 + p15)*(p24 + p25) + (p14 + p15 + p24 + p25)*s)*
     -       s2**2))/
     -  ((p14 + p15)*(p24 + p25)*(2*(p14 + p15) - s2)*
     -    (2*(p24 + p25) - s2))
     
     
c     put Born and non-Born together     
      ampll_ll = ampll_ll*c0_s + CF/2d0*(-cll_ll_box1 * box1 
     .- cll_ll_box2 * box2 + cll_ll_tri * tri 
     .+ cll_ll_lg1 * log(s2/(-t)) + cll_ll_lg2 * log(s2/(-u)) 
     .+ cll_ll_fin )
      
      ampll_rr = ampll_rr*c0_s + CF/2d0*(-cll_rr_box1 * box1 
     .- cll_rr_box2 * box2 + cll_rr_tri * tri 
     .+ cll_rr_lg1 * log(s2/(-t)) + cll_rr_lg2 * log(s2/(-u)) 
     .+ cll_rr_fin )
      
      amplr_ll = amplr_ll*c0_s + CF/2d0*(-clr_ll_box1 * box1 
     .- clr_ll_box2 * box2 + clr_ll_tri * tri 
     .+ clr_ll_lg1 * log(s2/(-t)) + clr_ll_lg2 * log(s2/(-u)) 
     .+ clr_ll_fin )
      

      amprr_ll = ampll_rr
      amprr_rr = ampll_ll
      amplr_rr = amplr_ll
      
      
c     lh lepton, lh quark       
      amp2   = ampll_ll * zql**2 * zel**2
c    lh lepton, rh quark 
      amp2 = amp2 + amprr_ll * zqr**2 * zel**2
c    rh lepton, lh quark 
      amp2 = amp2 + ampll_rr * zer**2 * zql**2
c    rh lepton, rh quark    
      amp2 = amp2 + amprr_rr * zer**2 * zqr**2 
c      lh lepton, rh and lh quarks
      amp2 = amp2 + amplr_ll * zel**2 * zqr*zql
c      rh lepton, rh and lh quarks
      amp2 = amp2 + amplr_rr * zer**2 * zqr*zql      
      
      amp2 = pre * amp2  * rg_s**2

     
      end      
      