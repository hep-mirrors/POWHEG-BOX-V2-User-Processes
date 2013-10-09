module     p9_csbar_epnebbbarg_d303h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d303h1l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
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
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd303h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd303
      complex(ki) :: brack
      acd303(1)=dotproduct(k1,qshift)
      acd303(2)=dotproduct(k2,qshift)
      acd303(3)=abb303(44)
      acd303(4)=dotproduct(k7,qshift)
      acd303(5)=abb303(57)
      acd303(6)=dotproduct(e7,qshift)
      acd303(7)=dotproduct(qshift,spvak4l5)
      acd303(8)=abb303(61)
      acd303(9)=dotproduct(qshift,spval6l5)
      acd303(10)=abb303(59)
      acd303(11)=abb303(52)
      acd303(12)=dotproduct(qshift,qshift)
      acd303(13)=abb303(50)
      acd303(14)=abb303(60)
      acd303(15)=abb303(58)
      acd303(16)=dotproduct(qshift,spval6k7)
      acd303(17)=abb303(38)
      acd303(18)=dotproduct(qshift,spval6e7)
      acd303(19)=abb303(55)
      acd303(20)=abb303(40)
      acd303(21)=dotproduct(k3,qshift)
      acd303(22)=dotproduct(k4,qshift)
      acd303(23)=abb303(11)
      acd303(24)=abb303(32)
      acd303(25)=dotproduct(qshift,spvak4k1)
      acd303(26)=abb303(8)
      acd303(27)=dotproduct(qshift,spvak4k3)
      acd303(28)=abb303(66)
      acd303(29)=abb303(10)
      acd303(30)=dotproduct(l6,qshift)
      acd303(31)=abb303(37)
      acd303(32)=abb303(51)
      acd303(33)=abb303(39)
      acd303(34)=abb303(72)
      acd303(35)=abb303(36)
      acd303(36)=abb303(20)
      acd303(37)=abb303(65)
      acd303(38)=abb303(9)
      acd303(39)=abb303(43)
      acd303(40)=abb303(17)
      acd303(41)=dotproduct(qshift,spvak1l5)
      acd303(42)=abb303(26)
      acd303(43)=abb303(18)
      acd303(44)=dotproduct(qshift,spvak3l5)
      acd303(45)=abb303(47)
      acd303(46)=dotproduct(qshift,spvak2k1)
      acd303(47)=abb303(30)
      acd303(48)=dotproduct(qshift,spvak2k3)
      acd303(49)=abb303(28)
      acd303(50)=abb303(23)
      acd303(51)=abb303(33)
      acd303(52)=abb303(22)
      acd303(53)=abb303(63)
      acd303(54)=abb303(35)
      acd303(55)=abb303(15)
      acd303(56)=abb303(64)
      acd303(57)=abb303(19)
      acd303(58)=abb303(56)
      acd303(59)=abb303(13)
      acd303(60)=abb303(49)
      acd303(61)=abb303(24)
      acd303(62)=abb303(12)
      acd303(63)=abb303(34)
      acd303(64)=abb303(31)
      acd303(65)=abb303(25)
      acd303(66)=abb303(16)
      acd303(67)=abb303(21)
      acd303(68)=abb303(29)
      acd303(69)=abb303(27)
      acd303(70)=abb303(14)
      acd303(71)=-acd303(44)*acd303(65)
      acd303(72)=acd303(16)*acd303(60)
      acd303(73)=-acd303(12)*acd303(53)
      acd303(74)=acd303(4)*acd303(34)
      acd303(75)=acd303(2)*acd303(28)
      acd303(76)=acd303(18)*acd303(63)
      acd303(77)=acd303(9)*acd303(58)
      acd303(78)=acd303(7)*acd303(56)
      acd303(71)=acd303(78)+acd303(77)+acd303(76)+acd303(75)+acd303(74)+acd303(&
      &73)+acd303(72)-acd303(67)+acd303(71)
      acd303(71)=acd303(27)*acd303(71)
      acd303(72)=acd303(41)*acd303(65)
      acd303(73)=acd303(16)*acd303(59)
      acd303(74)=-acd303(12)*acd303(52)
      acd303(75)=acd303(4)*acd303(33)
      acd303(76)=acd303(2)*acd303(26)
      acd303(77)=acd303(18)*acd303(62)
      acd303(78)=acd303(9)*acd303(57)
      acd303(79)=acd303(7)*acd303(55)
      acd303(72)=acd303(79)+acd303(78)+acd303(77)+acd303(76)+acd303(75)+acd303(&
      &74)+acd303(73)-acd303(66)+acd303(72)
      acd303(72)=acd303(25)*acd303(72)
      acd303(73)=-acd303(42)*acd303(44)
      acd303(74)=-acd303(9)*acd303(39)
      acd303(75)=-acd303(7)*acd303(37)
      acd303(73)=acd303(75)+acd303(74)+acd303(45)+acd303(73)
      acd303(73)=acd303(27)*acd303(73)
      acd303(74)=acd303(41)*acd303(42)
      acd303(75)=-acd303(9)*acd303(38)
      acd303(76)=-acd303(7)*acd303(36)
      acd303(74)=acd303(76)+acd303(75)+acd303(43)+acd303(74)
      acd303(74)=acd303(25)*acd303(74)
      acd303(75)=acd303(9)*acd303(10)
      acd303(76)=acd303(7)*acd303(8)
      acd303(75)=-acd303(11)+acd303(75)+acd303(76)
      acd303(76)=-acd303(22)+acd303(1)-acd303(21)
      acd303(75)=-acd303(75)*acd303(76)
      acd303(77)=acd303(4)+acd303(30)
      acd303(77)=acd303(31)*acd303(77)
      acd303(78)=acd303(48)*acd303(49)
      acd303(79)=acd303(46)*acd303(47)
      acd303(80)=acd303(16)*acd303(40)
      acd303(81)=acd303(2)*acd303(23)
      acd303(73)=acd303(74)+acd303(73)+acd303(81)+acd303(80)+acd303(79)-acd303(&
      &50)+acd303(78)+acd303(75)+acd303(77)
      acd303(73)=acd303(6)*acd303(73)
      acd303(74)=acd303(16)*acd303(17)
      acd303(75)=acd303(12)*acd303(13)
      acd303(77)=acd303(4)*acd303(5)
      acd303(78)=acd303(2)*acd303(3)
      acd303(79)=acd303(18)*acd303(19)
      acd303(80)=acd303(9)*acd303(15)
      acd303(81)=acd303(7)*acd303(14)
      acd303(74)=-acd303(78)-acd303(77)-acd303(74)-acd303(75)+acd303(79)+acd303&
      &(80)+acd303(81)+acd303(20)
      acd303(74)=-acd303(74)*acd303(76)
      acd303(75)=-acd303(4)+acd303(30)
      acd303(75)=acd303(32)*acd303(75)
      acd303(76)=-acd303(12)*acd303(51)
      acd303(77)=acd303(2)*acd303(24)
      acd303(75)=acd303(77)+acd303(76)-acd303(64)+acd303(75)
      acd303(75)=acd303(18)*acd303(75)
      acd303(76)=-acd303(48)*acd303(69)
      acd303(77)=-acd303(46)*acd303(68)
      acd303(78)=-acd303(16)*acd303(61)
      acd303(79)=acd303(12)*acd303(54)
      acd303(80)=-acd303(4)*acd303(35)
      acd303(81)=-acd303(2)*acd303(29)
      brack=acd303(70)+acd303(71)+acd303(72)+acd303(73)+acd303(74)+acd303(75)+a&
      &cd303(76)+acd303(77)+acd303(78)+acd303(79)+acd303(80)+acd303(81)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd303h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(105) :: acd303
      complex(ki) :: brack
      acd303(1)=k1(iv1)
      acd303(2)=dotproduct(k2,qshift)
      acd303(3)=abb303(44)
      acd303(4)=dotproduct(k7,qshift)
      acd303(5)=abb303(57)
      acd303(6)=dotproduct(e7,qshift)
      acd303(7)=dotproduct(qshift,spvak4l5)
      acd303(8)=abb303(61)
      acd303(9)=dotproduct(qshift,spval6l5)
      acd303(10)=abb303(59)
      acd303(11)=abb303(52)
      acd303(12)=dotproduct(qshift,qshift)
      acd303(13)=abb303(50)
      acd303(14)=abb303(60)
      acd303(15)=abb303(58)
      acd303(16)=dotproduct(qshift,spval6k7)
      acd303(17)=abb303(38)
      acd303(18)=dotproduct(qshift,spval6e7)
      acd303(19)=abb303(55)
      acd303(20)=abb303(40)
      acd303(21)=k2(iv1)
      acd303(22)=dotproduct(k1,qshift)
      acd303(23)=dotproduct(k3,qshift)
      acd303(24)=dotproduct(k4,qshift)
      acd303(25)=abb303(11)
      acd303(26)=abb303(32)
      acd303(27)=dotproduct(qshift,spvak4k1)
      acd303(28)=abb303(8)
      acd303(29)=dotproduct(qshift,spvak4k3)
      acd303(30)=abb303(66)
      acd303(31)=abb303(10)
      acd303(32)=k3(iv1)
      acd303(33)=k4(iv1)
      acd303(34)=l6(iv1)
      acd303(35)=abb303(37)
      acd303(36)=abb303(51)
      acd303(37)=k7(iv1)
      acd303(38)=abb303(39)
      acd303(39)=abb303(72)
      acd303(40)=abb303(36)
      acd303(41)=e7(iv1)
      acd303(42)=dotproduct(l6,qshift)
      acd303(43)=abb303(20)
      acd303(44)=abb303(65)
      acd303(45)=abb303(9)
      acd303(46)=abb303(43)
      acd303(47)=abb303(17)
      acd303(48)=dotproduct(qshift,spvak1l5)
      acd303(49)=abb303(26)
      acd303(50)=abb303(18)
      acd303(51)=dotproduct(qshift,spvak3l5)
      acd303(52)=abb303(47)
      acd303(53)=dotproduct(qshift,spvak2k1)
      acd303(54)=abb303(30)
      acd303(55)=dotproduct(qshift,spvak2k3)
      acd303(56)=abb303(28)
      acd303(57)=abb303(23)
      acd303(58)=qshift(iv1)
      acd303(59)=abb303(33)
      acd303(60)=abb303(22)
      acd303(61)=abb303(63)
      acd303(62)=abb303(35)
      acd303(63)=spvak4l5(iv1)
      acd303(64)=abb303(15)
      acd303(65)=abb303(64)
      acd303(66)=spval6l5(iv1)
      acd303(67)=abb303(19)
      acd303(68)=abb303(56)
      acd303(69)=spval6k7(iv1)
      acd303(70)=abb303(13)
      acd303(71)=abb303(49)
      acd303(72)=abb303(24)
      acd303(73)=spval6e7(iv1)
      acd303(74)=abb303(12)
      acd303(75)=abb303(34)
      acd303(76)=abb303(31)
      acd303(77)=spvak4k1(iv1)
      acd303(78)=abb303(25)
      acd303(79)=abb303(16)
      acd303(80)=spvak4k3(iv1)
      acd303(81)=abb303(21)
      acd303(82)=spvak1l5(iv1)
      acd303(83)=spvak2k1(iv1)
      acd303(84)=abb303(29)
      acd303(85)=spvak2k3(iv1)
      acd303(86)=abb303(27)
      acd303(87)=spvak3l5(iv1)
      acd303(88)=acd303(49)*acd303(87)
      acd303(89)=acd303(66)*acd303(46)
      acd303(90)=acd303(63)*acd303(44)
      acd303(88)=acd303(90)+acd303(88)+acd303(89)
      acd303(88)=acd303(29)*acd303(88)
      acd303(89)=-acd303(49)*acd303(82)
      acd303(90)=acd303(66)*acd303(45)
      acd303(91)=acd303(63)*acd303(43)
      acd303(89)=acd303(91)+acd303(89)+acd303(90)
      acd303(89)=acd303(27)*acd303(89)
      acd303(90)=-acd303(33)+acd303(1)-acd303(32)
      acd303(91)=acd303(10)*acd303(90)
      acd303(92)=acd303(80)*acd303(46)
      acd303(93)=acd303(77)*acd303(45)
      acd303(91)=acd303(93)+acd303(92)+acd303(91)
      acd303(91)=acd303(9)*acd303(91)
      acd303(92)=acd303(8)*acd303(90)
      acd303(93)=acd303(80)*acd303(44)
      acd303(94)=acd303(77)*acd303(43)
      acd303(92)=acd303(94)+acd303(93)+acd303(92)
      acd303(92)=acd303(7)*acd303(92)
      acd303(93)=acd303(66)*acd303(10)
      acd303(94)=acd303(63)*acd303(8)
      acd303(93)=acd303(93)+acd303(94)
      acd303(94)=-acd303(24)+acd303(22)-acd303(23)
      acd303(93)=acd303(93)*acd303(94)
      acd303(95)=-acd303(37)-acd303(34)
      acd303(95)=acd303(35)*acd303(95)
      acd303(96)=-acd303(11)*acd303(90)
      acd303(97)=-acd303(56)*acd303(85)
      acd303(98)=-acd303(54)*acd303(83)
      acd303(99)=-acd303(69)*acd303(47)
      acd303(100)=-acd303(21)*acd303(25)
      acd303(101)=acd303(49)*acd303(51)
      acd303(101)=acd303(101)-acd303(52)
      acd303(102)=acd303(80)*acd303(101)
      acd303(103)=acd303(49)*acd303(48)
      acd303(103)=acd303(103)+acd303(50)
      acd303(104)=-acd303(77)*acd303(103)
      acd303(88)=acd303(92)+acd303(91)+acd303(89)+acd303(88)+acd303(104)+acd303&
      &(102)+acd303(100)+acd303(99)+acd303(97)+acd303(98)+acd303(96)+acd303(93)&
      &+acd303(95)
      acd303(88)=acd303(6)*acd303(88)
      acd303(89)=acd303(10)*acd303(94)
      acd303(91)=acd303(29)*acd303(46)
      acd303(92)=acd303(27)*acd303(45)
      acd303(89)=acd303(92)+acd303(91)+acd303(89)
      acd303(89)=acd303(9)*acd303(89)
      acd303(91)=acd303(8)*acd303(94)
      acd303(92)=acd303(29)*acd303(44)
      acd303(93)=acd303(27)*acd303(43)
      acd303(91)=acd303(93)+acd303(92)+acd303(91)
      acd303(91)=acd303(7)*acd303(91)
      acd303(92)=-acd303(4)-acd303(42)
      acd303(92)=acd303(35)*acd303(92)
      acd303(93)=-acd303(11)*acd303(94)
      acd303(95)=-acd303(56)*acd303(55)
      acd303(96)=-acd303(54)*acd303(53)
      acd303(97)=-acd303(16)*acd303(47)
      acd303(98)=-acd303(2)*acd303(25)
      acd303(99)=acd303(29)*acd303(101)
      acd303(100)=-acd303(27)*acd303(103)
      acd303(89)=acd303(91)+acd303(89)+acd303(100)+acd303(99)+acd303(98)+acd303&
      &(97)+acd303(96)+acd303(57)+acd303(95)+acd303(93)+acd303(92)
      acd303(89)=acd303(41)*acd303(89)
      acd303(91)=acd303(78)*acd303(87)
      acd303(92)=-acd303(69)*acd303(71)
      acd303(93)=2.0_ki*acd303(58)
      acd303(95)=acd303(61)*acd303(93)
      acd303(96)=-acd303(37)*acd303(39)
      acd303(97)=-acd303(21)*acd303(30)
      acd303(98)=-acd303(73)*acd303(75)
      acd303(99)=-acd303(66)*acd303(68)
      acd303(100)=-acd303(63)*acd303(65)
      acd303(91)=acd303(100)+acd303(99)+acd303(98)+acd303(97)+acd303(96)+acd303&
      &(95)+acd303(91)+acd303(92)
      acd303(91)=acd303(29)*acd303(91)
      acd303(92)=-acd303(78)*acd303(82)
      acd303(95)=-acd303(69)*acd303(70)
      acd303(96)=acd303(60)*acd303(93)
      acd303(97)=-acd303(37)*acd303(38)
      acd303(98)=-acd303(21)*acd303(28)
      acd303(99)=-acd303(73)*acd303(74)
      acd303(100)=-acd303(66)*acd303(67)
      acd303(101)=-acd303(63)*acd303(64)
      acd303(92)=acd303(101)+acd303(100)+acd303(99)+acd303(98)+acd303(97)+acd30&
      &3(96)+acd303(92)+acd303(95)
      acd303(92)=acd303(27)*acd303(92)
      acd303(95)=acd303(69)*acd303(17)
      acd303(96)=acd303(93)*acd303(13)
      acd303(97)=acd303(37)*acd303(5)
      acd303(98)=acd303(21)*acd303(3)
      acd303(99)=acd303(73)*acd303(19)
      acd303(100)=acd303(66)*acd303(15)
      acd303(101)=acd303(63)*acd303(14)
      acd303(95)=acd303(101)-acd303(98)-acd303(97)-acd303(95)-acd303(96)+acd303&
      &(99)+acd303(100)
      acd303(94)=acd303(95)*acd303(94)
      acd303(95)=acd303(78)*acd303(51)
      acd303(96)=-acd303(16)*acd303(71)
      acd303(97)=acd303(12)*acd303(61)
      acd303(98)=-acd303(4)*acd303(39)
      acd303(99)=-acd303(2)*acd303(30)
      acd303(100)=-acd303(18)*acd303(75)
      acd303(95)=acd303(100)+acd303(99)+acd303(98)+acd303(97)+acd303(96)+acd303&
      &(81)+acd303(95)
      acd303(95)=acd303(80)*acd303(95)
      acd303(96)=-acd303(78)*acd303(48)
      acd303(97)=-acd303(16)*acd303(70)
      acd303(98)=acd303(12)*acd303(60)
      acd303(99)=-acd303(4)*acd303(38)
      acd303(100)=-acd303(2)*acd303(28)
      acd303(101)=-acd303(18)*acd303(74)
      acd303(96)=acd303(101)+acd303(100)+acd303(99)+acd303(98)+acd303(97)+acd30&
      &3(79)+acd303(96)
      acd303(96)=acd303(77)*acd303(96)
      acd303(97)=acd303(16)*acd303(17)
      acd303(98)=acd303(12)*acd303(13)
      acd303(99)=acd303(4)*acd303(5)
      acd303(100)=acd303(2)*acd303(3)
      acd303(101)=acd303(18)*acd303(19)
      acd303(97)=-acd303(20)+acd303(97)+acd303(100)-acd303(101)+acd303(98)+acd3&
      &03(99)
      acd303(97)=-acd303(97)*acd303(90)
      acd303(98)=acd303(37)-acd303(34)
      acd303(98)=acd303(36)*acd303(98)
      acd303(99)=acd303(59)*acd303(93)
      acd303(100)=-acd303(21)*acd303(26)
      acd303(98)=acd303(100)+acd303(99)+acd303(98)
      acd303(98)=acd303(18)*acd303(98)
      acd303(99)=acd303(4)-acd303(42)
      acd303(99)=acd303(36)*acd303(99)
      acd303(100)=acd303(12)*acd303(59)
      acd303(101)=-acd303(2)*acd303(26)
      acd303(99)=acd303(101)+acd303(100)+acd303(76)+acd303(99)
      acd303(99)=acd303(73)*acd303(99)
      acd303(100)=acd303(15)*acd303(90)
      acd303(101)=-acd303(80)*acd303(68)
      acd303(102)=-acd303(77)*acd303(67)
      acd303(100)=acd303(102)+acd303(101)+acd303(100)
      acd303(100)=acd303(9)*acd303(100)
      acd303(90)=acd303(14)*acd303(90)
      acd303(101)=-acd303(80)*acd303(65)
      acd303(102)=-acd303(77)*acd303(64)
      acd303(90)=acd303(102)+acd303(101)+acd303(90)
      acd303(90)=acd303(7)*acd303(90)
      acd303(101)=acd303(85)*acd303(86)
      acd303(102)=acd303(83)*acd303(84)
      acd303(103)=acd303(69)*acd303(72)
      acd303(93)=-acd303(62)*acd303(93)
      acd303(104)=acd303(37)*acd303(40)
      acd303(105)=acd303(21)*acd303(31)
      brack=acd303(88)+acd303(89)+acd303(90)+acd303(91)+acd303(92)+acd303(93)+a&
      &cd303(94)+acd303(95)+acd303(96)+acd303(97)+acd303(98)+acd303(99)+acd303(&
      &100)+acd303(101)+acd303(102)+acd303(103)+acd303(104)+acd303(105)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd303h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(108) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=dotproduct(k1,qshift)
      acd303(3)=abb303(50)
      acd303(4)=dotproduct(k3,qshift)
      acd303(5)=dotproduct(k4,qshift)
      acd303(6)=dotproduct(qshift,spvak4k1)
      acd303(7)=abb303(22)
      acd303(8)=dotproduct(qshift,spvak4k3)
      acd303(9)=abb303(63)
      acd303(10)=dotproduct(qshift,spval6e7)
      acd303(11)=abb303(33)
      acd303(12)=abb303(35)
      acd303(13)=k1(iv1)
      acd303(14)=k2(iv2)
      acd303(15)=abb303(44)
      acd303(16)=k7(iv2)
      acd303(17)=abb303(57)
      acd303(18)=e7(iv2)
      acd303(19)=dotproduct(qshift,spvak4l5)
      acd303(20)=abb303(61)
      acd303(21)=dotproduct(qshift,spval6l5)
      acd303(22)=abb303(59)
      acd303(23)=abb303(52)
      acd303(24)=qshift(iv2)
      acd303(25)=spval6e7(iv2)
      acd303(26)=abb303(55)
      acd303(27)=spvak4l5(iv2)
      acd303(28)=dotproduct(e7,qshift)
      acd303(29)=abb303(60)
      acd303(30)=spval6l5(iv2)
      acd303(31)=abb303(58)
      acd303(32)=spval6k7(iv2)
      acd303(33)=abb303(38)
      acd303(34)=k1(iv2)
      acd303(35)=k2(iv1)
      acd303(36)=k7(iv1)
      acd303(37)=e7(iv1)
      acd303(38)=qshift(iv1)
      acd303(39)=spval6e7(iv1)
      acd303(40)=spvak4l5(iv1)
      acd303(41)=spval6l5(iv1)
      acd303(42)=spval6k7(iv1)
      acd303(43)=k3(iv2)
      acd303(44)=k4(iv2)
      acd303(45)=abb303(11)
      acd303(46)=spvak4k1(iv2)
      acd303(47)=abb303(8)
      acd303(48)=spvak4k3(iv2)
      acd303(49)=abb303(66)
      acd303(50)=abb303(32)
      acd303(51)=k3(iv1)
      acd303(52)=k4(iv1)
      acd303(53)=spvak4k1(iv1)
      acd303(54)=spvak4k3(iv1)
      acd303(55)=l6(iv1)
      acd303(56)=abb303(37)
      acd303(57)=abb303(51)
      acd303(58)=l6(iv2)
      acd303(59)=abb303(39)
      acd303(60)=abb303(72)
      acd303(61)=abb303(20)
      acd303(62)=abb303(9)
      acd303(63)=dotproduct(qshift,spvak1l5)
      acd303(64)=abb303(26)
      acd303(65)=abb303(18)
      acd303(66)=abb303(65)
      acd303(67)=abb303(43)
      acd303(68)=dotproduct(qshift,spvak3l5)
      acd303(69)=abb303(47)
      acd303(70)=abb303(17)
      acd303(71)=spvak1l5(iv2)
      acd303(72)=spvak2k1(iv2)
      acd303(73)=abb303(30)
      acd303(74)=spvak2k3(iv2)
      acd303(75)=abb303(28)
      acd303(76)=spvak3l5(iv2)
      acd303(77)=spvak1l5(iv1)
      acd303(78)=spvak2k1(iv1)
      acd303(79)=spvak2k3(iv1)
      acd303(80)=spvak3l5(iv1)
      acd303(81)=abb303(12)
      acd303(82)=abb303(15)
      acd303(83)=abb303(19)
      acd303(84)=abb303(13)
      acd303(85)=abb303(25)
      acd303(86)=abb303(34)
      acd303(87)=abb303(64)
      acd303(88)=abb303(56)
      acd303(89)=abb303(49)
      acd303(90)=acd303(21)*acd303(67)
      acd303(91)=acd303(19)*acd303(66)
      acd303(92)=acd303(64)*acd303(68)
      acd303(90)=-acd303(69)+acd303(90)+acd303(91)+acd303(92)
      acd303(91)=-acd303(48)*acd303(90)
      acd303(92)=acd303(21)*acd303(62)
      acd303(93)=acd303(19)*acd303(61)
      acd303(94)=acd303(64)*acd303(63)
      acd303(92)=-acd303(92)-acd303(93)+acd303(94)+acd303(65)
      acd303(93)=acd303(46)*acd303(92)
      acd303(94)=-acd303(8)*acd303(76)
      acd303(95)=acd303(6)*acd303(71)
      acd303(94)=acd303(94)+acd303(95)
      acd303(94)=acd303(64)*acd303(94)
      acd303(95)=acd303(8)*acd303(67)
      acd303(96)=acd303(6)*acd303(62)
      acd303(95)=acd303(95)+acd303(96)
      acd303(96)=-acd303(30)*acd303(95)
      acd303(97)=acd303(8)*acd303(66)
      acd303(98)=acd303(6)*acd303(61)
      acd303(97)=acd303(97)+acd303(98)
      acd303(98)=-acd303(27)*acd303(97)
      acd303(99)=-acd303(44)+acd303(34)-acd303(43)
      acd303(100)=-acd303(21)*acd303(99)
      acd303(101)=-acd303(5)+acd303(2)-acd303(4)
      acd303(102)=-acd303(30)*acd303(101)
      acd303(100)=acd303(102)+acd303(100)
      acd303(100)=acd303(22)*acd303(100)
      acd303(102)=-acd303(19)*acd303(99)
      acd303(103)=-acd303(27)*acd303(101)
      acd303(102)=acd303(103)+acd303(102)
      acd303(102)=acd303(20)*acd303(102)
      acd303(103)=acd303(16)+acd303(58)
      acd303(103)=acd303(56)*acd303(103)
      acd303(104)=acd303(23)*acd303(99)
      acd303(105)=acd303(75)*acd303(74)
      acd303(106)=acd303(73)*acd303(72)
      acd303(107)=acd303(32)*acd303(70)
      acd303(108)=acd303(14)*acd303(45)
      acd303(91)=acd303(102)+acd303(100)+acd303(98)+acd303(96)+acd303(93)+acd30&
      &3(91)+acd303(94)+acd303(108)+acd303(107)+acd303(105)+acd303(106)+acd303(&
      &104)+acd303(103)
      acd303(91)=acd303(37)*acd303(91)
      acd303(90)=-acd303(54)*acd303(90)
      acd303(92)=acd303(53)*acd303(92)
      acd303(93)=-acd303(8)*acd303(80)
      acd303(94)=acd303(6)*acd303(77)
      acd303(93)=acd303(93)+acd303(94)
      acd303(93)=acd303(64)*acd303(93)
      acd303(94)=-acd303(41)*acd303(95)
      acd303(95)=-acd303(40)*acd303(97)
      acd303(96)=-acd303(52)+acd303(13)-acd303(51)
      acd303(97)=-acd303(21)*acd303(96)
      acd303(98)=-acd303(41)*acd303(101)
      acd303(97)=acd303(98)+acd303(97)
      acd303(97)=acd303(22)*acd303(97)
      acd303(98)=-acd303(19)*acd303(96)
      acd303(100)=-acd303(40)*acd303(101)
      acd303(98)=acd303(100)+acd303(98)
      acd303(98)=acd303(20)*acd303(98)
      acd303(100)=acd303(36)+acd303(55)
      acd303(100)=acd303(56)*acd303(100)
      acd303(102)=acd303(23)*acd303(96)
      acd303(103)=acd303(75)*acd303(79)
      acd303(104)=acd303(73)*acd303(78)
      acd303(105)=acd303(42)*acd303(70)
      acd303(106)=acd303(35)*acd303(45)
      acd303(90)=acd303(98)+acd303(97)+acd303(95)+acd303(94)+acd303(92)+acd303(&
      &90)+acd303(93)+acd303(106)+acd303(105)+acd303(103)+acd303(104)+acd303(10&
      &2)+acd303(100)
      acd303(90)=acd303(18)*acd303(90)
      acd303(92)=-acd303(54)*acd303(76)
      acd303(93)=acd303(53)*acd303(71)
      acd303(94)=-acd303(48)*acd303(80)
      acd303(95)=acd303(46)*acd303(77)
      acd303(92)=acd303(95)+acd303(94)+acd303(92)+acd303(93)
      acd303(92)=acd303(64)*acd303(92)
      acd303(93)=-acd303(48)*acd303(67)
      acd303(94)=-acd303(46)*acd303(62)
      acd303(93)=acd303(93)+acd303(94)
      acd303(93)=acd303(41)*acd303(93)
      acd303(94)=-acd303(48)*acd303(66)
      acd303(95)=-acd303(46)*acd303(61)
      acd303(94)=acd303(94)+acd303(95)
      acd303(94)=acd303(40)*acd303(94)
      acd303(95)=-acd303(54)*acd303(67)
      acd303(97)=-acd303(53)*acd303(62)
      acd303(95)=acd303(95)+acd303(97)
      acd303(95)=acd303(30)*acd303(95)
      acd303(97)=-acd303(54)*acd303(66)
      acd303(98)=-acd303(53)*acd303(61)
      acd303(97)=acd303(97)+acd303(98)
      acd303(97)=acd303(27)*acd303(97)
      acd303(98)=-acd303(41)*acd303(99)
      acd303(100)=-acd303(30)*acd303(96)
      acd303(98)=acd303(98)+acd303(100)
      acd303(98)=acd303(22)*acd303(98)
      acd303(100)=-acd303(40)*acd303(99)
      acd303(102)=-acd303(27)*acd303(96)
      acd303(100)=acd303(100)+acd303(102)
      acd303(100)=acd303(20)*acd303(100)
      acd303(92)=acd303(100)+acd303(98)+acd303(97)+acd303(95)+acd303(94)+acd303&
      &(93)+acd303(92)
      acd303(92)=acd303(28)*acd303(92)
      acd303(93)=-acd303(85)*acd303(76)
      acd303(94)=acd303(32)*acd303(89)
      acd303(95)=2.0_ki*acd303(24)
      acd303(97)=-acd303(9)*acd303(95)
      acd303(98)=acd303(16)*acd303(60)
      acd303(100)=acd303(14)*acd303(49)
      acd303(102)=acd303(25)*acd303(86)
      acd303(93)=acd303(102)+acd303(100)+acd303(98)+acd303(97)+acd303(93)+acd30&
      &3(94)
      acd303(93)=acd303(54)*acd303(93)
      acd303(94)=acd303(85)*acd303(71)
      acd303(97)=acd303(32)*acd303(84)
      acd303(98)=-acd303(7)*acd303(95)
      acd303(100)=acd303(16)*acd303(59)
      acd303(102)=acd303(14)*acd303(47)
      acd303(103)=acd303(25)*acd303(81)
      acd303(94)=acd303(103)+acd303(102)+acd303(100)+acd303(98)+acd303(94)+acd3&
      &03(97)
      acd303(94)=acd303(53)*acd303(94)
      acd303(97)=-acd303(85)*acd303(80)
      acd303(98)=acd303(42)*acd303(89)
      acd303(100)=2.0_ki*acd303(38)
      acd303(102)=-acd303(9)*acd303(100)
      acd303(103)=acd303(36)*acd303(60)
      acd303(104)=acd303(35)*acd303(49)
      acd303(105)=acd303(39)*acd303(86)
      acd303(97)=acd303(105)+acd303(104)+acd303(103)+acd303(102)+acd303(97)+acd&
      &303(98)
      acd303(97)=acd303(48)*acd303(97)
      acd303(98)=acd303(85)*acd303(77)
      acd303(102)=acd303(42)*acd303(84)
      acd303(103)=-acd303(7)*acd303(100)
      acd303(104)=acd303(36)*acd303(59)
      acd303(105)=acd303(35)*acd303(47)
      acd303(106)=acd303(39)*acd303(81)
      acd303(98)=acd303(106)+acd303(105)+acd303(104)+acd303(103)+acd303(98)+acd&
      &303(102)
      acd303(98)=acd303(46)*acd303(98)
      acd303(102)=acd303(33)*acd303(42)
      acd303(103)=acd303(36)*acd303(17)
      acd303(104)=acd303(35)*acd303(15)
      acd303(105)=2.0_ki*acd303(3)
      acd303(106)=acd303(105)*acd303(38)
      acd303(107)=acd303(39)*acd303(26)
      acd303(102)=acd303(104)+acd303(103)+acd303(102)+acd303(106)-acd303(107)
      acd303(102)=acd303(102)*acd303(99)
      acd303(103)=acd303(32)*acd303(33)
      acd303(104)=acd303(16)*acd303(17)
      acd303(106)=acd303(14)*acd303(15)
      acd303(107)=acd303(105)*acd303(24)
      acd303(108)=acd303(25)*acd303(26)
      acd303(103)=-acd303(108)+acd303(104)+acd303(103)+acd303(106)+acd303(107)
      acd303(103)=acd303(103)*acd303(96)
      acd303(104)=-acd303(11)*acd303(10)
      acd303(106)=-acd303(8)*acd303(9)
      acd303(107)=-acd303(6)*acd303(7)
      acd303(104)=acd303(107)+acd303(106)+acd303(12)+acd303(104)
      acd303(101)=acd303(101)*acd303(105)
      acd303(101)=acd303(101)+2.0_ki*acd303(104)
      acd303(101)=acd303(1)*acd303(101)
      acd303(104)=-acd303(16)+acd303(58)
      acd303(104)=acd303(57)*acd303(104)
      acd303(95)=-acd303(11)*acd303(95)
      acd303(105)=acd303(14)*acd303(50)
      acd303(95)=acd303(105)+acd303(95)+acd303(104)
      acd303(95)=acd303(39)*acd303(95)
      acd303(104)=-acd303(36)+acd303(55)
      acd303(104)=acd303(57)*acd303(104)
      acd303(100)=-acd303(11)*acd303(100)
      acd303(105)=acd303(35)*acd303(50)
      acd303(100)=acd303(105)+acd303(100)+acd303(104)
      acd303(100)=acd303(25)*acd303(100)
      acd303(104)=-acd303(31)*acd303(99)
      acd303(105)=acd303(48)*acd303(88)
      acd303(106)=acd303(46)*acd303(83)
      acd303(104)=acd303(106)+acd303(105)+acd303(104)
      acd303(104)=acd303(41)*acd303(104)
      acd303(99)=-acd303(29)*acd303(99)
      acd303(105)=acd303(48)*acd303(87)
      acd303(106)=acd303(46)*acd303(82)
      acd303(99)=acd303(106)+acd303(105)+acd303(99)
      acd303(99)=acd303(40)*acd303(99)
      acd303(105)=-acd303(31)*acd303(96)
      acd303(106)=acd303(54)*acd303(88)
      acd303(107)=acd303(53)*acd303(83)
      acd303(105)=acd303(107)+acd303(106)+acd303(105)
      acd303(105)=acd303(30)*acd303(105)
      acd303(96)=-acd303(29)*acd303(96)
      acd303(106)=acd303(54)*acd303(87)
      acd303(107)=acd303(53)*acd303(82)
      acd303(96)=acd303(107)+acd303(106)+acd303(96)
      acd303(96)=acd303(27)*acd303(96)
      brack=acd303(90)+acd303(91)+acd303(92)+acd303(93)+acd303(94)+acd303(95)+a&
      &cd303(96)+acd303(97)+acd303(98)+acd303(99)+acd303(100)+acd303(101)+acd30&
      &3(102)+acd303(103)+acd303(104)+acd303(105)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd303h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(63) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=k1(iv3)
      acd303(3)=abb303(50)
      acd303(4)=k3(iv3)
      acd303(5)=k4(iv3)
      acd303(6)=spvak4k1(iv3)
      acd303(7)=abb303(22)
      acd303(8)=spvak4k3(iv3)
      acd303(9)=abb303(63)
      acd303(10)=spval6e7(iv3)
      acd303(11)=abb303(33)
      acd303(12)=d(iv1,iv3)
      acd303(13)=k1(iv2)
      acd303(14)=k3(iv2)
      acd303(15)=k4(iv2)
      acd303(16)=spvak4k1(iv2)
      acd303(17)=spvak4k3(iv2)
      acd303(18)=spval6e7(iv2)
      acd303(19)=d(iv2,iv3)
      acd303(20)=k1(iv1)
      acd303(21)=k3(iv1)
      acd303(22)=k4(iv1)
      acd303(23)=spvak4k1(iv1)
      acd303(24)=spvak4k3(iv1)
      acd303(25)=spval6e7(iv1)
      acd303(26)=e7(iv2)
      acd303(27)=spvak4l5(iv3)
      acd303(28)=abb303(61)
      acd303(29)=spval6l5(iv3)
      acd303(30)=abb303(59)
      acd303(31)=e7(iv3)
      acd303(32)=spvak4l5(iv2)
      acd303(33)=spval6l5(iv2)
      acd303(34)=e7(iv1)
      acd303(35)=spvak4l5(iv1)
      acd303(36)=spval6l5(iv1)
      acd303(37)=abb303(20)
      acd303(38)=abb303(9)
      acd303(39)=spvak1l5(iv3)
      acd303(40)=abb303(26)
      acd303(41)=spvak1l5(iv2)
      acd303(42)=abb303(65)
      acd303(43)=abb303(43)
      acd303(44)=spvak3l5(iv3)
      acd303(45)=spvak3l5(iv2)
      acd303(46)=spvak1l5(iv1)
      acd303(47)=spvak3l5(iv1)
      acd303(48)=acd303(17)*acd303(44)
      acd303(49)=-acd303(16)*acd303(39)
      acd303(50)=acd303(8)*acd303(45)
      acd303(51)=-acd303(6)*acd303(41)
      acd303(48)=acd303(51)+acd303(50)+acd303(48)+acd303(49)
      acd303(48)=acd303(40)*acd303(48)
      acd303(49)=acd303(8)*acd303(43)
      acd303(50)=acd303(6)*acd303(38)
      acd303(49)=acd303(49)+acd303(50)
      acd303(50)=acd303(33)*acd303(49)
      acd303(51)=acd303(8)*acd303(42)
      acd303(52)=acd303(6)*acd303(37)
      acd303(51)=acd303(51)+acd303(52)
      acd303(52)=acd303(32)*acd303(51)
      acd303(53)=acd303(17)*acd303(43)
      acd303(54)=acd303(16)*acd303(38)
      acd303(53)=acd303(53)+acd303(54)
      acd303(54)=acd303(29)*acd303(53)
      acd303(55)=acd303(17)*acd303(42)
      acd303(56)=acd303(16)*acd303(37)
      acd303(55)=acd303(55)+acd303(56)
      acd303(56)=acd303(27)*acd303(55)
      acd303(57)=-acd303(5)+acd303(2)-acd303(4)
      acd303(58)=acd303(33)*acd303(57)
      acd303(59)=-acd303(15)+acd303(13)-acd303(14)
      acd303(60)=acd303(29)*acd303(59)
      acd303(58)=acd303(58)+acd303(60)
      acd303(58)=acd303(30)*acd303(58)
      acd303(60)=acd303(32)*acd303(57)
      acd303(61)=acd303(27)*acd303(59)
      acd303(60)=acd303(60)+acd303(61)
      acd303(60)=acd303(28)*acd303(60)
      acd303(48)=acd303(60)+acd303(58)+acd303(48)+acd303(56)+acd303(54)+acd303(&
      &50)+acd303(52)
      acd303(48)=acd303(34)*acd303(48)
      acd303(50)=acd303(24)*acd303(45)
      acd303(52)=-acd303(23)*acd303(41)
      acd303(54)=acd303(17)*acd303(47)
      acd303(56)=-acd303(16)*acd303(46)
      acd303(50)=acd303(56)+acd303(54)+acd303(50)+acd303(52)
      acd303(50)=acd303(40)*acd303(50)
      acd303(52)=acd303(36)*acd303(53)
      acd303(53)=acd303(35)*acd303(55)
      acd303(54)=acd303(24)*acd303(43)
      acd303(55)=acd303(23)*acd303(38)
      acd303(54)=acd303(54)+acd303(55)
      acd303(55)=acd303(33)*acd303(54)
      acd303(56)=acd303(24)*acd303(42)
      acd303(58)=acd303(23)*acd303(37)
      acd303(56)=acd303(56)+acd303(58)
      acd303(58)=acd303(32)*acd303(56)
      acd303(60)=acd303(36)*acd303(59)
      acd303(61)=-acd303(22)+acd303(20)-acd303(21)
      acd303(62)=acd303(33)*acd303(61)
      acd303(60)=acd303(60)+acd303(62)
      acd303(60)=acd303(30)*acd303(60)
      acd303(62)=acd303(35)*acd303(59)
      acd303(63)=acd303(32)*acd303(61)
      acd303(62)=acd303(62)+acd303(63)
      acd303(62)=acd303(28)*acd303(62)
      acd303(50)=acd303(62)+acd303(60)+acd303(50)+acd303(58)+acd303(55)+acd303(&
      &52)+acd303(53)
      acd303(50)=acd303(31)*acd303(50)
      acd303(52)=acd303(24)*acd303(44)
      acd303(53)=-acd303(23)*acd303(39)
      acd303(55)=acd303(8)*acd303(47)
      acd303(58)=-acd303(6)*acd303(46)
      acd303(52)=acd303(58)+acd303(55)+acd303(52)+acd303(53)
      acd303(52)=acd303(40)*acd303(52)
      acd303(49)=acd303(36)*acd303(49)
      acd303(51)=acd303(35)*acd303(51)
      acd303(53)=acd303(29)*acd303(54)
      acd303(54)=acd303(27)*acd303(56)
      acd303(55)=acd303(36)*acd303(57)
      acd303(56)=acd303(29)*acd303(61)
      acd303(55)=acd303(55)+acd303(56)
      acd303(55)=acd303(30)*acd303(55)
      acd303(56)=acd303(35)*acd303(57)
      acd303(58)=acd303(27)*acd303(61)
      acd303(56)=acd303(56)+acd303(58)
      acd303(56)=acd303(28)*acd303(56)
      acd303(49)=acd303(56)+acd303(55)+acd303(52)+acd303(54)+acd303(53)+acd303(&
      &49)+acd303(51)
      acd303(49)=acd303(26)*acd303(49)
      acd303(51)=acd303(11)*acd303(25)
      acd303(52)=acd303(24)*acd303(9)
      acd303(53)=acd303(23)*acd303(7)
      acd303(51)=acd303(53)+acd303(52)+acd303(51)
      acd303(51)=acd303(19)*acd303(51)
      acd303(52)=acd303(11)*acd303(18)
      acd303(53)=acd303(17)*acd303(9)
      acd303(54)=acd303(16)*acd303(7)
      acd303(52)=acd303(54)+acd303(53)+acd303(52)
      acd303(52)=acd303(12)*acd303(52)
      acd303(53)=acd303(11)*acd303(10)
      acd303(54)=acd303(8)*acd303(9)
      acd303(55)=acd303(6)*acd303(7)
      acd303(53)=acd303(55)+acd303(54)+acd303(53)
      acd303(53)=acd303(1)*acd303(53)
      acd303(54)=-acd303(19)*acd303(61)
      acd303(55)=-acd303(12)*acd303(59)
      acd303(56)=-acd303(1)*acd303(57)
      acd303(54)=acd303(56)+acd303(54)+acd303(55)
      acd303(54)=acd303(3)*acd303(54)
      acd303(51)=acd303(54)+acd303(53)+acd303(52)+acd303(51)
      brack=acd303(48)+acd303(49)+acd303(50)+2.0_ki*acd303(51)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd303h1
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
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group12
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group12), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_303:
      coeffs%coeffs_303%c0 = derivative(czip)
      coeffs%coeffs_303%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_303%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_303%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_303%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_303%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_303%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_303%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_303%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_303%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_303%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_303%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_303%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_303%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_303%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_303%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_303%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_303%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_303%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_303%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_303%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_303%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_303%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_303%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_303%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_303%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_303%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_303%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_303%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_303%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_303%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_303%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_303%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_303%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_303%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_303:
   end subroutine reconstruct_d303
!---#] subroutine reconstruct_d303:
end module     p9_csbar_epnebbbarg_d303h1l1d
