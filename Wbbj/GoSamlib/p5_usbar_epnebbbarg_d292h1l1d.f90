module     p5_usbar_epnebbbarg_d292h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d292h1l1d.f90
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
   public :: derivative , reconstruct_d292
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd292h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd292
      complex(ki) :: brack
      acd292(1)=abb292(26)
      brack=acd292(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd292h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd292
      complex(ki) :: brack
      acd292(1)=k1(iv1)
      acd292(2)=abb292(92)
      acd292(3)=k2(iv1)
      acd292(4)=abb292(30)
      acd292(5)=l5(iv1)
      acd292(6)=abb292(103)
      acd292(7)=l6(iv1)
      acd292(8)=k7(iv1)
      acd292(9)=abb292(93)
      acd292(10)=e7(iv1)
      acd292(11)=abb292(23)
      acd292(12)=spvak2k1(iv1)
      acd292(13)=abb292(20)
      acd292(14)=spvak4k3(iv1)
      acd292(15)=abb292(39)
      acd292(16)=spval5k1(iv1)
      acd292(17)=abb292(84)
      acd292(18)=spval6k1(iv1)
      acd292(19)=abb292(29)
      acd292(20)=spval6l5(iv1)
      acd292(21)=abb292(43)
      acd292(22)=-acd292(7)-acd292(5)
      acd292(22)=acd292(6)*acd292(22)
      acd292(23)=-acd292(2)*acd292(1)
      acd292(24)=-acd292(4)*acd292(3)
      acd292(25)=-acd292(9)*acd292(8)
      acd292(26)=-acd292(11)*acd292(10)
      acd292(27)=-acd292(13)*acd292(12)
      acd292(28)=-acd292(15)*acd292(14)
      acd292(29)=-acd292(17)*acd292(16)
      acd292(30)=-acd292(19)*acd292(18)
      acd292(31)=-acd292(21)*acd292(20)
      brack=acd292(22)+acd292(23)+acd292(24)+acd292(25)+acd292(26)+acd292(27)+a&
      &cd292(28)+acd292(29)+acd292(30)+acd292(31)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd292h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd292
      complex(ki) :: brack
      acd292(1)=d(iv1,iv2)
      acd292(2)=abb292(45)
      acd292(3)=k1(iv1)
      acd292(4)=k2(iv2)
      acd292(5)=abb292(115)
      acd292(6)=k7(iv2)
      acd292(7)=e7(iv2)
      acd292(8)=abb292(102)
      acd292(9)=spvak4k1(iv2)
      acd292(10)=abb292(99)
      acd292(11)=spvak4k3(iv2)
      acd292(12)=abb292(22)
      acd292(13)=spval6k1(iv2)
      acd292(14)=abb292(57)
      acd292(15)=k1(iv2)
      acd292(16)=k2(iv1)
      acd292(17)=k7(iv1)
      acd292(18)=e7(iv1)
      acd292(19)=spvak4k1(iv1)
      acd292(20)=spvak4k3(iv1)
      acd292(21)=spval6k1(iv1)
      acd292(22)=abb292(66)
      acd292(23)=abb292(54)
      acd292(24)=abb292(55)
      acd292(25)=abb292(21)
      acd292(26)=abb292(36)
      acd292(27)=spvak2k1(iv2)
      acd292(28)=abb292(16)
      acd292(29)=spval5k1(iv2)
      acd292(30)=abb292(100)
      acd292(31)=spval6l5(iv2)
      acd292(32)=abb292(71)
      acd292(33)=spvak2k1(iv1)
      acd292(34)=spval5k1(iv1)
      acd292(35)=spval6l5(iv1)
      acd292(36)=l5(iv1)
      acd292(37)=abb292(104)
      acd292(38)=l5(iv2)
      acd292(39)=l6(iv1)
      acd292(40)=abb292(19)
      acd292(41)=l6(iv2)
      acd292(42)=abb292(31)
      acd292(43)=abb292(52)
      acd292(44)=abb292(10)
      acd292(45)=abb292(8)
      acd292(46)=abb292(85)
      acd292(47)=abb292(48)
      acd292(48)=abb292(17)
      acd292(49)=abb292(9)
      acd292(50)=abb292(80)
      acd292(51)=abb292(42)
      acd292(52)=abb292(27)
      acd292(53)=abb292(28)
      acd292(54)=spval6k2(iv2)
      acd292(55)=abb292(25)
      acd292(56)=spval6k3(iv2)
      acd292(57)=abb292(53)
      acd292(58)=spval6k2(iv1)
      acd292(59)=spval6k3(iv1)
      acd292(60)=acd292(30)*acd292(34)
      acd292(61)=acd292(35)*acd292(32)
      acd292(60)=acd292(60)-acd292(61)
      acd292(61)=-2.0_ki*acd292(16)+acd292(17)
      acd292(61)=acd292(22)*acd292(61)
      acd292(62)=acd292(19)*acd292(24)
      acd292(63)=acd292(3)*acd292(5)
      acd292(64)=acd292(20)*acd292(25)
      acd292(65)=acd292(21)*acd292(26)
      acd292(66)=acd292(33)*acd292(28)
      acd292(67)=acd292(18)*acd292(23)
      acd292(61)=acd292(67)+acd292(66)+acd292(65)+acd292(64)+acd292(63)+acd292(&
      &62)+acd292(61)+acd292(60)
      acd292(61)=acd292(4)*acd292(61)
      acd292(62)=-acd292(57)*acd292(56)
      acd292(63)=acd292(55)*acd292(54)
      acd292(64)=acd292(41)*acd292(40)
      acd292(65)=acd292(31)*acd292(53)
      acd292(66)=-acd292(6)*acd292(28)
      acd292(67)=acd292(11)*acd292(49)
      acd292(68)=acd292(13)*acd292(52)
      acd292(62)=acd292(68)+acd292(67)+acd292(66)+acd292(65)+acd292(64)+acd292(&
      &62)+acd292(63)
      acd292(62)=acd292(33)*acd292(62)
      acd292(63)=-acd292(57)*acd292(59)
      acd292(64)=acd292(55)*acd292(58)
      acd292(65)=acd292(39)*acd292(40)
      acd292(66)=acd292(35)*acd292(53)
      acd292(67)=-acd292(17)*acd292(28)
      acd292(68)=acd292(20)*acd292(49)
      acd292(69)=acd292(21)*acd292(52)
      acd292(63)=acd292(69)+acd292(68)+acd292(67)+acd292(66)+acd292(65)+acd292(&
      &63)+acd292(64)
      acd292(63)=acd292(27)*acd292(63)
      acd292(64)=acd292(41)+acd292(38)
      acd292(65)=acd292(37)*acd292(64)
      acd292(66)=acd292(29)*acd292(46)
      acd292(67)=acd292(31)*acd292(47)
      acd292(68)=acd292(15)*acd292(8)
      acd292(69)=acd292(11)*acd292(43)
      acd292(70)=acd292(13)*acd292(44)
      acd292(71)=acd292(27)*acd292(45)
      acd292(65)=acd292(71)+acd292(70)+acd292(69)+acd292(68)+acd292(67)+acd292(&
      &65)+acd292(66)
      acd292(65)=acd292(18)*acd292(65)
      acd292(66)=acd292(39)+acd292(36)
      acd292(67)=acd292(37)*acd292(66)
      acd292(68)=acd292(34)*acd292(46)
      acd292(69)=acd292(35)*acd292(47)
      acd292(70)=acd292(3)*acd292(8)
      acd292(71)=acd292(20)*acd292(43)
      acd292(72)=acd292(21)*acd292(44)
      acd292(73)=acd292(33)*acd292(45)
      acd292(67)=acd292(73)+acd292(72)+acd292(71)+acd292(70)+acd292(69)+acd292(&
      &67)+acd292(68)
      acd292(67)=acd292(7)*acd292(67)
      acd292(68)=acd292(29)*acd292(30)
      acd292(69)=acd292(31)*acd292(32)
      acd292(70)=acd292(15)*acd292(5)
      acd292(68)=acd292(70)+acd292(68)-acd292(69)
      acd292(69)=acd292(9)*acd292(24)
      acd292(70)=acd292(6)*acd292(22)
      acd292(71)=acd292(11)*acd292(25)
      acd292(72)=acd292(13)*acd292(26)
      acd292(73)=acd292(27)*acd292(28)
      acd292(74)=acd292(7)*acd292(23)
      acd292(69)=acd292(74)+acd292(73)+acd292(72)+acd292(71)+acd292(70)+acd292(&
      &69)+acd292(68)
      acd292(69)=acd292(16)*acd292(69)
      acd292(68)=-acd292(17)*acd292(68)
      acd292(70)=acd292(29)*acd292(50)
      acd292(71)=acd292(31)*acd292(51)
      acd292(72)=acd292(15)*acd292(12)
      acd292(70)=acd292(72)+acd292(70)+acd292(71)
      acd292(70)=acd292(20)*acd292(70)
      acd292(71)=acd292(34)*acd292(50)
      acd292(72)=acd292(35)*acd292(51)
      acd292(73)=acd292(3)*acd292(12)
      acd292(71)=acd292(73)+acd292(71)+acd292(72)
      acd292(71)=acd292(11)*acd292(71)
      acd292(64)=acd292(64)-acd292(15)
      acd292(72)=acd292(14)*acd292(64)
      acd292(73)=acd292(6)*acd292(42)
      acd292(74)=acd292(11)*acd292(48)
      acd292(72)=acd292(74)+acd292(72)+acd292(73)
      acd292(72)=acd292(21)*acd292(72)
      acd292(73)=-acd292(3)+acd292(66)
      acd292(73)=acd292(14)*acd292(73)
      acd292(74)=acd292(17)*acd292(42)
      acd292(75)=acd292(20)*acd292(48)
      acd292(73)=acd292(75)+acd292(74)+acd292(73)
      acd292(73)=acd292(13)*acd292(73)
      acd292(64)=-acd292(19)*acd292(64)
      acd292(66)=-acd292(9)*acd292(66)
      acd292(64)=acd292(66)+acd292(64)
      acd292(64)=acd292(10)*acd292(64)
      acd292(60)=-acd292(6)*acd292(60)
      acd292(66)=acd292(10)*acd292(9)
      acd292(74)=-acd292(6)*acd292(5)
      acd292(66)=acd292(66)+acd292(74)
      acd292(66)=acd292(3)*acd292(66)
      acd292(74)=acd292(1)*acd292(2)
      brack=acd292(60)+acd292(61)+acd292(62)+acd292(63)+acd292(64)+acd292(65)+a&
      &cd292(66)+acd292(67)+acd292(68)+acd292(69)+acd292(70)+acd292(71)+acd292(&
      &72)+acd292(73)+2.0_ki*acd292(74)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd292h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(96) :: acd292
      complex(ki) :: brack
      acd292(1)=d(iv1,iv2)
      acd292(2)=k1(iv3)
      acd292(3)=abb292(90)
      acd292(4)=k2(iv3)
      acd292(5)=abb292(77)
      acd292(6)=e7(iv3)
      acd292(7)=abb292(64)
      acd292(8)=spvak2k1(iv3)
      acd292(9)=abb292(12)
      acd292(10)=spvak4k1(iv3)
      acd292(11)=abb292(68)
      acd292(12)=spval5k1(iv3)
      acd292(13)=abb292(87)
      acd292(14)=spval6k1(iv3)
      acd292(15)=abb292(14)
      acd292(16)=spval6l5(iv3)
      acd292(17)=abb292(61)
      acd292(18)=d(iv1,iv3)
      acd292(19)=k1(iv2)
      acd292(20)=k2(iv2)
      acd292(21)=e7(iv2)
      acd292(22)=spvak2k1(iv2)
      acd292(23)=spvak4k1(iv2)
      acd292(24)=spval5k1(iv2)
      acd292(25)=spval6k1(iv2)
      acd292(26)=spval6l5(iv2)
      acd292(27)=d(iv2,iv3)
      acd292(28)=k1(iv1)
      acd292(29)=k2(iv1)
      acd292(30)=e7(iv1)
      acd292(31)=spvak2k1(iv1)
      acd292(32)=spvak4k1(iv1)
      acd292(33)=spval5k1(iv1)
      acd292(34)=spval6k1(iv1)
      acd292(35)=spval6l5(iv1)
      acd292(36)=abb292(106)
      acd292(37)=abb292(62)
      acd292(38)=spvak4k3(iv3)
      acd292(39)=abb292(86)
      acd292(40)=spvak4k3(iv2)
      acd292(41)=spvak4k3(iv1)
      acd292(42)=abb292(35)
      acd292(43)=abb292(18)
      acd292(44)=abb292(63)
      acd292(45)=spval6k3(iv3)
      acd292(46)=abb292(38)
      acd292(47)=spval6k3(iv2)
      acd292(48)=spval6k3(iv1)
      acd292(49)=l5(iv1)
      acd292(50)=l5(iv2)
      acd292(51)=l5(iv3)
      acd292(52)=l6(iv1)
      acd292(53)=abb292(24)
      acd292(54)=l6(iv2)
      acd292(55)=l6(iv3)
      acd292(56)=k7(iv1)
      acd292(57)=k7(iv2)
      acd292(58)=k7(iv3)
      acd292(59)=abb292(32)
      acd292(60)=abb292(33)
      acd292(61)=abb292(13)
      acd292(62)=abb292(34)
      acd292(63)=spval6k2(iv3)
      acd292(64)=abb292(15)
      acd292(65)=spval6k2(iv2)
      acd292(66)=abb292(89)
      acd292(67)=abb292(49)
      acd292(68)=spval6k2(iv1)
      acd292(69)=abb292(41)
      acd292(70)=spval6k7(iv3)
      acd292(71)=abb292(40)
      acd292(72)=spval6e7(iv3)
      acd292(73)=abb292(47)
      acd292(74)=spval6k7(iv2)
      acd292(75)=spval6e7(iv2)
      acd292(76)=spval6k7(iv1)
      acd292(77)=spval6e7(iv1)
      acd292(78)=acd292(64)*acd292(63)
      acd292(79)=acd292(60)*acd292(16)
      acd292(80)=acd292(53)*acd292(55)
      acd292(81)=acd292(45)*acd292(62)
      acd292(82)=acd292(14)*acd292(59)
      acd292(83)=acd292(38)*acd292(61)
      acd292(78)=acd292(81)+acd292(78)+acd292(82)+acd292(83)+acd292(79)+acd292(&
      &80)
      acd292(79)=-acd292(22)*acd292(78)
      acd292(80)=acd292(64)*acd292(65)
      acd292(81)=acd292(60)*acd292(26)
      acd292(82)=acd292(53)*acd292(54)
      acd292(83)=acd292(47)*acd292(62)
      acd292(84)=acd292(25)*acd292(59)
      acd292(85)=acd292(40)*acd292(61)
      acd292(80)=acd292(80)+acd292(81)+acd292(82)+acd292(83)+acd292(84)+acd292(&
      &85)
      acd292(81)=-acd292(8)*acd292(80)
      acd292(82)=acd292(67)*acd292(16)
      acd292(83)=acd292(2)*acd292(39)
      acd292(84)=acd292(4)*acd292(44)
      acd292(85)=acd292(14)*acd292(66)
      acd292(82)=acd292(82)+acd292(83)+acd292(84)+acd292(85)
      acd292(83)=-acd292(40)*acd292(82)
      acd292(84)=acd292(67)*acd292(26)
      acd292(85)=acd292(19)*acd292(39)
      acd292(86)=acd292(20)*acd292(44)
      acd292(87)=acd292(25)*acd292(66)
      acd292(84)=acd292(84)+acd292(85)+acd292(86)+acd292(87)
      acd292(85)=-acd292(38)*acd292(84)
      acd292(86)=acd292(10)*acd292(42)
      acd292(87)=acd292(14)*acd292(43)
      acd292(86)=acd292(86)+acd292(87)
      acd292(87)=-acd292(20)*acd292(86)
      acd292(88)=acd292(23)*acd292(42)
      acd292(89)=acd292(25)*acd292(43)
      acd292(88)=acd292(88)+acd292(89)
      acd292(89)=-acd292(4)*acd292(88)
      acd292(90)=-acd292(51)+acd292(2)-acd292(55)
      acd292(91)=acd292(25)*acd292(90)
      acd292(92)=-acd292(50)+acd292(19)-acd292(54)
      acd292(93)=acd292(14)*acd292(92)
      acd292(91)=acd292(91)+acd292(93)
      acd292(91)=acd292(37)*acd292(91)
      acd292(93)=-acd292(23)*acd292(90)
      acd292(94)=-acd292(10)*acd292(92)
      acd292(93)=acd292(93)+acd292(94)
      acd292(93)=acd292(36)*acd292(93)
      acd292(94)=2.0_ki*acd292(7)
      acd292(95)=-acd292(27)*acd292(94)
      acd292(79)=acd292(81)+acd292(79)+acd292(93)+acd292(91)+acd292(85)+acd292(&
      &83)+acd292(95)+acd292(89)+acd292(87)
      acd292(79)=acd292(30)*acd292(79)
      acd292(78)=-acd292(31)*acd292(78)
      acd292(81)=acd292(64)*acd292(68)
      acd292(83)=acd292(60)*acd292(35)
      acd292(85)=acd292(52)*acd292(53)
      acd292(87)=acd292(48)*acd292(62)
      acd292(89)=acd292(34)*acd292(59)
      acd292(91)=acd292(41)*acd292(61)
      acd292(81)=acd292(81)+acd292(83)+acd292(85)+acd292(87)+acd292(89)+acd292(&
      &91)
      acd292(83)=-acd292(8)*acd292(81)
      acd292(82)=-acd292(41)*acd292(82)
      acd292(85)=acd292(67)*acd292(35)
      acd292(87)=acd292(28)*acd292(39)
      acd292(89)=acd292(29)*acd292(44)
      acd292(91)=acd292(34)*acd292(66)
      acd292(85)=acd292(85)+acd292(87)+acd292(89)+acd292(91)
      acd292(87)=-acd292(38)*acd292(85)
      acd292(86)=-acd292(29)*acd292(86)
      acd292(89)=acd292(32)*acd292(42)
      acd292(91)=acd292(34)*acd292(43)
      acd292(89)=acd292(89)+acd292(91)
      acd292(91)=-acd292(4)*acd292(89)
      acd292(93)=acd292(34)*acd292(90)
      acd292(95)=-acd292(49)+acd292(28)-acd292(52)
      acd292(96)=acd292(14)*acd292(95)
      acd292(93)=acd292(93)+acd292(96)
      acd292(93)=acd292(37)*acd292(93)
      acd292(90)=-acd292(32)*acd292(90)
      acd292(96)=-acd292(10)*acd292(95)
      acd292(90)=acd292(90)+acd292(96)
      acd292(90)=acd292(36)*acd292(90)
      acd292(96)=-acd292(18)*acd292(94)
      acd292(78)=acd292(83)+acd292(78)+acd292(90)+acd292(93)+acd292(87)+acd292(&
      &82)+acd292(96)+acd292(91)+acd292(86)
      acd292(78)=acd292(21)*acd292(78)
      acd292(80)=-acd292(31)*acd292(80)
      acd292(81)=-acd292(22)*acd292(81)
      acd292(82)=-acd292(41)*acd292(84)
      acd292(83)=-acd292(40)*acd292(85)
      acd292(84)=-acd292(29)*acd292(88)
      acd292(85)=-acd292(20)*acd292(89)
      acd292(86)=acd292(34)*acd292(92)
      acd292(87)=acd292(25)*acd292(95)
      acd292(86)=acd292(86)+acd292(87)
      acd292(86)=acd292(37)*acd292(86)
      acd292(87)=-acd292(32)*acd292(92)
      acd292(88)=-acd292(23)*acd292(95)
      acd292(87)=acd292(87)+acd292(88)
      acd292(87)=acd292(36)*acd292(87)
      acd292(88)=-acd292(1)*acd292(94)
      acd292(80)=acd292(81)+acd292(80)+acd292(87)+acd292(86)+acd292(83)+acd292(&
      &82)+acd292(88)+acd292(85)+acd292(84)
      acd292(80)=acd292(6)*acd292(80)
      acd292(81)=-acd292(13)*acd292(33)
      acd292(82)=-acd292(35)*acd292(17)
      acd292(83)=-acd292(28)*acd292(3)
      acd292(84)=-acd292(32)*acd292(11)
      acd292(85)=-acd292(29)*acd292(5)
      acd292(86)=-acd292(34)*acd292(15)
      acd292(81)=acd292(86)+acd292(85)+acd292(84)+acd292(83)+acd292(81)+acd292(&
      &82)
      acd292(81)=acd292(27)*acd292(81)
      acd292(82)=-acd292(13)*acd292(24)
      acd292(83)=-acd292(26)*acd292(17)
      acd292(84)=-acd292(19)*acd292(3)
      acd292(85)=-acd292(23)*acd292(11)
      acd292(86)=-acd292(20)*acd292(5)
      acd292(87)=-acd292(25)*acd292(15)
      acd292(82)=acd292(87)+acd292(86)+acd292(85)+acd292(84)+acd292(82)+acd292(&
      &83)
      acd292(82)=acd292(18)*acd292(82)
      acd292(83)=-acd292(13)*acd292(12)
      acd292(84)=-acd292(16)*acd292(17)
      acd292(85)=-acd292(2)*acd292(3)
      acd292(86)=-acd292(10)*acd292(11)
      acd292(87)=-acd292(4)*acd292(5)
      acd292(88)=-acd292(14)*acd292(15)
      acd292(83)=acd292(88)+acd292(87)+acd292(86)+acd292(85)+acd292(83)+acd292(&
      &84)
      acd292(83)=acd292(1)*acd292(83)
      acd292(81)=acd292(83)+acd292(82)+acd292(81)
      acd292(82)=acd292(73)*acd292(72)
      acd292(83)=acd292(71)*acd292(70)
      acd292(84)=acd292(69)*acd292(63)
      acd292(82)=acd292(84)+acd292(82)+acd292(83)
      acd292(83)=-acd292(40)*acd292(82)
      acd292(84)=acd292(73)*acd292(75)
      acd292(85)=acd292(71)*acd292(74)
      acd292(86)=acd292(69)*acd292(65)
      acd292(84)=acd292(86)+acd292(84)+acd292(85)
      acd292(85)=-acd292(38)*acd292(84)
      acd292(86)=acd292(4)-acd292(58)
      acd292(87)=acd292(47)*acd292(86)
      acd292(88)=acd292(20)-acd292(57)
      acd292(89)=acd292(45)*acd292(88)
      acd292(87)=acd292(89)+acd292(87)
      acd292(87)=acd292(46)*acd292(87)
      acd292(89)=2.0_ki*acd292(9)
      acd292(90)=-acd292(27)*acd292(89)
      acd292(83)=acd292(85)+acd292(83)+acd292(90)+acd292(87)
      acd292(83)=acd292(31)*acd292(83)
      acd292(82)=-acd292(41)*acd292(82)
      acd292(85)=acd292(73)*acd292(77)
      acd292(87)=acd292(71)*acd292(76)
      acd292(90)=acd292(69)*acd292(68)
      acd292(85)=acd292(90)+acd292(85)+acd292(87)
      acd292(87)=-acd292(38)*acd292(85)
      acd292(86)=acd292(48)*acd292(86)
      acd292(90)=acd292(29)-acd292(56)
      acd292(91)=acd292(45)*acd292(90)
      acd292(86)=acd292(91)+acd292(86)
      acd292(86)=acd292(46)*acd292(86)
      acd292(91)=-acd292(18)*acd292(89)
      acd292(82)=acd292(87)+acd292(82)+acd292(91)+acd292(86)
      acd292(82)=acd292(22)*acd292(82)
      acd292(84)=-acd292(41)*acd292(84)
      acd292(85)=-acd292(40)*acd292(85)
      acd292(86)=acd292(48)*acd292(88)
      acd292(87)=acd292(47)*acd292(90)
      acd292(86)=acd292(87)+acd292(86)
      acd292(86)=acd292(46)*acd292(86)
      acd292(87)=-acd292(1)*acd292(89)
      acd292(84)=acd292(85)+acd292(84)+acd292(87)+acd292(86)
      acd292(84)=acd292(8)*acd292(84)
      brack=acd292(78)+acd292(79)+acd292(80)+2.0_ki*acd292(81)+acd292(82)+acd29&
      &2(83)+acd292(84)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd292h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd292
      complex(ki) :: brack
      acd292(1)=d(iv1,iv2)
      acd292(2)=e7(iv3)
      acd292(3)=spvak4k1(iv4)
      acd292(4)=abb292(76)
      acd292(5)=spval6k1(iv4)
      acd292(6)=abb292(11)
      acd292(7)=e7(iv4)
      acd292(8)=spvak4k1(iv3)
      acd292(9)=spval6k1(iv3)
      acd292(10)=spvak2k1(iv3)
      acd292(11)=spval6k3(iv4)
      acd292(12)=abb292(37)
      acd292(13)=spvak2k1(iv4)
      acd292(14)=spval6k3(iv3)
      acd292(15)=d(iv1,iv3)
      acd292(16)=e7(iv2)
      acd292(17)=spvak4k1(iv2)
      acd292(18)=spval6k1(iv2)
      acd292(19)=spvak2k1(iv2)
      acd292(20)=spval6k3(iv2)
      acd292(21)=d(iv1,iv4)
      acd292(22)=d(iv2,iv3)
      acd292(23)=e7(iv1)
      acd292(24)=spvak4k1(iv1)
      acd292(25)=spval6k1(iv1)
      acd292(26)=spvak2k1(iv1)
      acd292(27)=spval6k3(iv1)
      acd292(28)=d(iv2,iv4)
      acd292(29)=d(iv3,iv4)
      acd292(30)=spvak4k3(iv3)
      acd292(31)=spval6l5(iv4)
      acd292(32)=abb292(83)
      acd292(33)=spvak4k3(iv4)
      acd292(34)=spval6l5(iv3)
      acd292(35)=spvak4k3(iv2)
      acd292(36)=spval6l5(iv2)
      acd292(37)=spvak4k3(iv1)
      acd292(38)=spval6l5(iv1)
      acd292(39)=acd292(15)*acd292(7)
      acd292(40)=acd292(21)*acd292(2)
      acd292(41)=acd292(29)*acd292(23)
      acd292(39)=acd292(41)+acd292(39)+acd292(40)
      acd292(40)=acd292(17)*acd292(4)
      acd292(41)=acd292(18)*acd292(6)
      acd292(40)=acd292(40)+acd292(41)
      acd292(39)=acd292(39)*acd292(40)
      acd292(40)=acd292(1)*acd292(7)
      acd292(41)=acd292(21)*acd292(16)
      acd292(42)=acd292(28)*acd292(23)
      acd292(40)=acd292(42)+acd292(40)+acd292(41)
      acd292(41)=acd292(8)*acd292(4)
      acd292(42)=acd292(9)*acd292(6)
      acd292(41)=acd292(41)+acd292(42)
      acd292(40)=acd292(40)*acd292(41)
      acd292(41)=acd292(1)*acd292(2)
      acd292(42)=acd292(15)*acd292(16)
      acd292(43)=acd292(22)*acd292(23)
      acd292(41)=acd292(43)+acd292(41)+acd292(42)
      acd292(42)=acd292(3)*acd292(4)
      acd292(43)=acd292(5)*acd292(6)
      acd292(42)=acd292(42)+acd292(43)
      acd292(41)=acd292(41)*acd292(42)
      acd292(42)=acd292(10)*acd292(12)
      acd292(43)=acd292(1)*acd292(42)
      acd292(44)=acd292(19)*acd292(12)
      acd292(45)=acd292(15)*acd292(44)
      acd292(46)=acd292(26)*acd292(12)
      acd292(47)=acd292(22)*acd292(46)
      acd292(43)=acd292(47)+acd292(43)+acd292(45)
      acd292(43)=acd292(11)*acd292(43)
      acd292(45)=acd292(13)*acd292(12)
      acd292(47)=acd292(1)*acd292(45)
      acd292(48)=acd292(21)*acd292(44)
      acd292(49)=acd292(28)*acd292(46)
      acd292(47)=acd292(49)+acd292(47)+acd292(48)
      acd292(47)=acd292(14)*acd292(47)
      acd292(48)=acd292(15)*acd292(45)
      acd292(49)=acd292(21)*acd292(42)
      acd292(46)=acd292(29)*acd292(46)
      acd292(46)=acd292(46)+acd292(48)+acd292(49)
      acd292(46)=acd292(20)*acd292(46)
      acd292(48)=acd292(22)*acd292(7)
      acd292(49)=acd292(28)*acd292(2)
      acd292(50)=acd292(29)*acd292(16)
      acd292(48)=acd292(50)+acd292(48)+acd292(49)
      acd292(49)=acd292(24)*acd292(4)*acd292(48)
      acd292(48)=acd292(25)*acd292(6)*acd292(48)
      acd292(45)=acd292(22)*acd292(45)
      acd292(42)=acd292(28)*acd292(42)
      acd292(44)=acd292(29)*acd292(44)
      acd292(42)=acd292(44)+acd292(45)+acd292(42)
      acd292(42)=acd292(27)*acd292(42)
      acd292(39)=acd292(46)+acd292(49)+acd292(48)+acd292(42)+acd292(39)+acd292(&
      &43)+acd292(47)+acd292(40)+acd292(41)
      acd292(40)=acd292(19)*acd292(32)
      acd292(41)=acd292(40)*acd292(2)
      acd292(42)=acd292(10)*acd292(32)
      acd292(43)=acd292(42)*acd292(16)
      acd292(41)=acd292(41)+acd292(43)
      acd292(43)=acd292(31)*acd292(41)
      acd292(44)=acd292(40)*acd292(7)
      acd292(45)=acd292(13)*acd292(32)
      acd292(46)=acd292(45)*acd292(16)
      acd292(44)=acd292(44)+acd292(46)
      acd292(46)=acd292(34)*acd292(44)
      acd292(47)=acd292(45)*acd292(2)
      acd292(48)=acd292(42)*acd292(7)
      acd292(47)=acd292(47)+acd292(48)
      acd292(48)=acd292(36)*acd292(47)
      acd292(43)=acd292(48)+acd292(43)+acd292(46)
      acd292(43)=acd292(37)*acd292(43)
      acd292(44)=acd292(30)*acd292(44)
      acd292(41)=acd292(33)*acd292(41)
      acd292(46)=acd292(35)*acd292(47)
      acd292(41)=acd292(46)+acd292(44)+acd292(41)
      acd292(41)=acd292(38)*acd292(41)
      acd292(44)=acd292(31)*acd292(30)
      acd292(46)=acd292(34)*acd292(33)
      acd292(44)=acd292(44)+acd292(46)
      acd292(46)=acd292(26)*acd292(32)
      acd292(47)=acd292(46)*acd292(16)
      acd292(40)=acd292(40)*acd292(23)
      acd292(40)=acd292(47)+acd292(40)
      acd292(40)=acd292(40)*acd292(44)
      acd292(44)=acd292(46)*acd292(2)
      acd292(42)=acd292(42)*acd292(23)
      acd292(42)=acd292(44)+acd292(42)
      acd292(44)=acd292(31)*acd292(42)
      acd292(46)=acd292(46)*acd292(7)
      acd292(45)=acd292(45)*acd292(23)
      acd292(45)=acd292(46)+acd292(45)
      acd292(46)=acd292(34)*acd292(45)
      acd292(44)=acd292(44)+acd292(46)
      acd292(44)=acd292(35)*acd292(44)
      acd292(45)=acd292(30)*acd292(45)
      acd292(42)=acd292(33)*acd292(42)
      acd292(42)=acd292(45)+acd292(42)
      acd292(42)=acd292(36)*acd292(42)
      brack=2.0_ki*acd292(39)+acd292(40)+acd292(41)+acd292(42)+acd292(43)+acd29&
      &2(44)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd292h1
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
!---#[ subroutine reconstruct_d292:
   subroutine     reconstruct_d292(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group11
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group11), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_292:
      coeffs%coeffs_292%c0 = derivative(czip)
      coeffs%coeffs_292%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_292%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_292%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_292%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_292%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_292%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_292%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_292%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_292%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_292%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_292%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_292%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_292%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_292%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_292%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_292%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_292%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_292%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_292%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_292%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_292%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_292%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_292%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_292%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_292%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_292%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_292%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_292%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_292%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_292%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_292%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_292%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_292%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_292%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_292%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_292%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_292%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_292%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_292%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_292%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_292%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_292%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_292%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_292%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_292%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_292%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_292%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_292%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_292%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_292%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_292%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_292%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_292%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_292%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_292%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_292%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_292%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_292%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_292%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_292%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_292%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_292%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_292%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_292%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_292%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_292%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_292%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_292%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_292%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_292:
   end subroutine reconstruct_d292
!---#] subroutine reconstruct_d292:
end module     p5_usbar_epnebbbarg_d292h1l1d
