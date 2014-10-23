module     p0_dbaru_epnebbbarg_d87h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d87h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd87h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(57) :: acd87
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd87(1)=dotproduct(k1,ninjaE3)
      acd87(2)=dotproduct(ninjaE3,spval5k2)
      acd87(3)=abb87(26)
      acd87(4)=dotproduct(ninjaE3,spval6k2)
      acd87(5)=abb87(82)
      acd87(6)=dotproduct(k2,ninjaE3)
      acd87(7)=abb87(22)
      acd87(8)=abb87(63)
      acd87(9)=dotproduct(l5,ninjaE3)
      acd87(10)=abb87(33)
      acd87(11)=abb87(71)
      acd87(12)=dotproduct(l6,ninjaE3)
      acd87(13)=dotproduct(k7,ninjaE3)
      acd87(14)=abb87(31)
      acd87(15)=abb87(57)
      acd87(16)=dotproduct(ninjaE3,spvak1k2)
      acd87(17)=abb87(20)
      acd87(18)=abb87(40)
      acd87(19)=abb87(29)
      acd87(20)=abb87(21)
      acd87(21)=dotproduct(ninjaE3,spvak1l5)
      acd87(22)=abb87(54)
      acd87(23)=dotproduct(ninjaE3,spvak2k7)
      acd87(24)=abb87(47)
      acd87(25)=dotproduct(ninjaE3,spvak1k7)
      acd87(26)=abb87(38)
      acd87(27)=dotproduct(ninjaE3,spvak1k3)
      acd87(28)=abb87(73)
      acd87(29)=dotproduct(ninjaE3,spvak4k7)
      acd87(30)=abb87(48)
      acd87(31)=dotproduct(ninjaE3,spvak4k2)
      acd87(32)=abb87(60)
      acd87(33)=dotproduct(ninjaE3,spvak1l6)
      acd87(34)=abb87(67)
      acd87(35)=abb87(90)
      acd87(36)=abb87(32)
      acd87(37)=abb87(37)
      acd87(38)=abb87(51)
      acd87(39)=abb87(39)
      acd87(40)=abb87(45)
      acd87(41)=abb87(62)
      acd87(42)=abb87(66)
      acd87(43)=acd87(9)+acd87(12)
      acd87(44)=-acd87(10)*acd87(43)
      acd87(45)=acd87(33)*acd87(34)
      acd87(46)=acd87(31)*acd87(32)
      acd87(47)=acd87(29)*acd87(30)
      acd87(48)=acd87(27)*acd87(28)
      acd87(49)=acd87(25)*acd87(26)
      acd87(50)=acd87(23)*acd87(24)
      acd87(51)=acd87(21)*acd87(22)
      acd87(52)=acd87(16)*acd87(17)
      acd87(53)=acd87(13)*acd87(14)
      acd87(54)=acd87(6)*acd87(7)
      acd87(55)=acd87(1)*acd87(3)
      acd87(56)=acd87(4)*acd87(20)
      acd87(57)=acd87(2)*acd87(19)
      acd87(44)=acd87(57)+acd87(56)+acd87(55)+acd87(54)+acd87(53)+acd87(52)+acd&
      &87(51)+acd87(50)+acd87(49)+acd87(48)+acd87(47)+acd87(45)+acd87(46)+acd87&
      &(44)
      acd87(44)=acd87(2)*acd87(44)
      acd87(43)=-acd87(11)*acd87(43)
      acd87(45)=acd87(33)*acd87(42)
      acd87(46)=acd87(31)*acd87(41)
      acd87(47)=acd87(29)*acd87(40)
      acd87(48)=acd87(27)*acd87(39)
      acd87(49)=acd87(25)*acd87(38)
      acd87(50)=acd87(23)*acd87(37)
      acd87(51)=acd87(21)*acd87(36)
      acd87(52)=acd87(16)*acd87(18)
      acd87(53)=acd87(13)*acd87(15)
      acd87(54)=acd87(6)*acd87(8)
      acd87(55)=acd87(1)*acd87(5)
      acd87(56)=acd87(4)*acd87(35)
      acd87(43)=acd87(56)+acd87(55)+acd87(54)+acd87(53)+acd87(52)+acd87(51)+acd&
      &87(50)+acd87(49)+acd87(48)+acd87(47)+acd87(45)+acd87(46)+acd87(43)
      acd87(43)=acd87(4)*acd87(43)
      acd87(43)=acd87(43)+acd87(44)
      brack(ninjaidxt2mu0)=acd87(43)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd87h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(148) :: acd87
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd87(1)=dotproduct(k1,ninjaE3)
      acd87(2)=dotproduct(ninjaE4,spval5k2)
      acd87(3)=abb87(26)
      acd87(4)=dotproduct(ninjaE4,spval6k2)
      acd87(5)=abb87(82)
      acd87(6)=dotproduct(k1,ninjaE4)
      acd87(7)=dotproduct(ninjaE3,spval5k2)
      acd87(8)=dotproduct(ninjaE3,spval6k2)
      acd87(9)=dotproduct(k2,ninjaE3)
      acd87(10)=abb87(22)
      acd87(11)=abb87(63)
      acd87(12)=dotproduct(k2,ninjaE4)
      acd87(13)=dotproduct(l5,ninjaE3)
      acd87(14)=abb87(33)
      acd87(15)=abb87(71)
      acd87(16)=dotproduct(l5,ninjaE4)
      acd87(17)=dotproduct(l6,ninjaE3)
      acd87(18)=dotproduct(l6,ninjaE4)
      acd87(19)=dotproduct(k7,ninjaE3)
      acd87(20)=abb87(31)
      acd87(21)=abb87(57)
      acd87(22)=dotproduct(k7,ninjaE4)
      acd87(23)=dotproduct(ninjaE3,spvak1l5)
      acd87(24)=abb87(54)
      acd87(25)=abb87(32)
      acd87(26)=dotproduct(ninjaE3,spvak1k2)
      acd87(27)=abb87(20)
      acd87(28)=abb87(40)
      acd87(29)=dotproduct(ninjaE4,spvak1l5)
      acd87(30)=dotproduct(ninjaE4,spvak1k2)
      acd87(31)=abb87(29)
      acd87(32)=abb87(21)
      acd87(33)=dotproduct(ninjaE4,spvak1k3)
      acd87(34)=abb87(73)
      acd87(35)=dotproduct(ninjaE4,spvak1k7)
      acd87(36)=abb87(38)
      acd87(37)=dotproduct(ninjaE4,spvak2k7)
      acd87(38)=abb87(47)
      acd87(39)=dotproduct(ninjaE4,spvak1l6)
      acd87(40)=abb87(67)
      acd87(41)=dotproduct(ninjaE4,spvak4k7)
      acd87(42)=abb87(48)
      acd87(43)=dotproduct(ninjaE4,spvak4k2)
      acd87(44)=abb87(60)
      acd87(45)=abb87(90)
      acd87(46)=abb87(39)
      acd87(47)=abb87(51)
      acd87(48)=abb87(37)
      acd87(49)=abb87(66)
      acd87(50)=abb87(45)
      acd87(51)=abb87(62)
      acd87(52)=dotproduct(ninjaE3,spvak1k3)
      acd87(53)=dotproduct(ninjaE3,spvak1k7)
      acd87(54)=dotproduct(ninjaE3,spvak2k7)
      acd87(55)=dotproduct(ninjaE3,spvak1l6)
      acd87(56)=dotproduct(ninjaE3,spvak4k7)
      acd87(57)=dotproduct(ninjaE3,spvak4k2)
      acd87(58)=abb87(50)
      acd87(59)=dotproduct(k1,ninjaA)
      acd87(60)=dotproduct(ninjaA,spval5k2)
      acd87(61)=dotproduct(ninjaA,spval6k2)
      acd87(62)=abb87(18)
      acd87(63)=dotproduct(k2,ninjaA)
      acd87(64)=abb87(43)
      acd87(65)=dotproduct(l5,ninjaA)
      acd87(66)=abb87(35)
      acd87(67)=dotproduct(l6,ninjaA)
      acd87(68)=abb87(92)
      acd87(69)=dotproduct(k7,ninjaA)
      acd87(70)=abb87(68)
      acd87(71)=dotproduct(ninjaA,ninjaE3)
      acd87(72)=dotproduct(ninjaA,spvak1l5)
      acd87(73)=dotproduct(ninjaA,spvak1k2)
      acd87(74)=dotproduct(ninjaA,spvak1k3)
      acd87(75)=dotproduct(ninjaA,spvak1k7)
      acd87(76)=dotproduct(ninjaA,spvak2k7)
      acd87(77)=dotproduct(ninjaA,spvak1l6)
      acd87(78)=dotproduct(ninjaA,spvak4k7)
      acd87(79)=dotproduct(ninjaA,spvak4k2)
      acd87(80)=abb87(19)
      acd87(81)=abb87(23)
      acd87(82)=abb87(24)
      acd87(83)=abb87(53)
      acd87(84)=abb87(25)
      acd87(85)=abb87(28)
      acd87(86)=dotproduct(ninjaE3,spval5k1)
      acd87(87)=abb87(30)
      acd87(88)=dotproduct(ninjaE3,spval6l5)
      acd87(89)=abb87(34)
      acd87(90)=abb87(36)
      acd87(91)=abb87(42)
      acd87(92)=abb87(44)
      acd87(93)=abb87(49)
      acd87(94)=dotproduct(ninjaE3,spval6k3)
      acd87(95)=abb87(52)
      acd87(96)=dotproduct(ninjaE3,spval5k7)
      acd87(97)=abb87(56)
      acd87(98)=dotproduct(ninjaE3,spvak7k2)
      acd87(99)=abb87(58)
      acd87(100)=dotproduct(ninjaE3,spval6k1)
      acd87(101)=abb87(72)
      acd87(102)=dotproduct(ninjaE3,spval5l6)
      acd87(103)=abb87(85)
      acd87(104)=dotproduct(ninjaE3,spval6k7)
      acd87(105)=abb87(100)
      acd87(106)=dotproduct(ninjaE3,spval5k3)
      acd87(107)=abb87(107)
      acd87(108)=dotproduct(ninjaA,ninjaA)
      acd87(109)=dotproduct(ninjaA,spval5k1)
      acd87(110)=dotproduct(ninjaA,spval6l5)
      acd87(111)=dotproduct(ninjaA,spval6k3)
      acd87(112)=dotproduct(ninjaA,spval5k7)
      acd87(113)=dotproduct(ninjaA,spvak7k2)
      acd87(114)=dotproduct(ninjaA,spval6k1)
      acd87(115)=dotproduct(ninjaA,spval5l6)
      acd87(116)=dotproduct(ninjaA,spval6k7)
      acd87(117)=dotproduct(ninjaA,spval5k3)
      acd87(118)=abb87(27)
      acd87(119)=acd87(44)*acd87(43)
      acd87(120)=acd87(42)*acd87(41)
      acd87(121)=acd87(40)*acd87(39)
      acd87(122)=acd87(38)*acd87(37)
      acd87(123)=acd87(36)*acd87(35)
      acd87(124)=acd87(34)*acd87(33)
      acd87(125)=acd87(27)*acd87(30)
      acd87(126)=acd87(24)*acd87(29)
      acd87(127)=acd87(20)*acd87(22)
      acd87(128)=acd87(10)*acd87(12)
      acd87(129)=acd87(3)*acd87(6)
      acd87(130)=acd87(4)*acd87(32)
      acd87(131)=acd87(16)+acd87(18)
      acd87(132)=acd87(131)*acd87(14)
      acd87(133)=2.0_ki*acd87(31)
      acd87(134)=acd87(133)*acd87(2)
      acd87(119)=acd87(122)+acd87(123)+acd87(124)+acd87(125)+acd87(119)+acd87(1&
      &30)-acd87(132)+acd87(120)+acd87(121)+acd87(134)+acd87(126)+acd87(127)+ac&
      &d87(128)+acd87(129)
      acd87(119)=acd87(119)*acd87(7)
      acd87(120)=acd87(51)*acd87(43)
      acd87(121)=acd87(50)*acd87(41)
      acd87(122)=acd87(49)*acd87(39)
      acd87(123)=acd87(48)*acd87(37)
      acd87(124)=acd87(47)*acd87(35)
      acd87(125)=acd87(46)*acd87(33)
      acd87(126)=acd87(28)*acd87(30)
      acd87(127)=acd87(25)*acd87(29)
      acd87(128)=acd87(21)*acd87(22)
      acd87(129)=acd87(11)*acd87(12)
      acd87(130)=acd87(5)*acd87(6)
      acd87(132)=acd87(2)*acd87(32)
      acd87(131)=acd87(131)*acd87(15)
      acd87(134)=2.0_ki*acd87(45)
      acd87(135)=acd87(134)*acd87(4)
      acd87(120)=acd87(123)+acd87(124)+acd87(125)+acd87(126)+acd87(120)+acd87(1&
      &32)-acd87(131)+acd87(121)+acd87(122)+acd87(135)+acd87(127)+acd87(128)+ac&
      &d87(129)+acd87(130)
      acd87(120)=acd87(120)*acd87(8)
      acd87(121)=acd87(51)*acd87(57)
      acd87(122)=acd87(50)*acd87(56)
      acd87(123)=acd87(49)*acd87(55)
      acd87(124)=acd87(48)*acd87(54)
      acd87(125)=acd87(47)*acd87(53)
      acd87(126)=acd87(46)*acd87(52)
      acd87(127)=acd87(26)*acd87(28)
      acd87(128)=acd87(23)*acd87(25)
      acd87(129)=acd87(13)+acd87(17)
      acd87(130)=acd87(129)*acd87(15)
      acd87(131)=acd87(19)*acd87(21)
      acd87(132)=acd87(9)*acd87(11)
      acd87(135)=acd87(1)*acd87(5)
      acd87(121)=acd87(131)-acd87(130)+acd87(128)+acd87(127)+acd87(126)+acd87(1&
      &25)+acd87(124)+acd87(123)+acd87(121)+acd87(122)+acd87(132)+acd87(135)
      acd87(122)=acd87(121)*acd87(4)
      acd87(123)=acd87(44)*acd87(57)
      acd87(124)=acd87(42)*acd87(56)
      acd87(125)=acd87(40)*acd87(55)
      acd87(126)=acd87(38)*acd87(54)
      acd87(127)=acd87(36)*acd87(53)
      acd87(128)=acd87(34)*acd87(52)
      acd87(130)=acd87(26)*acd87(27)
      acd87(129)=acd87(129)*acd87(14)
      acd87(131)=acd87(23)*acd87(24)
      acd87(132)=acd87(19)*acd87(20)
      acd87(135)=acd87(9)*acd87(10)
      acd87(136)=acd87(1)*acd87(3)
      acd87(123)=acd87(136)+acd87(135)+acd87(132)+acd87(131)-acd87(129)+acd87(1&
      &30)+acd87(128)+acd87(127)+acd87(126)+acd87(123)+acd87(124)+acd87(125)
      acd87(124)=acd87(123)*acd87(2)
      acd87(119)=acd87(58)+acd87(122)+acd87(124)+acd87(119)+acd87(120)
      acd87(120)=acd87(44)*acd87(79)
      acd87(122)=acd87(42)*acd87(78)
      acd87(124)=acd87(40)*acd87(77)
      acd87(125)=acd87(38)*acd87(76)
      acd87(126)=acd87(36)*acd87(75)
      acd87(127)=acd87(34)*acd87(74)
      acd87(128)=acd87(27)*acd87(73)
      acd87(129)=acd87(24)*acd87(72)
      acd87(130)=acd87(20)*acd87(69)
      acd87(131)=acd87(10)*acd87(63)
      acd87(132)=acd87(3)*acd87(59)
      acd87(135)=acd87(61)*acd87(32)
      acd87(136)=acd87(65)+acd87(67)
      acd87(137)=acd87(136)*acd87(14)
      acd87(120)=acd87(125)+acd87(126)+acd87(127)+acd87(128)+acd87(120)+acd87(1&
      &35)-acd87(137)+acd87(122)+acd87(124)+acd87(82)+acd87(129)+acd87(130)+acd&
      &87(131)+acd87(132)
      acd87(122)=acd87(60)*acd87(133)
      acd87(122)=acd87(122)+acd87(120)
      acd87(122)=acd87(7)*acd87(122)
      acd87(121)=acd87(61)*acd87(121)
      acd87(123)=acd87(60)*acd87(123)
      acd87(124)=acd87(51)*acd87(79)
      acd87(125)=acd87(50)*acd87(78)
      acd87(126)=acd87(49)*acd87(77)
      acd87(127)=acd87(48)*acd87(76)
      acd87(128)=acd87(47)*acd87(75)
      acd87(129)=acd87(46)*acd87(74)
      acd87(130)=acd87(28)*acd87(73)
      acd87(131)=acd87(25)*acd87(72)
      acd87(132)=acd87(21)*acd87(69)
      acd87(133)=acd87(11)*acd87(63)
      acd87(135)=acd87(5)*acd87(59)
      acd87(136)=acd87(136)*acd87(15)
      acd87(124)=acd87(131)+acd87(132)+acd87(133)+acd87(135)+acd87(127)+acd87(1&
      &28)+acd87(129)+acd87(130)+acd87(124)-acd87(136)+acd87(83)+acd87(125)+acd&
      &87(126)
      acd87(125)=acd87(61)*acd87(134)
      acd87(126)=acd87(60)*acd87(32)
      acd87(125)=acd87(126)+acd87(125)+acd87(124)
      acd87(125)=acd87(8)*acd87(125)
      acd87(126)=acd87(107)*acd87(106)
      acd87(127)=acd87(105)*acd87(104)
      acd87(128)=acd87(103)*acd87(102)
      acd87(129)=acd87(101)*acd87(100)
      acd87(130)=acd87(99)*acd87(98)
      acd87(131)=acd87(97)*acd87(96)
      acd87(132)=acd87(95)*acd87(94)
      acd87(133)=acd87(89)*acd87(88)
      acd87(134)=acd87(87)*acd87(86)
      acd87(135)=acd87(58)*acd87(71)
      acd87(136)=acd87(57)*acd87(93)
      acd87(137)=acd87(56)*acd87(92)
      acd87(138)=acd87(55)*acd87(91)
      acd87(139)=acd87(54)*acd87(90)
      acd87(140)=acd87(53)*acd87(85)
      acd87(141)=acd87(52)*acd87(84)
      acd87(142)=acd87(26)*acd87(81)
      acd87(143)=acd87(23)*acd87(80)
      acd87(144)=acd87(19)*acd87(70)
      acd87(145)=acd87(17)*acd87(68)
      acd87(146)=acd87(13)*acd87(66)
      acd87(147)=acd87(9)*acd87(64)
      acd87(148)=acd87(1)*acd87(62)
      acd87(121)=acd87(122)+acd87(125)+acd87(123)+acd87(121)+acd87(148)+acd87(1&
      &47)+acd87(146)+acd87(145)+acd87(144)+acd87(143)+acd87(142)+acd87(141)+ac&
      &d87(140)+acd87(139)+acd87(138)+acd87(137)+acd87(136)+2.0_ki*acd87(135)+a&
      &cd87(134)+acd87(133)+acd87(132)+acd87(131)+acd87(130)+acd87(129)+acd87(1&
      &28)+acd87(126)+acd87(127)
      acd87(122)=ninjaP*acd87(119)
      acd87(123)=acd87(60)*acd87(31)
      acd87(120)=acd87(123)+acd87(120)
      acd87(120)=acd87(60)*acd87(120)
      acd87(123)=acd87(61)*acd87(45)
      acd87(123)=acd87(123)+acd87(124)
      acd87(123)=acd87(61)*acd87(123)
      acd87(124)=acd87(107)*acd87(117)
      acd87(125)=acd87(105)*acd87(116)
      acd87(126)=acd87(103)*acd87(115)
      acd87(127)=acd87(101)*acd87(114)
      acd87(128)=acd87(99)*acd87(113)
      acd87(129)=acd87(97)*acd87(112)
      acd87(130)=acd87(95)*acd87(111)
      acd87(131)=acd87(89)*acd87(110)
      acd87(132)=acd87(87)*acd87(109)
      acd87(133)=acd87(58)*acd87(108)
      acd87(134)=acd87(79)*acd87(93)
      acd87(135)=acd87(78)*acd87(92)
      acd87(136)=acd87(77)*acd87(91)
      acd87(137)=acd87(76)*acd87(90)
      acd87(138)=acd87(75)*acd87(85)
      acd87(139)=acd87(74)*acd87(84)
      acd87(140)=acd87(73)*acd87(81)
      acd87(141)=acd87(72)*acd87(80)
      acd87(142)=acd87(69)*acd87(70)
      acd87(143)=acd87(67)*acd87(68)
      acd87(144)=acd87(65)*acd87(66)
      acd87(145)=acd87(63)*acd87(64)
      acd87(146)=acd87(59)*acd87(62)
      acd87(120)=acd87(122)+acd87(120)+acd87(123)+acd87(146)+acd87(145)+acd87(1&
      &44)+acd87(143)+acd87(142)+acd87(141)+acd87(140)+acd87(139)+acd87(138)+ac&
      &d87(137)+acd87(136)+acd87(135)+acd87(134)+acd87(133)+acd87(132)+acd87(13&
      &1)+acd87(130)+acd87(129)+acd87(128)+acd87(127)+acd87(126)+acd87(125)+acd&
      &87(118)+acd87(124)
      brack(ninjaidxt1mu0)=acd87(121)
      brack(ninjaidxt0mu0)=acd87(120)
      brack(ninjaidxt0mu2)=acd87(119)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d87h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd87h0
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
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d87h0l131
