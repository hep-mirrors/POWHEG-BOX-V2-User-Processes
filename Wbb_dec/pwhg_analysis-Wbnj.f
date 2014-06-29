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
      integer i
      real * 8 dy,dylep,dpt,dr
      character * 1 cnum(9)
      data cnum/'1','2','3','4','5','6','7','8','9'/
      integer maxjet
      parameter (maxjet=3)
      integer nptmin
      parameter (nptmin=3)
      character * 4 cptmin(nptmin)
      real * 8 ptminarr(nptmin)
      data cptmin/  '-000',  '-025',  '-050'/
      data ptminarr/   0d0,     25d0,    50d0/
      common/infohist/ptminarr,cnum,cptmin
      save /infohist/
      real * 8 powheginput
      external powheginput

      call inihists

      dy=0.5d0
      dylep=0.4d0
      dpt=10d0
      dr=0.2d0

      do i=1,nptmin
      call bookupeqbins('sigtot'//cptmin(i),1d0,0.5d0,1.5d0)

      call bookupeqbins('Njet'//cptmin(i),1d0,-0.5d0,5.5d0)

      call bookupeqbins('W-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('W-eta'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('W-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('W-m'//cptmin(i),5d0,0d0,200d0)

      call bookupeqbins('lept-eta'//cptmin(i),dylep,-4d0,4d0)
      call bookupeqbins('lept-pt'//cptmin(i),dpt,0d0,500d0)
      call bookupeqbins('miss-pt'//cptmin(i),dpt,0d0,500d0)

      call bookupeqbins('b1-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('b1-eta'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('b1-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('b1-ptzoom'//cptmin(i),2d0,1d0,151d0)
      call bookupeqbins('b1-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
      call bookupeqbins('b1-m'//cptmin(i),dpt,0d0,400d0) 

      call bookupeqbins('b2-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('b2-eta'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('b2-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('b2-ptzoom'//cptmin(i),2d0,1d0,151d0)
      call bookupeqbins('b2-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
      call bookupeqbins('b2-m'//cptmin(i),dpt,0d0,400d0) 

      call bookupeqbins('j1-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('j1-eta'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('j1-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('j1-ptzoom'//cptmin(i),2d0,1d0,151d0)
      call bookupeqbins('j1-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
      call bookupeqbins('j1-m'//cptmin(i),dpt,0d0,400d0) 

      call bookupeqbins('j2-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('j2-eta'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('j2-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('j2-ptzoom'//cptmin(i),2d0,1d0,151d0)
      call bookupeqbins('j2-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
      call bookupeqbins('j2-m'//cptmin(i),dpt,0d0,400d0) 

c$$$      call bookupeqbins('jx1-y'//cptmin(i),dy,-5d0,5d0)
c$$$      call bookupeqbins('jx1-eta'//cptmin(i),dy,-5d0,5d0)
c$$$      call bookupeqbins('jx1-pt'//cptmin(i),dpt,0d0,400d0)
c$$$      call bookupeqbins('jx1-ptzoom'//cptmin(i),2d0,1d0,151d0)
c$$$      call bookupeqbins('jx1-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
c$$$      call bookupeqbins('jx1-m'//cptmin(i),dpt,0d0,400d0) 
c$$$
c$$$      call bookupeqbins('jx2-y'//cptmin(i),dy,-5d0,5d0)
c$$$      call bookupeqbins('jx2-eta'//cptmin(i),dy,-5d0,5d0)
c$$$      call bookupeqbins('jx2-pt'//cptmin(i),dpt,0d0,400d0)
c$$$      call bookupeqbins('jx2-ptzoom'//cptmin(i),2d0,1d0,151d0)
c$$$      call bookupeqbins('jx2-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
c$$$      call bookupeqbins('jx2-m'//cptmin(i),dpt,0d0,400d0) 
c$$$
c$$$      call bookupeqbins('jx3-y'//cptmin(i),dy,-5d0,5d0)
c$$$      call bookupeqbins('jx3-eta'//cptmin(i),dy,-5d0,5d0)
c$$$      call bookupeqbins('jx3-pt'//cptmin(i),dpt,0d0,400d0)
c$$$      call bookupeqbins('jx3-ptzoom'//cptmin(i),2d0,1d0,151d0)
c$$$      call bookupeqbins('jx3-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
c$$$      call bookupeqbins('jx3-m'//cptmin(i),dpt,0d0,400d0) 
c$$$
c$$$      call bookupeqbins('jx4-y'//cptmin(i),dy,-5d0,5d0)
c$$$      call bookupeqbins('jx4-eta'//cptmin(i),dy,-5d0,5d0)
c$$$      call bookupeqbins('jx4-pt'//cptmin(i),dpt,0d0,400d0)
c$$$      call bookupeqbins('jx4-ptzoom'//cptmin(i),2d0,1d0,151d0)
c$$$      call bookupeqbins('jx4-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
c$$$      call bookupeqbins('jx4-m'//cptmin(i),dpt,0d0,400d0) 

      enddo
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
      integer   maxjet,mjets,njets,numjets,ntracks
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
      real * 8 ptb1min,ptb2min,ybmax,yjmax
      common/infohist/ptminarr,cnum,cptmin
      save /infohist/
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
      integer maxnumlep
      parameter (maxnumlep=10)
      real * 8 pvl(4,maxnumlep),plep(4,maxnumlep)
      integer mu,ilep,ivl,nlep,nvl
      logical is_W
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
      logical found_hardjet,found_nexthardjet,found_bjet1,found_bjet2
      real * 8 phardjet(4),pnexthardjet(4),pbjet1(4),pbjet2(4),px(4)
      logical is_B_hadron,is_BBAR_hadron
      external is_B_hadron,is_BBAR_hadron
      real * 8 p_b(4,maxnumlep),p_bbar(4,maxnumlep)
      integer nbjet_array(maxjet),
     $     nbbarjet_array(maxjet),jetinfo(maxjet),id,nb,
     $     nbbar,nbjet,nbbarjet,typeb1,typeb2,wrong_bb_sequence
      real * 8 pthardjet, ptbjet1, ptbjet2
      integer dummy
      logical debug

      debug = .false.

c      call reweightifneeded(dsig0,dsig)

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

c      if(dsig.eq.0) return


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

      ilep = 0
      ivl  = 0

      do ihep=1,nhep  
         isthep_loc(ihep) = isthep(ihep)
      enddo

c     Loop again over final state particles to find products of W decay, by
c     looking into the shower branchings.

      nlep=0
      nvl=0
      nb=0
      nbbar=0

      do ihep=1,nhep
         if (isthep_loc(ihep).eq.1.and.(idhep(ihep).eq.idl .or.
     $        idhep(ihep).eq.idnu)) then
            is_W = .true.
            if (is_W) then
c     find first decay product
               if(idhep(ihep).eq.idl) then
                  ilep=ihep
                  nlep=nlep+1
c     find second decay product
               elseif(idhep(ihep).eq.idnu) then
                  ivl=ihep
                  nvl=nvl+1
               endif
            endif
         endif
         if (isthep_loc(ihep).eq.1.and.(is_B_hadron(idhep(ihep))))
     1        then
            nb=nb+1
            do mu=1,4
               p_b(mu,nb)=phep(mu,ihep)
            enddo
         endif
         if (isthep_loc(ihep).eq.1.and.(is_BBAR_hadron(idhep(ihep))))
     1        then
            nbbar=nbbar+1
            do mu=1,4
               p_bbar(mu,nbbar)=phep(mu,ihep)
            enddo
         endif
      enddo
      
      if(nvl.ne.1.or.nlep.ne.1) then
         write(*,*) 'Problems with leptons from W decay'
         write(*,*) 'nvl= ',nvl, 'nlep= ',nlep
         write(*,*) 'PROGRAM ABORT'
         call pwhg_exit(-1)
      endif

      if (ilep*ivl.eq.0) then
         write(*,*) 'ERROR... have NOT found the electron/neutrino'
         write(*,*) 'idhep'
         write(*,*) (idhep(ihep),ihep=1,nhep)
         call pwhg_exit(-1)
      endif

      do mu=1,4
         plep(mu,nlep)    = phep(mu,ilep)
         pvl(mu,nvl)      = phep(mu,ivl)
      enddo 

      if (nb*nbbar.eq.0) then
         if (((nb.eq.0).and.(nbbar.ne.0)).or.
     $        ((nb.ne.0).and.(nbbar.eq.0))) then
            write(*,*) 'SEVERE WARNING: ***** One b is missing ******' 
C           write(*,*) 'ihepb,ihepbbar ',ihepb,ihepbbar            
            return
         endif
      endif
        
C     Change status of l vu 
      isthep_loc(ilep)=10000
      isthep_loc(ivl)=10000

C     W momentum
      do mu=1,4
         pw(mu)=plep(mu,1) + pvl(mu,1)
      enddo
      
c     set up arrays for jet finding
c      do jpart=1,maxtrack
c         do mu=1,4
c            ptrack(mu,jpart)=0d0
c         enddo
c         jetvec(jpart)=0
c      enddo      
c      do jjet=1,maxjet
c         do mu=1,4
c            pj(mu,jjet)=0d0
c         enddo
c      enddo

      ntracks=0
      mjets=0
      jetvec = 0

      if(debug) write(*,*) ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

CC    Loop over final state particles to find colored partons
      do ihep=1,nhep
         if (isthep_loc(ihep).eq.1) then
            if (ntracks.eq.maxtrack) then
               write(*,*) 'Too many particles. Increase maxtrack!'
               write(*,*) ' PROGRAM ABORTS'
               call pwhg_exit(-1)
            endif
CC    Copy momenta to be passed to jet algorithm
            ntracks=ntracks+1
            ihep_of_track(ntracks)=ihep
            if(debug) write(*,*) "=================================="
            do mu=1,4
               ptrack(mu,ntracks)=phep(mu,ihep)
               if(debug) 
     $              write(*,*) ntracks," -> ptrack(",mu,")",
     $              ptrack(mu,ntracks)
            enddo
         endif
      enddo

CC    Apply jet algorithm
      if (ntracks.eq.0) then
         numjets=0
      else
         palg = -1d0         ! Alg: 1 = kt, -1 = antikt
         R    = 0.5d0        ! Radius parameter
         ptminfastjet = minval(ptminarr) ! Pt min
         call fastjetppgenkt(ptrack,ntracks,R,palg,ptminfastjet,
     $        pj,numjets,jetvec)         
      endif
     
CC    Jetvec(i): number of jet in which parton i ended up being
      if(debug) then
         write(*,*) "#######################--> jetvec"
         write(*,*) jetvec(1),jetvec(2),jetvec(3),jetvec(4),jetvec(5)
         write(*,*) "#######################-->"
      endif

CC    Find in which ptrack the B hadrons ended up
      nbjet=0
      nbbarjet=0
CC    Loop over tracks
      do i=1,ntracks
         id=idhep(ihep_of_track(i))
         if (is_B_hadron(id)) then
            nbjet=nbjet+1
            nbjet_array(nbjet)=jetvec(i)            
         elseif (is_BBAR_hadron(id)) then   
            nbbarjet=nbbarjet+1
            nbbarjet_array(nbbarjet)=jetvec(i)                        
         endif
      enddo

      
CC    We want two b jets for the current analysis
      if (nbjet*nbbarjet.eq.0) return
c---      write(*,*) 'START'
c---      write(*,*) 'nbjet,nbbarjet',nbjet,nbbarjet
c---      write(*,*) 'nbjet_array(1) ',nbjet_array(1)
c---      write(*,*) 'nbbarjet_array(1)',nbbarjet_array(1)
c---      write(*,*) 'numjets ',numjets

CC    Jets are ordered in decreasing pt. Set up array of info on jets
CC    - if jetinfo = 0 then non-b jet
CC    - if jetinfo = 5 then b jet
CC    - if jetinfo =-5 then bbar jet

      jetinfo=0

      do k=1,nbjet
         jetinfo(nbjet_array(k)) = 5
      enddo
      do k=1,nbbarjet
         jetinfo(nbbarjet_array(k)) = -5
      enddo

c---      do i=1,numjets
c---         do j=1,nbjet
c---            if (i.eq.nbjet_array(j)) then
c---               jetinfo(i)=5
c---            endif
c---         enddo
c---         do j=1,nbbarjet
c---            if (i.eq.nbbarjet_array(j)) then
c---               jetinfo(i)=-5
c---             endif
c---         enddo
c---      enddo

      if(debug) then
       write(*,*) "#######################--> jetinfo"
       write(*,*) jetinfo(1),jetinfo(2),jetinfo(3),jetinfo(4),jetinfo(5)
       write(*,*) "#######################-->"
         
       do i=1,numjets
          do mu=1,4
             write(*,*) i," -> pj(",mu,")", pj(mu,i)
          enddo
       enddo
      endif

      found_hardjet=.false.
      found_nexthardjet=.false.
      found_bjet1=.false.
      found_bjet2=.false.
      typeb1=0
      typeb2=0
      do i=1,numjets
         if (jetinfo(i).eq.0) then
            if (.not.found_hardjet) then
               found_hardjet=.true.
               do mu=1,4
                  phardjet(mu)=pj(mu,i)
               enddo            
               goto 111
            elseif (found_hardjet.and..not.found_nexthardjet) then
               found_nexthardjet=.true.
               do mu=1,4
                  pnexthardjet(mu)=pj(mu,i)
               enddo      
               goto 111
            endif
         elseif (abs(jetinfo(i)).eq.5) then
            if (.not.found_bjet1) then
               found_bjet1=.true.
c     keep track of b flavor of the 1st jet (quark or antiquark)
               typeb1=jetinfo(i)
               do mu=1,4
                  pbjet1(mu)=pj(mu,i)
               enddo 
               goto 111
            endif
            if (.not.found_bjet2.and.found_bjet1) then
               found_bjet2=.true.
c     keep track of b flavor of the 2nd jet (quark or antiquark)
               typeb2=jetinfo(i)
               do mu=1,4
                  pbjet2(mu)=pj(mu,i)
               enddo 
            endif
            if (found_bjet1.and.found_bjet2) then
c     they must come from a b-bbar couple. Otherwise, return
               if (typeb1*typeb2.gt.0) then
                  wrong_bb_sequence = wrong_bb_sequence + 1                  
                  if (mod(wrong_bb_sequence,1).eq.0) then
                     write(*,*) 'WARNING: 2 b or 2 bbar in sequence ', 
     $                    wrong_bb_sequence
                  endif
c                  write(*,*) 'nbjet nbbarjet', nbjet,nbbarjet
c                  write(*,*) (jetinfo(i),i=1,numjets)
                  return
               endif
            endif
         endif
 111     continue
      enddo

      if(debug) then
         write(*,*) "found_bjet1   =", found_bjet1
         write(*,*) "found_bjet2   =", found_bjet2
         write(*,*) "found_hardjet =", found_hardjet
         write(*,*) "found_nexthj  =", found_nexthardjet
      endif

c     if there is only one b jet, then return
      if (.not.(found_bjet1.and.found_bjet2)) return
      if (.not.(found_hardjet).and..not.(processid.eq.'Wbb')) return

c     now we have 2 B jet of opposite flavors and at least 1 hard jet (plus leptons)
c     we can start plotting 
      ptb1min=20d0
      ptb2min=20d0

      call getyetaptmass(pbjet1,y,eta,pt,m)
      if(debug)  write(*,*) "ptb1 =", pt
      if (pt.lt.ptb1min) return
c      if (abs(y).gt.ybmax) return
      call getyetaptmass(pbjet2,y,eta,pt,m)
      if(debug)  write(*,*) "ptb2 =", pt
      if (pt.lt.ptb2min) return
c      if (abs(y).gt.ybmax) return
c      call getyetaptmass(phardjet,y,eta,pt,m)
c      if (abs(y).gt.yjmax) return

      if(debug) then
         write(*,*) "numjets =", numjets
      endif

c*****************************************************
c     total number of jets minus the 2 b jets
c***  change the following for different analysis  ***
      njets=numjets-2
      
      do i=1,nptmin        

         if (found_hardjet) then
            pthardjet = sqrt(phardjet(1)**2+phardjet(2)**2)
            if (pthardjet.lt.ptminarr(i)) then
c     since ptminarr is pt ordered, the following return is correct
               return
            endif
         endif

         call filld('sigtot'//cptmin(i),1d0,dsig)         
         
         if(.not.found_hardjet.and..not.found_nexthardjet) then
            call filld('Njet'//cptmin(i),0d0,dsig)
         endif
         if(found_hardjet.and..not.found_nexthardjet) then
            call filld('Njet'//cptmin(i),1d0,dsig)
         endif
         if(found_nexthardjet) then
            call filld('Njet'//cptmin(i),2d0,dsig)
         endif

c     W
         call getyetaptmass(pw,y,eta,pt,m)
         call filld('W-y'//cptmin(i),    y, dsig)
         call filld('W-eta'//cptmin(i),eta, dsig)
         call filld('W-pt'//cptmin(i),  pt, dsig)
         call filld('W-m'//cptmin(i), m, dsig)
c     lepton
         call getyetaptmass(plep(:,1),y,eta,pt,m)
         call filld('lept-eta'//cptmin(i),eta, dsig)
         call filld('lept-pt'//cptmin(i),  pt, dsig)
c     neutrino
         call getyetaptmass(pvl(:,1),y,eta,pt,m)
         call filld('miss-pt'//cptmin(i),  pt, dsig)

c     hardest b jet
         call getyetaptmass(pbjet1,y,eta,pt,m)
         call filld('b1-y'//cptmin(i),     y, dsig)
         call filld('b1-eta'//cptmin(i), eta, dsig)
         call filld('b1-pt'//cptmin(i),   pt, dsig)
         call filld('b1-ptzoom'//cptmin(i),   pt, dsig)
         call filld('b1-ptzoom2'//cptmin(i),   pt, dsig)
         call filld('b1-m'//cptmin(i),     m, dsig)
        
c     next-to-hardest b jet
         call getyetaptmass(pbjet2,y,eta,pt,m)
         call filld('b2-y'//cptmin(i),     y, dsig)
         call filld('b2-eta'//cptmin(i), eta, dsig)
         call filld('b2-pt'//cptmin(i),   pt, dsig)
         call filld('b2-ptzoom'//cptmin(i),   pt, dsig)
         call filld('b2-ptzoom2'//cptmin(i),   pt, dsig)
         call filld('b2-m'//cptmin(i),     m, dsig)

         if (found_hardjet) then
c     hardest jet         
            call getyetaptmass(phardjet,y,eta,pt,m)
            call filld('j1-y'//cptmin(i),     y, dsig)
            call filld('j1-eta'//cptmin(i), eta, dsig)
            call filld('j1-pt'//cptmin(i),   pt, dsig)
            call filld('j1-ptzoom'//cptmin(i),   pt, dsig)
            call filld('j1-ptzoom2'//cptmin(i),   pt, dsig)
            call filld('j1-m'//cptmin(i),     m, dsig)
         endif

         if (found_nexthardjet) then
c     next-to-hardest jet         
            call getyetaptmass(pnexthardjet,y,eta,pt,m)
            call filld('j2-y'//cptmin(i),     y, dsig)
            call filld('j2-eta'//cptmin(i), eta, dsig)
            call filld('j2-pt'//cptmin(i),   pt, dsig)
            call filld('j2-ptzoom'//cptmin(i),   pt, dsig)
            call filld('j2-ptzoom2'//cptmin(i),   pt, dsig)
            call filld('j2-m'//cptmin(i),     m, dsig)
         endif
c$$$
c$$$         px(:)=pj(:,1)
c$$$         call getyetaptmass(px,y,eta,pt,m)
c$$$         call filld('jx1-y'//cptmin(i),     y, dsig)
c$$$         call filld('jx1-eta'//cptmin(i), eta, dsig)
c$$$         call filld('jx1-pt'//cptmin(i),   pt, dsig)
c$$$         call filld('jx1-ptzoom'//cptmin(i),   pt, dsig)
c$$$         call filld('jx1-ptzoom2'//cptmin(i),   pt, dsig)
c$$$         call filld('jx1-m'//cptmin(i),     m, dsig)
c$$$
c$$$         px(:)=pj(:,2)
c$$$         call getyetaptmass(px,y,eta,pt,m)
c$$$         call filld('jx2-y'//cptmin(i),     y, dsig)
c$$$         call filld('jx2-eta'//cptmin(i), eta, dsig)
c$$$         call filld('jx2-pt'//cptmin(i),   pt, dsig)
c$$$         call filld('jx2-ptzoom'//cptmin(i),   pt, dsig)
c$$$         call filld('jx2-ptzoom2'//cptmin(i),   pt, dsig)
c$$$         call filld('jx2-m'//cptmin(i),     m, dsig)
c$$$
c$$$         if (found_hardjet) then
c$$$            px(:)=pj(:,3)
c$$$            call getyetaptmass(px,y,eta,pt,m)
c$$$            call filld('jx3-y'//cptmin(i),     y, dsig)
c$$$            call filld('jx3-eta'//cptmin(i), eta, dsig)
c$$$            call filld('jx3-pt'//cptmin(i),   pt, dsig)
c$$$            call filld('jx3-ptzoom'//cptmin(i),   pt, dsig)
c$$$            call filld('jx3-ptzoom2'//cptmin(i),   pt, dsig)
c$$$            call filld('jx3-m'//cptmin(i),     m, dsig)
c$$$         endif
c$$$            
c$$$         if (found_nexthardjet) then
c$$$            px(:)=pj(:,4)
c$$$            call getyetaptmass(px,y,eta,pt,m)
c$$$            call filld('jx4-y'//cptmin(i),     y, dsig)
c$$$            call filld('jx4-eta'//cptmin(i), eta, dsig)
c$$$            call filld('jx4-pt'//cptmin(i),   pt, dsig)
c$$$            call filld('jx4-ptzoom'//cptmin(i),   pt, dsig)
c$$$            call filld('jx4-ptzoom2'//cptmin(i),   pt, dsig)
c$$$            call filld('jx4-m'//cptmin(i),     m, dsig)
c$$$         endif
c$$$         
      enddo
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

