      double precision function ww_t(j1,j2,j3)  
      implicit none
      include 'ww_constants.f' 
      include 'ww_sprods_com.f'
      integer j1,j2,j3
      ww_t=ww_s(j1,j2)+ww_s(j2,j3)+ww_s(j1,j3)
      end
