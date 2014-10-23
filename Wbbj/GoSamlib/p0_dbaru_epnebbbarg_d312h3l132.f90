module     p0_dbaru_epnebbbarg_d312h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d312h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd312h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd312
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
      use p0_dbaru_epnebbbarg_abbrevd312h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(34) :: acd312
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd312(1)=dotproduct(k2,ninjaE3)
      acd312(2)=dotproduct(ninjaE3,spvak2k7)
      acd312(3)=dotproduct(ninjaE3,spvak2l5)
      acd312(4)=abb312(143)
      acd312(5)=dotproduct(ninjaE3,spvak1l5)
      acd312(6)=abb312(60)
      acd312(7)=dotproduct(k3,ninjaE3)
      acd312(8)=dotproduct(ninjaE3,spvak1l6)
      acd312(9)=abb312(25)
      acd312(10)=abb312(51)
      acd312(11)=dotproduct(k4,ninjaE3)
      acd312(12)=dotproduct(ninjaE3,spvak1k3)
      acd312(13)=dotproduct(ninjaE3,spvak2l6)
      acd312(14)=abb312(21)
      acd312(15)=abb312(65)
      acd312(16)=dotproduct(ninjaE3,spvak1k2)
      acd312(17)=abb312(34)
      acd312(18)=dotproduct(ninjaE3,spvak2k3)
      acd312(19)=dotproduct(ninjaE3,spvak4k3)
      acd312(20)=abb312(29)
      acd312(21)=dotproduct(ninjaE3,spvak4k2)
      acd312(22)=abb312(33)
      acd312(23)=abb312(144)
      acd312(24)=abb312(61)
      acd312(25)=abb312(37)
      acd312(26)=abb312(62)
      acd312(27)=abb312(59)
      acd312(28)=acd312(7)+acd312(11)
      acd312(29)=-acd312(10)*acd312(28)
      acd312(30)=-acd312(15)*acd312(18)
      acd312(31)=acd312(1)*acd312(6)
      acd312(32)=acd312(21)*acd312(26)
      acd312(33)=acd312(19)*acd312(24)
      acd312(29)=acd312(33)+acd312(32)+acd312(30)+acd312(31)+acd312(29)
      acd312(29)=acd312(5)*acd312(29)
      acd312(30)=acd312(16)*acd312(27)
      acd312(31)=acd312(12)*acd312(15)
      acd312(32)=acd312(21)*acd312(25)
      acd312(33)=acd312(19)*acd312(23)
      acd312(34)=-acd312(1)+acd312(28)
      acd312(34)=acd312(4)*acd312(34)
      acd312(30)=acd312(34)+acd312(33)+acd312(32)+acd312(30)+acd312(31)
      acd312(30)=acd312(3)*acd312(30)
      acd312(28)=-acd312(9)*acd312(28)
      acd312(31)=-acd312(14)*acd312(18)
      acd312(32)=acd312(21)*acd312(22)
      acd312(33)=acd312(19)*acd312(20)
      acd312(28)=acd312(33)+acd312(31)+acd312(32)+acd312(28)
      acd312(28)=acd312(8)*acd312(28)
      acd312(31)=acd312(16)*acd312(17)
      acd312(32)=acd312(12)*acd312(14)
      acd312(31)=acd312(31)+acd312(32)
      acd312(31)=acd312(13)*acd312(31)
      acd312(28)=acd312(30)+acd312(29)+acd312(28)+acd312(31)
      acd312(28)=acd312(2)*acd312(28)
      brack(ninjaidxt0x0mu0)=acd312(28)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d312h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd312h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k5
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
end module     p0_dbaru_epnebbbarg_d312h3l132
