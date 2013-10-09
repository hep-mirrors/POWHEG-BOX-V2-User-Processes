module     p0_dbaru_epnebbbarg_d122h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d122h0l1d.f90
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
   public :: derivative , reconstruct_d122
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd122h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(156) :: acd122
      complex(ki) :: brack
      acd122(1)=dotproduct(k2,qshift)
      acd122(2)=abb122(25)
      acd122(3)=dotproduct(k3,qshift)
      acd122(4)=dotproduct(k4,qshift)
      acd122(5)=dotproduct(l6,qshift)
      acd122(6)=abb122(86)
      acd122(7)=dotproduct(k7,qshift)
      acd122(8)=dotproduct(e7,qshift)
      acd122(9)=abb122(30)
      acd122(10)=dotproduct(qshift,spvak4k2)
      acd122(11)=abb122(38)
      acd122(12)=dotproduct(qshift,spvak4k3)
      acd122(13)=abb122(71)
      acd122(14)=dotproduct(qshift,spvak4l6)
      acd122(15)=abb122(147)
      acd122(16)=dotproduct(qshift,spvak4k7)
      acd122(17)=abb122(146)
      acd122(18)=dotproduct(qshift,spvak1e7)
      acd122(19)=abb122(88)
      acd122(20)=dotproduct(qshift,spvae7k2)
      acd122(21)=abb122(103)
      acd122(22)=dotproduct(qshift,spvae7k3)
      acd122(23)=abb122(127)
      acd122(24)=dotproduct(qshift,spvak4e7)
      acd122(25)=abb122(123)
      acd122(26)=dotproduct(qshift,spval6e7)
      acd122(27)=abb122(81)
      acd122(28)=abb122(19)
      acd122(29)=abb122(42)
      acd122(30)=abb122(22)
      acd122(31)=abb122(13)
      acd122(32)=abb122(67)
      acd122(33)=abb122(110)
      acd122(34)=abb122(72)
      acd122(35)=abb122(126)
      acd122(36)=abb122(78)
      acd122(37)=abb122(10)
      acd122(38)=abb122(29)
      acd122(39)=dotproduct(qshift,spvak1k2)
      acd122(40)=abb122(33)
      acd122(41)=dotproduct(qshift,spvak1k7)
      acd122(42)=abb122(40)
      acd122(43)=dotproduct(qshift,spval6k2)
      acd122(44)=abb122(52)
      acd122(45)=dotproduct(qshift,spval6k3)
      acd122(46)=abb122(144)
      acd122(47)=dotproduct(qshift,spvak7k2)
      acd122(48)=abb122(68)
      acd122(49)=dotproduct(qshift,spvak7k3)
      acd122(50)=abb122(140)
      acd122(51)=abb122(64)
      acd122(52)=dotproduct(qshift,qshift)
      acd122(53)=abb122(85)
      acd122(54)=abb122(32)
      acd122(55)=abb122(36)
      acd122(56)=abb122(23)
      acd122(57)=abb122(31)
      acd122(58)=abb122(17)
      acd122(59)=abb122(26)
      acd122(60)=abb122(16)
      acd122(61)=dotproduct(qshift,spvak2l6)
      acd122(62)=abb122(44)
      acd122(63)=dotproduct(qshift,spvak2k7)
      acd122(64)=abb122(43)
      acd122(65)=dotproduct(qshift,spvak2e7)
      acd122(66)=abb122(47)
      acd122(67)=abb122(12)
      acd122(68)=abb122(37)
      acd122(69)=abb122(53)
      acd122(70)=abb122(45)
      acd122(71)=abb122(41)
      acd122(72)=abb122(24)
      acd122(73)=dotproduct(qshift,spvak3k2)
      acd122(74)=abb122(28)
      acd122(75)=dotproduct(qshift,spvak3l6)
      acd122(76)=dotproduct(qshift,spvak3k7)
      acd122(77)=dotproduct(qshift,spvak3e7)
      acd122(78)=abb122(14)
      acd122(79)=abb122(135)
      acd122(80)=abb122(102)
      acd122(81)=abb122(131)
      acd122(82)=abb122(129)
      acd122(83)=abb122(142)
      acd122(84)=abb122(141)
      acd122(85)=abb122(137)
      acd122(86)=dotproduct(qshift,spvak2k3)
      acd122(87)=abb122(48)
      acd122(88)=abb122(27)
      acd122(89)=abb122(128)
      acd122(90)=abb122(124)
      acd122(91)=abb122(35)
      acd122(92)=abb122(34)
      acd122(93)=dotproduct(qshift,spvak1l6)
      acd122(94)=abb122(132)
      acd122(95)=abb122(76)
      acd122(96)=abb122(11)
      acd122(97)=abb122(54)
      acd122(98)=abb122(49)
      acd122(99)=abb122(143)
      acd122(100)=abb122(65)
      acd122(101)=abb122(139)
      acd122(102)=dotproduct(qshift,spvak1k3)
      acd122(103)=abb122(56)
      acd122(104)=abb122(50)
      acd122(105)=abb122(15)
      acd122(106)=dotproduct(qshift,spvak2l5)
      acd122(107)=abb122(18)
      acd122(108)=abb122(20)
      acd122(109)=abb122(39)
      acd122(110)=abb122(116)
      acd122(111)=dotproduct(qshift,spval5l6)
      acd122(112)=abb122(120)
      acd122(113)=dotproduct(qshift,spval5k7)
      acd122(114)=abb122(145)
      acd122(115)=dotproduct(qshift,spval6l5)
      acd122(116)=abb122(136)
      acd122(117)=dotproduct(qshift,spvak7l5)
      acd122(118)=abb122(138)
      acd122(119)=dotproduct(qshift,spval5e7)
      acd122(120)=abb122(121)
      acd122(121)=dotproduct(qshift,spvae7l5)
      acd122(122)=abb122(117)
      acd122(123)=abb122(21)
      acd122(124)=acd122(13)*acd122(1)
      acd122(125)=acd122(38)*acd122(8)
      acd122(126)=acd122(55)*acd122(10)
      acd122(127)=acd122(68)*acd122(14)
      acd122(128)=acd122(69)*acd122(16)
      acd122(129)=acd122(70)*acd122(20)
      acd122(130)=acd122(71)*acd122(24)
      acd122(131)=acd122(72)*acd122(26)
      acd122(132)=acd122(74)*acd122(73)
      acd122(133)=-acd122(75)*acd122(62)
      acd122(134)=acd122(76)*acd122(64)
      acd122(135)=-acd122(77)*acd122(66)
      acd122(124)=-acd122(78)+acd122(135)+acd122(134)+acd122(133)+acd122(132)+a&
      &cd122(131)+acd122(130)+acd122(129)+acd122(128)+acd122(127)+acd122(126)+a&
      &cd122(125)+acd122(124)
      acd122(124)=acd122(12)*acd122(124)
      acd122(125)=acd122(62)*acd122(61)
      acd122(126)=-acd122(64)*acd122(63)
      acd122(127)=acd122(66)*acd122(65)
      acd122(128)=acd122(11)*acd122(1)
      acd122(129)=acd122(37)*acd122(8)
      acd122(130)=acd122(56)*acd122(14)
      acd122(131)=acd122(57)*acd122(16)
      acd122(132)=acd122(58)*acd122(20)
      acd122(133)=acd122(59)*acd122(24)
      acd122(134)=acd122(60)*acd122(26)
      acd122(125)=-acd122(67)+acd122(134)+acd122(133)+acd122(132)+acd122(131)+a&
      &cd122(130)+acd122(129)+acd122(128)+acd122(127)+acd122(126)+acd122(125)
      acd122(125)=acd122(10)*acd122(125)
      acd122(126)=acd122(79)*acd122(18)
      acd122(127)=acd122(81)*acd122(26)
      acd122(128)=acd122(82)*acd122(43)
      acd122(129)=acd122(83)*acd122(45)
      acd122(130)=acd122(84)*acd122(47)
      acd122(131)=acd122(85)*acd122(49)
      acd122(132)=acd122(87)*acd122(86)
      acd122(126)=-acd122(88)+acd122(132)+acd122(131)+acd122(130)+acd122(129)+a&
      &cd122(128)+acd122(127)+acd122(126)
      acd122(126)=acd122(20)*acd122(126)
      acd122(127)=acd122(4)+acd122(3)
      acd122(128)=acd122(127)-acd122(1)
      acd122(129)=-acd122(6)*acd122(128)
      acd122(130)=acd122(31)*acd122(10)
      acd122(131)=acd122(32)*acd122(12)
      acd122(132)=-acd122(33)*acd122(18)
      acd122(133)=acd122(34)*acd122(20)
      acd122(134)=-acd122(35)*acd122(22)
      acd122(129)=acd122(133)+acd122(131)+acd122(130)+acd122(129)-acd122(36)+ac&
      &d122(134)+acd122(132)
      acd122(130)=acd122(7)+acd122(5)
      acd122(129)=acd122(130)*acd122(129)
      acd122(130)=acd122(40)*acd122(39)
      acd122(131)=acd122(42)*acd122(41)
      acd122(132)=acd122(44)*acd122(43)
      acd122(133)=acd122(46)*acd122(45)
      acd122(134)=acd122(48)*acd122(47)
      acd122(135)=acd122(50)*acd122(49)
      acd122(130)=-acd122(51)+acd122(135)+acd122(134)+acd122(133)+acd122(132)+a&
      &cd122(131)+acd122(130)
      acd122(130)=acd122(8)*acd122(130)
      acd122(131)=acd122(9)*acd122(8)
      acd122(132)=acd122(15)*acd122(14)
      acd122(133)=-acd122(17)*acd122(16)
      acd122(134)=acd122(21)*acd122(20)
      acd122(135)=acd122(25)*acd122(24)
      acd122(131)=acd122(134)+acd122(131)+acd122(135)+acd122(133)+acd122(132)
      acd122(131)=acd122(128)*acd122(131)
      acd122(128)=acd122(27)*acd122(128)
      acd122(132)=acd122(89)*acd122(22)
      acd122(133)=acd122(91)*acd122(39)
      acd122(134)=acd122(92)*acd122(41)
      acd122(135)=acd122(94)*acd122(93)
      acd122(128)=-acd122(95)+acd122(135)+acd122(134)+acd122(133)+acd122(132)+a&
      &cd122(128)
      acd122(128)=acd122(26)*acd122(128)
      acd122(132)=acd122(29)*acd122(10)
      acd122(132)=acd122(30)+acd122(132)
      acd122(132)=acd122(127)*acd122(132)
      acd122(133)=acd122(19)*acd122(18)
      acd122(134)=acd122(23)*acd122(22)
      acd122(133)=-acd122(28)+acd122(134)+acd122(133)
      acd122(133)=acd122(1)*acd122(133)
      acd122(127)=acd122(1)*acd122(127)
      acd122(134)=acd122(1)**2
      acd122(127)=-acd122(134)+acd122(127)
      acd122(127)=acd122(2)*acd122(127)
      acd122(134)=acd122(53)*acd122(52)
      acd122(135)=acd122(54)*acd122(10)**2
      acd122(136)=-acd122(80)*acd122(18)
      acd122(137)=-acd122(90)*acd122(22)
      acd122(138)=-acd122(96)*acd122(39)
      acd122(139)=-acd122(97)*acd122(41)
      acd122(140)=-acd122(98)*acd122(43)
      acd122(141)=-acd122(99)*acd122(45)
      acd122(142)=-acd122(100)*acd122(47)
      acd122(143)=-acd122(101)*acd122(49)
      acd122(144)=-acd122(103)*acd122(102)
      acd122(145)=-acd122(104)*acd122(93)
      acd122(146)=-acd122(105)*acd122(86)
      acd122(147)=-acd122(107)*acd122(106)
      acd122(148)=-acd122(108)*acd122(61)
      acd122(149)=-acd122(109)*acd122(63)
      acd122(150)=-acd122(110)*acd122(65)
      acd122(151)=-acd122(112)*acd122(111)
      acd122(152)=-acd122(114)*acd122(113)
      acd122(153)=-acd122(116)*acd122(115)
      acd122(154)=-acd122(118)*acd122(117)
      acd122(155)=-acd122(120)*acd122(119)
      acd122(156)=-acd122(122)*acd122(121)
      brack=acd122(123)+acd122(124)+acd122(125)+acd122(126)+acd122(127)+acd122(&
      &128)+acd122(129)+acd122(130)+acd122(131)+acd122(132)+acd122(133)+acd122(&
      &134)+acd122(135)+acd122(136)+acd122(137)+acd122(138)+acd122(139)+acd122(&
      &140)+acd122(141)+acd122(142)+acd122(143)+acd122(144)+acd122(145)+acd122(&
      &146)+acd122(147)+acd122(148)+acd122(149)+acd122(150)+acd122(151)+acd122(&
      &152)+acd122(153)+acd122(154)+acd122(155)+acd122(156)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd122h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(191) :: acd122
      complex(ki) :: brack
      acd122(1)=k2(iv1)
      acd122(2)=dotproduct(k2,qshift)
      acd122(3)=abb122(25)
      acd122(4)=dotproduct(k3,qshift)
      acd122(5)=dotproduct(k4,qshift)
      acd122(6)=dotproduct(l6,qshift)
      acd122(7)=abb122(86)
      acd122(8)=dotproduct(k7,qshift)
      acd122(9)=dotproduct(e7,qshift)
      acd122(10)=abb122(30)
      acd122(11)=dotproduct(qshift,spvak4k2)
      acd122(12)=abb122(38)
      acd122(13)=dotproduct(qshift,spvak4k3)
      acd122(14)=abb122(71)
      acd122(15)=dotproduct(qshift,spvak4l6)
      acd122(16)=abb122(147)
      acd122(17)=dotproduct(qshift,spvak4k7)
      acd122(18)=abb122(146)
      acd122(19)=dotproduct(qshift,spvak1e7)
      acd122(20)=abb122(88)
      acd122(21)=dotproduct(qshift,spvae7k2)
      acd122(22)=abb122(103)
      acd122(23)=dotproduct(qshift,spvae7k3)
      acd122(24)=abb122(127)
      acd122(25)=dotproduct(qshift,spvak4e7)
      acd122(26)=abb122(123)
      acd122(27)=dotproduct(qshift,spval6e7)
      acd122(28)=abb122(81)
      acd122(29)=abb122(19)
      acd122(30)=k3(iv1)
      acd122(31)=abb122(42)
      acd122(32)=abb122(22)
      acd122(33)=k4(iv1)
      acd122(34)=l6(iv1)
      acd122(35)=abb122(13)
      acd122(36)=abb122(67)
      acd122(37)=abb122(110)
      acd122(38)=abb122(72)
      acd122(39)=abb122(126)
      acd122(40)=abb122(78)
      acd122(41)=k7(iv1)
      acd122(42)=e7(iv1)
      acd122(43)=abb122(10)
      acd122(44)=abb122(29)
      acd122(45)=dotproduct(qshift,spvak1k2)
      acd122(46)=abb122(33)
      acd122(47)=dotproduct(qshift,spvak1k7)
      acd122(48)=abb122(40)
      acd122(49)=dotproduct(qshift,spval6k2)
      acd122(50)=abb122(52)
      acd122(51)=dotproduct(qshift,spval6k3)
      acd122(52)=abb122(144)
      acd122(53)=dotproduct(qshift,spvak7k2)
      acd122(54)=abb122(68)
      acd122(55)=dotproduct(qshift,spvak7k3)
      acd122(56)=abb122(140)
      acd122(57)=abb122(64)
      acd122(58)=qshift(iv1)
      acd122(59)=abb122(85)
      acd122(60)=spvak4k2(iv1)
      acd122(61)=abb122(32)
      acd122(62)=abb122(36)
      acd122(63)=abb122(23)
      acd122(64)=abb122(31)
      acd122(65)=abb122(17)
      acd122(66)=abb122(26)
      acd122(67)=abb122(16)
      acd122(68)=dotproduct(qshift,spvak2l6)
      acd122(69)=abb122(44)
      acd122(70)=dotproduct(qshift,spvak2k7)
      acd122(71)=abb122(43)
      acd122(72)=dotproduct(qshift,spvak2e7)
      acd122(73)=abb122(47)
      acd122(74)=abb122(12)
      acd122(75)=spvak4k3(iv1)
      acd122(76)=abb122(37)
      acd122(77)=abb122(53)
      acd122(78)=abb122(45)
      acd122(79)=abb122(41)
      acd122(80)=abb122(24)
      acd122(81)=dotproduct(qshift,spvak3k2)
      acd122(82)=abb122(28)
      acd122(83)=dotproduct(qshift,spvak3l6)
      acd122(84)=dotproduct(qshift,spvak3k7)
      acd122(85)=dotproduct(qshift,spvak3e7)
      acd122(86)=abb122(14)
      acd122(87)=spvak4l6(iv1)
      acd122(88)=spvak4k7(iv1)
      acd122(89)=spvak1e7(iv1)
      acd122(90)=abb122(135)
      acd122(91)=abb122(102)
      acd122(92)=spvae7k2(iv1)
      acd122(93)=abb122(131)
      acd122(94)=abb122(129)
      acd122(95)=abb122(142)
      acd122(96)=abb122(141)
      acd122(97)=abb122(137)
      acd122(98)=dotproduct(qshift,spvak2k3)
      acd122(99)=abb122(48)
      acd122(100)=abb122(27)
      acd122(101)=spvae7k3(iv1)
      acd122(102)=abb122(128)
      acd122(103)=abb122(124)
      acd122(104)=spvak4e7(iv1)
      acd122(105)=spval6e7(iv1)
      acd122(106)=abb122(35)
      acd122(107)=abb122(34)
      acd122(108)=dotproduct(qshift,spvak1l6)
      acd122(109)=abb122(132)
      acd122(110)=abb122(76)
      acd122(111)=spvak1k2(iv1)
      acd122(112)=abb122(11)
      acd122(113)=spvak1k7(iv1)
      acd122(114)=abb122(54)
      acd122(115)=spval6k2(iv1)
      acd122(116)=abb122(49)
      acd122(117)=spval6k3(iv1)
      acd122(118)=abb122(143)
      acd122(119)=spvak7k2(iv1)
      acd122(120)=abb122(65)
      acd122(121)=spvak7k3(iv1)
      acd122(122)=abb122(139)
      acd122(123)=spvak1k3(iv1)
      acd122(124)=abb122(56)
      acd122(125)=spvak1l6(iv1)
      acd122(126)=abb122(50)
      acd122(127)=spvak2k3(iv1)
      acd122(128)=abb122(15)
      acd122(129)=spvak2l5(iv1)
      acd122(130)=abb122(18)
      acd122(131)=spvak2l6(iv1)
      acd122(132)=abb122(20)
      acd122(133)=spvak2k7(iv1)
      acd122(134)=abb122(39)
      acd122(135)=spvak3k2(iv1)
      acd122(136)=spvak3l6(iv1)
      acd122(137)=spvak3k7(iv1)
      acd122(138)=spvak2e7(iv1)
      acd122(139)=abb122(116)
      acd122(140)=spvak3e7(iv1)
      acd122(141)=spval5l6(iv1)
      acd122(142)=abb122(120)
      acd122(143)=spval5k7(iv1)
      acd122(144)=abb122(145)
      acd122(145)=spval6l5(iv1)
      acd122(146)=abb122(136)
      acd122(147)=spvak7l5(iv1)
      acd122(148)=abb122(138)
      acd122(149)=spval5e7(iv1)
      acd122(150)=abb122(121)
      acd122(151)=spvae7l5(iv1)
      acd122(152)=abb122(117)
      acd122(153)=acd122(6)+acd122(8)
      acd122(154)=-acd122(35)*acd122(153)
      acd122(155)=acd122(4)+acd122(5)
      acd122(156)=-acd122(31)*acd122(155)
      acd122(157)=-acd122(73)*acd122(72)
      acd122(158)=acd122(71)*acd122(70)
      acd122(159)=-acd122(69)*acd122(68)
      acd122(160)=-acd122(25)*acd122(66)
      acd122(161)=-acd122(17)*acd122(64)
      acd122(162)=-acd122(15)*acd122(63)
      acd122(163)=-acd122(27)*acd122(67)
      acd122(164)=-acd122(9)*acd122(43)
      acd122(165)=-acd122(21)*acd122(65)
      acd122(166)=-acd122(13)*acd122(62)
      acd122(167)=-acd122(2)*acd122(12)
      acd122(168)=acd122(11)*acd122(61)
      acd122(154)=-2.0_ki*acd122(168)+acd122(167)+acd122(166)+acd122(165)+acd12&
      &2(164)+acd122(163)+acd122(162)+acd122(161)+acd122(160)+acd122(159)+acd12&
      &2(158)+acd122(74)+acd122(157)+acd122(156)+acd122(154)
      acd122(154)=acd122(60)*acd122(154)
      acd122(156)=acd122(34)+acd122(41)
      acd122(157)=-acd122(35)*acd122(156)
      acd122(158)=acd122(30)+acd122(33)
      acd122(159)=-acd122(31)*acd122(158)
      acd122(160)=-acd122(73)*acd122(138)
      acd122(161)=acd122(71)*acd122(133)
      acd122(162)=-acd122(69)*acd122(131)
      acd122(163)=-acd122(104)*acd122(66)
      acd122(164)=-acd122(88)*acd122(64)
      acd122(165)=-acd122(87)*acd122(63)
      acd122(166)=-acd122(105)*acd122(67)
      acd122(167)=-acd122(42)*acd122(43)
      acd122(168)=-acd122(92)*acd122(65)
      acd122(169)=-acd122(75)*acd122(62)
      acd122(157)=acd122(169)+acd122(168)+acd122(167)+acd122(166)+acd122(165)+a&
      &cd122(164)+acd122(163)+acd122(162)+acd122(160)+acd122(161)+acd122(159)+a&
      &cd122(157)
      acd122(157)=acd122(11)*acd122(157)
      acd122(159)=-acd122(36)*acd122(153)
      acd122(160)=-acd122(82)*acd122(81)
      acd122(161)=acd122(73)*acd122(85)
      acd122(162)=-acd122(71)*acd122(84)
      acd122(163)=acd122(69)*acd122(83)
      acd122(164)=-acd122(25)*acd122(79)
      acd122(165)=-acd122(17)*acd122(77)
      acd122(166)=-acd122(15)*acd122(76)
      acd122(167)=-acd122(27)*acd122(80)
      acd122(168)=-acd122(9)*acd122(44)
      acd122(169)=-acd122(21)*acd122(78)
      acd122(159)=acd122(169)+acd122(168)+acd122(167)+acd122(166)+acd122(165)+a&
      &cd122(164)+acd122(163)+acd122(162)+acd122(161)+acd122(86)+acd122(160)+ac&
      &d122(159)
      acd122(159)=acd122(75)*acd122(159)
      acd122(160)=-acd122(36)*acd122(156)
      acd122(161)=-acd122(82)*acd122(135)
      acd122(162)=acd122(73)*acd122(140)
      acd122(163)=-acd122(71)*acd122(137)
      acd122(164)=acd122(69)*acd122(136)
      acd122(165)=-acd122(104)*acd122(79)
      acd122(166)=-acd122(88)*acd122(77)
      acd122(167)=-acd122(87)*acd122(76)
      acd122(168)=-acd122(105)*acd122(80)
      acd122(169)=-acd122(42)*acd122(44)
      acd122(160)=acd122(169)+acd122(168)+acd122(167)+acd122(166)+acd122(165)+a&
      &cd122(164)+acd122(163)+acd122(161)+acd122(162)+acd122(160)
      acd122(160)=acd122(13)*acd122(160)
      acd122(161)=-acd122(38)*acd122(153)
      acd122(162)=-acd122(22)*acd122(155)
      acd122(163)=-acd122(99)*acd122(98)
      acd122(164)=-acd122(55)*acd122(97)
      acd122(165)=-acd122(53)*acd122(96)
      acd122(166)=-acd122(51)*acd122(95)
      acd122(167)=-acd122(49)*acd122(94)
      acd122(168)=-acd122(19)*acd122(90)
      acd122(169)=-acd122(27)*acd122(93)
      acd122(170)=-acd122(13)*acd122(78)
      acd122(161)=acd122(170)+acd122(169)+acd122(168)+acd122(167)+acd122(166)+a&
      &cd122(165)+acd122(164)+acd122(100)+acd122(163)+acd122(162)+acd122(161)
      acd122(161)=acd122(92)*acd122(161)
      acd122(162)=-acd122(38)*acd122(156)
      acd122(163)=-acd122(22)*acd122(158)
      acd122(164)=-acd122(99)*acd122(127)
      acd122(165)=-acd122(121)*acd122(97)
      acd122(166)=-acd122(119)*acd122(96)
      acd122(167)=-acd122(117)*acd122(95)
      acd122(168)=-acd122(115)*acd122(94)
      acd122(169)=-acd122(89)*acd122(90)
      acd122(170)=-acd122(105)*acd122(93)
      acd122(162)=acd122(170)+acd122(169)+acd122(168)+acd122(167)+acd122(166)+a&
      &cd122(164)+acd122(165)+acd122(163)+acd122(162)
      acd122(162)=acd122(21)*acd122(162)
      acd122(163)=acd122(26)*acd122(104)
      acd122(164)=acd122(18)*acd122(88)
      acd122(165)=acd122(16)*acd122(87)
      acd122(163)=acd122(165)+acd122(163)-acd122(164)
      acd122(164)=-acd122(3)*acd122(158)
      acd122(165)=-acd122(101)*acd122(24)
      acd122(166)=-acd122(89)*acd122(20)
      acd122(167)=acd122(105)*acd122(28)
      acd122(168)=acd122(42)*acd122(10)
      acd122(169)=-acd122(7)*acd122(156)
      acd122(170)=acd122(92)*acd122(22)
      acd122(171)=-acd122(75)*acd122(14)
      acd122(164)=acd122(171)+acd122(170)+acd122(169)+acd122(168)+acd122(167)+a&
      &cd122(165)+acd122(166)+acd122(164)+acd122(163)
      acd122(164)=acd122(2)*acd122(164)
      acd122(165)=acd122(26)*acd122(25)
      acd122(166)=acd122(18)*acd122(17)
      acd122(167)=acd122(16)*acd122(15)
      acd122(168)=acd122(27)*acd122(28)
      acd122(165)=acd122(168)+acd122(167)+acd122(165)-acd122(166)
      acd122(166)=2.0_ki*acd122(2)-acd122(155)
      acd122(166)=acd122(3)*acd122(166)
      acd122(167)=-acd122(23)*acd122(24)
      acd122(168)=-acd122(19)*acd122(20)
      acd122(169)=acd122(9)*acd122(10)
      acd122(170)=-acd122(7)*acd122(153)
      acd122(171)=acd122(21)*acd122(22)
      acd122(172)=-acd122(13)*acd122(14)
      acd122(173)=-acd122(11)*acd122(12)
      acd122(166)=acd122(173)+acd122(172)+acd122(171)+acd122(170)+acd122(169)+a&
      &cd122(168)+acd122(29)+acd122(167)+acd122(166)+acd122(165)
      acd122(166)=acd122(1)*acd122(166)
      acd122(167)=-acd122(10)*acd122(158)
      acd122(168)=-acd122(121)*acd122(56)
      acd122(169)=-acd122(119)*acd122(54)
      acd122(170)=-acd122(117)*acd122(52)
      acd122(171)=-acd122(115)*acd122(50)
      acd122(172)=-acd122(113)*acd122(48)
      acd122(173)=-acd122(111)*acd122(46)
      acd122(167)=acd122(173)+acd122(172)+acd122(171)+acd122(170)+acd122(168)+a&
      &cd122(169)+acd122(167)
      acd122(167)=acd122(9)*acd122(167)
      acd122(168)=-acd122(10)*acd122(155)
      acd122(169)=-acd122(55)*acd122(56)
      acd122(170)=-acd122(53)*acd122(54)
      acd122(171)=-acd122(51)*acd122(52)
      acd122(172)=-acd122(49)*acd122(50)
      acd122(173)=-acd122(47)*acd122(48)
      acd122(174)=-acd122(45)*acd122(46)
      acd122(168)=acd122(174)+acd122(173)+acd122(172)+acd122(171)+acd122(170)+a&
      &cd122(57)+acd122(169)+acd122(168)
      acd122(168)=acd122(42)*acd122(168)
      acd122(169)=-acd122(28)*acd122(155)
      acd122(170)=-acd122(109)*acd122(108)
      acd122(171)=-acd122(47)*acd122(107)
      acd122(172)=-acd122(45)*acd122(106)
      acd122(173)=-acd122(23)*acd122(102)
      acd122(169)=acd122(173)+acd122(172)+acd122(171)+acd122(110)+acd122(170)+a&
      &cd122(169)
      acd122(169)=acd122(105)*acd122(169)
      acd122(165)=acd122(32)+acd122(165)
      acd122(165)=-acd122(165)*acd122(158)
      acd122(170)=-acd122(109)*acd122(125)
      acd122(171)=-acd122(113)*acd122(107)
      acd122(172)=-acd122(111)*acd122(106)
      acd122(173)=-acd122(101)*acd122(102)
      acd122(170)=acd122(173)+acd122(172)+acd122(170)+acd122(171)
      acd122(170)=acd122(27)*acd122(170)
      acd122(163)=-acd122(163)*acd122(155)
      acd122(155)=acd122(156)*acd122(155)
      acd122(158)=acd122(153)*acd122(158)
      acd122(155)=acd122(158)+acd122(155)
      acd122(155)=acd122(7)*acd122(155)
      acd122(158)=acd122(23)*acd122(39)
      acd122(171)=acd122(19)*acd122(37)
      acd122(158)=acd122(40)+acd122(158)+acd122(171)
      acd122(156)=acd122(158)*acd122(156)
      acd122(158)=acd122(101)*acd122(39)
      acd122(171)=acd122(89)*acd122(37)
      acd122(158)=acd122(158)+acd122(171)
      acd122(153)=acd122(158)*acd122(153)
      acd122(158)=acd122(151)*acd122(152)
      acd122(171)=acd122(149)*acd122(150)
      acd122(172)=acd122(147)*acd122(148)
      acd122(173)=acd122(145)*acd122(146)
      acd122(174)=acd122(143)*acd122(144)
      acd122(175)=acd122(141)*acd122(142)
      acd122(176)=acd122(129)*acd122(130)
      acd122(177)=acd122(123)*acd122(124)
      acd122(178)=acd122(58)*acd122(59)
      acd122(179)=acd122(138)*acd122(139)
      acd122(180)=acd122(133)*acd122(134)
      acd122(181)=acd122(131)*acd122(132)
      acd122(182)=acd122(127)*acd122(128)
      acd122(183)=acd122(125)*acd122(126)
      acd122(184)=acd122(121)*acd122(122)
      acd122(185)=acd122(119)*acd122(120)
      acd122(186)=acd122(117)*acd122(118)
      acd122(187)=acd122(115)*acd122(116)
      acd122(188)=acd122(113)*acd122(114)
      acd122(189)=acd122(111)*acd122(112)
      acd122(190)=acd122(101)*acd122(103)
      acd122(191)=acd122(89)*acd122(91)
      brack=acd122(153)+acd122(154)+acd122(155)+acd122(156)+acd122(157)+acd122(&
      &158)+acd122(159)+acd122(160)+acd122(161)+acd122(162)+acd122(163)+acd122(&
      &164)+acd122(165)+acd122(166)+acd122(167)+acd122(168)+acd122(169)+acd122(&
      &170)+acd122(171)+acd122(172)+acd122(173)+acd122(174)+acd122(175)+acd122(&
      &176)+acd122(177)-2.0_ki*acd122(178)+acd122(179)+acd122(180)+acd122(181)+&
      &acd122(182)+acd122(183)+acd122(184)+acd122(185)+acd122(186)+acd122(187)+&
      &acd122(188)+acd122(189)+acd122(190)+acd122(191)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd122h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(137) :: acd122
      complex(ki) :: brack
      acd122(1)=d(iv1,iv2)
      acd122(2)=abb122(85)
      acd122(3)=k2(iv1)
      acd122(4)=k2(iv2)
      acd122(5)=abb122(25)
      acd122(6)=k3(iv2)
      acd122(7)=k4(iv2)
      acd122(8)=l6(iv2)
      acd122(9)=abb122(86)
      acd122(10)=k7(iv2)
      acd122(11)=e7(iv2)
      acd122(12)=abb122(30)
      acd122(13)=spvak4k2(iv2)
      acd122(14)=abb122(38)
      acd122(15)=spvak4k3(iv2)
      acd122(16)=abb122(71)
      acd122(17)=spvak4l6(iv2)
      acd122(18)=abb122(147)
      acd122(19)=spvak4k7(iv2)
      acd122(20)=abb122(146)
      acd122(21)=spvak1e7(iv2)
      acd122(22)=abb122(88)
      acd122(23)=spvae7k2(iv2)
      acd122(24)=abb122(103)
      acd122(25)=spvae7k3(iv2)
      acd122(26)=abb122(127)
      acd122(27)=spvak4e7(iv2)
      acd122(28)=abb122(123)
      acd122(29)=spval6e7(iv2)
      acd122(30)=abb122(81)
      acd122(31)=k3(iv1)
      acd122(32)=k4(iv1)
      acd122(33)=l6(iv1)
      acd122(34)=k7(iv1)
      acd122(35)=e7(iv1)
      acd122(36)=spvak4k2(iv1)
      acd122(37)=spvak4k3(iv1)
      acd122(38)=spvak4l6(iv1)
      acd122(39)=spvak4k7(iv1)
      acd122(40)=spvak1e7(iv1)
      acd122(41)=spvae7k2(iv1)
      acd122(42)=spvae7k3(iv1)
      acd122(43)=spvak4e7(iv1)
      acd122(44)=spval6e7(iv1)
      acd122(45)=abb122(42)
      acd122(46)=abb122(13)
      acd122(47)=abb122(67)
      acd122(48)=abb122(110)
      acd122(49)=abb122(72)
      acd122(50)=abb122(126)
      acd122(51)=abb122(10)
      acd122(52)=abb122(29)
      acd122(53)=spvak1k2(iv2)
      acd122(54)=abb122(33)
      acd122(55)=spvak1k7(iv2)
      acd122(56)=abb122(40)
      acd122(57)=spval6k2(iv2)
      acd122(58)=abb122(52)
      acd122(59)=spval6k3(iv2)
      acd122(60)=abb122(144)
      acd122(61)=spvak7k2(iv2)
      acd122(62)=abb122(68)
      acd122(63)=spvak7k3(iv2)
      acd122(64)=abb122(140)
      acd122(65)=spvak1k2(iv1)
      acd122(66)=spvak1k7(iv1)
      acd122(67)=spval6k2(iv1)
      acd122(68)=spval6k3(iv1)
      acd122(69)=spvak7k2(iv1)
      acd122(70)=spvak7k3(iv1)
      acd122(71)=abb122(32)
      acd122(72)=abb122(36)
      acd122(73)=abb122(23)
      acd122(74)=abb122(31)
      acd122(75)=abb122(17)
      acd122(76)=abb122(26)
      acd122(77)=abb122(16)
      acd122(78)=spvak2l6(iv2)
      acd122(79)=abb122(44)
      acd122(80)=spvak2k7(iv2)
      acd122(81)=abb122(43)
      acd122(82)=spvak2e7(iv2)
      acd122(83)=abb122(47)
      acd122(84)=spvak2l6(iv1)
      acd122(85)=spvak2k7(iv1)
      acd122(86)=spvak2e7(iv1)
      acd122(87)=abb122(37)
      acd122(88)=abb122(53)
      acd122(89)=abb122(45)
      acd122(90)=abb122(41)
      acd122(91)=abb122(24)
      acd122(92)=spvak3k2(iv2)
      acd122(93)=abb122(28)
      acd122(94)=spvak3l6(iv2)
      acd122(95)=spvak3k7(iv2)
      acd122(96)=spvak3e7(iv2)
      acd122(97)=spvak3k2(iv1)
      acd122(98)=spvak3l6(iv1)
      acd122(99)=spvak3k7(iv1)
      acd122(100)=spvak3e7(iv1)
      acd122(101)=abb122(135)
      acd122(102)=abb122(131)
      acd122(103)=abb122(129)
      acd122(104)=abb122(142)
      acd122(105)=abb122(141)
      acd122(106)=abb122(137)
      acd122(107)=spvak2k3(iv2)
      acd122(108)=abb122(48)
      acd122(109)=spvak2k3(iv1)
      acd122(110)=abb122(128)
      acd122(111)=abb122(35)
      acd122(112)=abb122(34)
      acd122(113)=spvak1l6(iv2)
      acd122(114)=abb122(132)
      acd122(115)=spvak1l6(iv1)
      acd122(116)=acd122(33)+acd122(34)
      acd122(117)=acd122(46)*acd122(116)
      acd122(118)=acd122(31)+acd122(32)
      acd122(119)=acd122(45)*acd122(118)
      acd122(120)=acd122(83)*acd122(86)
      acd122(121)=-acd122(81)*acd122(85)
      acd122(122)=acd122(79)*acd122(84)
      acd122(123)=acd122(43)*acd122(76)
      acd122(124)=acd122(39)*acd122(74)
      acd122(125)=acd122(38)*acd122(73)
      acd122(126)=acd122(44)*acd122(77)
      acd122(127)=acd122(35)*acd122(51)
      acd122(128)=acd122(41)*acd122(75)
      acd122(129)=acd122(37)*acd122(72)
      acd122(130)=acd122(3)*acd122(14)
      acd122(131)=acd122(36)*acd122(71)
      acd122(117)=2.0_ki*acd122(131)+acd122(130)+acd122(129)+acd122(128)+acd122&
      &(127)+acd122(126)+acd122(125)+acd122(124)+acd122(123)+acd122(122)+acd122&
      &(120)+acd122(121)+acd122(119)+acd122(117)
      acd122(117)=acd122(13)*acd122(117)
      acd122(119)=acd122(8)+acd122(10)
      acd122(120)=acd122(46)*acd122(119)
      acd122(121)=acd122(6)+acd122(7)
      acd122(122)=acd122(45)*acd122(121)
      acd122(123)=acd122(83)*acd122(82)
      acd122(124)=-acd122(81)*acd122(80)
      acd122(125)=acd122(79)*acd122(78)
      acd122(126)=acd122(27)*acd122(76)
      acd122(127)=acd122(19)*acd122(74)
      acd122(128)=acd122(17)*acd122(73)
      acd122(129)=acd122(29)*acd122(77)
      acd122(130)=acd122(11)*acd122(51)
      acd122(131)=acd122(23)*acd122(75)
      acd122(132)=acd122(15)*acd122(72)
      acd122(133)=acd122(4)*acd122(14)
      acd122(120)=acd122(133)+acd122(132)+acd122(131)+acd122(130)+acd122(129)+a&
      &cd122(128)+acd122(127)+acd122(126)+acd122(125)+acd122(123)+acd122(124)+a&
      &cd122(122)+acd122(120)
      acd122(120)=acd122(36)*acd122(120)
      acd122(122)=acd122(47)*acd122(116)
      acd122(123)=acd122(93)*acd122(97)
      acd122(124)=-acd122(83)*acd122(100)
      acd122(125)=acd122(81)*acd122(99)
      acd122(126)=-acd122(79)*acd122(98)
      acd122(127)=acd122(43)*acd122(90)
      acd122(128)=acd122(39)*acd122(88)
      acd122(129)=acd122(38)*acd122(87)
      acd122(130)=acd122(44)*acd122(91)
      acd122(131)=acd122(35)*acd122(52)
      acd122(132)=acd122(41)*acd122(89)
      acd122(122)=acd122(132)+acd122(131)+acd122(130)+acd122(129)+acd122(128)+a&
      &cd122(127)+acd122(126)+acd122(125)+acd122(123)+acd122(124)+acd122(122)
      acd122(122)=acd122(15)*acd122(122)
      acd122(123)=acd122(47)*acd122(119)
      acd122(124)=acd122(93)*acd122(92)
      acd122(125)=-acd122(83)*acd122(96)
      acd122(126)=acd122(81)*acd122(95)
      acd122(127)=-acd122(79)*acd122(94)
      acd122(128)=acd122(27)*acd122(90)
      acd122(129)=acd122(19)*acd122(88)
      acd122(130)=acd122(17)*acd122(87)
      acd122(131)=acd122(29)*acd122(91)
      acd122(132)=acd122(11)*acd122(52)
      acd122(123)=acd122(132)+acd122(131)+acd122(130)+acd122(129)+acd122(128)+a&
      &cd122(127)+acd122(126)+acd122(124)+acd122(125)+acd122(123)
      acd122(123)=acd122(37)*acd122(123)
      acd122(124)=acd122(49)*acd122(116)
      acd122(125)=acd122(24)*acd122(118)
      acd122(126)=acd122(108)*acd122(109)
      acd122(127)=acd122(70)*acd122(106)
      acd122(128)=acd122(69)*acd122(105)
      acd122(129)=acd122(68)*acd122(104)
      acd122(130)=acd122(67)*acd122(103)
      acd122(131)=acd122(40)*acd122(101)
      acd122(132)=acd122(44)*acd122(102)
      acd122(133)=acd122(37)*acd122(89)
      acd122(124)=acd122(133)+acd122(132)+acd122(131)+acd122(130)+acd122(129)+a&
      &cd122(128)+acd122(126)+acd122(127)+acd122(125)+acd122(124)
      acd122(124)=acd122(23)*acd122(124)
      acd122(125)=acd122(49)*acd122(119)
      acd122(126)=acd122(24)*acd122(121)
      acd122(127)=acd122(108)*acd122(107)
      acd122(128)=acd122(63)*acd122(106)
      acd122(129)=acd122(61)*acd122(105)
      acd122(130)=acd122(59)*acd122(104)
      acd122(131)=acd122(57)*acd122(103)
      acd122(132)=acd122(21)*acd122(101)
      acd122(133)=acd122(29)*acd122(102)
      acd122(125)=acd122(133)+acd122(132)+acd122(131)+acd122(130)+acd122(129)+a&
      &cd122(127)+acd122(128)+acd122(126)+acd122(125)
      acd122(125)=acd122(41)*acd122(125)
      acd122(126)=acd122(28)*acd122(27)
      acd122(127)=acd122(20)*acd122(19)
      acd122(128)=acd122(18)*acd122(17)
      acd122(126)=acd122(128)+acd122(126)-acd122(127)
      acd122(127)=-2.0_ki*acd122(4)+acd122(121)
      acd122(127)=acd122(5)*acd122(127)
      acd122(128)=acd122(25)*acd122(26)
      acd122(129)=acd122(21)*acd122(22)
      acd122(130)=-acd122(29)*acd122(30)
      acd122(131)=-acd122(11)*acd122(12)
      acd122(132)=acd122(9)*acd122(119)
      acd122(133)=-acd122(23)*acd122(24)
      acd122(134)=acd122(15)*acd122(16)
      acd122(127)=acd122(134)+acd122(133)+acd122(132)+acd122(131)+acd122(130)+a&
      &cd122(128)+acd122(129)+acd122(127)-acd122(126)
      acd122(127)=acd122(3)*acd122(127)
      acd122(128)=acd122(28)*acd122(43)
      acd122(129)=acd122(20)*acd122(39)
      acd122(130)=acd122(18)*acd122(38)
      acd122(131)=acd122(44)*acd122(30)
      acd122(128)=acd122(131)+acd122(130)+acd122(128)-acd122(129)
      acd122(129)=acd122(5)*acd122(118)
      acd122(130)=acd122(42)*acd122(26)
      acd122(131)=acd122(40)*acd122(22)
      acd122(132)=-acd122(35)*acd122(12)
      acd122(133)=acd122(9)*acd122(116)
      acd122(134)=-acd122(41)*acd122(24)
      acd122(135)=acd122(37)*acd122(16)
      acd122(129)=acd122(135)+acd122(134)+acd122(133)+acd122(132)+acd122(130)+a&
      &cd122(131)+acd122(129)-acd122(128)
      acd122(129)=acd122(4)*acd122(129)
      acd122(130)=acd122(12)*acd122(121)
      acd122(131)=acd122(63)*acd122(64)
      acd122(132)=acd122(61)*acd122(62)
      acd122(133)=acd122(59)*acd122(60)
      acd122(134)=acd122(57)*acd122(58)
      acd122(135)=acd122(55)*acd122(56)
      acd122(136)=acd122(53)*acd122(54)
      acd122(130)=acd122(136)+acd122(135)+acd122(134)+acd122(133)+acd122(131)+a&
      &cd122(132)+acd122(130)
      acd122(130)=acd122(35)*acd122(130)
      acd122(131)=acd122(12)*acd122(118)
      acd122(132)=acd122(64)*acd122(70)
      acd122(133)=acd122(62)*acd122(69)
      acd122(134)=acd122(60)*acd122(68)
      acd122(135)=acd122(58)*acd122(67)
      acd122(136)=acd122(56)*acd122(66)
      acd122(137)=acd122(54)*acd122(65)
      acd122(131)=acd122(137)+acd122(136)+acd122(135)+acd122(134)+acd122(132)+a&
      &cd122(133)+acd122(131)
      acd122(131)=acd122(11)*acd122(131)
      acd122(132)=acd122(30)*acd122(118)
      acd122(133)=acd122(114)*acd122(115)
      acd122(134)=acd122(66)*acd122(112)
      acd122(135)=acd122(65)*acd122(111)
      acd122(136)=acd122(42)*acd122(110)
      acd122(132)=acd122(136)+acd122(135)+acd122(133)+acd122(134)+acd122(132)
      acd122(132)=acd122(29)*acd122(132)
      acd122(128)=acd122(128)*acd122(121)
      acd122(133)=acd122(114)*acd122(113)
      acd122(134)=acd122(55)*acd122(112)
      acd122(135)=acd122(53)*acd122(111)
      acd122(136)=acd122(25)*acd122(110)
      acd122(133)=acd122(136)+acd122(135)+acd122(133)+acd122(134)
      acd122(133)=acd122(44)*acd122(133)
      acd122(126)=acd122(126)*acd122(118)
      acd122(118)=-acd122(119)*acd122(118)
      acd122(121)=-acd122(116)*acd122(121)
      acd122(118)=acd122(121)+acd122(118)
      acd122(118)=acd122(9)*acd122(118)
      acd122(121)=acd122(42)*acd122(50)
      acd122(134)=acd122(40)*acd122(48)
      acd122(121)=acd122(121)+acd122(134)
      acd122(119)=-acd122(121)*acd122(119)
      acd122(121)=acd122(25)*acd122(50)
      acd122(134)=acd122(21)*acd122(48)
      acd122(121)=acd122(121)+acd122(134)
      acd122(116)=-acd122(121)*acd122(116)
      acd122(121)=acd122(1)*acd122(2)
      brack=acd122(116)+acd122(117)+acd122(118)+acd122(119)+acd122(120)+2.0_ki*&
      &acd122(121)+acd122(122)+acd122(123)+acd122(124)+acd122(125)+acd122(126)+&
      &acd122(127)+acd122(128)+acd122(129)+acd122(130)+acd122(131)+acd122(132)+&
      &acd122(133)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h0
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
      qshift = k7+k6+k5
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
!---#[ subroutine reconstruct_d122:
   subroutine     reconstruct_d122(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_122:
      coeffs%coeffs_122%c0 = derivative(czip)
      coeffs%coeffs_122%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_122%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_122%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_122%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_122%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_122%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_122%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_122%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_122%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_122%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_122%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_122%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_122%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_122%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_122:
   end subroutine reconstruct_d122
!---#] subroutine reconstruct_d122:
end module     p0_dbaru_epnebbbarg_d122h0l1d
