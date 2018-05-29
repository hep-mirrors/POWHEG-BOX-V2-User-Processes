module     p8_cbarc_epnemumnmubarg_d1h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity5d1h5l1d.f90
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
      use p8_cbarc_epnemumnmubarg_abbrevd1h5
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
      use p8_cbarc_epnemumnmubarg_abbrevd1h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd1
      complex(ki) :: brack
      acd1(1)=k2(iv1)
      acd1(2)=abb1(24)
      acd1(3)=spvak1k2(iv1)
      acd1(4)=abb1(18)
      acd1(5)=spvak1k6(iv1)
      acd1(6)=abb1(67)
      acd1(7)=spvak4k6(iv1)
      acd1(8)=abb1(85)
      acd1(9)=spvak5k6(iv1)
      acd1(10)=abb1(65)
      acd1(11)=spvak7k2(iv1)
      acd1(12)=abb1(45)
      acd1(13)=spvak7k6(iv1)
      acd1(14)=abb1(44)
      acd1(15)=-acd1(2)*acd1(1)
      acd1(16)=-acd1(4)*acd1(3)
      acd1(17)=-acd1(6)*acd1(5)
      acd1(18)=-acd1(8)*acd1(7)
      acd1(19)=-acd1(10)*acd1(9)
      acd1(20)=-acd1(12)*acd1(11)
      acd1(21)=-acd1(14)*acd1(13)
      brack=acd1(15)+acd1(16)+acd1(17)+acd1(18)+acd1(19)+acd1(20)+acd1(21)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd1h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(96) :: acd1
      complex(ki) :: brack
      acd1(1)=d(iv1,iv2)
      acd1(2)=abb1(23)
      acd1(3)=k1(iv1)
      acd1(4)=k7(iv2)
      acd1(5)=abb1(29)
      acd1(6)=spvak7k2(iv2)
      acd1(7)=abb1(54)
      acd1(8)=k1(iv2)
      acd1(9)=k7(iv1)
      acd1(10)=spvak7k2(iv1)
      acd1(11)=k2(iv1)
      acd1(12)=abb1(27)
      acd1(13)=abb1(52)
      acd1(14)=spvak4k3(iv2)
      acd1(15)=abb1(90)
      acd1(16)=k2(iv2)
      acd1(17)=spvak4k3(iv1)
      acd1(18)=k3(iv1)
      acd1(19)=abb1(38)
      acd1(20)=spvak1k2(iv2)
      acd1(21)=abb1(107)
      acd1(22)=spvak5k2(iv2)
      acd1(23)=abb1(36)
      acd1(24)=k3(iv2)
      acd1(25)=spvak1k2(iv1)
      acd1(26)=spvak5k2(iv1)
      acd1(27)=k4(iv1)
      acd1(28)=abb1(48)
      acd1(29)=k4(iv2)
      acd1(30)=abb1(47)
      acd1(31)=abb1(98)
      acd1(32)=abb1(80)
      acd1(33)=spvak1k6(iv2)
      acd1(34)=abb1(70)
      acd1(35)=spvak4k6(iv2)
      acd1(36)=abb1(86)
      acd1(37)=spvak5k6(iv2)
      acd1(38)=abb1(71)
      acd1(39)=spvak1k6(iv1)
      acd1(40)=spvak4k6(iv1)
      acd1(41)=spvak5k6(iv1)
      acd1(42)=abb1(61)
      acd1(43)=abb1(10)
      acd1(44)=abb1(16)
      acd1(45)=abb1(34)
      acd1(46)=abb1(43)
      acd1(47)=abb1(56)
      acd1(48)=abb1(68)
      acd1(49)=spvak7k6(iv2)
      acd1(50)=abb1(57)
      acd1(51)=spvak1k3(iv2)
      acd1(52)=abb1(55)
      acd1(53)=spvak1k7(iv2)
      acd1(54)=abb1(100)
      acd1(55)=spvak4k2(iv2)
      acd1(56)=abb1(74)
      acd1(57)=spvak4k7(iv2)
      acd1(58)=abb1(11)
      acd1(59)=spvak5k3(iv2)
      acd1(60)=abb1(21)
      acd1(61)=spvak5k7(iv2)
      acd1(62)=abb1(13)
      acd1(63)=spvak7k6(iv1)
      acd1(64)=spvak1k3(iv1)
      acd1(65)=spvak1k7(iv1)
      acd1(66)=spvak4k2(iv1)
      acd1(67)=spvak4k7(iv1)
      acd1(68)=spvak5k3(iv1)
      acd1(69)=spvak5k7(iv1)
      acd1(70)=abb1(19)
      acd1(71)=abb1(93)
      acd1(72)=abb1(66)
      acd1(73)=abb1(64)
      acd1(74)=abb1(89)
      acd1(75)=abb1(75)
      acd1(76)=abb1(102)
      acd1(77)=abb1(96)
      acd1(78)=acd1(62)*acd1(69)
      acd1(79)=acd1(60)*acd1(68)
      acd1(80)=acd1(58)*acd1(67)
      acd1(81)=acd1(56)*acd1(66)
      acd1(82)=-acd1(54)*acd1(65)
      acd1(83)=acd1(52)*acd1(64)
      acd1(84)=acd1(3)*acd1(7)
      acd1(85)=acd1(63)*acd1(50)
      acd1(86)=acd1(40)*acd1(47)
      acd1(87)=acd1(39)*acd1(46)
      acd1(88)=acd1(27)*acd1(28)
      acd1(89)=acd1(18)*acd1(19)
      acd1(90)=acd1(11)*acd1(13)
      acd1(91)=acd1(41)*acd1(48)
      acd1(92)=acd1(26)*acd1(45)
      acd1(93)=acd1(25)*acd1(44)
      acd1(94)=acd1(17)*acd1(43)
      acd1(95)=acd1(9)*acd1(30)
      acd1(96)=acd1(10)*acd1(42)
      acd1(78)=2.0_ki*acd1(96)+acd1(95)+acd1(94)+acd1(93)+acd1(92)+acd1(91)+acd&
      &1(90)+acd1(89)+acd1(88)+acd1(87)+acd1(86)+acd1(85)+acd1(84)+acd1(83)+acd&
      &1(82)+acd1(81)+acd1(80)+acd1(78)+acd1(79)
      acd1(78)=acd1(6)*acd1(78)
      acd1(79)=acd1(62)*acd1(61)
      acd1(80)=acd1(60)*acd1(59)
      acd1(81)=acd1(58)*acd1(57)
      acd1(82)=acd1(55)*acd1(56)
      acd1(83)=-acd1(54)*acd1(53)
      acd1(84)=acd1(52)*acd1(51)
      acd1(85)=acd1(7)*acd1(8)
      acd1(86)=acd1(49)*acd1(50)
      acd1(87)=acd1(35)*acd1(47)
      acd1(88)=acd1(33)*acd1(46)
      acd1(89)=acd1(29)*acd1(28)
      acd1(90)=acd1(24)*acd1(19)
      acd1(91)=acd1(16)*acd1(13)
      acd1(92)=acd1(37)*acd1(48)
      acd1(93)=acd1(22)*acd1(45)
      acd1(94)=acd1(20)*acd1(44)
      acd1(95)=acd1(14)*acd1(43)
      acd1(96)=acd1(4)*acd1(30)
      acd1(79)=acd1(96)+acd1(95)+acd1(94)+acd1(93)+acd1(92)+acd1(91)+acd1(90)+a&
      &cd1(89)+acd1(88)+acd1(87)+acd1(86)+acd1(85)+acd1(84)+acd1(83)+acd1(82)+a&
      &cd1(81)+acd1(79)+acd1(80)
      acd1(79)=acd1(10)*acd1(79)
      acd1(80)=acd1(5)*acd1(8)
      acd1(81)=acd1(35)*acd1(36)
      acd1(82)=acd1(33)*acd1(34)
      acd1(83)=acd1(16)*acd1(12)
      acd1(84)=acd1(37)*acd1(38)
      acd1(85)=acd1(22)*acd1(32)
      acd1(86)=acd1(20)*acd1(31)
      acd1(80)=acd1(86)+acd1(85)+acd1(84)+acd1(83)+acd1(82)+acd1(80)+acd1(81)
      acd1(80)=acd1(9)*acd1(80)
      acd1(81)=acd1(3)*acd1(5)
      acd1(82)=acd1(40)*acd1(36)
      acd1(83)=acd1(39)*acd1(34)
      acd1(84)=acd1(11)*acd1(12)
      acd1(85)=acd1(41)*acd1(38)
      acd1(86)=acd1(26)*acd1(32)
      acd1(87)=acd1(25)*acd1(31)
      acd1(81)=acd1(87)+acd1(86)+acd1(85)+acd1(84)+acd1(83)+acd1(81)+acd1(82)
      acd1(81)=acd1(4)*acd1(81)
      acd1(82)=acd1(49)*acd1(74)
      acd1(83)=acd1(33)*acd1(72)
      acd1(84)=acd1(16)*acd1(15)
      acd1(85)=acd1(37)*acd1(73)
      acd1(86)=acd1(22)*acd1(71)
      acd1(87)=acd1(20)*acd1(70)
      acd1(82)=acd1(87)+acd1(86)+acd1(85)+acd1(84)+acd1(82)+acd1(83)
      acd1(82)=acd1(17)*acd1(82)
      acd1(83)=acd1(63)*acd1(74)
      acd1(84)=acd1(39)*acd1(72)
      acd1(85)=acd1(11)*acd1(15)
      acd1(86)=acd1(41)*acd1(73)
      acd1(87)=acd1(26)*acd1(71)
      acd1(88)=acd1(25)*acd1(70)
      acd1(83)=acd1(88)+acd1(87)+acd1(86)+acd1(85)+acd1(83)+acd1(84)
      acd1(83)=acd1(14)*acd1(83)
      acd1(84)=acd1(49)*acd1(76)
      acd1(85)=acd1(35)*acd1(75)
      acd1(86)=acd1(24)+acd1(29)
      acd1(87)=-acd1(21)*acd1(86)
      acd1(84)=acd1(87)+acd1(84)+acd1(85)
      acd1(84)=acd1(25)*acd1(84)
      acd1(85)=acd1(63)*acd1(76)
      acd1(87)=acd1(40)*acd1(75)
      acd1(88)=acd1(18)+acd1(27)
      acd1(89)=-acd1(21)*acd1(88)
      acd1(85)=acd1(89)+acd1(85)+acd1(87)
      acd1(85)=acd1(20)*acd1(85)
      acd1(87)=-acd1(41)*acd1(55)
      acd1(89)=-acd1(37)*acd1(66)
      acd1(87)=acd1(89)+acd1(87)
      acd1(87)=acd1(77)*acd1(87)
      acd1(86)=acd1(26)*acd1(86)
      acd1(88)=acd1(22)*acd1(88)
      acd1(86)=acd1(88)+acd1(86)
      acd1(86)=acd1(23)*acd1(86)
      acd1(88)=acd1(1)*acd1(2)
      brack=acd1(78)+acd1(79)+acd1(80)+acd1(81)+acd1(82)+acd1(83)+acd1(84)+acd1&
      &(85)+acd1(86)+acd1(87)+2.0_ki*acd1(88)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd1h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(130) :: acd1
      complex(ki) :: brack
      acd1(1)=d(iv1,iv2)
      acd1(2)=k1(iv3)
      acd1(3)=abb1(28)
      acd1(4)=k2(iv3)
      acd1(5)=abb1(26)
      acd1(6)=k3(iv3)
      acd1(7)=abb1(25)
      acd1(8)=k4(iv3)
      acd1(9)=abb1(41)
      acd1(10)=k7(iv3)
      acd1(11)=abb1(40)
      acd1(12)=spvak1k2(iv3)
      acd1(13)=abb1(14)
      acd1(14)=spvak1k6(iv3)
      acd1(15)=abb1(69)
      acd1(16)=spvak4k2(iv3)
      acd1(17)=abb1(39)
      acd1(18)=spvak4k3(iv3)
      acd1(19)=abb1(78)
      acd1(20)=spvak4k6(iv3)
      acd1(21)=abb1(87)
      acd1(22)=spvak4k7(iv3)
      acd1(23)=abb1(63)
      acd1(24)=spvak5k2(iv3)
      acd1(25)=abb1(79)
      acd1(26)=spvak5k3(iv3)
      acd1(27)=abb1(22)
      acd1(28)=spvak5k6(iv3)
      acd1(29)=abb1(72)
      acd1(30)=spvak5k7(iv3)
      acd1(31)=abb1(62)
      acd1(32)=spvak7k2(iv3)
      acd1(33)=abb1(35)
      acd1(34)=d(iv1,iv3)
      acd1(35)=k1(iv2)
      acd1(36)=k2(iv2)
      acd1(37)=k3(iv2)
      acd1(38)=k4(iv2)
      acd1(39)=k7(iv2)
      acd1(40)=spvak1k2(iv2)
      acd1(41)=spvak1k6(iv2)
      acd1(42)=spvak4k2(iv2)
      acd1(43)=spvak4k3(iv2)
      acd1(44)=spvak4k6(iv2)
      acd1(45)=spvak4k7(iv2)
      acd1(46)=spvak5k2(iv2)
      acd1(47)=spvak5k3(iv2)
      acd1(48)=spvak5k6(iv2)
      acd1(49)=spvak5k7(iv2)
      acd1(50)=spvak7k2(iv2)
      acd1(51)=d(iv2,iv3)
      acd1(52)=k1(iv1)
      acd1(53)=k2(iv1)
      acd1(54)=k3(iv1)
      acd1(55)=k4(iv1)
      acd1(56)=k7(iv1)
      acd1(57)=spvak1k2(iv1)
      acd1(58)=spvak1k6(iv1)
      acd1(59)=spvak4k2(iv1)
      acd1(60)=spvak4k3(iv1)
      acd1(61)=spvak4k6(iv1)
      acd1(62)=spvak4k7(iv1)
      acd1(63)=spvak5k2(iv1)
      acd1(64)=spvak5k3(iv1)
      acd1(65)=spvak5k6(iv1)
      acd1(66)=spvak5k7(iv1)
      acd1(67)=spvak7k2(iv1)
      acd1(68)=abb1(37)
      acd1(69)=abb1(31)
      acd1(70)=abb1(32)
      acd1(71)=abb1(59)
      acd1(72)=abb1(46)
      acd1(73)=abb1(9)
      acd1(74)=abb1(30)
      acd1(75)=abb1(76)
      acd1(76)=abb1(60)
      acd1(77)=abb1(58)
      acd1(78)=abb1(53)
      acd1(79)=spvak4k1(iv3)
      acd1(80)=abb1(81)
      acd1(81)=spvak7k6(iv3)
      acd1(82)=abb1(50)
      acd1(83)=spvak4k1(iv2)
      acd1(84)=spvak7k6(iv2)
      acd1(85)=spvak4k1(iv1)
      acd1(86)=spvak7k6(iv1)
      acd1(87)=abb1(7)
      acd1(88)=abb1(97)
      acd1(89)=abb1(83)
      acd1(90)=abb1(73)
      acd1(91)=abb1(91)
      acd1(92)=spvak1k3(iv3)
      acd1(93)=abb1(20)
      acd1(94)=spvak1k4(iv3)
      acd1(95)=abb1(49)
      acd1(96)=spvak1k7(iv3)
      acd1(97)=abb1(51)
      acd1(98)=spvak3k2(iv3)
      acd1(99)=abb1(94)
      acd1(100)=spvak1k3(iv2)
      acd1(101)=spvak1k4(iv2)
      acd1(102)=spvak1k7(iv2)
      acd1(103)=spvak3k2(iv2)
      acd1(104)=spvak1k3(iv1)
      acd1(105)=spvak1k4(iv1)
      acd1(106)=spvak1k7(iv1)
      acd1(107)=spvak3k2(iv1)
      acd1(108)=abb1(77)
      acd1(109)=abb1(6)
      acd1(110)=abb1(101)
      acd1(111)=-acd1(31)*acd1(66)
      acd1(112)=-acd1(27)*acd1(64)
      acd1(113)=-acd1(25)*acd1(63)
      acd1(114)=-acd1(23)*acd1(62)
      acd1(115)=-acd1(21)*acd1(61)
      acd1(116)=-acd1(15)*acd1(58)
      acd1(117)=-acd1(9)*acd1(55)
      acd1(118)=-acd1(7)*acd1(54)
      acd1(119)=-acd1(5)*acd1(53)
      acd1(120)=-acd1(3)*acd1(52)
      acd1(121)=-acd1(56)*acd1(11)
      acd1(122)=-acd1(59)*acd1(17)
      acd1(123)=-acd1(65)*acd1(29)
      acd1(111)=acd1(123)+acd1(122)+acd1(121)+acd1(120)+acd1(119)+acd1(118)+acd&
      &1(117)+acd1(116)+acd1(115)+acd1(114)+acd1(113)+acd1(111)+acd1(112)
      acd1(111)=acd1(51)*acd1(111)
      acd1(112)=-acd1(31)*acd1(49)
      acd1(113)=-acd1(27)*acd1(47)
      acd1(114)=-acd1(25)*acd1(46)
      acd1(115)=-acd1(23)*acd1(45)
      acd1(116)=-acd1(21)*acd1(44)
      acd1(117)=-acd1(15)*acd1(41)
      acd1(118)=-acd1(9)*acd1(38)
      acd1(119)=-acd1(7)*acd1(37)
      acd1(120)=-acd1(5)*acd1(36)
      acd1(121)=-acd1(3)*acd1(35)
      acd1(122)=-acd1(39)*acd1(11)
      acd1(123)=-acd1(42)*acd1(17)
      acd1(124)=-acd1(48)*acd1(29)
      acd1(112)=acd1(124)+acd1(123)+acd1(122)+acd1(121)+acd1(120)+acd1(119)+acd&
      &1(118)+acd1(117)+acd1(116)+acd1(115)+acd1(114)+acd1(112)+acd1(113)
      acd1(112)=acd1(34)*acd1(112)
      acd1(113)=-acd1(30)*acd1(31)
      acd1(114)=-acd1(26)*acd1(27)
      acd1(115)=-acd1(24)*acd1(25)
      acd1(116)=-acd1(22)*acd1(23)
      acd1(117)=-acd1(20)*acd1(21)
      acd1(118)=-acd1(14)*acd1(15)
      acd1(119)=-acd1(8)*acd1(9)
      acd1(120)=-acd1(6)*acd1(7)
      acd1(121)=-acd1(4)*acd1(5)
      acd1(122)=-acd1(2)*acd1(3)
      acd1(123)=-acd1(10)*acd1(11)
      acd1(124)=-acd1(16)*acd1(17)
      acd1(125)=-acd1(28)*acd1(29)
      acd1(113)=acd1(125)+acd1(124)+acd1(123)+acd1(122)+acd1(121)+acd1(120)+acd&
      &1(119)+acd1(118)+acd1(117)+acd1(116)+acd1(115)+acd1(113)+acd1(114)
      acd1(113)=acd1(1)*acd1(113)
      acd1(114)=-acd1(60)*acd1(51)
      acd1(115)=-acd1(43)*acd1(34)
      acd1(116)=-acd1(18)*acd1(1)
      acd1(114)=acd1(116)+acd1(115)+acd1(114)
      acd1(114)=acd1(19)*acd1(114)
      acd1(111)=acd1(113)+acd1(111)+acd1(112)+acd1(114)
      acd1(112)=acd1(10)+acd1(6)
      acd1(112)=acd1(112)*acd1(69)
      acd1(113)=acd1(82)*acd1(81)
      acd1(114)=acd1(80)*acd1(79)
      acd1(115)=acd1(78)*acd1(30)
      acd1(116)=acd1(76)*acd1(26)
      acd1(117)=acd1(75)*acd1(22)
      acd1(118)=acd1(74)*acd1(20)
      acd1(119)=acd1(70)*acd1(8)
      acd1(120)=acd1(16)*acd1(72)
      acd1(121)=acd1(28)*acd1(77)
      acd1(122)=acd1(18)*acd1(73)
      acd1(112)=-acd1(116)-acd1(117)-acd1(118)-acd1(119)-acd1(113)-acd1(121)-ac&
      &d1(122)-acd1(114)-acd1(115)+acd1(112)-acd1(120)
      acd1(113)=acd1(40)*acd1(112)
      acd1(114)=acd1(39)+acd1(37)
      acd1(114)=acd1(114)*acd1(69)
      acd1(115)=acd1(82)*acd1(84)
      acd1(116)=acd1(80)*acd1(83)
      acd1(117)=acd1(78)*acd1(49)
      acd1(118)=acd1(76)*acd1(47)
      acd1(119)=acd1(75)*acd1(45)
      acd1(120)=acd1(74)*acd1(44)
      acd1(121)=acd1(70)*acd1(38)
      acd1(122)=acd1(42)*acd1(72)
      acd1(123)=acd1(48)*acd1(77)
      acd1(124)=acd1(43)*acd1(73)
      acd1(114)=-acd1(118)-acd1(119)-acd1(120)-acd1(121)-acd1(115)-acd1(123)-ac&
      &d1(124)-acd1(116)-acd1(117)+acd1(114)-acd1(122)
      acd1(115)=acd1(12)*acd1(114)
      acd1(116)=acd1(2)+acd1(4)
      acd1(116)=acd1(116)*acd1(68)
      acd1(117)=acd1(99)*acd1(98)
      acd1(118)=acd1(97)*acd1(96)
      acd1(119)=acd1(95)*acd1(94)
      acd1(120)=acd1(93)*acd1(92)
      acd1(121)=acd1(90)*acd1(24)
      acd1(122)=acd1(87)*acd1(14)
      acd1(123)=acd1(16)*acd1(88)
      acd1(116)=acd1(123)+acd1(119)+acd1(120)+acd1(121)+acd1(122)-acd1(116)+acd&
      &1(117)-acd1(118)
      acd1(117)=-acd1(43)*acd1(116)
      acd1(118)=acd1(35)+acd1(36)
      acd1(118)=acd1(118)*acd1(68)
      acd1(119)=acd1(99)*acd1(103)
      acd1(120)=acd1(97)*acd1(102)
      acd1(121)=acd1(95)*acd1(101)
      acd1(122)=acd1(93)*acd1(100)
      acd1(123)=acd1(90)*acd1(46)
      acd1(124)=acd1(87)*acd1(41)
      acd1(125)=acd1(42)*acd1(88)
      acd1(118)=acd1(125)+acd1(121)+acd1(122)+acd1(123)+acd1(124)-acd1(118)+acd&
      &1(119)-acd1(120)
      acd1(119)=-acd1(18)*acd1(118)
      acd1(120)=acd1(110)*acd1(96)
      acd1(121)=acd1(109)*acd1(92)
      acd1(122)=acd1(16)*acd1(89)
      acd1(120)=acd1(122)+acd1(120)+acd1(121)
      acd1(121)=-acd1(48)*acd1(120)
      acd1(122)=acd1(110)*acd1(102)
      acd1(123)=acd1(109)*acd1(100)
      acd1(124)=acd1(42)*acd1(89)
      acd1(122)=acd1(124)+acd1(122)+acd1(123)
      acd1(123)=-acd1(28)*acd1(122)
      acd1(124)=2.0_ki*acd1(33)
      acd1(125)=-acd1(51)*acd1(124)
      acd1(113)=acd1(115)+acd1(113)+acd1(119)+acd1(117)+acd1(125)+acd1(121)+acd&
      &1(123)
      acd1(113)=acd1(67)*acd1(113)
      acd1(112)=acd1(57)*acd1(112)
      acd1(115)=acd1(56)+acd1(54)
      acd1(115)=acd1(115)*acd1(69)
      acd1(117)=acd1(82)*acd1(86)
      acd1(119)=acd1(80)*acd1(85)
      acd1(121)=acd1(78)*acd1(66)
      acd1(123)=acd1(76)*acd1(64)
      acd1(125)=acd1(75)*acd1(62)
      acd1(126)=acd1(74)*acd1(61)
      acd1(127)=acd1(70)*acd1(55)
      acd1(128)=acd1(59)*acd1(72)
      acd1(129)=acd1(65)*acd1(77)
      acd1(130)=acd1(60)*acd1(73)
      acd1(115)=acd1(127)+acd1(128)+acd1(129)+acd1(130)+acd1(121)+acd1(123)+acd&
      &1(125)+acd1(126)-acd1(115)+acd1(117)+acd1(119)
      acd1(117)=-acd1(12)*acd1(115)
      acd1(116)=-acd1(60)*acd1(116)
      acd1(119)=acd1(52)+acd1(53)
      acd1(119)=acd1(119)*acd1(68)
      acd1(121)=acd1(99)*acd1(107)
      acd1(123)=acd1(97)*acd1(106)
      acd1(125)=acd1(95)*acd1(105)
      acd1(126)=acd1(93)*acd1(104)
      acd1(127)=acd1(90)*acd1(63)
      acd1(128)=acd1(87)*acd1(58)
      acd1(129)=acd1(59)*acd1(88)
      acd1(119)=acd1(129)+acd1(125)+acd1(126)+acd1(127)+acd1(128)-acd1(119)+acd&
      &1(121)-acd1(123)
      acd1(121)=-acd1(18)*acd1(119)
      acd1(120)=-acd1(65)*acd1(120)
      acd1(123)=acd1(110)*acd1(106)
      acd1(125)=acd1(109)*acd1(104)
      acd1(126)=acd1(59)*acd1(89)
      acd1(123)=acd1(126)+acd1(123)+acd1(125)
      acd1(125)=-acd1(28)*acd1(123)
      acd1(126)=-acd1(28)*acd1(108)
      acd1(127)=-acd1(18)*acd1(91)
      acd1(126)=acd1(126)+acd1(127)
      acd1(127)=2.0_ki*acd1(67)
      acd1(126)=acd1(126)*acd1(127)
      acd1(128)=-acd1(34)*acd1(124)
      acd1(112)=acd1(126)+acd1(117)+acd1(112)+acd1(121)+acd1(116)+acd1(128)+acd&
      &1(120)+acd1(125)
      acd1(112)=acd1(50)*acd1(112)
      acd1(114)=acd1(57)*acd1(114)
      acd1(115)=-acd1(40)*acd1(115)
      acd1(116)=-acd1(60)*acd1(118)
      acd1(117)=-acd1(43)*acd1(119)
      acd1(118)=-acd1(65)*acd1(122)
      acd1(119)=-acd1(48)*acd1(123)
      acd1(120)=-acd1(48)*acd1(108)
      acd1(121)=-acd1(43)*acd1(91)
      acd1(120)=acd1(120)+acd1(121)
      acd1(120)=acd1(120)*acd1(127)
      acd1(121)=-acd1(65)*acd1(108)
      acd1(122)=-acd1(60)*acd1(91)
      acd1(121)=acd1(121)+acd1(122)
      acd1(121)=acd1(50)*acd1(121)
      acd1(122)=-acd1(1)*acd1(124)
      acd1(114)=2.0_ki*acd1(121)+acd1(120)+acd1(115)+acd1(114)+acd1(117)+acd1(1&
      &16)+acd1(122)+acd1(118)+acd1(119)
      acd1(114)=acd1(32)*acd1(114)
      acd1(115)=acd1(48)*acd1(71)
      acd1(116)=-acd1(10)*acd1(115)
      acd1(117)=acd1(28)*acd1(71)
      acd1(118)=-acd1(39)*acd1(117)
      acd1(119)=2.0_ki*acd1(13)
      acd1(120)=-acd1(51)*acd1(119)
      acd1(116)=acd1(120)+acd1(116)+acd1(118)
      acd1(116)=acd1(57)*acd1(116)
      acd1(118)=acd1(65)*acd1(71)
      acd1(120)=-acd1(10)*acd1(118)
      acd1(117)=-acd1(56)*acd1(117)
      acd1(121)=-acd1(34)*acd1(119)
      acd1(117)=acd1(121)+acd1(120)+acd1(117)
      acd1(117)=acd1(40)*acd1(117)
      acd1(118)=-acd1(39)*acd1(118)
      acd1(115)=-acd1(56)*acd1(115)
      acd1(119)=-acd1(1)*acd1(119)
      acd1(115)=acd1(119)+acd1(118)+acd1(115)
      acd1(115)=acd1(12)*acd1(115)
      brack=2.0_ki*acd1(111)+acd1(112)+acd1(113)+acd1(114)+acd1(115)+acd1(116)+&
      &acd1(117)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd1h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd1
      complex(ki) :: brack
      acd1(1)=d(iv1,iv2)
      acd1(2)=d(iv3,iv4)
      acd1(3)=abb1(12)
      acd1(4)=spvak1k2(iv3)
      acd1(5)=spvak5k6(iv4)
      acd1(6)=abb1(33)
      acd1(7)=spvak7k2(iv4)
      acd1(8)=abb1(17)
      acd1(9)=spvak1k2(iv4)
      acd1(10)=spvak5k6(iv3)
      acd1(11)=spvak7k2(iv3)
      acd1(12)=spvak4k3(iv4)
      acd1(13)=abb1(42)
      acd1(14)=spvak4k3(iv3)
      acd1(15)=d(iv1,iv3)
      acd1(16)=d(iv2,iv4)
      acd1(17)=spvak1k2(iv2)
      acd1(18)=spvak5k6(iv2)
      acd1(19)=spvak7k2(iv2)
      acd1(20)=spvak4k3(iv2)
      acd1(21)=d(iv1,iv4)
      acd1(22)=d(iv2,iv3)
      acd1(23)=spvak1k2(iv1)
      acd1(24)=spvak5k6(iv1)
      acd1(25)=spvak7k2(iv1)
      acd1(26)=spvak4k3(iv1)
      acd1(27)=abb1(8)
      acd1(28)=acd1(8)*acd1(7)
      acd1(29)=acd1(5)*acd1(6)
      acd1(28)=acd1(29)+acd1(28)
      acd1(28)=acd1(4)*acd1(28)
      acd1(30)=acd1(11)*acd1(8)
      acd1(31)=acd1(10)*acd1(6)
      acd1(30)=acd1(31)+acd1(30)
      acd1(30)=acd1(9)*acd1(30)
      acd1(32)=acd1(12)*acd1(13)
      acd1(33)=acd1(11)*acd1(32)
      acd1(34)=acd1(14)*acd1(13)
      acd1(35)=acd1(7)*acd1(34)
      acd1(28)=acd1(35)+acd1(33)+acd1(30)+acd1(28)
      acd1(28)=acd1(1)*acd1(28)
      acd1(30)=acd1(25)*acd1(8)
      acd1(33)=acd1(24)*acd1(6)
      acd1(30)=acd1(30)+acd1(33)
      acd1(33)=acd1(17)*acd1(30)
      acd1(35)=acd1(23)*acd1(8)
      acd1(36)=acd1(26)*acd1(13)
      acd1(35)=acd1(35)+acd1(36)
      acd1(36)=acd1(19)*acd1(35)
      acd1(37)=acd1(18)*acd1(6)
      acd1(38)=acd1(23)*acd1(37)
      acd1(39)=acd1(20)*acd1(13)
      acd1(40)=acd1(25)*acd1(39)
      acd1(33)=acd1(40)+acd1(38)+acd1(36)+acd1(33)
      acd1(33)=acd1(2)*acd1(33)
      acd1(36)=acd1(17)*acd1(8)
      acd1(36)=acd1(36)+acd1(39)
      acd1(38)=acd1(7)*acd1(36)
      acd1(39)=acd1(19)*acd1(8)
      acd1(37)=acd1(39)+acd1(37)
      acd1(39)=acd1(9)*acd1(37)
      acd1(40)=acd1(17)*acd1(29)
      acd1(41)=acd1(19)*acd1(32)
      acd1(38)=acd1(41)+acd1(40)+acd1(39)+acd1(38)
      acd1(38)=acd1(15)*acd1(38)
      acd1(39)=acd1(4)*acd1(30)
      acd1(40)=acd1(11)*acd1(35)
      acd1(41)=acd1(23)*acd1(31)
      acd1(42)=acd1(25)*acd1(34)
      acd1(39)=acd1(42)+acd1(41)+acd1(40)+acd1(39)
      acd1(39)=acd1(16)*acd1(39)
      acd1(37)=acd1(4)*acd1(37)
      acd1(36)=acd1(11)*acd1(36)
      acd1(31)=acd1(17)*acd1(31)
      acd1(34)=acd1(19)*acd1(34)
      acd1(31)=acd1(34)+acd1(31)+acd1(36)+acd1(37)
      acd1(31)=acd1(21)*acd1(31)
      acd1(34)=acd1(7)*acd1(35)
      acd1(30)=acd1(9)*acd1(30)
      acd1(29)=acd1(23)*acd1(29)
      acd1(32)=acd1(25)*acd1(32)
      acd1(29)=acd1(32)+acd1(29)+acd1(30)+acd1(34)
      acd1(29)=acd1(22)*acd1(29)
      acd1(28)=acd1(28)+acd1(33)+acd1(38)+acd1(39)+acd1(31)+acd1(29)
      acd1(29)=acd1(19)*acd1(27)
      acd1(30)=acd1(29)*acd1(4)
      acd1(31)=acd1(17)*acd1(27)
      acd1(32)=acd1(31)*acd1(11)
      acd1(30)=acd1(30)+acd1(32)
      acd1(32)=acd1(12)*acd1(30)
      acd1(29)=acd1(29)*acd1(9)
      acd1(31)=acd1(31)*acd1(7)
      acd1(29)=acd1(29)+acd1(31)
      acd1(31)=acd1(14)*acd1(29)
      acd1(33)=acd1(9)*acd1(11)
      acd1(34)=acd1(4)*acd1(7)
      acd1(33)=acd1(33)+acd1(34)
      acd1(33)=acd1(27)*acd1(33)
      acd1(34)=acd1(20)*acd1(33)
      acd1(31)=acd1(34)+acd1(32)+acd1(31)
      acd1(31)=acd1(24)*acd1(31)
      acd1(30)=acd1(5)*acd1(30)
      acd1(29)=acd1(10)*acd1(29)
      acd1(32)=acd1(18)*acd1(33)
      acd1(29)=acd1(32)+acd1(30)+acd1(29)
      acd1(29)=acd1(26)*acd1(29)
      acd1(30)=acd1(12)*acd1(10)
      acd1(32)=acd1(14)*acd1(5)
      acd1(30)=acd1(30)+acd1(32)
      acd1(32)=acd1(25)*acd1(27)
      acd1(33)=acd1(32)*acd1(17)
      acd1(34)=acd1(23)*acd1(27)
      acd1(35)=acd1(34)*acd1(19)
      acd1(33)=acd1(33)+acd1(35)
      acd1(30)=acd1(33)*acd1(30)
      acd1(33)=acd1(32)*acd1(4)
      acd1(35)=acd1(34)*acd1(11)
      acd1(33)=acd1(33)+acd1(35)
      acd1(35)=acd1(12)*acd1(33)
      acd1(32)=acd1(32)*acd1(9)
      acd1(34)=acd1(34)*acd1(7)
      acd1(32)=acd1(32)+acd1(34)
      acd1(34)=acd1(14)*acd1(32)
      acd1(34)=acd1(35)+acd1(34)
      acd1(34)=acd1(18)*acd1(34)
      acd1(33)=acd1(5)*acd1(33)
      acd1(32)=acd1(10)*acd1(32)
      acd1(32)=acd1(33)+acd1(32)
      acd1(32)=acd1(20)*acd1(32)
      acd1(33)=acd1(2)*acd1(1)
      acd1(35)=acd1(16)*acd1(15)
      acd1(36)=acd1(22)*acd1(21)
      acd1(33)=acd1(36)+acd1(33)+acd1(35)
      acd1(33)=acd1(3)*acd1(33)
      brack=2.0_ki*acd1(28)+acd1(29)+acd1(30)+acd1(31)+acd1(32)+8.0_ki*acd1(33)&
      &+acd1(34)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd1h5
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
end module     p8_cbarc_epnemumnmubarg_d1h5l1d
