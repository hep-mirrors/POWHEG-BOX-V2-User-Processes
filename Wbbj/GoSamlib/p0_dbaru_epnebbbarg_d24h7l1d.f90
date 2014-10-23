module     p0_dbaru_epnebbbarg_d24h7l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d24h7l1d.f90
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
      use p0_dbaru_epnebbbarg_abbrevd24h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(116) :: acd24
      complex(ki) :: brack
      acd24(1)=dotproduct(k1,qshift)
      acd24(2)=dotproduct(qshift,spvak2l5)
      acd24(3)=abb24(22)
      acd24(4)=dotproduct(qshift,spvak2l6)
      acd24(5)=abb24(318)
      acd24(6)=dotproduct(k2,qshift)
      acd24(7)=abb24(20)
      acd24(8)=abb24(311)
      acd24(9)=abb24(26)
      acd24(10)=dotproduct(k3,qshift)
      acd24(11)=abb24(74)
      acd24(12)=abb24(308)
      acd24(13)=dotproduct(k4,qshift)
      acd24(14)=dotproduct(l5,qshift)
      acd24(15)=abb24(55)
      acd24(16)=abb24(252)
      acd24(17)=abb24(37)
      acd24(18)=dotproduct(l6,qshift)
      acd24(19)=abb24(48)
      acd24(20)=dotproduct(k7,qshift)
      acd24(21)=abb24(60)
      acd24(22)=abb24(302)
      acd24(23)=dotproduct(qshift,qshift)
      acd24(24)=abb24(24)
      acd24(25)=dotproduct(qshift,spvak1k2)
      acd24(26)=abb24(33)
      acd24(27)=dotproduct(qshift,spvak1k3)
      acd24(28)=abb24(42)
      acd24(29)=dotproduct(qshift,spvak1l5)
      acd24(30)=abb24(36)
      acd24(31)=dotproduct(qshift,spvak1l6)
      acd24(32)=abb24(79)
      acd24(33)=dotproduct(qshift,spvak4k2)
      acd24(34)=abb24(27)
      acd24(35)=dotproduct(qshift,spvak4k3)
      acd24(36)=abb24(46)
      acd24(37)=dotproduct(qshift,spval5k2)
      acd24(38)=abb24(19)
      acd24(39)=dotproduct(qshift,spval6k2)
      acd24(40)=abb24(30)
      acd24(41)=dotproduct(qshift,spvak7k2)
      acd24(42)=abb24(31)
      acd24(43)=dotproduct(qshift,spvak7k3)
      acd24(44)=abb24(76)
      acd24(45)=abb24(21)
      acd24(46)=abb24(34)
      acd24(47)=abb24(45)
      acd24(48)=abb24(44)
      acd24(49)=abb24(80)
      acd24(50)=abb24(47)
      acd24(51)=abb24(97)
      acd24(52)=abb24(32)
      acd24(53)=abb24(39)
      acd24(54)=abb24(67)
      acd24(55)=abb24(181)
      acd24(56)=abb24(28)
      acd24(57)=abb24(17)
      acd24(58)=abb24(40)
      acd24(59)=dotproduct(qshift,spvak2k1)
      acd24(60)=abb24(29)
      acd24(61)=dotproduct(qshift,spvak2k3)
      acd24(62)=abb24(43)
      acd24(63)=abb24(35)
      acd24(64)=abb24(25)
      acd24(65)=dotproduct(qshift,spvak2k7)
      acd24(66)=abb24(82)
      acd24(67)=dotproduct(qshift,spvak4l5)
      acd24(68)=abb24(70)
      acd24(69)=dotproduct(qshift,spvak4l6)
      acd24(70)=abb24(50)
      acd24(71)=dotproduct(qshift,spval5k1)
      acd24(72)=abb24(41)
      acd24(73)=dotproduct(qshift,spval5k3)
      acd24(74)=abb24(63)
      acd24(75)=dotproduct(qshift,spval5l6)
      acd24(76)=abb24(23)
      acd24(77)=dotproduct(qshift,spval5k7)
      acd24(78)=abb24(146)
      acd24(79)=dotproduct(qshift,spval6k1)
      acd24(80)=abb24(90)
      acd24(81)=dotproduct(qshift,spval6k3)
      acd24(82)=abb24(228)
      acd24(83)=dotproduct(qshift,spval6l5)
      acd24(84)=abb24(18)
      acd24(85)=dotproduct(qshift,spval6k7)
      acd24(86)=abb24(215)
      acd24(87)=dotproduct(qshift,spvak7l5)
      acd24(88)=abb24(16)
      acd24(89)=dotproduct(qshift,spvak7l6)
      acd24(90)=abb24(71)
      acd24(91)=abb24(255)
      acd24(92)=acd24(14)+acd24(18)
      acd24(93)=acd24(16)*acd24(92)
      acd24(94)=acd24(10)+acd24(13)
      acd24(95)=acd24(12)*acd24(94)
      acd24(96)=acd24(43)*acd24(55)
      acd24(97)=acd24(41)*acd24(54)
      acd24(98)=acd24(35)*acd24(51)
      acd24(99)=acd24(33)*acd24(50)
      acd24(100)=acd24(27)*acd24(47)
      acd24(101)=acd24(25)*acd24(46)
      acd24(102)=acd24(20)*acd24(22)
      acd24(103)=acd24(1)*acd24(5)
      acd24(104)=acd24(39)*acd24(53)
      acd24(105)=acd24(37)*acd24(52)
      acd24(106)=acd24(31)*acd24(49)
      acd24(107)=acd24(29)*acd24(48)
      acd24(108)=acd24(6)*acd24(8)
      acd24(93)=acd24(108)+acd24(107)+acd24(106)+acd24(105)+acd24(104)+acd24(10&
      &3)+acd24(102)+acd24(101)+acd24(100)+acd24(99)+acd24(98)+acd24(97)-acd24(&
      &56)+acd24(96)+acd24(95)+acd24(93)
      acd24(93)=acd24(4)*acd24(93)
      acd24(92)=acd24(15)*acd24(92)
      acd24(94)=acd24(11)*acd24(94)
      acd24(95)=acd24(43)*acd24(44)
      acd24(96)=acd24(41)*acd24(42)
      acd24(97)=acd24(35)*acd24(36)
      acd24(98)=acd24(33)*acd24(34)
      acd24(99)=acd24(27)*acd24(28)
      acd24(100)=acd24(25)*acd24(26)
      acd24(101)=acd24(20)*acd24(21)
      acd24(102)=acd24(1)*acd24(3)
      acd24(103)=acd24(39)*acd24(40)
      acd24(104)=acd24(37)*acd24(38)
      acd24(105)=acd24(31)*acd24(32)
      acd24(106)=acd24(29)*acd24(30)
      acd24(107)=acd24(6)*acd24(7)
      acd24(92)=acd24(107)+acd24(106)+acd24(105)+acd24(104)+acd24(103)+acd24(10&
      &2)+acd24(101)+acd24(100)+acd24(99)+acd24(98)+acd24(97)+acd24(96)-acd24(4&
      &5)+acd24(95)+acd24(94)+acd24(92)
      acd24(92)=acd24(2)*acd24(92)
      acd24(94)=-acd24(89)*acd24(90)
      acd24(95)=-acd24(87)*acd24(88)
      acd24(96)=-acd24(85)*acd24(86)
      acd24(97)=-acd24(83)*acd24(84)
      acd24(98)=-acd24(81)*acd24(82)
      acd24(99)=-acd24(79)*acd24(80)
      acd24(100)=-acd24(77)*acd24(78)
      acd24(101)=-acd24(75)*acd24(76)
      acd24(102)=-acd24(73)*acd24(74)
      acd24(103)=-acd24(71)*acd24(72)
      acd24(104)=-acd24(69)*acd24(70)
      acd24(105)=-acd24(67)*acd24(68)
      acd24(106)=-acd24(65)*acd24(66)
      acd24(107)=-acd24(61)*acd24(62)
      acd24(108)=-acd24(59)*acd24(60)
      acd24(109)=acd24(23)*acd24(24)
      acd24(110)=-acd24(39)*acd24(64)
      acd24(111)=-acd24(37)*acd24(63)
      acd24(112)=-acd24(31)*acd24(58)
      acd24(113)=-acd24(29)*acd24(57)
      acd24(114)=-acd24(18)*acd24(19)
      acd24(115)=-acd24(14)*acd24(17)
      acd24(116)=-acd24(6)*acd24(9)
      brack=acd24(91)+acd24(92)+acd24(93)+acd24(94)+acd24(95)+acd24(96)+acd24(9&
      &7)+acd24(98)+acd24(99)+acd24(100)+acd24(101)+acd24(102)+acd24(103)+acd24&
      &(104)+acd24(105)+acd24(106)+acd24(107)+acd24(108)+acd24(109)+acd24(110)+&
      &acd24(111)+acd24(112)+acd24(113)+acd24(114)+acd24(115)+acd24(116)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd24h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(136) :: acd24
      complex(ki) :: brack
      acd24(1)=k1(iv1)
      acd24(2)=dotproduct(qshift,spvak2l5)
      acd24(3)=abb24(22)
      acd24(4)=dotproduct(qshift,spvak2l6)
      acd24(5)=abb24(318)
      acd24(6)=k2(iv1)
      acd24(7)=abb24(20)
      acd24(8)=abb24(311)
      acd24(9)=abb24(26)
      acd24(10)=k3(iv1)
      acd24(11)=abb24(74)
      acd24(12)=abb24(308)
      acd24(13)=k4(iv1)
      acd24(14)=l5(iv1)
      acd24(15)=abb24(55)
      acd24(16)=abb24(252)
      acd24(17)=abb24(37)
      acd24(18)=l6(iv1)
      acd24(19)=abb24(48)
      acd24(20)=k7(iv1)
      acd24(21)=abb24(60)
      acd24(22)=abb24(302)
      acd24(23)=qshift(iv1)
      acd24(24)=abb24(24)
      acd24(25)=spvak2l5(iv1)
      acd24(26)=dotproduct(k1,qshift)
      acd24(27)=dotproduct(k2,qshift)
      acd24(28)=dotproduct(k3,qshift)
      acd24(29)=dotproduct(k4,qshift)
      acd24(30)=dotproduct(l5,qshift)
      acd24(31)=dotproduct(l6,qshift)
      acd24(32)=dotproduct(k7,qshift)
      acd24(33)=dotproduct(qshift,spvak1k2)
      acd24(34)=abb24(33)
      acd24(35)=dotproduct(qshift,spvak1k3)
      acd24(36)=abb24(42)
      acd24(37)=dotproduct(qshift,spvak1l5)
      acd24(38)=abb24(36)
      acd24(39)=dotproduct(qshift,spvak1l6)
      acd24(40)=abb24(79)
      acd24(41)=dotproduct(qshift,spvak4k2)
      acd24(42)=abb24(27)
      acd24(43)=dotproduct(qshift,spvak4k3)
      acd24(44)=abb24(46)
      acd24(45)=dotproduct(qshift,spval5k2)
      acd24(46)=abb24(19)
      acd24(47)=dotproduct(qshift,spval6k2)
      acd24(48)=abb24(30)
      acd24(49)=dotproduct(qshift,spvak7k2)
      acd24(50)=abb24(31)
      acd24(51)=dotproduct(qshift,spvak7k3)
      acd24(52)=abb24(76)
      acd24(53)=abb24(21)
      acd24(54)=spvak2l6(iv1)
      acd24(55)=abb24(34)
      acd24(56)=abb24(45)
      acd24(57)=abb24(44)
      acd24(58)=abb24(80)
      acd24(59)=abb24(47)
      acd24(60)=abb24(97)
      acd24(61)=abb24(32)
      acd24(62)=abb24(39)
      acd24(63)=abb24(67)
      acd24(64)=abb24(181)
      acd24(65)=abb24(28)
      acd24(66)=spvak1k2(iv1)
      acd24(67)=spvak1k3(iv1)
      acd24(68)=spvak1l5(iv1)
      acd24(69)=abb24(17)
      acd24(70)=spvak1l6(iv1)
      acd24(71)=abb24(40)
      acd24(72)=spvak2k1(iv1)
      acd24(73)=abb24(29)
      acd24(74)=spvak2k3(iv1)
      acd24(75)=abb24(43)
      acd24(76)=spvak4k2(iv1)
      acd24(77)=spvak4k3(iv1)
      acd24(78)=spval5k2(iv1)
      acd24(79)=abb24(35)
      acd24(80)=spval6k2(iv1)
      acd24(81)=abb24(25)
      acd24(82)=spvak7k2(iv1)
      acd24(83)=spvak7k3(iv1)
      acd24(84)=spvak2k7(iv1)
      acd24(85)=abb24(82)
      acd24(86)=spvak4l5(iv1)
      acd24(87)=abb24(70)
      acd24(88)=spvak4l6(iv1)
      acd24(89)=abb24(50)
      acd24(90)=spval5k1(iv1)
      acd24(91)=abb24(41)
      acd24(92)=spval5k3(iv1)
      acd24(93)=abb24(63)
      acd24(94)=spval5l6(iv1)
      acd24(95)=abb24(23)
      acd24(96)=spval5k7(iv1)
      acd24(97)=abb24(146)
      acd24(98)=spval6k1(iv1)
      acd24(99)=abb24(90)
      acd24(100)=spval6k3(iv1)
      acd24(101)=abb24(228)
      acd24(102)=spval6l5(iv1)
      acd24(103)=abb24(18)
      acd24(104)=spval6k7(iv1)
      acd24(105)=abb24(215)
      acd24(106)=spvak7l5(iv1)
      acd24(107)=abb24(16)
      acd24(108)=spvak7l6(iv1)
      acd24(109)=abb24(71)
      acd24(110)=-acd24(64)*acd24(83)
      acd24(111)=-acd24(63)*acd24(82)
      acd24(112)=-acd24(60)*acd24(77)
      acd24(113)=-acd24(59)*acd24(76)
      acd24(114)=-acd24(56)*acd24(67)
      acd24(115)=-acd24(55)*acd24(66)
      acd24(116)=-acd24(20)*acd24(22)
      acd24(117)=-acd24(1)*acd24(5)
      acd24(118)=-acd24(80)*acd24(62)
      acd24(119)=-acd24(78)*acd24(61)
      acd24(120)=-acd24(70)*acd24(58)
      acd24(121)=-acd24(68)*acd24(57)
      acd24(122)=-acd24(6)*acd24(8)
      acd24(123)=acd24(14)+acd24(18)
      acd24(124)=-acd24(16)*acd24(123)
      acd24(125)=acd24(10)+acd24(13)
      acd24(126)=-acd24(12)*acd24(125)
      acd24(110)=acd24(126)+acd24(124)+acd24(122)+acd24(121)+acd24(120)+acd24(1&
      &19)+acd24(118)+acd24(117)+acd24(116)+acd24(115)+acd24(114)+acd24(113)+ac&
      &d24(112)+acd24(110)+acd24(111)
      acd24(110)=acd24(4)*acd24(110)
      acd24(111)=-acd24(52)*acd24(83)
      acd24(112)=-acd24(50)*acd24(82)
      acd24(113)=-acd24(44)*acd24(77)
      acd24(114)=-acd24(42)*acd24(76)
      acd24(115)=-acd24(36)*acd24(67)
      acd24(116)=-acd24(34)*acd24(66)
      acd24(117)=-acd24(20)*acd24(21)
      acd24(118)=-acd24(1)*acd24(3)
      acd24(119)=-acd24(80)*acd24(48)
      acd24(120)=-acd24(78)*acd24(46)
      acd24(121)=-acd24(70)*acd24(40)
      acd24(122)=-acd24(68)*acd24(38)
      acd24(124)=-acd24(6)*acd24(7)
      acd24(123)=-acd24(15)*acd24(123)
      acd24(125)=-acd24(11)*acd24(125)
      acd24(111)=acd24(125)+acd24(123)+acd24(124)+acd24(122)+acd24(121)+acd24(1&
      &20)+acd24(119)+acd24(118)+acd24(117)+acd24(116)+acd24(115)+acd24(114)+ac&
      &d24(113)+acd24(111)+acd24(112)
      acd24(111)=acd24(2)*acd24(111)
      acd24(112)=-acd24(51)*acd24(64)
      acd24(113)=-acd24(49)*acd24(63)
      acd24(114)=-acd24(47)*acd24(62)
      acd24(115)=-acd24(45)*acd24(61)
      acd24(116)=-acd24(43)*acd24(60)
      acd24(117)=-acd24(41)*acd24(59)
      acd24(118)=-acd24(39)*acd24(58)
      acd24(119)=-acd24(37)*acd24(57)
      acd24(120)=-acd24(35)*acd24(56)
      acd24(121)=-acd24(33)*acd24(55)
      acd24(122)=-acd24(22)*acd24(32)
      acd24(123)=-acd24(8)*acd24(27)
      acd24(124)=-acd24(5)*acd24(26)
      acd24(125)=acd24(30)+acd24(31)
      acd24(126)=-acd24(16)*acd24(125)
      acd24(127)=acd24(28)+acd24(29)
      acd24(128)=-acd24(12)*acd24(127)
      acd24(112)=acd24(128)+acd24(126)+acd24(124)+acd24(123)+acd24(122)+acd24(1&
      &21)+acd24(120)+acd24(119)+acd24(118)+acd24(117)+acd24(116)+acd24(115)+ac&
      &d24(114)+acd24(113)+acd24(65)+acd24(112)
      acd24(112)=acd24(54)*acd24(112)
      acd24(113)=-acd24(51)*acd24(52)
      acd24(114)=-acd24(49)*acd24(50)
      acd24(115)=-acd24(47)*acd24(48)
      acd24(116)=-acd24(45)*acd24(46)
      acd24(117)=-acd24(43)*acd24(44)
      acd24(118)=-acd24(41)*acd24(42)
      acd24(119)=-acd24(39)*acd24(40)
      acd24(120)=-acd24(37)*acd24(38)
      acd24(121)=-acd24(35)*acd24(36)
      acd24(122)=-acd24(33)*acd24(34)
      acd24(123)=-acd24(21)*acd24(32)
      acd24(124)=-acd24(7)*acd24(27)
      acd24(126)=-acd24(3)*acd24(26)
      acd24(125)=-acd24(15)*acd24(125)
      acd24(127)=-acd24(11)*acd24(127)
      acd24(113)=acd24(127)+acd24(125)+acd24(126)+acd24(124)+acd24(123)+acd24(1&
      &22)+acd24(121)+acd24(120)+acd24(119)+acd24(118)+acd24(117)+acd24(116)+ac&
      &d24(115)+acd24(114)+acd24(53)+acd24(113)
      acd24(113)=acd24(25)*acd24(113)
      acd24(114)=acd24(108)*acd24(109)
      acd24(115)=acd24(106)*acd24(107)
      acd24(116)=acd24(104)*acd24(105)
      acd24(117)=acd24(102)*acd24(103)
      acd24(118)=acd24(100)*acd24(101)
      acd24(119)=acd24(98)*acd24(99)
      acd24(120)=acd24(96)*acd24(97)
      acd24(121)=acd24(94)*acd24(95)
      acd24(122)=acd24(92)*acd24(93)
      acd24(123)=acd24(90)*acd24(91)
      acd24(124)=acd24(88)*acd24(89)
      acd24(125)=acd24(86)*acd24(87)
      acd24(126)=acd24(84)*acd24(85)
      acd24(127)=acd24(74)*acd24(75)
      acd24(128)=acd24(72)*acd24(73)
      acd24(129)=acd24(23)*acd24(24)
      acd24(130)=acd24(80)*acd24(81)
      acd24(131)=acd24(78)*acd24(79)
      acd24(132)=acd24(70)*acd24(71)
      acd24(133)=acd24(68)*acd24(69)
      acd24(134)=acd24(18)*acd24(19)
      acd24(135)=acd24(14)*acd24(17)
      acd24(136)=acd24(6)*acd24(9)
      brack=acd24(110)+acd24(111)+acd24(112)+acd24(113)+acd24(114)+acd24(115)+a&
      &cd24(116)+acd24(117)+acd24(118)+acd24(119)+acd24(120)+acd24(121)+acd24(1&
      &22)+acd24(123)+acd24(124)+acd24(125)+acd24(126)+acd24(127)+acd24(128)-2.&
      &0_ki*acd24(129)+acd24(130)+acd24(131)+acd24(132)+acd24(133)+acd24(134)+a&
      &cd24(135)+acd24(136)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd24h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(89) :: acd24
      complex(ki) :: brack
      acd24(1)=d(iv1,iv2)
      acd24(2)=abb24(24)
      acd24(3)=k1(iv1)
      acd24(4)=spvak2l5(iv2)
      acd24(5)=abb24(22)
      acd24(6)=spvak2l6(iv2)
      acd24(7)=abb24(318)
      acd24(8)=k1(iv2)
      acd24(9)=spvak2l5(iv1)
      acd24(10)=spvak2l6(iv1)
      acd24(11)=k2(iv1)
      acd24(12)=abb24(20)
      acd24(13)=abb24(311)
      acd24(14)=k2(iv2)
      acd24(15)=k3(iv1)
      acd24(16)=abb24(74)
      acd24(17)=abb24(308)
      acd24(18)=k3(iv2)
      acd24(19)=k4(iv1)
      acd24(20)=k4(iv2)
      acd24(21)=l5(iv1)
      acd24(22)=abb24(55)
      acd24(23)=abb24(252)
      acd24(24)=l5(iv2)
      acd24(25)=l6(iv1)
      acd24(26)=l6(iv2)
      acd24(27)=k7(iv1)
      acd24(28)=abb24(60)
      acd24(29)=abb24(302)
      acd24(30)=k7(iv2)
      acd24(31)=spvak1k2(iv2)
      acd24(32)=abb24(33)
      acd24(33)=spvak1k3(iv2)
      acd24(34)=abb24(42)
      acd24(35)=spvak1l5(iv2)
      acd24(36)=abb24(36)
      acd24(37)=spvak1l6(iv2)
      acd24(38)=abb24(79)
      acd24(39)=spvak4k2(iv2)
      acd24(40)=abb24(27)
      acd24(41)=spvak4k3(iv2)
      acd24(42)=abb24(46)
      acd24(43)=spval5k2(iv2)
      acd24(44)=abb24(19)
      acd24(45)=spval6k2(iv2)
      acd24(46)=abb24(30)
      acd24(47)=spvak7k2(iv2)
      acd24(48)=abb24(31)
      acd24(49)=spvak7k3(iv2)
      acd24(50)=abb24(76)
      acd24(51)=spvak1k2(iv1)
      acd24(52)=spvak1k3(iv1)
      acd24(53)=spvak1l5(iv1)
      acd24(54)=spvak1l6(iv1)
      acd24(55)=spvak4k2(iv1)
      acd24(56)=spvak4k3(iv1)
      acd24(57)=spval5k2(iv1)
      acd24(58)=spval6k2(iv1)
      acd24(59)=spvak7k2(iv1)
      acd24(60)=spvak7k3(iv1)
      acd24(61)=abb24(34)
      acd24(62)=abb24(45)
      acd24(63)=abb24(44)
      acd24(64)=abb24(80)
      acd24(65)=abb24(47)
      acd24(66)=abb24(97)
      acd24(67)=abb24(32)
      acd24(68)=abb24(39)
      acd24(69)=abb24(67)
      acd24(70)=abb24(181)
      acd24(71)=acd24(49)*acd24(70)
      acd24(72)=acd24(47)*acd24(69)
      acd24(73)=acd24(45)*acd24(68)
      acd24(74)=acd24(43)*acd24(67)
      acd24(75)=acd24(41)*acd24(66)
      acd24(76)=acd24(39)*acd24(65)
      acd24(77)=acd24(37)*acd24(64)
      acd24(78)=acd24(35)*acd24(63)
      acd24(79)=acd24(33)*acd24(62)
      acd24(80)=acd24(31)*acd24(61)
      acd24(81)=acd24(29)*acd24(30)
      acd24(82)=acd24(13)*acd24(14)
      acd24(83)=acd24(7)*acd24(8)
      acd24(84)=acd24(24)+acd24(26)
      acd24(85)=acd24(23)*acd24(84)
      acd24(86)=acd24(18)+acd24(20)
      acd24(87)=acd24(17)*acd24(86)
      acd24(71)=acd24(87)+acd24(85)+acd24(83)+acd24(82)+acd24(81)+acd24(80)+acd&
      &24(79)+acd24(78)+acd24(77)+acd24(76)+acd24(75)+acd24(74)+acd24(73)+acd24&
      &(71)+acd24(72)
      acd24(71)=acd24(10)*acd24(71)
      acd24(72)=acd24(49)*acd24(50)
      acd24(73)=acd24(47)*acd24(48)
      acd24(74)=acd24(45)*acd24(46)
      acd24(75)=acd24(43)*acd24(44)
      acd24(76)=acd24(41)*acd24(42)
      acd24(77)=acd24(39)*acd24(40)
      acd24(78)=acd24(37)*acd24(38)
      acd24(79)=acd24(35)*acd24(36)
      acd24(80)=acd24(33)*acd24(34)
      acd24(81)=acd24(31)*acd24(32)
      acd24(82)=acd24(28)*acd24(30)
      acd24(83)=acd24(12)*acd24(14)
      acd24(85)=acd24(5)*acd24(8)
      acd24(84)=acd24(22)*acd24(84)
      acd24(86)=acd24(16)*acd24(86)
      acd24(72)=acd24(86)+acd24(84)+acd24(85)+acd24(83)+acd24(82)+acd24(81)+acd&
      &24(80)+acd24(79)+acd24(78)+acd24(77)+acd24(76)+acd24(75)+acd24(74)+acd24&
      &(72)+acd24(73)
      acd24(72)=acd24(9)*acd24(72)
      acd24(73)=acd24(60)*acd24(70)
      acd24(74)=acd24(59)*acd24(69)
      acd24(75)=acd24(58)*acd24(68)
      acd24(76)=acd24(57)*acd24(67)
      acd24(77)=acd24(56)*acd24(66)
      acd24(78)=acd24(55)*acd24(65)
      acd24(79)=acd24(54)*acd24(64)
      acd24(80)=acd24(53)*acd24(63)
      acd24(81)=acd24(52)*acd24(62)
      acd24(82)=acd24(51)*acd24(61)
      acd24(83)=acd24(27)*acd24(29)
      acd24(84)=acd24(11)*acd24(13)
      acd24(85)=acd24(3)*acd24(7)
      acd24(86)=acd24(21)+acd24(25)
      acd24(87)=acd24(23)*acd24(86)
      acd24(88)=acd24(15)+acd24(19)
      acd24(89)=acd24(17)*acd24(88)
      acd24(73)=acd24(89)+acd24(87)+acd24(85)+acd24(84)+acd24(83)+acd24(82)+acd&
      &24(81)+acd24(80)+acd24(79)+acd24(78)+acd24(77)+acd24(76)+acd24(75)+acd24&
      &(73)+acd24(74)
      acd24(73)=acd24(6)*acd24(73)
      acd24(74)=acd24(50)*acd24(60)
      acd24(75)=acd24(48)*acd24(59)
      acd24(76)=acd24(46)*acd24(58)
      acd24(77)=acd24(44)*acd24(57)
      acd24(78)=acd24(42)*acd24(56)
      acd24(79)=acd24(40)*acd24(55)
      acd24(80)=acd24(38)*acd24(54)
      acd24(81)=acd24(36)*acd24(53)
      acd24(82)=acd24(34)*acd24(52)
      acd24(83)=acd24(32)*acd24(51)
      acd24(84)=acd24(27)*acd24(28)
      acd24(85)=acd24(11)*acd24(12)
      acd24(87)=acd24(3)*acd24(5)
      acd24(86)=acd24(22)*acd24(86)
      acd24(88)=acd24(16)*acd24(88)
      acd24(74)=acd24(88)+acd24(86)+acd24(87)+acd24(85)+acd24(84)+acd24(83)+acd&
      &24(82)+acd24(81)+acd24(80)+acd24(79)+acd24(78)+acd24(77)+acd24(76)+acd24&
      &(74)+acd24(75)
      acd24(74)=acd24(4)*acd24(74)
      acd24(75)=acd24(1)*acd24(2)
      brack=acd24(71)+acd24(72)+acd24(73)+acd24(74)+2.0_ki*acd24(75)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd24h7
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
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_24:
      coeffs%coeffs_24%c0 = derivative(czip)
      coeffs%coeffs_24%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_24%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_24%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_24%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_24%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_24%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_24%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_24%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_24%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_24%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_24%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_24%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_24%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_24%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_24:
   end subroutine reconstruct_d24
!---#] subroutine reconstruct_d24:
end module     p0_dbaru_epnebbbarg_d24h7l1d
