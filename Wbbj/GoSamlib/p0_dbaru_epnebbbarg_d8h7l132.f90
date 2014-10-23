module     p0_dbaru_epnebbbarg_d8h7l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d8h7l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd8h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd8
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
      use p0_dbaru_epnebbbarg_abbrevd8h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(30) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd8(1)=dotproduct(k2,ninjaE3)
      acd8(2)=abb8(16)
      acd8(3)=dotproduct(ninjaE3,spvak1l6)
      acd8(4)=abb8(11)
      acd8(5)=dotproduct(ninjaE3,spvak1k3)
      acd8(6)=abb8(12)
      acd8(7)=dotproduct(ninjaE3,spvak1k2)
      acd8(8)=abb8(13)
      acd8(9)=dotproduct(ninjaE3,spvak2k3)
      acd8(10)=abb8(14)
      acd8(11)=dotproduct(ninjaE3,spvak2l6)
      acd8(12)=abb8(15)
      acd8(13)=dotproduct(ninjaE3,spvak2l5)
      acd8(14)=abb8(17)
      acd8(15)=dotproduct(ninjaE3,spvak7k2)
      acd8(16)=abb8(19)
      acd8(17)=dotproduct(ninjaE3,spvak4k2)
      acd8(18)=abb8(22)
      acd8(19)=dotproduct(ninjaE3,spvak7l6)
      acd8(20)=abb8(33)
      acd8(21)=acd8(2)*acd8(1)
      acd8(22)=acd8(4)*acd8(3)
      acd8(23)=acd8(6)*acd8(5)
      acd8(24)=acd8(8)*acd8(7)
      acd8(25)=acd8(10)*acd8(9)
      acd8(26)=acd8(12)*acd8(11)
      acd8(27)=acd8(14)*acd8(13)
      acd8(28)=acd8(16)*acd8(15)
      acd8(29)=acd8(18)*acd8(17)
      acd8(30)=acd8(20)*acd8(19)
      acd8(21)=acd8(30)+acd8(29)+acd8(28)+acd8(27)+acd8(26)+acd8(25)+acd8(24)+a&
      &cd8(23)+acd8(21)+acd8(22)
      brack(ninjaidxt0x0mu0)=acd8(21)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d8h7_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd8h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6
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
end module     p0_dbaru_epnebbbarg_d8h7l132
