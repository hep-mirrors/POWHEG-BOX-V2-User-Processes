      subroutine qqb_wgam(p,bflav,amp2)
      implicit none
C-----Author Keith Ellis, September 2002
C----- updated: John Campbell, August 2011 (anomalous couplings)
c----Matrix element for W gam production
C----averaged over initial colours and spins
C For nwz=+1
c     u(-p1)+dbar(-p2)-->W^+(n(p3)+e^+(p4)) + gamma(p5)
C For nwz=-1
c     ubar(-p1)+d(-p2)-->W^-(e^-(p3)+nbar(p4)) + gamma(p5)
c---
      include 'constants.f'
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'zprods_decl.f'

      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'mathx.h'

      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode   

      double complex agamtree
      external agamtree

      integer bflav(nlegborn)
      double precision p(nlegreal,4),fac
      double precision amp2
      double precision pigreco

      pigreco = 3.14159265358979312d0

      call spinoru(5,p,za,zb)

      fac=aveqq*2d0*xn*ph_unit_e**4/ph_sthw2**2*ph_unit_e0**2


      if (idvecbos.lt.0) then 
          if (bflav(1).lt.0) then
              amp2=fac*(abs(agamtree(1,2,3,4,5,za,zb,-1))**2
     .                 +abs(agamtree(1,2,3,4,5,za,zb,+1))**2)
          else
              amp2=fac*(abs(agamtree(2,1,3,4,5,za,zb,-1))**2
     .                 +abs(agamtree(2,1,3,4,5,za,zb,+1))**2)
          endif
      else
          if (bflav(1).lt.0) then
              amp2=fac*(abs(agamtree(2,1,4,3,5,zb,za,-1))**2
     .                 +abs(agamtree(2,1,4,3,5,zb,za,+1))**2)
          else
              amp2=fac*(abs(agamtree(1,2,4,3,5,zb,za,-1))**2
     .                 +abs(agamtree(1,2,4,3,5,zb,za,+1))**2)
          endif
      endif

      return
      end


      double complex function agamtree(p1,p2,p3,p4,p5,za,zb,hgamma)
      implicit none
      include 'nlegborn.h'
      include 'constants.f'
      include 'zprods_decl.f'
      include 'sprods_com.f'
c      include 'zerowidth.f'
c      include 'anomcoup.f'
      include 'PhysPars.h'
      include 'mathx.h'
      double precision xfac
      double complex prp12,prp34
      integer p1,p2,p3,p4,p5,hgamma
      complex*16 xdelk_g,xlambda_g



c anomalous couplings 

      xdelk_g = 0d0
      xlambda_g = 0d0

      prp34=s(p3,p4)/dcmplx((s(p3,p4)-ph_Wmass2),ph_WmWw)

c--- apply a dipole form factor to anomalous couplings, with power two (only if tevscale > 0)
c      if (tevscale .gt. 0d0) then
c        xfac=1d0/(1d0+s(p1,p2)/(tevscale*1d3)**2)**2
c      else
c        xfac=1d0
c      endif
c      xdelk_g=xfac*delk_g
c      xlambda_g=xfac*lambda_g
      
c      if (zerowidth) then
c--- zerowidth: no final state radiation, so we can set prp12 to zero

c
c        prp12 = zero
c        prp34 = ph_WmWw * prp34  !NWA
c

c      else
c--- otherwise, usual Breit-Wigner form
        prp12=s(p1,p2)/dcmplx((s(p1,p2)-ph_Wmass2),ph_WmWw)
c      endif



c---  c.f. Eqs.(4.4),(4.5) of hep-ph/9803250 (multiplied by -i)
c---       for the terms proportional to prp34
      if (hgamma .eq. -1) then
        agamtree=-zb(p2,p4)**2/(s(p1,p2)-s(p3,p4))*(
     &    Qu*(za(p2,p5)/(zb(p4,p3)*zb(p1,p5))*prp34
     &       -za(p4,p5)/(zb(p1,p2)*zb(p3,p5))*prp12)
     &   +Qd*(za(p1,p5)/(zb(p4,p3)*zb(p2,p5))*prp34
     &       +za(p4,p5)/(zb(p1,p2)*zb(p3,p5))*prp12))
      elseif (hgamma .eq. +1) then
        agamtree=-za(p1,p3)**2/(s(p1,p2)-s(p3,p4))*(
     &    Qd*(zb(p1,p5)/(za(p3,p4)*za(p2,p5))*prp34
     &       +zb(p4,p5)/(za(p2,p1)*za(p3,p5))*prp12)
     &   +Qu*(zb(p2,p5)/(za(p3,p4)*za(p1,p5))*prp34
     &       -zb(p4,p5)/(za(p2,p1)*za(p3,p5))*prp12))
      endif
 


c--- additional anomalous coupling component, Eqs. (7)-(9) of hep-ph/0002138
c--- NWA
c      if     (hgamma .eq. -1) then
c       agamtree=agamtree+prp34*(Qu-Qd)
c     &  *za(p5,p3)/(2d0*s(p3,p4)*(s(p1,p2)-s(p3,p4))*za(p4,p3))
c     &  *((xdelk_g+xlambda_g)*zb(p2,p4)*za(p1,p5)*za(p4,p3)
c     &    +xlambda_g*zb(p2,p5)*za(p5,p1)*za(p3,p5))
c      elseif (hgamma .eq. +1) then
c       agamtree=agamtree+prp34*(Qd-Qu)
c     &  *zb(p5,p4)/(2d0*s(p3,p4)*(s(p1,p2)-s(p3,p4))*zb(p3,p4))
c     &  *((xdelk_g+xlambda_g)*za(p1,p3)*zb(p2,p5)*zb(p3,p4)
c     &    +xlambda_g*za(p1,p5)*zb(p5,p2)*zb(p4,p5))
c      endif

c--- additional anomalous coupling component, Eqs. (7)-(9) of hep-ph/0002138
c--- no NWA
      if     (hgamma .eq. -1) then
       agamtree=agamtree+prp34*(Qu-Qd)
     &  *za(p5,p3)*prp12/s(p1,p2)/(2d0*s(p3,p4)*za(p4,p3))
     &  *((xdelk_g+xlambda_g*s(p3,p4)/ph_Wmass2)*zb(p2,p4)
     &     *za(p1,p5)*za(p4,p3)
     &    +xlambda_g*s(p3,p4)/ph_Wmass2*zb(p2,p5)*za(p5,p1)*za(p3,p5))
      elseif (hgamma .eq. +1) then
       agamtree=agamtree+prp34*(Qd-Qu)
     &  *zb(p5,p4)*prp12/s(p1,p2)/(2d0*s(p3,p4)*zb(p3,p4))
     &  *((xdelk_g+xlambda_g*s(p3,p4)/ph_Wmass2)*za(p1,p3)
     &     *zb(p2,p5)*zb(p3,p4)
     &    +xlambda_g*s(p3,p4)/ph_Wmass2*za(p1,p5)*zb(p5,p2)*zb(p4,p5))
      endif

       
      return
      end

