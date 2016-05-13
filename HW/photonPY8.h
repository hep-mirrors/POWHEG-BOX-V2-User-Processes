c -*- Fortran -*-
      integer HEPnmaxpart
      parameter (HEPnmaxpart=10)

      integer HEPngam_prod_LH, HEPngam_prod_SWR, 
     $        HEPngam_res_LH,  HEPngam_res_SWR
      integer HEPpos_gamarr(HEPnmaxpart),
     $     HEPpos_gamarr_prod_SWR(HEPnmaxpart),HEPpos_gamarr_prod_LH(HEPnmaxpart),
     $     HEPpos_gamarr_res_LH(HEPnmaxpart),HEPpos_gamarr_res_SWR(HEPnmaxpart)
       common/cphotonPY8/HEPngam_prod_LH, HEPngam_prod_SWR, 
     $                  HEPngam_res_LH,  HEPngam_res_SWR,
     $     HEPpos_gamarr_prod_SWR,HEPpos_gamarr_prod_LH,
     $     HEPpos_gamarr_res_LH,HEPpos_gamarr_res_SWR
