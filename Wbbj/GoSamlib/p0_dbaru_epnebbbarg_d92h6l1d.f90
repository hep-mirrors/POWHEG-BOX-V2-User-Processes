module     p0_dbaru_epnebbbarg_d92h6l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d92h6l1d.f90
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
   public :: derivative , reconstruct_d92
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd92h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd92
      complex(ki) :: brack
      acd92(1)=dotproduct(k1,qshift)
      acd92(2)=dotproduct(k2,qshift)
      acd92(3)=abb92(53)
      acd92(4)=dotproduct(qshift,spvak7k2)
      acd92(5)=abb92(35)
      acd92(6)=dotproduct(qshift,spvak7l6)
      acd92(7)=abb92(13)
      acd92(8)=abb92(50)
      acd92(9)=abb92(64)
      acd92(10)=dotproduct(k3,qshift)
      acd92(11)=abb92(71)
      acd92(12)=dotproduct(k4,qshift)
      acd92(13)=dotproduct(l5,qshift)
      acd92(14)=dotproduct(l6,qshift)
      acd92(15)=abb92(40)
      acd92(16)=abb92(20)
      acd92(17)=abb92(73)
      acd92(18)=dotproduct(qshift,spvak1k2)
      acd92(19)=abb92(22)
      acd92(20)=dotproduct(qshift,spvak1l6)
      acd92(21)=abb92(33)
      acd92(22)=dotproduct(qshift,spvak4k2)
      acd92(23)=abb92(24)
      acd92(24)=dotproduct(qshift,spvak4k3)
      acd92(25)=abb92(77)
      acd92(26)=dotproduct(qshift,spval5k2)
      acd92(27)=abb92(12)
      acd92(28)=dotproduct(qshift,spval5l6)
      acd92(29)=abb92(81)
      acd92(30)=dotproduct(qshift,spval6k2)
      acd92(31)=abb92(44)
      acd92(32)=abb92(14)
      acd92(33)=abb92(98)
      acd92(34)=abb92(91)
      acd92(35)=abb92(75)
      acd92(36)=abb92(31)
      acd92(37)=abb92(18)
      acd92(38)=abb92(54)
      acd92(39)=dotproduct(qshift,qshift)
      acd92(40)=abb92(37)
      acd92(41)=abb92(41)
      acd92(42)=abb92(38)
      acd92(43)=abb92(43)
      acd92(44)=abb92(83)
      acd92(45)=abb92(59)
      acd92(46)=dotproduct(qshift,spvak2l6)
      acd92(47)=abb92(36)
      acd92(48)=abb92(28)
      acd92(49)=abb92(21)
      acd92(50)=abb92(46)
      acd92(51)=abb92(29)
      acd92(52)=abb92(16)
      acd92(53)=abb92(42)
      acd92(54)=abb92(27)
      acd92(55)=abb92(17)
      acd92(56)=abb92(32)
      acd92(57)=abb92(26)
      acd92(58)=abb92(15)
      acd92(59)=abb92(25)
      acd92(60)=abb92(78)
      acd92(61)=abb92(76)
      acd92(62)=abb92(34)
      acd92(63)=abb92(63)
      acd92(64)=dotproduct(qshift,spvak1l5)
      acd92(65)=abb92(45)
      acd92(66)=dotproduct(qshift,spvak2k1)
      acd92(67)=abb92(39)
      acd92(68)=dotproduct(qshift,spvak2l5)
      acd92(69)=abb92(23)
      acd92(70)=abb92(19)
      acd92(71)=abb92(30)
      acd92(72)=acd92(30)*acd92(31)
      acd92(73)=acd92(26)*acd92(27)
      acd92(74)=acd92(28)*acd92(29)
      acd92(75)=acd92(20)*acd92(21)
      acd92(76)=acd92(18)*acd92(19)
      acd92(72)=acd92(76)+acd92(72)+acd92(73)+acd92(74)+acd92(75)
      acd92(73)=acd92(10)+acd92(12)
      acd92(74)=acd92(11)*acd92(73)
      acd92(75)=acd92(1)-acd92(13)
      acd92(76)=-acd92(3)*acd92(75)
      acd92(77)=acd92(6)*acd92(17)
      acd92(78)=acd92(24)*acd92(25)
      acd92(79)=acd92(22)*acd92(23)
      acd92(80)=acd92(14)*acd92(15)
      acd92(81)=acd92(4)*acd92(16)
      acd92(82)=acd92(2)*acd92(9)
      acd92(74)=acd92(82)+acd92(81)+acd92(80)+acd92(79)+acd92(78)+acd92(77)-acd&
      &92(32)+acd92(76)+acd92(74)+acd92(72)
      acd92(74)=acd92(2)*acd92(74)
      acd92(75)=acd92(5)*acd92(75)
      acd92(76)=acd92(46)*acd92(47)
      acd92(77)=acd92(30)*acd92(45)
      acd92(78)=acd92(26)*acd92(43)
      acd92(79)=acd92(28)*acd92(44)
      acd92(80)=acd92(20)*acd92(42)
      acd92(81)=acd92(18)*acd92(41)
      acd92(82)=acd92(14)*acd92(36)
      acd92(75)=acd92(82)+acd92(81)+acd92(80)+acd92(79)+acd92(78)+acd92(77)-acd&
      &92(48)+acd92(76)+acd92(75)
      acd92(75)=acd92(4)*acd92(75)
      acd92(76)=acd92(14)*acd92(33)
      acd92(72)=acd92(34)+acd92(76)+acd92(72)
      acd92(72)=-acd92(72)*acd92(73)
      acd92(73)=acd92(30)*acd92(61)
      acd92(76)=acd92(26)*acd92(59)
      acd92(77)=acd92(28)*acd92(60)
      acd92(78)=acd92(20)*acd92(53)
      acd92(79)=acd92(18)*acd92(50)
      acd92(73)=acd92(79)+acd92(78)+acd92(77)+acd92(76)-acd92(62)+acd92(73)
      acd92(73)=acd92(24)*acd92(73)
      acd92(76)=acd92(30)*acd92(57)
      acd92(77)=acd92(26)*acd92(55)
      acd92(78)=acd92(28)*acd92(56)
      acd92(79)=acd92(20)*acd92(52)
      acd92(80)=acd92(18)*acd92(49)
      acd92(76)=acd92(80)+acd92(79)+acd92(78)+acd92(77)-acd92(58)+acd92(76)
      acd92(76)=acd92(22)*acd92(76)
      acd92(77)=acd92(6)*acd92(7)
      acd92(78)=acd92(77)+acd92(35)
      acd92(79)=acd92(24)*acd92(38)
      acd92(80)=acd92(22)*acd92(37)
      acd92(79)=acd92(80)+acd92(79)+acd92(78)
      acd92(79)=acd92(14)*acd92(79)
      acd92(78)=acd92(13)*acd92(78)
      acd92(80)=-acd92(68)*acd92(69)
      acd92(81)=-acd92(66)*acd92(67)
      acd92(82)=-acd92(64)*acd92(65)
      acd92(83)=acd92(39)*acd92(40)
      acd92(84)=-acd92(46)*acd92(70)
      acd92(77)=-acd92(8)-acd92(77)
      acd92(77)=acd92(1)*acd92(77)
      acd92(85)=-acd92(28)*acd92(63)
      acd92(86)=-acd92(20)*acd92(54)
      acd92(87)=-acd92(18)*acd92(51)
      brack=acd92(71)+acd92(72)+acd92(73)+acd92(74)+acd92(75)+acd92(76)+acd92(7&
      &7)+acd92(78)+acd92(79)+acd92(80)+acd92(81)+acd92(82)+acd92(83)+acd92(84)&
      &+acd92(85)+acd92(86)+acd92(87)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd92h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(108) :: acd92
      complex(ki) :: brack
      acd92(1)=k1(iv1)
      acd92(2)=dotproduct(k2,qshift)
      acd92(3)=abb92(53)
      acd92(4)=dotproduct(qshift,spvak7k2)
      acd92(5)=abb92(35)
      acd92(6)=dotproduct(qshift,spvak7l6)
      acd92(7)=abb92(13)
      acd92(8)=abb92(50)
      acd92(9)=k2(iv1)
      acd92(10)=dotproduct(k1,qshift)
      acd92(11)=abb92(64)
      acd92(12)=dotproduct(k3,qshift)
      acd92(13)=abb92(71)
      acd92(14)=dotproduct(k4,qshift)
      acd92(15)=dotproduct(l5,qshift)
      acd92(16)=dotproduct(l6,qshift)
      acd92(17)=abb92(40)
      acd92(18)=abb92(20)
      acd92(19)=abb92(73)
      acd92(20)=dotproduct(qshift,spvak1k2)
      acd92(21)=abb92(22)
      acd92(22)=dotproduct(qshift,spvak1l6)
      acd92(23)=abb92(33)
      acd92(24)=dotproduct(qshift,spvak4k2)
      acd92(25)=abb92(24)
      acd92(26)=dotproduct(qshift,spvak4k3)
      acd92(27)=abb92(77)
      acd92(28)=dotproduct(qshift,spval5k2)
      acd92(29)=abb92(12)
      acd92(30)=dotproduct(qshift,spval5l6)
      acd92(31)=abb92(81)
      acd92(32)=dotproduct(qshift,spval6k2)
      acd92(33)=abb92(44)
      acd92(34)=abb92(14)
      acd92(35)=k3(iv1)
      acd92(36)=abb92(98)
      acd92(37)=abb92(91)
      acd92(38)=k4(iv1)
      acd92(39)=l5(iv1)
      acd92(40)=abb92(75)
      acd92(41)=l6(iv1)
      acd92(42)=abb92(31)
      acd92(43)=abb92(18)
      acd92(44)=abb92(54)
      acd92(45)=qshift(iv1)
      acd92(46)=abb92(37)
      acd92(47)=spvak7k2(iv1)
      acd92(48)=abb92(41)
      acd92(49)=abb92(38)
      acd92(50)=abb92(43)
      acd92(51)=abb92(83)
      acd92(52)=abb92(59)
      acd92(53)=dotproduct(qshift,spvak2l6)
      acd92(54)=abb92(36)
      acd92(55)=abb92(28)
      acd92(56)=spvak7l6(iv1)
      acd92(57)=spvak1k2(iv1)
      acd92(58)=abb92(21)
      acd92(59)=abb92(46)
      acd92(60)=abb92(29)
      acd92(61)=spvak1l6(iv1)
      acd92(62)=abb92(16)
      acd92(63)=abb92(42)
      acd92(64)=abb92(27)
      acd92(65)=spvak4k2(iv1)
      acd92(66)=abb92(17)
      acd92(67)=abb92(32)
      acd92(68)=abb92(26)
      acd92(69)=abb92(15)
      acd92(70)=spvak4k3(iv1)
      acd92(71)=abb92(25)
      acd92(72)=abb92(78)
      acd92(73)=abb92(76)
      acd92(74)=abb92(34)
      acd92(75)=spval5k2(iv1)
      acd92(76)=spval5l6(iv1)
      acd92(77)=abb92(63)
      acd92(78)=spval6k2(iv1)
      acd92(79)=spvak1l5(iv1)
      acd92(80)=abb92(45)
      acd92(81)=spvak2k1(iv1)
      acd92(82)=abb92(39)
      acd92(83)=spvak2l5(iv1)
      acd92(84)=abb92(23)
      acd92(85)=spvak2l6(iv1)
      acd92(86)=abb92(19)
      acd92(87)=acd92(32)*acd92(33)
      acd92(88)=acd92(30)*acd92(31)
      acd92(89)=acd92(28)*acd92(29)
      acd92(90)=acd92(22)*acd92(23)
      acd92(91)=acd92(20)*acd92(21)
      acd92(87)=acd92(89)+acd92(87)+acd92(88)+acd92(90)+acd92(91)
      acd92(88)=acd92(12)+acd92(14)
      acd92(89)=-acd92(13)*acd92(88)
      acd92(90)=-acd92(6)*acd92(19)
      acd92(91)=acd92(10)-acd92(15)
      acd92(92)=acd92(3)*acd92(91)
      acd92(93)=-acd92(26)*acd92(27)
      acd92(94)=-acd92(24)*acd92(25)
      acd92(95)=-acd92(16)*acd92(17)
      acd92(96)=-acd92(4)*acd92(18)
      acd92(97)=acd92(2)*acd92(11)
      acd92(89)=-2.0_ki*acd92(97)+acd92(96)+acd92(95)+acd92(94)+acd92(93)+acd92&
      &(92)+acd92(34)+acd92(90)-acd92(87)+acd92(89)
      acd92(89)=acd92(9)*acd92(89)
      acd92(90)=acd92(1)-acd92(39)
      acd92(92)=-acd92(5)*acd92(90)
      acd92(93)=-acd92(54)*acd92(85)
      acd92(94)=-acd92(78)*acd92(52)
      acd92(95)=-acd92(75)*acd92(50)
      acd92(96)=-acd92(76)*acd92(51)
      acd92(97)=-acd92(61)*acd92(49)
      acd92(98)=-acd92(57)*acd92(48)
      acd92(99)=-acd92(41)*acd92(42)
      acd92(92)=acd92(99)+acd92(98)+acd92(97)+acd92(96)+acd92(95)+acd92(94)+acd&
      &92(93)+acd92(92)
      acd92(92)=acd92(4)*acd92(92)
      acd92(93)=-acd92(54)*acd92(53)
      acd92(94)=-acd92(5)*acd92(91)
      acd92(95)=-acd92(32)*acd92(52)
      acd92(96)=-acd92(30)*acd92(51)
      acd92(97)=-acd92(28)*acd92(50)
      acd92(98)=-acd92(22)*acd92(49)
      acd92(99)=-acd92(20)*acd92(48)
      acd92(100)=-acd92(16)*acd92(42)
      acd92(93)=acd92(100)+acd92(99)+acd92(98)+acd92(97)+acd92(96)+acd92(95)+ac&
      &d92(94)+acd92(55)+acd92(93)
      acd92(93)=acd92(47)*acd92(93)
      acd92(94)=acd92(33)*acd92(78)
      acd92(95)=acd92(29)*acd92(75)
      acd92(96)=acd92(76)*acd92(31)
      acd92(97)=acd92(61)*acd92(23)
      acd92(98)=acd92(57)*acd92(21)
      acd92(94)=acd92(98)+acd92(97)+acd92(96)+acd92(94)+acd92(95)
      acd92(95)=acd92(35)+acd92(38)
      acd92(96)=-acd92(13)*acd92(95)
      acd92(97)=acd92(3)*acd92(90)
      acd92(98)=-acd92(56)*acd92(19)
      acd92(99)=-acd92(70)*acd92(27)
      acd92(100)=-acd92(65)*acd92(25)
      acd92(101)=-acd92(41)*acd92(17)
      acd92(102)=-acd92(47)*acd92(18)
      acd92(96)=acd92(102)+acd92(101)+acd92(100)+acd92(99)+acd92(98)+acd92(97)+&
      &acd92(96)-acd92(94)
      acd92(96)=acd92(2)*acd92(96)
      acd92(97)=-acd92(32)*acd92(73)
      acd92(98)=-acd92(30)*acd92(72)
      acd92(99)=-acd92(28)*acd92(71)
      acd92(100)=-acd92(22)*acd92(63)
      acd92(101)=-acd92(20)*acd92(59)
      acd92(102)=-acd92(16)*acd92(44)
      acd92(97)=acd92(102)+acd92(101)+acd92(100)+acd92(99)+acd92(98)+acd92(74)+&
      &acd92(97)
      acd92(97)=acd92(70)*acd92(97)
      acd92(98)=-acd92(32)*acd92(68)
      acd92(99)=-acd92(30)*acd92(67)
      acd92(100)=-acd92(28)*acd92(66)
      acd92(101)=-acd92(22)*acd92(62)
      acd92(102)=-acd92(20)*acd92(58)
      acd92(103)=-acd92(16)*acd92(43)
      acd92(98)=acd92(103)+acd92(102)+acd92(101)+acd92(100)+acd92(99)+acd92(69)&
      &+acd92(98)
      acd92(98)=acd92(65)*acd92(98)
      acd92(99)=acd92(16)*acd92(36)
      acd92(87)=acd92(37)+acd92(99)+acd92(87)
      acd92(87)=acd92(87)*acd92(95)
      acd92(94)=acd92(94)*acd92(88)
      acd92(95)=-acd92(78)*acd92(73)
      acd92(99)=-acd92(75)*acd92(71)
      acd92(100)=-acd92(76)*acd92(72)
      acd92(101)=-acd92(61)*acd92(63)
      acd92(102)=-acd92(57)*acd92(59)
      acd92(95)=acd92(102)+acd92(101)+acd92(100)+acd92(95)+acd92(99)
      acd92(95)=acd92(26)*acd92(95)
      acd92(99)=-acd92(78)*acd92(68)
      acd92(100)=-acd92(75)*acd92(66)
      acd92(101)=-acd92(76)*acd92(67)
      acd92(102)=-acd92(61)*acd92(62)
      acd92(103)=-acd92(57)*acd92(58)
      acd92(99)=acd92(103)+acd92(102)+acd92(101)+acd92(99)+acd92(100)
      acd92(99)=acd92(24)*acd92(99)
      acd92(88)=acd92(36)*acd92(88)
      acd92(100)=-acd92(7)*acd92(6)
      acd92(101)=-acd92(26)*acd92(44)
      acd92(102)=-acd92(24)*acd92(43)
      acd92(88)=acd92(102)+acd92(101)-acd92(40)+acd92(100)+acd92(88)
      acd92(88)=acd92(41)*acd92(88)
      acd92(91)=-acd92(16)+acd92(91)
      acd92(91)=acd92(56)*acd92(91)
      acd92(90)=acd92(6)*acd92(90)
      acd92(90)=acd92(90)+acd92(91)
      acd92(90)=acd92(7)*acd92(90)
      acd92(91)=acd92(83)*acd92(84)
      acd92(100)=acd92(81)*acd92(82)
      acd92(101)=acd92(79)*acd92(80)
      acd92(102)=acd92(45)*acd92(46)
      acd92(103)=acd92(85)*acd92(86)
      acd92(104)=-acd92(39)*acd92(40)
      acd92(105)=acd92(1)*acd92(8)
      acd92(106)=acd92(76)*acd92(77)
      acd92(107)=acd92(61)*acd92(64)
      acd92(108)=acd92(57)*acd92(60)
      brack=acd92(87)+acd92(88)+acd92(89)+acd92(90)+acd92(91)+acd92(92)+acd92(9&
      &3)+acd92(94)+acd92(95)+acd92(96)+acd92(97)+acd92(98)+acd92(99)+acd92(100&
      &)+acd92(101)-2.0_ki*acd92(102)+acd92(103)+acd92(104)+acd92(105)+acd92(10&
      &6)+acd92(107)+acd92(108)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd92h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(86) :: acd92
      complex(ki) :: brack
      acd92(1)=d(iv1,iv2)
      acd92(2)=abb92(37)
      acd92(3)=k1(iv1)
      acd92(4)=k2(iv2)
      acd92(5)=abb92(53)
      acd92(6)=spvak7k2(iv2)
      acd92(7)=abb92(35)
      acd92(8)=spvak7l6(iv2)
      acd92(9)=abb92(13)
      acd92(10)=k1(iv2)
      acd92(11)=k2(iv1)
      acd92(12)=spvak7k2(iv1)
      acd92(13)=spvak7l6(iv1)
      acd92(14)=abb92(64)
      acd92(15)=k3(iv2)
      acd92(16)=abb92(71)
      acd92(17)=k4(iv2)
      acd92(18)=l5(iv2)
      acd92(19)=l6(iv2)
      acd92(20)=abb92(40)
      acd92(21)=abb92(20)
      acd92(22)=abb92(73)
      acd92(23)=spvak1k2(iv2)
      acd92(24)=abb92(22)
      acd92(25)=spvak1l6(iv2)
      acd92(26)=abb92(33)
      acd92(27)=spvak4k2(iv2)
      acd92(28)=abb92(24)
      acd92(29)=spvak4k3(iv2)
      acd92(30)=abb92(77)
      acd92(31)=spval5k2(iv2)
      acd92(32)=abb92(12)
      acd92(33)=spval5l6(iv2)
      acd92(34)=abb92(81)
      acd92(35)=spval6k2(iv2)
      acd92(36)=abb92(44)
      acd92(37)=k3(iv1)
      acd92(38)=k4(iv1)
      acd92(39)=l5(iv1)
      acd92(40)=l6(iv1)
      acd92(41)=spvak1k2(iv1)
      acd92(42)=spvak1l6(iv1)
      acd92(43)=spvak4k2(iv1)
      acd92(44)=spvak4k3(iv1)
      acd92(45)=spval5k2(iv1)
      acd92(46)=spval5l6(iv1)
      acd92(47)=spval6k2(iv1)
      acd92(48)=abb92(98)
      acd92(49)=abb92(31)
      acd92(50)=abb92(18)
      acd92(51)=abb92(54)
      acd92(52)=abb92(41)
      acd92(53)=abb92(38)
      acd92(54)=abb92(43)
      acd92(55)=abb92(83)
      acd92(56)=abb92(59)
      acd92(57)=spvak2l6(iv2)
      acd92(58)=abb92(36)
      acd92(59)=spvak2l6(iv1)
      acd92(60)=abb92(21)
      acd92(61)=abb92(46)
      acd92(62)=abb92(16)
      acd92(63)=abb92(42)
      acd92(64)=abb92(17)
      acd92(65)=abb92(32)
      acd92(66)=abb92(26)
      acd92(67)=abb92(25)
      acd92(68)=abb92(78)
      acd92(69)=abb92(76)
      acd92(70)=acd92(36)*acd92(47)
      acd92(71)=acd92(34)*acd92(46)
      acd92(72)=acd92(32)*acd92(45)
      acd92(73)=acd92(26)*acd92(42)
      acd92(74)=acd92(24)*acd92(41)
      acd92(70)=acd92(74)+acd92(73)+acd92(72)+acd92(70)+acd92(71)
      acd92(71)=acd92(37)+acd92(38)
      acd92(72)=acd92(16)*acd92(71)
      acd92(73)=acd92(13)*acd92(22)
      acd92(74)=acd92(3)-acd92(39)
      acd92(75)=-acd92(5)*acd92(74)
      acd92(76)=acd92(44)*acd92(30)
      acd92(77)=acd92(43)*acd92(28)
      acd92(78)=acd92(40)*acd92(20)
      acd92(79)=acd92(12)*acd92(21)
      acd92(80)=acd92(11)*acd92(14)
      acd92(72)=2.0_ki*acd92(80)+acd92(79)+acd92(78)+acd92(77)+acd92(76)+acd92(&
      &73)+acd92(75)+acd92(72)+acd92(70)
      acd92(72)=acd92(4)*acd92(72)
      acd92(73)=acd92(58)*acd92(57)
      acd92(75)=acd92(10)-acd92(18)
      acd92(76)=acd92(7)*acd92(75)
      acd92(77)=acd92(35)*acd92(56)
      acd92(78)=acd92(33)*acd92(55)
      acd92(79)=acd92(31)*acd92(54)
      acd92(80)=acd92(25)*acd92(53)
      acd92(81)=acd92(23)*acd92(52)
      acd92(82)=acd92(19)*acd92(49)
      acd92(73)=acd92(82)+acd92(81)+acd92(80)+acd92(79)+acd92(78)+acd92(77)+acd&
      &92(73)+acd92(76)
      acd92(73)=acd92(12)*acd92(73)
      acd92(76)=acd92(58)*acd92(59)
      acd92(77)=acd92(7)*acd92(74)
      acd92(78)=acd92(47)*acd92(56)
      acd92(79)=acd92(46)*acd92(55)
      acd92(80)=acd92(45)*acd92(54)
      acd92(81)=acd92(42)*acd92(53)
      acd92(82)=acd92(41)*acd92(52)
      acd92(83)=acd92(40)*acd92(49)
      acd92(76)=acd92(83)+acd92(82)+acd92(81)+acd92(80)+acd92(79)+acd92(78)+acd&
      &92(76)+acd92(77)
      acd92(76)=acd92(6)*acd92(76)
      acd92(77)=acd92(35)*acd92(36)
      acd92(78)=acd92(33)*acd92(34)
      acd92(79)=acd92(31)*acd92(32)
      acd92(80)=acd92(25)*acd92(26)
      acd92(81)=acd92(23)*acd92(24)
      acd92(77)=acd92(81)+acd92(80)+acd92(79)+acd92(77)+acd92(78)
      acd92(78)=acd92(15)+acd92(17)
      acd92(79)=acd92(16)*acd92(78)
      acd92(80)=acd92(8)*acd92(22)
      acd92(81)=-acd92(5)*acd92(75)
      acd92(82)=acd92(29)*acd92(30)
      acd92(83)=acd92(27)*acd92(28)
      acd92(84)=acd92(19)*acd92(20)
      acd92(85)=acd92(6)*acd92(21)
      acd92(79)=acd92(85)+acd92(84)+acd92(83)+acd92(82)+acd92(80)+acd92(81)+acd&
      &92(79)+acd92(77)
      acd92(79)=acd92(11)*acd92(79)
      acd92(80)=acd92(47)*acd92(69)
      acd92(81)=acd92(46)*acd92(68)
      acd92(82)=acd92(45)*acd92(67)
      acd92(83)=acd92(42)*acd92(63)
      acd92(84)=acd92(41)*acd92(61)
      acd92(85)=acd92(40)*acd92(51)
      acd92(80)=acd92(85)+acd92(84)+acd92(83)+acd92(82)+acd92(80)+acd92(81)
      acd92(80)=acd92(29)*acd92(80)
      acd92(81)=acd92(47)*acd92(66)
      acd92(82)=acd92(46)*acd92(65)
      acd92(83)=acd92(45)*acd92(64)
      acd92(84)=acd92(42)*acd92(62)
      acd92(85)=acd92(41)*acd92(60)
      acd92(86)=acd92(40)*acd92(50)
      acd92(81)=acd92(86)+acd92(85)+acd92(84)+acd92(83)+acd92(81)+acd92(82)
      acd92(81)=acd92(27)*acd92(81)
      acd92(82)=acd92(40)*acd92(48)
      acd92(70)=acd92(70)+acd92(82)
      acd92(70)=-acd92(70)*acd92(78)
      acd92(77)=-acd92(77)*acd92(71)
      acd92(78)=acd92(35)*acd92(69)
      acd92(82)=acd92(33)*acd92(68)
      acd92(83)=acd92(31)*acd92(67)
      acd92(84)=acd92(25)*acd92(63)
      acd92(85)=acd92(23)*acd92(61)
      acd92(78)=acd92(85)+acd92(84)+acd92(83)+acd92(78)+acd92(82)
      acd92(78)=acd92(44)*acd92(78)
      acd92(82)=acd92(35)*acd92(66)
      acd92(83)=acd92(33)*acd92(65)
      acd92(84)=acd92(31)*acd92(64)
      acd92(85)=acd92(25)*acd92(62)
      acd92(86)=acd92(23)*acd92(60)
      acd92(82)=acd92(86)+acd92(85)+acd92(84)+acd92(82)+acd92(83)
      acd92(82)=acd92(43)*acd92(82)
      acd92(71)=-acd92(48)*acd92(71)
      acd92(83)=acd92(9)*acd92(13)
      acd92(84)=acd92(44)*acd92(51)
      acd92(85)=acd92(43)*acd92(50)
      acd92(71)=acd92(85)+acd92(83)+acd92(84)+acd92(71)
      acd92(71)=acd92(19)*acd92(71)
      acd92(74)=acd92(40)-acd92(74)
      acd92(74)=acd92(8)*acd92(74)
      acd92(75)=-acd92(13)*acd92(75)
      acd92(74)=acd92(75)+acd92(74)
      acd92(74)=acd92(9)*acd92(74)
      acd92(75)=acd92(1)*acd92(2)
      brack=acd92(70)+acd92(71)+acd92(72)+acd92(73)+acd92(74)+2.0_ki*acd92(75)+&
      &acd92(76)+acd92(77)+acd92(78)+acd92(79)+acd92(80)+acd92(81)+acd92(82)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h6
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
!---#[ subroutine reconstruct_d92:
   subroutine     reconstruct_d92(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_92:
      coeffs%coeffs_92%c0 = derivative(czip)
      coeffs%coeffs_92%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_92%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_92%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_92%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_92%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_92%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_92%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_92%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_92%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_92%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_92%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_92%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_92%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_92%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_92:
   end subroutine reconstruct_d92
!---#] subroutine reconstruct_d92:
end module     p0_dbaru_epnebbbarg_d92h6l1d
