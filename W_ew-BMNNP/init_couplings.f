      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_em.h'
      include 'mathx.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'pwhg_physpar.h'
      real * 8 masswindow_low,masswindow_high
      real * 8 powheginput
      external powheginput
      integer i,j
      real *8 lepmass(3),decmass
      common/clepmass/lepmass,decmass
      real*8 mlep2
      complex*16 el2_scheme
      common/leptmass/mlep2
      real*8 complextmp
      real*8 osWmass,osWwidth,osZmass,osZwidth
c.....mauro-pair b
      real*8 saveaem0
      common/csaveaem0/saveaem0
      save  /csaveaem0/
c.....mauro-pair e      
c     renormalization scheme
c     0 -> alpha(0)
c     1 -> gmu
      integer scheme
      common/sch/scheme
c      complexmasses = .false.
      complexmasses = .true.
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   INDEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_Wmass = powheginput("#Wmass")
      if (ph_Wmass.le.0d0) ph_Wmass  = 80.398d0     
      ph_Wwidth = powheginput("#Wwidth")
      if (ph_Wwidth.le.0d0) ph_Wwidth =  2.141d0

      ph_alphaem = powheginput("#alphaem")
      if (ph_alphaem.le.0d0) ph_alphaem = 1d0/137.03599911d0
      em_alpha = ph_alphaem
c.....mauro-pair b
      saveaem0=em_alpha
c.....mauro-pair e            
      if(.not.flg_with_em) then
         em_alpha = 0
      endif
      physpar_aem = ph_alphaem

      ph_Zmass = powheginput("#Zmass")
      if (ph_Zmass.le.0d0) ph_Zmass  = 91.1876d0     
      ph_Zwidth = powheginput("#Zwidth")
      if (ph_Zwidth.le.0d0) ph_Zwidth =  2.4952d0
      
      ph_Hmass = powheginput("#Hmass")
      if (ph_Hmass.le.0d0) ph_Hmass  = 120.d0

      ph_mTop = powheginput("#Tmass")
      if (ph_mTop.le.0d0) ph_mTop = 172.9d0

      scheme = powheginput("#scheme")
      if (scheme.lt.0d0) scheme = 1

      ph_gmu = powheginput("#gmu")
      if (ph_gmu.le.0) ph_gmu = 1.16637d-5

c     CAVEAT: 
      ph_CKM(1,1) = powheginput("#CKM_Vud")
      if (ph_CKM(1,1).le.0d0) ph_CKM(1,1)=0.975d0 
      ph_CKM(1,2) = powheginput("#CKM_Vus")
      if (ph_CKM(1,2).le.0d0) ph_CKM(1,2)=0.222d0 
      ph_CKM(1,3) = powheginput("#CKM_Vub")
      if (ph_CKM(1,3).le.0d0) ph_CKM(1,3)=1d-10
      ph_CKM(2,1) = powheginput("#CKM_Vcd")
      if (ph_CKM(2,1).le.0d0) ph_CKM(2,1)=0.222d0 
      ph_CKM(2,2) = powheginput("#CKM_Vcs")
      if (ph_CKM(2,2).le.0d0)  ph_CKM(2,2)=0.975d0 
      ph_CKM(2,3) = powheginput("#CKM_Vcb")
      if (ph_CKM(2,3).le.0d0) ph_CKM(2,3)=1d-10
      ph_CKM(3,1) = powheginput("#CKM_Vtd")
      if (ph_CKM(3,1).le.0d0) ph_CKM(3,1)=1d-10
      ph_CKM(3,2) = powheginput("#CKM_Vts")
      if (ph_CKM(3,2).le.0d0) ph_CKM(3,2)=1d-10
      ph_CKM(3,3) = powheginput("#CKM_Vtb")
      if (ph_CKM(3,3).le.0d0) ph_CKM(3,3)=1d0

c     number of light flavors
      st_nlight = 5

