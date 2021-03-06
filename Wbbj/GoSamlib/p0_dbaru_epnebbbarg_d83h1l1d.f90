module     p0_dbaru_epnebbbarg_d83h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d83h1l1d.f90
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
   public :: derivative , reconstruct_d83
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd83
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(12) :: acd83
      complex(ki) :: brack
      acd83(1)=k1(iv1)
      acd83(2)=abb83(16)
      acd83(3)=k2(iv1)
      acd83(4)=abb83(22)
      acd83(5)=spvak1k2(iv1)
      acd83(6)=abb83(10)
      acd83(7)=spvak7k2(iv1)
      acd83(8)=abb83(11)
      acd83(9)=acd83(2)*acd83(1)
      acd83(10)=acd83(4)*acd83(3)
      acd83(11)=acd83(6)*acd83(5)
      acd83(12)=acd83(8)*acd83(7)
      brack=acd83(9)+acd83(10)+acd83(11)+acd83(12)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd83
      complex(ki) :: brack
      acd83(1)=d(iv1,iv2)
      acd83(2)=abb83(17)
      acd83(3)=k1(iv1)
      acd83(4)=k7(iv2)
      acd83(5)=abb83(53)
      acd83(6)=spvak2k7(iv2)
      acd83(7)=abb83(37)
      acd83(8)=spvak4k3(iv2)
      acd83(9)=abb83(78)
      acd83(10)=k1(iv2)
      acd83(11)=k7(iv1)
      acd83(12)=spvak2k7(iv1)
      acd83(13)=spvak4k3(iv1)
      acd83(14)=k2(iv1)
      acd83(15)=k2(iv2)
      acd83(16)=abb83(47)
      acd83(17)=k3(iv2)
      acd83(18)=abb83(34)
      acd83(19)=k4(iv2)
      acd83(20)=abb83(43)
      acd83(21)=abb83(69)
      acd83(22)=spvak1k3(iv2)
      acd83(23)=abb83(42)
      acd83(24)=spvak1k7(iv2)
      acd83(25)=abb83(65)
      acd83(26)=spval6l5(iv2)
      acd83(27)=abb83(61)
      acd83(28)=spvak7k2(iv2)
      acd83(29)=abb83(46)
      acd83(30)=k3(iv1)
      acd83(31)=k4(iv1)
      acd83(32)=spvak1k3(iv1)
      acd83(33)=spvak1k7(iv1)
      acd83(34)=spval6l5(iv1)
      acd83(35)=spvak7k2(iv1)
      acd83(36)=abb83(60)
      acd83(37)=spvak1k2(iv2)
      acd83(38)=abb83(26)
      acd83(39)=spvak1l5(iv2)
      acd83(40)=abb83(31)
      acd83(41)=spvak1k2(iv1)
      acd83(42)=spvak1l5(iv1)
      acd83(43)=abb83(24)
      acd83(44)=abb83(95)
      acd83(45)=spvak4k2(iv2)
      acd83(46)=abb83(29)
      acd83(47)=spvak4k2(iv1)
      acd83(48)=abb83(27)
      acd83(49)=abb83(32)
      acd83(50)=abb83(94)
      acd83(51)=abb83(30)
      acd83(52)=spvak3k2(iv2)
      acd83(53)=abb83(38)
      acd83(54)=spvak3k2(iv1)
      acd83(55)=abb83(21)
      acd83(56)=abb83(50)
      acd83(57)=abb83(79)
      acd83(58)=abb83(25)
      acd83(59)=abb83(64)
      acd83(60)=abb83(45)
      acd83(61)=acd83(17)+acd83(19)
      acd83(62)=acd83(18)*acd83(61)
      acd83(63)=acd83(24)*acd83(25)
      acd83(64)=acd83(22)*acd83(23)
      acd83(65)=acd83(26)*acd83(27)
      acd83(66)=acd83(8)*acd83(21)
      acd83(67)=acd83(4)*acd83(20)
      acd83(68)=acd83(28)*acd83(29)
      acd83(69)=acd83(15)*acd83(16)
      acd83(62)=2.0_ki*acd83(69)+acd83(68)+acd83(67)+acd83(66)+acd83(65)+acd83(&
      &63)+acd83(64)+acd83(62)
      acd83(62)=acd83(14)*acd83(62)
      acd83(63)=acd83(25)*acd83(33)
      acd83(64)=acd83(23)*acd83(32)
      acd83(65)=acd83(34)*acd83(27)
      acd83(66)=acd83(30)+acd83(31)
      acd83(67)=acd83(18)*acd83(66)
      acd83(68)=acd83(13)*acd83(21)
      acd83(69)=acd83(11)*acd83(20)
      acd83(70)=acd83(35)*acd83(29)
      acd83(63)=acd83(70)+acd83(69)+acd83(68)+acd83(67)+acd83(65)+acd83(63)+acd&
      &83(64)
      acd83(63)=acd83(15)*acd83(63)
      acd83(64)=acd83(53)*acd83(52)
      acd83(65)=acd83(45)*acd83(51)
      acd83(67)=acd83(10)*acd83(7)
      acd83(68)=acd83(39)*acd83(50)
      acd83(69)=acd83(37)*acd83(49)
      acd83(64)=acd83(69)+acd83(68)+acd83(67)+acd83(64)+acd83(65)
      acd83(64)=acd83(12)*acd83(64)
      acd83(65)=acd83(53)*acd83(54)
      acd83(67)=acd83(47)*acd83(51)
      acd83(68)=acd83(3)*acd83(7)
      acd83(69)=acd83(42)*acd83(50)
      acd83(70)=acd83(41)*acd83(49)
      acd83(65)=acd83(70)+acd83(69)+acd83(68)+acd83(65)+acd83(67)
      acd83(65)=acd83(6)*acd83(65)
      acd83(67)=acd83(45)*acd83(46)
      acd83(68)=acd83(10)*acd83(5)
      acd83(69)=acd83(39)*acd83(44)
      acd83(70)=acd83(37)*acd83(43)
      acd83(67)=acd83(70)+acd83(69)+acd83(67)+acd83(68)
      acd83(67)=acd83(11)*acd83(67)
      acd83(68)=acd83(46)*acd83(47)
      acd83(69)=acd83(3)*acd83(5)
      acd83(70)=acd83(42)*acd83(44)
      acd83(71)=acd83(41)*acd83(43)
      acd83(68)=acd83(71)+acd83(70)+acd83(68)+acd83(69)
      acd83(68)=acd83(4)*acd83(68)
      acd83(69)=-acd83(4)-acd83(61)
      acd83(69)=acd83(36)*acd83(69)
      acd83(70)=acd83(26)*acd83(60)
      acd83(71)=acd83(8)*acd83(55)
      acd83(72)=acd83(6)*acd83(48)
      acd83(69)=acd83(72)+acd83(70)+acd83(71)+acd83(69)
      acd83(69)=acd83(35)*acd83(69)
      acd83(70)=-acd83(11)-acd83(66)
      acd83(70)=acd83(36)*acd83(70)
      acd83(71)=acd83(34)*acd83(60)
      acd83(72)=acd83(13)*acd83(55)
      acd83(73)=acd83(12)*acd83(48)
      acd83(70)=acd83(73)+acd83(71)+acd83(72)+acd83(70)
      acd83(70)=acd83(28)*acd83(70)
      acd83(71)=acd83(10)*acd83(9)
      acd83(72)=acd83(39)*acd83(57)
      acd83(73)=acd83(37)*acd83(56)
      acd83(71)=acd83(73)+acd83(71)+acd83(72)
      acd83(71)=acd83(13)*acd83(71)
      acd83(72)=acd83(3)*acd83(9)
      acd83(73)=acd83(42)*acd83(57)
      acd83(74)=acd83(41)*acd83(56)
      acd83(72)=acd83(74)+acd83(72)+acd83(73)
      acd83(72)=acd83(8)*acd83(72)
      acd83(73)=-acd83(42)*acd83(40)
      acd83(74)=-acd83(41)*acd83(38)
      acd83(73)=acd83(74)+acd83(73)
      acd83(61)=acd83(61)*acd83(73)
      acd83(73)=-acd83(39)*acd83(40)
      acd83(74)=-acd83(37)*acd83(38)
      acd83(73)=acd83(74)+acd83(73)
      acd83(66)=acd83(66)*acd83(73)
      acd83(73)=acd83(24)*acd83(59)
      acd83(74)=acd83(22)*acd83(58)
      acd83(73)=acd83(73)+acd83(74)
      acd83(73)=acd83(34)*acd83(73)
      acd83(74)=acd83(33)*acd83(59)
      acd83(75)=acd83(32)*acd83(58)
      acd83(74)=acd83(74)+acd83(75)
      acd83(74)=acd83(26)*acd83(74)
      acd83(75)=acd83(1)*acd83(2)
      brack=acd83(61)+acd83(62)+acd83(63)+acd83(64)+acd83(65)+acd83(66)+acd83(6&
      &7)+acd83(68)+acd83(69)+acd83(70)+acd83(71)+acd83(72)+acd83(73)+acd83(74)&
      &+2.0_ki*acd83(75)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(132) :: acd83
      complex(ki) :: brack
      acd83(1)=d(iv1,iv2)
      acd83(2)=k1(iv3)
      acd83(3)=abb83(19)
      acd83(4)=k2(iv3)
      acd83(5)=abb83(15)
      acd83(6)=k3(iv3)
      acd83(7)=abb83(57)
      acd83(8)=k4(iv3)
      acd83(9)=k7(iv3)
      acd83(10)=spvak1k2(iv3)
      acd83(11)=abb83(18)
      acd83(12)=spvak1l5(iv3)
      acd83(13)=abb83(54)
      acd83(14)=spvak4k2(iv3)
      acd83(15)=abb83(20)
      acd83(16)=spvak4k3(iv3)
      acd83(17)=abb83(81)
      acd83(18)=spval6l5(iv3)
      acd83(19)=abb83(14)
      acd83(20)=spvak7k2(iv3)
      acd83(21)=abb83(39)
      acd83(22)=d(iv1,iv3)
      acd83(23)=k1(iv2)
      acd83(24)=k2(iv2)
      acd83(25)=k3(iv2)
      acd83(26)=k4(iv2)
      acd83(27)=k7(iv2)
      acd83(28)=spvak1k2(iv2)
      acd83(29)=spvak1l5(iv2)
      acd83(30)=spvak4k2(iv2)
      acd83(31)=spvak4k3(iv2)
      acd83(32)=spval6l5(iv2)
      acd83(33)=spvak7k2(iv2)
      acd83(34)=d(iv2,iv3)
      acd83(35)=k1(iv1)
      acd83(36)=k2(iv1)
      acd83(37)=k3(iv1)
      acd83(38)=k4(iv1)
      acd83(39)=k7(iv1)
      acd83(40)=spvak1k2(iv1)
      acd83(41)=spvak1l5(iv1)
      acd83(42)=spvak4k2(iv1)
      acd83(43)=spvak4k3(iv1)
      acd83(44)=spval6l5(iv1)
      acd83(45)=spvak7k2(iv1)
      acd83(46)=spvak2k7(iv3)
      acd83(47)=abb83(93)
      acd83(48)=spvak2k7(iv2)
      acd83(49)=spvak2k7(iv1)
      acd83(50)=abb83(48)
      acd83(51)=abb83(40)
      acd83(52)=abb83(62)
      acd83(53)=abb83(63)
      acd83(54)=spvak1k3(iv3)
      acd83(55)=abb83(98)
      acd83(56)=spvak1k3(iv2)
      acd83(57)=abb83(13)
      acd83(58)=abb83(12)
      acd83(59)=spvak1k7(iv3)
      acd83(60)=abb83(86)
      acd83(61)=spvak1k7(iv2)
      acd83(62)=abb83(58)
      acd83(63)=abb83(49)
      acd83(64)=abb83(89)
      acd83(65)=spvak1k3(iv1)
      acd83(66)=spvak1k7(iv1)
      acd83(67)=abb83(36)
      acd83(68)=abb83(97)
      acd83(69)=abb83(33)
      acd83(70)=spval6k2(iv3)
      acd83(71)=abb83(87)
      acd83(72)=spval6k2(iv2)
      acd83(73)=spval6k2(iv1)
      acd83(74)=abb83(85)
      acd83(75)=abb83(51)
      acd83(76)=abb83(8)
      acd83(77)=abb83(80)
      acd83(78)=abb83(55)
      acd83(79)=abb83(44)
      acd83(80)=abb83(90)
      acd83(81)=abb83(75)
      acd83(82)=abb83(28)
      acd83(83)=spvak3k2(iv3)
      acd83(84)=abb83(35)
      acd83(85)=spvak3k2(iv2)
      acd83(86)=spvak3k2(iv1)
      acd83(87)=abb83(66)
      acd83(88)=abb83(23)
      acd83(89)=abb83(92)
      acd83(90)=acd83(8)+acd83(6)
      acd83(91)=-acd83(9)-acd83(90)
      acd83(91)=acd83(1)*acd83(91)
      acd83(92)=acd83(26)+acd83(25)
      acd83(93)=-acd83(27)-acd83(92)
      acd83(93)=acd83(22)*acd83(93)
      acd83(94)=acd83(38)+acd83(37)
      acd83(95)=-acd83(39)-acd83(94)
      acd83(95)=acd83(34)*acd83(95)
      acd83(91)=acd83(95)+acd83(93)+acd83(91)
      acd83(91)=acd83(7)*acd83(91)
      acd83(93)=acd83(1)*acd83(4)
      acd83(95)=acd83(22)*acd83(24)
      acd83(96)=acd83(34)*acd83(36)
      acd83(93)=acd83(96)+acd83(93)+acd83(95)
      acd83(93)=acd83(5)*acd83(93)
      acd83(95)=acd83(10)*acd83(1)
      acd83(96)=acd83(28)*acd83(22)
      acd83(97)=acd83(40)*acd83(34)
      acd83(95)=acd83(97)+acd83(95)+acd83(96)
      acd83(95)=acd83(11)*acd83(95)
      acd83(96)=acd83(12)*acd83(1)
      acd83(97)=acd83(29)*acd83(22)
      acd83(98)=acd83(41)*acd83(34)
      acd83(96)=acd83(98)+acd83(96)+acd83(97)
      acd83(96)=acd83(13)*acd83(96)
      acd83(97)=acd83(1)*acd83(14)
      acd83(98)=acd83(22)*acd83(30)
      acd83(99)=acd83(34)*acd83(42)
      acd83(97)=acd83(99)+acd83(97)+acd83(98)
      acd83(97)=acd83(15)*acd83(97)
      acd83(98)=acd83(1)*acd83(16)
      acd83(99)=acd83(22)*acd83(31)
      acd83(100)=acd83(34)*acd83(43)
      acd83(98)=acd83(100)+acd83(98)+acd83(99)
      acd83(98)=acd83(17)*acd83(98)
      acd83(99)=acd83(1)*acd83(18)
      acd83(100)=acd83(22)*acd83(32)
      acd83(101)=acd83(34)*acd83(44)
      acd83(99)=acd83(101)+acd83(99)+acd83(100)
      acd83(99)=acd83(19)*acd83(99)
      acd83(100)=acd83(20)*acd83(1)
      acd83(101)=acd83(33)*acd83(22)
      acd83(102)=acd83(45)*acd83(34)
      acd83(100)=acd83(102)+acd83(100)+acd83(101)
      acd83(100)=acd83(21)*acd83(100)
      acd83(101)=acd83(27)*acd83(36)
      acd83(102)=acd83(39)*acd83(24)
      acd83(101)=acd83(101)+acd83(102)
      acd83(102)=acd83(4)*acd83(101)
      acd83(103)=acd83(9)*acd83(36)
      acd83(104)=acd83(24)*acd83(103)
      acd83(102)=acd83(104)+acd83(102)
      acd83(102)=acd83(50)*acd83(102)
      acd83(91)=acd83(102)+acd83(97)+acd83(98)+acd83(99)+acd83(100)+acd83(91)+a&
      &cd83(93)+acd83(95)+acd83(96)
      acd83(93)=-acd83(28)*acd83(67)
      acd83(95)=acd83(29)*acd83(68)
      acd83(96)=-acd83(72)*acd83(71)
      acd83(93)=acd83(96)+acd83(95)+acd83(93)
      acd83(95)=acd83(9)*acd83(49)
      acd83(96)=acd83(39)*acd83(46)
      acd83(95)=acd83(95)+acd83(96)
      acd83(96)=acd83(46)*acd83(94)
      acd83(97)=acd83(49)*acd83(90)
      acd83(96)=acd83(95)+acd83(97)+acd83(96)
      acd83(93)=acd83(96)*acd83(93)
      acd83(96)=-acd83(40)*acd83(67)
      acd83(97)=acd83(41)*acd83(68)
      acd83(98)=-acd83(73)*acd83(71)
      acd83(96)=acd83(98)+acd83(97)+acd83(96)
      acd83(97)=acd83(9)*acd83(48)
      acd83(98)=acd83(27)*acd83(46)
      acd83(97)=acd83(97)+acd83(98)
      acd83(98)=acd83(46)*acd83(92)
      acd83(99)=acd83(48)*acd83(90)
      acd83(98)=acd83(97)+acd83(99)+acd83(98)
      acd83(96)=acd83(98)*acd83(96)
      acd83(98)=-acd83(10)*acd83(67)
      acd83(99)=acd83(12)*acd83(68)
      acd83(100)=-acd83(70)*acd83(71)
      acd83(98)=acd83(100)+acd83(99)+acd83(98)
      acd83(99)=acd83(27)*acd83(49)
      acd83(100)=acd83(39)*acd83(48)
      acd83(99)=acd83(99)+acd83(100)
      acd83(100)=acd83(48)*acd83(94)
      acd83(102)=acd83(49)*acd83(92)
      acd83(100)=acd83(100)+acd83(102)+acd83(99)
      acd83(98)=acd83(100)*acd83(98)
      acd83(100)=acd83(31)*acd83(49)
      acd83(102)=acd83(43)*acd83(48)
      acd83(100)=acd83(100)+acd83(102)
      acd83(102)=acd83(83)*acd83(100)
      acd83(104)=acd83(16)*acd83(49)
      acd83(105)=acd83(43)*acd83(46)
      acd83(104)=acd83(104)+acd83(105)
      acd83(105)=acd83(85)*acd83(104)
      acd83(106)=acd83(16)*acd83(48)
      acd83(107)=acd83(31)*acd83(46)
      acd83(106)=acd83(106)+acd83(107)
      acd83(107)=acd83(86)*acd83(106)
      acd83(102)=acd83(107)+acd83(105)+acd83(102)
      acd83(102)=acd83(84)*acd83(102)
      acd83(105)=acd83(24)*acd83(49)
      acd83(107)=acd83(36)*acd83(48)
      acd83(105)=acd83(105)+acd83(107)
      acd83(107)=acd83(9)*acd83(105)
      acd83(108)=acd83(4)*acd83(49)
      acd83(109)=acd83(36)*acd83(46)
      acd83(108)=acd83(108)+acd83(109)
      acd83(109)=acd83(27)*acd83(108)
      acd83(110)=acd83(4)*acd83(48)
      acd83(111)=acd83(24)*acd83(46)
      acd83(110)=acd83(110)+acd83(111)
      acd83(111)=acd83(39)*acd83(110)
      acd83(107)=acd83(111)+acd83(107)+acd83(109)
      acd83(107)=acd83(51)*acd83(107)
      acd83(109)=acd83(14)*acd83(101)
      acd83(111)=acd83(39)*acd83(4)
      acd83(103)=acd83(103)+acd83(111)
      acd83(111)=acd83(30)*acd83(103)
      acd83(112)=acd83(27)*acd83(4)
      acd83(113)=acd83(9)*acd83(24)
      acd83(112)=acd83(112)+acd83(113)
      acd83(113)=acd83(42)*acd83(112)
      acd83(109)=acd83(113)+acd83(109)+acd83(111)
      acd83(109)=acd83(52)*acd83(109)
      acd83(111)=acd83(18)*acd83(101)
      acd83(113)=acd83(32)*acd83(103)
      acd83(114)=acd83(44)*acd83(112)
      acd83(111)=acd83(114)+acd83(111)+acd83(113)
      acd83(111)=acd83(53)*acd83(111)
      acd83(101)=acd83(54)*acd83(101)
      acd83(103)=acd83(56)*acd83(103)
      acd83(112)=acd83(65)*acd83(112)
      acd83(101)=acd83(112)+acd83(101)+acd83(103)
      acd83(101)=acd83(55)*acd83(101)
      acd83(103)=acd83(14)*acd83(105)
      acd83(112)=acd83(30)*acd83(108)
      acd83(113)=acd83(42)*acd83(110)
      acd83(103)=acd83(113)+acd83(103)+acd83(112)
      acd83(103)=acd83(57)*acd83(103)
      acd83(112)=acd83(16)*acd83(105)
      acd83(113)=acd83(31)*acd83(108)
      acd83(114)=acd83(43)*acd83(110)
      acd83(112)=acd83(114)+acd83(112)+acd83(113)
      acd83(112)=acd83(58)*acd83(112)
      acd83(113)=acd83(31)*acd83(36)
      acd83(114)=acd83(43)*acd83(24)
      acd83(113)=acd83(113)+acd83(114)
      acd83(113)=acd83(59)*acd83(113)
      acd83(114)=acd83(16)*acd83(36)
      acd83(115)=acd83(43)*acd83(4)
      acd83(114)=acd83(114)+acd83(115)
      acd83(114)=acd83(61)*acd83(114)
      acd83(115)=acd83(16)*acd83(24)
      acd83(116)=acd83(31)*acd83(4)
      acd83(115)=acd83(115)+acd83(116)
      acd83(115)=acd83(66)*acd83(115)
      acd83(113)=acd83(115)+acd83(113)+acd83(114)
      acd83(113)=acd83(60)*acd83(113)
      acd83(114)=-acd83(20)*acd83(105)
      acd83(115)=-acd83(33)*acd83(108)
      acd83(116)=-acd83(45)*acd83(110)
      acd83(114)=acd83(116)+acd83(114)+acd83(115)
      acd83(114)=acd83(62)*acd83(114)
      acd83(115)=acd83(54)*acd83(105)
      acd83(116)=acd83(56)*acd83(108)
      acd83(117)=acd83(65)*acd83(110)
      acd83(115)=acd83(117)+acd83(115)+acd83(116)
      acd83(115)=acd83(63)*acd83(115)
      acd83(116)=acd83(59)*acd83(105)
      acd83(117)=acd83(61)*acd83(108)
      acd83(118)=acd83(66)*acd83(110)
      acd83(116)=acd83(118)+acd83(116)+acd83(117)
      acd83(116)=acd83(64)*acd83(116)
      acd83(117)=acd83(30)*acd83(18)
      acd83(118)=acd83(32)*acd83(14)
      acd83(117)=acd83(117)+acd83(118)
      acd83(117)=acd83(39)*acd83(117)
      acd83(118)=acd83(18)*acd83(27)
      acd83(119)=acd83(32)*acd83(9)
      acd83(118)=acd83(118)+acd83(119)
      acd83(119)=acd83(42)*acd83(118)
      acd83(120)=acd83(14)*acd83(27)
      acd83(121)=acd83(30)*acd83(9)
      acd83(120)=acd83(120)+acd83(121)
      acd83(120)=acd83(44)*acd83(120)
      acd83(117)=acd83(120)+acd83(119)+acd83(117)
      acd83(117)=acd83(74)*acd83(117)
      acd83(119)=acd83(32)*acd83(39)
      acd83(120)=acd83(44)*acd83(27)
      acd83(119)=acd83(119)+acd83(120)
      acd83(119)=acd83(54)*acd83(119)
      acd83(120)=acd83(18)*acd83(39)
      acd83(121)=acd83(44)*acd83(9)
      acd83(120)=acd83(120)+acd83(121)
      acd83(120)=acd83(56)*acd83(120)
      acd83(118)=acd83(65)*acd83(118)
      acd83(118)=acd83(118)+acd83(119)+acd83(120)
      acd83(118)=acd83(75)*acd83(118)
      acd83(119)=acd83(10)*acd83(100)
      acd83(120)=acd83(28)*acd83(104)
      acd83(121)=acd83(40)*acd83(106)
      acd83(119)=acd83(121)+acd83(119)+acd83(120)
      acd83(119)=acd83(76)*acd83(119)
      acd83(120)=acd83(12)*acd83(100)
      acd83(121)=acd83(29)*acd83(104)
      acd83(122)=acd83(41)*acd83(106)
      acd83(120)=acd83(122)+acd83(120)+acd83(121)
      acd83(120)=acd83(77)*acd83(120)
      acd83(121)=acd83(14)*acd83(100)
      acd83(122)=acd83(30)*acd83(104)
      acd83(123)=acd83(42)*acd83(106)
      acd83(121)=acd83(123)+acd83(121)+acd83(122)
      acd83(121)=acd83(78)*acd83(121)
      acd83(122)=acd83(18)*acd83(48)
      acd83(123)=acd83(32)*acd83(46)
      acd83(122)=acd83(122)+acd83(123)
      acd83(123)=acd83(42)*acd83(122)
      acd83(124)=acd83(14)*acd83(48)
      acd83(125)=acd83(30)*acd83(46)
      acd83(124)=acd83(124)+acd83(125)
      acd83(124)=acd83(44)*acd83(124)
      acd83(125)=acd83(18)*acd83(49)
      acd83(126)=acd83(30)*acd83(125)
      acd83(127)=acd83(32)*acd83(49)
      acd83(128)=acd83(14)*acd83(127)
      acd83(123)=acd83(124)+acd83(123)+acd83(126)+acd83(128)
      acd83(123)=acd83(79)*acd83(123)
      acd83(124)=acd83(32)*acd83(43)
      acd83(126)=acd83(44)*acd83(31)
      acd83(124)=acd83(124)+acd83(126)
      acd83(124)=acd83(59)*acd83(124)
      acd83(126)=acd83(18)*acd83(43)
      acd83(128)=acd83(44)*acd83(16)
      acd83(126)=acd83(126)+acd83(128)
      acd83(126)=acd83(61)*acd83(126)
      acd83(128)=acd83(18)*acd83(31)
      acd83(129)=acd83(32)*acd83(16)
      acd83(128)=acd83(128)+acd83(129)
      acd83(128)=acd83(66)*acd83(128)
      acd83(124)=acd83(128)+acd83(124)+acd83(126)
      acd83(124)=acd83(80)*acd83(124)
      acd83(126)=acd83(20)*acd83(100)
      acd83(128)=acd83(33)*acd83(104)
      acd83(129)=acd83(45)*acd83(106)
      acd83(126)=acd83(129)+acd83(126)+acd83(128)
      acd83(126)=acd83(81)*acd83(126)
      acd83(128)=acd83(70)*acd83(100)
      acd83(129)=acd83(72)*acd83(104)
      acd83(130)=acd83(73)*acd83(106)
      acd83(128)=acd83(130)+acd83(128)+acd83(129)
      acd83(128)=acd83(82)*acd83(128)
      acd83(129)=acd83(44)*acd83(48)
      acd83(127)=acd83(129)+acd83(127)
      acd83(129)=acd83(20)*acd83(127)
      acd83(130)=acd83(44)*acd83(46)
      acd83(125)=acd83(130)+acd83(125)
      acd83(130)=acd83(33)*acd83(125)
      acd83(131)=acd83(45)*acd83(122)
      acd83(129)=acd83(131)+acd83(129)+acd83(130)
      acd83(129)=acd83(87)*acd83(129)
      acd83(130)=acd83(54)*acd83(127)
      acd83(131)=acd83(56)*acd83(125)
      acd83(132)=acd83(65)*acd83(122)
      acd83(130)=acd83(132)+acd83(130)+acd83(131)
      acd83(130)=acd83(88)*acd83(130)
      acd83(127)=acd83(59)*acd83(127)
      acd83(125)=acd83(61)*acd83(125)
      acd83(122)=acd83(66)*acd83(122)
      acd83(122)=acd83(122)+acd83(127)+acd83(125)
      acd83(122)=acd83(89)*acd83(122)
      acd83(105)=acd83(105)*acd83(51)
      acd83(125)=acd83(42)*acd83(69)
      acd83(127)=acd83(125)*acd83(48)
      acd83(131)=acd83(30)*acd83(69)
      acd83(132)=acd83(131)*acd83(49)
      acd83(105)=-acd83(132)+acd83(105)-acd83(127)
      acd83(90)=acd83(105)*acd83(90)
      acd83(105)=acd83(108)*acd83(51)
      acd83(108)=acd83(125)*acd83(46)
      acd83(127)=acd83(14)*acd83(69)
      acd83(132)=acd83(127)*acd83(49)
      acd83(105)=-acd83(132)+acd83(105)-acd83(108)
      acd83(92)=acd83(105)*acd83(92)
      acd83(105)=acd83(110)*acd83(51)
      acd83(108)=acd83(131)*acd83(46)
      acd83(110)=acd83(127)*acd83(48)
      acd83(105)=-acd83(110)+acd83(105)-acd83(108)
      acd83(94)=acd83(105)*acd83(94)
      acd83(100)=acd83(47)*acd83(100)
      acd83(105)=2.0_ki*acd83(3)
      acd83(108)=acd83(1)*acd83(105)
      acd83(100)=acd83(108)+acd83(100)
      acd83(100)=acd83(2)*acd83(100)
      acd83(99)=-acd83(99)*acd83(127)
      acd83(95)=-acd83(95)*acd83(131)
      acd83(97)=-acd83(97)*acd83(125)
      acd83(104)=acd83(47)*acd83(104)
      acd83(108)=acd83(22)*acd83(105)
      acd83(104)=acd83(104)+acd83(108)
      acd83(104)=acd83(23)*acd83(104)
      acd83(106)=acd83(47)*acd83(106)
      acd83(105)=acd83(34)*acd83(105)
      acd83(105)=acd83(106)+acd83(105)
      acd83(105)=acd83(35)*acd83(105)
      brack=acd83(90)+2.0_ki*acd83(91)+acd83(92)+acd83(93)+acd83(94)+acd83(95)+&
      &acd83(96)+acd83(97)+acd83(98)+acd83(99)+acd83(100)+acd83(101)+acd83(102)&
      &+acd83(103)+acd83(104)+acd83(105)+acd83(107)+acd83(109)+acd83(111)+acd83&
      &(112)+acd83(113)+acd83(114)+acd83(115)+acd83(116)+acd83(117)+acd83(118)+&
      &acd83(119)+acd83(120)+acd83(121)+acd83(122)+acd83(123)+acd83(124)+acd83(&
      &126)+acd83(128)+acd83(129)+acd83(130)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd83
      complex(ki) :: brack
      acd83(1)=d(iv1,iv2)
      acd83(2)=d(iv3,iv4)
      acd83(3)=abb83(56)
      acd83(4)=k2(iv3)
      acd83(5)=k2(iv4)
      acd83(6)=abb83(58)
      acd83(7)=spvak1k3(iv4)
      acd83(8)=abb83(99)
      acd83(9)=spvak2k7(iv4)
      acd83(10)=abb83(91)
      acd83(11)=spvak4k2(iv4)
      acd83(12)=abb83(59)
      acd83(13)=spvak4k3(iv4)
      acd83(14)=abb83(82)
      acd83(15)=spval6l5(iv4)
      acd83(16)=abb83(66)
      acd83(17)=spvak1k3(iv3)
      acd83(18)=spvak2k7(iv3)
      acd83(19)=spvak4k2(iv3)
      acd83(20)=spvak4k3(iv3)
      acd83(21)=spval6l5(iv3)
      acd83(22)=abb83(100)
      acd83(23)=abb83(35)
      acd83(24)=spvak1k2(iv4)
      acd83(25)=abb83(52)
      acd83(26)=spvak1l5(iv4)
      acd83(27)=abb83(96)
      acd83(28)=spval6k2(iv4)
      acd83(29)=abb83(41)
      acd83(30)=spvak1k2(iv3)
      acd83(31)=spvak1l5(iv3)
      acd83(32)=spval6k2(iv3)
      acd83(33)=abb83(67)
      acd83(34)=abb83(74)
      acd83(35)=d(iv1,iv3)
      acd83(36)=d(iv2,iv4)
      acd83(37)=k2(iv2)
      acd83(38)=spvak1k3(iv2)
      acd83(39)=spvak2k7(iv2)
      acd83(40)=spvak4k2(iv2)
      acd83(41)=spvak4k3(iv2)
      acd83(42)=spval6l5(iv2)
      acd83(43)=spvak1k2(iv2)
      acd83(44)=spvak1l5(iv2)
      acd83(45)=spval6k2(iv2)
      acd83(46)=d(iv1,iv4)
      acd83(47)=d(iv2,iv3)
      acd83(48)=k2(iv1)
      acd83(49)=spvak1k3(iv1)
      acd83(50)=spvak2k7(iv1)
      acd83(51)=spvak4k2(iv1)
      acd83(52)=spvak4k3(iv1)
      acd83(53)=spval6l5(iv1)
      acd83(54)=spvak1k2(iv1)
      acd83(55)=spvak1l5(iv1)
      acd83(56)=spval6k2(iv1)
      acd83(57)=abb83(9)
      acd83(58)=abb83(73)
      acd83(59)=acd83(12)*acd83(51)
      acd83(60)=acd83(8)*acd83(49)
      acd83(61)=acd83(53)*acd83(16)
      acd83(62)=acd83(52)*acd83(14)
      acd83(63)=2.0_ki*acd83(6)
      acd83(64)=acd83(63)*acd83(48)
      acd83(59)=-acd83(64)+acd83(62)+acd83(61)+acd83(59)+acd83(60)
      acd83(60)=acd83(5)*acd83(59)
      acd83(61)=acd83(12)*acd83(11)
      acd83(62)=acd83(8)*acd83(7)
      acd83(64)=acd83(15)*acd83(16)
      acd83(65)=acd83(13)*acd83(14)
      acd83(61)=acd83(65)+acd83(64)+acd83(61)+acd83(62)
      acd83(62)=acd83(48)*acd83(61)
      acd83(64)=acd83(33)*acd83(11)
      acd83(65)=acd83(22)*acd83(7)
      acd83(66)=acd83(13)*acd83(34)
      acd83(64)=acd83(66)+acd83(64)+acd83(65)
      acd83(65)=acd83(53)*acd83(64)
      acd83(66)=acd83(33)*acd83(51)
      acd83(67)=acd83(22)*acd83(49)
      acd83(68)=acd83(52)*acd83(34)
      acd83(66)=acd83(68)+acd83(66)+acd83(67)
      acd83(67)=acd83(15)*acd83(66)
      acd83(60)=acd83(60)+acd83(62)+acd83(67)+acd83(65)
      acd83(60)=acd83(47)*acd83(60)
      acd83(62)=acd83(12)*acd83(19)
      acd83(65)=acd83(8)*acd83(17)
      acd83(67)=acd83(21)*acd83(16)
      acd83(68)=acd83(20)*acd83(14)
      acd83(62)=acd83(68)+acd83(67)+acd83(62)+acd83(65)
      acd83(65)=acd83(37)*acd83(62)
      acd83(67)=acd83(12)*acd83(40)
      acd83(68)=acd83(8)*acd83(38)
      acd83(69)=acd83(42)*acd83(16)
      acd83(70)=acd83(41)*acd83(14)
      acd83(67)=acd83(70)+acd83(69)+acd83(67)+acd83(68)
      acd83(68)=acd83(63)*acd83(37)
      acd83(68)=acd83(68)-acd83(67)
      acd83(69)=-acd83(4)*acd83(68)
      acd83(70)=acd83(33)*acd83(19)
      acd83(71)=acd83(22)*acd83(17)
      acd83(72)=acd83(20)*acd83(34)
      acd83(70)=acd83(72)+acd83(70)+acd83(71)
      acd83(71)=acd83(42)*acd83(70)
      acd83(72)=acd83(33)*acd83(40)
      acd83(73)=acd83(22)*acd83(38)
      acd83(74)=acd83(41)*acd83(34)
      acd83(72)=acd83(74)+acd83(72)+acd83(73)
      acd83(73)=acd83(21)*acd83(72)
      acd83(74)=4.0_ki*acd83(3)
      acd83(75)=acd83(47)*acd83(74)
      acd83(65)=acd83(75)+acd83(69)+acd83(65)+acd83(73)+acd83(71)
      acd83(65)=acd83(46)*acd83(65)
      acd83(69)=acd83(4)*acd83(59)
      acd83(71)=acd83(48)*acd83(62)
      acd83(73)=acd83(53)*acd83(70)
      acd83(75)=acd83(21)*acd83(66)
      acd83(69)=acd83(69)+acd83(71)+acd83(75)+acd83(73)
      acd83(69)=acd83(36)*acd83(69)
      acd83(71)=acd83(37)*acd83(61)
      acd83(68)=-acd83(5)*acd83(68)
      acd83(73)=acd83(42)*acd83(64)
      acd83(75)=acd83(15)*acd83(72)
      acd83(76)=acd83(36)*acd83(74)
      acd83(68)=acd83(76)+acd83(68)+acd83(71)+acd83(75)+acd83(73)
      acd83(68)=acd83(35)*acd83(68)
      acd83(59)=acd83(37)*acd83(59)
      acd83(67)=acd83(48)*acd83(67)
      acd83(71)=acd83(53)*acd83(72)
      acd83(66)=acd83(42)*acd83(66)
      acd83(59)=acd83(59)+acd83(67)+acd83(66)+acd83(71)
      acd83(59)=acd83(2)*acd83(59)
      acd83(62)=acd83(5)*acd83(62)
      acd83(63)=-acd83(5)*acd83(63)
      acd83(61)=acd83(63)+acd83(61)
      acd83(61)=acd83(4)*acd83(61)
      acd83(63)=acd83(21)*acd83(64)
      acd83(64)=acd83(15)*acd83(70)
      acd83(66)=acd83(2)*acd83(74)
      acd83(61)=acd83(66)+acd83(61)+acd83(62)+acd83(64)+acd83(63)
      acd83(61)=acd83(1)*acd83(61)
      acd83(59)=acd83(61)+acd83(59)+acd83(68)+acd83(69)+acd83(60)+acd83(65)
      acd83(60)=acd83(29)*acd83(28)
      acd83(61)=acd83(27)*acd83(26)
      acd83(62)=acd83(23)*acd83(11)
      acd83(63)=acd83(24)*acd83(25)
      acd83(64)=acd83(5)*acd83(10)
      acd83(60)=acd83(64)+acd83(63)+acd83(62)+acd83(60)+acd83(61)
      acd83(60)=2.0_ki*acd83(60)
      acd83(61)=acd83(47)*acd83(60)
      acd83(62)=acd83(29)*acd83(32)
      acd83(63)=acd83(27)*acd83(31)
      acd83(64)=acd83(23)*acd83(19)
      acd83(65)=acd83(30)*acd83(25)
      acd83(66)=acd83(4)*acd83(10)
      acd83(62)=acd83(66)+acd83(65)+acd83(64)+acd83(62)+acd83(63)
      acd83(62)=2.0_ki*acd83(62)
      acd83(63)=acd83(36)*acd83(62)
      acd83(64)=acd83(29)*acd83(45)
      acd83(65)=acd83(27)*acd83(44)
      acd83(66)=acd83(23)*acd83(40)
      acd83(67)=acd83(43)*acd83(25)
      acd83(68)=acd83(37)*acd83(10)
      acd83(64)=acd83(68)+acd83(67)+acd83(66)+acd83(64)+acd83(65)
      acd83(64)=2.0_ki*acd83(64)
      acd83(65)=acd83(2)*acd83(64)
      acd83(66)=acd83(20)*acd83(43)
      acd83(67)=acd83(41)*acd83(30)
      acd83(66)=acd83(66)+acd83(67)
      acd83(68)=acd83(15)*acd83(66)
      acd83(69)=acd83(42)*acd83(30)
      acd83(70)=acd83(21)*acd83(43)
      acd83(69)=acd83(69)+acd83(70)
      acd83(69)=acd83(13)*acd83(69)
      acd83(70)=acd83(41)*acd83(24)
      acd83(71)=acd83(21)*acd83(70)
      acd83(72)=acd83(20)*acd83(24)
      acd83(73)=acd83(42)*acd83(72)
      acd83(68)=acd83(69)+acd83(68)+acd83(71)+acd83(73)
      acd83(68)=acd83(58)*acd83(68)
      acd83(69)=acd83(13)*acd83(30)
      acd83(69)=acd83(69)+acd83(72)
      acd83(69)=acd83(69)*acd83(57)
      acd83(71)=acd83(37)*acd83(69)
      acd83(66)=acd83(66)*acd83(57)
      acd83(73)=acd83(5)*acd83(66)
      acd83(74)=acd83(13)*acd83(43)
      acd83(74)=acd83(74)+acd83(70)
      acd83(75)=acd83(4)*acd83(57)
      acd83(76)=acd83(74)*acd83(75)
      acd83(61)=acd83(65)+acd83(63)+acd83(61)+acd83(76)+acd83(73)+acd83(68)+acd&
      &83(71)
      acd83(61)=acd83(50)*acd83(61)
      acd83(63)=acd83(46)*acd83(62)
      acd83(65)=acd83(35)*acd83(60)
      acd83(68)=acd83(29)*acd83(56)
      acd83(71)=acd83(27)*acd83(55)
      acd83(73)=acd83(23)*acd83(51)
      acd83(76)=acd83(54)*acd83(25)
      acd83(77)=acd83(48)*acd83(10)
      acd83(68)=acd83(77)+acd83(76)+acd83(73)+acd83(68)+acd83(71)
      acd83(68)=2.0_ki*acd83(68)
      acd83(71)=acd83(2)*acd83(68)
      acd83(73)=acd83(20)*acd83(54)
      acd83(76)=acd83(52)*acd83(30)
      acd83(73)=acd83(73)+acd83(76)
      acd83(77)=acd83(15)*acd83(73)
      acd83(78)=acd83(53)*acd83(30)
      acd83(79)=acd83(21)*acd83(54)
      acd83(78)=acd83(78)+acd83(79)
      acd83(78)=acd83(13)*acd83(78)
      acd83(79)=acd83(52)*acd83(24)
      acd83(80)=acd83(21)*acd83(79)
      acd83(72)=acd83(53)*acd83(72)
      acd83(72)=acd83(78)+acd83(77)+acd83(80)+acd83(72)
      acd83(72)=acd83(58)*acd83(72)
      acd83(69)=acd83(48)*acd83(69)
      acd83(73)=acd83(73)*acd83(57)
      acd83(77)=acd83(5)*acd83(73)
      acd83(78)=acd83(13)*acd83(54)
      acd83(78)=acd83(78)+acd83(79)
      acd83(80)=acd83(78)*acd83(75)
      acd83(63)=acd83(71)+acd83(65)+acd83(63)+acd83(80)+acd83(77)+acd83(72)+acd&
      &83(69)
      acd83(63)=acd83(39)*acd83(63)
      acd83(65)=acd83(46)*acd83(64)
      acd83(69)=acd83(36)*acd83(68)
      acd83(60)=acd83(1)*acd83(60)
      acd83(71)=acd83(48)*acd83(74)
      acd83(72)=acd83(37)*acd83(78)
      acd83(74)=acd83(52)*acd83(43)
      acd83(77)=acd83(41)*acd83(54)
      acd83(74)=acd83(74)+acd83(77)
      acd83(77)=acd83(5)*acd83(74)
      acd83(71)=acd83(77)+acd83(72)+acd83(71)
      acd83(71)=acd83(57)*acd83(71)
      acd83(72)=acd83(15)*acd83(74)
      acd83(77)=acd83(53)*acd83(43)
      acd83(78)=acd83(42)*acd83(54)
      acd83(77)=acd83(77)+acd83(78)
      acd83(78)=acd83(13)*acd83(77)
      acd83(79)=acd83(42)*acd83(79)
      acd83(70)=acd83(53)*acd83(70)
      acd83(70)=acd83(78)+acd83(72)+acd83(79)+acd83(70)
      acd83(70)=acd83(58)*acd83(70)
      acd83(60)=acd83(60)+acd83(69)+acd83(65)+acd83(70)+acd83(71)
      acd83(60)=acd83(18)*acd83(60)
      acd83(65)=acd83(47)*acd83(68)
      acd83(64)=acd83(35)*acd83(64)
      acd83(62)=acd83(1)*acd83(62)
      acd83(68)=acd83(21)*acd83(74)
      acd83(69)=acd83(20)*acd83(77)
      acd83(70)=acd83(42)*acd83(76)
      acd83(67)=acd83(53)*acd83(67)
      acd83(67)=acd83(69)+acd83(68)+acd83(70)+acd83(67)
      acd83(67)=acd83(58)*acd83(67)
      acd83(66)=acd83(48)*acd83(66)
      acd83(68)=acd83(37)*acd83(73)
      acd83(69)=acd83(74)*acd83(75)
      acd83(62)=acd83(62)+acd83(64)+acd83(65)+acd83(69)+acd83(68)+acd83(67)+acd&
      &83(66)
      acd83(62)=acd83(9)*acd83(62)
      brack=2.0_ki*acd83(59)+acd83(60)+acd83(61)+acd83(62)+acd83(63)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd83h1
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
!---#[ subroutine reconstruct_d83:
   subroutine     reconstruct_d83(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group5
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group5), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_83:
      coeffs%coeffs_83%c0 = derivative(czip)
      coeffs%coeffs_83%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_83%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_83%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_83%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_83%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_83%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_83%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_83%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_83%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_83%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_83%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_83%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_83%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_83%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_83%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_83%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_83%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_83%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_83%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_83%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_83%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_83%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_83%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_83%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_83%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_83%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_83%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_83%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_83%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_83%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_83%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_83%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_83%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_83%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_83%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_83%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_83%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_83%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_83%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_83%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_83%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_83%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_83%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_83%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_83%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_83%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_83%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_83%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_83%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_83%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_83%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_83%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_83%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_83%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_83%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_83%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_83%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_83%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_83%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_83%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_83%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_83%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_83%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_83%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_83%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_83%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_83%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_83%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_83%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_83:
   end subroutine reconstruct_d83
!---#] subroutine reconstruct_d83:
end module     p0_dbaru_epnebbbarg_d83h1l1d
