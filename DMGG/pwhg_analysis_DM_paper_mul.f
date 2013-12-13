      subroutine init_hist
      implicit none
      include 'pwhg_bookhist-multi.h'
      double precision pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      integer icut
      character * 10 cut
ccccccccccccccccccccccccc
      double precision binsize
ccccccccccccccccccccccccc
      double precision AT_Etmisscut(0:3),CM_Etmisscut(0:3)
      common/cEtmisscut/AT_Etmisscut,CM_Etmisscut
ccccccccccccccccccccccccc

      call inihists

      AT_Etmisscut(0) = 120d0
      AT_Etmisscut(1) = 220d0
      AT_Etmisscut(2) = 350d0
      AT_Etmisscut(3) = 500d0

      CM_Etmisscut(0) = 250d0
      CM_Etmisscut(1) = 350d0
      CM_Etmisscut(2) = 450d0
      CM_Etmisscut(3) = 550d0


      icut=-1

cccccccccc
c     ATLAS
cccccccccc
 111  continue
      icut=icut+1

      if     (icut.eq.0) then
         cut = ' Etm>120'
      elseif (icut.eq.1) then
         cut = ' Etm>220'
      elseif (icut.eq.2) then
         cut = ' Etm>350'
      elseif (icut.eq.3) then
         cut = ' Etm>500'
      elseif (icut.eq.4) then
         icut=icut-1
         goto 222
      endif

      
      binsize=25d0
      call bookupeqbins('ATLAS Etmiss >=1jet'//cut,
     $     binsize,100d0,1500d0)

      
      binsize=25d0
      call bookupeqbins('ATLAS ptj1 >=1jet'//cut,
     $     binsize,100d0,1500d0)

      
      binsize=25d0
      call bookupeqbins('ATLAS ptj1 >=2jet'//cut,
     $     binsize,100d0,1500d0)

      
      binsize=25d0
      call bookupeqbins('ATLAS ptj2 >=2jet'//cut,
     $     binsize,100d0,1500d0)

      
      binsize=pi/20
      call bookupeqbins('ATLAS dphi12 >=2jet'//cut,
     $     binsize,0d0,pi)

      
      binsize=pi/20
      call bookupeqbins('ATLAS dphiEtj2 >=2jet'//cut,
     $     binsize,0d0,pi)

      
      binsize=1d0
      call bookupeqbins('ATLAS total =njet (exclusive)'//cut,
     $     binsize,0.5d0,4.5d0)

      
      binsize=1d0
      call bookupeqbins('ATLAS total >= njet (inclusive)'//cut,
     $     binsize,0.5d0,4.5d0)
     
      goto 111

cccccccccc
c     CMS
cccccccccc
 222  continue

      icut=icut+1
      if     (icut.eq.4) then
         cut = ' Etm>250'
      elseif (icut.eq.5) then
         cut = ' Etm>350'
      elseif (icut.eq.6) then
         cut = ' Etm>450'
      elseif (icut.eq.7) then
         cut = ' Etm>550'
      elseif (icut.eq.8) then
         goto 333
      else
         write(*,*) 'Error in init_hist, icut ',icut
         call exit(1)
      endif

      
      binsize=25d0
      call bookupeqbins('CMS Etmiss >=1jet'//cut,
     $     binsize,100d0,1500d0)

      
      binsize=25d0
      call bookupeqbins('CMS ptj1 >=1jet'//cut,
     $     binsize,100d0,1500d0)

      
      binsize=25d0
      call bookupeqbins('CMS ptj1 >=2jet'//cut,
     $     binsize,100d0,1500d0)

      
      binsize=25d0
      call bookupeqbins('CMS ptj2 >=2jet'//cut,
     $     binsize,100d0,1500d0)

      
      binsize=pi/20
      call bookupeqbins('CMS dphi12 >=2jet'//cut,
     $     binsize,0d0,pi)

      
      binsize=pi/20
      call bookupeqbins('CMS dphiEtj2 >=2jet'//cut,
     $     binsize,0d0,pi)

      
      binsize=1d0
      call bookupeqbins('CMS total =njet (exclusive)'//cut,
     $     binsize,0.5d0,4.5d0)

      
      binsize=1d0
      call bookupeqbins('CMS total >= njet (inclusive)'//cut,
     $     binsize,0.5d0,4.5d0)

      goto 222

      
 333  end
     




      subroutine analysis(dsig0)
      implicit none
      include 'hepevt.h'
      include 'pwhg_weights.h'
      double precision dsig0,dsig(1:weights_max)
      double precision pi
      parameter(pi = 3.141592653589793D0)