c     ph_Wmass and pw_Z mass are intended to be on-shell masses (LEP style).
c     they need to be converted to complex pole positions
c
      osWmass= ph_Wmass
      osWwidth= ph_Wwidth
      ph_Wmass= ph_Wmass/sqrt(1.d0+(ph_Wwidth/ph_Wmass)**2)
      ph_Wwidth= ph_Wwidth/sqrt(1.d0+(ph_Wwidth/osWmass)**2)

      osZmass= ph_Zmass
      osZwidth= ph_Zwidth
      ph_Zmass= ph_Zmass/sqrt(1.d0+(ph_Zwidth/ph_Zmass)**2)
      ph_Zwidth= ph_Zwidth/sqrt(1.d0+(ph_Zwidth/osZmass)**2)

c     mass window
      masswindow_low = powheginput("#masswindow_low")
      if (masswindow_low.le.0d0) masswindow_low=30d0
      masswindow_high = powheginput("#masswindow_high")
      if (masswindow_high.le.0d0) masswindow_high=30d0

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   DEPENDENT QUANTITIES       
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

c     set mass window around W-mass peak in unit of ph_Wwidth
c     It is used in the generation of the Born phase space
      ph_Wmass2low=max(decmass*1d0,ph_Wmass-masswindow_low*ph_Wwidth)
      ph_Wmass2low=ph_Wmass2low**2
      ph_Wmass2high=ph_Wmass+masswindow_high*ph_Wwidth
      ph_Wmass2high=min(kn_sbeams,ph_Wmass2high**2)

*
      epsilon = 1d-40

*
** fermion masses
*
      me  = lepmass(1)
      mm  = lepmass(2)  
      mtl = lepmass(3)  
      me2 = me*me
      mm2 = mm*mm
      mtl2= mtl*mtl

      mu= 0.066d0
      md= 0.066d0
      mu2= mu*mu
      md2= md*md

      mc= 1.2d0
      ms= 0.15d0
      mc2= mc*mc
      ms2= ms*ms

      mt= ph_mTop
      mb= 4.3d0
      mt2= mt*mt
      mb2= mb*mb

*  mass of final state lepton
      mlep2=decmass*decmass

*
** couplings / boson masses (cw = mw/mz)
*
      alpha   = dcmplx(ph_alphaem)
      ph_unit_e = sqrt(4d0*pi*ph_alphaem)
      el2     = dcmplx(em_alpha)*4.d0*pi
      el2_scheme = alpha*4.d0*pi
      alsu4pi = alpha/4d0/pi
*
      ph_Zmass2 = ph_Zmass*ph_Zmass
      ph_Wmass2 = ph_Wmass*ph_Wmass
      ph_WmWw = ph_Wmass * ph_Wwidth
      ph_ZmZw = ph_Zmass * ph_Zwidth
*
      mw2= ph_Wmass**2 
      mz2= ph_Zmass**2 
      mh2= ph_Hmass**2 
      if(complexmasses) then
         mw2= mw2 -(0d0,1d0)*ph_WmWw 
         mz2= mz2 -(0d0,1d0)*ph_ZmZw 
      endif
*
      mw = sqrt(mw2)
      mz = sqrt(mz2)
      mh = sqrt(mh2)

      cw = mw/mz
      cw2= cw*cw
      sw2= 1.d0-cw2
      sw = sqrt(sw2)

      sw4= sw2*sw2
      cw4= cw2*cw2

      ph_sthw2= (1d0,0d0) - mw2/mz2
      ph_sthw = sqrt(ph_sthw2)
      ph_cthw = sqrt(1-ph_sthw2)

      if (scheme.eq.0) then
c          g2 = el2/sw2
          g2 = el2_scheme/sw2
      else
          g2 =  ph_gmu * 8d0/sqrt(2d0)  * mw2 
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
      qnu=  0d0

      glm=  (-0.5d0*cone - sw2 * ql)/sw/cw  !charged leptons
      glp= - sw/cw*ql
      gnm= + 0.5d0/sw/cw                    !neutrinos
      gnp=   0.d0
      gum=  (+0.5d0*cone - sw2 * qu)/sw/cw  !quarks
      gup= - sw/cw*qu
      gdm=  (-0.5d0*cone - sw2 * qd)/sw/cw
      gdp= - sw/cw*qd

      end

