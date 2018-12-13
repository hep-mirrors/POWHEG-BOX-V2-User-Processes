c     computation of the born amplitude (result from
c     maple+average over initial spin and colour)
      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'      
      real *8 p(0:3,nlegborn),born,bornjk(nlegborn,nlegborn)
      real *8 bmunu(0:3,0:3,nlegborn)
      integer bflav(nlegborn)
      integer i,j,k,mu,nu,n
      real * 8 amp2,amp2u,amp2d, amp2xi, amp, rg, ampyu, ampyd
      real * 8 bv,ba,gw,mw,props, props1, props2, vev
      real *8 p13,p14,p23,p24,p34,p12,p33
      real *8 p15, p25, p35, p45, s, s2
      real *8 dotp
      real *8 damp2, dw, ckm, yu, yd, rg_s
      real *8 amp2ww, amp2wwt, eps
      external dotp
      integer tmp1, tmp2

      amp2  = 0d0
      amp2u = 0d0
      amp2d = 0d0
      amp2xi = 0d0
      damp2 = 0d0
      amp2ww = 0d0
      amp2wwt = 0d0
      ampyu = 0d0
      ampyd = 0d0
      n=3d0 !number of initial colour
      dw = 0d0
      ckm = 0d0
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
      if (bflav(4).gt.0) then
c     case one: q(p1),qbar(p2) -> H W- 
         if (bflav(1).gt.0) then
            amp2=bv+ba          
c     case two: qbar(p1),q(p2) -> H W- 
         elseif (bflav(1).lt.0) then
            amp2=bv-ba        
         endif
c     W+ PRODUCTION
      elseif (bflav(4).lt.0) then
c     case one: q(p1),qbar(p2) -> H W+ 
         if (bflav(1).gt.0) then
            amp2=bv-ba         
c     case two: qbar(p1),q(p2) -> H  W+ 
         elseif (bflav(1).lt.0) then
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
c     weak edms      
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
	
	
	
c    right handed currents
c     W- PRODUCTION
	if (bflav(4).gt.0) then
c     case one: q(p1),qbar(p2) -> H W- 
	  if (bflav(1).gt.0) then
	      amp= p14 * p25          
c     case two: qbar(p1),q(p2) -> H W- 
	  elseif (bflav(1).lt.0) then
	      amp= p15* p24    
	  endif
c     W+ PRODUCTION
	elseif (bflav(4).lt.0) then
c     case one: q(p1),qbar(p2) -> H W+ 
	  if (bflav(1).gt.0) then
	      amp= p15 * p24         
c     case two: qbar(p1),q(p2) -> H  W+ 
	  elseif (bflav(1).lt.0) then
	      amp= p25* p14     
	  endif
	endif

	amp2xi = mw**4 * 4 *amp * props1
	
	amp2xi = amp2xi + 8*mw**2*amp*(s - mw**2) * props1
	
	amp2xi = amp2xi + 4 * amp
c     add the couplings gew^4/3d0/vev^4 and the lepton propagator	
	amp2xi = amp2xi * gw**4/vev**2/3d0 * props2



	
	
c     modification of the diagonal W-quark left handed couplings	
	i=bflav(1)
        j=bflav(2)
	if (mod(i,2).eq.0) then
	  dw = - ph_Qphi3(abs(i)/2,(abs(j)+1)/2)
	  ckm =  ph_CKM(abs(i)/2,(abs(j)+1)/2)
	elseif(mod(abs(i),2).eq.1) then
	  dw = - ph_Qphi3(abs(j)/2,(abs(i)+1)/2)
	  ckm =  ph_CKM(abs(j)/2,(abs(i)+1)/2)
	endif
c     W- PRODUCTION
	if (bflav(4).gt.0) then
c     case one: q(p1),qbar(p2) -> H W- 
	  if (bflav(1).gt.0) then
	      damp2 = p15 * p24          
