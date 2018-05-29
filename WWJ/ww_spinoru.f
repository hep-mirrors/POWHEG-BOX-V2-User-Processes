      subroutine ww_spinoru(N,p,ww_za,ww_zb)
c---Calculate spinor products
c---extended to deal with negative energies ie with all momenta outgoing
c---Arbitrary conventions of Bern, Dixon, Kosower, Weinzierl, 
c---za(i,j)*zb(j,i)=s(i,j)
      implicit none
      include 'ww_constants.f'
      include 'ww_zprods_decl.f'
      include 'ww_sprods_com.f'
      double precision p(ww_mxpart,4),rt(ww_mxpart)
      double complex c23(ww_mxpart),f(ww_mxpart)
      integer i,j,N
      
c---if one of the vectors happens to be zero this routine fails.
      do j=1,N
         ww_za(j,j)=ww_czip
         ww_zb(j,j)=ww_za(j,j)

C-----positive energy case
         if (p(j,4) .gt. 0d0) then
            rt(j)=dsqrt(p(j,4)+p(j,1))
            c23(j)=dcmplx(p(j,3),-p(j,2))
            f(j)=ww_cone
         else
C-----negative energy case
            rt(j)=dsqrt(-p(j,4)-p(j,1))
            c23(j)=dcmplx(-p(j,3),p(j,2))
            f(j)=ww_im
         endif
      enddo
      do i=2,N
         do j=1,i-1
         ww_s(i,j)=ww_two*(p(i,4)*p(j,4)-p(i,1)*p(j,1)
     &              -p(i,2)*p(j,2)-p(i,3)*p(j,3))
         ww_za(i,j)=f(i)*f(j)
     &   *(c23(i)*dcmplx(rt(j)/rt(i))-c23(j)*dcmplx(rt(i)/rt(j)))

         if (abs(ww_s(i,j)).lt.1d-9) then
         ww_zb(i,j)=-(f(i)*f(j))**2*dconjg(ww_za(i,j))
         else
         ww_zb(i,j)=-dcmplx(ww_s(i,j))/ww_za(i,j)
         endif
         ww_za(j,i)=-ww_za(i,j)
         ww_zb(j,i)=-ww_zb(i,j)
         ww_s(j,i)=ww_s(i,j)
         enddo
      enddo

      return
      end
