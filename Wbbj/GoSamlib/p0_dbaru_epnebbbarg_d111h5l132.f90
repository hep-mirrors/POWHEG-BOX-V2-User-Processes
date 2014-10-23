module     p0_dbaru_epnebbbarg_d111h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d111h5l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd111h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd111
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      brack(ninjaidxt1x0mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd111h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(34) :: acd111
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd111(1)=dotproduct(k2,ninjaE3)
      acd111(2)=dotproduct(ninjaE3,spvak7k2)
      acd111(3)=abb111(22)
      acd111(4)=dotproduct(ninjaE3,spval6k2)
      acd111(5)=abb111(24)
      acd111(6)=dotproduct(l5,ninjaE3)
      acd111(7)=abb111(17)
      acd111(8)=dotproduct(l6,ninjaE3)
      acd111(9)=dotproduct(k7,ninjaE3)
      acd111(10)=dotproduct(ninjaA0,ninjaE3)
      acd111(11)=abb111(21)
      acd111(12)=dotproduct(ninjaE3,spvak4k2)
      acd111(13)=abb111(9)
      acd111(14)=dotproduct(ninjaE3,spvak1k2)
      acd111(15)=abb111(10)
      acd111(16)=abb111(11)
      acd111(17)=dotproduct(ninjaE3,spval5k2)
      acd111(18)=abb111(14)
      acd111(19)=dotproduct(ninjaE3,spvak1l5)
      acd111(20)=abb111(20)
      acd111(21)=dotproduct(ninjaE3,spval6l5)
      acd111(22)=abb111(26)
      acd111(23)=dotproduct(ninjaE3,spvak4l5)
      acd111(24)=abb111(28)
      acd111(25)=-acd111(8)-acd111(6)
      acd111(25)=acd111(25)*acd111(7)
      acd111(26)=acd111(3)*acd111(1)
      acd111(27)=acd111(11)*acd111(10)
      acd111(28)=acd111(13)*acd111(12)
      acd111(29)=acd111(15)*acd111(14)
      acd111(30)=acd111(16)*acd111(4)
      acd111(31)=acd111(18)*acd111(17)
      acd111(32)=acd111(20)*acd111(19)
      acd111(33)=acd111(22)*acd111(21)
      acd111(34)=acd111(24)*acd111(23)
      acd111(25)=acd111(25)+acd111(34)+acd111(33)+acd111(32)+acd111(31)+acd111(&
      &30)+acd111(29)+acd111(28)+2.0_ki*acd111(27)+acd111(26)
      acd111(25)=acd111(2)*acd111(25)
      acd111(26)=acd111(9)-acd111(1)
      acd111(26)=acd111(26)*acd111(5)*acd111(4)
      acd111(25)=acd111(26)+acd111(25)
      brack(ninjaidxt0x0mu0)=acd111(25)
      brack(ninjaidxt0x1mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d111h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd111h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d111h5l132
