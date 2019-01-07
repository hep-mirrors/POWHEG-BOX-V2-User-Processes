      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'PhysPars_Higgs.h'
      include 'widths.h'
      include 'cvecbos.h'
      real * 8 xborn(ndiminteg-3)
      real * 8 xjac,tau,y,beta,vec(3)

C     -- WZ2j stuff 
      double precision p1(4),p2(4),p5(4),p6(4),p3(4),p4(4),p7(4),p8(4)
      double precision p12(4),p78(4),p34(4),p56(4),p3456(4),p(4,8)
      double precision p34567(4) 
      double precision wt,wt0,wt12,wt34,wt78,wt3456,wt56,wt7,wt8
      double precision mass2,width2,mass3,width3
      double precision xmin, rtsmin,taumin,sqrts,tmp,ttmp,tmp6
      double precision xx(2), MWZ, mwz_low, mwz_high 
      parameter(wt0=1d0/2d0**4/pi**4)
      integer mu,k,i,n2,n3
      logical ini, debug 
      data ini/.true./
      data debug/.false./
c      data debug/.true./
      save ini, mwz_low, mwz_high 

c generation cuts:
      real*8 mllmin
      real*8 m2ll_w,m2ll_z,m2llmin
      real*8 pt1cut,pt2cut,pt1,pt2
      real*8 ptlcut,ptl
      logical generation_cuts

c work at the Higgs resonance:
c      logical higgs_res
c      save higgs_res
c
c decide which sampling is used for WZ system:
        real*8 hwidth_bw
	integer wz_res_type
        common/wzrestype/wz_res_type
        real *8 powheginput
        external powheginput

        real*8 mwz_min,mwz7_min
c
c------------------------------------

      if (debug)  write(*,*) 'Entering Born_phsp: ndiminteg', ndiminteg 
      if(ini) then 
         do k=1,nlegborn
            kn_masses(k)=0 
         enddo
         kn_masses(nlegreal)=0 
         wz_res_type = powheginput('#wz_res_type') 
         mwz_low  = ph_hmass - min(10d0,50d0*ph_hwidth)
         mwz_high = ph_hmass + min(10d0,50d0*ph_hwidth)

         ini=.false.
            

         if (wz_res_type.ne.2) then 
            print*,'Phase space generated'
            if (zerowidth) then 
               print*,'with root(s)>40GeV+MW+MZ'
            else
               print*,'with root(s)>40GeV'
            endif
         else
            print*,'you set wz_res_type=2'
            stop 'this PS option is not supported'
         endif   
         
         if  (wz_res_type.eq.0) then
            print*,'sampling of full WZ system in phase space'
            print*,'no cuts imposed on Minv(WZ)'
         else 
            stop 'this value of wz_res_type in Born_phsp is not allowed'
         endif

c generation cuts:
         generation_cuts = .false.
         m2llmin = 0d0
c read generation cut for mll from input:
         mllmin = powheginput('mll_gencut')
         if (mllmin.lt.0.5d0) then
c         if (mllmin.lt.5d0) then
            print*,'you set mll_gencut to ', mllmin,'GeV'
            print*,'please enhance mll_gencut in powheg.input'
            stop
         endif  
         m2llmin = mllmin**2

c code allows for generation cuts 
c     (to be used instead of Born_suppression factor)
c     (disabled by default; change here if you want to use this feature):
         pt1cut = 0d0! 10d0 !0d0 
         pt2cut = 0d0!10d0 !0d0  
         ptlcut = 0d0!10d0 !0d0

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

c      print*,'***************'
C     
      xmin  = 1d-8 
      sqrts = sqrt(kn_sbeams)
      
c     require twice the ptjet_min       
      rtsmin = 40d0

      if (zerowidth) then
         rtsmin = rtsmin+ph_wmass+ph_zmass
      endif
     

      taumin = (rtsmin/sqrts)**2 ! t_min=(sqrt(s_min)/sqrt(s))^2
      tau=dexp(dlog(taumin)*xborn(1)) ! tau=e^(log[tau_min]*xborn_1)=tau_min^xborn_1
      kn_sborn = kn_sbeams*tau ! 

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


         if (zerowidth) then 
            mwz7_min = ph_wmass+ph_zmass + 0.1d0
         else
            mwz7_min = 0d0
         endif

       call phi1_2m_nobw(0d0,xborn(3),ttmp,xborn(5),
     .     mwz7_min**2,p12,p8,p34567,wt8)

