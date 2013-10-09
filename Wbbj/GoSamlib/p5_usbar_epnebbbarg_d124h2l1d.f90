module     p5_usbar_epnebbbarg_d124h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d124h2l1d.f90
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
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d124
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd124h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(76) :: acd124
      complex(ki) :: brack
      acd124(1)=dotproduct(k1,qshift)
      acd124(2)=dotproduct(k7,qshift)
      acd124(3)=abb124(60)
      acd124(4)=dotproduct(e7,qshift)
      acd124(5)=dotproduct(qshift,spvak4k3)
      acd124(6)=abb124(63)
      acd124(7)=abb124(52)
      acd124(8)=dotproduct(qshift,qshift)
      acd124(9)=abb124(43)
      acd124(10)=abb124(48)
      acd124(11)=abb124(50)
      acd124(12)=dotproduct(k2,qshift)
      acd124(13)=abb124(14)
      acd124(14)=abb124(15)
      acd124(15)=abb124(21)
      acd124(16)=abb124(13)
      acd124(17)=abb124(30)
      acd124(18)=abb124(61)
      acd124(19)=dotproduct(k3,qshift)
      acd124(20)=abb124(35)
      acd124(21)=abb124(11)
      acd124(22)=dotproduct(k4,qshift)
      acd124(23)=dotproduct(l5,qshift)
      acd124(24)=dotproduct(l6,qshift)
      acd124(25)=dotproduct(qshift,spvak2k1)
      acd124(26)=abb124(36)
      acd124(27)=dotproduct(qshift,spval5k1)
      acd124(28)=abb124(78)
      acd124(29)=dotproduct(qshift,spval5l6)
      acd124(30)=abb124(77)
      acd124(31)=dotproduct(qshift,spvak2e7)
      acd124(32)=abb124(73)
      acd124(33)=abb124(27)
      acd124(34)=abb124(29)
      acd124(35)=abb124(12)
      acd124(36)=abb124(9)
      acd124(37)=abb124(46)
      acd124(38)=dotproduct(qshift,spvak2l5)
      acd124(39)=abb124(40)
      acd124(40)=dotproduct(qshift,spvak2l6)
      acd124(41)=abb124(24)
      acd124(42)=abb124(18)
      acd124(43)=abb124(25)
      acd124(44)=abb124(53)
      acd124(45)=abb124(54)
      acd124(46)=dotproduct(qshift,spvak2k3)
      acd124(47)=abb124(16)
      acd124(48)=dotproduct(qshift,spvak2k7)
      acd124(49)=abb124(10)
      acd124(50)=abb124(19)
      acd124(51)=abb124(22)
      acd124(52)=abb124(55)
      acd124(53)=abb124(76)
      acd124(54)=abb124(72)
      acd124(55)=abb124(26)
      acd124(56)=abb124(28)
      acd124(57)=abb124(41)
      acd124(58)=abb124(23)
      acd124(59)=abb124(17)
      acd124(60)=abb124(20)
      acd124(61)=abb124(45)
      acd124(62)=abb124(79)
      acd124(63)=abb124(74)
      acd124(64)=abb124(42)
      acd124(65)=-acd124(24)+acd124(1)-acd124(23)
      acd124(66)=-acd124(6)*acd124(65)
      acd124(67)=-acd124(40)*acd124(41)
      acd124(68)=-acd124(38)*acd124(39)
      acd124(69)=-acd124(29)*acd124(37)
      acd124(70)=-acd124(27)*acd124(36)
      acd124(71)=-acd124(25)*acd124(35)
      acd124(72)=-acd124(12)*acd124(14)
      acd124(66)=acd124(72)+acd124(71)+acd124(70)+acd124(69)+acd124(68)+acd124(&
      &42)+acd124(67)+acd124(66)
      acd124(66)=acd124(5)*acd124(66)
      acd124(67)=acd124(19)+acd124(22)
      acd124(68)=acd124(2)+acd124(67)
      acd124(68)=acd124(20)*acd124(68)
      acd124(69)=acd124(7)*acd124(65)
      acd124(70)=acd124(48)*acd124(49)
      acd124(71)=acd124(46)*acd124(47)
      acd124(72)=acd124(29)*acd124(45)
      acd124(73)=acd124(27)*acd124(44)
      acd124(74)=acd124(25)*acd124(43)
      acd124(75)=acd124(12)*acd124(15)
      acd124(76)=-acd124(8)*acd124(34)
      acd124(66)=acd124(66)+acd124(76)+acd124(75)+acd124(74)+acd124(73)+acd124(&
      &72)+acd124(71)-acd124(50)+acd124(70)+acd124(69)+acd124(68)
      acd124(66)=acd124(4)*acd124(66)
      acd124(68)=acd124(9)*acd124(65)
      acd124(69)=-acd124(31)*acd124(54)
      acd124(70)=-acd124(29)*acd124(53)
      acd124(71)=-acd124(27)*acd124(52)
      acd124(72)=-acd124(25)*acd124(51)
      acd124(73)=-acd124(12)*acd124(16)
      acd124(68)=acd124(73)+acd124(72)+acd124(71)+acd124(70)+acd124(55)+acd124(&
      &69)+acd124(68)
      acd124(68)=acd124(8)*acd124(68)
      acd124(69)=-acd124(3)*acd124(65)
      acd124(70)=acd124(31)*acd124(32)
      acd124(71)=acd124(29)*acd124(30)
      acd124(72)=acd124(27)*acd124(28)
      acd124(73)=acd124(25)*acd124(26)
      acd124(74)=acd124(12)*acd124(13)
      acd124(69)=acd124(74)+acd124(73)+acd124(72)+acd124(71)-acd124(33)+acd124(&
      &70)+acd124(69)
      acd124(69)=acd124(2)*acd124(69)
      acd124(70)=-acd124(10)*acd124(65)
      acd124(71)=acd124(31)*acd124(59)
      acd124(72)=acd124(29)*acd124(58)
      acd124(73)=acd124(27)*acd124(57)
      acd124(74)=acd124(25)*acd124(56)
      acd124(75)=acd124(12)*acd124(17)
      acd124(70)=acd124(75)+acd124(74)+acd124(73)+acd124(72)-acd124(60)+acd124(&
      &71)+acd124(70)
      acd124(70)=acd124(5)*acd124(70)
      acd124(67)=-acd124(21)*acd124(67)
      acd124(65)=acd124(11)*acd124(65)
      acd124(71)=-acd124(31)*acd124(64)
      acd124(72)=-acd124(29)*acd124(63)
      acd124(73)=-acd124(27)*acd124(62)
      acd124(74)=-acd124(25)*acd124(61)
      acd124(75)=-acd124(12)*acd124(18)
      brack=acd124(65)+acd124(66)+acd124(67)+acd124(68)+acd124(69)+acd124(70)+a&
      &cd124(71)+acd124(72)+acd124(73)+acd124(74)+acd124(75)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd124h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd124
      complex(ki) :: brack
      acd124(1)=k1(iv1)
      acd124(2)=dotproduct(k7,qshift)
      acd124(3)=abb124(60)
      acd124(4)=dotproduct(e7,qshift)
      acd124(5)=dotproduct(qshift,spvak4k3)
      acd124(6)=abb124(63)
      acd124(7)=abb124(52)
      acd124(8)=dotproduct(qshift,qshift)
      acd124(9)=abb124(43)
      acd124(10)=abb124(48)
      acd124(11)=abb124(50)
      acd124(12)=k2(iv1)
      acd124(13)=abb124(14)
      acd124(14)=abb124(15)
      acd124(15)=abb124(21)
      acd124(16)=abb124(13)
      acd124(17)=abb124(30)
      acd124(18)=abb124(61)
      acd124(19)=k3(iv1)
      acd124(20)=abb124(35)
      acd124(21)=abb124(11)
      acd124(22)=k4(iv1)
      acd124(23)=l5(iv1)
      acd124(24)=l6(iv1)
      acd124(25)=k7(iv1)
      acd124(26)=dotproduct(k1,qshift)
      acd124(27)=dotproduct(k2,qshift)
      acd124(28)=dotproduct(l5,qshift)
      acd124(29)=dotproduct(l6,qshift)
      acd124(30)=dotproduct(qshift,spvak2k1)
      acd124(31)=abb124(36)
      acd124(32)=dotproduct(qshift,spval5k1)
      acd124(33)=abb124(78)
      acd124(34)=dotproduct(qshift,spval5l6)
      acd124(35)=abb124(77)
      acd124(36)=dotproduct(qshift,spvak2e7)
      acd124(37)=abb124(73)
      acd124(38)=abb124(27)
      acd124(39)=e7(iv1)
      acd124(40)=dotproduct(k3,qshift)
      acd124(41)=dotproduct(k4,qshift)
      acd124(42)=abb124(29)
      acd124(43)=abb124(12)
      acd124(44)=abb124(9)
      acd124(45)=abb124(46)
      acd124(46)=dotproduct(qshift,spvak2l5)
      acd124(47)=abb124(40)
      acd124(48)=dotproduct(qshift,spvak2l6)
      acd124(49)=abb124(24)
      acd124(50)=abb124(18)
      acd124(51)=abb124(25)
      acd124(52)=abb124(53)
      acd124(53)=abb124(54)
      acd124(54)=dotproduct(qshift,spvak2k3)
      acd124(55)=abb124(16)
      acd124(56)=dotproduct(qshift,spvak2k7)
      acd124(57)=abb124(10)
      acd124(58)=abb124(19)
      acd124(59)=qshift(iv1)
      acd124(60)=abb124(22)
      acd124(61)=abb124(55)
      acd124(62)=abb124(76)
      acd124(63)=abb124(72)
      acd124(64)=abb124(26)
      acd124(65)=spvak4k3(iv1)
      acd124(66)=abb124(28)
      acd124(67)=abb124(41)
      acd124(68)=abb124(23)
      acd124(69)=abb124(17)
      acd124(70)=abb124(20)
      acd124(71)=spvak2k1(iv1)
      acd124(72)=abb124(45)
      acd124(73)=spval5k1(iv1)
      acd124(74)=abb124(79)
      acd124(75)=spval5l6(iv1)
      acd124(76)=abb124(74)
      acd124(77)=spvak2e7(iv1)
      acd124(78)=abb124(42)
      acd124(79)=spvak2k3(iv1)
      acd124(80)=spvak2l5(iv1)
      acd124(81)=spvak2l6(iv1)
      acd124(82)=spvak2k7(iv1)
      acd124(83)=-acd124(29)+acd124(26)-acd124(28)
      acd124(84)=acd124(83)*acd124(6)
      acd124(85)=acd124(49)*acd124(48)
      acd124(86)=acd124(47)*acd124(46)
      acd124(87)=acd124(34)*acd124(45)
      acd124(88)=acd124(32)*acd124(44)
      acd124(89)=acd124(30)*acd124(43)
      acd124(90)=acd124(27)*acd124(14)
      acd124(84)=acd124(88)+acd124(89)+acd124(90)-acd124(50)+acd124(84)+acd124(&
      &87)+acd124(85)+acd124(86)
      acd124(85)=acd124(65)*acd124(84)
      acd124(86)=acd124(49)*acd124(81)
      acd124(87)=acd124(47)*acd124(80)
      acd124(88)=acd124(75)*acd124(45)
      acd124(89)=acd124(73)*acd124(44)
      acd124(90)=acd124(71)*acd124(43)
      acd124(91)=acd124(12)*acd124(14)
      acd124(92)=-acd124(1)+acd124(23)+acd124(24)
      acd124(93)=-acd124(6)*acd124(92)
      acd124(86)=acd124(93)+acd124(91)+acd124(90)+acd124(89)+acd124(88)+acd124(&
      &86)+acd124(87)
      acd124(86)=acd124(5)*acd124(86)
      acd124(87)=acd124(19)+acd124(22)
      acd124(88)=-acd124(25)-acd124(87)
      acd124(88)=acd124(20)*acd124(88)
      acd124(89)=acd124(7)*acd124(92)
      acd124(90)=-acd124(57)*acd124(82)
      acd124(91)=-acd124(55)*acd124(79)
      acd124(93)=-acd124(75)*acd124(53)
      acd124(94)=-acd124(73)*acd124(52)
      acd124(95)=-acd124(71)*acd124(51)
      acd124(96)=-acd124(12)*acd124(15)
      acd124(97)=2.0_ki*acd124(59)
      acd124(98)=acd124(42)*acd124(97)
      acd124(85)=acd124(86)+acd124(85)+acd124(98)+acd124(96)+acd124(95)+acd124(&
      &94)+acd124(93)+acd124(90)+acd124(91)+acd124(89)+acd124(88)
      acd124(85)=acd124(4)*acd124(85)
      acd124(86)=-acd124(2)-acd124(41)-acd124(40)
      acd124(86)=acd124(20)*acd124(86)
      acd124(88)=-acd124(57)*acd124(56)
      acd124(89)=-acd124(55)*acd124(54)
      acd124(90)=-acd124(34)*acd124(53)
      acd124(91)=-acd124(32)*acd124(52)
      acd124(93)=-acd124(30)*acd124(51)
      acd124(94)=-acd124(27)*acd124(15)
      acd124(95)=-acd124(7)*acd124(83)
      acd124(96)=acd124(8)*acd124(42)
      acd124(86)=acd124(96)+acd124(95)+acd124(94)+acd124(93)+acd124(91)+acd124(&
      &90)+acd124(89)+acd124(58)+acd124(88)+acd124(86)
      acd124(86)=acd124(39)*acd124(86)
      acd124(84)=acd124(39)*acd124(84)
      acd124(88)=-acd124(10)*acd124(92)
      acd124(89)=-acd124(77)*acd124(69)
      acd124(90)=-acd124(75)*acd124(68)
      acd124(91)=-acd124(73)*acd124(67)
      acd124(93)=-acd124(71)*acd124(66)
      acd124(94)=-acd124(12)*acd124(17)
      acd124(84)=acd124(84)+acd124(94)+acd124(93)+acd124(91)+acd124(89)+acd124(&
      &90)+acd124(88)
      acd124(84)=acd124(5)*acd124(84)
      acd124(88)=acd124(9)*acd124(92)
      acd124(89)=acd124(77)*acd124(63)
      acd124(90)=acd124(75)*acd124(62)
      acd124(91)=acd124(73)*acd124(61)
      acd124(93)=acd124(71)*acd124(60)
      acd124(94)=acd124(12)*acd124(16)
      acd124(88)=acd124(94)+acd124(93)+acd124(91)+acd124(89)+acd124(90)+acd124(&
      &88)
      acd124(88)=acd124(8)*acd124(88)
      acd124(89)=-acd124(3)*acd124(92)
      acd124(90)=-acd124(77)*acd124(37)
      acd124(91)=-acd124(75)*acd124(35)
      acd124(93)=-acd124(73)*acd124(33)
      acd124(94)=-acd124(71)*acd124(31)
      acd124(95)=-acd124(12)*acd124(13)
      acd124(89)=acd124(95)+acd124(94)+acd124(93)+acd124(90)+acd124(91)+acd124(&
      &89)
      acd124(89)=acd124(2)*acd124(89)
      acd124(90)=acd124(36)*acd124(63)
      acd124(91)=acd124(34)*acd124(62)
      acd124(93)=acd124(32)*acd124(61)
      acd124(94)=acd124(30)*acd124(60)
      acd124(95)=acd124(27)*acd124(16)
      acd124(96)=-acd124(9)*acd124(83)
      acd124(90)=acd124(96)+acd124(95)+acd124(94)+acd124(93)+acd124(91)-acd124(&
      &64)+acd124(90)
      acd124(90)=acd124(90)*acd124(97)
      acd124(91)=-acd124(36)*acd124(37)
      acd124(93)=-acd124(34)*acd124(35)
      acd124(94)=-acd124(32)*acd124(33)
      acd124(95)=-acd124(30)*acd124(31)
      acd124(96)=-acd124(27)*acd124(13)
      acd124(97)=acd124(3)*acd124(83)
      acd124(91)=acd124(97)+acd124(96)+acd124(95)+acd124(94)+acd124(93)+acd124(&
      &38)+acd124(91)
      acd124(91)=acd124(25)*acd124(91)
      acd124(93)=-acd124(36)*acd124(69)
      acd124(94)=-acd124(34)*acd124(68)
      acd124(95)=-acd124(32)*acd124(67)
      acd124(96)=-acd124(30)*acd124(66)
      acd124(97)=-acd124(27)*acd124(17)
      acd124(83)=acd124(10)*acd124(83)
      acd124(83)=acd124(83)+acd124(97)+acd124(96)+acd124(95)+acd124(94)+acd124(&
      &70)+acd124(93)
      acd124(83)=acd124(65)*acd124(83)
      acd124(87)=acd124(21)*acd124(87)
      acd124(92)=acd124(11)*acd124(92)
      acd124(93)=acd124(77)*acd124(78)
      acd124(94)=acd124(75)*acd124(76)
      acd124(95)=acd124(73)*acd124(74)
      acd124(96)=acd124(71)*acd124(72)
      acd124(97)=acd124(12)*acd124(18)
      brack=acd124(83)+acd124(84)+acd124(85)+acd124(86)+acd124(87)+acd124(88)+a&
      &cd124(89)+acd124(90)+acd124(91)+acd124(92)+acd124(93)+acd124(94)+acd124(&
      &95)+acd124(96)+acd124(97)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd124h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(103) :: acd124
      complex(ki) :: brack
      acd124(1)=d(iv1,iv2)
      acd124(2)=dotproduct(k1,qshift)
      acd124(3)=abb124(43)
      acd124(4)=dotproduct(k2,qshift)
      acd124(5)=abb124(13)
      acd124(6)=dotproduct(l5,qshift)
      acd124(7)=dotproduct(l6,qshift)
      acd124(8)=dotproduct(e7,qshift)
      acd124(9)=abb124(29)
      acd124(10)=dotproduct(qshift,spvak2k1)
      acd124(11)=abb124(22)
      acd124(12)=dotproduct(qshift,spval5k1)
      acd124(13)=abb124(55)
      acd124(14)=dotproduct(qshift,spval5l6)
      acd124(15)=abb124(76)
      acd124(16)=dotproduct(qshift,spvak2e7)
      acd124(17)=abb124(72)
      acd124(18)=abb124(26)
      acd124(19)=k1(iv1)
      acd124(20)=k7(iv2)
      acd124(21)=abb124(60)
      acd124(22)=e7(iv2)
      acd124(23)=dotproduct(qshift,spvak4k3)
      acd124(24)=abb124(63)
      acd124(25)=abb124(52)
      acd124(26)=qshift(iv2)
      acd124(27)=spvak4k3(iv2)
      acd124(28)=abb124(48)
      acd124(29)=k1(iv2)
      acd124(30)=k7(iv1)
      acd124(31)=e7(iv1)
      acd124(32)=qshift(iv1)
      acd124(33)=spvak4k3(iv1)
      acd124(34)=k2(iv1)
      acd124(35)=abb124(14)
      acd124(36)=abb124(15)
      acd124(37)=abb124(21)
      acd124(38)=abb124(30)
      acd124(39)=k2(iv2)
      acd124(40)=k3(iv1)
      acd124(41)=abb124(35)
      acd124(42)=k3(iv2)
      acd124(43)=k4(iv1)
      acd124(44)=k4(iv2)
      acd124(45)=l5(iv1)
      acd124(46)=l5(iv2)
      acd124(47)=l6(iv1)
      acd124(48)=l6(iv2)
      acd124(49)=spvak2k1(iv2)
      acd124(50)=abb124(36)
      acd124(51)=spval5k1(iv2)
      acd124(52)=abb124(78)
      acd124(53)=spval5l6(iv2)
      acd124(54)=abb124(77)
      acd124(55)=spvak2e7(iv2)
      acd124(56)=abb124(73)
      acd124(57)=spvak2k1(iv1)
      acd124(58)=spval5k1(iv1)
      acd124(59)=spval5l6(iv1)
      acd124(60)=spvak2e7(iv1)
      acd124(61)=abb124(12)
      acd124(62)=abb124(25)
      acd124(63)=abb124(9)
      acd124(64)=abb124(53)
      acd124(65)=abb124(46)
      acd124(66)=abb124(54)
      acd124(67)=dotproduct(qshift,spvak2l5)
      acd124(68)=abb124(40)
      acd124(69)=dotproduct(qshift,spvak2l6)
      acd124(70)=abb124(24)
      acd124(71)=abb124(18)
      acd124(72)=spvak2k3(iv2)
      acd124(73)=abb124(16)
      acd124(74)=spvak2l5(iv2)
      acd124(75)=spvak2l6(iv2)
      acd124(76)=spvak2k7(iv2)
      acd124(77)=abb124(10)
      acd124(78)=spvak2k3(iv1)
      acd124(79)=spvak2l5(iv1)
      acd124(80)=spvak2l6(iv1)
      acd124(81)=spvak2k7(iv1)
      acd124(82)=abb124(28)
      acd124(83)=abb124(41)
      acd124(84)=abb124(23)
      acd124(85)=abb124(17)
      acd124(86)=acd124(70)*acd124(75)
      acd124(87)=acd124(68)*acd124(74)
      acd124(88)=-acd124(48)+acd124(29)-acd124(46)
      acd124(89)=acd124(88)*acd124(24)
      acd124(90)=acd124(53)*acd124(65)
      acd124(91)=acd124(51)*acd124(63)
      acd124(92)=acd124(49)*acd124(61)
      acd124(93)=acd124(36)*acd124(39)
      acd124(86)=acd124(93)+acd124(89)+acd124(90)+acd124(91)+acd124(92)+acd124(&
      &86)+acd124(87)
      acd124(87)=-acd124(23)*acd124(86)
      acd124(89)=acd124(70)*acd124(69)
      acd124(90)=acd124(68)*acd124(67)
      acd124(91)=acd124(65)*acd124(14)
      acd124(92)=acd124(63)*acd124(12)
      acd124(93)=acd124(61)*acd124(10)
      acd124(94)=-acd124(7)+acd124(2)-acd124(6)
      acd124(95)=acd124(94)*acd124(24)
      acd124(96)=acd124(36)*acd124(4)
      acd124(89)=-acd124(71)+acd124(92)+acd124(93)+acd124(95)+acd124(96)+acd124&
      &(89)+acd124(90)+acd124(91)
      acd124(90)=-acd124(27)*acd124(89)
      acd124(91)=acd124(20)+acd124(44)+acd124(42)
      acd124(91)=acd124(41)*acd124(91)
      acd124(92)=acd124(77)*acd124(76)
      acd124(93)=acd124(73)*acd124(72)
      acd124(95)=acd124(53)*acd124(66)
      acd124(96)=acd124(51)*acd124(64)
      acd124(97)=acd124(49)*acd124(62)
      acd124(98)=acd124(39)*acd124(37)
      acd124(99)=acd124(25)*acd124(88)
      acd124(100)=2.0_ki*acd124(9)
      acd124(101)=-acd124(26)*acd124(100)
      acd124(87)=acd124(90)+acd124(87)+acd124(101)+acd124(99)+acd124(98)+acd124&
      &(97)+acd124(96)+acd124(95)+acd124(92)+acd124(93)+acd124(91)
      acd124(87)=acd124(31)*acd124(87)
      acd124(90)=acd124(70)*acd124(80)
      acd124(91)=acd124(68)*acd124(79)
      acd124(92)=-acd124(19)+acd124(45)+acd124(47)
      acd124(93)=acd124(92)*acd124(24)
      acd124(95)=acd124(59)*acd124(65)
      acd124(96)=acd124(58)*acd124(63)
      acd124(97)=acd124(57)*acd124(61)
      acd124(98)=acd124(34)*acd124(36)
      acd124(90)=-acd124(93)+acd124(95)+acd124(96)+acd124(97)+acd124(98)+acd124&
      &(90)+acd124(91)
      acd124(91)=-acd124(23)*acd124(90)
      acd124(89)=-acd124(33)*acd124(89)
      acd124(93)=acd124(30)+acd124(43)+acd124(40)
      acd124(93)=acd124(41)*acd124(93)
      acd124(95)=-acd124(25)*acd124(92)
      acd124(96)=acd124(77)*acd124(81)
      acd124(97)=acd124(73)*acd124(78)
      acd124(98)=acd124(59)*acd124(66)
      acd124(99)=acd124(58)*acd124(64)
      acd124(101)=acd124(57)*acd124(62)
      acd124(102)=acd124(34)*acd124(37)
      acd124(103)=-acd124(32)*acd124(100)
      acd124(89)=acd124(89)+acd124(91)+acd124(103)+acd124(102)+acd124(101)+acd1&
      &24(99)+acd124(98)+acd124(96)+acd124(97)+acd124(95)+acd124(93)
      acd124(89)=acd124(22)*acd124(89)
      acd124(86)=-acd124(8)*acd124(86)
      acd124(91)=acd124(55)*acd124(85)
      acd124(93)=acd124(53)*acd124(84)
      acd124(95)=acd124(51)*acd124(83)
      acd124(96)=acd124(49)*acd124(82)
      acd124(97)=acd124(39)*acd124(38)
      acd124(98)=-acd124(28)*acd124(88)
      acd124(86)=acd124(86)+acd124(98)+acd124(97)+acd124(96)+acd124(95)+acd124(&
      &91)+acd124(93)
      acd124(86)=acd124(33)*acd124(86)
      acd124(90)=-acd124(8)*acd124(90)
      acd124(91)=acd124(28)*acd124(92)
      acd124(93)=acd124(60)*acd124(85)
      acd124(95)=acd124(59)*acd124(84)
      acd124(96)=acd124(58)*acd124(83)
      acd124(97)=acd124(57)*acd124(82)
      acd124(98)=acd124(34)*acd124(38)
      acd124(90)=acd124(90)+acd124(98)+acd124(97)+acd124(96)+acd124(93)+acd124(&
      &95)+acd124(91)
      acd124(90)=acd124(27)*acd124(90)
      acd124(91)=-acd124(17)*acd124(55)
      acd124(93)=-acd124(53)*acd124(15)
      acd124(95)=-acd124(51)*acd124(13)
      acd124(96)=-acd124(49)*acd124(11)
      acd124(97)=-acd124(39)*acd124(5)
      acd124(91)=acd124(97)+acd124(96)+acd124(95)+acd124(91)+acd124(93)
      acd124(91)=acd124(32)*acd124(91)
      acd124(93)=-acd124(17)*acd124(60)
      acd124(95)=-acd124(59)*acd124(15)
      acd124(96)=-acd124(58)*acd124(13)
      acd124(97)=-acd124(57)*acd124(11)
      acd124(98)=-acd124(34)*acd124(5)
      acd124(93)=acd124(98)+acd124(97)+acd124(96)+acd124(93)+acd124(95)
      acd124(93)=acd124(26)*acd124(93)
      acd124(95)=acd124(32)*acd124(88)
      acd124(96)=-acd124(26)*acd124(92)
      acd124(95)=acd124(95)+acd124(96)
      acd124(95)=acd124(3)*acd124(95)
      acd124(91)=acd124(95)+acd124(91)+acd124(93)
      acd124(93)=-acd124(17)*acd124(16)
      acd124(95)=-acd124(14)*acd124(15)
      acd124(96)=-acd124(12)*acd124(13)
      acd124(97)=-acd124(10)*acd124(11)
      acd124(98)=-acd124(4)*acd124(5)
      acd124(94)=acd124(3)*acd124(94)
      acd124(93)=acd124(94)+acd124(98)+acd124(97)+acd124(96)+acd124(95)+acd124(&
      &18)+acd124(93)
      acd124(94)=-acd124(8)*acd124(100)
      acd124(93)=acd124(94)+2.0_ki*acd124(93)
      acd124(93)=acd124(1)*acd124(93)
      acd124(94)=acd124(55)*acd124(56)
      acd124(95)=acd124(53)*acd124(54)
      acd124(96)=acd124(51)*acd124(52)
      acd124(97)=acd124(49)*acd124(50)
      acd124(98)=acd124(39)*acd124(35)
      acd124(88)=-acd124(21)*acd124(88)
      acd124(88)=acd124(88)+acd124(98)+acd124(97)+acd124(96)+acd124(94)+acd124(&
      &95)
      acd124(88)=acd124(30)*acd124(88)
      acd124(92)=acd124(21)*acd124(92)
      acd124(94)=acd124(60)*acd124(56)
      acd124(95)=acd124(59)*acd124(54)
      acd124(96)=acd124(58)*acd124(52)
      acd124(97)=acd124(57)*acd124(50)
      acd124(98)=acd124(34)*acd124(35)
      acd124(92)=acd124(98)+acd124(97)+acd124(96)+acd124(94)+acd124(95)+acd124(&
      &92)
      acd124(92)=acd124(20)*acd124(92)
      brack=acd124(86)+acd124(87)+acd124(88)+acd124(89)+acd124(90)+2.0_ki*acd12&
      &4(91)+acd124(92)+acd124(93)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd124h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd124
      complex(ki) :: brack
      acd124(1)=d(iv1,iv2)
      acd124(2)=k1(iv3)
      acd124(3)=abb124(43)
      acd124(4)=k2(iv3)
      acd124(5)=abb124(13)
      acd124(6)=l5(iv3)
      acd124(7)=l6(iv3)
      acd124(8)=e7(iv3)
      acd124(9)=abb124(29)
      acd124(10)=spvak2k1(iv3)
      acd124(11)=abb124(22)
      acd124(12)=spval5k1(iv3)
      acd124(13)=abb124(55)
      acd124(14)=spval5l6(iv3)
      acd124(15)=abb124(76)
      acd124(16)=spvak2e7(iv3)
      acd124(17)=abb124(72)
      acd124(18)=d(iv1,iv3)
      acd124(19)=k1(iv2)
      acd124(20)=k2(iv2)
      acd124(21)=l5(iv2)
      acd124(22)=l6(iv2)
      acd124(23)=e7(iv2)
      acd124(24)=spvak2k1(iv2)
      acd124(25)=spval5k1(iv2)
      acd124(26)=spval5l6(iv2)
      acd124(27)=spvak2e7(iv2)
      acd124(28)=d(iv2,iv3)
      acd124(29)=k1(iv1)
      acd124(30)=k2(iv1)
      acd124(31)=l5(iv1)
      acd124(32)=l6(iv1)
      acd124(33)=e7(iv1)
      acd124(34)=spvak2k1(iv1)
      acd124(35)=spval5k1(iv1)
      acd124(36)=spval5l6(iv1)
      acd124(37)=spvak2e7(iv1)
      acd124(38)=spvak4k3(iv3)
      acd124(39)=abb124(63)
      acd124(40)=spvak4k3(iv2)
      acd124(41)=spvak4k3(iv1)
      acd124(42)=abb124(15)
      acd124(43)=abb124(12)
      acd124(44)=abb124(9)
      acd124(45)=abb124(46)
      acd124(46)=spvak2l5(iv3)
      acd124(47)=abb124(40)
      acd124(48)=spvak2l6(iv3)
      acd124(49)=abb124(24)
      acd124(50)=spvak2l5(iv2)
      acd124(51)=spvak2l6(iv2)
      acd124(52)=spvak2l5(iv1)
      acd124(53)=spvak2l6(iv1)
      acd124(54)=acd124(17)*acd124(16)
      acd124(55)=acd124(14)*acd124(15)
      acd124(56)=acd124(12)*acd124(13)
      acd124(57)=acd124(10)*acd124(11)
      acd124(58)=acd124(4)*acd124(5)
      acd124(59)=-acd124(7)+acd124(2)-acd124(6)
      acd124(60)=-acd124(3)*acd124(59)
      acd124(54)=acd124(60)+acd124(58)+acd124(57)+acd124(56)+acd124(54)+acd124(&
      &55)
      acd124(54)=acd124(1)*acd124(54)
      acd124(55)=acd124(17)*acd124(37)
      acd124(56)=acd124(15)*acd124(36)
      acd124(57)=acd124(13)*acd124(35)
      acd124(58)=acd124(11)*acd124(34)
      acd124(60)=acd124(5)*acd124(30)
      acd124(55)=acd124(60)+acd124(58)+acd124(57)+acd124(55)+acd124(56)
      acd124(55)=acd124(28)*acd124(55)
      acd124(56)=acd124(17)*acd124(27)
      acd124(57)=acd124(15)*acd124(26)
      acd124(58)=acd124(13)*acd124(25)
      acd124(60)=acd124(11)*acd124(24)
      acd124(61)=acd124(5)*acd124(20)
      acd124(56)=acd124(61)+acd124(60)+acd124(58)+acd124(56)+acd124(57)
      acd124(56)=acd124(18)*acd124(56)
      acd124(57)=-acd124(32)+acd124(29)-acd124(31)
      acd124(58)=-acd124(28)*acd124(57)
      acd124(60)=-acd124(22)+acd124(19)-acd124(21)
      acd124(61)=-acd124(18)*acd124(60)
      acd124(58)=acd124(58)+acd124(61)
      acd124(58)=acd124(3)*acd124(58)
      acd124(54)=acd124(54)+acd124(58)+acd124(55)+acd124(56)
      acd124(55)=acd124(49)*acd124(48)
      acd124(56)=acd124(47)*acd124(46)
      acd124(58)=acd124(45)*acd124(14)
      acd124(59)=acd124(59)*acd124(39)
      acd124(61)=acd124(44)*acd124(12)
      acd124(62)=acd124(43)*acd124(10)
      acd124(63)=acd124(42)*acd124(4)
      acd124(55)=acd124(59)+acd124(63)+acd124(55)+acd124(61)+acd124(62)+acd124(&
      &56)+acd124(58)
      acd124(56)=acd124(40)*acd124(55)
      acd124(58)=acd124(49)*acd124(51)
      acd124(59)=acd124(47)*acd124(50)
      acd124(61)=acd124(45)*acd124(26)
      acd124(62)=acd124(44)*acd124(25)
      acd124(63)=acd124(43)*acd124(24)
      acd124(64)=acd124(42)*acd124(20)
      acd124(58)=acd124(62)+acd124(58)+acd124(63)+acd124(64)+acd124(59)+acd124(&
      &61)
      acd124(59)=acd124(39)*acd124(60)
      acd124(59)=acd124(59)+acd124(58)
      acd124(59)=acd124(38)*acd124(59)
      acd124(61)=2.0_ki*acd124(9)
      acd124(62)=acd124(28)*acd124(61)
      acd124(56)=acd124(59)+acd124(62)+acd124(56)
      acd124(56)=acd124(33)*acd124(56)
      acd124(55)=acd124(41)*acd124(55)
      acd124(59)=acd124(49)*acd124(53)
      acd124(62)=acd124(47)*acd124(52)
      acd124(63)=acd124(45)*acd124(36)
      acd124(64)=acd124(44)*acd124(35)
      acd124(65)=acd124(43)*acd124(34)
      acd124(66)=acd124(42)*acd124(30)
      acd124(59)=acd124(64)+acd124(59)+acd124(65)+acd124(66)+acd124(62)+acd124(&
      &63)
      acd124(62)=acd124(39)*acd124(57)
      acd124(62)=acd124(62)+acd124(59)
      acd124(62)=acd124(38)*acd124(62)
      acd124(63)=acd124(18)*acd124(61)
      acd124(55)=acd124(62)+acd124(63)+acd124(55)
      acd124(55)=acd124(23)*acd124(55)
      acd124(58)=acd124(41)*acd124(58)
      acd124(59)=acd124(40)*acd124(59)
      acd124(60)=acd124(41)*acd124(60)
      acd124(57)=acd124(40)*acd124(57)
      acd124(57)=acd124(60)+acd124(57)
      acd124(57)=acd124(39)*acd124(57)
      acd124(60)=acd124(1)*acd124(61)
      acd124(57)=acd124(57)+acd124(59)+acd124(60)+acd124(58)
      acd124(57)=acd124(8)*acd124(57)
      brack=2.0_ki*acd124(54)+acd124(55)+acd124(56)+acd124(57)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd124h2
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
      qshift = k2
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
!---#[ subroutine reconstruct_d124:
   subroutine     reconstruct_d124(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_124:
      coeffs%coeffs_124%c0 = derivative(czip)
      coeffs%coeffs_124%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_124%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_124%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_124%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_124%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_124%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_124%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_124%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_124%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_124%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_124%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_124%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_124%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_124%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_124%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_124%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_124%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_124%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_124%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_124%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_124%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_124%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_124%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_124%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_124%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_124%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_124%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_124%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_124%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_124%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_124%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_124%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_124%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_124%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_124:
   end subroutine reconstruct_d124
!---#] subroutine reconstruct_d124:
end module     p5_usbar_epnebbbarg_d124h2l1d
