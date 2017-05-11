module p0_gg_hhg_d53h0l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d53h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   integer, private :: iv5
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d53
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(79) :: acd53
      complex(ki) :: brack
      acd53(1)=dotproduct(k1,qshift)
      acd53(2)=dotproduct(k2,qshift)
      acd53(3)=dotproduct(qshift,spvak2k5)
      acd53(4)=abb53(55)
      acd53(5)=abb53(56)
      acd53(6)=dotproduct(l4,qshift)
      acd53(7)=abb53(74)
      acd53(8)=dotproduct(qshift,qshift)
      acd53(9)=abb53(68)
      acd53(10)=abb53(42)
      acd53(11)=dotproduct(qshift,spvak1k2)
      acd53(12)=abb53(47)
      acd53(13)=abb53(67)
      acd53(14)=abb53(51)
      acd53(15)=abb53(45)
      acd53(16)=abb53(9)
      acd53(17)=abb53(31)
      acd53(18)=abb53(8)
      acd53(19)=dotproduct(qshift,spvak1k5)
      acd53(20)=abb53(49)
      acd53(21)=abb53(72)
      acd53(22)=abb53(40)
      acd53(23)=abb53(10)
      acd53(24)=dotproduct(qshift,spval4k5)
      acd53(25)=abb53(58)
      acd53(26)=abb53(46)
      acd53(27)=abb53(64)
      acd53(28)=abb53(22)
      acd53(29)=abb53(18)
      acd53(30)=abb53(30)
      acd53(31)=abb53(33)
      acd53(32)=abb53(50)
      acd53(33)=abb53(43)
      acd53(34)=dotproduct(k5,qshift)
      acd53(35)=abb53(38)
      acd53(36)=abb53(27)
      acd53(37)=abb53(70)
      acd53(38)=abb53(39)
      acd53(39)=abb53(17)
      acd53(40)=abb53(28)
      acd53(41)=abb53(29)
      acd53(42)=abb53(16)
      acd53(43)=abb53(32)
      acd53(44)=abb53(57)
      acd53(45)=abb53(36)
      acd53(46)=abb53(20)
      acd53(47)=abb53(53)
      acd53(48)=dotproduct(qshift,spvak2k1)
      acd53(49)=abb53(79)
      acd53(50)=dotproduct(qshift,spvak2l4)
      acd53(51)=abb53(78)
      acd53(52)=abb53(13)
      acd53(53)=abb53(26)
      acd53(54)=abb53(69)
      acd53(55)=abb53(12)
      acd53(56)=abb53(24)
      acd53(57)=abb53(21)
      acd53(58)=abb53(37)
      acd53(59)=abb53(14)
      acd53(60)=abb53(25)
      acd53(61)=abb53(75)
      acd53(62)=abb53(23)
      acd53(63)=abb53(15)
      acd53(64)=abb53(81)
      acd53(65)=abb53(54)
      acd53(66)=abb53(80)
      acd53(67)=abb53(35)
      acd53(68)=abb53(11)
      acd53(69)=-acd53(50)*acd53(51)
      acd53(70)=acd53(48)*acd53(49)
      acd53(71)=acd53(34)*acd53(35)
      acd53(72)=-acd53(24)*acd53(47)
      acd53(73)=-acd53(19)*acd53(46)
      acd53(74)=-acd53(6)*acd53(28)
      acd53(75)=-acd53(1)*acd53(10)
      acd53(76)=-acd53(2)*acd53(16)
      acd53(77)=-acd53(11)*acd53(45)
      acd53(78)=acd53(8)*acd53(40)
      acd53(69)=acd53(78)+acd53(77)+acd53(76)+acd53(75)+acd53(74)+acd53(73)+acd&
      &53(72)+acd53(71)+acd53(70)+acd53(52)+acd53(69)
      acd53(69)=acd53(8)*acd53(69)
      acd53(70)=-acd53(50)*acd53(58)
      acd53(71)=-acd53(48)*acd53(57)
      acd53(72)=-acd53(34)*acd53(36)
      acd53(73)=-acd53(24)*acd53(56)
      acd53(74)=-acd53(19)*acd53(55)
      acd53(75)=-acd53(6)*acd53(30)
      acd53(76)=-acd53(1)*acd53(12)
      acd53(77)=-acd53(2)*acd53(18)
      acd53(70)=acd53(77)+acd53(76)+acd53(75)+acd53(74)+acd53(73)+acd53(72)+acd&
      &53(71)+acd53(59)+acd53(70)
      acd53(70)=acd53(11)*acd53(70)
      acd53(71)=acd53(19)*acd53(43)
      acd53(72)=acd53(6)*acd53(27)
      acd53(73)=acd53(1)*acd53(9)
      acd53(74)=acd53(2)*acd53(15)
      acd53(75)=acd53(11)*acd53(42)
      acd53(76)=-acd53(8)*acd53(39)
      acd53(71)=acd53(76)+acd53(75)+acd53(74)+acd53(73)+acd53(72)-acd53(44)+acd&
      &53(71)
      acd53(71)=acd53(8)*acd53(71)
      acd53(72)=-acd53(6)*acd53(29)
      acd53(73)=acd53(2)*acd53(17)
      acd53(74)=-acd53(8)*acd53(41)
      acd53(72)=acd53(74)+acd53(73)-acd53(53)+acd53(72)
      acd53(72)=acd53(11)*acd53(72)
      acd53(72)=acd53(54)+acd53(72)
      acd53(72)=acd53(3)*acd53(72)
      acd53(73)=-acd53(19)*acd53(20)
      acd53(74)=-acd53(1)*acd53(4)
      acd53(73)=acd53(74)+acd53(21)+acd53(73)
      acd53(73)=acd53(2)*acd53(73)
      acd53(74)=acd53(34)*acd53(37)
      acd53(75)=acd53(24)*acd53(61)
      acd53(76)=acd53(19)*acd53(60)
      acd53(77)=acd53(19)*acd53(31)
      acd53(77)=acd53(32)+acd53(77)
      acd53(77)=acd53(6)*acd53(77)
      acd53(78)=-acd53(6)*acd53(7)
      acd53(78)=acd53(13)+acd53(78)
      acd53(78)=acd53(1)*acd53(78)
      acd53(70)=acd53(72)+acd53(71)+acd53(70)+acd53(73)+acd53(78)+acd53(77)+acd&
      &53(76)+acd53(75)-acd53(62)+acd53(74)
      acd53(70)=acd53(3)*acd53(70)
      acd53(71)=acd53(24)*acd53(25)
      acd53(72)=acd53(19)*acd53(23)
      acd53(73)=acd53(1)*acd53(5)
      acd53(71)=acd53(73)+acd53(72)-acd53(26)+acd53(71)
      acd53(71)=acd53(2)*acd53(71)
      acd53(72)=-acd53(50)*acd53(67)
      acd53(73)=-acd53(48)*acd53(66)
      acd53(74)=-acd53(34)*acd53(38)
      acd53(75)=-acd53(24)*acd53(65)
      acd53(76)=-acd53(19)*acd53(64)
      acd53(77)=-acd53(6)*acd53(33)
      acd53(78)=-acd53(1)*acd53(14)
      acd53(79)=acd53(2)*acd53(22)
      acd53(79)=-acd53(63)+acd53(79)
      acd53(79)=acd53(11)*acd53(79)
      brack=acd53(68)+acd53(69)+acd53(70)+acd53(71)+acd53(72)+acd53(73)+acd53(7&
      &4)+acd53(75)+acd53(76)+acd53(77)+acd53(78)+acd53(79)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd53
      complex(ki) :: brack
      acd53(1)=k1(iv1)
      acd53(2)=dotproduct(k2,qshift)
      acd53(3)=dotproduct(qshift,spvak2k5)
      acd53(4)=abb53(55)
      acd53(5)=abb53(56)
      acd53(6)=dotproduct(l4,qshift)
      acd53(7)=abb53(74)
      acd53(8)=dotproduct(qshift,qshift)
      acd53(9)=abb53(68)
      acd53(10)=abb53(42)
      acd53(11)=dotproduct(qshift,spvak1k2)
      acd53(12)=abb53(47)
      acd53(13)=abb53(67)
      acd53(14)=abb53(51)
      acd53(15)=k2(iv1)
      acd53(16)=dotproduct(k1,qshift)
      acd53(17)=abb53(45)
      acd53(18)=abb53(9)
      acd53(19)=abb53(31)
      acd53(20)=abb53(8)
      acd53(21)=dotproduct(qshift,spvak1k5)
      acd53(22)=abb53(49)
      acd53(23)=abb53(72)
      acd53(24)=abb53(40)
      acd53(25)=abb53(10)
      acd53(26)=dotproduct(qshift,spval4k5)
      acd53(27)=abb53(58)
      acd53(28)=abb53(46)
      acd53(29)=l4(iv1)
      acd53(30)=abb53(64)
      acd53(31)=abb53(22)
      acd53(32)=abb53(18)
      acd53(33)=abb53(30)
      acd53(34)=abb53(33)
      acd53(35)=abb53(50)
      acd53(36)=abb53(43)
      acd53(37)=k5(iv1)
      acd53(38)=abb53(38)
      acd53(39)=abb53(27)
      acd53(40)=abb53(70)
      acd53(41)=abb53(39)
      acd53(42)=qshift(iv1)
      acd53(43)=dotproduct(k5,qshift)
      acd53(44)=abb53(17)
      acd53(45)=abb53(28)
      acd53(46)=abb53(29)
      acd53(47)=abb53(16)
      acd53(48)=abb53(32)
      acd53(49)=abb53(57)
      acd53(50)=abb53(36)
      acd53(51)=abb53(20)
      acd53(52)=abb53(53)
      acd53(53)=dotproduct(qshift,spvak2k1)
      acd53(54)=abb53(79)
      acd53(55)=dotproduct(qshift,spvak2l4)
      acd53(56)=abb53(78)
      acd53(57)=abb53(13)
      acd53(58)=spvak2k5(iv1)
      acd53(59)=abb53(26)
      acd53(60)=abb53(69)
      acd53(61)=abb53(12)
      acd53(62)=abb53(24)
      acd53(63)=abb53(21)
      acd53(64)=abb53(37)
      acd53(65)=abb53(14)
      acd53(66)=abb53(25)
      acd53(67)=abb53(75)
      acd53(68)=abb53(23)
      acd53(69)=spvak1k2(iv1)
      acd53(70)=abb53(15)
      acd53(71)=spvak1k5(iv1)
      acd53(72)=abb53(81)
      acd53(73)=spval4k5(iv1)
      acd53(74)=abb53(54)
      acd53(75)=spvak2k1(iv1)
      acd53(76)=abb53(80)
      acd53(77)=spvak2l4(iv1)
      acd53(78)=abb53(35)
      acd53(79)=acd53(64)*acd53(77)
      acd53(80)=acd53(63)*acd53(75)
      acd53(81)=acd53(37)*acd53(39)
      acd53(82)=acd53(73)*acd53(62)
      acd53(83)=acd53(71)*acd53(61)
      acd53(84)=acd53(29)*acd53(33)
      acd53(85)=acd53(1)*acd53(12)
      acd53(86)=acd53(15)*acd53(20)
      acd53(87)=2.0_ki*acd53(42)
      acd53(88)=-acd53(47)*acd53(87)
      acd53(79)=acd53(88)+acd53(86)+acd53(85)+acd53(84)+acd53(83)+acd53(82)+acd&
      &53(81)+acd53(79)+acd53(80)
      acd53(79)=acd53(11)*acd53(79)
      acd53(80)=acd53(55)*acd53(64)
      acd53(81)=acd53(53)*acd53(63)
      acd53(82)=acd53(43)*acd53(39)
      acd53(83)=acd53(26)*acd53(62)
      acd53(84)=acd53(21)*acd53(61)
      acd53(85)=acd53(16)*acd53(12)
      acd53(86)=acd53(6)*acd53(33)
      acd53(88)=acd53(2)*acd53(20)
      acd53(80)=acd53(83)+acd53(84)+acd53(85)-acd53(65)+acd53(80)+acd53(86)+acd&
      &53(88)+acd53(81)+acd53(82)
      acd53(81)=acd53(69)*acd53(80)
      acd53(82)=-acd53(71)*acd53(48)
      acd53(83)=-acd53(29)*acd53(30)
      acd53(84)=-acd53(1)*acd53(9)
      acd53(85)=-acd53(15)*acd53(17)
      acd53(86)=-acd53(69)*acd53(47)
      acd53(88)=4.0_ki*acd53(42)
      acd53(89)=acd53(44)*acd53(88)
      acd53(82)=acd53(89)+acd53(86)+acd53(85)+acd53(84)+acd53(82)+acd53(83)
      acd53(82)=acd53(8)*acd53(82)
      acd53(83)=acd53(21)*acd53(48)
      acd53(84)=acd53(16)*acd53(9)
      acd53(85)=acd53(6)*acd53(30)
      acd53(86)=acd53(2)*acd53(17)
      acd53(83)=acd53(83)+acd53(85)+acd53(86)+acd53(84)-acd53(49)
      acd53(84)=-acd53(83)*acd53(87)
      acd53(85)=acd53(6)*acd53(32)
      acd53(86)=acd53(2)*acd53(19)
      acd53(89)=acd53(8)*acd53(46)
      acd53(85)=acd53(89)+acd53(59)+acd53(85)-acd53(86)
      acd53(86)=acd53(69)*acd53(85)
      acd53(89)=acd53(29)*acd53(32)
      acd53(90)=-acd53(15)*acd53(19)
      acd53(91)=acd53(46)*acd53(87)
      acd53(89)=acd53(91)+acd53(89)+acd53(90)
      acd53(89)=acd53(11)*acd53(89)
      acd53(86)=acd53(89)+acd53(86)
      acd53(86)=acd53(3)*acd53(86)
      acd53(85)=acd53(11)*acd53(85)
      acd53(85)=-acd53(60)+acd53(85)
      acd53(85)=acd53(58)*acd53(85)
      acd53(89)=acd53(21)*acd53(34)
      acd53(90)=acd53(16)*acd53(7)
      acd53(89)=-acd53(89)+acd53(90)-acd53(35)
      acd53(90)=acd53(29)*acd53(89)
      acd53(91)=acd53(21)*acd53(22)
      acd53(92)=acd53(16)*acd53(4)
      acd53(91)=acd53(91)+acd53(92)-acd53(23)
      acd53(92)=acd53(15)*acd53(91)
      acd53(93)=-acd53(71)*acd53(34)
      acd53(94)=acd53(1)*acd53(7)
      acd53(93)=acd53(93)+acd53(94)
      acd53(93)=acd53(6)*acd53(93)
      acd53(94)=acd53(71)*acd53(22)
      acd53(95)=acd53(1)*acd53(4)
      acd53(94)=acd53(94)+acd53(95)
      acd53(94)=acd53(2)*acd53(94)
      acd53(95)=-acd53(37)*acd53(40)
      acd53(96)=-acd53(73)*acd53(67)
      acd53(97)=-acd53(71)*acd53(66)
      acd53(98)=-acd53(1)*acd53(13)
      acd53(79)=acd53(86)+2.0_ki*acd53(85)+acd53(79)+acd53(82)+acd53(84)+acd53(&
      &81)+acd53(94)+acd53(93)+acd53(92)+acd53(98)+acd53(97)+acd53(95)+acd53(96&
      &)+acd53(90)
      acd53(79)=acd53(3)*acd53(79)
      acd53(81)=acd53(77)*acd53(56)
      acd53(82)=-acd53(75)*acd53(54)
      acd53(84)=-acd53(37)*acd53(38)
      acd53(85)=acd53(73)*acd53(52)
      acd53(86)=acd53(71)*acd53(51)
      acd53(90)=acd53(29)*acd53(31)
      acd53(92)=acd53(1)*acd53(10)
      acd53(93)=acd53(15)*acd53(18)
      acd53(94)=acd53(69)*acd53(50)
      acd53(88)=-acd53(45)*acd53(88)
      acd53(81)=acd53(88)+acd53(94)+acd53(93)+acd53(92)+acd53(90)+acd53(86)+acd&
      &53(85)+acd53(84)+acd53(81)+acd53(82)
      acd53(81)=acd53(8)*acd53(81)
      acd53(82)=acd53(55)*acd53(56)
      acd53(84)=-acd53(53)*acd53(54)
      acd53(85)=-acd53(43)*acd53(38)
      acd53(86)=acd53(26)*acd53(52)
      acd53(88)=acd53(21)*acd53(51)
      acd53(90)=acd53(16)*acd53(10)
      acd53(92)=acd53(6)*acd53(31)
      acd53(93)=acd53(2)*acd53(18)
      acd53(82)=acd53(93)+acd53(92)+acd53(90)+acd53(88)+acd53(86)+acd53(85)+acd&
      &53(84)-acd53(57)+acd53(82)
      acd53(82)=acd53(82)*acd53(87)
      acd53(84)=-acd53(8)*acd53(47)
      acd53(80)=acd53(84)+acd53(80)
      acd53(80)=acd53(11)*acd53(80)
      acd53(84)=acd53(8)*acd53(44)
      acd53(83)=acd53(84)-acd53(83)
      acd53(83)=acd53(8)*acd53(83)
      acd53(84)=acd53(6)*acd53(89)
      acd53(85)=acd53(2)*acd53(91)
      acd53(86)=-acd53(43)*acd53(40)
      acd53(88)=-acd53(26)*acd53(67)
      acd53(89)=-acd53(21)*acd53(66)
      acd53(90)=-acd53(16)*acd53(13)
      acd53(80)=acd53(80)+acd53(83)+acd53(85)+acd53(84)+acd53(90)+acd53(89)+acd&
      &53(88)+acd53(68)+acd53(86)
      acd53(80)=acd53(58)*acd53(80)
      acd53(83)=-acd53(26)*acd53(27)
      acd53(84)=-acd53(21)*acd53(25)
      acd53(85)=-acd53(16)*acd53(5)
      acd53(83)=acd53(85)+acd53(84)+acd53(28)+acd53(83)
      acd53(83)=acd53(15)*acd53(83)
      acd53(84)=-acd53(73)*acd53(27)
      acd53(85)=-acd53(71)*acd53(25)
      acd53(86)=-acd53(1)*acd53(5)
      acd53(84)=acd53(86)+acd53(84)+acd53(85)
      acd53(84)=acd53(2)*acd53(84)
      acd53(85)=-acd53(15)*acd53(24)
      acd53(86)=acd53(50)*acd53(87)
      acd53(85)=acd53(85)+acd53(86)
      acd53(85)=acd53(11)*acd53(85)
      acd53(86)=acd53(77)*acd53(78)
      acd53(87)=acd53(75)*acd53(76)
      acd53(88)=acd53(37)*acd53(41)
      acd53(89)=acd53(73)*acd53(74)
      acd53(90)=acd53(71)*acd53(72)
      acd53(91)=acd53(29)*acd53(36)
      acd53(92)=acd53(1)*acd53(14)
      acd53(93)=-acd53(2)*acd53(24)
      acd53(93)=acd53(70)+acd53(93)
      acd53(93)=acd53(69)*acd53(93)
      brack=acd53(79)+acd53(80)+acd53(81)+acd53(82)+acd53(83)+acd53(84)+acd53(8&
      &5)+acd53(86)+acd53(87)+acd53(88)+acd53(89)+acd53(90)+acd53(91)+acd53(92)&
      &+acd53(93)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(108) :: acd53
      complex(ki) :: brack
      acd53(1)=d(iv1,iv2)
      acd53(2)=dotproduct(k1,qshift)
      acd53(3)=dotproduct(qshift,spvak2k5)
      acd53(4)=abb53(68)
      acd53(5)=abb53(42)
      acd53(6)=dotproduct(k2,qshift)
      acd53(7)=abb53(45)
      acd53(8)=abb53(9)
      acd53(9)=dotproduct(l4,qshift)
      acd53(10)=abb53(64)
      acd53(11)=abb53(22)
      acd53(12)=dotproduct(k5,qshift)
      acd53(13)=abb53(38)
      acd53(14)=dotproduct(qshift,qshift)
      acd53(15)=abb53(17)
      acd53(16)=abb53(28)
      acd53(17)=dotproduct(qshift,spvak1k2)
      acd53(18)=abb53(29)
      acd53(19)=abb53(16)
      acd53(20)=dotproduct(qshift,spvak1k5)
      acd53(21)=abb53(32)
      acd53(22)=abb53(57)
      acd53(23)=abb53(36)
      acd53(24)=abb53(20)
      acd53(25)=dotproduct(qshift,spvak2k1)
      acd53(26)=abb53(79)
      acd53(27)=dotproduct(qshift,spvak2l4)
      acd53(28)=abb53(78)
      acd53(29)=dotproduct(qshift,spval4k5)
      acd53(30)=abb53(53)
      acd53(31)=abb53(13)
      acd53(32)=k1(iv1)
      acd53(33)=k2(iv2)
      acd53(34)=abb53(55)
      acd53(35)=abb53(56)
      acd53(36)=l4(iv2)
      acd53(37)=abb53(74)
      acd53(38)=qshift(iv2)
      acd53(39)=spvak2k5(iv2)
      acd53(40)=abb53(47)
      acd53(41)=abb53(67)
      acd53(42)=spvak1k2(iv2)
      acd53(43)=k1(iv2)
      acd53(44)=k2(iv1)
      acd53(45)=l4(iv1)
      acd53(46)=qshift(iv1)
      acd53(47)=spvak2k5(iv1)
      acd53(48)=spvak1k2(iv1)
      acd53(49)=abb53(31)
      acd53(50)=abb53(8)
      acd53(51)=abb53(49)
      acd53(52)=abb53(72)
      acd53(53)=abb53(40)
      acd53(54)=spvak1k5(iv2)
      acd53(55)=abb53(10)
      acd53(56)=spval4k5(iv2)
      acd53(57)=abb53(58)
      acd53(58)=spvak1k5(iv1)
      acd53(59)=spval4k5(iv1)
      acd53(60)=abb53(18)
      acd53(61)=abb53(30)
      acd53(62)=abb53(33)
      acd53(63)=abb53(50)
      acd53(64)=k5(iv1)
      acd53(65)=abb53(27)
      acd53(66)=abb53(70)
      acd53(67)=k5(iv2)
      acd53(68)=spvak2k1(iv2)
      acd53(69)=spvak2l4(iv2)
      acd53(70)=spvak2k1(iv1)
      acd53(71)=spvak2l4(iv1)
      acd53(72)=abb53(26)
      acd53(73)=abb53(69)
      acd53(74)=abb53(12)
      acd53(75)=abb53(21)
      acd53(76)=abb53(37)
      acd53(77)=abb53(24)
      acd53(78)=abb53(14)
      acd53(79)=abb53(25)
      acd53(80)=abb53(75)
      acd53(81)=acd53(77)*acd53(29)
      acd53(82)=acd53(76)*acd53(27)
      acd53(83)=acd53(75)*acd53(25)
      acd53(84)=acd53(65)*acd53(12)
      acd53(85)=acd53(20)*acd53(74)
      acd53(86)=acd53(2)*acd53(40)
      acd53(87)=acd53(9)*acd53(61)
      acd53(88)=acd53(6)*acd53(50)
      acd53(89)=acd53(14)*acd53(19)
      acd53(81)=acd53(83)+acd53(84)+acd53(85)+acd53(86)+acd53(87)+acd53(88)-acd&
      &53(89)-acd53(78)+acd53(81)+acd53(82)
      acd53(82)=-acd53(48)*acd53(81)
      acd53(83)=acd53(77)*acd53(59)
      acd53(84)=acd53(76)*acd53(71)
      acd53(85)=acd53(75)*acd53(70)
      acd53(86)=acd53(65)*acd53(64)
      acd53(87)=acd53(58)*acd53(74)
      acd53(88)=acd53(32)*acd53(40)
      acd53(89)=acd53(45)*acd53(61)
      acd53(90)=acd53(44)*acd53(50)
      acd53(91)=2.0_ki*acd53(46)
      acd53(92)=acd53(91)*acd53(19)
      acd53(83)=acd53(86)+acd53(87)+acd53(88)+acd53(89)+acd53(83)+acd53(90)-acd&
      &53(92)+acd53(84)+acd53(85)
      acd53(84)=-acd53(17)*acd53(83)
      acd53(85)=acd53(20)*acd53(21)
      acd53(86)=acd53(2)*acd53(4)
      acd53(87)=acd53(9)*acd53(10)
      acd53(88)=2.0_ki*acd53(14)
      acd53(89)=acd53(88)*acd53(15)
      acd53(90)=acd53(6)*acd53(7)
      acd53(85)=-acd53(89)+acd53(85)+acd53(90)-acd53(22)+acd53(86)+acd53(87)
      acd53(86)=acd53(85)*acd53(91)
      acd53(87)=acd53(58)*acd53(21)
      acd53(89)=acd53(32)*acd53(4)
      acd53(90)=acd53(45)*acd53(10)
      acd53(92)=acd53(44)*acd53(7)
      acd53(87)=acd53(87)+acd53(89)+acd53(90)+acd53(92)
      acd53(89)=acd53(14)*acd53(87)
      acd53(90)=acd53(9)*acd53(60)
      acd53(92)=acd53(6)*acd53(49)
      acd53(93)=acd53(14)*acd53(18)
      acd53(90)=-acd53(92)+acd53(90)+acd53(93)+acd53(72)
      acd53(92)=-acd53(17)*acd53(90)
      acd53(92)=acd53(73)+acd53(92)
      acd53(93)=2.0_ki*acd53(47)
      acd53(92)=acd53(92)*acd53(93)
      acd53(94)=acd53(20)*acd53(62)
      acd53(95)=acd53(2)*acd53(37)
      acd53(94)=acd53(63)+acd53(94)-acd53(95)
      acd53(95)=acd53(45)*acd53(94)
      acd53(96)=acd53(58)*acd53(62)
      acd53(97)=acd53(32)*acd53(37)
      acd53(96)=acd53(96)-acd53(97)
      acd53(97)=acd53(9)*acd53(96)
      acd53(98)=acd53(58)*acd53(51)
      acd53(99)=acd53(32)*acd53(34)
      acd53(98)=acd53(98)+acd53(99)
      acd53(99)=-acd53(6)*acd53(98)
      acd53(100)=acd53(20)*acd53(51)
      acd53(101)=acd53(2)*acd53(34)
      acd53(100)=-acd53(52)+acd53(100)+acd53(101)
      acd53(101)=-acd53(44)*acd53(100)
      acd53(102)=acd53(64)*acd53(66)
      acd53(103)=acd53(59)*acd53(80)
      acd53(104)=acd53(58)*acd53(79)
      acd53(105)=acd53(32)*acd53(41)
      acd53(82)=acd53(92)+acd53(84)+acd53(82)+acd53(86)+acd53(89)+acd53(101)+ac&
      &d53(99)+acd53(97)+acd53(95)+acd53(105)+acd53(104)+acd53(102)+acd53(103)
      acd53(82)=acd53(39)*acd53(82)
      acd53(84)=acd53(77)*acd53(56)
      acd53(86)=acd53(76)*acd53(69)
      acd53(89)=acd53(75)*acd53(68)
      acd53(92)=acd53(65)*acd53(67)
      acd53(95)=acd53(54)*acd53(74)
      acd53(97)=acd53(43)*acd53(40)
      acd53(99)=acd53(36)*acd53(61)
      acd53(101)=acd53(33)*acd53(50)
      acd53(102)=2.0_ki*acd53(38)
      acd53(103)=acd53(102)*acd53(19)
      acd53(84)=acd53(92)+acd53(95)+acd53(97)-acd53(103)+acd53(84)+acd53(99)+ac&
      &d53(101)+acd53(86)+acd53(89)
      acd53(86)=-acd53(48)*acd53(84)
      acd53(83)=-acd53(42)*acd53(83)
      acd53(89)=2.0_ki*acd53(1)
      acd53(92)=acd53(85)*acd53(89)
      acd53(95)=acd53(54)*acd53(21)
      acd53(97)=acd53(43)*acd53(4)
      acd53(99)=acd53(36)*acd53(10)
      acd53(101)=acd53(33)*acd53(7)
      acd53(95)=acd53(97)+acd53(95)+acd53(99)+acd53(101)
      acd53(97)=acd53(95)*acd53(91)
      acd53(99)=4.0_ki*acd53(46)
      acd53(101)=-acd53(15)*acd53(99)
      acd53(87)=acd53(101)+acd53(87)
      acd53(87)=acd53(87)*acd53(102)
      acd53(101)=-acd53(42)*acd53(90)
      acd53(103)=acd53(36)*acd53(60)
      acd53(104)=acd53(33)*acd53(49)
      acd53(105)=acd53(102)*acd53(18)
      acd53(103)=acd53(105)+acd53(103)-acd53(104)
      acd53(104)=-acd53(17)*acd53(103)
      acd53(101)=acd53(101)+acd53(104)
      acd53(93)=acd53(101)*acd53(93)
      acd53(90)=-acd53(48)*acd53(90)
      acd53(101)=acd53(45)*acd53(60)
      acd53(104)=acd53(44)*acd53(49)
      acd53(105)=acd53(91)*acd53(18)
      acd53(101)=-acd53(101)+acd53(104)-acd53(105)
      acd53(104)=acd53(17)*acd53(101)
      acd53(90)=acd53(90)+acd53(104)
      acd53(90)=acd53(39)*acd53(90)
      acd53(103)=-acd53(48)*acd53(103)
      acd53(101)=acd53(42)*acd53(101)
      acd53(104)=acd53(89)*acd53(17)
      acd53(105)=-acd53(18)*acd53(104)
      acd53(101)=acd53(105)+acd53(103)+acd53(101)
      acd53(101)=acd53(3)*acd53(101)
      acd53(103)=acd53(54)*acd53(62)
      acd53(105)=acd53(43)*acd53(37)
      acd53(103)=acd53(103)-acd53(105)
      acd53(105)=acd53(45)*acd53(103)
      acd53(96)=acd53(36)*acd53(96)
      acd53(106)=acd53(54)*acd53(51)
      acd53(107)=acd53(43)*acd53(34)
      acd53(106)=acd53(106)+acd53(107)
      acd53(107)=-acd53(44)*acd53(106)
      acd53(98)=-acd53(33)*acd53(98)
      acd53(108)=acd53(19)*acd53(104)
      acd53(83)=acd53(101)+2.0_ki*acd53(90)+acd53(93)+acd53(108)+acd53(83)+acd5&
      &3(86)+acd53(87)+acd53(97)+acd53(92)+acd53(98)+acd53(107)+acd53(105)+acd5&
      &3(96)
      acd53(83)=acd53(3)*acd53(83)
      acd53(81)=-acd53(42)*acd53(81)
      acd53(84)=-acd53(17)*acd53(84)
      acd53(85)=acd53(85)*acd53(102)
      acd53(86)=acd53(14)*acd53(95)
      acd53(87)=acd53(36)*acd53(94)
      acd53(90)=acd53(9)*acd53(103)
      acd53(92)=-acd53(6)*acd53(106)
      acd53(93)=-acd53(33)*acd53(100)
      acd53(94)=acd53(67)*acd53(66)
      acd53(95)=acd53(56)*acd53(80)
      acd53(96)=acd53(54)*acd53(79)
      acd53(97)=acd53(43)*acd53(41)
      acd53(81)=acd53(84)+acd53(81)+acd53(85)+acd53(86)+acd53(93)+acd53(92)+acd&
      &53(90)+acd53(87)+acd53(97)+acd53(96)+acd53(94)+acd53(95)
      acd53(81)=acd53(47)*acd53(81)
      acd53(84)=-acd53(29)*acd53(30)
      acd53(85)=-acd53(27)*acd53(28)
      acd53(86)=acd53(25)*acd53(26)
      acd53(87)=acd53(12)*acd53(13)
      acd53(90)=-acd53(20)*acd53(24)
      acd53(92)=-acd53(2)*acd53(5)
      acd53(93)=-acd53(9)*acd53(11)
      acd53(94)=-acd53(6)*acd53(8)
      acd53(88)=acd53(16)*acd53(88)
      acd53(84)=acd53(88)+acd53(94)+acd53(93)+acd53(92)+acd53(90)+acd53(87)+acd&
      &53(86)+acd53(85)+acd53(31)+acd53(84)
      acd53(84)=acd53(84)*acd53(89)
      acd53(85)=-acd53(28)*acd53(71)
      acd53(86)=acd53(26)*acd53(70)
      acd53(87)=acd53(64)*acd53(13)
      acd53(88)=-acd53(59)*acd53(30)
      acd53(89)=-acd53(58)*acd53(24)
      acd53(90)=-acd53(32)*acd53(5)
      acd53(92)=-acd53(45)*acd53(11)
      acd53(93)=-acd53(44)*acd53(8)
      acd53(94)=acd53(16)*acd53(99)
      acd53(85)=acd53(94)+acd53(93)+acd53(92)+acd53(90)+acd53(89)+acd53(88)+acd&
      &53(87)+acd53(85)+acd53(86)
      acd53(85)=acd53(85)*acd53(102)
      acd53(86)=-acd53(28)*acd53(69)
      acd53(87)=acd53(26)*acd53(68)
      acd53(88)=acd53(67)*acd53(13)
      acd53(89)=-acd53(56)*acd53(30)
      acd53(90)=-acd53(54)*acd53(24)
      acd53(92)=-acd53(43)*acd53(5)
      acd53(93)=-acd53(36)*acd53(11)
      acd53(94)=-acd53(33)*acd53(8)
      acd53(86)=acd53(94)+acd53(93)+acd53(92)+acd53(90)+acd53(89)+acd53(88)+acd&
      &53(86)+acd53(87)
      acd53(86)=acd53(86)*acd53(91)
      acd53(87)=acd53(56)*acd53(57)
      acd53(88)=acd53(54)*acd53(55)
      acd53(89)=acd53(43)*acd53(35)
      acd53(87)=acd53(89)+acd53(87)+acd53(88)
      acd53(87)=acd53(44)*acd53(87)
      acd53(88)=acd53(59)*acd53(57)
      acd53(89)=acd53(58)*acd53(55)
      acd53(90)=acd53(32)*acd53(35)
      acd53(88)=acd53(90)+acd53(88)+acd53(89)
      acd53(88)=acd53(33)*acd53(88)
      acd53(89)=acd53(33)*acd53(53)
      acd53(90)=-acd53(23)*acd53(102)
      acd53(89)=acd53(89)+acd53(90)
      acd53(89)=acd53(48)*acd53(89)
      acd53(90)=acd53(44)*acd53(53)
      acd53(91)=-acd53(23)*acd53(91)
      acd53(90)=acd53(90)+acd53(91)
      acd53(90)=acd53(42)*acd53(90)
      acd53(91)=-acd53(23)*acd53(104)
      brack=acd53(81)+acd53(82)+acd53(83)+acd53(84)+acd53(85)+acd53(86)+acd53(8&
      &7)+acd53(88)+acd53(89)+acd53(90)+acd53(91)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(107) :: acd53
      complex(ki) :: brack
      acd53(1)=d(iv1,iv2)
      acd53(2)=k1(iv3)
      acd53(3)=dotproduct(qshift,spvak2k5)
      acd53(4)=abb53(68)
      acd53(5)=abb53(42)
      acd53(6)=k2(iv3)
      acd53(7)=abb53(45)
      acd53(8)=abb53(9)
      acd53(9)=l4(iv3)
      acd53(10)=abb53(64)
      acd53(11)=abb53(22)
      acd53(12)=k5(iv3)
      acd53(13)=abb53(38)
      acd53(14)=qshift(iv3)
      acd53(15)=abb53(17)
      acd53(16)=abb53(28)
      acd53(17)=spvak2k5(iv3)
      acd53(18)=dotproduct(k1,qshift)
      acd53(19)=dotproduct(k2,qshift)
      acd53(20)=dotproduct(l4,qshift)
      acd53(21)=dotproduct(qshift,qshift)
      acd53(22)=dotproduct(qshift,spvak1k2)
      acd53(23)=abb53(29)
      acd53(24)=abb53(16)
      acd53(25)=dotproduct(qshift,spvak1k5)
      acd53(26)=abb53(32)
      acd53(27)=abb53(57)
      acd53(28)=spvak1k2(iv3)
      acd53(29)=abb53(36)
      acd53(30)=spvak1k5(iv3)
      acd53(31)=abb53(20)
      acd53(32)=spvak2k1(iv3)
      acd53(33)=abb53(79)
      acd53(34)=spvak2l4(iv3)
      acd53(35)=abb53(78)
      acd53(36)=spval4k5(iv3)
      acd53(37)=abb53(53)
      acd53(38)=d(iv1,iv3)
      acd53(39)=k1(iv2)
      acd53(40)=k2(iv2)
      acd53(41)=l4(iv2)
      acd53(42)=k5(iv2)
      acd53(43)=qshift(iv2)
      acd53(44)=spvak2k5(iv2)
      acd53(45)=spvak1k2(iv2)
      acd53(46)=spvak1k5(iv2)
      acd53(47)=spvak2k1(iv2)
      acd53(48)=spvak2l4(iv2)
      acd53(49)=spval4k5(iv2)
      acd53(50)=d(iv2,iv3)
      acd53(51)=k1(iv1)
      acd53(52)=k2(iv1)
      acd53(53)=l4(iv1)
      acd53(54)=k5(iv1)
      acd53(55)=qshift(iv1)
      acd53(56)=spvak2k5(iv1)
      acd53(57)=spvak1k2(iv1)
      acd53(58)=spvak1k5(iv1)
      acd53(59)=spvak2k1(iv1)
      acd53(60)=spvak2l4(iv1)
      acd53(61)=spval4k5(iv1)
      acd53(62)=abb53(55)
      acd53(63)=abb53(74)
      acd53(64)=abb53(47)
      acd53(65)=abb53(31)
      acd53(66)=abb53(8)
      acd53(67)=abb53(49)
      acd53(68)=abb53(18)
      acd53(69)=abb53(30)
      acd53(70)=abb53(33)
      acd53(71)=abb53(27)
      acd53(72)=abb53(26)
      acd53(73)=abb53(12)
      acd53(74)=abb53(21)
      acd53(75)=abb53(37)
      acd53(76)=abb53(24)
      acd53(77)=acd53(76)*acd53(49)
      acd53(78)=acd53(75)*acd53(48)
      acd53(79)=acd53(74)*acd53(47)
      acd53(80)=acd53(71)*acd53(42)
      acd53(81)=acd53(46)*acd53(73)
      acd53(82)=acd53(39)*acd53(64)
      acd53(83)=acd53(41)*acd53(69)
      acd53(84)=acd53(40)*acd53(66)
      acd53(85)=2.0_ki*acd53(43)
      acd53(86)=acd53(85)*acd53(24)
      acd53(77)=acd53(80)+acd53(81)+acd53(82)-acd53(86)+acd53(77)+acd53(83)+acd&
      &53(84)+acd53(78)+acd53(79)
      acd53(78)=acd53(57)*acd53(77)
      acd53(79)=acd53(76)*acd53(61)
      acd53(80)=acd53(75)*acd53(60)
      acd53(81)=acd53(74)*acd53(59)
      acd53(82)=acd53(71)*acd53(54)
      acd53(83)=acd53(58)*acd53(73)
      acd53(84)=acd53(51)*acd53(64)
      acd53(86)=acd53(53)*acd53(69)
      acd53(87)=acd53(52)*acd53(66)
      acd53(88)=2.0_ki*acd53(55)
      acd53(89)=acd53(88)*acd53(24)
      acd53(79)=acd53(82)+acd53(83)+acd53(84)-acd53(89)+acd53(79)+acd53(86)+acd&
      &53(87)+acd53(80)+acd53(81)
      acd53(80)=acd53(45)*acd53(79)
      acd53(81)=acd53(15)*acd53(21)
      acd53(82)=acd53(26)*acd53(25)
      acd53(83)=acd53(10)*acd53(20)
      acd53(84)=acd53(7)*acd53(19)
      acd53(86)=acd53(4)*acd53(18)
      acd53(87)=acd53(22)*acd53(24)
      acd53(81)=-acd53(27)+acd53(87)+acd53(86)+acd53(84)-2.0_ki*acd53(81)+acd53&
      &(82)+acd53(83)
      acd53(81)=2.0_ki*acd53(81)
      acd53(82)=-acd53(1)*acd53(81)
      acd53(83)=acd53(26)*acd53(58)
      acd53(84)=acd53(4)*acd53(51)
      acd53(86)=acd53(53)*acd53(10)
      acd53(87)=acd53(52)*acd53(7)
      acd53(89)=4.0_ki*acd53(15)
      acd53(90)=acd53(89)*acd53(55)
      acd53(83)=-acd53(90)+acd53(87)+acd53(86)+acd53(83)+acd53(84)
      acd53(84)=-acd53(83)*acd53(85)
      acd53(86)=acd53(26)*acd53(46)
      acd53(87)=acd53(4)*acd53(39)
      acd53(90)=acd53(41)*acd53(10)
      acd53(91)=acd53(40)*acd53(7)
      acd53(86)=acd53(91)+acd53(90)+acd53(86)+acd53(87)
      acd53(87)=-acd53(86)*acd53(88)
      acd53(90)=acd53(41)*acd53(68)
      acd53(91)=acd53(40)*acd53(65)
      acd53(90)=acd53(90)-acd53(91)
      acd53(91)=2.0_ki*acd53(23)
      acd53(92)=acd53(91)*acd53(43)
      acd53(92)=acd53(90)+acd53(92)
      acd53(93)=acd53(57)*acd53(92)
      acd53(94)=acd53(53)*acd53(68)
      acd53(95)=acd53(52)*acd53(65)
      acd53(94)=acd53(94)-acd53(95)
      acd53(95)=acd53(91)*acd53(55)
      acd53(95)=acd53(94)+acd53(95)
      acd53(96)=acd53(45)*acd53(95)
      acd53(97)=acd53(91)*acd53(22)
      acd53(98)=acd53(1)*acd53(97)
      acd53(93)=acd53(96)+acd53(98)+acd53(93)
      acd53(96)=2.0_ki*acd53(3)
      acd53(93)=acd53(93)*acd53(96)
      acd53(98)=acd53(68)*acd53(20)
      acd53(99)=acd53(65)*acd53(19)
      acd53(100)=acd53(23)*acd53(21)
      acd53(98)=acd53(72)+acd53(100)+acd53(98)-acd53(99)
      acd53(99)=acd53(45)*acd53(98)
      acd53(90)=acd53(22)*acd53(90)
      acd53(100)=acd53(43)*acd53(97)
      acd53(90)=acd53(99)+acd53(90)+acd53(100)
      acd53(99)=2.0_ki*acd53(56)
      acd53(90)=acd53(90)*acd53(99)
      acd53(100)=acd53(57)*acd53(98)
      acd53(94)=acd53(22)*acd53(94)
      acd53(101)=acd53(55)*acd53(97)
      acd53(94)=acd53(100)+acd53(94)+acd53(101)
      acd53(94)=acd53(44)*acd53(94)
      acd53(100)=acd53(46)*acd53(70)
      acd53(101)=acd53(39)*acd53(63)
      acd53(100)=acd53(100)-acd53(101)
      acd53(101)=-acd53(53)*acd53(100)
      acd53(102)=acd53(46)*acd53(67)
      acd53(103)=acd53(39)*acd53(62)
      acd53(102)=acd53(102)+acd53(103)
      acd53(103)=acd53(52)*acd53(102)
      acd53(104)=acd53(58)*acd53(70)
      acd53(105)=acd53(51)*acd53(63)
      acd53(104)=acd53(104)-acd53(105)
      acd53(105)=-acd53(41)*acd53(104)
      acd53(106)=acd53(58)*acd53(67)
      acd53(107)=acd53(51)*acd53(62)
      acd53(106)=acd53(106)+acd53(107)
      acd53(107)=acd53(40)*acd53(106)
      acd53(78)=2.0_ki*acd53(94)+acd53(90)+acd53(93)+acd53(80)+acd53(78)+acd53(&
      &82)+acd53(84)+acd53(87)+acd53(107)+acd53(105)+acd53(101)+acd53(103)
      acd53(78)=acd53(17)*acd53(78)
      acd53(80)=acd53(76)*acd53(36)
      acd53(82)=acd53(75)*acd53(34)
      acd53(84)=acd53(74)*acd53(32)
      acd53(87)=acd53(71)*acd53(12)
      acd53(90)=acd53(30)*acd53(73)
      acd53(93)=acd53(2)*acd53(64)
      acd53(94)=acd53(9)*acd53(69)
      acd53(101)=acd53(6)*acd53(66)
      acd53(103)=2.0_ki*acd53(14)
      acd53(105)=acd53(103)*acd53(24)
      acd53(80)=acd53(80)+acd53(82)+acd53(84)+acd53(87)-acd53(105)+acd53(90)+ac&
      &d53(93)+acd53(94)+acd53(101)
      acd53(82)=acd53(57)*acd53(80)
      acd53(79)=acd53(28)*acd53(79)
      acd53(84)=-acd53(38)*acd53(81)
      acd53(87)=-acd53(83)*acd53(103)
      acd53(90)=acd53(26)*acd53(30)
      acd53(93)=acd53(4)*acd53(2)
      acd53(94)=acd53(9)*acd53(10)
      acd53(101)=acd53(6)*acd53(7)
      acd53(90)=acd53(101)+acd53(94)+acd53(90)+acd53(93)
      acd53(88)=-acd53(90)*acd53(88)
      acd53(93)=acd53(9)*acd53(68)
      acd53(94)=acd53(6)*acd53(65)
      acd53(93)=acd53(93)-acd53(94)
      acd53(91)=acd53(91)*acd53(14)
      acd53(91)=acd53(93)+acd53(91)
      acd53(94)=acd53(57)*acd53(91)
      acd53(95)=acd53(28)*acd53(95)
      acd53(101)=acd53(38)*acd53(97)
      acd53(94)=acd53(95)+acd53(101)+acd53(94)
      acd53(94)=acd53(94)*acd53(96)
      acd53(95)=acd53(28)*acd53(98)
      acd53(93)=acd53(22)*acd53(93)
      acd53(98)=acd53(14)*acd53(97)
      acd53(93)=acd53(95)+acd53(93)+acd53(98)
      acd53(93)=acd53(93)*acd53(99)
      acd53(95)=acd53(30)*acd53(70)
      acd53(98)=acd53(2)*acd53(63)
      acd53(95)=acd53(95)-acd53(98)
      acd53(98)=-acd53(53)*acd53(95)
      acd53(99)=acd53(30)*acd53(67)
      acd53(101)=acd53(2)*acd53(62)
      acd53(99)=acd53(99)+acd53(101)
      acd53(101)=acd53(52)*acd53(99)
      acd53(104)=-acd53(9)*acd53(104)
      acd53(105)=acd53(6)*acd53(106)
      acd53(79)=acd53(93)+acd53(94)+acd53(79)+acd53(82)+acd53(84)+acd53(87)+acd&
      &53(88)+acd53(105)+acd53(104)+acd53(98)+acd53(101)
      acd53(79)=acd53(44)*acd53(79)
      acd53(82)=acd53(37)*acd53(61)
      acd53(84)=acd53(35)*acd53(60)
      acd53(87)=-acd53(33)*acd53(59)
      acd53(88)=-acd53(13)*acd53(54)
      acd53(93)=acd53(58)*acd53(31)
      acd53(94)=acd53(51)*acd53(5)
      acd53(98)=acd53(53)*acd53(11)
      acd53(101)=acd53(52)*acd53(8)
      acd53(104)=4.0_ki*acd53(55)
      acd53(104)=-acd53(16)*acd53(104)
      acd53(82)=acd53(104)+acd53(101)+acd53(98)+acd53(94)+acd53(93)+acd53(88)+a&
      &cd53(87)+acd53(82)+acd53(84)
      acd53(82)=acd53(50)*acd53(82)
      acd53(84)=acd53(37)*acd53(49)
      acd53(87)=acd53(35)*acd53(48)
      acd53(88)=-acd53(33)*acd53(47)
      acd53(93)=-acd53(13)*acd53(42)
      acd53(94)=acd53(46)*acd53(31)
      acd53(98)=acd53(39)*acd53(5)
      acd53(101)=acd53(41)*acd53(11)
      acd53(104)=acd53(40)*acd53(8)
      acd53(105)=4.0_ki*acd53(16)
      acd53(106)=-acd53(43)*acd53(105)
      acd53(84)=acd53(106)+acd53(104)+acd53(101)+acd53(98)+acd53(94)+acd53(93)+&
      &acd53(88)+acd53(84)+acd53(87)
      acd53(84)=acd53(38)*acd53(84)
      acd53(87)=acd53(36)*acd53(37)
      acd53(88)=acd53(34)*acd53(35)
      acd53(93)=-acd53(32)*acd53(33)
      acd53(94)=-acd53(12)*acd53(13)
      acd53(98)=acd53(30)*acd53(31)
      acd53(101)=acd53(2)*acd53(5)
      acd53(104)=acd53(9)*acd53(11)
      acd53(106)=acd53(6)*acd53(8)
      acd53(105)=-acd53(14)*acd53(105)
      acd53(87)=acd53(105)+acd53(106)+acd53(104)+acd53(101)+acd53(98)+acd53(94)&
      &+acd53(93)+acd53(87)+acd53(88)
      acd53(87)=acd53(1)*acd53(87)
      acd53(83)=-acd53(50)*acd53(83)
      acd53(88)=acd53(89)*acd53(43)
      acd53(86)=acd53(88)-acd53(86)
      acd53(88)=acd53(38)*acd53(86)
      acd53(89)=acd53(14)*acd53(89)
      acd53(89)=acd53(89)-acd53(90)
      acd53(89)=acd53(1)*acd53(89)
      acd53(93)=acd53(57)*acd53(50)
      acd53(94)=acd53(45)*acd53(38)
      acd53(98)=acd53(28)*acd53(1)
      acd53(93)=acd53(98)+acd53(93)+acd53(94)
      acd53(94)=acd53(3)*acd53(23)
      acd53(94)=acd53(94)-acd53(24)
      acd53(94)=acd53(93)*acd53(94)
      acd53(83)=acd53(89)+acd53(83)+acd53(88)+acd53(94)
      acd53(83)=acd53(3)*acd53(83)
      acd53(88)=acd53(29)*acd53(93)
      acd53(82)=acd53(83)+acd53(87)+acd53(82)+acd53(84)+acd53(88)
      acd53(80)=acd53(45)*acd53(80)
      acd53(77)=acd53(28)*acd53(77)
      acd53(81)=-acd53(50)*acd53(81)
      acd53(83)=-acd53(90)*acd53(85)
      acd53(84)=acd53(86)*acd53(103)
      acd53(85)=acd53(45)*acd53(91)
      acd53(86)=acd53(28)*acd53(92)
      acd53(87)=acd53(50)*acd53(97)
      acd53(85)=acd53(86)+acd53(87)+acd53(85)
      acd53(85)=acd53(85)*acd53(96)
      acd53(86)=-acd53(41)*acd53(95)
      acd53(87)=acd53(40)*acd53(99)
      acd53(88)=-acd53(9)*acd53(100)
      acd53(89)=acd53(6)*acd53(102)
      acd53(77)=acd53(85)+acd53(77)+acd53(80)+acd53(81)+acd53(84)+acd53(83)+acd&
      &53(89)+acd53(88)+acd53(86)+acd53(87)
      acd53(77)=acd53(56)*acd53(77)
      brack=acd53(77)+acd53(78)+acd53(79)+2.0_ki*acd53(82)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd53
      complex(ki) :: brack
      acd53(1)=d(iv1,iv2)
      acd53(2)=d(iv3,iv4)
      acd53(3)=dotproduct(qshift,spvak2k5)
      acd53(4)=abb53(17)
      acd53(5)=abb53(28)
      acd53(6)=k1(iv3)
      acd53(7)=spvak2k5(iv4)
      acd53(8)=abb53(68)
      acd53(9)=k1(iv4)
      acd53(10)=spvak2k5(iv3)
      acd53(11)=k2(iv3)
      acd53(12)=abb53(45)
      acd53(13)=k2(iv4)
      acd53(14)=l4(iv3)
      acd53(15)=abb53(64)
      acd53(16)=l4(iv4)
      acd53(17)=qshift(iv3)
      acd53(18)=qshift(iv4)
      acd53(19)=dotproduct(qshift,spvak1k2)
      acd53(20)=abb53(29)
      acd53(21)=spvak1k2(iv4)
      acd53(22)=abb53(16)
      acd53(23)=spvak1k5(iv4)
      acd53(24)=abb53(32)
      acd53(25)=spvak1k2(iv3)
      acd53(26)=spvak1k5(iv3)
      acd53(27)=d(iv1,iv3)
      acd53(28)=d(iv2,iv4)
      acd53(29)=k1(iv2)
      acd53(30)=spvak2k5(iv2)
      acd53(31)=k2(iv2)
      acd53(32)=l4(iv2)
      acd53(33)=qshift(iv2)
      acd53(34)=spvak1k2(iv2)
      acd53(35)=spvak1k5(iv2)
      acd53(36)=d(iv1,iv4)
      acd53(37)=d(iv2,iv3)
      acd53(38)=k1(iv1)
      acd53(39)=spvak2k5(iv1)
      acd53(40)=k2(iv1)
      acd53(41)=l4(iv1)
      acd53(42)=qshift(iv1)
      acd53(43)=spvak1k2(iv1)
      acd53(44)=spvak1k5(iv1)
      acd53(45)=abb53(31)
      acd53(46)=abb53(18)
      acd53(47)=acd53(2)*acd53(1)
      acd53(48)=acd53(28)*acd53(27)
      acd53(49)=acd53(37)*acd53(36)
      acd53(47)=acd53(49)+acd53(47)+acd53(48)
      acd53(48)=2.0_ki*acd53(4)
      acd53(49)=-acd53(47)*acd53(48)
      acd53(50)=acd53(20)*acd53(10)
      acd53(51)=-acd53(1)*acd53(50)
      acd53(52)=acd53(20)*acd53(30)
      acd53(53)=-acd53(27)*acd53(52)
      acd53(54)=acd53(20)*acd53(39)
      acd53(55)=-acd53(37)*acd53(54)
      acd53(51)=acd53(55)+acd53(51)+acd53(53)
      acd53(51)=acd53(21)*acd53(51)
      acd53(53)=acd53(20)*acd53(7)
      acd53(55)=-acd53(1)*acd53(53)
      acd53(56)=-acd53(28)*acd53(54)
      acd53(57)=-acd53(36)*acd53(52)
      acd53(55)=acd53(57)+acd53(55)+acd53(56)
      acd53(55)=acd53(25)*acd53(55)
      acd53(56)=-acd53(2)*acd53(54)
      acd53(57)=-acd53(27)*acd53(53)
      acd53(58)=-acd53(36)*acd53(50)
      acd53(56)=acd53(58)+acd53(56)+acd53(57)
      acd53(56)=acd53(34)*acd53(56)
      acd53(57)=-acd53(2)*acd53(52)
      acd53(58)=-acd53(28)*acd53(50)
      acd53(53)=-acd53(37)*acd53(53)
      acd53(53)=acd53(53)+acd53(57)+acd53(58)
      acd53(53)=acd53(43)*acd53(53)
      acd53(49)=acd53(53)+acd53(56)+acd53(55)+acd53(49)+acd53(51)
      acd53(49)=acd53(3)*acd53(49)
      acd53(51)=acd53(1)*acd53(7)
      acd53(53)=acd53(28)*acd53(39)
      acd53(55)=acd53(36)*acd53(30)
      acd53(53)=acd53(55)+acd53(51)+acd53(53)
      acd53(55)=-acd53(53)*acd53(48)
      acd53(56)=acd53(21)*acd53(30)
      acd53(57)=acd53(34)*acd53(7)
      acd53(56)=-acd53(57)-acd53(56)
      acd53(56)=acd53(54)*acd53(56)
      acd53(58)=acd53(43)*acd53(7)
      acd53(59)=-acd53(52)*acd53(58)
      acd53(55)=acd53(59)+acd53(55)+acd53(56)
      acd53(55)=acd53(17)*acd53(55)
      acd53(56)=acd53(1)*acd53(10)
      acd53(59)=acd53(27)*acd53(30)
      acd53(60)=acd53(37)*acd53(39)
      acd53(56)=acd53(60)+acd53(56)+acd53(59)
      acd53(59)=-acd53(56)*acd53(48)
      acd53(60)=acd53(25)*acd53(30)
      acd53(61)=acd53(34)*acd53(10)
      acd53(60)=-acd53(61)-acd53(60)
      acd53(60)=acd53(54)*acd53(60)
      acd53(62)=acd53(43)*acd53(10)
      acd53(63)=-acd53(52)*acd53(62)
      acd53(59)=acd53(63)+acd53(59)+acd53(60)
      acd53(59)=acd53(18)*acd53(59)
      acd53(60)=acd53(2)*acd53(30)
      acd53(63)=acd53(28)*acd53(10)
      acd53(64)=acd53(37)*acd53(7)
      acd53(60)=acd53(64)+acd53(60)+acd53(63)
      acd53(63)=-acd53(54)*acd53(60)
      acd53(64)=acd53(27)*acd53(7)
      acd53(65)=acd53(36)*acd53(10)
      acd53(64)=acd53(64)+acd53(65)
      acd53(65)=-acd53(52)*acd53(64)
      acd53(51)=-acd53(50)*acd53(51)
      acd53(51)=acd53(51)+acd53(63)+acd53(65)
      acd53(51)=acd53(19)*acd53(51)
      acd53(63)=acd53(21)*acd53(10)
      acd53(65)=acd53(25)*acd53(7)
      acd53(63)=acd53(63)+acd53(65)
      acd53(54)=-acd53(54)*acd53(63)
      acd53(65)=acd53(2)*acd53(39)
      acd53(64)=acd53(65)+acd53(64)
      acd53(65)=-acd53(64)*acd53(48)
      acd53(66)=-acd53(50)*acd53(58)
      acd53(54)=acd53(66)+acd53(65)+acd53(54)
      acd53(54)=acd53(33)*acd53(54)
      acd53(48)=-acd53(60)*acd53(48)
      acd53(52)=-acd53(52)*acd53(63)
      acd53(50)=-acd53(50)*acd53(57)
      acd53(48)=acd53(50)+acd53(48)+acd53(52)
      acd53(48)=acd53(42)*acd53(48)
      acd53(48)=acd53(49)+acd53(55)+acd53(59)+acd53(51)+acd53(54)+acd53(48)
      acd53(49)=acd53(6)*acd53(53)
      acd53(50)=acd53(9)*acd53(56)
      acd53(51)=acd53(38)*acd53(60)
      acd53(52)=acd53(29)*acd53(64)
      acd53(49)=acd53(51)+acd53(52)+acd53(50)+acd53(49)
      acd53(49)=acd53(8)*acd53(49)
      acd53(50)=acd53(23)*acd53(56)
      acd53(51)=acd53(26)*acd53(53)
      acd53(52)=acd53(44)*acd53(60)
      acd53(54)=acd53(35)*acd53(64)
      acd53(50)=acd53(52)+acd53(54)+acd53(51)+acd53(50)
      acd53(50)=acd53(24)*acd53(50)
      acd53(51)=acd53(21)*acd53(56)
      acd53(52)=acd53(25)*acd53(53)
      acd53(54)=acd53(43)*acd53(60)
      acd53(55)=acd53(34)*acd53(64)
      acd53(51)=acd53(54)+acd53(55)+acd53(51)+acd53(52)
      acd53(51)=acd53(22)*acd53(51)
      acd53(52)=acd53(12)*acd53(53)
      acd53(54)=acd53(58)*acd53(30)
      acd53(55)=acd53(57)*acd53(39)
      acd53(59)=acd53(39)*acd53(30)
      acd53(65)=acd53(59)*acd53(21)
      acd53(54)=acd53(65)+acd53(54)+acd53(55)
      acd53(55)=acd53(45)*acd53(54)
      acd53(52)=acd53(52)+acd53(55)
      acd53(52)=acd53(11)*acd53(52)
      acd53(55)=acd53(12)*acd53(56)
      acd53(59)=acd53(59)*acd53(25)
      acd53(62)=acd53(62)*acd53(30)
      acd53(61)=acd53(61)*acd53(39)
      acd53(59)=acd53(61)+acd53(59)+acd53(62)
      acd53(61)=acd53(45)*acd53(59)
      acd53(55)=acd53(55)+acd53(61)
      acd53(55)=acd53(13)*acd53(55)
      acd53(53)=acd53(15)*acd53(53)
      acd53(54)=-acd53(46)*acd53(54)
      acd53(53)=acd53(53)+acd53(54)
      acd53(53)=acd53(14)*acd53(53)
      acd53(54)=acd53(15)*acd53(56)
      acd53(56)=-acd53(46)*acd53(59)
      acd53(54)=acd53(54)+acd53(56)
      acd53(54)=acd53(16)*acd53(54)
      acd53(56)=acd53(12)*acd53(64)
      acd53(59)=acd53(39)*acd53(63)
      acd53(58)=acd53(58)*acd53(10)
      acd53(58)=acd53(58)+acd53(59)
      acd53(59)=acd53(45)*acd53(58)
      acd53(56)=acd53(56)+acd53(59)
      acd53(56)=acd53(31)*acd53(56)
      acd53(59)=acd53(15)*acd53(64)
      acd53(58)=-acd53(46)*acd53(58)
      acd53(58)=acd53(59)+acd53(58)
      acd53(58)=acd53(32)*acd53(58)
      acd53(59)=acd53(12)*acd53(60)
      acd53(61)=acd53(30)*acd53(63)
      acd53(57)=acd53(57)*acd53(10)
      acd53(57)=acd53(57)+acd53(61)
      acd53(61)=acd53(45)*acd53(57)
      acd53(59)=acd53(59)+acd53(61)
      acd53(59)=acd53(40)*acd53(59)
      acd53(60)=acd53(15)*acd53(60)
      acd53(57)=-acd53(46)*acd53(57)
      acd53(57)=acd53(60)+acd53(57)
      acd53(57)=acd53(41)*acd53(57)
      acd53(47)=acd53(5)*acd53(47)
      acd53(47)=4.0_ki*acd53(47)+acd53(57)+acd53(59)+acd53(58)+acd53(56)+acd53(&
      &54)+acd53(53)+acd53(55)+acd53(52)+acd53(51)+acd53(50)+acd53(49)+2.0_ki*a&
      &cd53(48)
      brack=2.0_ki*acd53(47)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(40) :: acd53
      complex(ki) :: brack
      acd53(1)=d(iv1,iv2)
      acd53(2)=d(iv3,iv4)
      acd53(3)=spvak2k5(iv5)
      acd53(4)=abb53(17)
      acd53(5)=d(iv3,iv5)
      acd53(6)=spvak2k5(iv4)
      acd53(7)=d(iv4,iv5)
      acd53(8)=spvak2k5(iv3)
      acd53(9)=spvak1k2(iv5)
      acd53(10)=abb53(29)
      acd53(11)=spvak1k2(iv4)
      acd53(12)=spvak1k2(iv3)
      acd53(13)=d(iv1,iv3)
      acd53(14)=d(iv2,iv4)
      acd53(15)=d(iv2,iv5)
      acd53(16)=spvak2k5(iv2)
      acd53(17)=spvak1k2(iv2)
      acd53(18)=d(iv1,iv4)
      acd53(19)=d(iv2,iv3)
      acd53(20)=d(iv1,iv5)
      acd53(21)=spvak2k5(iv1)
      acd53(22)=spvak1k2(iv1)
      acd53(23)=acd53(9)*acd53(8)
      acd53(24)=acd53(12)*acd53(3)
      acd53(23)=acd53(23)+acd53(24)
      acd53(24)=acd53(16)*acd53(10)
      acd53(25)=acd53(24)*acd53(23)
      acd53(26)=2.0_ki*acd53(4)
      acd53(27)=acd53(26)*acd53(5)
      acd53(28)=acd53(16)*acd53(27)
      acd53(29)=acd53(15)*acd53(8)*acd53(26)
      acd53(30)=acd53(8)*acd53(10)
      acd53(31)=acd53(30)*acd53(3)
      acd53(32)=acd53(17)*acd53(31)
      acd53(25)=acd53(32)+acd53(29)+acd53(28)+acd53(25)
      acd53(25)=acd53(18)*acd53(25)
      acd53(28)=acd53(2)*acd53(3)
      acd53(29)=acd53(5)*acd53(6)
      acd53(32)=acd53(7)*acd53(8)
      acd53(28)=acd53(32)+acd53(28)+acd53(29)
      acd53(29)=acd53(24)*acd53(28)
      acd53(32)=acd53(14)*acd53(31)
      acd53(30)=acd53(30)*acd53(6)
      acd53(33)=acd53(15)*acd53(30)
      acd53(34)=acd53(3)*acd53(6)*acd53(10)
      acd53(35)=acd53(19)*acd53(34)
      acd53(29)=acd53(35)+acd53(33)+acd53(32)+acd53(29)
      acd53(29)=acd53(22)*acd53(29)
      acd53(32)=acd53(1)*acd53(4)*acd53(28)
      acd53(33)=acd53(21)*acd53(10)
      acd53(23)=acd53(33)*acd53(23)
      acd53(27)=acd53(21)*acd53(27)
      acd53(35)=acd53(26)*acd53(13)
      acd53(36)=acd53(3)*acd53(35)
      acd53(23)=acd53(36)+acd53(27)+acd53(23)
      acd53(23)=acd53(14)*acd53(23)
      acd53(27)=acd53(11)*acd53(8)
      acd53(36)=acd53(12)*acd53(6)
      acd53(27)=acd53(27)+acd53(36)
      acd53(36)=acd53(33)*acd53(27)
      acd53(37)=acd53(2)*acd53(26)*acd53(21)
      acd53(35)=acd53(6)*acd53(35)
      acd53(35)=acd53(35)+acd53(37)+acd53(36)
      acd53(35)=acd53(15)*acd53(35)
      acd53(28)=acd53(33)*acd53(28)
      acd53(36)=acd53(13)*acd53(34)
      acd53(28)=acd53(36)+acd53(28)
      acd53(28)=acd53(17)*acd53(28)
      acd53(36)=acd53(9)*acd53(6)
      acd53(37)=acd53(11)*acd53(3)
      acd53(36)=acd53(36)+acd53(37)
      acd53(37)=acd53(33)*acd53(36)
      acd53(38)=acd53(7)*acd53(21)
      acd53(39)=acd53(18)*acd53(3)
      acd53(38)=acd53(39)+acd53(38)
      acd53(38)=acd53(26)*acd53(38)
      acd53(37)=acd53(38)+acd53(37)
      acd53(37)=acd53(19)*acd53(37)
      acd53(38)=acd53(2)*acd53(16)
      acd53(39)=acd53(14)*acd53(8)
      acd53(40)=acd53(19)*acd53(6)
      acd53(38)=acd53(40)+acd53(39)+acd53(38)
      acd53(38)=acd53(26)*acd53(38)
      acd53(27)=acd53(24)*acd53(27)
      acd53(39)=acd53(17)*acd53(30)
      acd53(27)=acd53(39)+acd53(38)+acd53(27)
      acd53(27)=acd53(20)*acd53(27)
      acd53(30)=acd53(1)*acd53(30)
      acd53(33)=acd53(33)*acd53(16)
      acd53(38)=acd53(2)*acd53(33)
      acd53(30)=acd53(30)+acd53(38)
      acd53(30)=acd53(9)*acd53(30)
      acd53(31)=acd53(1)*acd53(31)
      acd53(38)=acd53(5)*acd53(33)
      acd53(31)=acd53(31)+acd53(38)
      acd53(31)=acd53(11)*acd53(31)
      acd53(34)=acd53(1)*acd53(34)
      acd53(33)=acd53(7)*acd53(33)
      acd53(33)=acd53(34)+acd53(33)
      acd53(33)=acd53(12)*acd53(33)
      acd53(24)=acd53(24)*acd53(36)
      acd53(26)=acd53(7)*acd53(16)*acd53(26)
      acd53(24)=acd53(26)+acd53(24)
      acd53(24)=acd53(13)*acd53(24)
      acd53(23)=acd53(29)+acd53(27)+acd53(37)+acd53(25)+acd53(28)+acd53(35)+acd&
      &53(23)+acd53(24)+acd53(33)+acd53(31)+2.0_ki*acd53(32)+acd53(30)
      brack=4.0_ki*acd53(23)
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
      integer, intent(in), optional :: i5
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k2
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
      if(present(i5)) then
          iv5=i5
          deg=5
      else
          iv5=1
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
      if(deg.eq.5) then
         numerator = cond(epspow.eq.t1,brack_6,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d53:
   subroutine     reconstruct_d53(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group8
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group8), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_53:
      coeffs%coeffs_53%c0 = derivative(czip)
      coeffs%coeffs_53%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_53%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_53%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_53%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_53%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_53%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_53%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_53%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_53%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_53%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_53%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_53%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_53%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_53%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_53%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_53%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_53%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_53%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_53%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_53%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_53%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_53%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_53%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_53%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_53%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_53%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_53%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_53%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_53%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_53%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_53%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_53%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_53%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_53%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_53%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_53%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_53%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_53%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_53%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_53%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_53%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_53%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_53%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_53%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_53%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_53%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_53%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_53%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_53%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_53%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_53%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_53%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_53%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_53%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_53%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_53%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_53%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_53%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_53%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_53%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_53%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_53%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_53%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_53%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_53%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_53%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_53%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_53%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_53%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_53%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_53%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_53%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_53%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_53%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_53%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_53%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_53%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_53%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_53%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_53%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_53%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_53%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_53%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_53%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_53%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_53%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_53%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_53%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_53%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_53%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_53%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_53%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_53%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_53%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_53%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_53%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_53%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_53%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_53%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_53%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_53%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_53%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_53%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_53%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_53%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_53%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_53%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_53%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_53%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_53%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_53%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_53%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_53%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_53%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_53%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_53%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_53%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_53%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_53%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_53%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_53%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_53%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_53%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_53%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_53%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_53:
   end subroutine reconstruct_d53
!---#] subroutine reconstruct_d53:
end module p0_gg_hhg_d53h0l1d_qp
