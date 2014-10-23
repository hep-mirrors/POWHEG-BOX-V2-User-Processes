module     p0_dbaru_epnebbbarg_d120h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d120h2l1d.f90
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
   public :: derivative , reconstruct_d120
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd120h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(83) :: acd120
      complex(ki) :: brack
      acd120(1)=dotproduct(k1,qshift)
      acd120(2)=abb120(55)
      acd120(3)=dotproduct(k2,qshift)
      acd120(4)=dotproduct(qshift,spvak1l5)
      acd120(5)=abb120(26)
      acd120(6)=dotproduct(qshift,spvak1l6)
      acd120(7)=abb120(53)
      acd120(8)=dotproduct(qshift,spvak1k7)
      acd120(9)=abb120(50)
      acd120(10)=dotproduct(qshift,spvak2l5)
      acd120(11)=abb120(39)
      acd120(12)=dotproduct(qshift,spvak2k7)
      acd120(13)=abb120(22)
      acd120(14)=abb120(32)
      acd120(15)=dotproduct(k3,qshift)
      acd120(16)=abb120(20)
      acd120(17)=abb120(29)
      acd120(18)=abb120(41)
      acd120(19)=abb120(56)
      acd120(20)=dotproduct(k4,qshift)
      acd120(21)=dotproduct(qshift,spvak2k3)
      acd120(22)=abb120(40)
      acd120(23)=dotproduct(qshift,spvak4k2)
      acd120(24)=abb120(38)
      acd120(25)=dotproduct(qshift,spvak4k3)
      acd120(26)=abb120(37)
      acd120(27)=abb120(17)
      acd120(28)=abb120(15)
      acd120(29)=abb120(11)
      acd120(30)=abb120(13)
      acd120(31)=dotproduct(qshift,spval5k2)
      acd120(32)=abb120(58)
      acd120(33)=dotproduct(qshift,spval5k3)
      acd120(34)=abb120(54)
      acd120(35)=abb120(23)
      acd120(36)=abb120(21)
      acd120(37)=abb120(27)
      acd120(38)=abb120(18)
      acd120(39)=abb120(24)
      acd120(40)=dotproduct(qshift,spvak1k2)
      acd120(41)=abb120(36)
      acd120(42)=dotproduct(qshift,spvak1k3)
      acd120(43)=abb120(47)
      acd120(44)=abb120(43)
      acd120(45)=abb120(35)
      acd120(46)=abb120(19)
      acd120(47)=abb120(33)
      acd120(48)=abb120(25)
      acd120(49)=abb120(14)
      acd120(50)=dotproduct(qshift,spvak2l6)
      acd120(51)=abb120(16)
      acd120(52)=dotproduct(qshift,spval5l6)
      acd120(53)=abb120(28)
      acd120(54)=abb120(70)
      acd120(55)=abb120(49)
      acd120(56)=abb120(12)
      acd120(57)=abb120(34)
      acd120(58)=abb120(31)
      acd120(59)=abb120(74)
      acd120(60)=dotproduct(qshift,spval6l5)
      acd120(61)=abb120(66)
      acd120(62)=dotproduct(qshift,spval6k7)
      acd120(63)=abb120(61)
      acd120(64)=abb120(30)
      acd120(65)=acd120(15)+acd120(20)
      acd120(66)=acd120(17)*acd120(65)
      acd120(67)=acd120(33)*acd120(34)
      acd120(68)=-acd120(31)*acd120(32)
      acd120(69)=-acd120(21)*acd120(28)
      acd120(70)=acd120(25)*acd120(30)
      acd120(71)=acd120(23)*acd120(29)
      acd120(72)=acd120(3)*acd120(7)
      acd120(66)=acd120(72)+acd120(71)+acd120(70)+acd120(69)+acd120(68)-acd120(&
      &35)+acd120(67)+acd120(66)
      acd120(66)=acd120(6)*acd120(66)
      acd120(67)=-acd120(18)*acd120(65)
      acd120(68)=-acd120(21)*acd120(36)
      acd120(69)=acd120(25)*acd120(38)
      acd120(70)=acd120(23)*acd120(37)
      acd120(71)=acd120(3)*acd120(9)
      acd120(67)=acd120(71)+acd120(70)+acd120(69)-acd120(39)+acd120(68)+acd120(&
      &67)
      acd120(67)=acd120(8)*acd120(67)
      acd120(68)=-acd120(16)*acd120(65)
      acd120(69)=-acd120(21)*acd120(22)
      acd120(70)=acd120(25)*acd120(26)
      acd120(71)=acd120(23)*acd120(24)
      acd120(72)=acd120(3)*acd120(5)
      acd120(68)=acd120(72)+acd120(71)+acd120(70)-acd120(27)+acd120(69)+acd120(&
      &68)
      acd120(68)=acd120(4)*acd120(68)
      acd120(69)=acd120(65)-acd120(3)
      acd120(70)=-acd120(13)*acd120(69)
      acd120(71)=acd120(42)*acd120(36)
      acd120(72)=acd120(40)*acd120(46)
      acd120(73)=acd120(25)*acd120(48)
      acd120(74)=acd120(23)*acd120(47)
      acd120(70)=acd120(74)+acd120(73)+acd120(72)-acd120(49)+acd120(71)+acd120(&
      &70)
      acd120(70)=acd120(12)*acd120(70)
      acd120(69)=acd120(11)*acd120(69)
      acd120(71)=acd120(42)*acd120(22)
      acd120(72)=acd120(40)*acd120(41)
      acd120(73)=acd120(25)*acd120(44)
      acd120(74)=acd120(23)*acd120(43)
      acd120(69)=acd120(74)+acd120(73)+acd120(72)-acd120(45)+acd120(71)+acd120(&
      &69)
      acd120(69)=acd120(10)*acd120(69)
      acd120(71)=-acd120(52)*acd120(34)
      acd120(72)=acd120(50)*acd120(28)
      acd120(71)=acd120(71)+acd120(72)
      acd120(71)=acd120(42)*acd120(71)
      acd120(72)=acd120(52)*acd120(32)
      acd120(73)=acd120(50)*acd120(51)
      acd120(72)=acd120(72)+acd120(73)
      acd120(72)=acd120(40)*acd120(72)
      acd120(65)=-acd120(19)*acd120(65)
      acd120(73)=-acd120(62)*acd120(63)
      acd120(74)=-acd120(60)*acd120(61)
      acd120(75)=-acd120(1)*acd120(2)
      acd120(76)=-acd120(33)*acd120(59)
      acd120(77)=-acd120(31)*acd120(58)
      acd120(78)=-acd120(52)*acd120(54)
      acd120(79)=-acd120(50)*acd120(53)
      acd120(80)=-acd120(21)*acd120(55)
      acd120(81)=-acd120(25)*acd120(57)
      acd120(82)=-acd120(23)*acd120(56)
      acd120(83)=-acd120(3)*acd120(14)
      brack=acd120(64)+acd120(65)+acd120(66)+acd120(67)+acd120(68)+acd120(69)+a&
      &cd120(70)+acd120(71)+acd120(72)+acd120(73)+acd120(74)+acd120(75)+acd120(&
      &76)+acd120(77)+acd120(78)+acd120(79)+acd120(80)+acd120(81)+acd120(82)+ac&
      &d120(83)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd120h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(106) :: acd120
      complex(ki) :: brack
      acd120(1)=k1(iv1)
      acd120(2)=abb120(55)
      acd120(3)=k2(iv1)
      acd120(4)=dotproduct(qshift,spvak1l5)
      acd120(5)=abb120(26)
      acd120(6)=dotproduct(qshift,spvak1l6)
      acd120(7)=abb120(53)
      acd120(8)=dotproduct(qshift,spvak1k7)
      acd120(9)=abb120(50)
      acd120(10)=dotproduct(qshift,spvak2l5)
      acd120(11)=abb120(39)
      acd120(12)=dotproduct(qshift,spvak2k7)
      acd120(13)=abb120(22)
      acd120(14)=abb120(32)
      acd120(15)=k3(iv1)
      acd120(16)=abb120(20)
      acd120(17)=abb120(29)
      acd120(18)=abb120(41)
      acd120(19)=abb120(56)
      acd120(20)=k4(iv1)
      acd120(21)=spvak1l5(iv1)
      acd120(22)=dotproduct(k2,qshift)
      acd120(23)=dotproduct(k3,qshift)
      acd120(24)=dotproduct(k4,qshift)
      acd120(25)=dotproduct(qshift,spvak2k3)
      acd120(26)=abb120(40)
      acd120(27)=dotproduct(qshift,spvak4k2)
      acd120(28)=abb120(38)
      acd120(29)=dotproduct(qshift,spvak4k3)
      acd120(30)=abb120(37)
      acd120(31)=abb120(17)
      acd120(32)=spvak1l6(iv1)
      acd120(33)=abb120(15)
      acd120(34)=abb120(11)
      acd120(35)=abb120(13)
      acd120(36)=dotproduct(qshift,spval5k2)
      acd120(37)=abb120(58)
      acd120(38)=dotproduct(qshift,spval5k3)
      acd120(39)=abb120(54)
      acd120(40)=abb120(23)
      acd120(41)=spvak1k7(iv1)
      acd120(42)=abb120(21)
      acd120(43)=abb120(27)
      acd120(44)=abb120(18)
      acd120(45)=abb120(24)
      acd120(46)=spvak2l5(iv1)
      acd120(47)=dotproduct(qshift,spvak1k2)
      acd120(48)=abb120(36)
      acd120(49)=dotproduct(qshift,spvak1k3)
      acd120(50)=abb120(47)
      acd120(51)=abb120(43)
      acd120(52)=abb120(35)
      acd120(53)=spvak2k7(iv1)
      acd120(54)=abb120(19)
      acd120(55)=abb120(33)
      acd120(56)=abb120(25)
      acd120(57)=abb120(14)
      acd120(58)=spvak1k2(iv1)
      acd120(59)=dotproduct(qshift,spvak2l6)
      acd120(60)=abb120(16)
      acd120(61)=dotproduct(qshift,spval5l6)
      acd120(62)=spvak2l6(iv1)
      acd120(63)=abb120(28)
      acd120(64)=spval5l6(iv1)
      acd120(65)=abb120(70)
      acd120(66)=spvak1k3(iv1)
      acd120(67)=spvak2k3(iv1)
      acd120(68)=abb120(49)
      acd120(69)=spvak4k2(iv1)
      acd120(70)=abb120(12)
      acd120(71)=spvak4k3(iv1)
      acd120(72)=abb120(34)
      acd120(73)=spval5k2(iv1)
      acd120(74)=abb120(31)
      acd120(75)=spval5k3(iv1)
      acd120(76)=abb120(74)
      acd120(77)=spval6l5(iv1)
      acd120(78)=abb120(66)
      acd120(79)=spval6k7(iv1)
      acd120(80)=abb120(61)
      acd120(81)=acd120(15)+acd120(20)
      acd120(82)=-acd120(17)*acd120(81)
      acd120(83)=-acd120(39)*acd120(75)
      acd120(84)=acd120(37)*acd120(73)
      acd120(85)=acd120(33)*acd120(67)
      acd120(86)=-acd120(71)*acd120(35)
      acd120(87)=-acd120(69)*acd120(34)
      acd120(88)=-acd120(3)*acd120(7)
      acd120(82)=acd120(88)+acd120(87)+acd120(86)+acd120(85)+acd120(83)+acd120(&
      &84)+acd120(82)
      acd120(82)=acd120(6)*acd120(82)
      acd120(83)=acd120(23)+acd120(24)
      acd120(84)=-acd120(17)*acd120(83)
      acd120(85)=-acd120(39)*acd120(38)
      acd120(86)=acd120(37)*acd120(36)
      acd120(87)=acd120(33)*acd120(25)
      acd120(88)=-acd120(29)*acd120(35)
      acd120(89)=-acd120(27)*acd120(34)
      acd120(90)=-acd120(22)*acd120(7)
      acd120(84)=acd120(90)+acd120(89)+acd120(88)+acd120(87)+acd120(86)+acd120(&
      &40)+acd120(85)+acd120(84)
      acd120(84)=acd120(32)*acd120(84)
      acd120(85)=acd120(18)*acd120(83)
      acd120(86)=acd120(42)*acd120(25)
      acd120(87)=-acd120(29)*acd120(44)
      acd120(88)=-acd120(27)*acd120(43)
      acd120(89)=-acd120(22)*acd120(9)
      acd120(85)=acd120(89)+acd120(88)+acd120(87)+acd120(45)+acd120(86)+acd120(&
      &85)
      acd120(85)=acd120(41)*acd120(85)
      acd120(86)=acd120(16)*acd120(83)
      acd120(87)=acd120(26)*acd120(25)
      acd120(88)=-acd120(29)*acd120(30)
      acd120(89)=-acd120(27)*acd120(28)
      acd120(90)=-acd120(22)*acd120(5)
      acd120(86)=acd120(90)+acd120(89)+acd120(88)+acd120(31)+acd120(87)+acd120(&
      &86)
      acd120(86)=acd120(21)*acd120(86)
      acd120(87)=acd120(81)-acd120(3)
      acd120(88)=acd120(13)*acd120(87)
      acd120(89)=-acd120(58)*acd120(54)
      acd120(90)=-acd120(42)*acd120(66)
      acd120(91)=-acd120(71)*acd120(56)
      acd120(92)=-acd120(69)*acd120(55)
      acd120(88)=acd120(92)+acd120(91)+acd120(89)+acd120(90)+acd120(88)
      acd120(88)=acd120(12)*acd120(88)
      acd120(87)=-acd120(11)*acd120(87)
      acd120(89)=-acd120(58)*acd120(48)
      acd120(90)=-acd120(26)*acd120(66)
      acd120(91)=-acd120(71)*acd120(51)
      acd120(92)=-acd120(69)*acd120(50)
      acd120(87)=acd120(92)+acd120(91)+acd120(89)+acd120(90)+acd120(87)
      acd120(87)=acd120(10)*acd120(87)
      acd120(89)=-acd120(47)*acd120(54)
      acd120(90)=-acd120(42)*acd120(49)
      acd120(91)=-acd120(29)*acd120(56)
      acd120(92)=-acd120(27)*acd120(55)
      acd120(83)=acd120(22)-acd120(83)
      acd120(93)=-acd120(13)*acd120(83)
      acd120(89)=acd120(93)+acd120(92)+acd120(91)+acd120(90)+acd120(57)+acd120(&
      &89)
      acd120(89)=acd120(53)*acd120(89)
      acd120(90)=-acd120(47)*acd120(48)
      acd120(91)=-acd120(26)*acd120(49)
      acd120(92)=-acd120(29)*acd120(51)
      acd120(93)=-acd120(27)*acd120(50)
      acd120(83)=acd120(11)*acd120(83)
      acd120(83)=acd120(83)+acd120(93)+acd120(92)+acd120(91)+acd120(52)+acd120(&
      &90)
      acd120(83)=acd120(46)*acd120(83)
      acd120(90)=acd120(18)*acd120(81)
      acd120(91)=acd120(42)*acd120(67)
      acd120(92)=-acd120(71)*acd120(44)
      acd120(93)=-acd120(69)*acd120(43)
      acd120(90)=acd120(93)+acd120(91)+acd120(92)+acd120(90)
      acd120(90)=acd120(8)*acd120(90)
      acd120(91)=acd120(16)*acd120(81)
      acd120(92)=acd120(26)*acd120(67)
      acd120(93)=-acd120(71)*acd120(30)
      acd120(94)=-acd120(69)*acd120(28)
      acd120(91)=acd120(94)+acd120(92)+acd120(93)+acd120(91)
      acd120(91)=acd120(4)*acd120(91)
      acd120(92)=acd120(66)*acd120(61)
      acd120(93)=acd120(49)*acd120(64)
      acd120(92)=acd120(92)+acd120(93)
      acd120(92)=acd120(39)*acd120(92)
      acd120(93)=-acd120(58)*acd120(61)
      acd120(94)=-acd120(47)*acd120(64)
      acd120(93)=acd120(93)+acd120(94)
      acd120(93)=acd120(37)*acd120(93)
      acd120(94)=-acd120(66)*acd120(59)
      acd120(95)=-acd120(49)*acd120(62)
      acd120(94)=acd120(94)+acd120(95)
      acd120(94)=acd120(33)*acd120(94)
      acd120(95)=-acd120(8)*acd120(9)
      acd120(96)=-acd120(4)*acd120(5)
      acd120(95)=acd120(96)+acd120(14)+acd120(95)
      acd120(95)=acd120(3)*acd120(95)
      acd120(81)=acd120(19)*acd120(81)
      acd120(96)=-acd120(47)*acd120(60)
      acd120(96)=acd120(96)+acd120(63)
      acd120(96)=acd120(62)*acd120(96)
      acd120(97)=acd120(79)*acd120(80)
      acd120(98)=acd120(77)*acd120(78)
      acd120(99)=acd120(1)*acd120(2)
      acd120(100)=acd120(75)*acd120(76)
      acd120(101)=acd120(73)*acd120(74)
      acd120(102)=acd120(64)*acd120(65)
      acd120(103)=acd120(67)*acd120(68)
      acd120(104)=-acd120(58)*acd120(59)*acd120(60)
      acd120(105)=acd120(71)*acd120(72)
      acd120(106)=acd120(69)*acd120(70)
      brack=acd120(81)+acd120(82)+acd120(83)+acd120(84)+acd120(85)+acd120(86)+a&
      &cd120(87)+acd120(88)+acd120(89)+acd120(90)+acd120(91)+acd120(92)+acd120(&
      &93)+acd120(94)+acd120(95)+acd120(96)+acd120(97)+acd120(98)+acd120(99)+ac&
      &d120(100)+acd120(101)+acd120(102)+acd120(103)+acd120(104)+acd120(105)+ac&
      &d120(106)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd120h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd120
      complex(ki) :: brack
      acd120(1)=k2(iv1)
      acd120(2)=spvak1l5(iv2)
      acd120(3)=abb120(26)
      acd120(4)=spvak1l6(iv2)
      acd120(5)=abb120(53)
      acd120(6)=spvak1k7(iv2)
      acd120(7)=abb120(50)
      acd120(8)=spvak2l5(iv2)
      acd120(9)=abb120(39)
      acd120(10)=spvak2k7(iv2)
      acd120(11)=abb120(22)
      acd120(12)=k2(iv2)
      acd120(13)=spvak1l5(iv1)
      acd120(14)=spvak1l6(iv1)
      acd120(15)=spvak1k7(iv1)
      acd120(16)=spvak2l5(iv1)
      acd120(17)=spvak2k7(iv1)
      acd120(18)=k3(iv1)
      acd120(19)=abb120(20)
      acd120(20)=abb120(29)
      acd120(21)=abb120(41)
      acd120(22)=k3(iv2)
      acd120(23)=k4(iv1)
      acd120(24)=k4(iv2)
      acd120(25)=spvak2k3(iv2)
      acd120(26)=abb120(40)
      acd120(27)=spvak4k2(iv2)
      acd120(28)=abb120(38)
      acd120(29)=spvak4k3(iv2)
      acd120(30)=abb120(37)
      acd120(31)=spvak2k3(iv1)
      acd120(32)=spvak4k2(iv1)
      acd120(33)=spvak4k3(iv1)
      acd120(34)=abb120(15)
      acd120(35)=abb120(11)
      acd120(36)=abb120(13)
      acd120(37)=spval5k2(iv2)
      acd120(38)=abb120(58)
      acd120(39)=spval5k3(iv2)
      acd120(40)=abb120(54)
      acd120(41)=spval5k2(iv1)
      acd120(42)=spval5k3(iv1)
      acd120(43)=abb120(21)
      acd120(44)=abb120(27)
      acd120(45)=abb120(18)
      acd120(46)=spvak1k2(iv2)
      acd120(47)=abb120(36)
      acd120(48)=spvak1k3(iv2)
      acd120(49)=abb120(47)
      acd120(50)=abb120(43)
      acd120(51)=spvak1k2(iv1)
      acd120(52)=spvak1k3(iv1)
      acd120(53)=abb120(19)
      acd120(54)=abb120(33)
      acd120(55)=abb120(25)
      acd120(56)=spvak2l6(iv2)
      acd120(57)=abb120(16)
      acd120(58)=spval5l6(iv2)
      acd120(59)=spvak2l6(iv1)
      acd120(60)=spval5l6(iv1)
      acd120(61)=acd120(22)+acd120(24)
      acd120(62)=acd120(20)*acd120(61)
      acd120(63)=acd120(40)*acd120(39)
      acd120(64)=-acd120(38)*acd120(37)
      acd120(65)=-acd120(34)*acd120(25)
      acd120(66)=acd120(29)*acd120(36)
      acd120(67)=acd120(27)*acd120(35)
      acd120(68)=acd120(12)*acd120(5)
      acd120(62)=acd120(68)+acd120(67)+acd120(66)+acd120(65)+acd120(63)+acd120(&
      &64)+acd120(62)
      acd120(62)=acd120(14)*acd120(62)
      acd120(63)=acd120(18)+acd120(23)
      acd120(64)=acd120(20)*acd120(63)
      acd120(65)=acd120(40)*acd120(42)
      acd120(66)=-acd120(38)*acd120(41)
      acd120(67)=-acd120(34)*acd120(31)
      acd120(68)=acd120(33)*acd120(36)
      acd120(69)=acd120(32)*acd120(35)
      acd120(70)=acd120(1)*acd120(5)
      acd120(64)=acd120(70)+acd120(69)+acd120(68)+acd120(67)+acd120(65)+acd120(&
      &66)+acd120(64)
      acd120(64)=acd120(4)*acd120(64)
      acd120(65)=-acd120(21)*acd120(61)
      acd120(66)=-acd120(43)*acd120(25)
      acd120(67)=acd120(29)*acd120(45)
      acd120(68)=acd120(27)*acd120(44)
      acd120(69)=acd120(12)*acd120(7)
      acd120(65)=acd120(69)+acd120(68)+acd120(66)+acd120(67)+acd120(65)
      acd120(65)=acd120(15)*acd120(65)
      acd120(66)=-acd120(19)*acd120(61)
      acd120(67)=-acd120(26)*acd120(25)
      acd120(68)=acd120(29)*acd120(30)
      acd120(69)=acd120(27)*acd120(28)
      acd120(70)=acd120(12)*acd120(3)
      acd120(66)=acd120(70)+acd120(69)+acd120(67)+acd120(68)+acd120(66)
      acd120(66)=acd120(13)*acd120(66)
      acd120(67)=-acd120(21)*acd120(63)
      acd120(68)=-acd120(43)*acd120(31)
      acd120(69)=acd120(33)*acd120(45)
      acd120(70)=acd120(32)*acd120(44)
      acd120(71)=acd120(1)*acd120(7)
      acd120(67)=acd120(71)+acd120(70)+acd120(68)+acd120(69)+acd120(67)
      acd120(67)=acd120(6)*acd120(67)
      acd120(68)=-acd120(19)*acd120(63)
      acd120(69)=-acd120(26)*acd120(31)
      acd120(70)=acd120(33)*acd120(30)
      acd120(71)=acd120(32)*acd120(28)
      acd120(72)=acd120(1)*acd120(3)
      acd120(68)=acd120(72)+acd120(71)+acd120(69)+acd120(70)+acd120(68)
      acd120(68)=acd120(2)*acd120(68)
      acd120(69)=acd120(46)*acd120(53)
      acd120(70)=acd120(43)*acd120(48)
      acd120(71)=acd120(29)*acd120(55)
      acd120(72)=acd120(27)*acd120(54)
      acd120(61)=acd120(12)-acd120(61)
      acd120(73)=acd120(11)*acd120(61)
      acd120(69)=acd120(73)+acd120(72)+acd120(71)+acd120(69)+acd120(70)
      acd120(69)=acd120(17)*acd120(69)
      acd120(70)=acd120(46)*acd120(47)
      acd120(71)=acd120(26)*acd120(48)
      acd120(72)=acd120(29)*acd120(50)
      acd120(73)=acd120(27)*acd120(49)
      acd120(61)=-acd120(9)*acd120(61)
      acd120(61)=acd120(61)+acd120(73)+acd120(72)+acd120(70)+acd120(71)
      acd120(61)=acd120(16)*acd120(61)
      acd120(70)=acd120(51)*acd120(53)
      acd120(71)=acd120(43)*acd120(52)
      acd120(72)=acd120(33)*acd120(55)
      acd120(73)=acd120(32)*acd120(54)
      acd120(63)=acd120(1)-acd120(63)
      acd120(74)=acd120(11)*acd120(63)
      acd120(70)=acd120(74)+acd120(73)+acd120(72)+acd120(70)+acd120(71)
      acd120(70)=acd120(10)*acd120(70)
      acd120(71)=acd120(51)*acd120(47)
      acd120(72)=acd120(26)*acd120(52)
      acd120(73)=acd120(33)*acd120(50)
      acd120(74)=acd120(32)*acd120(49)
      acd120(63)=-acd120(9)*acd120(63)
      acd120(63)=acd120(63)+acd120(74)+acd120(73)+acd120(71)+acd120(72)
      acd120(63)=acd120(8)*acd120(63)
      acd120(71)=acd120(51)*acd120(56)
      acd120(72)=acd120(46)*acd120(59)
      acd120(71)=acd120(71)+acd120(72)
      acd120(71)=acd120(57)*acd120(71)
      acd120(72)=-acd120(52)*acd120(58)
      acd120(73)=-acd120(48)*acd120(60)
      acd120(72)=acd120(72)+acd120(73)
      acd120(72)=acd120(40)*acd120(72)
      acd120(73)=acd120(51)*acd120(58)
      acd120(74)=acd120(46)*acd120(60)
      acd120(73)=acd120(73)+acd120(74)
      acd120(73)=acd120(38)*acd120(73)
      acd120(74)=acd120(52)*acd120(56)
      acd120(75)=acd120(48)*acd120(59)
      acd120(74)=acd120(74)+acd120(75)
      acd120(74)=acd120(34)*acd120(74)
      brack=acd120(61)+acd120(62)+acd120(63)+acd120(64)+acd120(65)+acd120(66)+a&
      &cd120(67)+acd120(68)+acd120(69)+acd120(70)+acd120(71)+acd120(72)+acd120(&
      &73)+acd120(74)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd120h2
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
      qshift = k7+k6+k5
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
!---#[ subroutine reconstruct_d120:
   subroutine     reconstruct_d120(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_120:
      coeffs%coeffs_120%c0 = derivative(czip)
      coeffs%coeffs_120%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_120%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_120%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_120%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_120%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_120%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_120%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_120%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_120%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_120%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_120%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_120%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_120%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_120%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_120:
   end subroutine reconstruct_d120
!---#] subroutine reconstruct_d120:
end module     p0_dbaru_epnebbbarg_d120h2l1d
