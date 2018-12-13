c  The next subroutines, open some histograms and prepare them 
c      to receive data 
c  You can substitute these  with your favourite ones
c  init   :  opens the histograms
c  topout :  closes them
c  pwhgfill  :  fills the histograms with data


c modified analysis for polarization observables

      subroutine init_hist
      implicit none
      include  'LesHouches.h'
      include 'pwhg_math.h'
      integer j,k,i
      real * 8 dy,dylep,dpt,dr, dphi
      character * 1 cnum(9)
      data cnum/'1','2','3','4','5','6','7','8','9'/
      integer maxjet
      parameter (maxjet=3)
      integer nptmin
      parameter (nptmin=3)
      character * 4 cptmin(nptmin)
      real * 8 ptminarr(nptmin)
      real * 8 minvminarr(nptmin)
      data cptmin/  '-001',  '-010',  '-020'/
      data ptminarr/   1d0,     10d0,    20d0/
      common/infohist/ptminarr,cnum,cptmin
      save /infohist/
      real * 8 Hmass,Hwidth,powheginput
      real * 8 dctheta
      external powheginput
      character * 2 seqstring
      integer nptWcutmax
      parameter(nptWcutmax = 51)
      real * 8 ptWcuts(0:nptWcutmax-1)
      integer nptWcut, ncut 
      common/cuts/ptWcuts,nptWcut
      
      call inihists

      dy=0.5d0
      dylep=0.4d0
      dpt=10d0
      dr=0.2d0
      dctheta = 0.05d0
      dphi = 0.05d0

      nptWcut = 41
c      nptWcut = 3
      do i=0,nptWcut -1
	ptWcuts(i) = i * 10d0
      enddo
      
      Hmass = powheginput('hmass')
      Hwidth = powheginput('hwidth')
      
      do i=1,nptmin
