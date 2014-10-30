module     p0_dbaru_epnebbbarg_d320h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d320h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd320h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd320
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd320(1)=dotproduct(ninjaE3,spvak2k7)
      acd320(2)=dotproduct(ninjaE3,spvak4k2)
      acd320(3)=dotproduct(ninjaE3,spval6k2)
      acd320(4)=abb320(18)
      acd320(5)=dotproduct(ninjaE3,spval5k2)
      acd320(6)=abb320(64)
      acd320(7)=dotproduct(ninjaE3,spvak1k2)
      acd320(8)=abb320(20)
      acd320(9)=dotproduct(ninjaE3,spvak1k3)
      acd320(10)=abb320(92)
      acd320(11)=abb320(23)
      acd320(12)=abb320(93)
      acd320(13)=acd320(6)*acd320(2)
      acd320(14)=acd320(11)*acd320(7)
      acd320(15)=acd320(12)*acd320(9)
      acd320(13)=acd320(15)+acd320(14)+acd320(13)
      acd320(13)=acd320(13)*acd320(5)
      acd320(14)=acd320(4)*acd320(2)
      acd320(15)=acd320(8)*acd320(7)
      acd320(16)=acd320(10)*acd320(9)
      acd320(14)=acd320(16)+acd320(15)+acd320(14)
      acd320(14)=acd320(14)*acd320(3)
      acd320(13)=acd320(14)+acd320(13)
      acd320(13)=acd320(1)*acd320(13)
      brack(ninjaidxt2mu0)=acd320(13)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd320h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(149) :: acd320
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd320(1)=dotproduct(k2,ninjaE3)
      acd320(2)=abb320(56)
      acd320(3)=dotproduct(ninjaE3,spvak1k2)
      acd320(4)=dotproduct(ninjaE3,spvak2k7)
      acd320(5)=dotproduct(ninjaE4,spval6k2)
      acd320(6)=abb320(20)
      acd320(7)=dotproduct(ninjaE4,spval5k2)
      acd320(8)=abb320(23)
      acd320(9)=dotproduct(ninjaE3,spval6k2)
      acd320(10)=dotproduct(ninjaE4,spvak2k7)
      acd320(11)=dotproduct(ninjaE3,spval5k2)
      acd320(12)=abb320(47)
      acd320(13)=dotproduct(ninjaE4,spvak1k2)
      acd320(14)=dotproduct(ninjaE4,spvak4k2)
      acd320(15)=abb320(18)
      acd320(16)=dotproduct(ninjaE4,spvak1k3)
      acd320(17)=abb320(92)
      acd320(18)=dotproduct(ninjaE3,spvak4k2)
      acd320(19)=abb320(64)
      acd320(20)=abb320(93)
      acd320(21)=dotproduct(ninjaE3,spvak1k3)
      acd320(22)=dotproduct(ninjaE3,spval6k7)
      acd320(23)=abb320(122)
      acd320(24)=abb320(21)
      acd320(25)=abb320(94)
      acd320(26)=abb320(70)
      acd320(27)=abb320(24)
      acd320(28)=dotproduct(ninjaE3,spval6k3)
      acd320(29)=abb320(131)
      acd320(30)=dotproduct(ninjaE3,spval5k3)
      acd320(31)=abb320(87)
      acd320(32)=abb320(44)
      acd320(33)=dotproduct(l6,ninjaE3)
      acd320(34)=abb320(33)
      acd320(35)=dotproduct(k7,ninjaE3)
      acd320(36)=dotproduct(ninjaA,ninjaE3)
      acd320(37)=abb320(42)
      acd320(38)=abb320(39)
      acd320(39)=abb320(98)
      acd320(40)=abb320(58)
      acd320(41)=abb320(104)
      acd320(42)=abb320(35)
      acd320(43)=abb320(41)
      acd320(44)=abb320(126)
      acd320(45)=abb320(46)
      acd320(46)=dotproduct(l5,ninjaE3)
      acd320(47)=abb320(37)
      acd320(48)=abb320(28)
      acd320(49)=abb320(27)
      acd320(50)=abb320(72)
      acd320(51)=abb320(57)
      acd320(52)=abb320(88)
      acd320(53)=abb320(91)
      acd320(54)=abb320(76)
      acd320(55)=abb320(124)
      acd320(56)=abb320(67)
      acd320(57)=abb320(32)
      acd320(58)=abb320(95)
      acd320(59)=dotproduct(ninjaA,spvak1k2)
      acd320(60)=dotproduct(ninjaA,spvak2k7)
      acd320(61)=dotproduct(ninjaA,spval6k2)
      acd320(62)=dotproduct(ninjaA,spvak4k2)
      acd320(63)=dotproduct(ninjaA,spval5k2)
      acd320(64)=dotproduct(ninjaA,spvak1k3)
      acd320(65)=abb320(13)
      acd320(66)=abb320(48)
      acd320(67)=abb320(51)
      acd320(68)=dotproduct(ninjaE3,spval5l6)
      acd320(69)=abb320(62)
      acd320(70)=dotproduct(ninjaE3,spval5k7)
      acd320(71)=abb320(60)
      acd320(72)=abb320(45)
      acd320(73)=abb320(22)
      acd320(74)=dotproduct(ninjaE3,spvak7k2)
      acd320(75)=abb320(40)
      acd320(76)=abb320(61)
      acd320(77)=dotproduct(ninjaE3,spval6l5)
      acd320(78)=abb320(19)
      acd320(79)=abb320(59)
      acd320(80)=abb320(31)
      acd320(81)=abb320(52)
      acd320(82)=abb320(53)
      acd320(83)=abb320(63)
      acd320(84)=abb320(74)
      acd320(85)=abb320(68)
      acd320(86)=abb320(84)
      acd320(87)=abb320(112)
      acd320(88)=abb320(99)
      acd320(89)=abb320(49)
      acd320(90)=abb320(86)
      acd320(91)=dotproduct(k2,ninjaA)
      acd320(92)=dotproduct(l6,ninjaA)
      acd320(93)=dotproduct(k7,ninjaA)
      acd320(94)=dotproduct(ninjaA,ninjaA)
      acd320(95)=dotproduct(ninjaA,spval6k7)
      acd320(96)=dotproduct(ninjaA,spval6k3)
      acd320(97)=dotproduct(ninjaA,spval5k3)
      acd320(98)=abb320(30)
      acd320(99)=dotproduct(l5,ninjaA)
      acd320(100)=abb320(108)
      acd320(101)=abb320(54)
      acd320(102)=abb320(80)
      acd320(103)=abb320(55)
      acd320(104)=dotproduct(ninjaA,spvak7k2)
      acd320(105)=dotproduct(ninjaA,spval6l5)
      acd320(106)=dotproduct(ninjaA,spval5l6)
      acd320(107)=dotproduct(ninjaA,spval5k7)
      acd320(108)=abb320(25)
      acd320(109)=abb320(16)
      acd320(110)=abb320(14)
      acd320(111)=abb320(15)
      acd320(112)=abb320(17)
      acd320(113)=abb320(82)
      acd320(114)=abb320(36)
      acd320(115)=abb320(71)
      acd320(116)=abb320(26)
      acd320(117)=abb320(34)
      acd320(118)=acd320(20)*acd320(16)
      acd320(119)=acd320(19)*acd320(14)
      acd320(120)=acd320(8)*acd320(13)
      acd320(118)=acd320(120)+acd320(118)+acd320(119)
      acd320(118)=acd320(118)*acd320(11)
      acd320(119)=acd320(17)*acd320(16)
      acd320(120)=acd320(15)*acd320(14)
      acd320(121)=acd320(6)*acd320(13)
      acd320(119)=acd320(121)+acd320(119)+acd320(120)
      acd320(119)=acd320(119)*acd320(9)
      acd320(120)=acd320(20)*acd320(7)
      acd320(121)=acd320(17)*acd320(5)
      acd320(120)=acd320(120)+acd320(121)
      acd320(120)=acd320(120)*acd320(21)
      acd320(121)=acd320(19)*acd320(7)
      acd320(122)=acd320(15)*acd320(5)
      acd320(121)=acd320(121)+acd320(122)
      acd320(121)=acd320(121)*acd320(18)
      acd320(122)=acd320(8)*acd320(7)
      acd320(123)=acd320(6)*acd320(5)
      acd320(122)=acd320(122)+acd320(123)
      acd320(122)=acd320(122)*acd320(3)
      acd320(118)=acd320(119)+acd320(121)+acd320(122)+acd320(120)+acd320(118)
      acd320(119)=acd320(4)*acd320(118)
      acd320(120)=acd320(30)*acd320(31)
      acd320(121)=acd320(28)*acd320(29)
      acd320(120)=acd320(120)+acd320(121)
      acd320(121)=acd320(22)*acd320(23)
      acd320(121)=acd320(121)+acd320(120)
      acd320(122)=acd320(18)*acd320(15)
      acd320(123)=acd320(3)*acd320(6)
      acd320(122)=acd320(122)+acd320(123)
      acd320(123)=acd320(10)*acd320(122)
      acd320(124)=acd320(21)*acd320(10)
      acd320(125)=acd320(17)*acd320(124)
      acd320(123)=acd320(24)+acd320(125)+acd320(123)
      acd320(123)=acd320(9)*acd320(123)
      acd320(125)=acd320(1)*acd320(2)
      acd320(126)=acd320(21)*acd320(27)
      acd320(124)=acd320(20)*acd320(124)
      acd320(124)=acd320(26)+acd320(124)
      acd320(124)=acd320(11)*acd320(124)
      acd320(127)=acd320(11)*acd320(10)
      acd320(128)=acd320(19)*acd320(127)
      acd320(128)=acd320(25)+acd320(128)
      acd320(128)=acd320(18)*acd320(128)
      acd320(127)=acd320(8)*acd320(127)
      acd320(127)=acd320(12)+acd320(127)
      acd320(127)=acd320(3)*acd320(127)
      acd320(119)=acd320(119)+acd320(123)+acd320(127)+acd320(128)+acd320(124)+a&
      &cd320(126)+acd320(125)+acd320(121)
      acd320(123)=acd320(78)*acd320(77)
      acd320(124)=acd320(74)*acd320(75)
      acd320(125)=acd320(46)*acd320(47)
      acd320(126)=acd320(30)*acd320(82)
      acd320(127)=acd320(28)*acd320(81)
      acd320(128)=acd320(22)*acd320(72)
      acd320(129)=acd320(33)*acd320(49)
      acd320(130)=acd320(1)*acd320(38)
      acd320(123)=acd320(124)+acd320(125)+acd320(126)+acd320(127)+acd320(130)+a&
      &cd320(123)+acd320(128)+acd320(129)
      acd320(124)=acd320(62)*acd320(19)
      acd320(125)=acd320(59)*acd320(8)
      acd320(126)=acd320(64)*acd320(20)
      acd320(126)=acd320(126)+acd320(79)
      acd320(124)=acd320(124)+acd320(125)+acd320(126)
      acd320(125)=acd320(11)*acd320(124)
      acd320(127)=acd320(64)*acd320(17)
      acd320(128)=acd320(62)*acd320(15)
      acd320(129)=acd320(59)*acd320(6)
      acd320(127)=acd320(128)+acd320(127)+acd320(129)+acd320(73)
      acd320(128)=acd320(9)*acd320(127)
      acd320(129)=acd320(63)*acd320(20)
      acd320(130)=acd320(61)*acd320(17)
      acd320(129)=acd320(129)+acd320(130)+acd320(80)
      acd320(130)=acd320(21)*acd320(129)
      acd320(131)=acd320(61)*acd320(15)
      acd320(132)=acd320(63)*acd320(19)
      acd320(132)=acd320(132)+acd320(76)
      acd320(131)=acd320(131)+acd320(132)
      acd320(133)=acd320(18)*acd320(131)
      acd320(134)=acd320(61)*acd320(6)
      acd320(135)=acd320(63)*acd320(8)
      acd320(135)=acd320(135)+acd320(65)
      acd320(134)=acd320(134)+acd320(135)
      acd320(136)=acd320(3)*acd320(134)
      acd320(125)=acd320(128)+acd320(136)+acd320(133)+acd320(125)+acd320(130)+a&
      &cd320(123)
      acd320(125)=acd320(4)*acd320(125)
      acd320(128)=acd320(70)*acd320(88)
      acd320(130)=acd320(68)*acd320(87)
      acd320(128)=acd320(128)+acd320(130)
      acd320(130)=acd320(35)*acd320(58)
      acd320(133)=2.0_ki*acd320(36)
      acd320(136)=acd320(25)*acd320(133)
      acd320(137)=acd320(22)*acd320(83)
      acd320(138)=acd320(33)*acd320(52)
      acd320(139)=acd320(1)*acd320(41)
      acd320(140)=acd320(11)*acd320(19)
      acd320(141)=acd320(60)*acd320(140)
      acd320(130)=acd320(141)+acd320(139)+acd320(138)+acd320(137)+acd320(136)+a&
      &cd320(130)+acd320(128)
      acd320(130)=acd320(18)*acd320(130)
      acd320(136)=acd320(70)*acd320(71)
      acd320(137)=acd320(68)*acd320(69)
      acd320(136)=acd320(136)+acd320(137)
      acd320(137)=acd320(35)*acd320(57)
      acd320(138)=acd320(12)*acd320(133)
      acd320(139)=acd320(22)*acd320(66)
      acd320(141)=acd320(33)*acd320(48)
      acd320(142)=acd320(1)*acd320(37)
      acd320(143)=acd320(11)*acd320(8)
      acd320(144)=acd320(60)*acd320(143)
      acd320(137)=acd320(144)+acd320(142)+acd320(141)+acd320(139)+acd320(138)+a&
      &cd320(137)+acd320(136)
      acd320(137)=acd320(3)*acd320(137)
      acd320(138)=acd320(33)+acd320(35)
      acd320(139)=acd320(34)*acd320(138)
      acd320(141)=acd320(30)*acd320(45)
      acd320(142)=acd320(28)*acd320(44)
      acd320(144)=acd320(2)*acd320(133)
      acd320(145)=acd320(22)*acd320(39)
      acd320(146)=acd320(1)*acd320(32)
      acd320(139)=acd320(146)+acd320(145)+acd320(144)+acd320(141)+acd320(142)+a&
      &cd320(139)
      acd320(139)=acd320(1)*acd320(139)
      acd320(141)=acd320(51)*acd320(138)
      acd320(142)=acd320(24)*acd320(133)
      acd320(144)=acd320(1)*acd320(40)
      acd320(145)=acd320(60)*acd320(17)
      acd320(145)=acd320(86)+acd320(145)
      acd320(145)=acd320(21)*acd320(145)
      acd320(146)=acd320(60)*acd320(15)
      acd320(146)=acd320(85)+acd320(146)
      acd320(146)=acd320(18)*acd320(146)
      acd320(147)=acd320(60)*acd320(6)
      acd320(147)=acd320(67)+acd320(147)
      acd320(147)=acd320(3)*acd320(147)
      acd320(141)=acd320(147)+acd320(146)+acd320(145)+acd320(144)+acd320(142)+a&
      &cd320(141)
      acd320(141)=acd320(9)*acd320(141)
      acd320(142)=acd320(70)*acd320(90)
      acd320(144)=acd320(68)*acd320(89)
      acd320(142)=acd320(142)+acd320(144)
      acd320(144)=acd320(27)*acd320(133)
      acd320(145)=acd320(22)*acd320(84)
      acd320(146)=acd320(33)*acd320(54)
      acd320(147)=acd320(1)*acd320(43)
      acd320(144)=acd320(147)+acd320(146)+acd320(145)+acd320(144)+acd320(142)
      acd320(144)=acd320(21)*acd320(144)
      acd320(138)=acd320(53)*acd320(138)
      acd320(145)=acd320(26)*acd320(133)
      acd320(146)=acd320(1)*acd320(42)
      acd320(147)=acd320(21)*acd320(20)
      acd320(148)=acd320(60)*acd320(147)
      acd320(138)=acd320(148)+acd320(146)+acd320(145)+acd320(138)
      acd320(138)=acd320(11)*acd320(138)
      acd320(145)=acd320(30)*acd320(56)
      acd320(146)=acd320(28)*acd320(55)
      acd320(145)=acd320(145)-acd320(146)
      acd320(146)=acd320(35)*acd320(145)
      acd320(120)=acd320(120)*acd320(133)
      acd320(148)=acd320(35)*acd320(50)
      acd320(149)=acd320(23)*acd320(133)
      acd320(148)=acd320(148)+acd320(149)
      acd320(148)=acd320(22)*acd320(148)
      acd320(149)=acd320(22)*acd320(50)
      acd320(145)=acd320(149)+acd320(145)
      acd320(145)=acd320(33)*acd320(145)
      acd320(120)=acd320(125)+acd320(141)+acd320(137)+acd320(130)+acd320(138)+a&
      &cd320(144)+acd320(139)+acd320(145)+acd320(148)+acd320(146)+acd320(120)
      acd320(118)=ninjaP*acd320(118)
      acd320(125)=acd320(61)*acd320(127)
      acd320(130)=acd320(78)*acd320(105)
      acd320(137)=acd320(75)*acd320(104)
      acd320(138)=acd320(47)*acd320(99)
      acd320(139)=acd320(97)*acd320(82)
      acd320(141)=acd320(96)*acd320(81)
      acd320(144)=acd320(95)*acd320(72)
      acd320(145)=acd320(92)*acd320(49)
      acd320(146)=acd320(91)*acd320(38)
      acd320(148)=acd320(64)*acd320(80)
      acd320(126)=acd320(63)*acd320(126)
      acd320(132)=acd320(62)*acd320(132)
      acd320(135)=acd320(59)*acd320(135)
      acd320(118)=acd320(125)+acd320(135)+acd320(132)+acd320(126)+acd320(148)+a&
      &cd320(146)+acd320(145)+acd320(144)+acd320(141)+acd320(139)+acd320(138)+a&
      &cd320(137)+acd320(109)+acd320(130)+acd320(118)
      acd320(118)=acd320(4)*acd320(118)
      acd320(125)=ninjaP+acd320(94)
      acd320(126)=acd320(2)*acd320(125)
      acd320(130)=acd320(92)+acd320(93)
      acd320(132)=acd320(34)*acd320(130)
      acd320(135)=acd320(97)*acd320(45)
      acd320(137)=acd320(96)*acd320(44)
      acd320(138)=acd320(95)*acd320(39)
      acd320(139)=acd320(91)*acd320(32)
      acd320(141)=acd320(64)*acd320(43)
      acd320(144)=acd320(63)*acd320(42)
      acd320(145)=acd320(62)*acd320(41)
      acd320(146)=acd320(59)*acd320(37)
      acd320(148)=acd320(61)*acd320(40)
      acd320(126)=acd320(148)+acd320(146)+acd320(145)+acd320(144)+acd320(141)+2&
      &.0_ki*acd320(139)+acd320(138)+acd320(137)+acd320(98)+acd320(135)+acd320(&
      &132)+acd320(126)
      acd320(126)=acd320(1)*acd320(126)
      acd320(131)=acd320(60)*acd320(131)
      acd320(132)=ninjaP*acd320(10)
      acd320(135)=acd320(132)*acd320(140)
      acd320(137)=acd320(25)*acd320(125)
      acd320(138)=acd320(88)*acd320(107)
      acd320(139)=acd320(87)*acd320(106)
      acd320(140)=acd320(95)*acd320(83)
      acd320(141)=acd320(93)*acd320(58)
      acd320(144)=acd320(92)*acd320(52)
      acd320(145)=acd320(91)*acd320(41)
      acd320(146)=acd320(61)*acd320(85)
      acd320(131)=acd320(135)+acd320(131)+acd320(146)+acd320(145)+acd320(144)+a&
      &cd320(141)+acd320(140)+acd320(139)+acd320(113)+acd320(138)+acd320(137)
      acd320(131)=acd320(18)*acd320(131)
      acd320(134)=acd320(60)*acd320(134)
      acd320(135)=acd320(132)*acd320(143)
      acd320(137)=acd320(12)*acd320(125)
      acd320(138)=acd320(71)*acd320(107)
      acd320(139)=acd320(69)*acd320(106)
      acd320(140)=acd320(95)*acd320(66)
      acd320(141)=acd320(93)*acd320(57)
      acd320(143)=acd320(92)*acd320(48)
      acd320(144)=acd320(91)*acd320(37)
      acd320(145)=acd320(61)*acd320(67)
      acd320(134)=acd320(135)+acd320(134)+acd320(145)+acd320(144)+acd320(143)+a&
      &cd320(141)+acd320(140)+acd320(139)+acd320(108)+acd320(138)+acd320(137)
      acd320(134)=acd320(3)*acd320(134)
      acd320(135)=acd320(31)*acd320(97)
      acd320(137)=acd320(29)*acd320(96)
      acd320(138)=acd320(95)*acd320(23)
      acd320(139)=acd320(91)*acd320(2)
      acd320(140)=acd320(64)*acd320(27)
      acd320(141)=acd320(63)*acd320(26)
      acd320(143)=acd320(62)*acd320(25)
      acd320(144)=acd320(59)*acd320(12)
      acd320(145)=acd320(61)*acd320(24)
      acd320(135)=acd320(145)+acd320(144)+acd320(143)+acd320(141)+acd320(140)+a&
      &cd320(139)+acd320(138)+acd320(137)+acd320(103)+acd320(135)
      acd320(133)=acd320(135)*acd320(133)
      acd320(123)=acd320(60)*acd320(123)
      acd320(129)=acd320(60)*acd320(129)
      acd320(135)=acd320(27)*acd320(125)
      acd320(137)=acd320(90)*acd320(107)
      acd320(138)=acd320(89)*acd320(106)
      acd320(139)=acd320(95)*acd320(84)
      acd320(140)=acd320(92)*acd320(54)
      acd320(141)=acd320(91)*acd320(43)
      acd320(143)=acd320(61)*acd320(86)
      acd320(129)=acd320(129)+acd320(143)+acd320(141)+acd320(140)+acd320(139)+a&
      &cd320(138)+acd320(115)+acd320(137)+acd320(135)
      acd320(129)=acd320(21)*acd320(129)
      acd320(127)=acd320(60)*acd320(127)
      acd320(135)=acd320(21)*acd320(17)
      acd320(122)=acd320(135)+acd320(122)
      acd320(122)=acd320(132)*acd320(122)
      acd320(135)=acd320(24)*acd320(125)
      acd320(137)=acd320(51)*acd320(130)
      acd320(138)=acd320(91)*acd320(40)
      acd320(139)=acd320(64)*acd320(86)
      acd320(140)=acd320(62)*acd320(85)
      acd320(141)=acd320(59)*acd320(67)
      acd320(122)=acd320(127)+acd320(141)+acd320(140)+acd320(139)+acd320(138)+a&
      &cd320(111)+acd320(122)+acd320(137)+acd320(135)
      acd320(122)=acd320(9)*acd320(122)
      acd320(127)=acd320(56)*acd320(97)
      acd320(135)=acd320(55)*acd320(96)
      acd320(137)=acd320(95)*acd320(50)
      acd320(138)=acd320(91)*acd320(34)
      acd320(139)=acd320(63)*acd320(53)
      acd320(140)=acd320(61)*acd320(51)
      acd320(127)=acd320(127)-acd320(135)+acd320(137)+acd320(138)+acd320(139)+a&
      &cd320(140)
      acd320(135)=acd320(62)*acd320(58)
      acd320(137)=acd320(59)*acd320(57)
      acd320(135)=acd320(137)+acd320(135)+acd320(102)+acd320(127)
      acd320(135)=acd320(35)*acd320(135)
      acd320(137)=acd320(50)*acd320(130)
      acd320(138)=acd320(94)*acd320(23)
      acd320(139)=acd320(91)*acd320(39)
      acd320(140)=acd320(64)*acd320(84)
      acd320(141)=acd320(62)*acd320(83)
      acd320(143)=acd320(59)*acd320(66)
      acd320(137)=acd320(143)+acd320(141)+acd320(140)+acd320(139)+acd320(138)+a&
      &cd320(110)+acd320(137)
      acd320(137)=acd320(22)*acd320(137)
      acd320(138)=acd320(64)*acd320(54)
      acd320(139)=acd320(62)*acd320(52)
      acd320(140)=acd320(59)*acd320(48)
      acd320(127)=acd320(140)+acd320(139)+acd320(138)+acd320(101)+acd320(127)
      acd320(127)=acd320(33)*acd320(127)
      acd320(124)=acd320(60)*acd320(124)
      acd320(132)=acd320(132)*acd320(147)
      acd320(125)=acd320(26)*acd320(125)
      acd320(138)=acd320(53)*acd320(130)
      acd320(139)=acd320(91)*acd320(42)
      acd320(124)=acd320(132)+acd320(124)+acd320(139)+acd320(114)+acd320(138)+a&
      &cd320(125)
      acd320(124)=acd320(11)*acd320(124)
      acd320(125)=acd320(56)*acd320(130)
      acd320(132)=acd320(94)*acd320(31)
      acd320(138)=acd320(91)*acd320(45)
      acd320(125)=acd320(138)+acd320(132)+acd320(117)+acd320(125)
      acd320(125)=acd320(30)*acd320(125)
      acd320(130)=-acd320(55)*acd320(130)
      acd320(132)=acd320(94)*acd320(29)
      acd320(138)=acd320(91)*acd320(44)
      acd320(130)=acd320(138)+acd320(132)+acd320(116)+acd320(130)
      acd320(130)=acd320(28)*acd320(130)
      acd320(132)=acd320(64)*acd320(142)
      acd320(128)=acd320(62)*acd320(128)
      acd320(136)=acd320(59)*acd320(136)
      acd320(121)=ninjaP*acd320(121)
      acd320(138)=acd320(74)*acd320(112)
      acd320(139)=acd320(46)*acd320(100)
      acd320(118)=acd320(118)+acd320(122)+acd320(134)+acd320(131)+acd320(124)+a&
      &cd320(129)+acd320(123)+acd320(126)+acd320(121)+acd320(127)+acd320(137)+a&
      &cd320(133)+acd320(135)+acd320(136)+acd320(128)+acd320(132)+acd320(130)+a&
      &cd320(125)+acd320(138)+acd320(139)
      brack(ninjaidxt1mu0)=acd320(120)
      brack(ninjaidxt0mu0)=acd320(118)
      brack(ninjaidxt0mu2)=acd320(119)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d320h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd320h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d320h0l131