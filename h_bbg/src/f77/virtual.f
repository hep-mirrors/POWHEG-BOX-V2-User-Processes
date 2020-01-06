c     returns 2 Re(M_B * M_V)/(as/(2pi)), 
c     where M_B is the Born amplitude and 
c     M_V is the finite part of the virtual amplitude
c     The as/(2pi) factor is attached at a later point
c     Use MCFM subroutines
      subroutine setvirtual(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'math_const.f'
      include 'PhysPars.h'
      real * 8 p(0:3,nlegborn)
      real*8 pb1(0:3),pb2(0:3),pg(0:3),pHiggs(0:3)
      integer vflav(nlegborn)
      real*8 virtual,virt_test1,born
      real*8 msq_Hbbg0,msq_Hbbg1,msq_Hbbg1FA
      real*8 musq
      integer coeff
      real*8 mh,mhsq
      real*8 x1,x2
      logical debug
      parameter (debug=.false.)
      real*8 finite,single,double

      virtual=0d0

!     !>> scales and parameters
      mh=ph_hmass
      mhsq=mh**2
      coeff=0
      musq=st_muren2


!     !>> momenta
      pHiggs(0:3) = p(0:3,3)
      pb1(0:3)=p(0:3,4)
      pb2(0:3)=p(0:3,5)
      pg(0:3)= p(0:3,6)
      
!     !>> virtual
      virtual = msq_Hbbg1( p(0:3,4:6),musq, +0 )

      return
      end
