C----------------------------------------------------------------------------
C     This analysis file is largely inspired by the ATLAS paper 1111.2690
C     Modified and last updated by Johannes Scheller, August 2018
C----------------------------------------------------------------------------
      subroutine init_hist_lep
      implicit none
      include  'LesHouches.h'
      include 'pwhg_math.h'
      character * 1 cnum(0:9)
      data cnum/'0','1','2','3','4','5','6','7','8','9'/
      character * 11 pr
      character * 6 suffix 
      common/pwhgprocess/pr
      real * 8 dy,dpt,dpt_l,dr,dptzoom,dM,dpt3
      integer j,i,jetcut

      call inihists

      pr='VBFWZ'
      dy=0.2d0
      dpt=20d0
      dpt_l=10d0
      dM=2d0
      dptzoom=5d0
      dpt3=1d0
      
      call bookupeqbins(pr//'-tot',1d0,0d0,1d0)
      call bookupeqbins(pr//'-PTj1',dpt,0d0,800d0)
      call bookupeqbins(pr//'-PTj2',dpt,0d0,600d0)
      call bookupeqbins(pr//'-Yj1',dy,-4.5d0,4.5d0)
      call bookupeqbins(pr//'-Yj2',dy,-4.5d0,4.5d0)
      call bookupeqbins(pr//'-PTWl1',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTWl2',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTW',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTZl1',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTZl2',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTZ',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTWZ',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTl_hardest',dpt,0d0,800d0)
      call bookupeqbins(pr//'-YWl1',dy,-2.5d0,2.50d0)
      call bookupeqbins(pr//'-YWl2',dy,-2.5d0,2.50d0)
      call bookupeqbins(pr//'-YZl1',dy,-2.5d0,2.50d0)
      call bookupeqbins(pr//'-YZl2',dy,-2.5d0,2.50d0)
      call bookupeqbins(pr//'-M4l',2d0*dpt,40d0,2000d0)
      call bookupeqbins(pr//'-MWinv',dM,50d0,150d0)
      call bookupeqbins(pr//'-MZinv',dM,50d0,150d0)
      call bookupeqbins(pr//'-Mj1j2',3d0*dpt,0d0,3500d0)
      call bookupeqbins(pr//'-phij1j2',0.157075d0,0d0,3.1415d0)
      call bookupeqbins(pr//'-phi_WZ',0.157075d0,0d0,3.1415d0)
      call bookupeqbins(pr//'-m_T_WZ',dpt,0d0,1000d0)
      call bookupeqbins(pr//'-m3l',2d0*dpt,0d0,2000d0)      
      call bookupeqbins(pr//'-sum_p_T_3l',2*dpt_l,0d0,1000d0)      
      call bookupeqbins(pr//'-yj1j2',dy,-6d0,6d0)
      call bookupeqbins(pr//'-zj3',0.05d0,-4.5d0,4.5d0)
      call bookupeqbins(pr//'-x*j3',0.05d0,-4.5d0,4.5d0)
      call bookupeqbins(pr//'-ptj3',dptzoom,0d0,200d0)
      call bookupeqbins(pr//'-ptj3_zoom',dpt3,0d0,50d0)
C     loop over two sets of jet cuts for the third jet (10 and 20 GeV) 
      do jetcut=1,2
         if (jetcut == 1) then 
            suffix = '-ptj10'
         else
            suffix = '-ptj20'
         endif
         call bookupeqbins(pr//'Yj3'//suffix,dy,-4.5d0,4.5d0)
         call bookupeqbins(pr//'Y*j3'//suffix,dy,-4.5d0,4.5d0)
      enddo
c     Integrated cs w/ central jet veto
      pr='VBFWZ-CJV'
      call bookupeqbins(pr//'-tot',1d0,0d0,1d0)
  
      
      end
C----------------------------------------------------------------------------     
      subroutine analysis_lep(dsig0)
      implicit none
      real * 8 dsig0
      include 'hepevt.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h' 
      include 'pwhg_rad.h' 
      include 'pwhg_flg.h'
      include 'LesHouches.h'
      include 'pwhg_weights.h'
      include 'PhysPars.h'
      integer nweights
      integer, parameter :: dsigdim = 10
      real * 8 dsig(dsigdim),one7(7)
      data one7/7*1d0/
      character * 11 pr
      common/pwhgprocess/pr
c     we need to tell to this analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
c      data WHCPRG/'NLO   '/
      integer maxjet 
      parameter (maxjet=2048)
      real * 8  ktj(maxjet),etaj(maxjet),rapj(maxjet),phi(maxjet), 
     1    phij(maxjet),pj(4,maxjet),rr,rjl,ptrel(4),pjet_in(4,maxjet) 
      character * 1 cnum(0:9)
      data cnum/'0','1','2','3','4','5','6','7','8','9'/
      real * 8 p_W(4),p_Wl2(4),p_Wl1(4),P_Z(4),p_Zl1(4),p_Zl2(4)
      real * 8 y_Wl2,eta_Wl2,pt_Wl2,y_Zl2,eta_Zl2,pt_Zl2
      real * 8 y_Wl1,eta_Wl1,pt_Wl1,y_Zl1,eta_Zl1,pt_Zl1
      real * 8 y,eta,pt,m,mll,mass_jets,psum_jets(4),phijj
      real * 8 etamumax,etaemax
      real * 8 dy,deta,delphi,dr,yijs(4),ptmin,ht,deltajets,deltanjets
      real * 8 drllmin, zj3, xstarj3, drllmininc, rjlinc
      real * 8 rapj_max, rapjj_min, mjj_min,mz_min,mz_max, kt_tag_min
      real * 8 rapj_in(maxjet), etaj_in(maxjet), ktj_in(maxjet)
      real * 8 mWinv, mZinv, m4l, ptmp(4), ystar,mj1j2,invmass, fphi,ptj3     
      real * 8 powheginput,dotp,pt_veto,ptlmin,rapl_max,ptj3min
      real * 8 pTW, pTZ, ptwz, pTl_hard, phill,philltmp1,philltmp2
      logical passcuts_cjv
      real * 8 pt_v1, pt_v2 
      integer iveto1, iveto2, nveto
      external powheginput,dotp
      integer j,k,i,jj,mjets,jetcut,ihep,njets
      integer hepw1,hepw2,hepz1,hepz2 !HERWIG
      logical rap_sign, rap_gap, rap_veto
      character * 6 suffix 
      logical init,write_cuts
      logical cut1,cut2,cut3
      real * 8 ptl_min_1,kt_tag_min2,mz_diff,eta_CMS_max
      real * 8 pTWl_min,mjj_min2,kt_tag_min3,pTZl1_min
      real * 8 mz_min3,m3l_min,pTmiss_min,rapj_max3,rjl3,m3l
      real * 8 eta3l,Z_PDG
      real * 8 ETW,ETZ,mTWZ,pT3l,phiwz,ptmiss
      real * 8 pobs(4)
      logical comesfromid,comesfrom !HERWIG
      external comesfromid,comesfrom !HERWIG
          
      data init/.true./
      save init
      write_cuts=.false.
      
      if(init) then
         write_cuts=.true.
         if(weights_num.eq.0) then
            call setupmulti(1)
         else
            call setupmulti(weights_num)
         endif
         Z_PDG=powheginput('zmass')
         init=.false.
      endif

      

      dsig=0
      if(weights_num.eq.0) then
         dsig(1)=dsig0
         nweights=1
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
          nweights=weights_num
      endif
      

      if(sum(abs(dsig)).eq.0) return

      p_W = 0d0 
      p_Wl1 = 0d0 
      p_Wl2 = 0d0 
      P_Z = 0d0 
      p_Zl1 = 0d0 
      p_Zl2 = 0d0
      

C     select Z bosons 
      if(WHCPRG.eq.'NLO') then
         p_W = phep(1:4,3)+phep(1:4,4)
         p_Wl1 = phep(1:4,3) !neutrino
         p_Wl2 = phep(1:4,4) !lepton
         P_Z = phep(1:4,5)+phep(1:4,6)
         p_Zl1 = phep(1:4,5)
         p_Zl2 = phep(1:4,6)
      else
C     select neutrinos, elctrons/positron and muons
         do ihep=1,nhep
            if(isthep(ihep).eq.1.and.
     1           ((abs(idhep(ihep)).eq.11).or.
     1            (abs(idhep(ihep)).eq.13))) then ! final state e oder mu
               if(comesfromid(24,ihep)) then ! comes from W+
                  p_Wl2=phep(1:4,ihep)
                  hepw2=ihep               
               elseif(comesfromid(-24,ihep)) then ! comes from W- (never)
                  p_Wl2=phep(1:4,ihep)
                  hepw2=ihep
               endif
            endif
            if(isthep(ihep).eq.1.and.
     1           ((abs(idhep(ihep)).eq.12).or.
     1            (abs(idhep(ihep)).eq.14))) then ! final state nu
               if(comesfromid(24,ihep)) then ! see above
                  p_Wl1=phep(1:4,ihep)
                  hepw1=ihep
               elseif(comesfromid(-24,ihep)) then ! see above
                  p_Wl1=phep(1:4,ihep)
                  hepw1=ihep
               endif
            endif
            if(isthep(ihep).eq.1.and.
     1           ((idhep(ihep).eq.11).or.
     1           (idhep(ihep).eq.13))) then ! final state e- oder mu-
               if(comesfromid(23,ihep)) then ! comes from Z
                  p_Zl2=phep(1:4,ihep)
                  hepz2=ihep
               elseif(comesfromid(-23,ihep)) then ! comes from Z (never?!)
                  p_Zl2=phep(1:4,ihep)
                  hepz2=ihep
               endif
            endif
            if(isthep(ihep).eq.1.and.
     1           ((idhep(ihep).eq.-11).or.
     1           (idhep(ihep).eq.-13))) then ! final state e+ oder mu+
               if(comesfromid(23,ihep)) then ! s.o
                  p_Zl1=phep(1:4,ihep)
                  hepz1=ihep
               elseif(comesfromid(-23,ihep)) then ! s.o.
                  p_Zl1=phep(1:4,ihep)
                  hepz1=ihep
               endif
            endif
         enddo
         do ihep=1,nhep
            if(abs(idhep(ihep)).eq.24.and. ! Is W
     1           comesfrom(ihep,hepw1).and.
     1           comesfrom(ihep,hepw2)) then
              p_W=phep(1:4,ihep)                
            endif
            if(abs(idhep(ihep)).eq.23.and. ! Is Z
     1           comesfrom(ihep,hepz1).and.
     1           comesfrom(ihep,hepz2)) then
              p_Z=phep(1:4,ihep)                
            endif
         enddo
      endif
      if (all(p_W == 0d0).and.all(P_Z == 0d0)) then 
         write(*,*) 'Did not find bosons'
      endif
      if (all(p_Wl2 == 0d0)) then 
         write(*,*) 'Did not find lepton from W'
      endif
      if (all(p_Wl1 == 0d0)) then 
         write(*,*) 'Did not find neutrino from W'
      endif
      if (all(p_Zl2 == 0d0)) then 
         write(*,*) 'Did not find l- from Z'
      endif
      if (all(p_Zl1 == 0d0)) then 
         write(*,*) 'Did not find l+ from Z'
      endif

C     ---------------------------------------------------------------
C     Cut parameters
C     ---------------------------------------------------------------
c Jet algo parameters
      rr = 0.4d0 !Cone radius for anti-kt jet algorithm x
      ptmin = 0d0 !Minimum jet pt for anti-kt algorithm x

      kt_tag_min = 30d0 !25d0 !Require a minimum jet pt for two tagging jets x
      rapl_max = 2.5d0 !2.4d0 ! Maximium absolute lepton rapidity x
      ptlmin = 15d0 ! 25d0 ! Minimum charged-lepton pt x
      mz_min = 66d0 !66d0 !Mass cut for same-type charged lepton pair x
      mz_max = 116d0 !116d0 !Mass cut for same-type charged lepton pair x
      rap_gap = .true. !Jets separated by rapjj_min and leptons within gap x
      drllmin = 0.3 ! Require separation between same-type charged leptons x
      rapj_max = 4.5d0 !Maximal jet rapidity x
      rjl = 0.3d0 !Require separation between leptons and jets x
      rap_sign = .true. !Jets in opposite hemispheres x
      rap_gap = .true. !Jets separated by rapjj_min and leptons within gap x
      mjj_min = 500d0 !Require large invariant mass of tagging jets x
      rapjj_min = 2.5d0 !Require a large rapidity spearation between jets x      

c Third jet cuts
      ptj3min=10d0

C     CJV cuts 
      pt_veto = 20d0 ! x
      rap_veto = .true. ! x
      


C     ---------------------------------------------------------------
C     ---------------------------------------------------------------
      if(write_cuts) then
         write(*,*) '********************************************'
         write(*,*) '********************************************'
         write(*,*) '                ANALYSIS CUTS               '
         write(*,*) '********************************************'
         write(*,*) '********************************************'
         write(*,*) ''
         write(*,*) 'Jet Algorithm parameters:'
         write(*,*) 'jet ptmin = ',ptmin
         write(*,*) 'Rjj_min = ',rr
         write(*,*) ''
         write(*,*) 'VBF Cuts:'         
         write(*,*) 'rapl_max   = ',rapl_max
         write(*,*) 'tag jets pt_tag_min = ',kt_tag_min
         write(*,*) 'ptl_min    = ',ptlmin
         write(*,*) 'mz_min    = ',mz_min
         write(*,*) 'mz_max    = ',mz_max
         write(*,*) 'rap_gap  = ',rap_gap
         write(*,*) 'rap_sign  = ',rap_sign
         write(*,*) 'delta R_ll min  = ',drllmin
         write(*,*) 'rapj_max  = ',rapj_max
         write(*,*) 'Rjl_min = ',rjl
         write(*,*) 'mjj_min = ',mjj_min
         write(*,*) 'rapjj_min = ',rapjj_min
         write(*,*) 'Cuts on third jet (only for 3rd jet diagrams):'
         write(*,*) 'pt_j3 min = ',ptj3min
         write(*,*) ''
         write(*,*) 'extra CJV settings'
         write(*,*) 'pt_veto = ',pt_veto
         write(*,*) 'rap_veto = ',rap_veto
         write(*,*) ''
         write(*,*) '*******************************************'
         write(*,*) '*******************************************'
      endif
      
      
C     -- build jets in anti-kt algorithm 
      call buildjets(1,rr,ptmin,mjets,ktj,etaj,rapj,phij,ptrel,pj,yijs)
      if(mjets.lt.2) return
      if(ktj(1).lt.kt_tag_min.or.ktj(2).lt.kt_tag_min) return

C     -- select only jets in central rapidity and with pt_min 20 or 30 
C     + keep only jets isolated from electron and positron 
      call getyetaptmass(p_Wl2,y_Wl2,eta_Wl2,pt_Wl2,m)     
      call getyetaptmass(p_Wl1,y_Wl1,eta_Wl1,pt_Wl1,m)     
      call getyetaptmass(p_Zl2,y_Zl2,eta_Zl2,pt_Zl2,m)     
      call getyetaptmass(p_Zl1,y_Zl1,eta_Zl1,pt_Zl1,m)
   
C     Cut on lepton pt and eta
c     (no cut on neutrino)
      if(abs(eta_Wl2).gt.rapl_max) return
      if(abs(eta_Zl1).gt.rapl_max) return
      if(abs(eta_Zl2).gt.rapl_max) return
c     (no cut on neutrino)
      if(pt_Wl2.lt.ptlmin) return
      if(pt_Zl1.lt.ptlmin) return
      if(pt_Zl2.lt.ptlmin) return

      njets = 0 
      do j=1,mjets 
C     We are only intereted in jets that can be seen in the detector
         if(abs(rapj(j)) < rapj_max) then  
            njets = njets + 1
            pjet_in(:,njets) = pj(:,j)
            etaj_in(njets) = etaj(j) 
            rapj_in(njets) = rapj(j)
            ktj_in(njets) = ktj(j)
         endif
      enddo
C     If we discard one of the two hardest jets, we need to impose the same pt cut on the third jet as above
      if(njets.lt.2) return     !If less than two jets are seen, return
      if((ktj_in(1).lt.kt_tag_min).or.(ktj_in(2).lt.kt_tag_min)) return

      
      ptmp = p_Wl2+p_Wl1
      mWinv = invmass(ptmp) !includes neutrino momentum            
c     (no invariant mass cuts are imposed on ev system)
      pTW=sqrt(ptmp(1)**2+ptmp(2)**2)
      ptmp = p_Zl2+p_Zl1
      mZinv = invmass(ptmp)
      pTZ=sqrt(ptmp(1)**2+ptmp(2)**2)
      ETW=sqrt(mWinv**2+pTW**2)
      ETZ=sqrt(mZinv**2+pTZ**2)
      mTWZ=sqrt((ETW+ETZ)**2-(pTW+pTZ)**2)
      ptmp = p_Wl1+p_Wl2+p_Zl1+p_Zl2
      m4l = invmass(ptmp) !includes neutrino momentum
      ptwz=sqrt(ptmp(1)**2+ptmp(2)**2)
      ptmp = p_Wl2+p_Zl1+p_Zl2 ! p3l (without v)
      m3l=invmass(ptmp)
      pt3l=pt_Wl2+pT_Zl1+pT_Zl2
      
c     (no cut on neutrino)
      if(pt_Wl2.lt.ptl_min_1) return
      if(pt_Zl1.lt.ptl_min_1) return
      if(pt_Zl2.lt.ptl_min_1) return

c     lepton isolation from each other      
      call getdydetadphidr(p_Zl1,p_Zl2,dy,deta,delphi,dr)
      if (dr < drllmin) return ! only same type charged leptons
C     lepton isolation wrt tagging jets 
      do j=1,2
         call getdydetadphidr(p_Wl2,pjet_in(:,j),dy,
     $        deta,delphi,dr)
         if (dr < rjl) return
c	no cut on neutrino!
         call getdydetadphidr(p_Zl2,pjet_in(:,j),dy,
     $        deta,delphi,dr)
         if (dr < rjl) return
         call getdydetadphidr(p_Zl1,pjet_in(:,j),dy,
     $        deta,delphi,dr)
         if (dr < rjl)  return
      enddo         

      if(rap_sign.and.(etaj_in(1)*etaj_in(2).gt.0d0)) return !Requires the two jets to be in opposite hemispheres
      if(rap_gap) then
         if(abs(rapj_in(1)-rapj_in(2)).lt.rapjj_min) return !Requires large rapidity separation of the two jets
         if((y_Wl2.gt.rapj_in(1).and.y_Wl2.gt.rapj_in(2)).or.
     $        (y_Wl2.lt.rapj_in(1).and.y_Wl2.lt.rapj_in(2))) return
         if((y_Zl2.gt.rapj_in(1).and.y_Zl2.gt.rapj_in(2)).or.
     $        (y_Zl2.lt.rapj_in(1).and.y_Zl2.lt.rapj_in(2))) return
         if((y_Zl1.gt.rapj_in(1).and.y_Zl1.gt.rapj_in(2)).or.
     $        (y_Zl1.lt.rapj_in(1).and.y_Zl1.lt.rapj_in(2))) return !Requires the leptons to fall between the two tagging jets
      endif

      psum_jets = sum(pjet_in(:,1:2),dim=2)
      mass_jets = invmass(psum_jets)
      if(mass_jets.lt.mjj_min) return !Cut on jet invariant mass
      if (mZinv < mz_min .or. mZinv > mz_max) return
c     Find hardest pt charged lepton
      call maximum3(sqrt(p_Wl2(1)**2+p_Wl2(2)**2),
     $     sqrt(p_Zl1(1)**2+p_Zl1(2)**2),
     $     sqrt(p_Zl2(1)**2+p_Zl2(2)**2),pTl_hard)
      ptmiss=sqrt(pobs(1)**2+pobs(2)**2) ! abs(p_T(miss))=abs(p_T(obs))
      pr='VBFWZ'
      call filld(pr//'-tot', 0.5d0, dsig)
C     -- now get pt,y,eta etc of jets  
      do j=1,njets
	 call getyetaptmass(pjet_in(:,j),rapj_in(j),etaj_in(j),ktj_in(j),m)
	 phi(j)=atan2(pjet_in(2,j),pjet_in(1,j))
      enddo      
      
      call filld(pr//'-PTj1', ktj_in(1), dsig)
      call filld(pr//'-PTj2', ktj_in(2), dsig)
      call filld(pr//'-Yj1', rapj_in(1), dsig)
      call filld(pr//'-Yj2', rapj_in(2), dsig)
      call filld(pr//'-PTWl1', pt_Wl1, dsig)
      call filld(pr//'-PTWl2', pt_Wl2, dsig)
      call filld(pr//'-PTZl1', pt_Zl1, dsig)
      call filld(pr//'-PTZl2', pt_Zl2, dsig)
      call filld(pr//'-PTW', pTW, dsig)
      call filld(pr//'-PTZ', pTZ, dsig)
      call filld(pr//'-PTWZ', ptwz, dsig)
      call filld(pr//'-PTl_hardest', pTl_hard, dsig)
      call filld(pr//'-YWl1', y_Wl1, dsig)
      call filld(pr//'-YWl2', y_Wl2, dsig)
      call filld(pr//'-YZl1', y_Zl1, dsig)
      call filld(pr//'-YZl2', y_Zl2, dsig)
      call filld(pr//'-M4l', m4l, dsig)
      call filld(pr//'-MWinv', mwinv, dsig)
      call filld(pr//'-MZinv', mZinv, dsig)
      call filld(pr//'-Mj1j2', mass_jets, dsig)
      phijj = fphi(pjet_in(1:4,1),pjet_in(1:4,2))
      call filld(pr//'-phij1j2', phijj, dsig)
      call filld(pr//'-yj1j2', rapj_in(1)-rapj_in(2), dsig)
      phiWZ=fphi(p_W,p_Z)
      call filld(pr//'-phi_WZ',phiWZ,dsig)
      call filld(pr//'-m_T_WZ',mTWZ,dsig)
      call filld(pr//'-m3l',m3l,dsig)
      call filld(pr//'-sum_p_T_3l',pT3l,dsig)     
      if(njets.gt.2) then       !If three jets present in detector fill plots for third jet
	 call filld(pr//'-ptj3', ktj_in(3), dsig)
	 call filld(pr//'-ptj3_zoom', ktj_in(3), dsig)
	 ystar = rapj_in(3)-(rapj_in(1)+rapj_in(2))/2d0
	 zj3=ystar/abs(rapj_in(1)-rapj_in(2))
	 call filld(pr//'-zj3',zj3, dsig)
	 xstarj3=min(abs(rapj_in(1)-rapj_in(3)),abs(rapj_in(2)-rapj_in(3)))
     $ * sign(1d0,-(rapj_in(1)-rapj_in(3))*(rapj_in(2)-rapj_in(3)))
	 call filld(pr//'-x*j3',xstarj3,dsig)
C     -- loop over two sets of jet cuts for the third jet (10 and 20 GeV) 
	 do jetcut=1,2
	    if (jetcut == 1) then 
	       suffix = '-ptj10'
	       ptj3=10d0
	    else
	       suffix = '-ptj20'
	       ptj3=20d0
	    endif
	    if(ktj_in(3).gt.ptj3) then
	       call filld(pr//'Yj3'//suffix,rapj_in(3),dsig)      
	       call filld(pr//'Y*j3'//suffix,ystar,dsig)
	    endif
	    
	 enddo
      endif ! 3 jets

      passcuts_cjv = .true.
c identify 2 hardest veto jets:
      pt_v1 = 0d0
      pt_v2 = 0d0
      iveto1 = 0
      iveto2 = 0
      nveto = 0
      if (rap_veto) then
c hardest veto jet:
      do j = 1, mjets
      if(ktj(j).gt.pt_v1.and.ktj(j).gt.pt_veto.and.(
     &          rapj(j).gt.min(rapj_in(1),rapj_in(2)).and.
     &          rapj(j).lt.max(rapj_in(1),rapj_in(2)))
     &        )then
	      iveto1 = j
	      pt_v1 = ktj(j)
	   end if
      end do
c 2nd hardest veto jet:
      do j = 1, mjets
      if ( ktj(j).gt.pt_v2.and.ktj(j).gt.pt_veto .and.(
     &          rapj(j).gt.min(rapj_in(1),rapj_in(2)).and.
     &          rapj(j).lt.max(rapj_in(1),rapj_in(2))).and.
     &          j.ne.iveto1 ) then
	      iveto2 = j
	      pt_v2 = ktj(j)
	   end if
      end do
c count veto jet:
      do j = 1, mjets
      if(ktj(j).gt.pt_veto.and.
     &          rapj(j).gt.min(rapj_in(1),rapj_in(2)).and.
     &          rapj(j).lt.max(rapj_in(1),rapj_in(2))) then
	      nveto = nveto+1
	   end if
      end do

      else ! no rap-constraint on veto jet
c hardest veto jet:
      do j = 1, mjets
	   if ( ktj(j).gt.pt_v1.and.ktj(j).gt.pt_veto
     &        ) then
	      iveto1 = j
	      pt_v1 = ktj(j)
	   end if
      end do
c 2nd hardest veto jet:
      do j = 1, mjets
	   if ( ktj(j).gt.pt_v2.and.ktj(j).gt.pt_veto.and.
     &          j.ne.iveto1 ) then
	      iveto2 = j
	      pt_v2 = ktj(j)
	   end if
      end do
c count veto jet:
      do j = 1, mjets
	   if ( ktj(j).gt.pt_veto) then
	      nveto = nveto+1
	   end if
      end do

      endif !identification of veto jets
      if (nveto.ne.0) passcuts_cjv = .false.
c histograms with VBF and extra CJV cuts:
      if (passcuts_cjv) then
         pr='VBFWZ-CJV'
	 call filld(pr//'-tot',0.5d0,dsig)
      endif ! passcuts_cjv      
      end
