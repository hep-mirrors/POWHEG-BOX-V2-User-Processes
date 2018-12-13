      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include 'pwhg_par.h'
      include "pwhg_physpar.h"
      include "pwhg_math.h"
c Avoid multiple calls to this subroutine. The parameter file is opened
c but never closed ...
      logical called
      real * 8 powheginput
      real * 8 RGE
      integer i,j, k
      real * 8 aux1(3,3), aux2(3,3)
      real * 8 aux3(3,3), aux4(3,3)
      real * 8 aux5(3,3), aux6(3,3)
      external powheginput
      data called/.false./
      save called
      integer idvecbos,vdecaymode,Vdecmod
      common/cvecbos/idvecbos,vdecaymode
      real *8 decmass

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   INDEPENDENT QUANTITIES
cccccc
cccccc  we use mZ, mW, v, (sthw2)_eff from leptonic aysmmetries, alpha_em
cccccc  as defined in the paper
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_Wmass = powheginput("#Wmass")
      if (ph_Wmass.le.0d0) ph_Wmass  = 80.398d0
      ph_Wwidth = powheginput("#Wwidth")
      if (ph_Wwidth.le.0d0) ph_Wwidth =  2.141d0
      ph_Hmass = powheginput('hmass')
      ph_Hwidth = powheginput('hwidth')
      ph_Hmass2low=powheginput("min_h_mass")**2
      ph_Hmass2high=powheginput("max_h_mass")**2
      ph_Wmass2low=powheginput("min_w_mass")**2
      ph_Wmass2high=powheginput("max_w_mass")**2

      ph_alphaem = powheginput("#alphaem")
      if (ph_alphaem.le.0d0) ph_alphaem = 1d0/128.89d0
      ph_Zmass = powheginput("#Zmass")
      if (ph_Zmass.le.0d0) ph_Zmass  = 91.1876d0
      ph_Zwidth = powheginput("#Zwidth")
      if (ph_Zwidth.le.0d0) ph_Zwidth =  2.4952d0
      ph_sthw2 = powheginput("#sthw2")
      if (ph_sthw2.le.0d0) ph_sthw2 = 0.23129
      ph_vev = powheginput("#vev")
      if (ph_vev.le.0d0) ph_vev = 246.21965

cccc  derived couplings: g_eff and (g/cw)_eff
      ph_geff   = 2d0*ph_Wmass/ph_vev
      ph_gcweff = 2d0*ph_Zmass/ph_vev
      ph_unit_e = sqrt(ph_alphaem * 4 * pi)
      ph_WmWw = ph_Wmass * ph_Wwidth
      
      
      
c     CAVEAT:
      ph_CKM(1,1) = powheginput("#CKM_Vud")
      if (ph_CKM(1,1).le.0d0) ph_CKM(1,1)=0.975d0
      ph_CKM(1,2) = powheginput("#CKM_Vus")
      if (ph_CKM(1,2).le.0d0) ph_CKM(1,2)=0.222d0
      ph_CKM(1,3) = powheginput("#CKM_Vub")
      if (ph_CKM(1,3).le.0d0) ph_CKM(1,3)=1d-10
      ph_CKM(2,1) = powheginput("#CKM_Vcd")
      if (ph_CKM(2,1).le.0d0) ph_CKM(2,1)=-0.222d0
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

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c      DIM 6 operators
c
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

c     include dim. 6 operators
      wdm = .false.
      mfv = .false.
      if(powheginput('#dim6').eq.1) wdm=.true.
      if(powheginput('#mfv').eq.1)  mfv=.true.

c     scale at which the dim. 6 coefficient are given
      LambdaNP = powheginput('#LambdaNP')
      if (LambdaNP.lt.0)  LambdaNP = 1000

