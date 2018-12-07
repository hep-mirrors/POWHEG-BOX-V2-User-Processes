c############### subroutine born_phsp ##################################
c fills the four-momenta of the Born-process particles,
c both in the laboratory and in the center-of-mass frame,
c the Bjorken x of the two incoming partons,
c the partonic Mandelstam variable s,
c the masses for Born and real emission,
c and the Jacobi factor for the phase space volume
c
c adapted from ttH phase-space routine by Julien Baglio, 11/03/2015
      subroutine born_phsp(xborn)
      implicit none
#include "PhysPars.h"
#include "nlegborn.h"
#include "pwhg_kn.h"
#include "pwhg_math.h"
c#include "pwhg_flst.h"
      double precision xborn(ndiminteg-3)
      double precision m2,xjac,taumin,tau,y,betaCM,vec(3)
      integer indmu,j
      logical ini
      data ini/.true./
      save ini
      double precision rsh
      double precision alam,alam1,sh,s23,rs23
      double precision ct,st,ct23,st23,ph23,ph
      double precision p10,p1b,gp230,gp23b,p230,p23b,p20,p2b,p30,p3b
      double precision z
      external alam
      double precision mass(3)
      double precision compmass
      external compmass
      double precision gam,massa,r
      double precision random
      external random
      double precision xmax,xmin,norm, rmin,rmax,atanxmax, atanxmin

      if(ini) then
c     set initial- and final-state masses for HWW Born and real         
         kn_masses(1)=0.d0
         kn_masses(2)=0.d0
         kn_masses(4)=par_Wmass
         kn_masses(5)=par_Wmass
         kn_masses(nlegreal)=0
         ini=.false.      
      endif
     
      xmax = (par_Hmass2high-par_Hmass2)/par_HmHw
      xmin = (par_Hmass2low-par_Hmass2)/par_HmHw
      atanxmax = datan(xmax)
      atanxmin = datan(xmin)
      norm = 1/(atanxmax-atanxmin)
      rmin = norm* atanxmin
      rmax = norm* atanxmax

      r = rmin + (rmax-rmin)*random()
      m2 = par_Hmass2 +  par_HmHw *dtan(r/norm)
           
c     set the H mass to its virtuality!!
cc      kn_masses(3)=dsqrt(m2)
      kn_masses(3)=par_Hmass

      xjac = 1d0
      kn_minmass=2*par_Wmass+kn_masses(3)
      m2=kn_minmass**2

c     d x1 d x2 = d tau d y;
      taumin=m2/kn_sbeams
      tau=dexp(dlog(taumin)*(1-xborn(1)**2))
      xjac=xjac*tau*dabs(dlog(taumin))*2*xborn(1)
      kn_sborn=kn_sbeams*tau
c     ymax=|log(tau)|/2
      y=-(1-2*xborn(2))*dlog(tau)/2
      xjac=-xjac*dlog(tau)
c     Build kinematics
      kn_xb1=dsqrt(tau)*dexp(y)
      kn_xb2=tau/kn_xb1

      rsh=dsqrt(kn_sborn)
      sh=kn_sborn
      mass(1)=kn_masses(4)
      mass(2)=kn_masses(5)
      mass(3)=kn_masses(3)
      
      kn_cmpborn(1,1)=0.d0
      kn_cmpborn(2,1)=0.d0
      kn_cmpborn(3,1)=rsh/2d0
      kn_cmpborn(0,1)=rsh/2d0
      kn_cmpborn(1,2)=0.d0
      kn_cmpborn(2,2)=0.d0
      kn_cmpborn(3,2)=-rsh/2d0
      kn_cmpborn(0,2)=rsh/2d0     


c generation of invariants and angles:
      s23=(rsh-mass(1))**2*xborn(3)+(1d0-xborn(3))*(mass(2)+mass(3))**2
      rs23=dsqrt(s23)
      xjac=xjac*((rsh-mass(1))**2-(mass(2)+mass(3))**2)
      ct23=2d0*xborn(4)**2-1d0
      xjac=xjac*4*xborn(4)
c      ct23=2d0*xborn(4)-1d0
      st23=dsqrt(dabs((1d0-ct23)*(1d0+ct23)))
