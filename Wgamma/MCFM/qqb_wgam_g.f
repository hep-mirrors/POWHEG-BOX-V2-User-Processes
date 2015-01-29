      subroutine qqb_wgam_g(p,rflav,amp2)
      implicit none
C-----Author Keith Ellis, September 2002
C----- updated: John Campbell, August 2011 (anomalous couplings)
c----Matrix element for W gam production
C----averaged over initial colours and spins
C For nwz=+1
c     u(-p1)+dbar(-p2)-->W^+(n(p3)+e^+(p4)) + gamma(p5) + g(p6)
C For nwz=-1
c     ubar(-p1)+d(-p2)-->W^-(e^-(p3)+nbar(p4)) + gamma(p5) + g(p6)
c---
      include 'nlegborn.h'
      include 'constants.f'
      include 'zprods_com.f'
      include 'PhysPars.h'

      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'mathx.h'

      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode   

      double precision p(nlegreal,4),fac
      double precision qbq,qqb,qg,gq,qbg,gqb,amp2
      double precision ubdgmsq
      integer rflav(nlegreal)

      call spinoru(6,p,za,zb)
c      fac=V/2d0*gwsq**2*4d0*gsq*esq

      fac=V/2d0*ph_unit_e**4/ph_sthw2**2*4d0*ph_unit_e0**2


c aveqg = 1/4/3/8
c aveqq = 1/4/3/3
      

      if (idvecbos.lt.0) then 

      if (rflav(1).eq.0
     +        .and.mod(abs(rflav(2)),2).eq.1) then

          amp2=aveqg*fac*ubdgmsq(6,2,3,4,5,1,za,zb)

      elseif (rflav(2).eq.0
     +        .and.mod(abs(rflav(1)),2).eq.1) then

          amp2=aveqg*fac*ubdgmsq(6,1,3,4,5,2,za,zb)

      elseif (rflav(1).eq.0
     +        .and.mod(abs(rflav(2)),2).eq.0) then

          amp2=aveqg*fac*ubdgmsq(2,6,3,4,5,1,za,zb)

      elseif (rflav(2).eq.0
     +        .and.mod(abs(rflav(1)),2).eq.0) then

          amp2=aveqg*fac*ubdgmsq(1,6,3,4,5,2,za,zb)

      elseif (mod(abs(rflav(1)),2).eq.0
     +        .and.mod(abs(rflav(2)),2).eq.1) then

          amp2=aveqq*fac*ubdgmsq(1,2,3,4,5,6,za,zb)

      elseif (mod(abs(rflav(2)),2).eq.0
     +        .and.mod(abs(rflav(1)),2).eq.1) then

          amp2=aveqq*fac*ubdgmsq(2,1,3,4,5,6,za,zb)

      endif

      else

      if (rflav(1).eq.0
     +        .and.mod(abs(rflav(2)),2).eq.1) then

          amp2=aveqg*fac*ubdgmsq(2,6,4,3,5,1,zb,za)

      elseif (rflav(2).eq.0
     +        .and.mod(abs(rflav(1)),2).eq.1) then

          amp2=aveqg*fac*ubdgmsq(1,6,4,3,5,2,zb,za)

      elseif (rflav(1).eq.0
     +        .and.mod(abs(rflav(2)),2).eq.0) then

          amp2=aveqg*fac*ubdgmsq(6,2,4,3,5,1,zb,za)

      elseif (rflav(2).eq.0
     +        .and.mod(abs(rflav(1)),2).eq.0) then

          amp2=aveqg*fac*ubdgmsq(6,1,4,3,5,2,zb,za)

      elseif (mod(abs(rflav(1)),2).eq.1
     +        .and.mod(abs(rflav(2)),2).eq.0) then

          amp2=aveqq*fac*ubdgmsq(2,1,4,3,5,6,zb,za)

      elseif (mod(abs(rflav(2)),2).eq.1
     +        .and.mod(abs(rflav(1)),2).eq.0) then

          amp2=aveqq*fac*ubdgmsq(1,2,4,3,5,6,zb,za)

      endif

      endif
     

      return
      end

      double precision function ubdgmsq(p1,p2,p3,p4,p5,p6,za,zb)
      implicit none
