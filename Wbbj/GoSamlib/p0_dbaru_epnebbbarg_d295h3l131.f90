module     p0_dbaru_epnebbbarg_d295h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d295h3l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd295h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd295
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd295h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(106) :: acd295
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd295(1)=dotproduct(k2,ninjaE3)
      acd295(2)=dotproduct(ninjaE3,spvak2k7)
      acd295(3)=dotproduct(ninjaE3,spvak4k3)
      acd295(4)=dotproduct(ninjaE3,spvak1l5)
      acd295(5)=abb295(105)
      acd295(6)=dotproduct(ninjaE3,spvak1k2)
      acd295(7)=dotproduct(ninjaE3,spvak2l6)
      acd295(8)=abb295(50)
      acd295(9)=dotproduct(ninjaE3,spvak2l5)
      acd295(10)=abb295(54)
      acd295(11)=dotproduct(k1,ninjaE3)
      acd295(12)=abb295(102)
      acd295(13)=abb295(74)
      acd295(14)=abb295(94)
      acd295(15)=dotproduct(ninjaE3,spvak1k7)
      acd295(16)=abb295(150)
      acd295(17)=dotproduct(ninjaE3,spvak4l6)
      acd295(18)=abb295(190)
      acd295(19)=abb295(16)
      acd295(20)=dotproduct(ninjaE3,spvak1l6)
      acd295(21)=abb295(147)
      acd295(22)=abb295(220)
      acd295(23)=abb295(165)
      acd295(24)=abb295(82)
      acd295(25)=abb295(212)
      acd295(26)=abb295(203)
      acd295(27)=dotproduct(k2,ninjaA)
      acd295(28)=dotproduct(l6,ninjaE3)
      acd295(29)=abb295(112)
      acd295(30)=dotproduct(k7,ninjaE3)
      acd295(31)=dotproduct(ninjaA,ninjaE3)
      acd295(32)=abb295(118)
      acd295(33)=abb295(46)
      acd295(34)=abb295(192)
      acd295(35)=dotproduct(ninjaA,spvak2k7)
      acd295(36)=dotproduct(ninjaA,spvak4k3)
      acd295(37)=dotproduct(ninjaA,spvak1l5)
      acd295(38)=dotproduct(ninjaE3,spvak2k3)
      acd295(39)=abb295(19)
      acd295(40)=abb295(22)
      acd295(41)=abb295(31)
      acd295(42)=abb295(38)
      acd295(43)=dotproduct(ninjaE3,spvak1k3)
      acd295(44)=abb295(127)
      acd295(45)=abb295(130)
      acd295(46)=dotproduct(ninjaE3,spvak7l6)
      acd295(47)=abb295(129)
      acd295(48)=dotproduct(ninjaE3,spval5l6)
      acd295(49)=abb295(162)
      acd295(50)=abb295(56)
      acd295(51)=abb295(75)
      acd295(52)=dotproduct(l5,ninjaE3)
      acd295(53)=abb295(149)
      acd295(54)=abb295(164)
      acd295(55)=abb295(17)
      acd295(56)=abb295(21)
      acd295(57)=abb295(143)
      acd295(58)=abb295(45)
      acd295(59)=abb295(136)
      acd295(60)=dotproduct(ninjaA,spvak1k2)
      acd295(61)=dotproduct(ninjaA,spvak2l6)
      acd295(62)=dotproduct(ninjaA,spvak2l5)
      acd295(63)=abb295(14)
      acd295(64)=abb295(40)
      acd295(65)=abb295(28)
      acd295(66)=dotproduct(ninjaE3,spvak2k1)
      acd295(67)=abb295(48)
      acd295(68)=abb295(44)
      acd295(69)=abb295(41)
      acd295(70)=abb295(73)
      acd295(71)=abb295(155)
      acd295(72)=abb295(145)
      acd295(73)=abb295(144)
      acd295(74)=abb295(65)
      acd295(75)=abb295(96)
      acd295(76)=abb295(139)
      acd295(77)=dotproduct(ninjaE3,spval6l5)
      acd295(78)=abb295(71)
      acd295(79)=dotproduct(ninjaE3,spval6k2)
      acd295(80)=abb295(106)
      acd295(81)=abb295(77)
      acd295(82)=abb295(140)
      acd295(83)=abb295(66)
      acd295(84)=abb295(121)
      acd295(85)=abb295(176)
      acd295(86)=acd295(9)*acd295(10)
      acd295(87)=acd295(6)*acd295(86)
      acd295(88)=acd295(6)*acd295(8)
      acd295(89)=-acd295(7)*acd295(88)
      acd295(90)=acd295(4)*acd295(5)
      acd295(91)=acd295(1)*acd295(90)
      acd295(87)=acd295(91)+acd295(87)+acd295(89)
      acd295(87)=acd295(2)*acd295(3)*acd295(87)
      acd295(89)=acd295(48)*acd295(49)
      acd295(91)=-acd295(32)*acd295(46)
      acd295(92)=acd295(28)*acd295(29)
      acd295(93)=acd295(17)*acd295(47)
      acd295(94)=acd295(43)*acd295(44)
      acd295(95)=acd295(38)*acd295(39)
      acd295(96)=acd295(20)*acd295(41)
      acd295(97)=acd295(36)*acd295(90)
      acd295(98)=acd295(11)*acd295(12)
      acd295(99)=acd295(15)*acd295(45)
      acd295(100)=acd295(7)*acd295(42)
      acd295(89)=acd295(100)+acd295(99)+acd295(98)+acd295(97)+acd295(96)+acd295&
      &(95)+acd295(94)+acd295(93)+acd295(92)+acd295(89)+acd295(91)
      acd295(89)=acd295(1)*acd295(89)
      acd295(91)=acd295(10)*acd295(62)
      acd295(92)=-acd295(8)*acd295(61)
      acd295(91)=acd295(92)+acd295(65)+acd295(91)
      acd295(91)=acd295(6)*acd295(91)
      acd295(92)=acd295(79)*acd295(80)
      acd295(93)=acd295(77)*acd295(78)
      acd295(94)=acd295(20)*acd295(73)
      acd295(95)=acd295(5)*acd295(27)
      acd295(95)=acd295(75)+acd295(95)
      acd295(95)=acd295(4)*acd295(95)
      acd295(96)=acd295(10)*acd295(60)
      acd295(96)=acd295(76)+acd295(96)
      acd295(96)=acd295(9)*acd295(96)
      acd295(97)=-acd295(8)*acd295(60)
      acd295(97)=acd295(74)+acd295(97)
      acd295(97)=acd295(7)*acd295(97)
      acd295(98)=acd295(5)*acd295(37)
      acd295(98)=acd295(40)+acd295(98)
      acd295(98)=acd295(1)*acd295(98)
      acd295(91)=acd295(98)+acd295(97)+acd295(91)+acd295(96)+acd295(95)+acd295(&
      &94)+acd295(92)+acd295(93)
      acd295(91)=acd295(3)*acd295(91)
      acd295(92)=acd295(11)-acd295(30)
      acd295(93)=acd295(19)*acd295(92)
      acd295(94)=acd295(66)*acd295(67)
      acd295(95)=acd295(38)*acd295(63)
      acd295(96)=2.0_ki*acd295(31)
      acd295(97)=acd295(55)*acd295(96)
      acd295(98)=acd295(36)*acd295(86)
      acd295(93)=acd295(98)+acd295(97)+acd295(94)+acd295(95)+acd295(93)
      acd295(93)=acd295(6)*acd295(93)
      acd295(94)=acd295(30)*acd295(21)
      acd295(95)=acd295(66)*acd295(81)
      acd295(97)=acd295(28)+acd295(52)
      acd295(98)=-acd295(21)*acd295(97)
      acd295(99)=acd295(38)*acd295(69)
      acd295(95)=-acd295(94)+acd295(99)+acd295(95)+acd295(98)
      acd295(95)=acd295(20)*acd295(95)
      acd295(98)=-acd295(43)*acd295(69)
      acd295(99)=acd295(11)*acd295(22)
      acd295(100)=-acd295(15)*acd295(71)
      acd295(101)=-acd295(36)*acd295(88)
      acd295(98)=acd295(101)+acd295(100)+acd295(98)+acd295(99)
      acd295(98)=acd295(7)*acd295(98)
      acd295(99)=acd295(96)*acd295(58)
      acd295(100)=acd295(30)*acd295(23)
      acd295(99)=acd295(99)-acd295(100)
      acd295(100)=acd295(66)*acd295(82)
      acd295(101)=-acd295(38)*acd295(70)
      acd295(100)=acd295(100)+acd295(101)+acd295(99)
      acd295(100)=acd295(4)*acd295(100)
      acd295(101)=acd295(20)*acd295(21)
      acd295(102)=acd295(4)*acd295(23)
      acd295(103)=acd295(9)*acd295(24)
      acd295(101)=acd295(103)+acd295(101)+acd295(102)
      acd295(101)=acd295(11)*acd295(101)
      acd295(102)=acd295(20)*acd295(71)
      acd295(103)=acd295(4)*acd295(72)
      acd295(104)=acd295(6)*acd295(64)
      acd295(102)=acd295(104)+acd295(102)+acd295(103)
      acd295(102)=acd295(2)*acd295(102)
      acd295(103)=acd295(54)*acd295(97)
      acd295(104)=acd295(9)*acd295(70)
      acd295(103)=acd295(104)+acd295(103)
      acd295(103)=acd295(43)*acd295(103)
      acd295(104)=acd295(43)*acd295(57)
      acd295(105)=acd295(38)*acd295(56)
      acd295(104)=acd295(104)+acd295(105)
      acd295(104)=acd295(104)*acd295(96)
      acd295(97)=-acd295(38)*acd295(53)*acd295(97)
      acd295(105)=acd295(15)*acd295(9)
      acd295(106)=-acd295(72)*acd295(105)
      acd295(89)=acd295(102)+acd295(91)+acd295(89)+acd295(98)+acd295(93)+acd295&
      &(106)+acd295(101)+acd295(100)+acd295(95)+acd295(104)+acd295(97)+acd295(1&
      &03)
      acd295(89)=acd295(2)*acd295(89)
      acd295(91)=acd295(20)*acd295(50)
      acd295(90)=acd295(35)*acd295(90)
      acd295(93)=acd295(11)*acd295(13)
      acd295(95)=acd295(15)*acd295(51)
      acd295(90)=acd295(95)+acd295(93)+acd295(91)+acd295(90)
      acd295(90)=acd295(1)*acd295(90)
      acd295(91)=acd295(11)*acd295(25)
      acd295(93)=-acd295(15)*acd295(73)
      acd295(88)=-acd295(35)*acd295(88)
      acd295(88)=acd295(88)+acd295(91)+acd295(93)
      acd295(88)=acd295(7)*acd295(88)
      acd295(91)=acd295(20)*acd295(83)
      acd295(93)=acd295(4)*acd295(84)
      acd295(91)=acd295(91)+acd295(93)
      acd295(91)=acd295(66)*acd295(91)
      acd295(93)=acd295(66)*acd295(68)
      acd295(86)=acd295(35)*acd295(86)
      acd295(86)=acd295(93)+acd295(86)
      acd295(86)=acd295(6)*acd295(86)
      acd295(93)=acd295(11)*acd295(9)
      acd295(95)=acd295(26)*acd295(93)
      acd295(97)=acd295(85)*acd295(105)
      acd295(86)=acd295(90)+acd295(88)+acd295(86)+acd295(97)+acd295(95)+acd295(&
      &91)
      acd295(86)=acd295(3)*acd295(86)
      acd295(88)=acd295(92)*acd295(18)
      acd295(90)=acd295(34)*acd295(96)
      acd295(88)=acd295(90)+acd295(88)
      acd295(88)=acd295(17)*acd295(88)
      acd295(90)=-acd295(16)*acd295(92)
      acd295(91)=acd295(33)*acd295(96)
      acd295(90)=acd295(91)+acd295(90)
      acd295(90)=acd295(15)*acd295(90)
      acd295(91)=-acd295(14)*acd295(92)
      acd295(92)=-acd295(32)*acd295(96)
      acd295(91)=acd295(92)+acd295(91)
      acd295(91)=acd295(7)*acd295(91)
      acd295(88)=acd295(91)+acd295(90)+acd295(88)
      acd295(88)=acd295(1)*acd295(88)
      acd295(90)=-acd295(59)*acd295(96)
      acd295(91)=-acd295(11)*acd295(21)
      acd295(90)=acd295(91)+acd295(94)+acd295(90)
      acd295(90)=acd295(7)*acd295(90)
      acd295(91)=-acd295(9)*acd295(99)
      acd295(92)=-acd295(23)*acd295(93)
      acd295(90)=acd295(90)+acd295(91)+acd295(92)
      acd295(90)=acd295(15)*acd295(90)
      acd295(86)=acd295(89)+acd295(86)+acd295(88)+acd295(90)
      brack(ninjaidxt1mu0)=acd295(87)
      brack(ninjaidxt0mu0)=acd295(86)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d295h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd295h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d295h3l131
