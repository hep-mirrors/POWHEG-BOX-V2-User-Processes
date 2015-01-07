      subroutine init_hist
      implicit none
      real * 8 dy,dpt,dptzoom,dm,dtheta
      integer icut
      real *8 jetcut(2),x,pi
      character * 6 suffix(2) 
      parameter (pi=3.1415926535897932385d0)
      common/jcut/jetcut,suffix

      call inihists

      dy=0.4d0
      dpt=10d0
      dptzoom=2d0
      dM=2d0
      dtheta=2d0*(1.57079632679d0/25d0)

      suffix(1) = '-ptj20'
      jetcut(1) = 20d0 
      suffix(2) = '-ptj30'
      jetcut(2) = 30d0 

      call bookupeqbins('total',1d0,0d0,1d0)
      call bookupeqbins('yW',dy,-5d0,5d0)
      call bookupeqbins('eta_ele',dy,-5d0,5d0)
      
      call bookupeqbins('ptW',dpt,0d0,500d0)
      call bookupeqbins('ptWzoom',dptzoom,0d0,50d0)
      call bookupeqbins('pt_ele',dpt,0d0,500d0)
      call bookupeqbins('pt_elezoom',dptzoom,0d0,50d0)
      
      call bookupeqbins('mW',dM,40d0,140d0)
      call bookupeqbins('mwt',dM,40d0,140d0)
      call bookupeqbins('theta',dtheta,0d0,pi)
      call bookupeqbins('theta_l',dtheta,0d0,pi)
      call bookupeqbins('theta_t',dtheta,0d0,pi)
      
      
      call bookupeqbins('ptj1',dpt,0d0,500d0)
      call bookupeqbins('ptj1zoom',dptzoom,0d0,50d0)
      
      call bookupeqbins('ptj2',dpt,0d0,500d0)
      call bookupeqbins('ptj2zoom',dptzoom,0d0,50d0)
      
C     distributions from 1205.4760  (GZ? this paper does Z/gamma...) 
      call bookupeqbins('Amll',dtheta,-pi/2d0,pi/2d0)
C     -- loop over two sets of jet cuts (20 and 30 GeV) 
      do icut=1,2
