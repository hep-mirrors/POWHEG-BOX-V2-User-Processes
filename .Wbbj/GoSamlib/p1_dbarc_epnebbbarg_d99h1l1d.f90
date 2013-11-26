module     p1_dbarc_epnebbbarg_d99h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d99h1l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d99
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd99h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd99
      complex(ki) :: brack
      acd99(1)=dotproduct(k2,qshift)
      acd99(2)=dotproduct(qshift,spvak4l5)
      acd99(3)=abb99(57)
      acd99(4)=dotproduct(qshift,spvak4k7)
      acd99(5)=abb99(50)
      acd99(6)=dotproduct(qshift,spval6k2)
      acd99(7)=abb99(22)
      acd99(8)=dotproduct(qshift,spval6l5)
      acd99(9)=abb99(49)
      acd99(10)=dotproduct(qshift,spval6k7)
      acd99(11)=abb99(61)
      acd99(12)=dotproduct(qshift,spvak4e7)
      acd99(13)=abb99(54)
      acd99(14)=dotproduct(qshift,spval6e7)
      acd99(15)=abb99(52)
      acd99(16)=abb99(42)
      acd99(17)=dotproduct(k3,qshift)
      acd99(18)=dotproduct(qshift,spvak4k2)
      acd99(19)=abb99(18)
      acd99(20)=abb99(81)
      acd99(21)=dotproduct(k4,qshift)
      acd99(22)=dotproduct(qshift,qshift)
      acd99(23)=abb99(27)
      acd99(24)=abb99(32)
      acd99(25)=dotproduct(qshift,spvak4k3)
      acd99(26)=abb99(29)
      acd99(27)=abb99(35)
      acd99(28)=abb99(53)
      acd99(29)=abb99(36)
      acd99(30)=abb99(19)
      acd99(31)=abb99(9)
      acd99(32)=abb99(59)
      acd99(33)=abb99(48)
      acd99(34)=abb99(47)
      acd99(35)=abb99(58)
      acd99(36)=abb99(34)
      acd99(37)=abb99(44)
      acd99(38)=abb99(11)
      acd99(39)=abb99(31)
      acd99(40)=abb99(25)
      acd99(41)=abb99(20)
      acd99(42)=abb99(12)
      acd99(43)=dotproduct(qshift,spvak2l5)
      acd99(44)=abb99(21)
      acd99(45)=dotproduct(qshift,spvak2k7)
      acd99(46)=abb99(37)
      acd99(47)=abb99(15)
      acd99(48)=dotproduct(qshift,spvak2e7)
      acd99(49)=abb99(33)
      acd99(50)=abb99(10)
      acd99(51)=dotproduct(qshift,spvak1k2)
      acd99(52)=abb99(13)
      acd99(53)=dotproduct(qshift,spvak1k3)
      acd99(54)=abb99(43)
      acd99(55)=dotproduct(qshift,spvak3k2)
      acd99(56)=abb99(14)
      acd99(57)=dotproduct(qshift,spvak3l5)
      acd99(58)=dotproduct(qshift,spvak3k7)
      acd99(59)=dotproduct(qshift,spvak3e7)
      acd99(60)=abb99(17)
      acd99(61)=dotproduct(qshift,spval5k2)
      acd99(62)=abb99(26)
      acd99(63)=dotproduct(qshift,spval6k3)
      acd99(64)=abb99(38)
      acd99(65)=dotproduct(qshift,spvak7k2)
      acd99(66)=abb99(41)
      acd99(67)=abb99(39)
      acd99(68)=acd99(17)+acd99(21)
      acd99(69)=-acd99(19)*acd99(68)
      acd99(70)=acd99(49)*acd99(48)
      acd99(71)=-acd99(46)*acd99(45)
      acd99(72)=acd99(44)*acd99(43)
      acd99(73)=acd99(14)*acd99(40)
      acd99(74)=acd99(12)*acd99(38)
      acd99(75)=acd99(4)*acd99(27)
      acd99(76)=acd99(2)*acd99(24)
      acd99(77)=acd99(10)*acd99(35)
      acd99(78)=acd99(8)*acd99(32)
      acd99(79)=acd99(6)*acd99(29)
      acd99(80)=acd99(25)*acd99(47)
      acd99(81)=acd99(18)*acd99(42)
      acd99(69)=acd99(81)+acd99(80)+acd99(79)+acd99(78)+acd99(77)+acd99(76)+acd&
      &99(75)+acd99(74)+acd99(73)+acd99(72)+acd99(71)-acd99(50)+acd99(70)+acd99&
      &(69)
      acd99(69)=acd99(18)*acd99(69)
      acd99(70)=acd99(55)*acd99(56)
      acd99(71)=-acd99(49)*acd99(59)
      acd99(72)=acd99(46)*acd99(58)
      acd99(73)=-acd99(44)*acd99(57)
      acd99(74)=acd99(14)*acd99(41)
      acd99(75)=acd99(12)*acd99(39)
      acd99(76)=acd99(4)*acd99(28)
      acd99(77)=acd99(2)*acd99(26)
      acd99(78)=acd99(10)*acd99(36)
      acd99(79)=acd99(8)*acd99(33)
      acd99(80)=acd99(6)*acd99(30)
      acd99(70)=acd99(80)+acd99(79)+acd99(78)+acd99(77)+acd99(76)+acd99(75)+acd&
      &99(74)+acd99(73)+acd99(72)+acd99(71)-acd99(60)+acd99(70)
      acd99(70)=acd99(25)*acd99(70)
      acd99(71)=acd99(14)*acd99(15)
      acd99(72)=acd99(12)*acd99(13)
      acd99(73)=acd99(4)*acd99(5)
      acd99(74)=acd99(2)*acd99(3)
      acd99(75)=acd99(10)*acd99(11)
      acd99(76)=acd99(8)*acd99(9)
      acd99(77)=acd99(6)*acd99(7)
      acd99(71)=acd99(73)+acd99(71)-acd99(72)-acd99(74)-acd99(75)+acd99(76)-acd&
      &99(77)
      acd99(72)=acd99(71)+acd99(20)
      acd99(68)=-acd99(72)*acd99(68)
      acd99(71)=-acd99(16)+acd99(71)
      acd99(71)=acd99(1)*acd99(71)
      acd99(72)=-acd99(65)*acd99(66)
      acd99(73)=-acd99(63)*acd99(64)
      acd99(74)=-acd99(61)*acd99(62)
      acd99(75)=-acd99(53)*acd99(54)
      acd99(76)=-acd99(51)*acd99(52)
      acd99(77)=acd99(22)*acd99(23)
      acd99(78)=-acd99(10)*acd99(37)
      acd99(79)=-acd99(8)*acd99(34)
      acd99(80)=-acd99(6)*acd99(31)
      brack=acd99(67)+acd99(68)+acd99(69)+acd99(70)+acd99(71)+acd99(72)+acd99(7&
      &3)+acd99(74)+acd99(75)+acd99(76)+acd99(77)+acd99(78)+acd99(79)+acd99(80)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd99h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(101) :: acd99
      complex(ki) :: brack
      acd99(1)=k2(iv1)
      acd99(2)=dotproduct(qshift,spvak4l5)
      acd99(3)=abb99(57)
      acd99(4)=dotproduct(qshift,spvak4k7)
      acd99(5)=abb99(50)
      acd99(6)=dotproduct(qshift,spval6k2)
      acd99(7)=abb99(22)
      acd99(8)=dotproduct(qshift,spval6l5)
      acd99(9)=abb99(49)
      acd99(10)=dotproduct(qshift,spval6k7)
      acd99(11)=abb99(61)
      acd99(12)=dotproduct(qshift,spvak4e7)
      acd99(13)=abb99(54)
      acd99(14)=dotproduct(qshift,spval6e7)
      acd99(15)=abb99(52)
      acd99(16)=abb99(42)
      acd99(17)=k3(iv1)
      acd99(18)=dotproduct(qshift,spvak4k2)
      acd99(19)=abb99(18)
      acd99(20)=abb99(81)
      acd99(21)=k4(iv1)
      acd99(22)=qshift(iv1)
      acd99(23)=abb99(27)
      acd99(24)=spvak4l5(iv1)
      acd99(25)=dotproduct(k2,qshift)
      acd99(26)=dotproduct(k3,qshift)
      acd99(27)=dotproduct(k4,qshift)
      acd99(28)=abb99(32)
      acd99(29)=dotproduct(qshift,spvak4k3)
      acd99(30)=abb99(29)
      acd99(31)=spvak4k7(iv1)
      acd99(32)=abb99(35)
      acd99(33)=abb99(53)
      acd99(34)=spval6k2(iv1)
      acd99(35)=abb99(36)
      acd99(36)=abb99(19)
      acd99(37)=abb99(9)
      acd99(38)=spval6l5(iv1)
      acd99(39)=abb99(59)
      acd99(40)=abb99(48)
      acd99(41)=abb99(47)
      acd99(42)=spval6k7(iv1)
      acd99(43)=abb99(58)
      acd99(44)=abb99(34)
      acd99(45)=abb99(44)
      acd99(46)=spvak4e7(iv1)
      acd99(47)=abb99(11)
      acd99(48)=abb99(31)
      acd99(49)=spval6e7(iv1)
      acd99(50)=abb99(25)
      acd99(51)=abb99(20)
      acd99(52)=spvak4k2(iv1)
      acd99(53)=abb99(12)
      acd99(54)=dotproduct(qshift,spvak2l5)
      acd99(55)=abb99(21)
      acd99(56)=dotproduct(qshift,spvak2k7)
      acd99(57)=abb99(37)
      acd99(58)=abb99(15)
      acd99(59)=dotproduct(qshift,spvak2e7)
      acd99(60)=abb99(33)
      acd99(61)=abb99(10)
      acd99(62)=spvak1k2(iv1)
      acd99(63)=abb99(13)
      acd99(64)=spvak1k3(iv1)
      acd99(65)=abb99(43)
      acd99(66)=spvak2l5(iv1)
      acd99(67)=spvak2k7(iv1)
      acd99(68)=spvak3k2(iv1)
      acd99(69)=abb99(14)
      acd99(70)=spvak4k3(iv1)
      acd99(71)=dotproduct(qshift,spvak3k2)
      acd99(72)=dotproduct(qshift,spvak3l5)
      acd99(73)=dotproduct(qshift,spvak3k7)
      acd99(74)=dotproduct(qshift,spvak3e7)
      acd99(75)=abb99(17)
      acd99(76)=spvak3l5(iv1)
      acd99(77)=spvak3k7(iv1)
      acd99(78)=spvak2e7(iv1)
      acd99(79)=spvak3e7(iv1)
      acd99(80)=spval5k2(iv1)
      acd99(81)=abb99(26)
      acd99(82)=spval6k3(iv1)
      acd99(83)=abb99(38)
      acd99(84)=spvak7k2(iv1)
      acd99(85)=abb99(41)
      acd99(86)=acd99(26)+acd99(27)
      acd99(87)=-acd99(19)*acd99(86)
      acd99(88)=acd99(60)*acd99(59)
      acd99(89)=-acd99(57)*acd99(56)
      acd99(90)=acd99(55)*acd99(54)
      acd99(91)=acd99(14)*acd99(50)
      acd99(92)=acd99(12)*acd99(47)
      acd99(93)=acd99(10)*acd99(43)
      acd99(94)=acd99(8)*acd99(39)
      acd99(95)=acd99(6)*acd99(35)
      acd99(96)=acd99(4)*acd99(32)
      acd99(97)=acd99(2)*acd99(28)
      acd99(98)=acd99(29)*acd99(58)
      acd99(99)=acd99(18)*acd99(53)
      acd99(87)=2.0_ki*acd99(99)+acd99(98)+acd99(97)+acd99(96)+acd99(95)+acd99(&
      &94)+acd99(93)+acd99(92)+acd99(91)+acd99(90)+acd99(89)-acd99(61)+acd99(88&
      &)+acd99(87)
      acd99(87)=acd99(52)*acd99(87)
      acd99(88)=acd99(17)+acd99(21)
      acd99(89)=-acd99(19)*acd99(88)
      acd99(90)=acd99(60)*acd99(78)
      acd99(91)=-acd99(57)*acd99(67)
      acd99(92)=acd99(55)*acd99(66)
      acd99(93)=acd99(49)*acd99(50)
      acd99(94)=acd99(46)*acd99(47)
      acd99(95)=acd99(31)*acd99(32)
      acd99(96)=acd99(24)*acd99(28)
      acd99(97)=acd99(42)*acd99(43)
      acd99(98)=acd99(38)*acd99(39)
      acd99(99)=acd99(34)*acd99(35)
      acd99(100)=acd99(70)*acd99(58)
      acd99(89)=acd99(100)+acd99(99)+acd99(98)+acd99(97)+acd99(96)+acd99(95)+ac&
      &d99(94)+acd99(93)+acd99(92)+acd99(90)+acd99(91)+acd99(89)
      acd99(89)=acd99(18)*acd99(89)
      acd99(90)=acd99(69)*acd99(68)
      acd99(91)=-acd99(60)*acd99(79)
      acd99(92)=acd99(57)*acd99(77)
      acd99(93)=-acd99(55)*acd99(76)
      acd99(94)=acd99(49)*acd99(51)
      acd99(95)=acd99(46)*acd99(48)
      acd99(96)=acd99(31)*acd99(33)
      acd99(97)=acd99(24)*acd99(30)
      acd99(98)=acd99(42)*acd99(44)
      acd99(99)=acd99(38)*acd99(40)
      acd99(100)=acd99(34)*acd99(36)
      acd99(90)=acd99(100)+acd99(99)+acd99(98)+acd99(97)+acd99(96)+acd99(95)+ac&
      &d99(94)+acd99(93)+acd99(92)+acd99(90)+acd99(91)
      acd99(90)=acd99(29)*acd99(90)
      acd99(91)=acd99(69)*acd99(71)
      acd99(92)=-acd99(60)*acd99(74)
      acd99(93)=acd99(57)*acd99(73)
      acd99(94)=-acd99(55)*acd99(72)
      acd99(95)=acd99(14)*acd99(51)
      acd99(96)=acd99(12)*acd99(48)
      acd99(97)=acd99(10)*acd99(44)
      acd99(98)=acd99(8)*acd99(40)
      acd99(99)=acd99(6)*acd99(36)
      acd99(100)=acd99(4)*acd99(33)
      acd99(101)=acd99(2)*acd99(30)
      acd99(91)=acd99(101)+acd99(100)+acd99(99)+acd99(98)+acd99(97)+acd99(96)+a&
      &cd99(95)+acd99(94)+acd99(93)+acd99(92)-acd99(75)+acd99(91)
      acd99(91)=acd99(70)*acd99(91)
      acd99(92)=acd99(15)*acd99(14)
      acd99(93)=acd99(13)*acd99(12)
      acd99(94)=acd99(11)*acd99(10)
      acd99(95)=acd99(9)*acd99(8)
      acd99(96)=acd99(7)*acd99(6)
      acd99(97)=acd99(5)*acd99(4)
      acd99(98)=acd99(3)*acd99(2)
      acd99(92)=acd99(98)-acd99(97)+acd99(96)+acd99(93)-acd99(92)+acd99(94)-acd&
      &99(95)
      acd99(93)=-acd99(20)+acd99(92)
      acd99(88)=acd99(93)*acd99(88)
      acd99(93)=acd99(15)*acd99(49)
      acd99(94)=acd99(13)*acd99(46)
      acd99(95)=acd99(11)*acd99(42)
      acd99(96)=acd99(9)*acd99(38)
      acd99(97)=acd99(7)*acd99(34)
      acd99(98)=acd99(5)*acd99(31)
      acd99(99)=acd99(3)*acd99(24)
      acd99(93)=acd99(99)-acd99(98)+acd99(97)+acd99(94)-acd99(93)+acd99(95)-acd&
      &99(96)
      acd99(86)=-acd99(25)+acd99(86)
      acd99(86)=acd99(93)*acd99(86)
      acd99(92)=-acd99(16)-acd99(92)
      acd99(92)=acd99(1)*acd99(92)
      acd99(93)=-acd99(84)*acd99(85)
      acd99(94)=-acd99(82)*acd99(83)
      acd99(95)=-acd99(80)*acd99(81)
      acd99(96)=-acd99(64)*acd99(65)
      acd99(97)=-acd99(62)*acd99(63)
      acd99(98)=acd99(22)*acd99(23)
      acd99(99)=-acd99(42)*acd99(45)
      acd99(100)=-acd99(38)*acd99(41)
      acd99(101)=-acd99(34)*acd99(37)
      brack=acd99(86)+acd99(87)+acd99(88)+acd99(89)+acd99(90)+acd99(91)+acd99(9&
      &2)+acd99(93)+acd99(94)+acd99(95)+acd99(96)+acd99(97)+2.0_ki*acd99(98)+ac&
      &d99(99)+acd99(100)+acd99(101)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd99h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(84) :: acd99
      complex(ki) :: brack
      acd99(1)=d(iv1,iv2)
      acd99(2)=abb99(27)
      acd99(3)=k2(iv1)
      acd99(4)=spvak4l5(iv2)
      acd99(5)=abb99(57)
      acd99(6)=spvak4k7(iv2)
      acd99(7)=abb99(50)
      acd99(8)=spval6k2(iv2)
      acd99(9)=abb99(22)
      acd99(10)=spval6l5(iv2)
      acd99(11)=abb99(49)
      acd99(12)=spval6k7(iv2)
      acd99(13)=abb99(61)
      acd99(14)=spvak4e7(iv2)
      acd99(15)=abb99(54)
      acd99(16)=spval6e7(iv2)
      acd99(17)=abb99(52)
      acd99(18)=k2(iv2)
      acd99(19)=spvak4l5(iv1)
      acd99(20)=spvak4k7(iv1)
      acd99(21)=spval6k2(iv1)
      acd99(22)=spval6l5(iv1)
      acd99(23)=spval6k7(iv1)
      acd99(24)=spvak4e7(iv1)
      acd99(25)=spval6e7(iv1)
      acd99(26)=k3(iv1)
      acd99(27)=spvak4k2(iv2)
      acd99(28)=abb99(18)
      acd99(29)=k3(iv2)
      acd99(30)=spvak4k2(iv1)
      acd99(31)=k4(iv1)
      acd99(32)=k4(iv2)
      acd99(33)=abb99(32)
      acd99(34)=spvak4k3(iv2)
      acd99(35)=abb99(29)
      acd99(36)=spvak4k3(iv1)
      acd99(37)=abb99(35)
      acd99(38)=abb99(53)
      acd99(39)=abb99(36)
      acd99(40)=abb99(19)
      acd99(41)=abb99(59)
      acd99(42)=abb99(48)
      acd99(43)=abb99(58)
      acd99(44)=abb99(34)
      acd99(45)=abb99(11)
      acd99(46)=abb99(31)
      acd99(47)=abb99(25)
      acd99(48)=abb99(20)
      acd99(49)=abb99(12)
      acd99(50)=spvak2l5(iv2)
      acd99(51)=abb99(21)
      acd99(52)=spvak2k7(iv2)
      acd99(53)=abb99(37)
      acd99(54)=abb99(15)
      acd99(55)=spvak2e7(iv2)
      acd99(56)=abb99(33)
      acd99(57)=spvak2l5(iv1)
      acd99(58)=spvak2k7(iv1)
      acd99(59)=spvak2e7(iv1)
      acd99(60)=spvak3k2(iv1)
      acd99(61)=abb99(14)
      acd99(62)=spvak3k2(iv2)
      acd99(63)=spvak3l5(iv2)
      acd99(64)=spvak3k7(iv2)
      acd99(65)=spvak3e7(iv2)
      acd99(66)=spvak3l5(iv1)
      acd99(67)=spvak3k7(iv1)
      acd99(68)=spvak3e7(iv1)
      acd99(69)=acd99(26)+acd99(31)
      acd99(70)=-acd99(28)*acd99(69)
      acd99(71)=acd99(56)*acd99(59)
      acd99(72)=-acd99(53)*acd99(58)
      acd99(73)=acd99(51)*acd99(57)
      acd99(74)=acd99(25)*acd99(47)
      acd99(75)=acd99(24)*acd99(45)
      acd99(76)=acd99(23)*acd99(43)
      acd99(77)=acd99(22)*acd99(41)
      acd99(78)=acd99(21)*acd99(39)
      acd99(79)=acd99(20)*acd99(37)
      acd99(80)=acd99(19)*acd99(33)
      acd99(81)=acd99(36)*acd99(54)
      acd99(82)=acd99(30)*acd99(49)
      acd99(70)=2.0_ki*acd99(82)+acd99(81)+acd99(80)+acd99(79)+acd99(78)+acd99(&
      &77)+acd99(76)+acd99(75)+acd99(74)+acd99(73)+acd99(71)+acd99(72)+acd99(70)
      acd99(70)=acd99(27)*acd99(70)
      acd99(71)=acd99(29)+acd99(32)
      acd99(72)=-acd99(28)*acd99(71)
      acd99(73)=acd99(56)*acd99(55)
      acd99(74)=-acd99(53)*acd99(52)
      acd99(75)=acd99(51)*acd99(50)
      acd99(76)=acd99(16)*acd99(47)
      acd99(77)=acd99(14)*acd99(45)
      acd99(78)=acd99(12)*acd99(43)
      acd99(79)=acd99(10)*acd99(41)
      acd99(80)=acd99(8)*acd99(39)
      acd99(81)=acd99(6)*acd99(37)
      acd99(82)=acd99(4)*acd99(33)
      acd99(83)=acd99(34)*acd99(54)
      acd99(72)=acd99(83)+acd99(82)+acd99(81)+acd99(80)+acd99(79)+acd99(78)+acd&
      &99(77)+acd99(76)+acd99(75)+acd99(73)+acd99(74)+acd99(72)
      acd99(72)=acd99(30)*acd99(72)
      acd99(73)=acd99(61)*acd99(62)
      acd99(74)=-acd99(56)*acd99(65)
      acd99(75)=acd99(53)*acd99(64)
      acd99(76)=-acd99(51)*acd99(63)
      acd99(77)=acd99(16)*acd99(48)
      acd99(78)=acd99(14)*acd99(46)
      acd99(79)=acd99(12)*acd99(44)
      acd99(80)=acd99(10)*acd99(42)
      acd99(81)=acd99(8)*acd99(40)
      acd99(82)=acd99(6)*acd99(38)
      acd99(83)=acd99(4)*acd99(35)
      acd99(73)=acd99(83)+acd99(82)+acd99(81)+acd99(80)+acd99(79)+acd99(78)+acd&
      &99(77)+acd99(76)+acd99(75)+acd99(73)+acd99(74)
      acd99(73)=acd99(36)*acd99(73)
      acd99(74)=acd99(61)*acd99(60)
      acd99(75)=-acd99(56)*acd99(68)
      acd99(76)=acd99(53)*acd99(67)
      acd99(77)=-acd99(51)*acd99(66)
      acd99(78)=acd99(25)*acd99(48)
      acd99(79)=acd99(24)*acd99(46)
      acd99(80)=acd99(23)*acd99(44)
      acd99(81)=acd99(22)*acd99(42)
      acd99(82)=acd99(21)*acd99(40)
      acd99(83)=acd99(20)*acd99(38)
      acd99(84)=acd99(19)*acd99(35)
      acd99(74)=acd99(84)+acd99(83)+acd99(82)+acd99(81)+acd99(80)+acd99(79)+acd&
      &99(78)+acd99(77)+acd99(76)+acd99(74)+acd99(75)
      acd99(74)=acd99(34)*acd99(74)
      acd99(75)=acd99(17)*acd99(16)
      acd99(76)=acd99(15)*acd99(14)
      acd99(77)=acd99(13)*acd99(12)
      acd99(78)=acd99(11)*acd99(10)
      acd99(79)=acd99(9)*acd99(8)
      acd99(80)=acd99(7)*acd99(6)
      acd99(81)=acd99(5)*acd99(4)
      acd99(75)=acd99(81)-acd99(80)+acd99(79)+acd99(76)-acd99(75)+acd99(77)-acd&
      &99(78)
      acd99(69)=-acd99(3)+acd99(69)
      acd99(69)=acd99(75)*acd99(69)
      acd99(75)=acd99(17)*acd99(25)
      acd99(76)=acd99(15)*acd99(24)
      acd99(77)=acd99(13)*acd99(23)
      acd99(78)=acd99(11)*acd99(22)
      acd99(79)=acd99(9)*acd99(21)
      acd99(80)=acd99(7)*acd99(20)
      acd99(81)=acd99(5)*acd99(19)
      acd99(75)=acd99(81)-acd99(80)+acd99(79)+acd99(76)-acd99(75)+acd99(77)-acd&
      &99(78)
      acd99(71)=-acd99(18)+acd99(71)
      acd99(71)=acd99(75)*acd99(71)
      acd99(75)=acd99(1)*acd99(2)
      brack=acd99(69)+acd99(70)+acd99(71)+acd99(72)+acd99(73)+acd99(74)+2.0_ki*&
      &acd99(75)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd99h1
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
      qshift = -k7-k6-k5
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
!---#[ subroutine reconstruct_d99:
   subroutine     reconstruct_d99(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_99:
      coeffs%coeffs_99%c0 = derivative(czip)
      coeffs%coeffs_99%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_99%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_99%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_99%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_99%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_99%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_99%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_99%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_99%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_99%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_99%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_99%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_99%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_99%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_99:
   end subroutine reconstruct_d99
!---#] subroutine reconstruct_d99:
end module     p1_dbarc_epnebbbarg_d99h1l1d
