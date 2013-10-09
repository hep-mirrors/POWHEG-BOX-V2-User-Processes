module     p5_usbar_epnebbbarg_d229h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d229h3l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d229
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd229h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(116) :: acd229
      complex(ki) :: brack
      acd229(1)=dotproduct(k2,qshift)
      acd229(2)=dotproduct(qshift,spvak2k1)
      acd229(3)=abb229(36)
      acd229(4)=dotproduct(qshift,spvak4k1)
      acd229(5)=abb229(30)
      acd229(6)=abb229(46)
      acd229(7)=dotproduct(k3,qshift)
      acd229(8)=abb229(67)
      acd229(9)=dotproduct(k4,qshift)
      acd229(10)=abb229(52)
      acd229(11)=dotproduct(l5,qshift)
      acd229(12)=abb229(38)
      acd229(13)=abb229(74)
      acd229(14)=abb229(330)
      acd229(15)=dotproduct(l6,qshift)
      acd229(16)=abb229(31)
      acd229(17)=abb229(32)
      acd229(18)=dotproduct(k7,qshift)
      acd229(19)=abb229(53)
      acd229(20)=abb229(101)
      acd229(21)=abb229(391)
      acd229(22)=dotproduct(e7,qshift)
      acd229(23)=abb229(22)
      acd229(24)=abb229(45)
      acd229(25)=abb229(279)
      acd229(26)=dotproduct(qshift,qshift)
      acd229(27)=abb229(51)
      acd229(28)=dotproduct(qshift,spvak2l5)
      acd229(29)=abb229(21)
      acd229(30)=dotproduct(qshift,spvak2l6)
      acd229(31)=abb229(27)
      acd229(32)=dotproduct(qshift,spvak2k7)
      acd229(33)=abb229(40)
      acd229(34)=dotproduct(qshift,spval5l6)
      acd229(35)=abb229(37)
      acd229(36)=dotproduct(qshift,spval6l5)
      acd229(37)=abb229(49)
      acd229(38)=dotproduct(qshift,spvak7l5)
      acd229(39)=abb229(48)
      acd229(40)=dotproduct(qshift,spvak7l6)
      acd229(41)=abb229(41)
      acd229(42)=dotproduct(qshift,spvak2e7)
      acd229(43)=abb229(17)
      acd229(44)=dotproduct(qshift,spvae7l5)
      acd229(45)=abb229(28)
      acd229(46)=dotproduct(qshift,spvae7l6)
      acd229(47)=abb229(24)
      acd229(48)=abb229(16)
      acd229(49)=abb229(20)
      acd229(50)=abb229(69)
      acd229(51)=abb229(100)
      acd229(52)=abb229(50)
      acd229(53)=abb229(90)
      acd229(54)=abb229(93)
      acd229(55)=abb229(61)
      acd229(56)=abb229(43)
      acd229(57)=abb229(248)
      acd229(58)=abb229(34)
      acd229(59)=abb229(19)
      acd229(60)=abb229(76)
      acd229(61)=abb229(107)
      acd229(62)=abb229(47)
      acd229(63)=abb229(60)
      acd229(64)=abb229(39)
      acd229(65)=abb229(35)
      acd229(66)=abb229(159)
      acd229(67)=abb229(15)
      acd229(68)=abb229(387)
      acd229(69)=abb229(203)
      acd229(70)=dotproduct(qshift,spvak2k3)
      acd229(71)=abb229(115)
      acd229(72)=dotproduct(qshift,spvak2k4)
      acd229(73)=abb229(57)
      acd229(74)=dotproduct(qshift,spvak3k1)
      acd229(75)=abb229(23)
      acd229(76)=dotproduct(qshift,spvak4k2)
      acd229(77)=abb229(42)
      acd229(78)=dotproduct(qshift,spvak4k3)
      acd229(79)=abb229(86)
      acd229(80)=dotproduct(qshift,spval5k1)
      acd229(81)=abb229(81)
      acd229(82)=dotproduct(qshift,spval6k1)
      acd229(83)=abb229(26)
      acd229(84)=dotproduct(qshift,spvak7k1)
      acd229(85)=abb229(18)
      acd229(86)=dotproduct(qshift,spvae7k1)
      acd229(87)=abb229(14)
      acd229(88)=abb229(13)
      acd229(89)=acd229(3)*acd229(1)
      acd229(90)=acd229(12)*acd229(11)
      acd229(91)=acd229(16)*acd229(15)
      acd229(92)=acd229(19)*acd229(18)
      acd229(93)=acd229(23)*acd229(22)
      acd229(94)=acd229(29)*acd229(28)
      acd229(95)=acd229(31)*acd229(30)
      acd229(96)=acd229(33)*acd229(32)
      acd229(97)=acd229(35)*acd229(34)
      acd229(98)=acd229(37)*acd229(36)
      acd229(99)=acd229(39)*acd229(38)
      acd229(100)=acd229(41)*acd229(40)
      acd229(101)=acd229(43)*acd229(42)
      acd229(102)=acd229(45)*acd229(44)
      acd229(103)=acd229(47)*acd229(46)
      acd229(89)=-acd229(48)+acd229(103)+acd229(102)+acd229(101)+acd229(100)+ac&
      &d229(99)+acd229(98)+acd229(97)+acd229(96)+acd229(95)+acd229(94)+acd229(9&
      &3)+acd229(92)+acd229(91)+acd229(90)+acd229(89)
      acd229(89)=acd229(2)*acd229(89)
      acd229(90)=acd229(5)*acd229(1)
      acd229(91)=acd229(13)*acd229(11)
      acd229(92)=acd229(17)*acd229(15)
      acd229(93)=acd229(20)*acd229(18)
      acd229(94)=acd229(24)*acd229(22)
      acd229(95)=acd229(49)*acd229(28)
      acd229(96)=acd229(50)*acd229(30)
      acd229(97)=acd229(51)*acd229(32)
      acd229(98)=acd229(52)*acd229(34)
      acd229(99)=acd229(53)*acd229(36)
      acd229(100)=acd229(54)*acd229(38)
      acd229(101)=acd229(55)*acd229(40)
      acd229(102)=acd229(56)*acd229(42)
      acd229(103)=-acd229(57)*acd229(44)
      acd229(104)=acd229(58)*acd229(46)
      acd229(90)=-acd229(59)+acd229(104)+acd229(103)+acd229(102)+acd229(101)+ac&
      &d229(100)+acd229(99)+acd229(98)+acd229(97)+acd229(96)+acd229(95)+acd229(&
      &94)+acd229(93)+acd229(92)+acd229(91)+acd229(90)
      acd229(90)=acd229(4)*acd229(90)
      acd229(91)=-acd229(11)-acd229(15)
      acd229(91)=acd229(14)*acd229(91)
      acd229(92)=-acd229(6)*acd229(1)
      acd229(93)=-acd229(8)*acd229(7)
      acd229(94)=-acd229(10)*acd229(9)
      acd229(95)=-acd229(21)*acd229(18)
      acd229(96)=-acd229(25)*acd229(22)
      acd229(97)=acd229(27)*acd229(26)
      acd229(98)=-acd229(60)*acd229(28)
      acd229(99)=-acd229(61)*acd229(30)
      acd229(100)=-acd229(62)*acd229(32)
      acd229(101)=-acd229(63)*acd229(34)
      acd229(102)=-acd229(64)*acd229(36)
      acd229(103)=-acd229(65)*acd229(38)
      acd229(104)=-acd229(66)*acd229(40)
      acd229(105)=-acd229(67)*acd229(42)
      acd229(106)=-acd229(68)*acd229(44)
      acd229(107)=-acd229(69)*acd229(46)
      acd229(108)=-acd229(71)*acd229(70)
      acd229(109)=-acd229(73)*acd229(72)
      acd229(110)=-acd229(75)*acd229(74)
      acd229(111)=-acd229(77)*acd229(76)
      acd229(112)=-acd229(79)*acd229(78)
      acd229(113)=-acd229(81)*acd229(80)
      acd229(114)=-acd229(83)*acd229(82)
      acd229(115)=-acd229(85)*acd229(84)
      acd229(116)=-acd229(87)*acd229(86)
      brack=acd229(88)+acd229(89)+acd229(90)+acd229(91)+acd229(92)+acd229(93)+a&
      &cd229(94)+acd229(95)+acd229(96)+acd229(97)+acd229(98)+acd229(99)+acd229(&
      &100)+acd229(101)+acd229(102)+acd229(103)+acd229(104)+acd229(105)+acd229(&
      &106)+acd229(107)+acd229(108)+acd229(109)+acd229(110)+acd229(111)+acd229(&
      &112)+acd229(113)+acd229(114)+acd229(115)+acd229(116)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd229h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(134) :: acd229
      complex(ki) :: brack
      acd229(1)=k2(iv1)
      acd229(2)=dotproduct(qshift,spvak2k1)
      acd229(3)=abb229(36)
      acd229(4)=dotproduct(qshift,spvak4k1)
      acd229(5)=abb229(30)
      acd229(6)=abb229(46)
      acd229(7)=k3(iv1)
      acd229(8)=abb229(67)
      acd229(9)=k4(iv1)
      acd229(10)=abb229(52)
      acd229(11)=l5(iv1)
      acd229(12)=abb229(38)
      acd229(13)=abb229(74)
      acd229(14)=abb229(330)
      acd229(15)=l6(iv1)
      acd229(16)=abb229(31)
      acd229(17)=abb229(32)
      acd229(18)=k7(iv1)
      acd229(19)=abb229(53)
      acd229(20)=abb229(101)
      acd229(21)=abb229(391)
      acd229(22)=e7(iv1)
      acd229(23)=abb229(22)
      acd229(24)=abb229(45)
      acd229(25)=abb229(279)
      acd229(26)=qshift(iv1)
      acd229(27)=abb229(51)
      acd229(28)=spvak2k1(iv1)
      acd229(29)=dotproduct(k2,qshift)
      acd229(30)=dotproduct(l5,qshift)
      acd229(31)=dotproduct(l6,qshift)
      acd229(32)=dotproduct(k7,qshift)
      acd229(33)=dotproduct(e7,qshift)
      acd229(34)=dotproduct(qshift,spvak2l5)
      acd229(35)=abb229(21)
      acd229(36)=dotproduct(qshift,spvak2l6)
      acd229(37)=abb229(27)
      acd229(38)=dotproduct(qshift,spvak2k7)
      acd229(39)=abb229(40)
      acd229(40)=dotproduct(qshift,spval5l6)
      acd229(41)=abb229(37)
      acd229(42)=dotproduct(qshift,spval6l5)
      acd229(43)=abb229(49)
      acd229(44)=dotproduct(qshift,spvak7l5)
      acd229(45)=abb229(48)
      acd229(46)=dotproduct(qshift,spvak7l6)
      acd229(47)=abb229(41)
      acd229(48)=dotproduct(qshift,spvak2e7)
      acd229(49)=abb229(17)
      acd229(50)=dotproduct(qshift,spvae7l5)
      acd229(51)=abb229(28)
      acd229(52)=dotproduct(qshift,spvae7l6)
      acd229(53)=abb229(24)
      acd229(54)=abb229(16)
      acd229(55)=spvak4k1(iv1)
      acd229(56)=abb229(20)
      acd229(57)=abb229(69)
      acd229(58)=abb229(100)
      acd229(59)=abb229(50)
      acd229(60)=abb229(90)
      acd229(61)=abb229(93)
      acd229(62)=abb229(61)
      acd229(63)=abb229(43)
      acd229(64)=abb229(248)
      acd229(65)=abb229(34)
      acd229(66)=abb229(19)
      acd229(67)=spvak2l5(iv1)
      acd229(68)=abb229(76)
      acd229(69)=spvak2l6(iv1)
      acd229(70)=abb229(107)
      acd229(71)=spvak2k7(iv1)
      acd229(72)=abb229(47)
      acd229(73)=spval5l6(iv1)
      acd229(74)=abb229(60)
      acd229(75)=spval6l5(iv1)
      acd229(76)=abb229(39)
      acd229(77)=spvak7l5(iv1)
      acd229(78)=abb229(35)
      acd229(79)=spvak7l6(iv1)
      acd229(80)=abb229(159)
      acd229(81)=spvak2e7(iv1)
      acd229(82)=abb229(15)
      acd229(83)=spvae7l5(iv1)
      acd229(84)=abb229(387)
      acd229(85)=spvae7l6(iv1)
      acd229(86)=abb229(203)
      acd229(87)=spvak2k3(iv1)
      acd229(88)=abb229(115)
      acd229(89)=spvak2k4(iv1)
      acd229(90)=abb229(57)
      acd229(91)=spvak3k1(iv1)
      acd229(92)=abb229(23)
      acd229(93)=spvak4k2(iv1)
      acd229(94)=abb229(42)
      acd229(95)=spvak4k3(iv1)
      acd229(96)=abb229(86)
      acd229(97)=spval5k1(iv1)
      acd229(98)=abb229(81)
      acd229(99)=spval6k1(iv1)
      acd229(100)=abb229(26)
      acd229(101)=spvak7k1(iv1)
      acd229(102)=abb229(18)
      acd229(103)=spvae7k1(iv1)
      acd229(104)=abb229(14)
      acd229(105)=-acd229(85)*acd229(65)
      acd229(106)=acd229(83)*acd229(64)
      acd229(107)=-acd229(81)*acd229(63)
      acd229(108)=-acd229(79)*acd229(62)
      acd229(109)=-acd229(77)*acd229(61)
      acd229(110)=-acd229(75)*acd229(60)
      acd229(111)=-acd229(73)*acd229(59)
      acd229(112)=-acd229(71)*acd229(58)
      acd229(113)=-acd229(69)*acd229(57)
      acd229(114)=-acd229(67)*acd229(56)
      acd229(115)=-acd229(22)*acd229(24)
      acd229(116)=-acd229(18)*acd229(20)
      acd229(117)=-acd229(15)*acd229(17)
      acd229(118)=-acd229(11)*acd229(13)
      acd229(119)=-acd229(1)*acd229(5)
      acd229(105)=acd229(119)+acd229(118)+acd229(117)+acd229(116)+acd229(115)+a&
      &cd229(114)+acd229(113)+acd229(112)+acd229(111)+acd229(110)+acd229(109)+a&
      &cd229(108)+acd229(107)+acd229(105)+acd229(106)
      acd229(105)=acd229(4)*acd229(105)
      acd229(106)=-acd229(85)*acd229(53)
      acd229(107)=-acd229(83)*acd229(51)
      acd229(108)=-acd229(81)*acd229(49)
      acd229(109)=-acd229(79)*acd229(47)
      acd229(110)=-acd229(77)*acd229(45)
      acd229(111)=-acd229(75)*acd229(43)
      acd229(112)=-acd229(73)*acd229(41)
      acd229(113)=-acd229(71)*acd229(39)
      acd229(114)=-acd229(69)*acd229(37)
      acd229(115)=-acd229(67)*acd229(35)
      acd229(116)=-acd229(22)*acd229(23)
      acd229(117)=-acd229(18)*acd229(19)
      acd229(118)=-acd229(15)*acd229(16)
      acd229(119)=-acd229(11)*acd229(12)
      acd229(120)=-acd229(1)*acd229(3)
      acd229(106)=acd229(120)+acd229(119)+acd229(118)+acd229(117)+acd229(116)+a&
      &cd229(115)+acd229(114)+acd229(113)+acd229(112)+acd229(111)+acd229(110)+a&
      &cd229(109)+acd229(108)+acd229(106)+acd229(107)
      acd229(106)=acd229(2)*acd229(106)
      acd229(107)=-acd229(52)*acd229(65)
      acd229(108)=acd229(50)*acd229(64)
      acd229(109)=-acd229(48)*acd229(63)
      acd229(110)=-acd229(46)*acd229(62)
      acd229(111)=-acd229(44)*acd229(61)
      acd229(112)=-acd229(42)*acd229(60)
      acd229(113)=-acd229(40)*acd229(59)
      acd229(114)=-acd229(38)*acd229(58)
      acd229(115)=-acd229(36)*acd229(57)
      acd229(116)=-acd229(34)*acd229(56)
      acd229(117)=-acd229(24)*acd229(33)
      acd229(118)=-acd229(20)*acd229(32)
      acd229(119)=-acd229(17)*acd229(31)
      acd229(120)=-acd229(13)*acd229(30)
      acd229(121)=-acd229(5)*acd229(29)
      acd229(107)=acd229(121)+acd229(120)+acd229(119)+acd229(118)+acd229(117)+a&
      &cd229(116)+acd229(115)+acd229(114)+acd229(113)+acd229(112)+acd229(111)+a&
      &cd229(110)+acd229(109)+acd229(108)+acd229(66)+acd229(107)
      acd229(107)=acd229(55)*acd229(107)
      acd229(108)=-acd229(52)*acd229(53)
      acd229(109)=-acd229(50)*acd229(51)
      acd229(110)=-acd229(48)*acd229(49)
      acd229(111)=-acd229(46)*acd229(47)
      acd229(112)=-acd229(44)*acd229(45)
      acd229(113)=-acd229(42)*acd229(43)
      acd229(114)=-acd229(40)*acd229(41)
      acd229(115)=-acd229(38)*acd229(39)
      acd229(116)=-acd229(36)*acd229(37)
      acd229(117)=-acd229(34)*acd229(35)
      acd229(118)=-acd229(23)*acd229(33)
      acd229(119)=-acd229(19)*acd229(32)
      acd229(120)=-acd229(16)*acd229(31)
      acd229(121)=-acd229(12)*acd229(30)
      acd229(122)=-acd229(3)*acd229(29)
      acd229(108)=acd229(122)+acd229(121)+acd229(120)+acd229(119)+acd229(118)+a&
      &cd229(117)+acd229(116)+acd229(115)+acd229(114)+acd229(113)+acd229(112)+a&
      &cd229(111)+acd229(110)+acd229(109)+acd229(54)+acd229(108)
      acd229(108)=acd229(28)*acd229(108)
      acd229(109)=acd229(11)+acd229(15)
      acd229(109)=acd229(14)*acd229(109)
      acd229(110)=acd229(103)*acd229(104)
      acd229(111)=acd229(101)*acd229(102)
      acd229(112)=acd229(99)*acd229(100)
      acd229(113)=acd229(97)*acd229(98)
      acd229(114)=acd229(95)*acd229(96)
      acd229(115)=acd229(93)*acd229(94)
      acd229(116)=acd229(91)*acd229(92)
      acd229(117)=acd229(89)*acd229(90)
      acd229(118)=acd229(87)*acd229(88)
      acd229(119)=acd229(26)*acd229(27)
      acd229(120)=acd229(9)*acd229(10)
      acd229(121)=acd229(7)*acd229(8)
      acd229(122)=acd229(85)*acd229(86)
      acd229(123)=acd229(83)*acd229(84)
      acd229(124)=acd229(81)*acd229(82)
      acd229(125)=acd229(79)*acd229(80)
      acd229(126)=acd229(77)*acd229(78)
      acd229(127)=acd229(75)*acd229(76)
      acd229(128)=acd229(73)*acd229(74)
      acd229(129)=acd229(71)*acd229(72)
      acd229(130)=acd229(69)*acd229(70)
      acd229(131)=acd229(67)*acd229(68)
      acd229(132)=acd229(22)*acd229(25)
      acd229(133)=acd229(18)*acd229(21)
      acd229(134)=acd229(1)*acd229(6)
      brack=acd229(105)+acd229(106)+acd229(107)+acd229(108)+acd229(109)+acd229(&
      &110)+acd229(111)+acd229(112)+acd229(113)+acd229(114)+acd229(115)+acd229(&
      &116)+acd229(117)+acd229(118)-2.0_ki*acd229(119)+acd229(120)+acd229(121)+&
      &acd229(122)+acd229(123)+acd229(124)+acd229(125)+acd229(126)+acd229(127)+&
      &acd229(128)+acd229(129)+acd229(130)+acd229(131)+acd229(132)+acd229(133)+&
      &acd229(134)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd229h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(84) :: acd229
      complex(ki) :: brack
      acd229(1)=d(iv1,iv2)
      acd229(2)=abb229(51)
      acd229(3)=k2(iv1)
      acd229(4)=spvak2k1(iv2)
      acd229(5)=abb229(36)
      acd229(6)=spvak4k1(iv2)
      acd229(7)=abb229(30)
      acd229(8)=k2(iv2)
      acd229(9)=spvak2k1(iv1)
      acd229(10)=spvak4k1(iv1)
      acd229(11)=l5(iv1)
      acd229(12)=abb229(38)
      acd229(13)=abb229(74)
      acd229(14)=l5(iv2)
      acd229(15)=l6(iv1)
      acd229(16)=abb229(31)
      acd229(17)=abb229(32)
      acd229(18)=l6(iv2)
      acd229(19)=k7(iv1)
      acd229(20)=abb229(53)
      acd229(21)=abb229(101)
      acd229(22)=k7(iv2)
      acd229(23)=e7(iv1)
      acd229(24)=abb229(22)
      acd229(25)=abb229(45)
      acd229(26)=e7(iv2)
      acd229(27)=spvak2l5(iv2)
      acd229(28)=abb229(21)
      acd229(29)=spvak2l6(iv2)
      acd229(30)=abb229(27)
      acd229(31)=spvak2k7(iv2)
      acd229(32)=abb229(40)
      acd229(33)=spval5l6(iv2)
      acd229(34)=abb229(37)
      acd229(35)=spval6l5(iv2)
      acd229(36)=abb229(49)
      acd229(37)=spvak7l5(iv2)
      acd229(38)=abb229(48)
      acd229(39)=spvak7l6(iv2)
      acd229(40)=abb229(41)
      acd229(41)=spvak2e7(iv2)
      acd229(42)=abb229(17)
      acd229(43)=spvae7l5(iv2)
      acd229(44)=abb229(28)
      acd229(45)=spvae7l6(iv2)
      acd229(46)=abb229(24)
      acd229(47)=spvak2l5(iv1)
      acd229(48)=spvak2l6(iv1)
      acd229(49)=spvak2k7(iv1)
      acd229(50)=spval5l6(iv1)
      acd229(51)=spval6l5(iv1)
      acd229(52)=spvak7l5(iv1)
      acd229(53)=spvak7l6(iv1)
      acd229(54)=spvak2e7(iv1)
      acd229(55)=spvae7l5(iv1)
      acd229(56)=spvae7l6(iv1)
      acd229(57)=abb229(20)
      acd229(58)=abb229(69)
      acd229(59)=abb229(100)
      acd229(60)=abb229(50)
      acd229(61)=abb229(90)
      acd229(62)=abb229(93)
      acd229(63)=abb229(61)
      acd229(64)=abb229(43)
      acd229(65)=abb229(248)
      acd229(66)=abb229(34)
      acd229(67)=acd229(45)*acd229(66)
      acd229(68)=-acd229(43)*acd229(65)
      acd229(69)=acd229(41)*acd229(64)
      acd229(70)=acd229(39)*acd229(63)
      acd229(71)=acd229(37)*acd229(62)
      acd229(72)=acd229(35)*acd229(61)
      acd229(73)=acd229(33)*acd229(60)
      acd229(74)=acd229(31)*acd229(59)
      acd229(75)=acd229(29)*acd229(58)
      acd229(76)=acd229(27)*acd229(57)
      acd229(77)=acd229(25)*acd229(26)
      acd229(78)=acd229(21)*acd229(22)
      acd229(79)=acd229(17)*acd229(18)
      acd229(80)=acd229(13)*acd229(14)
      acd229(81)=acd229(7)*acd229(8)
      acd229(67)=acd229(81)+acd229(80)+acd229(79)+acd229(78)+acd229(77)+acd229(&
      &76)+acd229(75)+acd229(74)+acd229(73)+acd229(72)+acd229(71)+acd229(70)+ac&
      &d229(69)+acd229(67)+acd229(68)
      acd229(67)=acd229(10)*acd229(67)
      acd229(68)=acd229(45)*acd229(46)
      acd229(69)=acd229(43)*acd229(44)
      acd229(70)=acd229(41)*acd229(42)
      acd229(71)=acd229(39)*acd229(40)
      acd229(72)=acd229(37)*acd229(38)
      acd229(73)=acd229(35)*acd229(36)
      acd229(74)=acd229(33)*acd229(34)
      acd229(75)=acd229(31)*acd229(32)
      acd229(76)=acd229(29)*acd229(30)
      acd229(77)=acd229(27)*acd229(28)
      acd229(78)=acd229(24)*acd229(26)
      acd229(79)=acd229(20)*acd229(22)
      acd229(80)=acd229(16)*acd229(18)
      acd229(81)=acd229(12)*acd229(14)
      acd229(82)=acd229(5)*acd229(8)
      acd229(68)=acd229(82)+acd229(81)+acd229(80)+acd229(79)+acd229(78)+acd229(&
      &77)+acd229(76)+acd229(75)+acd229(74)+acd229(73)+acd229(72)+acd229(71)+ac&
      &d229(70)+acd229(68)+acd229(69)
      acd229(68)=acd229(9)*acd229(68)
      acd229(69)=acd229(56)*acd229(66)
      acd229(70)=-acd229(55)*acd229(65)
      acd229(71)=acd229(54)*acd229(64)
      acd229(72)=acd229(53)*acd229(63)
      acd229(73)=acd229(52)*acd229(62)
      acd229(74)=acd229(51)*acd229(61)
      acd229(75)=acd229(50)*acd229(60)
      acd229(76)=acd229(49)*acd229(59)
      acd229(77)=acd229(48)*acd229(58)
      acd229(78)=acd229(47)*acd229(57)
      acd229(79)=acd229(23)*acd229(25)
      acd229(80)=acd229(19)*acd229(21)
      acd229(81)=acd229(15)*acd229(17)
      acd229(82)=acd229(11)*acd229(13)
      acd229(83)=acd229(3)*acd229(7)
      acd229(69)=acd229(83)+acd229(82)+acd229(81)+acd229(80)+acd229(79)+acd229(&
      &78)+acd229(77)+acd229(76)+acd229(75)+acd229(74)+acd229(73)+acd229(72)+ac&
      &d229(71)+acd229(69)+acd229(70)
      acd229(69)=acd229(6)*acd229(69)
      acd229(70)=acd229(46)*acd229(56)
      acd229(71)=acd229(44)*acd229(55)
      acd229(72)=acd229(42)*acd229(54)
      acd229(73)=acd229(40)*acd229(53)
      acd229(74)=acd229(38)*acd229(52)
      acd229(75)=acd229(36)*acd229(51)
      acd229(76)=acd229(34)*acd229(50)
      acd229(77)=acd229(32)*acd229(49)
      acd229(78)=acd229(30)*acd229(48)
      acd229(79)=acd229(28)*acd229(47)
      acd229(80)=acd229(23)*acd229(24)
      acd229(81)=acd229(19)*acd229(20)
      acd229(82)=acd229(15)*acd229(16)
      acd229(83)=acd229(11)*acd229(12)
      acd229(84)=acd229(3)*acd229(5)
      acd229(70)=acd229(84)+acd229(83)+acd229(82)+acd229(81)+acd229(80)+acd229(&
      &79)+acd229(78)+acd229(77)+acd229(76)+acd229(75)+acd229(74)+acd229(73)+ac&
      &d229(72)+acd229(70)+acd229(71)
      acd229(70)=acd229(4)*acd229(70)
      acd229(71)=acd229(1)*acd229(2)
      brack=acd229(67)+acd229(68)+acd229(69)+acd229(70)+2.0_ki*acd229(71)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd229h3
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
      qshift = -k3+k2-k4
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
!---#[ subroutine reconstruct_d229:
   subroutine     reconstruct_d229(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_229:
      coeffs%coeffs_229%c0 = derivative(czip)
      coeffs%coeffs_229%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_229%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_229%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_229%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_229%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_229%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_229%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_229%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_229%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_229%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_229%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_229%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_229%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_229%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_229:
   end subroutine reconstruct_d229
!---#] subroutine reconstruct_d229:
end module     p5_usbar_epnebbbarg_d229h3l1d
