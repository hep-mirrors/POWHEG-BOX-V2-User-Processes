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

      integer n,switch,nplotmax,i
      character tag*4
  
      double precision dot
      double precision wt
      double precision p(mxpart,4),p_ele(4),pz(4)
      double precision pt,yraptwo,pttwo,x,p_pos(4)
      integer eventpart

      logical first,jetmerge
      common/nplotmax/nplotmax
      common/jetmerge/jetmerge
      integer order,higgsdec,ndec,icut
      common/higgsdec/higgsdec,ndec
      common/nnlo/order
      data first/.true./
      save first

      double precision yz,ptz,mz,theta,theta_l,theta_t
      double precision HT,ptj1,ptj2,pjm, p_boosted(4)
      double precision HT_exp,ptz_exp,ptj1_exp
      double precision HT_min,ptz_min,ptj1_min
      double precision HT_hfact(4),boosted(4) 
      double precision ptz_hfact(4),costheta
      double precision ptj1_hfact(4),yz_limit,beam(4),beam_boosted(4)
      double precision damping,jetcut(2),pt_ele,pt_pos
      double precision mll,dy,dpt,dptzoom,dM,dtheta,phi_star,phi_star_atlas
      double precision dphi, theta_star, theta_star_atlas, t_vec(3)
      double precision at_vec(3), at, absvec,eta_ele,eta_pos,dummy  
      character * 6 suffix(2) 
      common/jcut/jetcut,suffix

c      pi=3.14159265358979

      wt=wt/1000d0  !  Convert to Powheg-Box units.
c      print*, 'wt', wt
      if(wt.eq.0d0) then
c         print*, 'Zero weight'
      endif

C     GZ alwasy initialize those to 0
         yz=0d0
         ptz=0d0
         HT=0d0
         ptj1=0d0
         ptj2=0d0
         yz_limit=5d0


      if (first) then
         tag='book'
c--- ensure we initialize all possible histograms
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
      ptj1_hfact(3)=1.0*zmass
C     GZ below were missing... 
      ptj1_min = 0d0 
      ptj1_exp = 2d0 


C     eventpart is the total number of four momenta in the event
C     2 for initial state + ndec for the H decay + number of jets 

      eventpart=2+ndec+jets
    

      yz=yraptwo(3,4,p)
      if(abs(yz).gt.yz_limit) return 
      ptz=pttwo(3,4,p)
      p_ele=p(3,:)
      p_pos=p(4,:)
      pz=p(3,:)+p(4,:)
c      mz=sqrt(2*dot(p,3,4))!Since the leptons are massless

C     GZ below: angle between one ifxed lepton and positive z-axis
      costheta=p_ele(3)
     $     /sqrt(p_ele(1)*p_ele(1)+p_ele(2)*p_ele(2)+p_ele(3)*p_ele(3))
      theta=acos(costheta)!At the moment just the angle between the two leptons


      boosted=0d0
      boosted(3)=pz(3)
      boosted(4)=pz(4)
c     Here we boost the system to the frame where the Z boson has no longitudinal componenet.
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
      boosted(1)=pz(1)
      boosted(2)=pz(2)
      boosted(4)=pz(4)
c     Here we boosted the system to the frame where the Z boson has no transverse componenet.
      if(boosted(1).eq.0d0.and.boosted(2).eq.0d0) then
         theta_t=theta
      else
         call lab_to_CM(boosted,p_ele,p_boosted)
         theta_t=p_boosted(3)
     $        /sqrt(p_boosted(1)*p_boosted(1)+p_boosted(2)*p_boosted(2)+
     $        p_boosted(3)*p_boosted(3))
         theta_t=acos(theta_t)
      endif
c      print*, theta, theta_l, theta_t
c      print*, 'boosted', boosted
C       HT=sqrt(ptz*ptz+2*dot(p,3,4))
C GZ Discuss Ht = some of all transverse pt 
      HT=0d0
      mll = sqrt((p_ele(4)+p_pos(4))**2-
     C     (p_ele(1)+p_pos(1))**2-(p_ele(2)+p_pos(2))**2-(p_ele(3)+p_pos(3))**2)
      x = atan((mll**2-zmass**2)/(zwidth*zmass))


