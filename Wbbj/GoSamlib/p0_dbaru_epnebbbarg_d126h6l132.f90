module     p0_dbaru_epnebbbarg_d126h6l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d126h6l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd126h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd126
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd126(1)=dotproduct(k2,ninjaE3)
      acd126(2)=dotproduct(ninjaE3,spvak4k3)
      acd126(3)=dotproduct(ninjaE3,spvak7k2)
      acd126(4)=abb126(25)
      acd126(5)=dotproduct(l5,ninjaE3)
      acd126(6)=abb126(26)
      acd126(7)=dotproduct(l6,ninjaE3)
      acd126(8)=dotproduct(ninjaE3,spvak1k2)
      acd126(9)=abb126(13)
      acd126(10)=dotproduct(ninjaE3,spvak1l6)
      acd126(11)=abb126(15)
      acd126(12)=dotproduct(ninjaE3,spval5k2)
      acd126(13)=abb126(16)
      acd126(14)=dotproduct(ninjaE3,spval5l6)
      acd126(15)=abb126(31)
      acd126(16)=-acd126(7)-acd126(5)
      acd126(16)=acd126(6)*acd126(16)
      acd126(17)=acd126(4)*acd126(1)
      acd126(18)=acd126(9)*acd126(8)
      acd126(19)=acd126(11)*acd126(10)
      acd126(20)=acd126(13)*acd126(12)
      acd126(21)=acd126(15)*acd126(14)
      acd126(16)=acd126(21)+acd126(20)+acd126(19)+acd126(18)+acd126(17)+acd126(&
      &16)
      acd126(16)=acd126(16)*acd126(3)*acd126(2)
      brack(ninjaidxt1x0mu0)=acd126(16)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd126h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(71) :: acd126
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd126(1)=dotproduct(k2,ninjaA1)
      acd126(2)=dotproduct(ninjaE3,spvak7k2)
      acd126(3)=dotproduct(ninjaE3,spvak4k3)
      acd126(4)=abb126(25)
      acd126(5)=dotproduct(k2,ninjaE3)
      acd126(6)=dotproduct(ninjaA1,spvak7k2)
      acd126(7)=dotproduct(ninjaA1,spvak4k3)
      acd126(8)=dotproduct(l5,ninjaA1)
      acd126(9)=abb126(26)
      acd126(10)=dotproduct(l5,ninjaE3)
      acd126(11)=dotproduct(l6,ninjaA1)
      acd126(12)=dotproduct(l6,ninjaE3)
      acd126(13)=dotproduct(ninjaA1,spval5k2)
      acd126(14)=abb126(16)
      acd126(15)=dotproduct(ninjaE3,spval5k2)
      acd126(16)=dotproduct(ninjaE3,spvak1k2)
      acd126(17)=abb126(13)
      acd126(18)=dotproduct(ninjaE3,spvak1l6)
      acd126(19)=abb126(15)
      acd126(20)=dotproduct(ninjaE3,spval5l6)
      acd126(21)=abb126(31)
      acd126(22)=dotproduct(ninjaA1,spvak1k2)
      acd126(23)=dotproduct(ninjaA1,spvak1l6)
      acd126(24)=dotproduct(ninjaA1,spval5l6)
      acd126(25)=dotproduct(k2,ninjaA0)
      acd126(26)=dotproduct(k7,ninjaE3)
      acd126(27)=abb126(33)
      acd126(28)=dotproduct(ninjaA0,ninjaE3)
      acd126(29)=abb126(28)
      acd126(30)=dotproduct(ninjaA0,spvak7k2)
      acd126(31)=dotproduct(ninjaA0,spvak4k3)
      acd126(32)=abb126(48)
      acd126(33)=dotproduct(k3,ninjaE3)
      acd126(34)=abb126(44)
      acd126(35)=dotproduct(k4,ninjaE3)
      acd126(36)=dotproduct(l5,ninjaA0)
      acd126(37)=abb126(23)
      acd126(38)=abb126(22)
      acd126(39)=abb126(45)
      acd126(40)=dotproduct(l6,ninjaA0)
      acd126(41)=abb126(27)
      acd126(42)=abb126(19)
      acd126(43)=abb126(32)
      acd126(44)=abb126(21)
      acd126(45)=abb126(39)
      acd126(46)=abb126(34)
      acd126(47)=abb126(29)
      acd126(48)=dotproduct(ninjaA0,spval5k2)
      acd126(49)=dotproduct(ninjaA0,spvak1k2)
      acd126(50)=dotproduct(ninjaA0,spvak1l6)
      acd126(51)=dotproduct(ninjaA0,spval5l6)
      acd126(52)=abb126(10)
      acd126(53)=dotproduct(ninjaE3,spvak1k3)
      acd126(54)=abb126(12)
      acd126(55)=abb126(14)
      acd126(56)=abb126(20)
      acd126(57)=dotproduct(ninjaE3,spvak1k7)
      acd126(58)=acd126(21)*acd126(24)
      acd126(59)=acd126(19)*acd126(23)
      acd126(60)=acd126(17)*acd126(22)
      acd126(61)=acd126(14)*acd126(13)
      acd126(62)=acd126(4)*acd126(1)
      acd126(63)=-acd126(11)-acd126(8)
      acd126(63)=acd126(9)*acd126(63)
      acd126(58)=acd126(63)+acd126(62)+acd126(61)+acd126(60)+acd126(58)+acd126(&
      &59)
      acd126(58)=acd126(3)*acd126(58)
      acd126(59)=acd126(19)*acd126(18)
      acd126(60)=acd126(16)*acd126(17)
      acd126(59)=acd126(59)+acd126(60)
      acd126(60)=acd126(10)+acd126(12)
      acd126(61)=acd126(60)*acd126(9)
      acd126(62)=acd126(20)*acd126(21)
      acd126(63)=acd126(15)*acd126(14)
      acd126(64)=acd126(5)*acd126(4)
      acd126(62)=acd126(61)-acd126(64)-acd126(59)-acd126(62)-acd126(63)
      acd126(63)=-acd126(7)*acd126(62)
      acd126(58)=acd126(58)+acd126(63)
      acd126(58)=acd126(2)*acd126(58)
      acd126(63)=-acd126(3)*acd126(6)*acd126(62)
      acd126(58)=acd126(63)+acd126(58)
      acd126(63)=acd126(21)*acd126(51)
      acd126(64)=acd126(19)*acd126(50)
      acd126(65)=acd126(17)*acd126(49)
      acd126(66)=acd126(14)*acd126(48)
      acd126(67)=acd126(4)*acd126(25)
      acd126(68)=-acd126(40)-acd126(36)
      acd126(68)=acd126(9)*acd126(68)
      acd126(63)=acd126(68)+acd126(67)+acd126(66)+acd126(65)+acd126(64)+acd126(&
      &55)+acd126(63)
      acd126(63)=acd126(3)*acd126(63)
      acd126(59)=-acd126(61)+acd126(59)
      acd126(59)=acd126(31)*acd126(59)
      acd126(61)=-acd126(39)*acd126(60)
      acd126(64)=-acd126(26)-acd126(35)-acd126(33)
      acd126(64)=acd126(34)*acd126(64)
      acd126(65)=acd126(53)*acd126(54)
      acd126(66)=-acd126(46)*acd126(57)
      acd126(67)=2.0_ki*acd126(28)
      acd126(68)=acd126(45)*acd126(67)
      acd126(69)=acd126(31)*acd126(21)
      acd126(69)=acd126(56)+acd126(69)
      acd126(69)=acd126(20)*acd126(69)
      acd126(70)=acd126(31)*acd126(14)
      acd126(70)=acd126(52)+acd126(70)
      acd126(70)=acd126(15)*acd126(70)
      acd126(71)=acd126(31)*acd126(4)
      acd126(71)=acd126(32)+acd126(71)
      acd126(71)=acd126(5)*acd126(71)
      acd126(59)=acd126(63)+acd126(71)+acd126(70)+acd126(69)+acd126(68)+acd126(&
      &65)+acd126(66)+acd126(64)+acd126(61)+acd126(59)
      acd126(59)=acd126(2)*acd126(59)
      acd126(61)=-acd126(3)*acd126(30)*acd126(62)
      acd126(62)=acd126(67)*acd126(38)
      acd126(63)=acd126(26)*acd126(37)
      acd126(62)=acd126(62)+acd126(63)
      acd126(60)=-acd126(62)*acd126(60)
      acd126(62)=acd126(46)*acd126(67)
      acd126(63)=acd126(26)*acd126(42)
      acd126(62)=acd126(62)+acd126(63)
      acd126(62)=acd126(16)*acd126(62)
      acd126(63)=acd126(47)*acd126(67)
      acd126(64)=acd126(26)*acd126(43)
      acd126(63)=acd126(63)+acd126(64)
      acd126(63)=acd126(20)*acd126(63)
      acd126(64)=acd126(44)*acd126(67)
      acd126(65)=acd126(26)*acd126(41)
      acd126(64)=acd126(64)+acd126(65)
      acd126(64)=acd126(15)*acd126(64)
      acd126(65)=acd126(29)*acd126(67)
      acd126(66)=acd126(26)*acd126(27)
      acd126(65)=acd126(65)+acd126(66)
      acd126(65)=acd126(5)*acd126(65)
      acd126(59)=acd126(59)+acd126(61)+acd126(65)+acd126(64)+acd126(63)+acd126(&
      &62)+acd126(60)
      brack(ninjaidxt0x0mu0)=acd126(59)
      brack(ninjaidxt0x1mu0)=acd126(58)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d126h6_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd126h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3-k2+k7+k4
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
end module     p0_dbaru_epnebbbarg_d126h6l132
