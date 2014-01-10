
      subroutine vtozz_born_reset
      implicit none
      include 'tensor_zz_born.inc'
      complex*16 zero
      parameter (zero=(0d0,0d0))
     
      lep_born=zero
      lem_born=zero
      lup_born=zero
      lum_born=zero
      
      ze_born=zero
      zu_born=zero
      ae_born=zero
      au_born=zero
     
      zet_born=zero
      zut_born=zero
      aet_born=zero
      aut_born=zero
      qe_born=0d0
      qu_born=0d0
              
      xxea_born=zero
      xxua_born=zero
      xxez_born=zero
      xxuz_born=zero

      azz_born = zero
      zzz_born = zero
      wwzz5_born = zero
      wwzz6_born = zero
      aazz_born = zero
      azzz_born = zero
      zazz_born = zero
      zzzz_born = zero
      aaee_born = zero
      azee_born = zero
      zaee_born = zero
      zzee_born = zero
      aauu_born = zero
      azuu_born = zero
      zauu_born = zero
      zzuu_born = zero
      CCee_born = zero
      CCuu_born = zero 
      CCee6_born = zero 
      CCuu6_born = zero	       
	

      return
      end

c==============================================

      subroutine vtozz_real_reset
      implicit none
      include 'tensor_zz_real.inc'
      complex*16 zero
      parameter (zero=(0d0,0d0))
     
      lep_real=zero
      lem_real=zero
      lup_real=zero
      lum_real=zero
      
      ze_real=zero
      zu_real=zero
      ae_real=zero
      au_real=zero
     
      zet_real=zero
      zut_real=zero
      aet_real=zero
      aut_real=zero
      qe_real=0d0
      qu_real=0d0
              
      xxea_real=zero
      xxua_real=zero
      xxez_real=zero
      xxuz_real=zero

      azz_real = zero
      zzz_real = zero
      wwzz5_real = zero
      wwzz6_real = zero
      aazz_real = zero
      azzz_real = zero
      zazz_real = zero
      zzzz_real = zero
      aaee_real = zero
      azee_real = zero
      zaee_real = zero
      zzee_real = zero
      aauu_real = zero
      azuu_real = zero
      zauu_real = zero
      zzuu_real = zero
      CCee_real = zero
      CCuu_real = zero 
      CCee6_real = zero 
      CCuu6_real = zero	       
	

      
      return
      end

