      subroutine init_hist
      implicit none
      real * 8 dy,dpt,dptzoom,dm,dtheta
      integer icut
      real *8 jetcut(2),x
      character * 6 suffix(2) 
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
      call bookupeqbins('yZ',dy,-5d0,5d0)

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
      call bookupeqbins('yZ_1_1109.5141',0.4d0,0d0,2.8d0)
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
      call bookupeqbins('phistar_25_1211.6899',0.755d0,2.522d0,3.277d0)
            
      call bookupeqbins('jetveto-R0.4-diff',0.2d0,-12.0d0,10.0d0)
      call bookupeqbins('jetveto-R0.5-diff',0.2d0,-12.0d0,10.0d0)
      call bookupeqbins('jetveto-R1.0-diff',0.2d0,-12.0d0,10.0d0)

      call bookupeqbins('A0',0.1d0,-1d0,3d0)         
      call bookupeqbins('A1',0.1d0,-1d0,3d0)         
      call bookupeqbins('A2',0.1d0,-1d0,3d0)         
      call bookupeqbins('A3',0.1d0,-1d0,3d0)         
      call bookupeqbins('A4',0.1d0,-1d0,3d0)         
      call bookupeqbins('A5',0.1d0,-1d0,3d0)         
      call bookupeqbins('A6',0.1d0,-1d0,3d0)         
      call bookupeqbins('A7',0.1d0,-1d0,3d0)         
      call bookupeqbins('A0zoom',1d0,0d0,50d0)         
      call bookupeqbins('A1zoom',1d0,0d0,50d0)         
      call bookupeqbins('A2zoom',1d0,0d0,50d0)         
      call bookupeqbins('A3zoom',1d0,0d0,50d0)         
      call bookupeqbins('A4zoom',1d0,0d0,50d0)         
      call bookupeqbins('A5zoom',1d0,0d0,50d0)         
      call bookupeqbins('A6zoom',1d0,0d0,50d0)         
      call bookupeqbins('A7zoom',1d0,0d0,50d0)         
      call bookupeqbins('total_pol',0.1d0,-1d0,3d0)         
      call bookupeqbins('total_polzoom',1d0,0d0,50d0)         

c     1406.3660
      call bookupeqbins('ptZ_1_1406.3660',2d0,0d0,18d0)
      call bookupeqbins('ptZ_2_1406.3660',4d0,18d0,54d0)
      call bookupeqbins('ptZ_3_1406.3660',6d0,54d0,60d0)
      call bookupeqbins('ptZ_4_1406.3660',10d0,60d0,80d0)
      call bookupeqbins('ptZ_5_1406.3660',20d0,80d0,100d0)
      call bookupeqbins('ptZ_6_1406.3660',50d0,100d0,200d0)
      call bookupeqbins('ptZ_7_1406.3660',100d0,200d0,300d0)
      call bookupeqbins('ptZ_8_1406.3660',500d0,300d0,800d0)
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
      real*8 pZ(4),mZ,ptZ,yZ,etaZ,boost(4)
      real*8 p_ele(4), p_pos(4),theta,theta_l,theta_t
