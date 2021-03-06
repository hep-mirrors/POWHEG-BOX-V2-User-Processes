module     p0_dbaru_epnebbbarg_d71h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d71h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd71h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd71
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd71(1)=dotproduct(ninjaE3,spvak1k2)
      acd71(2)=dotproduct(ninjaE3,spvak2l5)
      acd71(3)=dotproduct(ninjaE3,spvak2k7)
      acd71(4)=dotproduct(ninjaE3,spvak4k3)
      acd71(5)=abb71(68)
      acd71(6)=dotproduct(ninjaE3,spvak2l6)
      acd71(7)=abb71(80)
      acd71(8)=acd71(5)*acd71(2)
      acd71(9)=acd71(7)*acd71(6)
      acd71(8)=acd71(8)+acd71(9)
      acd71(8)=acd71(1)*acd71(8)*acd71(4)*acd71(3)
      brack(ninjaidxt2mu0)=acd71(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd71h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(149) :: acd71
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd71(1)=dotproduct(k2,ninjaE3)
      acd71(2)=dotproduct(ninjaE3,spvak2l6)
      acd71(3)=abb71(86)
      acd71(4)=dotproduct(ninjaE3,spvak4k3)
      acd71(5)=abb71(41)
      acd71(6)=dotproduct(ninjaE3,spvak2l5)
      acd71(7)=abb71(62)
      acd71(8)=dotproduct(ninjaE3,spvak2k7)
      acd71(9)=abb71(23)
      acd71(10)=dotproduct(ninjaE4,spvak1k2)
      acd71(11)=abb71(80)
      acd71(12)=dotproduct(ninjaE3,spvak1k2)
      acd71(13)=dotproduct(ninjaE4,spvak2k7)
      acd71(14)=abb71(37)
      acd71(15)=dotproduct(ninjaE4,spvak4k3)
      acd71(16)=abb71(99)
      acd71(17)=dotproduct(ninjaE3,spvak1k3)
      acd71(18)=abb71(24)
      acd71(19)=dotproduct(ninjaE3,spvak4k2)
      acd71(20)=abb71(88)
      acd71(21)=abb71(68)
      acd71(22)=abb71(39)
      acd71(23)=dotproduct(ninjaE4,spvak2l6)
      acd71(24)=dotproduct(ninjaE4,spvak2l5)
      acd71(25)=abb71(21)
      acd71(26)=abb71(34)
      acd71(27)=abb71(26)
      acd71(28)=abb71(50)
      acd71(29)=dotproduct(k3,ninjaE3)
      acd71(30)=abb71(47)
      acd71(31)=dotproduct(k4,ninjaE3)
      acd71(32)=dotproduct(k7,ninjaE3)
      acd71(33)=abb71(101)
      acd71(34)=abb71(83)
      acd71(35)=dotproduct(ninjaA,ninjaE3)
      acd71(36)=abb71(69)
      acd71(37)=abb71(91)
      acd71(38)=abb71(19)
      acd71(39)=dotproduct(l5,ninjaE3)
      acd71(40)=abb71(67)
      acd71(41)=dotproduct(l6,ninjaE3)
      acd71(42)=abb71(79)
      acd71(43)=abb71(70)
      acd71(44)=abb71(43)
      acd71(45)=abb71(22)
      acd71(46)=dotproduct(ninjaA,spvak2l6)
      acd71(47)=dotproduct(ninjaA,spvak4k3)
      acd71(48)=dotproduct(ninjaA,spvak2l5)
      acd71(49)=dotproduct(ninjaA,spvak2k7)
      acd71(50)=dotproduct(ninjaA,spvak1k2)
      acd71(51)=abb71(103)
      acd71(52)=dotproduct(ninjaE3,spvak1k7)
      acd71(53)=abb71(53)
      acd71(54)=abb71(76)
      acd71(55)=abb71(55)
      acd71(56)=abb71(16)
      acd71(57)=dotproduct(ninjaE3,spvak7k2)
      acd71(58)=abb71(20)
      acd71(59)=abb71(64)
      acd71(60)=dotproduct(ninjaE3,spval5k2)
      acd71(61)=abb71(71)
      acd71(62)=dotproduct(ninjaE3,spval6k2)
      acd71(63)=abb71(49)
      acd71(64)=abb71(28)
      acd71(65)=abb71(15)
      acd71(66)=abb71(42)
      acd71(67)=dotproduct(k2,ninjaA)
      acd71(68)=dotproduct(k3,ninjaA)
      acd71(69)=abb71(18)
      acd71(70)=dotproduct(k4,ninjaA)
      acd71(71)=dotproduct(k7,ninjaA)
      acd71(72)=abb71(32)
      acd71(73)=dotproduct(ninjaA,ninjaA)
      acd71(74)=abb71(31)
      acd71(75)=abb71(58)
      acd71(76)=abb71(29)
      acd71(77)=abb71(82)
      acd71(78)=abb71(40)
      acd71(79)=abb71(95)
      acd71(80)=abb71(59)
      acd71(81)=dotproduct(l5,ninjaA)
      acd71(82)=abb71(27)
      acd71(83)=abb71(74)
      acd71(84)=abb71(78)
      acd71(85)=abb71(75)
      acd71(86)=dotproduct(l6,ninjaA)
      acd71(87)=abb71(73)
      acd71(88)=dotproduct(ninjaA,spvak1k3)
      acd71(89)=dotproduct(ninjaA,spvak4k2)
      acd71(90)=abb71(92)
      acd71(91)=abb71(30)
      acd71(92)=abb71(54)
      acd71(93)=abb71(66)
      acd71(94)=abb71(25)
      acd71(95)=abb71(77)
      acd71(96)=abb71(36)
      acd71(97)=abb71(33)
      acd71(98)=abb71(48)
      acd71(99)=abb71(52)
      acd71(100)=abb71(57)
      acd71(101)=dotproduct(ninjaA,spvak1k7)
      acd71(102)=dotproduct(ninjaA,spval5k2)
      acd71(103)=dotproduct(ninjaA,spval6k2)
      acd71(104)=dotproduct(ninjaA,spvak7k2)
      acd71(105)=abb71(9)
      acd71(106)=abb71(45)
      acd71(107)=abb71(72)
      acd71(108)=abb71(44)
      acd71(109)=abb71(90)
      acd71(110)=abb71(35)
      acd71(111)=abb71(17)
      acd71(112)=abb71(56)
      acd71(113)=abb71(13)
      acd71(114)=abb71(14)
      acd71(115)=abb71(60)
      acd71(116)=abb71(63)
      acd71(117)=abb71(38)
      acd71(118)=abb71(51)
      acd71(119)=acd71(21)*acd71(24)
      acd71(120)=acd71(11)*acd71(23)
      acd71(119)=acd71(119)+acd71(120)
      acd71(119)=acd71(119)*acd71(12)
      acd71(120)=acd71(25)+acd71(119)
      acd71(120)=acd71(4)*acd71(120)
      acd71(121)=acd71(12)*acd71(21)
      acd71(122)=acd71(121)*acd71(15)
      acd71(123)=acd71(4)*acd71(10)
      acd71(124)=acd71(123)*acd71(21)
      acd71(122)=acd71(26)+acd71(122)+acd71(124)
      acd71(124)=acd71(6)*acd71(122)
      acd71(125)=acd71(12)*acd71(11)
      acd71(126)=acd71(125)*acd71(15)
      acd71(123)=acd71(123)*acd71(11)
      acd71(123)=acd71(126)+acd71(123)+acd71(16)
      acd71(126)=acd71(2)*acd71(123)
      acd71(127)=acd71(1)*acd71(9)
      acd71(120)=acd71(126)+acd71(124)+acd71(127)+acd71(120)
      acd71(120)=acd71(8)*acd71(120)
      acd71(124)=acd71(19)*acd71(28)
      acd71(126)=acd71(17)*acd71(27)
      acd71(127)=acd71(1)*acd71(7)
      acd71(124)=acd71(127)+acd71(124)+acd71(126)
      acd71(126)=acd71(121)*acd71(13)
      acd71(126)=acd71(126)+acd71(22)
      acd71(127)=acd71(4)*acd71(126)
      acd71(127)=acd71(127)+acd71(124)
      acd71(127)=acd71(6)*acd71(127)
      acd71(128)=acd71(19)*acd71(20)
      acd71(129)=acd71(17)*acd71(18)
      acd71(130)=acd71(1)*acd71(3)
      acd71(128)=acd71(130)+acd71(128)+acd71(129)
      acd71(129)=acd71(125)*acd71(13)
      acd71(129)=acd71(129)+acd71(14)
      acd71(130)=acd71(4)*acd71(129)
      acd71(130)=acd71(130)+acd71(128)
      acd71(130)=acd71(2)*acd71(130)
      acd71(131)=acd71(5)*acd71(4)*acd71(1)
      acd71(120)=acd71(120)+acd71(130)+acd71(131)+acd71(127)
      acd71(127)=acd71(7)*acd71(57)
      acd71(130)=acd71(52)*acd71(65)
      acd71(127)=acd71(127)-acd71(130)
      acd71(130)=acd71(29)+acd71(31)
      acd71(132)=acd71(130)+acd71(32)
      acd71(132)=acd71(132)*acd71(38)
      acd71(133)=acd71(19)*acd71(66)
      acd71(134)=acd71(17)*acd71(64)
      acd71(135)=acd71(121)*acd71(47)
      acd71(132)=acd71(134)+acd71(132)+acd71(133)+acd71(135)-acd71(127)
      acd71(133)=2.0_ki*acd71(35)
      acd71(134)=acd71(26)*acd71(133)
      acd71(135)=acd71(21)*acd71(50)
      acd71(135)=acd71(135)+acd71(58)
      acd71(136)=acd71(4)*acd71(135)
      acd71(134)=acd71(136)+acd71(134)+acd71(132)
      acd71(134)=acd71(6)*acd71(134)
      acd71(136)=acd71(37)*acd71(130)
      acd71(137)=acd71(3)*acd71(57)
      acd71(138)=acd71(52)*acd71(55)
      acd71(136)=-acd71(137)+acd71(138)+acd71(136)
      acd71(137)=acd71(19)*acd71(56)
      acd71(138)=acd71(17)*acd71(54)
      acd71(139)=acd71(32)*acd71(37)
      acd71(140)=acd71(125)*acd71(47)
      acd71(137)=acd71(137)+acd71(140)+acd71(136)+acd71(138)+acd71(139)
      acd71(138)=acd71(16)*acd71(133)
      acd71(139)=acd71(11)*acd71(50)
      acd71(139)=acd71(139)+acd71(51)
      acd71(140)=acd71(4)*acd71(139)
      acd71(138)=acd71(140)+acd71(138)+acd71(137)
      acd71(138)=acd71(2)*acd71(138)
      acd71(140)=acd71(48)*acd71(21)
      acd71(141)=acd71(46)*acd71(11)
      acd71(140)=acd71(140)+acd71(141)
      acd71(140)=acd71(140)*acd71(12)
      acd71(141)=acd71(39)+acd71(41)
      acd71(142)=acd71(141)*acd71(40)
      acd71(143)=acd71(62)*acd71(63)
      acd71(144)=acd71(60)*acd71(61)
      acd71(140)=acd71(140)-acd71(142)+acd71(143)+acd71(144)
      acd71(142)=acd71(1)*acd71(36)
      acd71(143)=acd71(25)*acd71(133)
      acd71(142)=acd71(143)+acd71(142)+acd71(140)
      acd71(142)=acd71(4)*acd71(142)
      acd71(143)=acd71(32)*acd71(30)
      acd71(144)=acd71(30)*acd71(130)
      acd71(143)=acd71(143)+acd71(144)
      acd71(145)=acd71(9)*acd71(133)
      acd71(145)=acd71(143)+acd71(145)
      acd71(145)=acd71(1)*acd71(145)
      acd71(134)=acd71(138)+acd71(134)+acd71(142)+acd71(145)
      acd71(134)=acd71(8)*acd71(134)
      acd71(138)=acd71(19)*acd71(45)
      acd71(142)=acd71(17)*acd71(44)
      acd71(145)=acd71(1)*acd71(34)
      acd71(138)=acd71(145)+acd71(138)+acd71(142)
      acd71(138)=acd71(32)*acd71(138)
      acd71(124)=acd71(124)*acd71(133)
      acd71(142)=acd71(52)*acd71(59)
      acd71(121)=acd71(49)*acd71(121)
      acd71(145)=acd71(22)*acd71(133)
      acd71(121)=acd71(145)+acd71(142)+acd71(121)
      acd71(121)=acd71(4)*acd71(121)
      acd71(121)=acd71(121)+acd71(124)+acd71(138)
      acd71(121)=acd71(6)*acd71(121)
      acd71(124)=acd71(19)*acd71(43)
      acd71(138)=acd71(17)*acd71(42)
      acd71(145)=acd71(1)*acd71(33)
      acd71(124)=acd71(145)+acd71(124)+acd71(138)
      acd71(124)=acd71(32)*acd71(124)
      acd71(128)=acd71(128)*acd71(133)
      acd71(138)=acd71(52)*acd71(53)
      acd71(125)=acd71(49)*acd71(125)
      acd71(145)=acd71(14)*acd71(133)
      acd71(125)=acd71(145)+acd71(138)+acd71(125)
      acd71(125)=acd71(4)*acd71(125)
      acd71(124)=acd71(125)+acd71(128)+acd71(124)
      acd71(124)=acd71(2)*acd71(124)
      acd71(125)=acd71(133)*acd71(131)
      acd71(121)=acd71(134)+acd71(124)+acd71(125)+acd71(121)
      acd71(119)=ninjaP*acd71(119)
      acd71(124)=ninjaP+acd71(73)
      acd71(125)=acd71(25)*acd71(124)
      acd71(128)=acd71(63)*acd71(103)
      acd71(131)=acd71(61)*acd71(102)
      acd71(134)=-acd71(86)-acd71(81)
      acd71(134)=acd71(40)*acd71(134)
      acd71(145)=acd71(67)*acd71(36)
      acd71(146)=acd71(48)*acd71(135)
      acd71(147)=acd71(46)*acd71(139)
      acd71(119)=acd71(119)+acd71(147)+acd71(146)+acd71(145)+acd71(134)+acd71(1&
      &28)+acd71(131)+acd71(125)
      acd71(119)=acd71(4)*acd71(119)
      acd71(122)=ninjaP*acd71(122)
      acd71(125)=acd71(65)*acd71(101)
      acd71(128)=acd71(89)*acd71(66)
      acd71(131)=acd71(88)*acd71(64)
      acd71(134)=-acd71(7)*acd71(104)
      acd71(145)=acd71(70)+acd71(71)+acd71(68)
      acd71(146)=acd71(38)*acd71(145)
      acd71(147)=acd71(73)*acd71(26)
      acd71(148)=acd71(47)*acd71(135)
      acd71(122)=acd71(148)+acd71(147)+acd71(146)+acd71(134)+acd71(131)+acd71(1&
      &28)+acd71(113)+acd71(125)+acd71(122)
      acd71(122)=acd71(6)*acd71(122)
      acd71(123)=ninjaP*acd71(123)
      acd71(125)=acd71(55)*acd71(101)
      acd71(128)=acd71(89)*acd71(56)
      acd71(131)=acd71(88)*acd71(54)
      acd71(134)=-acd71(3)*acd71(104)
      acd71(146)=acd71(37)*acd71(145)
      acd71(147)=acd71(73)*acd71(16)
      acd71(148)=acd71(47)*acd71(139)
      acd71(123)=acd71(148)+acd71(147)+acd71(146)+acd71(134)+acd71(131)+acd71(1&
      &28)+acd71(106)+acd71(125)+acd71(123)
      acd71(123)=acd71(2)*acd71(123)
      acd71(125)=acd71(47)*acd71(140)
      acd71(128)=acd71(67)*acd71(9)
      acd71(131)=acd71(48)*acd71(26)
      acd71(134)=acd71(47)*acd71(25)
      acd71(146)=acd71(46)*acd71(16)
      acd71(128)=acd71(146)+acd71(134)+acd71(131)+acd71(98)+acd71(128)
      acd71(128)=acd71(128)*acd71(133)
      acd71(131)=acd71(46)*acd71(136)
      acd71(134)=acd71(30)*acd71(67)
      acd71(136)=acd71(48)*acd71(38)
      acd71(146)=acd71(46)*acd71(37)
      acd71(134)=acd71(146)+acd71(134)+acd71(136)
      acd71(134)=acd71(32)*acd71(134)
      acd71(136)=acd71(9)*acd71(124)
      acd71(145)=acd71(30)*acd71(145)
      acd71(146)=acd71(47)*acd71(36)
      acd71(136)=acd71(146)+acd71(78)+acd71(145)+acd71(136)
      acd71(136)=acd71(1)*acd71(136)
      acd71(145)=acd71(38)*acd71(130)
      acd71(127)=-acd71(127)+acd71(145)
      acd71(127)=acd71(48)*acd71(127)
      acd71(145)=acd71(48)*acd71(66)
      acd71(146)=acd71(46)*acd71(56)
      acd71(145)=acd71(145)+acd71(146)
      acd71(145)=acd71(19)*acd71(145)
      acd71(146)=acd71(48)*acd71(64)
      acd71(147)=acd71(46)*acd71(54)
      acd71(146)=acd71(146)+acd71(147)
      acd71(146)=acd71(17)*acd71(146)
      acd71(147)=-acd71(85)*acd71(141)
      acd71(144)=acd71(67)*acd71(144)
      acd71(148)=acd71(62)*acd71(118)
      acd71(149)=acd71(60)*acd71(117)
      acd71(119)=acd71(123)+acd71(122)+acd71(119)+acd71(128)+acd71(136)+acd71(1&
      &34)+acd71(146)+acd71(145)+acd71(131)+acd71(127)+acd71(148)+acd71(149)+ac&
      &d71(144)+acd71(147)+acd71(125)
      acd71(119)=acd71(8)*acd71(119)
      acd71(122)=acd71(49)*acd71(132)
      acd71(123)=acd71(28)*acd71(89)
      acd71(125)=acd71(27)*acd71(88)
      acd71(127)=acd71(7)*acd71(67)
      acd71(128)=acd71(47)*acd71(22)
      acd71(131)=acd71(49)*acd71(26)
      acd71(123)=acd71(131)+acd71(128)+acd71(127)+acd71(125)+acd71(97)+acd71(12&
      &3)
      acd71(123)=acd71(123)*acd71(133)
      acd71(125)=ninjaP*acd71(126)
      acd71(126)=acd71(59)*acd71(101)
      acd71(127)=acd71(73)*acd71(22)
      acd71(128)=acd71(49)*acd71(135)
      acd71(125)=acd71(128)+acd71(127)+acd71(110)+acd71(126)+acd71(125)
      acd71(125)=acd71(4)*acd71(125)
      acd71(126)=acd71(89)*acd71(45)
      acd71(127)=acd71(88)*acd71(44)
      acd71(128)=acd71(67)*acd71(34)
      acd71(126)=acd71(128)+acd71(127)+acd71(91)+acd71(126)
      acd71(126)=acd71(32)*acd71(126)
      acd71(127)=acd71(28)*acd71(124)
      acd71(128)=acd71(71)*acd71(45)
      acd71(127)=acd71(128)+acd71(127)
      acd71(127)=acd71(19)*acd71(127)
      acd71(128)=acd71(27)*acd71(124)
      acd71(131)=acd71(71)*acd71(44)
      acd71(128)=acd71(114)+acd71(131)+acd71(128)
      acd71(128)=acd71(17)*acd71(128)
      acd71(131)=acd71(7)*acd71(124)
      acd71(132)=acd71(71)*acd71(34)
      acd71(131)=acd71(77)+acd71(132)+acd71(131)
      acd71(131)=acd71(1)*acd71(131)
      acd71(132)=acd71(80)*acd71(130)
      acd71(134)=acd71(57)*acd71(116)
      acd71(135)=acd71(52)*acd71(115)
      acd71(136)=acd71(47)*acd71(142)
      acd71(122)=acd71(125)+acd71(123)+acd71(131)+acd71(122)+acd71(126)+acd71(1&
      &28)+acd71(127)+acd71(136)+acd71(135)+acd71(134)+acd71(132)
      acd71(122)=acd71(6)*acd71(122)
      acd71(123)=acd71(49)*acd71(137)
      acd71(125)=acd71(20)*acd71(89)
      acd71(126)=acd71(18)*acd71(88)
      acd71(127)=acd71(3)*acd71(67)
      acd71(128)=acd71(47)*acd71(14)
      acd71(131)=acd71(49)*acd71(16)
      acd71(125)=acd71(131)+acd71(128)+acd71(127)+acd71(126)+acd71(95)+acd71(12&
      &5)
      acd71(125)=acd71(125)*acd71(133)
      acd71(126)=ninjaP*acd71(129)
      acd71(127)=acd71(53)*acd71(101)
      acd71(128)=acd71(73)*acd71(14)
      acd71(129)=acd71(49)*acd71(139)
      acd71(126)=acd71(129)+acd71(128)+acd71(105)+acd71(127)+acd71(126)
      acd71(126)=acd71(4)*acd71(126)
      acd71(127)=acd71(89)*acd71(43)
      acd71(128)=acd71(88)*acd71(42)
      acd71(129)=acd71(67)*acd71(33)
      acd71(127)=acd71(129)+acd71(128)+acd71(90)+acd71(127)
      acd71(127)=acd71(32)*acd71(127)
      acd71(128)=acd71(20)*acd71(124)
      acd71(129)=acd71(71)*acd71(43)
      acd71(128)=acd71(129)+acd71(128)
      acd71(128)=acd71(19)*acd71(128)
      acd71(129)=acd71(18)*acd71(124)
      acd71(131)=acd71(71)*acd71(42)
      acd71(129)=acd71(107)+acd71(131)+acd71(129)
      acd71(129)=acd71(17)*acd71(129)
      acd71(131)=acd71(3)*acd71(124)
      acd71(132)=acd71(71)*acd71(33)
      acd71(131)=acd71(75)+acd71(132)+acd71(131)
      acd71(131)=acd71(1)*acd71(131)
      acd71(132)=acd71(79)*acd71(130)
      acd71(134)=acd71(57)*acd71(109)
      acd71(135)=acd71(52)*acd71(108)
      acd71(136)=acd71(47)*acd71(138)
      acd71(123)=acd71(126)+acd71(125)+acd71(131)+acd71(123)+acd71(127)+acd71(1&
      &29)+acd71(128)+acd71(136)+acd71(135)+acd71(134)+acd71(132)
      acd71(123)=acd71(2)*acd71(123)
      acd71(125)=acd71(48)*acd71(7)
      acd71(126)=acd71(47)*acd71(5)
      acd71(127)=acd71(46)*acd71(3)
      acd71(128)=acd71(49)*acd71(9)
      acd71(125)=acd71(128)+acd71(127)+acd71(126)+acd71(74)+acd71(125)
      acd71(125)=acd71(1)*acd71(125)
      acd71(126)=acd71(48)*acd71(28)
      acd71(127)=acd71(46)*acd71(20)
      acd71(126)=acd71(126)+acd71(127)
      acd71(126)=acd71(19)*acd71(126)
      acd71(127)=acd71(48)*acd71(27)
      acd71(128)=acd71(46)*acd71(18)
      acd71(127)=acd71(127)+acd71(128)
      acd71(127)=acd71(17)*acd71(127)
      acd71(128)=-acd71(83)*acd71(141)
      acd71(129)=acd71(62)*acd71(100)
      acd71(131)=acd71(60)*acd71(99)
      acd71(132)=acd71(32)*acd71(87)
      acd71(134)=acd71(94)*acd71(133)
      acd71(125)=acd71(134)+acd71(125)+acd71(132)+acd71(127)+acd71(126)+acd71(1&
      &29)+acd71(131)+acd71(128)
      acd71(125)=acd71(125)*acd71(133)
      acd71(126)=acd71(49)*acd71(140)
      acd71(127)=acd71(67)*acd71(5)
      acd71(128)=acd71(48)*acd71(22)
      acd71(129)=acd71(46)*acd71(14)
      acd71(131)=acd71(49)*acd71(25)
      acd71(127)=acd71(131)+acd71(129)+acd71(128)+acd71(96)+acd71(127)
      acd71(127)=acd71(127)*acd71(133)
      acd71(124)=acd71(5)*acd71(124)
      acd71(128)=acd71(49)*acd71(36)
      acd71(124)=acd71(128)+acd71(76)+acd71(124)
      acd71(124)=acd71(1)*acd71(124)
      acd71(128)=-acd71(84)*acd71(141)
      acd71(129)=acd71(62)*acd71(112)
      acd71(131)=acd71(60)*acd71(111)
      acd71(132)=acd71(48)*acd71(142)
      acd71(133)=acd71(46)*acd71(138)
      acd71(124)=acd71(127)+acd71(124)+acd71(126)+acd71(133)+acd71(132)+acd71(1&
      &29)+acd71(131)+acd71(128)
      acd71(124)=acd71(4)*acd71(124)
      acd71(126)=acd71(48)*acd71(45)
      acd71(127)=acd71(46)*acd71(43)
      acd71(126)=acd71(126)+acd71(127)
      acd71(126)=acd71(19)*acd71(126)
      acd71(127)=acd71(48)*acd71(44)
      acd71(128)=acd71(46)*acd71(42)
      acd71(127)=acd71(127)+acd71(128)
      acd71(127)=acd71(17)*acd71(127)
      acd71(128)=-acd71(82)*acd71(141)
      acd71(129)=acd71(62)*acd71(93)
      acd71(131)=acd71(60)*acd71(92)
      acd71(126)=acd71(127)+acd71(126)+acd71(129)+acd71(131)+acd71(128)
      acd71(126)=acd71(32)*acd71(126)
      acd71(127)=acd71(48)*acd71(34)
      acd71(128)=acd71(46)*acd71(33)
      acd71(127)=acd71(128)+acd71(72)+acd71(127)
      acd71(127)=acd71(32)*acd71(127)
      acd71(128)=acd71(49)*acd71(143)
      acd71(129)=-acd71(69)*acd71(130)
      acd71(127)=acd71(128)+acd71(127)+acd71(129)
      acd71(127)=acd71(1)*acd71(127)
      acd71(119)=acd71(119)+acd71(123)+acd71(122)+acd71(124)+acd71(125)+acd71(1&
      &26)+acd71(127)
      brack(ninjaidxt1mu0)=acd71(121)
      brack(ninjaidxt0mu0)=acd71(119)
      brack(ninjaidxt0mu2)=acd71(120)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d71h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd71h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d71h3l131
