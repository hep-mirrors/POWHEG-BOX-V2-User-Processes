c############### subroutine init_hist ##################################
c     open all desired histograms and prepare them to receive data
c     will be filled later
      
      subroutine init_hist
      implicit none
#include "LesHouches.h"
#include "pwhg_math.h"
      character * 6 pr
      common/pwhgprocess/pr
!     tell this analysis file which program is running it
      character * 6 whcprg
      common/cwhcprg/whcprg
      real * 8 dy,dphi,dpt,dr,dptzoom,dM,dmm,dpt3
      real*8 ptmin,ptmax,mmin,mmax
      real*8 ymin,ymax,phimin,phimax,rmin,rmax
      integer j,i
      
      call inihists
         
      pr='ppHWW_'

      dy=0.2d0
      dphi=0.2d0
      dpt=5d0
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
c      inclusive setup:
c     
c----- incl. xsec
      call bookupeqbins(pr//'total_xsec',1d0,0d0,1d0)

c----- Higgs
      call bookupeqbins(pr//'pT_H',dpt,ptmin,ptmax)
      call bookupeqbins(pr//'eta_H',dy,ymin,ymax)
      call bookupeqbins(pr//'y_H',dy,ymin,ymax)
c      call bookupeqbins(pr//'mass(Higgs)',dmm,0d0,200d0)

c----- Higgs-W+ pair:
      call bookupeqbins(pr//'Deta_HWp',dy,ymin,ymax)
      call bookupeqbins(pr//'Dy_HWp',dy,ymin,ymax)
      call bookupeqbins(pr//'Dphi_HWp',dphi,phimin,phimax)
      call bookupeqbins(pr//'Reta_HWp',dr,rmin,rmax)
      call bookupeqbins(pr//'Ry_HWp',dr,rmin,rmax)

c----- Higgs-W- pair:
      call bookupeqbins(pr//'Deta_HWm',dy,ymin,ymax)
      call bookupeqbins(pr//'Dy_HWm',dy,ymin,ymax)
      call bookupeqbins(pr//'Dphi_HWm',dphi,phimin,phimax)
      call bookupeqbins(pr//'Reta_HWm',dr,rmin,rmax)
      call bookupeqbins(pr//'Ry_HWm',dr,rmin,rmax)

c----- Higgs-W-W system:
c      call bookupeqbins(pr//'pT_HWW',dpt,ptmin,1d3)
c      call bookupeqbins(pr//'mass_HWW',dmm,mmin,mmax)

c----- W+ and W-:
c pt:
      call bookupeqbins(pr//'pT_Wp',dpt,ptmin,ptmax)
      call bookupeqbins(pr//'pT_Wm',dpt,ptmin,ptmax)

c eta:
      call bookupeqbins(pr//'eta_Wp',dy,ymin,ymax)
      call bookupeqbins(pr//'eta_Wm',dy,ymin,ymax)

c y: 
      call bookupeqbins(pr//'y_Wp',dy,ymin,ymax)
      call bookupeqbins(pr//'y_Wm',dy,ymin,ymax)

c----- WW pair:
      call bookupeqbins(pr//'mass_WW',dM,mmin,mmax)
      call bookupeqbins(pr//'pT_WW',dpt,ptmin,ptmax)
c
c----- WW separation:
c      call bookupeqbins(pr//'Deta_WW',dy,ymin,ymax)
c      call bookupeqbins(pr//'Dy_WW',dy,ymin,ymax)
c      call bookupeqbins(pr//'Dphi_WW',dphi,phimin,phimax)
c      call bookupeqbins(pr//'Reta_WW',dr,rmin,rmax)     
c      call bookupeqbins(pr//'Ry_WW',dr,rmin,rmax)     

c----- WW, H separation:
c      call bookupeqbins(pr//'Reta(WW,H)',dr,rmin,rmax)
c      call bookupeqbins(pr//'Ry(WW,H)',dr,rmin,rmax)

c----- jet radiation:
      call bookupeqbins(pr//'pT_j',2d0,0d0,200d0)
      call bookupeqbins(pr//'eta_j',0.2d0,-4d0,4d0)


cccccccccccccccccccccccccc
c
c      with jets cuts:
c
      call bookupeqbins(pr//'total_xsec_jcuts',1d0,0d0,1d0)
c----- Higgs
      call bookupeqbins(pr//'pT_H_jcuts',dpt,ptmin,ptmax)
      call bookupeqbins(pr//'eta_H_jcuts',dy,ymin,ymax)
      call bookupeqbins(pr//'y_H_jcuts',dy,ymin,ymax)

c----- Higgs-W+ pair:
      call bookupeqbins(pr//'Deta_HWp_jcuts',dy,ymin,ymax)
      call bookupeqbins(pr//'Dy_HWp_jcuts',dy,ymin,ymax)
      call bookupeqbins(pr//'Dphi_HWp_jcuts',dphi,phimin,phimax)
      call bookupeqbins(pr//'Reta_HWp_jcuts',dr,rmin,rmax)
      call bookupeqbins(pr//'Ry_HWp_jcuts',dr,rmin,rmax)

c----- Higgs-W- pair:
      call bookupeqbins(pr//'Deta_HWm_jcuts',dy,ymin,ymax)
      call bookupeqbins(pr//'Dy_HWm_jcuts',dy,ymin,ymax)
      call bookupeqbins(pr//'Dphi_HWm_jcuts',dphi,phimin,phimax)
      call bookupeqbins(pr//'Reta_HWm_jcuts',dr,rmin,rmax)
      call bookupeqbins(pr//'Ry_HWm_jcuts',dr,rmin,rmax)

c----- W+ and W-:
c pt:
      call bookupeqbins(pr//'pT_Wp_jcuts',dpt,ptmin,ptmax)
      call bookupeqbins(pr//'pT_Wm_jcuts',dpt,ptmin,ptmax)

c eta:
      call bookupeqbins(pr//'eta_Wp_jcuts',dy,ymin,ymax)
      call bookupeqbins(pr//'eta_Wm_jcuts',dy,ymin,ymax)

c y: 
      call bookupeqbins(pr//'y_Wp_jcuts',dy,ymin,ymax)
      call bookupeqbins(pr//'y_Wm_jcuts',dy,ymin,ymax)

c----- WW pair:
      call bookupeqbins(pr//'mass_WW_jcuts',dM,mmin,mmax)
      call bookupeqbins(pr//'pT_WW_jcuts',dpt,ptmin,ptmax)

c----- jet radiation:
      call bookupeqbins(pr//'pT_j_jcuts',2d0,0d0,200d0)
      call bookupeqbins(pr//'eta_j_jcuts',0.2d0,-4d0,4d0)
      
      if(whcprg.eq.'PYTHIA') then
!      lepton cuts
         call bookupeqbins(pr//'total_xsec_lcuts',1d0,0d0,1d0)
         call bookupeqbins(pr//'azimuth_diff_lepton_pair_lcuts',
     &        pi/20d0,-pi,pi)
         call bookupeqbins(pr//'pt_lepton_A_lcuts',10d0,0d0,600d0)
         call bookupeqbins(pr//'eta_lepton_A_lcuts',0.2d0,-4d0,4d0)
      endif
      end
c############### end subroutine init_hist ##############################

c############### subroutine analysis ###################################
c     extract all data required for the histograms
c     calculate quantities that shall be plotted
c     fill histograms
      
      subroutine analysis(dsig0)
      implicit none
#include "hepevt.h"
#include "pwhg_math.h"
#include "LesHouches.h"
#include "pwhg_weights.h"
!     cross section
      real * 8 dsig0,dsig(7)
!     tells if subroutine is called for the first time
      logical ini
      data ini/.true./
      save ini
! external functions
      double precision powheginput
      external powheginput
!     tag for the process, set in the init routine for the histograms
      character * 6 pr
      common/pwhgprocess/pr
!     bin size
      real * 8 binsize(700)
      common/pwhghistcommon/binsize
!     kinematical quantities
c--- W+/W- boson:
      real*8 ppairWW(1:4),pTWp,yWp,etaWp,pTWm,yWm,etaWm
      real*8 rWW,phiWW,yWW,etaWW,pTWW,mWW
      real*8 retaWW
c--- H boson:
      real*8 pTh,etah,yh,mhiggs
c--- H + (W+ or W-):
      real*8 etaWph,yWph,phiWph,rWph
      real*8 etaWmh,yWmh,phiWmh,rWmh
      real*8 retaWpH,retaWmH
c--- H+WW:
      real*8 yWWh,etaWWh,phiWWh,rWWh
      real*8 pWWh(1:4),pTWWh,mWWh
      real*8 retaWWH
!     jet parameters
      integer j, mjets, num_vis_jets, maxjet
      parameter (maxjet=2048)
      double precision kt(maxjet), eta(maxjet), rap(maxjet)
      double precision phi(maxjet), pj(4,maxjet), ptrel(maxjet)
      double precision ptmin, yjmax, R
      common /jetcuts/ptmin, yjmax, R
!     IDs
      integer ihep,iwp,iwm,ihiggs
      integer iiwp,iiwm,iihiggs
!     indices for loop routines
      integer ij, mu
! cuts
      logical JcutsPassed
!     tell this analysis file which program is running it
      character * 6 whcprg
      common/cwhcprg/whcprg
      data whcprg/'LHE'/     ! default, should be set when analysis is called

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
c         ini=.false.
      endif

      dsig(:)=0d0
      if(weights_num.eq.0) then
         dsig(1)=dsig0
      else
         dsig(1:weights_num)=weights_val(1:weights_num)
      endif

      if(sum(abs(dsig)).eq.0) return

!     at first call
      if (ini) then            
!     check program that runs analysis
         print*,
         print*, "===================================================="
         if(WHCPRG.eq."NLO") then
            print*, "fixed-order NLO analysis"
         elseif(WHCPRG.eq."LHE") then
            print*, "LHE analysis"
         elseif(WHCPRG.eq."HERWIG") then
            print*, "HERWIG ANALYSIS"
            print*, "not implemented analysis"
            print*, "no plots will be present at the end of the run"
         elseif(WHCPRG.eq."PYTHIA") then
            print*, "PYTHIA ANALYSIS"
         endif
         print*, "===================================================="
         
   
c$$$C     ---------------------------------------------------------------
c$$$C     ---------------------------------------------------------------
c$$$
c$$$      if(write_cuts) then
c$$$         write(*,*) '********************************************'
c$$$         write(*,*) '********************************************'
c$$$         write(*,*) '                ANALYSIS CUTS               '
c$$$         write(*,*) '********************************************'
c$$$         write(*,*) '********************************************'
c$$$         write(*,*) ''
c$$$         write(*,*) 'INCLUSIVE ANALYSIS:'
c$$$         write(*,*) 'no cuts' 
c$$$         write(*,*) ''
c$$$         write(*,*) '*******************************************'
c$$$         write(*,*) '*******************************************'
c$$$  endif

      endif                     ! end if(ini)
         
! jets
! initialize
      do j = 1,maxjet
         kt(j) = 0D0
         eta(j) = 0D0
         rap(j) = 0D0
         phi(j) = 0D0
         pj(:,j) = 0D0
         ptrel(j) = 0D0
      enddo
        
! init jet cuts
      ptmin=1D0
      yjmax=4.5D0
      R=0.4D0
      mjets=40

      if (ini) then
          ! write out informations
         print*, "===================================================="
          ! write out all cuts
         print*, "cuts in analysis routines"
         print*
         print*, "cuts (jet):"
         print*, "hardest jet   p_t >",ptmin," GeV"
         print*, "hardest jet |eta| <",yjmax
         print*, "radius parameter R = ",R
         print*
         print*, "===================================================="
      endif
        
      ini=.false.
        
      
      iwp=0
      iiwp=0
      iwm=0
      iiwm=0
      ihiggs=0
      iihiggs=0

c Parton level analysis
      if(whcprg.eq.'NLO'.or.whcprg.eq.'LHE') then
         do ihep=3,nhep
            if(idhep(ihep).eq.24) then
               iwp=ihep
               iiwp=iiwp+1
            elseif(idhep(ihep).eq.-24) then
               iwm=ihep
               iiwm=iiwm+1
            elseif(idhep(ihep).eq.25) then
               ihiggs=ihep
               iihiggs=iihiggs+1
            endif
         enddo !ihep

c check that exactly 1 W+, 1 W-, and 1 Higgs are selected
         if (iiwp.ne.1) then
            write(*,*) "Error in pwhg_analysis: ",iiwp," W+"
c            call printleshouches
            call exit(1)
         endif
         if (iiwm.ne.1) then
            write(*,*) "Error in pwhg_analysis: ",iiwm," W-"
c            call printleshouches
            call exit(1)
         endif
         if (iihiggs.ne.1) then
            write(*,*) "Error in pwhg_analysis: ",iihiggs,"Higgses"
c            call printleshouches
            call exit(1)
         endif

c Hadron level analysis
      else

         if (WHCPRG.eq.'HERWIG') then ! not yet implemented !!
            
            do ihep=1,nhep

c searching stategies according to the shower Monte Carlo
c     program used      
c simplistic analysis:
               if (isthep(ihep).eq.155) then
                  if (idhep(ihep).eq.25) then 
                     ihiggs=ihep
                     iihiggs=iihiggs+1
                  endif   
                  if (idhep(ihep).eq.24) then !W+
                     iwp = ihep
                     iiwp = iiwp+1
                  endif   
                  if (idhep(ihep).eq.-24) then !W-
                     iwm = ihep
                     iiwm = iiwm+1
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
               if (idhep(ihep).eq.24) then !W+
                  iwp = ihep
                  iiwp = iiwp+1
               endif   
               if (idhep(ihep).eq.-24) then !W-
                  iwm = ihep
                  iiwm = iiwm+1
               endif   
            enddo !nhep


         endif !pythia or herwig

c check that at least one W+ and one W- are selected
c during showering there may be more than one entry with PDG=24,
c with different IST. 
         if (iiwp.lt.1) then
            write(*,*) "Error in pwhg_analysis: ",iiwp," W+"
c            call printleshouches
            call exit(1)
         endif
         if (iiwm.lt.1) then
            write(*,*) "Error in pwhg_analysis: ",iiwm," W-"
c            call printleshouches
            call exit(1)
         endif

      endif !parton or hadron level analysis

c-----Fill all kinematical variables:

!     build jets
      call buildjets(mjets,kt,eta,rap,phi,pj,ptrel)
!     determine number of visible jets
      num_vis_jets=0
      do ij = 1,mjets
         if ((kt(ij).gt.ptmin).and.(dabs(eta(ij)).lt.yjmax)) then
            num_vis_jets=num_vis_jets+1
         endif
      enddo

c W+/W-:
      call ptyeta(phep(1,iwp),pTWp,yWp,etaWp)
      call ptyeta(phep(1,iwm),pTWm,yWm,etaWm)

      call getdydetadphidr(phep(1,iwp),phep(1,iwm),
     %     yWW,etaWW,phiWW,rWW)

      call getdydetadphidrr(phep(1,iwp),phep(1,iwm),
     %     retaWW)

c Higgs:
      call ptyeta(phep(1,ihiggs),pTh,yh,etah)

      mhiggs = dsqrt(abs(phep(4,ihiggs)**2-phep(1,ihiggs)**2-
     &                   phep(2,ihiggs)**2-phep(3,ihiggs)**2))

c Higgs + (W+ or W-):
      call getdydetadphidr(phep(1,iwp),phep(1,ihiggs),
     %     yWph,etaWph,phiWph,rWph)
      call getdydetadphidr(phep(1,iwm),phep(1,ihiggs),
     %     yWmh,etaWmh,phiWmh,rWmh)

      call getdydetadphidrr(phep(1,iwp),phep(1,ihiggs),
     %     retaWph)
      call getdydetadphidrr(phep(1,iwm),phep(1,ihiggs),
     %     retaWmh)

c mass of the pair
      do mu=1,4
         ppairWW(mu)=phep(mu,iwp)+phep(mu,iwm)
      enddo
      mWW=dsqrt(abs(ppairWW(4)**2
     1            -ppairWW(1)**2-ppairWW(2)**2-ppairWW(3)**2))
      pTWW=dsqrt(abs(ppairWW(1)**2+ppairWW(2)**2))

c WW+Higgs system:
      pWWh(1:4) = ppairWW(1:4)+phep(1:4,ihiggs)
      pTWWh = dsqrt(abs(pWWh(1)**2+pWWh(2)**2))
      mWWh = dsqrt(abs(pWWh(4)**2-pWWh(1)**2-pWWh(2)**2-pWWh(3)**2))

c WW vs Higgs:
      call getdydetadphidr(ppairWW(1),phep(1,ihiggs),
     %     yWWh,etaWWh,phiWWh,rWWh)

      call getdydetadphidrr(ppairWW(1),phep(1,ihiggs),
     %     retaWWh)
        

cccccccccccccccccccccccccccccc
c
c inclusive analysis:
c
c----- xsec:
      call filld(pr//'total_xsec',0.5d0,dsig)

c----- Higgs:
      call filld(pr//'pT_H',pTh,dsig)
      call filld(pr//'eta_H',etah,dsig)
      call filld(pr//'y_H',yh,dsig)
c      call filld(pr//'mass(Higgs)',mhiggs,dsig)

c----- H-W+ pair:
      call filld(pr//'Deta_HWp',etaWph,dsig)
      call filld(pr//'Dy_HWp',yWph,dsig)
      call filld(pr//'Dphi_HWp',phiWph,dsig)
      call filld(pr//'Reta_HWp',retaWph,dsig)
      call filld(pr//'Ry_HWp',rWph,dsig)

c----- H-W- pair:
      call filld(pr//'Deta_HWm',etaWmh,dsig)
      call filld(pr//'Dy_HWm',yWmh,dsig)
      call filld(pr//'Dphi_HWm',phiWmh,dsig)
      call filld(pr//'Reta_HWm',retaWmh,dsig)
      call filld(pr//'Ry_HWm',rWmh,dsig)

c----- Higgs-WW system:
c      call filld(pr//'pT_HWW',pTWWh,dsig)
c      call filld(pr//'mass_HWW',mWWh,dsig)

c----- W+ and W-:
c pt 
      call filld(pr//'pT_Wp',pTWp,dsig)
      call filld(pr//'pT_Wm',pTWm,dsig)

c eta:
      call filld(pr//'eta_Wp',etaWp,dsig)
      call filld(pr//'eta_Wm',etaWm,dsig)

c y:
      call filld(pr//'y_Wp',yWp,dsig)
      call filld(pr//'y_Wm',yWm,dsig)

c----- WW pair:
      call filld(pr//'mass_WW',mWW,dsig)
      call filld(pr//'pT_WW',pTWW,dsig)

c----- W+,W- separation:
c      call filld(pr//'Deta_WW',etaWW,dsig)
c      call filld(pr//'Dy_WW',yWW,dsig)
c      call filld(pr//'Dphi_WW',phiWW,dsig)
c      call filld(pr//'Reta_WW',retaWW,dsig)
c      call filld(pr//'Ry_WW',rWW,dsig)


c----- WW, Higgs separation:
c      call filld(pr//'Reta(WW,H)',retaWWh,dsig)
c      call filld(pr//'Ry(WW,H)',rWWh,dsig)
   
c----- jet radiation:
      call filld(pr//'pT_j',kt(1),dsig)

! determine if jet cuts have passed
      JcutsPassed=.true.
      if(mjets.lt.1) JcutsPassed=.false.
      if(kt(1).le.ptmin) JcutsPassed=.false.
      if(dabs(eta(1)).ge.yjmax) JcutsPassed=.false.
! fill histograms if jet cuts have passed
      if(JcutsPassed) then
c
c analysis with jet cuts:
c
c----- xsec:
         call filld(pr//'total_xsec_jcuts',0.5d0,dsig)

c----- Higgs:
         call filld(pr//'pT_H_jcuts',pTh,dsig)
         call filld(pr//'eta_H_jcuts',etah,dsig)
         call filld(pr//'y_H_jcuts',yh,dsig)
c      call filld(pr//'mass(Higgs)',mhiggs,dsig)

c----- H-W+ pair:
         call filld(pr//'Deta_HWp_jcuts',etaWph,dsig)
         call filld(pr//'Dy_HWp_jcuts',yWph,dsig)
         call filld(pr//'Dphi_HWp_jcuts',phiWph,dsig)
         call filld(pr//'Reta_HWp_jcuts',retaWph,dsig)
         call filld(pr//'Ry_HWp_jcuts',rWph,dsig)

c----- H-W- pair:
         call filld(pr//'Deta_HWm_jcuts',etaWmh,dsig)
         call filld(pr//'Dy_HWm_jcuts',yWmh,dsig)
         call filld(pr//'Dphi_HWm_jcuts',phiWmh,dsig)
         call filld(pr//'Reta_HWm_jcuts',retaWmh,dsig)
         call filld(pr//'Ry_HWm_jcuts',rWmh,dsig)

c----- Higgs-WW system:
c      call filld(pr//'pT_HWW_jcuts',pTWWh,dsig)
c      call filld(pr//'mass_HWW_jcuts',mWWh,dsig)

c----- W+ and W-:
c pt 
         call filld(pr//'pT_Wp_jcuts',pTWp,dsig)
         call filld(pr//'pT_Wm_jcuts',pTWm,dsig)

c eta:
         call filld(pr//'eta_Wp_jcuts',etaWp,dsig)
         call filld(pr//'eta_Wm_jcuts',etaWm,dsig)

c y:
         call filld(pr//'y_Wp_jcuts',yWp,dsig)
         call filld(pr//'y_Wm_jcuts',yWm,dsig)

c----- WW pair:
         call filld(pr//'mass_WW_jcuts',mWW,dsig)
         call filld(pr//'pT_WW_jcuts',pTWW,dsig)

c----- W+,W- separation:
c         call filld(pr//'Deta_WW_jcuts',etaWW,dsig)
c         call filld(pr//'Dy_WW_jcuts',yWW,dsig)
c         call filld(pr//'Dphi_WW_jcuts',phiWW,dsig)
c         call filld(pr//'Reta_WW_jcuts',retaWW,dsig)
c         call filld(pr//'Ry_WW_jcuts',rWW,dsig)


c----- WW, Higgs separation:
c      call filld(pr//'Reta(WW,H)_jcuts',retaWWh,dsig)
c      call filld(pr//'Ry(WW,H)_jcuts',rWWh,dsig)
   
c----- jet radiation:
         call filld(pr//'pT_j_jcuts',kt(1),dsig)
      endif
         
      end

c######################################################################
c######################################################################      
c################## routines for kinematics ###########################
c######################################################################
c######################################################################

c################## subroutine ptyeta for pT, y and eta ###############
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
c#################### end subroutine ptyeta ###########################

      
      subroutine getdydetadphidr(p1,p2,dy,deta,dphi,dr)
      implicit none
#include "pwhg_math.h" 
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
#include "pwhg_math.h" 
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

c############### subroutine getinvmass #################################
      subroutine getinvmass(p,m)
        implicit none
        double precision p(1:4),m
        m=dsqrt(dabs((p(4)**2-p(3)**2)-p(1)**2-p(2)**2))
      end
c############### end subroutine getinvmass #############################      

c######################################################################
c######################################################################      
c############### routines to sort out final state mmomenta ############
c######################################################################
c######################################################################
      
c###############subroutine getnumber ##################################
c     takes PDG ID
c     returns number of undecayed particles with this ID in n
      subroutine getnumber(PDG_ID,n)
      implicit none
#include "hepevt.h"
      integer PDG_ID, n, ihep

      n=0
      do ihep=1,nhep
         if(isthep(ihep).eq.1) then
            if(idhep(ihep).eq.PDG_ID) then
               n=n+1
            endif
         endif
      enddo
      
#ifdef DEBUGQ
      print*,"number of particles with ID",PDG_ID,": ",n
#endif
      end
c###############end subroutine getnumber ##############################

c###############subroutine get4momentum_largestpt #####################
c takes PDG ID
c returns four-momentum of undecayed particle with this ID and largest pt
      subroutine get4momentum_largestpt(PDG_ID,p)
        implicit none
        integer PDG_ID, n, nmax, mu
        parameter (nmax=200)
        integer list(nmax)
        double precision p(0:3)

        do mu=0,3
          p(mu)=0d0
        enddo

        call getptsortedlist(PDG_ID,n,list)
        if (list(1).ne.0) then  ! only if particle with PDG_ID is found
          ! take four-momentum of first particle in list (largest pt)
          call get4momentum_ihep(list(1),p)
        endif
      end
c###############end subroutine get4momentum_largestpt #################

c###############subroutine getptsortedlist ############################
c takes PDG ID
c returns number of undecayed particles with this ID in n
c returns list with ihep numbers of these particles sorted by pt in list
      subroutine getptsortedlist(PDG_ID,n,list)
        implicit none
#include "hepevt.h"
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
c###############end subroutine getptsortedlist ########################

c###############subroutine sortbypt ###################################
c sorts array iarr of ihep numbers by pt (decreasing)
      subroutine sortbypt(n,iarr)
        implicit none
#include "hepevt.h"
        integer n,iarr(n)
        integer j,k
        double precision tmp,pt(nmxhep)
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
c###############end subroutine sortbypt ###############################

c###############subroutine get4momentum_ihep ##########################
c takes ihep number of a particle in the HEPEVT common block
c puts its 4-momentum into p
c the phep momenta is in the laboratory frame
      subroutine get4momentum_ihep(ihep,p)
        implicit none
#include "hepevt.h"
#include "nlegborn.h"
#include "pwhg_kn.h"
        integer ihep, mu
        double precision p(0:3)

        do mu=0,3
          p(mu)=0D0
        enddo
      
        if(ihep.lt.0 .or. ihep.gt.nhep) then
          print*, "no particle with ihep number", ihep,
     &              "in current event"
          print*, "could not determine four-momentum"
          stop
        else
          ! p is defined in the laboratory frame (~kn_pborn(i))
          p(0)=phep(4,ihep)
          do mu=1,3
            p(mu)=phep(mu,ihep)
          enddo
        endif
      
#ifdef DEBUGQ
        print*,"p(",ihep,"): ",p(:)
        print*,"phep(1): ", phep(4,1),phep(1,1),phep(2,1),phep(3,1)
        print*,"phep(2): ", phep(4,2),phep(1,2),phep(2,2),phep(3,2)
        print*,"phep(3): ", phep(4,3),phep(1,3),phep(2,3),phep(3,3)
        print*,"phep(4): ", phep(4,4),phep(1,4),phep(2,4),phep(3,4)
        print*,"phep(5): ", phep(4,5),phep(1,5),phep(2,5),phep(3,5)
        print*,"phep(6): ", phep(4,6),phep(1,6),phep(2,6),phep(3,6)
        print*,"kn_preal(1): ",kn_preal(:,1)
        print*,"kn_preal(2): ",kn_preal(:,2)
        print*,"kn_preal(3): ",kn_preal(:,3)
        print*,"kn_preal(4): ",kn_preal(:,4)
        print*,"kn_preal(5): ",kn_preal(:,5)
        print*,"kn_preal(6): ",kn_preal(:,6)
        print*,"kn_pborn(1): ",kn_pborn(:,1)
        print*,"kn_pborn(2): ",kn_pborn(:,2)
        print*,"kn_pborn(3): ",kn_pborn(:,3)
        print*,"kn_pborn(4): ",kn_pborn(:,4)
        print*,"kn_pborn(5): ",kn_pborn(:,5)
#endif
      end
c###############end subroutine get4momentum_ihep #####################

c###############subroutine get4momentum_fin_pair ######################
c takes particle data group identity code of the final state pair
c puts 4-momentum of first and second particle
c in HEPEVT common block with this ID into p1 and p2
c this routine can be used even if the IDs of particle 1 and 2 are the same
c (this was not possible in dislepton_jet)
c$$$      subroutine get4momentum_fin_pair(PDG_ID1,p1,PDG_ID2,p2)
c$$$        implicit none
c$$$#include "hepevt.h"
c$$$#include "PhysPars.h"
c$$$        integer PDG_ID1,PDG_ID2
c$$$        ! output
c$$$        double precision p1(0:3), p2(0:3)
c$$$        double precision momsq
c$$$        external momsq
c$$$        ! indices
c$$$        integer ihep, imu
c$$$        ! store id of found particle?
c$$$        integer found1, found2
c$$$        ! check on-shell condition
c$$$        double precision relerror
c$$$
c$$$        do imu=0,3
c$$$          p1(imu)=0D0
c$$$          p2(imu)=0D0
c$$$        enddo
c$$$        found1=-1
c$$$        found2=-1
c$$$
c$$$        do ihep=1,nhep
c$$$          if(.not.(found2 .eq. found1)) then
c$$$            if(PDG_ID2.eq.idhep(ihep)) then
c$$$              call get4momentum_ihep(ihep,p2)
c$$$              found2=ihep
c$$$            endif
c$$$          endif
c$$$          if(found1 .eq. -1) then
c$$$            if(PDG_ID1.eq.idhep(ihep)) then
c$$$              call get4momentum_ihep(ihep,p1)
c$$$              found1=ihep
c$$$            endif
c$$$          endif
c$$$        enddo
c$$$        
c$$$#ifdef DEBUGQ
c$$$        print*,"PDG_ID1",PDG_ID1
c$$$        print*,"p1",p1
c$$$        print*,"PDG_ID2",PDG_ID2
c$$$        print*,"p2",p2
c$$$        ! check on-shell condition
c$$$        print*,"m1",dsqrt(momsq(p1)),par_Fin1mass
c$$$        print*,"m2",dsqrt(momsq(p2)),par_Fin2mass
c$$$        !stop
c$$$#endif
c$$$
c$$$        ! check if the extracted particles are indeed the final state particles
c$$$        relerror = (dsqrt(momsq(p1))-par_Fin1mass)
c$$$     &             /(dsqrt(momsq(p1))+par_Fin1mass)
c$$$        if( dabs(relerror) .gt. 1D-6 ) then
c$$$          print*,"error: wrong particle extracted in "
c$$$          print*,"subroutine get4momentum_fin_pair"
c$$$          print*,"p1**2 = ",momsq(p1)
c$$$          print*,"m1**2 = ",par_Fin1mass**2
c$$$          stop
c$$$        endif
c$$$        relerror = (dsqrt(momsq(p2))-par_Fin2mass)
c$$$     &             /(dsqrt(momsq(p2))+par_Fin2mass)
c$$$        if( dabs(relerror) .gt. 1D-6 ) then
c$$$          print*,"error: wrong particle extracted in "
c$$$          print*,"subroutine get4momentum_fin_pair"
c$$$          print*,"p2**2 = ",momsq(p2)
c$$$          print*,"m2**2 = ",par_Fin2mass**2
c$$$          stop
c$$$        endif
c$$$
c$$$        if(found1 .eq. found2) then
c$$$          print*, "error in get4momentum_fin_pair."
c$$$          print*, "idhep is the same for particle 1 and particle 2,"
c$$$          print*, "but should be different."
c$$$          print*, "idhep1", found1
c$$$          print*, "idhep2", found2
c$$$          stop
c$$$        endif
c$$$        
c$$$        if(found1 .eq. -1) then
c$$$          print*, "particle with PDG ID", PDG_ID1, "not found"
c$$$          print*, "could not determine four-momentum"
c$$$          stop
c$$$        endif
c$$$        
c$$$        if(found2 .eq. -1) then
c$$$          print*, "particle with PDG ID", PDG_ID2, "not found"
c$$$          print*, "could not determine four-momentum"
c$$$          stop
c$$$        endif
c$$$      end
c###############end subroutine get4momentum_fin_pair ##################
      

c######################################################################
c######################################################################      
c############### routines for jet algorithm ###########################
c######################################################################
c######################################################################
      
c################### subroutine buildjets #############################
c     jets are orderd by decreasing pt
      subroutine buildjets(mjets,kt,eta,rap,phi,pjet,ptrel)
      implicit none
#include   "hepevt.h"
!     input
      integer mjets
!     output
      double precision kt(mjets),eta(mjets),rap(mjets),phi(mjets)
      double precision pjet(4,mjets),ptrel(mjets)
      integer   maxtrack,maxjet
      parameter (maxtrack=2048,maxjet=2048)
      double precision  ptrack(4,maxtrack),pj(4,maxjet)
      integer   jetvec(maxtrack),itrackhep(maxtrack)
      integer   ntracks,njets
      integer   j,k,mu
      double precision palg,pp,tmp
      double precision ptmin,yjmax,R
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
!     Extract final state particles to feed to jet finder
      do j=1,nhep
         if (isthep(j).eq.1 .and. isjetparticle(idhep(j))) then
            if(ntracks.eq.maxtrack) then
               print*, "analyze: need to increase maxtrack!"
               print*, "ntracks: ",ntracks
               stop
            endif
            ntracks=ntracks+1
            itrackhep(ntracks)=j
            do mu=1,4
               ptrack(mu,ntracks)=phep(mu,j)
            enddo
         endif
      enddo
      if (ntracks.eq.0) then
         mjets=0
         return
      endif

!     note: ptmin and R are in common block "jetcuts"
!     anti-kT (c.f. ZZ code):
      palg=-1
      call fastjetppgenkt(ptrack,ntracks,R,palg,ptmin,pjet,njets,
     &     jetvec)
     
      mjets=min(mjets,njets)
      if(njets.eq.0) return
!     check consistency
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
            tmp=tmp+dabs(pj(mu,j)-pjet(mu,j))
         enddo
      enddo
      if(tmp.gt.1d-4) then
         print*, " bug!"
      endif
!     end check consistency

!     computing arrays of useful kinematics quantities for hardest jets
      do j=1,mjets
         kt(j)=dsqrt(pjet(1,j)**2+pjet(2,j)**2)
         pp = dsqrt(kt(j)**2+pjet(3,j)**2)
         eta(j)=0.5d0*dlog((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         rap(j)=0.5d0*dlog((pjet(4,j)+pjet(3,j))/(pjet(4,j)-pjet(3,j)))
         phi(j)=datan2(pjet(2,j),pjet(1,j))
      enddo
      
      call computeptrel(ptrack,ntracks,rap,kt,phi,mjets,jetvec,ptrel)
      
      end
c############### end subroutine buildjets ##############################

c############### subroutine isjetparticle ##############################
c determines if particle contributes to a jet
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
          print*, "could not determine if particle with ID", PDG_ID
          print*, "contributes to a jet"
          stop
        endif
      end
c############### end subroutine isjetparticle ##########################

c############### subroutine injetwhitelist #############################
c determines if particle is in whitelist
c of particles that contribute to a jet
      logical function injetwhitelist(PDG_ID)
      implicit none
      integer PDG_ID, id
      injetwhitelist=.false.
      id=iabs(PDG_ID)
!     the following particles contribute to a jet
!     quarks
      if (1.le.id .and. id.le.6) injetwhitelist=.true.
!     photon is not in whitelist
      if (id.eq.22) injetwhitelist=.false.
!     weak bosons are not in whitelist
      if (id.eq.23) injetwhitelist=.false. ! Z
      if (id.eq.24) injetwhitelist=.false. ! W
!     higgs is not in whitelist
      if (id.eq.25) injetwhitelist=.false.
!     gluon
      if (id.eq.21) injetwhitelist=.true.
      if (id.eq.0) injetwhitelist=.true. ! POWHEG numbering
!     diquarks
      if ((1000.le.id .and. id.le.6000)
     &     .and. (mod(id,100).eq.1 .or. mod(id,100).eq.3)) then
         injetwhitelist=.true.
      endif
!     mesons
      if ((111.le.id .and. id.le.600)
     &     .or. (10000.le.id .and. id.le.999999)
     &     .or. (9000000.le.id .and. id.le.9100000)) then
         injetwhitelist=.true.
      endif
!     baryons
      if ((1000.le.id .and. id.le.6000)
     &     .and. (mod(id,10).eq.2 .or. mod(id,10).eq.4)) then
         injetwhitelist=.true.
      endif
      end
c############### end subroutine injetwhitelist #########################

c############### subroutine injetblacklist #############################
c     determines if particle is in blacklist
c     of particles that do not contribute to a jet
      logical function injetblacklist(PDG_ID)
      implicit none
      integer PDG_ID, id
      injetblacklist=.false.
      id=iabs(PDG_ID)
!     the following particles may occur
!     but do not contribute to a jet
!     leptons
      if (id.eq.11) injetblacklist=.true. ! e
      if (id.eq.12) injetblacklist=.true. ! nue
      if (id.eq.13) injetblacklist=.true. ! mu
      if (id.eq.14) injetblacklist=.true. ! numu
      if (id.eq.15) injetblacklist=.true. ! tau
      if (id.eq.16) injetblacklist=.true. ! nu_tau
!     photon
      if (id.eq.22) injetblacklist=.true.
!     weak bosons
      if (id.eq.23) injetblacklist=.true. ! Z
      if (id.eq.24) injetblacklist=.true. ! W
!     higgs
      if (id.eq.25) injetblacklist=.true.
      end
c############### end subroutine injetblacklist #########################

c############### subroutine computeptrel ###############################
c pt rel is sum of the ptrack momentum projection ortogonal to the jet
c momentum in the frame where the jet has zero rapidity
      subroutine computeptrel(ptracks,ntracks,rapjets,ktjets,phijets,
     &     njets,jetvec,ptrel)
      implicit none
      integer ntracks,njets,jetvec(ntracks)
      double precision ptracks(4,ntracks),rapjets(njets)
      double precision ktjets(njets),phijets(njets),ptrel(njets)
      integer j,i
      double precision yj,kj1,kj2,y,pt(3)
      do j=1,njets
         ptrel(j)=0
      enddo
      do i=1,ntracks
         j=jetvec(i)
         if(j.gt.0.and.j.le.njets) then
!     Track i belongs to jet j
            yj=rapjets(j)
            kj1=ktjets(j)*dcos(phijets(j))
            kj2=ktjets(j)*dsin(phijets(j))
!     rapidity of track i
            y=0.5d0*dlog((ptracks(4,i)+ptracks(3,i))
     &           /(ptracks(4,i)-ptracks(3,i)))
!     rapidity of track i in frame where the jet has zero rapidity
            y=y-yj
!     find momentum of track i in frame where the jet has zero rapidity
            pt(1)=ptracks(1,i)
            pt(2)=ptracks(2,i)
            pt(3)=dsqrt(pt(1)**2+pt(2)**2)*sinh(y)
!     pt rel is sum of the ptrack momentum projection ortogonal to the jet
!     momentum in the frame where the jet has zero rapidity
            ptrel(j)=dsqrt(((pt(1)*kj2-pt(2)*kj1)**2+
     &           (         -pt(3)*kj2)**2+
     &           (pt(3)*kj1          )**2)/
     &           (kj1**2+kj2**2)) + ptrel(j)
         endif
      enddo
      end
c############### end subroutine computeptrel ###########################
