module     p5_usbar_epnebbbarg_d296h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d296h2l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d296
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd296h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd296
      complex(ki) :: brack
      acd296(1)=abb296(22)
      brack=acd296(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd296h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd296
      complex(ki) :: brack
      acd296(1)=k1(iv1)
      acd296(2)=abb296(67)
      acd296(3)=k2(iv1)
      acd296(4)=abb296(17)
      acd296(5)=l5(iv1)
      acd296(6)=l6(iv1)
      acd296(7)=k7(iv1)
      acd296(8)=abb296(63)
      acd296(9)=e7(iv1)
      acd296(10)=abb296(29)
      acd296(11)=spvak2k1(iv1)
      acd296(12)=abb296(18)
      acd296(13)=spvak2l6(iv1)
      acd296(14)=abb296(26)
      acd296(15)=spvak4k3(iv1)
      acd296(16)=abb296(28)
      acd296(17)=spval5k1(iv1)
      acd296(18)=abb296(57)
      acd296(19)=spval5l6(iv1)
      acd296(20)=abb296(66)
      acd296(21)=acd296(6)+acd296(5)-acd296(1)
      acd296(21)=acd296(2)*acd296(21)
      acd296(22)=-acd296(4)*acd296(3)
      acd296(23)=-acd296(8)*acd296(7)
      acd296(24)=-acd296(10)*acd296(9)
      acd296(25)=-acd296(12)*acd296(11)
      acd296(26)=-acd296(14)*acd296(13)
      acd296(27)=-acd296(16)*acd296(15)
      acd296(28)=-acd296(18)*acd296(17)
      acd296(29)=-acd296(20)*acd296(19)
      brack=acd296(21)+acd296(22)+acd296(23)+acd296(24)+acd296(25)+acd296(26)+a&
      &cd296(27)+acd296(28)+acd296(29)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd296h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(91) :: acd296
      complex(ki) :: brack
      acd296(1)=d(iv1,iv2)
      acd296(2)=abb296(61)
      acd296(3)=k1(iv1)
      acd296(4)=k2(iv2)
      acd296(5)=abb296(81)
      acd296(6)=e7(iv2)
      acd296(7)=abb296(72)
      acd296(8)=spvak2l6(iv2)
      acd296(9)=abb296(134)
      acd296(10)=spvak2e7(iv2)
      acd296(11)=abb296(60)
      acd296(12)=k1(iv2)
      acd296(13)=k2(iv1)
      acd296(14)=e7(iv1)
      acd296(15)=spvak2l6(iv1)
      acd296(16)=spvak2e7(iv1)
      acd296(17)=abb296(15)
      acd296(18)=l5(iv2)
      acd296(19)=l6(iv2)
      acd296(20)=k7(iv2)
      acd296(21)=abb296(51)
      acd296(22)=abb296(34)
      acd296(23)=abb296(14)
      acd296(24)=abb296(16)
      acd296(25)=spvak2k1(iv2)
      acd296(26)=abb296(21)
      acd296(27)=spvak4k3(iv2)
      acd296(28)=abb296(39)
      acd296(29)=spval5k1(iv2)
      acd296(30)=abb296(84)
      acd296(31)=spval5l6(iv2)
      acd296(32)=abb296(100)
      acd296(33)=l5(iv1)
      acd296(34)=l6(iv1)
      acd296(35)=k7(iv1)
      acd296(36)=spvak2k1(iv1)
      acd296(37)=spvak4k3(iv1)
      acd296(38)=spval5k1(iv1)
      acd296(39)=spval5l6(iv1)
      acd296(40)=abb296(111)
      acd296(41)=abb296(132)
      acd296(42)=abb296(56)
      acd296(43)=abb296(47)
      acd296(44)=abb296(97)
      acd296(45)=abb296(74)
      acd296(46)=abb296(19)
      acd296(47)=abb296(23)
      acd296(48)=abb296(41)
      acd296(49)=abb296(94)
      acd296(50)=spvak2k7(iv2)
      acd296(51)=abb296(9)
      acd296(52)=spvak2k7(iv1)
      acd296(53)=abb296(33)
      acd296(54)=abb296(82)
      acd296(55)=spval5k2(iv2)
      acd296(56)=abb296(38)
      acd296(57)=spval5e7(iv2)
      acd296(58)=abb296(83)
      acd296(59)=spval5k2(iv1)
      acd296(60)=spval5e7(iv1)
      acd296(61)=abb296(27)
      acd296(62)=abb296(71)
      acd296(63)=abb296(24)
      acd296(64)=abb296(45)
      acd296(65)=abb296(93)
      acd296(66)=abb296(112)
      acd296(67)=spvak1l6(iv2)
      acd296(68)=abb296(32)
      acd296(69)=spvak4l6(iv2)
      acd296(70)=abb296(92)
      acd296(71)=spvak7l6(iv2)
      acd296(72)=abb296(110)
      acd296(73)=spvak1l6(iv1)
      acd296(74)=spvak4l6(iv1)
      acd296(75)=spvak7l6(iv1)
      acd296(76)=acd296(72)*acd296(71)
      acd296(77)=acd296(70)*acd296(69)
      acd296(78)=acd296(68)*acd296(67)
      acd296(79)=acd296(19)*acd296(40)
      acd296(80)=acd296(31)*acd296(66)
      acd296(81)=acd296(20)*acd296(43)
      acd296(82)=acd296(27)*acd296(64)
      acd296(83)=acd296(10)*acd296(62)
      acd296(84)=acd296(8)*acd296(54)
      acd296(85)=acd296(6)*acd296(48)
      acd296(76)=acd296(85)+acd296(84)+acd296(83)+acd296(82)+acd296(81)+acd296(&
      &80)+acd296(79)+acd296(78)+acd296(76)+acd296(77)
      acd296(76)=acd296(38)*acd296(76)
      acd296(77)=acd296(72)*acd296(75)
      acd296(78)=acd296(70)*acd296(74)
      acd296(79)=acd296(68)*acd296(73)
      acd296(80)=acd296(34)*acd296(40)
      acd296(81)=acd296(39)*acd296(66)
      acd296(82)=acd296(35)*acd296(43)
      acd296(83)=acd296(37)*acd296(64)
      acd296(84)=acd296(16)*acd296(62)
      acd296(85)=acd296(15)*acd296(54)
      acd296(86)=acd296(14)*acd296(48)
      acd296(77)=acd296(86)+acd296(85)+acd296(84)+acd296(83)+acd296(82)+acd296(&
      &81)+acd296(80)+acd296(79)+acd296(77)+acd296(78)
      acd296(77)=acd296(29)*acd296(77)
      acd296(78)=acd296(26)*acd296(36)
      acd296(79)=acd296(39)*acd296(32)
      acd296(80)=acd296(35)*acd296(21)
      acd296(81)=acd296(33)+acd296(34)-acd296(3)
      acd296(82)=-acd296(5)*acd296(81)
      acd296(83)=acd296(37)*acd296(28)
      acd296(84)=acd296(16)*acd296(24)
      acd296(85)=acd296(15)*acd296(23)
      acd296(86)=acd296(14)*acd296(22)
      acd296(87)=acd296(38)*acd296(30)
      acd296(88)=acd296(13)*acd296(17)
      acd296(79)=2.0_ki*acd296(88)+acd296(87)+acd296(86)+acd296(85)+acd296(84)+&
      &acd296(83)+acd296(82)+acd296(80)+acd296(78)+acd296(79)
      acd296(79)=acd296(4)*acd296(79)
      acd296(80)=acd296(25)*acd296(26)
      acd296(82)=acd296(31)*acd296(32)
      acd296(83)=acd296(20)*acd296(21)
      acd296(84)=acd296(18)+acd296(19)-acd296(12)
      acd296(85)=-acd296(5)*acd296(84)
      acd296(86)=acd296(27)*acd296(28)
      acd296(87)=acd296(10)*acd296(24)
      acd296(88)=acd296(8)*acd296(23)
      acd296(89)=acd296(6)*acd296(22)
      acd296(90)=acd296(29)*acd296(30)
      acd296(82)=acd296(90)+acd296(89)+acd296(88)+acd296(87)+acd296(86)+acd296(&
      &85)+acd296(83)+acd296(80)+acd296(82)
      acd296(82)=acd296(13)*acd296(82)
      acd296(83)=acd296(56)*acd296(59)
      acd296(85)=acd296(58)*acd296(60)
      acd296(86)=acd296(35)*acd296(41)
      acd296(87)=-acd296(9)*acd296(81)
      acd296(88)=acd296(37)*acd296(53)
      acd296(89)=acd296(14)*acd296(45)
      acd296(83)=acd296(89)+acd296(88)+acd296(87)+acd296(86)+acd296(83)+acd296(&
      &85)
      acd296(83)=acd296(8)*acd296(83)
      acd296(85)=acd296(51)*acd296(52)
      acd296(86)=acd296(36)*acd296(46)
      acd296(87)=acd296(39)*acd296(49)
      acd296(88)=acd296(7)*acd296(81)
      acd296(89)=acd296(37)*acd296(47)
      acd296(90)=acd296(15)*acd296(45)
      acd296(85)=acd296(90)+acd296(89)+acd296(88)+acd296(87)+acd296(85)+acd296(&
      &86)
      acd296(85)=acd296(6)*acd296(85)
      acd296(86)=acd296(56)*acd296(55)
      acd296(87)=acd296(58)*acd296(57)
      acd296(88)=acd296(20)*acd296(41)
      acd296(89)=-acd296(9)*acd296(84)
      acd296(90)=acd296(27)*acd296(53)
      acd296(86)=acd296(90)+acd296(89)+acd296(88)+acd296(86)+acd296(87)
      acd296(86)=acd296(15)*acd296(86)
      acd296(87)=acd296(51)*acd296(50)
      acd296(88)=acd296(25)*acd296(46)
      acd296(89)=acd296(31)*acd296(49)
      acd296(90)=acd296(7)*acd296(84)
      acd296(91)=acd296(27)*acd296(47)
      acd296(87)=acd296(91)+acd296(90)+acd296(89)+acd296(87)+acd296(88)
      acd296(87)=acd296(14)*acd296(87)
      acd296(88)=-acd296(31)*acd296(58)
      acd296(89)=acd296(20)*acd296(42)
      acd296(84)=-acd296(11)*acd296(84)
      acd296(90)=acd296(27)*acd296(61)
      acd296(84)=acd296(90)+acd296(84)+acd296(88)+acd296(89)
      acd296(84)=acd296(16)*acd296(84)
      acd296(88)=-acd296(39)*acd296(58)
      acd296(89)=acd296(35)*acd296(42)
      acd296(81)=-acd296(11)*acd296(81)
      acd296(90)=acd296(37)*acd296(61)
      acd296(81)=acd296(90)+acd296(81)+acd296(88)+acd296(89)
      acd296(81)=acd296(10)*acd296(81)
      acd296(88)=acd296(31)*acd296(44)
      acd296(80)=acd296(88)-acd296(80)
      acd296(80)=acd296(35)*acd296(80)
      acd296(88)=acd296(39)*acd296(44)
      acd296(78)=-acd296(78)+acd296(88)
      acd296(78)=acd296(20)*acd296(78)
      acd296(88)=acd296(25)*acd296(63)
      acd296(89)=acd296(31)*acd296(65)
      acd296(88)=acd296(88)+acd296(89)
      acd296(88)=acd296(37)*acd296(88)
      acd296(89)=acd296(36)*acd296(63)
      acd296(90)=acd296(39)*acd296(65)
      acd296(89)=acd296(89)+acd296(90)
      acd296(89)=acd296(27)*acd296(89)
      acd296(90)=acd296(1)*acd296(2)
      brack=acd296(76)+acd296(77)+acd296(78)+acd296(79)+acd296(80)+acd296(81)+a&
      &cd296(82)+acd296(83)+acd296(84)+acd296(85)+acd296(86)+acd296(87)+acd296(&
      &88)+acd296(89)+2.0_ki*acd296(90)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd296h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(133) :: acd296
      complex(ki) :: brack
      acd296(1)=d(iv1,iv2)
      acd296(2)=k2(iv3)
      acd296(3)=abb296(53)
      acd296(4)=e7(iv3)
      acd296(5)=abb296(44)
      acd296(6)=spvak2k1(iv3)
      acd296(7)=abb296(20)
      acd296(8)=spvak2l6(iv3)
      acd296(9)=abb296(91)
      acd296(10)=spval5k1(iv3)
      acd296(11)=abb296(46)
      acd296(12)=spval5l6(iv3)
      acd296(13)=abb296(105)
      acd296(14)=spvak2e7(iv3)
      acd296(15)=abb296(10)
      acd296(16)=d(iv1,iv3)
      acd296(17)=k2(iv2)
      acd296(18)=e7(iv2)
      acd296(19)=spvak2k1(iv2)
      acd296(20)=spvak2l6(iv2)
      acd296(21)=spval5k1(iv2)
      acd296(22)=spval5l6(iv2)
      acd296(23)=spvak2e7(iv2)
      acd296(24)=d(iv2,iv3)
      acd296(25)=k2(iv1)
      acd296(26)=e7(iv1)
      acd296(27)=spvak2k1(iv1)
      acd296(28)=spvak2l6(iv1)
      acd296(29)=spval5k1(iv1)
      acd296(30)=spval5l6(iv1)
      acd296(31)=spvak2e7(iv1)
      acd296(32)=k1(iv1)
      acd296(33)=abb296(95)
      acd296(34)=spvak2k3(iv3)
      acd296(35)=abb296(8)
      acd296(36)=spvak2k3(iv2)
      acd296(37)=k1(iv2)
      acd296(38)=spvak2k3(iv1)
      acd296(39)=k1(iv3)
      acd296(40)=abb296(70)
      acd296(41)=abb296(114)
      acd296(42)=abb296(102)
      acd296(43)=abb296(31)
      acd296(44)=spvak4k3(iv3)
      acd296(45)=abb296(48)
      acd296(46)=spvak4k3(iv2)
      acd296(47)=spval5e7(iv3)
      acd296(48)=abb296(90)
      acd296(49)=spval5e7(iv2)
      acd296(50)=abb296(107)
      acd296(51)=abb296(127)
      acd296(52)=spvak4l6(iv3)
      acd296(53)=abb296(119)
      acd296(54)=spvae7l6(iv3)
      acd296(55)=abb296(101)
      acd296(56)=spvak4l6(iv2)
      acd296(57)=spvae7l6(iv2)
      acd296(58)=abb296(126)
      acd296(59)=spvak4k3(iv1)
      acd296(60)=spval5e7(iv1)
      acd296(61)=spvak4l6(iv1)
      acd296(62)=spvae7l6(iv1)
      acd296(63)=l5(iv1)
      acd296(64)=l5(iv2)
      acd296(65)=l5(iv3)
      acd296(66)=l6(iv1)
      acd296(67)=l6(iv2)
      acd296(68)=l6(iv3)
      acd296(69)=k7(iv1)
      acd296(70)=k7(iv2)
      acd296(71)=k7(iv3)
      acd296(72)=abb296(25)
      acd296(73)=abb296(13)
      acd296(74)=abb296(30)
      acd296(75)=spval5k2(iv3)
      acd296(76)=abb296(96)
      acd296(77)=spval5k3(iv3)
      acd296(78)=abb296(80)
      acd296(79)=spval5k7(iv3)
      acd296(80)=abb296(65)
      acd296(81)=spval5k2(iv2)
      acd296(82)=spval5k3(iv2)
      acd296(83)=spval5k7(iv2)
      acd296(84)=abb296(85)
      acd296(85)=abb296(64)
      acd296(86)=abb296(118)
      acd296(87)=spvak1l6(iv3)
      acd296(88)=spvak2k7(iv3)
      acd296(89)=abb296(116)
      acd296(90)=spvak7l6(iv3)
      acd296(91)=abb296(117)
      acd296(92)=spvak1l6(iv2)
      acd296(93)=spvak2k7(iv2)
      acd296(94)=spvak7l6(iv2)
      acd296(95)=abb296(124)
      acd296(96)=spval5k2(iv1)
      acd296(97)=spval5k3(iv1)
      acd296(98)=spval5k7(iv1)
      acd296(99)=spvak1l6(iv1)
      acd296(100)=spvak2k7(iv1)
      acd296(101)=spvak7l6(iv1)
      acd296(102)=abb296(121)
      acd296(103)=abb296(54)
      acd296(104)=abb296(129)
      acd296(105)=abb296(128)
      acd296(106)=abb296(12)
      acd296(107)=-acd296(68)+acd296(2)
      acd296(107)=acd296(41)*acd296(107)
      acd296(108)=acd296(91)*acd296(90)
      acd296(109)=acd296(89)*acd296(88)
      acd296(110)=acd296(52)*acd296(86)
      acd296(111)=acd296(76)*acd296(87)
      acd296(112)=acd296(34)*acd296(85)
      acd296(113)=acd296(12)*acd296(84)
      acd296(114)=acd296(8)*acd296(73)
      acd296(107)=-acd296(111)+acd296(112)+acd296(113)+acd296(108)+acd296(114)+&
      &acd296(109)+acd296(110)+acd296(107)
      acd296(108)=-acd296(21)*acd296(107)
      acd296(109)=acd296(17)-acd296(67)
      acd296(109)=acd296(109)*acd296(41)
      acd296(110)=acd296(91)*acd296(94)
      acd296(111)=acd296(89)*acd296(93)
      acd296(112)=acd296(56)*acd296(86)
      acd296(113)=acd296(76)*acd296(92)
      acd296(114)=acd296(36)*acd296(85)
      acd296(115)=acd296(22)*acd296(84)
      acd296(116)=acd296(20)*acd296(73)
      acd296(109)=acd296(116)+acd296(112)-acd296(113)+acd296(114)+acd296(115)+a&
      &cd296(109)+acd296(110)+acd296(111)
      acd296(110)=-acd296(10)*acd296(109)
      acd296(111)=acd296(80)*acd296(79)
      acd296(112)=acd296(78)*acd296(77)
      acd296(113)=acd296(76)*acd296(75)
      acd296(114)=acd296(65)+acd296(68)-acd296(39)
      acd296(115)=acd296(114)*acd296(33)
      acd296(116)=acd296(44)*acd296(74)
      acd296(117)=acd296(2)*acd296(40)
      acd296(111)=-acd296(115)+acd296(111)-acd296(116)-acd296(117)+acd296(112)+&
      &acd296(113)
      acd296(112)=acd296(20)*acd296(111)
      acd296(113)=acd296(80)*acd296(83)
      acd296(115)=acd296(78)*acd296(82)
      acd296(116)=acd296(76)*acd296(81)
      acd296(117)=acd296(46)*acd296(74)
      acd296(118)=acd296(17)*acd296(40)
      acd296(119)=acd296(64)+acd296(67)-acd296(37)
      acd296(120)=acd296(119)*acd296(33)
      acd296(113)=-acd296(117)+acd296(113)-acd296(118)-acd296(120)+acd296(115)+&
      &acd296(116)
      acd296(115)=acd296(8)*acd296(113)
      acd296(116)=acd296(34)*acd296(43)
      acd296(117)=acd296(12)*acd296(42)
      acd296(118)=acd296(44)*acd296(45)
      acd296(116)=acd296(118)+acd296(116)+acd296(117)
      acd296(117)=-acd296(17)*acd296(116)
      acd296(118)=acd296(36)*acd296(43)
      acd296(120)=acd296(22)*acd296(42)
      acd296(121)=acd296(46)*acd296(45)
      acd296(118)=acd296(121)+acd296(118)+acd296(120)
      acd296(120)=-acd296(2)*acd296(118)
      acd296(121)=-acd296(36)*acd296(114)
      acd296(122)=-acd296(34)*acd296(119)
      acd296(121)=acd296(121)+acd296(122)
      acd296(121)=acd296(35)*acd296(121)
      acd296(122)=acd296(80)*acd296(88)
      acd296(123)=acd296(34)*acd296(78)
      acd296(122)=acd296(122)+acd296(123)
      acd296(123)=-acd296(22)*acd296(122)
      acd296(124)=acd296(80)*acd296(93)
      acd296(125)=acd296(36)*acd296(78)
      acd296(124)=acd296(124)+acd296(125)
      acd296(125)=-acd296(12)*acd296(124)
      acd296(126)=acd296(72)*acd296(6)
      acd296(127)=acd296(12)*acd296(95)
      acd296(126)=acd296(126)+acd296(127)
      acd296(127)=-acd296(46)*acd296(126)
      acd296(128)=acd296(72)*acd296(19)
      acd296(129)=acd296(22)*acd296(95)
      acd296(128)=acd296(128)+acd296(129)
      acd296(129)=-acd296(44)*acd296(128)
      acd296(130)=2.0_ki*acd296(24)
      acd296(131)=-acd296(5)*acd296(130)
      acd296(108)=acd296(110)+acd296(108)+acd296(115)+acd296(112)+acd296(120)+a&
      &cd296(117)+acd296(129)+acd296(127)+acd296(125)+acd296(123)+acd296(131)+a&
      &cd296(121)
      acd296(108)=acd296(26)*acd296(108)
      acd296(107)=-acd296(29)*acd296(107)
      acd296(110)=acd296(25)-acd296(66)
      acd296(110)=acd296(110)*acd296(41)
      acd296(112)=acd296(91)*acd296(101)
      acd296(115)=acd296(89)*acd296(100)
      acd296(117)=acd296(61)*acd296(86)
      acd296(120)=acd296(76)*acd296(99)
      acd296(121)=acd296(38)*acd296(85)
      acd296(123)=acd296(30)*acd296(84)
      acd296(125)=acd296(28)*acd296(73)
      acd296(110)=acd296(125)+acd296(117)-acd296(120)+acd296(121)+acd296(123)+a&
      &cd296(110)+acd296(112)+acd296(115)
      acd296(112)=-acd296(10)*acd296(110)
      acd296(111)=acd296(28)*acd296(111)
      acd296(115)=acd296(80)*acd296(98)
      acd296(117)=acd296(78)*acd296(97)
      acd296(120)=acd296(76)*acd296(96)
      acd296(121)=acd296(59)*acd296(74)
      acd296(123)=acd296(25)*acd296(40)
      acd296(125)=acd296(63)+acd296(66)-acd296(32)
      acd296(127)=acd296(125)*acd296(33)
      acd296(115)=-acd296(121)+acd296(115)-acd296(123)-acd296(127)+acd296(117)+&
      &acd296(120)
      acd296(117)=acd296(8)*acd296(115)
      acd296(116)=-acd296(25)*acd296(116)
      acd296(120)=acd296(38)*acd296(43)
      acd296(121)=acd296(30)*acd296(42)
      acd296(123)=acd296(59)*acd296(45)
      acd296(120)=acd296(123)+acd296(120)+acd296(121)
      acd296(121)=-acd296(2)*acd296(120)
      acd296(114)=-acd296(38)*acd296(114)
      acd296(123)=-acd296(34)*acd296(125)
      acd296(114)=acd296(114)+acd296(123)
      acd296(114)=acd296(35)*acd296(114)
      acd296(122)=-acd296(30)*acd296(122)
      acd296(123)=acd296(80)*acd296(100)
      acd296(127)=acd296(38)*acd296(78)
      acd296(123)=acd296(123)+acd296(127)
      acd296(127)=-acd296(12)*acd296(123)
      acd296(126)=-acd296(59)*acd296(126)
      acd296(129)=acd296(72)*acd296(27)
      acd296(131)=acd296(30)*acd296(95)
      acd296(129)=acd296(129)+acd296(131)
      acd296(131)=-acd296(44)*acd296(129)
      acd296(132)=2.0_ki*acd296(16)
      acd296(133)=-acd296(5)*acd296(132)
      acd296(107)=acd296(112)+acd296(107)+acd296(117)+acd296(111)+acd296(121)+a&
      &cd296(116)+acd296(131)+acd296(126)+acd296(127)+acd296(122)+acd296(133)+a&
      &cd296(114)
      acd296(107)=acd296(18)*acd296(107)
      acd296(109)=-acd296(29)*acd296(109)
      acd296(110)=-acd296(21)*acd296(110)
      acd296(111)=acd296(28)*acd296(113)
      acd296(112)=acd296(20)*acd296(115)
      acd296(113)=-acd296(25)*acd296(118)
      acd296(114)=-acd296(17)*acd296(120)
      acd296(115)=-acd296(38)*acd296(119)
      acd296(116)=-acd296(36)*acd296(125)
      acd296(115)=acd296(115)+acd296(116)
      acd296(115)=acd296(35)*acd296(115)
      acd296(116)=-acd296(30)*acd296(124)
      acd296(117)=-acd296(22)*acd296(123)
      acd296(118)=-acd296(59)*acd296(128)
      acd296(119)=-acd296(46)*acd296(129)
      acd296(120)=2.0_ki*acd296(1)
      acd296(121)=-acd296(5)*acd296(120)
      acd296(109)=acd296(110)+acd296(109)+acd296(112)+acd296(111)+acd296(114)+a&
      &cd296(113)+acd296(119)+acd296(118)+acd296(117)+acd296(116)+acd296(121)+a&
      &cd296(115)
      acd296(109)=acd296(4)*acd296(109)
      acd296(110)=acd296(55)*acd296(54)
      acd296(111)=acd296(53)*acd296(52)
      acd296(112)=acd296(44)*acd296(51)
      acd296(113)=acd296(14)*acd296(50)
      acd296(110)=acd296(111)+acd296(110)+acd296(112)+acd296(113)
      acd296(111)=-acd296(17)*acd296(110)
      acd296(112)=acd296(55)*acd296(57)
      acd296(114)=acd296(53)*acd296(56)
      acd296(115)=acd296(46)*acd296(51)
      acd296(116)=acd296(23)*acd296(50)
      acd296(112)=acd296(112)+acd296(114)+acd296(115)+acd296(116)
      acd296(114)=-acd296(2)*acd296(112)
      acd296(115)=acd296(106)*acd296(90)
      acd296(117)=acd296(54)*acd296(105)
      acd296(118)=acd296(14)*acd296(104)
      acd296(115)=acd296(118)+acd296(115)+acd296(117)
      acd296(117)=-acd296(46)*acd296(115)
      acd296(118)=acd296(106)*acd296(94)
      acd296(119)=acd296(57)*acd296(105)
      acd296(121)=acd296(23)*acd296(104)
      acd296(118)=acd296(121)+acd296(118)+acd296(119)
      acd296(119)=-acd296(44)*acd296(118)
      acd296(121)=acd296(71)*acd296(57)
      acd296(122)=acd296(70)*acd296(54)
      acd296(121)=acd296(121)+acd296(122)
      acd296(121)=acd296(55)*acd296(121)
      acd296(122)=acd296(71)*acd296(56)
      acd296(123)=acd296(70)*acd296(52)
      acd296(122)=acd296(122)+acd296(123)
      acd296(122)=acd296(53)*acd296(122)
      acd296(123)=-acd296(11)*acd296(130)
      acd296(124)=acd296(71)*acd296(116)
      acd296(125)=acd296(70)*acd296(113)
      acd296(111)=acd296(114)+acd296(111)+acd296(119)+acd296(117)+acd296(125)+a&
      &cd296(124)+acd296(122)+acd296(123)+acd296(121)
      acd296(111)=acd296(29)*acd296(111)
      acd296(110)=-acd296(25)*acd296(110)
      acd296(114)=acd296(55)*acd296(62)
      acd296(117)=acd296(53)*acd296(61)
      acd296(119)=acd296(59)*acd296(51)
      acd296(121)=acd296(31)*acd296(50)
      acd296(114)=acd296(114)+acd296(117)+acd296(119)+acd296(121)
      acd296(117)=-acd296(2)*acd296(114)
      acd296(115)=-acd296(59)*acd296(115)
      acd296(119)=acd296(106)*acd296(101)
      acd296(122)=acd296(62)*acd296(105)
      acd296(123)=acd296(31)*acd296(104)
      acd296(119)=acd296(123)+acd296(119)+acd296(122)
      acd296(122)=-acd296(44)*acd296(119)
      acd296(123)=acd296(71)*acd296(62)
      acd296(124)=acd296(69)*acd296(54)
      acd296(123)=acd296(123)+acd296(124)
      acd296(123)=acd296(55)*acd296(123)
      acd296(124)=acd296(71)*acd296(61)
      acd296(125)=acd296(69)*acd296(52)
      acd296(124)=acd296(124)+acd296(125)
      acd296(124)=acd296(53)*acd296(124)
      acd296(125)=-acd296(11)*acd296(132)
      acd296(126)=acd296(71)*acd296(121)
      acd296(113)=acd296(69)*acd296(113)
      acd296(110)=acd296(117)+acd296(110)+acd296(122)+acd296(115)+acd296(113)+a&
      &cd296(126)+acd296(124)+acd296(125)+acd296(123)
      acd296(110)=acd296(21)*acd296(110)
      acd296(112)=-acd296(25)*acd296(112)
      acd296(113)=-acd296(17)*acd296(114)
      acd296(114)=-acd296(59)*acd296(118)
      acd296(115)=-acd296(46)*acd296(119)
      acd296(117)=acd296(70)*acd296(62)
      acd296(118)=acd296(69)*acd296(57)
      acd296(117)=acd296(117)+acd296(118)
      acd296(117)=acd296(55)*acd296(117)
      acd296(118)=acd296(70)*acd296(61)
      acd296(119)=acd296(69)*acd296(56)
      acd296(118)=acd296(118)+acd296(119)
      acd296(118)=acd296(53)*acd296(118)
      acd296(119)=-acd296(11)*acd296(120)
      acd296(121)=acd296(70)*acd296(121)
      acd296(116)=acd296(69)*acd296(116)
      acd296(112)=acd296(113)+acd296(112)+acd296(115)+acd296(114)+acd296(116)+a&
      &cd296(121)+acd296(118)+acd296(119)+acd296(117)
      acd296(112)=acd296(10)*acd296(112)
      acd296(113)=-acd296(7)*acd296(27)
      acd296(114)=-acd296(31)*acd296(15)
      acd296(115)=-acd296(30)*acd296(13)
      acd296(113)=acd296(115)+acd296(114)+acd296(113)
      acd296(113)=acd296(24)*acd296(113)
      acd296(114)=-acd296(7)*acd296(19)
      acd296(115)=-acd296(23)*acd296(15)
      acd296(116)=-acd296(22)*acd296(13)
      acd296(114)=acd296(116)+acd296(115)+acd296(114)
      acd296(114)=acd296(16)*acd296(114)
      acd296(115)=-acd296(6)*acd296(7)
      acd296(116)=-acd296(14)*acd296(15)
      acd296(117)=-acd296(12)*acd296(13)
      acd296(115)=acd296(117)+acd296(116)+acd296(115)
      acd296(115)=acd296(1)*acd296(115)
      acd296(113)=acd296(115)+acd296(114)+acd296(113)
      acd296(114)=acd296(17)-acd296(70)
      acd296(115)=acd296(47)*acd296(114)
      acd296(116)=-acd296(71)*acd296(49)
      acd296(115)=acd296(116)+acd296(115)
      acd296(115)=acd296(48)*acd296(115)
      acd296(116)=acd296(103)*acd296(75)
      acd296(117)=acd296(102)*acd296(47)
      acd296(116)=acd296(116)+acd296(117)
      acd296(117)=-acd296(46)*acd296(116)
      acd296(118)=acd296(103)*acd296(81)
      acd296(119)=acd296(102)*acd296(49)
      acd296(118)=acd296(118)+acd296(119)
      acd296(119)=-acd296(44)*acd296(118)
      acd296(121)=-acd296(9)*acd296(130)
      acd296(122)=acd296(2)*acd296(48)
      acd296(123)=acd296(49)*acd296(122)
      acd296(115)=acd296(123)+acd296(119)+acd296(117)+acd296(121)+acd296(115)
      acd296(115)=acd296(28)*acd296(115)
      acd296(117)=acd296(25)-acd296(69)
      acd296(119)=acd296(47)*acd296(117)
      acd296(121)=-acd296(71)*acd296(60)
      acd296(119)=acd296(121)+acd296(119)
      acd296(119)=acd296(48)*acd296(119)
      acd296(116)=-acd296(59)*acd296(116)
      acd296(121)=acd296(103)*acd296(96)
      acd296(123)=acd296(102)*acd296(60)
      acd296(121)=acd296(121)+acd296(123)
      acd296(123)=-acd296(44)*acd296(121)
      acd296(124)=-acd296(9)*acd296(132)
      acd296(122)=acd296(60)*acd296(122)
      acd296(116)=acd296(122)+acd296(123)+acd296(124)+acd296(116)+acd296(119)
      acd296(116)=acd296(20)*acd296(116)
      acd296(119)=acd296(22)*acd296(14)
      acd296(122)=acd296(12)*acd296(23)
      acd296(119)=acd296(119)+acd296(122)
      acd296(122)=acd296(59)*acd296(119)
      acd296(123)=acd296(30)*acd296(14)
      acd296(124)=acd296(12)*acd296(31)
      acd296(123)=acd296(123)+acd296(124)
      acd296(124)=acd296(46)*acd296(123)
      acd296(125)=acd296(30)*acd296(23)
      acd296(126)=acd296(22)*acd296(31)
      acd296(125)=acd296(125)+acd296(126)
      acd296(126)=acd296(44)*acd296(125)
      acd296(122)=acd296(126)+acd296(124)+acd296(122)
      acd296(122)=acd296(102)*acd296(122)
      acd296(124)=acd296(23)*acd296(71)
      acd296(126)=acd296(14)*acd296(70)
      acd296(124)=acd296(124)+acd296(126)
      acd296(124)=acd296(30)*acd296(124)
      acd296(126)=acd296(31)*acd296(71)
      acd296(127)=acd296(14)*acd296(69)
      acd296(126)=acd296(126)+acd296(127)
      acd296(126)=acd296(22)*acd296(126)
      acd296(127)=acd296(31)*acd296(70)
      acd296(128)=acd296(23)*acd296(69)
      acd296(127)=acd296(127)+acd296(128)
      acd296(127)=acd296(12)*acd296(127)
      acd296(124)=acd296(127)+acd296(124)+acd296(126)
      acd296(124)=acd296(48)*acd296(124)
      acd296(114)=acd296(60)*acd296(114)
      acd296(117)=acd296(49)*acd296(117)
      acd296(114)=acd296(117)+acd296(114)
      acd296(114)=acd296(48)*acd296(114)
      acd296(117)=-acd296(59)*acd296(118)
      acd296(118)=-acd296(46)*acd296(121)
      acd296(121)=-acd296(9)*acd296(120)
      acd296(114)=acd296(118)+acd296(121)+acd296(117)+acd296(114)
      acd296(114)=acd296(8)*acd296(114)
      acd296(117)=-acd296(46)*acd296(12)
      acd296(118)=-acd296(44)*acd296(22)
      acd296(117)=acd296(118)+acd296(117)
      acd296(117)=acd296(58)*acd296(117)
      acd296(118)=-acd296(48)*acd296(119)
      acd296(119)=-acd296(3)*acd296(130)
      acd296(117)=acd296(119)+acd296(118)+acd296(117)
      acd296(117)=acd296(25)*acd296(117)
      acd296(118)=-acd296(59)*acd296(12)
      acd296(119)=-acd296(44)*acd296(30)
      acd296(118)=acd296(119)+acd296(118)
      acd296(118)=acd296(58)*acd296(118)
      acd296(119)=-acd296(48)*acd296(123)
      acd296(121)=-acd296(3)*acd296(132)
      acd296(118)=acd296(119)+acd296(121)+acd296(118)
      acd296(118)=acd296(17)*acd296(118)
      acd296(119)=-acd296(59)*acd296(22)
      acd296(121)=-acd296(46)*acd296(30)
      acd296(119)=acd296(121)+acd296(119)
      acd296(119)=acd296(58)*acd296(119)
      acd296(121)=-acd296(48)*acd296(125)
      acd296(120)=-acd296(3)*acd296(120)
      acd296(119)=acd296(121)+acd296(120)+acd296(119)
      acd296(119)=acd296(2)*acd296(119)
      brack=acd296(107)+acd296(108)+acd296(109)+acd296(110)+acd296(111)+acd296(&
      &112)+2.0_ki*acd296(113)+acd296(114)+acd296(115)+acd296(116)+acd296(117)+&
      &acd296(118)+acd296(119)+acd296(122)+acd296(124)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd296h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd296
      complex(ki) :: brack
      acd296(1)=d(iv1,iv2)
      acd296(2)=e7(iv3)
      acd296(3)=spvak2k3(iv4)
      acd296(4)=abb296(49)
      acd296(5)=spvak2l6(iv4)
      acd296(6)=abb296(98)
      acd296(7)=e7(iv4)
      acd296(8)=spvak2k3(iv3)
      acd296(9)=spvak2l6(iv3)
      acd296(10)=spval5e7(iv4)
      acd296(11)=abb296(104)
      acd296(12)=spval5e7(iv3)
      acd296(13)=spvak4l6(iv3)
      acd296(14)=spval5k1(iv4)
      acd296(15)=abb296(120)
      acd296(16)=spvak4l6(iv4)
      acd296(17)=spval5k1(iv3)
      acd296(18)=spvak2e7(iv4)
      acd296(19)=abb296(115)
      acd296(20)=spvae7l6(iv4)
      acd296(21)=abb296(87)
      acd296(22)=spvak2e7(iv3)
      acd296(23)=spvae7l6(iv3)
      acd296(24)=spval5l6(iv4)
      acd296(25)=spval5l6(iv3)
      acd296(26)=d(iv1,iv3)
      acd296(27)=e7(iv2)
      acd296(28)=spvak2k3(iv2)
      acd296(29)=spvak2l6(iv2)
      acd296(30)=spval5e7(iv2)
      acd296(31)=spvak4l6(iv2)
      acd296(32)=spval5k1(iv2)
      acd296(33)=spvak2e7(iv2)
      acd296(34)=spvae7l6(iv2)
      acd296(35)=spval5l6(iv2)
      acd296(36)=d(iv1,iv4)
      acd296(37)=d(iv2,iv3)
      acd296(38)=e7(iv1)
      acd296(39)=spvak2k3(iv1)
      acd296(40)=spvak2l6(iv1)
      acd296(41)=spval5e7(iv1)
      acd296(42)=spvak4l6(iv1)
      acd296(43)=spval5k1(iv1)
      acd296(44)=spvak2e7(iv1)
      acd296(45)=spvae7l6(iv1)
      acd296(46)=spval5l6(iv1)
      acd296(47)=d(iv2,iv4)
      acd296(48)=d(iv3,iv4)
      acd296(49)=spvak2k1(iv3)
      acd296(50)=spvak4k3(iv4)
      acd296(51)=abb296(11)
      acd296(52)=spvak2k1(iv4)
      acd296(53)=spvak4k3(iv3)
      acd296(54)=spvak2k1(iv2)
      acd296(55)=spvak4k3(iv2)
      acd296(56)=spvak2k1(iv1)
      acd296(57)=spvak4k3(iv1)
      acd296(58)=acd296(2)*acd296(1)
      acd296(59)=acd296(27)*acd296(26)
      acd296(60)=acd296(38)*acd296(37)
      acd296(58)=acd296(60)+acd296(58)+acd296(59)
      acd296(59)=acd296(5)*acd296(58)
      acd296(60)=acd296(7)*acd296(1)
      acd296(61)=acd296(27)*acd296(36)
      acd296(62)=acd296(38)*acd296(47)
      acd296(60)=acd296(62)+acd296(60)+acd296(61)
      acd296(61)=acd296(9)*acd296(60)
      acd296(62)=acd296(2)*acd296(36)
      acd296(63)=acd296(7)*acd296(26)
      acd296(64)=acd296(38)*acd296(48)
      acd296(62)=acd296(64)+acd296(62)+acd296(63)
      acd296(63)=acd296(29)*acd296(62)
      acd296(64)=acd296(2)*acd296(47)
      acd296(65)=acd296(7)*acd296(37)
      acd296(66)=acd296(27)*acd296(48)
      acd296(64)=acd296(66)+acd296(64)+acd296(65)
      acd296(65)=acd296(40)*acd296(64)
      acd296(59)=acd296(65)+acd296(63)+acd296(59)+acd296(61)
      acd296(59)=acd296(6)*acd296(59)
      acd296(61)=acd296(17)*acd296(1)
      acd296(63)=acd296(32)*acd296(26)
      acd296(61)=acd296(61)+acd296(63)
      acd296(63)=acd296(19)*acd296(61)
      acd296(65)=acd296(1)*acd296(11)
      acd296(66)=acd296(25)*acd296(65)
      acd296(67)=acd296(26)*acd296(11)
      acd296(68)=acd296(35)*acd296(67)
      acd296(69)=acd296(43)*acd296(19)
      acd296(70)=acd296(37)*acd296(69)
      acd296(71)=acd296(37)*acd296(11)
      acd296(72)=acd296(46)*acd296(71)
      acd296(63)=acd296(72)+acd296(70)+acd296(68)+acd296(66)+acd296(63)
      acd296(63)=acd296(18)*acd296(63)
      acd296(66)=acd296(14)*acd296(1)
      acd296(68)=acd296(32)*acd296(36)
      acd296(66)=acd296(66)+acd296(68)
      acd296(68)=acd296(19)*acd296(66)
      acd296(70)=acd296(24)*acd296(65)
      acd296(72)=acd296(36)*acd296(11)
      acd296(73)=acd296(35)*acd296(72)
      acd296(74)=acd296(47)*acd296(69)
      acd296(75)=acd296(47)*acd296(11)
      acd296(76)=acd296(46)*acd296(75)
      acd296(68)=acd296(76)+acd296(74)+acd296(73)+acd296(70)+acd296(68)
      acd296(68)=acd296(22)*acd296(68)
      acd296(70)=acd296(14)*acd296(26)
      acd296(73)=acd296(17)*acd296(36)
      acd296(70)=acd296(70)+acd296(73)
      acd296(73)=acd296(19)*acd296(70)
      acd296(74)=acd296(24)*acd296(67)
      acd296(76)=acd296(25)*acd296(72)
      acd296(69)=acd296(48)*acd296(69)
      acd296(77)=acd296(48)*acd296(11)
      acd296(78)=acd296(46)*acd296(77)
      acd296(69)=acd296(78)+acd296(69)+acd296(76)+acd296(74)+acd296(73)
      acd296(69)=acd296(33)*acd296(69)
      acd296(73)=acd296(14)*acd296(37)
      acd296(74)=acd296(17)*acd296(47)
      acd296(76)=acd296(32)*acd296(48)
      acd296(73)=acd296(76)+acd296(73)+acd296(74)
      acd296(74)=acd296(19)*acd296(73)
      acd296(76)=acd296(24)*acd296(71)
      acd296(78)=acd296(25)*acd296(75)
      acd296(79)=acd296(35)*acd296(77)
      acd296(74)=acd296(79)+acd296(78)+acd296(76)+acd296(74)
      acd296(74)=acd296(44)*acd296(74)
      acd296(58)=acd296(3)*acd296(4)*acd296(58)
      acd296(60)=acd296(8)*acd296(4)*acd296(60)
      acd296(76)=-acd296(9)*acd296(65)
      acd296(78)=-acd296(29)*acd296(67)
      acd296(79)=-acd296(40)*acd296(71)
      acd296(76)=acd296(79)+acd296(76)+acd296(78)
      acd296(76)=acd296(10)*acd296(76)
      acd296(65)=-acd296(5)*acd296(65)
      acd296(78)=-acd296(29)*acd296(72)
      acd296(79)=-acd296(40)*acd296(75)
      acd296(65)=acd296(79)+acd296(65)+acd296(78)
      acd296(65)=acd296(12)*acd296(65)
      acd296(62)=acd296(28)*acd296(4)*acd296(62)
      acd296(67)=-acd296(5)*acd296(67)
      acd296(72)=-acd296(9)*acd296(72)
      acd296(78)=-acd296(40)*acd296(77)
      acd296(67)=acd296(78)+acd296(67)+acd296(72)
      acd296(67)=acd296(30)*acd296(67)
      acd296(64)=acd296(39)*acd296(4)*acd296(64)
      acd296(71)=-acd296(5)*acd296(71)
      acd296(72)=-acd296(9)*acd296(75)
      acd296(75)=-acd296(29)*acd296(77)
      acd296(71)=acd296(75)+acd296(71)+acd296(72)
      acd296(71)=acd296(41)*acd296(71)
      acd296(72)=acd296(42)*acd296(15)*acd296(73)
      acd296(73)=acd296(45)*acd296(21)*acd296(73)
      acd296(75)=acd296(15)*acd296(66)
      acd296(77)=acd296(43)*acd296(15)
      acd296(78)=acd296(47)*acd296(77)
      acd296(75)=acd296(78)+acd296(75)
      acd296(75)=acd296(13)*acd296(75)
      acd296(78)=acd296(15)*acd296(61)
      acd296(79)=acd296(37)*acd296(77)
      acd296(78)=acd296(79)+acd296(78)
      acd296(78)=acd296(16)*acd296(78)
      acd296(61)=acd296(21)*acd296(61)
      acd296(79)=acd296(43)*acd296(21)
      acd296(80)=acd296(37)*acd296(79)
      acd296(61)=acd296(80)+acd296(61)
      acd296(61)=acd296(20)*acd296(61)
      acd296(66)=acd296(21)*acd296(66)
      acd296(80)=acd296(47)*acd296(79)
      acd296(66)=acd296(80)+acd296(66)
      acd296(66)=acd296(23)*acd296(66)
      acd296(80)=acd296(15)*acd296(70)
      acd296(77)=acd296(48)*acd296(77)
      acd296(77)=acd296(77)+acd296(80)
      acd296(77)=acd296(31)*acd296(77)
      acd296(70)=acd296(21)*acd296(70)
      acd296(79)=acd296(48)*acd296(79)
      acd296(70)=acd296(79)+acd296(70)
      acd296(70)=acd296(34)*acd296(70)
      acd296(58)=acd296(73)+acd296(65)+acd296(75)+acd296(78)+acd296(61)+acd296(&
      &58)+acd296(74)+acd296(69)+acd296(68)+acd296(63)+acd296(59)+acd296(60)+ac&
      &d296(76)+acd296(70)+acd296(64)+acd296(71)+acd296(72)+acd296(66)+acd296(6&
      &2)+acd296(67)+acd296(77)
      acd296(59)=acd296(35)*acd296(51)
      acd296(60)=acd296(59)*acd296(2)
      acd296(61)=acd296(25)*acd296(51)
      acd296(62)=acd296(61)*acd296(27)
      acd296(60)=acd296(60)+acd296(62)
      acd296(62)=acd296(50)*acd296(60)
      acd296(63)=acd296(59)*acd296(7)
      acd296(64)=acd296(24)*acd296(51)
      acd296(65)=acd296(64)*acd296(27)
      acd296(63)=acd296(63)+acd296(65)
      acd296(65)=acd296(53)*acd296(63)
      acd296(66)=acd296(61)*acd296(7)
      acd296(67)=acd296(64)*acd296(2)
      acd296(66)=acd296(66)+acd296(67)
      acd296(67)=acd296(55)*acd296(66)
      acd296(62)=acd296(67)+acd296(62)+acd296(65)
      acd296(62)=acd296(56)*acd296(62)
      acd296(63)=acd296(49)*acd296(63)
      acd296(60)=acd296(52)*acd296(60)
      acd296(65)=acd296(54)*acd296(66)
      acd296(60)=acd296(65)+acd296(63)+acd296(60)
      acd296(60)=acd296(57)*acd296(60)
      acd296(63)=acd296(50)*acd296(49)
      acd296(65)=acd296(53)*acd296(52)
      acd296(63)=acd296(65)+acd296(63)
      acd296(65)=acd296(46)*acd296(51)
      acd296(66)=acd296(65)*acd296(27)
      acd296(59)=acd296(59)*acd296(38)
      acd296(59)=acd296(66)+acd296(59)
      acd296(59)=acd296(59)*acd296(63)
      acd296(63)=acd296(65)*acd296(2)
      acd296(61)=acd296(61)*acd296(38)
      acd296(61)=acd296(63)+acd296(61)
      acd296(63)=acd296(50)*acd296(61)
      acd296(65)=acd296(65)*acd296(7)
      acd296(64)=acd296(64)*acd296(38)
      acd296(64)=acd296(65)+acd296(64)
      acd296(65)=acd296(53)*acd296(64)
      acd296(63)=acd296(63)+acd296(65)
      acd296(63)=acd296(54)*acd296(63)
      acd296(64)=acd296(49)*acd296(64)
      acd296(61)=acd296(52)*acd296(61)
      acd296(61)=acd296(64)+acd296(61)
      acd296(61)=acd296(55)*acd296(61)
      brack=2.0_ki*acd296(58)+acd296(59)+acd296(60)+acd296(61)+acd296(62)+acd29&
      &6(63)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd296h2
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
!---#[ subroutine reconstruct_d296:
   subroutine     reconstruct_d296(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_296:
      coeffs%coeffs_296%c0 = derivative(czip)
      coeffs%coeffs_296%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_296%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_296%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_296%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_296%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_296%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_296%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_296%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_296%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_296%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_296%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_296%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_296%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_296%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_296%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_296%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_296%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_296%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_296%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_296%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_296%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_296%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_296%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_296%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_296%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_296%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_296%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_296%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_296%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_296%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_296%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_296%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_296%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_296%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_296%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_296%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_296%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_296%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_296%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_296%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_296%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_296%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_296%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_296%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_296%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_296%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_296%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_296%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_296%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_296%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_296%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_296%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_296%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_296%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_296%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_296%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_296%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_296%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_296%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_296%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_296%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_296%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_296%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_296%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_296%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_296%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_296%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_296%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_296%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_296:
   end subroutine reconstruct_d296
!---#] subroutine reconstruct_d296:
end module     p5_usbar_epnebbbarg_d296h2l1d
