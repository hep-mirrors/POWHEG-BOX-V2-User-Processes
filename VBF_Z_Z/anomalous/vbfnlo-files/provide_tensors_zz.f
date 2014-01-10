
      subroutine provide_tensors_zz(ttype)
      implicit none
      include 'tensor_zz.inc'
      include 'tensor_zz_born.inc'
      include 'tensor_zz_real.inc'
      integer i,j,jj,mu,nu
      integer ttype

      if (ttype.eq.1) then

      lep = lep_born
      lem = lem_born
      lup = lup_born
      lum = lum_born
c     
      ze = ze_born
      zu = zu_born
      ae = ae_born
      au = au_born
c     
      zet = zet_born
      zut = zut_born
      aet = aet_born
      aut = aut_born
     
      qe = qe_born
      qu = qu_born
              
      xxea = xxea_born
      xxua = xxua_born
      xxez = xxez_born
      xxuz = xxuz_born

      azz = azz_born
      zzz = zzz_born
      
      wwzz5 = wwzz5_born 
      wwzz6 = wwzz6_born 
      aazz  = aazz_born 
      azzz  = azzz_born 
      zazz  = zazz_born 
      zzzz  = zzzz_born 
      aaee = aaee_born 
      azee = azee_born 
      zaee = zaee_born 
      zzee = zzee_born 
      aauu = aauu_born 
      azuu = azuu_born 
      zauu = zauu_born 
      zzuu = zzuu_born 
      CCee = CCee_born 
      CCuu = CCuu_born  
      CCee6 = CCee6_born  
      CCuu6 = CCuu6_born 	       
	
      elseif (ttype.eq.3) then !real-emission type
      
      lep = lep_real
      lem = lem_real
      lup = lup_real
      lum = lum_real
c     
      ze = ze_real
      zu = zu_real
      ae = ae_real
      au = au_real
c     
      zet = zet_real
      zut = zut_real
      aet = aet_real
      aut = aut_real
     
      qe = qe_real
      qu = qu_real
              
      xxea = xxea_real
      xxua = xxua_real
      xxez = xxez_real
      xxuz = xxuz_real

      azz = azz_real
      zzz = zzz_real
      
      wwzz5 = wwzz5_real 
      wwzz6 = wwzz6_real 
      aazz  = aazz_real 
      azzz  = azzz_real 
      zazz  = zazz_real 
      zzzz  = zzzz_real 
      aaee = aaee_real 
      azee = azee_real 
      zaee = zaee_real 
      zzee = zzee_real 
      aauu = aauu_real 
      azuu = azuu_real 
      zauu = zauu_real 
      zzuu = zzuu_real 
      CCee = CCee_real 
      CCuu = CCuu_real  
      CCee6 = CCee6_real  
      CCuu6 = CCuu6_real 	       
	

      else
         stop 'bad ttype in provide_tensors'
      endif   
      

      return
      end

