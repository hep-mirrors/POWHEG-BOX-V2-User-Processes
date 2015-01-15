c
c provide POWHEG momenta in format required for RW Born amplitudes and 
c call amplitude routines: 
c
      subroutine tth_interface(nlo,p,flav,born,virt)

      implicit none
      include 'nlegborn.h'
      include 'coupl.inc'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'

      real*8 mtop,alphas,mb
      common/topas/mtop,alphas,mb
      real*8 mh
      common/smhiggs/mh
      real*8 gmu
      common/gf/gmu
      real*8 delta,muedr
      common/dimreg/delta,muedr
c
      integer nlo
      real * 8 p(0:3,nlegborn)
      integer flav(nlegborn)
      real * 8 born,virt
      integer flav_id
      real*8 sig0qq(2),sig0gg(2),dum
      real*8 sigvqq(2),sigvgg(2)
c coefficients of IR single and double poles (for testing only)
      real*8 sigv_irpole(2,2),sigvqq_ir(2,2),sigvgg_ir(2,2)
*
c four-momenta and invariants
*
      real*8 pt(4),ptb(4),ph(4),b1(4),b2(4)
      real*8 sp,t1(2),t2(2),u1(2),u2(2)

      logical ps_test
      parameter (ps_test=.false.) 
*
      mtop=tmass
      mb=bmass
      mh=hmass
      alphas=g**2/4d0/pi !should be identical to st_alpha
c
      gmu = ph_gfermi

      delta=1d0
c renormalization scale
      muedr = dsqrt(st_muren2) !value set in POWHEG

c initialize:
      born = 0d0
      virt = 0d0
c
c determine which channel we need:
c
      if (flav(1).eq.0) then !gg
         flav_id = 2
      elseif (flav(1).gt.0) then 
         flav_id = 1 !gives qqbar
      else 
         flav_id = -1 !gives qbar q
      endif    

c four momenta:
c top 
      pt(1:3) = p(1:3,4)
      pt(4)   = p(0,4)
c
c anti-top
      ptb(1:3) = p(1:3,5)
      ptb(4)   = p(0,5)
c
c Higgs 
      ph(1:3) = p(1:3,3)
      ph(4)   = p(0,3)
c
c beam
      if (flav_id.ge.0) then !gg or qqbar
c quark:
      b1(1:3) = p(1:3,1)
      b1(4)   = p(0,1)
c
c anti-quark
      b2(1:3) = p(1:3,2)
      b2(4)   = p(0,2)

      else !qbar q
c quark:
      b2(1:3) = p(1:3,1)
      b2(4)   = p(0,1)
c
c anti-quark
      b1(1:3) = p(1:3,2)
      b1(4)   = p(0,2)
c
      endif
c
c test only:
      if (ps_test) then 

         flav_id = 3

         mtop=174d0
         mb=4.62d0
         mh=120d0
         alphas=0.103333317d0
c
         delta=1d0
c renormalization scale
         muedr=mtop+mh/2d0
c
c -------------
c
c four-momenta:
c top
         pt(1) =0.37488727004042E+03
         pt(2) =0.14208858355010E+03
         pt(3) =0.33225880881270E+01
         pt(4) =0.43705453939438E+03
c anti-top
         ptb(1)=-.21193405130532E+03
         ptb(2)=-.14485755375664E+03
         ptb(3)=-.11623578114433E+03
         ptb(4)=0.33118953757822E+03
c Higgs
         ph(1) =-.16295321873510E+03
         ph(2) =0.27689702065438E+01
         ph(3) =0.11291319305621E+03
         ph(4) =0.23175592302740E+03

c beam momenta
c quark:
         b1(1) =0.00000000000000E+00
         b1(2) =0.00000000000000E+00
         b1(3) =0.50000000000000E+03
         b1(4) =0.50000000000000E+03
c anti-quark
         b2(1) =0.00000000000000E+00
         b2(2) =0.00000000000000E+00
         b2(3) =-.50000000000000E+03
         b2(4) =0.50000000000000E+03
c
c ---------------
c
      endif !ps_test
c     
c
c calculate the invariants :
c
      sp=(b1(4)+b2(4))**2-((b1(1)+b2(1))**2+
     $     (b1(2)+b2(2))**2+(b1(3)+b2(3))**2)
      t1(1)=(b1(4)-pt(4))**2-((b1(1)-pt(1))**2+
     $     (b1(2)-pt(2))**2+(b1(3)-pt(3))**2)
      t2(1)=(b2(4)-ptb(4))**2-((b2(1)-ptb(1))**2+
     $     (b2(2)-ptb(2))**2+(b2(3)-ptb(3))**2)
      u1(1)=(b2(4)-pt(4))**2-((b2(1)-pt(1))**2+
     $     (b2(2)-pt(2))**2+(b2(3)-pt(3))**2)
      u2(1)=(b1(4)-ptb(4))**2-((b1(1)-ptb(1))**2+
     $     (b1(2)-ptb(2))**2+(b1(3)-ptb(3))**2)
*
      t1(2)=(b2(4)-pt(4))**2-((b2(1)-pt(1))**2+
     $     (b2(2)-pt(2))**2+(b2(3)-pt(3))**2)
      t2(2)=(b1(4)-ptb(4))**2-((b1(1)-ptb(1))**2+
     $     (b1(2)-ptb(2))**2+(b1(3)-ptb(3))**2)
      u1(2)=(b1(4)-pt(4))**2-((b1(1)-pt(1))**2+
     $     (b1(2)-pt(2))**2+(b1(3)-pt(3))**2)
      u2(2)=(b2(4)-ptb(4))**2-((b2(1)-ptb(1))**2+
     $     (b2(2)-ptb(2))**2+(b2(3)-ptb(3))**2)
c     
c calculate the matrix elements squared at the parton level:	
c
      call tthvirt(nlo,abs(flav_id),
     &     sp,t1,t2,u1,u2,sig0qq,sig0gg,sigvqq,sigvgg,
     &     sigvqq_ir,sigvgg_ir)

      if (abs(flav_id).eq.1) then !qqbar
         born = sig0qq(1)
         virt = sigvqq(1)
      else  !gg
         born = sig0gg(1)
         virt = sigvgg(1)
      endif   

      if (ps_test) then
         write(6,*)'LO:',sig0qq,sig0gg
         write(6,*)'virt:',sigvqq,sigvgg
         print*
         stop
      endif


c RW virtuals in paper contain overall factor
c
c     N_RW = (4*Pi)^eps*Gamma(1+eps) * (mur^2/mtop^2)^eps
c
c POWHEG requires overall factor 
c
c     N_P = (4*Pi)^eps/Gamma(1-eps) * (mur^2/Q^2)^eps
c
c --> need to convert finite part of virtuals from RW to POWHEG convention:
c
c
c     virt_fin,P = virt_fin,RW 
c                + Born*(1/2 log^2 * DP + pi**2/6 * DP + log * SP)
c
c     with
c     
c     log = ln(q^2/mtop^2)
c     DP ... coefficient of double pole
c     SP ... coefficient of single pole
c
c poles are extracted from hep-ph/0109066, Eq. (23) for qq->ttH;
c
c for gg->ttH need to use (30) from PRD 68 paper (correction terms no longer prop to Born!)
c
c these conversions are performed internally in libqq.f and libglue.f
     

      return
      end