c     for the weak edm and the modifications to the quark-W left handed coupling
c     we set all non-diagonal couplings to zero and request only diagonal couplings.
c     Otherwise, need to include flavor changing neutral currents
c     in HZ process
      do i=1,3
	do j=1,3
      	  ph_ReGDw(i,j) = 0d0
	  ph_ImGDw(i,j) = 0d0
          ph_ReGUw(i,j) = 0d0
          ph_ImGUw(i,j) = 0d0
          ph_Qphi3(i,j) = 0d0
          aux1(i,j)      = 0d0
	  aux2(i,j)      = 0d0
	  aux3(i,j)      = 0d0
	  aux4(i,j)      = 0d0
	  aux5(i,j)      = 0d0
	  aux6(i,j)      = 0d0

	enddo
      enddo

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Higgs-Gauge
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     phi^d phi WW and phi^d phi Wtilde W couplings
      ph_cww = powheginput("#CC_ww")
      if (ph_cww.lt.-1d5) ph_cww =0d0
      ph_cwwt = powheginput("#CC_wwt")/2d0
      if (ph_cwwt.lt.-1d5) ph_cwwt =0d0



ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Quark couplings
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      if(.not.mfv) then
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     DIPOLE
c
c  Define the neutral current couplings in the flavor basis
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     UP type dipoles
c     W dipole ReGUw:
	ph_ReGUw(1,1) = powheginput("#ReGUw_uu")
	ph_ReGUw(1,2) = powheginput("#ReGUw_uc")
	ph_ReGUw(1,3) = powheginput("#ReGUw_ut")
	ph_ReGUw(2,1) = powheginput("#ReGUw_cu")
	ph_ReGUw(2,2) = powheginput("#ReGUw_cc")
	ph_ReGUw(2,3) = powheginput("#ReGUw_ct")
	ph_ReGUw(3,1) = powheginput("#ReGUw_tu")
	ph_ReGUw(3,2) = powheginput("#ReGUw_tc")
	ph_ReGUw(3,3) = powheginput("#ReGUw_tt")
	if (ph_ReGUw(1,1).lt.-1d5) ph_ReGUw(1,1)=0d0
	if (ph_ReGUw(1,2).lt.-1d5) ph_ReGUw(1,2)=0d0
	if (ph_ReGUw(1,3).lt.-1d5) ph_ReGUw(1,3)=0d0
	if (ph_ReGUw(2,1).lt.-1d5) ph_ReGUw(2,1)=0d0
	if (ph_ReGUw(2,2).lt.-1d5) ph_ReGUw(2,2)=0d0
	if (ph_ReGUw(2,3).lt.-1d5) ph_ReGUw(2,3)=0d0
	if (ph_ReGUw(3,1).lt.-1d5) ph_ReGUw(3,1)=0d0
	if (ph_ReGUw(3,2).lt.-1d5) ph_ReGUw(3,2)=0d0
	if (ph_ReGUw(3,3).lt.-1d5) ph_ReGUw(3,3)=0d0
c     W dipole ImGUw
	ph_ImGUw(1,1) = powheginput("#ImGUw_uu")
	ph_ImGUw(1,2) = powheginput("#ImGUw_uc")
	ph_ImGUw(1,3) = powheginput("#ImGUw_ut")
	ph_ImGUw(2,1) = powheginput("#ImGUw_cu")
	ph_ImGUw(2,2) = powheginput("#ImGUw_cc")
	ph_ImGUw(2,3) = powheginput("#ImGUw_ct")
	ph_ImGUw(3,1) = powheginput("#ImGUw_tu")
	ph_ImGUw(3,2) = powheginput("#ImGUw_tc")
	ph_ImGUw(3,3) = powheginput("#ImGUw_tt")
	if (ph_ImGUw(1,1).lt.-1d5) ph_ImGUw(1,1)=0d0
	if (ph_ImGUw(1,2).lt.-1d5) ph_ImGUw(1,2)=0d0
	if (ph_ImGUw(1,3).lt.-1d5) ph_ImGUw(1,3)=0d0
	if (ph_ImGUw(2,1).lt.-1d5) ph_ImGUw(2,1)=0d0
	if (ph_ImGUw(2,2).lt.-1d5) ph_ImGUw(2,2)=0d0
	if (ph_ImGUw(2,3).lt.-1d5) ph_ImGUw(2,3)=0d0
	if (ph_ImGUw(3,1).lt.-1d5) ph_ImGUw(3,1)=0d0
	if (ph_ImGUw(3,2).lt.-1d5) ph_ImGUw(3,2)=0d0
	if (ph_ImGUw(3,3).lt.-1d5) ph_ImGUw(3,3)=0d0
