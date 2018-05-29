module     p8_cbarc_epnemumnmubarg_d1h6l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity6d1h6l1d.f90
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
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d1
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd1h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd1
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd1h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd1
      complex(ki) :: brack
      acd1(1)=k1(iv1)
      acd1(2)=abb1(41)
      acd1(3)=k7(iv1)
      acd1(4)=abb1(27)
      acd1(5)=spvak2k1(iv1)
      acd1(6)=abb1(36)
      acd1(7)=spvak2k6(iv1)
      acd1(8)=abb1(85)
      acd1(9)=spvak4k6(iv1)
      acd1(10)=abb1(34)
      acd1(11)=spvak5k6(iv1)
      acd1(12)=abb1(81)
      acd1(13)=spvak7k1(iv1)
      acd1(14)=abb1(71)
      acd1(15)=spvak7k2(iv1)
      acd1(16)=abb1(37)
      acd1(17)=spvak7k6(iv1)
      acd1(18)=abb1(47)
      acd1(19)=-acd1(2)*acd1(1)
      acd1(20)=-acd1(4)*acd1(3)
      acd1(21)=-acd1(6)*acd1(5)
      acd1(22)=-acd1(8)*acd1(7)
      acd1(23)=-acd1(10)*acd1(9)
      acd1(24)=-acd1(12)*acd1(11)
      acd1(25)=-acd1(14)*acd1(13)
      acd1(26)=-acd1(16)*acd1(15)
      acd1(27)=-acd1(18)*acd1(17)
      brack=acd1(19)+acd1(20)+acd1(21)+acd1(22)+acd1(23)+acd1(24)+acd1(25)+acd1&
      &(26)+acd1(27)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd1h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(102) :: acd1
      complex(ki) :: brack
      acd1(1)=d(iv1,iv2)
      acd1(2)=abb1(26)
      acd1(3)=k1(iv1)
      acd1(4)=k7(iv2)
      acd1(5)=abb1(42)
      acd1(6)=spvak4k3(iv2)
      acd1(7)=abb1(107)
      acd1(8)=spvak7k2(iv2)
      acd1(9)=abb1(67)
      acd1(10)=k1(iv2)
      acd1(11)=k7(iv1)
      acd1(12)=spvak4k3(iv1)
      acd1(13)=spvak7k2(iv1)
      acd1(14)=k2(iv1)
      acd1(15)=abb1(39)
      acd1(16)=abb1(63)
      acd1(17)=k2(iv2)
      acd1(18)=k3(iv1)
      acd1(19)=abb1(57)
      acd1(20)=spvak2k1(iv2)
      acd1(21)=abb1(79)
      acd1(22)=spvak5k1(iv2)
      acd1(23)=abb1(97)
      acd1(24)=spvak7k1(iv2)
      acd1(25)=abb1(75)
      acd1(26)=k3(iv2)
      acd1(27)=spvak2k1(iv1)
      acd1(28)=spvak5k1(iv1)
      acd1(29)=spvak7k1(iv1)
      acd1(30)=k4(iv1)
      acd1(31)=abb1(58)
      acd1(32)=k4(iv2)
      acd1(33)=abb1(59)
      acd1(34)=abb1(99)
      acd1(35)=abb1(74)
      acd1(36)=spvak2k6(iv2)
      acd1(37)=abb1(92)
      acd1(38)=spvak4k6(iv2)
      acd1(39)=abb1(104)
      acd1(40)=spvak5k3(iv2)
      acd1(41)=abb1(94)
      acd1(42)=spvak5k6(iv2)
      acd1(43)=abb1(84)
      acd1(44)=spvak2k6(iv1)
      acd1(45)=spvak4k6(iv1)
      acd1(46)=spvak5k3(iv1)
      acd1(47)=spvak5k6(iv1)
      acd1(48)=abb1(54)
      acd1(49)=abb1(23)
      acd1(50)=abb1(7)
      acd1(51)=abb1(86)
      acd1(52)=abb1(22)
      acd1(53)=abb1(6)
      acd1(54)=spvak7k6(iv2)
      acd1(55)=abb1(30)
      acd1(56)=spvak7k6(iv1)
      acd1(57)=abb1(10)
      acd1(58)=abb1(77)
      acd1(59)=abb1(62)
      acd1(60)=abb1(15)
      acd1(61)=abb1(80)
      acd1(62)=abb1(38)
      acd1(63)=abb1(87)
      acd1(64)=abb1(68)
      acd1(65)=spvak2k3(iv2)
      acd1(66)=abb1(13)
      acd1(67)=spvak2k7(iv2)
      acd1(68)=abb1(43)
      acd1(69)=spvak4k1(iv2)
      acd1(70)=abb1(52)
      acd1(71)=spvak4k7(iv2)
      acd1(72)=abb1(101)
      acd1(73)=spvak5k7(iv2)
      acd1(74)=abb1(78)
      acd1(75)=spvak2k3(iv1)
      acd1(76)=spvak2k7(iv1)
      acd1(77)=spvak4k1(iv1)
      acd1(78)=spvak4k7(iv1)
      acd1(79)=spvak5k7(iv1)
      acd1(80)=abb1(102)
      acd1(81)=abb1(20)
      acd1(82)=abb1(90)
      acd1(83)=abb1(24)
      acd1(84)=acd1(4)+acd1(26)
      acd1(84)=acd1(19)*acd1(84)
      acd1(85)=acd1(74)*acd1(73)
      acd1(86)=acd1(72)*acd1(71)
      acd1(87)=acd1(69)*acd1(70)
      acd1(88)=acd1(68)*acd1(67)
      acd1(89)=acd1(66)*acd1(65)
      acd1(90)=acd1(40)*acd1(62)
      acd1(91)=acd1(16)*acd1(17)
      acd1(92)=acd1(54)*acd1(64)
      acd1(93)=acd1(38)*acd1(61)
      acd1(94)=acd1(36)*acd1(60)
      acd1(95)=acd1(10)*acd1(9)
      acd1(96)=acd1(32)*acd1(31)
      acd1(97)=acd1(42)*acd1(63)
      acd1(98)=acd1(22)*acd1(58)
      acd1(99)=acd1(24)*acd1(59)
      acd1(100)=acd1(20)*acd1(57)
      acd1(101)=acd1(6)*acd1(48)
      acd1(84)=acd1(101)+acd1(100)+acd1(99)+acd1(98)+acd1(97)+acd1(96)+acd1(95)&
      &+acd1(94)+acd1(93)+acd1(92)+acd1(91)+acd1(90)+acd1(89)+acd1(88)+acd1(87)&
      &+acd1(85)+acd1(86)+acd1(84)
      acd1(84)=acd1(13)*acd1(84)
      acd1(85)=acd1(11)+acd1(18)
      acd1(85)=acd1(19)*acd1(85)
      acd1(86)=acd1(74)*acd1(79)
      acd1(87)=acd1(72)*acd1(78)
      acd1(88)=acd1(70)*acd1(77)
      acd1(89)=acd1(68)*acd1(76)
      acd1(90)=acd1(66)*acd1(75)
      acd1(91)=acd1(46)*acd1(62)
      acd1(92)=acd1(14)*acd1(16)
      acd1(93)=acd1(56)*acd1(64)
      acd1(94)=acd1(45)*acd1(61)
      acd1(95)=acd1(44)*acd1(60)
      acd1(96)=acd1(3)*acd1(9)
      acd1(97)=acd1(30)*acd1(31)
      acd1(98)=acd1(47)*acd1(63)
      acd1(99)=acd1(28)*acd1(58)
      acd1(100)=acd1(29)*acd1(59)
      acd1(101)=acd1(27)*acd1(57)
      acd1(102)=acd1(12)*acd1(48)
      acd1(85)=acd1(102)+acd1(101)+acd1(100)+acd1(99)+acd1(98)+acd1(97)+acd1(96&
      &)+acd1(95)+acd1(94)+acd1(93)+acd1(92)+acd1(91)+acd1(90)+acd1(89)+acd1(88&
      &)+acd1(86)+acd1(87)+acd1(85)
      acd1(85)=acd1(8)*acd1(85)
      acd1(86)=acd1(40)*acd1(41)
      acd1(87)=acd1(15)*acd1(17)
      acd1(88)=acd1(38)*acd1(39)
      acd1(89)=acd1(36)*acd1(37)
      acd1(90)=acd1(10)*acd1(5)
      acd1(91)=acd1(42)*acd1(43)
      acd1(92)=acd1(22)*acd1(34)
      acd1(93)=acd1(24)*acd1(35)
      acd1(94)=acd1(20)*acd1(33)
      acd1(86)=acd1(94)+acd1(93)+acd1(92)+acd1(91)+acd1(90)+acd1(89)+acd1(88)+a&
      &cd1(86)+acd1(87)
      acd1(86)=acd1(11)*acd1(86)
      acd1(87)=acd1(41)*acd1(46)
      acd1(88)=acd1(14)*acd1(15)
      acd1(89)=acd1(45)*acd1(39)
      acd1(90)=acd1(44)*acd1(37)
      acd1(91)=acd1(3)*acd1(5)
      acd1(92)=acd1(47)*acd1(43)
      acd1(93)=acd1(28)*acd1(34)
      acd1(94)=acd1(29)*acd1(35)
      acd1(95)=acd1(27)*acd1(33)
      acd1(87)=acd1(95)+acd1(94)+acd1(93)+acd1(92)+acd1(91)+acd1(90)+acd1(89)+a&
      &cd1(87)+acd1(88)
      acd1(87)=acd1(4)*acd1(87)
      acd1(88)=acd1(54)*acd1(55)
      acd1(89)=acd1(36)*acd1(52)
      acd1(90)=acd1(10)*acd1(7)
      acd1(91)=acd1(42)*acd1(53)
      acd1(92)=acd1(22)*acd1(50)
      acd1(93)=acd1(24)*acd1(51)
      acd1(94)=acd1(20)*acd1(49)
      acd1(88)=acd1(94)+acd1(93)+acd1(92)+acd1(91)+acd1(90)+acd1(88)+acd1(89)
      acd1(88)=acd1(12)*acd1(88)
      acd1(89)=acd1(56)*acd1(55)
      acd1(90)=acd1(44)*acd1(52)
      acd1(91)=acd1(3)*acd1(7)
      acd1(92)=acd1(47)*acd1(53)
      acd1(93)=acd1(28)*acd1(50)
      acd1(94)=acd1(29)*acd1(51)
      acd1(95)=acd1(27)*acd1(49)
      acd1(89)=acd1(95)+acd1(94)+acd1(93)+acd1(92)+acd1(91)+acd1(89)+acd1(90)
      acd1(89)=acd1(6)*acd1(89)
      acd1(90)=acd1(54)*acd1(81)
      acd1(91)=acd1(38)*acd1(80)
      acd1(92)=acd1(26)+acd1(32)
      acd1(93)=-acd1(21)*acd1(92)
      acd1(90)=acd1(93)+acd1(90)+acd1(91)
      acd1(90)=acd1(27)*acd1(90)
      acd1(91)=acd1(18)+acd1(30)
      acd1(93)=-acd1(21)*acd1(91)
      acd1(94)=acd1(56)*acd1(81)
      acd1(95)=acd1(45)*acd1(80)
      acd1(93)=acd1(94)+acd1(95)+acd1(93)
      acd1(93)=acd1(20)*acd1(93)
      acd1(94)=acd1(28)*acd1(92)
      acd1(95)=acd1(22)*acd1(91)
      acd1(94)=acd1(95)+acd1(94)
      acd1(94)=acd1(23)*acd1(94)
      acd1(95)=acd1(47)*acd1(69)
      acd1(96)=acd1(42)*acd1(77)
      acd1(95)=acd1(96)+acd1(95)
      acd1(95)=acd1(83)*acd1(95)
      acd1(92)=-acd1(25)*acd1(92)
      acd1(96)=acd1(42)*acd1(82)
      acd1(92)=acd1(92)+acd1(96)
      acd1(92)=acd1(29)*acd1(92)
      acd1(91)=-acd1(25)*acd1(91)
      acd1(96)=acd1(47)*acd1(82)
      acd1(91)=acd1(96)+acd1(91)
      acd1(91)=acd1(24)*acd1(91)
      acd1(96)=acd1(1)*acd1(2)
      brack=acd1(84)+acd1(85)+acd1(86)+acd1(87)+acd1(88)+acd1(89)+acd1(90)+acd1&
      &(91)+acd1(92)+acd1(93)+acd1(94)+acd1(95)+2.0_ki*acd1(96)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd1h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(135) :: acd1
      complex(ki) :: brack
      acd1(1)=d(iv1,iv2)
      acd1(2)=k1(iv3)
      acd1(3)=abb1(29)
      acd1(4)=k2(iv3)
      acd1(5)=abb1(16)
      acd1(6)=k3(iv3)
      acd1(7)=abb1(11)
      acd1(8)=k4(iv3)
      acd1(9)=abb1(18)
      acd1(10)=k7(iv3)
      acd1(11)=abb1(44)
      acd1(12)=spvak2k1(iv3)
      acd1(13)=abb1(53)
      acd1(14)=spvak2k6(iv3)
      acd1(15)=abb1(111)
      acd1(16)=spvak4k2(iv3)
      acd1(17)=abb1(33)
      acd1(18)=spvak4k3(iv3)
      acd1(19)=abb1(49)
      acd1(20)=spvak4k6(iv3)
      acd1(21)=abb1(28)
      acd1(22)=spvak4k7(iv3)
      acd1(23)=abb1(103)
      acd1(24)=spvak5k1(iv3)
      acd1(25)=abb1(46)
      acd1(26)=spvak5k3(iv3)
      acd1(27)=abb1(25)
      acd1(28)=spvak5k6(iv3)
      acd1(29)=abb1(83)
      acd1(30)=spvak5k7(iv3)
      acd1(31)=abb1(76)
      acd1(32)=spvak7k1(iv3)
      acd1(33)=abb1(64)
      acd1(34)=spvak7k2(iv3)
      acd1(35)=abb1(56)
      acd1(36)=spvak7k6(iv3)
      acd1(37)=abb1(50)
      acd1(38)=d(iv1,iv3)
      acd1(39)=k1(iv2)
      acd1(40)=k2(iv2)
      acd1(41)=k3(iv2)
      acd1(42)=k4(iv2)
      acd1(43)=k7(iv2)
      acd1(44)=spvak2k1(iv2)
      acd1(45)=spvak2k6(iv2)
      acd1(46)=spvak4k2(iv2)
      acd1(47)=spvak4k3(iv2)
      acd1(48)=spvak4k6(iv2)
      acd1(49)=spvak4k7(iv2)
      acd1(50)=spvak5k1(iv2)
      acd1(51)=spvak5k3(iv2)
      acd1(52)=spvak5k6(iv2)
      acd1(53)=spvak5k7(iv2)
      acd1(54)=spvak7k1(iv2)
      acd1(55)=spvak7k2(iv2)
      acd1(56)=spvak7k6(iv2)
      acd1(57)=d(iv2,iv3)
      acd1(58)=k1(iv1)
      acd1(59)=k2(iv1)
      acd1(60)=k3(iv1)
      acd1(61)=k4(iv1)
      acd1(62)=k7(iv1)
      acd1(63)=spvak2k1(iv1)
      acd1(64)=spvak2k6(iv1)
      acd1(65)=spvak4k2(iv1)
      acd1(66)=spvak4k3(iv1)
      acd1(67)=spvak4k6(iv1)
      acd1(68)=spvak4k7(iv1)
      acd1(69)=spvak5k1(iv1)
      acd1(70)=spvak5k3(iv1)
      acd1(71)=spvak5k6(iv1)
      acd1(72)=spvak5k7(iv1)
      acd1(73)=spvak7k1(iv1)
      acd1(74)=spvak7k2(iv1)
      acd1(75)=spvak7k6(iv1)
      acd1(76)=abb1(72)
      acd1(77)=abb1(35)
      acd1(78)=abb1(51)
      acd1(79)=abb1(89)
      acd1(80)=abb1(31)
      acd1(81)=abb1(17)
      acd1(82)=abb1(105)
      acd1(83)=abb1(98)
      acd1(84)=abb1(96)
      acd1(85)=abb1(95)
      acd1(86)=abb1(73)
      acd1(87)=abb1(70)
      acd1(88)=spvak4k1(iv3)
      acd1(89)=abb1(60)
      acd1(90)=spvak4k1(iv2)
      acd1(91)=spvak4k1(iv1)
      acd1(92)=abb1(40)
      acd1(93)=abb1(45)
      acd1(94)=abb1(110)
      acd1(95)=abb1(88)
      acd1(96)=spvak2k3(iv3)
      acd1(97)=abb1(108)
      acd1(98)=spvak2k4(iv3)
      acd1(99)=abb1(32)
      acd1(100)=spvak2k7(iv3)
      acd1(101)=abb1(82)
      acd1(102)=spvak3k1(iv3)
      acd1(103)=abb1(61)
      acd1(104)=spvak2k3(iv2)
      acd1(105)=spvak2k4(iv2)
      acd1(106)=spvak2k7(iv2)
      acd1(107)=spvak3k1(iv2)
      acd1(108)=spvak2k3(iv1)
      acd1(109)=spvak2k4(iv1)
      acd1(110)=spvak2k7(iv1)
      acd1(111)=spvak3k1(iv1)
      acd1(112)=abb1(93)
      acd1(113)=abb1(66)
      acd1(114)=abb1(48)
      acd1(115)=abb1(91)
      acd1(116)=-acd1(37)*acd1(75)
      acd1(117)=-acd1(31)*acd1(72)
      acd1(118)=-acd1(27)*acd1(70)
      acd1(119)=-acd1(25)*acd1(69)
      acd1(120)=-acd1(23)*acd1(68)
      acd1(121)=-acd1(21)*acd1(67)
      acd1(122)=-acd1(17)*acd1(65)
      acd1(123)=acd1(15)*acd1(64)
      acd1(124)=-acd1(9)*acd1(61)
      acd1(125)=-acd1(7)*acd1(60)
      acd1(126)=-acd1(5)*acd1(59)
      acd1(127)=-acd1(3)*acd1(58)
      acd1(128)=-acd1(73)*acd1(33)
      acd1(129)=-acd1(62)*acd1(11)
      acd1(130)=-acd1(71)*acd1(29)
      acd1(116)=acd1(130)+acd1(129)+acd1(128)+acd1(127)+acd1(126)+acd1(125)+acd&
      &1(124)+acd1(123)+acd1(122)+acd1(121)+acd1(120)+acd1(119)+acd1(118)+acd1(&
      &116)+acd1(117)
      acd1(116)=acd1(57)*acd1(116)
      acd1(117)=-acd1(37)*acd1(56)
      acd1(118)=-acd1(31)*acd1(53)
      acd1(119)=-acd1(27)*acd1(51)
      acd1(120)=-acd1(25)*acd1(50)
      acd1(121)=-acd1(23)*acd1(49)
      acd1(122)=-acd1(21)*acd1(48)
      acd1(123)=-acd1(17)*acd1(46)
      acd1(124)=acd1(15)*acd1(45)
      acd1(125)=-acd1(9)*acd1(42)
      acd1(126)=-acd1(7)*acd1(41)
      acd1(127)=-acd1(5)*acd1(40)
      acd1(128)=-acd1(3)*acd1(39)
      acd1(129)=-acd1(54)*acd1(33)
      acd1(130)=-acd1(43)*acd1(11)
      acd1(131)=-acd1(52)*acd1(29)
      acd1(117)=acd1(131)+acd1(130)+acd1(129)+acd1(128)+acd1(127)+acd1(126)+acd&
      &1(125)+acd1(124)+acd1(123)+acd1(122)+acd1(121)+acd1(120)+acd1(119)+acd1(&
      &117)+acd1(118)
      acd1(117)=acd1(38)*acd1(117)
      acd1(118)=-acd1(36)*acd1(37)
      acd1(119)=-acd1(30)*acd1(31)
      acd1(120)=-acd1(26)*acd1(27)
      acd1(121)=-acd1(24)*acd1(25)
      acd1(122)=-acd1(22)*acd1(23)
      acd1(123)=-acd1(20)*acd1(21)
      acd1(124)=-acd1(16)*acd1(17)
      acd1(125)=acd1(14)*acd1(15)
      acd1(126)=-acd1(8)*acd1(9)
      acd1(127)=-acd1(6)*acd1(7)
      acd1(128)=-acd1(4)*acd1(5)
      acd1(129)=-acd1(2)*acd1(3)
      acd1(130)=-acd1(32)*acd1(33)
      acd1(131)=-acd1(10)*acd1(11)
      acd1(132)=-acd1(28)*acd1(29)
      acd1(118)=acd1(132)+acd1(131)+acd1(130)+acd1(129)+acd1(128)+acd1(127)+acd&
      &1(126)+acd1(125)+acd1(124)+acd1(123)+acd1(122)+acd1(121)+acd1(120)+acd1(&
      &118)+acd1(119)
      acd1(118)=acd1(1)*acd1(118)
      acd1(119)=-acd1(66)*acd1(57)
      acd1(120)=-acd1(47)*acd1(38)
      acd1(121)=-acd1(18)*acd1(1)
      acd1(119)=acd1(121)+acd1(120)+acd1(119)
      acd1(119)=acd1(19)*acd1(119)
      acd1(116)=acd1(118)+acd1(116)+acd1(117)+acd1(119)
      acd1(117)=acd1(10)+acd1(6)
      acd1(117)=acd1(117)*acd1(77)
      acd1(118)=acd1(88)*acd1(89)
      acd1(119)=acd1(87)*acd1(36)
      acd1(120)=acd1(86)*acd1(30)
      acd1(121)=acd1(84)*acd1(26)
      acd1(122)=acd1(83)*acd1(22)
      acd1(123)=acd1(82)*acd1(20)
      acd1(124)=acd1(80)*acd1(16)
      acd1(125)=acd1(78)*acd1(8)
      acd1(126)=acd1(28)*acd1(85)
      acd1(127)=acd1(18)*acd1(81)
      acd1(117)=-acd1(121)-acd1(122)-acd1(123)-acd1(124)-acd1(118)-acd1(126)-ac&
      &d1(127)-acd1(119)-acd1(120)+acd1(117)-acd1(125)
      acd1(118)=acd1(44)*acd1(117)
      acd1(119)=acd1(43)+acd1(41)
      acd1(119)=acd1(119)*acd1(77)
      acd1(120)=acd1(89)*acd1(90)
      acd1(121)=acd1(87)*acd1(56)
      acd1(122)=acd1(86)*acd1(53)
      acd1(123)=acd1(84)*acd1(51)
      acd1(124)=acd1(83)*acd1(49)
      acd1(125)=acd1(82)*acd1(48)
      acd1(126)=acd1(80)*acd1(46)
      acd1(127)=acd1(78)*acd1(42)
      acd1(128)=acd1(52)*acd1(85)
      acd1(129)=acd1(47)*acd1(81)
      acd1(119)=-acd1(123)-acd1(124)-acd1(125)-acd1(126)-acd1(120)-acd1(128)-ac&
      &d1(129)-acd1(121)-acd1(122)+acd1(119)-acd1(127)
      acd1(120)=acd1(12)*acd1(119)
      acd1(121)=acd1(2)+acd1(4)
      acd1(121)=acd1(121)*acd1(76)
      acd1(122)=acd1(103)*acd1(102)
      acd1(123)=acd1(101)*acd1(100)
      acd1(124)=acd1(99)*acd1(98)
      acd1(125)=acd1(97)*acd1(96)
      acd1(126)=acd1(94)*acd1(32)
      acd1(127)=acd1(93)*acd1(24)
      acd1(128)=acd1(92)*acd1(14)
      acd1(129)=acd1(88)*acd1(95)
      acd1(121)=-acd1(121)+acd1(126)+acd1(127)+acd1(128)+acd1(129)+acd1(122)-ac&
      &d1(123)+acd1(124)+acd1(125)
      acd1(122)=-acd1(47)*acd1(121)
      acd1(123)=acd1(39)+acd1(40)
      acd1(123)=acd1(123)*acd1(76)
      acd1(124)=acd1(103)*acd1(107)
      acd1(125)=acd1(101)*acd1(106)
      acd1(126)=acd1(99)*acd1(105)
      acd1(127)=acd1(97)*acd1(104)
      acd1(128)=acd1(94)*acd1(54)
      acd1(129)=acd1(93)*acd1(50)
      acd1(130)=acd1(92)*acd1(45)
      acd1(131)=acd1(90)*acd1(95)
      acd1(123)=-acd1(123)+acd1(128)+acd1(129)+acd1(130)+acd1(131)+acd1(124)-ac&
      &d1(125)+acd1(126)+acd1(127)
      acd1(124)=-acd1(18)*acd1(123)
      acd1(125)=acd1(115)*acd1(100)
      acd1(126)=acd1(114)*acd1(96)
      acd1(127)=acd1(112)*acd1(32)
      acd1(128)=acd1(88)*acd1(113)
      acd1(125)=acd1(125)+acd1(126)+acd1(127)+acd1(128)
      acd1(126)=-acd1(52)*acd1(125)
      acd1(127)=acd1(115)*acd1(106)
      acd1(128)=acd1(114)*acd1(104)
      acd1(129)=acd1(112)*acd1(54)
      acd1(130)=acd1(90)*acd1(113)
      acd1(127)=acd1(127)+acd1(128)+acd1(129)+acd1(130)
      acd1(128)=-acd1(28)*acd1(127)
      acd1(129)=2.0_ki*acd1(35)
      acd1(130)=-acd1(57)*acd1(129)
      acd1(118)=acd1(120)+acd1(118)+acd1(124)+acd1(122)+acd1(130)+acd1(126)+acd&
      &1(128)
      acd1(118)=acd1(74)*acd1(118)
      acd1(117)=acd1(63)*acd1(117)
      acd1(120)=acd1(62)+acd1(60)
      acd1(120)=acd1(120)*acd1(77)
      acd1(122)=acd1(89)*acd1(91)
      acd1(124)=acd1(87)*acd1(75)
      acd1(126)=acd1(86)*acd1(72)
      acd1(128)=acd1(84)*acd1(70)
      acd1(130)=acd1(83)*acd1(68)
      acd1(131)=acd1(82)*acd1(67)
      acd1(132)=acd1(80)*acd1(65)
      acd1(133)=acd1(78)*acd1(61)
      acd1(134)=acd1(71)*acd1(85)
      acd1(135)=acd1(66)*acd1(81)
      acd1(120)=acd1(132)+acd1(133)+acd1(134)+acd1(135)+acd1(126)+acd1(128)+acd&
      &1(130)+acd1(131)-acd1(120)+acd1(122)+acd1(124)
      acd1(122)=-acd1(12)*acd1(120)
      acd1(121)=-acd1(66)*acd1(121)
      acd1(124)=acd1(58)+acd1(59)
      acd1(124)=acd1(124)*acd1(76)
      acd1(126)=acd1(103)*acd1(111)
      acd1(128)=acd1(101)*acd1(110)
      acd1(130)=acd1(99)*acd1(109)
      acd1(131)=acd1(97)*acd1(108)
      acd1(132)=acd1(94)*acd1(73)
      acd1(133)=acd1(93)*acd1(69)
      acd1(134)=acd1(92)*acd1(64)
      acd1(135)=acd1(91)*acd1(95)
      acd1(124)=-acd1(124)+acd1(132)+acd1(133)+acd1(134)+acd1(135)+acd1(126)-ac&
      &d1(128)+acd1(130)+acd1(131)
      acd1(126)=-acd1(18)*acd1(124)
      acd1(125)=-acd1(71)*acd1(125)
      acd1(128)=acd1(115)*acd1(110)
      acd1(130)=acd1(114)*acd1(108)
      acd1(131)=acd1(112)*acd1(73)
      acd1(132)=acd1(91)*acd1(113)
      acd1(128)=acd1(128)+acd1(130)+acd1(131)+acd1(132)
      acd1(130)=-acd1(28)*acd1(128)
      acd1(131)=-acd1(38)*acd1(129)
      acd1(117)=acd1(122)+acd1(117)+acd1(126)+acd1(121)+acd1(131)+acd1(125)+acd&
      &1(130)
      acd1(117)=acd1(55)*acd1(117)
      acd1(119)=acd1(63)*acd1(119)
      acd1(120)=-acd1(44)*acd1(120)
      acd1(121)=-acd1(66)*acd1(123)
      acd1(122)=-acd1(47)*acd1(124)
      acd1(123)=-acd1(71)*acd1(127)
      acd1(124)=-acd1(52)*acd1(128)
      acd1(125)=-acd1(1)*acd1(129)
      acd1(119)=acd1(120)+acd1(119)+acd1(122)+acd1(121)+acd1(125)+acd1(123)+acd&
      &1(124)
      acd1(119)=acd1(34)*acd1(119)
      acd1(120)=acd1(52)*acd1(79)
      acd1(121)=-acd1(10)*acd1(120)
      acd1(122)=acd1(28)*acd1(79)
      acd1(123)=-acd1(43)*acd1(122)
      acd1(124)=2.0_ki*acd1(13)
      acd1(125)=acd1(57)*acd1(124)
      acd1(121)=acd1(125)+acd1(121)+acd1(123)
      acd1(121)=acd1(63)*acd1(121)
      acd1(123)=acd1(71)*acd1(79)
      acd1(125)=-acd1(10)*acd1(123)
      acd1(122)=-acd1(62)*acd1(122)
      acd1(126)=acd1(38)*acd1(124)
      acd1(122)=acd1(126)+acd1(125)+acd1(122)
      acd1(122)=acd1(44)*acd1(122)
      acd1(123)=-acd1(43)*acd1(123)
      acd1(120)=-acd1(62)*acd1(120)
      acd1(124)=acd1(1)*acd1(124)
      acd1(120)=acd1(124)+acd1(123)+acd1(120)
      acd1(120)=acd1(12)*acd1(120)
      brack=2.0_ki*acd1(116)+acd1(117)+acd1(118)+acd1(119)+acd1(120)+acd1(121)+&
      &acd1(122)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd1h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(44) :: acd1
      complex(ki) :: brack
      acd1(1)=d(iv1,iv2)
      acd1(2)=d(iv3,iv4)
      acd1(3)=abb1(12)
      acd1(4)=spvak2k1(iv3)
      acd1(5)=spvak5k6(iv4)
      acd1(6)=abb1(9)
      acd1(7)=spvak7k2(iv4)
      acd1(8)=abb1(21)
      acd1(9)=spvak2k1(iv4)
      acd1(10)=spvak5k6(iv3)
      acd1(11)=spvak7k2(iv3)
      acd1(12)=spvak4k3(iv4)
      acd1(13)=abb1(14)
      acd1(14)=spvak4k3(iv3)
      acd1(15)=abb1(55)
      acd1(16)=d(iv1,iv3)
      acd1(17)=d(iv2,iv4)
      acd1(18)=spvak2k1(iv2)
      acd1(19)=spvak5k6(iv2)
      acd1(20)=spvak7k2(iv2)
      acd1(21)=spvak4k3(iv2)
      acd1(22)=d(iv1,iv4)
      acd1(23)=d(iv2,iv3)
      acd1(24)=spvak2k1(iv1)
      acd1(25)=spvak5k6(iv1)
      acd1(26)=spvak7k2(iv1)
      acd1(27)=spvak4k3(iv1)
      acd1(28)=abb1(8)
      acd1(29)=acd1(20)*acd1(24)
      acd1(30)=acd1(18)*acd1(26)
      acd1(29)=acd1(29)+acd1(30)
      acd1(30)=acd1(2)*acd1(29)
      acd1(31)=acd1(24)*acd1(17)
      acd1(32)=acd1(18)*acd1(22)
      acd1(31)=acd1(31)+acd1(32)
      acd1(32)=acd1(11)*acd1(31)
      acd1(33)=acd1(26)*acd1(23)
      acd1(34)=acd1(20)*acd1(16)
      acd1(33)=acd1(33)+acd1(34)
      acd1(34)=acd1(11)*acd1(1)
      acd1(34)=acd1(34)+acd1(33)
      acd1(34)=acd1(9)*acd1(34)
      acd1(30)=acd1(34)+acd1(32)+acd1(30)
      acd1(30)=acd1(8)*acd1(30)
      acd1(32)=acd1(19)*acd1(24)
      acd1(34)=acd1(18)*acd1(25)
      acd1(32)=acd1(32)+acd1(34)
      acd1(34)=acd1(2)*acd1(32)
      acd1(31)=acd1(10)*acd1(31)
      acd1(35)=acd1(25)*acd1(23)
      acd1(36)=acd1(19)*acd1(16)
      acd1(35)=acd1(35)+acd1(36)
      acd1(36)=acd1(10)*acd1(1)
      acd1(36)=acd1(36)+acd1(35)
      acd1(36)=acd1(9)*acd1(36)
      acd1(31)=acd1(36)+acd1(31)+acd1(34)
      acd1(31)=acd1(6)*acd1(31)
      acd1(34)=acd1(27)*acd1(17)
      acd1(36)=acd1(21)*acd1(22)
      acd1(37)=acd1(12)*acd1(1)
      acd1(34)=acd1(37)+acd1(34)+acd1(36)
      acd1(36)=acd1(11)*acd1(15)
      acd1(37)=acd1(10)*acd1(13)
      acd1(36)=acd1(37)+acd1(36)
      acd1(34)=acd1(34)*acd1(36)
      acd1(36)=acd1(22)*acd1(23)
      acd1(37)=acd1(16)*acd1(17)
      acd1(38)=acd1(1)*acd1(2)
      acd1(36)=acd1(38)+acd1(36)+acd1(37)
      acd1(36)=acd1(3)*acd1(36)
      acd1(37)=acd1(21)*acd1(25)
      acd1(38)=acd1(19)*acd1(27)
      acd1(37)=acd1(37)+acd1(38)
      acd1(38)=acd1(2)*acd1(37)
      acd1(39)=acd1(25)*acd1(17)
      acd1(40)=acd1(19)*acd1(22)
      acd1(39)=acd1(39)+acd1(40)
      acd1(40)=acd1(14)*acd1(39)
      acd1(38)=acd1(40)+acd1(38)
      acd1(38)=acd1(13)*acd1(38)
      acd1(33)=acd1(15)*acd1(33)
      acd1(35)=acd1(13)*acd1(35)
      acd1(33)=acd1(33)+acd1(35)
      acd1(33)=acd1(12)*acd1(33)
      acd1(35)=acd1(27)*acd1(23)
      acd1(40)=acd1(21)*acd1(16)
      acd1(35)=acd1(35)+acd1(40)
      acd1(40)=acd1(15)*acd1(35)
      acd1(41)=acd1(24)*acd1(23)
      acd1(42)=acd1(18)*acd1(16)
      acd1(41)=acd1(41)+acd1(42)
      acd1(42)=acd1(8)*acd1(41)
      acd1(43)=acd1(14)*acd1(15)
      acd1(44)=acd1(1)*acd1(43)
      acd1(40)=acd1(42)+acd1(40)+acd1(44)
      acd1(40)=acd1(7)*acd1(40)
      acd1(42)=acd1(14)*acd1(1)
      acd1(35)=acd1(42)+acd1(35)
      acd1(35)=acd1(13)*acd1(35)
      acd1(41)=acd1(6)*acd1(41)
      acd1(35)=acd1(35)+acd1(41)
      acd1(35)=acd1(5)*acd1(35)
      acd1(41)=acd1(26)*acd1(17)
      acd1(42)=acd1(20)*acd1(22)
      acd1(41)=acd1(41)+acd1(42)
      acd1(42)=acd1(7)*acd1(1)
      acd1(42)=acd1(41)+acd1(42)
      acd1(42)=acd1(8)*acd1(42)
      acd1(44)=acd1(5)*acd1(1)
      acd1(39)=acd1(44)+acd1(39)
      acd1(39)=acd1(6)*acd1(39)
      acd1(39)=acd1(39)+acd1(42)
      acd1(39)=acd1(4)*acd1(39)
      acd1(42)=acd1(21)*acd1(26)
      acd1(44)=acd1(20)*acd1(27)
      acd1(42)=acd1(42)+acd1(44)
      acd1(44)=acd1(15)*acd1(2)*acd1(42)
      acd1(41)=acd1(41)*acd1(43)
      acd1(30)=acd1(39)+acd1(35)+acd1(31)+acd1(40)+acd1(30)+acd1(33)+acd1(38)+a&
      &cd1(41)+4.0_ki*acd1(36)+acd1(44)+acd1(34)
      acd1(31)=acd1(20)*acd1(25)
      acd1(33)=acd1(19)*acd1(26)
      acd1(31)=acd1(31)+acd1(33)
      acd1(33)=acd1(14)*acd1(31)
      acd1(34)=acd1(11)*acd1(37)
      acd1(35)=acd1(10)*acd1(42)
      acd1(33)=acd1(35)+acd1(33)+acd1(34)
      acd1(33)=acd1(9)*acd1(33)
      acd1(31)=acd1(12)*acd1(31)
      acd1(34)=acd1(7)*acd1(37)
      acd1(35)=acd1(5)*acd1(42)
      acd1(31)=acd1(35)+acd1(31)+acd1(34)
      acd1(31)=acd1(4)*acd1(31)
      acd1(34)=acd1(11)*acd1(32)
      acd1(35)=acd1(10)*acd1(29)
      acd1(34)=acd1(34)+acd1(35)
      acd1(34)=acd1(12)*acd1(34)
      acd1(32)=acd1(14)*acd1(32)
      acd1(35)=acd1(21)*acd1(24)
      acd1(36)=acd1(18)*acd1(27)
      acd1(35)=acd1(35)+acd1(36)
      acd1(36)=acd1(10)*acd1(35)
      acd1(32)=acd1(32)+acd1(36)
      acd1(32)=acd1(7)*acd1(32)
      acd1(29)=acd1(14)*acd1(29)
      acd1(35)=acd1(11)*acd1(35)
      acd1(29)=acd1(29)+acd1(35)
      acd1(29)=acd1(5)*acd1(29)
      acd1(29)=acd1(31)+acd1(29)+acd1(32)+acd1(33)+acd1(34)
      acd1(29)=acd1(28)*acd1(29)
      brack=acd1(29)+2.0_ki*acd1(30)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd1h6
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
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
      if(present(i4)) then
          iv4=i4
          deg=4
      else
          iv4=1
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
      if(deg.eq.4) then
         numerator = cond(epspow.eq.t1,brack_5,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d1:
   subroutine     reconstruct_d1(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_1:
      coeffs%coeffs_1%c0 = derivative(czip)
      coeffs%coeffs_1%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_1%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_1%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_1%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_1%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_1%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_1%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_1%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_1%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_1%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_1%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_1%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_1%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_1%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_1%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_1%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_1%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_1%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_1%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_1%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_1%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_1%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_1%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_1%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_1%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_1%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_1%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_1%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_1%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_1%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_1%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_1%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_1%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_1%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_1%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_1%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_1%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_1%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_1%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_1%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_1%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_1%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_1%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_1%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_1%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_1%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_1%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_1%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_1%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_1%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_1%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_1%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_1%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_1%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_1%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_1%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_1%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_1%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_1%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_1%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_1%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_1%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_1%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_1%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_1%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_1%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_1%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_1%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_1%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_1:
   end subroutine reconstruct_d1
!---#] subroutine reconstruct_d1:
end module     p8_cbarc_epnemumnmubarg_d1h6l1d