c     arrays to reconstruct jets
      integer maxjet,numevent
      parameter (maxjet=8192)
      real *8 ptmin,p_boosted(4),x,zmass,zwidth,beam(4),beam_boosted(4)
      real *8  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     1    phij(maxjet),pj(4,maxjet),rr,ptrel(4)
      integer j1,j2,found,mjets,ihep,icut,i
      real *8 dphi, phi_star, theta_star, t_vec(3),at_vec(3), at, absvec  
      real *8 pi,phi_star_atlas,eta_ele,eta_pos,dummy
      real *8 pt_ele, pt_pos, lnptj,theta_CS,phi_CS,r_t(2),delta_t(2)
      real * 8 ele_plus, ele_minus, pos_plus, pos_minus,exp_value
      real * 8 cos_theta_CS,sin_theta_CS,cos_phi_CS,sin_phi_CS
      parameter (pi=3.1415926535897932385d0)
      data numevent/0/
      save numevent
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
     $           .and.(idhep(ihep).eq.11)) then
               j1=ihep
               found=found+1
               p_ele(1:4) = phep(1:4,j1)
            endif
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     $           .or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     $           .and.(idhep(ihep).eq.-11)) then
               j2=ihep
               found=found+1
               p_pos(1:4) = phep(1:4,j2)
            endif
         enddo
      else
         do ihep=1,nhep
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     $           .or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     $           .and.(idhep(ihep).eq.11)
     $           .and.(abs(idhep(jmohep(1,ihep))).eq.23
     $           .or.abs(idhep(jmohep(1,jmohep(1,ihep)))).eq.23)) then
               j1=ihep
               found=found+1
               p_ele(1:4) = phep(1:4,j1)
            endif
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     $           .or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     $           .and.(idhep(ihep).eq.-11)
     $           .and.(abs(idhep(jmohep(1,ihep))).eq.23
     $           .or.abs(idhep(jmohep(1,jmohep(1,ihep)))).eq.23)) then
               j2=ihep
               found=found+1
               p_pos(1:4) = phep(1:4,j2)
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
         pZ(1:4)=p_ele(1:4)+p_pos(1:4)
      endif

      call getyetaptmass(pZ,yZ,etaZ,ptZ,mZ)
      if(abs(yZ).gt.5d0) return
      theta=p_ele(3)
     $     /sqrt(p_ele(1)**2+p_ele(2)**2+p_ele(3)**2)
      theta=acos(theta)

      boost=0d0
      boost(3)=pz(3)
      boost(4)=pz(4)
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
      boost(1)=pz(1)
      boost(2)=pz(2)
      boost(4)=pz(4)
      if (boost(1)**2+boost(2)**2 .ne. 0d0) then 
         call lab_to_CM(boost,p_ele,p_boosted)
         theta_t=p_boosted(3)
     $        /sqrt(p_boosted(1)*p_boosted(1)+p_boosted(2)*p_boosted(2)+
     $        p_boosted(3)*p_boosted(3))
         theta_t=acos(theta_t)
      else
         theta_t = theta 
      endif 

C     add phi* and A_T distributions  
      dphi = (p_ele(1)*p_pos(1)+p_ele(2)*p_pos(2))/
     C     sqrt(p_ele(1)**2+p_ele(2)**2)/
     C     sqrt(p_pos(1)**2+p_pos(2)**2)
      dphi = acos(dphi) 

      boost=pz
      if (boost(1)**2+boost(2)**2+boost(3)**2 .ne. 0d0) then
         call lab_to_CM(boost,p_ele,p_boosted)
         beam=0d0
         beam(3)=1d0
         beam(4)=1d0
         call lab_to_CM(boost,beam,beam_boosted)
         theta_star=dot_product(p_boosted(1:3),beam_boosted(1:3))/
     $        (absvec(p_boosted(1:3))*absvec(beam_boosted(1:3)))

         theta_star=acos(theta_star)
      else
         theta_star = theta
      endif
      phi_star = tan((pi-dphi)/2d0)*sin(theta_star)

      call getyetaptmass(p_ele,dummy,eta_ele,pt_ele,dummy)
      call getyetaptmass(p_pos,dummy,eta_pos,pt_pos,dummy)
      theta_star = acos(tanh((eta_ele-eta_pos)/2d0))
c      print*, 'ATLAS beta', tanh((eta_ele-eta_pos)/2d0)
      phi_star_atlas=tan((pi-dphi)/2d0)*sin(theta_star) 
C     A_T 
      t_vec = (p_ele(:3)-p_pos(:3))/absvec(p_ele(1:3)-p_pos(1:3))
      
      at_vec = pz(1:3) - dot_product(pz(1:3),t_vec)/
     C     absvec(t_vec(1:3))**2*t_vec(1:3) 
      at = absvec(at_vec) 

c     Here we calculate the Collins-Soper angles theta and phi.
      delta_t(1:2)=p_ele(1:2)-p_pos(1:2)