c     DOWN type dipoles
c     W dipole ReGDw:
	ph_ReGDw(1,1) = powheginput("#ReGDw_dd")
	ph_ReGDw(1,2) = powheginput("#ReGDw_ds")
	ph_ReGDw(1,3) = powheginput("#ReGDw_db")
	ph_ReGDw(2,1) = powheginput("#ReGDw_sd")
	ph_ReGDw(2,2) = powheginput("#ReGDw_ss")
	ph_ReGDw(2,3) = powheginput("#ReGDw_sb")
	ph_ReGDw(3,1) = powheginput("#ReGDw_bd")
	ph_ReGDw(3,2) = powheginput("#ReGDw_bs")
	ph_ReGDw(3,3) = powheginput("#ReGDw_bb")
	if (ph_ReGDw(1,1).lt.-1d5) ph_ReGDw(1,1)=0d0
	if (ph_ReGDw(1,2).lt.-1d5) ph_ReGDw(1,2)=0d0
	if (ph_ReGDw(1,3).lt.-1d5) ph_ReGDw(1,3)=0d0
	if (ph_ReGDw(2,1).lt.-1d5) ph_ReGDw(2,1)=0d0
	if (ph_ReGDw(2,2).lt.-1d5) ph_ReGDw(2,2)=0d0
	if (ph_ReGDw(2,3).lt.-1d5) ph_ReGDw(2,3)=0d0
	if (ph_ReGDw(3,1).lt.-1d5) ph_ReGDw(3,1)=0d0
	if (ph_ReGDw(3,2).lt.-1d5) ph_ReGDw(3,2)=0d0
	if (ph_ReGDw(3,3).lt.-1d5) ph_ReGDw(3,3)=0d0
c     W dipole ImGDw
	ph_ImGDw(1,1) = powheginput("#ImGDw_dd")
	ph_ImGDw(1,2) = powheginput("#ImGDw_ds")
	ph_ImGDw(1,3) = powheginput("#ImGDw_db")
	ph_ImGDw(2,1) = powheginput("#ImGDw_sd")
	ph_ImGDw(2,2) = powheginput("#ImGDw_ss")
	ph_ImGDw(2,3) = powheginput("#ImGDw_sb")
	ph_ImGDw(3,1) = powheginput("#ImGDw_bd")
	ph_ImGDw(3,2) = powheginput("#ImGDw_bs")
	ph_ImGDw(3,3) = powheginput("#ImGDw_bb")
	if (ph_ImGDw(1,1).lt.-1d5) ph_ImGDw(1,1)=0d0
	if (ph_ImGDw(1,2).lt.-1d5) ph_ImGDw(1,2)=0d0
	if (ph_ImGDw(1,3).lt.-1d5) ph_ImGDw(1,3)=0d0
	if (ph_ImGDw(2,1).lt.-1d5) ph_ImGDw(2,1)=0d0
	if (ph_ImGDw(2,2).lt.-1d5) ph_ImGDw(2,2)=0d0
	if (ph_ImGDw(2,3).lt.-1d5) ph_ImGDw(2,3)=0d0
	if (ph_ImGDw(3,1).lt.-1d5) ph_ImGDw(3,1)=0d0
	if (ph_ImGDw(3,2).lt.-1d5) ph_ImGDw(3,2)=0d0
	if (ph_ImGDw(3,3).lt.-1d5) ph_ImGDw(3,3)=0d0


c     the CKM induces some additional non-diagonal
c     W couplings
c     ReGU
	do i=1,3
	  do j = 1,3
	    do k = 1,3
	    aux1(i,j) = aux1(i,j) + ph_ReGUw(k,i) * ph_CKM(k,j)
	    aux2(i,j) = aux2(i,j) - ph_ImGUw(k,i) * ph_CKM(k,j)
	    aux3(i,j) = aux3(i,j) + ph_CKM(i,k) * ph_ReGDw(k,j)
	    aux4(i,j) = aux4(i,j) + ph_CKM(i,k) * ph_ImGDw(k,j)
	    enddo
	  enddo
	enddo

	ph_ReGUw = aux1
	ph_ImGUw = aux2
	ph_ReGDw = aux3
	ph_ImGDw = aux4

	do i=1,3
	  do j=1,3
	    aux1(i,j)      = 0d0
	    aux2(i,j)      = 0d0
	    aux3(i,j)      = 0d0
	    aux4(i,j)      = 0d0
	  enddo
	enddo

