module     p0_dbaru_epnebbbarg_d84h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d84h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd84h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd84
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd84(1)=dotproduct(k2,ninjaE3)
      acd84(2)=dotproduct(ninjaE3,spvak1k2)
      acd84(3)=dotproduct(ninjaE3,spvak2k7)
      acd84(4)=dotproduct(ninjaE3,spvak4k3)
      acd84(5)=abb84(21)
      acd84(6)=dotproduct(ninjaE3,spval6l5)
      acd84(7)=abb84(44)
      acd84(8)=acd84(5)*acd84(1)
      acd84(9)=acd84(7)*acd84(6)
      acd84(8)=acd84(8)+acd84(9)
      acd84(8)=acd84(2)*acd84(8)*acd84(4)*acd84(3)
      brack(ninjaidxt1x0mu0)=acd84(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd84h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(77) :: acd84
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd84(1)=dotproduct(k2,ninjaA1)
      acd84(2)=dotproduct(ninjaE3,spvak1k2)
      acd84(3)=dotproduct(ninjaE3,spvak2k7)
      acd84(4)=dotproduct(ninjaE3,spvak4k3)
      acd84(5)=abb84(21)
      acd84(6)=dotproduct(k2,ninjaE3)
      acd84(7)=dotproduct(ninjaA1,spvak1k2)
      acd84(8)=dotproduct(ninjaA1,spvak2k7)
      acd84(9)=dotproduct(ninjaA1,spvak4k3)
      acd84(10)=dotproduct(ninjaE3,spval6l5)
      acd84(11)=abb84(44)
      acd84(12)=dotproduct(ninjaA1,spval6l5)
      acd84(13)=dotproduct(k1,ninjaE3)
      acd84(14)=abb84(85)
      acd84(15)=abb84(23)
      acd84(16)=abb84(98)
      acd84(17)=abb84(46)
      acd84(18)=abb84(69)
      acd84(19)=dotproduct(ninjaE3,spval6k2)
      acd84(20)=abb84(72)
      acd84(21)=dotproduct(ninjaE3,spvak4k2)
      acd84(22)=abb84(84)
      acd84(23)=dotproduct(ninjaE3,spvak1k3)
      acd84(24)=abb84(38)
      acd84(25)=dotproduct(k2,ninjaA0)
      acd84(26)=dotproduct(ninjaA0,ninjaE3)
      acd84(27)=abb84(64)
      acd84(28)=dotproduct(k3,ninjaE3)
      acd84(29)=abb84(101)
      acd84(30)=dotproduct(k4,ninjaE3)
      acd84(31)=dotproduct(k7,ninjaE3)
      acd84(32)=abb84(73)
      acd84(33)=abb84(35)
      acd84(34)=abb84(96)
      acd84(35)=dotproduct(ninjaA0,spvak1k2)
      acd84(36)=dotproduct(ninjaA0,spvak2k7)
      acd84(37)=dotproduct(ninjaA0,spvak4k3)
      acd84(38)=abb84(20)
      acd84(39)=abb84(79)
      acd84(40)=abb84(42)
      acd84(41)=abb84(47)
      acd84(42)=abb84(60)
      acd84(43)=abb84(25)
      acd84(44)=abb84(30)
      acd84(45)=abb84(75)
      acd84(46)=abb84(37)
      acd84(47)=abb84(86)
      acd84(48)=abb84(43)
      acd84(49)=abb84(33)
      acd84(50)=dotproduct(ninjaA0,spval6l5)
      acd84(51)=abb84(18)
      acd84(52)=abb84(61)
      acd84(53)=dotproduct(ninjaE3,spvak7k2)
      acd84(54)=abb84(29)
      acd84(55)=abb84(32)
      acd84(56)=abb84(80)
      acd84(57)=abb84(74)
      acd84(58)=dotproduct(ninjaE3,spvak3k2)
      acd84(59)=abb84(50)
      acd84(60)=dotproduct(ninjaE3,spvak1l5)
      acd84(61)=abb84(58)
      acd84(62)=dotproduct(ninjaE3,spvak1k4)
      acd84(63)=abb84(67)
      acd84(64)=acd84(10)*acd84(11)
      acd84(65)=acd84(6)*acd84(5)
      acd84(64)=acd84(64)+acd84(65)
      acd84(65)=acd84(7)*acd84(64)
      acd84(66)=acd84(11)*acd84(12)
      acd84(67)=acd84(5)*acd84(1)
      acd84(66)=acd84(66)+acd84(67)
      acd84(66)=acd84(2)*acd84(66)
      acd84(65)=acd84(66)+acd84(65)
      acd84(65)=acd84(4)*acd84(65)
      acd84(64)=acd84(64)*acd84(2)
      acd84(66)=acd84(9)*acd84(64)
      acd84(65)=acd84(65)+acd84(66)
      acd84(65)=acd84(3)*acd84(65)
      acd84(64)=acd84(4)*acd84(8)*acd84(64)
      acd84(64)=acd84(64)+acd84(65)
      acd84(65)=acd84(11)*acd84(50)
      acd84(66)=acd84(5)*acd84(25)
      acd84(65)=acd84(66)+acd84(51)+acd84(65)
      acd84(65)=acd84(2)*acd84(65)
      acd84(66)=-acd84(13)-acd84(31)
      acd84(66)=acd84(17)*acd84(66)
      acd84(67)=acd84(60)*acd84(61)
      acd84(68)=acd84(53)*acd84(54)
      acd84(69)=acd84(47)*acd84(62)
      acd84(70)=-acd84(46)*acd84(58)
      acd84(71)=acd84(21)*acd84(57)
      acd84(72)=acd84(23)*acd84(59)
      acd84(73)=acd84(19)*acd84(56)
      acd84(74)=2.0_ki*acd84(26)
      acd84(75)=acd84(43)*acd84(74)
      acd84(76)=acd84(11)*acd84(35)
      acd84(76)=acd84(55)+acd84(76)
      acd84(76)=acd84(10)*acd84(76)
      acd84(77)=acd84(5)*acd84(35)
      acd84(77)=acd84(39)+acd84(77)
      acd84(77)=acd84(6)*acd84(77)
      acd84(65)=acd84(77)+acd84(76)+acd84(65)+acd84(75)+acd84(73)+acd84(72)+acd&
      &84(71)+acd84(70)+acd84(69)+acd84(67)+acd84(68)+acd84(66)
      acd84(65)=acd84(4)*acd84(65)
      acd84(66)=acd84(28)+acd84(30)
      acd84(67)=-acd84(29)*acd84(66)
      acd84(68)=acd84(23)*acd84(40)
      acd84(69)=acd84(13)*acd84(15)
      acd84(70)=acd84(33)*acd84(74)
      acd84(71)=acd84(5)*acd84(37)
      acd84(71)=acd84(38)+acd84(71)
      acd84(71)=acd84(2)*acd84(71)
      acd84(67)=acd84(71)+acd84(70)+acd84(69)+acd84(68)+acd84(67)
      acd84(67)=acd84(6)*acd84(67)
      acd84(68)=acd84(23)*acd84(63)
      acd84(69)=acd84(13)*acd84(18)
      acd84(70)=acd84(44)*acd84(74)
      acd84(71)=acd84(11)*acd84(37)
      acd84(71)=acd84(52)+acd84(71)
      acd84(71)=acd84(2)*acd84(71)
      acd84(68)=acd84(71)+acd84(70)+acd84(68)+acd84(69)
      acd84(68)=acd84(10)*acd84(68)
      acd84(69)=acd84(21)*acd84(22)
      acd84(70)=acd84(23)*acd84(24)
      acd84(71)=acd84(19)*acd84(20)
      acd84(69)=-acd84(71)+acd84(69)-acd84(70)
      acd84(66)=-acd84(13)+acd84(66)
      acd84(66)=acd84(69)*acd84(66)
      acd84(69)=-acd84(21)*acd84(46)
      acd84(70)=acd84(23)*acd84(47)
      acd84(71)=acd84(19)*acd84(45)
      acd84(69)=acd84(71)+acd84(69)+acd84(70)
      acd84(69)=acd84(69)*acd84(74)
      acd84(65)=acd84(65)+acd84(67)+acd84(68)+acd84(69)+acd84(66)
      acd84(65)=acd84(3)*acd84(65)
      acd84(66)=acd84(31)*acd84(32)
      acd84(67)=acd84(19)*acd84(42)
      acd84(68)=acd84(2)*acd84(36)
      acd84(69)=acd84(5)*acd84(68)
      acd84(70)=-acd84(10)*acd84(41)
      acd84(66)=acd84(70)+acd84(69)+acd84(66)+acd84(67)
      acd84(66)=acd84(6)*acd84(66)
      acd84(67)=-acd84(31)*acd84(41)
      acd84(69)=acd84(48)*acd84(74)
      acd84(68)=acd84(11)*acd84(68)
      acd84(67)=acd84(68)+acd84(67)+acd84(69)
      acd84(67)=acd84(10)*acd84(67)
      acd84(68)=-acd84(31)*acd84(42)
      acd84(69)=acd84(49)*acd84(74)
      acd84(68)=acd84(68)+acd84(69)
      acd84(68)=acd84(19)*acd84(68)
      acd84(66)=acd84(66)+acd84(67)+acd84(68)
      acd84(66)=acd84(4)*acd84(66)
      acd84(67)=acd84(13)*acd84(16)
      acd84(68)=acd84(34)*acd84(74)
      acd84(67)=acd84(67)+acd84(68)
      acd84(67)=acd84(10)*acd84(67)
      acd84(68)=acd84(13)*acd84(14)
      acd84(69)=acd84(27)*acd84(74)
      acd84(68)=acd84(68)+acd84(69)
      acd84(68)=acd84(6)*acd84(68)
      acd84(67)=acd84(67)+acd84(68)
      acd84(67)=acd84(6)*acd84(67)
      acd84(65)=acd84(65)+acd84(67)+acd84(66)
      brack(ninjaidxt0x0mu0)=acd84(65)
      brack(ninjaidxt0x1mu0)=acd84(64)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d84h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd84h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
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
end module     p0_dbaru_epnebbbarg_d84h1l132