C     add phi* and A_T distributions  
      dphi = (p_ele(1)*p_pos(1)+p_ele(2)*p_pos(2))/
     C     sqrt(p_ele(1)**2+p_ele(2)**2)/
     C     sqrt(p_pos(1)**2+p_pos(2)**2)
      dphi = acos(dphi) 

      boosted=pz
      if (boosted(1)**2+boosted(2)**2+boosted(3)**2 .ne. 0d0) then 
         call lab_to_CM(boosted,p_ele,p_boosted)
!         theta_star=p_boosted(3)
!     $        /sqrt(p_boosted(1)*p_boosted(1)+p_boosted(2)*p_boosted(2)+
!     $        p_boosted(3)*p_boosted(3))
         beam=0d0
         beam(1)=1d0
         beam(4)=1d0
         call lab_to_CM(boosted,beam,beam_boosted)
         theta_star=dot_product(p_boosted(1:3),beam_boosted(1:3))/
     $        (absvec(p_boosted(1:3))*absvec(beam_boosted(1:3)))

         theta_star=acos(theta_star)
      else
         theta_star = theta 
      endif 
      phi_star = tan((pi-dphi)/2d0)*sin(theta_star)

      call getyetaptmass(p_ele,dummy,eta_ele,pt_ele,dummy)
      call getyetaptmass(p_pos,dummy,eta_pos,pt_pos,dummy)
      HT = HT+pt_ele+pt_pos
      theta_star = acos(tanh((eta_ele-eta_pos)/2d0))
c      print*, 'ATLAS beta', tanh((eta_ele-eta_pos)/2d0)
      phi_star_atlas=tan((pi-dphi)/2d0)*sin(theta_star) 
C     A_T 
      t_vec = (p_ele(:3)-p_pos(:3))/absvec(p_ele(1:3)-p_pos(1:3))
      
      at_vec = pz(1:3) - dot_product(pz(1:3),t_vec)/
     C     absvec(t_vec(1:3))**2*t_vec(1:3) 
      at = absvec(at_vec) 
      
 99   continue

C - Order the jets
      if(jets.eq.2) then
         ptj1=pt(5,p)
         ptj2=pt(6,p)
         HT=HT+ptj1+ptj2
         if(ptj1.lt.ptj2) then
            pjm=ptj2
            ptj2=ptj1
            ptj1=pjm
         endif
      elseif(jets.eq.1) then
         ptj1=pt(5,p)
         ptj2=0d0
         HT=HT+ptj1
      elseif(jets.eq.0) then
         ptj1=0d0
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
         dtheta=2d0*(1.57079632679d0/25d0)
 
         suffix(1) = '-ptj20'
         jetcut(1) = 20d0 
         suffix(2) = '-ptj30'
         jetcut(2) = 30d0 
      
         call bookupeqbins('total',1d0,0d0,1d0)
         call bookupeqbins('yZ',dy,-yz_limit,yz_limit)
         
         call bookupeqbins('ptZ',dpt,0d0,500d0)
         call bookupeqbins('ptZzoom',dptzoom,0d0,50d0)
         
         call bookupeqbins('mz',dM,60d0,120d0)
         call bookupeqbins('theta',dtheta,0d0,2d0*1.57079632679d0)
         call bookupeqbins('theta_l',dtheta,0d0,2d0*1.57079632679d0)
         call bookupeqbins('theta_t',dtheta,0d0,2d0*1.57079632679d0)
         
         call bookupeqbins('ptj1',dpt,0d0,500d0)
         call bookupeqbins('ptj1zoom',dptzoom,0d0,50d0)
         
         call bookupeqbins('ptj2',dpt,0d0,500d0)
         call bookupeqbins('ptj2zoom',dptzoom,0d0,50d0)
         
C     distributions from 1205.4760 
         call bookupeqbins('phistar',0.04d0,0.d0,1d0)
         call bookupeqbins('phistar_ATLAS',0.04d0,0.d0,1d0)
         call bookupeqbins('lnphistar',0.2d0,-10d0,0d0)
         call bookupeqbins('lnphistar_ATLAS',0.2d0,-10d0,0d0)
         call bookupeqbins('at',dpt,0,300d0)
         call bookupeqbins('Amll',dtheta,-1.57079632679d0,1.57079632679d0)
C     -- loop over two sets of jet cuts (20 and 30 GeV) 
         do icut=1,2
