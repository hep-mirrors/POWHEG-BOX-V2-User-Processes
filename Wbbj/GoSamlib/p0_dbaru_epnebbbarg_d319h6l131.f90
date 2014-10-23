module     p0_dbaru_epnebbbarg_d319h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d319h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd319h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd319
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd319(1)=dotproduct(k2,ninjaE3)
      acd319(2)=dotproduct(ninjaE3,spvak7k2)
      acd319(3)=abb319(50)
      acd319(4)=dotproduct(k3,ninjaE3)
      acd319(5)=dotproduct(k4,ninjaE3)
      acd319(6)=dotproduct(ninjaE3,spval5l6)
      acd319(7)=abb319(14)
      acd319(8)=dotproduct(ninjaE3,spvak1k2)
      acd319(9)=abb319(23)
      acd319(10)=dotproduct(ninjaE3,spvak4k2)
      acd319(11)=abb319(44)
      acd319(12)=dotproduct(ninjaE3,spvak4k3)
      acd319(13)=abb319(60)
      acd319(14)=abb319(37)
      acd319(15)=abb319(61)
      acd319(16)=abb319(112)
      acd319(17)=acd319(4)+acd319(5)
      acd319(18)=-acd319(1)+acd319(17)
      acd319(18)=acd319(3)*acd319(18)
      acd319(19)=acd319(12)*acd319(13)
      acd319(20)=acd319(10)*acd319(11)
      acd319(21)=acd319(8)*acd319(9)
      acd319(22)=acd319(6)*acd319(7)
      acd319(18)=acd319(22)+acd319(21)+acd319(19)+acd319(20)+acd319(18)
      acd319(18)=acd319(1)*acd319(18)
      acd319(19)=acd319(12)*acd319(16)
      acd319(20)=acd319(10)*acd319(15)
      acd319(21)=acd319(8)*acd319(14)
      acd319(17)=-acd319(7)*acd319(17)
      acd319(17)=acd319(17)+acd319(21)+acd319(19)+acd319(20)
      acd319(17)=acd319(6)*acd319(17)
      acd319(17)=acd319(17)+acd319(18)
      acd319(17)=acd319(2)*acd319(17)
      brack(ninjaidxt2mu0)=acd319(17)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd319h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(153) :: acd319
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd319(1)=dotproduct(k2,ninjaE3)
      acd319(2)=dotproduct(ninjaE4,spvak7k2)
      acd319(3)=abb319(50)
      acd319(4)=dotproduct(k2,ninjaE4)
      acd319(5)=dotproduct(ninjaE3,spvak7k2)
      acd319(6)=dotproduct(k3,ninjaE3)
      acd319(7)=dotproduct(k3,ninjaE4)
      acd319(8)=dotproduct(k4,ninjaE3)
      acd319(9)=dotproduct(k4,ninjaE4)
      acd319(10)=dotproduct(ninjaE3,spvak1k2)
      acd319(11)=abb319(23)
      acd319(12)=dotproduct(ninjaE4,spvak1k2)
      acd319(13)=dotproduct(ninjaE4,spvak4k2)
      acd319(14)=abb319(44)
      acd319(15)=dotproduct(ninjaE4,spval5l6)
      acd319(16)=abb319(14)
      acd319(17)=dotproduct(ninjaE4,spvak4k3)
      acd319(18)=abb319(60)
      acd319(19)=dotproduct(ninjaE3,spvak4k2)
      acd319(20)=dotproduct(ninjaE3,spval5l6)
      acd319(21)=dotproduct(ninjaE3,spvak4k3)
      acd319(22)=abb319(93)
      acd319(23)=abb319(58)
      acd319(24)=abb319(37)
      acd319(25)=abb319(33)
      acd319(26)=abb319(61)
      acd319(27)=abb319(112)
      acd319(28)=abb319(55)
      acd319(29)=abb319(67)
      acd319(30)=abb319(69)
      acd319(31)=dotproduct(ninjaE3,spvak7l6)
      acd319(32)=abb319(75)
      acd319(33)=abb319(132)
      acd319(34)=dotproduct(k2,ninjaA)
      acd319(35)=dotproduct(ninjaA,spvak7k2)
      acd319(36)=abb319(113)
      acd319(37)=dotproduct(k3,ninjaA)
      acd319(38)=abb319(191)
      acd319(39)=dotproduct(k4,ninjaA)
      acd319(40)=dotproduct(l5,ninjaE3)
      acd319(41)=abb319(76)
      acd319(42)=dotproduct(k7,ninjaE3)
      acd319(43)=abb319(71)
      acd319(44)=dotproduct(ninjaA,ninjaE3)
      acd319(45)=dotproduct(ninjaA,spvak1k2)
      acd319(46)=dotproduct(ninjaA,spvak4k2)
      acd319(47)=dotproduct(ninjaA,spval5l6)
      acd319(48)=dotproduct(ninjaA,spvak4k3)
      acd319(49)=abb319(25)
      acd319(50)=abb319(43)
      acd319(51)=abb319(117)
      acd319(52)=abb319(52)
      acd319(53)=abb319(102)
      acd319(54)=abb319(145)
      acd319(55)=abb319(198)
      acd319(56)=abb319(54)
      acd319(57)=abb319(103)
      acd319(58)=abb319(21)
      acd319(59)=abb319(38)
      acd319(60)=dotproduct(l6,ninjaE3)
      acd319(61)=abb319(31)
      acd319(62)=abb319(19)
      acd319(63)=abb319(100)
      acd319(64)=abb319(137)
      acd319(65)=abb319(12)
      acd319(66)=abb319(34)
      acd319(67)=abb319(18)
      acd319(68)=abb319(13)
      acd319(69)=abb319(39)
      acd319(70)=dotproduct(ninjaE3,spvak1k3)
      acd319(71)=abb319(20)
      acd319(72)=abb319(68)
      acd319(73)=dotproduct(ninjaE3,spvak2k3)
      acd319(74)=abb319(35)
      acd319(75)=dotproduct(ninjaE3,spvak1l6)
      acd319(76)=abb319(29)
      acd319(77)=abb319(41)
      acd319(78)=dotproduct(ninjaE3,spvak2l6)
      acd319(79)=abb319(56)
      acd319(80)=dotproduct(ninjaE3,spvak4l6)
      acd319(81)=abb319(80)
      acd319(82)=dotproduct(ninjaE3,spvak2k7)
      acd319(83)=abb319(85)
      acd319(84)=dotproduct(ninjaE3,spvak2l5)
      acd319(85)=abb319(83)
      acd319(86)=abb319(45)
      acd319(87)=abb319(40)
      acd319(88)=abb319(70)
      acd319(89)=abb319(114)
      acd319(90)=dotproduct(l5,ninjaA)
      acd319(91)=dotproduct(k7,ninjaA)
      acd319(92)=dotproduct(ninjaA,ninjaA)
      acd319(93)=dotproduct(ninjaA,spvak7l6)
      acd319(94)=abb319(36)
      acd319(95)=abb319(195)
      acd319(96)=abb319(144)
      acd319(97)=dotproduct(l6,ninjaA)
      acd319(98)=abb319(129)
      acd319(99)=abb319(98)
      acd319(100)=abb319(30)
      acd319(101)=dotproduct(ninjaA,spvak1k3)
      acd319(102)=dotproduct(ninjaA,spvak2k3)
      acd319(103)=dotproduct(ninjaA,spvak1l6)
      acd319(104)=dotproduct(ninjaA,spvak2l6)
      acd319(105)=dotproduct(ninjaA,spvak4l6)
      acd319(106)=dotproduct(ninjaA,spvak2k7)
      acd319(107)=dotproduct(ninjaA,spvak2l5)
      acd319(108)=abb319(16)
      acd319(109)=abb319(15)
      acd319(110)=abb319(27)
      acd319(111)=abb319(32)
      acd319(112)=abb319(17)
      acd319(113)=abb319(28)
      acd319(114)=abb319(22)
      acd319(115)=abb319(26)
      acd319(116)=abb319(88)
      acd319(117)=abb319(51)
      acd319(118)=abb319(59)
      acd319(119)=abb319(81)
      acd319(120)=abb319(89)
      acd319(121)=acd319(16)*acd319(15)
      acd319(122)=acd319(7)+acd319(9)
      acd319(123)=-acd319(122)+2.0_ki*acd319(4)
      acd319(123)=acd319(123)*acd319(3)
      acd319(124)=acd319(18)*acd319(17)
      acd319(125)=acd319(14)*acd319(13)
      acd319(126)=acd319(11)*acd319(12)
      acd319(121)=-acd319(123)+acd319(124)+acd319(125)+acd319(126)+acd319(121)
      acd319(121)=acd319(121)*acd319(1)
      acd319(122)=acd319(122)-acd319(4)
      acd319(122)=acd319(122)*acd319(16)
      acd319(123)=acd319(27)*acd319(17)
      acd319(124)=acd319(26)*acd319(13)
      acd319(125)=acd319(24)*acd319(12)
      acd319(122)=acd319(125)-acd319(122)+acd319(123)+acd319(124)
      acd319(122)=acd319(122)*acd319(20)
      acd319(123)=acd319(15)*acd319(27)
      acd319(124)=acd319(4)*acd319(18)
      acd319(123)=acd319(123)+acd319(124)
      acd319(123)=acd319(123)*acd319(21)
      acd319(124)=acd319(15)*acd319(26)
      acd319(125)=acd319(4)*acd319(14)
      acd319(124)=acd319(124)+acd319(125)
      acd319(124)=acd319(124)*acd319(19)
      acd319(125)=acd319(15)*acd319(24)
      acd319(126)=acd319(4)*acd319(11)
      acd319(125)=acd319(125)+acd319(126)
      acd319(125)=acd319(125)*acd319(10)
      acd319(126)=acd319(6)+acd319(8)
      acd319(127)=acd319(126)*acd319(3)
      acd319(128)=acd319(4)*acd319(127)
      acd319(129)=acd319(126)*acd319(16)
      acd319(130)=acd319(15)*acd319(129)
      acd319(121)=acd319(121)+acd319(122)+acd319(123)+acd319(28)+acd319(128)-ac&
      &d319(130)+acd319(124)+acd319(125)
      acd319(122)=acd319(5)*acd319(121)
      acd319(123)=acd319(31)*acd319(32)
      acd319(124)=acd319(21)*acd319(33)
      acd319(125)=acd319(19)*acd319(29)
      acd319(128)=acd319(10)*acd319(25)
      acd319(130)=acd319(126)*acd319(23)
      acd319(123)=acd319(130)+acd319(123)+acd319(124)+acd319(125)+acd319(128)
      acd319(124)=acd319(21)*acd319(27)
      acd319(125)=acd319(19)*acd319(26)
      acd319(128)=acd319(10)*acd319(24)
      acd319(124)=acd319(128)+acd319(124)+acd319(125)
      acd319(125)=acd319(2)*acd319(124)
      acd319(128)=acd319(2)*acd319(126)
      acd319(130)=acd319(128)*acd319(16)
      acd319(125)=acd319(30)-acd319(130)+acd319(125)
      acd319(130)=acd319(20)*acd319(125)
      acd319(131)=acd319(21)*acd319(18)
      acd319(132)=acd319(19)*acd319(14)
      acd319(133)=acd319(10)*acd319(11)
      acd319(131)=acd319(133)+acd319(131)+acd319(132)
      acd319(132)=acd319(20)*acd319(16)
      acd319(133)=acd319(1)*acd319(3)
      acd319(132)=acd319(131)+acd319(132)-acd319(133)
      acd319(132)=acd319(132)*acd319(2)
      acd319(128)=acd319(128)*acd319(3)
      acd319(128)=acd319(132)+acd319(128)+acd319(22)
      acd319(132)=acd319(1)*acd319(128)
      acd319(122)=acd319(122)+acd319(132)+acd319(130)+acd319(123)
      acd319(127)=acd319(127)+acd319(131)
      acd319(130)=acd319(127)*acd319(34)
      acd319(131)=acd319(47)*acd319(27)
      acd319(131)=acd319(131)+acd319(77)
      acd319(131)=acd319(131)*acd319(21)
      acd319(132)=acd319(47)*acd319(26)
      acd319(132)=acd319(132)+acd319(68)
      acd319(132)=acd319(132)*acd319(19)
      acd319(133)=acd319(47)*acd319(24)
      acd319(133)=acd319(133)+acd319(65)
      acd319(133)=acd319(133)*acd319(10)
      acd319(134)=acd319(84)*acd319(85)
      acd319(135)=acd319(82)*acd319(83)
      acd319(136)=acd319(80)*acd319(81)
      acd319(137)=acd319(78)*acd319(79)
      acd319(138)=acd319(75)*acd319(76)
      acd319(139)=acd319(73)*acd319(74)
      acd319(140)=acd319(70)*acd319(71)
      acd319(141)=acd319(60)*acd319(61)
      acd319(142)=acd319(31)*acd319(72)
      acd319(143)=acd319(47)*acd319(129)
      acd319(144)=acd319(126)*acd319(56)
      acd319(145)=acd319(42)+acd319(40)
      acd319(146)=acd319(145)*acd319(58)
      acd319(147)=2.0_ki*acd319(44)
      acd319(148)=acd319(147)*acd319(28)
      acd319(130)=acd319(133)+acd319(140)+acd319(141)+acd319(142)-acd319(143)+a&
      &cd319(136)+acd319(137)+acd319(138)+acd319(139)+acd319(144)+acd319(146)+a&
      &cd319(148)+acd319(130)+acd319(134)+acd319(135)+acd319(131)+acd319(132)
      acd319(131)=acd319(18)*acd319(48)
      acd319(132)=acd319(14)*acd319(46)
      acd319(133)=acd319(11)*acd319(45)
      acd319(134)=acd319(37)+acd319(39)
      acd319(135)=acd319(134)*acd319(3)
      acd319(131)=acd319(50)+acd319(132)+acd319(131)+acd319(133)+acd319(135)
      acd319(132)=acd319(16)*acd319(47)
      acd319(133)=acd319(34)*acd319(3)
      acd319(135)=-2.0_ki*acd319(133)+acd319(132)+acd319(131)
      acd319(136)=acd319(1)*acd319(135)
      acd319(137)=acd319(27)*acd319(48)
      acd319(138)=acd319(26)*acd319(46)
      acd319(139)=acd319(24)*acd319(45)
      acd319(137)=acd319(137)+acd319(138)+acd319(139)+acd319(69)
      acd319(138)=acd319(134)-acd319(34)
      acd319(139)=acd319(138)*acd319(16)
      acd319(139)=acd319(139)-acd319(137)
      acd319(140)=-acd319(20)*acd319(139)
      acd319(136)=acd319(136)+acd319(140)+acd319(130)
      acd319(136)=acd319(5)*acd319(136)
      acd319(140)=acd319(40)*acd319(41)
      acd319(141)=acd319(42)*acd319(43)
      acd319(142)=acd319(31)*acd319(53)
      acd319(143)=acd319(21)*acd319(54)
      acd319(144)=acd319(19)*acd319(51)
      acd319(146)=acd319(10)*acd319(49)
      acd319(148)=acd319(126)*acd319(38)
      acd319(149)=acd319(147)*acd319(22)
      acd319(140)=-acd319(141)-acd319(142)-acd319(143)-acd319(144)-acd319(146)-&
      &acd319(140)+acd319(148)-acd319(149)
      acd319(127)=acd319(35)*acd319(127)
      acd319(141)=acd319(35)*acd319(16)
      acd319(141)=-acd319(52)+acd319(141)
      acd319(141)=acd319(20)*acd319(141)
      acd319(142)=-acd319(35)*acd319(3)
      acd319(142)=acd319(36)+acd319(142)
      acd319(142)=acd319(1)*acd319(142)
      acd319(127)=acd319(142)+acd319(141)+acd319(127)-acd319(140)
      acd319(127)=acd319(1)*acd319(127)
      acd319(124)=-acd319(129)+acd319(124)
      acd319(124)=acd319(35)*acd319(124)
      acd319(129)=acd319(52)*acd319(126)
      acd319(141)=acd319(30)*acd319(147)
      acd319(142)=acd319(21)*acd319(88)
      acd319(143)=acd319(19)*acd319(86)
      acd319(144)=acd319(10)*acd319(66)
      acd319(124)=acd319(124)+acd319(144)+acd319(143)+acd319(141)+acd319(142)+a&
      &cd319(129)
      acd319(124)=acd319(20)*acd319(124)
      acd319(129)=acd319(42)*acd319(55)
      acd319(141)=acd319(31)*acd319(57)
      acd319(142)=acd319(147)*acd319(23)
      acd319(129)=acd319(142)+acd319(129)-acd319(141)
      acd319(129)=acd319(129)*acd319(126)
      acd319(141)=acd319(42)*acd319(64)
      acd319(142)=acd319(33)*acd319(147)
      acd319(143)=acd319(31)*acd319(89)
      acd319(141)=acd319(143)+acd319(141)+acd319(142)
      acd319(141)=acd319(21)*acd319(141)
      acd319(142)=acd319(42)*acd319(63)
      acd319(143)=acd319(29)*acd319(147)
      acd319(144)=acd319(31)*acd319(87)
      acd319(142)=acd319(144)+acd319(142)+acd319(143)
      acd319(142)=acd319(19)*acd319(142)
      acd319(143)=acd319(42)*acd319(62)
      acd319(144)=acd319(25)*acd319(147)
      acd319(146)=acd319(31)*acd319(67)
      acd319(143)=acd319(146)+acd319(143)+acd319(144)
      acd319(143)=acd319(10)*acd319(143)
      acd319(144)=-acd319(59)*acd319(145)
      acd319(145)=acd319(32)*acd319(147)
      acd319(144)=acd319(145)+acd319(144)
      acd319(144)=acd319(31)*acd319(144)
      acd319(124)=acd319(136)+acd319(127)+acd319(124)+acd319(143)+acd319(142)+a&
      &cd319(144)+acd319(141)+acd319(129)
      acd319(121)=ninjaP*acd319(121)
      acd319(127)=-acd319(133)+acd319(131)
      acd319(127)=acd319(34)*acd319(127)
      acd319(129)=acd319(47)*acd319(137)
      acd319(131)=-acd319(138)*acd319(132)
      acd319(132)=acd319(91)+acd319(90)
      acd319(133)=acd319(58)*acd319(132)
      acd319(136)=acd319(56)*acd319(134)
      acd319(137)=acd319(85)*acd319(107)
      acd319(141)=acd319(83)*acd319(106)
      acd319(142)=acd319(81)*acd319(105)
      acd319(143)=acd319(79)*acd319(104)
      acd319(144)=acd319(76)*acd319(103)
      acd319(145)=acd319(74)*acd319(102)
      acd319(146)=acd319(71)*acd319(101)
      acd319(148)=acd319(61)*acd319(97)
      acd319(149)=acd319(92)*acd319(28)
      acd319(150)=acd319(93)*acd319(72)
      acd319(151)=acd319(48)*acd319(77)
      acd319(152)=acd319(46)*acd319(68)
      acd319(153)=acd319(45)*acd319(65)
      acd319(121)=acd319(131)+acd319(127)+acd319(129)+acd319(153)+acd319(152)+a&
      &cd319(151)+acd319(150)+acd319(149)+acd319(148)+acd319(146)+acd319(145)+a&
      &cd319(144)+acd319(143)+acd319(142)+acd319(141)+acd319(109)+acd319(137)+a&
      &cd319(121)+acd319(136)+acd319(133)
      acd319(121)=acd319(5)*acd319(121)
      acd319(127)=acd319(35)*acd319(130)
      acd319(129)=acd319(35)*acd319(135)
      acd319(128)=ninjaP*acd319(128)
      acd319(130)=-acd319(38)*acd319(134)
      acd319(131)=acd319(47)*acd319(52)
      acd319(133)=acd319(41)*acd319(90)
      acd319(135)=acd319(91)*acd319(43)
      acd319(136)=acd319(92)*acd319(22)
      acd319(137)=acd319(93)*acd319(53)
      acd319(141)=acd319(48)*acd319(54)
      acd319(142)=acd319(46)*acd319(51)
      acd319(143)=acd319(45)*acd319(49)
      acd319(144)=acd319(34)*acd319(36)
      acd319(128)=acd319(129)+2.0_ki*acd319(144)-acd319(131)+acd319(143)+acd319&
      &(142)+acd319(141)+acd319(137)+acd319(136)+acd319(135)+acd319(94)+acd319(&
      &133)+acd319(128)+acd319(130)
      acd319(128)=acd319(1)*acd319(128)
      acd319(129)=-acd319(34)*acd319(140)
      acd319(125)=ninjaP*acd319(125)
      acd319(130)=-acd319(35)*acd319(139)
      acd319(133)=acd319(52)*acd319(138)
      acd319(135)=acd319(92)*acd319(30)
      acd319(136)=acd319(48)*acd319(88)
      acd319(137)=acd319(46)*acd319(86)
      acd319(138)=acd319(45)*acd319(66)
      acd319(125)=acd319(130)+acd319(125)+acd319(138)+acd319(137)+acd319(136)+a&
      &cd319(111)+acd319(135)+acd319(133)
      acd319(125)=acd319(20)*acd319(125)
      acd319(130)=acd319(23)*acd319(134)
      acd319(133)=acd319(93)*acd319(32)
      acd319(135)=acd319(48)*acd319(33)
      acd319(136)=acd319(46)*acd319(29)
      acd319(137)=acd319(45)*acd319(25)
      acd319(138)=acd319(47)*acd319(30)
      acd319(130)=acd319(138)+acd319(137)+acd319(136)+acd319(135)+acd319(100)+a&
      &cd319(133)+acd319(130)
      acd319(130)=acd319(147)*acd319(130)
      acd319(132)=-acd319(59)*acd319(132)
      acd319(133)=-acd319(57)*acd319(134)
      acd319(135)=acd319(92)*acd319(32)
      acd319(136)=acd319(48)*acd319(89)
      acd319(137)=acd319(46)*acd319(87)
      acd319(138)=acd319(45)*acd319(67)
      acd319(132)=acd319(138)+acd319(137)+acd319(136)+acd319(135)+acd319(113)+a&
      &cd319(133)+acd319(132)
      acd319(132)=acd319(31)*acd319(132)
      acd319(133)=acd319(93)*acd319(59)
      acd319(134)=acd319(55)*acd319(134)
      acd319(135)=acd319(48)*acd319(64)
      acd319(136)=acd319(46)*acd319(63)
      acd319(137)=acd319(45)*acd319(62)
      acd319(134)=acd319(137)+acd319(136)+acd319(135)+acd319(99)-acd319(133)+ac&
      &d319(134)
      acd319(134)=acd319(42)*acd319(134)
      acd319(123)=ninjaP*acd319(123)
      acd319(135)=acd319(91)*acd319(55)
      acd319(136)=acd319(93)*acd319(57)
      acd319(137)=acd319(23)*acd319(92)
      acd319(131)=-acd319(135)-acd319(131)+acd319(95)+acd319(136)-acd319(137)
      acd319(126)=-acd319(131)*acd319(126)
      acd319(131)=acd319(91)*acd319(64)
      acd319(135)=acd319(92)*acd319(33)
      acd319(136)=acd319(93)*acd319(89)
      acd319(137)=acd319(47)*acd319(88)
      acd319(131)=acd319(137)+acd319(136)+acd319(135)+acd319(116)+acd319(131)
      acd319(131)=acd319(21)*acd319(131)
      acd319(135)=acd319(91)*acd319(63)
      acd319(136)=acd319(92)*acd319(29)
      acd319(137)=acd319(93)*acd319(87)
      acd319(138)=acd319(47)*acd319(86)
      acd319(135)=acd319(138)+acd319(137)+acd319(136)+acd319(110)+acd319(135)
      acd319(135)=acd319(19)*acd319(135)
      acd319(136)=acd319(91)*acd319(62)
      acd319(137)=acd319(92)*acd319(25)
      acd319(138)=acd319(93)*acd319(67)
      acd319(139)=acd319(47)*acd319(66)
      acd319(136)=acd319(139)+acd319(138)+acd319(137)+acd319(108)+acd319(136)
      acd319(136)=acd319(10)*acd319(136)
      acd319(133)=-acd319(133)+acd319(96)
      acd319(133)=acd319(40)*acd319(133)
      acd319(137)=acd319(84)*acd319(120)
      acd319(138)=acd319(82)*acd319(119)
      acd319(139)=acd319(80)*acd319(118)
      acd319(140)=acd319(78)*acd319(117)
      acd319(141)=acd319(75)*acd319(115)
      acd319(142)=acd319(73)*acd319(114)
      acd319(143)=acd319(70)*acd319(112)
      acd319(144)=acd319(60)*acd319(98)
      acd319(121)=acd319(121)+acd319(128)+acd319(125)+acd319(127)+acd319(123)+a&
      &cd319(129)+acd319(136)+acd319(135)+acd319(131)+acd319(132)+acd319(134)+a&
      &cd319(144)+acd319(143)+acd319(142)+acd319(141)+acd319(140)+acd319(139)+a&
      &cd319(137)+acd319(138)+acd319(130)+acd319(133)+acd319(126)
      brack(ninjaidxt1mu0)=acd319(124)
      brack(ninjaidxt0mu0)=acd319(121)
      brack(ninjaidxt0mu2)=acd319(122)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d319h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd319h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6
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
end module     p0_dbaru_epnebbbarg_d319h6l131
