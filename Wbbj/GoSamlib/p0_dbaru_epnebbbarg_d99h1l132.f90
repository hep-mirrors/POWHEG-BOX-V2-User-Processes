module     p0_dbaru_epnebbbarg_d99h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d99h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd99h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd99
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
      use p0_dbaru_epnebbbarg_abbrevd99h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(42) :: acd99
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd99(1)=dotproduct(k2,ninjaE3)
      acd99(2)=dotproduct(ninjaE3,spval6l5)
      acd99(3)=abb99(57)
      acd99(4)=dotproduct(ninjaE3,spvak4k7)
      acd99(5)=abb99(39)
      acd99(6)=dotproduct(ninjaE3,spvak4l5)
      acd99(7)=abb99(40)
      acd99(8)=dotproduct(ninjaE3,spval6k7)
      acd99(9)=abb99(68)
      acd99(10)=dotproduct(k3,ninjaE3)
      acd99(11)=dotproduct(ninjaE3,spvak4k2)
      acd99(12)=abb99(12)
      acd99(13)=dotproduct(k4,ninjaE3)
      acd99(14)=abb99(27)
      acd99(15)=abb99(15)
      acd99(16)=dotproduct(ninjaE3,spvak4k3)
      acd99(17)=abb99(32)
      acd99(18)=abb99(17)
      acd99(19)=abb99(21)
      acd99(20)=dotproduct(ninjaE3,spvak2k7)
      acd99(21)=abb99(29)
      acd99(22)=abb99(30)
      acd99(23)=dotproduct(ninjaE3,spvak2l5)
      acd99(24)=abb99(33)
      acd99(25)=abb99(16)
      acd99(26)=abb99(34)
      acd99(27)=abb99(24)
      acd99(28)=dotproduct(ninjaE3,spvak3k7)
      acd99(29)=abb99(31)
      acd99(30)=dotproduct(ninjaE3,spvak3l5)
      acd99(31)=dotproduct(ninjaE3,spvak3k2)
      acd99(32)=abb99(36)
      acd99(33)=acd99(10)+acd99(13)
      acd99(34)=acd99(12)*acd99(33)
      acd99(35)=-acd99(24)*acd99(23)
      acd99(36)=-acd99(21)*acd99(20)
      acd99(37)=acd99(8)*acd99(22)
      acd99(38)=acd99(6)*acd99(19)
      acd99(39)=acd99(4)*acd99(18)
      acd99(40)=acd99(2)*acd99(15)
      acd99(41)=acd99(16)*acd99(17)
      acd99(42)=acd99(11)*acd99(14)
      acd99(34)=acd99(42)+acd99(41)+acd99(40)+acd99(39)+acd99(38)+acd99(37)+acd&
      &99(35)+acd99(36)+acd99(34)
      acd99(34)=acd99(11)*acd99(34)
      acd99(35)=acd99(31)*acd99(32)
      acd99(36)=acd99(24)*acd99(30)
      acd99(37)=acd99(21)*acd99(28)
      acd99(38)=acd99(8)*acd99(29)
      acd99(39)=acd99(6)*acd99(27)
      acd99(40)=acd99(4)*acd99(26)
      acd99(41)=acd99(2)*acd99(25)
      acd99(35)=acd99(41)+acd99(40)+acd99(39)+acd99(38)+acd99(37)+acd99(35)+acd&
      &99(36)
      acd99(35)=acd99(16)*acd99(35)
      acd99(36)=acd99(8)*acd99(9)
      acd99(37)=-acd99(6)*acd99(7)
      acd99(38)=-acd99(4)*acd99(5)
      acd99(39)=acd99(2)*acd99(3)
      acd99(36)=acd99(39)+acd99(38)+acd99(36)+acd99(37)
      acd99(33)=acd99(33)-acd99(1)
      acd99(33)=acd99(33)*acd99(36)
      acd99(33)=acd99(34)+acd99(35)+acd99(33)
      brack(ninjaidxt0x0mu0)=acd99(33)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d99h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd99h1
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
end module     p0_dbaru_epnebbbarg_d99h1l132
