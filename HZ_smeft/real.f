      subroutine setreal(p,rflav,amp2)
      implicit none
      real*8 dotp
      external dotp
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real *8 p(0:3,nlegreal),amp2, amp2edm, damp2
      real *8 amp2vvtilde, amp2vv, amp2yuk
      real *8 pp(0:3,nlegreal), pp2(0:3,nlegreal)
      integer rflav(nlegreal)

      amp2=0d0
      amp2edm = 0d0
      amp2vv = 0d0
      amp2vvtilde = 0d0
      amp2yuk =0d0
      pp=p
      
      if(rflav(4).lt.0)then
         call swap_momenta(pp(:,4),pp(:,5))
      endif

      if (rflav(1).gt.0.and.rflav(2).eq.0) then
         call swap_momenta_minus(pp(:,2),pp(:,6))

      elseif (rflav(1).eq.0.and.rflav(2).lt.0) then
         call swap_momenta_minus(pp(:,1),pp(:,6))

      elseif (rflav(1).lt.0.and.rflav(2).gt.0) then
         call swap_momenta(pp(:,1),pp(:,2))

      elseif (rflav(1).lt.0.and.rflav(2).eq.0) then
         call swap_momenta_minus(pp(:,2),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))

      elseif (rflav(1).eq.0.and.rflav(2).gt.0) then
         call swap_momenta_minus(pp(:,1),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))
      endif

      
      call real_sqamp(pp,rflav,amp2)
      
      if(wdm) then
	call real_sqamp_edm(pp,rflav,amp2edm)
	call real_sqamp_delta(pp,rflav,damp2)
	call real_sqamp_vvtilde(pp,rflav,amp2vvtilde)
	call real_sqamp_vv(pp,rflav,amp2vv)
	call real_sqamp_yuk(pp,rflav,amp2yuk)
      endif
      
      
      amp2 = amp2 + amp2edm + damp2 + amp2vv + amp2vvtilde +amp2yuk
      
      end


      subroutine swap_momenta(p1,p2)
      implicit none
      real * 8 p1(0:3),p2(0:3),tmp(0:3)

      tmp=p1
      p1=p2
      p2=tmp
      end
c
      subroutine swap_momenta_minus(p1,p2)
      implicit none
      real * 8 p1(0:3),p2(0:3)

      call swap_momenta(p1,p2)
      p1=-p1
      p2=-p2
      end
c


c     computes the total squared amplitude of the real diagram,
c     with all the coefficients
      subroutine real_sqamp(pp,rflav,amp2)
      implicit none
      external dotp
      real* 8 dotp
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal)
      integer rflav(nlegreal),i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props
      real * 8 gw,colfac,couplz,AL,VL,AQ,VQ,chargeQ,chargeL,T3L,T3Q
      real * 8 s1,s2,s3,s4,s5,s6,s7,s8,s9,s10
      real * 8 zql, zqr, vev
      
      n=3
      gw=ph_geff
      vev = ph_vev
      couplz = ph_gcweff/2d0
