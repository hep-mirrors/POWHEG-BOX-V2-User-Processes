      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'pwhg_physpar.h'
      real * 8 xborn(ndiminteg-3)
      real * 8 m2,xjac,taumin,tau,y,beta,vec(3),cth,cthdec,phidec,s,
     $     z,zhigh,zlow,kzed,cthmax,vecmag
      integer mu,k
      logical ini
      data ini/.true./
      save ini
      real * 8 powheginput
      external powheginput

      logical genflat
      save genflat

cccccccccccc
c     !:
      real *8 m_1,m_2
      m_1=physpar_ml(3)
      m_2=physpar_ml(3)
ccccccccccc

      if(ini) then
c     set initial- and final-state masses for Born and real
         do k=1,nlegborn
            kn_masses(k)=0
         enddo
         kn_masses(nlegreal)=0
         kn_masses(3)=m_1
         kn_masses(4)=m_2
         if(powheginput("vdecaymode").eq.5.or.
     $        powheginput("vdecaymode").eq.15) then
            genflat=.false.
         else
            genflat=.true.
         endif
         if(genflat) then
            write(*,*) '*************************************'
            write(*,*) "DM case: m34 not importance sampled. "
            write(*,*) '*************************************'
         else
            write(*,*) '*************************************'
            write(*,*) "m34  importance sampled. "
            write(*,*) '*************************************'
         endif
         ini=.false.
      endif

c Phase space:
c d m2/(2 pi) d omega /(8*(2 pi)^2)  (s-m2)/2
c d omegadec/(8*(2 pi)^2)
c omega: 3d angle in CM system
c omegadec: 3d angle in CM system of Z decay products
      if(.not.genflat) then
         zlow=atan((ph_Zmass2low  - ph_Zmass2)/ph_ZmZw)
         zhigh=atan((min(ph_Zmass2high,kn_sbeams)  - ph_Zmass2)/ph_ZmZw)
         z=zlow+(zhigh-zlow)*xborn(1)
         xjac=zhigh-zlow
         m2=ph_ZmZw*tan(z)+ph_Zmass2
c     d m^2/(2pi) jacobian
         xjac=xjac*ph_ZmZw/cos(z)**2/(2*pi)
      else
         m2=ph_Zmass2low+(ph_Zmass2high-ph_Zmass2low)*xborn(1)
c     d m^2/(2pi) jacobian
         xjac=(ph_Zmass2high-ph_Zmass2low)/(2*pi)
      endif

c d x1 d x2 = d tau d y;
      taumin=( sqrt(m2+kn_ktmin**2) + kn_ktmin )**2/kn_sbeams
      tau=exp(log(taumin)*(1-xborn(2)**2))
      xjac=xjac*tau*abs(log(taumin))*2*xborn(2)
      s=kn_sbeams*tau
      kn_sborn=s
c compute Z momentum in partonic cm
      kzed=(s-m2)/(2*sqrt(s))
c ymax=|log(tau)|/2
      y=-(1-2*xborn(3))*log(tau)/2
      xjac=-xjac*log(tau)
c abs to protect from tiny negative values
      cthmax=sqrt(abs(1d0-(kn_ktmin/kzed)**2))
      z=1-2*xborn(4)
      xjac=xjac*2
      cth=1.5d0*(z-z**3/3)
      xjac=xjac*1.5d0*(1-z**2)
      cth=cth*cthmax
      kn_born_pt2=(1-cth**2)*kzed**2
      xjac=xjac*cthmax
c supply 2 pi for azimuthal integration (not performed)
      xjac=xjac*2*pi
      xjac=xjac*(s-m2)/s/(8*(2*pi)**2)
c
      cthdec=1-2*xborn(5)
      kn_cthdec=cthdec
      xjac=xjac*2
      phidec=2*pi*xborn(6)
      xjac=xjac*2*pi
      xjac=xjac/(8*(2*pi)**2)

c Build kinematics
      kn_xb1=sqrt(tau)*exp(y)
      kn_xb2=tau/kn_xb1
c decay products in their rest frame
ccccccccccccccccccc
c     !:
c     magnitude of 3-momentum in Z-decay rest frame
      vecmag=(m2+m_1**2-m_2**2)**2 / 4d0/m2 -m_1**2
      vecmag=sqrt(vecmag)

      kn_cmpborn(0,3)=sqrt(vecmag**2 + m_1**2)
      kn_cmpborn(0,4)=sqrt(vecmag**2 + m_2**2)
      kn_cmpborn(3,3)=cthdec*vecmag
      kn_cmpborn(1,3)=sqrt(1-cthdec**2)*sin(phidec)*vecmag
      kn_cmpborn(2,3)=sqrt(1-cthdec**2)*cos(phidec)*vecmag
      kn_cmpborn(1,4)=-kn_cmpborn(1,3)
      kn_cmpborn(2,4)=-kn_cmpborn(2,3)
      kn_cmpborn(3,4)=-kn_cmpborn(3,3)

      xjac=xjac*vecmag/kn_cmpborn(0,3)

      kn_jacborn=xjac
ccccccccccccccccccccccccc

