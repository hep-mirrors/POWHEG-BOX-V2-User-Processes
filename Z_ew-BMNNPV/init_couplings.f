      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'mathx.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_physpar.h'
      include 'LesHouches.h'
      include 'pwhg_em.h'
      include 'pwhg_flg.h'

c.....mauro-pair b
      real*8 saveaem0
      common/csaveaem0/saveaem0
      save  /csaveaem0/
c.....mauro-pair e      

      
      real * 8 powheginput
      external powheginput
      real *8 decmass
      common/clepmass/decmass
      real*8 mlep2,resc_em_alpha
      common/leptmass/mlep2
c     renormalization scheme
c     0 -> alpha(0)
c     1 -> alpha(mz)
c     2 -> gmu
      integer cmpmass
      integer iftoptmp
      real * 8 cmass, bmass
      integer j
      real*8 s2effin,mwout,tmp
      save 
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   INDEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_alphaem = powheginput("#alphaem")
      if (ph_alphaem.le.0d0) ph_alphaem = 1d0/137.03599911d0
      em_alpha = ph_alphaem      
      if(.not.flg_with_em) then
         em_alpha = 0
      endif
c.....mauro-pair b
      saveaem0=em_alpha
c.....mauro-pair e                  
      physpar_aem = ph_alphaem

c EW renormalization scale
      em_muren2 = 1d0
c Boson masses and witdhs
      ph_Zmass = powheginput("#Zmass")
      if (ph_Zmass.le.0d0) ph_Zmass  = 91.1876d0     
      ph_Zwidth = powheginput("#Zwidth")
      if (ph_Zwidth.le.0d0) ph_Zwidth =  2.4924d0

      ph_Wmass = powheginput("#Wmass")
      if (ph_Wmass.le.0d0) ph_Wmass  = 80.37399d0     
      ph_Wwidth = powheginput("#Wwidth")
      if (ph_Wwidth.le.0d0) ph_Wwidth =  2.0836d0
      ph_Hmass = powheginput("#Hmass")

      if (ph_Hmass.le.0d0) ph_Hmass  = 125.d0
      ph_Hwidth = powheginput("#Hwidth")
      if (ph_Hwidth.le.0d0) ph_Hwidth =  0.01d0

c Quark masses
      ph_mTop = powheginput("#Tmass")
      if (ph_mTop.le.0d0) ph_mTop = 174d0

      ph_mBot = powheginput("#Bmass")
      if (ph_mBot.le.0d0) ph_mBot = 4.6d0

      ph_mCha = powheginput("#Cmass")
      if (ph_mCha.le.0d0) ph_mCha = 1.2d0

      ph_mStr = powheginput("#Smass")
      if (ph_mStr.le.0d0) ph_mStr = 0.15d0

      ph_mUp = powheginput("#Umass")
      if (ph_mUp.le.0d0) ph_mUp = 0.06983d0

      ph_mDown = powheginput("#Dmass")
      if (ph_mDown.le.0d0) ph_mDown = 0.06984d0


c Lepton masses
      ph_mEl = powheginput("#Elmass")
      if (ph_mEl.le.0d0) ph_mEl = 0.51099892d-3

      ph_mMuon = powheginput("#Mumass")
      if (ph_mMuon.le.0d0) ph_mMuon = 0.105658369d0

      ph_mTau = powheginput("#Taumass")
      if (ph_mTau.le.0d0) ph_mTau = 1.77699d0


      physpar_ml(1)=ph_mEl
      physpar_ml(2)=ph_mMuon
      physpar_ml(3)=ph_mTau
c

c     number of light flavors
      st_nlight = 5
      
c      
      s2effin = powheginput("#s2eff")
      if (s2effin.gt.0d0) then
         call s2thetaeff_l(ph_Hmass,ph_mTop,ph_Zmass,s2effin,mwout)
         ph_Wmass= mwout
      endif
c     ph_Wmass and pw_Z mass are intended to be on-shell masses (LEP style).
c     they need to be converted to complex pole positions
c
      ph_Wmass= ph_Wmass/sqrt(1.d0+(ph_Wwidth/ph_Wmass)**2)
      ph_Wwidth= ph_Wwidth/sqrt(1.d0+(ph_Wwidth/ph_Wmass)**2)

      ph_Zmass= ph_Zmass/sqrt(1.d0+(ph_Zwidth/ph_Zmass)**2)
      ph_Zwidth= ph_Zwidth/sqrt(1.d0+(ph_Zwidth/ph_Zmass)**2)