c      theta_CS=2*(p_ele(3)*p_pos(4)-p_ele(4)*p_pos(3))
c     $     /(mz*sqrt(mz**2+ptz**2))
c      print*, 'Cos(theta) old method', theta_CS
c      if(abs(theta_CS).ge.1d0) then
c         print*, 'cos(theta_CS)= ', theta_CS
c         theta_CS=0d0
c      else
c         theta_CS=acos(theta_CS)
c      endif

      phi_CS=(sqrt(mz**2+ptz**2)/mz)
     $     *(-delta_t(1)*pz(2)+delta_t(2)*pz(1))
     $     /(delta_t(1)*pz(1)+delta_t(2)*pz(2))

      if(theta_CS.ne.theta_CS) print*, 'theta_CS', theta_CS
      call CS_angles(p_ele,p_pos,yz,cos_theta_CS,sin_theta_CS,cos_phi_CS,sin_phi_CS)
      sin_phi_CS=cos_phi_CS*phi_CS !phi_CS=tan_phi_CS here. We need this to get the right sign on sine.

c      print*, 'Our theta_cs', theta_cs
c      print*, 'Our phi_cs', phi_cs
c     For testing
c      ele_plus=1/sqrt(2d0)*(p_ele(4)+p_ele(3))
c      ele_minus=1/sqrt(2d0)*(p_ele(4)-p_ele(3))
c      pos_plus=1/sqrt(2d0)*(p_pos(4)+p_pos(3))
c      pos_minus=1/sqrt(2d0)*(p_pos(4)-p_pos(3))
c      r_t(1)=-pz(2)/sqrt(pz(1)**2+pz(2)**2)
c      r_t(2)=pz(1)/sqrt(pz(1)**2+pz(2)**2)
c      theta_CS=acos(2*(ele_plus*pos_minus-ele_minus*pos_plus)
c     $     /(mz*sqrt(mz**2+ptz**2)))
c      phi_CS=atan(sqrt(mz**2+ptz**2)/mz
c     $     *(delta_t(1)*r_t(1)+delta_t(2)*r_t(2))
c     $     /(delta_t(1)*pz(1)/sqrt(pz(1)**2+pz(2)**2)
c     $     +delta_t(2)*pz(2)/sqrt(pz(1)**2+pz(2)**2)))
c      print*, 'Their theta_cs', theta_cs
c      print*, 'Their phi_cs', phi_cs
c     total sigma
      call filld('total',0.5d0,dsig)

c     Higgs histograms 
      zmass=91.1876d0
      zwidth=2.49595d0

      x=atan((mz**2-zmass**2)/(zwidth*zmass))
c      print*, 'x,mz,zmass,zwidth',x,mz,zmass,zwidth
c      stop
      call filld('yZ',yZ,dsig)
      call filld('ptZ',ptZ,dsig)
      call filld('ptZzoom',ptZ,dsig)
      call filld('mz',mz,dsig)
      call filld('Amll',x,dsig)
      call filld('theta',theta,dsig)
      call filld('theta_l',theta_l,dsig)
      call filld('theta_t',theta_t,dsig)
      if(dsig(1).ne.dsig(1)) then
         print*, 'ptz, dsig', ptz, dsig(1)
         return
      endif
