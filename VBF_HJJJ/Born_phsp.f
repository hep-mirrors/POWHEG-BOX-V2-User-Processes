      subroutine born_phsp(xborn)
      implicit none
      include 'brinclude.h'
      include 'pwhg_kn.h'
      include 'coupl.inc'
      include 'PhysPars.h'
      real * 8 xborn(ndiminteg-3),jac,tmpvec(0:3),bwcutoff,mass
      external mass
      integer k, mu, j, i
      logical ini,fullphsp,check
      data check/.false./     
      data ini/.true./
      save ini,fullphsp
      real * 8 powheginput
      logical higgsfixedwidth
      real * 8 pt1cut,pt2cut,pt1,pt2,m2jjmin,m2jj,pt3,pt3cut
      real * 8 mjj1, mjj2, mjj3, dotp, m2, m2min
      real * 8 mjj_max, mjj_maxcut
      save pt1cut, pt2cut, pt3cut, m2jjmin, mjj_maxcut
      external dotp
      if(ini) then
c     set initial- and final-state masses for Born and real
         do k=1,nlegborn
            kn_masses(k)=0d0
         enddo
         kn_masses(nlegreal)=0d0
         kn_masses(3)=hmass

c     set initial- and final-state masses for Born and real
         higgsfixedwidth=powheginput("#higgsfixedwidth").gt.0
         ini=.false.
         if(powheginput("#ptcut").gt.0d0) then
            pt1cut = powheginput("#ptcut")
            pt2cut = powheginput("#ptcut")
            pt3cut = powheginput("#ptcut")
         else
            pt1cut = 0d0
            pt2cut = 0d0
            pt3cut = 0d0
         endif
         
         m2min=0.1d0**2
         
         if(powheginput("#mjjmaxcut").gt.0d0) then
            mjj_maxcut = powheginput("#mjjmaxcut")**2
         else
            mjj_maxcut=0d0
         endif
         if(powheginput("#mjjcut").gt.0d0) then
            m2jjmin = powheginput("#mjjcut")**2
         else
            m2jjmin = 0d0
         endif
         if ((pt1cut.ne.0d0).or.(pt2cut.ne.0d0).or.(pt3cut.ne.0d0)
     &                      .or.(m2jjmin.ne.0)) then
            write(*,*) '***************************************'
            write(*,*) '****  GENERATION CUTS ACTIVATED  ! ****' 
            write(*,*) '***************************************'
            write(*,*) '****  ptj>',pt1cut,            '   ****' 
            write(*,*) '****  mj1j2>',sqrt(mjj_maxcut),'   ****' 
            write(*,*) '****  mjj>',sqrt(m2jjmin),     '   ****' 
            write(*,*) '****  m2min>',sqrt(m2min),     '   ****'             
            write(*,*) '***************************************'            
         endif

         fullphsp = .false.
         ini=.false.
      endif      

         if(powheginput("#ptcut").gt.0d0) then
            pt1cut = powheginput("#ptcut")
            pt2cut = powheginput("#ptcut")
            pt3cut = powheginput("#ptcut")
         else
            pt1cut = 0d0
            pt2cut = 0d0
            pt3cut = 0d0
         endif

         m2min=0.1d0**2

         if(powheginput("#mjjmaxcut").gt.0d0) then
            mjj_maxcut = powheginput("#mjjmaxcut")**2
         endif
         if(powheginput("#mjjcut").gt.0d0) then
            m2jjmin = powheginput("#mjjcut")**2
         else
            m2jjmin = 0d0
         endif



      brkn_ktmin=0
      kn_ktmin=0
      call born_phsp_hjj(xborn)
