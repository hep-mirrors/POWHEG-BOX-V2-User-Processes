module     p0_dbaru_epnebbbarg_d309h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d309h4l1d.f90
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
   public :: derivative , reconstruct_d309
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd309h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(79) :: acd309
      complex(ki) :: brack
      acd309(1)=dotproduct(k1,qshift)
      acd309(2)=dotproduct(qshift,spvak7k2)
      acd309(3)=abb309(15)
      acd309(4)=abb309(71)
      acd309(5)=dotproduct(k2,qshift)
      acd309(6)=dotproduct(qshift,spval6k2)
      acd309(7)=abb309(20)
      acd309(8)=abb309(14)
      acd309(9)=abb309(52)
      acd309(10)=abb309(40)
      acd309(11)=dotproduct(k3,qshift)
      acd309(12)=dotproduct(qshift,spvak4k2)
      acd309(13)=abb309(24)
      acd309(14)=abb309(30)
      acd309(15)=abb309(53)
      acd309(16)=abb309(92)
      acd309(17)=dotproduct(k4,qshift)
      acd309(18)=dotproduct(k7,qshift)
      acd309(19)=dotproduct(qshift,qshift)
      acd309(20)=abb309(48)
      acd309(21)=abb309(27)
      acd309(22)=abb309(57)
      acd309(23)=abb309(22)
      acd309(24)=dotproduct(qshift,spvak4k3)
      acd309(25)=abb309(66)
      acd309(26)=abb309(11)
      acd309(27)=abb309(31)
      acd309(28)=abb309(47)
      acd309(29)=abb309(16)
      acd309(30)=dotproduct(qshift,spvak1k2)
      acd309(31)=abb309(17)
      acd309(32)=dotproduct(qshift,spvak1k3)
      acd309(33)=abb309(18)
      acd309(34)=dotproduct(qshift,spvak3k2)
      acd309(35)=abb309(21)
      acd309(36)=abb309(54)
      acd309(37)=dotproduct(qshift,spval5k2)
      acd309(38)=abb309(49)
      acd309(39)=dotproduct(qshift,spval6k3)
      acd309(40)=abb309(55)
      acd309(41)=dotproduct(qshift,spval6l5)
      acd309(42)=abb309(63)
      acd309(43)=dotproduct(qshift,spvak7k3)
      acd309(44)=abb309(51)
      acd309(45)=abb309(13)
      acd309(46)=abb309(46)
      acd309(47)=abb309(65)
      acd309(48)=abb309(19)
      acd309(49)=abb309(28)
      acd309(50)=abb309(59)
      acd309(51)=abb309(44)
      acd309(52)=abb309(10)
      acd309(53)=abb309(25)
      acd309(54)=abb309(36)
      acd309(55)=abb309(67)
      acd309(56)=abb309(37)
      acd309(57)=dotproduct(qshift,spval6k1)
      acd309(58)=abb309(23)
      acd309(59)=abb309(60)
      acd309(60)=abb309(62)
      acd309(61)=abb309(29)
      acd309(62)=abb309(12)
      acd309(63)=acd309(11)+acd309(17)
      acd309(64)=-acd309(13)*acd309(63)
      acd309(65)=-acd309(24)*acd309(28)
      acd309(66)=-acd309(12)*acd309(27)
      acd309(64)=acd309(66)+acd309(65)+acd309(29)+acd309(64)
      acd309(64)=acd309(12)*acd309(64)
      acd309(65)=acd309(63)-acd309(5)
      acd309(66)=acd309(7)*acd309(65)
      acd309(67)=-acd309(24)*acd309(25)
      acd309(68)=-acd309(12)*acd309(23)
      acd309(66)=acd309(68)+acd309(67)+acd309(26)+acd309(66)
      acd309(66)=acd309(6)*acd309(66)
      acd309(67)=-acd309(14)*acd309(63)
      acd309(68)=acd309(1)-acd309(18)
      acd309(69)=acd309(3)*acd309(68)
      acd309(70)=acd309(43)*acd309(44)
      acd309(71)=acd309(41)*acd309(42)
      acd309(72)=acd309(39)*acd309(40)
      acd309(73)=acd309(37)*acd309(38)
      acd309(74)=acd309(32)*acd309(33)
      acd309(75)=acd309(30)*acd309(31)
      acd309(76)=-acd309(19)*acd309(20)
      acd309(77)=acd309(5)*acd309(8)
      acd309(78)=-acd309(34)*acd309(35)
      acd309(78)=acd309(36)+acd309(78)
      acd309(78)=acd309(24)*acd309(78)
      acd309(79)=acd309(2)*acd309(22)
      acd309(64)=acd309(79)+acd309(66)+acd309(64)+acd309(78)+acd309(77)+acd309(&
      &76)+acd309(75)+acd309(74)+acd309(73)+acd309(72)+acd309(71)-acd309(45)+ac&
      &d309(70)+acd309(69)+acd309(67)
      acd309(64)=acd309(2)*acd309(64)
      acd309(66)=acd309(15)*acd309(63)
      acd309(67)=acd309(24)*acd309(50)
      acd309(69)=acd309(12)*acd309(49)
      acd309(66)=acd309(69)+acd309(67)-acd309(51)+acd309(66)
      acd309(66)=acd309(12)*acd309(66)
      acd309(65)=-acd309(9)*acd309(65)
      acd309(67)=acd309(24)*acd309(47)
      acd309(69)=acd309(12)*acd309(46)
      acd309(65)=acd309(69)+acd309(67)-acd309(48)+acd309(65)
      acd309(65)=acd309(6)*acd309(65)
      acd309(63)=-acd309(16)*acd309(63)
      acd309(67)=-acd309(4)*acd309(68)
      acd309(68)=-acd309(57)*acd309(58)
      acd309(69)=-acd309(43)*acd309(61)
      acd309(70)=-acd309(41)*acd309(60)
      acd309(71)=-acd309(39)*acd309(59)
      acd309(72)=-acd309(37)*acd309(56)
      acd309(73)=-acd309(32)*acd309(53)
      acd309(74)=-acd309(30)*acd309(52)
      acd309(75)=acd309(19)*acd309(21)
      acd309(76)=-acd309(5)*acd309(10)
      acd309(77)=acd309(34)*acd309(54)
      acd309(77)=-acd309(55)+acd309(77)
      acd309(77)=acd309(24)*acd309(77)
      brack=acd309(62)+acd309(63)+acd309(64)+acd309(65)+acd309(66)+acd309(67)+a&
      &cd309(68)+acd309(69)+acd309(70)+acd309(71)+acd309(72)+acd309(73)+acd309(&
      &74)+acd309(75)+acd309(76)+acd309(77)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd309h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(106) :: acd309
      complex(ki) :: brack
      acd309(1)=k1(iv1)
      acd309(2)=dotproduct(qshift,spvak7k2)
      acd309(3)=abb309(15)
      acd309(4)=abb309(71)
      acd309(5)=k2(iv1)
      acd309(6)=dotproduct(qshift,spval6k2)
      acd309(7)=abb309(20)
      acd309(8)=abb309(14)
      acd309(9)=abb309(52)
      acd309(10)=abb309(40)
      acd309(11)=k3(iv1)
      acd309(12)=dotproduct(qshift,spvak4k2)
      acd309(13)=abb309(24)
      acd309(14)=abb309(30)
      acd309(15)=abb309(53)
      acd309(16)=abb309(92)
      acd309(17)=k4(iv1)
      acd309(18)=k7(iv1)
      acd309(19)=qshift(iv1)
      acd309(20)=abb309(48)
      acd309(21)=abb309(27)
      acd309(22)=spvak7k2(iv1)
      acd309(23)=dotproduct(k1,qshift)
      acd309(24)=dotproduct(k2,qshift)
      acd309(25)=dotproduct(k3,qshift)
      acd309(26)=dotproduct(k4,qshift)
      acd309(27)=dotproduct(k7,qshift)
      acd309(28)=dotproduct(qshift,qshift)
      acd309(29)=abb309(57)
      acd309(30)=abb309(22)
      acd309(31)=dotproduct(qshift,spvak4k3)
      acd309(32)=abb309(66)
      acd309(33)=abb309(11)
      acd309(34)=abb309(31)
      acd309(35)=abb309(47)
      acd309(36)=abb309(16)
      acd309(37)=dotproduct(qshift,spvak1k2)
      acd309(38)=abb309(17)
      acd309(39)=dotproduct(qshift,spvak1k3)
      acd309(40)=abb309(18)
      acd309(41)=dotproduct(qshift,spvak3k2)
      acd309(42)=abb309(21)
      acd309(43)=abb309(54)
      acd309(44)=dotproduct(qshift,spval5k2)
      acd309(45)=abb309(49)
      acd309(46)=dotproduct(qshift,spval6k3)
      acd309(47)=abb309(55)
      acd309(48)=dotproduct(qshift,spval6l5)
      acd309(49)=abb309(63)
      acd309(50)=dotproduct(qshift,spvak7k3)
      acd309(51)=abb309(51)
      acd309(52)=abb309(13)
      acd309(53)=spval6k2(iv1)
      acd309(54)=abb309(46)
      acd309(55)=abb309(65)
      acd309(56)=abb309(19)
      acd309(57)=spvak4k2(iv1)
      acd309(58)=abb309(28)
      acd309(59)=abb309(59)
      acd309(60)=abb309(44)
      acd309(61)=spvak1k2(iv1)
      acd309(62)=abb309(10)
      acd309(63)=spvak1k3(iv1)
      acd309(64)=abb309(25)
      acd309(65)=spvak3k2(iv1)
      acd309(66)=abb309(36)
      acd309(67)=spvak4k3(iv1)
      acd309(68)=abb309(67)
      acd309(69)=spval5k2(iv1)
      acd309(70)=abb309(37)
      acd309(71)=spval6k1(iv1)
      acd309(72)=abb309(23)
      acd309(73)=spval6k3(iv1)
      acd309(74)=abb309(60)
      acd309(75)=spval6l5(iv1)
      acd309(76)=abb309(62)
      acd309(77)=spvak7k3(iv1)
      acd309(78)=abb309(29)
      acd309(79)=acd309(11)+acd309(17)
      acd309(80)=-acd309(13)*acd309(79)
      acd309(81)=-acd309(67)*acd309(35)
      acd309(82)=2.0_ki*acd309(57)
      acd309(83)=-acd309(34)*acd309(82)
      acd309(84)=-acd309(53)*acd309(30)
      acd309(80)=acd309(84)+acd309(83)+acd309(81)+acd309(80)
      acd309(80)=acd309(12)*acd309(80)
      acd309(81)=-acd309(67)*acd309(32)
      acd309(83)=acd309(79)-acd309(5)
      acd309(84)=acd309(7)*acd309(83)
      acd309(85)=-acd309(57)*acd309(30)
      acd309(81)=acd309(85)+acd309(81)+acd309(84)
      acd309(81)=acd309(6)*acd309(81)
      acd309(84)=acd309(25)+acd309(26)
      acd309(85)=acd309(13)*acd309(84)
      acd309(86)=acd309(31)*acd309(35)
      acd309(85)=-acd309(36)+acd309(85)+acd309(86)
      acd309(86)=-acd309(57)*acd309(85)
      acd309(87)=acd309(84)-acd309(24)
      acd309(88)=acd309(87)*acd309(7)
      acd309(89)=acd309(31)*acd309(32)
      acd309(88)=acd309(88)-acd309(89)+acd309(33)
      acd309(89)=acd309(53)*acd309(88)
      acd309(90)=-acd309(14)*acd309(79)
      acd309(91)=acd309(51)*acd309(77)
      acd309(92)=acd309(49)*acd309(75)
      acd309(93)=acd309(47)*acd309(73)
      acd309(94)=acd309(45)*acd309(69)
      acd309(95)=acd309(40)*acd309(63)
      acd309(96)=acd309(38)*acd309(61)
      acd309(97)=2.0_ki*acd309(19)
      acd309(98)=-acd309(20)*acd309(97)
      acd309(99)=acd309(5)*acd309(8)
      acd309(100)=acd309(1)-acd309(18)
      acd309(101)=acd309(3)*acd309(100)
      acd309(102)=acd309(41)*acd309(42)
      acd309(102)=acd309(102)-acd309(43)
      acd309(103)=-acd309(67)*acd309(102)
      acd309(104)=acd309(31)*acd309(65)
      acd309(105)=-acd309(42)*acd309(104)
      acd309(106)=acd309(22)*acd309(29)
      acd309(80)=2.0_ki*acd309(106)+acd309(81)+acd309(80)+acd309(89)+acd309(86)&
      &+acd309(105)+acd309(103)+acd309(101)+acd309(99)+acd309(98)+acd309(96)+ac&
      &d309(95)+acd309(94)+acd309(93)+acd309(91)+acd309(92)+acd309(90)
      acd309(80)=acd309(2)*acd309(80)
      acd309(81)=-acd309(12)*acd309(34)
      acd309(81)=acd309(81)-acd309(85)
      acd309(81)=acd309(12)*acd309(81)
      acd309(85)=-acd309(12)*acd309(30)
      acd309(85)=acd309(85)+acd309(88)
      acd309(85)=acd309(6)*acd309(85)
      acd309(86)=-acd309(14)*acd309(84)
      acd309(88)=acd309(51)*acd309(50)
      acd309(89)=acd309(49)*acd309(48)
      acd309(90)=acd309(47)*acd309(46)
      acd309(91)=acd309(45)*acd309(44)
      acd309(92)=acd309(40)*acd309(39)
      acd309(93)=acd309(38)*acd309(37)
      acd309(94)=-acd309(20)*acd309(28)
      acd309(95)=acd309(24)*acd309(8)
      acd309(96)=-acd309(27)+acd309(23)
      acd309(96)=acd309(3)*acd309(96)
      acd309(98)=-acd309(31)*acd309(102)
      acd309(81)=acd309(85)+acd309(81)+acd309(98)+acd309(96)+acd309(95)+acd309(&
      &94)+acd309(93)+acd309(92)+acd309(91)+acd309(90)+acd309(89)-acd309(52)+ac&
      &d309(88)+acd309(86)
      acd309(81)=acd309(22)*acd309(81)
      acd309(85)=acd309(15)*acd309(79)
      acd309(86)=acd309(67)*acd309(59)
      acd309(82)=acd309(58)*acd309(82)
      acd309(88)=acd309(53)*acd309(54)
      acd309(82)=acd309(88)+acd309(82)+acd309(86)+acd309(85)
      acd309(82)=acd309(12)*acd309(82)
      acd309(83)=-acd309(9)*acd309(83)
      acd309(85)=acd309(67)*acd309(55)
      acd309(86)=acd309(57)*acd309(54)
      acd309(83)=acd309(86)+acd309(83)+acd309(85)
      acd309(83)=acd309(6)*acd309(83)
      acd309(84)=acd309(15)*acd309(84)
      acd309(85)=acd309(31)*acd309(59)
      acd309(84)=acd309(85)-acd309(60)+acd309(84)
      acd309(84)=acd309(57)*acd309(84)
      acd309(85)=-acd309(9)*acd309(87)
      acd309(86)=acd309(31)*acd309(55)
      acd309(85)=acd309(86)-acd309(56)+acd309(85)
      acd309(85)=acd309(53)*acd309(85)
      acd309(79)=-acd309(16)*acd309(79)
      acd309(86)=-acd309(4)*acd309(100)
      acd309(87)=-acd309(71)*acd309(72)
      acd309(88)=-acd309(77)*acd309(78)
      acd309(89)=-acd309(75)*acd309(76)
      acd309(90)=-acd309(73)*acd309(74)
      acd309(91)=-acd309(69)*acd309(70)
      acd309(92)=-acd309(63)*acd309(64)
      acd309(93)=-acd309(61)*acd309(62)
      acd309(94)=acd309(21)*acd309(97)
      acd309(95)=-acd309(5)*acd309(10)
      acd309(96)=acd309(41)*acd309(66)
      acd309(96)=-acd309(68)+acd309(96)
      acd309(96)=acd309(67)*acd309(96)
      acd309(97)=acd309(66)*acd309(104)
      brack=acd309(79)+acd309(80)+acd309(81)+acd309(82)+acd309(83)+acd309(84)+a&
      &cd309(85)+acd309(86)+acd309(87)+acd309(88)+acd309(89)+acd309(90)+acd309(&
      &91)+acd309(92)+acd309(93)+acd309(94)+acd309(95)+acd309(96)+acd309(97)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd309h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd309
      complex(ki) :: brack
      acd309(1)=d(iv1,iv2)
      acd309(2)=dotproduct(qshift,spvak7k2)
      acd309(3)=abb309(48)
      acd309(4)=abb309(27)
      acd309(5)=k1(iv1)
      acd309(6)=spvak7k2(iv2)
      acd309(7)=abb309(15)
      acd309(8)=k1(iv2)
      acd309(9)=spvak7k2(iv1)
      acd309(10)=k2(iv1)
      acd309(11)=dotproduct(qshift,spval6k2)
      acd309(12)=abb309(20)
      acd309(13)=abb309(14)
      acd309(14)=spval6k2(iv2)
      acd309(15)=abb309(52)
      acd309(16)=k2(iv2)
      acd309(17)=spval6k2(iv1)
      acd309(18)=k3(iv1)
      acd309(19)=dotproduct(qshift,spvak4k2)
      acd309(20)=abb309(24)
      acd309(21)=abb309(30)
      acd309(22)=spvak4k2(iv2)
      acd309(23)=abb309(53)
      acd309(24)=k3(iv2)
      acd309(25)=spvak4k2(iv1)
      acd309(26)=k4(iv1)
      acd309(27)=k4(iv2)
      acd309(28)=k7(iv1)
      acd309(29)=k7(iv2)
      acd309(30)=qshift(iv1)
      acd309(31)=qshift(iv2)
      acd309(32)=abb309(57)
      acd309(33)=dotproduct(k2,qshift)
      acd309(34)=dotproduct(k3,qshift)
      acd309(35)=dotproduct(k4,qshift)
      acd309(36)=abb309(22)
      acd309(37)=dotproduct(qshift,spvak4k3)
      acd309(38)=abb309(66)
      acd309(39)=abb309(11)
      acd309(40)=abb309(31)
      acd309(41)=abb309(47)
      acd309(42)=abb309(16)
      acd309(43)=spvak1k2(iv2)
      acd309(44)=abb309(17)
      acd309(45)=spvak1k3(iv2)
      acd309(46)=abb309(18)
      acd309(47)=spvak3k2(iv2)
      acd309(48)=abb309(21)
      acd309(49)=spvak4k3(iv2)
      acd309(50)=dotproduct(qshift,spvak3k2)
      acd309(51)=abb309(54)
      acd309(52)=spval5k2(iv2)
      acd309(53)=abb309(49)
      acd309(54)=spval6k3(iv2)
      acd309(55)=abb309(55)
      acd309(56)=spval6l5(iv2)
      acd309(57)=abb309(63)
      acd309(58)=spvak7k3(iv2)
      acd309(59)=abb309(51)
      acd309(60)=spvak1k2(iv1)
      acd309(61)=spvak1k3(iv1)
      acd309(62)=spvak3k2(iv1)
      acd309(63)=spvak4k3(iv1)
      acd309(64)=spval5k2(iv1)
      acd309(65)=spval6k3(iv1)
      acd309(66)=spval6l5(iv1)
      acd309(67)=spvak7k3(iv1)
      acd309(68)=abb309(46)
      acd309(69)=abb309(65)
      acd309(70)=abb309(28)
      acd309(71)=abb309(59)
      acd309(72)=abb309(36)
      acd309(73)=acd309(37)*acd309(41)
      acd309(74)=acd309(34)+acd309(35)
      acd309(75)=acd309(74)*acd309(20)
      acd309(76)=2.0_ki*acd309(40)
      acd309(77)=acd309(76)*acd309(19)
      acd309(78)=acd309(11)*acd309(36)
      acd309(73)=acd309(77)+acd309(73)+acd309(75)+acd309(78)-acd309(42)
      acd309(75)=-acd309(25)*acd309(73)
      acd309(77)=acd309(48)*acd309(50)
      acd309(78)=acd309(19)*acd309(41)
      acd309(79)=acd309(11)*acd309(38)
      acd309(77)=acd309(79)+acd309(78)+acd309(77)-acd309(51)
      acd309(78)=-acd309(63)*acd309(77)
      acd309(79)=acd309(20)*acd309(19)
      acd309(79)=acd309(79)+acd309(21)
      acd309(80)=acd309(18)+acd309(26)
      acd309(81)=-acd309(80)*acd309(79)
      acd309(82)=acd309(37)*acd309(38)
      acd309(83)=acd309(19)*acd309(36)
      acd309(82)=-acd309(39)+acd309(82)+acd309(83)
      acd309(83)=-acd309(17)*acd309(82)
      acd309(84)=acd309(80)-acd309(10)
      acd309(85)=acd309(11)*acd309(84)
      acd309(74)=acd309(74)-acd309(33)
      acd309(86)=acd309(17)*acd309(74)
      acd309(85)=acd309(85)+acd309(86)
      acd309(85)=acd309(12)*acd309(85)
      acd309(86)=acd309(59)*acd309(67)
      acd309(87)=acd309(57)*acd309(66)
      acd309(88)=acd309(55)*acd309(65)
      acd309(89)=acd309(53)*acd309(64)
      acd309(90)=acd309(46)*acd309(61)
      acd309(91)=acd309(44)*acd309(60)
      acd309(92)=2.0_ki*acd309(3)
      acd309(93)=-acd309(30)*acd309(92)
      acd309(94)=acd309(10)*acd309(13)
      acd309(95)=-acd309(28)+acd309(5)
      acd309(95)=acd309(7)*acd309(95)
      acd309(96)=acd309(37)*acd309(48)
      acd309(97)=-acd309(62)*acd309(96)
      acd309(98)=acd309(9)*acd309(32)
      acd309(75)=2.0_ki*acd309(98)+acd309(85)+acd309(83)+acd309(75)+acd309(97)+&
      &acd309(95)+acd309(94)+acd309(93)+acd309(91)+acd309(90)+acd309(89)+acd309&
      &(88)+acd309(86)+acd309(87)+acd309(78)+acd309(81)
      acd309(75)=acd309(6)*acd309(75)
      acd309(73)=-acd309(22)*acd309(73)
      acd309(77)=-acd309(49)*acd309(77)
      acd309(78)=acd309(24)+acd309(27)
      acd309(79)=-acd309(78)*acd309(79)
      acd309(81)=-acd309(14)*acd309(82)
      acd309(82)=acd309(78)-acd309(16)
      acd309(83)=acd309(11)*acd309(82)
      acd309(74)=acd309(14)*acd309(74)
      acd309(74)=acd309(83)+acd309(74)
      acd309(74)=acd309(12)*acd309(74)
      acd309(83)=acd309(59)*acd309(58)
      acd309(85)=acd309(57)*acd309(56)
      acd309(86)=acd309(55)*acd309(54)
      acd309(87)=acd309(53)*acd309(52)
      acd309(88)=acd309(46)*acd309(45)
      acd309(89)=acd309(44)*acd309(43)
      acd309(90)=-acd309(31)*acd309(92)
      acd309(91)=acd309(16)*acd309(13)
      acd309(93)=-acd309(29)+acd309(8)
      acd309(93)=acd309(7)*acd309(93)
      acd309(94)=-acd309(47)*acd309(96)
      acd309(73)=acd309(74)+acd309(81)+acd309(73)+acd309(94)+acd309(93)+acd309(&
      &91)+acd309(90)+acd309(89)+acd309(88)+acd309(87)+acd309(86)+acd309(83)+ac&
      &d309(85)+acd309(77)+acd309(79)
      acd309(73)=acd309(9)*acd309(73)
      acd309(74)=-acd309(63)*acd309(41)
      acd309(77)=-acd309(20)*acd309(80)
      acd309(76)=-acd309(25)*acd309(76)
      acd309(74)=acd309(76)+acd309(74)+acd309(77)
      acd309(74)=acd309(22)*acd309(74)
      acd309(76)=acd309(63)*acd309(47)
      acd309(77)=acd309(49)*acd309(62)
      acd309(76)=acd309(76)+acd309(77)
      acd309(77)=-acd309(48)*acd309(76)
      acd309(79)=-acd309(49)*acd309(41)
      acd309(81)=-acd309(20)*acd309(78)
      acd309(79)=acd309(79)+acd309(81)
      acd309(79)=acd309(25)*acd309(79)
      acd309(81)=-acd309(49)*acd309(38)
      acd309(83)=-acd309(22)*acd309(36)
      acd309(81)=acd309(81)+acd309(83)
      acd309(81)=acd309(17)*acd309(81)
      acd309(83)=-acd309(63)*acd309(38)
      acd309(85)=-acd309(25)*acd309(36)
      acd309(83)=acd309(83)+acd309(85)
      acd309(83)=acd309(14)*acd309(83)
      acd309(85)=acd309(17)*acd309(82)
      acd309(86)=acd309(14)*acd309(84)
      acd309(85)=acd309(85)+acd309(86)
      acd309(85)=acd309(12)*acd309(85)
      acd309(86)=-acd309(1)*acd309(92)
      acd309(74)=acd309(85)+acd309(83)+acd309(81)+acd309(74)+acd309(79)+acd309(&
      &86)+acd309(77)
      acd309(74)=acd309(2)*acd309(74)
      acd309(77)=acd309(23)*acd309(80)
      acd309(79)=acd309(63)*acd309(71)
      acd309(80)=acd309(25)*acd309(70)
      acd309(77)=2.0_ki*acd309(80)+acd309(79)+acd309(77)
      acd309(77)=acd309(22)*acd309(77)
      acd309(79)=-acd309(15)*acd309(82)
      acd309(80)=acd309(49)*acd309(69)
      acd309(81)=acd309(22)*acd309(68)
      acd309(79)=acd309(81)+acd309(80)+acd309(79)
      acd309(79)=acd309(17)*acd309(79)
      acd309(80)=-acd309(15)*acd309(84)
      acd309(81)=acd309(63)*acd309(69)
      acd309(82)=acd309(25)*acd309(68)
      acd309(80)=acd309(82)+acd309(81)+acd309(80)
      acd309(80)=acd309(14)*acd309(80)
      acd309(76)=acd309(72)*acd309(76)
      acd309(78)=acd309(23)*acd309(78)
      acd309(81)=acd309(49)*acd309(71)
      acd309(78)=acd309(81)+acd309(78)
      acd309(78)=acd309(25)*acd309(78)
      acd309(81)=acd309(1)*acd309(4)
      brack=acd309(73)+acd309(74)+acd309(75)+acd309(76)+acd309(77)+acd309(78)+a&
      &cd309(79)+acd309(80)+2.0_ki*acd309(81)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd309h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(54) :: acd309
      complex(ki) :: brack
      acd309(1)=d(iv1,iv2)
      acd309(2)=spvak7k2(iv3)
      acd309(3)=abb309(48)
      acd309(4)=d(iv1,iv3)
      acd309(5)=spvak7k2(iv2)
      acd309(6)=d(iv2,iv3)
      acd309(7)=spvak7k2(iv1)
      acd309(8)=k2(iv1)
      acd309(9)=spval6k2(iv3)
      acd309(10)=abb309(20)
      acd309(11)=spval6k2(iv2)
      acd309(12)=k2(iv2)
      acd309(13)=spval6k2(iv1)
      acd309(14)=k2(iv3)
      acd309(15)=k3(iv1)
      acd309(16)=spvak4k2(iv3)
      acd309(17)=abb309(24)
      acd309(18)=spvak4k2(iv2)
      acd309(19)=k3(iv2)
      acd309(20)=spvak4k2(iv1)
      acd309(21)=k3(iv3)
      acd309(22)=k4(iv1)
      acd309(23)=k4(iv2)
      acd309(24)=k4(iv3)
      acd309(25)=abb309(22)
      acd309(26)=spvak4k3(iv3)
      acd309(27)=abb309(66)
      acd309(28)=spvak4k3(iv2)
      acd309(29)=abb309(31)
      acd309(30)=abb309(47)
      acd309(31)=spvak3k2(iv2)
      acd309(32)=abb309(21)
      acd309(33)=spvak3k2(iv3)
      acd309(34)=spvak4k3(iv1)
      acd309(35)=spvak3k2(iv1)
      acd309(36)=acd309(32)*acd309(31)
      acd309(37)=-acd309(18)*acd309(30)
      acd309(36)=acd309(37)-acd309(36)
      acd309(36)=acd309(26)*acd309(36)
      acd309(37)=-acd309(28)*acd309(30)
      acd309(38)=2.0_ki*acd309(29)
      acd309(39)=-acd309(18)*acd309(38)
      acd309(37)=acd309(37)+acd309(39)
      acd309(37)=acd309(16)*acd309(37)
      acd309(39)=acd309(26)*acd309(27)
      acd309(40)=acd309(16)*acd309(25)
      acd309(39)=acd309(39)+acd309(40)
      acd309(40)=-acd309(11)*acd309(39)
      acd309(41)=acd309(27)*acd309(28)
      acd309(42)=acd309(18)*acd309(25)
      acd309(41)=acd309(41)+acd309(42)
      acd309(42)=-acd309(9)*acd309(41)
      acd309(43)=acd309(21)+acd309(24)
      acd309(44)=-acd309(18)*acd309(43)
      acd309(45)=acd309(19)+acd309(23)
      acd309(46)=-acd309(16)*acd309(45)
      acd309(44)=acd309(44)+acd309(46)
      acd309(44)=acd309(17)*acd309(44)
      acd309(46)=acd309(43)-acd309(14)
      acd309(47)=acd309(11)*acd309(46)
      acd309(48)=acd309(45)-acd309(12)
      acd309(49)=acd309(9)*acd309(48)
      acd309(47)=acd309(47)+acd309(49)
      acd309(47)=acd309(10)*acd309(47)
      acd309(49)=2.0_ki*acd309(3)
      acd309(50)=-acd309(6)*acd309(49)
      acd309(51)=-acd309(28)*acd309(32)*acd309(33)
      acd309(36)=acd309(47)+acd309(44)+acd309(42)+acd309(40)+acd309(37)+acd309(&
      &50)+acd309(51)+acd309(36)
      acd309(36)=acd309(7)*acd309(36)
      acd309(37)=acd309(32)*acd309(35)
      acd309(40)=acd309(20)*acd309(30)
      acd309(37)=acd309(37)+acd309(40)
      acd309(40)=-acd309(26)*acd309(37)
      acd309(42)=acd309(30)*acd309(34)
      acd309(38)=acd309(38)*acd309(20)
      acd309(38)=acd309(42)+acd309(38)
      acd309(42)=-acd309(16)*acd309(38)
      acd309(39)=-acd309(13)*acd309(39)
      acd309(44)=acd309(27)*acd309(34)
      acd309(47)=acd309(20)*acd309(25)
      acd309(44)=acd309(44)+acd309(47)
      acd309(47)=-acd309(9)*acd309(44)
      acd309(43)=-acd309(20)*acd309(43)
      acd309(50)=acd309(15)+acd309(22)
      acd309(51)=-acd309(16)*acd309(50)
      acd309(43)=acd309(43)+acd309(51)
      acd309(43)=acd309(17)*acd309(43)
      acd309(46)=acd309(13)*acd309(46)
      acd309(51)=acd309(50)-acd309(8)
      acd309(52)=acd309(9)*acd309(51)
      acd309(46)=acd309(46)+acd309(52)
      acd309(46)=acd309(10)*acd309(46)
      acd309(52)=-acd309(4)*acd309(49)
      acd309(53)=acd309(32)*acd309(34)
      acd309(54)=-acd309(33)*acd309(53)
      acd309(39)=acd309(46)+acd309(43)+acd309(47)+acd309(39)+acd309(42)+acd309(&
      &52)+acd309(54)+acd309(40)
      acd309(39)=acd309(5)*acd309(39)
      acd309(37)=-acd309(28)*acd309(37)
      acd309(38)=-acd309(18)*acd309(38)
      acd309(40)=-acd309(13)*acd309(41)
      acd309(41)=-acd309(11)*acd309(44)
      acd309(42)=-acd309(20)*acd309(45)
      acd309(43)=-acd309(18)*acd309(50)
      acd309(42)=acd309(42)+acd309(43)
      acd309(42)=acd309(17)*acd309(42)
      acd309(43)=acd309(13)*acd309(48)
      acd309(44)=acd309(11)*acd309(51)
      acd309(43)=acd309(43)+acd309(44)
      acd309(43)=acd309(10)*acd309(43)
      acd309(44)=-acd309(1)*acd309(49)
      acd309(45)=-acd309(31)*acd309(53)
      acd309(37)=acd309(43)+acd309(42)+acd309(41)+acd309(40)+acd309(38)+acd309(&
      &44)+acd309(45)+acd309(37)
      acd309(37)=acd309(2)*acd309(37)
      brack=acd309(36)+acd309(37)+acd309(39)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd309h4
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
      qshift = -k6-k5
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
!---#[ subroutine reconstruct_d309:
   subroutine     reconstruct_d309(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group17
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group17), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_309:
      coeffs%coeffs_309%c0 = derivative(czip)
      coeffs%coeffs_309%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_309%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_309%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_309%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_309%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_309%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_309%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_309%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_309%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_309%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_309%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_309%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_309%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_309%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_309%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_309%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_309%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_309%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_309%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_309%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_309%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_309%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_309%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_309%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_309%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_309%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_309%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_309%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_309%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_309%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_309%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_309%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_309%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_309%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_309:
   end subroutine reconstruct_d309
!---#] subroutine reconstruct_d309:
end module     p0_dbaru_epnebbbarg_d309h4l1d