C     - Inclusive jet multiplicties
         call bookupeqbins('Njet-inc'//suffix(icut),1d0,-0.5d0,5.5d0)
C     - Exclusive jet multiplicties
         call bookupeqbins('Njet-exc'//suffix(icut),1d0,-0.5d0,5.5d0)
      enddo
      
c     distributions used for pheno study in comparison to data
c     1203.2165
C     GZ added distrubutions with costh^4 to check validity of eqs (3.8) and (3.9) of 1103.5445
      call bookupeqbins('cos_theta_star_low_pt',0.04d0,-1d0,1d0)
      call bookupeqbins('cos_theta_star2_low_pt',0.04d0,0d0,1d0)
      call bookupeqbins('cos_theta_star4_low_pt',0.04d0,0d0,1d0)
      call bookupeqbins('<cos_theta_star_low_pt>',1d0,0d0,1d0)
      call bookupeqbins('<cos_theta_star2_low_pt>',1d0,0d0,1d0)
      call bookupeqbins('<cos_theta_star4_low_pt>',1d0,0d0,1d0)
      
      call bookupeqbins('cos_theta_star_high_pt',0.04d0,-1d0,1d0)
      call bookupeqbins('cos_theta_star2_high_pt',0.04d0,0d0,1d0)
      call bookupeqbins('cos_theta_star4_high_pt',0.04d0,0d0,1d0)
      call bookupeqbins('<cos_theta_star_high_pt>',1d0,0d0,1d0)
      call bookupeqbins('<cos_theta_star2_high_pt>',1d0,0d0,1d0)
      call bookupeqbins('<cos_theta_star4_high_pt>',1d0,0d0,1d0)
      
c     1108.6308
      call bookupeqbins('ptW_1_1108.6308',8d0,0d0,8d0)
      call bookupeqbins('ptW_2_1108.6308',15d0,8d0,38d0)
      call bookupeqbins('ptW_3_1108.6308',17d0,38d0,55d0)
      call bookupeqbins('ptW_4_1108.6308',20d0,55d0,95d0)
      call bookupeqbins('ptW_5_1108.6308',25d0,95d0,145d0)
      call bookupeqbins('ptW_6_1108.6308',30d0,145d0,175d0)
      call bookupeqbins('ptW_7_1108.6308',35d0,175d0,210d0)
      call bookupeqbins('ptW_8_1108.6308',90d0,210d0,300d0)
      
c     1302.1415
c     d0
      call bookupeqbins('d0_1_1302.1415',0.125d0,1d0,1.125d0)
      call bookupeqbins('d0_2_1302.1415',0.165d0,1.125d0,1.29d0)
      call bookupeqbins('d0_3_1302.1415',0.26d0,1.29d0,1.55d0)
      call bookupeqbins('d0_4_1302.1415',0.35d0,1.55d0,1.9d0)
      call bookupeqbins('d0_5_1302.1415',0.55d0,1.9d0,2.45d0)
      call bookupeqbins('d0_6_1302.1415',0.65d0,2.45d0,3.1d0)
      call bookupeqbins('d0_7_1302.1415',0.9d0,3.1d0,4d0)
      call bookupeqbins('d0_8_1302.1415',1d0,4d0,5d0)
      call bookupeqbins('d0_9_1302.1415',1.3d0,5d0,6.3d0)
      call bookupeqbins('d0_10_1302.1415',1.7d0,6.3d0,8d0)
      call bookupeqbins('d0_11_1302.1415',2d0,8d0,10d0)
      call bookupeqbins('d0_12_1302.1415',2.5d0,10d0,12.5d0)
      call bookupeqbins('d0_13_1302.1415',3.5d0,12.5d0,16d0)
      call bookupeqbins('d0_14_1302.1415',4d0,16d0,20d0)
      call bookupeqbins('d0_15_1302.1415',5d0,20d0,25d0)
      call bookupeqbins('d0_16_1302.1415',6.5d0,25d0,31.5d0)
      call bookupeqbins('d0_17_1302.1415',8.5d0,31.5d0,40d0)
      call bookupeqbins('d0_18_1302.1415',10d0,40d0,50d0)
      call bookupeqbins('d0_19_1302.1415',13d0,50d0,63d0)
      call bookupeqbins('d0_20_1302.1415',17d0,63d0,80d0)
      call bookupeqbins('d0_21_1302.1415',20d0,80d0,100d0)
      call bookupeqbins('d0_22_1302.1415',25d0,100d0,125d0)
      call bookupeqbins('d0_23_1302.1415',35d0,125d0,160d0)
      call bookupeqbins('d0_24_1302.1415',50d0,160d0,210d0)
      call bookupeqbins('d0_25_1302.1415',75d0,210d0,285d0)
      call bookupeqbins('d0_26_1302.1415',165d0,285d0,450d0)
c     d1
      call bookupeqbins('d1_1_1302.1415',0.125d0,1d0,1.125d0)
      call bookupeqbins('d1_2_1302.1415',0.165d0,1.125d0,1.29d0)
      call bookupeqbins('d1_3_1302.1415',0.26d0,1.29d0,1.55d0)
      call bookupeqbins('d1_4_1302.1415',0.35d0,1.55d0,1.9d0)
      call bookupeqbins('d1_5_1302.1415',0.55d0,1.9d0,2.45d0)
      call bookupeqbins('d1_6_1302.1415',0.65d0,2.45d0,3.1d0)
      call bookupeqbins('d1_7_1302.1415',0.9d0,3.1d0,4d0)
      call bookupeqbins('d1_8_1302.1415',1d0,4d0,5d0)
      call bookupeqbins('d1_9_1302.1415',1.3d0,5d0,6.3d0)
      call bookupeqbins('d1_10_1302.1415',1.7d0,6.3d0,8d0)
      call bookupeqbins('d1_11_1302.1415',2d0,8d0,10d0)
      call bookupeqbins('d1_12_1302.1415',2.5d0,10d0,12.5d0)
      call bookupeqbins('d1_13_1302.1415',3.5d0,12.5d0,16d0)
      call bookupeqbins('d1_14_1302.1415',4d0,16d0,20d0)
      call bookupeqbins('d1_15_1302.1415',5d0,20d0,25d0)
      call bookupeqbins('d1_16_1302.1415',6.5d0,25d0,31.5d0)
      call bookupeqbins('d1_17_1302.1415',8.5d0,31.5d0,40d0)
      call bookupeqbins('d1_18_1302.1415',10d0,40d0,50d0)
      call bookupeqbins('d1_19_1302.1415',13d0,50d0,63d0)
      call bookupeqbins('d1_20_1302.1415',17d0,63d0,80d0)
      call bookupeqbins('d1_21_1302.1415',20d0,80d0,100d0)
      call bookupeqbins('d1_22_1302.1415',25d0,100d0,125d0)
      call bookupeqbins('d1_23_1302.1415',35d0,125d0,160d0)
      call bookupeqbins('d1_24_1302.1415',65d0,160d0,225d0)
      call bookupeqbins('d1_25_1302.1415',125d0,225d0,350d0)
c     d1/d0
      call bookupeqbins('d1/d0_1_1302.1415',0.015d0,0.1d0,0.115d0)
      call bookupeqbins('d1/d0_2_1302.1415',0.02d0,0.115d0,0.135d0)
      call bookupeqbins('d1/d0_3_1302.1415',0.025d0,0.135d0,0.185d0)
      call bookupeqbins('d1/d0_4_1302.1415',0.030d0,0.185d0,0.215d0)
      call bookupeqbins('d1/d0_5_1302.1415',0.035d0,0.215d0,0.25d0)
      call bookupeqbins('d1/d0_6_1302.1415',0.040d0,0.25d0,0.29d0)
      call bookupeqbins('d1/d0_7_1302.1415',0.050d0,0.29d0,0.34d0)
      call bookupeqbins('d1/d0_8_1302.1415',0.060d0,0.34d0,0.4d0)
      call bookupeqbins('d1/d0_9_1302.1415',0.065d0,0.4d0,0.465d0)
      call bookupeqbins('d1/d0_10_1302.1415',0.075d0,0.465d0,0.54d0)
      call bookupeqbins('d1/d0_11_1302.1415',0.090d0,0.54d0,0.63d0)
      call bookupeqbins('d1/d0_12_1302.1415',0.105d0,0.63d0,0.735d0)
      call bookupeqbins('d1/d0_13_1302.1415',0.125d0,0.735d0,0.86d0)
      call bookupeqbins('d1/d0_14_1302.1415',0.14d0,0.86d0,1d0)
      
      end
      
      
     
      subroutine analysis(dsig0)
      implicit none
      include 'hepevt.h'
      include 'pwhg_weights.h'
      include 'PhysPars.h'
      logical ini
      data ini/.true./
      save ini
C     allow multiweights 
      real * 8 dsig0,dsig(1:weights_max)
c     tell to the analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'LHE   '/
      real *8 jetcut(2)
      character * 6 suffix(2) 
      common/jcut/jetcut,suffix
C     Higgs variables 
      real*8 pW(4),mW,ptW,yW,etaW,boost(4),mWT,d0,d1,d1_d0
      real*8 p_ele(4), p_nu(4),theta,theta_l,theta_t
      real*8 deta 
c     arrays to reconstruct jets
      integer maxjet,numevent,counter
      parameter (maxjet=8192)
      real *8 ptmin,p_boosted(4),x,wmass,wwidth
      real *8  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     1    phij(maxjet),pj(4,maxjet),rr,ptrel(4)
      integer j1,j2,found,mjets,ihep,icut,i
      real *8 dphi, phi_star, theta_star, t_vec(3),at_vec(3), at, absvec  
      real *8 pi,phi_star_atlas,eta_ele,eta_nu,cos_theta_star
      real *8 pt_ele, pt_nu, dummy(100)
      real *8 fastjetdmergemax,drjj,palg
      parameter (pi=3.1415926535897932385d0)
      data numevent/0/
      save numevent
      data counter/0/
      save counter

      yw=0d0
      ptw=0d0

      if (ini) then
         write(*,*) '*****************************'
         if(whcprg.eq.'NLO') then
            write(*,*) '       NLO ANALYSIS'
            weights_num=0
         elseif(WHCPRG.eq.'LHE   ') then
            write(*,*) '       LHE ANALYSIS'
         elseif(WHCPRG.eq.'HERWIG') then
            write (*,*) '           HERWIG ANALYSIS            '
         elseif(WHCPRG.eq.'PYTHIA') then
            write (*,*) '           PYTHIA ANALYSIS            '
         endif
         write(*,*) '*****************************'
         if(weights_num.eq.0) then
            call setupmulti(1)
         else
            call setupmulti(weights_num)
         endif

         ini=.false.
      endif

      dsig=0
      if(weights_num.eq.0) then
         dsig(1)=dsig0
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
      endif
      if(sum(abs(dsig)).eq.0) return

c     Loop over final state particles to find leptons
      found=0
      if(whcprg.eq.'NLO   ') then
         do ihep=1,nhep
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     $           .or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     $           .and.(abs(idhep(ihep)).eq.11)) then
               j1=ihep
               found=found+1
               p_ele(1:4) = phep(1:4,j1)
            endif
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     $           .or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     $           .and.(abs(idhep(ihep)).eq.12)) then
               j2=ihep
               found=found+1
               p_nu(1:4) = phep(1:4,j2)
            endif
         enddo
      else
         do ihep=1,nhep
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     $           .or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     $           .and.(abs(idhep(ihep)).eq.11)
     $           .and.(abs(idhep(jmohep(1,ihep))).eq.24
     $           .or.abs(idhep(jmohep(1,jmohep(1,ihep)))).eq.24)) then
               j1=ihep
               found=found+1
               p_ele(1:4) = phep(1:4,j1)
            endif
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     $           .or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     $           .and.(abs(idhep(ihep)).eq.12)
     $           .and.(abs(idhep(jmohep(1,ihep))).eq.24
     $           .or.abs(idhep(jmohep(1,jmohep(1,ihep)))).eq.24)) then
               j2=ihep
               found=found+1
               p_nu(1:4) = phep(1:4,j2)
            endif
         enddo
      endif
      if(found.lt.2) then
         write(*,*) 'ERROR: Less than two leptons found'
         print*, found
         call exit(1)
      elseif(found.gt.2) then
         write(*,*) 'ERROR: too many leptons found'
         call exit(1)
      else
         pW(1:4)=p_ele(1:4)+p_nu(1:4)
      endif

      call getyetaptmass(pW,yW,etaW,ptW,mW)
      if(abs(yW).gt.5d0) return !To be consitent with the reweighting ranges

      theta=p_ele(3)
     $     /sqrt(p_ele(1)**2+p_ele(2)**2+p_ele(3)**2)
      theta=acos(theta)

      boost=0d0
      boost(3)=pw(3)
      boost(4)=pw(4)
      if (boost(3) .ne. 0d0) then  
         call lab_to_CM(boost,p_ele,p_boosted)
         theta_l=p_boosted(3)
     $        /sqrt(p_boosted(1)*p_boosted(1)+p_boosted(2)*p_boosted(2)+
     $        p_boosted(3)*p_boosted(3))
         theta_l=acos(theta_l)
      else
         theta_l = theta 
      endif 
      boost=0d0
      boost(1)=pw(1)
      boost(2)=pw(2)
      boost(4)=pw(4)
      if (boost(1)**2+boost(2)**2 .ne. 0d0) then 
         call lab_to_CM(boost,p_ele,p_boosted)
         theta_t=p_boosted(3)
     $        /sqrt(p_boosted(1)*p_boosted(1)+p_boosted(2)*p_boosted(2)+
     $        p_boosted(3)*p_boosted(3))
         theta_t=acos(theta_t)
      else
         theta_t = theta 
      endif 