ccccccccccccccccccccccccccccccccccccccccccccccccccc
c  Non standard Yukawa couplings
cccccccccccccccccccccccccccccccccccccccccccccccccccc
c   Up yukawa
	ph_ReYu(1,1) = powheginput("#ReYu_uu")
	ph_ReYu(1,2) = powheginput("#ReYu_uc")
	ph_ReYu(1,3) = powheginput("#ReYu_ut")
	ph_ReYu(2,1) = powheginput("#ReYu_cu")
	ph_ReYu(2,2) = powheginput("#ReYu_cc")
	ph_ReYu(2,3) = powheginput("#ReYu_ct")
	ph_ReYu(3,1) = powheginput("#ReYu_tu")
	ph_ReYu(3,2) = powheginput("#ReYu_tc")
	ph_ReYu(3,3) = powheginput("#ReYu_tt")
	if (ph_ReYu(1,1).lt.-1d5) ph_ReYu(1,1) =0d0
	if (ph_ReYu(1,2).lt.-1d5) ph_ReYu(1,2) =0d0
	if (ph_ReYu(1,3).lt.-1d5) ph_ReYu(1,3) =0d0
	if (ph_ReYu(2,1).lt.-1d5) ph_ReYu(2,1) =0d0
	if (ph_ReYu(2,2).lt.-1d5) ph_ReYu(2,2) =0d0
	if (ph_ReYu(2,3).lt.-1d5) ph_ReYu(2,3) =0d0
	if (ph_ReYu(3,1).lt.-1d5) ph_ReYu(3,1) =0d0
	if (ph_ReYu(3,2).lt.-1d5) ph_ReYu(3,2) =0d0
	if (ph_ReYu(3,3).lt.-1d5) ph_ReYu(3,3) =0d0
	ph_ImYu(1,1) = powheginput("#ImYu_uu")
	ph_ImYu(1,2) = powheginput("#ImYu_uc")
	ph_ImYu(1,3) = powheginput("#ImYu_ut")
	ph_ImYu(2,1) = powheginput("#ImYu_cu")
	ph_ImYu(2,2) = powheginput("#ImYu_cc")
	ph_ImYu(2,3) = powheginput("#ImYu_ct")
	ph_ImYu(3,1) = powheginput("#ImYu_tu")
	ph_ImYu(3,2) = powheginput("#ImYu_tc")
	ph_ImYu(3,3) = powheginput("#ImYu_tt")
	if (ph_ImYu(1,1).lt.-1d5) ph_ImYu(1,1) =0d0
	if (ph_ImYu(1,2).lt.-1d5) ph_ImYu(1,2) =0d0
	if (ph_ImYu(1,3).lt.-1d5) ph_ImYu(1,3) =0d0
	if (ph_ImYu(2,1).lt.-1d5) ph_ImYu(2,1) =0d0
	if (ph_ImYu(2,2).lt.-1d5) ph_ImYu(2,2) =0d0
	if (ph_ImYu(2,3).lt.-1d5) ph_ImYu(2,3) =0d0
	if (ph_ImYu(3,1).lt.-1d5) ph_ImYu(3,1) =0d0
	if (ph_ImYu(3,2).lt.-1d5) ph_ImYu(3,2) =0d0
	if (ph_ImYu(3,3).lt.-1d5) ph_ImYu(3,3) =0d0
