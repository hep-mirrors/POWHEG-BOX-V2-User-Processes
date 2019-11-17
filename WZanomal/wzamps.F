      subroutine wzamps(j1,j2,j3,j4,j5,j6,j7,za,zb,fsm,fanom)
c- first label of fs,ft,fu, is gluon polarization, second is zdecay line

      implicit none
#include "constants.h"
#include "zprods_decl.h"
#include "anomcoup.h"
#include "zwcouple.h"
#include "vvsettings.h"
      integer j1,j2,j3,j4,j5,j6,j7,mplus,minus,jtype,j,k
      double complex A7treea,B7treea,B7treeb,A7b_1,A7b_2,A7b_3,A7b_4
      double complex fsm(10,2,2)
      double complex fanom(10,2,2)
      double precision s127
      common/xanomcoup/xdelg1_z,xdelg1_g,xlambda_g,xlambda_z,
     . xdelk_g,xdelk_z
      data minus,mplus/1,2/

c----initialize to zero
c--- added amplitude 10 on 4/25/2002, to include anomalous couplings
      do jtype=4,9
         do j=1,2
            do k=1,2
               fsm(jtype,j,k)=dcmplx(0d0)
               fanom(jtype,j,k)=dcmplx(0d0)
            enddo
         enddo
      enddo
      
      s127=dble(za(1,7)*zb(7,1)+za(2,7)*zb(7,2)+za(1,2)*zb(2,1))

c      f(1,mplus,minus)=+A7treeb_anom_wz(j1,j2,j3,j4,j5,j6,j7,za,zb) !fs
      call A7treeb_anom_wz(j1,j2,j3,j4,j5,j6,j7,za,zb,
     . A7b_1,A7b_2,A7b_3,A7b_4)                                       !fs
      fsm(1,mplus,minus)=2.d0*(A7b_1+A7b_2+A7b_3)
      fanom(1,mplus,minus)=
     .     A7b_1*(xdelg1_z+xdelk_z+xlambda_z*s127/wmass**2)
     .     +A7b_2*(xdelg1_z+xdelk_z+xlambda_z)
     .     +A7b_3*2d0*xdelg1_z
     .     +A7b_4*xlambda_z/wmass**2
      fsm(10,mplus,minus)=2.d0*(A7b_1+A7b_2+A7b_3)
      fanom(10,mplus,minus)=
     .     A7b_1*(xdelg1_g+xdelk_g+xlambda_g*s127/wmass**2)
     .     +A7b_2*(xdelg1_g+xdelk_g+xlambda_g)
     .     +A7b_3*2d0*xdelg1_g
     .     +A7b_4*xlambda_g/wmass**2
      fsm(2,mplus,minus)=+A7treea(j1,j2,j3,j4,j5,j6,j7,za,zb)         !ft
      fanom(2,mplus,minus)=dcmplx(0d0)
      fsm(3,mplus,minus)=+A7treea(j1,j2,j6,j5,j4,j3,j7,za,zb)         !fu
      fanom(3,mplus,minus)=dcmplx(0d0)

c      f(1,mplus,mplus)=+A7treeb_anom_wz(j1,j2,j3,j4,j6,j5,j7,za,zb)
      call A7treeb_anom_wz(j1,j2,j3,j4,j6,j5,j7,za,zb,
     . A7b_1,A7b_2,A7b_3,A7b_4)
      fsm(1,mplus,mplus)=2.d0*(A7b_1+A7b_2+A7b_3)
      fanom(1,mplus,mplus)=
     .     A7b_1*(xdelg1_z+xdelk_z+xlambda_z*s127/wmass**2)
     .     +A7b_2*(xdelg1_z+xdelk_z+xlambda_z)
     .     +A7b_3*2d0*xdelg1_z
     .     +A7b_4*xlambda_z/wmass**2
      fsm(10,mplus,mplus)=2.d0*(A7b_1+A7b_2+A7b_3)
      fanom(10,mplus,mplus)=
     .     A7b_1*(xdelg1_g+xdelk_g+xlambda_g*s127/wmass**2)
     .     +A7b_2*(xdelg1_g+xdelk_g+xlambda_g)
     .     +A7b_3*2d0*xdelg1_g
     .     +A7b_4*xlambda_g/wmass**2
      fsm(2,mplus,mplus)=+A7treea(j1,j2,j3,j4,j6,j5,j7,za,zb)
      fanom(2,mplus,mplus)=dcmplx(0d0)
      fsm(3,mplus,mplus)=+A7treea(j1,j2,j5,j6,j4,j3,j7,za,zb)
      fanom(3,mplus,mplus)=dcmplx(0d0)