C!     now two alternatives for WZ system: 
CC 1.or 0. 
c      if (wz_res_type.eq.1) then
      if (wz_res_type.lt.2) then
C     generate first jet with no BW on Higgs: 
         tmp = xborn(7)**4
         xjac = xjac*4d0*xborn(7)**3 

         if (zerowidth) then 
            mwz_min = ph_wmass+ph_zmass + 0.1d0
         else
            mwz_min = 0d0
         endif

         call phi1_2m_nobw(0d0,xborn(6),tmp,xborn(8),
     .     mwz_min**2,p34567,p7,p3456,wt7)


      endif !wz_res_type

C     generate W+Z system: 
      n2=1;  mass2=ph_Wmass;  width2=ph_Wwidth 
      n3=1;  mass3=ph_Zmass;  width3=ph_zwidth
c 
      tmp = xborn(9)**3
      xjac = xjac*3d0*xborn(9)**2
c     Reuse tmp6
      tmp6=xborn(10)**2
      xjac=xjac*2d0*xborn(10)

      call phi1_2(tmp,tmp6,xborn(11),xborn(12),p3456,p34,p56,
     .     n2,n3,mass2,mass3,width2,width3,wt3456)

C     decay of W
      call phi3m0(xborn(13),xborn(14),p34,p3,p4,wt34)

C     decay of Z 
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
c     both V bosons decaying into charged lepton pair, 
c     but only Z decay considered for generation cuts:
      if (decmode_lep.or.decmode_slp) then  
         

         ptl = min(sqrt(kn_pborn(1,5)**2+kn_pborn(2,5)**2),
     &             sqrt(kn_pborn(1,6)**2+kn_pborn(2,6)**2))
         
         if ((ptl.lt.ptlcut)) then      
            kn_jacborn=0d0
         endif
         
         
         m2ll_z = abs(
     &        (kn_pborn(0,5)+kn_pborn(0,6))**2-
     &        (kn_pborn(1,5)+kn_pborn(1,6))**2-
     &        (kn_pborn(2,5)+kn_pborn(2,6))**2-
     &        (kn_pborn(3,5)+kn_pborn(3,6))**2)
         
         if (m2ll_z.lt.m2llmin) then  
            kn_jacborn=0d0
         endif
         
      endif                     !lep. decay

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
      logical ptsumscale,qscale,ptscale
      save ptsumscale,qscale,ptscale
      real * 8 ptj1,ptj2,ptj3,etw,etz
c 
      if (ini) then
         if(powheginput('#runningscales').eq.1) then
            runningscales=.true.
            ptsumscale=.true.
            qscale=.false.
            ptscale=.false.
         elseif(powheginput('#runningscales').eq.2) then
            runningscales=.true.
            qscale=.true.
            ptsumscale=.false.
            ptscale=.false.    
        elseif(powheginput('#runningscales').eq.0) then
            ptsumscale=.false.
            qscale=.false.
            runningscales=.false.
            muref=(ph_Wmass+ph_Zmass)*0.5d0