c     Down Yukawa
	ph_ReYd(1,1) = powheginput("#ReYd_dd")
	ph_ReYd(1,2) = powheginput("#ReYd_ds")
	ph_ReYd(1,3) = powheginput("#ReYd_db")
	ph_ReYd(2,1) = powheginput("#ReYd_sd")
	ph_ReYd(2,2) = powheginput("#ReYd_ss")
	ph_ReYd(2,3) = powheginput("#ReYd_sb")
	ph_ReYd(3,1) = powheginput("#ReYd_bd")
	ph_ReYd(3,2) = powheginput("#ReYd_bs")
	ph_ReYd(3,3) = powheginput("#ReYd_bb")
	if (ph_ReYd(1,1).lt.-1d5) ph_ReYd(1,1) =0d0
	if (ph_ReYd(1,2).lt.-1d5) ph_ReYd(1,2) =0d0
	if (ph_ReYd(1,3).lt.-1d5) ph_ReYd(1,3) =0d0
	if (ph_ReYd(2,1).lt.-1d5) ph_ReYd(2,1) =0d0
	if (ph_ReYd(2,2).lt.-1d5) ph_ReYd(2,2) =0d0
	if (ph_ReYd(2,3).lt.-1d5) ph_ReYd(2,3) =0d0
	if (ph_ReYd(3,1).lt.-1d5) ph_ReYd(3,1) =0d0
	if (ph_ReYd(3,2).lt.-1d5) ph_ReYd(3,2) =0d0
	if (ph_ReYd(3,3).lt.-1d5) ph_ReYd(3,3) =0d0
	ph_ImYd(1,1) = powheginput("#ImYd_dd")
	ph_ImYd(1,2) = powheginput("#ImYd_ds")
	ph_ImYd(1,3) = powheginput("#ImYd_db")
	ph_ImYd(2,1) = powheginput("#ImYd_sd")
	ph_ImYd(2,2) = powheginput("#ImYd_ss")
	ph_ImYd(2,3) = powheginput("#ImYd_sb")
	ph_ImYd(3,1) = powheginput("#ImYd_bd")
	ph_ImYd(3,2) = powheginput("#ImYd_bs")
	ph_ImYd(3,3) = powheginput("#ImYd_bb")
	if (ph_ImYd(1,1).lt.-1d5) ph_ImYd(1,1) =0d0
	if (ph_ImYd(1,2).lt.-1d5) ph_ImYd(1,2) =0d0
	if (ph_ImYd(1,3).lt.-1d5) ph_ImYd(1,3) =0d0
	if (ph_ImYd(2,1).lt.-1d5) ph_ImYd(2,1) =0d0
	if (ph_ImYd(2,2).lt.-1d5) ph_ImYd(2,2) =0d0
	if (ph_ImYd(2,3).lt.-1d5) ph_ImYd(2,3) =0d0
	if (ph_ImYd(3,1).lt.-1d5) ph_ImYd(3,1) =0d0
	if (ph_ImYd(3,2).lt.-1d5) ph_ImYd(3,2) =0d0
	if (ph_ImYd(3,3).lt.-1d5) ph_ImYd(3,3) =0d0

c     multiply by the appropriate CKM factors
c     W couplings
c     ReGU
	do i=1,3
	  do j = 1,3
	    do k = 1,3
	    aux1(i,j) = aux1(i,j) + ph_ReYu(k,i) * ph_CKM(k,j)
	    aux2(i,j) = aux2(i,j) - ph_ImYu(k,i) * ph_CKM(k,j)
	    aux3(i,j) = aux3(i,j) + ph_CKM(i,k) * ph_ReYd(k,j)
	    aux4(i,j) = aux4(i,j) + ph_CKM(i,k) * ph_ImYd(k,j)
	    enddo
	  enddo
	enddo

	ph_ReYu = aux1
	ph_ImYu = aux2
	ph_ReYd = aux3
	ph_ImYd = aux4

	do i=1,3
	  do j=1,3
	    aux1(i,j)      = 0d0
	    aux2(i,j)      = 0d0
	    aux3(i,j)      = 0d0
	    aux4(i,j)      = 0d0
	  enddo
	enddo



ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Right-handed currents
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Real Part of Xi
	ph_ReXi(1,1) = powheginput("#ReXi_ud")
	if (ph_ReXi(1,1).lt.-1d5) ph_ReXi(1,1)=0d0
	ph_ReXi(1,2) = powheginput("#ReXi_us")
	if (ph_ReXi(1,2).lt.-1d5) ph_ReXi(1,2)=0d0
	ph_ReXi(1,3) = powheginput("#ReXi_ub")
	if (ph_ReXi(1,3).lt.-1d5) ph_ReXi(1,3)=0d0
	ph_ReXi(2,1) = powheginput("#ReXi_cd")
	if (ph_ReXi(2,1).lt.-1d5) ph_ReXi(2,1)=0d0
	ph_ReXi(2,2) = powheginput("#ReXi_cs")
	if (ph_ReXi(2,2).lt.-1d5) ph_ReXi(2,2)=0d0
	ph_ReXi(2,3) = powheginput("#ReXi_cb")
	if (ph_ReXi(2,3).lt.-1d5) ph_ReXi(2,3)=0d0
	ph_ReXi(3,1) = powheginput("#ReXi_td")
	if (ph_ReXi(3,1).lt.-1d5) ph_ReXi(3,1)=0d0
	ph_ReXi(3,2) = powheginput("#ReXi_ts")
	if (ph_ReXi(3,2).lt.-1d5) ph_ReXi(3,2)=0d0
	ph_ReXi(3,3) = powheginput("#ReXi_tb")
	if (ph_ReXi(3,3).lt.-1d5) ph_ReXi(3,3)=0d0
