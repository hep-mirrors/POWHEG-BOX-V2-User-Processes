module     p0_dbaru_epnebbbarg_d127h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d127h3l1d.f90
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
   public :: derivative , reconstruct_d127
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd127h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(61) :: acd127
      complex(ki) :: brack
      acd127(1)=dotproduct(k1,qshift)
      acd127(2)=dotproduct(k2,qshift)
      acd127(3)=abb127(30)
      acd127(4)=dotproduct(qshift,spvak1k3)
      acd127(5)=abb127(21)
      acd127(6)=dotproduct(qshift,spvak2l5)
      acd127(7)=abb127(47)
      acd127(8)=dotproduct(qshift,spvak2l6)
      acd127(9)=abb127(46)
      acd127(10)=dotproduct(qshift,spvak2k7)
      acd127(11)=abb127(42)
      acd127(12)=dotproduct(qshift,spvak4k2)
      acd127(13)=abb127(35)
      acd127(14)=dotproduct(qshift,spvak4k3)
      acd127(15)=abb127(32)
      acd127(16)=abb127(27)
      acd127(17)=dotproduct(k3,qshift)
      acd127(18)=dotproduct(k4,qshift)
      acd127(19)=dotproduct(qshift,qshift)
      acd127(20)=abb127(31)
      acd127(21)=abb127(29)
      acd127(22)=abb127(16)
      acd127(23)=abb127(61)
      acd127(24)=abb127(25)
      acd127(25)=abb127(23)
      acd127(26)=abb127(19)
      acd127(27)=abb127(28)
      acd127(28)=abb127(24)
      acd127(29)=abb127(20)
      acd127(30)=abb127(33)
      acd127(31)=abb127(26)
      acd127(32)=dotproduct(qshift,spvak1k2)
      acd127(33)=abb127(37)
      acd127(34)=abb127(15)
      acd127(35)=abb127(39)
      acd127(36)=abb127(36)
      acd127(37)=abb127(22)
      acd127(38)=abb127(43)
      acd127(39)=abb127(12)
      acd127(40)=abb127(17)
      acd127(41)=abb127(40)
      acd127(42)=abb127(38)
      acd127(43)=abb127(34)
      acd127(44)=abb127(14)
      acd127(45)=dotproduct(qshift,spvak1k4)
      acd127(46)=dotproduct(qshift,spvak3k2)
      acd127(47)=abb127(18)
      acd127(48)=abb127(13)
      acd127(49)=abb127(45)
      acd127(50)=acd127(15)*acd127(1)
      acd127(51)=acd127(21)*acd127(2)
      acd127(52)=-acd127(26)*acd127(19)
      acd127(53)=acd127(31)*acd127(4)
      acd127(54)=acd127(42)*acd127(12)
      acd127(55)=-acd127(45)*acd127(24)
      acd127(56)=acd127(46)*acd127(25)
      acd127(50)=-acd127(47)+acd127(56)+acd127(55)+acd127(54)+acd127(53)+acd127&
      &(52)+acd127(51)+acd127(50)
      acd127(50)=acd127(14)*acd127(50)
      acd127(51)=-acd127(33)*acd127(6)
      acd127(52)=-acd127(36)*acd127(8)
      acd127(53)=-acd127(39)*acd127(10)
      acd127(51)=acd127(44)+acd127(53)+acd127(52)+acd127(51)
      acd127(51)=acd127(51)*acd127(14)
      acd127(52)=acd127(34)*acd127(6)
      acd127(53)=acd127(37)*acd127(8)
      acd127(54)=acd127(40)*acd127(10)
      acd127(51)=-acd127(48)+acd127(54)+acd127(53)+acd127(52)+acd127(51)
      acd127(51)=acd127(32)*acd127(51)
      acd127(52)=-acd127(3)*acd127(2)
      acd127(53)=acd127(5)*acd127(4)
      acd127(54)=-acd127(13)*acd127(12)
      acd127(52)=acd127(54)+acd127(52)+acd127(53)
      acd127(53)=acd127(18)+acd127(17)
      acd127(54)=acd127(53)-acd127(1)
      acd127(52)=acd127(54)*acd127(52)
      acd127(54)=acd127(28)*acd127(6)
      acd127(55)=acd127(29)*acd127(8)
      acd127(56)=acd127(30)*acd127(10)
      acd127(54)=acd127(56)+acd127(55)+acd127(54)
      acd127(54)=acd127(4)*acd127(54)
      acd127(55)=acd127(7)*acd127(6)
      acd127(56)=acd127(9)*acd127(8)
      acd127(57)=acd127(11)*acd127(10)
      acd127(55)=-acd127(16)+acd127(57)+acd127(56)+acd127(55)
      acd127(55)=acd127(1)*acd127(55)
      acd127(56)=-acd127(24)*acd127(4)
      acd127(57)=acd127(25)*acd127(12)
      acd127(58)=-acd127(20)*acd127(2)
      acd127(56)=acd127(27)+acd127(58)+acd127(57)+acd127(56)
      acd127(56)=acd127(19)*acd127(56)
      acd127(53)=acd127(23)*acd127(53)
      acd127(57)=-acd127(22)*acd127(2)
      acd127(58)=-acd127(35)*acd127(6)
      acd127(59)=-acd127(38)*acd127(8)
      acd127(60)=-acd127(41)*acd127(10)
      acd127(61)=-acd127(43)*acd127(12)
      brack=acd127(49)+acd127(50)+acd127(51)+acd127(52)+acd127(53)+acd127(54)+a&
      &cd127(55)+acd127(56)+acd127(57)+acd127(58)+acd127(59)+acd127(60)+acd127(&
      &61)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd127h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(79) :: acd127
      complex(ki) :: brack
      acd127(1)=k1(iv1)
      acd127(2)=dotproduct(k2,qshift)
      acd127(3)=abb127(30)
      acd127(4)=dotproduct(qshift,spvak1k3)
      acd127(5)=abb127(21)
      acd127(6)=dotproduct(qshift,spvak2l5)
      acd127(7)=abb127(47)
      acd127(8)=dotproduct(qshift,spvak2l6)
      acd127(9)=abb127(46)
      acd127(10)=dotproduct(qshift,spvak2k7)
      acd127(11)=abb127(42)
      acd127(12)=dotproduct(qshift,spvak4k2)
      acd127(13)=abb127(35)
      acd127(14)=dotproduct(qshift,spvak4k3)
      acd127(15)=abb127(32)
      acd127(16)=abb127(27)
      acd127(17)=k2(iv1)
      acd127(18)=dotproduct(k1,qshift)
      acd127(19)=dotproduct(k3,qshift)
      acd127(20)=dotproduct(k4,qshift)
      acd127(21)=dotproduct(qshift,qshift)
      acd127(22)=abb127(31)
      acd127(23)=abb127(29)
      acd127(24)=abb127(16)
      acd127(25)=k3(iv1)
      acd127(26)=abb127(61)
      acd127(27)=k4(iv1)
      acd127(28)=qshift(iv1)
      acd127(29)=abb127(25)
      acd127(30)=abb127(23)
      acd127(31)=abb127(19)
      acd127(32)=abb127(28)
      acd127(33)=spvak1k3(iv1)
      acd127(34)=abb127(24)
      acd127(35)=abb127(20)
      acd127(36)=abb127(33)
      acd127(37)=abb127(26)
      acd127(38)=spvak2l5(iv1)
      acd127(39)=dotproduct(qshift,spvak1k2)
      acd127(40)=abb127(37)
      acd127(41)=abb127(15)
      acd127(42)=abb127(39)
      acd127(43)=spvak2l6(iv1)
      acd127(44)=abb127(36)
      acd127(45)=abb127(22)
      acd127(46)=abb127(43)
      acd127(47)=spvak2k7(iv1)
      acd127(48)=abb127(12)
      acd127(49)=abb127(17)
      acd127(50)=abb127(40)
      acd127(51)=spvak4k2(iv1)
      acd127(52)=abb127(38)
      acd127(53)=abb127(34)
      acd127(54)=spvak4k3(iv1)
      acd127(55)=abb127(14)
      acd127(56)=dotproduct(qshift,spvak1k4)
      acd127(57)=dotproduct(qshift,spvak3k2)
      acd127(58)=abb127(18)
      acd127(59)=spvak1k2(iv1)
      acd127(60)=abb127(13)
      acd127(61)=spvak1k4(iv1)
      acd127(62)=spvak3k2(iv1)
      acd127(63)=acd127(10)*acd127(48)
      acd127(64)=acd127(8)*acd127(44)
      acd127(65)=acd127(6)*acd127(40)
      acd127(63)=acd127(63)+acd127(64)+acd127(65)-acd127(55)
      acd127(64)=acd127(59)*acd127(63)
      acd127(65)=acd127(47)*acd127(48)
      acd127(66)=acd127(43)*acd127(44)
      acd127(67)=acd127(38)*acd127(40)
      acd127(65)=acd127(67)+acd127(65)+acd127(66)
      acd127(65)=acd127(39)*acd127(65)
      acd127(66)=-acd127(30)*acd127(62)
      acd127(67)=acd127(29)*acd127(61)
      acd127(68)=2.0_ki*acd127(28)
      acd127(69)=acd127(31)*acd127(68)
      acd127(70)=-acd127(51)*acd127(52)
      acd127(71)=-acd127(17)*acd127(23)
      acd127(72)=-acd127(33)*acd127(37)
      acd127(73)=-acd127(1)*acd127(15)
      acd127(64)=acd127(65)+acd127(73)+acd127(72)+acd127(64)+acd127(71)+acd127(&
      &70)+acd127(69)+acd127(66)+acd127(67)
      acd127(64)=acd127(14)*acd127(64)
      acd127(63)=acd127(39)*acd127(63)
      acd127(65)=-acd127(30)*acd127(57)
      acd127(66)=acd127(29)*acd127(56)
      acd127(67)=acd127(21)*acd127(31)
      acd127(69)=-acd127(12)*acd127(52)
      acd127(70)=-acd127(2)*acd127(23)
      acd127(71)=-acd127(18)*acd127(15)
      acd127(72)=-acd127(4)*acd127(37)
      acd127(63)=acd127(63)+acd127(72)+acd127(71)+acd127(70)+acd127(69)+acd127(&
      &67)+acd127(66)+acd127(58)+acd127(65)
      acd127(63)=acd127(54)*acd127(63)
      acd127(65)=-acd127(10)*acd127(11)
      acd127(66)=-acd127(8)*acd127(9)
      acd127(67)=-acd127(6)*acd127(7)
      acd127(69)=-acd127(13)*acd127(12)
      acd127(70)=-acd127(3)*acd127(2)
      acd127(71)=acd127(4)*acd127(5)
      acd127(65)=acd127(71)+acd127(70)+acd127(69)+acd127(67)+acd127(66)+acd127(&
      &16)+acd127(65)
      acd127(65)=acd127(1)*acd127(65)
      acd127(66)=-acd127(47)*acd127(11)
      acd127(67)=-acd127(43)*acd127(9)
      acd127(69)=-acd127(38)*acd127(7)
      acd127(70)=-acd127(13)*acd127(51)
      acd127(71)=-acd127(3)*acd127(17)
      acd127(66)=acd127(71)+acd127(70)+acd127(69)+acd127(66)+acd127(67)
      acd127(66)=acd127(18)*acd127(66)
      acd127(67)=acd127(19)+acd127(20)
      acd127(69)=acd127(18)-acd127(67)
      acd127(69)=acd127(5)*acd127(69)
      acd127(70)=acd127(21)*acd127(29)
      acd127(71)=-acd127(10)*acd127(36)
      acd127(72)=-acd127(8)*acd127(35)
      acd127(73)=-acd127(6)*acd127(34)
      acd127(69)=acd127(73)+acd127(72)+acd127(70)+acd127(71)+acd127(69)
      acd127(69)=acd127(33)*acd127(69)
      acd127(70)=-acd127(47)*acd127(36)
      acd127(71)=-acd127(43)*acd127(35)
      acd127(72)=-acd127(38)*acd127(34)
      acd127(73)=acd127(29)*acd127(68)
      acd127(74)=acd127(25)+acd127(27)
      acd127(75)=-acd127(5)*acd127(74)
      acd127(70)=acd127(75)+acd127(73)+acd127(72)+acd127(70)+acd127(71)
      acd127(70)=acd127(4)*acd127(70)
      acd127(71)=-acd127(10)*acd127(49)
      acd127(72)=-acd127(8)*acd127(45)
      acd127(73)=-acd127(6)*acd127(41)
      acd127(71)=acd127(73)+acd127(72)+acd127(60)+acd127(71)
      acd127(71)=acd127(59)*acd127(71)
      acd127(72)=-acd127(47)*acd127(49)
      acd127(73)=-acd127(43)*acd127(45)
      acd127(75)=-acd127(38)*acd127(41)
      acd127(72)=acd127(75)+acd127(72)+acd127(73)
      acd127(72)=acd127(39)*acd127(72)
      acd127(73)=-acd127(12)*acd127(30)
      acd127(75)=acd127(2)*acd127(22)
      acd127(73)=acd127(75)+acd127(73)-acd127(32)
      acd127(68)=acd127(68)*acd127(73)
      acd127(73)=acd127(12)*acd127(74)
      acd127(75)=acd127(51)*acd127(67)
      acd127(73)=acd127(73)+acd127(75)
      acd127(73)=acd127(13)*acd127(73)
      acd127(75)=acd127(2)*acd127(74)
      acd127(67)=acd127(17)*acd127(67)
      acd127(67)=acd127(75)+acd127(67)
      acd127(67)=acd127(3)*acd127(67)
      acd127(74)=-acd127(26)*acd127(74)
      acd127(75)=acd127(47)*acd127(50)
      acd127(76)=acd127(43)*acd127(46)
      acd127(77)=acd127(38)*acd127(42)
      acd127(78)=-acd127(21)*acd127(30)
      acd127(78)=acd127(53)+acd127(78)
      acd127(78)=acd127(51)*acd127(78)
      acd127(79)=acd127(21)*acd127(22)
      acd127(79)=acd127(24)+acd127(79)
      acd127(79)=acd127(17)*acd127(79)
      brack=acd127(63)+acd127(64)+acd127(65)+acd127(66)+acd127(67)+acd127(68)+a&
      &cd127(69)+acd127(70)+acd127(71)+acd127(72)+acd127(73)+acd127(74)+acd127(&
      &75)+acd127(76)+acd127(77)+acd127(78)+acd127(79)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd127h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(77) :: acd127
      complex(ki) :: brack
      acd127(1)=d(iv1,iv2)
      acd127(2)=dotproduct(k2,qshift)
      acd127(3)=abb127(31)
      acd127(4)=dotproduct(qshift,spvak1k3)
      acd127(5)=abb127(25)
      acd127(6)=dotproduct(qshift,spvak4k2)
      acd127(7)=abb127(23)
      acd127(8)=dotproduct(qshift,spvak4k3)
      acd127(9)=abb127(19)
      acd127(10)=abb127(28)
      acd127(11)=k1(iv1)
      acd127(12)=k2(iv2)
      acd127(13)=abb127(30)
      acd127(14)=spvak1k3(iv2)
      acd127(15)=abb127(21)
      acd127(16)=spvak4k2(iv2)
      acd127(17)=abb127(35)
      acd127(18)=spvak4k3(iv2)
      acd127(19)=abb127(32)
      acd127(20)=spvak2l5(iv2)
      acd127(21)=abb127(47)
      acd127(22)=spvak2l6(iv2)
      acd127(23)=abb127(46)
      acd127(24)=spvak2k7(iv2)
      acd127(25)=abb127(42)
      acd127(26)=k1(iv2)
      acd127(27)=k2(iv1)
      acd127(28)=spvak1k3(iv1)
      acd127(29)=spvak4k2(iv1)
      acd127(30)=spvak4k3(iv1)
      acd127(31)=spvak2l5(iv1)
      acd127(32)=spvak2l6(iv1)
      acd127(33)=spvak2k7(iv1)
      acd127(34)=k3(iv2)
      acd127(35)=k4(iv2)
      acd127(36)=qshift(iv2)
      acd127(37)=abb127(29)
      acd127(38)=k3(iv1)
      acd127(39)=k4(iv1)
      acd127(40)=qshift(iv1)
      acd127(41)=abb127(26)
      acd127(42)=abb127(24)
      acd127(43)=abb127(20)
      acd127(44)=abb127(33)
      acd127(45)=abb127(38)
      acd127(46)=dotproduct(qshift,spvak1k2)
      acd127(47)=abb127(37)
      acd127(48)=abb127(36)
      acd127(49)=abb127(12)
      acd127(50)=spvak1k2(iv2)
      acd127(51)=dotproduct(qshift,spvak2l5)
      acd127(52)=dotproduct(qshift,spvak2l6)
      acd127(53)=dotproduct(qshift,spvak2k7)
      acd127(54)=abb127(14)
      acd127(55)=spvak1k4(iv2)
      acd127(56)=spvak3k2(iv2)
      acd127(57)=spvak1k2(iv1)
      acd127(58)=spvak1k4(iv1)
      acd127(59)=spvak3k2(iv1)
      acd127(60)=abb127(15)
      acd127(61)=abb127(22)
      acd127(62)=abb127(17)
      acd127(63)=acd127(49)*acd127(24)
      acd127(64)=acd127(48)*acd127(22)
      acd127(65)=acd127(47)*acd127(20)
      acd127(63)=acd127(65)+acd127(63)+acd127(64)
      acd127(64)=-acd127(46)*acd127(63)
      acd127(65)=acd127(49)*acd127(53)
      acd127(66)=acd127(48)*acd127(52)
      acd127(67)=acd127(47)*acd127(51)
      acd127(65)=-acd127(54)+acd127(65)+acd127(66)+acd127(67)
      acd127(66)=-acd127(50)*acd127(65)
      acd127(67)=2.0_ki*acd127(9)
      acd127(68)=-acd127(36)*acd127(67)
      acd127(69)=acd127(16)*acd127(45)
      acd127(70)=acd127(12)*acd127(37)
      acd127(71)=acd127(7)*acd127(56)
      acd127(72)=-acd127(5)*acd127(55)
      acd127(73)=acd127(26)*acd127(19)
      acd127(74)=acd127(14)*acd127(41)
      acd127(64)=acd127(66)+acd127(74)+acd127(73)+acd127(64)+acd127(72)+acd127(&
      &71)+acd127(70)+acd127(68)+acd127(69)
      acd127(64)=acd127(30)*acd127(64)
      acd127(66)=acd127(49)*acd127(33)
      acd127(68)=acd127(48)*acd127(32)
      acd127(69)=acd127(47)*acd127(31)
      acd127(66)=acd127(66)+acd127(68)+acd127(69)
      acd127(68)=-acd127(46)*acd127(66)
      acd127(65)=-acd127(57)*acd127(65)
      acd127(69)=-acd127(40)*acd127(67)
      acd127(70)=acd127(29)*acd127(45)
      acd127(71)=acd127(27)*acd127(37)
      acd127(72)=acd127(7)*acd127(59)
      acd127(73)=-acd127(5)*acd127(58)
      acd127(74)=acd127(11)*acd127(19)
      acd127(75)=acd127(28)*acd127(41)
      acd127(65)=acd127(65)+acd127(75)+acd127(74)+acd127(68)+acd127(73)+acd127(&
      &72)+acd127(71)+acd127(69)+acd127(70)
      acd127(65)=acd127(18)*acd127(65)
      acd127(68)=acd127(33)*acd127(25)
      acd127(69)=acd127(32)*acd127(23)
      acd127(70)=acd127(31)*acd127(21)
      acd127(71)=acd127(17)*acd127(29)
      acd127(72)=acd127(13)*acd127(27)
      acd127(68)=acd127(72)+acd127(71)+acd127(70)+acd127(68)+acd127(69)
      acd127(68)=acd127(26)*acd127(68)
      acd127(69)=acd127(24)*acd127(25)
      acd127(70)=acd127(22)*acd127(23)
      acd127(71)=acd127(20)*acd127(21)
      acd127(72)=acd127(17)*acd127(16)
      acd127(73)=acd127(13)*acd127(12)
      acd127(69)=acd127(73)+acd127(72)+acd127(71)+acd127(69)+acd127(70)
      acd127(69)=acd127(11)*acd127(69)
      acd127(70)=acd127(34)+acd127(35)
      acd127(71)=-acd127(26)+acd127(70)
      acd127(71)=acd127(15)*acd127(71)
      acd127(72)=acd127(24)*acd127(44)
      acd127(73)=acd127(22)*acd127(43)
      acd127(74)=acd127(20)*acd127(42)
      acd127(75)=2.0_ki*acd127(5)
      acd127(76)=-acd127(36)*acd127(75)
      acd127(71)=acd127(76)+acd127(74)+acd127(72)+acd127(73)+acd127(71)
      acd127(71)=acd127(28)*acd127(71)
      acd127(72)=acd127(38)+acd127(39)
      acd127(73)=-acd127(11)+acd127(72)
      acd127(73)=acd127(15)*acd127(73)
      acd127(74)=acd127(33)*acd127(44)
      acd127(76)=acd127(32)*acd127(43)
      acd127(77)=acd127(31)*acd127(42)
      acd127(75)=-acd127(40)*acd127(75)
      acd127(73)=acd127(75)+acd127(77)+acd127(74)+acd127(76)+acd127(73)
      acd127(73)=acd127(14)*acd127(73)
      acd127(74)=-acd127(3)*acd127(2)
      acd127(75)=acd127(7)*acd127(6)
      acd127(76)=-acd127(5)*acd127(4)
      acd127(74)=acd127(76)+acd127(75)+acd127(10)+acd127(74)
      acd127(74)=acd127(1)*acd127(74)
      acd127(75)=-acd127(27)*acd127(36)
      acd127(76)=-acd127(12)*acd127(40)
      acd127(75)=acd127(75)+acd127(76)
      acd127(75)=acd127(3)*acd127(75)
      acd127(76)=acd127(29)*acd127(36)
      acd127(77)=acd127(16)*acd127(40)
      acd127(76)=acd127(76)+acd127(77)
      acd127(76)=acd127(7)*acd127(76)
      acd127(74)=acd127(74)+acd127(76)+acd127(75)
      acd127(63)=-acd127(8)*acd127(63)
      acd127(75)=acd127(24)*acd127(62)
      acd127(76)=acd127(22)*acd127(61)
      acd127(77)=acd127(20)*acd127(60)
      acd127(63)=acd127(63)+acd127(77)+acd127(75)+acd127(76)
      acd127(63)=acd127(57)*acd127(63)
      acd127(66)=-acd127(8)*acd127(66)
      acd127(75)=acd127(33)*acd127(62)
      acd127(76)=acd127(32)*acd127(61)
      acd127(77)=acd127(31)*acd127(60)
      acd127(66)=acd127(66)+acd127(77)+acd127(75)+acd127(76)
      acd127(66)=acd127(50)*acd127(66)
      acd127(75)=-acd127(29)*acd127(70)
      acd127(76)=-acd127(16)*acd127(72)
      acd127(75)=acd127(75)+acd127(76)
      acd127(75)=acd127(17)*acd127(75)
      acd127(70)=-acd127(27)*acd127(70)
      acd127(72)=-acd127(12)*acd127(72)
      acd127(70)=acd127(70)+acd127(72)
      acd127(70)=acd127(13)*acd127(70)
      acd127(67)=-acd127(8)*acd127(1)*acd127(67)
      brack=acd127(63)+acd127(64)+acd127(65)+acd127(66)+acd127(67)+acd127(68)+a&
      &cd127(69)+acd127(70)+acd127(71)+acd127(73)+2.0_ki*acd127(74)+acd127(75)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd127h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(43) :: acd127
      complex(ki) :: brack
      acd127(1)=d(iv1,iv2)
      acd127(2)=k2(iv3)
      acd127(3)=abb127(31)
      acd127(4)=spvak1k3(iv3)
      acd127(5)=abb127(25)
      acd127(6)=spvak4k2(iv3)
      acd127(7)=abb127(23)
      acd127(8)=spvak4k3(iv3)
      acd127(9)=abb127(19)
      acd127(10)=d(iv1,iv3)
      acd127(11)=k2(iv2)
      acd127(12)=spvak1k3(iv2)
      acd127(13)=spvak4k2(iv2)
      acd127(14)=spvak4k3(iv2)
      acd127(15)=d(iv2,iv3)
      acd127(16)=k2(iv1)
      acd127(17)=spvak1k3(iv1)
      acd127(18)=spvak4k2(iv1)
      acd127(19)=spvak4k3(iv1)
      acd127(20)=spvak1k2(iv2)
      acd127(21)=spvak2l5(iv3)
      acd127(22)=abb127(37)
      acd127(23)=spvak2l6(iv3)
      acd127(24)=abb127(36)
      acd127(25)=spvak2k7(iv3)
      acd127(26)=abb127(12)
      acd127(27)=spvak1k2(iv3)
      acd127(28)=spvak2l5(iv2)
      acd127(29)=spvak2l6(iv2)
      acd127(30)=spvak2k7(iv2)
      acd127(31)=spvak1k2(iv1)
      acd127(32)=spvak2l5(iv1)
      acd127(33)=spvak2l6(iv1)
      acd127(34)=spvak2k7(iv1)
      acd127(35)=acd127(32)*acd127(22)
      acd127(36)=acd127(33)*acd127(24)
      acd127(37)=acd127(34)*acd127(26)
      acd127(35)=acd127(37)+acd127(36)+acd127(35)
      acd127(36)=acd127(20)*acd127(8)
      acd127(37)=acd127(27)*acd127(14)
      acd127(36)=acd127(36)+acd127(37)
      acd127(35)=acd127(36)*acd127(35)
      acd127(36)=acd127(21)*acd127(22)
      acd127(37)=acd127(23)*acd127(24)
      acd127(38)=acd127(25)*acd127(26)
      acd127(36)=acd127(38)+acd127(37)+acd127(36)
      acd127(37)=acd127(20)*acd127(19)
      acd127(38)=acd127(31)*acd127(14)
      acd127(37)=acd127(37)+acd127(38)
      acd127(36)=acd127(37)*acd127(36)
      acd127(37)=acd127(28)*acd127(22)
      acd127(38)=acd127(29)*acd127(24)
      acd127(39)=acd127(30)*acd127(26)
      acd127(37)=acd127(39)+acd127(38)+acd127(37)
      acd127(38)=acd127(27)*acd127(19)
      acd127(39)=acd127(31)*acd127(8)
      acd127(38)=acd127(38)+acd127(39)
      acd127(37)=acd127(38)*acd127(37)
      acd127(38)=-acd127(6)*acd127(1)
      acd127(39)=-acd127(13)*acd127(10)
      acd127(40)=-acd127(18)*acd127(15)
      acd127(38)=acd127(40)+acd127(39)+acd127(38)
      acd127(39)=2.0_ki*acd127(7)
      acd127(38)=acd127(39)*acd127(38)
      acd127(39)=acd127(4)*acd127(1)
      acd127(40)=acd127(12)*acd127(10)
      acd127(41)=acd127(17)*acd127(15)
      acd127(39)=acd127(41)+acd127(40)+acd127(39)
      acd127(40)=2.0_ki*acd127(5)
      acd127(39)=acd127(40)*acd127(39)
      acd127(40)=acd127(2)*acd127(1)
      acd127(41)=acd127(11)*acd127(10)
      acd127(42)=acd127(16)*acd127(15)
      acd127(40)=acd127(42)+acd127(41)+acd127(40)
      acd127(41)=2.0_ki*acd127(3)
      acd127(40)=acd127(41)*acd127(40)
      acd127(41)=acd127(1)*acd127(8)
      acd127(42)=acd127(10)*acd127(14)
      acd127(43)=acd127(15)*acd127(19)
      acd127(41)=acd127(43)+acd127(41)+acd127(42)
      acd127(41)=acd127(9)*acd127(41)
      brack=acd127(35)+acd127(36)+acd127(37)+acd127(38)+acd127(39)+acd127(40)+2&
      &.0_ki*acd127(41)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h3
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
!---#[ subroutine reconstruct_d127:
   subroutine     reconstruct_d127(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group9
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group9), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_127:
      coeffs%coeffs_127%c0 = derivative(czip)
      coeffs%coeffs_127%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_127%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_127%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_127%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_127%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_127%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_127%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_127%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_127%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_127%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_127%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_127%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_127%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_127%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_127%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_127%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_127%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_127%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_127%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_127%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_127%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_127%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_127%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_127%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_127%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_127%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_127%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_127%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_127%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_127%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_127%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_127%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_127%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_127%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_127:
   end subroutine reconstruct_d127
!---#] subroutine reconstruct_d127:
end module     p0_dbaru_epnebbbarg_d127h3l1d
