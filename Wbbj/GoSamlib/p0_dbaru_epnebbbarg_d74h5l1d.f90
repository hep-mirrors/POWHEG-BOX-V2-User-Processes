module     p0_dbaru_epnebbbarg_d74h5l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d74h5l1d.f90
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
   public :: derivative , reconstruct_d74
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd74h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd74
      complex(ki) :: brack
      acd74(1)=dotproduct(k1,qshift)
      acd74(2)=dotproduct(qshift,spvak4k2)
      acd74(3)=abb74(30)
      acd74(4)=dotproduct(qshift,spval6k2)
      acd74(5)=abb74(38)
      acd74(6)=dotproduct(qshift,spvak7k2)
      acd74(7)=abb74(46)
      acd74(8)=abb74(42)
      acd74(9)=dotproduct(k3,qshift)
      acd74(10)=dotproduct(k4,qshift)
      acd74(11)=dotproduct(qshift,qshift)
      acd74(12)=abb74(24)
      acd74(13)=abb74(35)
      acd74(14)=abb74(34)
      acd74(15)=dotproduct(qshift,spvak4k3)
      acd74(16)=abb74(31)
      acd74(17)=abb74(36)
      acd74(18)=abb74(18)
      acd74(19)=abb74(25)
      acd74(20)=dotproduct(qshift,spvak1k2)
      acd74(21)=abb74(19)
      acd74(22)=dotproduct(qshift,spvak1l6)
      acd74(23)=abb74(33)
      acd74(24)=abb74(9)
      acd74(25)=abb74(8)
      acd74(26)=abb74(32)
      acd74(27)=dotproduct(qshift,spvak7k1)
      acd74(28)=abb74(10)
      acd74(29)=dotproduct(qshift,spvak7k3)
      acd74(30)=abb74(41)
      acd74(31)=abb74(11)
      acd74(32)=abb74(27)
      acd74(33)=dotproduct(qshift,spvak1k7)
      acd74(34)=abb74(15)
      acd74(35)=abb74(37)
      acd74(36)=dotproduct(qshift,spval6k1)
      acd74(37)=dotproduct(qshift,spval6k3)
      acd74(38)=abb74(14)
      acd74(39)=abb74(13)
      acd74(40)=dotproduct(qshift,spvak3k2)
      acd74(41)=dotproduct(qshift,spval6l5)
      acd74(42)=abb74(28)
      acd74(43)=dotproduct(qshift,spvak7l5)
      acd74(44)=abb74(22)
      acd74(45)=abb74(29)
      acd74(46)=abb74(12)
      acd74(47)=abb74(43)
      acd74(48)=abb74(21)
      acd74(49)=abb74(17)
      acd74(50)=abb74(16)
      acd74(51)=abb74(20)
      acd74(52)=abb74(26)
      acd74(53)=abb74(23)
      acd74(54)=-acd74(23)*acd74(33)
      acd74(55)=-acd74(20)*acd74(32)
      acd74(54)=acd74(55)+acd74(34)+acd74(54)
      acd74(54)=acd74(6)*acd74(54)
      acd74(55)=-acd74(22)*acd74(23)
      acd74(56)=-acd74(20)*acd74(21)
      acd74(55)=acd74(56)+acd74(24)+acd74(55)
      acd74(55)=acd74(4)*acd74(55)
      acd74(56)=acd74(43)*acd74(44)
      acd74(57)=acd74(41)*acd74(42)
      acd74(58)=acd74(12)*acd74(40)
      acd74(59)=-acd74(11)*acd74(16)
      acd74(60)=acd74(20)*acd74(39)
      acd74(61)=acd74(2)*acd74(18)
      acd74(54)=acd74(55)+acd74(54)+acd74(61)+acd74(60)+acd74(59)+acd74(58)+acd&
      &74(57)-acd74(45)+acd74(56)
      acd74(54)=acd74(15)*acd74(54)
      acd74(55)=-acd74(10)+acd74(1)-acd74(9)
      acd74(56)=acd74(7)*acd74(55)
      acd74(57)=-acd74(30)*acd74(37)
      acd74(58)=-acd74(28)*acd74(36)
      acd74(59)=-acd74(26)*acd74(33)
      acd74(60)=-acd74(11)*acd74(14)
      acd74(61)=acd74(20)*acd74(35)
      acd74(56)=acd74(61)+acd74(60)+acd74(59)+acd74(58)-acd74(38)+acd74(57)+acd&
      &74(56)
      acd74(56)=acd74(6)*acd74(56)
      acd74(57)=-acd74(5)*acd74(55)
      acd74(58)=acd74(29)*acd74(30)
      acd74(59)=acd74(27)*acd74(28)
      acd74(60)=-acd74(22)*acd74(26)
      acd74(61)=-acd74(11)*acd74(13)
      acd74(62)=acd74(20)*acd74(25)
      acd74(57)=acd74(62)+acd74(61)+acd74(60)+acd74(59)-acd74(31)+acd74(58)+acd&
      &74(57)
      acd74(57)=acd74(4)*acd74(57)
      acd74(58)=acd74(3)*acd74(55)
      acd74(59)=acd74(11)*acd74(12)
      acd74(58)=acd74(59)-acd74(19)+acd74(58)
      acd74(58)=acd74(2)*acd74(58)
      acd74(55)=acd74(8)*acd74(55)
      acd74(59)=-acd74(43)*acd74(48)
      acd74(60)=-acd74(41)*acd74(47)
      acd74(61)=-acd74(37)*acd74(52)
      acd74(62)=-acd74(36)*acd74(49)
      acd74(63)=-acd74(29)*acd74(51)
      acd74(64)=-acd74(27)*acd74(50)
      acd74(65)=acd74(11)*acd74(17)
      acd74(66)=-acd74(20)*acd74(46)
      brack=acd74(53)+acd74(54)+acd74(55)+acd74(56)+acd74(57)+acd74(58)+acd74(5&
      &9)+acd74(60)+acd74(61)+acd74(62)+acd74(63)+acd74(64)+acd74(65)+acd74(66)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd74h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd74
      complex(ki) :: brack
      acd74(1)=k1(iv1)
      acd74(2)=dotproduct(qshift,spvak4k2)
      acd74(3)=abb74(30)
      acd74(4)=dotproduct(qshift,spval6k2)
      acd74(5)=abb74(38)
      acd74(6)=dotproduct(qshift,spvak7k2)
      acd74(7)=abb74(46)
      acd74(8)=abb74(42)
      acd74(9)=k3(iv1)
      acd74(10)=k4(iv1)
      acd74(11)=qshift(iv1)
      acd74(12)=abb74(24)
      acd74(13)=abb74(35)
      acd74(14)=abb74(34)
      acd74(15)=dotproduct(qshift,spvak4k3)
      acd74(16)=abb74(31)
      acd74(17)=abb74(36)
      acd74(18)=spvak4k2(iv1)
      acd74(19)=dotproduct(k1,qshift)
      acd74(20)=dotproduct(k3,qshift)
      acd74(21)=dotproduct(k4,qshift)
      acd74(22)=dotproduct(qshift,qshift)
      acd74(23)=abb74(18)
      acd74(24)=abb74(25)
      acd74(25)=spval6k2(iv1)
      acd74(26)=dotproduct(qshift,spvak1k2)
      acd74(27)=abb74(19)
      acd74(28)=dotproduct(qshift,spvak1l6)
      acd74(29)=abb74(33)
      acd74(30)=abb74(9)
      acd74(31)=abb74(8)
      acd74(32)=abb74(32)
      acd74(33)=dotproduct(qshift,spvak7k1)
      acd74(34)=abb74(10)
      acd74(35)=dotproduct(qshift,spvak7k3)
      acd74(36)=abb74(41)
      acd74(37)=abb74(11)
      acd74(38)=spvak7k2(iv1)
      acd74(39)=abb74(27)
      acd74(40)=dotproduct(qshift,spvak1k7)
      acd74(41)=abb74(15)
      acd74(42)=abb74(37)
      acd74(43)=dotproduct(qshift,spval6k1)
      acd74(44)=dotproduct(qshift,spval6k3)
      acd74(45)=abb74(14)
      acd74(46)=spvak4k3(iv1)
      acd74(47)=abb74(13)
      acd74(48)=dotproduct(qshift,spvak3k2)
      acd74(49)=dotproduct(qshift,spval6l5)
      acd74(50)=abb74(28)
      acd74(51)=dotproduct(qshift,spvak7l5)
      acd74(52)=abb74(22)
      acd74(53)=abb74(29)
      acd74(54)=spvak1k2(iv1)
      acd74(55)=abb74(12)
      acd74(56)=spvak1l6(iv1)
      acd74(57)=spvak1k7(iv1)
      acd74(58)=spvak3k2(iv1)
      acd74(59)=spval6l5(iv1)
      acd74(60)=abb74(43)
      acd74(61)=spvak7l5(iv1)
      acd74(62)=abb74(21)
      acd74(63)=spval6k1(iv1)
      acd74(64)=abb74(17)
      acd74(65)=spvak7k1(iv1)
      acd74(66)=abb74(16)
      acd74(67)=spvak7k3(iv1)
      acd74(68)=abb74(20)
      acd74(69)=spval6k3(iv1)
      acd74(70)=abb74(26)
      acd74(71)=acd74(29)*acd74(40)
      acd74(72)=acd74(26)*acd74(39)
      acd74(71)=acd74(71)+acd74(72)-acd74(41)
      acd74(72)=-acd74(38)*acd74(71)
      acd74(73)=acd74(29)*acd74(28)
      acd74(74)=acd74(26)*acd74(27)
      acd74(73)=-acd74(30)+acd74(73)+acd74(74)
      acd74(74)=-acd74(25)*acd74(73)
      acd74(75)=-acd74(54)*acd74(39)
      acd74(76)=-acd74(29)*acd74(57)
      acd74(75)=acd74(75)+acd74(76)
      acd74(75)=acd74(6)*acd74(75)
      acd74(76)=-acd74(54)*acd74(27)
      acd74(77)=-acd74(29)*acd74(56)
      acd74(76)=acd74(76)+acd74(77)
      acd74(76)=acd74(4)*acd74(76)
      acd74(77)=acd74(52)*acd74(61)
      acd74(78)=acd74(50)*acd74(59)
      acd74(79)=acd74(12)*acd74(58)
      acd74(80)=2.0_ki*acd74(11)
      acd74(81)=-acd74(16)*acd74(80)
      acd74(82)=acd74(54)*acd74(47)
      acd74(83)=acd74(18)*acd74(23)
      acd74(72)=acd74(76)+acd74(75)+acd74(74)+acd74(72)+acd74(83)+acd74(82)+acd&
      &74(81)+acd74(79)+acd74(77)+acd74(78)
      acd74(72)=acd74(15)*acd74(72)
      acd74(71)=-acd74(46)*acd74(71)
      acd74(74)=-acd74(36)*acd74(69)
      acd74(75)=-acd74(34)*acd74(63)
      acd74(76)=-acd74(32)*acd74(57)
      acd74(77)=-acd74(14)*acd74(80)
      acd74(78)=acd74(54)*acd74(42)
      acd74(79)=-acd74(10)+acd74(1)-acd74(9)
      acd74(81)=acd74(7)*acd74(79)
      acd74(71)=acd74(71)+acd74(81)+acd74(78)+acd74(77)+acd74(76)+acd74(74)+acd&
      &74(75)
      acd74(71)=acd74(6)*acd74(71)
      acd74(73)=-acd74(46)*acd74(73)
      acd74(74)=acd74(36)*acd74(67)
      acd74(75)=acd74(34)*acd74(65)
      acd74(76)=-acd74(32)*acd74(56)
      acd74(77)=-acd74(13)*acd74(80)
      acd74(78)=acd74(54)*acd74(31)
      acd74(81)=-acd74(5)*acd74(79)
      acd74(73)=acd74(73)+acd74(81)+acd74(78)+acd74(77)+acd74(76)+acd74(74)+acd&
      &74(75)
      acd74(73)=acd74(4)*acd74(73)
      acd74(74)=-acd74(36)*acd74(44)
      acd74(75)=-acd74(34)*acd74(43)
      acd74(76)=-acd74(32)*acd74(40)
      acd74(77)=-acd74(22)*acd74(14)
      acd74(78)=-acd74(21)+acd74(19)-acd74(20)
      acd74(81)=acd74(7)*acd74(78)
      acd74(82)=acd74(26)*acd74(42)
      acd74(74)=acd74(82)+acd74(81)+acd74(77)+acd74(76)+acd74(75)-acd74(45)+acd&
      &74(74)
      acd74(74)=acd74(38)*acd74(74)
      acd74(75)=acd74(36)*acd74(35)
      acd74(76)=acd74(34)*acd74(33)
      acd74(77)=-acd74(32)*acd74(28)
      acd74(81)=-acd74(22)*acd74(13)
      acd74(82)=-acd74(5)*acd74(78)
      acd74(83)=acd74(26)*acd74(31)
      acd74(75)=acd74(83)+acd74(82)+acd74(81)+acd74(77)+acd74(76)-acd74(37)+acd&
      &74(75)
      acd74(75)=acd74(25)*acd74(75)
      acd74(76)=acd74(52)*acd74(51)
      acd74(77)=acd74(50)*acd74(49)
      acd74(81)=-acd74(22)*acd74(16)
      acd74(82)=acd74(12)*acd74(48)
      acd74(83)=acd74(2)*acd74(23)
      acd74(84)=acd74(26)*acd74(47)
      acd74(76)=acd74(84)+acd74(83)+acd74(82)+acd74(81)+acd74(77)-acd74(53)+acd&
      &74(76)
      acd74(76)=acd74(46)*acd74(76)
      acd74(77)=acd74(2)*acd74(12)
      acd74(77)=acd74(77)+acd74(17)
      acd74(77)=acd74(80)*acd74(77)
      acd74(80)=acd74(2)*acd74(79)
      acd74(78)=acd74(18)*acd74(78)
      acd74(78)=acd74(80)+acd74(78)
      acd74(78)=acd74(3)*acd74(78)
      acd74(79)=acd74(8)*acd74(79)
      acd74(80)=-acd74(69)*acd74(70)
      acd74(81)=-acd74(67)*acd74(68)
      acd74(82)=-acd74(65)*acd74(66)
      acd74(83)=-acd74(63)*acd74(64)
      acd74(84)=-acd74(61)*acd74(62)
      acd74(85)=-acd74(59)*acd74(60)
      acd74(86)=-acd74(54)*acd74(55)
      acd74(87)=acd74(12)*acd74(22)
      acd74(87)=-acd74(24)+acd74(87)
      acd74(87)=acd74(18)*acd74(87)
      brack=acd74(71)+acd74(72)+acd74(73)+acd74(74)+acd74(75)+acd74(76)+acd74(7&
      &7)+acd74(78)+acd74(79)+acd74(80)+acd74(81)+acd74(82)+acd74(83)+acd74(84)&
      &+acd74(85)+acd74(86)+acd74(87)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd74h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(82) :: acd74
      complex(ki) :: brack
      acd74(1)=d(iv1,iv2)
      acd74(2)=dotproduct(qshift,spvak4k2)
      acd74(3)=abb74(24)
      acd74(4)=dotproduct(qshift,spvak4k3)
      acd74(5)=abb74(31)
      acd74(6)=dotproduct(qshift,spval6k2)
      acd74(7)=abb74(35)
      acd74(8)=dotproduct(qshift,spvak7k2)
      acd74(9)=abb74(34)
      acd74(10)=abb74(36)
      acd74(11)=k1(iv1)
      acd74(12)=spvak4k2(iv2)
      acd74(13)=abb74(30)
      acd74(14)=spval6k2(iv2)
      acd74(15)=abb74(38)
      acd74(16)=spvak7k2(iv2)
      acd74(17)=abb74(46)
      acd74(18)=k1(iv2)
      acd74(19)=spvak4k2(iv1)
      acd74(20)=spval6k2(iv1)
      acd74(21)=spvak7k2(iv1)
      acd74(22)=k3(iv1)
      acd74(23)=k3(iv2)
      acd74(24)=k4(iv1)
      acd74(25)=k4(iv2)
      acd74(26)=qshift(iv1)
      acd74(27)=spvak4k3(iv2)
      acd74(28)=qshift(iv2)
      acd74(29)=spvak4k3(iv1)
      acd74(30)=abb74(18)
      acd74(31)=dotproduct(qshift,spvak1k2)
      acd74(32)=abb74(19)
      acd74(33)=dotproduct(qshift,spvak1l6)
      acd74(34)=abb74(33)
      acd74(35)=abb74(9)
      acd74(36)=abb74(27)
      acd74(37)=dotproduct(qshift,spvak1k7)
      acd74(38)=abb74(15)
      acd74(39)=spvak1k2(iv2)
      acd74(40)=abb74(13)
      acd74(41)=spvak1l6(iv2)
      acd74(42)=spvak1k7(iv2)
      acd74(43)=spvak3k2(iv2)
      acd74(44)=spval6l5(iv2)
      acd74(45)=abb74(28)
      acd74(46)=spvak7l5(iv2)
      acd74(47)=abb74(22)
      acd74(48)=spvak1k2(iv1)
      acd74(49)=spvak1l6(iv1)
      acd74(50)=spvak1k7(iv1)
      acd74(51)=spvak3k2(iv1)
      acd74(52)=spval6l5(iv1)
      acd74(53)=spvak7l5(iv1)
      acd74(54)=abb74(8)
      acd74(55)=abb74(32)
      acd74(56)=spvak7k1(iv2)
      acd74(57)=abb74(10)
      acd74(58)=spvak7k3(iv2)
      acd74(59)=abb74(41)
      acd74(60)=spvak7k1(iv1)
      acd74(61)=spvak7k3(iv1)
      acd74(62)=abb74(37)
      acd74(63)=spval6k1(iv2)
      acd74(64)=spval6k3(iv2)
      acd74(65)=spval6k1(iv1)
      acd74(66)=spval6k3(iv1)
      acd74(67)=acd74(36)*acd74(8)
      acd74(68)=acd74(32)*acd74(6)
      acd74(67)=acd74(67)+acd74(68)-acd74(40)
      acd74(68)=-acd74(39)*acd74(67)
      acd74(69)=-acd74(8)*acd74(42)
      acd74(70)=-acd74(6)*acd74(41)
      acd74(69)=acd74(69)+acd74(70)
      acd74(69)=acd74(34)*acd74(69)
      acd74(70)=acd74(36)*acd74(31)
      acd74(71)=acd74(34)*acd74(37)
      acd74(70)=acd74(70)+acd74(71)-acd74(38)
      acd74(71)=-acd74(16)*acd74(70)
      acd74(72)=acd74(32)*acd74(31)
      acd74(73)=acd74(34)*acd74(33)
      acd74(72)=-acd74(35)+acd74(72)+acd74(73)
      acd74(73)=-acd74(14)*acd74(72)
      acd74(74)=acd74(47)*acd74(46)
      acd74(75)=acd74(45)*acd74(44)
      acd74(76)=2.0_ki*acd74(28)
      acd74(77)=-acd74(5)*acd74(76)
      acd74(78)=acd74(12)*acd74(30)
      acd74(79)=acd74(3)*acd74(43)
      acd74(68)=acd74(73)+acd74(71)+acd74(69)+acd74(68)+acd74(79)+acd74(78)+acd&
      &74(77)+acd74(74)+acd74(75)
      acd74(68)=acd74(29)*acd74(68)
      acd74(67)=-acd74(48)*acd74(67)
      acd74(69)=-acd74(8)*acd74(50)
      acd74(71)=-acd74(6)*acd74(49)
      acd74(69)=acd74(69)+acd74(71)
      acd74(69)=acd74(34)*acd74(69)
      acd74(70)=-acd74(21)*acd74(70)
      acd74(71)=-acd74(20)*acd74(72)
      acd74(72)=acd74(47)*acd74(53)
      acd74(73)=acd74(45)*acd74(52)
      acd74(74)=2.0_ki*acd74(26)
      acd74(75)=-acd74(5)*acd74(74)
      acd74(77)=acd74(19)*acd74(30)
      acd74(78)=acd74(3)*acd74(51)
      acd74(67)=acd74(71)+acd74(70)+acd74(69)+acd74(67)+acd74(78)+acd74(77)+acd&
      &74(75)+acd74(72)+acd74(73)
      acd74(67)=acd74(27)*acd74(67)
      acd74(69)=acd74(34)*acd74(4)
      acd74(69)=acd74(69)+acd74(55)
      acd74(70)=-acd74(42)*acd74(69)
      acd74(71)=-acd74(59)*acd74(64)
      acd74(72)=-acd74(57)*acd74(63)
      acd74(73)=-acd74(9)*acd74(76)
      acd74(75)=-acd74(25)+acd74(18)-acd74(23)
      acd74(77)=acd74(17)*acd74(75)
      acd74(78)=acd74(39)*acd74(62)
      acd74(79)=acd74(4)*acd74(39)
      acd74(80)=-acd74(36)*acd74(79)
      acd74(70)=acd74(80)+acd74(78)+acd74(77)+acd74(73)+acd74(71)+acd74(72)+acd&
      &74(70)
      acd74(70)=acd74(21)*acd74(70)
      acd74(71)=-acd74(41)*acd74(69)
      acd74(72)=acd74(59)*acd74(58)
      acd74(73)=acd74(57)*acd74(56)
      acd74(76)=-acd74(7)*acd74(76)
      acd74(77)=-acd74(15)*acd74(75)
      acd74(78)=acd74(39)*acd74(54)
      acd74(79)=-acd74(32)*acd74(79)
      acd74(71)=acd74(79)+acd74(78)+acd74(77)+acd74(76)+acd74(72)+acd74(73)+acd&
      &74(71)
      acd74(71)=acd74(20)*acd74(71)
      acd74(72)=-acd74(50)*acd74(69)
      acd74(73)=-acd74(59)*acd74(66)
      acd74(76)=-acd74(57)*acd74(65)
      acd74(77)=-acd74(9)*acd74(74)
      acd74(78)=-acd74(24)+acd74(11)-acd74(22)
      acd74(79)=acd74(17)*acd74(78)
      acd74(80)=acd74(48)*acd74(62)
      acd74(81)=acd74(4)*acd74(48)
      acd74(82)=-acd74(36)*acd74(81)
      acd74(72)=acd74(82)+acd74(80)+acd74(79)+acd74(77)+acd74(73)+acd74(76)+acd&
      &74(72)
      acd74(72)=acd74(16)*acd74(72)
      acd74(69)=-acd74(49)*acd74(69)
      acd74(73)=acd74(59)*acd74(61)
      acd74(76)=acd74(57)*acd74(60)
      acd74(74)=-acd74(7)*acd74(74)
      acd74(77)=-acd74(15)*acd74(78)
      acd74(79)=acd74(48)*acd74(54)
      acd74(80)=-acd74(32)*acd74(81)
      acd74(69)=acd74(80)+acd74(79)+acd74(77)+acd74(74)+acd74(73)+acd74(76)+acd&
      &74(69)
      acd74(69)=acd74(14)*acd74(69)
      acd74(73)=-acd74(8)*acd74(9)
      acd74(74)=-acd74(6)*acd74(7)
      acd74(76)=acd74(3)*acd74(2)
      acd74(73)=acd74(76)+acd74(74)+acd74(10)+acd74(73)
      acd74(73)=acd74(1)*acd74(73)
      acd74(74)=acd74(19)*acd74(28)
      acd74(76)=acd74(12)*acd74(26)
      acd74(74)=acd74(74)+acd74(76)
      acd74(74)=acd74(3)*acd74(74)
      acd74(73)=acd74(74)+acd74(73)
      acd74(74)=acd74(19)*acd74(75)
      acd74(75)=acd74(12)*acd74(78)
      acd74(74)=acd74(74)+acd74(75)
      acd74(74)=acd74(13)*acd74(74)
      acd74(75)=2.0_ki*acd74(5)
      acd74(75)=-acd74(4)*acd74(1)*acd74(75)
      brack=acd74(67)+acd74(68)+acd74(69)+acd74(70)+acd74(71)+acd74(72)+2.0_ki*&
      &acd74(73)+acd74(74)+acd74(75)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd74h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd74
      complex(ki) :: brack
      acd74(1)=d(iv1,iv2)
      acd74(2)=spvak4k2(iv3)
      acd74(3)=abb74(24)
      acd74(4)=spvak4k3(iv3)
      acd74(5)=abb74(31)
      acd74(6)=spval6k2(iv3)
      acd74(7)=abb74(35)
      acd74(8)=spvak7k2(iv3)
      acd74(9)=abb74(34)
      acd74(10)=d(iv1,iv3)
      acd74(11)=spvak4k2(iv2)
      acd74(12)=spvak4k3(iv2)
      acd74(13)=spval6k2(iv2)
      acd74(14)=spvak7k2(iv2)
      acd74(15)=d(iv2,iv3)
      acd74(16)=spvak4k2(iv1)
      acd74(17)=spvak4k3(iv1)
      acd74(18)=spval6k2(iv1)
      acd74(19)=spvak7k2(iv1)
      acd74(20)=spvak1k2(iv3)
      acd74(21)=abb74(19)
      acd74(22)=spvak1l6(iv3)
      acd74(23)=abb74(33)
      acd74(24)=spvak1k2(iv2)
      acd74(25)=spvak1l6(iv2)
      acd74(26)=abb74(27)
      acd74(27)=spvak1k7(iv3)
      acd74(28)=spvak1k7(iv2)
      acd74(29)=spvak1k2(iv1)
      acd74(30)=spvak1l6(iv1)
      acd74(31)=spvak1k7(iv1)
      acd74(32)=-acd74(14)*acd74(27)
      acd74(33)=-acd74(13)*acd74(22)
      acd74(34)=-acd74(8)*acd74(28)
      acd74(35)=-acd74(6)*acd74(25)
      acd74(32)=acd74(35)+acd74(34)+acd74(32)+acd74(33)
      acd74(32)=acd74(17)*acd74(32)
      acd74(33)=-acd74(19)*acd74(27)
      acd74(34)=-acd74(18)*acd74(22)
      acd74(35)=-acd74(8)*acd74(31)
      acd74(36)=-acd74(6)*acd74(30)
      acd74(33)=acd74(36)+acd74(35)+acd74(33)+acd74(34)
      acd74(33)=acd74(12)*acd74(33)
      acd74(34)=-acd74(19)*acd74(28)
      acd74(35)=-acd74(18)*acd74(25)
      acd74(36)=-acd74(14)*acd74(31)
      acd74(37)=-acd74(13)*acd74(30)
      acd74(34)=acd74(37)+acd74(36)+acd74(34)+acd74(35)
      acd74(34)=acd74(4)*acd74(34)
      acd74(32)=acd74(34)+acd74(32)+acd74(33)
      acd74(32)=acd74(23)*acd74(32)
      acd74(33)=acd74(3)*acd74(16)
      acd74(34)=-acd74(19)*acd74(9)
      acd74(35)=-acd74(18)*acd74(7)
      acd74(33)=acd74(35)+acd74(34)+acd74(33)
      acd74(33)=acd74(15)*acd74(33)
      acd74(34)=acd74(3)*acd74(11)
      acd74(35)=-acd74(14)*acd74(9)
      acd74(36)=-acd74(13)*acd74(7)
      acd74(34)=acd74(36)+acd74(35)+acd74(34)
      acd74(34)=acd74(10)*acd74(34)
      acd74(35)=acd74(3)*acd74(2)
      acd74(36)=-acd74(8)*acd74(9)
      acd74(37)=-acd74(6)*acd74(7)
      acd74(35)=acd74(37)+acd74(36)+acd74(35)
      acd74(35)=acd74(1)*acd74(35)
      acd74(33)=acd74(35)+acd74(34)+acd74(33)
      acd74(34)=-acd74(14)*acd74(20)
      acd74(35)=-acd74(8)*acd74(24)
      acd74(34)=acd74(34)+acd74(35)
      acd74(34)=acd74(26)*acd74(34)
      acd74(35)=-acd74(13)*acd74(20)
      acd74(36)=-acd74(6)*acd74(24)
      acd74(35)=acd74(35)+acd74(36)
      acd74(35)=acd74(21)*acd74(35)
      acd74(36)=2.0_ki*acd74(5)
      acd74(37)=-acd74(15)*acd74(36)
      acd74(34)=acd74(35)+acd74(37)+acd74(34)
      acd74(34)=acd74(17)*acd74(34)
      acd74(35)=-acd74(19)*acd74(20)
      acd74(37)=-acd74(8)*acd74(29)
      acd74(35)=acd74(35)+acd74(37)
      acd74(35)=acd74(26)*acd74(35)
      acd74(37)=-acd74(18)*acd74(20)
      acd74(38)=-acd74(6)*acd74(29)
      acd74(37)=acd74(37)+acd74(38)
      acd74(37)=acd74(21)*acd74(37)
      acd74(38)=-acd74(10)*acd74(36)
      acd74(35)=acd74(37)+acd74(38)+acd74(35)
      acd74(35)=acd74(12)*acd74(35)
      acd74(37)=-acd74(19)*acd74(24)
      acd74(38)=-acd74(14)*acd74(29)
      acd74(37)=acd74(37)+acd74(38)
      acd74(37)=acd74(26)*acd74(37)
      acd74(38)=-acd74(18)*acd74(24)
      acd74(39)=-acd74(13)*acd74(29)
      acd74(38)=acd74(38)+acd74(39)
      acd74(38)=acd74(21)*acd74(38)
      acd74(36)=-acd74(1)*acd74(36)
      acd74(36)=acd74(38)+acd74(36)+acd74(37)
      acd74(36)=acd74(4)*acd74(36)
      brack=acd74(32)+2.0_ki*acd74(33)+acd74(34)+acd74(35)+acd74(36)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd74h5
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
      qshift = -k7-k6-k5
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
!---#[ subroutine reconstruct_d74:
   subroutine     reconstruct_d74(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_74:
      coeffs%coeffs_74%c0 = derivative(czip)
      coeffs%coeffs_74%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_74%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_74%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_74%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_74%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_74%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_74%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_74%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_74%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_74%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_74%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_74%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_74%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_74%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_74%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_74%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_74%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_74%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_74%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_74%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_74%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_74%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_74%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_74%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_74%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_74%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_74%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_74%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_74%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_74%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_74%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_74%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_74%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_74%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_74:
   end subroutine reconstruct_d74
!---#] subroutine reconstruct_d74:
end module     p0_dbaru_epnebbbarg_d74h5l1d
