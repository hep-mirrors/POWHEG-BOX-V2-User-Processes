c     open some histograms and fill them with data
c     + several auxiliary subroutines

c     book all histograms, will be filled later
      subroutine init_hist
      implicit none
      include 'LesHouches.h'
      include 'pwhg_math.h'
      ! tell this analysis file which program is running it
      character *6 WHCPRG
      common/cWHCPRG/WHCPRG

      call inihists

      ! cutsJ
      call bookupeqbins('sigma_total_cutsJ',1d0,-0.5d0,0.5d0)

      call bookupeqbins('inv_mass_slepton_pair_cutsJ',
     &                  20d0,200d0,2000d0)
      call bookupeqbins('pt_sl1_cutsJ',10d0,0d0,1000d0)
      call bookupeqbins('eta_sl1_cutsJ',0.2d0,-4d0,4d0)

      call bookupeqbins('number_of_visible_jets_cutsJ',
     &                  1d0,-0.5d0,14.5d0)
      call bookupeqbins('pt_hardest_jet_cutsJ',5d0,0d0,1000d0)
      call bookupeqbins('eta_hardest_jet_cutsJ',0.2d0,-4d0,4d0)
      call bookupeqbins('pt_secondhardest_jet_cutsJ',5d0,0d0,200d0)
      call bookupeqbins('eta_secondhardest_jet_cutsJ',0.2d0,-4d0,4d0)

      if(WHCPRG.eq.'PYTHIA') then
         call bookupeqbins('Et_miss_obs_cutsJ',10d0,0d0,1000d0)

         ! cutsM
         call bookupeqbins('sigma_total_cutsM',1d0,-0.5d0,0.5d0)

         call bookupeqbins('number_of_visible_jets_cutsM',
     &                     1d0,-0.5d0,14.5d0)
         call bookupeqbins('pt_hardest_jet_cutsM',20d0,120d0,1000d0)
         call bookupeqbins('eta_hardest_jet_cutsM',0.2d0,-4d0,4d0)

         call bookupeqbins('Et_miss_obs_cutsM',20d0,150d0,1000d0)

         ! cutsL
         call bookupeqbins('sigma_total_cutsL',1d0,-0.5d0,0.5d0)

         ! azimuthal difference of the leptons
         ! in [-pi,pi] measured from lepton A
         call bookupeqbins('azimuth_diff_lepton_pair_cutsL',
     &                     pi/20d0,-pi,pi)
         call bookupeqbins('pt_lepton_A_cutsL',10d0,0d0,600d0)
         call bookupeqbins('eta_lepton_A_cutsL',0.2d0,-4d0,4d0)

         ! M_R_Star from 1006.2727 (razor)
         call bookupeqbins('M_R_Star_cutsL',10d0,0d0,600d0)
         ! super razor variables from 1310.4827
         call bookupeqbins('M_R_Delta_su_cutsL',5d0,0d0,400d0)
         call bookupeqbins('sqrt_s_hat_R_su_cutsL',20d0,0d0,2000d0)
         call bookupeqbins('Delta_phi_beta_R_su_cutsL',pi/20d0,-pi,pi)
         call bookupeqbins('abs_cos_theta_Rp1_su_cutsL',2d-2,0d0,1d0)

         ! cuts4
         call bookupeqbins('sigma_total_cuts4',1d0,-0.5d0,0.5d0)

         call bookupeqbins('pt_secondhardest_jet_cuts4',5d0,0d0,200d0)
         call bookupeqbins('eta_secondhardest_jet_cuts4',0.2d0,-4d0,4d0)
      endif

      end



c     extract all data required for the histograms
c     calculate quantities that shall be plotted
c     fill histograms
      subroutine analysis(dsig)
      implicit none
      include 'pwhg_math.h'
      include 'LesHouches.h'
      real *8 dsig ! total cross section
      ! tells if subroutine is called for the first time
      logical ini
      data ini/.true./
      save ini
      ! tell this analysis file which program is running it
      character *6 WHCPRG
      common/cWHCPRG/WHCPRG
      data WHCPRG/'NLO'/ ! default, should be set when analysis is called
      ! kinematical quantities
      real *8 p_sla(0:3), p_slb(0:3), p_slsl(0:3),
     &        p_la(0:3), p_lb(0:3), pmissobs(0:2)
      real *8 pt_sla, pt_la, pt_lb,
     &        eta_sla, eta_la, eta_lb,
     &        y_sla, y_la, phi_la, phi_lb, phi_ll,
     &        m_slsl, M_R_Star, Etmissobs
      integer number_n
c     &        pt_slb, pt_slsl, y_slsl, delphi_slsl, mt_slsl,
c     &        p_ll(0:3), m_ll, y_lb, y_ll, pt_nn
      ! for super razor variables from 1310.4827
      real *8 M_R_Delta_su,s_hat_R_su
      real *8 Delta_phi_beta_R_su,abs_cos_theta_Rp1_su
      ! jet parameters
      integer j, mjets, num_vis_jets, maxjet
      parameter (maxjet=2048)
      real *8 kt(maxjet), eta(maxjet), rap(maxjet),
     &        phi(maxjet), pj(4,maxjet), ptrel(maxjet)
      real *8 ptmin, yjmax, R
      common /jetcuts/ptmin, yjmax, R
      ! IDs
      integer id_sla, id_slb, id_la, id_lb
      ! indices
      integer mu, ij
      ! if allowed decay took place
      logical decayed, isvaliddecayspectrum
      save decayed
      ! for cuts
      logical cutsJpassed, cutsMpassed, cutsLpassed, cuts4passed
      logical visibleobjectsseparate, visobsaresep

      ! at first call
      if (ini) then
         ! check program that runs analysis
         write (*,*)
         write (*,*) '********************************************'
         if(WHCPRG.eq.'NLO') then
            write(*,*) 'fixed-order NLO analysis'
         elseif(WHCPRG.eq.'LHE') then
            write(*,*) 'LHE analysis'
         elseif(WHCPRG.eq.'HERWIG') then
            write (*,*) '           HERWIG ANALYSIS            '
            write(*,*) 'not implemented analysis'
            write(*,*) 'no plots will be present at the end of the run'
         elseif(WHCPRG.eq.'PYTHIA') then
            write (*,*) '           PYTHIA ANALYSIS            '
         endif
         write (*,*) '********************************************'

         ! extract slepton types from process id
         call decode_sfermion_pair(lprup(1),id_sla,id_slb)
         write(*,*) 'extracted from process ID: ', lprup(1)
         write(*,*) 'the sfermion pair: ', id_sla, ', ', id_slb

         ! determine lepton IDs in decay slepton -> lepton + neutralino
         id_la=mod(id_sla,100)
         id_lb=mod(id_slb,100)

         ! check sleptons in final state
         if (.not.( mod(id_sla,100).eq.mod(-id_slb,100) .and.
     &        (id_sla.eq.1000011 .or. id_sla.eq.2000011 .or.
     &         id_sla.eq.1000013 .or. id_sla.eq.2000013 .or.
     &         id_sla.eq.1000015 .or. id_sla.eq.2000015))) then
            write(*,*) 'analysis: final state not supported'
            call exit(1)
         endif

         ! write out slepton and lepton IDs
         write (*,*) '********************************************'
         write (*,*) 'in analysis routines'
         write (*,*) 'slepton A:', id_sla
         write (*,*) 'slepton B:', id_slb
         write (*,*) 'lepton A: ', id_la,
     &               ' (from decay of slepton A)'
         write (*,*) 'lepton B: ', id_lb,
     &               ' (from decay of slepton B)'
         write (*,*) '********************************************'
         ! write out all cuts
         write (*,*) 'cuts in analysis routines'
         write (*,*) ''
         write (*,*) 'cutsJ (jet)'
         write (*,*) 'hardest jet   p_t > 20 GeV'
         write (*,*) 'hardest jet |eta| < 4.5'
         write (*,*) ''
         write (*,*) 'cutsM (monojet)'
         write (*,*) 'hardest jet   p_t > 120 GeV'
         write (*,*) 'hardest jet |eta| < 4.5'
         write (*,*) 'Etmissobs         > 150 GeV'
         write (*,*) ''
         write (*,*) 'cutsL (leptons)'
         write (*,*) 'hardest jet   p_t > 20 GeV'
         write (*,*) 'lepton A      p_t > 20 GeV'
         write (*,*) 'lepton B      p_t > 20 GeV'
         write (*,*) 'hardest jet |eta| < 4.5'
         write (*,*) 'lepton A    |eta| < 2.5'
         write (*,*) 'lepton B    |eta| < 2.5'
         write (*,*) 'Delta R ll        > 0.4'
         write (*,*) 'Delta R lj        > 0.4'
         write (*,*) ''
         write (*,*) 'cuts4 (4 observed objects)'
         write (*,*) 'hardest jet          p_t > 20 GeV'
         write (*,*) 'second hardest jet   p_t > 20 GeV'
         write (*,*) 'lepton A             p_t > 20 GeV'
         write (*,*) 'lepton B             p_t > 20 GeV'
         write (*,*) 'hardest jet        |eta| < 4.5'
         write (*,*) 'second hardest jet |eta| < 4.5'
         write (*,*) 'lepton A           |eta| < 2.5'
         write (*,*) 'lepton B           |eta| < 2.5'
         write (*,*) 'Delta R ll               > 0.4'
         write (*,*) 'Delta R lj               > 0.4'
         write (*,*) '********************************************'

         ! find out if allowed decay took place
         decayed=.true.
         ! determine number of lightest neutralinos
         call getnumber(1000022,number_n)
         ! allowed decay requires lightest neutralinos in final state
         if (number_n.eq.0) then
            decayed=.false.
            write(*,*) 'no lightest neutralino found'
            write(*,*) '-> no allowed slepton decay took place'
         endif
         ! only if we already know that a decay took place
         if (decayed) then
            ! check spectrum if only allowed decays are possible
            if (isvaliddecayspectrum(id_sla) .eqv. .false.) then
               decayed=.false.
               write(*,*) 'histograms for decay products are empty'
            endif
         endif
      endif

      ! from pico to femto
      dsig=dsig*1000d0

      ! find slepton 4-momenta
      call get4momentum_firstfound(id_sla,p_sla)
      call get4momentum_firstfound(id_slb,p_slb)

      if(decayed) then
         ! decay products
         ! find lepton 4-momenta
         ! undecayed lepton of the same kind as lepton A with largest pt
         call get4momentum_largestpt(id_la,p_la)
         ! undecayed lepton of the same kind as lepton B with largest pt
         call get4momentum_largestpt(id_lb,p_lb)
      endif

      ! calculate slepton kinematical quantities:
      ! slepton A, B transverse momentum
      pt_sla=sqrt(p_sla(1)**2 + p_sla(2)**2)