c      kn_masses(3)=sqrt(brkn_cmpborn(0,3)**2-brkn_cmpborn(1,3)**2
c     $     -brkn_cmpborn(2,3)**2-brkn_cmpborn(3,3)**2)
!       print*, ndiminteg-6
      if(fullphsp) then
         if(xborn(ndiminteg-3).lt.0.25d0) then
            brkn_emitter=4
            call br_real_phsp_fsr(xborn(ndiminteg-5),jac)
            jac=jac * 1/brkn_dijterm(4,6)
     1    /(1/brkn_dijterm(0,4)+1/brkn_dijterm(0,6)+1/brkn_dijterm(4,6))
     2        * brkn_cmpreal(0,4)/(brkn_cmpreal(0,4)+brkn_cmpreal(0,6))
            kn_cmpborn=brkn_cmpreal
            kn_pborn=brkn_preal
            kn_xb1=brkn_x1
            kn_xb2=brkn_x2
            if(xborn(ndiminteg-3).lt.0.125d0) then
               tmpvec=kn_cmpborn(:,4)
               kn_cmpborn(:,4)=kn_cmpborn(:,6)
               kn_cmpborn(:,6)=tmpvec
               tmpvec=kn_pborn(:,4)
               kn_pborn(:,4)=kn_pborn(:,6)
               kn_pborn(:,6)=tmpvec
            endif
         elseif(xborn(ndiminteg-3).lt.0.5d0) then
            brkn_emitter=5
            call br_real_phsp_fsr(xborn(ndiminteg-5),jac)
            jac=jac * 1/brkn_dijterm(5,6)
     1    /(1/brkn_dijterm(0,5)+1/brkn_dijterm(0,6)+1/brkn_dijterm(5,6))
     2        * brkn_cmpreal(0,5)/(brkn_cmpreal(0,5)+brkn_cmpreal(0,6))
            kn_cmpborn=brkn_cmpreal
            kn_pborn=brkn_preal
            kn_xb1=brkn_x1
            kn_xb2=brkn_x2
            if(xborn(ndiminteg-3).lt.0.375d0) then
               tmpvec=kn_cmpborn(:,5)
               kn_cmpborn(:,5)=kn_cmpborn(:,6)
               kn_cmpborn(:,6)=tmpvec
               tmpvec=kn_pborn(:,5)
               kn_pborn(:,5)=kn_pborn(:,6)
               kn_pborn(:,6)=tmpvec
            endif
         else
            brkn_emitter=0
            call br_real_phsp_isr(xborn(ndiminteg-5),jac)
            jac=jac * 1/brkn_dijterm(0,6)
     1    /(1/brkn_dijterm(0,4)+1/brkn_dijterm(0,6)+1/brkn_dijterm(4,6))
            kn_cmpborn=brkn_cmpreal
            kn_pborn=brkn_preal
            kn_xb1=brkn_x1
            kn_xb2=brkn_x2
            if(xborn(ndiminteg-3).lt.0.67d0) then
               tmpvec=kn_cmpborn(:,4)
               kn_cmpborn(:,4)=kn_cmpborn(:,6)
               kn_cmpborn(:,6)=tmpvec
               tmpvec=kn_pborn(:,4)
               kn_pborn(:,4)=kn_pborn(:,6)
               kn_pborn(:,6)=tmpvec
            elseif(xborn(ndiminteg-3).lt.0.84d0) then
               tmpvec=kn_cmpborn(:,5)
               kn_cmpborn(:,5)=kn_cmpborn(:,6)
               kn_cmpborn(:,6)=tmpvec
               tmpvec=kn_pborn(:,5)
               kn_pborn(:,5)=kn_pborn(:,6)
               kn_pborn(:,6)=tmpvec
            endif
         endif
      else
         brkn_emitter=0
         call br_real_phsp_isr(xborn(8),jac)
         kn_cmpborn=brkn_cmpreal
         kn_pborn=brkn_preal
         kn_xb1=brkn_x1
         kn_xb2=brkn_x2
         jac=jac/4
      endif
c factor of 4 to compensate for the 0.25 range for each
c of the above contributions.
      kn_jacborn=4*brkn_jacborn*jac

c     set the CMS energy 
      kn_sborn=brkn_sreal

c     minimal final state mass 
      kn_minmass=kn_ktmin + sqrt(kn_ktmin**2 + ph_Hmass2low)
      
      pt1 = sqrt(kn_pborn(1,4)**2+kn_pborn(2,4)**2)
      pt2 = sqrt(kn_pborn(1,5)**2+kn_pborn(2,5)**2)  
      pt3 = sqrt(kn_pborn(1,6)**2+kn_pborn(2,6)**2)  
      mjj1=dotp(kn_pborn(0,4),kn_pborn(0,6))
      mjj2=dotp(kn_pborn(0,5),kn_pborn(0,6))
      mjj3=dotp(kn_pborn(0,4),kn_pborn(0,5))
      mjj_max = max(mjj1,mjj2)
      mjj_max = max(mjj_max,mjj3)
      
      if(mjj_max.lt.mjj_maxcut) then
         kn_jacborn=0d0
      endif
 
      if ((pt1.lt.pt1cut).or.(pt2.lt.pt2cut).or.(pt3.lt.pt3cut)) then
         kn_jacborn=0d0
      endif      

      if ((mjj1.lt.m2jjmin).or.(mjj2.lt.m2jjmin).or.(mjj3.lt.m2jjmin)) then
         kn_jacborn=0d0
      endif  
      
      do i=1,2
        do j=i+1,3
          m2=2d0*abs(dotp(kn_pborn(0,i+3),kn_pborn(0,j+3)))
          if(m2.lt.m2min) kn_jacborn=0d0
        enddo
      enddo
      
      do i=1,3
         m2=min(abs(2d0*dotp(kn_pborn(0,i+3),kn_pborn(0,1))),
     &          abs(2d0*dotp(kn_pborn(0,i+3),kn_pborn(0,2)))) 
          if(m2.lt.m2min) kn_jacborn=0d0
      
      enddo

      if (check) then
         write(*,*) ''
         print*, 'kn_jacborn', kn_jacborn
         write(*,*) 'new set CM _ALL'  
         write(*,*) 'random no', xborn(ndiminteg-3)
         do j=1,nlegborn
            write(*,*) 'mom ',j,(kn_cmpborn(mu,j),mu=0,3)
         enddo      
         do j=1,nlegborn
            write(*,*) 'mom ',j,(kn_pborn(mu,j),mu=0,3)
            write(*,*) 'mass ',j,mass(kn_pborn(0,j))
         enddo
         call checkmomzero(nlegborn,kn_pborn)
      endif

      end


      subroutine born_phsp_hjj(xborn)
      implicit none
