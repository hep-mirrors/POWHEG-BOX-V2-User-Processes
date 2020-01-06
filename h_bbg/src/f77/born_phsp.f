!#######################################################################
!     !This subroutine generates Born phase-space point for the process
!     !        X+X ---> H ---> b b~ g
!     !>> b-quarks are assumed to be massless
!     !>> only the Yukawa coupling Hbb is kept
      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'math_const.f'
      include 'PhysPars.h'
      real * 8 xborn(ndiminteg-3)
      real * 8 m2,xjac,y,beta,vec(3),cth,cthdec,phidec,s,
     # z,zhigh,zlow,dir(3),kzed,cthmax
      integer mu,k,j,ipart

      real*8 mux,mb,mh
      real*8 Equark1,Pquark1,Equark2,Pquark2,Egluon,Pgluon
      real*8 xcosth,xphi,xomega,xq1,xq2,xtheta
      real*8 xlow,xhigh,xmax,xmin
      real*8 cosa,cosb,sina,sinb,number
      real*8 r1,r2,r3,r4,r5
      real*8 pb1(0:3),pb2(0:3),pg(0:3),vout(0:3)
      real*8 test1,test2,test3,pztest,momcheck
      integer configuration
      real*8 sig,sigmin,sigmax
      real*8 tau,taumin,taumax
      real*8 epsilon,epssq,xsqrt,z1,z2
      common/cutoff_parameters/epsilon,epssq

      logical ini
      data ini/.true./
      save ini

      real*8 xminborn,xmaxborn
      save xminborn,xmaxborn

      real*8 xtiny,xcheck
      parameter( xtiny=0d0 )
      parameter( xcheck=1d-6 )


!     !>> set some POWHEG variables in here:
      mb=0d0
      mh=ph_hmass
      kn_sborn = ph_hmass**2

      if(ini) then
!     !>> set initial- and final-state masses for Born and real
         do k=1,nlegborn
            kn_masses(k)=0
         enddo
         kn_masses(nlegreal)=0
!     !>> set b-quark mass (in Higgs decay products)
         kn_masses(3)=mh
         kn_masses(4)=0d0
         kn_masses(5)=0d0
         if( kn_ktmin.le.0d0 )then
            epsilon=0d0
            epssq=0d0
         else
            epsilon = (kn_ktmin/ph_hmass)
            epssq=epsilon**2
         endif
         ini=.false.
      endif

!     !>> jacobian
      xjac = 1d0

!     !>> set x1,x2 (in our case these are dummy, but required by POWHEG)
      kn_xb1=one
      kn_xb2=one

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!     !>> this is a massless version!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!     !>> phase-space (compare with ESW(pink-book), eq.(3.9) )
!     !>>    dPS[3] =
!     !>>             d(phi)/(2pi)
!     !>>           * d(costheta)/2
!     !>>           * d(omega)/(2pi)
!     !>>           * mhiggs^2/(16) * 1/(2pi)^3
!     !>>           * dx1
!     !>>           * dx2
!     !>>           * 1/(2*mhiggs)
!     !>>
!     !>> The last factor is "the flux" for decay, POWHEG takes care of flux only for production


c-----------------------------------------------------------------------
!     !>> x1,x2 generation
      r1=xborn(1)
      r2=xborn(2)

      taumin= (one+epssq)/two
      taumax= (four+epssq-sqrt(epssq*(epssq+eight)))/four
      tau= taumin + (taumax-taumin)*r1

!     !>>  tau = taumin + (taumax-taumin)*R
!     !>> dtau = (taumax-taumin)*dR
      xjac=  xjac * (taumax-taumin)

      if( tau .ge. three/four )then
         sigmax= ( -two + (four+epssq-two*tau)*tau )/( -two+epssq+two*tau )
      elseif( tau .ge. ( four-epssq+sqrt(epssq*(epssq+eight)))/eight )then
         sigmax= half*( one - sqrt( (one-two*tau)**2 + eight*epssq*(one-tau)) )
      else
         sigmax= tau*(-one-epssq+two*tau)/(-one+epssq+two*tau)
      endif
      sig= sigmax*( -one + two*r2 )

!     !>>  x = xmin + (xmax-xmin)*R
!     !>> dx = (xmax-xmin)*dR
      xjac=  xjac * two * sigmax

      xq1= tau + sig
      xq2= tau - sig

!     !>> (tau,sig) --> (xq1,xq2)
      xjac = xjac * two

      xjac = xjac * mh**2 / 16d0 / (2d0*pi)**3
!     !>> remove flux from 2>2 scattering
      xjac = xjac * (2d0 * kn_sborn)
!     !>> add flux for 1>2 decay rate
      xjac = xjac / (2d0 * ph_hmass)
!     !>> remove the conversion factor (GeV-2 to pb), we want the result in GeV
      xjac = xjac / hc2
!     !>> final
      kn_jacborn = xjac


c-----------------------------------------------------------------------
!     !>> set Born momenta:
      kn_cmpborn=0d0
!     !>> beams (collision of chi + chi~ in CM frame):
      do mu=0,3
         kn_cmpborn(mu,1)=kn_beams(mu,1)
         kn_cmpborn(mu,2)=kn_beams(mu,2)
         kn_cmpborn(mu,3)=kn_cmpborn(mu,1)+kn_cmpborn(mu,2)
      enddo


