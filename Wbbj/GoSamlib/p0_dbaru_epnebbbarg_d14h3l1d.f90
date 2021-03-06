module     p0_dbaru_epnebbbarg_d14h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d14h3l1d.f90
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
   public :: derivative , reconstruct_d14
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd14h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd14
      complex(ki) :: brack
      acd14(1)=dotproduct(k1,qshift)
      acd14(2)=dotproduct(k7,qshift)
      acd14(3)=abb14(56)
      acd14(4)=dotproduct(qshift,spvak1k3)
      acd14(5)=abb14(39)
      acd14(6)=dotproduct(qshift,spvak2l5)
      acd14(7)=abb14(44)
      acd14(8)=dotproduct(qshift,spvak2l6)
      acd14(9)=abb14(22)
      acd14(10)=dotproduct(qshift,spvak2k7)
      acd14(11)=abb14(18)
      acd14(12)=dotproduct(qshift,spvak4k3)
      acd14(13)=abb14(41)
      acd14(14)=abb14(26)
      acd14(15)=dotproduct(k2,qshift)
      acd14(16)=abb14(57)
      acd14(17)=dotproduct(k3,qshift)
      acd14(18)=abb14(45)
      acd14(19)=dotproduct(k4,qshift)
      acd14(20)=dotproduct(qshift,qshift)
      acd14(21)=abb14(35)
      acd14(22)=abb14(31)
      acd14(23)=abb14(25)
      acd14(24)=abb14(37)
      acd14(25)=abb14(10)
      acd14(26)=abb14(20)
      acd14(27)=abb14(33)
      acd14(28)=abb14(40)
      acd14(29)=abb14(17)
      acd14(30)=abb14(32)
      acd14(31)=abb14(29)
      acd14(32)=abb14(27)
      acd14(33)=abb14(19)
      acd14(34)=abb14(11)
      acd14(35)=abb14(23)
      acd14(36)=abb14(9)
      acd14(37)=dotproduct(qshift,spvak1k7)
      acd14(38)=abb14(46)
      acd14(39)=abb14(24)
      acd14(40)=abb14(15)
      acd14(41)=abb14(38)
      acd14(42)=abb14(43)
      acd14(43)=abb14(30)
      acd14(44)=abb14(28)
      acd14(45)=abb14(14)
      acd14(46)=abb14(21)
      acd14(47)=abb14(13)
      acd14(48)=dotproduct(qshift,spvak1k4)
      acd14(49)=abb14(12)
      acd14(50)=abb14(16)
      acd14(51)=acd14(19)+acd14(17)
      acd14(52)=acd14(51)-acd14(1)
      acd14(53)=-acd14(5)*acd14(52)
      acd14(54)=acd14(32)*acd14(6)
      acd14(55)=acd14(33)*acd14(8)
      acd14(56)=acd14(34)*acd14(12)
      acd14(53)=acd14(53)+acd14(56)+acd14(55)+acd14(54)
      acd14(53)=acd14(4)*acd14(53)
      acd14(54)=-acd14(24)*acd14(2)
      acd14(55)=-acd14(41)*acd14(10)
      acd14(56)=-acd14(43)*acd14(37)
      acd14(54)=acd14(44)+acd14(56)+acd14(55)+acd14(54)
      acd14(54)=acd14(54)*acd14(8)
      acd14(55)=-acd14(22)*acd14(2)
      acd14(56)=-acd14(35)*acd14(10)
      acd14(57)=-acd14(38)*acd14(37)
      acd14(55)=acd14(39)+acd14(57)+acd14(56)+acd14(55)
      acd14(55)=acd14(55)*acd14(6)
      acd14(56)=acd14(48)*acd14(28)
      acd14(54)=acd14(55)+acd14(54)-acd14(49)+acd14(56)
      acd14(54)=acd14(12)*acd14(54)
      acd14(55)=acd14(3)*acd14(52)
      acd14(56)=acd14(23)*acd14(6)
      acd14(57)=acd14(25)*acd14(8)
      acd14(58)=acd14(26)*acd14(12)
      acd14(55)=-acd14(27)+acd14(58)+acd14(57)+acd14(56)+acd14(55)
      acd14(55)=acd14(2)*acd14(55)
      acd14(52)=-acd14(11)*acd14(52)
      acd14(56)=acd14(36)*acd14(6)
      acd14(57)=acd14(42)*acd14(8)
      acd14(58)=acd14(46)*acd14(12)
      acd14(52)=-acd14(47)+acd14(58)+acd14(57)+acd14(56)+acd14(52)
      acd14(52)=acd14(10)*acd14(52)
      acd14(56)=acd14(28)*acd14(4)
      acd14(57)=-acd14(21)*acd14(2)
      acd14(58)=-acd14(29)*acd14(10)
      acd14(59)=-acd14(30)*acd14(12)
      acd14(56)=acd14(31)+acd14(59)+acd14(58)+acd14(57)+acd14(56)
      acd14(56)=acd14(20)*acd14(56)
      acd14(57)=acd14(13)*acd14(12)
      acd14(58)=acd14(7)*acd14(6)
      acd14(59)=acd14(9)*acd14(8)
      acd14(58)=-acd14(14)+acd14(59)+acd14(58)+acd14(57)
      acd14(58)=acd14(1)*acd14(58)
      acd14(57)=-acd14(16)-acd14(57)
      acd14(57)=acd14(15)*acd14(57)
      acd14(51)=-acd14(18)*acd14(51)
      acd14(59)=-acd14(40)*acd14(6)
      acd14(60)=-acd14(45)*acd14(8)
      brack=acd14(50)+acd14(51)+acd14(52)+acd14(53)+acd14(54)+acd14(55)+acd14(5&
      &6)+acd14(57)+acd14(58)+acd14(59)+acd14(60)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd14h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(78) :: acd14
      complex(ki) :: brack
      acd14(1)=k1(iv1)
      acd14(2)=dotproduct(k7,qshift)
      acd14(3)=abb14(56)
      acd14(4)=dotproduct(qshift,spvak1k3)
      acd14(5)=abb14(39)
      acd14(6)=dotproduct(qshift,spvak2l5)
      acd14(7)=abb14(44)
      acd14(8)=dotproduct(qshift,spvak2l6)
      acd14(9)=abb14(22)
      acd14(10)=dotproduct(qshift,spvak2k7)
      acd14(11)=abb14(18)
      acd14(12)=dotproduct(qshift,spvak4k3)
      acd14(13)=abb14(41)
      acd14(14)=abb14(26)
      acd14(15)=k2(iv1)
      acd14(16)=abb14(57)
      acd14(17)=k3(iv1)
      acd14(18)=abb14(45)
      acd14(19)=k4(iv1)
      acd14(20)=k7(iv1)
      acd14(21)=dotproduct(k1,qshift)
      acd14(22)=dotproduct(k3,qshift)
      acd14(23)=dotproduct(k4,qshift)
      acd14(24)=dotproduct(qshift,qshift)
      acd14(25)=abb14(35)
      acd14(26)=abb14(31)
      acd14(27)=abb14(25)
      acd14(28)=abb14(37)
      acd14(29)=abb14(10)
      acd14(30)=abb14(20)
      acd14(31)=abb14(33)
      acd14(32)=qshift(iv1)
      acd14(33)=abb14(40)
      acd14(34)=abb14(17)
      acd14(35)=abb14(32)
      acd14(36)=abb14(29)
      acd14(37)=spvak1k3(iv1)
      acd14(38)=abb14(27)
      acd14(39)=abb14(19)
      acd14(40)=abb14(11)
      acd14(41)=spvak2l5(iv1)
      acd14(42)=abb14(23)
      acd14(43)=abb14(9)
      acd14(44)=dotproduct(qshift,spvak1k7)
      acd14(45)=abb14(46)
      acd14(46)=abb14(24)
      acd14(47)=abb14(15)
      acd14(48)=spvak2l6(iv1)
      acd14(49)=abb14(38)
      acd14(50)=abb14(43)
      acd14(51)=abb14(30)
      acd14(52)=abb14(28)
      acd14(53)=abb14(14)
      acd14(54)=spvak2k7(iv1)
      acd14(55)=abb14(21)
      acd14(56)=abb14(13)
      acd14(57)=spvak4k3(iv1)
      acd14(58)=dotproduct(k2,qshift)
      acd14(59)=dotproduct(qshift,spvak1k4)
      acd14(60)=abb14(12)
      acd14(61)=spvak1k4(iv1)
      acd14(62)=spvak1k7(iv1)
      acd14(63)=acd14(51)*acd14(62)
      acd14(64)=acd14(54)*acd14(49)
      acd14(65)=acd14(20)*acd14(28)
      acd14(63)=acd14(65)+acd14(63)+acd14(64)
      acd14(63)=acd14(8)*acd14(63)
      acd14(64)=acd14(45)*acd14(62)
      acd14(65)=acd14(54)*acd14(42)
      acd14(66)=acd14(20)*acd14(26)
      acd14(64)=acd14(66)+acd14(64)+acd14(65)
      acd14(64)=acd14(6)*acd14(64)
      acd14(65)=acd14(48)*acd14(49)
      acd14(66)=acd14(41)*acd14(42)
      acd14(65)=acd14(65)+acd14(66)
      acd14(65)=acd14(10)*acd14(65)
      acd14(66)=acd14(48)*acd14(28)
      acd14(67)=acd14(41)*acd14(26)
      acd14(66)=acd14(66)+acd14(67)
      acd14(66)=acd14(2)*acd14(66)
      acd14(67)=-acd14(1)+acd14(15)
      acd14(67)=acd14(13)*acd14(67)
      acd14(68)=-acd14(33)*acd14(61)
      acd14(69)=2.0_ki*acd14(32)
      acd14(70)=acd14(35)*acd14(69)
      acd14(71)=-acd14(37)*acd14(40)
      acd14(72)=acd14(44)*acd14(51)
      acd14(72)=acd14(72)-acd14(52)
      acd14(73)=acd14(48)*acd14(72)
      acd14(74)=acd14(44)*acd14(45)
      acd14(74)=acd14(74)-acd14(46)
      acd14(75)=acd14(41)*acd14(74)
      acd14(76)=-acd14(54)*acd14(55)
      acd14(77)=-acd14(20)*acd14(30)
      acd14(63)=acd14(66)+acd14(64)+acd14(63)+acd14(65)+acd14(77)+acd14(76)+acd&
      &14(75)+acd14(73)+acd14(71)+acd14(70)+acd14(68)+acd14(67)
      acd14(63)=acd14(12)*acd14(63)
      acd14(64)=acd14(10)*acd14(49)
      acd14(64)=acd14(64)+acd14(72)
      acd14(64)=acd14(8)*acd14(64)
      acd14(65)=acd14(10)*acd14(42)
      acd14(65)=acd14(65)+acd14(74)
      acd14(65)=acd14(6)*acd14(65)
      acd14(66)=acd14(8)*acd14(28)
      acd14(67)=acd14(6)*acd14(26)
      acd14(66)=acd14(67)-acd14(30)+acd14(66)
      acd14(66)=acd14(2)*acd14(66)
      acd14(67)=-acd14(21)+acd14(58)
      acd14(67)=acd14(13)*acd14(67)
      acd14(68)=-acd14(33)*acd14(59)
      acd14(70)=acd14(24)*acd14(35)
      acd14(71)=-acd14(4)*acd14(40)
      acd14(72)=-acd14(10)*acd14(55)
      acd14(64)=acd14(66)+acd14(65)+acd14(64)+acd14(72)+acd14(71)+acd14(70)+acd&
      &14(60)+acd14(68)+acd14(67)
      acd14(64)=acd14(57)*acd14(64)
      acd14(65)=acd14(17)+acd14(19)
      acd14(66)=acd14(65)-acd14(1)
      acd14(67)=acd14(11)*acd14(66)
      acd14(68)=acd14(34)*acd14(69)
      acd14(70)=-acd14(48)*acd14(50)
      acd14(71)=-acd14(41)*acd14(43)
      acd14(67)=acd14(71)+acd14(70)+acd14(68)+acd14(67)
      acd14(67)=acd14(10)*acd14(67)
      acd14(68)=-acd14(37)*acd14(39)
      acd14(70)=-acd14(1)*acd14(9)
      acd14(71)=-acd14(54)*acd14(50)
      acd14(72)=-acd14(20)*acd14(29)
      acd14(68)=acd14(72)+acd14(71)+acd14(68)+acd14(70)
      acd14(68)=acd14(8)*acd14(68)
      acd14(70)=-acd14(37)*acd14(38)
      acd14(71)=-acd14(1)*acd14(7)
      acd14(72)=-acd14(54)*acd14(43)
      acd14(73)=-acd14(20)*acd14(27)
      acd14(70)=acd14(73)+acd14(72)+acd14(70)+acd14(71)
      acd14(70)=acd14(6)*acd14(70)
      acd14(66)=-acd14(3)*acd14(66)
      acd14(71)=acd14(25)*acd14(69)
      acd14(72)=-acd14(48)*acd14(29)
      acd14(73)=-acd14(41)*acd14(27)
      acd14(66)=acd14(73)+acd14(72)+acd14(71)+acd14(66)
      acd14(66)=acd14(2)*acd14(66)
      acd14(71)=-acd14(24)*acd14(33)
      acd14(72)=-acd14(23)+acd14(21)-acd14(22)
      acd14(73)=-acd14(5)*acd14(72)
      acd14(71)=acd14(71)+acd14(73)
      acd14(71)=acd14(37)*acd14(71)
      acd14(73)=-acd14(33)*acd14(69)
      acd14(74)=acd14(5)*acd14(65)
      acd14(73)=acd14(73)+acd14(74)
      acd14(73)=acd14(4)*acd14(73)
      acd14(74)=-acd14(21)*acd14(9)
      acd14(75)=-acd14(4)*acd14(39)
      acd14(74)=acd14(75)+acd14(53)+acd14(74)
      acd14(74)=acd14(48)*acd14(74)
      acd14(75)=-acd14(21)*acd14(7)
      acd14(76)=-acd14(4)*acd14(38)
      acd14(75)=acd14(76)+acd14(47)+acd14(75)
      acd14(75)=acd14(41)*acd14(75)
      acd14(76)=acd14(24)*acd14(34)
      acd14(77)=-acd14(11)*acd14(72)
      acd14(76)=acd14(77)+acd14(56)+acd14(76)
      acd14(76)=acd14(54)*acd14(76)
      acd14(77)=acd14(24)*acd14(25)
      acd14(72)=acd14(3)*acd14(72)
      acd14(72)=acd14(72)+acd14(31)+acd14(77)
      acd14(72)=acd14(20)*acd14(72)
      acd14(65)=acd14(18)*acd14(65)
      acd14(77)=acd14(15)*acd14(16)
      acd14(69)=-acd14(36)*acd14(69)
      acd14(78)=-acd14(4)*acd14(5)
      acd14(78)=acd14(14)+acd14(78)
      acd14(78)=acd14(1)*acd14(78)
      brack=acd14(63)+acd14(64)+acd14(65)+acd14(66)+acd14(67)+acd14(68)+acd14(6&
      &9)+acd14(70)+acd14(71)+acd14(72)+acd14(73)+acd14(74)+acd14(75)+acd14(76)&
      &+acd14(77)+acd14(78)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd14h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(78) :: acd14
      complex(ki) :: brack
      acd14(1)=d(iv1,iv2)
      acd14(2)=dotproduct(k7,qshift)
      acd14(3)=abb14(35)
      acd14(4)=dotproduct(qshift,spvak1k3)
      acd14(5)=abb14(40)
      acd14(6)=dotproduct(qshift,spvak2k7)
      acd14(7)=abb14(17)
      acd14(8)=dotproduct(qshift,spvak4k3)
      acd14(9)=abb14(32)
      acd14(10)=abb14(29)
      acd14(11)=k1(iv1)
      acd14(12)=k7(iv2)
      acd14(13)=abb14(56)
      acd14(14)=spvak1k3(iv2)
      acd14(15)=abb14(39)
      acd14(16)=spvak2k7(iv2)
      acd14(17)=abb14(18)
      acd14(18)=spvak4k3(iv2)
      acd14(19)=abb14(41)
      acd14(20)=spvak2l5(iv2)
      acd14(21)=abb14(44)
      acd14(22)=spvak2l6(iv2)
      acd14(23)=abb14(22)
      acd14(24)=k1(iv2)
      acd14(25)=k7(iv1)
      acd14(26)=spvak1k3(iv1)
      acd14(27)=spvak2k7(iv1)
      acd14(28)=spvak4k3(iv1)
      acd14(29)=spvak2l5(iv1)
      acd14(30)=spvak2l6(iv1)
      acd14(31)=k2(iv1)
      acd14(32)=k2(iv2)
      acd14(33)=k3(iv1)
      acd14(34)=k3(iv2)
      acd14(35)=k4(iv1)
      acd14(36)=k4(iv2)
      acd14(37)=qshift(iv2)
      acd14(38)=dotproduct(qshift,spvak2l5)
      acd14(39)=abb14(31)
      acd14(40)=dotproduct(qshift,spvak2l6)
      acd14(41)=abb14(37)
      acd14(42)=abb14(20)
      acd14(43)=abb14(25)
      acd14(44)=abb14(10)
      acd14(45)=qshift(iv1)
      acd14(46)=abb14(11)
      acd14(47)=abb14(27)
      acd14(48)=abb14(19)
      acd14(49)=abb14(23)
      acd14(50)=abb14(38)
      acd14(51)=abb14(21)
      acd14(52)=abb14(9)
      acd14(53)=abb14(43)
      acd14(54)=dotproduct(qshift,spvak1k7)
      acd14(55)=abb14(46)
      acd14(56)=abb14(24)
      acd14(57)=abb14(30)
      acd14(58)=abb14(28)
      acd14(59)=spvak1k4(iv2)
      acd14(60)=spvak1k7(iv2)
      acd14(61)=spvak1k4(iv1)
      acd14(62)=spvak1k7(iv1)
      acd14(63)=acd14(57)*acd14(54)
      acd14(64)=acd14(50)*acd14(6)
      acd14(65)=acd14(41)*acd14(2)
      acd14(63)=-acd14(58)+acd14(63)+acd14(64)+acd14(65)
      acd14(64)=-acd14(22)*acd14(63)
      acd14(65)=acd14(55)*acd14(54)
      acd14(66)=acd14(49)*acd14(6)
      acd14(67)=acd14(39)*acd14(2)
      acd14(65)=acd14(65)+acd14(66)+acd14(67)-acd14(56)
      acd14(66)=-acd14(20)*acd14(65)
      acd14(67)=acd14(40)*acd14(57)
      acd14(68)=acd14(38)*acd14(55)
      acd14(67)=acd14(67)+acd14(68)
      acd14(68)=-acd14(60)*acd14(67)
      acd14(69)=acd14(40)*acd14(50)
      acd14(70)=acd14(38)*acd14(49)
      acd14(69)=-acd14(51)+acd14(69)+acd14(70)
      acd14(70)=-acd14(16)*acd14(69)
      acd14(71)=acd14(40)*acd14(41)
      acd14(72)=acd14(38)*acd14(39)
      acd14(71)=-acd14(42)+acd14(71)+acd14(72)
      acd14(72)=-acd14(12)*acd14(71)
      acd14(73)=acd14(24)-acd14(32)
      acd14(73)=acd14(19)*acd14(73)
      acd14(74)=2.0_ki*acd14(37)
      acd14(75)=-acd14(9)*acd14(74)
      acd14(76)=acd14(5)*acd14(59)
      acd14(77)=acd14(14)*acd14(46)
      acd14(64)=acd14(72)+acd14(70)+acd14(66)+acd14(64)+acd14(77)+acd14(76)+acd&
      &14(75)+acd14(73)+acd14(68)
      acd14(64)=acd14(28)*acd14(64)
      acd14(63)=-acd14(30)*acd14(63)
      acd14(65)=-acd14(29)*acd14(65)
      acd14(66)=-acd14(62)*acd14(67)
      acd14(67)=-acd14(27)*acd14(69)
      acd14(68)=-acd14(25)*acd14(71)
      acd14(69)=acd14(11)-acd14(31)
      acd14(69)=acd14(19)*acd14(69)
      acd14(70)=2.0_ki*acd14(45)
      acd14(71)=-acd14(9)*acd14(70)
      acd14(72)=acd14(5)*acd14(61)
      acd14(73)=acd14(26)*acd14(46)
      acd14(63)=acd14(68)+acd14(67)+acd14(65)+acd14(63)+acd14(73)+acd14(72)+acd&
      &14(71)+acd14(69)+acd14(66)
      acd14(63)=acd14(18)*acd14(63)
      acd14(65)=-acd14(57)*acd14(62)
      acd14(66)=-acd14(27)*acd14(50)
      acd14(67)=-acd14(25)*acd14(41)
      acd14(65)=acd14(67)+acd14(65)+acd14(66)
      acd14(65)=acd14(22)*acd14(65)
      acd14(66)=-acd14(55)*acd14(62)
      acd14(67)=-acd14(27)*acd14(49)
      acd14(68)=-acd14(25)*acd14(39)
      acd14(66)=acd14(68)+acd14(66)+acd14(67)
      acd14(66)=acd14(20)*acd14(66)
      acd14(67)=-acd14(30)*acd14(57)
      acd14(68)=-acd14(29)*acd14(55)
      acd14(67)=acd14(68)+acd14(67)
      acd14(67)=acd14(60)*acd14(67)
      acd14(68)=-acd14(30)*acd14(50)
      acd14(69)=-acd14(29)*acd14(49)
      acd14(68)=acd14(68)+acd14(69)
      acd14(68)=acd14(16)*acd14(68)
      acd14(69)=-acd14(30)*acd14(41)
      acd14(71)=-acd14(29)*acd14(39)
      acd14(69)=acd14(69)+acd14(71)
      acd14(69)=acd14(12)*acd14(69)
      acd14(71)=2.0_ki*acd14(9)
      acd14(71)=-acd14(1)*acd14(71)
      acd14(65)=acd14(69)+acd14(68)+acd14(66)+acd14(65)+acd14(71)+acd14(67)
      acd14(65)=acd14(8)*acd14(65)
      acd14(66)=acd14(11)*acd14(23)
      acd14(67)=acd14(26)*acd14(48)
      acd14(68)=acd14(27)*acd14(53)
      acd14(69)=acd14(25)*acd14(44)
      acd14(66)=acd14(69)+acd14(68)+acd14(66)+acd14(67)
      acd14(66)=acd14(22)*acd14(66)
      acd14(67)=acd14(11)*acd14(21)
      acd14(68)=acd14(26)*acd14(47)
      acd14(69)=acd14(27)*acd14(52)
      acd14(71)=acd14(25)*acd14(43)
      acd14(67)=acd14(71)+acd14(69)+acd14(67)+acd14(68)
      acd14(67)=acd14(20)*acd14(67)
      acd14(68)=-acd14(11)+acd14(33)+acd14(35)
      acd14(69)=-acd14(17)*acd14(68)
      acd14(71)=-acd14(7)*acd14(70)
      acd14(72)=acd14(30)*acd14(53)
      acd14(73)=acd14(29)*acd14(52)
      acd14(69)=acd14(73)+acd14(72)+acd14(71)+acd14(69)
      acd14(69)=acd14(16)*acd14(69)
      acd14(71)=acd14(13)*acd14(68)
      acd14(72)=-acd14(3)*acd14(70)
      acd14(73)=acd14(30)*acd14(44)
      acd14(75)=acd14(29)*acd14(43)
      acd14(71)=acd14(75)+acd14(73)+acd14(72)+acd14(71)
      acd14(71)=acd14(12)*acd14(71)
      acd14(72)=-acd14(6)*acd14(7)
      acd14(73)=acd14(5)*acd14(4)
      acd14(75)=-acd14(2)*acd14(3)
      acd14(72)=acd14(75)+acd14(73)+acd14(10)+acd14(72)
      acd14(72)=acd14(1)*acd14(72)
      acd14(73)=acd14(5)*acd14(74)
      acd14(75)=-acd14(36)+acd14(24)-acd14(34)
      acd14(76)=acd14(15)*acd14(75)
      acd14(73)=acd14(73)+acd14(76)
      acd14(73)=acd14(26)*acd14(73)
      acd14(68)=-acd14(15)*acd14(68)
      acd14(70)=acd14(5)*acd14(70)
      acd14(68)=acd14(70)+acd14(68)
      acd14(68)=acd14(14)*acd14(68)
      acd14(70)=acd14(24)*acd14(23)
      acd14(76)=acd14(14)*acd14(48)
      acd14(70)=acd14(70)+acd14(76)
      acd14(70)=acd14(30)*acd14(70)
      acd14(76)=acd14(24)*acd14(21)
      acd14(77)=acd14(14)*acd14(47)
      acd14(76)=acd14(76)+acd14(77)
      acd14(76)=acd14(29)*acd14(76)
      acd14(77)=-acd14(7)*acd14(74)
      acd14(78)=acd14(17)*acd14(75)
      acd14(77)=acd14(77)+acd14(78)
      acd14(77)=acd14(27)*acd14(77)
      acd14(74)=-acd14(3)*acd14(74)
      acd14(75)=-acd14(13)*acd14(75)
      acd14(74)=acd14(74)+acd14(75)
      acd14(74)=acd14(25)*acd14(74)
      brack=acd14(63)+acd14(64)+acd14(65)+acd14(66)+acd14(67)+acd14(68)+acd14(6&
      &9)+acd14(70)+acd14(71)+2.0_ki*acd14(72)+acd14(73)+acd14(74)+acd14(76)+ac&
      &d14(77)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd14h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(49) :: acd14
      complex(ki) :: brack
      acd14(1)=d(iv1,iv2)
      acd14(2)=k7(iv3)
      acd14(3)=abb14(35)
      acd14(4)=spvak1k3(iv3)
      acd14(5)=abb14(40)
      acd14(6)=spvak2k7(iv3)
      acd14(7)=abb14(17)
      acd14(8)=spvak4k3(iv3)
      acd14(9)=abb14(32)
      acd14(10)=d(iv1,iv3)
      acd14(11)=k7(iv2)
      acd14(12)=spvak1k3(iv2)
      acd14(13)=spvak2k7(iv2)
      acd14(14)=spvak4k3(iv2)
      acd14(15)=d(iv2,iv3)
      acd14(16)=k7(iv1)
      acd14(17)=spvak1k3(iv1)
      acd14(18)=spvak2k7(iv1)
      acd14(19)=spvak4k3(iv1)
      acd14(20)=spvak2l5(iv3)
      acd14(21)=abb14(31)
      acd14(22)=spvak2l6(iv3)
      acd14(23)=abb14(37)
      acd14(24)=spvak2l5(iv2)
      acd14(25)=spvak2l6(iv2)
      acd14(26)=spvak2l5(iv1)
      acd14(27)=spvak2l6(iv1)
      acd14(28)=abb14(23)
      acd14(29)=abb14(38)
      acd14(30)=spvak1k7(iv3)
      acd14(31)=abb14(46)
      acd14(32)=spvak1k7(iv2)
      acd14(33)=abb14(30)
      acd14(34)=spvak1k7(iv1)
      acd14(35)=acd14(1)*acd14(2)
      acd14(36)=acd14(10)*acd14(11)
      acd14(37)=acd14(15)*acd14(16)
      acd14(35)=acd14(37)+acd14(35)+acd14(36)
      acd14(35)=acd14(3)*acd14(35)
      acd14(36)=acd14(1)*acd14(6)
      acd14(37)=acd14(10)*acd14(13)
      acd14(38)=acd14(15)*acd14(18)
      acd14(36)=acd14(38)+acd14(36)+acd14(37)
      acd14(36)=acd14(7)*acd14(36)
      acd14(37)=acd14(1)*acd14(8)
      acd14(38)=acd14(10)*acd14(14)
      acd14(39)=acd14(15)*acd14(19)
      acd14(37)=acd14(39)+acd14(37)+acd14(38)
      acd14(37)=acd14(9)*acd14(37)
      acd14(35)=acd14(37)+acd14(35)+acd14(36)
      acd14(36)=acd14(4)*acd14(1)
      acd14(37)=acd14(12)*acd14(10)
      acd14(38)=acd14(17)*acd14(15)
      acd14(36)=acd14(38)+acd14(36)+acd14(37)
      acd14(36)=-2.0_ki*acd14(36)
      acd14(36)=acd14(5)*acd14(36)
      acd14(37)=acd14(24)*acd14(19)
      acd14(38)=acd14(26)*acd14(14)
      acd14(37)=acd14(37)+acd14(38)
      acd14(38)=acd14(21)*acd14(37)
      acd14(39)=acd14(25)*acd14(19)
      acd14(40)=acd14(27)*acd14(14)
      acd14(39)=acd14(39)+acd14(40)
      acd14(40)=acd14(23)*acd14(39)
      acd14(38)=acd14(40)+acd14(38)
      acd14(38)=acd14(2)*acd14(38)
      acd14(40)=acd14(28)*acd14(37)
      acd14(41)=acd14(29)*acd14(39)
      acd14(40)=acd14(40)+acd14(41)
      acd14(40)=acd14(6)*acd14(40)
      acd14(41)=acd14(20)*acd14(19)
      acd14(42)=acd14(26)*acd14(8)
      acd14(41)=acd14(41)+acd14(42)
      acd14(42)=acd14(21)*acd14(41)
      acd14(43)=acd14(22)*acd14(19)
      acd14(44)=acd14(27)*acd14(8)
      acd14(43)=acd14(43)+acd14(44)
      acd14(44)=acd14(23)*acd14(43)
      acd14(42)=acd14(44)+acd14(42)
      acd14(42)=acd14(11)*acd14(42)
      acd14(44)=acd14(28)*acd14(41)
      acd14(45)=acd14(29)*acd14(43)
      acd14(44)=acd14(44)+acd14(45)
      acd14(44)=acd14(13)*acd14(44)
      acd14(45)=acd14(20)*acd14(14)
      acd14(46)=acd14(24)*acd14(8)
      acd14(45)=acd14(45)+acd14(46)
      acd14(46)=acd14(21)*acd14(45)
      acd14(47)=acd14(22)*acd14(14)
      acd14(48)=acd14(25)*acd14(8)
      acd14(47)=acd14(47)+acd14(48)
      acd14(48)=acd14(23)*acd14(47)
      acd14(46)=acd14(48)+acd14(46)
      acd14(46)=acd14(16)*acd14(46)
      acd14(48)=acd14(28)*acd14(45)
      acd14(49)=acd14(29)*acd14(47)
      acd14(48)=acd14(48)+acd14(49)
      acd14(48)=acd14(18)*acd14(48)
      acd14(37)=acd14(31)*acd14(37)
      acd14(39)=acd14(33)*acd14(39)
      acd14(37)=acd14(37)+acd14(39)
      acd14(37)=acd14(30)*acd14(37)
      acd14(39)=acd14(31)*acd14(41)
      acd14(41)=acd14(33)*acd14(43)
      acd14(39)=acd14(39)+acd14(41)
      acd14(39)=acd14(32)*acd14(39)
      acd14(41)=acd14(31)*acd14(45)
      acd14(43)=acd14(33)*acd14(47)
      acd14(41)=acd14(41)+acd14(43)
      acd14(41)=acd14(34)*acd14(41)
      brack=2.0_ki*acd14(35)+acd14(36)+acd14(37)+acd14(38)+acd14(39)+acd14(40)+&
      &acd14(41)+acd14(42)+acd14(44)+acd14(46)+acd14(48)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd14h3
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
!---#[ subroutine reconstruct_d14:
   subroutine     reconstruct_d14(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group6
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group6), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_14:
      coeffs%coeffs_14%c0 = derivative(czip)
      coeffs%coeffs_14%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_14%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_14%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_14%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_14%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_14%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_14%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_14%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_14%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_14%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_14%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_14%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_14%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_14%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_14%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_14%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_14%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_14%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_14%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_14%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_14%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_14%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_14%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_14%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_14%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_14%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_14%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_14%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_14%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_14%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_14%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_14%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_14%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_14%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_14:
   end subroutine reconstruct_d14
!---#] subroutine reconstruct_d14:
end module     p0_dbaru_epnebbbarg_d14h3l1d
