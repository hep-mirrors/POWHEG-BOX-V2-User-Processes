module     p0_dbaru_epnebbbarg_d315h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d315h4l1d.f90
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
   public :: derivative , reconstruct_d315
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd315h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd315
      complex(ki) :: brack
      acd315(1)=dotproduct(k1,qshift)
      acd315(2)=dotproduct(qshift,spvak7k2)
      acd315(3)=abb315(22)
      acd315(4)=abb315(34)
      acd315(5)=dotproduct(k2,qshift)
      acd315(6)=dotproduct(qshift,spvak1k2)
      acd315(7)=abb315(17)
      acd315(8)=dotproduct(qshift,spval6k2)
      acd315(9)=abb315(56)
      acd315(10)=abb315(36)
      acd315(11)=abb315(53)
      acd315(12)=abb315(54)
      acd315(13)=dotproduct(k3,qshift)
      acd315(14)=dotproduct(k4,qshift)
      acd315(15)=dotproduct(l6,qshift)
      acd315(16)=abb315(29)
      acd315(17)=dotproduct(qshift,qshift)
      acd315(18)=abb315(23)
      acd315(19)=dotproduct(qshift,spval5k2)
      acd315(20)=abb315(31)
      acd315(21)=abb315(24)
      acd315(22)=dotproduct(qshift,spvak4k2)
      acd315(23)=abb315(10)
      acd315(24)=dotproduct(qshift,spvak4k3)
      acd315(25)=abb315(16)
      acd315(26)=dotproduct(qshift,spval5k3)
      acd315(27)=abb315(47)
      acd315(28)=dotproduct(qshift,spval6k3)
      acd315(29)=abb315(46)
      acd315(30)=abb315(12)
      acd315(31)=abb315(33)
      acd315(32)=abb315(55)
      acd315(33)=dotproduct(qshift,spvak1k3)
      acd315(34)=abb315(21)
      acd315(35)=abb315(57)
      acd315(36)=abb315(15)
      acd315(37)=abb315(19)
      acd315(38)=abb315(49)
      acd315(39)=abb315(45)
      acd315(40)=abb315(40)
      acd315(41)=dotproduct(qshift,spvak1l6)
      acd315(42)=abb315(26)
      acd315(43)=abb315(11)
      acd315(44)=abb315(13)
      acd315(45)=abb315(25)
      acd315(46)=abb315(39)
      acd315(47)=abb315(30)
      acd315(48)=abb315(32)
      acd315(49)=abb315(52)
      acd315(50)=abb315(27)
      acd315(51)=abb315(14)
      acd315(52)=dotproduct(qshift,spval6k1)
      acd315(53)=abb315(38)
      acd315(54)=abb315(28)
      acd315(55)=-acd315(14)+acd315(5)-acd315(13)
      acd315(56)=-acd315(7)*acd315(55)
      acd315(57)=acd315(28)*acd315(29)
      acd315(58)=-acd315(26)*acd315(27)
      acd315(59)=-acd315(24)*acd315(25)
      acd315(60)=-acd315(22)*acd315(23)
      acd315(56)=acd315(60)+acd315(59)+acd315(58)+acd315(30)+acd315(57)+acd315(&
      &56)
      acd315(56)=acd315(6)*acd315(56)
      acd315(57)=-acd315(9)*acd315(55)
      acd315(58)=-acd315(33)*acd315(29)
      acd315(59)=-acd315(24)*acd315(32)
      acd315(60)=-acd315(22)*acd315(31)
      acd315(57)=acd315(60)+acd315(59)+acd315(34)+acd315(58)+acd315(57)
      acd315(57)=acd315(8)*acd315(57)
      acd315(58)=acd315(10)*acd315(55)
      acd315(59)=acd315(41)*acd315(42)
      acd315(60)=acd315(28)*acd315(39)
      acd315(61)=acd315(26)*acd315(38)
      acd315(62)=acd315(15)*acd315(16)
      acd315(63)=acd315(1)*acd315(3)
      acd315(64)=acd315(33)*acd315(40)
      acd315(65)=-acd315(17)*acd315(18)
      acd315(66)=acd315(33)*acd315(27)
      acd315(66)=acd315(35)+acd315(66)
      acd315(66)=acd315(19)*acd315(66)
      acd315(67)=acd315(24)*acd315(37)
      acd315(68)=acd315(22)*acd315(36)
      acd315(56)=acd315(56)+acd315(57)+acd315(68)+acd315(67)+acd315(66)+acd315(&
      &65)+acd315(64)+acd315(63)+acd315(62)+acd315(61)+acd315(60)-acd315(43)+ac&
      &d315(59)+acd315(58)
      acd315(56)=acd315(2)*acd315(56)
      acd315(57)=acd315(12)*acd315(55)
      acd315(58)=acd315(24)*acd315(48)
      acd315(59)=acd315(22)*acd315(47)
      acd315(57)=acd315(59)-acd315(49)+acd315(58)+acd315(57)
      acd315(57)=acd315(8)*acd315(57)
      acd315(55)=-acd315(11)*acd315(55)
      acd315(58)=acd315(24)*acd315(45)
      acd315(59)=acd315(22)*acd315(44)
      acd315(55)=acd315(59)-acd315(46)+acd315(58)+acd315(55)
      acd315(55)=acd315(6)*acd315(55)
      acd315(58)=-acd315(1)-acd315(15)
      acd315(58)=acd315(4)*acd315(58)
      acd315(59)=-acd315(52)*acd315(53)
      acd315(60)=-acd315(41)*acd315(51)
      acd315(61)=acd315(17)*acd315(21)
      acd315(62)=-acd315(17)*acd315(20)
      acd315(62)=-acd315(50)+acd315(62)
      acd315(62)=acd315(19)*acd315(62)
      brack=acd315(54)+acd315(55)+acd315(56)+acd315(57)+acd315(58)+acd315(59)+a&
      &cd315(60)+acd315(61)+acd315(62)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd315h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(90) :: acd315
      complex(ki) :: brack
      acd315(1)=k1(iv1)
      acd315(2)=dotproduct(qshift,spvak7k2)
      acd315(3)=abb315(22)
      acd315(4)=abb315(34)
      acd315(5)=k2(iv1)
      acd315(6)=dotproduct(qshift,spvak1k2)
      acd315(7)=abb315(17)
      acd315(8)=dotproduct(qshift,spval6k2)
      acd315(9)=abb315(56)
      acd315(10)=abb315(36)
      acd315(11)=abb315(53)
      acd315(12)=abb315(54)
      acd315(13)=k3(iv1)
      acd315(14)=k4(iv1)
      acd315(15)=l6(iv1)
      acd315(16)=abb315(29)
      acd315(17)=qshift(iv1)
      acd315(18)=abb315(23)
      acd315(19)=dotproduct(qshift,spval5k2)
      acd315(20)=abb315(31)
      acd315(21)=abb315(24)
      acd315(22)=spvak7k2(iv1)
      acd315(23)=dotproduct(k1,qshift)
      acd315(24)=dotproduct(k2,qshift)
      acd315(25)=dotproduct(k3,qshift)
      acd315(26)=dotproduct(k4,qshift)
      acd315(27)=dotproduct(l6,qshift)
      acd315(28)=dotproduct(qshift,qshift)
      acd315(29)=dotproduct(qshift,spvak4k2)
      acd315(30)=abb315(10)
      acd315(31)=dotproduct(qshift,spvak4k3)
      acd315(32)=abb315(16)
      acd315(33)=dotproduct(qshift,spval5k3)
      acd315(34)=abb315(47)
      acd315(35)=dotproduct(qshift,spval6k3)
      acd315(36)=abb315(46)
      acd315(37)=abb315(12)
      acd315(38)=abb315(33)
      acd315(39)=abb315(55)
      acd315(40)=dotproduct(qshift,spvak1k3)
      acd315(41)=abb315(21)
      acd315(42)=abb315(57)
      acd315(43)=abb315(15)
      acd315(44)=abb315(19)
      acd315(45)=abb315(49)
      acd315(46)=abb315(45)
      acd315(47)=abb315(40)
      acd315(48)=dotproduct(qshift,spvak1l6)
      acd315(49)=abb315(26)
      acd315(50)=abb315(11)
      acd315(51)=spvak1k2(iv1)
      acd315(52)=abb315(13)
      acd315(53)=abb315(25)
      acd315(54)=abb315(39)
      acd315(55)=spval6k2(iv1)
      acd315(56)=abb315(30)
      acd315(57)=abb315(32)
      acd315(58)=abb315(52)
      acd315(59)=spval5k2(iv1)
      acd315(60)=abb315(27)
      acd315(61)=spvak4k2(iv1)
      acd315(62)=spvak4k3(iv1)
      acd315(63)=spval5k3(iv1)
      acd315(64)=spval6k3(iv1)
      acd315(65)=spvak1k3(iv1)
      acd315(66)=spvak1l6(iv1)
      acd315(67)=abb315(14)
      acd315(68)=spval6k1(iv1)
      acd315(69)=abb315(38)
      acd315(70)=-acd315(26)+acd315(24)-acd315(25)
      acd315(71)=acd315(70)*acd315(7)
      acd315(72)=acd315(36)*acd315(35)
      acd315(73)=acd315(34)*acd315(33)
      acd315(74)=acd315(31)*acd315(32)
      acd315(75)=acd315(29)*acd315(30)
      acd315(71)=-acd315(37)+acd315(71)+acd315(73)-acd315(72)+acd315(74)+acd315&
      &(75)
      acd315(72)=-acd315(51)*acd315(71)
      acd315(73)=-acd315(62)*acd315(32)
      acd315(74)=-acd315(61)*acd315(30)
      acd315(75)=acd315(36)*acd315(64)
      acd315(76)=-acd315(34)*acd315(63)
      acd315(77)=-acd315(14)+acd315(5)-acd315(13)
      acd315(78)=-acd315(7)*acd315(77)
      acd315(73)=acd315(78)+acd315(76)+acd315(75)+acd315(73)+acd315(74)
      acd315(73)=acd315(6)*acd315(73)
      acd315(74)=acd315(70)*acd315(9)
      acd315(75)=acd315(36)*acd315(40)
      acd315(76)=acd315(31)*acd315(39)
      acd315(78)=acd315(29)*acd315(38)
      acd315(74)=-acd315(41)+acd315(74)+acd315(78)+acd315(75)+acd315(76)
      acd315(75)=-acd315(55)*acd315(74)
      acd315(76)=-acd315(62)*acd315(39)
      acd315(78)=-acd315(61)*acd315(38)
      acd315(79)=-acd315(36)*acd315(65)
      acd315(80)=-acd315(9)*acd315(77)
      acd315(76)=acd315(80)+acd315(79)+acd315(76)+acd315(78)
      acd315(76)=acd315(8)*acd315(76)
      acd315(78)=acd315(19)*acd315(65)
      acd315(79)=acd315(40)*acd315(59)
      acd315(78)=acd315(78)+acd315(79)
      acd315(78)=acd315(34)*acd315(78)
      acd315(79)=acd315(49)*acd315(66)
      acd315(80)=acd315(46)*acd315(64)
      acd315(81)=acd315(45)*acd315(63)
      acd315(82)=acd315(15)*acd315(16)
      acd315(83)=acd315(1)*acd315(3)
      acd315(84)=acd315(65)*acd315(47)
      acd315(85)=2.0_ki*acd315(17)
      acd315(86)=-acd315(18)*acd315(85)
      acd315(87)=acd315(59)*acd315(42)
      acd315(88)=acd315(62)*acd315(44)
      acd315(89)=acd315(61)*acd315(43)
      acd315(90)=acd315(10)*acd315(77)
      acd315(72)=acd315(73)+acd315(76)+acd315(72)+acd315(75)+acd315(90)+acd315(&
      &78)+acd315(89)+acd315(88)+acd315(87)+acd315(86)+acd315(84)+acd315(83)+ac&
      &d315(82)+acd315(81)+acd315(79)+acd315(80)
      acd315(72)=acd315(2)*acd315(72)
      acd315(71)=-acd315(6)*acd315(71)
      acd315(73)=-acd315(8)*acd315(74)
      acd315(74)=acd315(34)*acd315(19)
      acd315(74)=acd315(74)+acd315(47)
      acd315(74)=acd315(40)*acd315(74)
      acd315(75)=acd315(10)*acd315(70)
      acd315(76)=acd315(49)*acd315(48)
      acd315(78)=-acd315(18)*acd315(28)
      acd315(79)=acd315(16)*acd315(27)
      acd315(80)=acd315(3)*acd315(23)
      acd315(81)=acd315(35)*acd315(46)
      acd315(82)=acd315(33)*acd315(45)
      acd315(83)=acd315(19)*acd315(42)
      acd315(84)=acd315(31)*acd315(44)
      acd315(86)=acd315(29)*acd315(43)
      acd315(71)=acd315(71)+acd315(73)+acd315(86)+acd315(84)+acd315(83)+acd315(&
      &82)+acd315(81)+acd315(80)+acd315(79)+acd315(78)-acd315(50)+acd315(76)+ac&
      &d315(75)+acd315(74)
      acd315(71)=acd315(22)*acd315(71)
      acd315(73)=acd315(12)*acd315(70)
      acd315(74)=acd315(31)*acd315(57)
      acd315(75)=acd315(29)*acd315(56)
      acd315(73)=acd315(75)-acd315(58)+acd315(74)+acd315(73)
      acd315(73)=acd315(55)*acd315(73)
      acd315(70)=-acd315(11)*acd315(70)
      acd315(74)=acd315(31)*acd315(53)
      acd315(75)=acd315(29)*acd315(52)
      acd315(70)=acd315(75)-acd315(54)+acd315(74)+acd315(70)
      acd315(70)=acd315(51)*acd315(70)
      acd315(74)=acd315(62)*acd315(57)
      acd315(75)=acd315(61)*acd315(56)
      acd315(76)=acd315(12)*acd315(77)
      acd315(74)=acd315(76)+acd315(74)+acd315(75)
      acd315(74)=acd315(8)*acd315(74)
      acd315(75)=acd315(62)*acd315(53)
      acd315(76)=acd315(61)*acd315(52)
      acd315(77)=-acd315(11)*acd315(77)
      acd315(75)=acd315(77)+acd315(75)+acd315(76)
      acd315(75)=acd315(6)*acd315(75)
      acd315(76)=-acd315(19)*acd315(20)
      acd315(76)=acd315(76)+acd315(21)
      acd315(76)=acd315(85)*acd315(76)
      acd315(77)=-acd315(1)-acd315(15)
      acd315(77)=acd315(4)*acd315(77)
      acd315(78)=-acd315(68)*acd315(69)
      acd315(79)=-acd315(66)*acd315(67)
      acd315(80)=-acd315(20)*acd315(28)
      acd315(80)=-acd315(60)+acd315(80)
      acd315(80)=acd315(59)*acd315(80)
      brack=acd315(70)+acd315(71)+acd315(72)+acd315(73)+acd315(74)+acd315(75)+a&
      &cd315(76)+acd315(77)+acd315(78)+acd315(79)+acd315(80)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd315h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(99) :: acd315
      complex(ki) :: brack
      acd315(1)=d(iv1,iv2)
      acd315(2)=dotproduct(qshift,spval5k2)
      acd315(3)=abb315(31)
      acd315(4)=dotproduct(qshift,spvak7k2)
      acd315(5)=abb315(23)
      acd315(6)=abb315(24)
      acd315(7)=k1(iv1)
      acd315(8)=spvak7k2(iv2)
      acd315(9)=abb315(22)
      acd315(10)=k1(iv2)
      acd315(11)=spvak7k2(iv1)
      acd315(12)=k2(iv1)
      acd315(13)=dotproduct(qshift,spvak1k2)
      acd315(14)=abb315(17)
      acd315(15)=dotproduct(qshift,spval6k2)
      acd315(16)=abb315(56)
      acd315(17)=abb315(36)
      acd315(18)=spvak1k2(iv2)
      acd315(19)=abb315(53)
      acd315(20)=spval6k2(iv2)
      acd315(21)=abb315(54)
      acd315(22)=k2(iv2)
      acd315(23)=spvak1k2(iv1)
      acd315(24)=spval6k2(iv1)
      acd315(25)=k3(iv1)
      acd315(26)=k3(iv2)
      acd315(27)=k4(iv1)
      acd315(28)=k4(iv2)
      acd315(29)=l6(iv1)
      acd315(30)=abb315(29)
      acd315(31)=l6(iv2)
      acd315(32)=qshift(iv1)
      acd315(33)=spval5k2(iv2)
      acd315(34)=qshift(iv2)
      acd315(35)=spval5k2(iv1)
      acd315(36)=dotproduct(qshift,spvak1k3)
      acd315(37)=abb315(47)
      acd315(38)=abb315(57)
      acd315(39)=spvak1k3(iv2)
      acd315(40)=spvak1k3(iv1)
      acd315(41)=dotproduct(k2,qshift)
      acd315(42)=dotproduct(k3,qshift)
      acd315(43)=dotproduct(k4,qshift)
      acd315(44)=dotproduct(qshift,spvak4k2)
      acd315(45)=abb315(10)
      acd315(46)=dotproduct(qshift,spvak4k3)
      acd315(47)=abb315(16)
      acd315(48)=dotproduct(qshift,spval5k3)
      acd315(49)=dotproduct(qshift,spval6k3)
      acd315(50)=abb315(46)
      acd315(51)=abb315(12)
      acd315(52)=abb315(33)
      acd315(53)=abb315(55)
      acd315(54)=abb315(21)
      acd315(55)=spvak4k2(iv2)
      acd315(56)=abb315(15)
      acd315(57)=spvak4k3(iv2)
      acd315(58)=abb315(19)
      acd315(59)=spval5k3(iv2)
      acd315(60)=abb315(49)
      acd315(61)=spval6k3(iv2)
      acd315(62)=abb315(45)
      acd315(63)=abb315(40)
      acd315(64)=spvak1l6(iv2)
      acd315(65)=abb315(26)
      acd315(66)=spvak4k2(iv1)
      acd315(67)=spvak4k3(iv1)
      acd315(68)=spval5k3(iv1)
      acd315(69)=spval6k3(iv1)
      acd315(70)=spvak1l6(iv1)
      acd315(71)=abb315(13)
      acd315(72)=abb315(25)
      acd315(73)=abb315(30)
      acd315(74)=abb315(32)
      acd315(75)=acd315(47)*acd315(46)
      acd315(76)=acd315(45)*acd315(44)
      acd315(77)=acd315(50)*acd315(49)
      acd315(78)=acd315(37)*acd315(48)
      acd315(79)=-acd315(43)+acd315(41)-acd315(42)
      acd315(80)=acd315(79)*acd315(14)
      acd315(75)=-acd315(51)+acd315(75)+acd315(78)+acd315(80)+acd315(76)-acd315&
      &(77)
      acd315(76)=-acd315(18)*acd315(75)
      acd315(77)=acd315(57)*acd315(47)
      acd315(78)=acd315(55)*acd315(45)
      acd315(80)=acd315(50)*acd315(61)
      acd315(81)=acd315(37)*acd315(59)
      acd315(77)=-acd315(78)-acd315(77)+acd315(80)-acd315(81)
      acd315(78)=acd315(13)*acd315(77)
      acd315(80)=acd315(57)*acd315(53)
      acd315(81)=acd315(55)*acd315(52)
      acd315(82)=acd315(50)*acd315(39)
      acd315(80)=acd315(82)+acd315(80)+acd315(81)
      acd315(81)=-acd315(15)*acd315(80)
      acd315(82)=acd315(53)*acd315(46)
      acd315(83)=acd315(52)*acd315(44)
      acd315(84)=acd315(50)*acd315(36)
      acd315(82)=acd315(83)+acd315(82)+acd315(84)-acd315(54)
      acd315(83)=-acd315(20)*acd315(82)
      acd315(84)=acd315(14)*acd315(13)
      acd315(84)=acd315(84)-acd315(17)
      acd315(85)=-acd315(28)+acd315(22)-acd315(26)
      acd315(86)=-acd315(85)*acd315(84)
      acd315(87)=acd315(33)*acd315(36)
      acd315(88)=acd315(39)*acd315(2)
      acd315(87)=acd315(87)+acd315(88)
      acd315(87)=acd315(37)*acd315(87)
      acd315(88)=-acd315(15)*acd315(85)
      acd315(89)=-acd315(20)*acd315(79)
      acd315(88)=acd315(88)+acd315(89)
      acd315(88)=acd315(16)*acd315(88)
      acd315(89)=acd315(65)*acd315(64)
      acd315(90)=acd315(30)*acd315(31)
      acd315(91)=acd315(9)*acd315(10)
      acd315(92)=acd315(61)*acd315(62)
      acd315(93)=acd315(59)*acd315(60)
      acd315(94)=2.0_ki*acd315(5)
      acd315(95)=-acd315(34)*acd315(94)
      acd315(96)=acd315(33)*acd315(38)
      acd315(97)=acd315(39)*acd315(63)
      acd315(98)=acd315(57)*acd315(58)
      acd315(99)=acd315(55)*acd315(56)
      acd315(76)=acd315(76)+acd315(88)+acd315(83)+acd315(78)+acd315(81)+acd315(&
      &87)+acd315(99)+acd315(98)+acd315(97)+acd315(96)+acd315(95)+acd315(93)+ac&
      &d315(92)+acd315(91)+acd315(89)+acd315(90)+acd315(86)
      acd315(76)=acd315(11)*acd315(76)
      acd315(75)=-acd315(23)*acd315(75)
      acd315(78)=acd315(67)*acd315(47)
      acd315(81)=acd315(66)*acd315(45)
      acd315(83)=acd315(50)*acd315(69)
      acd315(86)=acd315(37)*acd315(68)
      acd315(78)=-acd315(78)-acd315(81)+acd315(83)-acd315(86)
      acd315(81)=acd315(13)*acd315(78)
      acd315(83)=acd315(67)*acd315(53)
      acd315(86)=acd315(66)*acd315(52)
      acd315(87)=acd315(50)*acd315(40)
      acd315(83)=acd315(87)+acd315(83)+acd315(86)
      acd315(86)=-acd315(15)*acd315(83)
      acd315(82)=-acd315(24)*acd315(82)
      acd315(87)=-acd315(27)+acd315(12)-acd315(25)
      acd315(84)=-acd315(87)*acd315(84)
      acd315(88)=acd315(35)*acd315(36)
      acd315(89)=acd315(40)*acd315(2)
      acd315(88)=acd315(88)+acd315(89)
      acd315(88)=acd315(37)*acd315(88)
      acd315(89)=-acd315(15)*acd315(87)
      acd315(79)=-acd315(24)*acd315(79)
      acd315(79)=acd315(89)+acd315(79)
      acd315(79)=acd315(16)*acd315(79)
      acd315(89)=acd315(65)*acd315(70)
      acd315(90)=acd315(30)*acd315(29)
      acd315(91)=acd315(9)*acd315(7)
      acd315(92)=acd315(69)*acd315(62)
      acd315(93)=acd315(68)*acd315(60)
      acd315(95)=-acd315(32)*acd315(94)
      acd315(96)=acd315(35)*acd315(38)
      acd315(97)=acd315(40)*acd315(63)
      acd315(98)=acd315(67)*acd315(58)
      acd315(99)=acd315(66)*acd315(56)
      acd315(75)=acd315(75)+acd315(79)+acd315(82)+acd315(81)+acd315(86)+acd315(&
      &88)+acd315(99)+acd315(98)+acd315(97)+acd315(96)+acd315(95)+acd315(93)+ac&
      &d315(92)+acd315(91)+acd315(89)+acd315(90)+acd315(84)
      acd315(75)=acd315(8)*acd315(75)
      acd315(79)=-acd315(14)*acd315(85)
      acd315(77)=acd315(79)+acd315(77)
      acd315(77)=acd315(23)*acd315(77)
      acd315(79)=-acd315(14)*acd315(87)
      acd315(78)=acd315(79)+acd315(78)
      acd315(78)=acd315(18)*acd315(78)
      acd315(79)=-acd315(24)*acd315(80)
      acd315(80)=-acd315(20)*acd315(83)
      acd315(81)=acd315(40)*acd315(33)
      acd315(82)=acd315(39)*acd315(35)
      acd315(81)=acd315(81)+acd315(82)
      acd315(81)=acd315(37)*acd315(81)
      acd315(82)=-acd315(24)*acd315(85)
      acd315(83)=-acd315(20)*acd315(87)
      acd315(82)=acd315(82)+acd315(83)
      acd315(82)=acd315(16)*acd315(82)
      acd315(83)=-acd315(1)*acd315(94)
      acd315(77)=acd315(78)+acd315(77)+acd315(82)+acd315(80)+acd315(79)+acd315(&
      &83)+acd315(81)
      acd315(77)=acd315(4)*acd315(77)
      acd315(78)=acd315(21)*acd315(85)
      acd315(79)=acd315(57)*acd315(74)
      acd315(80)=acd315(55)*acd315(73)
      acd315(78)=acd315(79)+acd315(80)+acd315(78)
      acd315(78)=acd315(24)*acd315(78)
      acd315(79)=acd315(21)*acd315(87)
      acd315(80)=acd315(67)*acd315(74)
      acd315(81)=acd315(66)*acd315(73)
      acd315(79)=acd315(80)+acd315(81)+acd315(79)
      acd315(79)=acd315(20)*acd315(79)
      acd315(80)=-acd315(19)*acd315(85)
      acd315(81)=acd315(57)*acd315(72)
      acd315(82)=acd315(55)*acd315(71)
      acd315(80)=acd315(81)+acd315(82)+acd315(80)
      acd315(80)=acd315(23)*acd315(80)
      acd315(81)=-acd315(19)*acd315(87)
      acd315(82)=acd315(67)*acd315(72)
      acd315(83)=acd315(66)*acd315(71)
      acd315(81)=acd315(82)+acd315(83)+acd315(81)
      acd315(81)=acd315(18)*acd315(81)
      acd315(82)=-acd315(35)*acd315(34)
      acd315(83)=-acd315(33)*acd315(32)
      acd315(82)=acd315(83)+acd315(82)
      acd315(82)=acd315(3)*acd315(82)
      acd315(83)=-acd315(2)*acd315(3)
      acd315(83)=acd315(6)+acd315(83)
      acd315(83)=acd315(1)*acd315(83)
      acd315(82)=acd315(83)+acd315(82)
      brack=acd315(75)+acd315(76)+acd315(77)+acd315(78)+acd315(79)+acd315(80)+a&
      &cd315(81)+2.0_ki*acd315(82)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd315h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd315
      complex(ki) :: brack
      acd315(1)=d(iv1,iv2)
      acd315(2)=spval5k2(iv3)
      acd315(3)=abb315(31)
      acd315(4)=spvak7k2(iv3)
      acd315(5)=abb315(23)
      acd315(6)=d(iv1,iv3)
      acd315(7)=spval5k2(iv2)
      acd315(8)=spvak7k2(iv2)
      acd315(9)=d(iv2,iv3)
      acd315(10)=spval5k2(iv1)
      acd315(11)=spvak7k2(iv1)
      acd315(12)=k2(iv1)
      acd315(13)=spvak1k2(iv3)
      acd315(14)=abb315(17)
      acd315(15)=spval6k2(iv3)
      acd315(16)=abb315(56)
      acd315(17)=spvak1k2(iv2)
      acd315(18)=spval6k2(iv2)
      acd315(19)=k2(iv2)
      acd315(20)=spvak1k2(iv1)
      acd315(21)=spval6k2(iv1)
      acd315(22)=k2(iv3)
      acd315(23)=k3(iv1)
      acd315(24)=k3(iv2)
      acd315(25)=k3(iv3)
      acd315(26)=k4(iv1)
      acd315(27)=k4(iv2)
      acd315(28)=k4(iv3)
      acd315(29)=spvak1k3(iv3)
      acd315(30)=abb315(47)
      acd315(31)=spvak1k3(iv2)
      acd315(32)=spvak1k3(iv1)
      acd315(33)=spvak4k2(iv3)
      acd315(34)=abb315(10)
      acd315(35)=spvak4k3(iv3)
      acd315(36)=abb315(16)
      acd315(37)=spval5k3(iv3)
      acd315(38)=spval6k3(iv3)
      acd315(39)=abb315(46)
      acd315(40)=spvak4k2(iv2)
      acd315(41)=spvak4k3(iv2)
      acd315(42)=spval5k3(iv2)
      acd315(43)=spval6k3(iv2)
      acd315(44)=abb315(33)
      acd315(45)=abb315(55)
      acd315(46)=spvak4k2(iv1)
      acd315(47)=spvak4k3(iv1)
      acd315(48)=spval5k3(iv1)
      acd315(49)=spval6k3(iv1)
      acd315(50)=acd315(36)*acd315(35)
      acd315(51)=acd315(34)*acd315(33)
      acd315(52)=acd315(39)*acd315(38)
      acd315(53)=acd315(30)*acd315(37)
      acd315(50)=-acd315(51)-acd315(50)+acd315(52)-acd315(53)
      acd315(51)=acd315(17)*acd315(50)
      acd315(52)=acd315(36)*acd315(41)
      acd315(53)=acd315(34)*acd315(40)
      acd315(54)=acd315(39)*acd315(43)
      acd315(55)=acd315(30)*acd315(42)
      acd315(52)=-acd315(52)-acd315(53)+acd315(54)-acd315(55)
      acd315(53)=acd315(13)*acd315(52)
      acd315(54)=acd315(45)*acd315(35)
      acd315(55)=acd315(44)*acd315(33)
      acd315(56)=acd315(39)*acd315(29)
      acd315(54)=acd315(56)+acd315(54)+acd315(55)
      acd315(55)=-acd315(18)*acd315(54)
      acd315(56)=acd315(45)*acd315(41)
      acd315(57)=acd315(44)*acd315(40)
      acd315(58)=acd315(39)*acd315(31)
      acd315(56)=acd315(58)+acd315(56)+acd315(57)
      acd315(57)=-acd315(15)*acd315(56)
      acd315(58)=acd315(31)*acd315(2)
      acd315(59)=acd315(29)*acd315(7)
      acd315(58)=acd315(58)+acd315(59)
      acd315(58)=acd315(30)*acd315(58)
      acd315(59)=-acd315(28)+acd315(22)-acd315(25)
      acd315(60)=-acd315(18)*acd315(59)
      acd315(61)=-acd315(27)+acd315(19)-acd315(24)
      acd315(62)=-acd315(15)*acd315(61)
      acd315(60)=acd315(60)+acd315(62)
      acd315(60)=acd315(16)*acd315(60)
      acd315(62)=-acd315(17)*acd315(59)
      acd315(63)=-acd315(13)*acd315(61)
      acd315(62)=acd315(62)+acd315(63)
      acd315(62)=acd315(14)*acd315(62)
      acd315(63)=2.0_ki*acd315(5)
      acd315(64)=-acd315(9)*acd315(63)
      acd315(51)=acd315(62)+acd315(60)+acd315(53)+acd315(51)+acd315(57)+acd315(&
      &55)+acd315(64)+acd315(58)
      acd315(51)=acd315(11)*acd315(51)
      acd315(50)=acd315(20)*acd315(50)
      acd315(53)=acd315(36)*acd315(47)
      acd315(55)=acd315(34)*acd315(46)
      acd315(57)=acd315(39)*acd315(49)
      acd315(58)=acd315(30)*acd315(48)
      acd315(53)=-acd315(53)-acd315(55)+acd315(57)-acd315(58)
      acd315(55)=acd315(13)*acd315(53)
      acd315(54)=-acd315(21)*acd315(54)
      acd315(57)=acd315(45)*acd315(47)
      acd315(58)=acd315(44)*acd315(46)
      acd315(60)=acd315(39)*acd315(32)
      acd315(57)=acd315(60)+acd315(57)+acd315(58)
      acd315(58)=-acd315(15)*acd315(57)
      acd315(60)=acd315(32)*acd315(2)
      acd315(62)=acd315(29)*acd315(10)
      acd315(60)=acd315(60)+acd315(62)
      acd315(60)=acd315(30)*acd315(60)
      acd315(62)=-acd315(21)*acd315(59)
      acd315(64)=-acd315(26)+acd315(12)-acd315(23)
      acd315(65)=-acd315(15)*acd315(64)
      acd315(62)=acd315(62)+acd315(65)
      acd315(62)=acd315(16)*acd315(62)
      acd315(59)=-acd315(20)*acd315(59)
      acd315(65)=-acd315(13)*acd315(64)
      acd315(59)=acd315(59)+acd315(65)
      acd315(59)=acd315(14)*acd315(59)
      acd315(65)=-acd315(6)*acd315(63)
      acd315(50)=acd315(59)+acd315(62)+acd315(55)+acd315(50)+acd315(58)+acd315(&
      &54)+acd315(65)+acd315(60)
      acd315(50)=acd315(8)*acd315(50)
      acd315(52)=acd315(20)*acd315(52)
      acd315(53)=acd315(17)*acd315(53)
      acd315(54)=-acd315(21)*acd315(56)
      acd315(55)=-acd315(18)*acd315(57)
      acd315(56)=acd315(32)*acd315(7)
      acd315(57)=acd315(31)*acd315(10)
      acd315(56)=acd315(56)+acd315(57)
      acd315(56)=acd315(30)*acd315(56)
      acd315(57)=-acd315(21)*acd315(61)
      acd315(58)=-acd315(18)*acd315(64)
      acd315(57)=acd315(57)+acd315(58)
      acd315(57)=acd315(16)*acd315(57)
      acd315(58)=-acd315(20)*acd315(61)
      acd315(59)=-acd315(17)*acd315(64)
      acd315(58)=acd315(58)+acd315(59)
      acd315(58)=acd315(14)*acd315(58)
      acd315(59)=-acd315(1)*acd315(63)
      acd315(52)=acd315(58)+acd315(57)+acd315(53)+acd315(52)+acd315(55)+acd315(&
      &54)+acd315(59)+acd315(56)
      acd315(52)=acd315(4)*acd315(52)
      acd315(53)=-acd315(10)*acd315(9)
      acd315(54)=-acd315(7)*acd315(6)
      acd315(55)=-acd315(2)*acd315(1)
      acd315(53)=acd315(55)+acd315(53)+acd315(54)
      acd315(53)=acd315(3)*acd315(53)
      brack=acd315(50)+acd315(51)+acd315(52)+2.0_ki*acd315(53)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd315h4
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
      qshift = -k7-k5
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
!---#[ subroutine reconstruct_d315:
   subroutine     reconstruct_d315(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_315:
      coeffs%coeffs_315%c0 = derivative(czip)
      coeffs%coeffs_315%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_315%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_315%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_315%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_315%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_315%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_315%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_315%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_315%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_315%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_315%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_315%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_315%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_315%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_315%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_315%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_315%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_315%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_315%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_315%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_315%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_315%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_315%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_315%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_315%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_315%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_315%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_315%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_315%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_315%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_315%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_315%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_315%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_315%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_315:
   end subroutine reconstruct_d315
!---#] subroutine reconstruct_d315:
end module     p0_dbaru_epnebbbarg_d315h4l1d
