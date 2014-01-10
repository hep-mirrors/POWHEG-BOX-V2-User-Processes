      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'PhysPars_Higgs.h'
      include 'zz_widths.h'
      include 'cvecbos.h'
      real * 8 xborn(ndiminteg-3)
      real * 8 xjac,tau,y,beta,vec(3)

C     -- ZZ2j stuff 
      double precision p1(4),p2(4),p5(4),p6(4),p3(4),p4(4),p7(4),p8(4)
      double precision p12(4),p78(4),p34(4),p56(4),p3456(4),p(4,8)
      double precision p34567(4) 
      double precision wt,wt0,wt12,wt34,wt78,wt3456,wt56,wt7,wt8
      double precision mass2,width2,mass3,width3
      double precision xmin, rtsmin,taumin,sqrts,tmp,ttmp,tmp6
      double precision xx(2), MZZ, mzz_low, mzz_high 
      parameter(wt0=1d0/2d0**4/pi**4)
      integer mu,k,i,n2,n3
      logical ini, debug 
      data ini/.true./
      data debug/.false./
c      data debug/.true./
      save ini, mzz_low, mzz_high 

c generation cuts:
      real*8 mllmin
      real*8 m2ll_z1,m2ll_z2,m2llmin
      real*8 pt1cut,pt2cut,pt1,pt2
      real*8 ptlcut,ptl
      logical generation_cuts

c work at the Higgs resonance:
      logical higgs_res
      save higgs_res

      integer fat_jet
      save fat_jet

c decide which sampling is used for ZZ system:
        real*8 hwidth_bw
	integer zz_res_type
        common/zzrestype/zz_res_type
        real *8 powheginput
        external powheginput
c
c------------------------------------

      if (debug)  write(*,*) 'Entering Born_phsp: ndiminteg', ndiminteg
      if(ini) then
         do k=1,nlegborn
            kn_masses(k)=0
         enddo
         kn_masses(nlegreal)=0
         zz_res_type = powheginput('#zz_res_type')
         mzz_low = ph_hmass - min(10d0, 50d0*ph_hwidth)
         mzz_high  = ph_hmass + min(10d0,50d0*ph_hwidth)

         fat_jet = powheginput('#fat_jet')
         ini=.false.

         if (zz_res_type.eq.2) then
            higgs_res = .true.
         else
            higgs_res = .false.
         endif   
            
         if (higgs_res) then
            print*,'Phase space generated around mH'
            print*,'with root(s)>', dsqrt(ph_Hmass2low)
            if (zerowidth) then
               print*,'you set zerowidth=1 in powheg.input;'
               print*,'allow for off-shell Z-bosons in current mode'
               stop
            endif
         endif     
            
         if (fat_jet.eq.1) then
            print*,'Phase space generated above 2*MZ for fat jet'
            print*,'with root(s)>',ph_zmass*2d0  
            if (zz_res_type.eq.2) then
               print*,'you set zz_res_type=1 in powheg.input;'
               print*,'do not select Higgs resonance region'
               print*,'for fat-jet mode'
               stop
            endif
         endif   

         if ((.not.higgs_res).and.(fat_jet.ne.1)) then
            print*,'Phase space generated'
            print*,'with root(s)>40GeV' 
         endif   
         
         if (zz_res_type.eq.1) then
            print*,'no BW on Higgs used'
            print*,'for sampling of ZZ system in phase space'
         elseif (zz_res_type.eq.2) then
            print*,'BW around mh used; hwidth = ph_Hwidth' 
            print*,'cut on mass window'
         elseif (zz_res_type.eq.0) then
            print*,'broad BW around mh used' 
            print*,'no cuts'
         else 
            stop 'this value of zz_res_type in Born_phsp is not allowed'
         endif

c generation cuts:
         generation_cuts = .false.
         m2llmin = 0d0
c read generation cut for mll from input:
         mllmin = powheginput('mll_gencut')
         if (mllmin.lt.5d0) then
            print*,'you set mll_gencut to ', mllmin,'GeV'
            print*,'please enhance mll_gencut in powheg.input'
            stop
         endif  
         m2llmin = mllmin**2