!       include 'nlegborn.h'
!       include 'pwhg_flst.h'
      include 'brinclude.h'
      include 'pwhg_kn.h'

      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'PhysPars_Higgs.h'
      real * 8 xborn(ndiminteg-6)
      real * 8 m2,xjac,taumin,tau,y,beta,betaCM,vec(3),cth,s,
     #     z,zhigh,zlow
      integer mu,k,j
      logical ini
      data ini/.true./
      save ini
      real * 8 Vmass2,Vmass2low,Vmass2high,VmVw  
      real * 8 m2jj,pV(0:3),pVmod,pVmod2,pJ(0:3,2),cthj,phij,pcmjj(0:3),
     #     pcmjjmod,ptmp(0:3,2), weight, m22,pt3cut
      real * 8 mass      
      external mass      
      logical check
      parameter(check=.false.)
      logical BW
      parameter (BW=.true.)
      real * 8 epsilon
      parameter (epsilon=1d-10)
      real * 8 pt1cut,pt2cut,pt1,pt2,m2jjmin
      real * 8 BW_fixed,BW_running
      logical higgsfixedwidth
      save higgsfixedwidth
      real * 8 powheginput
      external powheginput


      Vmass2 = ph_Hmass2
      Vmass2low = ph_Hmass2low
      Vmass2high = ph_Hmass2high
      VmVw = ph_HmHw

      if (BW) then
         zlow=atan((Vmass2low  - Vmass2)/VmVw)
         zhigh=atan((min(Vmass2high,kn_sbeams)  - Vmass2)/VmVw)
         z=zlow+(zhigh-zlow)*xborn(1)
         xjac=zhigh-zlow
         m2=VmVw*tan(z)+Vmass2
c     The BW integrates to Pi ==> divide by Pi
         xjac=xjac/pi
!          if(.not.higgsfixedwidth) then
c     running width
c            BW_fixed=ph_HmHw/((m2-ph_Hmass2)**2 + ph_HmHw**2)
c            BW_running= (m2*ph_Hwidth/ph_Hmass) /
c     $           ((m2-ph_Hmass2)**2+(m2*ph_Hwidth/ph_Hmass)**2)
c            xjac = xjac * BW_running/BW_fixed
!          endif
      else
         xjac = 1
         m2 = Vmass2
      endif



c     d x1 d x2 = d tau d y;
      taumin=m2/kn_sbeams
      tau=exp(log(taumin)*(1-xborn(2)**2))
      xjac=xjac*tau*abs(log(taumin))*2*xborn(2)
      s=kn_sbeams*tau
      brkn_sborn=s
c     ymax=|log(tau)|/2
      y=-(1-2*xborn(3))*log(tau)/2
      xjac=-xjac*log(tau)

c     generate dijet squared mass m2jj
      m2jj = xborn(4)*(sqrt(s)-sqrt(m2))**2
      xjac = xjac * (sqrt(s)-sqrt(m2))**2
      
      pV(0)=(s+m2-m2jj)/(2*sqrt(s))
      pVmod2 = pV(0)**2-m2
      
      if (pVmod2.lt.epsilon) then
         pVmod = 0d0
      else
         pVmod = sqrt(pVmod2)
      endif
      
      z=1-2*xborn(5)
      xjac=xjac*2
      cth=1.5d0*(z-z**3/3)
      xjac=xjac*1.5d0*(1-z**2)
      
      pV(1) = pVmod*sqrt(1-cth**2)
      pV(2) = 0d0
      pV(3) = pVmod*cth

c     supply 2 pi for azimuthal integration (not performed)
      xjac=xjac*2*pi
c     supply the other factors to the jacobian
c     factor for the two-body jet phase space
      xjac=xjac/(8*(2*pi)**2)
c     factor for V production
      xjac=xjac/(4*(2*pi)**3)*pVmod/sqrt(s)

c     Build kinematics
      brkn_xb1=sqrt(tau)*exp(y)
      brkn_xb2=tau/brkn_xb1
c     boost back in the lab frame
c     now boost everything along 3rd axis
      betaCM=(brkn_xb1-brkn_xb2)/(brkn_xb1+brkn_xb2)
      vec(1)=0
      vec(2)=0
      vec(3)=1
      call mboost(1,vec,betaCM,pV,brkn_pborn(0,3))      

c     build jet momenta in the jet CM frame
      pJ(0,1) = sqrt(m2jj)/2
      pJ(0,2) = pJ(0,1)
c     azimuth and polar angle of a jet
      z=1-2*xborn(6)**2
      xjac=xjac*4*xborn(6)
      cthj=1.5d0*(z-z**3/3)
      xjac=xjac*1.5d0*(1-z**2)

      phij = 2*pi*xborn(7)
      xjac=xjac*2*pi

      brkn_jacborn = xjac
      
      pJ(1,1) = pJ(0,1)*sqrt(1-cthj**2)*sin(phij)
      pJ(2,1) = pJ(0,1)*sqrt(1-cthj**2)*cos(phij)
      pJ(3,1) = pJ(0,1)*cthj
      do mu=1,3
         pJ(mu,2)=-pJ(mu,1)
      enddo

      do mu=0,3
         brkn_pborn(mu,1)=brkn_xb1*kn_beams(mu,1)
         brkn_pborn(mu,2)=brkn_xb2*kn_beams(mu,2)
      enddo

      if (check) then
         call mboost(2,vec,-betaCM,brkn_pborn(0,1),ptmp(0,1))      
         write(*,*) 'CM vec1',(ptmp(mu,1),mu=0,3)
         write(*,*) 'CM vec2',(ptmp(mu,2),mu=0,3)
      endif

c     boost in the lab frame
c     compute first p_plus+p_minus-pV
      do mu=0,3
         pcmjj(mu)= brkn_pborn(mu,1) + brkn_pborn(mu,2) - brkn_pborn(mu,3)
      enddo
      pcmjjmod = sqrt(pcmjj(1)**2+pcmjj(2)**2+pcmjj(3)**2)