c      pt_slb=sqrt(p_slb(1)**2 + p_slb(2)**2)
      ! slepton A pseudorapidity
      call get_pseudorap(p_sla,eta_sla)
      ! slepton A rapidity
c      call getrapidity(p_sla,y_sla)
      ! invariant mass of the slepton system
      do mu=0,3
         p_slsl(mu)=p_slb(mu)+p_sla(mu)
      enddo
      call getinvmass(p_slsl,m_slsl)
      ! transverse momentum of the slepton system
c      pt_slsl=sqrt((p_slb(1)+p_sla(1))**2 +
c     &             (p_slb(2)+p_sla(2))**2)
      ! rapidity of the slepton system
c      call getrapidity(p_slsl,y_slsl)
      ! azimuthal separation between sleptons
c      delphi_slsl = dabs(atan2(p_slb(2),p_slb(1)) -
c     &                   atan2(p_sla(2),p_sla(1)))
c      delphi_slsl=min(delphi_slsl,2d0*pi-delphi_slsl)
      ! transverse mass of the slepton system
c      mt_slsl=sqrt(2*pt_slb*pt_sla*(1d0-dcos(delphi_slsl)))

      ! jets
      ! jet cuts
      ptmin=1d0
      yjmax=4.5d0
      R=0.4d0
      ! initialize
      do j = 1,maxjet
        kt(j) = 0d0
        eta(j) = 0d0
        rap(j) = 0d0
        phi(j) = 0d0
        pj(:,j) = 0d0
        ptrel(j) = 0d0
      enddo
      mjets=40
      call buildjets(mjets,kt,eta,rap,phi,pj,ptrel)
      ! determine number of visible jets
      num_vis_jets=0
      do ij = 1,mjets
        if ((kt(ij).gt.20d0).and.(dabs(eta(ij)).lt.2.5d0)) then
           num_vis_jets=num_vis_jets+1
        endif
      enddo

      if(decayed) then
         ! calculate lepton kinematical quantities:
         ! lepton A, B transverse momentum
         pt_la=sqrt(p_la(1)**2 + p_la(2)**2)
         pt_lb=sqrt(p_lb(1)**2 + p_lb(2)**2)
         ! rapidity of lepton A, B
         call getrapidity(p_la,y_la)
c         call getrapidity(p_lb,y_lb)
         ! rapidity difference of the leptons
c         y_ll=y_la-y_lb
         ! pseudorapidity of lepton A, B
         call get_pseudorap(p_la,eta_la)
         call get_pseudorap(p_lb,eta_lb)
         ! azimuth of lepton A, B
         call getazimuth(p_la,phi_la)
         call getazimuth(p_lb,phi_lb)
         ! azimuthal difference of the leptons
         phi_ll=phi_lb-phi_la
         if(phi_ll.LT.(-pi)) phi_ll=phi_ll+2d0*pi
         if(phi_ll.GT.pi) phi_ll=phi_ll-2d0*pi
         ! invariant mass of the lepton system
c         do mu=0,3
c            p_ll(mu)=p_lb(mu)+p_la(mu)
c         enddo
c         call getinvmass(p_ll,m_ll)

         ! construct observed missing pt (ignores soft jets)
         ! leptons with p_t > 20 GeV and |eta| < 2.5 considered visible here
         ! jets with p_t > 20 GeV and |eta| < 4.5 considered visible here
         ! assumption: only leptons and jets are observed !
         pmissobs(0) = 0d0 ! ignored
         pmissobs(1) = 0d0
         pmissobs(2) = 0d0
         do mu=1,2
            if( (pt_la.gt.20d0).and.(dabs(eta_la).lt.2.5d0) ) then
               pmissobs(mu) = pmissobs(mu) - p_la(mu)
            endif
            if( (pt_lb.gt.20d0).and.(dabs(eta_lb).lt.2.5d0) ) then
               pmissobs(mu) = pmissobs(mu) - p_lb(mu)
            endif
         enddo
         do ij = 1,mjets
            if ((kt(ij).gt.20d0).and.(dabs(eta(ij)).lt.4.5d0)) then
               do mu=1,2
                  pmissobs(mu) = pmissobs(mu) - pj(mu,ij)
               enddo
            endif
         enddo
         ! construct observed missing Et (magnitude of missing pt)
         Etmissobs=dsqrt(pmissobs(1)**2 + pmissobs(2)**2)

         ! calculate neutralino kinematical quantities:
         ! transverse momentum of the neutralino system
