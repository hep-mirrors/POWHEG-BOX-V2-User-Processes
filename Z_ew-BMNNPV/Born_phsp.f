      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 xborn(ndiminteg-3)
      real * 8 xjac,tau,y,beta,vec(3),cth,cthdec,phidec,s,
     # z,zhigh,zlow
      integer mu,k
      logical ini
      data ini/.true./
      save ini
      real*8 random
      external random
      real *8 decmass
      common/clepmass/decmass
      real*8 lambda,dotp
      external lambda,dotp
      real*8 pmod

      real*8 anorm,anbw,anlog,pbw,csi

      real * 8 mass_low,
     1     phsp_Zmass2low,phsp_Zmass2high
      real * 8 phsp_Zm,phsp_Zw,phsp_Zmass2,phsp_ZmZw
      save phsp_Zm,phsp_Zw,phsp_Zmass2,phsp_ZmZw,
     1       phsp_Zmass2low,phsp_Zmass2high

      real * 8 powheginput
      if(ini) then
c     set initial- and final-state masses for Born and real
         do k=1,2
            kn_masses(k)=0
         enddo
         kn_masses(3)=decmass
         kn_masses(4)=decmass
         kn_masses(nlegreal)=0
         ini=.false.
         phsp_Zm=powheginput('#phsp_Zm')
         phsp_Zw=powheginput('#phsp_Zw')
         if(phsp_Zm.lt.0) phsp_Zm=ph_Zmass
         if(phsp_Zw.lt.0) phsp_Zw=ph_Zwidth
         phsp_Zmass2=phsp_Zm**2
         phsp_ZmZw=phsp_Zm*phsp_Zw

c     mass window
         mass_low = powheginput("#mass_low")
         if (mass_low.le.0d0) mass_low=30d0

         mass_low = max(mass_low,2.d0*decmass)
         phsp_Zmass2low = mass_low**2
         phsp_Zmass2high = kn_sbeams

      endif
c Phase space:
c 1 /(16 pi S) d m^2 d cth d y
      xjac=1d0/kn_sbeams/(16*pi)


      pbw=0.5d0

      zlow=atan((phsp_Zmass2low  - phsp_Zmass2)/phsp_ZmZw)
      zhigh=atan((phsp_Zmass2high  - phsp_Zmass2)/phsp_ZmZw)

      anbw = (zhigh - zlow)/phsp_ZmZw

      anlog = log(phsp_Zmass2high/phsp_Zmass2low)

      anorm = pbw*anbw + (1d0-pbw)*anlog

c      z=zlow+(zhigh-zlow)*xborn(1)
c      m2=phsp_ZmZw*tan(z)+phsp_Zmass2

      if (xborn(1).lt.pbw) then
          s = phsp_Zmass2 + phsp_ZmZw*tan(phsp_ZmZw*anbw*xborn(2)+zlow)
      else
          s = exp(anlog*xborn(2)) * phsp_Zmass2low
      endif

      xjac = xjac /
     &        ( pbw/((s-phsp_Zmass2)**2+phsp_ZmZw**2)/anbw
     &         + (1.d0-pbw)/s/anlog)
c d m^2 jacobian
c      xjac=xjac*(zhigh-zlow)
c      xjac=xjac*phsp_ZmZw/cos(z)**2
c d x1 d x2 = d tau d y;
      tau=s/kn_sbeams
      kn_sborn=s
c ymax=|log(tau)|/2
      y=-(1-2*xborn(3))*log(tau)/2
      xjac=-xjac*log(tau)
      z=1-2*xborn(4)
      xjac=xjac*2
      cth=1.5d0*(z-z**3/3)
      xjac=xjac*1.5d0*(1-z**2)
      kn_born_pt2=0d0
      
      xjac = xjac * sqrt(lambda(s,kn_masses(3)**2,kn_masses(3)**2))/s
c
      cthdec=cth
      phidec=0d0
      kn_cthdec=cthdec
      kn_jacborn=xjac