c     recompute pcmjj(0) from m2jj, otherwise there are points where 
c     beta > 1 or beta < 0
      pcmjj(0) = sqrt(m2jj+pcmjjmod**2)

      beta=pcmjjmod/pcmjj(0)

      do mu=1,3
         vec(mu)=pcmjj(mu)/pcmjjmod
      enddo

      call mboost(2,vec,beta,pJ(0,1),brkn_pborn(0,4))

      if (check) then
         call mboost(1,vec,-beta,pcmjj(0),ptmp(0,1))
         write(*,*) 'only time component ==> ',(ptmp(mu,1),mu=0,3)
         write(*,*) ''
         write(*,*) 'new set'
         do j=1,br_nlegborn
            write(*,*) 'mom ',j,(brkn_pborn(mu,j),mu=0,3)
            write(*,*) 'mass ',j,mass(brkn_pborn(0,j))
         enddo
         call checkmomzero(br_nlegborn,brkn_pborn)
      endif
      
c     boost in the CM frame
      vec(1)=0
      vec(2)=0
      vec(3)=1
      call mboost(br_nlegborn,vec,-betaCM,brkn_pborn(0,1),brkn_cmpborn(0,1))      
      if (check) then
         write(*,*) ''
         write(*,*) 'new set'     
         do j=1,nlegborn
            write(*,*) 'mom ',j,(brkn_cmpborn(mu,j),mu=0,3)
         enddo
      endif

      call br_compute_csimax_fsr
      
      end
c Mappings of the underlying born configuration in
c brkn_cmpborn(0:3,br_nlegborn), and the xrad(1:3) variables
c in the unit cube, into brkn_real(0:3,nlegreal).
c The factor jac_over_csi*csi*brkn_csimax, multiplied
c by the Born phase space jacobian, yields the real phase
c space jacobian.
c More explicitly:
c d Phi_n = d^3 xrad jac_over_csi csi csimax d Phi_{n-1}
c Since
c  d Phi_n = d phi d y d csi Jrad d Phi_{n-1}
c (where Jrad is given in FNO2006) we get
c                                  d phi d y d csi
c csimax csi jac_over_csi = Jrad  ----------------
c                                    d^3 xrad
c Notice that using d csi=d csitilde csimax the csimax
c factor cancels, and jac_over_csi is as given in the
c code below (see notes on xscaled.tm).
c br_real_phsp_fsr: provides the mapping for the final state
c radiation, assuming that the emitter is the brkn_emitter-th
c particle, and the emitted particle is the nlegreal-th particle
c br_real_phsp_isr: mapping for the initial state radiation
      subroutine br_real_phsp_fsr(xrad,jac)
      implicit none
      real * 8 xrad(3),jac
      include 'pwhg_math.h'
      include 'brinclude.h'
      real * 8 q0,q2,xjac
c Boost the underlying Born variables to their cm frame
      q0=2*brkn_cmpborn(0,1)
      q2=brkn_sborn
      brkn_csitilde=xrad(1)
      xjac=1
      brkn_y=1-2*xrad(2)
      xjac=xjac*2
c importance sampling for brkn_y
      xjac=xjac*1.5d0*(1-brkn_y**2)
      brkn_y=1.5d0*(brkn_y-brkn_y**3/3)
      brkn_azi=2*pi*xrad(3)
      xjac=xjac*2*pi
      brkn_csimax=brkn_csimax_arr(brkn_emitter)
      brkn_csi=brkn_csitilde*brkn_csimax     
c remember: no csimax in the jacobian factor, we are integrating in csitilde 
      call br_real_phsp_fsr_rad
      jac=xjac*brkn_jacreal*brkn_csimax
      end

c br_real_phsp_fsr_rad: provides the mapping for the final state
c radiation, assuming that we are considering the region rad_kinreg
c and the emitted particle is the nlegreal-th particle,
c for given brkn_csi, brkn_y, brkn_azi. Sets the jacobian
c brkn_jacreal so that brkn_jacreal d brkn_csi d brkn_y d brkn_azi times
c the underlying Born jacobian is the phase space volume
      subroutine br_real_phsp_fsr_rad
      implicit none
      include 'pwhg_math.h'
      include 'brinclude.h'
      real * 8 vec(3),q0,beta
      integer i
      data vec/0d0,0d0,1d0/
      save vec
      q0=2*brkn_cmpborn(0,1)
c remember: no csimax factor, we are integrating in csitilde 
      call barradmap(br_nlegborn-2,brkn_emitter-2,q0,brkn_cmpborn(0,3),
     1    brkn_csi,brkn_y,brkn_azi,brkn_preal(0,3),brkn_jacreal)
      beta=(brkn_xb1-brkn_xb2)/(brkn_xb1+brkn_xb2)
      call mboost(br_nlegreal-2,vec,beta,
     1    brkn_preal(0,3),brkn_preal(0,3))
      do i=0,3
         brkn_preal(i,1)=brkn_pborn(i,1)
         brkn_preal(i,2)=brkn_pborn(i,2)
      enddo
      brkn_x1=brkn_xb1
      brkn_x2=brkn_xb2
      brkn_sreal=brkn_sborn
