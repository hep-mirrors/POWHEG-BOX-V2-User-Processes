module     p0_dbaru_epnebbbarg_d315h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d315h4l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd315h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd315
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
      use p0_dbaru_epnebbbarg_abbrevd315h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd315
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd315(1)=dotproduct(k2,ninjaE3)
      acd315(2)=dotproduct(ninjaE3,spvak1k2)
      acd315(3)=dotproduct(ninjaE3,spvak7k2)
      acd315(4)=abb315(17)
      acd315(5)=dotproduct(ninjaE3,spval6k2)
      acd315(6)=abb315(56)
      acd315(7)=dotproduct(k3,ninjaE3)
      acd315(8)=dotproduct(k4,ninjaE3)
      acd315(9)=dotproduct(ninjaE3,spvak4k2)
      acd315(10)=abb315(10)
      acd315(11)=dotproduct(ninjaE3,spvak4k3)
      acd315(12)=abb315(16)
      acd315(13)=dotproduct(ninjaE3,spval6k3)
      acd315(14)=abb315(46)
      acd315(15)=dotproduct(ninjaE3,spval5k3)
      acd315(16)=abb315(47)
      acd315(17)=abb315(33)
      acd315(18)=abb315(55)
      acd315(19)=dotproduct(ninjaE3,spvak1k3)
      acd315(20)=dotproduct(ninjaE3,spval5k2)
      acd315(21)=acd315(16)*acd315(15)
      acd315(22)=-acd315(14)*acd315(13)
      acd315(23)=acd315(11)*acd315(12)
      acd315(24)=acd315(9)*acd315(10)
      acd315(25)=-acd315(8)+acd315(1)-acd315(7)
      acd315(26)=acd315(4)*acd315(25)
      acd315(21)=acd315(26)+acd315(24)+acd315(23)+acd315(21)+acd315(22)
      acd315(21)=acd315(2)*acd315(21)
      acd315(22)=acd315(14)*acd315(19)
      acd315(23)=acd315(11)*acd315(18)
      acd315(24)=acd315(9)*acd315(17)
      acd315(25)=acd315(6)*acd315(25)
      acd315(22)=acd315(25)+acd315(24)+acd315(22)+acd315(23)
      acd315(22)=acd315(5)*acd315(22)
      acd315(23)=-acd315(16)*acd315(19)*acd315(20)
      acd315(21)=acd315(21)+acd315(23)+acd315(22)
      acd315(21)=acd315(3)*acd315(21)
      brack(ninjaidxt0x0mu0)=acd315(21)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d315h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd315h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k5
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
end module     p0_dbaru_epnebbbarg_d315h4l132