c
c     vectorial and axial couplings to Z boson
      if (mod(abs(rflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(rflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (rflav(6).eq.0) then
         if (mod(abs(rflav(1)),2).eq.0) then
c     UP TYPE QUARK
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
            i = abs(rflav(1))/2
            j = abs(rflav(2))/2
	    zql   = 1/2d0 * ph_QphiU(i,j)
	    zqr   = 1/2d0 * ph_Uphi (i,j)
         elseif (mod(abs(rflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
            i = (abs(rflav(1))+1)/2
            j = (abs(rflav(2))+1)/2
            zql   = 1/2d0 * ph_QphiD(i,j)
	    zqr   =1/2d0* ph_Dphi(i,j)
         endif
      else
         if (mod(abs(rflav(6)),2).eq.0) then
c     UP TYPE QUARK
            i = abs(rflav(6))/2
            if(abs(rflav(1)).eq.0) then
	      j = abs(rflav(2))/2
	    else 
	      j = abs(rflav(1))/2
	    endif  
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
	    zql   = 1/2d0 * ph_QphiU(i,j) 
	    zqr   = 1/2d0 * ph_Uphi (i,j)
         elseif (mod(abs(rflav(6)),2).eq.1) then
c     DOWN TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
            i = (abs(rflav(6))+1)/2
            if(abs(rflav(1)).eq.0) then
	      j = (abs(rflav(2))+1)/2
	    else 
	      j = (abs(rflav(1))+1)/2
            endif
            zql   = 1/2d0 * ph_QphiD(i,j)
	    zqr   =1/2d0* ph_Dphi(i,j)

         endif
      endif

      VL = T3L - 2*chargeL*ph_sthw**2
      AL = -T3L
      VQ = T3Q - 2*chargeQ*ph_sthw**2
      AQ = -T3Q
c     make sure not to introduce a fcnc piece in the SM 
      if(i.ne.j) then
	VQ = 1d-20
	AQ = 1d-20
	chargeQ = 1d-20
      endif
c     add anomalous couplings      
      if(wdm) then 
	VQ = VQ + (zqr + zql)
        AQ = AQ + (zqr - zql)
      endif
      
      
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

      s3 = -16/p26/p16
      s6 = 6*p26*p14**2-4*p12**2*p24+2*p12*p14*p46-6*p24*p16**2+2*p12**2
     #*p46-2*p24*p26*p14-p14*p16*p33+4*p24*p26*p12-p26*p14*p33-2*p26*p14
     #*p36-2*p26*p14*p34-2*p14*p16*p34+2*p14*p16*p13-2*p12*p24*p36-2*p12
     #*p24*p46+2*p12*p14*p36+2*p46*p16*p14-2*p12*p14*p16+p26*p46*p33+2*p
     #26*p46*p36+2*p26*p46*p34-2*p26*p46*p13-4*p26*p46*p14-2*p26*p46*p16
     #+2*p24*p16*p33+4*p24*p16*p36+4*p24*p16*p46
      s5 = 4*p24*p16*p34-6*p24*p16*p13-6*p24*p16*p14+8*p24*p16*p12+6*p26
     #*p14*p13+4*p26*p14*p16+2*p14**2*p16+2*p26*p46**2-2*p24*p26**2+s6+2
     #*p46*p16**2-4*p12*p14**2-2*p12*p46**2-2*p12*p14*p26+2*p46*p16*p13-
     #2*p46*p16*p12+4*p12*p24*p13+4*p12*p24*p14+2*p24*p26*p36+2*p24*p26*
     #p46-4*p24*p26*p16+2*p12*p14*p33+4*p12*p14*p34-4*p12*p14*p13-p12*p4
     #6*p33-2*p12*p46*p36-2*p12*p46*p34-2*p24*p26*p13
      s6 = VQ**2*AL**2
      s4 = s5*s6
      s2 = s3*s4
      s4 = -16/p26/p16
      s7 = 6*p26*p14**2-4*p12**2*p24+2*p12*p14*p46-6*p24*p16**2+2*p12**2
     #*p46-2*p24*p26*p14-p14*p16*p33+4*p24*p26*p12-p26*p14*p33-2*p26*p14
     #*p36-2*p26*p14*p34-2*p14*p16*p34+2*p14*p16*p13-2*p12*p24*p36-2*p12
     #*p24*p46+2*p12*p14*p36+2*p46*p16*p14-2*p12*p14*p16+p26*p46*p33+2*p
     #26*p46*p36+2*p26*p46*p34-2*p26*p46*p13-4*p26*p46*p14-2*p26*p46*p16
     #+2*p24*p16*p33+4*p24*p16*p36+4*p24*p16*p46
      s6 = 4*p24*p16*p34-6*p24*p16*p13-6*p24*p16*p14+8*p24*p16*p12+6*p26
     #*p14*p13+4*p26*p14*p16+2*p14**2*p16+2*p26*p46**2-2*p24*p26**2+s7+2
     #*p46*p16**2-4*p12*p14**2-2*p12*p46**2-2*p12*p14*p26+2*p46*p16*p13-
     #2*p46*p16*p12+4*p12*p24*p13+4*p12*p24*p14+2*p24*p26*p36+2*p24*p26*
     #p46-4*p24*p26*p16+2*p12*p14*p33+4*p12*p14*p34-4*p12*p14*p13-p12*p4
     #6*p33-2*p12*p46*p36-2*p12*p46*p34-2*p24*p26*p13
      s7 = AQ**2*VL**2
      s5 = s6*s7
      s3 = s4*s5
      s1 = s2+s3
      s3 = s1
      s6 = 64/p26
      s8 = 1/p16
      s10 = 2*p26*p14**2+4*p12*p46*p13+4*p12**2*p24+6*p12*p14*p46+2*p24*
     #p16**2-2*p12**2*p46+2*p24*p26*p14-p14*p16*p33-4*p24*p26*p12-p26*p1
     #4*p33-2*p26*p14*p36-2*p26*p14*p34-2*p14*p16*p34+2*p14*p16*p13+2*p1
     #2*p24*p36+2*p12*p24*p46+2*p12*p14*p36-2*p46*p16*p14-2*p12*p14*p16+
     #p26*p46*p33+2*p26*p46*p36+2*p26*p46*p34-2*p26*p46*p13-4*p26*p46*p1
     #4-2*p26*p46*p16
      s9 = 2*p24*p16*p13+2*p24*p16*p14-8*p24*p16*p12+2*p26*p14*p13+2*p14
     #**2*p16+2*p26*p46**2+2*p24*p26**2-2*p46*p16**2-4*p12*p14**2-2*p12*
     #p46**2+s10+2*p12*p14*p26-2*p46*p16*p13+6*p46*p16*p12-4*p12*p24*p13
     #-4*p12*p24*p14-2*p24*p26*p36-2*p24*p26*p46+4*p24*p26*p16+2*p12*p14
     #*p33+4*p12*p14*p34-4*p12*p14*p13-p12*p46*p33-2*p12*p46*p36-2*p12*p
     #46*p34+2*p24*p26*p13
      s7 = s8*s9
      s5 = s6*s7
      s6 = VL*AL*VQ*AQ
      s4 = s5*s6
      s2 = s3+s4
      s3 = s2
      s6 = -16/p26/p16
      s9 = 6*p26*p14**2-4*p12**2*p24+2*p12*p14*p46-6*p24*p16**2+2*p12**2
     #*p46-2*p24*p26*p14-p14*p16*p33+4*p24*p26*p12-p26*p14*p33-2*p26*p14
     #*p36-2*p26*p14*p34-2*p14*p16*p34+2*p14*p16*p13-2*p12*p24*p36-2*p12
     #*p24*p46+2*p12*p14*p36+2*p46*p16*p14-2*p12*p14*p16+p26*p46*p33+2*p
     #26*p46*p36+2*p26*p46*p34-2*p26*p46*p13-4*p26*p46*p14-2*p26*p46*p16
     #+2*p24*p16*p33+4*p24*p16*p36+4*p24*p16*p46
      s8 = 4*p24*p16*p34-6*p24*p16*p13-6*p24*p16*p14+8*p24*p16*p12+6*p26
     #*p14*p13+4*p26*p14*p16+2*p14**2*p16+2*p26*p46**2-2*p24*p26**2+2*p4
     #6*p16**2-4*p12*p14**2-2*p12*p46**2+s9-2*p12*p14*p26+2*p46*p16*p13-
     #2*p46*p16*p12+4*p12*p24*p13+4*p12*p24*p14+2*p24*p26*p36+2*p24*p26*
     #p46-4*p24*p26*p16+2*p12*p14*p33+4*p12*p14*p34-4*p12*p14*p13-p12*p4
     #6*p33-2*p12*p46*p36-2*p12*p46*p34-2*p24*p26*p13
      s9 = VQ**2*VL**2
      s7 = s8*s9
      s5 = s6*s7
      s7 = -16/p26/p16
      s10 = 6*p26*p14**2-4*p12**2*p24+2*p12*p14*p46-6*p24*p16**2+2*p12**
     #2*p46-2*p24*p26*p14-p14*p16*p33+4*p24*p26*p12-p26*p14*p33-2*p26*p1
     #4*p36-2*p26*p14*p34-2*p14*p16*p34+2*p14*p16*p13-2*p12*p24*p36-2*p1
     #2*p24*p46+2*p12*p14*p36+2*p46*p16*p14-2*p12*p14*p16+p26*p46*p33+2*
     #p26*p46*p36+2*p26*p46*p34-2*p26*p46*p13-4*p26*p46*p14-2*p26*p46*p1
     #6+2*p24*p16*p33+4*p24*p16*p36+4*p24*p16*p46
      s9 = 4*p24*p16*p34-6*p24*p16*p13-6*p24*p16*p14+8*p24*p16*p12+6*p26
     #*p14*p13+4*p26*p14*p16+2*p14**2*p16+2*p26*p46**2-2*p24*p26**2+2*p4
     #6*p16**2-4*p12*p14**2-2*p12*p46**2+s10-2*p12*p14*p26+2*p46*p16*p13
     #-2*p46*p16*p12+4*p12*p24*p13+4*p12*p24*p14+2*p24*p26*p36+2*p24*p26
     #*p46-4*p24*p26*p16+2*p12*p14*p33+4*p12*p14*p34-4*p12*p14*p13-p12*p
     #46*p33-2*p12*p46*p36-2*p12*p46*p34-2*p24*p26*p13
      s10 = AQ**2*AL**2
      s8 = s9*s10
      s6 = s7*s8
      s4 = s5+s6
      t0 = s3+s4

c     COLOUR FACTORS AND QUARK-GLUON SWITCH
c     colour factors: CF*n from sum over initial colours, 1/4 from
c     average over initial spins, 1/n from average over quark colours
c     and 1/(n^2-1) from average over gluon colours
      if(.not.rflav(6).eq.0) then
         amp2=-1d0   !quark-gluon switch
         colfac=CF*n/4d0/n/(n**2-1d0)
      else
         amp2=1d0   !no quark-gluon switch
         colfac=CF*n/4d0/n**2
      endif

      amp2=amp2*colfac*t0

c     coupling constants and Z mass
c     factor couplz^2 from each weak vertex: two vertices, couplz^4
c     factor 4mz^4/v^2 from Higgs vertex; but v^2 = 4mw^2/gw^2
c     from Higgs vertex: mz^4 gw^2/mw^2
c     from strong vertex: 4*pi*st_alpha, strip off st_alpha/(2*Pi)
      amp2=amp2*(couplz)**2*(couplz)**2*(4d0*ph_Zmass2**2/vev**2)
     $     *(8*Pi**2)

c     Z propagators

      props = 1/((-2*p26-2*p16+2*p12-ph_Zmass2)**2+ph_ZmZw**2)/((-2*p46-
     #2*p34+2*p14+2*p24-ph_Zmass2)**2+ph_ZmZw**2)

      amp2=amp2*props

      end


c     EDM contribution to HZ  
c     computes the total squared amplitude of the real diagram,
c     with all the coefficients
      subroutine real_sqamp_edm(pp,rflav,amp2)
      implicit none
      external dotp
      real* 8 dotp
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal)
      integer rflav(nlegreal),i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props
      real * 8 p15,p25,p35,p45,p56
      real * 8 gw,colfac,couplz,AL,VL,AQ,VQ,chargeQ,chargeL,T3L,T3Q
      real * 8 props1, props2
      real * 8 s, s2, tk, uk, vev, rg
      real * 8 zdmRe_1, zdmIm_1, edmRe_1, edmIm_1
      real * 8 zdmRe_2, zdmIm_2, edmRe_2, edmIm_2, cw2, mz
      real * 8 amp2e, amp2i

      amp2 = 0d0
      
      gw=ph_geff
      ph_cthw = sqrt(1-ph_sthw**2)
      couplz = ph_gcweff/(2d0)
      cw2 = ph_cthw**2
      vev = ph_vev
      mz = ph_Zmass
c
c     vectorial and axial couplings to Z boson
      if (mod(abs(rflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(rflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (rflav(6).eq.0) then
         if (mod(abs(rflav(1)),2).eq.0) then
c     UP TYPE QUARK
            i = abs(rflav(1))/2
            j = abs(rflav(2))/2
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
	    zdmRe_1 = 	    ph_ReGUw(i,j) 
     .	       - ph_sthw2 * ph_ReGUe(i,j)
	    edmRe_1 = 	    ph_ReGUe(i,j)
	    zdmIm_1 = 	    ph_ImGUw(i,j)
     .	       - ph_sthw2 * ph_ImGUe(i,j)
	    edmIm_1 = 	    ph_ImGUe(i,j)
	    zdmRe_2 = 	    ph_ReGUw(j,i)
     .	       - ph_sthw2 * ph_ReGUe(j,i)
	    edmRe_2 = 	    ph_ReGUe(j,i)
	    zdmIm_2 = 	    ph_ImGUw(j,i) 
     .	       - ph_sthw2 * ph_ImGUe(j,i)
	    edmIm_2 = 	    ph_ImGUe(j,i)
         elseif (mod(abs(rflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
            i = (abs(rflav(1))+1)/2
            j = (abs(rflav(2))+1)/2
	    chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
	    zdmRe_1 = 	    - ph_ReGDw(i,j) 
     .	       -   ph_sthw2 * ph_ReGDe(i,j)
	    edmRe_1 = 	      ph_ReGDe(i,j)
	    zdmIm_1 = 	    - ph_ImGDw(i,j)
     .	       -   ph_sthw2 * ph_ImGDe(i,j)
	    edmIm_1 = 	      ph_ImGDe(i,j)
	    zdmRe_2 = 	    - ph_ReGDw(j,i)
     .	       -   ph_sthw2 * ph_ReGDe(j,i)
	    edmRe_2 = 	      ph_ReGDe(j,i)
	    zdmIm_2 = 	    - ph_ImGDw(j,i)
     .	       -   ph_sthw2 * ph_ImGDe(j,i)
	    edmIm_2 = 	      ph_ImGDe(j,i)
         endif
      else
         if (mod(abs(rflav(6)),2).eq.0) then
c     UP TYPE QUARK
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
	    i = abs(rflav(6))/2
            if(abs(rflav(1)).eq.0) then
	      j = abs(rflav(2))/2
	    else 
	      j = abs(rflav(1))/2
	    endif  
            zdmRe_1 = 	    ph_ReGUw(i,j)
     .	       - ph_sthw2 * ph_ReGUe(i,j)
	    edmRe_1 = 	    ph_ReGUe(i,j)
	    zdmIm_1 = 	    ph_ImGUw(i,j)
     .	       - ph_sthw2 * ph_ImGUe(i,j) 
	    edmIm_1 = 	    ph_ImGUe(i,j)
	    zdmRe_2 = 	    ph_ReGUw(j,i)
     .	       - ph_sthw2 * ph_ReGUe(j,i)
	    edmRe_2 = 	    ph_ReGUe(j,i)
	    zdmIm_2 = 	    ph_ImGUw(j,i)
     .	       - ph_sthw2 * ph_ImGUe(j,i)
	    edmIm_2 = 	    ph_ImGUe(j,i)
         elseif (mod(abs(rflav(6)),2).eq.1) then
c     DOWN TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
	    i = (abs(rflav(6))+1)/2
            if(abs(rflav(1)).eq.0) then
	      j = (abs(rflav(2))+1)/2
	    else 
	      j = (abs(rflav(1))+1)/2
	    endif  
            zdmRe_1 = 	    - ph_ReGDw(i,j) 
     .	       -   ph_sthw2 * ph_ReGDe(i,j) 
	    edmRe_1 = 	      ph_ReGDe(i,j) 
	    zdmIm_1 = 	    - ph_ImGDw(i,j) 
     .	       -   ph_sthw2 * ph_ImGDe(i,j) 
	    edmIm_1 = 	      ph_ImGDe(i,j) 
	    zdmRe_2 = 	    - ph_ReGDw(j,i) 
     .	       -   ph_sthw2 * ph_ReGDe(j,i)
	    edmRe_2 = 	      ph_ReGDe(j,i)
	    zdmIm_2 = 	    - ph_ImGDw(j,i)
     .	       -   ph_sthw2 * ph_ImGDe(j,i)
	    edmIm_2 = 	      ph_ImGDe(j,i)
         endif
      endif

      VL = T3L - 2*chargeL*ph_sthw**2
      AL = -T3L
      VQ = T3Q - 2*chargeQ*ph_sthw**2
      AQ = -T3Q

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
      
c     Z propagators
c     s propagator
      props1 = 1d0/((s + tk + uk -mz**2)**2+ph_Zwidth**2*mz**2)
c     Z to lepton decay     
      props2 = 1d0/((s2-mz**2)**2+ph_Zwidth**2*mz**2)
            
      amp2 = -4d0*s2*(p24*p46*s - p46**2*s + p25*p56*s - p56**2*s 
     .+ p24**2*tk + p25**2*tk - p24*p46*tk - p25*p56*tk 
     .+ p14**2*uk + p15**2*uk + p24*p46*uk + p25*p56*uk 
     .- p14*(-(p46*(s + tk - uk)) + p24*(2*s + tk + uk)) 
     .- p15*(-(p56*(s + tk - uk)) + p25*(2*s + tk + uk)))
     
      amp2 = amp2 +  2d0*mz**4 * props1 * (
     .+ 8*p24*p25*s**2 - 8*p46*p56*s**2 + 2*s**3*s2 + 24*p24*p25*s*tk 
     .-12*p25*p46*s*tk - 12*p24*p56*s*tk + 4*s**2*s2*tk 
     .+ 12*p24*p25*tk**2 - 8*p25*p46*tk**2 - 8*p24*p56*tk**2 
     .+ 4*p46*p56*tk**2 + 3*s*s2*tk**2 + s2*tk**3 - 4*p15*(s + tk)*(
     .-(p46*tk) + 2*p24*(s + tk)) - 4*p15*(p46*(3*s - tk) + 4*p24*(s 
     .+ tk))*uk + (4*s**2*s2 - 8*p46*p56*tk + 2*s*s2*tk - s2*tk**2 
     .+ 4*p25*p46*(s + tk) + 4*p24*(p56*(s + tk) + 2*p25*(s 
     .+ 2*tk)))*uk - 8*p15*(p24 + p46)*uk**2 + (4*(p24 + p46)*(p25  
     .+ p56) + s2*(3*s - tk))*uk**2 + s2*uk**3 + 4*p14*(-2*p25*(s + tk 
     .+ uk)**2 + p56*(s*tk + tk**2 - 3*s*uk + tk*uk - 2*uk**2) 
     .+ p15*(2*s**2 + 2*s*(tk + 3*uk) + (tk + uk)*(tk + 3*uk))) )
      
      amp2 =amp2 -  2d0*mz**2 * props1 * (s + tk + uk -mz**2) *(
     .  4*p24*p25*p46*s - 4*p25**2*p46*s - 4*p25*p46**2*s 
     .- 4*p24**2*p56*s +4*p24*p25*p56*s + 4*p24*p46*p56*s 
     .+ 4*p25*p46*p56*s - 4*p24*p56**2*s - 2*p24*s**2*s2 
     .- 2*p25*s**2*s2 + 2*p46*s**2*s2 + 2*p56*s**2*s2+ 4*p24*p25*p46*tk 
     .- 4*p25**2*p46*tk - 4*p25*p46**2*tk - 4*p24**2*p56*tk 
     .+ 4*p24*p25*p56*tk + 4*p24*p46*p56*tk + 4*p25*p46*p56*tk 
     .- 4*p24*p56**2*tk - 2*p24*s*s2*tk - 2*p25*s*s2*tk + 3*p46*s*s2*tk 
     .+ 3*p56*s*s2*tk + p46*s2*tk**2 + p56*s2*tk**2 + (-4*p25**2*p46 
     .- 4*p24**2*p56 + (p46 + p56)*s2*(3*s - 2*tk) + p25*(4*p46*(p46 
     .- p56) + s2*(-2*s + tk)) + p24*(4*p56*(-p46 + p56) + 4*p25*(p46 
     .+ p56) + s2*(-2*s + tk)))*uk + (-p24 - p25 + p46 + p56)*s2*uk**2 
     .+ 4*p15**2*(-(p46*(s + tk + uk)) + p24*(2*s + tk + 3*uk)) 
     .+ 4*p14**2*(-(p56*(s + tk + uk)) + p25*(2*s + tk + 3*uk)) 
     .- p14*(8*p24*p25*s - 8*p25**2*s + 4*p25*p46*s - 8*p24*p56*s 
     .+ 4*p25*p56*s - 4*p46*p56*s + 4*p56**2*s + 2*s**2*s2 
     .+ 12*p24*p25*tk - 12*p25**2*tk - 8*p25*p46*tk - 8*p24*p56*tk 
     .+ 16*p25*p56*tk + 4*p46*p56*tk - 4*p56**2*tk + 2*s*s2*tk 
     .+ s2*tk**2 + (4*(p25*(p24 - p25 + 4*p46) - (2*(p24 + p25) 
     .+ p46)*p56 + p56**2) + s2*(2*s - tk))*uk + 4*p15*(-((p46 
     .+ p56)*(s + tk + uk)) + p24*(2*s + tk + 3*uk) + p25*(2*s + tk 
     .+ 3*uk))) + p15*(-4*p46**2*s + 4*p46*p56*s - 2*s**2*s2 
     .+ 4*p46**2*tk - 4*p46*p56*tk - 2*s*s2*tk - s2*tk**2 
     .- 4*p46**2*uk + 4*p46*p56*uk - 2*s*s2*uk + s2*tk*uk 
     .+ 8*p25*p46*(s + tk + uk) + 4*p24**2*(2*s + 3*tk + uk) 
     .- 4*p24*(p46*(s + 4*tk - 2*uk) + p25*(2*s + 3*tk + uk) 
     .+ p56*(s - 2*tk + 4*uk)))  )
      
      
     
      amp2=amp2 * props2 * 1/3d0 * 1/( tk * uk )  
      
      
c
c     coupling constants and Z mass
c     factor couplz^2 from each weak vertex: two vertices, couplz^4
c     factor 4mz^4/v^2 from Higgs vertex; but v^2 = 4mw^2/gw^2
c     from Higgs vertex: mz^4 gw^2/mw^2
      amp2=amp2 * (VL**2 + AL**2) /vev**4 * (2d0 * couplz)**4
c     dim. 6 couplings 		    
      amp2 = amp2 *1/2d0* (zdmIm_1**2 + zdmRe_1**2
     . 	                 + zdmIm_2**2 + zdmRe_2**2 ) 
      

c     EDM 
      amp2e = -16*(p24*p46*s - p46**2*s + p25*p56*s - p56**2*s 
     .+ p24**2*tk + p25**2*tk - p24*p46*tk - p25*p56*tk + p14**2*uk 
     .+ p15**2*uk + p24*p46*uk + p25*p56*uk - p14*(-(p46*(s + tk - uk)) 
     .+ p24*(2*s + tk + uk)) - p15*(-(p56*(s + tk - uk)) 
     .+ p25*(2*s + tk + uk))) 

      amp2e = amp2e/(3d0 * s2 * tk * uk) 
      
      amp2e = amp2e *
     . 1/2d0*(edmIm_1**2 + edmRe_1**2 + edmIm_2**2 + edmRe_2**2)
     .*(ph_unit_e)**4/vev**4*chargeL**2

      amp2 = amp2 + amp2e
      
      
c     Interference
      amp2i = 8*(s2 - ph_Zmass2)*( p24*p46*s - p46**2*s + p25*p56*s 
     .- p56**2*s + p24**2*tk + p25**2*tk - p24*p46*tk - p25*p56*tk 
     .+ p14**2*uk + p15**2*uk + p24*p46*uk + p25*p56*uk - p14*(-(p46*(s 
     .+ tk - uk)) + p24*(2*s + tk + uk)) - p15*(-(p56*(s + tk - uk)) 
     .+ p25*(2*s + tk + uk)))

      amp2i = amp2i + 2 * ph_Zmass2 * props1/s2 * (ph_Zmass2**2 
     .+ s2*(s + tk + uk) - ph_Zmass2*(s2 + s + tk + uk) ) *(
     .  4*p24*p25*p46*s - 4*p25**2*p46*s - 4*p25*p46**2*s 
     .- 4*p24**2*p56*s + 4*p24*p25*p56*s + 4*p24*p46*p56*s 
     .+ 4*p25*p46*p56*s - 4*p24*p56**2*s - 2*p24*s**2*s2 
     .- 2*p25*s**2*s2 + 2*p46*s**2*s2 + 2*p56*s**2*s2 
     .+ 4*p24*p25*p46*tk - 4*p25**2*p46*tk - 4*p25*p46**2*tk 
     .- 4*p24**2*p56*tk + 4*p24*p25*p56*tk + 4*p24*p46*p56*tk 
     .+ 4*p25*p46*p56*tk - 4*p24*p56**2*tk - 2*p24*s*s2*tk 
     .- 2*p25*s*s2*tk + 3*p46*s*s2*tk + 3*p56*s*s2*tk 
     .+ p46*s2*tk**2 + p56*s2*tk**2 + (-4*p25**2*p46 - 4*p24**2*p56 
     .+ (p46 + p56)*s2*(3*s - 2*tk) + p25*(4*p46*(p46 - p56) 
     .+ s2*(-2*s + tk)) + p24*(4*p56*(-p46 + p56) + 4*p25*(p46 + p56) 
     .+ s2*(-2*s + tk)))*uk + (-p24 - p25 + p46 + p56)*s2*uk**2 
     .+ 4*p15**2*(-(p46*(s + tk + uk)) + p24*(2*s + tk + 3*uk)) 
     .+ 4*p14**2*(-(p56*(s + tk + uk)) + p25*(2*s + tk + 3*uk)) 
     .- p14*(8*p24*p25*s - 8*p25**2*s + 4*p25*p46*s - 8*p24*p56*s 
     .+ 4*p25*p56*s - 4*p46*p56*s + 4*p56**2*s + 2*s**2*s2 
     .+ 12*p24*p25*tk - 12*p25**2*tk - 8*p25*p46*tk - 8*p24*p56*tk 
     .+ 16*p25*p56*tk + 4*p46*p56*tk - 4*p56**2*tk + 2*s*s2*tk 
     .+ s2*tk**2 + (4*(p25*(p24 - p25 + 4*p46) - (2*(p24 + p25) 
     .+ p46)*p56 + p56**2) + s2*(2*s - tk))*uk + 4*p15*(-((p46 
     .+ p56)*(s + tk + uk)) + p24*(2*s + tk + 3*uk) + p25*(2*s + tk 
     .+ 3*uk))) + p15*(-4*p46**2*s + 4*p46*p56*s - 2*s**2*s2 
     .+ 4*p46**2*tk - 4*p46*p56*tk - 2*s*s2*tk - s2*tk**2 - 4*p46**2*uk 
     .+ 4*p46*p56*uk - 2*s*s2*uk + s2*tk*uk + 8*p25*p46*(s + tk + uk) 
     .+ 4*p24**2*(2*s + 3*tk + uk) - 4*p24*(p46*(s + 4*tk - 2*uk) 
     .+ p25*(2*s + 3*tk + uk) + p56*(s - 2*tk + 4*uk))) )
      
      
      amp2i = amp2i/(3d0 * tk * uk) * props2
      
      amp2i = amp2i * (ph_unit_e)**2 *(2 * couplz)**2/vev**4 * 
     . 2*VL * chargeL 
     
      amp2i = - amp2i * 1/2d0*(edmIm_1 * zdmIm_1 + edmRe_1 * zdmRe_1 
     . 			      +edmIm_2 * zdmIm_2 + edmRe_2 * zdmRe_2)
	
      amp2 = amp2 + amp2i	  
	
c     add the RGE factor 
      call RGE(LambdaNP,rg)
      amp2 = rg**2 * amp2	

      
	
c     COLOUR FACTORS AND QUARK-GLUON SWITCH
c     colour factors: CF*n from sum over initial colours, 1/4 from
c     average over initial spins, 1/n from average over quark colours
c     and 1/(n^2-1) from average over gluon colours
      if(rflav(6).eq.0) then
         colfac=CF
      else
	  colfac=-1/2d0 
      endif

      
      amp2=amp2*colfac * (8d0 * pi**2)

c include color factors 	      
      
      
      end
      
c     contribution of the modification of the LH and RH couplings of the Z boson to HZ  
c     computes the total squared amplitude of the real diagram,
c     with all the coefficients
      subroutine real_sqamp_delta(pp,rflav,amp2)
      implicit none
      external dotp
      real* 8 dotp
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal)
      integer rflav(nlegreal),i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props
      real * 8 p15,p25,p35,p45,p56
      real * 8 gw,colfac,couplz,AL,VL,AQ,VQ,chargeQ,chargeL,T3L,T3Q
      real * 8 props1, props2
      real * 8 s, s2, tk, uk, vev, rg
      real * 8 cw2, mz, sw
      real * 8 zql, zqr
      
      amp2 = 0d0
      
      gw=ph_geff
      ph_cthw = sqrt(1-ph_sthw**2)
      couplz = ph_gcweff/(2d0)
      cw2 = ph_cthw**2
      sw = ph_sthw
      vev = ph_vev 
      mz = ph_Zmass
c
c     vectorial and axial couplings to Z boson
      if (mod(abs(rflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(rflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (rflav(6).eq.0) then
         if (mod(abs(rflav(1)),2).eq.0) then
c     UP TYPE QUARK
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
            i = abs(rflav(1))/2
            j = abs(rflav(2))/2
	    zql   = 1/2d0 * ph_QphiU(i,j)
	    zqr   = 1/2d0 * ph_Uphi (i,j)
         elseif (mod(abs(rflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
            i = (abs(rflav(1))+1)/2
            j = (abs(rflav(2))+1)/2
            zql   = 1/2d0 * ph_QphiD(i,j)
	    zqr   =1/2d0* ph_Dphi(i,j)
         endif
      else
         if (mod(abs(rflav(6)),2).eq.0) then
c     UP TYPE QUARK
            i = abs(rflav(6))/2
            if(abs(rflav(1)).eq.0) then
	      j = abs(rflav(2))/2
	    else 
	      j = abs(rflav(1))/2
	    endif  
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
	    zql   = 1/2d0 * ph_QphiU(i,j) 
	    zqr   = 1/2d0 * ph_Uphi (i,j)
         elseif (mod(abs(rflav(6)),2).eq.1) then
c     DOWN TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
            i = (abs(rflav(6))+1)/2
            if(abs(rflav(1)).eq.0) then
	      j = (abs(rflav(2))+1)/2
	    else 
	      j = (abs(rflav(1))+1)/2
            endif
            zql   = 1/2d0 * ph_QphiD(i,j)
	    zqr   =1/2d0* ph_Dphi(i,j)

         endif
      endif

      VL = T3L - 2*chargeL*ph_sthw**2
      AL = -T3L
      VQ = T3Q - 2*chargeQ*ph_sthw**2
      AQ = -T3Q 

c     make sure not to introduce a fcnc piece in the SM 
      if(i.ne.j) then
	VQ = 1d-20
	AQ = 1d-20
	chargeQ = 1d-20
      endif

      
      if(wdm) then 
	VQ = VQ + (zqr + zql)
        AQ = AQ + (zqr - zql)
      endif
      
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

c     Z propagators
c     s propagator
      props1 = 1d0/((s + tk + uk -mz**2)**2+ph_Zwidth**2*mz**2)
c     Z to lepton decay     
      props2 = 1d0/((s2-mz**2)**2+ph_Zwidth**2*mz**2)
              
      amp2 = 8/(3d0*tk*uk) * props2/vev**2*       
     .( zqr*( zqr +(VQ + AQ)*(s + tk + uk -mz**2) * mz**2 * props1) 
     . *(-(p25*(p24*(1 - 4*sw**2 + 8*sw**4)*tk + p46*(1 - 2*sw**2)**2*
     .  (s + uk))) + p14*(-(p56*(1 - 2*sw**2)**2*(s + tk)) + p15*(-1 
     . + 4*sw**2 - 8*sw**4)*uk + p25*(1 - 2*sw**2)**2*(2*s + tk + uk)) 
     . + 4*sw**4*(-(p24*p56*(s + uk)) + p15*(-(p46*(s + tk)) 
     . + p24*(2*s + tk + uk))))  + 
     . zql*( zql + (VQ - AQ)*(s + tk + uk -mz**2) * mz**2 * props1)
     . *(-(p24*(p25*(1 - 4*sw**2 + 8*sw**4)*tk + p56*(1 - 2*sw**2)**2*
     .  (s + uk))) + p15*(-(p46*(1 - 2*sw**2)**2*(s + tk)) + p14*(-1 
     . + 4*sw**2 - 8*sw**4)*uk + p24*(1 - 2*sw**2)**2*(2*s + tk + uk)) 
     . + 4*sw**4*(-(p25*p46*(s + uk)) + p14*(-(p56*(s + tk)) 
     . + p25*(2*s + tk + uk)))))    
	
      amp2 = amp2 * gw**4/cw2**2 
	
	
c     COLOUR FACTORS AND QUARK-GLUON SWITCH
c     colour factors: CF*n from sum over initial colours, 1/4 from
c     average over initial spins, 1/n from average over quark colours
c     and 1/(n^2-1) from average over gluon colours
      if(rflav(6).eq.0) then
         colfac=CF
      else
	  colfac=-1/2d0 
      endif

      
      amp2=amp2*colfac * (8d0 * pi**2)

c include color factors 	      
      
      
      end      
      

      
      
c     phi^dagger phi WW operators 
c     computes the total squared amplitude of the real diagram,
c     with all the coefficients
      subroutine real_sqamp_vv(pp,rflav,amp2)
      implicit none
      external dotp
      real* 8 dotp
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal)
      integer rflav(nlegreal),i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props
      real * 8 p15,p25,p35,p45,p56
      real * 8 gw,colfac,couplz,chargeQ,chargeL,T3L,T3Q
      real * 8 props1, props2
      real * 8 s, s2, tk, uk, vev, rg
      real * 8 cw2, mz, sw, cw
      real * 8 zql, zqr, zel, zer, cZZ, cZg, cgg
      real * 8 dzql, dzqr
      real * 8 amp2ll, amp2lr, pre, pre2
      real * 8 amp2ll_2, amp2lr_2, amp2_8
      
      
      amp2 = 0d0
      
      gw=ph_geff
      ph_cthw = sqrt(1-ph_sthw**2)
      couplz = ph_gcweff/2d0
      cw2 = ph_cthw**2
      cw = ph_cthw
      sw = ph_sthw
      vev = ph_vev 
      mz = ph_Zmass
c
c     vectorial and axial couplings to Z boson
      if (mod(abs(rflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(rflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (rflav(6).eq.0) then
         if (mod(abs(rflav(1)),2).eq.0) then
c     UP TYPE QUARK
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
	    i = abs(rflav(1))/2
            j = abs(rflav(2))/2
	    dzql   = 1/2d0 * ph_QphiU(i,j)
	    dzqr   = 1/2d0 * ph_Uphi (i,j)
         elseif (mod(abs(rflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
            i = (abs(rflav(1))+1)/2
            j = (abs(rflav(2))+1)/2
            dzql   = 1/2d0 * ph_QphiD(i,j)
	    dzqr   =1/2d0* ph_Dphi(i,j)

         endif
      else
         if (mod(abs(rflav(6)),2).eq.0) then
c     UP TYPE QUARK
            i = abs(rflav(6))/2
            if(abs(rflav(1)).eq.0) then
	      j = abs(rflav(2))/2
	    else 
	      j = abs(rflav(1))/2
	    endif  
	    chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
	    dzql   = 1/2d0 * ph_QphiU(i,j) 
	    dzqr   = 1/2d0 * ph_Uphi (i,j)
         elseif (mod(abs(rflav(6)),2).eq.1) then
c     DOWN TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
            i = (abs(rflav(6))+1)/2
            if(abs(rflav(1)).eq.0) then
	      j = (abs(rflav(2))+1)/2
	    else 
	      j = (abs(rflav(1))+1)/2
            endif
            dzql   = 1/2d0 * ph_QphiD(i,j)
	    dzqr   =1/2d0* ph_Dphi(i,j)
         endif
      endif

c     define quark and leptons couplings    
      zel = T3L - chargeL*ph_sthw**2
      zer =     - chargeL*ph_sthw**2
      zql = T3Q - chargeQ*ph_sthw**2 
      zqr = 	- chargeQ*ph_sthw**2 
c     make sure not to introduce a fcnc piece in the SM 
      if(i.ne.j) then
	zql = 1d-20
	zqr = 1d-20
	chargeQ = 1d-20
      endif
      zql = zql + dzql
      zqr = zqr + dzqr    

c     dim. 6 couplings 

      cZZ = cw**2 * ph_cww + sw**2 * ph_cbb + cw * sw * ph_cwb
      cgg = sw**2 * ph_cww + cw**2 * ph_cbb - cw * sw * ph_cwb
      cZg = 2*cw*sw * (ph_cww - ph_cbb) - (cw**2 - sw**2) * ph_cwb      
      
      
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

       
c     Z propagators
c     s propagator
      props1 = 1d0/((s + tk + uk -mz**2)**2+ph_Zwidth**2*mz**2)
c     Z to lepton decay     
      props2 = 1d0/((s2-mz**2)**2+ph_Zwidth**2*mz**2)
              
      pre = 8/3d0 * ph_Zmass2 * gw**4/cw2**2/vev**2 * props1 * props2        
      pre2 = 4/3d0 *  gw**4/cw2**2/vev**2
              
              
c     lh lepton, lh quark              
      amp2ll = 2*(4*p24*p25*p46*s - 4*p24**2*p56*s - 4*p25*p46*p56*s 
     .+ 4*p24*p56**2*s + 2*p24*s**2*s2 - p46*s**2*s2 - p56*s**2*s2 
     .+ 4*p24*p25*p46*tk - 4*p25**2*p46*tk - 4*p24**2*p56*tk 
     .+ 4*p24*p25*p56*tk + 3*p24*s*s2*tk - p25*s*s2*tk - 2*p46*s*s2*tk 
     .+ p24*s2*tk**2 - p46*s2*tk**2 + 4*p14**2*(p25 - p56)*uk 
     .+ (-2*(p24 - p56)*(-2*p25*p46 + 2*p24*p56 - s*s2) + (p24 
     .- p25)*s2*tk)*uk + (p24 - p56)*s2*uk**2 + 4*p15**2*(-(p46*(s + tk
     . + uk)) + p24*(2*s + tk + 2*uk)) - p14*(-4*p25**2*tk 
     .+ 4*p24*((2*p25 - p56)*(s + tk) + p25*uk) + (s + tk)*(4*p46*p56 
     .+ s2*uk) - 4*p25*(p46*(s + tk) + p56*(s + uk))) +p15*(4*p25*p46*s 
     .+ 4*p46**2*s + 2*s**2*s2 + 4*p46**2*tk + 2*s*s2*tk + s2*tk**2 
     .+ 4*p25*p46*uk + 3*s*s2*uk + s2*tk*uk + s2*uk**2 + 4*p24**2*(2*(s
     . + tk) + uk) - 4*p24*(p25*tk + 2*p46*(s + tk) + p14*uk + 2*p56*(s
     . + uk)) + 4*p14*(p46*uk + p56*(s + tk + uk) 
     .- p25*(2*s + tk + 2*uk))))/(tk*uk)
     
c     lh lepton, rh quark                   
      amp2lr = 2*(-4*p25**2*p46*s + 4*p25*p46**2*s + 4*p24*p25*p56*s 
     .- 4*p24*p46*p56*s + 2*p25*s**2*s2 - p46*s**2*s2 - p56*s**2*s2 
     .+ 4*p24*p25*p46*tk - 4*p25**2*p46*tk - 4*p24**2*p56*tk 
     .+ 4*p24*p25*p56*tk - p24*s*s2*tk + 3*p25*s*s2*tk - 2*p56*s*s2*tk 
     .+ p25*s2*tk**2 - p56*s2*tk**2 + 4*p15*(p24**2*tk + p46*(p25 
     .- p56)*(s + tk) + p24*((p46 + p56)*s + p56*tk - 2*p25*(s + tk))) 
     .+ 4*p15**2*(p24 - p46)*uk + (-2*(p25 - p46)*(2*p25*p46 -2*p24*p56 
     .- s*s2) + (-p24 + p25)*s2*tk)*uk - p15*(4*p24*(p25 - p46) 
     .+ s2*(s + tk))*uk + (p25 - p46)*s2*uk**2 + 4*p14**2*(-(p56*(s 
     .+ tk + uk)) + p25*(2*s + tk + 2*uk)) + p14*(4*p24*p56*s 
     .+ 4*p56**2*s + 2*s**2*s2 + 4*p56**2*tk + 2*s*s2*tk + s2*tk**2 
     .+ 4*p24*p56*uk + 3*s*s2*uk + s2*tk*uk + s2*uk**2 + 4*p25**2*(2*(s
     . + tk) + uk) - 4*p25*(p24*tk + 2*p56*(s + tk) + 2*p46*(s + uk)) 
     .+ 4*p15*(p46*(s + tk) + (-p25 + p46 + p56)*uk - p24*(2*s + tk 
     .+ 2*uk))))/(tk*uk)
     
      
      amp2 = amp2ll * pre *  	  
     . ( zel**2 * zql**2  * cZZ     
     . + zel *zql * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zel*zql**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*zql * chargeQ *  sw*cw * 
     . (1 - ph_Zmass2/(s + tk + uk) )* cZg )      
      
      amp2 = amp2 + amp2ll * pre * 
     . (   zer**2 * zqr**2 * cZZ      
     . +   zer *zqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .   (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zqr**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2) * cZg
     . +1/2d0*zer**2*zqr * chargeQ *  sw*cw *
     .  (1 - ph_Zmass2/(s + tk + uk))* cZg ) 
      
      amp2 = amp2 + amp2lr * pre * 
     . (   zel**2 * zqr**2 * cZZ        
     . +   zel *zqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg
     . +1/2d0*zel*zqr**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*zqr * chargeQ *  sw*cw * 
     . (1 - ph_Zmass2/(s + tk + uk)) * cZg)  
      
      amp2 = amp2 + amp2lr * pre * 
     . (   zer**2 * zql**2 * cZZ      
     . +   zer *zql * chargeL * chargeQ * cw**2 * sw**2 * 
     . (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zql**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2) *cZg
     . +1/2d0*zer**2*zql * chargeQ *  sw*cw *
     .  (1 - ph_Zmass2/(s + tk + uk)) * cZg )        

c     add Interference between dzqr, dzql and phi^dagger phi VV operators
c     some of the interference is taken care of by changing the couplings zql --> zql + dzql
c     in addition there is the local diagram with Higgs and Z in the same point
      amp2_8 = 0d0     
      
      amp2_8 = amp2ll  *  	  
     . ( zel**2 * zql* dzql  * cZZ     
     . + zel *dzql * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) *cgg 
     . +1/2d0*zel*zql*dzql * chargeL * sw*cw * (1 - ph_Zmass2/s2)*cZg
     . +1/2d0*zel**2*dzql * chargeQ *  sw*cw * 
     . (1 - ph_Zmass2/(s + tk + uk) )* cZg )      
      
      amp2_8 = amp2_8 + amp2ll  * 
     . (   zer**2 * zqr* dzqr * cZZ      
     . +   zer *dzqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .   (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zqr*dzqr * chargeL* sw*cw *  (1 - ph_Zmass2/s2) *cZg
     . +1/2d0*zer**2*dzqr * chargeQ *  sw*cw *
     .  (1 - ph_Zmass2/(s + tk + uk))* cZg ) 
      
      amp2_8 = amp2_8 + amp2lr  * 
     . (   zel**2 * zqr*dzqr * cZZ        
     . +   zel *dzqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg
     . +1/2d0*zel*zqr*dzqr * chargeL*  sw*cw *(1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*dzqr * chargeQ *  sw*cw * 
     . (1 - ph_Zmass2/(s + tk + uk)) * cZg)  
      
      amp2_8 = amp2_8 + amp2lr  * 
     . (   zer**2 * zql*dzql * cZZ      
     . +   zer *dzql * chargeL * chargeQ * cw**2 * sw**2 * 
     . (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*dzql*zql * chargeL * sw*cw * (1 - ph_Zmass2/s2) *cZg
     . +1/2d0*zer**2*dzql * chargeQ *  sw*cw *
     .  (1 - ph_Zmass2/(s + tk + uk)) * cZg )        
      
      
      amp2_8 = amp2_8 * pre * ( s + tk + uk - ph_Zmass2)/ph_Zmass2
     
	
      amp2ll_2 = 2*(16*p25**2*p46**2*s - 32*p24*p25*p46*p56*s 
     .+ 16*p24**2*p56**2*s + 8*p24**2*s**2*s2 - 8*p24*p46*s**2*s2 
     .+ 8*p25*p46*s**2*s2 + 4*p46**2*s**2*s2 + 4*p56**2*s**2*s2 
     .+ 2*s**3*s2**2 + 16*p25**2*p46**2*tk - 32*p24*p25*p46*p56*tk 
     .+ 16*p24**2*p56**2*tk + 16*p24**2*s*s2*tk + 8*p24*p25*s*s2*tk 
     .- 16*p24*p46*s*s2*tk + 8*p25*p46*s*s2*tk + 8*p46**2*s*s2*tk 
     .+ 8*p25*p56*s*s2*tk + 4*s**2*s2**2*tk + 8*p24**2*s2*tk**2 
     .+ 8*p24*p25*s2*tk**2 + 4*p25**2*s2*tk**2 - 8*p24*p46*s2*tk**2 
     .+ 4*p46**2*s2*tk**2 + 3*s*s2**2*tk**2 + s2**2*tk**3 
     .+ (16*(p25*p46 - p24*p56)**2 + 8*(p24**2 + 2*p25*p46 
     .+ p56**2)*s*s2 + 4*s**2*s2**2 + 4*s2*(2*(p24**2 + p24*p25 
     .+ p25*(p46 + p56)) + s*s2)*tk + s2**2*tk**2)*uk 
     .+ s2*(4*p24**2 + 8*p25*p46 + 4*p56**2 + 3*s*s2 + s2*tk)*uk**2
     . + s2**2*uk**3 + 4*p14**2*(s2*uk**2 + 8*p25**2*(s + tk + uk) 
     .- 8*p25*p56*(s + tk + uk) + 4*p56**2*(s + tk + uk)) + 4*p15**2*
     . (8*p24**2*(s + tk + uk) - 8*p24*p46*(s + tk + uk) + 4*p46**2*(s 
     .+ tk + uk) + s2*(2*s**2 + 2*s*tk + tk**2 + 4*s*uk + 2*tk*uk 
     .+ 2*uk**2)) + 8*p15*(4*p24*p25*p46*(s + tk + uk) 
     .- 4*p24**2*p56*(s + tk + uk) + p14*(s + tk + uk)*(4*p25*p46 
     .- 4*p46*p56 + 4*p24*(-2*p25 + p56) + s2*uk) - s2*(s + uk)*(p25*tk
     . + p56*(s + uk))) + 8*p14*(-4*p25**2*p46*(s + tk + uk) 
     .+ s2*(s + tk)*((-p24 + p46)*uk + p56*(s + tk + uk)) 
     .- p25*(s + tk + uk)*(-4*p24*p56 + s2*(2*s + tk + uk))))/(tk*uk)	
	 
      amp2lr_2 = 2*(16*p25**2*p46**2*s - 32*p24*p25*p46*p56*s 
     .+ 16*p24**2*p56**2*s + 8*p25**2*s**2*s2 + 4*p46**2*s**2*s2 
     .+ 8*p24*p56*s**2*s2 - 8*p25*p56*s**2*s2 + 4*p56**2*s**2*s2 
     .+ 2*s**3*s2**2 + 16*p25**2*p46**2*tk - 32*p24*p25*p46*p56*tk 
     .+ 16*p24**2*p56**2*tk + 8*p24*p25*s*s2*tk + 16*p25**2*s*s2*tk 
     .+ 8*p24*p46*s*s2*tk + 8*p24*p56*s*s2*tk - 16*p25*p56*s*s2*tk 
     .+ 8*p56**2*s*s2*tk + 4*s**2*s2**2*tk + 4*p24**2*s2*tk**2 
     .+ 8*p24*p25*s2*tk**2 + 8*p25**2*s2*tk**2 - 8*p25*p56*s2*tk**2 
     .+ 4*p56**2*s2*tk**2 + 3*s*s2**2*tk**2 + s2**2*tk**3 
     .+ (16*(p25*p46 - p24*p56)**2 + 8*(p25**2 + p46**2 
     .+ 2*p24*p56)*s*s2 + 4*s**2*s2**2 + 4*s2*(2*p25**2 + 2*p24*(p25 
     .+ p46 + p56) + s*s2)*tk + s2**2*tk**2)*uk + s2*(4*p25**2 
     .+ 4*p46**2 + 8*p24*p56 + 3*s*s2 + s2*tk)*uk**2 + s2**2*uk**3 + 
     . 4*p15**2*(s2*uk**2 + 8*p24**2*(s + tk + uk) - 8*p24*p46*(s + tk
     . + uk) + 4*p46**2*(s + tk + uk)) + 4*p14**2*(8*p25**2*(s + tk 
     .+ uk) - 8*p25*p56*(s + tk + uk) + 4*p56**2*(s + tk + uk) 
     .+ s2*(2*s**2 + 2*s*tk + tk**2 + 4*s*uk + 2*tk*uk + 2*uk**2)) 
     .- 8*p14*(4*p25**2*p46*(s + tk + uk) - 4*p24*p25*p56*(s + tk + uk) 
     .+ s2*(s + uk)*(p24*tk + p46*(s + uk))) - 8*p15*(4*p24**2*p56*(s 
     .+ tk + uk) - p14*(s + tk + uk)*(4*p25*p46 - 4*p46*p56 
     .+ 4*p24*(-2*p25 + p56) + s2*uk) + s2*(s + tk)*((p25 - p56)*uk 
     .- p46*(s + tk + uk)) + p24*(s + tk + uk)*(-4*p25*p46 
     .+ s2*(2*s + tk + uk))))/(tk*uk)
      
      
	
      amp2 = amp2 + 	 amp2ll_2 * pre2 *  
     .(
     .  zel**2 * zql**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/(s+tk+uk)**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zel**2 * chargeQ**2 * cZg**2 
     .  * 1/(s+tk+uk)**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zql**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zql* zel * chargeL* chargeQ * cZg**2
     .  * 1/(s+tk+uk)*1/s2*props1*props2 *(s2 - ph_Zmass2)
     .  * ((s+tk+uk) - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zql* zel * chargeL* chargeQ * cZZ* cgg 
     .  * 1/(s+tk+uk)*1/s2* props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+         cw**3 * sw**3 * zel* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/(s+tk+uk)**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zql* chargeL**2 * chargeQ  * cZg * cgg
     .  * 1/(s+tk+uk) * 1/s2**2 * props1 * ((s+tk+uk) - ph_Zmass2)
     .+         cw * sw * zel**2 * zql *  chargeQ*   cZg * cZZ
     .  * 1/(s+tk+uk)   * props2 * props1 * ((s+tk+uk) - ph_Zmass2 )
     .+         cw * sw * zel * zql**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))
	
      amp2 = amp2 + 	 amp2ll_2 * pre2 *  
     .(
     .  zer**2 * zqr**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/(s+tk+uk)**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zer**2 * chargeQ**2 * cZg**2 
     .  * 1/(s+tk+uk)**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zqr**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zqr* zer * chargeL* chargeQ * cZg**2
     .  * 1/(s+tk+uk)*1/s2*props1*props2 *(s2 - ph_Zmass2)
     .  * ((s+tk+uk) - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zqr* zer * chargeL* chargeQ * cZZ* cgg 
     .  * 1/(s+tk+uk)*1/s2* props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+         cw**3 * sw**3 * zer* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/(s+tk+uk)**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zqr* chargeL**2 * chargeQ  * cZg * cgg
     .  * 1/(s+tk+uk) * 1/s2**2 * props1 * ((s+tk+uk) - ph_Zmass2)
     .+         cw * sw * zer**2 * zqr *  chargeQ*   cZg * cZZ
     .  * 1/(s+tk+uk)   * props2 * props1 * ((s+tk+uk) - ph_Zmass2 )
     .+         cw * sw * zer * zqr**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))	
	
	
      amp2 = amp2 + amp2lr_2 * pre2 * 
     .(
     .  zel**2 * zqr**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/(s+tk+uk)**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zel**2 * chargeQ**2 * cZg**2 
     .  * 1/(s+tk+uk)**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zqr**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zqr* zel * chargeL* chargeQ * cZg**2
     .  * 1/(s+tk+uk)*1/s2*props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zqr* zel * chargeL* chargeQ * cZZ* cgg 
     .  * 1/(s+tk+uk)*1/s2* props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+         cw**3 * sw**3 * zel* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/(s+tk+uk)**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zqr* chargeL**2* chargeQ  * cZg * cgg
     .  * 1/(s+tk+uk) * 1/s2**2 * props1 * ((s+tk+uk) - ph_Zmass2)
     .+         cw * sw * zel**2 * zqr *  chargeQ*   cZg * cZZ
     .  * 1/(s+tk+uk)   * props2 * props1 * ((s+tk+uk) - ph_Zmass2 )
     .+         cw * sw * zel * zqr**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))        
	
	
      amp2 = amp2 + amp2lr_2 * pre2 *  	  
     .(
     .  zer**2 * zql**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/(s+tk+uk)**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zer**2 * chargeQ**2 * cZg**2 
     .  * 1/(s+tk+uk)**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zql**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zql* zer * chargeL* chargeQ * cZg**2
     .  * 1/(s+tk+uk)*1/s2*props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zql* zer * chargeL* chargeQ * cZZ* cgg 
     .  * 1/(s+tk+uk)*1/s2* props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+         cw**3 * sw**3 * zer* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/(s+tk+uk)**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zql* chargeL**2* chargeQ  * cZg * cgg
     .  * 1/(s+tk+uk) * 1/s2**2 * props1 * ((s+tk+uk) - ph_Zmass2)
     .+         cw * sw * zer**2 * zql *  chargeQ*   cZg * cZZ
     .  * 1/(s+tk+uk)   * props2 * props1 * ((s+tk+uk) - ph_Zmass2 )
     .+         cw * sw * zer * zql**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))        
      
      
      amp2 = amp2 + amp2_8
      
c     COLOUR FACTORS AND QUARK-GLUON SWITCH
c     colour factors: CF*n from sum over initial colours, 1/4 from
c     average over initial spins, 1/n from average over quark colours
c     and 1/(n^2-1) from average over gluon colours
      if(rflav(6).eq.0) then
         colfac=CF
      else
	  colfac=-1/2d0 
      endif

      
      amp2=amp2*colfac * (8d0 * pi**2)

c include color factors 	      
      
      
      end                  

      

      
c     phi^dagger phi WW operators 
c     computes the total squared amplitude of the real diagram,
c     with all the coefficients
      subroutine real_sqamp_vvtilde(pp,rflav,amp2)
      implicit none
      external dotp
      real* 8 dotp
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal)
      integer rflav(nlegreal),i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props
      real * 8 p15,p25,p35,p45,p56
      real * 8 gw,colfac,couplz,chargeQ,chargeL,T3L,T3Q
      real * 8 props1, props2
      real * 8 s, s2, tk, uk, vev, rg
      real * 8 cw2, mz, sw, cw
      real * 8 zql, zqr, zel, zer, cZZ, cZg, cgg
      real * 8 dzql, dzqr
      real * 8 amp2ll, amp2lr, pre, pre2, amp2_8
      real * 8 amp2ll_2, amp2lr_2, amp22
      real * 8 eps1, eps2, eps3, eps4, eps5
      
      amp2 = 0d0
      amp22 = 0d0
      amp2_8 = 0d0
      
      gw=ph_geff
      ph_cthw = sqrt(1-ph_sthw**2)
      couplz = ph_gcweff/2d0
      cw2 = ph_cthw**2
      cw = ph_cthw
      sw = ph_sthw
      vev = ph_vev 
      mz = ph_Zmass
c
c     vectorial and axial couplings to Z boson
      if (mod(abs(rflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(rflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (rflav(6).eq.0) then
         if (mod(abs(rflav(1)),2).eq.0) then
c     UP TYPE QUARK
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
	    i = abs(rflav(1))/2
            j = abs(rflav(2))/2
	    dzql   = 1/2d0 * ph_QphiU(i,j)
	    dzqr   = 1/2d0 * ph_Uphi (i,j)
         elseif (mod(abs(rflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
            i = (abs(rflav(1))+1)/2
            j = (abs(rflav(2))+1)/2
            dzql   = 1/2d0 * ph_QphiD(i,j)
	    dzqr   =1/2d0* ph_Dphi(i,j)

         endif
      else
         if (mod(abs(rflav(6)),2).eq.0) then
c     UP TYPE QUARK
            i = abs(rflav(6))/2
            if(abs(rflav(1)).eq.0) then
	      j = abs(rflav(2))/2
	    else 
	      j = abs(rflav(1))/2
	    endif  
	    chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
	    dzql   = 1/2d0 * ph_QphiU(i,j) 
	    dzqr   = 1/2d0 * ph_Uphi (i,j)
         elseif (mod(abs(rflav(6)),2).eq.1) then
c     DOWN TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
            i = (abs(rflav(6))+1)/2
            if(abs(rflav(1)).eq.0) then
	      j = (abs(rflav(2))+1)/2
	    else 
	      j = (abs(rflav(1))+1)/2
            endif
            dzql   = 1/2d0 * ph_QphiD(i,j)
	    dzqr   =1/2d0* ph_Dphi(i,j)
         endif
      endif

c     define quark and leptons couplings    
      zel = T3L - chargeL*ph_sthw**2
      zer =     - chargeL*ph_sthw**2
      zql = T3Q - chargeQ*ph_sthw**2 
      zqr = 	- chargeQ*ph_sthw**2 
c     make sure not to introduce a fcnc piece in the SM 
      if(i.ne.j) then
	zql = 1d-20
	zqr = 1d-20
	chargeQ = 1d-20
      endif
      zql = zql + dzql
      zqr = zqr + dzqr    

c     dim. 6 couplings 

      cZZ = cw**2 * ph_cwwt + sw**2 * ph_cbbt + cw * sw * ph_cwbt
      cgg = sw**2 * ph_cwwt + cw**2 * ph_cbbt - cw * sw * ph_cwbt
      cZg = 2*cw*sw * (ph_cwwt - ph_cbbt) - (cw**2 - sw**2) * ph_cwbt      
      
      
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

      call LeviCivita(pp(:,1),pp(:,2),pp(:,4),pp(:,5),eps1)
      call LeviCivita(pp(:,1),pp(:,2),pp(:,6),pp(:,4),eps2)
      call LeviCivita(pp(:,1),pp(:,2),pp(:,6),pp(:,5),eps3)
      call LeviCivita(pp(:,1),pp(:,6),pp(:,4),pp(:,5),eps4)      
      call LeviCivita(pp(:,2),pp(:,6),pp(:,4),pp(:,5),eps5)
      
c     Z propagators
c     s propagator
      props1 = 1d0/((s + tk + uk -mz**2)**2+ph_Zwidth**2*mz**2)
c     Z to lepton decay     
      props2 = 1d0/((s2-mz**2)**2+ph_Zwidth**2*mz**2)
              
      pre = 32/3d0 * ph_Zmass2 * gw**4/cw2**2/vev**2 * props1 * 
     .     props2  * 1/(tk * uk)**2        
      pre2 = 4/3d0 *  gw**4/cw2**2/vev**2
              
              
c     lh lepton, lh quark              
      amp2ll = uk*(tk*(2*(p46 + p56)*s + (2*p25 + 3*p46 + p56)*tk 
     .- 4*p24*(s + tk) - 2*p15*(2*s + tk)) + (2*p14 - 4*p15 - 3*p24 
     .- p25 + p46 + 3*p56)*tk*uk + (p14 + p15)*uk**2) * eps1 
     
      amp2ll = amp2ll + (2*(-(p25*p46) + p24*p56)*tk**2 
     .+ 2*(p15*(p24 - p46) + p14*(-p25 + p56))*uk**2)*(eps2 + eps3)
     
      amp2ll = amp2ll + (uk*(tk*(2*(p15 + p24 - p46)*s 
     .+ (2*p15 + 3*p24 + p25 - 2*p46)*tk) + 
     .((-p24 - p25 + p46 + p56)*s + 2*(-p14 + p15)*tk)*uk 
     . + (p14 + p15)*uk**2)) * eps4 
     
      amp2ll = amp2ll + ( -(tk**2*((p46 + p56)*s + (p24 + p25)*tk)) 
     .- 2*tk*((p15 + p24 - p56)*s + (p24 - p25)*tk)*uk - 
     .  ((p14 + p15)*s + (p14 + 3*p15 + 2*p24 - 2*p56)*tk)*uk**2)*eps5

     
     
c     lh lepton, rh quark                   
      amp2lr =   uk*(tk*(-2*(p46 + p56)*s - (2*p24 + p46 + 3*p56)*tk 
     .+ 4*p25*(s + tk) + 2*p14*(2*s + tk)) + (4*p14 - 2*p15 + p24 
     .+ 3*p25 - 3*p46 - p56)*tk*uk - (p14 + p15)*uk**2)*eps1 
     
      amp2lr = amp2lr + (2*(p25*p46 - p24*p56)*tk**2 + 2*(p15*(-p24 
     .+ p46) + p14*(p25 - p56))*uk**2)*(eps2 + eps3)
     
      amp2lr = amp2lr + (uk*(tk*(-2*(p14 + p25 - p56)*s - (2*p14 
     .+ p24 + 3*p25 - 2*p56)*tk) + (p24*s + p25*s - (p46 + p56)*s 
     .+ 2*(-p14 + p15)*tk)*uk - (p14 + p15)*uk**2))*eps4
     
      amp2lr = amp2lr + (tk**2*((p46 + p56)*s + (p24 + p25)*tk) 
     .+ 2*tk*((p14 + p25 - p46)*s + (-p24 + p25)*tk)*uk + 
     .  ((p14 + p15)*s + (3*p14 + p15 + 2*p25 - 2*p46)*tk)*uk**2)*eps5
      
      amp2 = amp2ll * pre *  	  
     . ( zel**2 * zql**2  * cZZ     
     . + zel *zql * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zel*zql**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*zql * chargeQ *  sw*cw * 
     . (1 - ph_Zmass2/(s + tk + uk) )* cZg )      
      
      amp2 = amp2 + amp2ll * pre * 
     . (   zer**2 * zqr**2 * cZZ      
     . +   zer *zqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .   (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zqr**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2) * cZg
     . +1/2d0*zer**2*zqr * chargeQ *  sw*cw *
     .  (1 - ph_Zmass2/(s + tk + uk))* cZg ) 
      
      amp2 = amp2 + amp2lr * pre * 
     . (   zel**2 * zqr**2 * cZZ        
     . +   zel *zqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg
     . +1/2d0*zel*zqr**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)* cZg
     . +1/2d0*zel**2*zqr * chargeQ *  sw*cw * 
     . (1 - ph_Zmass2/(s + tk + uk)) * cZg)  
      
      amp2 = amp2 + amp2lr * pre * 
     . (   zer**2 * zql**2 * cZZ      
     . +   zer *zql * chargeL * chargeQ * cw**2 * sw**2 * 
     . (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zql**2 * chargeL *  sw*cw *  (1 - ph_Zmass2/s2) *cZg
     . +1/2d0*zer**2*zql * chargeQ *  sw*cw *
     .  (1 - ph_Zmass2/(s + tk + uk)) * cZg )    
     
     
c     add the interference between phi^dagger phi V Vtilde and dzq
      amp2_8 = amp2ll *  	  
     . ( zel**2 * zql*dzql  * cZZ     
     . + zel *dzql * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zel*zql*dzql * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)*cZg
     . +1/2d0*zel**2*dzql * chargeQ *  sw*cw * 
     . (1 - ph_Zmass2/(s + tk + uk) )* cZg )      
      
      amp2_8 = amp2_8 + amp2ll  * 
     . (   zer**2 * zqr*dzqr * cZZ      
     . +   zer *dzqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .   (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zqr*dzqr * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)*cZg
     . +1/2d0*zer**2*dzqr * chargeQ *  sw*cw *
     .  (1 - ph_Zmass2/(s + tk + uk))* cZg ) 
      
      amp2_8 = amp2_8 + amp2lr  * 
     . (   zel**2 * zqr*dzqr * cZZ        
     . +   zel *dzqr * chargeL * chargeQ * cw**2 * sw**2 * 
     .        (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg
     . +1/2d0*zel*zqr*dzqr * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)*cZg
     . +1/2d0*zel**2*dzqr * chargeQ *  sw*cw * 
     . (1 - ph_Zmass2/(s + tk + uk)) * cZg)  
      
      amp2_8 = amp2_8 + amp2lr  * 
     . (   zer**2 * zql*dzql * cZZ      
     . +   zer *dzql * chargeL * chargeQ * cw**2 * sw**2 * 
     . (1 - ph_Zmass2/(s + tk + uk)) * (1 - ph_Zmass2/s2) * cgg 
     . +1/2d0*zer*zql*dzql * chargeL *  sw*cw *  (1 - ph_Zmass2/s2)*cZg
     . +1/2d0*zer**2*dzql * chargeQ *  sw*cw *
     .  (1 - ph_Zmass2/(s + tk + uk)) * cZg )    
     
     
      amp2_8 = amp2_8 * pre *  ( s + tk + uk - ph_Zmass2)/ph_Zmass2
	
	
      amp2ll_2 = - (2*(16*p25**2*p46**2*s - 32*p24*p25*p46*p56*s 
     .+ 16*p24**2*p56**2*s - 8*p24**2*s**2*s2 + 8*p24*p46*s**2*s2 
     .+ 8*p25*p46*s**2*s2 - 4*p46**2*s**2*s2 - 4*p56**2*s**2*s2 
     .+ 2*s**3*s2**2 + 16*p25**2*p46**2*tk - 32*p24*p25*p46*p56*tk 
     .+ 16*p24**2*p56**2*tk - 16*p24**2*s*s2*tk + 8*p24*p25*s*s2*tk 
     .+ 16*p24*p46*s*s2*tk + 8*p25*p46*s*s2*tk - 8*p46**2*s*s2*tk 
     .- 8*p25*p56*s*s2*tk + 4*s**2*s2**2*tk - 8*p24**2*s2*tk**2 
     .+ 8*p24*p25*s2*tk**2 - 4*p25**2*s2*tk**2 + 8*p24*p46*s2*tk**2 
     .- 4*p46**2*s2*tk**2 + 3*s*s2**2*tk**2 + s2**2*tk**3 
     .+ (16*p25**2*p46**2 + 8*p25*(-4*p24*p46*p56 + 2*p46*s*s2 
     .+ (p24 + p46 - p56)*s2*tk) + 8*p24**2*(2*p56**2 - s2*(s + tk)) 
     .+ s2*(-8*p56**2*s + s2*(2*s + tk)**2))*uk + s2*(-4*p24**2 
     .+ 8*p25*p46 - 4*p56**2 + 3*s*s2 + s2*tk)*uk**2 + s2**2*uk**3 
     .+ 4*p14**2*(-(s2*uk**2) + 8*p25**2*(s + tk + uk) 
     .- 8*p25*p56*(s + tk + uk) + 4*p56**2*(s + tk + uk)) + 4*p15**2*
     .(8*p24**2*(s + tk + uk) - 8*p24*p46*(s + tk + uk) 
     .+ 4*p46**2*(s + tk + uk) - s2*(2*s**2 + 2*s*tk + tk**2 + 4*s*uk 
     .+ 2*tk*uk + 2*uk**2)) + 8*p15*(4*p24*p25*p46*(s + tk + uk) 
     .- 4*p24**2*p56*(s + tk + uk) + p14*(s + tk + uk)*(4*p25*p46 
     .- 4*p46*p56 + 4*p24*(-2*p25 + p56) + s2*uk) + s2*(s + uk)*(p25*tk 
     .+ p56*(s + uk))) + 8*p14*(-4*p25**2*p46*(s + tk + uk) + s2*(s 
     .+ tk)*((p24 - p46)*uk + p56*(s + tk + uk)) 
     .- p25*(s + tk + uk)*(-4*p24*p56 + s2*(2*s + tk + uk)))))/(tk*uk)
	 
      amp2lr_2 = -(2*(16*p25**2*p46**2*s - 32*p24*p25*p46*p56*s 
     .+ 16*p24**2*p56**2*s - 8*p25**2*s**2*s2 - 4*p46**2*s**2*s2 
     .+ 8*p24*p56*s**2*s2 + 8*p25*p56*s**2*s2 - 4*p56**2*s**2*s2 
     .+ 2*s**3*s2**2 + 16*p25**2*p46**2*tk - 32*p24*p25*p46*p56*tk 
     .+ 16*p24**2*p56**2*tk + 8*p24*p25*s*s2*tk - 16*p25**2*s*s2*tk 
     .- 8*p24*p46*s*s2*tk + 8*p24*p56*s*s2*tk + 16*p25*p56*s*s2*tk 
     .- 8*p56**2*s*s2*tk + 4*s**2*s2**2*tk - 4*p24**2*s2*tk**2 
     .+ 8*p24*p25*s2*tk**2 - 8*p25**2*s2*tk**2 + 8*p25*p56*s2*tk**2 
     .- 4*p56**2*s2*tk**2 + 3*s*s2**2*tk**2 + s2**2*tk**3 
     .+ (16*(p25*p46 - p24*p56)**2 - 8*(p25**2 + p46**2 
     .- 2*p24*p56)*s*s2 + 4*s**2*s2**2 + 4*s2*(-2*p25**2 + 2*p24*(p25 
     .- p46 + p56) + s*s2)*tk + s2**2*tk**2)*uk + s2*(-4*p25**2 
     .- 4*p46**2 + 8*p24*p56 + 3*s*s2 + s2*tk)*uk**2 + s2**2*uk**3 
     .+ 4*p15**2*(-(s2*uk**2) + 8*p24**2*(s + tk + uk) - 8*p24*p46*(s 
     .+ tk + uk) + 4*p46**2*(s + tk + uk)) + 4*p14**2*(8*p25**2*(s 
     .+ tk + uk) - 8*p25*p56*(s + tk + uk) + 4*p56**2*(s + tk + uk) 
     .- s2*(2*s**2 + 2*s*tk + tk**2 + 4*s*uk + 2*tk*uk + 2*uk**2)) 
     .+ 8*p14*(-4*p25**2*p46*(s + tk + uk) + 4*p24*p25*p56*(s + tk +uk) 
     .+ s2*(s + uk)*(p24*tk + p46*(s + uk))) - 8*p15*(4*p24**2*p56*(s 
     .+ tk + uk) - p14*(s + tk + uk)*(4*p25*p46 - 4*p46*p56 + 4*p24*(
     .-2*p25 + p56) + s2*uk) + s2*(s + tk)*((-p25 + p56)*uk - p46*(s 
     .+ tk + uk)) + p24*(s + tk + uk)*(-4*p25*p46 + s2*(2*s 
     .+ tk + uk)))))/(tk*uk)
      
      
	
      amp22 = amp2ll_2 * pre2 *  
     .(
     .  zel**2 * zql**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/(s+tk+uk)**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zel**2 * chargeQ**2 * cZg**2 
     .  * 1/(s+tk+uk)**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zql**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zql* zel * chargeL* chargeQ * cZg**2
     .  * 1/(s+tk+uk)*1/s2*props1*props2 *(s2 - ph_Zmass2)
     .  * ((s+tk+uk) - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zql* zel * chargeL* chargeQ * cZZ* cgg 
     .  * 1/(s+tk+uk)*1/s2* props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+         cw**3 * sw**3 * zel* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/(s+tk+uk)**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zql* chargeL**2 * chargeQ  * cZg * cgg
     .  * 1/(s+tk+uk) * 1/s2**2 * props1 * ((s+tk+uk) - ph_Zmass2)
     .+         cw * sw * zel**2 * zql *  chargeQ*   cZg * cZZ
     .  * 1/(s+tk+uk)   * props2 * props1 * ((s+tk+uk) - ph_Zmass2 )
     .+         cw * sw * zel * zql**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))
	
      amp22 = amp22 + 	 amp2ll_2 * pre2 *  
     .(
     .  zer**2 * zqr**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/(s+tk+uk)**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zer**2 * chargeQ**2 * cZg**2 
     .  * 1/(s+tk+uk)**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zqr**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zqr* zer * chargeL* chargeQ * cZg**2
     .  * 1/(s+tk+uk)*1/s2*props1*props2 *(s2 - ph_Zmass2)
     .  * ((s+tk+uk) - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zqr* zer * chargeL* chargeQ * cZZ* cgg 
     .  * 1/(s+tk+uk)*1/s2* props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+         cw**3 * sw**3 * zer* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/(s+tk+uk)**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zqr* chargeL**2 * chargeQ  * cZg * cgg
     .  * 1/(s+tk+uk) * 1/s2**2 * props1 * ((s+tk+uk) - ph_Zmass2)
     .+         cw * sw * zer**2 * zqr *  chargeQ*   cZg * cZZ
     .  * 1/(s+tk+uk)   * props2 * props1 * ((s+tk+uk) - ph_Zmass2 )
     .+         cw * sw * zer * zqr**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))	
	
	
      amp22 = amp22 + amp2lr_2 * pre2 * 
     .(
     .  zel**2 * zqr**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/(s+tk+uk)**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zel**2 * chargeQ**2 * cZg**2 
     .  * 1/(s+tk+uk)**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zqr**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zqr* zel * chargeL* chargeQ * cZg**2
     .  * 1/(s+tk+uk)*1/s2*props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zqr* zel * chargeL* chargeQ * cZZ* cgg 
     .  * 1/(s+tk+uk)*1/s2* props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+         cw**3 * sw**3 * zel* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/(s+tk+uk)**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zqr* chargeL**2* chargeQ  * cZg * cgg
     .  * 1/(s+tk+uk) * 1/s2**2 * props1 * ((s+tk+uk) - ph_Zmass2)
     .+         cw * sw * zel**2 * zqr *  chargeQ*   cZg * cZZ
     .  * 1/(s+tk+uk)   * props2 * props1 * ((s+tk+uk) - ph_Zmass2 )
     .+         cw * sw * zel * zqr**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))        
	
	
      amp22 = amp22 +  amp2lr_2 * pre2 *  	  
     .(
     .  zer**2 * zql**2 *                         cZZ**2  
     .  * props1 * props2
     .+ chargeL**2 * chargeQ**2 * cw**4 * sw**4 * cgg**2 
     .  *  1/(s+tk+uk)**2 *1/s2**2
     .+ 1/4d0 * cw**2 * sw**2 * zer**2 * chargeQ**2 * cZg**2 
     .  * 1/(s+tk+uk)**2 * props2
     .+ 1/4d0 * cw**2 * sw**2 * zql**2 * chargeL**2 * cZg**2 
     .	* 1/s2**2* props1
     .+ 1/2d0 * cw**2 * sw**2 * zql* zer * chargeL* chargeQ * cZg**2
     .  * 1/(s+tk+uk)*1/s2*props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+   2d0 * cw**2 * sw**2 * zql* zer * chargeL* chargeQ * cZZ* cgg 
     .  * 1/(s+tk+uk)*1/s2* props1*props2 *(s2 - ph_Zmass2)
     .  *((s+tk+uk) - ph_Zmass2)
     .+         cw**3 * sw**3 * zer* chargeL* chargeQ**2 * cZg * cgg
     .  * 1/(s+tk+uk)**2 * 1/s2 * props2 * (s2 - ph_Zmass2)
     .+         cw**3 * sw**3 * zql* chargeL**2* chargeQ  * cZg * cgg
     .  * 1/(s+tk+uk) * 1/s2**2 * props1 * ((s+tk+uk) - ph_Zmass2)
     .+         cw * sw * zer**2 * zql *  chargeQ*   cZg * cZZ
     .  * 1/(s+tk+uk)   * props2 * props1 * ((s+tk+uk) - ph_Zmass2 )
     .+         cw * sw * zer * zql**2 * chargeL * cZg * cZZ  
     .* 1/s2 * props2 * props1 * (s2 - ph_Zmass2))        
      
c     COLOUR FACTORS AND QUARK-GLUON SWITCH
c     colour factors: CF*n from sum over initial colours, 1/4 from
c     average over initial spins, 1/n from average over quark colours
c     and 1/(n^2-1) from average over gluon colours
      if(rflav(6).eq.0) then
         colfac=CF
      else
	  colfac=-1/2d0 
      endif

      amp2 = amp2 + amp2_8 + amp22
      
      amp2=amp2*colfac * (8d0 * pi**2)

c include color factors 	      
      
      
      end                        
      
c     non standard Yukawa      
      subroutine real_sqamp_yuk(pp,rflav,amp2)
      implicit none
      external dotp
      real* 8 dotp
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 amp2,pp(0:3,nlegreal)
      integer rflav(nlegreal),i,j,n
      real * 8 p12,p13,p14,p16,p23,p24,p26,p33,p34,p36,p46,t0,props
      real * 8 p15,p25,p35,p45,p56
      real * 8 gw,colfac,couplz,AL,VL,AQ,VQ,chargeQ,chargeL,T3L,T3Q
      real * 8 props1, props2
      real * 8 s, s2, tk, uk, vev, pre
      real * 8 cw2, mz, sw, yy, rg
      real * 8 zql, zqr, zel, zer
      real * 8 amp2ll_ll, amp2ll_rr, amp2rr_ll, amp2rr_rr
      real * 8 amp2lr_rr, amp2lr_ll
      
      amp2 = 0d0
      
      gw=ph_geff
      ph_cthw = sqrt(1-ph_sthw**2)
      couplz = ph_gcweff/(2d0)
      cw2 = ph_cthw**2
      sw = ph_sthw
      vev = ph_vev 
      mz = ph_Zmass
c
c     vectorial and axial couplings to Z boson
      if (mod(abs(rflav(4)),2).eq.1) then
c     LEPTON
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(rflav(4)),2).eq.0) then
c     NEUTRINO
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (rflav(6).eq.0) then
         if (mod(abs(rflav(1)),2).eq.0) then
c     UP TYPE QUARK
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
            i = abs(rflav(1))/2
            j = abs(rflav(2))/2
	    yy = 1/2d0*(ph_ReYu(i,j)**2 + ph_ImYu(i,j)**2
     .		       +ph_ReYu(j,i)**2 + ph_ImYu(j,i)**2)
            elseif (mod(abs(rflav(1)),2).eq.1) then
c     DOWN TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
            i = (abs(rflav(1))+1)/2
            j = (abs(rflav(2))+1)/2            
	    yy = 1/2d0*(ph_ReYd(i,j)**2 + ph_ImYd(i,j)**2
     .		+	ph_ReYd(j,i)**2 + ph_ImYd(j,i)**2 )
            endif
      else
         if (mod(abs(rflav(6)),2).eq.0) then
c     UP TYPE QUARK
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
            i = abs(rflav(6))/2
            if(abs(rflav(1)).eq.0) then
	      j = abs(rflav(2))/2
	    else 
	      j = abs(rflav(1))/2
	    endif              
	    yy = 1/2d0*(ph_ReYu(i,j)**2 + ph_ImYu(i,j)**2
     .		       +ph_ReYu(j,i)**2 + ph_ImYu(j,i)**2)
            elseif (mod(abs(rflav(6)),2).eq.1) then
c     DOWN TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
            i = (abs(rflav(6))+1)/2
            if(abs(rflav(1)).eq.0) then
	      j = (abs(rflav(2))+1)/2
	    else 
	      j = (abs(rflav(1))+1)/2
            endif
            yy = 1/2d0*(ph_ReYd(i,j)**2 + ph_ImYd(i,j)**2
     .		+	ph_ReYd(j,i)**2 + ph_ImYd(j,i)**2 )
         endif
      endif

      VL = T3L - 2*chargeL*ph_sthw**2
      AL = -T3L
      VQ = T3Q - 2*chargeQ*ph_sthw**2
      AQ = -T3Q 

      if(wdm) then 
	VQ = VQ  
        AQ = AQ 
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

c     Z propagators
c     Z to lepton decay     
      props2 = 1d0/((s2-mz**2)**2+ph_Zwidth**2*mz**2)
      
      pre = 1/6d0 * (2d0*couplz)**4 * props2 * yy
              
              
      amp2ll_ll =   
     . 4*((-2*p15*(4*p15*p46 - (2*p14 - s2)*(2*p56 + tk)))/
     -     ((-2*p14 - 2*p15 + s2)**2*uk) - 
     -    (4*p15*(4*p15*(p24 - p46) - 
     -         (2*p14 - s2)*(2*p25 - 2*p56 - s - tk))*
     -       (2*p24 + 2*p25 - s - uk))/
     -     ((-2*p14 - 2*p15 + s2)**2*
     -       (-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)*uk) - 
     -    (4*p24*(2*p14 + 2*p15 - s - tk)*
     -       (4*p15*p24 - 4*p14*p25 + 4*p25*p46 - 4*p24*p56 + 2*p25*s + 
     -         2*p14*s2 - 2*p46*s2 - s*s2 + 2*p25*uk - s2*uk))/
     -     ((-2*p24 - 2*p25 + s2)**2*tk*
     -       (-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)) + 
     -    (2*p56*(-4*p15*p24 - 4*p25*p46 + 4*p24*p56 + 2*p46*s - 
     -         2*p25*s2 + s*s2 + 2*p24*tk + p14*(4*p25 - 2*s - 2*uk) + 
     -         2*p46*uk + s2*uk))/
     -     (tk*(-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)**2) + 
     -    (2*p24*(-4*p24*p56*s - 4*p25*p56*s + 
     -         4*p14*p56*(2*p24 + 2*p25 - s2) + 2*p56*s*s2 - 
     -         4*p24*p25*tk - 4*p25**2*tk + 4*p25*p46*tk - 
     -         4*p24*p56*tk + 2*p24*s2*tk + 4*p25*s2*tk - 2*p46*s2*tk - 
     -         s2**2*tk + 2*p15*(2*p24 + 2*p25 - s2)*
     -          (2*p24 + 2*p25 - 2*p46 - s2 - uk) + 2*p25*tk*uk - 
     -         s2*tk*uk))/
     -     ((-2*p24 - 2*p25 + s2)**2*
     -       (-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)**2) - 
     -    (2*p24*(4*p24*p56 - 2*p25*(2*p46 + uk) + s2*(2*p46 + uk)))/
     -     ((-2*p24 - 2*p25 + s2)**2*tk) + 
     -    (2*p46*((2*p25 - 2*p56 - s2)*(2*p14 - s - tk) + 
     -         p15*(-4*p24 + 4*p46 + 2*uk)))/
     -     (uk*(-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)**2) + 
     -    (2*p15*(8*p15**2*p24 + p14**2*(8*p24 - 4*uk) + 
     -         2*p15*(4*p25*p46 - 2*p46*s - 2*p24*(2*p56 + 2*s2 + tk) - 
     -            2*p46*uk + s2*uk) + 
     -         s2*(-4*p25*p46 + 2*p46*s + 2*p24*(2*p56 + s2 + tk) - 
     -            2*p56*uk - s2*uk - tk*uk) + 
     -         2*p14*(8*p15*p24 + 4*p25*p46 - 4*p24*p56 - 2*p46*s - 
     -            4*p24*s2 - 2*p24*tk - 2*p15*uk + 2*p56*uk + 2*s2*uk + 
     -            tk*uk)))/
     -     ((-2*p14 - 2*p15 + s2)**2*
     -       (-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)**2) + 
     -    (-16*p15**3*p24 - s2*(2*p56 + tk)*
     -        (2*p46*s + 2*p56*s + s*s2 + 2*p24*tk + 2*p25*tk - tk*uk)
     -        + 2*p15*(-4*p46**2*s - 8*p46*p56*s + s*s2**2 - 
     -          4*p24*(2*p56**2 - p56*s2 + p46*tk + p56*tk - s2*tk) + 
     -          4*p25*(2*p46*p56 + 2*p56*s2 - p46*tk + s2*tk) - 
     -          4*p46*p56*uk - 4*p56*s2*uk + 2*p46*tk*uk - 2*s2*tk*uk)
     -        + 8*p14**2*(-(p25*(2*p56 + tk)) + p15*(2*p25 + uk)) + 
     -       4*p15**2*(2*p46*s + 2*p24*(2*p46 + 4*p56 - s2 + tk) + 
     -          s2*(-4*p25 + s + 2*uk)) - 
     -       2*p14*(-((2*p56 + tk)*
     -             (-4*p24*p56 + 2*p56*s + s*s2 + 
     -               2*p25*(2*p46 + s2 + tk) + 2*p56*uk)) + 
     -          2*p15*(-4*p24*p56 - 2*p46*s + s*s2 + 
     -             2*p25*(2*p46 + 4*p56 + s2 + 2*tk) + 2*p46*uk + 
     -             2*p56*uk + s2*uk + tk*uk) + 
     -          p15**2*(8*p24 - 4*(2*p25 + uk))))/
     -     ((2*p14 + 2*p15 - s2)*tk*
     -       (-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)**2) + 
     -    (p15**2*(4*s2*uk + 8*p46*(s + uk) - 8*p24*(2*s + tk + uk)) - 
     -       (2*p25 - 2*p56 - s - tk)*
     -        (s2*(-2*p56*s + tk*(-2*p25 + uk)) + 
     -          4*p14*(p25*tk + p56*(s + uk))) + 
     -       2*p15*(8*p24*p56*s - 4*p46*p56*s + 2*p46*s**2 + 
     -          2*p56*s*s2 + 2*s**2*s2 + 4*p24*p56*tk + 2*p24*s*tk + 
     -          2*p46*s*tk + 2*s*s2*tk + 2*p24*tk**2 + 4*p24*p56*uk - 
     -          4*p46*p56*uk + 2*p46*s*uk - 2*p56*s2*uk + 2*s*s2*uk + 
     -          2*p46*tk*uk + s2*uk**2 - 
     -          2*p25*(2*p46*s + 2*s*s2 - 2*p24*tk + 4*p46*tk + s2*tk + 
     -             s2*uk) + 4*p14*
     -           (-((p56 + s + tk)*(s + uk)) + p25*(2*s + tk + uk))))/
     -     ((2*p14 + 2*p15 - s2)*tk*
     -       (-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)*uk) + 
     -    (8*p25*p46**2*s + 8*p24**2*p56*s + 8*p24*p25*p56*s - 
     -       16*p24*p46*p56*s - 8*p24*p56**2*s + 4*p24**2*s*s2 - 
     -       4*p24*p25*s*s2 + 4*p25*p46*s*s2 - 4*p46**2*s*s2 - 
     -       4*p46*p56*s*s2 + 2*p24*s*s2**2 - 2*p46*s*s2**2 + 
     -       8*p24**2*p25*tk + 8*p24*p25**2*tk - 8*p24*p25*p46*tk + 
     -       8*p25*p46**2*tk - 8*p24*p25*p56*tk - 8*p24*p46*p56*tk + 
     -       8*p24**2*s2*tk - 4*p24*p25*s2*tk - 8*p24*p46*s2*tk + 
     -       4*p25*p46*s*uk + 2*p25*s*s2*uk - 2*p46*s*s2*uk - 
     -       2*p56*s*s2*uk - s*s2**2*uk - 4*p24*p25*tk*uk + 
     -       4*p25*p46*tk*uk + 4*p24*p56*tk*uk - 4*p24*s2*tk*uk + 
     -       2*p46*s2*tk*uk + s2*tk*uk**2 - 
     -       2*p15*(8*p24**3 + 
     -          4*p24**2*(2*p25 - 4*p46 - 2*p56 + s2 - uk) + 
     -          (2*p46 + uk)*(4*p25*p46 + s2*uk) - 
     -          4*p24*(2*p25*p46 - 2*p46**2 + p46*s2 - p46*uk - 
     -             p56*uk + s2*uk)) + 
     -       2*p14*(8*p24**2*(p25 - s2) + 
     -          (2*p46 + uk)*
     -           (-4*p25**2 - s2*uk + 2*p25*(2*p56 + s2 + uk)) + 
     -          4*p24*(2*p25**2 + 2*p46*(p56 + s2) + (-p56 + s2)*uk - 
     -             p25*(4*p46 + 2*p56 + s2 + 2*uk))))/
     -     ((2*p24 + 2*p25 - s2)*uk*
     -       (-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)**2) + 
     -    (-8*p24*p25*p46*s + 8*p25*p46**2*s + 8*p24**2*p56*s - 
     -       8*p24*p46*p56*s - 8*p24*p25*s**2 + 4*p25*p46*s**2 + 
     -       4*p24*p56*s**2 + 4*p24*p46*s*s2 - 4*p46**2*s*s2 + 
     -       4*p24*s**2*s2 - 2*p46*s**2*s2 - 8*p24*p25*p46*tk + 
     -       8*p25*p46**2*tk + 8*p24**2*p56*tk - 8*p24*p46*p56*tk - 
     -       8*p24*p25*s*tk + 4*p25*p46*s*tk + 4*p24*p56*s*tk + 
     -       4*p24**2*s2*tk - 4*p24*p46*s2*tk + 4*p24*s*s2*tk + 
     -       2*p24*s2*tk**2 - 8*p24*p25*s*uk + 4*p25*p46*s*uk + 
     -       4*p24*p56*s*uk + 4*p24*s*s2*uk - 2*p46*s*s2*uk + 
     -       4*p14**2*(-2*p25 + s2)*uk - 8*p24*p25*tk*uk + 
     -       4*p25*p46*tk*uk + 4*p24*p56*tk*uk + 2*p46*s2*tk*uk + 
     -       s*s2*tk*uk + s2*tk*uk**2 + 
     -       4*p15*p24*(uk*(2*p14 + s + uk) - 2*p24*(2*s + tk + uk) + 
     -          2*p46*(2*s + tk + uk)) + 
     -       2*p14*(2*p25*(-2*p46*(s + tk - uk) + uk*(s + uk)) + 
     -          s2*(2*p46*(s - uk) - uk*(s + tk + uk)) + 
     -          p24*(4*p25*(2*s + tk + uk) - 
     -             2*(s2*(2*s + tk + uk) + 2*p56*(s + 2*uk)))))/
     -     ((2*p24 + 2*p25 - s2)*tk*uk*
     -       (-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)))
     
     
      amp2ll_rr =  
     .  2*((-4*p14*(4*p14*p56 - 2*p15*(2*p46 + tk) + s2*(2*p46 + tk)))/
     -     ((-2*p14 - 2*p15 + s2)**2*uk) + 
     -    (8*p14*(-4*p14*(p25 - p56) + s2*(-2*p24 + 2*p46 + s + tk) + 
     -         p15*(4*p24 - 2*(2*p46 + s + tk)))*
     -       (2*p24 + 2*p25 - s - uk))/
     -     ((-2*p14 - 2*p15 + s2)**2*
     -       (-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)*uk) - 
     -    (8*p25*(2*p14 + 2*p15 - s - tk)*
     -       (-4*p15*p24 + 4*p14*p25 - 4*p25*p46 + 4*p24*p56 + 
     -         2*p24*s + 2*p15*s2 - 2*p56*s2 - s*s2 + 2*p24*uk - s2*uk))
     -      /((-2*p24 - 2*p25 + s2)**2*tk*
     -       (-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)) + 
     -    (4*p25*(-4*p24*p46*s - 4*p25*p46*s + 
     -         4*p15*p46*(2*p24 + 2*p25 - s2) + 2*p46*s*s2 - 
     -         4*p24**2*tk - 4*p24*p25*tk - 4*p25*p46*tk + 
     -         4*p24*p56*tk + 4*p24*s2*tk + 2*p25*s2*tk - 2*p56*s2*tk - 
     -         s2**2*tk + 2*p14*(2*p24 + 2*p25 - s2)*
     -          (2*p24 + 2*p25 - 2*p56 - s2 - uk) + 2*p24*tk*uk - 
     -         s2*tk*uk))/
     -     ((-2*p24 - 2*p25 + s2)**2*
     -       (-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)**2) - 
     -    (4*p25*(4*p25*p46 - (2*p24 - s2)*(2*p56 + uk)))/
     -     ((-2*p24 - 2*p25 + s2)**2*tk) + 
     -    (4*p56*(p15*(4*p24 - 2*(2*p46 + s2)) - 
     -         (2*p24 - 2*p46 - s2)*(s + tk) + 
     -         p14*(-4*p25 + 4*p56 + 2*uk)))/
     -     (uk*(-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)**2) + 
     -    (4*p14*(8*p14**2*p25 + 
     -         2*p14*(4*p24*p56 - 2*p56*s - 2*p25*(2*p46 + 2*s2 + tk) + 
     -            p15*(8*p25 - 2*uk) - 2*p56*uk + s2*uk) + 
     -         (2*p15 - s2)*(4*p24*p56 - 2*p56*s - 
     -            2*p25*(2*p46 + s2 + tk) + p15*(4*p25 - 2*uk) + 
     -            2*p46*uk + s2*uk + tk*uk)))/
     -     ((-2*p14 - 2*p15 + s2)**2*
     -       (-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)**2) + 
     -    (4*p46*(-4*p14*p25 + 4*p25*p46 - 4*p24*p56 + 2*p56*s - 
     -         2*p24*s2 + s*s2 + 2*p25*tk + 2*p56*uk + s2*uk + 
     -         p15*(4*p24 - 2*(s + uk))))/
     -     (tk*(-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)**2) - 
     -    (2*(16*p14**3*p25 - 
     -         4*p14**2*(2*p56*s - 4*p24*s2 + s*s2 + 
     -            2*p25*(4*p46 + 2*p56 - s2 + tk) + 2*s2*uk + 
     -            2*p15*(2*p24 - 2*p25 + uk)) + 
     -         (2*p46 + tk)*(8*p15**2*p24 - 
     -            2*p15*(-4*p25*p46 + 2*p46*s + s*s2 + 
     -               2*p24*(2*p56 + s2 + tk) + 2*p46*uk) + 
     -            s2*(2*p46*s + 2*p56*s + s*s2 + 2*p24*tk + 2*p25*tk - 
     -               tk*uk)) - 
     -         2*p14*(8*p24*p46*p56 - 8*p46*p56*s - 4*p56**2*s + 
     -            8*p24*p46*s2 + s*s2**2 - 4*p24*p56*tk + 4*p24*s2*tk - 
     -            4*p25*(2*p46**2 - p46*s2 + p46*tk + p56*tk - s2*tk) - 
     -            4*p46*p56*uk - 4*p46*s2*uk + 2*p56*tk*uk - 
     -            2*s2*tk*uk + 4*p15**2*(2*p24 + uk) - 
     -            2*p15*(-4*p25*p46 - 2*p56*s + s*s2 + 
     -               2*p24*(4*p46 + 2*p56 + s2 + 2*tk) + 2*p46*uk + 
     -               2*p56*uk + s2*uk + tk*uk))))/
     -     ((2*p14 + 2*p15 - s2)*tk*
     -       (-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)**2) + 
     -    (2*(p14**2*(4*s2*uk + 8*p56*(s + uk) - 
     -            8*p25*(2*s + tk + uk)) - 
     -         (2*p24 - 2*p46 - s - tk)*
     -          (s2*(-2*p46*s + tk*(-2*p24 + uk)) + 
     -            4*p15*(p24*tk + p46*(s + uk))) + 
     -         2*p14*(-4*p24*p56*s - 4*p46*p56*s + 2*p56*s**2 - 
     -            4*p24*s*s2 + 2*p46*s*s2 + 2*s**2*s2 - 8*p24*p56*tk + 
     -            2*p56*s*tk - 2*p24*s2*tk + 2*s*s2*tk - 4*p46*p56*uk + 
     -            2*p56*s*uk - 2*p24*s2*uk - 2*p46*s2*uk + 2*s*s2*uk + 
     -            2*p56*tk*uk + s2*uk**2 + 
     -            4*p15*(-((p46 + s + tk)*(s + uk)) + 
     -               p24*(2*s + tk + uk)) + 
     -            2*p25*(tk*(2*p24 + s + tk) + 2*p46*(2*s + tk + uk)))))
     -      /((2*p14 + 2*p15 - s2)*tk*
     -       (-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)*uk) + 
     -    (2*(8*p25**2*p46*s - 8*p24*p25*p56*s - 8*p25*p46*p56*s + 
     -         8*p24*p56**2*s - 8*p24*p25*s**2 + 4*p25*p46*s**2 + 
     -         4*p24*p56*s**2 + 4*p25*p56*s*s2 - 4*p56**2*s*s2 + 
     -         4*p25*s**2*s2 - 2*p56*s**2*s2 + 8*p25**2*p46*tk - 
     -         8*p24*p25*p56*tk - 8*p25*p46*p56*tk + 8*p24*p56**2*tk - 
     -         8*p24*p25*s*tk + 4*p25*p46*s*tk + 4*p24*p56*s*tk + 
     -         4*p25**2*s2*tk - 4*p25*p56*s2*tk + 4*p25*s*s2*tk + 
     -         2*p25*s2*tk**2 - 8*p24*p25*s*uk + 4*p25*p46*s*uk + 
     -         4*p24*p56*s*uk + 4*p25*s*s2*uk - 2*p56*s*s2*uk + 
     -         4*p15**2*(-2*p24 + s2)*uk - 8*p24*p25*tk*uk + 
     -         4*p25*p46*tk*uk + 4*p24*p56*tk*uk + 2*p56*s2*tk*uk + 
     -         s*s2*tk*uk + s2*tk*uk**2 + 
     -         4*p14*p25*(uk*(s + uk) - 2*p25*(2*s + tk + uk) + 
     -            2*p56*(2*s + tk + uk)) + 
     -         2*p15*(s2*(2*p56*(s - uk) - uk*(s + tk + uk)) + 
     -            2*p24*(-2*p56*(s + tk - uk) + uk*(s + uk) + 
     -               2*p25*(2*s + tk + uk)) - 
     -            2*p25*(2*s*s2 + s2*tk - 2*p14*uk + s2*uk + 
     -               2*p46*(s + 2*uk)))))/
     -     ((2*p24 + 2*p25 - s2)*tk*uk*
     -       (-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)) - 
     -    (2*(-8*p24*p25*p46*s - 8*p25**2*p46*s + 8*p25*p46**2*s + 
     -         16*p25*p46*p56*s - 8*p24*p56**2*s + 4*p24*p25*s*s2 - 
     -         4*p25**2*s*s2 - 4*p24*p56*s*s2 + 4*p46*p56*s*s2 + 
     -         4*p56**2*s*s2 - 2*p25*s*s2**2 + 2*p56*s*s2**2 - 
     -         8*p24**2*p25*tk - 8*p24*p25**2*tk + 8*p24*p25*p46*tk + 
     -         8*p24*p25*p56*tk + 8*p25*p46*p56*tk - 8*p24*p56**2*tk + 
     -         4*p24*p25*s2*tk - 8*p25**2*s2*tk + 8*p25*p56*s2*tk - 
     -         4*p24*p56*s*uk - 2*p24*s*s2*uk + 2*p46*s*s2*uk + 
     -         2*p56*s*s2*uk + s*s2**2*uk + 4*p24*p25*tk*uk - 
     -         4*p25*p46*tk*uk - 4*p24*p56*tk*uk + 4*p25*s2*tk*uk - 
     -         2*p56*s2*tk*uk - s2*tk*uk**2 + 
     -         2*p14*(8*p25**3 + s2*uk*(2*p56 + uk) - 
     -            4*p25**2*(2*p46 + 4*p56 - s2 + uk) + 
     -            4*p25*(2*p56**2 - p56*s2 + p46*uk + p56*uk - s2*uk) + 
     -            4*p24*(2*p25**2 - 2*p25*p56 + p56*(2*p56 + uk))) - 
     -         2*p15*(-8*p25**2*s2 - s2*uk*(2*p56 + uk) + 
     -            4*p25*(2*p46*p56 + 2*p56*s2 - p46*uk + s2*uk) + 
     -            p24**2*(8*p25 - 4*(2*p56 + uk)) + 
     -            2*p24*(4*p25**2 + (2*p56 + uk)*(2*p46 + s2 + uk) - 
     -               2*p25*(2*p46 + 4*p56 + s2 + 2*uk)))))/
     -     ((2*p24 + 2*p25 - s2)*uk*
     -       (-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)**2))
      amp2lr_ll = 
     .         (-8*((2*p24 + 2*p25 - s2)*tk*
     -       (4*p15**2*(p24 - p46) + 4*p14**2*(p25 - p56) - 
     -         s2*(p24 + p25 - p46 - p56 - s - tk)*(s + tk) + 
     -         p15*(4*p24**2 + 4*p46**2 - 4*p46*p56 + 4*p46*s - 
     -            4*p56*s2 - s*s2 + 4*p25*(p46 + s2) + 4*p46*tk - 
     -            s2*tk - 4*p24*(p25 + 2*p46 - p56 + s + tk)) - 
     -         p14*(-4*p25**2 - 4*p25*p46 + 8*p25*p56 + 4*p46*p56 - 
     -            4*p56**2 + 4*p25*s - 4*p56*s + 
     -            4*p24*(p25 - p56 - s2) + 4*p46*s2 + s*s2 + 4*p25*tk - 
     -            4*p56*tk + s2*tk + 
     -            4*p15*(p24 + p25 - p46 - p56 - 2*uk)))*
     -       (2*p24 + 2*p25 - s - uk) + 
     -      (2*p14 + 2*p15 - s2)*uk*
     -       (-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)*
     -       (-4*p24*p25*p46 + 4*p25**2*p46 - 4*p25*p46**2 + 
     -         4*p24**2*p56 - 4*p24*p25*p56 + 4*p24*p46*p56 + 
     -         4*p25*p46*p56 - 4*p24*p56**2 - 2*p25*p46*s - 
     -         2*p24*p56*s + 4*p24*p46*s2 + 4*p25*p56*s2 - p46*s*s2 - 
     -         p56*s*s2 - 4*p24*p25*tk - 4*p25*p46*uk - 4*p24*p56*uk + 
     -         p24*s2*uk + p25*s2*uk - p46*s2*uk - p56*s2*uk - 
     -         s*s2*uk - s2*uk**2 + 2*p14*p25*(2*p46 - 2*p56 + uk) + 
     -         2*p15*p24*(-2*p46 + 2*p56 + uk)) + 
     -      (2*p24 + 2*p25 - s2)*tk*
     -       (-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)*
     -       (4*p15**2*p46 + 4*p14**2*p56 - 
     -         s2*(p46 + p56 + tk)*(s + tk) + 
     -         p15*(-4*p46**2 + 4*p46*p56 - 2*p46*s + 4*p56*s2 - 
     -            4*p46*tk + s2*tk + 2*p24*(2*p46 - 2*p56 + tk)) + 
     -         p14*(-4*p25*p46 + 4*p25*p56 + 4*p46*p56 - 4*p56**2 - 
     -            2*p56*s + 4*p46*s2 + 2*p25*tk - 4*p56*tk + s2*tk - 
     -            4*p15*(p46 + p56 + uk))) + 
     -      (2*p14 + 2*p15 - s2)*(2*p14 + 2*p15 - s - tk)*uk*
     -       (4*p15**2*p24 + 4*p14**2*p25 + 4*p24*p25*p46 - 
     -         4*p25**2*p46 + 4*p25*p46**2 - 4*p24**2*p56 + 
     -         4*p24*p25*p56 - 4*p24*p46*p56 - 4*p25*p46*p56 + 
     -         4*p24*p56**2 + 4*p25*p46*s + 4*p24*p56*s - 
     -         4*p24*p46*s2 - 4*p25*p56*s2 - p24*s*s2 - p25*s*s2 + 
     -         p46*s*s2 + p56*s*s2 + s**2*s2 + 8*p24*p25*tk + 
     -         4*p25*p46*uk + 4*p24*p56*uk - p24*s2*uk - p25*s2*uk + 
     -         p46*s2*uk + p56*s2*uk + 2*s*s2*uk + s2*uk**2 - 
     -         p14*(-4*p25**2 + 4*p15*(p24 + p25) + 8*p25*p46 - 
     -            4*p25*p56 + 4*p25*s + 4*p24*(p25 - p56 - s2) + s*s2 + 
     -            4*p25*uk + s2*uk) + 
     -         p15*(4*p24**2 + 4*p25*(p46 + s2) - s2*(s + uk) - 
     -            4*p24*(p25 - p46 + 2*p56 + s + uk))) + 
     -      (2*p14 + 2*p15 - 2*p46 - 2*p56 - s2 - tk)*
     -       (-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk)*
     -       (p15**2*(-4*p24*(s + tk) + 2*s2*uk) + 
     -         p14**2*(-4*p25*(s + tk) + 2*s2*uk) - 
     -         s2*(2*p46**2*s - 2*p25*p56*s + 2*p56**2*s - p25*s**2 + 
     -            2*p56*s**2 + s**3 - 2*p24**2*tk - 2*p25**2*tk + 
     -            2*p25*p56*tk + p25*s*tk + p56*s*tk + s**2*tk + 
     -            p25*tk**2 - p25*s*uk + p56*s*uk + s**2*uk + s*tk*uk + 
     -            p46*s*(2*s + tk + uk) + 
     -            p24*(-2*p46*s - s**2 + 2*p46*tk + s*tk + tk**2 - s*uk)
     -            ) + p15*(-4*p24**2*(s + uk) - 
     -            2*p25*(2*p46 + s2)*(2*s + tk + uk) + 
     -            s2*(s**2 + 2*p56*(s - uk) + s*(tk - uk) - uk**2) + 
     -            4*p24*(p25*(s + uk) + p46*(s + uk) + 
     -               (s + tk)*(p56 + s + uk))) + 
     -         p14*(-4*p25**2*s + 4*p25*p46*s + 4*p25*p56*s + 
     -            4*p25*s**2 + 2*p46*s*s2 + s**2*s2 + 4*p25*p46*tk + 
     -            4*p25*s*tk + s*s2*tk + 4*p15*(p24 + p25)*(s + tk) - 
     -            4*p25**2*uk + 4*p25*p56*uk + 4*p25*s*uk - 
     -            2*p46*s2*uk - s*s2*uk + 4*p25*tk*uk - s2*uk**2 + 
     -            p24*(4*p25*(s + uk) - 2*(2*p56 + s2)*(2*s + tk + uk)))
     -         ) + (2*p24 + 2*p25 - 2*p46 - 2*p56 - s2 - uk)*uk*
     -       (p15**2*(-8*p24**2 + 8*p25*p46 - 8*p25*s2 + 2*s2*uk + 
     -            p24*(8*p25 + 8*p46 - 4*(s2 + uk))) + 
     -         2*p14**2*(-4*p25**2 + 4*p24*(p25 + p56 - s2) + s2*uk + 
     -            p25*(4*p56 - 2*(s2 + uk))) - 
     -         s2*(2*p46**2*s + 2*p24*p56*s + 2*p56**2*s + p56*s*s2 + 
     -            s**2*s2 + p56*s*tk + s*s2*tk + p24*tk**2 + 
     -            p25*(2*p46*s + tk*(4*p24 + 2*p56 + tk)) + p56*s*uk + 
     -            s*s2*uk + s*tk*uk + p46*(2*p24*tk + s*(s2 + tk + uk)))
     -           - p14*(-8*p25**2*p46 - 8*p24**2*p56 + 4*p25*p46*s - 
     -            4*p25*p46*s2 - 4*p25*p56*s2 - 6*p25*s*s2 - 
     -            2*p46*s*s2 + 2*p56*s*s2 - s*s2**2 - 4*p25*p46*tk - 
     -            4*p25*s2*tk - 4*p25*p56*uk - 4*p25*s2*uk + 
     -            2*p46*s2*uk - 4*p25*tk*uk + s2*uk**2 + 
     -            4*p15*(2*p24**2 + 2*p25**2 + s2*uk + 
     -               p25*(2*p46 + 2*p56 + s2 + uk) + 
     -               p24*(-4*p25 + 2*p46 + 2*p56 + s2 + uk)) + 
     -            2*p24*(4*p25*(p46 + p56 + tk) + 2*p56*(s + tk + uk) - 
     -               s2*(4*p46 + s + 2*tk + uk))) + 
     -         p15*(8*p25**2*p46 + 8*p24**2*p56 + 
     -            p24*(4*p46*s2 + 6*s*s2 + 4*s2*tk - 
     -               8*p25*(p46 + p56 + tk) + 4*p56*(-s + s2 + tk) + 
     -               4*p46*uk + 4*s2*uk + 4*tk*uk) + 
     -            s2*(-2*p46*s + s*s2 + 2*p56*(s - uk) - uk**2) + 
     -            p25*(-4*p46*(s + tk + uk) + 
     -               2*s2*(4*p56 + s + 2*tk + uk)))) + 
     -      (2*p14 + 2*p15 - s2)*(-2*p24 - 2*p25 + s2)*
     -       (-4*p24*p25*p46*s + 4*p25**2*p46*s + 4*p25*p46**2*s + 
     -         4*p24**2*p56*s - 4*p24*p25*p56*s - 4*p24*p46*p56*s - 
     -         4*p25*p46*p56*s + 4*p24*p56**2*s - 4*p25*p46*s**2 - 
     -         4*p24*p56*s**2 + 8*p46*p56*s**2 + 2*p24*p46*s*s2 - 
     -         2*p46**2*s*s2 + 2*p25*p56*s*s2 - 2*p56**2*s*s2 + 
     -         p24*s**2*s2 + p25*s**2*s2 - s**3*s2 - 4*p24*p25*p46*tk + 
     -         4*p25**2*p46*tk + 4*p25*p46**2*tk + 4*p24**2*p56*tk - 
     -         4*p24*p25*p56*tk - 4*p24*p46*p56*tk - 4*p25*p46*p56*tk + 
     -         4*p24*p56**2*tk - 8*p24*p25*s*tk + 8*p46*p56*s*tk + 
     -         2*p24**2*s2*tk + 2*p25**2*s2*tk - 2*p24*p46*s2*tk - 
     -         2*p25*p56*s2*tk + 2*p24*s*s2*tk + 2*p25*s*s2*tk - 
     -         2*s**2*s2*tk - 8*p24*p25*tk**2 + 4*p25*p46*tk**2 + 
     -         4*p24*p56*tk**2 + p24*s2*tk**2 + p25*s2*tk**2 - 
     -         s*s2*tk**2 - 4*p25*p46*s*uk - 4*p24*p56*s*uk + 
     -         8*p46*p56*s*uk + p24*s*s2*uk + p25*s*s2*uk - 
     -         2*s**2*s2*uk - 4*p25*p46*tk*uk - 4*p24*p56*tk*uk + 
     -         8*p46*p56*tk*uk - p24*s2*tk*uk - p25*s2*tk*uk + 
     -         2*p46*s2*tk*uk + 2*p56*s2*tk*uk - 2*s*s2*tk*uk - 
     -         s*s2*uk**2 + p15**2*
     -          (2*s2*uk + 4*p46*(s + uk) - 4*p24*(s + 2*uk)) + 
     -         p14**2*(2*s2*uk + 4*p56*(s + uk) - 4*p25*(s + 2*uk)) + 
     -         p15*(-4*p24**2*(s + 2*tk) + 4*p46**2*(s + uk) - 
     -            4*p46*(s**2 + p25*tk + s*tk + p25*uk + tk*uk - 
     -               uk**2 + p56*(s + uk)) + 
     -            4*p24*(s**2 + 2*p46*tk - p56*tk + p25*(s + 2*tk) - 
     -               p46*uk + 2*p56*uk + 2*tk*uk + s*(tk + uk)) + 
     -            s2*(s**2 + s*tk + 2*p56*(s - uk) + 2*s*uk - tk*uk + 
     -               uk**2 - 2*p25*(2*s + tk + uk))) + 
     -         p14*(4*p24*p25*s - 4*p25**2*s - 4*p46*p56*s + 
     -            4*p56**2*s + 4*p25*s**2 - 4*p56*s**2 - 4*p24*s*s2 + 
     -            2*p46*s*s2 + s**2*s2 + 8*p24*p25*tk - 8*p25**2*tk - 
     -            4*p25*p46*tk - 4*p24*p56*tk + 8*p25*p56*tk + 
     -            4*p25*s*tk - 4*p56*s*tk - 2*p24*s2*tk + s*s2*tk + 
     -            8*p25*p46*uk - 4*p24*p56*uk - 4*p25*p56*uk - 
     -            4*p46*p56*uk + 4*p56**2*uk + 4*p25*s*uk - 
     -            2*p24*s2*uk - 2*p46*s2*uk + 2*s*s2*uk + 8*p25*tk*uk - 
     -            4*p56*tk*uk - s2*tk*uk + 4*p56*uk**2 + s2*uk**2 + 
     -            4*p15*(-((s + uk)*(p46 + p56 + 2*uk)) + 
     -               p24*(s + 2*uk) + p25*(s + 2*uk)))) + 
     -      tk*uk*(-8*p15**3*p24 - 8*p14**3*p25 + 
     -         2*p14**2*(4*p15*p24 - 8*p25**2 + 4*p25*p46 - 
     -            4*p24*(2*p25 + p56) + 6*p25*s + 6*p25*s2 + s*s2 + 
     -            2*p25*tk + 4*p25*uk - s2*uk) - 
     -         p15*(8*p24**3 + 8*p25**2*p46 - 
     -            4*p24**2*(2*p46 + 3*s + 3*s2 + 2*tk + uk) + 
     -            s2*(2*p46*s + 4*p56*s + 3*s**2 + 3*s*s2 + s*tk - 
     -               2*p56*uk + s*uk - s2*uk - uk**2) + 
     -            p24*(-8*p25**2 + 4*p56*s + 4*s**2 + 4*p56*s2 + 
     -               4*s*s2 + 4*s2**2 + 4*p56*tk + 4*s*tk + 6*s2*tk - 
     -               4*p25*(s + s2 + 2*tk - uk) + 4*s*uk + 6*s2*uk + 
     -               4*tk*uk + 4*p46*(s + s2 + uk)) - 
     -            4*p25*(2*s*s2 + p46*(2*s + 2*s2 + tk + uk))) + 
     -         s2*(2*p24**2*(s - tk) + 2*p25**2*(s - tk) + 
     -            p24*(4*p25*s - 4*p46*s - 2*p56*s - 3*s**2 - 3*s*s2 + 
     -               2*p46*tk - s*tk + s2*tk + tk**2 - s*uk) - 
     -            p25*(2*p46*s + 4*p56*s + 3*s**2 + 3*s*s2 - 2*p56*tk + 
     -               s*tk - s2*tk - tk**2 + s*uk) + 
     -            s*(2*p46**2 + 2*p56**2 + 
     -               (s + s2 + tk)*(s + s2 + uk) + 
     -               p46*(2*s + 2*s2 + tk + uk) + 
     -               p56*(2*s + 2*s2 + tk + uk))) + 
     -         p14*(8*p15**2*p25 - 8*p25**3 + 8*p24**2*(p25 - p56) + 
     -            8*p25**2*p56 + 12*p25**2*s - 4*p25*p46*s - 
     -            4*p25*p56*s - 4*p25*s**2 + 12*p25**2*s2 - 
     -            4*p25*p46*s2 - 4*p25*p56*s2 - 4*p25*s*s2 - 
     -            4*p46*s*s2 - 2*p56*s*s2 - 3*s**2*s2 - 4*p25*s2**2 - 
     -            3*s*s2**2 + 8*p25**2*tk - 4*p25*p46*tk - 4*p25*s*tk - 
     -            6*p25*s2*tk - s*s2*tk + 4*p25**2*uk - 4*p25*p56*uk - 
     -            4*p25*s*uk - 6*p25*s2*uk + 2*p46*s2*uk - s*s2*uk + 
     -            s2**2*uk - 4*p25*tk*uk + s2*uk**2 + 
     -            4*p24*(2*s*s2 + p25*(s + s2 + 2*tk - uk) + 
     -               p56*(2*s + 2*s2 + tk + uk)) - 
     -            4*p15*(4*p24**2 + 4*p25**2 - s*s2 + 
     -               p24*(8*p25 - s - s2 + tk - 2*uk) - 
     -               p25*(s + s2 - tk + 2*uk))) - 
     -         2*p15**2*(8*p24**2 + 4*p25*p46 + s2*(-s + uk) + 
     -            p24*(8*p25 - 2*(2*p56 + 3*s + 3*s2 + tk + 2*uk)))) + 
     -      (2*p14 + 2*p15 - 2*p46 - 2*p56 - s2 - tk)*tk*
     -       (-8*p15**2*(p24 + p25)*(p24 - p46) - 
     -         8*p14**2*(p24 + p25)*(p25 - p56) + 
     -         s2*(2*p24**2*tk + 2*p25**2*tk - 
     -            p24*(-2*p46*s + 2*p56*s - s*s2 + 4*p25*tk + 
     -               2*p46*tk + tk**2) - 
     -            p25*(2*p46*s - 2*p56*s - s*s2 + 2*p56*tk + tk**2) - 
     -            s*(2*p46**2 + 2*p56**2 + s*s2 + s2*tk + s2*uk + 
     -               tk*uk + p46*(s2 + tk + uk) + p56*(s2 + tk + uk)))
     -          + p15*(8*p25**2*(p46 - s2) + 
     -            p24**2*(8*p56 - 4*(s2 + tk)) - 
     -            s2*(2*p46*s + uk*(2*p56 + uk)) + 
     -            p24*(4*p56*s2 + 6*s*s2 + 4*p56*tk + 4*s2*tk - 
     -               4*p25*(2*p46 + 2*p56 + s2 + tk) + 4*s2*uk + 
     -               4*tk*uk + 4*p46*(-s + s2 + uk)) + 
     -            p25*(-4*p46*(s + tk + uk) + 
     -               2*s2*(4*p56 + s + tk + 2*uk))) + 
     -         p14*(8*p25**2*p46 - 4*p25*p56*s + 8*p24**2*(p56 - s2) - 
     -            4*p25**2*s2 + 4*p25*p46*s2 + 4*p25*p56*s2 + 
     -            6*p25*s*s2 - 2*p56*s*s2 - 4*p25**2*tk + 
     -            4*p25*p46*tk + 4*p25*s2*tk + 4*p25*p56*uk + 
     -            4*p25*s2*uk - 2*p46*s2*uk + 4*p25*tk*uk - s2*uk**2 - 
     -            2*p24*(2*p25*(2*p46 + 2*p56 + s2 + tk) + 
     -               2*p56*(s + tk + uk) - s2*(4*p46 + s + tk + 2*uk))
     -             + 4*p15*(2*p24**2 + 2*p25**2 - s2*uk - 
     -               2*p25*(p46 + p56 + uk) + 
     -               p24*(4*p25 - 2*(p46 + p56 + uk)))))))/
     -  ((2*p14 + 2*p15 - s2)*(-2*p24 - 2*p25 + s2)*tk*
     -    (-2*p14 - 2*p15 + 2*p46 + 2*p56 + s2 + tk)*uk*
     -    (-2*p24 - 2*p25 + 2*p46 + 2*p56 + s2 + uk))
      
      amp2rr_ll = amp2ll_rr
      amp2rr_rr = amp2ll_ll
      amp2lr_rr = amp2lr_ll 
      
	
c     lh lepton, lh quark       
      amp2   = amp2ll_ll * zql**2 * zel**2
c    lh lepton, rh quark 
      amp2 = amp2 + amp2rr_ll * zqr**2 * zel**2
c    rh lepton, lh quark 
      amp2 = amp2 + amp2ll_rr * zer**2 * zql**2
c    rh lepton, rh quark    
      amp2 = amp2 + amp2rr_rr * zer**2 * zqr**2 
c      lh lepton, rh and lh quarks
      amp2 = amp2 + amp2lr_ll * zel**2 * zqr*zql
c      rh lepton, rh and lh quarks
      amp2 = amp2 + amp2lr_rr * zer**2 * zqr*zql      
            
      amp2 = pre * amp2	
	
      call RGE_s(LambdaNP,rg)
      amp2 = rg**2 * amp2		
	
c     COLOUR FACTORS AND QUARK-GLUON SWITCH
c     colour factors: CF*n from sum over initial colours, 1/4 from
c     average over initial spins, 1/n from average over quark colours
c     and 1/(n^2-1) from average over gluon colours
      if(rflav(6).eq.0) then
         colfac=CF
      else
	  colfac=-1/2d0 
      endif

      
      amp2=amp2*colfac * (8d0 * pi**2)

c include color factors 	      
      
      
      end      
      