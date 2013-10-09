module     p0_dbaru_epnebbbarg_d103h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d103h3l1d.f90
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
   public :: derivative , reconstruct_d103
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd103h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd103
      complex(ki) :: brack
      acd103(1)=dotproduct(k2,qshift)
      acd103(2)=dotproduct(k3,qshift)
      acd103(3)=abb103(50)
      acd103(4)=dotproduct(k4,qshift)
      acd103(5)=dotproduct(e7,qshift)
      acd103(6)=dotproduct(qshift,spvak4k3)
      acd103(7)=abb103(46)
      acd103(8)=dotproduct(qshift,qshift)
      acd103(9)=abb103(41)
      acd103(10)=abb103(18)
      acd103(11)=abb103(45)
      acd103(12)=dotproduct(l5,qshift)
      acd103(13)=abb103(37)
      acd103(14)=dotproduct(l6,qshift)
      acd103(15)=abb103(57)
      acd103(16)=dotproduct(qshift,spvak1k3)
      acd103(17)=abb103(13)
      acd103(18)=dotproduct(qshift,spvak2l5)
      acd103(19)=abb103(22)
      acd103(20)=dotproduct(qshift,spvak2l6)
      acd103(21)=abb103(51)
      acd103(22)=abb103(23)
      acd103(23)=abb103(32)
      acd103(24)=abb103(31)
      acd103(25)=abb103(29)
      acd103(26)=abb103(30)
      acd103(27)=dotproduct(k7,qshift)
      acd103(28)=abb103(26)
      acd103(29)=abb103(14)
      acd103(30)=abb103(28)
      acd103(31)=dotproduct(qshift,spvak1l5)
      acd103(32)=abb103(27)
      acd103(33)=dotproduct(qshift,spvak1l6)
      acd103(34)=abb103(15)
      acd103(35)=abb103(55)
      acd103(36)=abb103(9)
      acd103(37)=abb103(17)
      acd103(38)=abb103(34)
      acd103(39)=abb103(36)
      acd103(40)=abb103(35)
      acd103(41)=abb103(44)
      acd103(42)=abb103(12)
      acd103(43)=abb103(11)
      acd103(44)=abb103(10)
      acd103(45)=abb103(7)
      acd103(46)=dotproduct(qshift,spvak1k4)
      acd103(47)=dotproduct(qshift,spvak1e7)
      acd103(48)=abb103(49)
      acd103(49)=abb103(16)
      acd103(50)=abb103(8)
      acd103(51)=abb103(21)
      acd103(52)=abb103(48)
      acd103(53)=acd103(12)+acd103(14)
      acd103(54)=-acd103(23)*acd103(53)
      acd103(55)=-acd103(33)*acd103(34)
      acd103(56)=-acd103(31)*acd103(32)
      acd103(57)=-acd103(20)*acd103(30)
      acd103(58)=-acd103(18)*acd103(29)
      acd103(59)=-acd103(1)*acd103(7)
      acd103(54)=acd103(59)+acd103(58)+acd103(57)+acd103(56)+acd103(35)+acd103(&
      &55)+acd103(54)
      acd103(54)=acd103(5)*acd103(54)
      acd103(55)=acd103(25)*acd103(53)
      acd103(56)=acd103(2)+acd103(4)
      acd103(57)=-acd103(27)-acd103(56)
      acd103(57)=acd103(15)*acd103(57)
      acd103(58)=acd103(47)*acd103(48)
      acd103(59)=-acd103(39)*acd103(46)
      acd103(60)=acd103(20)*acd103(45)
      acd103(61)=acd103(18)*acd103(44)
      acd103(62)=acd103(16)*acd103(43)
      acd103(63)=acd103(1)*acd103(10)
      acd103(64)=-acd103(8)*acd103(38)
      acd103(54)=acd103(54)+acd103(64)+acd103(63)+acd103(62)+acd103(61)+acd103(&
      &60)+acd103(59)-acd103(49)+acd103(58)+acd103(57)+acd103(55)
      acd103(54)=acd103(6)*acd103(54)
      acd103(55)=acd103(13)*acd103(53)
      acd103(57)=acd103(20)*acd103(21)
      acd103(58)=acd103(18)*acd103(19)
      acd103(59)=acd103(16)*acd103(17)
      acd103(60)=acd103(1)*acd103(3)
      acd103(55)=-acd103(59)+acd103(57)+acd103(58)-acd103(55)+acd103(60)-acd103&
      &(22)
      acd103(55)=-acd103(55)*acd103(56)
      acd103(56)=acd103(24)*acd103(53)
      acd103(57)=-acd103(20)*acd103(41)
      acd103(58)=-acd103(18)*acd103(40)
      acd103(59)=acd103(16)*acd103(39)
      acd103(60)=-acd103(1)*acd103(9)
      acd103(56)=acd103(60)+acd103(59)+acd103(58)+acd103(42)+acd103(57)+acd103(&
      &56)
      acd103(56)=acd103(8)*acd103(56)
      acd103(53)=acd103(26)*acd103(53)
      acd103(57)=-acd103(27)*acd103(28)
      acd103(58)=-acd103(20)*acd103(52)
      acd103(59)=-acd103(18)*acd103(51)
      acd103(60)=-acd103(16)*acd103(50)
      acd103(61)=-acd103(1)*acd103(11)
      acd103(62)=acd103(16)*acd103(36)
      acd103(62)=-acd103(37)+acd103(62)
      acd103(62)=acd103(5)*acd103(62)
      brack=acd103(53)+acd103(54)+acd103(55)+acd103(56)+acd103(57)+acd103(58)+a&
      &cd103(59)+acd103(60)+acd103(61)+acd103(62)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd103h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(83) :: acd103
      complex(ki) :: brack
      acd103(1)=k2(iv1)
      acd103(2)=dotproduct(k3,qshift)
      acd103(3)=abb103(50)
      acd103(4)=dotproduct(k4,qshift)
      acd103(5)=dotproduct(e7,qshift)
      acd103(6)=dotproduct(qshift,spvak4k3)
      acd103(7)=abb103(46)
      acd103(8)=dotproduct(qshift,qshift)
      acd103(9)=abb103(41)
      acd103(10)=abb103(18)
      acd103(11)=abb103(45)
      acd103(12)=k3(iv1)
      acd103(13)=dotproduct(k2,qshift)
      acd103(14)=dotproduct(l5,qshift)
      acd103(15)=abb103(37)
      acd103(16)=dotproduct(l6,qshift)
      acd103(17)=abb103(57)
      acd103(18)=dotproduct(qshift,spvak1k3)
      acd103(19)=abb103(13)
      acd103(20)=dotproduct(qshift,spvak2l5)
      acd103(21)=abb103(22)
      acd103(22)=dotproduct(qshift,spvak2l6)
      acd103(23)=abb103(51)
      acd103(24)=abb103(23)
      acd103(25)=k4(iv1)
      acd103(26)=l5(iv1)
      acd103(27)=abb103(32)
      acd103(28)=abb103(31)
      acd103(29)=abb103(29)
      acd103(30)=abb103(30)
      acd103(31)=l6(iv1)
      acd103(32)=k7(iv1)
      acd103(33)=abb103(26)
      acd103(34)=e7(iv1)
      acd103(35)=abb103(14)
      acd103(36)=abb103(28)
      acd103(37)=dotproduct(qshift,spvak1l5)
      acd103(38)=abb103(27)
      acd103(39)=dotproduct(qshift,spvak1l6)
      acd103(40)=abb103(15)
      acd103(41)=abb103(55)
      acd103(42)=abb103(9)
      acd103(43)=abb103(17)
      acd103(44)=qshift(iv1)
      acd103(45)=abb103(34)
      acd103(46)=abb103(36)
      acd103(47)=abb103(35)
      acd103(48)=abb103(44)
      acd103(49)=abb103(12)
      acd103(50)=spvak4k3(iv1)
      acd103(51)=dotproduct(k7,qshift)
      acd103(52)=abb103(11)
      acd103(53)=abb103(10)
      acd103(54)=abb103(7)
      acd103(55)=dotproduct(qshift,spvak1k4)
      acd103(56)=dotproduct(qshift,spvak1e7)
      acd103(57)=abb103(49)
      acd103(58)=abb103(16)
      acd103(59)=spvak1k3(iv1)
      acd103(60)=abb103(8)
      acd103(61)=spvak2l5(iv1)
      acd103(62)=abb103(21)
      acd103(63)=spvak2l6(iv1)
      acd103(64)=abb103(48)
      acd103(65)=spvak1l5(iv1)
      acd103(66)=spvak1l6(iv1)
      acd103(67)=spvak1k4(iv1)
      acd103(68)=spvak1e7(iv1)
      acd103(69)=acd103(14)+acd103(16)
      acd103(70)=acd103(27)*acd103(69)
      acd103(71)=acd103(40)*acd103(39)
      acd103(72)=acd103(38)*acd103(37)
      acd103(73)=acd103(22)*acd103(36)
      acd103(74)=acd103(20)*acd103(35)
      acd103(75)=acd103(13)*acd103(7)
      acd103(70)=acd103(74)+acd103(75)-acd103(41)+acd103(73)+acd103(71)+acd103(&
      &72)+acd103(70)
      acd103(71)=acd103(34)*acd103(70)
      acd103(72)=acd103(26)+acd103(31)
      acd103(73)=acd103(27)*acd103(72)
      acd103(74)=acd103(40)*acd103(66)
      acd103(75)=acd103(38)*acd103(65)
      acd103(76)=acd103(63)*acd103(36)
      acd103(77)=acd103(61)*acd103(35)
      acd103(78)=acd103(1)*acd103(7)
      acd103(73)=acd103(78)+acd103(77)+acd103(76)+acd103(74)+acd103(75)+acd103(&
      &73)
      acd103(73)=acd103(5)*acd103(73)
      acd103(74)=-acd103(29)*acd103(72)
      acd103(75)=acd103(12)+acd103(25)+acd103(32)
      acd103(75)=acd103(17)*acd103(75)
      acd103(76)=-acd103(57)*acd103(68)
      acd103(77)=acd103(46)*acd103(67)
      acd103(78)=-acd103(63)*acd103(54)
      acd103(79)=-acd103(61)*acd103(53)
      acd103(80)=-acd103(59)*acd103(52)
      acd103(81)=-acd103(1)*acd103(10)
      acd103(82)=2.0_ki*acd103(44)
      acd103(83)=acd103(45)*acd103(82)
      acd103(71)=acd103(73)+acd103(71)+acd103(83)+acd103(81)+acd103(80)+acd103(&
      &79)+acd103(78)+acd103(76)+acd103(77)+acd103(75)+acd103(74)
      acd103(71)=acd103(6)*acd103(71)
      acd103(70)=acd103(5)*acd103(70)
      acd103(73)=-acd103(29)*acd103(69)
      acd103(74)=acd103(2)+acd103(4)
      acd103(75)=acd103(51)+acd103(74)
      acd103(75)=acd103(17)*acd103(75)
      acd103(76)=-acd103(57)*acd103(56)
      acd103(77)=acd103(46)*acd103(55)
      acd103(78)=-acd103(18)*acd103(52)
      acd103(79)=-acd103(22)*acd103(54)
      acd103(80)=-acd103(20)*acd103(53)
      acd103(81)=-acd103(13)*acd103(10)
      acd103(83)=acd103(8)*acd103(45)
      acd103(70)=acd103(70)+acd103(83)+acd103(81)+acd103(80)+acd103(79)+acd103(&
      &78)+acd103(77)+acd103(58)+acd103(76)+acd103(75)+acd103(73)
      acd103(70)=acd103(50)*acd103(70)
      acd103(73)=-acd103(28)*acd103(72)
      acd103(75)=acd103(63)*acd103(48)
      acd103(76)=acd103(61)*acd103(47)
      acd103(77)=-acd103(59)*acd103(46)
      acd103(78)=acd103(1)*acd103(9)
      acd103(73)=acd103(78)+acd103(77)+acd103(75)+acd103(76)+acd103(73)
      acd103(73)=acd103(8)*acd103(73)
      acd103(75)=-acd103(28)*acd103(69)
      acd103(76)=-acd103(18)*acd103(46)
      acd103(77)=acd103(22)*acd103(48)
      acd103(78)=acd103(20)*acd103(47)
      acd103(79)=acd103(13)*acd103(9)
      acd103(75)=acd103(79)+acd103(78)+acd103(77)-acd103(49)+acd103(76)+acd103(&
      &75)
      acd103(75)=acd103(75)*acd103(82)
      acd103(76)=acd103(63)*acd103(23)
      acd103(77)=acd103(61)*acd103(21)
      acd103(78)=acd103(59)*acd103(19)
      acd103(79)=acd103(1)*acd103(3)
      acd103(76)=-acd103(76)-acd103(77)+acd103(78)-acd103(79)
      acd103(76)=-acd103(76)*acd103(74)
      acd103(77)=acd103(18)*acd103(19)
      acd103(78)=acd103(22)*acd103(23)
      acd103(79)=acd103(20)*acd103(21)
      acd103(80)=acd103(13)*acd103(3)
      acd103(77)=-acd103(24)-acd103(77)+acd103(78)+acd103(79)+acd103(80)
      acd103(78)=acd103(25)*acd103(77)
      acd103(79)=-acd103(15)*acd103(69)
      acd103(77)=acd103(79)+acd103(77)
      acd103(77)=acd103(12)*acd103(77)
      acd103(74)=-acd103(72)*acd103(74)
      acd103(69)=-acd103(25)*acd103(69)
      acd103(69)=acd103(69)+acd103(74)
      acd103(69)=acd103(15)*acd103(69)
      acd103(72)=-acd103(30)*acd103(72)
      acd103(74)=-acd103(5)*acd103(42)
      acd103(74)=acd103(74)+acd103(60)
      acd103(74)=acd103(59)*acd103(74)
      acd103(79)=acd103(32)*acd103(33)
      acd103(80)=acd103(63)*acd103(64)
      acd103(81)=acd103(61)*acd103(62)
      acd103(82)=acd103(1)*acd103(11)
      acd103(83)=-acd103(18)*acd103(42)
      acd103(83)=acd103(43)+acd103(83)
      acd103(83)=acd103(34)*acd103(83)
      brack=acd103(69)+acd103(70)+acd103(71)+acd103(72)+acd103(73)+acd103(74)+a&
      &cd103(75)+acd103(76)+acd103(77)+acd103(78)+acd103(79)+acd103(80)+acd103(&
      &81)+acd103(82)+acd103(83)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd103h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(90) :: acd103
      complex(ki) :: brack
      acd103(1)=d(iv1,iv2)
      acd103(2)=dotproduct(k2,qshift)
      acd103(3)=abb103(41)
      acd103(4)=dotproduct(l5,qshift)
      acd103(5)=abb103(31)
      acd103(6)=dotproduct(l6,qshift)
      acd103(7)=dotproduct(qshift,spvak1k3)
      acd103(8)=abb103(36)
      acd103(9)=dotproduct(qshift,spvak2l5)
      acd103(10)=abb103(35)
      acd103(11)=dotproduct(qshift,spvak2l6)
      acd103(12)=abb103(44)
      acd103(13)=dotproduct(qshift,spvak4k3)
      acd103(14)=abb103(34)
      acd103(15)=abb103(12)
      acd103(16)=k2(iv1)
      acd103(17)=k3(iv2)
      acd103(18)=abb103(50)
      acd103(19)=k4(iv2)
      acd103(20)=e7(iv2)
      acd103(21)=abb103(46)
      acd103(22)=qshift(iv2)
      acd103(23)=spvak4k3(iv2)
      acd103(24)=dotproduct(e7,qshift)
      acd103(25)=abb103(18)
      acd103(26)=k2(iv2)
      acd103(27)=k3(iv1)
      acd103(28)=k4(iv1)
      acd103(29)=e7(iv1)
      acd103(30)=qshift(iv1)
      acd103(31)=spvak4k3(iv1)
      acd103(32)=l5(iv2)
      acd103(33)=abb103(37)
      acd103(34)=l6(iv2)
      acd103(35)=spvak1k3(iv2)
      acd103(36)=abb103(13)
      acd103(37)=spvak2l5(iv2)
      acd103(38)=abb103(22)
      acd103(39)=spvak2l6(iv2)
      acd103(40)=abb103(51)
      acd103(41)=abb103(57)
      acd103(42)=l5(iv1)
      acd103(43)=l6(iv1)
      acd103(44)=spvak1k3(iv1)
      acd103(45)=spvak2l5(iv1)
      acd103(46)=spvak2l6(iv1)
      acd103(47)=abb103(32)
      acd103(48)=abb103(29)
      acd103(49)=k7(iv1)
      acd103(50)=k7(iv2)
      acd103(51)=abb103(9)
      acd103(52)=abb103(14)
      acd103(53)=abb103(28)
      acd103(54)=dotproduct(qshift,spvak1l5)
      acd103(55)=abb103(27)
      acd103(56)=dotproduct(qshift,spvak1l6)
      acd103(57)=abb103(15)
      acd103(58)=abb103(55)
      acd103(59)=spvak1l5(iv2)
      acd103(60)=spvak1l6(iv2)
      acd103(61)=spvak1l5(iv1)
      acd103(62)=spvak1l6(iv1)
      acd103(63)=abb103(11)
      acd103(64)=abb103(10)
      acd103(65)=abb103(7)
      acd103(66)=spvak1k4(iv2)
      acd103(67)=spvak1e7(iv2)
      acd103(68)=abb103(49)
      acd103(69)=spvak1k4(iv1)
      acd103(70)=spvak1e7(iv1)
      acd103(71)=acd103(57)*acd103(60)
      acd103(72)=acd103(55)*acd103(59)
      acd103(73)=acd103(39)*acd103(53)
      acd103(74)=acd103(32)+acd103(34)
      acd103(75)=acd103(74)*acd103(47)
      acd103(76)=acd103(37)*acd103(52)
      acd103(77)=acd103(21)*acd103(26)
      acd103(71)=acd103(75)+acd103(71)+acd103(76)+acd103(77)+acd103(72)+acd103(&
      &73)
      acd103(72)=-acd103(24)*acd103(71)
      acd103(73)=acd103(57)*acd103(56)
      acd103(75)=acd103(55)*acd103(54)
      acd103(76)=acd103(53)*acd103(11)
      acd103(77)=acd103(52)*acd103(9)
      acd103(78)=acd103(4)+acd103(6)
      acd103(79)=acd103(78)*acd103(47)
      acd103(80)=acd103(21)*acd103(2)
      acd103(73)=acd103(73)+acd103(80)-acd103(58)+acd103(75)+acd103(76)+acd103(&
      &77)+acd103(79)
      acd103(75)=-acd103(20)*acd103(73)
      acd103(76)=acd103(48)*acd103(74)
      acd103(77)=acd103(17)+acd103(19)
      acd103(79)=-acd103(50)-acd103(77)
      acd103(79)=acd103(41)*acd103(79)
      acd103(80)=acd103(68)*acd103(67)
      acd103(81)=acd103(35)*acd103(63)
      acd103(82)=-acd103(8)*acd103(66)
      acd103(83)=acd103(39)*acd103(65)
      acd103(84)=acd103(37)*acd103(64)
      acd103(85)=acd103(26)*acd103(25)
      acd103(86)=2.0_ki*acd103(14)
      acd103(87)=-acd103(22)*acd103(86)
      acd103(72)=acd103(75)+acd103(72)+acd103(87)+acd103(85)+acd103(84)+acd103(&
      &83)+acd103(82)+acd103(80)+acd103(81)+acd103(79)+acd103(76)
      acd103(72)=acd103(31)*acd103(72)
      acd103(75)=acd103(57)*acd103(62)
      acd103(76)=acd103(55)*acd103(61)
      acd103(79)=acd103(46)*acd103(53)
      acd103(80)=acd103(45)*acd103(52)
      acd103(81)=acd103(42)+acd103(43)
      acd103(82)=acd103(81)*acd103(47)
      acd103(83)=acd103(16)*acd103(21)
      acd103(75)=acd103(75)+acd103(76)+acd103(79)+acd103(80)+acd103(82)+acd103(&
      &83)
      acd103(76)=-acd103(24)*acd103(75)
      acd103(73)=-acd103(29)*acd103(73)
      acd103(79)=acd103(48)*acd103(81)
      acd103(80)=acd103(27)+acd103(28)
      acd103(82)=-acd103(49)-acd103(80)
      acd103(82)=acd103(41)*acd103(82)
      acd103(83)=acd103(68)*acd103(70)
      acd103(84)=acd103(44)*acd103(63)
      acd103(85)=-acd103(8)*acd103(69)
      acd103(87)=acd103(46)*acd103(65)
      acd103(88)=acd103(45)*acd103(64)
      acd103(89)=acd103(16)*acd103(25)
      acd103(90)=-acd103(30)*acd103(86)
      acd103(73)=acd103(73)+acd103(76)+acd103(90)+acd103(89)+acd103(88)+acd103(&
      &87)+acd103(85)+acd103(83)+acd103(84)+acd103(82)+acd103(79)
      acd103(73)=acd103(23)*acd103(73)
      acd103(76)=acd103(8)*acd103(35)
      acd103(79)=-acd103(39)*acd103(12)
      acd103(82)=-acd103(37)*acd103(10)
      acd103(83)=-acd103(26)*acd103(3)
      acd103(84)=acd103(5)*acd103(74)
      acd103(76)=acd103(84)+acd103(83)+acd103(82)+acd103(76)+acd103(79)
      acd103(76)=acd103(30)*acd103(76)
      acd103(79)=acd103(8)*acd103(44)
      acd103(82)=-acd103(46)*acd103(12)
      acd103(83)=-acd103(45)*acd103(10)
      acd103(84)=-acd103(16)*acd103(3)
      acd103(85)=acd103(5)*acd103(81)
      acd103(79)=acd103(85)+acd103(84)+acd103(83)+acd103(79)+acd103(82)
      acd103(79)=acd103(22)*acd103(79)
      acd103(76)=acd103(76)+acd103(79)
      acd103(71)=-acd103(13)*acd103(71)
      acd103(79)=acd103(35)*acd103(51)
      acd103(71)=acd103(79)+acd103(71)
      acd103(71)=acd103(29)*acd103(71)
      acd103(75)=-acd103(13)*acd103(75)
      acd103(79)=acd103(44)*acd103(51)
      acd103(75)=acd103(79)+acd103(75)
      acd103(75)=acd103(20)*acd103(75)
      acd103(79)=-acd103(11)*acd103(12)
      acd103(82)=-acd103(9)*acd103(10)
      acd103(83)=-acd103(2)*acd103(3)
      acd103(84)=acd103(8)*acd103(7)
      acd103(78)=acd103(5)*acd103(78)
      acd103(78)=acd103(78)+acd103(84)+acd103(83)+acd103(82)+acd103(15)+acd103(&
      &79)
      acd103(79)=-acd103(13)*acd103(86)
      acd103(78)=acd103(79)+2.0_ki*acd103(78)
      acd103(78)=acd103(1)*acd103(78)
      acd103(79)=acd103(35)*acd103(36)
      acd103(82)=acd103(39)*acd103(40)
      acd103(83)=acd103(37)*acd103(38)
      acd103(84)=acd103(26)*acd103(18)
      acd103(79)=-acd103(79)+acd103(82)+acd103(83)+acd103(84)
      acd103(79)=-acd103(79)*acd103(80)
      acd103(82)=acd103(44)*acd103(36)
      acd103(83)=acd103(46)*acd103(40)
      acd103(84)=acd103(45)*acd103(38)
      acd103(85)=acd103(16)*acd103(18)
      acd103(82)=-acd103(82)+acd103(83)+acd103(84)+acd103(85)
      acd103(82)=-acd103(82)*acd103(77)
      acd103(74)=acd103(74)*acd103(80)
      acd103(77)=acd103(81)*acd103(77)
      acd103(74)=acd103(77)+acd103(74)
      acd103(74)=acd103(33)*acd103(74)
      brack=acd103(71)+acd103(72)+acd103(73)+acd103(74)+acd103(75)+2.0_ki*acd10&
      &3(76)+acd103(78)+acd103(79)+acd103(82)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd103h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd103
      complex(ki) :: brack
      acd103(1)=d(iv1,iv2)
      acd103(2)=k2(iv3)
      acd103(3)=abb103(41)
      acd103(4)=l5(iv3)
      acd103(5)=abb103(31)
      acd103(6)=l6(iv3)
      acd103(7)=spvak1k3(iv3)
      acd103(8)=abb103(36)
      acd103(9)=spvak2l5(iv3)
      acd103(10)=abb103(35)
      acd103(11)=spvak2l6(iv3)
      acd103(12)=abb103(44)
      acd103(13)=spvak4k3(iv3)
      acd103(14)=abb103(34)
      acd103(15)=d(iv1,iv3)
      acd103(16)=k2(iv2)
      acd103(17)=l5(iv2)
      acd103(18)=l6(iv2)
      acd103(19)=spvak1k3(iv2)
      acd103(20)=spvak2l5(iv2)
      acd103(21)=spvak2l6(iv2)
      acd103(22)=spvak4k3(iv2)
      acd103(23)=d(iv2,iv3)
      acd103(24)=k2(iv1)
      acd103(25)=l5(iv1)
      acd103(26)=l6(iv1)
      acd103(27)=spvak1k3(iv1)
      acd103(28)=spvak2l5(iv1)
      acd103(29)=spvak2l6(iv1)
      acd103(30)=spvak4k3(iv1)
      acd103(31)=e7(iv2)
      acd103(32)=abb103(46)
      acd103(33)=e7(iv3)
      acd103(34)=e7(iv1)
      acd103(35)=abb103(32)
      acd103(36)=abb103(14)
      acd103(37)=abb103(28)
      acd103(38)=spvak1l5(iv3)
      acd103(39)=abb103(27)
      acd103(40)=spvak1l6(iv3)
      acd103(41)=abb103(15)
      acd103(42)=spvak1l5(iv2)
      acd103(43)=spvak1l6(iv2)
      acd103(44)=spvak1l5(iv1)
      acd103(45)=spvak1l6(iv1)
      acd103(46)=acd103(12)*acd103(29)
      acd103(47)=acd103(10)*acd103(28)
      acd103(48)=-acd103(8)*acd103(27)
      acd103(49)=acd103(3)*acd103(24)
      acd103(50)=acd103(25)+acd103(26)
      acd103(51)=-acd103(5)*acd103(50)
      acd103(46)=acd103(51)+acd103(49)+acd103(48)+acd103(46)+acd103(47)
      acd103(46)=acd103(23)*acd103(46)
      acd103(47)=acd103(12)*acd103(21)
      acd103(48)=acd103(10)*acd103(20)
      acd103(49)=-acd103(8)*acd103(19)
      acd103(51)=acd103(3)*acd103(16)
      acd103(52)=acd103(17)+acd103(18)
      acd103(53)=-acd103(5)*acd103(52)
      acd103(47)=acd103(53)+acd103(51)+acd103(49)+acd103(47)+acd103(48)
      acd103(47)=acd103(15)*acd103(47)
      acd103(48)=acd103(11)*acd103(12)
      acd103(49)=acd103(9)*acd103(10)
      acd103(51)=-acd103(8)*acd103(7)
      acd103(53)=acd103(2)*acd103(3)
      acd103(54)=acd103(4)+acd103(6)
      acd103(55)=-acd103(5)*acd103(54)
      acd103(48)=acd103(55)+acd103(53)+acd103(51)+acd103(48)+acd103(49)
      acd103(48)=acd103(1)*acd103(48)
      acd103(46)=acd103(48)+acd103(46)+acd103(47)
      acd103(47)=acd103(41)*acd103(43)
      acd103(48)=acd103(39)*acd103(42)
      acd103(49)=acd103(37)*acd103(21)
      acd103(51)=acd103(52)*acd103(35)
      acd103(52)=acd103(36)*acd103(20)
      acd103(53)=acd103(32)*acd103(16)
      acd103(47)=acd103(51)+acd103(47)+acd103(52)+acd103(53)+acd103(48)+acd103(&
      &49)
      acd103(48)=acd103(33)*acd103(47)
      acd103(49)=acd103(41)*acd103(40)
      acd103(51)=acd103(39)*acd103(38)
      acd103(52)=acd103(37)*acd103(11)
      acd103(53)=acd103(54)*acd103(35)
      acd103(54)=acd103(36)*acd103(9)
      acd103(55)=acd103(32)*acd103(2)
      acd103(49)=acd103(53)+acd103(49)+acd103(54)+acd103(55)+acd103(51)+acd103(&
      &52)
      acd103(51)=acd103(31)*acd103(49)
      acd103(52)=2.0_ki*acd103(14)
      acd103(53)=acd103(23)*acd103(52)
      acd103(48)=acd103(51)+acd103(53)+acd103(48)
      acd103(48)=acd103(30)*acd103(48)
      acd103(49)=acd103(34)*acd103(49)
      acd103(51)=acd103(41)*acd103(45)
      acd103(53)=acd103(39)*acd103(44)
      acd103(54)=acd103(37)*acd103(29)
      acd103(50)=acd103(50)*acd103(35)
      acd103(55)=acd103(36)*acd103(28)
      acd103(56)=acd103(32)*acd103(24)
      acd103(50)=acd103(50)+acd103(51)+acd103(55)+acd103(56)+acd103(53)+acd103(&
      &54)
      acd103(51)=acd103(33)*acd103(50)
      acd103(53)=acd103(15)*acd103(52)
      acd103(49)=acd103(51)+acd103(53)+acd103(49)
      acd103(49)=acd103(22)*acd103(49)
      acd103(47)=acd103(34)*acd103(47)
      acd103(50)=acd103(31)*acd103(50)
      acd103(51)=acd103(1)*acd103(52)
      acd103(47)=acd103(50)+acd103(51)+acd103(47)
      acd103(47)=acd103(13)*acd103(47)
      brack=2.0_ki*acd103(46)+acd103(47)+acd103(48)+acd103(49)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd103h3
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
      qshift = -k3+k2-k7-k4
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
!---#[ subroutine reconstruct_d103:
   subroutine     reconstruct_d103(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_103:
      coeffs%coeffs_103%c0 = derivative(czip)
      coeffs%coeffs_103%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_103%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_103%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_103%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_103%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_103%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_103%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_103%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_103%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_103%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_103%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_103%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_103%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_103%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_103%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_103%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_103%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_103%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_103%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_103%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_103%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_103%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_103%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_103%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_103%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_103%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_103%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_103%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_103%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_103%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_103%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_103%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_103%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_103%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_103:
   end subroutine reconstruct_d103
!---#] subroutine reconstruct_d103:
end module     p0_dbaru_epnebbbarg_d103h3l1d
