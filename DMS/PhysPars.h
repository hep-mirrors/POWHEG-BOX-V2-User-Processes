c -*- Fortran -*-
      real * 8 ph_alphaem,ph_Hmass,ph_Hwidth,ph_cthw,
     $     ph_sthw,ph_sthw2,ph_Hmass2,ph_Hmass2low,ph_Hmass2high,
     $     ph_HmHw,ph_unit_e,ph_CKM(3,3)
      common/ph_common/ph_alphaem,ph_Hmass,ph_Hwidth,
     $     ph_cthw,ph_sthw,ph_sthw2,ph_Hmass2,ph_Hmass2low,
     $     ph_Hmass2high,ph_HmHw,ph_unit_e,ph_CKM

      character *2 phdm_mode
      character *1 phdm_efftheory
      real *8 phdm_LambdaUV,phdm_phimass,phdm_phiwidth
      real *8 phdm_qqphi(5)
      common/phdm_common/phdm_LambdaUV,phdm_phimass,phdm_phiwidth,
     $     phdm_qqphi,
     $     phdm_mode,phdm_efftheory
      
