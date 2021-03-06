      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 xborn(ndiminteg-3)
      real * 8 m2,xjac,tau,y,beta,vec(3),cth,cthdec,phidec,s,
     # z,zhigh,zlow
      integer mu,k,i,j
      logical ini
      data ini/.true./
      save ini
      real *8 lepmass(3),decmass
      common/clepmass/lepmass,decmass
      real*8 rkallen
      external rkallen
      real*8 pmod,sqla,betal
      real * 8 mass_low,mass_high,phsp_Wm,phsp_Ww,phsp_Wmass2,phsp_WmWw,
     +         phsp_Wmass2low,phsp_Wmass2high
      save phsp_Wm,phsp_Ww,phsp_Wmass2,phsp_WmWw,
     +     phsp_Wmass2low,phsp_Wmass2high
      real * 8 powheginput
      if(ini) then
c     set initial- and final-state masses for Born and real
         do k=1,nlegreal
            kn_masses(k)=0
         enddo
         kn_masses(3)=decmass
         ini=.false.
         phsp_Wm=powheginput('#phsp_Wm')
         phsp_Ww=powheginput('#phsp_Ww')
         if(phsp_Wm.lt.0) phsp_Wm=ph_Wmass
         if(phsp_Ww.lt.0) phsp_Ww=ph_Wwidth
         phsp_Wmass2=phsp_Wm**2
         phsp_WmWw=phsp_Wm*phsp_Ww

c mass window
         mass_low = powheginput("#mass_low")
         if (mass_low.le.0d0) mass_low=1d0
         mass_low = max(mass_low,decmass)
         phsp_Wmass2low= mass_low**2
*
         mass_high = powheginput("#mass_high")
         if (mass_high.le.0.d0) mass_high=sqrt(kn_sbeams)
         mass_high = min(mass_high,sqrt(kn_sbeams))
         phsp_Wmass2high= mass_high**2
*
         write(*,*) '*************************************'
         write(*,*) 'Z mass = ',ph_Zmass
         write(*,*) 'Z width = ',ph_Zwidth
         write(*,*) 'W mass = ',ph_Wmass
         write(*,*) 'W width = ',ph_Wwidth
         write(*,*) '1/alphaem = ',1d0/ph_alphaem
         write(*,*) 'sthw2 = ',ph_sthw2
         write(*,*) '(unit_e)^2 = ',ph_unit_e**2
         write(*,*) '(g_w)^2 = ',ph_unit_e*ph_unit_e/ph_sthw2
         write(*,*) 'CKM matrix' 
         do i=1,3
            write(*,*) (ph_CKM(i,j),j=1,3)
         enddo
         write(*,*) '*************************************'
         write(*,*)
         write(*,*) '*************************************'
         write(*,*) sqrt(phsp_Wmass2low),'< M_W <',sqrt(phsp_Wmass2high)
         write(*,*) '*************************************'
      endif
c 1 /(16 pi S) d m^2 d cth d y
      xjac=1d0/kn_sbeams/(16*pi)
      zlow=atan((phsp_Wmass2low - phsp_Wmass2)/phsp_WmWw)
      zhigh=atan((phsp_Wmass2high - phsp_Wmass2)/phsp_WmWw)
      z=zlow+(zhigh-zlow)*xborn(1)
      m2=phsp_WmWw*tan(z)+phsp_Wmass2
c d m^2 jacobian
      xjac=xjac*(zhigh-zlow)*(phsp_WmWw/cos(z)**2)
c d x1 d x2 = d tau d y;
      tau=m2/kn_sbeams
      s=kn_sbeams*tau
      kn_sborn=s
c ymax=|log(tau)|/2
      y=-(1-2*xborn(2))*log(tau)/2
      xjac=-xjac*log(tau)
      z=1-2*xborn(3)
      xjac=xjac*2
      cth=1.5d0*(z-z**3/3)
      xjac=xjac*1.5d0*(1-z**2)
      kn_born_pt2=0d0
      
c
      sqla = rkallen(m2,kn_masses(3)**2,0d0)
      xjac = xjac * sqla/m2

      cthdec=cth
      phidec=0d0
      kn_cthdec=cthdec
      kn_jacborn=xjac
c Build kinematics
      kn_xb1=sqrt(tau)*exp(y)
      kn_xb2=tau/kn_xb1
c decay products in their rest frame
      pmod = rkallen(m2,kn_masses(3)**2,0d0)/sqrt(m2) / 2d0

      kn_cmpborn(0,3)=sqrt( pmod**2 + kn_masses(3)**2 )
      kn_cmpborn(1,3)=pmod * sqrt(1-kn_cthdec**2)*cos(phidec)
      kn_cmpborn(2,3)=pmod * sqrt(1-kn_cthdec**2)*sin(phidec)
      kn_cmpborn(3,3)=pmod * kn_cthdec

      kn_cmpborn(0,4)= sqrt(m2) - kn_cmpborn(0,3)
      kn_cmpborn(1,4)= -kn_cmpborn(1,3)
      kn_cmpborn(2,4)= -kn_cmpborn(2,3)
      kn_cmpborn(3,4)= -kn_cmpborn(3,3)
c initial state particles
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
      kn_minmass=sqrt(phsp_Wmass2low)
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
               write(*,*) '    scales set to the W virtuality ' 
            elseif (powheginput('#runningscale').eq.2) then
               write(*,*) '    scales set to the W transverse mass ' 
            else 
               write(*,*) "runningscale value not allowed"
               call exit(1)
            endif
            write(*,*) '*************************************'
            ini=.false.
         endif
cc
cc in case of FSR, if flg_btildepar.eq.'r', the running scale 
cc is the l nu virtuality calculated with real radiation kinematics 
cc if btlscalereal 1 otherwise the running scale is l nu virtuality calculated 
cc with underlying Born kinematics. The counterterms are 
cc always calculated with the underlying born kinematics. 
cc
c         if(flg_btildepart.eq.'r') then
c            muref=sqrt(2d0*dotp(kn_preal(0,3),kn_preal(0,4))
c     1           +kn_masses(3)**2+kn_masses(4)**2)
c         else
            muref=sqrt(2d0*dotp(kn_pborn(0,3),kn_pborn(0,4))
     1          +kn_masses(3)**2+kn_masses(4)**2)
c         endif
c         if(powheginput('#runningscale').eq.2) then
c            pt2=(kn_pborn(1,3)+kn_pborn(1,4))**2+(kn_pborn(2,3)
c     $           +kn_pborn(2,4))**2
c            muref=sqrt(pt2+ph_Wmass*ph_Wmass)
c         endif
      else
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) '    Factorization and renormalization '
            write(*,*) '    scales set to the W mass '
            write(*,*) '*************************************'
            ini=.false.
         endif
         muref=ph_Wmass
      endif
      if(muref.lt.1) muref = 1
      muf=muref
      mur=muref
      mudim2=em_muren2
      end

