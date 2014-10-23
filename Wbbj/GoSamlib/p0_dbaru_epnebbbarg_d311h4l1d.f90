module     p0_dbaru_epnebbbarg_d311h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d311h4l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d311
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd311h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(85) :: acd311
      complex(ki) :: brack
      acd311(1)=dotproduct(k2,qshift)
      acd311(2)=dotproduct(qshift,spval6k2)
      acd311(3)=dotproduct(qshift,spvak7k2)
      acd311(4)=abb311(59)
      acd311(5)=abb311(31)
      acd311(6)=abb311(57)
      acd311(7)=abb311(38)
      acd311(8)=dotproduct(k3,qshift)
      acd311(9)=abb311(48)
      acd311(10)=dotproduct(qshift,spvak4k2)
      acd311(11)=abb311(53)
      acd311(12)=abb311(62)
      acd311(13)=abb311(55)
      acd311(14)=abb311(76)
      acd311(15)=dotproduct(k4,qshift)
      acd311(16)=dotproduct(l6,qshift)
      acd311(17)=abb311(102)
      acd311(18)=abb311(45)
      acd311(19)=abb311(37)
      acd311(20)=dotproduct(k7,qshift)
      acd311(21)=abb311(25)
      acd311(22)=abb311(71)
      acd311(23)=dotproduct(qshift,qshift)
      acd311(24)=abb311(36)
      acd311(25)=abb311(67)
      acd311(26)=abb311(41)
      acd311(27)=abb311(12)
      acd311(28)=dotproduct(qshift,spvak4k3)
      acd311(29)=abb311(29)
      acd311(30)=abb311(32)
      acd311(31)=abb311(15)
      acd311(32)=abb311(18)
      acd311(33)=abb311(13)
      acd311(34)=abb311(43)
      acd311(35)=abb311(34)
      acd311(36)=abb311(39)
      acd311(37)=abb311(27)
      acd311(38)=dotproduct(qshift,spvak1k2)
      acd311(39)=abb311(14)
      acd311(40)=dotproduct(qshift,spvak1k3)
      acd311(41)=abb311(52)
      acd311(42)=dotproduct(qshift,spvak3k2)
      acd311(43)=abb311(30)
      acd311(44)=abb311(35)
      acd311(45)=dotproduct(qshift,spval5k2)
      acd311(46)=abb311(81)
      acd311(47)=dotproduct(qshift,spval5k3)
      acd311(48)=abb311(80)
      acd311(49)=dotproduct(qshift,spval6k3)
      acd311(50)=abb311(107)
      acd311(51)=dotproduct(qshift,spval6k7)
      acd311(52)=abb311(23)
      acd311(53)=abb311(16)
      acd311(54)=abb311(42)
      acd311(55)=abb311(24)
      acd311(56)=abb311(11)
      acd311(57)=abb311(51)
      acd311(58)=abb311(44)
      acd311(59)=abb311(28)
      acd311(60)=abb311(70)
      acd311(61)=abb311(60)
      acd311(62)=dotproduct(qshift,spval6k1)
      acd311(63)=abb311(20)
      acd311(64)=abb311(89)
      acd311(65)=dotproduct(qshift,spval6l5)
      acd311(66)=abb311(106)
      acd311(67)=abb311(46)
      acd311(68)=abb311(22)
      acd311(69)=acd311(8)+acd311(15)
      acd311(70)=acd311(11)*acd311(69)
      acd311(71)=-acd311(28)*acd311(36)
      acd311(72)=-acd311(10)*acd311(35)
      acd311(70)=acd311(72)+acd311(71)+acd311(37)+acd311(70)
      acd311(70)=acd311(10)*acd311(70)
      acd311(71)=-acd311(1)+acd311(69)
      acd311(71)=acd311(4)*acd311(71)
      acd311(72)=-acd311(28)*acd311(29)
      acd311(73)=-acd311(10)*acd311(27)
      acd311(71)=acd311(73)+acd311(72)+acd311(30)+acd311(71)
      acd311(71)=acd311(2)*acd311(71)
      acd311(72)=-acd311(12)*acd311(69)
      acd311(73)=acd311(49)*acd311(50)
      acd311(74)=acd311(47)*acd311(48)
      acd311(75)=acd311(45)*acd311(46)
      acd311(76)=acd311(40)*acd311(41)
      acd311(77)=acd311(38)*acd311(39)
      acd311(78)=-acd311(23)*acd311(25)
      acd311(79)=acd311(20)*acd311(21)
      acd311(80)=-acd311(17)*acd311(51)
      acd311(81)=acd311(16)*acd311(18)
      acd311(82)=acd311(1)*acd311(6)
      acd311(83)=-acd311(42)*acd311(43)
      acd311(83)=acd311(44)+acd311(83)
      acd311(83)=acd311(28)*acd311(83)
      acd311(84)=acd311(3)*acd311(34)
      acd311(70)=acd311(84)+acd311(71)+acd311(70)+acd311(83)+acd311(82)+acd311(&
      &81)+acd311(80)+acd311(79)+acd311(78)+acd311(77)+acd311(76)+acd311(75)+ac&
      &d311(74)-acd311(52)+acd311(73)+acd311(72)
      acd311(70)=acd311(3)*acd311(70)
      acd311(71)=-acd311(9)*acd311(69)
      acd311(72)=-acd311(16)+acd311(20)
      acd311(72)=acd311(17)*acd311(72)
      acd311(73)=-acd311(23)*acd311(24)
      acd311(74)=acd311(1)*acd311(5)
      acd311(75)=acd311(28)*acd311(32)
      acd311(76)=acd311(10)*acd311(31)
      acd311(71)=acd311(76)+acd311(75)+acd311(74)-acd311(33)+acd311(73)+acd311(&
      &72)+acd311(71)
      acd311(71)=acd311(2)*acd311(71)
      acd311(72)=-acd311(13)*acd311(69)
      acd311(73)=acd311(28)*acd311(54)
      acd311(74)=acd311(10)*acd311(53)
      acd311(72)=acd311(74)+acd311(73)-acd311(55)+acd311(72)
      acd311(72)=acd311(10)*acd311(72)
      acd311(69)=acd311(14)*acd311(69)
      acd311(73)=-acd311(65)*acd311(66)
      acd311(74)=-acd311(62)*acd311(63)
      acd311(75)=-acd311(51)*acd311(67)
      acd311(76)=-acd311(49)*acd311(64)
      acd311(77)=-acd311(47)*acd311(61)
      acd311(78)=-acd311(45)*acd311(60)
      acd311(79)=-acd311(40)*acd311(57)
      acd311(80)=-acd311(38)*acd311(56)
      acd311(81)=acd311(23)*acd311(26)
      acd311(82)=-acd311(20)*acd311(22)
      acd311(83)=-acd311(16)*acd311(19)
      acd311(84)=-acd311(1)*acd311(7)
      acd311(85)=acd311(42)*acd311(58)
      acd311(85)=-acd311(59)+acd311(85)
      acd311(85)=acd311(28)*acd311(85)
      brack=acd311(68)+acd311(69)+acd311(70)+acd311(71)+acd311(72)+acd311(73)+a&
      &cd311(74)+acd311(75)+acd311(76)+acd311(77)+acd311(78)+acd311(79)+acd311(&
      &80)+acd311(81)+acd311(82)+acd311(83)+acd311(84)+acd311(85)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd311h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(110) :: acd311
      complex(ki) :: brack
      acd311(1)=k2(iv1)
      acd311(2)=dotproduct(qshift,spval6k2)
      acd311(3)=dotproduct(qshift,spvak7k2)
      acd311(4)=abb311(59)
      acd311(5)=abb311(31)
      acd311(6)=abb311(57)
      acd311(7)=abb311(38)
      acd311(8)=k3(iv1)
      acd311(9)=abb311(48)
      acd311(10)=dotproduct(qshift,spvak4k2)
      acd311(11)=abb311(53)
      acd311(12)=abb311(62)
      acd311(13)=abb311(55)
      acd311(14)=abb311(76)
      acd311(15)=k4(iv1)
      acd311(16)=l6(iv1)
      acd311(17)=abb311(102)
      acd311(18)=abb311(45)
      acd311(19)=abb311(37)
      acd311(20)=k7(iv1)
      acd311(21)=abb311(25)
      acd311(22)=abb311(71)
      acd311(23)=qshift(iv1)
      acd311(24)=abb311(36)
      acd311(25)=abb311(67)
      acd311(26)=abb311(41)
      acd311(27)=spval6k2(iv1)
      acd311(28)=dotproduct(k2,qshift)
      acd311(29)=dotproduct(k3,qshift)
      acd311(30)=dotproduct(k4,qshift)
      acd311(31)=dotproduct(l6,qshift)
      acd311(32)=dotproduct(k7,qshift)
      acd311(33)=dotproduct(qshift,qshift)
      acd311(34)=abb311(12)
      acd311(35)=dotproduct(qshift,spvak4k3)
      acd311(36)=abb311(29)
      acd311(37)=abb311(32)
      acd311(38)=abb311(15)
      acd311(39)=abb311(18)
      acd311(40)=abb311(13)
      acd311(41)=spvak7k2(iv1)
      acd311(42)=abb311(43)
      acd311(43)=abb311(34)
      acd311(44)=abb311(39)
      acd311(45)=abb311(27)
      acd311(46)=dotproduct(qshift,spvak1k2)
      acd311(47)=abb311(14)
      acd311(48)=dotproduct(qshift,spvak1k3)
      acd311(49)=abb311(52)
      acd311(50)=dotproduct(qshift,spvak3k2)
      acd311(51)=abb311(30)
      acd311(52)=abb311(35)
      acd311(53)=dotproduct(qshift,spval5k2)
      acd311(54)=abb311(81)
      acd311(55)=dotproduct(qshift,spval5k3)
      acd311(56)=abb311(80)
      acd311(57)=dotproduct(qshift,spval6k3)
      acd311(58)=abb311(107)
      acd311(59)=dotproduct(qshift,spval6k7)
      acd311(60)=abb311(23)
      acd311(61)=spvak4k2(iv1)
      acd311(62)=abb311(16)
      acd311(63)=abb311(42)
      acd311(64)=abb311(24)
      acd311(65)=spvak1k2(iv1)
      acd311(66)=abb311(11)
      acd311(67)=spvak1k3(iv1)
      acd311(68)=abb311(51)
      acd311(69)=spvak3k2(iv1)
      acd311(70)=abb311(44)
      acd311(71)=spvak4k3(iv1)
      acd311(72)=abb311(28)
      acd311(73)=spval5k2(iv1)
      acd311(74)=abb311(70)
      acd311(75)=spval5k3(iv1)
      acd311(76)=abb311(60)
      acd311(77)=spval6k1(iv1)
      acd311(78)=abb311(20)
      acd311(79)=spval6k3(iv1)
      acd311(80)=abb311(89)
      acd311(81)=spval6l5(iv1)
      acd311(82)=abb311(106)
      acd311(83)=spval6k7(iv1)
      acd311(84)=abb311(46)
      acd311(85)=acd311(8)+acd311(15)
      acd311(86)=acd311(11)*acd311(85)
      acd311(87)=-acd311(71)*acd311(44)
      acd311(88)=2.0_ki*acd311(61)
      acd311(89)=-acd311(43)*acd311(88)
      acd311(90)=-acd311(27)*acd311(34)
      acd311(86)=acd311(90)+acd311(89)+acd311(87)+acd311(86)
      acd311(86)=acd311(10)*acd311(86)
      acd311(87)=-acd311(71)*acd311(36)
      acd311(89)=-acd311(1)+acd311(85)
      acd311(89)=acd311(4)*acd311(89)
      acd311(90)=-acd311(61)*acd311(34)
      acd311(87)=acd311(90)+acd311(87)+acd311(89)
      acd311(87)=acd311(2)*acd311(87)
      acd311(89)=acd311(29)+acd311(30)
      acd311(90)=acd311(11)*acd311(89)
      acd311(91)=acd311(35)*acd311(44)
      acd311(90)=-acd311(90)+acd311(91)-acd311(45)
      acd311(91)=-acd311(61)*acd311(90)
      acd311(92)=acd311(89)-acd311(28)
      acd311(92)=acd311(92)*acd311(4)
      acd311(93)=acd311(35)*acd311(36)
      acd311(92)=acd311(92)-acd311(93)+acd311(37)
      acd311(93)=acd311(27)*acd311(92)
      acd311(94)=-acd311(12)*acd311(85)
      acd311(95)=acd311(58)*acd311(79)
      acd311(96)=acd311(56)*acd311(75)
      acd311(97)=acd311(54)*acd311(73)
      acd311(98)=acd311(49)*acd311(67)
      acd311(99)=acd311(47)*acd311(65)
      acd311(100)=2.0_ki*acd311(23)
      acd311(101)=-acd311(25)*acd311(100)
      acd311(102)=acd311(20)*acd311(21)
      acd311(103)=acd311(16)*acd311(18)
      acd311(104)=acd311(1)*acd311(6)
      acd311(105)=-acd311(17)*acd311(83)
      acd311(106)=acd311(50)*acd311(51)
      acd311(106)=acd311(106)-acd311(52)
      acd311(107)=-acd311(71)*acd311(106)
      acd311(108)=acd311(35)*acd311(69)
      acd311(109)=-acd311(51)*acd311(108)
      acd311(110)=acd311(41)*acd311(42)
      acd311(86)=2.0_ki*acd311(110)+acd311(87)+acd311(86)+acd311(93)+acd311(91)&
      &+acd311(109)+acd311(107)+acd311(105)+acd311(104)+acd311(103)+acd311(102)&
      &+acd311(101)+acd311(99)+acd311(98)+acd311(97)+acd311(95)+acd311(96)+acd3&
      &11(94)
      acd311(86)=acd311(3)*acd311(86)
      acd311(87)=-acd311(10)*acd311(43)
      acd311(87)=acd311(87)-acd311(90)
      acd311(87)=acd311(10)*acd311(87)
      acd311(90)=-acd311(10)*acd311(34)
      acd311(90)=acd311(90)+acd311(92)
      acd311(90)=acd311(2)*acd311(90)
      acd311(91)=-acd311(12)*acd311(89)
      acd311(92)=acd311(58)*acd311(57)
      acd311(93)=acd311(56)*acd311(55)
      acd311(94)=acd311(54)*acd311(53)
      acd311(95)=acd311(49)*acd311(48)
      acd311(96)=acd311(47)*acd311(46)
      acd311(97)=-acd311(25)*acd311(33)
      acd311(98)=acd311(21)*acd311(32)
      acd311(99)=acd311(18)*acd311(31)
      acd311(101)=acd311(28)*acd311(6)
      acd311(102)=-acd311(17)*acd311(59)
      acd311(103)=-acd311(35)*acd311(106)
      acd311(87)=acd311(90)+acd311(87)+acd311(103)+acd311(102)+acd311(101)+acd3&
      &11(99)+acd311(98)+acd311(97)+acd311(96)+acd311(95)+acd311(94)+acd311(93)&
      &-acd311(60)+acd311(92)+acd311(91)
      acd311(87)=acd311(41)*acd311(87)
      acd311(90)=-acd311(9)*acd311(85)
      acd311(91)=-acd311(24)*acd311(100)
      acd311(92)=acd311(1)*acd311(5)
      acd311(93)=acd311(20)-acd311(16)
      acd311(93)=acd311(17)*acd311(93)
      acd311(94)=acd311(71)*acd311(39)
      acd311(95)=acd311(61)*acd311(38)
      acd311(90)=acd311(95)+acd311(94)+acd311(93)+acd311(91)+acd311(92)+acd311(&
      &90)
      acd311(90)=acd311(2)*acd311(90)
      acd311(91)=-acd311(9)*acd311(89)
      acd311(92)=-acd311(24)*acd311(33)
      acd311(93)=acd311(28)*acd311(5)
      acd311(94)=acd311(32)-acd311(31)
      acd311(94)=acd311(17)*acd311(94)
      acd311(95)=acd311(35)*acd311(39)
      acd311(91)=acd311(95)+acd311(94)+acd311(93)-acd311(40)+acd311(92)+acd311(&
      &91)
      acd311(91)=acd311(27)*acd311(91)
      acd311(92)=-acd311(13)*acd311(85)
      acd311(93)=acd311(71)*acd311(63)
      acd311(88)=acd311(62)*acd311(88)
      acd311(94)=acd311(27)*acd311(38)
      acd311(88)=acd311(94)+acd311(88)+acd311(93)+acd311(92)
      acd311(88)=acd311(10)*acd311(88)
      acd311(89)=-acd311(13)*acd311(89)
      acd311(92)=acd311(35)*acd311(63)
      acd311(89)=acd311(92)-acd311(64)+acd311(89)
      acd311(89)=acd311(61)*acd311(89)
      acd311(85)=acd311(14)*acd311(85)
      acd311(92)=-acd311(81)*acd311(82)
      acd311(93)=-acd311(77)*acd311(78)
      acd311(94)=-acd311(83)*acd311(84)
      acd311(95)=-acd311(79)*acd311(80)
      acd311(96)=-acd311(75)*acd311(76)
      acd311(97)=-acd311(73)*acd311(74)
      acd311(98)=-acd311(67)*acd311(68)
      acd311(99)=-acd311(65)*acd311(66)
      acd311(100)=acd311(26)*acd311(100)
      acd311(101)=-acd311(20)*acd311(22)
      acd311(102)=-acd311(16)*acd311(19)
      acd311(103)=-acd311(1)*acd311(7)
      acd311(104)=acd311(50)*acd311(70)
      acd311(104)=-acd311(72)+acd311(104)
      acd311(104)=acd311(71)*acd311(104)
      acd311(105)=acd311(70)*acd311(108)
      brack=acd311(85)+acd311(86)+acd311(87)+acd311(88)+acd311(89)+acd311(90)+a&
      &cd311(91)+acd311(92)+acd311(93)+acd311(94)+acd311(95)+acd311(96)+acd311(&
      &97)+acd311(98)+acd311(99)+acd311(100)+acd311(101)+acd311(102)+acd311(103&
      &)+acd311(104)+acd311(105)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd311h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(102) :: acd311
      complex(ki) :: brack
      acd311(1)=d(iv1,iv2)
      acd311(2)=dotproduct(qshift,spval6k2)
      acd311(3)=abb311(36)
      acd311(4)=dotproduct(qshift,spvak7k2)
      acd311(5)=abb311(67)
      acd311(6)=abb311(41)
      acd311(7)=k2(iv1)
      acd311(8)=spval6k2(iv2)
      acd311(9)=abb311(59)
      acd311(10)=abb311(31)
      acd311(11)=spvak7k2(iv2)
      acd311(12)=abb311(57)
      acd311(13)=k2(iv2)
      acd311(14)=spval6k2(iv1)
      acd311(15)=spvak7k2(iv1)
      acd311(16)=k3(iv1)
      acd311(17)=abb311(48)
      acd311(18)=dotproduct(qshift,spvak4k2)
      acd311(19)=abb311(53)
      acd311(20)=abb311(62)
      acd311(21)=spvak4k2(iv2)
      acd311(22)=abb311(55)
      acd311(23)=k3(iv2)
      acd311(24)=spvak4k2(iv1)
      acd311(25)=k4(iv1)
      acd311(26)=k4(iv2)
      acd311(27)=l6(iv1)
      acd311(28)=abb311(102)
      acd311(29)=abb311(45)
      acd311(30)=l6(iv2)
      acd311(31)=k7(iv1)
      acd311(32)=abb311(25)
      acd311(33)=k7(iv2)
      acd311(34)=qshift(iv1)
      acd311(35)=qshift(iv2)
      acd311(36)=dotproduct(k2,qshift)
      acd311(37)=dotproduct(k3,qshift)
      acd311(38)=dotproduct(k4,qshift)
      acd311(39)=abb311(12)
      acd311(40)=dotproduct(qshift,spvak4k3)
      acd311(41)=abb311(29)
      acd311(42)=abb311(32)
      acd311(43)=abb311(15)
      acd311(44)=spvak4k3(iv2)
      acd311(45)=abb311(18)
      acd311(46)=spvak4k3(iv1)
      acd311(47)=abb311(43)
      acd311(48)=abb311(34)
      acd311(49)=abb311(39)
      acd311(50)=abb311(27)
      acd311(51)=spvak1k2(iv2)
      acd311(52)=abb311(14)
      acd311(53)=spvak1k3(iv2)
      acd311(54)=abb311(52)
      acd311(55)=spvak3k2(iv2)
      acd311(56)=abb311(30)
      acd311(57)=dotproduct(qshift,spvak3k2)
      acd311(58)=abb311(35)
      acd311(59)=spval5k2(iv2)
      acd311(60)=abb311(81)
      acd311(61)=spval5k3(iv2)
      acd311(62)=abb311(80)
      acd311(63)=spval6k3(iv2)
      acd311(64)=abb311(107)
      acd311(65)=spval6k7(iv2)
      acd311(66)=spvak1k2(iv1)
      acd311(67)=spvak1k3(iv1)
      acd311(68)=spvak3k2(iv1)
      acd311(69)=spval5k2(iv1)
      acd311(70)=spval5k3(iv1)
      acd311(71)=spval6k3(iv1)
      acd311(72)=spval6k7(iv1)
      acd311(73)=abb311(16)
      acd311(74)=abb311(42)
      acd311(75)=abb311(44)
      acd311(76)=acd311(40)*acd311(49)
      acd311(77)=acd311(37)+acd311(38)
      acd311(78)=acd311(77)*acd311(19)
      acd311(79)=2.0_ki*acd311(48)
      acd311(80)=acd311(79)*acd311(18)
      acd311(81)=acd311(2)*acd311(39)
      acd311(76)=acd311(76)-acd311(78)+acd311(80)+acd311(81)-acd311(50)
      acd311(78)=-acd311(24)*acd311(76)
      acd311(80)=acd311(56)*acd311(57)
      acd311(81)=acd311(18)*acd311(49)
      acd311(82)=acd311(2)*acd311(41)
      acd311(80)=acd311(81)+acd311(82)+acd311(80)-acd311(58)
      acd311(81)=-acd311(46)*acd311(80)
      acd311(77)=acd311(77)-acd311(36)
      acd311(77)=acd311(77)*acd311(9)
      acd311(82)=acd311(40)*acd311(41)
      acd311(83)=acd311(18)*acd311(39)
      acd311(77)=-acd311(77)-acd311(42)+acd311(82)+acd311(83)
      acd311(82)=-acd311(14)*acd311(77)
      acd311(83)=acd311(19)*acd311(18)
      acd311(83)=acd311(83)-acd311(20)
      acd311(84)=acd311(16)+acd311(25)
      acd311(85)=acd311(84)*acd311(83)
      acd311(86)=acd311(84)-acd311(7)
      acd311(87)=acd311(9)*acd311(2)
      acd311(88)=acd311(86)*acd311(87)
      acd311(89)=acd311(64)*acd311(71)
      acd311(90)=acd311(62)*acd311(70)
      acd311(91)=acd311(60)*acd311(69)
      acd311(92)=acd311(54)*acd311(67)
      acd311(93)=acd311(52)*acd311(66)
      acd311(94)=acd311(31)*acd311(32)
      acd311(95)=acd311(27)*acd311(29)
      acd311(96)=2.0_ki*acd311(5)
      acd311(97)=-acd311(34)*acd311(96)
      acd311(98)=acd311(7)*acd311(12)
      acd311(99)=acd311(40)*acd311(56)
      acd311(100)=-acd311(68)*acd311(99)
      acd311(101)=-acd311(28)*acd311(72)
      acd311(102)=acd311(15)*acd311(47)
      acd311(78)=2.0_ki*acd311(102)+acd311(82)+acd311(88)+acd311(78)+acd311(101&
      &)+acd311(100)+acd311(98)+acd311(97)+acd311(95)+acd311(94)+acd311(93)+acd&
      &311(92)+acd311(91)+acd311(89)+acd311(90)+acd311(81)+acd311(85)
      acd311(78)=acd311(11)*acd311(78)
      acd311(76)=-acd311(21)*acd311(76)
      acd311(80)=-acd311(44)*acd311(80)
      acd311(77)=-acd311(8)*acd311(77)
      acd311(81)=acd311(23)+acd311(26)
      acd311(82)=acd311(81)*acd311(83)
      acd311(83)=acd311(81)-acd311(13)
      acd311(85)=acd311(83)*acd311(87)
      acd311(87)=acd311(64)*acd311(63)
      acd311(88)=acd311(62)*acd311(61)
      acd311(89)=acd311(60)*acd311(59)
      acd311(90)=acd311(54)*acd311(53)
      acd311(91)=acd311(52)*acd311(51)
      acd311(92)=acd311(32)*acd311(33)
      acd311(93)=acd311(29)*acd311(30)
      acd311(94)=-acd311(35)*acd311(96)
      acd311(95)=acd311(13)*acd311(12)
      acd311(96)=-acd311(55)*acd311(99)
      acd311(97)=-acd311(28)*acd311(65)
      acd311(76)=acd311(77)+acd311(85)+acd311(76)+acd311(97)+acd311(96)+acd311(&
      &95)+acd311(94)+acd311(93)+acd311(92)+acd311(91)+acd311(90)+acd311(89)+ac&
      &d311(87)+acd311(88)+acd311(80)+acd311(82)
      acd311(76)=acd311(15)*acd311(76)
      acd311(77)=-acd311(17)*acd311(81)
      acd311(80)=2.0_ki*acd311(3)
      acd311(82)=-acd311(35)*acd311(80)
      acd311(85)=acd311(13)*acd311(10)
      acd311(87)=acd311(33)-acd311(30)
      acd311(87)=acd311(28)*acd311(87)
      acd311(88)=acd311(44)*acd311(45)
      acd311(89)=acd311(21)*acd311(43)
      acd311(77)=acd311(89)+acd311(88)+acd311(87)+acd311(82)+acd311(85)+acd311(&
      &77)
      acd311(77)=acd311(14)*acd311(77)
      acd311(82)=-acd311(17)*acd311(84)
      acd311(80)=-acd311(34)*acd311(80)
      acd311(85)=acd311(7)*acd311(10)
      acd311(87)=acd311(31)-acd311(27)
      acd311(87)=acd311(28)*acd311(87)
      acd311(88)=acd311(46)*acd311(45)
      acd311(89)=acd311(24)*acd311(43)
      acd311(80)=acd311(89)+acd311(88)+acd311(87)+acd311(80)+acd311(85)+acd311(&
      &82)
      acd311(80)=acd311(8)*acd311(80)
      acd311(82)=-acd311(46)*acd311(49)
      acd311(85)=acd311(19)*acd311(84)
      acd311(79)=-acd311(24)*acd311(79)
      acd311(79)=acd311(79)+acd311(82)+acd311(85)
      acd311(79)=acd311(21)*acd311(79)
      acd311(82)=-acd311(44)*acd311(41)
      acd311(85)=-acd311(21)*acd311(39)
      acd311(83)=acd311(9)*acd311(83)
      acd311(82)=acd311(83)+acd311(82)+acd311(85)
      acd311(82)=acd311(14)*acd311(82)
      acd311(83)=-acd311(46)*acd311(41)
      acd311(85)=-acd311(24)*acd311(39)
      acd311(86)=acd311(9)*acd311(86)
      acd311(83)=acd311(86)+acd311(83)+acd311(85)
      acd311(83)=acd311(8)*acd311(83)
      acd311(85)=acd311(46)*acd311(55)
      acd311(86)=acd311(44)*acd311(68)
      acd311(85)=acd311(85)+acd311(86)
      acd311(86)=-acd311(56)*acd311(85)
      acd311(87)=-acd311(44)*acd311(49)
      acd311(88)=acd311(19)*acd311(81)
      acd311(87)=acd311(87)+acd311(88)
      acd311(87)=acd311(24)*acd311(87)
      acd311(88)=2.0_ki*acd311(1)
      acd311(89)=-acd311(5)*acd311(88)
      acd311(79)=acd311(83)+acd311(82)+acd311(79)+acd311(87)+acd311(89)+acd311(&
      &86)
      acd311(79)=acd311(4)*acd311(79)
      acd311(82)=-acd311(22)*acd311(84)
      acd311(83)=acd311(46)*acd311(74)
      acd311(84)=acd311(24)*acd311(73)
      acd311(82)=2.0_ki*acd311(84)+acd311(83)+acd311(82)
      acd311(82)=acd311(21)*acd311(82)
      acd311(83)=acd311(75)*acd311(85)
      acd311(84)=-acd311(2)*acd311(3)
      acd311(84)=acd311(84)+acd311(6)
      acd311(84)=acd311(88)*acd311(84)
      acd311(81)=-acd311(22)*acd311(81)
      acd311(85)=acd311(44)*acd311(74)
      acd311(81)=acd311(85)+acd311(81)
      acd311(81)=acd311(24)*acd311(81)
      brack=acd311(76)+acd311(77)+acd311(78)+acd311(79)+acd311(80)+acd311(81)+a&
      &cd311(82)+acd311(83)+acd311(84)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd311h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd311
      complex(ki) :: brack
      acd311(1)=d(iv1,iv2)
      acd311(2)=spval6k2(iv3)
      acd311(3)=abb311(36)
      acd311(4)=spvak7k2(iv3)
      acd311(5)=abb311(67)
      acd311(6)=d(iv1,iv3)
      acd311(7)=spval6k2(iv2)
      acd311(8)=spvak7k2(iv2)
      acd311(9)=d(iv2,iv3)
      acd311(10)=spval6k2(iv1)
      acd311(11)=spvak7k2(iv1)
      acd311(12)=k2(iv1)
      acd311(13)=abb311(59)
      acd311(14)=k2(iv2)
      acd311(15)=k2(iv3)
      acd311(16)=k3(iv1)
      acd311(17)=spvak4k2(iv3)
      acd311(18)=abb311(53)
      acd311(19)=spvak4k2(iv2)
      acd311(20)=k3(iv2)
      acd311(21)=spvak4k2(iv1)
      acd311(22)=k3(iv3)
      acd311(23)=k4(iv1)
      acd311(24)=k4(iv2)
      acd311(25)=k4(iv3)
      acd311(26)=abb311(12)
      acd311(27)=spvak4k3(iv3)
      acd311(28)=abb311(29)
      acd311(29)=spvak4k3(iv2)
      acd311(30)=spvak4k3(iv1)
      acd311(31)=abb311(34)
      acd311(32)=abb311(39)
      acd311(33)=spvak3k2(iv2)
      acd311(34)=abb311(30)
      acd311(35)=spvak3k2(iv3)
      acd311(36)=spvak3k2(iv1)
      acd311(37)=acd311(34)*acd311(33)
      acd311(38)=-acd311(19)*acd311(32)
      acd311(37)=acd311(38)-acd311(37)
      acd311(37)=acd311(27)*acd311(37)
      acd311(38)=-acd311(29)*acd311(32)
      acd311(39)=2.0_ki*acd311(31)
      acd311(40)=-acd311(19)*acd311(39)
      acd311(38)=acd311(38)+acd311(40)
      acd311(38)=acd311(17)*acd311(38)
      acd311(40)=acd311(27)*acd311(28)
      acd311(41)=acd311(17)*acd311(26)
      acd311(40)=acd311(40)+acd311(41)
      acd311(41)=-acd311(7)*acd311(40)
      acd311(42)=acd311(28)*acd311(29)
      acd311(43)=acd311(19)*acd311(26)
      acd311(42)=acd311(42)+acd311(43)
      acd311(43)=-acd311(2)*acd311(42)
      acd311(44)=acd311(22)+acd311(25)
      acd311(45)=acd311(19)*acd311(44)
      acd311(46)=acd311(20)+acd311(24)
      acd311(47)=acd311(17)*acd311(46)
      acd311(45)=acd311(45)+acd311(47)
      acd311(45)=acd311(18)*acd311(45)
      acd311(47)=acd311(44)-acd311(15)
      acd311(48)=acd311(7)*acd311(47)
      acd311(49)=acd311(46)-acd311(14)
      acd311(50)=acd311(2)*acd311(49)
      acd311(48)=acd311(48)+acd311(50)
      acd311(48)=acd311(13)*acd311(48)
      acd311(50)=2.0_ki*acd311(5)
      acd311(51)=-acd311(9)*acd311(50)
      acd311(52)=-acd311(29)*acd311(34)*acd311(35)
      acd311(37)=acd311(48)+acd311(45)+acd311(43)+acd311(41)+acd311(38)+acd311(&
      &51)+acd311(52)+acd311(37)
      acd311(37)=acd311(11)*acd311(37)
      acd311(38)=acd311(34)*acd311(36)
      acd311(41)=acd311(21)*acd311(32)
      acd311(38)=acd311(38)+acd311(41)
      acd311(41)=-acd311(27)*acd311(38)
      acd311(43)=acd311(30)*acd311(32)
      acd311(39)=acd311(39)*acd311(21)
      acd311(39)=acd311(43)+acd311(39)
      acd311(43)=-acd311(17)*acd311(39)
      acd311(40)=-acd311(10)*acd311(40)
      acd311(45)=acd311(28)*acd311(30)
      acd311(48)=acd311(21)*acd311(26)
      acd311(45)=acd311(45)+acd311(48)
      acd311(48)=-acd311(2)*acd311(45)
      acd311(44)=acd311(21)*acd311(44)
      acd311(51)=acd311(16)+acd311(23)
      acd311(52)=acd311(17)*acd311(51)
      acd311(44)=acd311(44)+acd311(52)
      acd311(44)=acd311(18)*acd311(44)
      acd311(47)=acd311(10)*acd311(47)
      acd311(52)=acd311(51)-acd311(12)
      acd311(53)=acd311(2)*acd311(52)
      acd311(47)=acd311(47)+acd311(53)
      acd311(47)=acd311(13)*acd311(47)
      acd311(53)=-acd311(6)*acd311(50)
      acd311(54)=acd311(30)*acd311(34)
      acd311(55)=-acd311(35)*acd311(54)
      acd311(40)=acd311(47)+acd311(44)+acd311(48)+acd311(40)+acd311(43)+acd311(&
      &53)+acd311(55)+acd311(41)
      acd311(40)=acd311(8)*acd311(40)
      acd311(38)=-acd311(29)*acd311(38)
      acd311(39)=-acd311(19)*acd311(39)
      acd311(41)=-acd311(10)*acd311(42)
      acd311(42)=-acd311(7)*acd311(45)
      acd311(43)=acd311(21)*acd311(46)
      acd311(44)=acd311(19)*acd311(51)
      acd311(43)=acd311(43)+acd311(44)
      acd311(43)=acd311(18)*acd311(43)
      acd311(44)=acd311(10)*acd311(49)
      acd311(45)=acd311(7)*acd311(52)
      acd311(44)=acd311(44)+acd311(45)
      acd311(44)=acd311(13)*acd311(44)
      acd311(45)=-acd311(1)*acd311(50)
      acd311(46)=-acd311(33)*acd311(54)
      acd311(38)=acd311(44)+acd311(43)+acd311(42)+acd311(41)+acd311(39)+acd311(&
      &45)+acd311(46)+acd311(38)
      acd311(38)=acd311(4)*acd311(38)
      acd311(39)=-acd311(10)*acd311(9)
      acd311(41)=-acd311(7)*acd311(6)
      acd311(42)=-acd311(2)*acd311(1)
      acd311(39)=acd311(42)+acd311(39)+acd311(41)
      acd311(39)=acd311(3)*acd311(39)
      brack=acd311(37)+acd311(38)+2.0_ki*acd311(39)+acd311(40)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd311h4
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
      qshift = -k7-k6
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
!---#[ subroutine reconstruct_d311:
   subroutine     reconstruct_d311(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group20
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group20), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_311:
      coeffs%coeffs_311%c0 = derivative(czip)
      coeffs%coeffs_311%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_311%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_311%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_311%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_311%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_311%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_311%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_311%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_311%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_311%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_311%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_311%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_311%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_311%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_311%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_311%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_311%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_311%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_311%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_311%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_311%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_311%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_311%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_311%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_311%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_311%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_311%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_311%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_311%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_311%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_311%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_311%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_311%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_311%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_311:
   end subroutine reconstruct_d311
!---#] subroutine reconstruct_d311:
end module     p0_dbaru_epnebbbarg_d311h4l1d
