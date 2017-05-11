module p0_gg_hhg_d59h1l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d59h1l1d.f90
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
   public :: derivative , reconstruct_d59
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(70) :: acd59
      complex(ki) :: brack
      acd59(1)=dotproduct(k1,qshift)
      acd59(2)=dotproduct(qshift,spvak2k1)
      acd59(3)=dotproduct(qshift,spvak2k5)
      acd59(4)=abb59(23)
      acd59(5)=abb59(13)
      acd59(6)=dotproduct(qshift,spvak2l3)
      acd59(7)=abb59(69)
      acd59(8)=abb59(70)
      acd59(9)=abb59(32)
      acd59(10)=abb59(24)
      acd59(11)=dotproduct(k2,qshift)
      acd59(12)=abb59(30)
      acd59(13)=abb59(31)
      acd59(14)=abb59(68)
      acd59(15)=abb59(79)
      acd59(16)=abb59(67)
      acd59(17)=abb59(33)
      acd59(18)=abb59(34)
      acd59(19)=dotproduct(l3,qshift)
      acd59(20)=abb59(39)
      acd59(21)=abb59(15)
      acd59(22)=abb59(25)
      acd59(23)=abb59(63)
      acd59(24)=abb59(71)
      acd59(25)=abb59(37)
      acd59(26)=dotproduct(k5,qshift)
      acd59(27)=abb59(41)
      acd59(28)=abb59(57)
      acd59(29)=abb59(61)
      acd59(30)=dotproduct(qshift,qshift)
      acd59(31)=abb59(35)
      acd59(32)=abb59(14)
      acd59(33)=abb59(80)
      acd59(34)=abb59(17)
      acd59(35)=abb59(49)
      acd59(36)=abb59(16)
      acd59(37)=abb59(10)
      acd59(38)=abb59(12)
      acd59(39)=abb59(9)
      acd59(40)=abb59(19)
      acd59(41)=abb59(29)
      acd59(42)=abb59(11)
      acd59(43)=dotproduct(qshift,spvak1k5)
      acd59(44)=abb59(26)
      acd59(45)=abb59(20)
      acd59(46)=abb59(27)
      acd59(47)=abb59(62)
      acd59(48)=dotproduct(qshift,spval3k1)
      acd59(49)=abb59(55)
      acd59(50)=dotproduct(qshift,spvak5k1)
      acd59(51)=abb59(82)
      acd59(52)=abb59(22)
      acd59(53)=abb59(52)
      acd59(54)=abb59(8)
      acd59(55)=abb59(74)
      acd59(56)=abb59(48)
      acd59(57)=abb59(45)
      acd59(58)=abb59(21)
      acd59(59)=abb59(18)
      acd59(60)=-acd59(50)*acd59(51)
      acd59(61)=-acd59(48)*acd59(49)
      acd59(62)=acd59(30)*acd59(33)
      acd59(63)=-acd59(26)*acd59(28)
      acd59(64)=-acd59(19)*acd59(22)
      acd59(65)=-acd59(11)*acd59(14)
      acd59(66)=-acd59(6)*acd59(47)
      acd59(67)=-acd59(2)*acd59(39)
      acd59(68)=-acd59(3)*acd59(46)
      acd59(60)=acd59(68)+acd59(67)+acd59(66)+acd59(65)+acd59(64)+acd59(63)+acd&
      &59(62)+acd59(61)+acd59(52)+acd59(60)
      acd59(60)=acd59(3)*acd59(60)
      acd59(61)=acd59(26)-acd59(1)
      acd59(62)=-acd59(4)*acd59(61)
      acd59(63)=acd59(30)*acd59(31)
      acd59(64)=-acd59(19)*acd59(20)
      acd59(65)=-acd59(11)*acd59(12)
      acd59(66)=-acd59(6)*acd59(40)
      acd59(62)=acd59(66)+acd59(65)+acd59(64)+acd59(63)+acd59(41)+acd59(62)
      acd59(62)=acd59(2)*acd59(62)
      acd59(63)=acd59(19)+acd59(61)
      acd59(63)=acd59(7)*acd59(63)
      acd59(64)=acd59(30)*acd59(34)
      acd59(65)=-acd59(11)*acd59(15)
      acd59(63)=acd59(65)+acd59(64)+acd59(53)+acd59(63)
      acd59(63)=acd59(6)*acd59(63)
      acd59(64)=acd59(50)*acd59(55)
      acd59(65)=acd59(48)*acd59(54)
      acd59(66)=acd59(1)*acd59(8)
      acd59(67)=-acd59(30)*acd59(35)
      acd59(68)=acd59(26)*acd59(29)
      acd59(69)=acd59(19)*acd59(23)
      acd59(70)=acd59(11)*acd59(16)
      acd59(60)=acd59(60)+acd59(62)+acd59(63)+acd59(70)+acd59(69)+acd59(68)+acd&
      &59(67)+acd59(66)+acd59(65)-acd59(56)+acd59(64)
      acd59(60)=acd59(3)*acd59(60)
      acd59(62)=acd59(43)*acd59(44)
      acd59(63)=acd59(1)*acd59(5)
      acd59(64)=-acd59(30)*acd59(32)
      acd59(65)=acd59(26)*acd59(27)
      acd59(66)=acd59(19)*acd59(21)
      acd59(67)=acd59(11)*acd59(13)
      acd59(68)=acd59(6)*acd59(42)
      acd59(69)=acd59(2)*acd59(38)
      acd59(62)=acd59(69)+acd59(68)+acd59(67)+acd59(66)+acd59(65)+acd59(64)+acd&
      &59(63)-acd59(45)+acd59(62)
      acd59(62)=acd59(2)*acd59(62)
      acd59(63)=-acd59(9)*acd59(61)
      acd59(64)=-acd59(30)*acd59(36)
      acd59(65)=acd59(19)*acd59(24)
      acd59(66)=acd59(11)*acd59(17)
      acd59(63)=acd59(66)+acd59(65)+acd59(64)-acd59(57)+acd59(63)
      acd59(63)=acd59(6)*acd59(63)
      acd59(61)=-acd59(10)*acd59(61)
      acd59(64)=-acd59(48)*acd59(58)
      acd59(65)=acd59(30)*acd59(37)
      acd59(66)=-acd59(19)*acd59(25)
      acd59(67)=-acd59(11)*acd59(18)
      brack=acd59(59)+acd59(60)+acd59(61)+acd59(62)+acd59(63)+acd59(64)+acd59(6&
      &5)+acd59(66)+acd59(67)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd59
      complex(ki) :: brack
      acd59(1)=k1(iv1)
      acd59(2)=dotproduct(qshift,spvak2k1)
      acd59(3)=dotproduct(qshift,spvak2k5)
      acd59(4)=abb59(23)
      acd59(5)=abb59(13)
      acd59(6)=dotproduct(qshift,spvak2l3)
      acd59(7)=abb59(69)
      acd59(8)=abb59(70)
      acd59(9)=abb59(32)
      acd59(10)=abb59(24)
      acd59(11)=k2(iv1)
      acd59(12)=abb59(30)
      acd59(13)=abb59(31)
      acd59(14)=abb59(68)
      acd59(15)=abb59(79)
      acd59(16)=abb59(67)
      acd59(17)=abb59(33)
      acd59(18)=abb59(34)
      acd59(19)=l3(iv1)
      acd59(20)=abb59(39)
      acd59(21)=abb59(15)
      acd59(22)=abb59(25)
      acd59(23)=abb59(63)
      acd59(24)=abb59(71)
      acd59(25)=abb59(37)
      acd59(26)=k5(iv1)
      acd59(27)=abb59(41)
      acd59(28)=abb59(57)
      acd59(29)=abb59(61)
      acd59(30)=qshift(iv1)
      acd59(31)=abb59(35)
      acd59(32)=abb59(14)
      acd59(33)=abb59(80)
      acd59(34)=abb59(17)
      acd59(35)=abb59(49)
      acd59(36)=abb59(16)
      acd59(37)=abb59(10)
      acd59(38)=spvak2k1(iv1)
      acd59(39)=dotproduct(k1,qshift)
      acd59(40)=dotproduct(k2,qshift)
      acd59(41)=dotproduct(l3,qshift)
      acd59(42)=dotproduct(k5,qshift)
      acd59(43)=dotproduct(qshift,qshift)
      acd59(44)=abb59(12)
      acd59(45)=abb59(9)
      acd59(46)=abb59(19)
      acd59(47)=abb59(29)
      acd59(48)=abb59(11)
      acd59(49)=dotproduct(qshift,spvak1k5)
      acd59(50)=abb59(26)
      acd59(51)=abb59(20)
      acd59(52)=spvak2k5(iv1)
      acd59(53)=abb59(27)
      acd59(54)=abb59(62)
      acd59(55)=dotproduct(qshift,spval3k1)
      acd59(56)=abb59(55)
      acd59(57)=dotproduct(qshift,spvak5k1)
      acd59(58)=abb59(82)
      acd59(59)=abb59(22)
      acd59(60)=abb59(52)
      acd59(61)=abb59(8)
      acd59(62)=abb59(74)
      acd59(63)=abb59(48)
      acd59(64)=spvak2l3(iv1)
      acd59(65)=abb59(45)
      acd59(66)=spvak1k5(iv1)
      acd59(67)=spval3k1(iv1)
      acd59(68)=abb59(21)
      acd59(69)=spvak5k1(iv1)
      acd59(70)=-acd59(58)*acd59(69)
      acd59(71)=-acd59(67)*acd59(56)
      acd59(72)=2.0_ki*acd59(30)
      acd59(73)=acd59(33)*acd59(72)
      acd59(74)=-acd59(26)*acd59(28)
      acd59(75)=-acd59(19)*acd59(22)
      acd59(76)=-acd59(11)*acd59(14)
      acd59(77)=-acd59(64)*acd59(54)
      acd59(78)=-acd59(38)*acd59(45)
      acd59(79)=acd59(52)*acd59(53)
      acd59(70)=-3.0_ki*acd59(79)+acd59(78)+acd59(77)+acd59(76)+acd59(75)+acd59&
      &(74)+acd59(73)+acd59(70)+acd59(71)
      acd59(70)=acd59(3)*acd59(70)
      acd59(71)=-acd59(57)*acd59(58)
      acd59(73)=-acd59(55)*acd59(56)
      acd59(74)=acd59(43)*acd59(33)
      acd59(75)=-acd59(42)*acd59(28)
      acd59(76)=-acd59(41)*acd59(22)
      acd59(77)=-acd59(40)*acd59(14)
      acd59(78)=-acd59(6)*acd59(54)
      acd59(79)=-acd59(2)*acd59(45)
      acd59(71)=acd59(79)+acd59(78)+acd59(77)+acd59(76)+acd59(75)+acd59(74)+acd&
      &59(73)+acd59(59)+acd59(71)
      acd59(71)=acd59(52)*acd59(71)
      acd59(73)=acd59(26)-acd59(1)
      acd59(74)=-acd59(4)*acd59(73)
      acd59(75)=acd59(31)*acd59(72)
      acd59(76)=-acd59(19)*acd59(20)
      acd59(77)=-acd59(11)*acd59(12)
      acd59(78)=-acd59(64)*acd59(46)
      acd59(74)=acd59(78)+acd59(77)+acd59(76)+acd59(75)+acd59(74)
      acd59(74)=acd59(2)*acd59(74)
      acd59(75)=acd59(42)-acd59(39)
      acd59(76)=acd59(4)*acd59(75)
      acd59(77)=acd59(43)*acd59(31)
      acd59(78)=acd59(41)*acd59(20)
      acd59(79)=acd59(40)*acd59(12)
      acd59(76)=-acd59(47)-acd59(77)+acd59(78)+acd59(79)+acd59(76)
      acd59(77)=-acd59(38)*acd59(76)
      acd59(78)=acd59(34)*acd59(72)
      acd59(79)=-acd59(11)*acd59(15)
      acd59(80)=acd59(19)+acd59(73)
      acd59(80)=acd59(7)*acd59(80)
      acd59(81)=-acd59(38)*acd59(46)
      acd59(78)=acd59(81)+acd59(80)+acd59(78)+acd59(79)
      acd59(78)=acd59(6)*acd59(78)
      acd59(79)=acd59(41)+acd59(75)
      acd59(79)=acd59(79)*acd59(7)
      acd59(80)=acd59(43)*acd59(34)
      acd59(81)=acd59(40)*acd59(15)
      acd59(79)=acd59(79)+acd59(60)+acd59(80)-acd59(81)
      acd59(80)=acd59(64)*acd59(79)
      acd59(81)=acd59(62)*acd59(69)
      acd59(82)=acd59(67)*acd59(61)
      acd59(83)=acd59(1)*acd59(8)
      acd59(84)=-acd59(35)*acd59(72)
      acd59(85)=acd59(26)*acd59(29)
      acd59(86)=acd59(19)*acd59(23)
      acd59(87)=acd59(11)*acd59(16)
      acd59(70)=acd59(70)+2.0_ki*acd59(71)+acd59(74)+acd59(78)+acd59(77)+acd59(&
      &80)+acd59(87)+acd59(86)+acd59(85)+acd59(84)+acd59(83)+acd59(81)+acd59(82)
      acd59(70)=acd59(3)*acd59(70)
      acd59(71)=-acd59(6)*acd59(46)
      acd59(71)=acd59(71)-acd59(76)
      acd59(71)=acd59(2)*acd59(71)
      acd59(74)=acd59(6)*acd59(79)
      acd59(76)=acd59(57)*acd59(62)
      acd59(77)=acd59(55)*acd59(61)
      acd59(78)=acd59(39)*acd59(8)
      acd59(79)=-acd59(43)*acd59(35)
      acd59(80)=acd59(42)*acd59(29)
      acd59(81)=acd59(41)*acd59(23)
      acd59(82)=acd59(40)*acd59(16)
      acd59(71)=acd59(71)+acd59(74)+acd59(82)+acd59(81)+acd59(80)+acd59(79)+acd&
      &59(78)+acd59(77)-acd59(63)+acd59(76)
      acd59(71)=acd59(52)*acd59(71)
      acd59(74)=acd59(50)*acd59(66)
      acd59(76)=acd59(1)*acd59(5)
      acd59(77)=-acd59(32)*acd59(72)
      acd59(78)=acd59(26)*acd59(27)
      acd59(79)=acd59(19)*acd59(21)
      acd59(80)=acd59(11)*acd59(13)
      acd59(81)=acd59(64)*acd59(48)
      acd59(82)=acd59(38)*acd59(44)
      acd59(74)=2.0_ki*acd59(82)+acd59(81)+acd59(80)+acd59(79)+acd59(78)+acd59(&
      &77)+acd59(74)+acd59(76)
      acd59(74)=acd59(2)*acd59(74)
      acd59(76)=acd59(50)*acd59(49)
      acd59(77)=acd59(39)*acd59(5)
      acd59(78)=-acd59(43)*acd59(32)
      acd59(79)=acd59(42)*acd59(27)
      acd59(80)=acd59(41)*acd59(21)
      acd59(81)=acd59(40)*acd59(13)
      acd59(76)=acd59(81)+acd59(80)+acd59(79)+acd59(78)+acd59(77)-acd59(51)+acd&
      &59(76)
      acd59(76)=acd59(38)*acd59(76)
      acd59(77)=-acd59(9)*acd59(73)
      acd59(78)=-acd59(36)*acd59(72)
      acd59(79)=acd59(19)*acd59(24)
      acd59(80)=acd59(11)*acd59(17)
      acd59(81)=acd59(38)*acd59(48)
      acd59(77)=acd59(81)+acd59(80)+acd59(79)+acd59(78)+acd59(77)
      acd59(77)=acd59(6)*acd59(77)
      acd59(75)=-acd59(9)*acd59(75)
      acd59(78)=-acd59(43)*acd59(36)
      acd59(79)=acd59(41)*acd59(24)
      acd59(80)=acd59(40)*acd59(17)
      acd59(75)=acd59(80)+acd59(79)+acd59(78)-acd59(65)+acd59(75)
      acd59(75)=acd59(64)*acd59(75)
      acd59(73)=-acd59(10)*acd59(73)
      acd59(78)=-acd59(67)*acd59(68)
      acd59(72)=acd59(37)*acd59(72)
      acd59(79)=-acd59(19)*acd59(25)
      acd59(80)=-acd59(11)*acd59(18)
      brack=acd59(70)+acd59(71)+acd59(72)+acd59(73)+acd59(74)+acd59(75)+acd59(7&
      &6)+acd59(77)+acd59(78)+acd59(79)+acd59(80)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd59
      complex(ki) :: brack
      acd59(1)=d(iv1,iv2)
      acd59(2)=dotproduct(qshift,spvak2k1)
      acd59(3)=dotproduct(qshift,spvak2k5)
      acd59(4)=abb59(35)
      acd59(5)=abb59(14)
      acd59(6)=abb59(80)
      acd59(7)=dotproduct(qshift,spvak2l3)
      acd59(8)=abb59(17)
      acd59(9)=abb59(49)
      acd59(10)=abb59(16)
      acd59(11)=abb59(10)
      acd59(12)=k1(iv1)
      acd59(13)=spvak2k1(iv2)
      acd59(14)=abb59(23)
      acd59(15)=abb59(13)
      acd59(16)=spvak2k5(iv2)
      acd59(17)=abb59(69)
      acd59(18)=abb59(70)
      acd59(19)=spvak2l3(iv2)
      acd59(20)=abb59(32)
      acd59(21)=k1(iv2)
      acd59(22)=spvak2k1(iv1)
      acd59(23)=spvak2k5(iv1)
      acd59(24)=spvak2l3(iv1)
      acd59(25)=k2(iv1)
      acd59(26)=abb59(30)
      acd59(27)=abb59(31)
      acd59(28)=abb59(68)
      acd59(29)=abb59(79)
      acd59(30)=abb59(67)
      acd59(31)=abb59(33)
      acd59(32)=k2(iv2)
      acd59(33)=l3(iv1)
      acd59(34)=abb59(39)
      acd59(35)=abb59(15)
      acd59(36)=abb59(25)
      acd59(37)=abb59(63)
      acd59(38)=abb59(71)
      acd59(39)=l3(iv2)
      acd59(40)=k5(iv1)
      acd59(41)=abb59(41)
      acd59(42)=abb59(57)
      acd59(43)=abb59(61)
      acd59(44)=k5(iv2)
      acd59(45)=qshift(iv1)
      acd59(46)=qshift(iv2)
      acd59(47)=abb59(12)
      acd59(48)=dotproduct(k1,qshift)
      acd59(49)=dotproduct(k2,qshift)
      acd59(50)=dotproduct(l3,qshift)
      acd59(51)=dotproduct(k5,qshift)
      acd59(52)=dotproduct(qshift,qshift)
      acd59(53)=abb59(9)
      acd59(54)=abb59(19)
      acd59(55)=abb59(29)
      acd59(56)=abb59(11)
      acd59(57)=spvak1k5(iv2)
      acd59(58)=abb59(26)
      acd59(59)=spvak1k5(iv1)
      acd59(60)=abb59(27)
      acd59(61)=abb59(62)
      acd59(62)=dotproduct(qshift,spval3k1)
      acd59(63)=abb59(55)
      acd59(64)=dotproduct(qshift,spvak5k1)
      acd59(65)=abb59(82)
      acd59(66)=abb59(22)
      acd59(67)=abb59(52)
      acd59(68)=spval3k1(iv2)
      acd59(69)=abb59(8)
      acd59(70)=spvak5k1(iv2)
      acd59(71)=abb59(74)
      acd59(72)=spval3k1(iv1)
      acd59(73)=spvak5k1(iv1)
      acd59(74)=-acd59(65)*acd59(64)
      acd59(75)=-acd59(63)*acd59(62)
      acd59(76)=acd59(52)*acd59(6)
      acd59(77)=-acd59(51)*acd59(42)
      acd59(78)=-acd59(50)*acd59(36)
      acd59(79)=-acd59(49)*acd59(28)
      acd59(80)=-acd59(7)*acd59(61)
      acd59(81)=-acd59(2)*acd59(53)
      acd59(82)=acd59(3)*acd59(60)
      acd59(74)=-3.0_ki*acd59(82)+acd59(81)+acd59(80)+acd59(79)+acd59(78)+acd59&
      &(77)+acd59(76)+acd59(75)+acd59(66)+acd59(74)
      acd59(74)=acd59(23)*acd59(74)
      acd59(75)=-acd59(65)*acd59(73)
      acd59(76)=-acd59(63)*acd59(72)
      acd59(77)=2.0_ki*acd59(45)
      acd59(78)=acd59(6)*acd59(77)
      acd59(79)=-acd59(40)*acd59(42)
      acd59(80)=-acd59(33)*acd59(36)
      acd59(81)=-acd59(25)*acd59(28)
      acd59(82)=-acd59(24)*acd59(61)
      acd59(83)=-acd59(22)*acd59(53)
      acd59(75)=acd59(83)+acd59(82)+acd59(81)+acd59(80)+acd59(79)+acd59(78)+acd&
      &59(75)+acd59(76)
      acd59(76)=2.0_ki*acd59(3)
      acd59(75)=acd59(75)*acd59(76)
      acd59(78)=acd59(34)*acd59(50)
      acd59(79)=acd59(26)*acd59(49)
      acd59(80)=acd59(4)*acd59(52)
      acd59(81)=acd59(7)*acd59(54)
      acd59(82)=acd59(51)-acd59(48)
      acd59(83)=acd59(82)*acd59(14)
      acd59(78)=acd59(78)+acd59(79)-acd59(80)+acd59(81)+acd59(83)-acd59(55)
      acd59(79)=-acd59(22)*acd59(78)
      acd59(80)=acd59(33)*acd59(34)
      acd59(81)=acd59(25)*acd59(26)
      acd59(83)=acd59(77)*acd59(4)
      acd59(84)=acd59(40)-acd59(12)
      acd59(85)=acd59(84)*acd59(14)
      acd59(80)=-acd59(80)-acd59(81)+acd59(83)-acd59(85)
      acd59(81)=acd59(2)*acd59(80)
      acd59(82)=acd59(82)+acd59(50)
      acd59(82)=acd59(82)*acd59(17)
      acd59(83)=acd59(29)*acd59(49)
      acd59(85)=acd59(8)*acd59(52)
      acd59(86)=acd59(2)*acd59(54)
      acd59(82)=-acd59(82)+acd59(83)-acd59(85)+acd59(86)-acd59(67)
      acd59(83)=-acd59(24)*acd59(82)
      acd59(85)=acd59(25)*acd59(29)
      acd59(86)=acd59(77)*acd59(8)
      acd59(85)=acd59(85)-acd59(86)
      acd59(86)=-acd59(7)*acd59(85)
      acd59(87)=acd59(84)+acd59(33)
      acd59(88)=acd59(17)*acd59(7)
      acd59(89)=acd59(87)*acd59(88)
      acd59(90)=acd59(71)*acd59(73)
      acd59(91)=acd59(69)*acd59(72)
      acd59(92)=acd59(12)*acd59(18)
      acd59(93)=-acd59(9)*acd59(77)
      acd59(94)=acd59(40)*acd59(43)
      acd59(95)=acd59(33)*acd59(37)
      acd59(96)=acd59(25)*acd59(30)
      acd59(74)=2.0_ki*acd59(74)+acd59(75)+acd59(79)+acd59(83)+acd59(89)+acd59(&
      &81)+acd59(86)+acd59(96)+acd59(95)+acd59(94)+acd59(93)+acd59(92)+acd59(90&
      &)+acd59(91)
      acd59(74)=acd59(16)*acd59(74)
      acd59(75)=-acd59(65)*acd59(70)
      acd59(79)=-acd59(63)*acd59(68)
      acd59(81)=2.0_ki*acd59(46)
      acd59(83)=acd59(6)*acd59(81)
      acd59(86)=-acd59(44)*acd59(42)
      acd59(89)=-acd59(39)*acd59(36)
      acd59(90)=-acd59(32)*acd59(28)
      acd59(91)=-acd59(19)*acd59(61)
      acd59(92)=-acd59(13)*acd59(53)
      acd59(75)=acd59(92)+acd59(91)+acd59(90)+acd59(89)+acd59(86)+acd59(83)+acd&
      &59(75)+acd59(79)
      acd59(75)=acd59(75)*acd59(76)
      acd59(78)=-acd59(13)*acd59(78)
      acd59(79)=acd59(39)*acd59(34)
      acd59(83)=acd59(32)*acd59(26)
      acd59(86)=acd59(81)*acd59(4)
      acd59(89)=acd59(44)-acd59(21)
      acd59(90)=acd59(89)*acd59(14)
      acd59(79)=-acd59(79)-acd59(83)+acd59(86)-acd59(90)
      acd59(83)=acd59(2)*acd59(79)
      acd59(82)=-acd59(19)*acd59(82)
      acd59(86)=acd59(32)*acd59(29)
      acd59(90)=acd59(81)*acd59(8)
      acd59(86)=acd59(86)-acd59(90)
      acd59(90)=-acd59(7)*acd59(86)
      acd59(91)=acd59(89)+acd59(39)
      acd59(88)=acd59(91)*acd59(88)
      acd59(92)=acd59(70)*acd59(71)
      acd59(93)=acd59(68)*acd59(69)
      acd59(94)=acd59(21)*acd59(18)
      acd59(95)=-acd59(9)*acd59(81)
      acd59(96)=acd59(44)*acd59(43)
      acd59(97)=acd59(39)*acd59(37)
      acd59(98)=acd59(32)*acd59(30)
      acd59(75)=acd59(75)+acd59(78)+acd59(82)+acd59(88)+acd59(83)+acd59(90)+acd&
      &59(98)+acd59(97)+acd59(96)+acd59(95)+acd59(94)+acd59(92)+acd59(93)
      acd59(75)=acd59(23)*acd59(75)
      acd59(78)=acd59(58)*acd59(59)
      acd59(82)=acd59(12)*acd59(15)
      acd59(83)=-acd59(5)*acd59(77)
      acd59(88)=acd59(40)*acd59(41)
      acd59(90)=acd59(33)*acd59(35)
      acd59(92)=acd59(25)*acd59(27)
      acd59(93)=acd59(24)*acd59(56)
      acd59(94)=acd59(22)*acd59(47)
      acd59(78)=2.0_ki*acd59(94)+acd59(93)+acd59(92)+acd59(90)+acd59(88)+acd59(&
      &83)+acd59(78)+acd59(82)
      acd59(78)=acd59(13)*acd59(78)
      acd59(82)=acd59(58)*acd59(57)
      acd59(83)=acd59(21)*acd59(15)
      acd59(88)=-acd59(5)*acd59(81)
      acd59(90)=acd59(44)*acd59(41)
      acd59(92)=acd59(39)*acd59(35)
      acd59(93)=acd59(32)*acd59(27)
      acd59(94)=acd59(19)*acd59(56)
      acd59(82)=acd59(94)+acd59(93)+acd59(92)+acd59(90)+acd59(88)+acd59(82)+acd&
      &59(83)
      acd59(82)=acd59(22)*acd59(82)
      acd59(83)=-acd59(19)*acd59(54)
      acd59(79)=acd59(83)+acd59(79)
      acd59(79)=acd59(22)*acd59(79)
      acd59(83)=-acd59(24)*acd59(54)
      acd59(80)=acd59(83)+acd59(80)
      acd59(80)=acd59(13)*acd59(80)
      acd59(83)=acd59(7)*acd59(8)
      acd59(88)=acd59(2)*acd59(4)
      acd59(83)=acd59(88)-acd59(9)+acd59(83)
      acd59(76)=acd59(6)*acd59(76)
      acd59(76)=acd59(76)+2.0_ki*acd59(83)
      acd59(76)=acd59(1)*acd59(76)
      acd59(83)=acd59(17)*acd59(91)
      acd59(83)=acd59(83)-acd59(86)
      acd59(83)=acd59(24)*acd59(83)
      acd59(86)=acd59(17)*acd59(87)
      acd59(85)=acd59(86)-acd59(85)
      acd59(85)=acd59(19)*acd59(85)
      acd59(76)=acd59(80)+acd59(79)+acd59(85)+acd59(83)+acd59(76)
      acd59(76)=acd59(3)*acd59(76)
      acd59(79)=-acd59(20)*acd59(89)
      acd59(80)=-acd59(10)*acd59(81)
      acd59(81)=acd59(39)*acd59(38)
      acd59(83)=acd59(32)*acd59(31)
      acd59(79)=acd59(83)+acd59(81)+acd59(80)+acd59(79)
      acd59(79)=acd59(24)*acd59(79)
      acd59(80)=-acd59(20)*acd59(84)
      acd59(77)=-acd59(10)*acd59(77)
      acd59(81)=acd59(33)*acd59(38)
      acd59(83)=acd59(25)*acd59(31)
      acd59(77)=acd59(83)+acd59(81)+acd59(77)+acd59(80)
      acd59(77)=acd59(19)*acd59(77)
      acd59(80)=-acd59(7)*acd59(10)
      acd59(81)=-acd59(2)*acd59(5)
      acd59(80)=acd59(81)+acd59(11)+acd59(80)
      acd59(80)=acd59(1)*acd59(80)
      brack=acd59(74)+acd59(75)+acd59(76)+acd59(77)+acd59(78)+acd59(79)+2.0_ki*&
      &acd59(80)+acd59(82)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd59
      complex(ki) :: brack
      acd59(1)=d(iv1,iv2)
      acd59(2)=spvak2k1(iv3)
      acd59(3)=dotproduct(qshift,spvak2k5)
      acd59(4)=abb59(35)
      acd59(5)=abb59(14)
      acd59(6)=spvak2k5(iv3)
      acd59(7)=dotproduct(qshift,spvak2k1)
      acd59(8)=abb59(80)
      acd59(9)=dotproduct(qshift,spvak2l3)
      acd59(10)=abb59(17)
      acd59(11)=abb59(49)
      acd59(12)=spvak2l3(iv3)
      acd59(13)=abb59(16)
      acd59(14)=d(iv1,iv3)
      acd59(15)=spvak2k1(iv2)
      acd59(16)=spvak2k5(iv2)
      acd59(17)=spvak2l3(iv2)
      acd59(18)=d(iv2,iv3)
      acd59(19)=spvak2k1(iv1)
      acd59(20)=spvak2k5(iv1)
      acd59(21)=spvak2l3(iv1)
      acd59(22)=k1(iv1)
      acd59(23)=abb59(23)
      acd59(24)=abb59(69)
      acd59(25)=k1(iv2)
      acd59(26)=k1(iv3)
      acd59(27)=k2(iv1)
      acd59(28)=abb59(30)
      acd59(29)=abb59(68)
      acd59(30)=abb59(79)
      acd59(31)=k2(iv2)
      acd59(32)=k2(iv3)
      acd59(33)=l3(iv1)
      acd59(34)=abb59(39)
      acd59(35)=abb59(25)
      acd59(36)=l3(iv2)
      acd59(37)=l3(iv3)
      acd59(38)=k5(iv1)
      acd59(39)=abb59(57)
      acd59(40)=k5(iv2)
      acd59(41)=k5(iv3)
      acd59(42)=qshift(iv1)
      acd59(43)=qshift(iv2)
      acd59(44)=qshift(iv3)
      acd59(45)=abb59(9)
      acd59(46)=abb59(19)
      acd59(47)=abb59(27)
      acd59(48)=abb59(62)
      acd59(49)=spval3k1(iv3)
      acd59(50)=abb59(55)
      acd59(51)=spvak5k1(iv3)
      acd59(52)=abb59(82)
      acd59(53)=spval3k1(iv2)
      acd59(54)=spvak5k1(iv2)
      acd59(55)=spval3k1(iv1)
      acd59(56)=spvak5k1(iv1)
      acd59(57)=-acd59(52)*acd59(56)
      acd59(58)=-acd59(50)*acd59(55)
      acd59(59)=-acd59(38)*acd59(39)
      acd59(60)=-acd59(33)*acd59(35)
      acd59(61)=-acd59(27)*acd59(29)
      acd59(62)=2.0_ki*acd59(8)
      acd59(63)=acd59(42)*acd59(62)
      acd59(64)=-acd59(21)*acd59(48)
      acd59(65)=-acd59(19)*acd59(45)
      acd59(66)=acd59(20)*acd59(47)
      acd59(57)=-3.0_ki*acd59(66)+acd59(65)+acd59(64)+acd59(63)+acd59(61)+acd59&
      &(60)+acd59(59)+acd59(57)+acd59(58)
      acd59(57)=acd59(16)*acd59(57)
      acd59(58)=acd59(10)*acd59(9)
      acd59(59)=acd59(4)*acd59(7)
      acd59(60)=acd59(62)*acd59(3)
      acd59(58)=acd59(58)+acd59(59)+acd59(60)-acd59(11)
      acd59(59)=acd59(1)*acd59(58)
      acd59(57)=acd59(59)+acd59(57)
      acd59(59)=-acd59(52)*acd59(54)
      acd59(60)=-acd59(50)*acd59(53)
      acd59(61)=-acd59(40)*acd59(39)
      acd59(63)=-acd59(36)*acd59(35)
      acd59(64)=-acd59(31)*acd59(29)
      acd59(65)=acd59(43)*acd59(62)
      acd59(66)=-acd59(17)*acd59(48)
      acd59(67)=-acd59(15)*acd59(45)
      acd59(59)=acd59(67)+acd59(66)+acd59(65)+acd59(64)+acd59(63)+acd59(61)+acd&
      &59(59)+acd59(60)
      acd59(60)=2.0_ki*acd59(20)
      acd59(59)=acd59(59)*acd59(60)
      acd59(61)=acd59(34)*acd59(33)
      acd59(63)=acd59(28)*acd59(27)
      acd59(64)=acd59(21)*acd59(46)
      acd59(65)=2.0_ki*acd59(4)
      acd59(66)=acd59(65)*acd59(42)
      acd59(67)=acd59(38)-acd59(22)
      acd59(68)=acd59(67)*acd59(23)
      acd59(61)=-acd59(61)-acd59(63)-acd59(64)+acd59(66)-acd59(68)
      acd59(63)=acd59(15)*acd59(61)
      acd59(64)=acd59(34)*acd59(36)
      acd59(66)=acd59(28)*acd59(31)
      acd59(68)=acd59(65)*acd59(43)
      acd59(69)=acd59(40)-acd59(25)
      acd59(70)=acd59(69)*acd59(23)
      acd59(64)=acd59(70)+acd59(64)+acd59(66)-acd59(68)
      acd59(66)=-acd59(19)*acd59(64)
      acd59(68)=acd59(30)*acd59(27)
      acd59(70)=acd59(19)*acd59(46)
      acd59(71)=2.0_ki*acd59(10)
      acd59(72)=acd59(71)*acd59(42)
      acd59(68)=-acd59(72)+acd59(68)+acd59(70)
      acd59(70)=-acd59(17)*acd59(68)
      acd59(72)=acd59(30)*acd59(31)
      acd59(73)=acd59(71)*acd59(43)
      acd59(72)=acd59(72)-acd59(73)
      acd59(73)=-acd59(21)*acd59(72)
      acd59(69)=acd59(69)+acd59(36)
      acd59(74)=acd59(21)*acd59(69)
      acd59(67)=acd59(67)+acd59(33)
      acd59(75)=acd59(17)*acd59(67)
      acd59(74)=acd59(74)+acd59(75)
      acd59(74)=acd59(24)*acd59(74)
      acd59(57)=acd59(59)+acd59(74)+acd59(63)+acd59(70)+acd59(66)+acd59(73)+2.0&
      &_ki*acd59(57)
      acd59(57)=acd59(6)*acd59(57)
      acd59(59)=-acd59(52)*acd59(51)
      acd59(63)=-acd59(50)*acd59(49)
      acd59(66)=-acd59(41)*acd59(39)
      acd59(70)=-acd59(37)*acd59(35)
      acd59(73)=-acd59(32)*acd59(29)
      acd59(62)=acd59(44)*acd59(62)
      acd59(74)=-acd59(12)*acd59(48)
      acd59(75)=-acd59(2)*acd59(45)
      acd59(59)=acd59(75)+acd59(74)+acd59(62)+acd59(73)+acd59(70)+acd59(66)+acd&
      &59(59)+acd59(63)
      acd59(59)=acd59(59)*acd59(60)
      acd59(60)=acd59(2)*acd59(61)
      acd59(61)=acd59(34)*acd59(37)
      acd59(62)=acd59(28)*acd59(32)
      acd59(63)=acd59(65)*acd59(44)
      acd59(65)=acd59(41)-acd59(26)
      acd59(66)=acd59(65)*acd59(23)
      acd59(61)=acd59(66)+acd59(61)+acd59(62)-acd59(63)
      acd59(62)=-acd59(19)*acd59(61)
      acd59(63)=acd59(14)*acd59(58)
      acd59(66)=-acd59(12)*acd59(68)
      acd59(68)=acd59(30)*acd59(32)
      acd59(70)=acd59(71)*acd59(44)
      acd59(68)=acd59(68)-acd59(70)
      acd59(70)=-acd59(21)*acd59(68)
      acd59(65)=acd59(65)+acd59(37)
      acd59(71)=acd59(21)*acd59(65)
      acd59(67)=acd59(12)*acd59(67)
      acd59(67)=acd59(71)+acd59(67)
      acd59(67)=acd59(24)*acd59(67)
      acd59(59)=acd59(59)+acd59(67)+acd59(60)+acd59(66)+acd59(62)+2.0_ki*acd59(&
      &63)+acd59(70)
      acd59(59)=acd59(16)*acd59(59)
      acd59(60)=-acd59(15)*acd59(61)
      acd59(61)=-acd59(17)*acd59(46)
      acd59(61)=acd59(61)-acd59(64)
      acd59(61)=acd59(2)*acd59(61)
      acd59(58)=acd59(18)*acd59(58)
      acd59(62)=-acd59(17)*acd59(68)
      acd59(63)=-acd59(15)*acd59(46)
      acd59(63)=acd59(63)-acd59(72)
      acd59(63)=acd59(12)*acd59(63)
      acd59(64)=acd59(17)*acd59(65)
      acd59(65)=acd59(12)*acd59(69)
      acd59(64)=acd59(64)+acd59(65)
      acd59(64)=acd59(24)*acd59(64)
      acd59(58)=acd59(64)+acd59(61)+acd59(63)+acd59(60)+2.0_ki*acd59(58)+acd59(&
      &62)
      acd59(58)=acd59(20)*acd59(58)
      acd59(60)=acd59(21)*acd59(18)
      acd59(61)=acd59(17)*acd59(14)
      acd59(62)=acd59(12)*acd59(1)
      acd59(60)=acd59(62)+acd59(61)+acd59(60)
      acd59(61)=acd59(10)*acd59(3)
      acd59(61)=acd59(61)-acd59(13)
      acd59(60)=acd59(61)*acd59(60)
      acd59(61)=acd59(19)*acd59(18)
      acd59(62)=acd59(15)*acd59(14)
      acd59(63)=acd59(2)*acd59(1)
      acd59(61)=acd59(63)+acd59(62)+acd59(61)
      acd59(62)=acd59(4)*acd59(3)
      acd59(62)=acd59(62)-acd59(5)
      acd59(61)=acd59(62)*acd59(61)
      acd59(60)=acd59(61)+acd59(60)
      brack=acd59(57)+acd59(58)+acd59(59)+2.0_ki*acd59(60)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd59
      complex(ki) :: brack
      acd59(1)=d(iv1,iv2)
      acd59(2)=spvak2k1(iv3)
      acd59(3)=spvak2k5(iv4)
      acd59(4)=abb59(35)
      acd59(5)=spvak2k1(iv4)
      acd59(6)=spvak2k5(iv3)
      acd59(7)=abb59(80)
      acd59(8)=spvak2l3(iv4)
      acd59(9)=abb59(17)
      acd59(10)=spvak2l3(iv3)
      acd59(11)=d(iv1,iv3)
      acd59(12)=spvak2k1(iv2)
      acd59(13)=spvak2k5(iv2)
      acd59(14)=spvak2l3(iv2)
      acd59(15)=d(iv1,iv4)
      acd59(16)=d(iv2,iv3)
      acd59(17)=spvak2k1(iv1)
      acd59(18)=spvak2k5(iv1)
      acd59(19)=spvak2l3(iv1)
      acd59(20)=d(iv2,iv4)
      acd59(21)=d(iv3,iv4)
      acd59(22)=acd59(1)*acd59(3)
      acd59(23)=acd59(15)*acd59(13)
      acd59(24)=acd59(20)*acd59(18)
      acd59(22)=acd59(22)+acd59(23)+acd59(24)
      acd59(23)=acd59(2)*acd59(22)
      acd59(24)=acd59(11)*acd59(3)
      acd59(25)=acd59(15)*acd59(6)
      acd59(26)=acd59(21)*acd59(18)
      acd59(24)=acd59(26)+acd59(24)+acd59(25)
      acd59(25)=acd59(12)*acd59(24)
      acd59(27)=acd59(16)*acd59(3)
      acd59(28)=acd59(20)*acd59(6)
      acd59(29)=acd59(21)*acd59(13)
      acd59(27)=acd59(29)+acd59(27)+acd59(28)
      acd59(28)=acd59(17)*acd59(27)
      acd59(29)=acd59(11)*acd59(13)
      acd59(30)=acd59(16)*acd59(18)
      acd59(29)=acd59(29)+acd59(30)
      acd59(30)=acd59(1)*acd59(6)
      acd59(30)=acd59(29)+acd59(30)
      acd59(31)=acd59(5)*acd59(30)
      acd59(23)=acd59(28)+acd59(25)+acd59(31)+acd59(23)
      acd59(23)=acd59(4)*acd59(23)
      acd59(25)=acd59(10)*acd59(22)
      acd59(24)=acd59(14)*acd59(24)
      acd59(27)=acd59(19)*acd59(27)
      acd59(28)=acd59(8)*acd59(30)
      acd59(24)=acd59(27)+acd59(24)+acd59(25)+acd59(28)
      acd59(24)=acd59(9)*acd59(24)
      acd59(22)=acd59(6)*acd59(22)
      acd59(25)=acd59(3)*acd59(29)
      acd59(26)=acd59(13)*acd59(26)
      acd59(22)=acd59(26)+acd59(22)+acd59(25)
      acd59(22)=acd59(7)*acd59(22)
      acd59(22)=2.0_ki*acd59(22)+acd59(24)+acd59(23)
      brack=2.0_ki*acd59(22)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd59
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd59h1_qp
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
      qshift = -k3
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
!---#[ subroutine reconstruct_d59:
   subroutine     reconstruct_d59(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_59:
      coeffs%coeffs_59%c0 = derivative(czip)
      coeffs%coeffs_59%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_59%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_59%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_59%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_59%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_59%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_59%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_59%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_59%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_59%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_59%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_59%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_59%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_59%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_59%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_59%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_59%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_59%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_59%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_59%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_59%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_59%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_59%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_59%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_59%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_59%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_59%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_59%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_59%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_59%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_59%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_59%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_59%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_59%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_59%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_59%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_59%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_59%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_59%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_59%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_59%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_59%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_59%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_59%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_59%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_59%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_59%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_59%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_59%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_59%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_59%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_59%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_59%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_59%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_59%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_59%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_59%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_59%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_59%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_59%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_59%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_59%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_59%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_59%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_59%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_59%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_59%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_59%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_59%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_59%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_59%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_59%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_59%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_59%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_59%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_59%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_59%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_59%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_59%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_59%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_59%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_59%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_59%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_59%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_59%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_59%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_59%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_59%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_59%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_59%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_59%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_59%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_59%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_59%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_59%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_59%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_59%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_59%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_59%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_59%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_59%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_59%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_59%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_59%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_59%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_59%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_59%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_59%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_59%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_59%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_59%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_59%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_59%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_59%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_59%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_59%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_59%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_59%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_59%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_59%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_59%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_59%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_59%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_59%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_59%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_59:
   end subroutine reconstruct_d59
!---#] subroutine reconstruct_d59:
end module p0_gg_hhg_d59h1l1d_qp
