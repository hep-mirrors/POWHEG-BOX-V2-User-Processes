module     p0_dbaru_epnebbbar_d2h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity1d2h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d2
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd2h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd2
      complex(ki) :: brack
      acd2(1)=dotproduct(k1,qshift)
      acd2(2)=dotproduct(k2,qshift)
      acd2(3)=abb2(8)
      acd2(4)=dotproduct(qshift,spvak1k3)
      acd2(5)=abb2(17)
      acd2(6)=dotproduct(qshift,spvak4k2)
      acd2(7)=abb2(16)
      acd2(8)=dotproduct(qshift,spvak4k3)
      acd2(9)=abb2(40)
      acd2(10)=dotproduct(qshift,spval6k2)
      acd2(11)=abb2(35)
      acd2(12)=dotproduct(qshift,spval6l5)
      acd2(13)=abb2(33)
      acd2(14)=abb2(13)
      acd2(15)=dotproduct(k3,qshift)
      acd2(16)=abb2(27)
      acd2(17)=dotproduct(k4,qshift)
      acd2(18)=dotproduct(qshift,qshift)
      acd2(19)=abb2(25)
      acd2(20)=abb2(15)
      acd2(21)=dotproduct(qshift,spvak1k2)
      acd2(22)=abb2(22)
      acd2(23)=abb2(18)
      acd2(24)=abb2(6)
      acd2(25)=abb2(23)
      acd2(26)=abb2(19)
      acd2(27)=abb2(9)
      acd2(28)=abb2(28)
      acd2(29)=abb2(39)
      acd2(30)=abb2(7)
      acd2(31)=abb2(14)
      acd2(32)=abb2(24)
      acd2(33)=abb2(20)
      acd2(34)=abb2(21)
      acd2(35)=abb2(42)
      acd2(36)=abb2(41)
      acd2(37)=abb2(29)
      acd2(38)=abb2(30)
      acd2(39)=dotproduct(qshift,spvak1k4)
      acd2(40)=dotproduct(qshift,spvak3k2)
      acd2(41)=abb2(11)
      acd2(42)=abb2(34)
      acd2(43)=abb2(26)
      acd2(44)=abb2(31)
      acd2(45)=abb2(10)
      acd2(46)=abb2(12)
      acd2(47)=acd2(9)*acd2(1)
      acd2(48)=-acd2(29)*acd2(18)
      acd2(49)=acd2(32)*acd2(4)
      acd2(50)=acd2(34)*acd2(6)
      acd2(51)=acd2(36)*acd2(10)
      acd2(52)=acd2(39)*acd2(27)
      acd2(53)=-acd2(40)*acd2(28)
      acd2(47)=-acd2(41)+acd2(53)+acd2(52)+acd2(51)+acd2(50)+acd2(49)+acd2(48)+&
      &acd2(47)
      acd2(47)=acd2(8)*acd2(47)
      acd2(48)=acd2(17)+acd2(15)
      acd2(49)=acd2(16)*acd2(48)
      acd2(50)=acd2(3)*acd2(1)
      acd2(51)=acd2(20)*acd2(4)
      acd2(52)=acd2(21)*acd2(8)
      acd2(53)=acd2(22)*acd2(52)
      acd2(54)=acd2(23)*acd2(8)
      acd2(55)=acd2(24)*acd2(21)
      acd2(49)=acd2(55)+acd2(54)+acd2(49)-acd2(25)+acd2(53)+acd2(51)+acd2(50)
      acd2(49)=acd2(2)*acd2(49)
      acd2(50)=acd2(13)*acd2(1)
      acd2(51)=acd2(33)*acd2(4)
      acd2(53)=-acd2(37)*acd2(52)
      acd2(54)=acd2(43)*acd2(21)
      acd2(50)=acd2(54)-acd2(44)+acd2(53)+acd2(51)+acd2(50)
      acd2(50)=acd2(12)*acd2(50)
      acd2(51)=acd2(27)*acd2(4)
      acd2(53)=-acd2(28)*acd2(6)
      acd2(54)=-acd2(19)*acd2(2)
      acd2(55)=-acd2(30)*acd2(10)
      acd2(51)=acd2(31)+acd2(55)+acd2(54)+acd2(53)+acd2(51)
      acd2(51)=acd2(18)*acd2(51)
      acd2(53)=-acd2(5)*acd2(4)
      acd2(54)=acd2(7)*acd2(6)
      acd2(55)=acd2(11)*acd2(10)
      acd2(53)=acd2(55)+acd2(53)+acd2(54)
      acd2(54)=acd2(48)-acd2(1)
      acd2(53)=acd2(54)*acd2(53)
      acd2(48)=-acd2(26)*acd2(48)
      acd2(54)=-acd2(14)*acd2(1)
      acd2(55)=-acd2(35)*acd2(6)
      acd2(52)=acd2(38)*acd2(52)
      acd2(56)=-acd2(42)*acd2(10)
      acd2(57)=-acd2(45)*acd2(21)
      brack=acd2(46)+acd2(47)+acd2(48)+acd2(49)+acd2(50)+acd2(51)+acd2(52)+acd2&
      &(53)+acd2(54)+acd2(55)+acd2(56)+acd2(57)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd2h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd2
      complex(ki) :: brack
      acd2(1)=k1(iv1)
      acd2(2)=dotproduct(k2,qshift)
      acd2(3)=abb2(8)
      acd2(4)=dotproduct(qshift,spvak1k3)
      acd2(5)=abb2(17)
      acd2(6)=dotproduct(qshift,spvak4k2)
      acd2(7)=abb2(16)
      acd2(8)=dotproduct(qshift,spvak4k3)
      acd2(9)=abb2(40)
      acd2(10)=dotproduct(qshift,spval6k2)
      acd2(11)=abb2(35)
      acd2(12)=dotproduct(qshift,spval6l5)
      acd2(13)=abb2(33)
      acd2(14)=abb2(13)
      acd2(15)=k2(iv1)
      acd2(16)=dotproduct(k1,qshift)
      acd2(17)=dotproduct(k3,qshift)
      acd2(18)=abb2(27)
      acd2(19)=dotproduct(k4,qshift)
      acd2(20)=dotproduct(qshift,qshift)
      acd2(21)=abb2(25)
      acd2(22)=abb2(15)
      acd2(23)=dotproduct(qshift,spvak1k2)
      acd2(24)=abb2(22)
      acd2(25)=abb2(18)
      acd2(26)=abb2(6)
      acd2(27)=abb2(23)
      acd2(28)=k3(iv1)
      acd2(29)=abb2(19)
      acd2(30)=k4(iv1)
      acd2(31)=qshift(iv1)
      acd2(32)=abb2(9)
      acd2(33)=abb2(28)
      acd2(34)=abb2(39)
      acd2(35)=abb2(7)
      acd2(36)=abb2(14)
      acd2(37)=spvak1k3(iv1)
      acd2(38)=abb2(24)
      acd2(39)=abb2(20)
      acd2(40)=spvak4k2(iv1)
      acd2(41)=abb2(21)
      acd2(42)=abb2(42)
      acd2(43)=spvak4k3(iv1)
      acd2(44)=abb2(41)
      acd2(45)=abb2(29)
      acd2(46)=abb2(30)
      acd2(47)=dotproduct(qshift,spvak1k4)
      acd2(48)=dotproduct(qshift,spvak3k2)
      acd2(49)=abb2(11)
      acd2(50)=spval6k2(iv1)
      acd2(51)=abb2(34)
      acd2(52)=spval6l5(iv1)
      acd2(53)=abb2(26)
      acd2(54)=abb2(31)
      acd2(55)=spvak1k2(iv1)
      acd2(56)=abb2(10)
      acd2(57)=spvak1k4(iv1)
      acd2(58)=spvak3k2(iv1)
      acd2(59)=acd2(12)*acd2(45)
      acd2(59)=acd2(59)-acd2(46)
      acd2(60)=-acd2(2)*acd2(24)
      acd2(60)=acd2(60)+acd2(59)
      acd2(60)=acd2(55)*acd2(60)
      acd2(61)=acd2(33)*acd2(58)
      acd2(62)=-acd2(32)*acd2(57)
      acd2(63)=-acd2(50)*acd2(44)
      acd2(64)=-acd2(40)*acd2(41)
      acd2(65)=2.0_ki*acd2(31)
      acd2(66)=acd2(34)*acd2(65)
      acd2(67)=-acd2(37)*acd2(38)
      acd2(68)=acd2(23)*acd2(52)
      acd2(69)=acd2(45)*acd2(68)
      acd2(70)=-acd2(1)*acd2(9)
      acd2(71)=acd2(23)*acd2(24)
      acd2(71)=acd2(71)+acd2(25)
      acd2(72)=-acd2(15)*acd2(71)
      acd2(60)=acd2(72)+acd2(70)+acd2(69)+acd2(67)+acd2(66)+acd2(64)+acd2(63)+a&
      &cd2(61)+acd2(62)+acd2(60)
      acd2(60)=acd2(8)*acd2(60)
      acd2(61)=acd2(33)*acd2(48)
      acd2(62)=-acd2(32)*acd2(47)
      acd2(63)=acd2(20)*acd2(34)
      acd2(64)=-acd2(10)*acd2(44)
      acd2(66)=-acd2(6)*acd2(41)
      acd2(67)=-acd2(16)*acd2(9)
      acd2(59)=acd2(23)*acd2(59)
      acd2(69)=-acd2(4)*acd2(38)
      acd2(70)=-acd2(2)*acd2(71)
      acd2(59)=acd2(70)+acd2(69)+acd2(59)+acd2(67)+acd2(66)+acd2(64)+acd2(63)+a&
      &cd2(62)+acd2(49)+acd2(61)
      acd2(59)=acd2(43)*acd2(59)
      acd2(61)=acd2(17)+acd2(19)
      acd2(62)=-acd2(18)*acd2(61)
      acd2(63)=acd2(20)*acd2(21)
      acd2(64)=-acd2(16)*acd2(3)
      acd2(66)=-acd2(23)*acd2(26)
      acd2(67)=-acd2(4)*acd2(22)
      acd2(62)=acd2(67)+acd2(66)+acd2(64)+acd2(63)+acd2(27)+acd2(62)
      acd2(62)=acd2(15)*acd2(62)
      acd2(63)=acd2(28)+acd2(30)
      acd2(64)=-acd2(18)*acd2(63)
      acd2(66)=-acd2(55)*acd2(26)
      acd2(67)=acd2(21)*acd2(65)
      acd2(69)=-acd2(37)*acd2(22)
      acd2(70)=-acd2(1)*acd2(3)
      acd2(64)=acd2(70)+acd2(69)+acd2(67)+acd2(66)+acd2(64)
      acd2(64)=acd2(2)*acd2(64)
      acd2(66)=-acd2(12)*acd2(13)
      acd2(67)=acd2(11)*acd2(10)
      acd2(69)=acd2(7)*acd2(6)
      acd2(70)=-acd2(4)*acd2(5)
      acd2(66)=acd2(70)+acd2(69)+acd2(67)+acd2(14)+acd2(66)
      acd2(66)=acd2(1)*acd2(66)
      acd2(67)=-acd2(20)*acd2(32)
      acd2(69)=-acd2(12)*acd2(39)
      acd2(61)=acd2(61)-acd2(16)
      acd2(70)=acd2(5)*acd2(61)
      acd2(67)=acd2(70)+acd2(67)+acd2(69)
      acd2(67)=acd2(37)*acd2(67)
      acd2(69)=-acd2(52)*acd2(39)
      acd2(70)=-acd2(32)*acd2(65)
      acd2(71)=acd2(5)*acd2(63)
      acd2(69)=acd2(71)+acd2(69)+acd2(70)
      acd2(69)=acd2(4)*acd2(69)
      acd2(70)=acd2(10)*acd2(35)
      acd2(71)=acd2(6)*acd2(33)
      acd2(70)=acd2(71)-acd2(36)+acd2(70)
      acd2(65)=acd2(70)*acd2(65)
      acd2(70)=-acd2(50)*acd2(61)
      acd2(71)=-acd2(10)*acd2(63)
      acd2(70)=acd2(71)+acd2(70)
      acd2(70)=acd2(11)*acd2(70)
      acd2(61)=-acd2(40)*acd2(61)
      acd2(71)=-acd2(6)*acd2(63)
      acd2(61)=acd2(71)+acd2(61)
      acd2(61)=acd2(7)*acd2(61)
      acd2(63)=acd2(29)*acd2(63)
      acd2(71)=-acd2(16)*acd2(13)
      acd2(71)=acd2(71)+acd2(54)
      acd2(71)=acd2(52)*acd2(71)
      acd2(72)=-acd2(12)*acd2(53)
      acd2(72)=acd2(56)+acd2(72)
      acd2(72)=acd2(55)*acd2(72)
      acd2(73)=acd2(20)*acd2(35)
      acd2(73)=acd2(51)+acd2(73)
      acd2(73)=acd2(50)*acd2(73)
      acd2(74)=acd2(20)*acd2(33)
      acd2(74)=acd2(42)+acd2(74)
      acd2(74)=acd2(40)*acd2(74)
      acd2(68)=-acd2(53)*acd2(68)
      brack=acd2(59)+acd2(60)+acd2(61)+acd2(62)+acd2(63)+acd2(64)+acd2(65)+acd2&
      &(66)+acd2(67)+acd2(68)+acd2(69)+acd2(70)+acd2(71)+acd2(72)+acd2(73)+acd2&
      &(74)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd2h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(72) :: acd2
      complex(ki) :: brack
      acd2(1)=d(iv1,iv2)
      acd2(2)=dotproduct(k2,qshift)
      acd2(3)=abb2(25)
      acd2(4)=dotproduct(qshift,spvak1k3)
      acd2(5)=abb2(9)
      acd2(6)=dotproduct(qshift,spvak4k2)
      acd2(7)=abb2(28)
      acd2(8)=dotproduct(qshift,spvak4k3)
      acd2(9)=abb2(39)
      acd2(10)=dotproduct(qshift,spval6k2)
      acd2(11)=abb2(7)
      acd2(12)=abb2(14)
      acd2(13)=k1(iv1)
      acd2(14)=k2(iv2)
      acd2(15)=abb2(8)
      acd2(16)=spvak1k3(iv2)
      acd2(17)=abb2(17)
      acd2(18)=spvak4k2(iv2)
      acd2(19)=abb2(16)
      acd2(20)=spvak4k3(iv2)
      acd2(21)=abb2(40)
      acd2(22)=spval6k2(iv2)
      acd2(23)=abb2(35)
      acd2(24)=spval6l5(iv2)
      acd2(25)=abb2(33)
      acd2(26)=k1(iv2)
      acd2(27)=k2(iv1)
      acd2(28)=spvak1k3(iv1)
      acd2(29)=spvak4k2(iv1)
      acd2(30)=spvak4k3(iv1)
      acd2(31)=spval6k2(iv1)
      acd2(32)=spval6l5(iv1)
      acd2(33)=k3(iv2)
      acd2(34)=abb2(27)
      acd2(35)=k4(iv2)
      acd2(36)=qshift(iv2)
      acd2(37)=abb2(15)
      acd2(38)=dotproduct(qshift,spvak1k2)
      acd2(39)=abb2(22)
      acd2(40)=abb2(18)
      acd2(41)=spvak1k2(iv2)
      acd2(42)=abb2(6)
      acd2(43)=k3(iv1)
      acd2(44)=k4(iv1)
      acd2(45)=qshift(iv1)
      acd2(46)=spvak1k2(iv1)
      acd2(47)=abb2(24)
      acd2(48)=abb2(20)
      acd2(49)=abb2(21)
      acd2(50)=abb2(41)
      acd2(51)=abb2(29)
      acd2(52)=dotproduct(qshift,spval6l5)
      acd2(53)=abb2(30)
      acd2(54)=spvak1k4(iv2)
      acd2(55)=spvak3k2(iv2)
      acd2(56)=spvak1k4(iv1)
      acd2(57)=spvak3k2(iv1)
      acd2(58)=abb2(26)
      acd2(59)=acd2(51)*acd2(52)
      acd2(60)=acd2(39)*acd2(2)
      acd2(59)=-acd2(59)+acd2(60)+acd2(53)
      acd2(60)=acd2(41)*acd2(59)
      acd2(61)=2.0_ki*acd2(36)
      acd2(62)=-acd2(9)*acd2(61)
      acd2(63)=acd2(22)*acd2(50)
      acd2(64)=acd2(18)*acd2(49)
      acd2(65)=-acd2(7)*acd2(55)
      acd2(66)=acd2(5)*acd2(54)
      acd2(67)=acd2(51)*acd2(38)
      acd2(68)=-acd2(24)*acd2(67)
      acd2(69)=acd2(26)*acd2(21)
      acd2(70)=acd2(16)*acd2(47)
      acd2(71)=acd2(39)*acd2(38)
      acd2(71)=acd2(71)+acd2(40)
      acd2(72)=acd2(14)*acd2(71)
      acd2(60)=acd2(72)+acd2(70)+acd2(60)+acd2(69)+acd2(68)+acd2(66)+acd2(65)+a&
      &cd2(64)+acd2(62)+acd2(63)
      acd2(60)=acd2(30)*acd2(60)
      acd2(59)=acd2(46)*acd2(59)
      acd2(62)=2.0_ki*acd2(45)
      acd2(63)=-acd2(9)*acd2(62)
      acd2(64)=acd2(31)*acd2(50)
      acd2(65)=acd2(29)*acd2(49)
      acd2(66)=-acd2(7)*acd2(57)
      acd2(68)=acd2(5)*acd2(56)
      acd2(67)=-acd2(32)*acd2(67)
      acd2(69)=acd2(13)*acd2(21)
      acd2(70)=acd2(28)*acd2(47)
      acd2(71)=acd2(27)*acd2(71)
      acd2(59)=acd2(71)+acd2(70)+acd2(59)+acd2(69)+acd2(67)+acd2(68)+acd2(66)+a&
      &cd2(65)+acd2(63)+acd2(64)
      acd2(59)=acd2(20)*acd2(59)
      acd2(63)=-acd2(11)*acd2(10)
      acd2(64)=-acd2(2)*acd2(3)
      acd2(65)=-acd2(8)*acd2(9)
      acd2(66)=-acd2(7)*acd2(6)
      acd2(67)=acd2(5)*acd2(4)
      acd2(63)=acd2(67)+acd2(66)+acd2(65)+acd2(64)+acd2(12)+acd2(63)
      acd2(63)=acd2(1)*acd2(63)
      acd2(64)=-acd2(31)*acd2(36)
      acd2(65)=-acd2(22)*acd2(45)
      acd2(64)=acd2(64)+acd2(65)
      acd2(64)=acd2(11)*acd2(64)
      acd2(65)=-acd2(29)*acd2(36)
      acd2(66)=-acd2(18)*acd2(45)
      acd2(65)=acd2(65)+acd2(66)
      acd2(65)=acd2(7)*acd2(65)
      acd2(63)=acd2(63)+acd2(65)+acd2(64)
      acd2(64)=acd2(33)+acd2(35)
      acd2(65)=acd2(34)*acd2(64)
      acd2(66)=-acd2(3)*acd2(61)
      acd2(67)=acd2(26)*acd2(15)
      acd2(68)=acd2(39)*acd2(8)
      acd2(68)=acd2(68)+acd2(42)
      acd2(69)=acd2(41)*acd2(68)
      acd2(70)=acd2(16)*acd2(37)
      acd2(65)=acd2(70)+acd2(69)+acd2(67)+acd2(66)+acd2(65)
      acd2(65)=acd2(27)*acd2(65)
      acd2(66)=acd2(43)+acd2(44)
      acd2(67)=acd2(34)*acd2(66)
      acd2(69)=-acd2(3)*acd2(62)
      acd2(70)=acd2(13)*acd2(15)
      acd2(68)=acd2(46)*acd2(68)
      acd2(71)=acd2(28)*acd2(37)
      acd2(67)=acd2(71)+acd2(68)+acd2(70)+acd2(67)+acd2(69)
      acd2(67)=acd2(14)*acd2(67)
      acd2(68)=acd2(24)*acd2(25)
      acd2(69)=-acd2(23)*acd2(22)
      acd2(70)=-acd2(19)*acd2(18)
      acd2(68)=acd2(70)+acd2(68)+acd2(69)
      acd2(68)=acd2(13)*acd2(68)
      acd2(69)=acd2(24)*acd2(48)
      acd2(61)=acd2(5)*acd2(61)
      acd2(64)=acd2(64)-acd2(26)
      acd2(70)=-acd2(17)*acd2(64)
      acd2(61)=acd2(70)+acd2(69)+acd2(61)
      acd2(61)=acd2(28)*acd2(61)
      acd2(69)=acd2(13)-acd2(66)
      acd2(69)=acd2(17)*acd2(69)
      acd2(70)=acd2(32)*acd2(48)
      acd2(62)=acd2(5)*acd2(62)
      acd2(62)=acd2(70)+acd2(62)+acd2(69)
      acd2(62)=acd2(16)*acd2(62)
      acd2(69)=-acd2(46)*acd2(24)
      acd2(70)=-acd2(41)*acd2(32)
      acd2(69)=acd2(70)+acd2(69)
      acd2(70)=acd2(51)*acd2(8)
      acd2(70)=acd2(70)-acd2(58)
      acd2(69)=acd2(70)*acd2(69)
      acd2(70)=acd2(31)*acd2(64)
      acd2(71)=acd2(22)*acd2(66)
      acd2(70)=acd2(71)+acd2(70)
      acd2(70)=acd2(23)*acd2(70)
      acd2(64)=acd2(29)*acd2(64)
      acd2(66)=acd2(18)*acd2(66)
      acd2(64)=acd2(66)+acd2(64)
      acd2(64)=acd2(19)*acd2(64)
      acd2(66)=acd2(26)*acd2(32)*acd2(25)
      brack=acd2(59)+acd2(60)+acd2(61)+acd2(62)+2.0_ki*acd2(63)+acd2(64)+acd2(6&
      &5)+acd2(66)+acd2(67)+acd2(68)+acd2(69)+acd2(70)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd2h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(43) :: acd2
      complex(ki) :: brack
      acd2(1)=d(iv1,iv2)
      acd2(2)=k2(iv3)
      acd2(3)=abb2(25)
      acd2(4)=spvak1k3(iv3)
      acd2(5)=abb2(9)
      acd2(6)=spvak4k2(iv3)
      acd2(7)=abb2(28)
      acd2(8)=spvak4k3(iv3)
      acd2(9)=abb2(39)
      acd2(10)=spval6k2(iv3)
      acd2(11)=abb2(7)
      acd2(12)=d(iv1,iv3)
      acd2(13)=k2(iv2)
      acd2(14)=spvak1k3(iv2)
      acd2(15)=spvak4k2(iv2)
      acd2(16)=spvak4k3(iv2)
      acd2(17)=spval6k2(iv2)
      acd2(18)=d(iv2,iv3)
      acd2(19)=k2(iv1)
      acd2(20)=spvak1k3(iv1)
      acd2(21)=spvak4k2(iv1)
      acd2(22)=spvak4k3(iv1)
      acd2(23)=spval6k2(iv1)
      acd2(24)=spvak1k2(iv3)
      acd2(25)=abb2(22)
      acd2(26)=spvak1k2(iv2)
      acd2(27)=spvak1k2(iv1)
      acd2(28)=spval6l5(iv3)
      acd2(29)=abb2(29)
      acd2(30)=spval6l5(iv2)
      acd2(31)=spval6l5(iv1)
      acd2(32)=acd2(26)*acd2(22)
      acd2(33)=acd2(27)*acd2(16)
      acd2(32)=acd2(32)+acd2(33)
      acd2(33)=acd2(28)*acd2(32)
      acd2(34)=acd2(24)*acd2(22)
      acd2(35)=acd2(27)*acd2(8)
      acd2(34)=acd2(34)+acd2(35)
      acd2(35)=acd2(30)*acd2(34)
      acd2(36)=acd2(24)*acd2(16)
      acd2(37)=acd2(26)*acd2(8)
      acd2(36)=acd2(36)+acd2(37)
      acd2(37)=acd2(31)*acd2(36)
      acd2(33)=acd2(37)+acd2(35)+acd2(33)
      acd2(33)=acd2(29)*acd2(33)
      acd2(35)=acd2(3)*acd2(2)
      acd2(37)=-acd2(4)*acd2(5)
      acd2(38)=acd2(6)*acd2(7)
      acd2(39)=acd2(10)*acd2(11)
      acd2(35)=acd2(39)+acd2(38)+acd2(37)+acd2(35)
      acd2(37)=2.0_ki*acd2(1)
      acd2(35)=acd2(37)*acd2(35)
      acd2(37)=-acd2(20)*acd2(5)
      acd2(38)=acd2(21)*acd2(7)
      acd2(39)=acd2(23)*acd2(11)
      acd2(37)=acd2(39)+acd2(38)+acd2(37)
      acd2(38)=2.0_ki*acd2(18)
      acd2(37)=acd2(38)*acd2(37)
      acd2(39)=-acd2(14)*acd2(5)
      acd2(40)=acd2(15)*acd2(7)
      acd2(41)=acd2(17)*acd2(11)
      acd2(39)=acd2(41)+acd2(40)+acd2(39)
      acd2(40)=2.0_ki*acd2(12)
      acd2(39)=acd2(40)*acd2(39)
      acd2(41)=acd2(8)*acd2(1)
      acd2(42)=acd2(16)*acd2(12)
      acd2(43)=acd2(22)*acd2(18)
      acd2(41)=acd2(43)+acd2(41)+acd2(42)
      acd2(41)=acd2(9)*acd2(41)
      acd2(32)=-acd2(2)*acd2(25)*acd2(32)
      acd2(34)=-acd2(25)*acd2(34)
      acd2(40)=acd2(3)*acd2(40)
      acd2(34)=acd2(40)+acd2(34)
      acd2(34)=acd2(13)*acd2(34)
      acd2(36)=-acd2(25)*acd2(36)
      acd2(38)=acd2(3)*acd2(38)
      acd2(36)=acd2(38)+acd2(36)
      acd2(36)=acd2(19)*acd2(36)
      brack=acd2(32)+acd2(33)+acd2(34)+acd2(35)+acd2(36)+acd2(37)+acd2(39)+2.0_&
      &ki*acd2(41)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd2h1
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
!---#[ subroutine reconstruct_d2:
   subroutine     reconstruct_d2(coeffs)
      use p0_dbaru_epnebbbar_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_2:
      coeffs%coeffs_2%c0 = derivative(czip)
      coeffs%coeffs_2%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_2%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_2%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_2%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_2%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_2%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_2%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_2%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_2%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_2%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_2%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_2%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_2%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_2%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_2%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_2%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_2%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_2%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_2%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_2%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_2%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_2%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_2%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_2%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_2%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_2%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_2%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_2%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_2%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_2%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_2%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_2%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_2%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_2%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_2:
   end subroutine reconstruct_d2
!---#] subroutine reconstruct_d2:
end module     p0_dbaru_epnebbbar_d2h1l1d