c      call checkmomzero(br_nlegreal,brkn_preal)
      call br_compcmkin
      call br_compdij
      end

      subroutine br_real_phsp_isr(xrad,jac)
      implicit none
      real * 8 xrad(3),jac
      include 'pwhg_math.h'
      include 'brinclude.h'
      real * 8 xjac
      brkn_csitilde=(3-2*xrad(1))*xrad(1)**2
      xjac=6*(1-xrad(1))*xrad(1)
      brkn_y=1-2*xrad(2)
      xjac=xjac*2
      xjac=xjac*1.5d0*(1-brkn_y**2)
      brkn_y=1.5d0*(brkn_y-brkn_y**3/3)
      brkn_azi=2*pi*xrad(3)
      xjac=xjac*2*pi
      call br_compcsimax
      brkn_csi=brkn_csitilde*brkn_csimax
      call br_real_phsp_isr_rad
      jac=xjac*brkn_jacreal*brkn_csimax
      end

      subroutine br_compcsimax
      implicit none
      include 'brinclude.h'
      real * 8 y,xb1,xb2
      xb1=brkn_xb1
      xb2=brkn_xb2
      y=brkn_y
      brkn_csimax=1-max(2*(1+y)*xb1**2/
     1    (sqrt((1+xb1**2)**2*(1-y)**2+16*y*xb1**2)+(1-y)*(1-xb1**2)),
     1            2*(1-y)*xb2**2/
     1    (sqrt((1+xb2**2)**2*(1+y)**2-16*y*xb2**2)+(1+y)*(1-xb2**2)))
      end

      subroutine br_real_phsp_isr_rad
      implicit none
      include 'pwhg_math.h'
      include 'brinclude.h'
      include 'pwhg_kn.h'
      real * 8 y,xb1,xb2,x1,x2,betal,betat,vecl(3),vect(3),
     1         cth,sth,cph,sph,csi,pt2
      integer i,mu
      real * 8 dotp
      external dotp
c the following call sets brkn_csimax, brkn_csimaxp, brkn_csimaxm
c also when br_real_phsp_isr_rad is called directly
c (i.e. not through br_real_phsp_isr_rad0)
      call br_compcsimax
      y=brkn_y
      xb1=brkn_xb1
      xb2=brkn_xb2
      csi=brkn_csi
      cth=y
      sth=sqrt(1-cth**2)
      cph=cos(brkn_azi)
      sph=sin(brkn_azi)
      x1=xb1/sqrt(1-csi)*sqrt((2-csi*(1-y))/(2-csi*(1+y)))
      x2=xb2/sqrt(1-csi)*sqrt((2-csi*(1+y))/(2-csi*(1-y)))
      brkn_x1=x1
      brkn_x2=x2
      do mu=0,3
         brkn_preal(mu,1)=kn_beams(mu,1)*x1
         brkn_preal(mu,2)=kn_beams(mu,2)*x2
      enddo
      brkn_sreal=brkn_sborn/(1-csi)
c Build k_n+1 in the rest frame of brkn_preal
c      write(*,*) ' br_nlegreal ',br_nlegreal
      brkn_preal(0,br_nlegreal)=sqrt(brkn_sreal)*csi/2
      brkn_preal(1,br_nlegreal)=brkn_preal(0,br_nlegreal)*sth*sph
      brkn_preal(2,br_nlegreal)=brkn_preal(0,br_nlegreal)*sth*cph
      brkn_preal(3,br_nlegreal)=brkn_preal(0,br_nlegreal)*cth
c boost it to the frame of brkn_preal
      do i=1,3
         vecl(i)=(brkn_preal(i,1)+brkn_preal(i,2))
     1          /(brkn_preal(0,1)+brkn_preal(0,2))
      enddo      
      betal=sqrt(vecl(1)**2+vecl(2)**2+vecl(3)**2)
      if(betal.gt.0) then
         do i=1,3
            vecl(i)=vecl(i)/betal
         enddo
      else
         vecl(1)=1
         vecl(2)=0
         vecl(3)=0
      endif
      call mboost(1,vecl,betal,
     1    brkn_preal(0,br_nlegreal),brkn_preal(0,br_nlegreal))
c longitudinal boost of underlying Born to zero rapidity frame
      do i=1,3
         vecl(i)=(brkn_pborn(i,1)+brkn_pborn(i,2))
     1          /(brkn_pborn(0,1)+brkn_pborn(0,2))
      enddo
      betal=sqrt(vecl(1)**2+vecl(2)**2+vecl(3)**2)
      if(betal.gt.0) then
         do i=1,3
            vecl(i)=vecl(i)/betal
         enddo
      else
         vecl(1)=1
         vecl(2)=0
         vecl(3)=0
      endif
      call mboost(br_nlegborn-2,vecl,-betal,
     1 brkn_pborn(0,3),brkn_preal(0,3))
c      call printtot(br_nlegborn,brkn_preal(0,1))
c construct transverse boost velocity
      vect(3)=0
      vect(1)=brkn_preal(1,br_nlegreal)
      vect(2)=brkn_preal(2,br_nlegreal)
      pt2=vect(1)**2+vect(2)**2
c      betat=1/sqrt(1+(brkn_sreal*(1-csi))/pt2)
      betat=sqrt(pt2/(pt2+brkn_sreal*(1-csi)))
      if(pt2.eq.0) then
         vect(1)=1
         vect(2)=0
      else
         vect(1)=vect(1)/sqrt(pt2)
         vect(2)=vect(2)/sqrt(pt2)
      endif
