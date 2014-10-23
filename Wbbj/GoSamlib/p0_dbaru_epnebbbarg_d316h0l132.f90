module     p0_dbaru_epnebbbarg_d316h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d316h0l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd316h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd316
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
      use p0_dbaru_epnebbbarg_abbrevd316h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd316
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd316(1)=dotproduct(k2,ninjaE3)
      acd316(2)=dotproduct(ninjaE3,spvak2k7)
      acd316(3)=dotproduct(ninjaE3,spval6k2)
      acd316(4)=abb316(43)
      acd316(5)=dotproduct(ninjaE3,spvak1k2)
      acd316(6)=abb316(26)
      acd316(7)=dotproduct(k3,ninjaE3)
      acd316(8)=dotproduct(k4,ninjaE3)
      acd316(9)=dotproduct(ninjaE3,spvak4k2)
      acd316(10)=abb316(17)
      acd316(11)=abb316(23)
      acd316(12)=dotproduct(ninjaE3,spvak1k3)
      acd316(13)=abb316(33)
      acd316(14)=dotproduct(ninjaE3,spvak4k3)
      acd316(15)=abb316(41)
      acd316(16)=dotproduct(ninjaE3,spval6k3)
      acd316(17)=abb316(39)
      acd316(18)=dotproduct(ninjaE3,spval5k3)
      acd316(19)=abb316(40)
      acd316(20)=dotproduct(ninjaE3,spval5k2)
      acd316(21)=-acd316(19)*acd316(18)
      acd316(22)=acd316(14)*acd316(17)
      acd316(23)=acd316(13)*acd316(16)
      acd316(24)=acd316(9)*acd316(11)
      acd316(25)=-acd316(8)+acd316(1)-acd316(7)
      acd316(26)=acd316(6)*acd316(25)
      acd316(21)=acd316(26)+acd316(24)+acd316(23)+acd316(21)+acd316(22)
      acd316(21)=acd316(5)*acd316(21)
      acd316(22)=acd316(14)*acd316(15)
      acd316(23)=-acd316(12)*acd316(13)
      acd316(24)=acd316(9)*acd316(10)
      acd316(25)=acd316(4)*acd316(25)
      acd316(22)=acd316(25)+acd316(24)+acd316(22)+acd316(23)
      acd316(22)=acd316(3)*acd316(22)
      acd316(23)=acd316(12)*acd316(19)*acd316(20)
      acd316(21)=acd316(21)+acd316(23)+acd316(22)
      acd316(21)=acd316(2)*acd316(21)
      brack(ninjaidxt0x0mu0)=acd316(21)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d316h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd316h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
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
end module     p0_dbaru_epnebbbarg_d316h0l132