c         pt_nn=sqrt(p_nn(1)**2 + p_nn(2)**2)
         call getMRStar(p_la,p_lb,M_R_Star)

         ! calculate super razor variables from 1310.4827
         call getSuperRazor(p_la,p_lb,kt,eta,pj,mjets,
     &                      p_sla,p_slb,id_sla,
     &                      M_R_Delta_su,s_hat_R_su,
     &                      Delta_phi_beta_R_su,abs_cos_theta_Rp1_su)

      endif

      ! determine if visible objects fulfill separation requirements
      visobsaresep = visibleobjectsseparate(p_la,p_lb,mjets,pj,kt,eta)

      ! determine if cuts are passed

      ! cutsJ
      cutsJpassed=.true.
      if(mjets.lt.1) cutsJpassed=.false.
      if(kt(1).le.20d0) cutsJpassed=.false.
      if(dabs(eta(1)).ge.4.5d0) cutsJpassed=.false.
      ! cutsM
      cutsMpassed=.true.
      if(mjets.lt.1) cutsMpassed=.false.
      if(decayed.eqv..false.) cutsMpassed=.false.
      if(kt(1).le.120d0) cutsMpassed=.false.
      if(dabs(eta(1)).ge.4.5d0) cutsMpassed=.false.
      if(Etmissobs.le.150d0) cutsMpassed=.false.
      ! cutsL
      cutsLpassed=.true.
      if(mjets.lt.1) cutsLpassed=.false.
      if(decayed.eqv..false.) cutsLpassed=.false.
      if(visobsaresep.eqv..false.) cutsLpassed=.false.
      if(kt(1).le.20d0) cutsLpassed=.false.
      if(pt_la.le.20d0) cutsLpassed=.false.
      if(pt_lb.le.20d0) cutsLpassed=.false.
      if(dabs(eta(1)).ge.4.5d0) cutsLpassed=.false.
      if(dabs(eta_la).ge.2.5d0) cutsLpassed=.false.
      if(dabs(eta_lb).ge.2.5d0) cutsLpassed=.false.
      ! cuts4
      cuts4passed=.true.
      if(mjets.lt.2) cuts4passed=.false.
      if(decayed.eqv..false.) cuts4passed=.false.
      if(visobsaresep.eqv..false.) cuts4passed=.false.
      if(kt(1).le.20d0) cuts4passed=.false.
      if(kt(2).le.20d0) cuts4passed=.false.
      if(pt_la.le.20d0) cuts4passed=.false.
      if(pt_lb.le.20d0) cuts4passed=.false.
      if(dabs(eta(1)).ge.4.5d0) cuts4passed=.false.
      if(dabs(eta(2)).ge.4.5d0) cuts4passed=.false.
      if(dabs(eta_la).ge.2.5d0) cuts4passed=.false.
      if(dabs(eta_lb).ge.2.5d0) cuts4passed=.false.

      ! fill histograms if cuts are passed

      ! cutsJ
      if(cutsJpassed) then
         call filld('sigma_total_cutsJ',0d0,dsig)

         call filld('inv_mass_slepton_pair_cutsJ',m_slsl,dsig)
         call filld('pt_sl1_cutsJ',pt_sla,dsig)
         call filld('eta_sl1_cutsJ',eta_sla,dsig)

         call filld('number_of_visible_jets_cutsJ',
     &              dble(num_vis_jets), dsig)
         call filld('pt_hardest_jet_cutsJ',kt(1),dsig)
         call filld('eta_hardest_jet_cutsJ',eta(1),dsig)

         if(mjets.ge.2) then
            call filld('pt_secondhardest_jet_cutsJ',kt(2),dsig)
            call filld('eta_secondhardest_jet_cutsJ',eta(2),dsig)
         endif

         if(decayed) then
            call filld('Et_miss_obs_cutsJ',Etmissobs,dsig)
         endif
      endif

      ! cutsM
      if(cutsMpassed) then
         call filld('sigma_total_cutsM',0d0,dsig)

         call filld('number_of_visible_jets_cutsM',
     &              dble(num_vis_jets), dsig)
         call filld('pt_hardest_jet_cutsM',kt(1),dsig)
         call filld('eta_hardest_jet_cutsM',eta(1),dsig)

         call filld('Et_miss_obs_cutsM',Etmissobs,dsig)
      endif

      ! cutsL
      if(cutsLpassed) then
         call filld('sigma_total_cutsL',0d0,dsig)

         call filld('azimuth_diff_lepton_pair_cutsL',phi_ll,dsig)
         call filld('pt_lepton_A_cutsL',pt_la,dsig)
         call filld('eta_lepton_A_cutsL',eta_la,dsig)

         call filld('M_R_Star_cutsL',M_R_Star,dsig)
         call filld('M_R_Delta_su_cutsL',M_R_Delta_su,dsig)
         call filld('sqrt_s_hat_R_su_cutsL',
     &               dsqrt(s_hat_R_su),dsig)
         call filld('Delta_phi_beta_R_su_cutsL',
     &               Delta_phi_beta_R_su,dsig)
         call filld('abs_cos_theta_Rp1_su_cutsL',
     &               abs_cos_theta_Rp1_su,dsig)
      endif

      ! cuts4
      if(cuts4passed) then
         call filld('sigma_total_cuts4',0d0,dsig)

         call filld('pt_secondhardest_jet_cuts4',kt(2),dsig)
         call filld('eta_secondhardest_jet_cuts4',eta(2),dsig)
      endif

      ini=.false.

      end



c     takes PDG ID
c     returns number of undecayed particles with this ID in n
      subroutine getnumber(PDG_ID,n)
      implicit none
      include 'hepevt.h'
      integer PDG_ID, n, ihep

      n=0
      do ihep=1,nhep
         if(isthep(ihep).eq.1) then
            if(idhep(ihep).eq.PDG_ID) then
               n=n+1
            endif
         endif
      enddo

      end



c     takes ihep number of a particle in the HEPEVT common block
c     puts its 4-momentum into p
      subroutine get4momentum_ihep(ihep,p)
      implicit none
      include 'hepevt.h'
      integer ihep, mu
      real *8 p(0:3)

      do mu=0,3
         p(mu)=0d0
      enddo

      if(ihep.lt.0 .or. ihep.gt.nhep) then
         write(*,*) 'no particle with ihep number', ihep,
     &              'in current event'
         write(*,*) 'could not determine four-momentum'
      else
         p(0)=phep(4,ihep)
         do mu=1,3
            p(mu)=phep(mu,ihep)
         enddo
      endif

      end



c     takes particle data group identity code
c     puts 4-momentum of first particle in HEPEVT common block with this ID into p
      subroutine get4momentum_firstfound(PDG_ID,p)
      implicit none
      include 'hepevt.h'
      integer PDG_ID, ihep, mu
      real *8 p(0:3)
      logical found

      do mu=0,3
         p(mu)=0d0
      enddo
      found=.false.

      do ihep=1,nhep
         if(found .eqv. .false.) then
            if(idhep(ihep).eq.PDG_ID) then
               call get4momentum_ihep(ihep,p)
               found=.true.
            endif
         endif
      enddo

      if(found .eqv. .false.) then
         write(*,*) 'particle with PDG ID', PDG_ID, 'not found'
         write(*,*) 'could not determine four-momentum'
      endif

      end



c     takes PDG ID
c     returns four-momentum of undecayed particle with this ID and largest pt
      subroutine get4momentum_largestpt(PDG_ID,p)
      implicit none
      integer PDG_ID, n, nmax, mu
      parameter (nmax=200)
      integer list(nmax)
      real *8 p(0:3)

      do mu=0,3
         p(mu)=0d0
      enddo

      call getptsortedlist(PDG_ID,n,list)
      if (list(1).ne.0) then  ! only if particle with PDG_ID is found
         ! take four-momentum of first particle in list (largest pt)
         call get4momentum_ihep(list(1),p)
      endif

      end