c     total cross section sanity check

      call bookupeqbins('sigtot'//cptmin(i),1d0,0.5d0,1.5d0)
      
      call bookupeqbins('Nevents'//cptmin(i),2.5d0,0,2d2)

      call bookupeqbins('Njet'//cptmin(i),1d0,-0.5d0,5.5d0)

      call bookupeqbins('H-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('H-eta'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('H-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('H-m'//cptmin(i),Hwidth,Hmass-20*Hwidth,
     $     Hmass+20*Hwidth)
c      call bookupeqbins('H-m'//cptmin(i),0.2d-2,124.98d0,125.020d0)

      call bookupeqbins('W-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('W-eta'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('W-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('W-m'//cptmin(i),dpt,0d0,200d0)

      call bookupeqbins('lept-eta'//cptmin(i),dylep,-4d0,4d0)
      call bookupeqbins('lept-pt'//cptmin(i),dpt,0d0,500d0)
      call bookupeqbins('miss-pt'//cptmin(i),dpt,0d0,500d0)

      call bookupeqbins('HW-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('HW-eta'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('HW-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('HW-ptzoom'//cptmin(i),2d0,1d0,151d0)
      call bookupeqbins('HW-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
      call bookupeqbins('HW-ptzoom3'//cptmin(i),0.001d0,0d0,0.2d0)
      call bookupeqbins('HW-m'//cptmin(i),dpt,0d0,400d0)
      
      
      enddo

c     costheta and phi distributions
      do ncut=0,nptWcut -1,20 
	write (seqstring,'(I0)') ncut
	call bookupeqbins('costheta'//trim(seqstring),dctheta,-1d0,1d0)
	call bookupeqbins('phi'//trim(seqstring),dphi,0,2*pi)
      enddo
	
      do ncut=0,nptWcut -1 
	write (seqstring,'(I0)') ncut
	call bookupeqbins('sigtotcut'//trim(seqstring),1d0,-0.5d0,0.5d0)
	call bookupeqbins('ptcut'//trim(seqstring),dpt,ptWcuts(ncut),
     $ 	ptWcuts(ncut) + 400d0)
	call bookupeqbins('F0'//trim(seqstring),1d0,-0.5d0,0.5d0)
        call bookupeqbins('FL'//trim(seqstring),1d0,-0.5d0,0.5d0)
	call bookupeqbins('FR'//trim(seqstring),1d0,-0.5d0,0.5d0)
	
c	call bookupeqbins('A0'//trim(seqstring),1d0,-0.5d0,0.5d0)
c	call bookupeqbins('A1'//trim(seqstring),1d0,-0.5d0,0.5d0)
	call bookupeqbins('A2'//trim(seqstring),1d0,-0.5d0,0.5d0)
	call bookupeqbins('A3'//trim(seqstring),1d0,-0.5d0,0.5d0)
c	call bookupeqbins('A4'//trim(seqstring),1d0,-0.5d0,0.5d0)
	call bookupeqbins('A5'//trim(seqstring),1d0,-0.5d0,0.5d0)
	
      enddo
      

      
c     1 elect, 2 muon, 3 tau
c     4, 5, 6 respective neutrinos
c     7 hadr
c      call bookupeqbins('Br.frac.',1d0,0.5d0,7.5d0)


c     1 ud, 2 us, 3 ub, 4 cd, 5 cs, 6 cb
c      call bookupeqbins('flav.str.',1d0,0.5d0,6.5d0)


      end
     
      subroutine analysis(dsig0)
      implicit none
      real * 8 dsig0
      include 'hepevt.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h' 
      include 'pwhg_rad.h' 
      include 'pwhg_weights.h'
      include 'pwhg_rwl.h'
      include 'pwhg_bookhist-multi-new.h'
c      include 'pwhg_flg.h'
c      include 'LesHouches.h'
      integer isthep_loc(NMXHEP)  ! local copy of isthep
      logical ini
      data ini/.true./
      save ini
      integer   maxjet,mjets,njets,numjets,ntracks
      parameter (maxjet=2048)
      real * 8  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     1    phij(maxjet),pj(4,maxjet),rr,ptrel(4)
      integer maxtrack
      parameter (maxtrack=2048)
      real * 8  ptrack(4,maxtrack)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer flavtrack(maxtrack)
      character * 1 cnum(9)
      integer nptmin
      parameter (nptmin=3)
      character * 4 cptmin(nptmin)
      real * 8 ptminarr(nptmin)    
      real * 8 minvminarr(nptmin)    
      common/infohist/ptminarr,cnum,cptmin
      save /infohist/
      integer j,k,i,jj
c     we need to tell to this analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      integer ih,il,inu
      real * 8 ph(4),pl(4),pnu(4),pw(4)
      real * 8 httot,y,eta,pt,m
      real * 8 dy,deta,delphi,dr
      integer ihep
      real * 8 powheginput,dotp
      external powheginput,dotp
      real * 8 ptmin
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      integer Vdecmod,idl,idnu
      save Vdecmod,idl,idnu
      integer maxnumlep
      parameter (maxnumlep=10)
      real * 8 pvl(4,maxnumlep),plep(4,maxnumlep)
      integer mu,ilep,ivl,nlep,nvl, nh
      integer nmaxpart
      parameter (nmaxpart=10)
      integer poslarr(nmaxpart),posnuarr(nmaxpart),posharr(nmaxpart),
     $     posgamarr(nmaxpart),posVarr(nmaxpart)
      logical is_W
      real * 8 mV2,ptvb,mvb,ptlep,ptminfastjet,ptvl,R,ylep,yvb,yvl
      real * 8 Wmass,Wwidth,Wmasslow,Wmasshigh
      integer jpart, jjet
      real * 8 palg
      integer ii
      integer  minlo
      save minlo
      data minlo/0/
      character * 20 processid
c      real * 8 rescfac1,rescfac2
c      common /crescfac/rescfac1,rescfac2
      integer nweights
      logical inimulti
      data inimulti/.true./
      save inimulti
      real * 8 Vud,Vus,Vub,Vcd,Vcs,Vcb
      real * 8 dsig(1:rwl_maxweights)
      real * 8 pl03(0:3),pnu03(0:3), ctheta, ph03(0:3)
      real * 8 FF0, FFL, FFR, FLFR 
      real * 8 sphi, cphi, phi, cphiTY
      real * 8 sphi1, cphi1, phi1, ctheta3B
      character * 2 seqstring
      integer nptWcutmax, nptWcut, ncut
      parameter(nptWcutmax = 51)
      real * 8 ptWcuts(0:nptWcutmax-1)
      real * 8 AA(0:7)  
      real * 8 pa(1:4), pb(1:4), pa03(0:3), pb03(0:3)
      logical btag(maxjet), ctag(maxjet)
      integer cnt_b(maxjet), cnt_c(maxjet)
      common/cuts/ptWcuts,nptWcut
      
      
      if(inimulti) then
         if(rwl_num_weights.eq.0) then
            call setupmulti(1)
         else
            call setupmulti(rwl_num_weights+1)
         endif
         inimulti=.false.
      endif

            
      dsig=0
      if(rwl_num_weights.eq.0) then
         dsig(1)=dsig0
         nweights=1
      else
         dsig(1) = dsig0
         dsig(2:rwl_num_weights+1)=rwl_weights(1:rwl_num_weights)
          nweights=rwl_num_weights+1
      endif

      if(sum(abs(dsig)).eq.0) return

c      if(dsig.eq.0) return

      if (ini) then
         Vdecmod=powheginput('vdecaymode')
         idvecbos=powheginput('idvecbos')

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
            processid='HW'
         else
            include 'pwhg_processid.h'
         endif
         ini=.false.
      endif

      ilep=0
      ih=0
      ivl=0


      do ihep=1,nhep  
         isthep_loc(ihep) = isthep(ihep)
      enddo
      
      do mu=1,4
            pa(mu)=phep(mu,1)
            pb(mu)=phep(mu,2)
      enddo                   
      
      pa03(0) = pa(4)
      pb03(0) = pb(4)
      pa03(1:3) = pa(1:3)
      pb03(1:3) = pb(1:3)
      
      
      if ((WHCPRG.eq.'NLO   ').or.(WHCPRG.eq.'LHE   ')) then 
         if (Vdecmod.ne.0.and.Vdecmod.ne.10.and.Vdecmod.ne.11) then
            do ihep=1,nhep            
               if(idhep(ihep).eq.idl) then
                  ilep=ihep
               elseif(idhep(ihep).eq.idnu) then
                  ivl=ihep
               elseif(idhep(ihep).eq.25) then
                  ih=ihep
               endif
            enddo
         else
            if (WHCPRG.eq.'NLO   ') then
               ih=3
               ilep=4
               ivl=5
            else
               ih=3
               ilep=5
               ivl=6
            endif
         endif
         do mu=1,4
            ph(mu)=phep(mu,ih)
            plep(mu,1)=phep(mu,ilep)
            pvl(mu,1)=phep(mu,ivl)
         enddo              
      endif

      
c     Analysis after MC shower
      if((WHCPRG.eq.'HERWIG').or.(WHCPRG.eq.'PYTHIA')) then
c     Loop again over final state particles to find products of W decay, by
c     looking into the shower branchings.
         nlep=0
         nvl=0
         do ihep=1,nhep
c     works for POWHEG+HERWIG, POWHEG+PYHIA, HERWIG, PYTHIA and real in
c     MC@NLO
            if(idhep(ihep).eq.25.and.isthep_loc(ihep).eq.1) then
               ph=phep(1:4,ihep)
               ih=ihep
            endif
            if (isthep_loc(ihep).eq.1.and.(idhep(ihep).eq.idl.or.
     $           idhep(ihep).eq.idnu))
     1           then
c               is_W = idhep(jmohep(1,jmohep(1,ihep))).eq.idvecbos .or.
c     $         idhep(jmohep(1,jmohep(1,jmohep(1, ihep)))).eq.idvecbos
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
c     if the hadronization is switched off, then the electrons and neutrinos
c     that are found come only from the W decay
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
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
         enddo
         if(nvl.ne.1.or.nlep.ne.1) then
            write(*,*) 'Problems with leptons from W decay'
c            write(*,*) 'PROGRAM ABORT'
            write(*,*) 'nvl= ',nvl, 'nlep= ',nlep
c            call exit(1)
            return
         endif
            
         do mu=1,4
            plep(mu,nlep)=phep(mu,ilep)
            pvl(mu,nvl)=phep(mu,ivl)
         enddo
      endif

         
c     Analysis after MC shower
      if(WHCPRG.eq.'PY8') then
c     Loop over final state particles to find products of W decay, by
c     looking into the shower branchings.
	 nlep=nmaxpart
	 nvl=nmaxpart
	 nh=nmaxpart
	 call find_particles(idl,nlep,poslarr)
	 call find_particles(idnu,nvl,posnuarr)      
c     find Higgs boson
	 call find_particles(25,nh,posharr)      
	 if (nlep.eq.0.or.nvl.eq.0.or.nh.eq.0) then
	  write(*,*) 'Problems with leptons from W decay or with Higgs'
	  write(*,*) 'flavor string'
	  do ihep=1,nhep
            if(isthep(ihep).gt.1) then
               write(*,*) idhep(ihep), isthep(ihep)
            endif
	  enddo
	  write(*,*) 'nvl= ',nvl, 'nlep= ',nlep, 'nh= ',nh 
	  write(*,*) 'PROGRAM ABORT'
	  call pwhg_exit(-1)        
	 endif
	 
	 ilep = poslarr(1)
	 ivl  = posnuarr(1)
	 ih   = posharr(1)
	 
         do mu=1,4
	  plep(mu,1) = phep(mu,poslarr(1))
	  pvl(mu,1)  = phep(mu,posnuarr(1))         
	  ph(mu)   = phep(mu,posharr(1))  
         enddo
      endif
         
         
c     change status of l vu and Higgs
      isthep_loc(ilep)=-10000
      isthep_loc(ivl)=-10000
      isthep_loc(ih)=-10000


c      if (abs(idhep(ilep)).eq.11) then
c      Z -> e+ e-  or W -> e nu_e
c         call filld('Br.frac.',1d0,dsig)
c      elseif (abs(idhep(ilep)).eq.13) then
c      Z -> mu+ mu-  or W -> mu nu_mu
c         call filld('Br.frac.',2d0,dsig)
c      elseif (abs(idhep(ilep)).eq.15) then
c      Z -> tau+ tau-  or W -> tau nu_tau
c         call filld('Br.frac.',3d0,dsig)
c      elseif (abs(idhep(ilep)).eq.12) then
c     Z -> nu_e nu_e (no plot for W)
c         call filld('Br.frac.',4d0,dsig)
c      elseif (abs(idhep(ilep)).eq.14) then
c     Z -> nu_mu nu_mu (no plot for W)
c         call filld('Br.frac.',5d0,dsig)
c      elseif (abs(idhep(ilep)).eq.16) then
c     Z -> nu_tau nu_tau (no plot for W)
c         call filld('Br.frac.',6d0,dsig)
c      else
c     Z or W hadronic decay         
c         call filld('Br.frac.',7d0,dsig)
c      endif
 


      Vud=0.97428d0 
      Vus=0.2253d0  
      Vub=0.00347d0 
      Vcd=0.2252d0  
      Vcs=0.97345d0 
      Vcb=0.0410d0  

c     1 ud, 2 us, 3 ub, 4 cd, 5 cs, 6 cb
c      if (abs(idhep(ivl)).eq.2) then
c         if (abs(idhep(ilep)).eq.1) then
c            call filld('flav.str.',1d0,dsig/Vud**2)
c         elseif (abs(idhep(ilep)).eq.3) then
c            call filld('flav.str.',2d0,dsig/Vus**2)
c         elseif (abs(idhep(ilep)).eq.5) then
c            call filld('flav.str.',3d0,dsig/Vub**2)
c            write(*,*) '=========================> ', idhep(ilep), 
c     $           dsig0/Vub**2
c         endif
c      elseif (abs(idhep(ivl)).eq.4) then
c         if (abs(idhep(ilep)).eq.1) then
c            call filld('flav.str.',4d0,dsig/Vcd**2)
c         elseif (abs(idhep(ilep)).eq.3) then
c            call filld('flav.str.',5d0,dsig/Vcs**2)
c         elseif (abs(idhep(ilep)).eq.5) then
c            call filld('flav.str.',6d0,dsig/Vcb**2)
c         endif
c      endif


c     W momentum
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
c      do jjepwhg_analysis-HWnJ.ft=1,maxjet
c         do mu=1,4
c            pj(mu,jjet)=0d0
c         enddo
c      enddo

c     set up flavor arrays
      do jpart=1,maxtrack
         flavtrack(jpart) = 0
      enddo      
      do jjet=1,maxjet
         btag(jjet) =  .false.
         cnt_b(jjet) = 0
         ctag(jjet)  = .false.
         cnt_c(jjet) = 0
      enddo


      ntracks=0
      mjets=0
c     Loop over final state particles to find jets 
      do ihep=1,nhep
         if (isthep_loc(ihep).eq.1.and.idhep(ihep).ne.idl
     $   .and.idhep(ihep).ne.idnu.and.idhep(ihep).ne.25) then
           if (ntracks.eq.maxtrack) then
              write(*,*) 'Too many particles. Increase maxtrack.'//
     #             ' PROGRAM ABORTS'
              call exit(1)
           endif
c     copy momenta to construct jets 
           ntracks=ntracks+1
           do mu=1,4
              ptrack(mu,ntracks)=phep(mu,ihep)
           enddo
           flavtrack(ntracks) = idhep(ihep)
        endif
      enddo
      if (ntracks.eq.0) then
         numjets=0
      else
c     palg=1 is standard kt, -1 is antikt
         palg = -1d0
         R = 0.5d0              ! radius parameter
         ptminfastjet = 1d0
         call fastjetppgenkt(ptrack,ntracks,R,palg,ptminfastjet,
     $        pj,numjets,jetvec)
c         call fastjetktwhich(ptrack,ntracks,ptminfastjet,R,
c     $        pj,numjets,jetvec) 
	 
      endif

      do i=1,nptmin        
         njets=0
         
         do j=1,min(3,numjets)
            ktj(j) = sqrt(pj(1,j)**2 + pj(2,j)**2 )
            if (ktj(j).gt.ptminarr(i)) then
               njets=njets+1
            endif
         enddo
         
c     since ptminarr(1) is the smallest value, the following return is correct
         if (processid.eq.'HWJ') then
            if(njets.eq.0) return
         endif
         
         call filld('sigtot'//cptmin(i),1d0,dsig)
         
         call filld('Nevents'//cptmin(i),abs(dsig),1d0)
         
         if(njets.eq.0) then
            call filld('Njet'//cptmin(i),0d0,dsig)
         elseif(njets.eq.1) then
            call filld('Njet'//cptmin(i),1d0,dsig)
         elseif(njets.eq.2) then
            call filld('Njet'//cptmin(i),2d0,dsig)
         elseif(njets.eq.3) then
            call filld('Njet'//cptmin(i),3d0,dsig)
         elseif(njets.eq.4) then
            call filld('Njet'//cptmin(i),4d0,dsig)
         elseif(njets.eq.5) then
            call filld('Njet'//cptmin(i),5d0,dsig)
         else
c     write(*,*) ' Njet?',mjets
         endif
c     Higgs
         call getyetaptmass(ph,y,eta,pt,m)
         call filld('H-y'//cptmin(i),    y, dsig)
         call filld('H-eta'//cptmin(i),eta, dsig)
         call filld('H-pt'//cptmin(i),  pt, dsig)
         call filld('H-m'//cptmin(i), m, dsig)
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
c     HW
         call getyetaptmass(ph+pw,y,eta,pt,m)

c         if (pt.gt.0.09d0 .and. pt.lt.0.11d0) then
c            write(*,*) 'ci siamo'
c            write(*,*) rescfac1,rescfac2
c         endif


         call filld('HW-y'//cptmin(i),    y, dsig)
         call filld('HW-eta'//cptmin(i),eta, dsig)
         call filld('HW-pt'//cptmin(i),  pt, dsig)
         call filld('HW-ptzoom'//cptmin(i),  pt, dsig)
         call filld('HW-ptzoom2'//cptmin(i),  pt, dsig)
         call filld('HW-ptzoom3'//cptmin(i),  pt, dsig)
         call filld('HW-m'//cptmin(i), m, dsig)

      enddo

      
c     cos theta distribution  and helicity fractions 
      ph03(0) = ph(4)
      ph03(1:3) = ph(1:3)
      pl03(0)=plep(4,1)
      pl03(1:3)=plep(1:3,1)
      pnu03(0)=pvl(4,1)
      pnu03(1:3)=pvl(1:3,1)
      call costhetastar(pl03,pnu03,ph03,ctheta,cphi,sphi,phi)
      call getyetaptmass(pw,y,eta,pt,m)
      FF0 = 2d0 - 5d0*ctheta**2
      FFL = 1/4d0 *( -2d0 + 10d0*ctheta**2 - 4d0 * ctheta)
      FFR = 1/4d0 *( -2d0 + 10d0*ctheta**2 + 4d0 * ctheta)
      FLFR = 1/2d0 *( - 4d0 * ctheta)

      AA = 0d0
c### define the A coefficients.
      AA(0) = 4d0 - 10d0 * ctheta**2
      AA(1) = 10d0 * sqrt(1d0 - ctheta**2) * ctheta *cphi
      AA(2) = 10d0 * (1d0 - ctheta**2) * ( cphi**2 - sphi**2)
      AA(3) = 4d0 * sqrt(1d0 - ctheta**2) * cphi
      AA(4) = 4d0 * ctheta 
      AA(5) = 4d0 * sqrt(1d0 - ctheta**2) * sphi
c      AA(7) = 5d0 * sqrt(1d0 - ctheta**2) * 2d0 * cphi *sphi 
c      

      do ncut=0,nptWcut-1,20
      write (seqstring,'(I0)') ncut
      if( pt.ge.ptWcuts(ncut)  ) then
	  call filld('costheta'//trim(seqstring),ctheta,dsig)
	  call filld('phi'//trim(seqstring),phi,dsig)
      endif
      enddo 
      
      do ncut=0,nptWcut-1
	write (seqstring,'(I0)') ncut
	if( pt.ge.ptWcuts(ncut)  ) then
	  call filld('sigtotcut'//trim(seqstring),0d0,dsig)
	  call filld('ptcut'//trim(seqstring),pt,dsig)
	  call filld('F0'//trim(seqstring),0,FF0 * dsig)
	  call filld('FL'//trim(seqstring),0,FFL * dsig)
	  call filld('FR'//trim(seqstring),0,FFR * dsig)
      
c	    call filld('A0'//trim(seqstring),0,AA(0) * dsig)
c	    call filld('A1'//trim(seqstring),0,AA(1) * dsig)
	  call filld('A2'//trim(seqstring),0,AA(2) * dsig)
	  call filld('A3'//trim(seqstring),0,AA(3) * dsig)
c	    call filld('A4'//trim(seqstring),0,AA(4) * dsig)
	  call filld('A5'//trim(seqstring),0,AA(5) * dsig)
	endif
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

      


c     try to add the lepton angular distribution       
c     in the W rest frame 

      subroutine costhetastar(p1,p2,p3,cth,cphi,sphi,phi)
      implicit none
      include 'pwhg_math.h'
      real *8 p1(0:3),p2(0:3), p3(0:3), psum(0:3), cth, ppl
      real *8 pb1(0:3), pb2(0:3), pbW(0:3), pb3(0:3)
      real *8 boostW(0:3,0:3), nn0(0:3), nn1(0:3), nny(0:3)
      real *8 beta(1:3), gamma, beta2, ppw, cphi, sphi, phi
      integer i,j
      external dotp,dotp3

      psum = p1 + p2
      
      ppw = sqrt(psum(1)**2 + psum(2)**2 + psum(3)**2)
      
      beta(1) =  psum(1)/psum(0)	    
      beta(2) =  psum(2)/psum(0)
      beta(3) =  psum(3)/psum(0)
      beta2 = beta(1)**2 + beta(2)**2 + beta(3)**2
      gamma   = 1d0/sqrt(1d0 - beta2)

      boostW = 0	
c     boost matrix     
      boostW(0,0) = gamma
      boostW(0,1) = -gamma*beta(1)
      boostW(0,2) = -gamma*beta(2)
      boostW(0,3) = -gamma*beta(3)
      
      boostW(1,0) = -gamma*beta(1)
      boostW(2,0) = -gamma*beta(2)
      boostW(3,0) = -gamma*beta(3)
      
      do i = 1,3
	do j = 1,3
	boostW(i,j) = (gamma-1)/beta2 * beta(i) * beta(j)  
	enddo
      enddo	   
      
      boostW(1,1) = 1d0 + boostW(1,1)
      boostW(2,2) = 1d0 + boostW(2,2)
      boostW(3,3) = 1d0 + boostW(3,3)
C     boost the momenta      
      
      pb1 = 0
      pb2 = 0
      pbW = 0
      do i = 0,3
	pb1(i) = boostW(i,0)* p1(0) + boostW(i,1)* p1(1) 
     $	       + boostW(i,2)* p1(2) + boostW(i,3)* p1(3) 
        pb2(i) = boostW(i,0)* p2(0) + boostW(i,1)* p2(1) 
     $         + boostW(i,2)* p2(2) + boostW(i,3)* p2(3)
        pb3(i) = boostW(i,0)* p3(0) + boostW(i,1)* p3(1) 
     $         + boostW(i,2)* p3(2) + boostW(i,3)* p3(3)
        pbW(i) = boostW(i,0)* psum(0) + boostW(i,1)* psum(1) 
     $         + boostW(i,2)* psum(2) + boostW(i,3)* psum(3)
      enddo
      
      ppl = sqrt(pb1(1)**2 + pb1(2)**2 + pb1(3)**2)
      
      cth  = (psum(1)*pb1(1) + psum(2)*pb1(2) + psum(3)*pb1(3) )
     $       /ppw/ppl
      
      nn0(1) = psum(2) * pb3(3) - psum(3) * pb3(2)
      nn0(2) = psum(3) * pb3(1) - psum(1) * pb3(3) 
      nn0(3) = psum(1) * pb3(2) - psum(2) * pb3(1)

      nn1(1) = psum(2) * pb1(3) - psum(3) * pb1(2)
      nn1(2) = psum(3) * pb1(1) - psum(1) * pb1(3) 
      nn1(3) = psum(1) * pb1(2) - psum(2) * pb1(1)
      
      nny(1) = psum(2) * nn0(3) - psum(3) * nn0(2)
      nny(2) = psum(3) * nn0(1) - psum(1) * nn0(3) 
      nny(3) = psum(1) * nn0(2) - psum(2) * nn0(1)
      
      cphi = nn0(1) * nn1(1) + nn0(2) * nn1(2) + nn0(3) * nn1(3) 
      sphi = nny(1) * nn1(1) + nny(2) * nn1(2) + nny(3) * nn1(3)
     
      cphi = cphi/sqrt(nn0(1)**2 + nn0(2)**2 + nn0(3)**2)
      cphi = cphi/sqrt(nn1(1)**2 + nn1(2)**2 + nn1(3)**2)
      
      sphi = sphi/sqrt(nny(1)**2 + nny(2)**2 + nny(3)**2)
      sphi = sphi/sqrt(nn1(1)**2 + nn1(2)**2 + nn1(3)**2)
      
      if(sphi.ge.0) then
	phi = acos(cphi)
      else 
	phi = 2d0*pi - acos(cphi) 
      endif	  
      
      if(cth.lt.-1.or.cth.gt.1) then		
	write(*,*) "something wrong in boost"
	write(*,*) "cos", cth
	call exit(1)
      endif
      if(abs(cphi**2 + sphi**2 -1d0).gt.1d-6) then		
	write(*,*) "something wrong in phi"
	write(*,*) "cos phi**2 + sin phi**2", cphi**2 + sphi**2
	call exit(1)
      endif
      if((abs(cos(phi) - cphi).gt.1d-6)
     $   .or.(abs(sin(phi)-sphi).gt.1d-6)) then 
      	write(*,*) "something wrong in phi"
	write(*,*) "cphi, cos(phi)", cphi, cos(phi)
	write(*,*) "sphi, sin(phi)", sphi, sin(phi)
	call exit(1)
      endif
      if((abs(pbW(1)).gt.1d-9).or.(abs(pbW(2)).gt.1d-9)
     $ .or.(abs(pbW(3)).gt.1d-8)) then
	write(*,*) "something wrong in boost"
	write(*,*) "W momentum is its rest frame", pbW
	call exit(1)
      endif
      end 

      
c     try to add the lepton angular distribution       
c     in the W pt rest frame 

      subroutine costhetastar_pt(p1,p2,p3,cth,cphi,sphi,phi)
      implicit none
      include 'pwhg_math.h'
      real *8 p1(0:3),p2(0:3), p3(0:3), psum(0:3), cth, ppl
      real *8 pb1(0:3), pb2(0:3), pbW(0:3), pb3(0:3)
      real *8 boostW(0:3,0:3), nn0(0:3), nn1(0:3), nny(0:3)
      real *8 beta(1:3), gamma, beta2, ppw, cphi, sphi, phi
      integer i,j
      external dotp,dotp3

      psum = p1 + p2
      psum(3) = 0d0
      
      ppw = sqrt(psum(1)**2 + psum(2)**2 +  psum(3)**2)
      
      beta(1) =  psum(1)/psum(0)	    
      beta(2) =  psum(2)/psum(0)
      beta(3) =  0d0
      beta2 = beta(1)**2 + beta(2)**2 + beta(3)**2
      gamma   = 1d0/sqrt(1d0 - beta2)

      boostW = 0	
c     boost matrix     
      boostW(0,0) = gamma
      boostW(0,1) = -gamma*beta(1)
      boostW(0,2) = -gamma*beta(2)
      boostW(0,3) = -gamma*beta(3)
      
      boostW(1,0) = -gamma*beta(1)
      boostW(2,0) = -gamma*beta(2)
      boostW(3,0) = -gamma*beta(3)
      
      do i = 1,3
	do j = 1,3
	boostW(i,j) = (gamma-1)/beta2 * beta(i) * beta(j)  
	enddo
      enddo	   
      
      boostW(1,1) = 1d0 + boostW(1,1)
      boostW(2,2) = 1d0 + boostW(2,2)
      boostW(3,3) = 1d0 + boostW(3,3)
C     boost the momenta      
      
      pb1 = 0
      pb2 = 0
      pbW = 0
      do i = 0,3
	pb1(i) = boostW(i,0)* p1(0) + boostW(i,1)* p1(1) 
     $	       + boostW(i,2)* p1(2) + boostW(i,3)* p1(3) 
        pb2(i) = boostW(i,0)* p2(0) + boostW(i,1)* p2(1) 
     $         + boostW(i,2)* p2(2) + boostW(i,3)* p2(3)
        pb3(i) = boostW(i,0)* p3(0) + boostW(i,1)* p3(1) 
     $         + boostW(i,2)* p3(2) + boostW(i,3)* p3(3)
        pbW(i) = boostW(i,0)* psum(0) + boostW(i,1)* psum(1) 
     $         + boostW(i,2)* psum(2) + boostW(i,3)* psum(3)
      enddo
      
      ppl = sqrt(pb1(1)**2 + pb1(2)**2 + pb1(3)**2)
      
      cth  = (psum(1)*pb1(1) + psum(2)*pb1(2) + psum(3)*pb1(3) )
     $       /ppw/ppl
      
      nn0(1) = psum(2) * pb3(3) - psum(3) * pb3(2)
      nn0(2) = psum(3) * pb3(1) - psum(1) * pb3(3) 
      nn0(3) = psum(1) * pb3(2) - psum(2) * pb3(1)

      nn1(1) = psum(2) * pb1(3) - psum(3) * pb1(2)
      nn1(2) = psum(3) * pb1(1) - psum(1) * pb1(3) 
      nn1(3) = psum(1) * pb1(2) - psum(2) * pb1(1)
      
      nny(1) = psum(2) * nn0(3) - psum(3) * nn0(2)
      nny(2) = psum(3) * nn0(1) - psum(1) * nn0(3) 
      nny(3) = psum(1) * nn0(2) - psum(2) * nn0(1)
      
      cphi = nn0(1) * nn1(1) + nn0(2) * nn1(2) + nn0(3) * nn1(3) 
      sphi = nny(1) * nn1(1) + nny(2) * nn1(2) + nny(3) * nn1(3)
     
      cphi = cphi/sqrt(nn0(1)**2 + nn0(2)**2 + nn0(3)**2)
      cphi = cphi/sqrt(nn1(1)**2 + nn1(2)**2 + nn1(3)**2)
      
      sphi = sphi/sqrt(nny(1)**2 + nny(2)**2 + nny(3)**2)
      sphi = sphi/sqrt(nn1(1)**2 + nn1(2)**2 + nn1(3)**2)
      
      if(sphi.ge.0) then
	phi = acos(cphi)
      else 
	phi = 2d0*pi - acos(cphi) 
      endif	  
      
      if(cth.lt.-1.or.cth.gt.1) then		
	write(*,*) "something wrong in boost"
	write(*,*) "cos", cth
	call exit(1)
      endif
      if(abs(cphi**2 + sphi**2 -1d0).gt.1d-6) then		
	write(*,*) "something wrong in phi"
	write(*,*) "cos phi**2 + sin phi**2", cphi**2 + sphi**2
	call exit(1)
      endif
      if((abs(cos(phi) - cphi).gt.1d-6)
     $   .or.(abs(sin(phi)-sphi).gt.1d-6)) then 
      	write(*,*) "something wrong in phi"
	write(*,*) "cphi, cos(phi)", cphi, cos(phi)
	write(*,*) "sphi, sin(phi)", sphi, sin(phi)
	call exit(1)
      endif
      if((abs(pbW(1)).gt.1d-9).or.(abs(pbW(2)).gt.1d-9)
     $ .or.(abs(pbW(3)).gt.1d-8)) then
	write(*,*) "something wrong in boost"
	write(*,*) "W momentum is its rest frame", pbW
	call exit(1)
      endif
      end       
      


      
c     Scan the hep common block to find "nmax" final-state particles with idhep = id
c     Return the pt-ordered position of the found particles in idarr(1:nidarr)
c     If the found particles are less than nidarr, nidarr is set to the actual number of
c     found particles
      subroutine find_particles(id,nmax,idarr)
      implicit none
      include 'hepevt.h'
      integer id,nmax
      integer idarr(nmax)
      integer ihep,imax
      character *6 WHCPRG
      common/cWHCPRG/WHCPRG
      imax = 0
      do ihep=1,nhep
         if (idhep(ihep).eq.id.and.
cc         isthep(ihep).eq.1) then
cc     for HERWIG and PY6 the status of final state particles is 1
     $       ((WHCPRG.ne.'PY8   '.and. isthep(ihep).eq.1) .or.         
     $        (WHCPRG.eq.'PY8   '.and. isthep(ihep).gt.0) )) then
c     found
            imax = imax+1
            idarr(imax)=ihep
         endif
      if (imax.eq.nmax) goto 111
      enddo
      
 111  continue
      call sortbypt(imax,idarr(1:imax))
      nmax = imax
      end         
      
      
      
      