c Build kinematics
      kn_xb1=sqrt(tau)*exp(y)
      kn_xb2=tau/kn_xb1
c initial state particles
      kn_cmpborn(0,1)=sqrt(s)/2
      kn_cmpborn(1,1)=0
      kn_cmpborn(2,1)=0
      kn_cmpborn(3,1)=kn_cmpborn(0,1)

      kn_cmpborn(0,2)=kn_cmpborn(0,1)
      kn_cmpborn(1,2)=0
      kn_cmpborn(2,2)=0      
      kn_cmpborn(3,2)=-kn_cmpborn(0,2)

c decay products in their rest frame
      pmod = sqrt(lambda(s,decmass**2,decmass**2))
     +            /2d0/sqrt(s)

      kn_cmpborn(0,3) = sqrt(pmod**2 + decmass**2)
      kn_cmpborn(1,3) = pmod*sqrt(1-kn_cthdec**2)*cos(phidec)
      kn_cmpborn(2,3) = pmod*sqrt(1-kn_cthdec**2)*sin(phidec)
      kn_cmpborn(3,3) = pmod*kn_cthdec
     
      kn_cmpborn(0,4) = sqrt(s) - kn_cmpborn(0,3)
      kn_cmpborn(1,4) = - kn_cmpborn(1,3)
      kn_cmpborn(2,4) = - kn_cmpborn(2,3)
      kn_cmpborn(3,4) = - kn_cmpborn(3,3)

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
      kn_minmass=sqrt(phsp_Zmass2low)

      end


      subroutine born_suppression(fact)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      logical ini
      data ini/.true./
      real * 8 fact,pt
      real * 8 powheginput
      external powheginput
      if (ini) then
         pt = powheginput("#ptsupp")         
         if(pt.gt.0) then
            write(*,*) ' ******** WARNING: ptsupp is deprecated'
            write(*,*) ' ******** Replace it with bornsuppfact'
         else
            pt = powheginput("#bornsuppfact")
         endif
         if(pt.ge.0) then
            write(*,*) '**************************'
            write(*,*) 'No Born suppression factor'
            write(*,*) '**************************'
         endif
         ini=.false.
      endif
      fact=1d0
      end


      subroutine set_fac_ren_scales(muf,mur)
      implicit none
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_em.h'
      include 'mathx.h'
      real * 8 muf,mur
      logical ini
      data ini/.true./
      real *8 muref
      real *8 dotp
      external dotp
      logical runningscales
      save runningscales
      real * 8 pt2
      real * 8 powheginput
      external powheginput
      if(ini) then
         if(powheginput('#runningscale').ge.1) then
            runningscales=.true.
         else
            runningscales=.false.
         endif
      endif
      if (runningscales) then
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) '    Factorization and renormalization '
            if (powheginput('#runningscale').eq.1) then
               write(*,*) '    scales set to the Z virtuality ' 
            else 
               write(*,*) "runningscale value not allowed"
               call exit(1)
            endif
            write(*,*) '*************************************'
            ini=.false.
         endif
         if(flg_btildepart.eq.'r') then
            muref=sqrt(2d0*dotp(kn_preal(0,3),kn_preal(0,4))
     1           +kn_masses(3)**2+kn_masses(4)**2)
         else
            muref=sqrt(2d0*dotp(kn_pborn(0,3),kn_pborn(0,4))
     1           +kn_masses(3)**2+kn_masses(4)**2)
         endif
      else
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) '    Factorization and renormalization '
            write(*,*) '    scales set to the Z mass '
            write(*,*) '*************************************'
            ini=.false.
         endif
         muref=ph_Zmass
      endif
      muf=muref
      mur=muref
      mudim2=em_muren2
      end
      

      function lambda(x,y,z)
      real*8 lambda
      real*8 x,y,z
      lambda = x**2+y**2+z**2 - 2.d0*x*y - 2.d0*x*z - 2.d0*y*z
      return
      end
