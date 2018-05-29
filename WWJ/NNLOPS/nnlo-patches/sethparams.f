      subroutine sethparams(br0,gamgambr,wwbr,zzbr)
c--- set up the necessary parameters for a Standard Model Higgs boson
c---   hwidth : either the NLO value from Spira,
c---                or the LO value valid for low Higgs masses only
c---   br,wwbr,zzbr,tautaubr : the LO calculated values
      implicit none
      include 'constants.f'
      include 'ewcouple.f'
      include 'qcdcouple.f'
      include 'masses.f'      
      double precision br,br0,gamgambr,wwbr,zzbr,tautaubr,x_w,x_z
     .,hpref0,hpref1,corv
      common/hprefs/hpref0,hpref1,corv
      integer nproc
      common/nproc/nproc
      double precision be,besq,corr,Llog, ddilog, mbar, opbe, ombe


      call higgsp(br,gamgambr,wwbr,zzbr)
      
 
c--- branching ratio H->bb : note that the mass is mostly retained in the
c--- coupling only, since mb=0 usually (the mass in the phase space)
      br0=xn*gwsq/32d0/pi*mbsq*hmass/wmass**2
     . *(1d0-4d0*mb**2/hmass**2)**1.5d0/hwidth

!      write(*,*) "br0",br0,hwidth,br0*hwidth,dsqrt(mbsq),mb

! BR(H-> b bbar)=0.578 (mH=125 GeV),  YR
! BR(H-> b bbar)=0.649 (mH=120 GeV),  YR
      hpref0=0.578d0/br0  
      hpref1=0.578d0/(br0*(1+17d0/3d0*asdec/pi))
!      hpref0=0.649d0/br0  
!      hpref1=0.649d0/(br0*(1+17d0/3d0*asdec/pi))


cccccccccccccccccccccccccccccccccccccccccc
c     these 2 lines remove the BR(h->bb) so
c     that we are left with the total inclusive
c     cross section.
      hpref0=1d0/br0  
      hpref1=1d0/(br0*(1+17d0/3d0*asdec/pi))
      write(*,*) '=========================='
      write(*,*) 'Br(h->bb) removed'
      write(*,*) '=========================='
cccccccccccccccccccccccccccccccccccccccccc


      corv=8d0*CF

      if (  nproc.eq.44
     .  .or.nproc.eq.55
     .  .or.nproc.eq.66
     .  .or.nproc.eq.77
     .   ) then

!      br0=xn*gwsq/32d0/pi*mbsq*hmass/wmass**2
!     . *(1d0-4d0*mb**2/hmass**2)**1.5d0/hwidth

      mbar=mb/hmass
      besq=1-4*mbar*mbar
      be=sqrt(besq)
      ombe=1-be
      opbe=1+be
      Llog=log(opbe/ombe)

!     NLO total decay rate
      corr=0.5d0*CF*(6-3/4d0*(1+besq)/besq+12*log(mb/hmass)-8*log(be)
     . +(5/be-2*be+3/8d0*(1-besq)**2/be**3)*Llog
     . +(1+besq)/be*(4*Llog*log(opbe/2/be)
     . -2*log(opbe/2d0)*log(ombe/2d0)
     . +8*ddilog(ombe/opbe)-4*ddilog(ombe/2d0)))

!     NLO virtual contributions to the decay rate
      corv=CF*(+4d0+4d0/(1d0+besq)-(4d0*besq)/(1d0+besq)
     .    +(2d0*Llog)/be-2d0*be*Llog-(8d0*mbar)/(1d0+besq)
     .    +(2d0*mbar)/(-1d0+mbar)+pisq/be+be*pisq
     .    -(6d0*(1d0+besq)*ddilog(1d0-ombe/opbe))/be
     .    +(4d0*(1d0+besq)*ddilog(-ombe/opbe))/be
     .    +(2d0*(1d0+besq)*(ddilog(ombe/opbe)+Llog*log(be)))/be
     .    + 6d0*log(mbar)-4d0*log(1d0-2d0*mbar)+2d0*log(1d0-mbar)
     .    +(2d0*(-1d0+besq)*log(mbar/(1d0-mbar)))/(1d0 + besq))

!!!!!!!!!!!!!!!!  NEW RATE
      corr=corr-4d0*log(mb/hmass)
      corv=corv-4d0*log(mb/hmass)*2d0 ! (Normalization is ason2pi)
!!!!!!!!!!!!!!!! 

      hpref0=0.578d0/br0  
      hpref1=0.578d0/(br0*(1+corr*asdec/pi))
!      write(*,*) 'corr-hpref=',corr
!      stop

      endif


!      hpref0=0.649d0/br0  
!      hpref1=0.649d0/(br0*(1+17d0/3d0*asdec/pi))
!      write(*,*) "gamma_bb_0=",br0*hwidth
!     .,"gamma_bb_1=",br0*(1+17d0/3d0*asdec/pi)*hwidth
!     .,"; hpref0=",hpref0, "; hpref1=",hpref1
c--- branching ratio H->tau^- tau^+ : this is obtained by a rescaling of
c--- the H->bb BR since the tau mass is not included in the phase space
      tautaubr=br*(mtausq/mbsq/xn)
      
      x_w=4d0*wmass**2/hmass**2
      x_z=4d0*zmass**2/hmass**2
c--- branching ratio H-> WW
      if (x_w .lt. 1d0) then
        wwbr=gwsq/64d0/pi*hmass**3/wmass**2
     .   *dsqrt(1d0-x_w)*(1d0-x_w+0.75d0*x_w**2)/hwidth
      else
        wwbr=0d0
      endif
c--- branching ratio H-> ZZ
      if (x_z .lt. 1d0) then
        zzbr=gwsq/128d0/pi*hmass**3/wmass**2
     .   *dsqrt(1d0-x_z)*(1d0-x_z+0.75d0*x_z**2)/hwidth
      else
        zzbr=0d0
      endif

!      write(*,*) hwidth
      write(6,99) hmass,hwidth,br,wwbr,zzbr,gamgambr
    
      
 99   format(' CCCCCCCCCCCCCCC SM Higgs parameters CCCCCCCCCCCCCCCC'/, 
     .       ' C                                                  C'/, 
     .       ' C   Mh      = ',f7.2,' GeV                          C'/,   
     .       ' C   Gamma(H)= ',f8.6,' GeV                         C'/,
     .       ' C                                                  C'/, 
     .       ' C   Br( H -> b bbar)  = ',f8.6,'                   C'/,
     .       ' C   Br( H -> W W)     = ',f8.6,'                   C'/,
     .       ' C   Br( H -> Z Z)     = ',f8.6,'                   C'/,
     .       ' C   Br( H -> 2gamma)  = ',f8.6,'                   C'/,
     .       ' C                                                  C'/,
     .       ' CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC')



      return


      end
      
