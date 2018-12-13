c -*- Fortran -*-
      real * 8 ph_alphaem,ph_Zmass,ph_Zwidth,ph_Wmass,ph_Wwidth,ph_cthw,
     $     ph_sthw,ph_sthw2, ph_vev, ph_geff, ph_gcweff,
     $	   ph_Zmass2,ph_Zmass2low, ph_Zmass2high,
     $     ph_Wmass2,ph_Wmass2low,ph_Wmass2high ,ph_ZmZw,ph_WmWw,
     $     ph_unit_e, ph_CKM(3,3),
     $     ph_ReGUw(3,3), ph_ReGDw(3,3), 
     $     ph_ImGUw(3,3), ph_ImGDw(3,3),
     $     ph_ReXi(3,3), ph_ImXi(3,3), 
     $     ph_QphiU(3,3), ph_QphiD(3,3), ph_Qphi3(3,3),
     $     ph_QLu(3,3), ph_QLd(3,3), ph_QL3(3,3), 
     $	   ph_Re_LeQu(3,3), ph_Re_LedQ(3,3), ph_Re_LeQu3(3,3),
     $     ph_Im_LeQu(3,3), ph_Im_LedQ(3,3), ph_Im_LeQu3(3,3), 
     $     ph_A_QphiU, ph_A_QphiD, ph_B_QphiD,
     $	   ph_A_QLu, ph_A_QLd, ph_B_QLd,
     $	   ph_ReGEw,   ph_ImGEw,  LambdaNP
      logical ph_runwidth, wdm, mfv
      common/ph_common/ph_alphaem,ph_Zmass,ph_Zwidth,ph_Wmass,ph_Wwidth,
     $     ph_cthw,ph_sthw,ph_sthw2,ph_vev, ph_geff, ph_gcweff,
     $	   ph_Zmass2,ph_Zmass2low,
     $     ph_Zmass2high,ph_Wmass2,ph_Wmass2low,ph_Wmass2high ,ph_ZmZw,
     $     ph_WmWw,ph_unit_e,ph_CKM,
     $     ph_ReGUw,ph_ReGDw,ph_ImGUw,ph_ImGDw,ph_ReXi,ph_ImXi,
     $	   ph_QphiU, ph_QphiD, ph_Qphi3,
     $	   ph_QLu, ph_QLd, ph_QL3,
     $     ph_Re_LeQu, ph_Re_LedQ, ph_Re_LeQu3,
     $	   ph_Im_LeQu, ph_Im_LedQ, ph_Im_LeQu3,
     $     ph_ReGEw, ph_ImGEw,
     $     ph_A_QphiU, ph_A_QphiD, ph_B_QphiD,
     $	   ph_A_QLu, ph_A_QLd, ph_B_QLd,
     $     LambdaNP, ph_runwidth, wdm, mfv
      
      
