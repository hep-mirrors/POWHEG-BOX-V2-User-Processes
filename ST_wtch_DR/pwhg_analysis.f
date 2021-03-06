c     !: Minimal analysis, no need to link against fastjet.
c     !: ttype needed to set wcode, used to tag 'primary W'

c  The next subroutines, open some histograms and prepare them 
c      to receive data 
c  You can substitute these  with your favourite ones
c  init   :  opens the histograms
c  topout :  closes them
c  pwhgfill  :  fills the histograms with data

      subroutine init_hist
      implicit none
      include  'LesHouches.h'
      include 'pwhg_bookhist-multi.h'
      include 'pwhg_math.h' 
      integer diag,icut
      character * 10 cut

      integer numplots
      real * 8 binsize(400)
      common/pwhghistcommon/binsize,numplots

      call inihists

      icut=-1
      diag=0

      call bookupeqbins('m67',2d0,23d0,163d0)
      call bookupeqbins('m910',2d0,23d0,163d0)
      call bookupeqbins('m910all',2d0,23d0,243d0)
      
      
 111  continue
      icut=icut+1

      if (icut.eq.0) then
         cut = ' nocut'
      elseif (icut.eq.1) then
         numplots=diag
         goto 222
         cut = ' cut_1'
      elseif (icut.eq.2) then
         cut = ' cut_2'
      elseif (icut.eq.3) then
         cut = ' cut_3'
      elseif (icut.eq.4) then
         goto 222
      else
         write(*,*) 'Error in init_hist, icut ',icut
         call exit(1)
      endif

