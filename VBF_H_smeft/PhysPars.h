c -*- Fortran -*-
      real * 8 ph_alphaem,ph_Zmass,ph_Zwidth,ph_Wmass,ph_Wwidth,ph_cthw,
     $     ph_sthw,ph_sthw2,ph_Zmass2,ph_Zmass2low,ph_Zmass2high,
     $     ph_geff, ph_gcweff, ph_vev,
     $     ph_Wmass2,ph_Wmass2low,ph_Wmass2high ,ph_ZmZw,ph_WmWw,
     $     ph_unit_e, ph_CKM(3,3), ph_Hmass,ph_Hwidth, ph_Hmass2, 
     $     ph_HmHw, ph_CKM_matrix(6,6),ph_Hmass2low,ph_Hmass2high,
     $     ph_topmass,
     $     ph_ReGUw(3,3), ph_ReGDw(3,3), ph_ImGUw(3,3), ph_ImGDw(3,3), 
     $     ph_ReGU_W(3,3), ph_ReGD_W(3,3), ph_ImGU_W(3,3), 
     $	   ph_ImGD_W(3,3), 
     $     ph_ReGUe(3,3), ph_ReGDe(3,3), ph_ImGUe(3,3), ph_ImGDe(3,3),
     $     ph_ReXi(3,3),  ph_ImXi(3,3),  ph_Qphi1(3),   ph_Qphi3(3),
     $     ph_QphiW(3,3), ph_Uphi(3),  ph_Dphi(3), 
     $	   ph_cww, ph_cbb, ph_cwb, ph_cwwt, ph_cbbt, ph_cwbt,LambdaNP,
     $     ph_A_QphiU, ph_A_Uphi, ph_A_QphiD, ph_B_QphiD, ph_A_Dphi
      logical wdm,  mfv          
      common/ph_common/ph_alphaem,ph_Zmass,ph_Zwidth,ph_Wmass,ph_Wwidth,
     $     ph_cthw,ph_sthw,ph_sthw2,ph_Zmass2,ph_Zmass2low,
     $     ph_Zmass2high,
     $     ph_geff, ph_gcweff, ph_vev,
     $	   ph_Wmass2,ph_Wmass2low,ph_Wmass2high ,ph_ZmZw,
     $     ph_WmWw,ph_unit_e,ph_CKM, ph_Hmass,ph_Hwidth, ph_Hmass2, 
     $     ph_HmHw, ph_CKM_matrix,ph_Hmass2low,ph_Hmass2high,
     $     ph_topmass, ph_ReGUw, ph_ReGDw, ph_ImGUw, ph_ImGDw, 
     $     ph_ReGUe, ph_ReGDe, ph_ImGUe, ph_ImGDe, 
     $     ph_ReGU_W, ph_ReGD_W, ph_ImGU_W, ph_ImGD_W,
     $ 	   ph_ReXi, ph_ImXi, 
     $     ph_Qphi1, ph_Qphi3, ph_QphiW, ph_Uphi,  ph_Dphi,
     $     ph_cww, ph_cbb, ph_cwb, ph_cwwt, ph_cbbt, ph_cwbt,
     $     ph_A_QphiU, ph_A_Uphi, ph_A_QphiD, ph_B_QphiD, ph_A_Dphi,
     $     LambdaNP, wdm, mfv
      
      
