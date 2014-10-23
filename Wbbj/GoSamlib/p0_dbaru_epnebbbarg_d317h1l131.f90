module     p0_dbaru_epnebbbarg_d317h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d317h1l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd317h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd317
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd317(1)=dotproduct(k2,ninjaE3)
      acd317(2)=dotproduct(ninjaE3,spvak2k7)
      acd317(3)=abb317(57)
      acd317(4)=dotproduct(k3,ninjaE3)
      acd317(5)=dotproduct(k4,ninjaE3)
      acd317(6)=dotproduct(ninjaE3,spvak4k2)
      acd317(7)=abb317(20)
      acd317(8)=dotproduct(ninjaE3,spval6l5)
      acd317(9)=abb317(77)
      acd317(10)=dotproduct(ninjaE3,spvak1k2)
      acd317(11)=abb317(26)
      acd317(12)=dotproduct(ninjaE3,spvak4k3)
      acd317(13)=abb317(90)
      acd317(14)=abb317(17)
      acd317(15)=abb317(29)
      acd317(16)=abb317(89)
      acd317(17)=acd317(4)+acd317(5)
      acd317(18)=acd317(1)-acd317(17)
      acd317(18)=acd317(3)*acd317(18)
      acd317(19)=acd317(12)*acd317(13)
      acd317(20)=acd317(10)*acd317(11)
      acd317(21)=acd317(6)*acd317(7)
      acd317(22)=-acd317(8)*acd317(9)
      acd317(18)=acd317(22)+acd317(21)+acd317(19)+acd317(20)+acd317(18)
      acd317(18)=acd317(1)*acd317(18)
      acd317(19)=acd317(12)*acd317(16)
      acd317(20)=acd317(10)*acd317(15)
      acd317(21)=acd317(6)*acd317(14)
      acd317(17)=acd317(9)*acd317(17)
      acd317(17)=acd317(17)+acd317(21)+acd317(19)+acd317(20)
      acd317(17)=acd317(8)*acd317(17)
      acd317(17)=acd317(17)+acd317(18)
      acd317(17)=acd317(2)*acd317(17)
      brack(ninjaidxt2mu0)=acd317(17)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd317h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(147) :: acd317
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd317(1)=dotproduct(k2,ninjaE3)
      acd317(2)=dotproduct(ninjaE4,spvak2k7)
      acd317(3)=abb317(57)
      acd317(4)=dotproduct(k2,ninjaE4)
      acd317(5)=dotproduct(ninjaE3,spvak2k7)
      acd317(6)=dotproduct(k3,ninjaE3)
      acd317(7)=dotproduct(k3,ninjaE4)
      acd317(8)=dotproduct(k4,ninjaE3)
      acd317(9)=dotproduct(k4,ninjaE4)
      acd317(10)=dotproduct(ninjaE3,spvak1k2)
      acd317(11)=abb317(26)
      acd317(12)=dotproduct(ninjaE4,spvak1k2)
      acd317(13)=dotproduct(ninjaE4,spvak4k3)
      acd317(14)=abb317(90)
      acd317(15)=dotproduct(ninjaE4,spvak4k2)
      acd317(16)=abb317(20)
      acd317(17)=dotproduct(ninjaE4,spval6l5)
      acd317(18)=abb317(77)
      acd317(19)=dotproduct(ninjaE3,spvak4k3)
      acd317(20)=dotproduct(ninjaE3,spvak4k2)
      acd317(21)=dotproduct(ninjaE3,spval6l5)
      acd317(22)=abb317(115)
      acd317(23)=abb317(88)
      acd317(24)=abb317(29)
      acd317(25)=abb317(37)
      acd317(26)=abb317(89)
      acd317(27)=abb317(17)
      acd317(28)=abb317(51)
      acd317(29)=abb317(39)
      acd317(30)=abb317(69)
      acd317(31)=abb317(150)
      acd317(32)=dotproduct(ninjaE3,spval6k3)
      acd317(33)=abb317(162)
      acd317(34)=dotproduct(ninjaE3,spvak1k3)
      acd317(35)=abb317(66)
      acd317(36)=dotproduct(ninjaE3,spval6k2)
      acd317(37)=abb317(134)
      acd317(38)=dotproduct(k2,ninjaA)
      acd317(39)=dotproduct(ninjaA,spvak2k7)
      acd317(40)=abb317(43)
      acd317(41)=dotproduct(k3,ninjaA)
      acd317(42)=dotproduct(k4,ninjaA)
      acd317(43)=dotproduct(k7,ninjaE3)
      acd317(44)=abb317(183)
      acd317(45)=dotproduct(ninjaA,ninjaE3)
      acd317(46)=dotproduct(ninjaA,spvak1k2)
      acd317(47)=dotproduct(ninjaA,spvak4k3)
      acd317(48)=dotproduct(ninjaA,spvak4k2)
      acd317(49)=dotproduct(ninjaA,spval6l5)
      acd317(50)=abb317(32)
      acd317(51)=abb317(47)
      acd317(52)=abb317(52)
      acd317(53)=abb317(79)
      acd317(54)=abb317(146)
      acd317(55)=dotproduct(ninjaE3,spval6k7)
      acd317(56)=abb317(142)
      acd317(57)=abb317(197)
      acd317(58)=abb317(65)
      acd317(59)=abb317(78)
      acd317(60)=abb317(59)
      acd317(61)=dotproduct(l5,ninjaE3)
      acd317(62)=abb317(55)
      acd317(63)=dotproduct(l6,ninjaE3)
      acd317(64)=abb317(30)
      acd317(65)=abb317(24)
      acd317(66)=abb317(124)
      acd317(67)=abb317(179)
      acd317(68)=abb317(28)
      acd317(69)=abb317(60)
      acd317(70)=abb317(23)
      acd317(71)=abb317(149)
      acd317(72)=abb317(40)
      acd317(73)=abb317(13)
      acd317(74)=abb317(42)
      acd317(75)=abb317(41)
      acd317(76)=abb317(16)
      acd317(77)=abb317(19)
      acd317(78)=abb317(73)
      acd317(79)=abb317(50)
      acd317(80)=abb317(68)
      acd317(81)=abb317(35)
      acd317(82)=abb317(61)
      acd317(83)=dotproduct(ninjaE3,spval5k2)
      acd317(84)=abb317(63)
      acd317(85)=dotproduct(ninjaE3,spvak7k2)
      acd317(86)=abb317(72)
      acd317(87)=abb317(139)
      acd317(88)=abb317(101)
      acd317(89)=abb317(21)
      acd317(90)=abb317(18)
      acd317(91)=dotproduct(k7,ninjaA)
      acd317(92)=dotproduct(ninjaA,ninjaA)
      acd317(93)=dotproduct(ninjaA,spval6k7)
      acd317(94)=dotproduct(ninjaA,spval6k3)
      acd317(95)=dotproduct(ninjaA,spvak1k3)
      acd317(96)=dotproduct(ninjaA,spval6k2)
      acd317(97)=abb317(38)
      acd317(98)=abb317(180)
      acd317(99)=dotproduct(l5,ninjaA)
      acd317(100)=abb317(53)
      acd317(101)=dotproduct(l6,ninjaA)
      acd317(102)=abb317(96)
      acd317(103)=abb317(167)
      acd317(104)=abb317(84)
      acd317(105)=dotproduct(ninjaA,spval5k2)
      acd317(106)=dotproduct(ninjaA,spvak7k2)
      acd317(107)=abb317(15)
      acd317(108)=abb317(14)
      acd317(109)=abb317(31)
      acd317(110)=abb317(22)
      acd317(111)=abb317(123)
      acd317(112)=abb317(70)
      acd317(113)=abb317(25)
      acd317(114)=abb317(27)
      acd317(115)=abb317(36)
      acd317(116)=abb317(64)
      acd317(117)=abb317(127)
      acd317(118)=acd317(18)*acd317(17)
      acd317(119)=acd317(7)+acd317(9)
      acd317(120)=-acd317(119)+2.0_ki*acd317(4)
      acd317(120)=acd317(120)*acd317(3)
      acd317(121)=acd317(16)*acd317(15)
      acd317(122)=acd317(14)*acd317(13)
      acd317(123)=acd317(11)*acd317(12)
      acd317(118)=acd317(120)+acd317(121)+acd317(122)+acd317(123)-acd317(118)
      acd317(118)=acd317(118)*acd317(1)
      acd317(119)=acd317(119)-acd317(4)
      acd317(119)=acd317(119)*acd317(18)
      acd317(120)=acd317(27)*acd317(15)
      acd317(121)=acd317(26)*acd317(13)
      acd317(122)=acd317(24)*acd317(12)
      acd317(119)=acd317(122)+acd317(119)+acd317(120)+acd317(121)
      acd317(119)=acd317(119)*acd317(21)
      acd317(120)=acd317(17)*acd317(27)
      acd317(121)=acd317(4)*acd317(16)
      acd317(120)=acd317(120)+acd317(121)
      acd317(120)=acd317(120)*acd317(20)
      acd317(121)=acd317(17)*acd317(26)
      acd317(122)=acd317(4)*acd317(14)
      acd317(121)=acd317(121)+acd317(122)
      acd317(121)=acd317(121)*acd317(19)
      acd317(122)=acd317(17)*acd317(24)
      acd317(123)=acd317(4)*acd317(11)
      acd317(122)=acd317(122)+acd317(123)
      acd317(122)=acd317(122)*acd317(10)
      acd317(123)=acd317(6)+acd317(8)
      acd317(124)=acd317(123)*acd317(3)
      acd317(125)=acd317(4)*acd317(124)
      acd317(126)=acd317(123)*acd317(18)
      acd317(127)=acd317(17)*acd317(126)
      acd317(118)=acd317(28)+acd317(120)-acd317(125)+acd317(127)+acd317(121)+ac&
      &d317(122)+acd317(119)+acd317(118)
      acd317(119)=acd317(5)*acd317(118)
      acd317(120)=acd317(36)*acd317(37)
      acd317(121)=acd317(34)*acd317(35)
      acd317(122)=acd317(32)*acd317(33)
      acd317(120)=acd317(122)+acd317(120)+acd317(121)
      acd317(121)=acd317(19)*acd317(29)
      acd317(122)=acd317(20)*acd317(30)
      acd317(125)=acd317(10)*acd317(25)
      acd317(127)=acd317(123)*acd317(23)
      acd317(121)=acd317(120)+acd317(121)+acd317(122)+acd317(125)-acd317(127)
      acd317(122)=acd317(19)*acd317(26)
      acd317(125)=acd317(20)*acd317(27)
      acd317(127)=acd317(10)*acd317(24)
      acd317(122)=acd317(127)+acd317(122)+acd317(125)
      acd317(125)=acd317(2)*acd317(122)
      acd317(127)=acd317(2)*acd317(123)
      acd317(128)=acd317(127)*acd317(18)
      acd317(125)=acd317(31)+acd317(128)+acd317(125)
      acd317(128)=acd317(21)*acd317(125)
      acd317(129)=acd317(19)*acd317(14)
      acd317(130)=acd317(20)*acd317(16)
      acd317(131)=acd317(10)*acd317(11)
      acd317(129)=acd317(131)+acd317(129)+acd317(130)
      acd317(130)=acd317(21)*acd317(18)
      acd317(131)=acd317(1)*acd317(3)
      acd317(130)=acd317(129)-acd317(130)+acd317(131)
      acd317(130)=acd317(130)*acd317(2)
      acd317(127)=acd317(127)*acd317(3)
      acd317(127)=acd317(130)-acd317(127)+acd317(22)
      acd317(130)=acd317(1)*acd317(127)
      acd317(119)=acd317(119)+acd317(130)+acd317(128)+acd317(121)
      acd317(124)=acd317(124)-acd317(129)
      acd317(128)=acd317(124)*acd317(38)
      acd317(129)=acd317(49)*acd317(27)
      acd317(129)=acd317(129)+acd317(77)
      acd317(129)=acd317(129)*acd317(20)
      acd317(130)=acd317(49)*acd317(26)
      acd317(130)=acd317(130)+acd317(76)
      acd317(130)=acd317(130)*acd317(19)
      acd317(131)=acd317(49)*acd317(24)
      acd317(131)=acd317(131)+acd317(73)
      acd317(131)=acd317(131)*acd317(10)
      acd317(132)=acd317(49)*acd317(126)
      acd317(133)=acd317(43)+acd317(61)
      acd317(133)=acd317(133)*acd317(62)
      acd317(134)=acd317(85)*acd317(86)
      acd317(135)=acd317(83)*acd317(84)
      acd317(136)=acd317(63)*acd317(65)
      acd317(137)=acd317(36)*acd317(82)
      acd317(138)=acd317(34)*acd317(81)
      acd317(139)=acd317(32)*acd317(80)
      acd317(140)=acd317(55)*acd317(79)
      acd317(141)=acd317(123)*acd317(60)
      acd317(142)=2.0_ki*acd317(45)
      acd317(143)=acd317(142)*acd317(28)
      acd317(128)=acd317(129)+acd317(137)+acd317(138)+acd317(139)+acd317(140)+a&
      &cd317(130)+acd317(131)-acd317(141)+acd317(134)+acd317(143)-acd317(128)+a&
      &cd317(135)+acd317(136)+acd317(132)+acd317(133)
      acd317(129)=acd317(14)*acd317(47)
      acd317(130)=acd317(48)*acd317(16)
      acd317(131)=acd317(46)*acd317(11)
      acd317(132)=acd317(41)+acd317(42)
      acd317(133)=acd317(132)*acd317(3)
      acd317(129)=acd317(51)-acd317(133)+acd317(129)+acd317(130)+acd317(131)
      acd317(130)=acd317(18)*acd317(49)
      acd317(131)=acd317(38)*acd317(3)
      acd317(133)=-2.0_ki*acd317(131)+acd317(130)-acd317(129)
      acd317(134)=-acd317(1)*acd317(133)
      acd317(135)=acd317(26)*acd317(47)
      acd317(136)=acd317(48)*acd317(27)
      acd317(137)=acd317(46)*acd317(24)
      acd317(135)=acd317(136)+acd317(135)+acd317(137)+acd317(78)
      acd317(136)=acd317(132)-acd317(38)
      acd317(137)=acd317(136)*acd317(18)
      acd317(137)=acd317(137)+acd317(135)
      acd317(138)=acd317(21)*acd317(137)
      acd317(134)=acd317(134)+acd317(138)+acd317(128)
      acd317(134)=acd317(5)*acd317(134)
      acd317(138)=acd317(55)*acd317(56)
      acd317(139)=acd317(43)*acd317(44)
      acd317(138)=acd317(138)-acd317(139)
      acd317(139)=acd317(36)*acd317(59)
      acd317(140)=acd317(34)*acd317(58)
      acd317(141)=acd317(32)*acd317(57)
      acd317(143)=acd317(19)*acd317(52)
      acd317(144)=acd317(20)*acd317(53)
      acd317(145)=acd317(10)*acd317(50)
      acd317(146)=acd317(123)*acd317(40)
      acd317(147)=acd317(142)*acd317(22)
      acd317(139)=acd317(143)+acd317(144)+acd317(145)+acd317(146)+acd317(139)+a&
      &cd317(147)+acd317(138)+acd317(140)+acd317(141)
      acd317(124)=-acd317(39)*acd317(124)
      acd317(140)=-acd317(39)*acd317(18)
      acd317(140)=acd317(54)+acd317(140)
      acd317(140)=acd317(21)*acd317(140)
      acd317(141)=acd317(39)*acd317(3)
      acd317(141)=-acd317(40)+acd317(141)
      acd317(141)=acd317(1)*acd317(141)
      acd317(124)=acd317(141)+acd317(140)+acd317(124)+acd317(139)
      acd317(124)=acd317(1)*acd317(124)
      acd317(122)=acd317(126)+acd317(122)
      acd317(122)=acd317(39)*acd317(122)
      acd317(126)=-acd317(54)*acd317(123)
      acd317(140)=acd317(31)*acd317(142)
      acd317(141)=acd317(19)*acd317(87)
      acd317(143)=acd317(20)*acd317(89)
      acd317(144)=acd317(10)*acd317(74)
      acd317(122)=acd317(122)+acd317(144)+acd317(143)+acd317(140)+acd317(141)+a&
      &cd317(126)
      acd317(122)=acd317(21)*acd317(122)
      acd317(126)=acd317(63)*acd317(66)
      acd317(140)=acd317(55)*acd317(90)
      acd317(141)=acd317(43)*acd317(72)
      acd317(143)=acd317(30)*acd317(142)
      acd317(126)=acd317(143)+acd317(141)+acd317(126)+acd317(140)
      acd317(126)=acd317(20)*acd317(126)
      acd317(140)=acd317(63)*acd317(64)
      acd317(141)=acd317(55)*acd317(75)
      acd317(143)=acd317(43)*acd317(70)
      acd317(144)=acd317(25)*acd317(142)
      acd317(140)=acd317(144)+acd317(143)+acd317(140)+acd317(141)
      acd317(140)=acd317(10)*acd317(140)
      acd317(141)=acd317(36)*acd317(69)
      acd317(143)=acd317(34)*acd317(68)
      acd317(144)=acd317(32)*acd317(67)
      acd317(141)=acd317(144)+acd317(141)+acd317(143)
      acd317(143)=-acd317(43)-acd317(63)
      acd317(141)=acd317(141)*acd317(143)
      acd317(120)=acd317(120)*acd317(142)
      acd317(143)=acd317(55)*acd317(88)
      acd317(144)=acd317(43)*acd317(71)
      acd317(145)=acd317(29)*acd317(142)
      acd317(143)=acd317(145)+acd317(143)+acd317(144)
      acd317(143)=acd317(19)*acd317(143)
      acd317(144)=acd317(142)*acd317(23)
      acd317(138)=acd317(144)+acd317(138)
      acd317(138)=-acd317(138)*acd317(123)
      acd317(120)=acd317(134)+acd317(124)+acd317(122)+acd317(140)+acd317(126)+a&
      &cd317(143)+acd317(120)+acd317(138)+acd317(141)
      acd317(118)=ninjaP*acd317(118)
      acd317(122)=acd317(131)+acd317(129)
      acd317(122)=acd317(38)*acd317(122)
      acd317(124)=acd317(49)*acd317(135)
      acd317(126)=acd317(136)*acd317(130)
      acd317(129)=acd317(91)+acd317(99)
      acd317(129)=acd317(62)*acd317(129)
      acd317(130)=-acd317(60)*acd317(132)
      acd317(131)=acd317(86)*acd317(106)
      acd317(134)=acd317(84)*acd317(105)
      acd317(135)=acd317(96)*acd317(82)
      acd317(138)=acd317(95)*acd317(81)
      acd317(140)=acd317(94)*acd317(80)
      acd317(141)=acd317(101)*acd317(65)
      acd317(143)=acd317(93)*acd317(79)
      acd317(144)=acd317(92)*acd317(28)
      acd317(145)=acd317(47)*acd317(76)
      acd317(146)=acd317(48)*acd317(77)
      acd317(147)=acd317(46)*acd317(73)
      acd317(118)=acd317(126)+acd317(122)+acd317(124)+acd317(147)+acd317(146)+a&
      &cd317(145)+acd317(144)+acd317(143)+acd317(141)+acd317(140)+acd317(138)+a&
      &cd317(135)+acd317(134)+acd317(108)+acd317(131)+acd317(118)+acd317(130)+a&
      &cd317(129)
      acd317(118)=acd317(5)*acd317(118)
      acd317(122)=acd317(39)*acd317(128)
      acd317(124)=-acd317(39)*acd317(133)
      acd317(126)=acd317(56)*acd317(93)
      acd317(128)=acd317(91)*acd317(44)
      acd317(129)=acd317(49)*acd317(54)
      acd317(126)=acd317(129)+acd317(126)-acd317(128)
      acd317(127)=ninjaP*acd317(127)
      acd317(128)=-2.0_ki*acd317(38)+acd317(132)
      acd317(128)=acd317(40)*acd317(128)
      acd317(129)=acd317(96)*acd317(59)
      acd317(130)=acd317(95)*acd317(58)
      acd317(131)=acd317(94)*acd317(57)
      acd317(133)=acd317(92)*acd317(22)
      acd317(134)=acd317(47)*acd317(52)
      acd317(135)=acd317(48)*acd317(53)
      acd317(138)=acd317(46)*acd317(50)
      acd317(124)=acd317(124)+acd317(138)+acd317(135)+acd317(134)+acd317(133)+a&
      &cd317(131)+acd317(130)+acd317(97)+acd317(129)+acd317(127)+acd317(128)+ac&
      &d317(126)
      acd317(124)=acd317(1)*acd317(124)
      acd317(127)=acd317(38)*acd317(139)
      acd317(128)=-acd317(23)*acd317(132)
      acd317(129)=acd317(37)*acd317(96)
      acd317(130)=acd317(35)*acd317(95)
      acd317(131)=acd317(33)*acd317(94)
      acd317(133)=acd317(47)*acd317(29)
      acd317(134)=acd317(48)*acd317(30)
      acd317(135)=acd317(46)*acd317(25)
      acd317(138)=acd317(49)*acd317(31)
      acd317(128)=acd317(138)+acd317(135)+acd317(134)+acd317(133)+acd317(131)+a&
      &cd317(130)+acd317(104)+acd317(129)+acd317(128)
      acd317(128)=acd317(142)*acd317(128)
      acd317(125)=ninjaP*acd317(125)
      acd317(129)=acd317(39)*acd317(137)
      acd317(130)=-acd317(54)*acd317(136)
      acd317(131)=acd317(92)*acd317(31)
      acd317(133)=acd317(47)*acd317(87)
      acd317(134)=acd317(48)*acd317(89)
      acd317(135)=acd317(46)*acd317(74)
      acd317(125)=acd317(129)+acd317(125)+acd317(135)+acd317(134)+acd317(133)+a&
      &cd317(111)+acd317(131)+acd317(130)
      acd317(125)=acd317(21)*acd317(125)
      acd317(129)=acd317(69)*acd317(96)
      acd317(130)=acd317(68)*acd317(95)
      acd317(131)=acd317(67)*acd317(94)
      acd317(129)=acd317(131)+acd317(129)+acd317(130)
      acd317(130)=acd317(44)*acd317(132)
      acd317(131)=acd317(47)*acd317(71)
      acd317(133)=acd317(48)*acd317(72)
      acd317(134)=acd317(46)*acd317(70)
      acd317(130)=acd317(134)+acd317(133)+acd317(131)+acd317(103)+acd317(130)-a&
      &cd317(129)
      acd317(130)=acd317(43)*acd317(130)
      acd317(131)=acd317(101)*acd317(66)
      acd317(133)=acd317(93)*acd317(90)
      acd317(134)=acd317(91)*acd317(72)
      acd317(135)=acd317(92)*acd317(30)
      acd317(136)=acd317(49)*acd317(89)
      acd317(131)=acd317(136)+acd317(135)+acd317(134)+acd317(133)+acd317(110)+a&
      &cd317(131)
      acd317(131)=acd317(20)*acd317(131)
      acd317(133)=acd317(101)*acd317(64)
      acd317(134)=acd317(93)*acd317(75)
      acd317(135)=acd317(91)*acd317(70)
      acd317(136)=acd317(92)*acd317(25)
      acd317(137)=acd317(49)*acd317(74)
      acd317(133)=acd317(137)+acd317(136)+acd317(135)+acd317(134)+acd317(107)+a&
      &cd317(133)
      acd317(133)=acd317(10)*acd317(133)
      acd317(121)=ninjaP*acd317(121)
      acd317(132)=-acd317(56)*acd317(132)
      acd317(134)=acd317(47)*acd317(88)
      acd317(135)=acd317(48)*acd317(90)
      acd317(136)=acd317(46)*acd317(75)
      acd317(132)=acd317(136)+acd317(135)+acd317(112)+acd317(134)+acd317(132)
      acd317(132)=acd317(55)*acd317(132)
      acd317(134)=acd317(93)*acd317(88)
      acd317(135)=acd317(91)*acd317(71)
      acd317(136)=acd317(92)*acd317(29)
      acd317(137)=acd317(49)*acd317(87)
      acd317(134)=acd317(137)+acd317(136)+acd317(135)+acd317(109)+acd317(134)
      acd317(134)=acd317(19)*acd317(134)
      acd317(135)=acd317(92)*acd317(23)
      acd317(126)=acd317(135)+acd317(126)-acd317(98)
      acd317(123)=-acd317(126)*acd317(123)
      acd317(126)=acd317(48)*acd317(66)
      acd317(135)=acd317(46)*acd317(64)
      acd317(126)=acd317(135)+acd317(126)+acd317(102)-acd317(129)
      acd317(126)=acd317(63)*acd317(126)
      acd317(129)=acd317(91)+acd317(101)
      acd317(135)=-acd317(69)*acd317(129)
      acd317(136)=acd317(92)*acd317(37)
      acd317(135)=acd317(136)+acd317(115)+acd317(135)
      acd317(135)=acd317(36)*acd317(135)
      acd317(136)=-acd317(68)*acd317(129)
      acd317(137)=acd317(92)*acd317(35)
      acd317(136)=acd317(137)+acd317(114)+acd317(136)
      acd317(136)=acd317(34)*acd317(136)
      acd317(129)=-acd317(67)*acd317(129)
      acd317(137)=acd317(92)*acd317(33)
      acd317(129)=acd317(137)+acd317(113)+acd317(129)
      acd317(129)=acd317(32)*acd317(129)
      acd317(137)=acd317(85)*acd317(117)
      acd317(138)=acd317(83)*acd317(116)
      acd317(139)=acd317(61)*acd317(100)
      acd317(118)=acd317(118)+acd317(124)+acd317(125)+acd317(122)+acd317(121)+a&
      &cd317(127)+acd317(133)+acd317(131)+acd317(134)+acd317(130)+acd317(132)+a&
      &cd317(129)+acd317(136)+acd317(135)+acd317(139)+acd317(137)+acd317(138)+a&
      &cd317(126)+acd317(128)+acd317(123)
      brack(ninjaidxt1mu0)=acd317(120)
      brack(ninjaidxt0mu0)=acd317(118)
      brack(ninjaidxt0mu2)=acd317(119)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d317h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd317h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d317h1l131
