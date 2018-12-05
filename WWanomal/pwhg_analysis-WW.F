c     This analysis file is taken from the sanity check analysis
c     for ZZ,WZ,WW production in the original implementation from
c     arXiv:1311.1365.
c     Set the values of dec1p, dec1a, dec2p, dec2a
c     in the powheg.input file
c     equal to the pdg id of the WW decay products.
c     Which one is 1 or 2 is decided as follows:
c     in WW 1 is W+;


c     The next subroutines, open some histograms and prepare them 
c     to receive data 
c     You can substitute these  with your favourite ones
c     init   :  opens the histograms
c     topout :  closes them
c     pwhgfill  :  fills the histograms with data

      subroutine init_hist
      implicit none
#include "LesHouches.h"
#include "pwhg_math.h"
#include "cuts.h"
      logical ini2
      data ini2/.true./
      save ini2
      double precision powheginput
      external powheginput
      double precision ylepmax, ylepmin

      call setupmulti(1)
      call inihists

      if(ini2) then
         if(powheginput("#cutflag").gt.0d0) then
            cutflag = int(powheginput("cutflag"))
         else
            cutflag = 0
         endif
c--   init cut parameters
         if(cutflag.gt.0) then
            call setcuts
            print*,"CUTS PARAMETERS HAVE BEEN LOADED"
         endif
         ini2=.false.
      endif

      if(cutflag.eq.0.or.cutflag.eq.2) then
c     total cross section sanity check
         call bookupeqbins('total',1d0,0d0,1d0)
      endif

      if(cutflag.eq.1.or.cutflag.eq.2) then
c     total cross section sanity check
         call bookupeqbins('totalcut',1d0,0d0,1d0)
      endif

      if(cutflag.eq.0.or.cutflag.eq.2) then
c--   julien new
         call bookupeqbins('leadlep_pt',100d0,0d0,1500d0)
         call bookupeqbins('subleadlep_pt',100d0,0d0,1500d0)
         call bookupeqbins('m_ll',100d0,0d0,1500d0)
c--   end julien

         call bookupeqbins('lep1_y',0.2d0,-5d0,5d0)
         call bookupeqbins('lep1_eta',0.2d0,-5d0,5d0)
         call bookupeqbins('lep1_pt',100d0,0d0,1500d0)

         call bookupeqbins('lep2_y',0.2d0,-5d0,5d0)
         call bookupeqbins('lep2_eta',0.2d0,-5d0,5d0)
         call bookupeqbins('lep2_pt',100d0,0d0,1500d0)

         call bookupeqbins('alp1_y',0.2d0,-5d0,5d0)
         call bookupeqbins('alp1_eta',0.2d0,-5d0,5d0)
         call bookupeqbins('alp1_pt',100d0,0d0,1500d0)

         call bookupeqbins('alp2_y',0.2d0,-5d0,5d0)
         call bookupeqbins('alp2_eta',0.2d0,-5d0,5d0)
         call bookupeqbins('alp2_pt',100d0,0d0,1500d0)

         call bookupeqbins('lep1alp1_y',0.2d0,-5d0,5d0)
         call bookupeqbins('lep1alp1_eta',0.2d0,-5d0,5d0)
         call bookupeqbins('lep1alp1_pt',100d0,0d0,1500d0)
         call bookupeqbins('lep1alp1_m',0.5d0,60d0,100d0)

         call bookupeqbins('lep2alp2_y',0.2d0,-5d0,5d0)
         call bookupeqbins('lep2alp2_eta',0.2d0,-5d0,5d0)
         call bookupeqbins('lep2alp2_pt',100d0,0d0,1500d0)
         call bookupeqbins('lep2alp2_m',0.5d0,60d0,100d0)

         call bookupeqbins('lep2alp1_delphi',pi/20,0d0,pi)
         call bookupeqbins('lep2alp1_dr',0.2d0,-8d0,8d0)
      
      endif

