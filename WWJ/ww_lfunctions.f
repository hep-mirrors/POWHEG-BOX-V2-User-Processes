************************************************************************
*     Author: R.K. Ellis                                               *
*     July, 1998/July 2005/June 2007                                   *
************************************************************************

      double complex function ww_L0(x,y)
      implicit none
      include 'ww_constants.f' 
      double complex ww_Lnrat
      double precision x,y,denom
      denom=ww_one-x/y
      if (abs(denom) .lt. 1d-7) then
      ww_L0=-ww_cone-dcmplx(denom*(ww_half+denom/3d0))
      else
      ww_L0=ww_Lnrat(x,y)/dcmplx(denom)
      endif
      return
      end

      double complex function ww_L1(x,y)
      implicit none
      include 'ww_constants.f' 
      double precision x,y,denom
      double complex ww_L0
      denom=ww_one-x/y
      if (abs(denom) .lt. 1d-7) then
      ww_L1=-ww_half*ww_cone-dcmplx(denom/3d0*(ww_one+0.75d0*denom))
      else
      ww_L1=(ww_L0(x,y)+ww_cone)/dcmplx(denom)
      endif
      return
      end

      double complex function ww_L2(x,y)
      implicit none
      include 'ww_constants.f' 
      double complex ww_Lnrat
      double precision x,y,r,denom
      r=x/y
      denom=ww_one-r
      if (abs(denom) .lt. 1d-7) then
      ww_L2=(dcmplx(10d0)+denom*(dcmplx(15d0)+dcmplx(18d0)*denom))
     . /dcmplx(60d0)
      else
      ww_L2=(ww_Lnrat(x,y)-dcmplx(0.5d0*(r-1d0/r)))/dcmplx(denom)**3
      endif  
      return
      end

      double complex function ww_L0old(x,y)
      implicit none
      include 'ww_constants.f' 
      double complex ww_Lnrat
      double precision x,y,denom
      denom=ww_one-x/y
      ww_L0old=ww_Lnrat(x,y)/dcmplx(denom)
      return
      end


      double complex function ww_L1old(x,y)
      implicit none
      include 'ww_constants.f'
      double precision x,y,denom
      double complex ww_L0old
      denom=ww_one-x/y
      ww_L1old=(ww_L0old(x,y)+ww_cone)/dcmplx(denom)
      return
      end

      double complex function ww_Ls0(x1,y1,x2,y2)
      implicit none
      include 'ww_constants.f'
      double precision x1,x2,y1,y2,r1,r2
      double complex ww_Lsm1
      r1=x1/y1
      r2=x2/y2
      ww_Ls0=ww_Lsm1(x1,y1,x2,y2)/dcmplx(ww_one-r1-r2)
      return
      end

      double complex function ww_Ls1(x1,y1,x2,y2)
      implicit none
      include 'ww_constants.f'
      double precision x1,x2,y1,y2,r1,r2
      double complex ww_Ls0,ww_L0
      r1=x1/y1
      r2=x2/y2
      ww_Ls1=(ww_Ls0(x1,y1,x2,y2)+ww_L0(x1,y1)+ww_L0(x2,y2))
     $      /dcmplx(ww_one-r1-r2)
      return
      end



      double complex function ww_Lsm1(x1,y1,x2,y2)
      implicit none
      include 'ww_constants.f'
      double precision x1,x2,y1,y2,r1,r2,omr1,omr2,ddilog
      double complex ww_dilog1,ww_dilog2,ww_Lnrat
      r1=x1/y1
      r2=x2/y2
      omr1=ww_one-r1
      omr2=ww_one-r2
      if (omr1 .gt. ww_one) then 
         ww_dilog1=dcmplx(ww_pisqo6-ddilog(r1))
     $            -ww_Lnrat(x1,y1)*dcmplx(log(omr1))
      else
         ww_dilog1=dcmplx(ddilog(omr1))
      endif
      if (omr2 .gt. ww_one) then 
         ww_dilog2=dcmplx(ww_pisqo6-ddilog(r2))
     $            -ww_Lnrat(x2,y2)*dcmplx(log(omr2))
      else
          ww_dilog2=dcmplx(ddilog(omr2))
      endif
      ww_lsm1=ww_dilog1+ww_dilog2+ww_Lnrat(x1,y1)*ww_Lnrat(x2,y2)
     $     -dcmplx(ww_pisqo6)
      return
      end

      double complex function ww_Lsm1_2mh(s,t,m1sq,m2sq)
      implicit none
      include 'ww_constants.f'
      double precision s,t,m1sq,m2sq
      double complex ww_lsm1_2mht,ww_I3m
      ww_Lsm1_2mh=ww_Lsm1_2mht(s,t,m1sq,m2sq)
     & +(ww_half*(s-m1sq-m2sq)+m1sq*m2sq/t)*ww_I3m(s,m1sq,m2sq)
      return
      end

      double complex function ww_Lsm1_2mht(s,t,m1sq,m2sq)
      implicit none
      include 'ww_constants.f'
      double precision s,t,m1sq,m2sq,ddilog,r1,r2,omr1,omr2
      double complex ww_Lnrat,ww_dilog1,ww_dilog2
      r1=m1sq/t
      r2=m2sq/t
      omr1=ww_one-r1
      omr2=ww_one-r2

      if (omr1 .gt. ww_one) then 
      ww_dilog1=dcmplx(ww_pisqo6-ddilog(r1))
     $         -ww_Lnrat(-m1sq,-t)*dcmplx(log(omr1))
      else
      ww_dilog1=dcmplx(ddilog(omr1))
      endif
      if (omr2 .gt. ww_one) then 
      ww_dilog2=dcmplx(ww_pisqo6-ddilog(r2))
     $         -ww_Lnrat(-m2sq,-t)*dcmplx(log(omr2))
      else
      ww_dilog2=dcmplx(ddilog(omr2))
      endif
      ww_lsm1_2mht=-ww_dilog1-ww_dilog2
     & +ww_half*(ww_Lnrat(-s,-m1sq)*ww_Lnrat(-s,-m2sq)
     $     -ww_Lnrat(-s,-t)**2)
      return
      end


      double complex function ww_Lsm1_2me(s,t,m1sq,m3sq)
      implicit none
