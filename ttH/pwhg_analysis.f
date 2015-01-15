c  The next subroutines open some histograms and prepare them 
c      to receive data 
c  You can substitute these  with your favourite ones

      subroutine init_hist
      implicit none
      include  'LesHouches.h'
      include 'pwhg_math.h'
      character * 9 pr
      character * 6 suffix 
      common/pwhgprocess/pr
      character * 6 whcprg      
      common/cwhcprg/whcprg
      real * 8 dy,dphi,dpt,dr,dptzoom,dM,dmm,dpt3
      real*8 ptmin,ptmax,mmin,mmax
      real*8 ymin,ymax,phimin,phimax,rmin,rmax
      integer j,i

      call inihists
         
      pr='inc-ttH'

      dy=0.2d0
      dphi=0.2d0
      dpt=10d0
      dM=20d0
      dptzoom=1d0
      dmm = 5d0
      dr = 0.2d0

      ptmin = 0d0
      ptmax = 800d0

      ymin = -4d0
      ymax = 4d0

      phimin = 0d0
      phimax = 3.2d0

      mmin = 0d0
      mmax = 1000d0

      rmin = 0d0
      rmax = 5d0

cccccccccccccccccccccccccc
c
c inclusive setup:
c
c incl. xsec
      call bookupeqbins(pr//'xsec',1d0,0d0,1d0)

c Higgs
      call bookupeqbins(pr//'pt(Higgs)',dpt,ptmin,ptmax)
      call bookupeqbins(pr//'eta(Higgs)',dy,ymin,ymax)
      call bookupeqbins(pr//'y(Higgs)',dy,ymin,ymax)
      call bookupeqbins(pr//'mass(Higgs)',dmm,0d0,200d0)

c Higgs-top pair:
      call bookupeqbins(pr//'d eta(Higgs,top)',dy,ymin,ymax)
      call bookupeqbins(pr//'d y(Higgs,top)',dy,ymin,ymax)
      call bookupeqbins(pr//'d phi(Higgs,top)',dphi,phimin,phimax)
      call bookupeqbins(pr//'R_eta(Higgs,top)',dr,rmin,rmax)
      call bookupeqbins(pr//'R_y(Higgs,top)',dr,rmin,rmax)

c Higgs-tbar pair:
      call bookupeqbins(pr//'d eta(Higgs,tbar)',dy,ymin,ymax)
      call bookupeqbins(pr//'d y(Higgs,tbar)',dy,ymin,ymax)
      call bookupeqbins(pr//'d phi(Higgs,tbar)',dphi,phimin,phimax)
      call bookupeqbins(pr//'R_eta(Higgs,tbar)',dr,rmin,rmax)
      call bookupeqbins(pr//'R_y(Higgs,tbar)',dr,rmin,rmax)

c Higgs-top-tbar system:
      call bookupeqbins(pr//'pt(Higgs+top+tbar)',dpt,ptmin,1d3)
      call bookupeqbins(pr//'mass(Higgs+top+tbar)',dmm,mmin,mmax)

c top and anti-top:
c pt:
      call bookupeqbins(pr//'pt(top)',dpt,ptmin,ptmax)
      call bookupeqbins(pr//'pt(tbar)',dpt,ptmin,ptmax)

c eta:
      call bookupeqbins(pr//'eta(top)',dy,ymin,ymax)
      call bookupeqbins(pr//'eta(tbar)',dy,ymin,ymax)

c y: 
      call bookupeqbins(pr//'y(top)',dy,ymin,ymax)
      call bookupeqbins(pr//'y(tbar)',dy,ymin,ymax)

c ttbar pair:
      call bookupeqbins(pr//'mass(t+tbar)',dM,mmin,mmax)
      call bookupeqbins(pr//'pt(t+tbar)',dpt,ptmin,ptmax)
c
c t,tbar separation:
      call bookupeqbins(pr//'d eta(t,tbar)',dy,ymin,ymax)
      call bookupeqbins(pr//'d y(t,tbar)',dy,ymin,ymax)
      call bookupeqbins(pr//'d phi(t,tbar)',dphi,phimin,phimax)
      call bookupeqbins(pr//'R_eta(t,tbar)',dr,rmin,rmax)     
      call bookupeqbins(pr//'R_y(t,tbar)',dr,rmin,rmax)     

c ttbar, H separation:
      call bookupeqbins(pr//'R_eta(ttbar,Higgs)',dr,rmin,rmax)
      call bookupeqbins(pr//'R_y(ttbar,Higgs)',dr,rmin,rmax)
c 
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c 
      end

      subroutine analysis(dsig0)
      implicit none
      real * 8 dsig0,dsig(7)
      include 'hepevt.h'
      include 'pwhg_math.h' 
      include  'LesHouches.h'
      include 'pwhg_weights.h'
      logical ini
      data ini/.true./
      save ini
      character * 9 pr
      common/pwhgprocess/pr
      real*8 ppairttbar(4),ptt,yt,etat,pttbar,ytbar,etatbar,dphi
      real*8 rttbar,phittbar,yttbar,etattbar,ptttbar,mttbar
      real*8 pth,etah,yh,etath,yth,phith,rth,mhiggs
      real*8 etatbarh,ytbarh,phitbarh,rtbarh
      real*8 ytth,etatth,phitth,rtth
      real*8 ptth(4),pttth,mtth

      real*8 retattbar,retath,retatbarh,retatth
      real * 8 binsize(700)
      common/pwhghistcommon/binsize
      integer ihep,it,itbar,ihiggs,mu
      character * 6 whcprg      
      common/cwhcprg/whcprg
      data whcprg/'NLO   '/

      integer iit,iitbar,iihiggs
      logical write_cuts
      
c================================================

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

      dsig(:)=0d0
      if(weights_num.eq.0) then
         dsig(1)=dsig0
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
      endif

      if(sum(abs(dsig)).eq.0) return
   
C     ---------------------------------------------------------------
C     ---------------------------------------------------------------

      if(write_cuts) then
         write(*,*) '********************************************'
         write(*,*) '********************************************'
         write(*,*) '                ANALYSIS CUTS               '
         write(*,*) '********************************************'
         write(*,*) '********************************************'
         write(*,*) ''
         write(*,*) 'INCLUSIVE ANALYSIS:'
         write(*,*) 'no cuts' 
         write(*,*) ''
         write(*,*) '*******************************************'
         write(*,*) '*******************************************'
      endif

      it=0
      iit=0
      itbar=0
      iitbar=0
      ihiggs=0
      iihiggs=0

c Parton level analysis
      if(whcprg.eq.'NLO'.or.whcprg.eq.'LHE') then
         do ihep=3,nhep
            if(idhep(ihep).eq.6) then
               it=ihep
               iit=iit+1
            elseif(idhep(ihep).eq.-6) then
               itbar=ihep
               iitbar=iitbar+1
            elseif(idhep(ihep).eq.25) then
               ihiggs=ihep
               iihiggs=iihiggs+1
            endif
         enddo !ihep

c check that exactly 1 top, 1 anti-top, and 1 Higgs are selected
         if (iit.ne.1) then
            write(*,*) "Error in pwhg_analysis: ",iit," tops"
            call printleshouches
            call exit(1)
         endif
         if (iitbar.ne.1) then
            write(*,*) "Error in pwhg_analysis: ",iitbar," anti-tops"
            call printleshouches
            call exit(1)
         endif
         if (iihiggs.ne.1) then
            write(*,*) "Error in pwhg_analysis: ",iihiggs,"Higgses"
            call printleshouches
            call exit(1)
         endif

c Hadron level analysis
      else

         if (WHCPRG.eq.'HERWIG') then 
            
         do ihep=1,nhep

c searching stategies according to the shower Monte Carlo
c     program used      
c simplistic analysis:
            if (isthep(ihep).eq.155) then
               if (idhep(ihep).eq.25) then 
                  ihiggs=ihep
                  iihiggs=iihiggs+1
               endif   
               if (idhep(ihep).eq.6) then !top
                  it = ihep
                  iit = iit+1
               endif   
               if (idhep(ihep).eq.-6) then !tbar
                  itbar = ihep
                  iitbar = iitbar+1
               endif 
            endif !isthep
            
         enddo !ihep

         elseif (WHCPRG.eq.'PYTHIA') then
            
         do ihep=1,nhep
            if(idhep(ihep).eq.25) then                
               if(isthep(ihep).eq.1) then !'stable' Higgs
                  ihiggs=ihep
                  iihiggs=iihiggs+1
               elseif(isthep(ihep).eq.2) then ! particle has decayed
                  ihiggs=ihep
                  iihiggs=iihiggs+1
               endif
            endif !idhep
            if (idhep(ihep).eq.6) then !top
               it = ihep
               iit = iit+1
            endif   
            if (idhep(ihep).eq.-6) then !tbar
               itbar = ihep
               iitbar = iitbar+1
            endif   
         enddo !nhep


         endif !pythia or herwig

c check that at least one top and one anti-top are selected
c during showering there may be more than one entry with PDG=6,
c with different IST. 
         if (iit.lt.1) then
            write(*,*) "Error in pwhg_analysis: ",iit," tops"
            call printleshouches
            call exit(1)
         endif
         if (iitbar.lt.1) then
            write(*,*) "Error in pwhg_analysis: ",iitbar," anti-tops"
            call printleshouches
            call exit(1)
         endif

      endif !parton or hadron level analysis

c tops:
      call ptyeta(phep(1,it),ptt,yt,etat)
      call ptyeta(phep(1,itbar),pttbar,ytbar,etatbar)

      call getdydetadphidr(phep(1,it),phep(1,itbar),
     %     yttbar,etattbar,phittbar,rttbar)

      call getdydetadphidrr(phep(1,it),phep(1,itbar),
     %     retattbar)

c Higgs:
      call ptyeta(phep(1,ihiggs),pth,yh,etah)

      mhiggs = dsqrt(abs(phep(4,ihiggs)**2-phep(1,ihiggs)**2-
     &                   phep(2,ihiggs)**2-phep(3,ihiggs)**2))

      call getdydetadphidr(phep(1,it),phep(1,ihiggs),
     %     yth,etath,phith,rth)
      call getdydetadphidr(phep(1,itbar),phep(1,ihiggs),
     %     ytbarh,etatbarh,phitbarh,rtbarh)

      call getdydetadphidrr(phep(1,it),phep(1,ihiggs),
     %     retath)
      call getdydetadphidrr(phep(1,itbar),phep(1,ihiggs),
     %     retatbarh)

c mass of the pair
      do mu=1,4
         ppairttbar(mu)=phep(mu,it)+phep(mu,itbar)
      enddo
      mttbar=dsqrt(abs(ppairttbar(4)**2
     1            -ppairttbar(1)**2-ppairttbar(2)**2-ppairttbar(3)**2))
      ptttbar=dsqrt(abs(ppairttbar(1)**2+ppairttbar(2)**2))

c ttbar+Higgs system:
      ptth(1:4) = ppairttbar(1:4)+phep(1:4,ihiggs)
      pttth = dsqrt(abs(ptth(1)**2+ptth(2)**2))
      mtth = dsqrt(abs(ptth(4)**2-ptth(1)**2-ptth(2)**2-ptth(3)**2))

c ttbar vs Higgs:
      call getdydetadphidr(ppairttbar(1),phep(1,ihiggs),
     %     ytth,etatth,phitth,rtth)

      call getdydetadphidrr(ppairttbar(1),phep(1,ihiggs),
     %     retatth)


cccccccccccccccccccccccccccccc
c
c inclusive analysis:
c
c xsec:
      call filld(pr//'xsec',0.5d0,dsig)

c Higgs:
      call filld(pr//'pt(Higgs)',pth,dsig)
      call filld(pr//'eta(Higgs)',etah,dsig)
      call filld(pr//'y(Higgs)',yh,dsig)
      call filld(pr//'mass(Higgs)',mhiggs,dsig)

c H-t pair:
      call filld(pr//'d eta(Higgs,top)',etath,dsig)
      call filld(pr//'d y(Higgs,top)',yth,dsig)
      call filld(pr//'d phi(Higgs,top)',phith,dsig)
      call filld(pr//'R_eta(Higgs,top)',retath,dsig)
      call filld(pr//'R_y(Higgs,top)',rth,dsig)

c H-tbar pair:
      call filld(pr//'d eta(Higgs,tbar)',etatbarh,dsig)
      call filld(pr//'d y(Higgs,tbar)',ytbarh,dsig)
      call filld(pr//'d phi(Higgs,tbar)',phitbarh,dsig)
      call filld(pr//'R_eta(Higgs,tbar)',retatbarh,dsig)
      call filld(pr//'R_y(Higgs,tbar)',rtbarh,dsig)

c Higgs-top-tbar system:
      call filld(pr//'pt(Higgs+top+tbar)',pttth,dsig)
      call filld(pr//'mass(Higgs+top+tbar)',mtth,dsig)

c top and anti-top:
c pt 
      call filld(pr//'pt(top)',ptt,dsig)
      call filld(pr//'pt(tbar)',pttbar,dsig)

c eta:
      call filld(pr//'eta(top)',etat,dsig)
      call filld(pr//'eta(tbar)',etatbar,dsig)

c y:
      call filld(pr//'y(top)',yt,dsig)
      call filld(pr//'y(tbar)',ytbar,dsig)

c ttbar pair:
      call filld(pr//'mass(t+tbar)',mttbar,dsig)
      call filld(pr//'pt(t+tbar)',ptttbar,dsig)
c
c t,tbar separation:
      call filld(pr//'d eta(t,tbar)',etattbar,dsig)
      call filld(pr//'d y(t,tbar)',yttbar,dsig)
      call filld(pr//'d phi(t,tbar)',phittbar,dsig)
      call filld(pr//'R_eta(t,tbar)',retattbar,dsig)
      call filld(pr//'R_y(t,tbar)',rttbar,dsig)


c ttbar, Higgs separation:
      call filld(pr//'R_eta(ttbar,Higgs)',retatth,dsig)
      call filld(pr//'R_y(ttbar,Higgs)',rtth,dsig)
   
   
      end

cccccccccccccccccccccccccccc

      subroutine ptyeta(p,pt,y,eta)
      implicit none
      real * 8 p(1:4),pt,y,eta
      real * 8 pp,tiny
      parameter (tiny=1d-12)
      pt=sqrt(p(1)**2+p(2)**2)
      y=log((p(4)+p(3))/(p(4)-p(3)))/2
      pp=sqrt(pt**2+p(3)**2)*(1+tiny)
      eta=log((pp+p(3))/(pp-p(3)))/2
      end
 
      subroutine getdydetadphidr(p1,p2,dy,deta,dphi,dr)
      implicit none
      include 'pwhg_math.h' 
      real * 8 p1(1:4),p2(1:4),dy,deta,dphi,dr
      real * 8 y1,eta1,pt1,mass1,phi1
      real * 8 y2,eta2,pt2,mass2,phi2
      call ptyeta(p1,pt1,y1,eta1)
      call ptyeta(p2,pt2,y2,eta2)
      dy=y1-y2
      deta=eta1-eta2
      phi1=atan2(p1(1),p1(2))
      phi2=atan2(p2(1),p2(2))
      dphi=abs(phi1-phi2)
      dphi=min(dphi,2d0*pi-dphi)
      dr=sqrt(dy**2+dphi**2)
      end

      subroutine getdydetadphidrr(p1,p2,dr)
      implicit none
      include 'pwhg_math.h' 
      real * 8 p1(1:4),p2(1:4),dy,deta,dphi,dr
      real * 8 y1,eta1,pt1,mass1,phi1
      real * 8 y2,eta2,pt2,mass2,phi2

      call ptyeta(p1,pt1,y1,eta1)
      call ptyeta(p2,pt2,y2,eta2)

      deta=eta1-eta2
      phi1=atan2(p1(1),p1(2))
      phi2=atan2(p2(1),p2(2))
      dphi=abs(phi1-phi2)
      dphi=min(dphi,2d0*pi-dphi)
      dr=sqrt(deta**2+dphi**2)
      end