c     case two: qbar(p1),q(p2) -> H W- 
	  elseif (bflav(1).lt.0) then
	      damp2= p14* p25    
	  endif
c     W+ PRODUCTION
	elseif (bflav(4).lt.0) then
c     case one: q(p1),qbar(p2) -> H W+ 
	  if (bflav(1).gt.0) then
	      damp2 = p14 * p25         
c     case two: qbar(p1),q(p2) -> H  W+ 
	  elseif (bflav(1).lt.0) then
	      damp2= p24* p15     
	  endif
	endif
	
	damp2 = damp2 *4/3d0* gw**4* 1/vev**2 *props2 * dw * 
     .	( dw + 2 * mw**2 * (s - mw**2) * props1 * (ckm + dw)  ) 
	

c      non standard Yukawa couplings 

c     W- PRODUCTION
	if (bflav(4).gt.0) then
c     case one: q(p1),qbar(p2) -> H W- 
	  if (bflav(1).gt.0) then
	      ampyu =  p15*(4*p15*p24 - 4*p14*p25 + 2*p14*s 
     .+ 2*p25*s2 - s*s2)/(-2*(p14 + p15) + s2)**2
	      ampyd =  p24*(4*p15*p24 - 4*p14*p25 + 2*p25*s 
     .+ 2*p14*s2 - s*s2)/(-2*(p24 + p25) + s2)**2
c     case two: qbar(p1),q(p2) -> H W- 
	  elseif (bflav(1).lt.0) then
	      ampyu = p25*(-4*p15*p24 + 4*p14*p25 + 2*p24*s 
     .+ 2*p15*s2 - s*s2)/(-2*(p24 + p25) + s2)**2
	      ampyd = p14*(-4*p15*p24 + 4*p14*p25 + 2*p15*s 
     .+ 2*p24*s2 - s*s2)/(-2*(p14 + p15) + s2)**2
	  endif
c     W+ PRODUCTION
	elseif (bflav(4).lt.0) then
c     case one: q(p1),qbar(p2) -> H W+ 
	  if (bflav(1).gt.0) then
	      ampyu = p25*(-4*p15*p24 + 4*p14*p25 + 2*p24*s 
     .+ 2*p15*s2 - s*s2)/(-2*(p24 + p25) + s2)**2
	      ampyd = p14*(-4*p15*p24 + 4*p14*p25 + 2*p15*s 
     .+ 2*p24*s2 - s*s2)/(-2*(p14 + p15) + s2)**2 
c     case two: qbar(p1),q(p2) -> H  W+ 
	  elseif (bflav(1).lt.0) then
	      ampyu = p15*(4*p15*p24 - 4*p14*p25 + 2*p14*s 
     .+ 2*p25*s2 - s*s2)/(-2*(p14 + p15) + s2)**2
	      ampyd = p24*(4*p15*p24 - 4*p14*p25 + 2*p25*s 
     .+ 2*p14*s2 - s*s2)/(-2*(p24 + p25) + s2)**2
	  endif
	endif	
	
	call RGE_s(LambdaNP,rg_s)
	
	yu =  rg_s**2
	yd =  rg_s**2
	
	ampyu = ampyu * props2 * 1/6d0 * gw**4  * yu
	ampyd = ampyd * props2 * 1/6d0 * gw**4  * yd	
	
	

c     phid phi WW and phid phi tildeW W couplings 
c     W- PRODUCTION
	if (bflav(4).gt.0) then
c     case one: q(p1),qbar(p2) -> H W- 
	  if (bflav(1).gt.0) then
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
	  elseif (bflav(1).lt.0) then
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
	elseif (bflav(4).lt.0) then
