c -*- Fortran -*-
      real * 8 ph_alphaem,ph_Zmass,ph_Zwidth,ph_Wmass,ph_Wwidth,ph_cthw,
     $     ph_sthw,ph_sthw2,ph_Zmass2,ph_Zmass2low,ph_Zmass2high,
     $     ph_Wmass2,ph_Wmass2low,ph_Wmass2high ,ph_ZmZw,ph_WmWw,
     $     ph_unit_e, ph_CKM(3,3)
      common/ph_common/ph_alphaem,ph_Zmass,ph_Zwidth,ph_Wmass,ph_Wwidth,
     $     ph_cthw,ph_sthw,ph_sthw2,ph_Zmass2,ph_Zmass2low,
     $     ph_Zmass2high,ph_Wmass2,ph_Wmass2low,ph_Wmass2high ,ph_ZmZw,
     $     ph_WmWw,ph_unit_e,ph_CKM

      character *2 phdm_mode
      character *1 phdm_efftheory
      real *8 phdm_LambdaUV,phdm_Vmass,phdm_Vwidth,phdm_gDM,phdm_gSM
      logical phdm_rw
      common/phdm_common/phdm_LambdaUV,phdm_Vmass,phdm_Vwidth,
     $     phdm_mode,phdm_efftheory,phdm_gDM,phdm_gSM,phdm_rw