c      stop
C     find jets 
      rr=0.7d0       
      ptmin=0d0
      call buildjets(1,rr,ptmin,mjets,ktj,etaj,rapj,phij,ptrel,pj)
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
      

      call filld('phistar',phi_star,dsig)
      call filld('phistar_ATLAS',phi_star_atlas,dsig)
      call filld('lnphistar',log(phi_star),dsig)
      call filld('lnphistar_ATLAS',log(phi_star_atlas),dsig)

      call filld('at',at,dsig)

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
c     Z polarisation
      if(80.lt.mz.and.100.gt.mz) then
         exp_value=cos_theta_CS**2d0
         call filld('A0',log(ptz)/log(10d0),dsig*exp_value)
         call filld('A0zoom',ptz,dsig*exp_value)
         exp_value=2d0*sin_theta_CS*cos_theta_CS*cos_phi_CS
         call filld('A1',log(ptz)/log(10d0),dsig*exp_value)
         call filld('A1zoom',ptz,dsig*exp_value)
         exp_value=(cos_phi_cs**2d0-sin_phi_CS**2d0)*sin_theta_CS**2d0
         call filld('A2',log(ptz)/log(10d0),dsig*exp_value)
         call filld('A2zoom',ptz,dsig*exp_value)
         exp_value=cos_phi_CS*sin_theta_CS
         call filld('A3',log(ptz)/log(10d0),dsig*exp_value)
         call filld('A3zoom',ptz,dsig*exp_value)
         exp_value=cos_theta_CS
         call filld('A4',log(ptz)/log(10d0),dsig*exp_value)
         call filld('A4zoom',ptz,dsig*exp_value)
         exp_value=sin_theta_CS**2d0*2d0*sin_phi_CS*cos_phi_CS
         call filld('A5',log(ptz)/log(10d0),dsig*exp_value)
         call filld('A5zoom',ptz,dsig*exp_value)
         exp_value=2d0*sin_theta_CS*cos_theta_CS*sin_phi_CS
         call filld('A6',log(ptz)/log(10d0),dsig*exp_value)
         call filld('A6zoom',ptz,dsig*exp_value)
         exp_value=sin_theta_CS*sin_phi_CS
         call filld('A7',log(ptz)/log(10d0),dsig*exp_value)
         call filld('A7zoom',ptz,dsig*exp_value)
         call filld('total_pol',log(ptz)/log(10d0),dsig)
         call filld('total_polzoom',ptz,dsig)
      endif   
         
 
c     Here begins the analysis for comparison with data
c     1107.2381
      if(pt_ele.gt.20d0.and.
     $     pt_pos.gt.20d0.and.
     $     66d0.lt.mz .and. mz.lt.116d0) then !This cut should be trivially passed
                                     !There is another cut requiring the muon to be isolated,
                                     !but it seems this is corrected for in the paper 
         if(abs(eta_ele).lt.2.4d0.and.
     $     abs(eta_pos).lt.2.4d0) then
            
            call filld('ptZ_1_1107.2381',ptz,dsig)
            call filld('ptZ_2_1107.2381',ptz,dsig)
            call filld('ptZ_3_1107.2381',ptz,dsig)
            call filld('ptZ_4_1107.2381',ptz,dsig)
            call filld('ptZ_5_1107.2381',ptz,dsig)

            call filld('ptZ_1_1406.3660',ptz,dsig)
            call filld('ptZ_2_1406.3660',ptz,dsig)
            call filld('ptZ_3_1406.3660',ptz,dsig)
            call filld('ptZ_4_1406.3660',ptz,dsig)
            call filld('ptZ_5_1406.3660',ptz,dsig)
            call filld('ptZ_6_1406.3660',ptz,dsig)
            call filld('ptZ_7_1406.3660',ptz,dsig)
            call filld('ptZ_8_1406.3660',ptz,dsig)

c     1211.6899
            call filld('phistar_1_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_2_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_3_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_4_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_5_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_6_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_7_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_8_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_9_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_10_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_11_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_12_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_13_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_14_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_15_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_16_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_17_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_18_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_19_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_20_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_21_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_22_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_23_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_24_1211.6899',phi_star_atlas,ptz*dsig)
            call filld('phistar_25_1211.6899',phi_star_atlas,ptz*dsig)
c            call filld('phistar_1_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_2_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_3_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_4_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_5_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_6_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_7_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_8_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_9_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_10_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_11_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_12_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_13_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_14_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_15_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_16_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_17_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_18_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_19_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_20_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_21_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_22_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_23_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_24_1211.6899',phi_star_atlas,dsig)
c            call filld('phistar_25_1211.6899',phi_star_atlas,dsig)
         endif

