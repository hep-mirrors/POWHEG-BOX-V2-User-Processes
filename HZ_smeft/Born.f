c     computation of the Born amplitude (result from
c     maple+average over initial spin and colour)

      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      real *8 p(0:3,nlegborn)
      integer bflav(nlegborn)
      real *8 bornjk(nlegborn,nlegborn),bmunu(0:3,0:3,nlegborn)
      integer i,j,k,mu,nu,n
      real * 8 born,amp2,gw,props,couplz,T3L,T3Q,chargeQ,chargeL
      real * 8 p13,p14,p23,p24,p34,p12,p45,VQ,AQ,VL,AL,t0
      real * 8 p15,p25,p35, props1, props2, vev, cw2, sw
      real * 8 dotp
      real * 8 zdmRe_1, zdmIm_1, edmRe_1, edmIm_1 
      real * 8 zdmRe_2, zdmIm_2, edmRe_2, edmIm_2 
      real * 8 s, s2, rg, rg_s
      real * 8 zql, zqr, eps
      real * 8 amp2edm, amp2zdm, amp2int, damp2
      real * 8 amp2vv, amp2vvtilde, amp2yuk
      real * 8 pp(0:3,nlegborn), pp2(0:3,nlegborn), pp3(0:3,nlegborn)
      real * 8 pp4(0:3,nlegborn)
      external dotp
