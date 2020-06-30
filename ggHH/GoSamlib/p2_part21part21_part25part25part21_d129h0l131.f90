module     p2_part21part21_part25part25part21_d129h0l131
   ! file: /draco/u/lscyboz/POWHEG-BOX-V2/ggHH_EWChL/p2_part21part21_part25part &
   ! &25part21/helicity0d129h0l131.f90
   ! generator: buildfortran_tn3.py
   use p2_part21part21_part25part25part21_config, only: ki
   use p2_part21part21_part25part25part21_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p2_part21part21_part25part25part21_model
      use p2_part21part21_part25part25part21_kinematics
      use p2_part21part21_part25part25part21_color
      use p2_part21part21_part25part25part21_abbrevd129h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(45) :: acd129
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd129(1)=dotproduct(ninjaA,ninjaE3)
      acd129(2)=dotproduct(ninjaE3,spvae1e2)
      acd129(3)=dotproduct(ninjaE3,spvae2e1)
      acd129(4)=abb129(82)
      acd129(5)=dotproduct(ninjaE3,spvae2e5)
      acd129(6)=dotproduct(ninjaE3,spvae5e2)
      acd129(7)=abb129(79)
      acd129(8)=dotproduct(ninjaE3,spvak1e2)
      acd129(9)=dotproduct(ninjaE3,spvae2k1)
      acd129(10)=abb129(19)
      acd129(11)=dotproduct(ninjaE3,spvak5e2)
      acd129(12)=dotproduct(ninjaE3,spvae2k5)
      acd129(13)=dotproduct(ninjaE3,spvak2e1)
      acd129(14)=dotproduct(ninjaE3,spvae2k2)
      acd129(15)=abb129(9)
      acd129(16)=dotproduct(ninjaE3,spvak2e5)
      acd129(17)=abb129(66)
      acd129(18)=dotproduct(ninjaE3,spvak2k1)
      acd129(19)=abb129(22)
      acd129(20)=dotproduct(ninjaE3,spvak2k5)
      acd129(21)=dotproduct(ninjaE3,spvae2l4)
      acd129(22)=dotproduct(ninjaE3,spval4e1)
      acd129(23)=abb129(16)
      acd129(24)=dotproduct(ninjaE3,spvae1k2)
      acd129(25)=dotproduct(ninjaE3,spvak2e2)
      acd129(26)=dotproduct(ninjaE3,spvae5k2)
      acd129(27)=dotproduct(ninjaE3,spvak1k2)
      acd129(28)=dotproduct(ninjaE3,spvak5k2)
      acd129(29)=dotproduct(ninjaE3,spval4e2)
      acd129(30)=dotproduct(ninjaE3,spvae1l4)
      acd129(31)=dotproduct(ninjaE3,spvae5l4)
      acd129(32)=abb129(12)
      acd129(33)=dotproduct(ninjaE3,spvak1l4)
      acd129(34)=abb129(78)
      acd129(35)=dotproduct(ninjaE3,spvak5l4)
      acd129(36)=dotproduct(ninjaE3,spval4e5)
      acd129(37)=dotproduct(ninjaE3,spval4k1)
      acd129(38)=dotproduct(ninjaE3,spval4k5)
      acd129(39)=acd129(12)*acd129(28)
      acd129(40)=acd129(9)*acd129(27)
      acd129(39)=acd129(39)+acd129(40)
      acd129(39)=acd129(19)*acd129(39)
      acd129(40)=-acd129(5)*acd129(17)*acd129(26)
      acd129(41)=-acd129(3)*acd129(15)*acd129(24)
      acd129(39)=acd129(39)+acd129(40)+acd129(41)
      acd129(39)=acd129(25)*acd129(39)
      acd129(40)=acd129(12)*acd129(35)
      acd129(41)=acd129(9)*acd129(33)
      acd129(40)=acd129(40)+acd129(41)
      acd129(40)=acd129(34)*acd129(40)
      acd129(41)=acd129(5)*acd129(32)*acd129(31)
      acd129(42)=acd129(3)*acd129(23)*acd129(30)
      acd129(40)=acd129(40)+acd129(41)+acd129(42)
      acd129(40)=acd129(29)*acd129(40)
      acd129(41)=acd129(11)*acd129(38)
      acd129(42)=acd129(8)*acd129(37)
      acd129(41)=acd129(41)+acd129(42)
      acd129(41)=acd129(34)*acd129(41)
      acd129(42)=acd129(6)*acd129(32)*acd129(36)
      acd129(43)=acd129(2)*acd129(23)*acd129(22)
      acd129(41)=acd129(41)+acd129(42)+acd129(43)
      acd129(41)=acd129(21)*acd129(41)
      acd129(42)=acd129(11)*acd129(20)
      acd129(43)=acd129(8)*acd129(18)
      acd129(42)=acd129(42)+acd129(43)
      acd129(42)=acd129(19)*acd129(42)
      acd129(43)=-acd129(6)*acd129(17)*acd129(16)
      acd129(44)=-acd129(2)*acd129(15)*acd129(13)
      acd129(42)=acd129(42)+acd129(43)+acd129(44)
      acd129(42)=acd129(14)*acd129(42)
      acd129(43)=acd129(11)*acd129(12)
      acd129(44)=acd129(8)*acd129(9)
      acd129(43)=acd129(43)+acd129(44)
      acd129(43)=acd129(10)*acd129(43)
      acd129(44)=acd129(5)*acd129(6)*acd129(7)
      acd129(45)=acd129(2)*acd129(3)*acd129(4)
      acd129(43)=acd129(45)+acd129(44)+acd129(43)
      acd129(43)=acd129(1)*acd129(43)
      acd129(39)=2.0_ki*acd129(43)+acd129(42)+acd129(41)+acd129(40)+acd129(39)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd129(39)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p2_part21part21_part25part25part21_model
      use p2_part21part21_part25part25part21_kinematics
      use p2_part21part21_part25part25part21_color
      use p2_part21part21_part25part25part21_abbrevd129h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(218) :: acd129
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd129(1)=dotproduct(ninjaA,ninjaE3)
      acd129(2)=dotproduct(ninjaE3,spvak1e2)
      acd129(3)=dotproduct(ninjaE4,spvae2k1)
      acd129(4)=abb129(19)
      acd129(5)=dotproduct(ninjaE3,spvae1e2)
      acd129(6)=dotproduct(ninjaE4,spvae2e1)
      acd129(7)=abb129(82)
      acd129(8)=dotproduct(ninjaE3,spvae2e1)
      acd129(9)=dotproduct(ninjaE4,spvae1e2)
      acd129(10)=dotproduct(ninjaE3,spvae2e5)
      acd129(11)=dotproduct(ninjaE4,spvae5e2)
      acd129(12)=abb129(79)
      acd129(13)=dotproduct(ninjaE3,spvae5e2)
      acd129(14)=dotproduct(ninjaE4,spvae2e5)
      acd129(15)=dotproduct(ninjaE3,spvae2k1)
      acd129(16)=dotproduct(ninjaE4,spvak1e2)
      acd129(17)=dotproduct(ninjaE3,spvak5e2)
      acd129(18)=dotproduct(ninjaE4,spvae2k5)
      acd129(19)=dotproduct(ninjaE3,spvae2k5)
      acd129(20)=dotproduct(ninjaE4,spvak5e2)
      acd129(21)=dotproduct(ninjaA,ninjaE4)
      acd129(22)=dotproduct(ninjaA,spvak1e2)
      acd129(23)=dotproduct(ninjaA,spvae1e2)
      acd129(24)=dotproduct(ninjaA,spvae2e1)
      acd129(25)=dotproduct(ninjaA,spvae2e5)
      acd129(26)=dotproduct(ninjaA,spvae5e2)
      acd129(27)=dotproduct(ninjaA,spvae2k1)
      acd129(28)=dotproduct(ninjaA,spvak5e2)
      acd129(29)=dotproduct(ninjaA,spvae2k5)
      acd129(30)=dotproduct(ninjaE3,spval4e2)
      acd129(31)=dotproduct(ninjaE4,spvae1l4)
      acd129(32)=abb129(16)
      acd129(33)=dotproduct(ninjaE4,spvae5l4)
      acd129(34)=abb129(12)
      acd129(35)=dotproduct(ninjaE3,spvae5l4)
      acd129(36)=dotproduct(ninjaE3,spvae1l4)
      acd129(37)=dotproduct(ninjaE4,spvak1l4)
      acd129(38)=abb129(78)
      acd129(39)=dotproduct(ninjaE4,spvak5l4)
      acd129(40)=dotproduct(ninjaE3,spvak5l4)
      acd129(41)=dotproduct(ninjaE3,spvak1l4)
      acd129(42)=dotproduct(ninjaE3,spvae2l4)
      acd129(43)=dotproduct(ninjaE4,spval4k1)
      acd129(44)=dotproduct(ninjaE3,spvae2k2)
      acd129(45)=dotproduct(ninjaE4,spvak2k1)
      acd129(46)=abb129(22)
      acd129(47)=dotproduct(ninjaE3,spvak2k1)
      acd129(48)=dotproduct(ninjaE4,spvae2k2)
      acd129(49)=dotproduct(ninjaE3,spval4k1)
      acd129(50)=dotproduct(ninjaE4,spvae2l4)
      acd129(51)=abb129(31)
      acd129(52)=dotproduct(ninjaE4,spval4e1)
      acd129(53)=dotproduct(ninjaE3,spval4e5)
      acd129(54)=dotproduct(ninjaE4,spval4e5)
      acd129(55)=dotproduct(ninjaE3,spval4e1)
      acd129(56)=dotproduct(ninjaE4,spval4k5)
      acd129(57)=dotproduct(ninjaE3,spval4k5)
      acd129(58)=dotproduct(ninjaE3,spvak2e1)
      acd129(59)=abb129(9)
      acd129(60)=dotproduct(ninjaE4,spvak2e1)
      acd129(61)=dotproduct(ninjaE4,spvak2e5)
      acd129(62)=abb129(66)
      acd129(63)=dotproduct(ninjaE4,spvak2k5)
      acd129(64)=dotproduct(ninjaE3,spvak2k5)
      acd129(65)=dotproduct(ninjaE3,spvak2e5)
      acd129(66)=abb129(69)
      acd129(67)=dotproduct(ninjaE3,spvae1k2)
      acd129(68)=dotproduct(ninjaE3,spvak2e2)
      acd129(69)=dotproduct(ninjaE4,spvak2e2)
      acd129(70)=dotproduct(ninjaE4,spvae1k2)
      acd129(71)=dotproduct(ninjaE4,spvae5k2)
      acd129(72)=dotproduct(ninjaE4,spvak1k2)
      acd129(73)=dotproduct(ninjaE4,spvak5k2)
      acd129(74)=dotproduct(ninjaE3,spvak1k2)
      acd129(75)=dotproduct(ninjaE3,spvae5k2)
      acd129(76)=dotproduct(ninjaE3,spvak5k2)
      acd129(77)=dotproduct(ninjaE4,spval4e2)
      acd129(78)=abb129(15)
      acd129(79)=abb129(51)
      acd129(80)=abb129(77)
      acd129(81)=abb129(36)
      acd129(82)=abb129(97)
      acd129(83)=abb129(94)
      acd129(84)=dotproduct(ninjaA,ninjaA)
      acd129(85)=dotproduct(ninjaA,spval4e2)
      acd129(86)=dotproduct(ninjaA,spvae2l4)
      acd129(87)=dotproduct(ninjaA,spvak2e1)
      acd129(88)=dotproduct(ninjaA,spvae2k2)
      acd129(89)=dotproduct(ninjaA,spvae1k2)
      acd129(90)=dotproduct(ninjaA,spvak2e2)
      acd129(91)=dotproduct(ninjaA,spvae5l4)
      acd129(92)=dotproduct(ninjaA,spval4e5)
      acd129(93)=dotproduct(ninjaA,spval4e1)
      acd129(94)=dotproduct(ninjaA,spvae1l4)
      acd129(95)=dotproduct(ninjaA,spvak1k2)
      acd129(96)=dotproduct(ninjaA,spvae5k2)
      acd129(97)=dotproduct(ninjaA,spvak2k1)
      acd129(98)=dotproduct(ninjaA,spvak2k5)
      acd129(99)=dotproduct(ninjaA,spvak5k2)
      acd129(100)=dotproduct(ninjaA,spval4k1)
      acd129(101)=dotproduct(ninjaA,spvak5l4)
      acd129(102)=dotproduct(ninjaA,spval4k5)
      acd129(103)=dotproduct(ninjaA,spvak1l4)
      acd129(104)=dotproduct(ninjaA,spvak2e5)
      acd129(105)=abb129(84)
      acd129(106)=abb129(52)
      acd129(107)=abb129(56)
      acd129(108)=abb129(71)
      acd129(109)=abb129(72)
      acd129(110)=abb129(105)
      acd129(111)=abb129(27)
      acd129(112)=abb129(35)
      acd129(113)=abb129(8)
      acd129(114)=abb129(34)
      acd129(115)=abb129(98)
      acd129(116)=abb129(18)
      acd129(117)=abb129(46)
      acd129(118)=abb129(90)
      acd129(119)=abb129(63)
      acd129(120)=abb129(102)
      acd129(121)=abb129(64)
      acd129(122)=abb129(57)
      acd129(123)=abb129(54)
      acd129(124)=abb129(44)
      acd129(125)=abb129(41)
      acd129(126)=abb129(49)
      acd129(127)=abb129(53)
      acd129(128)=abb129(43)
      acd129(129)=abb129(55)
      acd129(130)=abb129(60)
      acd129(131)=abb129(61)
      acd129(132)=abb129(37)
      acd129(133)=abb129(11)
      acd129(134)=abb129(73)
      acd129(135)=abb129(40)
      acd129(136)=abb129(80)
      acd129(137)=abb129(62)
      acd129(138)=abb129(76)
      acd129(139)=abb129(39)
      acd129(140)=abb129(17)
      acd129(141)=abb129(7)
      acd129(142)=abb129(33)
      acd129(143)=abb129(45)
      acd129(144)=abb129(70)
      acd129(145)=abb129(30)
      acd129(146)=abb129(25)
      acd129(147)=abb129(42)
      acd129(148)=abb129(24)
      acd129(149)=abb129(68)
      acd129(150)=dotproduct(ninjaE3,spvae2l3)
      acd129(151)=abb129(10)
      acd129(152)=abb129(47)
      acd129(153)=abb129(59)
      acd129(154)=abb129(50)
      acd129(155)=abb129(65)
      acd129(156)=abb129(67)
      acd129(157)=abb129(58)
      acd129(158)=abb129(29)
      acd129(159)=abb129(85)
      acd129(160)=abb129(87)
      acd129(161)=abb129(20)
      acd129(162)=abb129(21)
      acd129(163)=abb129(26)
      acd129(164)=abb129(48)
      acd129(165)=abb129(81)
      acd129(166)=abb129(23)
      acd129(167)=abb129(75)
      acd129(168)=dotproduct(ninjaE3,spval3e2)
      acd129(169)=abb129(28)
      acd129(170)=abb129(32)
      acd129(171)=abb129(74)
      acd129(172)=abb129(38)
      acd129(173)=acd129(19)*acd129(20)
      acd129(174)=acd129(17)*acd129(18)
      acd129(175)=acd129(15)*acd129(16)
      acd129(173)=acd129(175)+acd129(173)+acd129(174)
      acd129(173)=acd129(173)*acd129(4)
      acd129(174)=acd129(6)*acd129(5)*acd129(7)
      acd129(175)=acd129(11)*acd129(10)*acd129(12)
      acd129(176)=acd129(8)*acd129(7)
      acd129(177)=acd129(176)*acd129(9)
      acd129(178)=acd129(13)*acd129(12)
      acd129(179)=acd129(178)*acd129(14)
      acd129(180)=acd129(2)*acd129(4)
      acd129(181)=acd129(180)*acd129(3)
      acd129(173)=acd129(173)+acd129(174)+acd129(177)+acd129(179)+acd129(175)+a&
      &cd129(181)
      acd129(174)=2.0_ki*acd129(1)
      acd129(173)=acd129(173)*acd129(174)
      acd129(175)=acd129(64)*acd129(20)
      acd129(177)=acd129(47)*acd129(16)
      acd129(179)=acd129(17)*acd129(63)
      acd129(181)=acd129(2)*acd129(45)
      acd129(175)=acd129(175)+acd129(177)+acd129(179)+acd129(181)
      acd129(175)=acd129(175)*acd129(44)
      acd129(177)=acd129(76)*acd129(18)
      acd129(179)=acd129(74)*acd129(3)
      acd129(181)=acd129(19)*acd129(73)
      acd129(182)=acd129(15)*acd129(72)
      acd129(177)=acd129(177)+acd129(179)+acd129(181)+acd129(182)
      acd129(177)=acd129(177)*acd129(68)
      acd129(179)=acd129(19)*acd129(76)
      acd129(181)=acd129(15)*acd129(74)
      acd129(179)=acd129(179)+acd129(181)
      acd129(181)=acd129(69)*acd129(179)
      acd129(182)=acd129(17)*acd129(64)
      acd129(183)=acd129(2)*acd129(47)
      acd129(182)=acd129(182)+acd129(183)
      acd129(183)=acd129(182)*acd129(48)
      acd129(175)=acd129(183)+acd129(175)+acd129(177)+acd129(181)
      acd129(175)=acd129(175)*acd129(46)
      acd129(177)=acd129(57)*acd129(20)
      acd129(181)=acd129(49)*acd129(16)
      acd129(183)=acd129(17)*acd129(56)
      acd129(184)=acd129(2)*acd129(43)
      acd129(177)=acd129(177)+acd129(181)+acd129(183)+acd129(184)
      acd129(177)=acd129(177)*acd129(42)
      acd129(181)=acd129(41)*acd129(3)
      acd129(183)=acd129(40)*acd129(18)
      acd129(184)=acd129(19)*acd129(39)
      acd129(185)=acd129(15)*acd129(37)
      acd129(181)=acd129(181)+acd129(183)+acd129(184)+acd129(185)
      acd129(181)=acd129(181)*acd129(30)
      acd129(183)=acd129(19)*acd129(40)
      acd129(184)=acd129(15)*acd129(41)
      acd129(183)=acd129(183)+acd129(184)
      acd129(184)=acd129(77)*acd129(183)
      acd129(185)=acd129(17)*acd129(57)
      acd129(186)=acd129(2)*acd129(49)
      acd129(185)=acd129(185)+acd129(186)
      acd129(186)=acd129(185)*acd129(50)
      acd129(177)=acd129(184)+acd129(186)+acd129(177)+acd129(181)
      acd129(177)=acd129(177)*acd129(38)
      acd129(181)=acd129(31)*acd129(8)*acd129(32)
      acd129(184)=acd129(33)*acd129(10)*acd129(34)
      acd129(186)=acd129(32)*acd129(36)
      acd129(187)=acd129(186)*acd129(6)
      acd129(188)=acd129(34)*acd129(35)
      acd129(189)=acd129(188)*acd129(14)
      acd129(181)=acd129(184)+acd129(181)+acd129(187)+acd129(189)
      acd129(181)=acd129(181)*acd129(30)
      acd129(184)=acd129(52)*acd129(5)*acd129(32)
      acd129(187)=acd129(54)*acd129(13)*acd129(34)
      acd129(189)=acd129(32)*acd129(55)
      acd129(190)=acd129(189)*acd129(9)
      acd129(191)=acd129(34)*acd129(53)
      acd129(192)=acd129(191)*acd129(11)
      acd129(184)=acd129(187)+acd129(184)+acd129(190)+acd129(192)
      acd129(184)=acd129(184)*acd129(42)
      acd129(187)=acd129(60)*acd129(5)*acd129(59)
      acd129(190)=acd129(61)*acd129(13)*acd129(62)
      acd129(192)=acd129(59)*acd129(58)
      acd129(193)=acd129(192)*acd129(9)
      acd129(194)=acd129(62)*acd129(65)
      acd129(195)=acd129(194)*acd129(11)
      acd129(187)=acd129(190)+acd129(187)+acd129(193)+acd129(195)
      acd129(187)=acd129(187)*acd129(44)
      acd129(190)=acd129(70)*acd129(8)*acd129(59)
      acd129(193)=acd129(71)*acd129(10)*acd129(62)
      acd129(195)=acd129(59)*acd129(67)
      acd129(196)=acd129(195)*acd129(6)
      acd129(197)=acd129(62)*acd129(75)
      acd129(198)=acd129(197)*acd129(14)
      acd129(190)=acd129(193)+acd129(190)+acd129(196)+acd129(198)
      acd129(190)=acd129(190)*acd129(68)
      acd129(193)=2.0_ki*acd129(21)
      acd129(196)=acd129(176)*acd129(193)
      acd129(198)=acd129(189)*acd129(50)
      acd129(199)=acd129(192)*acd129(48)
      acd129(200)=acd129(7)*acd129(24)
      acd129(200)=acd129(200)+acd129(66)
      acd129(196)=-acd129(196)-acd129(198)+acd129(199)-acd129(200)
      acd129(196)=acd129(196)*acd129(5)
      acd129(198)=acd129(178)*acd129(193)
      acd129(199)=acd129(188)*acd129(77)
      acd129(201)=acd129(197)*acd129(69)
      acd129(202)=acd129(12)*acd129(26)
      acd129(202)=acd129(202)+acd129(79)
      acd129(198)=-acd129(199)-acd129(198)+acd129(201)-acd129(202)
      acd129(198)=acd129(198)*acd129(10)
      acd129(199)=acd129(7)*acd129(23)
      acd129(199)=acd129(199)+acd129(78)
      acd129(201)=acd129(186)*acd129(77)
      acd129(203)=acd129(195)*acd129(69)
      acd129(201)=-acd129(203)+acd129(199)+acd129(201)
      acd129(201)=acd129(201)*acd129(8)
      acd129(203)=acd129(12)*acd129(25)
      acd129(203)=acd129(203)+acd129(80)
      acd129(204)=acd129(191)*acd129(50)
      acd129(205)=acd129(194)*acd129(48)
      acd129(204)=-acd129(204)+acd129(205)-acd129(203)
      acd129(204)=acd129(204)*acd129(13)
      acd129(205)=acd129(19)*acd129(83)
      acd129(206)=acd129(17)*acd129(82)
      acd129(207)=acd129(15)*acd129(81)
      acd129(205)=acd129(207)+acd129(205)+acd129(206)
      acd129(206)=acd129(19)*acd129(28)
      acd129(207)=acd129(15)*acd129(22)
      acd129(206)=acd129(206)+acd129(207)
      acd129(207)=acd129(193)*acd129(19)
      acd129(207)=acd129(207)+acd129(29)
      acd129(207)=acd129(207)*acd129(17)
      acd129(207)=acd129(207)+acd129(206)
      acd129(207)=acd129(207)*acd129(4)
      acd129(193)=acd129(193)*acd129(15)
      acd129(193)=acd129(193)+acd129(27)
      acd129(193)=acd129(193)*acd129(4)
      acd129(193)=acd129(193)+acd129(51)
      acd129(193)=acd129(193)*acd129(2)
      acd129(173)=acd129(173)-acd129(187)-acd129(190)+acd129(207)+acd129(193)-a&
      &cd129(196)-acd129(204)+acd129(205)-acd129(198)+acd129(201)+acd129(181)+a&
      &cd129(184)+acd129(175)+acd129(177)
      acd129(175)=acd129(76)*acd129(138)
      acd129(177)=acd129(75)*acd129(137)
      acd129(181)=acd129(74)*acd129(136)
      acd129(184)=acd129(67)*acd129(131)
      acd129(175)=acd129(175)+acd129(177)+acd129(181)+acd129(184)
      acd129(177)=-acd129(25)*acd129(197)
      acd129(181)=-acd129(24)*acd129(195)
      acd129(184)=acd129(19)*acd129(135)
      acd129(187)=acd129(15)*acd129(134)
      acd129(190)=acd129(62)*acd129(96)
      acd129(190)=acd129(190)-acd129(133)
      acd129(193)=-acd129(10)*acd129(190)
      acd129(196)=acd129(59)*acd129(89)
      acd129(196)=acd129(196)-acd129(132)
      acd129(198)=-acd129(8)*acd129(196)
      acd129(177)=acd129(198)+acd129(193)+acd129(187)+acd129(184)+acd129(181)+a&
      &cd129(177)+acd129(175)
      acd129(177)=acd129(68)*acd129(177)
      acd129(181)=acd129(65)*acd129(129)
      acd129(184)=acd129(64)*acd129(128)
      acd129(187)=acd129(58)*acd129(123)
      acd129(193)=acd129(47)*acd129(127)
      acd129(181)=acd129(181)+acd129(184)+acd129(187)+acd129(193)
      acd129(184)=-acd129(26)*acd129(194)
      acd129(187)=-acd129(23)*acd129(192)
      acd129(193)=acd129(17)*acd129(126)
      acd129(198)=acd129(62)*acd129(104)
      acd129(198)=acd129(198)-acd129(125)
      acd129(201)=-acd129(13)*acd129(198)
      acd129(204)=acd129(59)*acd129(87)
      acd129(204)=acd129(204)-acd129(124)
      acd129(207)=-acd129(5)*acd129(204)
      acd129(208)=acd129(2)*acd129(114)
      acd129(184)=acd129(208)+acd129(207)+acd129(201)+acd129(193)+acd129(187)+a&
      &cd129(184)+acd129(181)
      acd129(184)=acd129(44)*acd129(184)
      acd129(187)=acd129(57)*acd129(122)
      acd129(193)=acd129(55)*acd129(119)
      acd129(201)=acd129(53)*acd129(117)
      acd129(207)=acd129(49)*acd129(121)
      acd129(187)=-acd129(187)+acd129(193)+acd129(201)+acd129(207)
      acd129(193)=acd129(26)*acd129(191)
      acd129(201)=acd129(23)*acd129(189)
      acd129(207)=acd129(17)*acd129(120)
      acd129(208)=acd129(34)*acd129(92)
      acd129(208)=acd129(208)+acd129(118)
      acd129(209)=acd129(13)*acd129(208)
      acd129(210)=acd129(32)*acd129(93)
      acd129(210)=acd129(210)+acd129(116)
      acd129(211)=acd129(5)*acd129(210)
      acd129(212)=acd129(2)*acd129(113)
      acd129(193)=acd129(212)+acd129(211)+acd129(209)+acd129(207)+acd129(201)+a&
      &cd129(193)+acd129(187)
      acd129(193)=acd129(42)*acd129(193)
      acd129(201)=acd129(41)*acd129(112)
      acd129(207)=acd129(40)*acd129(111)
      acd129(209)=acd129(36)*acd129(108)
      acd129(211)=acd129(35)*acd129(107)
      acd129(201)=acd129(201)-acd129(207)+acd129(209)+acd129(211)
      acd129(207)=acd129(25)*acd129(188)
      acd129(209)=acd129(24)*acd129(186)
      acd129(211)=acd129(19)*acd129(110)
      acd129(212)=acd129(15)*acd129(109)
      acd129(213)=acd129(34)*acd129(91)
      acd129(213)=acd129(213)+acd129(106)
      acd129(214)=acd129(10)*acd129(213)
      acd129(215)=acd129(32)*acd129(94)
      acd129(215)=acd129(215)+acd129(105)
      acd129(216)=acd129(8)*acd129(215)
      acd129(207)=acd129(216)+acd129(214)+acd129(212)+acd129(211)+acd129(209)+a&
      &cd129(207)+acd129(201)
      acd129(207)=acd129(30)*acd129(207)
      acd129(209)=acd129(17)*acd129(29)
      acd129(206)=acd129(209)+acd129(206)
      acd129(206)=acd129(206)*acd129(4)
      acd129(209)=acd129(13)*acd129(203)
      acd129(211)=acd129(10)*acd129(202)
      acd129(212)=acd129(8)*acd129(199)
      acd129(214)=acd129(5)*acd129(200)
      acd129(216)=acd129(4)*acd129(27)
      acd129(216)=acd129(51)+acd129(216)
      acd129(216)=acd129(2)*acd129(216)
      acd129(205)=acd129(216)+acd129(206)+acd129(214)+acd129(212)+acd129(211)+a&
      &cd129(209)+acd129(205)
      acd129(205)=acd129(205)*acd129(174)
      acd129(209)=acd129(29)*acd129(76)
      acd129(211)=acd129(27)*acd129(74)
      acd129(212)=acd129(19)*acd129(99)
      acd129(214)=acd129(15)*acd129(95)
      acd129(209)=acd129(209)+acd129(211)+acd129(212)+acd129(214)
      acd129(211)=acd129(68)*acd129(209)
      acd129(212)=acd129(28)*acd129(64)
      acd129(214)=acd129(22)*acd129(47)
      acd129(216)=acd129(17)*acd129(98)
      acd129(217)=acd129(2)*acd129(97)
      acd129(212)=acd129(212)+acd129(214)+acd129(216)+acd129(217)
      acd129(214)=acd129(44)*acd129(212)
      acd129(179)=acd129(90)*acd129(179)
      acd129(182)=acd129(88)*acd129(182)
      acd129(179)=acd129(214)+acd129(211)+acd129(182)+acd129(179)
      acd129(179)=acd129(46)*acd129(179)
      acd129(182)=acd129(28)*acd129(57)
      acd129(211)=acd129(22)*acd129(49)
      acd129(214)=acd129(17)*acd129(102)
      acd129(216)=acd129(2)*acd129(100)
      acd129(182)=acd129(182)+acd129(211)+acd129(214)+acd129(216)
      acd129(211)=acd129(42)*acd129(182)
      acd129(214)=acd129(29)*acd129(40)
      acd129(216)=acd129(27)*acd129(41)
      acd129(217)=acd129(19)*acd129(101)
      acd129(218)=acd129(15)*acd129(103)
      acd129(214)=acd129(214)+acd129(216)+acd129(217)+acd129(218)
      acd129(216)=acd129(30)*acd129(214)
      acd129(185)=acd129(86)*acd129(185)
      acd129(183)=acd129(85)*acd129(183)
      acd129(183)=acd129(216)+acd129(211)+acd129(183)+acd129(185)
      acd129(183)=acd129(38)*acd129(183)
      acd129(176)=acd129(176)*acd129(5)
      acd129(178)=acd129(178)*acd129(10)
      acd129(180)=acd129(180)*acd129(15)
      acd129(185)=acd129(17)*acd129(19)
      acd129(211)=acd129(185)*acd129(4)
      acd129(176)=acd129(178)+acd129(176)+acd129(180)+acd129(211)
      acd129(178)=ninjaP*acd129(176)
      acd129(180)=-acd129(90)*acd129(197)
      acd129(188)=acd129(85)*acd129(188)
      acd129(197)=acd129(84)*acd129(12)
      acd129(197)=acd129(139)+acd129(197)
      acd129(197)=acd129(13)*acd129(197)
      acd129(180)=acd129(197)+acd129(180)+acd129(188)
      acd129(180)=acd129(10)*acd129(180)
      acd129(188)=-acd129(88)*acd129(192)
      acd129(189)=acd129(86)*acd129(189)
      acd129(192)=acd129(84)*acd129(7)
      acd129(192)=acd129(130)+acd129(192)
      acd129(192)=acd129(8)*acd129(192)
      acd129(188)=acd129(192)+acd129(188)+acd129(189)
      acd129(188)=acd129(5)*acd129(188)
      acd129(189)=-acd129(88)*acd129(194)
      acd129(191)=acd129(86)*acd129(191)
      acd129(189)=acd129(189)+acd129(191)
      acd129(189)=acd129(13)*acd129(189)
      acd129(191)=-acd129(90)*acd129(195)
      acd129(186)=acd129(85)*acd129(186)
      acd129(186)=acd129(191)+acd129(186)
      acd129(186)=acd129(8)*acd129(186)
      acd129(185)=acd129(115)*acd129(185)
      acd129(191)=acd129(84)*acd129(211)
      acd129(192)=acd129(4)*acd129(84)
      acd129(192)=acd129(192)+acd129(115)
      acd129(194)=acd129(2)*acd129(15)*acd129(192)
      acd129(177)=acd129(178)+acd129(183)+acd129(179)+acd129(205)+acd129(207)+a&
      &cd129(193)+acd129(184)+acd129(177)+acd129(194)+acd129(191)+acd129(188)+a&
      &cd129(186)+acd129(180)+acd129(185)+acd129(189)
      acd129(178)=ninjaP*acd129(173)
      acd129(179)=acd129(28)*acd129(29)
      acd129(180)=acd129(22)*acd129(27)
      acd129(179)=acd129(179)+acd129(180)
      acd129(179)=acd129(4)*acd129(179)
      acd129(180)=acd129(26)*acd129(203)
      acd129(183)=acd129(24)*acd129(199)
      acd129(184)=acd129(29)*acd129(83)
      acd129(185)=acd129(28)*acd129(82)
      acd129(186)=acd129(27)*acd129(81)
      acd129(188)=acd129(25)*acd129(79)
      acd129(189)=acd129(23)*acd129(66)
      acd129(191)=acd129(22)*acd129(51)
      acd129(179)=acd129(179)+acd129(191)+acd129(189)+acd129(188)+acd129(186)+a&
      &cd129(185)+acd129(140)+acd129(184)+acd129(183)+acd129(180)
      acd129(174)=acd129(179)*acd129(174)
      acd129(179)=-acd129(25)*acd129(190)
      acd129(180)=-acd129(24)*acd129(196)
      acd129(183)=acd129(99)*acd129(138)
      acd129(184)=acd129(96)*acd129(137)
      acd129(185)=acd129(95)*acd129(136)
      acd129(186)=acd129(89)*acd129(131)
      acd129(188)=acd129(29)*acd129(135)
      acd129(189)=acd129(27)*acd129(134)
      acd129(179)=acd129(189)+acd129(188)+acd129(186)+acd129(185)+acd129(184)+a&
      &cd129(148)+acd129(183)+acd129(180)+acd129(179)
      acd129(179)=acd129(68)*acd129(179)
      acd129(180)=-acd129(26)*acd129(198)
      acd129(183)=-acd129(23)*acd129(204)
      acd129(184)=acd129(104)*acd129(129)
      acd129(185)=acd129(98)*acd129(128)
      acd129(186)=acd129(97)*acd129(127)
      acd129(188)=acd129(87)*acd129(123)
      acd129(189)=acd129(28)*acd129(126)
      acd129(191)=acd129(22)*acd129(114)
      acd129(180)=acd129(191)+acd129(189)+acd129(188)+acd129(186)+acd129(185)+a&
      &cd129(145)+acd129(184)+acd129(183)+acd129(180)
      acd129(180)=acd129(44)*acd129(180)
      acd129(183)=acd129(26)*acd129(208)
      acd129(184)=acd129(23)*acd129(210)
      acd129(185)=-acd129(102)*acd129(122)
      acd129(186)=acd129(100)*acd129(121)
      acd129(188)=acd129(93)*acd129(119)
      acd129(189)=acd129(92)*acd129(117)
      acd129(191)=acd129(28)*acd129(120)
      acd129(193)=acd129(22)*acd129(113)
      acd129(183)=acd129(193)+acd129(191)+acd129(189)+acd129(188)+acd129(186)+a&
      &cd129(143)+acd129(185)+acd129(184)+acd129(183)
      acd129(183)=acd129(42)*acd129(183)
      acd129(184)=acd129(25)*acd129(213)
      acd129(185)=acd129(24)*acd129(215)
      acd129(186)=acd129(103)*acd129(112)
      acd129(188)=-acd129(101)*acd129(111)
      acd129(189)=acd129(94)*acd129(108)
      acd129(191)=acd129(91)*acd129(107)
      acd129(193)=acd129(29)*acd129(110)
      acd129(194)=acd129(27)*acd129(109)
      acd129(184)=acd129(194)+acd129(193)+acd129(191)+acd129(189)+acd129(188)+a&
      &cd129(141)+acd129(186)+acd129(185)+acd129(184)
      acd129(184)=acd129(30)*acd129(184)
      acd129(185)=acd129(90)*acd129(209)
      acd129(186)=acd129(88)*acd129(212)
      acd129(188)=acd129(29)*acd129(99)
      acd129(189)=acd129(27)*acd129(95)
      acd129(188)=acd129(188)+acd129(189)
      acd129(188)=acd129(68)*acd129(188)
      acd129(189)=acd129(28)*acd129(98)
      acd129(191)=acd129(22)*acd129(97)
      acd129(189)=acd129(189)+acd129(191)
      acd129(189)=acd129(44)*acd129(189)
      acd129(185)=acd129(189)+acd129(188)+acd129(186)+acd129(185)
      acd129(185)=acd129(46)*acd129(185)
      acd129(182)=acd129(86)*acd129(182)
      acd129(186)=acd129(85)*acd129(214)
      acd129(188)=acd129(28)*acd129(102)
      acd129(189)=acd129(22)*acd129(100)
      acd129(188)=acd129(188)+acd129(189)
      acd129(188)=acd129(42)*acd129(188)
      acd129(189)=acd129(29)*acd129(101)
      acd129(191)=acd129(27)*acd129(103)
      acd129(189)=acd129(189)+acd129(191)
      acd129(189)=acd129(30)*acd129(189)
      acd129(182)=acd129(189)+acd129(188)+acd129(186)+acd129(182)
      acd129(182)=acd129(38)*acd129(182)
      acd129(175)=acd129(90)*acd129(175)
      acd129(181)=acd129(88)*acd129(181)
      acd129(186)=acd129(86)*acd129(187)
      acd129(187)=acd129(85)*acd129(201)
      acd129(188)=acd129(28)*acd129(115)
      acd129(189)=acd129(90)*acd129(135)
      acd129(191)=acd129(85)*acd129(110)
      acd129(193)=acd129(84)*acd129(83)
      acd129(188)=acd129(193)+acd129(191)+acd129(189)+acd129(160)+acd129(188)
      acd129(188)=acd129(19)*acd129(188)
      acd129(189)=acd129(29)*acd129(115)
      acd129(191)=acd129(88)*acd129(126)
      acd129(193)=acd129(86)*acd129(120)
      acd129(194)=acd129(84)*acd129(82)
      acd129(189)=acd129(194)+acd129(193)+acd129(191)+acd129(159)+acd129(189)
      acd129(189)=acd129(17)*acd129(189)
      acd129(191)=acd129(22)*acd129(115)
      acd129(193)=acd129(90)*acd129(134)
      acd129(194)=acd129(85)*acd129(109)
      acd129(195)=acd129(84)*acd129(81)
      acd129(191)=acd129(195)+acd129(194)+acd129(193)+acd129(158)+acd129(191)
      acd129(191)=acd129(15)*acd129(191)
      acd129(193)=-acd129(88)*acd129(198)
      acd129(194)=acd129(86)*acd129(208)
      acd129(195)=acd129(25)*acd129(139)
      acd129(197)=acd129(84)*acd129(203)
      acd129(193)=acd129(197)+acd129(155)+acd129(195)+acd129(194)+acd129(193)
      acd129(193)=acd129(13)*acd129(193)
      acd129(190)=-acd129(90)*acd129(190)
      acd129(194)=acd129(85)*acd129(213)
      acd129(195)=acd129(26)*acd129(139)
      acd129(197)=acd129(84)*acd129(202)
      acd129(190)=acd129(197)+acd129(152)+acd129(195)+acd129(194)+acd129(190)
      acd129(190)=acd129(10)*acd129(190)
      acd129(194)=-acd129(90)*acd129(196)
      acd129(195)=acd129(85)*acd129(215)
      acd129(196)=acd129(23)*acd129(130)
      acd129(197)=acd129(84)*acd129(199)
      acd129(194)=acd129(197)+acd129(149)+acd129(196)+acd129(195)+acd129(194)
      acd129(194)=acd129(8)*acd129(194)
      acd129(195)=-acd129(88)*acd129(204)
      acd129(196)=acd129(86)*acd129(210)
      acd129(197)=acd129(24)*acd129(130)
      acd129(198)=acd129(84)*acd129(200)
      acd129(195)=acd129(198)+acd129(146)+acd129(197)+acd129(196)+acd129(195)
      acd129(195)=acd129(5)*acd129(195)
      acd129(192)=acd129(27)*acd129(192)
      acd129(196)=acd129(88)*acd129(114)
      acd129(197)=acd129(86)*acd129(113)
      acd129(198)=acd129(84)*acd129(51)
      acd129(192)=acd129(198)+acd129(197)+acd129(196)+acd129(142)+acd129(192)
      acd129(192)=acd129(2)*acd129(192)
      acd129(196)=-acd129(90)*acd129(25)*acd129(75)
      acd129(197)=-acd129(88)*acd129(26)*acd129(65)
      acd129(196)=acd129(196)+acd129(197)
      acd129(196)=acd129(62)*acd129(196)
      acd129(197)=-acd129(90)*acd129(24)*acd129(67)
      acd129(198)=-acd129(88)*acd129(23)*acd129(58)
      acd129(197)=acd129(197)+acd129(198)
      acd129(197)=acd129(59)*acd129(197)
      acd129(198)=acd129(86)*acd129(26)*acd129(53)
      acd129(199)=acd129(85)*acd129(25)*acd129(35)
      acd129(198)=acd129(198)+acd129(199)
      acd129(198)=acd129(34)*acd129(198)
      acd129(199)=acd129(86)*acd129(23)*acd129(55)
      acd129(200)=acd129(85)*acd129(24)*acd129(36)
      acd129(199)=acd129(199)+acd129(200)
      acd129(199)=acd129(32)*acd129(199)
      acd129(200)=acd129(84)*acd129(206)
      acd129(201)=acd129(168)*acd129(169)
      acd129(202)=acd129(150)*acd129(151)
      acd129(203)=acd129(76)*acd129(165)
      acd129(204)=acd129(75)*acd129(162)
      acd129(205)=acd129(74)*acd129(161)
      acd129(206)=acd129(67)*acd129(147)
      acd129(207)=acd129(65)*acd129(172)
      acd129(208)=acd129(64)*acd129(164)
      acd129(209)=acd129(58)*acd129(144)
      acd129(210)=acd129(57)*acd129(170)
      acd129(211)=-acd129(55)*acd129(156)
      acd129(212)=acd129(53)*acd129(154)
      acd129(213)=acd129(49)*acd129(166)
      acd129(214)=acd129(47)*acd129(163)
      acd129(215)=acd129(41)*acd129(171)
      acd129(216)=acd129(40)*acd129(167)
      acd129(217)=-acd129(36)*acd129(157)
      acd129(218)=acd129(35)*acd129(153)
      acd129(174)=acd129(178)+acd129(182)+acd129(185)+acd129(174)+acd129(184)+a&
      &cd129(183)+acd129(180)+acd129(179)+acd129(192)+acd129(200)+acd129(195)+a&
      &cd129(194)+acd129(190)+acd129(193)+acd129(191)+acd129(189)+acd129(188)+a&
      &cd129(199)+acd129(198)+acd129(197)+acd129(196)+acd129(187)+acd129(186)+a&
      &cd129(181)+acd129(175)+acd129(218)+acd129(217)+acd129(216)+acd129(215)+a&
      &cd129(214)+acd129(213)+acd129(212)+acd129(211)+acd129(210)+acd129(209)+a&
      &cd129(208)+acd129(207)+acd129(206)+acd129(205)+acd129(204)+acd129(203)+a&
      &cd129(201)+acd129(202)
      brack(ninjaidxt1mu0)=acd129(177)
      brack(ninjaidxt1mu2)=acd129(176)
      brack(ninjaidxt0mu0)=acd129(174)
      brack(ninjaidxt0mu2)=acd129(173)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p2_part21part21_part25part25part21_d129h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p2_part21part21_part25part25part21_globalsl1, only: epspow
      use p2_part21part21_part25part25part21_kinematics
      use p2_part21part21_part25part25part21_abbrevd129h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p2_part21part21_part25part25part21_d129h0l131
