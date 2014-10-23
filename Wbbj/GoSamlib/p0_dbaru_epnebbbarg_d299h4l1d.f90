module     p0_dbaru_epnebbbarg_d299h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d299h4l1d.f90
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
   public :: derivative , reconstruct_d299
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd299h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd299
      complex(ki) :: brack
      acd299(1)=dotproduct(k2,qshift)
      acd299(2)=dotproduct(qshift,spvak4k2)
      acd299(3)=dotproduct(qshift,spvak7k2)
      acd299(4)=abb299(35)
      acd299(5)=abb299(22)
      acd299(6)=dotproduct(qshift,spval6k2)
      acd299(7)=abb299(14)
      acd299(8)=abb299(32)
      acd299(9)=abb299(33)
      acd299(10)=abb299(24)
      acd299(11)=dotproduct(l6,qshift)
      acd299(12)=abb299(31)
      acd299(13)=abb299(19)
      acd299(14)=abb299(13)
      acd299(15)=dotproduct(qshift,spvak1k2)
      acd299(16)=abb299(36)
      acd299(17)=abb299(34)
      acd299(18)=abb299(30)
      acd299(19)=dotproduct(k7,qshift)
      acd299(20)=abb299(60)
      acd299(21)=dotproduct(qshift,qshift)
      acd299(22)=abb299(29)
      acd299(23)=abb299(26)
      acd299(24)=abb299(17)
      acd299(25)=abb299(38)
      acd299(26)=abb299(37)
      acd299(27)=dotproduct(qshift,spvak4k3)
      acd299(28)=abb299(20)
      acd299(29)=abb299(69)
      acd299(30)=abb299(27)
      acd299(31)=abb299(23)
      acd299(32)=abb299(21)
      acd299(33)=abb299(10)
      acd299(34)=dotproduct(qshift,spval6k3)
      acd299(35)=abb299(25)
      acd299(36)=dotproduct(qshift,spval6k7)
      acd299(37)=abb299(28)
      acd299(38)=abb299(12)
      acd299(39)=abb299(15)
      acd299(40)=abb299(72)
      acd299(41)=dotproduct(qshift,spval6k1)
      acd299(42)=abb299(18)
      acd299(43)=dotproduct(qshift,spval6l5)
      acd299(44)=abb299(56)
      acd299(45)=abb299(16)
      acd299(46)=abb299(11)
      acd299(47)=acd299(11)+acd299(19)
      acd299(48)=acd299(14)*acd299(47)
      acd299(49)=-acd299(27)*acd299(32)
      acd299(50)=acd299(21)*acd299(24)
      acd299(51)=acd299(27)*acd299(30)
      acd299(51)=-acd299(31)+acd299(51)
      acd299(51)=acd299(15)*acd299(51)
      acd299(52)=-acd299(1)*acd299(7)
      acd299(48)=acd299(52)+acd299(51)+acd299(50)+acd299(33)+acd299(49)+acd299(&
      &48)
      acd299(48)=acd299(6)*acd299(48)
      acd299(49)=-acd299(12)*acd299(47)
      acd299(50)=acd299(21)*acd299(22)
      acd299(51)=-acd299(1)*acd299(4)
      acd299(49)=acd299(51)+acd299(50)+acd299(49)
      acd299(49)=acd299(2)*acd299(49)
      acd299(50)=-acd299(36)*acd299(37)
      acd299(51)=-acd299(34)*acd299(35)
      acd299(50)=acd299(50)+acd299(51)
      acd299(50)=acd299(15)*acd299(50)
      acd299(51)=acd299(43)*acd299(44)
      acd299(52)=acd299(41)*acd299(42)
      acd299(53)=acd299(36)*acd299(40)
      acd299(54)=acd299(34)*acd299(39)
      acd299(55)=acd299(27)*acd299(38)
      acd299(56)=-acd299(21)*acd299(25)
      acd299(57)=acd299(19)*acd299(20)
      acd299(58)=-acd299(15)*acd299(16)
      acd299(58)=acd299(17)+acd299(58)
      acd299(58)=acd299(11)*acd299(58)
      acd299(59)=acd299(1)*acd299(8)
      acd299(60)=-acd299(27)*acd299(28)
      acd299(60)=acd299(29)+acd299(60)
      acd299(60)=acd299(3)*acd299(60)
      acd299(48)=acd299(60)+acd299(48)+acd299(49)+acd299(59)+acd299(58)+acd299(&
      &50)+acd299(57)+acd299(56)+acd299(55)+acd299(54)+acd299(53)+acd299(52)-ac&
      &d299(45)+acd299(51)
      acd299(48)=acd299(3)*acd299(48)
      acd299(49)=-acd299(13)*acd299(47)
      acd299(50)=-acd299(21)*acd299(23)
      acd299(51)=acd299(1)*acd299(5)
      acd299(49)=acd299(51)+acd299(50)+acd299(49)
      acd299(49)=acd299(2)*acd299(49)
      acd299(47)=acd299(18)*acd299(47)
      acd299(50)=-acd299(21)*acd299(26)
      acd299(51)=acd299(1)*acd299(9)
      acd299(47)=acd299(51)-acd299(46)+acd299(50)+acd299(47)
      acd299(47)=acd299(6)*acd299(47)
      acd299(50)=-acd299(1)*acd299(10)
      brack=acd299(47)+acd299(48)+acd299(49)+acd299(50)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd299h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(82) :: acd299
      complex(ki) :: brack
      acd299(1)=k2(iv1)
      acd299(2)=dotproduct(qshift,spvak4k2)
      acd299(3)=dotproduct(qshift,spvak7k2)
      acd299(4)=abb299(35)
      acd299(5)=abb299(22)
      acd299(6)=dotproduct(qshift,spval6k2)
      acd299(7)=abb299(14)
      acd299(8)=abb299(32)
      acd299(9)=abb299(33)
      acd299(10)=abb299(24)
      acd299(11)=l6(iv1)
      acd299(12)=abb299(31)
      acd299(13)=abb299(19)
      acd299(14)=abb299(13)
      acd299(15)=dotproduct(qshift,spvak1k2)
      acd299(16)=abb299(36)
      acd299(17)=abb299(34)
      acd299(18)=abb299(30)
      acd299(19)=k7(iv1)
      acd299(20)=abb299(60)
      acd299(21)=qshift(iv1)
      acd299(22)=abb299(29)
      acd299(23)=abb299(26)
      acd299(24)=abb299(17)
      acd299(25)=abb299(38)
      acd299(26)=abb299(37)
      acd299(27)=spvak4k2(iv1)
      acd299(28)=dotproduct(k2,qshift)
      acd299(29)=dotproduct(l6,qshift)
      acd299(30)=dotproduct(k7,qshift)
      acd299(31)=dotproduct(qshift,qshift)
      acd299(32)=spvak7k2(iv1)
      acd299(33)=dotproduct(qshift,spvak4k3)
      acd299(34)=abb299(20)
      acd299(35)=abb299(69)
      acd299(36)=abb299(27)
      acd299(37)=abb299(23)
      acd299(38)=abb299(21)
      acd299(39)=abb299(10)
      acd299(40)=dotproduct(qshift,spval6k3)
      acd299(41)=abb299(25)
      acd299(42)=dotproduct(qshift,spval6k7)
      acd299(43)=abb299(28)
      acd299(44)=abb299(12)
      acd299(45)=abb299(15)
      acd299(46)=abb299(72)
      acd299(47)=dotproduct(qshift,spval6k1)
      acd299(48)=abb299(18)
      acd299(49)=dotproduct(qshift,spval6l5)
      acd299(50)=abb299(56)
      acd299(51)=abb299(16)
      acd299(52)=spval6k2(iv1)
      acd299(53)=abb299(11)
      acd299(54)=spvak1k2(iv1)
      acd299(55)=spvak4k3(iv1)
      acd299(56)=spval6k3(iv1)
      acd299(57)=spval6k7(iv1)
      acd299(58)=spval6k1(iv1)
      acd299(59)=spval6l5(iv1)
      acd299(60)=acd299(29)+acd299(30)
      acd299(61)=acd299(14)*acd299(60)
      acd299(62)=acd299(33)*acd299(36)
      acd299(62)=acd299(62)-acd299(37)
      acd299(63)=acd299(62)*acd299(15)
      acd299(64)=acd299(33)*acd299(38)
      acd299(65)=acd299(31)*acd299(24)
      acd299(66)=acd299(28)*acd299(7)
      acd299(61)=-acd299(64)+acd299(65)-acd299(66)+acd299(63)+acd299(39)+acd299&
      &(61)
      acd299(63)=-acd299(52)*acd299(61)
      acd299(64)=-acd299(15)*acd299(36)
      acd299(64)=acd299(64)+acd299(38)
      acd299(64)=acd299(55)*acd299(64)
      acd299(62)=-acd299(54)*acd299(62)
      acd299(65)=acd299(11)+acd299(19)
      acd299(66)=-acd299(14)*acd299(65)
      acd299(67)=2.0_ki*acd299(21)
      acd299(68)=-acd299(24)*acd299(67)
      acd299(69)=acd299(1)*acd299(7)
      acd299(62)=acd299(69)+acd299(68)+acd299(66)+acd299(62)+acd299(64)
      acd299(62)=acd299(6)*acd299(62)
      acd299(64)=acd299(31)*acd299(22)
      acd299(66)=acd299(30)*acd299(12)
      acd299(68)=acd299(28)*acd299(4)
      acd299(64)=-acd299(68)+acd299(64)-acd299(66)
      acd299(66)=-acd299(27)*acd299(64)
      acd299(68)=acd299(43)*acd299(57)
      acd299(69)=acd299(41)*acd299(56)
      acd299(70)=acd299(11)*acd299(16)
      acd299(68)=acd299(70)+acd299(68)+acd299(69)
      acd299(68)=acd299(15)*acd299(68)
      acd299(69)=acd299(12)*acd299(65)
      acd299(70)=-acd299(22)*acd299(67)
      acd299(71)=acd299(1)*acd299(4)
      acd299(69)=acd299(71)+acd299(70)+acd299(69)
      acd299(69)=acd299(2)*acd299(69)
      acd299(70)=acd299(42)*acd299(43)
      acd299(71)=acd299(40)*acd299(41)
      acd299(70)=acd299(70)+acd299(71)
      acd299(71)=acd299(54)*acd299(70)
      acd299(72)=acd299(54)*acd299(16)
      acd299(73)=acd299(27)*acd299(12)
      acd299(72)=acd299(72)+acd299(73)
      acd299(72)=acd299(29)*acd299(72)
      acd299(73)=acd299(3)*acd299(34)
      acd299(73)=acd299(73)-acd299(44)
      acd299(73)=acd299(55)*acd299(73)
      acd299(74)=-acd299(50)*acd299(59)
      acd299(75)=-acd299(48)*acd299(58)
      acd299(76)=-acd299(46)*acd299(57)
      acd299(77)=-acd299(45)*acd299(56)
      acd299(78)=acd299(25)*acd299(67)
      acd299(79)=-acd299(19)*acd299(20)
      acd299(80)=-acd299(11)*acd299(17)
      acd299(81)=-acd299(1)*acd299(8)
      acd299(82)=acd299(33)*acd299(34)
      acd299(82)=-acd299(35)+acd299(82)
      acd299(82)=acd299(32)*acd299(82)
      acd299(62)=2.0_ki*acd299(82)+acd299(62)+acd299(63)+acd299(69)+acd299(68)+&
      &acd299(72)+acd299(66)+acd299(81)+acd299(80)+acd299(79)+acd299(78)+acd299&
      &(71)+acd299(77)+acd299(76)+acd299(74)+acd299(75)+acd299(73)
      acd299(62)=acd299(3)*acd299(62)
      acd299(61)=-acd299(6)*acd299(61)
      acd299(63)=acd299(29)*acd299(12)
      acd299(63)=acd299(63)-acd299(64)
      acd299(63)=acd299(2)*acd299(63)
      acd299(64)=acd299(29)*acd299(16)
      acd299(64)=acd299(64)+acd299(70)
      acd299(64)=acd299(15)*acd299(64)
      acd299(66)=-acd299(50)*acd299(49)
      acd299(68)=-acd299(48)*acd299(47)
      acd299(69)=-acd299(42)*acd299(46)
      acd299(70)=-acd299(40)*acd299(45)
      acd299(71)=-acd299(33)*acd299(44)
      acd299(72)=acd299(31)*acd299(25)
      acd299(73)=-acd299(30)*acd299(20)
      acd299(74)=-acd299(28)*acd299(8)
      acd299(75)=-acd299(29)*acd299(17)
      acd299(61)=acd299(61)+acd299(63)+acd299(64)+acd299(75)+acd299(74)+acd299(&
      &73)+acd299(72)+acd299(71)+acd299(70)+acd299(69)+acd299(68)+acd299(51)+ac&
      &d299(66)
      acd299(61)=acd299(32)*acd299(61)
      acd299(63)=acd299(13)*acd299(60)
      acd299(64)=acd299(31)*acd299(23)
      acd299(66)=-acd299(28)*acd299(5)
      acd299(63)=acd299(66)+acd299(64)+acd299(63)
      acd299(63)=acd299(27)*acd299(63)
      acd299(64)=acd299(13)*acd299(65)
      acd299(66)=acd299(23)*acd299(67)
      acd299(68)=-acd299(1)*acd299(5)
      acd299(64)=acd299(68)+acd299(66)+acd299(64)
      acd299(64)=acd299(2)*acd299(64)
      acd299(60)=-acd299(18)*acd299(60)
      acd299(66)=acd299(31)*acd299(26)
      acd299(68)=-acd299(28)*acd299(9)
      acd299(60)=acd299(68)+acd299(53)+acd299(66)+acd299(60)
      acd299(60)=acd299(52)*acd299(60)
      acd299(65)=-acd299(18)*acd299(65)
      acd299(66)=acd299(26)*acd299(67)
      acd299(67)=-acd299(1)*acd299(9)
      acd299(65)=acd299(67)+acd299(66)+acd299(65)
      acd299(65)=acd299(6)*acd299(65)
      acd299(66)=acd299(1)*acd299(10)
      brack=acd299(60)+acd299(61)+acd299(62)+acd299(63)+acd299(64)+acd299(65)+a&
      &cd299(66)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd299h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(95) :: acd299
      complex(ki) :: brack
      acd299(1)=d(iv1,iv2)
      acd299(2)=dotproduct(qshift,spvak4k2)
      acd299(3)=dotproduct(qshift,spvak7k2)
      acd299(4)=abb299(29)
      acd299(5)=abb299(26)
      acd299(6)=dotproduct(qshift,spval6k2)
      acd299(7)=abb299(17)
      acd299(8)=abb299(38)
      acd299(9)=abb299(37)
      acd299(10)=k2(iv1)
      acd299(11)=spvak4k2(iv2)
      acd299(12)=abb299(35)
      acd299(13)=abb299(22)
      acd299(14)=spvak7k2(iv2)
      acd299(15)=abb299(14)
      acd299(16)=abb299(32)
      acd299(17)=spval6k2(iv2)
      acd299(18)=abb299(33)
      acd299(19)=k2(iv2)
      acd299(20)=spvak4k2(iv1)
      acd299(21)=spvak7k2(iv1)
      acd299(22)=spval6k2(iv1)
      acd299(23)=l6(iv1)
      acd299(24)=abb299(31)
      acd299(25)=abb299(19)
      acd299(26)=abb299(13)
      acd299(27)=dotproduct(qshift,spvak1k2)
      acd299(28)=abb299(36)
      acd299(29)=abb299(34)
      acd299(30)=abb299(30)
      acd299(31)=spvak1k2(iv2)
      acd299(32)=l6(iv2)
      acd299(33)=spvak1k2(iv1)
      acd299(34)=k7(iv1)
      acd299(35)=abb299(60)
      acd299(36)=k7(iv2)
      acd299(37)=qshift(iv1)
      acd299(38)=qshift(iv2)
      acd299(39)=dotproduct(k2,qshift)
      acd299(40)=dotproduct(l6,qshift)
      acd299(41)=dotproduct(k7,qshift)
      acd299(42)=dotproduct(qshift,qshift)
      acd299(43)=dotproduct(qshift,spvak4k3)
      acd299(44)=abb299(20)
      acd299(45)=abb299(69)
      acd299(46)=abb299(27)
      acd299(47)=abb299(23)
      acd299(48)=abb299(21)
      acd299(49)=abb299(10)
      acd299(50)=dotproduct(qshift,spval6k3)
      acd299(51)=abb299(25)
      acd299(52)=dotproduct(qshift,spval6k7)
      acd299(53)=abb299(28)
      acd299(54)=spvak4k3(iv2)
      acd299(55)=abb299(12)
      acd299(56)=spval6k3(iv2)
      acd299(57)=abb299(15)
      acd299(58)=spval6k7(iv2)
      acd299(59)=abb299(72)
      acd299(60)=spval6k1(iv2)
      acd299(61)=abb299(18)
      acd299(62)=spval6l5(iv2)
      acd299(63)=abb299(56)
      acd299(64)=spvak4k3(iv1)
      acd299(65)=spval6k3(iv1)
      acd299(66)=spval6k7(iv1)
      acd299(67)=spval6k1(iv1)
      acd299(68)=spval6l5(iv1)
      acd299(69)=acd299(46)*acd299(43)
      acd299(69)=acd299(69)-acd299(47)
      acd299(70)=acd299(69)*acd299(27)
      acd299(71)=acd299(15)*acd299(39)
      acd299(72)=acd299(7)*acd299(42)
      acd299(73)=acd299(43)*acd299(48)
      acd299(74)=acd299(40)+acd299(41)
      acd299(75)=acd299(74)*acd299(26)
      acd299(70)=acd299(70)-acd299(71)+acd299(72)-acd299(73)+acd299(75)+acd299(&
      &49)
      acd299(71)=acd299(22)*acd299(70)
      acd299(72)=acd299(27)*acd299(46)
      acd299(72)=acd299(72)-acd299(48)
      acd299(73)=-acd299(64)*acd299(72)
      acd299(75)=-acd299(33)*acd299(69)
      acd299(76)=acd299(10)*acd299(15)
      acd299(77)=2.0_ki*acd299(37)
      acd299(78)=acd299(77)*acd299(7)
      acd299(79)=acd299(23)+acd299(34)
      acd299(80)=acd299(79)*acd299(26)
      acd299(73)=-acd299(78)-acd299(80)+acd299(76)+acd299(75)+acd299(73)
      acd299(75)=-acd299(6)*acd299(73)
      acd299(76)=acd299(10)*acd299(12)
      acd299(78)=acd299(77)*acd299(4)
      acd299(80)=acd299(79)*acd299(24)
      acd299(76)=acd299(80)+acd299(76)-acd299(78)
      acd299(78)=-acd299(2)*acd299(76)
      acd299(80)=acd299(53)*acd299(52)
      acd299(81)=acd299(51)*acd299(50)
      acd299(82)=acd299(28)*acd299(40)
      acd299(80)=acd299(82)+acd299(80)+acd299(81)
      acd299(81)=-acd299(33)*acd299(80)
      acd299(82)=acd299(12)*acd299(39)
      acd299(83)=acd299(4)*acd299(42)
      acd299(74)=acd299(74)*acd299(24)
      acd299(74)=acd299(74)+acd299(82)-acd299(83)
      acd299(82)=-acd299(20)*acd299(74)
      acd299(83)=acd299(53)*acd299(66)
      acd299(84)=acd299(51)*acd299(65)
      acd299(85)=acd299(23)*acd299(28)
      acd299(83)=acd299(85)+acd299(83)+acd299(84)
      acd299(84)=-acd299(27)*acd299(83)
      acd299(85)=acd299(3)*acd299(44)
      acd299(85)=-acd299(55)+2.0_ki*acd299(85)
      acd299(86)=-acd299(64)*acd299(85)
      acd299(87)=acd299(63)*acd299(68)
      acd299(88)=acd299(61)*acd299(67)
      acd299(89)=acd299(66)*acd299(59)
      acd299(90)=acd299(65)*acd299(57)
      acd299(91)=-acd299(8)*acd299(77)
      acd299(92)=acd299(34)*acd299(35)
      acd299(93)=acd299(10)*acd299(16)
      acd299(94)=acd299(23)*acd299(29)
      acd299(95)=-acd299(43)*acd299(44)
      acd299(95)=acd299(45)+acd299(95)
      acd299(95)=acd299(21)*acd299(95)
      acd299(71)=2.0_ki*acd299(95)+acd299(75)+acd299(71)+acd299(84)+acd299(82)+&
      &acd299(81)+acd299(94)+acd299(93)+acd299(92)+acd299(91)+acd299(90)+acd299&
      &(89)+acd299(87)+acd299(88)+acd299(78)+acd299(86)
      acd299(71)=acd299(14)*acd299(71)
      acd299(70)=acd299(17)*acd299(70)
      acd299(72)=-acd299(54)*acd299(72)
      acd299(69)=-acd299(31)*acd299(69)
      acd299(75)=acd299(19)*acd299(15)
      acd299(78)=2.0_ki*acd299(38)
      acd299(81)=acd299(78)*acd299(7)
      acd299(82)=acd299(32)+acd299(36)
      acd299(84)=acd299(82)*acd299(26)
      acd299(69)=-acd299(81)-acd299(84)+acd299(75)+acd299(69)+acd299(72)
      acd299(72)=-acd299(6)*acd299(69)
      acd299(75)=acd299(19)*acd299(12)
      acd299(81)=acd299(78)*acd299(4)
      acd299(84)=acd299(82)*acd299(24)
      acd299(75)=acd299(84)+acd299(75)-acd299(81)
      acd299(81)=-acd299(2)*acd299(75)
      acd299(80)=-acd299(31)*acd299(80)
      acd299(74)=-acd299(11)*acd299(74)
      acd299(84)=acd299(53)*acd299(58)
      acd299(86)=acd299(51)*acd299(56)
      acd299(87)=acd299(32)*acd299(28)
      acd299(84)=acd299(87)+acd299(84)+acd299(86)
      acd299(86)=-acd299(27)*acd299(84)
      acd299(85)=-acd299(54)*acd299(85)
      acd299(87)=acd299(63)*acd299(62)
      acd299(88)=acd299(61)*acd299(60)
      acd299(89)=acd299(58)*acd299(59)
      acd299(90)=acd299(56)*acd299(57)
      acd299(91)=-acd299(8)*acd299(78)
      acd299(92)=acd299(36)*acd299(35)
      acd299(93)=acd299(19)*acd299(16)
      acd299(94)=acd299(32)*acd299(29)
      acd299(70)=acd299(72)+acd299(70)+acd299(86)+acd299(74)+acd299(80)+acd299(&
      &94)+acd299(93)+acd299(92)+acd299(91)+acd299(90)+acd299(89)+acd299(87)+ac&
      &d299(88)+acd299(81)+acd299(85)
      acd299(70)=acd299(21)*acd299(70)
      acd299(69)=-acd299(22)*acd299(69)
      acd299(72)=-acd299(17)*acd299(73)
      acd299(73)=-acd299(33)*acd299(84)
      acd299(74)=-acd299(31)*acd299(83)
      acd299(75)=-acd299(20)*acd299(75)
      acd299(76)=-acd299(11)*acd299(76)
      acd299(80)=acd299(33)*acd299(54)
      acd299(81)=acd299(31)*acd299(64)
      acd299(80)=acd299(80)+acd299(81)
      acd299(80)=acd299(46)*acd299(80)
      acd299(81)=2.0_ki*acd299(7)
      acd299(81)=acd299(1)*acd299(81)
      acd299(80)=acd299(81)+acd299(80)
      acd299(80)=acd299(6)*acd299(80)
      acd299(81)=acd299(2)*acd299(4)
      acd299(81)=-acd299(8)+acd299(81)
      acd299(81)=acd299(1)*acd299(81)
      acd299(69)=acd299(80)+acd299(72)+acd299(69)+acd299(76)+acd299(75)+acd299(&
      &74)+2.0_ki*acd299(81)+acd299(73)
      acd299(69)=acd299(3)*acd299(69)
      acd299(72)=-acd299(25)*acd299(82)
      acd299(73)=-acd299(5)*acd299(78)
      acd299(74)=acd299(19)*acd299(13)
      acd299(72)=acd299(74)+acd299(73)+acd299(72)
      acd299(72)=acd299(20)*acd299(72)
      acd299(73)=-acd299(25)*acd299(79)
      acd299(74)=-acd299(5)*acd299(77)
      acd299(75)=acd299(10)*acd299(13)
      acd299(73)=acd299(75)+acd299(74)+acd299(73)
      acd299(73)=acd299(11)*acd299(73)
      acd299(74)=acd299(30)*acd299(82)
      acd299(75)=-acd299(9)*acd299(78)
      acd299(76)=acd299(19)*acd299(18)
      acd299(74)=acd299(76)+acd299(75)+acd299(74)
      acd299(74)=acd299(22)*acd299(74)
      acd299(75)=acd299(30)*acd299(79)
      acd299(76)=-acd299(9)*acd299(77)
      acd299(77)=acd299(10)*acd299(18)
      acd299(75)=acd299(77)+acd299(76)+acd299(75)
      acd299(75)=acd299(17)*acd299(75)
      acd299(76)=-acd299(2)*acd299(5)
      acd299(77)=-acd299(6)*acd299(9)
      acd299(76)=acd299(77)+acd299(76)
      acd299(77)=2.0_ki*acd299(1)
      acd299(76)=acd299(77)*acd299(76)
      brack=acd299(69)+acd299(70)+acd299(71)+acd299(72)+acd299(73)+acd299(74)+a&
      &cd299(75)+acd299(76)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd299h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd299
      complex(ki) :: brack
      acd299(1)=d(iv1,iv2)
      acd299(2)=spvak4k2(iv3)
      acd299(3)=dotproduct(qshift,spvak7k2)
      acd299(4)=abb299(29)
      acd299(5)=abb299(26)
      acd299(6)=spvak7k2(iv3)
      acd299(7)=dotproduct(qshift,spvak4k2)
      acd299(8)=dotproduct(qshift,spval6k2)
      acd299(9)=abb299(17)
      acd299(10)=abb299(38)
      acd299(11)=spval6k2(iv3)
      acd299(12)=abb299(37)
      acd299(13)=d(iv1,iv3)
      acd299(14)=spvak4k2(iv2)
      acd299(15)=spvak7k2(iv2)
      acd299(16)=spval6k2(iv2)
      acd299(17)=d(iv2,iv3)
      acd299(18)=spvak4k2(iv1)
      acd299(19)=spvak7k2(iv1)
      acd299(20)=spval6k2(iv1)
      acd299(21)=k2(iv1)
      acd299(22)=abb299(35)
      acd299(23)=abb299(14)
      acd299(24)=k2(iv2)
      acd299(25)=k2(iv3)
      acd299(26)=l6(iv1)
      acd299(27)=abb299(31)
      acd299(28)=abb299(13)
      acd299(29)=spvak1k2(iv3)
      acd299(30)=abb299(36)
      acd299(31)=spvak1k2(iv2)
      acd299(32)=l6(iv2)
      acd299(33)=spvak1k2(iv1)
      acd299(34)=l6(iv3)
      acd299(35)=k7(iv1)
      acd299(36)=k7(iv2)
      acd299(37)=k7(iv3)
      acd299(38)=qshift(iv1)
      acd299(39)=qshift(iv2)
      acd299(40)=qshift(iv3)
      acd299(41)=spvak4k3(iv3)
      acd299(42)=abb299(20)
      acd299(43)=spvak4k3(iv2)
      acd299(44)=dotproduct(qshift,spvak4k3)
      acd299(45)=abb299(27)
      acd299(46)=abb299(23)
      acd299(47)=dotproduct(qshift,spvak1k2)
      acd299(48)=abb299(21)
      acd299(49)=spval6k3(iv3)
      acd299(50)=abb299(25)
      acd299(51)=spval6k7(iv3)
      acd299(52)=abb299(28)
      acd299(53)=spval6k3(iv2)
      acd299(54)=spval6k7(iv2)
      acd299(55)=spvak4k3(iv1)
      acd299(56)=spval6k3(iv1)
      acd299(57)=spval6k7(iv1)
      acd299(58)=acd299(23)*acd299(24)
      acd299(59)=acd299(43)*acd299(48)
      acd299(60)=acd299(31)*acd299(46)
      acd299(61)=2.0_ki*acd299(9)
      acd299(62)=acd299(61)*acd299(39)
      acd299(63)=acd299(32)+acd299(36)
      acd299(64)=acd299(63)*acd299(28)
      acd299(58)=acd299(58)+acd299(60)-acd299(62)+acd299(59)-acd299(64)
      acd299(59)=acd299(20)*acd299(58)
      acd299(60)=acd299(23)*acd299(21)
      acd299(62)=acd299(55)*acd299(48)
      acd299(64)=acd299(33)*acd299(46)
      acd299(65)=acd299(61)*acd299(38)
      acd299(66)=acd299(26)+acd299(35)
      acd299(67)=acd299(66)*acd299(28)
      acd299(60)=acd299(60)-acd299(65)-acd299(67)+acd299(62)+acd299(64)
      acd299(62)=acd299(16)*acd299(60)
      acd299(64)=acd299(33)*acd299(43)
      acd299(65)=acd299(31)*acd299(55)
      acd299(64)=acd299(64)+acd299(65)
      acd299(65)=-acd299(8)*acd299(64)
      acd299(67)=acd299(43)*acd299(47)
      acd299(68)=acd299(31)*acd299(44)
      acd299(67)=acd299(67)+acd299(68)
      acd299(68)=-acd299(20)*acd299(67)
      acd299(69)=acd299(55)*acd299(47)
      acd299(70)=acd299(33)*acd299(44)
      acd299(69)=acd299(69)+acd299(70)
      acd299(70)=-acd299(16)*acd299(69)
      acd299(65)=acd299(70)+acd299(68)+acd299(65)
      acd299(65)=acd299(45)*acd299(65)
      acd299(68)=-acd299(1)*acd299(7)
      acd299(70)=-acd299(18)*acd299(39)
      acd299(71)=-acd299(14)*acd299(38)
      acd299(68)=acd299(71)+acd299(68)+acd299(70)
      acd299(70)=2.0_ki*acd299(4)
      acd299(68)=acd299(68)*acd299(70)
      acd299(71)=acd299(52)*acd299(54)
      acd299(72)=acd299(50)*acd299(53)
      acd299(73)=acd299(30)*acd299(32)
      acd299(71)=acd299(73)+acd299(71)+acd299(72)
      acd299(72)=acd299(33)*acd299(71)
      acd299(73)=acd299(52)*acd299(57)
      acd299(74)=acd299(50)*acd299(56)
      acd299(75)=acd299(26)*acd299(30)
      acd299(73)=acd299(75)+acd299(73)+acd299(74)
      acd299(74)=acd299(31)*acd299(73)
      acd299(75)=acd299(18)*acd299(24)
      acd299(76)=acd299(14)*acd299(21)
      acd299(75)=acd299(76)+acd299(75)
      acd299(75)=acd299(22)*acd299(75)
      acd299(76)=acd299(18)*acd299(63)
      acd299(77)=acd299(14)*acd299(66)
      acd299(76)=acd299(76)+acd299(77)
      acd299(76)=acd299(27)*acd299(76)
      acd299(77)=acd299(61)*acd299(8)
      acd299(77)=acd299(77)-2.0_ki*acd299(10)
      acd299(78)=-acd299(1)*acd299(77)
      acd299(79)=2.0_ki*acd299(42)
      acd299(80)=acd299(79)*acd299(19)
      acd299(81)=acd299(43)*acd299(80)
      acd299(79)=acd299(15)*acd299(55)*acd299(79)
      acd299(59)=acd299(79)+acd299(81)+acd299(65)+acd299(62)+acd299(59)+acd299(&
      &74)+acd299(72)+acd299(68)+acd299(76)+acd299(78)+acd299(75)
      acd299(59)=acd299(6)*acd299(59)
      acd299(62)=acd299(23)*acd299(25)
      acd299(65)=acd299(41)*acd299(48)
      acd299(68)=acd299(29)*acd299(46)
      acd299(61)=acd299(61)*acd299(40)
      acd299(72)=acd299(34)+acd299(37)
      acd299(74)=acd299(72)*acd299(28)
      acd299(61)=acd299(62)+acd299(68)-acd299(61)+acd299(65)-acd299(74)
      acd299(62)=acd299(20)*acd299(61)
      acd299(60)=acd299(11)*acd299(60)
      acd299(65)=acd299(41)*acd299(47)
      acd299(68)=acd299(29)*acd299(44)
      acd299(65)=acd299(65)+acd299(68)
      acd299(68)=-acd299(20)*acd299(65)
      acd299(69)=-acd299(11)*acd299(69)
      acd299(74)=acd299(33)*acd299(41)
      acd299(75)=-acd299(8)*acd299(74)
      acd299(76)=acd299(29)*acd299(8)
      acd299(78)=-acd299(55)*acd299(76)
      acd299(68)=acd299(69)+acd299(68)+acd299(75)+acd299(78)
      acd299(68)=acd299(45)*acd299(68)
      acd299(69)=-acd299(13)*acd299(7)
      acd299(75)=-acd299(18)*acd299(40)
      acd299(78)=-acd299(2)*acd299(38)
      acd299(69)=acd299(78)+acd299(69)+acd299(75)
      acd299(69)=acd299(69)*acd299(70)
      acd299(75)=acd299(52)*acd299(51)
      acd299(78)=acd299(50)*acd299(49)
      acd299(79)=acd299(30)*acd299(34)
      acd299(75)=acd299(79)+acd299(75)+acd299(78)
      acd299(78)=acd299(33)*acd299(75)
      acd299(73)=acd299(29)*acd299(73)
      acd299(79)=acd299(18)*acd299(25)
      acd299(81)=acd299(2)*acd299(21)
      acd299(79)=acd299(81)+acd299(79)
      acd299(79)=acd299(22)*acd299(79)
      acd299(81)=acd299(18)*acd299(72)
      acd299(66)=acd299(2)*acd299(66)
      acd299(66)=acd299(81)+acd299(66)
      acd299(66)=acd299(27)*acd299(66)
      acd299(81)=-acd299(13)*acd299(77)
      acd299(80)=acd299(41)*acd299(80)
      acd299(60)=acd299(80)+acd299(68)+acd299(60)+acd299(62)+acd299(73)+acd299(&
      &78)+acd299(69)+acd299(66)+acd299(81)+acd299(79)
      acd299(60)=acd299(15)*acd299(60)
      acd299(61)=acd299(16)*acd299(61)
      acd299(58)=acd299(11)*acd299(58)
      acd299(62)=-acd299(16)*acd299(65)
      acd299(65)=-acd299(11)*acd299(67)
      acd299(66)=acd299(31)*acd299(41)
      acd299(67)=-acd299(8)*acd299(66)
      acd299(68)=-acd299(43)*acd299(76)
      acd299(62)=acd299(65)+acd299(62)+acd299(67)+acd299(68)
      acd299(62)=acd299(45)*acd299(62)
      acd299(65)=-acd299(17)*acd299(7)
      acd299(67)=-acd299(14)*acd299(40)
      acd299(68)=-acd299(2)*acd299(39)
      acd299(65)=acd299(68)+acd299(65)+acd299(67)
      acd299(65)=acd299(65)*acd299(70)
      acd299(67)=acd299(31)*acd299(75)
      acd299(68)=acd299(29)*acd299(71)
      acd299(69)=acd299(14)*acd299(25)
      acd299(70)=acd299(2)*acd299(24)
      acd299(69)=acd299(70)+acd299(69)
      acd299(69)=acd299(22)*acd299(69)
      acd299(70)=acd299(14)*acd299(72)
      acd299(63)=acd299(2)*acd299(63)
      acd299(63)=acd299(70)+acd299(63)
      acd299(63)=acd299(27)*acd299(63)
      acd299(70)=-acd299(17)*acd299(77)
      acd299(58)=acd299(62)+acd299(58)+acd299(61)+acd299(68)+acd299(67)+acd299(&
      &65)+acd299(63)+acd299(70)+acd299(69)
      acd299(58)=acd299(19)*acd299(58)
      acd299(61)=-acd299(20)*acd299(17)
      acd299(62)=-acd299(16)*acd299(13)
      acd299(63)=-acd299(11)*acd299(1)
      acd299(61)=acd299(63)+acd299(62)+acd299(61)
      acd299(62)=acd299(3)*acd299(9)
      acd299(62)=acd299(62)-acd299(12)
      acd299(61)=acd299(62)*acd299(61)
      acd299(62)=acd299(18)*acd299(17)
      acd299(63)=acd299(14)*acd299(13)
      acd299(65)=acd299(2)*acd299(1)
      acd299(62)=acd299(65)+acd299(62)+acd299(63)
      acd299(63)=-acd299(3)*acd299(4)
      acd299(63)=acd299(63)+acd299(5)
      acd299(62)=acd299(62)*acd299(63)
      acd299(61)=acd299(62)+acd299(61)
      acd299(62)=-acd299(3)*acd299(66)
      acd299(63)=acd299(29)*acd299(3)
      acd299(65)=-acd299(43)*acd299(63)
      acd299(62)=acd299(62)+acd299(65)
      acd299(62)=acd299(20)*acd299(62)
      acd299(65)=-acd299(3)*acd299(74)
      acd299(63)=-acd299(55)*acd299(63)
      acd299(63)=acd299(65)+acd299(63)
      acd299(63)=acd299(16)*acd299(63)
      acd299(64)=-acd299(11)*acd299(3)*acd299(64)
      acd299(62)=acd299(64)+acd299(62)+acd299(63)
      acd299(62)=acd299(45)*acd299(62)
      brack=acd299(58)+acd299(59)+acd299(60)+2.0_ki*acd299(61)+acd299(62)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd299h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd299
      complex(ki) :: brack
      acd299(1)=d(iv1,iv2)
      acd299(2)=spvak4k2(iv3)
      acd299(3)=spvak7k2(iv4)
      acd299(4)=abb299(29)
      acd299(5)=spvak4k2(iv4)
      acd299(6)=spvak7k2(iv3)
      acd299(7)=spval6k2(iv4)
      acd299(8)=abb299(17)
      acd299(9)=spval6k2(iv3)
      acd299(10)=d(iv1,iv3)
      acd299(11)=spvak4k2(iv2)
      acd299(12)=spvak7k2(iv2)
      acd299(13)=spval6k2(iv2)
      acd299(14)=d(iv1,iv4)
      acd299(15)=d(iv2,iv3)
      acd299(16)=spvak4k2(iv1)
      acd299(17)=spvak7k2(iv1)
      acd299(18)=spval6k2(iv1)
      acd299(19)=d(iv2,iv4)
      acd299(20)=d(iv3,iv4)
      acd299(21)=spvak1k2(iv3)
      acd299(22)=spvak4k3(iv4)
      acd299(23)=abb299(27)
      acd299(24)=spvak1k2(iv4)
      acd299(25)=spvak4k3(iv3)
      acd299(26)=spvak1k2(iv2)
      acd299(27)=spvak4k3(iv2)
      acd299(28)=spvak1k2(iv1)
      acd299(29)=spvak4k3(iv1)
      acd299(30)=acd299(24)*acd299(25)
      acd299(31)=acd299(21)*acd299(22)
      acd299(30)=acd299(30)+acd299(31)
      acd299(31)=acd299(13)*acd299(30)
      acd299(32)=acd299(24)*acd299(27)
      acd299(33)=acd299(22)*acd299(26)
      acd299(32)=acd299(32)+acd299(33)
      acd299(33)=acd299(9)*acd299(32)
      acd299(34)=acd299(25)*acd299(26)
      acd299(35)=acd299(21)*acd299(27)
      acd299(34)=acd299(34)+acd299(35)
      acd299(35)=acd299(7)*acd299(34)
      acd299(31)=acd299(35)+acd299(31)+acd299(33)
      acd299(31)=acd299(17)*acd299(31)
      acd299(30)=acd299(18)*acd299(30)
      acd299(33)=acd299(24)*acd299(29)
      acd299(35)=acd299(22)*acd299(28)
      acd299(33)=acd299(33)+acd299(35)
      acd299(35)=acd299(9)*acd299(33)
      acd299(36)=acd299(25)*acd299(28)
      acd299(37)=acd299(21)*acd299(29)
      acd299(36)=acd299(36)+acd299(37)
      acd299(37)=acd299(7)*acd299(36)
      acd299(30)=acd299(37)+acd299(30)+acd299(35)
      acd299(30)=acd299(12)*acd299(30)
      acd299(32)=acd299(18)*acd299(32)
      acd299(33)=acd299(13)*acd299(33)
      acd299(35)=acd299(27)*acd299(28)
      acd299(37)=acd299(26)*acd299(29)
      acd299(35)=acd299(35)+acd299(37)
      acd299(37)=acd299(7)*acd299(35)
      acd299(32)=acd299(37)+acd299(32)+acd299(33)
      acd299(32)=acd299(6)*acd299(32)
      acd299(33)=acd299(18)*acd299(34)
      acd299(34)=acd299(13)*acd299(36)
      acd299(35)=acd299(9)*acd299(35)
      acd299(33)=acd299(35)+acd299(33)+acd299(34)
      acd299(33)=acd299(3)*acd299(33)
      acd299(30)=acd299(33)+acd299(32)+acd299(31)+acd299(30)
      acd299(30)=acd299(23)*acd299(30)
      acd299(31)=acd299(13)*acd299(20)
      acd299(32)=acd299(9)*acd299(19)
      acd299(33)=acd299(7)*acd299(15)
      acd299(31)=acd299(33)+acd299(31)+acd299(32)
      acd299(31)=acd299(17)*acd299(31)
      acd299(32)=acd299(18)*acd299(20)
      acd299(33)=acd299(9)*acd299(14)
      acd299(34)=acd299(7)*acd299(10)
      acd299(32)=acd299(34)+acd299(32)+acd299(33)
      acd299(32)=acd299(12)*acd299(32)
      acd299(33)=acd299(18)*acd299(19)
      acd299(34)=acd299(13)*acd299(14)
      acd299(35)=acd299(7)*acd299(1)
      acd299(33)=acd299(35)+acd299(33)+acd299(34)
      acd299(33)=acd299(6)*acd299(33)
      acd299(31)=acd299(33)+acd299(31)+acd299(32)
      acd299(31)=acd299(8)*acd299(31)
      acd299(32)=acd299(20)*acd299(11)
      acd299(33)=acd299(19)*acd299(2)
      acd299(34)=acd299(15)*acd299(5)
      acd299(32)=acd299(34)+acd299(32)+acd299(33)
      acd299(32)=acd299(17)*acd299(32)
      acd299(33)=acd299(20)*acd299(16)
      acd299(34)=acd299(14)*acd299(2)
      acd299(35)=acd299(10)*acd299(5)
      acd299(33)=acd299(35)+acd299(33)+acd299(34)
      acd299(33)=acd299(12)*acd299(33)
      acd299(34)=acd299(19)*acd299(16)
      acd299(35)=acd299(14)*acd299(11)
      acd299(36)=acd299(1)*acd299(5)
      acd299(34)=acd299(36)+acd299(34)+acd299(35)
      acd299(34)=acd299(6)*acd299(34)
      acd299(32)=acd299(34)+acd299(32)+acd299(33)
      acd299(32)=acd299(4)*acd299(32)
      acd299(33)=acd299(18)*acd299(15)
      acd299(34)=acd299(13)*acd299(10)
      acd299(35)=acd299(9)*acd299(1)
      acd299(33)=acd299(35)+acd299(33)+acd299(34)
      acd299(33)=acd299(8)*acd299(33)
      acd299(34)=acd299(15)*acd299(16)
      acd299(35)=acd299(10)*acd299(11)
      acd299(36)=acd299(1)*acd299(2)
      acd299(34)=acd299(36)+acd299(34)+acd299(35)
      acd299(34)=acd299(4)*acd299(34)
      acd299(33)=acd299(33)+acd299(34)
      acd299(33)=acd299(3)*acd299(33)
      acd299(31)=acd299(33)+acd299(32)+acd299(31)
      brack=acd299(30)+2.0_ki*acd299(31)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd299h4
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
!---#[ subroutine reconstruct_d299:
   subroutine     reconstruct_d299(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_299:
      coeffs%coeffs_299%c0 = derivative(czip)
      coeffs%coeffs_299%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_299%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_299%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_299%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_299%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_299%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_299%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_299%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_299%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_299%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_299%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_299%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_299%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_299%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_299%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_299%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_299%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_299%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_299%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_299%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_299%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_299%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_299%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_299%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_299%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_299%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_299%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_299%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_299%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_299%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_299%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_299%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_299%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_299%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_299%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_299%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_299%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_299%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_299%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_299%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_299%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_299%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_299%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_299%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_299%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_299%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_299%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_299%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_299%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_299%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_299%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_299%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_299%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_299%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_299%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_299%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_299%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_299%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_299%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_299%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_299%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_299%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_299%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_299%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_299%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_299%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_299%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_299%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_299%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_299:
   end subroutine reconstruct_d299
!---#] subroutine reconstruct_d299:
end module     p0_dbaru_epnebbbarg_d299h4l1d
