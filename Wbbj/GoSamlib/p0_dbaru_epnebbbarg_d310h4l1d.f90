module     p0_dbaru_epnebbbarg_d310h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d310h4l1d.f90
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
   public :: derivative , reconstruct_d310
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd310h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd310
      complex(ki) :: brack
      acd310(1)=dotproduct(k1,qshift)
      acd310(2)=dotproduct(qshift,spvak1k2)
      acd310(3)=abb310(25)
      acd310(4)=dotproduct(qshift,spval5k2)
      acd310(5)=abb310(62)
      acd310(6)=dotproduct(qshift,spvak7k2)
      acd310(7)=abb310(47)
      acd310(8)=abb310(17)
      acd310(9)=dotproduct(k2,qshift)
      acd310(10)=abb310(24)
      acd310(11)=abb310(29)
      acd310(12)=dotproduct(qshift,spval6k2)
      acd310(13)=abb310(58)
      acd310(14)=abb310(19)
      acd310(15)=abb310(59)
      acd310(16)=abb310(67)
      acd310(17)=dotproduct(k3,qshift)
      acd310(18)=abb310(23)
      acd310(19)=abb310(92)
      acd310(20)=dotproduct(k4,qshift)
      acd310(21)=dotproduct(k7,qshift)
      acd310(22)=abb310(50)
      acd310(23)=abb310(81)
      acd310(24)=dotproduct(qshift,qshift)
      acd310(25)=abb310(33)
      acd310(26)=abb310(51)
      acd310(27)=abb310(21)
      acd310(28)=dotproduct(qshift,spvak4k2)
      acd310(29)=abb310(10)
      acd310(30)=dotproduct(qshift,spvak4k3)
      acd310(31)=abb310(30)
      acd310(32)=dotproduct(qshift,spval5k3)
      acd310(33)=abb310(54)
      acd310(34)=dotproduct(qshift,spval6k3)
      acd310(35)=abb310(52)
      acd310(36)=abb310(12)
      acd310(37)=abb310(11)
      acd310(38)=abb310(32)
      acd310(39)=dotproduct(qshift,spval5k1)
      acd310(40)=abb310(31)
      acd310(41)=dotproduct(qshift,spval6k1)
      acd310(42)=abb310(14)
      acd310(43)=dotproduct(qshift,spvak1k3)
      acd310(44)=abb310(38)
      acd310(45)=abb310(57)
      acd310(46)=abb310(37)
      acd310(47)=abb310(70)
      acd310(48)=abb310(20)
      acd310(49)=abb310(18)
      acd310(50)=abb310(36)
      acd310(51)=abb310(49)
      acd310(52)=dotproduct(qshift,spvak1k7)
      acd310(53)=abb310(43)
      acd310(54)=dotproduct(qshift,spval5l6)
      acd310(55)=abb310(61)
      acd310(56)=dotproduct(qshift,spval6k7)
      acd310(57)=abb310(15)
      acd310(58)=abb310(26)
      acd310(59)=abb310(64)
      acd310(60)=abb310(35)
      acd310(61)=abb310(27)
      acd310(62)=abb310(42)
      acd310(63)=abb310(39)
      acd310(64)=abb310(13)
      acd310(65)=abb310(63)
      acd310(66)=abb310(16)
      acd310(67)=acd310(17)+acd310(20)
      acd310(68)=acd310(67)-acd310(9)
      acd310(69)=-acd310(10)*acd310(68)
      acd310(70)=acd310(35)*acd310(34)
      acd310(71)=acd310(32)*acd310(33)
      acd310(72)=-acd310(30)*acd310(31)
      acd310(73)=-acd310(28)*acd310(29)
      acd310(69)=acd310(73)+acd310(72)+acd310(71)+acd310(36)+acd310(70)+acd310(&
      &69)
      acd310(69)=acd310(2)*acd310(69)
      acd310(70)=-acd310(13)*acd310(68)
      acd310(71)=-acd310(35)*acd310(43)
      acd310(72)=-acd310(30)*acd310(47)
      acd310(73)=-acd310(28)*acd310(46)
      acd310(70)=acd310(73)+acd310(72)+acd310(48)+acd310(71)+acd310(70)
      acd310(70)=acd310(12)*acd310(70)
      acd310(71)=-acd310(18)*acd310(67)
      acd310(72)=acd310(52)*acd310(53)
      acd310(73)=acd310(54)*acd310(55)
      acd310(74)=acd310(32)*acd310(51)
      acd310(75)=acd310(26)*acd310(56)
      acd310(76)=-acd310(33)*acd310(43)
      acd310(76)=acd310(44)+acd310(76)
      acd310(76)=acd310(4)*acd310(76)
      acd310(77)=acd310(1)*acd310(7)
      acd310(78)=acd310(30)*acd310(50)
      acd310(79)=acd310(28)*acd310(49)
      acd310(80)=acd310(9)*acd310(14)
      acd310(69)=acd310(69)+acd310(70)+acd310(80)+acd310(79)+acd310(78)+acd310(&
      &77)+acd310(76)+acd310(75)+acd310(74)+acd310(73)-acd310(57)+acd310(72)+ac&
      &d310(71)
      acd310(69)=acd310(6)*acd310(69)
      acd310(70)=-acd310(1)+acd310(21)
      acd310(70)=acd310(3)*acd310(70)
      acd310(71)=-acd310(11)*acd310(68)
      acd310(72)=acd310(39)*acd310(40)
      acd310(73)=acd310(26)*acd310(41)
      acd310(74)=-acd310(24)*acd310(25)
      acd310(75)=acd310(30)*acd310(38)
      acd310(76)=acd310(28)*acd310(37)
      acd310(70)=acd310(76)+acd310(75)+acd310(74)+acd310(73)-acd310(42)+acd310(&
      &72)+acd310(71)+acd310(70)
      acd310(70)=acd310(2)*acd310(70)
      acd310(68)=-acd310(15)*acd310(68)
      acd310(71)=acd310(24)*acd310(26)
      acd310(72)=acd310(21)*acd310(22)
      acd310(73)=acd310(30)*acd310(59)
      acd310(74)=acd310(28)*acd310(58)
      acd310(68)=acd310(74)+acd310(73)+acd310(72)-acd310(60)+acd310(71)+acd310(&
      &68)
      acd310(68)=acd310(12)*acd310(68)
      acd310(67)=-acd310(19)*acd310(67)
      acd310(71)=-acd310(54)*acd310(65)
      acd310(72)=-acd310(41)*acd310(64)
      acd310(73)=-acd310(39)*acd310(63)
      acd310(74)=acd310(24)*acd310(27)
      acd310(75)=-acd310(21)*acd310(23)
      acd310(76)=-acd310(4)*acd310(45)
      acd310(77)=acd310(4)*acd310(5)
      acd310(77)=-acd310(8)+acd310(77)
      acd310(77)=acd310(1)*acd310(77)
      acd310(78)=-acd310(30)*acd310(62)
      acd310(79)=-acd310(28)*acd310(61)
      acd310(80)=-acd310(9)*acd310(16)
      brack=acd310(66)+acd310(67)+acd310(68)+acd310(69)+acd310(70)+acd310(71)+a&
      &cd310(72)+acd310(73)+acd310(74)+acd310(75)+acd310(76)+acd310(77)+acd310(&
      &78)+acd310(79)+acd310(80)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd310h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(106) :: acd310
      complex(ki) :: brack
      acd310(1)=k1(iv1)
      acd310(2)=dotproduct(qshift,spvak1k2)
      acd310(3)=abb310(25)
      acd310(4)=dotproduct(qshift,spval5k2)
      acd310(5)=abb310(62)
      acd310(6)=dotproduct(qshift,spvak7k2)
      acd310(7)=abb310(47)
      acd310(8)=abb310(17)
      acd310(9)=k2(iv1)
      acd310(10)=abb310(24)
      acd310(11)=abb310(29)
      acd310(12)=dotproduct(qshift,spval6k2)
      acd310(13)=abb310(58)
      acd310(14)=abb310(19)
      acd310(15)=abb310(59)
      acd310(16)=abb310(67)
      acd310(17)=k3(iv1)
      acd310(18)=abb310(23)
      acd310(19)=abb310(92)
      acd310(20)=k4(iv1)
      acd310(21)=k7(iv1)
      acd310(22)=abb310(50)
      acd310(23)=abb310(81)
      acd310(24)=qshift(iv1)
      acd310(25)=abb310(33)
      acd310(26)=abb310(51)
      acd310(27)=abb310(21)
      acd310(28)=spvak1k2(iv1)
      acd310(29)=dotproduct(k1,qshift)
      acd310(30)=dotproduct(k2,qshift)
      acd310(31)=dotproduct(k3,qshift)
      acd310(32)=dotproduct(k4,qshift)
      acd310(33)=dotproduct(k7,qshift)
      acd310(34)=dotproduct(qshift,qshift)
      acd310(35)=dotproduct(qshift,spvak4k2)
      acd310(36)=abb310(10)
      acd310(37)=dotproduct(qshift,spvak4k3)
      acd310(38)=abb310(30)
      acd310(39)=dotproduct(qshift,spval5k3)
      acd310(40)=abb310(54)
      acd310(41)=dotproduct(qshift,spval6k3)
      acd310(42)=abb310(52)
      acd310(43)=abb310(12)
      acd310(44)=abb310(11)
      acd310(45)=abb310(32)
      acd310(46)=dotproduct(qshift,spval5k1)
      acd310(47)=abb310(31)
      acd310(48)=dotproduct(qshift,spval6k1)
      acd310(49)=abb310(14)
      acd310(50)=spval5k2(iv1)
      acd310(51)=dotproduct(qshift,spvak1k3)
      acd310(52)=abb310(38)
      acd310(53)=abb310(57)
      acd310(54)=spvak7k2(iv1)
      acd310(55)=abb310(37)
      acd310(56)=abb310(70)
      acd310(57)=abb310(20)
      acd310(58)=abb310(18)
      acd310(59)=abb310(36)
      acd310(60)=abb310(49)
      acd310(61)=dotproduct(qshift,spvak1k7)
      acd310(62)=abb310(43)
      acd310(63)=dotproduct(qshift,spval5l6)
      acd310(64)=abb310(61)
      acd310(65)=dotproduct(qshift,spval6k7)
      acd310(66)=abb310(15)
      acd310(67)=spval6k2(iv1)
      acd310(68)=abb310(26)
      acd310(69)=abb310(64)
      acd310(70)=abb310(35)
      acd310(71)=spvak4k2(iv1)
      acd310(72)=abb310(27)
      acd310(73)=spvak4k3(iv1)
      acd310(74)=abb310(42)
      acd310(75)=spval5k1(iv1)
      acd310(76)=abb310(39)
      acd310(77)=spval5k3(iv1)
      acd310(78)=spval6k1(iv1)
      acd310(79)=abb310(13)
      acd310(80)=spval6k3(iv1)
      acd310(81)=spvak1k3(iv1)
      acd310(82)=spvak1k7(iv1)
      acd310(83)=spval5l6(iv1)
      acd310(84)=abb310(63)
      acd310(85)=spval6k7(iv1)
      acd310(86)=acd310(31)+acd310(32)
      acd310(87)=acd310(30)-acd310(86)
      acd310(88)=acd310(87)*acd310(10)
      acd310(89)=acd310(42)*acd310(41)
      acd310(90)=acd310(40)*acd310(39)
      acd310(91)=acd310(37)*acd310(38)
      acd310(92)=acd310(35)*acd310(36)
      acd310(88)=acd310(43)+acd310(88)-acd310(92)+acd310(89)+acd310(90)-acd310(&
      &91)
      acd310(89)=acd310(28)*acd310(88)
      acd310(90)=-acd310(73)*acd310(38)
      acd310(91)=-acd310(71)*acd310(36)
      acd310(92)=acd310(42)*acd310(80)
      acd310(93)=acd310(40)*acd310(77)
      acd310(94)=acd310(17)+acd310(20)
      acd310(95)=acd310(94)-acd310(9)
      acd310(96)=-acd310(10)*acd310(95)
      acd310(90)=acd310(96)+acd310(93)+acd310(92)+acd310(90)+acd310(91)
      acd310(90)=acd310(2)*acd310(90)
      acd310(91)=acd310(87)*acd310(13)
      acd310(92)=acd310(42)*acd310(51)
      acd310(93)=acd310(37)*acd310(56)
      acd310(96)=acd310(35)*acd310(55)
      acd310(91)=-acd310(57)-acd310(91)+acd310(96)+acd310(92)+acd310(93)
      acd310(92)=-acd310(67)*acd310(91)
      acd310(93)=-acd310(73)*acd310(56)
      acd310(96)=-acd310(71)*acd310(55)
      acd310(97)=-acd310(42)*acd310(81)
      acd310(98)=-acd310(13)*acd310(95)
      acd310(93)=acd310(98)+acd310(97)+acd310(93)+acd310(96)
      acd310(93)=acd310(12)*acd310(93)
      acd310(96)=-acd310(50)*acd310(51)
      acd310(97)=-acd310(4)*acd310(81)
      acd310(96)=acd310(96)+acd310(97)
      acd310(96)=acd310(40)*acd310(96)
      acd310(97)=-acd310(18)*acd310(94)
      acd310(98)=acd310(64)*acd310(83)
      acd310(99)=acd310(62)*acd310(82)
      acd310(100)=acd310(60)*acd310(77)
      acd310(101)=acd310(50)*acd310(52)
      acd310(102)=acd310(1)*acd310(7)
      acd310(103)=acd310(73)*acd310(59)
      acd310(104)=acd310(71)*acd310(58)
      acd310(105)=acd310(26)*acd310(85)
      acd310(106)=acd310(9)*acd310(14)
      acd310(89)=acd310(90)+acd310(93)+acd310(89)+acd310(92)+acd310(106)+acd310&
      &(105)+acd310(96)+acd310(104)+acd310(103)+acd310(102)+acd310(101)+acd310(&
      &100)+acd310(98)+acd310(99)+acd310(97)
      acd310(89)=acd310(6)*acd310(89)
      acd310(88)=acd310(2)*acd310(88)
      acd310(90)=-acd310(12)*acd310(91)
      acd310(86)=-acd310(18)*acd310(86)
      acd310(91)=-acd310(40)*acd310(51)
      acd310(91)=acd310(91)+acd310(52)
      acd310(91)=acd310(4)*acd310(91)
      acd310(92)=acd310(64)*acd310(63)
      acd310(93)=acd310(62)*acd310(61)
      acd310(96)=acd310(39)*acd310(60)
      acd310(97)=acd310(29)*acd310(7)
      acd310(98)=acd310(26)*acd310(65)
      acd310(99)=acd310(37)*acd310(59)
      acd310(100)=acd310(35)*acd310(58)
      acd310(101)=acd310(30)*acd310(14)
      acd310(86)=acd310(88)+acd310(90)+acd310(101)+acd310(100)+acd310(99)+acd31&
      &0(98)+acd310(97)+acd310(96)+acd310(93)-acd310(66)+acd310(92)+acd310(91)+&
      &acd310(86)
      acd310(86)=acd310(54)*acd310(86)
      acd310(88)=acd310(11)*acd310(87)
      acd310(90)=acd310(47)*acd310(46)
      acd310(91)=-acd310(25)*acd310(34)
      acd310(92)=acd310(33)-acd310(29)
      acd310(92)=acd310(3)*acd310(92)
      acd310(93)=acd310(26)*acd310(48)
      acd310(96)=acd310(37)*acd310(45)
      acd310(97)=acd310(35)*acd310(44)
      acd310(88)=acd310(97)+acd310(96)+acd310(93)+acd310(92)+acd310(91)-acd310(&
      &49)+acd310(90)+acd310(88)
      acd310(88)=acd310(28)*acd310(88)
      acd310(90)=-acd310(1)+acd310(21)
      acd310(90)=acd310(3)*acd310(90)
      acd310(91)=-acd310(11)*acd310(95)
      acd310(92)=acd310(47)*acd310(75)
      acd310(93)=2.0_ki*acd310(24)
      acd310(96)=-acd310(25)*acd310(93)
      acd310(97)=acd310(73)*acd310(45)
      acd310(98)=acd310(71)*acd310(44)
      acd310(99)=acd310(26)*acd310(78)
      acd310(90)=acd310(99)+acd310(98)+acd310(97)+acd310(92)+acd310(96)+acd310(&
      &91)+acd310(90)
      acd310(90)=acd310(2)*acd310(90)
      acd310(87)=acd310(15)*acd310(87)
      acd310(91)=acd310(22)*acd310(33)
      acd310(92)=acd310(26)*acd310(34)
      acd310(96)=acd310(37)*acd310(69)
      acd310(97)=acd310(35)*acd310(68)
      acd310(87)=acd310(97)+acd310(96)+acd310(92)-acd310(70)+acd310(91)+acd310(&
      &87)
      acd310(87)=acd310(67)*acd310(87)
      acd310(91)=-acd310(15)*acd310(95)
      acd310(92)=acd310(21)*acd310(22)
      acd310(95)=acd310(73)*acd310(69)
      acd310(96)=acd310(71)*acd310(68)
      acd310(97)=acd310(26)*acd310(93)
      acd310(91)=acd310(97)+acd310(96)+acd310(92)+acd310(95)+acd310(91)
      acd310(91)=acd310(12)*acd310(91)
      acd310(92)=-acd310(19)*acd310(94)
      acd310(94)=-acd310(83)*acd310(84)
      acd310(95)=-acd310(78)*acd310(79)
      acd310(96)=-acd310(75)*acd310(76)
      acd310(93)=acd310(27)*acd310(93)
      acd310(97)=-acd310(21)*acd310(23)
      acd310(98)=acd310(29)*acd310(5)
      acd310(98)=-acd310(53)+acd310(98)
      acd310(98)=acd310(50)*acd310(98)
      acd310(99)=acd310(4)*acd310(5)
      acd310(99)=-acd310(8)+acd310(99)
      acd310(99)=acd310(1)*acd310(99)
      acd310(100)=-acd310(73)*acd310(74)
      acd310(101)=-acd310(71)*acd310(72)
      acd310(102)=-acd310(9)*acd310(16)
      brack=acd310(86)+acd310(87)+acd310(88)+acd310(89)+acd310(90)+acd310(91)+a&
      &cd310(92)+acd310(93)+acd310(94)+acd310(95)+acd310(96)+acd310(97)+acd310(&
      &98)+acd310(99)+acd310(100)+acd310(101)+acd310(102)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd310h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(108) :: acd310
      complex(ki) :: brack
      acd310(1)=d(iv1,iv2)
      acd310(2)=dotproduct(qshift,spvak1k2)
      acd310(3)=abb310(33)
      acd310(4)=dotproduct(qshift,spval6k2)
      acd310(5)=abb310(51)
      acd310(6)=abb310(21)
      acd310(7)=k1(iv1)
      acd310(8)=spvak1k2(iv2)
      acd310(9)=abb310(25)
      acd310(10)=spval5k2(iv2)
      acd310(11)=abb310(62)
      acd310(12)=spvak7k2(iv2)
      acd310(13)=abb310(47)
      acd310(14)=k1(iv2)
      acd310(15)=spvak1k2(iv1)
      acd310(16)=spval5k2(iv1)
      acd310(17)=spvak7k2(iv1)
      acd310(18)=k2(iv1)
      acd310(19)=dotproduct(qshift,spvak7k2)
      acd310(20)=abb310(24)
      acd310(21)=abb310(29)
      acd310(22)=spval6k2(iv2)
      acd310(23)=abb310(58)
      acd310(24)=abb310(59)
      acd310(25)=abb310(19)
      acd310(26)=k2(iv2)
      acd310(27)=spval6k2(iv1)
      acd310(28)=k3(iv1)
      acd310(29)=abb310(23)
      acd310(30)=k3(iv2)
      acd310(31)=k4(iv1)
      acd310(32)=k4(iv2)
      acd310(33)=k7(iv1)
      acd310(34)=abb310(50)
      acd310(35)=k7(iv2)
      acd310(36)=qshift(iv1)
      acd310(37)=qshift(iv2)
      acd310(38)=dotproduct(k2,qshift)
      acd310(39)=dotproduct(k3,qshift)
      acd310(40)=dotproduct(k4,qshift)
      acd310(41)=dotproduct(qshift,spvak4k2)
      acd310(42)=abb310(10)
      acd310(43)=dotproduct(qshift,spvak4k3)
      acd310(44)=abb310(30)
      acd310(45)=dotproduct(qshift,spval5k3)
      acd310(46)=abb310(54)
      acd310(47)=dotproduct(qshift,spval6k3)
      acd310(48)=abb310(52)
      acd310(49)=abb310(12)
      acd310(50)=spvak4k2(iv2)
      acd310(51)=abb310(11)
      acd310(52)=spvak4k3(iv2)
      acd310(53)=abb310(32)
      acd310(54)=spval5k1(iv2)
      acd310(55)=abb310(31)
      acd310(56)=spval5k3(iv2)
      acd310(57)=spval6k1(iv2)
      acd310(58)=spval6k3(iv2)
      acd310(59)=spvak4k2(iv1)
      acd310(60)=spvak4k3(iv1)
      acd310(61)=spval5k1(iv1)
      acd310(62)=spval5k3(iv1)
      acd310(63)=spval6k1(iv1)
      acd310(64)=spval6k3(iv1)
      acd310(65)=abb310(37)
      acd310(66)=abb310(70)
      acd310(67)=dotproduct(qshift,spvak1k3)
      acd310(68)=abb310(20)
      acd310(69)=abb310(26)
      acd310(70)=abb310(64)
      acd310(71)=spvak1k3(iv2)
      acd310(72)=spvak1k3(iv1)
      acd310(73)=abb310(38)
      acd310(74)=abb310(18)
      acd310(75)=abb310(36)
      acd310(76)=abb310(49)
      acd310(77)=dotproduct(qshift,spval5k2)
      acd310(78)=spvak1k7(iv2)
      acd310(79)=abb310(43)
      acd310(80)=spval5l6(iv2)
      acd310(81)=abb310(61)
      acd310(82)=spval6k7(iv2)
      acd310(83)=spvak1k7(iv1)
      acd310(84)=spval5l6(iv1)
      acd310(85)=spval6k7(iv1)
      acd310(86)=acd310(44)*acd310(43)
      acd310(87)=acd310(42)*acd310(41)
      acd310(88)=acd310(48)*acd310(47)
      acd310(89)=acd310(46)*acd310(45)
      acd310(90)=-acd310(40)+acd310(38)-acd310(39)
      acd310(91)=acd310(90)*acd310(20)
      acd310(86)=-acd310(88)-acd310(89)-acd310(91)-acd310(49)+acd310(86)+acd310&
      &(87)
      acd310(87)=-acd310(8)*acd310(86)
      acd310(88)=acd310(52)*acd310(44)
      acd310(89)=acd310(50)*acd310(42)
      acd310(91)=acd310(48)*acd310(58)
      acd310(92)=acd310(46)*acd310(56)
      acd310(88)=-acd310(89)-acd310(88)+acd310(91)+acd310(92)
      acd310(89)=acd310(2)*acd310(88)
      acd310(91)=acd310(66)*acd310(43)
      acd310(92)=acd310(65)*acd310(41)
      acd310(93)=acd310(48)*acd310(67)
      acd310(90)=acd310(90)*acd310(23)
      acd310(90)=acd310(91)+acd310(93)-acd310(90)+acd310(92)-acd310(68)
      acd310(91)=-acd310(22)*acd310(90)
      acd310(92)=acd310(52)*acd310(66)
      acd310(93)=acd310(50)*acd310(65)
      acd310(94)=acd310(48)*acd310(71)
      acd310(92)=acd310(94)+acd310(92)+acd310(93)
      acd310(93)=-acd310(4)*acd310(92)
      acd310(94)=acd310(23)*acd310(4)
      acd310(95)=acd310(20)*acd310(2)
      acd310(94)=acd310(94)+acd310(95)
      acd310(95)=acd310(30)+acd310(32)
      acd310(96)=acd310(26)-acd310(95)
      acd310(97)=acd310(96)*acd310(94)
      acd310(98)=-acd310(71)*acd310(77)
      acd310(99)=-acd310(10)*acd310(67)
      acd310(98)=acd310(98)+acd310(99)
      acd310(98)=acd310(46)*acd310(98)
      acd310(95)=-acd310(29)*acd310(95)
      acd310(99)=acd310(81)*acd310(80)
      acd310(100)=acd310(79)*acd310(78)
      acd310(101)=acd310(56)*acd310(76)
      acd310(102)=acd310(14)*acd310(13)
      acd310(103)=acd310(10)*acd310(73)
      acd310(104)=acd310(52)*acd310(75)
      acd310(105)=acd310(50)*acd310(74)
      acd310(106)=acd310(26)*acd310(25)
      acd310(107)=acd310(5)*acd310(82)
      acd310(87)=acd310(87)+acd310(91)+acd310(89)+acd310(93)+acd310(98)+acd310(&
      &107)+acd310(106)+acd310(105)+acd310(104)+acd310(103)+acd310(102)+acd310(&
      &101)+acd310(99)+acd310(100)+acd310(97)+acd310(95)
      acd310(87)=acd310(17)*acd310(87)
      acd310(86)=-acd310(15)*acd310(86)
      acd310(89)=acd310(60)*acd310(44)
      acd310(91)=acd310(59)*acd310(42)
      acd310(93)=acd310(48)*acd310(64)
      acd310(95)=acd310(46)*acd310(62)
      acd310(89)=-acd310(89)-acd310(91)+acd310(93)+acd310(95)
      acd310(91)=acd310(2)*acd310(89)
      acd310(90)=-acd310(27)*acd310(90)
      acd310(93)=acd310(60)*acd310(66)
      acd310(95)=acd310(59)*acd310(65)
      acd310(97)=acd310(48)*acd310(72)
      acd310(93)=acd310(97)+acd310(93)+acd310(95)
      acd310(95)=-acd310(4)*acd310(93)
      acd310(97)=acd310(28)+acd310(31)
      acd310(98)=acd310(18)-acd310(97)
      acd310(94)=acd310(98)*acd310(94)
      acd310(99)=-acd310(72)*acd310(77)
      acd310(100)=-acd310(16)*acd310(67)
      acd310(99)=acd310(99)+acd310(100)
      acd310(99)=acd310(46)*acd310(99)
      acd310(97)=-acd310(29)*acd310(97)
      acd310(100)=acd310(81)*acd310(84)
      acd310(101)=acd310(79)*acd310(83)
      acd310(102)=acd310(62)*acd310(76)
      acd310(103)=acd310(7)*acd310(13)
      acd310(104)=acd310(16)*acd310(73)
      acd310(105)=acd310(60)*acd310(75)
      acd310(106)=acd310(59)*acd310(74)
      acd310(107)=acd310(18)*acd310(25)
      acd310(108)=acd310(5)*acd310(85)
      acd310(86)=acd310(86)+acd310(90)+acd310(91)+acd310(95)+acd310(99)+acd310(&
      &108)+acd310(107)+acd310(106)+acd310(105)+acd310(104)+acd310(103)+acd310(&
      &102)+acd310(100)+acd310(101)+acd310(94)+acd310(97)
      acd310(86)=acd310(12)*acd310(86)
      acd310(90)=acd310(21)*acd310(96)
      acd310(91)=acd310(55)*acd310(54)
      acd310(94)=2.0_ki*acd310(3)
      acd310(95)=-acd310(37)*acd310(94)
      acd310(97)=acd310(35)-acd310(14)
      acd310(97)=acd310(9)*acd310(97)
      acd310(99)=acd310(52)*acd310(53)
      acd310(100)=acd310(50)*acd310(51)
      acd310(101)=acd310(5)*acd310(57)
      acd310(90)=acd310(101)+acd310(100)+acd310(99)+acd310(97)+acd310(91)+acd31&
      &0(95)+acd310(90)
      acd310(90)=acd310(15)*acd310(90)
      acd310(91)=acd310(21)*acd310(98)
      acd310(95)=acd310(55)*acd310(61)
      acd310(97)=-acd310(36)*acd310(94)
      acd310(99)=acd310(33)-acd310(7)
      acd310(99)=acd310(9)*acd310(99)
      acd310(100)=acd310(60)*acd310(53)
      acd310(101)=acd310(59)*acd310(51)
      acd310(102)=acd310(5)*acd310(63)
      acd310(91)=acd310(102)+acd310(101)+acd310(100)+acd310(99)+acd310(95)+acd3&
      &10(97)+acd310(91)
      acd310(91)=acd310(8)*acd310(91)
      acd310(95)=acd310(20)*acd310(96)
      acd310(88)=acd310(95)+acd310(88)
      acd310(88)=acd310(15)*acd310(88)
      acd310(95)=acd310(20)*acd310(98)
      acd310(89)=acd310(95)+acd310(89)
      acd310(89)=acd310(8)*acd310(89)
      acd310(95)=acd310(23)*acd310(96)
      acd310(92)=acd310(95)-acd310(92)
      acd310(92)=acd310(27)*acd310(92)
      acd310(95)=acd310(23)*acd310(98)
      acd310(93)=acd310(95)-acd310(93)
      acd310(93)=acd310(22)*acd310(93)
      acd310(95)=-acd310(16)*acd310(71)
      acd310(97)=-acd310(10)*acd310(72)
      acd310(95)=acd310(95)+acd310(97)
      acd310(95)=acd310(46)*acd310(95)
      acd310(88)=acd310(89)+acd310(88)+acd310(93)+acd310(95)+acd310(92)
      acd310(88)=acd310(19)*acd310(88)
      acd310(89)=acd310(24)*acd310(96)
      acd310(92)=acd310(34)*acd310(35)
      acd310(93)=acd310(52)*acd310(70)
      acd310(95)=acd310(50)*acd310(69)
      acd310(96)=2.0_ki*acd310(5)
      acd310(97)=acd310(37)*acd310(96)
      acd310(89)=acd310(97)+acd310(95)+acd310(92)+acd310(93)+acd310(89)
      acd310(89)=acd310(27)*acd310(89)
      acd310(92)=acd310(24)*acd310(98)
      acd310(93)=acd310(33)*acd310(34)
      acd310(95)=acd310(60)*acd310(70)
      acd310(97)=acd310(59)*acd310(69)
      acd310(98)=acd310(36)*acd310(96)
      acd310(92)=acd310(98)+acd310(97)+acd310(93)+acd310(95)+acd310(92)
      acd310(92)=acd310(22)*acd310(92)
      acd310(93)=acd310(16)*acd310(14)
      acd310(95)=acd310(10)*acd310(7)
      acd310(93)=acd310(95)+acd310(93)
      acd310(93)=acd310(11)*acd310(93)
      acd310(95)=acd310(4)*acd310(96)
      acd310(94)=-acd310(2)*acd310(94)
      acd310(94)=acd310(94)+acd310(95)+2.0_ki*acd310(6)
      acd310(94)=acd310(1)*acd310(94)
      brack=acd310(86)+acd310(87)+acd310(88)+acd310(89)+acd310(90)+acd310(91)+a&
      &cd310(92)+acd310(93)+acd310(94)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd310h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd310
      complex(ki) :: brack
      acd310(1)=d(iv1,iv2)
      acd310(2)=spvak1k2(iv3)
      acd310(3)=abb310(33)
      acd310(4)=spval6k2(iv3)
      acd310(5)=abb310(51)
      acd310(6)=d(iv1,iv3)
      acd310(7)=spvak1k2(iv2)
      acd310(8)=spval6k2(iv2)
      acd310(9)=d(iv2,iv3)
      acd310(10)=spvak1k2(iv1)
      acd310(11)=spval6k2(iv1)
      acd310(12)=k2(iv1)
      acd310(13)=spvak7k2(iv3)
      acd310(14)=abb310(24)
      acd310(15)=spvak7k2(iv2)
      acd310(16)=abb310(58)
      acd310(17)=k2(iv2)
      acd310(18)=spvak7k2(iv1)
      acd310(19)=k2(iv3)
      acd310(20)=k3(iv1)
      acd310(21)=k3(iv2)
      acd310(22)=k3(iv3)
      acd310(23)=k4(iv1)
      acd310(24)=k4(iv2)
      acd310(25)=k4(iv3)
      acd310(26)=spvak4k2(iv3)
      acd310(27)=abb310(10)
      acd310(28)=spvak4k3(iv3)
      acd310(29)=abb310(30)
      acd310(30)=spval5k3(iv3)
      acd310(31)=abb310(54)
      acd310(32)=spval6k3(iv3)
      acd310(33)=abb310(52)
      acd310(34)=spvak4k2(iv2)
      acd310(35)=spvak4k3(iv2)
      acd310(36)=spval5k3(iv2)
      acd310(37)=spval6k3(iv2)
      acd310(38)=spvak4k2(iv1)
      acd310(39)=spvak4k3(iv1)
      acd310(40)=spval5k3(iv1)
      acd310(41)=spval6k3(iv1)
      acd310(42)=abb310(37)
      acd310(43)=abb310(70)
      acd310(44)=spvak1k3(iv3)
      acd310(45)=spvak1k3(iv2)
      acd310(46)=spvak1k3(iv1)
      acd310(47)=spval5k2(iv3)
      acd310(48)=spval5k2(iv2)
      acd310(49)=spval5k2(iv1)
      acd310(50)=acd310(29)*acd310(28)
      acd310(51)=acd310(27)*acd310(26)
      acd310(52)=acd310(33)*acd310(32)
      acd310(53)=acd310(31)*acd310(30)
      acd310(50)=-acd310(51)-acd310(50)+acd310(52)+acd310(53)
      acd310(51)=acd310(7)*acd310(50)
      acd310(52)=acd310(29)*acd310(35)
      acd310(53)=acd310(27)*acd310(34)
      acd310(54)=acd310(33)*acd310(37)
      acd310(55)=acd310(31)*acd310(36)
      acd310(52)=-acd310(53)-acd310(52)+acd310(54)+acd310(55)
      acd310(53)=acd310(2)*acd310(52)
      acd310(54)=acd310(43)*acd310(28)
      acd310(55)=acd310(42)*acd310(26)
      acd310(56)=acd310(33)*acd310(44)
      acd310(54)=acd310(56)+acd310(54)+acd310(55)
      acd310(55)=-acd310(8)*acd310(54)
      acd310(56)=acd310(43)*acd310(35)
      acd310(57)=acd310(42)*acd310(34)
      acd310(58)=acd310(33)*acd310(45)
      acd310(56)=acd310(58)+acd310(56)+acd310(57)
      acd310(57)=-acd310(4)*acd310(56)
      acd310(58)=-acd310(45)*acd310(47)
      acd310(59)=-acd310(44)*acd310(48)
      acd310(58)=acd310(58)+acd310(59)
      acd310(58)=acd310(31)*acd310(58)
      acd310(59)=-acd310(25)+acd310(19)-acd310(22)
      acd310(60)=acd310(8)*acd310(59)
      acd310(61)=-acd310(24)+acd310(17)-acd310(21)
      acd310(62)=acd310(4)*acd310(61)
      acd310(60)=acd310(60)+acd310(62)
      acd310(60)=acd310(16)*acd310(60)
      acd310(62)=acd310(7)*acd310(59)
      acd310(63)=acd310(2)*acd310(61)
      acd310(62)=acd310(62)+acd310(63)
      acd310(62)=acd310(14)*acd310(62)
      acd310(51)=acd310(62)+acd310(60)+acd310(53)+acd310(51)+acd310(57)+acd310(&
      &58)+acd310(55)
      acd310(51)=acd310(18)*acd310(51)
      acd310(50)=acd310(10)*acd310(50)
      acd310(53)=acd310(29)*acd310(39)
      acd310(55)=acd310(27)*acd310(38)
      acd310(57)=acd310(33)*acd310(41)
      acd310(58)=acd310(31)*acd310(40)
      acd310(53)=-acd310(53)-acd310(55)+acd310(57)+acd310(58)
      acd310(55)=acd310(2)*acd310(53)
      acd310(54)=-acd310(11)*acd310(54)
      acd310(57)=acd310(43)*acd310(39)
      acd310(58)=acd310(42)*acd310(38)
      acd310(60)=acd310(33)*acd310(46)
      acd310(57)=acd310(60)+acd310(57)+acd310(58)
      acd310(58)=-acd310(4)*acd310(57)
      acd310(60)=-acd310(46)*acd310(47)
      acd310(62)=-acd310(44)*acd310(49)
      acd310(60)=acd310(60)+acd310(62)
      acd310(60)=acd310(31)*acd310(60)
      acd310(62)=acd310(11)*acd310(59)
      acd310(63)=-acd310(23)+acd310(12)-acd310(20)
      acd310(64)=acd310(4)*acd310(63)
      acd310(62)=acd310(62)+acd310(64)
      acd310(62)=acd310(16)*acd310(62)
      acd310(59)=acd310(10)*acd310(59)
      acd310(64)=acd310(2)*acd310(63)
      acd310(59)=acd310(59)+acd310(64)
      acd310(59)=acd310(14)*acd310(59)
      acd310(50)=acd310(59)+acd310(62)+acd310(55)+acd310(50)+acd310(58)+acd310(&
      &60)+acd310(54)
      acd310(50)=acd310(15)*acd310(50)
      acd310(52)=acd310(10)*acd310(52)
      acd310(53)=acd310(7)*acd310(53)
      acd310(54)=-acd310(11)*acd310(56)
      acd310(55)=-acd310(8)*acd310(57)
      acd310(56)=-acd310(46)*acd310(48)
      acd310(57)=-acd310(45)*acd310(49)
      acd310(56)=acd310(56)+acd310(57)
      acd310(56)=acd310(31)*acd310(56)
      acd310(57)=acd310(11)*acd310(61)
      acd310(58)=acd310(8)*acd310(63)
      acd310(57)=acd310(57)+acd310(58)
      acd310(57)=acd310(16)*acd310(57)
      acd310(58)=acd310(10)*acd310(61)
      acd310(59)=acd310(7)*acd310(63)
      acd310(58)=acd310(58)+acd310(59)
      acd310(58)=acd310(14)*acd310(58)
      acd310(52)=acd310(58)+acd310(57)+acd310(53)+acd310(52)+acd310(55)+acd310(&
      &56)+acd310(54)
      acd310(52)=acd310(13)*acd310(52)
      acd310(53)=acd310(11)*acd310(9)
      acd310(54)=acd310(8)*acd310(6)
      acd310(55)=acd310(4)*acd310(1)
      acd310(53)=acd310(55)+acd310(53)+acd310(54)
      acd310(53)=acd310(5)*acd310(53)
      acd310(54)=-acd310(10)*acd310(9)
      acd310(55)=-acd310(7)*acd310(6)
      acd310(56)=-acd310(2)*acd310(1)
      acd310(54)=acd310(56)+acd310(55)+acd310(54)
      acd310(54)=acd310(3)*acd310(54)
      acd310(53)=acd310(54)+acd310(53)
      brack=acd310(50)+acd310(51)+acd310(52)+2.0_ki*acd310(53)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd310h4
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
      qshift = -k6-k5
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
!---#[ subroutine reconstruct_d310:
   subroutine     reconstruct_d310(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_310:
      coeffs%coeffs_310%c0 = derivative(czip)
      coeffs%coeffs_310%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_310%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_310%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_310%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_310%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_310%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_310%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_310%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_310%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_310%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_310%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_310%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_310%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_310%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_310%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_310%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_310%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_310%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_310%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_310%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_310%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_310%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_310%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_310%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_310%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_310%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_310%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_310%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_310%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_310%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_310%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_310%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_310%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_310%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_310:
   end subroutine reconstruct_d310
!---#] subroutine reconstruct_d310:
end module     p0_dbaru_epnebbbarg_d310h4l1d
