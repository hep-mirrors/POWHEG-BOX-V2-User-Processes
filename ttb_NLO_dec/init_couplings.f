      subroutine init_couplings
      implicit none
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_physpar.h'
      include 'PhysPars.h'   
      include 'pwhg_st.h'   
      include 'pwhg_flg.h'   
      include 'pwhg_math.h'   
      include 'masses.f'   
      include 'ewcouple.f'   
      include 'qcdcouple.f'   
      include 'alfacut.f'
      include 'includect.f'
      include 'onshellmap.h'
      integer ii1,ii2,ii3,ii4,ii5,ii6,ii7,ii8,ii9,ii10,ii11,ii12,ii13
      common/inputprocind/ii1,ii2,ii3,ii4,ii5,ii6,ii7,ii8,
     1     ii9,ii10,ii11,ii12,ii13
      real * 8 lotopdecaywidth,nloratiotopdecay,powheginput,pwhg_alphas
      external lotopdecaywidth,nloratiotopdecay,powheginput,pwhg_alphas
      real *8 nlotwidth
c Bornzerodamp will not work at the moment
      flg_bornzerodamp=.false.

c alfafcut parameters (MCFM Nagy)
      aff=1d0
      aif=1d0
      afi=1d0
      aii=1d0
c
      includect=.false.
c
      ph_tmass=powheginput("#tmass")
      if(ph_tmass.lt.0) then
         ph_tmass = 172d0
      endif
c     ph_twidth=1.4381971d0! Set by call to MCFM routine below
      ph_bmass=powheginput("#bmass")
      if(ph_bmass.lt.0) then
         ph_bmass = 4.75d0
      endif
      write(*,*) ' b mass set to ',ph_bmass
      ph_wmass=80.398d0
      ph_wwidth=2.1054d0
      ph_zmass=91.1876d0
      Gf=1.16639d-5

      if(powheginput('#arXiv:1207.5018').ge.0) then
         Gf=1.16637d-5
         ph_wmass=80.399d0
         ph_zmass=91.1876d0
         ph_wwidth=2.09974d0
         ph_zwidth=2.50966d0
      endif

      ph_Gfermi=Gf


      gwsq=8d0*ph_wmass**2*ph_Gfermi/sqrt(2d0)
      gw=sqrt(gwsq)
      ph_alphaem=gwsq*(1.-(ph_wmass/ph_zmass)**2)/4/pi

c sin th Cabibbo, pdg as of June 2012
c No other CKM values needed here
      ph_CKM(1,2)=0.2257d0
      ph_CKM(2,1)=0.2257d0

      
      st_alpha=pwhg_alphas(ph_zmass**2,st_lambda5MSB,-1)
      write(*,*) 'Setting st_alpha at mZ = ',st_alpha

      st_alpha=pwhg_alphas(ph_tmass**2,st_lambda5MSB,-1)
      write(*,*) 'Setting st_alpha at mtop = ',st_alpha
      
      as=st_alpha
      gsq=4d0*pi*as
      ason2pi=as/(2d0*pi)
C     
      mt=ph_tmass
      mb=ph_bmass
      wmass=ph_wmass
      wwidth=ph_wwidth

c Calculate top width with MCFM routine, and assign the width used
c by MCFM (twidth) equal to the LO width.
c Before that, output values for LO and NLO width as obtained using
c mb=0.01, just to double check the numbers quoted by Denner in eq. 3.9.
c Checked succesfully also for Gamma_NLO (NLO alpha_s at mtop needed!)

c     top width from MCFM routines, mb=0.01
      twidth=lotopdecaywidth(ph_tmass,0.01d0,ph_wmass,ph_wwidth)
      nlotwidth=twidth*(1+nloratiotopdecay(ph_tmass,0.01d0,
     $        ph_wmass,ph_wwidth))
      write(*,*) ' top width as computed by MCFM routine (mb='
     $     ,0.01,')'
      write(*,*) 'LO:',twidth,' NLO:', nlotwidth

c     top width from MCFM routines, mb from input card
      twidth=lotopdecaywidth(ph_tmass,ph_bmass,ph_wmass,ph_wwidth)
c transfer the MCFM top width to the Born phase space routine
      ph_mcfm_twidth = twidth
