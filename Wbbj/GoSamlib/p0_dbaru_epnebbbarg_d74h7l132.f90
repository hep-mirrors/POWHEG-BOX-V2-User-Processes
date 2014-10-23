module     p0_dbaru_epnebbbarg_d74h7l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d74h7l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd74h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd74
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
      use p0_dbaru_epnebbbarg_abbrevd74h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(25) :: acd74
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd74(1)=dotproduct(k2,ninjaE3)
      acd74(2)=dotproduct(ninjaE3,spvak1k2)
      acd74(3)=dotproduct(ninjaE3,spvak4k3)
      acd74(4)=abb74(26)
      acd74(5)=dotproduct(ninjaE3,spvak1l6)
      acd74(6)=abb74(79)
      acd74(7)=dotproduct(l6,ninjaE3)
      acd74(8)=dotproduct(ninjaE3,spvak7k2)
      acd74(9)=abb74(35)
      acd74(10)=dotproduct(k7,ninjaE3)
      acd74(11)=abb74(28)
      acd74(12)=abb74(41)
      acd74(13)=dotproduct(ninjaE3,spvak7l6)
      acd74(14)=abb74(36)
      acd74(15)=abb74(60)
      acd74(16)=dotproduct(ninjaE3,spvak1k7)
      acd74(17)=abb74(73)
      acd74(18)=dotproduct(ninjaE3,spval6k2)
      acd74(19)=abb74(58)
      acd74(20)=acd74(16)*acd74(17)
      acd74(21)=acd74(13)*acd74(14)
      acd74(22)=acd74(10)+acd74(7)
      acd74(22)=acd74(9)*acd74(22)
      acd74(23)=acd74(5)*acd74(15)
      acd74(24)=acd74(2)*acd74(11)
      acd74(25)=acd74(8)*acd74(12)
      acd74(20)=acd74(25)+acd74(24)+acd74(23)+acd74(22)+acd74(20)+acd74(21)
      acd74(20)=acd74(8)*acd74(20)
      acd74(21)=acd74(5)*acd74(6)
      acd74(22)=acd74(2)*acd74(4)
      acd74(21)=acd74(21)+acd74(22)
      acd74(21)=acd74(1)*acd74(21)
      acd74(22)=acd74(13)*acd74(18)*acd74(19)
      acd74(20)=acd74(20)+acd74(22)+acd74(21)
      acd74(20)=acd74(3)*acd74(20)
      brack(ninjaidxt0x0mu0)=acd74(20)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d74h7_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd74h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
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
end module     p0_dbaru_epnebbbarg_d74h7l132
