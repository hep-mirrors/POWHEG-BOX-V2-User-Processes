      subroutine qqb_wgam_v(p,vflav,amp2)
      implicit none
C----Author R.K.Ellis August 2002
C====Virtual corrections to
c     q(-p1)+qbar(-p2)-->e^-(p3)+nu(p4)+gamma(p5)
      include 'nlegborn.h'
      include 'constants.f'
      include 'zprods_decl.f'
      include 'PhysPars.h'

      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'mathx.h'

      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode   

      integer vflav(nlegborn)
      double precision amp2,p(nlegreal,4)
      double precision fac,facB
      double precision pigreco
      double complex agamtree,agamvirt
      double complex eps

      eps = 1d-40

      call spinoru(5,p,za,zb)
    
c      fac=ason2pi*cf*aveqq*2d0*xn*gwsq**2*esq

      pigreco = 3.14159265358979312d0

      fac = aveqq*2d0*xn*ph_unit_e**4/ph_sthw2**2*ph_unit_e0**2
     .      *cf*8d0*pigreco*st_alpha ! facB*()  
     .      *2d0*pigreco/st_alpha    ! PWG

      facB = aveqq*2d0*xn*ph_unit_e**4/ph_sthw2**2*ph_unit_e0**2



      if (idvecbos.lt.0) then
      if (vflav(1).lt.0) then
      amp2=fac*2d0*dble(
     .Dconjg(agamtree(1,2,3,4,5,za,zb,+1))*agamvirt(1,2,3,4,5,za,zb,+1))
     .    +fac*2d0*dble(
     .Dconjg(agamtree(1,2,3,4,5,za,zb,-1))*agamvirt(1,2,3,4,5,za,zb,-1))

      else
      amp2=fac*2d0*dble(
     .Dconjg(agamtree(2,1,3,4,5,za,zb,+1))*agamvirt(2,1,3,4,5,za,zb,+1))
     .    +fac*2d0*dble(
     .Dconjg(agamtree(2,1,3,4,5,za,zb,-1))*agamvirt(2,1,3,4,5,za,zb,-1))

      endif

      else 
      if (vflav(1).lt.0) then   
      amp2=fac*2d0*dble(
     .Dconjg(agamtree(2,1,4,3,5,zb,za,+1))*agamvirt(2,1,4,3,5,zb,za,+1))
     .    +fac*2d0*dble(
     .Dconjg(agamtree(2,1,4,3,5,zb,za,-1))*agamvirt(2,1,4,3,5,zb,za,-1))

      else
      amp2=fac*2d0*dble(
     .Dconjg(agamtree(1,2,4,3,5,zb,za,+1))*agamvirt(1,2,4,3,5,zb,za,+1))
     .    +fac*2d0*dble(
     .Dconjg(agamtree(1,2,4,3,5,zb,za,-1))*agamvirt(1,2,4,3,5,zb,za,-1))

      endif
       
      endif
          

      return
      end


      

      double complex function agamvirt(p1,p2,p3,p4,p5,za,zb,hgamma)
      implicit none
C----Author R.K.Ellis August 2002
c     q(-p1)+qbar(-p2)-->e^-(p3)+nu(p4)+gamma(p5)
      include 'nlegborn.h'
      include 'zprods_decl.f'
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'mathx.h'
      include 'pwhg_math.h'
      double complex agamtree,fagamma,fbgamma,prop,vpl
      double precision s34,s12
      integer p1,p2,p3,p4,p5,hgamma
      complex*16 vpole
      double precision pigreco

      pigreco = 3.14159265358979312d0
      
      s34=dble(za(p3,p4)*zb(p4,p3))
      s12=dble(za(p1,p2)*zb(p2,p1))
      prop=s34/dcmplx(s34-ph_Wmass2,ph_WmWw)

c     NWA
c      prop = ph_WmWw * prop
c     NWA

      vpl=vpole(s12)

      if    (hgamma .eq. +1) then
        agamvirt=1d0/16d0/pigreco**2 * (prop*(
     .  +Qd*fagamma(p1,p2,p3,p4,p5,za,zb)
     .  +Qu*fbgamma(p1,p2,p3,p4,p5,za,zb))
     .        +vpl*agamtree(p1,p2,p3,p4,p5,za,zb,+1) )
      elseif (hgamma .eq. -1) then
        agamvirt=1d0/16d0/pigreco**2 *  (prop*(
     .  +Qu*fagamma(p2,p1,p4,p3,p5,zb,za)
     .  +Qd*fbgamma(p2,p1,p4,p3,p5,zb,za))
     .          +vpl*agamtree(p1,p2,p3,p4,p5,za,zb,-1) )
      endif
      
      return
      end
*
**
*
      double complex function Vpole(sij)
      implicit none
      include 'pwhg_st.h'
c---  DKS Eq. 2.12
      double precision sij
      double complex Lnrat,xl12
      double complex eps
        
c      xl12=Lnrat(-sij,st_muren2)
      xl12=Log((-sij+(0d0,1d0)*1d-20)/(st_muren2-(0d0,1d0)*1d-20))

      eps = 1d0

      Vpole= -0.5d0*xl12**2 + 1.5d0*xl12 - 3.5d0
*     .       - 1d0/eps**2 
*     .       -(3d0/2d0-xl12)/eps

      return
      end
