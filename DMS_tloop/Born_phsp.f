      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'coupl.inc'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'pwhg_physpar.h'
      real * 8 xborn(ndiminteg-3)
      real * 8 m2,xjac,taumin,tau,y,beta,vec(3),cth,s,
     # z,zhigh,zlow,khiggs,cthmax,bwcutoff
      integer mu,k
      logical ini
      data ini/.true./
      save ini
      real * 8 powheginput
      external powheginput

      logical genflat
      data genflat/.false./
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
cccccccccccccccccccccccccccccccccccccc
c     !:
         if(genflat) then
            write(*,*) '*************************************'
            write(*,*) "WARNING: k3 virtuality not importance sampled. "
            write(*,*) '*************************************'
         else
            write(*,*) '*************************************'
            write(*,*)
     $           "k3 virtuality is importance sampled. "
            if(phdm_efftheory.eq.'F') then
               write(*,*) 'BW importance sampling'
            elseif(phdm_efftheory.eq.'T') then
               write(*,*) 'xxx^2 importance sampling'
            endif
            write(*,*) '*************************************'
         endif
c     !: following stuff defined in init_couplings
c$$$         ph_HmHw=hmass*hwidth
c$$$         ph_Hmass2=hmass**2
c$$$         bwcutoff=powheginput("bwcutoff")
c$$$         ph_Hmass2low=max(hmass-bwcutoff*hwidth,0d0)**2
c$$$         ph_Hmass2high=min(hmass+bwcutoff*hwidth,sqrt(kn_sbeams))**2
cccccccccccccccccccccccccccccccccccccc
         ini=.false.
      endif

      if(.not.genflat) then
         if(phdm_efftheory.eq.'F') then
c     !ER: keep this for backward compatibility, it is correct to recover
c     the original Higgs+1jet code.
c     This is a BW importance sampling that integrates to 1
c$$$            zlow=atan((ph_Hmass2low  - ph_Hmass2)/ph_HmHw)
c$$$            zhigh=atan((min(ph_Hmass2high,kn_sbeams)  - ph_Hmass2)/ph_HmHw)
c$$$            z=zlow+(zhigh-zlow)*xborn(1)
c$$$            xjac=zhigh-zlow
c$$$            m2=ph_HmHw*tan(z)+ph_Hmass2
c$$$c     The BW integrates to Pi ==> divide by Pi
c$$$            xjac=xjac/pi
c     !ER: BW importance sampling for dM^2
            zlow=atan((ph_Hmass2low  - ph_Hmass2)/ph_HmHw)
            zhigh=atan((min(ph_Hmass2high,kn_sbeams)  - ph_Hmass2)/ph_HmHw)
            z=zlow+(zhigh-zlow)*xborn(1)
            xjac=zhigh-zlow
            m2=ph_HmHw*tan(z)+ph_Hmass2
c     d m^2 jacobian
            xjac=xjac*ph_HmHw/cos(z)**2
         elseif(phdm_efftheory.eq.'T') then
            m2=ph_Hmass2low+(ph_Hmass2high-ph_Hmass2low)*xborn(1)**2
            xjac=2*xborn(1)*(ph_Hmass2high-ph_Hmass2low)
c     !ER: uncomment to test BW sampling also in EFT approach
c$$$            zlow=atan((ph_Hmass2low  - ph_Hmass2)/ph_HmHw)
c$$$            zhigh=atan((min(ph_Hmass2high,kn_sbeams)  - ph_Hmass2)/ph_HmHw)
c$$$            z=zlow+(zhigh-zlow)*xborn(1)
c$$$            xjac=zhigh-zlow
c$$$            m2=ph_HmHw*tan(z)+ph_Hmass2
c$$$            xjac=xjac*ph_HmHw/cos(z)**2
         endif
      else
         m2=ph_Hmass2low+(ph_Hmass2high-ph_Hmass2low)*xborn(1)
c     d m^2 jacobian
         xjac=(ph_Hmass2high-ph_Hmass2low)
c     Effect of BW from propagator or 1/lambda suppression
c     is coded in Born.f, virtual.f and real.f.
c     (including pi factors)
      endif