c     theta* to compute polarizations
      boost=pw
      if (boost(1)**2+boost(2)**2+boost(3)**2 .ne. 0d0) then 
         call lab_to_CM(boost,p_ele,p_boosted)
         cos_theta_star=(p_boosted(1)*pw(1)+p_boosted(2)*pw(2)+p_boosted(3)*pw(3))
     $        /sqrt(p_boosted(1)**2+p_boosted(2)**2+p_boosted(3)**2)
     $        /sqrt(pw(1)**2+pw(2)**2+pw(3)**2)

         theta_star=acos(cos_theta_star)
      else
         print*,'Warning: W boson at rest in lab frame'
         theta_star = 0d0
         cos_theta_star=cos(theta_star)
      endif 
      if(cos_theta_star.ne.cos_theta_star) then
         print*, 'costhetastar',cos_theta_star, pw, p_ele, p_boosted
      endif

      call getyetaptmass(p_ele,dummy(10),eta_ele,pt_ele,dummy(11))
      call getyetaptmass(p_nu,dummy(10),eta_nu,pt_nu,dummy(11))
      
      mwt=sqrt(2d0*(pt_ele*pt_nu
     $     -p_ele(1)*p_nu(1)-p_ele(2)*p_nu(2))) !Definition taken from 1302.1415 
      mw = sqrt(pw(4)**2-pw(1)**2-pw(2)**2-pw(3)**2)

