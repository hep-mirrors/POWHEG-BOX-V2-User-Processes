module     p0_dbaru_epnebbbarg_d303h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d303h3l1d.f90
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
   public :: derivative , reconstruct_d303
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(91) :: acd303
      complex(ki) :: brack
      acd303(1)=dotproduct(k2,qshift)
      acd303(2)=abb303(73)
      acd303(3)=dotproduct(l6,qshift)
      acd303(4)=abb303(71)
      acd303(5)=dotproduct(k7,qshift)
      acd303(6)=abb303(70)
      acd303(7)=dotproduct(qshift,qshift)
      acd303(8)=abb303(44)
      acd303(9)=dotproduct(qshift,spvak1l5)
      acd303(10)=dotproduct(qshift,spvak2k7)
      acd303(11)=abb303(19)
      acd303(12)=abb303(32)
      acd303(13)=dotproduct(qshift,spvak4l5)
      acd303(14)=abb303(61)
      acd303(15)=abb303(22)
      acd303(16)=dotproduct(qshift,spvak2l6)
      acd303(17)=abb303(12)
      acd303(18)=abb303(97)
      acd303(19)=abb303(42)
      acd303(20)=dotproduct(l5,qshift)
      acd303(21)=abb303(30)
      acd303(22)=abb303(38)
      acd303(23)=abb303(49)
      acd303(24)=dotproduct(qshift,spvak2l5)
      acd303(25)=abb303(46)
      acd303(26)=abb303(48)
      acd303(27)=abb303(11)
      acd303(28)=abb303(39)
      acd303(29)=abb303(47)
      acd303(30)=abb303(33)
      acd303(31)=abb303(20)
      acd303(32)=abb303(18)
      acd303(33)=abb303(15)
      acd303(34)=abb303(24)
      acd303(35)=dotproduct(qshift,spvak1k2)
      acd303(36)=abb303(27)
      acd303(37)=dotproduct(qshift,spvak4k2)
      acd303(38)=abb303(31)
      acd303(39)=abb303(57)
      acd303(40)=abb303(17)
      acd303(41)=abb303(36)
      acd303(42)=abb303(43)
      acd303(43)=abb303(26)
      acd303(44)=dotproduct(qshift,spvak1l6)
      acd303(45)=abb303(52)
      acd303(46)=abb303(34)
      acd303(47)=dotproduct(qshift,spvak4l6)
      acd303(48)=abb303(55)
      acd303(49)=dotproduct(qshift,spvak7k2)
      acd303(50)=abb303(50)
      acd303(51)=dotproduct(qshift,spvak7l5)
      acd303(52)=dotproduct(qshift,spvak7l6)
      acd303(53)=abb303(14)
      acd303(54)=abb303(23)
      acd303(55)=abb303(25)
      acd303(56)=dotproduct(qshift,spval6k2)
      acd303(57)=abb303(21)
      acd303(58)=dotproduct(qshift,spval6l5)
      acd303(59)=abb303(10)
      acd303(60)=abb303(89)
      acd303(61)=abb303(35)
      acd303(62)=abb303(40)
      acd303(63)=abb303(16)
      acd303(64)=abb303(28)
      acd303(65)=abb303(51)
      acd303(66)=abb303(98)
      acd303(67)=abb303(91)
      acd303(68)=abb303(29)
      acd303(69)=abb303(41)
      acd303(70)=abb303(76)
      acd303(71)=dotproduct(qshift,spval5l6)
      acd303(72)=abb303(86)
      acd303(73)=abb303(13)
      acd303(74)=-acd303(37)*acd303(41)
      acd303(75)=-acd303(35)*acd303(40)
      acd303(74)=acd303(75)+acd303(42)+acd303(74)
      acd303(74)=acd303(24)*acd303(74)
      acd303(75)=-acd303(37)*acd303(38)
      acd303(76)=-acd303(35)*acd303(36)
      acd303(75)=acd303(75)+acd303(76)
      acd303(75)=acd303(16)*acd303(75)
      acd303(76)=-acd303(13)*acd303(14)
      acd303(77)=-acd303(9)*acd303(11)
      acd303(76)=acd303(77)+acd303(15)+acd303(76)
      acd303(76)=acd303(1)*acd303(76)
      acd303(77)=acd303(49)*acd303(50)
      acd303(78)=acd303(47)*acd303(48)
      acd303(79)=acd303(44)*acd303(45)
      acd303(80)=acd303(25)*acd303(51)
      acd303(81)=-acd303(22)*acd303(52)
      acd303(82)=acd303(20)*acd303(21)
      acd303(83)=acd303(13)*acd303(39)
      acd303(84)=acd303(9)*acd303(33)
      acd303(85)=-acd303(7)*acd303(30)
      acd303(86)=acd303(37)*acd303(46)
      acd303(87)=acd303(35)*acd303(43)
      acd303(74)=acd303(76)+acd303(75)+acd303(74)+acd303(87)+acd303(86)+acd303(&
      &85)+acd303(84)+acd303(83)+acd303(82)+acd303(81)+acd303(80)+acd303(79)+ac&
      &d303(78)-acd303(53)+acd303(77)
      acd303(74)=acd303(10)*acd303(74)
      acd303(75)=acd303(3)*acd303(4)
      acd303(76)=acd303(13)*acd303(18)
      acd303(77)=acd303(9)*acd303(12)
      acd303(78)=-acd303(7)*acd303(8)
      acd303(79)=acd303(5)*acd303(6)
      acd303(80)=acd303(16)*acd303(17)
      acd303(81)=acd303(1)*acd303(2)
      acd303(75)=acd303(81)+acd303(80)+acd303(79)+acd303(78)+acd303(77)+acd303(&
      &76)-acd303(19)+acd303(75)
      acd303(75)=acd303(1)*acd303(75)
      acd303(76)=acd303(56)*acd303(57)
      acd303(77)=acd303(31)*acd303(58)
      acd303(78)=acd303(20)*acd303(22)
      acd303(79)=acd303(5)*acd303(27)
      acd303(80)=acd303(37)*acd303(55)
      acd303(81)=acd303(35)*acd303(54)
      acd303(76)=acd303(81)+acd303(80)+acd303(79)+acd303(78)+acd303(77)-acd303(&
      &59)+acd303(76)
      acd303(76)=acd303(16)*acd303(76)
      acd303(77)=-acd303(3)*acd303(25)
      acd303(78)=-acd303(7)*acd303(31)
      acd303(79)=acd303(5)*acd303(28)
      acd303(80)=acd303(37)*acd303(62)
      acd303(81)=acd303(35)*acd303(61)
      acd303(77)=acd303(81)+acd303(80)+acd303(79)+acd303(78)-acd303(63)+acd303(&
      &77)
      acd303(77)=acd303(24)*acd303(77)
      acd303(78)=-acd303(71)*acd303(72)
      acd303(79)=-acd303(52)*acd303(70)
      acd303(80)=-acd303(51)*acd303(69)
      acd303(81)=-acd303(49)*acd303(68)
      acd303(82)=-acd303(47)*acd303(67)
      acd303(83)=-acd303(44)*acd303(65)
      acd303(84)=-acd303(20)*acd303(23)
      acd303(85)=-acd303(3)*acd303(26)
      acd303(86)=-acd303(13)*acd303(60)
      acd303(87)=-acd303(9)*acd303(34)
      acd303(88)=acd303(7)*acd303(32)
      acd303(89)=-acd303(5)*acd303(29)
      acd303(90)=-acd303(37)*acd303(66)
      acd303(91)=-acd303(35)*acd303(64)
      brack=acd303(73)+acd303(74)+acd303(75)+acd303(76)+acd303(77)+acd303(78)+a&
      &cd303(79)+acd303(80)+acd303(81)+acd303(82)+acd303(83)+acd303(84)+acd303(&
      &85)+acd303(86)+acd303(87)+acd303(88)+acd303(89)+acd303(90)+acd303(91)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(113) :: acd303
      complex(ki) :: brack
      acd303(1)=k2(iv1)
      acd303(2)=dotproduct(k2,qshift)
      acd303(3)=abb303(73)
      acd303(4)=dotproduct(l6,qshift)
      acd303(5)=abb303(71)
      acd303(6)=dotproduct(k7,qshift)
      acd303(7)=abb303(70)
      acd303(8)=dotproduct(qshift,qshift)
      acd303(9)=abb303(44)
      acd303(10)=dotproduct(qshift,spvak1l5)
      acd303(11)=dotproduct(qshift,spvak2k7)
      acd303(12)=abb303(19)
      acd303(13)=abb303(32)
      acd303(14)=dotproduct(qshift,spvak4l5)
      acd303(15)=abb303(61)
      acd303(16)=abb303(22)
      acd303(17)=dotproduct(qshift,spvak2l6)
      acd303(18)=abb303(12)
      acd303(19)=abb303(97)
      acd303(20)=abb303(42)
      acd303(21)=l5(iv1)
      acd303(22)=abb303(30)
      acd303(23)=abb303(38)
      acd303(24)=abb303(49)
      acd303(25)=l6(iv1)
      acd303(26)=dotproduct(qshift,spvak2l5)
      acd303(27)=abb303(46)
      acd303(28)=abb303(48)
      acd303(29)=k7(iv1)
      acd303(30)=abb303(11)
      acd303(31)=abb303(39)
      acd303(32)=abb303(47)
      acd303(33)=qshift(iv1)
      acd303(34)=abb303(33)
      acd303(35)=abb303(20)
      acd303(36)=abb303(18)
      acd303(37)=spvak1l5(iv1)
      acd303(38)=abb303(15)
      acd303(39)=abb303(24)
      acd303(40)=spvak2k7(iv1)
      acd303(41)=dotproduct(l5,qshift)
      acd303(42)=dotproduct(qshift,spvak1k2)
      acd303(43)=abb303(27)
      acd303(44)=dotproduct(qshift,spvak4k2)
      acd303(45)=abb303(31)
      acd303(46)=abb303(57)
      acd303(47)=abb303(17)
      acd303(48)=abb303(36)
      acd303(49)=abb303(43)
      acd303(50)=abb303(26)
      acd303(51)=dotproduct(qshift,spvak1l6)
      acd303(52)=abb303(52)
      acd303(53)=abb303(34)
      acd303(54)=dotproduct(qshift,spvak4l6)
      acd303(55)=abb303(55)
      acd303(56)=dotproduct(qshift,spvak7k2)
      acd303(57)=abb303(50)
      acd303(58)=dotproduct(qshift,spvak7l5)
      acd303(59)=dotproduct(qshift,spvak7l6)
      acd303(60)=abb303(14)
      acd303(61)=spvak2l6(iv1)
      acd303(62)=abb303(23)
      acd303(63)=abb303(25)
      acd303(64)=dotproduct(qshift,spval6k2)
      acd303(65)=abb303(21)
      acd303(66)=dotproduct(qshift,spval6l5)
      acd303(67)=abb303(10)
      acd303(68)=spvak4l5(iv1)
      acd303(69)=abb303(89)
      acd303(70)=spvak2l5(iv1)
      acd303(71)=abb303(35)
      acd303(72)=abb303(40)
      acd303(73)=abb303(16)
      acd303(74)=spvak1k2(iv1)
      acd303(75)=abb303(28)
      acd303(76)=spvak1l6(iv1)
      acd303(77)=abb303(51)
      acd303(78)=spvak4k2(iv1)
      acd303(79)=abb303(98)
      acd303(80)=spval6k2(iv1)
      acd303(81)=spval6l5(iv1)
      acd303(82)=spvak4l6(iv1)
      acd303(83)=abb303(91)
      acd303(84)=spvak7k2(iv1)
      acd303(85)=abb303(29)
      acd303(86)=spvak7l5(iv1)
      acd303(87)=abb303(41)
      acd303(88)=spvak7l6(iv1)
      acd303(89)=abb303(76)
      acd303(90)=spval5l6(iv1)
      acd303(91)=abb303(86)
      acd303(92)=acd303(44)*acd303(48)
      acd303(93)=acd303(42)*acd303(47)
      acd303(92)=-acd303(49)+acd303(92)+acd303(93)
      acd303(93)=acd303(70)*acd303(92)
      acd303(94)=acd303(44)*acd303(45)
      acd303(95)=acd303(42)*acd303(43)
      acd303(94)=acd303(94)+acd303(95)
      acd303(95)=acd303(61)*acd303(94)
      acd303(96)=acd303(78)*acd303(48)
      acd303(97)=acd303(74)*acd303(47)
      acd303(96)=acd303(96)+acd303(97)
      acd303(96)=acd303(26)*acd303(96)
      acd303(97)=acd303(78)*acd303(45)
      acd303(98)=acd303(74)*acd303(43)
      acd303(97)=acd303(97)+acd303(98)
      acd303(97)=acd303(17)*acd303(97)
      acd303(98)=acd303(14)*acd303(15)
      acd303(99)=acd303(10)*acd303(12)
      acd303(98)=-acd303(16)+acd303(98)+acd303(99)
      acd303(99)=acd303(1)*acd303(98)
      acd303(100)=acd303(68)*acd303(15)
      acd303(101)=acd303(37)*acd303(12)
      acd303(100)=acd303(100)+acd303(101)
      acd303(100)=acd303(2)*acd303(100)
      acd303(101)=-acd303(57)*acd303(84)
      acd303(102)=-acd303(55)*acd303(82)
      acd303(103)=-acd303(52)*acd303(76)
      acd303(104)=-acd303(21)*acd303(22)
      acd303(105)=-acd303(68)*acd303(46)
      acd303(106)=-acd303(37)*acd303(38)
      acd303(107)=2.0_ki*acd303(33)
      acd303(108)=acd303(34)*acd303(107)
      acd303(109)=-acd303(27)*acd303(86)
      acd303(110)=acd303(23)*acd303(88)
      acd303(111)=-acd303(78)*acd303(53)
      acd303(112)=-acd303(74)*acd303(50)
      acd303(93)=acd303(100)+acd303(99)+acd303(97)+acd303(96)+acd303(95)+acd303&
      &(93)+acd303(112)+acd303(111)+acd303(110)+acd303(109)+acd303(108)+acd303(&
      &106)+acd303(105)+acd303(104)+acd303(103)+acd303(101)+acd303(102)
      acd303(93)=acd303(11)*acd303(93)
      acd303(92)=acd303(26)*acd303(92)
      acd303(94)=acd303(17)*acd303(94)
      acd303(95)=acd303(2)*acd303(98)
      acd303(96)=-acd303(57)*acd303(56)
      acd303(97)=-acd303(55)*acd303(54)
      acd303(98)=-acd303(52)*acd303(51)
      acd303(99)=-acd303(22)*acd303(41)
      acd303(100)=acd303(8)*acd303(34)
      acd303(101)=-acd303(27)*acd303(58)
      acd303(102)=acd303(23)*acd303(59)
      acd303(103)=-acd303(14)*acd303(46)
      acd303(104)=-acd303(10)*acd303(38)
      acd303(105)=-acd303(44)*acd303(53)
      acd303(106)=-acd303(42)*acd303(50)
      acd303(92)=acd303(95)+acd303(94)+acd303(92)+acd303(106)+acd303(105)+acd30&
      &3(104)+acd303(103)+acd303(102)+acd303(101)+acd303(100)+acd303(99)+acd303&
      &(98)+acd303(97)+acd303(60)+acd303(96)
      acd303(92)=acd303(40)*acd303(92)
      acd303(94)=-acd303(25)*acd303(5)
      acd303(95)=-acd303(68)*acd303(19)
      acd303(96)=-acd303(37)*acd303(13)
      acd303(97)=acd303(9)*acd303(107)
      acd303(98)=-acd303(29)*acd303(7)
      acd303(99)=-acd303(61)*acd303(18)
      acd303(100)=acd303(1)*acd303(3)
      acd303(94)=-2.0_ki*acd303(100)+acd303(99)+acd303(98)+acd303(97)+acd303(96&
      &)+acd303(94)+acd303(95)
      acd303(94)=acd303(2)*acd303(94)
      acd303(95)=-acd303(65)*acd303(64)
      acd303(96)=-acd303(6)*acd303(30)
      acd303(97)=-acd303(35)*acd303(66)
      acd303(98)=-acd303(23)*acd303(41)
      acd303(99)=-acd303(44)*acd303(63)
      acd303(100)=-acd303(42)*acd303(62)
      acd303(95)=acd303(100)+acd303(99)+acd303(98)+acd303(97)+acd303(96)+acd303&
      &(67)+acd303(95)
      acd303(95)=acd303(61)*acd303(95)
      acd303(96)=-acd303(65)*acd303(80)
      acd303(97)=-acd303(35)*acd303(81)
      acd303(98)=-acd303(29)*acd303(30)
      acd303(99)=-acd303(23)*acd303(21)
      acd303(100)=-acd303(78)*acd303(63)
      acd303(101)=-acd303(74)*acd303(62)
      acd303(96)=acd303(101)+acd303(100)+acd303(99)+acd303(98)+acd303(96)+acd30&
      &3(97)
      acd303(96)=acd303(17)*acd303(96)
      acd303(97)=-acd303(4)*acd303(5)
      acd303(98)=acd303(8)*acd303(9)
      acd303(99)=-acd303(6)*acd303(7)
      acd303(100)=-acd303(14)*acd303(19)
      acd303(101)=-acd303(10)*acd303(13)
      acd303(102)=-acd303(17)*acd303(18)
      acd303(97)=acd303(102)+acd303(101)+acd303(100)+acd303(99)+acd303(98)+acd3&
      &03(20)+acd303(97)
      acd303(97)=acd303(1)*acd303(97)
      acd303(98)=-acd303(6)*acd303(31)
      acd303(99)=acd303(35)*acd303(8)
      acd303(100)=acd303(27)*acd303(4)
      acd303(101)=-acd303(44)*acd303(72)
      acd303(102)=-acd303(42)*acd303(71)
      acd303(98)=acd303(102)+acd303(101)+acd303(100)+acd303(99)+acd303(73)+acd3&
      &03(98)
      acd303(98)=acd303(70)*acd303(98)
      acd303(99)=acd303(35)*acd303(107)
      acd303(100)=-acd303(29)*acd303(31)
      acd303(101)=acd303(27)*acd303(25)
      acd303(102)=-acd303(78)*acd303(72)
      acd303(103)=-acd303(74)*acd303(71)
      acd303(99)=acd303(103)+acd303(102)+acd303(101)+acd303(99)+acd303(100)
      acd303(99)=acd303(26)*acd303(99)
      acd303(100)=acd303(90)*acd303(91)
      acd303(101)=acd303(88)*acd303(89)
      acd303(102)=acd303(86)*acd303(87)
      acd303(103)=acd303(84)*acd303(85)
      acd303(104)=acd303(82)*acd303(83)
      acd303(105)=acd303(76)*acd303(77)
      acd303(106)=acd303(25)*acd303(28)
      acd303(108)=acd303(21)*acd303(24)
      acd303(109)=acd303(68)*acd303(69)
      acd303(110)=acd303(37)*acd303(39)
      acd303(107)=-acd303(36)*acd303(107)
      acd303(111)=acd303(29)*acd303(32)
      acd303(112)=acd303(78)*acd303(79)
      acd303(113)=acd303(74)*acd303(75)
      brack=acd303(92)+acd303(93)+acd303(94)+acd303(95)+acd303(96)+acd303(97)+a&
      &cd303(98)+acd303(99)+acd303(100)+acd303(101)+acd303(102)+acd303(103)+acd&
      &303(104)+acd303(105)+acd303(106)+acd303(107)+acd303(108)+acd303(109)+acd&
      &303(110)+acd303(111)+acd303(112)+acd303(113)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(104) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=dotproduct(k2,qshift)
      acd303(3)=abb303(44)
      acd303(4)=dotproduct(qshift,spvak2l5)
      acd303(5)=abb303(20)
      acd303(6)=dotproduct(qshift,spvak2k7)
      acd303(7)=abb303(33)
      acd303(8)=abb303(18)
      acd303(9)=k2(iv1)
      acd303(10)=k2(iv2)
      acd303(11)=abb303(73)
      acd303(12)=l6(iv2)
      acd303(13)=abb303(71)
      acd303(14)=k7(iv2)
      acd303(15)=abb303(70)
      acd303(16)=qshift(iv2)
      acd303(17)=spvak2k7(iv2)
      acd303(18)=dotproduct(qshift,spvak1l5)
      acd303(19)=abb303(19)
      acd303(20)=dotproduct(qshift,spvak4l5)
      acd303(21)=abb303(61)
      acd303(22)=abb303(22)
      acd303(23)=spvak1l5(iv2)
      acd303(24)=abb303(32)
      acd303(25)=spvak2l6(iv2)
      acd303(26)=abb303(12)
      acd303(27)=spvak4l5(iv2)
      acd303(28)=abb303(97)
      acd303(29)=l6(iv1)
      acd303(30)=k7(iv1)
      acd303(31)=qshift(iv1)
      acd303(32)=spvak2k7(iv1)
      acd303(33)=spvak1l5(iv1)
      acd303(34)=spvak2l6(iv1)
      acd303(35)=spvak4l5(iv1)
      acd303(36)=l5(iv1)
      acd303(37)=abb303(30)
      acd303(38)=abb303(38)
      acd303(39)=l5(iv2)
      acd303(40)=spvak2l5(iv2)
      acd303(41)=abb303(46)
      acd303(42)=spvak2l5(iv1)
      acd303(43)=abb303(39)
      acd303(44)=abb303(11)
      acd303(45)=dotproduct(qshift,spvak1k2)
      acd303(46)=abb303(17)
      acd303(47)=dotproduct(qshift,spvak4k2)
      acd303(48)=abb303(36)
      acd303(49)=abb303(43)
      acd303(50)=spvak1k2(iv2)
      acd303(51)=abb303(35)
      acd303(52)=spvak4k2(iv2)
      acd303(53)=abb303(40)
      acd303(54)=spvak1k2(iv1)
      acd303(55)=spvak4k2(iv1)
      acd303(56)=abb303(15)
      acd303(57)=abb303(27)
      acd303(58)=abb303(31)
      acd303(59)=abb303(57)
      acd303(60)=dotproduct(qshift,spvak2l6)
      acd303(61)=abb303(26)
      acd303(62)=spvak1l6(iv2)
      acd303(63)=abb303(52)
      acd303(64)=abb303(34)
      acd303(65)=spvak4l6(iv2)
      acd303(66)=abb303(55)
      acd303(67)=spvak7k2(iv2)
      acd303(68)=abb303(50)
      acd303(69)=spvak7l5(iv2)
      acd303(70)=spvak7l6(iv2)
      acd303(71)=spvak1l6(iv1)
      acd303(72)=spvak4l6(iv1)
      acd303(73)=spvak7k2(iv1)
      acd303(74)=spvak7l5(iv1)
      acd303(75)=spvak7l6(iv1)
      acd303(76)=abb303(23)
      acd303(77)=abb303(25)
      acd303(78)=spval6k2(iv2)
      acd303(79)=abb303(21)
      acd303(80)=spval6l5(iv2)
      acd303(81)=spval6k2(iv1)
      acd303(82)=spval6l5(iv1)
      acd303(83)=acd303(58)*acd303(60)
      acd303(84)=acd303(48)*acd303(4)
      acd303(83)=-acd303(64)+acd303(83)+acd303(84)
      acd303(84)=-acd303(52)*acd303(83)
      acd303(85)=acd303(57)*acd303(60)
      acd303(86)=acd303(46)*acd303(4)
      acd303(85)=-acd303(61)+acd303(85)+acd303(86)
      acd303(86)=-acd303(50)*acd303(85)
      acd303(87)=acd303(48)*acd303(47)
      acd303(88)=acd303(46)*acd303(45)
      acd303(87)=-acd303(49)+acd303(87)+acd303(88)
      acd303(88)=-acd303(40)*acd303(87)
      acd303(89)=acd303(58)*acd303(47)
      acd303(90)=acd303(57)*acd303(45)
      acd303(89)=acd303(89)+acd303(90)
      acd303(90)=-acd303(25)*acd303(89)
      acd303(91)=acd303(21)*acd303(20)
      acd303(92)=acd303(19)*acd303(18)
      acd303(91)=acd303(91)+acd303(92)-acd303(22)
      acd303(92)=-acd303(10)*acd303(91)
      acd303(93)=acd303(21)*acd303(2)
      acd303(93)=acd303(93)-acd303(59)
      acd303(94)=-acd303(27)*acd303(93)
      acd303(95)=acd303(19)*acd303(2)
      acd303(95)=acd303(95)-acd303(56)
      acd303(96)=-acd303(23)*acd303(95)
      acd303(97)=acd303(68)*acd303(67)
      acd303(98)=acd303(66)*acd303(65)
      acd303(99)=acd303(63)*acd303(62)
      acd303(100)=acd303(37)*acd303(39)
      acd303(101)=2.0_ki*acd303(7)
      acd303(102)=-acd303(16)*acd303(101)
      acd303(103)=acd303(41)*acd303(69)
      acd303(104)=-acd303(38)*acd303(70)
      acd303(84)=acd303(92)+acd303(90)+acd303(88)+acd303(86)+acd303(84)+acd303(&
      &104)+acd303(103)+acd303(102)+acd303(100)+acd303(99)+acd303(97)+acd303(98&
      &)+acd303(96)+acd303(94)
      acd303(84)=acd303(32)*acd303(84)
      acd303(83)=-acd303(55)*acd303(83)
      acd303(85)=-acd303(54)*acd303(85)
      acd303(86)=-acd303(42)*acd303(87)
      acd303(87)=-acd303(34)*acd303(89)
      acd303(88)=-acd303(9)*acd303(91)
      acd303(89)=-acd303(35)*acd303(93)
      acd303(90)=-acd303(33)*acd303(95)
      acd303(91)=acd303(68)*acd303(73)
      acd303(92)=acd303(66)*acd303(72)
      acd303(93)=acd303(63)*acd303(71)
      acd303(94)=acd303(36)*acd303(37)
      acd303(95)=-acd303(31)*acd303(101)
      acd303(96)=acd303(41)*acd303(74)
      acd303(97)=-acd303(38)*acd303(75)
      acd303(83)=acd303(88)+acd303(87)+acd303(86)+acd303(85)+acd303(83)+acd303(&
      &97)+acd303(96)+acd303(95)+acd303(94)+acd303(93)+acd303(91)+acd303(92)+ac&
      &d303(90)+acd303(89)
      acd303(83)=acd303(17)*acd303(83)
      acd303(85)=acd303(12)*acd303(13)
      acd303(86)=acd303(14)*acd303(15)
      acd303(87)=2.0_ki*acd303(16)
      acd303(88)=-acd303(3)*acd303(87)
      acd303(89)=acd303(27)*acd303(28)
      acd303(90)=acd303(23)*acd303(24)
      acd303(91)=acd303(25)*acd303(26)
      acd303(92)=acd303(10)*acd303(11)
      acd303(85)=2.0_ki*acd303(92)+acd303(91)+acd303(90)+acd303(89)+acd303(88)+&
      &acd303(85)+acd303(86)
      acd303(85)=acd303(9)*acd303(85)
      acd303(86)=-acd303(52)*acd303(48)
      acd303(88)=-acd303(50)*acd303(46)
      acd303(86)=acd303(86)+acd303(88)
      acd303(86)=acd303(42)*acd303(86)
      acd303(88)=-acd303(55)*acd303(48)
      acd303(89)=-acd303(54)*acd303(46)
      acd303(88)=acd303(88)+acd303(89)
      acd303(88)=acd303(40)*acd303(88)
      acd303(89)=-acd303(52)*acd303(58)
      acd303(90)=-acd303(50)*acd303(57)
      acd303(89)=acd303(89)+acd303(90)
      acd303(89)=acd303(34)*acd303(89)
      acd303(90)=-acd303(55)*acd303(58)
      acd303(91)=-acd303(54)*acd303(57)
      acd303(90)=acd303(90)+acd303(91)
      acd303(90)=acd303(25)*acd303(90)
      acd303(91)=acd303(21)*acd303(35)
      acd303(92)=acd303(19)*acd303(33)
      acd303(91)=-acd303(91)-acd303(92)
      acd303(91)=acd303(10)*acd303(91)
      acd303(92)=acd303(21)*acd303(27)
      acd303(93)=acd303(19)*acd303(23)
      acd303(92)=-acd303(92)-acd303(93)
      acd303(92)=acd303(9)*acd303(92)
      acd303(93)=-acd303(1)*acd303(101)
      acd303(86)=acd303(92)+acd303(91)+acd303(90)+acd303(89)+acd303(88)+acd303(&
      &93)+acd303(86)
      acd303(86)=acd303(6)*acd303(86)
      acd303(88)=acd303(79)*acd303(78)
      acd303(89)=acd303(14)*acd303(44)
      acd303(90)=acd303(38)*acd303(39)
      acd303(91)=acd303(5)*acd303(80)
      acd303(92)=acd303(52)*acd303(77)
      acd303(93)=acd303(50)*acd303(76)
      acd303(88)=acd303(93)+acd303(92)+acd303(91)+acd303(90)+acd303(88)+acd303(&
      &89)
      acd303(88)=acd303(34)*acd303(88)
      acd303(89)=acd303(79)*acd303(81)
      acd303(90)=acd303(30)*acd303(44)
      acd303(91)=acd303(38)*acd303(36)
      acd303(92)=acd303(5)*acd303(82)
      acd303(93)=acd303(55)*acd303(77)
      acd303(94)=acd303(54)*acd303(76)
      acd303(89)=acd303(94)+acd303(93)+acd303(92)+acd303(91)+acd303(89)+acd303(&
      &90)
      acd303(89)=acd303(25)*acd303(89)
      acd303(90)=acd303(13)*acd303(29)
      acd303(91)=acd303(30)*acd303(15)
      acd303(92)=2.0_ki*acd303(31)
      acd303(93)=-acd303(3)*acd303(92)
      acd303(94)=acd303(35)*acd303(28)
      acd303(95)=acd303(33)*acd303(24)
      acd303(96)=acd303(34)*acd303(26)
      acd303(90)=acd303(96)+acd303(95)+acd303(94)+acd303(93)+acd303(90)+acd303(&
      &91)
      acd303(90)=acd303(10)*acd303(90)
      acd303(91)=acd303(14)*acd303(43)
      acd303(93)=-acd303(41)*acd303(12)
      acd303(87)=-acd303(5)*acd303(87)
      acd303(94)=acd303(52)*acd303(53)
      acd303(95)=acd303(50)*acd303(51)
      acd303(87)=acd303(95)+acd303(94)+acd303(87)+acd303(91)+acd303(93)
      acd303(87)=acd303(42)*acd303(87)
      acd303(91)=acd303(30)*acd303(43)
      acd303(93)=-acd303(41)*acd303(29)
      acd303(92)=-acd303(5)*acd303(92)
      acd303(94)=acd303(55)*acd303(53)
      acd303(95)=acd303(54)*acd303(51)
      acd303(91)=acd303(95)+acd303(94)+acd303(92)+acd303(91)+acd303(93)
      acd303(91)=acd303(40)*acd303(91)
      acd303(92)=-acd303(4)*acd303(5)
      acd303(93)=-acd303(2)*acd303(3)
      acd303(92)=acd303(93)+acd303(8)+acd303(92)
      acd303(92)=acd303(1)*acd303(92)
      brack=acd303(83)+acd303(84)+acd303(85)+acd303(86)+acd303(87)+acd303(88)+a&
      &cd303(89)+acd303(90)+acd303(91)+2.0_ki*acd303(92)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=k2(iv3)
      acd303(3)=abb303(44)
      acd303(4)=spvak2l5(iv3)
      acd303(5)=abb303(20)
      acd303(6)=spvak2k7(iv3)
      acd303(7)=abb303(33)
      acd303(8)=d(iv1,iv3)
      acd303(9)=k2(iv2)
      acd303(10)=spvak2l5(iv2)
      acd303(11)=spvak2k7(iv2)
      acd303(12)=d(iv2,iv3)
      acd303(13)=k2(iv1)
      acd303(14)=spvak2l5(iv1)
      acd303(15)=spvak2k7(iv1)
      acd303(16)=spvak1l5(iv3)
      acd303(17)=abb303(19)
      acd303(18)=spvak4l5(iv3)
      acd303(19)=abb303(61)
      acd303(20)=spvak1l5(iv2)
      acd303(21)=spvak4l5(iv2)
      acd303(22)=spvak1l5(iv1)
      acd303(23)=spvak4l5(iv1)
      acd303(24)=spvak1k2(iv3)
      acd303(25)=abb303(17)
      acd303(26)=spvak4k2(iv3)
      acd303(27)=abb303(36)
      acd303(28)=spvak1k2(iv2)
      acd303(29)=spvak4k2(iv2)
      acd303(30)=spvak1k2(iv1)
      acd303(31)=spvak4k2(iv1)
      acd303(32)=spvak2l6(iv3)
      acd303(33)=abb303(27)
      acd303(34)=spvak2l6(iv2)
      acd303(35)=abb303(31)
      acd303(36)=spvak2l6(iv1)
      acd303(37)=acd303(9)*acd303(15)
      acd303(38)=acd303(13)*acd303(11)
      acd303(37)=acd303(37)+acd303(38)
      acd303(38)=acd303(16)*acd303(37)
      acd303(39)=acd303(2)*acd303(15)
      acd303(40)=acd303(13)*acd303(6)
      acd303(39)=acd303(39)+acd303(40)
      acd303(40)=acd303(20)*acd303(39)
      acd303(41)=acd303(2)*acd303(11)
      acd303(42)=acd303(9)*acd303(6)
      acd303(41)=acd303(41)+acd303(42)
      acd303(42)=acd303(22)*acd303(41)
      acd303(38)=acd303(42)+acd303(40)+acd303(38)
      acd303(38)=acd303(17)*acd303(38)
      acd303(37)=acd303(18)*acd303(37)
      acd303(39)=acd303(21)*acd303(39)
      acd303(40)=acd303(23)*acd303(41)
      acd303(37)=acd303(40)+acd303(39)+acd303(37)
      acd303(37)=acd303(19)*acd303(37)
      acd303(39)=acd303(3)*acd303(9)
      acd303(40)=acd303(5)*acd303(10)
      acd303(41)=acd303(7)*acd303(11)
      acd303(39)=acd303(41)+acd303(39)+acd303(40)
      acd303(39)=acd303(8)*acd303(39)
      acd303(40)=acd303(3)*acd303(13)
      acd303(41)=acd303(5)*acd303(14)
      acd303(42)=acd303(7)*acd303(15)
      acd303(40)=acd303(42)+acd303(40)+acd303(41)
      acd303(40)=acd303(12)*acd303(40)
      acd303(39)=acd303(39)+acd303(40)
      acd303(40)=acd303(30)*acd303(25)
      acd303(41)=acd303(31)*acd303(27)
      acd303(40)=acd303(41)+acd303(40)
      acd303(41)=acd303(4)*acd303(11)
      acd303(42)=acd303(10)*acd303(6)
      acd303(41)=acd303(41)+acd303(42)
      acd303(40)=acd303(41)*acd303(40)
      acd303(41)=acd303(3)*acd303(2)
      acd303(42)=acd303(5)*acd303(4)
      acd303(43)=acd303(7)*acd303(6)
      acd303(41)=acd303(43)+acd303(42)+acd303(41)
      acd303(42)=2.0_ki*acd303(1)
      acd303(41)=acd303(42)*acd303(41)
      acd303(42)=acd303(30)*acd303(33)
      acd303(43)=acd303(31)*acd303(35)
      acd303(42)=acd303(42)+acd303(43)
      acd303(43)=acd303(11)*acd303(42)
      acd303(44)=acd303(28)*acd303(33)
      acd303(45)=acd303(29)*acd303(35)
      acd303(44)=acd303(44)+acd303(45)
      acd303(45)=acd303(15)*acd303(44)
      acd303(43)=acd303(45)+acd303(43)
      acd303(43)=acd303(32)*acd303(43)
      acd303(42)=acd303(6)*acd303(42)
      acd303(45)=acd303(24)*acd303(33)
      acd303(46)=acd303(26)*acd303(35)
      acd303(45)=acd303(45)+acd303(46)
      acd303(46)=acd303(15)*acd303(45)
      acd303(42)=acd303(46)+acd303(42)
      acd303(42)=acd303(34)*acd303(42)
      acd303(44)=acd303(6)*acd303(44)
      acd303(45)=acd303(11)*acd303(45)
      acd303(44)=acd303(45)+acd303(44)
      acd303(44)=acd303(36)*acd303(44)
      acd303(45)=acd303(10)*acd303(15)
      acd303(46)=acd303(25)*acd303(45)
      acd303(47)=acd303(14)*acd303(25)
      acd303(48)=acd303(11)*acd303(47)
      acd303(46)=acd303(46)+acd303(48)
      acd303(46)=acd303(24)*acd303(46)
      acd303(45)=acd303(27)*acd303(45)
      acd303(48)=acd303(14)*acd303(27)
      acd303(49)=acd303(11)*acd303(48)
      acd303(45)=acd303(45)+acd303(49)
      acd303(45)=acd303(26)*acd303(45)
      acd303(49)=acd303(4)*acd303(15)
      acd303(50)=acd303(25)*acd303(49)
      acd303(47)=acd303(6)*acd303(47)
      acd303(47)=acd303(50)+acd303(47)
      acd303(47)=acd303(28)*acd303(47)
      acd303(49)=acd303(27)*acd303(49)
      acd303(48)=acd303(6)*acd303(48)
      acd303(48)=acd303(49)+acd303(48)
      acd303(48)=acd303(29)*acd303(48)
      brack=acd303(37)+acd303(38)+2.0_ki*acd303(39)+acd303(40)+acd303(41)+acd30&
      &3(42)+acd303(43)+acd303(44)+acd303(45)+acd303(46)+acd303(47)+acd303(48)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h3
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
      qshift = k5
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
!---#[ subroutine reconstruct_d303:
   subroutine     reconstruct_d303(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group12
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group12), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_303:
      coeffs%coeffs_303%c0 = derivative(czip)
      coeffs%coeffs_303%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_303%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_303%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_303%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_303%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_303%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_303%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_303%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_303%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_303%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_303%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_303%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_303%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_303%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_303%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_303%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_303%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_303%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_303%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_303%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_303%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_303%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_303%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_303%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_303%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_303%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_303%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_303%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_303%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_303%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_303%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_303%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_303%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_303%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_303:
   end subroutine reconstruct_d303
!---#] subroutine reconstruct_d303:
end module     p0_dbaru_epnebbbarg_d303h3l1d
