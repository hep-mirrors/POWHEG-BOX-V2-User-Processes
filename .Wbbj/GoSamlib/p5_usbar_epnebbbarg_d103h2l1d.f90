module     p5_usbar_epnebbbarg_d103h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d103h2l1d.f90
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
   public :: derivative , reconstruct_d103
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd103h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd103
      complex(ki) :: brack
      acd103(1)=dotproduct(k3,qshift)
      acd103(2)=dotproduct(qshift,spvak4k1)
      acd103(3)=abb103(36)
      acd103(4)=dotproduct(qshift,spvae7k1)
      acd103(5)=abb103(27)
      acd103(6)=dotproduct(qshift,spvak2e7)
      acd103(7)=abb103(26)
      acd103(8)=dotproduct(qshift,spval5e7)
      acd103(9)=abb103(24)
      acd103(10)=dotproduct(k4,qshift)
      acd103(11)=dotproduct(e7,qshift)
      acd103(12)=dotproduct(qshift,qshift)
      acd103(13)=abb103(18)
      acd103(14)=dotproduct(qshift,spvak2k1)
      acd103(15)=dotproduct(qshift,spvak4k3)
      acd103(16)=abb103(8)
      acd103(17)=dotproduct(qshift,spval5k1)
      acd103(18)=abb103(7)
      acd103(19)=dotproduct(qshift,spvak2k3)
      acd103(20)=abb103(12)
      acd103(21)=dotproduct(qshift,spval5k3)
      acd103(22)=abb103(33)
      acd103(23)=abb103(15)
      acd103(24)=abb103(17)
      acd103(25)=abb103(25)
      acd103(26)=abb103(23)
      acd103(27)=abb103(11)
      acd103(28)=abb103(37)
      acd103(29)=abb103(14)
      acd103(30)=abb103(34)
      acd103(31)=abb103(22)
      acd103(32)=abb103(20)
      acd103(33)=abb103(21)
      acd103(34)=abb103(39)
      acd103(35)=dotproduct(qshift,spvak2k4)
      acd103(36)=abb103(9)
      acd103(37)=dotproduct(qshift,spvak2k7)
      acd103(38)=abb103(43)
      acd103(39)=dotproduct(qshift,spvak3k1)
      acd103(40)=dotproduct(qshift,spval5k4)
      acd103(41)=abb103(41)
      acd103(42)=dotproduct(qshift,spval5k7)
      acd103(43)=abb103(40)
      acd103(44)=dotproduct(qshift,spvak7k1)
      acd103(45)=abb103(35)
      acd103(46)=abb103(13)
      acd103(47)=abb103(30)
      acd103(48)=abb103(10)
      acd103(49)=abb103(19)
      acd103(50)=abb103(16)
      acd103(51)=abb103(29)
      acd103(52)=abb103(31)
      acd103(53)=-acd103(16)*acd103(14)
      acd103(54)=-acd103(18)*acd103(17)
      acd103(53)=acd103(54)+acd103(53)
      acd103(53)=acd103(53)*acd103(11)
      acd103(54)=acd103(39)*acd103(3)
      acd103(55)=acd103(28)*acd103(2)
      acd103(56)=acd103(30)*acd103(4)
      acd103(57)=acd103(31)*acd103(6)
      acd103(58)=acd103(32)*acd103(8)
      acd103(59)=acd103(33)*acd103(19)
      acd103(60)=acd103(34)*acd103(21)
      acd103(61)=acd103(36)*acd103(35)
      acd103(62)=acd103(38)*acd103(37)
      acd103(63)=acd103(41)*acd103(40)
      acd103(64)=acd103(43)*acd103(42)
      acd103(65)=acd103(45)*acd103(44)
      acd103(53)=acd103(53)+acd103(65)+acd103(64)+acd103(63)+acd103(62)+acd103(&
      &61)+acd103(60)+acd103(59)+acd103(58)+acd103(57)+acd103(56)+acd103(55)+ac&
      &d103(54)
      acd103(53)=acd103(15)*acd103(53)
      acd103(54)=-acd103(13)*acd103(11)
      acd103(55)=-acd103(23)*acd103(2)
      acd103(56)=-acd103(24)*acd103(4)
      acd103(57)=-acd103(25)*acd103(6)
      acd103(58)=-acd103(26)*acd103(8)
      acd103(54)=acd103(27)+acd103(58)+acd103(57)+acd103(56)+acd103(55)+acd103(&
      &54)
      acd103(54)=acd103(12)*acd103(54)
      acd103(55)=-acd103(3)*acd103(2)
      acd103(56)=acd103(5)*acd103(4)
      acd103(57)=-acd103(7)*acd103(6)
      acd103(58)=-acd103(9)*acd103(8)
      acd103(55)=acd103(58)+acd103(57)+acd103(55)+acd103(56)
      acd103(56)=acd103(10)+acd103(1)
      acd103(55)=acd103(56)*acd103(55)
      acd103(56)=acd103(20)*acd103(11)
      acd103(56)=-acd103(46)+acd103(56)
      acd103(56)=acd103(19)*acd103(56)
      acd103(57)=acd103(22)*acd103(11)
      acd103(57)=-acd103(47)+acd103(57)
      acd103(57)=acd103(21)*acd103(57)
      acd103(58)=-acd103(29)*acd103(2)
      acd103(59)=-acd103(48)*acd103(35)
      acd103(60)=-acd103(49)*acd103(37)
      acd103(61)=-acd103(50)*acd103(39)
      acd103(62)=-acd103(51)*acd103(40)
      acd103(63)=-acd103(52)*acd103(42)
      brack=acd103(53)+acd103(54)+acd103(55)+acd103(56)+acd103(57)+acd103(58)+a&
      &cd103(59)+acd103(60)+acd103(61)+acd103(62)+acd103(63)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd103h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(88) :: acd103
      complex(ki) :: brack
      acd103(1)=k3(iv1)
      acd103(2)=dotproduct(qshift,spvak4k1)
      acd103(3)=abb103(36)
      acd103(4)=dotproduct(qshift,spvae7k1)
      acd103(5)=abb103(27)
      acd103(6)=dotproduct(qshift,spvak2e7)
      acd103(7)=abb103(26)
      acd103(8)=dotproduct(qshift,spval5e7)
      acd103(9)=abb103(24)
      acd103(10)=k4(iv1)
      acd103(11)=e7(iv1)
      acd103(12)=dotproduct(qshift,qshift)
      acd103(13)=abb103(18)
      acd103(14)=dotproduct(qshift,spvak2k1)
      acd103(15)=dotproduct(qshift,spvak4k3)
      acd103(16)=abb103(8)
      acd103(17)=dotproduct(qshift,spval5k1)
      acd103(18)=abb103(7)
      acd103(19)=dotproduct(qshift,spvak2k3)
      acd103(20)=abb103(12)
      acd103(21)=dotproduct(qshift,spval5k3)
      acd103(22)=abb103(33)
      acd103(23)=qshift(iv1)
      acd103(24)=dotproduct(e7,qshift)
      acd103(25)=abb103(15)
      acd103(26)=abb103(17)
      acd103(27)=abb103(25)
      acd103(28)=abb103(23)
      acd103(29)=abb103(11)
      acd103(30)=spvak4k1(iv1)
      acd103(31)=dotproduct(k3,qshift)
      acd103(32)=dotproduct(k4,qshift)
      acd103(33)=abb103(37)
      acd103(34)=abb103(14)
      acd103(35)=spvae7k1(iv1)
      acd103(36)=abb103(34)
      acd103(37)=spvak2e7(iv1)
      acd103(38)=abb103(22)
      acd103(39)=spval5e7(iv1)
      acd103(40)=abb103(20)
      acd103(41)=spvak2k1(iv1)
      acd103(42)=spvak4k3(iv1)
      acd103(43)=abb103(21)
      acd103(44)=abb103(39)
      acd103(45)=dotproduct(qshift,spvak2k4)
      acd103(46)=abb103(9)
      acd103(47)=dotproduct(qshift,spvak2k7)
      acd103(48)=abb103(43)
      acd103(49)=dotproduct(qshift,spvak3k1)
      acd103(50)=dotproduct(qshift,spval5k4)
      acd103(51)=abb103(41)
      acd103(52)=dotproduct(qshift,spval5k7)
      acd103(53)=abb103(40)
      acd103(54)=dotproduct(qshift,spvak7k1)
      acd103(55)=abb103(35)
      acd103(56)=spvak2k3(iv1)
      acd103(57)=abb103(13)
      acd103(58)=spval5k1(iv1)
      acd103(59)=spval5k3(iv1)
      acd103(60)=abb103(30)
      acd103(61)=spvak2k4(iv1)
      acd103(62)=abb103(10)
      acd103(63)=spvak2k7(iv1)
      acd103(64)=abb103(19)
      acd103(65)=spvak3k1(iv1)
      acd103(66)=abb103(16)
      acd103(67)=spval5k4(iv1)
      acd103(68)=abb103(29)
      acd103(69)=spval5k7(iv1)
      acd103(70)=abb103(31)
      acd103(71)=spvak7k1(iv1)
      acd103(72)=acd103(18)*acd103(17)
      acd103(73)=acd103(16)*acd103(14)
      acd103(72)=acd103(72)+acd103(73)
      acd103(73)=acd103(11)*acd103(72)
      acd103(74)=acd103(18)*acd103(58)
      acd103(75)=acd103(16)*acd103(41)
      acd103(74)=acd103(74)+acd103(75)
      acd103(74)=acd103(24)*acd103(74)
      acd103(75)=-acd103(55)*acd103(71)
      acd103(76)=-acd103(53)*acd103(69)
      acd103(77)=-acd103(51)*acd103(67)
      acd103(78)=-acd103(48)*acd103(63)
      acd103(79)=-acd103(46)*acd103(61)
      acd103(80)=-acd103(59)*acd103(44)
      acd103(81)=-acd103(56)*acd103(43)
      acd103(82)=-acd103(39)*acd103(40)
      acd103(83)=-acd103(37)*acd103(38)
      acd103(84)=-acd103(35)*acd103(36)
      acd103(85)=-acd103(30)*acd103(33)
      acd103(86)=-acd103(3)*acd103(65)
      acd103(73)=acd103(74)+acd103(86)+acd103(73)+acd103(85)+acd103(84)+acd103(&
      &83)+acd103(82)+acd103(81)+acd103(80)+acd103(79)+acd103(78)+acd103(77)+ac&
      &d103(75)+acd103(76)
      acd103(73)=acd103(15)*acd103(73)
      acd103(72)=acd103(24)*acd103(72)
      acd103(74)=-acd103(55)*acd103(54)
      acd103(75)=-acd103(53)*acd103(52)
      acd103(76)=-acd103(51)*acd103(50)
      acd103(77)=-acd103(48)*acd103(47)
      acd103(78)=-acd103(46)*acd103(45)
      acd103(79)=-acd103(21)*acd103(44)
      acd103(80)=-acd103(19)*acd103(43)
      acd103(81)=-acd103(8)*acd103(40)
      acd103(82)=-acd103(6)*acd103(38)
      acd103(83)=-acd103(4)*acd103(36)
      acd103(84)=-acd103(2)*acd103(33)
      acd103(85)=-acd103(3)*acd103(49)
      acd103(72)=acd103(72)+acd103(85)+acd103(84)+acd103(83)+acd103(82)+acd103(&
      &81)+acd103(80)+acd103(79)+acd103(78)+acd103(77)+acd103(76)+acd103(74)+ac&
      &d103(75)
      acd103(72)=acd103(42)*acd103(72)
      acd103(74)=acd103(39)*acd103(28)
      acd103(75)=acd103(37)*acd103(27)
      acd103(76)=acd103(35)*acd103(26)
      acd103(77)=acd103(30)*acd103(25)
      acd103(74)=acd103(77)+acd103(76)+acd103(74)+acd103(75)
      acd103(74)=acd103(12)*acd103(74)
      acd103(75)=acd103(8)*acd103(28)
      acd103(76)=acd103(6)*acd103(27)
      acd103(77)=acd103(4)*acd103(26)
      acd103(78)=acd103(2)*acd103(25)
      acd103(75)=acd103(78)+acd103(77)+acd103(76)-acd103(29)+acd103(75)
      acd103(76)=2.0_ki*acd103(23)
      acd103(75)=acd103(75)*acd103(76)
      acd103(77)=acd103(9)*acd103(39)
      acd103(78)=acd103(7)*acd103(37)
      acd103(79)=-acd103(5)*acd103(35)
      acd103(77)=acd103(79)+acd103(78)+acd103(77)
      acd103(78)=acd103(31)+acd103(32)
      acd103(77)=acd103(78)*acd103(77)
      acd103(79)=acd103(8)*acd103(9)
      acd103(80)=acd103(6)*acd103(7)
      acd103(81)=acd103(4)*acd103(5)
      acd103(79)=-acd103(81)+acd103(79)+acd103(80)
      acd103(80)=acd103(1)+acd103(10)
      acd103(79)=acd103(79)*acd103(80)
      acd103(81)=-acd103(21)*acd103(22)
      acd103(82)=-acd103(19)*acd103(20)
      acd103(83)=acd103(12)*acd103(13)
      acd103(81)=acd103(83)+acd103(81)+acd103(82)
      acd103(81)=acd103(11)*acd103(81)
      acd103(82)=-acd103(59)*acd103(22)
      acd103(83)=-acd103(56)*acd103(20)
      acd103(76)=acd103(13)*acd103(76)
      acd103(76)=acd103(76)+acd103(82)+acd103(83)
      acd103(76)=acd103(24)*acd103(76)
      acd103(80)=acd103(2)*acd103(80)
      acd103(78)=acd103(30)*acd103(78)
      acd103(78)=acd103(78)+acd103(80)
      acd103(78)=acd103(3)*acd103(78)
      acd103(80)=acd103(69)*acd103(70)
      acd103(82)=acd103(67)*acd103(68)
      acd103(83)=acd103(65)*acd103(66)
      acd103(84)=acd103(63)*acd103(64)
      acd103(85)=acd103(61)*acd103(62)
      acd103(86)=acd103(59)*acd103(60)
      acd103(87)=acd103(56)*acd103(57)
      acd103(88)=acd103(30)*acd103(34)
      brack=acd103(72)+acd103(73)+acd103(74)+acd103(75)+acd103(76)+acd103(77)+a&
      &cd103(78)+acd103(79)+acd103(80)+acd103(81)+acd103(82)+acd103(83)+acd103(&
      &84)+acd103(85)+acd103(86)+acd103(87)+acd103(88)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd103h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(90) :: acd103
      complex(ki) :: brack
      acd103(1)=d(iv1,iv2)
      acd103(2)=dotproduct(e7,qshift)
      acd103(3)=abb103(18)
      acd103(4)=dotproduct(qshift,spvak4k1)
      acd103(5)=abb103(15)
      acd103(6)=dotproduct(qshift,spvae7k1)
      acd103(7)=abb103(17)
      acd103(8)=dotproduct(qshift,spvak2e7)
      acd103(9)=abb103(25)
      acd103(10)=dotproduct(qshift,spval5e7)
      acd103(11)=abb103(23)
      acd103(12)=abb103(11)
      acd103(13)=k3(iv1)
      acd103(14)=spvak4k1(iv2)
      acd103(15)=abb103(36)
      acd103(16)=spvae7k1(iv2)
      acd103(17)=abb103(27)
      acd103(18)=spvak2e7(iv2)
      acd103(19)=abb103(26)
      acd103(20)=spval5e7(iv2)
      acd103(21)=abb103(24)
      acd103(22)=k3(iv2)
      acd103(23)=spvak4k1(iv1)
      acd103(24)=spvae7k1(iv1)
      acd103(25)=spvak2e7(iv1)
      acd103(26)=spval5e7(iv1)
      acd103(27)=k4(iv1)
      acd103(28)=k4(iv2)
      acd103(29)=e7(iv1)
      acd103(30)=qshift(iv2)
      acd103(31)=spvak2k1(iv2)
      acd103(32)=dotproduct(qshift,spvak4k3)
      acd103(33)=abb103(8)
      acd103(34)=spvak4k3(iv2)
      acd103(35)=dotproduct(qshift,spvak2k1)
      acd103(36)=dotproduct(qshift,spval5k1)
      acd103(37)=abb103(7)
      acd103(38)=spvak2k3(iv2)
      acd103(39)=abb103(12)
      acd103(40)=spval5k1(iv2)
      acd103(41)=spval5k3(iv2)
      acd103(42)=abb103(33)
      acd103(43)=e7(iv2)
      acd103(44)=qshift(iv1)
      acd103(45)=spvak2k1(iv1)
      acd103(46)=spvak4k3(iv1)
      acd103(47)=spvak2k3(iv1)
      acd103(48)=spval5k1(iv1)
      acd103(49)=spval5k3(iv1)
      acd103(50)=abb103(37)
      acd103(51)=abb103(34)
      acd103(52)=abb103(22)
      acd103(53)=abb103(20)
      acd103(54)=abb103(21)
      acd103(55)=abb103(39)
      acd103(56)=spvak2k4(iv2)
      acd103(57)=abb103(9)
      acd103(58)=spvak2k7(iv2)
      acd103(59)=abb103(43)
      acd103(60)=spvak3k1(iv2)
      acd103(61)=spval5k4(iv2)
      acd103(62)=abb103(41)
      acd103(63)=spval5k7(iv2)
      acd103(64)=abb103(40)
      acd103(65)=spvak7k1(iv2)
      acd103(66)=abb103(35)
      acd103(67)=spvak2k4(iv1)
      acd103(68)=spvak2k7(iv1)
      acd103(69)=spvak3k1(iv1)
      acd103(70)=spval5k4(iv1)
      acd103(71)=spval5k7(iv1)
      acd103(72)=spvak7k1(iv1)
      acd103(73)=acd103(37)*acd103(36)
      acd103(74)=acd103(33)*acd103(35)
      acd103(73)=acd103(73)+acd103(74)
      acd103(74)=-acd103(43)*acd103(73)
      acd103(75)=acd103(66)*acd103(65)
      acd103(76)=acd103(64)*acd103(63)
      acd103(77)=acd103(62)*acd103(61)
      acd103(78)=acd103(59)*acd103(58)
      acd103(79)=acd103(57)*acd103(56)
      acd103(80)=acd103(41)*acd103(55)
      acd103(81)=acd103(38)*acd103(54)
      acd103(82)=acd103(20)*acd103(53)
      acd103(83)=acd103(18)*acd103(52)
      acd103(84)=acd103(16)*acd103(51)
      acd103(85)=acd103(14)*acd103(50)
      acd103(86)=acd103(37)*acd103(2)
      acd103(87)=-acd103(40)*acd103(86)
      acd103(88)=acd103(33)*acd103(2)
      acd103(89)=-acd103(31)*acd103(88)
      acd103(90)=acd103(15)*acd103(60)
      acd103(74)=acd103(74)+acd103(90)+acd103(89)+acd103(87)+acd103(85)+acd103(&
      &84)+acd103(83)+acd103(82)+acd103(81)+acd103(80)+acd103(79)+acd103(78)+ac&
      &d103(77)+acd103(75)+acd103(76)
      acd103(74)=acd103(46)*acd103(74)
      acd103(73)=-acd103(29)*acd103(73)
      acd103(75)=acd103(66)*acd103(72)
      acd103(76)=acd103(64)*acd103(71)
      acd103(77)=acd103(62)*acd103(70)
      acd103(78)=acd103(59)*acd103(68)
      acd103(79)=acd103(57)*acd103(67)
      acd103(80)=acd103(49)*acd103(55)
      acd103(81)=acd103(47)*acd103(54)
      acd103(82)=acd103(26)*acd103(53)
      acd103(83)=acd103(25)*acd103(52)
      acd103(84)=acd103(24)*acd103(51)
      acd103(85)=acd103(23)*acd103(50)
      acd103(86)=-acd103(48)*acd103(86)
      acd103(87)=-acd103(45)*acd103(88)
      acd103(88)=acd103(15)*acd103(69)
      acd103(73)=acd103(73)+acd103(88)+acd103(87)+acd103(86)+acd103(85)+acd103(&
      &84)+acd103(83)+acd103(82)+acd103(81)+acd103(80)+acd103(79)+acd103(78)+ac&
      &d103(77)+acd103(75)+acd103(76)
      acd103(73)=acd103(34)*acd103(73)
      acd103(75)=-acd103(11)*acd103(10)
      acd103(76)=-acd103(9)*acd103(8)
      acd103(77)=-acd103(7)*acd103(6)
      acd103(78)=-acd103(5)*acd103(4)
      acd103(79)=-acd103(2)*acd103(3)
      acd103(75)=acd103(79)+acd103(78)+acd103(77)+acd103(76)+acd103(12)+acd103(&
      &75)
      acd103(75)=acd103(1)*acd103(75)
      acd103(76)=acd103(42)*acd103(49)
      acd103(77)=acd103(39)*acd103(47)
      acd103(78)=2.0_ki*acd103(44)
      acd103(79)=-acd103(3)*acd103(78)
      acd103(80)=acd103(37)*acd103(32)
      acd103(81)=-acd103(48)*acd103(80)
      acd103(82)=acd103(33)*acd103(32)
      acd103(83)=-acd103(45)*acd103(82)
      acd103(76)=acd103(83)+acd103(81)+acd103(79)+acd103(76)+acd103(77)
      acd103(76)=acd103(43)*acd103(76)
      acd103(77)=acd103(41)*acd103(42)
      acd103(79)=acd103(38)*acd103(39)
      acd103(81)=2.0_ki*acd103(30)
      acd103(83)=-acd103(3)*acd103(81)
      acd103(80)=-acd103(40)*acd103(80)
      acd103(82)=-acd103(31)*acd103(82)
      acd103(77)=acd103(82)+acd103(80)+acd103(83)+acd103(77)+acd103(79)
      acd103(77)=acd103(29)*acd103(77)
      acd103(79)=-acd103(20)*acd103(11)
      acd103(80)=-acd103(18)*acd103(9)
      acd103(82)=-acd103(16)*acd103(7)
      acd103(83)=-acd103(14)*acd103(5)
      acd103(79)=acd103(83)+acd103(82)+acd103(79)+acd103(80)
      acd103(78)=acd103(79)*acd103(78)
      acd103(79)=-acd103(26)*acd103(11)
      acd103(80)=-acd103(25)*acd103(9)
      acd103(82)=-acd103(24)*acd103(7)
      acd103(83)=-acd103(23)*acd103(5)
      acd103(79)=acd103(83)+acd103(82)+acd103(79)+acd103(80)
      acd103(79)=acd103(79)*acd103(81)
      acd103(80)=-acd103(21)*acd103(26)
      acd103(81)=-acd103(19)*acd103(25)
      acd103(82)=acd103(17)*acd103(24)
      acd103(80)=acd103(82)+acd103(81)+acd103(80)
      acd103(81)=acd103(22)+acd103(28)
      acd103(80)=acd103(81)*acd103(80)
      acd103(82)=acd103(20)*acd103(21)
      acd103(83)=acd103(18)*acd103(19)
      acd103(84)=acd103(16)*acd103(17)
      acd103(82)=-acd103(84)+acd103(82)+acd103(83)
      acd103(83)=acd103(13)+acd103(27)
      acd103(82)=-acd103(82)*acd103(83)
      acd103(81)=-acd103(23)*acd103(81)
      acd103(83)=-acd103(14)*acd103(83)
      acd103(81)=acd103(83)+acd103(81)
      acd103(81)=acd103(15)*acd103(81)
      brack=acd103(73)+acd103(74)+2.0_ki*acd103(75)+acd103(76)+acd103(77)+acd10&
      &3(78)+acd103(79)+acd103(80)+acd103(81)+acd103(82)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd103h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd103
      complex(ki) :: brack
      acd103(1)=d(iv1,iv2)
      acd103(2)=e7(iv3)
      acd103(3)=abb103(18)
      acd103(4)=spvak4k1(iv3)
      acd103(5)=abb103(15)
      acd103(6)=spvae7k1(iv3)
      acd103(7)=abb103(17)
      acd103(8)=spvak2e7(iv3)
      acd103(9)=abb103(25)
      acd103(10)=spval5e7(iv3)
      acd103(11)=abb103(23)
      acd103(12)=d(iv1,iv3)
      acd103(13)=e7(iv2)
      acd103(14)=spvak4k1(iv2)
      acd103(15)=spvae7k1(iv2)
      acd103(16)=spvak2e7(iv2)
      acd103(17)=spval5e7(iv2)
      acd103(18)=d(iv2,iv3)
      acd103(19)=e7(iv1)
      acd103(20)=spvak4k1(iv1)
      acd103(21)=spvae7k1(iv1)
      acd103(22)=spvak2e7(iv1)
      acd103(23)=spval5e7(iv1)
      acd103(24)=spvak2k1(iv2)
      acd103(25)=spvak4k3(iv3)
      acd103(26)=abb103(8)
      acd103(27)=spvak2k1(iv3)
      acd103(28)=spvak4k3(iv2)
      acd103(29)=spval5k1(iv3)
      acd103(30)=abb103(7)
      acd103(31)=spval5k1(iv2)
      acd103(32)=spvak2k1(iv1)
      acd103(33)=spvak4k3(iv1)
      acd103(34)=spval5k1(iv1)
      acd103(35)=acd103(25)*acd103(19)
      acd103(36)=acd103(33)*acd103(2)
      acd103(35)=acd103(35)+acd103(36)
      acd103(36)=acd103(24)*acd103(35)
      acd103(37)=acd103(28)*acd103(19)
      acd103(38)=acd103(33)*acd103(13)
      acd103(37)=acd103(37)+acd103(38)
      acd103(38)=acd103(27)*acd103(37)
      acd103(39)=acd103(25)*acd103(13)
      acd103(40)=acd103(28)*acd103(2)
      acd103(39)=acd103(39)+acd103(40)
      acd103(40)=acd103(32)*acd103(39)
      acd103(36)=acd103(40)+acd103(38)+acd103(36)
      acd103(36)=acd103(26)*acd103(36)
      acd103(37)=acd103(29)*acd103(37)
      acd103(35)=acd103(31)*acd103(35)
      acd103(38)=acd103(34)*acd103(39)
      acd103(35)=acd103(38)+acd103(35)+acd103(37)
      acd103(35)=acd103(30)*acd103(35)
      acd103(37)=acd103(20)*acd103(5)
      acd103(38)=acd103(21)*acd103(7)
      acd103(39)=acd103(22)*acd103(9)
      acd103(40)=acd103(23)*acd103(11)
      acd103(37)=acd103(40)+acd103(39)+acd103(38)+acd103(37)
      acd103(38)=2.0_ki*acd103(18)
      acd103(37)=acd103(38)*acd103(37)
      acd103(38)=acd103(14)*acd103(5)
      acd103(39)=acd103(15)*acd103(7)
      acd103(40)=acd103(16)*acd103(9)
      acd103(41)=acd103(17)*acd103(11)
      acd103(38)=acd103(41)+acd103(40)+acd103(39)+acd103(38)
      acd103(39)=2.0_ki*acd103(12)
      acd103(38)=acd103(39)*acd103(38)
      acd103(39)=acd103(4)*acd103(5)
      acd103(40)=acd103(6)*acd103(7)
      acd103(41)=acd103(8)*acd103(9)
      acd103(42)=acd103(10)*acd103(11)
      acd103(39)=acd103(42)+acd103(41)+acd103(40)+acd103(39)
      acd103(40)=2.0_ki*acd103(1)
      acd103(39)=acd103(40)*acd103(39)
      acd103(40)=acd103(2)*acd103(1)
      acd103(41)=acd103(13)*acd103(12)
      acd103(42)=acd103(19)*acd103(18)
      acd103(40)=acd103(42)+acd103(40)+acd103(41)
      acd103(40)=acd103(3)*acd103(40)
      brack=acd103(35)+acd103(36)+acd103(37)+acd103(38)+acd103(39)+2.0_ki*acd10&
      &3(40)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd103h2
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
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group15
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
end module     p5_usbar_epnebbbarg_d103h2l1d