c     total sigma
      call filld('total',0.5d0,dsig)

c     Higgs histograms 
      wmass=80.398d0
      wwidth=2.08872d0

      x=atan((mw**2-wmass**2)/(wwidth*wmass))
c      print*, 'x,mz,zmass,zwidth',x,mz,zmass,zwidth
c      stop
      call filld('yW',yW,dsig)
      call filld('eta_ele',eta_ele,dsig)
      call filld('ptW',ptW,dsig)
      call filld('ptWzoom',ptW,dsig)
      call filld('pt_ele',pt_ele,dsig)
      call filld('pt_elezoom',pt_ele,dsig)
      call filld('mW',mW,dsig)
      call filld('mwt',mwt,dsig)
      call filld('Amll',x,dsig)
      call filld('theta',theta,dsig)
      call filld('theta_l',theta_l,dsig)
      call filld('theta_t',theta_t,dsig)
      if(dsig(1).ne.dsig(1)) then
         print*, 'ptw, dsig', ptW, dsig(1)
         return
      endif
c      stop
C     find jets 
      palg=-1d0 ! anti-kt for analysis
      rr=0.7d0       
      ptmin=0d0
      call buildjets(1,palg,rr,ptmin,mjets,ktj,etaj,rapj,phij,ptrel,pj)
