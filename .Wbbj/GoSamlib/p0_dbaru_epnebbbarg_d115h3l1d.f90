module     p0_dbaru_epnebbbarg_d115h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d115h3l1d.f90
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
   public :: derivative , reconstruct_d115
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd115h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd115
      complex(ki) :: brack
      acd115(1)=dotproduct(k1,qshift)
      acd115(2)=dotproduct(k2,qshift)
      acd115(3)=abb115(88)
      acd115(4)=dotproduct(k3,qshift)
      acd115(5)=dotproduct(k4,qshift)
      acd115(6)=dotproduct(e7,qshift)
      acd115(7)=abb115(19)
      acd115(8)=dotproduct(qshift,spvak4k2)
      acd115(9)=abb115(31)
      acd115(10)=dotproduct(qshift,spvak4k3)
      acd115(11)=abb115(39)
      acd115(12)=abb115(35)
      acd115(13)=abb115(23)
      acd115(14)=dotproduct(l5,qshift)
      acd115(15)=abb115(143)
      acd115(16)=dotproduct(l6,qshift)
      acd115(17)=dotproduct(k7,qshift)
      acd115(18)=abb115(140)
      acd115(19)=abb115(29)
      acd115(20)=abb115(40)
      acd115(21)=abb115(59)
      acd115(22)=dotproduct(qshift,spvak2l5)
      acd115(23)=abb115(12)
      acd115(24)=dotproduct(qshift,spvak2l6)
      acd115(25)=abb115(55)
      acd115(26)=abb115(25)
      acd115(27)=abb115(46)
      acd115(28)=abb115(128)
      acd115(29)=abb115(98)
      acd115(30)=abb115(43)
      acd115(31)=abb115(100)
      acd115(32)=abb115(86)
      acd115(33)=abb115(32)
      acd115(34)=abb115(64)
      acd115(35)=abb115(11)
      acd115(36)=abb115(49)
      acd115(37)=abb115(41)
      acd115(38)=dotproduct(qshift,qshift)
      acd115(39)=abb115(13)
      acd115(40)=abb115(44)
      acd115(41)=dotproduct(qshift,spvak1k2)
      acd115(42)=abb115(21)
      acd115(43)=dotproduct(qshift,spvak1k3)
      acd115(44)=abb115(24)
      acd115(45)=dotproduct(qshift,spvak1l5)
      acd115(46)=abb115(17)
      acd115(47)=dotproduct(qshift,spvak1l6)
      acd115(48)=abb115(20)
      acd115(49)=abb115(27)
      acd115(50)=abb115(16)
      acd115(51)=abb115(14)
      acd115(52)=abb115(45)
      acd115(53)=abb115(10)
      acd115(54)=abb115(22)
      acd115(55)=abb115(58)
      acd115(56)=abb115(47)
      acd115(57)=dotproduct(qshift,spvak1e7)
      acd115(58)=abb115(15)
      acd115(59)=abb115(9)
      acd115(60)=abb115(56)
      acd115(61)=abb115(18)
      acd115(62)=abb115(28)
      acd115(63)=abb115(8)
      acd115(64)=acd115(4)+acd115(5)
      acd115(65)=acd115(27)*acd115(64)
      acd115(66)=acd115(14)+acd115(16)
      acd115(67)=acd115(38)-acd115(66)
      acd115(67)=acd115(29)*acd115(67)
      acd115(68)=acd115(47)*acd115(48)
      acd115(69)=acd115(45)*acd115(46)
      acd115(70)=acd115(43)*acd115(44)
      acd115(71)=acd115(41)*acd115(42)
      acd115(72)=acd115(1)*acd115(7)
      acd115(73)=acd115(10)*acd115(40)
      acd115(74)=acd115(8)*acd115(39)
      acd115(75)=acd115(2)*acd115(19)
      acd115(65)=acd115(75)+acd115(74)+acd115(73)+acd115(72)+acd115(71)+acd115(&
      &70)+acd115(69)-acd115(49)+acd115(68)+acd115(67)+acd115(65)
      acd115(65)=acd115(6)*acd115(65)
      acd115(67)=acd115(15)*acd115(66)
      acd115(68)=acd115(1)*acd115(3)
      acd115(69)=acd115(17)*acd115(18)
      acd115(70)=acd115(24)*acd115(25)
      acd115(71)=acd115(22)*acd115(23)
      acd115(67)=-acd115(67)+acd115(68)-acd115(69)+acd115(70)+acd115(71)
      acd115(68)=acd115(67)-acd115(28)
      acd115(68)=-acd115(68)*acd115(64)
      acd115(69)=-acd115(31)*acd115(66)
      acd115(70)=acd115(1)*acd115(11)
      acd115(71)=acd115(17)*acd115(34)
      acd115(72)=acd115(24)*acd115(55)
      acd115(73)=acd115(22)*acd115(54)
      acd115(69)=acd115(73)+acd115(72)+acd115(71)+acd115(70)-acd115(56)+acd115(&
      &69)
      acd115(69)=acd115(10)*acd115(69)
      acd115(70)=acd115(30)*acd115(66)
      acd115(71)=acd115(1)*acd115(9)
      acd115(72)=acd115(17)*acd115(33)
      acd115(73)=acd115(24)*acd115(52)
      acd115(74)=acd115(22)*acd115(51)
      acd115(70)=acd115(74)+acd115(73)+acd115(72)+acd115(71)-acd115(53)+acd115(&
      &70)
      acd115(70)=acd115(8)*acd115(70)
      acd115(64)=-acd115(2)+acd115(64)
      acd115(64)=acd115(13)*acd115(64)
      acd115(71)=acd115(10)*acd115(21)
      acd115(72)=acd115(8)*acd115(20)
      acd115(64)=acd115(72)+acd115(71)-acd115(26)+acd115(64)+acd115(67)
      acd115(64)=acd115(2)*acd115(64)
      acd115(67)=acd115(17)+acd115(38)
      acd115(71)=-acd115(36)*acd115(67)
      acd115(72)=acd115(57)*acd115(60)
      acd115(71)=-acd115(61)+acd115(72)+acd115(71)
      acd115(71)=acd115(24)*acd115(71)
      acd115(67)=-acd115(35)*acd115(67)
      acd115(72)=acd115(57)*acd115(58)
      acd115(67)=-acd115(59)+acd115(72)+acd115(67)
      acd115(67)=acd115(22)*acd115(67)
      acd115(66)=-acd115(32)*acd115(66)
      acd115(72)=-acd115(57)*acd115(62)
      acd115(73)=acd115(38)*acd115(50)
      acd115(74)=-acd115(1)*acd115(12)
      acd115(75)=-acd115(17)*acd115(37)
      brack=acd115(63)+acd115(64)+acd115(65)+acd115(66)+acd115(67)+acd115(68)+a&
      &cd115(69)+acd115(70)+acd115(71)+acd115(72)+acd115(73)+acd115(74)+acd115(&
      &75)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd115h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(100) :: acd115
      complex(ki) :: brack
      acd115(1)=k1(iv1)
      acd115(2)=dotproduct(k2,qshift)
      acd115(3)=abb115(88)
      acd115(4)=dotproduct(k3,qshift)
      acd115(5)=dotproduct(k4,qshift)
      acd115(6)=dotproduct(e7,qshift)
      acd115(7)=abb115(19)
      acd115(8)=dotproduct(qshift,spvak4k2)
      acd115(9)=abb115(31)
      acd115(10)=dotproduct(qshift,spvak4k3)
      acd115(11)=abb115(39)
      acd115(12)=abb115(35)
      acd115(13)=k2(iv1)
      acd115(14)=dotproduct(k1,qshift)
      acd115(15)=abb115(23)
      acd115(16)=dotproduct(l5,qshift)
      acd115(17)=abb115(143)
      acd115(18)=dotproduct(l6,qshift)
      acd115(19)=dotproduct(k7,qshift)
      acd115(20)=abb115(140)
      acd115(21)=abb115(29)
      acd115(22)=abb115(40)
      acd115(23)=abb115(59)
      acd115(24)=dotproduct(qshift,spvak2l5)
      acd115(25)=abb115(12)
      acd115(26)=dotproduct(qshift,spvak2l6)
      acd115(27)=abb115(55)
      acd115(28)=abb115(25)
      acd115(29)=k3(iv1)
      acd115(30)=abb115(46)
      acd115(31)=abb115(128)
      acd115(32)=k4(iv1)
      acd115(33)=l5(iv1)
      acd115(34)=abb115(98)
      acd115(35)=abb115(43)
      acd115(36)=abb115(100)
      acd115(37)=abb115(86)
      acd115(38)=l6(iv1)
      acd115(39)=k7(iv1)
      acd115(40)=abb115(32)
      acd115(41)=abb115(64)
      acd115(42)=abb115(11)
      acd115(43)=abb115(49)
      acd115(44)=abb115(41)
      acd115(45)=e7(iv1)
      acd115(46)=dotproduct(qshift,qshift)
      acd115(47)=abb115(13)
      acd115(48)=abb115(44)
      acd115(49)=dotproduct(qshift,spvak1k2)
      acd115(50)=abb115(21)
      acd115(51)=dotproduct(qshift,spvak1k3)
      acd115(52)=abb115(24)
      acd115(53)=dotproduct(qshift,spvak1l5)
      acd115(54)=abb115(17)
      acd115(55)=dotproduct(qshift,spvak1l6)
      acd115(56)=abb115(20)
      acd115(57)=abb115(27)
      acd115(58)=qshift(iv1)
      acd115(59)=abb115(16)
      acd115(60)=spvak4k2(iv1)
      acd115(61)=abb115(14)
      acd115(62)=abb115(45)
      acd115(63)=abb115(10)
      acd115(64)=spvak4k3(iv1)
      acd115(65)=abb115(22)
      acd115(66)=abb115(58)
      acd115(67)=abb115(47)
      acd115(68)=spvak2l5(iv1)
      acd115(69)=dotproduct(qshift,spvak1e7)
      acd115(70)=abb115(15)
      acd115(71)=abb115(9)
      acd115(72)=spvak2l6(iv1)
      acd115(73)=abb115(56)
      acd115(74)=abb115(18)
      acd115(75)=spvak1k2(iv1)
      acd115(76)=spvak1k3(iv1)
      acd115(77)=spvak1l5(iv1)
      acd115(78)=spvak1l6(iv1)
      acd115(79)=spvak1e7(iv1)
      acd115(80)=abb115(28)
      acd115(81)=acd115(33)+acd115(38)
      acd115(82)=2.0_ki*acd115(58)
      acd115(83)=-acd115(82)+acd115(81)
      acd115(83)=acd115(34)*acd115(83)
      acd115(84)=acd115(29)+acd115(32)
      acd115(85)=-acd115(30)*acd115(84)
      acd115(86)=-acd115(56)*acd115(78)
      acd115(87)=-acd115(54)*acd115(77)
      acd115(88)=-acd115(52)*acd115(76)
      acd115(89)=-acd115(50)*acd115(75)
      acd115(90)=-acd115(1)*acd115(7)
      acd115(91)=-acd115(64)*acd115(48)
      acd115(92)=-acd115(60)*acd115(47)
      acd115(93)=-acd115(13)*acd115(21)
      acd115(83)=acd115(93)+acd115(92)+acd115(91)+acd115(90)+acd115(89)+acd115(&
      &88)+acd115(86)+acd115(87)+acd115(83)+acd115(85)
      acd115(83)=acd115(6)*acd115(83)
      acd115(85)=acd115(4)+acd115(5)
      acd115(86)=-acd115(30)*acd115(85)
      acd115(87)=acd115(16)+acd115(18)
      acd115(88)=-acd115(46)+acd115(87)
      acd115(88)=acd115(34)*acd115(88)
      acd115(89)=-acd115(56)*acd115(55)
      acd115(90)=-acd115(54)*acd115(53)
      acd115(91)=-acd115(52)*acd115(51)
      acd115(92)=-acd115(50)*acd115(49)
      acd115(93)=-acd115(14)*acd115(7)
      acd115(94)=-acd115(10)*acd115(48)
      acd115(95)=-acd115(8)*acd115(47)
      acd115(96)=-acd115(2)*acd115(21)
      acd115(86)=acd115(96)+acd115(95)+acd115(94)+acd115(93)+acd115(92)+acd115(&
      &91)+acd115(90)+acd115(57)+acd115(89)+acd115(88)+acd115(86)
      acd115(86)=acd115(45)*acd115(86)
      acd115(88)=acd115(1)*acd115(3)
      acd115(89)=acd115(39)*acd115(20)
      acd115(88)=acd115(88)-acd115(89)
      acd115(89)=-acd115(15)*acd115(84)
      acd115(90)=-acd115(72)*acd115(27)
      acd115(91)=-acd115(68)*acd115(25)
      acd115(92)=-acd115(64)*acd115(23)
      acd115(93)=-acd115(60)*acd115(22)
      acd115(94)=acd115(17)*acd115(81)
      acd115(89)=acd115(94)+acd115(93)+acd115(92)+acd115(91)+acd115(90)-acd115(&
      &88)+acd115(89)
      acd115(89)=acd115(2)*acd115(89)
      acd115(90)=acd115(19)+acd115(46)
      acd115(91)=acd115(43)*acd115(90)
      acd115(92)=acd115(27)*acd115(85)
      acd115(93)=-acd115(69)*acd115(73)
      acd115(94)=-acd115(10)*acd115(66)
      acd115(95)=-acd115(8)*acd115(62)
      acd115(91)=acd115(95)+acd115(94)+acd115(74)+acd115(93)+acd115(92)+acd115(&
      &91)
      acd115(91)=acd115(72)*acd115(91)
      acd115(90)=acd115(42)*acd115(90)
      acd115(92)=acd115(25)*acd115(85)
      acd115(93)=-acd115(69)*acd115(70)
      acd115(94)=-acd115(10)*acd115(65)
      acd115(95)=-acd115(8)*acd115(61)
      acd115(90)=acd115(95)+acd115(94)+acd115(71)+acd115(93)+acd115(92)+acd115(&
      &90)
      acd115(90)=acd115(68)*acd115(90)
      acd115(92)=acd115(36)*acd115(87)
      acd115(93)=-acd115(14)*acd115(11)
      acd115(94)=-acd115(19)*acd115(41)
      acd115(95)=-acd115(26)*acd115(66)
      acd115(96)=-acd115(24)*acd115(65)
      acd115(92)=acd115(96)+acd115(95)+acd115(94)+acd115(93)+acd115(67)+acd115(&
      &92)
      acd115(92)=acd115(64)*acd115(92)
      acd115(93)=-acd115(35)*acd115(87)
      acd115(94)=-acd115(14)*acd115(9)
      acd115(95)=-acd115(19)*acd115(40)
      acd115(96)=-acd115(26)*acd115(62)
      acd115(97)=-acd115(24)*acd115(61)
      acd115(93)=acd115(97)+acd115(96)+acd115(95)+acd115(94)+acd115(63)+acd115(&
      &93)
      acd115(93)=acd115(60)*acd115(93)
      acd115(94)=acd115(3)*acd115(14)
      acd115(95)=acd115(19)*acd115(20)
      acd115(96)=acd115(26)*acd115(27)
      acd115(97)=acd115(24)*acd115(25)
      acd115(94)=acd115(94)-acd115(95)+acd115(96)+acd115(97)
      acd115(95)=2.0_ki*acd115(2)-acd115(85)
      acd115(95)=acd115(15)*acd115(95)
      acd115(96)=-acd115(10)*acd115(23)
      acd115(97)=-acd115(8)*acd115(22)
      acd115(98)=acd115(17)*acd115(87)
      acd115(95)=acd115(98)+acd115(97)+acd115(96)+acd115(28)+acd115(95)-acd115(&
      &94)
      acd115(95)=acd115(13)*acd115(95)
      acd115(94)=acd115(94)-acd115(31)
      acd115(94)=acd115(94)*acd115(84)
      acd115(96)=acd115(36)*acd115(81)
      acd115(97)=-acd115(1)*acd115(11)
      acd115(98)=-acd115(39)*acd115(41)
      acd115(96)=acd115(98)+acd115(97)+acd115(96)
      acd115(96)=acd115(10)*acd115(96)
      acd115(97)=-acd115(35)*acd115(81)
      acd115(98)=-acd115(1)*acd115(9)
      acd115(99)=-acd115(39)*acd115(40)
      acd115(97)=acd115(99)+acd115(98)+acd115(97)
      acd115(97)=acd115(8)*acd115(97)
      acd115(98)=-acd115(81)*acd115(85)
      acd115(84)=-acd115(87)*acd115(84)
      acd115(84)=acd115(84)+acd115(98)
      acd115(84)=acd115(17)*acd115(84)
      acd115(85)=acd115(88)*acd115(85)
      acd115(87)=acd115(82)+acd115(39)
      acd115(88)=acd115(43)*acd115(87)
      acd115(98)=-acd115(79)*acd115(73)
      acd115(88)=acd115(98)+acd115(88)
      acd115(88)=acd115(26)*acd115(88)
      acd115(87)=acd115(42)*acd115(87)
      acd115(98)=-acd115(79)*acd115(70)
      acd115(87)=acd115(98)+acd115(87)
      acd115(87)=acd115(24)*acd115(87)
      acd115(81)=acd115(37)*acd115(81)
      acd115(98)=acd115(79)*acd115(80)
      acd115(82)=-acd115(59)*acd115(82)
      acd115(99)=acd115(1)*acd115(12)
      acd115(100)=acd115(39)*acd115(44)
      brack=acd115(81)+acd115(82)+acd115(83)+acd115(84)+acd115(85)+acd115(86)+a&
      &cd115(87)+acd115(88)+acd115(89)+acd115(90)+acd115(91)+acd115(92)+acd115(&
      &93)+acd115(94)+acd115(95)+acd115(96)+acd115(97)+acd115(98)+acd115(99)+ac&
      &d115(100)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd115h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(92) :: acd115
      complex(ki) :: brack
      acd115(1)=d(iv1,iv2)
      acd115(2)=dotproduct(e7,qshift)
      acd115(3)=abb115(98)
      acd115(4)=dotproduct(qshift,spvak2l5)
      acd115(5)=abb115(11)
      acd115(6)=dotproduct(qshift,spvak2l6)
      acd115(7)=abb115(49)
      acd115(8)=abb115(16)
      acd115(9)=k1(iv1)
      acd115(10)=k2(iv2)
      acd115(11)=abb115(88)
      acd115(12)=k3(iv2)
      acd115(13)=k4(iv2)
      acd115(14)=e7(iv2)
      acd115(15)=abb115(19)
      acd115(16)=spvak4k2(iv2)
      acd115(17)=abb115(31)
      acd115(18)=spvak4k3(iv2)
      acd115(19)=abb115(39)
      acd115(20)=k1(iv2)
      acd115(21)=k2(iv1)
      acd115(22)=k3(iv1)
      acd115(23)=k4(iv1)
      acd115(24)=e7(iv1)
      acd115(25)=spvak4k2(iv1)
      acd115(26)=spvak4k3(iv1)
      acd115(27)=abb115(23)
      acd115(28)=l5(iv2)
      acd115(29)=abb115(143)
      acd115(30)=l6(iv2)
      acd115(31)=k7(iv2)
      acd115(32)=abb115(140)
      acd115(33)=abb115(29)
      acd115(34)=spvak2l5(iv2)
      acd115(35)=abb115(12)
      acd115(36)=spvak2l6(iv2)
      acd115(37)=abb115(55)
      acd115(38)=abb115(40)
      acd115(39)=abb115(59)
      acd115(40)=l5(iv1)
      acd115(41)=l6(iv1)
      acd115(42)=k7(iv1)
      acd115(43)=spvak2l5(iv1)
      acd115(44)=spvak2l6(iv1)
      acd115(45)=abb115(46)
      acd115(46)=abb115(43)
      acd115(47)=abb115(100)
      acd115(48)=abb115(32)
      acd115(49)=abb115(64)
      acd115(50)=qshift(iv2)
      acd115(51)=abb115(13)
      acd115(52)=abb115(44)
      acd115(53)=spvak1k2(iv2)
      acd115(54)=abb115(21)
      acd115(55)=spvak1k3(iv2)
      acd115(56)=abb115(24)
      acd115(57)=spvak1l5(iv2)
      acd115(58)=abb115(17)
      acd115(59)=spvak1l6(iv2)
      acd115(60)=abb115(20)
      acd115(61)=qshift(iv1)
      acd115(62)=spvak1k2(iv1)
      acd115(63)=spvak1k3(iv1)
      acd115(64)=spvak1l5(iv1)
      acd115(65)=spvak1l6(iv1)
      acd115(66)=abb115(14)
      acd115(67)=abb115(22)
      acd115(68)=spvak1e7(iv2)
      acd115(69)=abb115(15)
      acd115(70)=spvak1e7(iv1)
      acd115(71)=abb115(45)
      acd115(72)=abb115(58)
      acd115(73)=abb115(56)
      acd115(74)=acd115(28)+acd115(30)
      acd115(75)=2.0_ki*acd115(50)
      acd115(76)=acd115(75)-acd115(74)
      acd115(76)=acd115(3)*acd115(76)
      acd115(77)=acd115(12)+acd115(13)
      acd115(78)=acd115(45)*acd115(77)
      acd115(79)=acd115(60)*acd115(59)
      acd115(80)=acd115(58)*acd115(57)
      acd115(81)=acd115(56)*acd115(55)
      acd115(82)=acd115(54)*acd115(53)
      acd115(83)=acd115(20)*acd115(15)
      acd115(84)=acd115(18)*acd115(52)
      acd115(85)=acd115(16)*acd115(51)
      acd115(86)=acd115(10)*acd115(33)
      acd115(76)=acd115(86)+acd115(85)+acd115(84)+acd115(76)+acd115(83)+acd115(&
      &82)+acd115(81)+acd115(79)+acd115(80)+acd115(78)
      acd115(76)=acd115(24)*acd115(76)
      acd115(78)=acd115(40)+acd115(41)
      acd115(79)=2.0_ki*acd115(61)
      acd115(80)=acd115(79)-acd115(78)
      acd115(80)=acd115(3)*acd115(80)
      acd115(81)=acd115(22)+acd115(23)
      acd115(82)=acd115(45)*acd115(81)
      acd115(83)=acd115(60)*acd115(65)
      acd115(84)=acd115(58)*acd115(64)
      acd115(85)=acd115(56)*acd115(63)
      acd115(86)=acd115(54)*acd115(62)
      acd115(87)=acd115(9)*acd115(15)
      acd115(88)=acd115(26)*acd115(52)
      acd115(89)=acd115(25)*acd115(51)
      acd115(90)=acd115(21)*acd115(33)
      acd115(80)=acd115(90)+acd115(89)+acd115(88)+acd115(80)+acd115(87)+acd115(&
      &86)+acd115(85)+acd115(83)+acd115(84)+acd115(82)
      acd115(80)=acd115(14)*acd115(80)
      acd115(82)=-acd115(47)*acd115(74)
      acd115(83)=acd115(20)*acd115(19)
      acd115(84)=acd115(31)*acd115(49)
      acd115(85)=acd115(36)*acd115(72)
      acd115(86)=acd115(34)*acd115(67)
      acd115(82)=acd115(86)+acd115(85)+acd115(84)+acd115(83)+acd115(82)
      acd115(82)=acd115(26)*acd115(82)
      acd115(83)=acd115(46)*acd115(74)
      acd115(84)=acd115(20)*acd115(17)
      acd115(85)=acd115(31)*acd115(48)
      acd115(86)=acd115(36)*acd115(71)
      acd115(87)=acd115(34)*acd115(66)
      acd115(83)=acd115(87)+acd115(86)+acd115(85)+acd115(84)+acd115(83)
      acd115(83)=acd115(25)*acd115(83)
      acd115(84)=-acd115(47)*acd115(78)
      acd115(85)=acd115(9)*acd115(19)
      acd115(86)=acd115(42)*acd115(49)
      acd115(87)=acd115(44)*acd115(72)
      acd115(88)=acd115(43)*acd115(67)
      acd115(84)=acd115(88)+acd115(87)+acd115(86)+acd115(85)+acd115(84)
      acd115(84)=acd115(18)*acd115(84)
      acd115(85)=acd115(46)*acd115(78)
      acd115(86)=acd115(9)*acd115(17)
      acd115(87)=acd115(42)*acd115(48)
      acd115(88)=acd115(44)*acd115(71)
      acd115(89)=acd115(43)*acd115(66)
      acd115(85)=acd115(89)+acd115(88)+acd115(87)+acd115(86)+acd115(85)
      acd115(85)=acd115(16)*acd115(85)
      acd115(86)=acd115(11)*acd115(20)
      acd115(87)=acd115(31)*acd115(32)
      acd115(88)=acd115(36)*acd115(37)
      acd115(89)=acd115(34)*acd115(35)
      acd115(86)=acd115(89)+acd115(88)+acd115(86)-acd115(87)
      acd115(87)=acd115(27)*acd115(77)
      acd115(88)=acd115(18)*acd115(39)
      acd115(89)=acd115(16)*acd115(38)
      acd115(90)=-acd115(29)*acd115(74)
      acd115(87)=acd115(90)+acd115(89)+acd115(88)+acd115(86)+acd115(87)
      acd115(87)=acd115(21)*acd115(87)
      acd115(88)=acd115(9)*acd115(11)
      acd115(89)=acd115(42)*acd115(32)
      acd115(90)=acd115(44)*acd115(37)
      acd115(91)=acd115(43)*acd115(35)
      acd115(88)=acd115(91)+acd115(90)+acd115(88)-acd115(89)
      acd115(89)=-2.0_ki*acd115(21)+acd115(81)
      acd115(89)=acd115(27)*acd115(89)
      acd115(90)=acd115(26)*acd115(39)
      acd115(91)=acd115(25)*acd115(38)
      acd115(92)=-acd115(29)*acd115(78)
      acd115(89)=acd115(92)+acd115(91)+acd115(90)+acd115(89)+acd115(88)
      acd115(89)=acd115(10)*acd115(89)
      acd115(86)=-acd115(86)*acd115(81)
      acd115(88)=-acd115(88)*acd115(77)
      acd115(90)=-acd115(7)*acd115(6)
      acd115(91)=-acd115(5)*acd115(4)
      acd115(92)=acd115(3)*acd115(2)
      acd115(90)=acd115(92)+acd115(91)+acd115(8)+acd115(90)
      acd115(90)=acd115(1)*acd115(90)
      acd115(74)=acd115(74)*acd115(81)
      acd115(77)=acd115(78)*acd115(77)
      acd115(74)=acd115(77)+acd115(74)
      acd115(74)=acd115(29)*acd115(74)
      acd115(75)=acd115(75)+acd115(31)
      acd115(77)=-acd115(7)*acd115(75)
      acd115(78)=acd115(68)*acd115(73)
      acd115(77)=acd115(78)+acd115(77)
      acd115(77)=acd115(44)*acd115(77)
      acd115(75)=-acd115(5)*acd115(75)
      acd115(78)=acd115(68)*acd115(69)
      acd115(75)=acd115(78)+acd115(75)
      acd115(75)=acd115(43)*acd115(75)
      acd115(78)=acd115(79)+acd115(42)
      acd115(79)=-acd115(7)*acd115(78)
      acd115(81)=acd115(70)*acd115(73)
      acd115(79)=acd115(81)+acd115(79)
      acd115(79)=acd115(36)*acd115(79)
      acd115(78)=-acd115(5)*acd115(78)
      acd115(81)=acd115(69)*acd115(70)
      acd115(78)=acd115(81)+acd115(78)
      acd115(78)=acd115(34)*acd115(78)
      brack=acd115(74)+acd115(75)+acd115(76)+acd115(77)+acd115(78)+acd115(79)+a&
      &cd115(80)+acd115(82)+acd115(83)+acd115(84)+acd115(85)+acd115(86)+acd115(&
      &87)+acd115(88)+acd115(89)+2.0_ki*acd115(90)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd115h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(20) :: acd115
      complex(ki) :: brack
      acd115(1)=d(iv1,iv2)
      acd115(2)=e7(iv3)
      acd115(3)=abb115(98)
      acd115(4)=spvak2l5(iv3)
      acd115(5)=abb115(11)
      acd115(6)=spvak2l6(iv3)
      acd115(7)=abb115(49)
      acd115(8)=d(iv1,iv3)
      acd115(9)=e7(iv2)
      acd115(10)=spvak2l5(iv2)
      acd115(11)=spvak2l6(iv2)
      acd115(12)=d(iv2,iv3)
      acd115(13)=e7(iv1)
      acd115(14)=spvak2l5(iv1)
      acd115(15)=spvak2l6(iv1)
      acd115(16)=-acd115(2)*acd115(3)
      acd115(17)=acd115(4)*acd115(5)
      acd115(18)=acd115(6)*acd115(7)
      acd115(16)=acd115(18)+acd115(16)+acd115(17)
      acd115(16)=acd115(1)*acd115(16)
      acd115(17)=-acd115(9)*acd115(3)
      acd115(18)=acd115(10)*acd115(5)
      acd115(19)=acd115(11)*acd115(7)
      acd115(17)=acd115(19)+acd115(18)+acd115(17)
      acd115(17)=acd115(8)*acd115(17)
      acd115(18)=-acd115(13)*acd115(3)
      acd115(19)=acd115(14)*acd115(5)
      acd115(20)=acd115(15)*acd115(7)
      acd115(18)=acd115(20)+acd115(19)+acd115(18)
      acd115(18)=acd115(12)*acd115(18)
      acd115(16)=acd115(18)+acd115(17)+acd115(16)
      brack=2.0_ki*acd115(16)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd115h3
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
      qshift = -k3+k2-k7-k4
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
!---#[ subroutine reconstruct_d115:
   subroutine     reconstruct_d115(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_115:
      coeffs%coeffs_115%c0 = derivative(czip)
      coeffs%coeffs_115%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_115%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_115%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_115%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_115%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_115%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_115%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_115%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_115%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_115%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_115%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_115%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_115%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_115%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_115%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_115%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_115%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_115%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_115%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_115%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_115%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_115%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_115%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_115%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_115%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_115%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_115%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_115%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_115%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_115%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_115%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_115%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_115%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_115%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_115:
   end subroutine reconstruct_d115
!---#] subroutine reconstruct_d115:
end module     p0_dbaru_epnebbbarg_d115h3l1d