c     write(*,*) ' k+1: ',(brkn_preal(mu,br_nlegreal),mu=0,3)
         call mboost(br_nlegborn-2,vect,-betat,
     1        brkn_preal(0,3),brkn_preal(0,3))
c      call printtot(nlegborn,brkn_preal(0,1))
c longitudinal boost in opposite direction
      call mboost(br_nlegborn-2,vecl,betal,
     1 brkn_preal(0,3),brkn_preal(0,3))
c      call printtot(br_nlegreal,brkn_preal(0,1))
      brkn_jacreal=brkn_sreal/(4*pi)**3*csi/(1-csi)
      call br_compcmkin
      call br_compdij
      end


      subroutine br_compcmkin
      implicit none
      include 'brinclude.h'
      real * 8 vecl(3),betal
      data vecl/0d0,0d0,1d0/
      save vecl
      betal=-(brkn_preal(3,1)+brkn_preal(3,2))/
     1 (brkn_preal(0,1)+brkn_preal(0,2))
      call mboost(br_nlegreal,vecl,betal,brkn_preal,brkn_cmpreal)
      end

      subroutine br_compdij
      implicit none
      include 'brinclude.h'
      integer j,k
      real * 8 y
      real * 8 crossp,dotp
      external crossp,dotp
      do j=4,br_nlegreal
         y=1-dotp(brkn_cmpreal(0,1),brkn_cmpreal(0,j))
     1 /(brkn_cmpreal(0,1)*brkn_cmpreal(0,j))
         brkn_dijterm(0,j)=(brkn_cmpreal(0,j)**2
     1 *(1-y**2))**brpar_diexp
         brkn_dijterm(1,j)=(brkn_cmpreal(0,j)**2
     1 *2*(1-y))**brpar_diexp
         brkn_dijterm(2,j)=(brkn_cmpreal(0,j)**2
     1 *2*(1+y))**brpar_diexp
      enddo
      do j=4,br_nlegreal
         do k=j+1,br_nlegreal
            brkn_dijterm(j,k)=
     1(2*dotp(brkn_cmpreal(0,k),brkn_cmpreal(0,j))*
     1       brkn_cmpreal(0,k)*brkn_cmpreal(0,j)
     2    /  (brkn_cmpreal(0,k)+brkn_cmpreal(0,j))**2)**brpar_dijexp
c     2    /  ((brkn_cmpreal(1,k)+brkn_cmpreal(1,j))**2+
c     3        (brkn_cmpreal(2,k)+brkn_cmpreal(2,j))**2+
c     4        (brkn_cmpreal(3,k)+brkn_cmpreal(3,j))**2))**brpar_dijexp
         enddo
      enddo
      end

      subroutine br_compute_csimax_fsr
      implicit none
c Compute csimax for all possible final state emitters;
c for initial state emitters it is not possible, since
c csimax depends upon y in this case.
      include 'brinclude.h'
      integer j
      real * 8 q0,mrec2
      logical valid_emitter
      external valid_emitter
!       
      do j=4,5
          q0=2*brkn_cmpborn(0,1)
          mrec2=(q0-brkn_cmpborn(0,j))**2
     1           -brkn_cmpborn(1,j)**2-brkn_cmpborn(2,j)**2
     1           -brkn_cmpborn(3,j)**2
          brkn_csimax_arr(j)=1-mrec2/q0**2
      enddo
      end




      function mass(p)
      implicit none
      real * 8 p(0:3),mass
      mass = sqrt(abs(p(0)**2-p(1)**2-p(2)**2-p(3)**2))
      end



      subroutine born_suppression(fact)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'

      integer i,j
      real*8 pt1,pt2,pt3,Ht
      real * 8 fact,ptmin, mjjmin, mj1j2min
      real * 8 dotp,pt4sq,pt5sq,pt6sq
      real * 8 kp, km, mjjminsq,ptminsq
      real * 8 m45sq, m46sq, m56sq
      logical, save :: ini = .true. 
      integer btype
      real*8 powheginput
      external powheginput

      real*8 ptsqrel
      real*8 fact1,fact2
      real*8 p,scale1,scale2
      real*8 pt1sq,pt2sq,pt3sq
      real*8 msq12,msq23,msq31

      ptsqrel(i,j)=2*dotp(kn_cmpborn(0,i),kn_cmpborn(0,j))
     1     *  kn_cmpborn(0,i)*kn_cmpborn(0,j)
     2     / (kn_cmpborn(0,i)**2+kn_cmpborn(0,j)**2)


      ptmin=powheginput('#ptsuppfact')
      mjjmin=powheginput('#mjjsuppfact')

      kp = 2d0
      km = 2d0

      btype = powheginput('#bornsuppfact')

      if (ini) then 
         if (flg_weightedev) then 
            if (btype.eq.1) then 
               write(*,*) 'Using exponential Born suppression factor' 
               write(*,*) 'with scale1[GeV]=',ptmin ,"^(2)"
               write(*,*) 'with scale2[GeV]=',mjjmin ,"^(2)"
            elseif (btype.eq.2) then 
               write(*,*) 'Using multiplicative Born suppression factor' 
               write(*,*) 'with scalep[GeV]=',ptmin ,"^(2)"
               write(*,*) 'with scalem[GeV]=',mjjmin ,"^(2)"
            else
               write(*,*) 'this value of bornsuppfact is not supported'
               write(*,*) 'please change your input'
               stop
            endif   
         else
            write(*,*) 'Using no Born suppression' 
         endif
         ini = .false. 
      endif

      if(flg_weightedev) then
         if (btype.eq.1) then 
