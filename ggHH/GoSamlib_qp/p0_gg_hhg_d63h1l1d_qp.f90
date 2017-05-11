module p0_gg_hhg_d63h1l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d63h1l1d.f90
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
   public :: derivative , reconstruct_d63
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(70) :: acd63
      complex(ki) :: brack
      acd63(1)=dotproduct(k1,qshift)
      acd63(2)=dotproduct(qshift,spvak2k1)
      acd63(3)=dotproduct(qshift,spvak2k5)
      acd63(4)=abb63(23)
      acd63(5)=abb63(13)
      acd63(6)=dotproduct(qshift,spvak2l4)
      acd63(7)=abb63(69)
      acd63(8)=abb63(70)
      acd63(9)=abb63(32)
      acd63(10)=abb63(24)
      acd63(11)=dotproduct(k2,qshift)
      acd63(12)=abb63(30)
      acd63(13)=abb63(31)
      acd63(14)=abb63(68)
      acd63(15)=abb63(79)
      acd63(16)=abb63(67)
      acd63(17)=abb63(33)
      acd63(18)=abb63(34)
      acd63(19)=dotproduct(l4,qshift)
      acd63(20)=abb63(39)
      acd63(21)=abb63(15)
      acd63(22)=abb63(25)
      acd63(23)=abb63(63)
      acd63(24)=abb63(71)
      acd63(25)=abb63(37)
      acd63(26)=dotproduct(k5,qshift)
      acd63(27)=abb63(41)
      acd63(28)=abb63(57)
      acd63(29)=abb63(61)
      acd63(30)=dotproduct(qshift,qshift)
      acd63(31)=abb63(35)
      acd63(32)=abb63(14)
      acd63(33)=abb63(80)
      acd63(34)=abb63(17)
      acd63(35)=abb63(49)
      acd63(36)=abb63(16)
      acd63(37)=abb63(10)
      acd63(38)=abb63(12)
      acd63(39)=abb63(9)
      acd63(40)=abb63(19)
      acd63(41)=abb63(29)
      acd63(42)=abb63(11)
      acd63(43)=dotproduct(qshift,spvak1k5)
      acd63(44)=abb63(26)
      acd63(45)=abb63(20)
      acd63(46)=abb63(27)
      acd63(47)=abb63(62)
      acd63(48)=dotproduct(qshift,spval4k1)
      acd63(49)=abb63(55)
      acd63(50)=dotproduct(qshift,spvak5k1)
      acd63(51)=abb63(82)
      acd63(52)=abb63(22)
      acd63(53)=abb63(52)
      acd63(54)=abb63(8)
      acd63(55)=abb63(74)
      acd63(56)=abb63(48)
      acd63(57)=abb63(45)
      acd63(58)=abb63(21)
      acd63(59)=abb63(18)
      acd63(60)=-acd63(50)*acd63(51)
      acd63(61)=-acd63(48)*acd63(49)
      acd63(62)=acd63(30)*acd63(33)
      acd63(63)=-acd63(26)*acd63(28)
      acd63(64)=-acd63(19)*acd63(22)
      acd63(65)=-acd63(11)*acd63(14)
      acd63(66)=-acd63(6)*acd63(47)
      acd63(67)=-acd63(2)*acd63(39)
      acd63(68)=-acd63(3)*acd63(46)
      acd63(60)=acd63(68)+acd63(67)+acd63(66)+acd63(65)+acd63(64)+acd63(63)+acd&
      &63(62)+acd63(61)+acd63(52)+acd63(60)
      acd63(60)=acd63(3)*acd63(60)
      acd63(61)=acd63(26)-acd63(1)
      acd63(62)=-acd63(4)*acd63(61)
      acd63(63)=acd63(30)*acd63(31)
      acd63(64)=-acd63(19)*acd63(20)
      acd63(65)=-acd63(11)*acd63(12)
      acd63(66)=-acd63(6)*acd63(40)
      acd63(62)=acd63(66)+acd63(65)+acd63(64)+acd63(63)+acd63(41)+acd63(62)
      acd63(62)=acd63(2)*acd63(62)
      acd63(63)=acd63(19)+acd63(61)
      acd63(63)=acd63(7)*acd63(63)
      acd63(64)=acd63(30)*acd63(34)
      acd63(65)=-acd63(11)*acd63(15)
      acd63(63)=acd63(65)+acd63(64)+acd63(53)+acd63(63)
      acd63(63)=acd63(6)*acd63(63)
      acd63(64)=acd63(50)*acd63(55)
      acd63(65)=acd63(48)*acd63(54)
      acd63(66)=acd63(1)*acd63(8)
      acd63(67)=-acd63(30)*acd63(35)
      acd63(68)=acd63(26)*acd63(29)
      acd63(69)=acd63(19)*acd63(23)
      acd63(70)=acd63(11)*acd63(16)
      acd63(60)=acd63(60)+acd63(62)+acd63(63)+acd63(70)+acd63(69)+acd63(68)+acd&
      &63(67)+acd63(66)+acd63(65)-acd63(56)+acd63(64)
      acd63(60)=acd63(3)*acd63(60)
      acd63(62)=acd63(43)*acd63(44)
      acd63(63)=acd63(1)*acd63(5)
      acd63(64)=-acd63(30)*acd63(32)
      acd63(65)=acd63(26)*acd63(27)
      acd63(66)=acd63(19)*acd63(21)
      acd63(67)=acd63(11)*acd63(13)
      acd63(68)=acd63(6)*acd63(42)
      acd63(69)=acd63(2)*acd63(38)
      acd63(62)=acd63(69)+acd63(68)+acd63(67)+acd63(66)+acd63(65)+acd63(64)+acd&
      &63(63)-acd63(45)+acd63(62)
      acd63(62)=acd63(2)*acd63(62)
      acd63(63)=-acd63(9)*acd63(61)
      acd63(64)=-acd63(30)*acd63(36)
      acd63(65)=acd63(19)*acd63(24)
      acd63(66)=acd63(11)*acd63(17)
      acd63(63)=acd63(66)+acd63(65)+acd63(64)-acd63(57)+acd63(63)
      acd63(63)=acd63(6)*acd63(63)
      acd63(61)=-acd63(10)*acd63(61)
      acd63(64)=-acd63(48)*acd63(58)
      acd63(65)=acd63(30)*acd63(37)
      acd63(66)=-acd63(19)*acd63(25)
      acd63(67)=-acd63(11)*acd63(18)
      brack=acd63(59)+acd63(60)+acd63(61)+acd63(62)+acd63(63)+acd63(64)+acd63(6&
      &5)+acd63(66)+acd63(67)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd63
      complex(ki) :: brack
      acd63(1)=k1(iv1)
      acd63(2)=dotproduct(qshift,spvak2k1)
      acd63(3)=dotproduct(qshift,spvak2k5)
      acd63(4)=abb63(23)
      acd63(5)=abb63(13)
      acd63(6)=dotproduct(qshift,spvak2l4)
      acd63(7)=abb63(69)
      acd63(8)=abb63(70)
      acd63(9)=abb63(32)
      acd63(10)=abb63(24)
      acd63(11)=k2(iv1)
      acd63(12)=abb63(30)
      acd63(13)=abb63(31)
      acd63(14)=abb63(68)
      acd63(15)=abb63(79)
      acd63(16)=abb63(67)
      acd63(17)=abb63(33)
      acd63(18)=abb63(34)
      acd63(19)=l4(iv1)
      acd63(20)=abb63(39)
      acd63(21)=abb63(15)
      acd63(22)=abb63(25)
      acd63(23)=abb63(63)
      acd63(24)=abb63(71)
      acd63(25)=abb63(37)
      acd63(26)=k5(iv1)
      acd63(27)=abb63(41)
      acd63(28)=abb63(57)
      acd63(29)=abb63(61)
      acd63(30)=qshift(iv1)
      acd63(31)=abb63(35)
      acd63(32)=abb63(14)
      acd63(33)=abb63(80)
      acd63(34)=abb63(17)
      acd63(35)=abb63(49)
      acd63(36)=abb63(16)
      acd63(37)=abb63(10)
      acd63(38)=spvak2k1(iv1)
      acd63(39)=dotproduct(k1,qshift)
      acd63(40)=dotproduct(k2,qshift)
      acd63(41)=dotproduct(l4,qshift)
      acd63(42)=dotproduct(k5,qshift)
      acd63(43)=dotproduct(qshift,qshift)
      acd63(44)=abb63(12)
      acd63(45)=abb63(9)
      acd63(46)=abb63(19)
      acd63(47)=abb63(29)
      acd63(48)=abb63(11)
      acd63(49)=dotproduct(qshift,spvak1k5)
      acd63(50)=abb63(26)
      acd63(51)=abb63(20)
      acd63(52)=spvak2k5(iv1)
      acd63(53)=abb63(27)
      acd63(54)=abb63(62)
      acd63(55)=dotproduct(qshift,spval4k1)
      acd63(56)=abb63(55)
      acd63(57)=dotproduct(qshift,spvak5k1)
      acd63(58)=abb63(82)
      acd63(59)=abb63(22)
      acd63(60)=abb63(52)
      acd63(61)=abb63(8)
      acd63(62)=abb63(74)
      acd63(63)=abb63(48)
      acd63(64)=spvak2l4(iv1)
      acd63(65)=abb63(45)
      acd63(66)=spvak1k5(iv1)
      acd63(67)=spval4k1(iv1)
      acd63(68)=abb63(21)
      acd63(69)=spvak5k1(iv1)
      acd63(70)=acd63(58)*acd63(69)
      acd63(71)=acd63(67)*acd63(56)
      acd63(72)=2.0_ki*acd63(30)
      acd63(73)=-acd63(33)*acd63(72)
      acd63(74)=acd63(26)*acd63(28)
      acd63(75)=acd63(19)*acd63(22)
      acd63(76)=acd63(11)*acd63(14)
      acd63(77)=acd63(64)*acd63(54)
      acd63(78)=acd63(38)*acd63(45)
      acd63(79)=acd63(52)*acd63(53)
      acd63(70)=3.0_ki*acd63(79)+acd63(78)+acd63(77)+acd63(76)+acd63(75)+acd63(&
      &74)+acd63(73)+acd63(70)+acd63(71)
      acd63(70)=acd63(3)*acd63(70)
      acd63(71)=acd63(57)*acd63(58)
      acd63(73)=acd63(55)*acd63(56)
      acd63(74)=-acd63(43)*acd63(33)
      acd63(75)=acd63(42)*acd63(28)
      acd63(76)=acd63(41)*acd63(22)
      acd63(77)=acd63(40)*acd63(14)
      acd63(78)=acd63(6)*acd63(54)
      acd63(79)=acd63(2)*acd63(45)
      acd63(71)=acd63(79)+acd63(78)+acd63(77)+acd63(76)+acd63(75)+acd63(74)+acd&
      &63(73)-acd63(59)+acd63(71)
      acd63(71)=acd63(52)*acd63(71)
      acd63(73)=acd63(26)-acd63(1)
      acd63(74)=acd63(4)*acd63(73)
      acd63(75)=-acd63(31)*acd63(72)
      acd63(76)=acd63(19)*acd63(20)
      acd63(77)=acd63(11)*acd63(12)
      acd63(78)=acd63(64)*acd63(46)
      acd63(74)=acd63(78)+acd63(77)+acd63(76)+acd63(75)+acd63(74)
      acd63(74)=acd63(2)*acd63(74)
      acd63(75)=acd63(42)-acd63(39)
      acd63(76)=acd63(4)*acd63(75)
      acd63(77)=acd63(43)*acd63(31)
      acd63(78)=acd63(41)*acd63(20)
      acd63(79)=acd63(40)*acd63(12)
      acd63(76)=-acd63(47)-acd63(77)+acd63(78)+acd63(79)+acd63(76)
      acd63(77)=acd63(38)*acd63(76)
      acd63(78)=-acd63(34)*acd63(72)
      acd63(79)=acd63(11)*acd63(15)
      acd63(80)=-acd63(19)-acd63(73)
      acd63(80)=acd63(7)*acd63(80)
      acd63(81)=acd63(38)*acd63(46)
      acd63(78)=acd63(81)+acd63(80)+acd63(78)+acd63(79)
      acd63(78)=acd63(6)*acd63(78)
      acd63(79)=acd63(41)+acd63(75)
      acd63(79)=acd63(79)*acd63(7)
      acd63(80)=acd63(43)*acd63(34)
      acd63(81)=acd63(40)*acd63(15)
      acd63(79)=acd63(79)+acd63(60)+acd63(80)-acd63(81)
      acd63(80)=-acd63(64)*acd63(79)
      acd63(81)=-acd63(62)*acd63(69)
      acd63(82)=-acd63(67)*acd63(61)
      acd63(83)=-acd63(1)*acd63(8)
      acd63(84)=acd63(35)*acd63(72)
      acd63(85)=-acd63(26)*acd63(29)
      acd63(86)=-acd63(19)*acd63(23)
      acd63(87)=-acd63(11)*acd63(16)
      acd63(70)=acd63(70)+2.0_ki*acd63(71)+acd63(74)+acd63(78)+acd63(77)+acd63(&
      &80)+acd63(87)+acd63(86)+acd63(85)+acd63(84)+acd63(83)+acd63(81)+acd63(82)
      acd63(70)=acd63(3)*acd63(70)
      acd63(71)=acd63(6)*acd63(46)
      acd63(71)=acd63(71)+acd63(76)
      acd63(71)=acd63(2)*acd63(71)
      acd63(74)=-acd63(6)*acd63(79)
      acd63(76)=-acd63(57)*acd63(62)
      acd63(77)=-acd63(55)*acd63(61)
      acd63(78)=-acd63(39)*acd63(8)
      acd63(79)=acd63(43)*acd63(35)
      acd63(80)=-acd63(42)*acd63(29)
      acd63(81)=-acd63(41)*acd63(23)
      acd63(82)=-acd63(40)*acd63(16)
      acd63(71)=acd63(71)+acd63(74)+acd63(82)+acd63(81)+acd63(80)+acd63(79)+acd&
      &63(78)+acd63(77)+acd63(63)+acd63(76)
      acd63(71)=acd63(52)*acd63(71)
      acd63(74)=-acd63(50)*acd63(66)
      acd63(76)=-acd63(1)*acd63(5)
      acd63(77)=acd63(32)*acd63(72)
      acd63(78)=-acd63(26)*acd63(27)
      acd63(79)=-acd63(19)*acd63(21)
      acd63(80)=-acd63(11)*acd63(13)
      acd63(81)=-acd63(64)*acd63(48)
      acd63(82)=acd63(38)*acd63(44)
      acd63(74)=-2.0_ki*acd63(82)+acd63(81)+acd63(80)+acd63(79)+acd63(78)+acd63&
      &(77)+acd63(74)+acd63(76)
      acd63(74)=acd63(2)*acd63(74)
      acd63(76)=-acd63(50)*acd63(49)
      acd63(77)=-acd63(39)*acd63(5)
      acd63(78)=acd63(43)*acd63(32)
      acd63(79)=-acd63(42)*acd63(27)
      acd63(80)=-acd63(41)*acd63(21)
      acd63(81)=-acd63(40)*acd63(13)
      acd63(76)=acd63(81)+acd63(80)+acd63(79)+acd63(78)+acd63(77)+acd63(51)+acd&
      &63(76)
      acd63(76)=acd63(38)*acd63(76)
      acd63(77)=acd63(9)*acd63(73)
      acd63(78)=acd63(36)*acd63(72)
      acd63(79)=-acd63(19)*acd63(24)
      acd63(80)=-acd63(11)*acd63(17)
      acd63(81)=-acd63(38)*acd63(48)
      acd63(77)=acd63(81)+acd63(80)+acd63(79)+acd63(78)+acd63(77)
      acd63(77)=acd63(6)*acd63(77)
      acd63(75)=acd63(9)*acd63(75)
      acd63(78)=acd63(43)*acd63(36)
      acd63(79)=-acd63(41)*acd63(24)
      acd63(80)=-acd63(40)*acd63(17)
      acd63(75)=acd63(80)+acd63(79)+acd63(78)+acd63(65)+acd63(75)
      acd63(75)=acd63(64)*acd63(75)
      acd63(73)=acd63(10)*acd63(73)
      acd63(78)=acd63(67)*acd63(68)
      acd63(72)=-acd63(37)*acd63(72)
      acd63(79)=acd63(19)*acd63(25)
      acd63(80)=acd63(11)*acd63(18)
      brack=acd63(70)+acd63(71)+acd63(72)+acd63(73)+acd63(74)+acd63(75)+acd63(7&
      &6)+acd63(77)+acd63(78)+acd63(79)+acd63(80)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd63
      complex(ki) :: brack
      acd63(1)=d(iv1,iv2)
      acd63(2)=dotproduct(qshift,spvak2k1)
      acd63(3)=dotproduct(qshift,spvak2k5)
      acd63(4)=abb63(35)
      acd63(5)=abb63(14)
      acd63(6)=abb63(80)
      acd63(7)=dotproduct(qshift,spvak2l4)
      acd63(8)=abb63(17)
      acd63(9)=abb63(49)
      acd63(10)=abb63(16)
      acd63(11)=abb63(10)
      acd63(12)=k1(iv1)
      acd63(13)=spvak2k1(iv2)
      acd63(14)=abb63(23)
      acd63(15)=abb63(13)
      acd63(16)=spvak2k5(iv2)
      acd63(17)=abb63(69)
      acd63(18)=abb63(70)
      acd63(19)=spvak2l4(iv2)
      acd63(20)=abb63(32)
      acd63(21)=k1(iv2)
      acd63(22)=spvak2k1(iv1)
      acd63(23)=spvak2k5(iv1)
      acd63(24)=spvak2l4(iv1)
      acd63(25)=k2(iv1)
      acd63(26)=abb63(30)
      acd63(27)=abb63(31)
      acd63(28)=abb63(68)
      acd63(29)=abb63(79)
      acd63(30)=abb63(67)
      acd63(31)=abb63(33)
      acd63(32)=k2(iv2)
      acd63(33)=l4(iv1)
      acd63(34)=abb63(39)
      acd63(35)=abb63(15)
      acd63(36)=abb63(25)
      acd63(37)=abb63(63)
      acd63(38)=abb63(71)
      acd63(39)=l4(iv2)
      acd63(40)=k5(iv1)
      acd63(41)=abb63(41)
      acd63(42)=abb63(57)
      acd63(43)=abb63(61)
      acd63(44)=k5(iv2)
      acd63(45)=qshift(iv1)
      acd63(46)=qshift(iv2)
      acd63(47)=abb63(12)
      acd63(48)=dotproduct(k1,qshift)
      acd63(49)=dotproduct(k2,qshift)
      acd63(50)=dotproduct(l4,qshift)
      acd63(51)=dotproduct(k5,qshift)
      acd63(52)=dotproduct(qshift,qshift)
      acd63(53)=abb63(9)
      acd63(54)=abb63(19)
      acd63(55)=abb63(29)
      acd63(56)=abb63(11)
      acd63(57)=spvak1k5(iv2)
      acd63(58)=abb63(26)
      acd63(59)=spvak1k5(iv1)
      acd63(60)=abb63(27)
      acd63(61)=abb63(62)
      acd63(62)=dotproduct(qshift,spval4k1)
      acd63(63)=abb63(55)
      acd63(64)=dotproduct(qshift,spvak5k1)
      acd63(65)=abb63(82)
      acd63(66)=abb63(22)
      acd63(67)=abb63(52)
      acd63(68)=spval4k1(iv2)
      acd63(69)=abb63(8)
      acd63(70)=spvak5k1(iv2)
      acd63(71)=abb63(74)
      acd63(72)=spval4k1(iv1)
      acd63(73)=spvak5k1(iv1)
      acd63(74)=-acd63(65)*acd63(64)
      acd63(75)=-acd63(63)*acd63(62)
      acd63(76)=acd63(52)*acd63(6)
      acd63(77)=-acd63(51)*acd63(42)
      acd63(78)=-acd63(50)*acd63(36)
      acd63(79)=-acd63(49)*acd63(28)
      acd63(80)=-acd63(7)*acd63(61)
      acd63(81)=-acd63(2)*acd63(53)
      acd63(82)=acd63(3)*acd63(60)
      acd63(74)=-3.0_ki*acd63(82)+acd63(81)+acd63(80)+acd63(79)+acd63(78)+acd63&
      &(77)+acd63(76)+acd63(75)+acd63(66)+acd63(74)
      acd63(74)=acd63(23)*acd63(74)
      acd63(75)=-acd63(65)*acd63(73)
      acd63(76)=-acd63(63)*acd63(72)
      acd63(77)=2.0_ki*acd63(45)
      acd63(78)=acd63(6)*acd63(77)
      acd63(79)=-acd63(40)*acd63(42)
      acd63(80)=-acd63(33)*acd63(36)
      acd63(81)=-acd63(25)*acd63(28)
      acd63(82)=-acd63(24)*acd63(61)
      acd63(83)=-acd63(22)*acd63(53)
      acd63(75)=acd63(83)+acd63(82)+acd63(81)+acd63(80)+acd63(79)+acd63(78)+acd&
      &63(75)+acd63(76)
      acd63(76)=2.0_ki*acd63(3)
      acd63(75)=acd63(75)*acd63(76)
      acd63(78)=acd63(34)*acd63(50)
      acd63(79)=acd63(26)*acd63(49)
      acd63(80)=acd63(4)*acd63(52)
      acd63(81)=acd63(7)*acd63(54)
      acd63(82)=acd63(51)-acd63(48)
      acd63(83)=acd63(82)*acd63(14)
      acd63(78)=acd63(78)+acd63(79)-acd63(80)+acd63(81)+acd63(83)-acd63(55)
      acd63(79)=-acd63(22)*acd63(78)
      acd63(80)=acd63(33)*acd63(34)
      acd63(81)=acd63(25)*acd63(26)
      acd63(83)=acd63(77)*acd63(4)
      acd63(84)=acd63(40)-acd63(12)
      acd63(85)=acd63(84)*acd63(14)
      acd63(80)=-acd63(80)-acd63(81)+acd63(83)-acd63(85)
      acd63(81)=acd63(2)*acd63(80)
      acd63(82)=acd63(82)+acd63(50)
      acd63(82)=acd63(82)*acd63(17)
      acd63(83)=acd63(29)*acd63(49)
      acd63(85)=acd63(8)*acd63(52)
      acd63(86)=acd63(2)*acd63(54)
      acd63(82)=-acd63(82)+acd63(83)-acd63(85)+acd63(86)-acd63(67)
      acd63(83)=-acd63(24)*acd63(82)
      acd63(85)=acd63(25)*acd63(29)
      acd63(86)=acd63(77)*acd63(8)
      acd63(85)=acd63(85)-acd63(86)
      acd63(86)=-acd63(7)*acd63(85)
      acd63(87)=acd63(84)+acd63(33)
      acd63(88)=acd63(17)*acd63(7)
      acd63(89)=acd63(87)*acd63(88)
      acd63(90)=acd63(71)*acd63(73)
      acd63(91)=acd63(69)*acd63(72)
      acd63(92)=acd63(12)*acd63(18)
      acd63(93)=-acd63(9)*acd63(77)
      acd63(94)=acd63(40)*acd63(43)
      acd63(95)=acd63(33)*acd63(37)
      acd63(96)=acd63(25)*acd63(30)
      acd63(74)=2.0_ki*acd63(74)+acd63(75)+acd63(79)+acd63(83)+acd63(89)+acd63(&
      &81)+acd63(86)+acd63(96)+acd63(95)+acd63(94)+acd63(93)+acd63(92)+acd63(90&
      &)+acd63(91)
      acd63(74)=acd63(16)*acd63(74)
      acd63(75)=-acd63(65)*acd63(70)
      acd63(79)=-acd63(63)*acd63(68)
      acd63(81)=2.0_ki*acd63(46)
      acd63(83)=acd63(6)*acd63(81)
      acd63(86)=-acd63(44)*acd63(42)
      acd63(89)=-acd63(39)*acd63(36)
      acd63(90)=-acd63(32)*acd63(28)
      acd63(91)=-acd63(19)*acd63(61)
      acd63(92)=-acd63(13)*acd63(53)
      acd63(75)=acd63(92)+acd63(91)+acd63(90)+acd63(89)+acd63(86)+acd63(83)+acd&
      &63(75)+acd63(79)
      acd63(75)=acd63(75)*acd63(76)
      acd63(78)=-acd63(13)*acd63(78)
      acd63(79)=acd63(39)*acd63(34)
      acd63(83)=acd63(32)*acd63(26)
      acd63(86)=acd63(81)*acd63(4)
      acd63(89)=acd63(44)-acd63(21)
      acd63(90)=acd63(89)*acd63(14)
      acd63(79)=-acd63(79)-acd63(83)+acd63(86)-acd63(90)
      acd63(83)=acd63(2)*acd63(79)
      acd63(82)=-acd63(19)*acd63(82)
      acd63(86)=acd63(32)*acd63(29)
      acd63(90)=acd63(81)*acd63(8)
      acd63(86)=acd63(86)-acd63(90)
      acd63(90)=-acd63(7)*acd63(86)
      acd63(91)=acd63(89)+acd63(39)
      acd63(88)=acd63(91)*acd63(88)
      acd63(92)=acd63(70)*acd63(71)
      acd63(93)=acd63(68)*acd63(69)
      acd63(94)=acd63(21)*acd63(18)
      acd63(95)=-acd63(9)*acd63(81)
      acd63(96)=acd63(44)*acd63(43)
      acd63(97)=acd63(39)*acd63(37)
      acd63(98)=acd63(32)*acd63(30)
      acd63(75)=acd63(75)+acd63(78)+acd63(82)+acd63(88)+acd63(83)+acd63(90)+acd&
      &63(98)+acd63(97)+acd63(96)+acd63(95)+acd63(94)+acd63(92)+acd63(93)
      acd63(75)=acd63(23)*acd63(75)
      acd63(78)=acd63(58)*acd63(59)
      acd63(82)=acd63(12)*acd63(15)
      acd63(83)=-acd63(5)*acd63(77)
      acd63(88)=acd63(40)*acd63(41)
      acd63(90)=acd63(33)*acd63(35)
      acd63(92)=acd63(25)*acd63(27)
      acd63(93)=acd63(24)*acd63(56)
      acd63(94)=acd63(22)*acd63(47)
      acd63(78)=2.0_ki*acd63(94)+acd63(93)+acd63(92)+acd63(90)+acd63(88)+acd63(&
      &83)+acd63(78)+acd63(82)
      acd63(78)=acd63(13)*acd63(78)
      acd63(82)=acd63(58)*acd63(57)
      acd63(83)=acd63(21)*acd63(15)
      acd63(88)=-acd63(5)*acd63(81)
      acd63(90)=acd63(44)*acd63(41)
      acd63(92)=acd63(39)*acd63(35)
      acd63(93)=acd63(32)*acd63(27)
      acd63(94)=acd63(19)*acd63(56)
      acd63(82)=acd63(94)+acd63(93)+acd63(92)+acd63(90)+acd63(88)+acd63(82)+acd&
      &63(83)
      acd63(82)=acd63(22)*acd63(82)
      acd63(83)=-acd63(19)*acd63(54)
      acd63(79)=acd63(83)+acd63(79)
      acd63(79)=acd63(22)*acd63(79)
      acd63(83)=-acd63(24)*acd63(54)
      acd63(80)=acd63(83)+acd63(80)
      acd63(80)=acd63(13)*acd63(80)
      acd63(83)=acd63(7)*acd63(8)
      acd63(88)=acd63(2)*acd63(4)
      acd63(83)=acd63(88)-acd63(9)+acd63(83)
      acd63(76)=acd63(6)*acd63(76)
      acd63(76)=acd63(76)+2.0_ki*acd63(83)
      acd63(76)=acd63(1)*acd63(76)
      acd63(83)=acd63(17)*acd63(91)
      acd63(83)=acd63(83)-acd63(86)
      acd63(83)=acd63(24)*acd63(83)
      acd63(86)=acd63(17)*acd63(87)
      acd63(85)=acd63(86)-acd63(85)
      acd63(85)=acd63(19)*acd63(85)
      acd63(76)=acd63(80)+acd63(79)+acd63(85)+acd63(83)+acd63(76)
      acd63(76)=acd63(3)*acd63(76)
      acd63(79)=-acd63(20)*acd63(89)
      acd63(80)=-acd63(10)*acd63(81)
      acd63(81)=acd63(39)*acd63(38)
      acd63(83)=acd63(32)*acd63(31)
      acd63(79)=acd63(83)+acd63(81)+acd63(80)+acd63(79)
      acd63(79)=acd63(24)*acd63(79)
      acd63(80)=-acd63(20)*acd63(84)
      acd63(77)=-acd63(10)*acd63(77)
      acd63(81)=acd63(33)*acd63(38)
      acd63(83)=acd63(25)*acd63(31)
      acd63(77)=acd63(83)+acd63(81)+acd63(77)+acd63(80)
      acd63(77)=acd63(19)*acd63(77)
      acd63(80)=-acd63(7)*acd63(10)
      acd63(81)=-acd63(2)*acd63(5)
      acd63(80)=acd63(81)+acd63(11)+acd63(80)
      acd63(80)=acd63(1)*acd63(80)
      brack=acd63(74)+acd63(75)+acd63(76)+acd63(77)+acd63(78)+acd63(79)+2.0_ki*&
      &acd63(80)+acd63(82)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd63
      complex(ki) :: brack
      acd63(1)=d(iv1,iv2)
      acd63(2)=spvak2k1(iv3)
      acd63(3)=dotproduct(qshift,spvak2k5)
      acd63(4)=abb63(35)
      acd63(5)=abb63(14)
      acd63(6)=spvak2k5(iv3)
      acd63(7)=dotproduct(qshift,spvak2k1)
      acd63(8)=abb63(80)
      acd63(9)=dotproduct(qshift,spvak2l4)
      acd63(10)=abb63(17)
      acd63(11)=abb63(49)
      acd63(12)=spvak2l4(iv3)
      acd63(13)=abb63(16)
      acd63(14)=d(iv1,iv3)
      acd63(15)=spvak2k1(iv2)
      acd63(16)=spvak2k5(iv2)
      acd63(17)=spvak2l4(iv2)
      acd63(18)=d(iv2,iv3)
      acd63(19)=spvak2k1(iv1)
      acd63(20)=spvak2k5(iv1)
      acd63(21)=spvak2l4(iv1)
      acd63(22)=k1(iv1)
      acd63(23)=abb63(23)
      acd63(24)=abb63(69)
      acd63(25)=k1(iv2)
      acd63(26)=k1(iv3)
      acd63(27)=k2(iv1)
      acd63(28)=abb63(30)
      acd63(29)=abb63(68)
      acd63(30)=abb63(79)
      acd63(31)=k2(iv2)
      acd63(32)=k2(iv3)
      acd63(33)=l4(iv1)
      acd63(34)=abb63(39)
      acd63(35)=abb63(25)
      acd63(36)=l4(iv2)
      acd63(37)=l4(iv3)
      acd63(38)=k5(iv1)
      acd63(39)=abb63(57)
      acd63(40)=k5(iv2)
      acd63(41)=k5(iv3)
      acd63(42)=qshift(iv1)
      acd63(43)=qshift(iv2)
      acd63(44)=qshift(iv3)
      acd63(45)=abb63(9)
      acd63(46)=abb63(19)
      acd63(47)=abb63(27)
      acd63(48)=abb63(62)
      acd63(49)=spval4k1(iv3)
      acd63(50)=abb63(55)
      acd63(51)=spvak5k1(iv3)
      acd63(52)=abb63(82)
      acd63(53)=spval4k1(iv2)
      acd63(54)=spvak5k1(iv2)
      acd63(55)=spval4k1(iv1)
      acd63(56)=spvak5k1(iv1)
      acd63(57)=acd63(52)*acd63(56)
      acd63(58)=acd63(50)*acd63(55)
      acd63(59)=acd63(38)*acd63(39)
      acd63(60)=acd63(33)*acd63(35)
      acd63(61)=acd63(27)*acd63(29)
      acd63(62)=2.0_ki*acd63(8)
      acd63(63)=-acd63(42)*acd63(62)
      acd63(64)=acd63(21)*acd63(48)
      acd63(65)=acd63(19)*acd63(45)
      acd63(66)=acd63(20)*acd63(47)
      acd63(57)=3.0_ki*acd63(66)+acd63(65)+acd63(64)+acd63(63)+acd63(61)+acd63(&
      &60)+acd63(59)+acd63(57)+acd63(58)
      acd63(57)=acd63(16)*acd63(57)
      acd63(58)=acd63(10)*acd63(9)
      acd63(59)=acd63(4)*acd63(7)
      acd63(60)=acd63(62)*acd63(3)
      acd63(58)=acd63(58)+acd63(59)+acd63(60)-acd63(11)
      acd63(59)=-acd63(1)*acd63(58)
      acd63(57)=acd63(59)+acd63(57)
      acd63(59)=acd63(52)*acd63(54)
      acd63(60)=acd63(50)*acd63(53)
      acd63(61)=acd63(40)*acd63(39)
      acd63(63)=acd63(36)*acd63(35)
      acd63(64)=acd63(31)*acd63(29)
      acd63(65)=-acd63(43)*acd63(62)
      acd63(66)=acd63(17)*acd63(48)
      acd63(67)=acd63(15)*acd63(45)
      acd63(59)=acd63(67)+acd63(66)+acd63(65)+acd63(64)+acd63(63)+acd63(61)+acd&
      &63(59)+acd63(60)
      acd63(60)=2.0_ki*acd63(20)
      acd63(59)=acd63(59)*acd63(60)
      acd63(61)=acd63(34)*acd63(33)
      acd63(63)=acd63(28)*acd63(27)
      acd63(64)=acd63(21)*acd63(46)
      acd63(65)=2.0_ki*acd63(4)
      acd63(66)=acd63(65)*acd63(42)
      acd63(67)=acd63(38)-acd63(22)
      acd63(68)=acd63(67)*acd63(23)
      acd63(61)=-acd63(61)-acd63(63)-acd63(64)+acd63(66)-acd63(68)
      acd63(63)=-acd63(15)*acd63(61)
      acd63(64)=acd63(34)*acd63(36)
      acd63(66)=acd63(28)*acd63(31)
      acd63(68)=acd63(65)*acd63(43)
      acd63(69)=acd63(40)-acd63(25)
      acd63(70)=acd63(69)*acd63(23)
      acd63(64)=acd63(70)+acd63(64)+acd63(66)-acd63(68)
      acd63(66)=acd63(19)*acd63(64)
      acd63(68)=acd63(30)*acd63(27)
      acd63(70)=acd63(19)*acd63(46)
      acd63(71)=2.0_ki*acd63(10)
      acd63(72)=acd63(71)*acd63(42)
      acd63(68)=-acd63(72)+acd63(68)+acd63(70)
      acd63(70)=acd63(17)*acd63(68)
      acd63(72)=acd63(30)*acd63(31)
      acd63(73)=acd63(71)*acd63(43)
      acd63(72)=acd63(72)-acd63(73)
      acd63(73)=acd63(21)*acd63(72)
      acd63(69)=acd63(69)+acd63(36)
      acd63(74)=-acd63(21)*acd63(69)
      acd63(67)=acd63(67)+acd63(33)
      acd63(75)=-acd63(17)*acd63(67)
      acd63(74)=acd63(74)+acd63(75)
      acd63(74)=acd63(24)*acd63(74)
      acd63(57)=acd63(59)+acd63(74)+acd63(63)+acd63(70)+acd63(66)+acd63(73)+2.0&
      &_ki*acd63(57)
      acd63(57)=acd63(6)*acd63(57)
      acd63(59)=acd63(52)*acd63(51)
      acd63(63)=acd63(50)*acd63(49)
      acd63(66)=acd63(41)*acd63(39)
      acd63(70)=acd63(37)*acd63(35)
      acd63(73)=acd63(32)*acd63(29)
      acd63(62)=-acd63(44)*acd63(62)
      acd63(74)=acd63(12)*acd63(48)
      acd63(75)=acd63(2)*acd63(45)
      acd63(59)=acd63(75)+acd63(74)+acd63(62)+acd63(73)+acd63(70)+acd63(66)+acd&
      &63(59)+acd63(63)
      acd63(59)=acd63(59)*acd63(60)
      acd63(60)=-acd63(2)*acd63(61)
      acd63(61)=acd63(34)*acd63(37)
      acd63(62)=acd63(28)*acd63(32)
      acd63(63)=acd63(65)*acd63(44)
      acd63(65)=acd63(41)-acd63(26)
      acd63(66)=acd63(65)*acd63(23)
      acd63(61)=acd63(66)+acd63(61)+acd63(62)-acd63(63)
      acd63(62)=acd63(19)*acd63(61)
      acd63(63)=-acd63(14)*acd63(58)
      acd63(66)=acd63(12)*acd63(68)
      acd63(68)=acd63(30)*acd63(32)
      acd63(70)=acd63(71)*acd63(44)
      acd63(68)=acd63(68)-acd63(70)
      acd63(70)=acd63(21)*acd63(68)
      acd63(65)=acd63(65)+acd63(37)
      acd63(71)=-acd63(21)*acd63(65)
      acd63(67)=-acd63(12)*acd63(67)
      acd63(67)=acd63(71)+acd63(67)
      acd63(67)=acd63(24)*acd63(67)
      acd63(59)=acd63(59)+acd63(67)+acd63(60)+acd63(66)+acd63(62)+2.0_ki*acd63(&
      &63)+acd63(70)
      acd63(59)=acd63(16)*acd63(59)
      acd63(60)=acd63(15)*acd63(61)
      acd63(61)=acd63(17)*acd63(46)
      acd63(61)=acd63(61)+acd63(64)
      acd63(61)=acd63(2)*acd63(61)
      acd63(58)=-acd63(18)*acd63(58)
      acd63(62)=acd63(17)*acd63(68)
      acd63(63)=acd63(15)*acd63(46)
      acd63(63)=acd63(63)+acd63(72)
      acd63(63)=acd63(12)*acd63(63)
      acd63(64)=-acd63(17)*acd63(65)
      acd63(65)=-acd63(12)*acd63(69)
      acd63(64)=acd63(64)+acd63(65)
      acd63(64)=acd63(24)*acd63(64)
      acd63(58)=acd63(64)+acd63(61)+acd63(63)+acd63(60)+2.0_ki*acd63(58)+acd63(&
      &62)
      acd63(58)=acd63(20)*acd63(58)
      acd63(60)=-acd63(21)*acd63(18)
      acd63(61)=-acd63(17)*acd63(14)
      acd63(62)=-acd63(12)*acd63(1)
      acd63(60)=acd63(62)+acd63(61)+acd63(60)
      acd63(61)=acd63(10)*acd63(3)
      acd63(61)=acd63(61)-acd63(13)
      acd63(60)=acd63(61)*acd63(60)
      acd63(61)=-acd63(19)*acd63(18)
      acd63(62)=-acd63(15)*acd63(14)
      acd63(63)=-acd63(2)*acd63(1)
      acd63(61)=acd63(63)+acd63(62)+acd63(61)
      acd63(62)=acd63(4)*acd63(3)
      acd63(62)=acd63(62)-acd63(5)
      acd63(61)=acd63(62)*acd63(61)
      acd63(60)=acd63(61)+acd63(60)
      brack=acd63(57)+acd63(58)+acd63(59)+2.0_ki*acd63(60)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd63
      complex(ki) :: brack
      acd63(1)=d(iv1,iv2)
      acd63(2)=spvak2k1(iv3)
      acd63(3)=spvak2k5(iv4)
      acd63(4)=abb63(35)
      acd63(5)=spvak2k1(iv4)
      acd63(6)=spvak2k5(iv3)
      acd63(7)=abb63(80)
      acd63(8)=spvak2l4(iv4)
      acd63(9)=abb63(17)
      acd63(10)=spvak2l4(iv3)
      acd63(11)=d(iv1,iv3)
      acd63(12)=spvak2k1(iv2)
      acd63(13)=spvak2k5(iv2)
      acd63(14)=spvak2l4(iv2)
      acd63(15)=d(iv1,iv4)
      acd63(16)=d(iv2,iv3)
      acd63(17)=spvak2k1(iv1)
      acd63(18)=spvak2k5(iv1)
      acd63(19)=spvak2l4(iv1)
      acd63(20)=d(iv2,iv4)
      acd63(21)=d(iv3,iv4)
      acd63(22)=acd63(1)*acd63(3)
      acd63(23)=acd63(15)*acd63(13)
      acd63(24)=acd63(20)*acd63(18)
      acd63(22)=acd63(22)+acd63(23)+acd63(24)
      acd63(23)=acd63(2)*acd63(22)
      acd63(24)=acd63(11)*acd63(3)
      acd63(25)=acd63(15)*acd63(6)
      acd63(26)=acd63(21)*acd63(18)
      acd63(24)=acd63(26)+acd63(24)+acd63(25)
      acd63(25)=acd63(12)*acd63(24)
      acd63(27)=acd63(16)*acd63(3)
      acd63(28)=acd63(20)*acd63(6)
      acd63(29)=acd63(21)*acd63(13)
      acd63(27)=acd63(29)+acd63(27)+acd63(28)
      acd63(28)=acd63(17)*acd63(27)
      acd63(29)=acd63(11)*acd63(13)
      acd63(30)=acd63(16)*acd63(18)
      acd63(29)=acd63(29)+acd63(30)
      acd63(30)=acd63(1)*acd63(6)
      acd63(30)=acd63(29)+acd63(30)
      acd63(31)=acd63(5)*acd63(30)
      acd63(23)=acd63(28)+acd63(25)+acd63(31)+acd63(23)
      acd63(23)=acd63(4)*acd63(23)
      acd63(25)=acd63(10)*acd63(22)
      acd63(24)=acd63(14)*acd63(24)
      acd63(27)=acd63(19)*acd63(27)
      acd63(28)=acd63(8)*acd63(30)
      acd63(24)=acd63(27)+acd63(24)+acd63(25)+acd63(28)
      acd63(24)=acd63(9)*acd63(24)
      acd63(22)=acd63(6)*acd63(22)
      acd63(25)=acd63(3)*acd63(29)
      acd63(26)=acd63(13)*acd63(26)
      acd63(22)=acd63(26)+acd63(22)+acd63(25)
      acd63(22)=acd63(7)*acd63(22)
      acd63(22)=2.0_ki*acd63(22)+acd63(24)+acd63(23)
      brack=2.0_ki*acd63(22)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd63
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd63h1_qp
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
      qshift = k2-k4
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
!---#[ subroutine reconstruct_d63:
   subroutine     reconstruct_d63(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_63:
      coeffs%coeffs_63%c0 = derivative(czip)
      coeffs%coeffs_63%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_63%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_63%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_63%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_63%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_63%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_63%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_63%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_63%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_63%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_63%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_63%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_63%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_63%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_63%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_63%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_63%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_63%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_63%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_63%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_63%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_63%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_63%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_63%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_63%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_63%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_63%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_63%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_63%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_63%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_63%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_63%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_63%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_63%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_63%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_63%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_63%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_63%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_63%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_63%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_63%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_63%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_63%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_63%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_63%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_63%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_63%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_63%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_63%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_63%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_63%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_63%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_63%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_63%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_63%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_63%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_63%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_63%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_63%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_63%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_63%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_63%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_63%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_63%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_63%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_63%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_63%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_63%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_63%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_63%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_63%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_63%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_63%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_63%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_63%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_63%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_63%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_63%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_63%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_63%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_63%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_63%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_63%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_63%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_63%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_63%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_63%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_63%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_63%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_63%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_63%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_63%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_63%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_63%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_63%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_63%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_63%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_63%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_63%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_63%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_63%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_63%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_63%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_63%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_63%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_63%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_63%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_63%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_63%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_63%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_63%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_63%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_63%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_63%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_63%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_63%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_63%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_63%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_63%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_63%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_63%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_63%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_63%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_63%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_63%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_63:
   end subroutine reconstruct_d63
!---#] subroutine reconstruct_d63:
end module p0_gg_hhg_d63h1l1d_qp
