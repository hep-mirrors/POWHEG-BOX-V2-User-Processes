
      subroutine vtowz_born_reset
      implicit none
      include 'tensor_wz_born.inc'
      complex*16 zero
      parameter (zero=(0d0,0d0))
      
      wl_born=zero
      wn_born=zero
      lp_born=zero
      lm_born=zero
      zbbar_born=zero
      zb_born=zero
      
      we_born=zero
      zu_born=zero
      au_born=zero
     
      wet_born=zero
      zut_born=zero
      aut_born=zero
      qe_born=0d0
      qu_born=0d0
              
      xxew_born=zero
      xxua_born=zero
      xxuz_born=zero

      wwv_born = zero

      awwv_born = zero
      zwwv_born = zero
      wzwv_born = zero
      wawv_born = zero

      awen_born = zero
      zwen_born = zero
      waen_born = zero
      wzen_born = zero

      aauu_born = zero
      azuu_born = zero
      zauu_born = zero
      zzuu_born = zero     

      wwuu_born = zero
	

      return
      end

c==============================================

      subroutine vtowz_real_reset
      implicit none
      include 'tensor_wz_real.inc'
      complex*16 zero
      parameter (zero=(0d0,0d0))
      
      wl_real=zero
      wn_real=zero
      lp_real=zero
      lm_real=zero
      
      we_real=zero
      zu_real=zero
      au_real=zero
     
      wet_real=zero
      zut_real=zero
      aut_real=zero
      qe_real=0d0
      qu_real=0d0
              
      xxew_real=zero
      xxua_real=zero
      xxuz_real=zero

      wwv_real = zero

      awwv_real = zero
      zwwv_real = zero
      wzwv_real = zero
      wawv_real = zero

      awen_real = zero
      zwen_real = zero
      waen_real = zero
      wzen_real = zero

      aauu_real = zero
      azuu_real = zero
      zauu_real = zero
      zzuu_real = zero     

      wwuu_real = zero
      
      return
      end