c     Imaginary Part of Xi
	ph_ImXi(1,1) = powheginput("#ImXi_ud")
	if (ph_ImXi(1,1).lt.-1d5) ph_ImXi(1,1)=0d0
	ph_ImXi(1,2) = powheginput("#ImXi_us")
	if (ph_ImXi(1,2).lt.-1d5) ph_ImXi(1,2)=0d0
	ph_ImXi(1,3) = powheginput("#ImXi_ub")
	if (ph_ImXi(1,3).lt.-1d5) ph_ImXi(1,3)=0d0
	ph_ImXi(2,1) = powheginput("#ImXi_cd")
	if (ph_ImXi(2,1).lt.-1d5) ph_ImXi(2,1)=0d0
	ph_ImXi(2,2) = powheginput("#ImXi_cs")
	if (ph_ImXi(2,2).lt.-1d5) ph_ImXi(2,2)=0d0
	ph_ImXi(2,3) = powheginput("#ImXi_cb")
	if (ph_ImXi(2,3).lt.-1d5) ph_ImXi(2,3)=0d0
	ph_ImXi(3,1) = powheginput("#ImXi_td")
	if (ph_ImXi(3,1).lt.-1d5) ph_ImXi(3,1)=0d0
	ph_ImXi(3,2) = powheginput("#ImXi_ts")
	if (ph_ImXi(3,2).lt.-1d5) ph_ImXi(3,2)=0d0
	ph_ImXi(3,3) = powheginput("#ImXi_tb")
	if (ph_ImXi(3,3).lt.-1d5) ph_ImXi(3,3)=0d0


ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Vertex corrections 						c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Matrices have to be hermitian.
c     left handed quarks. Up type
	ph_QphiU(1,1) = powheginput("#QphiU_uu")
	ph_QphiU(1,2) = powheginput("#QphiU_uc")
	ph_QphiU(1,3) = powheginput("#QphiU_ut")
	ph_QphiU(2,2) = powheginput("#QphiU_cc")
	ph_QphiU(2,3) = powheginput("#QphiU_ct")
	ph_QphiU(3,3) = powheginput("#QphiU_tt")
	if (ph_QphiU(1,1).lt.-1d5) ph_QphiU(1,1)=0d0
	if (ph_QphiU(1,2).lt.-1d5) ph_QphiU(1,2)=0d0
	if (ph_QphiU(1,3).lt.-1d5) ph_QphiU(1,3)=0d0
	if (ph_QphiU(2,2).lt.-1d5) ph_QphiU(2,2)=0d0
	if (ph_QphiU(2,3).lt.-1d5) ph_QphiU(2,3)=0d0
	if (ph_QphiU(3,3).lt.-1d5) ph_QphiU(3,3)=0d0
	ph_QphiU(2,1) = ph_QphiU(1,2)
	ph_QphiU(3,1) = ph_QphiU(1,3)
	ph_QphiU(3,2) = ph_QphiU(2,3)
