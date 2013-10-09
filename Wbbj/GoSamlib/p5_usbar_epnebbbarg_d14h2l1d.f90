module     p5_usbar_epnebbbarg_d14h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d14h2l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
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
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd14h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd14
      complex(ki) :: brack
      acd14(1)=dotproduct(k1,qshift)
      acd14(2)=dotproduct(k2,qshift)
      acd14(3)=abb14(37)
      acd14(4)=dotproduct(qshift,spvak2k1)
      acd14(5)=abb14(26)
      acd14(6)=dotproduct(qshift,spvak4k1)
      acd14(7)=abb14(18)
      acd14(8)=dotproduct(qshift,spvak4k3)
      acd14(9)=abb14(22)
      acd14(10)=dotproduct(qshift,spval5k1)
      acd14(11)=abb14(51)
      acd14(12)=dotproduct(qshift,spval5l6)
      acd14(13)=abb14(46)
      acd14(14)=dotproduct(qshift,spvak7k2)
      acd14(15)=abb14(20)
      acd14(16)=dotproduct(qshift,spvak7l6)
      acd14(17)=abb14(40)
      acd14(18)=abb14(35)
      acd14(19)=dotproduct(qshift,qshift)
      acd14(20)=abb14(36)
      acd14(21)=abb14(23)
      acd14(22)=dotproduct(qshift,spvak7k1)
      acd14(23)=abb14(30)
      acd14(24)=abb14(21)
      acd14(25)=dotproduct(qshift,spvak7k3)
      acd14(26)=abb14(43)
      acd14(27)=abb14(32)
      acd14(28)=dotproduct(k3,qshift)
      acd14(29)=abb14(28)
      acd14(30)=dotproduct(k4,qshift)
      acd14(31)=dotproduct(k7,qshift)
      acd14(32)=abb14(14)
      acd14(33)=abb14(29)
      acd14(34)=abb14(13)
      acd14(35)=abb14(41)
      acd14(36)=abb14(48)
      acd14(37)=abb14(44)
      acd14(38)=abb14(38)
      acd14(39)=abb14(19)
      acd14(40)=abb14(7)
      acd14(41)=abb14(17)
      acd14(42)=abb14(10)
      acd14(43)=abb14(8)
      acd14(44)=abb14(53)
      acd14(45)=abb14(45)
      acd14(46)=abb14(24)
      acd14(47)=abb14(12)
      acd14(48)=abb14(52)
      acd14(49)=dotproduct(qshift,spvak3k1)
      acd14(50)=abb14(27)
      acd14(51)=abb14(49)
      acd14(52)=abb14(50)
      acd14(53)=abb14(31)
      acd14(54)=abb14(9)
      acd14(55)=abb14(16)
      acd14(56)=abb14(11)
      acd14(57)=-acd14(31)+acd14(1)
      acd14(57)=acd14(57)*acd14(9)
      acd14(58)=-acd14(49)*acd14(34)
      acd14(59)=acd14(40)*acd14(4)
      acd14(60)=acd14(41)*acd14(6)
      acd14(61)=acd14(44)*acd14(10)
      acd14(62)=acd14(46)*acd14(14)
      acd14(63)=acd14(47)*acd14(16)
      acd14(57)=acd14(57)-acd14(50)+acd14(63)+acd14(62)+acd14(61)+acd14(60)+acd&
      &14(59)+acd14(58)
      acd14(57)=acd14(8)*acd14(57)
      acd14(58)=-acd14(34)*acd14(6)
      acd14(59)=-acd14(20)*acd14(2)
      acd14(60)=-acd14(33)*acd14(4)
      acd14(61)=-acd14(35)*acd14(10)
      acd14(62)=-acd14(36)*acd14(12)
      acd14(63)=-acd14(37)*acd14(14)
      acd14(64)=-acd14(38)*acd14(16)
      acd14(58)=acd14(39)+acd14(64)+acd14(63)+acd14(62)+acd14(61)+acd14(60)+acd&
      &14(59)+acd14(58)
      acd14(58)=acd14(19)*acd14(58)
      acd14(59)=-acd14(5)*acd14(4)
      acd14(60)=acd14(7)*acd14(6)
      acd14(61)=-acd14(11)*acd14(10)
      acd14(62)=-acd14(15)*acd14(14)
      acd14(63)=-acd14(17)*acd14(16)
      acd14(59)=acd14(62)+acd14(60)+acd14(63)+acd14(61)+acd14(59)
      acd14(60)=acd14(30)+acd14(28)
      acd14(61)=acd14(60)-acd14(1)
      acd14(59)=acd14(61)*acd14(59)
      acd14(61)=acd14(3)*acd14(1)
      acd14(62)=acd14(21)*acd14(6)
      acd14(63)=acd14(22)*acd14(8)
      acd14(64)=acd14(23)*acd14(63)
      acd14(65)=acd14(26)*acd14(25)
      acd14(61)=-acd14(27)+acd14(65)+acd14(64)+acd14(62)+acd14(61)
      acd14(61)=acd14(2)*acd14(61)
      acd14(62)=acd14(13)*acd14(1)
      acd14(64)=acd14(42)*acd14(6)
      acd14(65)=-acd14(45)*acd14(63)
      acd14(66)=acd14(52)*acd14(25)
      acd14(62)=-acd14(53)+acd14(66)+acd14(65)+acd14(64)+acd14(62)
      acd14(62)=acd14(12)*acd14(62)
      acd14(64)=acd14(24)*acd14(2)
      acd14(65)=acd14(51)*acd14(12)
      acd14(64)=acd14(65)+acd14(64)
      acd14(64)=acd14(22)*acd14(64)
      acd14(60)=-acd14(29)*acd14(60)
      acd14(65)=-acd14(18)*acd14(1)
      acd14(66)=-acd14(32)*acd14(31)
      acd14(67)=-acd14(43)*acd14(6)
      acd14(63)=acd14(48)*acd14(63)
      acd14(68)=-acd14(54)*acd14(14)
      acd14(69)=-acd14(55)*acd14(49)
      brack=acd14(56)+acd14(57)+acd14(58)+acd14(59)+acd14(60)+acd14(61)+acd14(6&
      &2)+acd14(63)+acd14(64)+acd14(65)+acd14(66)+acd14(67)+acd14(68)+acd14(69)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd14h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(92) :: acd14
      complex(ki) :: brack
      acd14(1)=k1(iv1)
      acd14(2)=dotproduct(k2,qshift)
      acd14(3)=abb14(37)
      acd14(4)=dotproduct(qshift,spvak2k1)
      acd14(5)=abb14(26)
      acd14(6)=dotproduct(qshift,spvak4k1)
      acd14(7)=abb14(18)
      acd14(8)=dotproduct(qshift,spvak4k3)
      acd14(9)=abb14(22)
      acd14(10)=dotproduct(qshift,spval5k1)
      acd14(11)=abb14(51)
      acd14(12)=dotproduct(qshift,spval5l6)
      acd14(13)=abb14(46)
      acd14(14)=dotproduct(qshift,spvak7k2)
      acd14(15)=abb14(20)
      acd14(16)=dotproduct(qshift,spvak7l6)
      acd14(17)=abb14(40)
      acd14(18)=abb14(35)
      acd14(19)=k2(iv1)
      acd14(20)=dotproduct(k1,qshift)
      acd14(21)=dotproduct(qshift,qshift)
      acd14(22)=abb14(36)
      acd14(23)=abb14(23)
      acd14(24)=dotproduct(qshift,spvak7k1)
      acd14(25)=abb14(30)
      acd14(26)=abb14(21)
      acd14(27)=dotproduct(qshift,spvak7k3)
      acd14(28)=abb14(43)
      acd14(29)=abb14(32)
      acd14(30)=k3(iv1)
      acd14(31)=abb14(28)
      acd14(32)=k4(iv1)
      acd14(33)=k7(iv1)
      acd14(34)=abb14(14)
      acd14(35)=qshift(iv1)
      acd14(36)=abb14(29)
      acd14(37)=abb14(13)
      acd14(38)=abb14(41)
      acd14(39)=abb14(48)
      acd14(40)=abb14(44)
      acd14(41)=abb14(38)
      acd14(42)=abb14(19)
      acd14(43)=spvak2k1(iv1)
      acd14(44)=dotproduct(k3,qshift)
      acd14(45)=dotproduct(k4,qshift)
      acd14(46)=abb14(7)
      acd14(47)=spvak4k1(iv1)
      acd14(48)=abb14(17)
      acd14(49)=abb14(10)
      acd14(50)=abb14(8)
      acd14(51)=spvak4k3(iv1)
      acd14(52)=dotproduct(k7,qshift)
      acd14(53)=abb14(53)
      acd14(54)=abb14(45)
      acd14(55)=abb14(24)
      acd14(56)=abb14(12)
      acd14(57)=abb14(52)
      acd14(58)=dotproduct(qshift,spvak3k1)
      acd14(59)=abb14(27)
      acd14(60)=spval5k1(iv1)
      acd14(61)=spval5l6(iv1)
      acd14(62)=abb14(49)
      acd14(63)=abb14(50)
      acd14(64)=abb14(31)
      acd14(65)=spvak7k2(iv1)
      acd14(66)=abb14(9)
      acd14(67)=spvak7l6(iv1)
      acd14(68)=spvak7k1(iv1)
      acd14(69)=spvak7k3(iv1)
      acd14(70)=spvak3k1(iv1)
      acd14(71)=abb14(16)
      acd14(72)=acd14(12)*acd14(54)
      acd14(73)=acd14(2)*acd14(25)
      acd14(72)=-acd14(57)+acd14(72)-acd14(73)
      acd14(73)=acd14(68)*acd14(72)
      acd14(74)=-acd14(1)+acd14(33)
      acd14(74)=acd14(9)*acd14(74)
      acd14(75)=acd14(37)*acd14(70)
      acd14(76)=-acd14(67)*acd14(56)
      acd14(77)=-acd14(60)*acd14(53)
      acd14(78)=-acd14(43)*acd14(46)
      acd14(79)=-acd14(65)*acd14(55)
      acd14(80)=acd14(24)*acd14(61)
      acd14(81)=acd14(54)*acd14(80)
      acd14(82)=-acd14(19)*acd14(24)*acd14(25)
      acd14(83)=-acd14(47)*acd14(48)
      acd14(73)=acd14(83)+acd14(82)+acd14(81)+acd14(79)+acd14(78)+acd14(77)+acd&
      &14(76)+acd14(75)+acd14(73)+acd14(74)
      acd14(73)=acd14(8)*acd14(73)
      acd14(72)=acd14(24)*acd14(72)
      acd14(74)=-acd14(20)+acd14(52)
      acd14(74)=acd14(9)*acd14(74)
      acd14(75)=acd14(37)*acd14(58)
      acd14(76)=-acd14(16)*acd14(56)
      acd14(77)=-acd14(14)*acd14(55)
      acd14(78)=-acd14(10)*acd14(53)
      acd14(79)=-acd14(4)*acd14(46)
      acd14(81)=-acd14(6)*acd14(48)
      acd14(72)=acd14(81)+acd14(79)+acd14(78)+acd14(77)+acd14(76)+acd14(59)+acd&
      &14(75)+acd14(72)+acd14(74)
      acd14(72)=acd14(51)*acd14(72)
      acd14(74)=acd14(16)*acd14(41)
      acd14(75)=acd14(14)*acd14(40)
      acd14(76)=acd14(10)*acd14(38)
      acd14(77)=acd14(4)*acd14(36)
      acd14(78)=acd14(12)*acd14(39)
      acd14(79)=acd14(6)*acd14(37)
      acd14(81)=acd14(2)*acd14(22)
      acd14(74)=acd14(81)+acd14(79)+acd14(78)+acd14(77)+acd14(76)+acd14(75)-acd&
      &14(42)+acd14(74)
      acd14(74)=acd14(35)*acd14(74)
      acd14(75)=-acd14(17)*acd14(67)
      acd14(76)=-acd14(15)*acd14(65)
      acd14(77)=-acd14(11)*acd14(60)
      acd14(78)=-acd14(5)*acd14(43)
      acd14(79)=-acd14(61)*acd14(13)
      acd14(81)=-acd14(19)*acd14(3)
      acd14(82)=acd14(47)*acd14(7)
      acd14(75)=acd14(82)+acd14(81)+acd14(79)+acd14(78)+acd14(77)+acd14(75)+acd&
      &14(76)
      acd14(75)=acd14(20)*acd14(75)
      acd14(76)=-acd14(17)*acd14(16)
      acd14(77)=-acd14(15)*acd14(14)
      acd14(78)=-acd14(11)*acd14(10)
      acd14(79)=-acd14(5)*acd14(4)
      acd14(81)=-acd14(12)*acd14(13)
      acd14(82)=acd14(6)*acd14(7)
      acd14(83)=-acd14(2)*acd14(3)
      acd14(76)=acd14(83)+acd14(82)+acd14(81)+acd14(79)+acd14(78)+acd14(77)+acd&
      &14(18)+acd14(76)
      acd14(76)=acd14(1)*acd14(76)
      acd14(77)=acd14(67)*acd14(41)
      acd14(78)=acd14(60)*acd14(38)
      acd14(79)=acd14(43)*acd14(36)
      acd14(81)=acd14(65)*acd14(40)
      acd14(82)=acd14(61)*acd14(39)
      acd14(77)=acd14(82)+acd14(81)+acd14(79)+acd14(77)+acd14(78)
      acd14(77)=acd14(21)*acd14(77)
      acd14(78)=acd14(44)+acd14(45)
      acd14(79)=-acd14(7)*acd14(78)
      acd14(81)=acd14(21)*acd14(37)
      acd14(82)=-acd14(12)*acd14(49)
      acd14(83)=-acd14(2)*acd14(23)
      acd14(79)=acd14(83)+acd14(82)+acd14(81)+acd14(50)+acd14(79)
      acd14(79)=acd14(47)*acd14(79)
      acd14(81)=-acd14(27)*acd14(28)
      acd14(82)=-acd14(24)*acd14(26)
      acd14(83)=acd14(21)*acd14(22)
      acd14(81)=acd14(83)+acd14(82)+acd14(29)+acd14(81)
      acd14(81)=acd14(19)*acd14(81)
      acd14(82)=acd14(30)+acd14(32)
      acd14(83)=-acd14(7)*acd14(82)
      acd14(84)=-acd14(61)*acd14(49)
      acd14(85)=-acd14(19)*acd14(23)
      acd14(83)=acd14(85)+acd14(83)+acd14(84)
      acd14(83)=acd14(6)*acd14(83)
      acd14(84)=acd14(67)*acd14(78)
      acd14(85)=acd14(16)*acd14(82)
      acd14(84)=acd14(85)+acd14(84)
      acd14(84)=acd14(17)*acd14(84)
      acd14(85)=acd14(14)*acd14(82)
      acd14(86)=acd14(65)*acd14(78)
      acd14(85)=acd14(86)+acd14(85)
      acd14(85)=acd14(15)*acd14(85)
      acd14(86)=acd14(60)*acd14(78)
      acd14(87)=acd14(10)*acd14(82)
      acd14(86)=acd14(87)+acd14(86)
      acd14(86)=acd14(11)*acd14(86)
      acd14(87)=acd14(4)*acd14(82)
      acd14(78)=acd14(43)*acd14(78)
      acd14(78)=acd14(78)+acd14(87)
      acd14(78)=acd14(5)*acd14(78)
      acd14(87)=-acd14(63)*acd14(69)
      acd14(88)=-acd14(68)*acd14(62)
      acd14(87)=acd14(87)+acd14(88)
      acd14(87)=acd14(12)*acd14(87)
      acd14(88)=-acd14(28)*acd14(69)
      acd14(89)=-acd14(68)*acd14(26)
      acd14(88)=acd14(88)+acd14(89)
      acd14(88)=acd14(2)*acd14(88)
      acd14(82)=acd14(31)*acd14(82)
      acd14(89)=acd14(70)*acd14(71)
      acd14(90)=acd14(33)*acd14(34)
      acd14(91)=acd14(65)*acd14(66)
      acd14(92)=-acd14(27)*acd14(63)
      acd14(92)=acd14(64)+acd14(92)
      acd14(92)=acd14(61)*acd14(92)
      acd14(80)=-acd14(62)*acd14(80)
      brack=acd14(72)+acd14(73)+2.0_ki*acd14(74)+acd14(75)+acd14(76)+acd14(77)+&
      &acd14(78)+acd14(79)+acd14(80)+acd14(81)+acd14(82)+acd14(83)+acd14(84)+ac&
      &d14(85)+acd14(86)+acd14(87)+acd14(88)+acd14(89)+acd14(90)+acd14(91)+acd1&
      &4(92)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd14h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd14
      complex(ki) :: brack
      acd14(1)=d(iv1,iv2)
      acd14(2)=dotproduct(k2,qshift)
      acd14(3)=abb14(36)
      acd14(4)=dotproduct(qshift,spvak2k1)
      acd14(5)=abb14(29)
      acd14(6)=dotproduct(qshift,spvak4k1)
      acd14(7)=abb14(13)
      acd14(8)=dotproduct(qshift,spval5k1)
      acd14(9)=abb14(41)
      acd14(10)=dotproduct(qshift,spval5l6)
      acd14(11)=abb14(48)
      acd14(12)=dotproduct(qshift,spvak7k2)
      acd14(13)=abb14(44)
      acd14(14)=dotproduct(qshift,spvak7l6)
      acd14(15)=abb14(38)
      acd14(16)=abb14(19)
      acd14(17)=k1(iv1)
      acd14(18)=k2(iv2)
      acd14(19)=abb14(37)
      acd14(20)=spvak2k1(iv2)
      acd14(21)=abb14(26)
      acd14(22)=spvak4k1(iv2)
      acd14(23)=abb14(18)
      acd14(24)=spval5k1(iv2)
      acd14(25)=abb14(51)
      acd14(26)=spval5l6(iv2)
      acd14(27)=abb14(46)
      acd14(28)=spvak7k2(iv2)
      acd14(29)=abb14(20)
      acd14(30)=spvak7l6(iv2)
      acd14(31)=abb14(40)
      acd14(32)=spvak4k3(iv2)
      acd14(33)=abb14(22)
      acd14(34)=k1(iv2)
      acd14(35)=k2(iv1)
      acd14(36)=spvak2k1(iv1)
      acd14(37)=spvak4k1(iv1)
      acd14(38)=spval5k1(iv1)
      acd14(39)=spval5l6(iv1)
      acd14(40)=spvak7k2(iv1)
      acd14(41)=spvak7l6(iv1)
      acd14(42)=spvak4k3(iv1)
      acd14(43)=qshift(iv2)
      acd14(44)=abb14(23)
      acd14(45)=dotproduct(qshift,spvak7k1)
      acd14(46)=abb14(30)
      acd14(47)=spvak7k1(iv2)
      acd14(48)=dotproduct(qshift,spvak4k3)
      acd14(49)=abb14(21)
      acd14(50)=spvak7k3(iv2)
      acd14(51)=abb14(43)
      acd14(52)=qshift(iv1)
      acd14(53)=spvak7k1(iv1)
      acd14(54)=spvak7k3(iv1)
      acd14(55)=k3(iv1)
      acd14(56)=k3(iv2)
      acd14(57)=k4(iv1)
      acd14(58)=k4(iv2)
      acd14(59)=k7(iv1)
      acd14(60)=k7(iv2)
      acd14(61)=abb14(7)
      acd14(62)=abb14(10)
      acd14(63)=abb14(17)
      acd14(64)=abb14(53)
      acd14(65)=abb14(45)
      acd14(66)=abb14(49)
      acd14(67)=abb14(50)
      acd14(68)=abb14(24)
      acd14(69)=abb14(12)
      acd14(70)=abb14(52)
      acd14(71)=spvak3k1(iv2)
      acd14(72)=spvak3k1(iv1)
      acd14(73)=-acd14(43)*acd14(35)
      acd14(74)=-acd14(52)*acd14(18)
      acd14(75)=-acd14(2)*acd14(1)
      acd14(73)=acd14(75)+acd14(73)+acd14(74)
      acd14(73)=acd14(3)*acd14(73)
      acd14(74)=-acd14(43)*acd14(39)
      acd14(75)=-acd14(52)*acd14(26)
      acd14(76)=-acd14(10)*acd14(1)
      acd14(74)=acd14(76)+acd14(74)+acd14(75)
      acd14(74)=acd14(11)*acd14(74)
      acd14(75)=-acd14(20)*acd14(52)
      acd14(76)=-acd14(36)*acd14(43)
      acd14(75)=acd14(75)+acd14(76)
      acd14(75)=acd14(5)*acd14(75)
      acd14(76)=-acd14(24)*acd14(52)
      acd14(77)=-acd14(38)*acd14(43)
      acd14(76)=acd14(76)+acd14(77)
      acd14(76)=acd14(9)*acd14(76)
      acd14(77)=-acd14(28)*acd14(52)
      acd14(78)=-acd14(40)*acd14(43)
      acd14(77)=acd14(77)+acd14(78)
      acd14(77)=acd14(13)*acd14(77)
      acd14(78)=-acd14(30)*acd14(52)
      acd14(79)=-acd14(41)*acd14(43)
      acd14(78)=acd14(78)+acd14(79)
      acd14(78)=acd14(15)*acd14(78)
      acd14(73)=acd14(73)+acd14(75)+acd14(76)+acd14(74)+acd14(77)+acd14(78)
      acd14(74)=-acd14(4)*acd14(5)
      acd14(75)=-acd14(6)*acd14(7)
      acd14(76)=-acd14(8)*acd14(9)
      acd14(77)=-acd14(12)*acd14(13)
      acd14(78)=-acd14(14)*acd14(15)
      acd14(74)=acd14(16)+acd14(78)+acd14(77)+acd14(76)+acd14(75)+acd14(74)
      acd14(75)=2.0_ki*acd14(1)
      acd14(74)=acd14(75)*acd14(74)
      acd14(75)=acd14(36)*acd14(21)
      acd14(76)=acd14(38)*acd14(25)
      acd14(77)=acd14(40)*acd14(29)
      acd14(78)=acd14(41)*acd14(31)
      acd14(75)=acd14(78)+acd14(77)+acd14(75)+acd14(76)
      acd14(76)=acd14(23)*acd14(37)
      acd14(76)=acd14(75)-acd14(76)
      acd14(77)=-acd14(58)-acd14(56)
      acd14(76)=acd14(76)*acd14(77)
      acd14(77)=acd14(20)*acd14(21)
      acd14(78)=acd14(24)*acd14(25)
      acd14(79)=acd14(28)*acd14(29)
      acd14(80)=acd14(30)*acd14(31)
      acd14(77)=acd14(77)+acd14(78)+acd14(79)+acd14(80)
      acd14(78)=acd14(23)*acd14(22)
      acd14(78)=acd14(78)-acd14(77)
      acd14(79)=acd14(57)+acd14(55)
      acd14(78)=acd14(78)*acd14(79)
      acd14(77)=acd14(17)*acd14(77)
      acd14(75)=acd14(34)*acd14(75)
      acd14(79)=acd14(2)*acd14(46)
      acd14(80)=-acd14(10)*acd14(65)
      acd14(79)=acd14(70)+acd14(80)+acd14(79)
      acd14(80)=acd14(47)*acd14(42)
      acd14(81)=acd14(53)*acd14(32)
      acd14(80)=acd14(80)+acd14(81)
      acd14(79)=acd14(80)*acd14(79)
      acd14(80)=-acd14(43)*acd14(37)
      acd14(81)=-acd14(52)*acd14(22)
      acd14(80)=acd14(80)+acd14(81)
      acd14(81)=-acd14(71)*acd14(42)
      acd14(82)=-acd14(72)*acd14(32)
      acd14(80)=acd14(82)+acd14(81)+2.0_ki*acd14(80)
      acd14(80)=acd14(7)*acd14(80)
      acd14(81)=acd14(18)*acd14(42)
      acd14(82)=acd14(35)*acd14(32)
      acd14(81)=acd14(81)+acd14(82)
      acd14(81)=acd14(46)*acd14(81)
      acd14(82)=-acd14(26)*acd14(42)
      acd14(83)=-acd14(39)*acd14(32)
      acd14(82)=acd14(82)+acd14(83)
      acd14(82)=acd14(65)*acd14(82)
      acd14(81)=acd14(81)+acd14(82)
      acd14(81)=acd14(45)*acd14(81)
      acd14(82)=acd14(47)*acd14(35)
      acd14(83)=acd14(53)*acd14(18)
      acd14(82)=acd14(82)+acd14(83)
      acd14(83)=acd14(46)*acd14(82)
      acd14(84)=acd14(47)*acd14(39)
      acd14(85)=acd14(53)*acd14(26)
      acd14(84)=acd14(84)+acd14(85)
      acd14(85)=-acd14(65)*acd14(84)
      acd14(83)=acd14(83)+acd14(85)
      acd14(83)=acd14(48)*acd14(83)
      acd14(85)=acd14(50)*acd14(35)
      acd14(86)=acd14(54)*acd14(18)
      acd14(85)=acd14(86)+acd14(85)
      acd14(85)=acd14(51)*acd14(85)
      acd14(86)=-acd14(59)+acd14(17)
      acd14(86)=acd14(32)*acd14(86)
      acd14(87)=-acd14(60)+acd14(34)
      acd14(87)=acd14(42)*acd14(87)
      acd14(86)=acd14(87)+acd14(86)
      acd14(86)=acd14(33)*acd14(86)
      acd14(87)=-acd14(22)*acd14(17)
      acd14(88)=-acd14(37)*acd14(34)
      acd14(87)=acd14(87)+acd14(88)
      acd14(87)=acd14(23)*acd14(87)
      acd14(88)=acd14(18)*acd14(17)
      acd14(89)=acd14(35)*acd14(34)
      acd14(88)=acd14(88)+acd14(89)
      acd14(88)=acd14(19)*acd14(88)
      acd14(89)=acd14(26)*acd14(17)
      acd14(90)=acd14(39)*acd14(34)
      acd14(89)=acd14(89)+acd14(90)
      acd14(89)=acd14(27)*acd14(89)
      acd14(90)=acd14(35)*acd14(22)
      acd14(91)=acd14(37)*acd14(18)
      acd14(90)=acd14(90)+acd14(91)
      acd14(90)=acd14(44)*acd14(90)
      acd14(82)=acd14(49)*acd14(82)
      acd14(91)=acd14(20)*acd14(42)
      acd14(92)=acd14(36)*acd14(32)
      acd14(91)=acd14(91)+acd14(92)
      acd14(91)=acd14(61)*acd14(91)
      acd14(92)=acd14(37)*acd14(26)
      acd14(93)=acd14(39)*acd14(22)
      acd14(92)=acd14(92)+acd14(93)
      acd14(92)=acd14(62)*acd14(92)
      acd14(93)=acd14(22)*acd14(42)
      acd14(94)=acd14(37)*acd14(32)
      acd14(93)=acd14(93)+acd14(94)
      acd14(93)=acd14(63)*acd14(93)
      acd14(94)=acd14(24)*acd14(42)
      acd14(95)=acd14(38)*acd14(32)
      acd14(94)=acd14(94)+acd14(95)
      acd14(94)=acd14(64)*acd14(94)
      acd14(84)=acd14(66)*acd14(84)
      acd14(95)=acd14(50)*acd14(39)
      acd14(96)=acd14(54)*acd14(26)
      acd14(95)=acd14(95)+acd14(96)
      acd14(95)=acd14(67)*acd14(95)
      acd14(96)=acd14(28)*acd14(42)
      acd14(97)=acd14(40)*acd14(32)
      acd14(96)=acd14(96)+acd14(97)
      acd14(96)=acd14(68)*acd14(96)
      acd14(97)=acd14(30)*acd14(42)
      acd14(98)=acd14(41)*acd14(32)
      acd14(97)=acd14(97)+acd14(98)
      acd14(97)=acd14(69)*acd14(97)
      brack=2.0_ki*acd14(73)+acd14(74)+acd14(75)+acd14(76)+acd14(77)+acd14(78)+&
      &acd14(79)+acd14(80)+acd14(81)+acd14(82)+acd14(83)+acd14(84)+acd14(85)+ac&
      &d14(86)+acd14(87)+acd14(88)+acd14(89)+acd14(90)+acd14(91)+acd14(92)+acd1&
      &4(93)+acd14(94)+acd14(95)+acd14(96)+acd14(97)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd14h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(49) :: acd14
      complex(ki) :: brack
      acd14(1)=d(iv1,iv2)
      acd14(2)=k2(iv3)
      acd14(3)=abb14(36)
      acd14(4)=spvak2k1(iv3)
      acd14(5)=abb14(29)
      acd14(6)=spvak4k1(iv3)
      acd14(7)=abb14(13)
      acd14(8)=spval5k1(iv3)
      acd14(9)=abb14(41)
      acd14(10)=spval5l6(iv3)
      acd14(11)=abb14(48)
      acd14(12)=spvak7k2(iv3)
      acd14(13)=abb14(44)
      acd14(14)=spvak7l6(iv3)
      acd14(15)=abb14(38)
      acd14(16)=d(iv1,iv3)
      acd14(17)=k2(iv2)
      acd14(18)=spvak2k1(iv2)
      acd14(19)=spvak4k1(iv2)
      acd14(20)=spval5k1(iv2)
      acd14(21)=spval5l6(iv2)
      acd14(22)=spvak7k2(iv2)
      acd14(23)=spvak7l6(iv2)
      acd14(24)=d(iv2,iv3)
      acd14(25)=k2(iv1)
      acd14(26)=spvak2k1(iv1)
      acd14(27)=spvak4k1(iv1)
      acd14(28)=spval5k1(iv1)
      acd14(29)=spval5l6(iv1)
      acd14(30)=spvak7k2(iv1)
      acd14(31)=spvak7l6(iv1)
      acd14(32)=spvak4k3(iv2)
      acd14(33)=spvak7k1(iv3)
      acd14(34)=abb14(30)
      acd14(35)=spvak4k3(iv3)
      acd14(36)=spvak7k1(iv2)
      acd14(37)=spvak4k3(iv1)
      acd14(38)=spvak7k1(iv1)
      acd14(39)=abb14(45)
      acd14(40)=acd14(3)*acd14(2)
      acd14(41)=acd14(11)*acd14(10)
      acd14(42)=acd14(4)*acd14(5)
      acd14(43)=acd14(6)*acd14(7)
      acd14(44)=acd14(8)*acd14(9)
      acd14(45)=acd14(12)*acd14(13)
      acd14(46)=acd14(14)*acd14(15)
      acd14(40)=acd14(46)+acd14(45)+acd14(44)+acd14(43)+acd14(42)+acd14(41)+acd&
      &14(40)
      acd14(41)=2.0_ki*acd14(1)
      acd14(40)=acd14(41)*acd14(40)
      acd14(41)=acd14(26)*acd14(5)
      acd14(42)=acd14(27)*acd14(7)
      acd14(43)=acd14(28)*acd14(9)
      acd14(44)=acd14(30)*acd14(13)
      acd14(45)=acd14(31)*acd14(15)
      acd14(41)=acd14(45)+acd14(44)+acd14(43)+acd14(42)+acd14(41)
      acd14(42)=2.0_ki*acd14(24)
      acd14(41)=acd14(42)*acd14(41)
      acd14(43)=acd14(18)*acd14(5)
      acd14(44)=acd14(19)*acd14(7)
      acd14(45)=acd14(20)*acd14(9)
      acd14(46)=acd14(22)*acd14(13)
      acd14(47)=acd14(23)*acd14(15)
      acd14(43)=acd14(47)+acd14(46)+acd14(45)+acd14(44)+acd14(43)
      acd14(44)=2.0_ki*acd14(16)
      acd14(43)=acd14(44)*acd14(43)
      acd14(45)=-acd14(2)*acd14(34)
      acd14(46)=acd14(10)*acd14(39)
      acd14(45)=acd14(46)+acd14(45)
      acd14(46)=acd14(37)*acd14(36)
      acd14(47)=acd14(38)*acd14(32)
      acd14(46)=acd14(46)+acd14(47)
      acd14(45)=acd14(46)*acd14(45)
      acd14(46)=acd14(37)*acd14(33)
      acd14(47)=acd14(38)*acd14(35)
      acd14(46)=acd14(46)+acd14(47)
      acd14(47)=-acd14(34)*acd14(46)
      acd14(48)=acd14(3)*acd14(44)
      acd14(47)=acd14(48)+acd14(47)
      acd14(47)=acd14(17)*acd14(47)
      acd14(46)=acd14(39)*acd14(46)
      acd14(44)=acd14(11)*acd14(44)
      acd14(44)=acd14(44)+acd14(46)
      acd14(44)=acd14(21)*acd14(44)
      acd14(46)=acd14(33)*acd14(32)
      acd14(48)=acd14(36)*acd14(35)
      acd14(46)=acd14(46)+acd14(48)
      acd14(48)=-acd14(34)*acd14(46)
      acd14(49)=acd14(3)*acd14(42)
      acd14(48)=acd14(49)+acd14(48)
      acd14(48)=acd14(25)*acd14(48)
      acd14(46)=acd14(39)*acd14(46)
      acd14(42)=acd14(11)*acd14(42)
      acd14(42)=acd14(42)+acd14(46)
      acd14(42)=acd14(29)*acd14(42)
      brack=acd14(40)+acd14(41)+acd14(42)+acd14(43)+acd14(44)+acd14(45)+acd14(4&
      &7)+acd14(48)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd14h2
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
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group6
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group6), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_14:
      coeffs%coeffs_14%c0 = derivative(czip)
      coeffs%coeffs_14%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_14%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_14%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_14%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_14%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_14%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_14%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_14%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_14%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_14%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_14%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_14%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_14%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_14%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_14%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_14%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_14%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_14%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_14%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_14%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_14%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_14%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_14%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_14%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_14%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_14%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_14%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_14%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_14%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_14%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_14%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_14%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_14%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_14%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_14:
   end subroutine reconstruct_d14
!---#] subroutine reconstruct_d14:
end module     p5_usbar_epnebbbarg_d14h2l1d