c Default is runningscales 3
        else
            runningscales=.true.
            qscale=.false.
            ptsumscale=.false.
            ptscale=.true.
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
            write(*,*) '    (pt_i+sqrt(MW^2+MZ^2+ptw^2+ptz^2))/2'
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
            etw = sqrt(ph_wmass**2+(kn_pborn(1,3)+kn_pborn(1,4))**2 ! ET_W
     .           +                 (kn_pborn(2,3)+kn_pborn(2,4))**2)
            etz = sqrt(ph_zmass**2+(kn_pborn(1,5)+kn_pborn(1,6))**2 ! ET_Z
     .        +                    (kn_pborn(2,5)+kn_pborn(2,6))**2)
         
            muref = (ptj1+ptj2+etw+etz)/2d0
         if(flg_btildepart.eq.'c') then         
            ptj1 = sqrt(kn_pborn(1,7)**2+kn_pborn(2,7)**2) ! pt_j1
            ptj2 = sqrt(kn_pborn(1,8)**2+kn_pborn(2,8)**2) ! pt_j2
            etw = sqrt(ph_wmass**2+(kn_pborn(1,3)+kn_pborn(1,4))**2 ! ET_W
     .           +                 (kn_pborn(2,3)+kn_pborn(2,4))**2)
            etz = sqrt(ph_zmass**2+(kn_pborn(1,5)+kn_pborn(1,6))**2 ! ET_Z
     .        +                    (kn_pborn(2,5)+kn_pborn(2,6))**2)
         
            muref = (ptj1+ptj2+etw+etz)/2d0
         endif
         if(flg_btildepart.eq.'r') then
            ptj1 = sqrt(kn_preal(1,7)**2+kn_preal(2,7)**2) ! pt_j1
            ptj2 = sqrt(kn_preal(1,8)**2+kn_preal(2,8)**2) ! pt_j2
            ptj3 = sqrt(kn_preal(1,9)**2+kn_preal(2,9)**2) ! pt_j3
            etw = sqrt(ph_wmass**2+(kn_preal(1,3)+kn_preal(1,4))**2 ! ET_W
     .           +                 (kn_preal(2,3)+kn_preal(2,4))**2)
            etz = sqrt(ph_zmass**2+(kn_preal(1,5)+kn_preal(1,6))**2 ! ET_Z
     .           +                 (kn_preal(2,5)+kn_preal(2,6))**2)
         
            muref = (ptj1+ptj2+ptj3+etw+etz)/2d0
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

      elseif (ptscale) then
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) '    Factorization and renormalization '
            write(*,*) '    scales (mur, muf) set to '
            write(*,*) '    sqrt(pT(j1).pt(j2))'
            if (renscfact .gt. 0d0) 
     .        write(*,*) 'Renormalization scale rescaled by', renscfact
            if (facscfact .gt. 0d0) 
     .        write(*,*) 'Factorization scale rescaled by  ', facscfact
            write(*,*) '***********************************************'
            ini=.false.
         endif
         
c default is Born kinematics:
         do mu = 0,3
            ptj1 = sqrt(kn_pborn(1,7)**2+kn_pborn(2,7)**2) ! pt_j1
            ptj2 = sqrt(kn_pborn(1,8)**2+kn_pborn(2,8)**2) ! pt_j2
         enddo      

         muref = dsqrt(ptj1*ptj2)

         if(flg_btildepart.eq.'c') then 
         do mu = 0,3
            ptj1 = sqrt(kn_pborn(1,7)**2+kn_pborn(2,7)**2) ! pt_j1
            ptj2 = sqrt(kn_pborn(1,8)**2+kn_pborn(2,8)**2) ! pt_j2
         enddo

         muref = dsqrt(ptj1*ptj2)
         endif

         if(flg_btildepart.eq.'r') then
         do mu = 0,3
            ptj1 = sqrt(kn_preal(1,7)**2+kn_preal(2,7)**2) ! pt_j1
            ptj2 = sqrt(kn_preal(1,8)**2+kn_preal(2,8)**2) ! pt_j2
         enddo

         muref = dsqrt(ptj1*ptj2)
         endif
      else !no running scales
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) '    Factorization and renormalization '
            write(*,*) '    scales set to (mW+mZ)/2 '
            if (renscfact .gt. 0d0) 
     .        write(*,*) 'Renormalization scale rescaled by', renscfact
            if (facscfact .gt. 0d0) 
     .        write(*,*) 'Factorization scale rescaled by  ', facscfact
            write(*,*) '*************************************'
            ini=.false.
         endif
         muref=0.5d0*(ph_Wmass+ph_Zmass)
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
c
         pt78=p78(1)**2+p78(2)**2
         fact=(pt7/(pt7+ptmin**2))**kp*(pt8/(pt8+ptmin**2))**kp 
      else
         fact=1
      endif


      end