c     left handed quark. Down type
	ph_QphiD(1,1) = powheginput("#QphiD_dd")
	ph_QphiD(1,2) = powheginput("#QphiD_ds")
	ph_QphiD(1,3) = powheginput("#QphiD_db")
	ph_QphiD(2,2) = powheginput("#QphiD_ss")
	ph_QphiD(2,3) = powheginput("#QphiD_sb")
	ph_QphiD(3,3) = powheginput("#QphiD_bb")
	if (ph_QphiD(1,1).lt.-1d5) ph_QphiD(1,1)=0d0
	if (ph_QphiD(1,2).lt.-1d5) ph_QphiD(1,2)=0d0
	if (ph_QphiD(1,3).lt.-1d5) ph_QphiD(1,3)=0d0
	if (ph_QphiD(2,2).lt.-1d5) ph_QphiD(2,2)=0d0
	if (ph_QphiD(2,3).lt.-1d5) ph_QphiD(2,3)=0d0
	if (ph_QphiD(3,3).lt.-1d5) ph_QphiD(3,3)=0d0
	ph_QphiD(2,1) = ph_QphiD(1,2)
	ph_QphiD(3,1) = ph_QphiD(1,3)
	ph_QphiD(3,2) = ph_QphiD(2,3)

c     CKM effects
	do i=1,3
	  do j = 1,3
	    do k = 1,3
	    aux1(i,j) = aux1(i,j) + 1/2d0*
     .   ( ph_CKM(i,k) * ph_QphiD(k,j)  )
     .    -1/2d0 *
     .	 ( ph_QphiU(i,k) * ph_CKM(k,j) )
	    enddo
	  enddo
	enddo

	ph_Qphi3 = aux1
	do i=1,3
	  do j=1,3
	    aux1(i,j)      = 0d0
	  enddo
	enddo

      endif


c     MFV structure for the coupligs
      if(mfv) then
c     MVF couplings for vertex corrections
        ph_A_QphiU =  powheginput("#A_QphiU")
        ph_A_QphiD =  powheginput("#A_QphiD")
        ph_B_QphiD =  powheginput("#B_QphiD")
	if (ph_A_QphiU.lt.-1d5) ph_A_QphiU =0d0
 	if (ph_A_QphiD.lt.-1d5) ph_A_QphiD =0d0
	if (ph_B_QphiD.lt.-1d5) ph_B_QphiD =0d0
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Vertex corrections 						c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Matrices have to be hermitian.
c     left handed quarks. Up type
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Vertex corrections 						c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     Matrices have to be hermitian.
c     left handed quarks, up type
	ph_QphiU(1,1) = ph_A_QphiU
	ph_QphiU(2,2) = ph_A_QphiU
	ph_QphiU(3,3) = ph_A_QphiU
c     left handed quarks, down type
	ph_QphiD(1,1) = ph_A_QphiD + ph_CKM(3,1)**2 * ph_B_QphiD
	ph_QphiD(1,2) = ph_CKM(3,1)* ph_CKM(3,2)    * ph_B_QphiD
	ph_QphiD(1,3) = ph_CKM(3,1)* ph_CKM(3,3)    * ph_B_QphiD
	ph_QphiD(2,2) = ph_A_QphiD + ph_CKM(3,2)**2 * ph_B_QphiD
	ph_QphiD(2,3) = ph_CKM(3,2)* ph_CKM(3,3)    * ph_B_QphiD
	ph_QphiD(3,3) = ph_A_QphiD + ph_CKM(3,3)**2 * ph_B_QphiD
	ph_QphiD(2,1) = ph_QphiD(1,2)
	ph_QphiD(3,1) = ph_QphiD(1,3)
	ph_QphiD(3,2) = ph_QphiD(2,3)
c     CKM effects
	do i=1,3
	  do j = 1,3
	    do k = 1,3
	    aux1(i,j) = aux1(i,j) + 1/2d0*
     .   ( ph_CKM(i,k) * ph_QphiD(k,j)  )
     .    -1/2d0 *
     .	 ( ph_QphiU(i,k) * ph_CKM(k,j) )
	    enddo
	  enddo
	enddo

	ph_Qphi3 = aux1
	do i=1,3
	  do j=1,3
	    aux1(i,j)      = 0d0
	  enddo
	enddo

      endif


