module     p5_usbar_epnebbbarg_d85h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d85h0l1d.f90
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
   public :: derivative , reconstruct_d85
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd85h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd85
      complex(ki) :: brack
      acd85(1)=abb85(16)
      brack=acd85(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd85h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd85
      complex(ki) :: brack
      acd85(1)=k1(iv1)
      acd85(2)=abb85(74)
      acd85(3)=k2(iv1)
      acd85(4)=abb85(23)
      acd85(5)=k3(iv1)
      acd85(6)=abb85(62)
      acd85(7)=k4(iv1)
      acd85(8)=k7(iv1)
      acd85(9)=abb85(42)
      acd85(10)=e7(iv1)
      acd85(11)=abb85(32)
      acd85(12)=spvak4k3(iv1)
      acd85(13)=abb85(11)
      acd85(14)=spval5k2(iv1)
      acd85(15)=abb85(22)
      acd85(16)=spval6k2(iv1)
      acd85(17)=abb85(61)
      acd85(18)=spvak7k1(iv1)
      acd85(19)=abb85(19)
      acd85(20)=spvae7k1(iv1)
      acd85(21)=abb85(12)
      acd85(22)=acd85(7)+acd85(5)
      acd85(22)=acd85(6)*acd85(22)
      acd85(23)=-acd85(2)*acd85(1)
      acd85(24)=-acd85(4)*acd85(3)
      acd85(25)=-acd85(9)*acd85(8)
      acd85(26)=-acd85(11)*acd85(10)
      acd85(27)=-acd85(13)*acd85(12)
      acd85(28)=-acd85(15)*acd85(14)
      acd85(29)=-acd85(17)*acd85(16)
      acd85(30)=-acd85(19)*acd85(18)
      acd85(31)=-acd85(21)*acd85(20)
      brack=acd85(22)+acd85(23)+acd85(24)+acd85(25)+acd85(26)+acd85(27)+acd85(2&
      &8)+acd85(29)+acd85(30)+acd85(31)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd85h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(79) :: acd85
      complex(ki) :: brack
      acd85(1)=d(iv1,iv2)
      acd85(2)=abb85(14)
      acd85(3)=k1(iv1)
      acd85(4)=k2(iv2)
      acd85(5)=abb85(75)
      acd85(6)=k3(iv2)
      acd85(7)=abb85(67)
      acd85(8)=k4(iv2)
      acd85(9)=spvak4k3(iv2)
      acd85(10)=abb85(55)
      acd85(11)=spval5k1(iv2)
      acd85(12)=abb85(46)
      acd85(13)=spval5k2(iv2)
      acd85(14)=abb85(86)
      acd85(15)=spval6k1(iv2)
      acd85(16)=abb85(39)
      acd85(17)=spval6k2(iv2)
      acd85(18)=abb85(88)
      acd85(19)=k1(iv2)
      acd85(20)=k2(iv1)
      acd85(21)=k3(iv1)
      acd85(22)=k4(iv1)
      acd85(23)=spvak4k3(iv1)
      acd85(24)=spval5k1(iv1)
      acd85(25)=spval5k2(iv1)
      acd85(26)=spval6k1(iv1)
      acd85(27)=spval6k2(iv1)
      acd85(28)=k7(iv2)
      acd85(29)=abb85(70)
      acd85(30)=e7(iv2)
      acd85(31)=abb85(28)
      acd85(32)=abb85(92)
      acd85(33)=abb85(93)
      acd85(34)=spvak7k1(iv2)
      acd85(35)=abb85(60)
      acd85(36)=spvae7k1(iv2)
      acd85(37)=abb85(18)
      acd85(38)=k7(iv1)
      acd85(39)=e7(iv1)
      acd85(40)=spvak7k1(iv1)
      acd85(41)=spvae7k1(iv1)
      acd85(42)=abb85(66)
      acd85(43)=abb85(34)
      acd85(44)=abb85(52)
      acd85(45)=abb85(56)
      acd85(46)=abb85(15)
      acd85(47)=abb85(45)
      acd85(48)=abb85(54)
      acd85(49)=abb85(35)
      acd85(50)=abb85(83)
      acd85(51)=abb85(40)
      acd85(52)=spvak2k3(iv2)
      acd85(53)=abb85(37)
      acd85(54)=spvak2k3(iv1)
      acd85(55)=abb85(57)
      acd85(56)=abb85(65)
      acd85(57)=abb85(29)
      acd85(58)=abb85(24)
      acd85(59)=abb85(98)
      acd85(60)=abb85(25)
      acd85(61)=abb85(99)
      acd85(62)=abb85(96)
      acd85(63)=acd85(6)+acd85(8)
      acd85(64)=acd85(42)*acd85(63)
      acd85(65)=acd85(53)*acd85(52)
      acd85(66)=acd85(15)*acd85(49)
      acd85(67)=acd85(11)*acd85(47)
      acd85(68)=acd85(34)*acd85(51)
      acd85(69)=acd85(17)*acd85(50)
      acd85(70)=acd85(13)*acd85(48)
      acd85(71)=acd85(9)*acd85(46)
      acd85(72)=acd85(4)*acd85(31)
      acd85(73)=acd85(28)*acd85(44)
      acd85(64)=acd85(73)+acd85(72)+acd85(71)+acd85(70)+acd85(69)+acd85(68)+acd&
      &85(67)+acd85(65)+acd85(66)+acd85(64)
      acd85(64)=acd85(39)*acd85(64)
      acd85(65)=acd85(21)+acd85(22)
      acd85(66)=acd85(42)*acd85(65)
      acd85(67)=acd85(53)*acd85(54)
      acd85(68)=acd85(26)*acd85(49)
      acd85(69)=acd85(24)*acd85(47)
      acd85(70)=acd85(40)*acd85(51)
      acd85(71)=acd85(27)*acd85(50)
      acd85(72)=acd85(25)*acd85(48)
      acd85(73)=acd85(23)*acd85(46)
      acd85(74)=acd85(20)*acd85(31)
      acd85(75)=acd85(38)*acd85(44)
      acd85(66)=acd85(75)+acd85(74)+acd85(73)+acd85(72)+acd85(71)+acd85(70)+acd&
      &85(69)+acd85(67)+acd85(68)+acd85(66)
      acd85(66)=acd85(30)*acd85(66)
      acd85(67)=acd85(16)*acd85(26)
      acd85(68)=acd85(12)*acd85(24)
      acd85(67)=acd85(67)+acd85(68)
      acd85(68)=acd85(27)*acd85(18)
      acd85(69)=acd85(25)*acd85(14)
      acd85(68)=acd85(68)+acd85(69)
      acd85(69)=acd85(23)*acd85(45)
      acd85(70)=acd85(20)*acd85(29)
      acd85(71)=-acd85(7)*acd85(65)
      acd85(69)=acd85(71)+acd85(70)+acd85(69)-acd85(68)-acd85(67)
      acd85(69)=acd85(28)*acd85(69)
      acd85(70)=acd85(41)*acd85(62)
      acd85(71)=acd85(40)*acd85(61)
      acd85(72)=acd85(23)*acd85(56)
      acd85(73)=acd85(20)*acd85(33)
      acd85(70)=acd85(73)+acd85(72)+acd85(70)+acd85(71)
      acd85(70)=acd85(17)*acd85(70)
      acd85(71)=acd85(41)*acd85(60)
      acd85(72)=acd85(40)*acd85(59)
      acd85(73)=acd85(23)*acd85(55)
      acd85(74)=acd85(20)*acd85(32)
      acd85(71)=acd85(74)+acd85(73)+acd85(71)+acd85(72)
      acd85(71)=acd85(13)*acd85(71)
      acd85(72)=acd85(41)*acd85(58)
      acd85(73)=acd85(40)*acd85(57)
      acd85(74)=acd85(27)*acd85(56)
      acd85(75)=acd85(25)*acd85(55)
      acd85(72)=acd85(75)+acd85(74)+acd85(72)+acd85(73)
      acd85(72)=acd85(9)*acd85(72)
      acd85(73)=acd85(40)*acd85(35)
      acd85(74)=acd85(41)*acd85(37)
      acd85(75)=acd85(27)*acd85(33)
      acd85(76)=acd85(25)*acd85(32)
      acd85(74)=acd85(76)+acd85(75)+acd85(74)+acd85(73)
      acd85(74)=acd85(4)*acd85(74)
      acd85(75)=acd85(23)*acd85(10)
      acd85(76)=acd85(20)*acd85(5)
      acd85(67)=acd85(76)+acd85(75)-acd85(68)+acd85(67)
      acd85(67)=acd85(19)*acd85(67)
      acd85(68)=acd85(63)*acd85(7)
      acd85(75)=acd85(17)*acd85(18)
      acd85(76)=acd85(13)*acd85(14)
      acd85(68)=acd85(68)+acd85(75)+acd85(76)
      acd85(75)=acd85(16)*acd85(15)
      acd85(76)=acd85(12)*acd85(11)
      acd85(75)=acd85(75)+acd85(76)
      acd85(76)=acd85(9)*acd85(10)
      acd85(77)=acd85(4)*acd85(5)
      acd85(76)=acd85(77)+acd85(76)+acd85(75)-acd85(68)
      acd85(76)=acd85(3)*acd85(76)
      acd85(77)=acd85(9)*acd85(45)
      acd85(78)=acd85(4)*acd85(29)
      acd85(68)=acd85(78)+acd85(77)-acd85(75)-acd85(68)
      acd85(68)=acd85(38)*acd85(68)
      acd85(75)=acd85(34)*acd85(35)
      acd85(77)=acd85(36)*acd85(43)
      acd85(78)=-acd85(7)*acd85(19)
      acd85(77)=acd85(77)+acd85(78)-acd85(75)
      acd85(65)=acd85(65)*acd85(77)
      acd85(77)=acd85(41)*acd85(43)
      acd85(73)=-acd85(73)+acd85(77)
      acd85(63)=acd85(63)*acd85(73)
      acd85(73)=acd85(36)*acd85(62)
      acd85(77)=acd85(34)*acd85(61)
      acd85(73)=acd85(73)+acd85(77)
      acd85(73)=acd85(27)*acd85(73)
      acd85(77)=acd85(36)*acd85(60)
      acd85(78)=acd85(34)*acd85(59)
      acd85(77)=acd85(77)+acd85(78)
      acd85(77)=acd85(25)*acd85(77)
      acd85(78)=acd85(36)*acd85(58)
      acd85(79)=acd85(34)*acd85(57)
      acd85(78)=acd85(78)+acd85(79)
      acd85(78)=acd85(23)*acd85(78)
      acd85(79)=acd85(36)*acd85(37)
      acd85(75)=acd85(79)+acd85(75)
      acd85(75)=acd85(20)*acd85(75)
      acd85(79)=acd85(1)*acd85(2)
      brack=acd85(63)+acd85(64)+acd85(65)+acd85(66)+acd85(67)+acd85(68)+acd85(6&
      &9)+acd85(70)+acd85(71)+acd85(72)+acd85(73)+acd85(74)+acd85(75)+acd85(76)&
      &+acd85(77)+acd85(78)+2.0_ki*acd85(79)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd85h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(121) :: acd85
      complex(ki) :: brack
      acd85(1)=d(iv1,iv2)
      acd85(2)=k1(iv3)
      acd85(3)=abb85(49)
      acd85(4)=k2(iv3)
      acd85(5)=k3(iv3)
      acd85(6)=abb85(38)
      acd85(7)=k4(iv3)
      acd85(8)=k7(iv3)
      acd85(9)=abb85(31)
      acd85(10)=e7(iv3)
      acd85(11)=abb85(8)
      acd85(12)=spvak4k3(iv3)
      acd85(13)=abb85(21)
      acd85(14)=spval5k1(iv3)
      acd85(15)=abb85(73)
      acd85(16)=spval5k2(iv3)
      acd85(17)=abb85(84)
      acd85(18)=spval6k1(iv3)
      acd85(19)=abb85(71)
      acd85(20)=spval6k2(iv3)
      acd85(21)=abb85(87)
      acd85(22)=spvak7k1(iv3)
      acd85(23)=abb85(47)
      acd85(24)=spvae7k1(iv3)
      acd85(25)=abb85(9)
      acd85(26)=d(iv1,iv3)
      acd85(27)=k1(iv2)
      acd85(28)=k2(iv2)
      acd85(29)=k3(iv2)
      acd85(30)=k4(iv2)
      acd85(31)=k7(iv2)
      acd85(32)=e7(iv2)
      acd85(33)=spvak4k3(iv2)
      acd85(34)=spval5k1(iv2)
      acd85(35)=spval5k2(iv2)
      acd85(36)=spval6k1(iv2)
      acd85(37)=spval6k2(iv2)
      acd85(38)=spvak7k1(iv2)
      acd85(39)=spvae7k1(iv2)
      acd85(40)=d(iv2,iv3)
      acd85(41)=k1(iv1)
      acd85(42)=k2(iv1)
      acd85(43)=k3(iv1)
      acd85(44)=k4(iv1)
      acd85(45)=k7(iv1)
      acd85(46)=e7(iv1)
      acd85(47)=spvak4k3(iv1)
      acd85(48)=spval5k1(iv1)
      acd85(49)=spval5k2(iv1)
      acd85(50)=spval6k1(iv1)
      acd85(51)=spval6k2(iv1)
      acd85(52)=spvak7k1(iv1)
      acd85(53)=spvae7k1(iv1)
      acd85(54)=abb85(72)
      acd85(55)=abb85(77)
      acd85(56)=abb85(64)
      acd85(57)=abb85(53)
      acd85(58)=abb85(104)
      acd85(59)=abb85(51)
      acd85(60)=abb85(95)
      acd85(61)=spvak2k3(iv3)
      acd85(62)=abb85(30)
      acd85(63)=spvak4k1(iv3)
      acd85(64)=abb85(82)
      acd85(65)=spvak2k3(iv2)
      acd85(66)=spvak4k1(iv2)
      acd85(67)=abb85(94)
      acd85(68)=abb85(97)
      acd85(69)=spvak2k3(iv1)
      acd85(70)=spvak4k1(iv1)
      acd85(71)=abb85(59)
      acd85(72)=abb85(10)
      acd85(73)=abb85(68)
      acd85(74)=abb85(13)
      acd85(75)=abb85(69)
      acd85(76)=abb85(63)
      acd85(77)=abb85(20)
      acd85(78)=abb85(44)
      acd85(79)=spvak2k4(iv3)
      acd85(80)=abb85(100)
      acd85(81)=spvak3k1(iv3)
      acd85(82)=abb85(36)
      acd85(83)=spvak2k4(iv2)
      acd85(84)=spvak3k1(iv2)
      acd85(85)=abb85(48)
      acd85(86)=spvak2k1(iv3)
      acd85(87)=spvak2k1(iv2)
      acd85(88)=abb85(41)
      acd85(89)=spvak2k4(iv1)
      acd85(90)=spvak3k1(iv1)
      acd85(91)=spvak2k1(iv1)
      acd85(92)=abb85(79)
      acd85(93)=abb85(78)
      acd85(94)=abb85(90)
      acd85(95)=abb85(80)
      acd85(96)=acd85(82)*acd85(81)
      acd85(97)=acd85(80)*acd85(79)
      acd85(98)=acd85(22)*acd85(76)
      acd85(99)=acd85(8)*acd85(71)
      acd85(100)=acd85(63)*acd85(78)
      acd85(101)=acd85(18)*acd85(74)
      acd85(102)=acd85(14)*acd85(72)
      acd85(103)=acd85(61)*acd85(77)
      acd85(104)=acd85(20)*acd85(75)
      acd85(105)=acd85(16)*acd85(73)
      acd85(106)=acd85(4)*acd85(56)
      acd85(96)=acd85(96)+acd85(104)+acd85(105)+acd85(101)+acd85(102)+acd85(103&
      &)+acd85(106)+acd85(97)+acd85(98)+acd85(99)+acd85(100)
      acd85(97)=-acd85(33)*acd85(96)
      acd85(98)=acd85(82)*acd85(84)
      acd85(99)=acd85(80)*acd85(83)
      acd85(100)=acd85(38)*acd85(76)
      acd85(101)=acd85(31)*acd85(71)
      acd85(102)=acd85(66)*acd85(78)
      acd85(103)=acd85(36)*acd85(74)
      acd85(104)=acd85(34)*acd85(72)
      acd85(105)=acd85(65)*acd85(77)
      acd85(106)=acd85(37)*acd85(75)
      acd85(107)=acd85(35)*acd85(73)
      acd85(108)=acd85(28)*acd85(56)
      acd85(98)=acd85(98)+acd85(106)+acd85(107)+acd85(103)+acd85(104)+acd85(105&
      &)+acd85(108)+acd85(99)+acd85(100)+acd85(101)+acd85(102)
      acd85(99)=-acd85(12)*acd85(98)
      acd85(100)=acd85(29)+acd85(30)
      acd85(101)=acd85(100)-acd85(28)
      acd85(102)=-acd85(18)*acd85(101)
      acd85(103)=acd85(5)+acd85(7)
      acd85(104)=acd85(103)-acd85(4)
      acd85(105)=-acd85(36)*acd85(104)
      acd85(106)=-acd85(37)*acd85(86)
      acd85(107)=-acd85(20)*acd85(87)
      acd85(102)=acd85(107)+acd85(106)+acd85(105)+acd85(102)
      acd85(102)=acd85(59)*acd85(102)
      acd85(105)=-acd85(14)*acd85(101)
      acd85(106)=-acd85(34)*acd85(104)
      acd85(107)=-acd85(35)*acd85(86)
      acd85(108)=-acd85(16)*acd85(87)
      acd85(105)=acd85(108)+acd85(107)+acd85(106)+acd85(105)
      acd85(105)=acd85(57)*acd85(105)
      acd85(106)=acd85(64)*acd85(66)
      acd85(107)=acd85(62)*acd85(65)
      acd85(106)=acd85(106)+acd85(107)
      acd85(107)=-acd85(37)*acd85(60)
      acd85(108)=-acd85(35)*acd85(58)
      acd85(107)=acd85(108)+acd85(107)-acd85(106)
      acd85(107)=acd85(4)*acd85(107)
      acd85(108)=-acd85(37)*acd85(88)
      acd85(109)=-acd85(35)*acd85(85)
      acd85(108)=acd85(109)+acd85(108)
      acd85(108)=acd85(61)*acd85(108)
      acd85(109)=acd85(66)*acd85(103)
      acd85(110)=acd85(63)*acd85(100)
      acd85(109)=acd85(110)+acd85(109)
      acd85(109)=acd85(64)*acd85(109)
      acd85(110)=acd85(65)*acd85(103)
      acd85(111)=acd85(61)*acd85(100)
      acd85(110)=acd85(110)+acd85(111)
      acd85(110)=acd85(62)*acd85(110)
      acd85(111)=acd85(64)*acd85(63)
      acd85(112)=acd85(62)*acd85(61)
      acd85(111)=acd85(111)+acd85(112)
      acd85(112)=-acd85(28)*acd85(111)
      acd85(113)=-acd85(65)*acd85(88)
      acd85(114)=-acd85(28)*acd85(60)
      acd85(113)=acd85(113)+acd85(114)
      acd85(113)=acd85(20)*acd85(113)
      acd85(114)=-acd85(65)*acd85(85)
      acd85(115)=-acd85(28)*acd85(58)
      acd85(114)=acd85(114)+acd85(115)
      acd85(114)=acd85(16)*acd85(114)
      acd85(115)=2.0_ki*acd85(11)
      acd85(115)=-acd85(40)*acd85(115)
      acd85(97)=acd85(99)+acd85(97)+acd85(105)+acd85(102)+acd85(107)+acd85(114)&
      &+acd85(113)+acd85(112)+acd85(110)+acd85(115)+acd85(109)+acd85(108)
      acd85(97)=acd85(46)*acd85(97)
      acd85(96)=-acd85(47)*acd85(96)
      acd85(99)=acd85(82)*acd85(90)
      acd85(102)=acd85(80)*acd85(89)
      acd85(105)=acd85(52)*acd85(76)
      acd85(107)=acd85(45)*acd85(71)
      acd85(108)=acd85(70)*acd85(78)
      acd85(109)=acd85(50)*acd85(74)
      acd85(110)=acd85(48)*acd85(72)
      acd85(112)=acd85(69)*acd85(77)
      acd85(113)=acd85(51)*acd85(75)
      acd85(114)=acd85(49)*acd85(73)
      acd85(115)=acd85(42)*acd85(56)
      acd85(99)=acd85(110)+acd85(112)+acd85(113)+acd85(114)+acd85(105)+acd85(10&
      &7)+acd85(108)+acd85(109)+acd85(115)+acd85(99)+acd85(102)
      acd85(102)=-acd85(12)*acd85(99)
      acd85(105)=acd85(64)*acd85(70)
      acd85(107)=acd85(62)*acd85(69)
      acd85(108)=acd85(51)*acd85(60)
      acd85(109)=acd85(49)*acd85(58)
      acd85(105)=acd85(105)+acd85(107)+acd85(108)+acd85(109)
      acd85(107)=-acd85(4)*acd85(105)
      acd85(108)=acd85(43)+acd85(44)
      acd85(109)=acd85(108)-acd85(42)
      acd85(110)=-acd85(18)*acd85(109)
      acd85(112)=-acd85(50)*acd85(104)
      acd85(113)=-acd85(51)*acd85(86)
      acd85(114)=-acd85(20)*acd85(91)
      acd85(110)=acd85(114)+acd85(113)+acd85(112)+acd85(110)
      acd85(110)=acd85(59)*acd85(110)
      acd85(112)=-acd85(14)*acd85(109)
      acd85(104)=-acd85(48)*acd85(104)
      acd85(113)=-acd85(49)*acd85(86)
      acd85(114)=-acd85(16)*acd85(91)
      acd85(104)=acd85(114)+acd85(113)+acd85(104)+acd85(112)
      acd85(104)=acd85(57)*acd85(104)
      acd85(112)=acd85(51)*acd85(88)
      acd85(113)=acd85(49)*acd85(85)
      acd85(112)=acd85(112)+acd85(113)
      acd85(113)=-acd85(61)*acd85(112)
      acd85(114)=acd85(70)*acd85(103)
      acd85(115)=acd85(63)*acd85(108)
      acd85(114)=acd85(115)+acd85(114)
      acd85(114)=acd85(64)*acd85(114)
      acd85(115)=acd85(69)*acd85(103)
      acd85(116)=acd85(61)*acd85(108)
      acd85(115)=acd85(115)+acd85(116)
      acd85(115)=acd85(62)*acd85(115)
      acd85(111)=-acd85(42)*acd85(111)
      acd85(116)=acd85(69)*acd85(88)
      acd85(117)=acd85(42)*acd85(60)
      acd85(116)=acd85(116)+acd85(117)
      acd85(117)=-acd85(20)*acd85(116)
      acd85(118)=acd85(69)*acd85(85)
      acd85(119)=acd85(42)*acd85(58)
      acd85(118)=acd85(118)+acd85(119)
      acd85(119)=-acd85(16)*acd85(118)
      acd85(120)=2.0_ki*acd85(26)
      acd85(121)=-acd85(11)*acd85(120)
      acd85(96)=acd85(102)+acd85(96)+acd85(104)+acd85(110)+acd85(107)+acd85(119&
      &)+acd85(117)+acd85(111)+acd85(115)+acd85(121)+acd85(114)+acd85(113)
      acd85(96)=acd85(32)*acd85(96)
      acd85(98)=-acd85(47)*acd85(98)
      acd85(99)=-acd85(33)*acd85(99)
      acd85(102)=-acd85(28)*acd85(105)
      acd85(104)=-acd85(36)*acd85(109)
      acd85(105)=-acd85(50)*acd85(101)
      acd85(107)=-acd85(51)*acd85(87)
      acd85(110)=-acd85(37)*acd85(91)
      acd85(104)=acd85(110)+acd85(107)+acd85(105)+acd85(104)
      acd85(104)=acd85(59)*acd85(104)
      acd85(105)=-acd85(34)*acd85(109)
      acd85(101)=-acd85(48)*acd85(101)
      acd85(107)=-acd85(49)*acd85(87)
      acd85(109)=-acd85(35)*acd85(91)
      acd85(101)=acd85(109)+acd85(107)+acd85(101)+acd85(105)
      acd85(101)=acd85(57)*acd85(101)
      acd85(105)=-acd85(65)*acd85(112)
      acd85(107)=acd85(70)*acd85(100)
      acd85(109)=acd85(66)*acd85(108)
      acd85(107)=acd85(109)+acd85(107)
      acd85(107)=acd85(64)*acd85(107)
      acd85(109)=acd85(69)*acd85(100)
      acd85(110)=acd85(65)*acd85(108)
      acd85(109)=acd85(109)+acd85(110)
      acd85(109)=acd85(62)*acd85(109)
      acd85(106)=-acd85(42)*acd85(106)
      acd85(110)=-acd85(37)*acd85(116)
      acd85(111)=-acd85(35)*acd85(118)
      acd85(112)=2.0_ki*acd85(1)
      acd85(113)=-acd85(11)*acd85(112)
      acd85(98)=acd85(99)+acd85(98)+acd85(101)+acd85(104)+acd85(102)+acd85(111)&
      &+acd85(110)+acd85(106)+acd85(109)+acd85(113)+acd85(107)+acd85(105)
      acd85(98)=acd85(10)*acd85(98)
      acd85(99)=acd85(42)-acd85(41)
      acd85(99)=acd85(3)*acd85(99)
      acd85(101)=-acd85(6)*acd85(108)
      acd85(102)=-acd85(52)*acd85(23)
      acd85(104)=-acd85(45)*acd85(9)
      acd85(105)=-acd85(53)*acd85(25)
      acd85(106)=acd85(50)*acd85(19)
      acd85(107)=acd85(48)*acd85(15)
      acd85(108)=-acd85(51)*acd85(21)
      acd85(109)=-acd85(49)*acd85(17)
      acd85(99)=acd85(109)+acd85(108)+acd85(107)+acd85(106)+acd85(105)+acd85(10&
      &4)+acd85(102)+acd85(101)+acd85(99)
      acd85(99)=acd85(40)*acd85(99)
      acd85(100)=-acd85(6)*acd85(100)
      acd85(101)=-acd85(3)*acd85(27)
      acd85(102)=-acd85(38)*acd85(23)
      acd85(104)=-acd85(31)*acd85(9)
      acd85(105)=-acd85(39)*acd85(25)
      acd85(106)=acd85(36)*acd85(19)
      acd85(107)=acd85(34)*acd85(15)
      acd85(100)=acd85(107)+acd85(106)+acd85(105)+acd85(104)+acd85(101)+acd85(1&
      &02)+acd85(100)
      acd85(100)=acd85(26)*acd85(100)
      acd85(101)=-acd85(6)*acd85(103)
      acd85(102)=-acd85(3)*acd85(2)
      acd85(103)=-acd85(22)*acd85(23)
      acd85(104)=-acd85(8)*acd85(9)
      acd85(105)=-acd85(24)*acd85(25)
      acd85(106)=acd85(18)*acd85(19)
      acd85(107)=acd85(14)*acd85(15)
      acd85(101)=acd85(107)+acd85(106)+acd85(105)+acd85(104)+acd85(102)+acd85(1&
      &03)+acd85(101)
      acd85(101)=acd85(1)*acd85(101)
      acd85(99)=acd85(101)+acd85(100)+acd85(99)
      acd85(100)=acd85(22)*acd85(94)
      acd85(101)=acd85(24)*acd85(95)
      acd85(102)=acd85(8)+acd85(2)
      acd85(103)=acd85(102)*acd85(55)
      acd85(100)=-acd85(103)+acd85(100)+acd85(101)
      acd85(101)=-acd85(37)*acd85(100)
      acd85(103)=acd85(22)*acd85(92)
      acd85(104)=acd85(24)*acd85(93)
      acd85(102)=acd85(102)*acd85(54)
      acd85(102)=-acd85(102)+acd85(103)+acd85(104)
      acd85(103)=-acd85(35)*acd85(102)
      acd85(104)=acd85(38)*acd85(94)
      acd85(105)=acd85(39)*acd85(95)
      acd85(106)=acd85(31)+acd85(27)
      acd85(107)=acd85(106)*acd85(55)
      acd85(104)=-acd85(107)+acd85(104)+acd85(105)
      acd85(105)=-acd85(20)*acd85(104)
      acd85(107)=acd85(38)*acd85(92)
      acd85(108)=acd85(39)*acd85(93)
      acd85(106)=acd85(106)*acd85(54)
      acd85(106)=-acd85(106)+acd85(107)+acd85(108)
      acd85(107)=-acd85(16)*acd85(106)
      acd85(108)=2.0_ki*acd85(13)
      acd85(108)=-acd85(40)*acd85(108)
      acd85(101)=acd85(107)+acd85(105)+acd85(103)+acd85(108)+acd85(101)
      acd85(101)=acd85(47)*acd85(101)
      acd85(100)=-acd85(51)*acd85(100)
      acd85(102)=-acd85(49)*acd85(102)
      acd85(103)=acd85(52)*acd85(94)
      acd85(105)=acd85(53)*acd85(95)
      acd85(107)=acd85(45)+acd85(41)
      acd85(108)=acd85(107)*acd85(55)
      acd85(103)=-acd85(108)+acd85(103)+acd85(105)
      acd85(105)=-acd85(20)*acd85(103)
      acd85(108)=acd85(52)*acd85(92)
      acd85(109)=acd85(53)*acd85(93)
      acd85(107)=acd85(107)*acd85(54)
      acd85(107)=-acd85(107)+acd85(108)+acd85(109)
      acd85(108)=-acd85(16)*acd85(107)
      acd85(109)=-acd85(13)*acd85(120)
      acd85(100)=acd85(108)+acd85(105)+acd85(102)+acd85(109)+acd85(100)
      acd85(100)=acd85(33)*acd85(100)
      acd85(102)=-acd85(51)*acd85(104)
      acd85(104)=-acd85(49)*acd85(106)
      acd85(103)=-acd85(37)*acd85(103)
      acd85(105)=-acd85(35)*acd85(107)
      acd85(106)=-acd85(13)*acd85(112)
      acd85(102)=acd85(105)+acd85(103)+acd85(104)+acd85(106)+acd85(102)
      acd85(102)=acd85(12)*acd85(102)
      acd85(103)=-acd85(37)*acd85(68)
      acd85(104)=-acd85(35)*acd85(67)
      acd85(103)=acd85(104)+acd85(103)
      acd85(103)=acd85(53)*acd85(103)
      acd85(104)=acd85(51)*acd85(68)
      acd85(105)=acd85(49)*acd85(67)
      acd85(104)=acd85(104)+acd85(105)
      acd85(105)=-acd85(39)*acd85(104)
      acd85(106)=acd85(3)*acd85(112)
      acd85(103)=acd85(106)+acd85(105)+acd85(103)
      acd85(103)=acd85(4)*acd85(103)
      acd85(105)=-acd85(21)*acd85(120)
      acd85(106)=acd85(42)*acd85(24)
      acd85(107)=-acd85(68)*acd85(106)
      acd85(105)=acd85(105)+acd85(107)
      acd85(105)=acd85(37)*acd85(105)
      acd85(107)=-acd85(17)*acd85(120)
      acd85(106)=-acd85(67)*acd85(106)
      acd85(106)=acd85(107)+acd85(106)
      acd85(106)=acd85(35)*acd85(106)
      acd85(104)=-acd85(24)*acd85(104)
      acd85(107)=acd85(3)*acd85(120)
      acd85(104)=acd85(107)+acd85(104)
      acd85(104)=acd85(28)*acd85(104)
      acd85(107)=acd85(42)*acd85(39)
      acd85(108)=acd85(28)*acd85(53)
      acd85(107)=acd85(107)+acd85(108)
      acd85(108)=-acd85(68)*acd85(107)
      acd85(109)=-acd85(21)*acd85(112)
      acd85(108)=acd85(109)+acd85(108)
      acd85(108)=acd85(20)*acd85(108)
      acd85(107)=-acd85(67)*acd85(107)
      acd85(109)=-acd85(17)*acd85(112)
      acd85(107)=acd85(109)+acd85(107)
      acd85(107)=acd85(16)*acd85(107)
      brack=acd85(96)+acd85(97)+acd85(98)+2.0_ki*acd85(99)+acd85(100)+acd85(101&
      &)+acd85(102)+acd85(103)+acd85(104)+acd85(105)+acd85(106)+acd85(107)+acd8&
      &5(108)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd85h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd85
      complex(ki) :: brack
      acd85(1)=d(iv1,iv2)
      acd85(2)=d(iv3,iv4)
      acd85(3)=abb85(58)
      acd85(4)=e7(iv3)
      acd85(5)=spvak2k3(iv4)
      acd85(6)=abb85(100)
      acd85(7)=spvak4k1(iv4)
      acd85(8)=abb85(36)
      acd85(9)=spvak4k3(iv4)
      acd85(10)=abb85(26)
      acd85(11)=spval5k1(iv4)
      acd85(12)=abb85(43)
      acd85(13)=spval5k2(iv4)
      acd85(14)=abb85(89)
      acd85(15)=spval6k1(iv4)
      acd85(16)=abb85(33)
      acd85(17)=spval6k2(iv4)
      acd85(18)=abb85(91)
      acd85(19)=e7(iv4)
      acd85(20)=spvak2k3(iv3)
      acd85(21)=spvak4k1(iv3)
      acd85(22)=spvak4k3(iv3)
      acd85(23)=spval5k1(iv3)
      acd85(24)=spval5k2(iv3)
      acd85(25)=spval6k1(iv3)
      acd85(26)=spval6k2(iv3)
      acd85(27)=abb85(17)
      acd85(28)=abb85(7)
      acd85(29)=spvae7k1(iv4)
      acd85(30)=abb85(81)
      acd85(31)=spvae7k1(iv3)
      acd85(32)=abb85(85)
      acd85(33)=d(iv1,iv3)
      acd85(34)=d(iv2,iv4)
      acd85(35)=e7(iv2)
      acd85(36)=spvak2k3(iv2)
      acd85(37)=spvak4k1(iv2)
      acd85(38)=spvak4k3(iv2)
      acd85(39)=spval5k1(iv2)
      acd85(40)=spval5k2(iv2)
      acd85(41)=spval6k1(iv2)
      acd85(42)=spval6k2(iv2)
      acd85(43)=spvae7k1(iv2)
      acd85(44)=d(iv1,iv4)
      acd85(45)=d(iv2,iv3)
      acd85(46)=e7(iv1)
      acd85(47)=spvak2k3(iv1)
      acd85(48)=spvak4k1(iv1)
      acd85(49)=spvak4k3(iv1)
      acd85(50)=spval5k1(iv1)
      acd85(51)=spval5k2(iv1)
      acd85(52)=spval6k1(iv1)
      acd85(53)=spval6k2(iv1)
      acd85(54)=spvae7k1(iv1)
      acd85(55)=spvak2k1(iv4)
      acd85(56)=abb85(5)
      acd85(57)=spvak2k1(iv3)
      acd85(58)=abb85(6)
      acd85(59)=spvak2k1(iv2)
      acd85(60)=spvak2k1(iv1)
      acd85(61)=acd85(17)*acd85(32)
      acd85(62)=acd85(13)*acd85(30)
      acd85(61)=acd85(61)+acd85(62)
      acd85(62)=acd85(54)*acd85(61)
      acd85(63)=acd85(53)*acd85(32)
      acd85(64)=acd85(51)*acd85(30)
      acd85(63)=acd85(63)+acd85(64)
      acd85(64)=acd85(29)*acd85(63)
      acd85(65)=acd85(17)*acd85(28)
      acd85(66)=acd85(13)*acd85(27)
      acd85(65)=acd85(65)+acd85(66)
      acd85(66)=acd85(49)*acd85(65)
      acd85(67)=acd85(53)*acd85(28)
      acd85(68)=acd85(51)*acd85(27)
      acd85(67)=acd85(67)+acd85(68)
      acd85(68)=acd85(9)*acd85(67)
      acd85(62)=acd85(68)+acd85(66)+acd85(64)+acd85(62)
      acd85(62)=acd85(45)*acd85(62)
      acd85(64)=acd85(26)*acd85(32)
      acd85(66)=acd85(24)*acd85(30)
      acd85(64)=acd85(64)+acd85(66)
      acd85(66)=acd85(43)*acd85(64)
      acd85(68)=acd85(42)*acd85(32)
      acd85(69)=acd85(40)*acd85(30)
      acd85(68)=acd85(68)+acd85(69)
      acd85(69)=acd85(31)*acd85(68)
      acd85(70)=acd85(26)*acd85(28)
      acd85(71)=acd85(24)*acd85(27)
      acd85(70)=acd85(70)+acd85(71)
      acd85(71)=acd85(38)*acd85(70)
      acd85(72)=acd85(42)*acd85(28)
      acd85(73)=acd85(40)*acd85(27)
      acd85(72)=acd85(72)+acd85(73)
      acd85(73)=acd85(22)*acd85(72)
      acd85(74)=4.0_ki*acd85(3)
      acd85(75)=acd85(45)*acd85(74)
      acd85(66)=acd85(75)+acd85(73)+acd85(71)+acd85(69)+acd85(66)
      acd85(66)=acd85(44)*acd85(66)
      acd85(69)=acd85(54)*acd85(64)
      acd85(71)=acd85(31)*acd85(63)
      acd85(73)=acd85(49)*acd85(70)
      acd85(75)=acd85(22)*acd85(67)
      acd85(69)=acd85(75)+acd85(73)+acd85(71)+acd85(69)
      acd85(69)=acd85(34)*acd85(69)
      acd85(71)=acd85(43)*acd85(61)
      acd85(73)=acd85(29)*acd85(68)
      acd85(75)=acd85(38)*acd85(65)
      acd85(76)=acd85(9)*acd85(72)
      acd85(77)=acd85(34)*acd85(74)
      acd85(71)=acd85(77)+acd85(76)+acd85(75)+acd85(73)+acd85(71)
      acd85(71)=acd85(33)*acd85(71)
      acd85(68)=acd85(54)*acd85(68)
      acd85(63)=acd85(43)*acd85(63)
      acd85(72)=acd85(49)*acd85(72)
      acd85(67)=acd85(38)*acd85(67)
      acd85(63)=acd85(67)+acd85(72)+acd85(63)+acd85(68)
      acd85(63)=acd85(2)*acd85(63)
      acd85(61)=acd85(31)*acd85(61)
      acd85(64)=acd85(29)*acd85(64)
      acd85(65)=acd85(22)*acd85(65)
      acd85(67)=acd85(9)*acd85(70)
      acd85(68)=acd85(2)*acd85(74)
      acd85(61)=acd85(68)+acd85(67)+acd85(65)+acd85(64)+acd85(61)
      acd85(61)=acd85(1)*acd85(61)
      acd85(61)=acd85(61)+acd85(63)+acd85(71)+acd85(69)+acd85(62)+acd85(66)
      acd85(62)=acd85(16)*acd85(15)
      acd85(63)=acd85(12)*acd85(11)
      acd85(64)=acd85(8)*acd85(7)
      acd85(65)=acd85(6)*acd85(5)
      acd85(66)=acd85(17)*acd85(18)
      acd85(67)=acd85(13)*acd85(14)
      acd85(68)=acd85(9)*acd85(10)
      acd85(62)=acd85(68)+acd85(67)+acd85(66)+acd85(65)+acd85(64)+acd85(62)+acd&
      &85(63)
      acd85(63)=acd85(45)*acd85(62)
      acd85(64)=acd85(16)*acd85(25)
      acd85(65)=acd85(12)*acd85(23)
      acd85(66)=acd85(8)*acd85(21)
      acd85(67)=acd85(6)*acd85(20)
      acd85(68)=acd85(26)*acd85(18)
      acd85(69)=acd85(24)*acd85(14)
      acd85(70)=acd85(22)*acd85(10)
      acd85(64)=acd85(70)+acd85(69)+acd85(68)+acd85(67)+acd85(66)+acd85(64)+acd&
      &85(65)
      acd85(65)=acd85(34)*acd85(64)
      acd85(66)=acd85(16)*acd85(41)
      acd85(67)=acd85(12)*acd85(39)
      acd85(68)=acd85(8)*acd85(37)
      acd85(69)=acd85(6)*acd85(36)
      acd85(70)=acd85(42)*acd85(18)
      acd85(71)=acd85(40)*acd85(14)
      acd85(72)=acd85(38)*acd85(10)
      acd85(66)=acd85(72)+acd85(71)+acd85(70)+acd85(69)+acd85(68)+acd85(66)+acd&
      &85(67)
      acd85(67)=acd85(2)*acd85(66)
      acd85(63)=acd85(67)+acd85(63)+acd85(65)
      acd85(65)=acd85(26)*acd85(55)
      acd85(67)=acd85(17)*acd85(57)
      acd85(65)=acd85(65)+acd85(67)
      acd85(67)=acd85(38)*acd85(65)
      acd85(68)=acd85(42)*acd85(55)
      acd85(69)=acd85(17)*acd85(59)
      acd85(68)=acd85(68)+acd85(69)
      acd85(69)=acd85(22)*acd85(68)
      acd85(70)=acd85(42)*acd85(57)
      acd85(71)=acd85(26)*acd85(59)
      acd85(70)=acd85(70)+acd85(71)
      acd85(71)=acd85(9)*acd85(70)
      acd85(67)=acd85(71)+acd85(67)+acd85(69)
      acd85(67)=acd85(58)*acd85(67)
      acd85(69)=acd85(24)*acd85(55)
      acd85(71)=acd85(13)*acd85(57)
      acd85(69)=acd85(69)+acd85(71)
      acd85(71)=acd85(38)*acd85(69)
      acd85(72)=acd85(40)*acd85(55)
      acd85(73)=acd85(13)*acd85(59)
      acd85(72)=acd85(72)+acd85(73)
      acd85(73)=acd85(22)*acd85(72)
      acd85(74)=acd85(40)*acd85(57)
      acd85(75)=acd85(24)*acd85(59)
      acd85(74)=acd85(74)+acd85(75)
      acd85(75)=acd85(9)*acd85(74)
      acd85(71)=acd85(75)+acd85(71)+acd85(73)
      acd85(71)=acd85(56)*acd85(71)
      acd85(63)=acd85(71)+2.0_ki*acd85(63)+acd85(67)
      acd85(63)=acd85(46)*acd85(63)
      acd85(67)=acd85(44)*acd85(64)
      acd85(71)=acd85(33)*acd85(62)
      acd85(73)=acd85(16)*acd85(52)
      acd85(75)=acd85(12)*acd85(50)
      acd85(76)=acd85(8)*acd85(48)
      acd85(77)=acd85(6)*acd85(47)
      acd85(78)=acd85(53)*acd85(18)
      acd85(79)=acd85(51)*acd85(14)
      acd85(80)=acd85(49)*acd85(10)
      acd85(73)=acd85(80)+acd85(79)+acd85(78)+acd85(77)+acd85(73)+acd85(75)+acd&
      &85(76)
      acd85(75)=acd85(2)*acd85(73)
      acd85(67)=acd85(75)+acd85(67)+acd85(71)
      acd85(65)=acd85(49)*acd85(65)
      acd85(71)=acd85(53)*acd85(55)
      acd85(75)=acd85(17)*acd85(60)
      acd85(71)=acd85(71)+acd85(75)
      acd85(75)=acd85(22)*acd85(71)
      acd85(76)=acd85(53)*acd85(57)
      acd85(77)=acd85(26)*acd85(60)
      acd85(76)=acd85(76)+acd85(77)
      acd85(77)=acd85(9)*acd85(76)
      acd85(65)=acd85(77)+acd85(65)+acd85(75)
      acd85(65)=acd85(58)*acd85(65)
      acd85(69)=acd85(49)*acd85(69)
      acd85(75)=acd85(51)*acd85(55)
      acd85(77)=acd85(13)*acd85(60)
      acd85(75)=acd85(75)+acd85(77)
      acd85(77)=acd85(22)*acd85(75)
      acd85(78)=acd85(51)*acd85(57)
      acd85(79)=acd85(24)*acd85(60)
      acd85(78)=acd85(78)+acd85(79)
      acd85(79)=acd85(9)*acd85(78)
      acd85(69)=acd85(79)+acd85(69)+acd85(77)
      acd85(69)=acd85(56)*acd85(69)
      acd85(65)=acd85(69)+2.0_ki*acd85(67)+acd85(65)
      acd85(65)=acd85(35)*acd85(65)
      acd85(67)=acd85(45)*acd85(73)
      acd85(69)=acd85(33)*acd85(66)
      acd85(64)=acd85(1)*acd85(64)
      acd85(64)=acd85(64)+acd85(67)+acd85(69)
      acd85(67)=acd85(49)*acd85(70)
      acd85(69)=acd85(38)*acd85(76)
      acd85(70)=acd85(53)*acd85(59)
      acd85(76)=acd85(42)*acd85(60)
      acd85(70)=acd85(70)+acd85(76)
      acd85(76)=acd85(22)*acd85(70)
      acd85(67)=acd85(76)+acd85(67)+acd85(69)
      acd85(67)=acd85(58)*acd85(67)
      acd85(69)=acd85(49)*acd85(74)
      acd85(74)=acd85(38)*acd85(78)
      acd85(76)=acd85(51)*acd85(59)
      acd85(77)=acd85(40)*acd85(60)
      acd85(76)=acd85(76)+acd85(77)
      acd85(77)=acd85(22)*acd85(76)
      acd85(69)=acd85(77)+acd85(69)+acd85(74)
      acd85(69)=acd85(56)*acd85(69)
      acd85(64)=acd85(69)+2.0_ki*acd85(64)+acd85(67)
      acd85(64)=acd85(19)*acd85(64)
      acd85(66)=acd85(44)*acd85(66)
      acd85(67)=acd85(34)*acd85(73)
      acd85(62)=acd85(1)*acd85(62)
      acd85(62)=acd85(62)+acd85(66)+acd85(67)
      acd85(66)=acd85(49)*acd85(68)
      acd85(67)=acd85(38)*acd85(71)
      acd85(68)=acd85(9)*acd85(70)
      acd85(66)=acd85(68)+acd85(66)+acd85(67)
      acd85(66)=acd85(58)*acd85(66)
      acd85(67)=acd85(49)*acd85(72)
      acd85(68)=acd85(38)*acd85(75)
      acd85(69)=acd85(9)*acd85(76)
      acd85(67)=acd85(69)+acd85(67)+acd85(68)
      acd85(67)=acd85(56)*acd85(67)
      acd85(62)=acd85(67)+2.0_ki*acd85(62)+acd85(66)
      acd85(62)=acd85(4)*acd85(62)
      brack=2.0_ki*acd85(61)+acd85(62)+acd85(63)+acd85(64)+acd85(65)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd85h0
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
!---#[ subroutine reconstruct_d85:
   subroutine     reconstruct_d85(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_85:
      coeffs%coeffs_85%c0 = derivative(czip)
      coeffs%coeffs_85%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_85%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_85%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_85%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_85%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_85%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_85%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_85%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_85%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_85%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_85%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_85%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_85%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_85%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_85%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_85%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_85%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_85%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_85%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_85%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_85%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_85%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_85%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_85%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_85%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_85%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_85%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_85%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_85%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_85%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_85%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_85%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_85%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_85%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_85%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_85%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_85%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_85%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_85%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_85%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_85%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_85%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_85%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_85%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_85%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_85%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_85%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_85%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_85%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_85%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_85%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_85%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_85%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_85%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_85%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_85%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_85%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_85%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_85%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_85%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_85%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_85%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_85%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_85%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_85%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_85%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_85%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_85%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_85%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_85:
   end subroutine reconstruct_d85
!---#] subroutine reconstruct_d85:
end module     p5_usbar_epnebbbarg_d85h0l1d
