module     p0_dbaru_epnebbbarg_d98h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d98h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd98h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd98
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
      use p0_dbaru_epnebbbarg_abbrevd98h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(25) :: acd98
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd98(1)=dotproduct(k2,ninjaE3)
      acd98(2)=dotproduct(ninjaE3,spvak1k7)
      acd98(3)=abb98(20)
      acd98(4)=dotproduct(ninjaE3,spvak1l5)
      acd98(5)=abb98(24)
      acd98(6)=dotproduct(ninjaE3,spvak4k7)
      acd98(7)=abb98(33)
      acd98(8)=dotproduct(ninjaE3,spvak4l5)
      acd98(9)=abb98(37)
      acd98(10)=dotproduct(ninjaE3,spvak1k2)
      acd98(11)=dotproduct(ninjaE3,spvak2l6)
      acd98(12)=abb98(14)
      acd98(13)=dotproduct(ninjaE3,spvak2k7)
      acd98(14)=abb98(15)
      acd98(15)=dotproduct(ninjaE3,spvak2l5)
      acd98(16)=abb98(22)
      acd98(17)=dotproduct(ninjaE3,spvak4k2)
      acd98(18)=abb98(28)
      acd98(19)=abb98(32)
      acd98(20)=abb98(19)
      acd98(21)=acd98(3)*acd98(2)
      acd98(22)=acd98(5)*acd98(4)
      acd98(23)=acd98(7)*acd98(6)
      acd98(24)=acd98(9)*acd98(8)
      acd98(21)=acd98(24)+acd98(23)+acd98(21)+acd98(22)
      acd98(21)=acd98(1)*acd98(21)
      acd98(22)=acd98(12)*acd98(11)
      acd98(23)=acd98(14)*acd98(13)
      acd98(24)=acd98(16)*acd98(15)
      acd98(22)=acd98(24)+acd98(23)+acd98(22)
      acd98(22)=acd98(10)*acd98(22)
      acd98(23)=acd98(18)*acd98(11)
      acd98(24)=acd98(19)*acd98(13)
      acd98(25)=acd98(20)*acd98(15)
      acd98(23)=acd98(25)+acd98(24)+acd98(23)
      acd98(23)=acd98(17)*acd98(23)
      acd98(21)=acd98(21)+acd98(23)+acd98(22)
      brack(ninjaidxt0x0mu0)=acd98(21)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d98h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd98h3
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
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d98h3l132
