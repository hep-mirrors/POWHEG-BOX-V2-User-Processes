module     p0_dbaru_epnebbbarg_d71h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d71h4l1d.f90
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
   public :: derivative , reconstruct_d71
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd71h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd71
      complex(ki) :: brack
      acd71(1)=dotproduct(l5,qshift)
      acd71(2)=dotproduct(qshift,spvak7k2)
      acd71(3)=abb71(11)
      acd71(4)=dotproduct(l6,qshift)
      acd71(5)=dotproduct(k7,qshift)
      acd71(6)=dotproduct(qshift,spval5k2)
      acd71(7)=abb71(20)
      acd71(8)=dotproduct(qshift,spval6k2)
      acd71(9)=abb71(30)
      acd71(10)=dotproduct(qshift,spvak4k2)
      acd71(11)=abb71(17)
      acd71(12)=abb71(15)
      acd71(13)=abb71(22)
      acd71(14)=abb71(23)
      acd71(15)=dotproduct(qshift,qshift)
      acd71(16)=abb71(29)
      acd71(17)=abb71(32)
      acd71(18)=abb71(24)
      acd71(19)=abb71(31)
      acd71(20)=abb71(9)
      acd71(21)=abb71(21)
      acd71(22)=abb71(10)
      acd71(23)=abb71(36)
      acd71(24)=abb71(35)
      acd71(25)=abb71(26)
      acd71(26)=abb71(34)
      acd71(27)=dotproduct(qshift,spvak1k2)
      acd71(28)=dotproduct(qshift,spvak4k3)
      acd71(29)=abb71(16)
      acd71(30)=abb71(8)
      acd71(31)=dotproduct(qshift,spvak1k3)
      acd71(32)=abb71(7)
      acd71(33)=dotproduct(qshift,spvak1k7)
      acd71(34)=abb71(18)
      acd71(35)=abb71(19)
      acd71(36)=abb71(13)
      acd71(37)=abb71(14)
      acd71(38)=abb71(12)
      acd71(39)=abb71(33)
      acd71(40)=abb71(28)
      acd71(41)=-acd71(33)*acd71(39)
      acd71(42)=-acd71(31)*acd71(38)
      acd71(43)=acd71(27)*acd71(36)
      acd71(43)=-acd71(37)+acd71(43)
      acd71(43)=acd71(28)*acd71(43)
      acd71(44)=-acd71(10)*acd71(26)
      acd71(45)=-acd71(5)*acd71(9)
      acd71(46)=acd71(15)*acd71(17)
      acd71(41)=acd71(46)+acd71(45)+acd71(44)+acd71(43)+acd71(42)+acd71(40)+acd&
      &71(41)
      acd71(41)=acd71(8)*acd71(41)
      acd71(42)=-acd71(33)*acd71(34)
      acd71(43)=-acd71(31)*acd71(32)
      acd71(44)=acd71(27)*acd71(29)
      acd71(44)=-acd71(30)+acd71(44)
      acd71(44)=acd71(28)*acd71(44)
      acd71(45)=-acd71(10)*acd71(25)
      acd71(46)=-acd71(5)*acd71(7)
      acd71(47)=acd71(15)*acd71(16)
      acd71(42)=acd71(47)+acd71(46)+acd71(45)+acd71(44)+acd71(43)+acd71(35)+acd&
      &71(42)
      acd71(42)=acd71(6)*acd71(42)
      acd71(43)=-acd71(8)*acd71(24)
      acd71(44)=-acd71(6)*acd71(23)
      acd71(43)=acd71(43)+acd71(44)
      acd71(43)=acd71(2)*acd71(43)
      acd71(44)=-acd71(4)-acd71(1)
      acd71(44)=acd71(3)*acd71(44)
      acd71(41)=acd71(43)+acd71(42)+acd71(44)+acd71(41)
      acd71(41)=acd71(2)*acd71(41)
      acd71(42)=-acd71(10)*acd71(12)
      acd71(42)=acd71(14)+acd71(42)
      acd71(42)=acd71(5)*acd71(42)
      acd71(43)=acd71(10)*acd71(19)
      acd71(43)=-acd71(21)+acd71(43)
      acd71(43)=acd71(15)*acd71(43)
      acd71(42)=acd71(42)+acd71(43)
      acd71(42)=acd71(8)*acd71(42)
      acd71(43)=-acd71(10)*acd71(11)
      acd71(43)=acd71(13)+acd71(43)
      acd71(43)=acd71(5)*acd71(43)
      acd71(44)=acd71(10)*acd71(18)
      acd71(44)=-acd71(20)+acd71(44)
      acd71(44)=acd71(15)*acd71(44)
      acd71(43)=acd71(43)+acd71(44)
      acd71(43)=acd71(6)*acd71(43)
      acd71(44)=acd71(15)*acd71(22)
      brack=acd71(41)+acd71(42)+acd71(43)+acd71(44)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd71h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd71
      complex(ki) :: brack
      acd71(1)=l5(iv1)
      acd71(2)=dotproduct(qshift,spvak7k2)
      acd71(3)=abb71(11)
      acd71(4)=l6(iv1)
      acd71(5)=k7(iv1)
      acd71(6)=dotproduct(qshift,spval5k2)
      acd71(7)=abb71(20)
      acd71(8)=dotproduct(qshift,spval6k2)
      acd71(9)=abb71(30)
      acd71(10)=dotproduct(qshift,spvak4k2)
      acd71(11)=abb71(17)
      acd71(12)=abb71(15)
      acd71(13)=abb71(22)
      acd71(14)=abb71(23)
      acd71(15)=qshift(iv1)
      acd71(16)=abb71(29)
      acd71(17)=abb71(32)
      acd71(18)=abb71(24)
      acd71(19)=abb71(31)
      acd71(20)=abb71(9)
      acd71(21)=abb71(21)
      acd71(22)=abb71(10)
      acd71(23)=spvak7k2(iv1)
      acd71(24)=dotproduct(l5,qshift)
      acd71(25)=dotproduct(l6,qshift)
      acd71(26)=dotproduct(k7,qshift)
      acd71(27)=dotproduct(qshift,qshift)
      acd71(28)=abb71(36)
      acd71(29)=abb71(35)
      acd71(30)=abb71(26)
      acd71(31)=abb71(34)
      acd71(32)=dotproduct(qshift,spvak1k2)
      acd71(33)=dotproduct(qshift,spvak4k3)
      acd71(34)=abb71(16)
      acd71(35)=abb71(8)
      acd71(36)=dotproduct(qshift,spvak1k3)
      acd71(37)=abb71(7)
      acd71(38)=dotproduct(qshift,spvak1k7)
      acd71(39)=abb71(18)
      acd71(40)=abb71(19)
      acd71(41)=abb71(13)
      acd71(42)=abb71(14)
      acd71(43)=abb71(12)
      acd71(44)=abb71(33)
      acd71(45)=abb71(28)
      acd71(46)=spvak4k2(iv1)
      acd71(47)=spval5k2(iv1)
      acd71(48)=spval6k2(iv1)
      acd71(49)=spvak1k2(iv1)
      acd71(50)=spvak4k3(iv1)
      acd71(51)=spvak1k3(iv1)
      acd71(52)=spvak1k7(iv1)
      acd71(53)=acd71(32)*acd71(41)
      acd71(53)=acd71(53)-acd71(42)
      acd71(54)=-acd71(50)*acd71(53)
      acd71(55)=acd71(44)*acd71(52)
      acd71(56)=acd71(43)*acd71(51)
      acd71(57)=acd71(46)*acd71(31)
      acd71(58)=acd71(5)*acd71(9)
      acd71(59)=2.0_ki*acd71(15)
      acd71(60)=-acd71(17)*acd71(59)
      acd71(61)=acd71(33)*acd71(49)
      acd71(62)=-acd71(41)*acd71(61)
      acd71(63)=2.0_ki*acd71(23)
      acd71(64)=acd71(29)*acd71(63)
      acd71(54)=acd71(64)+acd71(62)+acd71(60)+acd71(58)+acd71(57)+acd71(55)+acd&
      &71(56)+acd71(54)
      acd71(54)=acd71(8)*acd71(54)
      acd71(55)=acd71(32)*acd71(34)
      acd71(55)=acd71(55)-acd71(35)
      acd71(56)=-acd71(50)*acd71(55)
      acd71(57)=acd71(39)*acd71(52)
      acd71(58)=acd71(37)*acd71(51)
      acd71(60)=acd71(46)*acd71(30)
      acd71(62)=acd71(5)*acd71(7)
      acd71(64)=-acd71(16)*acd71(59)
      acd71(61)=-acd71(34)*acd71(61)
      acd71(63)=acd71(28)*acd71(63)
      acd71(56)=acd71(63)+acd71(61)+acd71(64)+acd71(62)+acd71(60)+acd71(57)+acd&
      &71(58)+acd71(56)
      acd71(56)=acd71(6)*acd71(56)
      acd71(57)=acd71(38)*acd71(44)
      acd71(53)=acd71(53)*acd71(33)
      acd71(58)=acd71(36)*acd71(43)
      acd71(60)=acd71(27)*acd71(17)
      acd71(61)=acd71(26)*acd71(9)
      acd71(62)=acd71(10)*acd71(31)
      acd71(53)=-acd71(45)+acd71(58)-acd71(60)+acd71(61)+acd71(62)+acd71(57)-ac&
      &d71(53)
      acd71(57)=acd71(48)*acd71(53)
      acd71(58)=acd71(38)*acd71(39)
      acd71(55)=acd71(55)*acd71(33)
      acd71(60)=acd71(36)*acd71(37)
      acd71(61)=acd71(27)*acd71(16)
      acd71(62)=acd71(26)*acd71(7)
      acd71(63)=acd71(10)*acd71(30)
      acd71(55)=-acd71(40)+acd71(60)-acd71(61)+acd71(62)+acd71(63)+acd71(58)-ac&
      &d71(55)
      acd71(58)=acd71(47)*acd71(55)
      acd71(60)=acd71(48)*acd71(29)
      acd71(61)=acd71(47)*acd71(28)
      acd71(60)=acd71(60)+acd71(61)
      acd71(60)=acd71(2)*acd71(60)
      acd71(61)=acd71(4)+acd71(1)
      acd71(61)=acd71(3)*acd71(61)
      acd71(54)=acd71(60)+acd71(56)+acd71(54)+acd71(58)+acd71(61)+acd71(57)
      acd71(54)=acd71(2)*acd71(54)
      acd71(53)=acd71(23)*acd71(53)
      acd71(56)=acd71(5)*acd71(12)
      acd71(57)=-acd71(19)*acd71(59)
      acd71(56)=acd71(56)+acd71(57)
      acd71(56)=acd71(10)*acd71(56)
      acd71(57)=-acd71(5)*acd71(14)
      acd71(58)=acd71(21)*acd71(59)
      acd71(60)=acd71(27)*acd71(46)
      acd71(61)=-acd71(19)*acd71(60)
      acd71(62)=acd71(26)*acd71(46)
      acd71(63)=acd71(12)*acd71(62)
      acd71(53)=acd71(53)+acd71(56)+acd71(63)+acd71(61)+acd71(57)+acd71(58)
      acd71(53)=acd71(8)*acd71(53)
      acd71(55)=acd71(23)*acd71(55)
      acd71(56)=acd71(5)*acd71(11)
      acd71(57)=-acd71(18)*acd71(59)
      acd71(56)=acd71(56)+acd71(57)
      acd71(56)=acd71(10)*acd71(56)
      acd71(57)=-acd71(5)*acd71(13)
      acd71(58)=acd71(20)*acd71(59)
      acd71(60)=-acd71(18)*acd71(60)
      acd71(61)=acd71(11)*acd71(62)
      acd71(55)=acd71(55)+acd71(56)+acd71(61)+acd71(60)+acd71(57)+acd71(58)
      acd71(55)=acd71(6)*acd71(55)
      acd71(56)=acd71(27)*acd71(19)
      acd71(57)=acd71(26)*acd71(12)
      acd71(56)=-acd71(56)+acd71(57)
      acd71(56)=acd71(10)*acd71(56)
      acd71(57)=acd71(27)*acd71(21)
      acd71(58)=-acd71(26)*acd71(14)
      acd71(56)=acd71(56)+acd71(57)+acd71(58)
      acd71(56)=acd71(48)*acd71(56)
      acd71(57)=acd71(27)*acd71(18)
      acd71(58)=acd71(26)*acd71(11)
      acd71(57)=-acd71(57)+acd71(58)
      acd71(57)=acd71(10)*acd71(57)
      acd71(58)=acd71(27)*acd71(20)
      acd71(60)=-acd71(26)*acd71(13)
      acd71(57)=acd71(57)+acd71(58)+acd71(60)
      acd71(57)=acd71(47)*acd71(57)
      acd71(58)=-acd71(22)*acd71(59)
      acd71(59)=acd71(25)+acd71(24)
      acd71(59)=acd71(23)*acd71(3)*acd71(59)
      brack=acd71(53)+acd71(54)+acd71(55)+acd71(56)+acd71(57)+acd71(58)+acd71(5&
      &9)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd71h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(82) :: acd71
      complex(ki) :: brack
      acd71(1)=d(iv1,iv2)
      acd71(2)=dotproduct(qshift,spvak4k2)
      acd71(3)=dotproduct(qshift,spval5k2)
      acd71(4)=abb71(24)
      acd71(5)=dotproduct(qshift,spval6k2)
      acd71(6)=abb71(31)
      acd71(7)=dotproduct(qshift,spvak7k2)
      acd71(8)=abb71(29)
      acd71(9)=abb71(9)
      acd71(10)=abb71(32)
      acd71(11)=abb71(21)
      acd71(12)=abb71(10)
      acd71(13)=l5(iv1)
      acd71(14)=spvak7k2(iv2)
      acd71(15)=abb71(11)
      acd71(16)=l5(iv2)
      acd71(17)=spvak7k2(iv1)
      acd71(18)=l6(iv1)
      acd71(19)=l6(iv2)
      acd71(20)=k7(iv1)
      acd71(21)=spvak4k2(iv2)
      acd71(22)=abb71(17)
      acd71(23)=abb71(15)
      acd71(24)=spval5k2(iv2)
      acd71(25)=abb71(20)
      acd71(26)=abb71(22)
      acd71(27)=spval6k2(iv2)
      acd71(28)=abb71(30)
      acd71(29)=abb71(23)
      acd71(30)=k7(iv2)
      acd71(31)=spvak4k2(iv1)
      acd71(32)=spval5k2(iv1)
      acd71(33)=spval6k2(iv1)
      acd71(34)=qshift(iv1)
      acd71(35)=qshift(iv2)
      acd71(36)=dotproduct(k7,qshift)
      acd71(37)=dotproduct(qshift,qshift)
      acd71(38)=abb71(26)
      acd71(39)=abb71(34)
      acd71(40)=abb71(36)
      acd71(41)=dotproduct(qshift,spvak1k2)
      acd71(42)=dotproduct(qshift,spvak4k3)
      acd71(43)=abb71(16)
      acd71(44)=abb71(8)
      acd71(45)=dotproduct(qshift,spvak1k3)
      acd71(46)=abb71(7)
      acd71(47)=dotproduct(qshift,spvak1k7)
      acd71(48)=abb71(18)
      acd71(49)=abb71(19)
      acd71(50)=spvak1k2(iv2)
      acd71(51)=spvak4k3(iv2)
      acd71(52)=spvak1k3(iv2)
      acd71(53)=spvak1k7(iv2)
      acd71(54)=spvak1k2(iv1)
      acd71(55)=spvak4k3(iv1)
      acd71(56)=spvak1k3(iv1)
      acd71(57)=spvak1k7(iv1)
      acd71(58)=abb71(35)
      acd71(59)=abb71(13)
      acd71(60)=abb71(14)
      acd71(61)=abb71(12)
      acd71(62)=abb71(33)
      acd71(63)=abb71(28)
      acd71(64)=acd71(41)*acd71(59)
      acd71(64)=acd71(64)-acd71(60)
      acd71(65)=-acd71(51)*acd71(64)
      acd71(66)=acd71(62)*acd71(53)
      acd71(67)=acd71(61)*acd71(52)
      acd71(68)=acd71(30)*acd71(28)
      acd71(69)=acd71(21)*acd71(39)
      acd71(70)=2.0_ki*acd71(35)
      acd71(71)=acd71(70)*acd71(10)
      acd71(72)=acd71(42)*acd71(59)
      acd71(73)=acd71(72)*acd71(50)
      acd71(65)=acd71(69)-acd71(71)-acd71(73)+acd71(66)+acd71(67)+acd71(68)+acd&
      &71(65)
      acd71(66)=-acd71(33)*acd71(65)
      acd71(67)=acd71(41)*acd71(43)
      acd71(67)=acd71(67)-acd71(44)
      acd71(68)=acd71(51)*acd71(67)
      acd71(69)=acd71(48)*acd71(53)
      acd71(71)=acd71(46)*acd71(52)
      acd71(73)=acd71(30)*acd71(25)
      acd71(74)=acd71(21)*acd71(38)
      acd71(75)=acd71(70)*acd71(8)
      acd71(76)=acd71(42)*acd71(43)
      acd71(77)=acd71(76)*acd71(50)
      acd71(68)=-acd71(71)-acd71(73)-acd71(74)+acd71(75)-acd71(69)+acd71(77)+ac&
      &d71(68)
      acd71(69)=acd71(32)*acd71(68)
      acd71(71)=-acd71(55)*acd71(64)
      acd71(73)=acd71(62)*acd71(57)
      acd71(74)=acd71(61)*acd71(56)
      acd71(75)=acd71(20)*acd71(28)
      acd71(77)=acd71(31)*acd71(39)
      acd71(78)=2.0_ki*acd71(34)
      acd71(79)=acd71(78)*acd71(10)
      acd71(72)=acd71(72)*acd71(54)
      acd71(71)=acd71(77)-acd71(79)-acd71(72)+acd71(73)+acd71(74)+acd71(75)+acd&
      &71(71)
      acd71(72)=-acd71(27)*acd71(71)
      acd71(73)=acd71(55)*acd71(67)
      acd71(74)=acd71(48)*acd71(57)
      acd71(75)=acd71(46)*acd71(56)
      acd71(77)=acd71(20)*acd71(25)
      acd71(79)=acd71(31)*acd71(38)
      acd71(80)=acd71(78)*acd71(8)
      acd71(76)=acd71(76)*acd71(54)
      acd71(73)=-acd71(75)-acd71(77)-acd71(79)+acd71(80)-acd71(74)+acd71(76)+ac&
      &d71(73)
      acd71(74)=acd71(24)*acd71(73)
      acd71(75)=acd71(55)*acd71(50)
      acd71(76)=acd71(51)*acd71(54)
      acd71(75)=acd71(75)+acd71(76)
      acd71(76)=acd71(59)*acd71(75)
      acd71(77)=2.0_ki*acd71(1)
      acd71(79)=acd71(10)*acd71(77)
      acd71(76)=acd71(79)+acd71(76)
      acd71(76)=acd71(5)*acd71(76)
      acd71(75)=acd71(43)*acd71(75)
      acd71(79)=acd71(8)*acd71(77)
      acd71(75)=acd71(79)+acd71(75)
      acd71(75)=acd71(3)*acd71(75)
      acd71(79)=-acd71(27)*acd71(58)
      acd71(80)=-acd71(24)*acd71(40)
      acd71(79)=acd71(79)+acd71(80)
      acd71(80)=2.0_ki*acd71(17)
      acd71(79)=acd71(79)*acd71(80)
      acd71(81)=-acd71(33)*acd71(58)
      acd71(82)=-acd71(32)*acd71(40)
      acd71(81)=acd71(81)+acd71(82)
      acd71(81)=acd71(14)*acd71(81)
      acd71(66)=2.0_ki*acd71(81)+acd71(79)+acd71(75)+acd71(76)+acd71(74)+acd71(&
      &72)+acd71(66)+acd71(69)
      acd71(66)=acd71(7)*acd71(66)
      acd71(65)=-acd71(5)*acd71(65)
      acd71(68)=acd71(3)*acd71(68)
      acd71(64)=acd71(64)*acd71(42)
      acd71(69)=acd71(62)*acd71(47)
      acd71(72)=acd71(61)*acd71(45)
      acd71(74)=acd71(37)*acd71(10)
      acd71(75)=acd71(36)*acd71(28)
      acd71(76)=acd71(2)*acd71(39)
      acd71(64)=-acd71(74)+acd71(75)+acd71(76)-acd71(63)-acd71(64)+acd71(69)+ac&
      &d71(72)
      acd71(69)=-acd71(27)*acd71(64)
      acd71(67)=acd71(67)*acd71(42)
      acd71(72)=acd71(48)*acd71(47)
      acd71(74)=acd71(46)*acd71(45)
      acd71(75)=acd71(37)*acd71(8)
      acd71(76)=acd71(36)*acd71(25)
      acd71(79)=acd71(2)*acd71(38)
      acd71(67)=-acd71(75)+acd71(76)+acd71(79)-acd71(49)-acd71(67)+acd71(72)+ac&
      &d71(74)
      acd71(72)=-acd71(24)*acd71(67)
      acd71(74)=-acd71(19)-acd71(16)
      acd71(74)=acd71(15)*acd71(74)
      acd71(65)=acd71(68)+acd71(65)+acd71(72)+acd71(74)+acd71(69)
      acd71(65)=acd71(17)*acd71(65)
      acd71(68)=-acd71(5)*acd71(71)
      acd71(69)=acd71(3)*acd71(73)
      acd71(64)=-acd71(33)*acd71(64)
      acd71(67)=-acd71(32)*acd71(67)
      acd71(71)=-acd71(5)*acd71(58)
      acd71(72)=-acd71(3)*acd71(40)
      acd71(71)=acd71(71)+acd71(72)
      acd71(71)=acd71(71)*acd71(80)
      acd71(72)=-acd71(18)-acd71(13)
      acd71(72)=acd71(15)*acd71(72)
      acd71(64)=acd71(71)+acd71(69)+acd71(68)+acd71(67)+acd71(72)+acd71(64)
      acd71(64)=acd71(14)*acd71(64)
      acd71(67)=acd71(37)*acd71(6)
      acd71(68)=acd71(36)*acd71(23)
      acd71(67)=acd71(67)-acd71(68)
      acd71(68)=acd71(21)*acd71(67)
      acd71(69)=acd71(30)*acd71(23)
      acd71(71)=acd71(70)*acd71(6)
      acd71(69)=acd71(69)-acd71(71)
      acd71(71)=-acd71(2)*acd71(69)
      acd71(72)=-acd71(11)*acd71(70)
      acd71(73)=acd71(30)*acd71(29)
      acd71(68)=acd71(71)+acd71(68)+acd71(72)+acd71(73)
      acd71(68)=acd71(33)*acd71(68)
      acd71(71)=acd71(37)*acd71(4)
      acd71(72)=acd71(36)*acd71(22)
      acd71(71)=acd71(71)-acd71(72)
      acd71(72)=acd71(21)*acd71(71)
      acd71(73)=acd71(30)*acd71(22)
      acd71(74)=acd71(70)*acd71(4)
      acd71(73)=acd71(73)-acd71(74)
      acd71(74)=-acd71(2)*acd71(73)
      acd71(70)=-acd71(9)*acd71(70)
      acd71(75)=acd71(30)*acd71(26)
      acd71(70)=acd71(74)+acd71(72)+acd71(70)+acd71(75)
      acd71(70)=acd71(32)*acd71(70)
      acd71(67)=acd71(31)*acd71(67)
      acd71(72)=acd71(20)*acd71(23)
      acd71(74)=acd71(78)*acd71(6)
      acd71(72)=acd71(72)-acd71(74)
      acd71(74)=-acd71(2)*acd71(72)
      acd71(75)=-acd71(11)*acd71(78)
      acd71(76)=acd71(20)*acd71(29)
      acd71(67)=acd71(74)+acd71(67)+acd71(75)+acd71(76)
      acd71(67)=acd71(27)*acd71(67)
      acd71(71)=acd71(31)*acd71(71)
      acd71(74)=acd71(20)*acd71(22)
      acd71(75)=acd71(78)*acd71(4)
      acd71(74)=acd71(74)-acd71(75)
      acd71(75)=-acd71(2)*acd71(74)
      acd71(76)=-acd71(9)*acd71(78)
      acd71(78)=acd71(20)*acd71(26)
      acd71(71)=acd71(75)+acd71(71)+acd71(76)+acd71(78)
      acd71(71)=acd71(24)*acd71(71)
      acd71(69)=-acd71(31)*acd71(69)
      acd71(72)=-acd71(21)*acd71(72)
      acd71(75)=-acd71(11)*acd71(77)
      acd71(76)=acd71(77)*acd71(2)
      acd71(78)=acd71(6)*acd71(76)
      acd71(69)=acd71(78)+acd71(72)+acd71(75)+acd71(69)
      acd71(69)=acd71(5)*acd71(69)
      acd71(72)=-acd71(31)*acd71(73)
      acd71(73)=-acd71(21)*acd71(74)
      acd71(74)=-acd71(9)*acd71(77)
      acd71(75)=acd71(4)*acd71(76)
      acd71(72)=acd71(75)+acd71(73)+acd71(74)+acd71(72)
      acd71(72)=acd71(3)*acd71(72)
      acd71(73)=acd71(12)*acd71(77)
      brack=acd71(64)+acd71(65)+acd71(66)+acd71(67)+acd71(68)+acd71(69)+acd71(7&
      &0)+acd71(71)+acd71(72)+acd71(73)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd71h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd71
      complex(ki) :: brack
      acd71(1)=d(iv1,iv2)
      acd71(2)=spvak4k2(iv3)
      acd71(3)=dotproduct(qshift,spval5k2)
      acd71(4)=abb71(24)
      acd71(5)=dotproduct(qshift,spval6k2)
      acd71(6)=abb71(31)
      acd71(7)=spval5k2(iv3)
      acd71(8)=dotproduct(qshift,spvak4k2)
      acd71(9)=dotproduct(qshift,spvak7k2)
      acd71(10)=abb71(29)
      acd71(11)=abb71(9)
      acd71(12)=spval6k2(iv3)
      acd71(13)=abb71(32)
      acd71(14)=abb71(21)
      acd71(15)=spvak7k2(iv3)
      acd71(16)=d(iv1,iv3)
      acd71(17)=spvak4k2(iv2)
      acd71(18)=spval5k2(iv2)
      acd71(19)=spval6k2(iv2)
      acd71(20)=spvak7k2(iv2)
      acd71(21)=d(iv2,iv3)
      acd71(22)=spvak4k2(iv1)
      acd71(23)=spval5k2(iv1)
      acd71(24)=spval6k2(iv1)
      acd71(25)=spvak7k2(iv1)
      acd71(26)=k7(iv1)
      acd71(27)=abb71(17)
      acd71(28)=abb71(15)
      acd71(29)=abb71(20)
      acd71(30)=abb71(30)
      acd71(31)=k7(iv2)
      acd71(32)=k7(iv3)
      acd71(33)=qshift(iv1)
      acd71(34)=qshift(iv2)
      acd71(35)=qshift(iv3)
      acd71(36)=abb71(26)
      acd71(37)=abb71(34)
      acd71(38)=abb71(36)
      acd71(39)=spvak1k2(iv3)
      acd71(40)=dotproduct(qshift,spvak4k3)
      acd71(41)=abb71(16)
      acd71(42)=spvak4k3(iv3)
      acd71(43)=dotproduct(qshift,spvak1k2)
      acd71(44)=abb71(8)
      acd71(45)=spvak1k3(iv3)
      acd71(46)=abb71(7)
      acd71(47)=spvak1k7(iv3)
      acd71(48)=abb71(18)
      acd71(49)=spvak1k2(iv2)
      acd71(50)=spvak4k3(iv2)
      acd71(51)=spvak1k3(iv2)
      acd71(52)=spvak1k7(iv2)
      acd71(53)=spvak1k2(iv1)
      acd71(54)=spvak4k3(iv1)
      acd71(55)=spvak1k3(iv1)
      acd71(56)=spvak1k7(iv1)
      acd71(57)=abb71(35)
      acd71(58)=abb71(13)
      acd71(59)=abb71(14)
      acd71(60)=abb71(12)
      acd71(61)=abb71(33)
      acd71(62)=acd71(39)*acd71(40)
      acd71(63)=acd71(42)*acd71(43)
      acd71(62)=acd71(62)+acd71(63)
      acd71(63)=acd71(62)*acd71(58)
      acd71(64)=acd71(61)*acd71(47)
      acd71(65)=acd71(60)*acd71(45)
      acd71(66)=acd71(32)*acd71(30)
      acd71(67)=acd71(2)*acd71(37)
      acd71(68)=acd71(42)*acd71(59)
      acd71(69)=2.0_ki*acd71(13)
      acd71(70)=acd71(69)*acd71(35)
      acd71(63)=acd71(66)+acd71(67)+acd71(68)-acd71(70)-acd71(63)+acd71(64)+acd&
      &71(65)
      acd71(64)=acd71(19)*acd71(63)
      acd71(62)=acd71(62)*acd71(41)
      acd71(65)=acd71(48)*acd71(47)
      acd71(66)=acd71(46)*acd71(45)
      acd71(67)=acd71(32)*acd71(29)
      acd71(68)=acd71(2)*acd71(36)
      acd71(70)=acd71(42)*acd71(44)
      acd71(71)=2.0_ki*acd71(10)
      acd71(72)=acd71(71)*acd71(35)
      acd71(62)=acd71(67)+acd71(68)+acd71(70)-acd71(72)-acd71(62)+acd71(65)+acd&
      &71(66)
      acd71(65)=acd71(18)*acd71(62)
      acd71(66)=acd71(40)*acd71(49)
      acd71(67)=acd71(50)*acd71(43)
      acd71(66)=acd71(66)+acd71(67)
      acd71(67)=acd71(66)*acd71(58)
      acd71(68)=acd71(61)*acd71(52)
      acd71(70)=acd71(60)*acd71(51)
      acd71(72)=acd71(31)*acd71(30)
      acd71(73)=acd71(17)*acd71(37)
      acd71(74)=acd71(50)*acd71(59)
      acd71(75)=acd71(69)*acd71(34)
      acd71(67)=acd71(72)+acd71(73)+acd71(74)-acd71(75)-acd71(67)+acd71(68)+acd&
      &71(70)
      acd71(68)=acd71(12)*acd71(67)
      acd71(66)=acd71(66)*acd71(41)
      acd71(70)=acd71(48)*acd71(52)
      acd71(72)=acd71(46)*acd71(51)
      acd71(73)=acd71(31)*acd71(29)
      acd71(74)=acd71(17)*acd71(36)
      acd71(75)=acd71(50)*acd71(44)
      acd71(76)=acd71(71)*acd71(34)
      acd71(66)=acd71(73)+acd71(74)+acd71(75)-acd71(76)-acd71(66)+acd71(70)+acd&
      &71(72)
      acd71(70)=acd71(7)*acd71(66)
      acd71(72)=acd71(58)*acd71(5)
      acd71(73)=acd71(41)*acd71(3)
      acd71(72)=acd71(72)+acd71(73)
      acd71(73)=acd71(50)*acd71(39)
      acd71(74)=acd71(42)*acd71(49)
      acd71(73)=acd71(73)+acd71(74)
      acd71(74)=-acd71(73)*acd71(72)
      acd71(75)=acd71(5)*acd71(13)
      acd71(76)=acd71(3)*acd71(10)
      acd71(75)=acd71(75)+acd71(76)
      acd71(76)=-acd71(21)*acd71(75)
      acd71(64)=acd71(70)+acd71(68)+acd71(65)+acd71(64)+2.0_ki*acd71(76)+acd71(&
      &74)
      acd71(64)=acd71(25)*acd71(64)
      acd71(63)=acd71(24)*acd71(63)
      acd71(62)=acd71(23)*acd71(62)
      acd71(65)=acd71(40)*acd71(53)
      acd71(68)=acd71(54)*acd71(43)
      acd71(65)=acd71(65)+acd71(68)
      acd71(68)=acd71(65)*acd71(58)
      acd71(70)=acd71(61)*acd71(56)
      acd71(74)=acd71(60)*acd71(55)
      acd71(76)=acd71(26)*acd71(30)
      acd71(77)=acd71(22)*acd71(37)
      acd71(78)=acd71(54)*acd71(59)
      acd71(79)=acd71(69)*acd71(33)
      acd71(68)=acd71(76)+acd71(77)+acd71(78)-acd71(79)-acd71(68)+acd71(70)+acd&
      &71(74)
      acd71(70)=acd71(12)*acd71(68)
      acd71(65)=acd71(65)*acd71(41)
      acd71(74)=acd71(48)*acd71(56)
      acd71(76)=acd71(46)*acd71(55)
      acd71(77)=acd71(26)*acd71(29)
      acd71(78)=acd71(22)*acd71(36)
      acd71(79)=acd71(54)*acd71(44)
      acd71(80)=acd71(71)*acd71(33)
      acd71(65)=acd71(77)+acd71(78)+acd71(79)-acd71(80)-acd71(65)+acd71(74)+acd&
      &71(76)
      acd71(74)=acd71(7)*acd71(65)
      acd71(76)=acd71(54)*acd71(39)
      acd71(77)=acd71(42)*acd71(53)
      acd71(76)=acd71(76)+acd71(77)
      acd71(77)=-acd71(76)*acd71(72)
      acd71(78)=-acd71(16)*acd71(75)
      acd71(79)=acd71(12)*acd71(57)
      acd71(80)=acd71(7)*acd71(38)
      acd71(79)=acd71(79)+acd71(80)
      acd71(80)=2.0_ki*acd71(25)
      acd71(79)=acd71(79)*acd71(80)
      acd71(62)=acd71(79)+acd71(74)+acd71(70)+acd71(62)+acd71(63)+2.0_ki*acd71(&
      &78)+acd71(77)
      acd71(62)=acd71(20)*acd71(62)
      acd71(63)=acd71(24)*acd71(67)
      acd71(66)=acd71(23)*acd71(66)
      acd71(67)=acd71(19)*acd71(68)
      acd71(65)=acd71(18)*acd71(65)
      acd71(68)=acd71(54)*acd71(49)
      acd71(70)=acd71(50)*acd71(53)
      acd71(68)=acd71(68)+acd71(70)
      acd71(70)=-acd71(68)*acd71(72)
      acd71(72)=-acd71(1)*acd71(75)
      acd71(74)=acd71(24)*acd71(57)
      acd71(75)=acd71(23)*acd71(38)
      acd71(74)=acd71(74)+acd71(75)
      acd71(74)=acd71(20)*acd71(74)
      acd71(72)=acd71(72)+acd71(74)
      acd71(74)=acd71(19)*acd71(57)
      acd71(75)=acd71(18)*acd71(38)
      acd71(74)=acd71(74)+acd71(75)
      acd71(74)=acd71(74)*acd71(80)
      acd71(63)=acd71(74)+acd71(65)+acd71(67)+acd71(66)+acd71(63)+2.0_ki*acd71(&
      &72)+acd71(70)
      acd71(63)=acd71(15)*acd71(63)
      acd71(65)=acd71(6)*acd71(8)
      acd71(65)=acd71(65)-acd71(14)
      acd71(66)=acd71(69)*acd71(9)
      acd71(65)=acd71(66)+2.0_ki*acd71(65)
      acd71(66)=-acd71(21)*acd71(65)
      acd71(67)=acd71(32)*acd71(28)
      acd71(69)=2.0_ki*acd71(35)
      acd71(70)=acd71(69)*acd71(6)
      acd71(67)=acd71(67)-acd71(70)
      acd71(70)=acd71(17)*acd71(67)
      acd71(72)=acd71(31)*acd71(28)
      acd71(74)=2.0_ki*acd71(34)
      acd71(75)=acd71(74)*acd71(6)
      acd71(72)=acd71(72)-acd71(75)
      acd71(75)=acd71(2)*acd71(72)
      acd71(77)=acd71(58)*acd71(9)
      acd71(78)=-acd71(73)*acd71(77)
      acd71(66)=acd71(78)+acd71(75)+acd71(70)+acd71(66)
      acd71(66)=acd71(24)*acd71(66)
      acd71(70)=acd71(4)*acd71(8)
      acd71(70)=acd71(70)-acd71(11)
      acd71(71)=acd71(71)*acd71(9)
      acd71(70)=acd71(71)+2.0_ki*acd71(70)
      acd71(71)=-acd71(21)*acd71(70)
      acd71(75)=acd71(32)*acd71(27)
      acd71(69)=acd71(69)*acd71(4)
      acd71(69)=acd71(75)-acd71(69)
      acd71(75)=acd71(17)*acd71(69)
      acd71(78)=acd71(31)*acd71(27)
      acd71(74)=acd71(74)*acd71(4)
      acd71(74)=acd71(78)-acd71(74)
      acd71(78)=acd71(2)*acd71(74)
      acd71(79)=acd71(41)*acd71(9)
      acd71(73)=-acd71(73)*acd71(79)
      acd71(71)=acd71(73)+acd71(78)+acd71(75)+acd71(71)
      acd71(71)=acd71(23)*acd71(71)
      acd71(73)=-acd71(16)*acd71(65)
      acd71(67)=acd71(22)*acd71(67)
      acd71(75)=acd71(26)*acd71(28)
      acd71(78)=2.0_ki*acd71(33)
      acd71(80)=acd71(78)*acd71(6)
      acd71(75)=acd71(75)-acd71(80)
      acd71(80)=acd71(2)*acd71(75)
      acd71(81)=-acd71(76)*acd71(77)
      acd71(67)=acd71(81)+acd71(80)+acd71(67)+acd71(73)
      acd71(67)=acd71(19)*acd71(67)
      acd71(73)=-acd71(16)*acd71(70)
      acd71(69)=acd71(22)*acd71(69)
      acd71(80)=acd71(26)*acd71(27)
      acd71(78)=acd71(78)*acd71(4)
      acd71(78)=acd71(80)-acd71(78)
      acd71(80)=acd71(2)*acd71(78)
      acd71(76)=-acd71(76)*acd71(79)
      acd71(69)=acd71(76)+acd71(80)+acd71(69)+acd71(73)
      acd71(69)=acd71(18)*acd71(69)
      acd71(65)=-acd71(1)*acd71(65)
      acd71(72)=acd71(22)*acd71(72)
      acd71(73)=acd71(17)*acd71(75)
      acd71(75)=-acd71(68)*acd71(77)
      acd71(65)=acd71(75)+acd71(73)+acd71(72)+acd71(65)
      acd71(65)=acd71(12)*acd71(65)
      acd71(70)=-acd71(1)*acd71(70)
      acd71(72)=acd71(22)*acd71(74)
      acd71(73)=acd71(17)*acd71(78)
      acd71(68)=-acd71(68)*acd71(79)
      acd71(68)=acd71(68)+acd71(73)+acd71(72)+acd71(70)
      acd71(68)=acd71(7)*acd71(68)
      acd71(70)=-acd71(22)*acd71(21)
      acd71(72)=-acd71(17)*acd71(16)
      acd71(73)=-acd71(2)*acd71(1)
      acd71(70)=acd71(73)+acd71(70)+acd71(72)
      acd71(72)=acd71(5)*acd71(6)
      acd71(73)=acd71(3)*acd71(4)
      acd71(72)=acd71(72)+acd71(73)
      acd71(70)=acd71(72)*acd71(70)
      brack=acd71(62)+acd71(63)+acd71(64)+acd71(65)+acd71(66)+acd71(67)+acd71(6&
      &8)+acd71(69)+2.0_ki*acd71(70)+acd71(71)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd71h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd71
      complex(ki) :: brack
      acd71(1)=d(iv1,iv2)
      acd71(2)=spvak4k2(iv3)
      acd71(3)=spval5k2(iv4)
      acd71(4)=abb71(24)
      acd71(5)=spval6k2(iv4)
      acd71(6)=abb71(31)
      acd71(7)=spvak4k2(iv4)
      acd71(8)=spval5k2(iv3)
      acd71(9)=spval6k2(iv3)
      acd71(10)=spvak7k2(iv4)
      acd71(11)=abb71(29)
      acd71(12)=spvak7k2(iv3)
      acd71(13)=abb71(32)
      acd71(14)=d(iv1,iv3)
      acd71(15)=spvak4k2(iv2)
      acd71(16)=spval5k2(iv2)
      acd71(17)=spval6k2(iv2)
      acd71(18)=spvak7k2(iv2)
      acd71(19)=d(iv1,iv4)
      acd71(20)=d(iv2,iv3)
      acd71(21)=spvak4k2(iv1)
      acd71(22)=spval5k2(iv1)
      acd71(23)=spval6k2(iv1)
      acd71(24)=spvak7k2(iv1)
      acd71(25)=d(iv2,iv4)
      acd71(26)=d(iv3,iv4)
      acd71(27)=spvak1k2(iv3)
      acd71(28)=spvak4k3(iv4)
      acd71(29)=abb71(16)
      acd71(30)=spvak1k2(iv4)
      acd71(31)=spvak4k3(iv3)
      acd71(32)=spvak1k2(iv2)
      acd71(33)=spvak4k3(iv2)
      acd71(34)=spvak1k2(iv1)
      acd71(35)=spvak4k3(iv1)
      acd71(36)=abb71(13)
      acd71(37)=acd71(4)*acd71(3)
      acd71(38)=acd71(6)*acd71(5)
      acd71(37)=acd71(37)+acd71(38)
      acd71(38)=acd71(1)*acd71(37)
      acd71(39)=acd71(16)*acd71(4)
      acd71(40)=acd71(17)*acd71(6)
      acd71(39)=acd71(39)+acd71(40)
      acd71(40)=acd71(19)*acd71(39)
      acd71(41)=acd71(22)*acd71(4)
      acd71(42)=acd71(23)*acd71(6)
      acd71(41)=acd71(41)+acd71(42)
      acd71(42)=acd71(25)*acd71(41)
      acd71(38)=acd71(42)+acd71(38)+acd71(40)
      acd71(38)=acd71(2)*acd71(38)
      acd71(40)=acd71(8)*acd71(4)
      acd71(42)=acd71(9)*acd71(6)
      acd71(40)=acd71(40)+acd71(42)
      acd71(42)=acd71(1)*acd71(40)
      acd71(43)=acd71(14)*acd71(39)
      acd71(44)=acd71(20)*acd71(41)
      acd71(42)=acd71(44)+acd71(42)+acd71(43)
      acd71(42)=acd71(7)*acd71(42)
      acd71(43)=acd71(14)*acd71(37)
      acd71(44)=acd71(19)*acd71(40)
      acd71(41)=acd71(26)*acd71(41)
      acd71(41)=acd71(41)+acd71(43)+acd71(44)
      acd71(41)=acd71(15)*acd71(41)
      acd71(37)=acd71(20)*acd71(37)
      acd71(40)=acd71(25)*acd71(40)
      acd71(39)=acd71(26)*acd71(39)
      acd71(37)=acd71(39)+acd71(37)+acd71(40)
      acd71(37)=acd71(21)*acd71(37)
      acd71(39)=acd71(3)*acd71(12)
      acd71(40)=acd71(8)*acd71(10)
      acd71(39)=acd71(39)+acd71(40)
      acd71(39)=acd71(11)*acd71(39)
      acd71(40)=acd71(5)*acd71(12)
      acd71(43)=acd71(9)*acd71(10)
      acd71(40)=acd71(40)+acd71(43)
      acd71(40)=acd71(13)*acd71(40)
      acd71(39)=acd71(39)+acd71(40)
      acd71(39)=acd71(1)*acd71(39)
      acd71(40)=acd71(16)*acd71(11)
      acd71(43)=acd71(17)*acd71(13)
      acd71(40)=acd71(40)+acd71(43)
      acd71(43)=acd71(10)*acd71(40)
      acd71(44)=acd71(11)*acd71(3)
      acd71(45)=acd71(18)*acd71(44)
      acd71(46)=acd71(13)*acd71(18)
      acd71(47)=acd71(5)*acd71(46)
      acd71(43)=acd71(45)+acd71(47)+acd71(43)
      acd71(43)=acd71(14)*acd71(43)
      acd71(45)=acd71(12)*acd71(40)
      acd71(47)=acd71(11)*acd71(8)
      acd71(48)=acd71(18)*acd71(47)
      acd71(46)=acd71(9)*acd71(46)
      acd71(45)=acd71(48)+acd71(46)+acd71(45)
      acd71(45)=acd71(19)*acd71(45)
      acd71(46)=acd71(22)*acd71(11)
      acd71(48)=acd71(23)*acd71(13)
      acd71(46)=acd71(46)+acd71(48)
      acd71(48)=acd71(10)*acd71(46)
      acd71(44)=acd71(24)*acd71(44)
      acd71(49)=acd71(13)*acd71(24)
      acd71(50)=acd71(5)*acd71(49)
      acd71(44)=acd71(44)+acd71(50)+acd71(48)
      acd71(44)=acd71(20)*acd71(44)
      acd71(48)=acd71(12)*acd71(46)
      acd71(47)=acd71(24)*acd71(47)
      acd71(49)=acd71(9)*acd71(49)
      acd71(47)=acd71(47)+acd71(49)+acd71(48)
      acd71(47)=acd71(25)*acd71(47)
      acd71(46)=acd71(18)*acd71(46)
      acd71(40)=acd71(24)*acd71(40)
      acd71(40)=acd71(40)+acd71(46)
      acd71(40)=acd71(26)*acd71(40)
      acd71(37)=acd71(39)+acd71(43)+acd71(38)+acd71(42)+acd71(41)+acd71(37)+acd&
      &71(45)+acd71(44)+acd71(47)+acd71(40)
      acd71(38)=acd71(8)*acd71(29)
      acd71(39)=acd71(9)*acd71(36)
      acd71(38)=acd71(38)+acd71(39)
      acd71(39)=acd71(38)*acd71(18)
      acd71(40)=acd71(16)*acd71(29)
      acd71(41)=acd71(17)*acd71(36)
      acd71(40)=acd71(40)+acd71(41)
      acd71(41)=acd71(40)*acd71(12)
      acd71(39)=acd71(39)+acd71(41)
      acd71(41)=acd71(28)*acd71(39)
      acd71(42)=acd71(3)*acd71(29)
      acd71(43)=acd71(5)*acd71(36)
      acd71(42)=acd71(42)+acd71(43)
      acd71(43)=acd71(18)*acd71(42)
      acd71(44)=acd71(40)*acd71(10)
      acd71(43)=acd71(43)+acd71(44)
      acd71(44)=acd71(31)*acd71(43)
      acd71(45)=acd71(12)*acd71(42)
      acd71(46)=acd71(38)*acd71(10)
      acd71(45)=acd71(45)+acd71(46)
      acd71(46)=acd71(33)*acd71(45)
      acd71(41)=acd71(46)+acd71(41)+acd71(44)
      acd71(41)=acd71(34)*acd71(41)
      acd71(43)=acd71(27)*acd71(43)
      acd71(39)=acd71(30)*acd71(39)
      acd71(44)=acd71(32)*acd71(45)
      acd71(39)=acd71(44)+acd71(43)+acd71(39)
      acd71(39)=acd71(35)*acd71(39)
      acd71(38)=acd71(38)*acd71(24)
      acd71(43)=acd71(22)*acd71(29)
      acd71(44)=acd71(23)*acd71(36)
      acd71(43)=acd71(43)+acd71(44)
      acd71(44)=acd71(43)*acd71(12)
      acd71(38)=acd71(38)+acd71(44)
      acd71(44)=acd71(28)*acd71(38)
      acd71(42)=acd71(24)*acd71(42)
      acd71(45)=acd71(43)*acd71(10)
      acd71(42)=acd71(42)+acd71(45)
      acd71(45)=acd71(31)*acd71(42)
      acd71(44)=acd71(44)+acd71(45)
      acd71(44)=acd71(32)*acd71(44)
      acd71(42)=acd71(27)*acd71(42)
      acd71(38)=acd71(30)*acd71(38)
      acd71(38)=acd71(42)+acd71(38)
      acd71(38)=acd71(33)*acd71(38)
      acd71(40)=acd71(40)*acd71(24)
      acd71(42)=acd71(43)*acd71(18)
      acd71(40)=acd71(40)+acd71(42)
      acd71(42)=acd71(28)*acd71(27)
      acd71(43)=acd71(31)*acd71(30)
      acd71(42)=acd71(42)+acd71(43)
      acd71(40)=acd71(40)*acd71(42)
      brack=2.0_ki*acd71(37)+acd71(38)+acd71(39)+acd71(40)+acd71(41)+acd71(44)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd71h4
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
!---#[ subroutine reconstruct_d71:
   subroutine     reconstruct_d71(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_71:
      coeffs%coeffs_71%c0 = derivative(czip)
      coeffs%coeffs_71%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_71%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_71%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_71%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_71%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_71%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_71%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_71%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_71%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_71%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_71%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_71%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_71%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_71%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_71%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_71%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_71%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_71%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_71%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_71%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_71%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_71%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_71%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_71%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_71%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_71%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_71%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_71%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_71%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_71%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_71%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_71%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_71%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_71%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_71%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_71%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_71%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_71%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_71%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_71%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_71%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_71%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_71%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_71%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_71%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_71%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_71%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_71%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_71%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_71%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_71%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_71%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_71%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_71%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_71%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_71%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_71%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_71%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_71%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_71%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_71%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_71%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_71%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_71%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_71%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_71%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_71%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_71%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_71%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_71:
   end subroutine reconstruct_d71
!---#] subroutine reconstruct_d71:
end module     p0_dbaru_epnebbbarg_d71h4l1d
