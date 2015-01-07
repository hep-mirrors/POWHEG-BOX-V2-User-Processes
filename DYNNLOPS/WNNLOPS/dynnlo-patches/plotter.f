      subroutine bookplot(n,tag,titlex,var,wt,xmin,xmax,dx,llplot) 
      implicit none
      include 'nplot.f'
      integer n,higgsdec
      character*(*) titlex
      character*3 llplot
      character*4 tag,mypart
      double precision var,wt,xmin,xmax,dx
      common/mypart/mypart

      if (tag.eq.'book') then
          call mbook(n,titlex,dx,xmin,xmax)
          call mbook(20+n,titlex,dx,xmin,xmax)
          call mbook(40+n,titlex,dx,xmin,xmax)
          call mbook(60+n,titlex,dx,xmin,xmax)
          call mbook(80+n,titlex,dx,xmin,xmax)
          call mbook(100+n,titlex,dx,xmin,xmax)
          call mbook(120+n,titlex,dx,xmin,xmax)
      elseif (tag .eq. 'plot') then
          call mfill(n,var,wt)
        linlog(n)=llplot
        titlearray(n)=titlex
      endif

      return
      end

    
      subroutine plotter(p,wt,switch)
      implicit none
      include 'clustering.f'
      include 'constants.f'
      include 'cutoff.f'
      include 'jetlabel.f'
      include 'npart.f'
      include 'mxdim.f'
      include 'process.f'
      include 'removebr.f'
      include 'masses.f'
      include 'nwz.f'

      integer n,switch,nplotmax,i
      character tag*4
  
      double precision dot
      double precision wt,p_nu(4)
      double precision p(mxpart,4),p_ele(4),pw(4)
      double precision pt,yraptwo,pttwo,x
      integer eventpart

      logical first,jetmerge
      common/nplotmax/nplotmax
      common/jetmerge/jetmerge
      integer order,higgsdec,ndec,icut
      common/higgsdec/higgsdec,ndec
      common/nnlo/order
      data first/.true./
      save first

      double precision yw,ptw,mWT,mW,theta,theta_l,theta_t,yw_limit
      double precision HT,ptj1,ptj2,pjm, p_boosted(4),delta_yw
      double precision ptj1_exp,d1_d0,pt_part1,pt_part2
      double precision HT_min,ptw_min,ptj1_min
      double precision HT_hfact(4),boosted(4) 
      double precision ptw_hfact(4),costheta,deta
      double precision ptj1_hfact(4),theta_star,cos_theta_star
      double precision damping,jetcut(2),pt_ele,pt_nu
      double precision dy,dpt,dptzoom,dM,dtheta
      double precision dphi,drjj,pj1(4),pj2(4),d0,d1
      double precision absvec,eta_ele,eta_nu,dummy, Rad 
      character * 6 suffix(2) 
      common/jcut/jetcut,suffix


      wt=wt/1000d0  !  Convert to Powheg-Box units.
      
C     GZ always initalize to 0 (otherwise HT,ptj1,ptj2 will be wrong in general) 
      yw=0d0
      ptw=0d0
      HT=0d0
      ptj1=0d0
      ptj2=0d0
      pj1=0d0
      pj2=0d0
      yw_limit=5d0
      delta_yw=0.4d0

      if (first) then
         tag='book'
c---  ensure we initialize all possible histograms
         eventpart=npart+3

         jetmerge=.true.
CC      Here set jets to the maximum number of jets 
CC      to book the necessary histograms: 0 at LO, 1 at NLO and 2 at NNLO
         jets=order
CC
         goto 99
      else
         tag='plot'
      endif

C - Damping factors.
C - These are generically defined as
C - damping=(X_hfact-Xmin)^X_exp/((X_hfact-Xmin)^X_exp+(X-Xmin)^X_exp)
C - where X refers to some kinematic variable e.g. HT, pth, ptj1,
C - which typically increases with increasing hardness of radiation
C - in the event. Xmin is the minimum value kinematically accessible
C - to X. So damping --->1 for soft events and damping ---> 0 for
C - hard events. 
      ptj1_hfact(3)=wmass
