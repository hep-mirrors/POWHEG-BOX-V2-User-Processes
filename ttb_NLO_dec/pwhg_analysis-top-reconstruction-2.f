c  The next subroutines, open some histograms and prepare them 
c      to receive data 
c  You can substitute these  with your favourite ones
c  init   :  opens the histograms
c  topout :  closes them
c  pwhgfill  :  fills the histograms with data

      subroutine init_hist
      implicit none
      include  'LesHouches.h'
      include 'pwhg_math.h'
      integer j,l
      logical asyanal
      common/casyanal/asyanal
      character * 20 prefix
      integer nbins
      parameter (nbins=11)
      real * 8 pT_tt_bins(nbins+1)
      data pT_tt_bins/  0d0, 10d0, 25d0, 50d0,100d0,
     1     150d0,200d0,250d0,300d0,400d0,600d0, 900d0/          
      real * 8 m_tt_bins(nbins+1)
      data m_tt_bins/ 320d0,360d0,400d0,450d0,500d0,
     1     550d0,600d0,650d0,700d0,800d0,900d0,1000d0/          
      character * 2 digit(20)
      data digit/'01','02','03','04','05','06','07','08','09','10',
     1           '11','12','13','14','15','16','17','18','19','20'/
      integer lenocc
      real * 8 powheginput
      external lenocc,powheginput
      character *5 suffix(3)
      common/csuffix/suffix
      integer icut

      call inihists

      suffix(1)='-cut1'
      suffix(2)='-cut2'
      suffix(3)='-cut3'

      do icut=1,3
         
      call bookupeqbins('Njets-pt10'//suffix(icut)  ,1d0,-0.5d0,10.5d0)
      call bookupeqbins('Njets-pt20'//suffix(icut)  ,1d0,-0.5d0,10.5d0)
      call bookupeqbins('Njets-pt30'//suffix(icut)  ,1d0,-0.5d0,10.5d0)
      call bookupeqbins('Njets-pt40'//suffix(icut)  ,1d0,-0.5d0,10.5d0)

      do j=1,9
         if(j.eq.1) then
            prefix='t'
         elseif(j.eq.2) then
            prefix='tb'
         elseif(j.eq.3) then
            prefix='btop'
         elseif(j.eq.4) then
            prefix='bbtop'
         elseif(j.eq.5) then
            prefix='lwp'
         elseif(j.eq.6) then
            prefix='lwm'
         elseif(j.eq.7) then
            prefix='ttb'
          elseif(j.eq.8) then
            prefix='ttb-radMC'
         elseif(j.eq.9) then
            prefix='ttb-radPW'
         endif
         l=lenocc(prefix)
         call bookupeqbins(prefix(1:l)//'_y'//suffix(icut)  ,0.2d0,-4d0,4d0)
         call bookupeqbins(prefix(1:l)//'_eta'//suffix(icut),0.2d0,-4d0,4d0)
         call bookupeqbins(prefix(1:l)//'_pt'//suffix(icut) ,2d0,0d0,400d0)
         if(j.eq.1.or.j.eq.2) then
            call bookupeqbins(prefix(1:l)//'_zoom_m'//suffix(icut),0.2d0,150d0,200d0)
         endif
         call bookupeqbins(prefix(1:l)//'_m'//suffix(icut)  ,2.5d0,0d0,500d0)
      enddo

      call bookupeqbins('t_pt_10cut'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('t_pt_20cut'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('t_pt_40cut'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('t_pt_60cut'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('t_pt_80cut'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('t_pt_120cut'//suffix(icut),2d0,0d0,400d0)

      call bookupeqbins('m_lp_lm'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('mT_lp_MET'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('mT_lm_MET'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('m_lp_b'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('m_lm_bbar'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('m_lp_jb'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('m_lm_jbbar'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('m_wp_b'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('m_wm_bb'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('m_wp_bj'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('m_wm_bbj'//suffix(icut),2d0,0d0,400d0)
      call bookupeqbins('bfrag'//suffix(icut),0.01d0,0d0,1d0)
      call bookupeqbins('bptdec'//suffix(icut),1d0,0d0,90d0)
      call bookupeqbins('bbptdec'//suffix(icut),1d0,0d0,90d0)
      call bookupeqbins('bbfrag'//suffix(icut),0.01d0,0d0,1d0)
      call bookupeqbins('bfrag-cut5'//suffix(icut),0.01d0,0d0,1d0)
      call bookupeqbins('bfrag-cut15'//suffix(icut),0.01d0,0d0,1d0)
      call bookupeqbins('wpmom'//suffix(icut),0.01d0,0d0,1d0)
      call bookupeqbins('wmmom'//suffix(icut),0.01d0,0d0,1d0)
      call bookupeqbins('lwp-lwm-dy'//suffix(icut),0.2d0,-4d0,4d0)
      call bookupeqbins('lwp-lwm-deta'//suffix(icut),0.2d0,-4d0,4d0)
      call bookupeqbins('lwp-lwm-delphi'//suffix(icut),pi/10,0d0,pi)
      call bookupeqbins('lwp-lwm-dr'//suffix(icut),0.2d0,0d0,8d0)
      do j=1,10
         call bookupeqbins('cth1cth2-'//digit(j)//suffix(icut),0.2d0,-1d0,1d0)
      enddo

      call bookupeqbins('Rect-pt'//suffix(icut),20d0,0d0,400d0)

c$$$      call bookupeqbins('ttb_m_toj'//suffix(icut),0.01d0,0.5d0,1.5d0)
c$$$      call bookupeqbins('ttb_m_tof'//suffix(icut),0.01d0,0.5d0,1.5d0)
c$$$      call bookupeqbins('t_pt_toj'//suffix(icut),0.01d0,0.5d0,1.5d0)
c$$$      call bookupeqbins('t_pt_tof'//suffix(icut),0.01d0,0.5d0,1.5d0)
c$$$      call bookupeqbins('tb_pt_toj'//suffix(icut),0.01d0,0.5d0,1.5d0)
c$$$
c$$$      call bookupeqbins('t_m_toj'//suffix(icut),0.01d0,0.5d0,1.5d0)
c$$$      call bookupeqbins('tb_m_toj'//suffix(icut),0.01d0,0.5d0,1.5d0)
c$$$
c$$$      call bookupeqbins('t_de'//suffix(icut),2d0,-100d0,100d0)
c$$$      call bookupeqbins('part_de'//suffix(icut),2d0,-100d0,100d0)
c$$$      call bookupeqbins('part_de_cut20'//suffix(icut),2d0,-100d0,100d0)
c$$$      call bookupeqbins('part_de_cut40'//suffix(icut),2d0,-100d0,100d0)


      call bookupeqbins('costhbtop'//suffix(icut),0.1d0,-1d0,1d0)
      call bookupeqbins('costhabatop'//suffix(icut),0.1d0,-1d0,1d0)

      enddo

c     this plot is without cuts
c      if(powheginput("#asymmetries").eq.1) then
         asyanal = .true.
         call bookupeqbins('asycoef',1d0,0d0,2d0)
c      else
c         asyanal = .false.
c      endif

c plots to test pythia radiation in decay
      call bookupeqbins('tmdecsc',1d0,0d0,200d0)
      call bookupeqbins('tpdecsc',1d0,0d0,200d0)
      call bookupeqbins('2o1scale',0.1d0,0d0,4d0)
      call bookupeqbins('pyzero',0.1d0,0d0,4d0)

      call bookupeqbins('w_j1-E',1d0,0d0,100d0)
      call bookupeqbins('w_j2-E',1d0,0d0,100d0)
      call bookupeqbins('w_j3-E',1d0,0d0,100d0)

      end

      subroutine analysis(dsig0)
      implicit none
      include 'hepevt.h'
      include 'pwhg_math.h' 
      include 'LesHouches.h'
      character * 6 whcprg      
      common/cwhcprg/whcprg
      integer jpref
      character * 20 prefix(18)
      common/ccccprefix/jpref,prefix
      data whcprg/'NLO   '/
      real * 8  dsig0,dsig
      logical asyanal
      common/casyanal/asyanal
      integer   ihep                ! HEPEVT index.
      real * 8 p_top(4),p_atop(4),p_wp(4),p_wm(4),p_lwp(4),p_lwm(4),
     1         p_nuwp(4),p_nuwm(4),p_b(4),p_bb(4),y,eta,pt,mass,
     2         ptzmf(4),plzmf(4),ppp(4),pbhadfromtop(4),
     3         pbhadtp(4),pbhadtm(4)
      integer   maxtracks,maxjets
      parameter (maxtracks=nmxhep,maxjets=nmxhep)
      integer mjets,jetvec(maxtracks)
      integer bhadfromtop,bhadfromatop
      real * 8 ptbhadfromtop,ptbhadfromatop
      logical   isForClustering(maxtracks)
      real * 8 j_kt(maxjets),j_eta(maxjets),j_rap(maxjets),
     1     j_phi(maxjets),j_p(4,maxjets)
      integer j,i1,i2,id,i_top,i_atop,i_bfromtop,i_abfromatop,
     1     i_wp,i_wm,i_lwp,i_lwm,i_nuwp,i_nuwm,i_bjet,i_abjet,jhep,
     1     i_part,njets20,njets30,njets40
      real * 8 mtop,mtb,mwp,mwm,mb,mbb,p_bmax,e_bmax,xb,
     1     p_bbmax,e_bbmax,xbb,ewp,pwp,ewm,pwm,xw,
     2     dy,deta,dphi,dr,cth1,cth2,ptmiss,ptmiss2(2)
      real * 8 ptop(4),patop(4)
      integer jcth1
      real * 8 w(4),pb(4),ptb
      real * 8 prodvec2,massvec2,powheginput
      integer sonofhep,sonofid,binhadron
      logical isbhadron
      external sonofhep,sonofid,isbhadron,binhadron
      integer in_jet
      external in_jet
      integer i_top0,i_atop0,i_part0,i_topjet,i_atopjet,i_partjet
      real * 8 ptop0(4),patop0(4),ppart0(4),ptot0(4)
      real * 8 ptopjet(4),patopjet(4),ppartjet(4),ptotjet(4)
      real * 8 mt_ratio,mtb_ratio,mttb_ratio,
     1     ptt_ratio,pttb_ratio,parton_dm,part_de,top_de,atop_de,
     1     deincrease,rmomtop,rmomatop,rmomjet,masswindow
      integer ngenerations,inotfound,iprodrad
      common/cngenerations/ngenerations
      character * 2 digit(20)
      data digit/'01','02','03','04','05','06','07','08','09','10',
     1           '11','12','13','14','15','16','17','18','19','20'/
      integer id1,id2
      real * 8 dot3,avec3

      integer ntpdec,ntmdec,tpiddec(8),tmiddec(8)
      real * 8 tpdecsc,tmdecsc,tppdec(4,8),tmpdec(4,8)
      common/ctptmdec/tpdecsc,tmdecsc,tppdec,tmpdec,
     1     ntpdec,ntmdec,tpiddec,tmiddec
      real * 8 ptpw,phepdot

      integer nlowhich

      character *5 suffix(3)
      common/csuffix/suffix
      logical cut2,cut3

      logical ini
      data ini/.true./
      save ini
      real *8 cut2_ptb,cut2_mbb,cut3_ptbj,cut3_etabj,cut3_ptl,cut3_etal,cut3_ptmiss
      save cut2_ptb,cut2_mbb,cut3_ptbj,cut3_etabj,cut3_ptl,cut3_etal,
     1     cut3_ptmiss,nlowhich,masswindow



      if(ini) then
c--------------
         cut2_ptb = 30
         cut2_mbb = 30
c------------
         cut3_ptbj  = 30
         cut3_etabj = 2.5
         cut3_ptl   = 20
         cut3_etal  = 2.5
         cut3_ptmiss = 20 

         ini=.false.
         nlowhich = powheginput("#nlowhich")

         masswindow = powheginput("#masswindow")

      endif

      if(nlowhich.eq.4) then
         call filld('tmdecsc',tmdecsc,dsig)
         call filld('tpdecsc',tpdecsc,dsig)
         if(ntpdec.eq.3) then
c t w b
            call filld('2o1scale',0d0,dsig)
         elseif(ntpdec.eq.4) then
c t w b g (g from powheg)
            call filld('2o1scale',0d0,dsig)
         elseif(ntpdec.eq.5) then
c t w b b g
            call filld('pyzero',tpdecsc,dsig)
         else
c t w b g (from powheg) +  (b g) and/or (g g)
            ptpw = sqrt(2*phepdot(tppdec(:,3),tppdec(:,4))*tppdec(4,4)/tppdec(4,3))
            call filld('2o1scale',tpdecsc/ptpw,dsig)
         endif
      endif


      ngenerations = powheginput("#ngenerations")
      if(ngenerations.lt.0) ngenerations = 4

      dsig  = dsig0

      i_top = 0
      i_atop = 0
      i_wp = 0
      i_wm = 0
      i_lwp = 0
      i_lwm = 0
      i_bfromtop = 0
      i_abfromatop = 0

      if(whcprg.eq.'NLO') then
         i_top = 3
         i_atop = 4
         i_wp = 5
         i_wm = 6

         i_lwp = 7
         i_lwm = 9
         i_nuwp = 8
         i_nuwm = 10
         i_bfromtop = 11
         i_abfromatop = 12

         IsForClustering = .false.
         IsForClustering(13) = .true.
         IsForClustering(i_bfromtop) = .true.
         IsForClustering(i_abfromatop) = .true.
C --------------------------------------------- C
C - LHE PARTICLE TOP RECONSTRUCTION: MC TRUTH - C
C --------------------------------------------- C
      else
c Build top MC; find the last top (tbar)
c in the event record, i.e. before decays
c Only for HERWIG 6
         i_top0 = 0
         i_atop0 = 0
         i_part0 = 0
         i_topjet = 0
         i_atopjet = 0
         i_partjet = 0
         do jhep=1,nhep
            id=abs(idhep(jhep))
            if(idhep(jhep).eq.6) i_top = jhep
            if(idhep(jhep).eq.-6) i_atop = jhep
c$$$            if(whcprg.eq.'HERWIG') then
c$$$c also store the top momentum at the Hard Process level (ist=123,124)
c$$$               if(idhep(jmohep(1,jhep)).eq.0.and.
c$$$     1              (isthep(jhep).eq.123.or.isthep(jhep).eq.124)) then
c$$$                  if(idhep(jhep).eq.6) then
c$$$                     i_top0   = jhep
c$$$                  elseif(idhep(jhep).eq.-6) then
c$$$                     i_atop0 = jhep
c$$$                  else
c$$$                     i_part0 = jhep
c$$$                  endif
c$$$               endif
c$$$               if(isthep(jhep).eq.143.or.isthep(jhep).eq.144) then
c$$$                  if(jmohep(1,jhep).eq.i_top0) then
c$$$                     i_topjet   = jhep
c$$$                  elseif(jmohep(1,jhep).eq.i_atop0) then
c$$$                     i_atopjet = jhep
c$$$                  elseif(jmohep(1,jhep).eq.i_part0) then
c$$$                     i_partjet = jhep
c$$$                  endif
c$$$               endif
c$$$            endif
            if(id.eq.5.or.id.eq.24) then
            if(min(sonofid(6,jhep),sonofid(-6,jhep)).lt.1d5) then
               if(idhep(jhep).eq.5) i_bfromtop = jhep
               if(idhep(jhep).eq.-5) i_abfromatop = jhep
               if(idhep(jhep).eq.24) i_wp = jhep
               if(idhep(jhep).eq.-24) i_wm = jhep
            endif
            endif
            if(id.ge.11.and.id.le.14) then
            if(min(sonofid(24,jhep),sonofid(-24,jhep)).lt.1d5) then
               if(idhep(jhep).eq.-11.or.idhep(jhep).eq.-13) i_lwp = jhep
               if(idhep(jhep).eq.11.or.idhep(jhep).eq.13) i_lwm = jhep
               if(idhep(jhep).eq.-12.or.idhep(jhep).eq.-14)i_nuwm = jhep
               if(idhep(jhep).eq.12.or.idhep(jhep).eq.14) i_nuwp = jhep
            endif
            endif
c for jets, using only final state particles excluding leptons
            if(isthep(jhep).eq.1.and.
     1           (abs(idhep(jhep)).lt.11.or.abs(idhep(jhep)).gt.16)) then
               IsForClustering(jhep) = .true.
            else
               IsForClustering(jhep) = .false.
            endif
         enddo
      endif


c$$$      if(whcprg.eq.'HERWIG'.and.
c$$$     1     abs(sqrt(massvec2(phep(1:4,i_top0)))-172).lt.3 .and.
c$$$     2     abs(sqrt(massvec2(phep(1:4,i_atop0)))-172).lt.3 ) then
c$$$c test that FS history was correctly recorded
c$$$         if(i_top0*i_atop0*i_part0*i_topjet*i_atopjet*i_partjet.eq.0.and.
c$$$     1        nup.eq.13) then
c$$$            write(*,*) 'did not find primary FS partons and jets'
c$$$c            call HWUEPR
c$$$            stop
c$$$         endif
c$$$c Build total 4-momentum from FS partons
c$$$         ptop0 = phep(1:4,i_top0)
c$$$         patop0 = phep(1:4,i_atop0)
c$$$         ppart0 = phep(1:4,i_part0)
c$$$         ptot0 = ptop0 + patop0 + ppart0
c$$$         call boost2reson4(ptot0,1,ptop0,ptop0)
c$$$         call boost2reson4(ptot0,1,patop0,patop0)
c$$$         call boost2reson4(ptot0,1,ppart0,ppart0)
c$$$         ptot0 = ptop0 + patop0 + ppart0
c$$$         
c$$$         ptopjet = phep(1:4,i_topjet)
c$$$         patopjet = phep(1:4,i_atopjet)
c$$$         ppartjet = phep(1:4,i_partjet)
c$$$         ptotjet = ptopjet + patopjet + ppartjet
c$$$         call boost2reson4(ptotjet,1,ptopjet,ptopjet)
c$$$         call boost2reson4(ptotjet,1,patopjet,patopjet)
c$$$         call boost2reson4(ptotjet,1,ppartjet,ppartjet)
c$$$         ptotjet = ptopjet + patopjet + ppartjet
c$$$c Compute energy increase due to a parton picking up mass in the shower
c$$$         part_de = deincrease(ppart0,ppartjet)
c$$$         top_de  = deincrease(ptop0,ptopjet)
c$$$         atop_de = deincrease(patop0,patopjet)
c$$$
c$$$         call filld('t_de',top_de+atop_de,dsig)
c$$$         call filld('part_de',part_de,dsig)
c$$$c first see if energy of hard system is conserved
c$$$c         write(*,*) ptot0(4)-ptotjet(4)
c$$$         if(abs(ptot0(4)-ptotjet(4))/abs(ptot0(4)).gt.1d-4)
c$$$     1        then
c$$$            write(*,*)
c$$$     1           'energy of hard system minus energy of jet system=',
c$$$     2           ptot0(4)-ptotjet(4)
c$$$         endif
c$$$c see if momenta are proportional
c$$$         rmomtop = sqrt((ptop0(1)**2+ptop0(2)**2+ptop0(3)**2)/
c$$$     1              (ptopjet(1)**2+ptopjet(2)**2+ptopjet(3)**2))
c$$$         rmomatop = sqrt((patop0(1)**2+patop0(2)**2+patop0(3)**2)/
c$$$     1              (patopjet(1)**2+patopjet(2)**2+patopjet(3)**2))
c$$$         rmomjet  = sqrt((ppart0(1)**2+ppart0(2)**2+ppart0(3)**2)/
c$$$     1              (ppartjet(1)**2+ppartjet(2)**2+ppartjet(3)**2))
c$$$         if(abs(rmomtop/rmomatop-1)+abs(rmomjet/rmomatop-1).gt.1d-4)
c$$$     1        then
c$$$c            write(*,*)
c$$$c     1           ' found configuration with different rescaling factors'
c$$$c     2         //' for parton jets'
c$$$c            write(*,*) ' top:   ',rmomtop,
c$$$c     1                 'atop:   ',rmomatop,
c$$$c     2                 ' jet:   ',rmomjet
c$$$         endif
c$$$c print parton mass
c$$$         parton_dm=sqrt(
c$$$     1    (ppartjet(4)**2-ppartjet(1)**2-ppartjet(2)**2-ppartjet(3)**2)
c$$$     1      - (ppart0(4)**2-ppart0(1)**2-ppart0(2)**2-ppart0(3)**2) )
c$$$c         write(*,*)  parton_dm
c$$$
c$$$c get the vectors in the lab frame again
c$$$         ptop0 = phep(1:4,i_top0)
c$$$         patop0 = phep(1:4,i_atop0)
c$$$         ppart0 = phep(1:4,i_part0)
c$$$
c$$$         if(sqrt(ppart0(1)**2+ppart0(2)**2).lt.20) then
c$$$            call filld('part_de_cut20',part_de,dsig)
c$$$         endif
c$$$
c$$$         if(sqrt(ppart0(1)**2+ppart0(2)**2).lt.40) then
c$$$            call filld('part_de_cut40',part_de,dsig)
c$$$         endif
c$$$
c$$$         ptopjet = phep(1:4,i_topjet)
c$$$         patopjet = phep(1:4,i_atopjet)
c$$$         ppartjet = phep(1:4,i_partjet)
c$$$
c$$$         mttb_ratio= sqrt(massvec2(ptop0+patop0)/
c$$$     1                    massvec2(ptopjet+patopjet))
c$$$
c$$$         ptt_ratio=sqrt((ptop0(1)**2+ptop0(2)**2)/
c$$$     1              (ptopjet(1)**2+ptopjet(2)**2))
c$$$
c$$$         pttb_ratio=sqrt((patop0(1)**2+patop0(2)**2)/
c$$$     1              (patopjet(1)**2+patopjet(2)**2))
c$$$
c$$$         mt_ratio  = sqrt(massvec2(ptop0)/massvec2(ptopjet))
c$$$         mtb_ratio = sqrt(massvec2(patop0)/massvec2(patopjet))
c$$$
c$$$         call filld('ttb_m_toj',mttb_ratio,dsig)
c$$$         call filld('t_pt_toj',ptt_ratio,dsig)
c$$$         call filld('tb_pt_toj',pttb_ratio,dsig)
c$$$
c$$$         call filld('t_m_toj',mt_ratio,dsig)
c$$$         call filld('tb_m_toj',mtb_ratio,dsig)
c$$$
c$$$c now ratios with respect to final tops rather than jets
c$$$         ptopjet = phep(1:4,i_top)
c$$$         patopjet = phep(1:4,i_atop)
c$$$
c$$$         mttb_ratio= sqrt(massvec2(ptop0+patop0)/
c$$$     1                    massvec2(ptopjet+patopjet))
c$$$
c$$$         ptt_ratio=sqrt((ptop0(1)**2+ptop0(2)**2)/
c$$$     1              (ptopjet(1)**2+ptopjet(2)**2))
c$$$
c$$$         call filld('ttb_m_tof',mttb_ratio,dsig)
c$$$         call filld('t_pt_tof',ptt_ratio,dsig)
c$$$
c$$$      endif


      inotfound = 0
      if(i_top.eq.0) then
         write(*,*) 'top not found'
         inotfound = inotfound + 1
      endif
      if(i_atop.eq.0) then
         write(*,*) 'antitop not found'
         inotfound = inotfound + 1
      endif
      if(i_wp.eq.0) then
         write(*,*) 'wp not found'
         inotfound = inotfound + 1
      endif
      if(i_wm.eq.0) then
         write(*,*) 'wm not found'
         inotfound = inotfound + 1
      endif
c      if(i_lwp.eq.0) then
c         write(*,*) 'lwp not found'
c         inotfound = inotfound + 1
c      endif
c      if(i_lwm.eq.0) then
c         write(*,*) 'lwm not found'
c         inotfound = inotfound + 1
c      endif
c      if(i_nuwp.eq.0) then
c         write(*,*) 'nuwp not found'
c         inotfound = inotfound + 1
c      endif
c      if(i_nuwm.eq.0) then
c         write(*,*) 'nuwm not found'
c         inotfound = inotfound + 1
c      endif
      if(i_bfromtop.eq.0) then
         write(*,*) 'b from top not found'
         inotfound = inotfound + 1
      endif
      if(i_abfromatop.eq.0) then
         write(*,*) 'bbar from tbar not found'
         inotfound = inotfound + 1
      endif

      if(inotfound.gt.0) then
         write(*,*) ' **** Anomalous Event ****'
         write(*,*) i_top,i_atop,i_wp,i_wm,i_lwp,i_lwm,
     1        i_nuwp,i_nuwm,i_bfromtop,i_abfromatop
         return
      endif
 
      if(whcprg.ne.'NLO'.and.whcprg.ne.'LHE') then
c Setup a flag:
c 1 for events with no production radiation in the LHE
c 2 for events with production radiation
c 0 otherwise
         if((phep(1,3)+phep(1,4))**2+(phep(2,3)+phep(2,4))**2.lt.1d-2)
     1        then
            iprodrad=1
c            if(scalup.gt.46) then
c               write(*,*) ' warning: scalup = ',scalup,
c     1              ' in radiation in decay'
c            endif
         else
            iprodrad=2
         endif
      else
         iprodrad = 0
      endif

      id1=idhep(1)
      id2=idhep(2)
      if(id1.eq.21) id1=0
      if(id2.eq.21) id2=0

c If there is a subprocess i in the powheg.input file,
c skip the analysis unless the subprocess matches.
      if(whcprg.eq.'LHE') then
         if(powheginput('#subprocess').eq.1) then
            if(id1.eq.0.and.id2.eq.0) then
               continue
            else
               return
            endif
         elseif(powheginput('#subprocess').eq.2) then
            if(id1.gt.0.and.id2.lt.0) then
               continue
            else
               return
            endif
         elseif(powheginput('#subprocess').eq.3) then
            if(id1.lt.0.and.id2.gt.0) then
               continue
            else
               return
            endif
         elseif(powheginput('#subprocess').eq.4) then
            if(id1.gt.0.and.id2.eq.0) then
               continue
            else
               return
            endif
         elseif(powheginput('#subprocess').eq.5) then
            if(id1.lt.0.and.id2.eq.0) then
               continue
            else
               return
            endif
         elseif(powheginput('#subprocess').eq.6) then
            if(id1.eq.0.and.id2.gt.0) then
               continue
            else
               return
            endif
         elseif(powheginput('#subprocess').eq.7) then
            if(id1.eq.0.and.id2.lt.0) then
               continue
            else
               return
            endif
         endif
      endif
               

      p_top=phep(1:4,i_top)
      p_atop=phep(1:4,i_atop)
      p_wp=phep(1:4,i_wp)
      p_wm=phep(1:4,i_wm)
      if(i_lwp.gt.0) p_lwp=phep(1:4,i_lwp)
      if(i_lwm.gt.0) p_lwm=phep(1:4,i_lwm)
      if(i_nuwp.gt.0) p_nuwp=phep(1:4,i_nuwp)
      if(i_nuwm.gt.0) p_nuwm=phep(1:4,i_nuwm)
      p_b=phep(1:4,i_bfromtop)
      p_bb=phep(1:4,i_abfromatop)

      if(masswindow.gt.0) then
         call getyetaptmass(p_top,y,eta,pt,mass)
         if(mass.lt.172-masswindow.or.mass.gt.172+masswindow) return
         call getyetaptmass(p_atop,y,eta,pt,mass)
         if(mass.lt.172-masswindow.or.mass.gt.172+masswindow) return
      endif

      if(i_lwm*i_lwp.ne.0.and.asyanal) then
         call doasyanal(p_top,p_atop,p_lwp,p_lwm,dsig)
      endif

      mjets = maxjets
      call buildjets(mjets,-1d0,j_kt,j_eta,j_rap,j_phi,j_p,jetvec,
     1     isForClustering)

      bhadfromtop = 0
      bhadfromatop = 0
      ptbhadfromtop = 0
      ptbhadfromatop = 0
      do j=1,nhep
         if(IsForClustering(j).and.isbhadron(idhep(j))) then
            if(binhadron(idhep(j)).eq.5) then
c Look for hardest (largest pt) hadron with a b quark content.
c Store in bhadfromtop, ptbhadfromtop
                if(bhadfromtop.ne.0) then
c                  write(*,*) ' a top with more than one b son'
                  call getyetaptmass(phep(1:4,j),y,eta,pt,mass)
                  if(pt.gt.ptbhadfromtop) then
                     bhadfromtop = j
                     ptbhadfromtop = pt
                  endif
               else
                  bhadfromtop = j
                  call getyetaptmass(phep(1:4,j),y,eta,pt,mass)
                  ptbhadfromtop = pt
               endif
            elseif(binhadron(idhep(j)).eq.-5) then
c same for bbar
               if(bhadfromatop.ne.0) then
c                  write(*,*) ' a top with more than one b son'
                  call getyetaptmass(phep(1:4,j),y,eta,pt,mass)
                  if(pt.gt.ptbhadfromatop) then
                     bhadfromatop = j
                     ptbhadfromatop = pt
                  endif
               else
                  bhadfromatop = j
                  call getyetaptmass(phep(1:4,j),y,eta,pt,mass)
                  ptbhadfromatop = pt
               endif
            endif
         endif
      enddo


      if(whcprg.eq.'NLO'.or.whcprg.eq.'LHE') then
         bhadfromtop = i_bfromtop
         bhadfromatop = i_abfromatop
      endif

      if(bhadfromtop.eq.0) then
         write(*,*) ' no b hadrons from top!'
c         goto 10
      endif

      if(bhadfromatop.eq.0) then
         write(*,*) ' no b hadrons from anti top!'
c         goto 10
      endif

c      i_bjet = in_jet(bhadfromtop,jetvec)
c      i_abjet = in_jet(bhadfromatop,jetvec)
      i_bjet  = jetvec(bhadfromtop)
      i_abjet = jetvec(bhadfromatop)

      pbhadtp = phep(1:4,bhadfromtop)
      pbhadtm = phep(1:4,bhadfromatop)

ccccccccccccccccccccccc

c     We have everything ready to fill histograms.
c     First, impose cuts by assigning the logical variables

c-------------
c     away from regions close to collinear bs
      cut2=.true.
      call getyetaptmass(p_b,y,eta,pt,mass)
      cut2=cut2.and.(pt.gt.cut2_ptb)
      call getyetaptmass(p_bb,y,eta,pt,mass)
      cut2=cut2.and.(pt.gt.cut2_ptb)
      call getyetaptmass(p_b+p_bb,y,eta,pt,mass)
      cut2=cut2.and.(mass.gt.cut2_mbb)

c-------------
c    Denner-like cuts
      cut3=.true.
      cut3=cut3.and.(i_bjet.gt.0).and.(i_abjet.gt.0).and.(i_bjet.
     $     ne.i_abjet)
      if(cut3) then
         if(j_kt(i_bjet).lt.cut3_ptbj.or.abs(j_eta(i_bjet)).gt.cut3_etabj)
     $        cut3=.false.
         if(j_kt(i_abjet).lt.cut3_ptbj.or.abs(j_eta(i_abjet)).gt.cut3_etabj)
     $        cut3=.false.

         if(i_lwp.gt.0) then
            call getyetaptmass(p_lwp,y,eta,pt,mass)
            if(abs(eta).gt.cut3_etal.or.pt.lt.cut3_ptl) cut3=.false.
         endif

         if(i_lwm.gt.0) then
            call getyetaptmass(p_lwm,y,eta,pt,mass)
            if(abs(eta).gt.cut3_etal.or.pt.lt.cut3_ptl) cut3=.false.
         endif
         
         ptmiss2 = 0
         if(i_nuwm.gt.0) then
            ptmiss2 = ptmiss2 + p_nuwm(1:2)
         endif
         if(i_nuwp.gt.0) then
            ptmiss2 = ptmiss2 + p_nuwp(1:2)
         endif
         ptmiss = sqrt(ptmiss2(1)**2+ptmiss2(2)**2)

         if(ptmiss.lt.cut3_ptmiss) cut3=.false.

      endif

ccccccccccccccccccccccccc
      
      njets20 = 0
      njets30 = 0
      njets40 = 0
      do j=1,mjets
         if(j_kt(j).gt.20) then
            njets20 = njets20 + 1
         endif
         if(j_kt(j).gt.30) then
            njets30 = njets30 + 1
         endif
         if(j_kt(j).gt.40) then
            njets40 = njets40 + 1
         endif
      enddo

      call fillplotcuts('Njets-pt10',dble(mjets),dsig,.true.,cut2,cut3)

      call fillplotcuts('Njets-pt20',dble(njets20),dsig,.true.,cut2,cut3)

      call fillplotcuts('Njets-pt30',dble(njets30),dsig,.true.,cut2,cut3)

      call fillplotcuts('Njets-pt40',dble(njets40),dsig,.true.,cut2,cut3)

c-----------
      call getyetaptmass(p_top,y,eta,pt,mass)
      if(nup.ge.13.and.sqrt(pup(1,13)**2+pup(2,13)**2).lt.10) then
          call fillplotcuts('t_pt_10cut',pt,dsig,.true.,cut2,cut3)
       endif
      if(nup.ge.13.and.sqrt(pup(1,13)**2+pup(2,13)**2).lt.20) then
         call fillplotcuts('t_pt_20cut',pt,dsig,.true.,cut2,cut3)
      endif
      if(nup.ge.13.and.sqrt(pup(1,13)**2+pup(2,13)**2).lt.40) then
         call fillplotcuts('t_pt_40cut',pt,dsig,.true.,cut2,cut3)
      endif
      if(nup.ge.13.and.sqrt(pup(1,13)**2+pup(2,13)**2).lt.60) then
         call fillplotcuts('t_pt_60cut',pt,dsig,.true.,cut2,cut3)
      endif
      if(nup.ge.13.and.sqrt(pup(1,13)**2+pup(2,13)**2).lt.80) then
         call fillplotcuts('t_pt_80cut',pt,dsig,.true.,cut2,cut3)
      endif
      if(nup.ge.13.and.sqrt(pup(1,13)**2+pup(2,13)**2).lt.120) then
         call fillplotcuts('t_pt_120cut',pt,dsig,.true.,cut2,cut3)
      endif
      call fillplotcuts('t_y',y,dsig,.true.,cut2,cut3)
      call fillplotcuts('t_eta',eta,dsig,.true.,cut2,cut3)
      call fillplotcuts('t_pt',pt,dsig,.true.,cut2,cut3)
      call fillplotcuts('t_m',mass,dsig,.true.,cut2,cut3)
      call fillplotcuts('t_zoom_m',mass,dsig,.true.,cut2,cut3)


      call getyetaptmass(p_atop,y,eta,pt,mass)
      call fillplotcuts('tb_y',y,dsig,.true.,cut2,cut3)
      call fillplotcuts('tb_eta',eta,dsig,.true.,cut2,cut3)
      call fillplotcuts('tb_pt',pt,dsig,.true.,cut2,cut3)
      call fillplotcuts('tb_m',mass,dsig,.true.,cut2,cut3)
      call fillplotcuts('tb_zoom_m',mass,dsig,.true.,cut2,cut3)

      call yetaptmassplot(p_b,dsig,'btop',suffix(1))
      if(cut2)call yetaptmassplot(p_b,dsig,'btop',suffix(2))
      if(cut3)call yetaptmassplot(p_b,dsig,'btop',suffix(3))

      call yetaptmassplot(p_bb,dsig,'bbtop',suffix(1))
      if(cut2)call yetaptmassplot(p_bb,dsig,'bbtop',suffix(2))
      if(cut3)call yetaptmassplot(p_bb,dsig,'bbtop',suffix(3))

      if(i_lwp.gt.0) then
         call yetaptmassplot(p_lwp,dsig,'lwp',suffix(1))
         if(cut2)call yetaptmassplot(p_lwp,dsig,'lwp',suffix(2))
         if(cut3)call yetaptmassplot(p_lwp,dsig,'lwp',suffix(3))
      endif

      if(i_lwm.gt.0) then
         call yetaptmassplot(p_lwm,dsig,'lwm',suffix(1))
         if(cut2)call yetaptmassplot(p_lwm,dsig,'lwm',suffix(2))
         if(cut3)call yetaptmassplot(p_lwm,dsig,'lwm',suffix(3))
      endif

      call yetaptmassplot(p_top+p_atop,dsig,'ttb',suffix(1))
      if(cut2)call yetaptmassplot(p_top+p_atop,dsig,'ttb',suffix(2))
      if(cut3)call yetaptmassplot(p_top+p_atop,dsig,'ttb',suffix(3))

      if(iprodrad.eq.1) then
         call yetaptmassplot(p_top+p_atop,dsig,'ttb-radMC',suffix(1))
         if(cut2)call yetaptmassplot(p_top+p_atop,dsig,'ttb-radMC',suffix(2))
         if(cut3)call yetaptmassplot(p_top+p_atop,dsig,'ttb-radMC',suffix(3))
      elseif(iprodrad.eq.2) then
         call yetaptmassplot(p_top+p_atop,dsig,'ttb-radPW',suffix(1))
         if(cut2)call yetaptmassplot(p_top+p_atop,dsig,'ttb-radPW',suffix(2))
         if(cut3)call yetaptmassplot(p_top+p_atop,dsig,'ttb-radPW',suffix(3))
      endif

      if(i_lwp*i_lwm.gt.0) then
         call getyetaptmass(p_lwp+p_lwm,y,eta,pt,mass)
         call fillplotcuts('m_lp_lm',mass,dsig,.true.,cut2,cut3)
      endif

      if(i_lwp*i_nuwp.gt.0) then
         call getyetaptmass(p_lwp+p_nuwp,y,eta,pt,mass)
         call fillplotcuts('mT_lp_MET',mass,dsig,.true.,cut2,cut3)
      endif

      if(i_lwm*i_nuwm.gt.0) then
         call getyetaptmass(p_lwm+p_nuwm,y,eta,pt,mass)
         call fillplotcuts('mT_lm_MET',mass,dsig,.true.,cut2,cut3)
      endif

c l+ b mass
      if(i_lwp.gt.0) then
         call getyetaptmass(p_lwp+pbhadtp,y,eta,pt,mass)
         call fillplotcuts('m_lp_b',mass,dsig,.true.,cut2,cut3)
c-----------
         if(i_bjet.ne.0) then
            call getyetaptmass(p_lwp+j_p(:,i_bjet),y,eta,pt,mass)
            call fillplotcuts('m_lp_jb',mass,dsig,.true.,cut2,cut3)
         endif
      endif

c-----------
c l- bb mass
      if(i_lwm.gt.0) then
         call getyetaptmass(p_lwm+pbhadtm,y,eta,pt,mass)
         call fillplotcuts('m_lm_bbar',mass,dsig,.true.,cut2,cut3)
c-----------
         if(i_abjet.ne.0) then
            call getyetaptmass(p_lwm+j_p(:,i_abjet),y,eta,pt,mass)
            call fillplotcuts('m_lm_jbbar',mass,dsig,.true.,cut2,cut3)
         endif
      endif



c-----------
c b W mass
      call getyetaptmass(p_wp+pbhadtp,y,eta,pt,mass)
      call fillplotcuts('m_wp_b',mass,dsig,.true.,cut2,cut3)

c-----------
c bb W- mass
      call getyetaptmass(p_wm+pbhadtm,y,eta,pt,mass)
      call fillplotcuts('m_wm_bb',mass,dsig,.true.,cut2,cut3)

c-----------
c b-jet W mass
      if(i_bjet.ne.0) then
         call getyetaptmass(p_wp+j_p(:,i_bjet),y,eta,pt,mass)
         call fillplotcuts('m_wp_bj',mass,dsig,.true.,cut2,cut3)
      endif

c-----------
c bb-jet W- mass
      if(i_abjet.ne.0) then
         call getyetaptmass(p_wm+j_p(:,i_abjet),y,eta,pt,mass)
         call fillplotcuts('m_wm_bbj',mass,dsig,.true.,cut2,cut3)
      endif
      
c b frag: p_top.p_b/(p_top.p_b_max)
      mtop=sqrt(p_top(4)**2-p_top(1)**2-p_top(2)**2-p_top(3)**2)
      mwp=sqrt(p_wp(4)**2-p_wp(1)**2-p_wp(2)**2-p_wp(3)**2)
      ppp=phep(1:4,bhadfromtop)
      pbhadfromtop=ppp
      mb=sqrt(abs(ppp(4)**2-ppp(1)**2-ppp(2)**2-ppp(3)**2))
      p_bmax=sqrt((mtop**2-(mb+mwp)**2)*(mtop**2-(mb-mwp)**2))/(2*mtop)
      e_bmax=sqrt(p_bmax**2+mb**2)
      xb=(p_top(4)*ppp(4)-p_top(1)*ppp(1)
     1     -p_top(2)*ppp(2)-p_top(3)*ppp(3))/(mtop*e_bmax)
      call fillplotcuts('bfrag',xb,dsig,.true.,cut2,cut3)
      if(ppp(1)**2+ppp(2)**2.gt.5d0**2) then
         call fillplotcuts('bfrag-cut5',xb,dsig,.true.,cut2,cut3)
      endif
      if(ppp(1)**2+ppp(2)**2.gt.15d0**2) then
         call fillplotcuts('bfrag-cut15',xb,dsig,.true.,cut2,cut3)
      endif
      
c w is the w momentum in the top frame
      call boost2reson4(p_top,1,p_wp,w)
c pb is the b momentum in the top frame
      call boost2reson4(p_top,1,pbhadfromtop,pb)
c cos theta b-top
      call fillplotcuts('costhbtop',dot3(p_top,pb)/(avec3(p_top)*avec3(pb)),
     1     dsig,.true.,cut2,cut3)
c transverse momentum of the b (in the top rest frame)
c wrt the w axis.
      ptb=sqrt( abs( (pb(1)**2+pb(2)**2+pb(3)**2)
     1     -(pb(1)*w(1)+pb(2)*w(2)+pb(3)*w(3))**2/
     1     (w(1)**2+w(2)**2+w(3)**2)))
      call fillplotcuts('bptdec',ptb,dsig,.true.,cut2,cut3)

c bbar frag: p_top.p_bb/(p_top.p_bb_max)
      mtb=sqrt(p_atop(4)**2-p_atop(1)**2-p_atop(2)**2-p_atop(3)**2)
      mwm=sqrt(p_wm(4)**2-p_wm(1)**2-p_wm(2)**2-p_wm(3)**2)
      ppp=phep(1:4,bhadfromatop)
      pbhadfromtop=ppp
      mbb=sqrt(abs(ppp(4)**2-ppp(1)**2-ppp(2)**2-ppp(3)**2))
      p_bbmax=sqrt((mtb**2-(mbb+mwm)**2)*(mtb**2-(mbb-mwm)**2))/(2*mtb)
      e_bbmax=sqrt(p_bbmax**2+mbb**2)
      xbb=(p_atop(4)*ppp(4)-p_atop(1)*ppp(1)
     1     -p_atop(2)*ppp(2)-p_atop(3)*ppp(3))/(mtb*e_bbmax)
      call fillplotcuts('bbfrag',xbb,dsig,.true.,cut2,cut3)
      if(ppp(1)**2+ppp(2)**2.gt.5d0**2) then
         call fillplotcuts('bfrag-cut5',xbb,dsig,.true.,cut2,cut3)
      endif
      if(ppp(1)**2+ppp(2)**2.gt.15d0**2) then
         call fillplotcuts('bfrag-cut15',xbb,dsig,.true.,cut2,cut3)
      endif

      call boost2reson4(p_atop,1,p_wm,w)
      call boost2reson4(p_atop,1,pbhadfromtop,pb)
c cos theta ab-atop
      call fillplotcuts('costhabatop',dot3(p_atop,pb)/(avec3(p_atop)*avec3(pb)),
     1     dsig,.true.,cut2,cut3)
      ptb=sqrt( abs( (pb(1)**2+pb(2)**2+pb(3)**2)
     1     -(pb(1)*w(1)+pb(2)*w(2)+pb(3)*w(3))**2/
     1     (w(1)**2+w(2)**2+w(3)**2)) )
      call fillplotcuts('bbptdec',ptb,dsig,.true.,cut2,cut3)

c checked up to here

c W momentum relative to its maximum in top rest frame
      ewp=(p_top(4)*p_wp(4)-p_top(1)*p_wp(1)
     1     -p_top(2)*p_wp(2)-p_top(3)*p_wp(3))/mtop
      pwp=sqrt(ewp**2-mwp**2)
      xw=pwp/p_bmax
      call fillplotcuts('wpmom',xw,dsig,.true.,cut2,cut3)

c W momentum relative to its maximum in top rest frame
      ewm=(p_atop(4)*p_wm(4)-p_atop(1)*p_wm(1)
     1     -p_atop(2)*p_wm(2)-p_atop(3)*p_wm(3))/mtb
      pwm=sqrt(ewm**2-mwm**2)
      xw=pwm/p_bbmax
      call fillplotcuts('wmmom',xw,dsig,.true.,cut2,cut3)

      if(i_lwp*i_lwm.gt.0) then
         call deltaplot(p_lwp,p_lwm,dsig,'lwp-lwm',suffix(1))
         if(cut2)call deltaplot(p_lwp,p_lwm,dsig,'lwp-lwm',suffix(2))
         if(cut3)call deltaplot(p_lwp,p_lwm,dsig,'lwp-lwm',suffix(3))

c theta1 and theta2 from Bernreuther
         call boost2reson4(p_top+p_atop,1,p_top,ptzmf)
         call boost2reson4(p_top+p_atop,1,p_lwp,plzmf)
         call boost2reson4(ptzmf,1,plzmf,w)
         cth1 = (w(1)*ptzmf(1)+w(2)*ptzmf(2)+w(3)*ptzmf(3))/
     1        sqrt((w(1)**2+w(2)**2+w(3)**2)
     2        *(ptzmf(1)**2+ptzmf(2)**2+ptzmf(3)**2))


         call boost2reson4(p_top+p_atop,1,p_atop,ptzmf)
         call boost2reson4(p_top+p_atop,1,p_lwm,plzmf)
         call boost2reson4(ptzmf,1,plzmf,w)
         cth2 = (w(1)*ptzmf(1)+w(2)*ptzmf(2)+w(3)*ptzmf(3))/
     1        sqrt((w(1)**2+w(2)**2+w(3)**2)
     2        *(ptzmf(1)**2+ptzmf(2)**2+ptzmf(3)**2))


         jcth1 = int((cth1+1) * 5) + 1
         if(jcth1.eq.0) jcth1=1
         if(jcth1.eq.11) jcth1=10
         call fillplotcuts("cth1cth2-"//digit(jcth1),cth2,dsig,.true.,cut2,cut3)


c Simulation of t tbar reconstruction
c Reconstruct a t tbar pair based upon the MC W's and the jets tagged as b jets.
c Require a tag cut on the B meson transverse momentum
         if(bhadfromtop.ne.0.or.bhadfromatop.ne.0) then
c     some realistic cuts on leptons         
            call getyetaptmass(p_lwp,y,eta,pt,mass)
            if(pt.lt.20.or.abs(y).gt.2.5d0) return
            call getyetaptmass(p_lwm,y,eta,pt,mass)
            if(pt.lt.20.or.abs(y).gt.2.5d0) return
c     cut on missing et
            call getyetaptmass((p_nuwp+p_nuwm),y,eta,pt,mass)
            if(pt.lt.20) return
            if(bhadfromtop.ne.0) then
c     cut on b jets
               i_bjet = jetvec(bhadfromtop)
               if(i_bjet.eq.0.or.j_kt(i_bjet).lt.30) i_bjet = 0
c     Cut on taggable b mesons
               call getyetaptmass(phep(1:4,bhadfromtop),y,eta,pt,mass)
               if(pt.lt.0) i_bjet = 0
            endif
            if(bhadfromatop.ne.0) then
c     cut on b jets
               i_abjet = jetvec(bhadfromatop)
               if(i_abjet.eq.0.or.j_kt(i_abjet).lt.30) i_abjet = 0
c     Cut on taggable b mesons
               call getyetaptmass
     1           (phep(1:4,bhadfromatop),y,eta,pt,mass)
               if(pt.lt.0) i_abjet = 0
            endif
        
         
            if(i_bjet.gt.0) then
               ptop(1:4)  = phep(1:4,i_wp)+j_p(1:4,i_bjet)
               call getyetaptmass
     1              (ptop,y,eta,pt,mass)
               call fillplotcuts('Rect-pt',pt,dsig/2,.true.,cut2,cut3)
            endif
            
            if(i_abjet.gt.0) then
               patop(1:4)  = phep(1:4,i_wm)+j_p(1:4,i_abjet)
               call getyetaptmass
     1              (patop,y,eta,pt,mass)
               call fillplotcuts('Rect-pt',pt,dsig/2,.true.,cut2,cut3)
            endif

         endif
      endif

c If W- decays hadronically analize jets.      
      if(lwm.le.0) then
         call dowjets(dsig)
      endif

      end

      subroutine dowjets(dsig)
      implicit none
      include 'hepevt.h'
      real *8 dsig
      integer  maxtracks,maxjets
      parameter (maxtracks=nmxhep,maxjets=nmxhep)
      integer mjets,jetvec(maxtracks)
      logical   isForClustering(maxtracks)
      real * 8 j_kt(maxjets),j_eta(maxjets),j_rap(maxjets),
     1     j_phi(maxjets),j_p(4,maxjets),ptot(4)
      integer itracks(maxtracks)
      integer j,m,lev,ntracks,ntracks1,id,k
      integer sonofid,sonofidn
      ntracks=0
      isForClustering = .false.
      do j = 1,nhep
         if(isthep(j).eq.1) then
            if(sonofid(-24,j).ne. 1 000 000) then
               isForClustering(j) = .true.
               ntracks=ntracks+1
            endif
ccccccccccccccccccccccc
c$$$c     !ER: manual fix - try 10 levels
c$$$            m=j
c$$$            do lev=1,10
c$$$               m=jmohep(1,m)
c$$$               if(idhep(m).eq.-24) then
c$$$                  isForClustering(j) = .true.
c$$$                  ntracks=ntracks+1
c$$$                  goto 111
c$$$               else
c$$$                  continue
c$$$               endif
c$$$            enddo
c$$$ 111        continue
cccccccccccccccccccccc
         endif
      enddo

      call sonofidbydaughters(-24,maxtracks,ntracks1,itracks)
      ptot = 0
      do j=1,ntracks1
         ptot = ptot + phep(1:4,itracks(j))
      enddo
      do j=1,nhep
         if(isForClustering(j)) then
            ptot = ptot - phep(1:4,j)
         endif
      enddo

      if(sum(abs(ptot)).gt.1d-6) then
         write(*,*) ' dowjets: not all W momenta are found'
         write(*,*) sum(abs(ptot))
         write(*,*) ntracks,ntracks1
         write(*,*) ' daughters of W without W mother:'
         do j=1,ntracks1
            id = itracks(j)
            if(.not.isforclustering(id)) then
               write(*,*) 'id =',id
            endif
         enddo
         write(*,*) ' with W mother but not W daughters:'
         do j=1,nhep
            if(isforclustering(j)) then
               do k=1,ntracks1
                  if(itracks(k).eq.j) exit
               enddo
               if(k.eq.ntracks1+1) then
                  write(*,*) 'id =',j
               endif
               if(j.eq.250) then
                  write(*,*)  sonofidN(-24,j)
               endif
            endif
         enddo
         call printhep
      endif

c 11 is e+e- kt
      mjets = 3
      call buildjets(mjets,11d0,j_kt,j_eta,j_rap,j_phi,j_p,jetvec,
     1     isForClustering)

c      print*, mjets,j_p(4,1),j_p(4,2),dsig


      if(mjets.ge.1) then
         call filld('w_j1-E',j_p(4,1),dsig)
      endif

      if(mjets.ge.2) then
         call filld('w_j2-E',j_p(4,2),dsig)
      endif

      if(mjets.ge.3) then
         call filld('w_j3-E',j_p(4,3),dsig)
      endif

      end



      function in_jet(i_part,jetvec)
      implicit none
      include 'hepevt.h'
      integer   maxtracks,maxjets
      parameter (maxtracks=nmxhep,maxjets=20)
      integer in_jet,jetvec(maxtracks),i_part
      integer j
      integer sonofhep
      external sonofhep
      do j=1,nhep
         if(jetvec(j).ne.0) then
            if(sonofhep(i_part,j).lt.1d5) then
               in_jet = jetvec(j)
               return
            endif
         endif
      enddo
      in_jet = 0
      end

      function prodvec2(vec1,vec2)
      implicit none
      real * 8 prodvec2,vec1(4),vec2(4)
      prodvec2=vec1(4)*vec2(4)-vec1(1)*vec2(1)
     1 -vec1(2)*vec2(2)-vec1(3)*vec2(3)
      end

      function massvec2(vec)
      implicit none
      real * 8 massvec2,vec(4)
      massvec2=vec(4)**2-vec(1)**2-vec(2)**2-vec(3)**2
      end

      subroutine getyetaptmass(p,y,eta,pt,mass)
      implicit none
      real * 8 p(4),y,eta,pt,mass,pv
      real *8 tiny
      parameter (tiny=1.d-5)
      y=0.5d0*log((p(4)+p(3))/(p(4)-p(3)))
      pt=sqrt(p(1)**2+p(2)**2)
      pv=sqrt(pt**2+p(3)**2)
      if(pt.lt.tiny)then
         eta=sign(1.d0,p(3))*1.d8
      else
         eta=0.5d0*log((pv+p(3))/(pv-p(3)))
      endif
      mass=sqrt(abs(p(4)**2-pv**2))
      end


      subroutine yetaptmassplot(p,dsig,prefix,suffix)
      implicit none
      real * 8 p(4),dsig
      character *(*) prefix,suffix
      real * 8 y,eta,pt,m
      call getyetaptmass(p,y,eta,pt,m)
      call filld(prefix//'_y'//suffix,y,dsig)
      call filld(prefix//'_eta'//suffix,eta,dsig)
      call filld(prefix//'_pt'//suffix,pt,dsig)
      call filld(prefix//'_m'//suffix,m,dsig)
      end
      
      subroutine fillplotcuts(plotname,x,dsig,cut1,cut2,cut3)
      implicit none
      real *8 x,dsig
      logical cut1,cut2,cut3
      character *(*) plotname
      character *5 suffix(3)
      common/csuffix/suffix
      if(cut1) call filld(plotname//suffix(1),x,dsig)
      if(cut2) call filld(plotname//suffix(2),x,dsig)
      if(cut3) call filld(plotname//suffix(3),x,dsig)
      end



      subroutine pwhgfinalopshist
      implicit none
      include 'pwhg_bookhist-new.h'
      integer  f_idx,b_idx,x_idx,ixx,jxx,j,k,l
      integer  indexhist
      real * 8 num,numerr,den,denerr

      f_idx=indexhist('dF-dpT')
      b_idx=indexhist('dB-dpT')
      x_idx=indexhist('dAFB-dpT')
      call get_afb_hist(f_idx,b_idx,x_idx)

      f_idx=indexhist('dF-dpT')
      b_idx=indexhist('dB-dpT')
      x_idx=indexhist('F-gt-pT')
      call integratehist(f_idx,x_idx,1)
      x_idx=indexhist('B-gt-pT')
      call integratehist(b_idx,x_idx,1)
      x_idx=indexhist('F-lt-pT')
      call integratehist(f_idx,x_idx,-1)
      x_idx=indexhist('B-lt-pT')
      call integratehist(b_idx,x_idx,-1)

      f_idx=indexhist('F-gt-pT')
      b_idx=indexhist('B-gt-pT')
      x_idx=indexhist('AFB-gt-pT')
      call get_afb_hist(f_idx,b_idx,x_idx)

      f_idx=indexhist('F-lt-pT')
      b_idx=indexhist('B-lt-pT')
      x_idx=indexhist('AFB-lt-pT')
      call get_afb_hist(f_idx,b_idx,x_idx)

      f_idx=indexhist('dF-dm_tt')
      b_idx=indexhist('dB-dm_tt')
      x_idx=indexhist('dAFB-dm_tt')
      call get_afb_hist(f_idx,b_idx,x_idx)

      f_idx=indexhist('dF-dm_tt')
      b_idx=indexhist('dB-dm_tt')
      x_idx=indexhist('F-gt-m_tt')
      call integratehist(f_idx,x_idx,1)
      x_idx=indexhist('B-gt-m_tt')
      call integratehist(b_idx,x_idx,1)
      x_idx=indexhist('F-lt-m_tt')
      call integratehist(f_idx,x_idx,-1)
      x_idx=indexhist('B-lt-m_tt')
      call integratehist(b_idx,x_idx,-1)

      f_idx=indexhist('F-gt-m_tt')
      b_idx=indexhist('B-gt-m_tt')
      x_idx=indexhist('AFB-gt-m_tt')
      call get_afb_hist(f_idx,b_idx,x_idx)

      f_idx=indexhist('F-lt-m_tt')
      b_idx=indexhist('B-lt-m_tt')
      x_idx=indexhist('AFB-lt-m_tt')
      call get_afb_hist(f_idx,b_idx,x_idx)

      end


      subroutine integratehist(integrand,integral,direction)
      implicit none
      include 'pwhg_bookhist-new.h'
      integer  integrand,integral,direction
      integer  indexhist,ixx,jxx
      external indexhist
      if(direction.eq.1) then
        do ixx=1,nbins(integrand)
          do jxx=ixx,nbins(integrand)
            yhistarr2(ixx,integral)=yhistarr2(ixx,integral)
     1         +yhistarr2(jxx,integrand)
     1         *(xhistarr(jxx+1,integrand)-xhistarr(jxx,integrand))
            errhistarr2(ixx,integral)=errhistarr2(ixx,integral)
     1         +(errhistarr2(jxx,integrand)
     1         *(xhistarr(jxx+1,integrand)-xhistarr(jxx,integrand)))**2
          enddo
          errhistarr2(ixx,integral)=sqrt(errhistarr2(ixx,integral))
        enddo
      else if(direction.eq.-1) then
        do ixx=1,nbins(integrand)
          do jxx=ixx,1,-1
            yhistarr2(ixx,integral)=yhistarr2(ixx,integral)
     1         +yhistarr2(jxx,integrand)
     1         *(xhistarr(jxx+1,integrand)-xhistarr(jxx,integrand))
            errhistarr2(ixx,integral)=errhistarr2(ixx,integral)
     1         +(errhistarr2(jxx,integrand)
     1         *(xhistarr(jxx+1,integrand)-xhistarr(jxx,integrand)))**2
          enddo
          errhistarr2(ixx,integral)=sqrt(errhistarr2(ixx,integral))
        enddo
      else
         write(*,*) 'subroutine integratehist: error!'
         write(*,*) '--------------------------------'
         write(*,*) 'Invalid direction specified for histogram given.'
         write(*,*) 'direction=1/-1 only - integral from lowest bin to'
         write(*,*) 'highest bin or highest bin to lowest bin.'
         call exit(-1)
      endif

      end


      subroutine get_afb_hist(f_idx,b_idx,afb_idx)
      implicit none
      include 'pwhg_bookhist-new.h'
      real*8   f,ef,b,eb
      integer  ixx,f_idx,b_idx,afb_idx
      
      do ixx=1,nbins(f_idx)
         f=yhistarr2(ixx,f_idx)
         ef=errhistarr2(ixx,f_idx)
         b=yhistarr2(ixx,b_idx)
         eb=errhistarr2(ixx,b_idx)
         if((f+b).gt.0d0) then         ! Guard against division by zero.
            yhistarr2(ixx,afb_idx)=(f-b)/(f+b)
            errhistarr2(ixx,afb_idx)=2*sqrt((f*ef)**2+(b*eb)**2)
     1                              /(f+b)**2
         else
            yhistarr2(ixx,afb_idx)=0d0
            errhistarr2(ixx,afb_idx)=0d0
         endif
      enddo

      end


      function islept(j)
      implicit none
      logical islept
      integer j
      if(abs(j).ge.11.and.abs(j).le.16) then
         islept = .true.
      else
         islept = .false.
      endif
      end

      function phepDot(p_A,p_B)
      implicit none
      real * 8  phepDot
      real * 8  p_A(4),p_B(4)
      phepDot=p_A(4)*p_B(4)-p_A(1)*p_B(1)
     1       -p_A(2)*p_B(2)-p_A(3)*p_B(3)
      end

c     calculate the separation in the lego plot between the two momenta
c     p1 and p2 in azi and pseudorapidity
      function rsepn_p(p1,p2)
      implicit none
      real * 8 pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      real * 8 rsepn_p,p1(0:3),p2(0:3)
      real * 8 eta1,phi1,eta2,phi2
      real * 8 delphi
      real * 8 pseudorapidity,azi
      external pseudorapidity,azi

      phi1 = azi(p1)   
      phi2 = azi(p2)
      eta1 = pseudorapidity(p1)
      eta2 = pseudorapidity(p2)

      delphi = abs(phi1-phi2)
      if (delphi.gt.pi) then
         delphi = 2*pi-delphi
      endif
      if (delphi.lt.0 .or. delphi.gt.pi) then
         print*,' problem in rsepn. delphi = ',delphi
      endif
      rsepn_p = sqrt( (eta1-eta2)**2 + delphi**2 )
      end

      function azi(p)
      implicit none
      real * 8 pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      real * 8 azi,p(0:3)
      azi = atan(p(2)/p(1))
      if (p(1).lt.0d0) then
         if (azi.gt.0d0) then               
            azi = azi - pi
         else
            azi = azi + pi
         endif
      endif    
      end

      function pseudorapidity(p)
      implicit none
      real * 8 p(0:3),pseudorapidity
      real * 8 mod, costh
      mod = sqrt(p(1)**2+p(2)**2+p(3)**2)
      costh = p(3)/mod
      pseudorapidity=0.5*log((1+costh)/(1-costh))
      end


      subroutine buildjets(mjets,palg,kt,eta,rap,phi,pjet,jetvechep,
     1                                               isForClustering)
c     arrays to reconstruct jets
      implicit  none
      include  'hepevt.h'
      integer   maxtracks,maxjets
      parameter (maxtracks=nmxhep,maxjets=nmxhep)
      integer   mjets,jetvechep(maxtracks)
      real * 8  kt(maxjets),eta(maxjets),rap(maxjets),
     1     phi(maxjets),pjet(4,maxjets)
      logical   isForClustering(maxtracks)
      real * 8  ptrack(4,maxtracks),pj(4,maxjets),ptot(4)
      integer   jetvec(maxtracks),itrackhep(maxtracks)
      integer   ntracks,njets
      integer   j,k,mu
      real * 8  r,palg,ptmin,pp,tmp
      integer sonofid
      external sonofid
C - Initialize arrays and counters for output jets
      kt = 0
      eta = 0
      rap = 0
      phi = 0
      pjet = 0
      jetvechep = 0

      ptrack = 0
      ntracks=0
      pj = 0
      jetvec = 0

C - Extract final state particles to feed to jet finder
      do j=1,nhep
         if(.not.isForClustering(j)) cycle
         if(ntracks.eq.maxtracks) then
            write(*,*) 'analyze: need to increase maxtracks!'
            write(*,*) 'ntracks: ',ntracks
            call exit(-1)
         endif
         ntracks=ntracks+1
         ptrack(:,ntracks) = phep(1:4,j)
         itrackhep(ntracks)=j
      enddo
      if (ntracks.eq.0) then
         mjets=0
         return
      endif
      if(palg.eq.11) then
c better to boost everything to the total CM of the tracks
         ptot = 0
c         print*, 'ntracks in buildjets for epem',ntracks
         do j=1,ntracks
            ptot = ptot + ptrack(:,j)
         enddo
         call boost2reson4(ptot,ntracks,ptrack,ptrack)
      endif
C --------------- C
C - Run FastJet - C
C --------------- C
C - R = 0.7   radius parameter
C - f = 0.75  overlapping fraction
      r     = 0.5d0
      ptmin = 0d0
      njets=mjets
      call fastjetppgenkt(ptrack,ntracks,r,palg,ptmin,pjet,njets,jetvec)
      mjets=min(mjets,njets)
      if(njets.eq.0) return
c check consistency
      do k=1,ntracks
         if(jetvec(k).gt.0) then
            do mu=1,4
               pj(mu,jetvec(k))=pj(mu,jetvec(k))+ptrack(mu,k)
            enddo
         endif
      enddo
      tmp=0
      do j=1,mjets
         do mu=1,4
            tmp=tmp+abs(pj(mu,j)-pjet(mu,j))
         enddo
      enddo
      if(tmp.gt.1d-4) then
         write(*,*) ' bug!'
      endif
C --------------------------------------------------------------------- C
C - Computing arrays of useful kinematics quantities for hardest jets - C
C --------------------------------------------------------------------- C
      do j=1,mjets
         kt(j)=sqrt(pjet(1,j)**2+pjet(2,j)**2)
         pp = sqrt(kt(j)**2+pjet(3,j)**2)
         eta(j)=0.5d0*log((pp+pjet(3,j))/(pp-pjet(3,j)))
         rap(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         phi(j)=atan2(pjet(2,j),pjet(1,j))
      enddo
      jetvechep = 0
      do j=1,ntracks
         jetvechep(itrackhep(j))=jetvec(j)
      enddo
      end

      function sonofid(m,k)
c if k'th particle in hep common block
c is son of a particle with idhep=m returns
c how far back (along the jmohep sequence) the ancestor is.
c It looks back for no more than ngenerations levels.
c In case of failure it returns 1 000 000.
      implicit none
      integer, intent(in):: m,k
      integer sonofid,sonofid0
c      print*, 'sonofid ',m,k
      sonofid = sonofid0(m,k,0)
      end


      function sonofidn(m,k)
c if k'th particle in hep common block
c is son of a particle with idhep=m returns
c how far back (along the jmohep sequence) the ancestor is.
c It looks back for no more than ngenerations levels.
c In case of failure it returns 1 000 000.
      implicit none
      integer, intent(in):: m,k
      integer sonofidn,sonofidn0
c      print*, 'sonofid ',m,k
      sonofidn = sonofidn0(m,k,0)
      end

      subroutine sonofidbydaughters(id,max,narr,arr)
c find all sons of last particle with given id, put them in arr,
c narr is their number
      implicit none
      integer id,max,narr,arr(max)
      include  'hepevt.h'
      integer jhep,jid
      jid=-1
      do jhep=1,nhep
         if(idhep(jhep).eq.id) then
            jid = jhep
         endif
      enddo
      if(jid.eq.-1) then
         write(*,*) ' sonofidbydaughters: warning, id ',id,' not found'
         narr = 0
         return
      endif
      call sonofindbydaughters(jid,max,narr,arr)
      end

      subroutine sonofindbydaughters(ind,max,narr,arr)
c find all sons of last particle with given index, put them in arr,
c narr is their number
      implicit none
      integer ind,max,narr,arr(max)
      narr=0
      call sonofindbydaughters0(ind,max,narr,arr)
      end

      recursive subroutine sonofindbydaughters0(ind,max,narr,arr)
c find all sons of last particle with given index, put them in arr,
c narr is their number
      implicit none
      integer ind,max,narr,arr(max)
      include  'hepevt.h'
      integer jhep,j
      if(isthep(ind).eq.1) then
         do j=1,narr
            if(arr(j).eq.ind) return
         enddo
         if(narr.eq.max) then
            write(*,*)
     1           ' sonofindbydaughters: too many sons! increase max'
         else
            narr=narr+1
            arr(narr) = ind
         endif
      else
         if(jdahep(2,ind).ge.jdahep(1,ind)) then
            do jhep=jdahep(1,ind),jdahep(2,ind)
               call sonofindbydaughters0(jhep,max,narr,arr)
            enddo
         elseif(jdahep(1,ind).gt.1) then
            call sonofindbydaughters0(jdahep(1,ind),max,narr,arr)
         endif
      endif
      end

      recursive function sonofid0(m,k,level) result(result)
      implicit none
      integer, intent(in):: m,k,level
      integer result
      include  'hepevt.h'
      integer k1,k2,r1,r2
      integer ngenerations
      common/cngenerations/ngenerations
c      print*, 'sonofid0 ',k
      if(level.gt.ngenerations.or.k.eq.0) then
         result = 1000000
         return
      endif
      if(idhep(k).eq.m) then
         result = level
         return
      endif
      k1 = jmohep(1,k)
      k2 = jmohep(2,k)
      r1 = sonofid0(m,k1,level+1)
      r2 = sonofid0(m,k2,level+1)
      result = min(r1,r2)
      end


      recursive function sonofidn0(m,k,level) result(result)
      implicit none
      integer, intent(in):: m,k,level
      integer result
      include  'hepevt.h'
      integer k1,k2,r1,r2
      integer ngenerations
      common/cngenerations/ngenerations
c      print*, 'sonofid0 ',k
      write(*,*) k
      if(level.gt.ngenerations.or.k.eq.0) then
         result = 1000000
         write(*,*) ' return ',result
         return
      endif
      if(idhep(k).eq.m) then
         result = level
         write(*,*) ' return ',level
         return
      endif
      k1 = jmohep(1,k)
      k2 = jmohep(2,k)
      r1 = sonofidn0(m,k1,level+1)
      r2 = sonofidn0(m,k2,level+1)
      result = min(r1,r2)
      end

      function sonofhep(m,k)
      implicit none
      integer, intent(in):: m,k
      integer sonofhep,sonofhep0
      sonofhep = sonofhep0(m,k,0)
      end

      recursive function sonofhep0(m,k,level) result(result)
      implicit none
      integer, intent(in):: m,k,level
      integer result
      include  'hepevt.h'
      integer k1,k2,r1,r2
      integer ngenerations
      common/cngenerations/ngenerations
      if(level.gt.ngenerations) then
         result = 1000000
         return
      endif
      if(k.eq.m) then
         result = level
         return
      endif
      k1 = jmohep(1,k)
      k2 = jmohep(2,k)
      r1 = sonofhep0(m,k1,level+1)
      r2 = sonofhep0(m,k2,level+1)
      result = min(r1,r2)
      end

      subroutine boost2reson4(pres,nm,pin,pout)
      implicit none
      integer nm
      real * 8 pres(4),pin(4,nm),pout(4,nm)
      real * 8 vec(3),beta
      beta=sqrt(pres(1)**2+pres(2)**2+pres(3)**2)/pres(4)
      vec(1)=pres(1)/(beta*pres(4))
      vec(2)=pres(2)/(beta*pres(4))
      vec(3)=pres(3)/(beta*pres(4))
      call mboost4(nm,vec,-beta,pin,pout)
      end


      function isbhadron(idhep)
      implicit none
      logical isbhadron
      integer idhep
      integer idigit
c all b hadrons have a 5 either a third (mesons) or fourth (barions) digit
      if(abs(idhep).eq.5.or.idigit(3,idhep).eq.5
     1     .or.idigit(4,idhep).eq.5) then
         isbhadron = .true.
      else
         isbhadron = .false.
      endif
      end

      function binhadron(idhep)
      implicit none
      integer binhadron
      integer idhep
      integer idigit
c all b hadrons have a 5 either a third (mesons) or fourth (barions) digit
      if(abs(idhep).eq.5) then
         binhadron = idhep
      elseif(idigit(4,idhep).eq.5) then
         binhadron = sign(5,idhep)
      elseif(idigit(4,idhep).eq.0.and.idigit(3,idhep).eq.5
c This line is to avoid to count b bbar resonances as having definite flavour
     1        .and.idigit(2,idhep).ne.5 ) then
         binhadron = - sign(5,idhep)
      else
         binhadron = 0
      endif
      end

      function idigit(ipos,inum)
      implicit none
      integer idigit,ipos,inum
      if(ipos.eq.0) then
         write(*,*) ' error: idigit(ipos.inum), ipos<=0!'
         call exit(-1)
      endif
      idigit = int(mod(abs(inum),10**ipos)/10**(ipos-1))
      end
      
      subroutine mboost4(m,vec,beta,vin,vout)
c     boosts the m vectors vin(4,m) into the vectors vout(4,m) (that can
c     be the same) in the direction of vec(3) (|vec|=1) with velocity
c     beta.  Lorents convention: (t,x,y,z).
      implicit none
      integer m
      real * 8 vec(3),beta,vin(4,m),vout(4,m)
      real * 8 betav,gamma
      real * 8 vdotb
      integer ipart,idim
      gamma=1/sqrt(1-beta**2)
      do ipart=1,m
         vdotb=vin(1,ipart)*vec(1)
     #         +vin(2,ipart)*vec(2)+vin(3,ipart)*vec(3)
         do idim=1,3
            vout(idim,ipart)=vin(idim,ipart)
     #           +vec(idim)*((gamma-1)*vdotb
     #           +gamma*beta*vin(4,ipart))
         enddo
         vout(4,ipart)=gamma*(vin(4,ipart)+vdotb*beta)
      enddo
      end

      subroutine getdydetadphidr(p1,p2,dy,deta,dphi,dr)
      implicit none
      include 'pwhg_math.h' 
      real * 8 p1(*),p2(*),dy,deta,dphi,dr
      real * 8 y1,eta1,pt1,mass1,phi1
      real * 8 y2,eta2,pt2,mass2,phi2
      call getyetaptmass(p1,y1,eta1,pt1,mass1)
      call getyetaptmass(p2,y2,eta2,pt2,mass2)
      dy=y1-y2
      deta=eta1-eta2
      phi1=atan2(p1(1),p1(2))
      phi2=atan2(p2(1),p2(2))
      dphi=abs(phi1-phi2)
      dphi=min(dphi,2d0*pi-dphi)
      dr=sqrt(deta**2+dphi**2)
      end

      subroutine deltaplot(p1,p2,dsig,prefix,postfix)
      implicit none
      real * 8 p1(4),p2(4),dsig
      character *(*) prefix,postfix
      real * 8 dy,deta,delphi,dr
      call getdydetadphidr(p1,p2,dy,deta,delphi,dr)
      call filld(prefix//'-dy'//postfix,dy,dsig)
      call filld(prefix//'-deta'//postfix,deta,dsig)
      call filld(prefix//'-delphi'//postfix,delphi,dsig)
      call filld(prefix//'-dr'//postfix,dr,dsig)
      end


      function deincrease(p1,p2)
      implicit none
      real * 8 deincrease,p1(4),p2(4)
      real * 8 m1sq,m2sq,p1sq,massvec2
      m1sq = massvec2(p1)
      m2sq = massvec2(p2)
      p1sq = p1(1)**2+p1(2)**2+p1(3)**2
      deincrease = sqrt(m2sq+p1sq)-sqrt(m1sq+p1sq)
      end

      subroutine doasyanal(p_top,p_atop,p_lwp,p_lwm,dsig)
      implicit none
      real * 8 p_top(4),p_atop(4),p_lwp(4),p_lwm(4),dsig
      real * 8 ptot(4),ptop(4),patop(4),plwp(4),plwm(4)
      real * 8 costh1,costh2
      real * 8 dot3,avec3
      external dot3,avec3
      ptot=p_top+p_atop
      call boost2reson4(ptot,1,p_top,ptop)
      call boost2reson4(ptot,1,p_atop,patop)

      call boost2reson4(ptot,1,p_lwp,plwp)
      call boost2reson4(ptop,1,plwp,plwp)

      call boost2reson4(ptot,1,p_lwm,plwm)
      call boost2reson4(patop,1,plwm,plwm)

      costh1 = dot3(ptop,plwp)/(avec3(ptop)*avec3(plwp))
      costh2 = dot3(patop,plwm)/(avec3(patop)*avec3(plwm))

      call filld("asycoef",0.5d0,-9*dsig*costh1*costh2)
      call filld("asycoef",1.5d0,dsig)

      end


      function dot3(p1,p2)
      implicit none
      real * 8 p1(3),p2(3),dot3
      dot3 = p1(1)*p2(1) + p1(2)*p2(2) + p1(3)*p2(3)
      end

      function avec3(p)
      implicit none
      real * 8 p(3),avec3
      avec3 = sqrt( p(1)**2 + p(2)**2 + p(3)**2 )
      end

      subroutine printhep
      implicit none
      include 'hepevt.h'
      integer j,k
      write(*,101)
      do j=1,nhep
         write(*,100)j,isthep(j),idhep(j),jmohep(1,j),
     1        jmohep(2,j),jdahep(1,j),jdahep(2,j), (phep(k,j),k=1,5)
      enddo
 100  format(i4,    2x, i5,2x,   i5,2x, i4,1x,   i4,2x,   i4,1x,    i4,
     1     2x,5(d10.4,1x))
 101  format('ihep',2x,'ist',4x,'id',5x,'mo1',2x,'mo2',3x,'da1',2x,'da2'
     1     ,3x,'moms')
      end