c code allows for generation cuts 
c     (to be used instead of Born_suppression factor)
c     (disabled by default; change here if you want to use this feature):
         pt1cut = 0d0 
         pt2cut = 0d0  
         ptlcut = 0d0

         ! this is needed for fat-jet analysis
         if(fat_jet.eq.1) ptlcut = 300d0

         if ((pt1cut.ne.0d0).or.(pt2cut.ne.0d0).or.(ptlcut.ne.0d0)
     &       .or.(m2llmin.ne.0d0)) then
            generation_cuts = .true.
            write(*,*) '*************************************'
            write(*,*) '****    PS-CUTS IN PLACE!!!      ****' 
            write(*,*) '*************************************'
            write(*,*) ''
            write(*,*) 'jet cuts:'
            write(*,*) 'ptj1_min = ',pt1cut
            write(*,*) 'ptj2_min = ',pt2cut
            write(*,*) ''
            write(*,*) 'lepton cuts:'
            write(*,*) 'mll_min    = ',dsqrt(m2llmin)
            write(*,*) 'ptl_min= ',ptlcut
         endif

      endif
C     
      xmin  = 1d-8 
      sqrts = sqrt(kn_sbeams)
      
      if (higgs_res) then
         rtsmin = dsqrt(ph_Hmass2low)
      elseif (fat_jet.eq.1) then   
C        require minimum energy to gerate 2 onshell Zs 
        rtsmin = ph_zmass*2d0  
      else   
c	 require twice the ptjet_min       
         rtsmin = 40d0 
      endif   
      taumin = (rtsmin/sqrts)**2
      tau=dexp(dlog(taumin)*xborn(1))
      kn_sborn = kn_sbeams*tau 

      y=0.5d0*dlog(tau)*(1d0-2d0*xborn(2))
      xjac=dlog(taumin)*tau*dlog(tau)

      xx(1)=dsqrt(tau)*dexp(+y)
      xx(2)=dsqrt(tau)*dexp(-y)

c---if x's out of normal range alternative return
      if   ((xx(1) .gt. 1d0)
     & .or. (xx(2) .gt. 1d0)
     & .or. (xx(1) .lt. xmin)
     & .or. (xx(2) .lt. xmin)) then 
         write(*,*) 'x1,x2', xx(1),xx(2) 
         write(*,*) 'rand = ',xborn(1),xborn(2)
         write(*,*) 'tau = ',taumin,tau
         write(*,*) 'rt_kn_sbeams=', dsqrt(kn_sbeams)
      endif   
C     NB positive energy even if incoming, i.e. p1+p2 = \sum_3^8 p_i   
c     pos rapidity
      p1(4)=xx(1)*sqrts*0.5d0
      p1(1)=0d0
      p1(2)=0d0
      p1(3)=xx(1)*sqrts*0.5d0

c     neg rapidity 
      p2(4)=xx(2)*sqrts*0.5d0
      p2(1)=0d0
      p2(2)=0d0
      p2(3)=-xx(2)*sqrts*0.5d0

C     total incoming momentum 
      p12 = p1+p2 

C     generate second jet
      ttmp = 1d0-xborn(4)**2
      xjac = xjac*2d0*(xborn(4))
       call phi1_2m_nobw(0d0,xborn(3),ttmp,xborn(5),
     .     0d0,p12,p8,p34567,wt8)
c      call phi1_2m_nobw(0d0,xborn(3),xborn(4),xborn(5),
c     .     0d0,p12,p8,p34567,wt8)

C!     now two alternatives for ZZ system: 
CC 1. 
      if (zz_res_type.eq.1) then
C     generate first jet with no BW on Higgs: 
         tmp = xborn(7)**4
         xjac = xjac*4d0*xborn(7)**3 
         call phi1_2m_nobw(0d0,xborn(6),tmp,xborn(8),
     .     0d0,p34567,p7,p3456,wt7)
c         call phi1_2m_nobw(0d0,xborn(6),xborn(7),xborn(8),
c     .     0d0,p34567,p7,p3456,wt7)

         MZZ = sqrt(p3456(4)**2-p3456(1)**2-p3456(2)**2-p3456(3)**2)
         if ((mzz_low .lt. MZZ) .and. (MZZ .lt. mzz_high)) wt7 = 0d0 
c
CC 2. 
       elseif (zz_res_type.eq.2 .or. zz_res_type .eq. 0) then