c
c      ct=2d0*xborn(5)-1d0
c      xjac=xjac*2d0
      z=1-2*xborn(5)
      xjac=xjac*2
      ct=1.5d0*(z-z**3/3)
      xjac=xjac*1.5d0*(1-z**2)

      st=dsqrt(dabs((1d0-ct)*(1d0+ct)))
      ph23=2d0*pi*xborn(6)
c      ph=2d0*pi*x(5)
      ph=0d0
      xjac=xjac*(2d0*pi)**2

c decay a+b->p1+p23 in the CMS vec(a+b)=vec(0) 
c with vec(a) is pos. z-axis:
      p10=(sh+mass(1)**2-s23)/2d0/rsh
      p230=(sh+s23-mass(1)**2)/2d0/rsh
      alam1=alam(rsh,mass(1),rs23)
      p1b=alam1/2d0/rsh
      p23b=p1b
      gp230=p230/rs23
      gp23b=p23b/rs23
      kn_cmpborn(1,4)=p1b*st*dcos(ph)
      kn_cmpborn(2,4)=p1b*st*dsin(ph)
      kn_cmpborn(3,4)=p1b*ct
      kn_cmpborn(0,4)=p10

c no flux factor (1/(2*kn_sborn))
      xjac=xjac*alam1/8d0/sh

c decay p23->p2+p3 in the CMS vec(p23)=vec(0) 
c with vec(p23) is pos. z-axis:
      p20=(s23+mass(2)**2-mass(3)**2)/2d0/rs23
      p30=(s23+mass(3)**2-mass(2)**2)/2d0/rs23
      alam1=alam(rs23,mass(2),mass(3))
      p2b=alam1/2d0/rs23
      p3b=p2b
      kn_cmpborn(1,5)=p2b*st23*dcos(ph23)
      kn_cmpborn(2,5)=p2b*st23*dsin(ph23)
      kn_cmpborn(3,5)=p2b*ct23
      kn_cmpborn(0,5)=p20
      kn_cmpborn(1,3)=-p3b*st23*dcos(ph23)
      kn_cmpborn(2,3)=-p3b*st23*dsin(ph23)
      kn_cmpborn(3,3)=-p3b*ct23
      kn_cmpborn(0,3)=p30
      xjac=xjac*alam1/8d0/s23
c
c normalization of the phase space weight:
      xjac=xjac/(2d0*pi)**5

      kn_jacborn=xjac

c boost and rotation, so that pa is positive z axis:
      call boost_z(gp230,gp23b,kn_cmpborn(0,3),kn_cmpborn(3,3))
      call rotation_2(-1d0,st,ct,dsin(ph),dcos(ph),
     $     kn_cmpborn(1,3),kn_cmpborn(2,3),kn_cmpborn(3,3))

      call boost_z(gp230,gp23b,kn_cmpborn(0,5),kn_cmpborn(3,5))
      call rotation_2(-1d0,st,ct,dsin(ph),dcos(ph),
     $     kn_cmpborn(1,5),kn_cmpborn(2,5),kn_cmpborn(3,5))


c     boost back in the lab frame
c     now boost everything along 3rd axis
      betaCM=(kn_xb1-kn_xb2)/(kn_xb1+kn_xb2)
      vec(1)=0
      vec(2)=0
      vec(3)=1
      call mboost(nlegborn,vec,betaCM,kn_cmpborn(0,1),kn_pborn(0,1))      

c
c------------

#ifdef DEBUGQ
c#ifdef DEBUGV
      print*,"in born_phsp:"
      do j=1,nlegborn
         write(*,*) 'mom CM',j,(kn_cmpborn(indmu,j),indmu=0,3)
      enddo
      do j=1,nlegborn
         write(*,*) 'mom ',j,(kn_pborn(indmu,j),indmu=0,3)
         write(*,*) 'mass ',j,compmass(kn_pborn(0,j))
      enddo
         
      call checkmomzero(nlegborn,kn_pborn)
#endif

      end
c############### end subroutine born_phsp ##############################


c############### subroutine born_suppression ###########################
      subroutine born_suppression(fact)
      implicit none
#include "nlegborn.h"
c#include "pwhg_flst.h"
#include "pwhg_kn.h"
#include "pwhg_flg.h"
#include "PhysPars.h"
      double precision delta_mww
      double precision fact,mww_min
      double precision kp
      double precision m45sq
      logical, save :: ini = .true.  
      save mww_min,kp

      double precision powheginput
      external powheginput