c     takes PDG ID
c     returns number of undecayed particles with this ID in n
c     returns list with ihep numbers of these particles sorted by pt in list
      subroutine getptsortedlist(PDG_ID,n,list)
      implicit none
      include 'hepevt.h'
      integer PDG_ID, n, nmax, ihep
      parameter (nmax=200)
      integer list(nmax)

      do n=1,nmax
         list(n)=0
      enddo

      ! determine number of undecayed particles with PDG_ID in event
      n=0
      do ihep=1,nhep
         if(isthep(ihep).eq.1) then
            if(idhep(ihep).eq.PDG_ID) then
               n=n+1
            endif
         endif
      enddo
      ! check that maximal number of allowed particles is not exceeded
      if(n.gt.nmax) then
         write(*,*) 'more than', nmax, 'particles with ID', PDG_ID
         write(*,*) 'could not fill pt sorted list'
      else
         ! fill list with found particles
         n=0
         do ihep=1,nhep
            if(isthep(ihep).eq.1) then
               if(idhep(ihep).eq.PDG_ID) then
                  n=n+1
                  list(n)=ihep
               endif
            endif
         enddo
         ! sort by pt
         call sortbypt(n,list)
      endif

      end



c     takes particle data group identity code
c     puts sum of all undecayed particles with this ID
c     within the HEPEVT common block into p
      subroutine getsum4momenta(PDG_ID,p)
      implicit none
      include 'hepevt.h'
      integer PDG_ID, ihep, mu
      real *8 p(0:3)
      logical found

      do mu=0,3
         p(mu)=0d0
      enddo
      found=.false.

      do ihep=1,nhep
         if(isthep(ihep).eq.1) then
            if(idhep(ihep).eq.PDG_ID) then
               p(0)=p(0)+phep(4,ihep)
               do mu=1,3
                  p(mu)=p(mu)+phep(mu,ihep)
               enddo
               found=.true.
            endif
         endif
      enddo

      if(found .eqv. .false.) then
         write(*,*) 'no undecayed particle with PDG ID', PDG_ID
         write(*,*) 'sum of four-momenta 0'
      endif

      end



c     takes particle data group identity code
c     puts mass of first particle in HEPEVT common block with this ID into m
      subroutine getmass(PDG_ID,m)
      implicit none
      include 'hepevt.h'
      integer PDG_ID, ihep
      real *8 m
      logical found

      m=0d0
      found=.false.

      do ihep=1,nhep
         if(found .eqv. .false.) then
            if(idhep(ihep).eq.PDG_ID) then
               m=phep(5,ihep)
               found=.true.
            endif
         endif
      enddo

      if(found .eqv. .false.) then
         write(*,*) 'particle with PDG ID', PDG_ID, 'not found'
         write(*,*) 'could not determine mass'
      endif

      end



c     checks spectrum to ensure that the only possible decay for sleptons is
c     slepton -> lepton + lightest neutralino
c     assumes MADGRAPH parameters to be filled already
c     electron and muon masses neglected, tau mass explicitly set here
      logical function isvaliddecayspectrum(id_sl)
      implicit none
      include 'coupl.inc'
      ! IDs
      integer id_sl, invalid
      ! masses
      real *8 m_sl, m_n_light, m_n_next, m_charg, m_l
      ! mixing matrix row (dummy, not used)
      complex *16 Uxl, Uxr

      isvaliddecayspectrum = .true.
      ! invalid default values
      invalid = -999
      m_sl = invalid
      m_n_light = invalid
      m_n_next = invalid
      m_charg = invalid

      ! extract masses from slhadata
      ! extract slepton mass
      call set_slepton_params(id_sl,m_sl,Uxl,Uxr)
      ! extract mass of lightest neutralino
      m_n_light = mn1
      ! extract minimum of other neutralino masses
      m_n_next = min(mn2,mn3,mn4)
      ! extract minimum of chargino masses
      m_charg = min(mx1,mx2)

      ! check that masses are set correctly
      if ((m_sl.eq.invalid).or.
     &    (m_n_light.eq.invalid).or.
     &    (m_n_next.eq.invalid).or.
     &    (m_charg.eq.invalid)) then
         write(*,*) 'mass parameters for decay are not set'
         isvaliddecayspectrum = .false.
      endif

      ! set charged lepton mass
      select case(abs(id_sl))
      case (1000011) ! selectron left
        m_l = 0d0        ! electron mass neglected
      case (1000013) ! smuon left
        m_l = 0d0        ! muon mass neglected
      case (1000015) ! stau 1
        m_l = 1.77682d0  ! tau mass (PDG 2012)
      case (2000011) ! selectron right
        m_l = 0d0        ! electron mass neglected
      case (2000013) ! smuon right
        m_l = 0d0        ! muon mass neglected
      case (2000015) ! stau 2
        m_l = 1.77682d0  ! tau mass (PDG 2012)
      case default
        write(*,*) 'encountered unknown slepton ID ', id_sl
        stop
      end select

      ! check that decay involving lightest neutralino is possible
      if (m_n_light.gt.(m_sl-m_l)) then
         write(*,*) 'lightest neutralino too heavy for slepton decay'
         isvaliddecayspectrum = .false.
      endif
      ! check that decay involving other neutralinos is not possible
      if (m_n_next.lt.(m_sl-m_l)) then
         write(*,*) 'slepton decay to other neutralinos possible'
         write(*,*) 'unsupported decay channel'
         isvaliddecayspectrum = .false.
      endif
      ! check that decay involving charginos is not possible
      if (m_charg.lt.m_sl) then
         write(*,*) 'slepton decay to charginos possible'
         write(*,*) 'unsupported decay channel'
         isvaliddecayspectrum = .false.
      endif

      ! if spectrum failed check write message
      if (isvaliddecayspectrum .eqv. .false.) then
         write(*,*) 'spectrum not suitable for allowed decay'
         write(*,*) 'actual decays in events generated by PYTHIA'
      endif

      end



c     calculates the separation between p1 and p2
      real *8 function rsep(p1,p2)
      implicit none
      real *8 p1(4),p2(4),r2,dely,delphi,e1,e2

      e1=dsqrt(p1(1)**2+p1(2)**2+p1(3)**2)
      e2=dsqrt(p2(1)**2+p2(2)**2+p2(3)**2)

      dely = (e1+p1(3))*(e2-p2(3))/
     &      ((e2+p2(3))*(e1-p1(3)))
      dely = 0.5d0*dlog(dely)

      r2= (p1(1)*p2(1)+p1(2)*p2(2))
     &     /dsqrt((p1(1)**2+p1(2)**2)*(p2(1)**2+p2(2)**2))
      if (r2 .gt. +0.9999999D0) r2=+1d0
      if (r2 .lt. -0.9999999D0) r2=-1d0
      delphi=dacos(r2)

      rsep=dsqrt(dely**2+delphi**2)

      end



c     calculates azimuth phi in [0,2pi] from x-axis
      subroutine getazimuth(p,phi)
      implicit none
      include 'pwhg_math.h'
      real *8 p(0:3),phi

      phi=0d0
      if(p(1).GT.0d0) then
         if(p(2).GE.0d0) phi=atan(p(2)/p(1))
         if(p(2).LT.0d0) phi=atan(p(2)/p(1))+2d0*pi
      elseif(p(1).LT.0d0) then
         phi=atan(p(2)/p(1))+pi
      elseif(p(1).EQ.0d0) then
         if(p(2).GT.0d0) phi=pi/2d0
         if(p(2).LT.0d0) phi=-pi/2d0
      endif

      end



      subroutine getrapidity(p,y)
      implicit none
      real *8 p(0:3),y
      y=0.5d0*log((p(0)+p(3))/(p(0)-p(3)))
      end



      subroutine getinvmass(p,m)
      implicit none
      real *8 p(0:3),m
      m=sqrt(abs((p(0)**2-p(3)**2)-p(1)**2-p(2)**2))
      end



      subroutine get_pseudorap(p,eta)
      implicit none
      real *8 p(0:3),eta,pt,th
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