ccccccccccccccccccccccccc
      double precision AT_Etmisscut(0:3),CM_Etmisscut(0:3)
      common/cEtmisscut/AT_Etmisscut,CM_Etmisscut
ccccccccccccccccccccccccc
      character * 10 cut

c arrays to reconstruct jets
      integer maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      double precision pjet(4,maxjet)
      double precision ktjet(maxjet)
      integer j,njets,mu,ihep,iDM(2),nDM
      double precision pX(4),pXbar(4),pinv(4),pinv_true(4),pj1(4),pj2(4)
      double precision pt_X,y_X,phi_X,pt_Xbar,y_Xbar,phi_Xbar
      double precision Et_j,eta_j,eta_j1,Etmiss,Etmiss_true,delphi
     $     ,delphi12,max_eta_j

      double precision ATLAS_min_Etmiss,ATLAS_min_pt_j1,ATLAS_max_eta_j1
     $     ,ATLAS_min_dphi_Etj2
      double precision CMS_min_Etmiss,CMS_min_pt_j1,CMS_max_eta_j1
     $     ,CMS_max_dphi_j1j2

      integer foundhardjets,jj(maxjet),nregjet,jj_good(maxjet)
      integer ijet
      integer diag,icut

      logical condition,AT_cuts(0:3),CM_cuts(0:3)

      character *6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO'/
      character *20 process

      logical ini
      data ini/.true./
      save ini

      double precision powheginput
      external powheginput
      integer idDM,idHiggs
      save idDM,idHiggs

      logical analysis_jetveto
      common/canalysis_jetveto/analysis_jetveto

      if(ini) then
         idDM=19
         idHiggs=25
         max_eta_j      = 4.5d0
         write(*,*) 'jet algo: antikt, pt>30, R=0.4'
         write(*,*) 'veto on 3rd central jet: ',analysis_jetveto
         write(*,*) '**************************************************'
         write(*,*) '**************************************************'
         write(*,*) '         ANALYSIS CUTS (ATLAS)'
c         ATLAS_min_Etmiss     = AT_Etmisscut(0)
         ATLAS_min_pt_j1      = 120d0
         ATLAS_max_eta_j1     = 2d0
         ATLAS_min_dphi_Etj2  = 0.5d0
         write(*,*) '         ANALYSIS CUTS (CMS PAS EXO-12-048)      '
c         CMS_min_Etmiss     = CM_Etmisscut(0)
         CMS_min_pt_j1      = 110d0
         CMS_max_eta_j1     = 2.4d0
         CMS_max_dphi_j1j2  = 2.5d0
         write(*,*) '**************************************************'
         write(*,*) '**************************************************'
         if(WHCPRG.eq.'NLO') then
            weights_num=1
         endif
         if(weights_num.eq.0.and.WHCPRG.eq.'PYTHIA') weights_num=1
         if(weights_num.eq.1) then
            call setupmulti(1)
         else
            call setupmulti(weights_num)
         endif
         ini =.false.
      endif
      dsig=0
      if(weights_num.eq.1.or.weights_num.eq.0) then
         dsig(1)=dsig0
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
      endif
      if(sum(abs(dsig)).eq.0) return

c     find DM particles...
      nDM=0
      if(WHCPRG.eq.'NLO   ') then
         do ihep=1,nhep
            if(isthep(ihep).eq.1) then
               if(abs(idhep(ihep)).eq.idhiggs) then
                  nDM=nDM+1
                  iDM(nDM)=ihep
               endif
            endif
         enddo
      elseif(WHCPRG.eq.'LHE   '.or.WHCPRG.eq.'PYTHIA') then
         do ihep=1,nhep
            if(isthep(ihep).eq.1) then
               if(abs(idhep(ihep)).eq.idDM) then
                  nDM=nDM+1
                  iDM(nDM)=ihep
               endif
            endif
         enddo
         if(nDM.ne.2) then
            write(*,*) 'Problems with DM particles X: ',nDM
            write(*,*) 'SKIP EVENT'
            goto 999            ! reject event
         endif
      elseif (WHCPRG.eq.'HERWIG') then
         write(*,*) 'HERWIG analysis not implemented'
         call exit(1)
      else
         write(*,*) 'Wrong WHCPRG: ',WHCPRG
         call exit(1)
      endif

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     DM analysis (***************)
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Compute DM variables (eventually we'll do the Etmiss computation
c     as -(total_pt). For now, lets assume I can tag X and Xbar)
      if(WHCPRG.eq.'NLO   ') then
         do mu=1,4
            pinv_true(mu)=phep(mu,iDM(1))
         enddo
      else
         do mu=1,4
            pX(mu)=phep(mu,iDM(1))
            pXbar(mu)=phep(mu,iDM(2))
         enddo
         call getktyphi(1,pX,pt_X,y_X,phi_X)
         call getktyphi(1,pXbar,pt_Xbar,y_Xbar,phi_Xbar)
         pinv_true(:)=pX(:)+pXbar(:)
      endif
      Etmiss_true=sqrt(pinv_true(1)**2+pinv_true(2)**2)