c expon. damping (c.f. trijets, arXiv:1402.4001):
         scale1 = ptmin**2
         scale2 = mjjmin**2
         p = 2d0

         pt1sq = (kn_cmpborn(1,4)**2+kn_cmpborn(2,4)**2)
         pt2sq = (kn_cmpborn(1,5)**2+kn_cmpborn(2,5)**2)
         pt3sq = (kn_cmpborn(1,6)**2+kn_cmpborn(2,6)**2)

         msq12=ptsqrel(4,5)
         msq31=ptsqrel(4,6)
         msq23=ptsqrel(5,6)

         fact1 = exp(-scale1**p * (
     1            1/pt1sq**p
     2           +1/pt2sq**p
     3           +1/pt3sq**p
     4           +1/msq12**p
     5           +1/msq23**p
     6           +1/msq31**p ))

         pt1 = sqrt(pt1sq)
         pt2 = sqrt(pt2sq)
         pt3 = sqrt(pt3sq)
         Ht  = pt1 + pt2 + pt3
         
         fact = fact1/scale2**p/(1d0/scale2 + 1d0/Ht**2)**p

      elseif (btype.eq.2) then 

         ptminsq  = ptmin**2
         mjjminsq = mjjmin**2

         m45sq=2d0*dotp(kn_cmpborn(0,4),kn_cmpborn(0,5))
         m46sq=2d0*dotp(kn_cmpborn(0,4),kn_cmpborn(0,6))
         m56sq=2d0*dotp(kn_cmpborn(0,5),kn_cmpborn(0,6))
         
         pt4sq=(kn_cmpborn(1,4)**2+kn_cmpborn(2,4)**2)
         pt5sq=(kn_cmpborn(1,5)**2+kn_cmpborn(2,5)**2)
         pt6sq=(kn_cmpborn(1,6)**2+kn_cmpborn(2,6)**2)

         fact=
     &     (pt4sq/(pt4sq+ptminsq))**kp * 
     &     (pt5sq/(pt5sq+ptminsq))**kp *  
     &     (pt6sq/(pt6sq+ptminsq))**kp * 
     &     (m45sq/(m45sq+mjjminsq))**km * 
     &     (m46sq/(m46sq+mjjminsq))**km * 
     &     (m56sq/(m56sq+mjjminsq))**km
      
      endif   !btype
         
      else ! no Born suppression

         fact=1

      endif
      end


      subroutine set_fac_ren_scales(muf,mur)
      implicit none
      include 'PhysPars.h'
      include 'PhysPars_Higgs.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_st.h'
      include 'pwhg_flg.h'
      real*8 pwhg_alphas
      external pwhg_alphas
      real * 8 powheginput
      external powheginput
      real * 8 muf,mur, muref,renscfact,facscfact
      logical runningscales, ptsumscale, htscale, ethscale
      real*8 ptj1, ptj2, ptj3, ptj4, eth
      
      logical ini
      data ini/.true./
      save ini

      if (ini) then
         if(powheginput('#runningscales').eq.1) then
            runningscales=.true.
            ptsumscale=.true.
            htscale=.false.
            ethscale=.false.
         elseif(powheginput('#runningscales').eq.2) then
            runningscales=.true.
            ptsumscale=.false.
            htscale=.true.
            ethscale=.false.
         elseif(powheginput('#runningscales').eq.3) then
            runningscales=.true.
            ptsumscale=.false.
            htscale=.false.
            ethscale=.true.            
         else
            runningscales=.false.
            ptsumscale=.false.
            htscale=.false.
            ethscale=.false.
            muref=ph_Hmass
         endif   
      endif

      renscfact=powheginput("#renscfact")
      facscfact=powheginput("#facscfact")
      if (renscfact .eq. 0d0) stop 'renscale = 0 not allowed'
      if (facscfact .eq. 0d0) stop 'facscale = 0 not allowed'
      if(runningscales) then
       if (htscale) then
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) 'Factorization and renormalization '
            write(*,*) 'scales (mur, muf) set to '
            write(*,*) 'sum_{i=1,npartfin}'
            write(*,*) '    (pt_i+sqrt(MH^2+ptH^2))/2'
            if (renscfact .gt. 0d0) 
     &        write(*,*) 'Renormalization scale rescaled by', renscfact
            if (facscfact .gt. 0d0) 
     &        write(*,*) 'Factorization scale rescaled by  ', facscfact
            write(*,*) '***********************************************'
            ini=.false.
         endif
         
