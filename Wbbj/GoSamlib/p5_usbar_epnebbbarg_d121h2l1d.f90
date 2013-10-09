module     p5_usbar_epnebbbarg_d121h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d121h2l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d121
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd121h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd121
      complex(ki) :: brack
      acd121(1)=abb121(18)
      brack=acd121(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd121h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(78) :: acd121
      complex(ki) :: brack
      acd121(1)=k1(iv1)
      acd121(2)=abb121(22)
      acd121(3)=k2(iv1)
      acd121(4)=abb121(11)
      acd121(5)=k3(iv1)
      acd121(6)=k4(iv1)
      acd121(7)=l6(iv1)
      acd121(8)=abb121(55)
      acd121(9)=k7(iv1)
      acd121(10)=e7(iv1)
      acd121(11)=abb121(53)
      acd121(12)=spvak2k1(iv1)
      acd121(13)=abb121(54)
      acd121(14)=spvak2k3(iv1)
      acd121(15)=abb121(56)
      acd121(16)=spvak2l6(iv1)
      acd121(17)=abb121(41)
      acd121(18)=spvak2k7(iv1)
      acd121(19)=abb121(44)
      acd121(20)=spvak4k1(iv1)
      acd121(21)=abb121(16)
      acd121(22)=spvak4k3(iv1)
      acd121(23)=abb121(24)
      acd121(24)=spval5k2(iv1)
      acd121(25)=abb121(62)
      acd121(26)=spval5l6(iv1)
      acd121(27)=abb121(108)
      acd121(28)=spval5k7(iv1)
      acd121(29)=abb121(107)
      acd121(30)=spval6k1(iv1)
      acd121(31)=abb121(30)
      acd121(32)=spval6k3(iv1)
      acd121(33)=abb121(33)
      acd121(34)=spval6l5(iv1)
      acd121(35)=abb121(21)
      acd121(36)=spvak7k1(iv1)
      acd121(37)=abb121(50)
      acd121(38)=spvak7k3(iv1)
      acd121(39)=abb121(104)
      acd121(40)=spvak7l5(iv1)
      acd121(41)=abb121(103)
      acd121(42)=spvae7k1(iv1)
      acd121(43)=abb121(94)
      acd121(44)=spvak2e7(iv1)
      acd121(45)=abb121(19)
      acd121(46)=spvae7k3(iv1)
      acd121(47)=abb121(97)
      acd121(48)=spval5e7(iv1)
      acd121(49)=abb121(91)
      acd121(50)=spvae7l5(iv1)
      acd121(51)=abb121(20)
      acd121(52)=spvae7l6(iv1)
      acd121(53)=abb121(51)
      acd121(54)=acd121(9)+acd121(7)
      acd121(54)=acd121(8)*acd121(54)
      acd121(55)=acd121(6)+acd121(5)-acd121(1)
      acd121(55)=acd121(2)*acd121(55)
      acd121(56)=-acd121(4)*acd121(3)
      acd121(57)=-acd121(11)*acd121(10)
      acd121(58)=-acd121(13)*acd121(12)
      acd121(59)=-acd121(15)*acd121(14)
      acd121(60)=-acd121(17)*acd121(16)
      acd121(61)=-acd121(19)*acd121(18)
      acd121(62)=-acd121(21)*acd121(20)
      acd121(63)=-acd121(23)*acd121(22)
      acd121(64)=-acd121(25)*acd121(24)
      acd121(65)=-acd121(27)*acd121(26)
      acd121(66)=-acd121(29)*acd121(28)
      acd121(67)=-acd121(31)*acd121(30)
      acd121(68)=-acd121(33)*acd121(32)
      acd121(69)=-acd121(35)*acd121(34)
      acd121(70)=-acd121(37)*acd121(36)
      acd121(71)=-acd121(39)*acd121(38)
      acd121(72)=-acd121(41)*acd121(40)
      acd121(73)=-acd121(43)*acd121(42)
      acd121(74)=-acd121(45)*acd121(44)
      acd121(75)=-acd121(47)*acd121(46)
      acd121(76)=-acd121(49)*acd121(48)
      acd121(77)=-acd121(51)*acd121(50)
      acd121(78)=-acd121(53)*acd121(52)
      brack=acd121(54)+acd121(55)+acd121(56)+acd121(57)+acd121(58)+acd121(59)+a&
      &cd121(60)+acd121(61)+acd121(62)+acd121(63)+acd121(64)+acd121(65)+acd121(&
      &66)+acd121(67)+acd121(68)+acd121(69)+acd121(70)+acd121(71)+acd121(72)+ac&
      &d121(73)+acd121(74)+acd121(75)+acd121(76)+acd121(77)+acd121(78)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd121h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(141) :: acd121
      complex(ki) :: brack
      acd121(1)=d(iv1,iv2)
      acd121(2)=abb121(60)
      acd121(3)=k1(iv1)
      acd121(4)=k2(iv2)
      acd121(5)=abb121(34)
      acd121(6)=l6(iv2)
      acd121(7)=abb121(89)
      acd121(8)=k7(iv2)
      acd121(9)=e7(iv2)
      acd121(10)=abb121(72)
      acd121(11)=spvak4k2(iv2)
      acd121(12)=abb121(81)
      acd121(13)=spvak4l6(iv2)
      acd121(14)=abb121(109)
      acd121(15)=spvak4k7(iv2)
      acd121(16)=abb121(83)
      acd121(17)=spvak2e7(iv2)
      acd121(18)=abb121(29)
      acd121(19)=spvak4e7(iv2)
      acd121(20)=abb121(92)
      acd121(21)=spvae7l6(iv2)
      acd121(22)=abb121(67)
      acd121(23)=k1(iv2)
      acd121(24)=k2(iv1)
      acd121(25)=l6(iv1)
      acd121(26)=k7(iv1)
      acd121(27)=e7(iv1)
      acd121(28)=spvak4k2(iv1)
      acd121(29)=spvak4l6(iv1)
      acd121(30)=spvak4k7(iv1)
      acd121(31)=spvak2e7(iv1)
      acd121(32)=spvak4e7(iv1)
      acd121(33)=spvae7l6(iv1)
      acd121(34)=k3(iv2)
      acd121(35)=k4(iv2)
      acd121(36)=spvak4k1(iv2)
      acd121(37)=abb121(13)
      acd121(38)=spvak4k3(iv2)
      acd121(39)=abb121(71)
      acd121(40)=spvae7k1(iv2)
      acd121(41)=abb121(102)
      acd121(42)=spvae7k3(iv2)
      acd121(43)=abb121(100)
      acd121(44)=k3(iv1)
      acd121(45)=k4(iv1)
      acd121(46)=spvak4k1(iv1)
      acd121(47)=spvak4k3(iv1)
      acd121(48)=spvae7k1(iv1)
      acd121(49)=spvae7k3(iv1)
      acd121(50)=abb121(25)
      acd121(51)=abb121(17)
      acd121(52)=abb121(27)
      acd121(53)=abb121(101)
      acd121(54)=abb121(99)
      acd121(55)=abb121(12)
      acd121(56)=abb121(26)
      acd121(57)=spvak2k1(iv2)
      acd121(58)=abb121(47)
      acd121(59)=spvak2k3(iv2)
      acd121(60)=abb121(58)
      acd121(61)=spvak2l6(iv2)
      acd121(62)=abb121(10)
      acd121(63)=spvak2k7(iv2)
      acd121(64)=abb121(52)
      acd121(65)=spvak7k1(iv2)
      acd121(66)=abb121(31)
      acd121(67)=spvak7k3(iv2)
      acd121(68)=abb121(105)
      acd121(69)=spvak2k1(iv1)
      acd121(70)=spvak2k3(iv1)
      acd121(71)=spvak2l6(iv1)
      acd121(72)=spvak2k7(iv1)
      acd121(73)=spvak7k1(iv1)
      acd121(74)=spvak7k3(iv1)
      acd121(75)=abb121(39)
      acd121(76)=abb121(49)
      acd121(77)=abb121(15)
      acd121(78)=abb121(59)
      acd121(79)=abb121(36)
      acd121(80)=abb121(73)
      acd121(81)=abb121(76)
      acd121(82)=abb121(28)
      acd121(83)=abb121(32)
      acd121(84)=abb121(48)
      acd121(85)=abb121(87)
      acd121(86)=abb121(23)
      acd121(87)=abb121(57)
      acd121(88)=abb121(35)
      acd121(89)=abb121(45)
      acd121(90)=abb121(9)
      acd121(91)=abb121(38)
      acd121(92)=abb121(37)
      acd121(93)=abb121(63)
      acd121(94)=abb121(14)
      acd121(95)=abb121(106)
      acd121(96)=spval6k1(iv2)
      acd121(97)=abb121(69)
      acd121(98)=spval6k3(iv2)
      acd121(99)=abb121(46)
      acd121(100)=spval6k1(iv1)
      acd121(101)=spval6k3(iv1)
      acd121(102)=spvak1k2(iv2)
      acd121(103)=abb121(40)
      acd121(104)=spvak1l6(iv2)
      acd121(105)=abb121(43)
      acd121(106)=spvak1k7(iv2)
      acd121(107)=abb121(42)
      acd121(108)=spvak1e7(iv2)
      acd121(109)=abb121(61)
      acd121(110)=spvak1k2(iv1)
      acd121(111)=spvak1l6(iv1)
      acd121(112)=spvak1k7(iv1)
      acd121(113)=spvak1e7(iv1)
      acd121(114)=spvak3k2(iv2)
      acd121(115)=spvak3l6(iv2)
      acd121(116)=spvak3k7(iv2)
      acd121(117)=spvak3e7(iv2)
      acd121(118)=spvak3k2(iv1)
      acd121(119)=spvak3l6(iv1)
      acd121(120)=spvak3k7(iv1)
      acd121(121)=spvak3e7(iv1)
      acd121(122)=acd121(6)+acd121(8)
      acd121(123)=-acd121(52)*acd121(122)
      acd121(124)=acd121(109)*acd121(117)
      acd121(125)=-acd121(107)*acd121(116)
      acd121(126)=acd121(105)*acd121(115)
      acd121(127)=acd121(103)*acd121(114)
      acd121(128)=acd121(19)*acd121(89)
      acd121(129)=acd121(15)*acd121(80)
      acd121(130)=acd121(13)*acd121(78)
      acd121(131)=acd121(11)*acd121(76)
      acd121(132)=acd121(4)*acd121(39)
      acd121(133)=acd121(9)*acd121(56)
      acd121(134)=acd121(21)*acd121(91)
      acd121(135)=acd121(17)*acd121(83)
      acd121(123)=acd121(135)+acd121(134)+acd121(133)+acd121(132)+acd121(131)+a&
      &cd121(130)+acd121(129)+acd121(128)+acd121(127)+acd121(126)+acd121(124)+a&
      &cd121(125)+acd121(123)
      acd121(123)=acd121(47)*acd121(123)
      acd121(124)=acd121(51)*acd121(122)
      acd121(125)=-acd121(109)*acd121(108)
      acd121(126)=acd121(107)*acd121(106)
      acd121(127)=-acd121(105)*acd121(104)
      acd121(128)=-acd121(103)*acd121(102)
      acd121(129)=acd121(19)*acd121(88)
      acd121(130)=acd121(15)*acd121(79)
      acd121(131)=acd121(13)*acd121(77)
      acd121(132)=acd121(11)*acd121(75)
      acd121(133)=acd121(4)*acd121(37)
      acd121(134)=acd121(9)*acd121(55)
      acd121(135)=acd121(21)*acd121(90)
      acd121(136)=acd121(17)*acd121(82)
      acd121(124)=acd121(136)+acd121(135)+acd121(134)+acd121(133)+acd121(132)+a&
      &cd121(131)+acd121(130)+acd121(129)+acd121(128)+acd121(127)+acd121(125)+a&
      &cd121(126)+acd121(124)
      acd121(124)=acd121(46)*acd121(124)
      acd121(125)=acd121(25)+acd121(26)
      acd121(126)=-acd121(52)*acd121(125)
      acd121(127)=acd121(109)*acd121(121)
      acd121(128)=-acd121(107)*acd121(120)
      acd121(129)=acd121(105)*acd121(119)
      acd121(130)=acd121(103)*acd121(118)
      acd121(131)=acd121(32)*acd121(89)
      acd121(132)=acd121(30)*acd121(80)
      acd121(133)=acd121(29)*acd121(78)
      acd121(134)=acd121(28)*acd121(76)
      acd121(135)=acd121(24)*acd121(39)
      acd121(136)=acd121(27)*acd121(56)
      acd121(137)=acd121(33)*acd121(91)
      acd121(138)=acd121(31)*acd121(83)
      acd121(126)=acd121(138)+acd121(137)+acd121(136)+acd121(135)+acd121(134)+a&
      &cd121(133)+acd121(132)+acd121(131)+acd121(130)+acd121(129)+acd121(127)+a&
      &cd121(128)+acd121(126)
      acd121(126)=acd121(38)*acd121(126)
      acd121(127)=acd121(51)*acd121(125)
      acd121(128)=-acd121(109)*acd121(113)
      acd121(129)=acd121(107)*acd121(112)
      acd121(130)=-acd121(105)*acd121(111)
      acd121(131)=-acd121(103)*acd121(110)
      acd121(132)=acd121(32)*acd121(88)
      acd121(133)=acd121(30)*acd121(79)
      acd121(134)=acd121(29)*acd121(77)
      acd121(135)=acd121(28)*acd121(75)
      acd121(136)=acd121(24)*acd121(37)
      acd121(137)=acd121(27)*acd121(55)
      acd121(138)=acd121(33)*acd121(90)
      acd121(139)=acd121(31)*acd121(82)
      acd121(127)=acd121(139)+acd121(138)+acd121(137)+acd121(136)+acd121(135)+a&
      &cd121(134)+acd121(133)+acd121(132)+acd121(131)+acd121(130)+acd121(128)+a&
      &cd121(129)+acd121(127)
      acd121(127)=acd121(36)*acd121(127)
      acd121(128)=-acd121(45)+acd121(3)-acd121(44)
      acd121(129)=-acd121(22)*acd121(128)
      acd121(130)=acd121(99)*acd121(101)
      acd121(131)=acd121(97)*acd121(100)
      acd121(132)=acd121(74)*acd121(95)
      acd121(133)=acd121(73)*acd121(94)
      acd121(134)=acd121(70)*acd121(93)
      acd121(135)=acd121(69)*acd121(92)
      acd121(136)=acd121(31)*acd121(81)
      acd121(129)=acd121(136)+acd121(135)+acd121(134)+acd121(133)+acd121(132)+a&
      &cd121(130)+acd121(131)+acd121(129)
      acd121(129)=acd121(21)*acd121(129)
      acd121(130)=-acd121(35)+acd121(23)-acd121(34)
      acd121(131)=acd121(10)*acd121(130)
      acd121(132)=acd121(67)*acd121(68)
      acd121(133)=acd121(65)*acd121(66)
      acd121(134)=acd121(63)*acd121(64)
      acd121(135)=acd121(61)*acd121(62)
      acd121(136)=acd121(59)*acd121(60)
      acd121(137)=acd121(57)*acd121(58)
      acd121(131)=acd121(137)+acd121(136)+acd121(135)+acd121(134)+acd121(132)+a&
      &cd121(133)+acd121(131)
      acd121(131)=acd121(27)*acd121(131)
      acd121(132)=acd121(10)*acd121(128)
      acd121(133)=acd121(68)*acd121(74)
      acd121(134)=acd121(66)*acd121(73)
      acd121(135)=acd121(64)*acd121(72)
      acd121(136)=acd121(62)*acd121(71)
      acd121(137)=acd121(60)*acd121(70)
      acd121(138)=acd121(58)*acd121(69)
      acd121(132)=acd121(138)+acd121(137)+acd121(136)+acd121(135)+acd121(133)+a&
      &cd121(134)+acd121(132)
      acd121(132)=acd121(9)*acd121(132)
      acd121(133)=-acd121(22)*acd121(130)
      acd121(134)=acd121(99)*acd121(98)
      acd121(135)=acd121(97)*acd121(96)
      acd121(136)=acd121(67)*acd121(95)
      acd121(137)=acd121(65)*acd121(94)
      acd121(138)=acd121(59)*acd121(93)
      acd121(139)=acd121(57)*acd121(92)
      acd121(133)=acd121(139)+acd121(138)+acd121(137)+acd121(136)+acd121(134)+a&
      &cd121(135)+acd121(133)
      acd121(133)=acd121(33)*acd121(133)
      acd121(134)=acd121(50)*acd121(125)
      acd121(135)=acd121(18)*acd121(128)
      acd121(136)=acd121(72)*acd121(87)
      acd121(137)=acd121(71)*acd121(86)
      acd121(138)=acd121(49)*acd121(85)
      acd121(139)=acd121(48)*acd121(84)
      acd121(140)=acd121(33)*acd121(81)
      acd121(134)=acd121(140)+acd121(139)+acd121(138)+acd121(136)+acd121(137)+a&
      &cd121(135)+acd121(134)
      acd121(134)=acd121(17)*acd121(134)
      acd121(135)=acd121(50)*acd121(122)
      acd121(136)=acd121(18)*acd121(130)
      acd121(137)=acd121(63)*acd121(87)
      acd121(138)=acd121(61)*acd121(86)
      acd121(139)=acd121(42)*acd121(85)
      acd121(140)=acd121(40)*acd121(84)
      acd121(135)=acd121(140)+acd121(139)+acd121(137)+acd121(138)+acd121(136)+a&
      &cd121(135)
      acd121(135)=acd121(31)*acd121(135)
      acd121(136)=acd121(20)*acd121(19)
      acd121(137)=acd121(16)*acd121(15)
      acd121(138)=acd121(14)*acd121(13)
      acd121(139)=acd121(12)*acd121(11)
      acd121(140)=acd121(4)*acd121(5)
      acd121(136)=-acd121(140)+acd121(139)+acd121(138)+acd121(136)-acd121(137)
      acd121(136)=acd121(136)*acd121(128)
      acd121(137)=acd121(20)*acd121(32)
      acd121(138)=acd121(16)*acd121(30)
      acd121(139)=acd121(14)*acd121(29)
      acd121(140)=acd121(12)*acd121(28)
      acd121(141)=acd121(24)*acd121(5)
      acd121(137)=-acd121(141)+acd121(140)+acd121(139)+acd121(137)-acd121(138)
      acd121(137)=acd121(137)*acd121(130)
      acd121(128)=-acd121(122)*acd121(128)
      acd121(130)=-acd121(125)*acd121(130)
      acd121(128)=acd121(130)+acd121(128)
      acd121(128)=acd121(7)*acd121(128)
      acd121(130)=acd121(49)*acd121(54)
      acd121(138)=acd121(48)*acd121(53)
      acd121(130)=acd121(130)-acd121(138)
      acd121(122)=acd121(130)*acd121(122)
      acd121(130)=acd121(42)*acd121(54)
      acd121(138)=acd121(40)*acd121(53)
      acd121(130)=acd121(130)-acd121(138)
      acd121(125)=acd121(130)*acd121(125)
      acd121(130)=acd121(42)*acd121(43)
      acd121(138)=acd121(40)*acd121(41)
      acd121(130)=acd121(130)+acd121(138)
      acd121(130)=acd121(24)*acd121(130)
      acd121(138)=acd121(49)*acd121(43)
      acd121(139)=acd121(48)*acd121(41)
      acd121(138)=acd121(138)+acd121(139)
      acd121(138)=acd121(4)*acd121(138)
      acd121(139)=acd121(1)*acd121(2)
      brack=acd121(122)+acd121(123)+acd121(124)+acd121(125)+acd121(126)+acd121(&
      &127)+acd121(128)+acd121(129)+acd121(130)+acd121(131)+acd121(132)+acd121(&
      &133)+acd121(134)+acd121(135)+acd121(136)+acd121(137)+acd121(138)+2.0_ki*&
      &acd121(139)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd121h2
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
      qshift = 0
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
!---#[ subroutine reconstruct_d121:
   subroutine     reconstruct_d121(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_121:
      coeffs%coeffs_121%c0 = derivative(czip)
      coeffs%coeffs_121%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_121%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_121%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_121%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_121%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_121%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_121%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_121%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_121%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_121%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_121%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_121%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_121%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_121%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_121:
   end subroutine reconstruct_d121
!---#] subroutine reconstruct_d121:
end module     p5_usbar_epnebbbarg_d121h2l1d