c     build jets:
c     here reconstruct jets with ATLAS antikt algo
      process="DM search"
c     build jets
      call buildjets(njets,pjet,process)
c     sort jet in decreasing Et (by finding their position
c     in pjet matrix)
      call find_hardest_jets(njets,pjet,njets,'PT',
     $     foundhardjets,jj,ktjet)
      
      if( njets /=  foundhardjets ) print*, 'problem'

      nregjet=0
      pinv(:)=0d0
      do j=1,njets !ER: shouldnt this be foundhardjets?
         pinv(:)=pinv(:)-pjet(:,jj(j))
         Et_j=ktjet(j)
         call getpseudorapidity(pjet(1,jj(j)),eta_j)
         if(abs(eta_j).le.max_eta_j) then
            nregjet=nregjet+1
            jj_good(nregjet)=jj(j)
         endif
         if(Et_j.le.30d0) then
            write(*,*) 'Error 1'
            stop
         endif
      enddo

      Etmiss=sqrt(pinv(1)**2+pinv(2)**2)
     
      if(nregjet.eq.0) then
c     no jets within (Et,eta) cut
         goto 999
      endif
      if(analysis_jetveto) then
         if(nregjet.gt.2) then
c     too many jets within (Et,eta) cut
            goto 999
         endif
      endif
         
      if(nregjet.ge.2) then
c     azimuthal separation between 2 hardest jets
         pj1(:)=pjet(:,jj_good(1))
         pj2(:)=pjet(:,jj_good(2))
         delphi12 = dabs(atan2(pj1(2),pj1(1)) - 
     $        atan2(pj2(2),pj2(1)))
         delphi12=min(delphi12,2d0*pi-delphi12)
c     azimuthal separation between 2nd hardest jet and pinv
         delphi = dabs(atan2(pj2(2),pj2(1)) - 
     $        atan2(pinv(2),pinv(1)))
         delphi=min(delphi,2d0*pi-delphi)
      endif
      call getpseudorapidity(pjet(1,jj(1)),eta_j1)

ccccccccccccccccc
c     ATLAS: cuts
ccccccccccccccccc
      do icut=0,3
         AT_cuts(icut)=
     $        (Etmiss.gt.AT_Etmisscut(icut)).and.
     $        (ktjet(1).gt.AT_Etmisscut(icut)).and.
     $        (abs(eta_j1).le.ATLAS_max_eta_j1)
         if(AT_cuts(icut)) then
            if(nregjet.ge.2) then
               AT_cuts(icut)=(delphi.gt.ATLAS_min_dphi_Etj2)
            endif
         endif
      enddo

