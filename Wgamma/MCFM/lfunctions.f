************************************************************************
*     Author: R.K. Ellis                                               *
*     July, 1998/July 2005/June 2007                                   *
************************************************************************

      double complex function L0(x,y)
      implicit none
      include 'mathx.h'
      double complex Lnrat
      external Lnrat
      double precision x,y,denom
      denom=1d0-x/y
      if (abs(denom) .lt. 1d-7) then
          L0=-cone-dcmplx(denom*(0.5d0+denom/3d0))
      else
          L0=Lnrat(x,y)/dcmplx(denom)
      endif
      return
      end

      double complex function L1(x,y)
      implicit none
      include 'mathx.h'
      double complex L0
      external L0
      double precision x,y,denom
      denom=1d0-x/y
      if (abs(denom) .lt. 1d-7) then
          L1=-0.5d0*cone-dcmplx(denom/3d0*(1d0+0.75d0*denom))
      else
          L1=(L0(x,y)+cone)/dcmplx(denom)
      endif
      return
      end

      double complex function Lsm1(x1,y1,x2,y2)
      implicit none
      include 'pwhg_math.h'
      double complex Lnrat
      external Lnrat
      double precision x1,x2,y1,y2,r1,r2,omr1,omr2,ddilog
      external ddilog
      double complex dilog1,dilog2
      r1=x1/y1
      r2=x2/y2
      omr1=1d0-r1
      omr2=1d0-r2
      if (omr1 .gt. 1d0) then 
        dilog1=dcmplx(pi2/6d0-ddilog(r1))-Lnrat(x1,y1)*dcmplx(log(omr1))
      else
        dilog1=dcmplx(ddilog(omr1))
      endif
      if (omr2 .gt. 1d0) then 
        dilog2=dcmplx(pi2/6d0-ddilog(r2))-Lnrat(x2,y2)*dcmplx(log(omr2))
      else
        dilog2=dcmplx(ddilog(omr2))
      endif
      lsm1=dilog1+dilog2+Lnrat(x1,y1)*Lnrat(x2,y2)-dcmplx(pi2/6d0)
      return
      end

      double complex function Lnrat(x,y)
************************************************************************
*     Author: R.K. Ellis                                               *
*     August, 1998.                                                    *
c     Lnrat(x,y)=log(x-i*ep)-log(y-i*ep)                               *
c     this function is hard-wired for sign of epsilon we must adjust   *
c     sign of x and y to get the right sign for epsilon                *
************************************************************************
      implicit none
      include 'mathx.h'
      include 'pwhg_math.h'
      double precision x,y,htheta
C--- define Heaviside theta function (=1 for x>0) and (0 for x < 0)
      htheta(x)=0.5d0+0.5d0*sign(1d0,x)
      Lnrat=dcmplx(dlog(abs(x/y)))-ii*pi*dcmplx((htheta(-x)-htheta(-y)))
      return
      end

