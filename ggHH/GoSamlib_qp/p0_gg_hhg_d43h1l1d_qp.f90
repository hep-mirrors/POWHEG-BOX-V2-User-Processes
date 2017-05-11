module p0_gg_hhg_d43h1l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d43h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   integer, private :: iv5
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d43
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd43
      complex(ki) :: brack
      acd43(1)=dotproduct(k1,qshift)
      acd43(2)=dotproduct(qshift,spvak2l4)
      acd43(3)=dotproduct(qshift,spvak2k5)
      acd43(4)=abb43(63)
      acd43(5)=abb43(52)
      acd43(6)=abb43(36)
      acd43(7)=dotproduct(k2,qshift)
      acd43(8)=abb43(62)
      acd43(9)=dotproduct(qshift,spvak2k1)
      acd43(10)=abb43(17)
      acd43(11)=dotproduct(qshift,spvak2l3)
      acd43(12)=abb43(66)
      acd43(13)=abb43(39)
      acd43(14)=abb43(23)
      acd43(15)=abb43(65)
      acd43(16)=abb43(25)
      acd43(17)=dotproduct(l3,qshift)
      acd43(18)=abb43(61)
      acd43(19)=abb43(19)
      acd43(20)=abb43(44)
      acd43(21)=dotproduct(l4,qshift)
      acd43(22)=abb43(47)
      acd43(23)=abb43(10)
      acd43(24)=abb43(67)
      acd43(25)=abb43(40)
      acd43(26)=dotproduct(qshift,qshift)
      acd43(27)=abb43(42)
      acd43(28)=abb43(58)
      acd43(29)=abb43(54)
      acd43(30)=abb43(21)
      acd43(31)=abb43(32)
      acd43(32)=abb43(13)
      acd43(33)=abb43(53)
      acd43(34)=abb43(15)
      acd43(35)=abb43(50)
      acd43(36)=abb43(26)
      acd43(37)=abb43(60)
      acd43(38)=abb43(59)
      acd43(39)=abb43(20)
      acd43(40)=abb43(43)
      acd43(41)=dotproduct(qshift,spval3k1)
      acd43(42)=abb43(57)
      acd43(43)=dotproduct(qshift,spval4k1)
      acd43(44)=abb43(56)
      acd43(45)=abb43(37)
      acd43(46)=abb43(12)
      acd43(47)=abb43(16)
      acd43(48)=dotproduct(qshift,spvak1k5)
      acd43(49)=dotproduct(qshift,spval4k5)
      acd43(50)=abb43(24)
      acd43(51)=abb43(11)
      acd43(52)=abb43(34)
      acd43(53)=abb43(27)
      acd43(54)=abb43(18)
      acd43(55)=abb43(28)
      acd43(56)=abb43(14)
      acd43(57)=abb43(64)
      acd43(58)=abb43(22)
      acd43(59)=-acd43(49)*acd43(50)
      acd43(60)=acd43(29)*acd43(48)
      acd43(61)=-acd43(21)*acd43(23)
      acd43(62)=-acd43(17)*acd43(19)
      acd43(63)=-acd43(7)*acd43(10)
      acd43(64)=acd43(26)*acd43(30)
      acd43(65)=-acd43(11)*acd43(47)
      acd43(66)=-acd43(2)*acd43(36)
      acd43(67)=-acd43(9)*acd43(46)
      acd43(59)=acd43(67)+acd43(66)+acd43(65)+acd43(64)+acd43(63)+acd43(62)+acd&
      &43(61)+acd43(60)+acd43(51)+acd43(59)
      acd43(59)=acd43(9)*acd43(59)
      acd43(60)=-acd43(17)-acd43(1)
      acd43(60)=acd43(5)*acd43(60)
      acd43(61)=-acd43(41)*acd43(42)
      acd43(62)=-acd43(43)*acd43(44)
      acd43(63)=-acd43(21)*acd43(22)
      acd43(64)=-acd43(26)*acd43(29)
      acd43(65)=-acd43(11)*acd43(40)
      acd43(66)=-acd43(2)*acd43(35)
      acd43(67)=-acd43(9)*acd43(39)
      acd43(60)=acd43(67)+acd43(66)+acd43(65)+acd43(64)+acd43(63)+acd43(62)+acd&
      &43(45)+acd43(61)+acd43(60)
      acd43(60)=acd43(3)*acd43(60)
      acd43(61)=-acd43(1)*acd43(4)
      acd43(62)=-acd43(17)*acd43(18)
      acd43(63)=-acd43(7)*acd43(8)
      acd43(64)=acd43(26)*acd43(27)
      acd43(61)=acd43(64)+acd43(63)+acd43(62)+acd43(37)+acd43(61)
      acd43(61)=acd43(2)*acd43(61)
      acd43(62)=-acd43(21)*acd43(24)
      acd43(63)=-acd43(7)*acd43(12)
      acd43(62)=acd43(63)+acd43(52)+acd43(62)
      acd43(62)=acd43(11)*acd43(62)
      acd43(63)=acd43(43)*acd43(53)
      acd43(64)=acd43(1)*acd43(6)
      acd43(65)=acd43(21)*acd43(25)
      acd43(66)=acd43(17)*acd43(20)
      acd43(67)=acd43(7)*acd43(13)
      acd43(68)=-acd43(26)*acd43(31)
      acd43(59)=acd43(60)+acd43(59)+acd43(61)+acd43(62)+acd43(68)+acd43(67)+acd&
      &43(66)+acd43(65)+acd43(64)-acd43(54)+acd43(63)
      acd43(59)=acd43(3)*acd43(59)
      acd43(60)=acd43(7)*acd43(14)
      acd43(61)=-acd43(26)*acd43(32)
      acd43(62)=acd43(9)*acd43(55)
      acd43(60)=acd43(62)+acd43(61)-acd43(56)+acd43(60)
      acd43(60)=acd43(9)*acd43(60)
      acd43(61)=acd43(7)*acd43(15)
      acd43(62)=-acd43(26)*acd43(33)
      acd43(61)=acd43(62)-acd43(57)+acd43(61)
      acd43(61)=acd43(11)*acd43(61)
      acd43(62)=-acd43(7)*acd43(16)
      acd43(63)=acd43(26)*acd43(34)
      acd43(64)=-acd43(26)*acd43(28)
      acd43(64)=-acd43(38)+acd43(64)
      acd43(64)=acd43(2)*acd43(64)
      brack=acd43(58)+acd43(59)+acd43(60)+acd43(61)+acd43(62)+acd43(63)+acd43(6&
      &4)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(91) :: acd43
      complex(ki) :: brack
      acd43(1)=k1(iv1)
      acd43(2)=dotproduct(qshift,spvak2l4)
      acd43(3)=dotproduct(qshift,spvak2k5)
      acd43(4)=abb43(63)
      acd43(5)=abb43(52)
      acd43(6)=abb43(36)
      acd43(7)=k2(iv1)
      acd43(8)=abb43(62)
      acd43(9)=dotproduct(qshift,spvak2k1)
      acd43(10)=abb43(17)
      acd43(11)=dotproduct(qshift,spvak2l3)
      acd43(12)=abb43(66)
      acd43(13)=abb43(39)
      acd43(14)=abb43(23)
      acd43(15)=abb43(65)
      acd43(16)=abb43(25)
      acd43(17)=l3(iv1)
      acd43(18)=abb43(61)
      acd43(19)=abb43(19)
      acd43(20)=abb43(44)
      acd43(21)=l4(iv1)
      acd43(22)=abb43(47)
      acd43(23)=abb43(10)
      acd43(24)=abb43(67)
      acd43(25)=abb43(40)
      acd43(26)=qshift(iv1)
      acd43(27)=abb43(42)
      acd43(28)=abb43(58)
      acd43(29)=abb43(54)
      acd43(30)=abb43(21)
      acd43(31)=abb43(32)
      acd43(32)=abb43(13)
      acd43(33)=abb43(53)
      acd43(34)=abb43(15)
      acd43(35)=spvak2l4(iv1)
      acd43(36)=dotproduct(k1,qshift)
      acd43(37)=dotproduct(k2,qshift)
      acd43(38)=dotproduct(l3,qshift)
      acd43(39)=dotproduct(qshift,qshift)
      acd43(40)=abb43(50)
      acd43(41)=abb43(26)
      acd43(42)=abb43(60)
      acd43(43)=abb43(59)
      acd43(44)=spvak2k5(iv1)
      acd43(45)=dotproduct(l4,qshift)
      acd43(46)=abb43(20)
      acd43(47)=abb43(43)
      acd43(48)=dotproduct(qshift,spval3k1)
      acd43(49)=abb43(57)
      acd43(50)=dotproduct(qshift,spval4k1)
      acd43(51)=abb43(56)
      acd43(52)=abb43(37)
      acd43(53)=abb43(12)
      acd43(54)=abb43(16)
      acd43(55)=dotproduct(qshift,spvak1k5)
      acd43(56)=dotproduct(qshift,spval4k5)
      acd43(57)=abb43(24)
      acd43(58)=abb43(11)
      acd43(59)=abb43(34)
      acd43(60)=abb43(27)
      acd43(61)=abb43(18)
      acd43(62)=spvak2k1(iv1)
      acd43(63)=abb43(28)
      acd43(64)=abb43(14)
      acd43(65)=spvak2l3(iv1)
      acd43(66)=abb43(64)
      acd43(67)=spvak1k5(iv1)
      acd43(68)=spval4k5(iv1)
      acd43(69)=spval3k1(iv1)
      acd43(70)=spval4k1(iv1)
      acd43(71)=acd43(57)*acd43(68)
      acd43(72)=acd43(21)*acd43(23)
      acd43(73)=acd43(17)*acd43(19)
      acd43(74)=-acd43(29)*acd43(67)
      acd43(75)=acd43(7)*acd43(10)
      acd43(76)=acd43(65)*acd43(54)
      acd43(77)=2.0_ki*acd43(26)
      acd43(78)=-acd43(30)*acd43(77)
      acd43(79)=acd43(35)*acd43(41)
      acd43(80)=2.0_ki*acd43(62)
      acd43(81)=acd43(53)*acd43(80)
      acd43(71)=acd43(81)+acd43(79)+acd43(78)+acd43(76)+acd43(75)+acd43(74)+acd&
      &43(73)+acd43(71)+acd43(72)
      acd43(71)=acd43(9)*acd43(71)
      acd43(72)=acd43(57)*acd43(56)
      acd43(73)=acd43(29)*acd43(55)
      acd43(74)=acd43(45)*acd43(23)
      acd43(75)=acd43(38)*acd43(19)
      acd43(76)=acd43(39)*acd43(30)
      acd43(78)=acd43(37)*acd43(10)
      acd43(79)=acd43(11)*acd43(54)
      acd43(81)=acd43(2)*acd43(41)
      acd43(72)=acd43(72)-acd43(73)+acd43(74)+acd43(75)-acd43(58)-acd43(76)+acd&
      &43(78)+acd43(79)+acd43(81)
      acd43(73)=acd43(62)*acd43(72)
      acd43(74)=acd43(38)+acd43(36)
      acd43(74)=acd43(5)*acd43(74)
      acd43(75)=acd43(50)*acd43(51)
      acd43(76)=acd43(49)*acd43(48)
      acd43(78)=acd43(45)*acd43(22)
      acd43(79)=acd43(39)*acd43(29)
      acd43(81)=acd43(11)*acd43(47)
      acd43(82)=acd43(2)*acd43(40)
      acd43(83)=acd43(9)*acd43(46)
      acd43(74)=acd43(83)+acd43(82)+acd43(81)+acd43(79)+acd43(78)+acd43(76)-acd&
      &43(52)+acd43(75)+acd43(74)
      acd43(74)=acd43(44)*acd43(74)
      acd43(75)=acd43(51)*acd43(70)
      acd43(76)=acd43(49)*acd43(69)
      acd43(78)=acd43(21)*acd43(22)
      acd43(79)=acd43(1)+acd43(17)
      acd43(79)=acd43(5)*acd43(79)
      acd43(81)=acd43(65)*acd43(47)
      acd43(82)=acd43(29)*acd43(77)
      acd43(83)=acd43(35)*acd43(40)
      acd43(84)=acd43(62)*acd43(46)
      acd43(75)=acd43(84)+acd43(83)+acd43(82)+acd43(81)+acd43(79)+acd43(78)+acd&
      &43(75)+acd43(76)
      acd43(75)=acd43(3)*acd43(75)
      acd43(76)=acd43(36)*acd43(4)
      acd43(78)=acd43(38)*acd43(18)
      acd43(79)=acd43(39)*acd43(27)
      acd43(81)=acd43(37)*acd43(8)
      acd43(76)=acd43(76)+acd43(78)-acd43(79)+acd43(81)-acd43(42)
      acd43(78)=acd43(35)*acd43(76)
      acd43(79)=acd43(1)*acd43(4)
      acd43(81)=acd43(17)*acd43(18)
      acd43(82)=acd43(7)*acd43(8)
      acd43(83)=-acd43(27)*acd43(77)
      acd43(79)=acd43(83)+acd43(82)+acd43(79)+acd43(81)
      acd43(79)=acd43(2)*acd43(79)
      acd43(81)=acd43(21)*acd43(24)
      acd43(82)=acd43(7)*acd43(12)
      acd43(81)=acd43(81)+acd43(82)
      acd43(81)=acd43(11)*acd43(81)
      acd43(82)=-acd43(60)*acd43(70)
      acd43(83)=-acd43(1)*acd43(6)
      acd43(84)=-acd43(21)*acd43(25)
      acd43(85)=-acd43(17)*acd43(20)
      acd43(86)=-acd43(7)*acd43(13)
      acd43(87)=acd43(45)*acd43(24)
      acd43(87)=acd43(87)-acd43(59)
      acd43(88)=acd43(65)*acd43(87)
      acd43(89)=acd43(31)*acd43(77)
      acd43(90)=acd43(37)*acd43(65)
      acd43(91)=acd43(12)*acd43(90)
      acd43(71)=acd43(75)+2.0_ki*acd43(74)+acd43(71)+acd43(73)+acd43(79)+acd43(&
      &81)+acd43(78)+acd43(91)+acd43(89)+acd43(88)+acd43(86)+acd43(85)+acd43(84&
      &)+acd43(82)+acd43(83)
      acd43(71)=acd43(3)*acd43(71)
      acd43(73)=acd43(9)*acd43(53)
      acd43(72)=acd43(73)+acd43(72)
      acd43(72)=acd43(9)*acd43(72)
      acd43(73)=acd43(2)*acd43(76)
      acd43(74)=acd43(37)*acd43(12)
      acd43(74)=acd43(74)+acd43(87)
      acd43(74)=acd43(11)*acd43(74)
      acd43(75)=-acd43(50)*acd43(60)
      acd43(76)=-acd43(36)*acd43(6)
      acd43(78)=-acd43(45)*acd43(25)
      acd43(79)=-acd43(38)*acd43(20)
      acd43(81)=acd43(39)*acd43(31)
      acd43(82)=-acd43(37)*acd43(13)
      acd43(72)=acd43(72)+acd43(73)+acd43(74)+acd43(82)+acd43(81)+acd43(79)+acd&
      &43(78)+acd43(76)+acd43(61)+acd43(75)
      acd43(72)=acd43(44)*acd43(72)
      acd43(73)=-acd43(7)*acd43(14)
      acd43(74)=acd43(32)*acd43(77)
      acd43(75)=-acd43(63)*acd43(80)
      acd43(73)=acd43(75)+acd43(73)+acd43(74)
      acd43(73)=acd43(9)*acd43(73)
      acd43(74)=acd43(2)*acd43(28)
      acd43(74)=acd43(74)-acd43(34)
      acd43(74)=acd43(77)*acd43(74)
      acd43(75)=-acd43(7)*acd43(15)
      acd43(76)=acd43(33)*acd43(77)
      acd43(75)=acd43(75)+acd43(76)
      acd43(75)=acd43(11)*acd43(75)
      acd43(76)=acd43(39)*acd43(32)
      acd43(77)=-acd43(37)*acd43(14)
      acd43(76)=acd43(77)+acd43(64)+acd43(76)
      acd43(76)=acd43(62)*acd43(76)
      acd43(77)=acd43(39)*acd43(33)
      acd43(77)=acd43(77)+acd43(66)
      acd43(77)=acd43(65)*acd43(77)
      acd43(78)=acd43(7)*acd43(16)
      acd43(79)=-acd43(15)*acd43(90)
      acd43(80)=acd43(39)*acd43(28)
      acd43(80)=acd43(43)+acd43(80)
      acd43(80)=acd43(35)*acd43(80)
      brack=acd43(71)+acd43(72)+acd43(73)+acd43(74)+acd43(75)+acd43(76)+acd43(7&
      &7)+acd43(78)+acd43(79)+acd43(80)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(101) :: acd43
      complex(ki) :: brack
      acd43(1)=d(iv1,iv2)
      acd43(2)=dotproduct(qshift,spvak2k1)
      acd43(3)=dotproduct(qshift,spvak2k5)
      acd43(4)=abb43(21)
      acd43(5)=abb43(13)
      acd43(6)=abb43(54)
      acd43(7)=dotproduct(qshift,spvak2l4)
      acd43(8)=abb43(42)
      acd43(9)=abb43(32)
      acd43(10)=dotproduct(qshift,spvak2l3)
      acd43(11)=abb43(53)
      acd43(12)=abb43(58)
      acd43(13)=abb43(15)
      acd43(14)=k1(iv1)
      acd43(15)=spvak2k5(iv2)
      acd43(16)=abb43(52)
      acd43(17)=abb43(63)
      acd43(18)=abb43(36)
      acd43(19)=spvak2l4(iv2)
      acd43(20)=k1(iv2)
      acd43(21)=spvak2k5(iv1)
      acd43(22)=spvak2l4(iv1)
      acd43(23)=k2(iv1)
      acd43(24)=spvak2k1(iv2)
      acd43(25)=abb43(17)
      acd43(26)=abb43(23)
      acd43(27)=abb43(66)
      acd43(28)=abb43(62)
      acd43(29)=abb43(39)
      acd43(30)=spvak2l3(iv2)
      acd43(31)=abb43(65)
      acd43(32)=k2(iv2)
      acd43(33)=spvak2k1(iv1)
      acd43(34)=spvak2l3(iv1)
      acd43(35)=l3(iv1)
      acd43(36)=abb43(19)
      acd43(37)=abb43(61)
      acd43(38)=abb43(44)
      acd43(39)=l3(iv2)
      acd43(40)=l4(iv1)
      acd43(41)=abb43(10)
      acd43(42)=abb43(47)
      acd43(43)=abb43(67)
      acd43(44)=abb43(40)
      acd43(45)=l4(iv2)
      acd43(46)=qshift(iv1)
      acd43(47)=qshift(iv2)
      acd43(48)=abb43(12)
      acd43(49)=abb43(28)
      acd43(50)=dotproduct(k2,qshift)
      acd43(51)=dotproduct(l3,qshift)
      acd43(52)=dotproduct(l4,qshift)
      acd43(53)=dotproduct(qshift,qshift)
      acd43(54)=abb43(20)
      acd43(55)=abb43(16)
      acd43(56)=abb43(26)
      acd43(57)=dotproduct(qshift,spvak1k5)
      acd43(58)=dotproduct(qshift,spval4k5)
      acd43(59)=abb43(24)
      acd43(60)=abb43(11)
      acd43(61)=spvak1k5(iv2)
      acd43(62)=spval4k5(iv2)
      acd43(63)=spvak1k5(iv1)
      acd43(64)=spval4k5(iv1)
      acd43(65)=dotproduct(k1,qshift)
      acd43(66)=abb43(43)
      acd43(67)=abb43(50)
      acd43(68)=dotproduct(qshift,spval3k1)
      acd43(69)=abb43(57)
      acd43(70)=dotproduct(qshift,spval4k1)
      acd43(71)=abb43(56)
      acd43(72)=abb43(37)
      acd43(73)=abb43(34)
      acd43(74)=abb43(60)
      acd43(75)=spval3k1(iv2)
      acd43(76)=spval4k1(iv2)
      acd43(77)=abb43(27)
      acd43(78)=spval3k1(iv1)
      acd43(79)=spval4k1(iv1)
      acd43(80)=acd43(59)*acd43(58)
      acd43(81)=acd43(41)*acd43(52)
      acd43(82)=acd43(36)*acd43(51)
      acd43(83)=acd43(25)*acd43(50)
      acd43(84)=acd43(4)*acd43(53)
      acd43(85)=acd43(10)*acd43(55)
      acd43(86)=acd43(6)*acd43(57)
      acd43(87)=acd43(7)*acd43(56)
      acd43(88)=2.0_ki*acd43(2)
      acd43(88)=acd43(88)*acd43(48)
      acd43(80)=-acd43(80)-acd43(81)+acd43(86)-acd43(87)-acd43(88)+acd43(60)-ac&
      &d43(82)-acd43(83)+acd43(84)-acd43(85)
      acd43(81)=acd43(33)*acd43(80)
      acd43(82)=acd43(59)*acd43(64)
      acd43(83)=acd43(40)*acd43(41)
      acd43(84)=acd43(35)*acd43(36)
      acd43(85)=acd43(23)*acd43(25)
      acd43(86)=acd43(34)*acd43(55)
      acd43(87)=acd43(6)*acd43(63)
      acd43(88)=acd43(22)*acd43(56)
      acd43(89)=2.0_ki*acd43(46)
      acd43(90)=acd43(89)*acd43(4)
      acd43(82)=acd43(86)-acd43(87)+acd43(88)-acd43(90)+acd43(82)+acd43(83)+acd&
      &43(84)+acd43(85)
      acd43(83)=-acd43(2)*acd43(82)
      acd43(84)=-acd43(71)*acd43(79)
      acd43(85)=-acd43(69)*acd43(78)
      acd43(86)=-acd43(40)*acd43(42)
      acd43(87)=-acd43(14)-acd43(35)
      acd43(87)=acd43(16)*acd43(87)
      acd43(88)=-acd43(34)*acd43(66)
      acd43(90)=-acd43(6)*acd43(89)
      acd43(91)=-acd43(22)*acd43(67)
      acd43(92)=-acd43(33)*acd43(54)
      acd43(84)=acd43(92)+acd43(91)+acd43(90)+acd43(88)+acd43(87)+acd43(86)+acd&
      &43(84)+acd43(85)
      acd43(85)=2.0_ki*acd43(3)
      acd43(84)=acd43(84)*acd43(85)
      acd43(86)=-acd43(71)*acd43(70)
      acd43(87)=-acd43(69)*acd43(68)
      acd43(88)=-acd43(52)*acd43(42)
      acd43(90)=-acd43(65)-acd43(51)
      acd43(90)=acd43(16)*acd43(90)
      acd43(91)=-acd43(10)*acd43(66)
      acd43(92)=-acd43(6)*acd43(53)
      acd43(93)=-acd43(7)*acd43(67)
      acd43(94)=-acd43(2)*acd43(54)
      acd43(86)=acd43(94)+acd43(93)+acd43(92)+acd43(91)+acd43(90)+acd43(88)+acd&
      &43(87)+acd43(72)+acd43(86)
      acd43(86)=acd43(21)*acd43(86)
      acd43(87)=acd43(37)*acd43(51)
      acd43(88)=acd43(28)*acd43(50)
      acd43(90)=acd43(17)*acd43(65)
      acd43(91)=acd43(8)*acd43(53)
      acd43(87)=-acd43(74)+acd43(87)+acd43(88)+acd43(90)-acd43(91)
      acd43(88)=-acd43(22)*acd43(87)
      acd43(90)=acd43(35)*acd43(37)
      acd43(91)=acd43(17)*acd43(14)
      acd43(92)=acd43(23)*acd43(28)
      acd43(93)=acd43(89)*acd43(8)
      acd43(90)=acd43(90)+acd43(91)+acd43(92)-acd43(93)
      acd43(91)=-acd43(7)*acd43(90)
      acd43(92)=acd43(43)*acd43(52)
      acd43(93)=acd43(27)*acd43(50)
      acd43(92)=-acd43(73)+acd43(92)+acd43(93)
      acd43(93)=-acd43(34)*acd43(92)
      acd43(94)=acd43(10)*acd43(43)
      acd43(94)=acd43(94)-acd43(44)
      acd43(95)=-acd43(40)*acd43(94)
      acd43(96)=acd43(77)*acd43(79)
      acd43(97)=acd43(14)*acd43(18)
      acd43(98)=acd43(35)*acd43(38)
      acd43(99)=-acd43(9)*acd43(89)
      acd43(100)=acd43(10)*acd43(27)
      acd43(100)=acd43(100)-acd43(29)
      acd43(101)=-acd43(23)*acd43(100)
      acd43(81)=2.0_ki*acd43(86)+acd43(84)+acd43(81)+acd43(83)+acd43(91)+acd43(&
      &88)+acd43(93)+acd43(101)+acd43(99)+acd43(98)+acd43(96)+acd43(97)+acd43(9&
      &5)
      acd43(81)=acd43(15)*acd43(81)
      acd43(80)=acd43(24)*acd43(80)
      acd43(83)=acd43(59)*acd43(62)
      acd43(84)=acd43(41)*acd43(45)
      acd43(86)=acd43(36)*acd43(39)
      acd43(88)=acd43(32)*acd43(25)
      acd43(91)=acd43(30)*acd43(55)
      acd43(93)=acd43(6)*acd43(61)
      acd43(95)=acd43(19)*acd43(56)
      acd43(96)=2.0_ki*acd43(47)
      acd43(97)=acd43(96)*acd43(4)
      acd43(83)=acd43(91)-acd43(93)+acd43(95)-acd43(97)+acd43(83)+acd43(84)+acd&
      &43(86)+acd43(88)
      acd43(84)=-acd43(2)*acd43(83)
      acd43(86)=-acd43(71)*acd43(76)
      acd43(88)=-acd43(69)*acd43(75)
      acd43(91)=-acd43(45)*acd43(42)
      acd43(93)=-acd43(20)-acd43(39)
      acd43(93)=acd43(16)*acd43(93)
      acd43(95)=-acd43(30)*acd43(66)
      acd43(97)=-acd43(6)*acd43(96)
      acd43(98)=-acd43(19)*acd43(67)
      acd43(99)=-acd43(24)*acd43(54)
      acd43(86)=acd43(99)+acd43(98)+acd43(97)+acd43(95)+acd43(93)+acd43(91)+acd&
      &43(86)+acd43(88)
      acd43(85)=acd43(86)*acd43(85)
      acd43(86)=-acd43(19)*acd43(87)
      acd43(87)=acd43(37)*acd43(39)
      acd43(88)=acd43(17)*acd43(20)
      acd43(91)=acd43(32)*acd43(28)
      acd43(93)=acd43(96)*acd43(8)
      acd43(87)=acd43(87)+acd43(88)+acd43(91)-acd43(93)
      acd43(88)=-acd43(7)*acd43(87)
      acd43(91)=-acd43(30)*acd43(92)
      acd43(92)=-acd43(45)*acd43(94)
      acd43(93)=acd43(76)*acd43(77)
      acd43(94)=acd43(20)*acd43(18)
      acd43(95)=acd43(39)*acd43(38)
      acd43(97)=-acd43(9)*acd43(96)
      acd43(98)=-acd43(32)*acd43(100)
      acd43(80)=acd43(85)+acd43(80)+acd43(84)+acd43(88)+acd43(86)+acd43(91)+acd&
      &43(98)+acd43(97)+acd43(95)+acd43(93)+acd43(94)+acd43(92)
      acd43(80)=acd43(21)*acd43(80)
      acd43(83)=-acd43(33)*acd43(83)
      acd43(84)=2.0_ki*acd43(33)
      acd43(85)=-acd43(48)*acd43(84)
      acd43(82)=acd43(85)-acd43(82)
      acd43(82)=acd43(24)*acd43(82)
      acd43(85)=-acd43(22)*acd43(87)
      acd43(86)=-acd43(19)*acd43(90)
      acd43(87)=acd43(7)*acd43(8)
      acd43(88)=acd43(2)*acd43(4)
      acd43(90)=-acd43(3)*acd43(6)
      acd43(87)=acd43(90)+acd43(88)+acd43(87)-acd43(9)
      acd43(88)=2.0_ki*acd43(1)
      acd43(87)=acd43(88)*acd43(87)
      acd43(90)=acd43(43)*acd43(45)
      acd43(91)=-acd43(32)*acd43(27)
      acd43(90)=-acd43(90)+acd43(91)
      acd43(90)=acd43(34)*acd43(90)
      acd43(91)=acd43(40)*acd43(43)
      acd43(92)=-acd43(23)*acd43(27)
      acd43(91)=-acd43(91)+acd43(92)
      acd43(91)=acd43(30)*acd43(91)
      acd43(82)=acd43(82)+acd43(83)+acd43(86)+acd43(85)+acd43(91)+acd43(90)+acd&
      &43(87)
      acd43(82)=acd43(3)*acd43(82)
      acd43(83)=-acd43(10)*acd43(11)
      acd43(85)=-acd43(7)*acd43(12)
      acd43(86)=-acd43(2)*acd43(5)
      acd43(83)=acd43(86)+acd43(85)+acd43(13)+acd43(83)
      acd43(83)=acd43(88)*acd43(83)
      acd43(85)=-acd43(5)*acd43(89)
      acd43(86)=acd43(23)*acd43(26)
      acd43(84)=acd43(49)*acd43(84)
      acd43(84)=acd43(84)+acd43(85)+acd43(86)
      acd43(84)=acd43(24)*acd43(84)
      acd43(85)=-acd43(22)*acd43(96)
      acd43(86)=-acd43(19)*acd43(89)
      acd43(85)=acd43(86)+acd43(85)
      acd43(85)=acd43(12)*acd43(85)
      acd43(86)=-acd43(11)*acd43(96)
      acd43(87)=acd43(32)*acd43(31)
      acd43(86)=acd43(86)+acd43(87)
      acd43(86)=acd43(34)*acd43(86)
      acd43(87)=-acd43(11)*acd43(89)
      acd43(88)=acd43(23)*acd43(31)
      acd43(87)=acd43(87)+acd43(88)
      acd43(87)=acd43(30)*acd43(87)
      acd43(88)=-acd43(5)*acd43(96)
      acd43(89)=acd43(32)*acd43(26)
      acd43(88)=acd43(88)+acd43(89)
      acd43(88)=acd43(33)*acd43(88)
      brack=acd43(80)+acd43(81)+acd43(82)+acd43(83)+acd43(84)+acd43(85)+acd43(8&
      &6)+acd43(87)+acd43(88)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(92) :: acd43
      complex(ki) :: brack
      acd43(1)=d(iv1,iv2)
      acd43(2)=spvak2k1(iv3)
      acd43(3)=dotproduct(qshift,spvak2k5)
      acd43(4)=abb43(21)
      acd43(5)=abb43(13)
      acd43(6)=spvak2k5(iv3)
      acd43(7)=dotproduct(qshift,spvak2k1)
      acd43(8)=abb43(54)
      acd43(9)=dotproduct(qshift,spvak2l4)
      acd43(10)=abb43(42)
      acd43(11)=abb43(32)
      acd43(12)=spvak2l3(iv3)
      acd43(13)=abb43(53)
      acd43(14)=spvak2l4(iv3)
      acd43(15)=abb43(58)
      acd43(16)=d(iv1,iv3)
      acd43(17)=spvak2k1(iv2)
      acd43(18)=spvak2k5(iv2)
      acd43(19)=spvak2l3(iv2)
      acd43(20)=spvak2l4(iv2)
      acd43(21)=d(iv2,iv3)
      acd43(22)=spvak2k1(iv1)
      acd43(23)=spvak2k5(iv1)
      acd43(24)=spvak2l3(iv1)
      acd43(25)=spvak2l4(iv1)
      acd43(26)=k1(iv1)
      acd43(27)=abb43(52)
      acd43(28)=abb43(63)
      acd43(29)=k1(iv2)
      acd43(30)=k1(iv3)
      acd43(31)=k2(iv1)
      acd43(32)=abb43(17)
      acd43(33)=abb43(66)
      acd43(34)=abb43(62)
      acd43(35)=k2(iv2)
      acd43(36)=k2(iv3)
      acd43(37)=l3(iv1)
      acd43(38)=abb43(19)
      acd43(39)=abb43(61)
      acd43(40)=l3(iv2)
      acd43(41)=l3(iv3)
      acd43(42)=l4(iv1)
      acd43(43)=abb43(10)
      acd43(44)=abb43(47)
      acd43(45)=abb43(67)
      acd43(46)=l4(iv2)
      acd43(47)=l4(iv3)
      acd43(48)=qshift(iv1)
      acd43(49)=qshift(iv2)
      acd43(50)=qshift(iv3)
      acd43(51)=abb43(12)
      acd43(52)=abb43(20)
      acd43(53)=abb43(16)
      acd43(54)=abb43(26)
      acd43(55)=spvak1k5(iv3)
      acd43(56)=spval4k5(iv3)
      acd43(57)=abb43(24)
      acd43(58)=spvak1k5(iv2)
      acd43(59)=spval4k5(iv2)
      acd43(60)=spvak1k5(iv1)
      acd43(61)=spval4k5(iv1)
      acd43(62)=abb43(43)
      acd43(63)=abb43(50)
      acd43(64)=spval3k1(iv3)
      acd43(65)=abb43(57)
      acd43(66)=spval4k1(iv3)
      acd43(67)=abb43(56)
      acd43(68)=spval3k1(iv2)
      acd43(69)=spval4k1(iv2)
      acd43(70)=spval3k1(iv1)
      acd43(71)=spval4k1(iv1)
      acd43(72)=acd43(57)*acd43(61)
      acd43(73)=acd43(43)*acd43(42)
      acd43(74)=acd43(38)*acd43(37)
      acd43(75)=acd43(31)*acd43(32)
      acd43(76)=acd43(24)*acd43(53)
      acd43(77)=acd43(8)*acd43(60)
      acd43(78)=acd43(25)*acd43(54)
      acd43(79)=2.0_ki*acd43(51)
      acd43(80)=acd43(79)*acd43(22)
      acd43(81)=2.0_ki*acd43(4)
      acd43(82)=acd43(81)*acd43(48)
      acd43(72)=acd43(72)+acd43(73)+acd43(74)+acd43(75)-acd43(82)+acd43(76)-acd&
      &43(77)+acd43(78)+acd43(80)
      acd43(73)=acd43(17)*acd43(72)
      acd43(74)=acd43(57)*acd43(59)
      acd43(75)=acd43(43)*acd43(46)
      acd43(76)=acd43(38)*acd43(40)
      acd43(77)=acd43(32)*acd43(35)
      acd43(78)=acd43(19)*acd43(53)
      acd43(80)=acd43(8)*acd43(58)
      acd43(82)=acd43(20)*acd43(54)
      acd43(83)=acd43(81)*acd43(49)
      acd43(74)=acd43(78)-acd43(80)+acd43(82)-acd43(83)+acd43(74)+acd43(75)+acd&
      &43(76)+acd43(77)
      acd43(75)=acd43(22)*acd43(74)
      acd43(76)=acd43(67)*acd43(69)
      acd43(77)=acd43(65)*acd43(68)
      acd43(78)=acd43(46)*acd43(44)
      acd43(80)=acd43(29)+acd43(40)
      acd43(80)=acd43(27)*acd43(80)
      acd43(82)=acd43(19)*acd43(62)
      acd43(83)=2.0_ki*acd43(49)
      acd43(83)=acd43(8)*acd43(83)
      acd43(84)=acd43(20)*acd43(63)
      acd43(85)=acd43(17)*acd43(52)
      acd43(76)=acd43(85)+acd43(84)+acd43(83)+acd43(82)+acd43(80)+acd43(78)+acd&
      &43(76)+acd43(77)
      acd43(77)=2.0_ki*acd43(23)
      acd43(76)=acd43(76)*acd43(77)
      acd43(78)=acd43(67)*acd43(71)
      acd43(80)=acd43(65)*acd43(70)
      acd43(82)=acd43(42)*acd43(44)
      acd43(83)=acd43(26)+acd43(37)
      acd43(83)=acd43(27)*acd43(83)
      acd43(84)=acd43(24)*acd43(62)
      acd43(85)=2.0_ki*acd43(48)
      acd43(85)=acd43(8)*acd43(85)
      acd43(86)=acd43(25)*acd43(63)
      acd43(87)=acd43(22)*acd43(52)
      acd43(78)=acd43(87)+acd43(86)+acd43(85)+acd43(84)+acd43(83)+acd43(82)+acd&
      &43(78)+acd43(80)
      acd43(78)=acd43(18)*acd43(78)
      acd43(80)=acd43(39)*acd43(40)
      acd43(82)=acd43(34)*acd43(35)
      acd43(83)=acd43(28)*acd43(29)
      acd43(84)=2.0_ki*acd43(10)
      acd43(85)=acd43(84)*acd43(49)
      acd43(80)=acd43(80)+acd43(82)+acd43(83)-acd43(85)
      acd43(82)=acd43(25)*acd43(80)
      acd43(83)=acd43(39)*acd43(37)
      acd43(85)=acd43(31)*acd43(34)
      acd43(86)=acd43(28)*acd43(26)
      acd43(87)=acd43(84)*acd43(48)
      acd43(83)=acd43(83)+acd43(85)+acd43(86)-acd43(87)
      acd43(85)=acd43(20)*acd43(83)
      acd43(86)=acd43(81)*acd43(7)
      acd43(87)=acd43(84)*acd43(9)
      acd43(88)=acd43(8)*acd43(3)
      acd43(86)=-4.0_ki*acd43(88)-2.0_ki*acd43(11)+acd43(86)+acd43(87)
      acd43(87)=-acd43(1)*acd43(86)
      acd43(88)=acd43(45)*acd43(46)
      acd43(89)=acd43(33)*acd43(35)
      acd43(88)=acd43(88)+acd43(89)
      acd43(89)=acd43(24)*acd43(88)
      acd43(90)=acd43(45)*acd43(42)
      acd43(91)=acd43(31)*acd43(33)
      acd43(90)=acd43(90)+acd43(91)
      acd43(91)=acd43(19)*acd43(90)
      acd43(73)=2.0_ki*acd43(78)+acd43(76)+acd43(73)+acd43(75)+acd43(85)+acd43(&
      &82)+acd43(89)+acd43(91)+acd43(87)
      acd43(73)=acd43(6)*acd43(73)
      acd43(72)=acd43(2)*acd43(72)
      acd43(75)=acd43(57)*acd43(56)
      acd43(76)=acd43(43)*acd43(47)
      acd43(78)=acd43(38)*acd43(41)
      acd43(82)=acd43(32)*acd43(36)
      acd43(85)=acd43(12)*acd43(53)
      acd43(87)=acd43(8)*acd43(55)
      acd43(89)=acd43(14)*acd43(54)
      acd43(81)=acd43(81)*acd43(50)
      acd43(75)=acd43(85)-acd43(87)+acd43(89)-acd43(81)+acd43(75)+acd43(76)+acd&
      &43(78)+acd43(82)
      acd43(76)=acd43(22)*acd43(75)
      acd43(78)=acd43(67)*acd43(66)
      acd43(81)=acd43(65)*acd43(64)
      acd43(82)=acd43(47)*acd43(44)
      acd43(85)=acd43(30)+acd43(41)
      acd43(85)=acd43(27)*acd43(85)
      acd43(87)=acd43(12)*acd43(62)
      acd43(89)=2.0_ki*acd43(50)
      acd43(89)=acd43(8)*acd43(89)
      acd43(91)=acd43(14)*acd43(63)
      acd43(92)=acd43(2)*acd43(52)
      acd43(78)=acd43(92)+acd43(91)+acd43(89)+acd43(87)+acd43(85)+acd43(82)+acd&
      &43(78)+acd43(81)
      acd43(77)=acd43(78)*acd43(77)
      acd43(78)=acd43(39)*acd43(41)
      acd43(81)=acd43(34)*acd43(36)
      acd43(82)=acd43(28)*acd43(30)
      acd43(84)=acd43(84)*acd43(50)
      acd43(78)=acd43(78)+acd43(81)+acd43(82)-acd43(84)
      acd43(81)=acd43(25)*acd43(78)
      acd43(82)=acd43(14)*acd43(83)
      acd43(83)=-acd43(16)*acd43(86)
      acd43(84)=acd43(45)*acd43(47)
      acd43(85)=acd43(33)*acd43(36)
      acd43(84)=acd43(84)+acd43(85)
      acd43(85)=acd43(24)*acd43(84)
      acd43(87)=acd43(12)*acd43(90)
      acd43(72)=acd43(77)+acd43(72)+acd43(76)+acd43(82)+acd43(81)+acd43(85)+acd&
      &43(87)+acd43(83)
      acd43(72)=acd43(18)*acd43(72)
      acd43(75)=acd43(17)*acd43(75)
      acd43(76)=acd43(17)*acd43(79)
      acd43(74)=acd43(76)+acd43(74)
      acd43(74)=acd43(2)*acd43(74)
      acd43(76)=acd43(20)*acd43(78)
      acd43(77)=acd43(14)*acd43(80)
      acd43(78)=-acd43(21)*acd43(86)
      acd43(79)=acd43(19)*acd43(84)
      acd43(80)=acd43(12)*acd43(88)
      acd43(74)=acd43(74)+acd43(75)+acd43(77)+acd43(76)+acd43(79)+acd43(80)+acd&
      &43(78)
      acd43(74)=acd43(23)*acd43(74)
      acd43(75)=-acd43(25)*acd43(21)
      acd43(76)=-acd43(20)*acd43(16)
      acd43(77)=-acd43(14)*acd43(1)
      acd43(75)=acd43(77)+acd43(76)+acd43(75)
      acd43(76)=acd43(10)*acd43(3)
      acd43(76)=acd43(76)-acd43(15)
      acd43(75)=acd43(76)*acd43(75)
      acd43(76)=-acd43(22)*acd43(21)
      acd43(77)=-acd43(17)*acd43(16)
      acd43(78)=-acd43(2)*acd43(1)
      acd43(76)=acd43(78)+acd43(77)+acd43(76)
      acd43(77)=acd43(4)*acd43(3)
      acd43(77)=acd43(77)-acd43(5)
      acd43(76)=acd43(77)*acd43(76)
      acd43(77)=acd43(21)*acd43(24)
      acd43(78)=acd43(16)*acd43(19)
      acd43(79)=acd43(1)*acd43(12)
      acd43(77)=acd43(79)+acd43(77)+acd43(78)
      acd43(77)=acd43(13)*acd43(77)
      acd43(75)=acd43(77)+acd43(76)+acd43(75)
      brack=acd43(72)+acd43(73)+acd43(74)+2.0_ki*acd43(75)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd43
      complex(ki) :: brack
      acd43(1)=d(iv1,iv2)
      acd43(2)=spvak2k1(iv3)
      acd43(3)=spvak2k5(iv4)
      acd43(4)=abb43(21)
      acd43(5)=spvak2k1(iv4)
      acd43(6)=spvak2k5(iv3)
      acd43(7)=abb43(54)
      acd43(8)=spvak2l4(iv4)
      acd43(9)=abb43(42)
      acd43(10)=spvak2l4(iv3)
      acd43(11)=d(iv1,iv3)
      acd43(12)=spvak2k1(iv2)
      acd43(13)=spvak2k5(iv2)
      acd43(14)=spvak2l4(iv2)
      acd43(15)=d(iv1,iv4)
      acd43(16)=d(iv2,iv3)
      acd43(17)=spvak2k1(iv1)
      acd43(18)=spvak2k5(iv1)
      acd43(19)=spvak2l4(iv1)
      acd43(20)=d(iv2,iv4)
      acd43(21)=d(iv3,iv4)
      acd43(22)=acd43(1)*acd43(3)
      acd43(23)=acd43(15)*acd43(13)
      acd43(24)=acd43(20)*acd43(18)
      acd43(22)=acd43(22)+acd43(23)+acd43(24)
      acd43(23)=acd43(2)*acd43(22)
      acd43(24)=acd43(11)*acd43(3)
      acd43(25)=acd43(15)*acd43(6)
      acd43(26)=acd43(21)*acd43(18)
      acd43(24)=acd43(26)+acd43(24)+acd43(25)
      acd43(25)=acd43(12)*acd43(24)
      acd43(27)=acd43(16)*acd43(3)
      acd43(28)=acd43(20)*acd43(6)
      acd43(29)=acd43(21)*acd43(13)
      acd43(27)=acd43(29)+acd43(27)+acd43(28)
      acd43(28)=acd43(17)*acd43(27)
      acd43(29)=acd43(11)*acd43(13)
      acd43(30)=acd43(16)*acd43(18)
      acd43(29)=acd43(29)+acd43(30)
      acd43(30)=acd43(1)*acd43(6)
      acd43(30)=acd43(29)+acd43(30)
      acd43(31)=acd43(5)*acd43(30)
      acd43(23)=acd43(28)+acd43(25)+acd43(31)+acd43(23)
      acd43(23)=acd43(4)*acd43(23)
      acd43(25)=acd43(10)*acd43(22)
      acd43(24)=acd43(14)*acd43(24)
      acd43(27)=acd43(19)*acd43(27)
      acd43(28)=acd43(8)*acd43(30)
      acd43(24)=acd43(27)+acd43(24)+acd43(25)+acd43(28)
      acd43(24)=acd43(9)*acd43(24)
      acd43(22)=-acd43(6)*acd43(22)
      acd43(25)=-acd43(3)*acd43(29)
      acd43(26)=-acd43(13)*acd43(26)
      acd43(22)=acd43(26)+acd43(22)+acd43(25)
      acd43(22)=acd43(7)*acd43(22)
      acd43(22)=2.0_ki*acd43(22)+acd43(24)+acd43(23)
      brack=2.0_ki*acd43(22)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd43
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
      integer, intent(in), optional :: i5
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
      if(present(i5)) then
          iv5=i5
          deg=5
      else
          iv5=1
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
      if(deg.eq.5) then
         numerator = cond(epspow.eq.t1,brack_6,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d43:
   subroutine     reconstruct_d43(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group9
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group9), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_43:
      coeffs%coeffs_43%c0 = derivative(czip)
      coeffs%coeffs_43%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_43%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_43%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_43%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_43%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_43%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_43%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_43%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_43%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_43%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_43%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_43%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_43%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_43%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_43%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_43%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_43%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_43%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_43%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_43%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_43%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_43%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_43%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_43%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_43%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_43%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_43%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_43%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_43%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_43%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_43%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_43%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_43%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_43%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_43%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_43%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_43%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_43%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_43%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_43%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_43%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_43%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_43%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_43%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_43%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_43%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_43%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_43%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_43%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_43%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_43%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_43%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_43%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_43%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_43%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_43%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_43%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_43%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_43%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_43%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_43%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_43%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_43%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_43%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_43%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_43%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_43%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_43%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_43%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_43%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_43%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_43%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_43%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_43%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_43%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_43%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_43%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_43%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_43%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_43%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_43%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_43%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_43%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_43%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_43%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_43%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_43%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_43%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_43%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_43%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_43%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_43%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_43%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_43%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_43%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_43%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_43%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_43%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_43%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_43%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_43%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_43%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_43%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_43%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_43%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_43%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_43%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_43%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_43%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_43%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_43%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_43%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_43%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_43%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_43%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_43%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_43%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_43%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_43%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_43%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_43%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_43%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_43%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_43%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_43%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_43:
   end subroutine reconstruct_d43
!---#] subroutine reconstruct_d43:
end module p0_gg_hhg_d43h1l1d_qp
