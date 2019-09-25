      subroutine init_hist
      implicit none
      include 'pwhg_math.h'
      real * 8 dy,dpt,dptzoom,dphi
      integer icut
      integer, parameter :: ncuts=5
      real *8 jetcut(ncuts)
      character * 10 suffix(ncuts) 
      common/jcut/jetcut,suffix

      call inihists

      dy=0.1d0
      dpt=5d0
      dptzoom=1d0
      dphi = pi/10
      suffix(1) = '-ptj20'
      jetcut(1) = 20d0 
      suffix(2) = '-ptj30'
      jetcut(2) = 30d0 
      suffix(3) = '-ptj60'
      jetcut(3) = 60d0 
      suffix(4) = '-ptj120'
      jetcut(4) = 120d0 
      suffix(5) = '-ptj200'
      jetcut(5) = 200d0 


      call bookupeqbins('total',1d0,0d0,1d0)
      call bookupeqbins('yH',dy,-8d0,8d0)

      call bookupeqbins('ptH',dpt,0d0,500d0)
      call bookupeqbins('ptHzoom',dptzoom,0d0,50d0)

c      call bookupeqbins('ptj1_check',3d0,0d0,300d0)
      call bookupeqbins('ptj1',dpt,0d0,500d0)

      do icut=1,ncuts
         call bookupeqbins('y-j1'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1'//trim(suffix(icut)),dy,-8d0,8d0)
         
         call bookupeqbins('dphi-h-j1'//trim(suffix(icut)),dphi,0d0,pi)
      enddo
      call bookupeqbins('ptj1zoom',dptzoom,0d0,50d0)

c      call bookupeqbins('ptj2_check',3d0,0d0,300d0)
      call bookupeqbins('ptj2',dpt,0d0,500d0)
      call bookupeqbins('ptj2zoom',dptzoom,0d0,50d0)

C     -- loop over two sets of jet cuts (20 and 30 GeV) 
      do icut=1,ncuts
C     - Inclusive jet multiplicties
         call bookupeqbins('Njet-inc'//trim(suffix(icut)),1d0,-0.5d0,5.5d0)
C     - Exclusive jet multiplicties
         call bookupeqbins('Njet-exc'//trim(suffix(icut)),1d0,-0.5d0,5.5d0)
      enddo
         
c     extra plots
      do icut=1,ncuts
         call bookupeqbins('ptH-yj4'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('ptj1-yj4'//trim(suffix(icut)),dpt,0d0,500d0)
      enddo

c     other extra plots
      do icut=1,ncuts
         call bookupeqbins('ptH--yH-0-1'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('ptj1--yH-0-1'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('y-j1--yH-0-1'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1--yH-0-1'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('ptH--yH-1-2'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('ptj1--yH-1-2'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('y-j1--yH-1-2'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1--yH-1-2'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('ptH--yH-2-4'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('ptj1--yH-2-4'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('y-j1--yH-2-4'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1--yH-2-4'//trim(suffix(icut)),dy,-8d0,8d0)
      enddo


c     ONLY BTILDE EVENTS
      call bookupeqbins('total-btl',1d0,0d0,1d0)
      call bookupeqbins('yH-btl',dy,-8d0,8d0)
      call bookupeqbins('ptH-btl',dpt,0d0,500d0)
      call bookupeqbins('ptHzoom-btl',dptzoom,0d0,50d0)
      call bookupeqbins('ptj1-btl',dpt,0d0,500d0)

      do icut=1,ncuts
         call bookupeqbins('y-j1-btl'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1-btl'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dphi-h-j1-btl'//trim(suffix(icut)),dphi,0d0,pi)

         call bookupeqbins('ptH--yH-0-1-btl'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('ptj1--yH-0-1-btl'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('y-j1--yH-0-1-btl'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1--yH-0-1-btl'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('ptH--yH-1-2-btl'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('ptj1--yH-1-2-btl'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('y-j1--yH-1-2-btl'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1--yH-1-2-btl'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('ptH--yH-2-4-btl'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('ptj1--yH-2-4-btl'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('y-j1--yH-2-4-btl'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1--yH-2-4-btl'//trim(suffix(icut)),dy,-8d0,8d0)

      enddo
      call bookupeqbins('ptj1zoom-btl',dptzoom,0d0,50d0)


c     ONLY REMNANTS EVENTS
      call bookupeqbins('total-rmn',1d0,0d0,1d0)
      call bookupeqbins('yH-rmn',dy,-8d0,8d0)
      call bookupeqbins('ptH-rmn',dpt,0d0,500d0)
      call bookupeqbins('ptHzoom-rmn',dptzoom,0d0,50d0)
      call bookupeqbins('ptj1-rmn',dpt,0d0,500d0)
      do icut=1,ncuts
         call bookupeqbins('y-j1-rmn'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1-rmn'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dphi-h-j1-rmn'//trim(suffix(icut)),dphi,0d0,pi)

         call bookupeqbins('ptH--yH-0-1-rmn'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('ptj1--yH-0-1-rmn'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('y-j1--yH-0-1-rmn'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1--yH-0-1-rmn'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('ptH--yH-1-2-rmn'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('ptj1--yH-1-2-rmn'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('y-j1--yH-1-2-rmn'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1--yH-1-2-rmn'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('ptH--yH-2-4-rmn'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('ptj1--yH-2-4-rmn'//trim(suffix(icut)),dpt,0d0,500d0)
         call bookupeqbins('y-j1--yH-2-4-rmn'//trim(suffix(icut)),dy,-8d0,8d0)
         call bookupeqbins('dy-h-j1--yH-2-4-rmn'//trim(suffix(icut)),dy,-8d0,8d0)

      enddo
      call bookupeqbins('ptj1zoom-rmn',dptzoom,0d0,50d0)

      end

      
     
      subroutine analysis(dsig0)
      implicit none
      include 'hepevt.h'
      include 'pwhg_weights.h'
      include 'nlegborn.h'
      include 'pwhg_rad.h'
      logical ini
      data ini/.true./
      save ini
C     allow multiweights 
      real * 8 dsig0,dsig(1:weights_max)
c     tell to the analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      integer, parameter :: ncuts=5
      real *8 jetcut(ncuts)
      character * 10 suffix(ncuts) 
      common/jcut/jetcut,suffix
C     Higgs variables 
      real*8 pH(4),mH,ptH,yH,etaH
c     arrays to reconstruct jets
      integer maxjet
      parameter (maxjet=2048)
      real *8 ptmin
      real *8  ktj(maxjet),etaj(maxjet),rapj(maxjet),
     1     phij(maxjet),pj(4,maxjet),rr,ptrel(4),
     2     yj1,etaj1,ptj1,mj1,dyhj1,detahj1,dphihj1,drhj1
      integer j1,found,mjets,ihep,icut,i
      real *8 powheginput
      real *8 corrfactor,theta_btl,theta_rmn
      logical theta_yh1,theta_yh2,theta_yh4

      theta_btl=0d0
      theta_rmn=0d0
      if(rad_type.eq.1) theta_btl=1d0
      if(rad_type.eq.2) theta_rmn=1d0


      corrfactor=1d0
      if(powheginput("#btildeviol").eq.1.and.WHCPRG.ne.'NLO') then
         if(rad_type.eq.1) then
            corrfactor=powheginput('corr_btilde')
         elseif(rad_type.eq.2) then
            corrfactor=powheginput('corr_remnant')
         else
            print*, 'no rew'
         endif
      endif


      if (ini) then
         write(*,*) '*****************************'
         if(whcprg.eq.'NLO') then
            write(*,*) '       NLO ANALYSIS'
            weights_num=0
         elseif(WHCPRG.eq.'LHE   ') then
            write(*,*) '       LHE ANALYSIS'
         elseif(WHCPRG.eq.'HERWIG') then
            write (*,*) '           HERWIG ANALYSIS            '
         elseif(WHCPRG.eq.'PYTHIA') then
            write (*,*) '           PYTHIA ANALYSIS            '
         elseif(WHCPRG.eq.'PY8   ') then
            write (*,*) '           PYTHIA 8 ANALYSIS        '
         endif
         write(*,*) '*****************************'
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
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
      endif
      if(sum(abs(dsig)).eq.0) return

      dsig=dsig*corrfactor

c     Loop over final state particles to find Higgs
      found=0
      if(WHCPRG.eq.'PY8   ') then
         do ihep=1,nhep
            if((isthep(ihep).gt.0).and.(idhep(ihep).eq.25)) then
               j1=ihep
               pH(1:4) = phep(1:4,j1)
            endif
         enddo
         found=1
      else
         do ihep=1,nhep
            if (((isthep(ihep).eq.1).or.(isthep(ihep).eq.2)
     #.or.(isthep(ihep).eq.155).or.(isthep(ihep).eq.195))
     #.and.(idhep(ihep).eq.25)) then
               j1=ihep
               found=found+1
               pH(1:4) = phep(1:4,j1)
            endif
         enddo
      endif
      if(found.lt.1) then
         write(*,*) 'ERROR: Higgs not found'
         call exit(1)
      elseif(found.gt.1) then
         write(*,*) 'ERROR: more Higgs-like particles found'
         call exit(1)
      endif

c     total sigma
      call filld('total',0.5d0,dsig)
      call filld('total-btl',0.5d0,dsig*theta_btl)
      call filld('total-rmn',0.5d0,dsig*theta_rmn)





c     Higgs histograms 
      call getyetaptmass(pH,yH,etaH,ptH,mH)
      call filld('yH',yH,dsig)
      theta_yh1=dabs(yh).lt.1d0
      theta_yh2=dabs(yh).gt.1d0.and.dabs(yh).lt.2d0
      theta_yh4=dabs(yh).gt.2d0.and.dabs(yh).lt.4d0

      call filld('yH-btl',yH,dsig*theta_btl)
      call filld('yH-rmn',yH,dsig*theta_rmn)


      call filld('ptH',ptH,dsig)
      call filld('ptH-btl',ptH,dsig*theta_btl)
      call filld('ptH-rmn',ptH,dsig*theta_rmn)

      call filld('ptHzoom',ptH,dsig)
      call filld('ptHzoom-btl',ptH,dsig*theta_btl)
      call filld('ptHzoom-rmn',ptH,dsig*theta_rmn)


C     find jets 
      rr=0.4d0       
      ptmin=0d0
      call buildjets(1,rr,ptmin,mjets,ktj,etaj,rapj,phij,ptrel,pj)

      call getyetaptmass(pH,yH,etaH,ptH,mH)
      
      if(mjets.ge.1) then
c         call filld('ptj1_check',ktj(1),dsig)
         call filld('ptj1',ktj(1),dsig)
         call filld('ptj1-btl',ktj(1),dsig*theta_btl)
         call filld('ptj1-rmn',ktj(1),dsig*theta_rmn)
         call filld('ptj1zoom',ktj(1),dsig)
         call filld('ptj1zoom-btl',ktj(1),dsig*theta_btl)
         call filld('ptj1zoom-rmn',ktj(1),dsig*theta_rmn)
      endif

      if(mjets.ge.2) then
c         call filld('ptj2_check',ktj(2),dsig)
         call filld('ptj2',ktj(2),dsig)
         call filld('ptj2zoom',ktj(2),dsig)
      endif
      
c     following plots have not been tested carefully...

C     -- Plot inclusive and exclusive jet multiplicties at two jet-pT thresholds

      call getdydetadphidr(pH,pj(:,1),dyhj1,detahj1,dphihj1,drhj1)
      do icut = 1,ncuts
         if(ktj(1) .gt. jetcut(icut)) then
            call filld('y-j1'//trim(suffix(icut)),rapj(1),dsig)
            call filld('y-j1-btl'//trim(suffix(icut)),rapj(1),dsig*theta_btl)
            call filld('y-j1-rmn'//trim(suffix(icut)),rapj(1),dsig*theta_rmn)
            call filld('dy-h-j1'//trim(suffix(icut)),dyhj1,dsig)
            call filld('dy-h-j1-btl'//trim(suffix(icut)),dyhj1,dsig*theta_btl)
            call filld('dy-h-j1-rmn'//trim(suffix(icut)),dyhj1,dsig*theta_rmn)
            call filld('dphi-h-j1'//trim(suffix(icut)),dphihj1,dsig)
            call filld('dphi-h-j1-btl'//trim(suffix(icut)),dphihj1,dsig*theta_btl)
            call filld('dphi-h-j1-rmn'//trim(suffix(icut)),dphihj1,dsig*theta_rmn)


            if(theta_yh1) call filld('ptH--yH-0-1'//trim(suffix(icut))    ,ptH, dsig)
            if(theta_yh1) call filld('ptj1--yH-0-1'//trim(suffix(icut))   ,ktj(1), dsig)
            if(theta_yh1) call filld('y-j1--yH-0-1'//trim(suffix(icut))   ,rapj(1), dsig)
            if(theta_yh1) call filld('dy-h-j1--yH-0-1'//trim(suffix(icut)),dyhj1, dsig)

            if(theta_yh2) call filld('ptH--yH-1-2'//trim(suffix(icut))    ,ptH, dsig)
            if(theta_yh2) call filld('ptj1--yH-1-2'//trim(suffix(icut))   ,ktj(1), dsig)
            if(theta_yh2) call filld('y-j1--yH-1-2'//trim(suffix(icut))   ,rapj(1), dsig)
            if(theta_yh2) call filld('dy-h-j1--yH-1-2'//trim(suffix(icut)),dyhj1, dsig)

            if(theta_yh4) call filld('ptH--yH-2-4'//trim(suffix(icut))    ,ptH, dsig)
            if(theta_yh4) call filld('ptj1--yH-2-4'//trim(suffix(icut))   ,ktj(1), dsig)
            if(theta_yh4) call filld('y-j1--yH-2-4'//trim(suffix(icut))   ,rapj(1), dsig)
            if(theta_yh4) call filld('dy-h-j1--yH-2-4'//trim(suffix(icut)),dyhj1, dsig)

c     BTILDE

            if(theta_yh1) call filld('ptH--yH-0-1-btl'//trim(suffix(icut))    ,ptH, dsig*theta_btl)
            if(theta_yh1) call filld('ptj1--yH-0-1-btl'//trim(suffix(icut))   ,ktj(1), dsig*theta_btl)
            if(theta_yh1) call filld('y-j1--yH-0-1-btl'//trim(suffix(icut))   ,rapj(1), dsig*theta_btl)
            if(theta_yh1) call filld('dy-h-j1--yH-0-1-btl'//trim(suffix(icut)),dyhj1, dsig*theta_btl)

            if(theta_yh2) call filld('ptH--yH-1-2-btl'//trim(suffix(icut))    ,ptH, dsig*theta_btl)
            if(theta_yh2) call filld('ptj1--yH-1-2-btl'//trim(suffix(icut))   ,ktj(1), dsig*theta_btl)
            if(theta_yh2) call filld('y-j1--yH-1-2-btl'//trim(suffix(icut))   ,rapj(1), dsig*theta_btl)
            if(theta_yh2) call filld('dy-h-j1--yH-1-2-btl'//trim(suffix(icut)),dyhj1, dsig*theta_btl)

            if(theta_yh4) call filld('ptH--yH-2-4-btl'//trim(suffix(icut))    ,ptH, dsig*theta_btl)
            if(theta_yh4) call filld('ptj1--yH-2-4-btl'//trim(suffix(icut))   ,ktj(1), dsig*theta_btl)
            if(theta_yh4) call filld('y-j1--yH-2-4-btl'//trim(suffix(icut))   ,rapj(1), dsig*theta_btl)
            if(theta_yh4) call filld('dy-h-j1--yH-2-4-btl'//trim(suffix(icut)),dyhj1, dsig*theta_btl)


c     REMNANT

            if(theta_yh1) call filld('ptH--yH-0-1-rmn'//trim(suffix(icut))    ,ptH, dsig*theta_rmn)
            if(theta_yh1) call filld('ptj1--yH-0-1-rmn'//trim(suffix(icut))   ,ktj(1), dsig*theta_rmn)
            if(theta_yh1) call filld('y-j1--yH-0-1-rmn'//trim(suffix(icut))   ,rapj(1), dsig*theta_rmn)
            if(theta_yh1) call filld('dy-h-j1--yH-0-1-rmn'//trim(suffix(icut)),dyhj1, dsig*theta_rmn)

            if(theta_yh2) call filld('ptH--yH-1-2-rmn'//trim(suffix(icut))    ,ptH, dsig*theta_rmn)
            if(theta_yh2) call filld('ptj1--yH-1-2-rmn'//trim(suffix(icut))   ,ktj(1), dsig*theta_rmn)
            if(theta_yh2) call filld('y-j1--yH-1-2-rmn'//trim(suffix(icut))   ,rapj(1), dsig*theta_rmn)
            if(theta_yh2) call filld('dy-h-j1--yH-1-2-rmn'//trim(suffix(icut)),dyhj1, dsig*theta_rmn)

            if(theta_yh4) call filld('ptH--yH-2-4-rmn'//trim(suffix(icut))    ,ptH, dsig*theta_rmn)
            if(theta_yh4) call filld('ptj1--yH-2-4-rmn'//trim(suffix(icut))   ,ktj(1), dsig*theta_rmn)
            if(theta_yh4) call filld('y-j1--yH-2-4-rmn'//trim(suffix(icut))   ,rapj(1), dsig*theta_rmn)
            if(theta_yh4) call filld('dy-h-j1--yH-2-4-rmn'//trim(suffix(icut)),dyhj1, dsig*theta_rmn)


c     extra plots
            if(dabs(rapj(1)).gt.4d0) then
               call filld('ptH-yj4'//trim(suffix(icut)),ptH,dsig)
               call filld('ptj1-yj4'//trim(suffix(icut)),ktj(1),dsig)
            endif

         endif
c     no-jets OR hardest-jet softer than threshold: 
c     ->fill 0-th bin of Njet-inc and 0-th bin of Njet-exc
         if((mjets.eq.0) .or. 
     $        (mjets.gt.0 .and. ktj(1).lt.jetcut(icut))) then
            call filld('Njet-inc'//suffix(icut),0d0,dsig)
            call filld('Njet-exc'//suffix(icut),0d0,dsig)
         endif

c     at least 1 jet: loop over jets
         do i=1,5
c     ->fill inclusive i-th bin if i-th jet is harder than threshold
            if(mjets.ge.i.and.ktj(i).ge.jetcut(icut)) 
     $           call filld('Njet-inc'//suffix(icut),i*1d0,dsig)
c     ->fill exclusive i-th bin if 
c     1) I have exactly i jets and i-th jet is harder than threshold
c     OR
c     2) I have more than i jets, i-th jet is harder than threshold
c        but (i+1)-jet (and all the others) is too soft
            if( (mjets.eq.i.and.ktj(i).ge.jetcut(icut)) .or. 
     $          (mjets.gt.i.and.ktj(i).ge.jetcut(icut) .and. 
     $           ktj(i+1).lt.jetcut(icut)))
     $           call filld('Njet-exc'//suffix(icut),i*1d0,dsig)
         enddo

      enddo
 
      end
      


      subroutine buildjets(iflag,rr,ptmin,mjets,kt,eta,rap,phi,
     $     ptrel,pjet)
c     arrays to reconstruct jets, radius parameter rr
      implicit none
c     tell to the analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      integer iflag,mjets
      real * 8  rr,ptmin,kt(*),eta(*),rap(*),
     1     phi(*),ptrel(3),pjet(4,*)
      include   'hepevt.h'
      include  'LesHouches.h'
      integer   maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      real * 8  ptrack(4,maxtrack),pj(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu,i
      real * 8 r,palg,tmp
      logical islept
      external islept
      real * 8 vec(3),pjetin(0:3),pjetout(0:3),beta,
     $     ptrackin(0:3),ptrackout(0:3)
      real * 8 get_ptrel
      external get_ptrel
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
         if(WHCPRG.eq.'PY8   ') then
            do j=1,nhep
               if((isthep(j).gt.0).and..not.idhep(j).eq.25) then
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
            do j=1,nhep
c     all but the Higgs
               if (isthep(j).eq.1.and..not.idhep(j).eq.25) then
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
         endif
      else
         do j=1,nup
            if (istup(j).eq.1.and..not.islept(idup(j))) then
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
C     R = 0.7   radius parameter
c palg=1 is standard kt, -1 is antikt
      palg=-1
      r=rr
c      ptmin=20d0 
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
         call getyetaptmass(pjet(:,j),rap(j),eta(j),kt(j),tmp)
         phi(j)=atan2(pjet(2,j),pjet(1,j))
      enddo

c     loop over the hardest 3 jets
      do j=1,min(njets,3)
         do mu=1,3
            pjetin(mu) = pjet(mu,j)
         enddo
         pjetin(0) = pjet(4,j)         
         vec(1)=0d0
         vec(2)=0d0
         vec(3)=1d0
         beta = -pjet(3,j)/pjet(4,j)
         call mboost(1,vec,beta,pjetin,pjetout)         
c     write(*,*) pjetout
         ptrel(j) = 0
         do i=1,ntracks
            if (jetvec(i).eq.j) then
               do mu=1,3
                  ptrackin(mu) = ptrack(mu,i)
               enddo
               ptrackin(0) = ptrack(4,i)
               call mboost(1,vec,beta,ptrackin,ptrackout) 
               ptrel(j) = ptrel(j) + get_ptrel(ptrackout,pjetout)
            endif
         enddo
      enddo
      end

C     a number of handy functions used by generic analyses 

      subroutine getyetaptmass(p,y,eta,pt,mass)
      implicit none
      real * 8 p(4),y,eta,pt,mass,pv
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
