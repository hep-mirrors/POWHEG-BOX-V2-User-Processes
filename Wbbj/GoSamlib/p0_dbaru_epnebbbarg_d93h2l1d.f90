module     p0_dbaru_epnebbbarg_d93h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d93h2l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
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
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd93h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd93
      complex(ki) :: brack
      acd93(1)=dotproduct(k1,qshift)
      acd93(2)=dotproduct(k2,qshift)
      acd93(3)=abb93(56)
      acd93(4)=dotproduct(qshift,spvak1k2)
      acd93(5)=abb93(18)
      acd93(6)=dotproduct(qshift,spvak1l6)
      acd93(7)=abb93(43)
      acd93(8)=dotproduct(qshift,spval5l6)
      acd93(9)=abb93(24)
      acd93(10)=abb93(26)
      acd93(11)=abb93(77)
      acd93(12)=dotproduct(k3,qshift)
      acd93(13)=abb93(17)
      acd93(14)=dotproduct(k4,qshift)
      acd93(15)=dotproduct(l5,qshift)
      acd93(16)=abb93(138)
      acd93(17)=dotproduct(l6,qshift)
      acd93(18)=dotproduct(k7,qshift)
      acd93(19)=abb93(121)
      acd93(20)=abb93(29)
      acd93(21)=abb93(44)
      acd93(22)=dotproduct(qshift,spvak1l5)
      acd93(23)=abb93(20)
      acd93(24)=dotproduct(qshift,spvak2k7)
      acd93(25)=abb93(21)
      acd93(26)=dotproduct(qshift,spvak4k2)
      acd93(27)=abb93(84)
      acd93(28)=dotproduct(qshift,spvak4k3)
      acd93(29)=abb93(79)
      acd93(30)=abb93(98)
      acd93(31)=abb93(30)
      acd93(32)=abb93(76)
      acd93(33)=abb93(139)
      acd93(34)=abb93(66)
      acd93(35)=abb93(67)
      acd93(36)=abb93(27)
      acd93(37)=abb93(36)
      acd93(38)=abb93(141)
      acd93(39)=abb93(53)
      acd93(40)=abb93(14)
      acd93(41)=abb93(33)
      acd93(42)=abb93(32)
      acd93(43)=dotproduct(qshift,spvak2k1)
      acd93(44)=abb93(28)
      acd93(45)=dotproduct(qshift,spvak2l5)
      acd93(46)=abb93(15)
      acd93(47)=dotproduct(qshift,spvak2l6)
      acd93(48)=abb93(22)
      acd93(49)=abb93(25)
      acd93(50)=abb93(13)
      acd93(51)=abb93(46)
      acd93(52)=abb93(34)
      acd93(53)=dotproduct(qshift,spval5k1)
      acd93(54)=abb93(16)
      acd93(55)=dotproduct(qshift,spval5k2)
      acd93(56)=abb93(39)
      acd93(57)=abb93(23)
      acd93(58)=abb93(54)
      acd93(59)=abb93(37)
      acd93(60)=abb93(95)
      acd93(61)=abb93(45)
      acd93(62)=abb93(62)
      acd93(63)=abb93(19)
      acd93(64)=dotproduct(qshift,spval6k2)
      acd93(65)=abb93(70)
      acd93(66)=abb93(48)
      acd93(67)=acd93(12)+acd93(14)
      acd93(68)=-acd93(31)*acd93(67)
      acd93(69)=acd93(1)-acd93(17)
      acd93(70)=-acd93(15)+acd93(69)
      acd93(70)=acd93(5)*acd93(70)
      acd93(71)=acd93(47)*acd93(48)
      acd93(72)=acd93(45)*acd93(46)
      acd93(73)=acd93(43)*acd93(44)
      acd93(74)=acd93(28)*acd93(42)
      acd93(75)=acd93(26)*acd93(41)
      acd93(76)=acd93(24)*acd93(40)
      acd93(77)=acd93(18)*acd93(36)
      acd93(78)=-acd93(8)*acd93(39)
      acd93(79)=acd93(2)*acd93(20)
      acd93(68)=acd93(79)+acd93(78)+acd93(77)+acd93(76)+acd93(75)+acd93(74)+acd&
      &93(73)+acd93(72)-acd93(49)+acd93(71)+acd93(70)+acd93(68)
      acd93(68)=acd93(4)*acd93(68)
      acd93(70)=acd93(17)+acd93(15)
      acd93(70)=acd93(16)*acd93(70)
      acd93(71)=acd93(13)*acd93(67)
      acd93(72)=acd93(22)*acd93(23)
      acd93(73)=acd93(28)*acd93(29)
      acd93(74)=acd93(26)*acd93(27)
      acd93(75)=acd93(24)*acd93(25)
      acd93(76)=acd93(18)*acd93(19)
      acd93(77)=acd93(1)*acd93(3)
      acd93(78)=acd93(6)*acd93(21)
      acd93(79)=acd93(2)*acd93(11)
      acd93(70)=acd93(79)+acd93(78)+acd93(77)+acd93(76)+acd93(75)+acd93(74)+acd&
      &93(73)-acd93(30)+acd93(72)+acd93(71)+acd93(70)
      acd93(70)=acd93(2)*acd93(70)
      acd93(71)=acd93(32)*acd93(67)
      acd93(69)=acd93(7)*acd93(69)
      acd93(72)=acd93(53)*acd93(54)
      acd93(73)=acd93(39)*acd93(55)
      acd93(74)=acd93(28)*acd93(52)
      acd93(75)=acd93(26)*acd93(51)
      acd93(76)=acd93(24)*acd93(50)
      acd93(77)=acd93(18)*acd93(37)
      acd93(69)=acd93(77)+acd93(76)+acd93(75)+acd93(74)+acd93(73)-acd93(56)+acd&
      &93(72)+acd93(69)+acd93(71)
      acd93(69)=acd93(6)*acd93(69)
      acd93(67)=-acd93(33)*acd93(67)
      acd93(71)=-acd93(64)*acd93(65)
      acd93(72)=-acd93(55)*acd93(63)
      acd93(73)=-acd93(53)*acd93(62)
      acd93(74)=-acd93(15)*acd93(34)
      acd93(75)=-acd93(28)*acd93(61)
      acd93(76)=-acd93(26)*acd93(60)
      acd93(77)=-acd93(24)*acd93(59)
      acd93(78)=-acd93(18)*acd93(38)
      acd93(79)=-acd93(17)*acd93(35)
      acd93(80)=acd93(22)*acd93(57)
      acd93(80)=-acd93(58)+acd93(80)
      acd93(80)=acd93(8)*acd93(80)
      acd93(81)=acd93(8)*acd93(9)
      acd93(81)=-acd93(10)+acd93(81)
      acd93(81)=acd93(1)*acd93(81)
      brack=acd93(66)+acd93(67)+acd93(68)+acd93(69)+acd93(70)+acd93(71)+acd93(7&
      &2)+acd93(73)+acd93(74)+acd93(75)+acd93(76)+acd93(77)+acd93(78)+acd93(79)&
      &+acd93(80)+acd93(81)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd93h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(103) :: acd93
      complex(ki) :: brack
      acd93(1)=k1(iv1)
      acd93(2)=dotproduct(k2,qshift)
      acd93(3)=abb93(56)
      acd93(4)=dotproduct(qshift,spvak1k2)
      acd93(5)=abb93(18)
      acd93(6)=dotproduct(qshift,spvak1l6)
      acd93(7)=abb93(43)
      acd93(8)=dotproduct(qshift,spval5l6)
      acd93(9)=abb93(24)
      acd93(10)=abb93(26)
      acd93(11)=k2(iv1)
      acd93(12)=dotproduct(k1,qshift)
      acd93(13)=abb93(77)
      acd93(14)=dotproduct(k3,qshift)
      acd93(15)=abb93(17)
      acd93(16)=dotproduct(k4,qshift)
      acd93(17)=dotproduct(l5,qshift)
      acd93(18)=abb93(138)
      acd93(19)=dotproduct(l6,qshift)
      acd93(20)=dotproduct(k7,qshift)
      acd93(21)=abb93(121)
      acd93(22)=abb93(29)
      acd93(23)=abb93(44)
      acd93(24)=dotproduct(qshift,spvak1l5)
      acd93(25)=abb93(20)
      acd93(26)=dotproduct(qshift,spvak2k7)
      acd93(27)=abb93(21)
      acd93(28)=dotproduct(qshift,spvak4k2)
      acd93(29)=abb93(84)
      acd93(30)=dotproduct(qshift,spvak4k3)
      acd93(31)=abb93(79)
      acd93(32)=abb93(98)
      acd93(33)=k3(iv1)
      acd93(34)=abb93(30)
      acd93(35)=abb93(76)
      acd93(36)=abb93(139)
      acd93(37)=k4(iv1)
      acd93(38)=l5(iv1)
      acd93(39)=abb93(66)
      acd93(40)=l6(iv1)
      acd93(41)=abb93(67)
      acd93(42)=k7(iv1)
      acd93(43)=abb93(27)
      acd93(44)=abb93(36)
      acd93(45)=abb93(141)
      acd93(46)=spvak1k2(iv1)
      acd93(47)=abb93(53)
      acd93(48)=abb93(14)
      acd93(49)=abb93(33)
      acd93(50)=abb93(32)
      acd93(51)=dotproduct(qshift,spvak2k1)
      acd93(52)=abb93(28)
      acd93(53)=dotproduct(qshift,spvak2l5)
      acd93(54)=abb93(15)
      acd93(55)=dotproduct(qshift,spvak2l6)
      acd93(56)=abb93(22)
      acd93(57)=abb93(25)
      acd93(58)=spvak1l6(iv1)
      acd93(59)=abb93(13)
      acd93(60)=abb93(46)
      acd93(61)=abb93(34)
      acd93(62)=dotproduct(qshift,spval5k1)
      acd93(63)=abb93(16)
      acd93(64)=dotproduct(qshift,spval5k2)
      acd93(65)=abb93(39)
      acd93(66)=spval5l6(iv1)
      acd93(67)=abb93(23)
      acd93(68)=abb93(54)
      acd93(69)=spvak1l5(iv1)
      acd93(70)=spvak2k7(iv1)
      acd93(71)=abb93(37)
      acd93(72)=spvak4k2(iv1)
      acd93(73)=abb93(95)
      acd93(74)=spvak4k3(iv1)
      acd93(75)=abb93(45)
      acd93(76)=spvak2k1(iv1)
      acd93(77)=spvak2l5(iv1)
      acd93(78)=spvak2l6(iv1)
      acd93(79)=spval5k1(iv1)
      acd93(80)=abb93(62)
      acd93(81)=spval5k2(iv1)
      acd93(82)=abb93(19)
      acd93(83)=spval6k2(iv1)
      acd93(84)=abb93(70)
      acd93(85)=acd93(33)+acd93(37)
      acd93(86)=acd93(34)*acd93(85)
      acd93(87)=-acd93(56)*acd93(78)
      acd93(88)=-acd93(54)*acd93(77)
      acd93(89)=-acd93(52)*acd93(76)
      acd93(90)=-acd93(74)*acd93(50)
      acd93(91)=-acd93(72)*acd93(49)
      acd93(92)=-acd93(70)*acd93(48)
      acd93(93)=acd93(47)*acd93(66)
      acd93(94)=-acd93(42)*acd93(43)
      acd93(95)=acd93(40)+acd93(38)
      acd93(96)=-acd93(1)+acd93(95)
      acd93(96)=acd93(5)*acd93(96)
      acd93(97)=-acd93(11)*acd93(22)
      acd93(86)=acd93(97)+acd93(96)+acd93(94)+acd93(93)+acd93(92)+acd93(91)+acd&
      &93(90)+acd93(89)+acd93(87)+acd93(88)+acd93(86)
      acd93(86)=acd93(4)*acd93(86)
      acd93(87)=-acd93(56)*acd93(55)
      acd93(88)=-acd93(54)*acd93(53)
      acd93(89)=-acd93(52)*acd93(51)
      acd93(90)=-acd93(30)*acd93(50)
      acd93(91)=-acd93(28)*acd93(49)
      acd93(92)=-acd93(26)*acd93(48)
      acd93(93)=-acd93(20)*acd93(43)
      acd93(94)=acd93(47)*acd93(8)
      acd93(96)=acd93(14)+acd93(16)
      acd93(97)=acd93(34)*acd93(96)
      acd93(98)=acd93(12)-acd93(19)
      acd93(99)=acd93(17)-acd93(98)
      acd93(99)=acd93(5)*acd93(99)
      acd93(100)=-acd93(2)*acd93(22)
      acd93(87)=acd93(100)+acd93(99)+acd93(97)+acd93(94)+acd93(93)+acd93(92)+ac&
      &d93(91)+acd93(90)+acd93(89)+acd93(88)+acd93(57)+acd93(87)
      acd93(87)=acd93(46)*acd93(87)
      acd93(88)=-acd93(24)*acd93(25)
      acd93(89)=-acd93(30)*acd93(31)
      acd93(90)=-acd93(28)*acd93(29)
      acd93(91)=-acd93(26)*acd93(27)
      acd93(92)=-acd93(20)*acd93(21)
      acd93(93)=acd93(19)+acd93(17)
      acd93(93)=-acd93(18)*acd93(93)
      acd93(94)=-acd93(15)*acd93(96)
      acd93(97)=-acd93(12)*acd93(3)
      acd93(99)=-acd93(6)*acd93(23)
      acd93(100)=acd93(2)*acd93(13)
      acd93(88)=-2.0_ki*acd93(100)+acd93(99)+acd93(97)+acd93(94)+acd93(93)+acd9&
      &3(92)+acd93(91)+acd93(90)+acd93(89)+acd93(32)+acd93(88)
      acd93(88)=acd93(11)*acd93(88)
      acd93(89)=-acd93(25)*acd93(69)
      acd93(90)=-acd93(74)*acd93(31)
      acd93(91)=-acd93(72)*acd93(29)
      acd93(92)=-acd93(70)*acd93(27)
      acd93(93)=-acd93(42)*acd93(21)
      acd93(94)=-acd93(18)*acd93(95)
      acd93(95)=-acd93(15)*acd93(85)
      acd93(97)=-acd93(1)*acd93(3)
      acd93(99)=-acd93(58)*acd93(23)
      acd93(89)=acd93(99)+acd93(97)+acd93(95)+acd93(94)+acd93(93)+acd93(92)+acd&
      &93(91)+acd93(89)+acd93(90)
      acd93(89)=acd93(2)*acd93(89)
      acd93(90)=-acd93(35)*acd93(85)
      acd93(91)=-acd93(1)+acd93(40)
      acd93(91)=acd93(7)*acd93(91)
      acd93(92)=-acd93(63)*acd93(79)
      acd93(93)=-acd93(74)*acd93(61)
      acd93(94)=-acd93(72)*acd93(60)
      acd93(95)=-acd93(70)*acd93(59)
      acd93(97)=-acd93(47)*acd93(81)
      acd93(99)=-acd93(42)*acd93(44)
      acd93(90)=acd93(99)+acd93(97)+acd93(95)+acd93(94)+acd93(92)+acd93(93)+acd&
      &93(91)+acd93(90)
      acd93(90)=acd93(6)*acd93(90)
      acd93(91)=-acd93(63)*acd93(62)
      acd93(92)=-acd93(30)*acd93(61)
      acd93(93)=-acd93(28)*acd93(60)
      acd93(94)=-acd93(26)*acd93(59)
      acd93(95)=-acd93(20)*acd93(44)
      acd93(97)=-acd93(47)*acd93(64)
      acd93(96)=-acd93(35)*acd93(96)
      acd93(98)=-acd93(7)*acd93(98)
      acd93(91)=acd93(98)+acd93(96)+acd93(97)+acd93(95)+acd93(94)+acd93(93)+acd&
      &93(92)+acd93(65)+acd93(91)
      acd93(91)=acd93(58)*acd93(91)
      acd93(92)=-acd93(24)*acd93(67)
      acd93(93)=-acd93(12)*acd93(9)
      acd93(92)=acd93(93)+acd93(68)+acd93(92)
      acd93(92)=acd93(66)*acd93(92)
      acd93(85)=acd93(36)*acd93(85)
      acd93(93)=acd93(83)*acd93(84)
      acd93(94)=acd93(81)*acd93(82)
      acd93(95)=acd93(79)*acd93(80)
      acd93(96)=acd93(38)*acd93(39)
      acd93(97)=-acd93(8)*acd93(67)*acd93(69)
      acd93(98)=acd93(74)*acd93(75)
      acd93(99)=acd93(72)*acd93(73)
      acd93(100)=acd93(70)*acd93(71)
      acd93(101)=acd93(42)*acd93(45)
      acd93(102)=acd93(40)*acd93(41)
      acd93(103)=-acd93(8)*acd93(9)
      acd93(103)=acd93(10)+acd93(103)
      acd93(103)=acd93(1)*acd93(103)
      brack=acd93(85)+acd93(86)+acd93(87)+acd93(88)+acd93(89)+acd93(90)+acd93(9&
      &1)+acd93(92)+acd93(93)+acd93(94)+acd93(95)+acd93(96)+acd93(97)+acd93(98)&
      &+acd93(99)+acd93(100)+acd93(101)+acd93(102)+acd93(103)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd93h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(84) :: acd93
      complex(ki) :: brack
      acd93(1)=k1(iv1)
      acd93(2)=k2(iv2)
      acd93(3)=abb93(56)
      acd93(4)=spvak1k2(iv2)
      acd93(5)=abb93(18)
      acd93(6)=spvak1l6(iv2)
      acd93(7)=abb93(43)
      acd93(8)=spval5l6(iv2)
      acd93(9)=abb93(24)
      acd93(10)=k1(iv2)
      acd93(11)=k2(iv1)
      acd93(12)=spvak1k2(iv1)
      acd93(13)=spvak1l6(iv1)
      acd93(14)=spval5l6(iv1)
      acd93(15)=abb93(77)
      acd93(16)=k3(iv2)
      acd93(17)=abb93(17)
      acd93(18)=k4(iv2)
      acd93(19)=l5(iv2)
      acd93(20)=abb93(138)
      acd93(21)=l6(iv2)
      acd93(22)=k7(iv2)
      acd93(23)=abb93(121)
      acd93(24)=abb93(29)
      acd93(25)=abb93(44)
      acd93(26)=spvak1l5(iv2)
      acd93(27)=abb93(20)
      acd93(28)=spvak2k7(iv2)
      acd93(29)=abb93(21)
      acd93(30)=spvak4k2(iv2)
      acd93(31)=abb93(84)
      acd93(32)=spvak4k3(iv2)
      acd93(33)=abb93(79)
      acd93(34)=k3(iv1)
      acd93(35)=k4(iv1)
      acd93(36)=l5(iv1)
      acd93(37)=l6(iv1)
      acd93(38)=k7(iv1)
      acd93(39)=spvak1l5(iv1)
      acd93(40)=spvak2k7(iv1)
      acd93(41)=spvak4k2(iv1)
      acd93(42)=spvak4k3(iv1)
      acd93(43)=abb93(30)
      acd93(44)=abb93(76)
      acd93(45)=abb93(27)
      acd93(46)=abb93(36)
      acd93(47)=abb93(53)
      acd93(48)=abb93(14)
      acd93(49)=abb93(33)
      acd93(50)=abb93(32)
      acd93(51)=spvak2k1(iv2)
      acd93(52)=abb93(28)
      acd93(53)=spvak2l5(iv2)
      acd93(54)=abb93(15)
      acd93(55)=spvak2l6(iv2)
      acd93(56)=abb93(22)
      acd93(57)=spvak2k1(iv1)
      acd93(58)=spvak2l5(iv1)
      acd93(59)=spvak2l6(iv1)
      acd93(60)=abb93(13)
      acd93(61)=abb93(46)
      acd93(62)=abb93(34)
      acd93(63)=spval5k1(iv2)
      acd93(64)=abb93(16)
      acd93(65)=spval5k2(iv2)
      acd93(66)=spval5k1(iv1)
      acd93(67)=spval5k2(iv1)
      acd93(68)=abb93(23)
      acd93(69)=acd93(56)*acd93(55)
      acd93(70)=acd93(54)*acd93(53)
      acd93(71)=acd93(52)*acd93(51)
      acd93(72)=acd93(32)*acd93(50)
      acd93(73)=acd93(30)*acd93(49)
      acd93(74)=acd93(28)*acd93(48)
      acd93(75)=acd93(22)*acd93(45)
      acd93(76)=-acd93(47)*acd93(8)
      acd93(77)=acd93(16)+acd93(18)
      acd93(78)=-acd93(43)*acd93(77)
      acd93(79)=acd93(10)-acd93(21)
      acd93(80)=-acd93(19)+acd93(79)
      acd93(80)=acd93(5)*acd93(80)
      acd93(81)=acd93(2)*acd93(24)
      acd93(69)=acd93(81)+acd93(80)+acd93(78)+acd93(76)+acd93(75)+acd93(74)+acd&
      &93(73)+acd93(72)+acd93(71)+acd93(69)+acd93(70)
      acd93(69)=acd93(12)*acd93(69)
      acd93(70)=acd93(56)*acd93(59)
      acd93(71)=acd93(54)*acd93(58)
      acd93(72)=acd93(52)*acd93(57)
      acd93(73)=acd93(42)*acd93(50)
      acd93(74)=acd93(41)*acd93(49)
      acd93(75)=acd93(40)*acd93(48)
      acd93(76)=acd93(38)*acd93(45)
      acd93(78)=-acd93(47)*acd93(14)
      acd93(80)=acd93(34)+acd93(35)
      acd93(81)=-acd93(43)*acd93(80)
      acd93(82)=acd93(37)+acd93(36)
      acd93(83)=acd93(1)-acd93(82)
      acd93(83)=acd93(5)*acd93(83)
      acd93(84)=acd93(11)*acd93(24)
      acd93(70)=acd93(84)+acd93(83)+acd93(81)+acd93(78)+acd93(76)+acd93(75)+acd&
      &93(74)+acd93(73)+acd93(72)+acd93(70)+acd93(71)
      acd93(70)=acd93(4)*acd93(70)
      acd93(71)=acd93(27)*acd93(39)
      acd93(72)=acd93(42)*acd93(33)
      acd93(73)=acd93(41)*acd93(31)
      acd93(74)=acd93(40)*acd93(29)
      acd93(75)=acd93(38)*acd93(23)
      acd93(76)=acd93(20)*acd93(82)
      acd93(78)=acd93(17)*acd93(80)
      acd93(81)=acd93(1)*acd93(3)
      acd93(82)=acd93(13)*acd93(25)
      acd93(83)=acd93(11)*acd93(15)
      acd93(71)=2.0_ki*acd93(83)+acd93(82)+acd93(81)+acd93(78)+acd93(76)+acd93(&
      &75)+acd93(74)+acd93(73)+acd93(71)+acd93(72)
      acd93(71)=acd93(2)*acd93(71)
      acd93(72)=acd93(26)*acd93(27)
      acd93(73)=acd93(32)*acd93(33)
      acd93(74)=acd93(30)*acd93(31)
      acd93(75)=acd93(28)*acd93(29)
      acd93(76)=acd93(22)*acd93(23)
      acd93(78)=acd93(21)+acd93(19)
      acd93(78)=acd93(20)*acd93(78)
      acd93(81)=acd93(17)*acd93(77)
      acd93(82)=acd93(10)*acd93(3)
      acd93(83)=acd93(6)*acd93(25)
      acd93(72)=acd93(83)+acd93(82)+acd93(81)+acd93(78)+acd93(76)+acd93(75)+acd&
      &93(74)+acd93(72)+acd93(73)
      acd93(72)=acd93(11)*acd93(72)
      acd93(73)=acd93(64)*acd93(63)
      acd93(74)=acd93(32)*acd93(62)
      acd93(75)=acd93(30)*acd93(61)
      acd93(76)=acd93(28)*acd93(60)
      acd93(78)=acd93(22)*acd93(46)
      acd93(81)=acd93(47)*acd93(65)
      acd93(77)=acd93(44)*acd93(77)
      acd93(79)=acd93(7)*acd93(79)
      acd93(73)=acd93(79)+acd93(77)+acd93(81)+acd93(78)+acd93(76)+acd93(75)+acd&
      &93(73)+acd93(74)
      acd93(73)=acd93(13)*acd93(73)
      acd93(74)=acd93(1)-acd93(37)
      acd93(74)=acd93(7)*acd93(74)
      acd93(75)=acd93(64)*acd93(66)
      acd93(76)=acd93(42)*acd93(62)
      acd93(77)=acd93(41)*acd93(61)
      acd93(78)=acd93(40)*acd93(60)
      acd93(79)=acd93(38)*acd93(46)
      acd93(81)=acd93(47)*acd93(67)
      acd93(80)=acd93(44)*acd93(80)
      acd93(74)=acd93(80)+acd93(81)+acd93(79)+acd93(78)+acd93(77)+acd93(75)+acd&
      &93(76)+acd93(74)
      acd93(74)=acd93(6)*acd93(74)
      acd93(75)=acd93(26)*acd93(68)
      acd93(76)=acd93(10)*acd93(9)
      acd93(75)=acd93(76)+acd93(75)
      acd93(75)=acd93(14)*acd93(75)
      acd93(76)=acd93(39)*acd93(68)
      acd93(77)=acd93(1)*acd93(9)
      acd93(76)=acd93(77)+acd93(76)
      acd93(76)=acd93(8)*acd93(76)
      brack=acd93(69)+acd93(70)+acd93(71)+acd93(72)+acd93(73)+acd93(74)+acd93(7&
      &5)+acd93(76)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd93h2
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
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_93:
      coeffs%coeffs_93%c0 = derivative(czip)
      coeffs%coeffs_93%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_93%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_93%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_93%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_93%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_93%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_93%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_93%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_93%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_93%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_93%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_93%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_93%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_93%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_93:
   end subroutine reconstruct_d93
!---#] subroutine reconstruct_d93:
end module     p0_dbaru_epnebbbarg_d93h2l1d