c      set all the couplings to zero
      if(.not.wdm) then
	do i=1,3
	  do j=1,3
	    ph_ReGUw(i,j) = 0d0
	    ph_ReGDw(i,j) = 0d0
	    ph_ReYu(i,j) = 0d0
	    ph_ReYd(i,j) = 0d0
	    ph_ImYu(i,j) = 0d0
	    ph_ImYd(i,j) = 0d0
	    ph_Qphi3(i,j) = 0d0
	  enddo
	enddo
	ph_cww = 0d0
	ph_cwwt = 0d0
      endif




cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccc   DEPENDENT QUANTITIES
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
      ph_sthw = sqrt(ph_sthw2)
      ph_cthw = sqrt(1-ph_sthw2)
      ph_Zmass2 = ph_Zmass**2
      ph_Wmass2 = ph_Wmass**2

c******************************************************
c     Choose the process to be implemented
c******************************************************
c    ID of vector boson produced
      idvecbos=powheginput('idvecbos')
c   decay products of the vector boson
      Vdecmod=powheginput('vdecaymode')

      if(idvecbos.eq.24) then
         if (Vdecmod.eq.1) then
            vdecaymode=-11
         elseif (Vdecmod.eq.2) then
            vdecaymode=-13
         elseif (Vdecmod.eq.3) then
            vdecaymode=-15
         else
            write(*,*) 'ERROR: The decay mode you selected ',Vdecmod,
     $           ' is not allowed '
            call pwhg_exit(1)
         endif
         write(*,*)
         write(*,*) ' POWHEG: H W+ production and decay '
         if (vdecaymode.eq.-11) write(*,*) '  to e+ ve '
         if (vdecaymode.eq.-13) write(*,*) '  to mu+ vmu'
         if (vdecaymode.eq.-15) write(*,*) '  to tau+ vtau'
         write(*,*)
      elseif(idvecbos.eq.-24) then
         if (Vdecmod.eq.1) then
            vdecaymode=11
         elseif (Vdecmod.eq.2) then
            vdecaymode=13
         elseif (Vdecmod.eq.3) then
            vdecaymode=15
         else
            write(*,*) 'ERROR: The decay mode you selected ',Vdecmod,
     $           ' is not allowed '
            call pwhg_exit(1)
         endif
         write(*,*)
         write(*,*) ' POWHEG: H W- production and decay '
         if (vdecaymode.eq.11) write(*,*) '  to e- ve~ '
         if (vdecaymode.eq.13) write(*,*) '  to mu- vmu~'
         if (vdecaymode.eq.15) write(*,*) '  to tau- vtau~'
         write(*,*)
      else
         write(*,*) 'ERROR: The ID of vector boson you selected ',
     $        idvecbos, ' is not allowed (24: W+ -24: W-)'
         call pwhg_exit(1)
      endif

c     Set here lepton and quark masses for momentum reshuffle in the LHE event file
      physpar_ml(1) = 0.51099891d-3
      physpar_ml(2) = 0.1056583668d0
      physpar_ml(3) = 1.77684d0
      physpar_mq(1) = 0.33d0     ! down
      physpar_mq(2) = 0.33d0     ! up
      physpar_mq(3) = 0.50d0     ! strange
      physpar_mq(4) = 1.50d0     ! charm
      physpar_mq(5) = 4.5d0      ! bottom

      if (abs(vdecaymode).eq.11) decmass = physpar_ml(1)
      if (abs(vdecaymode).eq.13) decmass = physpar_ml(2)
      if (abs(vdecaymode).eq.15) decmass = physpar_ml(3)

      if (ph_Wmass2low.lt.decmass**2) then
         write(*,*) 'min_w_mass less than the minimun invariant mass of'
         write(*,*) 'the final-state leptonic system ',decmass
         write(*,*) 'POWHEG aborts'
         call pwhg_exit(-1)
      endif

      end