c default is Born kinematics:
            ptj1 = sqrt(kn_pborn(1,4)**2+kn_pborn(2,4)**2) ! pt_j1
            ptj2 = sqrt(kn_pborn(1,5)**2+kn_pborn(2,5)**2) ! pt_j2
            ptj3 = sqrt(kn_pborn(1,6)**2+kn_pborn(2,6)**2) ! pt_j3
            eth = sqrt(ph_Hmass**2+(kn_pborn(1,3))**2 ! ET_W1
     &           +                  (kn_pborn(2,3))**2)

         
            muref = (ptj1+ptj2+ptj3+eth)/2d0
         if(flg_btildepart.eq.'c') then         
            ptj1 = sqrt(kn_pborn(1,4)**2+kn_pborn(2,4)**2) ! pt_j1
            ptj2 = sqrt(kn_pborn(1,5)**2+kn_pborn(2,5)**2) ! pt_j2
            ptj3 = sqrt(kn_pborn(1,6)**2+kn_pborn(2,6)**2) ! pt_j3
            eth = sqrt(ph_Hmass**2+(kn_pborn(1,3))**2 ! ET_W1
     &           +                  (kn_pborn(2,3))**2)

         
            muref = (ptj1+ptj2+ptj3+eth)/2d0
         endif
         if(flg_btildepart.eq.'r') then
            ptj1 = sqrt(kn_preal(1,4)**2+kn_preal(2,4)**2) ! pt_j1
            ptj2 = sqrt(kn_preal(1,5)**2+kn_preal(2,5)**2) ! pt_j2
            ptj3 = sqrt(kn_preal(1,6)**2+kn_preal(2,6)**2) ! pt_j3
            ptj4 = sqrt(kn_preal(1,7)**2+kn_preal(2,7)**2) ! pt_j4
            eth = sqrt(ph_Hmass**2+(kn_preal(1,3))**2 ! ET_W1
     &           +                  (kn_preal(2,3))**2)
         
            muref = (ptj1+ptj2+ptj3+ptj4+eth)/2d0
         endif 

       elseif (ptsumscale) then
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) 'Factorization and renormalization '
            write(*,*) 'scales (mur, muf) set to '
            write(*,*) 'sum_{i=1,npartfin}'
            write(*,*) '    (pt_i)/2'
            if (renscfact .gt. 0d0) 
     &        write(*,*) 'Renormalization scale rescaled by', renscfact
            if (facscfact .gt. 0d0) 
     &        write(*,*) 'Factorization scale rescaled by  ', facscfact
            write(*,*) '***********************************************'
            ini=.false.
         endif
         
c default is Born kinematics:
            ptj1 = sqrt(kn_pborn(1,4)**2+kn_pborn(2,4)**2) ! pt_j1
            ptj2 = sqrt(kn_pborn(1,5)**2+kn_pborn(2,5)**2) ! pt_j2
            ptj3 = sqrt(kn_pborn(1,6)**2+kn_pborn(2,6)**2) ! pt_j3

         
            muref = (ptj1+ptj2+ptj3)/2d0
         if(flg_btildepart.eq.'c') then         
            ptj1 = sqrt(kn_pborn(1,4)**2+kn_pborn(2,4)**2) ! pt_j1
            ptj2 = sqrt(kn_pborn(1,5)**2+kn_pborn(2,5)**2) ! pt_j2
            ptj3 = sqrt(kn_pborn(1,6)**2+kn_pborn(2,6)**2) ! pt_j3

         
            muref = (ptj1+ptj2+ptj3)/2d0
         endif!scales
         if(flg_btildepart.eq.'r') then
            ptj1 = sqrt(kn_preal(1,4)**2+kn_preal(2,4)**2) ! pt_j1
            ptj2 = sqrt(kn_preal(1,5)**2+kn_preal(2,5)**2) ! pt_j2
            ptj3 = sqrt(kn_preal(1,6)**2+kn_preal(2,6)**2) ! pt_j3
            ptj4 = sqrt(kn_preal(1,7)**2+kn_preal(2,7)**2) ! pt_j4

         
            muref = (ptj1+ptj2+ptj3+ptj4)/2d0
         endif          
       elseif (ethscale) then
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) 'Factorization and renormalization '
            write(*,*) 'scales (mur, muf) set to '
            write(*,*) 'sum_{i=1,npartfin}'
            write(*,*) '    sqrt(MH^2+ptH^2)'
            if (renscfact .gt. 0d0) 
     &        write(*,*) 'Renormalization scale rescaled by', renscfact
            if (facscfact .gt. 0d0) 
     &        write(*,*) 'Factorization scale rescaled by  ', facscfact
            write(*,*) '***********************************************'
            ini=.false.
         endif
         
c default is Born kinematics:
            eth = sqrt(ph_Hmass**2+(kn_pborn(1,3))**2 ! ET_W1
     &           +                  (kn_pborn(2,3))**2)
         
            muref = eth
         if(flg_btildepart.eq.'c') then         
            eth = sqrt(ph_Hmass**2+(kn_pborn(1,3))**2 ! ET_W1
     &            +                  (kn_pborn(2,3))**2)
         
            muref = eth
         endif
         if(flg_btildepart.eq.'r') then
            eth = sqrt(ph_Hmass**2+(kn_preal(1,3))**2 ! ET_W1
     &            +                  (kn_preal(2,3))**2)
         
            muref = eth
         endif       
       endif   
      else
       if (ini) then
       muref=ph_Hmass/2d0
       st_mufact2= muref**2*st_facfact**2
       st_muren2 = muref**2*st_renfact**2
       st_alpha  = pwhg_alphas(st_muren2,st_lambda5MSB,st_nlight)
         write(*,*) '**********************************'
         write(*,*) 'RENORMALIZATION SCALE = ',muref
         write(*,*) 'FACTORIZATION   SCALE = ',muref
         write(*,*) 'alfa_s =        ', st_alpha !pwhg_alphas(muf**2,st_lambda5MSB,st_nlight)
         write(*,*) '**********************************'
         ini=.false.
       endif      
      endif
      muref=ph_Hmass/2d0
      muf=muref
      mur=muref

c make sure muf never falls below min. cutoff value:
      muf = max(muf,dsqrt(2d0))       
c make sure mur never falls below min. cutoff value:
      mur = max(mur,dsqrt(2d0)) 

      end