c-----top
      diag=diag+1
      binsize(diag) = 4d0
      call bookupeqbins('t pt'//cut,binsize(diag),0d0,200d0)

      diag=diag+1
      binsize(diag) = 1d0
      call bookupeqbins('t pt zoom'//cut,binsize(diag),0d0
     $     ,50d0)

      diag=diag+1
      binsize(diag) = 16d0
      call bookupeqbins('t pt tail'//cut,binsize(diag),0d0
     $     ,800d0)

      diag=diag+1
      binsize(diag) = 0.35d0
      call bookupeqbins('t y'//cut,binsize(diag),-7d0,7d0)

      diag=diag+1
      binsize(diag) = 0.35d0
      call bookupeqbins('t eta'//cut,binsize(diag),-7d0,7d0)

      diag=diag+1
      binsize(diag) = 0.75d0
      call bookupeqbins('t invm'//cut,binsize(diag),160d0
     $     ,190d0)

c-----W
      diag=diag+1
      binsize(diag) = 4d0
      call bookupeqbins('W pt'//cut,binsize(diag),0d0,200d0)

      diag=diag+1
      binsize(diag) = 1d0
      call bookupeqbins('W pt zoom'//cut,binsize(diag),0d0
     $     ,50d0)

      diag=diag+1
      binsize(diag) = 16d0
      call bookupeqbins('W pt tail'//cut,binsize(diag),0d0
     $     ,800d0)

      diag=diag+1
      binsize(diag) = 0.35d0
      call bookupeqbins('W y'//cut,binsize(diag),-7d0,7d0)

      diag=diag+1
      binsize(diag) = 0.35d0
      call bookupeqbins('W eta'//cut,binsize(diag),-7d0,7d0)

      diag=diag+1
      binsize(diag) = 0.75d0
      call bookupeqbins('W invm'//cut,binsize(diag),65d0,95d0)

c-----hardest lep
      diag=diag+1
      binsize(diag) = 4d0
      call bookupeqbins('l1 pt'//cut,binsize(diag),0d0,200d0)

      diag=diag+1
      binsize(diag) = 1d0
      call bookupeqbins('l1 pt zoom'//cut,binsize(diag),0d0
     $     ,50d0)

      diag=diag+1
      binsize(diag) = 16d0
      call bookupeqbins('l1 pt tail'//cut,binsize(diag),0d0
     $     ,800d0)

      diag=diag+1
      binsize(diag) = 0.35d0
      call bookupeqbins('l1 y'//cut,binsize(diag),-7d0,7d0)

      diag=diag+1
      binsize(diag) = 0.35d0
      call bookupeqbins('l1 eta'//cut,binsize(diag),-7d0,7d0)

c-----second hardest lep
      diag=diag+1
      binsize(diag) = 4d0
      call bookupeqbins('l2 pt'//cut,binsize(diag),0d0,200d0)

      diag=diag+1
      binsize(diag) = 1d0
      call bookupeqbins('l2 pt zoom'//cut,binsize(diag),0d0
     $     ,50d0)

      diag=diag+1
      binsize(diag) = 16d0
      call bookupeqbins('l2 pt tail'//cut,binsize(diag),0d0
     $     ,800d0)

      diag=diag+1
      binsize(diag) = 0.35d0
      call bookupeqbins('l2 y'//cut,binsize(diag),-7d0,7d0)

      diag=diag+1
      binsize(diag) = 0.35d0
      call bookupeqbins('l2 eta'//cut,binsize(diag),-7d0,7d0)

c-----lep1-lep2
      diag=diag+1
      binsize(diag) = 4d0
      call bookupeqbins('l1l2 pt'//cut,binsize(diag),0d0,200d0)

      diag=diag+1
      binsize(diag) = 1d0
      call bookupeqbins('l1l2 pt zoom'//cut,binsize(diag),0d0
     $     ,50d0)

      diag=diag+1
      binsize(diag) = 16d0
      call bookupeqbins('l1l2 pt tail'//cut,binsize(diag),0d0
     $     ,800d0)

      diag=diag+1
      binsize(diag) = 0.35d0
      call bookupeqbins('l1l2 y'//cut,binsize(diag),-7d0,7d0)

      diag=diag+1
      binsize(diag) = 0.35d0
      call bookupeqbins('l1l2 eta'//cut,binsize(diag),-7d0,7d0)

      diag=diag+1
      binsize(diag) = 2d0
      call bookupeqbins('l1l2 invm'//cut,binsize(diag),0d0
     $     ,200d0)

      diag=diag+1
      binsize(diag) = pi/50
      call bookupeqbins('l1l2 dphi'//cut,binsize(diag),0d0,pi)

c-----total cross section
      diag=diag+1
      binsize(diag) = 1d0
      call bookupeqbins('total'//cut,binsize(diag),0d0,3d0)

      goto 111

 222  end




      subroutine analysis(dsig)
      implicit none
      real * 8 dsig
      include 'hepevt.h' 
      include 'pwhg_math.h' 
      include  'LesHouches.h'
c     other common blocks
      integer numplots
      real * 8 binsize(400)
      common/pwhghistcommon/binsize,numplots

      integer i,ihep,mu,ist_top,ist_w,ist,id,diag,j,jjet
      logical cuts1,cuts2,cuts3,ini,condition_b,condition_bbar,condition
     $     ,skipjet
      data ini/.true./
      save ini
      integer tcode,wcode,ttype
      save tcode,wcode,ttype
      real *8 powheginput
      external powheginput


      integer maxnum
      parameter (maxnum=10)
      real *8 p_top(0:3,maxnum),p_w(0:3,maxnum),
     $     p_l(0:3,maxnum),p_v(0:3,maxnum),
     $     p_b(0:3,maxnum),p_bbar(0:3,maxnum),p_bhad(0:3,maxnum),
     $     p_lw(0:3,maxnum),p_lt(0:3,maxnum)
      integer nt,nw,nl,nv,nb,nbbar,nbhad,nbjets,njets,nlw,nlt
      integer jbh,jb1,jb2,jbh1,jbh2,jbbar1,jbbar2,jl1,jl2,jv,ij1,ij2
     $     ,ibj1,ibj2

      real *8 pj1(0:3),pj2(0:3),pbj1(0:3),pbj2(0:3),p_bw(0:3),p_tw(0:3),
     $     pj1j2(0:3),pl1l2(0:3)

      real *8 pt_t,y_t,eta_t,minv_t,pt_w,y_w,eta_w,minv_w
      real *8 pt_tw,y_tw,eta_tw,pt_bw,y_bw,eta_bw,minv_bw
      real *8 pttemp,tmp,pt_b1,y_b1,eta_b1,pt_bbar1,y_bbar1,eta_bbar1
      real *8 pt_b2,y_b2,eta_b2,pt_bbar2,y_bbar2,eta_bbar2
      real *8 pt_bhad1,pt_bhad2,eta_bhad
      real *8 pt_j1,y_j1,eta_j1,pt_j2,y_j2,eta_j2,minv_j1j2
      real *8 pt_bj1,y_bj1,eta_bj1,pt_bj2,y_bj2,eta_bj2
      real *8 pt_l1,y_l1,eta_l1,pt_l2,y_l2,eta_l2,pt_v
      real *8 pt_l1l2,y_l1l2,eta_l1l2,minv_l1l2
      real *8 pt_lt,y_lt,eta_lt,pt_lw,y_lw,eta_lw
      real *8 dphi_l1l2,dphi_tw

      integer maxtrack,maxjet
      parameter (maxtrack=2048, maxjet=2048)
      real *8 pjet(4,maxtrack),ptrack(4,maxtrack)
      integer jpart,ntracks,jetvec(maxtrack),ihep_of_track(maxtrack),
     $     jetvec_of_bjet(maxtrack)

      character * 10 cut

      integer icut

c     we need to tell to this analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/

      real *8 p67(0:3),p910(0:3),m67,m910
      

      if (ini) then
         write(*,*) '*****************************'
         if(whcprg.eq.'NLO'.or.whcprg.eq.'LHE') then
            write(*,*) '            NLO analysis '
         elseif(WHCPRG.eq.'HERWIG') then
            write (*,*) '           HERWIG ANALYSIS'
         elseif(WHCPRG.eq.'PYTHIA') then
            write (*,*) '           PYTHIA ANALYSIS'
         endif
         write(*,*) '*****************************'
         ini=.false.
         tcode=6
c     decide t or tbar process
         ttype=powheginput('ttype')
         if(abs(ttype).ne.1) then
            write(*,*) 'Unrecognised ttype in input file'
            write(*,*) 'admitted values: 1 for t, -1 for tbar'
            call exit(1)
         endif
         wcode=-24  *ttype
      endif

      if(whcprg.eq.'NLO'.or.whcprg.eq.'LHE') then
c     find t, W and extra parton, if present
         nt=0
         nw=0
         nl=0
         nv=0

         if(whcprg.eq.'NLO') then
            do ihep=1,nhep
               ist=isthep(ihep)
               id=idhep(ihep)
               if(ist.eq.1) then
                  if(abs(id).eq.abs(tcode)) then
c     !: ttype-blind
                     nt=nt+1
                     p_top(0,nt)=phep(4,ihep)
                     do mu=1,3
                        p_top(mu,nt)=phep(mu,ihep)
                     enddo
                  elseif(id.eq.wcode) then
c     !: look only for W associated to wcode
                     nw=nw+1
                     p_w(0,nw)=phep(4,ihep)
                     do mu=1,3
                        p_w(mu,nw)=phep(mu,ihep)
                     enddo
                  endif
               endif
            enddo

            p910(:)=p_w(:,1)


            
         elseif(whcprg.eq.'LHE') then

c     ist values for top and W
            ist_top=2
            ist_w=2
       
            do ihep=1,nup
c     write(*,*) istup(ihep),idup(ihep),pup(1:4,ihep)
               ist=istup(ihep)
               id=idup(ihep)
               phep(1:4,ihep)=pup(1:4,ihep)

               if(id.eq.24) then
                  p67(0)=phep(4,ihep)
                  p67(1:3)=phep(1:3,ihep)
               endif
               if(id.eq.-24) then
                  p910(0)=phep(4,ihep)
                  p910(1:3)=phep(1:3,ihep)
               endif
               
c     top
               if(ist.eq.ist_top.and.abs(id).eq.abs(tcode)) then
c     !: no ttype used
                  nt=nt+1
                  p_top(0,nt)=phep(4,ihep)
                  do mu=1,3
                     p_top(mu,nt)=phep(mu,ihep)
                  enddo

c     W
               elseif(ist.eq.ist_w.and.id.eq.wcode) then
c     !: no ttype used
                  nw=nw+1
                  p_w(0,nw)=phep(4,ihep)
                  do mu=1,3
                     p_w(mu,nw)=phep(mu,ihep)
                  enddo
c     electron
               elseif(ist.eq.1.and.abs(id).eq.11) then
c     !: no ttype, or decaytype, used
                  nl=nl+1
                  p_l(0,nl)=phep(4,ihep)
                  do mu=1,3
                     p_l(mu,nl)=phep(mu,ihep)
                  enddo
c     electron neutrino
               elseif(ist.eq.1.and.abs(id).eq.12) then
c     !: no ttype, or decaytype, used
                  nv=nv+1
                  p_v(0,nv)=phep(4,ihep)
                  do mu=1,3
                     p_v(mu,nv)=phep(mu,ihep)
                  enddo
               endif
            enddo
         endif
      elseif (WHCPRG.eq.'HERWIG'.or.WHCPRG.eq.'PYTHIA') then
         if(WHCPRG.eq.'HERWIG') then
            ist_top=155
            ist_w  =155 !: for decayed events
         elseif(WHCPRG.eq.'PYTHIA') then
            ist_top=3
            ist_w  =3
         endif

         nt=0
         nw=0
         nl=0
         nv=0

         do ihep=1,nhep
            ist=isthep(ihep)
            id=idhep(ihep)

c     top
            if(ist.eq.ist_top.and.abs(id).eq.abs(tcode)) then
c     !: ttype-blind
               nt=nt+1
               p_top(0,nt)=phep(4,ihep)
               do mu=1,3
                  p_top(mu,nt)=phep(mu,ihep)
               enddo
c     W
            elseif(ist.eq.ist_w.and.id.eq.wcode) then
c     !: look only for W associated to wcode
               nw=nw+1
               p_w(0,nw)=phep(4,ihep)
               do mu=1,3
                  p_w(mu,nw)=phep(mu,ihep)
               enddo
c     electron
            elseif(ist.eq.1.and.abs(id).eq.11) then
               nl=nl+1
               p_l(0,nl)=phep(4,ihep)
               do mu=1,3
                  p_l(mu,nl)=phep(mu,ihep)
               enddo
            endif
         enddo
         
**********************************************************************
c$$$*     kt algorithm, fastjet implementation
c$$$         njets=0
c$$$         call fastjetktwhich(ptrack,ntracks,jet_ktptmin,jet_ktRadius,
c$$$     $        pjet,njets,jetvec) 
**********************************************************************

      else
         write(*,*) 'Invalid WHCPRG'
         call exit(1)
      endif


ccccccccccccccccccccccccccccccc
c     Observables
ccccccccccccccccccccccccccccccc 


      call getinvmass(p67,m67)
      call getinvmass(p910,m910)
      call filld('m67',m67,dsig)
      call filld('m910',m910,dsig)
      call filld('m910all',m910,dsig)

      
c     t
      pt_t      = sqrt(p_top(1,1)**2+p_top(2,1)**2)
      call getrapidity(p_top(0,1),y_t)
      call get_pseudorap(p_top(0,1),eta_t)
      call getinvmass(p_top(0,1),minv_t)

c     w
      pt_w      = sqrt(p_w(1,1)**2+p_w(2,1)**2)
      call getrapidity(p_w(0,1),y_w)
      call get_pseudorap(p_w(0,1),eta_w)
      call getinvmass(p_w(0,1),minv_w)

c      if(WHCPRG.eq.'HERWIG'.or.WHCPRG.eq.'PYTHIA') then
c     hardest lepton
         if(nl.ge.1) then
            pttemp=-1d0
            jl1=0
            do i=1,nl
               pt_l1 = sqrt(p_l(1,i)**2+p_l(2,i)**2)
               if(pt_l1.gt.pttemp) then
                  pttemp=pt_l1
                  jl1=i
               endif
            enddo
            call getrapidity(p_l(0,jl1),y_l1)
            call get_pseudorap(p_l(0,jl1),eta_l1)
         endif
         
c     second hardest lepton
         if(nl.ge.2) then
            pttemp=-1d0
            jl2=0
            do i=1,nl
               pt_l2 = sqrt(p_l(1,i)**2+p_l(2,i)**2)
               if((pt_l2.gt.pttemp).and.(i.ne.jl1))then
                  pttemp=pt_l2
                  jl2=i
               endif
            enddo
            call getrapidity(p_l(0,jl2),y_l2)
            call get_pseudorap(p_l(0,jl2),eta_l2)
            if(jl1.eq.jl2) then
               write(*,*) 'Suspicious event: jl1=jl2'
            endif
         endif

         if(nl.ge.2) then
            do mu=0,3
               pl1l2(mu)=p_l(mu,jl1)+p_l(mu,jl2)
            enddo
            pt_l1l2 = sqrt(pl1l2(1)**2+pl1l2(2)**2)
            call getrapidity(pl1l2,y_l1l2)
            call get_pseudorap(pl1l2,eta_l1l2)
            call getinvmass(pl1l2,minv_l1l2)
            dphi_l1l2  = dabs(atan2(p_l(2,jl1),p_l(1,jl1)) - 
     $           atan2(p_l(2,jl2),p_l(1,jl2)))
            dphi_l1l2=min(dphi_l1l2,2d0*pi-dphi_l1l2)
         endif
c      endif

ccccccccccccccccccccccccc
c     Histograms filling
ccccccccccccccccccccccccc

      icut=-1
      diag=0

 666  continue
      icut=icut+1

      if (icut.eq.0) then
         condition = .true.
         cut = ' nocut'
      elseif (icut.eq.1) then
         goto 999
         condition = cuts1
         cut = ' cut_1'
      elseif (icut.eq.2) then
         condition = cuts2
         cut = ' cut_2'
      elseif (icut.eq.3) then
         condition = cuts3
         cut = ' cut_3'
      elseif (icut.eq.4) then
         goto 999
      else
         write(*,*) 'Error in init_hist, icut ',icut
         call exit(1)
      endif

      if(condition) then

c-----top
c     pt_top
      diag=diag+1
      if(nt.gt.0) call filld('t pt'//cut,pt_t,dsig)

c     pt_top
      diag=diag+1
      if(nt.gt.0) call filld('t pt zoom'//cut,pt_t,dsig)

c     pt_top
      diag=diag+1
      if(nt.gt.0) call filld('t pt tail'//cut,pt_t,dsig)

c     y_top
      diag=diag+1
      if(nt.gt.0) call filld('t y'//cut,y_t,dsig)

c     eta_top
      diag=diag+1
      if(nt.gt.0) call filld('t eta'//cut,eta_t,dsig)

c     minv_top
      diag=diag+1
      if(nt.gt.0) call filld('t invm'//cut,minv_t,dsig)

c-----w
c     pt_w
      diag=diag+1
      if(nw.gt.0) call filld('W pt'//cut,pt_w,dsig)

c     pt_w
      diag=diag+1
      if(nw.gt.0) call filld('W pt zoom'//cut,pt_w,dsig)

c     pt_w
      diag=diag+1
      if(nw.gt.0) call filld('W pt tail'//cut,pt_w,dsig)

c     y_w
      diag=diag+1
      if(nw.gt.0) call filld('W y'//cut,y_w,dsig)

c     eta_w
      diag=diag+1
      if(nw.gt.0) call filld('W eta'//cut,eta_w,dsig)

c     minv_w
      diag=diag+1
      if(nw.gt.0) call filld('W invm'//cut,minv_w,dsig)

c-----hardest lepton
c     pt_l1
      diag=diag+1
      if(nl.gt.0) call filld('l1 pt'//cut,pt_l1,dsig)

c     pt_l1
      diag=diag+1
      if(nl.gt.0) call filld('l1 pt zoom'//cut,pt_l1,dsig)

c     pt_l1
      diag=diag+1
      if(nl.gt.0) call filld('l1 pt tail'//cut,pt_l1,dsig)

c     y_l1
      diag=diag+1
      if(nl.gt.0) call filld('l1 y'//cut,y_l1,dsig)
      
c     eta_l1
      diag=diag+1
      if(nl.gt.0) call filld('l1 eta'//cut,eta_l1,dsig)

c-----second hardest lepton
c     pt_l2
      diag=diag+1
      if(nl.gt.1) call filld('l2 pt'//cut,pt_l2,dsig)

c     pt_l2
      diag=diag+1
      if(nl.gt.1) call filld('l2 pt zoom'//cut,pt_l2,dsig)

c     pt_l2
      diag=diag+1
      if(nl.gt.1) call filld('l2 pt tail'//cut,pt_l2,dsig)

c     y_l2
      diag=diag+1
      if(nl.gt.1) call filld('l2 y'//cut,y_l2,dsig)
      
c     eta_l2
      diag=diag+1
      if(nl.gt.1) call filld('l2 eta'//cut,eta_l2,dsig)

c-----lep1-lep2
c     pt_l1l2
      diag=diag+1
      if(nl.gt.1) call filld('l1l2 pt'//cut,pt_l1l2,dsig)

c     pt_l1l2
      diag=diag+1
      if(nl.gt.1) call filld('l1l2 pt zoom'//cut,pt_l1l2,dsig)

c     pt_l1l2
      diag=diag+1
      if(nl.gt.1) call filld('l1l2 pt tail'//cut,pt_l1l2,dsig)

c     y_l1l2
      diag=diag+1
      if(nl.gt.1) call filld('l1l2 y'//cut,y_l1l2,dsig)
      
c     eta_l1l2
      diag=diag+1
      if(nl.gt.1) call filld('l1l2 eta'//cut,eta_l1l2,dsig)

c     minv_l1l2
      diag=diag+1
      if(nl.gt.1) call filld('l1l2 invm'//cut,minv_l1l2,dsig)

c     dphi_l1l2
      diag=diag+1
      if(nl.gt.1) call filld('l1l2 dphi'//cut,dphi_l1l2,dsig)

c-----total
      diag=diag+1
      call filld('total'//cut,1.5d0,dsig)

      else
         diag=diag+numplots
      endif


      goto 666

 999  end
      


      subroutine getrapidity(p,y)
      implicit none
      real * 8 p(0:3),y
      real *8 tiny
      parameter (tiny=1.d-8)
c     !: protect for small p(0)-p(3) values
      if(dabs(p(0)-p(3)).lt.tiny) then
         y=sign(1.d0,p(3))*1.d8
      else
         y=0.5d0*log((p(0)+p(3))/(p(0)-p(3)))
      endif
      end

      subroutine getinvmass(p,m)
      implicit none
      real * 8 p(0:3),m
      m=sqrt(dabs(p(0)**2-p(1)**2-p(2)**2-p(3)**2))
      end

      subroutine get_pseudorap(p,eta)
      implicit none
      real*8 p(0:3),eta,pt,th
      real *8 tiny
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

