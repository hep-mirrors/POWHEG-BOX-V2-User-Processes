      double complex function ww_a6treea(j1,j2,j3,j4,j5,j6,ww_za,ww_zb)
      implicit none
c---  DKS Eq. 2.8 (multiplied by a factor of (-i))
      include 'ww_constants.f'
      include 'ww_sprods_com.f'
      include 'ww_zprods_decl.f'
      integer j1,j2,j3,j4,j5,j6
      integer i1,i2,i3,i4
      double complex z2
      double precision ww_t
      z2(i1,i2,i3,i4)=ww_za(i1,i2)*ww_zb(i2,i4)
     $               +ww_za(i1,i3)*ww_zb(i3,i4)
      ww_a6treea=ww_za(j1,j3)*ww_zb(j2,j5)*z2(j6,j2,j5,j4)
     . /(ww_s(j3,j4)*ww_s(j5,j6)*ww_t(j1,j3,j4))

      return 
      end

      double complex function ww_a6treeb(j1,j2,j3,j4,j5,j6,ww_za,ww_zb)
      implicit none
c---  DKS Eq. 2.9 (multiplied by a factor of (-i))
      include 'ww_constants.f'
      include 'ww_sprods_com.f'
      include 'ww_zprods_decl.f'
      integer j1,j2,j3,j4,j5,j6
      integer i1,i2,i3,i4
      double complex z2
      z2(i1,i2,i3,i4)=ww_za(i1,i2)*ww_zb(i2,i4)
     $               +ww_za(i1,i3)*ww_zb(i3,i4)

      ww_a6treeb=(ww_za(j1,j3)*ww_zb(j2,j5)*z2(j6,j2,j5,j4)
     .        +ww_zb(j2,j4)*ww_za(j1,j6)*z2(j3,j1,j6,j5)
     . )/(ww_s(j1,j2)*ww_s(j3,j4)*ww_s(j5,j6))

      return 
      end

      double complex function ww_a6trees(j1,j2,j3,j4,j5,j6,ww_za,ww_zb)
      implicit none
      include 'ww_constants.f'
      include 'ww_zprods_decl.f'
      integer j1,j2,j3,j4,j5,j6
      double complex ww_a6treea
      ww_a6trees=ww_a6treea(j1,j2,j3,j4,j5,j6,ww_za,ww_zb)
     .          +ww_a6treea(j1,j2,j6,j5,j4,j3,ww_za,ww_zb)
      return 
      end