C     GZ below was missing.. 
      ptj1_min = 0d0 
      ptj1_exp = 2d0 

C     eventpart is the total number of four momenta in the event
C     2 for initial state + ndec for the H decay + number of jets 

      eventpart=2+ndec+jets

      yw=yraptwo(3,4,p)
      if(abs(yw).gt.yw_limit) return
      ptw=pttwo(3,4,p)
      if (nwz .eq. -1) then 
         p_ele=p(3,:)
         p_nu=p(4,:)
      elseif (nwz .eq. 1) then 
         p_ele=p(4,:)
         p_nu=p(3,:)
      else
         write(*,*) 'nwz=',nwz 
         stop 'plotter_w: value of nwz not allowed' 
      endif
      pw=p(3,:)+p(4,:)
      

      costheta=p_ele(3)
     $     /sqrt(p_ele(1)*p_ele(1)+p_ele(2)*p_ele(2)+p_ele(3)*p_ele(3))
      theta=acos(costheta)!This is the angle of lepton and beam 

      boosted=0d0
      boosted(3)=pw(3)
      boosted(4)=pw(4)
c     Here we boost the system to the frame where the W boson has no longitudinal component
      if(boosted(3).eq.0d0) then
         theta_l=theta
      else
         call lab_to_CM(boosted,p_ele,p_boosted)
         theta_l=p_boosted(3)
     $        /sqrt(p_boosted(1)*p_boosted(1)+p_boosted(2)*p_boosted(2)+
     $        p_boosted(3)*p_boosted(3))
         theta_l=acos(theta_l)
      endif
      boosted=0d0
      boosted(1)=pw(1)
      boosted(2)=pw(2)
      boosted(4)=pw(4)
c     Here we boost the system to the frame where the W boson has no transverse componenet.
      if(boosted(1).eq.0d0.and.boosted(2).eq.0d0) then
         theta_t=theta
      else
         call lab_to_CM(boosted,p_ele,p_boosted)
         theta_t=p_boosted(3)
     $        /sqrt(p_boosted(1)*p_boosted(1)+p_boosted(2)*p_boosted(2)+
     $        p_boosted(3)*p_boosted(3))
         theta_t=acos(theta_t)
      endif

      mw = sqrt(pw(4)**2-pw(1)**2-pw(2)**2-pw(3)**2)
      x = atan((mw**2-wmass**2)/(wwidth*wmass))

c     theta* to compute polarizations
      boosted=pw
      if (boosted(1)**2+boosted(2)**2+boosted(3)**2 .ne. 0d0) then 
         call lab_to_CM(boosted,p_ele,p_boosted)
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

      call getyetaptmass(p_ele,dummy,eta_ele,pt_ele,dummy)
      call getyetaptmass(p_nu,dummy,eta_nu,pt_nu,dummy)
      
      mwt=sqrt(2d0*(pt_ele*pt_nu
     $     -p_ele(1)*p_nu(1)-p_ele(2)*p_nu(2))) !Definition taken from 1302.1415 
      
 99   continue

C - Order the jets. These are parton level quarks and gluons as dynnlo clusters with a radius of 1d-10. No jet finding has been done yet.
      if(jets.eq.2) then
         ptj1=pt(5,p)
         ptj2=pt(6,p)
         pj1=p(5,:)
         pj2=p(6,:)
         if(ptj1.lt.ptj2) then
            pjm=ptj2
            ptj2=ptj1
            ptj1=pjm
            pj1=p(6,:)
            pj2=p(5,:)
         endif
      elseif(jets.eq.1) then
         ptj1=pt(5,p)
         pj1=p(5,:)
         ptj2=0d0
         pj2=0d0
      elseif(jets.eq.0) then
         ptj1=0d0
         ptj2=0d0
         pj1=0d0
         pj2=0d0
      endif

      
