module     p0_dbaru_epnebbbarg_d311h7l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d311h7l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0x0mu0 = 0
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd311h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd311
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd311h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd311
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd311(1)=dotproduct(k2,ninjaE3)
      acd311(2)=dotproduct(ninjaE3,spvak2l5)
      acd311(3)=dotproduct(ninjaE3,spvak7k2)
      acd311(4)=abb311(97)
      acd311(5)=dotproduct(ninjaE3,spvak4l6)
      acd311(6)=abb311(141)
      acd311(7)=dotproduct(ninjaE3,spvak4l5)
      acd311(8)=abb311(163)
      acd311(9)=dotproduct(k3,ninjaE3)
      acd311(10)=dotproduct(k4,ninjaE3)
      acd311(11)=dotproduct(ninjaE3,spvak4k2)
      acd311(12)=abb311(24)
      acd311(13)=dotproduct(ninjaE3,spvak4k3)
      acd311(14)=abb311(28)
      acd311(15)=abb311(32)
      acd311(16)=abb311(35)
      acd311(17)=dotproduct(ninjaE3,spvak2l6)
      acd311(18)=abb311(80)
      acd311(19)=abb311(34)
      acd311(20)=abb311(48)
      acd311(21)=dotproduct(ninjaE3,spvak3l5)
      acd311(22)=abb311(43)
      acd311(23)=dotproduct(ninjaE3,spvak3l6)
      acd311(24)=-acd311(1)+acd311(9)+acd311(10)
      acd311(25)=-acd311(8)*acd311(24)
      acd311(26)=acd311(11)*acd311(16)
      acd311(27)=acd311(13)*acd311(20)
      acd311(25)=acd311(27)+acd311(26)+acd311(25)
      acd311(25)=acd311(7)*acd311(25)
      acd311(26)=acd311(6)*acd311(24)
      acd311(27)=acd311(11)*acd311(15)
      acd311(28)=acd311(13)*acd311(19)
      acd311(26)=acd311(28)+acd311(27)+acd311(26)
      acd311(26)=acd311(5)*acd311(26)
      acd311(24)=acd311(4)*acd311(24)
      acd311(27)=acd311(11)*acd311(12)
      acd311(28)=acd311(13)*acd311(14)
      acd311(24)=acd311(28)+acd311(27)+acd311(24)
      acd311(24)=acd311(2)*acd311(24)
      acd311(27)=acd311(21)*acd311(22)
      acd311(28)=-acd311(18)*acd311(23)
      acd311(27)=acd311(27)+acd311(28)
      acd311(27)=acd311(13)*acd311(27)
      acd311(28)=acd311(11)*acd311(18)*acd311(17)
      acd311(24)=acd311(24)+acd311(26)+acd311(25)+acd311(28)+acd311(27)
      acd311(24)=acd311(3)*acd311(24)
      brack(ninjaidxt0x0mu0)=acd311(24)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d311h7_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd311h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d311h7l132
