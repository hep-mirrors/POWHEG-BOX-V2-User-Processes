module     p8_cbarc_epnemumnmubarg_d65h6l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity6d65h6l1d.f90
   ! generator: buildfortran_d.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d65
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd65h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd65
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd65h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd65
      complex(ki) :: brack
      acd65(1)=k1(iv1)
      acd65(2)=abb65(34)
      acd65(3)=k2(iv1)
      acd65(4)=abb65(59)
      acd65(5)=k3(iv1)
      acd65(6)=abb65(274)
      acd65(7)=k4(iv1)
      acd65(8)=k5(iv1)
      acd65(9)=k6(iv1)
      acd65(10)=k7(iv1)
      acd65(11)=abb65(66)
      acd65(12)=spvak2k1(iv1)
      acd65(13)=abb65(33)
      acd65(14)=spvak2k3(iv1)
      acd65(15)=abb65(48)
      acd65(16)=spvak2k4(iv1)
      acd65(17)=abb65(52)
      acd65(18)=spvak2k5(iv1)
      acd65(19)=abb65(118)
      acd65(20)=spvak2k6(iv1)
      acd65(21)=abb65(122)
      acd65(22)=spvak4k3(iv1)
      acd65(23)=abb65(126)
      acd65(24)=spvak4k6(iv1)
      acd65(25)=abb65(55)
      acd65(26)=spvak5k3(iv1)
      acd65(27)=abb65(407)
      acd65(28)=spvak5k6(iv1)
      acd65(29)=abb65(117)
      acd65(30)=spvak7k1(iv1)
      acd65(31)=abb65(46)
      acd65(32)=spvak7k2(iv1)
      acd65(33)=abb65(30)
      acd65(34)=spvak7k3(iv1)
      acd65(35)=abb65(269)
      acd65(36)=spvak7k4(iv1)
      acd65(37)=abb65(402)
      acd65(38)=spvak7k5(iv1)
      acd65(39)=abb65(398)
      acd65(40)=spvak7k6(iv1)
      acd65(41)=abb65(369)
      acd65(42)=acd65(9)+acd65(8)-acd65(7)-acd65(5)
      acd65(42)=acd65(6)*acd65(42)
      acd65(43)=-acd65(2)*acd65(1)
      acd65(44)=-acd65(4)*acd65(3)
      acd65(45)=-acd65(11)*acd65(10)
      acd65(46)=-acd65(13)*acd65(12)
      acd65(47)=-acd65(15)*acd65(14)
      acd65(48)=-acd65(17)*acd65(16)
      acd65(49)=-acd65(19)*acd65(18)
      acd65(50)=-acd65(21)*acd65(20)
      acd65(51)=-acd65(23)*acd65(22)
      acd65(52)=-acd65(25)*acd65(24)
      acd65(53)=-acd65(27)*acd65(26)
      acd65(54)=-acd65(29)*acd65(28)
      acd65(55)=-acd65(31)*acd65(30)
      acd65(56)=-acd65(33)*acd65(32)
      acd65(57)=-acd65(35)*acd65(34)
      acd65(58)=-acd65(37)*acd65(36)
      acd65(59)=-acd65(39)*acd65(38)
      acd65(60)=-acd65(41)*acd65(40)
      brack=acd65(42)+acd65(43)+acd65(44)+acd65(45)+acd65(46)+acd65(47)+acd65(4&
      &8)+acd65(49)+acd65(50)+acd65(51)+acd65(52)+acd65(53)+acd65(54)+acd65(55)&
      &+acd65(56)+acd65(57)+acd65(58)+acd65(59)+acd65(60)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd65h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(138) :: acd65
      complex(ki) :: brack
      acd65(1)=k1(iv1)
      acd65(2)=k2(iv2)
      acd65(3)=abb65(334)
      acd65(4)=spvak2k3(iv2)
      acd65(5)=abb65(161)
      acd65(6)=spvak2k6(iv2)
      acd65(7)=abb65(167)
      acd65(8)=spvak3k2(iv2)
      acd65(9)=abb65(56)
      acd65(10)=spvak4k1(iv2)
      acd65(11)=abb65(224)
      acd65(12)=spvak4k2(iv2)
      acd65(13)=abb65(94)
      acd65(14)=spvak5k1(iv2)
      acd65(15)=abb65(391)
      acd65(16)=spvak5k2(iv2)
      acd65(17)=abb65(406)
      acd65(18)=spvak6k2(iv2)
      acd65(19)=abb65(163)
      acd65(20)=spvak7k1(iv2)
      acd65(21)=abb65(90)
      acd65(22)=spvak7k2(iv2)
      acd65(23)=abb65(32)
      acd65(24)=spvak7k3(iv2)
      acd65(25)=abb65(96)
      acd65(26)=spvak7k4(iv2)
      acd65(27)=abb65(403)
      acd65(28)=spvak7k5(iv2)
      acd65(29)=abb65(399)
      acd65(30)=spvak7k6(iv2)
      acd65(31)=abb65(63)
      acd65(32)=k1(iv2)
      acd65(33)=k2(iv1)
      acd65(34)=spvak2k3(iv1)
      acd65(35)=spvak2k6(iv1)
      acd65(36)=spvak3k2(iv1)
      acd65(37)=spvak4k1(iv1)
      acd65(38)=spvak4k2(iv1)
      acd65(39)=spvak5k1(iv1)
      acd65(40)=spvak5k2(iv1)
      acd65(41)=spvak6k2(iv1)
      acd65(42)=spvak7k1(iv1)
      acd65(43)=spvak7k2(iv1)
      acd65(44)=spvak7k3(iv1)
      acd65(45)=spvak7k4(iv1)
      acd65(46)=spvak7k5(iv1)
      acd65(47)=spvak7k6(iv1)
      acd65(48)=k3(iv2)
      acd65(49)=abb65(276)
      acd65(50)=k4(iv2)
      acd65(51)=k5(iv2)
      acd65(52)=k6(iv2)
      acd65(53)=k7(iv2)
      acd65(54)=spvak2k1(iv2)
      acd65(55)=abb65(41)
      acd65(56)=spvak4k3(iv2)
      acd65(57)=abb65(49)
      acd65(58)=spvak4k6(iv2)
      acd65(59)=abb65(58)
      acd65(60)=spvak5k3(iv2)
      acd65(61)=abb65(405)
      acd65(62)=spvak5k6(iv2)
      acd65(63)=abb65(381)
      acd65(64)=k3(iv1)
      acd65(65)=k4(iv1)
      acd65(66)=k5(iv1)
      acd65(67)=k6(iv1)
      acd65(68)=k7(iv1)
      acd65(69)=spvak2k1(iv1)
      acd65(70)=spvak4k3(iv1)
      acd65(71)=spvak4k6(iv1)
      acd65(72)=spvak5k3(iv1)
      acd65(73)=spvak5k6(iv1)
      acd65(74)=abb65(85)
      acd65(75)=abb65(199)
      acd65(76)=abb65(171)
      acd65(77)=abb65(105)
      acd65(78)=abb65(416)
      acd65(79)=abb65(36)
      acd65(80)=spvak2k4(iv2)
      acd65(81)=abb65(160)
      acd65(82)=spvak2k5(iv2)
      acd65(83)=abb65(130)
      acd65(84)=spvak3k1(iv2)
      acd65(85)=abb65(88)
      acd65(86)=spvak6k1(iv2)
      acd65(87)=abb65(251)
      acd65(88)=spvak2k4(iv1)
      acd65(89)=spvak2k5(iv1)
      acd65(90)=spvak3k1(iv1)
      acd65(91)=spvak6k1(iv1)
      acd65(92)=abb65(13)
      acd65(93)=abb65(16)
      acd65(94)=abb65(21)
      acd65(95)=abb65(42)
      acd65(96)=abb65(18)
      acd65(97)=abb65(22)
      acd65(98)=abb65(26)
      acd65(99)=abb65(23)
      acd65(100)=abb65(82)
      acd65(101)=abb65(19)
      acd65(102)=abb65(141)
      acd65(103)=abb65(110)
      acd65(104)=abb65(51)
      acd65(105)=abb65(389)
      acd65(106)=abb65(20)
      acd65(107)=abb65(12)
      acd65(108)=abb65(15)
      acd65(109)=abb65(53)
      acd65(110)=abb65(325)
      acd65(111)=spvak2k7(iv2)
      acd65(112)=abb65(70)
      acd65(113)=spvak2k7(iv1)
      acd65(114)=abb65(17)
      acd65(115)=abb65(39)
      acd65(116)=abb65(60)
      acd65(117)=abb65(24)
      acd65(118)=spvak1k2(iv2)
      acd65(119)=spvak1k2(iv1)
      acd65(120)=acd65(31)*acd65(47)
      acd65(121)=acd65(29)*acd65(46)
      acd65(122)=acd65(27)*acd65(45)
      acd65(123)=acd65(25)*acd65(44)
      acd65(124)=acd65(19)*acd65(41)
      acd65(125)=acd65(17)*acd65(40)
      acd65(126)=acd65(15)*acd65(39)
      acd65(127)=acd65(13)*acd65(38)
      acd65(128)=acd65(11)*acd65(37)
      acd65(129)=acd65(9)*acd65(36)
      acd65(130)=acd65(7)*acd65(35)
      acd65(131)=acd65(5)*acd65(34)
      acd65(132)=acd65(43)*acd65(23)
      acd65(133)=acd65(42)*acd65(21)
      acd65(120)=acd65(126)-acd65(127)-acd65(128)+acd65(129)-acd65(122)+acd65(1&
      &23)-acd65(124)+acd65(125)-acd65(120)+acd65(121)+acd65(130)-acd65(131)+ac&
      &d65(132)+acd65(133)
      acd65(121)=acd65(32)*acd65(120)
      acd65(122)=acd65(31)*acd65(30)
      acd65(123)=acd65(29)*acd65(28)
      acd65(124)=acd65(27)*acd65(26)
      acd65(125)=acd65(25)*acd65(24)
      acd65(126)=acd65(19)*acd65(18)
      acd65(127)=acd65(17)*acd65(16)
      acd65(128)=acd65(14)*acd65(15)
      acd65(129)=acd65(13)*acd65(12)
      acd65(130)=acd65(10)*acd65(11)
      acd65(131)=acd65(9)*acd65(8)
      acd65(132)=acd65(6)*acd65(7)
      acd65(133)=acd65(4)*acd65(5)
      acd65(134)=acd65(22)*acd65(23)
      acd65(135)=acd65(20)*acd65(21)
      acd65(122)=acd65(128)-acd65(129)-acd65(130)+acd65(131)-acd65(124)+acd65(1&
      &25)-acd65(126)+acd65(127)-acd65(122)+acd65(123)+acd65(132)-acd65(133)+ac&
      &d65(134)+acd65(135)
      acd65(123)=acd65(1)*acd65(122)
      acd65(124)=-acd65(32)-acd65(53)
      acd65(124)=acd65(3)*acd65(124)
      acd65(125)=acd65(62)*acd65(63)
      acd65(126)=acd65(60)*acd65(61)
      acd65(127)=acd65(58)*acd65(59)
      acd65(128)=acd65(56)*acd65(57)
      acd65(129)=-acd65(48)-acd65(50)+acd65(51)+acd65(52)
      acd65(130)=acd65(49)*acd65(129)
      acd65(131)=acd65(54)*acd65(55)
      acd65(122)=acd65(131)+acd65(130)+acd65(128)+acd65(127)+acd65(125)+acd65(1&
      &26)+acd65(124)+acd65(122)
      acd65(122)=acd65(33)*acd65(122)
      acd65(124)=-2.0_ki*acd65(33)-acd65(1)-acd65(68)
      acd65(124)=acd65(3)*acd65(124)
      acd65(125)=acd65(63)*acd65(73)
      acd65(126)=acd65(61)*acd65(72)
      acd65(127)=acd65(59)*acd65(71)
      acd65(128)=acd65(57)*acd65(70)
      acd65(130)=-acd65(64)-acd65(65)+acd65(66)+acd65(67)
      acd65(131)=acd65(49)*acd65(130)
      acd65(132)=acd65(69)*acd65(55)
      acd65(120)=acd65(132)+acd65(131)+acd65(128)+acd65(127)+acd65(125)+acd65(1&
      &26)+acd65(124)+acd65(120)
      acd65(120)=acd65(2)*acd65(120)
      acd65(124)=acd65(91)*acd65(110)
      acd65(125)=acd65(90)*acd65(109)
      acd65(126)=acd65(89)*acd65(108)
      acd65(127)=acd65(88)*acd65(107)
      acd65(128)=acd65(112)*acd65(113)
      acd65(131)=acd65(39)*acd65(97)
      acd65(132)=acd65(37)*acd65(95)
      acd65(133)=acd65(35)*acd65(93)
      acd65(134)=acd65(34)*acd65(92)
      acd65(135)=acd65(69)*acd65(106)
      acd65(136)=acd65(42)*acd65(100)
      acd65(124)=acd65(136)+acd65(135)+acd65(134)+acd65(133)+acd65(132)+acd65(1&
      &31)+acd65(128)+acd65(127)+acd65(126)+acd65(124)+acd65(125)
      acd65(124)=acd65(22)*acd65(124)
      acd65(125)=acd65(30)*acd65(117)
      acd65(126)=acd65(28)*acd65(116)
      acd65(127)=acd65(26)*acd65(115)
      acd65(128)=acd65(24)*acd65(114)
      acd65(131)=acd65(18)*acd65(99)
      acd65(132)=acd65(16)*acd65(98)
      acd65(133)=acd65(12)*acd65(96)
      acd65(134)=acd65(8)*acd65(94)
      acd65(135)=acd65(112)*acd65(118)
      acd65(136)=acd65(53)*acd65(79)
      acd65(125)=acd65(136)+acd65(135)+acd65(134)+acd65(133)+acd65(132)+acd65(1&
      &31)+acd65(128)+acd65(127)+acd65(125)+acd65(126)
      acd65(125)=acd65(69)*acd65(125)
      acd65(126)=acd65(47)*acd65(117)
      acd65(127)=acd65(46)*acd65(116)
      acd65(128)=acd65(45)*acd65(115)
      acd65(131)=acd65(44)*acd65(114)
      acd65(132)=acd65(41)*acd65(99)
      acd65(133)=acd65(40)*acd65(98)
      acd65(134)=acd65(38)*acd65(96)
      acd65(135)=acd65(36)*acd65(94)
      acd65(136)=acd65(112)*acd65(119)
      acd65(137)=acd65(68)*acd65(79)
      acd65(126)=acd65(137)+acd65(136)+acd65(135)+acd65(134)+acd65(133)+acd65(1&
      &32)+acd65(131)+acd65(128)+acd65(126)+acd65(127)
      acd65(126)=acd65(54)*acd65(126)
      acd65(127)=acd65(86)*acd65(110)
      acd65(128)=acd65(84)*acd65(109)
      acd65(131)=acd65(82)*acd65(108)
      acd65(132)=acd65(80)*acd65(107)
      acd65(133)=acd65(112)*acd65(111)
      acd65(134)=acd65(14)*acd65(97)
      acd65(135)=acd65(10)*acd65(95)
      acd65(136)=acd65(6)*acd65(93)
      acd65(137)=acd65(4)*acd65(92)
      acd65(138)=acd65(54)*acd65(106)
      acd65(127)=acd65(138)+acd65(137)+acd65(136)+acd65(135)+acd65(134)+acd65(1&
      &33)+acd65(132)+acd65(131)+acd65(127)+acd65(128)
      acd65(127)=acd65(43)*acd65(127)
      acd65(128)=acd65(86)*acd65(87)
      acd65(131)=acd65(84)*acd65(85)
      acd65(132)=acd65(82)*acd65(83)
      acd65(133)=acd65(80)*acd65(81)
      acd65(134)=acd65(14)*acd65(78)
      acd65(135)=acd65(10)*acd65(77)
      acd65(136)=acd65(6)*acd65(76)
      acd65(137)=acd65(4)*acd65(75)
      acd65(128)=acd65(137)+acd65(136)+acd65(135)+acd65(134)+acd65(133)+acd65(1&
      &32)+acd65(128)+acd65(131)
      acd65(128)=acd65(68)*acd65(128)
      acd65(131)=acd65(87)*acd65(91)
      acd65(132)=acd65(85)*acd65(90)
      acd65(133)=acd65(83)*acd65(89)
      acd65(134)=acd65(81)*acd65(88)
      acd65(135)=acd65(39)*acd65(78)
      acd65(136)=acd65(37)*acd65(77)
      acd65(137)=acd65(35)*acd65(76)
      acd65(138)=acd65(34)*acd65(75)
      acd65(131)=acd65(138)+acd65(137)+acd65(136)+acd65(135)+acd65(134)+acd65(1&
      &33)+acd65(131)+acd65(132)
      acd65(131)=acd65(53)*acd65(131)
      acd65(132)=acd65(73)*acd65(105)
      acd65(133)=acd65(72)*acd65(104)
      acd65(134)=acd65(71)*acd65(103)
      acd65(135)=acd65(70)*acd65(102)
      acd65(130)=acd65(74)*acd65(130)
      acd65(136)=acd65(68)*acd65(21)
      acd65(137)=acd65(69)*acd65(101)
      acd65(138)=acd65(43)*acd65(100)
      acd65(130)=acd65(138)+acd65(137)+acd65(136)+acd65(130)+acd65(135)+acd65(1&
      &34)+acd65(132)+acd65(133)
      acd65(130)=acd65(20)*acd65(130)
      acd65(132)=acd65(62)*acd65(105)
      acd65(133)=acd65(60)*acd65(104)
      acd65(134)=acd65(58)*acd65(103)
      acd65(135)=acd65(56)*acd65(102)
      acd65(129)=acd65(74)*acd65(129)
      acd65(136)=acd65(53)*acd65(21)
      acd65(137)=acd65(54)*acd65(101)
      acd65(129)=acd65(137)+acd65(136)+acd65(129)+acd65(135)+acd65(134)+acd65(1&
      &32)+acd65(133)
      acd65(129)=acd65(42)*acd65(129)
      brack=acd65(120)+acd65(121)+acd65(122)+acd65(123)+acd65(124)+acd65(125)+a&
      &cd65(126)+acd65(127)+acd65(128)+acd65(129)+acd65(130)+acd65(131)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd65h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(105) :: acd65
      complex(ki) :: brack
      acd65(1)=d(iv1,iv2)
      acd65(2)=k2(iv3)
      acd65(3)=abb65(334)
      acd65(4)=spvak2k1(iv3)
      acd65(5)=abb65(37)
      acd65(6)=spvak2k3(iv3)
      acd65(7)=abb65(69)
      acd65(8)=spvak2k4(iv3)
      acd65(9)=abb65(174)
      acd65(10)=spvak2k5(iv3)
      acd65(11)=abb65(158)
      acd65(12)=spvak2k6(iv3)
      acd65(13)=abb65(111)
      acd65(14)=spvak3k1(iv3)
      acd65(15)=abb65(97)
      acd65(16)=spvak3k2(iv3)
      acd65(17)=abb65(76)
      acd65(18)=spvak4k1(iv3)
      acd65(19)=abb65(35)
      acd65(20)=spvak4k2(iv3)
      acd65(21)=abb65(181)
      acd65(22)=spvak5k1(iv3)
      acd65(23)=abb65(412)
      acd65(24)=spvak5k2(iv3)
      acd65(25)=abb65(408)
      acd65(26)=spvak6k1(iv3)
      acd65(27)=abb65(264)
      acd65(28)=spvak6k2(iv3)
      acd65(29)=abb65(239)
      acd65(30)=spvak7k1(iv3)
      acd65(31)=abb65(90)
      acd65(32)=spvak7k2(iv3)
      acd65(33)=abb65(29)
      acd65(34)=spvak7k3(iv3)
      acd65(35)=abb65(64)
      acd65(36)=spvak7k4(iv3)
      acd65(37)=abb65(404)
      acd65(38)=spvak7k5(iv3)
      acd65(39)=abb65(401)
      acd65(40)=spvak7k6(iv3)
      acd65(41)=abb65(392)
      acd65(42)=d(iv1,iv3)
      acd65(43)=k2(iv2)
      acd65(44)=spvak2k1(iv2)
      acd65(45)=spvak2k3(iv2)
      acd65(46)=spvak2k4(iv2)
      acd65(47)=spvak2k5(iv2)
      acd65(48)=spvak2k6(iv2)
      acd65(49)=spvak3k1(iv2)
      acd65(50)=spvak3k2(iv2)
      acd65(51)=spvak4k1(iv2)
      acd65(52)=spvak4k2(iv2)
      acd65(53)=spvak5k1(iv2)
      acd65(54)=spvak5k2(iv2)
      acd65(55)=spvak6k1(iv2)
      acd65(56)=spvak6k2(iv2)
      acd65(57)=spvak7k1(iv2)
      acd65(58)=spvak7k2(iv2)
      acd65(59)=spvak7k3(iv2)
      acd65(60)=spvak7k4(iv2)
      acd65(61)=spvak7k5(iv2)
      acd65(62)=spvak7k6(iv2)
      acd65(63)=d(iv2,iv3)
      acd65(64)=k2(iv1)
      acd65(65)=spvak2k1(iv1)
      acd65(66)=spvak2k3(iv1)
      acd65(67)=spvak2k4(iv1)
      acd65(68)=spvak2k5(iv1)
      acd65(69)=spvak2k6(iv1)
      acd65(70)=spvak3k1(iv1)
      acd65(71)=spvak3k2(iv1)
      acd65(72)=spvak4k1(iv1)
      acd65(73)=spvak4k2(iv1)
      acd65(74)=spvak5k1(iv1)
      acd65(75)=spvak5k2(iv1)
      acd65(76)=spvak6k1(iv1)
      acd65(77)=spvak6k2(iv1)
      acd65(78)=spvak7k1(iv1)
      acd65(79)=spvak7k2(iv1)
      acd65(80)=spvak7k3(iv1)
      acd65(81)=spvak7k4(iv1)
      acd65(82)=spvak7k5(iv1)
      acd65(83)=spvak7k6(iv1)
      acd65(84)=acd65(2)*acd65(3)
      acd65(85)=-acd65(4)*acd65(5)
      acd65(86)=-acd65(6)*acd65(7)
      acd65(87)=-acd65(8)*acd65(9)
      acd65(88)=-acd65(10)*acd65(11)
      acd65(89)=-acd65(12)*acd65(13)
      acd65(90)=-acd65(14)*acd65(15)
      acd65(91)=-acd65(16)*acd65(17)
      acd65(92)=-acd65(18)*acd65(19)
      acd65(93)=-acd65(20)*acd65(21)
      acd65(94)=-acd65(22)*acd65(23)
      acd65(95)=-acd65(24)*acd65(25)
      acd65(96)=-acd65(26)*acd65(27)
      acd65(97)=-acd65(28)*acd65(29)
      acd65(98)=-acd65(30)*acd65(31)
      acd65(99)=-acd65(32)*acd65(33)
      acd65(100)=-acd65(34)*acd65(35)
      acd65(101)=-acd65(36)*acd65(37)
      acd65(102)=-acd65(38)*acd65(39)
      acd65(103)=-acd65(40)*acd65(41)
      acd65(84)=acd65(103)+acd65(102)+acd65(101)+acd65(100)+acd65(99)+acd65(98)&
      &+acd65(97)+acd65(96)+acd65(95)+acd65(94)+acd65(93)+acd65(92)+acd65(91)+a&
      &cd65(90)+acd65(89)+acd65(88)+acd65(87)+acd65(86)+acd65(84)+acd65(85)
      acd65(84)=acd65(1)*acd65(84)
      acd65(85)=acd65(43)*acd65(3)
      acd65(86)=-acd65(44)*acd65(5)
      acd65(87)=-acd65(45)*acd65(7)
      acd65(88)=-acd65(46)*acd65(9)
      acd65(89)=-acd65(47)*acd65(11)
      acd65(90)=-acd65(48)*acd65(13)
      acd65(91)=-acd65(49)*acd65(15)
      acd65(92)=-acd65(50)*acd65(17)
      acd65(93)=-acd65(51)*acd65(19)
      acd65(94)=-acd65(52)*acd65(21)
      acd65(95)=-acd65(53)*acd65(23)
      acd65(96)=-acd65(54)*acd65(25)
      acd65(97)=-acd65(55)*acd65(27)
      acd65(98)=-acd65(56)*acd65(29)
      acd65(99)=-acd65(57)*acd65(31)
      acd65(100)=-acd65(58)*acd65(33)
      acd65(101)=-acd65(59)*acd65(35)
      acd65(102)=-acd65(60)*acd65(37)
      acd65(103)=-acd65(61)*acd65(39)
      acd65(104)=-acd65(62)*acd65(41)
      acd65(85)=acd65(104)+acd65(103)+acd65(102)+acd65(101)+acd65(100)+acd65(99&
      &)+acd65(98)+acd65(97)+acd65(96)+acd65(95)+acd65(94)+acd65(93)+acd65(92)+&
      &acd65(91)+acd65(90)+acd65(89)+acd65(88)+acd65(87)+acd65(86)+acd65(85)
      acd65(85)=acd65(42)*acd65(85)
      acd65(86)=acd65(64)*acd65(3)
      acd65(87)=-acd65(65)*acd65(5)
      acd65(88)=-acd65(66)*acd65(7)
      acd65(89)=-acd65(67)*acd65(9)
      acd65(90)=-acd65(68)*acd65(11)
      acd65(91)=-acd65(69)*acd65(13)
      acd65(92)=-acd65(70)*acd65(15)
      acd65(93)=-acd65(71)*acd65(17)
      acd65(94)=-acd65(72)*acd65(19)
      acd65(95)=-acd65(73)*acd65(21)
      acd65(96)=-acd65(74)*acd65(23)
      acd65(97)=-acd65(75)*acd65(25)
      acd65(98)=-acd65(76)*acd65(27)
      acd65(99)=-acd65(77)*acd65(29)
      acd65(100)=-acd65(78)*acd65(31)
      acd65(101)=-acd65(79)*acd65(33)
      acd65(102)=-acd65(80)*acd65(35)
      acd65(103)=-acd65(81)*acd65(37)
      acd65(104)=-acd65(82)*acd65(39)
      acd65(105)=-acd65(83)*acd65(41)
      acd65(86)=acd65(105)+acd65(104)+acd65(103)+acd65(102)+acd65(101)+acd65(10&
      &0)+acd65(99)+acd65(98)+acd65(97)+acd65(96)+acd65(95)+acd65(94)+acd65(93)&
      &+acd65(92)+acd65(91)+acd65(90)+acd65(89)+acd65(88)+acd65(87)+acd65(86)
      acd65(86)=acd65(63)*acd65(86)
      acd65(84)=acd65(86)+acd65(85)+acd65(84)
      brack=2.0_ki*acd65(84)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd65h6
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
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
      if(present(i3)) then
          iv3=i3
          deg=3
      else
          iv3=1
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
      if(deg.eq.3) then
         numerator = cond(epspow.eq.t1,brack_4,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d65:
   subroutine     reconstruct_d65(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_65:
      coeffs%coeffs_65%c0 = derivative(czip)
      coeffs%coeffs_65%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_65%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_65%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_65%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_65%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_65%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_65%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_65%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_65%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_65%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_65%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_65%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_65%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_65%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_65%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_65%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_65%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_65%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_65%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_65%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_65%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_65%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_65%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_65%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_65%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_65%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_65%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_65%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_65%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_65%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_65%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_65%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_65%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_65%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_65:
   end subroutine reconstruct_d65
!---#] subroutine reconstruct_d65:
end module     p8_cbarc_epnemumnmubarg_d65h6l1d