c velocity of Z in partonic CM
      beta=(s-m2)/(s+m2)
      vec(1)=sqrt(1-cth**2)
      vec(2)=0
      vec(3)=cth
      call mboost(2,vec,beta,kn_cmpborn(0,3),kn_cmpborn(0,3))
      kn_cmpborn(1,5)=-kn_cmpborn(1,3)-kn_cmpborn(1,4)
      kn_cmpborn(2,5)=-kn_cmpborn(2,3)-kn_cmpborn(2,4)
      kn_cmpborn(3,5)=-kn_cmpborn(3,3)-kn_cmpborn(3,4)
      kn_cmpborn(0,5)=sqrt(s)-kn_cmpborn(0,3)-kn_cmpborn(0,4)
      kn_cmpborn(0,1)=sqrt(s)/2
      kn_cmpborn(0,2)=kn_cmpborn(0,1)
      kn_cmpborn(3,1)=kn_cmpborn(0,1)
      kn_cmpborn(3,2)=-kn_cmpborn(0,2)
      kn_cmpborn(1,1)=0
      kn_cmpborn(1,2)=0
      kn_cmpborn(2,1)=0
      kn_cmpborn(2,2)=0      
c now boost everything along 3
      beta=(kn_xb1-kn_xb2)/(kn_xb1+kn_xb2)
      vec(1)=0
      vec(2)=0
      vec(3)=1
      call mboost(nlegborn-2,vec,beta,kn_cmpborn(0,3),kn_pborn(0,3))
      do mu=0,3
         kn_pborn(mu,1)=kn_xb1*kn_beams(mu,1)
         kn_pborn(mu,2)=kn_xb2*kn_beams(mu,2)
      enddo
c      call checkmomzero(nlegborn,kn_pborn)
c      call checkmass(2,kn_pborn(0,3))

c minimal final state mass 
      kn_minmass=kn_ktmin + sqrt(kn_ktmin**2 + ph_Zmass2low)

      end


      subroutine born_suppression(fact)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      logical ini
      data ini/.true./
      real * 8 fact,ptsupp,pt2,powheginput
      save ptsupp,ini
      external powheginput
      if(ini) then
         ptsupp=powheginput("#bornsuppfact")
         ini=.false.
      endif
      if(flg_weightedev) then
c         print*, 'born_suppression called, but not yet validated here'
c         stop
         pt2=kn_cmpborn(1,5)**2+kn_cmpborn(2,5)**2
         fact=pt2/(pt2+ptsupp**2)
      else
         fact=1
      endif
      end

      subroutine set_fac_ren_scales(muf,mur)
      implicit none
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      real * 8 muf,mur,pXX(0:3),dotp,powheginput
      logical ini
      data ini/.true./
      integer runningscale
      real * 8 pt2,m2
      
      runningscale=powheginput('#runningscale')
      if(runningscale.lt.0) runningscale=3

      if (ini) then
         if(runningscale.eq.0) then
            write(*,*) '****************************************'
            write(*,*) '****************************************'
            write(*,*) '**   mur=2 * mX (fixed) used for Bbar **'
            write(*,*) '**   muf=2 * mX (fixed) used for Bbar **'
            write(*,*) '****************************************'
            write(*,*) '****************************************'            
         elseif(runningscale.eq.1) then
            write(*,*) '****************************************'
            write(*,*) '****************************************'
            write(*,*) '**   mur=pt  used for Bbar function   **'
            write(*,*) '**   muf=pt  used for Bbar function   **'
            write(*,*) '****************************************'
            write(*,*) '****************************************'
         elseif(runningscale.eq.2) then
            write(*,*) '****************************************'
            write(*,*) '****************************************'
            write(*,*) '**   mur=XX inv mass  used for Bbar   **'
            write(*,*) '**   muf=XX inv mass  used for Bbar   **'
            write(*,*) '****************************************'
            write(*,*) '****************************************'
         elseif(runningscale.eq.3) then
            write(*,*) '****************************************'
            write(*,*) '****************************************'
            write(*,*) '**   mur=Ht/2  used for Bbar function **'
            write(*,*) '**   muf=Ht/2  used for Bbar function **'
            write(*,*) '****************************************'
            write(*,*) '****************************************'

         elseif(runningscale.eq.10) then
            write(*,*) '*******************************************'
            write(*,*) '*******************************************'
            write(*,*) '**   mur=250 GeV (fixed) used for Bbar   **'
            write(*,*) '**   muf=250 GeV (fixed) used for Bbar   **'
            write(*,*) '*******************************************'
            write(*,*) '*******************************************'
         else
            write(*,*) 'ERROR: Invalid runningscale'
            call exit(-1)
         endif
         ini=.false.            
      endif
      if(runningscale.eq.0) then
         mur=2*sqrt(dotp(kn_pborn(0,3),kn_pborn(0,3)))
         muf=mur
      elseif(runningscale.eq.1) then
         pt2=kn_pborn(1,5)**2+kn_pborn(2,5)**2
         mur=sqrt(pt2)
         muf=mur
      elseif(runningscale.eq.2) then
         pXX(:)=kn_pborn(:,3)+kn_pborn(:,4)
         pt2=dotp(pXX,pXX)
         muf=sqrt(pt2)
         mur=muf
      elseif(runningscale.eq.3) then
         pXX(:)=kn_pborn(:,3)+kn_pborn(:,4)
         m2=dotp(pXX,pXX)
         pt2=kn_pborn(1,5)**2+kn_pborn(2,5)**2
         muf=(sqrt(m2+pt2)+sqrt(pt2))/2d0
         mur=muf
      elseif(runningscale.eq.10) then
         mur=250d0
c         mur=400d0
         muf=mur
      endif
      
      end
