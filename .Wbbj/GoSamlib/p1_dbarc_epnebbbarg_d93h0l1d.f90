module     p1_dbarc_epnebbbarg_d93h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d93h0l1d.f90
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
   public :: derivative , reconstruct_d93
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd93h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(77) :: acd93
      complex(ki) :: brack
      acd93(1)=dotproduct(k1,qshift)
      acd93(2)=dotproduct(qshift,spvak1k2)
      acd93(3)=abb93(19)
      acd93(4)=dotproduct(qshift,spval5k2)
      acd93(5)=abb93(54)
      acd93(6)=dotproduct(qshift,spval6k2)
      acd93(7)=abb93(141)
      acd93(8)=abb93(53)
      acd93(9)=dotproduct(k2,qshift)
      acd93(10)=abb93(11)
      acd93(11)=abb93(33)
      acd93(12)=abb93(14)
      acd93(13)=dotproduct(k3,qshift)
      acd93(14)=abb93(76)
      acd93(15)=abb93(176)
      acd93(16)=abb93(159)
      acd93(17)=dotproduct(k4,qshift)
      acd93(18)=dotproduct(l5,qshift)
      acd93(19)=abb93(68)
      acd93(20)=abb93(174)
      acd93(21)=abb93(44)
      acd93(22)=dotproduct(l6,qshift)
      acd93(23)=abb93(62)
      acd93(24)=abb93(156)
      acd93(25)=dotproduct(k7,qshift)
      acd93(26)=abb93(34)
      acd93(27)=abb93(162)
      acd93(28)=abb93(126)
      acd93(29)=dotproduct(e7,qshift)
      acd93(30)=abb93(23)
      acd93(31)=abb93(73)
      acd93(32)=abb93(125)
      acd93(33)=dotproduct(qshift,spvak4k2)
      acd93(34)=abb93(16)
      acd93(35)=dotproduct(qshift,spvak4k3)
      acd93(36)=abb93(17)
      acd93(37)=dotproduct(qshift,spval5k1)
      acd93(38)=abb93(25)
      acd93(39)=dotproduct(qshift,spval5l6)
      acd93(40)=abb93(66)
      acd93(41)=dotproduct(qshift,spval6k1)
      acd93(42)=abb93(24)
      acd93(43)=dotproduct(qshift,spval6l5)
      acd93(44)=abb93(71)
      acd93(45)=dotproduct(qshift,spvae7k2)
      acd93(46)=abb93(13)
      acd93(47)=abb93(30)
      acd93(48)=dotproduct(qshift,spvak1l5)
      acd93(49)=abb93(74)
      acd93(50)=dotproduct(qshift,spvak1l6)
      acd93(51)=abb93(31)
      acd93(52)=abb93(43)
      acd93(53)=abb93(40)
      acd93(54)=abb93(20)
      acd93(55)=abb93(55)
      acd93(56)=abb93(18)
      acd93(57)=abb93(26)
      acd93(58)=abb93(15)
      acd93(59)=abb93(56)
      acd93(60)=abb93(28)
      acd93(61)=abb93(12)
      acd93(62)=abb93(27)
      acd93(63)=acd93(40)*acd93(39)
      acd93(64)=acd93(3)*acd93(1)
      acd93(65)=acd93(10)*acd93(9)
      acd93(66)=acd93(19)*acd93(18)
      acd93(67)=acd93(23)*acd93(22)
      acd93(68)=acd93(26)*acd93(25)
      acd93(69)=acd93(30)*acd93(29)
      acd93(70)=acd93(34)*acd93(33)
      acd93(71)=acd93(36)*acd93(35)
      acd93(72)=acd93(38)*acd93(37)
      acd93(73)=acd93(42)*acd93(41)
      acd93(74)=-acd93(43)*acd93(44)
      acd93(75)=acd93(46)*acd93(45)
      acd93(63)=-acd93(47)+acd93(75)+acd93(74)+acd93(73)+acd93(72)+acd93(71)+ac&
      &d93(70)+acd93(69)+acd93(68)+acd93(67)+acd93(66)+acd93(65)+acd93(64)+acd9&
      &3(63)
      acd93(63)=acd93(2)*acd93(63)
      acd93(64)=-acd93(18)-acd93(22)
      acd93(64)=acd93(20)*acd93(64)
      acd93(65)=acd93(48)*acd93(44)
      acd93(66)=acd93(7)*acd93(1)
      acd93(67)=acd93(11)*acd93(9)
      acd93(68)=acd93(27)*acd93(25)
      acd93(69)=acd93(31)*acd93(29)
      acd93(70)=acd93(52)*acd93(33)
      acd93(71)=acd93(53)*acd93(35)
      acd93(72)=acd93(54)*acd93(45)
      acd93(73)=acd93(55)*acd93(50)
      acd93(64)=acd93(64)-acd93(56)+acd93(73)+acd93(72)+acd93(71)+acd93(70)+acd&
      &93(69)+acd93(68)+acd93(67)+acd93(66)+acd93(65)
      acd93(64)=acd93(6)*acd93(64)
      acd93(65)=-acd93(50)*acd93(40)
      acd93(66)=acd93(5)*acd93(1)
      acd93(67)=acd93(49)*acd93(48)
      acd93(65)=-acd93(51)+acd93(67)+acd93(66)+acd93(65)
      acd93(65)=acd93(4)*acd93(65)
      acd93(66)=-acd93(14)*acd93(2)
      acd93(67)=-acd93(15)*acd93(6)
      acd93(66)=-acd93(16)+acd93(66)+acd93(67)
      acd93(67)=acd93(17)+acd93(13)
      acd93(66)=acd93(67)*acd93(66)
      acd93(67)=-acd93(8)*acd93(1)
      acd93(68)=-acd93(12)*acd93(9)
      acd93(69)=-acd93(21)*acd93(18)
      acd93(70)=-acd93(24)*acd93(22)
      acd93(71)=-acd93(28)*acd93(25)
      acd93(72)=-acd93(32)*acd93(29)
      acd93(73)=-acd93(57)*acd93(33)
      acd93(74)=-acd93(58)*acd93(35)
      acd93(75)=-acd93(59)*acd93(37)
      acd93(76)=-acd93(60)*acd93(39)
      acd93(77)=-acd93(61)*acd93(45)
      brack=acd93(62)+acd93(63)+acd93(64)+acd93(65)+acd93(66)+acd93(67)+acd93(6&
      &8)+acd93(69)+acd93(70)+acd93(71)+acd93(72)+acd93(73)+acd93(74)+acd93(75)&
      &+acd93(76)+acd93(77)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd93h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(100) :: acd93
      complex(ki) :: brack
      acd93(1)=k1(iv1)
      acd93(2)=dotproduct(qshift,spvak1k2)
      acd93(3)=abb93(19)
      acd93(4)=dotproduct(qshift,spval5k2)
      acd93(5)=abb93(54)
      acd93(6)=dotproduct(qshift,spval6k2)
      acd93(7)=abb93(141)
      acd93(8)=abb93(53)
      acd93(9)=k2(iv1)
      acd93(10)=abb93(11)
      acd93(11)=abb93(33)
      acd93(12)=abb93(14)
      acd93(13)=k3(iv1)
      acd93(14)=abb93(76)
      acd93(15)=abb93(176)
      acd93(16)=abb93(159)
      acd93(17)=k4(iv1)
      acd93(18)=l5(iv1)
      acd93(19)=abb93(68)
      acd93(20)=abb93(174)
      acd93(21)=abb93(44)
      acd93(22)=l6(iv1)
      acd93(23)=abb93(62)
      acd93(24)=abb93(156)
      acd93(25)=k7(iv1)
      acd93(26)=abb93(34)
      acd93(27)=abb93(162)
      acd93(28)=abb93(126)
      acd93(29)=e7(iv1)
      acd93(30)=abb93(23)
      acd93(31)=abb93(73)
      acd93(32)=abb93(125)
      acd93(33)=spvak1k2(iv1)
      acd93(34)=dotproduct(k1,qshift)
      acd93(35)=dotproduct(k2,qshift)
      acd93(36)=dotproduct(k3,qshift)
      acd93(37)=dotproduct(k4,qshift)
      acd93(38)=dotproduct(l5,qshift)
      acd93(39)=dotproduct(l6,qshift)
      acd93(40)=dotproduct(k7,qshift)
      acd93(41)=dotproduct(e7,qshift)
      acd93(42)=dotproduct(qshift,spvak4k2)
      acd93(43)=abb93(16)
      acd93(44)=dotproduct(qshift,spvak4k3)
      acd93(45)=abb93(17)
      acd93(46)=dotproduct(qshift,spval5k1)
      acd93(47)=abb93(25)
      acd93(48)=dotproduct(qshift,spval5l6)
      acd93(49)=abb93(66)
      acd93(50)=dotproduct(qshift,spval6k1)
      acd93(51)=abb93(24)
      acd93(52)=dotproduct(qshift,spval6l5)
      acd93(53)=abb93(71)
      acd93(54)=dotproduct(qshift,spvae7k2)
      acd93(55)=abb93(13)
      acd93(56)=abb93(30)
      acd93(57)=spval5k2(iv1)
      acd93(58)=dotproduct(qshift,spvak1l5)
      acd93(59)=abb93(74)
      acd93(60)=dotproduct(qshift,spvak1l6)
      acd93(61)=abb93(31)
      acd93(62)=spval6k2(iv1)
      acd93(63)=abb93(43)
      acd93(64)=abb93(40)
      acd93(65)=abb93(20)
      acd93(66)=abb93(55)
      acd93(67)=abb93(18)
      acd93(68)=spvak4k2(iv1)
      acd93(69)=abb93(26)
      acd93(70)=spvak4k3(iv1)
      acd93(71)=abb93(15)
      acd93(72)=spval5k1(iv1)
      acd93(73)=abb93(56)
      acd93(74)=spval5l6(iv1)
      acd93(75)=abb93(28)
      acd93(76)=spval6k1(iv1)
      acd93(77)=spval6l5(iv1)
      acd93(78)=spvae7k2(iv1)
      acd93(79)=abb93(12)
      acd93(80)=spvak1l5(iv1)
      acd93(81)=spvak1l6(iv1)
      acd93(82)=-acd93(51)*acd93(76)
      acd93(83)=-acd93(47)*acd93(72)
      acd93(84)=-acd93(78)*acd93(55)
      acd93(85)=-acd93(70)*acd93(45)
      acd93(86)=-acd93(68)*acd93(43)
      acd93(87)=-acd93(29)*acd93(30)
      acd93(88)=-acd93(25)*acd93(26)
      acd93(89)=-acd93(22)*acd93(23)
      acd93(90)=-acd93(18)*acd93(19)
      acd93(91)=-acd93(9)*acd93(10)
      acd93(92)=acd93(53)*acd93(77)
      acd93(93)=-acd93(49)*acd93(74)
      acd93(94)=acd93(13)+acd93(17)
      acd93(95)=acd93(14)*acd93(94)
      acd93(96)=-acd93(1)*acd93(3)
      acd93(82)=acd93(96)+acd93(95)+acd93(93)+acd93(92)+acd93(91)+acd93(90)+acd&
      &93(89)+acd93(88)+acd93(87)+acd93(86)+acd93(85)+acd93(84)+acd93(82)+acd93&
      &(83)
      acd93(82)=acd93(2)*acd93(82)
      acd93(83)=-acd93(54)*acd93(55)
      acd93(84)=-acd93(51)*acd93(50)
      acd93(85)=-acd93(47)*acd93(46)
      acd93(86)=-acd93(44)*acd93(45)
      acd93(87)=-acd93(42)*acd93(43)
      acd93(88)=-acd93(30)*acd93(41)
      acd93(89)=-acd93(26)*acd93(40)
      acd93(90)=-acd93(23)*acd93(39)
      acd93(91)=-acd93(19)*acd93(38)
      acd93(92)=-acd93(10)*acd93(35)
      acd93(93)=-acd93(34)*acd93(3)
      acd93(95)=acd93(53)*acd93(52)
      acd93(96)=-acd93(49)*acd93(48)
      acd93(97)=acd93(36)+acd93(37)
      acd93(98)=acd93(14)*acd93(97)
      acd93(83)=acd93(98)+acd93(96)+acd93(95)+acd93(93)+acd93(92)+acd93(91)+acd&
      &93(90)+acd93(89)+acd93(88)+acd93(87)+acd93(86)+acd93(85)+acd93(84)+acd93&
      &(56)+acd93(83)
      acd93(83)=acd93(33)*acd93(83)
      acd93(84)=-acd93(66)*acd93(81)
      acd93(85)=-acd93(78)*acd93(65)
      acd93(86)=-acd93(70)*acd93(64)
      acd93(87)=-acd93(68)*acd93(63)
      acd93(88)=-acd93(29)*acd93(31)
      acd93(89)=-acd93(25)*acd93(27)
      acd93(90)=-acd93(9)*acd93(11)
      acd93(91)=-acd93(53)*acd93(80)
      acd93(92)=acd93(22)+acd93(18)
      acd93(92)=acd93(20)*acd93(92)
      acd93(93)=acd93(15)*acd93(94)
      acd93(95)=-acd93(1)*acd93(7)
      acd93(84)=acd93(95)+acd93(93)+acd93(92)+acd93(91)+acd93(90)+acd93(89)+acd&
      &93(88)+acd93(87)+acd93(86)+acd93(84)+acd93(85)
      acd93(84)=acd93(6)*acd93(84)
      acd93(85)=-acd93(60)*acd93(66)
      acd93(86)=-acd93(54)*acd93(65)
      acd93(87)=-acd93(44)*acd93(64)
      acd93(88)=-acd93(42)*acd93(63)
      acd93(89)=-acd93(31)*acd93(41)
      acd93(90)=-acd93(27)*acd93(40)
      acd93(91)=-acd93(11)*acd93(35)
      acd93(92)=-acd93(34)*acd93(7)
      acd93(93)=-acd93(53)*acd93(58)
      acd93(95)=acd93(39)+acd93(38)
      acd93(95)=acd93(20)*acd93(95)
      acd93(96)=acd93(15)*acd93(97)
      acd93(85)=acd93(96)+acd93(95)+acd93(93)+acd93(92)+acd93(91)+acd93(90)+acd&
      &93(89)+acd93(88)+acd93(87)+acd93(86)+acd93(67)+acd93(85)
      acd93(85)=acd93(62)*acd93(85)
      acd93(86)=-acd93(58)*acd93(59)
      acd93(87)=-acd93(34)*acd93(5)
      acd93(86)=acd93(87)+acd93(61)+acd93(86)
      acd93(86)=acd93(57)*acd93(86)
      acd93(87)=acd93(4)*acd93(81)
      acd93(88)=acd93(57)*acd93(60)
      acd93(87)=acd93(87)+acd93(88)
      acd93(87)=acd93(49)*acd93(87)
      acd93(88)=acd93(16)*acd93(94)
      acd93(89)=acd93(74)*acd93(75)
      acd93(90)=acd93(72)*acd93(73)
      acd93(91)=acd93(78)*acd93(79)
      acd93(92)=acd93(70)*acd93(71)
      acd93(93)=acd93(68)*acd93(69)
      acd93(94)=acd93(29)*acd93(32)
      acd93(95)=acd93(25)*acd93(28)
      acd93(96)=acd93(22)*acd93(24)
      acd93(97)=acd93(18)*acd93(21)
      acd93(98)=acd93(9)*acd93(12)
      acd93(99)=-acd93(4)*acd93(59)*acd93(80)
      acd93(100)=-acd93(4)*acd93(5)
      acd93(100)=acd93(8)+acd93(100)
      acd93(100)=acd93(1)*acd93(100)
      brack=acd93(82)+acd93(83)+acd93(84)+acd93(85)+acd93(86)+acd93(87)+acd93(8&
      &8)+acd93(89)+acd93(90)+acd93(91)+acd93(92)+acd93(93)+acd93(94)+acd93(95)&
      &+acd93(96)+acd93(97)+acd93(98)+acd93(99)+acd93(100)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd93h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(83) :: acd93
      complex(ki) :: brack
      acd93(1)=k1(iv1)
      acd93(2)=spvak1k2(iv2)
      acd93(3)=abb93(19)
      acd93(4)=spval5k2(iv2)
      acd93(5)=abb93(54)
      acd93(6)=spval6k2(iv2)
      acd93(7)=abb93(141)
      acd93(8)=k1(iv2)
      acd93(9)=spvak1k2(iv1)
      acd93(10)=spval5k2(iv1)
      acd93(11)=spval6k2(iv1)
      acd93(12)=k2(iv1)
      acd93(13)=abb93(11)
      acd93(14)=abb93(33)
      acd93(15)=k2(iv2)
      acd93(16)=k3(iv1)
      acd93(17)=abb93(76)
      acd93(18)=abb93(176)
      acd93(19)=k3(iv2)
      acd93(20)=k4(iv1)
      acd93(21)=k4(iv2)
      acd93(22)=l5(iv1)
      acd93(23)=abb93(68)
      acd93(24)=abb93(174)
      acd93(25)=l5(iv2)
      acd93(26)=l6(iv1)
      acd93(27)=abb93(62)
      acd93(28)=l6(iv2)
      acd93(29)=k7(iv1)
      acd93(30)=abb93(34)
      acd93(31)=abb93(162)
      acd93(32)=k7(iv2)
      acd93(33)=e7(iv1)
      acd93(34)=abb93(23)
      acd93(35)=abb93(73)
      acd93(36)=e7(iv2)
      acd93(37)=spvak4k2(iv2)
      acd93(38)=abb93(16)
      acd93(39)=spvak4k3(iv2)
      acd93(40)=abb93(17)
      acd93(41)=spval5k1(iv2)
      acd93(42)=abb93(25)
      acd93(43)=spval5l6(iv2)
      acd93(44)=abb93(66)
      acd93(45)=spval6k1(iv2)
      acd93(46)=abb93(24)
      acd93(47)=spval6l5(iv2)
      acd93(48)=abb93(71)
      acd93(49)=spvae7k2(iv2)
      acd93(50)=abb93(13)
      acd93(51)=spvak4k2(iv1)
      acd93(52)=spvak4k3(iv1)
      acd93(53)=spval5k1(iv1)
      acd93(54)=spval5l6(iv1)
      acd93(55)=spval6k1(iv1)
      acd93(56)=spval6l5(iv1)
      acd93(57)=spvae7k2(iv1)
      acd93(58)=spvak1l5(iv2)
      acd93(59)=abb93(74)
      acd93(60)=spvak1l6(iv2)
      acd93(61)=spvak1l5(iv1)
      acd93(62)=spvak1l6(iv1)
      acd93(63)=abb93(43)
      acd93(64)=abb93(40)
      acd93(65)=abb93(20)
      acd93(66)=abb93(55)
      acd93(67)=acd93(49)*acd93(50)
      acd93(68)=acd93(46)*acd93(45)
      acd93(69)=acd93(42)*acd93(41)
      acd93(70)=acd93(39)*acd93(40)
      acd93(71)=acd93(37)*acd93(38)
      acd93(72)=acd93(34)*acd93(36)
      acd93(73)=acd93(30)*acd93(32)
      acd93(74)=acd93(27)*acd93(28)
      acd93(75)=acd93(23)*acd93(25)
      acd93(76)=acd93(13)*acd93(15)
      acd93(77)=acd93(8)*acd93(3)
      acd93(78)=-acd93(48)*acd93(47)
      acd93(79)=acd93(44)*acd93(43)
      acd93(80)=acd93(19)+acd93(21)
      acd93(81)=-acd93(17)*acd93(80)
      acd93(67)=acd93(81)+acd93(79)+acd93(78)+acd93(77)+acd93(76)+acd93(75)+acd&
      &93(74)+acd93(73)+acd93(72)+acd93(71)+acd93(70)+acd93(69)+acd93(67)+acd93&
      &(68)
      acd93(67)=acd93(9)*acd93(67)
      acd93(68)=acd93(50)*acd93(57)
      acd93(69)=acd93(46)*acd93(55)
      acd93(70)=acd93(42)*acd93(53)
      acd93(71)=acd93(40)*acd93(52)
      acd93(72)=acd93(38)*acd93(51)
      acd93(73)=acd93(33)*acd93(34)
      acd93(74)=acd93(29)*acd93(30)
      acd93(75)=acd93(26)*acd93(27)
      acd93(76)=acd93(22)*acd93(23)
      acd93(77)=acd93(12)*acd93(13)
      acd93(78)=acd93(1)*acd93(3)
      acd93(79)=-acd93(48)*acd93(56)
      acd93(81)=acd93(44)*acd93(54)
      acd93(82)=acd93(16)+acd93(20)
      acd93(83)=-acd93(17)*acd93(82)
      acd93(68)=acd93(83)+acd93(81)+acd93(79)+acd93(78)+acd93(77)+acd93(76)+acd&
      &93(75)+acd93(74)+acd93(73)+acd93(72)+acd93(71)+acd93(70)+acd93(68)+acd93&
      &(69)
      acd93(68)=acd93(2)*acd93(68)
      acd93(69)=acd93(60)*acd93(66)
      acd93(70)=acd93(49)*acd93(65)
      acd93(71)=acd93(39)*acd93(64)
      acd93(72)=acd93(37)*acd93(63)
      acd93(73)=acd93(35)*acd93(36)
      acd93(74)=acd93(31)*acd93(32)
      acd93(75)=acd93(14)*acd93(15)
      acd93(76)=acd93(8)*acd93(7)
      acd93(77)=acd93(48)*acd93(58)
      acd93(78)=-acd93(28)-acd93(25)
      acd93(78)=acd93(24)*acd93(78)
      acd93(79)=-acd93(18)*acd93(80)
      acd93(69)=acd93(79)+acd93(78)+acd93(77)+acd93(76)+acd93(75)+acd93(74)+acd&
      &93(73)+acd93(72)+acd93(71)+acd93(69)+acd93(70)
      acd93(69)=acd93(11)*acd93(69)
      acd93(70)=acd93(62)*acd93(66)
      acd93(71)=acd93(57)*acd93(65)
      acd93(72)=acd93(52)*acd93(64)
      acd93(73)=acd93(51)*acd93(63)
      acd93(74)=acd93(33)*acd93(35)
      acd93(75)=acd93(29)*acd93(31)
      acd93(76)=acd93(12)*acd93(14)
      acd93(77)=acd93(1)*acd93(7)
      acd93(78)=acd93(48)*acd93(61)
      acd93(79)=-acd93(26)-acd93(22)
      acd93(79)=acd93(24)*acd93(79)
      acd93(80)=-acd93(18)*acd93(82)
      acd93(70)=acd93(80)+acd93(79)+acd93(78)+acd93(77)+acd93(76)+acd93(75)+acd&
      &93(74)+acd93(73)+acd93(72)+acd93(70)+acd93(71)
      acd93(70)=acd93(6)*acd93(70)
      acd93(71)=acd93(58)*acd93(59)
      acd93(72)=acd93(8)*acd93(5)
      acd93(71)=acd93(71)+acd93(72)
      acd93(71)=acd93(10)*acd93(71)
      acd93(72)=acd93(59)*acd93(61)
      acd93(73)=acd93(1)*acd93(5)
      acd93(72)=acd93(73)+acd93(72)
      acd93(72)=acd93(4)*acd93(72)
      acd93(73)=-acd93(10)*acd93(60)
      acd93(74)=-acd93(4)*acd93(62)
      acd93(73)=acd93(73)+acd93(74)
      acd93(73)=acd93(44)*acd93(73)
      brack=acd93(67)+acd93(68)+acd93(69)+acd93(70)+acd93(71)+acd93(72)+acd93(7&
      &3)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd93h0
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
      qshift = k6+k5
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
!---#[ subroutine reconstruct_d93:
   subroutine     reconstruct_d93(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_93:
      coeffs%coeffs_93%c0 = derivative(czip)
      coeffs%coeffs_93%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_93%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_93%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_93%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_93%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_93%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_93%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_93%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_93%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_93%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_93%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_93%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_93%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_93%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_93:
   end subroutine reconstruct_d93
!---#] subroutine reconstruct_d93:
end module     p1_dbarc_epnebbbarg_d93h0l1d
