module     p1_dbarc_epnebbbarg_d108h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d108h1l1d.f90
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
   public :: derivative , reconstruct_d108
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd108h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(91) :: acd108
      complex(ki) :: brack
      acd108(1)=dotproduct(k1,qshift)
      acd108(2)=abb108(40)
      acd108(3)=dotproduct(k2,qshift)
      acd108(4)=dotproduct(qshift,spvak1k2)
      acd108(5)=abb108(13)
      acd108(6)=dotproduct(qshift,spvak1k3)
      acd108(7)=abb108(51)
      acd108(8)=dotproduct(qshift,spvak1l5)
      acd108(9)=abb108(34)
      acd108(10)=dotproduct(qshift,spval6l5)
      acd108(11)=abb108(68)
      acd108(12)=dotproduct(qshift,spvak7k2)
      acd108(13)=abb108(64)
      acd108(14)=dotproduct(qshift,spvak7k3)
      acd108(15)=abb108(62)
      acd108(16)=dotproduct(qshift,spvak7l5)
      acd108(17)=abb108(59)
      acd108(18)=abb108(23)
      acd108(19)=dotproduct(k3,qshift)
      acd108(20)=abb108(54)
      acd108(21)=dotproduct(k4,qshift)
      acd108(22)=dotproduct(l6,qshift)
      acd108(23)=abb108(28)
      acd108(24)=dotproduct(k7,qshift)
      acd108(25)=abb108(32)
      acd108(26)=abb108(43)
      acd108(27)=dotproduct(qshift,spvak2k3)
      acd108(28)=abb108(18)
      acd108(29)=dotproduct(qshift,spvak4k2)
      acd108(30)=abb108(14)
      acd108(31)=dotproduct(qshift,spvak4k3)
      acd108(32)=abb108(9)
      acd108(33)=abb108(12)
      acd108(34)=abb108(41)
      acd108(35)=abb108(45)
      acd108(36)=abb108(44)
      acd108(37)=dotproduct(qshift,spval6k2)
      acd108(38)=dotproduct(qshift,spval6k3)
      acd108(39)=abb108(17)
      acd108(40)=abb108(22)
      acd108(41)=abb108(69)
      acd108(42)=abb108(11)
      acd108(43)=abb108(67)
      acd108(44)=abb108(26)
      acd108(45)=abb108(20)
      acd108(46)=abb108(49)
      acd108(47)=abb108(61)
      acd108(48)=abb108(15)
      acd108(49)=abb108(42)
      acd108(50)=abb108(47)
      acd108(51)=abb108(24)
      acd108(52)=abb108(10)
      acd108(53)=abb108(29)
      acd108(54)=abb108(19)
      acd108(55)=dotproduct(qshift,spvak1l6)
      acd108(56)=abb108(33)
      acd108(57)=dotproduct(qshift,spvak1k7)
      acd108(58)=abb108(30)
      acd108(59)=dotproduct(qshift,spval6k1)
      acd108(60)=abb108(27)
      acd108(61)=dotproduct(qshift,spval6k7)
      acd108(62)=abb108(66)
      acd108(63)=dotproduct(qshift,spvak7k1)
      acd108(64)=abb108(53)
      acd108(65)=dotproduct(qshift,spvak7l6)
      acd108(66)=abb108(52)
      acd108(67)=abb108(16)
      acd108(68)=acd108(5)*acd108(4)
      acd108(69)=-acd108(9)*acd108(8)
      acd108(70)=acd108(11)*acd108(10)
      acd108(71)=acd108(13)*acd108(12)
      acd108(72)=-acd108(17)*acd108(16)
      acd108(68)=acd108(72)+acd108(71)+acd108(70)+acd108(68)+acd108(69)
      acd108(69)=acd108(21)+acd108(19)
      acd108(70)=acd108(69)-acd108(3)
      acd108(68)=acd108(70)*acd108(68)
      acd108(70)=acd108(30)*acd108(4)
      acd108(71)=acd108(35)*acd108(8)
      acd108(72)=acd108(42)*acd108(10)
      acd108(73)=acd108(45)*acd108(12)
      acd108(74)=acd108(48)*acd108(16)
      acd108(70)=-acd108(52)+acd108(74)+acd108(73)+acd108(72)+acd108(71)+acd108&
      &(70)
      acd108(70)=acd108(29)*acd108(70)
      acd108(71)=acd108(32)*acd108(4)
      acd108(72)=acd108(36)*acd108(8)
      acd108(73)=acd108(43)*acd108(10)
      acd108(74)=acd108(46)*acd108(12)
      acd108(75)=acd108(49)*acd108(16)
      acd108(71)=-acd108(53)+acd108(75)+acd108(74)+acd108(73)+acd108(72)+acd108&
      &(71)
      acd108(71)=acd108(31)*acd108(71)
      acd108(72)=-acd108(6)*acd108(10)
      acd108(73)=acd108(38)*acd108(8)
      acd108(72)=acd108(73)+acd108(72)
      acd108(72)=acd108(34)*acd108(72)
      acd108(73)=acd108(7)*acd108(6)
      acd108(74)=acd108(15)*acd108(14)
      acd108(73)=-acd108(18)+acd108(74)+acd108(73)
      acd108(73)=acd108(3)*acd108(73)
      acd108(74)=acd108(28)*acd108(4)
      acd108(75)=acd108(44)*acd108(12)
      acd108(74)=-acd108(51)+acd108(75)+acd108(74)
      acd108(74)=acd108(27)*acd108(74)
      acd108(75)=acd108(4)*acd108(10)
      acd108(76)=-acd108(37)*acd108(8)
      acd108(75)=acd108(75)+acd108(76)
      acd108(75)=acd108(26)*acd108(75)
      acd108(76)=acd108(12)*acd108(10)
      acd108(77)=-acd108(37)*acd108(16)
      acd108(76)=acd108(76)+acd108(77)
      acd108(76)=acd108(40)*acd108(76)
      acd108(77)=-acd108(14)*acd108(10)
      acd108(78)=acd108(38)*acd108(16)
      acd108(77)=acd108(77)+acd108(78)
      acd108(77)=acd108(41)*acd108(77)
      acd108(69)=acd108(20)*acd108(69)
      acd108(78)=-acd108(2)*acd108(1)
      acd108(79)=-acd108(23)*acd108(22)
      acd108(80)=-acd108(25)*acd108(24)
      acd108(81)=-acd108(33)*acd108(4)
      acd108(82)=-acd108(39)*acd108(8)
      acd108(83)=-acd108(47)*acd108(12)
      acd108(84)=-acd108(50)*acd108(16)
      acd108(85)=-acd108(54)*acd108(37)
      acd108(86)=-acd108(56)*acd108(55)
      acd108(87)=-acd108(58)*acd108(57)
      acd108(88)=-acd108(60)*acd108(59)
      acd108(89)=-acd108(62)*acd108(61)
      acd108(90)=-acd108(64)*acd108(63)
      acd108(91)=-acd108(66)*acd108(65)
      brack=acd108(67)+acd108(68)+acd108(69)+acd108(70)+acd108(71)+acd108(72)+a&
      &cd108(73)+acd108(74)+acd108(75)+acd108(76)+acd108(77)+acd108(78)+acd108(&
      &79)+acd108(80)+acd108(81)+acd108(82)+acd108(83)+acd108(84)+acd108(85)+ac&
      &d108(86)+acd108(87)+acd108(88)+acd108(89)+acd108(90)+acd108(91)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd108h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(107) :: acd108
      complex(ki) :: brack
      acd108(1)=k1(iv1)
      acd108(2)=abb108(40)
      acd108(3)=k2(iv1)
      acd108(4)=dotproduct(qshift,spvak1k2)
      acd108(5)=abb108(13)
      acd108(6)=dotproduct(qshift,spvak1k3)
      acd108(7)=abb108(51)
      acd108(8)=dotproduct(qshift,spvak1l5)
      acd108(9)=abb108(34)
      acd108(10)=dotproduct(qshift,spval6l5)
      acd108(11)=abb108(68)
      acd108(12)=dotproduct(qshift,spvak7k2)
      acd108(13)=abb108(64)
      acd108(14)=dotproduct(qshift,spvak7k3)
      acd108(15)=abb108(62)
      acd108(16)=dotproduct(qshift,spvak7l5)
      acd108(17)=abb108(59)
      acd108(18)=abb108(23)
      acd108(19)=k3(iv1)
      acd108(20)=abb108(54)
      acd108(21)=k4(iv1)
      acd108(22)=l6(iv1)
      acd108(23)=abb108(28)
      acd108(24)=k7(iv1)
      acd108(25)=abb108(32)
      acd108(26)=spvak1k2(iv1)
      acd108(27)=dotproduct(k2,qshift)
      acd108(28)=dotproduct(k3,qshift)
      acd108(29)=dotproduct(k4,qshift)
      acd108(30)=abb108(43)
      acd108(31)=dotproduct(qshift,spvak2k3)
      acd108(32)=abb108(18)
      acd108(33)=dotproduct(qshift,spvak4k2)
      acd108(34)=abb108(14)
      acd108(35)=dotproduct(qshift,spvak4k3)
      acd108(36)=abb108(9)
      acd108(37)=abb108(12)
      acd108(38)=spvak1k3(iv1)
      acd108(39)=abb108(41)
      acd108(40)=spvak1l5(iv1)
      acd108(41)=abb108(45)
      acd108(42)=abb108(44)
      acd108(43)=dotproduct(qshift,spval6k2)
      acd108(44)=dotproduct(qshift,spval6k3)
      acd108(45)=abb108(17)
      acd108(46)=spval6l5(iv1)
      acd108(47)=abb108(22)
      acd108(48)=abb108(69)
      acd108(49)=abb108(11)
      acd108(50)=abb108(67)
      acd108(51)=spvak7k2(iv1)
      acd108(52)=abb108(26)
      acd108(53)=abb108(20)
      acd108(54)=abb108(49)
      acd108(55)=abb108(61)
      acd108(56)=spvak7k3(iv1)
      acd108(57)=spvak7l5(iv1)
      acd108(58)=abb108(15)
      acd108(59)=abb108(42)
      acd108(60)=abb108(47)
      acd108(61)=spvak2k3(iv1)
      acd108(62)=abb108(24)
      acd108(63)=spvak4k2(iv1)
      acd108(64)=abb108(10)
      acd108(65)=spvak4k3(iv1)
      acd108(66)=abb108(29)
      acd108(67)=spval6k2(iv1)
      acd108(68)=abb108(19)
      acd108(69)=spval6k3(iv1)
      acd108(70)=spvak1l6(iv1)
      acd108(71)=abb108(33)
      acd108(72)=spvak1k7(iv1)
      acd108(73)=abb108(30)
      acd108(74)=spval6k1(iv1)
      acd108(75)=abb108(27)
      acd108(76)=spval6k7(iv1)
      acd108(77)=abb108(66)
      acd108(78)=spvak7k1(iv1)
      acd108(79)=abb108(53)
      acd108(80)=spvak7l6(iv1)
      acd108(81)=abb108(52)
      acd108(82)=-acd108(27)+acd108(28)+acd108(29)
      acd108(83)=acd108(11)*acd108(82)
      acd108(84)=-acd108(48)*acd108(14)
      acd108(85)=-acd108(39)*acd108(6)
      acd108(86)=acd108(35)*acd108(50)
      acd108(87)=acd108(33)*acd108(49)
      acd108(88)=acd108(12)*acd108(47)
      acd108(89)=acd108(4)*acd108(30)
      acd108(83)=acd108(89)+acd108(88)+acd108(87)+acd108(86)+acd108(84)+acd108(&
      &85)+acd108(83)
      acd108(83)=acd108(46)*acd108(83)
      acd108(84)=acd108(19)+acd108(21)
      acd108(85)=-acd108(3)+acd108(84)
      acd108(85)=acd108(11)*acd108(85)
      acd108(86)=-acd108(48)*acd108(56)
      acd108(87)=-acd108(39)*acd108(38)
      acd108(88)=acd108(65)*acd108(50)
      acd108(89)=acd108(63)*acd108(49)
      acd108(90)=acd108(51)*acd108(47)
      acd108(91)=acd108(26)*acd108(30)
      acd108(85)=acd108(91)+acd108(90)+acd108(89)+acd108(88)+acd108(86)+acd108(&
      &87)+acd108(85)
      acd108(85)=acd108(10)*acd108(85)
      acd108(86)=acd108(14)*acd108(15)
      acd108(87)=acd108(6)*acd108(7)
      acd108(88)=acd108(16)*acd108(17)
      acd108(89)=-acd108(12)*acd108(13)
      acd108(90)=acd108(8)*acd108(9)
      acd108(91)=-acd108(4)*acd108(5)
      acd108(86)=acd108(91)+acd108(90)+acd108(89)+acd108(88)+acd108(87)-acd108(&
      &18)+acd108(86)
      acd108(86)=acd108(3)*acd108(86)
      acd108(87)=acd108(48)*acd108(69)
      acd108(88)=-acd108(47)*acd108(67)
      acd108(89)=acd108(65)*acd108(59)
      acd108(90)=acd108(63)*acd108(58)
      acd108(91)=-acd108(17)*acd108(84)
      acd108(87)=acd108(91)+acd108(90)+acd108(89)+acd108(87)+acd108(88)
      acd108(87)=acd108(16)*acd108(87)
      acd108(88)=acd108(39)*acd108(69)
      acd108(89)=-acd108(30)*acd108(67)
      acd108(90)=acd108(65)*acd108(42)
      acd108(91)=acd108(63)*acd108(41)
      acd108(92)=-acd108(9)*acd108(84)
      acd108(88)=acd108(92)+acd108(91)+acd108(90)+acd108(88)+acd108(89)
      acd108(88)=acd108(8)*acd108(88)
      acd108(89)=-acd108(17)*acd108(82)
      acd108(90)=acd108(48)*acd108(44)
      acd108(91)=-acd108(47)*acd108(43)
      acd108(92)=acd108(35)*acd108(59)
      acd108(93)=acd108(33)*acd108(58)
      acd108(89)=acd108(93)+acd108(92)+acd108(91)-acd108(60)+acd108(90)+acd108(&
      &89)
      acd108(89)=acd108(57)*acd108(89)
      acd108(90)=-acd108(9)*acd108(82)
      acd108(91)=acd108(39)*acd108(44)
      acd108(92)=-acd108(30)*acd108(43)
      acd108(93)=acd108(35)*acd108(42)
      acd108(94)=acd108(33)*acd108(41)
      acd108(90)=acd108(94)+acd108(93)+acd108(92)-acd108(45)+acd108(91)+acd108(&
      &90)
      acd108(90)=acd108(40)*acd108(90)
      acd108(91)=acd108(61)*acd108(52)
      acd108(92)=acd108(65)*acd108(54)
      acd108(93)=acd108(63)*acd108(53)
      acd108(94)=acd108(13)*acd108(84)
      acd108(91)=acd108(94)+acd108(93)+acd108(91)+acd108(92)
      acd108(91)=acd108(12)*acd108(91)
      acd108(92)=acd108(61)*acd108(32)
      acd108(93)=acd108(65)*acd108(36)
      acd108(94)=acd108(63)*acd108(34)
      acd108(95)=acd108(5)*acd108(84)
      acd108(92)=acd108(95)+acd108(94)+acd108(92)+acd108(93)
      acd108(92)=acd108(4)*acd108(92)
      acd108(93)=acd108(13)*acd108(82)
      acd108(94)=acd108(31)*acd108(52)
      acd108(95)=acd108(35)*acd108(54)
      acd108(96)=acd108(33)*acd108(53)
      acd108(93)=acd108(96)+acd108(95)-acd108(55)+acd108(94)+acd108(93)
      acd108(93)=acd108(51)*acd108(93)
      acd108(82)=acd108(5)*acd108(82)
      acd108(94)=acd108(31)*acd108(32)
      acd108(95)=acd108(35)*acd108(36)
      acd108(96)=acd108(33)*acd108(34)
      acd108(82)=acd108(96)+acd108(95)-acd108(37)+acd108(94)+acd108(82)
      acd108(82)=acd108(26)*acd108(82)
      acd108(94)=acd108(15)*acd108(56)
      acd108(95)=acd108(7)*acd108(38)
      acd108(94)=acd108(94)+acd108(95)
      acd108(94)=acd108(27)*acd108(94)
      acd108(84)=acd108(20)*acd108(84)
      acd108(95)=-acd108(80)*acd108(81)
      acd108(96)=-acd108(78)*acd108(79)
      acd108(97)=-acd108(76)*acd108(77)
      acd108(98)=-acd108(74)*acd108(75)
      acd108(99)=-acd108(72)*acd108(73)
      acd108(100)=-acd108(70)*acd108(71)
      acd108(101)=-acd108(24)*acd108(25)
      acd108(102)=-acd108(22)*acd108(23)
      acd108(103)=-acd108(1)*acd108(2)
      acd108(104)=-acd108(67)*acd108(68)
      acd108(105)=-acd108(61)*acd108(62)
      acd108(106)=-acd108(65)*acd108(66)
      acd108(107)=-acd108(63)*acd108(64)
      brack=acd108(82)+acd108(83)+acd108(84)+acd108(85)+acd108(86)+acd108(87)+a&
      &cd108(88)+acd108(89)+acd108(90)+acd108(91)+acd108(92)+acd108(93)+acd108(&
      &94)+acd108(95)+acd108(96)+acd108(97)+acd108(98)+acd108(99)+acd108(100)+a&
      &cd108(101)+acd108(102)+acd108(103)+acd108(104)+acd108(105)+acd108(106)+a&
      &cd108(107)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd108h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd108
      complex(ki) :: brack
      acd108(1)=k2(iv1)
      acd108(2)=spvak1k2(iv2)
      acd108(3)=abb108(13)
      acd108(4)=spvak1k3(iv2)
      acd108(5)=abb108(51)
      acd108(6)=spvak1l5(iv2)
      acd108(7)=abb108(34)
      acd108(8)=spval6l5(iv2)
      acd108(9)=abb108(68)
      acd108(10)=spvak7k2(iv2)
      acd108(11)=abb108(64)
      acd108(12)=spvak7k3(iv2)
      acd108(13)=abb108(62)
      acd108(14)=spvak7l5(iv2)
      acd108(15)=abb108(59)
      acd108(16)=k2(iv2)
      acd108(17)=spvak1k2(iv1)
      acd108(18)=spvak1k3(iv1)
      acd108(19)=spvak1l5(iv1)
      acd108(20)=spval6l5(iv1)
      acd108(21)=spvak7k2(iv1)
      acd108(22)=spvak7k3(iv1)
      acd108(23)=spvak7l5(iv1)
      acd108(24)=k3(iv1)
      acd108(25)=k3(iv2)
      acd108(26)=k4(iv1)
      acd108(27)=k4(iv2)
      acd108(28)=abb108(43)
      acd108(29)=spvak2k3(iv2)
      acd108(30)=abb108(18)
      acd108(31)=spvak4k2(iv2)
      acd108(32)=abb108(14)
      acd108(33)=spvak4k3(iv2)
      acd108(34)=abb108(9)
      acd108(35)=spvak2k3(iv1)
      acd108(36)=spvak4k2(iv1)
      acd108(37)=spvak4k3(iv1)
      acd108(38)=abb108(41)
      acd108(39)=abb108(45)
      acd108(40)=abb108(44)
      acd108(41)=spval6k2(iv2)
      acd108(42)=spval6k3(iv2)
      acd108(43)=spval6k2(iv1)
      acd108(44)=spval6k3(iv1)
      acd108(45)=abb108(22)
      acd108(46)=abb108(69)
      acd108(47)=abb108(11)
      acd108(48)=abb108(67)
      acd108(49)=abb108(26)
      acd108(50)=abb108(20)
      acd108(51)=abb108(49)
      acd108(52)=abb108(15)
      acd108(53)=abb108(42)
      acd108(54)=acd108(25)+acd108(27)
      acd108(55)=-acd108(16)+acd108(54)
      acd108(55)=acd108(9)*acd108(55)
      acd108(56)=-acd108(46)*acd108(12)
      acd108(57)=-acd108(38)*acd108(4)
      acd108(58)=acd108(33)*acd108(48)
      acd108(59)=acd108(31)*acd108(47)
      acd108(60)=acd108(10)*acd108(45)
      acd108(61)=acd108(2)*acd108(28)
      acd108(55)=acd108(61)+acd108(60)+acd108(59)+acd108(58)+acd108(56)+acd108(&
      &57)+acd108(55)
      acd108(55)=acd108(20)*acd108(55)
      acd108(56)=acd108(24)+acd108(26)
      acd108(57)=-acd108(1)+acd108(56)
      acd108(57)=acd108(9)*acd108(57)
      acd108(58)=-acd108(46)*acd108(22)
      acd108(59)=-acd108(38)*acd108(18)
      acd108(60)=acd108(37)*acd108(48)
      acd108(61)=acd108(36)*acd108(47)
      acd108(62)=acd108(21)*acd108(45)
      acd108(63)=acd108(17)*acd108(28)
      acd108(57)=acd108(63)+acd108(62)+acd108(61)+acd108(60)+acd108(58)+acd108(&
      &59)+acd108(57)
      acd108(57)=acd108(8)*acd108(57)
      acd108(58)=acd108(13)*acd108(22)
      acd108(59)=acd108(5)*acd108(18)
      acd108(60)=acd108(23)*acd108(15)
      acd108(61)=-acd108(21)*acd108(11)
      acd108(62)=acd108(19)*acd108(7)
      acd108(63)=-acd108(17)*acd108(3)
      acd108(58)=acd108(63)+acd108(62)+acd108(61)+acd108(60)+acd108(58)+acd108(&
      &59)
      acd108(58)=acd108(16)*acd108(58)
      acd108(59)=acd108(12)*acd108(13)
      acd108(60)=acd108(4)*acd108(5)
      acd108(61)=acd108(14)*acd108(15)
      acd108(62)=-acd108(10)*acd108(11)
      acd108(63)=acd108(6)*acd108(7)
      acd108(64)=-acd108(2)*acd108(3)
      acd108(59)=acd108(64)+acd108(63)+acd108(62)+acd108(61)+acd108(59)+acd108(&
      &60)
      acd108(59)=acd108(1)*acd108(59)
      acd108(60)=acd108(46)*acd108(42)
      acd108(61)=-acd108(45)*acd108(41)
      acd108(62)=acd108(33)*acd108(53)
      acd108(63)=acd108(31)*acd108(52)
      acd108(64)=-acd108(15)*acd108(54)
      acd108(60)=acd108(64)+acd108(63)+acd108(62)+acd108(60)+acd108(61)
      acd108(60)=acd108(23)*acd108(60)
      acd108(61)=acd108(38)*acd108(42)
      acd108(62)=-acd108(28)*acd108(41)
      acd108(63)=acd108(33)*acd108(40)
      acd108(64)=acd108(31)*acd108(39)
      acd108(65)=-acd108(7)*acd108(54)
      acd108(61)=acd108(65)+acd108(64)+acd108(63)+acd108(61)+acd108(62)
      acd108(61)=acd108(19)*acd108(61)
      acd108(62)=acd108(46)*acd108(44)
      acd108(63)=-acd108(45)*acd108(43)
      acd108(64)=acd108(37)*acd108(53)
      acd108(65)=acd108(36)*acd108(52)
      acd108(66)=-acd108(15)*acd108(56)
      acd108(62)=acd108(66)+acd108(65)+acd108(64)+acd108(62)+acd108(63)
      acd108(62)=acd108(14)*acd108(62)
      acd108(63)=acd108(38)*acd108(44)
      acd108(64)=-acd108(28)*acd108(43)
      acd108(65)=acd108(37)*acd108(40)
      acd108(66)=acd108(36)*acd108(39)
      acd108(67)=-acd108(7)*acd108(56)
      acd108(63)=acd108(67)+acd108(66)+acd108(65)+acd108(63)+acd108(64)
      acd108(63)=acd108(6)*acd108(63)
      acd108(64)=acd108(29)*acd108(49)
      acd108(65)=acd108(33)*acd108(51)
      acd108(66)=acd108(31)*acd108(50)
      acd108(67)=acd108(11)*acd108(54)
      acd108(64)=acd108(67)+acd108(66)+acd108(64)+acd108(65)
      acd108(64)=acd108(21)*acd108(64)
      acd108(65)=acd108(29)*acd108(30)
      acd108(66)=acd108(33)*acd108(34)
      acd108(67)=acd108(31)*acd108(32)
      acd108(54)=acd108(3)*acd108(54)
      acd108(54)=acd108(54)+acd108(67)+acd108(65)+acd108(66)
      acd108(54)=acd108(17)*acd108(54)
      acd108(65)=acd108(35)*acd108(49)
      acd108(66)=acd108(37)*acd108(51)
      acd108(67)=acd108(36)*acd108(50)
      acd108(68)=acd108(11)*acd108(56)
      acd108(65)=acd108(68)+acd108(67)+acd108(65)+acd108(66)
      acd108(65)=acd108(10)*acd108(65)
      acd108(66)=acd108(30)*acd108(35)
      acd108(67)=acd108(37)*acd108(34)
      acd108(68)=acd108(36)*acd108(32)
      acd108(56)=acd108(3)*acd108(56)
      acd108(56)=acd108(56)+acd108(68)+acd108(66)+acd108(67)
      acd108(56)=acd108(2)*acd108(56)
      brack=acd108(54)+acd108(55)+acd108(56)+acd108(57)+acd108(58)+acd108(59)+a&
      &cd108(60)+acd108(61)+acd108(62)+acd108(63)+acd108(64)+acd108(65)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd108h1
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
      qshift = -k5
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
!---#[ subroutine reconstruct_d108:
   subroutine     reconstruct_d108(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_108:
      coeffs%coeffs_108%c0 = derivative(czip)
      coeffs%coeffs_108%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_108%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_108%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_108%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_108%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_108%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_108%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_108%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_108%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_108%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_108%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_108%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_108%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_108%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_108:
   end subroutine reconstruct_d108
!---#] subroutine reconstruct_d108:
end module     p1_dbarc_epnebbbarg_d108h1l1d
