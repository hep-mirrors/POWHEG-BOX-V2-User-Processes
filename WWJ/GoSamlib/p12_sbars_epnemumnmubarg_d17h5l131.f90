module     p12_sbars_epnemumnmubarg_d17h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d17h5l131.f90
   ! generator: buildfortran_tn3.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd17h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(69) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd17(1)=dotproduct(k1,ninjaE3)
      acd17(2)=dotproduct(ninjaE3,spvak5k6)
      acd17(3)=dotproduct(ninjaE3,spvak7k2)
      acd17(4)=abb17(64)
      acd17(5)=dotproduct(k2,ninjaE3)
      acd17(6)=dotproduct(k5,ninjaE3)
      acd17(7)=dotproduct(ninjaE3,spvak1k2)
      acd17(8)=abb17(32)
      acd17(9)=dotproduct(k6,ninjaE3)
      acd17(10)=abb17(31)
      acd17(11)=dotproduct(k7,ninjaE3)
      acd17(12)=dotproduct(ninjaE3,spvak4k3)
      acd17(13)=abb17(70)
      acd17(14)=dotproduct(ninjaA,ninjaE3)
      acd17(15)=abb17(67)
      acd17(16)=abb17(17)
      acd17(17)=abb17(33)
      acd17(18)=dotproduct(ninjaA,spvak5k6)
      acd17(19)=abb17(8)
      acd17(20)=dotproduct(ninjaA,spvak7k2)
      acd17(21)=dotproduct(ninjaA,spvak1k2)
      acd17(22)=dotproduct(ninjaA,spvak4k3)
      acd17(23)=dotproduct(ninjaE3,spvak1k3)
      acd17(24)=abb17(7)
      acd17(25)=abb17(71)
      acd17(26)=abb17(9)
      acd17(27)=dotproduct(ninjaE3,spvak5k2)
      acd17(28)=abb17(80)
      acd17(29)=dotproduct(ninjaE3,spvak1k5)
      acd17(30)=abb17(49)
      acd17(31)=dotproduct(ninjaE3,spvak1k7)
      acd17(32)=abb17(51)
      acd17(33)=dotproduct(ninjaE3,spvak6k2)
      acd17(34)=abb17(74)
      acd17(35)=dotproduct(ninjaE3,spvak4k2)
      acd17(36)=abb17(82)
      acd17(37)=dotproduct(ninjaE3,spvak1k6)
      acd17(38)=abb17(102)
      acd17(39)=abb17(91)
      acd17(40)=abb17(58)
      acd17(41)=dotproduct(ninjaE3,spvak5k3)
      acd17(42)=abb17(30)
      acd17(43)=abb17(46)
      acd17(44)=dotproduct(ninjaE3,spvak7k3)
      acd17(45)=abb17(50)
      acd17(46)=dotproduct(ninjaE3,spvak5k7)
      acd17(47)=abb17(53)
      acd17(48)=dotproduct(ninjaE3,spvak5k1)
      acd17(49)=abb17(55)
      acd17(50)=dotproduct(ninjaE3,spvak4k7)
      acd17(51)=abb17(59)
      acd17(52)=dotproduct(ninjaE3,spvak4k6)
      acd17(53)=abb17(60)
      acd17(54)=abb17(94)
      acd17(55)=abb17(101)
      acd17(56)=abb17(103)
      acd17(57)=acd17(52)*acd17(53)
      acd17(58)=acd17(50)*acd17(51)
      acd17(59)=acd17(48)*acd17(49)
      acd17(60)=acd17(46)*acd17(47)
      acd17(61)=acd17(44)*acd17(45)
      acd17(62)=acd17(41)*acd17(42)
      acd17(63)=acd17(6)*acd17(8)
      acd17(64)=-acd17(9)-acd17(11)
      acd17(64)=acd17(10)*acd17(64)
      acd17(65)=acd17(27)*acd17(43)
      acd17(66)=2.0_ki*acd17(14)
      acd17(67)=acd17(16)*acd17(66)
      acd17(68)=acd17(19)*acd17(18)
      acd17(68)=acd17(40)+acd17(68)
      acd17(68)=acd17(12)*acd17(68)
      acd17(69)=acd17(19)*acd17(22)
      acd17(69)=acd17(26)+acd17(69)
      acd17(69)=acd17(2)*acd17(69)
      acd17(57)=acd17(69)+acd17(68)+acd17(67)+acd17(65)+acd17(64)+acd17(63)+acd&
      &17(62)+acd17(61)+acd17(60)+acd17(59)+acd17(57)+acd17(58)
      acd17(57)=acd17(7)*acd17(57)
      acd17(58)=acd17(35)*acd17(36)
      acd17(59)=-acd17(33)*acd17(34)
      acd17(60)=-acd17(29)*acd17(30)
      acd17(61)=acd17(23)*acd17(24)
      acd17(62)=acd17(37)*acd17(38)
      acd17(63)=-acd17(31)*acd17(32)
      acd17(64)=-acd17(5)-acd17(1)
      acd17(64)=acd17(4)*acd17(64)
      acd17(65)=acd17(27)*acd17(28)
      acd17(67)=acd17(15)*acd17(66)
      acd17(68)=acd17(12)*acd17(19)
      acd17(69)=acd17(21)*acd17(68)
      acd17(58)=acd17(69)+acd17(67)+acd17(65)+acd17(64)+acd17(63)+acd17(62)+acd&
      &17(61)+acd17(60)+acd17(58)+acd17(59)
      acd17(58)=acd17(2)*acd17(58)
      acd17(59)=acd17(37)*acd17(56)
      acd17(60)=acd17(31)*acd17(55)
      acd17(61)=acd17(27)*acd17(54)
      acd17(59)=acd17(61)+acd17(59)+acd17(60)
      acd17(59)=acd17(12)*acd17(59)
      acd17(60)=acd17(12)*acd17(39)
      acd17(61)=acd17(2)*acd17(25)
      acd17(60)=acd17(60)+acd17(61)
      acd17(60)=acd17(3)*acd17(60)
      acd17(57)=acd17(60)+acd17(57)+acd17(59)+acd17(58)
      acd17(57)=acd17(3)*acd17(57)
      acd17(58)=acd17(11)*acd17(13)
      acd17(59)=acd17(17)*acd17(66)
      acd17(58)=acd17(58)+acd17(59)
      acd17(58)=acd17(12)*acd17(58)
      acd17(59)=acd17(68)*acd17(2)
      acd17(60)=acd17(20)*acd17(59)
      acd17(58)=acd17(58)+acd17(60)
      acd17(58)=acd17(7)*acd17(58)
      acd17(57)=acd17(58)+acd17(57)
      acd17(58)=acd17(3)*acd17(7)*acd17(59)
      brack(ninjaidxt3mu0)=acd17(58)
      brack(ninjaidxt2mu0)=acd17(57)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd17h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(201) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd17(1)=dotproduct(k1,ninjaE3)
      acd17(2)=dotproduct(ninjaE3,spvak5k6)
      acd17(3)=dotproduct(ninjaE4,spvak7k2)
      acd17(4)=abb17(64)
      acd17(5)=dotproduct(ninjaE3,spvak7k2)
      acd17(6)=dotproduct(ninjaE4,spvak5k6)
      acd17(7)=abb17(28)
      acd17(8)=dotproduct(k1,ninjaE4)
      acd17(9)=dotproduct(k2,ninjaE3)
      acd17(10)=abb17(26)
      acd17(11)=dotproduct(k2,ninjaE4)
      acd17(12)=dotproduct(k5,ninjaE3)
      acd17(13)=dotproduct(ninjaE3,spvak1k2)
      acd17(14)=abb17(32)
      acd17(15)=dotproduct(ninjaE4,spvak1k2)
      acd17(16)=abb17(25)
      acd17(17)=dotproduct(k5,ninjaE4)
      acd17(18)=dotproduct(k6,ninjaE3)
      acd17(19)=abb17(31)
      acd17(20)=abb17(41)
      acd17(21)=dotproduct(k6,ninjaE4)
      acd17(22)=dotproduct(k7,ninjaE3)
      acd17(23)=dotproduct(ninjaE4,spvak4k3)
      acd17(24)=abb17(70)
      acd17(25)=dotproduct(ninjaE3,spvak4k3)
      acd17(26)=abb17(40)
      acd17(27)=dotproduct(k7,ninjaE4)
      acd17(28)=dotproduct(ninjaA,ninjaE3)
      acd17(29)=abb17(17)
      acd17(30)=abb17(33)
      acd17(31)=abb17(67)
      acd17(32)=abb17(12)
      acd17(33)=dotproduct(ninjaA,ninjaE4)
      acd17(34)=dotproduct(ninjaA,spvak1k2)
      acd17(35)=abb17(8)
      acd17(36)=dotproduct(ninjaA,spvak5k6)
      acd17(37)=dotproduct(ninjaA,spvak7k2)
      acd17(38)=dotproduct(ninjaA,spvak4k3)
      acd17(39)=dotproduct(ninjaE3,spvak7k3)
      acd17(40)=abb17(50)
      acd17(41)=abb17(9)
      acd17(42)=dotproduct(ninjaE4,spvak7k3)
      acd17(43)=abb17(58)
      acd17(44)=dotproduct(ninjaE4,spvak4k6)
      acd17(45)=abb17(60)
      acd17(46)=dotproduct(ninjaE4,spvak5k7)
      acd17(47)=abb17(53)
      acd17(48)=dotproduct(ninjaE4,spvak4k7)
      acd17(49)=abb17(59)
      acd17(50)=dotproduct(ninjaE4,spvak5k3)
      acd17(51)=abb17(30)
      acd17(52)=dotproduct(ninjaE4,spvak5k2)
      acd17(53)=abb17(46)
      acd17(54)=dotproduct(ninjaE4,spvak5k1)
      acd17(55)=abb17(55)
      acd17(56)=dotproduct(ninjaE3,spvak4k6)
      acd17(57)=dotproduct(ninjaE3,spvak5k7)
      acd17(58)=dotproduct(ninjaE3,spvak4k7)
      acd17(59)=dotproduct(ninjaE3,spvak5k3)
      acd17(60)=dotproduct(ninjaE3,spvak5k2)
      acd17(61)=dotproduct(ninjaE3,spvak5k1)
      acd17(62)=abb17(14)
      acd17(63)=dotproduct(ninjaE3,spvak1k3)
      acd17(64)=abb17(7)
      acd17(65)=abb17(75)
      acd17(66)=dotproduct(ninjaE4,spvak1k3)
      acd17(67)=abb17(71)
      acd17(68)=dotproduct(ninjaE4,spvak4k2)
      acd17(69)=abb17(82)
      acd17(70)=abb17(80)
      acd17(71)=dotproduct(ninjaE4,spvak1k5)
      acd17(72)=abb17(49)
      acd17(73)=dotproduct(ninjaE4,spvak1k7)
      acd17(74)=abb17(51)
      acd17(75)=dotproduct(ninjaE4,spvak6k2)
      acd17(76)=abb17(74)
      acd17(77)=dotproduct(ninjaE4,spvak1k6)
      acd17(78)=abb17(102)
      acd17(79)=dotproduct(ninjaE3,spvak4k2)
      acd17(80)=dotproduct(ninjaE3,spvak1k5)
      acd17(81)=dotproduct(ninjaE3,spvak1k7)
      acd17(82)=dotproduct(ninjaE3,spvak6k2)
      acd17(83)=dotproduct(ninjaE3,spvak1k6)
      acd17(84)=abb17(65)
      acd17(85)=abb17(91)
      acd17(86)=abb17(94)
      acd17(87)=abb17(101)
      acd17(88)=abb17(103)
      acd17(89)=abb17(35)
      acd17(90)=abb17(86)
      acd17(91)=abb17(22)
      acd17(92)=abb17(62)
      acd17(93)=abb17(81)
      acd17(94)=abb17(78)
      acd17(95)=abb17(95)
      acd17(96)=abb17(39)
      acd17(97)=dotproduct(k1,ninjaA)
      acd17(98)=abb17(29)
      acd17(99)=abb17(54)
      acd17(100)=dotproduct(k2,ninjaA)
      acd17(101)=abb17(27)
      acd17(102)=abb17(66)
      acd17(103)=abb17(52)
      acd17(104)=dotproduct(k5,ninjaA)
      acd17(105)=abb17(104)
      acd17(106)=abb17(38)
      acd17(107)=abb17(36)
      acd17(108)=dotproduct(k6,ninjaA)
      acd17(109)=abb17(48)
      acd17(110)=dotproduct(k7,ninjaA)
      acd17(111)=abb17(87)
      acd17(112)=abb17(76)
      acd17(113)=abb17(47)
      acd17(114)=abb17(85)
      acd17(115)=abb17(77)
      acd17(116)=abb17(96)
      acd17(117)=dotproduct(ninjaA,ninjaA)
      acd17(118)=dotproduct(ninjaA,spvak7k3)
      acd17(119)=dotproduct(ninjaA,spvak1k3)
      acd17(120)=dotproduct(ninjaA,spvak4k6)
      acd17(121)=dotproduct(ninjaA,spvak5k7)
      acd17(122)=dotproduct(ninjaA,spvak4k7)
      acd17(123)=dotproduct(ninjaA,spvak5k3)
      acd17(124)=dotproduct(ninjaA,spvak4k2)
      acd17(125)=dotproduct(ninjaA,spvak5k2)
      acd17(126)=dotproduct(ninjaA,spvak1k5)
      acd17(127)=dotproduct(ninjaA,spvak1k7)
      acd17(128)=dotproduct(ninjaA,spvak5k1)
      acd17(129)=dotproduct(ninjaA,spvak6k2)
      acd17(130)=dotproduct(ninjaA,spvak1k6)
      acd17(131)=abb17(6)
      acd17(132)=abb17(19)
      acd17(133)=abb17(16)
      acd17(134)=abb17(20)
      acd17(135)=abb17(68)
      acd17(136)=abb17(57)
      acd17(137)=abb17(63)
      acd17(138)=abb17(43)
      acd17(139)=abb17(37)
      acd17(140)=abb17(21)
      acd17(141)=abb17(73)
      acd17(142)=abb17(61)
      acd17(143)=abb17(84)
      acd17(144)=abb17(10)
      acd17(145)=abb17(11)
      acd17(146)=abb17(13)
      acd17(147)=abb17(56)
      acd17(148)=abb17(34)
      acd17(149)=abb17(79)
      acd17(150)=abb17(100)
      acd17(151)=abb17(88)
      acd17(152)=abb17(92)
      acd17(153)=abb17(24)
      acd17(154)=abb17(23)
      acd17(155)=abb17(18)
      acd17(156)=abb17(44)
      acd17(157)=abb17(83)
      acd17(158)=abb17(45)
      acd17(159)=abb17(69)
      acd17(160)=abb17(42)
      acd17(161)=acd17(27)+acd17(21)
      acd17(161)=acd17(161)*acd17(19)
      acd17(162)=acd17(55)*acd17(54)
      acd17(163)=acd17(53)*acd17(52)
      acd17(164)=acd17(51)*acd17(50)
      acd17(165)=acd17(49)*acd17(48)
      acd17(166)=acd17(47)*acd17(46)
      acd17(167)=acd17(45)*acd17(44)
      acd17(168)=acd17(40)*acd17(42)
      acd17(169)=acd17(14)*acd17(17)
      acd17(170)=2.0_ki*acd17(33)
      acd17(171)=acd17(170)*acd17(29)
      acd17(172)=acd17(36)*acd17(35)
      acd17(172)=acd17(172)+acd17(43)
      acd17(173)=acd17(172)*acd17(23)
      acd17(174)=acd17(35)*acd17(38)
      acd17(174)=acd17(174)+acd17(41)
      acd17(175)=acd17(174)*acd17(6)
      acd17(161)=acd17(164)+acd17(165)+acd17(166)+acd17(167)-acd17(161)+acd17(1&
      &62)+acd17(163)+acd17(175)+acd17(168)+acd17(169)+acd17(171)+acd17(173)
      acd17(161)=acd17(161)*acd17(13)
      acd17(162)=acd17(8)+acd17(11)
      acd17(162)=acd17(162)*acd17(4)
      acd17(163)=acd17(78)*acd17(77)
      acd17(164)=acd17(76)*acd17(75)
      acd17(165)=acd17(74)*acd17(73)
      acd17(166)=acd17(72)*acd17(71)
      acd17(167)=acd17(70)*acd17(52)
      acd17(168)=acd17(69)*acd17(68)
      acd17(169)=acd17(64)*acd17(66)
      acd17(171)=acd17(35)*acd17(23)
      acd17(173)=acd17(171)*acd17(34)
      acd17(175)=acd17(170)*acd17(31)
      acd17(176)=2.0_ki*acd17(3)
      acd17(177)=acd17(176)*acd17(67)
      acd17(178)=acd17(174)*acd17(15)
      acd17(162)=-acd17(165)-acd17(166)+acd17(167)+acd17(168)-acd17(162)+acd17(&
      &163)-acd17(164)+acd17(178)+acd17(169)+acd17(173)+acd17(175)+acd17(177)
      acd17(162)=acd17(162)*acd17(2)
      acd17(163)=acd17(22)+acd17(18)
      acd17(163)=acd17(19)*acd17(163)
      acd17(164)=acd17(55)*acd17(61)
      acd17(165)=acd17(58)*acd17(49)
      acd17(166)=acd17(57)*acd17(47)
      acd17(167)=acd17(56)*acd17(45)
      acd17(168)=acd17(39)*acd17(40)
      acd17(169)=acd17(12)*acd17(14)
      acd17(173)=acd17(59)*acd17(51)
      acd17(175)=acd17(60)*acd17(53)
      acd17(163)=-acd17(173)-acd17(169)-acd17(168)-acd17(167)-acd17(166)-acd17(&
      &164)-acd17(165)-acd17(175)+acd17(163)
      acd17(164)=acd17(163)*acd17(15)
      acd17(165)=acd17(9)+acd17(1)
      acd17(165)=acd17(165)*acd17(4)
      acd17(166)=acd17(76)*acd17(82)
      acd17(167)=acd17(72)*acd17(80)
      acd17(168)=acd17(83)*acd17(78)
      acd17(169)=acd17(81)*acd17(74)
      acd17(173)=acd17(63)*acd17(64)
      acd17(175)=acd17(79)*acd17(69)
      acd17(177)=acd17(60)*acd17(70)
      acd17(165)=acd17(165)-acd17(177)-acd17(175)-acd17(173)+acd17(169)-acd17(1&
      &68)+acd17(166)+acd17(167)
      acd17(166)=acd17(165)*acd17(6)
      acd17(167)=acd17(88)*acd17(77)
      acd17(168)=acd17(87)*acd17(73)
      acd17(169)=acd17(86)*acd17(52)
      acd17(173)=acd17(34)*acd17(35)*acd17(6)
      acd17(175)=acd17(176)*acd17(85)
      acd17(176)=acd17(172)*acd17(15)
      acd17(167)=acd17(167)+acd17(168)+acd17(169)+acd17(173)+acd17(175)+acd17(1&
      &76)
      acd17(167)=acd17(167)*acd17(25)
      acd17(168)=acd17(83)*acd17(88)
      acd17(169)=acd17(81)*acd17(87)
      acd17(173)=acd17(60)*acd17(86)
      acd17(168)=acd17(173)+acd17(168)+acd17(169)
      acd17(169)=acd17(168)*acd17(23)
      acd17(173)=acd17(23)*acd17(85)
      acd17(175)=acd17(6)*acd17(67)
      acd17(173)=acd17(173)+acd17(175)
      acd17(173)=acd17(173)*acd17(5)
      acd17(175)=acd17(6)*acd17(31)
      acd17(176)=acd17(15)*acd17(29)
      acd17(175)=acd17(175)+acd17(176)
      acd17(176)=2.0_ki*acd17(28)
      acd17(175)=acd17(175)*acd17(176)
      acd17(177)=acd17(34)*acd17(29)
      acd17(178)=acd17(36)*acd17(31)
      acd17(178)=acd17(178)+acd17(89)
      acd17(161)=acd17(162)+acd17(167)+acd17(175)+acd17(177)+acd17(169)+acd17(1&
      &78)-acd17(164)-acd17(166)+acd17(161)+acd17(173)
      acd17(162)=acd17(5)*acd17(161)
      acd17(164)=acd17(58)*acd17(93)
      acd17(166)=acd17(57)*acd17(92)
      acd17(167)=acd17(56)*acd17(91)
      acd17(169)=acd17(1)*acd17(7)
      acd17(173)=acd17(18)*acd17(20)
      acd17(175)=acd17(12)*acd17(16)
      acd17(177)=acd17(63)*acd17(65)
      acd17(179)=acd17(59)*acd17(94)
      acd17(180)=acd17(9)*acd17(10)
      acd17(181)=acd17(79)*acd17(95)
      acd17(182)=acd17(60)*acd17(96)
      acd17(164)=acd17(182)+acd17(175)+acd17(173)+acd17(169)+acd17(164)+acd17(1&
      &66)+acd17(167)+acd17(177)+acd17(179)+acd17(180)+acd17(181)
      acd17(166)=acd17(22)*acd17(26)
      acd17(166)=acd17(166)+acd17(164)
      acd17(167)=acd17(176)*acd17(31)
      acd17(167)=acd17(167)-acd17(165)
      acd17(169)=acd17(167)*acd17(3)
      acd17(173)=acd17(25)*acd17(35)
      acd17(175)=acd17(173)*acd17(3)
      acd17(177)=acd17(175)*acd17(34)
      acd17(179)=acd17(173)*acd17(15)
      acd17(179)=acd17(179)+acd17(31)
      acd17(180)=acd17(179)*acd17(37)
      acd17(169)=acd17(84)+acd17(177)+acd17(169)+acd17(180)
      acd17(169)=acd17(169)*acd17(2)
      acd17(177)=acd17(168)*acd17(3)
      acd17(180)=acd17(176)*acd17(30)
      acd17(181)=acd17(22)*acd17(24)
      acd17(180)=acd17(180)+acd17(181)
      acd17(182)=acd17(180)*acd17(15)
      acd17(183)=acd17(34)*acd17(30)
      acd17(177)=acd17(182)+acd17(183)+acd17(177)+acd17(90)
      acd17(177)=acd17(177)*acd17(25)
      acd17(182)=acd17(28)*acd17(32)
      acd17(169)=acd17(166)+4.0_ki*acd17(182)+acd17(177)+acd17(169)
      acd17(177)=acd17(176)*acd17(29)
      acd17(163)=acd17(163)-acd17(177)
      acd17(177)=acd17(163)*acd17(3)
      acd17(182)=acd17(24)*acd17(27)
      acd17(170)=acd17(170)*acd17(30)
      acd17(183)=acd17(172)*acd17(3)
      acd17(170)=acd17(183)+acd17(182)+acd17(170)
      acd17(170)=acd17(170)*acd17(25)
      acd17(182)=acd17(171)*acd17(37)
      acd17(183)=acd17(174)*acd17(3)
      acd17(182)=acd17(182)+acd17(183)
      acd17(182)=acd17(182)*acd17(2)
      acd17(183)=acd17(180)*acd17(23)
      acd17(184)=acd17(173)*acd17(6)
      acd17(184)=acd17(184)+acd17(29)
      acd17(185)=acd17(184)*acd17(37)
      acd17(186)=acd17(38)*acd17(30)
      acd17(186)=acd17(186)+acd17(62)
      acd17(170)=acd17(170)+acd17(182)+acd17(183)-acd17(177)+acd17(185)+acd17(1&
      &86)
      acd17(177)=acd17(13)*acd17(170)
      acd17(162)=acd17(162)+acd17(177)+acd17(169)
      acd17(177)=acd17(163)*acd17(34)
      acd17(165)=acd17(165)*acd17(36)
      acd17(182)=acd17(88)*acd17(130)
      acd17(183)=acd17(87)*acd17(127)
      acd17(185)=acd17(86)*acd17(125)
      acd17(182)=acd17(143)+acd17(185)+acd17(182)+acd17(183)
      acd17(183)=acd17(172)*acd17(34)
      acd17(183)=acd17(183)+acd17(182)
      acd17(183)=acd17(183)*acd17(25)
      acd17(185)=acd17(168)*acd17(38)
      acd17(178)=acd17(178)*acd17(176)
      acd17(187)=acd17(58)*acd17(146)
      acd17(188)=acd17(57)*acd17(145)
      acd17(189)=acd17(56)*acd17(144)
      acd17(190)=acd17(39)*acd17(136)
      acd17(191)=acd17(1)*acd17(99)
      acd17(192)=acd17(83)*acd17(151)
      acd17(193)=acd17(81)*acd17(150)
      acd17(194)=acd17(18)*acd17(109)
      acd17(195)=acd17(12)*acd17(106)
      acd17(196)=acd17(63)*acd17(138)
      acd17(197)=acd17(59)*acd17(147)
      acd17(198)=acd17(9)*acd17(103)
      acd17(199)=acd17(79)*acd17(148)
      acd17(200)=acd17(60)*acd17(149)
      acd17(201)=acd17(22)*acd17(113)
      acd17(165)=-acd17(189)-acd17(190)-acd17(191)-acd17(192)-acd17(185)-acd17(&
      &187)-acd17(188)-acd17(197)-acd17(198)-acd17(199)-acd17(200)+acd17(193)-a&
      &cd17(194)-acd17(195)-acd17(196)-acd17(183)-acd17(201)+acd17(165)+acd17(1&
      &77)-acd17(178)
      acd17(177)=acd17(110)+acd17(108)
      acd17(177)=acd17(177)*acd17(19)
      acd17(178)=acd17(55)*acd17(128)
      acd17(183)=acd17(53)*acd17(125)
      acd17(185)=acd17(51)*acd17(123)
      acd17(187)=acd17(49)*acd17(122)
      acd17(188)=acd17(47)*acd17(121)
      acd17(189)=acd17(45)*acd17(120)
      acd17(190)=acd17(40)*acd17(118)
      acd17(191)=acd17(14)*acd17(104)
      acd17(192)=acd17(117)*acd17(29)
      acd17(193)=acd17(38)*acd17(43)
      acd17(194)=acd17(174)*acd17(36)
      acd17(177)=-acd17(177)+acd17(133)+acd17(192)+acd17(191)+acd17(190)+acd17(&
      &189)+acd17(188)+acd17(187)+acd17(185)+acd17(178)+acd17(183)+acd17(193)+a&
      &cd17(194)
      acd17(171)=acd17(171)*acd17(2)
      acd17(171)=acd17(171)+acd17(184)
      acd17(178)=ninjaP*acd17(171)
      acd17(178)=acd17(178)+acd17(177)
      acd17(178)=acd17(13)*acd17(178)
      acd17(183)=acd17(100)+acd17(97)
      acd17(183)=acd17(183)*acd17(4)
      acd17(184)=acd17(78)*acd17(130)
      acd17(185)=acd17(76)*acd17(129)
      acd17(187)=acd17(74)*acd17(127)
      acd17(188)=acd17(72)*acd17(126)
      acd17(189)=acd17(70)*acd17(125)
      acd17(190)=acd17(69)*acd17(124)
      acd17(191)=acd17(64)*acd17(119)
      acd17(192)=acd17(117)*acd17(31)
      acd17(183)=acd17(183)-acd17(139)+acd17(188)+acd17(187)+acd17(185)-acd17(1&
      &84)-acd17(190)-acd17(191)-acd17(189)-acd17(192)
      acd17(184)=acd17(174)*acd17(34)
      acd17(184)=acd17(184)-acd17(183)
      acd17(185)=acd17(37)*acd17(67)
      acd17(187)=2.0_ki*acd17(185)+acd17(184)
      acd17(187)=acd17(2)*acd17(187)
      acd17(188)=acd17(38)*acd17(85)
      acd17(189)=acd17(36)*acd17(67)
      acd17(188)=acd17(142)+acd17(188)+acd17(189)
      acd17(189)=acd17(5)*acd17(188)
      acd17(190)=acd17(37)*acd17(25)
      acd17(191)=acd17(190)*acd17(85)
      acd17(179)=acd17(179)*acd17(2)
      acd17(192)=ninjaP*acd17(179)
      acd17(178)=acd17(189)+acd17(178)+acd17(192)+acd17(187)+2.0_ki*acd17(191)-&
      &acd17(165)
      acd17(178)=acd17(5)*acd17(178)
      acd17(187)=acd17(32)*acd17(176)
      acd17(166)=acd17(187)+acd17(166)
      acd17(166)=acd17(166)*acd17(176)
      acd17(172)=acd17(25)*acd17(172)
      acd17(163)=acd17(172)-acd17(163)
      acd17(163)=acd17(37)*acd17(163)
      acd17(172)=acd17(186)*acd17(176)
      acd17(186)=acd17(39)*acd17(131)
      acd17(187)=acd17(59)*acd17(134)
      acd17(189)=acd17(22)*acd17(111)
      acd17(181)=acd17(181)*acd17(38)
      acd17(192)=acd17(12)+acd17(18)
      acd17(193)=acd17(192)*acd17(105)
      acd17(172)=acd17(186)+acd17(187)+acd17(189)+acd17(181)+acd17(172)+acd17(1&
      &93)
      acd17(181)=acd17(110)*acd17(24)
      acd17(186)=acd17(117)*acd17(30)
      acd17(181)=acd17(181)+acd17(186)
      acd17(186)=acd17(25)*acd17(181)
      acd17(187)=acd17(25)*acd17(30)
      acd17(175)=acd17(175)*acd17(2)
      acd17(175)=acd17(187)+acd17(175)
      acd17(187)=ninjaP*acd17(175)
      acd17(174)=acd17(37)*acd17(174)
      acd17(174)=acd17(132)+acd17(174)
      acd17(174)=acd17(2)*acd17(174)
      acd17(163)=acd17(187)+acd17(174)+acd17(163)+acd17(186)+acd17(172)
      acd17(163)=acd17(13)*acd17(163)
      acd17(173)=acd17(34)*acd17(173)
      acd17(167)=acd17(173)+acd17(167)
      acd17(167)=acd17(37)*acd17(167)
      acd17(173)=acd17(39)*acd17(135)
      acd17(174)=acd17(63)*acd17(137)
      acd17(186)=acd17(9)*acd17(102)
      acd17(187)=acd17(79)*acd17(141)
      acd17(173)=acd17(173)+acd17(174)+acd17(186)+acd17(187)
      acd17(174)=acd17(84)*acd17(176)
      acd17(186)=acd17(25)*acd17(140)
      acd17(167)=acd17(167)+acd17(186)+acd17(174)+acd17(173)
      acd17(167)=acd17(2)*acd17(167)
      acd17(174)=acd17(1)*acd17(98)
      acd17(186)=acd17(63)*acd17(112)
      acd17(187)=acd17(59)*acd17(115)
      acd17(189)=acd17(9)*acd17(101)
      acd17(193)=acd17(79)*acd17(116)
      acd17(186)=acd17(193)+acd17(189)+acd17(187)+acd17(174)+acd17(186)
      acd17(186)=acd17(22)*acd17(186)
      acd17(187)=acd17(60)*acd17(152)
      acd17(189)=acd17(22)*acd17(114)
      acd17(187)=acd17(187)+acd17(189)
      acd17(180)=acd17(34)*acd17(180)
      acd17(189)=acd17(90)*acd17(176)
      acd17(180)=acd17(180)+acd17(189)+acd17(187)
      acd17(180)=acd17(25)*acd17(180)
      acd17(168)=acd17(168)*acd17(190)
      acd17(189)=acd17(192)*acd17(107)
      acd17(190)=-acd17(79)*acd17(189)
      acd17(163)=acd17(178)+acd17(163)+acd17(167)+acd17(168)+acd17(180)+acd17(1&
      &66)+acd17(190)+acd17(186)
      acd17(166)=acd17(13)*acd17(175)
      acd17(167)=acd17(13)*acd17(171)
      acd17(167)=acd17(179)+acd17(167)
      acd17(167)=acd17(5)*acd17(167)
      acd17(166)=acd17(166)+acd17(167)
      acd17(161)=ninjaP*acd17(161)
      acd17(167)=acd17(34)*acd17(177)
      acd17(168)=-acd17(36)*acd17(183)
      acd17(171)=acd17(38)*acd17(182)
      acd17(175)=2.0_ki*acd17(37)
      acd17(175)=acd17(188)*acd17(175)
      acd17(178)=acd17(122)*acd17(146)
      acd17(179)=acd17(121)*acd17(145)
      acd17(180)=acd17(120)*acd17(144)
      acd17(182)=acd17(118)*acd17(136)
      acd17(183)=acd17(97)*acd17(99)
      acd17(186)=acd17(130)*acd17(151)
      acd17(188)=-acd17(127)*acd17(150)
      acd17(190)=acd17(123)*acd17(147)
      acd17(192)=acd17(119)*acd17(138)
      acd17(193)=acd17(108)*acd17(109)
      acd17(194)=acd17(104)*acd17(106)
      acd17(195)=acd17(100)*acd17(103)
      acd17(196)=acd17(124)*acd17(148)
      acd17(197)=acd17(125)*acd17(149)
      acd17(198)=acd17(110)*acd17(113)
      acd17(199)=acd17(117)*acd17(89)
      acd17(161)=acd17(175)+acd17(167)+acd17(168)+acd17(171)+acd17(199)+acd17(1&
      &98)+acd17(197)+acd17(196)+acd17(195)+acd17(194)+acd17(193)+acd17(192)+ac&
      &d17(190)+acd17(188)+acd17(186)+acd17(183)+acd17(182)+acd17(180)+acd17(17&
      &9)+acd17(158)+acd17(178)+acd17(161)
      acd17(161)=acd17(5)*acd17(161)
      acd17(165)=acd17(191)-acd17(165)
      acd17(165)=acd17(37)*acd17(165)
      acd17(167)=acd17(93)*acd17(122)
      acd17(168)=acd17(92)*acd17(121)
      acd17(171)=acd17(91)*acd17(120)
      acd17(175)=acd17(97)*acd17(7)
      acd17(178)=acd17(123)*acd17(94)
      acd17(179)=acd17(119)*acd17(65)
      acd17(180)=acd17(108)*acd17(20)
      acd17(182)=acd17(104)*acd17(16)
      acd17(183)=acd17(100)*acd17(10)
      acd17(186)=acd17(124)*acd17(95)
      acd17(188)=acd17(125)*acd17(96)
      acd17(190)=acd17(110)*acd17(26)
      acd17(191)=acd17(117)*acd17(32)
      acd17(192)=acd17(38)*acd17(90)
      acd17(193)=acd17(36)*acd17(84)
      acd17(167)=acd17(193)+acd17(192)+2.0_ki*acd17(191)+acd17(190)+acd17(188)+&
      &acd17(186)+acd17(183)+acd17(182)+acd17(180)+acd17(179)+acd17(178)+acd17(&
      &175)+acd17(171)+acd17(168)+acd17(154)+acd17(167)
      acd17(167)=acd17(167)*acd17(176)
      acd17(168)=acd17(37)*acd17(177)
      acd17(170)=ninjaP*acd17(170)
      acd17(171)=acd17(38)*acd17(181)
      acd17(175)=acd17(104)+acd17(108)
      acd17(176)=acd17(105)*acd17(175)
      acd17(177)=acd17(118)*acd17(131)
      acd17(178)=acd17(123)*acd17(134)
      acd17(179)=acd17(110)*acd17(111)
      acd17(180)=acd17(117)*acd17(62)
      acd17(182)=acd17(36)*acd17(132)
      acd17(168)=acd17(170)+acd17(168)+acd17(182)+acd17(171)+acd17(180)+acd17(1&
      &79)+acd17(178)+acd17(155)+acd17(177)+acd17(176)
      acd17(168)=acd17(13)*acd17(168)
      acd17(164)=acd17(117)*acd17(164)
      acd17(169)=ninjaP*acd17(169)
      acd17(170)=acd17(185)+acd17(184)
      acd17(170)=acd17(37)*acd17(170)
      acd17(171)=acd17(118)*acd17(135)
      acd17(176)=acd17(119)*acd17(137)
      acd17(177)=acd17(100)*acd17(102)
      acd17(178)=acd17(124)*acd17(141)
      acd17(179)=acd17(117)*acd17(84)
      acd17(180)=acd17(38)*acd17(140)
      acd17(182)=acd17(34)*acd17(132)
      acd17(170)=acd17(170)+acd17(182)+acd17(180)+acd17(179)+acd17(178)+acd17(1&
      &77)+acd17(171)+acd17(176)
      acd17(170)=acd17(2)*acd17(170)
      acd17(171)=acd17(97)*acd17(98)
      acd17(176)=acd17(123)*acd17(115)
      acd17(177)=acd17(119)*acd17(112)
      acd17(178)=acd17(100)*acd17(101)
      acd17(179)=acd17(124)*acd17(116)
      acd17(180)=acd17(117)*acd17(26)
      acd17(171)=acd17(180)+acd17(179)+acd17(178)+acd17(177)+acd17(171)+acd17(1&
      &76)
      acd17(171)=acd17(22)*acd17(171)
      acd17(172)=acd17(34)*acd17(172)
      acd17(176)=acd17(34)*acd17(181)
      acd17(177)=acd17(125)*acd17(152)
      acd17(178)=acd17(110)*acd17(114)
      acd17(179)=acd17(117)*acd17(90)
      acd17(180)=acd17(36)*acd17(140)
      acd17(176)=acd17(176)+acd17(180)+acd17(179)+acd17(178)+acd17(159)+acd17(1&
      &77)
      acd17(176)=acd17(25)*acd17(176)
      acd17(173)=acd17(36)*acd17(173)
      acd17(175)=-acd17(107)*acd17(175)
      acd17(177)=acd17(110)*acd17(116)
      acd17(175)=acd17(177)+acd17(175)
      acd17(175)=acd17(79)*acd17(175)
      acd17(177)=acd17(38)*acd17(187)
      acd17(178)=-acd17(124)*acd17(189)
      acd17(179)=acd17(39)*acd17(156)
      acd17(174)=acd17(110)*acd17(174)
      acd17(180)=acd17(110)*acd17(112)
      acd17(180)=acd17(157)+acd17(180)
      acd17(180)=acd17(63)*acd17(180)
      acd17(181)=acd17(110)*acd17(115)
      acd17(181)=acd17(160)+acd17(181)
      acd17(181)=acd17(59)*acd17(181)
      acd17(182)=acd17(110)*acd17(101)
      acd17(182)=acd17(153)+acd17(182)
      acd17(182)=acd17(9)*acd17(182)
      acd17(161)=acd17(161)+acd17(168)+acd17(169)+acd17(170)+acd17(165)+acd17(1&
      &76)+acd17(172)+acd17(167)+acd17(173)+acd17(177)+acd17(171)+acd17(175)+ac&
      &d17(182)+acd17(181)+acd17(180)+acd17(179)+acd17(174)+acd17(164)+acd17(17&
      &8)
      brack(ninjaidxt1mu0)=acd17(163)
      brack(ninjaidxt1mu2)=acd17(166)
      brack(ninjaidxt0mu0)=acd17(161)
      brack(ninjaidxt0mu2)=acd17(162)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d17h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd17h5
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
end module     p12_sbars_epnemumnmubarg_d17h5l131