CC     generate first jet with BW on Higgs        
          tmp6 = xborn(6) 
          hwidth_bw = ph_hwidth 
          call phi1_2m_bw(0d0,tmp6,xborn(7),xborn(8),
     .        0d0,p34567,p7,p3456,ph_hmass,hwidth_bw,wt7)

          if (zz_res_type .eq. 2) then 
             MZZ = sqrt(p3456(4)**2-p3456(1)**2-p3456(2)**2-p3456(3)**2)
             if ((MZZ .lt. mzz_low)  .or. (MZZ .gt. mzz_high)) wt7 = 0d0 
          endif
      endif !zz_res_type

C     generate two Z systems 
      n2=1;  mass2=ph_Zmass;  width2=ph_Zwidth 
      n3=1;  mass3=ph_Zmass;  width3=ph_zwidth
c 
      tmp = xborn(9)**3
      xjac = xjac*3d0*xborn(9)**2
c     Reuse tmp6
      tmp6=xborn(10)**2
      xjac=xjac*2d0*xborn(10)
      call phi1_2(tmp,tmp6,xborn(11),xborn(12),p3456,p34,p56,
     .     n2,n3,mass2,mass3,width2,width3,wt3456)
c      call phi1_2(tmp,xborn(10),xborn(11),xborn(12),p3456,p34,p56,
c     .     n2,n3,mass2,mass3,width2,width3,wt3456)
c      call phi1_2(xborn(9),xborn(10),xborn(11),xborn(12),p3456,p34,p56,
c     .     n2,n3,mass2,mass3,width2,width3,wt3456)

C     decay of first Z 
      call phi3m0(xborn(13),xborn(14),p34,p3,p4,wt34)

C     decay of second Z 
      call phi3m0(xborn(15),xborn(16),p56,p5,p6,wt56)

C     compute total weigth 
      wt = wt0*wt8*wt7*wt3456*wt34*wt56 
      xjac = wt*xjac 

C     assign momenta 
      p(:,1) = p1 
      p(:,2) = p2 
      p(:,3) = p3 
      p(:,4) = p4 
      p(:,5) = p5 
      p(:,6) = p6 
      p(:,7) = p7 
      p(:,8) = p8 

      kn_jacborn = xjac 
      do i=1,8 
      kn_pborn(0,i) = p(4,i)
      kn_pborn(1,i) = p(1,i)
      kn_pborn(2,i) = p(2,i)
      kn_pborn(3,i) = p(3,i)
      enddo 

c     now boost everything BACK along z-axis 
      kn_xb1 = xx(1)
      kn_xb2 = xx(2)
      beta=(kn_xb1-kn_xb2)/(kn_xb1+kn_xb2)
      vec(1)=0
      vec(2)=0
      vec(3)=-1
      call mboost(nlegborn-2,vec,beta,kn_pborn(:,3:),kn_cmpborn(:,3:))
      do mu=0,3
         kn_cmpborn(mu,1)=sqrt(kn_xb1*kn_xb2)*kn_beams(mu,1)
         kn_cmpborn(mu,2)=sqrt(kn_xb1*kn_xb2)*kn_beams(mu,2)
      enddo

c     minimal final state mass 
      kn_minmass = rtsmin
c
c------------

      if (generation_cuts) then
c     jet cuts:
      pt1 = sqrt(kn_pborn(1,7)**2+kn_pborn(2,7)**2)
      pt2 = sqrt(kn_pborn(1,8)**2+kn_pborn(2,8)**2) 
      if ((pt1.lt.pt1cut).or.(pt2.lt.pt2cut)) then      
         kn_jacborn=0d0
      endif
      
c lepton cuts (depending on decay mode):
c
c     both Zs decaying into charged lepton pair:
      if (decmode_lep) then 
         
         ptl = min(sqrt(kn_pborn(1,3)**2+kn_pborn(2,3)**2),
     &        sqrt(kn_pborn(1,4)**2+kn_pborn(2,4)**2),
     &        sqrt(kn_pborn(1,5)**2+kn_pborn(2,5)**2),
     &        sqrt(kn_pborn(1,6)**2+kn_pborn(2,6)**2))
         
         if ((ptl.lt.ptlcut)) then      
            kn_jacborn=0d0
         endif
         
         m2ll_z1 = abs(
     &        (kn_pborn(0,3)+kn_pborn(0,4))**2-
     &        (kn_pborn(1,3)+kn_pborn(1,4))**2-
     &        (kn_pborn(2,3)+kn_pborn(2,4))**2-
     &        (kn_pborn(3,3)+kn_pborn(3,4))**2)
         
         m2ll_z2 = abs(
     &        (kn_pborn(0,5)+kn_pborn(0,6))**2-
     &        (kn_pborn(1,5)+kn_pborn(1,6))**2-
     &        (kn_pborn(2,5)+kn_pborn(2,6))**2-
     &        (kn_pborn(3,5)+kn_pborn(3,6))**2)
         
         if ((m2ll_z1.lt.m2llmin).or.(m2ll_z2.lt.m2llmin)) then  
            kn_jacborn=0d0
         endif
         
      endif                     !lep. decay
      
