
      subroutine provide_tensors_wz(ttype)
      implicit none
      include 'tensor_wz.inc'
      include 'tensor_wz_born.inc'
      include 'tensor_wz_real.inc'
      integer i,j,jj,mu,nu
      integer ttype

      if (ttype.eq.1) then

      wl = wl_born
      wn = wn_born
      lp = lp_born
      lm = lm_born
c     
      we = we_born
      zu = zu_born
      au = au_born
c     
      wet = wet_born
      zut = zut_born
      aut = aut_born
     
      qe = qe_born
      qu = qu_born
              
      xxew = xxew_born
      xxua = xxua_born
      xxuz = xxuz_born

      wwv = wwv_born

      awwv  = awwv_born 
      zwwv  = zwwv_born 
      wzwv  = wzwv_born 
      wawv  = wawv_born
 
      awen = awen_born 
      zwen = zwen_born 
      waen = waen_born 
      wzen = wzen_born
 
      aauu = aauu_born 
      azuu = azuu_born 
      zauu = zauu_born 
      zzuu = zzuu_born  
      wwuu = wwuu_born 
	
      elseif (ttype.eq.3) then !real-emission type      

      wl = wl_real
      wn = wn_real
      lp = lp_real
      lm = lm_real
c     
      we = we_real
      zu = zu_real
      au = au_real
c     
      wet = wet_real
      zut = zut_real
      aut = aut_real
     
      qe = qe_real
      qu = qu_real
              
      xxew = xxew_real
      xxua = xxua_real
      xxuz = xxuz_real

      wwv = wwv_real

      awwv  = awwv_real 
      zwwv  = zwwv_real 
      wzwv  = wzwv_real 
      wawv  = wawv_real
 
      awen = awen_real 
      zwen = zwen_real 
      waen = waen_real 
      wzen = wzen_real
 
      aauu = aauu_real 
      azuu = azuu_real 
      zauu = zauu_real 
      zzuu = zzuu_real  
      wwuu = wwuu_real 

      else
         stop 'bad ttype in provide_tensors'
      endif
	

      return
      end

