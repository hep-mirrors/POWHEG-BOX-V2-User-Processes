c -*- Fortran -*-
      real * 8 ph_alphaem,ph_Zmass,ph_Zwidth,ph_Wmass,ph_Wwidth,ph_cthw,
     $     ph_sthw,ph_sthw2,ph_Zmass2,ph_Zmass2low,ph_Zmass2high,
     $     ph_Wmass2,ph_Wmass2low,ph_Wmass2high ,ph_ZmZw,ph_WmWw,
     $     ph_unit_e, ph_CKM(3,3), ph_Hmass,ph_Hwidth, ph_Hmass2, 
     $     ph_HmHw, ph_CKM_matrix(6,6),ph_Hmass2low,ph_Hmass2high,
     $     ph_gfermi
      common/ph_common/ph_alphaem,ph_Zmass,ph_Zwidth,ph_Wmass,ph_Wwidth,
     $     ph_cthw,ph_sthw,ph_sthw2,ph_Zmass2,ph_Zmass2low,
     $     ph_Zmass2high,ph_Wmass2,ph_Wmass2low,ph_Wmass2high ,ph_ZmZw,
     $     ph_WmWw,ph_unit_e,ph_CKM, ph_Hmass,ph_Hwidth, ph_Hmass2, 
     $     ph_HmHw, ph_CKM_matrix,ph_Hmass2low,ph_Hmass2high,
     $     ph_gfermi
     
      character *2 phdm_mode
      character *1 phdm_efftheory
      real *8 phdm_LambdaUV,phdm_phimass,phdm_phiwidth,phdm_gDM,phdm_gSM
      logical phdm_rw
      common/phdm_common/phdm_LambdaUV,phdm_phimass,phdm_phiwidth,
     $     phdm_mode,phdm_efftheory,phdm_gDM,phdm_gSM,phdm_rw
      