C     Matrix element for 
C     ub(-p1)+d(-p2)=e-(p3)+nu~(p4)+gamma(p5)+g(p6)
      include 'nlegborn.h'
      include 'constants.f'
      include 'sprods_com.f'
      include 'zprods_decl.f'
      include 'PhysPars.h'
c      include 'anomcoup.f'
      integer p1,p2,p3,p4,p5,p6
      double complex aLL,aRR,aRL,aLR,prp34,prp345,zazb
      double precision s345,s156,s256,xfac
      double precision xdelk_g,xlambda_g


      zazb(p1,p2,p3,p4)=+za(p1,p2)*zb(p2,p4)+za(p1,p3)*zb(p3,p4)


c anomalous couplings 

      xdelk_g = 0d0
      xlambda_g = 0d0

      s156=s(p1,p5)+s(p1,p6)+s(p5,p6)
      s256=s(p2,p5)+s(p2,p6)+s(p5,p6)
      s345=s(p3,p4)+s(p3,p5)+s(p4,p5)
      prp34=s(p3,p4)/dcmplx(s(p3,p4)-ph_Wmass2,ph_WmWw)

c--- apply a dipole form factor to anomalous couplings, with power two (only if tevscale > 0)
c      if (tevscale .gt. 0d0) then
c        xfac=1d0/(1d0+s345/(tevscale*1d3)**2)**2
c      else
c        xfac=1d0
c      endif
c      xdelk_g=xfac*delk_g
c      xlambda_g=xfac*lambda_g

c      if (zerowidth) then
c--- zerowidth: no final state radiation, so we can set prp345 to zero

c
c        prp345=0d0 
c        prp34 = ph_WmWw * prp34  !NWA
c

c      else
c--- otherwise, usual Breit-Wigner form
        prp345=s345/dcmplx(s345-ph_Wmass2,Ph_WmWw)
c      endif