c     case one: q(p1),qbar(p2) -> H W+ 
	  if (bflav(1).gt.0) then
	      call LeviCivita(p(:,1),p(:,2),p(:,5),p(:,4),eps)
	      amp2ww = ph_cww * 2d0/3d0 * mw**2 *(p25 + p14) * (
     $	      4d0*p25*p14 - 4d0* p24* p15 + s *s2) 
	      amp2ww = amp2ww +  1/3d0 * ph_cww**2 *
     $	      (16d0 * (p25 * p14 - p24 * p15)**2 + s**2 * s2**2 + 
     $         4d0*(p25**2 + p14**2 - 2d0*p24*p15)* s *s2 )
     	      amp2ww = amp2ww + eps * ph_cwwt * 1/3d0 * mw**2 * 
     $        (-16d0 * (p25+p14) )
	      amp2ww = amp2ww -   4/3d0 * ph_cwwt**2 *
     $	      (16d0 * (p25 * p14 - p24 * p15)**2 + s**2 * s2**2 - 
     $         4d0*(p25**2 + p14**2 + 2d0*p24*p15)* s *s2 )
c     case two: qbar(p1),q(p2) -> H  W+ 
	  elseif (bflav(1).lt.0) then
	      call LeviCivita(p(:,2),p(:,1),p(:,5),p(:,4),eps)
	      amp2ww =ph_cww * 2d0/3d0 * mw**2 *(p15 + p24)* (
     $           4d0*p15*p24 - 4d0*p14*p25 + s*s2)
	      amp2ww = amp2ww  +  1/3d0* ph_cww**2 * 
     $	      (16d0 * (p15*p24 - p14*p25)**2 +  s**2*s2**2
     $        + 4d0 * (p15**2 + p24**2 - 2d0*p14*p25)*s*s2 )
	      amp2ww = amp2ww + eps * ph_cwwt * 1/3d0 * mw**2 * 
     $        (-16d0 * (p15+p24) )
	      amp2ww = amp2ww  -  4/3d0* ph_cwwt**2 * 
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
	i=bflav(1)
        j=bflav(2)
      
      
      born=amp2*props
c     CKM matrix
c     coupling constants and W mass for the SM piece
c     factor gw^2/8 from each weak vertex: two vertices, gw^4/64
c     factor 4mw^4/v^2 from Higgs vertex; but v^2 = 4mw^2/gw^2
c     from Higgs vertex: mw^2 gw^2
c     When dim. 6 are present, for the Higgs coupling use 4 * mw^4/v^2
c
      born=born* (gw**2/8d0) * (gw**2/8d0) * (4d0*mw**4/vev**2)      

c     add CKM and dim. 6 couplings             
      if (mod(i,2).eq.0) then
         born=born*( ph_CKM(abs(i)/2,(abs(j)+1)/2) + dw)**2 
     .	    + amp2u*( ph_ReGUw(abs(i)/2,(abs(j)+1)/2)**2 
     .              + ph_ImGUw(abs(i)/2,(abs(j)+1)/2)**2 ) 
     .      + amp2d*( ph_ReGDw(abs(i)/2,(abs(j)+1)/2)**2 
     .              + ph_ImGDw(abs(i)/2,(abs(j)+1)/2)**2 )
     .      + amp2xi*(ph_ReXi(abs(i)/2,(abs(j)+1)/2)**2 
     .              + ph_ImXi(abs(i)/2,(abs(j)+1)/2)**2  ) 
     .	    + damp2 + amp2ww * ( ph_CKM(abs(i)/2,(abs(j)+1)/2) )**2
     .	    + ampyu*( ph_ReYu(abs(i)/2,(abs(j)+1)/2)**2 
     .              + ph_ImYu(abs(i)/2,(abs(j)+1)/2)**2 )  
     .	    + ampyd*( ph_ReYd(abs(i)/2,(abs(j)+1)/2)**2 
     .              + ph_ImYd(abs(i)/2,(abs(j)+1)/2)**2 )
      elseif (mod(abs(i),2).eq.1) then   
         born=born*( ph_CKM(abs(j)/2,(abs(i)+1)/2) + dw)**2 
     .      + amp2u*( ph_ReGUw(abs(j)/2,(abs(i)+1)/2)**2 
     .              + ph_ImGUw(abs(j)/2,(abs(i)+1)/2)**2 ) 
     .      + amp2d*( ph_ReGDw(abs(j)/2,(abs(i)+1)/2)**2 
     .              + ph_ImGDw(abs(j)/2,(abs(i)+1)/2)**2 )
     .	    + amp2xi*(ph_ReXi(abs(j)/2,(abs(i)+1)/2)**2 
     .              + ph_ImXi(abs(j)/2,(abs(i)+1)/2)**2  )
     .	    + damp2 + amp2ww * ( ph_CKM(abs(j)/2,(abs(i)+1)/2))**2
     .	    + ampyu*( ph_ReYu(abs(j)/2,(abs(i)+1)/2)**2 
     .              + ph_ImYu(abs(j)/2,(abs(i)+1)/2)**2 )  
     .	    + ampyd*( ph_ReYd(abs(j)/2,(abs(i)+1)/2)**2 
     .              + ph_ImYd(abs(j)/2,(abs(i)+1)/2)**2 ) 
      endif
