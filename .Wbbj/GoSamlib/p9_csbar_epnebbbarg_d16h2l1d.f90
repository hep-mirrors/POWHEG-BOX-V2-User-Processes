module     p9_csbar_epnebbbarg_d16h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d16h2l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d16
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd16h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd16
      complex(ki) :: brack
      acd16(1)=dotproduct(k1,qshift)
      acd16(2)=dotproduct(k2,qshift)
      acd16(3)=dotproduct(qshift,spvak4k3)
      acd16(4)=abb16(22)
      acd16(5)=dotproduct(k3,qshift)
      acd16(6)=abb16(68)
      acd16(7)=dotproduct(k4,qshift)
      acd16(8)=dotproduct(qshift,qshift)
      acd16(9)=abb16(35)
      acd16(10)=dotproduct(qshift,spval5l6)
      acd16(11)=abb16(23)
      acd16(12)=abb16(11)
      acd16(13)=abb16(39)
      acd16(14)=abb16(69)
      acd16(15)=dotproduct(k7,qshift)
      acd16(16)=dotproduct(e7,qshift)
      acd16(17)=abb16(20)
      acd16(18)=abb16(45)
      acd16(19)=dotproduct(qshift,spvak2k1)
      acd16(20)=abb16(31)
      acd16(21)=dotproduct(qshift,spvak2k7)
      acd16(22)=abb16(38)
      acd16(23)=dotproduct(qshift,spvae7k1)
      acd16(24)=abb16(10)
      acd16(25)=abb16(13)
      acd16(26)=dotproduct(qshift,spvak2k3)
      acd16(27)=abb16(36)
      acd16(28)=abb16(34)
      acd16(29)=abb16(66)
      acd16(30)=abb16(29)
      acd16(31)=abb16(21)
      acd16(32)=abb16(61)
      acd16(33)=dotproduct(l5,qshift)
      acd16(34)=abb16(16)
      acd16(35)=abb16(43)
      acd16(36)=dotproduct(l6,qshift)
      acd16(37)=abb16(64)
      acd16(38)=abb16(19)
      acd16(39)=abb16(9)
      acd16(40)=abb16(18)
      acd16(41)=abb16(28)
      acd16(42)=abb16(27)
      acd16(43)=abb16(15)
      acd16(44)=abb16(46)
      acd16(45)=abb16(7)
      acd16(46)=abb16(40)
      acd16(47)=abb16(30)
      acd16(48)=abb16(17)
      acd16(49)=abb16(26)
      acd16(50)=abb16(32)
      acd16(51)=abb16(8)
      acd16(52)=abb16(12)
      acd16(53)=abb16(24)
      acd16(54)=abb16(25)
      acd16(55)=abb16(33)
      acd16(56)=abb16(14)
      acd16(57)=acd16(7)+acd16(5)
      acd16(58)=-acd16(6)*acd16(57)
      acd16(59)=acd16(2)*acd16(3)
      acd16(60)=acd16(4)*acd16(59)
      acd16(61)=-acd16(9)*acd16(8)
      acd16(62)=acd16(10)*acd16(3)
      acd16(63)=-acd16(11)*acd16(62)
      acd16(64)=-acd16(12)*acd16(3)
      acd16(58)=-acd16(13)+acd16(64)+acd16(63)+acd16(61)+acd16(58)+acd16(60)
      acd16(60)=acd16(15)-acd16(1)
      acd16(58)=acd16(60)*acd16(58)
      acd16(60)=-acd16(18)*acd16(2)
      acd16(61)=-acd16(37)*acd16(16)
      acd16(63)=-acd16(41)*acd16(3)
      acd16(64)=-acd16(42)*acd16(10)
      acd16(65)=-acd16(43)*acd16(23)
      acd16(60)=acd16(44)+acd16(65)+acd16(64)+acd16(63)+acd16(61)+acd16(60)
      acd16(60)=acd16(8)*acd16(60)
      acd16(61)=-acd16(14)*acd16(2)
      acd16(63)=acd16(29)*acd16(16)
      acd16(64)=acd16(30)*acd16(10)
      acd16(65)=-acd16(31)*acd16(23)
      acd16(61)=acd16(64)+acd16(61)-acd16(32)+acd16(65)+acd16(63)
      acd16(57)=acd16(57)*acd16(61)
      acd16(61)=acd16(39)*acd16(16)
      acd16(63)=acd16(49)*acd16(19)
      acd16(64)=acd16(50)*acd16(21)
      acd16(65)=acd16(51)*acd16(23)
      acd16(61)=-acd16(52)+acd16(65)+acd16(64)+acd16(63)+acd16(61)
      acd16(61)=acd16(3)*acd16(61)
      acd16(63)=-acd16(38)*acd16(16)
      acd16(64)=-acd16(45)*acd16(19)
      acd16(65)=-acd16(46)*acd16(21)
      acd16(66)=-acd16(47)*acd16(23)
      acd16(63)=acd16(48)+acd16(66)+acd16(65)+acd16(64)+acd16(63)
      acd16(62)=acd16(62)*acd16(63)
      acd16(63)=-acd16(17)*acd16(16)
      acd16(64)=-acd16(20)*acd16(19)
      acd16(65)=-acd16(22)*acd16(21)
      acd16(66)=-acd16(24)*acd16(23)
      acd16(63)=acd16(25)+acd16(66)+acd16(65)+acd16(64)+acd16(63)
      acd16(59)=acd16(59)*acd16(63)
      acd16(63)=-acd16(36)-acd16(33)
      acd16(64)=acd16(34)*acd16(3)
      acd16(64)=acd16(64)-acd16(35)
      acd16(63)=acd16(64)*acd16(63)
      acd16(64)=acd16(27)*acd16(2)
      acd16(65)=acd16(53)*acd16(10)
      acd16(64)=-acd16(55)+acd16(65)+acd16(64)
      acd16(64)=acd16(26)*acd16(64)
      acd16(65)=-acd16(28)*acd16(2)
      acd16(66)=-acd16(40)*acd16(16)
      acd16(67)=-acd16(54)*acd16(10)
      acd16(68)=-acd16(56)*acd16(23)
      brack=acd16(57)+acd16(58)+acd16(59)+acd16(60)+acd16(61)+acd16(62)+acd16(6&
      &3)+acd16(64)+acd16(65)+acd16(66)+acd16(67)+acd16(68)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd16h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(89) :: acd16
      complex(ki) :: brack
      acd16(1)=k1(iv1)
      acd16(2)=dotproduct(k2,qshift)
      acd16(3)=dotproduct(qshift,spvak4k3)
      acd16(4)=abb16(22)
      acd16(5)=dotproduct(k3,qshift)
      acd16(6)=abb16(68)
      acd16(7)=dotproduct(k4,qshift)
      acd16(8)=dotproduct(qshift,qshift)
      acd16(9)=abb16(35)
      acd16(10)=dotproduct(qshift,spval5l6)
      acd16(11)=abb16(23)
      acd16(12)=abb16(11)
      acd16(13)=abb16(39)
      acd16(14)=k2(iv1)
      acd16(15)=dotproduct(k1,qshift)
      acd16(16)=abb16(69)
      acd16(17)=dotproduct(k7,qshift)
      acd16(18)=dotproduct(e7,qshift)
      acd16(19)=abb16(20)
      acd16(20)=abb16(45)
      acd16(21)=dotproduct(qshift,spvak2k1)
      acd16(22)=abb16(31)
      acd16(23)=dotproduct(qshift,spvak2k7)
      acd16(24)=abb16(38)
      acd16(25)=dotproduct(qshift,spvae7k1)
      acd16(26)=abb16(10)
      acd16(27)=abb16(13)
      acd16(28)=dotproduct(qshift,spvak2k3)
      acd16(29)=abb16(36)
      acd16(30)=abb16(34)
      acd16(31)=k3(iv1)
      acd16(32)=abb16(66)
      acd16(33)=abb16(29)
      acd16(34)=abb16(21)
      acd16(35)=abb16(61)
      acd16(36)=k4(iv1)
      acd16(37)=l5(iv1)
      acd16(38)=abb16(16)
      acd16(39)=abb16(43)
      acd16(40)=l6(iv1)
      acd16(41)=k7(iv1)
      acd16(42)=e7(iv1)
      acd16(43)=abb16(64)
      acd16(44)=abb16(19)
      acd16(45)=abb16(9)
      acd16(46)=abb16(18)
      acd16(47)=qshift(iv1)
      acd16(48)=abb16(28)
      acd16(49)=abb16(27)
      acd16(50)=abb16(15)
      acd16(51)=abb16(46)
      acd16(52)=spvak4k3(iv1)
      acd16(53)=dotproduct(l5,qshift)
      acd16(54)=dotproduct(l6,qshift)
      acd16(55)=abb16(7)
      acd16(56)=abb16(40)
      acd16(57)=abb16(30)
      acd16(58)=abb16(17)
      acd16(59)=abb16(26)
      acd16(60)=abb16(32)
      acd16(61)=abb16(8)
      acd16(62)=abb16(12)
      acd16(63)=spval5l6(iv1)
      acd16(64)=abb16(24)
      acd16(65)=abb16(25)
      acd16(66)=spvak2k1(iv1)
      acd16(67)=spvak2k3(iv1)
      acd16(68)=abb16(33)
      acd16(69)=spvak2k7(iv1)
      acd16(70)=spvae7k1(iv1)
      acd16(71)=abb16(14)
      acd16(72)=acd16(15)-acd16(17)
      acd16(73)=-acd16(11)*acd16(72)
      acd16(74)=acd16(23)*acd16(56)
      acd16(75)=acd16(21)*acd16(55)
      acd16(76)=acd16(25)*acd16(57)
      acd16(77)=acd16(18)*acd16(44)
      acd16(73)=-acd16(58)+acd16(73)+acd16(75)+acd16(74)+acd16(76)+acd16(77)
      acd16(74)=-acd16(63)*acd16(73)
      acd16(75)=-acd16(4)*acd16(72)
      acd16(76)=acd16(23)*acd16(24)
      acd16(77)=acd16(21)*acd16(22)
      acd16(78)=acd16(25)*acd16(26)
      acd16(79)=acd16(18)*acd16(19)
      acd16(75)=-acd16(75)+acd16(78)+acd16(79)-acd16(27)+acd16(76)+acd16(77)
      acd16(76)=-acd16(14)*acd16(75)
      acd16(77)=acd16(1)-acd16(41)
      acd16(78)=acd16(11)*acd16(77)
      acd16(79)=-acd16(56)*acd16(69)
      acd16(80)=-acd16(55)*acd16(66)
      acd16(81)=-acd16(70)*acd16(57)
      acd16(82)=-acd16(42)*acd16(44)
      acd16(78)=acd16(82)+acd16(81)+acd16(79)+acd16(80)+acd16(78)
      acd16(78)=acd16(10)*acd16(78)
      acd16(79)=-acd16(4)*acd16(77)
      acd16(80)=-acd16(24)*acd16(69)
      acd16(81)=-acd16(22)*acd16(66)
      acd16(82)=-acd16(70)*acd16(26)
      acd16(83)=-acd16(42)*acd16(19)
      acd16(79)=acd16(83)+acd16(82)+acd16(80)+acd16(81)+acd16(79)
      acd16(79)=acd16(2)*acd16(79)
      acd16(80)=acd16(12)*acd16(77)
      acd16(81)=acd16(69)*acd16(60)
      acd16(82)=acd16(66)*acd16(59)
      acd16(83)=acd16(37)+acd16(40)
      acd16(84)=-acd16(38)*acd16(83)
      acd16(85)=acd16(70)*acd16(61)
      acd16(86)=acd16(42)*acd16(45)
      acd16(87)=2.0_ki*acd16(47)
      acd16(88)=-acd16(48)*acd16(87)
      acd16(74)=acd16(79)+acd16(78)+acd16(76)+acd16(74)+acd16(88)+acd16(86)+acd&
      &16(85)+acd16(84)+acd16(81)+acd16(82)+acd16(80)
      acd16(74)=acd16(3)*acd16(74)
      acd16(73)=-acd16(10)*acd16(73)
      acd16(75)=-acd16(2)*acd16(75)
      acd16(76)=acd16(12)*acd16(72)
      acd16(78)=-acd16(54)-acd16(53)
      acd16(78)=acd16(38)*acd16(78)
      acd16(79)=acd16(23)*acd16(60)
      acd16(80)=acd16(21)*acd16(59)
      acd16(81)=-acd16(8)*acd16(48)
      acd16(82)=acd16(25)*acd16(61)
      acd16(84)=acd16(18)*acd16(45)
      acd16(73)=acd16(75)+acd16(73)+acd16(84)+acd16(82)+acd16(81)+acd16(80)+acd&
      &16(79)-acd16(62)+acd16(78)+acd16(76)
      acd16(73)=acd16(52)*acd16(73)
      acd16(75)=-acd16(70)*acd16(50)
      acd16(76)=-acd16(42)*acd16(43)
      acd16(78)=-acd16(41)*acd16(9)
      acd16(75)=acd16(78)+acd16(75)+acd16(76)
      acd16(75)=acd16(8)*acd16(75)
      acd16(76)=acd16(31)+acd16(36)
      acd16(78)=acd16(76)*acd16(72)
      acd16(79)=acd16(5)+acd16(7)
      acd16(77)=acd16(79)*acd16(77)
      acd16(77)=acd16(77)+acd16(78)
      acd16(77)=acd16(6)*acd16(77)
      acd16(78)=acd16(33)*acd16(79)
      acd16(80)=acd16(28)*acd16(64)
      acd16(81)=-acd16(8)*acd16(49)
      acd16(78)=acd16(81)-acd16(65)+acd16(80)+acd16(78)
      acd16(78)=acd16(63)*acd16(78)
      acd16(80)=-acd16(16)*acd16(79)
      acd16(81)=acd16(28)*acd16(29)
      acd16(82)=-acd16(8)*acd16(20)
      acd16(80)=acd16(82)-acd16(30)+acd16(81)+acd16(80)
      acd16(80)=acd16(14)*acd16(80)
      acd16(81)=acd16(33)*acd16(76)
      acd16(82)=acd16(67)*acd16(64)
      acd16(84)=-acd16(49)*acd16(87)
      acd16(81)=acd16(84)+acd16(82)+acd16(81)
      acd16(81)=acd16(10)*acd16(81)
      acd16(82)=-acd16(16)*acd16(76)
      acd16(84)=acd16(67)*acd16(29)
      acd16(85)=-acd16(20)*acd16(87)
      acd16(82)=acd16(85)+acd16(84)+acd16(82)
      acd16(82)=acd16(2)*acd16(82)
      acd16(72)=acd16(9)*acd16(72)
      acd16(72)=acd16(51)+acd16(72)
      acd16(72)=acd16(87)*acd16(72)
      acd16(84)=-acd16(34)*acd16(76)
      acd16(85)=-acd16(50)*acd16(87)
      acd16(84)=acd16(85)+acd16(84)
      acd16(84)=acd16(25)*acd16(84)
      acd16(85)=acd16(32)*acd16(76)
      acd16(86)=-acd16(43)*acd16(87)
      acd16(85)=acd16(86)+acd16(85)
      acd16(85)=acd16(18)*acd16(85)
      acd16(83)=acd16(39)*acd16(83)
      acd16(76)=-acd16(35)*acd16(76)
      acd16(86)=-acd16(67)*acd16(68)
      acd16(87)=-acd16(34)*acd16(79)
      acd16(87)=-acd16(71)+acd16(87)
      acd16(87)=acd16(70)*acd16(87)
      acd16(79)=acd16(32)*acd16(79)
      acd16(79)=-acd16(46)+acd16(79)
      acd16(79)=acd16(42)*acd16(79)
      acd16(88)=-acd16(41)*acd16(13)
      acd16(89)=acd16(8)*acd16(9)
      acd16(89)=acd16(13)+acd16(89)
      acd16(89)=acd16(1)*acd16(89)
      brack=acd16(72)+acd16(73)+acd16(74)+acd16(75)+acd16(76)+acd16(77)+acd16(7&
      &8)+acd16(79)+acd16(80)+acd16(81)+acd16(82)+acd16(83)+acd16(84)+acd16(85)&
      &+acd16(86)+acd16(87)+acd16(88)+acd16(89)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd16h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(92) :: acd16
      complex(ki) :: brack
      acd16(1)=d(iv1,iv2)
      acd16(2)=dotproduct(k1,qshift)
      acd16(3)=abb16(35)
      acd16(4)=dotproduct(k2,qshift)
      acd16(5)=abb16(45)
      acd16(6)=dotproduct(k7,qshift)
      acd16(7)=dotproduct(e7,qshift)
      acd16(8)=abb16(64)
      acd16(9)=dotproduct(qshift,spvak4k3)
      acd16(10)=abb16(28)
      acd16(11)=dotproduct(qshift,spval5l6)
      acd16(12)=abb16(27)
      acd16(13)=dotproduct(qshift,spvae7k1)
      acd16(14)=abb16(15)
      acd16(15)=abb16(46)
      acd16(16)=k1(iv1)
      acd16(17)=k2(iv2)
      acd16(18)=abb16(22)
      acd16(19)=k3(iv2)
      acd16(20)=abb16(68)
      acd16(21)=k4(iv2)
      acd16(22)=qshift(iv2)
      acd16(23)=spvak4k3(iv2)
      acd16(24)=abb16(23)
      acd16(25)=abb16(11)
      acd16(26)=spval5l6(iv2)
      acd16(27)=k1(iv2)
      acd16(28)=k2(iv1)
      acd16(29)=k3(iv1)
      acd16(30)=k4(iv1)
      acd16(31)=qshift(iv1)
      acd16(32)=spvak4k3(iv1)
      acd16(33)=spval5l6(iv1)
      acd16(34)=abb16(69)
      acd16(35)=k7(iv2)
      acd16(36)=e7(iv2)
      acd16(37)=abb16(20)
      acd16(38)=abb16(10)
      acd16(39)=dotproduct(qshift,spvak2k1)
      acd16(40)=abb16(31)
      acd16(41)=dotproduct(qshift,spvak2k7)
      acd16(42)=abb16(38)
      acd16(43)=abb16(13)
      acd16(44)=spvae7k1(iv2)
      acd16(45)=spvak2k1(iv2)
      acd16(46)=spvak2k3(iv2)
      acd16(47)=abb16(36)
      acd16(48)=spvak2k7(iv2)
      acd16(49)=k7(iv1)
      acd16(50)=e7(iv1)
      acd16(51)=spvae7k1(iv1)
      acd16(52)=spvak2k1(iv1)
      acd16(53)=spvak2k3(iv1)
      acd16(54)=spvak2k7(iv1)
      acd16(55)=abb16(66)
      acd16(56)=abb16(29)
      acd16(57)=abb16(21)
      acd16(58)=l5(iv1)
      acd16(59)=abb16(16)
      acd16(60)=l5(iv2)
      acd16(61)=l6(iv1)
      acd16(62)=l6(iv2)
      acd16(63)=abb16(19)
      acd16(64)=abb16(9)
      acd16(65)=abb16(30)
      acd16(66)=abb16(7)
      acd16(67)=abb16(40)
      acd16(68)=abb16(17)
      acd16(69)=abb16(8)
      acd16(70)=abb16(26)
      acd16(71)=abb16(32)
      acd16(72)=abb16(24)
      acd16(73)=acd16(67)*acd16(48)
      acd16(74)=acd16(66)*acd16(45)
      acd16(75)=acd16(44)*acd16(65)
      acd16(76)=acd16(36)*acd16(63)
      acd16(77)=acd16(27)-acd16(35)
      acd16(78)=acd16(77)*acd16(24)
      acd16(73)=-acd16(78)+acd16(73)+acd16(74)+acd16(75)+acd16(76)
      acd16(74)=-acd16(11)*acd16(73)
      acd16(75)=acd16(42)*acd16(48)
      acd16(76)=acd16(40)*acd16(45)
      acd16(78)=acd16(44)*acd16(38)
      acd16(79)=acd16(36)*acd16(37)
      acd16(80)=acd16(77)*acd16(18)
      acd16(75)=acd16(80)+acd16(75)+acd16(76)+acd16(78)+acd16(79)
      acd16(76)=-acd16(4)*acd16(75)
      acd16(78)=acd16(67)*acd16(41)
      acd16(79)=acd16(66)*acd16(39)
      acd16(80)=acd16(65)*acd16(13)
      acd16(81)=acd16(63)*acd16(7)
      acd16(82)=acd16(2)-acd16(6)
      acd16(83)=acd16(82)*acd16(24)
      acd16(78)=-acd16(68)+acd16(80)+acd16(78)+acd16(79)+acd16(81)-acd16(83)
      acd16(79)=-acd16(26)*acd16(78)
      acd16(80)=acd16(42)*acd16(41)
      acd16(81)=acd16(40)*acd16(39)
      acd16(83)=acd16(38)*acd16(13)
      acd16(84)=acd16(37)*acd16(7)
      acd16(85)=acd16(82)*acd16(18)
      acd16(80)=acd16(80)+acd16(81)+acd16(83)+acd16(84)+acd16(85)-acd16(43)
      acd16(81)=-acd16(17)*acd16(80)
      acd16(83)=acd16(25)*acd16(77)
      acd16(84)=-acd16(62)-acd16(60)
      acd16(84)=acd16(59)*acd16(84)
      acd16(85)=acd16(48)*acd16(71)
      acd16(86)=acd16(45)*acd16(70)
      acd16(87)=2.0_ki*acd16(22)
      acd16(88)=-acd16(10)*acd16(87)
      acd16(89)=acd16(44)*acd16(69)
      acd16(90)=acd16(36)*acd16(64)
      acd16(74)=acd16(81)+acd16(79)+acd16(76)+acd16(74)+acd16(90)+acd16(89)+acd&
      &16(88)+acd16(86)+acd16(84)+acd16(85)+acd16(83)
      acd16(74)=acd16(32)*acd16(74)
      acd16(76)=acd16(67)*acd16(54)
      acd16(79)=acd16(66)*acd16(52)
      acd16(81)=acd16(51)*acd16(65)
      acd16(83)=acd16(50)*acd16(63)
      acd16(84)=acd16(16)-acd16(49)
      acd16(85)=acd16(84)*acd16(24)
      acd16(76)=acd16(81)+acd16(76)+acd16(79)+acd16(83)-acd16(85)
      acd16(79)=-acd16(11)*acd16(76)
      acd16(81)=acd16(42)*acd16(54)
      acd16(83)=acd16(40)*acd16(52)
      acd16(85)=acd16(51)*acd16(38)
      acd16(86)=acd16(50)*acd16(37)
      acd16(88)=acd16(84)*acd16(18)
      acd16(81)=acd16(88)+acd16(81)+acd16(83)+acd16(85)+acd16(86)
      acd16(83)=-acd16(4)*acd16(81)
      acd16(78)=-acd16(33)*acd16(78)
      acd16(80)=-acd16(28)*acd16(80)
      acd16(84)=acd16(25)*acd16(84)
      acd16(85)=-acd16(61)-acd16(58)
      acd16(85)=acd16(59)*acd16(85)
      acd16(86)=acd16(54)*acd16(71)
      acd16(88)=acd16(52)*acd16(70)
      acd16(89)=2.0_ki*acd16(31)
      acd16(90)=-acd16(10)*acd16(89)
      acd16(91)=acd16(51)*acd16(69)
      acd16(92)=acd16(50)*acd16(64)
      acd16(78)=acd16(80)+acd16(78)+acd16(83)+acd16(79)+acd16(92)+acd16(91)+acd&
      &16(90)+acd16(88)+acd16(85)+acd16(86)+acd16(84)
      acd16(78)=acd16(23)*acd16(78)
      acd16(73)=-acd16(33)*acd16(73)
      acd16(75)=-acd16(28)*acd16(75)
      acd16(76)=-acd16(26)*acd16(76)
      acd16(79)=-acd16(17)*acd16(81)
      acd16(80)=2.0_ki*acd16(1)
      acd16(81)=-acd16(10)*acd16(80)
      acd16(73)=acd16(79)+acd16(76)+acd16(75)+acd16(81)+acd16(73)
      acd16(73)=acd16(9)*acd16(73)
      acd16(75)=-acd16(13)*acd16(14)
      acd16(76)=-acd16(7)*acd16(8)
      acd16(79)=acd16(3)*acd16(82)
      acd16(81)=-acd16(11)*acd16(12)
      acd16(82)=-acd16(4)*acd16(5)
      acd16(75)=acd16(82)+acd16(81)+acd16(79)+acd16(76)+acd16(15)+acd16(75)
      acd16(75)=acd16(80)*acd16(75)
      acd16(76)=acd16(19)+acd16(21)
      acd16(79)=acd16(56)*acd16(76)
      acd16(80)=acd16(46)*acd16(72)
      acd16(81)=-acd16(12)*acd16(87)
      acd16(79)=acd16(81)+acd16(80)+acd16(79)
      acd16(79)=acd16(33)*acd16(79)
      acd16(80)=-acd16(34)*acd16(76)
      acd16(81)=acd16(46)*acd16(47)
      acd16(82)=-acd16(5)*acd16(87)
      acd16(80)=acd16(82)+acd16(81)+acd16(80)
      acd16(80)=acd16(28)*acd16(80)
      acd16(81)=acd16(29)+acd16(30)
      acd16(82)=acd16(56)*acd16(81)
      acd16(83)=acd16(53)*acd16(72)
      acd16(84)=-acd16(12)*acd16(89)
      acd16(82)=acd16(84)+acd16(83)+acd16(82)
      acd16(82)=acd16(26)*acd16(82)
      acd16(83)=-acd16(34)*acd16(81)
      acd16(84)=acd16(47)*acd16(53)
      acd16(85)=-acd16(5)*acd16(89)
      acd16(83)=acd16(85)+acd16(84)+acd16(83)
      acd16(83)=acd16(17)*acd16(83)
      acd16(84)=acd16(89)*acd16(77)
      acd16(85)=-acd16(49)*acd16(87)
      acd16(84)=acd16(85)+acd16(84)
      acd16(84)=acd16(3)*acd16(84)
      acd16(85)=-acd16(57)*acd16(76)
      acd16(86)=-acd16(14)*acd16(87)
      acd16(85)=acd16(86)+acd16(85)
      acd16(85)=acd16(51)*acd16(85)
      acd16(86)=acd16(55)*acd16(76)
      acd16(88)=-acd16(8)*acd16(87)
      acd16(86)=acd16(88)+acd16(86)
      acd16(86)=acd16(50)*acd16(86)
      acd16(88)=-acd16(57)*acd16(81)
      acd16(90)=-acd16(14)*acd16(89)
      acd16(88)=acd16(90)+acd16(88)
      acd16(88)=acd16(44)*acd16(88)
      acd16(90)=acd16(55)*acd16(81)
      acd16(89)=-acd16(8)*acd16(89)
      acd16(89)=acd16(89)+acd16(90)
      acd16(89)=acd16(36)*acd16(89)
      acd16(77)=acd16(81)*acd16(77)
      acd16(81)=-acd16(49)*acd16(76)
      acd16(77)=acd16(81)+acd16(77)
      acd16(77)=acd16(20)*acd16(77)
      acd16(81)=acd16(3)*acd16(87)
      acd16(76)=acd16(20)*acd16(76)
      acd16(76)=acd16(81)+acd16(76)
      acd16(76)=acd16(16)*acd16(76)
      brack=acd16(73)+acd16(74)+acd16(75)+acd16(76)+acd16(77)+acd16(78)+acd16(7&
      &9)+acd16(80)+acd16(82)+acd16(83)+acd16(84)+acd16(85)+acd16(86)+acd16(88)&
      &+acd16(89)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd16h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd16
      complex(ki) :: brack
      acd16(1)=d(iv1,iv2)
      acd16(2)=k1(iv3)
      acd16(3)=abb16(35)
      acd16(4)=k2(iv3)
      acd16(5)=abb16(45)
      acd16(6)=k7(iv3)
      acd16(7)=e7(iv3)
      acd16(8)=abb16(64)
      acd16(9)=spvak4k3(iv3)
      acd16(10)=abb16(28)
      acd16(11)=spval5l6(iv3)
      acd16(12)=abb16(27)
      acd16(13)=spvae7k1(iv3)
      acd16(14)=abb16(15)
      acd16(15)=d(iv1,iv3)
      acd16(16)=k1(iv2)
      acd16(17)=k2(iv2)
      acd16(18)=k7(iv2)
      acd16(19)=e7(iv2)
      acd16(20)=spvak4k3(iv2)
      acd16(21)=spval5l6(iv2)
      acd16(22)=spvae7k1(iv2)
      acd16(23)=d(iv2,iv3)
      acd16(24)=k1(iv1)
      acd16(25)=k2(iv1)
      acd16(26)=k7(iv1)
      acd16(27)=e7(iv1)
      acd16(28)=spvak4k3(iv1)
      acd16(29)=spval5l6(iv1)
      acd16(30)=spvae7k1(iv1)
      acd16(31)=abb16(22)
      acd16(32)=abb16(23)
      acd16(33)=abb16(20)
      acd16(34)=abb16(10)
      acd16(35)=spvak2k1(iv3)
      acd16(36)=abb16(31)
      acd16(37)=spvak2k7(iv3)
      acd16(38)=abb16(38)
      acd16(39)=spvak2k1(iv2)
      acd16(40)=spvak2k7(iv2)
      acd16(41)=spvak2k1(iv1)
      acd16(42)=spvak2k7(iv1)
      acd16(43)=abb16(19)
      acd16(44)=abb16(30)
      acd16(45)=abb16(7)
      acd16(46)=abb16(40)
      acd16(47)=acd16(46)*acd16(37)
      acd16(48)=acd16(45)*acd16(35)
      acd16(49)=acd16(44)*acd16(13)
      acd16(50)=acd16(43)*acd16(7)
      acd16(51)=acd16(2)-acd16(6)
      acd16(52)=acd16(51)*acd16(32)
      acd16(47)=-acd16(52)+acd16(47)+acd16(48)+acd16(49)+acd16(50)
      acd16(48)=-acd16(21)*acd16(47)
      acd16(49)=acd16(38)*acd16(37)
      acd16(50)=acd16(36)*acd16(35)
      acd16(52)=acd16(51)*acd16(31)
      acd16(53)=acd16(34)*acd16(13)
      acd16(54)=acd16(33)*acd16(7)
      acd16(49)=acd16(49)+acd16(53)+acd16(54)+acd16(50)+acd16(52)
      acd16(50)=-acd16(17)*acd16(49)
      acd16(52)=acd16(46)*acd16(40)
      acd16(53)=acd16(45)*acd16(39)
      acd16(54)=acd16(44)*acd16(22)
      acd16(55)=acd16(43)*acd16(19)
      acd16(56)=acd16(16)-acd16(18)
      acd16(57)=acd16(56)*acd16(32)
      acd16(52)=-acd16(57)+acd16(52)+acd16(53)+acd16(54)+acd16(55)
      acd16(53)=-acd16(11)*acd16(52)
      acd16(54)=acd16(38)*acd16(40)
      acd16(55)=acd16(36)*acd16(39)
      acd16(57)=acd16(56)*acd16(31)
      acd16(58)=acd16(34)*acd16(22)
      acd16(59)=acd16(33)*acd16(19)
      acd16(54)=acd16(54)+acd16(58)+acd16(59)+acd16(55)+acd16(57)
      acd16(55)=-acd16(4)*acd16(54)
      acd16(57)=2.0_ki*acd16(10)
      acd16(58)=-acd16(23)*acd16(57)
      acd16(48)=acd16(55)+acd16(53)+acd16(50)+acd16(58)+acd16(48)
      acd16(48)=acd16(28)*acd16(48)
      acd16(47)=-acd16(29)*acd16(47)
      acd16(49)=-acd16(25)*acd16(49)
      acd16(50)=acd16(46)*acd16(42)
      acd16(53)=acd16(45)*acd16(41)
      acd16(55)=acd16(44)*acd16(30)
      acd16(58)=acd16(43)*acd16(27)
      acd16(59)=acd16(24)-acd16(26)
      acd16(60)=acd16(59)*acd16(32)
      acd16(50)=-acd16(60)+acd16(50)+acd16(53)+acd16(55)+acd16(58)
      acd16(53)=-acd16(11)*acd16(50)
      acd16(55)=acd16(38)*acd16(42)
      acd16(58)=acd16(36)*acd16(41)
      acd16(60)=acd16(59)*acd16(31)
      acd16(61)=acd16(34)*acd16(30)
      acd16(62)=acd16(33)*acd16(27)
      acd16(55)=acd16(55)+acd16(61)+acd16(62)+acd16(58)+acd16(60)
      acd16(58)=-acd16(4)*acd16(55)
      acd16(60)=-acd16(15)*acd16(57)
      acd16(47)=acd16(58)+acd16(53)+acd16(49)+acd16(60)+acd16(47)
      acd16(47)=acd16(20)*acd16(47)
      acd16(49)=-acd16(29)*acd16(52)
      acd16(52)=-acd16(25)*acd16(54)
      acd16(50)=-acd16(21)*acd16(50)
      acd16(53)=-acd16(17)*acd16(55)
      acd16(54)=-acd16(1)*acd16(57)
      acd16(49)=acd16(53)+acd16(50)+acd16(52)+acd16(54)+acd16(49)
      acd16(49)=acd16(9)*acd16(49)
      acd16(50)=-acd16(30)*acd16(14)
      acd16(52)=-acd16(27)*acd16(8)
      acd16(53)=acd16(3)*acd16(59)
      acd16(54)=-acd16(29)*acd16(12)
      acd16(55)=-acd16(25)*acd16(5)
      acd16(50)=acd16(55)+acd16(54)+acd16(53)+acd16(50)+acd16(52)
      acd16(50)=acd16(23)*acd16(50)
      acd16(52)=-acd16(22)*acd16(14)
      acd16(53)=-acd16(19)*acd16(8)
      acd16(54)=acd16(3)*acd16(56)
      acd16(55)=-acd16(21)*acd16(12)
      acd16(56)=-acd16(17)*acd16(5)
      acd16(52)=acd16(56)+acd16(55)+acd16(54)+acd16(52)+acd16(53)
      acd16(52)=acd16(15)*acd16(52)
      acd16(53)=-acd16(13)*acd16(14)
      acd16(54)=-acd16(7)*acd16(8)
      acd16(51)=acd16(3)*acd16(51)
      acd16(55)=-acd16(11)*acd16(12)
      acd16(56)=-acd16(4)*acd16(5)
      acd16(51)=acd16(56)+acd16(55)+acd16(51)+acd16(53)+acd16(54)
      acd16(51)=acd16(1)*acd16(51)
      acd16(50)=acd16(51)+acd16(52)+acd16(50)
      brack=acd16(47)+acd16(48)+acd16(49)+2.0_ki*acd16(50)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd16h2
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d16:
   subroutine     reconstruct_d16(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_16:
      coeffs%coeffs_16%c0 = derivative(czip)
      coeffs%coeffs_16%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_16%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_16%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_16%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_16%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_16%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_16%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_16%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_16%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_16%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_16%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_16%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_16%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_16%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_16%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_16%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_16%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_16%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_16%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_16%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_16%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_16%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_16%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_16%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_16%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_16%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_16%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_16%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_16%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_16%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_16%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_16%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_16%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_16%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_16:
   end subroutine reconstruct_d16
!---#] subroutine reconstruct_d16:
end module     p9_csbar_epnebbbarg_d16h2l1d
