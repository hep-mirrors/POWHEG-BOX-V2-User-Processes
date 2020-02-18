c Wrapper subroutine to call OpenLoops Virtuals
      subroutine setvirtual(p,vflav,virtual)
!      use openloops, only: set_parameter
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_st.h'
      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual
      real * 8 dotp
      ! set process specific parameters
!      call set_parameter("h_width",0)
!      call set_parameter("h_mass", sqrt(dotp(p(:,3), p(:,3))))
      ! call openloops
      call openloops_virtual(p,vflav,virtual)
      end