c
      nlotwidth=twidth*(1+nloratiotopdecay(ph_tmass,ph_bmass,
     $        ph_wmass,ph_wwidth))
      write(*,*) ' top width as computed by MCFM routine (mb='
     $     ,ph_bmass,')'
      write(*,*) 'LO:',twidth,' NLO:', nlotwidth

      write(*,*) ' >>> top width used in mcfm routines: ',twidth

c Calculate twidth for MG5 matrix elements
      if(flg_bornonly.or.powheginput("#mglowidth").eq.1) then
         ph_twidth=twidth
      else
         ph_twidth=nlotwidth
      endif

      if(powheginput('#arXiv:1207.5018').ge.0) then
c$$$  c     Values used for NwWA
c$$$  ph_twidth=1.3376
c$$$  if(powheginput('#bornonly').eq.1) ph_twidth=1.4655
c     Values used for FwW (in this case complex mass scheme used by Denner...)
c$$$  ph_twidth=1.3167
c$$$  if(powheginput('#bornonly').eq.1) ph_twidth=1.4426
         if(flg_bornonly.or.powheginput("#mglowidth").eq.1) then
            ph_twidth=1.4426
         else
            ph_twidth=1.3167
         endif
         write(*,*) ' Using t width appropriate to compare with Denner'
      endif

      write(*,*) ' >>> top width used in MG5 routines: ',ph_twidth
      
c Need to renormalize LO off-shell full result, to adjust for "wrong"
c width. In narrow with limit, should be consistent with LO narrow
c width cross section.
c The leading order off shell result will go as Gamma_LO/Gamma_props,
c where Gamma_props is the Gamma used in the propagators (ph_twidth). 
c Must correct multiplying total results by Gamma_props/Gamma_LO
c for each top quark, except when we are using mockoffshell (in this case
c we multiply by a unity normalized Breit-Wigner):
      if(mockoffshelltop) then
         lo_gamma_corr = 1d0
      else
         lo_gamma_corr = (ph_twidth/twidth)**2
      endif
      write(*,*) ' correction factor for widths ',lo_gamma_corr
c A similar correction from W width/decay is included in the brcorrect
c routine in the init_processes.f file.

c particle masses for reshuffling
      physpar_ml(1) = 0.511d-3
      physpar_ml(2) = 0.1057d0
      physpar_ml(3) = 1.777d0
      physpar_mq(1) = 0.33d0     ! up
      physpar_mq(2) = 0.33d0     ! down
      physpar_mq(3) = 0.50d0     ! strange
      physpar_mq(4) = 1.50d0     ! charm
      physpar_mq(5) = ph_bmass   ! bottom

c POWHEG BOX wants particle masses to be stored here
      kn_masses(ii1)=0
      kn_masses(ii2)=0
      kn_masses(ii3)=ph_tmass
      kn_masses(ii4)=ph_tmass
      kn_masses(ii5)=ph_wmass
      kn_masses(ii6)=ph_wmass
      kn_masses(ii7)=0
      kn_masses(ii8)=0
      kn_masses(ii9)=0
      kn_masses(ii10)=0
      kn_masses(ii11)=ph_bmass
      kn_masses(ii12)=ph_bmass

c kn_minmass must be set to the minimum invariant mass
c of the final state (2 mt in this case, mt+mb in single top, etc.)
      kn_minmass=2*ph_tmass


      call set_madgraph_parameters

      write(*,*) '==========================='
      write(*,*) 'POWHEG EW parameters:'
      write(*,*) 'GF,sin2thetaw,aem ',ph_Gfermi,(1.-(ph_wmass/ph_zmass)**2),ph_alphaem
      write(*,*) 'mt,gammat ',ph_tmass,ph_twidth
      write(*,*) 'mw,gammaw ',ph_wmass,ph_wwidth
      write(*,*) 'mz,gammaz ',ph_zmass,ph_zwidth
      write(*,*) 'mb ',ph_bmass
      write(*,*) 'mh,gammah (hardcoded) ',126d0,0.04d0 !error prone
      write(*,*) 'as( ',ph_tmass/2,') ',pwhg_alphas((ph_tmass/2)**2
     $     ,st_lambda5MSB,-1)
      write(*,*) '==========================='

c      call set_madgraph4_parameters

      end