c     One Z deacying into charged leptons the other into neutrinos:
      if (decmode_lnu) then 
 
         ptl = min(sqrt(kn_pborn(1,3)**2+kn_pborn(2,3)**2),
     &             sqrt(kn_pborn(1,4)**2+kn_pborn(2,4)**2))

         if ((ptl.lt.ptlcut)) then      
            kn_jacborn=0d0
         endif

         m2ll_z1 = abs(
     &        (kn_pborn(0,3)+kn_pborn(0,4))**2-
     &        (kn_pborn(1,3)+kn_pborn(1,4))**2-
     &        (kn_pborn(2,3)+kn_pborn(2,4))**2-
     &        (kn_pborn(3,3)+kn_pborn(3,4))**2)

         if (m2ll_z1.lt.m2llmin) then  
            kn_jacborn=0d0
         endif

      endif !lnu. decay

c
      endif !generation_cuts

c------------
c
C     print out for checks 
      if (debug) then 
c     -- checks invariants, mom. conservation etc in Lab frame  
      write(*,*) '----> Lab FRAME' 
      do i=1,8 
         write(*,*) 'pborn', i, kn_pborn(:,i)
      enddo
      write(*,*) 'psum', sum(kn_pborn(:,1:2),dim=2) 
     .     -sum(kn_pborn(:,3:8),dim=2) 
      p34(1:3) = kn_pborn(1:3,3)+kn_pborn(1:3,4)
      p56(1:3) = kn_pborn(1:3,5)+kn_pborn(1:3,6)
      p34(4)   = kn_pborn(0,3)+kn_pborn(0,4)
      p56(4)   = kn_pborn(0,5)+kn_pborn(0,6)
      write(*,*) 'm2(34)',i,p34(4)*p34(4)-
     .        p34(1)*p34(1)-p34(2)*p34(2)-p34(3)*p34(3)
      write(*,*) 'm2(56)',i,p56(4)*p56(4)-
     .        p56(1)*p56(1)-p56(2)*p56(2)-p56(3)*p56(3)

      do i=1,8 
         write(*,*) 'm2',i,kn_pborn(0,i)*kn_pborn(0,i)-
     .        kn_pborn(1,i)*kn_pborn(1,i)-
     .        kn_pborn(2,i)*kn_pborn(2,i)-
     .        kn_pborn(3,i)*kn_pborn(3,i)
      enddo

c     -- checks invariants, mom. conservation etc in CM frame  
      write(*,*) '----> CM FRAME' 
      do i=1,8 
         write(*,*) 'CM pborn', i, kn_cmpborn(:,i)
      enddo
      write(*,*) 'psum', sum(kn_cmpborn(:,1:2),dim=2) 
     .     -sum(kn_cmpborn(:,3:8),dim=2) 

      p34(1:3) = kn_cmpborn(1:3,3)+kn_cmpborn(1:3,4)
      p56(1:3) = kn_cmpborn(1:3,5)+kn_cmpborn(1:3,6)
      p34(4)   = kn_cmpborn(0,3)+kn_cmpborn(0,4)
      p56(4)   = kn_cmpborn(0,5)+kn_cmpborn(0,6)
      write(*,*) 'm2(34)',i,p34(4)*p34(4)-
     .        p34(1)*p34(1)-p34(2)*p34(2)-p34(3)*p34(3)
      write(*,*) 'm2(56)',i,p56(4)*p56(4)-
     .        p56(1)*p56(1)-p56(2)*p56(2)-p56(3)*p56(3)

      do i=1,8 
         write(*,*) 'm2',i,kn_cmpborn(0,i)*kn_cmpborn(0,i)-
     .        kn_cmpborn(1,i)*kn_cmpborn(1,i)-
     .        kn_cmpborn(2,i)*kn_cmpborn(2,i)-
     .        kn_cmpborn(3,i)*kn_cmpborn(3,i)
      enddo
      endif
      end

      subroutine set_fac_ren_scales(muf,mur)
      implicit none
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      real * 8 muf,mur
      logical ini
      data ini/.true./
      real *8 muref
      real *8 muref_sq
      real*8 q12(0:4),q34(0:4)
      integer mu
      real *8 dotp,powheginput
      external dotp,powheginput
      real * 8 fixedscale,renscfact,facscfact
      logical runningscales
      save runningscales
      logical ptsumscale,qscale
      save ptsumscale,qscale
      real * 8 ptj1,ptj2,ptj3,etz1,etz2
