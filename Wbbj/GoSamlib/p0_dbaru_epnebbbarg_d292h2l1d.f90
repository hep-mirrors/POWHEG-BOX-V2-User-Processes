module     p0_dbaru_epnebbbarg_d292h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d292h2l1d.f90
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
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d292
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd292
      complex(ki) :: brack
      acd292(1)=abb292(46)
      brack=acd292(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd292
      complex(ki) :: brack
      acd292(1)=k1(iv1)
      acd292(2)=abb292(77)
      acd292(3)=k2(iv1)
      acd292(4)=abb292(16)
      acd292(5)=l5(iv1)
      acd292(6)=abb292(37)
      acd292(7)=k7(iv1)
      acd292(8)=abb292(54)
      acd292(9)=spvak1k2(iv1)
      acd292(10)=abb292(36)
      acd292(11)=spvak1l5(iv1)
      acd292(12)=abb292(39)
      acd292(13)=spvak1l6(iv1)
      acd292(14)=abb292(56)
      acd292(15)=spvak2k7(iv1)
      acd292(16)=abb292(44)
      acd292(17)=spvak4k3(iv1)
      acd292(18)=abb292(92)
      acd292(19)=spval5k1(iv1)
      acd292(20)=abb292(42)
      acd292(21)=spval5k2(iv1)
      acd292(22)=abb292(10)
      acd292(23)=spval5l6(iv1)
      acd292(24)=abb292(71)
      acd292(25)=spvak7k2(iv1)
      acd292(26)=abb292(30)
      acd292(27)=-acd292(2)*acd292(1)
      acd292(28)=-acd292(4)*acd292(3)
      acd292(29)=-acd292(6)*acd292(5)
      acd292(30)=-acd292(8)*acd292(7)
      acd292(31)=-acd292(10)*acd292(9)
      acd292(32)=-acd292(12)*acd292(11)
      acd292(33)=-acd292(14)*acd292(13)
      acd292(34)=-acd292(16)*acd292(15)
      acd292(35)=-acd292(18)*acd292(17)
      acd292(36)=-acd292(20)*acd292(19)
      acd292(37)=-acd292(22)*acd292(21)
      acd292(38)=-acd292(24)*acd292(23)
      acd292(39)=-acd292(26)*acd292(25)
      brack=acd292(27)+acd292(28)+acd292(29)+acd292(30)+acd292(31)+acd292(32)+a&
      &cd292(33)+acd292(34)+acd292(35)+acd292(36)+acd292(37)+acd292(38)+acd292(&
      &39)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(103) :: acd292
      complex(ki) :: brack
      acd292(1)=d(iv1,iv2)
      acd292(2)=abb292(24)
      acd292(3)=k1(iv1)
      acd292(4)=k2(iv2)
      acd292(5)=abb292(75)
      acd292(6)=spvak2k7(iv2)
      acd292(7)=abb292(66)
      acd292(8)=spval5k2(iv2)
      acd292(9)=abb292(88)
      acd292(10)=spval5l6(iv2)
      acd292(11)=abb292(72)
      acd292(12)=k1(iv2)
      acd292(13)=k2(iv1)
      acd292(14)=spvak2k7(iv1)
      acd292(15)=spval5k2(iv1)
      acd292(16)=spval5l6(iv1)
      acd292(17)=abb292(74)
      acd292(18)=l5(iv2)
      acd292(19)=abb292(69)
      acd292(20)=k7(iv2)
      acd292(21)=abb292(15)
      acd292(22)=abb292(70)
      acd292(23)=spvak1k2(iv2)
      acd292(24)=abb292(45)
      acd292(25)=spvak1l5(iv2)
      acd292(26)=abb292(112)
      acd292(27)=spvak1l6(iv2)
      acd292(28)=abb292(79)
      acd292(29)=spvak4k2(iv2)
      acd292(30)=abb292(99)
      acd292(31)=spvak4k3(iv2)
      acd292(32)=abb292(96)
      acd292(33)=spval5k3(iv2)
      acd292(34)=abb292(81)
      acd292(35)=l5(iv1)
      acd292(36)=k7(iv1)
      acd292(37)=spvak1k2(iv1)
      acd292(38)=spvak1l5(iv1)
      acd292(39)=spvak1l6(iv1)
      acd292(40)=spvak4k2(iv1)
      acd292(41)=spvak4k3(iv1)
      acd292(42)=spval5k3(iv1)
      acd292(43)=abb292(25)
      acd292(44)=abb292(60)
      acd292(45)=abb292(94)
      acd292(46)=abb292(58)
      acd292(47)=spvak1k3(iv2)
      acd292(48)=abb292(29)
      acd292(49)=spvak1k3(iv1)
      acd292(50)=abb292(12)
      acd292(51)=abb292(103)
      acd292(52)=abb292(21)
      acd292(53)=abb292(34)
      acd292(54)=abb292(38)
      acd292(55)=abb292(11)
      acd292(56)=abb292(41)
      acd292(57)=abb292(106)
      acd292(58)=abb292(101)
      acd292(59)=spval5k1(iv2)
      acd292(60)=abb292(82)
      acd292(61)=spval6k2(iv2)
      acd292(62)=abb292(93)
      acd292(63)=spvak7k2(iv2)
      acd292(64)=abb292(65)
      acd292(65)=spval5k1(iv1)
      acd292(66)=spval6k2(iv1)
      acd292(67)=spvak7k2(iv1)
      acd292(68)=abb292(19)
      acd292(69)=abb292(18)
      acd292(70)=abb292(63)
      acd292(71)=abb292(98)
      acd292(72)=spvak2l6(iv2)
      acd292(73)=abb292(13)
      acd292(74)=spvak7l6(iv2)
      acd292(75)=abb292(89)
      acd292(76)=spvak2l6(iv1)
      acd292(77)=spvak7l6(iv1)
      acd292(78)=abb292(35)
      acd292(79)=abb292(61)
      acd292(80)=abb292(67)
      acd292(81)=abb292(57)
      acd292(82)=spvak1k7(iv2)
      acd292(83)=abb292(51)
      acd292(84)=spval5k7(iv2)
      acd292(85)=abb292(97)
      acd292(86)=spvak1k7(iv1)
      acd292(87)=spval5k7(iv1)
      acd292(88)=acd292(64)*acd292(63)
      acd292(89)=acd292(62)*acd292(61)
      acd292(90)=acd292(59)*acd292(60)
      acd292(91)=acd292(47)*acd292(58)
      acd292(92)=acd292(33)*acd292(57)
      acd292(93)=acd292(29)*acd292(55)
      acd292(94)=acd292(25)*acd292(53)
      acd292(95)=acd292(23)*acd292(52)
      acd292(96)=acd292(12)*acd292(7)
      acd292(97)=acd292(10)*acd292(51)
      acd292(98)=acd292(18)*acd292(43)
      acd292(99)=acd292(31)*acd292(56)
      acd292(100)=acd292(27)*acd292(54)
      acd292(101)=acd292(8)*acd292(50)
      acd292(102)=acd292(4)*acd292(21)
      acd292(88)=acd292(102)+acd292(101)+acd292(100)+acd292(99)+acd292(98)+acd2&
      &92(97)+acd292(96)+acd292(95)+acd292(94)+acd292(93)+acd292(92)+acd292(91)&
      &+acd292(90)+acd292(88)+acd292(89)
      acd292(88)=acd292(14)*acd292(88)
      acd292(89)=acd292(64)*acd292(67)
      acd292(90)=acd292(62)*acd292(66)
      acd292(91)=acd292(60)*acd292(65)
      acd292(92)=acd292(49)*acd292(58)
      acd292(93)=acd292(42)*acd292(57)
      acd292(94)=acd292(40)*acd292(55)
      acd292(95)=acd292(38)*acd292(53)
      acd292(96)=acd292(37)*acd292(52)
      acd292(97)=acd292(16)*acd292(51)
      acd292(98)=acd292(3)*acd292(7)
      acd292(99)=acd292(35)*acd292(43)
      acd292(100)=acd292(41)*acd292(56)
      acd292(101)=acd292(39)*acd292(54)
      acd292(102)=acd292(15)*acd292(50)
      acd292(103)=acd292(13)*acd292(21)
      acd292(89)=acd292(103)+acd292(102)+acd292(101)+acd292(100)+acd292(99)+acd&
      &292(98)+acd292(97)+acd292(96)+acd292(95)+acd292(94)+acd292(93)+acd292(92&
      &)+acd292(91)+acd292(89)+acd292(90)
      acd292(89)=acd292(6)*acd292(89)
      acd292(90)=acd292(75)*acd292(74)
      acd292(91)=acd292(73)*acd292(72)
      acd292(92)=acd292(25)*acd292(69)
      acd292(93)=acd292(23)*acd292(68)
      acd292(94)=acd292(12)*acd292(9)
      acd292(95)=acd292(31)*acd292(71)
      acd292(96)=acd292(27)*acd292(70)
      acd292(97)=acd292(20)*acd292(22)
      acd292(90)=acd292(97)+acd292(96)+acd292(95)+acd292(94)+acd292(93)+acd292(&
      &92)+acd292(90)+acd292(91)
      acd292(90)=acd292(15)*acd292(90)
      acd292(91)=acd292(75)*acd292(77)
      acd292(92)=acd292(73)*acd292(76)
      acd292(93)=acd292(38)*acd292(69)
      acd292(94)=acd292(37)*acd292(68)
      acd292(95)=acd292(3)*acd292(9)
      acd292(96)=acd292(41)*acd292(71)
      acd292(97)=acd292(39)*acd292(70)
      acd292(98)=acd292(36)*acd292(22)
      acd292(91)=acd292(98)+acd292(97)+acd292(96)+acd292(95)+acd292(94)+acd292(&
      &93)+acd292(91)+acd292(92)
      acd292(91)=acd292(8)*acd292(91)
      acd292(92)=acd292(34)*acd292(33)
      acd292(93)=acd292(30)*acd292(29)
      acd292(94)=acd292(18)*acd292(19)
      acd292(92)=acd292(94)+acd292(92)+acd292(93)
      acd292(93)=acd292(25)*acd292(26)
      acd292(94)=acd292(23)*acd292(24)
      acd292(95)=acd292(12)*acd292(5)
      acd292(96)=acd292(31)*acd292(32)
      acd292(97)=acd292(27)*acd292(28)
      acd292(98)=acd292(20)*acd292(17)
      acd292(99)=-acd292(8)*acd292(22)
      acd292(93)=acd292(99)+acd292(98)+acd292(97)+acd292(96)+acd292(95)+acd292(&
      &94)+acd292(93)+acd292(92)
      acd292(93)=acd292(13)*acd292(93)
      acd292(94)=acd292(34)*acd292(42)
      acd292(95)=acd292(30)*acd292(40)
      acd292(96)=acd292(35)*acd292(19)
      acd292(94)=acd292(96)+acd292(94)+acd292(95)
      acd292(95)=-2.0_ki*acd292(13)+acd292(36)
      acd292(95)=acd292(17)*acd292(95)
      acd292(96)=acd292(38)*acd292(26)
      acd292(97)=acd292(37)*acd292(24)
      acd292(98)=acd292(3)*acd292(5)
      acd292(99)=acd292(41)*acd292(32)
      acd292(100)=acd292(39)*acd292(28)
      acd292(101)=-acd292(15)*acd292(22)
      acd292(95)=acd292(101)+acd292(100)+acd292(99)+acd292(98)+acd292(96)+acd29&
      &2(97)+acd292(95)+acd292(94)
      acd292(95)=acd292(4)*acd292(95)
      acd292(96)=acd292(85)*acd292(87)
      acd292(97)=acd292(83)*acd292(86)
      acd292(98)=acd292(35)*acd292(45)
      acd292(99)=acd292(39)*acd292(80)
      acd292(96)=acd292(99)+acd292(98)+acd292(96)+acd292(97)
      acd292(96)=acd292(31)*acd292(96)
      acd292(97)=acd292(65)*acd292(81)
      acd292(98)=acd292(35)*acd292(44)
      acd292(99)=acd292(41)*acd292(80)
      acd292(100)=acd292(36)*acd292(46)
      acd292(97)=acd292(100)+acd292(99)+acd292(97)+acd292(98)
      acd292(97)=acd292(27)*acd292(97)
      acd292(98)=acd292(25)*acd292(79)
      acd292(99)=acd292(23)*acd292(78)
      acd292(100)=acd292(12)*acd292(11)
      acd292(98)=acd292(100)+acd292(98)+acd292(99)
      acd292(98)=acd292(16)*acd292(98)
      acd292(99)=acd292(38)*acd292(79)
      acd292(100)=acd292(37)*acd292(78)
      acd292(101)=acd292(3)*acd292(11)
      acd292(99)=acd292(101)+acd292(99)+acd292(100)
      acd292(99)=acd292(10)*acd292(99)
      acd292(100)=acd292(85)*acd292(84)
      acd292(101)=acd292(83)*acd292(82)
      acd292(102)=acd292(18)*acd292(45)
      acd292(100)=acd292(102)+acd292(100)+acd292(101)
      acd292(100)=acd292(41)*acd292(100)
      acd292(101)=acd292(47)*acd292(48)
      acd292(92)=acd292(101)-acd292(92)
      acd292(92)=acd292(36)*acd292(92)
      acd292(101)=acd292(48)*acd292(49)
      acd292(102)=acd292(39)*acd292(46)
      acd292(94)=acd292(102)+acd292(101)-acd292(94)
      acd292(94)=acd292(20)*acd292(94)
      acd292(101)=acd292(59)*acd292(81)
      acd292(102)=acd292(18)*acd292(44)
      acd292(101)=acd292(101)+acd292(102)
      acd292(101)=acd292(39)*acd292(101)
      acd292(102)=acd292(1)*acd292(2)
      brack=acd292(88)+acd292(89)+acd292(90)+acd292(91)+acd292(92)+acd292(93)+a&
      &cd292(94)+acd292(95)+acd292(96)+acd292(97)+acd292(98)+acd292(99)+acd292(&
      &100)+acd292(101)+2.0_ki*acd292(102)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(121) :: acd292
      complex(ki) :: brack
      acd292(1)=d(iv1,iv2)
      acd292(2)=k1(iv3)
      acd292(3)=abb292(76)
      acd292(4)=k2(iv3)
      acd292(5)=abb292(78)
      acd292(6)=l5(iv3)
      acd292(7)=abb292(68)
      acd292(8)=spvak1k2(iv3)
      acd292(9)=abb292(22)
      acd292(10)=spvak1l5(iv3)
      acd292(11)=abb292(49)
      acd292(12)=spvak1l6(iv3)
      acd292(13)=abb292(40)
      acd292(14)=spvak4k2(iv3)
      acd292(15)=abb292(27)
      acd292(16)=spvak4k3(iv3)
      acd292(17)=abb292(28)
      acd292(18)=spval5k2(iv3)
      acd292(19)=abb292(32)
      acd292(20)=spval5k3(iv3)
      acd292(21)=abb292(83)
      acd292(22)=d(iv1,iv3)
      acd292(23)=k1(iv2)
      acd292(24)=k2(iv2)
      acd292(25)=l5(iv2)
      acd292(26)=spvak1k2(iv2)
      acd292(27)=spvak1l5(iv2)
      acd292(28)=spvak1l6(iv2)
      acd292(29)=spvak4k2(iv2)
      acd292(30)=spvak4k3(iv2)
      acd292(31)=spval5k2(iv2)
      acd292(32)=spval5k3(iv2)
      acd292(33)=d(iv2,iv3)
      acd292(34)=k1(iv1)
      acd292(35)=k2(iv1)
      acd292(36)=l5(iv1)
      acd292(37)=spvak1k2(iv1)
      acd292(38)=spvak1l5(iv1)
      acd292(39)=spvak1l6(iv1)
      acd292(40)=spvak4k2(iv1)
      acd292(41)=spvak4k3(iv1)
      acd292(42)=spval5k2(iv1)
      acd292(43)=spval5k3(iv1)
      acd292(44)=spvak2k7(iv3)
      acd292(45)=abb292(20)
      acd292(46)=spvak2k7(iv2)
      acd292(47)=spval5l6(iv3)
      acd292(48)=abb292(105)
      acd292(49)=spval5l6(iv2)
      acd292(50)=spvak2k7(iv1)
      acd292(51)=spval5l6(iv1)
      acd292(52)=abb292(73)
      acd292(53)=abb292(107)
      acd292(54)=spvak1k7(iv3)
      acd292(55)=abb292(47)
      acd292(56)=spvak1k7(iv2)
      acd292(57)=spvak1k3(iv3)
      acd292(58)=abb292(104)
      acd292(59)=spvak2l6(iv3)
      acd292(60)=abb292(26)
      acd292(61)=spvak4l6(iv3)
      acd292(62)=abb292(90)
      acd292(63)=spvak1k3(iv2)
      acd292(64)=spvak2l6(iv2)
      acd292(65)=spvak4l6(iv2)
      acd292(66)=spvak1k7(iv1)
      acd292(67)=spvak1k3(iv1)
      acd292(68)=spvak2l6(iv1)
      acd292(69)=spvak4l6(iv1)
      acd292(70)=abb292(55)
      acd292(71)=abb292(95)
      acd292(72)=l6(iv1)
      acd292(73)=l6(iv2)
      acd292(74)=l6(iv3)
      acd292(75)=k7(iv1)
      acd292(76)=k7(iv2)
      acd292(77)=k7(iv3)
      acd292(78)=abb292(91)
      acd292(79)=abb292(17)
      acd292(80)=abb292(23)
      acd292(81)=abb292(59)
      acd292(82)=abb292(102)
      acd292(83)=spval5k7(iv3)
      acd292(84)=abb292(52)
      acd292(85)=spval5k7(iv2)
      acd292(86)=abb292(33)
      acd292(87)=abb292(109)
      acd292(88)=spval5k1(iv3)
      acd292(89)=abb292(48)
      acd292(90)=spval5k1(iv2)
      acd292(91)=spval5k7(iv1)
      acd292(92)=spval5k1(iv1)
      acd292(93)=abb292(84)
      acd292(94)=abb292(14)
      acd292(95)=abb292(87)
      acd292(96)=abb292(114)
      acd292(97)=abb292(50)
      acd292(98)=abb292(31)
      acd292(99)=spvak7l6(iv3)
      acd292(100)=abb292(64)
      acd292(101)=spvak7l6(iv2)
      acd292(102)=spvak7l6(iv1)
      acd292(103)=acd292(2)+acd292(74)
      acd292(103)=acd292(103)*acd292(45)
      acd292(104)=acd292(100)*acd292(99)
      acd292(105)=acd292(81)*acd292(10)
      acd292(106)=acd292(61)*acd292(98)
      acd292(107)=acd292(59)*acd292(97)
      acd292(108)=acd292(8)*acd292(79)
      acd292(109)=acd292(57)*acd292(96)
      acd292(110)=acd292(47)*acd292(95)
      acd292(111)=acd292(16)*acd292(93)
      acd292(112)=acd292(12)*acd292(86)
      acd292(103)=-acd292(103)+acd292(107)+acd292(108)+acd292(109)+acd292(112)+&
      &acd292(104)+acd292(110)+acd292(111)+acd292(105)+acd292(106)
      acd292(104)=-acd292(31)*acd292(103)
      acd292(105)=acd292(23)+acd292(73)
      acd292(105)=acd292(105)*acd292(45)
      acd292(106)=acd292(100)*acd292(101)
      acd292(107)=acd292(81)*acd292(27)
      acd292(108)=acd292(65)*acd292(98)
      acd292(109)=acd292(64)*acd292(97)
      acd292(110)=acd292(26)*acd292(79)
      acd292(111)=acd292(63)*acd292(96)
      acd292(112)=acd292(49)*acd292(95)
      acd292(113)=acd292(30)*acd292(93)
      acd292(114)=acd292(28)*acd292(86)
      acd292(105)=-acd292(105)+acd292(109)+acd292(110)+acd292(111)+acd292(114)+&
      &acd292(106)+acd292(112)+acd292(113)+acd292(107)+acd292(108)
      acd292(106)=-acd292(18)*acd292(105)
      acd292(107)=acd292(82)*acd292(10)
      acd292(108)=acd292(48)*acd292(2)
      acd292(109)=acd292(8)*acd292(80)
      acd292(110)=acd292(57)*acd292(87)
      acd292(107)=acd292(107)+acd292(108)+acd292(109)-acd292(110)
      acd292(108)=-acd292(49)*acd292(107)
      acd292(109)=acd292(82)*acd292(27)
      acd292(110)=acd292(48)*acd292(23)
      acd292(111)=acd292(26)*acd292(80)
      acd292(112)=acd292(63)*acd292(87)
      acd292(109)=acd292(109)+acd292(110)+acd292(111)-acd292(112)
      acd292(110)=-acd292(47)*acd292(109)
      acd292(111)=acd292(89)*acd292(88)
      acd292(112)=acd292(70)*acd292(6)
      acd292(113)=acd292(87)*acd292(20)
      acd292(111)=acd292(113)+acd292(111)+acd292(112)
      acd292(112)=-acd292(28)*acd292(111)
      acd292(113)=acd292(89)*acd292(90)
      acd292(114)=acd292(70)*acd292(25)
      acd292(115)=acd292(87)*acd292(32)
      acd292(113)=acd292(115)+acd292(113)+acd292(114)
      acd292(114)=-acd292(12)*acd292(113)
      acd292(115)=acd292(71)*acd292(6)
      acd292(116)=acd292(8)*acd292(78)
      acd292(115)=acd292(115)-acd292(116)
      acd292(116)=-acd292(30)*acd292(115)
      acd292(117)=acd292(71)*acd292(25)
      acd292(118)=acd292(26)*acd292(78)
      acd292(117)=acd292(117)-acd292(118)
      acd292(118)=-acd292(16)*acd292(117)
      acd292(104)=acd292(106)+acd292(104)+acd292(114)+acd292(118)+acd292(112)+a&
      &cd292(116)+acd292(108)+acd292(110)
      acd292(104)=acd292(50)*acd292(104)
      acd292(103)=-acd292(42)*acd292(103)
      acd292(106)=acd292(34)+acd292(72)
      acd292(106)=acd292(106)*acd292(45)
      acd292(108)=acd292(100)*acd292(102)
      acd292(110)=acd292(81)*acd292(38)
      acd292(112)=acd292(69)*acd292(98)
      acd292(114)=acd292(68)*acd292(97)
      acd292(116)=acd292(37)*acd292(79)
      acd292(118)=acd292(67)*acd292(96)
      acd292(119)=acd292(51)*acd292(95)
      acd292(120)=acd292(41)*acd292(93)
      acd292(121)=acd292(39)*acd292(86)
      acd292(106)=-acd292(106)+acd292(114)+acd292(116)+acd292(118)+acd292(119)+&
      &acd292(108)+acd292(120)+acd292(121)+acd292(110)+acd292(112)
      acd292(108)=-acd292(18)*acd292(106)
      acd292(107)=-acd292(51)*acd292(107)
      acd292(110)=acd292(82)*acd292(38)
      acd292(112)=acd292(48)*acd292(34)
      acd292(114)=acd292(37)*acd292(80)
      acd292(116)=acd292(67)*acd292(87)
      acd292(110)=acd292(110)+acd292(112)+acd292(114)-acd292(116)
      acd292(112)=-acd292(47)*acd292(110)
      acd292(111)=-acd292(39)*acd292(111)
      acd292(114)=acd292(89)*acd292(92)
      acd292(116)=acd292(70)*acd292(36)
      acd292(118)=acd292(87)*acd292(43)
      acd292(114)=acd292(118)+acd292(114)+acd292(116)
      acd292(116)=-acd292(12)*acd292(114)
      acd292(115)=-acd292(41)*acd292(115)
      acd292(118)=acd292(71)*acd292(36)
      acd292(119)=acd292(37)*acd292(78)
      acd292(118)=acd292(118)-acd292(119)
      acd292(119)=-acd292(16)*acd292(118)
      acd292(103)=acd292(108)+acd292(103)+acd292(116)+acd292(119)+acd292(111)+a&
      &cd292(115)+acd292(107)+acd292(112)
      acd292(103)=acd292(46)*acd292(103)
      acd292(105)=-acd292(42)*acd292(105)
      acd292(106)=-acd292(31)*acd292(106)
      acd292(107)=-acd292(51)*acd292(109)
      acd292(108)=-acd292(49)*acd292(110)
      acd292(109)=-acd292(39)*acd292(113)
      acd292(110)=-acd292(28)*acd292(114)
      acd292(111)=-acd292(41)*acd292(117)
      acd292(112)=-acd292(30)*acd292(118)
      acd292(105)=acd292(106)+acd292(105)+acd292(110)+acd292(112)+acd292(109)+a&
      &cd292(111)+acd292(107)+acd292(108)
      acd292(105)=acd292(44)*acd292(105)
      acd292(106)=-acd292(15)*acd292(40)
      acd292(107)=-acd292(38)*acd292(11)
      acd292(108)=-acd292(36)*acd292(7)
      acd292(109)=-acd292(34)*acd292(3)
      acd292(110)=-acd292(43)*acd292(21)
      acd292(111)=-acd292(37)*acd292(9)
      acd292(106)=acd292(111)+acd292(110)+acd292(109)+acd292(108)+acd292(106)+a&
      &cd292(107)
      acd292(106)=acd292(33)*acd292(106)
      acd292(107)=-acd292(15)*acd292(29)
      acd292(108)=-acd292(27)*acd292(11)
      acd292(109)=-acd292(25)*acd292(7)
      acd292(110)=-acd292(23)*acd292(3)
      acd292(111)=-acd292(32)*acd292(21)
      acd292(112)=-acd292(26)*acd292(9)
      acd292(107)=acd292(112)+acd292(111)+acd292(110)+acd292(109)+acd292(107)+a&
      &cd292(108)
      acd292(107)=acd292(22)*acd292(107)
      acd292(108)=-acd292(15)*acd292(14)
      acd292(109)=-acd292(10)*acd292(11)
      acd292(110)=-acd292(6)*acd292(7)
      acd292(111)=-acd292(2)*acd292(3)
      acd292(112)=-acd292(20)*acd292(21)
      acd292(113)=-acd292(8)*acd292(9)
      acd292(108)=acd292(113)+acd292(112)+acd292(111)+acd292(110)+acd292(108)+a&
      &cd292(109)
      acd292(108)=acd292(1)*acd292(108)
      acd292(109)=-acd292(35)*acd292(33)
      acd292(110)=-acd292(24)*acd292(22)
      acd292(111)=-acd292(4)*acd292(1)
      acd292(109)=acd292(111)+acd292(110)+acd292(109)
      acd292(109)=acd292(5)*acd292(109)
      acd292(106)=acd292(108)+acd292(106)+acd292(107)+acd292(109)
      acd292(107)=acd292(62)*acd292(61)
      acd292(108)=acd292(60)*acd292(59)
      acd292(109)=acd292(57)*acd292(58)
      acd292(107)=acd292(109)+acd292(107)-acd292(108)
      acd292(108)=acd292(24)*acd292(107)
      acd292(110)=acd292(62)*acd292(65)
      acd292(111)=acd292(60)*acd292(64)
      acd292(112)=acd292(58)*acd292(63)
      acd292(110)=acd292(112)+acd292(110)-acd292(111)
      acd292(111)=acd292(4)*acd292(110)
      acd292(113)=acd292(30)*acd292(54)
      acd292(114)=acd292(16)*acd292(56)
      acd292(113)=acd292(114)+acd292(113)
      acd292(113)=acd292(94)*acd292(113)
      acd292(114)=-acd292(77)*acd292(65)
      acd292(115)=-acd292(76)*acd292(61)
      acd292(114)=acd292(114)+acd292(115)
      acd292(114)=acd292(62)*acd292(114)
      acd292(115)=acd292(77)*acd292(64)
      acd292(116)=acd292(76)*acd292(59)
      acd292(115)=acd292(115)+acd292(116)
      acd292(115)=acd292(60)*acd292(115)
      acd292(116)=2.0_ki*acd292(33)
      acd292(117)=-acd292(19)*acd292(116)
      acd292(112)=-acd292(77)*acd292(112)
      acd292(118)=-acd292(76)*acd292(109)
      acd292(108)=acd292(111)+acd292(108)+acd292(118)+acd292(112)+acd292(115)+a&
      &cd292(117)+acd292(114)+acd292(113)
      acd292(108)=acd292(42)*acd292(108)
      acd292(107)=acd292(35)*acd292(107)
      acd292(111)=acd292(62)*acd292(69)
      acd292(112)=acd292(60)*acd292(68)
      acd292(113)=acd292(58)*acd292(67)
      acd292(111)=acd292(113)+acd292(111)-acd292(112)
      acd292(112)=acd292(4)*acd292(111)
      acd292(114)=acd292(41)*acd292(54)
      acd292(115)=acd292(16)*acd292(66)
      acd292(114)=acd292(115)+acd292(114)
      acd292(114)=acd292(94)*acd292(114)
      acd292(115)=-acd292(77)*acd292(69)
      acd292(117)=-acd292(75)*acd292(61)
      acd292(115)=acd292(115)+acd292(117)
      acd292(115)=acd292(62)*acd292(115)
      acd292(117)=acd292(77)*acd292(68)
      acd292(118)=acd292(75)*acd292(59)
      acd292(117)=acd292(117)+acd292(118)
      acd292(117)=acd292(60)*acd292(117)
      acd292(118)=2.0_ki*acd292(22)
      acd292(119)=-acd292(19)*acd292(118)
      acd292(113)=-acd292(77)*acd292(113)
      acd292(109)=-acd292(75)*acd292(109)
      acd292(107)=acd292(112)+acd292(107)+acd292(109)+acd292(113)+acd292(117)+a&
      &cd292(119)+acd292(115)+acd292(114)
      acd292(107)=acd292(31)*acd292(107)
      acd292(109)=acd292(4)-acd292(77)
      acd292(112)=-acd292(63)*acd292(109)
      acd292(113)=acd292(24)-acd292(76)
      acd292(114)=-acd292(57)*acd292(113)
      acd292(112)=acd292(114)+acd292(112)
      acd292(112)=acd292(51)*acd292(112)
      acd292(114)=-acd292(67)*acd292(109)
      acd292(115)=acd292(35)-acd292(75)
      acd292(117)=-acd292(57)*acd292(115)
      acd292(114)=acd292(117)+acd292(114)
      acd292(114)=acd292(49)*acd292(114)
      acd292(117)=-acd292(67)*acd292(113)
      acd292(119)=-acd292(63)*acd292(115)
      acd292(117)=acd292(119)+acd292(117)
      acd292(117)=acd292(47)*acd292(117)
      acd292(119)=acd292(32)*acd292(109)
      acd292(120)=acd292(20)*acd292(113)
      acd292(119)=acd292(120)+acd292(119)
      acd292(119)=acd292(39)*acd292(119)
      acd292(109)=acd292(43)*acd292(109)
      acd292(120)=acd292(20)*acd292(115)
      acd292(109)=acd292(120)+acd292(109)
      acd292(109)=acd292(28)*acd292(109)
      acd292(113)=acd292(43)*acd292(113)
      acd292(115)=acd292(32)*acd292(115)
      acd292(113)=acd292(115)+acd292(113)
      acd292(113)=acd292(12)*acd292(113)
      acd292(109)=acd292(113)+acd292(109)+acd292(119)+acd292(117)+acd292(112)+a&
      &cd292(114)
      acd292(109)=acd292(53)*acd292(109)
      acd292(110)=acd292(35)*acd292(110)
      acd292(111)=acd292(24)*acd292(111)
      acd292(112)=acd292(41)*acd292(56)
      acd292(113)=acd292(30)*acd292(66)
      acd292(112)=acd292(113)+acd292(112)
      acd292(112)=acd292(94)*acd292(112)
      acd292(113)=-acd292(76)*acd292(69)
      acd292(114)=-acd292(75)*acd292(65)
      acd292(113)=acd292(113)+acd292(114)
      acd292(113)=acd292(62)*acd292(113)
      acd292(114)=acd292(76)*acd292(68)
      acd292(115)=acd292(75)*acd292(64)
      acd292(114)=acd292(114)+acd292(115)
      acd292(114)=acd292(60)*acd292(114)
      acd292(115)=-acd292(67)*acd292(76)
      acd292(117)=-acd292(63)*acd292(75)
      acd292(115)=acd292(115)+acd292(117)
      acd292(115)=acd292(58)*acd292(115)
      acd292(117)=2.0_ki*acd292(1)
      acd292(119)=-acd292(19)*acd292(117)
      acd292(110)=acd292(111)+acd292(110)+acd292(115)+acd292(114)+acd292(119)+a&
      &cd292(113)+acd292(112)
      acd292(110)=acd292(18)*acd292(110)
      acd292(111)=-acd292(35)*acd292(56)
      acd292(112)=-acd292(24)*acd292(66)
      acd292(111)=acd292(112)+acd292(111)
      acd292(111)=acd292(55)*acd292(111)
      acd292(112)=acd292(51)*acd292(56)
      acd292(113)=acd292(49)*acd292(66)
      acd292(112)=acd292(113)+acd292(112)
      acd292(112)=acd292(84)*acd292(112)
      acd292(113)=acd292(84)*acd292(85)
      acd292(114)=acd292(24)*acd292(52)
      acd292(113)=acd292(113)+acd292(114)
      acd292(114)=-acd292(39)*acd292(113)
      acd292(115)=acd292(84)*acd292(91)
      acd292(119)=acd292(35)*acd292(52)
      acd292(115)=acd292(115)+acd292(119)
      acd292(119)=-acd292(28)*acd292(115)
      acd292(120)=-acd292(17)*acd292(117)
      acd292(111)=acd292(119)+acd292(114)+acd292(120)+acd292(112)+acd292(111)
      acd292(111)=acd292(16)*acd292(111)
      acd292(112)=-acd292(35)*acd292(54)
      acd292(114)=-acd292(4)*acd292(66)
      acd292(112)=acd292(114)+acd292(112)
      acd292(112)=acd292(55)*acd292(112)
      acd292(114)=acd292(51)*acd292(54)
      acd292(119)=acd292(47)*acd292(66)
      acd292(114)=acd292(119)+acd292(114)
      acd292(114)=acd292(84)*acd292(114)
      acd292(119)=acd292(84)*acd292(83)
      acd292(120)=acd292(4)*acd292(52)
      acd292(119)=acd292(119)+acd292(120)
      acd292(120)=-acd292(39)*acd292(119)
      acd292(121)=-acd292(17)*acd292(118)
      acd292(112)=acd292(120)+acd292(121)+acd292(114)+acd292(112)
      acd292(112)=acd292(30)*acd292(112)
      acd292(114)=-acd292(24)*acd292(54)
      acd292(120)=-acd292(4)*acd292(56)
      acd292(114)=acd292(120)+acd292(114)
      acd292(114)=acd292(55)*acd292(114)
      acd292(120)=acd292(49)*acd292(54)
      acd292(121)=acd292(47)*acd292(56)
      acd292(120)=acd292(121)+acd292(120)
      acd292(120)=acd292(84)*acd292(120)
      acd292(121)=-acd292(17)*acd292(116)
      acd292(114)=acd292(121)+acd292(120)+acd292(114)
      acd292(114)=acd292(41)*acd292(114)
      acd292(113)=-acd292(41)*acd292(113)
      acd292(115)=-acd292(30)*acd292(115)
      acd292(117)=-acd292(13)*acd292(117)
      acd292(113)=acd292(115)+acd292(117)+acd292(113)
      acd292(113)=acd292(12)*acd292(113)
      acd292(115)=-acd292(41)*acd292(119)
      acd292(117)=-acd292(13)*acd292(118)
      acd292(115)=acd292(117)+acd292(115)
      acd292(115)=acd292(28)*acd292(115)
      acd292(116)=-acd292(39)*acd292(13)*acd292(116)
      brack=acd292(103)+acd292(104)+acd292(105)+2.0_ki*acd292(106)+acd292(107)+&
      &acd292(108)+acd292(109)+acd292(110)+acd292(111)+acd292(112)+acd292(113)+&
      &acd292(114)+acd292(115)+acd292(116)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd292
      complex(ki) :: brack
      acd292(1)=d(iv1,iv2)
      acd292(2)=spvak1k3(iv3)
      acd292(3)=spval5k2(iv4)
      acd292(4)=abb292(113)
      acd292(5)=spval5l6(iv4)
      acd292(6)=abb292(53)
      acd292(7)=spvak1k3(iv4)
      acd292(8)=spval5k2(iv3)
      acd292(9)=spval5l6(iv3)
      acd292(10)=spvak2l6(iv4)
      acd292(11)=abb292(64)
      acd292(12)=spvak4l6(iv4)
      acd292(13)=abb292(43)
      acd292(14)=spvak2l6(iv3)
      acd292(15)=spvak4l6(iv3)
      acd292(16)=spvak1l6(iv3)
      acd292(17)=spvak4k3(iv4)
      acd292(18)=abb292(108)
      acd292(19)=spval5k3(iv4)
      acd292(20)=spvak1l6(iv4)
      acd292(21)=spvak4k3(iv3)
      acd292(22)=spval5k3(iv3)
      acd292(23)=spvak1k7(iv4)
      acd292(24)=abb292(91)
      acd292(25)=spvak1k7(iv3)
      acd292(26)=d(iv1,iv3)
      acd292(27)=spvak1k3(iv2)
      acd292(28)=spval5k2(iv2)
      acd292(29)=spval5l6(iv2)
      acd292(30)=spvak2l6(iv2)
      acd292(31)=spvak4l6(iv2)
      acd292(32)=spvak1l6(iv2)
      acd292(33)=spvak4k3(iv2)
      acd292(34)=spval5k3(iv2)
      acd292(35)=spvak1k7(iv2)
      acd292(36)=d(iv1,iv4)
      acd292(37)=d(iv2,iv3)
      acd292(38)=spvak1k3(iv1)
      acd292(39)=spval5k2(iv1)
      acd292(40)=spval5l6(iv1)
      acd292(41)=spvak2l6(iv1)
      acd292(42)=spvak4l6(iv1)
      acd292(43)=spvak1l6(iv1)
      acd292(44)=spvak4k3(iv1)
      acd292(45)=spval5k3(iv1)
      acd292(46)=spvak1k7(iv1)
      acd292(47)=d(iv2,iv4)
      acd292(48)=d(iv3,iv4)
      acd292(49)=spvak1k2(iv3)
      acd292(50)=spvak2k7(iv4)
      acd292(51)=abb292(86)
      acd292(52)=spvak1k2(iv4)
      acd292(53)=spvak2k7(iv3)
      acd292(54)=spvak1k2(iv2)
      acd292(55)=spvak2k7(iv2)
      acd292(56)=spvak1k2(iv1)
      acd292(57)=spvak2k7(iv1)
      acd292(58)=acd292(17)*acd292(1)
      acd292(59)=acd292(33)*acd292(36)
      acd292(60)=acd292(44)*acd292(47)
      acd292(58)=acd292(60)+acd292(58)+acd292(59)
      acd292(59)=acd292(16)*acd292(58)
      acd292(60)=acd292(21)*acd292(1)
      acd292(61)=acd292(33)*acd292(26)
      acd292(62)=acd292(44)*acd292(37)
      acd292(60)=acd292(62)+acd292(60)+acd292(61)
      acd292(61)=acd292(20)*acd292(60)
      acd292(62)=acd292(17)*acd292(26)
      acd292(63)=acd292(21)*acd292(36)
      acd292(64)=acd292(44)*acd292(48)
      acd292(62)=acd292(64)+acd292(62)+acd292(63)
      acd292(63)=acd292(32)*acd292(62)
      acd292(64)=acd292(17)*acd292(37)
      acd292(65)=acd292(21)*acd292(47)
      acd292(66)=acd292(33)*acd292(48)
      acd292(64)=acd292(66)+acd292(64)+acd292(65)
      acd292(65)=acd292(43)*acd292(64)
      acd292(59)=acd292(65)+acd292(63)+acd292(61)+acd292(59)
      acd292(59)=acd292(18)*acd292(59)
      acd292(61)=acd292(3)*acd292(1)
      acd292(63)=acd292(28)*acd292(36)
      acd292(61)=acd292(61)+acd292(63)
      acd292(63)=acd292(4)*acd292(61)
      acd292(65)=acd292(1)*acd292(6)
      acd292(66)=acd292(5)*acd292(65)
      acd292(67)=acd292(36)*acd292(6)
      acd292(68)=acd292(29)*acd292(67)
      acd292(69)=acd292(39)*acd292(4)
      acd292(70)=acd292(47)*acd292(69)
      acd292(71)=acd292(47)*acd292(6)
      acd292(72)=acd292(40)*acd292(71)
      acd292(63)=acd292(72)+acd292(70)+acd292(68)+acd292(66)+acd292(63)
      acd292(63)=acd292(2)*acd292(63)
      acd292(66)=acd292(8)*acd292(1)
      acd292(68)=acd292(28)*acd292(26)
      acd292(66)=acd292(66)+acd292(68)
      acd292(68)=acd292(4)*acd292(66)
      acd292(70)=acd292(9)*acd292(65)
      acd292(72)=acd292(26)*acd292(6)
      acd292(73)=acd292(29)*acd292(72)
      acd292(74)=acd292(37)*acd292(69)
      acd292(75)=acd292(37)*acd292(6)
      acd292(76)=acd292(40)*acd292(75)
      acd292(68)=acd292(76)+acd292(74)+acd292(73)+acd292(70)+acd292(68)
      acd292(68)=acd292(7)*acd292(68)
      acd292(70)=acd292(3)*acd292(26)
      acd292(73)=acd292(8)*acd292(36)
      acd292(70)=acd292(70)+acd292(73)
      acd292(73)=acd292(4)*acd292(70)
      acd292(74)=acd292(5)*acd292(72)
      acd292(76)=acd292(9)*acd292(67)
      acd292(69)=acd292(48)*acd292(69)
      acd292(77)=acd292(48)*acd292(6)
      acd292(78)=acd292(40)*acd292(77)
      acd292(69)=acd292(78)+acd292(69)+acd292(76)+acd292(74)+acd292(73)
      acd292(69)=acd292(27)*acd292(69)
      acd292(73)=acd292(3)*acd292(37)
      acd292(74)=acd292(8)*acd292(47)
      acd292(76)=acd292(28)*acd292(48)
      acd292(73)=acd292(76)+acd292(73)+acd292(74)
      acd292(74)=acd292(4)*acd292(73)
      acd292(76)=acd292(5)*acd292(75)
      acd292(78)=acd292(9)*acd292(71)
      acd292(79)=acd292(29)*acd292(77)
      acd292(74)=acd292(79)+acd292(78)+acd292(76)+acd292(74)
      acd292(74)=acd292(38)*acd292(74)
      acd292(76)=-acd292(16)*acd292(65)
      acd292(78)=-acd292(32)*acd292(72)
      acd292(79)=-acd292(43)*acd292(75)
      acd292(76)=acd292(79)+acd292(76)+acd292(78)
      acd292(76)=acd292(19)*acd292(76)
      acd292(65)=-acd292(20)*acd292(65)
      acd292(78)=-acd292(32)*acd292(67)
      acd292(79)=-acd292(43)*acd292(71)
      acd292(65)=acd292(79)+acd292(65)+acd292(78)
      acd292(65)=acd292(22)*acd292(65)
      acd292(60)=acd292(23)*acd292(24)*acd292(60)
      acd292(58)=acd292(25)*acd292(24)*acd292(58)
      acd292(67)=-acd292(16)*acd292(67)
      acd292(72)=-acd292(20)*acd292(72)
      acd292(78)=-acd292(43)*acd292(77)
      acd292(67)=acd292(78)+acd292(67)+acd292(72)
      acd292(67)=acd292(34)*acd292(67)
      acd292(62)=acd292(35)*acd292(24)*acd292(62)
      acd292(72)=acd292(41)*acd292(11)*acd292(73)
      acd292(73)=acd292(42)*acd292(13)*acd292(73)
      acd292(71)=-acd292(16)*acd292(71)
      acd292(75)=-acd292(20)*acd292(75)
      acd292(77)=-acd292(32)*acd292(77)
      acd292(71)=acd292(77)+acd292(71)+acd292(75)
      acd292(71)=acd292(45)*acd292(71)
      acd292(64)=acd292(46)*acd292(24)*acd292(64)
      acd292(75)=acd292(11)*acd292(66)
      acd292(77)=acd292(39)*acd292(11)
      acd292(78)=acd292(37)*acd292(77)
      acd292(75)=acd292(78)+acd292(75)
      acd292(75)=acd292(10)*acd292(75)
      acd292(66)=acd292(13)*acd292(66)
      acd292(78)=acd292(39)*acd292(13)
      acd292(79)=acd292(37)*acd292(78)
      acd292(66)=acd292(79)+acd292(66)
      acd292(66)=acd292(12)*acd292(66)
      acd292(79)=acd292(11)*acd292(61)
      acd292(80)=acd292(47)*acd292(77)
      acd292(79)=acd292(80)+acd292(79)
      acd292(79)=acd292(14)*acd292(79)
      acd292(61)=acd292(13)*acd292(61)
      acd292(80)=acd292(47)*acd292(78)
      acd292(61)=acd292(80)+acd292(61)
      acd292(61)=acd292(15)*acd292(61)
      acd292(80)=acd292(11)*acd292(70)
      acd292(77)=acd292(48)*acd292(77)
      acd292(77)=acd292(77)+acd292(80)
      acd292(77)=acd292(30)*acd292(77)
      acd292(70)=acd292(13)*acd292(70)
      acd292(78)=acd292(48)*acd292(78)
      acd292(70)=acd292(78)+acd292(70)
      acd292(70)=acd292(31)*acd292(70)
      acd292(58)=acd292(64)+acd292(61)+acd292(76)+acd292(65)+acd292(60)+acd292(&
      &75)+acd292(74)+acd292(69)+acd292(63)+acd292(68)+acd292(59)+acd292(66)+ac&
      &d292(79)+acd292(62)+acd292(72)+acd292(73)+acd292(71)+acd292(58)+acd292(7&
      &7)+acd292(70)+acd292(67)
      acd292(59)=acd292(29)*acd292(51)
      acd292(60)=acd292(59)*acd292(21)
      acd292(61)=acd292(9)*acd292(51)
      acd292(62)=acd292(61)*acd292(33)
      acd292(60)=acd292(60)+acd292(62)
      acd292(62)=acd292(50)*acd292(60)
      acd292(63)=acd292(59)*acd292(17)
      acd292(64)=acd292(5)*acd292(51)
      acd292(65)=acd292(64)*acd292(33)
      acd292(63)=acd292(63)+acd292(65)
      acd292(65)=acd292(53)*acd292(63)
      acd292(66)=acd292(61)*acd292(17)
      acd292(67)=acd292(64)*acd292(21)
      acd292(66)=acd292(66)+acd292(67)
      acd292(67)=acd292(55)*acd292(66)
      acd292(62)=acd292(67)+acd292(62)+acd292(65)
      acd292(62)=acd292(56)*acd292(62)
      acd292(63)=acd292(49)*acd292(63)
      acd292(60)=acd292(52)*acd292(60)
      acd292(65)=acd292(54)*acd292(66)
      acd292(60)=acd292(65)+acd292(63)+acd292(60)
      acd292(60)=acd292(57)*acd292(60)
      acd292(63)=acd292(50)*acd292(49)
      acd292(65)=acd292(53)*acd292(52)
      acd292(63)=acd292(65)+acd292(63)
      acd292(65)=acd292(40)*acd292(51)
      acd292(66)=acd292(65)*acd292(33)
      acd292(59)=acd292(59)*acd292(44)
      acd292(59)=acd292(66)+acd292(59)
      acd292(59)=acd292(59)*acd292(63)
      acd292(63)=acd292(65)*acd292(21)
      acd292(61)=acd292(61)*acd292(44)
      acd292(61)=acd292(63)+acd292(61)
      acd292(63)=acd292(50)*acd292(61)
      acd292(65)=acd292(65)*acd292(17)
      acd292(64)=acd292(64)*acd292(44)
      acd292(64)=acd292(65)+acd292(64)
      acd292(65)=acd292(53)*acd292(64)
      acd292(63)=acd292(63)+acd292(65)
      acd292(63)=acd292(54)*acd292(63)
      acd292(64)=acd292(49)*acd292(64)
      acd292(61)=acd292(52)*acd292(61)
      acd292(61)=acd292(64)+acd292(61)
      acd292(61)=acd292(55)*acd292(61)
      brack=2.0_ki*acd292(58)+acd292(59)+acd292(60)+acd292(61)+acd292(62)+acd29&
      &2(63)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd292h2
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
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group11
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group11), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_292:
      coeffs%coeffs_292%c0 = derivative(czip)
      coeffs%coeffs_292%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_292%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_292%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_292%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_292%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_292%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_292%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_292%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_292%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_292%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_292%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_292%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_292%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_292%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_292%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_292%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_292%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_292%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_292%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_292%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_292%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_292%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_292%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_292%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_292%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_292%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_292%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_292%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_292%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_292%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_292%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_292%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_292%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_292%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_292%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_292%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_292%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_292%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_292%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_292%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_292%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_292%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_292%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_292%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_292%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_292%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_292%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_292%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_292%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_292%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_292%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_292%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_292%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_292%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_292%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_292%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_292%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_292%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_292%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_292%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_292%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_292%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_292%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_292%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_292%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_292%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_292%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_292%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_292%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_292:
   end subroutine reconstruct_d292
!---#] subroutine reconstruct_d292:
end module     p0_dbaru_epnebbbarg_d292h2l1d