c     1109.5141
         call filld('yZ_1_1109.5141',abs(yz),dsig)
         call filld('yZ_2_1109.5141',abs(yz),dsig)
         
      endif

      rr=0.4d0       
      call buildjets(1,rr,ptmin,mjets,ktj,etaj,rapj,phij,ptrel,pj)
      lnptj=log(ktj(1)/zmass)
      call filld('jetveto-R0.4-diff',lnptj,dsig)

      rr=0.5d0       
      call buildjets(1,rr,ptmin,mjets,ktj,etaj,rapj,phij,ptrel,pj)
      lnptj=log(ktj(1)/zmass)
      call filld('jetveto-R0.5-diff',lnptj,dsig)

      rr=1.0d0       
      call buildjets(1,rr,ptmin,mjets,ktj,etaj,rapj,phij,ptrel,pj)
      lnptj=log(ktj(1)/zmass)
      call filld('jetveto-R1.0-diff',lnptj,dsig)

      end
      


      subroutine buildjets(iflag,rr,ptmin,mjets,kt,eta,rap,phi,
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
c all but the Z and leptons
            if (isthep(j).eq.1.and.(
     $           .not.idhep(j).eq.23.and..not.abs(idhep(j)).eq.11
     $           .and..not.abs(idhep(j)).eq.12)) then
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
      palg=-1
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
      do j=1,min(njets,3)
         do mu=1,3
            pjetin(mu) = pjet(mu,j)
         enddo
         pjetin(0) = pjet(4,j)         
         vec(1)=0d0
         vec(2)=0d0
         vec(3)=1d0
         beta = -pjet(3,j)/pjet(4,j)
         call mboost(1,vec,beta,pjetin,pjetout)         
c     write(*,*) pjetout
         ptrel(j) = 0
         do i=1,ntracks
            if (jetvec(i).eq.j) then
               do mu=1,3
                  ptrackin(mu) = ptrack(mu,i)
               enddo
               ptrackin(0) = ptrack(4,i)
               call mboost(1,vec,beta,ptrackin,ptrackout) 
               ptrel(j) = ptrel(j) + get_ptrel(ptrackout,pjetout)
            endif
         enddo
      enddo
      end

      subroutine CS_angles(p_ele,p_pos,y_z,cos_theta,sin_theta,cos_phi,sin_phi)
c     Takes lepton momenta as input and computes the related Collins-Soper angles
c     in terms of trigonmetric functions
      implicit none
      real * 8 p_ele(4),p_pos(4),pZ(4),beam_p(4),beam_m(4),y_z
      real * 8 boosted_p_ele(4),boosted_p_pos(4),boosted_beam_p(4),boosted_beam_m(4)
      real * 8 cos_theta,sin_theta,cos_phi,sin_phi
      real * 8 z_axis(3),q_axis(3)
      real * 8 absvec
      beam_p=0d0
      beam_m=0d0
      beam_p(3)=1d0
      beam_p(4)=1d0
      beam_m(3)=-1d0
      beam_m(4)=1d0
      pz=p_ele+p_pos
c      print*, 'pz', pz(1:3)/absvec(pz(1:3))
c     First boost leptons and beam into the Z CM
      if (pz(1)**2+pz(2)**2+pz(3)**2 .ne. 0d0) then
         call lab_to_CM(pZ,p_ele,boosted_p_ele)
         call lab_to_CM(pZ,p_pos,boosted_p_pos)
         call lab_to_CM(pZ,beam_p,boosted_beam_p)
         call lab_to_CM(pZ,beam_m,boosted_beam_m)
c     Now normalise beam three momentum
         beam_p(1:3)=boosted_beam_p(1:3)/absvec(boosted_beam_p(1:3))
         beam_m(1:3)=boosted_beam_m(1:3)/absvec(boosted_beam_m(1:3))
      endif

c     And compute the z prime axis and q axis as defined by Collins and Soper
      z_axis=(beam_p(1:3)-beam_m(1:3))/absvec(beam_p(1:3)-beam_m(1:3))
      q_axis=-(beam_p(1:3)+beam_m(1:3))/absvec(beam_p(1:3)+beam_m(1:3))
c      print*, 'q axis', q_axis
c      print*, 'dot product', dot_product(q_axis,pz(1:3)/absvec(pz(1:3)))
      if(y_z.lt.0d0) z_axis=-z_axis

c     Now we can compute sine and cosine of the two angles
      cos_theta=dot_product(boosted_p_pos(1:3),z_axis)/absvec(boosted_p_pos(1:3))
      sin_theta=sqrt(1d0-cos_theta**2d0)
      cos_phi=dot_product(boosted_p_pos(1:3),q_axis)/(sin_theta*absvec(boosted_p_pos(1:3)))
c      sin_phi=sqrt(1d0-cos_phi**2d0)

      end
      
