module     p0_dbaru_epnebbbarg_d126h5l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d126h5l1d.f90
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
   public :: derivative , reconstruct_d126
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd126h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd126
      complex(ki) :: brack
      acd126(1)=dotproduct(k2,qshift)
      acd126(2)=dotproduct(k7,qshift)
      acd126(3)=abb126(33)
      acd126(4)=dotproduct(qshift,qshift)
      acd126(5)=abb126(28)
      acd126(6)=dotproduct(qshift,spvak4k3)
      acd126(7)=dotproduct(qshift,spvak7k2)
      acd126(8)=abb126(25)
      acd126(9)=abb126(48)
      acd126(10)=dotproduct(k3,qshift)
      acd126(11)=abb126(44)
      acd126(12)=dotproduct(k4,qshift)
      acd126(13)=dotproduct(l5,qshift)
      acd126(14)=abb126(23)
      acd126(15)=abb126(22)
      acd126(16)=abb126(26)
      acd126(17)=abb126(45)
      acd126(18)=dotproduct(l6,qshift)
      acd126(19)=dotproduct(qshift,spvak1k2)
      acd126(20)=abb126(19)
      acd126(21)=dotproduct(qshift,spval6k2)
      acd126(22)=abb126(27)
      acd126(23)=dotproduct(qshift,spval6l5)
      acd126(24)=abb126(32)
      acd126(25)=abb126(18)
      acd126(26)=abb126(39)
      acd126(27)=abb126(34)
      acd126(28)=abb126(21)
      acd126(29)=abb126(29)
      acd126(30)=abb126(17)
      acd126(31)=abb126(13)
      acd126(32)=abb126(16)
      acd126(33)=abb126(31)
      acd126(34)=dotproduct(qshift,spvak1l5)
      acd126(35)=abb126(15)
      acd126(36)=abb126(14)
      acd126(37)=abb126(10)
      acd126(38)=abb126(20)
      acd126(39)=dotproduct(qshift,spvak1k3)
      acd126(40)=abb126(12)
      acd126(41)=dotproduct(qshift,spvak1k7)
      acd126(42)=abb126(11)
      acd126(43)=acd126(13)+acd126(18)
      acd126(44)=acd126(16)*acd126(43)
      acd126(45)=-acd126(34)*acd126(35)
      acd126(46)=-acd126(19)*acd126(31)
      acd126(47)=-acd126(23)*acd126(33)
      acd126(48)=-acd126(21)*acd126(32)
      acd126(49)=-acd126(1)*acd126(8)
      acd126(44)=acd126(49)+acd126(48)+acd126(47)+acd126(46)+acd126(36)+acd126(&
      &45)+acd126(44)
      acd126(44)=acd126(6)*acd126(44)
      acd126(45)=-acd126(17)*acd126(43)
      acd126(46)=-acd126(2)-acd126(12)-acd126(10)
      acd126(46)=acd126(11)*acd126(46)
      acd126(47)=acd126(39)*acd126(40)
      acd126(48)=acd126(27)*acd126(41)
      acd126(49)=acd126(23)*acd126(38)
      acd126(50)=acd126(21)*acd126(37)
      acd126(51)=acd126(1)*acd126(9)
      acd126(52)=-acd126(4)*acd126(26)
      acd126(44)=acd126(52)+acd126(44)+acd126(51)+acd126(50)+acd126(49)+acd126(&
      &48)-acd126(42)+acd126(47)+acd126(46)+acd126(45)
      acd126(44)=acd126(7)*acd126(44)
      acd126(45)=acd126(15)*acd126(43)
      acd126(46)=acd126(19)*acd126(27)
      acd126(47)=-acd126(23)*acd126(29)
      acd126(48)=-acd126(21)*acd126(28)
      acd126(49)=-acd126(1)*acd126(5)
      acd126(45)=acd126(49)+acd126(48)+acd126(47)+acd126(30)+acd126(46)+acd126(&
      &45)
      acd126(45)=acd126(4)*acd126(45)
      acd126(43)=-acd126(14)*acd126(43)
      acd126(46)=acd126(19)*acd126(20)
      acd126(47)=acd126(23)*acd126(24)
      acd126(48)=acd126(21)*acd126(22)
      acd126(49)=acd126(1)*acd126(3)
      acd126(43)=acd126(49)+acd126(48)+acd126(47)-acd126(25)+acd126(46)+acd126(&
      &43)
      acd126(43)=acd126(2)*acd126(43)
      brack=acd126(43)+acd126(44)+acd126(45)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd126h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(71) :: acd126
      complex(ki) :: brack
      acd126(1)=k2(iv1)
      acd126(2)=dotproduct(k7,qshift)
      acd126(3)=abb126(33)
      acd126(4)=dotproduct(qshift,qshift)
      acd126(5)=abb126(28)
      acd126(6)=dotproduct(qshift,spvak4k3)
      acd126(7)=dotproduct(qshift,spvak7k2)
      acd126(8)=abb126(25)
      acd126(9)=abb126(48)
      acd126(10)=k3(iv1)
      acd126(11)=abb126(44)
      acd126(12)=k4(iv1)
      acd126(13)=l5(iv1)
      acd126(14)=abb126(23)
      acd126(15)=abb126(22)
      acd126(16)=abb126(26)
      acd126(17)=abb126(45)
      acd126(18)=l6(iv1)
      acd126(19)=k7(iv1)
      acd126(20)=dotproduct(k2,qshift)
      acd126(21)=dotproduct(l5,qshift)
      acd126(22)=dotproduct(l6,qshift)
      acd126(23)=dotproduct(qshift,spvak1k2)
      acd126(24)=abb126(19)
      acd126(25)=dotproduct(qshift,spval6k2)
      acd126(26)=abb126(27)
      acd126(27)=dotproduct(qshift,spval6l5)
      acd126(28)=abb126(32)
      acd126(29)=abb126(18)
      acd126(30)=qshift(iv1)
      acd126(31)=abb126(39)
      acd126(32)=abb126(34)
      acd126(33)=abb126(21)
      acd126(34)=abb126(29)
      acd126(35)=abb126(17)
      acd126(36)=spvak4k3(iv1)
      acd126(37)=abb126(13)
      acd126(38)=abb126(16)
      acd126(39)=abb126(31)
      acd126(40)=dotproduct(qshift,spvak1l5)
      acd126(41)=abb126(15)
      acd126(42)=abb126(14)
      acd126(43)=spvak7k2(iv1)
      acd126(44)=dotproduct(k3,qshift)
      acd126(45)=dotproduct(k4,qshift)
      acd126(46)=abb126(10)
      acd126(47)=abb126(20)
      acd126(48)=dotproduct(qshift,spvak1k3)
      acd126(49)=abb126(12)
      acd126(50)=dotproduct(qshift,spvak1k7)
      acd126(51)=abb126(11)
      acd126(52)=spvak1k2(iv1)
      acd126(53)=spval6k2(iv1)
      acd126(54)=spval6l5(iv1)
      acd126(55)=spvak1k3(iv1)
      acd126(56)=spvak1l5(iv1)
      acd126(57)=spvak1k7(iv1)
      acd126(58)=acd126(21)+acd126(22)
      acd126(59)=acd126(58)*acd126(16)
      acd126(60)=acd126(41)*acd126(40)
      acd126(61)=acd126(23)*acd126(37)
      acd126(62)=acd126(27)*acd126(39)
      acd126(63)=acd126(25)*acd126(38)
      acd126(64)=acd126(20)*acd126(8)
      acd126(59)=-acd126(62)-acd126(60)-acd126(61)-acd126(63)-acd126(64)+acd126&
      &(59)+acd126(42)
      acd126(60)=acd126(36)*acd126(59)
      acd126(61)=-acd126(41)*acd126(56)
      acd126(62)=-acd126(37)*acd126(52)
      acd126(63)=-acd126(54)*acd126(39)
      acd126(64)=-acd126(53)*acd126(38)
      acd126(65)=-acd126(1)*acd126(8)
      acd126(66)=acd126(13)+acd126(18)
      acd126(67)=acd126(16)*acd126(66)
      acd126(61)=acd126(67)+acd126(65)+acd126(64)+acd126(63)+acd126(61)+acd126(&
      &62)
      acd126(61)=acd126(6)*acd126(61)
      acd126(62)=-acd126(17)*acd126(66)
      acd126(63)=-acd126(19)-acd126(12)-acd126(10)
      acd126(63)=acd126(11)*acd126(63)
      acd126(64)=acd126(49)*acd126(55)
      acd126(65)=acd126(54)*acd126(47)
      acd126(67)=acd126(53)*acd126(46)
      acd126(68)=acd126(32)*acd126(57)
      acd126(69)=acd126(1)*acd126(9)
      acd126(70)=2.0_ki*acd126(30)
      acd126(71)=-acd126(31)*acd126(70)
      acd126(60)=acd126(61)+acd126(71)+acd126(60)+acd126(69)+acd126(68)+acd126(&
      &67)+acd126(64)+acd126(65)+acd126(63)+acd126(62)
      acd126(60)=acd126(7)*acd126(60)
      acd126(59)=acd126(6)*acd126(59)
      acd126(61)=-acd126(17)*acd126(58)
      acd126(62)=-acd126(2)-acd126(45)-acd126(44)
      acd126(62)=acd126(11)*acd126(62)
      acd126(63)=acd126(49)*acd126(48)
      acd126(64)=acd126(32)*acd126(50)
      acd126(65)=acd126(27)*acd126(47)
      acd126(67)=acd126(25)*acd126(46)
      acd126(68)=acd126(20)*acd126(9)
      acd126(69)=-acd126(4)*acd126(31)
      acd126(59)=acd126(59)+acd126(69)+acd126(68)+acd126(67)+acd126(65)+acd126(&
      &64)-acd126(51)+acd126(63)+acd126(62)+acd126(61)
      acd126(59)=acd126(43)*acd126(59)
      acd126(61)=acd126(15)*acd126(66)
      acd126(62)=-acd126(54)*acd126(34)
      acd126(63)=-acd126(53)*acd126(33)
      acd126(64)=acd126(32)*acd126(52)
      acd126(65)=-acd126(1)*acd126(5)
      acd126(61)=acd126(65)+acd126(64)+acd126(62)+acd126(63)+acd126(61)
      acd126(61)=acd126(4)*acd126(61)
      acd126(62)=-acd126(14)*acd126(66)
      acd126(63)=acd126(52)*acd126(24)
      acd126(64)=acd126(54)*acd126(28)
      acd126(65)=acd126(53)*acd126(26)
      acd126(66)=acd126(1)*acd126(3)
      acd126(62)=acd126(66)+acd126(65)+acd126(63)+acd126(64)+acd126(62)
      acd126(62)=acd126(2)*acd126(62)
      acd126(63)=acd126(15)*acd126(58)
      acd126(64)=acd126(23)*acd126(32)
      acd126(65)=-acd126(27)*acd126(34)
      acd126(66)=-acd126(25)*acd126(33)
      acd126(67)=-acd126(20)*acd126(5)
      acd126(63)=acd126(67)+acd126(66)+acd126(65)+acd126(35)+acd126(64)+acd126(&
      &63)
      acd126(63)=acd126(63)*acd126(70)
      acd126(58)=-acd126(14)*acd126(58)
      acd126(64)=acd126(23)*acd126(24)
      acd126(65)=acd126(27)*acd126(28)
      acd126(66)=acd126(25)*acd126(26)
      acd126(67)=acd126(20)*acd126(3)
      acd126(58)=acd126(67)+acd126(66)+acd126(65)-acd126(29)+acd126(64)+acd126(&
      &58)
      acd126(58)=acd126(19)*acd126(58)
      brack=acd126(58)+acd126(59)+acd126(60)+acd126(61)+acd126(62)+acd126(63)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd126h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(82) :: acd126
      complex(ki) :: brack
      acd126(1)=d(iv1,iv2)
      acd126(2)=dotproduct(k2,qshift)
      acd126(3)=abb126(28)
      acd126(4)=dotproduct(l5,qshift)
      acd126(5)=abb126(22)
      acd126(6)=dotproduct(l6,qshift)
      acd126(7)=dotproduct(qshift,spvak1k2)
      acd126(8)=abb126(34)
      acd126(9)=dotproduct(qshift,spval6k2)
      acd126(10)=abb126(21)
      acd126(11)=dotproduct(qshift,spval6l5)
      acd126(12)=abb126(29)
      acd126(13)=dotproduct(qshift,spvak7k2)
      acd126(14)=abb126(39)
      acd126(15)=abb126(17)
      acd126(16)=k2(iv1)
      acd126(17)=k7(iv2)
      acd126(18)=abb126(33)
      acd126(19)=qshift(iv2)
      acd126(20)=spvak7k2(iv2)
      acd126(21)=dotproduct(qshift,spvak4k3)
      acd126(22)=abb126(25)
      acd126(23)=abb126(48)
      acd126(24)=spvak4k3(iv2)
      acd126(25)=k2(iv2)
      acd126(26)=k7(iv1)
      acd126(27)=qshift(iv1)
      acd126(28)=spvak7k2(iv1)
      acd126(29)=spvak4k3(iv1)
      acd126(30)=k3(iv1)
      acd126(31)=abb126(44)
      acd126(32)=k3(iv2)
      acd126(33)=k4(iv1)
      acd126(34)=k4(iv2)
      acd126(35)=l5(iv1)
      acd126(36)=abb126(23)
      acd126(37)=abb126(26)
      acd126(38)=abb126(45)
      acd126(39)=l5(iv2)
      acd126(40)=l6(iv1)
      acd126(41)=l6(iv2)
      acd126(42)=spvak1k2(iv2)
      acd126(43)=abb126(19)
      acd126(44)=spval6k2(iv2)
      acd126(45)=abb126(27)
      acd126(46)=spval6l5(iv2)
      acd126(47)=abb126(32)
      acd126(48)=spvak1k2(iv1)
      acd126(49)=spval6k2(iv1)
      acd126(50)=spval6l5(iv1)
      acd126(51)=abb126(13)
      acd126(52)=abb126(16)
      acd126(53)=abb126(10)
      acd126(54)=abb126(31)
      acd126(55)=abb126(20)
      acd126(56)=dotproduct(qshift,spvak1l5)
      acd126(57)=abb126(15)
      acd126(58)=abb126(14)
      acd126(59)=spvak1k3(iv2)
      acd126(60)=abb126(12)
      acd126(61)=spvak1l5(iv2)
      acd126(62)=spvak1k7(iv2)
      acd126(63)=spvak1k3(iv1)
      acd126(64)=spvak1l5(iv1)
      acd126(65)=spvak1k7(iv1)
      acd126(66)=acd126(57)*acd126(61)
      acd126(67)=acd126(39)+acd126(41)
      acd126(68)=acd126(67)*acd126(37)
      acd126(69)=acd126(54)*acd126(46)
      acd126(70)=acd126(52)*acd126(44)
      acd126(71)=acd126(51)*acd126(42)
      acd126(72)=acd126(22)*acd126(25)
      acd126(66)=acd126(69)+acd126(70)+acd126(71)+acd126(72)+acd126(66)-acd126(&
      &68)
      acd126(68)=-acd126(21)*acd126(66)
      acd126(69)=acd126(57)*acd126(56)
      acd126(70)=acd126(54)*acd126(11)
      acd126(71)=acd126(52)*acd126(9)
      acd126(72)=acd126(4)+acd126(6)
      acd126(73)=acd126(72)*acd126(37)
      acd126(74)=acd126(51)*acd126(7)
      acd126(75)=acd126(22)*acd126(2)
      acd126(69)=-acd126(58)+acd126(71)-acd126(73)+acd126(74)+acd126(75)+acd126&
      &(69)+acd126(70)
      acd126(70)=-acd126(24)*acd126(69)
      acd126(71)=-acd126(38)*acd126(67)
      acd126(73)=-acd126(17)-acd126(34)-acd126(32)
      acd126(73)=acd126(31)*acd126(73)
      acd126(74)=acd126(60)*acd126(59)
      acd126(75)=acd126(46)*acd126(55)
      acd126(76)=acd126(44)*acd126(53)
      acd126(77)=acd126(25)*acd126(23)
      acd126(78)=acd126(8)*acd126(62)
      acd126(79)=2.0_ki*acd126(14)
      acd126(80)=-acd126(19)*acd126(79)
      acd126(68)=acd126(70)+acd126(68)+acd126(80)+acd126(78)+acd126(77)+acd126(&
      &76)+acd126(74)+acd126(75)+acd126(73)+acd126(71)
      acd126(68)=acd126(28)*acd126(68)
      acd126(70)=acd126(57)*acd126(64)
      acd126(71)=acd126(35)+acd126(40)
      acd126(73)=acd126(71)*acd126(37)
      acd126(74)=acd126(54)*acd126(50)
      acd126(75)=acd126(52)*acd126(49)
      acd126(76)=acd126(51)*acd126(48)
      acd126(77)=acd126(22)*acd126(16)
      acd126(70)=acd126(74)+acd126(75)+acd126(76)+acd126(77)+acd126(70)-acd126(&
      &73)
      acd126(73)=-acd126(21)*acd126(70)
      acd126(69)=-acd126(29)*acd126(69)
      acd126(74)=-acd126(38)*acd126(71)
      acd126(75)=-acd126(26)-acd126(33)-acd126(30)
      acd126(75)=acd126(31)*acd126(75)
      acd126(76)=acd126(60)*acd126(63)
      acd126(77)=acd126(50)*acd126(55)
      acd126(78)=acd126(49)*acd126(53)
      acd126(80)=acd126(16)*acd126(23)
      acd126(81)=acd126(8)*acd126(65)
      acd126(82)=-acd126(27)*acd126(79)
      acd126(69)=acd126(69)+acd126(73)+acd126(82)+acd126(81)+acd126(80)+acd126(&
      &78)+acd126(76)+acd126(77)+acd126(75)+acd126(74)
      acd126(69)=acd126(20)*acd126(69)
      acd126(73)=-acd126(46)*acd126(12)
      acd126(74)=-acd126(44)*acd126(10)
      acd126(75)=-acd126(25)*acd126(3)
      acd126(76)=acd126(8)*acd126(42)
      acd126(77)=acd126(5)*acd126(67)
      acd126(73)=acd126(77)+acd126(76)+acd126(75)+acd126(73)+acd126(74)
      acd126(73)=acd126(27)*acd126(73)
      acd126(74)=-acd126(50)*acd126(12)
      acd126(75)=-acd126(49)*acd126(10)
      acd126(76)=-acd126(16)*acd126(3)
      acd126(77)=acd126(8)*acd126(48)
      acd126(78)=acd126(5)*acd126(71)
      acd126(74)=acd126(78)+acd126(77)+acd126(76)+acd126(74)+acd126(75)
      acd126(74)=acd126(19)*acd126(74)
      acd126(75)=-acd126(11)*acd126(12)
      acd126(76)=-acd126(9)*acd126(10)
      acd126(77)=-acd126(2)*acd126(3)
      acd126(78)=acd126(8)*acd126(7)
      acd126(72)=acd126(5)*acd126(72)
      acd126(72)=acd126(72)+acd126(78)+acd126(77)+acd126(76)+acd126(15)+acd126(&
      &75)
      acd126(72)=acd126(1)*acd126(72)
      acd126(72)=acd126(72)+acd126(73)+acd126(74)
      acd126(66)=-acd126(29)*acd126(66)
      acd126(70)=-acd126(24)*acd126(70)
      acd126(73)=-acd126(1)*acd126(79)
      acd126(66)=acd126(70)+acd126(73)+acd126(66)
      acd126(66)=acd126(13)*acd126(66)
      acd126(67)=-acd126(36)*acd126(67)
      acd126(70)=acd126(42)*acd126(43)
      acd126(73)=acd126(46)*acd126(47)
      acd126(74)=acd126(44)*acd126(45)
      acd126(75)=acd126(25)*acd126(18)
      acd126(67)=acd126(75)+acd126(74)+acd126(70)+acd126(73)+acd126(67)
      acd126(67)=acd126(26)*acd126(67)
      acd126(70)=-acd126(36)*acd126(71)
      acd126(71)=acd126(48)*acd126(43)
      acd126(73)=acd126(50)*acd126(47)
      acd126(74)=acd126(49)*acd126(45)
      acd126(75)=acd126(16)*acd126(18)
      acd126(70)=acd126(75)+acd126(74)+acd126(71)+acd126(73)+acd126(70)
      acd126(70)=acd126(17)*acd126(70)
      brack=acd126(66)+acd126(67)+acd126(68)+acd126(69)+acd126(70)+2.0_ki*acd12&
      &6(72)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd126h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd126
      complex(ki) :: brack
      acd126(1)=d(iv1,iv2)
      acd126(2)=k2(iv3)
      acd126(3)=abb126(28)
      acd126(4)=l5(iv3)
      acd126(5)=abb126(22)
      acd126(6)=l6(iv3)
      acd126(7)=spvak1k2(iv3)
      acd126(8)=abb126(34)
      acd126(9)=spval6k2(iv3)
      acd126(10)=abb126(21)
      acd126(11)=spval6l5(iv3)
      acd126(12)=abb126(29)
      acd126(13)=spvak7k2(iv3)
      acd126(14)=abb126(39)
      acd126(15)=d(iv1,iv3)
      acd126(16)=k2(iv2)
      acd126(17)=l5(iv2)
      acd126(18)=l6(iv2)
      acd126(19)=spvak1k2(iv2)
      acd126(20)=spval6k2(iv2)
      acd126(21)=spval6l5(iv2)
      acd126(22)=spvak7k2(iv2)
      acd126(23)=d(iv2,iv3)
      acd126(24)=k2(iv1)
      acd126(25)=l5(iv1)
      acd126(26)=l6(iv1)
      acd126(27)=spvak1k2(iv1)
      acd126(28)=spval6k2(iv1)
      acd126(29)=spval6l5(iv1)
      acd126(30)=spvak7k2(iv1)
      acd126(31)=spvak4k3(iv3)
      acd126(32)=abb126(25)
      acd126(33)=spvak4k3(iv2)
      acd126(34)=spvak4k3(iv1)
      acd126(35)=abb126(26)
      acd126(36)=abb126(13)
      acd126(37)=abb126(16)
      acd126(38)=abb126(31)
      acd126(39)=spvak1l5(iv3)
      acd126(40)=abb126(15)
      acd126(41)=spvak1l5(iv2)
      acd126(42)=spvak1l5(iv1)
      acd126(43)=-acd126(12)*acd126(29)
      acd126(44)=-acd126(10)*acd126(28)
      acd126(45)=acd126(8)*acd126(27)
      acd126(46)=-acd126(3)*acd126(24)
      acd126(47)=acd126(25)+acd126(26)
      acd126(48)=acd126(5)*acd126(47)
      acd126(43)=acd126(48)+acd126(46)+acd126(45)+acd126(43)+acd126(44)
      acd126(43)=acd126(23)*acd126(43)
      acd126(44)=-acd126(12)*acd126(21)
      acd126(45)=-acd126(10)*acd126(20)
      acd126(46)=acd126(8)*acd126(19)
      acd126(48)=-acd126(3)*acd126(16)
      acd126(49)=acd126(17)+acd126(18)
      acd126(50)=acd126(5)*acd126(49)
      acd126(44)=acd126(50)+acd126(48)+acd126(46)+acd126(44)+acd126(45)
      acd126(44)=acd126(15)*acd126(44)
      acd126(45)=-acd126(11)*acd126(12)
      acd126(46)=-acd126(9)*acd126(10)
      acd126(48)=acd126(7)*acd126(8)
      acd126(50)=-acd126(2)*acd126(3)
      acd126(51)=acd126(4)+acd126(6)
      acd126(52)=acd126(5)*acd126(51)
      acd126(45)=acd126(52)+acd126(50)+acd126(48)+acd126(45)+acd126(46)
      acd126(45)=acd126(1)*acd126(45)
      acd126(43)=acd126(45)+acd126(43)+acd126(44)
      acd126(44)=acd126(40)*acd126(39)
      acd126(45)=acd126(38)*acd126(11)
      acd126(46)=acd126(37)*acd126(9)
      acd126(48)=acd126(51)*acd126(35)
      acd126(50)=acd126(36)*acd126(7)
      acd126(51)=acd126(32)*acd126(2)
      acd126(44)=-acd126(48)+acd126(44)+acd126(50)+acd126(51)+acd126(45)+acd126&
      &(46)
      acd126(45)=-acd126(33)*acd126(44)
      acd126(46)=acd126(40)*acd126(41)
      acd126(48)=acd126(38)*acd126(21)
      acd126(50)=acd126(37)*acd126(20)
      acd126(49)=acd126(49)*acd126(35)
      acd126(51)=acd126(36)*acd126(19)
      acd126(52)=acd126(32)*acd126(16)
      acd126(46)=-acd126(49)+acd126(46)+acd126(51)+acd126(52)+acd126(48)+acd126&
      &(50)
      acd126(48)=-acd126(31)*acd126(46)
      acd126(49)=2.0_ki*acd126(14)
      acd126(50)=-acd126(23)*acd126(49)
      acd126(45)=acd126(48)+acd126(50)+acd126(45)
      acd126(45)=acd126(30)*acd126(45)
      acd126(44)=-acd126(34)*acd126(44)
      acd126(48)=acd126(40)*acd126(42)
      acd126(50)=acd126(38)*acd126(29)
      acd126(51)=acd126(37)*acd126(28)
      acd126(47)=acd126(47)*acd126(35)
      acd126(52)=acd126(36)*acd126(27)
      acd126(53)=acd126(32)*acd126(24)
      acd126(47)=-acd126(47)+acd126(48)+acd126(52)+acd126(53)+acd126(50)+acd126&
      &(51)
      acd126(48)=-acd126(31)*acd126(47)
      acd126(50)=-acd126(15)*acd126(49)
      acd126(44)=acd126(48)+acd126(50)+acd126(44)
      acd126(44)=acd126(22)*acd126(44)
      acd126(46)=-acd126(34)*acd126(46)
      acd126(47)=-acd126(33)*acd126(47)
      acd126(48)=-acd126(1)*acd126(49)
      acd126(46)=acd126(47)+acd126(48)+acd126(46)
      acd126(46)=acd126(13)*acd126(46)
      brack=2.0_ki*acd126(43)+acd126(44)+acd126(45)+acd126(46)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd126h5
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
      qshift = k3-k2+k7+k4
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
!---#[ subroutine reconstruct_d126:
   subroutine     reconstruct_d126(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_126:
      coeffs%coeffs_126%c0 = derivative(czip)
      coeffs%coeffs_126%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_126%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_126%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_126%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_126%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_126%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_126%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_126%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_126%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_126%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_126%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_126%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_126%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_126%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_126%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_126%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_126%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_126%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_126%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_126%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_126%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_126%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_126%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_126%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_126%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_126%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_126%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_126%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_126%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_126%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_126%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_126%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_126%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_126%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_126:
   end subroutine reconstruct_d126
!---#] subroutine reconstruct_d126:
end module     p0_dbaru_epnebbbarg_d126h5l1d
