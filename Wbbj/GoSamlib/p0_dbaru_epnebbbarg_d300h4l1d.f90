module     p0_dbaru_epnebbbarg_d300h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d300h4l1d.f90
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
   public :: derivative , reconstruct_d300
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd300h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd300
      complex(ki) :: brack
      acd300(1)=dotproduct(k2,qshift)
      acd300(2)=dotproduct(qshift,spvak1k2)
      acd300(3)=dotproduct(qshift,spvak7k2)
      acd300(4)=abb300(21)
      acd300(5)=dotproduct(qshift,spval5k2)
      acd300(6)=abb300(41)
      acd300(7)=abb300(23)
      acd300(8)=dotproduct(l5,qshift)
      acd300(9)=abb300(16)
      acd300(10)=abb300(25)
      acd300(11)=dotproduct(qshift,qshift)
      acd300(12)=abb300(22)
      acd300(13)=abb300(35)
      acd300(14)=dotproduct(qshift,spvak4k3)
      acd300(15)=abb300(11)
      acd300(16)=abb300(12)
      acd300(17)=dotproduct(qshift,spval5k1)
      acd300(18)=abb300(13)
      acd300(19)=dotproduct(qshift,spval5k3)
      acd300(20)=abb300(27)
      acd300(21)=dotproduct(qshift,spval5l6)
      acd300(22)=abb300(24)
      acd300(23)=dotproduct(qshift,spval5k7)
      acd300(24)=abb300(26)
      acd300(25)=abb300(14)
      acd300(26)=abb300(43)
      acd300(27)=abb300(38)
      acd300(28)=abb300(42)
      acd300(29)=abb300(10)
      acd300(30)=dotproduct(qshift,spvak4k2)
      acd300(31)=abb300(19)
      acd300(32)=dotproduct(qshift,spval6k2)
      acd300(33)=abb300(44)
      acd300(34)=abb300(15)
      acd300(35)=abb300(46)
      acd300(36)=abb300(37)
      acd300(37)=abb300(34)
      acd300(38)=abb300(17)
      acd300(39)=abb300(18)
      acd300(40)=abb300(39)
      acd300(41)=abb300(20)
      acd300(42)=-acd300(23)*acd300(24)
      acd300(43)=-acd300(21)*acd300(22)
      acd300(44)=-acd300(19)*acd300(20)
      acd300(45)=-acd300(17)*acd300(18)
      acd300(46)=acd300(11)*acd300(12)
      acd300(47)=-acd300(8)*acd300(9)
      acd300(48)=-acd300(1)*acd300(4)
      acd300(49)=acd300(14)*acd300(15)
      acd300(49)=-acd300(16)+acd300(49)
      acd300(49)=acd300(5)*acd300(49)
      acd300(42)=acd300(49)+acd300(48)+acd300(47)+acd300(46)+acd300(45)+acd300(&
      &44)+acd300(43)+acd300(25)+acd300(42)
      acd300(42)=acd300(2)*acd300(42)
      acd300(43)=-acd300(32)*acd300(33)
      acd300(44)=-acd300(30)*acd300(31)
      acd300(45)=-acd300(14)*acd300(29)
      acd300(46)=-acd300(1)*acd300(6)
      acd300(47)=-acd300(5)*acd300(28)
      acd300(43)=acd300(47)+acd300(46)+acd300(45)+acd300(44)+acd300(34)+acd300(&
      &43)
      acd300(43)=acd300(5)*acd300(43)
      acd300(44)=acd300(32)*acd300(40)
      acd300(45)=acd300(30)*acd300(39)
      acd300(46)=acd300(23)*acd300(38)
      acd300(47)=acd300(21)*acd300(37)
      acd300(48)=acd300(19)*acd300(36)
      acd300(49)=acd300(17)*acd300(35)
      acd300(50)=-acd300(11)*acd300(13)
      acd300(51)=acd300(8)*acd300(10)
      acd300(52)=acd300(1)*acd300(7)
      acd300(53)=-acd300(5)*acd300(26)
      acd300(53)=acd300(27)+acd300(53)
      acd300(53)=acd300(3)*acd300(53)
      acd300(42)=acd300(53)+acd300(42)+acd300(43)+acd300(52)+acd300(51)+acd300(&
      &50)+acd300(49)+acd300(48)+acd300(47)+acd300(46)+acd300(45)-acd300(41)+ac&
      &d300(44)
      brack=acd300(42)*acd300(3)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd300h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(71) :: acd300
      complex(ki) :: brack
      acd300(1)=k2(iv1)
      acd300(2)=dotproduct(qshift,spvak1k2)
      acd300(3)=dotproduct(qshift,spvak7k2)
      acd300(4)=abb300(21)
      acd300(5)=dotproduct(qshift,spval5k2)
      acd300(6)=abb300(41)
      acd300(7)=abb300(23)
      acd300(8)=l5(iv1)
      acd300(9)=abb300(16)
      acd300(10)=abb300(25)
      acd300(11)=qshift(iv1)
      acd300(12)=abb300(22)
      acd300(13)=abb300(35)
      acd300(14)=spvak1k2(iv1)
      acd300(15)=dotproduct(k2,qshift)
      acd300(16)=dotproduct(l5,qshift)
      acd300(17)=dotproduct(qshift,qshift)
      acd300(18)=dotproduct(qshift,spvak4k3)
      acd300(19)=abb300(11)
      acd300(20)=abb300(12)
      acd300(21)=dotproduct(qshift,spval5k1)
      acd300(22)=abb300(13)
      acd300(23)=dotproduct(qshift,spval5k3)
      acd300(24)=abb300(27)
      acd300(25)=dotproduct(qshift,spval5l6)
      acd300(26)=abb300(24)
      acd300(27)=dotproduct(qshift,spval5k7)
      acd300(28)=abb300(26)
      acd300(29)=abb300(14)
      acd300(30)=spvak7k2(iv1)
      acd300(31)=abb300(43)
      acd300(32)=abb300(38)
      acd300(33)=abb300(42)
      acd300(34)=abb300(10)
      acd300(35)=dotproduct(qshift,spvak4k2)
      acd300(36)=abb300(19)
      acd300(37)=dotproduct(qshift,spval6k2)
      acd300(38)=abb300(44)
      acd300(39)=abb300(15)
      acd300(40)=abb300(46)
      acd300(41)=abb300(37)
      acd300(42)=abb300(34)
      acd300(43)=abb300(17)
      acd300(44)=abb300(18)
      acd300(45)=abb300(39)
      acd300(46)=abb300(20)
      acd300(47)=spval5k2(iv1)
      acd300(48)=spvak4k3(iv1)
      acd300(49)=spval5k1(iv1)
      acd300(50)=spval5k3(iv1)
      acd300(51)=spval5l6(iv1)
      acd300(52)=spval5k7(iv1)
      acd300(53)=spvak4k2(iv1)
      acd300(54)=spval6k2(iv1)
      acd300(55)=-acd300(28)*acd300(52)
      acd300(56)=-acd300(26)*acd300(51)
      acd300(57)=-acd300(24)*acd300(50)
      acd300(58)=-acd300(22)*acd300(49)
      acd300(59)=2.0_ki*acd300(11)
      acd300(60)=acd300(12)*acd300(59)
      acd300(61)=-acd300(9)*acd300(8)
      acd300(62)=-acd300(1)*acd300(4)
      acd300(63)=acd300(18)*acd300(19)
      acd300(63)=acd300(63)-acd300(20)
      acd300(64)=acd300(47)*acd300(63)
      acd300(65)=acd300(5)*acd300(19)*acd300(48)
      acd300(55)=acd300(65)+acd300(64)+acd300(62)+acd300(61)+acd300(60)+acd300(&
      &58)+acd300(57)+acd300(55)+acd300(56)
      acd300(55)=acd300(2)*acd300(55)
      acd300(56)=acd300(27)*acd300(28)
      acd300(57)=acd300(25)*acd300(26)
      acd300(58)=acd300(23)*acd300(24)
      acd300(60)=acd300(21)*acd300(22)
      acd300(61)=acd300(12)*acd300(17)
      acd300(62)=acd300(9)*acd300(16)
      acd300(64)=acd300(15)*acd300(4)
      acd300(56)=acd300(60)-acd300(61)+acd300(62)+acd300(64)-acd300(29)+acd300(&
      &58)+acd300(56)+acd300(57)
      acd300(57)=-acd300(14)*acd300(56)
      acd300(58)=-acd300(38)*acd300(54)
      acd300(60)=-acd300(36)*acd300(53)
      acd300(61)=-acd300(34)*acd300(48)
      acd300(62)=-acd300(1)*acd300(6)
      acd300(64)=acd300(47)*acd300(33)
      acd300(65)=acd300(14)*acd300(63)
      acd300(58)=acd300(65)-2.0_ki*acd300(64)+acd300(62)+acd300(61)+acd300(58)+&
      &acd300(60)
      acd300(58)=acd300(5)*acd300(58)
      acd300(60)=acd300(37)*acd300(38)
      acd300(61)=acd300(35)*acd300(36)
      acd300(62)=acd300(18)*acd300(34)
      acd300(64)=acd300(15)*acd300(6)
      acd300(60)=-acd300(39)+acd300(60)+acd300(61)+acd300(62)+acd300(64)
      acd300(61)=-acd300(3)*acd300(31)
      acd300(61)=acd300(61)-acd300(60)
      acd300(61)=acd300(47)*acd300(61)
      acd300(62)=acd300(45)*acd300(54)
      acd300(64)=acd300(44)*acd300(53)
      acd300(65)=acd300(43)*acd300(52)
      acd300(66)=acd300(42)*acd300(51)
      acd300(67)=acd300(41)*acd300(50)
      acd300(68)=acd300(40)*acd300(49)
      acd300(59)=-acd300(13)*acd300(59)
      acd300(69)=acd300(8)*acd300(10)
      acd300(70)=acd300(1)*acd300(7)
      acd300(71)=-acd300(5)*acd300(31)
      acd300(71)=acd300(32)+acd300(71)
      acd300(71)=acd300(30)*acd300(71)
      acd300(55)=2.0_ki*acd300(71)+acd300(55)+acd300(58)+acd300(57)+acd300(70)+&
      &acd300(69)+acd300(59)+acd300(68)+acd300(67)+acd300(66)+acd300(65)+acd300&
      &(62)+acd300(64)+acd300(61)
      acd300(55)=acd300(3)*acd300(55)
      acd300(57)=acd300(5)*acd300(63)
      acd300(56)=acd300(57)-acd300(56)
      acd300(56)=acd300(2)*acd300(56)
      acd300(57)=-acd300(5)*acd300(33)
      acd300(57)=acd300(57)-acd300(60)
      acd300(57)=acd300(5)*acd300(57)
      acd300(58)=acd300(37)*acd300(45)
      acd300(59)=acd300(35)*acd300(44)
      acd300(60)=acd300(27)*acd300(43)
      acd300(61)=acd300(25)*acd300(42)
      acd300(62)=acd300(23)*acd300(41)
      acd300(63)=acd300(21)*acd300(40)
      acd300(64)=-acd300(17)*acd300(13)
      acd300(65)=acd300(16)*acd300(10)
      acd300(66)=acd300(15)*acd300(7)
      acd300(56)=acd300(56)+acd300(57)+acd300(66)+acd300(65)+acd300(64)+acd300(&
      &63)+acd300(62)+acd300(61)+acd300(60)+acd300(59)-acd300(46)+acd300(58)
      acd300(56)=acd300(30)*acd300(56)
      brack=acd300(55)+acd300(56)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd300h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(91) :: acd300
      complex(ki) :: brack
      acd300(1)=d(iv1,iv2)
      acd300(2)=dotproduct(qshift,spvak1k2)
      acd300(3)=dotproduct(qshift,spvak7k2)
      acd300(4)=abb300(22)
      acd300(5)=abb300(35)
      acd300(6)=k2(iv1)
      acd300(7)=spvak1k2(iv2)
      acd300(8)=abb300(21)
      acd300(9)=spvak7k2(iv2)
      acd300(10)=dotproduct(qshift,spval5k2)
      acd300(11)=abb300(41)
      acd300(12)=abb300(23)
      acd300(13)=spval5k2(iv2)
      acd300(14)=k2(iv2)
      acd300(15)=spvak1k2(iv1)
      acd300(16)=spvak7k2(iv1)
      acd300(17)=spval5k2(iv1)
      acd300(18)=l5(iv1)
      acd300(19)=abb300(16)
      acd300(20)=abb300(25)
      acd300(21)=l5(iv2)
      acd300(22)=qshift(iv1)
      acd300(23)=qshift(iv2)
      acd300(24)=dotproduct(k2,qshift)
      acd300(25)=dotproduct(l5,qshift)
      acd300(26)=dotproduct(qshift,qshift)
      acd300(27)=dotproduct(qshift,spvak4k3)
      acd300(28)=abb300(11)
      acd300(29)=abb300(12)
      acd300(30)=dotproduct(qshift,spval5k1)
      acd300(31)=abb300(13)
      acd300(32)=dotproduct(qshift,spval5k3)
      acd300(33)=abb300(27)
      acd300(34)=dotproduct(qshift,spval5l6)
      acd300(35)=abb300(24)
      acd300(36)=dotproduct(qshift,spval5k7)
      acd300(37)=abb300(26)
      acd300(38)=abb300(14)
      acd300(39)=spvak4k3(iv2)
      acd300(40)=spval5k1(iv2)
      acd300(41)=spval5k3(iv2)
      acd300(42)=spval5l6(iv2)
      acd300(43)=spval5k7(iv2)
      acd300(44)=spvak4k3(iv1)
      acd300(45)=spval5k1(iv1)
      acd300(46)=spval5k3(iv1)
      acd300(47)=spval5l6(iv1)
      acd300(48)=spval5k7(iv1)
      acd300(49)=abb300(43)
      acd300(50)=abb300(38)
      acd300(51)=abb300(42)
      acd300(52)=abb300(10)
      acd300(53)=dotproduct(qshift,spvak4k2)
      acd300(54)=abb300(19)
      acd300(55)=dotproduct(qshift,spval6k2)
      acd300(56)=abb300(44)
      acd300(57)=abb300(15)
      acd300(58)=abb300(46)
      acd300(59)=abb300(37)
      acd300(60)=abb300(34)
      acd300(61)=abb300(17)
      acd300(62)=spvak4k2(iv2)
      acd300(63)=abb300(18)
      acd300(64)=spval6k2(iv2)
      acd300(65)=abb300(39)
      acd300(66)=spvak4k2(iv1)
      acd300(67)=spval6k2(iv1)
      acd300(68)=acd300(37)*acd300(48)
      acd300(69)=acd300(35)*acd300(47)
      acd300(70)=acd300(33)*acd300(46)
      acd300(71)=acd300(31)*acd300(45)
      acd300(72)=acd300(19)*acd300(18)
      acd300(73)=acd300(28)*acd300(27)
      acd300(73)=acd300(73)-acd300(29)
      acd300(74)=acd300(73)*acd300(17)
      acd300(75)=acd300(8)*acd300(6)
      acd300(76)=2.0_ki*acd300(4)
      acd300(77)=acd300(76)*acd300(22)
      acd300(78)=acd300(10)*acd300(28)
      acd300(79)=acd300(78)*acd300(44)
      acd300(68)=acd300(71)+acd300(72)-acd300(74)-acd300(79)+acd300(68)+acd300(&
      &75)-acd300(77)+acd300(69)+acd300(70)
      acd300(69)=-acd300(2)*acd300(68)
      acd300(70)=acd300(37)*acd300(36)
      acd300(71)=acd300(35)*acd300(34)
      acd300(72)=acd300(33)*acd300(32)
      acd300(74)=acd300(31)*acd300(30)
      acd300(75)=acd300(19)*acd300(25)
      acd300(77)=acd300(8)*acd300(24)
      acd300(79)=acd300(73)*acd300(10)
      acd300(80)=acd300(4)*acd300(26)
      acd300(70)=acd300(74)+acd300(75)+acd300(77)-acd300(79)+acd300(70)-acd300(&
      &80)-acd300(38)+acd300(71)+acd300(72)
      acd300(71)=-acd300(15)*acd300(70)
      acd300(72)=acd300(56)*acd300(67)
      acd300(74)=acd300(54)*acd300(66)
      acd300(75)=acd300(52)*acd300(44)
      acd300(77)=acd300(11)*acd300(6)
      acd300(79)=2.0_ki*acd300(17)
      acd300(80)=acd300(79)*acd300(51)
      acd300(72)=acd300(80)+acd300(72)+acd300(74)+acd300(75)+acd300(77)
      acd300(74)=-acd300(10)*acd300(72)
      acd300(75)=acd300(56)*acd300(55)
      acd300(77)=acd300(54)*acd300(53)
      acd300(80)=acd300(11)*acd300(24)
      acd300(81)=acd300(27)*acd300(52)
      acd300(75)=acd300(75)+acd300(81)-acd300(57)+acd300(77)+acd300(80)
      acd300(77)=-acd300(17)*acd300(75)
      acd300(80)=acd300(3)*acd300(49)
      acd300(79)=-acd300(79)*acd300(80)
      acd300(81)=acd300(67)*acd300(65)
      acd300(82)=acd300(66)*acd300(63)
      acd300(83)=acd300(48)*acd300(61)
      acd300(84)=acd300(47)*acd300(60)
      acd300(85)=acd300(46)*acd300(59)
      acd300(86)=acd300(45)*acd300(58)
      acd300(87)=acd300(18)*acd300(20)
      acd300(88)=2.0_ki*acd300(5)
      acd300(89)=-acd300(22)*acd300(88)
      acd300(90)=acd300(6)*acd300(12)
      acd300(91)=-acd300(10)*acd300(49)
      acd300(91)=acd300(50)+acd300(91)
      acd300(91)=acd300(16)*acd300(91)
      acd300(69)=2.0_ki*acd300(91)+acd300(79)+acd300(69)+acd300(71)+acd300(74)+&
      &acd300(77)+acd300(90)+acd300(89)+acd300(87)+acd300(86)+acd300(85)+acd300&
      &(84)+acd300(83)+acd300(81)+acd300(82)
      acd300(69)=acd300(9)*acd300(69)
      acd300(71)=acd300(37)*acd300(43)
      acd300(74)=acd300(35)*acd300(42)
      acd300(77)=acd300(33)*acd300(41)
      acd300(79)=acd300(31)*acd300(40)
      acd300(81)=acd300(19)*acd300(21)
      acd300(82)=acd300(8)*acd300(14)
      acd300(73)=acd300(73)*acd300(13)
      acd300(83)=acd300(76)*acd300(23)
      acd300(78)=acd300(78)*acd300(39)
      acd300(71)=acd300(79)+acd300(81)+acd300(82)-acd300(73)+acd300(71)-acd300(&
      &83)-acd300(78)+acd300(74)+acd300(77)
      acd300(73)=-acd300(2)*acd300(71)
      acd300(70)=-acd300(7)*acd300(70)
      acd300(74)=-2.0_ki*acd300(80)-acd300(75)
      acd300(74)=acd300(13)*acd300(74)
      acd300(75)=acd300(56)*acd300(64)
      acd300(77)=acd300(54)*acd300(62)
      acd300(78)=acd300(52)*acd300(39)
      acd300(79)=acd300(11)*acd300(14)
      acd300(75)=acd300(75)+acd300(77)+acd300(78)+acd300(79)
      acd300(77)=2.0_ki*acd300(51)
      acd300(77)=-acd300(13)*acd300(77)
      acd300(77)=acd300(77)-acd300(75)
      acd300(77)=acd300(10)*acd300(77)
      acd300(78)=acd300(64)*acd300(65)
      acd300(79)=acd300(62)*acd300(63)
      acd300(80)=acd300(43)*acd300(61)
      acd300(81)=acd300(42)*acd300(60)
      acd300(82)=acd300(41)*acd300(59)
      acd300(83)=acd300(40)*acd300(58)
      acd300(84)=acd300(21)*acd300(20)
      acd300(85)=-acd300(23)*acd300(88)
      acd300(86)=acd300(14)*acd300(12)
      acd300(70)=acd300(73)+acd300(70)+acd300(77)+acd300(86)+acd300(85)+acd300(&
      &84)+acd300(83)+acd300(82)+acd300(81)+acd300(80)+acd300(78)+acd300(79)+ac&
      &d300(74)
      acd300(70)=acd300(16)*acd300(70)
      acd300(71)=-acd300(15)*acd300(71)
      acd300(68)=-acd300(7)*acd300(68)
      acd300(72)=-acd300(13)*acd300(72)
      acd300(73)=-acd300(17)*acd300(75)
      acd300(74)=acd300(17)*acd300(39)
      acd300(75)=acd300(13)*acd300(44)
      acd300(74)=acd300(75)+acd300(74)
      acd300(74)=acd300(28)*acd300(74)
      acd300(75)=acd300(1)*acd300(76)
      acd300(74)=acd300(75)+acd300(74)
      acd300(74)=acd300(2)*acd300(74)
      acd300(75)=-acd300(1)*acd300(88)
      acd300(68)=acd300(74)+acd300(68)+acd300(71)+acd300(72)+acd300(75)+acd300(&
      &73)
      acd300(68)=acd300(3)*acd300(68)
      brack=acd300(68)+acd300(69)+acd300(70)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd300h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(85) :: acd300
      complex(ki) :: brack
      acd300(1)=d(iv1,iv2)
      acd300(2)=spvak1k2(iv3)
      acd300(3)=dotproduct(qshift,spvak7k2)
      acd300(4)=abb300(22)
      acd300(5)=spvak7k2(iv3)
      acd300(6)=dotproduct(qshift,spvak1k2)
      acd300(7)=abb300(35)
      acd300(8)=d(iv1,iv3)
      acd300(9)=spvak1k2(iv2)
      acd300(10)=spvak7k2(iv2)
      acd300(11)=d(iv2,iv3)
      acd300(12)=spvak1k2(iv1)
      acd300(13)=spvak7k2(iv1)
      acd300(14)=k2(iv1)
      acd300(15)=abb300(21)
      acd300(16)=spval5k2(iv3)
      acd300(17)=abb300(41)
      acd300(18)=spval5k2(iv2)
      acd300(19)=k2(iv2)
      acd300(20)=spval5k2(iv1)
      acd300(21)=k2(iv3)
      acd300(22)=l5(iv1)
      acd300(23)=abb300(16)
      acd300(24)=l5(iv2)
      acd300(25)=l5(iv3)
      acd300(26)=qshift(iv1)
      acd300(27)=qshift(iv2)
      acd300(28)=qshift(iv3)
      acd300(29)=dotproduct(qshift,spvak4k3)
      acd300(30)=abb300(11)
      acd300(31)=abb300(12)
      acd300(32)=spvak4k3(iv3)
      acd300(33)=dotproduct(qshift,spval5k2)
      acd300(34)=spval5k1(iv3)
      acd300(35)=abb300(13)
      acd300(36)=spval5k3(iv3)
      acd300(37)=abb300(27)
      acd300(38)=spval5l6(iv3)
      acd300(39)=abb300(24)
      acd300(40)=spval5k7(iv3)
      acd300(41)=abb300(26)
      acd300(42)=spvak4k3(iv2)
      acd300(43)=spval5k1(iv2)
      acd300(44)=spval5k3(iv2)
      acd300(45)=spval5l6(iv2)
      acd300(46)=spval5k7(iv2)
      acd300(47)=spvak4k3(iv1)
      acd300(48)=spval5k1(iv1)
      acd300(49)=spval5k3(iv1)
      acd300(50)=spval5l6(iv1)
      acd300(51)=spval5k7(iv1)
      acd300(52)=abb300(43)
      acd300(53)=abb300(42)
      acd300(54)=abb300(10)
      acd300(55)=spvak4k2(iv3)
      acd300(56)=abb300(19)
      acd300(57)=spval6k2(iv3)
      acd300(58)=abb300(44)
      acd300(59)=spvak4k2(iv2)
      acd300(60)=spval6k2(iv2)
      acd300(61)=spvak4k2(iv1)
      acd300(62)=spval6k2(iv1)
      acd300(63)=-acd300(22)*acd300(23)
      acd300(64)=2.0_ki*acd300(4)
      acd300(65)=acd300(26)*acd300(64)
      acd300(66)=-acd300(48)*acd300(35)
      acd300(67)=-acd300(49)*acd300(37)
      acd300(68)=-acd300(50)*acd300(39)
      acd300(69)=-acd300(51)*acd300(41)
      acd300(63)=acd300(69)+acd300(68)+acd300(67)+acd300(66)+acd300(65)+acd300(&
      &63)
      acd300(65)=acd300(2)*acd300(10)
      acd300(66)=acd300(9)*acd300(5)
      acd300(65)=acd300(65)+acd300(66)
      acd300(63)=acd300(65)*acd300(63)
      acd300(66)=-acd300(24)*acd300(23)
      acd300(67)=acd300(27)*acd300(64)
      acd300(68)=-acd300(43)*acd300(35)
      acd300(69)=-acd300(44)*acd300(37)
      acd300(70)=-acd300(45)*acd300(39)
      acd300(71)=-acd300(46)*acd300(41)
      acd300(66)=acd300(71)+acd300(70)+acd300(69)+acd300(68)+acd300(67)+acd300(&
      &66)
      acd300(67)=acd300(2)*acd300(13)
      acd300(68)=acd300(12)*acd300(5)
      acd300(67)=acd300(67)+acd300(68)
      acd300(66)=acd300(67)*acd300(66)
      acd300(68)=-acd300(25)*acd300(23)
      acd300(64)=acd300(28)*acd300(64)
      acd300(69)=-acd300(34)*acd300(35)
      acd300(70)=-acd300(36)*acd300(37)
      acd300(71)=-acd300(38)*acd300(39)
      acd300(72)=-acd300(40)*acd300(41)
      acd300(64)=acd300(72)+acd300(71)+acd300(70)+acd300(69)+acd300(64)+acd300(&
      &68)
      acd300(68)=acd300(9)*acd300(13)
      acd300(69)=acd300(12)*acd300(10)
      acd300(68)=acd300(68)+acd300(69)
      acd300(64)=acd300(68)*acd300(64)
      acd300(69)=acd300(6)*acd300(4)
      acd300(70)=acd300(69)-acd300(7)
      acd300(71)=acd300(10)*acd300(70)
      acd300(72)=acd300(3)*acd300(4)
      acd300(73)=acd300(9)*acd300(72)
      acd300(71)=acd300(73)+acd300(71)
      acd300(71)=acd300(8)*acd300(71)
      acd300(70)=acd300(13)*acd300(70)
      acd300(73)=acd300(12)*acd300(72)
      acd300(70)=acd300(73)+acd300(70)
      acd300(70)=acd300(11)*acd300(70)
      acd300(73)=acd300(20)*acd300(10)
      acd300(74)=acd300(18)*acd300(13)
      acd300(73)=acd300(73)+acd300(74)
      acd300(75)=-acd300(5)*acd300(73)
      acd300(76)=acd300(16)*acd300(13)
      acd300(77)=-acd300(10)*acd300(76)
      acd300(75)=acd300(77)+acd300(75)
      acd300(75)=acd300(52)*acd300(75)
      acd300(77)=acd300(16)*acd300(10)
      acd300(78)=acd300(18)*acd300(5)
      acd300(77)=acd300(77)+acd300(78)
      acd300(78)=-acd300(20)*acd300(77)
      acd300(74)=-acd300(16)*acd300(74)
      acd300(74)=acd300(74)+acd300(78)
      acd300(74)=acd300(53)*acd300(74)
      acd300(70)=acd300(71)+acd300(70)+acd300(75)+acd300(74)
      acd300(71)=-acd300(55)*acd300(73)
      acd300(74)=acd300(20)*acd300(5)
      acd300(74)=acd300(74)+acd300(76)
      acd300(75)=-acd300(59)*acd300(74)
      acd300(76)=-acd300(61)*acd300(77)
      acd300(71)=acd300(76)+acd300(75)+acd300(71)
      acd300(71)=acd300(56)*acd300(71)
      acd300(75)=-acd300(57)*acd300(73)
      acd300(76)=-acd300(60)*acd300(74)
      acd300(78)=-acd300(62)*acd300(77)
      acd300(75)=acd300(78)+acd300(76)+acd300(75)
      acd300(75)=acd300(58)*acd300(75)
      acd300(76)=acd300(30)*acd300(68)
      acd300(78)=acd300(16)*acd300(76)
      acd300(79)=acd300(30)*acd300(67)
      acd300(80)=acd300(18)*acd300(79)
      acd300(81)=acd300(30)*acd300(65)
      acd300(82)=acd300(20)*acd300(81)
      acd300(78)=acd300(82)+acd300(78)+acd300(80)
      acd300(78)=acd300(29)*acd300(78)
      acd300(80)=-acd300(16)*acd300(68)
      acd300(82)=-acd300(18)*acd300(67)
      acd300(83)=-acd300(20)*acd300(65)
      acd300(80)=acd300(83)+acd300(80)+acd300(82)
      acd300(80)=acd300(31)*acd300(80)
      acd300(76)=acd300(32)*acd300(76)
      acd300(79)=acd300(42)*acd300(79)
      acd300(81)=acd300(47)*acd300(81)
      acd300(76)=acd300(81)+acd300(76)+acd300(79)
      acd300(76)=acd300(33)*acd300(76)
      acd300(79)=-acd300(32)*acd300(73)
      acd300(81)=-acd300(42)*acd300(74)
      acd300(82)=-acd300(47)*acd300(77)
      acd300(79)=acd300(82)+acd300(79)+acd300(81)
      acd300(79)=acd300(54)*acd300(79)
      acd300(72)=acd300(2)*acd300(72)
      acd300(69)=acd300(5)*acd300(69)
      acd300(81)=acd300(7)*acd300(5)
      acd300(69)=-acd300(81)+acd300(72)+acd300(69)
      acd300(69)=2.0_ki*acd300(69)
      acd300(69)=acd300(1)*acd300(69)
      acd300(72)=acd300(18)*acd300(30)
      acd300(81)=acd300(12)*acd300(72)
      acd300(82)=acd300(20)*acd300(30)
      acd300(83)=acd300(9)*acd300(82)
      acd300(81)=acd300(81)+acd300(83)
      acd300(81)=acd300(3)*acd300(81)
      acd300(83)=acd300(6)*acd300(30)
      acd300(84)=acd300(73)*acd300(83)
      acd300(81)=acd300(81)+acd300(84)
      acd300(81)=acd300(32)*acd300(81)
      acd300(84)=acd300(16)*acd300(30)
      acd300(85)=acd300(12)*acd300(84)
      acd300(82)=acd300(2)*acd300(82)
      acd300(82)=acd300(85)+acd300(82)
      acd300(82)=acd300(3)*acd300(82)
      acd300(85)=acd300(74)*acd300(83)
      acd300(82)=acd300(82)+acd300(85)
      acd300(82)=acd300(42)*acd300(82)
      acd300(84)=acd300(9)*acd300(84)
      acd300(72)=acd300(2)*acd300(72)
      acd300(72)=acd300(84)+acd300(72)
      acd300(72)=acd300(3)*acd300(72)
      acd300(83)=acd300(77)*acd300(83)
      acd300(72)=acd300(72)+acd300(83)
      acd300(72)=acd300(47)*acd300(72)
      acd300(65)=-acd300(15)*acd300(65)
      acd300(77)=-acd300(17)*acd300(77)
      acd300(65)=acd300(65)+acd300(77)
      acd300(65)=acd300(14)*acd300(65)
      acd300(67)=-acd300(15)*acd300(67)
      acd300(74)=-acd300(17)*acd300(74)
      acd300(67)=acd300(67)+acd300(74)
      acd300(67)=acd300(19)*acd300(67)
      acd300(68)=-acd300(15)*acd300(68)
      acd300(73)=-acd300(17)*acd300(73)
      acd300(68)=acd300(68)+acd300(73)
      acd300(68)=acd300(21)*acd300(68)
      brack=acd300(63)+acd300(64)+acd300(65)+acd300(66)+acd300(67)+acd300(68)+a&
      &cd300(69)+2.0_ki*acd300(70)+acd300(71)+acd300(72)+acd300(75)+acd300(76)+&
      &acd300(78)+acd300(79)+acd300(80)+acd300(81)+acd300(82)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd300h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd300
      complex(ki) :: brack
      acd300(1)=d(iv1,iv2)
      acd300(2)=spvak1k2(iv3)
      acd300(3)=spvak7k2(iv4)
      acd300(4)=abb300(22)
      acd300(5)=spvak1k2(iv4)
      acd300(6)=spvak7k2(iv3)
      acd300(7)=d(iv1,iv3)
      acd300(8)=spvak1k2(iv2)
      acd300(9)=spvak7k2(iv2)
      acd300(10)=d(iv1,iv4)
      acd300(11)=d(iv2,iv3)
      acd300(12)=spvak1k2(iv1)
      acd300(13)=spvak7k2(iv1)
      acd300(14)=d(iv2,iv4)
      acd300(15)=d(iv3,iv4)
      acd300(16)=spvak4k3(iv3)
      acd300(17)=spval5k2(iv4)
      acd300(18)=abb300(11)
      acd300(19)=spvak4k3(iv4)
      acd300(20)=spval5k2(iv3)
      acd300(21)=spvak4k3(iv2)
      acd300(22)=spval5k2(iv2)
      acd300(23)=spvak4k3(iv1)
      acd300(24)=spval5k2(iv1)
      acd300(25)=acd300(20)*acd300(21)
      acd300(26)=acd300(16)*acd300(22)
      acd300(25)=acd300(25)+acd300(26)
      acd300(26)=acd300(13)*acd300(25)
      acd300(27)=acd300(20)*acd300(23)
      acd300(28)=acd300(16)*acd300(24)
      acd300(27)=acd300(27)+acd300(28)
      acd300(28)=acd300(9)*acd300(27)
      acd300(29)=acd300(22)*acd300(23)
      acd300(30)=acd300(21)*acd300(24)
      acd300(29)=acd300(29)+acd300(30)
      acd300(30)=acd300(6)*acd300(29)
      acd300(26)=acd300(30)+acd300(26)+acd300(28)
      acd300(26)=acd300(5)*acd300(26)
      acd300(28)=acd300(19)*acd300(22)
      acd300(30)=acd300(17)*acd300(21)
      acd300(28)=acd300(28)+acd300(30)
      acd300(30)=acd300(13)*acd300(28)
      acd300(31)=acd300(19)*acd300(24)
      acd300(32)=acd300(17)*acd300(23)
      acd300(31)=acd300(31)+acd300(32)
      acd300(32)=acd300(9)*acd300(31)
      acd300(29)=acd300(3)*acd300(29)
      acd300(29)=acd300(29)+acd300(30)+acd300(32)
      acd300(29)=acd300(2)*acd300(29)
      acd300(30)=acd300(9)*acd300(12)
      acd300(32)=acd300(8)*acd300(13)
      acd300(30)=acd300(30)+acd300(32)
      acd300(32)=acd300(19)*acd300(20)
      acd300(33)=acd300(16)*acd300(17)
      acd300(32)=acd300(32)+acd300(33)
      acd300(32)=acd300(32)*acd300(30)
      acd300(28)=acd300(12)*acd300(28)
      acd300(31)=acd300(8)*acd300(31)
      acd300(28)=acd300(28)+acd300(31)
      acd300(28)=acd300(6)*acd300(28)
      acd300(25)=acd300(12)*acd300(25)
      acd300(27)=acd300(8)*acd300(27)
      acd300(25)=acd300(25)+acd300(27)
      acd300(25)=acd300(3)*acd300(25)
      acd300(25)=acd300(29)+acd300(25)+acd300(26)+acd300(28)+acd300(32)
      acd300(25)=acd300(18)*acd300(25)
      acd300(26)=acd300(13)*acd300(11)
      acd300(27)=acd300(9)*acd300(7)
      acd300(28)=acd300(6)*acd300(1)
      acd300(26)=acd300(28)+acd300(26)+acd300(27)
      acd300(26)=acd300(5)*acd300(26)
      acd300(27)=acd300(13)*acd300(14)
      acd300(28)=acd300(9)*acd300(10)
      acd300(29)=acd300(3)*acd300(1)
      acd300(27)=acd300(29)+acd300(27)+acd300(28)
      acd300(27)=acd300(2)*acd300(27)
      acd300(28)=acd300(15)*acd300(30)
      acd300(29)=acd300(12)*acd300(14)
      acd300(30)=acd300(8)*acd300(10)
      acd300(29)=acd300(29)+acd300(30)
      acd300(29)=acd300(6)*acd300(29)
      acd300(30)=acd300(12)*acd300(11)
      acd300(31)=acd300(8)*acd300(7)
      acd300(30)=acd300(30)+acd300(31)
      acd300(30)=acd300(3)*acd300(30)
      acd300(26)=acd300(27)+acd300(30)+acd300(26)+acd300(29)+acd300(28)
      acd300(26)=acd300(4)*acd300(26)
      brack=acd300(25)+2.0_ki*acd300(26)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd300h4
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
      qshift = -k5
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
!---#[ subroutine reconstruct_d300:
   subroutine     reconstruct_d300(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_300:
      coeffs%coeffs_300%c0 = derivative(czip)
      coeffs%coeffs_300%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_300%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_300%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_300%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_300%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_300%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_300%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_300%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_300%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_300%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_300%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_300%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_300%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_300%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_300%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_300%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_300%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_300%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_300%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_300%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_300%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_300%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_300%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_300%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_300%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_300%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_300%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_300%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_300%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_300%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_300%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_300%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_300%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_300%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_300%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_300%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_300%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_300%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_300%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_300%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_300%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_300%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_300%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_300%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_300%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_300%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_300%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_300%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_300%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_300%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_300%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_300%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_300%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_300%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_300%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_300%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_300%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_300%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_300%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_300%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_300%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_300%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_300%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_300%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_300%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_300%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_300%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_300%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_300%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_300:
   end subroutine reconstruct_d300
!---#] subroutine reconstruct_d300:
end module     p0_dbaru_epnebbbarg_d300h4l1d
