c     returns 2 Re(M_B * M_V)/(as/(2pi)), 
c     where M_B is the Born amplitude and 
c     M_V is the finite part of the virtual amplitude
c     The as/(2pi) factor is attached at a later point
      subroutine setvirtual(pin,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      include 'qcdcouple.f'
      include 'constants.f'
      include 'vvsettings.f'
      double precision msqB,msq
      integer i,k
      double precision p(mxpart,4)

      real * 8 pin(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual
      real * 8 born,dummy(0:3,0:3)
      real *8 s,dotp
      external dotp

      idpart1 = vflav(1)
      idpart2 = vflav(2)

c --- set scale dependent QCD coupling 
      ason2pi = st_alpha/twopi

      do i=1,6
         if(i.lt.3) then
            k=i
         else
            k=i+2
         endif
         p(i,4) = pin(0,k)
         p(i,1:3) = pin(1:3,k)
      enddo
      p(1,:)=-p(1,:)
      p(2,:)=-p(2,:)

      call qqb_ww(p,msqB)
      call qqb_ww_v(p,msq)

      ! -- divide out ason2pi
      virtual = msq/ason2pi
 
      ! -- scheme change from dred 
      born=msqB
      virtual = virtual + born*(-2d0*(cf/2d0)) 

c      write(*,'(a,d15.9)') ' virtual=',virtual

      end