c     Set here lepton and quark masses for momentum reshuffle in the LHE event file
      do j=1,st_nlight         
         physpar_mq(j)=0d0
      enddo
c     read eventual c and b masses from the input file
      cmass=powheginput("#cmass_lhe")
      if (cmass.gt.0d0) physpar_mq(4)=cmass
      bmass=powheginput("#bmass_lhe")
      if (bmass.gt.0d0) physpar_mq(5)=bmass


      scheme = powheginput("#scheme")
      if (scheme.lt.0d0) scheme = 0

      iftoptmp = powheginput("#iftopinloop")
      if (iftoptmp.le.0d0) iftoptmp = 0
      if (iftoptmp.eq.0) then
          iftopinloop = .false.
      else
          iftopinloop = .true.
      endif

      ph_gmu = powheginput("#gmu")
      if (ph_gmu.le.0) ph_gmu = 1.16637d-5

      ph_alpha_mz = powheginput("#alphaem_z")
      if (ph_alpha_mz.le.0d0) ph_alpha_mz = 1d0/128.93d0

c     number of light flavors
      st_nlight = 5

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   DEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc


*
      epsilon = 1d-40

*
** fermion masses
*
      me  = ph_mEl
      mm  = ph_mMuon
      mtl = ph_mTau
      me2 = me*me
      mm2 = mm*mm
      mtl2= mtl*mtl

      mu= ph_mUp
      md= ph_mDown
      mu2= mu*mu
      md2= md*md

      mc= ph_mCha
      ms= ph_mStr
      mc2= mc*mc
      ms2= ms*ms

      mt= ph_mTop
      mb= ph_mBot
      mt2= mt*mt
      mb2= mb*mb

*  mass of final state lepton
      if(lprup(1).eq.10011) then
         decmass=ph_mEl
      elseif(lprup(1).eq.10013) then
         decmass=ph_mMuon
      elseif(lprup(1).eq.10015) then
         decmass=ph_mTau
      endif   

      mlep2=decmass*decmass

*
** couplings / boson masses (cw = mw/mz)
*
      cmpmass = powheginput("#complexmasses")
      if (cmpmass.lt.0) cmpmass = 0

      if (cmpmass.eq.0) then
          complexmasses = .false.
          mw2 = ph_Wmass**2
          mz2 = ph_Zmass**2
      else
          complexmasses = .true.
          mw2 = ph_Wmass**2 - ii*ph_Wmass*ph_Wwidth
          mz2 = ph_Zmass**2 - ii*ph_Zmass*ph_Zwidth
      endif

      mh2= ph_Hmass**2

      mw = sqrt(mw2)
      mz = sqrt(mz2)
      mh = sqrt(mh2)

      cw = mw/mz
      cw2= cw*cw
      sw2= 1.d0-cw2
      sw = sqrt(sw2)

      sw4= sw2*sw2
      cw4= cw2*cw2

      ph_sthw2= 1d0 - mw2/mz2
      ph_sthw = sqrt(ph_sthw2)
      ph_cthw = sqrt(1-ph_sthw2)
      ph_Zmass2 = ph_Zmass*ph_Zmass
      ph_Wmass2 = ph_Wmass*ph_Wmass
      ph_WmWw = ph_Wmass * ph_Wwidth
      ph_ZmZw = ph_Zmass * ph_Zwidth

c Alpha Thomson for radiation
      el2 = em_alpha*4.d0*pi
      alsu4pi = ph_alphaem/4d0/pi
      ph_unit_e = sqrt(4d0*pi*ph_alphaem)

      if (scheme.eq.0) then
          alpha   = dcmplx(ph_alphaem)
          el2_scheme = alpha*4d0*pi
      elseif (scheme.eq.1) then
          alpha   = dcmplx(ph_alpha_mz)
          el2_scheme = alpha*4d0*pi
      else
          el2_scheme = ph_gmu * 8d0/sqrt(2d0) * mw2 * sw2
          alpha   = el2_scheme/4d0/pi
      endif