ccccccccccccccccccccccccc
c     ATLAS: Histograms filling
ccccccccccccccccccccccccc

      icut=-1

 666  continue
      icut=icut+1

      if     (icut.eq.0) then
         condition = AT_cuts(icut)
         cut = ' Etm>120'
      elseif (icut.eq.1) then
         condition = AT_cuts(icut)
         cut = ' Etm>220'
      elseif (icut.eq.2) then
         condition = AT_cuts(icut)
         cut = ' Etm>350'
      elseif (icut.eq.3) then
         condition = AT_cuts(icut)
         cut = ' Etm>500'
      elseif (icut.eq.4) then
         goto 777
      endif

      if(condition) then

      
      if(nregjet.ge.1) call filld('ATLAS Etmiss >=1jet'//cut,Etmiss,dsig)

      
      if(nregjet.ge.1) call filld('ATLAS ptj1 >=1jet'//cut,ktjet(1),dsig)

      
      if(nregjet.ge.2) call filld('ATLAS ptj1 >=2jet'//cut,ktjet(1),dsig)

      
      if(nregjet.ge.2) call filld('ATLAS ptj2 >=2jet'//cut,ktjet(2),dsig)

      
      if(nregjet.ge.2) call filld('ATLAS dphi12 >=2jet'//cut,delphi12,dsig)

      
      if(nregjet.ge.2) call filld('ATLAS dphiEtj2 >=2jet'//cut,delphi,dsig)

      
      call filld('ATLAS total =njet (exclusive)'//cut,dble(nregjet),dsig)

      
      do ijet=1,nregjet
         call filld('ATLAS total >= njet (inclusive)'//cut,dble(ijet),dsig)
      enddo

      else
c         diag=diag+numplots
      endif
      
      goto 666 !go to return point of ATLAS histograms

 777  continue

ccccccccccccccccc
c     CMS: cuts
ccccccccccccccccc
      if((ktjet(1).lt.CMS_min_pt_j1).or.
     $     (abs(eta_j1).ge.CMS_max_eta_j1)) goto 999

      do icut=0,3
         CM_cuts(icut)=
     $        (Etmiss.gt.CM_Etmisscut(icut))
         if(CM_cuts(icut)) then
            if(nregjet.ge.2) then
               CM_cuts(icut)=(delphi12.lt.CMS_max_dphi_j1j2)
            endif
         endif
      enddo

ccccccccccccccccccccccccc
c     CMS: Histograms filling
ccccccccccccccccccccccccc

      icut=-1

 888  continue
      icut=icut+1

      if     (icut.eq.0) then
         condition = CM_cuts(icut)
         cut = ' Etm>250'
      elseif (icut.eq.1) then
         condition = CM_cuts(icut)
         cut = ' Etm>350'
      elseif (icut.eq.2) then
         condition = CM_cuts(icut)
         cut = ' Etm>450'
      elseif (icut.eq.3) then
         condition = CM_cuts(icut)
         cut = ' Etm>550'
      elseif (icut.eq.4) then
         goto 999
      else
         write(*,*) 'Error in analysis, icut ',icut
         call exit(1)
      endif

      if(condition) then

      
      if(nregjet.ge.1) call filld('CMS Etmiss >=1jet'//cut,Etmiss,dsig)

      
      if(nregjet.ge.1) call filld('CMS ptj1 >=1jet'//cut,ktjet(1),dsig)

      
      if(nregjet.ge.2) call filld('CMS ptj1 >=2jet'//cut,ktjet(1),dsig)

      
      if(nregjet.ge.2) call filld('CMS ptj2 >=2jet'//cut,ktjet(2),dsig)

      
      if(nregjet.ge.2) call filld('CMS dphi12 >=2jet'//cut,delphi12,dsig)

      
      if(nregjet.ge.2) call filld('CMS dphiEtj2 >=2jet'//cut,delphi,dsig)

      
      call filld('CMS total =njet (exclusive)'//cut,dble(nregjet),dsig)

      
      do ijet=1,nregjet
         call filld('CMS total >= njet (inclusive)'//cut,dble(ijet),dsig)
      enddo

      else
c         diag=diag+numplots
      endif

      goto 888  !go to return point of ATLAS histograms

 999  end


      subroutine buildjets(njets,pjet,process)
c     arrays to reconstruct jets
      implicit none
      include 'hepevt.h'
      integer njets
      double precision pjet(4,*)
      character * 20 process
      integer maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      double precision ptrack(4,maxtrack)
      integer jetvec(maxtrack)
      integer ihep,ntracks,jpart,jjet,mu
      double precision found
      double precision r,ptmin

c     set up arrays for jet finding
      do jpart=1,maxtrack
         do mu=1,4
            ptrack(mu,jpart)=0d0
         enddo
         jetvec(jpart)=0
      enddo      
      do jjet=1,maxjet
         do mu=1,4
            pjet(mu,jjet)=0d0
         enddo
      enddo

      found=0
      ntracks=0
      njets=0

c     loop over final state particles to find valid tracks
      do ihep=1,nhep
c     exclude leptons, gauge and higgs bosons, but include gluons
         if ((isthep(ihep).eq.1).and.
     1        (((abs(idhep(ihep)).le.10).or.(abs(idhep(ihep)).ge.40))
     2        .or.(abs(idhep(ihep)).eq.21))) then
            if(ntracks.eq.maxtrack) then
               write(*,*)
     $              'analyze: too many particles, increase maxtrack'
               call exit(1)
            endif
c     copy momenta to construct jets 
            ntracks=ntracks+1
            do mu=1,4
               ptrack(mu,ntracks)=phep(mu,ihep)
            enddo
         endif
      enddo
      if (ntracks.eq.0) then
         njets=0
         return
      endif
      if (process.eq."DM search") then
*******************************************
c     DM search
*******************************************
         R     = 0.4d0
         ptmin = 30d0
         call fastjetppgenkt(ptrack,ntracks,R,-1d0,ptmin,
     $        pjet,njets,jetvec)
      else
         write(*,*) 'JET ANALYSIS TO USE UNKNOWN:',process
         call exit(1)
      endif
         
      end

      subroutine getinvmass(p,m)
      implicit none
      double precision p(4),m
      double precision m2
      m2 = p(4)**2-p(1)**2-p(2)**2-p(3)**2
      if (m2.ge.0d0) then
         m = sqrt(abs(m2))
      else
         m = -sqrt(abs(m2))
      endif
      end

      function get_ptrel(pin,pjet)
      implicit none
      double precision get_ptrel,pin(0:3),pjet(0:3)
      double precision pin2,pjet2,cth2,scalprod
      pin2  = pin(1)**2 + pin(2)**2 + pin(3)**2
      pjet2 = pjet(1)**2 + pjet(2)**2 + pjet(3)**2
      scalprod = pin(1)*pjet(1) + pin(2)*pjet(2) + pin(3)*pjet(3)
      cth2 = scalprod**2/pin2/pjet2
      get_ptrel = sqrt(pin2*abs(1d0 - cth2))
      end



      function getrapidity0(p)
      implicit none
      double precision p(0:3),getrapidity0
      getrapidity0=0.5d0*log((p(0)+p(3))/(p(0)-p(3)))
      end
      subroutine getrapidity(p,y)
      implicit none
      double precision p(4),y
      y=0.5d0*log((p(4)+p(3))/(p(4)-p(3)))
      end

      function pseudorapidity(p)
      implicit none
      double precision p(0:3),pseudorapidity
      double precision mod, costh
      mod = sqrt(p(1)**2+p(2)**2+p(3)**2)
      costh = p(3)/mod
      pseudorapidity=0.5*log((1+costh)/(1-costh))
      end



c     calculate the separation in the lego plot between the two momenta p1 and p2 
c     in azi and rapidity
      function rsep_azi_y(p1,p2)
      implicit none
      double precision pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      double precision rsep_azi_y,p1(4),p2(4)
      double precision y1,phi1,y2,phi2,kt1,kt2
      double precision delphi

      call getktyphi(1,p1,kt1,y1,phi1)
      call getktyphi(1,p2,kt2,y2,phi2)

      delphi = abs(phi1-phi2)
c make sure it is below 2 pi
c      delphi=delphi-2*pi*int(delphi/(2*pi))
      if (delphi.gt.pi) then
         delphi = 2*pi-delphi
      endif
      if (delphi.lt.0 .or. delphi.gt.pi) then
         print*,' problem in rsep_azi_y. delphi = ',delphi
      endif
      rsep_azi_y = sqrt( (y1-y2)**2 + delphi**2 )
      end

      function azi(p)
      implicit none
      double precision pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      double precision azi,p(0:3)
      azi = atan(p(2)/p(1))
      if (p(1).lt.0d0) then
         if (azi.gt.0d0) then               
            azi = azi - pi
         else
            azi = azi + pi
         endif
      endif    
      end






      subroutine getktyphi(njets,pjet,ktjet,yjet,phijet)
      implicit none
      integer njets
      double precision pjet(4,njets),ktjet(njets),yjet(njets),phijet(njets)
      integer j
      do j=1,njets
         ktjet(j)=sqrt(pjet(1,j)**2+pjet(2,j)**2)        
         yjet(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         phijet(j)=atan2(pjet(2,j),pjet(1,j))
      enddo
      end
      

c     calculate the separation in the lego plot between the two momenta p1 and p2 
c     in azi and pseudorapidity
      function rsep_azi_eta(p1,p2)
      implicit none
      double precision rsep_azi_eta,p1(4),p2(4)
      double precision pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      double precision y1,phi1,y2,phi2,kt1,kt2,eta1,eta2
      double precision delphi

      call getktyphi(1,p1,kt1,y1,phi1)
      call getktyphi(1,p2,kt2,y2,phi2)

      delphi = abs(phi1-phi2)
c make sure it is below 2 pi
c      delphi=delphi-2*pi*int(delphi/(2*pi))
      if (delphi.gt.pi) then
         delphi = 2*pi-delphi
      endif
      if (delphi.lt.0 .or. delphi.gt.pi) then
         print*,' problem in rsep_azi_eta. delphi = ',delphi
      endif
      call getpseudorapidity(p1,eta1)
      call getpseudorapidity(p2,eta2)
      rsep_azi_eta = sqrt( (eta1-eta2)**2 + delphi**2 )
      end



      subroutine getpseudorapidity(p,eta)
      implicit none
      double precision p(1:4),eta
      double precision mod, costh
      mod = sqrt(p(1)**2+p(2)**2+p(3)**2)
      costh = p(3)/mod
      if (costh.eq.1d0) then
         eta=1d+30
      else
         eta=0.5*log(abs((1+costh)/(1-costh)))
      endif
      end



      function deltaphi(phi1,phi2)
      implicit none
      double precision deltaphi,phi1,phi2
      double precision pi
      parameter(pi = 3.141592653589793D0)
      deltaphi = abs(phi1-phi2)
      deltaphi=deltaphi-2*pi*int(deltaphi/(2*pi))
      if (deltaphi.gt.pi) then
         deltaphi = 2*pi-deltaphi
      endif
      if (deltaphi.lt.0 .or. deltaphi.gt.pi) then
         print*,' problem in rsep_azi_y. deltaphi = ',deltaphi
      endif      
      end



c     find the first "nhardjets" hardest jets in pjet (that contains njets)
c     and return their position.
c     criterium = "ET" or "PT": order them according to their 
c     transverse energy or momentum 
c     foundhardjets is the number of found hard jets (.le.nhardjets)
c     jj(1) is the position of the first jet, jj(2) the position of the 
c     second one...
c     ptj(1) = pt (or ET) of the first jet, etc
      subroutine find_hardest_jets(njets,pjet,nhardjets,criterium,
     #     foundhardjets,jj,ptj)
      implicit none
      integer njets
      double precision pjet(4,njets)
      integer nhardjets,jj(nhardjets)
      double precision ptj(nhardjets),pt,modp
      integer ijet,hjet,foundhardjets,i
      character * 2 criterium
      logical is_i_in_array
      external is_i_in_array
      
      if (.not.(criterium.eq.'ET'.or.criterium.eq.'PT')) then
         write(*,*) 'WRONG criterium in find_hardest_jets: ',criterium
         call exit(10)
      endif
      if (njets.eq.0) then
c         write(*,*) 'WARNING!!!!!!!!!!!  EMPTY  PJET ARRAY'
         foundhardjets=0
         return
      endif

      do hjet=1,nhardjets
         jj(hjet)=0d0
         ptj(hjet)=0d0
      enddo
      foundhardjets=1
      do ijet=1,njets
         pt=sqrt(pjet(1,ijet)**2 + pjet(2,ijet)**2)
         if (criterium.eq.'ET') then
c     pt is then the transverse energy
            modp = sqrt(pjet(1,ijet)**2+pjet(2,ijet)**2+pjet(3,ijet)**2)
            pt = pjet(4,ijet) * pt/modp
         endif
         do hjet=1,min(foundhardjets,nhardjets)
            if (pt.gt.ptj(hjet).and.
     $           .not.is_i_in_array(nhardjets,ijet,jj)) then
               foundhardjets = foundhardjets + 1
               do i=nhardjets,hjet+1,-1
                  ptj(i)=ptj(i-1)
                  jj(i)=jj(i-1)
               enddo
               ptj(hjet)=pt
               jj(hjet)=ijet
            endif
         enddo
      enddo
c     set number of jets found
      foundhardjets = min(foundhardjets-1,nhardjets)
      end

      function is_i_in_array(nhardjets,i,jj)
      implicit none
      logical is_i_in_array
      integer nhardjets,i,jj(nhardjets)
      integer j
      is_i_in_array = .false.
      do j=1,nhardjets
         if (i.eq.jj(j)) then
            is_i_in_array = .true.
            return
         endif
      enddo
      end



      subroutine getEt(p,Et)
      implicit none
      double precision p(4),Et
      double precision pt,modp
      pt=sqrt(p(1)**2 + p(2)**2)
      modp = sqrt(p(1)**2+p(2)**2+p(3)**2)
      Et = p(4) * pt/modp
      end
