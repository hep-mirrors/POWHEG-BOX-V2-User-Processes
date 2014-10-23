module     p0_dbaru_epnebbbarg_d86h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d86h2l1d.f90
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
   public :: derivative , reconstruct_d86
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd86h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(99) :: acd86
      complex(ki) :: brack
      acd86(1)=dotproduct(k1,qshift)
      acd86(2)=dotproduct(k2,qshift)
      acd86(3)=abb86(125)
      acd86(4)=dotproduct(qshift,spval5l6)
      acd86(5)=abb86(26)
      acd86(6)=abb86(18)
      acd86(7)=abb86(123)
      acd86(8)=dotproduct(k3,qshift)
      acd86(9)=abb86(126)
      acd86(10)=dotproduct(k4,qshift)
      acd86(11)=dotproduct(l5,qshift)
      acd86(12)=abb86(101)
      acd86(13)=dotproduct(l6,qshift)
      acd86(14)=dotproduct(k7,qshift)
      acd86(15)=abb86(110)
      acd86(16)=abb86(22)
      acd86(17)=dotproduct(qshift,spvak1k2)
      acd86(18)=abb86(28)
      acd86(19)=dotproduct(qshift,spvak2k7)
      acd86(20)=abb86(33)
      acd86(21)=dotproduct(qshift,spvak4k2)
      acd86(22)=abb86(44)
      acd86(23)=dotproduct(qshift,spvak4k3)
      acd86(24)=abb86(118)
      acd86(25)=dotproduct(qshift,spval5k2)
      acd86(26)=abb86(105)
      acd86(27)=dotproduct(qshift,spval6k2)
      acd86(28)=abb86(339)
      acd86(29)=abb86(84)
      acd86(30)=abb86(77)
      acd86(31)=abb86(72)
      acd86(32)=abb86(32)
      acd86(33)=abb86(54)
      acd86(34)=abb86(23)
      acd86(35)=abb86(21)
      acd86(36)=abb86(286)
      acd86(37)=dotproduct(qshift,qshift)
      acd86(38)=abb86(149)
      acd86(39)=abb86(38)
      acd86(40)=abb86(31)
      acd86(41)=abb86(20)
      acd86(42)=abb86(17)
      acd86(43)=abb86(73)
      acd86(44)=abb86(47)
      acd86(45)=abb86(25)
      acd86(46)=abb86(24)
      acd86(47)=abb86(35)
      acd86(48)=abb86(45)
      acd86(49)=abb86(107)
      acd86(50)=abb86(19)
      acd86(51)=abb86(300)
      acd86(52)=dotproduct(qshift,spvak1k3)
      acd86(53)=abb86(34)
      acd86(54)=dotproduct(qshift,spvak1l5)
      acd86(55)=abb86(36)
      acd86(56)=dotproduct(qshift,spvak1l6)
      acd86(57)=abb86(30)
      acd86(58)=dotproduct(qshift,spvak1k7)
      acd86(59)=abb86(42)
      acd86(60)=dotproduct(qshift,spvak2k1)
      acd86(61)=abb86(40)
      acd86(62)=dotproduct(qshift,spvak2k3)
      acd86(63)=abb86(37)
      acd86(64)=dotproduct(qshift,spvak2l5)
      acd86(65)=abb86(29)
      acd86(66)=dotproduct(qshift,spvak2l6)
      acd86(67)=abb86(27)
      acd86(68)=dotproduct(qshift,spvak4l6)
      acd86(69)=abb86(113)
      acd86(70)=dotproduct(qshift,spvak4k7)
      acd86(71)=abb86(111)
      acd86(72)=dotproduct(qshift,spvak7l6)
      acd86(73)=abb86(290)
      acd86(74)=abb86(52)
      acd86(75)=acd86(11)+acd86(13)
      acd86(76)=acd86(12)*acd86(75)
      acd86(77)=acd86(8)+acd86(10)
      acd86(78)=-acd86(9)*acd86(77)
      acd86(79)=acd86(27)*acd86(28)
      acd86(80)=acd86(25)*acd86(26)
      acd86(81)=acd86(23)*acd86(24)
      acd86(82)=acd86(21)*acd86(22)
      acd86(83)=acd86(19)*acd86(20)
      acd86(84)=acd86(17)*acd86(18)
      acd86(85)=acd86(14)*acd86(15)
      acd86(86)=acd86(1)*acd86(3)
      acd86(87)=acd86(4)*acd86(16)
      acd86(88)=acd86(2)*acd86(7)
      acd86(76)=acd86(88)+acd86(87)+acd86(86)+acd86(85)+acd86(84)+acd86(83)+acd&
      &86(82)+acd86(81)+acd86(80)-acd86(29)+acd86(79)+acd86(78)+acd86(76)
      acd86(76)=acd86(2)*acd86(76)
      acd86(75)=acd86(32)*acd86(75)
      acd86(78)=acd86(30)*acd86(77)
      acd86(79)=acd86(27)*acd86(44)
      acd86(80)=acd86(25)*acd86(43)
      acd86(81)=acd86(23)*acd86(42)
      acd86(82)=acd86(21)*acd86(41)
      acd86(83)=acd86(19)*acd86(40)
      acd86(84)=acd86(17)*acd86(39)
      acd86(85)=acd86(14)*acd86(35)
      acd86(86)=acd86(1)*acd86(5)
      acd86(75)=acd86(86)+acd86(85)+acd86(84)+acd86(83)+acd86(82)+acd86(81)+acd&
      &86(80)-acd86(45)+acd86(79)+acd86(78)+acd86(75)
      acd86(75)=acd86(4)*acd86(75)
      acd86(77)=-acd86(31)*acd86(77)
      acd86(78)=-acd86(72)*acd86(73)
      acd86(79)=-acd86(70)*acd86(71)
      acd86(80)=-acd86(68)*acd86(69)
      acd86(81)=-acd86(66)*acd86(67)
      acd86(82)=-acd86(64)*acd86(65)
      acd86(83)=-acd86(62)*acd86(63)
      acd86(84)=-acd86(60)*acd86(61)
      acd86(85)=-acd86(58)*acd86(59)
      acd86(86)=-acd86(56)*acd86(57)
      acd86(87)=-acd86(54)*acd86(55)
      acd86(88)=-acd86(52)*acd86(53)
      acd86(89)=acd86(37)*acd86(38)
      acd86(90)=-acd86(27)*acd86(51)
      acd86(91)=-acd86(25)*acd86(50)
      acd86(92)=-acd86(23)*acd86(49)
      acd86(93)=-acd86(21)*acd86(48)
      acd86(94)=-acd86(19)*acd86(47)
      acd86(95)=-acd86(17)*acd86(46)
      acd86(96)=-acd86(14)*acd86(36)
      acd86(97)=-acd86(13)*acd86(34)
      acd86(98)=-acd86(11)*acd86(33)
      acd86(99)=-acd86(1)*acd86(6)
      brack=acd86(74)+acd86(75)+acd86(76)+acd86(77)+acd86(78)+acd86(79)+acd86(8&
      &0)+acd86(81)+acd86(82)+acd86(83)+acd86(84)+acd86(85)+acd86(86)+acd86(87)&
      &+acd86(88)+acd86(89)+acd86(90)+acd86(91)+acd86(92)+acd86(93)+acd86(94)+a&
      &cd86(95)+acd86(96)+acd86(97)+acd86(98)+acd86(99)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd86h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(114) :: acd86
      complex(ki) :: brack
      acd86(1)=k1(iv1)
      acd86(2)=dotproduct(k2,qshift)
      acd86(3)=abb86(125)
      acd86(4)=dotproduct(qshift,spval5l6)
      acd86(5)=abb86(26)
      acd86(6)=abb86(18)
      acd86(7)=k2(iv1)
      acd86(8)=dotproduct(k1,qshift)
      acd86(9)=abb86(123)
      acd86(10)=dotproduct(k3,qshift)
      acd86(11)=abb86(126)
      acd86(12)=dotproduct(k4,qshift)
      acd86(13)=dotproduct(l5,qshift)
      acd86(14)=abb86(101)
      acd86(15)=dotproduct(l6,qshift)
      acd86(16)=dotproduct(k7,qshift)
      acd86(17)=abb86(110)
      acd86(18)=abb86(22)
      acd86(19)=dotproduct(qshift,spvak1k2)
      acd86(20)=abb86(28)
      acd86(21)=dotproduct(qshift,spvak2k7)
      acd86(22)=abb86(33)
      acd86(23)=dotproduct(qshift,spvak4k2)
      acd86(24)=abb86(44)
      acd86(25)=dotproduct(qshift,spvak4k3)
      acd86(26)=abb86(118)
      acd86(27)=dotproduct(qshift,spval5k2)
      acd86(28)=abb86(105)
      acd86(29)=dotproduct(qshift,spval6k2)
      acd86(30)=abb86(339)
      acd86(31)=abb86(84)
      acd86(32)=k3(iv1)
      acd86(33)=abb86(77)
      acd86(34)=abb86(72)
      acd86(35)=k4(iv1)
      acd86(36)=l5(iv1)
      acd86(37)=abb86(32)
      acd86(38)=abb86(54)
      acd86(39)=l6(iv1)
      acd86(40)=abb86(23)
      acd86(41)=k7(iv1)
      acd86(42)=abb86(21)
      acd86(43)=abb86(286)
      acd86(44)=qshift(iv1)
      acd86(45)=abb86(149)
      acd86(46)=spval5l6(iv1)
      acd86(47)=abb86(38)
      acd86(48)=abb86(31)
      acd86(49)=abb86(20)
      acd86(50)=abb86(17)
      acd86(51)=abb86(73)
      acd86(52)=abb86(47)
      acd86(53)=abb86(25)
      acd86(54)=spvak1k2(iv1)
      acd86(55)=abb86(24)
      acd86(56)=spvak2k7(iv1)
      acd86(57)=abb86(35)
      acd86(58)=spvak4k2(iv1)
      acd86(59)=abb86(45)
      acd86(60)=spvak4k3(iv1)
      acd86(61)=abb86(107)
      acd86(62)=spval5k2(iv1)
      acd86(63)=abb86(19)
      acd86(64)=spval6k2(iv1)
      acd86(65)=abb86(300)
      acd86(66)=spvak1k3(iv1)
      acd86(67)=abb86(34)
      acd86(68)=spvak1l5(iv1)
      acd86(69)=abb86(36)
      acd86(70)=spvak1l6(iv1)
      acd86(71)=abb86(30)
      acd86(72)=spvak1k7(iv1)
      acd86(73)=abb86(42)
      acd86(74)=spvak2k1(iv1)
      acd86(75)=abb86(40)
      acd86(76)=spvak2k3(iv1)
      acd86(77)=abb86(37)
      acd86(78)=spvak2l5(iv1)
      acd86(79)=abb86(29)
      acd86(80)=spvak2l6(iv1)
      acd86(81)=abb86(27)
      acd86(82)=spvak4l6(iv1)
      acd86(83)=abb86(113)
      acd86(84)=spvak4k7(iv1)
      acd86(85)=abb86(111)
      acd86(86)=spvak7l6(iv1)
      acd86(87)=abb86(290)
      acd86(88)=acd86(29)*acd86(30)
      acd86(89)=acd86(27)*acd86(28)
      acd86(90)=acd86(25)*acd86(26)
      acd86(91)=acd86(23)*acd86(24)
      acd86(92)=acd86(21)*acd86(22)
      acd86(93)=acd86(19)*acd86(20)
      acd86(94)=acd86(16)*acd86(17)
      acd86(95)=acd86(3)*acd86(8)
      acd86(96)=acd86(13)+acd86(15)
      acd86(97)=acd86(14)*acd86(96)
      acd86(98)=acd86(10)+acd86(12)
      acd86(99)=-acd86(11)*acd86(98)
      acd86(100)=acd86(4)*acd86(18)
      acd86(101)=acd86(2)*acd86(9)
      acd86(88)=2.0_ki*acd86(101)+acd86(100)+acd86(99)+acd86(97)+acd86(95)+acd8&
      &6(94)+acd86(93)+acd86(92)+acd86(91)+acd86(90)+acd86(89)-acd86(31)+acd86(&
      &88)
      acd86(88)=acd86(7)*acd86(88)
      acd86(89)=acd86(64)*acd86(30)
      acd86(90)=acd86(62)*acd86(28)
      acd86(91)=acd86(60)*acd86(26)
      acd86(92)=acd86(58)*acd86(24)
      acd86(93)=acd86(56)*acd86(22)
      acd86(94)=acd86(54)*acd86(20)
      acd86(95)=acd86(41)*acd86(17)
      acd86(97)=acd86(1)*acd86(3)
      acd86(99)=acd86(36)+acd86(39)
      acd86(100)=acd86(14)*acd86(99)
      acd86(101)=acd86(32)+acd86(35)
      acd86(102)=-acd86(11)*acd86(101)
      acd86(103)=acd86(46)*acd86(18)
      acd86(89)=acd86(103)+acd86(102)+acd86(100)+acd86(97)+acd86(95)+acd86(94)+&
      &acd86(93)+acd86(92)+acd86(91)+acd86(89)+acd86(90)
      acd86(89)=acd86(2)*acd86(89)
      acd86(90)=acd86(64)*acd86(52)
      acd86(91)=acd86(62)*acd86(51)
      acd86(92)=acd86(60)*acd86(50)
      acd86(93)=acd86(58)*acd86(49)
      acd86(94)=acd86(56)*acd86(48)
      acd86(95)=acd86(54)*acd86(47)
      acd86(97)=acd86(41)*acd86(42)
      acd86(100)=acd86(1)*acd86(5)
      acd86(99)=acd86(37)*acd86(99)
      acd86(102)=acd86(33)*acd86(101)
      acd86(90)=acd86(102)+acd86(99)+acd86(100)+acd86(97)+acd86(95)+acd86(94)+a&
      &cd86(93)+acd86(92)+acd86(90)+acd86(91)
      acd86(90)=acd86(4)*acd86(90)
      acd86(91)=acd86(29)*acd86(52)
      acd86(92)=acd86(27)*acd86(51)
      acd86(93)=acd86(25)*acd86(50)
      acd86(94)=acd86(23)*acd86(49)
      acd86(95)=acd86(21)*acd86(48)
      acd86(97)=acd86(19)*acd86(47)
      acd86(99)=acd86(16)*acd86(42)
      acd86(100)=acd86(5)*acd86(8)
      acd86(96)=acd86(37)*acd86(96)
      acd86(98)=acd86(33)*acd86(98)
      acd86(91)=acd86(98)+acd86(96)+acd86(100)+acd86(99)+acd86(97)+acd86(95)+ac&
      &d86(94)+acd86(93)+acd86(92)-acd86(53)+acd86(91)
      acd86(91)=acd86(46)*acd86(91)
      acd86(92)=-acd86(34)*acd86(101)
      acd86(93)=-acd86(86)*acd86(87)
      acd86(94)=-acd86(84)*acd86(85)
      acd86(95)=-acd86(82)*acd86(83)
      acd86(96)=-acd86(80)*acd86(81)
      acd86(97)=-acd86(78)*acd86(79)
      acd86(98)=-acd86(76)*acd86(77)
      acd86(99)=-acd86(74)*acd86(75)
      acd86(100)=-acd86(72)*acd86(73)
      acd86(101)=-acd86(70)*acd86(71)
      acd86(102)=-acd86(68)*acd86(69)
      acd86(103)=-acd86(66)*acd86(67)
      acd86(104)=acd86(44)*acd86(45)
      acd86(105)=-acd86(64)*acd86(65)
      acd86(106)=-acd86(62)*acd86(63)
      acd86(107)=-acd86(60)*acd86(61)
      acd86(108)=-acd86(58)*acd86(59)
      acd86(109)=-acd86(56)*acd86(57)
      acd86(110)=-acd86(54)*acd86(55)
      acd86(111)=-acd86(41)*acd86(43)
      acd86(112)=-acd86(39)*acd86(40)
      acd86(113)=-acd86(36)*acd86(38)
      acd86(114)=-acd86(1)*acd86(6)
      brack=acd86(88)+acd86(89)+acd86(90)+acd86(91)+acd86(92)+acd86(93)+acd86(9&
      &4)+acd86(95)+acd86(96)+acd86(97)+acd86(98)+acd86(99)+acd86(100)+acd86(10&
      &1)+acd86(102)+acd86(103)+2.0_ki*acd86(104)+acd86(105)+acd86(106)+acd86(1&
      &07)+acd86(108)+acd86(109)+acd86(110)+acd86(111)+acd86(112)+acd86(113)+ac&
      &d86(114)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd86h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd86
      complex(ki) :: brack
      acd86(1)=d(iv1,iv2)
      acd86(2)=abb86(149)
      acd86(3)=k1(iv1)
      acd86(4)=k2(iv2)
      acd86(5)=abb86(125)
      acd86(6)=spval5l6(iv2)
      acd86(7)=abb86(26)
      acd86(8)=k1(iv2)
      acd86(9)=k2(iv1)
      acd86(10)=spval5l6(iv1)
      acd86(11)=abb86(123)
      acd86(12)=k3(iv2)
      acd86(13)=abb86(126)
      acd86(14)=k4(iv2)
      acd86(15)=l5(iv2)
      acd86(16)=abb86(101)
      acd86(17)=l6(iv2)
      acd86(18)=k7(iv2)
      acd86(19)=abb86(110)
      acd86(20)=abb86(22)
      acd86(21)=spvak1k2(iv2)
      acd86(22)=abb86(28)
      acd86(23)=spvak2k7(iv2)
      acd86(24)=abb86(33)
      acd86(25)=spvak4k2(iv2)
      acd86(26)=abb86(44)
      acd86(27)=spvak4k3(iv2)
      acd86(28)=abb86(118)
      acd86(29)=spval5k2(iv2)
      acd86(30)=abb86(105)
      acd86(31)=spval6k2(iv2)
      acd86(32)=abb86(339)
      acd86(33)=k3(iv1)
      acd86(34)=k4(iv1)
      acd86(35)=l5(iv1)
      acd86(36)=l6(iv1)
      acd86(37)=k7(iv1)
      acd86(38)=spvak1k2(iv1)
      acd86(39)=spvak2k7(iv1)
      acd86(40)=spvak4k2(iv1)
      acd86(41)=spvak4k3(iv1)
      acd86(42)=spval5k2(iv1)
      acd86(43)=spval6k2(iv1)
      acd86(44)=abb86(77)
      acd86(45)=abb86(32)
      acd86(46)=abb86(21)
      acd86(47)=abb86(38)
      acd86(48)=abb86(31)
      acd86(49)=abb86(20)
      acd86(50)=abb86(17)
      acd86(51)=abb86(73)
      acd86(52)=abb86(47)
      acd86(53)=acd86(32)*acd86(43)
      acd86(54)=acd86(30)*acd86(42)
      acd86(55)=acd86(28)*acd86(41)
      acd86(56)=acd86(26)*acd86(40)
      acd86(57)=acd86(24)*acd86(39)
      acd86(58)=acd86(22)*acd86(38)
      acd86(59)=acd86(19)*acd86(37)
      acd86(60)=acd86(3)*acd86(5)
      acd86(61)=acd86(35)+acd86(36)
      acd86(62)=acd86(16)*acd86(61)
      acd86(63)=acd86(33)+acd86(34)
      acd86(64)=-acd86(13)*acd86(63)
      acd86(65)=acd86(10)*acd86(20)
      acd86(66)=acd86(9)*acd86(11)
      acd86(53)=2.0_ki*acd86(66)+acd86(65)+acd86(64)+acd86(62)+acd86(60)+acd86(&
      &59)+acd86(58)+acd86(57)+acd86(56)+acd86(55)+acd86(53)+acd86(54)
      acd86(53)=acd86(4)*acd86(53)
      acd86(54)=acd86(31)*acd86(32)
      acd86(55)=acd86(29)*acd86(30)
      acd86(56)=acd86(27)*acd86(28)
      acd86(57)=acd86(25)*acd86(26)
      acd86(58)=acd86(23)*acd86(24)
      acd86(59)=acd86(21)*acd86(22)
      acd86(60)=acd86(18)*acd86(19)
      acd86(62)=acd86(5)*acd86(8)
      acd86(64)=acd86(15)+acd86(17)
      acd86(65)=acd86(16)*acd86(64)
      acd86(66)=acd86(12)+acd86(14)
      acd86(67)=-acd86(13)*acd86(66)
      acd86(68)=acd86(6)*acd86(20)
      acd86(54)=acd86(68)+acd86(67)+acd86(65)+acd86(62)+acd86(60)+acd86(59)+acd&
      &86(58)+acd86(57)+acd86(56)+acd86(54)+acd86(55)
      acd86(54)=acd86(9)*acd86(54)
      acd86(55)=acd86(31)*acd86(52)
      acd86(56)=acd86(29)*acd86(51)
      acd86(57)=acd86(27)*acd86(50)
      acd86(58)=acd86(25)*acd86(49)
      acd86(59)=acd86(23)*acd86(48)
      acd86(60)=acd86(21)*acd86(47)
      acd86(62)=acd86(18)*acd86(46)
      acd86(65)=acd86(7)*acd86(8)
      acd86(64)=acd86(45)*acd86(64)
      acd86(66)=acd86(44)*acd86(66)
      acd86(55)=acd86(66)+acd86(64)+acd86(65)+acd86(62)+acd86(60)+acd86(59)+acd&
      &86(58)+acd86(57)+acd86(55)+acd86(56)
      acd86(55)=acd86(10)*acd86(55)
      acd86(56)=acd86(43)*acd86(52)
      acd86(57)=acd86(42)*acd86(51)
      acd86(58)=acd86(41)*acd86(50)
      acd86(59)=acd86(40)*acd86(49)
      acd86(60)=acd86(39)*acd86(48)
      acd86(62)=acd86(38)*acd86(47)
      acd86(64)=acd86(37)*acd86(46)
      acd86(65)=acd86(3)*acd86(7)
      acd86(61)=acd86(45)*acd86(61)
      acd86(63)=acd86(44)*acd86(63)
      acd86(56)=acd86(63)+acd86(61)+acd86(65)+acd86(64)+acd86(62)+acd86(60)+acd&
      &86(59)+acd86(58)+acd86(56)+acd86(57)
      acd86(56)=acd86(6)*acd86(56)
      acd86(57)=acd86(1)*acd86(2)
      brack=acd86(53)+acd86(54)+acd86(55)+acd86(56)+2.0_ki*acd86(57)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd86h2
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
      qshift = -k6
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
!---#[ subroutine reconstruct_d86:
   subroutine     reconstruct_d86(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_86:
      coeffs%coeffs_86%c0 = derivative(czip)
      coeffs%coeffs_86%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_86%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_86%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_86%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_86%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_86%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_86%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_86%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_86%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_86%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_86%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_86%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_86%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_86%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_86:
   end subroutine reconstruct_d86
!---#] subroutine reconstruct_d86:
end module     p0_dbaru_epnebbbarg_d86h2l1d
