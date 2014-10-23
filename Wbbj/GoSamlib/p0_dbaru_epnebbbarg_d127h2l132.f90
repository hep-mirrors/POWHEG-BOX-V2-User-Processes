module     p0_dbaru_epnebbbarg_d127h2l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d127h2l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd127h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(25) :: acd127
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd127(1)=dotproduct(k2,ninjaE3)
      acd127(2)=dotproduct(ninjaE3,spvak1k2)
      acd127(3)=dotproduct(ninjaE3,spvak4k3)
      acd127(4)=abb127(38)
      acd127(5)=dotproduct(l5,ninjaE3)
      acd127(6)=abb127(21)
      acd127(7)=dotproduct(l6,ninjaE3)
      acd127(8)=dotproduct(k7,ninjaE3)
      acd127(9)=dotproduct(ninjaE3,spvak2k7)
      acd127(10)=abb127(25)
      acd127(11)=dotproduct(ninjaE3,spvak2l5)
      acd127(12)=abb127(50)
      acd127(13)=dotproduct(ninjaE3,spval5k7)
      acd127(14)=abb127(51)
      acd127(15)=dotproduct(ninjaE3,spval5l6)
      acd127(16)=abb127(54)
      acd127(17)=dotproduct(ninjaE3,spvak2l6)
      acd127(18)=abb127(63)
      acd127(19)=acd127(8)-acd127(7)-acd127(5)
      acd127(19)=acd127(6)*acd127(19)
      acd127(20)=acd127(4)*acd127(1)
      acd127(21)=acd127(10)*acd127(9)
      acd127(22)=acd127(12)*acd127(11)
      acd127(23)=acd127(14)*acd127(13)
      acd127(24)=acd127(16)*acd127(15)
      acd127(25)=acd127(18)*acd127(17)
      acd127(19)=acd127(25)+acd127(24)+acd127(23)+acd127(22)+acd127(21)+acd127(&
      &20)+acd127(19)
      acd127(19)=acd127(19)*acd127(3)*acd127(2)
      brack(ninjaidxt1x0mu0)=acd127(19)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd127h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(109) :: acd127
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd127(1)=dotproduct(k2,ninjaA1)
      acd127(2)=dotproduct(ninjaE3,spvak1k2)
      acd127(3)=dotproduct(ninjaE3,spvak4k3)
      acd127(4)=abb127(38)
      acd127(5)=dotproduct(k2,ninjaE3)
      acd127(6)=dotproduct(ninjaA1,spvak1k2)
      acd127(7)=dotproduct(ninjaA1,spvak4k3)
      acd127(8)=dotproduct(l5,ninjaA1)
      acd127(9)=abb127(21)
      acd127(10)=dotproduct(l5,ninjaE3)
      acd127(11)=dotproduct(l6,ninjaA1)
      acd127(12)=dotproduct(l6,ninjaE3)
      acd127(13)=dotproduct(k7,ninjaA1)
      acd127(14)=dotproduct(k7,ninjaE3)
      acd127(15)=dotproduct(ninjaE3,spvak2k7)
      acd127(16)=abb127(25)
      acd127(17)=dotproduct(ninjaE3,spval5l6)
      acd127(18)=abb127(54)
      acd127(19)=dotproduct(ninjaE3,spvak2l6)
      acd127(20)=abb127(63)
      acd127(21)=dotproduct(ninjaE3,spval5k7)
      acd127(22)=abb127(51)
      acd127(23)=dotproduct(ninjaE3,spvak2l5)
      acd127(24)=abb127(50)
      acd127(25)=dotproduct(ninjaA1,spvak2k7)
      acd127(26)=dotproduct(ninjaA1,spval5l6)
      acd127(27)=dotproduct(ninjaA1,spvak2l6)
      acd127(28)=dotproduct(ninjaA1,spval5k7)
      acd127(29)=dotproduct(ninjaA1,spvak2l5)
      acd127(30)=dotproduct(k1,ninjaE3)
      acd127(31)=abb127(40)
      acd127(32)=abb127(37)
      acd127(33)=abb127(33)
      acd127(34)=dotproduct(ninjaE3,spval5k2)
      acd127(35)=abb127(28)
      acd127(36)=abb127(16)
      acd127(37)=abb127(101)
      acd127(38)=dotproduct(ninjaE3,spvak1k3)
      acd127(39)=abb127(57)
      acd127(40)=abb127(24)
      acd127(41)=abb127(118)
      acd127(42)=dotproduct(ninjaE3,spvak4k2)
      acd127(43)=abb127(48)
      acd127(44)=abb127(53)
      acd127(45)=dotproduct(ninjaE3,spvak7k2)
      acd127(46)=abb127(77)
      acd127(47)=dotproduct(ninjaE3,spval6k2)
      acd127(48)=abb127(120)
      acd127(49)=dotproduct(k2,ninjaA0)
      acd127(50)=dotproduct(k3,ninjaE3)
      acd127(51)=abb127(167)
      acd127(52)=dotproduct(k4,ninjaE3)
      acd127(53)=dotproduct(ninjaA0,ninjaE3)
      acd127(54)=abb127(47)
      acd127(55)=dotproduct(ninjaA0,spvak1k2)
      acd127(56)=dotproduct(ninjaA0,spvak4k3)
      acd127(57)=abb127(45)
      acd127(58)=abb127(36)
      acd127(59)=abb127(59)
      acd127(60)=dotproduct(l5,ninjaA0)
      acd127(61)=abb127(43)
      acd127(62)=abb127(60)
      acd127(63)=dotproduct(l6,ninjaA0)
      acd127(64)=dotproduct(k7,ninjaA0)
      acd127(65)=abb127(32)
      acd127(66)=abb127(20)
      acd127(67)=abb127(58)
      acd127(68)=abb127(35)
      acd127(69)=abb127(76)
      acd127(70)=abb127(117)
      acd127(71)=dotproduct(ninjaA0,spvak2k7)
      acd127(72)=dotproduct(ninjaA0,spval5l6)
      acd127(73)=dotproduct(ninjaA0,spvak2l6)
      acd127(74)=dotproduct(ninjaA0,spval5k7)
      acd127(75)=dotproduct(ninjaA0,spvak2l5)
      acd127(76)=abb127(13)
      acd127(77)=abb127(56)
      acd127(78)=abb127(17)
      acd127(79)=abb127(61)
      acd127(80)=abb127(31)
      acd127(81)=abb127(44)
      acd127(82)=abb127(15)
      acd127(83)=abb127(39)
      acd127(84)=abb127(49)
      acd127(85)=dotproduct(ninjaE3,spvak3k2)
      acd127(86)=abb127(55)
      acd127(87)=dotproduct(ninjaE3,spvak1k4)
      acd127(88)=abb127(86)
      acd127(89)=abb127(18)
      acd127(90)=abb127(22)
      acd127(91)=abb127(41)
      acd127(92)=abb127(62)
      acd127(93)=abb127(42)
      acd127(94)=acd127(24)*acd127(29)
      acd127(95)=acd127(22)*acd127(28)
      acd127(96)=acd127(20)*acd127(27)
      acd127(97)=acd127(18)*acd127(26)
      acd127(98)=acd127(16)*acd127(25)
      acd127(99)=acd127(4)*acd127(1)
      acd127(100)=-acd127(8)+acd127(13)-acd127(11)
      acd127(100)=acd127(9)*acd127(100)
      acd127(94)=acd127(100)+acd127(99)+acd127(98)+acd127(97)+acd127(96)+acd127&
      &(94)+acd127(95)
      acd127(94)=acd127(2)*acd127(94)
      acd127(95)=-acd127(14)+acd127(10)+acd127(12)
      acd127(96)=acd127(95)*acd127(9)
      acd127(97)=acd127(23)*acd127(24)
      acd127(98)=acd127(21)*acd127(22)
      acd127(99)=acd127(19)*acd127(20)
      acd127(100)=acd127(17)*acd127(18)
      acd127(101)=acd127(15)*acd127(16)
      acd127(96)=-acd127(96)+acd127(101)+acd127(97)+acd127(98)+acd127(99)+acd12&
      &7(100)
      acd127(97)=acd127(5)*acd127(4)
      acd127(97)=acd127(96)+acd127(97)
      acd127(98)=acd127(6)*acd127(97)
      acd127(94)=acd127(94)+acd127(98)
      acd127(94)=acd127(3)*acd127(94)
      acd127(97)=acd127(2)*acd127(7)*acd127(97)
      acd127(94)=acd127(97)+acd127(94)
      acd127(97)=acd127(24)*acd127(75)
      acd127(98)=acd127(22)*acd127(74)
      acd127(99)=acd127(20)*acd127(73)
      acd127(100)=acd127(18)*acd127(72)
      acd127(101)=acd127(16)*acd127(71)
      acd127(102)=acd127(4)*acd127(49)
      acd127(103)=-acd127(60)+acd127(64)-acd127(63)
      acd127(103)=acd127(9)*acd127(103)
      acd127(97)=acd127(103)+acd127(102)+acd127(101)+acd127(100)+acd127(99)+acd&
      &127(98)+acd127(76)+acd127(97)
      acd127(97)=acd127(2)*acd127(97)
      acd127(98)=acd127(55)*acd127(96)
      acd127(99)=acd127(68)*acd127(85)
      acd127(100)=-acd127(67)*acd127(87)
      acd127(101)=acd127(47)*acd127(88)
      acd127(102)=acd127(45)*acd127(86)
      acd127(103)=acd127(42)*acd127(84)
      acd127(104)=acd127(34)*acd127(82)
      acd127(105)=2.0_ki*acd127(53)
      acd127(106)=acd127(65)*acd127(105)
      acd127(107)=acd127(55)*acd127(4)
      acd127(107)=acd127(58)+acd127(107)
      acd127(107)=acd127(5)*acd127(107)
      acd127(108)=acd127(38)*acd127(83)
      acd127(109)=acd127(30)*acd127(33)
      acd127(97)=acd127(97)+acd127(109)+acd127(108)+acd127(107)+acd127(106)+acd&
      &127(104)+acd127(103)+acd127(102)+acd127(101)+acd127(99)+acd127(100)+acd1&
      &27(98)
      acd127(97)=acd127(3)*acd127(97)
      acd127(98)=acd127(50)+acd127(52)
      acd127(99)=acd127(39)*acd127(98)
      acd127(100)=-acd127(62)*acd127(95)
      acd127(101)=acd127(67)*acd127(105)
      acd127(102)=acd127(23)*acd127(93)
      acd127(103)=acd127(21)*acd127(92)
      acd127(104)=acd127(19)*acd127(91)
      acd127(106)=acd127(17)*acd127(90)
      acd127(107)=acd127(15)*acd127(89)
      acd127(108)=acd127(5)*acd127(59)
      acd127(99)=acd127(108)+acd127(107)+acd127(106)+acd127(104)+acd127(103)+ac&
      &d127(102)+acd127(101)+acd127(100)+acd127(99)
      acd127(99)=acd127(38)*acd127(99)
      acd127(100)=acd127(47)*acd127(48)
      acd127(101)=acd127(45)*acd127(46)
      acd127(102)=acd127(42)*acd127(43)
      acd127(103)=acd127(34)*acd127(35)
      acd127(100)=-acd127(100)+acd127(101)+acd127(102)-acd127(103)
      acd127(101)=acd127(32)*acd127(95)
      acd127(102)=acd127(23)*acd127(44)
      acd127(103)=acd127(21)*acd127(41)
      acd127(104)=acd127(19)*acd127(40)
      acd127(106)=acd127(17)*acd127(37)
      acd127(107)=acd127(15)*acd127(36)
      acd127(108)=acd127(5)*acd127(31)
      acd127(109)=-acd127(38)*acd127(39)
      acd127(101)=acd127(109)+acd127(108)+acd127(107)+acd127(106)+acd127(104)+a&
      &cd127(103)+acd127(102)+acd127(101)+acd127(100)
      acd127(101)=acd127(30)*acd127(101)
      acd127(96)=acd127(56)*acd127(96)
      acd127(95)=-acd127(61)*acd127(95)
      acd127(102)=acd127(23)*acd127(81)
      acd127(103)=acd127(21)*acd127(80)
      acd127(104)=acd127(19)*acd127(79)
      acd127(106)=acd127(17)*acd127(78)
      acd127(107)=acd127(15)*acd127(77)
      acd127(108)=acd127(56)*acd127(4)
      acd127(108)=acd127(57)+acd127(108)
      acd127(108)=acd127(5)*acd127(108)
      acd127(95)=acd127(108)+acd127(107)+acd127(106)+acd127(104)+acd127(102)+ac&
      &d127(103)+acd127(95)+acd127(96)
      acd127(95)=acd127(2)*acd127(95)
      acd127(96)=-acd127(100)*acd127(98)
      acd127(100)=acd127(47)*acd127(70)
      acd127(102)=acd127(45)*acd127(69)
      acd127(103)=-acd127(42)*acd127(68)
      acd127(104)=acd127(34)*acd127(66)
      acd127(100)=acd127(104)+acd127(103)+acd127(100)+acd127(102)
      acd127(100)=acd127(100)*acd127(105)
      acd127(98)=acd127(51)*acd127(98)
      acd127(102)=acd127(54)*acd127(105)
      acd127(98)=acd127(102)+acd127(98)
      acd127(98)=acd127(5)*acd127(98)
      acd127(95)=acd127(97)+acd127(95)+acd127(101)+acd127(99)+acd127(98)+acd127&
      &(100)+acd127(96)
      brack(ninjaidxt0x0mu0)=acd127(95)
      brack(ninjaidxt0x1mu0)=acd127(94)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d127h2_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
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
end module     p0_dbaru_epnebbbarg_d127h2l132
