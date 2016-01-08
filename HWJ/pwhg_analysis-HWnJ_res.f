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
      integer j,k,i
      real * 8 dy,dylep,dpt,dr
      character * 1 cnum(9)
      data cnum/'1','2','3','4','5','6','7','8','9'/
      integer nmaxjet
      parameter (nmaxjet=3)
      integer nptmin
      parameter (nptmin=3)
      character * 4 cptmin(nptmin)
      real * 8 ptminarr(nptmin)
c      data cptmin/   '-001'/
c      data ptminarr/   1d0/
      data cptmin/   '-001',  '-100',  '-300'/
      data ptminarr/   1d0,     100d0,   300d0/

      common/infohist/ptminarr,cnum,cptmin
      save /infohist/
      real * 8 Hmass,Hwidth,powheginput
      external powheginput
      real * 8 range

      call inihists

      dy=0.5d0
      dylep=0.4d0
      dpt=10d0
      dr=0.2d0

      Hmass = powheginput('hmass')
      Hwidth = powheginput('hwidth')

      
      do i=1,nptmin
      call bookupeqbins('sigtot'//cptmin(i),1d0,0.5d0,1.5d0)
      
c      call bookupeqbins('Njet'//cptmin(i),1d0,-0.5d0,5.5d0)

      call bookupeqbins('H-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('H-eta'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('H-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('H-ptlarge'//cptmin(i),5*dpt,0d0,
     $     3000d0)
      call bookupeqbins('H-m'//cptmin(i),Hwidth,Hmass-20*Hwidth,
     $     Hmass+20*Hwidth)
c      call bookupeqbins('H-m'//cptmin(i),0.2d-2,124.98d0,125.020d0)

      call bookupeqbins('W-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('W-eta'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('W-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('W-ptlarge'//cptmin(i),5*dpt,0d0,
     $     3000d0)
      call bookupeqbins('W-m'//cptmin(i),dpt/2,0d0,200d0)
      call bookupeqbins('W-m-zoom'//cptmin(i),1d0,40d0,120d0)

      call bookupeqbins('lept-eta'//cptmin(i),dylep,-4d0,4d0)
      call bookupeqbins('lept-pt'//cptmin(i),dpt,0d0,500d0)
      call bookupeqbins('lept-ptlarge'//cptmin(i),5*dpt,0d0,3000d0)
      call bookupeqbins('miss-pt'//cptmin(i),dpt,0d0,500d0)
      call bookupeqbins('miss-ptlarge'//cptmin(i),5*dpt,0d0,500d0)

      call bookupeqbins('HW-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('HW-eta'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('HW-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('HW-ptzoom'//cptmin(i),2d0,1d0,151d0)
      call bookupeqbins('HW-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
      call bookupeqbins('HW-ptzoom3'//cptmin(i),0.001d0,0d0,0.2d0)
      call bookupeqbins('HW-m'//cptmin(i),dpt,0d0,400d0)

      call bookupeqbins('gamma-y'//cptmin(i),dy,-5d0,5d0)
      call bookupeqbins('gamma-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('gamma-ptzoom'//cptmin(i),5d0,0d0,100d0)
      call bookupeqbins('gamma-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
      call bookupeqbins('gamma-ptzoom3'//cptmin(i),0.04d0,0d0,1d0)
      range = 0.1d0
      call bookupeqbins('gamma-ptzoom4'//cptmin(i),range/25,0d0,range)
      range = 0.01d0
      call bookupeqbins('gamma-ptzoom5'//cptmin(i),range/25,0d0,range)
      
      call bookupeqbins('sigtot-gamma'//cptmin(i),1d0,-0.5d0,2.5d0)

      call bookupeqbins('pgam.plep-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('pgam.plep-ptzoom'//cptmin(i),5d0,0d0,100d0)
      call bookupeqbins('pgam.plep-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
      call bookupeqbins('pgam.plep-ptzoom3'//cptmin(i),0.1d0,0d0,2.5d0)
      range = 0.1d0
      call bookupeqbins('pgam.plep-ptzoom4'//cptmin(i),range/25d0,0d0,range)
      range = 0.01d0
      call bookupeqbins('pgam.plep-ptzoom5'//cptmin(i),range/25d0,0d0,range)

      call bookupeqbins('gam-lep_perp-pt'//cptmin(i),dpt,0d0,400d0)
      call bookupeqbins('gam-lep_perp-ptzoom'//cptmin(i),5d0,0d0,100d0)
      call bookupeqbins('gam-lep_perp-ptzoom2'//cptmin(i),0.5d0,0d0,20d0)
      call bookupeqbins('gam-lep_perp-ptzoom3'//cptmin(i),0.1d0,0d0,2.5d0)
      range = 0.1d0
      call bookupeqbins('gam-lep_perp-ptzoom4'//cptmin(i),range/25d0,0d0,range)
      range = 0.01d0
      call bookupeqbins('gam-lep_perp-ptzoom5'//cptmin(i),range/25d0,0d0,range)


      call bookupeqbins('gamma-pt_prod_LH'//cptmin(i),5d0,0d0,100d0)
      call bookupeqbins('gamma-pt_prod_SWR'//cptmin(i),5d0,0d0,100d0)
      call bookupeqbins('gam-lep_perp-pt_res_LH'//cptmin(i),5d0,0d0,100d0)
      call bookupeqbins('gam-lep_perp-pt_res_SWR'//cptmin(i),5d0,0d0,100d0)

      do j=1,nmaxjet
         call bookupeqbins('j'//cnum(j)//'-y'//cptmin(i),dy,-5d0,5d0)
         call bookupeqbins('j'//cnum(j)//'-eta'//cptmin(i),dy,-5d0,5d0)
         call bookupeqbins('j'//cnum(j)//'-pt'//cptmin(i),dpt,0d0,400d0)
         call bookupeqbins('j'//cnum(j)//'-ptzoom'//cptmin(i),
     $        2d0,1d0,151d0)
         call bookupeqbins('j'//cnum(j)//'-m'//cptmin(i),dpt,0d0,400d0) 
         call bookupeqbins('j'//cnum(j)//'-ptzoom2'//cptmin(i),
     $        0.5d0,0d0,20d0)
      enddo


      do j=1,nmaxjet-1
         do k=j+1,nmaxjet
            call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
     1           '-y'//cptmin(i),dy,-5d0,5d0)  
            call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
     1           '-eta'//cptmin(i),dy,-5d0,5d0)
            call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
     1           '-pt'//cptmin(i),dpt,0d0,400d0)
            call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
     1           '-m'//cptmin(i),dpt,0d0,400d0)  
         enddo
      enddo
  
 
      do j=1,nmaxjet-1
         do k=j+1,nmaxjet
            call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
     1           '-dy'//cptmin(i),dy,-5d0,5d0)  
            call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
     1           '-deta'//cptmin(i),dy,-5d0,5d0)
            call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
     1           '-delphi'//cptmin(i),pi/20,0d0,pi)
            call bookupeqbins('j'//cnum(j)//'j'//cnum(k)//
     1           '-dr'//cptmin(i),dr,0d0,10d0)  
         enddo
      enddo
  
      do j=1,nmaxjet-1
            call bookupeqbins('j'//cnum(j)//'lept'//
     1           '-dy'//cptmin(i),dy,-5d0,5d0)  
            call bookupeqbins('j'//cnum(j)//'lept'//
     1           '-deta'//cptmin(i),dy,-5d0,5d0)
            call bookupeqbins('j'//cnum(j)//'lept'//
     1           '-delphi'//cptmin(i),pi/20,0d0,pi)
            call bookupeqbins('j'//cnum(j)//'lept'//
     1           '-dr'//cptmin(i),dr,0d0,10d0)  
      enddo

    
c      do j=1,nmaxjet-1
c      do k=j+1,nmaxjet
c         call bookupeqbins('Hj'//cnum(j)//'-j'//cnum(k)//
c     1        '-dy'//cptmin(i),dy,-5d0,5d0)  
c         call bookupeqbins('Hj'//cnum(j)//'-j'//cnum(k)//
c     1        '-deta'//cptmin(i),dy,-5d0,5d0)
c         call bookupeqbins('Hj'//cnum(j)//'-j'//cnum(k)//
c     1        '-delphi'//cptmin(i),pi/20,0d0,pi)
c         call bookupeqbins('Hj'//cnum(j)//'-j'//cnum(k)//
c     1        '-dr'//cptmin(i),dr,0d0,20d0)  
c      enddo
c      enddo

c      if(nmaxjet.ge.3) then
c         call bookupeqbins('Hj1j2-j3-dy'//cptmin(i),dy,-5d0,5d0)  
c         call bookupeqbins('Hj1j2-j3-deta'//cptmin(i),dy,-5d0,5d0)
c         call bookupeqbins('Hj1j2-j3-delphi'//cptmin(i),pi/20,0d0,pi)
c         call bookupeqbins('Hj1j2-j3-dr'//cptmin(i),dr,0d0,20d0)
c      endif

c      do j=1,nmaxjet
c         call bookupeqbins('ptrel'//cnum(j)//cptmin(i),0.5d0,0d0,20d0)
c      enddo      
c$$$
c$$$      do j=1,nmaxjet
c$$$         call bookupeqbins('ptrel'//cnum(j)//'qqqq'//cptmin(i),
c$$$     $        0.5d0,0d0,20d0)
c$$$         call bookupeqbins('ptrel'//cnum(j)//'qqgg'//cptmin(i),
c$$$     $        0.5d0,0d0,20d0)
c$$$         call bookupeqbins('ptrel'//cnum(j)//'ggqq'//cptmin(i),
c$$$     $        0.5d0,0d0,20d0)
c$$$         call bookupeqbins('ptrel'//cnum(j)//'gggg'//cptmin(i),
c$$$     $        0.5d0,0d0,20d0)
c$$$         call bookupeqbins('ptrel'//cnum(j)//'qgqg'//cptmin(i),
c$$$     $        0.5d0,0d0,20d0)
c$$$      enddo      
c$$$

      enddo
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
c      include 'pwhg_flg.h'
c      include 'LesHouches.h'
      include 'photonPY8.h'
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
      character * 1 cnum(9)
      integer nptmin
      parameter (nptmin=3)
      character * 4 cptmin(nptmin)
      real * 8 ptminarr(nptmin)      
      common/infohist/ptminarr,cnum,cptmin
      save /infohist/
      integer j,k,i,jj
c     we need to tell to this analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      integer ih,il,inu
      real * 8 httot,y,eta,pt,m
      real * 8 dy,deta,delphi,dr
      integer ihep
      real * 8 powheginput,dotp
      external powheginput,dotp
      real * 8 ptmin
      integer idvecbos,Vdecmod,idl,idnu
      save idvecbos,Vdecmod,idl,idnu
      integer nlep,nvl,nh,ngam
      integer nmaxpart
      parameter (nmaxpart=10)
      integer poslarr(nmaxpart),posnuarr(nmaxpart),posharr(nmaxpart),
     $     posgamarr(nmaxpart),posgam,posgam_hard
      real * 8 pvl(4),plep(4),ph(4),pgam(4),pw(4),plep_dress(4),
     $     phad(4),pgamtmp(4)
      real * 8 pwprime(0:3),pgamprime(0:3),vec(3),beta
      real * 8 pt2gam,pt2gam_max,ptgam_min,pth
      integer mu,ilep,ivl
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
      save processid
c      real * 8 rescfac1,rescfac2
c      common /crescfac/rescfac1,rescfac2
      real * 8 dsig(7)
      integer nweights
      logical inimulti
      data inimulti/.true./
      save inimulti
      real * 8 R_gam_el,e_h,R_0,Etmax,DeltaR_gam_el,DeltaR,eta_gam,
     $     Et_had_sum,pt_gam,pt_gam_hard,Et_had,pt_had,R_gam_had
      logical pwhg_isfinite
      external pwhg_isfinite
c      parameter (R_gam_el=0.1d0) ! photon-electron angular separation
c      parameter (ptgam_min=2d0) ! minimum pt of gamma

      parameter (R_gam_el=0.1d0) ! photon-electron angular separation
      parameter (ptgam_min=2d0) ! minimum pt of gamma

c     Parameters for isolation cone cuts: smooth/standard
      parameter (e_h = 0.5d0)
      parameter (R_0 = 0.4d0)
      parameter (Etmax=3d0)
      parameter (DeltaR_gam_el=0.7d0)

      logical isolation, isocone

      real * 8 dotp4
      real * 8 ptgamlep
      integer moth1,moth2
      integer LHngam,LHpos_gamarr(nmaxpart),igam
      real * 8 pw_MCt(1:4),pchain(1:4,nmaxpart)
      real * 8 ptrelFSR
      
      if (.not.pwhg_isfinite(dsig0)) then
         write(*,*) "*** NaN in analysis ***"
         return
      endif

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
            processid='HW'
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

c     find leptons and neutrinos
      nlep=nmaxpart
      nvl=nmaxpart
      nh=nmaxpart
      ngam=nmaxpart

      call find_particles(idl,nlep,poslarr)
      call find_particles(idnu,nvl,posnuarr)      
c     find photons
      call find_particles(22,ngam,posgamarr)   
c     find Higgs boson
      call find_particles(25,nh,posharr)      
      
      if (WHCPRG.eq.'NLO   ') then
         ngam=0  ! we don't know what is the type of radiated particle at NLO
      endif
      
      if (nlep.eq.0.or.nvl.eq.0.or.nh.eq.0) then
         write(*,*) 'Problems with leptons from W decay or with Higgs'
         write(*,*) 'flavor string'
         do ihep=1,nhep
            if(isthep(ihep).eq.1) then
               write(*,*) idhep(ihep)
            endif
         enddo
         write(*,*) 'nvl= ',nvl, 'nlep= ',nlep, 'nh= ',nh 
         write(*,*) 'PROGRAM ABORT'
         call pwhg_exit(-1)        
      endif
      do mu=1,4
         plep(mu) = phep(mu,poslarr(1))
         pvl(mu)  = phep(mu,posnuarr(1))         
         ph(mu)   = phep(mu,posharr(1))  
      enddo 
c     change status of l, vu, H
      isthep_loc(poslarr(1))  = 10000
      isthep_loc(posnuarr(1)) = 10000
      isthep_loc(posharr(1))  = 10000

      goto 917
      if (WHCPRG.eq.'LHE   '.and. ngam.gt.1) then
         write(*,*) '***********  ngam  > 1 :',ngam
      endif
      if (WHCPRG.eq.'PY8   '.and. ngam.gt.1) then
c         write(*,*) '***********  ngam  > 1 :',ngam
      endif
 917  continue


        
      pt_gam_hard=0d0
      posgam_hard=0

      if (WHCPRG.eq.'LHE   '.or.WHCPRG.eq.'PY8   ') then
         isolation=.true.
         isocone=.true.
         do igam=1,ngam
            posgam=posgamarr(igam)
            pgamtmp(1:4)=phep(1:4,posgam)
            pt_gam=sqrt(pgamtmp(1)**2 + pgamtmp(2)**2)
c            call pwhg_getpseudorapidity(pgamtmp,eta_gam)
c     isolation cuts photon/hadrons
            Et_had_sum=0d0
            do ihep=1,nhep
               if(isthep_loc(ihep).eq.1) then
C     hadrons
                  if(abs(idhep(ihep)).le.6.or.idhep(ihep).eq.21.or.
     $               abs(idhep(ihep)).gt.25) then
c     hadron momenta
                     phad(1:4)=phep(1:4,ihep)
c     transverse energy
                     pt_had=sqrt(phad(1)**2 + phad(2)**2)
                     Et_had=phad(4)*pt_had/
     $                    sqrt(phad(1)**2+phad(2)**2+phad(3)**2)
c     do this with PSEUDORAPIDITY!! 
                     call pwhg_getR_phieta(pgamtmp,phad,R_gam_had)
cccccccccccccccccccccccc    NOT USED   ***************************
c     smooth isolation cone 
                     if(R_gam_had.lt.R_0) then
                        isocone = Et_had.lt.(e_h*pt_gam*
     $                   (1d0-cos(R_gam_had)) /(1d0-cos(R_0)))
                     else  
                        isocone = .true.
                     endif 
cccccccccccccccccccccccc   END NOT USED  *************************
c     standard isolation cone
                     if(R_gam_had.lt.R_0) then
                        Et_had_sum=Et_had_sum+Et_had
                     endif                 
                  endif
               endif
            enddo
            isolation=Et_had_sum.lt.e_h*pt_gam
c     isolation=et_had_sum.lt.Etmax
c     apply isolation and R(lep-gamma) cuts
            if(.not.isolation) cycle
c     cut R(lep-gamma)
            call  pwhg_getR_phiy(plep,pgamtmp,DeltaR)    
            if(DeltaR.lt.DeltaR_gam_el) cycle




c     dobbiamo invalidare gli isolati???

            isthep_loc(igam)=10000



c     hardest photon among the isolated ones
            if (pt_gam.gt.pt_gam_hard) then
               posgam_hard = posgam
               pt_gam_hard = pt_gam
            endif
         enddo
      elseif (WHCPRG.eq.'NLO   ') then
c     do nothing
      else
         call pwhg_exit(-1)
      endif

c *********   Require a minimum pt for the hardest isolated photon   *********
      if (posgam_hard.gt.0 .and. pt_gam_hard.gt.ptgam_min) then
         pgam(1:4)=phep(1:4,posgam_hard)
c     invalidate status of hardest isolated photon (in case, it was already done before)
         isthep_loc(posgam_hard)= 10000
      else
         posgam_hard=0
      endif


      plep_dress = plep
c     check isolation of photon from charged lepton 
      do i=1,ngam
         do mu=1,4
            pgamtmp(mu)=phep(mu,posgamarr(i))
         enddo
         call pwhg_getR_phiy(plep,pgamtmp,R)
         if (R.lt.R_gam_el) then
            if (posgamarr(i).eq.posgam_hard) then
               write(*,*) "The hardest isolated photon "//
     $              "CANNOT dress the lepton"
               call pwhg_exit(-1)
            endif
c     dress electron
            plep_dress = plep_dress + pgamtmp
c     invalidate ist number of the photon
            isthep_loc(posgamarr(i))  = 10000
         endif
      enddo


c     W momentum  (+ photon)
      do mu=1,4
         pw(mu)=plep_dress(mu) + pvl(mu)
      enddo


      ntracks=0
      mjets=0
c     Loop over final state particles to find jets 
      do ihep=1,nhep
         if (isthep_loc(ihep).eq.1) then
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
c     $        pj,mjets,jetvec) 
      endif


c      pth = sqrt(ph(1)**2+ph(2)**2)
c     ptmin is applied to the Higgs boson pt, and NOT on jet pt's
      do i=1,nptmin   
c         if (pth.ge.ptminarr(i)) then 
c            njets=min(1,numjets) ! to be fixed according to what follows
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
c$$$  
c$$$  if(njets.eq.0) then
c$$$  call filld('Njet'//cptmin(i),0d0,dsig)
c$$$  elseif(njets.eq.1) then
c$$$  call filld('Njet'//cptmin(i),1d0,dsig)
c$$$  elseif(njets.eq.2) then
c$$$  call filld('Njet'//cptmin(i),2d0,dsig)
c$$$  elseif(njets.eq.3) then
c$$$  call filld('Njet'//cptmin(i),3d0,dsig)
c$$$  elseif(njets.eq.4) then
c$$$  call filld('Njet'//cptmin(i),4d0,dsig)
c$$$  elseif(njets.eq.5) then
c$$$  call filld('Njet'//cptmin(i),5d0,dsig)
c$$$  else
c$$$  c     write(*,*) ' Njet?',mjets
c$$$  endif

c     Higgs
         call getyetaptmass(ph,y,eta,pt,m)
         call filld('H-y'//cptmin(i),    y, dsig)
         call filld('H-eta'//cptmin(i),eta, dsig)
         call filld('H-pt'//cptmin(i),  pt, dsig)
         call filld('H-ptlarge'//cptmin(i),  pt, dsig)
         call filld('H-m'//cptmin(i), m, dsig)
c     W
         call getyetaptmass(pw,y,eta,pt,m)
         call filld('W-y'//cptmin(i),    y, dsig)
         call filld('W-eta'//cptmin(i),eta, dsig)
         call filld('W-pt'//cptmin(i),  pt, dsig)
         call filld('W-ptlarge'//cptmin(i),  pt, dsig)
         call filld('W-m'//cptmin(i), m, dsig)
         call filld('W-m-zoom'//cptmin(i), m, dsig)
c     lepton
c     call getyetaptmass(plep,y,eta,pt,m)
         call getyetaptmass(plep_dress,y,eta,pt,m)
         call filld('lept-eta'//cptmin(i),eta, dsig)
         call filld('lept-pt'//cptmin(i),  pt, dsig)
         call filld('lept-ptlarge'//cptmin(i),  pt, dsig)
c     neutrino
         call getyetaptmass(pvl,y,eta,pt,m)
         call filld('miss-pt'//cptmin(i),  pt, dsig)
         call filld('miss-ptlarge'//cptmin(i),  pt, dsig)
c     HW
         call getyetaptmass(ph+pw,y,eta,pt,m)
         call filld('HW-y'//cptmin(i),    y, dsig)
         call filld('HW-eta'//cptmin(i),eta, dsig)
         call filld('HW-pt'//cptmin(i),  pt, dsig)
         call filld('HW-ptzoom'//cptmin(i),  pt, dsig)
         call filld('HW-ptzoom2'//cptmin(i),  pt, dsig)
         call filld('HW-ptzoom3'//cptmin(i),  pt, dsig)
         call filld('HW-m'//cptmin(i), m, dsig)
c     photon
         
         if (posgam_hard.eq.0) then          
c     fill the 0th and 2nd bin
            call filld('sigtot-gamma'//cptmin(i),0d0,dsig)
            call filld('sigtot-gamma'//cptmin(i),2d0,dsig)
         endif
         
         
         if (posgam_hard.ne.0) then
            call getyetaptmass(pgam,y,eta,pt,m)
c     further loop on gamma pt!!  Put it here
            call filld('gamma-y'//cptmin(i),    y, dsig)
            call filld('gamma-pt'//cptmin(i),  pt, dsig)
            call filld('gamma-ptzoom'//cptmin(i),  pt, dsig)
            call filld('gamma-ptzoom2'//cptmin(i),  pt, dsig)
            call filld('gamma-ptzoom3'//cptmin(i),  pt, dsig)
            call filld('gamma-ptzoom4'//cptmin(i),  pt, dsig)
            call filld('gamma-ptzoom5'//cptmin(i),  pt, dsig)
            
c     fill the 1st and 2nd bin
            call filld('sigtot-gamma'//cptmin(i),1d0,dsig)             
            call filld('sigtot-gamma'//cptmin(i),2d0,dsig)             
            
            
c$$$  c     boost in the W CM: longitudinal boost
c$$$  vec(1)=0d0
c$$$  vec(2)=0d0
c$$$  vec(3)=1d0
c$$$  pwprime(1:3)=pw(1:3)
c$$$  pwprime(0)=pw(4)
c$$$  beta=-pwprime(3)/pwprime(0)
c$$$  pgamprime(1:3)=pgam(1:3)
c$$$  pgamprime(0)=pgam(4)
c$$$  write(*,*) pwprime
c$$$  call mboost(1,vec,beta,pwprime,pwprime)
c$$$  call mboost(1,vec,beta,pgamprime,pgamprime)
c$$$  write(*,*) pwprime
c$$$  c     transverse boost
c$$$  vec(1)=pwprime(1)/sqrt(pwprime(1)**2+pwprime(2)**2)
c$$$  vec(2)=pwprime(2)/sqrt(pwprime(1)**2+pwprime(2)**2)
c$$$  vec(3)=0
c$$$  beta=-sqrt(pwprime(1)**2+pwprime(2)**2)/pwprime(0)
c$$$  call mboost(1,vec,beta,pwprime,pwprime)
c$$$  call mboost(1,vec,beta,pgamprime,pgamprime)
c$$$  write(*,*) pwprime            


c     NB (plep_dress+pgam)^2 <> 2 plep_dress.pgam, since plep_dress is 
c     massive now
            ptgamlep=sqrt(2*abs(dotp4(plep_dress,pgam))*plep_dress(4)*pgam(4))/(plep_dress(4)+pgam(4))
            call filld('pgam.plep-pt'//cptmin(i),       ptgamlep, dsig)
            call filld('pgam.plep-ptzoom'//cptmin(i),   ptgamlep, dsig)
            call filld('pgam.plep-ptzoom2'//cptmin(i),  ptgamlep, dsig)
            call filld('pgam.plep-ptzoom3'//cptmin(i),  ptgamlep, dsig)
            call filld('pgam.plep-ptzoom4'//cptmin(i),  ptgamlep, dsig)
            call filld('pgam.plep-ptzoom5'//cptmin(i),  ptgamlep, dsig)
            
            
            do ihep=1,nhep  
               if(idhep(ihep) == idvecbos) then
c     MC truth plots!!
                  pw_MCt(1:4)=phep(1:4,ihep)
               endif
            enddo
            pchain(1:4,1)=plep_dress
            pchain(1:4,2)=pgam
            call boost2reson4(pw_MCt,2,pchain,pchain)
            ptgamlep=ptrelFSR(pchain(:,2),pchain(:,1))
            
            call filld('gam-lep_perp-pt'//cptmin(i),       ptgamlep, dsig)
            call filld('gam-lep_perp-ptzoom'//cptmin(i),   ptgamlep, dsig)
            call filld('gam-lep_perp-ptzoom2'//cptmin(i),  ptgamlep, dsig)
            call filld('gam-lep_perp-ptzoom3'//cptmin(i),  ptgamlep, dsig)
            call filld('gam-lep_perp-ptzoom4'//cptmin(i),  ptgamlep, dsig)
            call filld('gam-lep_perp-ptzoom5'//cptmin(i),  ptgamlep, dsig)
            
         endif

         
c     jets
         mjets=min(njets,2)                  
         do j=1,mjets
            call getyetaptmass(pj(:,j),y,eta,pt,m)
            call filld('j'//cnum(j)//'-y'//cptmin(i),     y, dsig)
            call filld('j'//cnum(j)//'-eta'//cptmin(i), eta, dsig)
            call filld('j'//cnum(j)//'-pt'//cptmin(i),   pt, dsig)
            call filld('j'//cnum(j)//'-ptzoom'//cptmin(i),   pt, dsig)
            call filld('j'//cnum(j)//'-ptzoom2'//cptmin(i),   pt, dsig)
            call filld('j'//cnum(j)//'-m'//cptmin(i),     m, dsig)
c     call filld('ptrel'//cnum(j)//cptmin(i),ptrel(j), dsig)         
         enddo
         
         do j=1,mjets
            do k=j+1,mjets
               call getyetaptmass(pj(:,j)+pj(:,k),y,eta,pt,m)
               call filld('j'//cnum(j)//'j'//cnum(k)//'-y'//cptmin(i),
     $              y, dsig)
               call filld('j'//cnum(j)//'j'//cnum(k)//'-eta'//cptmin(i),
     $              eta, dsig)
               call filld('j'//cnum(j)//'j'//cnum(k)//'-pt'//cptmin(i),
     $              pt, dsig)
               call filld('j'//cnum(j)//'j'//cnum(k)//'-m'//cptmin(i), 
     $              m, dsig)
            enddo
         enddo
         
         do j=1,mjets
            do k=j+1,mjets
               call deltaplot(pj(:,j),pj(:,k),dsig,
     1              'j'//cnum(j)//'j'//cnum(k),cptmin(i))
            enddo
         enddo
         
c$$$  do j=1,mjets
c$$$  call deltaplot(pj(:,j),plep,dsig,
c$$$  1           'j'//cnum(j)//'lept',cptmin(i))
c$$$  enddo



c     MC truth plots!!
         do ihep=1,nhep  
            if(idhep(ihep) == idvecbos) then
               pw_MCt(1:4)=phep(1:4,ihep)
            endif
         enddo
         
         if (WHCPRG.eq.'LHE   ') then
c     find photons
            LHngam=nmaxpart
            call find_particles(22,LHngam,LHpos_gamarr)
            pt=0d0
            ptgamlep=0d0
            do igam=1,LHngam
               posgam=LHpos_gamarr(igam)
               moth1 = jmohep(1,posgam)
               moth2 = jmohep(2,posgam)
               if (moth1.eq.1.and.moth2.eq.2) then
c     photon in production
                  pt=sqrt(phep(1,posgam)**2+phep(2,posgam)**2)
                  if (pt>0) call filld('gamma-pt_prod_LH'//cptmin(i),pt,dsig)
c     fill the following too, only to compare it with the PY8 one
                  if (pt>0) call filld('gamma-pt_prod_SWR'//cptmin(i),pt,dsig)
               elseif (moth1.eq.4.and.moth2.eq.4) then
c     photon in resonance
                  pchain(1:4,1)=plep
                  pchain(1:4,2)=phep(1:4,posgam)
                  call boost2reson4(pw_MCt,2,pchain,pchain)
                  ptgamlep=ptrelFSR(pchain(:,2),pchain(:,1))
                  if (ptgamlep>0) call filld('gam-lep_perp-pt_res_LH'//cptmin(i),ptgamlep,dsig)
c     fill the following too, only to compare it with the PY8 one       
                  if (ptgamlep>0) call filld('gam-lep_perp-pt_res_SWR'//cptmin(i),ptgamlep,dsig)
               else
                  write(*,*) 'error in pwhg_analysis.f:'
                  write(*,*) 'mothers of photon: ',moth1, moth2
                  stop
               endif                     
            enddo
         elseif (WHCPRG.eq.'PY8   ') then
            pt=0d0
            do igam=1,HEPngam_prod_LH
               posgam=HEPpos_gamarr_prod_LH(igam)
               pt=max(pt,sqrt(phep(1,posgam)**2+phep(2,posgam)**2))            
            enddo
            if (pt>0) call filld('gamma-pt_prod_LH'//cptmin(i),pt,dsig)
            pt=0d0
            do igam=1,HEPngam_prod_SWR
               posgam=HEPpos_gamarr_prod_SWR(igam)
               pt=max(pt,sqrt(phep(1,posgam)**2+phep(2,posgam)**2))            
            enddo
            if (pt>0) call filld('gamma-pt_prod_SWR'//cptmin(i),pt,dsig)
            
            ptgamlep=0d0
            do igam=1,HEPngam_res_LH
               posgam=HEPpos_gamarr_res_LH(igam)
               pchain(1:4,1)=plep
               pchain(1:4,2)=phep(1:4,posgam)
               call boost2reson4(pw_MCt,2,pchain,pchain)
               ptgamlep=max(ptgamlep,ptrelFSR(pchain(:,2),pchain(:,1)))
            enddo
            if (ptgamlep>0) call filld('gam-lep_perp-pt_res_LH'//cptmin(i),ptgamlep,dsig)
            

            ptgamlep=0d0
            do igam=1,HEPngam_res_SWR
               posgam=HEPpos_gamarr_res_SWR(igam)
               pchain(1:4,1)=plep
               pchain(1:4,2)=phep(1:4,posgam)
               call boost2reson4(pw_MCt,2,pchain,pchain)
               ptgamlep=max(ptgamlep,ptrelFSR(pchain(:,2),pchain(:,1)))
            enddo
            if (ptgamlep>0) call filld('gam-lep_perp-pt_res_SWR'//cptmin(i),ptgamlep,dsig)
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
      imax = 0
      do ihep=1,nhep
         if (idhep(ihep).eq.id .and.isthep(ihep).eq.1) then
cc     for HERWIG and PY6 the status of final state particles is 1
c     $        (WHCPRG.ne.'PY8   '.and. isthep(ihep).eq.1) .or.         
c     $        (WHCPRG.eq.'PY8   '.and. isthep(ihep).gt.0) )) then
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



c     relative pt of 1 with respect to 2 for FSR
      function ptrelFSR(p1,p2)
      implicit none
      real * 8 ptrelFSR
      real*8 p1(1:4),p2(1:4)
      real * 8 costh,mod1,mod2
      mod1 = sqrt(p1(1)**2+p1(2)**2+p1(3)**2)
      mod2 = sqrt(p2(1)**2+p2(2)**2+p2(3)**2)
      costh = (p1(1)*p2(1) + p1(2)*p2(2) + p1(3)*p2(3))/(mod1*mod2)

      ptrelFSR = mod1 * sqrt(2*(1d0 - costh))
      end
