module     p0_dbaru_epnebbbarg_d24h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d24h2l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d24
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd24h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(151) :: acd24
      complex(ki) :: brack
      acd24(1)=dotproduct(k1,qshift)
      acd24(2)=dotproduct(k2,qshift)
      acd24(3)=abb24(325)
      acd24(4)=dotproduct(qshift,spval5l6)
      acd24(5)=abb24(21)
      acd24(6)=abb24(28)
      acd24(7)=dotproduct(k3,qshift)
      acd24(8)=abb24(367)
      acd24(9)=dotproduct(k4,qshift)
      acd24(10)=dotproduct(l5,qshift)
      acd24(11)=abb24(278)
      acd24(12)=dotproduct(l6,qshift)
      acd24(13)=dotproduct(k7,qshift)
      acd24(14)=abb24(348)
      acd24(15)=dotproduct(e7,qshift)
      acd24(16)=abb24(121)
      acd24(17)=abb24(20)
      acd24(18)=dotproduct(qshift,spvak1k2)
      acd24(19)=abb24(34)
      acd24(20)=dotproduct(qshift,spvak1k3)
      acd24(21)=abb24(39)
      acd24(22)=dotproduct(qshift,spvak1l5)
      acd24(23)=abb24(22)
      acd24(24)=dotproduct(qshift,spvak1l6)
      acd24(25)=abb24(42)
      acd24(26)=dotproduct(qshift,spvak1k7)
      acd24(27)=abb24(62)
      acd24(28)=dotproduct(qshift,spvak4k2)
      acd24(29)=abb24(73)
      acd24(30)=dotproduct(qshift,spvak4k3)
      acd24(31)=abb24(83)
      acd24(32)=dotproduct(qshift,spvak4k7)
      acd24(33)=abb24(69)
      acd24(34)=dotproduct(qshift,spval5k2)
      acd24(35)=abb24(61)
      acd24(36)=dotproduct(qshift,spval6k2)
      acd24(37)=abb24(248)
      acd24(38)=dotproduct(qshift,spvak7k2)
      acd24(39)=abb24(301)
      acd24(40)=dotproduct(qshift,spvak7k3)
      acd24(41)=abb24(271)
      acd24(42)=dotproduct(qshift,spvae7k2)
      acd24(43)=abb24(56)
      acd24(44)=abb24(25)
      acd24(45)=abb24(36)
      acd24(46)=abb24(30)
      acd24(47)=abb24(19)
      acd24(48)=abb24(16)
      acd24(49)=abb24(35)
      acd24(50)=abb24(18)
      acd24(51)=dotproduct(qshift,qshift)
      acd24(52)=abb24(100)
      acd24(53)=abb24(26)
      acd24(54)=abb24(41)
      acd24(55)=abb24(27)
      acd24(56)=abb24(59)
      acd24(57)=abb24(60)
      acd24(58)=abb24(33)
      acd24(59)=abb24(23)
      acd24(60)=abb24(67)
      acd24(61)=abb24(54)
      acd24(62)=abb24(49)
      acd24(63)=abb24(47)
      acd24(64)=abb24(48)
      acd24(65)=abb24(29)
      acd24(66)=abb24(15)
      acd24(67)=abb24(24)
      acd24(68)=abb24(17)
      acd24(69)=abb24(53)
      acd24(70)=abb24(72)
      acd24(71)=abb24(50)
      acd24(72)=abb24(124)
      acd24(73)=abb24(220)
      acd24(74)=abb24(44)
      acd24(75)=dotproduct(qshift,spvak2k1)
      acd24(76)=abb24(55)
      acd24(77)=dotproduct(qshift,spvak2k3)
      acd24(78)=abb24(52)
      acd24(79)=dotproduct(qshift,spvak2l5)
      acd24(80)=abb24(31)
      acd24(81)=dotproduct(qshift,spvak2l6)
      acd24(82)=abb24(37)
      acd24(83)=dotproduct(qshift,spvak2k7)
      acd24(84)=abb24(40)
      acd24(85)=dotproduct(qshift,spvak4l5)
      acd24(86)=abb24(66)
      acd24(87)=dotproduct(qshift,spvak4l6)
      acd24(88)=abb24(64)
      acd24(89)=dotproduct(qshift,spval5k1)
      acd24(90)=abb24(32)
      acd24(91)=dotproduct(qshift,spval5k3)
      acd24(92)=abb24(57)
      acd24(93)=dotproduct(qshift,spval5k7)
      acd24(94)=abb24(105)
      acd24(95)=dotproduct(qshift,spval6k1)
      acd24(96)=abb24(117)
      acd24(97)=dotproduct(qshift,spval6k3)
      acd24(98)=abb24(92)
      acd24(99)=dotproduct(qshift,spval6l5)
      acd24(100)=abb24(51)
      acd24(101)=dotproduct(qshift,spval6k7)
      acd24(102)=abb24(312)
      acd24(103)=dotproduct(qshift,spvak7l5)
      acd24(104)=abb24(204)
      acd24(105)=dotproduct(qshift,spvak7l6)
      acd24(106)=abb24(206)
      acd24(107)=dotproduct(qshift,spvak2e7)
      acd24(108)=abb24(99)
      acd24(109)=dotproduct(qshift,spval5e7)
      acd24(110)=abb24(191)
      acd24(111)=dotproduct(qshift,spvae7l5)
      acd24(112)=abb24(141)
      acd24(113)=dotproduct(qshift,spval6e7)
      acd24(114)=abb24(149)
      acd24(115)=dotproduct(qshift,spvae7l6)
      acd24(116)=abb24(308)
      acd24(117)=abb24(291)
      acd24(118)=acd24(10)+acd24(12)
      acd24(119)=acd24(11)*acd24(118)
      acd24(120)=acd24(7)+acd24(9)
      acd24(121)=-acd24(8)*acd24(120)
      acd24(122)=acd24(40)*acd24(41)
      acd24(123)=acd24(32)*acd24(33)
      acd24(124)=acd24(30)*acd24(31)
      acd24(125)=acd24(26)*acd24(27)
      acd24(126)=acd24(20)*acd24(21)
      acd24(127)=acd24(15)*acd24(16)
      acd24(128)=acd24(13)*acd24(14)
      acd24(129)=acd24(1)*acd24(3)
      acd24(130)=acd24(42)*acd24(43)
      acd24(131)=acd24(38)*acd24(39)
      acd24(132)=acd24(36)*acd24(37)
      acd24(133)=acd24(34)*acd24(35)
      acd24(134)=acd24(28)*acd24(29)
      acd24(135)=acd24(24)*acd24(25)
      acd24(136)=acd24(22)*acd24(23)
      acd24(137)=acd24(18)*acd24(19)
      acd24(138)=acd24(4)*acd24(17)
      acd24(139)=acd24(2)*acd24(6)
      acd24(119)=acd24(139)+acd24(138)+acd24(137)+acd24(136)+acd24(135)+acd24(1&
      &34)+acd24(133)+acd24(132)+acd24(131)+acd24(130)+acd24(129)+acd24(128)+ac&
      &d24(127)+acd24(126)+acd24(125)+acd24(124)+acd24(123)-acd24(44)+acd24(122&
      &)+acd24(121)+acd24(119)
      acd24(119)=acd24(2)*acd24(119)
      acd24(118)=-acd24(46)*acd24(118)
      acd24(120)=acd24(45)*acd24(120)
      acd24(121)=acd24(40)*acd24(64)
      acd24(122)=acd24(32)*acd24(60)
      acd24(123)=acd24(30)*acd24(59)
      acd24(124)=acd24(26)*acd24(57)
      acd24(125)=acd24(20)*acd24(54)
      acd24(126)=acd24(15)*acd24(50)
      acd24(127)=acd24(13)*acd24(49)
      acd24(128)=acd24(1)*acd24(5)
      acd24(129)=acd24(42)*acd24(65)
      acd24(130)=acd24(38)*acd24(63)
      acd24(131)=acd24(36)*acd24(62)
      acd24(132)=acd24(34)*acd24(61)
      acd24(133)=acd24(28)*acd24(58)
      acd24(134)=acd24(24)*acd24(56)
      acd24(135)=acd24(22)*acd24(55)
      acd24(136)=acd24(18)*acd24(53)
      acd24(118)=acd24(136)+acd24(135)+acd24(134)+acd24(133)+acd24(132)+acd24(1&
      &31)+acd24(130)+acd24(129)+acd24(128)+acd24(127)+acd24(126)+acd24(125)+ac&
      &d24(124)+acd24(123)+acd24(122)-acd24(66)+acd24(121)+acd24(120)+acd24(118)
      acd24(118)=acd24(4)*acd24(118)
      acd24(120)=-acd24(115)*acd24(116)
      acd24(121)=-acd24(113)*acd24(114)
      acd24(122)=-acd24(111)*acd24(112)
      acd24(123)=-acd24(109)*acd24(110)
      acd24(124)=-acd24(107)*acd24(108)
      acd24(125)=-acd24(105)*acd24(106)
      acd24(126)=-acd24(103)*acd24(104)
      acd24(127)=-acd24(101)*acd24(102)
      acd24(128)=-acd24(99)*acd24(100)
      acd24(129)=-acd24(97)*acd24(98)
      acd24(130)=-acd24(95)*acd24(96)
      acd24(131)=-acd24(93)*acd24(94)
      acd24(132)=-acd24(91)*acd24(92)
      acd24(133)=-acd24(89)*acd24(90)
      acd24(134)=-acd24(87)*acd24(88)
      acd24(135)=-acd24(85)*acd24(86)
      acd24(136)=-acd24(83)*acd24(84)
      acd24(137)=-acd24(81)*acd24(82)
      acd24(138)=-acd24(79)*acd24(80)
      acd24(139)=-acd24(77)*acd24(78)
      acd24(140)=-acd24(75)*acd24(76)
      acd24(141)=acd24(51)*acd24(52)
      acd24(142)=-acd24(42)*acd24(74)
      acd24(143)=-acd24(38)*acd24(73)
      acd24(144)=-acd24(36)*acd24(72)
      acd24(145)=-acd24(34)*acd24(71)
      acd24(146)=-acd24(28)*acd24(70)
      acd24(147)=-acd24(24)*acd24(69)
      acd24(148)=-acd24(22)*acd24(68)
      acd24(149)=-acd24(18)*acd24(67)
      acd24(150)=-acd24(12)*acd24(48)
      acd24(151)=-acd24(10)*acd24(47)
      brack=acd24(117)+acd24(118)+acd24(119)+acd24(120)+acd24(121)+acd24(122)+a&
      &cd24(123)+acd24(124)+acd24(125)+acd24(126)+acd24(127)+acd24(128)+acd24(1&
      &29)+acd24(130)+acd24(131)+acd24(132)+acd24(133)+acd24(134)+acd24(135)+ac&
      &d24(136)+acd24(137)+acd24(138)+acd24(139)+acd24(140)+acd24(141)+acd24(14&
      &2)+acd24(143)+acd24(144)+acd24(145)+acd24(146)+acd24(147)+acd24(148)+acd&
      &24(149)+acd24(150)+acd24(151)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd24h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(174) :: acd24
      complex(ki) :: brack
      acd24(1)=k1(iv1)
      acd24(2)=dotproduct(k2,qshift)
      acd24(3)=abb24(325)
      acd24(4)=dotproduct(qshift,spval5l6)
      acd24(5)=abb24(21)
      acd24(6)=k2(iv1)
      acd24(7)=dotproduct(k1,qshift)
      acd24(8)=abb24(28)
      acd24(9)=dotproduct(k3,qshift)
      acd24(10)=abb24(367)
      acd24(11)=dotproduct(k4,qshift)
      acd24(12)=dotproduct(l5,qshift)
      acd24(13)=abb24(278)
      acd24(14)=dotproduct(l6,qshift)
      acd24(15)=dotproduct(k7,qshift)
      acd24(16)=abb24(348)
      acd24(17)=dotproduct(e7,qshift)
      acd24(18)=abb24(121)
      acd24(19)=abb24(20)
      acd24(20)=dotproduct(qshift,spvak1k2)
      acd24(21)=abb24(34)
      acd24(22)=dotproduct(qshift,spvak1k3)
      acd24(23)=abb24(39)
      acd24(24)=dotproduct(qshift,spvak1l5)
      acd24(25)=abb24(22)
      acd24(26)=dotproduct(qshift,spvak1l6)
      acd24(27)=abb24(42)
      acd24(28)=dotproduct(qshift,spvak1k7)
      acd24(29)=abb24(62)
      acd24(30)=dotproduct(qshift,spvak4k2)
      acd24(31)=abb24(73)
      acd24(32)=dotproduct(qshift,spvak4k3)
      acd24(33)=abb24(83)
      acd24(34)=dotproduct(qshift,spvak4k7)
      acd24(35)=abb24(69)
      acd24(36)=dotproduct(qshift,spval5k2)
      acd24(37)=abb24(61)
      acd24(38)=dotproduct(qshift,spval6k2)
      acd24(39)=abb24(248)
      acd24(40)=dotproduct(qshift,spvak7k2)
      acd24(41)=abb24(301)
      acd24(42)=dotproduct(qshift,spvak7k3)
      acd24(43)=abb24(271)
      acd24(44)=dotproduct(qshift,spvae7k2)
      acd24(45)=abb24(56)
      acd24(46)=abb24(25)
      acd24(47)=k3(iv1)
      acd24(48)=abb24(36)
      acd24(49)=k4(iv1)
      acd24(50)=l5(iv1)
      acd24(51)=abb24(30)
      acd24(52)=abb24(19)
      acd24(53)=l6(iv1)
      acd24(54)=abb24(16)
      acd24(55)=k7(iv1)
      acd24(56)=abb24(35)
      acd24(57)=e7(iv1)
      acd24(58)=abb24(18)
      acd24(59)=qshift(iv1)
      acd24(60)=abb24(100)
      acd24(61)=spval5l6(iv1)
      acd24(62)=abb24(26)
      acd24(63)=abb24(41)
      acd24(64)=abb24(27)
      acd24(65)=abb24(59)
      acd24(66)=abb24(60)
      acd24(67)=abb24(33)
      acd24(68)=abb24(23)
      acd24(69)=abb24(67)
      acd24(70)=abb24(54)
      acd24(71)=abb24(49)
      acd24(72)=abb24(47)
      acd24(73)=abb24(48)
      acd24(74)=abb24(29)
      acd24(75)=abb24(15)
      acd24(76)=spvak1k2(iv1)
      acd24(77)=abb24(24)
      acd24(78)=spvak1k3(iv1)
      acd24(79)=spvak1l5(iv1)
      acd24(80)=abb24(17)
      acd24(81)=spvak1l6(iv1)
      acd24(82)=abb24(53)
      acd24(83)=spvak1k7(iv1)
      acd24(84)=spvak4k2(iv1)
      acd24(85)=abb24(72)
      acd24(86)=spvak4k3(iv1)
      acd24(87)=spvak4k7(iv1)
      acd24(88)=spval5k2(iv1)
      acd24(89)=abb24(50)
      acd24(90)=spval6k2(iv1)
      acd24(91)=abb24(124)
      acd24(92)=spvak7k2(iv1)
      acd24(93)=abb24(220)
      acd24(94)=spvak7k3(iv1)
      acd24(95)=spvae7k2(iv1)
      acd24(96)=abb24(44)
      acd24(97)=spvak2k1(iv1)
      acd24(98)=abb24(55)
      acd24(99)=spvak2k3(iv1)
      acd24(100)=abb24(52)
      acd24(101)=spvak2l5(iv1)
      acd24(102)=abb24(31)
      acd24(103)=spvak2l6(iv1)
      acd24(104)=abb24(37)
      acd24(105)=spvak2k7(iv1)
      acd24(106)=abb24(40)
      acd24(107)=spvak4l5(iv1)
      acd24(108)=abb24(66)
      acd24(109)=spvak4l6(iv1)
      acd24(110)=abb24(64)
      acd24(111)=spval5k1(iv1)
      acd24(112)=abb24(32)
      acd24(113)=spval5k3(iv1)
      acd24(114)=abb24(57)
      acd24(115)=spval5k7(iv1)
      acd24(116)=abb24(105)
      acd24(117)=spval6k1(iv1)
      acd24(118)=abb24(117)
      acd24(119)=spval6k3(iv1)
      acd24(120)=abb24(92)
      acd24(121)=spval6l5(iv1)
      acd24(122)=abb24(51)
      acd24(123)=spval6k7(iv1)
      acd24(124)=abb24(312)
      acd24(125)=spvak7l5(iv1)
      acd24(126)=abb24(204)
      acd24(127)=spvak7l6(iv1)
      acd24(128)=abb24(206)
      acd24(129)=spvak2e7(iv1)
      acd24(130)=abb24(99)
      acd24(131)=spval5e7(iv1)
      acd24(132)=abb24(191)
      acd24(133)=spvae7l5(iv1)
      acd24(134)=abb24(141)
      acd24(135)=spval6e7(iv1)
      acd24(136)=abb24(149)
      acd24(137)=spvae7l6(iv1)
      acd24(138)=abb24(308)
      acd24(139)=-acd24(44)*acd24(45)
      acd24(140)=-acd24(42)*acd24(43)
      acd24(141)=-acd24(40)*acd24(41)
      acd24(142)=-acd24(38)*acd24(39)
      acd24(143)=-acd24(36)*acd24(37)
      acd24(144)=-acd24(34)*acd24(35)
      acd24(145)=-acd24(32)*acd24(33)
      acd24(146)=-acd24(30)*acd24(31)
      acd24(147)=-acd24(28)*acd24(29)
      acd24(148)=-acd24(26)*acd24(27)
      acd24(149)=-acd24(24)*acd24(25)
      acd24(150)=-acd24(22)*acd24(23)
      acd24(151)=-acd24(20)*acd24(21)
      acd24(152)=-acd24(17)*acd24(18)
      acd24(153)=-acd24(15)*acd24(16)
      acd24(154)=-acd24(3)*acd24(7)
      acd24(155)=acd24(12)+acd24(14)
      acd24(156)=-acd24(13)*acd24(155)
      acd24(157)=acd24(9)+acd24(11)
      acd24(158)=acd24(10)*acd24(157)
      acd24(159)=-acd24(4)*acd24(19)
      acd24(160)=acd24(2)*acd24(8)
      acd24(139)=-2.0_ki*acd24(160)+acd24(159)+acd24(158)+acd24(156)+acd24(154)&
      &+acd24(153)+acd24(152)+acd24(151)+acd24(150)+acd24(149)+acd24(148)+acd24&
      &(147)+acd24(146)+acd24(145)+acd24(144)+acd24(143)+acd24(142)+acd24(141)+&
      &acd24(140)+acd24(46)+acd24(139)
      acd24(139)=acd24(6)*acd24(139)
      acd24(140)=-acd24(43)*acd24(94)
      acd24(141)=-acd24(35)*acd24(87)
      acd24(142)=-acd24(33)*acd24(86)
      acd24(143)=-acd24(29)*acd24(83)
      acd24(144)=-acd24(23)*acd24(78)
      acd24(145)=-acd24(18)*acd24(57)
      acd24(146)=-acd24(16)*acd24(55)
      acd24(147)=-acd24(1)*acd24(3)
      acd24(148)=-acd24(95)*acd24(45)
      acd24(149)=-acd24(92)*acd24(41)
      acd24(150)=-acd24(90)*acd24(39)
      acd24(151)=-acd24(88)*acd24(37)
      acd24(152)=-acd24(84)*acd24(31)
      acd24(153)=-acd24(81)*acd24(27)
      acd24(154)=-acd24(79)*acd24(25)
      acd24(156)=-acd24(76)*acd24(21)
      acd24(158)=acd24(50)+acd24(53)
      acd24(159)=-acd24(13)*acd24(158)
      acd24(160)=acd24(47)+acd24(49)
      acd24(161)=acd24(10)*acd24(160)
      acd24(162)=-acd24(61)*acd24(19)
      acd24(140)=acd24(162)+acd24(161)+acd24(159)+acd24(156)+acd24(154)+acd24(1&
      &53)+acd24(152)+acd24(151)+acd24(150)+acd24(149)+acd24(148)+acd24(147)+ac&
      &d24(146)+acd24(145)+acd24(144)+acd24(143)+acd24(142)+acd24(140)+acd24(14&
      &1)
      acd24(140)=acd24(2)*acd24(140)
      acd24(141)=-acd24(73)*acd24(94)
      acd24(142)=-acd24(69)*acd24(87)
      acd24(143)=-acd24(68)*acd24(86)
      acd24(144)=-acd24(66)*acd24(83)
      acd24(145)=-acd24(63)*acd24(78)
      acd24(146)=-acd24(57)*acd24(58)
      acd24(147)=-acd24(55)*acd24(56)
      acd24(148)=-acd24(1)*acd24(5)
      acd24(149)=-acd24(95)*acd24(74)
      acd24(150)=-acd24(92)*acd24(72)
      acd24(151)=-acd24(90)*acd24(71)
      acd24(152)=-acd24(88)*acd24(70)
      acd24(153)=-acd24(84)*acd24(67)
      acd24(154)=-acd24(81)*acd24(65)
      acd24(156)=-acd24(79)*acd24(64)
      acd24(159)=-acd24(76)*acd24(62)
      acd24(158)=acd24(51)*acd24(158)
      acd24(160)=-acd24(48)*acd24(160)
      acd24(141)=acd24(160)+acd24(158)+acd24(159)+acd24(156)+acd24(154)+acd24(1&
      &53)+acd24(152)+acd24(151)+acd24(150)+acd24(149)+acd24(148)+acd24(147)+ac&
      &d24(146)+acd24(145)+acd24(144)+acd24(143)+acd24(141)+acd24(142)
      acd24(141)=acd24(4)*acd24(141)
      acd24(142)=-acd24(44)*acd24(74)
      acd24(143)=-acd24(42)*acd24(73)
      acd24(144)=-acd24(40)*acd24(72)
      acd24(145)=-acd24(38)*acd24(71)
      acd24(146)=-acd24(36)*acd24(70)
      acd24(147)=-acd24(34)*acd24(69)
      acd24(148)=-acd24(32)*acd24(68)
      acd24(149)=-acd24(30)*acd24(67)
      acd24(150)=-acd24(28)*acd24(66)
      acd24(151)=-acd24(26)*acd24(65)
      acd24(152)=-acd24(24)*acd24(64)
      acd24(153)=-acd24(22)*acd24(63)
      acd24(154)=-acd24(20)*acd24(62)
      acd24(156)=-acd24(17)*acd24(58)
      acd24(158)=-acd24(15)*acd24(56)
      acd24(159)=-acd24(5)*acd24(7)
      acd24(155)=acd24(51)*acd24(155)
      acd24(157)=-acd24(48)*acd24(157)
      acd24(142)=acd24(157)+acd24(155)+acd24(159)+acd24(158)+acd24(156)+acd24(1&
      &54)+acd24(153)+acd24(152)+acd24(151)+acd24(150)+acd24(149)+acd24(148)+ac&
      &d24(147)+acd24(146)+acd24(145)+acd24(144)+acd24(143)+acd24(75)+acd24(142)
      acd24(142)=acd24(61)*acd24(142)
      acd24(143)=acd24(137)*acd24(138)
      acd24(144)=acd24(135)*acd24(136)
      acd24(145)=acd24(133)*acd24(134)
      acd24(146)=acd24(131)*acd24(132)
      acd24(147)=acd24(129)*acd24(130)
      acd24(148)=acd24(127)*acd24(128)
      acd24(149)=acd24(125)*acd24(126)
      acd24(150)=acd24(123)*acd24(124)
      acd24(151)=acd24(121)*acd24(122)
      acd24(152)=acd24(119)*acd24(120)
      acd24(153)=acd24(117)*acd24(118)
      acd24(154)=acd24(115)*acd24(116)
      acd24(155)=acd24(113)*acd24(114)
      acd24(156)=acd24(111)*acd24(112)
      acd24(157)=acd24(109)*acd24(110)
      acd24(158)=acd24(107)*acd24(108)
      acd24(159)=acd24(105)*acd24(106)
      acd24(160)=acd24(103)*acd24(104)
      acd24(161)=acd24(101)*acd24(102)
      acd24(162)=acd24(99)*acd24(100)
      acd24(163)=acd24(97)*acd24(98)
      acd24(164)=acd24(59)*acd24(60)
      acd24(165)=acd24(95)*acd24(96)
      acd24(166)=acd24(92)*acd24(93)
      acd24(167)=acd24(90)*acd24(91)
      acd24(168)=acd24(88)*acd24(89)
      acd24(169)=acd24(84)*acd24(85)
      acd24(170)=acd24(81)*acd24(82)
      acd24(171)=acd24(79)*acd24(80)
      acd24(172)=acd24(76)*acd24(77)
      acd24(173)=acd24(53)*acd24(54)
      acd24(174)=acd24(50)*acd24(52)
      brack=acd24(139)+acd24(140)+acd24(141)+acd24(142)+acd24(143)+acd24(144)+a&
      &cd24(145)+acd24(146)+acd24(147)+acd24(148)+acd24(149)+acd24(150)+acd24(1&
      &51)+acd24(152)+acd24(153)+acd24(154)+acd24(155)+acd24(156)+acd24(157)+ac&
      &d24(158)+acd24(159)+acd24(160)+acd24(161)+acd24(162)+acd24(163)-2.0_ki*a&
      &cd24(164)+acd24(165)+acd24(166)+acd24(167)+acd24(168)+acd24(169)+acd24(1&
      &70)+acd24(171)+acd24(172)+acd24(173)+acd24(174)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd24h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(108) :: acd24
      complex(ki) :: brack
      acd24(1)=d(iv1,iv2)
      acd24(2)=abb24(100)
      acd24(3)=k1(iv1)
      acd24(4)=k2(iv2)
      acd24(5)=abb24(325)
      acd24(6)=spval5l6(iv2)
      acd24(7)=abb24(21)
      acd24(8)=k1(iv2)
      acd24(9)=k2(iv1)
      acd24(10)=spval5l6(iv1)
      acd24(11)=abb24(28)
      acd24(12)=k3(iv2)
      acd24(13)=abb24(367)
      acd24(14)=k4(iv2)
      acd24(15)=l5(iv2)
      acd24(16)=abb24(278)
      acd24(17)=l6(iv2)
      acd24(18)=k7(iv2)
      acd24(19)=abb24(348)
      acd24(20)=e7(iv2)
      acd24(21)=abb24(121)
      acd24(22)=abb24(20)
      acd24(23)=spvak1k2(iv2)
      acd24(24)=abb24(34)
      acd24(25)=spvak1k3(iv2)
      acd24(26)=abb24(39)
      acd24(27)=spvak1l5(iv2)
      acd24(28)=abb24(22)
      acd24(29)=spvak1l6(iv2)
      acd24(30)=abb24(42)
      acd24(31)=spvak1k7(iv2)
      acd24(32)=abb24(62)
      acd24(33)=spvak4k2(iv2)
      acd24(34)=abb24(73)
      acd24(35)=spvak4k3(iv2)
      acd24(36)=abb24(83)
      acd24(37)=spvak4k7(iv2)
      acd24(38)=abb24(69)
      acd24(39)=spval5k2(iv2)
      acd24(40)=abb24(61)
      acd24(41)=spval6k2(iv2)
      acd24(42)=abb24(248)
      acd24(43)=spvak7k2(iv2)
      acd24(44)=abb24(301)
      acd24(45)=spvak7k3(iv2)
      acd24(46)=abb24(271)
      acd24(47)=spvae7k2(iv2)
      acd24(48)=abb24(56)
      acd24(49)=k3(iv1)
      acd24(50)=k4(iv1)
      acd24(51)=l5(iv1)
      acd24(52)=l6(iv1)
      acd24(53)=k7(iv1)
      acd24(54)=e7(iv1)
      acd24(55)=spvak1k2(iv1)
      acd24(56)=spvak1k3(iv1)
      acd24(57)=spvak1l5(iv1)
      acd24(58)=spvak1l6(iv1)
      acd24(59)=spvak1k7(iv1)
      acd24(60)=spvak4k2(iv1)
      acd24(61)=spvak4k3(iv1)
      acd24(62)=spvak4k7(iv1)
      acd24(63)=spval5k2(iv1)
      acd24(64)=spval6k2(iv1)
      acd24(65)=spvak7k2(iv1)
      acd24(66)=spvak7k3(iv1)
      acd24(67)=spvae7k2(iv1)
      acd24(68)=abb24(36)
      acd24(69)=abb24(30)
      acd24(70)=abb24(35)
      acd24(71)=abb24(18)
      acd24(72)=abb24(26)
      acd24(73)=abb24(41)
      acd24(74)=abb24(27)
      acd24(75)=abb24(59)
      acd24(76)=abb24(60)
      acd24(77)=abb24(33)
      acd24(78)=abb24(23)
      acd24(79)=abb24(67)
      acd24(80)=abb24(54)
      acd24(81)=abb24(49)
      acd24(82)=abb24(47)
      acd24(83)=abb24(48)
      acd24(84)=abb24(29)
      acd24(85)=acd24(48)*acd24(67)
      acd24(86)=acd24(46)*acd24(66)
      acd24(87)=acd24(44)*acd24(65)
      acd24(88)=acd24(42)*acd24(64)
      acd24(89)=acd24(40)*acd24(63)
      acd24(90)=acd24(38)*acd24(62)
      acd24(91)=acd24(36)*acd24(61)
      acd24(92)=acd24(34)*acd24(60)
      acd24(93)=acd24(32)*acd24(59)
      acd24(94)=acd24(30)*acd24(58)
      acd24(95)=acd24(28)*acd24(57)
      acd24(96)=acd24(26)*acd24(56)
      acd24(97)=acd24(24)*acd24(55)
      acd24(98)=acd24(21)*acd24(54)
      acd24(99)=acd24(19)*acd24(53)
      acd24(100)=acd24(3)*acd24(5)
      acd24(101)=acd24(51)+acd24(52)
      acd24(102)=acd24(16)*acd24(101)
      acd24(103)=acd24(49)+acd24(50)
      acd24(104)=-acd24(13)*acd24(103)
      acd24(105)=acd24(10)*acd24(22)
      acd24(106)=acd24(9)*acd24(11)
      acd24(85)=2.0_ki*acd24(106)+acd24(105)+acd24(104)+acd24(102)+acd24(100)+a&
      &cd24(99)+acd24(98)+acd24(97)+acd24(96)+acd24(95)+acd24(94)+acd24(93)+acd&
      &24(92)+acd24(91)+acd24(90)+acd24(89)+acd24(88)+acd24(87)+acd24(85)+acd24&
      &(86)
      acd24(85)=acd24(4)*acd24(85)
      acd24(86)=acd24(47)*acd24(48)
      acd24(87)=acd24(45)*acd24(46)
      acd24(88)=acd24(43)*acd24(44)
      acd24(89)=acd24(41)*acd24(42)
      acd24(90)=acd24(39)*acd24(40)
      acd24(91)=acd24(37)*acd24(38)
      acd24(92)=acd24(35)*acd24(36)
      acd24(93)=acd24(33)*acd24(34)
      acd24(94)=acd24(31)*acd24(32)
      acd24(95)=acd24(29)*acd24(30)
      acd24(96)=acd24(27)*acd24(28)
      acd24(97)=acd24(25)*acd24(26)
      acd24(98)=acd24(23)*acd24(24)
      acd24(99)=acd24(20)*acd24(21)
      acd24(100)=acd24(18)*acd24(19)
      acd24(102)=acd24(5)*acd24(8)
      acd24(104)=acd24(15)+acd24(17)
      acd24(105)=acd24(16)*acd24(104)
      acd24(106)=acd24(12)+acd24(14)
      acd24(107)=-acd24(13)*acd24(106)
      acd24(108)=acd24(6)*acd24(22)
      acd24(86)=acd24(108)+acd24(107)+acd24(105)+acd24(102)+acd24(100)+acd24(99&
      &)+acd24(98)+acd24(97)+acd24(96)+acd24(95)+acd24(94)+acd24(93)+acd24(92)+&
      &acd24(91)+acd24(90)+acd24(89)+acd24(88)+acd24(86)+acd24(87)
      acd24(86)=acd24(9)*acd24(86)
      acd24(87)=acd24(47)*acd24(84)
      acd24(88)=acd24(45)*acd24(83)
      acd24(89)=acd24(43)*acd24(82)
      acd24(90)=acd24(41)*acd24(81)
      acd24(91)=acd24(39)*acd24(80)
      acd24(92)=acd24(37)*acd24(79)
      acd24(93)=acd24(35)*acd24(78)
      acd24(94)=acd24(33)*acd24(77)
      acd24(95)=acd24(31)*acd24(76)
      acd24(96)=acd24(29)*acd24(75)
      acd24(97)=acd24(27)*acd24(74)
      acd24(98)=acd24(25)*acd24(73)
      acd24(99)=acd24(23)*acd24(72)
      acd24(100)=acd24(20)*acd24(71)
      acd24(102)=acd24(18)*acd24(70)
      acd24(105)=acd24(7)*acd24(8)
      acd24(104)=-acd24(69)*acd24(104)
      acd24(106)=acd24(68)*acd24(106)
      acd24(87)=acd24(106)+acd24(104)+acd24(105)+acd24(102)+acd24(100)+acd24(99&
      &)+acd24(98)+acd24(97)+acd24(96)+acd24(95)+acd24(94)+acd24(93)+acd24(92)+&
      &acd24(91)+acd24(90)+acd24(89)+acd24(87)+acd24(88)
      acd24(87)=acd24(10)*acd24(87)
      acd24(88)=acd24(67)*acd24(84)
      acd24(89)=acd24(66)*acd24(83)
      acd24(90)=acd24(65)*acd24(82)
      acd24(91)=acd24(64)*acd24(81)
      acd24(92)=acd24(63)*acd24(80)
      acd24(93)=acd24(62)*acd24(79)
      acd24(94)=acd24(61)*acd24(78)
      acd24(95)=acd24(60)*acd24(77)
      acd24(96)=acd24(59)*acd24(76)
      acd24(97)=acd24(58)*acd24(75)
      acd24(98)=acd24(57)*acd24(74)
      acd24(99)=acd24(56)*acd24(73)
      acd24(100)=acd24(55)*acd24(72)
      acd24(102)=acd24(54)*acd24(71)
      acd24(104)=acd24(53)*acd24(70)
      acd24(105)=acd24(3)*acd24(7)
      acd24(101)=-acd24(69)*acd24(101)
      acd24(103)=acd24(68)*acd24(103)
      acd24(88)=acd24(103)+acd24(101)+acd24(105)+acd24(104)+acd24(102)+acd24(10&
      &0)+acd24(99)+acd24(98)+acd24(97)+acd24(96)+acd24(95)+acd24(94)+acd24(93)&
      &+acd24(92)+acd24(91)+acd24(90)+acd24(88)+acd24(89)
      acd24(88)=acd24(6)*acd24(88)
      acd24(89)=acd24(1)*acd24(2)
      brack=acd24(85)+acd24(86)+acd24(87)+acd24(88)+2.0_ki*acd24(89)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd24h2
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k6+k5
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
      end if
      if(present(i2)) then
          iv2=i2
          deg=2
      else
          iv2=1
      end if
      t1 = 0
      if(deg.eq.0) then
         numerator = cond(epspow.eq.t1,brack_1,Q,mu2)
         return
      end if
      if(deg.eq.1) then
         numerator = cond(epspow.eq.t1,brack_2,Q,mu2)
         return
      end if
      if(deg.eq.2) then
         numerator = cond(epspow.eq.t1,brack_3,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d24:
   subroutine     reconstruct_d24(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_24:
      coeffs%coeffs_24%c0 = derivative(czip)
      coeffs%coeffs_24%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_24%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_24%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_24%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_24%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_24%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_24%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_24%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_24%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_24%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_24%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_24%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_24%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_24%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_24:
   end subroutine reconstruct_d24
!---#] subroutine reconstruct_d24:
end module     p0_dbaru_epnebbbarg_d24h2l1d
