module     p0_dbaru_epnebbbarg_d83h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d83h4l1d.f90
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
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d83
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd83
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd83
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd83
      complex(ki) :: brack
      acd83(1)=d(iv1,iv2)
      acd83(2)=abb83(18)
      acd83(3)=k1(iv1)
      acd83(4)=spvak7k2(iv2)
      acd83(5)=abb83(14)
      acd83(6)=k1(iv2)
      acd83(7)=spvak7k2(iv1)
      acd83(8)=k7(iv1)
      acd83(9)=abb83(23)
      acd83(10)=spvak4k2(iv2)
      acd83(11)=abb83(22)
      acd83(12)=k7(iv2)
      acd83(13)=spvak4k2(iv1)
      acd83(14)=abb83(28)
      acd83(15)=abb83(13)
      acd83(16)=spvak1k2(iv2)
      acd83(17)=abb83(9)
      acd83(18)=spvak3k2(iv2)
      acd83(19)=abb83(21)
      acd83(20)=spvak1k2(iv1)
      acd83(21)=spvak3k2(iv1)
      acd83(22)=acd83(19)*acd83(21)
      acd83(23)=acd83(17)*acd83(20)
      acd83(24)=acd83(13)*acd83(15)
      acd83(25)=acd83(8)*acd83(9)
      acd83(26)=acd83(5)*acd83(3)
      acd83(27)=acd83(7)*acd83(14)
      acd83(22)=2.0_ki*acd83(27)+acd83(26)+acd83(25)+acd83(24)+acd83(22)+acd83(&
      &23)
      acd83(22)=acd83(4)*acd83(22)
      acd83(23)=acd83(19)*acd83(18)
      acd83(24)=acd83(17)*acd83(16)
      acd83(25)=acd83(10)*acd83(15)
      acd83(26)=acd83(9)*acd83(12)
      acd83(27)=acd83(5)*acd83(6)
      acd83(23)=acd83(27)+acd83(26)+acd83(25)+acd83(23)+acd83(24)
      acd83(23)=acd83(7)*acd83(23)
      acd83(24)=acd83(12)*acd83(13)
      acd83(25)=acd83(8)*acd83(10)
      acd83(24)=acd83(25)+acd83(24)
      acd83(24)=acd83(11)*acd83(24)
      acd83(25)=acd83(1)*acd83(2)
      brack=acd83(22)+acd83(23)+acd83(24)+2.0_ki*acd83(25)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(86) :: acd83
      complex(ki) :: brack
      acd83(1)=d(iv1,iv2)
      acd83(2)=spvak4k2(iv3)
      acd83(3)=abb83(17)
      acd83(4)=spval5k2(iv3)
      acd83(5)=abb83(30)
      acd83(6)=spval6k2(iv3)
      acd83(7)=abb83(31)
      acd83(8)=spvak7k2(iv3)
      acd83(9)=abb83(24)
      acd83(10)=d(iv1,iv3)
      acd83(11)=spvak4k2(iv2)
      acd83(12)=spval5k2(iv2)
      acd83(13)=spval6k2(iv2)
      acd83(14)=spvak7k2(iv2)
      acd83(15)=d(iv2,iv3)
      acd83(16)=spvak4k2(iv1)
      acd83(17)=spval5k2(iv1)
      acd83(18)=spval6k2(iv1)
      acd83(19)=spvak7k2(iv1)
      acd83(20)=k3(iv1)
      acd83(21)=abb83(36)
      acd83(22)=abb83(34)
      acd83(23)=abb83(35)
      acd83(24)=spvak1k2(iv3)
      acd83(25)=abb83(49)
      acd83(26)=spvak1k2(iv2)
      acd83(27)=k3(iv2)
      acd83(28)=spvak1k2(iv1)
      acd83(29)=k3(iv3)
      acd83(30)=k4(iv1)
      acd83(31)=k4(iv2)
      acd83(32)=k4(iv3)
      acd83(33)=k7(iv1)
      acd83(34)=abb83(40)
      acd83(35)=abb83(42)
      acd83(36)=abb83(32)
      acd83(37)=abb83(33)
      acd83(38)=k7(iv2)
      acd83(39)=k7(iv3)
      acd83(40)=abb83(41)
      acd83(41)=abb83(44)
      acd83(42)=spvak4k3(iv3)
      acd83(43)=abb83(46)
      acd83(44)=spvak4k3(iv2)
      acd83(45)=spvak4k3(iv1)
      acd83(46)=abb83(16)
      acd83(47)=abb83(38)
      acd83(48)=spvak1k3(iv3)
      acd83(49)=abb83(15)
      acd83(50)=spvak1k7(iv3)
      acd83(51)=abb83(47)
      acd83(52)=spvak1k3(iv2)
      acd83(53)=spvak1k7(iv2)
      acd83(54)=spvak1k3(iv1)
      acd83(55)=spvak1k7(iv1)
      acd83(56)=abb83(37)
      acd83(57)=abb83(39)
      acd83(58)=abb83(11)
      acd83(59)=abb83(48)
      acd83(60)=abb83(27)
      acd83(61)=abb83(10)
      acd83(62)=spvak3k2(iv3)
      acd83(63)=abb83(20)
      acd83(64)=spvak3k2(iv2)
      acd83(65)=spvak3k2(iv1)
      acd83(66)=acd83(59)*acd83(53)
      acd83(67)=acd83(58)*acd83(52)
      acd83(68)=acd83(44)*acd83(57)
      acd83(69)=acd83(38)*acd83(37)
      acd83(70)=acd83(11)*acd83(41)
      acd83(71)=acd83(27)+acd83(31)
      acd83(72)=acd83(71)*acd83(23)
      acd83(66)=acd83(69)+acd83(66)+acd83(70)-acd83(72)+acd83(67)+acd83(68)
      acd83(67)=acd83(18)*acd83(66)
      acd83(68)=acd83(51)*acd83(53)
      acd83(69)=acd83(49)*acd83(52)
      acd83(70)=acd83(44)*acd83(47)
      acd83(72)=acd83(38)*acd83(36)
      acd83(73)=acd83(11)*acd83(40)
      acd83(74)=acd83(71)*acd83(22)
      acd83(68)=acd83(72)+acd83(68)+acd83(73)-acd83(74)+acd83(69)+acd83(70)
      acd83(69)=acd83(17)*acd83(68)
      acd83(70)=acd83(59)*acd83(55)
      acd83(72)=acd83(58)*acd83(54)
      acd83(73)=acd83(45)*acd83(57)
      acd83(74)=acd83(33)*acd83(37)
      acd83(75)=acd83(16)*acd83(41)
      acd83(76)=acd83(20)+acd83(30)
      acd83(77)=acd83(76)*acd83(23)
      acd83(70)=acd83(70)+acd83(72)+acd83(73)+acd83(74)+acd83(75)-acd83(77)
      acd83(72)=acd83(13)*acd83(70)
      acd83(73)=acd83(51)*acd83(55)
      acd83(74)=acd83(49)*acd83(54)
      acd83(75)=acd83(45)*acd83(47)
      acd83(77)=acd83(33)*acd83(36)
      acd83(78)=acd83(16)*acd83(40)
      acd83(79)=acd83(76)*acd83(22)
      acd83(73)=acd83(73)+acd83(74)+acd83(75)+acd83(77)+acd83(78)-acd83(79)
      acd83(74)=acd83(12)*acd83(73)
      acd83(75)=acd83(63)*acd83(64)
      acd83(77)=acd83(26)*acd83(61)
      acd83(78)=acd83(11)*acd83(43)
      acd83(75)=-acd83(78)+acd83(75)-acd83(77)
      acd83(77)=-acd83(45)*acd83(75)
      acd83(78)=acd83(63)*acd83(65)
      acd83(79)=acd83(28)*acd83(61)
      acd83(80)=acd83(16)*acd83(43)
      acd83(78)=-acd83(80)+acd83(78)-acd83(79)
      acd83(79)=-acd83(44)*acd83(78)
      acd83(80)=acd83(44)*acd83(60)
      acd83(81)=acd83(13)*acd83(56)
      acd83(82)=acd83(12)*acd83(46)
      acd83(80)=acd83(82)+acd83(80)+acd83(81)
      acd83(81)=2.0_ki*acd83(19)
      acd83(80)=acd83(80)*acd83(81)
      acd83(82)=acd83(45)*acd83(60)
      acd83(83)=acd83(18)*acd83(56)
      acd83(84)=acd83(17)*acd83(46)
      acd83(82)=acd83(84)+acd83(82)+acd83(83)
      acd83(82)=acd83(14)*acd83(82)
      acd83(71)=acd83(71)+acd83(38)
      acd83(83)=-acd83(28)*acd83(71)
      acd83(76)=acd83(76)+acd83(33)
      acd83(84)=-acd83(26)*acd83(76)
      acd83(83)=acd83(84)+acd83(83)
      acd83(83)=acd83(25)*acd83(83)
      acd83(84)=acd83(16)*acd83(71)
      acd83(85)=acd83(11)*acd83(76)
      acd83(84)=acd83(84)+acd83(85)
      acd83(84)=acd83(21)*acd83(84)
      acd83(85)=2.0_ki*acd83(1)
      acd83(86)=acd83(9)*acd83(85)
      acd83(67)=2.0_ki*acd83(82)+acd83(80)+acd83(74)+acd83(72)+acd83(69)+acd83(&
      &67)+acd83(84)+acd83(83)+acd83(86)+acd83(79)+acd83(77)
      acd83(67)=acd83(8)*acd83(67)
      acd83(69)=acd83(59)*acd83(50)
      acd83(72)=acd83(58)*acd83(48)
      acd83(74)=acd83(42)*acd83(57)
      acd83(77)=acd83(39)*acd83(37)
      acd83(79)=acd83(2)*acd83(41)
      acd83(80)=acd83(29)+acd83(32)
      acd83(82)=acd83(80)*acd83(23)
      acd83(69)=acd83(77)+acd83(69)+acd83(79)-acd83(82)+acd83(72)+acd83(74)
      acd83(72)=acd83(18)*acd83(69)
      acd83(74)=acd83(51)*acd83(50)
      acd83(77)=acd83(49)*acd83(48)
      acd83(79)=acd83(42)*acd83(47)
      acd83(82)=acd83(39)*acd83(36)
      acd83(83)=acd83(2)*acd83(40)
      acd83(84)=acd83(80)*acd83(22)
      acd83(74)=acd83(82)+acd83(74)+acd83(83)-acd83(84)+acd83(77)+acd83(79)
      acd83(77)=acd83(17)*acd83(74)
      acd83(70)=acd83(6)*acd83(70)
      acd83(73)=acd83(4)*acd83(73)
      acd83(79)=acd83(63)*acd83(62)
      acd83(82)=acd83(24)*acd83(61)
      acd83(83)=acd83(2)*acd83(43)
      acd83(79)=-acd83(83)+acd83(79)-acd83(82)
      acd83(82)=-acd83(45)*acd83(79)
      acd83(78)=-acd83(42)*acd83(78)
      acd83(83)=acd83(42)*acd83(60)
      acd83(84)=acd83(6)*acd83(56)
      acd83(86)=acd83(4)*acd83(46)
      acd83(83)=acd83(86)+acd83(83)+acd83(84)
      acd83(81)=acd83(83)*acd83(81)
      acd83(80)=acd83(80)+acd83(39)
      acd83(83)=-acd83(28)*acd83(80)
      acd83(84)=-acd83(24)*acd83(76)
      acd83(83)=acd83(84)+acd83(83)
      acd83(83)=acd83(25)*acd83(83)
      acd83(84)=acd83(16)*acd83(80)
      acd83(76)=acd83(2)*acd83(76)
      acd83(76)=acd83(84)+acd83(76)
      acd83(76)=acd83(21)*acd83(76)
      acd83(84)=2.0_ki*acd83(10)
      acd83(86)=acd83(9)*acd83(84)
      acd83(70)=acd83(81)+acd83(73)+acd83(70)+acd83(77)+acd83(72)+acd83(76)+acd&
      &83(83)+acd83(86)+acd83(78)+acd83(82)
      acd83(70)=acd83(14)*acd83(70)
      acd83(69)=acd83(13)*acd83(69)
      acd83(72)=acd83(12)*acd83(74)
      acd83(66)=acd83(6)*acd83(66)
      acd83(68)=acd83(4)*acd83(68)
      acd83(73)=-acd83(44)*acd83(79)
      acd83(74)=-acd83(42)*acd83(75)
      acd83(75)=-acd83(26)*acd83(80)
      acd83(76)=-acd83(24)*acd83(71)
      acd83(75)=acd83(76)+acd83(75)
      acd83(75)=acd83(25)*acd83(75)
      acd83(76)=acd83(11)*acd83(80)
      acd83(71)=acd83(2)*acd83(71)
      acd83(71)=acd83(76)+acd83(71)
      acd83(71)=acd83(21)*acd83(71)
      acd83(76)=2.0_ki*acd83(15)
      acd83(77)=acd83(9)*acd83(76)
      acd83(66)=acd83(68)+acd83(66)+acd83(72)+acd83(69)+acd83(71)+acd83(75)+acd&
      &83(77)+acd83(74)+acd83(73)
      acd83(66)=acd83(19)*acd83(66)
      acd83(68)=acd83(16)*acd83(15)
      acd83(69)=acd83(11)*acd83(10)
      acd83(71)=acd83(2)*acd83(1)
      acd83(68)=acd83(71)+acd83(68)+acd83(69)
      acd83(68)=acd83(3)*acd83(68)
      acd83(69)=acd83(11)*acd83(39)
      acd83(71)=acd83(2)*acd83(38)
      acd83(69)=acd83(69)+acd83(71)
      acd83(71)=acd83(35)*acd83(69)
      acd83(72)=acd83(7)*acd83(76)
      acd83(71)=acd83(72)+acd83(71)
      acd83(71)=acd83(18)*acd83(71)
      acd83(69)=acd83(34)*acd83(69)
      acd83(72)=acd83(5)*acd83(76)
      acd83(69)=acd83(72)+acd83(69)
      acd83(69)=acd83(17)*acd83(69)
      acd83(72)=acd83(16)*acd83(39)
      acd83(73)=acd83(2)*acd83(33)
      acd83(72)=acd83(72)+acd83(73)
      acd83(73)=acd83(35)*acd83(72)
      acd83(74)=acd83(7)*acd83(84)
      acd83(73)=acd83(74)+acd83(73)
      acd83(73)=acd83(13)*acd83(73)
      acd83(72)=acd83(34)*acd83(72)
      acd83(74)=acd83(5)*acd83(84)
      acd83(72)=acd83(74)+acd83(72)
      acd83(72)=acd83(12)*acd83(72)
      acd83(74)=acd83(16)*acd83(38)
      acd83(75)=acd83(11)*acd83(33)
      acd83(74)=acd83(74)+acd83(75)
      acd83(75)=acd83(35)*acd83(74)
      acd83(76)=acd83(7)*acd83(85)
      acd83(75)=acd83(76)+acd83(75)
      acd83(75)=acd83(6)*acd83(75)
      acd83(74)=acd83(34)*acd83(74)
      acd83(76)=acd83(5)*acd83(85)
      acd83(74)=acd83(76)+acd83(74)
      acd83(74)=acd83(4)*acd83(74)
      brack=acd83(66)+acd83(67)+2.0_ki*acd83(68)+acd83(69)+acd83(70)+acd83(71)+&
      &acd83(72)+acd83(73)+acd83(74)+acd83(75)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd83
      complex(ki) :: brack
      acd83(1)=d(iv1,iv2)
      acd83(2)=spvak1k2(iv3)
      acd83(3)=spvak7k2(iv4)
      acd83(4)=abb83(25)
      acd83(5)=spvak1k2(iv4)
      acd83(6)=spvak7k2(iv3)
      acd83(7)=spvak4k2(iv4)
      acd83(8)=abb83(20)
      acd83(9)=spval5k2(iv4)
      acd83(10)=abb83(34)
      acd83(11)=spval6k2(iv4)
      acd83(12)=abb83(35)
      acd83(13)=spvak4k2(iv3)
      acd83(14)=spval5k2(iv3)
      acd83(15)=spval6k2(iv3)
      acd83(16)=abb83(29)
      acd83(17)=abb83(43)
      acd83(18)=d(iv1,iv3)
      acd83(19)=spvak1k2(iv2)
      acd83(20)=spvak7k2(iv2)
      acd83(21)=spvak4k2(iv2)
      acd83(22)=spval5k2(iv2)
      acd83(23)=spval6k2(iv2)
      acd83(24)=d(iv1,iv4)
      acd83(25)=d(iv2,iv3)
      acd83(26)=spvak1k2(iv1)
      acd83(27)=spvak7k2(iv1)
      acd83(28)=spvak4k2(iv1)
      acd83(29)=spval5k2(iv1)
      acd83(30)=spval6k2(iv1)
      acd83(31)=d(iv2,iv4)
      acd83(32)=d(iv3,iv4)
      acd83(33)=spvak4k3(iv4)
      acd83(34)=abb83(8)
      acd83(35)=spvak4k3(iv3)
      acd83(36)=abb83(12)
      acd83(37)=spvak4k3(iv2)
      acd83(38)=spvak4k3(iv1)
      acd83(39)=acd83(8)*acd83(6)
      acd83(40)=acd83(16)*acd83(14)
      acd83(41)=acd83(17)*acd83(15)
      acd83(39)=-acd83(41)+acd83(39)-acd83(40)
      acd83(40)=-acd83(1)*acd83(39)
      acd83(41)=acd83(8)*acd83(20)
      acd83(42)=acd83(22)*acd83(16)
      acd83(43)=acd83(23)*acd83(17)
      acd83(41)=-acd83(43)+acd83(41)-acd83(42)
      acd83(42)=-acd83(18)*acd83(41)
      acd83(43)=acd83(8)*acd83(27)
      acd83(44)=acd83(29)*acd83(16)
      acd83(45)=acd83(30)*acd83(17)
      acd83(43)=-acd83(45)+acd83(43)-acd83(44)
      acd83(44)=-acd83(25)*acd83(43)
      acd83(40)=acd83(44)+acd83(42)+acd83(40)
      acd83(40)=acd83(7)*acd83(40)
      acd83(42)=acd83(8)*acd83(3)
      acd83(44)=acd83(16)*acd83(9)
      acd83(45)=acd83(17)*acd83(11)
      acd83(42)=-acd83(45)+acd83(42)-acd83(44)
      acd83(44)=-acd83(1)*acd83(42)
      acd83(45)=-acd83(24)*acd83(41)
      acd83(46)=-acd83(31)*acd83(43)
      acd83(44)=acd83(46)+acd83(45)+acd83(44)
      acd83(44)=acd83(13)*acd83(44)
      acd83(45)=-acd83(18)*acd83(42)
      acd83(46)=-acd83(24)*acd83(39)
      acd83(43)=-acd83(32)*acd83(43)
      acd83(43)=acd83(43)+acd83(45)+acd83(46)
      acd83(43)=acd83(21)*acd83(43)
      acd83(42)=-acd83(25)*acd83(42)
      acd83(39)=-acd83(31)*acd83(39)
      acd83(41)=-acd83(32)*acd83(41)
      acd83(39)=acd83(41)+acd83(42)+acd83(39)
      acd83(39)=acd83(28)*acd83(39)
      acd83(41)=acd83(14)*acd83(10)
      acd83(42)=acd83(15)*acd83(12)
      acd83(41)=acd83(41)+acd83(42)
      acd83(42)=acd83(1)*acd83(41)
      acd83(45)=acd83(22)*acd83(10)
      acd83(46)=acd83(23)*acd83(12)
      acd83(45)=acd83(45)+acd83(46)
      acd83(46)=acd83(18)*acd83(45)
      acd83(47)=acd83(29)*acd83(10)
      acd83(48)=acd83(30)*acd83(12)
      acd83(47)=acd83(47)+acd83(48)
      acd83(48)=acd83(25)*acd83(47)
      acd83(42)=acd83(48)+acd83(46)+acd83(42)
      acd83(42)=acd83(3)*acd83(42)
      acd83(46)=acd83(6)*acd83(45)
      acd83(48)=acd83(20)*acd83(41)
      acd83(49)=acd83(2)*acd83(20)
      acd83(50)=acd83(19)*acd83(6)
      acd83(49)=acd83(49)+acd83(50)
      acd83(49)=acd83(4)*acd83(49)
      acd83(46)=acd83(49)+acd83(48)+acd83(46)
      acd83(46)=acd83(24)*acd83(46)
      acd83(48)=acd83(6)*acd83(47)
      acd83(41)=acd83(27)*acd83(41)
      acd83(49)=acd83(2)*acd83(27)
      acd83(50)=acd83(26)*acd83(6)
      acd83(49)=acd83(49)+acd83(50)
      acd83(49)=acd83(4)*acd83(49)
      acd83(41)=acd83(49)+acd83(41)+acd83(48)
      acd83(41)=acd83(31)*acd83(41)
      acd83(47)=acd83(20)*acd83(47)
      acd83(45)=acd83(27)*acd83(45)
      acd83(48)=acd83(19)*acd83(27)
      acd83(49)=acd83(26)*acd83(20)
      acd83(48)=acd83(48)+acd83(49)
      acd83(48)=acd83(4)*acd83(48)
      acd83(45)=acd83(48)+acd83(45)+acd83(47)
      acd83(45)=acd83(32)*acd83(45)
      acd83(47)=acd83(10)*acd83(9)
      acd83(48)=acd83(12)*acd83(11)
      acd83(47)=acd83(47)+acd83(48)
      acd83(48)=acd83(6)*acd83(47)
      acd83(49)=acd83(2)*acd83(3)
      acd83(50)=acd83(5)*acd83(6)
      acd83(49)=acd83(49)+acd83(50)
      acd83(49)=acd83(4)*acd83(49)
      acd83(48)=acd83(49)+acd83(48)
      acd83(48)=acd83(1)*acd83(48)
      acd83(49)=acd83(20)*acd83(47)
      acd83(50)=acd83(5)*acd83(20)
      acd83(51)=acd83(19)*acd83(3)
      acd83(50)=acd83(50)+acd83(51)
      acd83(50)=acd83(4)*acd83(50)
      acd83(49)=acd83(50)+acd83(49)
      acd83(49)=acd83(18)*acd83(49)
      acd83(47)=acd83(27)*acd83(47)
      acd83(50)=acd83(5)*acd83(27)
      acd83(51)=acd83(26)*acd83(3)
      acd83(50)=acd83(50)+acd83(51)
      acd83(50)=acd83(4)*acd83(50)
      acd83(47)=acd83(50)+acd83(47)
      acd83(47)=acd83(25)*acd83(47)
      acd83(39)=acd83(39)+acd83(40)+acd83(45)+acd83(41)+acd83(47)+acd83(46)+acd&
      &83(49)+acd83(42)+acd83(48)+acd83(44)+acd83(43)
      acd83(40)=acd83(26)*acd83(34)
      acd83(41)=acd83(40)*acd83(20)
      acd83(42)=acd83(19)*acd83(34)
      acd83(43)=acd83(42)*acd83(27)
      acd83(41)=acd83(41)+acd83(43)
      acd83(43)=acd83(14)*acd83(41)
      acd83(44)=acd83(26)*acd83(36)
      acd83(45)=acd83(44)*acd83(20)
      acd83(46)=acd83(19)*acd83(36)
      acd83(47)=acd83(46)*acd83(27)
      acd83(45)=acd83(45)+acd83(47)
      acd83(47)=acd83(15)*acd83(45)
      acd83(48)=acd83(40)*acd83(6)
      acd83(49)=acd83(2)*acd83(34)
      acd83(50)=acd83(49)*acd83(27)
      acd83(48)=acd83(48)+acd83(50)
      acd83(50)=acd83(22)*acd83(48)
      acd83(51)=acd83(44)*acd83(6)
      acd83(52)=acd83(2)*acd83(36)
      acd83(53)=acd83(52)*acd83(27)
      acd83(51)=acd83(51)+acd83(53)
      acd83(53)=acd83(23)*acd83(51)
      acd83(54)=acd83(42)*acd83(6)
      acd83(55)=acd83(49)*acd83(20)
      acd83(54)=acd83(54)+acd83(55)
      acd83(55)=acd83(29)*acd83(54)
      acd83(56)=acd83(46)*acd83(6)
      acd83(57)=acd83(52)*acd83(20)
      acd83(56)=acd83(56)+acd83(57)
      acd83(57)=acd83(30)*acd83(56)
      acd83(43)=acd83(57)+acd83(55)+acd83(53)+acd83(50)+acd83(43)+acd83(47)
      acd83(43)=acd83(33)*acd83(43)
      acd83(41)=acd83(9)*acd83(41)
      acd83(45)=acd83(11)*acd83(45)
      acd83(40)=acd83(40)*acd83(3)
      acd83(47)=acd83(5)*acd83(34)
      acd83(50)=acd83(47)*acd83(27)
      acd83(40)=acd83(40)+acd83(50)
      acd83(50)=acd83(22)*acd83(40)
      acd83(44)=acd83(44)*acd83(3)
      acd83(53)=acd83(5)*acd83(36)
      acd83(55)=acd83(53)*acd83(27)
      acd83(44)=acd83(44)+acd83(55)
      acd83(55)=acd83(23)*acd83(44)
      acd83(42)=acd83(42)*acd83(3)
      acd83(57)=acd83(47)*acd83(20)
      acd83(42)=acd83(42)+acd83(57)
      acd83(57)=acd83(29)*acd83(42)
      acd83(46)=acd83(46)*acd83(3)
      acd83(58)=acd83(53)*acd83(20)
      acd83(46)=acd83(46)+acd83(58)
      acd83(58)=acd83(30)*acd83(46)
      acd83(41)=acd83(58)+acd83(57)+acd83(55)+acd83(50)+acd83(41)+acd83(45)
      acd83(41)=acd83(35)*acd83(41)
      acd83(45)=acd83(9)*acd83(48)
      acd83(48)=acd83(11)*acd83(51)
      acd83(40)=acd83(14)*acd83(40)
      acd83(44)=acd83(15)*acd83(44)
      acd83(47)=acd83(47)*acd83(6)
      acd83(49)=acd83(49)*acd83(3)
      acd83(47)=acd83(47)+acd83(49)
      acd83(49)=acd83(29)*acd83(47)
      acd83(50)=acd83(53)*acd83(6)
      acd83(51)=acd83(52)*acd83(3)
      acd83(50)=acd83(50)+acd83(51)
      acd83(51)=acd83(30)*acd83(50)
      acd83(40)=acd83(51)+acd83(49)+acd83(44)+acd83(40)+acd83(45)+acd83(48)
      acd83(40)=acd83(37)*acd83(40)
      acd83(44)=acd83(9)*acd83(54)
      acd83(45)=acd83(11)*acd83(56)
      acd83(42)=acd83(14)*acd83(42)
      acd83(46)=acd83(15)*acd83(46)
      acd83(47)=acd83(22)*acd83(47)
      acd83(48)=acd83(23)*acd83(50)
      acd83(42)=acd83(48)+acd83(47)+acd83(46)+acd83(42)+acd83(44)+acd83(45)
      acd83(42)=acd83(38)*acd83(42)
      brack=2.0_ki*acd83(39)+acd83(40)+acd83(41)+acd83(42)+acd83(43)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd83h4
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = 0
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d83:
   subroutine     reconstruct_d83(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group5
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group5), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_83:
      coeffs%coeffs_83%c0 = derivative(czip)
      coeffs%coeffs_83%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_83%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_83%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_83%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_83%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_83%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_83%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_83%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_83%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_83%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_83%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_83%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_83%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_83%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_83%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_83%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_83%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_83%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_83%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_83%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_83%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_83%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_83%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_83%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_83%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_83%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_83%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_83%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_83%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_83%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_83%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_83%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_83%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_83%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_83%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_83%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_83%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_83%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_83%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_83%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_83%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_83%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_83%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_83%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_83%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_83%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_83%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_83%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_83%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_83%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_83%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_83%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_83%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_83%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_83%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_83%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_83%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_83%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_83%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_83%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_83%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_83%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_83%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_83%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_83%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_83%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_83%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_83%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_83%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_83:
   end subroutine reconstruct_d83
!---#] subroutine reconstruct_d83:
end module     p0_dbaru_epnebbbarg_d83h4l1d
