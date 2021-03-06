module     p8_cbarc_epnemumnmubarg_d1h6l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity6d1h6l132.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2x0mu0 = 0
   integer, parameter :: ninjaidxt1x0mu0 = 1
   integer, parameter :: ninjaidxt1x1mu0 = 2
   integer, parameter :: ninjaidxt0x0mu0 = 3
   integer, parameter :: ninjaidxt0x0mu2 = 4
   integer, parameter :: ninjaidxt0x1mu0 = 5
   integer, parameter :: ninjaidxt0x2mu0 = 6
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd1h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(76) :: acd1
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd1(1)=dotproduct(k1,ninjaE3)
      acd1(2)=dotproduct(ninjaE3,spvak4k3)
      acd1(3)=dotproduct(ninjaE3,spvak7k2)
      acd1(4)=abb1(72)
      acd1(5)=dotproduct(k2,ninjaE3)
      acd1(6)=dotproduct(k3,ninjaE3)
      acd1(7)=dotproduct(ninjaE3,spvak2k1)
      acd1(8)=abb1(35)
      acd1(9)=dotproduct(k4,ninjaE3)
      acd1(10)=abb1(51)
      acd1(11)=dotproduct(k7,ninjaE3)
      acd1(12)=dotproduct(ninjaE3,spvak5k6)
      acd1(13)=abb1(89)
      acd1(14)=dotproduct(ninjaA0,ninjaE3)
      acd1(15)=abb1(9)
      acd1(16)=abb1(21)
      acd1(17)=abb1(14)
      acd1(18)=abb1(55)
      acd1(19)=dotproduct(ninjaA0,spvak2k1)
      acd1(20)=abb1(8)
      acd1(21)=dotproduct(ninjaA0,spvak4k3)
      acd1(22)=dotproduct(ninjaA0,spvak5k6)
      acd1(23)=dotproduct(ninjaA0,spvak7k2)
      acd1(24)=abb1(17)
      acd1(25)=abb1(95)
      acd1(26)=dotproduct(ninjaE3,spvak4k2)
      acd1(27)=abb1(31)
      acd1(28)=dotproduct(ninjaE3,spvak4k1)
      acd1(29)=abb1(60)
      acd1(30)=dotproduct(ninjaE3,spvak7k6)
      acd1(31)=abb1(70)
      acd1(32)=dotproduct(ninjaE3,spvak5k7)
      acd1(33)=abb1(73)
      acd1(34)=dotproduct(ninjaE3,spvak5k3)
      acd1(35)=abb1(96)
      acd1(36)=dotproduct(ninjaE3,spvak4k7)
      acd1(37)=abb1(98)
      acd1(38)=dotproduct(ninjaE3,spvak4k6)
      acd1(39)=abb1(105)
      acd1(40)=dotproduct(ninjaE3,spvak2k4)
      acd1(41)=abb1(32)
      acd1(42)=dotproduct(ninjaE3,spvak2k6)
      acd1(43)=abb1(40)
      acd1(44)=dotproduct(ninjaE3,spvak5k1)
      acd1(45)=abb1(45)
      acd1(46)=dotproduct(ninjaE3,spvak2k3)
      acd1(47)=abb1(108)
      acd1(48)=abb1(88)
      acd1(49)=dotproduct(ninjaE3,spvak3k1)
      acd1(50)=abb1(61)
      acd1(51)=dotproduct(ninjaE3,spvak2k7)
      acd1(52)=abb1(82)
      acd1(53)=dotproduct(ninjaE3,spvak7k1)
      acd1(54)=abb1(110)
      acd1(55)=abb1(48)
      acd1(56)=abb1(66)
      acd1(57)=abb1(91)
      acd1(58)=abb1(93)
      acd1(59)=dotproduct(ninjaA1,spvak2k1)
      acd1(60)=dotproduct(ninjaA1,spvak4k3)
      acd1(61)=dotproduct(ninjaA1,spvak5k6)
      acd1(62)=dotproduct(ninjaA1,spvak7k2)
      acd1(63)=acd1(38)*acd1(39)
      acd1(64)=acd1(36)*acd1(37)
      acd1(65)=acd1(34)*acd1(35)
      acd1(66)=acd1(32)*acd1(33)
      acd1(67)=acd1(30)*acd1(31)
      acd1(68)=acd1(26)*acd1(27)
      acd1(69)=acd1(9)*acd1(10)
      acd1(70)=-acd1(6)-acd1(11)
      acd1(70)=acd1(8)*acd1(70)
      acd1(71)=acd1(28)*acd1(29)
      acd1(72)=2.0_ki*acd1(14)
      acd1(73)=acd1(16)*acd1(72)
      acd1(74)=acd1(20)*acd1(21)
      acd1(74)=acd1(25)+acd1(74)
      acd1(74)=acd1(12)*acd1(74)
      acd1(75)=acd1(20)*acd1(22)
      acd1(75)=acd1(24)+acd1(75)
      acd1(75)=acd1(2)*acd1(75)
      acd1(63)=acd1(75)+acd1(74)+acd1(73)+acd1(71)+acd1(70)+acd1(69)+acd1(68)+a&
      &cd1(67)+acd1(66)+acd1(65)+acd1(63)+acd1(64)
      acd1(63)=acd1(7)*acd1(63)
      acd1(64)=acd1(49)*acd1(50)
      acd1(65)=acd1(44)*acd1(45)
      acd1(66)=acd1(42)*acd1(43)
      acd1(67)=acd1(40)*acd1(41)
      acd1(68)=acd1(53)*acd1(54)
      acd1(69)=-acd1(51)*acd1(52)
      acd1(70)=acd1(46)*acd1(47)
      acd1(71)=-acd1(5)-acd1(1)
      acd1(71)=acd1(4)*acd1(71)
      acd1(73)=acd1(28)*acd1(48)
      acd1(74)=acd1(18)*acd1(72)
      acd1(75)=acd1(12)*acd1(20)
      acd1(76)=acd1(19)*acd1(75)
      acd1(64)=acd1(76)+acd1(74)+acd1(73)+acd1(71)+acd1(70)+acd1(69)+acd1(68)+a&
      &cd1(67)+acd1(66)+acd1(64)+acd1(65)
      acd1(64)=acd1(2)*acd1(64)
      acd1(65)=acd1(53)*acd1(58)
      acd1(66)=acd1(51)*acd1(57)
      acd1(67)=acd1(46)*acd1(55)
      acd1(68)=acd1(28)*acd1(56)
      acd1(65)=acd1(68)+acd1(67)+acd1(65)+acd1(66)
      acd1(65)=acd1(12)*acd1(65)
      acd1(63)=acd1(63)+acd1(65)+acd1(64)
      acd1(63)=acd1(3)*acd1(63)
      acd1(64)=acd1(11)*acd1(13)
      acd1(65)=acd1(15)*acd1(72)
      acd1(64)=acd1(64)+acd1(65)
      acd1(64)=acd1(12)*acd1(64)
      acd1(65)=acd1(75)*acd1(2)
      acd1(66)=acd1(23)*acd1(65)
      acd1(64)=acd1(64)+acd1(66)
      acd1(64)=acd1(7)*acd1(64)
      acd1(66)=acd1(17)*acd1(72)*acd1(2)*acd1(12)
      acd1(63)=acd1(63)+acd1(66)+acd1(64)
      acd1(64)=acd1(60)*acd1(75)
      acd1(66)=acd1(61)*acd1(2)*acd1(20)
      acd1(64)=acd1(64)+acd1(66)
      acd1(64)=acd1(7)*acd1(64)
      acd1(66)=acd1(59)*acd1(65)
      acd1(64)=acd1(66)+acd1(64)
      acd1(64)=acd1(3)*acd1(64)
      acd1(65)=acd1(7)*acd1(65)
      acd1(66)=acd1(62)*acd1(65)
      acd1(64)=acd1(66)+acd1(64)
      acd1(65)=acd1(3)*acd1(65)
      brack(ninjaidxt2x0mu0)=acd1(65)
      brack(ninjaidxt1x0mu0)=acd1(63)
      brack(ninjaidxt1x1mu0)=acd1(64)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd1h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(222) :: acd1
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd1(1)=dotproduct(ninjaE3,spvak4k3)
      acd1(2)=dotproduct(ninjaE3,spvak5k6)
      acd1(3)=dotproduct(ninjaE3,spvak2k1)
      acd1(4)=dotproduct(ninjaE4,spvak7k2)
      acd1(5)=abb1(8)
      acd1(6)=dotproduct(ninjaE3,spvak7k2)
      acd1(7)=dotproduct(ninjaE4,spvak2k1)
      acd1(8)=abb1(14)
      acd1(9)=dotproduct(ninjaE4,spvak5k6)
      acd1(10)=abb1(55)
      acd1(11)=dotproduct(ninjaE4,spvak4k3)
      acd1(12)=abb1(9)
      acd1(13)=abb1(21)
      acd1(14)=dotproduct(k1,ninjaA1)
      acd1(15)=abb1(72)
      acd1(16)=dotproduct(k1,ninjaE3)
      acd1(17)=dotproduct(ninjaA1,spvak4k3)
      acd1(18)=dotproduct(ninjaA1,spvak7k2)
      acd1(19)=dotproduct(k2,ninjaA1)
      acd1(20)=dotproduct(k2,ninjaE3)
      acd1(21)=dotproduct(k3,ninjaA1)
      acd1(22)=abb1(35)
      acd1(23)=dotproduct(k3,ninjaE3)
      acd1(24)=dotproduct(ninjaA1,spvak2k1)
      acd1(25)=dotproduct(k4,ninjaA1)
      acd1(26)=abb1(51)
      acd1(27)=dotproduct(k4,ninjaE3)
      acd1(28)=dotproduct(k7,ninjaA1)
      acd1(29)=abb1(89)
      acd1(30)=dotproduct(k7,ninjaE3)
      acd1(31)=dotproduct(ninjaA1,spvak5k6)
      acd1(32)=dotproduct(ninjaA0,ninjaA1)
      acd1(33)=dotproduct(ninjaA0,ninjaE3)
      acd1(34)=dotproduct(ninjaA0,spvak4k3)
      acd1(35)=dotproduct(ninjaA0,spvak5k6)
      acd1(36)=dotproduct(ninjaA0,spvak2k1)
      acd1(37)=dotproduct(ninjaA0,spvak7k2)
      acd1(38)=dotproduct(ninjaE3,spvak5k1)
      acd1(39)=abb1(45)
      acd1(40)=abb1(17)
      acd1(41)=dotproduct(ninjaE3,spvak2k3)
      acd1(42)=abb1(108)
      acd1(43)=dotproduct(ninjaE3,spvak2k6)
      acd1(44)=abb1(40)
      acd1(45)=dotproduct(ninjaE3,spvak4k1)
      acd1(46)=abb1(88)
      acd1(47)=dotproduct(ninjaE3,spvak2k4)
      acd1(48)=abb1(32)
      acd1(49)=dotproduct(ninjaE3,spvak2k7)
      acd1(50)=abb1(82)
      acd1(51)=dotproduct(ninjaE3,spvak3k1)
      acd1(52)=abb1(61)
      acd1(53)=dotproduct(ninjaE3,spvak7k1)
      acd1(54)=abb1(110)
      acd1(55)=abb1(95)
      acd1(56)=abb1(48)
      acd1(57)=abb1(66)
      acd1(58)=abb1(91)
      acd1(59)=abb1(93)
      acd1(60)=dotproduct(ninjaA1,spvak5k1)
      acd1(61)=dotproduct(ninjaE3,spvak7k6)
      acd1(62)=abb1(70)
      acd1(63)=abb1(60)
      acd1(64)=dotproduct(ninjaE3,spvak5k3)
      acd1(65)=abb1(96)
      acd1(66)=dotproduct(ninjaE3,spvak4k6)
      acd1(67)=abb1(105)
      acd1(68)=dotproduct(ninjaE3,spvak4k2)
      acd1(69)=abb1(31)
      acd1(70)=dotproduct(ninjaE3,spvak5k7)
      acd1(71)=abb1(73)
      acd1(72)=dotproduct(ninjaE3,spvak4k7)
      acd1(73)=abb1(98)
      acd1(74)=dotproduct(ninjaA1,spvak2k3)
      acd1(75)=dotproduct(ninjaA1,spvak2k6)
      acd1(76)=dotproduct(ninjaA1,spvak7k6)
      acd1(77)=dotproduct(ninjaA1,spvak4k1)
      acd1(78)=dotproduct(ninjaA1,spvak5k3)
      acd1(79)=dotproduct(ninjaA1,spvak4k6)
      acd1(80)=dotproduct(ninjaA1,spvak4k2)
      acd1(81)=dotproduct(ninjaA1,spvak2k4)
      acd1(82)=dotproduct(ninjaA1,spvak2k7)
      acd1(83)=dotproduct(ninjaA1,spvak3k1)
      acd1(84)=dotproduct(ninjaA1,spvak7k1)
      acd1(85)=dotproduct(ninjaA1,spvak5k7)
      acd1(86)=dotproduct(ninjaA1,spvak4k7)
      acd1(87)=dotproduct(ninjaA1,ninjaA1)
      acd1(88)=dotproduct(k1,ninjaA0)
      acd1(89)=abb1(42)
      acd1(90)=abb1(29)
      acd1(91)=abb1(107)
      acd1(92)=abb1(67)
      acd1(93)=dotproduct(k2,ninjaA0)
      acd1(94)=abb1(39)
      acd1(95)=abb1(16)
      acd1(96)=abb1(63)
      acd1(97)=dotproduct(k3,ninjaA0)
      acd1(98)=abb1(11)
      acd1(99)=abb1(97)
      acd1(100)=abb1(79)
      acd1(101)=abb1(57)
      acd1(102)=abb1(75)
      acd1(103)=dotproduct(k4,ninjaA0)
      acd1(104)=abb1(18)
      acd1(105)=abb1(58)
      acd1(106)=dotproduct(k7,ninjaA0)
      acd1(107)=abb1(44)
      acd1(108)=abb1(84)
      acd1(109)=abb1(99)
      acd1(110)=abb1(59)
      acd1(111)=abb1(92)
      acd1(112)=abb1(94)
      acd1(113)=abb1(104)
      acd1(114)=abb1(74)
      acd1(115)=dotproduct(ninjaA0,ninjaA0)
      acd1(116)=abb1(12)
      acd1(117)=abb1(49)
      acd1(118)=abb1(83)
      acd1(119)=abb1(46)
      acd1(120)=abb1(53)
      acd1(121)=abb1(56)
      acd1(122)=abb1(111)
      acd1(123)=abb1(50)
      acd1(124)=abb1(25)
      acd1(125)=abb1(28)
      acd1(126)=abb1(33)
      acd1(127)=abb1(64)
      acd1(128)=abb1(76)
      acd1(129)=abb1(103)
      acd1(130)=dotproduct(ninjaA0,spvak5k1)
      acd1(131)=dotproduct(ninjaA0,spvak2k3)
      acd1(132)=dotproduct(ninjaA0,spvak2k6)
      acd1(133)=dotproduct(ninjaA0,spvak7k6)
      acd1(134)=dotproduct(ninjaA0,spvak4k1)
      acd1(135)=dotproduct(ninjaA0,spvak5k3)
      acd1(136)=dotproduct(ninjaA0,spvak4k6)
      acd1(137)=dotproduct(ninjaA0,spvak4k2)
      acd1(138)=dotproduct(ninjaA0,spvak2k4)
      acd1(139)=dotproduct(ninjaA0,spvak2k7)
      acd1(140)=dotproduct(ninjaA0,spvak3k1)
      acd1(141)=dotproduct(ninjaA0,spvak7k1)
      acd1(142)=dotproduct(ninjaA0,spvak5k7)
      acd1(143)=dotproduct(ninjaA0,spvak4k7)
      acd1(144)=abb1(6)
      acd1(145)=abb1(7)
      acd1(146)=abb1(23)
      acd1(147)=abb1(54)
      acd1(148)=abb1(22)
      acd1(149)=abb1(30)
      acd1(150)=abb1(86)
      acd1(151)=abb1(87)
      acd1(152)=abb1(24)
      acd1(153)=abb1(90)
      acd1(154)=abb1(77)
      acd1(155)=abb1(10)
      acd1(156)=abb1(20)
      acd1(157)=abb1(102)
      acd1(158)=abb1(13)
      acd1(159)=abb1(15)
      acd1(160)=abb1(68)
      acd1(161)=abb1(52)
      acd1(162)=abb1(38)
      acd1(163)=abb1(80)
      acd1(164)=abb1(43)
      acd1(165)=abb1(62)
      acd1(166)=abb1(78)
      acd1(167)=abb1(101)
      acd1(168)=acd1(3)*acd1(6)
      acd1(169)=acd1(168)*acd1(13)
      acd1(170)=acd1(1)*acd1(6)
      acd1(171)=acd1(170)*acd1(10)
      acd1(172)=acd1(2)*acd1(3)
      acd1(173)=acd1(172)*acd1(12)
      acd1(174)=acd1(2)*acd1(1)
      acd1(175)=acd1(174)*acd1(8)
      acd1(169)=acd1(169)+acd1(171)+acd1(173)+acd1(175)
      acd1(171)=acd1(5)*acd1(2)
      acd1(173)=acd1(171)*acd1(11)
      acd1(175)=acd1(5)*acd1(1)
      acd1(176)=acd1(175)*acd1(9)
      acd1(173)=acd1(173)+acd1(176)
      acd1(176)=acd1(168)*acd1(173)
      acd1(177)=acd1(171)*acd1(7)
      acd1(178)=acd1(177)*acd1(170)
      acd1(179)=acd1(3)*acd1(4)*acd1(171)*acd1(1)
      acd1(176)=acd1(179)+acd1(176)+acd1(178)+acd1(169)
      acd1(178)=2.0_ki*acd1(10)
      acd1(178)=acd1(178)*acd1(33)
      acd1(180)=acd1(20)+acd1(16)
      acd1(180)=acd1(180)*acd1(15)
      acd1(181)=acd1(39)*acd1(38)
      acd1(182)=acd1(42)*acd1(41)
      acd1(183)=acd1(44)*acd1(43)
      acd1(184)=acd1(46)*acd1(45)
      acd1(185)=acd1(50)*acd1(49)
      acd1(186)=acd1(54)*acd1(53)
      acd1(187)=acd1(47)*acd1(48)
      acd1(188)=acd1(51)*acd1(52)
      acd1(178)=acd1(178)-acd1(180)-acd1(185)+acd1(186)+acd1(187)+acd1(188)+acd&
      &1(181)+acd1(182)+acd1(183)+acd1(184)
      acd1(180)=acd1(17)*acd1(6)
      acd1(181)=acd1(18)*acd1(1)
      acd1(180)=acd1(180)+acd1(181)
      acd1(180)=acd1(180)*acd1(178)
      acd1(182)=ninjaP1*acd1(173)
      acd1(183)=-acd1(21)*acd1(22)
      acd1(184)=acd1(25)*acd1(26)
      acd1(185)=acd1(76)*acd1(62)
      acd1(186)=acd1(78)*acd1(65)
      acd1(187)=acd1(79)*acd1(67)
      acd1(188)=acd1(80)*acd1(69)
      acd1(189)=acd1(85)*acd1(71)
      acd1(190)=acd1(86)*acd1(73)
      acd1(182)=acd1(190)+acd1(189)+acd1(188)+acd1(187)+acd1(186)+acd1(185)+acd&
      &1(184)+acd1(183)+acd1(182)
      acd1(182)=acd1(168)*acd1(182)
      acd1(183)=acd1(26)*acd1(27)
      acd1(184)=acd1(62)*acd1(61)
      acd1(185)=acd1(63)*acd1(45)
      acd1(186)=acd1(65)*acd1(64)
      acd1(187)=acd1(67)*acd1(66)
      acd1(188)=acd1(71)*acd1(70)
      acd1(189)=acd1(73)*acd1(72)
      acd1(190)=acd1(68)*acd1(69)
      acd1(183)=acd1(187)+acd1(188)+acd1(189)+acd1(190)+acd1(183)+acd1(184)+acd&
      &1(185)+acd1(186)
      acd1(184)=2.0_ki*acd1(13)
      acd1(184)=acd1(184)*acd1(33)
      acd1(185)=acd1(23)+acd1(30)
      acd1(186)=-acd1(22)*acd1(185)
      acd1(186)=acd1(184)+acd1(186)+acd1(183)
      acd1(187)=acd1(24)*acd1(6)
      acd1(188)=acd1(18)*acd1(3)
      acd1(187)=acd1(187)+acd1(188)
      acd1(186)=acd1(187)*acd1(186)
      acd1(189)=-acd1(19)-acd1(14)
      acd1(189)=acd1(15)*acd1(189)
      acd1(190)=ninjaP1*acd1(177)
      acd1(191)=acd1(60)*acd1(39)
      acd1(192)=acd1(75)*acd1(44)
      acd1(193)=acd1(81)*acd1(48)
      acd1(194)=acd1(83)*acd1(52)
      acd1(189)=acd1(194)+acd1(193)+acd1(192)+acd1(191)+acd1(190)+acd1(189)
      acd1(189)=acd1(170)*acd1(189)
      acd1(190)=acd1(59)*acd1(53)
      acd1(191)=acd1(56)*acd1(41)
      acd1(192)=acd1(57)*acd1(45)
      acd1(193)=acd1(58)*acd1(49)
      acd1(190)=acd1(190)+acd1(193)+acd1(191)+acd1(192)
      acd1(191)=acd1(18)*acd1(2)
      acd1(192)=acd1(31)*acd1(6)
      acd1(191)=acd1(191)+acd1(192)
      acd1(191)=acd1(191)*acd1(190)
      acd1(192)=2.0_ki*acd1(32)+ninjaP1
      acd1(192)=acd1(169)*acd1(192)
      acd1(193)=acd1(37)*acd1(3)
      acd1(194)=acd1(193)*acd1(175)
      acd1(195)=acd1(170)*acd1(5)
      acd1(196)=acd1(195)*acd1(36)
      acd1(197)=acd1(168)*acd1(5)
      acd1(198)=acd1(197)*acd1(34)
      acd1(194)=acd1(198)+acd1(194)+acd1(196)
      acd1(196)=acd1(31)*acd1(194)
      acd1(175)=acd1(188)*acd1(175)
      acd1(195)=acd1(195)*acd1(24)
      acd1(197)=acd1(197)*acd1(17)
      acd1(175)=acd1(197)+acd1(175)+acd1(195)
      acd1(195)=acd1(35)*acd1(175)
      acd1(197)=acd1(170)*acd1(24)
      acd1(188)=acd1(1)*acd1(188)
      acd1(198)=acd1(17)*acd1(168)
      acd1(188)=acd1(198)+acd1(188)+acd1(197)
      acd1(188)=acd1(40)*acd1(188)
      acd1(197)=acd1(18)*acd1(172)
      acd1(198)=acd1(2)*acd1(6)
      acd1(199)=acd1(24)*acd1(198)
      acd1(200)=acd1(31)*acd1(168)
      acd1(197)=acd1(200)+acd1(197)+acd1(199)
      acd1(197)=acd1(55)*acd1(197)
      acd1(199)=acd1(168)*acd1(63)
      acd1(200)=acd1(170)*acd1(46)
      acd1(201)=acd1(198)*acd1(57)
      acd1(199)=acd1(201)+acd1(199)+acd1(200)
      acd1(200)=acd1(77)*acd1(199)
      acd1(201)=acd1(37)*acd1(1)
      acd1(202)=acd1(24)*acd1(201)
      acd1(203)=acd1(36)*acd1(181)
      acd1(202)=acd1(202)+acd1(203)
      acd1(202)=acd1(171)*acd1(202)
      acd1(203)=acd1(36)*acd1(6)
      acd1(203)=acd1(203)+acd1(193)
      acd1(204)=acd1(203)*acd1(171)
      acd1(205)=acd1(17)*acd1(204)
      acd1(187)=acd1(171)*acd1(187)
      acd1(206)=acd1(34)*acd1(187)
      acd1(207)=acd1(33)*acd1(2)
      acd1(208)=acd1(17)*acd1(207)
      acd1(209)=acd1(31)*acd1(33)
      acd1(210)=acd1(1)*acd1(209)
      acd1(208)=acd1(208)+acd1(210)
      acd1(210)=2.0_ki*acd1(8)
      acd1(208)=acd1(208)*acd1(210)
      acd1(211)=acd1(24)*acd1(207)
      acd1(209)=acd1(3)*acd1(209)
      acd1(209)=acd1(211)+acd1(209)
      acd1(211)=2.0_ki*acd1(12)
      acd1(209)=acd1(209)*acd1(211)
      acd1(212)=acd1(31)*acd1(3)
      acd1(213)=acd1(24)*acd1(2)
      acd1(212)=acd1(213)+acd1(212)
      acd1(213)=acd1(29)*acd1(30)
      acd1(212)=acd1(212)*acd1(213)
      acd1(214)=acd1(168)*acd1(22)
      acd1(215)=acd1(172)*acd1(29)
      acd1(214)=acd1(214)-acd1(215)
      acd1(215)=-acd1(28)*acd1(214)
      acd1(216)=acd1(170)*acd1(42)
      acd1(217)=acd1(198)*acd1(56)
      acd1(216)=acd1(216)+acd1(217)
      acd1(217)=acd1(74)*acd1(216)
      acd1(218)=acd1(170)*acd1(50)
      acd1(219)=acd1(198)*acd1(58)
      acd1(218)=acd1(218)-acd1(219)
      acd1(219)=-acd1(82)*acd1(218)
      acd1(220)=acd1(170)*acd1(54)
      acd1(221)=acd1(198)*acd1(59)
      acd1(220)=acd1(220)+acd1(221)
      acd1(221)=acd1(84)*acd1(220)
      acd1(222)=ninjaP1*acd1(179)
      acd1(180)=acd1(221)+acd1(219)+acd1(217)+acd1(215)+acd1(200)+acd1(222)+acd&
      &1(197)+acd1(188)+acd1(212)+acd1(209)+acd1(208)+acd1(195)+acd1(196)+acd1(&
      &206)+acd1(205)+acd1(182)+acd1(189)+acd1(192)+acd1(202)+acd1(186)+acd1(18&
      &0)+acd1(191)
      acd1(182)=ninjaP2*acd1(176)
      acd1(186)=acd1(87)*acd1(169)
      acd1(175)=acd1(31)*acd1(175)
      acd1(181)=acd1(24)*acd1(171)*acd1(181)
      acd1(187)=acd1(17)*acd1(187)
      acd1(175)=acd1(186)+acd1(175)+acd1(181)+acd1(187)+acd1(182)
      acd1(181)=acd1(90)*acd1(16)
      acd1(182)=acd1(95)*acd1(20)
      acd1(186)=acd1(98)*acd1(23)
      acd1(187)=acd1(104)*acd1(27)
      acd1(188)=acd1(107)*acd1(30)
      acd1(189)=acd1(117)*acd1(1)
      acd1(191)=acd1(118)*acd1(2)
      acd1(192)=acd1(119)*acd1(38)
      acd1(195)=-acd1(120)*acd1(3)
      acd1(196)=acd1(121)*acd1(6)
      acd1(197)=-acd1(122)*acd1(43)
      acd1(200)=acd1(123)*acd1(61)
      acd1(202)=acd1(124)*acd1(64)
      acd1(205)=acd1(125)*acd1(66)
      acd1(206)=acd1(126)*acd1(68)
      acd1(208)=acd1(127)*acd1(53)
      acd1(209)=acd1(128)*acd1(70)
      acd1(212)=acd1(129)*acd1(72)
      acd1(181)=acd1(212)+acd1(209)+acd1(208)+acd1(206)+acd1(205)+acd1(202)+acd&
      &1(200)+acd1(197)+acd1(196)+acd1(195)+acd1(192)+acd1(191)+acd1(189)+acd1(&
      &188)+acd1(187)+acd1(186)+acd1(182)+acd1(181)
      acd1(182)=2.0_ki*acd1(33)
      acd1(181)=acd1(182)*acd1(181)
      acd1(182)=acd1(101)*acd1(185)
      acd1(185)=acd1(92)*acd1(16)
      acd1(186)=acd1(96)*acd1(20)
      acd1(187)=acd1(105)*acd1(27)
      acd1(188)=acd1(154)*acd1(38)
      acd1(189)=acd1(158)*acd1(41)
      acd1(191)=acd1(159)*acd1(43)
      acd1(192)=acd1(160)*acd1(61)
      acd1(195)=acd1(161)*acd1(45)
      acd1(196)=acd1(162)*acd1(64)
      acd1(197)=acd1(163)*acd1(66)
      acd1(200)=acd1(164)*acd1(49)
      acd1(202)=acd1(165)*acd1(53)
      acd1(205)=acd1(166)*acd1(70)
      acd1(206)=acd1(167)*acd1(72)
      acd1(182)=acd1(182)+acd1(206)+acd1(205)+acd1(202)+acd1(200)+acd1(197)+acd&
      &1(196)+acd1(195)+acd1(192)+acd1(191)+acd1(189)+acd1(188)+acd1(187)+acd1(&
      &186)+acd1(185)
      acd1(182)=acd1(6)*acd1(182)
      acd1(185)=acd1(34)*acd1(6)
      acd1(185)=acd1(185)+acd1(201)
      acd1(178)=acd1(185)*acd1(178)
      acd1(185)=-acd1(22)*acd1(203)
      acd1(186)=acd1(89)*acd1(16)
      acd1(187)=acd1(94)*acd1(20)
      acd1(188)=acd1(108)*acd1(2)
      acd1(189)=acd1(109)*acd1(38)
      acd1(191)=acd1(110)*acd1(3)
      acd1(192)=acd1(111)*acd1(43)
      acd1(195)=acd1(112)*acd1(64)
      acd1(196)=acd1(113)*acd1(66)
      acd1(197)=acd1(114)*acd1(53)
      acd1(185)=acd1(197)+acd1(196)+acd1(195)+acd1(192)+acd1(191)+acd1(189)+acd&
      &1(188)+acd1(187)+acd1(186)+acd1(185)
      acd1(185)=acd1(30)*acd1(185)
      acd1(173)=ninjaP0*acd1(173)
      acd1(186)=-acd1(97)*acd1(22)
      acd1(187)=acd1(103)*acd1(26)
      acd1(188)=acd1(133)*acd1(62)
      acd1(189)=acd1(135)*acd1(65)
      acd1(191)=acd1(136)*acd1(67)
      acd1(192)=acd1(137)*acd1(69)
      acd1(195)=acd1(142)*acd1(71)
      acd1(196)=acd1(143)*acd1(73)
      acd1(173)=acd1(155)+acd1(196)+acd1(195)+acd1(192)+acd1(191)+acd1(189)+acd&
      &1(188)+acd1(187)+acd1(186)+acd1(173)
      acd1(173)=acd1(168)*acd1(173)
      acd1(186)=-acd1(23)*acd1(22)
      acd1(183)=acd1(184)+acd1(186)+acd1(183)
      acd1(183)=acd1(203)*acd1(183)
      acd1(184)=acd1(91)*acd1(16)
      acd1(186)=acd1(145)*acd1(38)
      acd1(187)=acd1(146)*acd1(3)
      acd1(188)=acd1(148)*acd1(43)
      acd1(189)=acd1(149)*acd1(61)
      acd1(191)=acd1(150)*acd1(53)
      acd1(184)=acd1(191)+acd1(189)+acd1(188)+acd1(187)+acd1(186)+acd1(184)
      acd1(184)=acd1(1)*acd1(184)
      acd1(186)=-acd1(93)-acd1(88)
      acd1(186)=acd1(15)*acd1(186)
      acd1(177)=ninjaP0*acd1(177)
      acd1(187)=acd1(130)*acd1(39)
      acd1(188)=acd1(132)*acd1(44)
      acd1(189)=acd1(138)*acd1(48)
      acd1(191)=acd1(140)*acd1(52)
      acd1(177)=acd1(147)+acd1(191)+acd1(189)+acd1(188)+acd1(187)+acd1(177)+acd&
      &1(186)
      acd1(177)=acd1(170)*acd1(177)
      acd1(186)=acd1(37)*acd1(2)
      acd1(187)=acd1(35)*acd1(6)
      acd1(186)=acd1(186)+acd1(187)
      acd1(186)=acd1(186)*acd1(190)
      acd1(187)=acd1(115)+ninjaP0
      acd1(169)=acd1(169)*acd1(187)
      acd1(187)=acd1(99)*acd1(38)
      acd1(188)=-acd1(100)*acd1(3)
      acd1(189)=-acd1(102)*acd1(53)
      acd1(187)=acd1(189)+acd1(188)+acd1(187)
      acd1(188)=acd1(27)+acd1(23)
      acd1(187)=acd1(188)*acd1(187)
      acd1(188)=acd1(35)*acd1(194)
      acd1(170)=acd1(170)*acd1(36)
      acd1(189)=acd1(1)*acd1(193)
      acd1(190)=acd1(34)*acd1(168)
      acd1(170)=acd1(190)+acd1(189)+acd1(170)
      acd1(170)=acd1(40)*acd1(170)
      acd1(172)=acd1(37)*acd1(172)
      acd1(189)=acd1(36)*acd1(198)
      acd1(168)=acd1(35)*acd1(168)
      acd1(168)=acd1(168)+acd1(172)+acd1(189)
      acd1(168)=acd1(55)*acd1(168)
      acd1(172)=acd1(134)*acd1(199)
      acd1(189)=acd1(156)*acd1(61)
      acd1(190)=acd1(157)*acd1(66)
      acd1(189)=acd1(190)+acd1(189)
      acd1(189)=acd1(3)*acd1(189)
      acd1(190)=acd1(152)*acd1(45)
      acd1(191)=acd1(153)*acd1(53)
      acd1(190)=acd1(191)+acd1(190)
      acd1(190)=acd1(2)*acd1(190)
      acd1(171)=acd1(36)*acd1(171)*acd1(201)
      acd1(191)=acd1(34)*acd1(204)
      acd1(192)=acd1(34)*acd1(207)
      acd1(193)=acd1(35)*acd1(33)
      acd1(194)=acd1(1)*acd1(193)
      acd1(192)=acd1(192)+acd1(194)
      acd1(192)=acd1(192)*acd1(210)
      acd1(194)=acd1(36)*acd1(207)
      acd1(193)=acd1(3)*acd1(193)
      acd1(193)=acd1(194)+acd1(193)
      acd1(193)=acd1(193)*acd1(211)
      acd1(194)=acd1(35)*acd1(3)
      acd1(195)=acd1(36)*acd1(2)
      acd1(194)=acd1(195)+acd1(194)
      acd1(194)=acd1(194)*acd1(213)
      acd1(195)=-acd1(106)*acd1(214)
      acd1(196)=acd1(131)*acd1(216)
      acd1(197)=-acd1(139)*acd1(218)
      acd1(199)=acd1(141)*acd1(220)
      acd1(179)=ninjaP0*acd1(179)
      acd1(200)=acd1(116)*acd1(33)**2
      acd1(174)=acd1(144)*acd1(174)
      acd1(198)=acd1(151)*acd1(198)
      acd1(168)=acd1(198)+acd1(174)+4.0_ki*acd1(200)+acd1(199)+acd1(197)+acd1(1&
      &96)+acd1(195)+acd1(172)+acd1(179)+acd1(168)+acd1(170)+acd1(194)+acd1(193&
      &)+acd1(192)+acd1(188)+acd1(171)+acd1(191)+acd1(181)+acd1(173)+acd1(185)+&
      &acd1(177)+acd1(184)+acd1(169)+acd1(190)+acd1(189)+acd1(187)+acd1(178)+ac&
      &d1(186)+acd1(183)+acd1(182)
      brack(ninjaidxt0x0mu0)=acd1(168)
      brack(ninjaidxt0x0mu2)=acd1(176)
      brack(ninjaidxt0x1mu0)=acd1(180)
      brack(ninjaidxt0x2mu0)=acd1(175)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d1h6_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd1h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = - a0(0:3)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p8_cbarc_epnemumnmubarg_d1h6l132