c-----------------------------------------------------------------------
!     !>> bb~ quarks and gluon
      Egluon  = mh/two * ( two - xq1 - xq2 )
      Equark1 = mh/two * xq1
      Equark2 = mh/two * xq2

      Pgluon  = Egluon
      Pquark1 = Equark1
      Pquark2 = Equark2

!     !>> first set gluon along Z-axis, quarks in XZ-plane
      pg(0) = Egluon
      pg(1) = 0d0
      pg(2) = 0d0
      pg(3) = Pgluon


c-----------------------------------------------------------------------
      cosa= ( xq1**2 + (two-xq1-xq2)**2 - xq2**2 )/( two*(two-xq1-xq2)*xq1 )
      cosb= ( xq2**2 + (two-xq1-xq2)**2 - xq1**2 )/( two*(two-xq1-xq2)*xq2 )

      sina= sqrt(abs( one - cosa**2 ))
      sinb= sqrt(abs( one - cosb**2 ))

c-----------------------------------------------------------------------
      pb1(0) = Equark1
      pb1(1) = + Pquark1 * sina
      pb1(2) = 0d0
      pb1(3) = - Pquark1 * cosa

      pb2(0) = Equark2
      pb2(1) = - Pquark2 * sinb
      pb2(2) = 0d0
      pb2(3) = - Pquark2 * cosb

!     !>> random angles
      r1=xborn(3)
      r2=xborn(4)
      r3=xborn(5)

!>>   rotation of the (bbg)-plane around directions of the gluon (g) which was taken along z-axis
      xomega = two*pi*r1   

!>>   this azimuth will be altered in "gen_radiation --> add_azimuth" subroutine (nevertheless it is a flat direction)
      xphi = two*pi*r2  
      xcosth = -one + two*r3
      xtheta = acos( xcosth)

!     !>> rotate quarks around Z-axis by omega (keep energy the same)
      call rotateZ( xomega, pb1(0:3), vout(0:3) )
      pb1(0:3) = vout(0:3)
      call rotateZ( xomega, pb2(0:3), vout(0:3) )
      pb2(0:3) = vout(0:3)

!     !>> rotate quarks and gluon with angles (theta,phi):
      call rotateXZ( xtheta, xphi, pb1(0:3), vout(0:3) )
      pb1(0:3) = vout(0:3)
      call rotateXZ( xtheta, xphi, pb2(0:3), vout(0:3) )
      pb2(0:3) = vout(0:3)
      call rotateXZ( xtheta, xphi, pg(0:3), vout(0:3) )
      pg(0:3) = vout(0:3)


c-----------------------------------------------------------------------
!     !>> put remaining momenta into kn_cmpborn array:
      do mu=0,3
         kn_cmpborn(mu,4) = pb1(mu)
         kn_cmpborn(mu,5) = pb2(mu)
         kn_cmpborn(mu,6) = pg(mu)
      enddo

!     !>> in our case LAB = CM frame
      do ipart=1,nlegborn
         do mu=0,3
            kn_pborn(mu,ipart) = kn_cmpborn(mu,ipart)
         enddo
      enddo

      return
      end


!#######################################################################
!>>   this is process dependent subroutine, has not been tested in this
!>>   case
      subroutine born_suppression(fact)
      implicit none
      real*8 fact
      fact=1d0  !WB
      return
      end


!#######################################################################
!>>   fixed-scale is the default choice in here
      subroutine set_fac_ren_scales(muf,mur)
      implicit none
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      real * 8 muf,mur
      logical ini
      data ini/.true./
      logical runningscales
      save ini,runningscales
      if(ini) then
        runningscales = .false.
        write(*,*) '*********************************************'
        write(*,*) '**   mur=MH mass  used for Bbar function   **'
        write(*,*) '**   muf=MH mass  used for Bbar function   **'
        write(*,*) '*********************************************'
        ini=.false.
      endif
      muf=ph_Hmass
      mur=ph_Hmass
      return
      end


!#######################################################################
!>>   rotates vector 'pin' around Z-axis (3rd component)
      subroutine rotateZ( omega, pin, pout)
      implicit none

      real*8 omega, pin(0:3), pout(0:3)
      real*8 cosx,sinx

      sinx=sin(omega)
      cosx=cos(omega)

      pout(0) = pin(0)          !! energy component does not change
      pout(1) = cosx * pin(1) - sinx * pin(2)
      pout(2) = sinx * pin(1) + cosx * pin(2)
      pout(3) = pin(3)

      return
      end



!#######################################################################
!>>   rotates vector 'pin':
!     !>> first around X-axis with angle "theta"
!     !>> then around Z-axis with angle "phi"
      subroutine rotateXZ( theta, phi, pin, pout )
      implicit none

      real*8 theta, phi, pin(0:3), pout(0:3), ptemp(0:3)
      real*8 costh,sinth,cosf,sinf

      sinth=sin(theta)
      costh=cos(theta)
      sinf=sin(phi)
      cosf=cos(phi)

      pout(0) = pin(0)          !! energy component does not change

      ptemp(1) = pin(1)
      ptemp(2) = costh * pin(2) - sinth * pin(3)
      ptemp(3) = sinth * pin(2) + costh * pin(3)

      pout(1) = cosf * ptemp(1) - sinf * ptemp(2)
      pout(2) = sinf * ptemp(1) + cosf * ptemp(2)
      pout(3) = ptemp(3)

      return
      end