c      print*, 'yz, Amll, theta_l,ktj(1)', yz, x, theta_l, ktj(1)
      

c      print*, 'Number of jets found: ', mjets
      if(mjets.ge.1) then
c         call filld('ptj1_check',ktj(1),dsig)
         call filld('ptj1',ktj(1),dsig)
         call filld('ptj1zoom',ktj(1),dsig)
      endif
      if(mjets.ge.2) then
c         call filld('ptj2_check',ktj(2),dsig)
         call filld('ptj2',ktj(2),dsig)
         call filld('ptj2zoom',ktj(2),dsig)
      endif      
c     following plots have not been tested carefully...
C     -- Plot inclusive and exclusive jet multiplicties at two jet-pT thresholds
      do icut = 1,2
         
         
c     no-jets OR hardest-jet softer than threshold: 
c     ->fill 0-th bin of Njet-inc and 0-th bin of Njet-exc
         if((mjets.eq.0) .or. 
     $        (mjets.gt.0 .and. ktj(1).lt.jetcut(icut))) then
            call filld('Njet-inc'//suffix(icut),0d0,dsig)
            call filld('Njet-exc'//suffix(icut),0d0,dsig)
         endif
         
c     at least 1 jet: loop over jets
         do i=1,5
c     ->fill inclusive i-th bin if i-th jet is harder than threshold
            if(mjets.ge.i.and.ktj(i).ge.jetcut(icut)) 
     $           call filld('Njet-inc'//suffix(icut),i*1d0,dsig)
c     ->fill exclusive i-th bin if 
c     1) I have exactly i jets and i-th jet is harder than threshold
c     OR
c     2) I have more than i jets, i-th jet is harder than threshold
c     but (i+1)-jet (and all the others) is too soft
            if( (mjets.eq.i.and.ktj(i).ge.jetcut(icut)) .or. 
     $           (mjets.gt.i.and.ktj(i).ge.jetcut(icut) .and. 
     $           ktj(i+1).lt.jetcut(icut)))
     $           call filld('Njet-exc'//suffix(icut),i*1d0,dsig)
         enddo
         
      enddo

c     Here begins the analysis for comparison with data
c     1203.2165 
c     if((50d0.lt.mwt).and.(mwt.lt.110d0)) then
      if((30d0.lt.ptw).and.(ptw.lt.50d0)) then
         
         call filld('cos_theta_star_low_pt',cos_theta_star,dsig)
         call filld('cos_theta_star2_low_pt',cos_theta_star**2,dsig)
         call filld('cos_theta_star4_low_pt',cos_theta_star**4,dsig)
         call filld('<cos_theta_star_low_pt>',0.5d0,cos_theta_star*dsig)
         call filld('<cos_theta_star2_low_pt>',0.5d0,cos_theta_star**2*dsig)
         call filld('<cos_theta_star4_low_pt>',0.5d0,cos_theta_star**4*dsig)
c     
      elseif(50d0.le.ptw) then
c     
         call filld('cos_theta_star_high_pt',cos_theta_star,dsig)
         call filld('cos_theta_star2_high_pt',cos_theta_star**2,dsig)
         call filld('cos_theta_star4_high_pt',cos_theta_star**4,dsig)
         call filld('<cos_theta_star_high_pt>',0.5d0,cos_theta_star*dsig)
         call filld('<cos_theta_star2_high_pt>',0.5d0,cos_theta_star**2*dsig)
         call filld('<cos_theta_star4_high_pt>',0.5d0,cos_theta_star**4*dsig)
      endif
c     endif
      
 
      
      if(pt_ele.gt.20d0.and.
     $     pt_nu.gt.25d0.and.
     $     40d0.lt.mwt.and.
     $     abs(eta_ele).lt.2.4d0) then
c     1108.6308 
         call filld('ptW_1_1108.6308',ptw,dsig)
         call filld('ptW_2_1108.6308',ptw,dsig)
         call filld('ptW_3_1108.6308',ptw,dsig)
         call filld('ptW_4_1108.6308',ptw,dsig)
         call filld('ptW_5_1108.6308',ptw,dsig)
         call filld('ptW_6_1108.6308',ptw,dsig)
         call filld('ptW_7_1108.6308',ptw,dsig)
         call filld('ptW_8_1108.6308',ptw,dsig)
c     1302.1415
         palg=1d0 !kt
         rr=0.6d0
         call buildjets(1,palg,rr,ptmin,mjets,ktj,etaj,rapj,phij,ptrel,pj)

         d0=sqrt(fastjetdmergemax(0))
         d1=sqrt(fastjetdmergemax(1))

c     d0
         call filld('d0_1_1302.1415',d0,dsig)
         call filld('d0_2_1302.1415',d0,dsig)
         call filld('d0_3_1302.1415',d0,dsig)
         call filld('d0_4_1302.1415',d0,dsig)
         call filld('d0_5_1302.1415',d0,dsig)
         call filld('d0_6_1302.1415',d0,dsig)
         call filld('d0_7_1302.1415',d0,dsig)
         call filld('d0_8_1302.1415',d0,dsig)
         call filld('d0_9_1302.1415',d0,dsig)
         call filld('d0_10_1302.1415',d0,dsig)
         call filld('d0_11_1302.1415',d0,dsig)
         call filld('d0_12_1302.1415',d0,dsig)
         call filld('d0_13_1302.1415',d0,dsig)
         call filld('d0_14_1302.1415',d0,dsig)
         call filld('d0_15_1302.1415',d0,dsig)
         call filld('d0_16_1302.1415',d0,dsig)
         call filld('d0_17_1302.1415',d0,dsig)
         call filld('d0_18_1302.1415',d0,dsig)
         call filld('d0_19_1302.1415',d0,dsig)
         call filld('d0_20_1302.1415',d0,dsig)
         call filld('d0_21_1302.1415',d0,dsig)
         call filld('d0_22_1302.1415',d0,dsig)
         call filld('d0_23_1302.1415',d0,dsig)
         call filld('d0_24_1302.1415',d0,dsig)
         call filld('d0_25_1302.1415',d0,dsig)
         call filld('d0_26_1302.1415',d0,dsig)
c     d1
         call filld('d1_1_1302.1415',d1,dsig)
         call filld('d1_2_1302.1415',d1,dsig)
         call filld('d1_3_1302.1415',d1,dsig)
         call filld('d1_4_1302.1415',d1,dsig)
         call filld('d1_5_1302.1415',d1,dsig)
         call filld('d1_6_1302.1415',d1,dsig)
         call filld('d1_7_1302.1415',d1,dsig)
         call filld('d1_8_1302.1415',d1,dsig)
         call filld('d1_9_1302.1415',d1,dsig)
         call filld('d1_10_1302.1415',d1,dsig)
         call filld('d1_11_1302.1415',d1,dsig)
         call filld('d1_12_1302.1415',d1,dsig)
         call filld('d1_13_1302.1415',d1,dsig)
         call filld('d1_14_1302.1415',d1,dsig)
         call filld('d1_15_1302.1415',d1,dsig)
         call filld('d1_16_1302.1415',d1,dsig)
         call filld('d1_17_1302.1415',d1,dsig)
         call filld('d1_18_1302.1415',d1,dsig)
         call filld('d1_19_1302.1415',d1,dsig)
         call filld('d1_20_1302.1415',d1,dsig)
         call filld('d1_21_1302.1415',d1,dsig)
         call filld('d1_22_1302.1415',d1,dsig)
         call filld('d1_23_1302.1415',d1,dsig)
         call filld('d1_24_1302.1415',d1,dsig)
         call filld('d1_25_1302.1415',d1,dsig)
         
c     d1/d0
         if(d0.gt.20d0) then
            d1_d0=d1/d0
            call filld('d1/d0_1_1302.1415',d1_d0,dsig)
            call filld('d1/d0_2_1302.1415',d1_d0,dsig)
            call filld('d1/d0_3_1302.1415',d1_d0,dsig)
            call filld('d1/d0_4_1302.1415',d1_d0,dsig)
            call filld('d1/d0_5_1302.1415',d1_d0,dsig)
            call filld('d1/d0_6_1302.1415',d1_d0,dsig)
            call filld('d1/d0_7_1302.1415',d1_d0,dsig)
            call filld('d1/d0_8_1302.1415',d1_d0,dsig)
            call filld('d1/d0_9_1302.1415',d1_d0,dsig)
            call filld('d1/d0_10_1302.1415',d1_d0,dsig)
            call filld('d1/d0_11_1302.1415',d1_d0,dsig)
            call filld('d1/d0_12_1302.1415',d1_d0,dsig)
            call filld('d1/d0_13_1302.1415',d1_d0,dsig)
            call filld('d1/d0_14_1302.1415',d1_d0,dsig)
         endif
         
      endif   
      end
      
      

      subroutine buildjets(iflag,palg,rr,ptmin,mjets,kt,eta,rap,phi,
     $     ptrel,pjet)
c     arrays to reconstruct jets, radius parameter rr
      implicit none
      integer iflag,mjets
      real * 8  rr,ptmin,kt(*),eta(*),rap(*),
     1     phi(*),ptrel(3),pjet(4,*)
      include   'hepevt.h'
      include  'LesHouches.h'
      integer   maxtrack,maxjet
      parameter (maxtrack=8192,maxjet=8192)
      real * 8  ptrack(4,maxtrack),pj(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu,i
      real * 8 r,palg,tmp
      logical islept
      external islept
      real * 8 vec(3),pjetin(0:3),pjetout(0:3),beta,
     $     ptrackin(0:3),ptrackout(0:3)
      real * 8 get_ptrel
      external get_ptrel
C - Initialize arrays and counters for output jets
      do j=1,maxtrack
         do mu=1,4
            ptrack(mu,j)=0d0
         enddo
         jetvec(j)=0
      enddo      
      ntracks=0
      do j=1,maxjet
         do mu=1,4
            pjet(mu,j)=0d0
            pj(mu,j)=0d0
            kt(j)=0d0 
            eta(j)=0d0
            rap(j)=0d0
            phi(j)=0d0 
        enddo
      enddo
      ptrel(1:3)=0d0 


      if(iflag.eq.1) then
C     - Extract final state particles to feed to jet finder
         do j=1,nhep
c all but the vector boson and the leptons
            if (isthep(j).eq.1.and.(
     $           .not.abs(idhep(j)).eq.24.and..not.abs(idhep(j)).eq.11
     $           .and..not.abs(idhep(j)).eq.12
     $           .and..not.abs(idhep(j)).eq.13
     $           .and..not.abs(idhep(j)).eq.14)) then
               if(ntracks.eq.maxtrack) then
                  write(*,*) 'analyze: need to increase maxtrack!'
                  write(*,*) 'ntracks: ',ntracks
                  stop
               endif
               ntracks=ntracks+1
               do mu=1,4
                  ptrack(mu,ntracks)=phep(mu,j)
               enddo
               itrackhep(ntracks)=j
            endif
         enddo
      else
         do j=1,nup
            if (istup(j).eq.1.and..not.islept(idup(j))) then
               if(ntracks.eq.maxtrack) then
                  write(*,*) 'analyze: need to increase maxtrack!'
                  write(*,*) 'ntracks: ',ntracks
                  stop
               endif
               ntracks=ntracks+1
               do mu=1,4
                  ptrack(mu,ntracks)=pup(mu,j)
               enddo
               itrackhep(ntracks)=j
            endif
         enddo
      endif
      if (ntracks.eq.0) then
         mjets=0
         return
      endif
C --------------------------------------------------------------------- C
C     R = 0.7   radius parameter
c palg=1 is standard kt, -1 is antikt
c      palg=-1
      r=rr
c      ptmin=20d0 
      call fastjetppgenkt(ptrack,ntracks,r,palg,ptmin,pjet,njets)
      mjets=njets
      if(njets.eq.0) return
c     !: in this case we are using a slightly modified version of fastjetppgenkt,
c     that doesn't include jetvec, hence the following check cannot be done.
c check consistency
c      do k=1,ntracks
c         if(jetvec(k).gt.0) then
c            do mu=1,4
c               pj(mu,jetvec(k))=pj(mu,jetvec(k))+ptrack(mu,k)
c            enddo
c         endif
c      enddo
c      tmp=0
c      do j=1,mjets
c         do mu=1,4
c            tmp=tmp+abs(pj(mu,j)-pjet(mu,j))
c         enddo
c      enddo
c      if(tmp.gt.1d-4) then
c         write(*,*) ' bug!'
c      endif
C --------------------------------------------------------------------- C
C - Computing arrays of useful kinematics quantities for hardest jets - C
C --------------------------------------------------------------------- C
      do j=1,mjets
         call getyetaptmass(pjet(:,j),rap(j),eta(j),kt(j),tmp)
         phi(j)=atan2(pjet(2,j),pjet(1,j))
      enddo

c     loop over the hardest 3 jets
c      do j=1,min(njets,3)
c         do mu=1,3
c            pjetin(mu) = pjet(mu,j)
c         enddo
c         pjetin(0) = pjet(4,j)         
c         vec(1)=0d0
c         vec(2)=0d0
c         vec(3)=1d0
c         beta = -pjet(3,j)/pjet(4,j)
c         call mboost(1,vec,beta,pjetin,pjetout)         
c     write(*,*) pjetout
c         ptrel(j) = 0
c         do i=1,ntracks
c            if (jetvec(i).eq.j) then
c               do mu=1,3
c                  ptrackin(mu) = ptrack(mu,i)
c               enddo
c               ptrackin(0) = ptrack(4,i)
c               call mboost(1,vec,beta,ptrackin,ptrackout) 
c               ptrel(j) = ptrel(j) + get_ptrel(ptrackout,pjetout)
c            endif
c         enddo
c      enddo
      end