c---- formula taken from G.~Duplancic and B~Nizic [arXiv:hep-ph/0006249 v2]
c---- Eq 71
c---- Lsm1_2me notation follows from 
c----  Z.~Bern, L.~J.~Dixon and D.~A.~Kosower,
c----  %``Dimensionally regulated pentagon integrals,''
c----  Nucl.\ Phys.\ B {\bf 412}, 751 (1994)
c----  [arXiv:hep-ph/9306240].
c----  %%CITATION = HEP-PH 9306240;%%
c----  Eqs. (I.13)
C---- analytic continuation has been checked by calculating numerically.
      include 'ww_constants.f'
      integer j
      double precision s,t,m1sq,m3sq,ddilog,arg(4),omarg(4),f2me,htheta
      double complex Li2(4),wlog(4)
C--- define Heaviside theta function (=1 for x>0) and (0 for x < 0)
      htheta(s)=ww_half+ww_half*sign(ww_one,s)

      f2me=(s+t-m1sq-m3sq)/(s*t-m1sq*m3sq)
     
      arg(1)=f2me*s
      arg(2)=f2me*t
      arg(3)=f2me*m1sq
      arg(4)=f2me*m3sq

      do j=1,4
         omarg(j)=ww_one-arg(j)
         wlog(j)=log(abs(arg(j)))    
     .     +ww_impi*dcmplx(htheta(-arg(j))*sign(ww_one,f2me))
         if (omarg(j) .gt. ww_one) then 
             Li2(j)=dcmplx(ww_pisqo6-ddilog(arg(j)))
     .       -wlog(j)*dcmplx(log(omarg(j)))
          else
             Li2(j)=dcmplx(ddilog(omarg(j)))
         endif
      enddo
      ww_Lsm1_2me=Li2(1)+Li2(2)-Li2(3)-Li2(4)

      return
      end

