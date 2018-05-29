      double complex function ww_BigT(j1,j2,j3,j4,j5,j6,ww_za,ww_zb)
c -- DKS eq. (2.16)      
      implicit none
      include 'ww_constants.f' 
      include 'ww_sprods_com.f'
      include 'ww_zprods_decl.f'
      integer j1,j2,j3,j4,j5,j6,i1,i2,i3,i4
      double complex z2
      double precision t134,t234,del3,del12,del34,del56
C---statement function  
      z2(i1,i2,i3,i4)=ww_za(i1,i2)*ww_zb(i2,i4)
     $               +ww_za(i1,i3)*ww_zb(i3,i4)

      t134=ww_s(j1,j3)+ww_s(j1,j4)+ww_s(j3,j4)
      t234=ww_s(j2,j3)+ww_s(j2,j4)+ww_s(j3,j4)
      del12=ww_s(j1,j2)-ww_s(j3,j4)-ww_s(j5,j6)
      del34=ww_s(j3,j4)-ww_s(j1,j2)-ww_s(j5,j6)
      del56=ww_s(j5,j6)-ww_s(j1,j2)-ww_s(j3,j4)
      Del3=ww_s(j1,j2)**2+ww_s(j3,j4)**2+ww_s(j5,j6)**2
     . -2d0*(ww_s(j1,j2)*ww_s(j3,j4)+ww_s(j1,j2)*ww_s(j5,j6)
     $                              +ww_s(j3,j4)*ww_s(j5,j6))
c----first line
      ww_BigT=1.5d0*ww_s(j1,j2)*del12*(t134-t234)
     . *z2(j6,j1,j2,j5)*z2(j3,j1,j2,j4)/(z2(j2,j5,j6,j1)*Del3**2)
c----second line
      ww_BigT=ww_BigT
     . -0.5d0*(3d0*ww_s(j1,j2)+2d0*t134)*z2(j6,j1,j2,j5)*z2(j3,j1,j2,j4)
     . /(z2(j2,j5,j6,j1)*Del3)

c----third line
      ww_BigT=ww_BigT+t134/(z2(j2,j5,j6,j1)**2*Del3)
     . *(ww_zb(j1,j4)*ww_za(j2,j6)
     . *(ww_za(j3,j6)*ww_zb(j6,j5)*del56
     $  -ww_za(j3,j4)*ww_zb(j4,j5)*del34)
     .  -ww_zb(j1,j5)*ww_za(j2,j3)
     . *(ww_za(j6,j5)*ww_zb(j5,j4)*del56
     $  -ww_za(j6,j3)*ww_zb(j3,j4)*del34))

c----fourth line
      ww_BigT=ww_BigT+ww_za(j3,j6)*ww_zb(j4,j5)
     $               *ww_s(j1,j2)*t134/(z2(j2,j5,j6,j1)*Del3)
     .               -ww_za(j3,j4)*ww_zb(j5,j6)
     $               *z2(j6,j1,j2,j4)**2/(z2(j2,j5,j6,j1)*Del3)
     .               +2d0*ww_za(j1,j6)*ww_zb(j2,j4)
     .               *(ww_za(j6,j5)*ww_zb(j5,j4)*del56
     $                -ww_za(j6,j3)*ww_zb(j3,j4)*del34)
     .     /(ww_zb(j3,j4)*ww_za(j5,j6)*Del3)
     
c---"fourth" line from the bottom
      ww_BigT=ww_BigT+2d0*z2(j6,j2,j5,j4)/(z2(j2,j5,j6,j1)*Del3)
     . *((ww_za(j6,j5)*ww_zb(j5,j2)*ww_za(j2,j1)*ww_zb(j1,j4)*del56
     .   -ww_za(j6,j2)*ww_zb(j2,j1)*ww_za(j1,j3)*ww_zb(j3,j4)*del34
     .   +z2(j6,j2,j5,j4)*ww_s(j1,j2)*del12)/(ww_zb(j3,j4)*ww_za(j5,j6))
     .  +2d0*z2(j3,j2,j6,j5)*ww_s(j1,j2)) 

c---"third" line from the bottom
      ww_BigT=ww_BigT-ww_zb(j1,j4)*ww_za(j2,j6)
     $               *z2(j3,j2,j6,j5)/z2(j2,j5,j6,j1)**2
     .               +2d0*ww_zb(j1,j5)*ww_za(j2,j3)
     $               *z2(j6,j2,j5,j4)/z2(j2,j5,j6,j1)**2
     .               -ww_zb(j1,j4)*ww_za(j2,j6)
     $               *z2(j6,j2,j5,j4)*del12
     .   /(ww_zb(j3,j4)*ww_za(j5,j6)*z2(j2,j5,j6,j1)**2)

c---penultimate two lines
      ww_BigT=ww_BigT+0.5d0*(
     .    +3d0*ww_za(j6,j2)*ww_zb(j2,j4)
     $    *ww_za(j6,j1)*ww_zb(j1,j4)/(ww_zb(j3,j4)*ww_za(j5,j6))
     .    +ww_za(j3,j2)*ww_zb(j2,j5)
     $    *ww_za(j3,j1)*ww_zb(j1,j5)/(ww_za(j3,j4)*ww_zb(j5,j6))
     .    +ww_zb(j1,j4)*ww_za(j1,j6)*ww_zb(j4,j5)/ww_zb(j3,j4)
     .    -ww_zb(j2,j4)*ww_za(j2,j6)*ww_za(j3,j6)/ww_za(j5,j6)
     .    +ww_za(j2,j3)*ww_zb(j2,j5)*ww_za(j3,j6)/ww_za(j3,j4)
     .    -ww_za(j1,j3)*ww_zb(j1,j5)*ww_zb(j4,j5)/ww_zb(j5,j6)
     .+4d0*ww_za(j3,j6)*ww_zb(j4,j5))/z2(j2,j5,j6,j1)

c---last line
      ww_BigT=ww_BigT+0.5d0*(
     .  (ww_za(j1,j6)*ww_zb(j2,j4))**2/(ww_zb(j3,j4)*ww_za(j5,j6))
     . -(ww_za(j1,j3)*ww_zb(j2,j5))**2/(ww_za(j3,j4)*ww_zb(j5,j6)))
     $     /z2(j1,j5,j6,j2)
      ww_BigT=ww_BigT-0.5d0*(ww_zb(j1,j4)*ww_za(j2,j6))**2
     . *(t134*del12+2d0*ww_s(j3,j4)*ww_s(j5,j6))
     . /(ww_zb(j3,j4)*ww_za(j5,j6)*z2(j2,j5,j6,j1)**3)


      return
      end

