c  The next subroutines, open some histograms and prepare them 
c      to receive data 
c  You can substitute these  with your favourite ones
c  init   :  opens the histograms
c  topout :  closes them
c  filld  :  fills the histograms with data

      subroutine init_hist
      implicit none
      include  'LesHouches.h'

      integer i,ncut
      parameter (ncut=3)
      character*2 strcut(ncut)

      call inihists

      strcut(1)='_1'
      strcut(2)='_2'
      strcut(3)='_3'

      do i=1,ncut

      call bookupeqbins('total'//strcut(i),1d0,0d0,3d0)

c     event type selection
      call bookupeqbins('totalWgammatot'//strcut(i),1d0,0d0,3d0)

      call bookupeqbins('totalWj+Wjjevts'//strcut(i),1d0,0d0,3d0)

      call bookupeqbins('totalWgam'//strcut(i),1d0,0d0,3d0)

      call bookupeqbins('totalWjborn'//strcut(i),1d0,0d0,3d0)

      call bookupeqbins('totalWjj'//strcut(i),1d0,0d0,3d0)

      call bookupeqbins('totalWjgam'//strcut(i),1d0,0d0,3d0)
c
      call bookupeqbins('MT_lnu'//strcut(i),3d0,0d0,297d0)

      call bookupeqbins('MT_lnugam'//strcut(i),3d0,0d0,297d0)

      call bookupeqbins('M_lnu'//strcut(i),3d0,0d0,297d0)

      call bookupeqbins('M_lnugam'//strcut(i),3d0,0d0,297d0)

      call bookupeqbins('pt_lep'//strcut(i),3d0,0d0,297d0)

      call bookupeqbins('Et_miss'//strcut(i),3d0,0d0,297d0)

      call bookupeqbins('pt_lnu zoom'//strcut(i),0.5d0,0d0,25d0)
 
      call bookupeqbins('pt_lnu'//strcut(i),3d0,0d0,297d0)

      call bookupeqbins('pt_lnugam'//strcut(i),3d0,0d0,297d0)

      call bookupeqbins('pt_lgam'//strcut(i),3d0,0d0,297d0)

      call bookupeqbins('pt_gam'//strcut(i),3d0,0d0,297d0)

      call bookupeqbins('eta_lep'//strcut(i),0.2d0,-5d0,5d0)

      call bookupeqbins('eta_gam'//strcut(i),0.2d0,-5d0,5d0)

      call bookupeqbins('y_lnu'//strcut(i),0.1d0,-3d0,3d0)

      call bookupeqbins('DeltaR_lgam'//strcut(i),0.1d0,0d0,5d0)

      call bookupeqbins('Deltaeta*Q'//strcut(i),0.2d0,-5d0,5d0)

      enddo

      end 

           
      subroutine analysis(dsig)
      implicit none
      real * 8 dsig
      include 'hepevt.h'
      include 'pwhg_math.h' 
      include  'LesHouches.h'
      real *8 p_neutrino(0:3),p_lepton(0:3),p_gamma(0:3),p_lnu(0:3)
      real*8 p_lgam(0:3),p_lnugam(0:3),p_h(0:3),p_j(0:3)
      real *8 pt_lepton,pt_neutrino,pt_gamma,pt_j,
     $     eta_lepton,eta_neutrino,eta_gamma,deltaphi_lnu,mt_lnu,
     $     m_lnu,pt_lnu,yv,deltaphi_lgam,deltaR,M_lgam,M_lnugam,E_gam
      real *8 e_h,R_0,Etmax !isolation cuts parameters
      real *8 R_gamj,Et_j,pt_h,R_gamh,Et_h,Eth_sum !isolation cuts
      real *8 pt2lgam,pt2lnugam,MT2_lnugam,MT_lnugam,MT_lgam
      real *8 DeltaetaQ !Deltaeta(l-gam)*Q_l
      logical isolation,isocone !standard/smooth isolation
      integer ihep,mu,j,k,l,i
      logical ini
      data ini/.true./
      save ini
c     we need to tell to this analysis file which program is running it
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO   '/
      integer vdecaytemp,vdecay2temp,idvecbos
      save vdecaytemp,vdecay2temp,idvecbos
      integer maxnumlep
      parameter (maxnumlep=10)
      integer maxnumgamma
      parameter (maxnumgamma=300)
      integer lepvec(maxnumlep),nuvec(maxnumlep),gammavec(maxnumgamma)
      integer ilep,inu,igam,lep,nu,gam,nlep,nnu,ngamma,jlep,jnu,jgam
      real *8 pt_gamma_max,pt_lep_max,pt_nu_max
      integer ncut
      parameter (ncut=3)
      character*2 strcut(ncut)
      logical accepted(ncut)      
      real*8 deltaR_gamlep,pt_lgam,pt_lnugam,p_lepdress(0:3)
c     separation of event types
      logical Wgam_evt,Wjgam_evt,WjB_evt,Wjj_evt,gam_evt,Wj_evt
      common/lhesave/Wgam_evt,Wjgam_evt,WjB_evt,Wjj_evt,gam_evt,Wj_evt
      real * 8 powheginput
      external powheginput
c     nlo test only 
      logical nlo_test
      common/nlotest/nlo_test 
c     powheg-nc/c-lo
      logical powheg_nc,powheg_c_lo
      common/wgammode/powheg_nc,powheg_c_lo

      strcut(1)='_1'
      strcut(2)='_2'
      strcut(3)='_3'

      if(dsig.eq.0) return

      if (ini) then
         write (*,*)
         write (*,*) '********************************************'
         if(whcprg.eq.'NLO   ') then
            write (*,*) '           NLO ANALYSIS CALLED        '
            write(*,*)'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
            write(*,*)'WARNING !!!! nlo analysis makes sense only '
            write(*,*)'             for nlo_test = 1              '
            write(*,*)'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
         elseif(WHCPRG.eq.'LHE   ') then
            write (*,*) '           LHE ANALYSIS CALLED        '
            if(.not.powheg_nc) then
               write(*,*)'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
               write(*,*)'!!!!        WARNING                      !!!!'
               write(*,*)'!!!! lhefanalysis should be used only on !!!!'
               write(*,*)'!!!! events with no competition mode :   !!!!'
               write(*,*)'!!! al most 1 gamma and 1 jet            !!!!'
               write(*,*)'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
            endif

         elseif(WHCPRG.eq.'HERWIG') then
            write (*,*) '           HERWIG ANALYSIS CALLED     '
         elseif(WHCPRG.eq.'PYTHIA') then
            write (*,*) '           PYTHIA ANALYSIS CALLED     '
         endif
         write (*,*) '********************************************'
         write (*,*)
c     id of the charged decay product of the W
         vdecaytemp=lprup(1)-10000
         if(vdecaytemp.lt.0) then 
            vdecay2temp=-vdecaytemp+1 
            idvecbos=24
         elseif(vdecaytemp.gt.0) then
            vdecay2temp=-(vdecaytemp+1)
            idvecbos=-24
         else
            write(*,*) 'Error in decay mode in pwhg_analysis'
            call exit(1)
         endif
         if(abs(vdecaytemp).eq.11.or.abs(vdecaytemp).eq.13
     $        .or.abs(vdecaytemp).eq.15) then
            continue
         else
            write(*,*) '**************************************'
            write(*,*) ' Analysis works only for e, mu or tau decays'
            write(*,*) '                 STOP     '
            write(*,*) '**************************************'
            call exit(1)
         endif
         write (*,*)
         ini=.false.
      endif


      if(whcprg.eq.'NLO    '.or.whcprg.eq.'LHE   ') then

         if(powheginput("#nlotestonly").eq.1) then
            nlo_test=.true.
         else
            nlo_test=.false.
         endif

c Parameters for isolation cuts (lhe analysis only)
c smooth(arXiv:9801442)/standard
         e_h = 0.5d0
         R_0 = 0.4d0
         Etmax=3d0
         isolation=.true.
         isocone=.true.

         ngamma=0

         do mu=0,3
            p_gamma(mu)=0d0
            p_j(mu)=0d0
         enddo

         do ihep=1,nhep
            if(isthep(ihep).eq.1) then
               if(idhep(ihep).eq.vdecay2temp) then
                  p_neutrino(0)=phep(4,ihep)
                  do mu=1,3
                     p_neutrino(mu)=phep(mu,ihep)
                  enddo
               elseif(idhep(ihep).eq.vdecaytemp) then
                  p_lepton(0)=phep(4,ihep)
                  do mu=1,3
                     p_lepton(mu)=phep(mu,ihep)
                  enddo
               elseif(idhep(ihep).eq.22) then
                  p_gamma(0)=phep(4,ihep)
                  do mu=1,3
                     p_gamma(mu)=phep(mu,ihep)
                  enddo
                  ngamma=1
c     quarks and gluons
               elseif(((abs(idhep(ihep)).le.5).and.(idhep(ihep).ne.0))
     #                 .or.(idhep(ihep).eq.21)) then
                  p_j(0)=phep(4,ihep)
                  do mu=1,3
                     p_j(mu)=phep(mu,ihep)
                  enddo
               endif
            endif
         enddo

         call get_deltar(p_gamma,p_lepton,DeltaR)    
         if(DeltaR.lt.0.7) return

c     isolation cuts (lhe analysis only)
         if(.not.nlo_test) then
            pt_j=sqrt( p_j(1)**2 + p_j(2)**2 )
            Et_j=p_j(0)*pt_j/sqrt(p_j(1)**2+p_j(2)**2+p_j(3)**2)
            pt_gamma=sqrt(p_gamma(1)**2 + p_gamma(2)**2)
            call get_deltar(p_gamma,p_j,R_gamj)
c     standard isolation
            if(R_gamj.lt.R_0) then
               isolation=Et_j.lt.e_h*pt_gamma
c               isolation=Et_j.lt.Etmax
            else 
               isolation=.true.
            endif
c     smooth isolation (arXiv:9801442)
            if(R_gamj.lt.R_0) then
               isocone = Et_j.lt.(e_h*pt_gamma*
     $              (1d0-cos(R_gamj)) /(1d0-cos(R_0)))
            else  
               isocone = .true.
            endif 
            if(.not.isolation) return
         endif

      elseif ((WHCPRG.eq.'HERWIG').or.(WHCPRG.eq.'PYTHIA')) then  

c     Parameters for isolation cone cuts: smooth/standard
         e_h = 0.5d0
         R_0 = 0.4d0
         Etmax=3d0

         nlep=0
         nnu=0
         ngamma=0
         do i=1,maxnumlep
            lepvec(i) = 0
            nuvec(i) = 0
         enddo
         do i=1,maxnumgamma
            gammavec(i) = 0
         enddo

         do ihep=1,nhep
            if(isthep(ihep).eq.1) then
C     Scan over final state particle and record the entries
               if(idhep(ihep).eq.vdecay2temp) then 
C     with a neutrino
                  nnu=nnu+1
                  nuvec(nnu)=ihep
               elseif(idhep(ihep).eq.vdecaytemp) then
c     with a lepton
                  nlep=nlep+1
                  lepvec(nlep)=ihep
               elseif(idhep(ihep).eq.22) then 
C     with a gamma
                  ngamma=ngamma+1
                  gammavec(ngamma)=ihep
               endif
            endif
         enddo

         if(nlep.eq.0.or.nnu.eq.0) then
c            write(*,*)" not enough leptons or gamma! drop event"
c            call exit(1)
            return
         endif   

         if(ngamma.eq.0) then
c            write(*,*)" not enough photons! drop event"
            return
         endif 

c hardest neutrino
         pt_nu_max=0d0
         do nu=1,nnu
            inu=nuvec(nu)
            pt_neutrino=sqrt(phep(1,inu)**2 + phep(2,inu)**2)
            if (pt_neutrino.gt.pt_nu_max) then
               jnu = inu
               pt_nu_max = pt_neutrino
            endif
         enddo

c hardest lepton 
         pt_lep_max=0d0
         do lep=1,nlep
            ilep=lepvec(lep)
            pt_lepton=sqrt(phep(1,ilep)**2 + phep(2,ilep)**2)
            if (pt_lepton.gt.pt_lep_max) then
               jlep = ilep
               pt_lep_max = pt_lepton
            endif
         enddo

         pt_gamma_max=0d0
         jgam=-10

         do gam=1,ngamma
            igam=gammavec(gam)

            p_gamma(0)=phep(4,igam)
            do mu=1,3
               p_gamma(mu)=phep(mu,igam)
            enddo
            pt_gamma=sqrt(p_gamma(1)**2 + p_gamma(2)**2)
            call get_pseudorap(p_gamma,eta_gamma)

c     isolation cuts
            Eth_sum=0d0
            do ihep=1,nhep
               if(isthep(ihep).eq.1) then
C     hadrons
                  if(abs(idhep(ihep)).le.6.or.idhep(ihep).eq.21.or.
     $               abs(idhep(ihep)).gt.22) then
c     hadron momenta
                     p_h(0)=phep(4,ihep)
                     do mu=1,3
                        p_h(mu)=phep(mu,ihep)
                     enddo
c     transverse energy
                     pt_h=sqrt(p_h(1)**2 + p_h(2)**2)
                     Et_h=p_h(0)*pt_h/
     $                    sqrt(p_h(1)**2+p_h(2)**2+p_h(3)**2)
                     call get_deltar(p_gamma,p_h,R_gamh)
c     smooth isolation cone 
                     if(R_gamh.lt.R_0) then
                        isocone = Et_h.lt.(e_h*pt_gamma*
     $                   (1d0-cos(R_gamh)) /(1d0-cos(R_0)))
                     else  
                        isocone = .true.
                     endif 
c     standard isolation cone
                     if(R_gamh.lt.R_0) then
                        Eth_sum=Eth_sum+Et_h
                     endif                 
                  endif
               endif
            enddo
            isolation=Eth_sum.lt.e_h*pt_gamma
c            isolation=Eth_sum.lt.Etmax
c     apply isolation and R(lep-gamma) cuts
            if(.not.isolation) cycle
c     cut R(lep-gamma)
            p_lepton(0)=phep(4,jlep)
            do mu=1,3
               p_lepton(mu)=phep(mu,jlep)
            enddo
            call get_deltar(p_gamma,p_lepton,DeltaR)    
            if(DeltaR.lt.0.7) cycle
c     hardest photon among the isolated ones
            if (pt_gamma.gt.pt_gamma_max) then
               jgam = igam
               pt_gamma_max = pt_gamma
            endif
         enddo

         if(jgam.le.0) then
c            print*,'no gamma in pt_gammamax'
            return
         endif

c     Assign lepton and neutrino momenta 
         p_neutrino(0)=phep(4,jnu)
         p_lepton(0)=phep(4,jlep)
         do mu=1,3
            p_neutrino(mu)=phep(mu,jnu)
            p_lepton(mu)=phep(mu,jlep)
         enddo

c     dress the lepton with all radiated photons in a cone 0.1
         p_lepdress(:)=p_lepton(:)
         do gam=1,ngamma
            igam=gammavec(gam)
            p_gamma(0)=phep(4,igam)
            do mu=1,3
               p_gamma(mu)=phep(mu,igam)
            enddo
            call get_deltar(p_gamma,p_lepton,deltaR_gamlep)
            if(deltaR_gamlep.lt.0.1d0) then
               p_lepdress(0) = p_lepdress(0)+p_gamma(0)
               do mu=1,3
                  p_lepdress(mu)=p_lepdress(mu)+p_gamma(mu)
               enddo
            endif
         enddo
c     uncomment the following to define a dressed lepton
c     (setting the QEDshower pt_min to 1 GeV effectively produces a dressed lepton)
c         p_lepton(:)=p_lepdress(:)

c     Assign photon momentum
         p_gamma(0)=phep(4,jgam)
         do mu=1,3
            p_gamma(mu)=phep(mu,jgam)
         enddo

      else
         write(*,*) 'Not yet implemented analysis'
         call exit(1)
      endif

c     define observables for histograms      

c     DeltaR(l-gam)
      call get_deltar(p_gamma,p_lepton,DeltaR)    

c     neutrino transverse momentum
      pt_neutrino=sqrt(p_neutrino(1)**2 + p_neutrino(2)**2)
      call get_pseudorap(p_neutrino,eta_neutrino)

c     lepton transverse momentum
      pt_lepton=sqrt(p_lepton(1)**2 + p_lepton(2)**2)
      call get_pseudorap(p_lepton,eta_lepton)

c     transverse momentum of the lepton-photon system
      pt_lgam=sqrt((p_lepton(1)+p_gamma(1))**2 + 
     &     (p_lepton(2)+p_gamma(2))**2)

c     photon transverse momentum
      pt_gamma=sqrt(p_gamma(1)**2 + p_gamma(2)**2)
      call get_pseudorap(p_gamma,eta_gamma)

c     invariant mass of the lepton-neutrino system
      do mu=0,3
         p_lnu(mu)=p_lepton(mu)+p_neutrino(mu)
      enddo
      call getinvmass(p_lnu,m_lnu)

c     azimuthal separation between lepton and neutrino
      deltaphi_lnu = dabs(atan2(p_lepton(2),p_lepton(1)) - 
     $        atan2(p_neutrino(2),p_neutrino(1)))
      deltaphi_lnu=min(deltaphi_lnu,2d0*pi-deltaphi_lnu)

c     transverse mass of the lepton-neutrino system
      mt_lnu=sqrt(2*pt_lepton*pt_neutrino*(1d0-dcos(deltaphi_lnu)))

c     rapidity of the lepton-neutrino system
      call getrapidity(p_lnu,yv)

c     transverse momentum of the lepton-neutrino system
      pt_lnu=sqrt((p_lepton(1)+p_neutrino(1))**2
     $     + (p_lepton(2)+p_neutrino(2))**2)

c     transverse momentum of the lepton-neutrino-photon system
      pt_lnugam=sqrt((p_lepton(1)+p_gamma(1)+p_neutrino(1))**2
     $     + (p_lepton(2)+p_gamma(2)+p_neutrino(2))**2)

c     invariant mass of lepton-gamma system
      do mu=0,3
         p_lgam(mu)=p_lepton(mu)+p_gamma(mu)
      enddo
      call getinvmass(p_lgam,M_lgam)

c     invariant mass of lepton-neutrino-gamma system
      do mu=0,3
         p_lnugam(mu)=p_lepton(mu)+p_neutrino(mu)+p_gamma(mu)
      enddo
      call getinvmass(p_lnugam,M_lnugam)

c     Deltaeta(l-gam)*Q_l
      DeltaetaQ=(eta_gamma-eta_lepton) !*(Q_l)

c     transverse mass (l-nu-gam)
      pt2lgam=(p_gamma(1)+p_lepton(1))**2+(p_gamma(2)+p_lepton(2))**2
      pt2lnugam=(p_gamma(1)+p_lepton(1)+p_neutrino(1))**2+(p_gamma(2)
     $          +p_lepton(2)+p_neutrino(2))**2
      MT2_lnugam=(sqrt(M_lgam**2+pt2lgam)+pt_neutrino)**2-pt2lnugam
      MT_lnugam=sqrt(MT2_lnugam)

c     azimuthal separation between lepton and photon
      deltaphi_lgam = dabs(atan2(p_lepton(2),p_lepton(1)) - 
     $        atan2(p_gamma(2),p_gamma(1)))
      deltaphi_lgam=min(deltaphi_lgam,2d0*pi-deltaphi_lgam)

c     transverse mass (l-gam) 
      MT_lgam=sqrt(2*pt_lepton*pt_gamma*(1d0-dcos(deltaphi_lgam)))


***   selection cuts
c     basic photon cuts
      accepted(1) = pt_gamma.gt.15d0  .and.
     $           abs(eta_gamma).lt.2.37d0   .and.
     $           ngamma.gt.0 

c     basic photon + MT(l-nu-gam) cuts
      accepted(2) = pt_gamma.gt.15d0  .and.
     $           abs(eta_gamma).lt.2.37d0   .and.
     $           ngamma.gt.0  .and.
     $           MT_lnugam.gt.90d0

c     basic photon + lepton cuts
      accepted(3) = pt_gamma.gt.15d0  .and.
     $           pt_neutrino.gt.35d0 .and.
     $           pt_lepton.gt.25d0.and.
     $           abs(eta_lepton).lt.2.47d0  .and.
     $           abs(eta_gamma).lt.2.37d0   .and.
     $           ngamma.gt.0 

      do i=1,ncut
         if(.not.(accepted(i))) cycle
c     plot histograms
c     total sigma
         call filld('total'//strcut(i),1.5d0,dsig)
c     event type selection
         if(gam_evt)
     &        call filld('totalWgammatot'//strcut(i),1.5d0,dsig)
         
         if(Wj_evt)
     &        call filld('totalWj+Wjjevts'//strcut(i),1.5d0,dsig)
         
         if(Wgam_evt)
     &        call filld('totalWgam'//strcut(i),1.5d0,dsig)
         
         if(WjB_evt)
     &        call filld('totalWjborn'//strcut(i),1.5d0,dsig)
         
         if(Wjj_evt)
     &        call filld('totalWjj'//strcut(i),1.5d0,dsig)
         
         if(Wjgam_evt)
     &        call filld('totalWjgam'//strcut(i),1.5d0,dsig)
          
c     transverse mass of the lepton-neutrino system
         call filld('MT_lnu'//strcut(i),mt_lnu,dsig)

c     Transverse mass of the lepton-neutrino-gamma system
         call filld('MT_lnugam'//strcut(i),MT_lnugam,dsig)
         
c     invariant mass of the lepton-neutrino system
         call filld('M_lnu'//strcut(i),m_lnu,dsig)

c     invariant mass of the lepton-neutrino system
         call filld('M_lnugam'//strcut(i),M_lnugam,dsig)
                  
c     pt(lepton)
         call filld('pt_lep'//strcut(i),pt_lepton,dsig)      

c     Et_miss
         call filld('Et_miss'//strcut(i),pt_neutrino,dsig)

c     pt(l-nu), zoom
         call filld('pt_lnu zoom'//strcut(i),pt_lnu,dsig)
         
c     pt(l-nu)
         call filld('pt_lnu'//strcut(i),pt_lnu,dsig)

c     pt(l-nu-gamma)
         call filld('pt_lnugam'//strcut(i),pt_lnugam,dsig)
         
c     pt(lepton+gamma)
         call filld('pt_lgam'//strcut(i),pt_lgam,dsig)
                           
c     pt(gam)
         call filld('pt_gam'//strcut(i),pt_gamma,dsig)

c     eta(lep)
         call filld('eta_lep'//strcut(i),eta_lepton,dsig)
         
c     eta(gam)
         call filld('eta_gam'//strcut(i),eta_gamma,dsig)

c     y(l-nu)
         call filld('y_lnu'//strcut(i),yv,dsig)

c     DeltaR(gam-lep)
         call filld('DeltaR_lgam'//strcut(i),DeltaR,dsig)
                  
c     charge-signed photon-lepton rapidity difference
         call filld('Deltaeta*Q'//strcut(i),DeltaetaQ,dsig)

      enddo

      end


ccc uti routines

      subroutine get_deltar(p1,p2,deltar)
      implicit none
      include 'pwhg_math.h' 
      real*8 p1(0:3),p2(0:3),deltar
      real*8 eta1,eta2,deltaeta,deltaphi

      call get_pseudorap(p1,eta1)
      call get_pseudorap(p2,eta2)

      deltaeta = eta1 - eta2
      deltaphi = dabs(atan2(p1(2),p1(1)) - 
     $        atan2(p2(2),p2(1)))
      deltaphi=min(deltaphi,2d0*pi-deltaphi)
 
      deltar = sqrt(deltaeta**2+deltaphi**2)

      end
