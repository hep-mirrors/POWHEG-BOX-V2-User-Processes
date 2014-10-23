module     p0_dbaru_epnebbbarg_d321h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d321h4l1d.f90
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
   public :: derivative , reconstruct_d321
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(71) :: acd321
      complex(ki) :: brack
      acd321(1)=dotproduct(k2,qshift)
      acd321(2)=dotproduct(qshift,spval5k2)
      acd321(3)=dotproduct(qshift,spvak7k2)
      acd321(4)=abb321(15)
      acd321(5)=dotproduct(qshift,spval6k2)
      acd321(6)=abb321(45)
      acd321(7)=abb321(61)
      acd321(8)=abb321(29)
      acd321(9)=dotproduct(k3,qshift)
      acd321(10)=abb321(35)
      acd321(11)=dotproduct(k4,qshift)
      acd321(12)=dotproduct(l5,qshift)
      acd321(13)=abb321(55)
      acd321(14)=abb321(44)
      acd321(15)=dotproduct(l6,qshift)
      acd321(16)=abb321(41)
      acd321(17)=dotproduct(k7,qshift)
      acd321(18)=abb321(38)
      acd321(19)=abb321(73)
      acd321(20)=abb321(27)
      acd321(21)=dotproduct(qshift,qshift)
      acd321(22)=abb321(70)
      acd321(23)=abb321(46)
      acd321(24)=dotproduct(qshift,spvak1k2)
      acd321(25)=abb321(13)
      acd321(26)=abb321(21)
      acd321(27)=abb321(19)
      acd321(28)=dotproduct(qshift,spvak4k2)
      acd321(29)=abb321(26)
      acd321(30)=dotproduct(qshift,spvak4k3)
      acd321(31)=abb321(33)
      acd321(32)=abb321(12)
      acd321(33)=abb321(71)
      acd321(34)=abb321(20)
      acd321(35)=abb321(47)
      acd321(36)=abb321(34)
      acd321(37)=abb321(31)
      acd321(38)=abb321(16)
      acd321(39)=dotproduct(qshift,spvak1k3)
      acd321(40)=abb321(23)
      acd321(41)=abb321(37)
      acd321(42)=abb321(22)
      acd321(43)=dotproduct(qshift,spval6k3)
      acd321(44)=abb321(49)
      acd321(45)=dotproduct(qshift,spval6l5)
      acd321(46)=abb321(30)
      acd321(47)=dotproduct(qshift,spval6k7)
      acd321(48)=abb321(14)
      acd321(49)=abb321(18)
      acd321(50)=abb321(17)
      acd321(51)=abb321(50)
      acd321(52)=abb321(43)
      acd321(53)=abb321(79)
      acd321(54)=abb321(32)
      acd321(55)=abb321(25)
      acd321(56)=acd321(9)+acd321(11)
      acd321(57)=acd321(56)-acd321(1)
      acd321(58)=-acd321(4)*acd321(57)
      acd321(59)=-acd321(30)*acd321(31)
      acd321(60)=-acd321(28)*acd321(29)
      acd321(61)=-acd321(24)*acd321(27)
      acd321(58)=acd321(61)+acd321(60)+acd321(32)+acd321(59)+acd321(58)
      acd321(58)=acd321(2)*acd321(58)
      acd321(57)=-acd321(6)*acd321(57)
      acd321(59)=-acd321(30)*acd321(36)
      acd321(60)=-acd321(28)*acd321(35)
      acd321(61)=-acd321(24)*acd321(34)
      acd321(57)=acd321(61)+acd321(60)+acd321(37)+acd321(59)+acd321(57)
      acd321(57)=acd321(5)*acd321(57)
      acd321(56)=acd321(10)*acd321(56)
      acd321(59)=acd321(15)*acd321(16)
      acd321(60)=acd321(45)*acd321(46)
      acd321(61)=acd321(43)*acd321(44)
      acd321(62)=acd321(39)*acd321(40)
      acd321(63)=-acd321(19)*acd321(47)
      acd321(64)=acd321(12)*acd321(13)
      acd321(65)=acd321(30)*acd321(42)
      acd321(66)=acd321(17)*acd321(18)
      acd321(67)=acd321(28)*acd321(41)
      acd321(68)=-acd321(21)*acd321(22)
      acd321(69)=acd321(1)*acd321(7)
      acd321(70)=acd321(24)*acd321(38)
      acd321(71)=acd321(3)*acd321(33)
      acd321(56)=acd321(71)+acd321(57)+acd321(58)+acd321(70)+acd321(69)+acd321(&
      &68)+acd321(67)+acd321(66)+acd321(65)+acd321(64)+acd321(63)+acd321(62)+ac&
      &d321(61)+acd321(60)-acd321(48)+acd321(59)+acd321(56)
      acd321(56)=acd321(3)*acd321(56)
      acd321(57)=acd321(17)*acd321(19)
      acd321(58)=-acd321(21)*acd321(23)
      acd321(57)=acd321(58)-acd321(49)+acd321(57)
      acd321(57)=acd321(5)*acd321(57)
      acd321(58)=-acd321(45)*acd321(54)
      acd321(59)=-acd321(43)*acd321(53)
      acd321(60)=-acd321(39)*acd321(51)
      acd321(61)=-acd321(12)*acd321(14)
      acd321(62)=-acd321(17)*acd321(20)
      acd321(63)=-acd321(28)*acd321(52)
      acd321(64)=acd321(21)*acd321(26)
      acd321(65)=-acd321(1)*acd321(8)
      acd321(66)=-acd321(21)*acd321(25)
      acd321(66)=-acd321(50)+acd321(66)
      acd321(66)=acd321(24)*acd321(66)
      brack=acd321(55)+acd321(56)+acd321(57)+acd321(58)+acd321(59)+acd321(60)+a&
      &cd321(61)+acd321(62)+acd321(63)+acd321(64)+acd321(65)+acd321(66)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(93) :: acd321
      complex(ki) :: brack
      acd321(1)=k2(iv1)
      acd321(2)=dotproduct(qshift,spval5k2)
      acd321(3)=dotproduct(qshift,spvak7k2)
      acd321(4)=abb321(15)
      acd321(5)=dotproduct(qshift,spval6k2)
      acd321(6)=abb321(45)
      acd321(7)=abb321(61)
      acd321(8)=abb321(29)
      acd321(9)=k3(iv1)
      acd321(10)=abb321(35)
      acd321(11)=k4(iv1)
      acd321(12)=l5(iv1)
      acd321(13)=abb321(55)
      acd321(14)=abb321(44)
      acd321(15)=l6(iv1)
      acd321(16)=abb321(41)
      acd321(17)=k7(iv1)
      acd321(18)=abb321(38)
      acd321(19)=abb321(73)
      acd321(20)=abb321(27)
      acd321(21)=qshift(iv1)
      acd321(22)=abb321(70)
      acd321(23)=abb321(46)
      acd321(24)=dotproduct(qshift,spvak1k2)
      acd321(25)=abb321(13)
      acd321(26)=abb321(21)
      acd321(27)=spval5k2(iv1)
      acd321(28)=dotproduct(k2,qshift)
      acd321(29)=dotproduct(k3,qshift)
      acd321(30)=dotproduct(k4,qshift)
      acd321(31)=abb321(19)
      acd321(32)=dotproduct(qshift,spvak4k2)
      acd321(33)=abb321(26)
      acd321(34)=dotproduct(qshift,spvak4k3)
      acd321(35)=abb321(33)
      acd321(36)=abb321(12)
      acd321(37)=spvak7k2(iv1)
      acd321(38)=dotproduct(l5,qshift)
      acd321(39)=dotproduct(l6,qshift)
      acd321(40)=dotproduct(k7,qshift)
      acd321(41)=dotproduct(qshift,qshift)
      acd321(42)=abb321(71)
      acd321(43)=abb321(20)
      acd321(44)=abb321(47)
      acd321(45)=abb321(34)
      acd321(46)=abb321(31)
      acd321(47)=abb321(16)
      acd321(48)=dotproduct(qshift,spvak1k3)
      acd321(49)=abb321(23)
      acd321(50)=abb321(37)
      acd321(51)=abb321(22)
      acd321(52)=dotproduct(qshift,spval6k3)
      acd321(53)=abb321(49)
      acd321(54)=dotproduct(qshift,spval6l5)
      acd321(55)=abb321(30)
      acd321(56)=dotproduct(qshift,spval6k7)
      acd321(57)=abb321(14)
      acd321(58)=spval6k2(iv1)
      acd321(59)=abb321(18)
      acd321(60)=spvak1k2(iv1)
      acd321(61)=abb321(17)
      acd321(62)=spvak1k3(iv1)
      acd321(63)=abb321(50)
      acd321(64)=spvak4k2(iv1)
      acd321(65)=abb321(43)
      acd321(66)=spvak4k3(iv1)
      acd321(67)=spval6k3(iv1)
      acd321(68)=abb321(79)
      acd321(69)=spval6l5(iv1)
      acd321(70)=abb321(32)
      acd321(71)=spval6k7(iv1)
      acd321(72)=acd321(29)+acd321(30)
      acd321(73)=acd321(28)-acd321(72)
      acd321(74)=acd321(73)*acd321(4)
      acd321(75)=acd321(34)*acd321(35)
      acd321(76)=acd321(32)*acd321(33)
      acd321(77)=acd321(24)*acd321(31)
      acd321(74)=-acd321(74)-acd321(36)+acd321(77)+acd321(75)+acd321(76)
      acd321(75)=acd321(27)*acd321(74)
      acd321(73)=acd321(73)*acd321(6)
      acd321(76)=acd321(34)*acd321(45)
      acd321(77)=acd321(32)*acd321(44)
      acd321(78)=acd321(24)*acd321(43)
      acd321(73)=-acd321(46)-acd321(73)+acd321(76)+acd321(77)+acd321(78)
      acd321(76)=acd321(58)*acd321(73)
      acd321(77)=acd321(35)*acd321(66)
      acd321(78)=acd321(64)*acd321(33)
      acd321(79)=acd321(60)*acd321(31)
      acd321(80)=acd321(9)+acd321(11)
      acd321(81)=acd321(80)-acd321(1)
      acd321(82)=acd321(4)*acd321(81)
      acd321(77)=acd321(82)+acd321(79)+acd321(77)+acd321(78)
      acd321(77)=acd321(2)*acd321(77)
      acd321(78)=acd321(45)*acd321(66)
      acd321(79)=acd321(64)*acd321(44)
      acd321(82)=acd321(60)*acd321(43)
      acd321(81)=acd321(6)*acd321(81)
      acd321(78)=acd321(81)+acd321(82)+acd321(78)+acd321(79)
      acd321(78)=acd321(5)*acd321(78)
      acd321(79)=-acd321(55)*acd321(69)
      acd321(81)=-acd321(53)*acd321(67)
      acd321(82)=-acd321(49)*acd321(62)
      acd321(83)=-acd321(16)*acd321(15)
      acd321(84)=-acd321(12)*acd321(13)
      acd321(85)=-acd321(66)*acd321(51)
      acd321(86)=-acd321(17)*acd321(18)
      acd321(87)=-acd321(64)*acd321(50)
      acd321(88)=2.0_ki*acd321(21)
      acd321(89)=acd321(22)*acd321(88)
      acd321(90)=acd321(19)*acd321(71)
      acd321(80)=-acd321(10)*acd321(80)
      acd321(91)=-acd321(1)*acd321(7)
      acd321(92)=-acd321(60)*acd321(47)
      acd321(93)=acd321(37)*acd321(42)
      acd321(75)=-2.0_ki*acd321(93)+acd321(78)+acd321(77)+acd321(76)+acd321(92)&
      &+acd321(91)+acd321(80)+acd321(90)+acd321(89)+acd321(87)+acd321(86)+acd32&
      &1(85)+acd321(84)+acd321(83)+acd321(82)+acd321(79)+acd321(81)+acd321(75)
      acd321(75)=acd321(3)*acd321(75)
      acd321(74)=acd321(2)*acd321(74)
      acd321(73)=acd321(5)*acd321(73)
      acd321(72)=-acd321(10)*acd321(72)
      acd321(76)=-acd321(55)*acd321(54)
      acd321(77)=-acd321(53)*acd321(52)
      acd321(78)=-acd321(49)*acd321(48)
      acd321(79)=-acd321(18)*acd321(40)
      acd321(80)=-acd321(16)*acd321(39)
      acd321(81)=-acd321(13)*acd321(38)
      acd321(82)=acd321(41)*acd321(22)
      acd321(83)=acd321(19)*acd321(56)
      acd321(84)=-acd321(34)*acd321(51)
      acd321(85)=-acd321(32)*acd321(50)
      acd321(86)=-acd321(28)*acd321(7)
      acd321(87)=-acd321(24)*acd321(47)
      acd321(72)=acd321(73)+acd321(74)+acd321(87)+acd321(86)+acd321(85)+acd321(&
      &84)+acd321(83)+acd321(82)+acd321(81)+acd321(80)+acd321(79)+acd321(78)+ac&
      &d321(77)+acd321(57)+acd321(76)+acd321(72)
      acd321(72)=acd321(37)*acd321(72)
      acd321(73)=acd321(24)*acd321(25)
      acd321(73)=acd321(73)-acd321(26)
      acd321(73)=acd321(88)*acd321(73)
      acd321(74)=acd321(41)*acd321(23)
      acd321(76)=-acd321(19)*acd321(40)
      acd321(74)=acd321(76)+acd321(59)+acd321(74)
      acd321(74)=acd321(58)*acd321(74)
      acd321(76)=acd321(23)*acd321(88)
      acd321(77)=-acd321(19)*acd321(17)
      acd321(76)=acd321(76)+acd321(77)
      acd321(76)=acd321(5)*acd321(76)
      acd321(77)=acd321(69)*acd321(70)
      acd321(78)=acd321(67)*acd321(68)
      acd321(79)=acd321(62)*acd321(63)
      acd321(80)=acd321(12)*acd321(14)
      acd321(81)=acd321(17)*acd321(20)
      acd321(82)=acd321(64)*acd321(65)
      acd321(83)=acd321(1)*acd321(8)
      acd321(84)=acd321(41)*acd321(25)
      acd321(84)=acd321(61)+acd321(84)
      acd321(84)=acd321(60)*acd321(84)
      brack=acd321(72)+acd321(73)+acd321(74)+acd321(75)+acd321(76)+acd321(77)+a&
      &cd321(78)+acd321(79)+acd321(80)+acd321(81)+acd321(82)+acd321(83)+acd321(&
      &84)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd321
      complex(ki) :: brack
      acd321(1)=d(iv1,iv2)
      acd321(2)=dotproduct(qshift,spvak1k2)
      acd321(3)=abb321(13)
      acd321(4)=dotproduct(qshift,spval6k2)
      acd321(5)=abb321(46)
      acd321(6)=dotproduct(qshift,spvak7k2)
      acd321(7)=abb321(70)
      acd321(8)=abb321(21)
      acd321(9)=k2(iv1)
      acd321(10)=spval6k2(iv2)
      acd321(11)=abb321(45)
      acd321(12)=spvak7k2(iv2)
      acd321(13)=dotproduct(qshift,spval5k2)
      acd321(14)=abb321(15)
      acd321(15)=abb321(61)
      acd321(16)=spval5k2(iv2)
      acd321(17)=k2(iv2)
      acd321(18)=spval6k2(iv1)
      acd321(19)=spvak7k2(iv1)
      acd321(20)=spval5k2(iv1)
      acd321(21)=k3(iv1)
      acd321(22)=abb321(35)
      acd321(23)=k3(iv2)
      acd321(24)=k4(iv1)
      acd321(25)=k4(iv2)
      acd321(26)=l5(iv1)
      acd321(27)=abb321(55)
      acd321(28)=l5(iv2)
      acd321(29)=l6(iv1)
      acd321(30)=abb321(41)
      acd321(31)=l6(iv2)
      acd321(32)=k7(iv1)
      acd321(33)=abb321(73)
      acd321(34)=abb321(38)
      acd321(35)=k7(iv2)
      acd321(36)=qshift(iv1)
      acd321(37)=spvak1k2(iv2)
      acd321(38)=qshift(iv2)
      acd321(39)=spvak1k2(iv1)
      acd321(40)=abb321(20)
      acd321(41)=abb321(19)
      acd321(42)=abb321(16)
      acd321(43)=dotproduct(k2,qshift)
      acd321(44)=dotproduct(k3,qshift)
      acd321(45)=dotproduct(k4,qshift)
      acd321(46)=dotproduct(qshift,spvak4k2)
      acd321(47)=abb321(47)
      acd321(48)=dotproduct(qshift,spvak4k3)
      acd321(49)=abb321(34)
      acd321(50)=abb321(31)
      acd321(51)=spvak4k2(iv2)
      acd321(52)=spvak4k3(iv2)
      acd321(53)=spvak4k2(iv1)
      acd321(54)=spvak4k3(iv1)
      acd321(55)=abb321(71)
      acd321(56)=abb321(26)
      acd321(57)=abb321(33)
      acd321(58)=abb321(12)
      acd321(59)=spvak1k3(iv2)
      acd321(60)=abb321(23)
      acd321(61)=abb321(37)
      acd321(62)=abb321(22)
      acd321(63)=spval6k3(iv2)
      acd321(64)=abb321(49)
      acd321(65)=spval6l5(iv2)
      acd321(66)=abb321(30)
      acd321(67)=spval6k7(iv2)
      acd321(68)=spvak1k3(iv1)
      acd321(69)=spval6k3(iv1)
      acd321(70)=spval6l5(iv1)
      acd321(71)=spval6k7(iv1)
      acd321(72)=acd321(57)*acd321(54)
      acd321(73)=acd321(56)*acd321(53)
      acd321(74)=acd321(39)*acd321(41)
      acd321(72)=acd321(74)+acd321(72)+acd321(73)
      acd321(73)=-acd321(13)*acd321(72)
      acd321(74)=acd321(57)*acd321(48)
      acd321(75)=acd321(56)*acd321(46)
      acd321(76)=acd321(41)*acd321(2)
      acd321(74)=acd321(75)+acd321(74)+acd321(76)-acd321(58)
      acd321(75)=-acd321(20)*acd321(74)
      acd321(76)=acd321(49)*acd321(54)
      acd321(77)=acd321(47)*acd321(53)
      acd321(78)=acd321(39)*acd321(40)
      acd321(76)=acd321(78)+acd321(76)+acd321(77)
      acd321(77)=-acd321(4)*acd321(76)
      acd321(78)=acd321(49)*acd321(48)
      acd321(79)=acd321(47)*acd321(46)
      acd321(80)=acd321(40)*acd321(2)
      acd321(78)=acd321(79)+acd321(78)+acd321(80)-acd321(50)
      acd321(79)=-acd321(18)*acd321(78)
      acd321(80)=acd321(21)+acd321(24)
      acd321(81)=acd321(9)-acd321(80)
      acd321(82)=acd321(13)*acd321(81)
      acd321(83)=-acd321(45)+acd321(43)-acd321(44)
      acd321(84)=acd321(20)*acd321(83)
      acd321(82)=acd321(82)+acd321(84)
      acd321(82)=acd321(14)*acd321(82)
      acd321(84)=acd321(4)*acd321(81)
      acd321(85)=acd321(18)*acd321(83)
      acd321(84)=acd321(84)+acd321(85)
      acd321(84)=acd321(11)*acd321(84)
      acd321(80)=acd321(22)*acd321(80)
      acd321(85)=acd321(66)*acd321(70)
      acd321(86)=acd321(64)*acd321(69)
      acd321(87)=acd321(60)*acd321(68)
      acd321(88)=acd321(32)*acd321(34)
      acd321(89)=acd321(30)*acd321(29)
      acd321(90)=acd321(27)*acd321(26)
      acd321(91)=2.0_ki*acd321(7)
      acd321(92)=-acd321(36)*acd321(91)
      acd321(93)=-acd321(33)*acd321(71)
      acd321(94)=acd321(54)*acd321(62)
      acd321(95)=acd321(53)*acd321(61)
      acd321(96)=acd321(9)*acd321(15)
      acd321(97)=acd321(39)*acd321(42)
      acd321(98)=acd321(19)*acd321(55)
      acd321(73)=2.0_ki*acd321(98)+acd321(84)+acd321(82)+acd321(79)+acd321(77)+&
      &acd321(75)+acd321(73)+acd321(97)+acd321(96)+acd321(95)+acd321(94)+acd321&
      &(93)+acd321(92)+acd321(90)+acd321(89)+acd321(88)+acd321(87)+acd321(85)+a&
      &cd321(86)+acd321(80)
      acd321(73)=acd321(12)*acd321(73)
      acd321(75)=acd321(57)*acd321(52)
      acd321(77)=acd321(56)*acd321(51)
      acd321(79)=acd321(37)*acd321(41)
      acd321(75)=acd321(79)+acd321(75)+acd321(77)
      acd321(77)=-acd321(13)*acd321(75)
      acd321(74)=-acd321(16)*acd321(74)
      acd321(79)=acd321(49)*acd321(52)
      acd321(80)=acd321(47)*acd321(51)
      acd321(82)=acd321(37)*acd321(40)
      acd321(79)=acd321(79)+acd321(80)+acd321(82)
      acd321(80)=-acd321(4)*acd321(79)
      acd321(78)=-acd321(10)*acd321(78)
      acd321(82)=acd321(23)+acd321(25)
      acd321(84)=acd321(17)-acd321(82)
      acd321(85)=acd321(13)*acd321(84)
      acd321(86)=acd321(16)*acd321(83)
      acd321(85)=acd321(85)+acd321(86)
      acd321(85)=acd321(14)*acd321(85)
      acd321(86)=acd321(4)*acd321(84)
      acd321(83)=acd321(10)*acd321(83)
      acd321(83)=acd321(86)+acd321(83)
      acd321(83)=acd321(11)*acd321(83)
      acd321(82)=acd321(22)*acd321(82)
      acd321(86)=acd321(66)*acd321(65)
      acd321(87)=acd321(64)*acd321(63)
      acd321(88)=acd321(60)*acd321(59)
      acd321(89)=acd321(34)*acd321(35)
      acd321(90)=acd321(30)*acd321(31)
      acd321(92)=acd321(27)*acd321(28)
      acd321(93)=-acd321(38)*acd321(91)
      acd321(94)=-acd321(33)*acd321(67)
      acd321(95)=acd321(52)*acd321(62)
      acd321(96)=acd321(51)*acd321(61)
      acd321(97)=acd321(17)*acd321(15)
      acd321(98)=acd321(37)*acd321(42)
      acd321(74)=acd321(83)+acd321(85)+acd321(78)+acd321(80)+acd321(74)+acd321(&
      &77)+acd321(98)+acd321(97)+acd321(96)+acd321(95)+acd321(94)+acd321(93)+ac&
      &d321(92)+acd321(90)+acd321(89)+acd321(88)+acd321(86)+acd321(87)+acd321(8&
      &2)
      acd321(74)=acd321(19)*acd321(74)
      acd321(75)=-acd321(20)*acd321(75)
      acd321(72)=-acd321(16)*acd321(72)
      acd321(77)=-acd321(18)*acd321(79)
      acd321(76)=-acd321(10)*acd321(76)
      acd321(78)=acd321(20)*acd321(84)
      acd321(79)=acd321(16)*acd321(81)
      acd321(78)=acd321(78)+acd321(79)
      acd321(78)=acd321(14)*acd321(78)
      acd321(79)=acd321(18)*acd321(84)
      acd321(80)=acd321(10)*acd321(81)
      acd321(79)=acd321(79)+acd321(80)
      acd321(79)=acd321(11)*acd321(79)
      acd321(80)=-acd321(1)*acd321(91)
      acd321(72)=acd321(79)+acd321(78)+acd321(76)+acd321(77)+acd321(72)+acd321(&
      &80)+acd321(75)
      acd321(72)=acd321(6)*acd321(72)
      acd321(75)=-acd321(39)*acd321(38)
      acd321(76)=-acd321(37)*acd321(36)
      acd321(75)=acd321(76)+acd321(75)
      acd321(75)=acd321(3)*acd321(75)
      acd321(76)=-acd321(2)*acd321(3)
      acd321(77)=-acd321(4)*acd321(5)
      acd321(76)=acd321(77)+acd321(8)+acd321(76)
      acd321(76)=acd321(1)*acd321(76)
      acd321(75)=acd321(76)+acd321(75)
      acd321(76)=2.0_ki*acd321(5)
      acd321(77)=-acd321(38)*acd321(76)
      acd321(78)=acd321(33)*acd321(35)
      acd321(77)=acd321(77)+acd321(78)
      acd321(77)=acd321(18)*acd321(77)
      acd321(76)=-acd321(36)*acd321(76)
      acd321(78)=acd321(33)*acd321(32)
      acd321(76)=acd321(76)+acd321(78)
      acd321(76)=acd321(10)*acd321(76)
      brack=acd321(72)+acd321(73)+acd321(74)+2.0_ki*acd321(75)+acd321(76)+acd32&
      &1(77)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd321
      complex(ki) :: brack
      acd321(1)=d(iv1,iv2)
      acd321(2)=spvak1k2(iv3)
      acd321(3)=abb321(13)
      acd321(4)=spval6k2(iv3)
      acd321(5)=abb321(46)
      acd321(6)=spvak7k2(iv3)
      acd321(7)=abb321(70)
      acd321(8)=d(iv1,iv3)
      acd321(9)=spvak1k2(iv2)
      acd321(10)=spval6k2(iv2)
      acd321(11)=spvak7k2(iv2)
      acd321(12)=d(iv2,iv3)
      acd321(13)=spvak1k2(iv1)
      acd321(14)=spval6k2(iv1)
      acd321(15)=spvak7k2(iv1)
      acd321(16)=k2(iv1)
      acd321(17)=abb321(45)
      acd321(18)=spval5k2(iv3)
      acd321(19)=abb321(15)
      acd321(20)=spval5k2(iv2)
      acd321(21)=k2(iv2)
      acd321(22)=spval5k2(iv1)
      acd321(23)=k2(iv3)
      acd321(24)=k3(iv1)
      acd321(25)=k3(iv2)
      acd321(26)=k3(iv3)
      acd321(27)=k4(iv1)
      acd321(28)=k4(iv2)
      acd321(29)=k4(iv3)
      acd321(30)=abb321(20)
      acd321(31)=abb321(19)
      acd321(32)=spvak4k2(iv3)
      acd321(33)=abb321(47)
      acd321(34)=spvak4k3(iv3)
      acd321(35)=abb321(34)
      acd321(36)=spvak4k2(iv2)
      acd321(37)=spvak4k3(iv2)
      acd321(38)=spvak4k2(iv1)
      acd321(39)=spvak4k3(iv1)
      acd321(40)=abb321(26)
      acd321(41)=abb321(33)
      acd321(42)=acd321(41)*acd321(34)
      acd321(43)=acd321(40)*acd321(32)
      acd321(44)=acd321(31)*acd321(2)
      acd321(42)=acd321(44)+acd321(42)+acd321(43)
      acd321(43)=acd321(20)*acd321(42)
      acd321(44)=acd321(41)*acd321(37)
      acd321(45)=acd321(40)*acd321(36)
      acd321(46)=acd321(31)*acd321(9)
      acd321(44)=acd321(46)+acd321(44)+acd321(45)
      acd321(45)=acd321(18)*acd321(44)
      acd321(46)=acd321(35)*acd321(34)
      acd321(47)=acd321(33)*acd321(32)
      acd321(48)=acd321(30)*acd321(2)
      acd321(46)=acd321(46)+acd321(47)+acd321(48)
      acd321(47)=acd321(10)*acd321(46)
      acd321(48)=acd321(35)*acd321(37)
      acd321(49)=acd321(33)*acd321(36)
      acd321(50)=acd321(30)*acd321(9)
      acd321(48)=acd321(50)+acd321(48)+acd321(49)
      acd321(49)=acd321(4)*acd321(48)
      acd321(50)=-acd321(29)+acd321(23)-acd321(26)
      acd321(51)=-acd321(20)*acd321(50)
      acd321(52)=-acd321(28)+acd321(21)-acd321(25)
      acd321(53)=-acd321(18)*acd321(52)
      acd321(51)=acd321(51)+acd321(53)
      acd321(51)=acd321(19)*acd321(51)
      acd321(53)=-acd321(10)*acd321(50)
      acd321(54)=-acd321(4)*acd321(52)
      acd321(53)=acd321(53)+acd321(54)
      acd321(53)=acd321(17)*acd321(53)
      acd321(54)=2.0_ki*acd321(7)
      acd321(55)=acd321(12)*acd321(54)
      acd321(43)=acd321(53)+acd321(51)+acd321(49)+acd321(47)+acd321(45)+acd321(&
      &55)+acd321(43)
      acd321(43)=acd321(15)*acd321(43)
      acd321(42)=acd321(22)*acd321(42)
      acd321(45)=acd321(41)*acd321(39)
      acd321(47)=acd321(40)*acd321(38)
      acd321(49)=acd321(31)*acd321(13)
      acd321(45)=acd321(49)+acd321(45)+acd321(47)
      acd321(47)=acd321(18)*acd321(45)
      acd321(46)=acd321(14)*acd321(46)
      acd321(49)=acd321(35)*acd321(39)
      acd321(51)=acd321(33)*acd321(38)
      acd321(53)=acd321(30)*acd321(13)
      acd321(49)=acd321(53)+acd321(49)+acd321(51)
      acd321(51)=acd321(4)*acd321(49)
      acd321(53)=-acd321(22)*acd321(50)
      acd321(55)=-acd321(27)+acd321(16)-acd321(24)
      acd321(56)=-acd321(18)*acd321(55)
      acd321(53)=acd321(53)+acd321(56)
      acd321(53)=acd321(19)*acd321(53)
      acd321(50)=-acd321(14)*acd321(50)
      acd321(56)=-acd321(4)*acd321(55)
      acd321(50)=acd321(50)+acd321(56)
      acd321(50)=acd321(17)*acd321(50)
      acd321(56)=acd321(8)*acd321(54)
      acd321(42)=acd321(50)+acd321(53)+acd321(51)+acd321(46)+acd321(47)+acd321(&
      &56)+acd321(42)
      acd321(42)=acd321(11)*acd321(42)
      acd321(44)=acd321(22)*acd321(44)
      acd321(45)=acd321(20)*acd321(45)
      acd321(46)=acd321(14)*acd321(48)
      acd321(47)=acd321(10)*acd321(49)
      acd321(48)=-acd321(22)*acd321(52)
      acd321(49)=-acd321(20)*acd321(55)
      acd321(48)=acd321(48)+acd321(49)
      acd321(48)=acd321(19)*acd321(48)
      acd321(49)=-acd321(14)*acd321(52)
      acd321(50)=-acd321(10)*acd321(55)
      acd321(49)=acd321(49)+acd321(50)
      acd321(49)=acd321(17)*acd321(49)
      acd321(50)=acd321(1)*acd321(54)
      acd321(44)=acd321(49)+acd321(48)+acd321(47)+acd321(46)+acd321(45)+acd321(&
      &50)+acd321(44)
      acd321(44)=acd321(6)*acd321(44)
      acd321(45)=acd321(14)*acd321(12)
      acd321(46)=acd321(10)*acd321(8)
      acd321(47)=acd321(4)*acd321(1)
      acd321(45)=acd321(47)+acd321(46)+acd321(45)
      acd321(45)=acd321(5)*acd321(45)
      acd321(46)=acd321(13)*acd321(12)
      acd321(47)=acd321(9)*acd321(8)
      acd321(48)=acd321(2)*acd321(1)
      acd321(46)=acd321(48)+acd321(46)+acd321(47)
      acd321(46)=acd321(3)*acd321(46)
      acd321(45)=acd321(46)+acd321(45)
      brack=acd321(42)+acd321(43)+acd321(44)+2.0_ki*acd321(45)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd321h4
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
      qshift = k7+k6
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
!---#[ subroutine reconstruct_d321:
   subroutine     reconstruct_d321(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_321:
      coeffs%coeffs_321%c0 = derivative(czip)
      coeffs%coeffs_321%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_321%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_321%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_321%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_321%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_321%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_321%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_321%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_321%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_321%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_321%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_321%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_321%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_321%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_321%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_321%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_321%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_321%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_321%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_321%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_321%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_321%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_321%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_321%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_321%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_321%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_321%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_321%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_321%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_321%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_321%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_321%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_321%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_321%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_321:
   end subroutine reconstruct_d321
!---#] subroutine reconstruct_d321:
end module     p0_dbaru_epnebbbarg_d321h4l1d