C     - Inclusive jet multiplicties
            call bookupeqbins('Njet-inc'//suffix(icut),1d0,-0.5d0,5.5d0)
C     - Exclusive jet multiplicties
            call bookupeqbins('Njet-exc'//suffix(icut),1d0,-0.5d0,5.5d0)
         enddo
         
c     distributions used for pheno study in comparison to data
c     1107.2381
         call bookupeqbins('ptZ_1_1107.2381',3d0,0d0,30d0)
         call bookupeqbins('ptZ_2_1107.2381',6d0,30d0,60d0)
         call bookupeqbins('ptZ_3_1107.2381',20d0,60d0,100d0)
         call bookupeqbins('ptZ_4_1107.2381',80d0,100d0,180d0)
         call bookupeqbins('ptZ_5_1107.2381',170d0,180d0,350d0)
         
c     1109.5141
         call bookupeqbins('yZ_1_1109.5141',0.4d0,0.0d0,2.8d0)
         call bookupeqbins('yZ_2_1109.5141',0.8d0,2.8d0,3.6d0)
         
         
c     1211.6899
         call bookupeqbins('phistar_1_1211.6899',0.004d0,0.d0,0.024d0)
         call bookupeqbins('phistar_2_1211.6899',0.005d0,0.024d0,0.039d0)
         call bookupeqbins('phistar_3_1211.6899',0.006d0,0.039d0,0.057d0)
         call bookupeqbins('phistar_4_1211.6899',0.007d0,0.057d0,0.064d0)
         call bookupeqbins('phistar_5_1211.6899',0.008d0,0.064d0,0.072d0)
         call bookupeqbins('phistar_6_1211.6899',0.009d0,0.072d0,0.081d0)
         call bookupeqbins('phistar_7_1211.6899',0.01d0,0.081d0,0.091d0)
         call bookupeqbins('phistar_8_1211.6899',0.011d0,0.091d0,0.102d0)
         call bookupeqbins('phistar_9_1211.6899',0.012d0,0.102d0,0.114d0)
         call bookupeqbins('phistar_10_1211.6899',0.014d0,0.114d0,0.128d0)
         call bookupeqbins('phistar_11_1211.6899',0.017d0,0.128d0,0.145d0)
         call bookupeqbins('phistar_12_1211.6899',0.020d0,0.145d0,0.165d0)
         call bookupeqbins('phistar_13_1211.6899',0.024d0,0.165d0,0.189d0)
         call bookupeqbins('phistar_14_1211.6899',0.030d0,0.189d0,0.219d0)
         call bookupeqbins('phistar_15_1211.6899',0.039d0,0.219d0,0.258d0)
         call bookupeqbins('phistar_16_1211.6899',0.054d0,0.258d0,0.312d0)
         call bookupeqbins('phistar_17_1211.6899',0.079d0,0.312d0,0.391d0)
         call bookupeqbins('phistar_18_1211.6899',0.133d0,0.391d0,0.524d0)
         call bookupeqbins('phistar_19_1211.6899',0.171d0,0.524d0,0.695d0)
         call bookupeqbins('phistar_20_1211.6899',0.223d0,0.695d0,0.918d0)
         call bookupeqbins('phistar_21_1211.6899',0.235d0,0.918d0,1.153d0)
         call bookupeqbins('phistar_22_1211.6899',0.343d0,1.153d0,1.496d0)
         call bookupeqbins('phistar_23_1211.6899',0.451d0,1.496d0,1.947d0)
         call bookupeqbins('phistar_24_1211.6899',0.575d0,1.947d0,2.522d0)
         
         call pwhgbookup3(1,'yz-theta-mz','lin',0.4d0,-yz_limit,yz_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
         call pwhgbookup3(2,'yz-theta-mz-ptj1-3','lin',0.4d0,-yz_limit,yz_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
         call pwhgbookup3(3,'yz-theta_l-mz','lin',0.4d0,-yz_limit,yz_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
         call pwhgbookup3(4,'yz-theta_l-mz-ptj1-3','lin',0.4d0,-yz_limit,yz_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
         call pwhgbookup3(5,'yz-theta_t-mz','lin',0.4d0,-yz_limit,yz_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
         call pwhgbookup3(6,'yz-theta_t-mz-ptj1-3','lin',0.4d0,-yz_limit,yz_limit
     $        ,pi/25d0,0d0,pi
     $        ,pi/25d0,-pi/2d0,pi/2d0)
      else 
c     print*, 'fill'
         call pwhgfill3(1,yz,theta,x,wt)         
         damping=((ptj1_hfact(3)-ptj1_min)**ptj1_exp)
     $        /((ptj1_hfact(3)-ptj1_min)**ptj1_exp
     $        +(ptj1-ptj1_min)**ptj1_exp)
         call pwhgfill3(2,yz,theta,x,wt*damping)
         
         call pwhgfill3(3,yz,theta_l,x,wt)         
         call pwhgfill3(4,yz,theta_l,x,wt*damping)
         
         call pwhgfill3(5,yz,theta_t,x,wt)         
         call pwhgfill3(6,yz,theta_t,x,wt*damping)
         
         call filld('total',0.5d0,wt)
         call filld('yZ',yZ,wt)
         call filld('ptZ',ptZ,wt)
         call filld('ptZzoom',ptZ,wt)
         call filld('mz',mll,wt)
         call filld('Amll',x,wt)
         call filld('theta',theta,wt)
         call filld('theta_l',theta_l,wt)
         call filld('theta_t',theta_t,wt)
         
         call filld('ptj1',ptj1,wt)
         call filld('ptj1zoom',ptj1,wt)
         if(ptj2.ne.0d0) then
            call filld('ptj2',ptj1,wt)
            call filld('ptj2zoom',ptj1,wt)
         endif
         
         call filld('phistar',phi_star,wt)
         call filld('phistar_ATLAS',phi_star_atlas,wt)
         call filld('lnphistar',log(phi_star),wt)
         call filld('lnphistar_ATLAS',log(phi_star_atlas),wt)
         
         call filld('at',at,wt)
         
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
         
c     Here begins the analysis for comparison with data
c     1107.2381
         if(pt_ele.gt.20d0.and.
     $        pt_pos.gt.20d0.and.
     $        66d0.lt.mz .and. mz.lt.116d0) then !This cut should be trivially passed
                                !There is another cut requiring the muon to be isolated,
                                !but it seems this is corrected for in the paper 
            if(abs(eta_ele).lt.2.4d0.and.
     $           abs(eta_pos).lt.2.4d0) then
               
               call filld('ptZ_1_1107.2381',ptz,wt)
               call filld('ptZ_2_1107.2381',ptz,wt)
               call filld('ptZ_3_1107.2381',ptz,wt)
               call filld('ptZ_4_1107.2381',ptz,wt)
               call filld('ptZ_5_1107.2381',ptz,wt)
               
c     1211.6899
               call filld('phistar_1_1211.6899',phi_star_atlas,wt)
               call filld('phistar_2_1211.6899',phi_star_atlas,wt)
               call filld('phistar_3_1211.6899',phi_star_atlas,wt)
               call filld('phistar_4_1211.6899',phi_star_atlas,wt)
               call filld('phistar_5_1211.6899',phi_star_atlas,wt)
               call filld('phistar_6_1211.6899',phi_star_atlas,wt)
               call filld('phistar_7_1211.6899',phi_star_atlas,wt)
               call filld('phistar_8_1211.6899',phi_star_atlas,wt)
               call filld('phistar_9_1211.6899',phi_star_atlas,wt)
               call filld('phistar_10_1211.6899',phi_star_atlas,wt)
               call filld('phistar_11_1211.6899',phi_star_atlas,wt)
               call filld('phistar_12_1211.6899',phi_star_atlas,wt)
               call filld('phistar_13_1211.6899',phi_star_atlas,wt)
               call filld('phistar_14_1211.6899',phi_star_atlas,wt)
               call filld('phistar_15_1211.6899',phi_star_atlas,wt)
               call filld('phistar_16_1211.6899',phi_star_atlas,wt)
               call filld('phistar_17_1211.6899',phi_star_atlas,wt)
               call filld('phistar_18_1211.6899',phi_star_atlas,wt)
               call filld('phistar_19_1211.6899',phi_star_atlas,wt)
               call filld('phistar_20_1211.6899',phi_star_atlas,wt)
               call filld('phistar_21_1211.6899',phi_star_atlas,wt)
               call filld('phistar_22_1211.6899',phi_star_atlas,wt)
               call filld('phistar_23_1211.6899',phi_star_atlas,wt)
               call filld('phistar_24_1211.6899',phi_star_atlas,wt) 
               call filld('phistar_25_1211.6899',phi_star_atlas,wt)
               
            endif
            
c     1109.5141
            call filld('yZ_1_1109.5141',abs(yz),wt)
            call filld('yZ_2_1109.5141',abs(yz),wt)
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
      

      