c     calculates Delta R = sqrt( (Delta eta)^2 + (Delta phi)^2 )
      subroutine get_DeltaR(p1,p2,DeltaR)
      implicit none
      include 'pwhg_math.h'
      real *8 p1(0:3),p2(0:3)
      real *8 DeltaR,eta1,eta2,Delta_eta,phi1,phi2,Delta_phi

      ! check that components of four-momentum are in right place
      if((p1(0)**2-p1(1)**2-p1(2)**2-p1(3)**2).lt.-1d0) then
         write(*,*) 'wrong order of p1 components in get_DeltaR'
         !stop
      endif
      if((p2(0)**2-p2(1)**2-p2(2)**2-p2(3)**2).lt.-1d0) then
         write(*,*) 'wrong order of p2 components in get_DeltaR'
         !stop
      endif

      ! calculate pseudorapidities
      call get_pseudorap(p1,eta1)
      call get_pseudorap(p2,eta2)

      ! calculate azimuthal angles
      call getazimuth(p1,phi1)
      call getazimuth(p2,phi2)

      ! calculate separation
      Delta_eta=dabs(eta1-eta2)
      Delta_phi=dabs(phi1-phi2)
      Delta_phi=min(Delta_phi,2d0*pi-Delta_phi)
      DeltaR=dsqrt(Delta_eta**2+Delta_phi**2)

      end



c     checks if all visible objects are separate from each other
c     leptons with p_t > 20 GeV and |eta| < 2.5 considered visible here
c     jets with p_t > 20 GeV and |eta| < 4.5 considered visible here
c     mind different order of four-momenta components for jets
      logical function visibleobjectsseparate(p_la,p_lb,mjets,pj,kt,eta)
      implicit none
      ! lepton four-momenta
      real *8 p_la(0:3), p_lb(0:3)
      ! jet parameters
      integer mjets,maxjet
      parameter (maxjet=2048)
      real *8 pj(4,maxjet),kt(maxjet),eta(maxjet)
      ! four-momentum of jet with different order of components
      real *8 p_jetn(0:3)
      ! criteria and variables for visibility
      real *8 vispt,visetal,visetaj,pt_la,pt_lb,eta_la,eta_lb
      ! separation cut
      real *8 cutDeltaR
      ! actual separtion
      real *8 DeltaRll,DeltaRlj,tempDeltaRlj
      ! loop index
      integer ij

      ! set minimal p_t and maximal eta value for visible objects
      vispt=20d0
      visetal=2.5d0
      visetaj=4.5d0
      ! set minimal value of separation variable Delta R
      cutDeltaR=0.4d0
      ! initialize separtions
      DeltaRll=9d99
      DeltaRlj=9d99

      visibleobjectsseparate = .true.

      ! calculate lepton p_t and eta
      pt_la=dsqrt(p_la(1)**2 + p_la(2)**2)
      pt_lb=dsqrt(p_lb(1)**2 + p_lb(2)**2)
      call get_pseudorap(p_la,eta_la)
      call get_pseudorap(p_lb,eta_lb)
      ! check leptons if they are visible
      if( (pt_la.gt.vispt).and.(dabs(eta_la).lt.visetal).and.
     &    (pt_lb.gt.vispt).and.(dabs(eta_lb).lt.visetal) ) then
         ! determine separation between leptons
         call get_DeltaR(p_la,p_lb,DeltaRll)
      endif
      if (DeltaRll.lt.cutDeltaR) visibleobjectsseparate = .false.

      ! check lepton A relative to jets if they are visible
      if( (pt_la.gt.vispt).and.(dabs(eta_la).lt.visetal) ) then
         do ij = 1,mjets
            if ((kt(ij).gt.vispt).and.(dabs(eta(ij)).lt.visetaj)) then
               p_jetn(0)=pj(4,ij)
               p_jetn(1:3)=pj(1:3,ij)
               ! determine separation of lepton A from jets
               call get_DeltaR(p_la,p_jetn,tempDeltaRlj)
               DeltaRlj=min(DeltaRlj,tempDeltaRlj)
            endif
         enddo
      endif
      ! check lepton B relative to jets if they are visible
      if( (pt_lb.gt.vispt).and.(dabs(eta_lb).lt.visetal) ) then
         do ij = 1,mjets
            if ((kt(ij).gt.vispt).and.(dabs(eta(ij)).lt.visetaj)) then
               p_jetn(0)=pj(4,ij)
               p_jetn(1:3)=pj(1:3,ij)
               ! determine separation of lepton B from jets
               call get_DeltaR(p_lb,p_jetn,tempDeltaRlj)
               DeltaRlj=min(DeltaRlj,tempDeltaRlj)
            endif
         enddo
      endif
      if (DeltaRlj.lt.cutDeltaR) visibleobjectsseparate = .false.

      end



c     calculates M_R_Star according to (23) in 1006.2727
      subroutine getMRStar(p1,p2,M_R_Star)
      implicit none
      real *8 p1(0:3),p2(0:3),M_R_Star
      M_R_Star=sqrt( (p1(0)+p2(0))**2
     &              -(p1(3)+p2(3))**2
     &              -((p1(1))**2+(p1(2))**2-(p2(1))**2-(p2(2))**2)**2
     &               /((p1(1)+p2(1))**2+(p1(2)+p2(2))**2) )
      end



c     sorts array iarr of ihep numbers by pt (decreasing)
      subroutine sortbypt(n,iarr)
      implicit none
      integer n,iarr(n)
      include '../include/hepevt.h'
      integer j,k
      real *8 tmp,pt(nmxhep)
      logical touched
      do j=1,n
         pt(j)=sqrt(phep(1,iarr(j))**2+phep(2,iarr(j))**2)
      enddo
      ! bubble sort
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



