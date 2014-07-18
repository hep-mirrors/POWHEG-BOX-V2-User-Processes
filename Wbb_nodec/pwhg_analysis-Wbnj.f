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
      integer i,j
      real * 8 dy,dylep,dpt,dr
      character * 1 cnum(9)
      data cnum/'1','2','3','4','5','6','7','8','9'/
      integer nptmin
      parameter (nptmin=3)
      character * 4 cptmin(nptmin)
      real * 8 ptminarr(nptmin)
      data cptmin/  '-000',  '-015',  '-025'/
      data ptminarr/ 0d0,  15d0,    25d0/

      integer nptbmin
      parameter (nptbmin=2)
      character * 4 cptbmin(nptbmin)
      real * 8 ptbminarr(nptbmin)
      data cptbmin/  '-000',  '-015'/
      data ptbminarr/    0d0,    15d0/

      common/infohist/ptminarr,ptbminarr,cnum,cptmin,cptbmin
      save /infohist/
      real * 8 powheginput
      external powheginput

      call inihists

      dy=0.5d0
      dylep=0.4d0
      dpt=10d0
      dr=0.2d0

      call bookupeqbins('j1-pt no cuts',0.5d0,0d0,20d0)
      call bookupeqbins('j2-pt no cuts',0.5d0,0d0,20d0)
      call bookupeqbins('b1-pt no cuts',0.5d0,0d0,20d0)

      do j=1,nptbmin
      do i=1,nptmin
      call bookupeqbins('sigtot Wbb'//cptmin(i)//cptbmin(j),
     $         1d0,0.5d0,1.5d0)

      call bookupeqbins('Njet excl'//cptmin(i)//cptbmin(j),
     $     1d0,-0.5d0,5.5d0)

      call bookupeqbins('W-y'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('W-eta'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('W-pt'//cptmin(i)//cptbmin(j),dpt,0d0,400d0)
      call bookupeqbins('W-m'//cptmin(i)//cptbmin(j),5d0,0d0,200d0)

      call bookupeqbins('lept-eta'//cptmin(i)//cptbmin(j),dylep,
     $     -4d0,4d0)
      call bookupeqbins('lept-pt'//cptmin(i)//cptbmin(j),dpt,0d0,500d0)
      call bookupeqbins('miss-pt'//cptmin(i)//cptbmin(j),dpt,0d0,500d0)

      call bookupeqbins('b1-y'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('b1-eta'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('b1-pt'//cptmin(i)//cptbmin(j),dpt,0d0,400d0)
      call bookupeqbins('b1-ptzoom'//cptmin(i)//cptbmin(j),2d0,
     $     1d0,151d0)
      call bookupeqbins('b1-ptzoom2'//cptmin(i)//cptbmin(j),
     $     0.5d0,0d0,20d0)
      call bookupeqbins('b1-m'//cptmin(i)//cptbmin(j),dpt,0d0,400d0) 

      call bookupeqbins('b2-y'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('b2-eta'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('b2-pt'//cptmin(i)//cptbmin(j),dpt,0d0,400d0)
      call bookupeqbins('b2-ptzoom'//cptmin(i)//cptbmin(j),
     $     2d0,1d0,151d0)
      call bookupeqbins('b2-ptzoom2'//cptmin(i)//cptbmin(j),
     $     0.5d0,0d0,20d0)
      call bookupeqbins('b2-m'//cptmin(i)//cptbmin(j),dpt,0d0,400d0) 

      call bookupeqbins('j1-y'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('j1-eta'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('j1-pt'//cptmin(i)//cptbmin(j),dpt,0d0,400d0)
      call bookupeqbins('j1-ptzoom'//cptmin(i)//cptbmin(j),
     $     2d0,1d0,151d0)
      call bookupeqbins('j1-ptzoom2'//cptmin(i)//cptbmin(j),
     $     0.5d0,0d0,20d0)
      call bookupeqbins('j1-m'//cptmin(i)//cptbmin(j),dpt,0d0,400d0) 

      call bookupeqbins('j2-y'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('j2-eta'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('j2-pt'//cptmin(i)//cptbmin(j),dpt,0d0,400d0)
      call bookupeqbins('j2-ptzoom'//cptmin(i)//cptbmin(j),
     $     2d0,1d0,151d0)
      call bookupeqbins('j2-ptzoom2'//cptmin(i)//cptbmin(j),
     $     0.5d0,0d0,20d0)
      call bookupeqbins('j2-m'//cptmin(i)//cptbmin(j),dpt,0d0,400d0) 

      call bookupeqbins('Wbb-y'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('Wbb-eta'//cptmin(i)//cptbmin(j),dy,-5d0,5d0)
      call bookupeqbins('Wbb-pt'//cptmin(i)//cptbmin(j),dpt,0d0,400d0)
      call bookupeqbins('Wbb-ptzoom'//cptmin(i)//cptbmin(j),
     $     2d0,1d0,151d0)
      call bookupeqbins('Wbb-ptzoom2'//cptmin(i)//cptbmin(j),
     $     0.5d0,0d0,20d0)

      enddo
      enddo

      call bookupeqbins('XS Wbj',1d0,0.5d0,1.5d0)
      call bookupeqbins('XS Wbb',1d0,0.5d0,1.5d0)
      call bookupeqbins('XS W(bb)j',1d0,0.5d0,1.5d0)
      call bookupeqbins('XS Wbjj',1d0,0.5d0,1.5d0)
      call bookupeqbins('XS Wbbj',1d0,0.5d0,1.5d0)
      call bookupeqbins('XS Wbbjj',1d0,0.5d0,1.5d0)
      call bookupeqbins('XS W(bb)jj',1d0,0.5d0,1.5d0)
      call bookupeqbins('XS WbjX',1d0,0.5d0,1.5d0)
      call bookupeqbins('XS WbbX',1d0,0.5d0,1.5d0)
      call bookupeqbins('XS W(bb)jX',1d0,0.5d0,1.5d0)
      call bookupeqbins('XS WbbjX',1d0,0.5d0,1.5d0)
      
      end
     
      subroutine analysis(dsig0)
      implicit none
      real * 8 dsig0
      include 'hepevt.h'
      include 'nlegborn.h'
c      include 'pwhg_flst.h'
      include 'pwhg_math.h' 
c      include 'pwhg_rad.h' 
      include 'pwhg_weights.h'
      include 'pwhg_bookhist-multi.h'
c      include 'pwhg_flg.h'
c      include 'LesHouches.h'
      integer isthep_loc(NMXHEP)  ! local copy of isthep
      logical ini
      data ini/.true./
      save ini
      integer   maxjet,njets,numjets,ntracks
      parameter (maxjet=2048)
      real * 8 pj(4,maxjet)
      integer maxtrack
      parameter (maxtrack=2048)
      real * 8  ptrack(4,maxtrack)
      integer   jetvec(maxtrack),ihep_of_track(maxtrack)
      character * 1 cnum(9)
      integer nptmin
      parameter (nptmin=3)
      character * 4 cptmin(nptmin)
      real * 8 ptminarr(nptmin) 
      integer nptbmin
      parameter (nptbmin=2)
      character * 4 cptbmin(nptbmin)
      real * 8 ptbminarr(nptbmin)     
      common/infohist/ptminarr,ptbminarr,cnum,cptmin,cptbmin
      save /infohist/
      real * 8 ptb1min,ptb2min,ybmax,yjmax
      integer j,i,k
c     we need to tell to this analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      real * 8 pw(4)
      real * 8 y,eta,pt,m
      integer ihep
      real * 8 powheginput,dotp
      external powheginput,dotp
      integer idvecbos,Vdecmod,idl,idnu
      save idvecbos,Vdecmod,idl,idnu
      real * 8 pvl(4),plep(4),pWbb(4)
      integer mu,ilep,ivl,nlep,nvl
      real * 8 ptminfastjet,R,palg
      integer  minlo
      save minlo
      data minlo/0/
      character * 20 processid
c      real * 8 rescfac1,rescfac2
c      common /crescfac/rescfac1,rescfac2
      real * 8 dsig(maxmulti)
      integer nweights
      logical inimulti
      data inimulti/.true./
      save inimulti
      logical inicuts
      data inicuts/.true./
      save inicuts
      logical is_B_hadron,is_BBAR_hadron
      external is_B_hadron,is_BBAR_hadron
      integer jetinfo(0:maxjet),id
      real * 8 pjet(4,maxjet),pbjet(4,maxjet),pbbjet(4,maxjet)
      integer njet,nbjet,nbbjet
      real * 8 ptbmin,etamax, ptjmin,etamaxWbb
      real * 8 pjout(4,maxjet),pbjout(4,maxjet),pbbjout(4,maxjet)
      integer njout,nbjout,nbbjout
      integer minnjet
      real * 8 inv_branch
      save etamax, ptjmin

      if(inimulti) then
         if(weights_num.eq.0) then
            call setupmulti(1)
         else
            call setupmulti(weights_num)
         endif
         inimulti=.false.
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
      
      if (ini) then
         idvecbos=powheginput('idvecbos')
         Vdecmod=powheginput('vdecaymode')

         if (WHCPRG.ne.'NLO   ') then
            if (Vdecmod.eq.1) then
               idl=-11
               idnu=12
            elseif (Vdecmod.eq.2) then
               idl=-13
               idnu=14
            elseif (Vdecmod.eq.3) then
               idl=-15
               idnu=16
            endif
         else
            idl=-11
            idnu=12           
         endif
c     if idvecbos=24 idl and idnu are ok
         if (idvecbos.eq.-24) then
            idl = -idl
            idnu= -idnu
         endif

         minlo=powheginput('#minlo')
         if (minlo.eq.1) then
            processid='Wbb'
            write(*,*) '***********   MINLO ACTIVE   ************'
         else
            include 'pwhg_processid.h'
         endif
         ini=.false.
      endif

c     make a local copy of status of particles
      do ihep=1,nhep  
         isthep_loc(ihep) = isthep(ihep)
      enddo

      ilep = 0
      ivl  = 0
      nlep=0
      nvl=0
      do ihep=1,nhep
         if (idhep(ihep).eq.idl .and. isthep_loc(ihep).eq.1) then
c     lepton found
            ilep=ihep
            nlep=nlep+1
         elseif (idhep(ihep).eq.idnu .and. isthep_loc(ihep).eq.1) then
c     neutrino found
            ivl=ihep
            nvl=nvl+1
         endif
      enddo



      if (WHCPRG.ne.'NLO   ') then      
         if(nvl.ne.1.and.nlep.ne.1) then
            write(*,*) 'Problems with leptons from W decay'
            write(*,*) 'nvl= ',nvl, 'nlep= ',nlep
            write(*,*) 'PROGRAM ABORT'
            call pwhg_exit(-1)
         endif
         
         do mu=1,4
            plep(mu) = phep(mu,ilep)
            pvl(mu)  = phep(mu,ivl)
         enddo 
         
c     change status of l and vu 
         isthep_loc(ilep) = 10000
         isthep_loc(ivl)  = 10000
C     W momentum
         pw = plep + pvl
         
      else        
c*******************************************************************
c     THIS IS TRUE ONLY at  NLO level
c*******************************************************************
c     W momentum
         isthep_loc(3) = 10000
         ilep=3
         ivl=3
         nlep=1
         nvl=1
         do mu=1,4
            pw(mu)=phep(mu,3)
c     we fill the following momenta with the W momentum, otherwise the analysis
c     routines give a warning message            
            plep(mu)= phep(mu,ilep)
            pvl(mu) = phep(mu,ivl)
         enddo

C**************************************************************************************         
C**************************************************************************************         
C     N.B. We plot the results MULTIPLIED by the branching fraction !!!!!!!!!
C**************************************************************************************         
C**************************************************************************************         
c     branching = 10.8d-2
         dsig =dsig*10.8d-2         
      endif


      ntracks=0
      jetvec = 0
      numjets=0
c     loop over final state particles, excluding the already found lepton and neutrino
      do ihep=1,nhep
         if (isthep_loc(ihep).eq.1) then
            if (ntracks.eq.maxtrack) then
               write(*,*) 'Too many particles. Increase maxtrack!'
               write(*,*) ' PROGRAM ABORTS'
               call pwhg_exit(-1)
            endif
c     copy momenta to be passed to jet algorithm
            ntracks=ntracks+1
            ihep_of_track(ntracks)=ihep
            do mu=1,4
               ptrack(mu,ntracks)=phep(mu,ihep)
            enddo
         endif
      enddo
      
      if (ntracks.eq.0) then
         numjets=0
      else
         palg = 0d0             ! Alg: 1 = kt, -1 = antikt, 0 C/A
         R    = 0.7d0           ! Radius parameter
         ptminfastjet = 0d0     ! Pt min
         call fastjetppgenkt(ptrack,ntracks,R,palg,ptminfastjet,
     $        pj,numjets,jetvec)         
      endif

c     jetinfo :  0  no b
c             :  1  b
c             : -1  bbar
c             :  2  b and bbar
c     jetinfo(0) = NULL
c     find in which jet the b's ended up
      jetinfo=0
      do i=1,ntracks
         id=idhep(ihep_of_track(i))
         if (is_B_hadron(id)) then
            if (jetinfo(jetvec(i)).eq.0) then
c     this jet does not contain the bbar
               jetinfo(jetvec(i)) = 1               
            else
c     this jet does contain already the bbar
               jetinfo(jetvec(i)) = 2
            endif               
         elseif (is_BBAR_hadron(id)) then
            if (jetinfo(jetvec(i)).eq.0) then
c     this jet does not contain the b
               jetinfo(jetvec(i)) = -1               
            else
c     this jet does contain already the b
               jetinfo(jetvec(i)) = 2
            endif               
         endif
      enddo

      njet=0
      nbjet=0
c     number of jets where the b and bbar have been assembled in the same jet
      nbbjet=0
      pjet=0d0
      pbjet=0d0
      pbbjet=0d0
      do i=1,numjets
         if (jetinfo(i).eq.0) then
            njet=njet+1
            do mu=1,4
               pjet(mu,njet)=pj(mu,i)
            enddo
         elseif (abs(jetinfo(i)).eq.1) then
c     in principle we could distiguish b and bbar partons/hadrons. But we are not interested in this
            nbjet=nbjet+1
            do mu=1,4
               pbjet(mu,nbjet)=pj(mu,i)
            enddo
         elseif (jetinfo(i).eq.2) then
c     this jet contains a b and a bbar
            nbbjet=nbbjet+1
            do mu=1,4
               pbbjet(mu,nbbjet)=pj(mu,i)
            enddo
         endif
      enddo

c      if (nbjet.eq.1) then
c         write(*,*) njet,nbjet,nbbjet
c      endif



      if (njet.ge.1) then
         call getyetaptmass(pjet(:,1),y,eta,pt,m)
         call filld('j1-pt no cuts',pt,dsig)
      endif
      if (njet.ge.2) then
         call getyetaptmass(pjet(:,2),y,eta,pt,m)
         call filld('j2-pt no cuts',pt,dsig)
      endif
      if (nbjet.ge.1) then 
         call getyetaptmass(pbjet(:,1),y,eta,pt,m)
         call filld('b1-pt no cuts',pt,dsig)
      endif

c     branching = 10.8d-2
c     1/branching = 9.259259259
      inv_branch=9.259259259d0

      if (nbjet.eq.2) then
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC      
CCCCCCCCCC                   W b b analysis
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC            
      do j=1,nptbmin      
      do i=1,nptmin      
         etamaxWbb=100d0
         call applycuts(pjet,njet,ptminarr(i),etamaxWbb,pjout,njout)
         call applycuts(pbjet,nbjet,ptbminarr(j),etamaxWbb,pbjout,
     $        nbjout)
c        call applycuts(pbbjet,nbbjet,ptminarr(i),etamaxWbb,pbbjout,nbbjout)

         if (nbjout.ne.2) cycle         
                 
         if (processid.ne."Wbb") then
            if (njout.lt.1) cycle 
         endif
         

         call filld('sigtot Wbb'//cptmin(i)//cptbmin(j),1d0,dsig)                  

         if (njout.eq.0) then
            call filld('Njet excl'//cptmin(i)//cptbmin(j),0d0,dsig)
         elseif (njout.eq.1) then
            call filld('Njet excl'//cptmin(i)//cptbmin(j),1d0,dsig)
         elseif (njout.eq.2) then
            call filld('Njet excl'//cptmin(i)//cptbmin(j),2d0,dsig)
         endif
c     W
         call getyetaptmass(pw,y,eta,pt,m)
         call filld('W-y'//cptmin(i)//cptbmin(j),y,dsig)
         call filld('W-eta'//cptmin(i)//cptbmin(j),eta,dsig)
         call filld('W-pt'//cptmin(i)//cptbmin(j),pt,dsig)
         call filld('W-m'//cptmin(i)//cptbmin(j),m,dsig)

c     lepton
         call getyetaptmass(plep,y,eta,pt,m)
         call filld('lept-eta'//cptmin(i)//cptbmin(j),eta,dsig)
         call filld('lept-pt'//cptmin(i)//cptbmin(j),pt,dsig)

c     neutrino
         call getyetaptmass(pvl,y,eta,pt,m)
         call filld('miss-pt'//cptmin(i)//cptbmin(j),pt,dsig)

c     hardest b jet
         call getyetaptmass(pbjout(:,1),y,eta,pt,m)
         call filld('b1-y'//cptmin(i)//cptbmin(j),y,dsig)
         call filld('b1-eta'//cptmin(i)//cptbmin(j),eta,dsig)
         call filld('b1-pt'//cptmin(i)//cptbmin(j),pt,dsig)
         call filld('b1-ptzoom'//cptmin(i)//cptbmin(j),pt,dsig)
         call filld('b1-ptzoom2'//cptmin(i)//cptbmin(j),pt,dsig)
         call filld('b1-m'//cptmin(i)//cptbmin(j),m,dsig)      

c     next-to-hardest b jet
         call getyetaptmass(pbjout(:,2),y,eta,pt,m)
         call filld('b2-y'//cptmin(i)//cptbmin(j),y,dsig)
         call filld('b2-eta'//cptmin(i)//cptbmin(j),eta,dsig)
         call filld('b2-pt'//cptmin(i)//cptbmin(j),pt,dsig)
         call filld('b2-ptzoom'//cptmin(i)//cptbmin(j),pt,dsig)
         call filld('b2-ptzoom2'//cptmin(i)//cptbmin(j),pt,dsig)
         call filld('b2-m'//cptmin(i)//cptbmin(j),m,dsig)
         
         if (njout.ge.1) then
c     hardest jet plots
            call getyetaptmass(pjout(:,1),y,eta,pt,m)
            call filld('j1-y'//cptmin(i)//cptbmin(j),y,dsig)
            call filld('j1-eta'//cptmin(i)//cptbmin(j),eta,dsig)
            call filld('j1-pt'//cptmin(i)//cptbmin(j),pt,dsig)
            call filld('j1-ptzoom'//cptmin(i)//cptbmin(j),pt,dsig)
            call filld('j1-ptzoom2'//cptmin(i)//cptbmin(j),pt,dsig)
            call filld('j1-m'//cptmin(i)//cptbmin(j),m,dsig)
         endif

         if (njout.ge.2) then
c     next-to-hardest jet         
            call getyetaptmass(pjout(:,2),y,eta,pt,m)
            call filld('j2-y'//cptmin(i)//cptbmin(j),y,dsig)
            call filld('j2-eta'//cptmin(i)//cptbmin(j),eta,dsig)
            call filld('j2-pt'//cptmin(i)//cptbmin(j),pt,dsig)
            call filld('j2-ptzoom'//cptmin(i)//cptbmin(j),pt,dsig)
            call filld('j2-ptzoom2'//cptmin(i)//cptbmin(j),pt,dsig)
            call filld('j2-m'//cptmin(i)//cptbmin(j),m,dsig)
         endif

         do mu=1,4
            pwbb(mu) = pw(mu) + pbjout(mu,1)+ pbjout(mu,2)
         enddo
         call getyetaptmass(pwbb,y,eta,pt,m)
         call filld('Wbb-y'//cptmin(i)//cptbmin(j),y,dsig)
         call filld('Wbb-eta'//cptmin(i)//cptbmin(j),eta,dsig)
         call filld('Wbb-pt'//cptmin(i)//cptbmin(j),pt,dsig)
         call filld('Wbb-ptzoom'//cptmin(i)//cptbmin(j),pt,dsig)
         call filld('Wbb-ptzoom2'//cptmin(i)//cptbmin(j),pt,dsig)
      enddo
      enddo
      endif   ! nbjet=2
      


 111  continue

      if (nbjet.ge.1.or.nbbjet.gt.0) then
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC      
CCCCCCCCCC                   W b analysis
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC      
c     apply Campbell et al. cuts: hep-ph/0611348.  Algo: palg = 0 

         if (inicuts) then
            if (powheginput("ebeam1").eq.7000d0) then
c     LHC cuts
               write(*,*) 'CEMW LHC cuts'               
               ptjmin = 25d0
               etamax= 2.5d0
            elseif (powheginput("ebeam1").eq.980d0) then
c     TeVatron cuts
               write(*,*) 'CEMW TeV cuts'
               ptjmin = 15d0
               etamax= 2d0
            else
               ptjmin = 0d0
               etamax= 100d0
            endif
            inicuts=.false.
         endif
      
         call applycuts(pjet,njet,ptjmin,etamax,pjout,njout)
         call applycuts(pbjet,nbjet,ptjmin,etamax,pbjout,nbjout)
         call applycuts(pbbjet,nbbjet,ptjmin,etamax,pbbjout,nbbjout)

         if (nbjout.eq.1.and.njout.eq.1) then
            call filld('XS Wbj',1d0,dsig*inv_branch)
         endif
         if (nbjout.eq.2.and.njout.eq.0) then
            call filld('XS Wbb',1d0,dsig*inv_branch)
         endif
         if (nbbjout.eq.1.and.njout.eq.1) then
            call filld('XS W(bb)j',1d0,dsig*inv_branch)
         endif
         if (nbjout.eq.1.and.njout.eq.2) then
            call filld('XS Wbjj',1d0,dsig*inv_branch)
         endif
         if (nbjout.eq.2.and.njout.eq.1) then
            call filld('XS Wbbj',1d0,dsig*inv_branch)
         endif
         if (nbjout.eq.2.and.njout.eq.2) then
            call filld('XS Wbbjj',1d0,dsig*inv_branch)
         endif
         if (nbbjout.eq.1.and.njout.eq.2) then
            call filld('XS W(bb)jj',1d0,dsig*inv_branch)
         endif
         if (nbjout.eq.1.and.njout.ge.1) then
            call filld('XS WbjX',1d0,dsig*inv_branch)
         endif
         if (nbjout.eq.2.and.njout.ge.1) then
            call filld('XS WbbjX',1d0,dsig*inv_branch)
         endif
         if (nbjout.eq.2.and.njout.ge.0) then
            call filld('XS WbbX',1d0,dsig*inv_branch)
         endif
         if (nbbjout.ge.1.and.njout.ge.1) then
            call filld('XS W(bb)jX',1d0,dsig*inv_branch)
         endif

      endif


      end




c      subroutine yetaptmassplot(p,dsig,prefix)
c      implicit none
c      real * 8 p(4),dsig
c      character *(*) prefix
c      real * 8 y,eta,pt,m
c      call getyetaptmass(p,y,eta,pt,m)
c      call filld(prefix//'-y',y,dsig)
c      call filld(prefix//'-eta',eta,dsig)
c      call filld(prefix//'-pt',pt,dsig)
c      call filld(prefix//'-m',m,dsig)
c      end

      subroutine deltaplot(p1,p2,dsig,prefix,postfix)
      implicit none
      real * 8 p1(4),p2(4),dsig(7)
      character *(*) prefix,postfix
      real * 8 dy,deta,delphi,dr
      call getdydetadphidr(p1,p2,dy,deta,delphi,dr)
      call filld(prefix//'-dy'//postfix,dy,dsig)
      call filld(prefix//'-deta'//postfix,deta,dsig)
      call filld(prefix//'-delphi'//postfix,delphi,dsig)
      call filld(prefix//'-dr'//postfix,dr,dsig)
      end

      subroutine getyetaptmass(p,y,eta,pt,mass)
      implicit none
      real * 8 p(4),y,eta,pt,mass
      call pwhg_getrapidity(p,y)      
      pt=sqrt(p(1)**2+p(2)**2)
      call pwhg_getpseudorapidity(p,eta)
      call pwhg_getinvmass(p,mass)
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


      subroutine sortbypt(n,iarr)
      implicit none
      integer n,iarr(n)
      include 'hepevt.h'
      integer j,k
      real * 8 tmp,pt(nmxhep)
      logical touched
      do j=1,n
         pt(j)=sqrt(phep(1,iarr(j))**2+phep(2,iarr(j))**2)
      enddo
c bubble sort
      touched=.true.
      do while(touched)
         touched=.false.
         do j=1,n-1
            if(pt(j).lt.pt(j+1)) then
               k=iarr(j)
               iarr(j)=iarr(j+1)
               iarr(j+1)=k
               tmp=pt(j)
               pt(j)=pt(j+1)
               pt(j+1)=tmp
               touched=.true.
            endif
         enddo
      enddo
      end

      function islept(j)
      implicit none
      logical islept
      integer j
      if(abs(j).ge.11.and.abs(j).le.15) then
         islept = .true.
      else
         islept = .false.
      endif
      end

      function get_ptrel(pin,pjet)
      implicit none
      real * 8 get_ptrel,pin(0:3),pjet(0:3)
      real * 8 pin2,pjet2,cth2,scalprod
      pin2  = pin(1)**2 + pin(2)**2 + pin(3)**2
      pjet2 = pjet(1)**2 + pjet(2)**2 + pjet(3)**2
      scalprod = pin(1)*pjet(1) + pin(2)*pjet(2) + pin(3)*pjet(3)
      cth2 = scalprod**2/pin2/pjet2
      get_ptrel = sqrt(pin2*abs(1d0 - cth2))
      end

      subroutine pwhgfinalopshist
      end





      function is_B_hadron(id)
      implicit none
      logical is_B_hadron
      integer id
      is_B_hadron=((id.gt.-600).and.(id.lt.-500)).or.
     $     ((id.gt.5000).and.(id.lt.6000)).or.(id.eq.5)
      end

      function is_BBAR_hadron(id)
      implicit none
      logical is_BBAR_hadron
      integer id
      is_BBAR_hadron=((id.gt.500).and.(id.lt.600)).or.
     $     ((id.gt.-6000).and.(id.lt.-5000)).or.(id.eq.-5)
      end


      subroutine applycuts(pin,nin,ptmin,etamax,pout,nout)
      implicit none
      integer nin 
      real * 8 pin(4,nin)
      real * 8 ptmin,etamax
      integer nout
      real *  8 pout(4,nout)
      integer i,mu
      real * 8 y,eta,pt,m
      nout=0
      pout=0
      do i=1,nin
         call getyetaptmass(pin(:,i),y,eta,pt,m)
         if (pt.gt.ptmin .and. abs(eta).lt.etamax) then
            nout=nout+1
            do mu=1,4
               pout(mu,nout)=pin(mu,i)
            enddo
         endif             
      enddo
      end