c---  c.f. Eqs.(4.9)-(4.12) of hep-ph/9803250 (multiplied by -i)
c---       for the terms proportional to prp34
      aRR=za(p1,p3)**2/(za(p1,p6)*za(p2,p6)*(s345-s(p3,p4)))*(
     &  Qd*(+zazb(p2,p3,p4,p5)/za(p4,p3)*prp34
     &      +za(p2,p5)*zb(p4,p5)/za(p3,p5)*prp345)/za(p2,p5)
     & +Qu*(+zazb(p1,p3,p4,p5)/za(p3,p4)*prp34
     &      -za(p1,p5)*zb(p4,p5)/za(p3,p5)*prp345)/za(p1,p5))
      
      aLR=Qd*(
     & (-za(p1,p3)*zb(p6,p2)*zazb(p5,p1,p3,p4)
     &  /(zb(p2,p5)*za(p6,p2)*s256)
     &  -zazb(p1,p2,p6,p4)*(za(p3,p4)*za(p1,p5)*zb(p4,p2)
     &                     +za(p3,p5)*za(p1,p6)*zb(p6,p2))
     &  /(zb(p2,p5)*za(p1,p6)*za(p6,p2)*(s345-s(p3,p4))))*prp34/s(p3,p4)
     & +zazb(p1,p2,p6,p4)**2*za(p4,p5)
     &   /(zb(p3,p5)*za(p1,p6)*za(p2,p6)*(s345-s(p3,p4)))*prp345/s345)
     &   +Qu*(
     & (za(p1,p5)*zb(p2,p4)*zazb(p3,p1,p5,p6)
     &  /(zb(p1,p5)*za(p1,p6)*s156)
     & +zazb(p1,p2,p6,p4)*(zazb(p5,p2,p6,p4)*za(p4,p3)
     &                    +za(p5,p3)*s(p2,p6))
     &  /(zb(p1,p5)*za(p1,p6)*za(p6,p2)*(s345-s(p3,p4))))*prp34/s(p3,p4)
     & -zazb(p1,p2,p6,p4)**2*za(p4,p5)
     &   /(zb(p3,p5)*za(p1,p6)*za(p2,p6)*(s345-s(p3,p4)))*prp345/s345)
           
      aLL=zb(p2,p4)**2/(zb(p1,p6)*zb(p2,p6)*(s345-s(p3,p4)))*(
     &  Qu*(+zazb(p5,p3,p4,p1)/zb(p3,p4)*prp34
     &      -zb(p1,p5)*za(p4,p5)/zb(p3,p5)*prp345)/zb(p1,p5)
     & +Qd*(+zazb(p5,p3,p4,p2)/zb(p4,p3)*prp34
     &      +zb(p2,p5)*za(p4,p5)/zb(p3,p5)*prp345)/zb(p2,p5))

      aRL=Qu*(
     & (-zb(p2,p4)*za(p6,p1)*zazb(p3,p2,p4,p5)
     &  /(za(p1,p5)*zb(p6,p1)*s156)
     &  -zazb(p3,p1,p6,p2)*(zb(p4,p3)*zb(p2,p5)*za(p3,p1)
     &                     +zb(p4,p5)*zb(p2,p6)*za(p6,p1))
     &  /(za(p1,p5)*zb(p2,p6)*zb(p6,p1)*(s345-s(p3,p4))))*prp34/s(p3,p4)
     & -zazb(p3,p1,p6,p2)**2*zb(p4,p5)
     &   /(za(p3,p5)*zb(p2,p6)*zb(p1,p6)*(s345-s(p3,p4)))*prp345/s345)
     &   +Qd*(
     & (zb(p2,p5)*za(p1,p3)*zazb(p6,p2,p5,p4)
     &  /(za(p2,p5)*zb(p2,p6)*s256)
     & +zazb(p3,p1,p6,p2)*(zazb(p3,p1,p6,p5)*zb(p3,p4)
     &                    +zb(p5,p4)*s(p1,p6))
     &  /(za(p2,p5)*zb(p2,p6)*zb(p6,p1)*(s345-s(p3,p4))))*prp34/s(p3,p4)
     & +zazb(p3,p1,p6,p2)**2*zb(p4,p5)
     &   /(za(p3,p5)*zb(p2,p6)*zb(p1,p6)*(s345-s(p3,p4)))*prp345/s345)
      
c--- additional anomalous coupling component, Eqs. (11)-(16) of hep-ph/0002138
c---  (multiplied by -i)
c--- note: there is a typo in Eq. (15), <45> should be replaced by [45]
c      aRR=aRR+prp34*(Qd-Qu)
c     & *zb(p4,p5)*(za(p1,p2)*zb(p2,p5)+za(p1,p6)*zb(p6,p5))
c     & /(2d0*s(p3,p4)**2*(s345-s(p3,p4))*za(p1,p6)*za(p6,p2))
c     & *(xlambda_g*za(p3,p4)*za(p1,p5)*zb(p4,p5)
c     &  +(xdelk_g+xlambda_g)*za(p1,p3)*s(p3,p4))
c
c      aLR=aLR+prp34*(Qd-Qu)
c     & *za(p3,p5)*za(p1,p5)
c     & /(2d0*s(p3,p4)**2*(s345-s(p3,p4))*za(p1,p6)*za(p6,p2))
c     & *(xlambda_g*za(p3,p5)*zb(p3,p4)
c     &    *(za(p1,p2)*zb(p2,p5)+za(p1,p6)*zb(p6,p5))
c     &  -(xdelk_g+xlambda_g)
c     &    *(za(p1,p2)*zb(p2,p4)+za(p1,p6)*zb(p6,p4))*s(p3,p4))
c
c      aLL=aLL+prp34*(Qu-Qd)
c     & *za(p3,p5)*(zb(p2,p1)*za(p1,p5)+zb(p2,p6)*za(p6,p5))
c     & /(2d0*s(p3,p4)**2*(s345-s(p3,p4))*zb(p2,p6)*zb(p6,p1))
c     & *(xlambda_g*zb(p4,p3)*zb(p2,p5)*za(p3,p5)
c     &  +(xdelk_g+xlambda_g)*zb(p2,p4)*s(p3,p4))
c
c      aRL=aRL+prp34*(Qu-Qd)
c     & *zb(p4,p5)*zb(p2,p5)
c     & /(2d0*s(p3,p4)**2*(s345-s(p3,p4))*zb(p2,p6)*zb(p6,p1))
c     & *(xlambda_g*zb(p4,p5)*za(p4,p3)
c     &    *(zb(p2,p1)*za(p1,p5)+zb(p2,p6)*za(p6,p5))
c     &  -(xdelk_g+xlambda_g)
c     &    *(zb(p2,p1)*za(p1,p3)+zb(p2,p6)*za(p6,p3))*s(p3,p4))


