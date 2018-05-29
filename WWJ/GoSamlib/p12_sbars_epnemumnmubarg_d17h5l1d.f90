module     p12_sbars_epnemumnmubarg_d17h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d17h5l1d.f90
   ! generator: buildfortran_d.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d17
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd17h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd17
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd17h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd17
      complex(ki) :: brack
      acd17(1)=k2(iv1)
      acd17(2)=abb17(24)
      acd17(3)=spvak1k2(iv1)
      acd17(4)=abb17(18)
      acd17(5)=spvak1k3(iv1)
      acd17(6)=abb17(83)
      acd17(7)=spvak4k3(iv1)
      acd17(8)=abb17(69)
      acd17(9)=spvak5k3(iv1)
      acd17(10)=abb17(42)
      acd17(11)=spvak7k2(iv1)
      acd17(12)=abb17(45)
      acd17(13)=spvak7k3(iv1)
      acd17(14)=abb17(44)
      acd17(15)=-acd17(2)*acd17(1)
      acd17(16)=-acd17(4)*acd17(3)
      acd17(17)=-acd17(6)*acd17(5)
      acd17(18)=-acd17(8)*acd17(7)
      acd17(19)=-acd17(10)*acd17(9)
      acd17(20)=-acd17(12)*acd17(11)
      acd17(21)=-acd17(14)*acd17(13)
      brack=acd17(15)+acd17(16)+acd17(17)+acd17(18)+acd17(19)+acd17(20)+acd17(2&
      &1)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd17h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(96) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=abb17(23)
      acd17(3)=k1(iv1)
      acd17(4)=k7(iv2)
      acd17(5)=abb17(29)
      acd17(6)=spvak7k2(iv2)
      acd17(7)=abb17(54)
      acd17(8)=k1(iv2)
      acd17(9)=k7(iv1)
      acd17(10)=spvak7k2(iv1)
      acd17(11)=k2(iv1)
      acd17(12)=abb17(27)
      acd17(13)=abb17(52)
      acd17(14)=spvak5k6(iv2)
      acd17(15)=abb17(66)
      acd17(16)=k2(iv2)
      acd17(17)=spvak5k6(iv1)
      acd17(18)=k5(iv1)
      acd17(19)=abb17(38)
      acd17(20)=spvak1k2(iv2)
      acd17(21)=abb17(104)
      acd17(22)=spvak4k2(iv2)
      acd17(23)=abb17(36)
      acd17(24)=k5(iv2)
      acd17(25)=spvak1k2(iv1)
      acd17(26)=spvak4k2(iv1)
      acd17(27)=k6(iv1)
      acd17(28)=abb17(48)
      acd17(29)=k6(iv2)
      acd17(30)=abb17(47)
      acd17(31)=abb17(87)
      acd17(32)=abb17(96)
      acd17(33)=spvak1k3(iv2)
      acd17(34)=abb17(76)
      acd17(35)=spvak4k3(iv2)
      acd17(36)=abb17(85)
      acd17(37)=spvak5k3(iv2)
      acd17(38)=abb17(77)
      acd17(39)=spvak1k3(iv1)
      acd17(40)=spvak4k3(iv1)
      acd17(41)=spvak5k3(iv1)
      acd17(42)=abb17(61)
      acd17(43)=abb17(37)
      acd17(44)=abb17(16)
      acd17(45)=abb17(34)
      acd17(46)=abb17(43)
      acd17(47)=abb17(84)
      acd17(48)=abb17(56)
      acd17(49)=spvak7k3(iv2)
      acd17(50)=abb17(57)
      acd17(51)=spvak1k6(iv2)
      acd17(52)=abb17(88)
      acd17(53)=spvak1k7(iv2)
      acd17(54)=abb17(100)
      acd17(55)=spvak5k2(iv2)
      acd17(56)=abb17(79)
      acd17(57)=spvak4k6(iv2)
      acd17(58)=abb17(10)
      acd17(59)=spvak4k7(iv2)
      acd17(60)=abb17(13)
      acd17(61)=spvak5k7(iv2)
      acd17(62)=abb17(11)
      acd17(63)=spvak7k3(iv1)
      acd17(64)=spvak1k6(iv1)
      acd17(65)=spvak1k7(iv1)
      acd17(66)=spvak5k2(iv1)
      acd17(67)=spvak4k6(iv1)
      acd17(68)=spvak4k7(iv1)
      acd17(69)=spvak5k7(iv1)
      acd17(70)=abb17(19)
      acd17(71)=abb17(73)
      acd17(72)=abb17(63)
      acd17(73)=abb17(21)
      acd17(74)=abb17(68)
      acd17(75)=abb17(20)
      acd17(76)=abb17(6)
      acd17(77)=abb17(92)
      acd17(78)=acd17(62)*acd17(69)
      acd17(79)=acd17(60)*acd17(68)
      acd17(80)=acd17(58)*acd17(67)
      acd17(81)=acd17(56)*acd17(66)
      acd17(82)=-acd17(54)*acd17(65)
      acd17(83)=acd17(52)*acd17(64)
      acd17(84)=acd17(3)*acd17(7)
      acd17(85)=acd17(63)*acd17(50)
      acd17(86)=acd17(41)*acd17(48)
      acd17(87)=acd17(39)*acd17(46)
      acd17(88)=acd17(27)*acd17(28)
      acd17(89)=acd17(18)*acd17(19)
      acd17(90)=acd17(11)*acd17(13)
      acd17(91)=acd17(40)*acd17(47)
      acd17(92)=acd17(26)*acd17(45)
      acd17(93)=acd17(25)*acd17(44)
      acd17(94)=acd17(17)*acd17(43)
      acd17(95)=acd17(9)*acd17(30)
      acd17(96)=acd17(10)*acd17(42)
      acd17(78)=2.0_ki*acd17(96)+acd17(95)+acd17(94)+acd17(93)+acd17(92)+acd17(&
      &91)+acd17(90)+acd17(89)+acd17(88)+acd17(87)+acd17(86)+acd17(85)+acd17(84&
      &)+acd17(83)+acd17(82)+acd17(81)+acd17(80)+acd17(78)+acd17(79)
      acd17(78)=acd17(6)*acd17(78)
      acd17(79)=acd17(62)*acd17(61)
      acd17(80)=acd17(60)*acd17(59)
      acd17(81)=acd17(58)*acd17(57)
      acd17(82)=acd17(55)*acd17(56)
      acd17(83)=-acd17(54)*acd17(53)
      acd17(84)=acd17(52)*acd17(51)
      acd17(85)=acd17(7)*acd17(8)
      acd17(86)=acd17(49)*acd17(50)
      acd17(87)=acd17(37)*acd17(48)
      acd17(88)=acd17(33)*acd17(46)
      acd17(89)=acd17(29)*acd17(28)
      acd17(90)=acd17(24)*acd17(19)
      acd17(91)=acd17(16)*acd17(13)
      acd17(92)=acd17(35)*acd17(47)
      acd17(93)=acd17(22)*acd17(45)
      acd17(94)=acd17(20)*acd17(44)
      acd17(95)=acd17(14)*acd17(43)
      acd17(96)=acd17(4)*acd17(30)
      acd17(79)=acd17(96)+acd17(95)+acd17(94)+acd17(93)+acd17(92)+acd17(91)+acd&
      &17(90)+acd17(89)+acd17(88)+acd17(87)+acd17(86)+acd17(85)+acd17(84)+acd17&
      &(83)+acd17(82)+acd17(81)+acd17(79)+acd17(80)
      acd17(79)=acd17(10)*acd17(79)
      acd17(80)=acd17(5)*acd17(8)
      acd17(81)=acd17(37)*acd17(38)
      acd17(82)=acd17(33)*acd17(34)
      acd17(83)=acd17(16)*acd17(12)
      acd17(84)=acd17(35)*acd17(36)
      acd17(85)=acd17(22)*acd17(32)
      acd17(86)=acd17(20)*acd17(31)
      acd17(80)=acd17(86)+acd17(85)+acd17(84)+acd17(83)+acd17(82)+acd17(80)+acd&
      &17(81)
      acd17(80)=acd17(9)*acd17(80)
      acd17(81)=acd17(3)*acd17(5)
      acd17(82)=acd17(41)*acd17(38)
      acd17(83)=acd17(39)*acd17(34)
      acd17(84)=acd17(11)*acd17(12)
      acd17(85)=acd17(40)*acd17(36)
      acd17(86)=acd17(26)*acd17(32)
      acd17(87)=acd17(25)*acd17(31)
      acd17(81)=acd17(87)+acd17(86)+acd17(85)+acd17(84)+acd17(83)+acd17(81)+acd&
      &17(82)
      acd17(81)=acd17(4)*acd17(81)
      acd17(82)=acd17(49)*acd17(74)
      acd17(83)=acd17(33)*acd17(72)
      acd17(84)=acd17(16)*acd17(15)
      acd17(85)=acd17(35)*acd17(73)
      acd17(86)=acd17(22)*acd17(71)
      acd17(87)=acd17(20)*acd17(70)
      acd17(82)=acd17(87)+acd17(86)+acd17(85)+acd17(84)+acd17(82)+acd17(83)
      acd17(82)=acd17(17)*acd17(82)
      acd17(83)=acd17(63)*acd17(74)
      acd17(84)=acd17(39)*acd17(72)
      acd17(85)=acd17(11)*acd17(15)
      acd17(86)=acd17(40)*acd17(73)
      acd17(87)=acd17(26)*acd17(71)
      acd17(88)=acd17(25)*acd17(70)
      acd17(83)=acd17(88)+acd17(87)+acd17(86)+acd17(85)+acd17(83)+acd17(84)
      acd17(83)=acd17(14)*acd17(83)
      acd17(84)=acd17(49)*acd17(76)
      acd17(85)=acd17(37)*acd17(75)
      acd17(86)=acd17(24)+acd17(29)
      acd17(87)=acd17(21)*acd17(86)
      acd17(84)=acd17(87)+acd17(84)+acd17(85)
      acd17(84)=acd17(25)*acd17(84)
      acd17(85)=acd17(63)*acd17(76)
      acd17(87)=acd17(41)*acd17(75)
      acd17(88)=acd17(18)+acd17(27)
      acd17(89)=acd17(21)*acd17(88)
      acd17(85)=acd17(89)+acd17(85)+acd17(87)
      acd17(85)=acd17(20)*acd17(85)
      acd17(87)=acd17(40)*acd17(55)
      acd17(89)=acd17(35)*acd17(66)
      acd17(87)=acd17(89)+acd17(87)
      acd17(87)=acd17(77)*acd17(87)
      acd17(86)=-acd17(26)*acd17(86)
      acd17(88)=-acd17(22)*acd17(88)
      acd17(86)=acd17(88)+acd17(86)
      acd17(86)=acd17(23)*acd17(86)
      acd17(88)=acd17(1)*acd17(2)
      brack=acd17(78)+acd17(79)+acd17(80)+acd17(81)+acd17(82)+acd17(83)+acd17(8&
      &4)+acd17(85)+acd17(86)+acd17(87)+2.0_ki*acd17(88)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd17h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(130) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=k1(iv3)
      acd17(3)=abb17(28)
      acd17(4)=k2(iv3)
      acd17(5)=abb17(26)
      acd17(6)=k5(iv3)
      acd17(7)=abb17(25)
      acd17(8)=k6(iv3)
      acd17(9)=abb17(41)
      acd17(10)=k7(iv3)
      acd17(11)=abb17(40)
      acd17(12)=spvak1k2(iv3)
      acd17(13)=abb17(14)
      acd17(14)=spvak1k3(iv3)
      acd17(15)=abb17(75)
      acd17(16)=spvak4k2(iv3)
      acd17(17)=abb17(95)
      acd17(18)=spvak4k3(iv3)
      acd17(19)=abb17(86)
      acd17(20)=spvak4k6(iv3)
      acd17(21)=abb17(22)
      acd17(22)=spvak4k7(iv3)
      acd17(23)=abb17(81)
      acd17(24)=spvak5k2(iv3)
      acd17(25)=abb17(39)
      acd17(26)=spvak5k3(iv3)
      acd17(27)=abb17(78)
      acd17(28)=spvak5k6(iv3)
      acd17(29)=abb17(65)
      acd17(30)=spvak5k7(iv3)
      acd17(31)=abb17(62)
      acd17(32)=spvak7k2(iv3)
      acd17(33)=abb17(35)
      acd17(34)=d(iv1,iv3)
      acd17(35)=k1(iv2)
      acd17(36)=k2(iv2)
      acd17(37)=k5(iv2)
      acd17(38)=k6(iv2)
      acd17(39)=k7(iv2)
      acd17(40)=spvak1k2(iv2)
      acd17(41)=spvak1k3(iv2)
      acd17(42)=spvak4k2(iv2)
      acd17(43)=spvak4k3(iv2)
      acd17(44)=spvak4k6(iv2)
      acd17(45)=spvak4k7(iv2)
      acd17(46)=spvak5k2(iv2)
      acd17(47)=spvak5k3(iv2)
      acd17(48)=spvak5k6(iv2)
      acd17(49)=spvak5k7(iv2)
      acd17(50)=spvak7k2(iv2)
      acd17(51)=d(iv2,iv3)
      acd17(52)=k1(iv1)
      acd17(53)=k2(iv1)
      acd17(54)=k5(iv1)
      acd17(55)=k6(iv1)
      acd17(56)=k7(iv1)
      acd17(57)=spvak1k2(iv1)
      acd17(58)=spvak1k3(iv1)
      acd17(59)=spvak4k2(iv1)
      acd17(60)=spvak4k3(iv1)
      acd17(61)=spvak4k6(iv1)
      acd17(62)=spvak4k7(iv1)
      acd17(63)=spvak5k2(iv1)
      acd17(64)=spvak5k3(iv1)
      acd17(65)=spvak5k6(iv1)
      acd17(66)=spvak5k7(iv1)
      acd17(67)=spvak7k2(iv1)
      acd17(68)=abb17(64)
      acd17(69)=abb17(32)
      acd17(70)=abb17(31)
      acd17(71)=abb17(70)
      acd17(72)=abb17(58)
      acd17(73)=abb17(60)
      acd17(74)=abb17(59)
      acd17(75)=abb17(46)
      acd17(76)=abb17(30)
      acd17(77)=abb17(9)
      acd17(78)=abb17(53)
      acd17(79)=spvak5k1(iv3)
      acd17(80)=abb17(55)
      acd17(81)=spvak7k3(iv3)
      acd17(82)=abb17(50)
      acd17(83)=spvak5k1(iv2)
      acd17(84)=spvak7k3(iv2)
      acd17(85)=spvak5k1(iv1)
      acd17(86)=spvak7k3(iv1)
      acd17(87)=abb17(7)
      acd17(88)=abb17(82)
      acd17(89)=abb17(94)
      acd17(90)=abb17(91)
      acd17(91)=spvak1k6(iv3)
      acd17(92)=abb17(103)
      acd17(93)=spvak1k7(iv3)
      acd17(94)=abb17(101)
      acd17(95)=spvak1k6(iv2)
      acd17(96)=spvak1k7(iv2)
      acd17(97)=spvak1k6(iv1)
      acd17(98)=spvak1k7(iv1)
      acd17(99)=abb17(80)
      acd17(100)=abb17(71)
      acd17(101)=spvak1k5(iv3)
      acd17(102)=abb17(49)
      acd17(103)=abb17(102)
      acd17(104)=abb17(51)
      acd17(105)=spvak6k2(iv3)
      acd17(106)=abb17(74)
      acd17(107)=spvak1k5(iv2)
      acd17(108)=spvak6k2(iv2)
      acd17(109)=spvak1k5(iv1)
      acd17(110)=spvak6k2(iv1)
      acd17(111)=-acd17(31)*acd17(66)
      acd17(112)=-acd17(27)*acd17(64)
      acd17(113)=-acd17(23)*acd17(62)
      acd17(114)=-acd17(21)*acd17(61)
      acd17(115)=-acd17(17)*acd17(59)
      acd17(116)=-acd17(15)*acd17(58)
      acd17(117)=-acd17(9)*acd17(55)
      acd17(118)=-acd17(7)*acd17(54)
      acd17(119)=-acd17(5)*acd17(53)
      acd17(120)=-acd17(3)*acd17(52)
      acd17(121)=-acd17(56)*acd17(11)
      acd17(122)=-acd17(63)*acd17(25)
      acd17(123)=-acd17(60)*acd17(19)
      acd17(111)=acd17(123)+acd17(122)+acd17(121)+acd17(120)+acd17(119)+acd17(1&
      &18)+acd17(117)+acd17(116)+acd17(115)+acd17(114)+acd17(113)+acd17(111)+ac&
      &d17(112)
      acd17(111)=acd17(51)*acd17(111)
      acd17(112)=-acd17(31)*acd17(49)
      acd17(113)=-acd17(27)*acd17(47)
      acd17(114)=-acd17(23)*acd17(45)
      acd17(115)=-acd17(21)*acd17(44)
      acd17(116)=-acd17(17)*acd17(42)
      acd17(117)=-acd17(15)*acd17(41)
      acd17(118)=-acd17(9)*acd17(38)
      acd17(119)=-acd17(7)*acd17(37)
      acd17(120)=-acd17(5)*acd17(36)
      acd17(121)=-acd17(3)*acd17(35)
      acd17(122)=-acd17(39)*acd17(11)
      acd17(123)=-acd17(46)*acd17(25)
      acd17(124)=-acd17(43)*acd17(19)
      acd17(112)=acd17(124)+acd17(123)+acd17(122)+acd17(121)+acd17(120)+acd17(1&
      &19)+acd17(118)+acd17(117)+acd17(116)+acd17(115)+acd17(114)+acd17(112)+ac&
      &d17(113)
      acd17(112)=acd17(34)*acd17(112)
      acd17(113)=-acd17(30)*acd17(31)
      acd17(114)=-acd17(26)*acd17(27)
      acd17(115)=-acd17(22)*acd17(23)
      acd17(116)=-acd17(20)*acd17(21)
      acd17(117)=-acd17(16)*acd17(17)
      acd17(118)=-acd17(14)*acd17(15)
      acd17(119)=-acd17(8)*acd17(9)
      acd17(120)=-acd17(6)*acd17(7)
      acd17(121)=-acd17(4)*acd17(5)
      acd17(122)=-acd17(2)*acd17(3)
      acd17(123)=-acd17(10)*acd17(11)
      acd17(124)=-acd17(24)*acd17(25)
      acd17(125)=-acd17(18)*acd17(19)
      acd17(113)=acd17(125)+acd17(124)+acd17(123)+acd17(122)+acd17(121)+acd17(1&
      &20)+acd17(119)+acd17(118)+acd17(117)+acd17(116)+acd17(115)+acd17(113)+ac&
      &d17(114)
      acd17(113)=acd17(1)*acd17(113)
      acd17(114)=-acd17(65)*acd17(51)
      acd17(115)=-acd17(48)*acd17(34)
      acd17(116)=-acd17(28)*acd17(1)
      acd17(114)=acd17(116)+acd17(115)+acd17(114)
      acd17(114)=acd17(29)*acd17(114)
      acd17(111)=acd17(113)+acd17(111)+acd17(112)+acd17(114)
      acd17(112)=acd17(10)+acd17(8)
      acd17(112)=acd17(112)*acd17(70)
      acd17(113)=acd17(82)*acd17(81)
      acd17(114)=acd17(80)*acd17(79)
      acd17(115)=acd17(78)*acd17(30)
      acd17(116)=acd17(76)*acd17(26)
      acd17(117)=acd17(74)*acd17(22)
      acd17(118)=acd17(73)*acd17(20)
      acd17(119)=acd17(69)*acd17(6)
      acd17(120)=acd17(24)*acd17(75)
      acd17(121)=acd17(18)*acd17(72)
      acd17(122)=acd17(28)*acd17(77)
      acd17(112)=-acd17(116)-acd17(117)-acd17(118)-acd17(119)-acd17(113)-acd17(&
      &121)-acd17(122)-acd17(114)-acd17(115)+acd17(112)-acd17(120)
      acd17(113)=acd17(40)*acd17(112)
      acd17(114)=acd17(39)+acd17(38)
      acd17(114)=acd17(114)*acd17(70)
      acd17(115)=acd17(82)*acd17(84)
      acd17(116)=acd17(80)*acd17(83)
      acd17(117)=acd17(78)*acd17(49)
      acd17(118)=acd17(76)*acd17(47)
      acd17(119)=acd17(74)*acd17(45)
      acd17(120)=acd17(73)*acd17(44)
      acd17(121)=acd17(69)*acd17(37)
      acd17(122)=acd17(46)*acd17(75)
      acd17(123)=acd17(43)*acd17(72)
      acd17(124)=acd17(48)*acd17(77)
      acd17(114)=-acd17(118)-acd17(119)-acd17(120)-acd17(121)-acd17(115)-acd17(&
      &123)-acd17(124)-acd17(116)-acd17(117)+acd17(114)-acd17(122)
      acd17(115)=acd17(12)*acd17(114)
      acd17(116)=acd17(2)+acd17(4)
      acd17(116)=acd17(116)*acd17(68)
      acd17(117)=acd17(106)*acd17(105)
      acd17(118)=acd17(104)*acd17(93)
      acd17(119)=acd17(103)*acd17(91)
      acd17(120)=acd17(102)*acd17(101)
      acd17(121)=acd17(88)*acd17(16)
      acd17(122)=acd17(87)*acd17(14)
      acd17(123)=acd17(24)*acd17(99)
      acd17(116)=-acd17(123)-acd17(119)+acd17(120)-acd17(121)-acd17(122)+acd17(&
      &116)+acd17(117)+acd17(118)
      acd17(117)=acd17(48)*acd17(116)
      acd17(118)=acd17(35)+acd17(36)
      acd17(118)=acd17(118)*acd17(68)
      acd17(119)=acd17(106)*acd17(108)
      acd17(120)=acd17(104)*acd17(96)
      acd17(121)=acd17(103)*acd17(95)
      acd17(122)=acd17(102)*acd17(107)
      acd17(123)=acd17(88)*acd17(42)
      acd17(124)=acd17(87)*acd17(41)
      acd17(125)=acd17(46)*acd17(99)
      acd17(118)=-acd17(125)-acd17(121)+acd17(122)-acd17(123)-acd17(124)+acd17(&
      &118)+acd17(119)+acd17(120)
      acd17(119)=acd17(28)*acd17(118)
      acd17(120)=acd17(94)*acd17(93)
      acd17(121)=acd17(92)*acd17(91)
      acd17(122)=acd17(24)*acd17(89)
      acd17(120)=acd17(122)+acd17(120)+acd17(121)
      acd17(121)=-acd17(43)*acd17(120)
      acd17(122)=acd17(94)*acd17(96)
      acd17(123)=acd17(92)*acd17(95)
      acd17(124)=acd17(46)*acd17(89)
      acd17(122)=acd17(124)+acd17(122)+acd17(123)
      acd17(123)=-acd17(18)*acd17(122)
      acd17(124)=2.0_ki*acd17(33)
      acd17(125)=-acd17(51)*acd17(124)
      acd17(113)=acd17(115)+acd17(113)+acd17(119)+acd17(117)+acd17(125)+acd17(1&
      &21)+acd17(123)
      acd17(113)=acd17(67)*acd17(113)
      acd17(112)=acd17(57)*acd17(112)
      acd17(115)=acd17(56)+acd17(55)
      acd17(115)=acd17(115)*acd17(70)
      acd17(117)=acd17(82)*acd17(86)
      acd17(119)=acd17(80)*acd17(85)
      acd17(121)=acd17(78)*acd17(66)
      acd17(123)=acd17(76)*acd17(64)
      acd17(125)=acd17(74)*acd17(62)
      acd17(126)=acd17(73)*acd17(61)
      acd17(127)=acd17(69)*acd17(54)
      acd17(128)=acd17(63)*acd17(75)
      acd17(129)=acd17(60)*acd17(72)
      acd17(130)=acd17(65)*acd17(77)
      acd17(115)=acd17(127)+acd17(128)+acd17(129)+acd17(130)+acd17(121)+acd17(1&
      &23)+acd17(125)+acd17(126)-acd17(115)+acd17(117)+acd17(119)
      acd17(117)=-acd17(12)*acd17(115)
      acd17(116)=acd17(65)*acd17(116)
      acd17(119)=acd17(52)+acd17(53)
      acd17(119)=acd17(119)*acd17(68)
      acd17(121)=acd17(106)*acd17(110)
      acd17(123)=acd17(104)*acd17(98)
      acd17(125)=acd17(103)*acd17(97)
      acd17(126)=acd17(102)*acd17(109)
      acd17(127)=acd17(88)*acd17(59)
      acd17(128)=acd17(87)*acd17(58)
      acd17(129)=acd17(63)*acd17(99)
      acd17(119)=-acd17(129)-acd17(125)+acd17(126)-acd17(127)-acd17(128)+acd17(&
      &119)+acd17(121)+acd17(123)
      acd17(121)=acd17(28)*acd17(119)
      acd17(120)=-acd17(60)*acd17(120)
      acd17(123)=acd17(94)*acd17(98)
      acd17(125)=acd17(92)*acd17(97)
      acd17(126)=acd17(63)*acd17(89)
      acd17(123)=acd17(126)+acd17(123)+acd17(125)
      acd17(125)=-acd17(18)*acd17(123)
      acd17(126)=-acd17(18)*acd17(90)
      acd17(127)=-acd17(28)*acd17(100)
      acd17(126)=acd17(126)+acd17(127)
      acd17(127)=2.0_ki*acd17(67)
      acd17(126)=acd17(126)*acd17(127)
      acd17(128)=-acd17(34)*acd17(124)
      acd17(112)=acd17(126)+acd17(117)+acd17(112)+acd17(121)+acd17(116)+acd17(1&
      &28)+acd17(120)+acd17(125)
      acd17(112)=acd17(50)*acd17(112)
      acd17(114)=acd17(57)*acd17(114)
      acd17(115)=-acd17(40)*acd17(115)
      acd17(116)=acd17(65)*acd17(118)
      acd17(117)=acd17(48)*acd17(119)
      acd17(118)=-acd17(60)*acd17(122)
      acd17(119)=-acd17(43)*acd17(123)
      acd17(120)=-acd17(43)*acd17(90)
      acd17(121)=-acd17(48)*acd17(100)
      acd17(120)=acd17(120)+acd17(121)
      acd17(120)=acd17(120)*acd17(127)
      acd17(121)=-acd17(60)*acd17(90)
      acd17(122)=-acd17(65)*acd17(100)
      acd17(121)=acd17(121)+acd17(122)
      acd17(121)=acd17(50)*acd17(121)
      acd17(122)=-acd17(1)*acd17(124)
      acd17(114)=2.0_ki*acd17(121)+acd17(120)+acd17(115)+acd17(114)+acd17(117)+&
      &acd17(116)+acd17(122)+acd17(118)+acd17(119)
      acd17(114)=acd17(32)*acd17(114)
      acd17(115)=acd17(43)*acd17(71)
      acd17(116)=-acd17(10)*acd17(115)
      acd17(117)=acd17(18)*acd17(71)
      acd17(118)=-acd17(39)*acd17(117)
      acd17(119)=2.0_ki*acd17(13)
      acd17(120)=-acd17(51)*acd17(119)
      acd17(116)=acd17(120)+acd17(116)+acd17(118)
      acd17(116)=acd17(57)*acd17(116)
      acd17(118)=acd17(60)*acd17(71)
      acd17(120)=-acd17(10)*acd17(118)
      acd17(117)=-acd17(56)*acd17(117)
      acd17(121)=-acd17(34)*acd17(119)
      acd17(117)=acd17(121)+acd17(120)+acd17(117)
      acd17(117)=acd17(40)*acd17(117)
      acd17(118)=-acd17(39)*acd17(118)
      acd17(115)=-acd17(56)*acd17(115)
      acd17(119)=-acd17(1)*acd17(119)
      acd17(115)=acd17(119)+acd17(118)+acd17(115)
      acd17(115)=acd17(12)*acd17(115)
      brack=2.0_ki*acd17(111)+acd17(112)+acd17(113)+acd17(114)+acd17(115)+acd17&
      &(116)+acd17(117)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd17h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=d(iv3,iv4)
      acd17(3)=abb17(12)
      acd17(4)=spvak1k2(iv3)
      acd17(5)=spvak4k3(iv4)
      acd17(6)=abb17(33)
      acd17(7)=spvak7k2(iv4)
      acd17(8)=abb17(17)
      acd17(9)=spvak1k2(iv4)
      acd17(10)=spvak4k3(iv3)
      acd17(11)=spvak7k2(iv3)
      acd17(12)=spvak5k6(iv4)
      acd17(13)=abb17(67)
      acd17(14)=spvak5k6(iv3)
      acd17(15)=d(iv1,iv3)
      acd17(16)=d(iv2,iv4)
      acd17(17)=spvak1k2(iv2)
      acd17(18)=spvak4k3(iv2)
      acd17(19)=spvak7k2(iv2)
      acd17(20)=spvak5k6(iv2)
      acd17(21)=d(iv1,iv4)
      acd17(22)=d(iv2,iv3)
      acd17(23)=spvak1k2(iv1)
      acd17(24)=spvak4k3(iv1)
      acd17(25)=spvak7k2(iv1)
      acd17(26)=spvak5k6(iv1)
      acd17(27)=abb17(8)
      acd17(28)=acd17(8)*acd17(7)
      acd17(29)=acd17(5)*acd17(6)
      acd17(28)=acd17(29)+acd17(28)
      acd17(28)=acd17(4)*acd17(28)
      acd17(30)=acd17(11)*acd17(8)
      acd17(31)=acd17(10)*acd17(6)
      acd17(30)=acd17(31)+acd17(30)
      acd17(30)=acd17(9)*acd17(30)
      acd17(32)=acd17(12)*acd17(13)
      acd17(33)=acd17(11)*acd17(32)
      acd17(34)=acd17(14)*acd17(13)
      acd17(35)=acd17(7)*acd17(34)
      acd17(28)=acd17(35)+acd17(33)+acd17(30)+acd17(28)
      acd17(28)=acd17(1)*acd17(28)
      acd17(30)=acd17(25)*acd17(8)
      acd17(33)=acd17(24)*acd17(6)
      acd17(30)=acd17(30)+acd17(33)
      acd17(33)=acd17(17)*acd17(30)
      acd17(35)=acd17(23)*acd17(8)
      acd17(36)=acd17(26)*acd17(13)
      acd17(35)=acd17(35)+acd17(36)
      acd17(36)=acd17(19)*acd17(35)
      acd17(37)=acd17(18)*acd17(6)
      acd17(38)=acd17(23)*acd17(37)
      acd17(39)=acd17(20)*acd17(13)
      acd17(40)=acd17(25)*acd17(39)
      acd17(33)=acd17(40)+acd17(38)+acd17(36)+acd17(33)
      acd17(33)=acd17(2)*acd17(33)
      acd17(36)=acd17(17)*acd17(8)
      acd17(36)=acd17(36)+acd17(39)
      acd17(38)=acd17(7)*acd17(36)
      acd17(39)=acd17(19)*acd17(8)
      acd17(37)=acd17(39)+acd17(37)
      acd17(39)=acd17(9)*acd17(37)
      acd17(40)=acd17(17)*acd17(29)
      acd17(41)=acd17(19)*acd17(32)
      acd17(38)=acd17(41)+acd17(40)+acd17(39)+acd17(38)
      acd17(38)=acd17(15)*acd17(38)
      acd17(39)=acd17(4)*acd17(30)
      acd17(40)=acd17(11)*acd17(35)
      acd17(41)=acd17(23)*acd17(31)
      acd17(42)=acd17(25)*acd17(34)
      acd17(39)=acd17(42)+acd17(41)+acd17(40)+acd17(39)
      acd17(39)=acd17(16)*acd17(39)
      acd17(37)=acd17(4)*acd17(37)
      acd17(36)=acd17(11)*acd17(36)
      acd17(31)=acd17(17)*acd17(31)
      acd17(34)=acd17(19)*acd17(34)
      acd17(31)=acd17(34)+acd17(31)+acd17(36)+acd17(37)
      acd17(31)=acd17(21)*acd17(31)
      acd17(34)=acd17(7)*acd17(35)
      acd17(30)=acd17(9)*acd17(30)
      acd17(29)=acd17(23)*acd17(29)
      acd17(32)=acd17(25)*acd17(32)
      acd17(29)=acd17(32)+acd17(29)+acd17(30)+acd17(34)
      acd17(29)=acd17(22)*acd17(29)
      acd17(28)=acd17(28)+acd17(33)+acd17(38)+acd17(39)+acd17(31)+acd17(29)
      acd17(29)=acd17(19)*acd17(27)
      acd17(30)=acd17(29)*acd17(4)
      acd17(31)=acd17(17)*acd17(27)
      acd17(32)=acd17(31)*acd17(11)
      acd17(30)=acd17(30)+acd17(32)
      acd17(32)=acd17(12)*acd17(30)
      acd17(29)=acd17(29)*acd17(9)
      acd17(31)=acd17(31)*acd17(7)
      acd17(29)=acd17(29)+acd17(31)
      acd17(31)=acd17(14)*acd17(29)
      acd17(33)=acd17(9)*acd17(11)
      acd17(34)=acd17(4)*acd17(7)
      acd17(33)=acd17(33)+acd17(34)
      acd17(33)=acd17(27)*acd17(33)
      acd17(34)=acd17(20)*acd17(33)
      acd17(31)=acd17(34)+acd17(32)+acd17(31)
      acd17(31)=acd17(24)*acd17(31)
      acd17(30)=acd17(5)*acd17(30)
      acd17(29)=acd17(10)*acd17(29)
      acd17(32)=acd17(18)*acd17(33)
      acd17(29)=acd17(32)+acd17(30)+acd17(29)
      acd17(29)=acd17(26)*acd17(29)
      acd17(30)=acd17(12)*acd17(10)
      acd17(32)=acd17(14)*acd17(5)
      acd17(30)=acd17(30)+acd17(32)
      acd17(32)=acd17(25)*acd17(27)
      acd17(33)=acd17(32)*acd17(17)
      acd17(34)=acd17(23)*acd17(27)
      acd17(35)=acd17(34)*acd17(19)
      acd17(33)=acd17(33)+acd17(35)
      acd17(30)=acd17(33)*acd17(30)
      acd17(33)=acd17(32)*acd17(4)
      acd17(35)=acd17(34)*acd17(11)
      acd17(33)=acd17(33)+acd17(35)
      acd17(35)=acd17(12)*acd17(33)
      acd17(32)=acd17(32)*acd17(9)
      acd17(34)=acd17(34)*acd17(7)
      acd17(32)=acd17(32)+acd17(34)
      acd17(34)=acd17(14)*acd17(32)
      acd17(34)=acd17(35)+acd17(34)
      acd17(34)=acd17(18)*acd17(34)
      acd17(33)=acd17(5)*acd17(33)
      acd17(32)=acd17(10)*acd17(32)
      acd17(32)=acd17(33)+acd17(32)
      acd17(32)=acd17(20)*acd17(32)
      acd17(33)=acd17(2)*acd17(1)
      acd17(35)=acd17(16)*acd17(15)
      acd17(36)=acd17(22)*acd17(21)
      acd17(33)=acd17(36)+acd17(33)+acd17(35)
      acd17(33)=acd17(3)*acd17(33)
      brack=2.0_ki*acd17(28)+acd17(29)+acd17(30)+acd17(31)+acd17(32)+8.0_ki*acd&
      &17(33)+acd17(34)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd17h5
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
!---#[ subroutine reconstruct_d17:
   subroutine     reconstruct_d17(coeffs)
      use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_17:
      coeffs%coeffs_17%c0 = derivative(czip)
      coeffs%coeffs_17%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_17%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_17%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_17%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_17%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_17%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_17%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_17%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_17%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_17%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_17%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_17%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_17%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_17%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_17%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_17%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_17%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_17%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_17%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_17%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_17%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_17%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_17%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_17%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_17%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_17%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_17%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_17%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_17%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_17%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_17%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_17%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_17%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_17%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_17%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_17%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_17%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_17%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_17%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_17%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_17%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_17%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_17%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_17%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_17%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_17%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_17%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_17%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_17%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_17%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_17%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_17%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_17%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_17%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_17%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_17%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_17%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_17%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_17%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_17%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_17%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_17%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_17%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_17%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_17%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_17%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_17%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_17%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_17%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_17:
   end subroutine reconstruct_d17
!---#] subroutine reconstruct_d17:
end module     p12_sbars_epnemumnmubarg_d17h5l1d