c 
      if (ini) then
         if(powheginput('#runningscales').eq.1) then
            runningscales=.true.
            ptsumscale=.true.
            qscale=.false.
         elseif(powheginput('#runningscales').eq.2) then
            runningscales=.true.
            qscale=.true.
            ptsumscale=.false.
         else
            ptsumscale=.false.
            qscale=.false.
            runningscales=.false.
            muref=ph_Zmass
         endif   
      endif

      renscfact=powheginput("#renscfact")
      facscfact=powheginput("#facscfact")
      if (renscfact .eq. 0d0) stop 'renscale = 0 not allowed'
      if (facscfact .eq. 0d0) stop 'facscale = 0 not allowed'

      if (ptsumscale) then
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) 'Factorization and renormalization '
            write(*,*) 'scales (mur, muf) set to '
            write(*,*) 'sum_{i=1,npartfin}'
            write(*,*) '    (pt_i+sqrt(MZ^2+ptz1^2+ptz2^2))/2'
            if (renscfact .gt. 0d0) 
     .        write(*,*) 'Renormalization scale rescaled by', renscfact
            if (facscfact .gt. 0d0) 
     .        write(*,*) 'Factorization scale rescaled by  ', facscfact
            write(*,*) '***********************************************'
            ini=.false.
         endif
         
c default is Born kinematics:
            ptj1 = sqrt(kn_pborn(1,7)**2+kn_pborn(2,7)**2) ! pt_j1
            ptj2 = sqrt(kn_pborn(1,8)**2+kn_pborn(2,8)**2) ! pt_j2
            etz1 = sqrt(ph_zmass**2+(kn_pborn(1,3)+kn_pborn(1,4))**2 ! ET_Z1
     .           +                  (kn_pborn(2,3)+kn_pborn(2,4))**2)
            etz2 = sqrt(ph_zmass**2+(kn_pborn(1,5)+kn_pborn(1,6))**2 ! ET_Z2
     .        +                     (kn_pborn(2,5)+kn_pborn(2,6))**2)
         
            muref = (ptj1+ptj2+etz1+etz2)/2d0
         if(flg_btildepart.eq.'c') then         
            ptj1 = sqrt(kn_pborn(1,7)**2+kn_pborn(2,7)**2) ! pt_j1
            ptj2 = sqrt(kn_pborn(1,8)**2+kn_pborn(2,8)**2) ! pt_j2
            etz1 = sqrt(ph_zmass**2+(kn_pborn(1,3)+kn_pborn(1,4))**2 ! ET_Z1
     .           +                  (kn_pborn(2,3)+kn_pborn(2,4))**2)
            etz2 = sqrt(ph_zmass**2+(kn_pborn(1,5)+kn_pborn(1,6))**2 ! ET_Z2
     .        +                     (kn_pborn(2,5)+kn_pborn(2,6))**2)
         
            muref = (ptj1+ptj2+etz1+etz2)/2d0
         endif
         if(flg_btildepart.eq.'r') then
            ptj1 = sqrt(kn_preal(1,7)**2+kn_preal(2,7)**2) ! pt_j1
            ptj2 = sqrt(kn_preal(1,8)**2+kn_preal(2,8)**2) ! pt_j2
            ptj3 = sqrt(kn_preal(1,9)**2+kn_preal(2,9)**2) ! pt_j3
            etz1 = sqrt(ph_zmass**2+(kn_preal(1,3)+kn_preal(1,4))**2 ! ET_Z1
     .           +                  (kn_preal(2,3)+kn_preal(2,4))**2)
            etz2 = sqrt(ph_zmass**2+(kn_preal(1,5)+kn_preal(1,6))**2 ! ET_Z2
     .           +                  (kn_preal(2,5)+kn_preal(2,6))**2)
         
            muref = (ptj1+ptj2+ptj3+etz1+etz2)/2d0
         endif 
      elseif (qscale) then
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) '    Factorization and renormalization '
            write(*,*) '    scales (mur, muf) set to '
            write(*,*) '    sqrt(Q1.Q2)'
            if (renscfact .gt. 0d0) 
     .        write(*,*) 'Renormalization scale rescaled by', renscfact
            if (facscfact .gt. 0d0) 
     .        write(*,*) 'Factorization scale rescaled by  ', facscfact
            write(*,*) '***********************************************'
            ini=.false.
         endif
         