c

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

c     spin correlated born amplitude
      do j=1,nlegborn
         do mu=0,3
            do nu=0,3
               bmunu(mu,nu,j)=0d0
            enddo
         enddo
      enddo
      end



c$$$      subroutine pconj(p,n)
c$$$      implicit none
c$$$      real * 8 p(0:3,n)
c$$$      integer n,j,mu
c$$$      do j=1,n
c$$$         do mu=1,3
c$$$            p(mu,j)=-p(mu,j)
c$$$         enddo
c$$$      enddo
c$$$      end
c$$$
c$$$      subroutine borncolour_lh
c$$$c Wrapper subroutine to call the MadGraph code to associate
c$$$c a (leading) color structure to an event.
c$$$      implicit none
c$$$      include 'nlegborn.h'
c$$$      include 'LesHouches.h'
c$$$      integer bflav(nlegborn),color(2,nlegborn)
c$$$      integer i,j,itmp
c$$$
c$$$      integer idvecbos,vdecaymode
c$$$      common/cvecbos/idvecbos,vdecaymode
c$$$
c$$$      do i=1,nlegborn
c$$$         bflav(i)=idup(i)
c$$$         if (bflav(i).eq.21) bflav(i)=0
c$$$      enddo
c$$$
c$$$      if(idvecbos.eq.-24) then
c$$$         call cconj(bflav,nlegborn)
c$$$      endif
c$$$
c$$$      call born_color(bflav,color)
c$$$
c$$$c      write(*,*) 'color'
c$$$c      write(*,*) (color(1,i),i=1,nlegborn)
c$$$c      write(*,*) (color(2,i),i=1,nlegborn)
c$$$
c$$$      if(idvecbos.eq.-24) then
c$$$         call cconj(bflav,nlegborn)
c$$$         do j=1,nlegborn
c$$$            itmp = color(1,j)
c$$$            color(1,j) = color(2,j)
c$$$            color(2,j) = itmp
c$$$         enddo
c$$$      endif
c$$$
c$$$      do i=1,2
c$$$         do j=1,nlegborn
c$$$            icolup(i,j)=color(i,j)
c$$$         enddo
c$$$      enddo
c$$$
c$$$      call borncolour_lh_tmp      
c$$$
c$$$      do i=1,2
c$$$         do j=1,nlegborn     
c$$$            if (color(i,j).ne.0) then
c$$$               write(*,*) icolup(i,j)/color(i,j)
c$$$            endif
c$$$         enddo
c$$$      enddo
c$$$
c$$$
c$$$      end
c$$$


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
       implicit none
       integer id5,id6
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface.
c     
c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode

      call add_resonance(idvecbos,4,5)

c     fix here the W decay mode
      id5=vdecaymode
      id6=-vdecaymode + sign(1,idvecbos) 
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
      