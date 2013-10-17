module     p1_dbarc_epnebbbarg_d76h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d76h2l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d76
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd76h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(105) :: acd76
      complex(ki) :: brack
      acd76(1)=dotproduct(k1,qshift)
      acd76(2)=dotproduct(qshift,spval5k2)
      acd76(3)=abb76(74)
      acd76(4)=dotproduct(qshift,spval5l6)
      acd76(5)=abb76(66)
      acd76(6)=abb76(37)
      acd76(7)=dotproduct(k2,qshift)
      acd76(8)=dotproduct(qshift,spvak1k3)
      acd76(9)=abb76(43)
      acd76(10)=dotproduct(qshift,spvak1l6)
      acd76(11)=abb76(33)
      acd76(12)=dotproduct(qshift,spvak7k3)
      acd76(13)=abb76(55)
      acd76(14)=dotproduct(qshift,spvak7l6)
      acd76(15)=abb76(45)
      acd76(16)=abb76(30)
      acd76(17)=dotproduct(l5,qshift)
      acd76(18)=abb76(47)
      acd76(19)=abb76(32)
      acd76(20)=abb76(51)
      acd76(21)=abb76(44)
      acd76(22)=abb76(28)
      acd76(23)=dotproduct(l6,qshift)
      acd76(24)=abb76(77)
      acd76(25)=dotproduct(k7,qshift)
      acd76(26)=abb76(75)
      acd76(27)=abb76(65)
      acd76(28)=abb76(21)
      acd76(29)=dotproduct(qshift,qshift)
      acd76(30)=abb76(48)
      acd76(31)=abb76(35)
      acd76(32)=abb76(56)
      acd76(33)=abb76(49)
      acd76(34)=abb76(26)
      acd76(35)=abb76(82)
      acd76(36)=abb76(50)
      acd76(37)=abb76(39)
      acd76(38)=abb76(54)
      acd76(39)=abb76(70)
      acd76(40)=dotproduct(qshift,spvak1k2)
      acd76(41)=abb76(40)
      acd76(42)=dotproduct(qshift,spvak4k3)
      acd76(43)=abb76(19)
      acd76(44)=dotproduct(qshift,spvak1k7)
      acd76(45)=abb76(27)
      acd76(46)=dotproduct(qshift,spvak2l6)
      acd76(47)=abb76(18)
      acd76(48)=dotproduct(qshift,spvak7k2)
      acd76(49)=abb76(80)
      acd76(50)=dotproduct(qshift,spvak4l6)
      acd76(51)=abb76(13)
      acd76(52)=dotproduct(qshift,spvak7k1)
      acd76(53)=abb76(81)
      acd76(54)=abb76(29)
      acd76(55)=abb76(36)
      acd76(56)=abb76(68)
      acd76(57)=abb76(10)
      acd76(58)=abb76(17)
      acd76(59)=abb76(11)
      acd76(60)=abb76(34)
      acd76(61)=abb76(71)
      acd76(62)=abb76(41)
      acd76(63)=abb76(64)
      acd76(64)=dotproduct(qshift,spval5k1)
      acd76(65)=abb76(38)
      acd76(66)=dotproduct(qshift,spval5k3)
      acd76(67)=dotproduct(qshift,spval5k7)
      acd76(68)=abb76(24)
      acd76(69)=abb76(63)
      acd76(70)=abb76(22)
      acd76(71)=abb76(12)
      acd76(72)=abb76(15)
      acd76(73)=abb76(16)
      acd76(74)=abb76(58)
      acd76(75)=abb76(72)
      acd76(76)=abb76(61)
      acd76(77)=abb76(31)
      acd76(78)=dotproduct(qshift,spvak4k2)
      acd76(79)=abb76(14)
      acd76(80)=abb76(23)
      acd76(81)=abb76(20)
      acd76(82)=dotproduct(qshift,spval6k2)
      acd76(83)=abb76(42)
      acd76(84)=abb76(9)
      acd76(85)=acd76(50)*acd76(51)
      acd76(86)=acd76(46)*acd76(47)
      acd76(87)=acd76(23)*acd76(24)
      acd76(88)=acd76(52)*acd76(53)
      acd76(89)=acd76(44)*acd76(45)
      acd76(90)=acd76(25)*acd76(26)
      acd76(91)=acd76(1)*acd76(3)
      acd76(92)=acd76(48)*acd76(49)
      acd76(93)=acd76(42)*acd76(43)
      acd76(94)=acd76(40)*acd76(41)
      acd76(95)=acd76(12)*acd76(38)
      acd76(96)=acd76(8)*acd76(36)
      acd76(97)=acd76(14)*acd76(39)
      acd76(98)=acd76(10)*acd76(37)
      acd76(99)=acd76(4)*acd76(35)
      acd76(85)=acd76(99)+acd76(98)+acd76(97)+acd76(96)+acd76(95)+acd76(94)+acd&
      &76(93)+acd76(92)+acd76(91)+acd76(90)+acd76(89)+acd76(88)+acd76(87)+acd76&
      &(86)-acd76(54)+acd76(85)
      acd76(85)=acd76(2)*acd76(85)
      acd76(86)=-acd76(52)*acd76(62)
      acd76(87)=acd76(44)*acd76(60)
      acd76(88)=acd76(25)*acd76(27)
      acd76(89)=acd76(1)*acd76(5)
      acd76(90)=acd76(48)*acd76(61)
      acd76(91)=acd76(42)*acd76(48)
      acd76(92)=-acd76(59)*acd76(91)
      acd76(93)=-acd76(42)*acd76(57)
      acd76(93)=acd76(58)+acd76(93)
      acd76(93)=acd76(40)*acd76(93)
      acd76(94)=-acd76(12)*acd76(56)
      acd76(95)=-acd76(8)*acd76(55)
      acd76(86)=acd76(95)+acd76(94)+acd76(93)+acd76(92)+acd76(90)+acd76(89)+acd&
      &76(88)+acd76(87)-acd76(63)+acd76(86)
      acd76(86)=acd76(4)*acd76(86)
      acd76(87)=acd76(67)*acd76(69)
      acd76(88)=acd76(66)*acd76(56)
      acd76(89)=acd76(64)*acd76(62)
      acd76(90)=-acd76(29)*acd76(33)
      acd76(92)=acd76(17)*acd76(21)
      acd76(93)=acd76(7)*acd76(15)
      acd76(87)=acd76(93)+acd76(92)+acd76(90)+acd76(89)+acd76(88)-acd76(70)+acd&
      &76(87)
      acd76(87)=acd76(14)*acd76(87)
      acd76(88)=-acd76(67)*acd76(60)
      acd76(89)=acd76(66)*acd76(55)
      acd76(90)=acd76(64)*acd76(65)
      acd76(92)=-acd76(29)*acd76(31)
      acd76(93)=acd76(17)*acd76(19)
      acd76(94)=acd76(7)*acd76(11)
      acd76(88)=acd76(94)+acd76(93)+acd76(92)+acd76(90)+acd76(89)-acd76(68)+acd&
      &76(88)
      acd76(88)=acd76(10)*acd76(88)
      acd76(89)=-acd76(29)*acd76(32)
      acd76(90)=acd76(17)*acd76(20)
      acd76(89)=acd76(89)+acd76(90)
      acd76(89)=acd76(12)*acd76(89)
      acd76(90)=-acd76(29)*acd76(30)
      acd76(92)=acd76(17)*acd76(18)
      acd76(90)=acd76(90)+acd76(92)
      acd76(90)=acd76(8)*acd76(90)
      acd76(92)=acd76(12)*acd76(13)
      acd76(93)=acd76(8)*acd76(9)
      acd76(92)=acd76(93)-acd76(16)+acd76(92)
      acd76(92)=acd76(7)*acd76(92)
      acd76(93)=-acd76(82)*acd76(83)
      acd76(94)=-acd76(78)*acd76(79)
      acd76(95)=-acd76(67)*acd76(76)
      acd76(96)=-acd76(66)*acd76(75)
      acd76(97)=-acd76(64)*acd76(74)
      acd76(98)=-acd76(52)*acd76(81)
      acd76(99)=-acd76(44)*acd76(77)
      acd76(100)=-acd76(25)*acd76(28)
      acd76(101)=-acd76(1)*acd76(6)
      acd76(102)=-acd76(48)*acd76(80)
      acd76(91)=acd76(73)*acd76(91)
      acd76(103)=acd76(42)*acd76(71)
      acd76(103)=-acd76(72)+acd76(103)
      acd76(103)=acd76(40)*acd76(103)
      acd76(104)=acd76(29)*acd76(34)
      acd76(105)=-acd76(17)*acd76(22)
      brack=acd76(84)+acd76(85)+acd76(86)+acd76(87)+acd76(88)+acd76(89)+acd76(9&
      &0)+acd76(91)+acd76(92)+acd76(93)+acd76(94)+acd76(95)+acd76(96)+acd76(97)&
      &+acd76(98)+acd76(99)+acd76(100)+acd76(101)+acd76(102)+acd76(103)+acd76(1&
      &04)+acd76(105)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd76h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(134) :: acd76
      complex(ki) :: brack
      acd76(1)=k1(iv1)
      acd76(2)=dotproduct(qshift,spval5k2)
      acd76(3)=abb76(74)
      acd76(4)=dotproduct(qshift,spval5l6)
      acd76(5)=abb76(66)
      acd76(6)=abb76(37)
      acd76(7)=k2(iv1)
      acd76(8)=dotproduct(qshift,spvak1k3)
      acd76(9)=abb76(43)
      acd76(10)=dotproduct(qshift,spvak1l6)
      acd76(11)=abb76(33)
      acd76(12)=dotproduct(qshift,spvak7k3)
      acd76(13)=abb76(55)
      acd76(14)=dotproduct(qshift,spvak7l6)
      acd76(15)=abb76(45)
      acd76(16)=abb76(30)
      acd76(17)=l5(iv1)
      acd76(18)=abb76(47)
      acd76(19)=abb76(32)
      acd76(20)=abb76(51)
      acd76(21)=abb76(44)
      acd76(22)=abb76(28)
      acd76(23)=l6(iv1)
      acd76(24)=abb76(77)
      acd76(25)=k7(iv1)
      acd76(26)=abb76(75)
      acd76(27)=abb76(65)
      acd76(28)=abb76(21)
      acd76(29)=qshift(iv1)
      acd76(30)=abb76(48)
      acd76(31)=abb76(35)
      acd76(32)=abb76(56)
      acd76(33)=abb76(49)
      acd76(34)=abb76(26)
      acd76(35)=spval5k2(iv1)
      acd76(36)=dotproduct(k1,qshift)
      acd76(37)=dotproduct(l6,qshift)
      acd76(38)=dotproduct(k7,qshift)
      acd76(39)=abb76(82)
      acd76(40)=abb76(50)
      acd76(41)=abb76(39)
      acd76(42)=abb76(54)
      acd76(43)=abb76(70)
      acd76(44)=dotproduct(qshift,spvak1k2)
      acd76(45)=abb76(40)
      acd76(46)=dotproduct(qshift,spvak4k3)
      acd76(47)=abb76(19)
      acd76(48)=dotproduct(qshift,spvak1k7)
      acd76(49)=abb76(27)
      acd76(50)=dotproduct(qshift,spvak2l6)
      acd76(51)=abb76(18)
      acd76(52)=dotproduct(qshift,spvak7k2)
      acd76(53)=abb76(80)
      acd76(54)=dotproduct(qshift,spvak4l6)
      acd76(55)=abb76(13)
      acd76(56)=dotproduct(qshift,spvak7k1)
      acd76(57)=abb76(81)
      acd76(58)=abb76(29)
      acd76(59)=spval5l6(iv1)
      acd76(60)=abb76(36)
      acd76(61)=abb76(68)
      acd76(62)=abb76(10)
      acd76(63)=abb76(17)
      acd76(64)=abb76(11)
      acd76(65)=abb76(34)
      acd76(66)=abb76(71)
      acd76(67)=abb76(41)
      acd76(68)=abb76(64)
      acd76(69)=spvak1k3(iv1)
      acd76(70)=dotproduct(k2,qshift)
      acd76(71)=dotproduct(l5,qshift)
      acd76(72)=dotproduct(qshift,qshift)
      acd76(73)=spvak1l6(iv1)
      acd76(74)=dotproduct(qshift,spval5k1)
      acd76(75)=abb76(38)
      acd76(76)=dotproduct(qshift,spval5k3)
      acd76(77)=dotproduct(qshift,spval5k7)
      acd76(78)=abb76(24)
      acd76(79)=spvak7k3(iv1)
      acd76(80)=spvak7l6(iv1)
      acd76(81)=abb76(63)
      acd76(82)=abb76(22)
      acd76(83)=spvak1k2(iv1)
      acd76(84)=abb76(12)
      acd76(85)=abb76(15)
      acd76(86)=spvak4k3(iv1)
      acd76(87)=abb76(16)
      acd76(88)=spval5k1(iv1)
      acd76(89)=abb76(58)
      acd76(90)=spval5k3(iv1)
      acd76(91)=abb76(72)
      acd76(92)=spval5k7(iv1)
      acd76(93)=abb76(61)
      acd76(94)=spvak1k7(iv1)
      acd76(95)=abb76(31)
      acd76(96)=spvak2l6(iv1)
      acd76(97)=spvak4k2(iv1)
      acd76(98)=abb76(14)
      acd76(99)=spvak7k2(iv1)
      acd76(100)=abb76(23)
      acd76(101)=spvak4l6(iv1)
      acd76(102)=spvak7k1(iv1)
      acd76(103)=abb76(20)
      acd76(104)=spval6k2(iv1)
      acd76(105)=abb76(42)
      acd76(106)=-acd76(55)*acd76(101)
      acd76(107)=-acd76(51)*acd76(96)
      acd76(108)=-acd76(24)*acd76(23)
      acd76(109)=-acd76(102)*acd76(57)
      acd76(110)=-acd76(94)*acd76(49)
      acd76(111)=-acd76(25)*acd76(26)
      acd76(112)=-acd76(1)*acd76(3)
      acd76(113)=-acd76(99)*acd76(53)
      acd76(114)=-acd76(86)*acd76(47)
      acd76(115)=-acd76(83)*acd76(45)
      acd76(116)=-acd76(79)*acd76(42)
      acd76(117)=-acd76(69)*acd76(40)
      acd76(118)=-acd76(80)*acd76(43)
      acd76(119)=-acd76(73)*acd76(41)
      acd76(120)=-acd76(59)*acd76(39)
      acd76(106)=acd76(120)+acd76(119)+acd76(118)+acd76(117)+acd76(116)+acd76(1&
      &15)+acd76(114)+acd76(113)+acd76(112)+acd76(111)+acd76(110)+acd76(109)+ac&
      &d76(108)+acd76(106)+acd76(107)
      acd76(106)=acd76(2)*acd76(106)
      acd76(107)=-acd76(56)*acd76(57)
      acd76(108)=-acd76(55)*acd76(54)
      acd76(109)=-acd76(51)*acd76(50)
      acd76(110)=-acd76(48)*acd76(49)
      acd76(111)=-acd76(26)*acd76(38)
      acd76(112)=-acd76(24)*acd76(37)
      acd76(113)=-acd76(3)*acd76(36)
      acd76(114)=-acd76(52)*acd76(53)
      acd76(115)=-acd76(44)*acd76(45)
      acd76(116)=-acd76(12)*acd76(42)
      acd76(117)=-acd76(8)*acd76(40)
      acd76(118)=-acd76(46)*acd76(47)
      acd76(119)=-acd76(14)*acd76(43)
      acd76(120)=-acd76(10)*acd76(41)
      acd76(121)=-acd76(4)*acd76(39)
      acd76(107)=acd76(121)+acd76(120)+acd76(119)+acd76(118)+acd76(117)+acd76(1&
      &16)+acd76(115)+acd76(114)+acd76(113)+acd76(112)+acd76(111)+acd76(110)+ac&
      &d76(109)+acd76(108)+acd76(58)+acd76(107)
      acd76(107)=acd76(35)*acd76(107)
      acd76(108)=acd76(99)*acd76(64)
      acd76(109)=acd76(83)*acd76(62)
      acd76(108)=acd76(108)+acd76(109)
      acd76(108)=acd76(46)*acd76(108)
      acd76(109)=-acd76(25)*acd76(27)
      acd76(110)=-acd76(1)*acd76(5)
      acd76(111)=acd76(67)*acd76(102)
      acd76(112)=-acd76(65)*acd76(94)
      acd76(113)=-acd76(99)*acd76(66)
      acd76(114)=-acd76(83)*acd76(63)
      acd76(115)=acd76(79)*acd76(61)
      acd76(116)=acd76(69)*acd76(60)
      acd76(117)=acd76(52)*acd76(86)
      acd76(118)=acd76(64)*acd76(117)
      acd76(119)=acd76(44)*acd76(86)
      acd76(120)=acd76(62)*acd76(119)
      acd76(108)=acd76(108)+acd76(120)+acd76(118)+acd76(116)+acd76(115)+acd76(1&
      &14)+acd76(113)+acd76(112)+acd76(111)+acd76(109)+acd76(110)
      acd76(108)=acd76(4)*acd76(108)
      acd76(109)=acd76(52)*acd76(64)
      acd76(110)=acd76(44)*acd76(62)
      acd76(109)=acd76(109)+acd76(110)
      acd76(109)=acd76(46)*acd76(109)
      acd76(110)=-acd76(27)*acd76(38)
      acd76(111)=-acd76(5)*acd76(36)
      acd76(112)=acd76(67)*acd76(56)
      acd76(113)=-acd76(65)*acd76(48)
      acd76(114)=-acd76(52)*acd76(66)
      acd76(115)=-acd76(44)*acd76(63)
      acd76(116)=acd76(12)*acd76(61)
      acd76(118)=acd76(8)*acd76(60)
      acd76(109)=acd76(109)+acd76(118)+acd76(116)+acd76(115)+acd76(114)+acd76(1&
      &13)+acd76(112)+acd76(111)+acd76(68)+acd76(110)
      acd76(109)=acd76(59)*acd76(109)
      acd76(110)=-acd76(92)*acd76(81)
      acd76(111)=-acd76(67)*acd76(88)
      acd76(112)=-acd76(61)*acd76(90)
      acd76(113)=2.0_ki*acd76(29)
      acd76(114)=acd76(33)*acd76(113)
      acd76(115)=-acd76(17)*acd76(21)
      acd76(116)=-acd76(7)*acd76(15)
      acd76(110)=acd76(116)+acd76(115)+acd76(114)+acd76(112)+acd76(110)+acd76(1&
      &11)
      acd76(110)=acd76(14)*acd76(110)
      acd76(111)=-acd76(88)*acd76(75)
      acd76(112)=acd76(65)*acd76(92)
      acd76(114)=-acd76(60)*acd76(90)
      acd76(115)=acd76(31)*acd76(113)
      acd76(116)=-acd76(17)*acd76(19)
      acd76(118)=-acd76(7)*acd76(11)
      acd76(111)=acd76(118)+acd76(116)+acd76(115)+acd76(114)+acd76(111)+acd76(1&
      &12)
      acd76(111)=acd76(10)*acd76(111)
      acd76(112)=-acd76(77)*acd76(81)
      acd76(114)=acd76(72)*acd76(33)
      acd76(115)=-acd76(71)*acd76(21)
      acd76(116)=-acd76(70)*acd76(15)
      acd76(118)=-acd76(67)*acd76(74)
      acd76(120)=-acd76(61)*acd76(76)
      acd76(112)=acd76(120)+acd76(118)+acd76(116)+acd76(115)+acd76(114)+acd76(8&
      &2)+acd76(112)
      acd76(112)=acd76(80)*acd76(112)
      acd76(114)=-acd76(74)*acd76(75)
      acd76(115)=acd76(72)*acd76(31)
      acd76(116)=-acd76(71)*acd76(19)
      acd76(118)=-acd76(70)*acd76(11)
      acd76(120)=acd76(65)*acd76(77)
      acd76(121)=-acd76(60)*acd76(76)
      acd76(114)=acd76(121)+acd76(120)+acd76(118)+acd76(116)+acd76(115)+acd76(7&
      &8)+acd76(114)
      acd76(114)=acd76(73)*acd76(114)
      acd76(115)=acd76(72)*acd76(32)
      acd76(116)=-acd76(71)*acd76(20)
      acd76(118)=-acd76(70)*acd76(13)
      acd76(115)=acd76(118)+acd76(115)+acd76(116)
      acd76(115)=acd76(79)*acd76(115)
      acd76(116)=acd76(72)*acd76(30)
      acd76(118)=-acd76(71)*acd76(18)
      acd76(120)=-acd76(70)*acd76(9)
      acd76(116)=acd76(120)+acd76(116)+acd76(118)
      acd76(116)=acd76(69)*acd76(116)
      acd76(118)=acd76(32)*acd76(113)
      acd76(120)=-acd76(17)*acd76(20)
      acd76(118)=acd76(118)+acd76(120)
      acd76(118)=acd76(12)*acd76(118)
      acd76(120)=acd76(30)*acd76(113)
      acd76(121)=-acd76(17)*acd76(18)
      acd76(120)=acd76(120)+acd76(121)
      acd76(120)=acd76(8)*acd76(120)
      acd76(121)=-acd76(12)*acd76(13)
      acd76(122)=-acd76(8)*acd76(9)
      acd76(121)=acd76(122)+acd76(16)+acd76(121)
      acd76(121)=acd76(7)*acd76(121)
      acd76(122)=-acd76(99)*acd76(87)
      acd76(123)=-acd76(83)*acd76(84)
      acd76(122)=acd76(122)+acd76(123)
      acd76(122)=acd76(46)*acd76(122)
      acd76(123)=acd76(104)*acd76(105)
      acd76(124)=acd76(97)*acd76(98)
      acd76(125)=acd76(102)*acd76(103)
      acd76(126)=acd76(94)*acd76(95)
      acd76(127)=acd76(92)*acd76(93)
      acd76(128)=acd76(90)*acd76(91)
      acd76(129)=acd76(88)*acd76(89)
      acd76(130)=acd76(25)*acd76(28)
      acd76(131)=acd76(1)*acd76(6)
      acd76(132)=acd76(99)*acd76(100)
      acd76(133)=acd76(83)*acd76(85)
      acd76(117)=-acd76(87)*acd76(117)
      acd76(119)=-acd76(84)*acd76(119)
      acd76(113)=-acd76(34)*acd76(113)
      acd76(134)=acd76(17)*acd76(22)
      brack=acd76(106)+acd76(107)+acd76(108)+acd76(109)+acd76(110)+acd76(111)+a&
      &cd76(112)+acd76(113)+acd76(114)+acd76(115)+acd76(116)+acd76(117)+acd76(1&
      &18)+acd76(119)+acd76(120)+acd76(121)+acd76(122)+acd76(123)+acd76(124)+ac&
      &d76(125)+acd76(126)+acd76(127)+acd76(128)+acd76(129)+acd76(130)+acd76(13&
      &1)+acd76(132)+acd76(133)+acd76(134)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd76h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(112) :: acd76
      complex(ki) :: brack
      acd76(1)=d(iv1,iv2)
      acd76(2)=dotproduct(qshift,spvak1k3)
      acd76(3)=abb76(48)
      acd76(4)=dotproduct(qshift,spvak1l6)
      acd76(5)=abb76(35)
      acd76(6)=dotproduct(qshift,spvak7k3)
      acd76(7)=abb76(56)
      acd76(8)=dotproduct(qshift,spvak7l6)
      acd76(9)=abb76(49)
      acd76(10)=abb76(26)
      acd76(11)=k1(iv1)
      acd76(12)=spval5k2(iv2)
      acd76(13)=abb76(74)
      acd76(14)=spval5l6(iv2)
      acd76(15)=abb76(66)
      acd76(16)=k1(iv2)
      acd76(17)=spval5k2(iv1)
      acd76(18)=spval5l6(iv1)
      acd76(19)=k2(iv1)
      acd76(20)=spvak1k3(iv2)
      acd76(21)=abb76(43)
      acd76(22)=spvak1l6(iv2)
      acd76(23)=abb76(33)
      acd76(24)=spvak7k3(iv2)
      acd76(25)=abb76(55)
      acd76(26)=spvak7l6(iv2)
      acd76(27)=abb76(45)
      acd76(28)=k2(iv2)
      acd76(29)=spvak1k3(iv1)
      acd76(30)=spvak1l6(iv1)
      acd76(31)=spvak7k3(iv1)
      acd76(32)=spvak7l6(iv1)
      acd76(33)=l5(iv1)
      acd76(34)=abb76(47)
      acd76(35)=abb76(32)
      acd76(36)=abb76(51)
      acd76(37)=abb76(44)
      acd76(38)=l5(iv2)
      acd76(39)=l6(iv1)
      acd76(40)=abb76(77)
      acd76(41)=l6(iv2)
      acd76(42)=k7(iv1)
      acd76(43)=abb76(75)
      acd76(44)=abb76(65)
      acd76(45)=k7(iv2)
      acd76(46)=qshift(iv1)
      acd76(47)=qshift(iv2)
      acd76(48)=abb76(50)
      acd76(49)=abb76(36)
      acd76(50)=abb76(39)
      acd76(51)=spval5k1(iv2)
      acd76(52)=abb76(38)
      acd76(53)=spval5k3(iv2)
      acd76(54)=spval5k7(iv2)
      acd76(55)=abb76(34)
      acd76(56)=spval5k1(iv1)
      acd76(57)=spval5k3(iv1)
      acd76(58)=spval5k7(iv1)
      acd76(59)=abb76(54)
      acd76(60)=abb76(68)
      acd76(61)=abb76(70)
      acd76(62)=abb76(41)
      acd76(63)=abb76(63)
      acd76(64)=abb76(82)
      acd76(65)=spvak1k2(iv2)
      acd76(66)=abb76(40)
      acd76(67)=spvak4k3(iv2)
      acd76(68)=abb76(19)
      acd76(69)=spvak1k7(iv2)
      acd76(70)=abb76(27)
      acd76(71)=spvak2l6(iv2)
      acd76(72)=abb76(18)
      acd76(73)=spvak7k2(iv2)
      acd76(74)=abb76(80)
      acd76(75)=spvak4l6(iv2)
      acd76(76)=abb76(13)
      acd76(77)=spvak7k1(iv2)
      acd76(78)=abb76(81)
      acd76(79)=spvak1k2(iv1)
      acd76(80)=spvak4k3(iv1)
      acd76(81)=spvak1k7(iv1)
      acd76(82)=spvak2l6(iv1)
      acd76(83)=spvak7k2(iv1)
      acd76(84)=spvak4l6(iv1)
      acd76(85)=spvak7k1(iv1)
      acd76(86)=dotproduct(qshift,spvak4k3)
      acd76(87)=abb76(10)
      acd76(88)=abb76(17)
      acd76(89)=dotproduct(qshift,spvak1k2)
      acd76(90)=dotproduct(qshift,spvak7k2)
      acd76(91)=abb76(11)
      acd76(92)=abb76(71)
      acd76(93)=dotproduct(qshift,spval5l6)
      acd76(94)=abb76(12)
      acd76(95)=abb76(16)
      acd76(96)=acd76(77)*acd76(78)
      acd76(97)=acd76(76)*acd76(75)
      acd76(98)=acd76(72)*acd76(71)
      acd76(99)=acd76(69)*acd76(70)
      acd76(100)=acd76(43)*acd76(45)
      acd76(101)=acd76(40)*acd76(41)
      acd76(102)=acd76(13)*acd76(16)
      acd76(103)=acd76(73)*acd76(74)
      acd76(104)=acd76(65)*acd76(66)
      acd76(105)=acd76(24)*acd76(59)
      acd76(106)=acd76(20)*acd76(48)
      acd76(107)=acd76(67)*acd76(68)
      acd76(108)=acd76(26)*acd76(61)
      acd76(109)=acd76(22)*acd76(50)
      acd76(110)=acd76(14)*acd76(64)
      acd76(96)=acd76(110)+acd76(109)+acd76(108)+acd76(107)+acd76(106)+acd76(10&
      &5)+acd76(104)+acd76(103)+acd76(102)+acd76(101)+acd76(100)+acd76(99)+acd7&
      &6(98)+acd76(96)+acd76(97)
      acd76(96)=acd76(17)*acd76(96)
      acd76(97)=acd76(78)*acd76(85)
      acd76(98)=acd76(76)*acd76(84)
      acd76(99)=acd76(72)*acd76(82)
      acd76(100)=acd76(70)*acd76(81)
      acd76(101)=acd76(42)*acd76(43)
      acd76(102)=acd76(40)*acd76(39)
      acd76(103)=acd76(11)*acd76(13)
      acd76(104)=acd76(83)*acd76(74)
      acd76(105)=acd76(79)*acd76(66)
      acd76(106)=acd76(31)*acd76(59)
      acd76(107)=acd76(29)*acd76(48)
      acd76(108)=acd76(80)*acd76(68)
      acd76(109)=acd76(32)*acd76(61)
      acd76(110)=acd76(30)*acd76(50)
      acd76(111)=acd76(18)*acd76(64)
      acd76(97)=acd76(111)+acd76(110)+acd76(109)+acd76(108)+acd76(107)+acd76(10&
      &6)+acd76(105)+acd76(104)+acd76(103)+acd76(102)+acd76(101)+acd76(100)+acd&
      &76(99)+acd76(97)+acd76(98)
      acd76(97)=acd76(12)*acd76(97)
      acd76(98)=acd76(91)*acd76(73)
      acd76(99)=acd76(87)*acd76(65)
      acd76(98)=acd76(98)+acd76(99)
      acd76(99)=-acd76(86)*acd76(98)
      acd76(100)=acd76(91)*acd76(90)
      acd76(101)=acd76(87)*acd76(89)
      acd76(100)=acd76(100)+acd76(101)
      acd76(101)=-acd76(67)*acd76(100)
      acd76(102)=acd76(44)*acd76(45)
      acd76(103)=acd76(15)*acd76(16)
      acd76(104)=-acd76(62)*acd76(77)
      acd76(105)=acd76(55)*acd76(69)
      acd76(106)=acd76(73)*acd76(92)
      acd76(107)=acd76(65)*acd76(88)
      acd76(108)=-acd76(24)*acd76(60)
      acd76(109)=-acd76(20)*acd76(49)
      acd76(99)=acd76(101)+acd76(109)+acd76(108)+acd76(107)+acd76(106)+acd76(10&
      &5)+acd76(104)+acd76(102)+acd76(103)+acd76(99)
      acd76(99)=acd76(18)*acd76(99)
      acd76(101)=acd76(91)*acd76(83)
      acd76(102)=acd76(87)*acd76(79)
      acd76(101)=acd76(101)+acd76(102)
      acd76(102)=-acd76(86)*acd76(101)
      acd76(100)=-acd76(80)*acd76(100)
      acd76(103)=acd76(42)*acd76(44)
      acd76(104)=acd76(11)*acd76(15)
      acd76(105)=-acd76(62)*acd76(85)
      acd76(106)=acd76(55)*acd76(81)
      acd76(107)=acd76(83)*acd76(92)
      acd76(108)=acd76(79)*acd76(88)
      acd76(109)=-acd76(31)*acd76(60)
      acd76(110)=-acd76(29)*acd76(49)
      acd76(100)=acd76(100)+acd76(110)+acd76(109)+acd76(108)+acd76(107)+acd76(1&
      &06)+acd76(105)+acd76(103)+acd76(104)+acd76(102)
      acd76(100)=acd76(14)*acd76(100)
      acd76(102)=acd76(54)*acd76(63)
      acd76(103)=acd76(62)*acd76(51)
      acd76(104)=acd76(60)*acd76(53)
      acd76(105)=2.0_ki*acd76(47)
      acd76(106)=-acd76(9)*acd76(105)
      acd76(107)=acd76(38)*acd76(37)
      acd76(108)=acd76(28)*acd76(27)
      acd76(102)=acd76(108)+acd76(107)+acd76(106)+acd76(104)+acd76(102)+acd76(1&
      &03)
      acd76(102)=acd76(32)*acd76(102)
      acd76(103)=acd76(51)*acd76(52)
      acd76(104)=-acd76(55)*acd76(54)
      acd76(106)=acd76(49)*acd76(53)
      acd76(107)=-acd76(5)*acd76(105)
      acd76(108)=acd76(38)*acd76(35)
      acd76(109)=acd76(28)*acd76(23)
      acd76(103)=acd76(109)+acd76(108)+acd76(107)+acd76(106)+acd76(103)+acd76(1&
      &04)
      acd76(103)=acd76(30)*acd76(103)
      acd76(104)=acd76(58)*acd76(63)
      acd76(106)=acd76(62)*acd76(56)
      acd76(107)=acd76(60)*acd76(57)
      acd76(108)=2.0_ki*acd76(46)
      acd76(109)=-acd76(9)*acd76(108)
      acd76(110)=acd76(33)*acd76(37)
      acd76(111)=acd76(19)*acd76(27)
      acd76(104)=acd76(111)+acd76(110)+acd76(109)+acd76(107)+acd76(104)+acd76(1&
      &06)
      acd76(104)=acd76(26)*acd76(104)
      acd76(106)=acd76(52)*acd76(56)
      acd76(107)=-acd76(55)*acd76(58)
      acd76(109)=acd76(49)*acd76(57)
      acd76(110)=-acd76(5)*acd76(108)
      acd76(111)=acd76(33)*acd76(35)
      acd76(112)=acd76(19)*acd76(23)
      acd76(106)=acd76(112)+acd76(111)+acd76(110)+acd76(109)+acd76(106)+acd76(1&
      &07)
      acd76(106)=acd76(22)*acd76(106)
      acd76(107)=-acd76(9)*acd76(8)
      acd76(109)=-acd76(7)*acd76(6)
      acd76(110)=-acd76(5)*acd76(4)
      acd76(111)=-acd76(3)*acd76(2)
      acd76(107)=acd76(111)+acd76(110)+acd76(109)+acd76(10)+acd76(107)
      acd76(107)=acd76(1)*acd76(107)
      acd76(109)=-acd76(7)*acd76(105)
      acd76(110)=acd76(38)*acd76(36)
      acd76(111)=acd76(28)*acd76(25)
      acd76(109)=acd76(111)+acd76(109)+acd76(110)
      acd76(109)=acd76(31)*acd76(109)
      acd76(105)=-acd76(3)*acd76(105)
      acd76(110)=acd76(38)*acd76(34)
      acd76(111)=acd76(28)*acd76(21)
      acd76(105)=acd76(111)+acd76(105)+acd76(110)
      acd76(105)=acd76(29)*acd76(105)
      acd76(110)=-acd76(7)*acd76(108)
      acd76(111)=acd76(33)*acd76(36)
      acd76(112)=acd76(19)*acd76(25)
      acd76(110)=acd76(112)+acd76(110)+acd76(111)
      acd76(110)=acd76(24)*acd76(110)
      acd76(108)=-acd76(3)*acd76(108)
      acd76(111)=acd76(33)*acd76(34)
      acd76(112)=acd76(19)*acd76(21)
      acd76(108)=acd76(112)+acd76(108)+acd76(111)
      acd76(108)=acd76(20)*acd76(108)
      acd76(98)=-acd76(93)*acd76(98)
      acd76(111)=acd76(73)*acd76(95)
      acd76(112)=acd76(65)*acd76(94)
      acd76(98)=acd76(111)+acd76(112)+acd76(98)
      acd76(98)=acd76(80)*acd76(98)
      acd76(101)=-acd76(93)*acd76(101)
      acd76(111)=acd76(83)*acd76(95)
      acd76(112)=acd76(79)*acd76(94)
      acd76(101)=acd76(111)+acd76(112)+acd76(101)
      acd76(101)=acd76(67)*acd76(101)
      brack=acd76(96)+acd76(97)+acd76(98)+acd76(99)+acd76(100)+acd76(101)+acd76&
      &(102)+acd76(103)+acd76(104)+acd76(105)+acd76(106)+2.0_ki*acd76(107)+acd7&
      &6(108)+acd76(109)+acd76(110)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd76h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd76
      complex(ki) :: brack
      acd76(1)=d(iv1,iv2)
      acd76(2)=spvak1k3(iv3)
      acd76(3)=abb76(48)
      acd76(4)=spvak1l6(iv3)
      acd76(5)=abb76(35)
      acd76(6)=spvak7k3(iv3)
      acd76(7)=abb76(56)
      acd76(8)=spvak7l6(iv3)
      acd76(9)=abb76(49)
      acd76(10)=d(iv1,iv3)
      acd76(11)=spvak1k3(iv2)
      acd76(12)=spvak1l6(iv2)
      acd76(13)=spvak7k3(iv2)
      acd76(14)=spvak7l6(iv2)
      acd76(15)=d(iv2,iv3)
      acd76(16)=spvak1k3(iv1)
      acd76(17)=spvak1l6(iv1)
      acd76(18)=spvak7k3(iv1)
      acd76(19)=spvak7l6(iv1)
      acd76(20)=spvak1k2(iv1)
      acd76(21)=spvak4k3(iv2)
      acd76(22)=spval5l6(iv3)
      acd76(23)=abb76(10)
      acd76(24)=spvak4k3(iv3)
      acd76(25)=spval5l6(iv2)
      acd76(26)=spvak1k2(iv2)
      acd76(27)=spvak4k3(iv1)
      acd76(28)=spval5l6(iv1)
      acd76(29)=spvak1k2(iv3)
      acd76(30)=spvak7k2(iv3)
      acd76(31)=abb76(11)
      acd76(32)=spvak7k2(iv2)
      acd76(33)=spvak7k2(iv1)
      acd76(34)=acd76(22)*acd76(21)
      acd76(35)=acd76(25)*acd76(24)
      acd76(34)=acd76(34)+acd76(35)
      acd76(35)=acd76(20)*acd76(34)
      acd76(36)=acd76(27)*acd76(22)
      acd76(37)=acd76(28)*acd76(24)
      acd76(36)=acd76(36)+acd76(37)
      acd76(37)=acd76(26)*acd76(36)
      acd76(38)=acd76(27)*acd76(25)
      acd76(39)=acd76(28)*acd76(21)
      acd76(38)=acd76(38)+acd76(39)
      acd76(39)=acd76(29)*acd76(38)
      acd76(35)=acd76(39)+acd76(35)+acd76(37)
      acd76(35)=acd76(23)*acd76(35)
      acd76(37)=acd76(30)*acd76(38)
      acd76(36)=acd76(32)*acd76(36)
      acd76(34)=acd76(33)*acd76(34)
      acd76(34)=acd76(34)+acd76(36)+acd76(37)
      acd76(34)=acd76(31)*acd76(34)
      acd76(36)=acd76(16)*acd76(3)
      acd76(37)=acd76(17)*acd76(5)
      acd76(38)=acd76(18)*acd76(7)
      acd76(39)=acd76(19)*acd76(9)
      acd76(36)=acd76(39)+acd76(38)+acd76(37)+acd76(36)
      acd76(37)=2.0_ki*acd76(15)
      acd76(36)=acd76(37)*acd76(36)
      acd76(37)=acd76(11)*acd76(3)
      acd76(38)=acd76(12)*acd76(5)
      acd76(39)=acd76(13)*acd76(7)
      acd76(40)=acd76(14)*acd76(9)
      acd76(37)=acd76(40)+acd76(39)+acd76(38)+acd76(37)
      acd76(38)=2.0_ki*acd76(10)
      acd76(37)=acd76(38)*acd76(37)
      acd76(38)=acd76(2)*acd76(3)
      acd76(39)=acd76(4)*acd76(5)
      acd76(40)=acd76(6)*acd76(7)
      acd76(41)=acd76(8)*acd76(9)
      acd76(38)=acd76(41)+acd76(40)+acd76(39)+acd76(38)
      acd76(39)=2.0_ki*acd76(1)
      acd76(38)=acd76(39)*acd76(38)
      brack=acd76(34)+acd76(35)+acd76(36)+acd76(37)+acd76(38)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd76h2
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
!---#[ subroutine reconstruct_d76:
   subroutine     reconstruct_d76(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_76:
      coeffs%coeffs_76%c0 = derivative(czip)
      coeffs%coeffs_76%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_76%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_76%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_76%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_76%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_76%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_76%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_76%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_76%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_76%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_76%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_76%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_76%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_76%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_76%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_76%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_76%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_76%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_76%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_76%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_76%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_76%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_76%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_76%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_76%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_76%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_76%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_76%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_76%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_76%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_76%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_76%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_76%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_76%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_76:
   end subroutine reconstruct_d76
!---#] subroutine reconstruct_d76:
end module     p1_dbarc_epnebbbarg_d76h2l1d