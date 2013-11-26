module     p9_csbar_epnebbbarg_d78h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d78h0l1d.f90
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
   public :: derivative , reconstruct_d78
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd78h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(110) :: acd78
      complex(ki) :: brack
      acd78(1)=dotproduct(k1,qshift)
      acd78(2)=dotproduct(qshift,spval6k3)
      acd78(3)=abb78(87)
      acd78(4)=dotproduct(qshift,spvak7k2)
      acd78(5)=abb78(80)
      acd78(6)=dotproduct(qshift,spvak7k3)
      acd78(7)=abb78(74)
      acd78(8)=abb78(25)
      acd78(9)=dotproduct(k2,qshift)
      acd78(10)=abb78(88)
      acd78(11)=abb78(73)
      acd78(12)=abb78(55)
      acd78(13)=dotproduct(qshift,spval5k1)
      acd78(14)=abb78(19)
      acd78(15)=abb78(42)
      acd78(16)=dotproduct(l5,qshift)
      acd78(17)=abb78(72)
      acd78(18)=dotproduct(l6,qshift)
      acd78(19)=abb78(64)
      acd78(20)=dotproduct(qshift,spvak7k1)
      acd78(21)=abb78(77)
      acd78(22)=abb78(56)
      acd78(23)=dotproduct(k7,qshift)
      acd78(24)=abb78(44)
      acd78(25)=dotproduct(qshift,spval5k2)
      acd78(26)=abb78(26)
      acd78(27)=dotproduct(qshift,spval6k1)
      acd78(28)=abb78(69)
      acd78(29)=dotproduct(qshift,spval6k2)
      acd78(30)=abb78(23)
      acd78(31)=abb78(53)
      acd78(32)=dotproduct(qshift,qshift)
      acd78(33)=abb78(63)
      acd78(34)=abb78(76)
      acd78(35)=abb78(62)
      acd78(36)=abb78(71)
      acd78(37)=abb78(34)
      acd78(38)=abb78(89)
      acd78(39)=abb78(10)
      acd78(40)=dotproduct(qshift,spvak4k3)
      acd78(41)=abb78(36)
      acd78(42)=abb78(24)
      acd78(43)=abb78(33)
      acd78(44)=dotproduct(qshift,spval5k3)
      acd78(45)=abb78(28)
      acd78(46)=dotproduct(qshift,spval5l6)
      acd78(47)=abb78(38)
      acd78(48)=dotproduct(qshift,spval5k7)
      acd78(49)=abb78(50)
      acd78(50)=dotproduct(qshift,spval6k7)
      acd78(51)=abb78(84)
      acd78(52)=abb78(11)
      acd78(53)=abb78(46)
      acd78(54)=abb78(32)
      acd78(55)=abb78(52)
      acd78(56)=dotproduct(qshift,spvak1k2)
      acd78(57)=dotproduct(qshift,spvak4k2)
      acd78(58)=abb78(13)
      acd78(59)=abb78(51)
      acd78(60)=dotproduct(qshift,spvak7l6)
      acd78(61)=abb78(37)
      acd78(62)=abb78(27)
      acd78(63)=abb78(85)
      acd78(64)=abb78(31)
      acd78(65)=abb78(86)
      acd78(66)=abb78(15)
      acd78(67)=abb78(14)
      acd78(68)=abb78(43)
      acd78(69)=abb78(65)
      acd78(70)=abb78(68)
      acd78(71)=abb78(12)
      acd78(72)=abb78(41)
      acd78(73)=abb78(9)
      acd78(74)=dotproduct(qshift,spvak2k1)
      acd78(75)=abb78(21)
      acd78(76)=dotproduct(qshift,spvak4k1)
      acd78(77)=abb78(29)
      acd78(78)=dotproduct(qshift,spval6l5)
      acd78(79)=abb78(16)
      acd78(80)=dotproduct(qshift,spvak7l5)
      acd78(81)=abb78(20)
      acd78(82)=abb78(18)
      acd78(83)=abb78(60)
      acd78(84)=abb78(91)
      acd78(85)=abb78(90)
      acd78(86)=abb78(83)
      acd78(87)=abb78(81)
      acd78(88)=abb78(17)
      acd78(89)=acd78(1)-acd78(16)
      acd78(90)=-acd78(5)*acd78(89)
      acd78(91)=-acd78(48)*acd78(49)
      acd78(92)=-acd78(46)*acd78(47)
      acd78(93)=acd78(44)*acd78(45)
      acd78(94)=acd78(50)*acd78(51)
      acd78(95)=acd78(18)*acd78(19)
      acd78(96)=-acd78(32)*acd78(34)
      acd78(97)=acd78(9)*acd78(11)
      acd78(98)=acd78(2)*acd78(37)
      acd78(99)=-acd78(27)*acd78(42)
      acd78(100)=-acd78(27)*acd78(41)
      acd78(100)=acd78(43)+acd78(100)
      acd78(100)=acd78(40)*acd78(100)
      acd78(101)=acd78(13)*acd78(39)
      acd78(90)=acd78(101)+acd78(100)+acd78(99)+acd78(98)+acd78(97)+acd78(96)+a&
      &cd78(95)+acd78(94)+acd78(93)+acd78(92)-acd78(52)+acd78(91)+acd78(90)
      acd78(90)=acd78(4)*acd78(90)
      acd78(91)=acd78(57)*acd78(58)
      acd78(92)=acd78(49)*acd78(56)
      acd78(93)=acd78(60)*acd78(61)
      acd78(94)=acd78(23)*acd78(24)
      acd78(95)=acd78(9)*acd78(14)
      acd78(96)=acd78(25)*acd78(54)
      acd78(97)=acd78(29)*acd78(55)
      acd78(98)=acd78(6)*acd78(53)
      acd78(99)=-acd78(40)*acd78(59)
      acd78(91)=acd78(99)+acd78(98)+acd78(97)+acd78(96)+acd78(95)+acd78(94)+acd&
      &78(93)+acd78(92)-acd78(62)+acd78(91)
      acd78(91)=acd78(13)*acd78(91)
      acd78(92)=acd78(7)*acd78(89)
      acd78(93)=-acd78(32)*acd78(35)
      acd78(94)=acd78(9)*acd78(12)
      acd78(95)=-acd78(25)*acd78(45)
      acd78(96)=acd78(27)*acd78(38)
      acd78(97)=-acd78(29)*acd78(37)
      acd78(92)=acd78(97)+acd78(96)+acd78(95)+acd78(94)+acd78(93)+acd78(92)
      acd78(92)=acd78(6)*acd78(92)
      acd78(93)=-acd78(25)*acd78(63)
      acd78(94)=acd78(29)*acd78(41)
      acd78(93)=acd78(94)+acd78(64)+acd78(93)
      acd78(93)=acd78(20)*acd78(93)
      acd78(94)=acd78(80)*acd78(81)
      acd78(95)=acd78(78)*acd78(79)
      acd78(96)=acd78(27)*acd78(68)
      acd78(97)=acd78(29)*acd78(71)
      acd78(93)=acd78(93)+acd78(97)+acd78(96)+acd78(95)-acd78(82)+acd78(94)
      acd78(93)=acd78(40)*acd78(93)
      acd78(94)=acd78(50)*acd78(65)
      acd78(95)=acd78(18)*acd78(21)
      acd78(96)=-acd78(2)*acd78(38)
      acd78(97)=acd78(29)*acd78(42)
      acd78(94)=acd78(97)+acd78(96)+acd78(95)-acd78(66)+acd78(94)
      acd78(94)=acd78(20)*acd78(94)
      acd78(89)=acd78(3)*acd78(89)
      acd78(95)=-acd78(32)*acd78(33)
      acd78(96)=acd78(9)*acd78(10)
      acd78(89)=acd78(96)+acd78(95)+acd78(89)
      acd78(89)=acd78(2)*acd78(89)
      acd78(95)=acd78(60)*acd78(47)
      acd78(96)=acd78(23)*acd78(26)
      acd78(95)=acd78(96)-acd78(67)+acd78(95)
      acd78(95)=acd78(25)*acd78(95)
      acd78(96)=acd78(60)*acd78(69)
      acd78(97)=acd78(23)*acd78(28)
      acd78(96)=acd78(97)-acd78(70)+acd78(96)
      acd78(96)=acd78(27)*acd78(96)
      acd78(97)=acd78(60)*acd78(72)
      acd78(98)=acd78(23)*acd78(30)
      acd78(97)=acd78(98)-acd78(73)+acd78(97)
      acd78(97)=acd78(29)*acd78(97)
      acd78(98)=-acd78(76)*acd78(77)
      acd78(99)=-acd78(74)*acd78(75)
      acd78(100)=-acd78(48)*acd78(86)
      acd78(101)=-acd78(46)*acd78(85)
      acd78(102)=-acd78(44)*acd78(84)
      acd78(103)=-acd78(50)*acd78(87)
      acd78(104)=-acd78(18)*acd78(22)
      acd78(105)=acd78(32)*acd78(36)
      acd78(106)=-acd78(16)*acd78(17)
      acd78(107)=-acd78(1)*acd78(8)
      acd78(108)=-acd78(60)*acd78(83)
      acd78(109)=-acd78(23)*acd78(31)
      acd78(110)=-acd78(9)*acd78(15)
      brack=acd78(88)+acd78(89)+acd78(90)+acd78(91)+acd78(92)+acd78(93)+acd78(9&
      &4)+acd78(95)+acd78(96)+acd78(97)+acd78(98)+acd78(99)+acd78(100)+acd78(10&
      &1)+acd78(102)+acd78(103)+acd78(104)+acd78(105)+acd78(106)+acd78(107)+acd&
      &78(108)+acd78(109)+acd78(110)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd78h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(142) :: acd78
      complex(ki) :: brack
      acd78(1)=k1(iv1)
      acd78(2)=dotproduct(qshift,spval6k3)
      acd78(3)=abb78(87)
      acd78(4)=dotproduct(qshift,spvak7k2)
      acd78(5)=abb78(80)
      acd78(6)=dotproduct(qshift,spvak7k3)
      acd78(7)=abb78(74)
      acd78(8)=abb78(25)
      acd78(9)=k2(iv1)
      acd78(10)=abb78(88)
      acd78(11)=abb78(73)
      acd78(12)=abb78(55)
      acd78(13)=dotproduct(qshift,spval5k1)
      acd78(14)=abb78(19)
      acd78(15)=abb78(42)
      acd78(16)=l5(iv1)
      acd78(17)=abb78(72)
      acd78(18)=l6(iv1)
      acd78(19)=abb78(64)
      acd78(20)=dotproduct(qshift,spvak7k1)
      acd78(21)=abb78(77)
      acd78(22)=abb78(56)
      acd78(23)=k7(iv1)
      acd78(24)=abb78(44)
      acd78(25)=dotproduct(qshift,spval5k2)
      acd78(26)=abb78(26)
      acd78(27)=dotproduct(qshift,spval6k1)
      acd78(28)=abb78(69)
      acd78(29)=dotproduct(qshift,spval6k2)
      acd78(30)=abb78(23)
      acd78(31)=abb78(53)
      acd78(32)=qshift(iv1)
      acd78(33)=abb78(63)
      acd78(34)=abb78(76)
      acd78(35)=abb78(62)
      acd78(36)=abb78(71)
      acd78(37)=spval6k3(iv1)
      acd78(38)=dotproduct(k1,qshift)
      acd78(39)=dotproduct(k2,qshift)
      acd78(40)=dotproduct(l5,qshift)
      acd78(41)=dotproduct(qshift,qshift)
      acd78(42)=abb78(34)
      acd78(43)=abb78(89)
      acd78(44)=spvak7k2(iv1)
      acd78(45)=dotproduct(l6,qshift)
      acd78(46)=abb78(10)
      acd78(47)=dotproduct(qshift,spvak4k3)
      acd78(48)=abb78(36)
      acd78(49)=abb78(24)
      acd78(50)=abb78(33)
      acd78(51)=dotproduct(qshift,spval5k3)
      acd78(52)=abb78(28)
      acd78(53)=dotproduct(qshift,spval5l6)
      acd78(54)=abb78(38)
      acd78(55)=dotproduct(qshift,spval5k7)
      acd78(56)=abb78(50)
      acd78(57)=dotproduct(qshift,spval6k7)
      acd78(58)=abb78(84)
      acd78(59)=abb78(11)
      acd78(60)=spvak7k3(iv1)
      acd78(61)=abb78(46)
      acd78(62)=spval5k1(iv1)
      acd78(63)=dotproduct(k7,qshift)
      acd78(64)=abb78(32)
      acd78(65)=abb78(52)
      acd78(66)=dotproduct(qshift,spvak1k2)
      acd78(67)=dotproduct(qshift,spvak4k2)
      acd78(68)=abb78(13)
      acd78(69)=abb78(51)
      acd78(70)=dotproduct(qshift,spvak7l6)
      acd78(71)=abb78(37)
      acd78(72)=abb78(27)
      acd78(73)=spvak7k1(iv1)
      acd78(74)=abb78(85)
      acd78(75)=abb78(31)
      acd78(76)=abb78(86)
      acd78(77)=abb78(15)
      acd78(78)=spval5k2(iv1)
      acd78(79)=abb78(14)
      acd78(80)=spval6k1(iv1)
      acd78(81)=abb78(43)
      acd78(82)=abb78(65)
      acd78(83)=abb78(68)
      acd78(84)=spval6k2(iv1)
      acd78(85)=abb78(12)
      acd78(86)=abb78(41)
      acd78(87)=abb78(9)
      acd78(88)=spvak1k2(iv1)
      acd78(89)=spvak2k1(iv1)
      acd78(90)=abb78(21)
      acd78(91)=spvak4k1(iv1)
      acd78(92)=abb78(29)
      acd78(93)=spvak4k2(iv1)
      acd78(94)=spvak4k3(iv1)
      acd78(95)=dotproduct(qshift,spval6l5)
      acd78(96)=abb78(16)
      acd78(97)=dotproduct(qshift,spvak7l5)
      acd78(98)=abb78(20)
      acd78(99)=abb78(18)
      acd78(100)=spval6l5(iv1)
      acd78(101)=spvak7l5(iv1)
      acd78(102)=spvak7l6(iv1)
      acd78(103)=abb78(60)
      acd78(104)=spval5k3(iv1)
      acd78(105)=abb78(91)
      acd78(106)=spval5l6(iv1)
      acd78(107)=abb78(90)
      acd78(108)=spval5k7(iv1)
      acd78(109)=abb78(83)
      acd78(110)=spval6k7(iv1)
      acd78(111)=abb78(81)
      acd78(112)=acd78(57)*acd78(58)
      acd78(113)=acd78(19)*acd78(45)
      acd78(114)=-acd78(41)*acd78(34)
      acd78(115)=-acd78(56)*acd78(55)
      acd78(116)=-acd78(54)*acd78(53)
      acd78(117)=acd78(52)*acd78(51)
      acd78(118)=acd78(39)*acd78(11)
      acd78(119)=acd78(38)-acd78(40)
      acd78(120)=-acd78(5)*acd78(119)
      acd78(121)=acd78(2)*acd78(42)
      acd78(122)=-acd78(27)*acd78(49)
      acd78(123)=acd78(13)*acd78(46)
      acd78(124)=acd78(27)*acd78(48)
      acd78(124)=acd78(124)-acd78(50)
      acd78(125)=-acd78(47)*acd78(124)
      acd78(112)=acd78(125)+acd78(123)+acd78(122)+acd78(121)+acd78(120)+acd78(1&
      &18)+acd78(117)+acd78(116)+acd78(115)+acd78(114)+acd78(113)-acd78(59)+acd&
      &78(112)
      acd78(112)=acd78(44)*acd78(112)
      acd78(113)=acd78(1)-acd78(16)
      acd78(114)=-acd78(5)*acd78(113)
      acd78(115)=-acd78(47)*acd78(48)
      acd78(115)=acd78(115)-acd78(49)
      acd78(115)=acd78(80)*acd78(115)
      acd78(116)=acd78(110)*acd78(58)
      acd78(117)=acd78(18)*acd78(19)
      acd78(118)=-acd78(56)*acd78(108)
      acd78(120)=-acd78(54)*acd78(106)
      acd78(121)=acd78(52)*acd78(104)
      acd78(122)=2.0_ki*acd78(32)
      acd78(123)=-acd78(34)*acd78(122)
      acd78(125)=acd78(9)*acd78(11)
      acd78(126)=acd78(37)*acd78(42)
      acd78(124)=-acd78(94)*acd78(124)
      acd78(127)=acd78(62)*acd78(46)
      acd78(114)=acd78(127)+acd78(124)+acd78(126)+acd78(125)+acd78(123)+acd78(1&
      &21)+acd78(120)+acd78(118)+acd78(116)+acd78(117)+acd78(115)+acd78(114)
      acd78(114)=acd78(4)*acd78(114)
      acd78(115)=acd78(68)*acd78(93)
      acd78(116)=acd78(56)*acd78(88)
      acd78(117)=acd78(102)*acd78(71)
      acd78(118)=acd78(23)*acd78(24)
      acd78(120)=acd78(9)*acd78(14)
      acd78(121)=acd78(78)*acd78(64)
      acd78(123)=acd78(84)*acd78(65)
      acd78(124)=acd78(60)*acd78(61)
      acd78(115)=acd78(124)+acd78(123)+acd78(121)+acd78(120)+acd78(118)+acd78(1&
      &17)+acd78(115)+acd78(116)
      acd78(115)=acd78(13)*acd78(115)
      acd78(116)=acd78(68)*acd78(67)
      acd78(117)=acd78(70)*acd78(71)
      acd78(118)=acd78(63)*acd78(24)
      acd78(120)=acd78(56)*acd78(66)
      acd78(121)=acd78(39)*acd78(14)
      acd78(123)=acd78(25)*acd78(64)
      acd78(124)=acd78(29)*acd78(65)
      acd78(125)=acd78(6)*acd78(61)
      acd78(116)=acd78(125)+acd78(124)+acd78(123)+acd78(121)+acd78(120)+acd78(1&
      &18)+acd78(117)-acd78(72)+acd78(116)
      acd78(116)=acd78(62)*acd78(116)
      acd78(117)=acd78(25)*acd78(74)
      acd78(118)=acd78(29)*acd78(48)
      acd78(117)=-acd78(118)+acd78(117)-acd78(75)
      acd78(118)=-acd78(73)*acd78(117)
      acd78(120)=-acd78(78)*acd78(74)
      acd78(121)=acd78(84)*acd78(48)
      acd78(120)=acd78(120)+acd78(121)
      acd78(120)=acd78(20)*acd78(120)
      acd78(121)=acd78(98)*acd78(101)
      acd78(123)=acd78(96)*acd78(100)
      acd78(124)=acd78(80)*acd78(81)
      acd78(125)=acd78(84)*acd78(85)
      acd78(126)=-acd78(62)*acd78(69)
      acd78(118)=acd78(126)+acd78(120)+acd78(125)+acd78(124)+acd78(121)+acd78(1&
      &23)+acd78(118)
      acd78(118)=acd78(47)*acd78(118)
      acd78(120)=acd78(7)*acd78(113)
      acd78(121)=-acd78(35)*acd78(122)
      acd78(123)=acd78(9)*acd78(12)
      acd78(124)=-acd78(78)*acd78(52)
      acd78(125)=acd78(80)*acd78(43)
      acd78(126)=-acd78(84)*acd78(42)
      acd78(120)=acd78(126)+acd78(125)+acd78(124)+acd78(123)+acd78(121)+acd78(1&
      &20)
      acd78(120)=acd78(6)*acd78(120)
      acd78(117)=-acd78(20)*acd78(117)
      acd78(121)=acd78(98)*acd78(97)
      acd78(123)=acd78(96)*acd78(95)
      acd78(124)=acd78(27)*acd78(81)
      acd78(125)=acd78(29)*acd78(85)
      acd78(126)=-acd78(13)*acd78(69)
      acd78(117)=acd78(126)+acd78(117)+acd78(125)+acd78(124)+acd78(123)-acd78(9&
      &9)+acd78(121)
      acd78(117)=acd78(94)*acd78(117)
      acd78(121)=-acd78(41)*acd78(35)
      acd78(123)=acd78(39)*acd78(12)
      acd78(124)=acd78(7)*acd78(119)
      acd78(125)=-acd78(25)*acd78(52)
      acd78(126)=acd78(27)*acd78(43)
      acd78(121)=acd78(126)+acd78(125)+acd78(124)+acd78(121)+acd78(123)
      acd78(121)=acd78(60)*acd78(121)
      acd78(123)=acd78(102)*acd78(86)
      acd78(124)=acd78(23)*acd78(30)
      acd78(125)=acd78(73)*acd78(49)
      acd78(126)=-acd78(60)*acd78(42)
      acd78(123)=acd78(126)+acd78(125)+acd78(123)+acd78(124)
      acd78(123)=acd78(29)*acd78(123)
      acd78(124)=acd78(110)*acd78(76)
      acd78(125)=acd78(18)*acd78(21)
      acd78(126)=-acd78(37)*acd78(43)
      acd78(127)=acd78(84)*acd78(49)
      acd78(124)=acd78(127)+acd78(126)+acd78(124)+acd78(125)
      acd78(124)=acd78(20)*acd78(124)
      acd78(125)=-acd78(41)*acd78(33)
      acd78(126)=acd78(39)*acd78(10)
      acd78(119)=acd78(3)*acd78(119)
      acd78(119)=acd78(119)+acd78(125)+acd78(126)
      acd78(119)=acd78(37)*acd78(119)
      acd78(113)=acd78(3)*acd78(113)
      acd78(125)=-acd78(33)*acd78(122)
      acd78(126)=acd78(9)*acd78(10)
      acd78(113)=acd78(126)+acd78(125)+acd78(113)
      acd78(113)=acd78(2)*acd78(113)
      acd78(125)=acd78(57)*acd78(76)
      acd78(126)=acd78(21)*acd78(45)
      acd78(127)=-acd78(2)*acd78(43)
      acd78(125)=acd78(127)+acd78(126)-acd78(77)+acd78(125)
      acd78(125)=acd78(73)*acd78(125)
      acd78(126)=acd78(63)*acd78(26)
      acd78(127)=acd78(54)*acd78(70)
      acd78(126)=acd78(127)-acd78(79)+acd78(126)
      acd78(126)=acd78(78)*acd78(126)
      acd78(127)=acd78(102)*acd78(54)
      acd78(128)=acd78(23)*acd78(26)
      acd78(127)=acd78(127)+acd78(128)
      acd78(127)=acd78(25)*acd78(127)
      acd78(128)=acd78(70)*acd78(82)
      acd78(129)=acd78(63)*acd78(28)
      acd78(128)=acd78(129)-acd78(83)+acd78(128)
      acd78(128)=acd78(80)*acd78(128)
      acd78(129)=acd78(102)*acd78(82)
      acd78(130)=acd78(23)*acd78(28)
      acd78(129)=acd78(129)+acd78(130)
      acd78(129)=acd78(27)*acd78(129)
      acd78(130)=acd78(70)*acd78(86)
      acd78(131)=acd78(63)*acd78(30)
      acd78(130)=acd78(131)-acd78(87)+acd78(130)
      acd78(130)=acd78(84)*acd78(130)
      acd78(131)=-acd78(91)*acd78(92)
      acd78(132)=-acd78(89)*acd78(90)
      acd78(133)=-acd78(108)*acd78(109)
      acd78(134)=-acd78(106)*acd78(107)
      acd78(135)=-acd78(104)*acd78(105)
      acd78(136)=-acd78(110)*acd78(111)
      acd78(137)=-acd78(18)*acd78(22)
      acd78(122)=acd78(36)*acd78(122)
      acd78(138)=-acd78(16)*acd78(17)
      acd78(139)=-acd78(1)*acd78(8)
      acd78(140)=-acd78(102)*acd78(103)
      acd78(141)=-acd78(23)*acd78(31)
      acd78(142)=-acd78(9)*acd78(15)
      brack=acd78(112)+acd78(113)+acd78(114)+acd78(115)+acd78(116)+acd78(117)+a&
      &cd78(118)+acd78(119)+acd78(120)+acd78(121)+acd78(122)+acd78(123)+acd78(1&
      &24)+acd78(125)+acd78(126)+acd78(127)+acd78(128)+acd78(129)+acd78(130)+ac&
      &d78(131)+acd78(132)+acd78(133)+acd78(134)+acd78(135)+acd78(136)+acd78(13&
      &7)+acd78(138)+acd78(139)+acd78(140)+acd78(141)+acd78(142)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd78h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(121) :: acd78
      complex(ki) :: brack
      acd78(1)=d(iv1,iv2)
      acd78(2)=dotproduct(qshift,spval6k3)
      acd78(3)=abb78(63)
      acd78(4)=dotproduct(qshift,spvak7k2)
      acd78(5)=abb78(76)
      acd78(6)=dotproduct(qshift,spvak7k3)
      acd78(7)=abb78(62)
      acd78(8)=abb78(71)
      acd78(9)=k1(iv1)
      acd78(10)=spval6k3(iv2)
      acd78(11)=abb78(87)
      acd78(12)=spvak7k2(iv2)
      acd78(13)=abb78(80)
      acd78(14)=spvak7k3(iv2)
      acd78(15)=abb78(74)
      acd78(16)=k1(iv2)
      acd78(17)=spval6k3(iv1)
      acd78(18)=spvak7k2(iv1)
      acd78(19)=spvak7k3(iv1)
      acd78(20)=k2(iv1)
      acd78(21)=abb78(88)
      acd78(22)=abb78(73)
      acd78(23)=abb78(55)
      acd78(24)=spval5k1(iv2)
      acd78(25)=abb78(19)
      acd78(26)=k2(iv2)
      acd78(27)=spval5k1(iv1)
      acd78(28)=l5(iv1)
      acd78(29)=l5(iv2)
      acd78(30)=l6(iv1)
      acd78(31)=abb78(64)
      acd78(32)=spvak7k1(iv2)
      acd78(33)=abb78(77)
      acd78(34)=l6(iv2)
      acd78(35)=spvak7k1(iv1)
      acd78(36)=k7(iv1)
      acd78(37)=abb78(44)
      acd78(38)=spval5k2(iv2)
      acd78(39)=abb78(26)
      acd78(40)=spval6k1(iv2)
      acd78(41)=abb78(69)
      acd78(42)=spval6k2(iv2)
      acd78(43)=abb78(23)
      acd78(44)=k7(iv2)
      acd78(45)=spval5k2(iv1)
      acd78(46)=spval6k1(iv1)
      acd78(47)=spval6k2(iv1)
      acd78(48)=qshift(iv1)
      acd78(49)=qshift(iv2)
      acd78(50)=abb78(34)
      acd78(51)=abb78(89)
      acd78(52)=abb78(10)
      acd78(53)=dotproduct(qshift,spvak4k3)
      acd78(54)=abb78(36)
      acd78(55)=abb78(24)
      acd78(56)=spvak4k3(iv2)
      acd78(57)=dotproduct(qshift,spval6k1)
      acd78(58)=abb78(33)
      acd78(59)=spval5k3(iv2)
      acd78(60)=abb78(28)
      acd78(61)=spval5l6(iv2)
      acd78(62)=abb78(38)
      acd78(63)=spval5k7(iv2)
      acd78(64)=abb78(50)
      acd78(65)=spval6k7(iv2)
      acd78(66)=abb78(84)
      acd78(67)=spvak4k3(iv1)
      acd78(68)=spval5k3(iv1)
      acd78(69)=spval5l6(iv1)
      acd78(70)=spval5k7(iv1)
      acd78(71)=spval6k7(iv1)
      acd78(72)=abb78(46)
      acd78(73)=abb78(32)
      acd78(74)=abb78(52)
      acd78(75)=spvak1k2(iv2)
      acd78(76)=spvak4k2(iv2)
      acd78(77)=abb78(13)
      acd78(78)=abb78(51)
      acd78(79)=spvak7l6(iv2)
      acd78(80)=abb78(37)
      acd78(81)=spvak1k2(iv1)
      acd78(82)=spvak4k2(iv1)
      acd78(83)=spvak7l6(iv1)
      acd78(84)=abb78(85)
      acd78(85)=dotproduct(qshift,spval5k2)
      acd78(86)=dotproduct(qshift,spval6k2)
      acd78(87)=abb78(31)
      acd78(88)=abb78(86)
      acd78(89)=dotproduct(qshift,spvak7k1)
      acd78(90)=abb78(43)
      acd78(91)=abb78(65)
      acd78(92)=abb78(12)
      acd78(93)=abb78(41)
      acd78(94)=spval6l5(iv2)
      acd78(95)=abb78(16)
      acd78(96)=spvak7l5(iv2)
      acd78(97)=abb78(20)
      acd78(98)=spval6l5(iv1)
      acd78(99)=spvak7l5(iv1)
      acd78(100)=acd78(54)*acd78(53)
      acd78(101)=acd78(100)+acd78(55)
      acd78(102)=-acd78(40)*acd78(101)
      acd78(103)=acd78(65)*acd78(66)
      acd78(104)=acd78(31)*acd78(34)
      acd78(105)=2.0_ki*acd78(49)
      acd78(106)=-acd78(5)*acd78(105)
      acd78(107)=-acd78(64)*acd78(63)
      acd78(108)=-acd78(62)*acd78(61)
      acd78(109)=acd78(60)*acd78(59)
      acd78(110)=acd78(26)*acd78(22)
      acd78(111)=acd78(16)-acd78(29)
      acd78(112)=-acd78(13)*acd78(111)
      acd78(113)=acd78(10)*acd78(50)
      acd78(114)=acd78(24)*acd78(52)
      acd78(115)=acd78(54)*acd78(57)
      acd78(115)=acd78(115)-acd78(58)
      acd78(116)=-acd78(56)*acd78(115)
      acd78(102)=acd78(116)+acd78(114)+acd78(113)+acd78(112)+acd78(110)+acd78(1&
      &09)+acd78(108)+acd78(107)+acd78(106)+acd78(103)+acd78(104)+acd78(102)
      acd78(102)=acd78(18)*acd78(102)
      acd78(101)=-acd78(46)*acd78(101)
      acd78(103)=acd78(66)*acd78(71)
      acd78(104)=acd78(30)*acd78(31)
      acd78(106)=2.0_ki*acd78(48)
      acd78(107)=-acd78(5)*acd78(106)
      acd78(108)=-acd78(64)*acd78(70)
      acd78(109)=-acd78(62)*acd78(69)
      acd78(110)=acd78(60)*acd78(68)
      acd78(112)=acd78(20)*acd78(22)
      acd78(113)=acd78(9)-acd78(28)
      acd78(114)=-acd78(13)*acd78(113)
      acd78(116)=acd78(17)*acd78(50)
      acd78(117)=acd78(27)*acd78(52)
      acd78(115)=-acd78(67)*acd78(115)
      acd78(101)=acd78(115)+acd78(117)+acd78(116)+acd78(114)+acd78(112)+acd78(1&
      &10)+acd78(109)+acd78(108)+acd78(107)+acd78(103)+acd78(104)+acd78(101)
      acd78(101)=acd78(12)*acd78(101)
      acd78(103)=acd78(77)*acd78(76)
      acd78(104)=acd78(79)*acd78(80)
      acd78(107)=acd78(64)*acd78(75)
      acd78(108)=acd78(44)*acd78(37)
      acd78(109)=acd78(26)*acd78(25)
      acd78(110)=acd78(38)*acd78(73)
      acd78(112)=acd78(42)*acd78(74)
      acd78(114)=acd78(14)*acd78(72)
      acd78(103)=acd78(114)+acd78(112)+acd78(110)+acd78(109)+acd78(108)+acd78(1&
      &07)+acd78(103)+acd78(104)
      acd78(103)=acd78(27)*acd78(103)
      acd78(104)=acd78(77)*acd78(82)
      acd78(107)=acd78(83)*acd78(80)
      acd78(108)=acd78(64)*acd78(81)
      acd78(109)=acd78(36)*acd78(37)
      acd78(110)=acd78(20)*acd78(25)
      acd78(112)=acd78(45)*acd78(73)
      acd78(114)=acd78(47)*acd78(74)
      acd78(115)=acd78(19)*acd78(72)
      acd78(104)=acd78(115)+acd78(114)+acd78(112)+acd78(110)+acd78(109)+acd78(1&
      &08)+acd78(104)+acd78(107)
      acd78(104)=acd78(24)*acd78(104)
      acd78(107)=-acd78(40)*acd78(4)
      acd78(108)=acd78(42)*acd78(89)
      acd78(109)=acd78(32)*acd78(86)
      acd78(107)=acd78(109)+acd78(107)+acd78(108)
      acd78(107)=acd78(54)*acd78(107)
      acd78(108)=acd78(97)*acd78(96)
      acd78(109)=acd78(95)*acd78(94)
      acd78(110)=acd78(38)*acd78(84)
      acd78(112)=-acd78(89)*acd78(110)
      acd78(114)=acd78(40)*acd78(90)
      acd78(115)=acd78(42)*acd78(92)
      acd78(116)=acd78(84)*acd78(85)
      acd78(116)=acd78(116)-acd78(87)
      acd78(117)=-acd78(32)*acd78(116)
      acd78(118)=-acd78(24)*acd78(78)
      acd78(107)=acd78(107)+acd78(118)+acd78(117)+acd78(115)+acd78(114)+acd78(1&
      &12)+acd78(108)+acd78(109)
      acd78(107)=acd78(67)*acd78(107)
      acd78(108)=-acd78(46)*acd78(4)
      acd78(109)=acd78(47)*acd78(89)
      acd78(112)=acd78(35)*acd78(86)
      acd78(108)=acd78(112)+acd78(108)+acd78(109)
      acd78(108)=acd78(54)*acd78(108)
      acd78(109)=acd78(97)*acd78(99)
      acd78(112)=acd78(95)*acd78(98)
      acd78(114)=acd78(45)*acd78(84)
      acd78(115)=-acd78(89)*acd78(114)
      acd78(117)=acd78(46)*acd78(90)
      acd78(118)=acd78(47)*acd78(92)
      acd78(116)=-acd78(35)*acd78(116)
      acd78(119)=-acd78(27)*acd78(78)
      acd78(108)=acd78(108)+acd78(119)+acd78(116)+acd78(118)+acd78(117)+acd78(1&
      &15)+acd78(109)+acd78(112)
      acd78(108)=acd78(56)*acd78(108)
      acd78(109)=-acd78(7)*acd78(105)
      acd78(112)=acd78(26)*acd78(23)
      acd78(115)=acd78(15)*acd78(111)
      acd78(116)=-acd78(38)*acd78(60)
      acd78(117)=acd78(40)*acd78(51)
      acd78(118)=-acd78(42)*acd78(50)
      acd78(109)=acd78(118)+acd78(117)+acd78(116)+acd78(115)+acd78(109)+acd78(1&
      &12)
      acd78(109)=acd78(19)*acd78(109)
      acd78(112)=-acd78(7)*acd78(106)
      acd78(115)=acd78(20)*acd78(23)
      acd78(116)=acd78(15)*acd78(113)
      acd78(117)=-acd78(45)*acd78(60)
      acd78(118)=acd78(46)*acd78(51)
      acd78(119)=-acd78(47)*acd78(50)
      acd78(112)=acd78(119)+acd78(118)+acd78(117)+acd78(116)+acd78(112)+acd78(1&
      &15)
      acd78(112)=acd78(14)*acd78(112)
      acd78(115)=acd78(65)*acd78(88)
      acd78(116)=acd78(33)*acd78(34)
      acd78(110)=-acd78(53)*acd78(110)
      acd78(117)=-acd78(10)*acd78(51)
      acd78(118)=acd78(42)*acd78(55)
      acd78(110)=acd78(118)+acd78(117)+acd78(110)+acd78(115)+acd78(116)
      acd78(110)=acd78(35)*acd78(110)
      acd78(115)=acd78(71)*acd78(88)
      acd78(116)=acd78(30)*acd78(33)
      acd78(114)=-acd78(53)*acd78(114)
      acd78(117)=-acd78(17)*acd78(51)
      acd78(118)=acd78(47)*acd78(55)
      acd78(114)=acd78(118)+acd78(117)+acd78(114)+acd78(115)+acd78(116)
      acd78(114)=acd78(32)*acd78(114)
      acd78(115)=-acd78(7)*acd78(6)
      acd78(116)=-acd78(4)*acd78(5)
      acd78(117)=-acd78(3)*acd78(2)
      acd78(115)=acd78(117)+acd78(116)+acd78(8)+acd78(115)
      acd78(115)=acd78(1)*acd78(115)
      acd78(105)=-acd78(3)*acd78(105)
      acd78(116)=acd78(26)*acd78(21)
      acd78(111)=acd78(11)*acd78(111)
      acd78(105)=acd78(111)+acd78(105)+acd78(116)
      acd78(105)=acd78(17)*acd78(105)
      acd78(106)=-acd78(3)*acd78(106)
      acd78(111)=acd78(20)*acd78(21)
      acd78(113)=acd78(11)*acd78(113)
      acd78(106)=acd78(113)+acd78(106)+acd78(111)
      acd78(106)=acd78(10)*acd78(106)
      acd78(111)=acd78(62)*acd78(79)
      acd78(113)=acd78(44)*acd78(39)
      acd78(111)=acd78(111)+acd78(113)
      acd78(111)=acd78(45)*acd78(111)
      acd78(113)=acd78(62)*acd78(83)
      acd78(116)=acd78(36)*acd78(39)
      acd78(113)=acd78(113)+acd78(116)
      acd78(113)=acd78(38)*acd78(113)
      acd78(116)=acd78(79)*acd78(91)
      acd78(117)=acd78(44)*acd78(41)
      acd78(116)=acd78(116)+acd78(117)
      acd78(116)=acd78(46)*acd78(116)
      acd78(117)=acd78(83)*acd78(91)
      acd78(118)=acd78(36)*acd78(41)
      acd78(117)=acd78(117)+acd78(118)
      acd78(117)=acd78(40)*acd78(117)
      acd78(118)=acd78(79)*acd78(93)
      acd78(119)=acd78(44)*acd78(43)
      acd78(118)=acd78(118)+acd78(119)
      acd78(118)=acd78(47)*acd78(118)
      acd78(119)=acd78(83)*acd78(93)
      acd78(120)=acd78(36)*acd78(43)
      acd78(119)=acd78(119)+acd78(120)
      acd78(119)=acd78(42)*acd78(119)
      acd78(120)=acd78(35)*acd78(42)
      acd78(121)=acd78(32)*acd78(47)
      acd78(120)=acd78(120)+acd78(121)
      acd78(100)=acd78(120)*acd78(100)
      brack=acd78(100)+acd78(101)+acd78(102)+acd78(103)+acd78(104)+acd78(105)+a&
      &cd78(106)+acd78(107)+acd78(108)+acd78(109)+acd78(110)+acd78(111)+acd78(1&
      &12)+acd78(113)+acd78(114)+2.0_ki*acd78(115)+acd78(116)+acd78(117)+acd78(&
      &118)+acd78(119)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd78h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd78
      complex(ki) :: brack
      acd78(1)=d(iv1,iv2)
      acd78(2)=spval6k3(iv3)
      acd78(3)=abb78(63)
      acd78(4)=spvak7k2(iv3)
      acd78(5)=abb78(76)
      acd78(6)=spvak7k3(iv3)
      acd78(7)=abb78(62)
      acd78(8)=d(iv1,iv3)
      acd78(9)=spval6k3(iv2)
      acd78(10)=spvak7k2(iv2)
      acd78(11)=spvak7k3(iv2)
      acd78(12)=d(iv2,iv3)
      acd78(13)=spval6k3(iv1)
      acd78(14)=spvak7k2(iv1)
      acd78(15)=spvak7k3(iv1)
      acd78(16)=spvak4k3(iv2)
      acd78(17)=spval6k1(iv3)
      acd78(18)=abb78(36)
      acd78(19)=spvak4k3(iv3)
      acd78(20)=spval6k1(iv2)
      acd78(21)=spvak4k3(iv1)
      acd78(22)=spval6k1(iv1)
      acd78(23)=spval5k2(iv2)
      acd78(24)=spvak7k1(iv3)
      acd78(25)=abb78(85)
      acd78(26)=spval5k2(iv3)
      acd78(27)=spvak7k1(iv2)
      acd78(28)=spval6k2(iv3)
      acd78(29)=spval6k2(iv2)
      acd78(30)=spval5k2(iv1)
      acd78(31)=spvak7k1(iv1)
      acd78(32)=spval6k2(iv1)
      acd78(33)=-acd78(10)*acd78(17)
      acd78(34)=-acd78(4)*acd78(20)
      acd78(35)=acd78(27)*acd78(28)
      acd78(36)=acd78(24)*acd78(29)
      acd78(33)=acd78(36)+acd78(35)+acd78(33)+acd78(34)
      acd78(33)=acd78(21)*acd78(33)
      acd78(34)=-acd78(14)*acd78(20)
      acd78(35)=-acd78(10)*acd78(22)
      acd78(36)=acd78(31)*acd78(29)
      acd78(37)=acd78(27)*acd78(32)
      acd78(34)=acd78(37)+acd78(36)+acd78(34)+acd78(35)
      acd78(34)=acd78(19)*acd78(34)
      acd78(35)=-acd78(14)*acd78(17)
      acd78(36)=-acd78(4)*acd78(22)
      acd78(37)=acd78(31)*acd78(28)
      acd78(38)=acd78(24)*acd78(32)
      acd78(35)=acd78(38)+acd78(37)+acd78(35)+acd78(36)
      acd78(35)=acd78(16)*acd78(35)
      acd78(33)=acd78(35)+acd78(33)+acd78(34)
      acd78(33)=acd78(18)*acd78(33)
      acd78(34)=-acd78(7)*acd78(6)
      acd78(35)=-acd78(4)*acd78(5)
      acd78(36)=-acd78(3)*acd78(2)
      acd78(34)=acd78(36)+acd78(34)+acd78(35)
      acd78(34)=acd78(1)*acd78(34)
      acd78(35)=-acd78(12)*acd78(15)
      acd78(36)=-acd78(8)*acd78(11)
      acd78(35)=acd78(35)+acd78(36)
      acd78(35)=acd78(7)*acd78(35)
      acd78(36)=-acd78(12)*acd78(14)
      acd78(37)=-acd78(8)*acd78(10)
      acd78(36)=acd78(36)+acd78(37)
      acd78(36)=acd78(5)*acd78(36)
      acd78(37)=-acd78(12)*acd78(13)
      acd78(38)=-acd78(8)*acd78(9)
      acd78(37)=acd78(37)+acd78(38)
      acd78(37)=acd78(3)*acd78(37)
      acd78(34)=acd78(34)+acd78(37)+acd78(35)+acd78(36)
      acd78(35)=-acd78(27)*acd78(26)
      acd78(36)=-acd78(24)*acd78(23)
      acd78(35)=acd78(35)+acd78(36)
      acd78(35)=acd78(21)*acd78(35)
      acd78(36)=-acd78(31)*acd78(23)
      acd78(37)=-acd78(27)*acd78(30)
      acd78(36)=acd78(36)+acd78(37)
      acd78(36)=acd78(19)*acd78(36)
      acd78(37)=-acd78(31)*acd78(26)
      acd78(38)=-acd78(24)*acd78(30)
      acd78(37)=acd78(37)+acd78(38)
      acd78(37)=acd78(16)*acd78(37)
      acd78(35)=acd78(37)+acd78(36)+acd78(35)
      acd78(35)=acd78(25)*acd78(35)
      brack=acd78(33)+2.0_ki*acd78(34)+acd78(35)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd78h0
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
!---#[ subroutine reconstruct_d78:
   subroutine     reconstruct_d78(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_78:
      coeffs%coeffs_78%c0 = derivative(czip)
      coeffs%coeffs_78%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_78%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_78%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_78%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_78%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_78%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_78%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_78%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_78%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_78%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_78%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_78%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_78%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_78%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_78%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_78%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_78%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_78%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_78%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_78%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_78%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_78%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_78%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_78%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_78%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_78%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_78%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_78%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_78%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_78%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_78%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_78%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_78%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_78%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_78:
   end subroutine reconstruct_d78
!---#] subroutine reconstruct_d78:
end module     p9_csbar_epnebbbarg_d78h0l1d
