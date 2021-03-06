module     p0_dbaru_epnebbbarg_d305h7l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d305h7l1d.f90
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
   public :: derivative , reconstruct_d305
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd305h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd305
      complex(ki) :: brack
      acd305(1)=dotproduct(k2,qshift)
      acd305(2)=dotproduct(qshift,spvak1l5)
      acd305(3)=dotproduct(qshift,spvak7k2)
      acd305(4)=abb305(26)
      acd305(5)=dotproduct(qshift,spvak4l5)
      acd305(6)=abb305(49)
      acd305(7)=abb305(12)
      acd305(8)=dotproduct(qshift,spvak7l5)
      acd305(9)=abb305(55)
      acd305(10)=abb305(45)
      acd305(11)=dotproduct(k7,qshift)
      acd305(12)=abb305(14)
      acd305(13)=abb305(37)
      acd305(14)=dotproduct(qshift,qshift)
      acd305(15)=abb305(21)
      acd305(16)=abb305(36)
      acd305(17)=abb305(15)
      acd305(18)=abb305(16)
      acd305(19)=abb305(34)
      acd305(20)=abb305(17)
      acd305(21)=abb305(22)
      acd305(22)=dotproduct(qshift,spvak1k2)
      acd305(23)=dotproduct(qshift,spvak2l5)
      acd305(24)=abb305(28)
      acd305(25)=dotproduct(qshift,spvak2l6)
      acd305(26)=abb305(24)
      acd305(27)=abb305(18)
      acd305(28)=dotproduct(qshift,spvak4k2)
      acd305(29)=abb305(30)
      acd305(30)=abb305(20)
      acd305(31)=abb305(33)
      acd305(32)=dotproduct(qshift,spvak1l6)
      acd305(33)=abb305(10)
      acd305(34)=abb305(11)
      acd305(35)=dotproduct(qshift,spvak2k7)
      acd305(36)=abb305(29)
      acd305(37)=dotproduct(qshift,spvak4l6)
      acd305(38)=abb305(19)
      acd305(39)=abb305(13)
      acd305(40)=abb305(41)
      acd305(41)=abb305(23)
      acd305(42)=abb305(32)
      acd305(43)=abb305(47)
      acd305(44)=abb305(27)
      acd305(45)=abb305(9)
      acd305(46)=abb305(43)
      acd305(47)=abb305(25)
      acd305(48)=-acd305(25)*acd305(31)
      acd305(49)=-acd305(23)*acd305(29)
      acd305(48)=acd305(49)+acd305(34)+acd305(48)
      acd305(48)=acd305(28)*acd305(48)
      acd305(49)=-acd305(25)*acd305(26)
      acd305(50)=-acd305(23)*acd305(24)
      acd305(49)=acd305(50)+acd305(27)+acd305(49)
      acd305(49)=acd305(22)*acd305(49)
      acd305(50)=-acd305(5)*acd305(6)
      acd305(51)=-acd305(2)*acd305(4)
      acd305(50)=acd305(51)+acd305(7)+acd305(50)
      acd305(50)=acd305(1)*acd305(50)
      acd305(51)=acd305(37)*acd305(38)
      acd305(52)=acd305(35)*acd305(36)
      acd305(53)=acd305(32)*acd305(33)
      acd305(54)=-acd305(14)*acd305(15)
      acd305(55)=acd305(11)*acd305(12)
      acd305(56)=acd305(5)*acd305(20)
      acd305(57)=acd305(2)*acd305(17)
      acd305(58)=acd305(23)*acd305(30)
      acd305(59)=acd305(8)*acd305(21)
      acd305(60)=acd305(3)*acd305(19)
      acd305(48)=acd305(60)+acd305(50)+acd305(59)+acd305(49)+acd305(48)+acd305(&
      &58)+acd305(57)+acd305(56)+acd305(55)+acd305(54)+acd305(53)+acd305(52)-ac&
      &d305(39)+acd305(51)
      acd305(48)=acd305(3)*acd305(48)
      acd305(49)=acd305(28)*acd305(42)
      acd305(50)=acd305(22)*acd305(41)
      acd305(49)=acd305(50)-acd305(43)+acd305(49)
      acd305(49)=acd305(8)*acd305(49)
      acd305(50)=acd305(14)*acd305(16)
      acd305(51)=-acd305(11)*acd305(13)
      acd305(52)=-acd305(5)*acd305(40)
      acd305(53)=-acd305(2)*acd305(18)
      acd305(54)=-acd305(23)*acd305(45)
      acd305(55)=-acd305(28)*acd305(46)
      acd305(56)=-acd305(22)*acd305(44)
      acd305(57)=acd305(8)*acd305(9)
      acd305(57)=-acd305(10)+acd305(57)
      acd305(57)=acd305(1)*acd305(57)
      brack=acd305(47)+acd305(48)+acd305(49)+acd305(50)+acd305(51)+acd305(52)+a&
      &cd305(53)+acd305(54)+acd305(55)+acd305(56)+acd305(57)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd305h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd305
      complex(ki) :: brack
      acd305(1)=k2(iv1)
      acd305(2)=dotproduct(qshift,spvak1l5)
      acd305(3)=dotproduct(qshift,spvak7k2)
      acd305(4)=abb305(26)
      acd305(5)=dotproduct(qshift,spvak4l5)
      acd305(6)=abb305(49)
      acd305(7)=abb305(12)
      acd305(8)=dotproduct(qshift,spvak7l5)
      acd305(9)=abb305(55)
      acd305(10)=abb305(45)
      acd305(11)=k7(iv1)
      acd305(12)=abb305(14)
      acd305(13)=abb305(37)
      acd305(14)=qshift(iv1)
      acd305(15)=abb305(21)
      acd305(16)=abb305(36)
      acd305(17)=spvak1l5(iv1)
      acd305(18)=dotproduct(k2,qshift)
      acd305(19)=abb305(15)
      acd305(20)=abb305(16)
      acd305(21)=spvak7k2(iv1)
      acd305(22)=dotproduct(k7,qshift)
      acd305(23)=dotproduct(qshift,qshift)
      acd305(24)=abb305(34)
      acd305(25)=abb305(17)
      acd305(26)=abb305(22)
      acd305(27)=dotproduct(qshift,spvak1k2)
      acd305(28)=dotproduct(qshift,spvak2l5)
      acd305(29)=abb305(28)
      acd305(30)=dotproduct(qshift,spvak2l6)
      acd305(31)=abb305(24)
      acd305(32)=abb305(18)
      acd305(33)=dotproduct(qshift,spvak4k2)
      acd305(34)=abb305(30)
      acd305(35)=abb305(20)
      acd305(36)=abb305(33)
      acd305(37)=dotproduct(qshift,spvak1l6)
      acd305(38)=abb305(10)
      acd305(39)=abb305(11)
      acd305(40)=dotproduct(qshift,spvak2k7)
      acd305(41)=abb305(29)
      acd305(42)=dotproduct(qshift,spvak4l6)
      acd305(43)=abb305(19)
      acd305(44)=abb305(13)
      acd305(45)=spvak4l5(iv1)
      acd305(46)=abb305(41)
      acd305(47)=spvak7l5(iv1)
      acd305(48)=abb305(23)
      acd305(49)=abb305(32)
      acd305(50)=abb305(47)
      acd305(51)=spvak1k2(iv1)
      acd305(52)=abb305(27)
      acd305(53)=spvak2l5(iv1)
      acd305(54)=abb305(9)
      acd305(55)=spvak2l6(iv1)
      acd305(56)=spvak1l6(iv1)
      acd305(57)=spvak4k2(iv1)
      acd305(58)=abb305(43)
      acd305(59)=spvak2k7(iv1)
      acd305(60)=spvak4l6(iv1)
      acd305(61)=acd305(57)*acd305(34)
      acd305(62)=acd305(51)*acd305(29)
      acd305(61)=acd305(61)+acd305(62)
      acd305(61)=acd305(28)*acd305(61)
      acd305(62)=acd305(5)*acd305(6)
      acd305(63)=acd305(2)*acd305(4)
      acd305(62)=-acd305(7)+acd305(62)+acd305(63)
      acd305(63)=acd305(1)*acd305(62)
      acd305(64)=acd305(36)*acd305(55)
      acd305(65)=acd305(53)*acd305(34)
      acd305(64)=acd305(64)+acd305(65)
      acd305(64)=acd305(33)*acd305(64)
      acd305(65)=acd305(31)*acd305(55)
      acd305(66)=acd305(53)*acd305(29)
      acd305(65)=acd305(65)+acd305(66)
      acd305(65)=acd305(27)*acd305(65)
      acd305(66)=acd305(6)*acd305(45)
      acd305(67)=acd305(4)*acd305(17)
      acd305(66)=acd305(66)+acd305(67)
      acd305(66)=acd305(18)*acd305(66)
      acd305(67)=-acd305(43)*acd305(60)
      acd305(68)=-acd305(41)*acd305(59)
      acd305(69)=-acd305(38)*acd305(56)
      acd305(70)=2.0_ki*acd305(14)
      acd305(71)=acd305(15)*acd305(70)
      acd305(72)=-acd305(11)*acd305(12)
      acd305(73)=-acd305(45)*acd305(25)
      acd305(74)=-acd305(17)*acd305(19)
      acd305(75)=-acd305(53)*acd305(35)
      acd305(76)=acd305(30)*acd305(36)
      acd305(76)=acd305(76)-acd305(39)
      acd305(77)=acd305(57)*acd305(76)
      acd305(78)=acd305(30)*acd305(31)
      acd305(78)=acd305(78)-acd305(32)
      acd305(79)=acd305(51)*acd305(78)
      acd305(80)=-acd305(47)*acd305(26)
      acd305(81)=acd305(21)*acd305(24)
      acd305(61)=-2.0_ki*acd305(81)+acd305(66)+acd305(65)+acd305(64)+acd305(63)&
      &+acd305(61)+acd305(80)+acd305(79)+acd305(77)+acd305(75)+acd305(74)+acd30&
      &5(73)+acd305(72)+acd305(71)+acd305(69)+acd305(67)+acd305(68)
      acd305(61)=acd305(3)*acd305(61)
      acd305(63)=acd305(28)*acd305(34)
      acd305(63)=acd305(63)+acd305(76)
      acd305(63)=acd305(33)*acd305(63)
      acd305(64)=acd305(28)*acd305(29)
      acd305(64)=acd305(64)+acd305(78)
      acd305(64)=acd305(27)*acd305(64)
      acd305(62)=acd305(18)*acd305(62)
      acd305(65)=-acd305(43)*acd305(42)
      acd305(66)=-acd305(41)*acd305(40)
      acd305(67)=-acd305(38)*acd305(37)
      acd305(68)=acd305(15)*acd305(23)
      acd305(69)=-acd305(12)*acd305(22)
      acd305(71)=-acd305(5)*acd305(25)
      acd305(72)=-acd305(2)*acd305(19)
      acd305(73)=-acd305(8)*acd305(26)
      acd305(74)=-acd305(28)*acd305(35)
      acd305(62)=acd305(62)+acd305(64)+acd305(63)+acd305(74)+acd305(73)+acd305(&
      &72)+acd305(71)+acd305(69)+acd305(68)+acd305(67)+acd305(66)+acd305(44)+ac&
      &d305(65)
      acd305(62)=acd305(21)*acd305(62)
      acd305(63)=-acd305(33)*acd305(49)
      acd305(64)=-acd305(27)*acd305(48)
      acd305(65)=-acd305(18)*acd305(9)
      acd305(63)=acd305(65)+acd305(64)+acd305(63)+acd305(50)
      acd305(63)=acd305(47)*acd305(63)
      acd305(64)=-acd305(16)*acd305(70)
      acd305(65)=acd305(11)*acd305(13)
      acd305(66)=acd305(45)*acd305(46)
      acd305(67)=acd305(17)*acd305(20)
      acd305(68)=acd305(53)*acd305(54)
      acd305(69)=-acd305(8)*acd305(49)
      acd305(69)=acd305(58)+acd305(69)
      acd305(69)=acd305(57)*acd305(69)
      acd305(70)=-acd305(8)*acd305(48)
      acd305(70)=acd305(52)+acd305(70)
      acd305(70)=acd305(51)*acd305(70)
      acd305(71)=-acd305(8)*acd305(9)
      acd305(71)=acd305(10)+acd305(71)
      acd305(71)=acd305(1)*acd305(71)
      brack=acd305(61)+acd305(62)+acd305(63)+acd305(64)+acd305(65)+acd305(66)+a&
      &cd305(67)+acd305(68)+acd305(69)+acd305(70)+acd305(71)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd305h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd305
      complex(ki) :: brack
      acd305(1)=d(iv1,iv2)
      acd305(2)=dotproduct(qshift,spvak7k2)
      acd305(3)=abb305(21)
      acd305(4)=abb305(36)
      acd305(5)=k2(iv1)
      acd305(6)=spvak7k2(iv2)
      acd305(7)=dotproduct(qshift,spvak1l5)
      acd305(8)=abb305(26)
      acd305(9)=dotproduct(qshift,spvak4l5)
      acd305(10)=abb305(49)
      acd305(11)=abb305(12)
      acd305(12)=spvak1l5(iv2)
      acd305(13)=spvak4l5(iv2)
      acd305(14)=spvak7l5(iv2)
      acd305(15)=abb305(55)
      acd305(16)=k2(iv2)
      acd305(17)=spvak7k2(iv1)
      acd305(18)=spvak1l5(iv1)
      acd305(19)=spvak4l5(iv1)
      acd305(20)=spvak7l5(iv1)
      acd305(21)=k7(iv1)
      acd305(22)=abb305(14)
      acd305(23)=k7(iv2)
      acd305(24)=qshift(iv1)
      acd305(25)=qshift(iv2)
      acd305(26)=abb305(34)
      acd305(27)=dotproduct(k2,qshift)
      acd305(28)=abb305(15)
      acd305(29)=abb305(17)
      acd305(30)=abb305(22)
      acd305(31)=spvak1k2(iv2)
      acd305(32)=dotproduct(qshift,spvak2l5)
      acd305(33)=abb305(28)
      acd305(34)=dotproduct(qshift,spvak2l6)
      acd305(35)=abb305(24)
      acd305(36)=abb305(18)
      acd305(37)=spvak2l5(iv2)
      acd305(38)=dotproduct(qshift,spvak1k2)
      acd305(39)=dotproduct(qshift,spvak4k2)
      acd305(40)=abb305(30)
      acd305(41)=abb305(20)
      acd305(42)=spvak2l6(iv2)
      acd305(43)=abb305(33)
      acd305(44)=spvak1l6(iv2)
      acd305(45)=abb305(10)
      acd305(46)=spvak4k2(iv2)
      acd305(47)=abb305(11)
      acd305(48)=spvak2k7(iv2)
      acd305(49)=abb305(29)
      acd305(50)=spvak4l6(iv2)
      acd305(51)=abb305(19)
      acd305(52)=spvak1k2(iv1)
      acd305(53)=spvak2l5(iv1)
      acd305(54)=spvak2l6(iv1)
      acd305(55)=spvak1l6(iv1)
      acd305(56)=spvak4k2(iv1)
      acd305(57)=spvak2k7(iv1)
      acd305(58)=spvak4l6(iv1)
      acd305(59)=abb305(23)
      acd305(60)=abb305(32)
      acd305(61)=acd305(23)*acd305(22)
      acd305(62)=2.0_ki*acd305(3)
      acd305(63)=-acd305(25)*acd305(62)
      acd305(64)=acd305(26)*acd305(6)
      acd305(65)=acd305(44)*acd305(45)
      acd305(66)=acd305(48)*acd305(49)
      acd305(67)=acd305(50)*acd305(51)
      acd305(61)=acd305(67)+acd305(66)+acd305(65)+2.0_ki*acd305(64)+acd305(63)+&
      &acd305(61)
      acd305(61)=acd305(17)*acd305(61)
      acd305(63)=acd305(21)*acd305(22)
      acd305(64)=-acd305(24)*acd305(62)
      acd305(65)=acd305(55)*acd305(45)
      acd305(66)=acd305(57)*acd305(49)
      acd305(67)=acd305(58)*acd305(51)
      acd305(63)=acd305(67)+acd305(66)+acd305(65)+acd305(64)+acd305(63)
      acd305(63)=acd305(6)*acd305(63)
      acd305(64)=-acd305(52)*acd305(33)
      acd305(65)=-acd305(56)*acd305(40)
      acd305(64)=acd305(64)+acd305(65)
      acd305(64)=acd305(37)*acd305(64)
      acd305(65)=-acd305(33)*acd305(31)
      acd305(66)=-acd305(46)*acd305(40)
      acd305(65)=acd305(65)+acd305(66)
      acd305(65)=acd305(53)*acd305(65)
      acd305(64)=acd305(64)+acd305(65)
      acd305(64)=acd305(2)*acd305(64)
      acd305(65)=-acd305(12)*acd305(8)
      acd305(66)=-acd305(13)*acd305(10)
      acd305(65)=acd305(66)+acd305(65)
      acd305(66)=acd305(5)*acd305(2)
      acd305(67)=acd305(27)*acd305(17)
      acd305(66)=acd305(66)+acd305(67)
      acd305(65)=acd305(66)*acd305(65)
      acd305(66)=-acd305(18)*acd305(8)
      acd305(67)=-acd305(19)*acd305(10)
      acd305(66)=acd305(67)+acd305(66)
      acd305(67)=acd305(16)*acd305(2)
      acd305(68)=acd305(27)*acd305(6)
      acd305(67)=acd305(67)+acd305(68)
      acd305(66)=acd305(67)*acd305(66)
      acd305(67)=-acd305(7)*acd305(8)
      acd305(68)=-acd305(9)*acd305(10)
      acd305(67)=acd305(11)+acd305(68)+acd305(67)
      acd305(68)=acd305(5)*acd305(6)
      acd305(69)=acd305(16)*acd305(17)
      acd305(68)=acd305(68)+acd305(69)
      acd305(67)=acd305(68)*acd305(67)
      acd305(68)=-acd305(38)*acd305(33)
      acd305(69)=-acd305(39)*acd305(40)
      acd305(68)=acd305(41)+acd305(69)+acd305(68)
      acd305(69)=acd305(37)*acd305(17)
      acd305(70)=acd305(53)*acd305(6)
      acd305(69)=acd305(69)+acd305(70)
      acd305(68)=acd305(69)*acd305(68)
      acd305(69)=acd305(31)*acd305(17)
      acd305(70)=acd305(52)*acd305(6)
      acd305(69)=acd305(69)+acd305(70)
      acd305(70)=-acd305(33)*acd305(69)
      acd305(71)=acd305(46)*acd305(17)
      acd305(72)=acd305(56)*acd305(6)
      acd305(71)=acd305(71)+acd305(72)
      acd305(72)=-acd305(40)*acd305(71)
      acd305(70)=acd305(72)+acd305(70)
      acd305(70)=acd305(32)*acd305(70)
      acd305(72)=-acd305(35)*acd305(69)
      acd305(73)=-acd305(43)*acd305(71)
      acd305(72)=acd305(73)+acd305(72)
      acd305(72)=acd305(34)*acd305(72)
      acd305(73)=-acd305(52)*acd305(2)
      acd305(74)=-acd305(38)*acd305(17)
      acd305(73)=acd305(74)+acd305(73)
      acd305(73)=acd305(35)*acd305(73)
      acd305(74)=acd305(43)*acd305(2)
      acd305(75)=-acd305(56)*acd305(74)
      acd305(76)=acd305(39)*acd305(43)
      acd305(77)=-acd305(17)*acd305(76)
      acd305(73)=acd305(77)+acd305(75)+acd305(73)
      acd305(73)=acd305(42)*acd305(73)
      acd305(75)=-acd305(31)*acd305(2)
      acd305(77)=-acd305(38)*acd305(6)
      acd305(75)=acd305(77)+acd305(75)
      acd305(75)=acd305(35)*acd305(75)
      acd305(74)=-acd305(46)*acd305(74)
      acd305(76)=-acd305(6)*acd305(76)
      acd305(74)=acd305(76)+acd305(74)+acd305(75)
      acd305(74)=acd305(54)*acd305(74)
      acd305(75)=acd305(14)*acd305(5)
      acd305(76)=acd305(20)*acd305(16)
      acd305(75)=acd305(75)+acd305(76)
      acd305(75)=acd305(15)*acd305(75)
      acd305(76)=acd305(12)*acd305(17)
      acd305(77)=acd305(18)*acd305(6)
      acd305(76)=acd305(76)+acd305(77)
      acd305(76)=acd305(28)*acd305(76)
      acd305(77)=acd305(13)*acd305(17)
      acd305(78)=acd305(19)*acd305(6)
      acd305(77)=acd305(77)+acd305(78)
      acd305(77)=acd305(29)*acd305(77)
      acd305(78)=acd305(14)*acd305(17)
      acd305(79)=acd305(20)*acd305(6)
      acd305(78)=acd305(78)+acd305(79)
      acd305(78)=acd305(30)*acd305(78)
      acd305(69)=acd305(36)*acd305(69)
      acd305(71)=acd305(47)*acd305(71)
      acd305(79)=acd305(14)*acd305(52)
      acd305(80)=acd305(20)*acd305(31)
      acd305(79)=acd305(79)+acd305(80)
      acd305(79)=acd305(59)*acd305(79)
      acd305(80)=acd305(14)*acd305(56)
      acd305(81)=acd305(20)*acd305(46)
      acd305(80)=acd305(80)+acd305(81)
      acd305(80)=acd305(60)*acd305(80)
      acd305(62)=-acd305(2)*acd305(62)
      acd305(62)=2.0_ki*acd305(4)+acd305(62)
      acd305(62)=acd305(1)*acd305(62)
      brack=acd305(61)+acd305(62)+acd305(63)+acd305(64)+acd305(65)+acd305(66)+a&
      &cd305(67)+acd305(68)+acd305(69)+acd305(70)+acd305(71)+acd305(72)+acd305(&
      &73)+acd305(74)+acd305(75)+acd305(76)+acd305(77)+acd305(78)+acd305(79)+ac&
      &d305(80)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd305h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(46) :: acd305
      complex(ki) :: brack
      acd305(1)=d(iv1,iv2)
      acd305(2)=spvak7k2(iv3)
      acd305(3)=abb305(21)
      acd305(4)=d(iv1,iv3)
      acd305(5)=spvak7k2(iv2)
      acd305(6)=d(iv2,iv3)
      acd305(7)=spvak7k2(iv1)
      acd305(8)=k2(iv1)
      acd305(9)=spvak1l5(iv3)
      acd305(10)=abb305(26)
      acd305(11)=spvak4l5(iv3)
      acd305(12)=abb305(49)
      acd305(13)=spvak1l5(iv2)
      acd305(14)=spvak4l5(iv2)
      acd305(15)=k2(iv2)
      acd305(16)=spvak1l5(iv1)
      acd305(17)=spvak4l5(iv1)
      acd305(18)=k2(iv3)
      acd305(19)=spvak1k2(iv2)
      acd305(20)=spvak2l5(iv3)
      acd305(21)=abb305(28)
      acd305(22)=spvak2l6(iv3)
      acd305(23)=abb305(24)
      acd305(24)=spvak1k2(iv3)
      acd305(25)=spvak2l5(iv2)
      acd305(26)=spvak2l6(iv2)
      acd305(27)=spvak4k2(iv3)
      acd305(28)=abb305(30)
      acd305(29)=spvak4k2(iv2)
      acd305(30)=abb305(33)
      acd305(31)=spvak1k2(iv1)
      acd305(32)=spvak2l5(iv1)
      acd305(33)=spvak2l6(iv1)
      acd305(34)=spvak4k2(iv1)
      acd305(35)=acd305(20)*acd305(21)
      acd305(36)=acd305(22)*acd305(23)
      acd305(35)=acd305(35)+acd305(36)
      acd305(36)=acd305(19)*acd305(35)
      acd305(37)=acd305(25)*acd305(21)
      acd305(38)=acd305(26)*acd305(23)
      acd305(37)=acd305(37)+acd305(38)
      acd305(38)=acd305(24)*acd305(37)
      acd305(39)=acd305(25)*acd305(28)
      acd305(40)=acd305(26)*acd305(30)
      acd305(39)=acd305(39)+acd305(40)
      acd305(40)=acd305(27)*acd305(39)
      acd305(41)=acd305(20)*acd305(28)
      acd305(42)=acd305(22)*acd305(30)
      acd305(41)=acd305(41)+acd305(42)
      acd305(42)=acd305(29)*acd305(41)
      acd305(43)=2.0_ki*acd305(3)
      acd305(44)=acd305(6)*acd305(43)
      acd305(36)=acd305(42)+acd305(40)+acd305(44)+acd305(38)+acd305(36)
      acd305(36)=acd305(7)*acd305(36)
      acd305(38)=acd305(8)*acd305(5)
      acd305(40)=acd305(15)*acd305(7)
      acd305(38)=acd305(38)+acd305(40)
      acd305(40)=acd305(9)*acd305(38)
      acd305(42)=acd305(8)*acd305(2)
      acd305(44)=acd305(18)*acd305(7)
      acd305(42)=acd305(42)+acd305(44)
      acd305(44)=acd305(13)*acd305(42)
      acd305(45)=acd305(15)*acd305(2)
      acd305(46)=acd305(18)*acd305(5)
      acd305(45)=acd305(45)+acd305(46)
      acd305(46)=acd305(16)*acd305(45)
      acd305(40)=acd305(46)+acd305(44)+acd305(40)
      acd305(40)=acd305(10)*acd305(40)
      acd305(38)=acd305(11)*acd305(38)
      acd305(42)=acd305(14)*acd305(42)
      acd305(44)=acd305(17)*acd305(45)
      acd305(38)=acd305(44)+acd305(42)+acd305(38)
      acd305(38)=acd305(12)*acd305(38)
      acd305(37)=acd305(2)*acd305(37)
      acd305(35)=acd305(5)*acd305(35)
      acd305(35)=acd305(35)+acd305(37)
      acd305(35)=acd305(31)*acd305(35)
      acd305(37)=acd305(19)*acd305(2)
      acd305(42)=acd305(24)*acd305(5)
      acd305(37)=acd305(37)+acd305(42)
      acd305(42)=acd305(21)*acd305(37)
      acd305(44)=acd305(27)*acd305(5)
      acd305(45)=acd305(29)*acd305(2)
      acd305(44)=acd305(44)+acd305(45)
      acd305(45)=acd305(28)*acd305(44)
      acd305(42)=acd305(45)+acd305(42)
      acd305(42)=acd305(32)*acd305(42)
      acd305(37)=acd305(23)*acd305(37)
      acd305(44)=acd305(30)*acd305(44)
      acd305(37)=acd305(44)+acd305(37)
      acd305(37)=acd305(33)*acd305(37)
      acd305(39)=acd305(2)*acd305(39)
      acd305(41)=acd305(5)*acd305(41)
      acd305(39)=acd305(41)+acd305(39)
      acd305(39)=acd305(34)*acd305(39)
      acd305(41)=acd305(1)*acd305(2)
      acd305(44)=acd305(4)*acd305(5)
      acd305(41)=acd305(44)+acd305(41)
      acd305(41)=acd305(43)*acd305(41)
      brack=acd305(35)+acd305(36)+acd305(37)+acd305(38)+acd305(39)+acd305(40)+a&
      &cd305(41)+acd305(42)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd305h7
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
      qshift = k5
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
!---#[ subroutine reconstruct_d305:
   subroutine     reconstruct_d305(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_305:
      coeffs%coeffs_305%c0 = derivative(czip)
      coeffs%coeffs_305%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_305%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_305%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_305%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_305%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_305%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_305%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_305%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_305%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_305%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_305%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_305%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_305%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_305%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_305%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_305%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_305%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_305%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_305%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_305%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_305%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_305%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_305%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_305%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_305%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_305%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_305%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_305%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_305%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_305%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_305%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_305%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_305%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_305%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_305:
   end subroutine reconstruct_d305
!---#] subroutine reconstruct_d305:
end module     p0_dbaru_epnebbbarg_d305h7l1d
