module     p1_dbarc_epnebbbarg_d240h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d240h0l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d240
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd240h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd240
      complex(ki) :: brack
      acd240(1)=abb240(14)
      brack=acd240(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd240h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(88) :: acd240
      complex(ki) :: brack
      acd240(1)=k2(iv1)
      acd240(2)=abb240(23)
      acd240(3)=k3(iv1)
      acd240(4)=abb240(222)
      acd240(5)=k4(iv1)
      acd240(6)=l5(iv1)
      acd240(7)=abb240(18)
      acd240(8)=l6(iv1)
      acd240(9)=abb240(24)
      acd240(10)=k7(iv1)
      acd240(11)=abb240(35)
      acd240(12)=e7(iv1)
      acd240(13)=abb240(37)
      acd240(14)=spvak1k2(iv1)
      acd240(15)=abb240(16)
      acd240(16)=spvak1l5(iv1)
      acd240(17)=abb240(60)
      acd240(18)=spvak1l6(iv1)
      acd240(19)=abb240(15)
      acd240(20)=spvak1k7(iv1)
      acd240(21)=abb240(29)
      acd240(22)=spvak2k3(iv1)
      acd240(23)=abb240(31)
      acd240(24)=spvak4k2(iv1)
      acd240(25)=abb240(58)
      acd240(26)=spvak4k3(iv1)
      acd240(27)=abb240(63)
      acd240(28)=spvak4l5(iv1)
      acd240(29)=abb240(39)
      acd240(30)=spvak4l6(iv1)
      acd240(31)=abb240(122)
      acd240(32)=spvak4k7(iv1)
      acd240(33)=abb240(38)
      acd240(34)=spval5k2(iv1)
      acd240(35)=abb240(21)
      acd240(36)=spval5k3(iv1)
      acd240(37)=abb240(64)
      acd240(38)=spval5l6(iv1)
      acd240(39)=abb240(34)
      acd240(40)=spval5k7(iv1)
      acd240(41)=abb240(96)
      acd240(42)=spval6k2(iv1)
      acd240(43)=abb240(40)
      acd240(44)=spval6k3(iv1)
      acd240(45)=abb240(49)
      acd240(46)=spval6l5(iv1)
      acd240(47)=abb240(124)
      acd240(48)=spval6k7(iv1)
      acd240(49)=abb240(213)
      acd240(50)=spvak7k2(iv1)
      acd240(51)=abb240(30)
      acd240(52)=spvak7k3(iv1)
      acd240(53)=abb240(62)
      acd240(54)=spvae7k2(iv1)
      acd240(55)=abb240(41)
      acd240(56)=spval5e7(iv1)
      acd240(57)=abb240(17)
      acd240(58)=spval6e7(iv1)
      acd240(59)=abb240(71)
      acd240(60)=-acd240(5)-acd240(3)
      acd240(60)=acd240(4)*acd240(60)
      acd240(61)=-acd240(2)*acd240(1)
      acd240(62)=-acd240(7)*acd240(6)
      acd240(63)=-acd240(9)*acd240(8)
      acd240(64)=-acd240(11)*acd240(10)
      acd240(65)=-acd240(13)*acd240(12)
      acd240(66)=-acd240(15)*acd240(14)
      acd240(67)=-acd240(17)*acd240(16)
      acd240(68)=-acd240(19)*acd240(18)
      acd240(69)=-acd240(21)*acd240(20)
      acd240(70)=-acd240(23)*acd240(22)
      acd240(71)=-acd240(25)*acd240(24)
      acd240(72)=-acd240(27)*acd240(26)
      acd240(73)=-acd240(29)*acd240(28)
      acd240(74)=-acd240(31)*acd240(30)
      acd240(75)=-acd240(33)*acd240(32)
      acd240(76)=-acd240(35)*acd240(34)
      acd240(77)=-acd240(37)*acd240(36)
      acd240(78)=-acd240(39)*acd240(38)
      acd240(79)=-acd240(41)*acd240(40)
      acd240(80)=-acd240(43)*acd240(42)
      acd240(81)=-acd240(45)*acd240(44)
      acd240(82)=-acd240(47)*acd240(46)
      acd240(83)=-acd240(49)*acd240(48)
      acd240(84)=-acd240(51)*acd240(50)
      acd240(85)=-acd240(53)*acd240(52)
      acd240(86)=-acd240(55)*acd240(54)
      acd240(87)=-acd240(57)*acd240(56)
      acd240(88)=-acd240(59)*acd240(58)
      brack=acd240(60)+acd240(61)+acd240(62)+acd240(63)+acd240(64)+acd240(65)+a&
      &cd240(66)+acd240(67)+acd240(68)+acd240(69)+acd240(70)+acd240(71)+acd240(&
      &72)+acd240(73)+acd240(74)+acd240(75)+acd240(76)+acd240(77)+acd240(78)+ac&
      &d240(79)+acd240(80)+acd240(81)+acd240(82)+acd240(83)+acd240(84)+acd240(8&
      &5)+acd240(86)+acd240(87)+acd240(88)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd240h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(135) :: acd240
      complex(ki) :: brack
      acd240(1)=d(iv1,iv2)
      acd240(2)=abb240(56)
      acd240(3)=k2(iv1)
      acd240(4)=k2(iv2)
      acd240(5)=abb240(177)
      acd240(6)=k3(iv2)
      acd240(7)=k4(iv2)
      acd240(8)=l5(iv2)
      acd240(9)=abb240(512)
      acd240(10)=l6(iv2)
      acd240(11)=abb240(506)
      acd240(12)=k7(iv2)
      acd240(13)=abb240(450)
      acd240(14)=e7(iv2)
      acd240(15)=abb240(388)
      acd240(16)=spvak1k2(iv2)
      acd240(17)=abb240(27)
      acd240(18)=spvak1k3(iv2)
      acd240(19)=abb240(69)
      acd240(20)=spvak4k2(iv2)
      acd240(21)=abb240(61)
      acd240(22)=spvak4k3(iv2)
      acd240(23)=abb240(112)
      acd240(24)=spval5k2(iv2)
      acd240(25)=abb240(32)
      acd240(26)=spval6k2(iv2)
      acd240(27)=abb240(45)
      acd240(28)=spval6l5(iv2)
      acd240(29)=abb240(280)
      acd240(30)=spval6k7(iv2)
      acd240(31)=abb240(424)
      acd240(32)=spvak7k2(iv2)
      acd240(33)=abb240(141)
      acd240(34)=spvae7k2(iv2)
      acd240(35)=abb240(130)
      acd240(36)=spval6e7(iv2)
      acd240(37)=abb240(33)
      acd240(38)=k3(iv1)
      acd240(39)=k4(iv1)
      acd240(40)=l5(iv1)
      acd240(41)=l6(iv1)
      acd240(42)=k7(iv1)
      acd240(43)=e7(iv1)
      acd240(44)=spvak1k2(iv1)
      acd240(45)=spvak1k3(iv1)
      acd240(46)=spvak4k2(iv1)
      acd240(47)=spvak4k3(iv1)
      acd240(48)=spval5k2(iv1)
      acd240(49)=spval6k2(iv1)
      acd240(50)=spval6l5(iv1)
      acd240(51)=spval6k7(iv1)
      acd240(52)=spvak7k2(iv1)
      acd240(53)=spvae7k2(iv1)
      acd240(54)=spval6e7(iv1)
      acd240(55)=abb240(43)
      acd240(56)=abb240(126)
      acd240(57)=abb240(84)
      acd240(58)=abb240(145)
      acd240(59)=abb240(42)
      acd240(60)=abb240(100)
      acd240(61)=abb240(110)
      acd240(62)=abb240(51)
      acd240(63)=abb240(137)
      acd240(64)=abb240(118)
      acd240(65)=abb240(22)
      acd240(66)=abb240(65)
      acd240(67)=abb240(85)
      acd240(68)=abb240(80)
      acd240(69)=abb240(44)
      acd240(70)=abb240(48)
      acd240(71)=abb240(25)
      acd240(72)=abb240(36)
      acd240(73)=abb240(26)
      acd240(74)=abb240(20)
      acd240(75)=abb240(28)
      acd240(76)=spval5l6(iv2)
      acd240(77)=abb240(57)
      acd240(78)=spval5k7(iv2)
      acd240(79)=abb240(53)
      acd240(80)=spval5e7(iv2)
      acd240(81)=abb240(47)
      acd240(82)=spval5l6(iv1)
      acd240(83)=spval5k7(iv1)
      acd240(84)=spval5e7(iv1)
      acd240(85)=abb240(121)
      acd240(86)=abb240(169)
      acd240(87)=abb240(52)
      acd240(88)=abb240(135)
      acd240(89)=abb240(97)
      acd240(90)=abb240(111)
      acd240(91)=abb240(151)
      acd240(92)=abb240(119)
      acd240(93)=abb240(19)
      acd240(94)=abb240(73)
      acd240(95)=abb240(59)
      acd240(96)=abb240(132)
      acd240(97)=abb240(95)
      acd240(98)=abb240(123)
      acd240(99)=abb240(99)
      acd240(100)=abb240(92)
      acd240(101)=abb240(101)
      acd240(102)=abb240(125)
      acd240(103)=abb240(162)
      acd240(104)=abb240(114)
      acd240(105)=abb240(156)
      acd240(106)=abb240(168)
      acd240(107)=abb240(163)
      acd240(108)=abb240(166)
      acd240(109)=abb240(139)
      acd240(110)=abb240(66)
      acd240(111)=abb240(128)
      acd240(112)=acd240(80)*acd240(104)
      acd240(113)=acd240(78)*acd240(103)
      acd240(114)=acd240(76)*acd240(102)
      acd240(115)=acd240(36)*acd240(101)
      acd240(116)=acd240(34)*acd240(100)
      acd240(117)=acd240(32)*acd240(99)
      acd240(118)=acd240(30)*acd240(98)
      acd240(119)=acd240(28)*acd240(97)
      acd240(120)=acd240(26)*acd240(96)
      acd240(121)=acd240(24)*acd240(95)
      acd240(122)=acd240(14)*acd240(67)
      acd240(123)=acd240(12)*acd240(63)
      acd240(124)=acd240(10)*acd240(60)
      acd240(125)=acd240(8)*acd240(57)
      acd240(112)=acd240(125)+acd240(124)+acd240(123)+acd240(122)+acd240(121)+a&
      &cd240(120)+acd240(119)+acd240(118)+acd240(117)+acd240(116)+acd240(115)+a&
      &cd240(114)+acd240(112)+acd240(113)
      acd240(112)=acd240(46)*acd240(112)
      acd240(113)=acd240(80)*acd240(81)
      acd240(114)=acd240(78)*acd240(79)
      acd240(115)=acd240(76)*acd240(77)
      acd240(116)=acd240(36)*acd240(75)
      acd240(117)=acd240(34)*acd240(74)
      acd240(118)=acd240(32)*acd240(73)
      acd240(119)=acd240(30)*acd240(72)
      acd240(120)=acd240(28)*acd240(71)
      acd240(121)=acd240(26)*acd240(70)
      acd240(122)=acd240(24)*acd240(69)
      acd240(123)=acd240(14)*acd240(65)
      acd240(124)=acd240(12)*acd240(62)
      acd240(125)=acd240(10)*acd240(59)
      acd240(126)=acd240(8)*acd240(55)
      acd240(113)=acd240(126)+acd240(125)+acd240(124)+acd240(123)+acd240(122)+a&
      &cd240(121)+acd240(120)+acd240(119)+acd240(118)+acd240(117)+acd240(116)+a&
      &cd240(115)+acd240(113)+acd240(114)
      acd240(113)=acd240(44)*acd240(113)
      acd240(114)=acd240(84)*acd240(104)
      acd240(115)=acd240(83)*acd240(103)
      acd240(116)=acd240(82)*acd240(102)
      acd240(117)=acd240(54)*acd240(101)
      acd240(118)=acd240(53)*acd240(100)
      acd240(119)=acd240(52)*acd240(99)
      acd240(120)=acd240(51)*acd240(98)
      acd240(121)=acd240(50)*acd240(97)
      acd240(122)=acd240(49)*acd240(96)
      acd240(123)=acd240(48)*acd240(95)
      acd240(124)=acd240(43)*acd240(67)
      acd240(125)=acd240(42)*acd240(63)
      acd240(126)=acd240(41)*acd240(60)
      acd240(127)=acd240(40)*acd240(57)
      acd240(114)=acd240(127)+acd240(126)+acd240(125)+acd240(124)+acd240(123)+a&
      &cd240(122)+acd240(121)+acd240(120)+acd240(119)+acd240(118)+acd240(117)+a&
      &cd240(116)+acd240(114)+acd240(115)
      acd240(114)=acd240(20)*acd240(114)
      acd240(115)=acd240(84)*acd240(81)
      acd240(116)=acd240(83)*acd240(79)
      acd240(117)=acd240(82)*acd240(77)
      acd240(118)=acd240(54)*acd240(75)
      acd240(119)=acd240(53)*acd240(74)
      acd240(120)=acd240(52)*acd240(73)
      acd240(121)=acd240(51)*acd240(72)
      acd240(122)=acd240(50)*acd240(71)
      acd240(123)=acd240(49)*acd240(70)
      acd240(124)=acd240(48)*acd240(69)
      acd240(125)=acd240(43)*acd240(65)
      acd240(126)=acd240(42)*acd240(62)
      acd240(127)=acd240(41)*acd240(59)
      acd240(128)=acd240(40)*acd240(55)
      acd240(115)=acd240(128)+acd240(127)+acd240(126)+acd240(125)+acd240(124)+a&
      &cd240(123)+acd240(122)+acd240(121)+acd240(120)+acd240(119)+acd240(118)+a&
      &cd240(117)+acd240(115)+acd240(116)
      acd240(115)=acd240(16)*acd240(115)
      acd240(116)=acd240(8)+acd240(10)-acd240(12)
      acd240(116)=acd240(56)*acd240(116)
      acd240(117)=acd240(80)*acd240(94)
      acd240(118)=acd240(78)*acd240(93)
      acd240(119)=acd240(76)*acd240(92)
      acd240(120)=acd240(36)*acd240(91)
      acd240(121)=acd240(34)*acd240(90)
      acd240(122)=acd240(32)*acd240(89)
      acd240(123)=acd240(30)*acd240(88)
      acd240(124)=acd240(28)*acd240(87)
      acd240(125)=acd240(26)*acd240(86)
      acd240(126)=acd240(24)*acd240(85)
      acd240(127)=acd240(14)*acd240(66)
      acd240(116)=acd240(127)+acd240(126)+acd240(125)+acd240(124)+acd240(123)+a&
      &cd240(122)+acd240(121)+acd240(120)+acd240(119)+acd240(117)+acd240(118)+a&
      &cd240(116)
      acd240(116)=acd240(45)*acd240(116)
      acd240(117)=acd240(40)+acd240(41)-acd240(42)
      acd240(117)=acd240(56)*acd240(117)
      acd240(118)=acd240(84)*acd240(94)
      acd240(119)=acd240(83)*acd240(93)
      acd240(120)=acd240(82)*acd240(92)
      acd240(121)=acd240(54)*acd240(91)
      acd240(122)=acd240(53)*acd240(90)
      acd240(123)=acd240(52)*acd240(89)
      acd240(124)=acd240(51)*acd240(88)
      acd240(125)=acd240(50)*acd240(87)
      acd240(126)=acd240(49)*acd240(86)
      acd240(127)=acd240(48)*acd240(85)
      acd240(128)=acd240(43)*acd240(66)
      acd240(117)=acd240(128)+acd240(127)+acd240(126)+acd240(125)+acd240(124)+a&
      &cd240(123)+acd240(122)+acd240(121)+acd240(120)+acd240(118)+acd240(119)+a&
      &cd240(117)
      acd240(117)=acd240(18)*acd240(117)
      acd240(118)=acd240(54)*acd240(37)
      acd240(119)=acd240(53)*acd240(35)
      acd240(120)=acd240(52)*acd240(33)
      acd240(121)=acd240(51)*acd240(31)
      acd240(122)=acd240(50)*acd240(29)
      acd240(123)=acd240(49)*acd240(27)
      acd240(124)=acd240(48)*acd240(25)
      acd240(125)=acd240(43)*acd240(15)
      acd240(126)=acd240(42)*acd240(13)
      acd240(127)=acd240(41)*acd240(11)
      acd240(128)=acd240(40)*acd240(9)
      acd240(118)=-acd240(124)-acd240(123)+acd240(122)+acd240(119)+acd240(118)+&
      &acd240(120)-acd240(121)+acd240(125)-acd240(126)+acd240(127)+acd240(128)
      acd240(119)=acd240(6)+acd240(7)
      acd240(120)=-acd240(118)*acd240(119)
      acd240(121)=acd240(36)*acd240(37)
      acd240(122)=acd240(34)*acd240(35)
      acd240(123)=acd240(32)*acd240(33)
      acd240(124)=acd240(30)*acd240(31)
      acd240(125)=acd240(28)*acd240(29)
      acd240(126)=acd240(26)*acd240(27)
      acd240(127)=acd240(24)*acd240(25)
      acd240(128)=acd240(14)*acd240(15)
      acd240(129)=acd240(12)*acd240(13)
      acd240(130)=acd240(10)*acd240(11)
      acd240(131)=acd240(8)*acd240(9)
      acd240(121)=-acd240(127)-acd240(126)+acd240(125)-acd240(124)+acd240(123)+&
      &acd240(121)+acd240(122)+acd240(128)-acd240(129)+acd240(130)+acd240(131)
      acd240(122)=acd240(38)+acd240(39)
      acd240(123)=-acd240(121)*acd240(122)
      acd240(124)=acd240(36)*acd240(111)
      acd240(125)=acd240(34)*acd240(110)
      acd240(126)=acd240(32)*acd240(109)
      acd240(127)=acd240(30)*acd240(108)
      acd240(128)=acd240(28)*acd240(107)
      acd240(129)=acd240(26)*acd240(106)
      acd240(130)=acd240(24)*acd240(105)
      acd240(131)=acd240(14)*acd240(68)
      acd240(132)=acd240(12)*acd240(64)
      acd240(133)=acd240(10)*acd240(61)
      acd240(134)=acd240(8)*acd240(58)
      acd240(124)=acd240(134)+acd240(133)+acd240(132)+acd240(131)+acd240(130)+a&
      &cd240(129)+acd240(128)+acd240(127)+acd240(126)+acd240(124)+acd240(125)
      acd240(124)=acd240(47)*acd240(124)
      acd240(125)=acd240(54)*acd240(111)
      acd240(126)=acd240(53)*acd240(110)
      acd240(127)=acd240(52)*acd240(109)
      acd240(128)=acd240(51)*acd240(108)
      acd240(129)=acd240(50)*acd240(107)
      acd240(130)=acd240(49)*acd240(106)
      acd240(131)=acd240(48)*acd240(105)
      acd240(132)=acd240(43)*acd240(68)
      acd240(133)=acd240(42)*acd240(64)
      acd240(134)=acd240(41)*acd240(61)
      acd240(135)=acd240(40)*acd240(58)
      acd240(125)=acd240(135)+acd240(134)+acd240(133)+acd240(132)+acd240(131)+a&
      &cd240(130)+acd240(129)+acd240(128)+acd240(127)+acd240(125)+acd240(126)
      acd240(125)=acd240(22)*acd240(125)
      acd240(122)=-acd240(5)*acd240(122)
      acd240(126)=acd240(47)*acd240(23)
      acd240(127)=acd240(46)*acd240(21)
      acd240(128)=acd240(45)*acd240(19)
      acd240(129)=acd240(44)*acd240(17)
      acd240(118)=acd240(129)+acd240(128)+acd240(127)+acd240(126)+acd240(118)+a&
      &cd240(122)
      acd240(118)=acd240(4)*acd240(118)
      acd240(119)=2.0_ki*acd240(4)-acd240(119)
      acd240(119)=acd240(5)*acd240(119)
      acd240(122)=acd240(22)*acd240(23)
      acd240(126)=acd240(20)*acd240(21)
      acd240(127)=acd240(18)*acd240(19)
      acd240(128)=acd240(16)*acd240(17)
      acd240(119)=acd240(128)+acd240(127)+acd240(126)+acd240(122)+acd240(119)+a&
      &cd240(121)
      acd240(119)=acd240(3)*acd240(119)
      acd240(121)=acd240(1)*acd240(2)
      brack=acd240(112)+acd240(113)+acd240(114)+acd240(115)+acd240(116)+acd240(&
      &117)+acd240(118)+acd240(119)+acd240(120)+2.0_ki*acd240(121)+acd240(123)+&
      &acd240(124)+acd240(125)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd240h0
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
!---#[ subroutine reconstruct_d240:
   subroutine     reconstruct_d240(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_240:
      coeffs%coeffs_240%c0 = derivative(czip)
      coeffs%coeffs_240%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_240%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_240%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_240%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_240%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_240%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_240%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_240%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_240%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_240%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_240%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_240%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_240%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_240%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_240:
   end subroutine reconstruct_d240
!---#] subroutine reconstruct_d240:
end module     p1_dbarc_epnebbbarg_d240h0l1d