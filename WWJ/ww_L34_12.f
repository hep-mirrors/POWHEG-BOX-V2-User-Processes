      double complex function ww_L34_12(j1,j2,j3,j4,j5,j6,ww_za,ww_zb)
      implicit none
c -- DKS eq. (2.15)      
      include 'ww_constants.f' 
      include 'ww_sprods_com.f'
      include 'ww_zprods_decl.f'
      integer j1,j2,j3,j4,j5,j6
      integer i1,i2,i3,i4
      double complex z2,bit1,bit2

      double precision ww_t,t134,t234,del3,del12,del56
  
      z2(i1,i2,i3,i4)=ww_za(i1,i2)*ww_zb(i2,i4)
     $               +ww_za(i1,i3)*ww_zb(i3,i4)

      t134=ww_t(j1,j3,j4)
      t234=ww_t(j2,j3,j4)
      del12=ww_s(j1,j2)-ww_s(j3,j4)-ww_s(j5,j6)
      del56=ww_s(j5,j6)-ww_s(j1,j2)-ww_s(j3,j4)
      Del3=ww_s(j1,j2)**2+ww_s(j3,j4)**2+ww_s(j5,j6)**2
     . -2d0*(ww_s(j1,j2)*ww_s(j3,j4)
     $      +ww_s(j1,j2)*ww_s(j5,j6)+ww_s(j3,j4)*ww_s(j5,j6))

      bit1=
     . +ww_zb(j4,j1)*ww_za(j1,j3)*ww_zb(j3,j5)
     $ +ww_zb(j4,j2)*ww_za(j2,j3)*ww_zb(j3,j5)
     . +ww_zb(j4,j1)*ww_za(j1,j4)*ww_zb(j4,j5)
     $ +ww_zb(j4,j2)*ww_za(j2,j4)*ww_zb(j4,j5)
      bit2=
     . +ww_zb(j4,j5)*ww_za(j5,j1)*ww_zb(j1,j5)
     $ +ww_zb(j4,j6)*ww_za(j6,j1)*ww_zb(j1,j5)
     . +ww_zb(j4,j5)*ww_za(j5,j2)*ww_zb(j2,j5)
     $ +ww_zb(j4,j6)*ww_za(j6,j2)*ww_zb(j2,j5)

c-----first line
      ww_L34_12=1.5d0*del56*(t134-t234)*z2(j3,j1,j2,j4)*z2(j6,j1,j2,j5)
     . /(z2(j2,j5,j6,j1)*Del3**2)
      ww_L34_12=ww_L34_12+1.5d0*ww_za(j3,j6)*bit1/(z2(j2,j5,j6,j1)*Del3)

c----second line
      ww_L34_12=ww_L34_12+0.5d0*ww_za(j3,j4)*ww_zb(j4,j5)*bit2
     . /(ww_zb(j5,j6)*z2(j2,j5,j6,j1)*del3)
      ww_L34_12=ww_L34_12+ww_zb(j1,j4)*ww_za(j2,j6)*t134
     . *(ww_za(j3,j6)*del12-2d0*ww_za(j3,j4)*ww_zb(j4,j5)*ww_za(j5,j6))
     . /(ww_za(j5,j6)*z2(j2,j5,j6,j1)**2*del3)

c-----third line
      ww_L34_12=ww_L34_12+0.5d0*t134/(z2(j2,j5,j6,j1)*del3)
     . *( +ww_za(j3,j4)*ww_zb(j4,j5)**2/ww_zb(j5,j6)
     .    +ww_zb(j3,j4)*ww_za(j3,j6)**2/ww_za(j5,j6)
     $     -2d0*ww_za(j3,j6)*ww_zb(j4,j5)) 

c--line before penultimate line
      ww_L34_12=ww_L34_12
     . +(+z2(j3,j1,j4,j5)/ww_zb(j5,j6)
     .   -ww_za(j3,j4)*ww_zb(j1,j4)*ww_za(j2,j6)/z2(j2,j5,j6,j1))
     .  *(ww_zb(j4,j5)*del12
     .  -2d0*ww_zb(j4,j3)*ww_za(j3,j6)*ww_zb(j6,j5))
     $               /(z2(j2,j5,j6,j1)*Del3)

c--penultimate line
      ww_L34_12=ww_L34_12+4d0
     . *(ww_za(j3,j4)*ww_zb(j4,j5)*z2(j6,j1,j3,j4)
     .  +ww_za(j6,j3)*ww_zb(j3,j4)*z2(j3,j2,j4,j5))
     $     /(z2(j2,j5,j6,j1)*Del3)

c--last line
      ww_L34_12=ww_L34_12+2d0*del12/(z2(j2,j5,j6,j1)*Del3)
     . *(+ww_zb(j4,j5)*z2(j3,j2,j4,j5)/ww_zb(j5,j6)
     .   -ww_za(j3,j6)*z2(j6,j1,j3,j4)/ww_za(j5,j6))      

      return
      end