ccccccccccccccccccccccccccccccccccccc
c     !ER: >>>>>>>>>. IMPORTANT <<<<<<<<<<<<
c     !: although it seems this is never used, it is needed to set it 
c     to avoid problems with smartsig. We need to be sure that we 
c     probe proportionalities (smartsig machinery) with a kinematic
c     with non-vanishing m2. If kn_masses(3) is not set, this is not
c     guaranteed.
      kn_masses(3)=sqrt(m2)
ccccccccccccccccccccccccccccccccccccc
c d x1 d x2 = d tau d y;
      taumin=( sqrt(m2+kn_ktmin**2) + kn_ktmin )**2/kn_sbeams
      tau=exp(log(taumin)*(1-xborn(2)**2))
      xjac=xjac*tau*abs(log(taumin))*2*xborn(2)
      s=kn_sbeams*tau
      kn_sborn=s
c compute H momentum in partonic cm
      khiggs=(s-m2)/(2*sqrt(s))
c ymax=|log(tau)|/2
      y=-(1-2*xborn(3))*log(tau)/2
      xjac=-xjac*log(tau)
      cthmax=sqrt(1-(kn_ktmin/khiggs)**2)
      z=1-2*xborn(4)
      xjac=xjac*2
      cth=1.5d0*(z-z**3/3)
      xjac=xjac*1.5d0*(1-z**2)
      cth=cth*cthmax
c      kn_born_pt2=(1-cth**2)*khiggs**2
      xjac=xjac*cthmax
c supply 2 pi for azimuthal integration (not performed)
      xjac=xjac*2*pi
      xjac=xjac*(s-m2)/s/(8*(2*pi)**2)
c
ccccccccccccccccccccccccccccccc
c     !: check this factor again
      xjac=xjac*sqrt(1d0-4*m_1**2/m2)/(4*pi)**2
ccccccccccccccccccccccccccccccc
      kn_jacborn=xjac
c Build kinematics
c velocity of H in partonic CM
      kn_cmpborn(1,3)=sqrt(1-cth**2)*khiggs
      kn_cmpborn(2,3)=0
      kn_cmpborn(3,3)=cth*khiggs
      kn_cmpborn(0,3)=sqrt(m2+khiggs**2)
      kn_xb1=sqrt(tau)*exp(y)
      kn_xb2=tau/kn_xb1
      kn_cmpborn(1,4)=-kn_cmpborn(1,3)
      kn_cmpborn(2,4)=-kn_cmpborn(2,3)
      kn_cmpborn(3,4)=-kn_cmpborn(3,3)
      kn_cmpborn(0,4)=khiggs
      kn_cmpborn(0,1)=sqrt(kn_sborn)/2
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
      kn_minmass=kn_ktmin + sqrt(kn_ktmin**2 + ph_Hmass2low)
      end


      subroutine born_suppression(fact)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'coupl.inc'
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
         pt2=kn_cmpborn(1,4)**2+kn_cmpborn(2,4)**2
         fact=pt2/(pt2+ptsupp**2)
      else
         fact=1
      endif
      end



      subroutine set_fac_ren_scales(muf,mur)
      implicit none
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_physpar.h'
      real * 8 muf,mur,pXX(0:3),dotp,powheginput
      logical ini
      data ini/.true./
      integer runningscale
      real * 8 pt2,m2
      external powheginput,dotp
      
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
         mur=2*physpar_ml(3)
         muf=mur
      elseif(runningscale.eq.1) then
         pt2=kn_pborn(1,4)**2+kn_pborn(2,4)**2
         mur=sqrt(pt2)
         muf=mur
      elseif(runningscale.eq.2) then
         pXX(:)=kn_pborn(:,3)
         pt2=dotp(pXX,pXX)
         muf=sqrt(pt2)
         mur=muf
      elseif(runningscale.eq.3) then
         pXX(:)=kn_pborn(:,3)
         m2=dotp(pXX,pXX)
         pt2=kn_pborn(1,4)**2+kn_pborn(2,4)**2
         muf=(sqrt(m2+pt2)+sqrt(pt2))/2d0
         mur=muf
      elseif(runningscale.eq.10) then
         mur=250d0
         muf=mur
      endif
      
      end