c-- old version
c      f(1,minus,minus)=-A7treeb_anom_wz(j2,j1,j5,j6,j3,j4,j7,zb,za)
c-- new version
c      f(1,minus,minus)=+A7treeb_anom_wz(j2,j1,j4,j3,j6,j5,j7,zb,za)
      call A7treeb_anom_wz(j2,j1,j4,j3,j6,j5,j7,zb,za,
     . A7b_1,A7b_2,A7b_3,A7b_4)
      fsm(1,minus,minus)=2.d0*(A7b_1+A7b_2+A7b_3)
      fanom(1,minus,minus)=
     .     A7b_1*(xdelg1_z+xdelk_z+xlambda_z*s127/wmass**2)
     .     +A7b_2*(xdelg1_z+xdelk_z+xlambda_z)
     .     +A7b_3*2d0*xdelg1_z
     .     +A7b_4*xlambda_z/wmass**2
      fsm(10,minus,minus)=2.d0*(A7b_1+A7b_2+A7b_3)
      fanom(10,minus,minus)=
     .     A7b_1*(xdelg1_g+xdelk_g+xlambda_g*s127/wmass**2)
     .     +A7b_2*(xdelg1_g+xdelk_g+xlambda_g)
     .     +A7b_3*2d0*xdelg1_g
     .     +A7b_4*xlambda_g/wmass**2
      fsm(2,minus,minus)=-A7treea(j2,j1,j5,j6,j3,j4,j7,zb,za)
      fanom(2,minus,minus)=dcmplx(0d0)
      fsm(3,minus,minus)=-A7treea(j2,j1,j4,j3,j6,j5,j7,zb,za)
      fanom(3,minus,minus)=dcmplx(0d0)

c-- old version
c      f(1,minus,mplus)=-A7treeb_anom_wz(j2,j1,j6,j5,j3,j4,j7,zb,za)
c-- new version
c      f(1,minus,mplus)=+A7treeb_anom_wz(j2,j1,j4,j3,j5,j6,j7,zb,za)
      call A7treeb_anom_wz(j2,j1,j4,j3,j5,j6,j7,zb,za,
     . A7b_1,A7b_2,A7b_3,A7b_4)
      fsm(1,minus,mplus)=2.d0*(A7b_1+A7b_2+A7b_3)
      fanom(1,minus,mplus)=
     .     A7b_1*(xdelg1_z+xdelk_z+xlambda_z*s127/wmass**2)
     .     +A7b_2*(xdelg1_z+xdelk_z+xlambda_z)
     .     +A7b_3*2d0*xdelg1_z
     .     +A7b_4*xlambda_z/wmass**2
      fsm(10,minus,mplus)=2.d0*(A7b_1+A7b_2+A7b_3)
      fanom(10,minus,mplus)=
     .     A7b_1*(xdelg1_g+xdelk_g+xlambda_g*s127/wmass**2)
     .     +A7b_2*(xdelg1_g+xdelk_g+xlambda_g)
     .     +A7b_3*2d0*xdelg1_g
     .     +A7b_4*xlambda_g/wmass**2
      fsm(2,minus,mplus)=-A7treea(j2,j1,j6,j5,j3,j4,j7,zb,za)
      fanom(2,minus,mplus)=dcmplx(0d0)
      fsm(3,minus,mplus)=-A7treea(j2,j1,j4,j3,j5,j6,j7,zb,za)
      fanom(3,minus,mplus)=dcmplx(0d0)


      if (dronly) return
      
c+++ the extra amplitude 7 accounts for W+ production instead of W-
c+++ amplitudes 8 and 9 are needed when considering ub+d instead of
c+++ d+ub and are obtained from 6 and 7 by simply swapping 1 <+> 2

c+++ further review (12/05/01) shows that 8 and 9 are not needed,
c+++ hence they are now commented out

      fsm(4,mplus,minus)=+B7treeb(j2,j1,j6,j5,j4,j3,j7,za,zb)    
      fsm(5,mplus,minus)=+B7treea(j1,j2,j3,j4,j5,j6,j7,za,zb)    
      fsm(6,mplus,minus)=+B7treeb(j2,j1,j3,j4,j5,j6,j7,za,zb)    
      fsm(7,mplus,minus)=+B7treea(j1,j2,j6,j5,j4,j3,j7,za,zb)    
c      fsm(8,mplus,minus)=+B7treeb(j1,j2,j3,j4,j5,j6,j7,za,zb)    
c      fsm(9,mplus,minus)=+B7treea(j2,j1,j6,j5,j4,j3,j7,za,zb)    

      fsm(4,mplus,mplus)=+B7treeb(j2,j1,j5,j6,j4,j3,j7,za,zb)
      fsm(5,mplus,mplus)=+B7treea(j1,j2,j3,j4,j6,j5,j7,za,zb)
         
      fsm(4,minus,minus)=-B7treea(j2,j1,j4,j3,j6,j5,j7,zb,za)
      fsm(5,minus,minus)=-B7treeb(j1,j2,j5,j6,j3,j4,j7,zb,za)
      fsm(6,minus,minus)=-B7treea(j2,j1,j5,j6,j3,j4,j7,zb,za)
      fsm(7,minus,minus)=-B7treeb(j1,j2,j4,j3,j6,j5,j7,zb,za)
c      fsm(8,minus,minus)=-B7treea(j1,j2,j5,j6,j3,j4,j7,zb,za)
c      fsm(9,minus,minus)=-B7treeb(j2,j1,j4,j3,j6,j5,j7,zb,za)

      fsm(4,minus,mplus)=-B7treea(j2,j1,j4,j3,j5,j6,j7,zb,za)
      fsm(5,minus,mplus)=-B7treeb(j1,j2,j6,j5,j3,j4,j7,zb,za)
     
      return
      end
