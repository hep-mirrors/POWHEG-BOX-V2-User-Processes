module     p0_dbaru_epnebbbarg_d62h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d62h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd62h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd62
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd62(1)=dotproduct(k2,ninjaE3)
      acd62(2)=abb62(57)
      acd62(3)=dotproduct(k3,ninjaE3)
      acd62(4)=abb62(82)
      acd62(5)=dotproduct(k4,ninjaE3)
      acd62(6)=abb62(70)
      acd62(7)=dotproduct(ninjaE3,spvak4k2)
      acd62(8)=abb62(16)
      acd62(9)=dotproduct(ninjaE3,spvak4k3)
      acd62(10)=abb62(17)
      acd62(11)=dotproduct(ninjaE3,spvak3k2)
      acd62(12)=abb62(18)
      acd62(13)=dotproduct(ninjaE3,spvak2k3)
      acd62(14)=abb62(19)
      acd62(15)=acd62(2)*acd62(1)
      acd62(16)=acd62(4)*acd62(3)
      acd62(17)=acd62(6)*acd62(5)
      acd62(18)=acd62(8)*acd62(7)
      acd62(19)=acd62(10)*acd62(9)
      acd62(20)=acd62(12)*acd62(11)
      acd62(21)=acd62(14)*acd62(13)
      acd62(15)=acd62(21)+acd62(20)+acd62(19)+acd62(18)+acd62(17)+acd62(15)+acd&
      &62(16)
      brack(ninjaidxt1x0mu0)=acd62(15)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd62h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(30) :: acd62
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd62(1)=dotproduct(k2,ninjaA1)
      acd62(2)=abb62(57)
      acd62(3)=dotproduct(k3,ninjaA1)
      acd62(4)=abb62(82)
      acd62(5)=dotproduct(k4,ninjaA1)
      acd62(6)=abb62(70)
      acd62(7)=dotproduct(ninjaA1,spvak4k2)
      acd62(8)=abb62(16)
      acd62(9)=dotproduct(ninjaA1,spvak4k3)
      acd62(10)=abb62(17)
      acd62(11)=dotproduct(ninjaA1,spvak3k2)
      acd62(12)=abb62(18)
      acd62(13)=dotproduct(ninjaA1,spvak2k3)
      acd62(14)=abb62(19)
      acd62(15)=dotproduct(k2,ninjaA0)
      acd62(16)=dotproduct(k3,ninjaA0)
      acd62(17)=dotproduct(k4,ninjaA0)
      acd62(18)=dotproduct(ninjaA0,spvak4k2)
      acd62(19)=dotproduct(ninjaA0,spvak4k3)
      acd62(20)=dotproduct(ninjaA0,spvak3k2)
      acd62(21)=dotproduct(ninjaA0,spvak2k3)
      acd62(22)=abb62(24)
      acd62(23)=acd62(1)*acd62(2)
      acd62(24)=acd62(3)*acd62(4)
      acd62(25)=acd62(5)*acd62(6)
      acd62(26)=acd62(7)*acd62(8)
      acd62(27)=acd62(9)*acd62(10)
      acd62(28)=acd62(11)*acd62(12)
      acd62(29)=acd62(13)*acd62(14)
      acd62(23)=acd62(29)+acd62(28)+acd62(27)+acd62(26)+acd62(25)+acd62(23)+acd&
      &62(24)
      acd62(24)=acd62(15)*acd62(2)
      acd62(25)=acd62(16)*acd62(4)
      acd62(26)=acd62(17)*acd62(6)
      acd62(27)=acd62(18)*acd62(8)
      acd62(28)=acd62(19)*acd62(10)
      acd62(29)=acd62(20)*acd62(12)
      acd62(30)=acd62(21)*acd62(14)
      acd62(24)=acd62(22)+acd62(30)+acd62(29)+acd62(28)+acd62(27)+acd62(26)+acd&
      &62(24)+acd62(25)
      brack(ninjaidxt0x0mu0)=acd62(24)
      brack(ninjaidxt0x1mu0)=acd62(23)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d62h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd62h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = + a0(0:3)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d62h1l132