c--   histograms with cuts
      if(cutflag.eq.1.or.cutflag.eq.2) then
         call bookupeqbins('leadlep_cut_pt',100d0,0d0,1500d0)
         call bookupeqbins('subleadlep_cut_pt',100d0,0d0,1500d0)
         call bookupeqbins('m_ll_cut',100d0,0d0,1500d0)

         ylepmax = ylepcut1
         if(ylepcut2.gt.ylepmax) ylepmax = ylepcut1
         ylepmin=-ylepmax

         call bookupeqbins('lep1_cut_y',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('lep1_cut_eta',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('lep1_cut_pt',100d0,0d0,1500d0)

         call bookupeqbins('lep2_cut_y',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('lep2_cut_eta',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('lep2_cut_pt',100d0,0d0,1500d0)

         call bookupeqbins('alp1_cut_y',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('alp1_cut_eta',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('alp1_cut_pt',100d0,0d0,1500d0)

         call bookupeqbins('alp2_cut_y',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('alp2_cut_eta',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('alp2_cut_pt',100d0,0d0,1500d0)

         call bookupeqbins('lep1alp1_cut_y',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('lep1alp1_cut_eta',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('lep1alp1_cut_pt',100d0,0d0,1500d0)
         call bookupeqbins('lep1alp1_cut_m',0.5d0,60d0,100d0)

         call bookupeqbins('lep2alp2_cut_y',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('lep2alp2_cut_eta',0.2d0,ylepmin,ylepmax)
         call bookupeqbins('lep2alp2_cut_pt',100d0,0d0,1500d0)
         call bookupeqbins('lep2alp2_cut_m',0.5d0,60d0,100d0)
      
         call bookupeqbins('lep2alp1_cut_delphi',pi/20,0d0,pi)
         call bookupeqbins('lep2alp1_cut_dr',0.2d0,-8d0,8d0)
      endif
c--

      end
     
      subroutine analysis(dsig0)
      implicit none
      double precision dsig0,dsig(10)
#include "hepevt.h"
#include "pwhg_math.h"
#include "LesHouches.h"
#include "cuts.h"
      logical ini
      data ini/.true./
      save ini
c     binsize
c     we need to tell to this analysis file which program is running it
      integer   maxjet,mjets
      parameter (maxjet=2048)
      double precision  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     &     phij(maxjet),pj(4,maxjet),rr
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      integer ihepv1,ihepv2,idtmp
      integer lep1,lep2,alp1,alp2
      integer dec1p,dec1a,dec2p,dec2a
      save dec1p,dec1a,dec2p,dec2a
      double precision plep1(4),plep2(4),palp1(4),palp2(4)
      double precision httot,y,eta,pt,m,mmin,mm1,mm2
      double precision dy,deta,delphi,dr
      double precision y1,eta1,pt1,m1,y2,eta2,pt2,m2
      double precision ptlead,ylead,etalead
      double precision ptsub,ysub,etasub
      double precision mdum,ydum,etadum,ptdum,mll,met
      integer ihep,itmp
      double precision powheginput,random
      external powheginput,random
      logical comesfromid,isnu,isquark,islepton,condition
      external comesfromid
      logical isutype,isdtype ! added by julien
      integer i,j
      logical failcut





      if(dsig0.eq.0) return

      dsig = 0
      dsig(1) = dsig0

      if(ini) then
         if(whcprg.eq.'NLO') then
            write(*,*) '       NLO analysis'
         elseif(WHCPRG.eq.'LHE   ') then
            write(*,*) '       LHE analysis'
         elseif(WHCPRG.eq.'HERWIG') then
            write (*,*) '           HERWIG ANALYSIS            '
         elseif(WHCPRG.eq.'PYTHIA') then
            write (*,*) '           PYTHIA ANALYSIS            '
         endif
c--
c     set these in the powheg.input file, in such a way that
c     in WW 1 is W+;
         dec1p=powheginput('#dec1p')
         dec1a=powheginput('#dec1a')
         if(dec1a.lt.0.and.dec1a.gt.-100) dec1a=abs(dec1a)
         dec2p=powheginput('#dec2p')
         dec2a=powheginput('#dec2a')
         if(dec2a.lt.0.and.dec2a.gt.-100) dec2a=abs(dec2a)
         ini=.false.
      endif

c     find vector iheps
      ihepv1=0
      ihepv2=0
      do ihep=1,nhep
         idtmp=abs(idhep(ihep))
         if(idtmp.eq.24.or.idtmp.eq.23) then
            if(ihepv1.eq.0) then
               ihepv1=ihep
            elseif(ihepv2.eq.0) then
               ihepv2=ihep
            else
               ihepv1=ihepv2
               ihepv2=ihep
            endif
         endif
      enddo

c     Put particles in order: W+ before W-
c     i.e. always id1>=id2
      if(abs(idhep(ihepv1)).lt.abs(idhep(ihepv2)).or.
     1  (abs(idhep(ihepv1)).eq.abs(idhep(ihepv2)).and.
     2       idhep(ihepv1).lt.idhep(ihepv2))) then
         itmp=ihepv1
         ihepv1=ihepv2
         ihepv2=itmp
      endif

c     find vector decay products
      do ihep=1,nhep
         if(WHCPRG.eq.'NLO') then ! added from julien, with fixed order this failed
            if(islepton(idhep(ihep))) then
               if(idhep(ihep).gt.0) then
                  lep2=ihep
               else
                  alp1=ihep
               endif
            elseif(isnu(idhep(ihep))) then
               if(idhep(ihep).gt.0) then
                  lep1=ihep
               else
                  alp2=ihep
               endif
            elseif(isutype((idhep(ihep)))) then
               if(idhep(ihep).gt.0) then
                  lep1=ihep
               else
                  alp2=ihep
               endif
            elseif(isdtype((idhep(ihep)))) then
               if(idhep(ihep).gt.0) then
                  lep2=ihep
               else
                  alp1=ihep
               endif
            endif
         else ! old stuff that was already there
            if(isthep(ihep).eq.1) then
               if(comesfromid(idhep(ihepv1),ihep)) then
                  if(idhep(ihep).gt.0) then
                     lep1=ihep
                  else
                     alp1=ihep
                  endif
               elseif(comesfromid(idhep(ihepv2),ihep)) then
                  if(idhep(ihep).gt.0) then
                     lep2=ihep
                  else
                     alp2=ihep
                  endif
               endif
            endif
         endif
      enddo

c     In ZZ production, always have dec1p >= dec2p (not needed here, we look only at WW!)
      if(idhep(ihepv1).eq.idhep(ihepv2)) then
         if(idhep(lep1).lt.idhep(lep2)) then
            itmp=lep2
            lep2=lep1
            lep1=itmp
            itmp=alp2
            alp2=alp1
            alp1=itmp
         endif
      endif



c If there are any pair of identical particles, swap them
c with 50% probability
      if(idhep(lep1).eq.idhep(lep2)) then
         if(random().gt.0.5d0) then
            itmp=lep2
            lep2=lep1
            lep1=itmp
         endif
      endif

            
      if(idhep(alp1).eq.idhep(alp2)) then
         if(random().gt.0.5d0) then
            itmp=alp2
            alp2=alp1
            alp1=itmp
         endif
      endif


c$$$      rr=0.6d0
      rr = rjet
      call buildjets(1,mjets,rr,ktj,etaj,rapj,phij,pj)

      plep1=phep(1:4,lep1)
      palp1=phep(1:4,alp1)
      plep2=phep(1:4,lep2)
      palp2=phep(1:4,alp2)

c--   Fill now the histograms, begin with the total phase-space when cutflag allows it
      if(cutflag.eq.0.or.cutflag.eq.2) then
         call filld('total',0.5d0,dsig)

c--   julien new for leading-pT lepton and subleading-pT lepton
         call leadinglepptplot(palp1,plep2,dsig)
         call subleadinglepptplot(palp1,plep2,dsig)
c-- 

         call yetaptmassplot0(plep1,dsig,'lep1')
         if(lep1.eq.lep2) then
            call yetaptmassplot0(plep2,dsig,'lep1')
         else
            call yetaptmassplot0(plep2,dsig,'lep2')
         endif
         call yetaptmassplot0(palp1,dsig,'alp1')
         if(alp1.eq.alp2) then
            call yetaptmassplot0(palp2,dsig,'alp1')
         else
            call yetaptmassplot0(palp2,dsig,'alp2')
         endif

         if(lep2.eq.lep1.and.alp2.eq.alp1) then
            call yetaptmassplot(plep1+palp1,dsig,'lep1alp1')
            call yetaptmassplot(plep1+palp2,dsig,'lep1alp1')
            call yetaptmassplot(plep2+palp1,dsig,'lep1alp1')
            call yetaptmassplot(plep2+palp2,dsig,'lep1alp1')
         elseif(lep1.eq.lep2) then
            call yetaptmassplot(plep1+palp1,dsig,'lep1alp1')
            call yetaptmassplot(plep1+palp2,dsig,'lep2alp2')
            call yetaptmassplot(plep2+palp1,dsig,'lep1alp1')
            call yetaptmassplot(plep2+palp2,dsig,'lep2alp2')
         elseif(alp1.eq.alp2) then
            call yetaptmassplot(plep1+palp1,dsig,'lep1alp1')
            call yetaptmassplot(plep1+palp2,dsig,'lep1alp1')
            call yetaptmassplot(plep2+palp1,dsig,'lep2alp2')
            call yetaptmassplot(plep2+palp2,dsig,'lep2alp2')
         else
            call yetaptmassplot(plep1+palp1,dsig,'lep1alp1')
            call yetaptmassplot(plep2+palp2,dsig,'lep2alp2')
         endif

         if(lep2.eq.lep1.and.alp1.eq.alp2) then
            call deltaplot(plep1,palp1,dsig,'lep2alp1')
            call deltaplot(plep1,palp2,dsig,'lep2alp1')
            call deltaplot(plep2,palp1,dsig,'lep2alp1')
            call deltaplot(plep2,palp2,dsig,'lep2alp1')
         elseif(alp2.eq.alp1) then
            call deltaplot(plep2,palp1,dsig,'lep2alp1')
            call deltaplot(plep2,palp2,dsig,'lep2alp1')
         elseif(lep1.eq.lep2) then
            call deltaplot(plep1,palp1,dsig,'lep2alp1')
            call deltaplot(plep2,palp1,dsig,'lep2alp1')
         else
            call deltaplot(plep2,palp1,dsig,'lep2alp1')
         endif
      endif

c--   Now begin the cuts and the filling of the histograms
ccccccccccccccccccccccccccccc applying cuts ccccccccccccccccccccccccccccccccccccc--Added by Ian
      failcut = .false.

      call getyetaptmass(palp1,y1,eta1,pt1,m1)
      call getyetaptmass(plep2,y2,eta2,pt2,m2)

      call getyetaptmass(palp1+plep2,ydum,etadum,ptdum,mll)
      call getyetaptmass(palp2+plep1,ydum,etadum,met,mdum)

      if(cutflag.eq.0.or.cutflag.eq.2) then
         call filld('m_ll',mll,dsig)
      endif

      if(pt1.gt.pt2) then
         ptlead = pt1
         ptsub = pt2
         ylead = y1
         ysub = y2
         etalead = eta1
         etasub = eta2
      else
         ptlead = pt2
         ptsub = pt1
         ylead = y2
         ysub = y1
         etalead = eta2
         etasub = eta1
      endif

      if(met.lt.etmisscut) failcut = .true.
      if(mll.lt.mllcut) failcut = .true.
      if(ptlead.lt.ptlepcut1.or.dabs(ylead).gt.ylepcut1) then
         failcut = .true.
      endif
      if(ptsub.lt.ptlepcut2.or.dabs(ysub).gt.ylepcut2) then
         failcut = .true.
      endif

      if(jetveto.eq.1.and.mjets.ne.0) then
         do i=1,mjets
            if(ktj(i).gt.ptjetcut.and.
     .           dabs(rapj(i)).lt.yjetcut) then
               failcut = .true.
            endif
         enddo
      endif

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      if(cutflag.eq.1.or.cutflag.eq.2) then
         if(cutflag.eq.1.and.failcut) then
            return
         else
            if(.not.failcut) then
               call filld('totalcut',0.5d0,dsig)

               call leadinglepptplotcuts(palp1,plep2,dsig)
               call subleadinglepptplotcuts(palp1,plep2,dsig)
               call filld('m_ll_cut',mll,dsig)

               call yetaptmassplot0(plep1,dsig,'lep1_cut')
               if(lep1.eq.lep2) then
                  call yetaptmassplot0(plep2,dsig,'lep1_cut')
               else
                  call yetaptmassplot0(plep2,dsig,'lep2_cut')
               endif
               call yetaptmassplot0(palp1,dsig,'alp1_cut')
               if(alp1.eq.alp2) then
                  call yetaptmassplot0(palp2,dsig,'alp1_cut')
               else
                  call yetaptmassplot0(palp2,dsig,'alp2_cut')
               endif

               if(lep2.eq.lep1.and.alp2.eq.alp1) then
                  call yetaptmassplot(plep1+palp1,dsig,'lep1alp1_cut')
                  call yetaptmassplot(plep1+palp2,dsig,'lep1alp1_cut')
                  call yetaptmassplot(plep2+palp1,dsig,'lep1alp1_cut')
                  call yetaptmassplot(plep2+palp2,dsig,'lep1alp1_cut')
               elseif(lep1.eq.lep2) then
                  call yetaptmassplot(plep1+palp1,dsig,'lep1alp1_cut')
                  call yetaptmassplot(plep1+palp2,dsig,'lep2alp2_cut')
                  call yetaptmassplot(plep2+palp1,dsig,'lep1alp1_cut')
                  call yetaptmassplot(plep2+palp2,dsig,'lep2alp2_cut')
               elseif(alp1.eq.alp2) then
                  call yetaptmassplot(plep1+palp1,dsig,'lep1alp1_cut')
                  call yetaptmassplot(plep1+palp2,dsig,'lep1alp1_cut')
                  call yetaptmassplot(plep2+palp1,dsig,'lep2alp2_cut')
                  call yetaptmassplot(plep2+palp2,dsig,'lep2alp2_cut')
               else
                  call yetaptmassplot(plep1+palp1,dsig,'lep1alp1_cut')
                  call yetaptmassplot(plep2+palp2,dsig,'lep2alp2_cut')
               endif

               if(lep2.eq.lep1.and.alp1.eq.alp2) then
                  call deltaplot(plep1,palp1,dsig,'lep2alp1_cut')
                  call deltaplot(plep1,palp2,dsig,'lep2alp1_cut')
                  call deltaplot(plep2,palp1,dsig,'lep2alp1_cut')
                  call deltaplot(plep2,palp2,dsig,'lep2alp1_cut')
               elseif(alp2.eq.alp1) then
                  call deltaplot(plep2,palp1,dsig,'lep2alp1_cut')
                  call deltaplot(plep2,palp2,dsig,'lep2alp1_cut')
               elseif(lep1.eq.lep2) then
                  call deltaplot(plep1,palp1,dsig,'lep2alp1_cut')
                  call deltaplot(plep2,palp1,dsig,'lep2alp1_cut')
               else
                  call deltaplot(plep2,palp1,dsig,'lep2alp1_cut')
               endif
            endif
         endif
c--   end filling histograms after cuts
      endif
      end

c--   julien new
      subroutine leadinglepptplot(p1,p2,dsig)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision y2,eta2,pt2,m2
      double precision pt
      call getyetaptmass(p1,y1,eta1,pt1,m1)
      call getyetaptmass(p2,y2,eta2,pt2,m2)
      pt=pt1
      if(pt2.gt.pt) pt=pt2
      call filld('leadlep_pt',pt,dsig)
      end
c--   end julien

c--   julien new
      subroutine subleadinglepptplot(p1,p2,dsig)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision y2,eta2,pt2,m2
      double precision pt
      call getyetaptmass(p1,y1,eta1,pt1,m1)
      call getyetaptmass(p2,y2,eta2,pt2,m2)
      pt=pt1
      if(pt2.lt.pt) pt=pt2
      call filld('subleadlep_pt',pt,dsig)
      end
c--   end julien

c--   julien new
      subroutine leadinglepptplotcuts(p1,p2,dsig)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision y2,eta2,pt2,m2
      double precision pt
      call getyetaptmass(p1,y1,eta1,pt1,m1)
      call getyetaptmass(p2,y2,eta2,pt2,m2)
      pt=pt1
      if(pt2.gt.pt) pt=pt2
      call filld('leadlep_cut_pt',pt,dsig)
      end
c--   end julien

c--   julien new
      subroutine subleadinglepptplotcuts(p1,p2,dsig)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      double precision y1,eta1,pt1,m1
      double precision y2,eta2,pt2,m2
      double precision pt
      call getyetaptmass(p1,y1,eta1,pt1,m1)
      call getyetaptmass(p2,y2,eta2,pt2,m2)
      pt=pt1
      if(pt2.lt.pt) pt=pt2
      call filld('subleadlep_cut_pt',pt,dsig)
      end
c--   end julien

      subroutine yetaptmassplot(p,dsig,prefix)
      implicit none
      double precision p(4),dsig(*)
      character *(*) prefix
      double precision y,eta,pt,m
      call getyetaptmass(p,y,eta,pt,m)
      call filld(prefix//'_y',y,dsig)
      call filld(prefix//'_eta',eta,dsig)
      call filld(prefix//'_pt',pt,dsig)
      call filld(prefix//'_m',m,dsig)
      end

      subroutine yetaptmassplot0(p,dsig,prefix)
      implicit none
      double precision p(4),dsig(*)
      character *(*) prefix
      double precision y,eta,pt,m
      call getyetaptmass(p,y,eta,pt,m)
      call filld(prefix//'_y',y,dsig)
      call filld(prefix//'_eta',eta,dsig)
      call filld(prefix//'_pt',pt,dsig)
      end

      subroutine deltaplot(p1,p2,dsig,prefix)
      implicit none
      double precision p1(4),p2(4),dsig(*)
      character *(*) prefix
      double precision dy,deta,delphi,dr
      call getdydetadphidr(p1,p2,dy,deta,delphi,dr)
c      call filld(prefix//'_dy',dy,dsig)
c      call filld(prefix//'_deta',deta,dsig)
      call filld(prefix//'_delphi',delphi,dsig)
      call filld(prefix//'_dr',dr,dsig)
      end


      subroutine getyetaptmass(p,y,eta,pt,mass)
      implicit none
      double precision p(4),y,eta,pt,mass,pv
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

      subroutine getdydetadphidr(p1,p2,dy,deta,dphi,dr)
      implicit none
#include "pwhg_math.h"
      double precision p1(*),p2(*),dy,deta,dphi,dr
      double precision y1,eta1,pt1,mass1,phi1
      double precision y2,eta2,pt2,mass2,phi2
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

      subroutine getrapidity(p,y)
      implicit none
      double precision p(0:3),y
      y=0.5d0*log((p(0)+p(3))/(p(0)-p(3)))
      end

      subroutine getinvmass(p,m)
      implicit none
      double precision p(0:3),m
      m=sqrt(abs(p(0)**2-p(1)**2-p(2)**2-p(3)**2))
      end

      subroutine get_pseudorap(p,eta)
      implicit none
      double precision p(0:3),eta,pt,th
      double precision tiny
      parameter (tiny=1.d-5)

      pt=sqrt(p(1)**2+p(2)**2)
      if(pt.lt.tiny.and.abs(p(3)).lt.tiny)then
         eta=sign(1.d0,p(3))*1.d8
      elseif(pt.lt.tiny) then   !: added this elseif
         eta=sign(1.d0,p(3))*1.d8
      else
         th=atan2(pt,p(3))
         eta=-log(tan(th/2.d0))
      endif
      end



      subroutine buildjets(iflag,mjets,rr,kt,eta,rap,phi,pjet)
c     arrays to reconstruct jets, radius parameter rr
      implicit none
      integer iflag,mjets
      double precision  rr,kt(*),eta(*),rap(*),
     &     phi(*),pjet(4,*)
#include "hepevt.h"
#include "LesHouches.h"
      integer   maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      double precision  ptrack(4,maxtrack),pj(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu,jb
      double precision r,palg,ptmin,pp,tmp
      logical islepton,isnu
      external islepton,isnu
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
         enddo
      enddo
      if(iflag.eq.1) then
C     - Extract final state particles to feed to jet finder
         do j=1,nhep
            if (isthep(j).eq.1.and.(abs(idhep(j)).le.5.or.
     .            abs(idhep(j)).eq.21)) then
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
            if (istup(j).eq.1.and..not.islepton(idup(j))) then
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
C - Inclusive jet pT and Y spectra are to be compared to CDF data:    - C    
C --------------------------------------------------------------------- C
C     R = 0.7   radius parameter
C     f = 0.75  overlapping fraction
c palg=1 is standard kt, -1 is antikt
      palg=-1
      r=rr
      ptmin=1d0 
      call fastjetppgenkt(ptrack,ntracks,r,palg,ptmin,pjet,njets,
     $                        jetvec)
      mjets=njets
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
         eta(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         rap(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         phi(j)=atan2(pjet(2,j),pjet(1,j))
      enddo
      end

      subroutine sortbypt(n,iarr)
      implicit none
      integer n,iarr(n)
#include "hepevt.h"
      integer j,k
      double precision tmp,pt(nmxhep)
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