C - Here we cluster the jets with the kt algorithm and jetradius 0.7
C - The algorithm is very simple, as there can be no more than two partons at NNLO level      
      call getdydetadphidr(pj1,pj2,dy,deta,dphi,drjj)
      
      Rad = 0.7d0 
      if(drjj.lt.Rad) then
         pj1=pj1+pj2
         pj2=0d0
         ptj1=sqrt(pj1(1)**2+pj1(2)**2)
         ptj2=0d0
      endif

C     3d histos
      if(first) then
c     print*, 'first'
         call inihists
         call pwhginimultihist(1)
         dy=0.4d0
         dpt=10d0
         dptzoom=2d0
         dM=2d0
C         dtheta=2d0*(1.57079632679d0/25d0)
         dtheta=pi/25d0
         
         suffix(1) = '-ptj20'
         jetcut(1) = 20d0 
         suffix(2) = '-ptj30'
         jetcut(2) = 30d0 
      
         call bookupeqbins('total',1d0,0d0,1d0)
         call bookupeqbins('yW',dy,-yw_limit,yw_limit)
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

         
         call pwhgbookup3(1,'yw-theta-mw','lin',delta_yw,-yw_limit,yw_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
         call pwhgbookup3(2,'yw-theta-mw-ptj1-3','lin',delta_yw,-yw_limit,yw_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
         call pwhgbookup3(3,'yw-theta_l-mw','lin',delta_yw,-yw_limit,yw_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
         call pwhgbookup3(4,'yw-theta_l-mw-ptj1-3','lin',delta_yw,-yw_limit,yw_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
         call pwhgbookup3(5,'yw-theta_t-mw','lin',delta_yw,-yw_limit,yw_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
         call pwhgbookup3(6,'yw-theta_t-mw-ptj1-3','lin',delta_yw,-yw_limit,yw_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
      else 
c     print*, 'fill'
         damping=((ptj1_hfact(3)-ptj1_min)**ptj1_exp)
     $        /((ptj1_hfact(3)-ptj1_min)**ptj1_exp
     $        +(ptj1-ptj1_min)**ptj1_exp)

         call pwhgfill3(1,yw,theta,x,wt)         
         call pwhgfill3(2,yw,theta,x,wt*damping)
         
         call pwhgfill3(3,yw,theta_l,x,wt)         
         call pwhgfill3(4,yw,theta_l,x,wt*damping)
         
         call pwhgfill3(5,yw,theta_t,x,wt)         
         call pwhgfill3(6,yw,theta_t,x,wt*damping)
         
         call filld('total',0.5d0,wt)
         call filld('yW',yW,wt)
         call filld('eta_ele',eta_ele,wt)
         call filld('ptW',ptW,wt)
         call filld('ptWzoom',ptW,wt)
         call filld('pt_ele',pt_ele,wt)
         call filld('pt_elezoom',pt_ele,wt)
         call filld('mW',mW,wt)
         call filld('mwt',mwt,wt)
         call filld('Amll',x,wt)
         call filld('theta',theta,wt)
         call filld('theta_l',theta_l,wt)
         call filld('theta_t',theta_t,wt)
         
         if(ptj1.ne.0d0) then
            call filld('ptj1',ptj1,wt)
            call filld('ptj1zoom',ptj1,wt)
         endif
         if(ptj2.ne.0d0) then
            call filld('ptj2',ptj2,wt)
            call filld('ptj2zoom',ptj2,wt)
         endif
         
C     -- Plot inclusive and exclusive jet multiplicties at two jet-pT thresholds
         do icut = 1,2
            
            
c     no-jets OR hardest-jet softer than threshold: 
c     ->fill 0-th bin of Njet-inc and 0-th bin of Njet-exc
            if((ptj1.eq.0d0) .or. 
     $           (ptj1.ne.0d0 .and. ptj1.lt.jetcut(icut))) then
               call filld('Njet-inc'//suffix(icut),0d0,wt)
               call filld('Njet-exc'//suffix(icut),0d0,wt)
            endif
            
            if(ptj1.ge.jetcut(icut)) then
               call filld('Njet-inc'//suffix(icut),1d0,wt)
               if(ptj2.le.jetcut(icut)) then
                  call filld('Njet-exc'//suffix(icut),1d0,wt)
               else
                  call filld('Njet-inc'//suffix(icut),2d0,wt)
                  call filld('Njet-exc'//suffix(icut),2d0,wt)
               endif
            endif
            
         enddo
         
c     1203.2165 These plots are to check with values in 1103.5445
         if((30d0.lt.ptw).and.(ptw.lt.50d0)) then
            
            call filld('cos_theta_star_low_pt',cos_theta_star,wt)
            call filld('cos_theta_star2_low_pt',cos_theta_star**2,wt)
            call filld('cos_theta_star4_low_pt',cos_theta_star**4,wt)
            call filld('<cos_theta_star_low_pt>',0.5d0,cos_theta_star*wt)
            call filld('<cos_theta_star2_low_pt>',0.5d0,cos_theta_star**2*wt)
            call filld('<cos_theta_star4_low_pt>',0.5d0,cos_theta_star**4*wt)
c         
         elseif(50d0.le.ptw) then
c            
            call filld('cos_theta_star_high_pt',cos_theta_star,wt)
            call filld('cos_theta_star2_high_pt',cos_theta_star**2,wt)
            call filld('cos_theta_star4_high_pt',cos_theta_star**4,wt)
            call filld('<cos_theta_star_high_pt>',0.5d0,cos_theta_star*wt)
            call filld('<cos_theta_star2_high_pt>',0.5d0,cos_theta_star**2*wt)
            call filld('<cos_theta_star4_high_pt>',0.5d0,cos_theta_star**4*wt)
         endif

         if(pt_ele.gt.20d0.and.
     $        pt_nu.gt.25d0.and.
     $        40d0.lt.mwt.and.
     $        abs(eta_ele).lt.2.4d0) then
c     Here begins the analysis for comparison with data
c     Here we "build the jets" with rr=0.6 for the paper 1302.1415
C     - Order the jets. These are parton level quarks and gluons as dynnlo clusters with a radius of 1d-10. No jet finding has been done yet.
            if(jets.eq.2) then
               ptj1=pt(5,p)
               ptj2=pt(6,p)
               pj1=p(5,:)
               pj2=p(6,:)
               if(ptj1.lt.ptj2) then
                  pjm=ptj2
                  ptj2=ptj1
                  ptj1=pjm
                  pj1=p(6,:)
                  pj2=p(5,:)
               endif
            elseif(jets.eq.1) then
               ptj1=pt(5,p)
               pj1=p(5,:)
               ptj2=0d0
               pj2=0d0
            elseif(jets.eq.0) then
               ptj1=0d0
               ptj2=0d0
               pj1=0d0
               pj2=0d0
            endif
            
            Rad = 0.6d0 
            if(drjj.lt.Rad) then
C     Recombination 
               d1 = min(ptj1,ptj2)*drjj/Rad ! sqrt of kt distance 
               pj1=pj1+pj2
               d0 = sqrt(pj1(1)**2+pj1(2)**2) ! pt of jet after recombination 
            else
c     No recombination
               d0=ptj1
               d1=ptj2
            endif
            
c     1108.6308 
            call filld('ptW_1_1108.6308',ptw,wt)
            call filld('ptW_2_1108.6308',ptw,wt)
            call filld('ptW_3_1108.6308',ptw,wt)
            call filld('ptW_4_1108.6308',ptw,wt)
            call filld('ptW_5_1108.6308',ptw,wt)
            call filld('ptW_6_1108.6308',ptw,wt)
            call filld('ptW_7_1108.6308',ptw,wt)
            call filld('ptW_8_1108.6308',ptw,wt)
c     1302.1415
c     d0
            call filld('d0_1_1302.1415',d0,wt)
            call filld('d0_2_1302.1415',d0,wt)
            call filld('d0_3_1302.1415',d0,wt)
            call filld('d0_4_1302.1415',d0,wt)
            call filld('d0_5_1302.1415',d0,wt)
            call filld('d0_6_1302.1415',d0,wt)
            call filld('d0_7_1302.1415',d0,wt)
            call filld('d0_8_1302.1415',d0,wt)
            call filld('d0_9_1302.1415',d0,wt)
            call filld('d0_10_1302.1415',d0,wt)
            call filld('d0_11_1302.1415',d0,wt)
            call filld('d0_12_1302.1415',d0,wt)
            call filld('d0_13_1302.1415',d0,wt)
            call filld('d0_14_1302.1415',d0,wt)
            call filld('d0_15_1302.1415',d0,wt)
            call filld('d0_16_1302.1415',d0,wt)
            call filld('d0_17_1302.1415',d0,wt)
            call filld('d0_18_1302.1415',d0,wt)
            call filld('d0_19_1302.1415',d0,wt)
            call filld('d0_20_1302.1415',d0,wt)
            call filld('d0_21_1302.1415',d0,wt)
            call filld('d0_22_1302.1415',d0,wt)
            call filld('d0_23_1302.1415',d0,wt)
            call filld('d0_24_1302.1415',d0,wt)
            call filld('d0_25_1302.1415',d0,wt)
            call filld('d0_26_1302.1415',d0,wt)
c     d1
            call filld('d1_1_1302.1415',d1,wt)
            call filld('d1_2_1302.1415',d1,wt)
            call filld('d1_3_1302.1415',d1,wt)
            call filld('d1_4_1302.1415',d1,wt)
            call filld('d1_5_1302.1415',d1,wt)
            call filld('d1_6_1302.1415',d1,wt)
            call filld('d1_7_1302.1415',d1,wt)
            call filld('d1_8_1302.1415',d1,wt)
            call filld('d1_9_1302.1415',d1,wt)
            call filld('d1_10_1302.1415',d1,wt)
            call filld('d1_11_1302.1415',d1,wt)
            call filld('d1_12_1302.1415',d1,wt)
            call filld('d1_13_1302.1415',d1,wt)
            call filld('d1_14_1302.1415',d1,wt)
            call filld('d1_15_1302.1415',d1,wt)
            call filld('d1_16_1302.1415',d1,wt)
            call filld('d1_17_1302.1415',d1,wt)
            call filld('d1_18_1302.1415',d1,wt)
            call filld('d1_19_1302.1415',d1,wt)
            call filld('d1_20_1302.1415',d1,wt)
            call filld('d1_21_1302.1415',d1,wt)
            call filld('d1_22_1302.1415',d1,wt)
            call filld('d1_23_1302.1415',d1,wt)
            call filld('d1_24_1302.1415',d1,wt)
            call filld('d1_25_1302.1415',d1,wt)
 
c     d1/d0
            if(d0.gt.20d0) then
               d1_d0=d1/d0
               call filld('d1/d0_1_1302.1415',d1_d0,wt)
               call filld('d1/d0_2_1302.1415',d1_d0,wt)
               call filld('d1/d0_3_1302.1415',d1_d0,wt)
               call filld('d1/d0_4_1302.1415',d1_d0,wt)
               call filld('d1/d0_5_1302.1415',d1_d0,wt)
               call filld('d1/d0_6_1302.1415',d1_d0,wt)
               call filld('d1/d0_7_1302.1415',d1_d0,wt)
               call filld('d1/d0_8_1302.1415',d1_d0,wt)
               call filld('d1/d0_9_1302.1415',d1_d0,wt)
               call filld('d1/d0_10_1302.1415',d1_d0,wt)
               call filld('d1/d0_11_1302.1415',d1_d0,wt)
               call filld('d1/d0_12_1302.1415',d1_d0,wt)
               call filld('d1/d0_13_1302.1415',d1_d0,wt)
               call filld('d1/d0_14_1302.1415',d1_d0,wt)
            endif

         endif
         call pwhgaccumup3
         call pwhgaccumup
      endif
      

c--- set the maximum number of plots, on the first call
      if (first) then
        first=.false.
c        nplotmax=n
      endif
      

      return 
      end
      

      
