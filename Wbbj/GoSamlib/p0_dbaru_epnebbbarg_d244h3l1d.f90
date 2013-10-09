module     p0_dbaru_epnebbbarg_d244h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d244h3l1d.f90
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
   public :: derivative , reconstruct_d244
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd244h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(133) :: acd244
      complex(ki) :: brack
      acd244(1)=dotproduct(k2,qshift)
      acd244(2)=dotproduct(qshift,spvak1k2)
      acd244(3)=abb244(22)
      acd244(4)=dotproduct(qshift,spvak1k3)
      acd244(5)=abb244(30)
      acd244(6)=dotproduct(qshift,spvak4k2)
      acd244(7)=abb244(32)
      acd244(8)=abb244(16)
      acd244(9)=dotproduct(l5,qshift)
      acd244(10)=abb244(21)
      acd244(11)=abb244(29)
      acd244(12)=abb244(39)
      acd244(13)=abb244(108)
      acd244(14)=dotproduct(l6,qshift)
      acd244(15)=dotproduct(k7,qshift)
      acd244(16)=abb244(193)
      acd244(17)=dotproduct(e7,qshift)
      acd244(18)=abb244(19)
      acd244(19)=abb244(27)
      acd244(20)=abb244(61)
      acd244(21)=abb244(44)
      acd244(22)=dotproduct(qshift,qshift)
      acd244(23)=abb244(63)
      acd244(24)=dotproduct(qshift,spvak2l5)
      acd244(25)=abb244(67)
      acd244(26)=dotproduct(qshift,spvak2l6)
      acd244(27)=abb244(66)
      acd244(28)=dotproduct(qshift,spvak2k7)
      acd244(29)=abb244(65)
      acd244(30)=dotproduct(qshift,spval5l6)
      acd244(31)=abb244(59)
      acd244(32)=dotproduct(qshift,spval6l5)
      acd244(33)=abb244(54)
      acd244(34)=dotproduct(qshift,spvak7l5)
      acd244(35)=abb244(52)
      acd244(36)=dotproduct(qshift,spvak7l6)
      acd244(37)=abb244(48)
      acd244(38)=dotproduct(qshift,spvak2e7)
      acd244(39)=abb244(40)
      acd244(40)=dotproduct(qshift,spvae7l5)
      acd244(41)=abb244(35)
      acd244(42)=dotproduct(qshift,spvae7l6)
      acd244(43)=abb244(34)
      acd244(44)=abb244(14)
      acd244(45)=abb244(81)
      acd244(46)=abb244(75)
      acd244(47)=abb244(68)
      acd244(48)=abb244(64)
      acd244(49)=abb244(56)
      acd244(50)=abb244(46)
      acd244(51)=abb244(43)
      acd244(52)=abb244(42)
      acd244(53)=abb244(36)
      acd244(54)=abb244(31)
      acd244(55)=abb244(76)
      acd244(56)=abb244(41)
      acd244(57)=abb244(49)
      acd244(58)=abb244(20)
      acd244(59)=abb244(129)
      acd244(60)=abb244(122)
      acd244(61)=abb244(58)
      acd244(62)=abb244(95)
      acd244(63)=abb244(71)
      acd244(64)=abb244(57)
      acd244(65)=abb244(28)
      acd244(66)=abb244(26)
      acd244(67)=abb244(18)
      acd244(68)=abb244(33)
      acd244(69)=abb244(62)
      acd244(70)=abb244(51)
      acd244(71)=abb244(82)
      acd244(72)=abb244(50)
      acd244(73)=abb244(37)
      acd244(74)=abb244(17)
      acd244(75)=abb244(110)
      acd244(76)=dotproduct(qshift,spvak1l5)
      acd244(77)=abb244(24)
      acd244(78)=dotproduct(qshift,spvak1l6)
      acd244(79)=abb244(23)
      acd244(80)=dotproduct(qshift,spvak1k7)
      acd244(81)=abb244(69)
      acd244(82)=dotproduct(qshift,spvak2k3)
      acd244(83)=abb244(55)
      acd244(84)=dotproduct(qshift,spvak4l5)
      acd244(85)=abb244(38)
      acd244(86)=dotproduct(qshift,spvak4l6)
      acd244(87)=abb244(92)
      acd244(88)=dotproduct(qshift,spvak4k7)
      acd244(89)=abb244(45)
      acd244(90)=dotproduct(qshift,spval5k2)
      acd244(91)=abb244(25)
      acd244(92)=dotproduct(qshift,spval5k3)
      acd244(93)=abb244(79)
      acd244(94)=dotproduct(qshift,spval6k2)
      acd244(95)=abb244(60)
      acd244(96)=dotproduct(qshift,spval6k3)
      acd244(97)=abb244(53)
      acd244(98)=dotproduct(qshift,spvak7k2)
      acd244(99)=abb244(47)
      acd244(100)=dotproduct(qshift,spvak7k3)
      acd244(101)=abb244(120)
      acd244(102)=abb244(169)
      acd244(103)=acd244(9)+acd244(14)
      acd244(104)=acd244(103)-acd244(15)
      acd244(105)=-acd244(11)*acd244(104)
      acd244(106)=acd244(42)*acd244(54)
      acd244(107)=acd244(40)*acd244(53)
      acd244(108)=acd244(38)*acd244(52)
      acd244(109)=acd244(36)*acd244(51)
      acd244(110)=acd244(34)*acd244(50)
      acd244(111)=acd244(32)*acd244(49)
      acd244(112)=acd244(30)*acd244(48)
      acd244(113)=acd244(28)*acd244(47)
      acd244(114)=acd244(26)*acd244(46)
      acd244(115)=acd244(24)*acd244(45)
      acd244(116)=acd244(17)*acd244(19)
      acd244(117)=acd244(1)*acd244(5)
      acd244(105)=acd244(117)+acd244(116)+acd244(115)+acd244(114)+acd244(113)+a&
      &cd244(112)+acd244(111)+acd244(110)+acd244(109)+acd244(108)+acd244(106)+a&
      &cd244(107)+acd244(105)
      acd244(105)=acd244(4)*acd244(105)
      acd244(106)=-acd244(12)*acd244(104)
      acd244(107)=acd244(42)*acd244(64)
      acd244(108)=acd244(40)*acd244(63)
      acd244(109)=acd244(38)*acd244(62)
      acd244(110)=acd244(36)*acd244(61)
      acd244(111)=acd244(34)*acd244(60)
      acd244(112)=acd244(32)*acd244(59)
      acd244(113)=acd244(30)*acd244(58)
      acd244(114)=acd244(28)*acd244(57)
      acd244(115)=acd244(26)*acd244(56)
      acd244(116)=acd244(24)*acd244(55)
      acd244(117)=acd244(17)*acd244(20)
      acd244(118)=acd244(1)*acd244(7)
      acd244(106)=acd244(118)+acd244(117)+acd244(116)+acd244(115)+acd244(114)+a&
      &cd244(113)+acd244(112)+acd244(111)+acd244(110)+acd244(109)+acd244(108)-a&
      &cd244(65)+acd244(107)+acd244(106)
      acd244(106)=acd244(6)*acd244(106)
      acd244(104)=acd244(10)*acd244(104)
      acd244(107)=acd244(42)*acd244(43)
      acd244(108)=acd244(40)*acd244(41)
      acd244(109)=acd244(38)*acd244(39)
      acd244(110)=acd244(36)*acd244(37)
      acd244(111)=acd244(34)*acd244(35)
      acd244(112)=acd244(32)*acd244(33)
      acd244(113)=acd244(30)*acd244(31)
      acd244(114)=acd244(28)*acd244(29)
      acd244(115)=acd244(26)*acd244(27)
      acd244(116)=acd244(24)*acd244(25)
      acd244(117)=acd244(17)*acd244(18)
      acd244(118)=acd244(1)*acd244(3)
      acd244(104)=acd244(118)+acd244(117)+acd244(116)+acd244(115)+acd244(114)+a&
      &cd244(113)+acd244(112)+acd244(111)+acd244(110)+acd244(109)+acd244(108)-a&
      &cd244(44)+acd244(107)+acd244(104)
      acd244(104)=acd244(2)*acd244(104)
      acd244(103)=acd244(13)*acd244(103)
      acd244(107)=-acd244(100)*acd244(101)
      acd244(108)=-acd244(98)*acd244(99)
      acd244(109)=-acd244(96)*acd244(97)
      acd244(110)=-acd244(94)*acd244(95)
      acd244(111)=-acd244(92)*acd244(93)
      acd244(112)=-acd244(90)*acd244(91)
      acd244(113)=-acd244(88)*acd244(89)
      acd244(114)=-acd244(86)*acd244(87)
      acd244(115)=-acd244(84)*acd244(85)
      acd244(116)=-acd244(82)*acd244(83)
      acd244(117)=-acd244(80)*acd244(81)
      acd244(118)=-acd244(78)*acd244(79)
      acd244(119)=-acd244(76)*acd244(77)
      acd244(120)=acd244(22)*acd244(23)
      acd244(121)=-acd244(42)*acd244(75)
      acd244(122)=-acd244(40)*acd244(74)
      acd244(123)=-acd244(38)*acd244(73)
      acd244(124)=-acd244(36)*acd244(72)
      acd244(125)=-acd244(34)*acd244(71)
      acd244(126)=-acd244(32)*acd244(70)
      acd244(127)=-acd244(30)*acd244(69)
      acd244(128)=-acd244(28)*acd244(68)
      acd244(129)=-acd244(26)*acd244(67)
      acd244(130)=-acd244(24)*acd244(66)
      acd244(131)=-acd244(17)*acd244(21)
      acd244(132)=-acd244(15)*acd244(16)
      acd244(133)=-acd244(1)*acd244(8)
      brack=acd244(102)+acd244(103)+acd244(104)+acd244(105)+acd244(106)+acd244(&
      &107)+acd244(108)+acd244(109)+acd244(110)+acd244(111)+acd244(112)+acd244(&
      &113)+acd244(114)+acd244(115)+acd244(116)+acd244(117)+acd244(118)+acd244(&
      &119)+acd244(120)+acd244(121)+acd244(122)+acd244(123)+acd244(124)+acd244(&
      &125)+acd244(126)+acd244(127)+acd244(128)+acd244(129)+acd244(130)+acd244(&
      &131)+acd244(132)+acd244(133)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd244h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(153) :: acd244
      complex(ki) :: brack
      acd244(1)=k2(iv1)
      acd244(2)=dotproduct(qshift,spvak1k2)
      acd244(3)=abb244(22)
      acd244(4)=dotproduct(qshift,spvak1k3)
      acd244(5)=abb244(30)
      acd244(6)=dotproduct(qshift,spvak4k2)
      acd244(7)=abb244(32)
      acd244(8)=abb244(16)
      acd244(9)=l5(iv1)
      acd244(10)=abb244(21)
      acd244(11)=abb244(29)
      acd244(12)=abb244(39)
      acd244(13)=abb244(108)
      acd244(14)=l6(iv1)
      acd244(15)=k7(iv1)
      acd244(16)=abb244(193)
      acd244(17)=e7(iv1)
      acd244(18)=abb244(19)
      acd244(19)=abb244(27)
      acd244(20)=abb244(61)
      acd244(21)=abb244(44)
      acd244(22)=qshift(iv1)
      acd244(23)=abb244(63)
      acd244(24)=spvak1k2(iv1)
      acd244(25)=dotproduct(k2,qshift)
      acd244(26)=dotproduct(l5,qshift)
      acd244(27)=dotproduct(l6,qshift)
      acd244(28)=dotproduct(k7,qshift)
      acd244(29)=dotproduct(e7,qshift)
      acd244(30)=dotproduct(qshift,spvak2l5)
      acd244(31)=abb244(67)
      acd244(32)=dotproduct(qshift,spvak2l6)
      acd244(33)=abb244(66)
      acd244(34)=dotproduct(qshift,spvak2k7)
      acd244(35)=abb244(65)
      acd244(36)=dotproduct(qshift,spval5l6)
      acd244(37)=abb244(59)
      acd244(38)=dotproduct(qshift,spval6l5)
      acd244(39)=abb244(54)
      acd244(40)=dotproduct(qshift,spvak7l5)
      acd244(41)=abb244(52)
      acd244(42)=dotproduct(qshift,spvak7l6)
      acd244(43)=abb244(48)
      acd244(44)=dotproduct(qshift,spvak2e7)
      acd244(45)=abb244(40)
      acd244(46)=dotproduct(qshift,spvae7l5)
      acd244(47)=abb244(35)
      acd244(48)=dotproduct(qshift,spvae7l6)
      acd244(49)=abb244(34)
      acd244(50)=abb244(14)
      acd244(51)=spvak1k3(iv1)
      acd244(52)=abb244(81)
      acd244(53)=abb244(75)
      acd244(54)=abb244(68)
      acd244(55)=abb244(64)
      acd244(56)=abb244(56)
      acd244(57)=abb244(46)
      acd244(58)=abb244(43)
      acd244(59)=abb244(42)
      acd244(60)=abb244(36)
      acd244(61)=abb244(31)
      acd244(62)=spvak4k2(iv1)
      acd244(63)=abb244(76)
      acd244(64)=abb244(41)
      acd244(65)=abb244(49)
      acd244(66)=abb244(20)
      acd244(67)=abb244(129)
      acd244(68)=abb244(122)
      acd244(69)=abb244(58)
      acd244(70)=abb244(95)
      acd244(71)=abb244(71)
      acd244(72)=abb244(57)
      acd244(73)=abb244(28)
      acd244(74)=spvak2l5(iv1)
      acd244(75)=abb244(26)
      acd244(76)=spvak2l6(iv1)
      acd244(77)=abb244(18)
      acd244(78)=spvak2k7(iv1)
      acd244(79)=abb244(33)
      acd244(80)=spval5l6(iv1)
      acd244(81)=abb244(62)
      acd244(82)=spval6l5(iv1)
      acd244(83)=abb244(51)
      acd244(84)=spvak7l5(iv1)
      acd244(85)=abb244(82)
      acd244(86)=spvak7l6(iv1)
      acd244(87)=abb244(50)
      acd244(88)=spvak2e7(iv1)
      acd244(89)=abb244(37)
      acd244(90)=spvae7l5(iv1)
      acd244(91)=abb244(17)
      acd244(92)=spvae7l6(iv1)
      acd244(93)=abb244(110)
      acd244(94)=spvak1l5(iv1)
      acd244(95)=abb244(24)
      acd244(96)=spvak1l6(iv1)
      acd244(97)=abb244(23)
      acd244(98)=spvak1k7(iv1)
      acd244(99)=abb244(69)
      acd244(100)=spvak2k3(iv1)
      acd244(101)=abb244(55)
      acd244(102)=spvak4l5(iv1)
      acd244(103)=abb244(38)
      acd244(104)=spvak4l6(iv1)
      acd244(105)=abb244(92)
      acd244(106)=spvak4k7(iv1)
      acd244(107)=abb244(45)
      acd244(108)=spval5k2(iv1)
      acd244(109)=abb244(25)
      acd244(110)=spval5k3(iv1)
      acd244(111)=abb244(79)
      acd244(112)=spval6k2(iv1)
      acd244(113)=abb244(60)
      acd244(114)=spval6k3(iv1)
      acd244(115)=abb244(53)
      acd244(116)=spvak7k2(iv1)
      acd244(117)=abb244(47)
      acd244(118)=spvak7k3(iv1)
      acd244(119)=abb244(120)
      acd244(120)=acd244(48)*acd244(61)
      acd244(121)=acd244(46)*acd244(60)
      acd244(122)=acd244(44)*acd244(59)
      acd244(123)=acd244(42)*acd244(58)
      acd244(124)=acd244(40)*acd244(57)
      acd244(125)=acd244(38)*acd244(56)
      acd244(126)=acd244(36)*acd244(55)
      acd244(127)=acd244(34)*acd244(54)
      acd244(128)=acd244(32)*acd244(53)
      acd244(129)=acd244(30)*acd244(52)
      acd244(130)=acd244(29)*acd244(19)
      acd244(131)=acd244(25)*acd244(5)
      acd244(132)=-acd244(28)+acd244(26)+acd244(27)
      acd244(133)=-acd244(11)*acd244(132)
      acd244(120)=acd244(133)+acd244(131)+acd244(130)+acd244(129)+acd244(128)+a&
      &cd244(127)+acd244(126)+acd244(125)+acd244(124)+acd244(123)+acd244(122)+a&
      &cd244(120)+acd244(121)
      acd244(120)=acd244(51)*acd244(120)
      acd244(121)=acd244(92)*acd244(72)
      acd244(122)=acd244(90)*acd244(71)
      acd244(123)=acd244(88)*acd244(70)
      acd244(124)=acd244(86)*acd244(69)
      acd244(125)=acd244(84)*acd244(68)
      acd244(126)=acd244(82)*acd244(67)
      acd244(127)=acd244(80)*acd244(66)
      acd244(128)=acd244(78)*acd244(65)
      acd244(129)=acd244(76)*acd244(64)
      acd244(130)=acd244(74)*acd244(63)
      acd244(131)=acd244(17)*acd244(20)
      acd244(133)=acd244(1)*acd244(7)
      acd244(134)=acd244(9)+acd244(14)
      acd244(135)=acd244(134)-acd244(15)
      acd244(136)=-acd244(12)*acd244(135)
      acd244(121)=acd244(136)+acd244(133)+acd244(131)+acd244(130)+acd244(129)+a&
      &cd244(128)+acd244(127)+acd244(126)+acd244(125)+acd244(124)+acd244(123)+a&
      &cd244(121)+acd244(122)
      acd244(121)=acd244(6)*acd244(121)
      acd244(122)=acd244(92)*acd244(61)
      acd244(123)=acd244(90)*acd244(60)
      acd244(124)=acd244(88)*acd244(59)
      acd244(125)=acd244(86)*acd244(58)
      acd244(126)=acd244(84)*acd244(57)
      acd244(127)=acd244(82)*acd244(56)
      acd244(128)=acd244(80)*acd244(55)
      acd244(129)=acd244(78)*acd244(54)
      acd244(130)=acd244(76)*acd244(53)
      acd244(131)=acd244(74)*acd244(52)
      acd244(133)=acd244(17)*acd244(19)
      acd244(136)=acd244(1)*acd244(5)
      acd244(137)=-acd244(11)*acd244(135)
      acd244(122)=acd244(137)+acd244(136)+acd244(133)+acd244(131)+acd244(130)+a&
      &cd244(129)+acd244(128)+acd244(127)+acd244(126)+acd244(125)+acd244(124)+a&
      &cd244(122)+acd244(123)
      acd244(122)=acd244(4)*acd244(122)
      acd244(123)=acd244(92)*acd244(49)
      acd244(124)=acd244(90)*acd244(47)
      acd244(125)=acd244(88)*acd244(45)
      acd244(126)=acd244(86)*acd244(43)
      acd244(127)=acd244(84)*acd244(41)
      acd244(128)=acd244(82)*acd244(39)
      acd244(129)=acd244(80)*acd244(37)
      acd244(130)=acd244(78)*acd244(35)
      acd244(131)=acd244(76)*acd244(33)
      acd244(133)=acd244(74)*acd244(31)
      acd244(136)=acd244(17)*acd244(18)
      acd244(137)=acd244(1)*acd244(3)
      acd244(135)=acd244(10)*acd244(135)
      acd244(123)=acd244(135)+acd244(137)+acd244(136)+acd244(133)+acd244(131)+a&
      &cd244(130)+acd244(129)+acd244(128)+acd244(127)+acd244(126)+acd244(125)+a&
      &cd244(123)+acd244(124)
      acd244(123)=acd244(2)*acd244(123)
      acd244(124)=acd244(48)*acd244(72)
      acd244(125)=acd244(46)*acd244(71)
      acd244(126)=acd244(44)*acd244(70)
      acd244(127)=acd244(42)*acd244(69)
      acd244(128)=acd244(40)*acd244(68)
      acd244(129)=acd244(38)*acd244(67)
      acd244(130)=acd244(36)*acd244(66)
      acd244(131)=acd244(34)*acd244(65)
      acd244(133)=acd244(32)*acd244(64)
      acd244(135)=acd244(30)*acd244(63)
      acd244(136)=acd244(29)*acd244(20)
      acd244(137)=acd244(25)*acd244(7)
      acd244(138)=-acd244(12)*acd244(132)
      acd244(124)=acd244(138)+acd244(137)+acd244(136)+acd244(135)+acd244(133)+a&
      &cd244(131)+acd244(130)+acd244(129)+acd244(128)+acd244(127)+acd244(126)+a&
      &cd244(125)-acd244(73)+acd244(124)
      acd244(124)=acd244(62)*acd244(124)
      acd244(125)=acd244(48)*acd244(49)
      acd244(126)=acd244(46)*acd244(47)
      acd244(127)=acd244(44)*acd244(45)
      acd244(128)=acd244(42)*acd244(43)
      acd244(129)=acd244(40)*acd244(41)
      acd244(130)=acd244(38)*acd244(39)
      acd244(131)=acd244(36)*acd244(37)
      acd244(133)=acd244(34)*acd244(35)
      acd244(135)=acd244(32)*acd244(33)
      acd244(136)=acd244(30)*acd244(31)
      acd244(137)=acd244(29)*acd244(18)
      acd244(138)=acd244(25)*acd244(3)
      acd244(132)=acd244(10)*acd244(132)
      acd244(125)=acd244(132)+acd244(138)+acd244(137)+acd244(136)+acd244(135)+a&
      &cd244(133)+acd244(131)+acd244(130)+acd244(129)+acd244(128)+acd244(127)+a&
      &cd244(126)-acd244(50)+acd244(125)
      acd244(125)=acd244(24)*acd244(125)
      acd244(126)=acd244(13)*acd244(134)
      acd244(127)=-acd244(118)*acd244(119)
      acd244(128)=-acd244(116)*acd244(117)
      acd244(129)=-acd244(114)*acd244(115)
      acd244(130)=-acd244(112)*acd244(113)
      acd244(131)=-acd244(110)*acd244(111)
      acd244(132)=-acd244(108)*acd244(109)
      acd244(133)=-acd244(106)*acd244(107)
      acd244(134)=-acd244(104)*acd244(105)
      acd244(135)=-acd244(102)*acd244(103)
      acd244(136)=-acd244(100)*acd244(101)
      acd244(137)=-acd244(98)*acd244(99)
      acd244(138)=-acd244(96)*acd244(97)
      acd244(139)=-acd244(94)*acd244(95)
      acd244(140)=acd244(22)*acd244(23)
      acd244(141)=-acd244(92)*acd244(93)
      acd244(142)=-acd244(90)*acd244(91)
      acd244(143)=-acd244(88)*acd244(89)
      acd244(144)=-acd244(86)*acd244(87)
      acd244(145)=-acd244(84)*acd244(85)
      acd244(146)=-acd244(82)*acd244(83)
      acd244(147)=-acd244(80)*acd244(81)
      acd244(148)=-acd244(78)*acd244(79)
      acd244(149)=-acd244(76)*acd244(77)
      acd244(150)=-acd244(74)*acd244(75)
      acd244(151)=-acd244(17)*acd244(21)
      acd244(152)=-acd244(15)*acd244(16)
      acd244(153)=-acd244(1)*acd244(8)
      brack=acd244(120)+acd244(121)+acd244(122)+acd244(123)+acd244(124)+acd244(&
      &125)+acd244(126)+acd244(127)+acd244(128)+acd244(129)+acd244(130)+acd244(&
      &131)+acd244(132)+acd244(133)+acd244(134)+acd244(135)+acd244(136)+acd244(&
      &137)+acd244(138)+acd244(139)+2.0_ki*acd244(140)+acd244(141)+acd244(142)+&
      &acd244(143)+acd244(144)+acd244(145)+acd244(146)+acd244(147)+acd244(148)+&
      &acd244(149)+acd244(150)+acd244(151)+acd244(152)+acd244(153)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd244h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(95) :: acd244
      complex(ki) :: brack
      acd244(1)=d(iv1,iv2)
      acd244(2)=abb244(63)
      acd244(3)=k2(iv1)
      acd244(4)=spvak1k2(iv2)
      acd244(5)=abb244(22)
      acd244(6)=spvak1k3(iv2)
      acd244(7)=abb244(30)
      acd244(8)=spvak4k2(iv2)
      acd244(9)=abb244(32)
      acd244(10)=k2(iv2)
      acd244(11)=spvak1k2(iv1)
      acd244(12)=spvak1k3(iv1)
      acd244(13)=spvak4k2(iv1)
      acd244(14)=l5(iv1)
      acd244(15)=abb244(21)
      acd244(16)=abb244(29)
      acd244(17)=abb244(39)
      acd244(18)=l5(iv2)
      acd244(19)=l6(iv1)
      acd244(20)=l6(iv2)
      acd244(21)=k7(iv1)
      acd244(22)=k7(iv2)
      acd244(23)=e7(iv1)
      acd244(24)=abb244(19)
      acd244(25)=abb244(27)
      acd244(26)=abb244(61)
      acd244(27)=e7(iv2)
      acd244(28)=spvak2l5(iv2)
      acd244(29)=abb244(67)
      acd244(30)=spvak2l6(iv2)
      acd244(31)=abb244(66)
      acd244(32)=spvak2k7(iv2)
      acd244(33)=abb244(65)
      acd244(34)=spval5l6(iv2)
      acd244(35)=abb244(59)
      acd244(36)=spval6l5(iv2)
      acd244(37)=abb244(54)
      acd244(38)=spvak7l5(iv2)
      acd244(39)=abb244(52)
      acd244(40)=spvak7l6(iv2)
      acd244(41)=abb244(48)
      acd244(42)=spvak2e7(iv2)
      acd244(43)=abb244(40)
      acd244(44)=spvae7l5(iv2)
      acd244(45)=abb244(35)
      acd244(46)=spvae7l6(iv2)
      acd244(47)=abb244(34)
      acd244(48)=spvak2l5(iv1)
      acd244(49)=spvak2l6(iv1)
      acd244(50)=spvak2k7(iv1)
      acd244(51)=spval5l6(iv1)
      acd244(52)=spval6l5(iv1)
      acd244(53)=spvak7l5(iv1)
      acd244(54)=spvak7l6(iv1)
      acd244(55)=spvak2e7(iv1)
      acd244(56)=spvae7l5(iv1)
      acd244(57)=spvae7l6(iv1)
      acd244(58)=abb244(81)
      acd244(59)=abb244(75)
      acd244(60)=abb244(68)
      acd244(61)=abb244(64)
      acd244(62)=abb244(56)
      acd244(63)=abb244(46)
      acd244(64)=abb244(43)
      acd244(65)=abb244(42)
      acd244(66)=abb244(36)
      acd244(67)=abb244(31)
      acd244(68)=abb244(76)
      acd244(69)=abb244(41)
      acd244(70)=abb244(49)
      acd244(71)=abb244(20)
      acd244(72)=abb244(129)
      acd244(73)=abb244(122)
      acd244(74)=abb244(58)
      acd244(75)=abb244(95)
      acd244(76)=abb244(71)
      acd244(77)=abb244(57)
      acd244(78)=acd244(46)*acd244(77)
      acd244(79)=acd244(44)*acd244(76)
      acd244(80)=acd244(42)*acd244(75)
      acd244(81)=acd244(40)*acd244(74)
      acd244(82)=acd244(38)*acd244(73)
      acd244(83)=acd244(36)*acd244(72)
      acd244(84)=acd244(34)*acd244(71)
      acd244(85)=acd244(32)*acd244(70)
      acd244(86)=acd244(30)*acd244(69)
      acd244(87)=acd244(28)*acd244(68)
      acd244(88)=acd244(27)*acd244(26)
      acd244(89)=acd244(10)*acd244(9)
      acd244(90)=-acd244(22)+acd244(18)+acd244(20)
      acd244(91)=-acd244(17)*acd244(90)
      acd244(78)=acd244(91)+acd244(89)+acd244(88)+acd244(87)+acd244(86)+acd244(&
      &85)+acd244(84)+acd244(83)+acd244(82)+acd244(81)+acd244(80)+acd244(78)+ac&
      &d244(79)
      acd244(78)=acd244(13)*acd244(78)
      acd244(79)=acd244(46)*acd244(67)
      acd244(80)=acd244(44)*acd244(66)
      acd244(81)=acd244(42)*acd244(65)
      acd244(82)=acd244(40)*acd244(64)
      acd244(83)=acd244(38)*acd244(63)
      acd244(84)=acd244(36)*acd244(62)
      acd244(85)=acd244(34)*acd244(61)
      acd244(86)=acd244(32)*acd244(60)
      acd244(87)=acd244(30)*acd244(59)
      acd244(88)=acd244(28)*acd244(58)
      acd244(89)=acd244(27)*acd244(25)
      acd244(91)=acd244(10)*acd244(7)
      acd244(92)=-acd244(16)*acd244(90)
      acd244(79)=acd244(92)+acd244(91)+acd244(89)+acd244(88)+acd244(87)+acd244(&
      &86)+acd244(85)+acd244(84)+acd244(83)+acd244(82)+acd244(81)+acd244(79)+ac&
      &d244(80)
      acd244(79)=acd244(12)*acd244(79)
      acd244(80)=acd244(46)*acd244(47)
      acd244(81)=acd244(44)*acd244(45)
      acd244(82)=acd244(42)*acd244(43)
      acd244(83)=acd244(40)*acd244(41)
      acd244(84)=acd244(38)*acd244(39)
      acd244(85)=acd244(36)*acd244(37)
      acd244(86)=acd244(34)*acd244(35)
      acd244(87)=acd244(32)*acd244(33)
      acd244(88)=acd244(30)*acd244(31)
      acd244(89)=acd244(28)*acd244(29)
      acd244(91)=acd244(27)*acd244(24)
      acd244(92)=acd244(10)*acd244(5)
      acd244(90)=acd244(15)*acd244(90)
      acd244(80)=acd244(90)+acd244(92)+acd244(91)+acd244(89)+acd244(88)+acd244(&
      &87)+acd244(86)+acd244(85)+acd244(84)+acd244(83)+acd244(82)+acd244(80)+ac&
      &d244(81)
      acd244(80)=acd244(11)*acd244(80)
      acd244(81)=acd244(57)*acd244(77)
      acd244(82)=acd244(56)*acd244(76)
      acd244(83)=acd244(55)*acd244(75)
      acd244(84)=acd244(54)*acd244(74)
      acd244(85)=acd244(53)*acd244(73)
      acd244(86)=acd244(52)*acd244(72)
      acd244(87)=acd244(51)*acd244(71)
      acd244(88)=acd244(50)*acd244(70)
      acd244(89)=acd244(49)*acd244(69)
      acd244(90)=acd244(48)*acd244(68)
      acd244(91)=acd244(23)*acd244(26)
      acd244(92)=acd244(3)*acd244(9)
      acd244(93)=-acd244(21)+acd244(14)+acd244(19)
      acd244(94)=-acd244(17)*acd244(93)
      acd244(81)=acd244(94)+acd244(92)+acd244(91)+acd244(90)+acd244(89)+acd244(&
      &88)+acd244(87)+acd244(86)+acd244(85)+acd244(84)+acd244(83)+acd244(81)+ac&
      &d244(82)
      acd244(81)=acd244(8)*acd244(81)
      acd244(82)=acd244(57)*acd244(67)
      acd244(83)=acd244(56)*acd244(66)
      acd244(84)=acd244(55)*acd244(65)
      acd244(85)=acd244(54)*acd244(64)
      acd244(86)=acd244(53)*acd244(63)
      acd244(87)=acd244(52)*acd244(62)
      acd244(88)=acd244(51)*acd244(61)
      acd244(89)=acd244(50)*acd244(60)
      acd244(90)=acd244(49)*acd244(59)
      acd244(91)=acd244(48)*acd244(58)
      acd244(92)=acd244(23)*acd244(25)
      acd244(94)=acd244(3)*acd244(7)
      acd244(95)=-acd244(16)*acd244(93)
      acd244(82)=acd244(95)+acd244(94)+acd244(92)+acd244(91)+acd244(90)+acd244(&
      &89)+acd244(88)+acd244(87)+acd244(86)+acd244(85)+acd244(84)+acd244(82)+ac&
      &d244(83)
      acd244(82)=acd244(6)*acd244(82)
      acd244(83)=acd244(57)*acd244(47)
      acd244(84)=acd244(56)*acd244(45)
      acd244(85)=acd244(55)*acd244(43)
      acd244(86)=acd244(54)*acd244(41)
      acd244(87)=acd244(53)*acd244(39)
      acd244(88)=acd244(52)*acd244(37)
      acd244(89)=acd244(51)*acd244(35)
      acd244(90)=acd244(50)*acd244(33)
      acd244(91)=acd244(49)*acd244(31)
      acd244(92)=acd244(48)*acd244(29)
      acd244(94)=acd244(23)*acd244(24)
      acd244(95)=acd244(3)*acd244(5)
      acd244(93)=acd244(15)*acd244(93)
      acd244(83)=acd244(93)+acd244(95)+acd244(94)+acd244(92)+acd244(91)+acd244(&
      &90)+acd244(89)+acd244(88)+acd244(87)+acd244(86)+acd244(85)+acd244(83)+ac&
      &d244(84)
      acd244(83)=acd244(4)*acd244(83)
      acd244(84)=acd244(1)*acd244(2)
      brack=acd244(78)+acd244(79)+acd244(80)+acd244(81)+acd244(82)+acd244(83)+2&
      &.0_ki*acd244(84)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd244h3
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
      qshift = k7+k6
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
!---#[ subroutine reconstruct_d244:
   subroutine     reconstruct_d244(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_244:
      coeffs%coeffs_244%c0 = derivative(czip)
      coeffs%coeffs_244%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_244%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_244%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_244%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_244%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_244%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_244%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_244%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_244%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_244%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_244%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_244%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_244%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_244%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_244:
   end subroutine reconstruct_d244
!---#] subroutine reconstruct_d244:
end module     p0_dbaru_epnebbbarg_d244h3l1d
