c     The next subroutines, open some histograms and prepare them 
c     to receive data. The relevant routines are 
c     inihists    :  opens the histograms
c     filld       :  fills the histograms with data
c     pwhgaccumup :  accumulates results and clear temporary histograms
c     pwhgsetout  :  performs statistical analysis and close histograms
c     pwhgtopout  :  output the results on a .top file
c     You can substitute any of these with your favourite ones

      subroutine init_hist
      implicit none
      double precision pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      integer icut
      character * 3 jetcut
      character * 4 attcut
c
      integer nptttbcutmax,nptttbcut
      parameter(nptttbcutmax = 10)
      integer ptttbcuts(0:nptttbcutmax-1)
      common/cptvbcut/ptttbcuts,nptttbcut
      integer ncut
      
      character * 3 ttbcut
      integer i

      ptttbcuts(0) = 0
      ptttbcuts(1) = 10
      ptttbcuts(2) = 20
      ptttbcuts(3) = 50
c     number of pt cuts implemented one more than the last previous one
      nptttbcut=4

      write(*,*) '**************************************************'
      write(*,*) '**************************************************'
      write(*,*) '             INITIALIZING HISTOGRAMS          '
      write(*,*) '**************************************************'
      

      call inihists

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C LOOP ON TTBAR PT CUTS
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      do ncut=0,nptttbcut-1 
         write(unit=ttbcut,fmt="(i3)") ptttbcuts(ncut)