c     jets are orderd by decreasing pt
      subroutine buildjets(mjets,kt,eta,rap,phi,pjet,ptrel)
      implicit none
      integer mjets
      real *8  kt(mjets),eta(mjets),rap(mjets),phi(mjets),
     &          pjet(4,mjets),ptrel(mjets)
      include   '../include/hepevt.h'
      integer   maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      real *8  ptrack(4,maxtrack),pj(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu
      real *8 palg,pp,tmp
      real *8 ptmin,yjmax,R
      common /jetcuts/ptmin,yjmax,R
      logical isjetparticle

      ! Initialize arrays and counters for output jets
      do j=1,maxtrack
         do mu=1,4
            ptrack(mu,j)=0d0
         enddo
         jetvec(j)=0
      enddo
      ntracks=0
      do j=1,mjets
         do mu=1,4
            pjet(mu,j)=0d0
            pj(mu,j)=0d0
         enddo
      enddo
      ! Extract final state particles to feed to jet finder
      do j=1,nhep
         if (isthep(j).eq.1 .and. isjetparticle(idhep(j))) then
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
      if (ntracks.eq.0) then
         mjets=0
         return
      endif
      ! --------------------------------------------------------------------
      ! -  Inclusive jet pT and Y spectra are to be compared to CDF data:  -
      ! --------------------------------------------------------------------

      ! note: ptmin and R are in common block "jetcuts"

      ! this is for kt-algorithm:
c      call fastjetktwhich(ptrack,ntracks,ptmin,R,
c     &     pjet,njets,jetvec)

      ! anti-kT (c.f. ZZ code):
      palg=-1
c      r=rr
c      ptmin=1d0
      ! jets ordered by decreasing pt (wrapper calls FJ's sorted_by_pt())
      call fastjetppgenkt(ptrack,ntracks,r,palg,ptmin,pjet,njets,
     &                        jetvec)

      mjets=min(mjets,njets)
      if(njets.eq.0) return
      ! check consistency
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
      ! end check consistency

      ! ---------------------------------------------------------------------
      ! - Computing arrays of useful kinematics quantities for hardest jets -
      ! ---------------------------------------------------------------------
      do j=1,mjets
         kt(j)=sqrt(pjet(1,j)**2+pjet(2,j)**2)
         pp = sqrt(kt(j)**2+pjet(3,j)**2)
         eta(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         rap(j)=0.5d0*log((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         phi(j)=atan2(pjet(2,j),pjet(1,j))
      enddo

      call computeptrel(ptrack,ntracks,rap,kt,phi,mjets,jetvec,ptrel)

      end



c     determines if particle contributes to a jet
      logical function isjetparticle(PDG_ID)
      implicit none
      integer PDG_ID
      logical injetwhitelist, injetblacklist

      isjetparticle=.false.

      ! find out if particle is in
      ! jetwhitelist: particles that contribute to a jet
      ! jetblacklist: particles that do not contribute to a jet
      if (injetwhitelist(PDG_ID)) then
         isjetparticle=.true.
      else if (injetblacklist(PDG_ID)) then
         isjetparticle=.false.
      else
         write(*,*) 'could not determine if particle with ID', PDG_ID
         write(*,*) 'contributes to a jet'
         stop
      endif

      end



c     determines if particle is in whitelist
c     of particles that contribute to a jet
      logical function injetwhitelist(PDG_ID)
      implicit none
      integer PDG_ID, id

      injetwhitelist=.false.

      id=iabs(PDG_ID)

      ! the following particles contribute to a jet
      ! quarks
      if (1.le.id .and. id.le.6) injetwhitelist=.true.
      ! gluon
      if (id.eq.21) injetwhitelist=.true.
      if (id.eq.0) injetwhitelist=.true.  ! POWHEG numbering
      ! diquarks
      if ((1000.le.id .and. id.le.6000)
     &    .and. (mod(id,100).eq.1 .or. mod(id,100).eq.3)) then
         injetwhitelist=.true.
      endif
      ! mesons
      if ((111.le.id .and. id.le.600)
     &    .or. (10000.le.id .and. id.le.999999)
     &    .or. (9000000.le.id .and. id.le.9100000)) then
         injetwhitelist=.true.
      endif
      ! baryons
      if ((1000.le.id .and. id.le.6000)
     &    .and. (mod(id,10).eq.2 .or. mod(id,10).eq.4)) then
         injetwhitelist=.true.
      endif

      end



c     determines if particle is in blacklist
c     of particles that do not contribute to a jet
      logical function injetblacklist(PDG_ID)
      implicit none
      integer PDG_ID, id

      injetblacklist=.false.

      id=iabs(PDG_ID)

      ! the following particles may occur
      ! but do not contribute to a jet
      ! leptons
      if (id.eq.11) injetblacklist=.true.  ! e
      if (id.eq.12) injetblacklist=.true.  ! nue
      if (id.eq.13) injetblacklist=.true.  ! mu
      if (id.eq.14) injetblacklist=.true.  ! numu
      if (id.eq.15) injetblacklist=.true.  ! tau
      if (id.eq.16) injetblacklist=.true.  ! nu_tau
      ! sleptons
      if (id.eq.1000011) injetblacklist=.true.  ! ~e_L
      if (id.eq.1000012) injetblacklist=.true.  ! ~snue_L
      if (id.eq.1000013) injetblacklist=.true.  ! ~mu_L
      if (id.eq.1000014) injetblacklist=.true.  ! ~snumu_L
      if (id.eq.1000015) injetblacklist=.true.  ! ~stau_1
      if (id.eq.1000016) injetblacklist=.true.  ! ~snu_tau_L
      if (id.eq.2000011) injetblacklist=.true.  ! ~e_R
      if (id.eq.2000013) injetblacklist=.true.  ! ~mu_R
      if (id.eq.2000015) injetblacklist=.true.  ! ~stau_2
      ! lightest neutralino
      if (id.eq.1000022) injetblacklist=.true.  ! ~neutralino(1)

      end



c     pt rel is sum of the ptrack momentum projection ortogonal to the jet
c     momentum in the frame where the jet has zero rapidity
      subroutine computeptrel(ptracks,ntracks,rapjets,ktjets,phijets,
     &     njets,jetvec,ptrel)
      implicit none
      integer ntracks,njets,jetvec(ntracks)
      real *8 ptracks(4,ntracks),rapjets(njets),
     &     ktjets(njets),phijets(njets),ptrel(njets)
      integer j,i
      real *8 yj,kj1,kj2,y,pt(3)

      do j=1,njets
         ptrel(j)=0
      enddo
      do i=1,ntracks
         j=jetvec(i)
         if(j.gt.0.and.j.le.njets) then
            ! Track i belongs to jet j
            yj=rapjets(j)
            kj1=ktjets(j)*cos(phijets(j))
            kj2=ktjets(j)*sin(phijets(j))
            ! rapidity of track i
            y=0.5d0*log((ptracks(4,i)+ptracks(3,i))
     &                 /(ptracks(4,i)-ptracks(3,i)))
            ! rapidity of track i in frame where the jet has zero rapidity
            y=y-yj
            ! find momentum of track i in frame where the jet has zero rapidity
            pt(1)=ptracks(1,i)
            pt(2)=ptracks(2,i)
            pt(3)=sqrt(pt(1)**2+pt(2)**2)*sinh(y)
            ! pt rel is sum of the ptrack momentum projection ortogonal to the jet
            ! momentum in the frame where the jet has zero rapidity
            ptrel(j)=sqrt(((pt(1)*kj2-pt(2)*kj1)**2+
     &                     (         -pt(3)*kj2)**2+
     &                     (pt(3)*kj1          )**2)/
     &                     (kj1**2+kj2**2)) + ptrel(j)
         endif
      enddo

      end



c     start code for super razor variables from 1310.4827

c     calculates beta_L_su according to (4) in 1310.4827
c     and normalized 3-vector (direction of the boost)
      subroutine getbetaLsu(q1,q2,beta_L_su,nvec_beta_L_su)
      implicit none
      real *8 q1(0:3),q2(0:3),beta_L_su,nvec_beta_L_su(3)
      beta_L_su=(q1(3)+q2(3))/(q1(0)+q2(0))
      ! boost along z-axis
      nvec_beta_L_su(1)=0d0
      nvec_beta_L_su(2)=0d0
      nvec_beta_L_su(3)=1d0
      end

c     calculates M_R_su according to (5) in 1310.4827
      subroutine getMRsu(q1,q2,M_R_su)
      implicit none
      real *8 q1(0:3),q2(0:3),M_R_su
      M_R_su=dsqrt( (q1(0)+q2(0))**2 -(q1(3)+q2(3))**2 )
      end

c     boosts lepton four-momenta according to beta_L
c     first step to super razor frame R
      subroutine applyBoostBetaLsu(q1,q2,beta_L_su,nvec_beta_L_su,
     &                           q1_L_su,q2_L_su)
      implicit none
      real *8 q1(0:3),q2(0:3),q1_L_su(0:3),q2_L_su(0:3)
      real *8 beta_L_su,nvec_beta_L_su(3)
      ! mind sign of of terms in trsf matrix
      ! proportional to beta in boostrot.f
      call mboost(1,-nvec_beta_L_su,beta_L_su,q1,q1_L_su)
      call mboost(1,-nvec_beta_L_su,beta_L_su,q2,q2_L_su)
      end

c     calculates sum of jet four-momenta
c     within the same cuts as for MT2
      subroutine getJTsu(kt,eta,pj,J_T_su,mjets)
      implicit none
      real *8 J_T_su(1:2)
      integer ij,mu,mjets,maxjet
      parameter (maxjet=2048)
      real *8 kt(maxjet),eta(maxjet),pj(4,maxjet)
      J_T_su = 0d0
      do ij = 1,mjets
         if ((kt(ij).gt.10d0).and.(abs(eta(ij)).lt.3)) then
            do mu=1,2
               J_T_su(mu) = J_T_su(mu) + pj(mu,ij)
            enddo
         endif
      enddo
      end

c     calculates missing four-momentum
      subroutine getETmisssu(q1,q2,J_T_su,E_T_miss_su)
      implicit none
      real *8 q1(0:3),q2(0:3),J_T_su(1:2),E_T_miss_su(1:2)
      integer mu
      E_T_miss_su = 0d0
      do mu=1,2
         E_T_miss_su(mu) = -q1(mu) -q2(mu) -J_T_su(mu)
      enddo
      end

c     calculates s_hat_R_su according to (11) in 1310.4827
      subroutine getshatRsu(J_T_su,q1,q2,M_R_su,s_hat_R_su)
      implicit none
      real *8 q1(0:3),q2(0:3)
      real *8 J_T_su(1:2),M_R_su,s_hat_R_su

      s_hat_R_su =
     & 2d0*(M_R_su**2 
     &      +J_T_su(1)*(q1(1)+q2(1))
     &      +J_T_su(2)*(q1(2)+q2(2))
     &      +M_R_su*dsqrt(M_R_su**2
     &                    +J_T_su(1)**2+J_T_su(2)**2
     &                    +2*J_T_su(1)*(q1(1)+q2(1))
     &                    +2*J_T_su(2)*(q1(2)+q2(2))
     &                    )
     &     )

      end

c     calculates beta_R_su according to (10) in 1310.4827
c     and normalized 3-vector (direction of the boost)
c     unknown p_z^R set to zero
      subroutine getbetaRsu(J_T_su,s_hat_R_su,beta_R_su,nvec_beta_R_su)
      implicit none

      real *8 J_T_su(1:2),s_hat_R_su
      real *8 beta_R_su,nvec_beta_R_su(3)
      real *8 vec_beta_R_su(3),den,p_z_R
      ! set unknown p_z^R to zero
      p_z_R = 0d0
      ! denominator of vector according to (10)
      den=dsqrt(J_T_su(1)**2+J_T_su(2)**2
     &          +p_z_R**2
     &          +s_hat_R_su
     &          )
      ! vector according to (10)
      vec_beta_R_su(1)=-J_T_su(1)/den
      vec_beta_R_su(2)=-J_T_su(2)/den
      vec_beta_R_su(3)=p_z_R/den
      ! norm of vector beta_R
       beta_R_su=dsqrt( vec_beta_R_su(1)**2
     &                 +vec_beta_R_su(2)**2
     &                 +vec_beta_R_su(3)**2
     &                )
      ! normalized vector in direction of vector beta_R
      ! set to (1,0,0) for vanishing boost
      nvec_beta_R_su(1)=1d0
      nvec_beta_R_su(2)=0d0
      nvec_beta_R_su(3)=0d0
      if (dabs(beta_R_su).GT.1d-10) then
         nvec_beta_R_su=vec_beta_R_su/beta_R_su
      endif

      end

c     boosts lepton four-momenta according to beta_R
c     second step to super razor frame R
      subroutine applyBoostBetaRsu(q1_L_su,q2_L_su,
     &    beta_R_su,nvec_beta_R_su,q1_R_su,q2_R_su)
      implicit none
      real *8 q1_L_su(0:3),q2_L_su(0:3),q1_R_su(0:3),q2_R_su(0:3)
      real *8 beta_R_su,nvec_beta_R_su(3)
      ! mind sign of of terms in trsf matrix
      ! proportional to beta in boostrot.f
      call mboost(1,-nvec_beta_R_su,beta_R_su,q1_L_su,q1_R_su)
      call mboost(1,-nvec_beta_R_su,beta_R_su,q2_L_su,q2_R_su)
      end

c     calculates beta_Rp1_su according to (12) in 1310.4827
c     and normalized 3-vector (direction of the boost)
      subroutine getbetaRp1su(q1_R_su,q2_R_su,
     &                        beta_Rp1_su,nvec_beta_Rp1_su)
      implicit none

      real *8 q1_R_su(0:3),q2_R_su(0:3)
      real *8 beta_Rp1_su,nvec_beta_Rp1_su(3)
      real *8 vec_beta_Rp1_su(3),den

      ! denominator of vector according to (12)
      den=q1_R_su(0)+q2_R_su(0)
      ! vector according to (12)
      vec_beta_Rp1_su(1)=(q1_R_su(1)-q2_R_su(1))/den
      vec_beta_Rp1_su(2)=(q1_R_su(2)-q2_R_su(2))/den
      vec_beta_Rp1_su(3)=(q1_R_su(3)-q2_R_su(3))/den
      ! norm of vector beta_R
       beta_Rp1_su=dsqrt( vec_beta_Rp1_su(1)**2
     &                   +vec_beta_Rp1_su(2)**2
     &                   +vec_beta_Rp1_su(3)**2
     &                  )
      ! normalized vector in direction of vector beta_R
      ! set to (1,0,0) for vanishing boost
      nvec_beta_Rp1_su(1)=1d0
      nvec_beta_Rp1_su(2)=0d0
      nvec_beta_Rp1_su(3)=0d0
      if (dabs(beta_Rp1_su).GT.1d-10) then
         nvec_beta_Rp1_su=vec_beta_Rp1_su/beta_Rp1_su
      endif

      end

c     boosts lepton four-momentum according to
c     +beta_Rp1 for lepton 1
c     -beta_Rp1 for lepton 2
c     to corresponding super razor frames R+1
      subroutine applyBoostBetaRp1su(q1_R_su,q2_R_su,
     &    beta_Rp1_su,nvec_beta_Rp1_su,q1_Rp1_su,q2_Rp1_su)
      implicit none
      real *8 q1_R_su(0:3),q2_R_su(0:3),q1_Rp1_su(0:3),q2_Rp1_su(0:3)
      real *8 beta_Rp1_su,nvec_beta_Rp1_su(3)
      ! mind sign of of terms in trsf matrix
      ! proportional to beta in boostrot.f
      call mboost(1,-nvec_beta_Rp1_su,beta_Rp1_su,q1_R_su,q1_Rp1_su)
      call mboost(1,-nvec_beta_Rp1_su,-beta_Rp1_su,q2_R_su,q2_Rp1_su)
      end

c     boosts lepton four-momentum to exact slepton decay frames (check)
c     using corresponding slepton four-momenta
      subroutine applyBoostToDecFr(q1,q2,p_sl1,p_sl2,id_sl1,
     &                             q1_DecFr,q2_DecFr)
      implicit none
      real *8 q1(0:3),q2(0:3),q1_DecFr(0:3),q2_DecFr(0:3)
      real *8 p_sl1(0:3),p_sl2(0:3)
      real *8 beta_1_DecFr,nvec_beta_1_DecFr(3),gamma1
      real *8 beta_2_DecFr,nvec_beta_2_DecFr(3),gamma2
      integer id_sl1
      real *8 m_sl
      ! mixing matrix row (dummy, not used)
      complex *16 Uxl, Uxr

      ! set slepton mass
      call set_slepton_params(id_sl1,m_sl,Uxl,Uxr)
      write(*,*) 'm_sl = ', m_sl

      ! gamma factor 1
      gamma1=p_sl1(0)/m_sl
      ! norm of boost vector 1
      beta_1_DecFr=dsqrt(p_sl1(1)**2 + p_sl1(2)**2 + p_sl1(3)**2)
     &             /(m_sl*gamma1)
      ! normalized vector in direction of vector beta_R
      ! set to (1,0,0) for vanishing boost
      nvec_beta_1_DecFr(1)=1d0
      nvec_beta_1_DecFr(2)=0d0
      nvec_beta_1_DecFr(3)=0d0
      if (dabs(beta_1_DecFr).GT.1d-10) then
         nvec_beta_1_DecFr(1)=-p_sl1(1)/(m_sl*gamma1*beta_1_DecFr)
         nvec_beta_1_DecFr(2)=-p_sl1(2)/(m_sl*gamma1*beta_1_DecFr)
         nvec_beta_1_DecFr(3)=-p_sl1(3)/(m_sl*gamma1*beta_1_DecFr)
      endif
      call mboost(1,nvec_beta_1_DecFr,beta_1_DecFr,q1,q1_DecFr)

      ! gamma factor 2
      gamma2=p_sl2(0)/m_sl
      ! norm of boost vector 2
      beta_2_DecFr=dsqrt(p_sl2(1)**2 + p_sl2(2)**2 + p_sl2(3)**2)
     &             /(m_sl*gamma2)
      ! normalized vector in direction of vector beta_R
      ! set to (1,0,0) for vanishing boost
      nvec_beta_2_DecFr(1)=1d0
      nvec_beta_2_DecFr(2)=0d0
      nvec_beta_2_DecFr(3)=0d0
      if (dabs(beta_2_DecFr).GT.1d-10) then
         nvec_beta_2_DecFr(1)=-p_sl2(1)/(m_sl*gamma2*beta_2_DecFr)
         nvec_beta_2_DecFr(2)=-p_sl2(2)/(m_sl*gamma2*beta_2_DecFr)
         nvec_beta_2_DecFr(3)=-p_sl2(3)/(m_sl*gamma2*beta_2_DecFr)
      endif
      call mboost(1,nvec_beta_2_DecFr,beta_2_DecFr,q2,q2_DecFr)

      end

c     calculates M_R_Delta_su according to (14) in 1310.4827
      subroutine getMRDeltasu(s_hat_R_su,beta_Rp1_su,M_R_Delta_su)
      implicit none
      real *8 s_hat_R_su,beta_Rp1_su,M_R_Delta_su

      M_R_Delta_su =
     & dsqrt(s_hat_R_su)/2d0/
     & (1d0/dsqrt(1d0-beta_Rp1_su**2))

      end

c     calculates abs_cos_theta_Rp1_su according to (16) in 1310.4827
      subroutine getAbsCosThetaRp1su(q1_R_su,q2_R_su,s_hat_R_su,
     &                               M_R_Delta_su,abs_cos_theta_Rp1_su)
      implicit none
      real *8 q1_R_su(0:3),q2_R_su(0:3)
      real *8 s_hat_R_su,M_R_Delta_su,abs_cos_theta_Rp1_su

      abs_cos_theta_Rp1_su =
     & dsqrt( (q1_R_su(0)-q2_R_su(0))**2
     &        /( s_hat_R_su/4d0 - M_R_Delta_su**2 )
     &      )

      end

c     calculates azimuth phi of 3-vector in [0,2pi] from x-axis
      subroutine getazimuth3vector(p,phi)
      implicit none
      include 'pwhg_math.h'
      real *8 p(1:3),phi

      phi=0d0
      if(p(1).GT.0d0) then
         if(p(2).GE.0d0) phi=atan(p(2)/p(1))
         if(p(2).LT.0d0) phi=atan(p(2)/p(1))+2d0*pi
      elseif(p(1).LT.0d0) then
         phi=atan(p(2)/p(1))+pi
      elseif(p(1).EQ.0d0) then
         if(p(2).GT.0d0) phi=pi/2d0
         if(p(2).LT.0d0) phi=-pi/2d0
      endif

      end

c     calculates Delta_phi_beta_R_su according to caption of Fig. 8 in 1310.4827
      subroutine getDeltaPhiBetaRsu(q1_R_su,q2_R_su,nvec_beta_R_su,
     &                              Delta_phi_beta_R_su)
      implicit none
      include 'pwhg_math.h'
      real *8 q1_R_su(0:3),q2_R_su(0:3)
      real *8 nvec_beta_R_su(3)
      real *8 Delta_phi_beta_R_su
      real *8 phi_leptons,phi_beta_R,phi_diff

      call getazimuth(q1_R_su+q2_R_su,phi_leptons)
      call getazimuth3vector(nvec_beta_R_su,phi_beta_R)

      phi_diff=dabs(phi_leptons-phi_beta_R)
      Delta_phi_beta_R_su=min(phi_diff,2d0*pi-phi_diff)

      end

c     calculates all super razor variables according to 1310.4827
      subroutine getSuperRazor(q1,q2,kt,eta,pj,mjets,
     & p_sl1,p_sl2,id_sl1,
     & M_R_Delta_su,s_hat_R_su,
     & Delta_phi_beta_R_su,abs_cos_theta_Rp1_su)

      implicit none
      real *8 q1(0:3),q2(0:3),q1_L_su(0:3),q2_L_su(0:3)
      real *8 q1_R_su(0:3),q2_R_su(0:3),q1_Rp1_su(0:3),q2_Rp1_su(0:3)
      real *8 J_T_su(1:2),E_T_miss_su(1:2)
      real *8 M_R_su,s_hat_R_su,M_R_Delta_su
      real *8 abs_cos_theta_Rp1_su,Delta_phi_beta_R_su
      real *8 beta_L_su,nvec_beta_L_su(3)
      real *8 beta_R_su,nvec_beta_R_su(3)
      real *8 beta_Rp1_su,nvec_beta_Rp1_su(3)
      integer mjets,maxjet
      parameter (maxjet=2048)
      real *8 kt(maxjet),eta(maxjet),pj(4,maxjet)
      ! for checks
      real *8 p_nn(0:3)
      real *8 q1_DecFr(0:3),q2_DecFr(0:3)
      real *8 p_sl1(0:3),p_sl2(0:3)
      integer id_sl1
      real *8 M_R_Star

      call getbetaLsu(q1,q2,beta_L_su,nvec_beta_L_su)
      call getMRsu(q1,q2,M_R_su)
      call applyBoostBetaLsu(q1,q2,beta_L_su,nvec_beta_L_su,
     &                     q1_L_su,q2_L_su)
      call getJTsu(kt,eta,pj,J_T_su,mjets)
      call getETmisssu(q1,q2,J_T_su,E_T_miss_su)
      call getshatRsu(J_T_su,q1,q2,M_R_su,s_hat_R_su)
      call getbetaRsu(J_T_su,s_hat_R_su,beta_R_su,nvec_beta_R_su)
      call applyBoostBetaRsu(q1_L_su,q2_L_su,
     &                       beta_R_su,nvec_beta_R_su,q1_R_su,q2_R_su)
      call getbetaRp1su(q1_R_su,q2_R_su,beta_Rp1_su,nvec_beta_Rp1_su)
      call applyBoostBetaRp1su(q1_R_su,q2_R_su,
     &              beta_Rp1_su,nvec_beta_Rp1_su,q1_Rp1_su,q2_Rp1_su)
      call getMRDeltasu(s_hat_R_su,beta_Rp1_su,M_R_Delta_su)
      call getAbsCosThetaRp1su(q1_R_su,q2_R_su,s_hat_R_su,
     &                         M_R_Delta_su,abs_cos_theta_Rp1_su)
      call getDeltaPhiBetaRsu(q1_R_su,q2_R_su,nvec_beta_R_su,
     &                        Delta_phi_beta_R_su)

      end

c     end code for super razor variables from 1310.4827