*
* couplings of vectors to fermions
*
* given the expression (gv - ga gam_5) it is decomposed as 
*
* (gv - ga gam_5)= gm omega- + gp omega+ (see eqs. (a.14) and (a.15) 
* and comment after eq. (6.13) of arxiv:0709.1075 (denner fortschritte), 
* where omega- = (1 - gam_5)/2 and omega+ = (1 + gam_5)/2 (see eq. (2.9) 
* of arxiv:0709.1075). as a consequence
*
* gv= (gm+gp)/2
* ga= (gm-gp)/2
*
* gm= gv + ga
* gp= gv - ga
*
* using eq. (a.14) of arxiv:0709.1075 (Denner Fortschritte) 
* (in agreement (for the gfm couplings) with Dittmaier-Kramer prd65 073007) 
*
      qu =  2d0/3d0
      qd = -1d0/3d0
      ql = -1d0

      gl(0)= (-0.5d0*cone - sw2 * ql)/sw/cw  !charged leptons
      gl(1) = -sw/cw*ql
      gn(0)= +0.5d0/sw/cw                    !neutrinos
      gn(1) = 0.d0
      gu(0)= (+0.5d0*cone - sw2 * qu)/sw/cw  !quarks
      gu(1) = -sw/cw*qu
      gd(0)= (-0.5d0*cone - sw2 * qd)/sw/cw
      gd(1) = -sw/cw*qd

      end
*
*     subroutine for the conversion of sin2theta_eff (on-shell scheme) as input
*     to M_W for the calculation in the Powheg scheme with M_W as input parameter
*
      subroutine s2thetaeff_l(mh,mt,mz,s2effin,mwout)
      implicit none
      real*8 s2effin,mwout
      real*8 mh,mt,mz
      real*8 alphasmz
      real*8 lh,lh2,lh4,dh,dh2,dalphas_w,dalphas_s
      real*8 dt_w,dt2_w,lhdt_w,dt_s,dt2_s,dhdt_s,dz_w,dz_s
      real*8 ralpha,mwsum,s2sum
      real*8 ci(9)
      real*8 s2eff0
      real*8 di(10)
      real*8 mw0
*
*     Mw parameterization, coefficients as in 
*     Eqs. 63-64 of Freitas et al., NPB632 (2002) 189, hep-ph/0202131
*
c      data alphasmz/0.118d0/
      data mw0/80.3768d0/
      data ci/0.05619d0,0.009305d0,0.0005365d0,1.078d0,0.5236d0,
     +        0.0727d0,0.00544d0,0.0765d0,115.0d0/
*
*     s2eff parameterization, coefficients as in 
*     Eqs. 48-49 of Awramik, Czakon, Freitas, hep-ph/0608099, JHEP11 (2006) 048
*
      data s2eff0/0.2312527d0/
      data di/4.729d-4,2.07d-5,3.85d-6,-1.85d-6,2.07d-2,-2.851d-3,
     +     1.82d-4,-9.74d-6,3.98d-4,-6.55d-1/
      include 'pwhg_st.h'
      real * 8 pwhg_alphas
      external pwhg_alphas
      alphasmz  = pwhg_alphas(mz**2,st_lambda5MSB,st_nlight)

      
      lh= log(mh/100.d0)
      lh2= lh*lh
      lh4= lh2*lh2
      dt_w= (mt/174.3d0)**2 - 1.d0
      dt2_w= dt_w*dt_w
      lhdt_w= lh*dt_w
      dalphas_w= alphasmz/0.119d0 - 1.d0
      dz_w= mz/91.1875d0 - 1.d0
      
      dh= mh/100.d0
      dh2= dh*dh
      dt_s= (mt/178.d0)**2 - 1.d0
      dt2_s= dt_s*dt_s
      dalphas_s= alphasmz/0.117d0 - 1.d0
      dz_s= mz/91.1876d0 - 1.d0
*
      ralpha= 0.05924d0/0.05907d0
*
      mwsum= - ci(1) * lh
     +       - ci(2) * lh2
     +       + ci(3) * lh4
     +       + ci(5) * dt_w
     +       - ci(6) * dt2_w
     +       - ci(7) * lhdt_w
     +       - ci(8) * dalphas_w
     +       + ci(9) * dz_w
*
      s2sum= di(1) * lh
     +     + di(2) * lh2
     +     + di(3) * lh4
     +     + di(4) * (dh2 - 1.d0)
     +     + di(6) * dt_s
     +     + di(7) * dt2_s
     +     + di(8) * dt_s * (dh - 1.d0)
     +     + di(9) * dalphas_s
     +     + di(10) * dz_s
*
      mwout= mw0 + mwsum + ci(4)*(ralpha-1.d0)/ralpha
     +           + ci(4)/di(5)/ralpha*(-s2effin+s2eff0+s2sum)
*
      return
      end