c default is Born kinematics:
         do mu = 0,3
          q12(mu) = kn_pborn(mu,1)-kn_pborn(mu,7)
          q34(mu) = kn_pborn(mu,2)-kn_pborn(mu,8)
         enddo
         q12(4) = abs(q12(0)**2-q12(1)**2-q12(2)**2-q12(3)**2)
         q34(4) = abs(q34(0)**2-q34(1)**2-q34(2)**2-q34(3)**2)
 
         muref_sq  = dsqrt(q12(4)*q34(4))
         muref = dsqrt(muref_sq)

         if(flg_btildepart.eq.'c') then 
         do mu = 0,3
          q12(mu) = kn_pborn(mu,1)-kn_pborn(mu,7)
          q34(mu) = kn_pborn(mu,2)-kn_pborn(mu,8)
         enddo
         q12(4) = abs(q12(0)**2-q12(1)**2-q12(2)**2-q12(3)**2)
         q34(4) = abs(q34(0)**2-q34(1)**2-q34(2)**2-q34(3)**2)
 
         muref_sq  = dsqrt(q12(4)*q34(4))
         muref = dsqrt(muref_sq)
         endif

         if(flg_btildepart.eq.'r') then
         do mu = 0,3
            q12(mu) = kn_preal(mu,1)-kn_preal(mu,7)-kn_preal(1,9)
            q34(mu) = kn_preal(mu,2)-kn_preal(mu,8)-kn_preal(1,9)
         enddo
         q12(4) = abs(q12(0)**2-q12(1)**2-q12(2)**2-q12(3)**2)
         q34(4) = abs(q34(0)**2-q34(1)**2-q34(2)**2-q34(3)**2)
 
         muref_sq  = dsqrt(q12(4)*q34(4))
         muref = dsqrt(muref_sq)

         endif 

      else !no running scales
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) '    Factorization and renormalization '
            write(*,*) '    scales set to the Z mass '
            if (renscfact .gt. 0d0) 
     .        write(*,*) 'Renormalization scale rescaled by', renscfact
            if (facscfact .gt. 0d0) 
     .        write(*,*) 'Factorization scale rescaled by  ', facscfact
            write(*,*) '*************************************'
            ini=.false.
         endif
         muref=ph_Zmass
      endif
      muf=muref
      mur=muref

c make sure muf and mur never fall below min. cutoff value:
      muf = max(muf,dsqrt(2d0)) 
      mur = max(mur,dsqrt(2d0)) 

      end

      subroutine born_suppression(fact)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
C      include 'PhysPars.h'
      include 'PhysPars_Higgs.h' 
      real * 8 fact,ptmin
      real * 8 p1347sq,p2348sq,pt1347,pt2348,pt8,pt7,pt78,p78sq,dotp
      real * 8 kp
      real * 8 p1347(0:3),p2348(0:3),p78(0:3),p3456(0:3),p12(0:3),mzz
      logical, save :: ini = .true.  

c---------------

      ptmin=10d0 
      kp = 2d0

      if (ini) then 
         if (flg_weightedev) then 
            write(*,*) 'Using Born suppression' 
            write(*,*) 'with ptmin[GeV]=',ptmin 
            write(*,*) 'exponents: kp = ',kp 
         else
            write(*,*) 'Using no Born suppression' 
         endif
         ini = .false. 
      endif

      if(flg_weightedev) then
         pt8=kn_cmpborn(1,8)**2+kn_cmpborn(2,8)**2
         pt7=kn_cmpborn(1,7)**2+kn_cmpborn(2,7)**2
c         endif
         pt78=p78(1)**2+p78(2)**2
         fact=(pt7/(pt7+ptmin**2))**kp*(pt8/(pt8+ptmin**2))**kp 
      else
         fact=1
      endif


      end