c
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
      if (mod(abs(bflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(bflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (mod(abs(bflav(1)),2).eq.0) then
c     UP TYPE QUARK
         chargeQ = 2d0/3d0
         T3Q = 1d0/2d0
      	 zdmRe_1 = 	    ph_ReGUw(abs(bflav(1))/2,abs(bflav(2))/2) 
     .	       - ph_sthw2 * ph_ReGUe(abs(bflav(1))/2,abs(bflav(2))/2) 
	 edmRe_1 = 	    ph_ReGUe(abs(bflav(1))/2,abs(bflav(2))/2) 
	 zdmIm_1 = 	    ph_ImGUw(abs(bflav(1))/2,abs(bflav(2))/2) 
     .	       - ph_sthw2 * ph_ImGUe(abs(bflav(1))/2,abs(bflav(2))/2) 
	 edmIm_1 = 	    ph_ImGUe(abs(bflav(1))/2,abs(bflav(2))/2)
	 zdmRe_2 = 	    ph_ReGUw(abs(bflav(2))/2,abs(bflav(1))/2) 
     .	       - ph_sthw2 * ph_ReGUe(abs(bflav(2))/2,abs(bflav(1))/2) 
	 edmRe_2 = 	    ph_ReGUe(abs(bflav(2))/2,abs(bflav(1))/2) 
	 zdmIm_2 = 	    ph_ImGUw(abs(bflav(2))/2,abs(bflav(1))/2) 
     .	       - ph_sthw2 * ph_ImGUe(abs(bflav(2))/2,abs(bflav(1))/2) 
	 edmIm_2 = 	    ph_ImGUe(abs(bflav(2))/2,abs(bflav(1))/2)
     	 zql   = 1/2d0 * ph_QphiU(abs(bflav(1))/2,abs(bflav(2))/2) 
     	 zqr   = 1/2d0 * ph_Uphi (abs(bflav(1))/2,abs(bflav(2))/2)
     	 
      elseif (mod(abs(bflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
         chargeQ = -1d0/3d0
         T3Q = -1d0/2d0
         zdmRe_1 = 	    - ph_ReGDw((abs(bflav(1))+1)/2,
     .				       (abs(bflav(2))+1)/2) 
     .	       -   ph_sthw2 * ph_ReGDe((abs(bflav(1))+1)/2,
     .				       (abs(bflav(2))+1)/2) 
	 edmRe_1 = 	      ph_ReGDe((abs(bflav(1))+1)/2,
     .				       (abs(bflav(2))+1)/2)  
	 zdmIm_1 = 	    - ph_ImGDw((abs(bflav(1))+1)/2,
     .				       (abs(bflav(2))+1)/2) 
     .	       -   ph_sthw2 * ph_ImGDe((abs(bflav(1))+1)/2,
     .				       (abs(bflav(2))+1)/2) 
	 edmIm_1 = 	      ph_ImGDe((abs(bflav(1))+1)/2,
     .				       (abs(bflav(2))+1)/2) 
         zdmRe_2 = 	    - ph_ReGDw((abs(bflav(2))+1)/2,
     .				       (abs(bflav(1))+1)/2) 
     .	       -   ph_sthw2 * ph_ReGDe((abs(bflav(2))+1)/2,
     .				       (abs(bflav(1))+1)/2) 
	 edmRe_2 = 	      ph_ReGDe((abs(bflav(2))+1)/2,
     .				       (abs(bflav(1))+1)/2)  
	 zdmIm_2 = 	    - ph_ImGDw((abs(bflav(2))+1)/2,
     .				       (abs(bflav(1))+1)/2) 
     .	       -   ph_sthw2 * ph_ImGDe((abs(bflav(2))+1)/2,
     .				       (abs(bflav(1))+1)/2) 
	 edmIm_2 = 	      ph_ImGDe((abs(bflav(2))+1)/2,
     .				       (abs(bflav(1))+1)/2) 
     	 zql   = 1/2d0 * 
     .		ph_QphiD( (abs(bflav(1))+1)/2,(abs(bflav(2))+1)/2)  
     	 zqr   =1/2d0* 
     .		ph_Dphi( (abs(bflav(1))+1)/2,(abs(bflav(2))+1)/2)
      endif

      
      VL = T3L - 2*chargeL*ph_sthw**2
      AL = -T3L
      VQ = T3Q - 2*chargeQ*ph_sthw**2
      AQ = -T3Q

c     make sure not to introduce a fcnc piece in the SM 
      if(abs(bflav(1)).ne.abs(bflav(2))) then
	VQ = 1d-20
	AQ = 1d-20
	chargeQ = 1d-20
      endif
      
      
      if(wdm) then 
	VQ = VQ + (zqr + zql)
        AQ = AQ + (zqr - zql)
      endif
      
      
c
      pp = p
      pp2 = p 
      pp3 = p
      pp4 = p

      if (bflav(4).lt.0)then
         call swap_momenta(pp(:,4),pp(:,5))
      endif

      if (bflav(1).lt.0.and.bflav(2).gt.0) then
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
c     when dim. 6 are present, stick to 4mz^4/v^2
      born=born*(couplz)**2*(couplz)**2*(4d0 * ph_Zmass2**2/vev**2)
      
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
		    
        amp2zdm = amp2zdm * (zdmIm_1**2 + zdmRe_1**2 
     .			   + zdmIm_2**2 + zdmRe_2**2)/2d0

        
c     EDM         
	amp2edm = 8/3d0 * (p14*p24 + p15*p25)/s2
	
	amp2edm = amp2edm * (ph_unit_e)**4/vev**4 * chargeL**2
	
	amp2edm = amp2edm * (edmIm_1**2 + edmRe_1**2 
     .			   + edmIm_2**2 + edmRe_2**2)/2d0 
	
  
	
c     Interference EDM/ZDM
	amp2int = ph_Zmass2 * props1 * (ph_Zmass2**2 + s*s2 
     . 	- ph_Zmass2*(s + s2))/ (3d0 * s2) *  
     .	  (4*(p14 - p15 - p24 + p25)*(-(p15*p24) + p14*p25) 
     .  - (p14 + p15 + p24 + p25)*s*s2)
	
	amp2int = amp2int 
     .  +  4*(p14*p24 + p15*p25)*(ph_Zmass2 - s2)/3d0
	
	amp2int = amp2int * props2 * (ph_unit_e)**2 *(2 * couplz)**2
     .  /vev**4 * 2d0 * VL * chargeL
	
	amp2int = - amp2int * (edmIm_1 * zdmIm_1 + edmRe_1 * zdmRe_1 
     . 	+ edmIm_2 * zdmIm_2 + edmRe_2 * zdmRe_2)/2d0
	
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
     .	(zql*(VQ-AQ)*(4*p14*p25*sw**4 + p15*p24*(1 - 2*sw**2)**2)+ 
     .   zqr*(VQ+AQ)*(4*p15*p24*sw**4 + p14*p25*(1 - 2*sw**2)**2))
     .  *  props1 * props2 * ph_Zmass2 * gw**4/cw2**2/vev**2
     
      endif
      

      
c     ZZtilde operator 
      amp2vvtilde  = 0d0 
      if(wdm) then
	call amp2_vvtilde(bflav,pp3,amp2vvtilde)
      endif
      
c     phi^dagger phi W W operators      
      amp2vv = 0d0
      if(wdm) then 
	call amp2_vv(bflav,pp2,amp2vv)
      endif
      
      amp2yuk = 0d0 
      if(wdm) then 
	call amp2_yuk(bflav,pp4,amp2yuk)
      endif
      
      born = born + amp2edm + damp2 + amp2vvtilde + amp2vv + amp2yuk
      
c     
c     initialization of bornjk
      do j=1,nlegborn
        do k=1,nlegborn
           bornjk(j,k)=0d0
        enddo
      enddo
c     colour correlated born amplitude:
      bornjk(1,1)=-CF*born
      bornjk(2,2)=-CF*born
      bornjk(1,2)=CF*born
      bornjk(2,1)=CF*born
c
c     spin correlated born amplitude
      do j=1,nlegborn
         do mu=0,3
            do nu=0,3
               bmunu(mu,nu,j)=0d0
            enddo
         enddo
      enddo
      end




      subroutine borncolour_lh     
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structure, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface
      implicit none
      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
c     neutral particles
      icolup(1,3)=0
      icolup(2,3)=0
      icolup(1,4)=0
      icolup(2,4)=0
      icolup(1,5)=0
      icolup(2,5)=0
c     colored particles
      if((idup(1).gt.0).and.(idup(2).lt.0)) then
         icolup(1,1)=501
         icolup(2,1)=0
         icolup(1,2)=0
         icolup(2,2)=501
      elseif((idup(1).lt.0).and.(idup(2).gt.0)) then
         icolup(1,1)=0
         icolup(2,1)=501
         icolup(1,2)=501
         icolup(2,2)=0
      else
         write(*,*) ' invalid flavour'
         call pwhg_exit(-1)
      endif
      end


      subroutine finalize_lh
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface.
c     
c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode

      call add_resonance(idvecbos,4,5)

c     fix here the W decay mode
      id5=vdecaymode
      id6=-vdecaymode
      call change_id_particles(5,6,id5,id6)
      
c     The general reshuffling procedure.
      call lhefinitemasses
      end




      subroutine change_id_particles(i1,i2,id1,id2)
      implicit none
      include 'LesHouches.h'
      integer i1,i2,id1,id2
      idup(i1)=id1
      idup(i2)=id2
      end


      subroutine LeviCivita(p1,p2,p3,p4,eps)
      implicit none
      real *8 p1(0:3), p2(0:3), p3(0:3), p4(0:3)
      real *8 eps
      
      eps = - p1(0) *( p2(1) * p3(2) * p4(3) - p2(1) * p3(3) * p4(2) 
     $               - p2(2) * p3(1) * p4(3) + p2(2) * p3(3) * p4(1)
     $		     + p2(3) * p3(1) * p4(2) - p2(3) * p3(2) * p4(1))
     
      eps = eps 
     $      + p2(0) *( p1(1) * p3(2) * p4(3) - p1(1) * p3(3) * p4(2) 
     $               - p1(2) * p3(1) * p4(3) + p1(2) * p3(3) * p4(1)
     $		     + p1(3) * p3(1) * p4(2) - p1(3) * p3(2) * p4(1))
     
      eps = eps 
     $      + p3(0) *( p2(1) * p1(2) * p4(3) - p2(1) * p1(3) * p4(2) 
     $               - p2(2) * p1(1) * p4(3) + p2(2) * p1(3) * p4(1)
     $		     + p2(3) * p1(1) * p4(2) - p2(3) * p1(2) * p4(1))
     
      eps = eps 
     $      + p4(0) *( p2(1) * p3(2) * p1(3) - p2(1) * p3(3) * p1(2) 
     $               - p2(2) * p3(1) * p1(3) + p2(2) * p3(3) * p1(1)
     $		     + p2(3) * p3(1) * p1(2) - p2(3) * p3(2) * p1(1))
      
      end
      
      
      subroutine amp2_vv(bflav,pp,amp2)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      real *8 pp(0:3,nlegborn)
      integer bflav(nlegborn)
      real *8 amp2, amp2int, amp22, amp2_8
      real *8 gw,T3L,T3Q,chargeQ,chargeL
      real *8 zql, zqr, zel, zer 
      real *8 dzql, dzqr
      real *8 props, props1, props2, sw, cw2, couplz, cw
      real *8 pre, pre2, vev
      real *8 cZZ, cZg, cgg
      real * 8 p13,p14,p23,p24,p34,p12,p45
      real * 8 p15,p25,p35, s, s2
      real * 8 dotp
      external dotp
      
      gw=ph_geff
      ph_cthw = sqrt(1-ph_sthw**2)
      couplz = ph_gcweff/(2d0)
      cw2 = ph_cthw**2
      cw = ph_cthw
      sw = ph_sthw
      vev = ph_vev 
      
c
c     vectorial and axial couplings to Z boson
      if (mod(abs(bflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(bflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (mod(abs(bflav(1)),2).eq.0) then
c     UP TYPE QUARK
         chargeQ = 2d0/3d0
         T3Q = 1d0/2d0
         dzql   = 1/2d0 *ph_QphiU(abs(bflav(1))/2,abs(bflav(2))/2) 
     	 dzqr   = 1/2d0 *ph_Uphi (abs(bflav(1))/2,abs(bflav(2))/2)
      elseif (mod(abs(bflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
         chargeQ = -1d0/3d0
         T3Q = -1d0/2d0
     	 dzql   = 1/2d0 * 
     .	 ph_QphiD( (abs(bflav(1))+1)/2,(abs(bflav(2))+1)/2)  
     	 dzqr   = 1/2d0 *
     .	 ph_Dphi( (abs(bflav(1))+1)/2,(abs(bflav(2))+1)/2)
      endif

c     define quark and leptons couplings    
      zel = T3L - chargeL*ph_sthw**2
      zer =     - chargeL*ph_sthw**2
      zql = T3Q - chargeQ*ph_sthw**2 
      zqr = 	- chargeQ*ph_sthw**2     
c     make sure not to include a fcnc in the SM 
      if(abs(bflav(1)).ne.abs(bflav(2))) then
	zql = 1d-20
	zqr = 1d-20
	chargeQ = 1d-20
      endif
c     add anomalous couplings
      zql = zql + dzql
      zqr = zqr + dzqr    

c     dim. 6 couplings 

      cZZ = cw**2 * ph_cww + sw**2 * ph_cbb + cw * sw * ph_cwb
      cgg = sw**2 * ph_cww + cw**2 * ph_cbb - cw * sw * ph_cwb
      cZg = 2*cw*sw * (ph_cww - ph_cbb) - (cw**2 - sw**2) * ph_cwb
 
 
 
      if (bflav(4).lt.0)then
         call swap_momenta(pp(:,4),pp(:,5))
      endif

      if (bflav(1).lt.0.and.bflav(2).gt.0) then
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
     
     
      s = 2d0 * p12
      s2 = 2d0 * p45
     
c     define the propagators     
c     Z propagators
      props = 1/((2*p12-ph_Zmass2)**2+ph_ZmZw**2)/
     $     ((2*p45-ph_Zmass2)**2+ph_ZmZw**2)
      props1 = 1/((s-ph_Zmass2)**2+ph_Zwidth**2*ph_Zmass2)
c     lepton decay     
      props2 = 1/((s2-ph_Zmass2)**2+ph_Zwidth**2*ph_Zmass2)     
      
      pre = 8/3d0 * ph_Zmass2 * gw**4/cw2**2/vev**2 * props1 * props2
      
      
      amp2int = 0d0
c     lh lepton, lh quark       
      amp2int   =  (p15 + p24)*(4*p15*p24 - 4*p14*p25 + s*s2) * 
     . ( zel**2 * zql**2  * cZZ     
     . + zel *zql * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zel*zql**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*zql * chargeQ *  sw*cw *  (1 - ph_Zmass2/s )* cZg)  
     
     
c    lh lepton, rh quark 
      amp2int = amp2int + 
     .(p14 + p25)*(-4*p15*p24 + 4*p14*p25 + s*s2) * 
     . (   zel**2 * zqr**2 * cZZ        
     . +   zel *zqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg
     . +1/2d0*zel*zqr**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*zqr * chargeQ *  sw*cw *  (1 - ph_Zmass2/s) * cZg)  

c    rh lepton, lh quark 
      amp2int = amp2int + 
     .(p14 + p25)*(-4*p15*p24 + 4*p14*p25 + s*s2) * 
     . (   zer**2 * zql**2 * cZZ      
     . +   zer *zql * chargeL * chargeQ * cw**2 * sw**2 * 
     . (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zql**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2) *cZg
     . +1/2d0*zer**2*zql * chargeQ *  sw*cw *  (1 - ph_Zmass2/s) * cZg)       
     
c    rh lepton, rh quark    
      amp2int = amp2int + 
     .(p15 + p24)*(4*p15*p24 - 4*p14*p25 + s*s2) * 
     . (   zer**2 * zqr**2 * cZZ      
     . +   zer *zqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .   (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zqr**2* chargeL *  sw*cw *  (1 - ph_Zmass2/s2) * cZg
     . +1/2d0*zer**2*zqr* chargeQ *  sw*cw *  (1 - ph_Zmass2/s)* cZg ) 
     
      amp2int = pre * amp2int

c     add Interference between dzqr, dzql and phi^dagger phi VV operators
c     some of the interference is taken care of by changing the couplings zql --> zql + dzql
c     in addition there is the local diagram with Higgs and Z in the same point
      amp2_8 = 0d0

c     lh lepton, lh quark       
      amp2_8   =  (p15 + p24)*(4*p15*p24 - 4*p14*p25 + s*s2) * 
     . ( zel**2 * zql * dzql  * cZZ     
     . + zel *dzql * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zel*zql*dzql* chargeL *  sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*dzql * chargeQ *  sw*cw *  (1 - ph_Zmass2/s )* cZg)  
     
     
c    lh lepton, rh quark 
      amp2_8 = amp2_8 + 
     .(p14 + p25)*(-4*p15*p24 + 4*p14*p25 + s*s2) * 
     . (   zel**2 * zqr* dzqr * cZZ        
     . +   zel *dzqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg
     . +1/2d0*zel*zqr*dzqr * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*dzqr * chargeQ *  sw*cw *  (1 - ph_Zmass2/s) * cZg)  

c    rh lepton, lh quark 
      amp2_8 = amp2_8 + 
     .(p14 + p25)*(-4*p15*p24 + 4*p14*p25 + s*s2) * 
     . (   zer**2 * zql*dzql * cZZ      
     . +   zer *dzql * chargeL * chargeQ * cw**2 * sw**2 * 
     . (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zql*dzql* chargeL* sw*cw *  (1 - ph_Zmass2/s2) *cZg
     . +1/2d0*zer**2*dzql * chargeQ* sw*cw *  (1 - ph_Zmass2/s) * cZg)       
     
c    rh lepton, rh quark    
      amp2_8 = amp2_8 + 
     .(p15 + p24)*(4*p15*p24 - 4*p14*p25 + s*s2) * 
     . (   zer**2 * zqr*dzqr * cZZ      
     . +   zer *dzqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .   (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zqr*dzqr*chargeL * sw*cw *  (1 - ph_Zmass2/s2)*cZg
     . +1/2d0*zer**2*dzqr* chargeQ * sw*cw *  (1 - ph_Zmass2/s) *cZg ) 
     
      amp2_8 = pre * amp2_8 * ( s - ph_Zmass2)/ph_Zmass2
      

      
c    square      
      pre2 = 4/3d0 *  gw**4/cw2**2/vev**2 

c     lh lepton, lh quark,              
      amp22 =  (16*(p15*p24 - p14*p25)**2 + 4*(p15**2 + p24**2 
     .        - 2*p14*p25)*s*s2 + s**2*s2**2) * 
     .(
     .  zel**2 * zql**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/s**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zel**2 * chargeQ**2 * cZg**2 
     .  * 1/s**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zql**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zql* zel * chargeL* chargeQ * cZg**2
     .  * 1/s*1/s2*props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zql* zel * chargeL* chargeQ * cZZ* cgg 
     .  * 1/s*1/s2* props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+         cw**3 * sw**3 * zel* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/s**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zql* chargeL**2 * chargeQ  * cZg * cgg
     .  * 1/s * 1/s2**2 * props1 * (s - ph_Zmass2)
     .+         cw * sw * zel**2 * zql *  chargeQ*   cZg * cZZ
     .  * 1/s   * props2 * props1 * (s - ph_Zmass2 )
     .+         cw * sw * zel * zql**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))
     
c     rh lepton and rh quark 
      amp22 =  amp22 + (16*(p15*p24 - p14*p25)**2 + 4*(p15**2 + p24**2 
     .        - 2*p14*p25)*s*s2 + s**2*s2**2) * 
     .(
     .  zer**2 * zqr**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/s**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zer**2 * chargeQ**2 * cZg**2 
     .  * 1/s**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zqr**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zqr* zer * chargeL* chargeQ * cZg**2
     .  * 1/s*1/s2*props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zqr* zer * chargeL* chargeQ * cZZ* cgg 
     .  * 1/s*1/s2* props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+         cw**3 * sw**3 * zer* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/s**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zqr* chargeL**2 * chargeQ  * cZg * cgg
     .  * 1/s * 1/s2**2 * props1 * (s - ph_Zmass2)
     .+         cw * sw * zer**2 * zqr *  chargeQ*   cZg * cZZ
     .  * 1/s   * props2 * props1 * (s - ph_Zmass2 )
     .+         cw * sw * zer * zqr**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))
     
c    rh lepton, lh quark,      
      amp22 = amp22 + ( 16*(p15*p24 - p14*p25)**2 + 4*(p14**2 
     .     - 2*p15*p24 + p25**2)*s*s2 + s**2*s2**2 ) * 
     .(
     .  zer**2 * zql**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/s**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zer**2 * chargeQ**2 * cZg**2 
     .  * 1/s**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zql**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zql* zer * chargeL* chargeQ * cZg**2
     .  * 1/s*1/s2*props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zql* zer * chargeL* chargeQ * cZZ* cgg 
     .  * 1/s*1/s2* props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+         cw**3 * sw**3 * zer* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/s**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zql* chargeL**2 *chargeQ  * cZg * cgg
     .  * 1/s * 1/s2**2 * props1 * (s - ph_Zmass2)
     .+         cw * sw * zer**2 * zql *  chargeQ*   cZg * cZZ
     .  * 1/s   * props2 * props1 * (s - ph_Zmass2 )
     .+         cw * sw * zer * zql**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))     
  
  
c    rh quark, lh lepton,        
      amp22 = amp22 + ( 16*(p15*p24 - p14*p25)**2 + 4*(p14**2 
     .     - 2*p15*p24 + p25**2)*s*s2 + s**2*s2**2 ) * 
     .(
     .  zel**2 * zqr**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/s**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zel**2 * chargeQ**2 * cZg**2 
     .  * 1/s**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zqr**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zqr* zel * chargeL* chargeQ * cZg**2
     .  * 1/s*1/s2*props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zqr* zel * chargeL* chargeQ * cZZ* cgg 
     .  * 1/s*1/s2* props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+         cw**3 * sw**3 * zel* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/s**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zqr* chargeL**2* chargeQ  * cZg * cgg
     .  * 1/s * 1/s2**2 * props1 * (s - ph_Zmass2)
     .+         cw * sw * zel**2 * zqr *  chargeQ*   cZg * cZZ
     .  * 1/s   * props2 * props1 * (s - ph_Zmass2 )
     .+         cw * sw * zel * zqr**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))  
     
     
      amp22 = amp22 * pre2
     
      amp2 = amp22 + amp2int + amp2_8
     
      end
      

c     phi^dagger phi V Vtilde operators     
      subroutine amp2_vvtilde(bflav,pp,amp2)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      real *8 pp(0:3,nlegborn)
      integer bflav(nlegborn)
      real *8 amp2, amp22, amp2int, amp2_8
      real *8 gw,T3L,T3Q,chargeQ,chargeL
      real *8 zql, zqr, zel, zer 
      real *8 dzql, dzqr
      real *8 props, props1, props2, sw, cw2, couplz, cw
      real *8 pre, pre2, vev
      real *8 cZZ, cZg, cgg
      real * 8 p13,p14,p23,p24,p34,p12,p45
      real * 8 p15,p25,p35, s, s2, eps
      real * 8 dotp
      external dotp
      
      gw=ph_geff
      ph_cthw = sqrt(1-ph_sthw**2)
      couplz = ph_gcweff/(2d0)
      cw2 = ph_cthw**2
      cw = ph_cthw
      sw = ph_sthw
      vev = ph_vev 
      
      
c
c     vectorial and axial couplings to Z boson
      if (mod(abs(bflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(bflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (mod(abs(bflav(1)),2).eq.0) then
c     UP TYPE QUARK
         chargeQ = 2d0/3d0
         T3Q = 1d0/2d0
         dzql   = 1/2d0 *ph_QphiU(abs(bflav(1))/2,abs(bflav(2))/2)  
     	 dzqr   = 1/2d0 *ph_Uphi (abs(bflav(1))/2,abs(bflav(2))/2)
      elseif (mod(abs(bflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
         chargeQ = -1d0/3d0
         T3Q = -1d0/2d0
     	 dzql   = 1/2d0 * 
     .	 ph_QphiD( (abs(bflav(1))+1)/2,(abs(bflav(2))+1)/2)  
     	 dzqr   = 1/2d0*
     .   ph_Dphi( (abs(bflav(1))+1)/2,(abs(bflav(2))+1)/2)
      endif

c     define quark and leptons couplings    
      zel = T3L - chargeL*ph_sthw**2
      zer =     - chargeL*ph_sthw**2
      zql = T3Q - chargeQ*ph_sthw**2 
      zqr = 	- chargeQ*ph_sthw**2     
c     make sure not to include a fcnc in the SM 
      if(abs(bflav(1)).ne.abs(bflav(2))) then
	zql = 1d-20
	zqr = 1d-20
	chargeQ = 1d-20
      endif
c     add anomalous couplings
      zql = zql + dzql
      zqr = zqr + dzqr    

c     dim. 6 couplings 

      cZZ = cw**2 * ph_cwwt + sw**2 * ph_cbbt + cw * sw * ph_cwbt
      cgg = sw**2 * ph_cwwt + cw**2 * ph_cbbt - cw * sw * ph_cwbt
      cZg = 2*cw*sw * (ph_cwwt - ph_cbbt) - (cw**2 - sw**2) * ph_cwbt
 
 
 
      if (bflav(4).lt.0)then
         call swap_momenta(pp(:,4),pp(:,5))
      endif

      if (bflav(1).lt.0.and.bflav(2).gt.0) then
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
     
c     define the propagators     
c     Z propagators
      props = 1/((2*p12-ph_Zmass2)**2+ph_ZmZw**2)/
     $     ((2*p45-ph_Zmass2)**2+ph_ZmZw**2)
      props1 = 1/((s-ph_Zmass2)**2+ph_Zwidth**2*ph_Zmass2)
c     lepton decay     
      props2 = 1/((s2-ph_Zmass2)**2+ph_Zwidth**2*ph_Zmass2)     
      
      pre = 32/3d0 * ph_Zmass2 * gw**4/cw2**2/vev**2 * props1 * 
     .     props2 * eps 
      
 
      amp2int = 0d0
c     lh lepton, lh quark       
      amp2int   =  -(p15 + p24)* 
     . ( zel**2 * zql**2  * cZZ     
     . + zel *zql * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zel*zql**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*zql * chargeQ *  sw*cw *  (1 - ph_Zmass2/s )* cZg)  
     
     
c    lh lepton, rh quark 
      amp2int = amp2int + (p14 + p25) * 
     . (   zel**2 * zqr**2 * cZZ        
     . +   zel *zqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg
     . +1/2d0*zel*zqr**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*zqr * chargeQ *  sw*cw *  (1 - ph_Zmass2/s) * cZg)  

c    rh lepton, lh quark 
      amp2int = amp2int +  (p14 + p25)*
     . (   zer**2 * zql**2 * cZZ      
     . +   zer *zql * chargeL * chargeQ * cw**2 * sw**2 * 
     . (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zql**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2) *cZg
     . +1/2d0*zer**2*zql * chargeQ *  sw*cw *  (1 - ph_Zmass2/s) * cZg)       
     
c    rh lepton, rh quark    
      amp2int = amp2int -(p15 + p24)* 
     . (   zer**2 * zqr**2 * cZZ      
     . +   zer *zqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .   (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zqr**2* chargeL *  sw*cw *  (1 - ph_Zmass2/s2) * cZg
     . +1/2d0*zer**2*zqr* chargeQ *  sw*cw *  (1 - ph_Zmass2/s)* cZg ) 
     
      amp2int = pre * amp2int
      
c     add interference between dzq and phi^dagger phi V Vtilde     
      amp2_8 = 0d0
c     lh lepton, lh quark       
      amp2_8   =  -(p15 + p24)* 
     . ( zel**2 * zql*dzql  * cZZ     
     . + zel *dzql * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zel*zql*dzql* chargeL * sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*dzql * chargeQ * sw*cw *  (1 - ph_Zmass2/s )* cZg)  
     
     
c    lh lepton, rh quark 
      amp2_8 = amp2_8 + (p14 + p25) * 
     . (   zel**2 * zqr*dzqr * cZZ        
     . +   zel *dzqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg
     . +1/2d0*zel*zqr*dzqr* chargeL * sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*dzqr * chargeQ * sw*cw *  (1 - ph_Zmass2/s) * cZg)  

c    rh lepton, lh quark 
      amp2_8 = amp2_8 +  (p14 + p25)*
     . (   zer**2 * zql*dzql * cZZ      
     . +   zer *dzql * chargeL * chargeQ * cw**2 * sw**2 * 
     . (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zql*dzql* chargeL* sw*cw *  (1 - ph_Zmass2/s2) *cZg
     . +1/2d0*zer**2*dzql * chargeQ * sw*cw *  (1 - ph_Zmass2/s) * cZg)       
     
c    rh lepton, rh quark    
      amp2_8 = amp2_8 -(p15 + p24)* 
     . (   zer**2 * zqr*dzqr * cZZ      
     . +   zer *dzqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .   (1 - ph_Zmass2/s) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zqr*dzqr*chargeL *  sw*cw *  (1 - ph_Zmass2/s2) * cZg
     . +1/2d0*zer**2*dzqr* chargeQ *  sw*cw *  (1 - ph_Zmass2/s)* cZg ) 
     
      amp2_8 = pre * amp2_8 * ( s - ph_Zmass2)/ph_Zmass2      
      

c    square      
      pre2 = 4/3d0 *  gw**4/cw2**2/vev**2 

      
c     lh lepton, lh quark,              
      amp22 =  -(16*(p15*p24 - p14*p25)**2 - 4*(p15**2 + p24**2 
     .        + 2*p14*p25)*s*s2 + s**2*s2**2) * 
     .(
     .  zel**2 * zql**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/s**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zel**2 * chargeQ**2 * cZg**2 
     .  * 1/s**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zql**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zql* zel * chargeL* chargeQ * cZg**2
     .  * 1/s*1/s2*props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zql* zel * chargeL* chargeQ * cZZ* cgg 
     .  * 1/s*1/s2* props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+         cw**3 * sw**3 * zel* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/s**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zql* chargeL**2 * chargeQ  * cZg * cgg
     .  * 1/s * 1/s2**2 * props1 * (s - ph_Zmass2)
     .+         cw * sw * zel**2 * zql *  chargeQ*   cZg * cZZ
     .  * 1/s   * props2 * props1 * (s - ph_Zmass2 )
     .+         cw * sw * zel * zql**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))
     
c     rh lepton and rh quark 
      amp22 =  amp22 - (16*(p15*p24 - p14*p25)**2 - 4*(p15**2 + p24**2 
     .        + 2*p14*p25)*s*s2 + s**2*s2**2) * 
     .(
     .  zer**2 * zqr**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/s**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zer**2 * chargeQ**2 * cZg**2 
     .  * 1/s**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zqr**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zqr* zer * chargeL* chargeQ * cZg**2
     .  * 1/s*1/s2*props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zqr* zer * chargeL* chargeQ * cZZ* cgg 
     .  * 1/s*1/s2* props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+         cw**3 * sw**3 * zer* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/s**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zqr* chargeL**2 * chargeQ  * cZg * cgg
     .  * 1/s * 1/s2**2 * props1 * (s - ph_Zmass2)
     .+         cw * sw * zer**2 * zqr *  chargeQ*   cZg * cZZ
     .  * 1/s   * props2 * props1 * (s - ph_Zmass2 )
     .+         cw * sw * zer * zqr**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))
     
c    rh lepton, lh quark,      
      amp22 = amp22 - ( 16*(p15*p24 - p14*p25)**2 - 4*(p14**2 
     .     + 2*p15*p24 + p25**2)*s*s2 + s**2*s2**2 ) * 
     .(
     .  zer**2 * zql**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/s**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zer**2 * chargeQ**2 * cZg**2 
     .  * 1/s**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zql**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zql* zer * chargeL* chargeQ * cZg**2
     .  * 1/s*1/s2*props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zql* zer * chargeL* chargeQ * cZZ* cgg 
     .  * 1/s*1/s2* props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+         cw**3 * sw**3 * zer* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/s**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zql* chargeL**2 *chargeQ  * cZg * cgg
     .  * 1/s * 1/s2**2 * props1 * (s - ph_Zmass2)
     .+         cw * sw * zer**2 * zql *  chargeQ*   cZg * cZZ
     .  * 1/s   * props2 * props1 * (s - ph_Zmass2 )
     .+         cw * sw * zer * zql**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))     
  
  
c    rh quark, lh lepton,        
      amp22 = amp22 - ( 16*(p15*p24 - p14*p25)**2 - 4*(p14**2 
     .     + 2*p15*p24 + p25**2)*s*s2 + s**2*s2**2 ) * 
     .(
     .  zel**2 * zqr**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/s**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zel**2 * chargeQ**2 * cZg**2 
     .  * 1/s**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zqr**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zqr* zel * chargeL* chargeQ * cZg**2
     .  * 1/s*1/s2*props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zqr* zel * chargeL* chargeQ * cZZ* cgg 
     .  * 1/s*1/s2* props1*props2 *(s2 - ph_Zmass2)*(s - ph_Zmass2)
     .+         cw**3 * sw**3 * zel* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/s**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zqr* chargeL**2* chargeQ  * cZg * cgg
     .  * 1/s * 1/s2**2 * props1 * (s - ph_Zmass2)
     .+         cw * sw * zel**2 * zqr *  chargeQ*   cZg * cZZ
     .  * 1/s   * props2 * props1 * (s - ph_Zmass2 )
     .+         cw * sw * zel * zqr**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))  
     
     
      amp22 = amp22 * pre2
     
      amp2 = amp22 + amp2int + amp2_8
     
      end
      
      
      
c     Non standard Yukawa couplings       
      subroutine amp2_yuk(bflav,pp,amp2)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      real *8 pp(0:3,nlegborn)
      integer bflav(nlegborn)
      real *8 yy, amp2
      real *8 gw,T3L,T3Q,chargeQ,chargeL
      real *8 zql, zqr, zel, zer 
      real *8 props2, sw, cw2, couplz, cw
      real *8 pre, pre2, vev
      real *8 ampll_ll, ampll_rr, amprr_ll, amprr_rr
      real *8 amplr_ll, amplr_rr
      real * 8 p13,p14,p23,p24,p34,p12,p45
      real * 8 p15,p25,p35, s, s2, rg_s
      real * 8 dotp
      external dotp
      
      gw=ph_geff
      ph_cthw = sqrt(1-ph_sthw**2)
      couplz = ph_gcweff/(2d0)
      cw2 = ph_cthw**2
      cw = ph_cthw
      sw = ph_sthw
      vev = ph_vev 
      
      
      
c     vectorial and axial couplings to Z boson
      if (mod(abs(bflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(bflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (mod(abs(bflav(1)),2).eq.0) then
c     UP TYPE QUARK
         chargeQ = 2d0/3d0
         T3Q = 1d0/2d0
	 yy = 1/2d0*(ph_ReYu(abs(bflav(1))/2,abs(bflav(2))/2)**2 
     .		  + ph_ImYu(abs(bflav(1))/2,abs(bflav(2))/2)**2
     .		  + ph_ReYu(abs(bflav(2))/2,abs(bflav(1))/2)**2 
     .		  + ph_ImYu(abs(bflav(2))/2,abs(bflav(1))/2)**2)
         elseif (mod(abs(bflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
         chargeQ = -1d0/3d0
         T3Q = -1d0/2d0
	 yy = 1/2d0*(
     .	 	ph_ReYd((abs(bflav(1))+1)/2,(abs(bflav(2))+1)/2)**2 
     . 	    + 	ph_ImYd((abs(bflav(1))+1)/2,(abs(bflav(2))+1)/2)**2 
     .	    +   ph_ReYd((abs(bflav(2))+1)/2,(abs(bflav(1))+1)/2)**2 
     . 	    + 	ph_ImYd((abs(bflav(2))+1)/2,(abs(bflav(1))+1)/2)**2 )
      endif

c     define quark and leptons couplings    
      zel = T3L - chargeL*ph_sthw**2
      zer =     - chargeL*ph_sthw**2
      zql = T3Q - chargeQ*ph_sthw**2 
      zqr = 	- chargeQ*ph_sthw**2 
 
 
      if (bflav(4).lt.0)then
         call swap_momenta(pp(:,4),pp(:,5))
      endif

      if (bflav(1).lt.0.and.bflav(2).gt.0) then
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
     
     
      s = 2d0 * p12
      s2 = 2d0 * p45
     
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
      amplr_ll =  (-16*(p14**2*p25 + p15*p24*(p15 + p24 - p25 - s) 
     . 	    - p14*(p15*(p24 + p25) + p25*(p24 - p25 + s))) + 
     .    4*(-4*(p14*p24 + p15*p25) + (p14 + p15 + p24 + p25)*s 
     .	    - s**2)*s2)/((2*(p14 + p15) - s2)*(-2*(p24 + p25) + s2))
      amprr_ll = ampll_rr
      amprr_rr = ampll_ll
      amplr_rr = amplr_ll
      
      
       call RGE_s(LambdaNP,rg_s)
       
      
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
      amp2 = pre * amp2 *rg_s**2

     
      end      
      
      