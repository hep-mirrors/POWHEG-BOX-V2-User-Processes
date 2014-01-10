C----------------------------------------------------------------------------
C     This analysis file is largely inspired by the ATLAS paper 1111.2690  
      subroutine init_hist_lep_higgs
      implicit none
      include  'LesHouches.h'
      include 'pwhg_math.h'
      character * 1 cnum(0:9)
      data cnum/'0','1','2','3','4','5','6','7','8','9'/
      character * 5 pr
      character * 6 suffix 
      common/pwhgprocess/pr
      real * 8 dy,dpt,dpt_l,dr,dptzoom,dM,dpt3,dM_zoom
      integer j,i,jetcut

      call inihists

      pr='VBFZZ'
      dy=0.2d0
      dpt=20d0
      dpt_l=10d0
      dM=2d0
      dptzoom=5d0
      dpt3=1d0
      dM_zoom=0.01d0
      
C     - Boson kinematics fully inclusive w.r.t radiation:
      call bookupeqbins(pr//'-tot-inc',1d0,0d0,1d0)
      call bookupeqbins(pr//'-VBF-inc',1d0,0d0,1d0)
      call bookupeqbins(pr//'-CJV-inc',1d0,0d0,1d0)

      call bookupeqbins(pr//'-PTj1',dpt,0d0,800d0)
      call bookupeqbins(pr//'-PTj2',dpt,0d0,600d0)

      call bookupeqbins(pr//'-Yj1',dy,-4.5d0,4.5d0)
      call bookupeqbins(pr//'-Yj2',dy,-4.5d0,4.5d0)

      call bookupeqbins(pr//'-PTZ1l1',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTZ1l2',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTZ1',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTZ2l1',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTZ2l2',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTZ2',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTZZ',dpt_l,0d0,400d0)
      call bookupeqbins(pr//'-PTl_hardest',dpt,0d0,800d0)

      call bookupeqbins(pr//'-YZ1l1',dy,-2.5d0,2.50d0)
      call bookupeqbins(pr//'-YZ1l2',dy,-2.5d0,2.50d0)
      call bookupeqbins(pr//'-YZ2l1',dy,-2.5d0,2.50d0)
      call bookupeqbins(pr//'-YZ2l2',dy,-2.5d0,2.50d0)

      call bookupeqbins(pr//'-M4l',dpt3,110d0,140d0)
      call bookupeqbins(pr//'-M4l-zoom',dM_zoom,124d0,126d0)
      call bookupeqbins(pr//'-MZ1',dM,0d0,120d0)
      call bookupeqbins(pr//'-MZ2',dM,0d0,120d0)
      call bookupeqbins(pr//'-MZ',dM,50d0,150d0)
      call bookupeqbins(pr//'-MZ-star',dM,20d0,100d0)

      call bookupeqbins(pr//'-Mj1j2',3d0*dpt,500d0,3500d0)
      call bookupeqbins(pr//'-phij1j2',0.157075d0,0d0,3.1415d0)
      call bookupeqbins(pr//'-phill_min_same',0.157075d0,0d0,3.1415d0)
      call bookupeqbins(pr//'-phill_max_same',0.157075d0,0d0,3.1415d0)
      call bookupeqbins(pr//'-phill_min_diff',0.157075d0,0d0,3.1415d0)
      call bookupeqbins(pr//'-phill_max_diff',0.157075d0,0d0,3.1415d0)
      call bookupeqbins(pr//'-phill_fixed_same',0.157075d0,0d0,3.1415d0)
      call bookupeqbins(pr//'-phill_fixed_diff',0.157075d0,0d0,3.1415d0)
      call bookupeqbins(pr//'-yj1j2',dy,-6d0,6d0)

      
      call bookupeqbins(pr//'-ptj3',dptzoom,0d0,200d0)
      call bookupeqbins(pr//'-ptj3_zoom',dpt3,0d0,50d0)

C     -- loop over two sets of jet cuts for the third jet (10 and 20 GeV) 
      do jetcut=1,2
         if (jetcut == 1) then 
            suffix = '-ptj10'
         else
            suffix = '-ptj20'
         endif

         call bookupeqbins(pr//'Yj3'//suffix,dy,-4.5d0,4.5d0)
         call bookupeqbins(pr//'Y*j3'//suffix,dy,-4.5d0,4.5d0)

      enddo
      
c      call bookupeqbins(pr//'sig(CJV cuts)',dptzoom,0d0,1d0)
      
      end
     
      subroutine analysis_lep_higgs(dsig0)
      implicit none
      real * 8 dsig0
      include 'hepevt.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h' 
      include 'pwhg_rad.h' 
      include 'pwhg_flg.h'
      include  'LesHouches.h'
      include 'pwhg_weights.h'
      real * 8 dsig(7),one7(7)
      integer nweights
      data one7/7*1d0/
      character * 5 pr
      common/pwhgprocess/pr
c     we need to tell to this analysis file which program is running it
      character * 6 WHCPRG
c      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      integer maxjet 
      parameter (maxjet=2048)
      real * 8  ktj(maxjet),etaj(maxjet),rapj(maxjet),phi(maxjet), 
     1    phij(maxjet),pj(4,maxjet),rr,rjl,ptrel(4),pjet_in(4,maxjet) 
      character * 1 cnum(0:9)
      data cnum/'0','1','2','3','4','5','6','7','8','9'/
      real * 8 p_Z1(4),p_Z1l2(4),p_Z1l1(4),P_Z2(4),p_Z2l1(4),p_Z2l2(4)
      real * 8 y_Z1l2,eta_Z1l2,pt_Z1l2, y_Z2l2,eta_Z2l2,pt_Z2l2
      real * 8 y_Z1l1,eta_Z1l1,pt_Z1l1,y_Z2l1,eta_Z2l1,pt_Z2l1
      real * 8 y,eta,pt,ptz,m,mll,mass_jets,psum_jets(4),phijj
      real * 8 dy,deta,delphi,dr,yijs(4),ptmin,ht,deltajets,deltanjets
      real * 8 rapj_max, rapjj_min, mjj_min,mz_min,mz_max, kt_tag_min
      real * 8 rapj_in(maxjet), etaj_in(maxjet), ktj_in(maxjet)
      real * 8 mZ1, mZ2, m4l, ptmp(4), ystar,mj1j2,invmass, fphi,ptj3     
      real * 8 powheginput,dotp,pt_veto,ptlmin,rapl_max,mh_min,mh_max
      real * 8 pTZ1, pTZ2, pTZZ, pTl_hard, phill,philltmp1,philltmp2
      logical passcuts_cjv
      real * 8 pt_v1, pt_v2 
      integer iveto1, iveto2, nveto
      external powheginput,dotp
      integer j,k,i,jj,mjets,jetcut,ihep,njets
      logical rap_sign, rap_gap, rap_veto
      character * 6 suffix 
      logical ini,write_cuts
      data ini/.true./
      save ini
      write_cuts=.false.
      
      if(ini) then
         write_cuts=.true.
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
         nweights=1
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
          nweights=weights_num
      endif

      if(sum(abs(dsig)).eq.0) return

      p_Z1 = 0d0 
      p_Z1l1 = 0d0 
      p_Z1l2 = 0d0 
      P_Z2 = 0d0 
      p_Z2l1 = 0d0 
      p_Z2l2 = 0d0 

C     select Z bosons 
      if(WHCPRG.eq.'NLO') then
         p_Z1 = phep(1:4,3)+phep(1:4,4)
         p_Z1l1 = phep(1:4,3)
         p_Z1l2 = phep(1:4,4)
         P_Z2 = phep(1:4,5)+phep(1:4,6)
         p_Z2l1 = phep(1:4,5)
         p_Z2l2 = phep(1:4,6)
      else
         do ihep=1,nhep
            if(isthep(ihep).eq.1.and.
     1           abs(idhep(ihep)).eq.11) then
               if(abs(idhep(jmohep(1,ihep))).eq.23) then
                  p_Z1=phep(1:4,jmohep(1,ihep))
               elseif(abs(idhep(jmohep(1,jmohep(1,ihep)))).eq.23) then
                  p_Z1=phep(1:4,jmohep(1,jmohep(1,ihep)))
               endif
            endif
            if(isthep(ihep).eq.1.and.
     1           abs(idhep(ihep)).eq.13) then
               if(abs(idhep(jmohep(1,ihep))).eq.23) then
                  P_Z2=phep(1:4,jmohep(1,ihep))
               elseif(abs(idhep(jmohep(1,jmohep(1,ihep)))).eq.23) then
                  P_Z2=phep(1:4,jmohep(1,jmohep(1,ihep)))
               endif
            endif
         enddo
         
C     select electron and positron (and muons) 
         do ihep=1,nhep
            if(isthep(ihep).eq.1.and.
     1           idhep(ihep).eq.11) then
               if(abs(idhep(jmohep(1,ihep))).eq.23) then
                  p_Z1l2=phep(1:4,ihep)
               elseif(abs(idhep(jmohep(1,jmohep(1,ihep)))).eq.23) then
                  p_Z1l2=phep(1:4,ihep)
               endif
            endif
            if(isthep(ihep).eq.1.and.
     1           idhep(ihep).eq.-11) then
               if(abs(idhep(jmohep(1,ihep))).eq.23) then
                  p_Z1l1=phep(1:4,ihep)
               elseif(abs(idhep(jmohep(1,jmohep(1,ihep)))).eq.23) then
                  p_Z1l1=phep(1:4,ihep)
               endif
            endif
            if(isthep(ihep).eq.1.and.
     1           idhep(ihep).eq.13) then
               if(abs(idhep(jmohep(1,ihep))).eq.23) then
                  p_Z2l2=phep(1:4,ihep)
               elseif(abs(idhep(jmohep(1,jmohep(1,ihep)))).eq.23) then
                  p_Z2l2=phep(1:4,ihep)
               endif
            endif
            if(isthep(ihep).eq.1.and.
     1           idhep(ihep).eq.-13) then
               if(abs(idhep(jmohep(1,ihep))).eq.23) then
                  p_Z2l1=phep(1:4,ihep)
               elseif(abs(idhep(jmohep(1,jmohep(1,ihep)))).eq.23) then
                  p_Z2l1=phep(1:4,ihep)
               endif
            endif
         enddo
      endif
      if (all(p_Z1 == 0d0).and.all(P_Z2 == 0d0)) then 
         write(*,*) 'Did not find Z boson'
      endif
      if (all(p_Z1l2 == 0d0)) then 
         write(*,*) 'Did not find electron'
      endif
      if (all(p_Z1l1 == 0d0)) then 
         write(*,*) 'Did not find positron'
      endif
      if (all(p_Z2l2 == 0d0)) then 
         write(*,*) 'Did not find mu-'
      endif
      if (all(p_Z2l1 == 0d0)) then 
         write(*,*) 'Did not find mu+'
      endif

C     ---------------------------------------------------------------
C     Cut parameterss
C     ---------------------------------------------------------------
      rapj_max = 4.5d0 !Maximal jet rapidity
      mz_min = 66d0 !Mass cut for letpon pair
      mz_max = 116d0 !Mass cut for lepton pair
      mh_min = 120d0             !Mass cut for letpon pair
      mh_max = 130d0            !Mass cut for lepton pair
      rr = 0.4d0 !Cone radius for anti-kt jet algorithm
      ptmin = 1d0 !Minimum jet pt for anti-kt algorithm 
      kt_tag_min = 25d0 !Require a minimum jet pt for two tagging jets
      rjl = 0.4d0 !Require separation between leptons and jets
      ptlmin = 25d0 ! Minimum jet pt
      rapl_max = 2.4d0 ! Maximium absolute lepton rapidity

C     VBF cuts
      rapjj_min = 4d0 !Require a large rapidity separation between jets
      mjj_min = 600d0 !Require large invariant mass of tagging jets
      rap_sign = .true. !Jets in opposite hemispheres
      rap_gap = .true. !Jets separated by rapjj_min

C     CJV cuts
      pt_veto = 20d0
      rap_veto = .true.
C     ---------------------------------------------------------------
C     ---------------------------------------------------------------

      if(write_cuts) then
         write(*,*) '********************************************'
         write(*,*) '********************************************'
         write(*,*) '                ANALYSIS CUTS               '
         write(*,*) '********************************************'
         write(*,*) '********************************************'
         write(*,*) ''
         write(*,*) 'jet cuts:'
         write(*,*) 'jet ptmin = ',ptmin
         write(*,*) 'jet3 pt_cut = ',ptmin
         write(*,*) 'tag jets pt_tag_min = ',kt_tag_min
         write(*,*) 'non-tag jets pt_jet_min = ',ptmin
         write(*,*) 'rapj_max  = ',rapj_max
         write(*,*) 'rapjj_min = ',rapjj_min
         write(*,*) 'Rjj_min = ',rr
         write(*,*) 'mjj_min = ',mjj_min
         write(*,*) 'Rjl_min = ',rjl
         write(*,*) ''
         write(*,*) 'lepton cuts:'
         write(*,*) ''
         write(*,*) 'mz_min    = ',mz_min
         write(*,*) 'mz_max    = ',mz_max
         write(*,*) 'mh_min    = ',mh_min
         write(*,*) 'mh_max    = ',mh_max
         write(*,*) 'ptl_min    = ',ptlmin
         write(*,*) 'rapl_max   = ',rapl_max
         write(*,*) ''
         write(*,*) 'extra cuts:'
         write(*,*) 'rap_gap  = ',rap_gap
         write(*,*) 'rap_sign  = ',rap_sign
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

      call filld(pr//'-tot-inc', 0.5d0, dsig)


C     -- select only jets in central rapidity and with pt_min 20 or 30 
C     + keep only jets isolated from electron and positron 
      call getyetaptmass(p_Z1l2,y_Z1l2,eta_Z1l2,pt_Z1l2,m)     
      call getyetaptmass(p_Z1l1,y_Z1l1,eta_Z1l1,pt_Z1l1,m)     
      call getyetaptmass(p_Z2l2,y_Z2l2,eta_Z2l2,pt_Z2l2,m)     
      call getyetaptmass(p_Z2l1,y_Z2l1,eta_Z2l1,pt_Z2l1,m)
C     Cut on lepton pt and eta
      if(abs(eta_Z1l1).gt.rapl_max) return
      if(abs(eta_Z1l2).gt.rapl_max) return
      if(abs(eta_Z2l1).gt.rapl_max) return
      if(abs(eta_Z2l2).gt.rapl_max) return
      if(pt_Z1l1.lt.ptlmin) return
      if(pt_Z1l2.lt.ptlmin) return
      if(pt_Z2l1.lt.ptlmin) return
      if(pt_Z2l2.lt.ptlmin) return
      
      njets = 0 
      do j=1,mjets 
         if(abs(rapj(j)) < rapj_max) then  
            njets = njets + 1
C     We are only intereted in jets that can be seen in the detector
            pjet_in(:,njets) = pj(:,j)
            etaj_in(njets) = etaj(j) 
            rapj_in(njets) = rapj(j)
            ktj_in(njets) = ktj(j)
         endif
      enddo
C     If we discard one of the two hardest jets, we need to impose the same pt cut on the third jet as above
      if(njets.lt.2) return     !If less than two jets are seen, return
      if((ktj_in(1).lt.kt_tag_min).or.(ktj_in(2).lt.kt_tag_min)) return
      
C     lepton isolation wrt tagging jets 
      do j=1,2
         call getdydetadphidr(p_Z1l2,pjet_in(:,j),dy,
     $        deta,delphi,dr)
         if (dr < rjl) return 
         call getdydetadphidr(p_Z1l1,pjet_in(:,j),dy,
     $        deta,delphi,dr)
         if (dr < rjl)  return 
         call getdydetadphidr(p_Z2l2,pjet_in(:,j),dy,
     $        deta,delphi,dr)
         if (dr < rjl) return 
         call getdydetadphidr(p_Z2l1,pjet_in(:,j),dy,
     $        deta,delphi,dr)
         if (dr < rjl)  return 
      enddo


      
C     -- VBF cuts 
      if(rap_sign.and.(etaj_in(1)*etaj_in(2).gt.0d0)) return !Requires the two jets to be in opposite hemispheres
      if(rap_gap) then
         if(abs(rapj_in(1)-rapj_in(2)).lt.rapjj_min) return !Requires large rapidity separation of the two jets
         if((y_Z1l2.gt.rapj_in(1).and.y_Z1l2.gt.rapj_in(2)).or.
     $        (y_Z1l2.lt.rapj_in(1).and.y_Z1l2.lt.rapj_in(2))) return
         if((y_Z1l1.gt.rapj_in(1).and.y_Z1l1.gt.rapj_in(2)).or.
     $        (y_Z1l1.lt.rapj_in(1).and.y_Z1l1.lt.rapj_in(2))) return !Requires the leptons to fall between the two tagging jets
         if((y_Z2l2.gt.rapj_in(1).and.y_Z2l2.gt.rapj_in(2)).or.
     $        (y_Z2l2.lt.rapj_in(1).and.y_Z2l2.lt.rapj_in(2))) return
         if((y_Z2l1.gt.rapj_in(1).and.y_Z2l1.gt.rapj_in(2)).or.
     $        (y_Z2l1.lt.rapj_in(1).and.y_Z2l1.lt.rapj_in(2))) return !Requires the leptons to fall between the two tagging jets
      endif
      psum_jets = sum(pjet_in(:,1:2),dim=2)
      mass_jets = invmass(psum_jets)
      if(mass_jets.lt.mjj_min) return !Cut on jet invariant mass            
      
      ptmp = p_Z1l2+p_Z1l1
      mZ1 = invmass(ptmp)
      pTZ1=sqrt(ptmp(1)**2+ptmp(2)**2)
      ptmp = p_Z2l2+p_Z2l1
      mZ2 = invmass(ptmp)
      pTZ2=sqrt(ptmp(1)**2+ptmp(2)**2)
      
      if ((mZ2 < mz_min .or. mZ2 > mz_max).and.(mZ1 < mz_min .or. mZ1 > mz_max)) return 
      
      
      ptmp = p_Z1l1+p_Z1l2+p_Z2l1+p_Z2l2
      m4l = invmass(ptmp)
      if((m4l.lt.mh_min).or.(m4l.gt.mh_max)) return
      pTZZ=sqrt(ptmp(1)**2+ptmp(2)**2)

c     Find hardest pt leptopn
      call maximum(sqrt(p_Z1l1(1)**2+p_Z1l1(2)**2),
     $     sqrt(p_Z1l2(1)**2+p_Z1l2(2)**2),
     $     sqrt(p_Z2l1(1)**2+p_Z2l1(2)**2),
     $     sqrt(p_Z2l2(1)**2+p_Z2l2(2)**2),pTl_hard)
     

      call filld(pr//'-VBF-inc', 0.5d0, dsig)

C     -- now get pt,y,eta etc of jets  
      do j=1,njets
         call getyetaptmass(pjet_in(:,j),rapj_in(j),etaj_in(j),ktj_in(j),m)
         phi(j)=atan2(pjet_in(2,j),pjet_in(1,j))
      enddo      
      
      call filld(pr//'-PTj1', ktj_in(1), dsig)
      call filld(pr//'-PTj2', ktj_in(2), dsig)

      call filld(pr//'-Yj1', rapj_in(1), dsig)
      call filld(pr//'-Yj2', rapj_in(2), dsig)

      call filld(pr//'-PTZ1l1', pt_Z1l1, dsig)
      call filld(pr//'-PTZ1l2', pt_Z1l2, dsig)
      call filld(pr//'-PTZ2l1', pt_Z2l1, dsig)
      call filld(pr//'-PTZ2l2', pt_Z2l2, dsig)
      call filld(pr//'-PTZ1', pTZ1, dsig)
      call filld(pr//'-PTZ2', pTZ2, dsig)
      call filld(pr//'-PTZZ', pTZZ, dsig)
      call filld(pr//'-PTl_hardest', pTl_hard, dsig)

      call filld(pr//'-YZ1l1', y_Z1l1, dsig)
      call filld(pr//'-YZ1l2', y_Z1l2, dsig)
      call filld(pr//'-YZ2l1', y_Z2l1, dsig)
      call filld(pr//'-YZ2l2', y_Z2l2, dsig)


      call filld(pr//'-M4l', m4l, dsig)
      call filld(pr//'-M4l-zoom', m4l, dsig)
      
      if(mZ1.gt.mZ2) then
         call filld(pr//'-MZ', mZ1, dsig)
         call filld(pr//'-MZ-star', mZ2, dsig)
      else
         call filld(pr//'-MZ', mZ2, dsig)
         call filld(pr//'-MZ-star', mZ1, dsig)
      endif
      
      call filld(pr//'-MZ1', mZ1, dsig)
      call filld(pr//'-MZ2', mZ2, dsig)

      call filld(pr//'-Mj1j2', mass_jets, dsig)

      phijj = fphi(pjet_in(1:4,1),pjet_in(1:4,2))
      call filld(pr//'-phij1j2', phijj, dsig)
      call filld(pr//'-yj1j2', rapj_in(1)-rapj_in(2), dsig)
      
      philltmp1=fphi(p_Z1l1,p_Z1l2)
      philltmp2=fphi(p_Z2l1,p_Z2l2)
      call filld(pr//'-phill_min_same',min(philltmp1,philltmp2),dsig)
      call filld(pr//'-phill_max_same',max(philltmp1,philltmp2),dsig)
      
      call minimum(fphi(p_Z1l1,p_Z2l1),
     $     fphi(p_Z1l1,p_Z2l2),
     $     fphi(p_Z1l2,p_Z2l1),
     $     fphi(p_Z1l2,p_Z2l2),phill)
      call filld(pr//'-phill_min_diff',phill,dsig)
      
      call maximum(fphi(p_Z1l1,p_Z2l1),
     $     fphi(p_Z1l1,p_Z2l2),
     $     fphi(p_Z1l2,p_Z2l1),
     $     fphi(p_Z1l2,p_Z2l2),phill)
      call filld(pr//'-phill_max_diff',phill,dsig)
      
      phill=fphi(p_Z1l1,p_Z1l2)
      call filld(pr//'-phill_fixed_same',phill,dsig)
      phill=fphi(p_Z1l1,p_Z2l2)
      call filld(pr//'-phill_fixed_diff',phill,dsig)

      
      if(njets.gt.2) then       !If three jets present in detector fill plots for third jet
         call filld(pr//'-ptj3', ktj_in(3), dsig)
         call filld(pr//'-ptj3_zoom', ktj_in(3), dsig)
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
               ystar     = rapj_in(3)-(rapj_in(1)+rapj_in(2))/2d0
               call filld(pr//'Y*j3'//suffix,ystar,dsig)
            endif
            
         enddo
      endif
      

ccccccccccccccccccccccccccccccccccccccccccccc      
c     CJV cuts
ccccccccccccccccccccccccccccccccccccccccccccc
c
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
           if ( ktj(j).gt.pt_v1.and.ktj(j).gt.pt_veto .and.(
     &          rapj(j).gt.min(rapj_in(1),rapj_in(2)).and.
     &          rapj(j).lt.max(rapj_in(1),rapj_in(2)))
     &        ) then
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
           if ( ktj(j).gt.pt_veto .and.
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

c
cccccccccccccccccccccccc
c
c histograms with VBF and extra CJV cuts:
c
      if (passcuts_cjv) then
         call filld(pr//'-CJV-inc',0.5d0,dsig)
      endif                     !passcuts_cjv
      
      end


 