c total cross section sanity check
         call bookupeqbins('total pt(ttb)>'//ttbcut,1d0,0d0,1d0)
c yt asymmetry
         call bookupeqbins('yt asym. pt(ttb)>'//ttbcut,1d0,0d0,1d0)
c yt asymmetry |yt|<1
         call bookupeqbins('yt asym. |Dy|<1 pt(ttb)>'//ttbcut,
     &        1d0,0d0,1d0)
c total |yt|< 1
         call bookupeqbins('total |Dy|<1 pt(ttb)>'//ttbcut,
     &        1d0,0d0,1d0)
c yt asymmetry |yt|> 1
         call bookupeqbins('yt asym. |Dy|>1 pt(ttb)>'//ttbcut,
     &        1d0,0d0,1d0)
c total |yt|> 1
         call bookupeqbins('total |Dy|>1 pt(ttb)>'//ttbcut,
     &        1d0,0d0,1d0)
c yt asymmetry Mtt<450
         call bookupeqbins('yt asym. Mtt<450 pt(ttb)>'//ttbcut,
     &        1d0,0d0,1d0)
c total Mtt < 450
         call bookupeqbins('total Mtt<450 pt(ttb)>'//ttbcut,
     &        1d0,0d0,1d0)
c yt asymmetry Mtt>450
         call bookupeqbins('yt asym. Mtt>450 pt(ttb)>'//ttbcut,
     &        1d0,0d0,1d0)
c total Mtt > 450
         call bookupeqbins('total Mtt>450 pt(ttb)>'//ttbcut,
     &        1d0,0d0,1d0)
c top antitop charge asymmetry
         call bookupeqbins('t-tbar charge asym. pt(ttb)>'//ttbcut,
     &        1d0,0d0,1d0)
c mass of the pair
         call bookupeqbins('ttbar mass pt(ttb)>'//ttbcut,
     &        20d0,0d0,1000d0)
c rapidity of the pair
         call bookupeqbins('ttbar y pt(ttb)>'//ttbcut,0.2d0,-4d0,4d0)
c pt of the pair
         call bookupeqbins('ttbar pt pt(ttb)>'//ttbcut,
     &        4d0,0d0,800d0)
c pt of the pair (zoom)
         call bookupeqbins('ttbar pt zoom pt(ttb)>'//ttbcut,
     &        0.5d0,0d0,100d0)
c pt of top
         call bookupeqbins('t pt pt(ttb)>'//ttbcut,5d0,0d0,500d0)
c pt of antitop
         call bookupeqbins('tbar pt pt(ttb)>'//ttbcut,5d0,0d0,500d0)
c top rapidity
         call bookupeqbins('t y pt(ttb)>'//ttbcut,0.2d0,-4d0,4d0)
c antitop rapidity
         call bookupeqbins('tbar y pt(ttb)>'//ttbcut,0.2d0,-4d0,4d0)
c top-antitop rapidity asymmetry
         call bookupeqbins('t-tbar,y asym.  pt(ttb)>'//ttbcut,
     &        0.2d0,-4d0,4d0)
c top-antitop pseudo-rapidity asymmetry
         call bookupeqbins('t-tbar,eta asym.  pt(ttb)>'//ttbcut,
     &        0.2d0,-4d0,4d0)
c top-antitop charge asymmetry (using y)
         call bookupeqbins('t-tbar, ch asym.(y)  pt(ttb)>'//ttbcut,
     &        0.2d0,-4d0,4d0)
c top-antitop charge asymmetry (using eta)
         call bookupeqbins('t-tbar, ch asym.(eta)  pt(ttb)>'//ttbcut,
     &        0.2d0,-4d0,4d0)
c top-antitop azimuthal distance
         call bookupeqbins('t-tbar,Delta_phi pt(ttb)>'//ttbcut,
     &        0.02d0,0d0,1d0)
c top-antitop Delta R distance
         call bookupeqbins('t-tbar,Delta_R   pt(ttb)>'//ttbcut,
     &        0.25d0,0.d0,10.d0)

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c  PLOTS INVOLVING JETS
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
         
c N jets
         call bookupeqbins('Njets pt(ttb)>'//ttbcut,1d0,0d0,6d0)
         
         
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c  PLOTS INVOLVING HARDEST JET
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

c (Leading non-b) jet pt
         call bookupeqbins('pt1stjet pt(ttb)>'//ttbcut,
     &        5d0,0d0,500d0)

c (Leading non-b) jet pt (zoom)
         call bookupeqbins('pt1stjet zoom pt(ttb)>'//ttbcut,
     &        1d0,0d0,100d0)

c (Leading non-b) jet pt_rel
         call bookupeqbins('pt_rel 1stjet pt(ttb)>'//ttbcut,
     &        1d0,0d0,60d0)

c (Leading non-b) jet y
         do icut=20,100,20
            write(jetcut,'(i3)') icut
            call bookupeqbins('y1stjet, pt(jet)>'//jetcut//' pt(ttb)>'/
     &           /ttbcut,0.2d0,-4d0,4d0)
         enddo
c (Leading non-b) jet y-yttbar
         do icut=20,100,20
            write(jetcut,'(i3)') icut
            call bookupeqbins('y1stjet-y(ttbar),pt(jet)>'//jetcut/
     &           /' pt(ttb)>'//ttbcut,0.2d0,-4d0,4d0)
         enddo
c (Leading non-b) jet phi-phittbar
         do icut=20,100,20
            write(jetcut,'(i3)') icut
            call bookupeqbins('phi1stjet-phi(ttbar),pt(jet)>'//jetcut/
     &           /' pt(ttb)>'//ttbcut,0.02d0,0d0,1d0)
         enddo
c (Leading non-b) jet delta R jet-ttbar
         do icut=20,100,20
            write(jetcut,'(i3)') icut
            call bookupeqbins('deltaR 1stjet-(ttbar),pt(jet)>'//jetcut/
     &           /' pt(ttb)>'//ttbcut,0.25d0,0d0,10d0)
         enddo      

c (Leading non-b) jet ttbar system pt(log)
         call bookupeqbins('log10(pt) 1stjet-ttbar pt(ttb)>'//ttbcut,
     &        0.06d0,0d0,3d0)
         
c (Leading non-b) jet ttbar system pt
         call bookupeqbins('pt 1stjet-ttbar pt(ttb)>'//ttbcut,
     &        3d0,0d0,300d0)
    
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c  PLOTS INVOLVING NEXT-TO-HARDEST JET
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

c (Next-to-Leading non-b) jet pt
         call bookupeqbins('pt2ndjet pt(ttb)>'//ttbcut,
     &        10d0,0d0,600d0)

c (Next-to-Leading non-b) jet pt  (zoom)
         call bookupeqbins('pt2ndjet (zoom) pt(ttb)>'//ttbcut,
     &        1d0,0d0,100d0)

c (Next-to-Leading non-b) jet pt_rel
         call bookupeqbins('pt_rel 2ndjet pt(ttb)>'//ttbcut,
     &        1d0,0d0,60d0)

c (Next-to-Leading non-b) jet y
         do icut=20,100,20
            write(jetcut,'(i3)') icut
            call bookupeqbins('y2ndjet pt(jet)>'//jetcut//' pt(ttb)>'/
     &           /ttbcut,0.2d0,-4d0,4d0)
         enddo
c (Next-to-Leading non-b) jet y-yttbar
         do icut=20,100,20
            write(jetcut,'(i3)') icut
            call bookupeqbins('y2ndjet-y(ttbar) pt(jet)>'//jetcut/
     &           /' pt(ttb)>'//ttbcut,0.2d0,-4d0,4d0)
         enddo

c (Next-to-Leading non-b) jet delta R jet-ttbar
         do icut=20,100,20
            write(jetcut,'(i3)') icut
            call bookupeqbins('deltaR 2ndjet-(ttbar),pt(jet)>'//jetcut/
     &           /' pt(ttb)>'//ttbcut,0.25d0,0d0,10d0)
         enddo

c  delta R (Leading non-b) jet - (Next-to-Leading non-b) jet
         do icut=20,100,20
            write(jetcut,'(i3)') icut
            call bookupeqbins('deltaR 1stjet-2ndjet,pt(jet)>'//jetcut/
     &           /' pt(ttb)>'//ttbcut,0.25d0,0d0,10d0)
         enddo


CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c  PLOTS INVOLVING LEPTONS FROM TOP DECAY PRODUCTS
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

c Lepton+
c Lepton energy in top rest frame
         call bookupeqbins('eem pt(ttb)>'//ttbcut,2d0,0d0,100d0)
c Lepton cos theta in top rest frame
         call bookupeqbins('costh1 costh2 pt(ttb)>'//ttbcut,
     &        0.1d0,-1d0,1d0)
c Lepton azimuth in top rest frame. The origin is the top
c transverse direction
         call bookupeqbins('phi dec pt(ttb)>'//ttbcut,0.02d0,-1d0,1d0)
         
c  Hardest lepton+ pt
         call bookupeqbins('lep+ pt(ttb)>'//ttbcut,3d0,0d0,300d0)

c  Hardest lepton- pt
         call bookupeqbins('lep- pt(ttb)>'//ttbcut,3d0,0d0,300d0)

c  Hardest lepton+ rapidity
         call bookupeqbins('lep+ y pt(ttb)>'//ttbcut,0.2d0,-4d0,4d0)

c  Hardest lepton- rapidity
         call bookupeqbins('lep- y pt(ttb)>'//ttbcut,0.2d0,-4d0,4d0)

c  dilepton invariant mass
         call bookupeqbins('dilep inv. mass pt(ttb)>'//ttbcut,
     &        5d0,0d0,500d0)

c dilepton azimuthal distance
         call bookupeqbins('dilep Delta phi pt(ttb)>'//ttbcut,
     &        0.02d0,0d0,1d0)

c dilepton azimuthal distance with mtt cut
         call bookupeqbins('dilep Delta phi mtt < 400 pt(ttb)>'/
     &        /ttbcut,0.02d0,0d0,1d0)

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
C PLOTS FOR TRACKING NEGATIVE WEIGHTS
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc    

      call bookupeqbins('pt(ttb) pos-|neg| pt(ttb)>'//ttbcut,
     &     2d0,0d0,200d0)
      call bookupeqbins('pt(ttb) pos pt(ttb)>'//ttbcut,
     &     2d0,0d0,200d0)
      call bookupeqbins('pt(ttb) neg pt(ttb)>'//ttbcut,
     &     2d0,0d0,200d0)
      call bookupeqbins('pt J1 pos-|neg| pt(ttb)>'//ttbcut,
     &     2d0,0d0,200d0)
      call bookupeqbins('pt J1 pos pt(ttb)>'//ttbcut,2d0,0d0,200d0)
      call bookupeqbins('pt J1 neg pt(ttb)>'//ttbcut,2d0,0d0,200d0)
      call bookupeqbins('pt J2 pos-|neg| pt(ttb) >'//ttbcut,
     &     2d0,0d0,200d0)
      call bookupeqbins('pt J2 pos pt(ttb)>'//ttbcut,2d0,0d0,200d0)
      call bookupeqbins('pt J2 neg pt(ttb)>'//ttbcut,2d0,0d0,200d0)

      enddo                     ! end of pt (ttb) cuts loop

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
C PLOTS IN ARXIV 0810.0452
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      
      call bookupeqbins('DUW jet pt bin4TeV',25d0,0d0,325d0)
      call bookupeqbins('DUW jet pt bin4LHC',50d0,0d0,700d0)
      call bookupeqbins('DUW ttbar pt bin4TeV',25d0,0d0,325d0)
      call bookupeqbins('DUW ttbar pt bin4LHC',50d0,0d0,700d0)
      call bookupeqbins('DUW t pt bin4TeV',25d0,0d0,400d0)
      call bookupeqbins('DUW t pt bin4LHC',50d0,0d0,700d0)
      call bookupeqbins('DUW t eta bin4TeV',0.4d0,-4d0,4d0)
      call bookupeqbins('DUW t eta bin4LHC',0.6d0,-6d0,6d0)
      call bookupeqbins('DUW t y bin4TeV',0.4d0,-2d0,2d0)
      call bookupeqbins('DUW t y bin4LHC',0.6d0,-4.2d0,4.2d0)
      call bookupeqbins('DUW jet y bin4TeV',0.4d0,-4d0,4d0)
      call bookupeqbins('DUW jet y bin4LHC',0.6d0,-5.4d0,5.4d0)

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
C PLOTS FOR ASYMMETRY
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc    
      
c (Leading non-b) jet pt with inv mass cuts
      do icut=0,1000,200
         write(attcut,'(i4)') icut
         call bookupeqbins('pt 1st jet , mtt>'//attcut,
     &        50d0,0d0,1000d0)
      enddo

c inv mass with jet cuts
      do icut=0,1000,200
         write(attcut,'(i4)') icut
         call bookupeqbins('mtt,  pt 1stjet>'//attcut,
     &        50d0,0d0,1000d0)
      enddo
      
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
C PLOTS FOR MASS
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc    
      
      call bookupeqbins('m*',0.05d0,0d0,1d0)

      end


     
      subroutine analysis(dsig0)
      implicit none
      real(8) :: dsig0
      include 'hepevt.h'
      include 'pwhg_rwl.h'
      real(8) :: dsig(rwl_maxweights)
      double precision pi
      parameter(pi = 3.141592653589793D0)
c arrays to reconstruct jets
      integer maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=50)
      double precision pjet(4,maxjet),pj(4,maxjet)
      integer njets,j
      double precision ktjet(maxjet),yjet(maxjet),phijet(maxjet)
     $     ,ptreljet(maxjet)
      logical ini
      data ini/.true./
      save ini
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
c
      integer nptttbcutmax,nptttbcut
      parameter(nptttbcutmax = 10)
      integer ptttbcuts(0:nptttbcutmax-1)
      common/cptvbcut/ptttbcuts,nptttbcut
      integer ncut
c
      double precision deltaphi,rsep_azi_y,get_ptrel_jet
      external deltaphi,rsep_azi_y,get_ptrel_jet
      character * 20 jetalgo
      integer icut
      integer it,itbar,iem,iep,iit,iitbar,iheptop,iheptbar,iiem,iiep
      double precision phit,phitbar,deltaRttbar,deltaphittbar
     $     ,deltaRj1ttbar,deltaphij1ttbar,deltaRj1j2,deltaRj2ttbar
      double precision ppairttbar(4),ptt,yt,etat,pttbar,ytbar,etatbar,
     $     ptttbar,mttbar,yttbar,phittbar,etattbar,eep,cthep,phiep,eem
     $     ,cthem,phiem,dphi,ptep,ptem,mepem,yep,yem,etaep,etaem,
     $     ppairepem(4),deltaphiepem,diffabseta,psysttbarj(4)
     $     ,pt2systtbarj
      integer mu,ihep
      double precision maxptep,maxptem
      double precision m0,mstar
      integer ibtag(maxjet),itags
      logical sonofidhep,is_lepton,is_antilepton
      external sonofidhep,is_lepton,is_antilepton
      character(3) :: ttbcut, jetcut
      character(4) :: attcut
      if (ini) then
         write(*,*) '*****************************'
         if(WHCPRG.eq.'NLO   ') then
            write(*,*) '       NLO ANALYSIS'
         elseif(WHCPRG.eq.'LHE   ') then
            write (*,*) '           LHE ANALYSIS            '
         elseif(WHCPRG.eq.'HERWIG') then
            write (*,*) '           HERWIG ANALYSIS            '
         elseif(WHCPRG.eq.'PYTHIA') then
            write (*,*) '           PYTHIA ANALYSIS            '
         endif
         write(*,*) '*****************************'
         ini=.false.
      endif

      call multi_plot_setup(dsig0,dsig,rwl_maxweights)

c RESET ALL COUNTERS
      it=0
      iit=0
      iheptop=0
      itbar=0
      iitbar=0
      iheptbar=0
      iem=0
      iiem=0
      maxptem=0d0
      iep=0
      iiep=0
      maxptep=0d0
c Parton level analysis
      if((whcprg.eq.'NLO   ').or.(whcprg.eq.'LHE   ')) then
         do ihep=3,nhep
            if(idhep(ihep).eq.6) then
               it=ihep
               iit=iit+1
            elseif(idhep(ihep).eq.-6) then
               itbar=ihep
               iitbar=iitbar+1
            elseif(is_lepton(idhep(ihep))) then
               iem=ihep
               iiem=iiem+1
            elseif(is_antilepton(idhep(ihep)))  then
               iep=ihep
               iiep=iiep+1
            endif
         enddo
c check that exactly 1 top and 1 anti-top are selected
         if (iit.ne.1) then
            write(*,*) "Error in pwhg_analisys: ",iit," tops"
            call printleshouches
            call exit(1)
         endif
         if (iitbar.ne.1) then
            write(*,*) "Error in pwhg_analisys: ",iitbar," anti-tops"
            call printleshouches
            call exit(1)
         endif
c Hadron level analysis
      else
         do ihep=1,nhep
            if(isthep(ihep).eq.1) then
               if(is_antilepton(idhep(ihep))) then
                  if (sonofidhep(6,ihep,j)) then
                     it=j
c     check that the positrons that come from a top come from the same one 
                     if (iit.eq.0) then
                        iheptop=it
                        iit=iit+1
                        iiep=iiep+1
                     endif
                     if ((iit.gt.0).and.(it.ne.iheptop)) then
                        iit=iit+1
                        iiep=iiep+1
                     endif
c     select the hardest positron coming from the same top
                     if(phep(1,ihep)**2+phep(2,ihep)**2.gt.maxptep) then
                        iep=ihep
                        maxptep=phep(1,iep)**2+phep(2,iep)**2
                     endif
                  endif
               elseif(is_lepton(idhep(ihep))) then
                  if(sonofidhep(-6,ihep,j)) then
                     itbar=j
c     check that the electrons that come from a tbar come from the same one 
                     if (iitbar.eq.0) then
                        iheptbar=itbar
                        iitbar=iitbar+1
                        iiem=iiem+1
                     endif
                     if ((iitbar.gt.0).and.(itbar.ne.iheptbar)) then
                        iitbar =iitbar+1
                        iiem=iiem+1
                     endif
c     select the hardest electron coming from the same tbar
                     if(phep(1,ihep)**2+phep(2,ihep)**2.gt.maxptem) then
                        iem=ihep
                        maxptem=phep(1,iem)**2+phep(2,iem)**2
                     endif
                  endif
               endif
            endif
         enddo
c check that at least one top and one anti-top are selected
c during showering there may be more than one entry with PDG=6,
c with different IST. The sonof procedure select the first back
c in shower history.
         if (iit.lt.1) then
            write(*,*) "Error in pwhg_analisys: ",iit," tops"
            call printleshouches
            call exit(1)
         endif
         if (iitbar.lt.1) then
            write(*,*) "Error in pwhg_analisys: ",iitbar," anti-tops"
            call printleshouches
            call exit(1)
         endif
c check that at least one antilepton and one lepton are selected
         if (iiep.lt.1) then
            write(*,*) "Error in pwhg_analisys: ",iep," leptons"
            call printleshouches
            call exit(1)
         endif
         if (iiem.lt.1) then
            write(*,*) "Error in pwhg_analisys: ",iem," anti-leptons"
            call printleshouches
            call exit(1)
         endif
      endif
c     evaluate quantities related to top-antitop 
      call ptyetaphi(phep(1,it),ptt,yt,etat,phit)
      call ptyetaphi(phep(1,itbar),pttbar,ytbar,etatbar,phitbar)
      diffabseta=abs(etat)-abs(etatbar)
      do mu=1,4
         ppairttbar(mu)=phep(mu,it)+phep(mu,itbar)
      enddo
      call getinvmass(ppairttbar,mttbar)
      call ptyetaphi(ppairttbar,ptttbar,yttbar,etattbar,phittbar)

      deltaphittbar=deltaphi(phit,phitbar)
      deltaRttbar=rsep_azi_y(phep(1,it),phep(1,itbar))

      
c     build jets with the inclusive kt algo (TOPS and b-jet NOT INCLUDED)
      jetalgo="antikt"
c     njets is the maximum number of jets to be searched for (buildjets
c     then sets it to the actual value found)
      if((whcprg.eq.'NLO   ').or.(whcprg.eq.'LHE   ')) then
         njets=2
      else
         njets=10
      endif

      call build_non_b_jets(njets,pjet,jetalgo,ptreljet)
      call getktyphi(njets,pjet,ktjet,yjet,phijet)


c     if there are no jets skip the analysis
      if (njets < 1) return

c     evaluate quantities related to leptons (if present) 
      if(iiep.gt.0) then
c     Compute lepton variables in top rest frame 
         call decvariables(phep(1,iep),phep(1,it),eep,cthep,phiep)
c     Compute lepton variables in laboratory frame  
         call ptyetaphi(phep(1,iep),ptep,yep,etaep,phiep)
      endif
      if(iiem.gt.0) then
c     Compute lepton variables in top rest frame 
         call decvariables(phep(1,iem),phep(1,itbar),eem,cthem,phiem)
c     Compute lepton variables in laboratory frame        
         call ptyetaphi(phep(1,iem),ptem,yem,etaem,phiem)
      endif
      if((iiep.gt.0).and.(iiem.gt.0)) then   
         dphi=(phiep-phiem)-nint((phiep-phiem)/(2*pi))*2*pi
         do mu=1,4
            ppairepem(mu)=phep(mu,iep)+phep(mu,iem)
         enddo
         call getinvmass(ppairepem,mepem)
         deltaphiepem=deltaphi(phiep,phiem)
      endif


c     fill histograms
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C LOOP ON TTBAR PT CUTS
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCC
      do ncut=0,nptttbcut-1
         write(unit=ttbcut,fmt="(i3)") ptttbcuts(ncut)
         
         if (ptttbar.lt.ptttbcuts(ncut)) goto 999
c total sigma
         call filld('total pt(ttb)>'//ttbcut,0.5d0,dsig)
c yt asymmetry
         if(yt.gt.0d0) call filld('yt asym. pt(ttb)>'//ttbcut,
     &        0.5d0,dsig)
         if(yt.lt.0d0) call filld('yt asym. pt(ttb)>'//ttbcut,
     &        0.5d0,-dsig)
c yt asymmetry |Dy|<1
         if((yt.gt.0d0).and.(abs(yt).lt.1d0)) call filld(
     &        'yt asym. |Dy|<1 pt(ttb)>'//ttbcut,0.5d0,dsig)
         if((yt.lt.0d0).and.(abs(yt).lt.1d0)) call filld(
     &        'yt asym. |Dy|<1 pt(ttb)>'//ttbcut,0.5d0,-dsig)
c total |Dy|<1
         if(abs(yt).lt.1d0) call filld('total |Dy|<1 pt(ttb)>'//ttbcut,
     &        0.5d0,dsig)
c yt asymmetry |Dy|>1
         if((yt.gt.0d0).and.(abs(yt).ge.1d0)) call filld(
     &        'yt asym. |Dy|>1 pt(ttb)>'//ttbcut,0.5d0,dsig)
         if((yt.lt.0d0).and.(abs(yt).ge.1d0)) call filld(
     &        'yt asym. |Dy|>1 pt(ttb)>'//ttbcut,0.5d0,-dsig)
c total |Dy|>1
         if(abs(yt).ge.1d0) call filld('total |Dy|>1 pt(ttb)>'//ttbcut,
     &        0.5d0,dsig)
c yt asymmetry Mtt<450
         if((yt.gt.0d0).and.(mttbar.lt.450d0)) call filld(
     &        'yt asym. Mtt<450 pt(ttb)>'//ttbcut,0.5d0,dsig)
         if((yt.lt.0d0).and.(mttbar.lt.450d0)) call filld(
     &        'yt asym. Mtt<450 pt(ttb)>'//ttbcut,0.5d0,-dsig)
c total Mtt<450
         if(mttbar.lt.450d0) call filld('total Mtt<450 pt(ttb)>'/
     &        /ttbcut,0.5d0,dsig)
c yt asymmetry Mtt>450
         if((yt.gt.0d0).and.(mttbar.ge.450d0)) call filld(
     &        'yt asym. Mtt>450 pt(ttb)>'//ttbcut,0.5d0,dsig)
         if((yt.lt.0d0).and.(mttbar.ge.450d0)) call filld(
     &        'yt asym. Mtt>450 pt(ttb)>'//ttbcut,0.5d0,-dsig)
c total Mtt<450
         if(mttbar.ge.450d0) call filld('total Mtt>450 pt(ttb)>'/
     &        /ttbcut,0.5d0,dsig)
c top antitop charge asymmetry
         if(diffabseta.gt.0d0) call filld('t-tbar charge asym. pt(ttb)>'/
     &        /ttbcut,0.5d0,dsig)
         if(diffabseta.lt.0d0) call filld('t-tbar charge asym. pt(ttb)>'/
     &        /ttbcut,0.5d0,-dsig)
c mass of the pair
         call filld('ttbar mass pt(ttb)>'//ttbcut,mttbar,dsig)
c rapidity of the pair
         call filld('ttbar y pt(ttb)>'//ttbcut,yttbar,dsig)
c pt of the pair
         call filld('ttbar pt pt(ttb)>'//ttbcut,ptttbar,dsig)
c pt of the pair zoom
         call filld('ttbar pt zoom pt(ttb)>'//ttbcut,
     &        ptttbar,dsig)
c pt of top
         call filld('t pt pt(ttb)>'//ttbcut,ptt,dsig)
c pt of antitop
         call filld('tbar pt pt(ttb)>'//ttbcut,pttbar,dsig)
c top rapidity
         call filld('t y pt(ttb)>'//ttbcut,yt,dsig)
c antitop rapidity
         call filld('tbar y pt(ttb)>'//ttbcut,ytbar,dsig)
c top - antitop rapidity asymmetry
         call filld('t-tbar,y asym.  pt(ttb)>'//ttbcut,yt,dsig)
         call filld('t-tbar,y asym.  pt(ttb)>'//ttbcut,
     &        ytbar,-dsig)
c top - antitop pseudo-rapidity asymmetry
         call filld('t-tbar,eta asym.  pt(ttb)>'//ttbcut,
     &        etat,dsig)
         call filld('t-tbar,eta asym.  pt(ttb)>'//ttbcut,
     &        etatbar,-dsig)
c top - antitop charge asymmetry (using y)
         call filld('t-tbar, ch asym.(y)  pt(ttb)>'//ttbcut,
     &        abs(yt)-abs(ytbar),dsig)
c top - antitop charge asymmetry (using eta)
         call filld('t-tbar, ch asym.(eta)  pt(ttb)>'//ttbcut,
     &        diffabseta,dsig)
c top - antitop azimuthal distance
         call filld('t-tbar,Delta_phi pt(ttb)>'//ttbcut,
     &        deltaphittbar/pi,dsig)
c top - antitop Delta R   
         call filld('t-tbar,Delta_R   pt(ttb)>'//ttbcut,
     &        deltaRttbar,dsig)

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C          PLOTS INVOLVING JETS      
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c N jets
         call filld('Njets pt(ttb)>'//ttbcut,njets+0.5d0,dsig)

         deltaphij1ttbar=deltaphi(phijet(1),phittbar)
   
C--- consistency check, only works if tops decay semileptonically
c         if((whcprg.eq.'NLO   ').or.(whcprg.eq.'LHE   ')) then
c            if (abs(deltaphij1ttbar)/pi.lt.0.5d0) then
c               print *,"*************************************"
c               print *,"Event : ",nevhep
c               print *,"deltaphij1ttbar < pi/2 with only 1 jets"
c               print *," numjets ",njets
c               print *,deltaphij1ttbar,phijet(1),phittbar
c               call printleshouches
c               print *,"*************************************"
c            endif
c         endif

         deltaRj1ttbar=rsep_azi_y(pjet(1,1),ppairttbar)

         do mu=1,4
            psysttbarj(mu)=ppairttbar(mu)+pjet(mu,1)
         enddo
         pt2systtbarj=psysttbarj(1)**2+psysttbarj(2)**2
         if(pt2systtbarj.le.0d0)  pt2systtbarj=1d-10
         
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c  PLOTS INVOLVING HARDEST JET
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c (Leading non-b) jet pt
         call filld('pt1stjet pt(ttb)>'//ttbcut,ktjet(1),dsig)
         call filld('pt1stjet zoom pt(ttb)>'//ttbcut,
     &        ktjet(1),dsig)
         
c (Leading non-b) jet pt_rel
         call filld('pt_rel 1stjet pt(ttb)>'//ttbcut,
     &        ptreljet(1),dsig)
c (Leading non-b) jet y
         do icut=20,100,20
            if(ktjet(1).gt.icut) then
               write(jetcut,'(i3)') icut
               call filld('y1stjet, pt(jet)>'//jetcut//' pt(ttb)>'/
     &           /ttbcut,yjet(1),dsig)
            endif
         enddo
c (Leading non-b) jet y-yttbar
         do icut=20,100,20
            if(ktjet(1).gt.icut) then
               write(jetcut,'(i3)') icut
               call filld('y1stjet-y(ttbar),pt(jet)>'//jetcut/
     &              /' pt(ttb)>'//ttbcut,
     &              yjet(1)-yttbar,dsig)
            endif
         enddo
c (Leading non-b) jet phi-phittbar
         do icut=20,100,20
            if(ktjet(1).gt.icut) then
               write(jetcut,'(i3)') icut
               call filld('phi1stjet-phi(ttbar),pt(jet)>'//jetcut/
     &              /' pt(ttb)>'//ttbcut,
     &              deltaphij1ttbar/pi,dsig)
            endif
         enddo
c (Leading non-b) jet delta R jet-ttbar
         do icut=20,100,20
            if(ktjet(1).gt.icut) then
               write(jetcut,'(i3)') icut
               call filld('deltaR 1stjet-(ttbar),pt(jet)>'//jetcut/
     &              /' pt(ttb)>'//ttbcut,
     &              deltaRj1ttbar,dsig)
            endif
         enddo

c (Leading non-b) jet +ttbar system pt
         call filld('log10(pt) 1stjet-ttbar pt(ttb)>'//ttbcut,
     &        0.5d0*log10(pt2systtbarj),dsig)
         call filld('pt 1stjet-ttbar pt(ttb)>'//ttbcut,
     &        sqrt(pt2systtbarj),dsig)

         if (njets.lt.2) goto 777
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c  PLOTS INVOLVING NEXT-TO-HARDEST JET
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
         deltaRj2ttbar=rsep_azi_y(pjet(1,2),ppairttbar)
         deltaRj1j2=rsep_azi_y(pjet(1,1),pjet(1,2))
        
c (Next-to-Leading non-b) jet pt
         call filld('pt2ndjet pt(ttb)>'//ttbcut,ktjet(2),dsig)
         call filld('pt2ndjet (zoom) pt(ttb)>'//ttbcut,
     &        ktjet(2),dsig)

c (Next-to-Leading non-b) jet pt_rel
         call filld('pt_rel 2ndjet pt(ttb)>'//ttbcut,
     &        ptreljet(2),dsig)

c (Next-to-Leading non-b) jet y
         do icut=20,100,20
            if(ktjet(2).gt.icut) then
               write(jetcut,'(i3)') icut
               call filld('y2ndjet pt(jet)>'//jetcut//' pt(ttb)>'/
     &              /ttbcut,yjet(2),dsig)
            endif
         enddo
c (Next-to-Leading non-b) jet y-yttbar
         do icut=20,100,20
            if(ktjet(2).gt.icut) then
               write(jetcut,'(i3)') icut
               call filld('y2ndjet-y(ttbar) pt(jet)>'//jetcut/
     &              /' pt(ttb)>'//ttbcut,
     &              yjet(2)-yttbar,dsig)
            endif
         enddo
c (Next-to-Leading non-b) jet delta R jet-ttbar
         do icut=20,100,20
            if(ktjet(2).gt.icut) then
               write(jetcut,'(i3)') icut
               call filld('deltaR 2ndjet-(ttbar),pt(jet)>'//jetcut/
     &              /' pt(ttb)>'//ttbcut,
     &              deltaRj2ttbar,dsig)
            endif
         enddo

c  delta R (Leading non-b) jet - (Next-to-Leading non-b) jet
         do icut=20,100,20 
            if(ktjet(2).gt.icut) then
               write(jetcut,'(i3)') icut
               call filld('deltaR 1stjet-2ndjet,pt(jet)>'//jetcut/
     &              /' pt(ttb)>'//ttbcut,
     &              deltaRj1j2,dsig)
            endif
         enddo

         
 777     continue
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
C PLOTS FOR TRACKING NEGATIVE WEIGHTS
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c  ttbar pt         
         call filld('pt(ttb) pos-|neg| pt(ttb)>'//ttbcut,
     &        ptttbar,dsig)
         if (dsig0.gt.0d0) then
            call filld('pt(ttb) pos pt(ttb)>'//ttbcut,
     &           ptttbar,dsig)
         else
            call filld('pt(ttb) neg pt(ttb)>'//ttbcut,
     &           ptttbar,abs(dsig))
         endif
c  hardest jet pt         
         call filld('pt J1 pos-|neg| pt(ttb)>'//ttbcut,
     &        ktjet(1),dsig)
         if (dsig0.gt.0d0) then
            call filld('pt J1 pos pt(ttb)>'//ttbcut,
     &           ktjet(1),dsig)
         else
            call filld('pt J1 neg pt(ttb)>'//ttbcut,
     &           ktjet(1),abs(dsig))
         endif

         if (njets.lt.2) goto 888
c next-to-hardest jet pt
         call filld('pt J2 pos-|neg| pt(ttb) >'//ttbcut,
     &        ktjet(2),dsig)
         if (dsig0.gt.0d0) then
            call filld('pt J2 pos pt(ttb)>'//ttbcut,
     &           ktjet(2),dsig)
         else
            call filld('pt J2 neg pt(ttb)>'//ttbcut,
     &           ktjet(2),abs(dsig))
         endif
         
 888     continue
c leptons may not be there, in case we are called by the NLO
c section
         if(iiep.eq.0.and.iiem.eq.0) goto 999        
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c  PLOTS INVOLVING LEPTONS FROM TOP DECAY PRODUCTS
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c Lepton energy in top rest frame 
         if (iiep.gt.0) call filld('eem pt(ttb)>'//ttbcut,
     &        eep,dsig)
c Lepton cos theta in top rest frame 
         if (iiep.gt.0) call filld('costh1 costh2 pt(ttb)>'//ttbcut,
     &        cthep*cthem,dsig)
c Lepton azimuth in top rest frame. The origin is the top
c transverse direction
         if (iiep*iiem.gt.0) call filld('phi dec pt(ttb)>'//ttbcut,
     &        dphi/pi,dsig)

c Hardest lepton+ pt in lab. frame
         if (iiep.gt.0) call filld('lep+ pt(ttb)>'//ttbcut,
     &        ptep,dsig)
c Hardest lepton- pt in lab. frame
         if (iiem.gt.0) call filld('lep- pt(ttb)>'//ttbcut,
     &        ptem,dsig)
c Hardest lepton+ y in lab. frame
         if (iiep.gt.0) call filld('lep+ y pt(ttb)>'//ttbcut,
     &        yep,dsig)
c Hardest lepton- y in lab. frame
         if (iiem.gt.0) call filld('lep- y pt(ttb)>'//ttbcut,
     &        yem,dsig)
c Dilepton inv. mass
         if (iiep*iiem.gt.0)call filld('dilep inv. mass pt(ttb)>'/
     &        /ttbcut,mepem,dsig)
c Dilepton azimuthal sep.
         if (iiep*iiem.gt.0)call filld('dilep Delta phi pt(ttb)>'/
     &        /ttbcut,deltaphiepem/pi,dsig)
c Dilepton azimuthal sep. with mttcut
         if((iiep*iiem.gt.0).and.(mttbar.le.400)) then
            call filld('dilep Delta phi mtt < 400 pt(ttb)>'//ttbcut,
     &           deltaphiepem/pi,dsig)
         endif
 999     continue
      enddo ! end of ptttbcut do loop

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C PLOTS IN 0810.0452
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      call filld('DUW jet pt bin4TeV',ktjet(1),dsig)
      call filld('DUW jet pt bin4LHC',ktjet(1),dsig)
      call filld('DUW ttbar pt bin4TeV',ptttbar,dsig)
      call filld('DUW ttbar pt bin4LHC',ptttbar,dsig)
      call filld('DUW t pt bin4TeV',ptt,dsig)
      call filld('DUW t pt bin4LHC',ptt,dsig)
      call filld('DUW t eta bin4TeV',etat,dsig)
      call filld('DUW t eta bin4LHC',etat,dsig)
      call filld('DUW t y bin4TeV',yt,dsig)
      call filld('DUW t y bin4LHC',yt,dsig)
      call filld('DUW jet y bin4TeV',yjet(1),dsig)
      call filld('DUW jet y bin4LHC',yjet(1),dsig)

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C PLOTS FOR ASYMMETRY
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC      

      do icut=0,1000,200
         if(mttbar.gt.icut) then
            write(attcut,'(i4)') icut
            call filld('pt 1st jet , mtt>'//attcut,
     &           ktjet(1),dsig)
         endif
      enddo

      do icut=0,1000,200
         if(ktjet(1).gt.icut) then
            write(attcut,'(i4)') icut
            call filld('mtt,  pt 1stjet>'//attcut,
     &           mttbar,dsig)
         endif
      enddo
      
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC      
C PLOTS FOR MASS
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      m0= 170d0
      mstar= 2d0* m0/sqrt(ppairttbar(1)*pjet(1,1)+ppairttbar(2)*pjet(2
     $     ,1)+ppairttbar(3)*pjet(3,1)+ppairttbar(4)*pjet(4,1))
      call filld('m*',mstar,dsig)

      end

CCCCCCCCCC  Ancillary routines CCCCCCCCCCCCCCCCCCCCCCCCCCCC

      subroutine build_non_b_jets(njets,pjet,process,ptreljet)
c     arrays to reconstruct jets
      implicit none
      include 'hepevt.h'
      integer njets,requestedjets,nonbjets
      double precision pjet(4,*)
      character * 20 process
      integer maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=50)
      double precision ptrack(4,maxtrack),pj(4,maxjet),ptrj(maxjet)
      double precision R_jet,ptmin_jet
      common/cjetdefs/R_jet,ptmin_jet
      integer jetvec(maxtrack),itrackhep(maxtrack)
      integer ihep,j1,ntracks,jpart,jjet,mu,k
      integer ibtag(njets)
      double precision ptreljet(njets)
      double precision tmp,get_ptrel_jet
      external get_ptrel_jet,bson
      logical ini,bson,condition
      data ini/.true./
      save ini
      real(8), external :: powheginput
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
c     set up maximum number of requested jets
      requestedjets=njets
c
c     get valid tracks
c     set up arrays for jet finding
      do jpart=1,maxtrack
         do mu=1,4
            ptrack(mu,jpart)=0d0
         enddo
         jetvec(jpart)=0
      enddo      
      do jjet=1,requestedjets
         do mu=1,4
            pjet(mu,jjet)=0d0
            pj(mu,jjet)=0d0
         enddo
         ptreljet(jjet)=0d0
         ptrj(jjet)=0d0
      enddo
      j1=0
      ntracks=0
      njets=0
c     loop over final state particles to find jets 
      do ihep=1,nhep
         if((isthep(ihep).eq.1).and.
c     exclude leptons, gauge and higgs bosons and TOP quarks 
     1        (((abs(idhep(ihep)).lt.6).or.(abs(idhep(ihep)).ge.40))
c     but include gluons
     2        .or.(abs(idhep(ihep)).eq.21))) then
         
              condition=.true.
              if(WHCPRG.eq.'LHE   ') then
                 if((abs(idhep(ihep)).eq.5)
     4              .and.(abs(idhep(jmohep(1,ihep))).eq.6)) then
c     exclude final state b quarks whose mother is a top 
c     (needed in LHEF analysis of decayed event)          
                    condition=.false.
                 endif
              endif
              if (condition) then
                 if (ntracks.eq.maxtrack) then
                   write(*,*) 'Too many particles. Increase maxtrack.'//
     $                   ' PROGRAM ABORTS'
                    call exit(1)
                 endif
c     copy momenta to construct jets 
                 ntracks=ntracks+1
                 do mu=1,4
                    ptrack(mu,ntracks)=phep(mu,ihep)
                 enddo
                 itrackhep(ntracks)=ihep
              endif
         endif
      enddo
      if (ntracks.eq.0) then
         njets=0
         return
      endif
      if (process.eq."antikt") then
         if (ini) then
            R_jet=powheginput('R_jet')
            ptmin_jet=powheginput('ptmin_jet')
            write(*,*) '**************************************************'
            write(*,*) '**************************************************'
            write(*,*) '                JET PARAMETERS                    '
            write(*,*) '**************************************************'
            write(*,*) '**************************************************'
            write(*,*) '   inclusive anti-kt (FASTJET implementation): '
            write(*,*) '      jet radius ',  R_jet
            write(*,*) '      jet ptmin ',   ptmin_jet
            write(*,*) '**************************************************'
            write(*,*) '**************************************************'
            if((R_jet.le.0d0).or.(ptmin_jet.le.0d0)) then
               write(*,*) 
               write(*,*) '**************************************************'
               write(*,*) '**************************************************'
               write(*,*) '   ERROR: JET ALGORITHM NOT CORRECTLY DEFINED     '
               write(*,*) '    BOTH R_JET AND PTMIN_JET MUST BE POSITIVE     '
               write(*,*) '**************************************************'
               write(*,*) '**************************************************'
               call exit(-1)
            endif
            ini=.false.
         endif
c     FastJet wrapper is contained in the the file fastjet_wrap.cpp in the same directory of libvirtual
         call fastjet_kt(ptrack,ntracks,ptmin_jet,R_jet,
     $        -1d0,0,0,0,njets,pj,jetvec)

      else
         write(*,*) 'JET ANALYSIS TO USE UNKNOWN:',process
         call exit(1)
      endif

c  Adjust the jet number (if larger than requested)
      njets=min(njets,requestedjets)
c  otherwise skip analysis if no jets found

      if (njets.eq.0)  return
      
c    Evaluate pt_rel          
      do jjet=1,njets
         ptrj(jjet)=get_ptrel_jet(jjet,ntracks,ptrack,pj,jetvec)
      enddo

      do jjet=1,njets
         ibtag(jjet)=0
      enddo
      if(whcprg.ne.'NLO   ') then
c Find b decay products among tracks and fill non-b jet arrays
         do k=1,ntracks
            if(jetvec(k).gt.0.and.jetvec(k)<=njets) then
               if(bson(itrackhep(k))) then
                  ibtag(jetvec(k))=ibtag(jetvec(k))+1
               endif
            endif
         enddo
      endif
      nonbjets=0
      do jjet=1,njets
         if(ibtag(jjet).eq.0) then
            nonbjets=nonbjets+1
            do mu=1,4
                pjet(mu,nonbjets)=pj(mu,jjet)
            enddo
            ptreljet(nonbjets)=ptrj(jjet)
         endif
      enddo
      
      
c     set output value of njets
      njets=nonbjets

      

c$$$c check consistency ( CAVEAT it only works for of E-scheme recombination )
c$$$      do k=1,ntracks
c$$$         if(jetvec(k).gt.0) then
c$$$            do mu=1,4
c$$$               pj(mu,jetvec(k))=pj(mu,jetvec(k))+ptrack(mu,k)
c$$$            enddo
c$$$         endif
c$$$      enddo
c$$$      tmp=0
c$$$      do jjet=1,njets
c$$$         do mu=1,4
c$$$            tmp=tmp+abs(pj(mu,jjet)-pjet(mu,jjet))
c$$$         enddo
c$$$      enddo
c$$$      if(tmp.gt.1d-4) then
c$$$         write(*,*) ' bug!',tmp,njets
c$$$         do jjet=1,njets
c$$$            write(*,*)
c$$$            write(*,'(5(d10.4,1x))') (pjet(k,jjet),k=1,4)
c$$$            write(*,*) "--------------------------------"
c$$$            write(*,'(5(d10.4,1x))') (pj(k,jjet),k=1,4)
c$$$            write(*,*)
c$$$         enddo
c$$$         stop
c$$$      endif

      end
      
 
      function idigit(k,l)
      implicit none
      integer idigit,k,l
      idigit=abs(mod(l,10**k)/10**(k-1))
      end

      subroutine getrapidity(p,y)
      implicit none
      double precision p(4),y
      y=0.5d0*log((p(4)+p(3))/(p(4)-p(3)))
      end

      function getrapidity0(p)
      implicit none
      double precision p(0:3),getrapidity0
      getrapidity0=0.5d0*log((p(0)+p(3))/(p(0)-p(3)))
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


      function get_ptrel_jet(ijet,ntracks,ptrack,pjet,jetvec)
      implicit none
      include 'hepevt.h'
      double precision pjet(4,*),pjetin(0:3),pjetout(0:3),beta,vec(3)
      integer maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=50)
      double precision ptrack(4,maxtrack),ptrackin(0:3),ptrackout(0:3)
      double precision ptrel,get_ptrel,get_ptrel_jet
      external get_ptrel
      integer jetvec(maxtrack),ntracks
      integer ijet,mu,i
      do mu=1,3
         pjetin(mu) = pjet(mu,ijet)
      enddo
      pjetin(0) = pjet(4,ijet)         
      vec(1)=0d0
      vec(2)=0d0
      vec(3)=1d0
      beta = -pjet(3,ijet)/pjet(4,ijet)
      call mboost(1,vec,beta,pjetin,pjetout)         
c     write(*,*) pjetout
      ptrel = 0
      do i=1,ntracks
         if (jetvec(i).eq.ijet) then
            do mu=1,3
               ptrackin(mu) = ptrack(mu,i)
            enddo
            ptrackin(0) = ptrack(4,i)
            call mboost(1,vec,beta,ptrackin,ptrackout) 
            ptrel = ptrel + get_ptrel(ptrackout,pjetout)
         endif
      enddo
      get_ptrel_jet=ptrel
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


      subroutine ptyetaphi(p,pt,y,eta,phi)
      implicit none
      double precision p(4),pt,y,eta,phi
      double precision pp,tiny
      parameter (tiny=1d-12)
      pt=sqrt(p(1)**2+p(2)**2)
      y=log((p(4)+p(3))/(p(4)-p(3)))/2
      pp=sqrt(pt**2+p(3)**2)*(1+tiny)
      eta=log((pp+p(3))/(pp-p(3)))/2
      phi=atan2(p(2),p(1))
      end

      subroutine getktyphi(njets,pjet,ktjet,yjet,phijet)
      implicit none
      integer njets,j
      double precision pjet(4,njets),ktjet(njets),yjet(njets)
     $     ,phijet(njets)
      do j=1,njets
         ktjet(j)=sqrt(pjet(1,j)**2+pjet(2,j)**2)        
         yjet(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         phijet(j)=atan2(pjet(2,j),pjet(1,j))
      enddo
      end

      subroutine decvariables(pdec0,ppart0,edec,cthdec,phidec)
      implicit none
      include 'pwhg_math.h'
      double precision pdec0(4),ppart0(4),edec,cthdec,phidec
      double precision pdec(0:3),ppart(0:3)
      double precision vec(3),beta,pt
      integer mu
      do mu=1,3
         pdec(mu)=pdec0(mu)
         ppart(mu)=ppart0(mu)
      enddo
      pdec(0)=pdec0(4)
      ppart(0)=ppart0(4)
      vec(1)=0
      vec(2)=0
      vec(3)=-1
      beta=ppart(3)/ppart(0)
      call mboost(1,vec,beta,pdec,pdec)
      call mboost(1,vec,beta,ppart,ppart)
      pt=sqrt(ppart(1)**2+ppart(2)**2)
      vec(1)=ppart(1)/pt
      vec(2)=ppart(2)/pt
      vec(3)=0
      beta=-pt/ppart(0)
      call mboost(1,vec,beta,pdec,pdec)
      call mboost(1,vec,beta,ppart,ppart)
      edec=pdec(0)
      cthdec=pdec(3)/sqrt(pdec(1)**2+pdec(2)**2+pdec(3)**2)
      phidec=atan2(pdec(2),pdec(1))-atan2(vec(2),vec(1))
c bring it back between -pi and pi
      phidec=phidec-nint(phidec/(2*pi))*2*pi
      end


      logical function is_lepton(j)
      implicit none
      integer j
      is_lepton=(j.eq.11).or.(j.eq.13).or.(j.eq.15)
      end

      logical function is_antilepton(j)
      implicit none
      integer j
      is_antilepton=(j.eq.-11).or.(j.eq.-13).or.(j.eq.-15)
      end
      

      logical function bson(j)
      implicit none
      integer J
      include 'hepevt.h'
      integer jcurr,oldjcurr
      logical bhadr
      jcurr=j
      if(jcurr.eq.0) then
         bson=.false.
         return
      endif
c     check that the mother of the b quark is a top quark to avoid
c     mistaking the b quarks coming from the hard scattering. this
c     may happen in LHEF level analysis with decayed top
      if((abs(idhep(jcurr)).eq.5).and.
     $     (abs(idhep(jmohep(1,jcurr))).eq.6)) then
         bson=.true.
c     check it should never enter here after a shower
         if (isthep(jcurr).ne.1) stop "PROBLEM IN bson"
         return
      endif
 1    continue
      if(jcurr.eq.0) then
         bson=.false.
         return
      endif
      bson=.false.
      if(bhadr(idhep(jcurr))) then
         bson=.true.
         return
      endif
c      print *,jcurr,idhep(jcurr),jmohep(1,jcurr)
      oldjcurr=jcurr
      jcurr=jmohep(1,jcurr)  
      if (jmohep(1,jcurr).eq.oldjcurr) then
c     avoid entering an infinite loop 
c     (it happens with HERWIG )
         bson=.false.
         return
      endif
      if (jmohep(1,jcurr).eq.0) then
          bson=.false.
         return
      endif
      goto 1
      end

      logical function bhadr(idhep)
      implicit none
      integer idhep
      integer i1,i2,idigit
      i1=mod(idigit(1,idhep),2)
c if the rightmost digit is an odd number it is a bottomed meson (1,3,5,7)
c otherwise it is a bottomed baryon
      if(i1.eq.1) then
c if is a bottomed meson the 3rd rightmost digit should be 5
         i2=idigit(3,idhep)
      elseif(i1.eq.0) then
c if is a bottomed barion the 4th rightmost digit should be 5
         i2=idigit(4,idhep)
      endif
      if(i2.eq.5) then
         bhadr=.true.
      else
         bhadr=.false.
      endif
      end

      
      logical function sonofidhep(id,j,posj)
      implicit none
      integer id,j,posj
      include 'hepevt.h'
      integer jcurr,oldjcurr
      logical bhadr
      jcurr=j
      if(jcurr.eq.0) then
         sonofidhep=.false.
         posj=0
         return
      endif
 1    continue
      if(jcurr.eq.0) then
         sonofidhep=.false.
         posj=0
         return
      endif
      sonofidhep=.false.
      if(idhep(jcurr).eq.id) then
         sonofidhep=.true.
         posj=jcurr
         return
      endif
      oldjcurr=jcurr
      jcurr=jmohep(1,jcurr)
      if (jcurr.eq.0) then
c     avoid entering an infinite loop
c     (it happens with PYTHIA8)
         sonofidhep=.false.
         return
      endif  
      if (jmohep(1,jcurr).eq.oldjcurr) then
c     avoid entering an infinite loop
c     (it happens with HERWIG)
         sonofidhep=.false.
         return
      endif
      goto 1
      end


c     calculate the separation in the lego plot between the two momenta p1 and p2 
c     in azi and rapidity
      function rsep_azi_y(p1,p2)
      implicit none
      double precision rsep_azi_y,p1(*),p2(*)
      double precision y1,phi1,y2,phi2,kt1,kt2
      double precision deltaphi,eta1,eta2
      external deltaphi
      call ptyetaphi(p1,kt1,y1,eta1,phi1)
      call ptyetaphi(p2,kt2,y2,eta2,phi2)
      rsep_azi_y = sqrt( (y1-y2)**2 + (deltaphi(phi1,phi2))**2 )
      end


      function deltaphi(phi1,phi2)
      implicit none
      double precision deltaphi,phi1,phi2
      double precision pi,pi2
      parameter(pi = 3.141592653589793D0, pi2 = 9.869604401089358D0)
      deltaphi = abs(phi1-phi2)
c make sure it is below 2 pi
c      delphi=delphi-2*pi*int(delphi/(2*pi))
      if (deltaphi.gt.pi) then
         deltaphi = 2*pi-deltaphi
      endif
      if (deltaphi.lt.0 .or. deltaphi.gt.pi) then
         print*,' problem in deltaphi = ',deltaphi
      endif
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

      