c---------------

      if (ini) then 
         if (flg_weightedev) then 

            delta_mww =  powheginput('bornsuppfact')
            mww_min=2d0*par_Wmass+delta_mww
            kp = 1d0

            write(*,*) '============================='
            write(*,*) 'Using Born suppression factor' 
            write(*,*) 'with mWW_min[GeV]=',mww_min 
            write(*,*) 'exponents: kp = ',kp 
            write(*,*) '============================='
         else
            write(*,*) '========================='
            write(*,*) 'Using no Born suppression' 
            write(*,*) '========================='
         endif
         ini = .false. 
      endif

      if(flg_weightedev) then
         
         m45sq = dabs(
     &        (kn_cmpborn(0,5)+kn_cmpborn(0,4))**2 - 
     &        (kn_cmpborn(1,5)+kn_cmpborn(1,4))**2 - 
     &        (kn_cmpborn(2,5)+kn_cmpborn(2,4))**2 - 
     &        (kn_cmpborn(3,5)+kn_cmpborn(3,4))**2)

         fact=(m45sq/(m45sq+mww_min**2))**kp
      else
         fact=1d0
      endif

      end
c############### end subroutine born_suppression #######################


c############### subroutine set_fac_ren_scales #########################
      subroutine set_fac_ren_scales(muf,mur)
      implicit none
#include "PhysPars.h"
#include "nlegborn.h"
c#include "pwhg_flst.h"
#include "pwhg_flg.h"
#include "pwhg_kn.h"
      double precision muf,mur
      double precision phiggs(0:3),pwp(0:3),pwm(0:3)
      double precision mt_higgs,mt_wp,mt_wm
      double precision momsum3sq
      external momsum3sq
      double precision powheginput
      external powheginput
      double precision renscfact,facscfact
      logical runningscales
      save runningscales
     
      logical ini
      data ini/.true./
      save ini

      integer runtype
      parameter (runtype=0)

      if (ini) then

         renscfact=powheginput("#renscfact")
         facscfact=powheginput("#facscfact")
         
         runningscales=.true.

         if(powheginput('#runningscale').eq.0) runningscales=.false.

         write(*,*) '*************************************'
         write(*,*) 'Factorization and renormalization '
         write(*,*) 'scales (mur, muf) set to '
         if (runningscales) then 
            if(runtype.eq.1) then
               write(*,*) '[ mT(Higgs) * mT(W_+) * mT(W_-) ]**(1/3)'
            else
               write(*,*) 'm(Higgs W_+ W_-)'
            endif
         else
            write(*,*) 'mH + 2*mW'
         endif   
         if (renscfact .gt. 0d0) 
     &        write(*,*) 'Renormalization scale rescaled by', renscfact
         if (facscfact .gt. 0d0) 
     &        write(*,*) 'Factorization scale rescaled by  ', facscfact
         write(*,*) '***********************************************'
         ini=.false.

      endif

      if (runningscales) then 

         if(flg_btildepart.eq.'r') then
            phiggs(:) = kn_preal(:,3) !Higgs
            pwp(:)   = kn_preal(:,4) !W+
            pwm(:)  = kn_preal(:,5) !W-
         else   
c take Born momenta:
            phiggs(:) = kn_pborn(:,3) !Higgs
            pwp(:)   = kn_pborn(:,4) !W+
            pwm(:)  = kn_pborn(:,5) !W-
         endif

         if(runtype.eq.1) then  ! transverse mass scales
            call gettransmass(par_Hmass,phiggs,mt_higgs)
            call gettransmass(par_Wmass,pwp,mt_wp)
            call gettransmass(par_Wmass,pwm,mt_wm)

            muf = (mt_higgs*mt_wp*mt_wm)**(1d0/3d0)
            mur = muf
         else ! invariant mass scales
            muf = dsqrt(momsum3sq(phiggs(0:3),pwp(0:3),pwm(0:3)))
            mur = muf
         endif

      else
         muf=par_Hmass+2*par_Wmass
         mur=par_Hmass+2*par_Wmass
      endif

      end
c############### end subroutine set_fac_ren_scales #####################
