      subroutine setreal(p,rflav,amp2)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'pwhg_kn.h'
      include 'PhysPars.h'
      include 'math_const.f'
      
      real * 8 p(0:3,nlegreal)
      integer rflav(nlegreal)
      real * 8 amp2
      real*8 msq_Hbbqq,msq_Hbbgg,msq_Hbbbb
      integer xflav

      amp2=zip

      xflav=abs(rflav(6))+abs(rflav(7))
      if( xflav.gt.0 .and. xflav.lt.10 )then
!     !>> bbqq case
         amp2 = msq_Hbbqq( p(0:3,4:7) )
      elseif( xflav.eq.0 )then
!     !>> bbgg case
         amp2 = (one/two) * msq_Hbbgg( p(0:3,4:7) )  !! symmerty factor (1/2!)
      elseif( xflav.eq.10 )then
!     !>> bbbb case
         amp2 = (one/two)**2 * msq_Hbbbb( p(0:3,4:7) )  !! symmerty factor (1/2!)^2
      else
         write(*,*)'ERROR!'
         write(*,*)'>> should not get here'
         write(*,*)'>> real flavour structure not recognized!'
         write(*,*)'   rflav=',rflav(:)
         stop
      endif

      return
      end