c--- additional anomalous coupling component
c--- corretti
      aRR=aRR+prp34*(Qd-Qu)
     & *zb(p4,p5)*(za(p1,p2)*zb(p2,p5)+za(p1,p6)*zb(p6,p5))
     & *prp345/s345/(2d0*s(p3,p4)**2*za(p1,p6)*za(p6,p2))
     & *(xlambda_g*s(p3,p4)/ph_Wmass2*za(p3,p4)*za(p1,p5)*zb(p4,p5)
     &  +(xdelk_g+xlambda_g*s(p3,p4)/ph_Wmass2)*za(p1,p3)*s(p3,p4))

      aLR=aLR+prp34*(Qd-Qu)
     & *za(p3,p5)*za(p1,p5)*prp345/s345
     & /(2d0*s(p3,p4)**2*za(p1,p6)*za(p6,p2))
     & *(xlambda_g*s(p3,p4)/ph_Wmass2*za(p3,p5)*zb(p3,p4)
     &    *(za(p1,p2)*zb(p2,p5)+za(p1,p6)*zb(p6,p5))
     &  -(xdelk_g+xlambda_g*s(p3,p4)/ph_Wmass2)
     &    *(za(p1,p2)*zb(p2,p4)+za(p1,p6)*zb(p6,p4))*s(p3,p4))

      aLL=aLL+prp34*(Qu-Qd)
     & *za(p3,p5)*(zb(p2,p1)*za(p1,p5)+zb(p2,p6)*za(p6,p5))
     & *prp345/s345/(2d0*s(p3,p4)**2*zb(p2,p6)*zb(p6,p1))
     & *(xlambda_g*s(p3,p4)/ph_Wmass2*zb(p4,p3)*zb(p2,p5)*za(p3,p5)
     &  +(xdelk_g+xlambda_g*s(p3,p4)/ph_Wmass2)*zb(p2,p4)*s(p3,p4))

      aRL=aRL+prp34*(Qu-Qd)
     & *zb(p4,p5)*zb(p2,p5)*prp345/s345
     & /(2d0*s(p3,p4)**2*zb(p2,p6)*zb(p6,p1))
     & *(xlambda_g*s(p3,p4)/ph_Wmass2*zb(p4,p5)*za(p4,p3)
     &    *(zb(p2,p1)*za(p1,p5)+zb(p2,p6)*za(p6,p5))
     &  -(xdelk_g+xlambda_g*s(p3,p4)/ph_Wmass2)
     &    *(zb(p2,p1)*za(p1,p3)+zb(p2,p6)*za(p6,p3))*s(p3,p4))


      ubdgmsq=cdabs(aLL)**2+cdabs(aRR)**2+cdabs(aRL)**2+cdabs(aLR)**2
      
      return
      end

