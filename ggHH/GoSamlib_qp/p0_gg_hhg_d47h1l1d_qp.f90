module p0_gg_hhg_d47h1l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d47h1l1d.f90
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
   public :: derivative , reconstruct_d47
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd47
      complex(ki) :: brack
      acd47(1)=dotproduct(k1,qshift)
      acd47(2)=dotproduct(qshift,spvak2k1)
      acd47(3)=abb47(35)
      acd47(4)=dotproduct(qshift,spvak2l3)
      acd47(5)=dotproduct(qshift,spvak2k5)
      acd47(6)=abb47(60)
      acd47(7)=abb47(57)
      acd47(8)=abb47(42)
      acd47(9)=abb47(36)
      acd47(10)=dotproduct(k2,qshift)
      acd47(11)=abb47(30)
      acd47(12)=abb47(52)
      acd47(13)=abb47(56)
      acd47(14)=dotproduct(qshift,spvak2l4)
      acd47(15)=abb47(33)
      acd47(16)=abb47(34)
      acd47(17)=dotproduct(l3,qshift)
      acd47(18)=abb47(24)
      acd47(19)=abb47(32)
      acd47(20)=dotproduct(l4,qshift)
      acd47(21)=abb47(16)
      acd47(22)=abb47(31)
      acd47(23)=abb47(53)
      acd47(24)=dotproduct(qshift,qshift)
      acd47(25)=abb47(51)
      acd47(26)=abb47(38)
      acd47(27)=abb47(61)
      acd47(28)=abb47(49)
      acd47(29)=abb47(43)
      acd47(30)=abb47(29)
      acd47(31)=abb47(19)
      acd47(32)=abb47(18)
      acd47(33)=abb47(23)
      acd47(34)=abb47(21)
      acd47(35)=abb47(37)
      acd47(36)=abb47(11)
      acd47(37)=abb47(13)
      acd47(38)=dotproduct(qshift,spvak1k5)
      acd47(39)=dotproduct(qshift,spval3k5)
      acd47(40)=abb47(27)
      acd47(41)=dotproduct(qshift,spval4k5)
      acd47(42)=abb47(41)
      acd47(43)=abb47(10)
      acd47(44)=abb47(20)
      acd47(45)=abb47(14)
      acd47(46)=abb47(12)
      acd47(47)=abb47(15)
      acd47(48)=abb47(59)
      acd47(49)=abb47(50)
      acd47(50)=abb47(46)
      acd47(51)=dotproduct(qshift,spval3k1)
      acd47(52)=abb47(44)
      acd47(53)=abb47(26)
      acd47(54)=abb47(45)
      acd47(55)=abb47(25)
      acd47(56)=abb47(22)
      acd47(57)=-acd47(41)*acd47(42)
      acd47(58)=-acd47(39)*acd47(40)
      acd47(59)=acd47(29)*acd47(38)
      acd47(60)=-acd47(17)*acd47(18)
      acd47(61)=-acd47(20)*acd47(21)
      acd47(62)=-acd47(14)*acd47(37)
      acd47(63)=-acd47(10)*acd47(11)
      acd47(64)=acd47(24)*acd47(25)
      acd47(65)=-acd47(4)*acd47(34)
      acd47(66)=-acd47(2)*acd47(32)
      acd47(57)=acd47(66)+acd47(65)+acd47(64)+acd47(63)+acd47(62)+acd47(61)+acd&
      &47(60)+acd47(59)+acd47(58)+acd47(43)+acd47(57)
      acd47(57)=acd47(2)*acd47(57)
      acd47(58)=-acd47(51)*acd47(52)
      acd47(59)=-acd47(14)*acd47(50)
      acd47(60)=-acd47(1)*acd47(8)
      acd47(61)=-acd47(24)*acd47(29)
      acd47(62)=-acd47(2)*acd47(36)
      acd47(58)=acd47(62)+acd47(61)+acd47(60)+acd47(59)+acd47(53)+acd47(58)
      acd47(58)=acd47(5)*acd47(58)
      acd47(59)=-acd47(1)*acd47(6)
      acd47(60)=acd47(24)*acd47(27)
      acd47(59)=acd47(60)+acd47(48)+acd47(59)
      acd47(59)=acd47(4)*acd47(59)
      acd47(60)=acd47(17)*acd47(19)
      acd47(61)=acd47(14)*acd47(54)
      acd47(62)=-acd47(14)*acd47(15)
      acd47(62)=acd47(16)+acd47(62)
      acd47(62)=acd47(10)*acd47(62)
      acd47(63)=acd47(1)*acd47(9)
      acd47(64)=-acd47(24)*acd47(30)
      acd47(57)=acd47(58)+acd47(57)+acd47(59)+acd47(64)+acd47(63)+acd47(62)+acd&
      &47(61)-acd47(55)+acd47(60)
      acd47(57)=acd47(5)*acd47(57)
      acd47(58)=acd47(39)*acd47(46)
      acd47(59)=acd47(38)*acd47(45)
      acd47(60)=acd47(20)*acd47(22)
      acd47(61)=acd47(14)*acd47(44)
      acd47(62)=acd47(10)*acd47(12)
      acd47(63)=acd47(1)*acd47(3)
      acd47(64)=-acd47(24)*acd47(26)
      acd47(65)=acd47(4)*acd47(35)
      acd47(66)=acd47(2)*acd47(33)
      acd47(58)=acd47(66)+acd47(65)+acd47(64)+acd47(63)+acd47(62)+acd47(61)+acd&
      &47(60)+acd47(59)-acd47(47)+acd47(58)
      acd47(58)=acd47(2)*acd47(58)
      acd47(59)=acd47(20)*acd47(23)
      acd47(60)=acd47(10)*acd47(13)
      acd47(61)=acd47(1)*acd47(7)
      acd47(62)=-acd47(24)*acd47(28)
      acd47(59)=acd47(62)+acd47(61)+acd47(60)-acd47(49)+acd47(59)
      acd47(59)=acd47(4)*acd47(59)
      acd47(60)=acd47(24)*acd47(31)
      brack=acd47(56)+acd47(57)+acd47(58)+acd47(59)+acd47(60)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(84) :: acd47
      complex(ki) :: brack
      acd47(1)=k1(iv1)
      acd47(2)=dotproduct(qshift,spvak2k1)
      acd47(3)=abb47(35)
      acd47(4)=dotproduct(qshift,spvak2l3)
      acd47(5)=dotproduct(qshift,spvak2k5)
      acd47(6)=abb47(60)
      acd47(7)=abb47(57)
      acd47(8)=abb47(42)
      acd47(9)=abb47(36)
      acd47(10)=k2(iv1)
      acd47(11)=abb47(30)
      acd47(12)=abb47(52)
      acd47(13)=abb47(56)
      acd47(14)=dotproduct(qshift,spvak2l4)
      acd47(15)=abb47(33)
      acd47(16)=abb47(34)
      acd47(17)=l3(iv1)
      acd47(18)=abb47(24)
      acd47(19)=abb47(32)
      acd47(20)=l4(iv1)
      acd47(21)=abb47(16)
      acd47(22)=abb47(31)
      acd47(23)=abb47(53)
      acd47(24)=qshift(iv1)
      acd47(25)=abb47(51)
      acd47(26)=abb47(38)
      acd47(27)=abb47(61)
      acd47(28)=abb47(49)
      acd47(29)=abb47(43)
      acd47(30)=abb47(29)
      acd47(31)=abb47(19)
      acd47(32)=spvak2k1(iv1)
      acd47(33)=dotproduct(k1,qshift)
      acd47(34)=dotproduct(k2,qshift)
      acd47(35)=dotproduct(l3,qshift)
      acd47(36)=dotproduct(l4,qshift)
      acd47(37)=dotproduct(qshift,qshift)
      acd47(38)=abb47(18)
      acd47(39)=abb47(23)
      acd47(40)=abb47(21)
      acd47(41)=abb47(37)
      acd47(42)=abb47(11)
      acd47(43)=abb47(13)
      acd47(44)=dotproduct(qshift,spvak1k5)
      acd47(45)=dotproduct(qshift,spval3k5)
      acd47(46)=abb47(27)
      acd47(47)=dotproduct(qshift,spval4k5)
      acd47(48)=abb47(41)
      acd47(49)=abb47(10)
      acd47(50)=abb47(20)
      acd47(51)=abb47(14)
      acd47(52)=abb47(12)
      acd47(53)=abb47(15)
      acd47(54)=spvak2l3(iv1)
      acd47(55)=abb47(59)
      acd47(56)=abb47(50)
      acd47(57)=spvak2k5(iv1)
      acd47(58)=abb47(46)
      acd47(59)=dotproduct(qshift,spval3k1)
      acd47(60)=abb47(44)
      acd47(61)=abb47(26)
      acd47(62)=abb47(45)
      acd47(63)=abb47(25)
      acd47(64)=spvak2l4(iv1)
      acd47(65)=spvak1k5(iv1)
      acd47(66)=spval3k5(iv1)
      acd47(67)=spval4k5(iv1)
      acd47(68)=spval3k1(iv1)
      acd47(69)=acd47(48)*acd47(67)
      acd47(70)=acd47(46)*acd47(66)
      acd47(71)=acd47(20)*acd47(21)
      acd47(72)=acd47(18)*acd47(17)
      acd47(73)=acd47(64)*acd47(43)
      acd47(74)=-acd47(29)*acd47(65)
      acd47(75)=acd47(10)*acd47(11)
      acd47(76)=2.0_ki*acd47(24)
      acd47(77)=-acd47(25)*acd47(76)
      acd47(78)=acd47(54)*acd47(40)
      acd47(79)=2.0_ki*acd47(32)
      acd47(80)=acd47(38)*acd47(79)
      acd47(81)=2.0_ki*acd47(57)
      acd47(82)=acd47(42)*acd47(81)
      acd47(69)=acd47(82)+acd47(80)+acd47(78)+acd47(77)+acd47(75)+acd47(74)+acd&
      &47(73)+acd47(72)+acd47(71)+acd47(69)+acd47(70)
      acd47(69)=acd47(2)*acd47(69)
      acd47(70)=acd47(48)*acd47(47)
      acd47(71)=acd47(45)*acd47(46)
      acd47(72)=acd47(18)*acd47(35)
      acd47(73)=acd47(36)*acd47(21)
      acd47(74)=acd47(29)*acd47(44)
      acd47(75)=acd47(34)*acd47(11)
      acd47(77)=acd47(14)*acd47(43)
      acd47(78)=acd47(37)*acd47(25)
      acd47(80)=acd47(4)*acd47(40)
      acd47(70)=-acd47(70)-acd47(73)+acd47(74)-acd47(71)-acd47(72)+acd47(49)-ac&
      &d47(75)-acd47(77)+acd47(78)-acd47(80)
      acd47(71)=-acd47(32)*acd47(70)
      acd47(72)=acd47(60)*acd47(68)
      acd47(73)=acd47(64)*acd47(58)
      acd47(74)=acd47(1)*acd47(8)
      acd47(75)=acd47(29)*acd47(76)
      acd47(77)=acd47(32)*acd47(42)
      acd47(72)=acd47(77)+acd47(75)+acd47(74)+acd47(72)+acd47(73)
      acd47(72)=acd47(5)*acd47(72)
      acd47(73)=acd47(60)*acd47(59)
      acd47(74)=acd47(33)*acd47(8)
      acd47(75)=acd47(14)*acd47(58)
      acd47(77)=acd47(37)*acd47(29)
      acd47(73)=acd47(77)+acd47(75)+acd47(74)-acd47(61)+acd47(73)
      acd47(73)=acd47(73)*acd47(81)
      acd47(74)=acd47(33)*acd47(6)
      acd47(75)=acd47(37)*acd47(27)
      acd47(74)=-acd47(55)+acd47(74)-acd47(75)
      acd47(75)=acd47(54)*acd47(74)
      acd47(77)=acd47(1)*acd47(6)
      acd47(78)=-acd47(27)*acd47(76)
      acd47(77)=acd47(77)+acd47(78)
      acd47(77)=acd47(4)*acd47(77)
      acd47(78)=acd47(34)*acd47(15)
      acd47(78)=acd47(78)-acd47(62)
      acd47(80)=acd47(64)*acd47(78)
      acd47(81)=acd47(14)*acd47(15)
      acd47(81)=acd47(81)-acd47(16)
      acd47(81)=acd47(10)*acd47(81)
      acd47(82)=-acd47(17)*acd47(19)
      acd47(83)=-acd47(1)*acd47(9)
      acd47(84)=acd47(30)*acd47(76)
      acd47(69)=acd47(72)+acd47(69)+acd47(73)+acd47(71)+acd47(77)+acd47(75)+acd&
      &47(84)+acd47(83)+acd47(82)+acd47(81)+acd47(80)
      acd47(69)=acd47(5)*acd47(69)
      acd47(71)=acd47(2)*acd47(38)
      acd47(70)=acd47(71)-acd47(70)
      acd47(70)=acd47(57)*acd47(70)
      acd47(71)=-acd47(52)*acd47(66)
      acd47(72)=-acd47(51)*acd47(65)
      acd47(73)=-acd47(20)*acd47(22)
      acd47(75)=-acd47(64)*acd47(50)
      acd47(77)=-acd47(10)*acd47(12)
      acd47(80)=-acd47(1)*acd47(3)
      acd47(81)=acd47(26)*acd47(76)
      acd47(82)=-acd47(54)*acd47(41)
      acd47(79)=-acd47(39)*acd47(79)
      acd47(70)=acd47(79)+acd47(82)+acd47(81)+acd47(80)+acd47(77)+acd47(75)+acd&
      &47(73)+acd47(71)+acd47(72)+acd47(70)
      acd47(70)=acd47(2)*acd47(70)
      acd47(71)=-acd47(45)*acd47(52)
      acd47(72)=-acd47(44)*acd47(51)
      acd47(73)=-acd47(36)*acd47(22)
      acd47(75)=-acd47(33)*acd47(3)
      acd47(77)=-acd47(34)*acd47(12)
      acd47(79)=-acd47(14)*acd47(50)
      acd47(80)=acd47(37)*acd47(26)
      acd47(81)=-acd47(4)*acd47(41)
      acd47(71)=acd47(81)+acd47(80)+acd47(79)+acd47(77)+acd47(75)+acd47(73)+acd&
      &47(72)+acd47(53)+acd47(71)
      acd47(71)=acd47(32)*acd47(71)
      acd47(72)=acd47(4)*acd47(74)
      acd47(73)=-acd47(35)*acd47(19)
      acd47(74)=-acd47(33)*acd47(9)
      acd47(75)=-acd47(34)*acd47(16)
      acd47(77)=acd47(14)*acd47(78)
      acd47(78)=acd47(37)*acd47(30)
      acd47(72)=acd47(72)+acd47(78)+acd47(77)+acd47(75)+acd47(74)+acd47(63)+acd&
      &47(73)
      acd47(72)=acd47(57)*acd47(72)
      acd47(73)=-acd47(36)*acd47(23)
      acd47(74)=-acd47(33)*acd47(7)
      acd47(75)=-acd47(34)*acd47(13)
      acd47(77)=acd47(37)*acd47(28)
      acd47(73)=acd47(77)+acd47(75)+acd47(74)+acd47(56)+acd47(73)
      acd47(73)=acd47(54)*acd47(73)
      acd47(74)=-acd47(20)*acd47(23)
      acd47(75)=-acd47(10)*acd47(13)
      acd47(77)=-acd47(1)*acd47(7)
      acd47(78)=acd47(28)*acd47(76)
      acd47(74)=acd47(78)+acd47(77)+acd47(74)+acd47(75)
      acd47(74)=acd47(4)*acd47(74)
      acd47(75)=-acd47(31)*acd47(76)
      brack=acd47(69)+acd47(70)+acd47(71)+acd47(72)+acd47(73)+acd47(74)+acd47(7&
      &5)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd47
      complex(ki) :: brack
      acd47(1)=d(iv1,iv2)
      acd47(2)=dotproduct(qshift,spvak2k1)
      acd47(3)=dotproduct(qshift,spvak2k5)
      acd47(4)=abb47(51)
      acd47(5)=abb47(38)
      acd47(6)=abb47(43)
      acd47(7)=dotproduct(qshift,spvak2l3)
      acd47(8)=abb47(61)
      acd47(9)=abb47(29)
      acd47(10)=abb47(49)
      acd47(11)=abb47(19)
      acd47(12)=k1(iv1)
      acd47(13)=spvak2k1(iv2)
      acd47(14)=abb47(35)
      acd47(15)=spvak2k5(iv2)
      acd47(16)=abb47(42)
      acd47(17)=abb47(60)
      acd47(18)=abb47(36)
      acd47(19)=spvak2l3(iv2)
      acd47(20)=abb47(57)
      acd47(21)=k1(iv2)
      acd47(22)=spvak2k1(iv1)
      acd47(23)=spvak2k5(iv1)
      acd47(24)=spvak2l3(iv1)
      acd47(25)=k2(iv1)
      acd47(26)=abb47(30)
      acd47(27)=abb47(52)
      acd47(28)=dotproduct(qshift,spvak2l4)
      acd47(29)=abb47(33)
      acd47(30)=abb47(34)
      acd47(31)=abb47(56)
      acd47(32)=spvak2l4(iv2)
      acd47(33)=k2(iv2)
      acd47(34)=spvak2l4(iv1)
      acd47(35)=l3(iv1)
      acd47(36)=abb47(24)
      acd47(37)=abb47(32)
      acd47(38)=l3(iv2)
      acd47(39)=l4(iv1)
      acd47(40)=abb47(16)
      acd47(41)=abb47(31)
      acd47(42)=abb47(53)
      acd47(43)=l4(iv2)
      acd47(44)=qshift(iv1)
      acd47(45)=qshift(iv2)
      acd47(46)=abb47(18)
      acd47(47)=abb47(23)
      acd47(48)=dotproduct(k2,qshift)
      acd47(49)=dotproduct(l3,qshift)
      acd47(50)=dotproduct(l4,qshift)
      acd47(51)=dotproduct(qshift,qshift)
      acd47(52)=abb47(11)
      acd47(53)=abb47(21)
      acd47(54)=abb47(13)
      acd47(55)=dotproduct(qshift,spvak1k5)
      acd47(56)=dotproduct(qshift,spval3k5)
      acd47(57)=abb47(27)
      acd47(58)=dotproduct(qshift,spval4k5)
      acd47(59)=abb47(41)
      acd47(60)=abb47(10)
      acd47(61)=abb47(37)
      acd47(62)=abb47(20)
      acd47(63)=spvak1k5(iv2)
      acd47(64)=abb47(14)
      acd47(65)=spval3k5(iv2)
      acd47(66)=abb47(12)
      acd47(67)=spval4k5(iv2)
      acd47(68)=spvak1k5(iv1)
      acd47(69)=spval3k5(iv1)
      acd47(70)=spval4k5(iv1)
      acd47(71)=dotproduct(k1,qshift)
      acd47(72)=abb47(46)
      acd47(73)=dotproduct(qshift,spval3k1)
      acd47(74)=abb47(44)
      acd47(75)=abb47(26)
      acd47(76)=abb47(59)
      acd47(77)=abb47(45)
      acd47(78)=spval3k1(iv2)
      acd47(79)=spval3k1(iv1)
      acd47(80)=acd47(59)*acd47(58)
      acd47(81)=acd47(57)*acd47(56)
      acd47(82)=acd47(54)*acd47(28)
      acd47(83)=acd47(40)*acd47(50)
      acd47(84)=acd47(36)*acd47(49)
      acd47(85)=acd47(26)*acd47(48)
      acd47(86)=acd47(4)*acd47(51)
      acd47(87)=acd47(7)*acd47(53)
      acd47(88)=acd47(6)*acd47(55)
      acd47(89)=2.0_ki*acd47(2)
      acd47(89)=acd47(89)*acd47(46)
      acd47(80)=-acd47(86)+acd47(87)-acd47(88)+acd47(89)+acd47(82)+acd47(83)+ac&
      &d47(84)+acd47(85)-acd47(60)+acd47(80)+acd47(81)
      acd47(81)=-acd47(22)*acd47(80)
      acd47(82)=acd47(59)*acd47(70)
      acd47(83)=acd47(57)*acd47(69)
      acd47(84)=acd47(40)*acd47(39)
      acd47(85)=acd47(36)*acd47(35)
      acd47(86)=acd47(34)*acd47(54)
      acd47(87)=acd47(25)*acd47(26)
      acd47(88)=acd47(6)*acd47(68)
      acd47(89)=acd47(24)*acd47(53)
      acd47(90)=2.0_ki*acd47(44)
      acd47(91)=acd47(90)*acd47(4)
      acd47(82)=-acd47(91)+acd47(86)+acd47(87)-acd47(88)+acd47(89)+acd47(82)+ac&
      &d47(83)+acd47(84)+acd47(85)
      acd47(83)=-acd47(2)*acd47(82)
      acd47(84)=-acd47(74)*acd47(79)
      acd47(85)=-acd47(12)*acd47(16)
      acd47(86)=-acd47(34)*acd47(72)
      acd47(87)=-acd47(6)*acd47(90)
      acd47(88)=-acd47(22)*acd47(52)
      acd47(84)=acd47(88)+acd47(87)+acd47(86)+acd47(84)+acd47(85)
      acd47(85)=2.0_ki*acd47(3)
      acd47(84)=acd47(84)*acd47(85)
      acd47(86)=-acd47(74)*acd47(73)
      acd47(87)=-acd47(16)*acd47(71)
      acd47(88)=-acd47(28)*acd47(72)
      acd47(89)=-acd47(6)*acd47(51)
      acd47(91)=-acd47(2)*acd47(52)
      acd47(86)=acd47(91)+acd47(89)+acd47(88)+acd47(87)+acd47(75)+acd47(86)
      acd47(86)=acd47(23)*acd47(86)
      acd47(87)=acd47(12)*acd47(17)
      acd47(88)=acd47(90)*acd47(8)
      acd47(87)=acd47(87)-acd47(88)
      acd47(88)=-acd47(7)*acd47(87)
      acd47(89)=acd47(17)*acd47(71)
      acd47(91)=acd47(8)*acd47(51)
      acd47(89)=-acd47(76)+acd47(89)-acd47(91)
      acd47(91)=-acd47(24)*acd47(89)
      acd47(92)=acd47(35)*acd47(37)
      acd47(93)=acd47(12)*acd47(18)
      acd47(94)=acd47(29)*acd47(48)
      acd47(94)=acd47(94)-acd47(77)
      acd47(95)=-acd47(34)*acd47(94)
      acd47(96)=acd47(29)*acd47(28)
      acd47(96)=acd47(96)-acd47(30)
      acd47(97)=-acd47(25)*acd47(96)
      acd47(98)=-acd47(9)*acd47(90)
      acd47(81)=2.0_ki*acd47(86)+acd47(84)+acd47(81)+acd47(83)+acd47(91)+acd47(&
      &88)+acd47(98)+acd47(97)+acd47(95)+acd47(92)+acd47(93)
      acd47(81)=acd47(15)*acd47(81)
      acd47(83)=acd47(59)*acd47(67)
      acd47(84)=acd47(57)*acd47(65)
      acd47(86)=acd47(40)*acd47(43)
      acd47(88)=acd47(36)*acd47(38)
      acd47(91)=acd47(33)*acd47(26)
      acd47(92)=acd47(32)*acd47(54)
      acd47(93)=acd47(6)*acd47(63)
      acd47(95)=acd47(19)*acd47(53)
      acd47(97)=2.0_ki*acd47(45)
      acd47(98)=acd47(97)*acd47(4)
      acd47(83)=-acd47(98)+acd47(91)+acd47(92)-acd47(93)+acd47(95)+acd47(83)+ac&
      &d47(84)+acd47(86)+acd47(88)
      acd47(84)=-acd47(22)*acd47(83)
      acd47(86)=2.0_ki*acd47(22)
      acd47(88)=-acd47(46)*acd47(86)
      acd47(82)=acd47(88)-acd47(82)
      acd47(82)=acd47(13)*acd47(82)
      acd47(88)=acd47(7)*acd47(8)
      acd47(91)=acd47(2)*acd47(4)
      acd47(92)=-acd47(3)*acd47(6)
      acd47(88)=acd47(92)+acd47(91)+acd47(88)-acd47(9)
      acd47(91)=2.0_ki*acd47(1)
      acd47(88)=acd47(91)*acd47(88)
      acd47(92)=-acd47(33)*acd47(34)
      acd47(93)=-acd47(25)*acd47(32)
      acd47(92)=acd47(92)+acd47(93)
      acd47(92)=acd47(29)*acd47(92)
      acd47(93)=acd47(17)*acd47(21)
      acd47(95)=acd47(97)*acd47(8)
      acd47(93)=acd47(93)-acd47(95)
      acd47(95)=-acd47(24)*acd47(93)
      acd47(87)=-acd47(19)*acd47(87)
      acd47(82)=acd47(82)+acd47(84)+acd47(87)+acd47(95)+acd47(88)+acd47(92)
      acd47(82)=acd47(3)*acd47(82)
      acd47(80)=-acd47(13)*acd47(80)
      acd47(83)=-acd47(2)*acd47(83)
      acd47(84)=-acd47(74)*acd47(78)
      acd47(87)=-acd47(21)*acd47(16)
      acd47(88)=-acd47(32)*acd47(72)
      acd47(92)=-acd47(6)*acd47(97)
      acd47(95)=-acd47(13)*acd47(52)
      acd47(84)=acd47(95)+acd47(92)+acd47(88)+acd47(84)+acd47(87)
      acd47(84)=acd47(84)*acd47(85)
      acd47(85)=-acd47(7)*acd47(93)
      acd47(87)=-acd47(19)*acd47(89)
      acd47(88)=acd47(38)*acd47(37)
      acd47(89)=acd47(21)*acd47(18)
      acd47(92)=-acd47(33)*acd47(96)
      acd47(93)=-acd47(32)*acd47(94)
      acd47(94)=-acd47(9)*acd47(97)
      acd47(80)=acd47(84)+acd47(80)+acd47(83)+acd47(87)+acd47(85)+acd47(94)+acd&
      &47(93)+acd47(92)+acd47(88)+acd47(89)
      acd47(80)=acd47(23)*acd47(80)
      acd47(83)=acd47(69)*acd47(66)
      acd47(84)=acd47(68)*acd47(64)
      acd47(85)=acd47(39)*acd47(41)
      acd47(87)=acd47(12)*acd47(14)
      acd47(88)=acd47(34)*acd47(62)
      acd47(89)=acd47(25)*acd47(27)
      acd47(92)=-acd47(5)*acd47(90)
      acd47(93)=acd47(24)*acd47(61)
      acd47(86)=acd47(47)*acd47(86)
      acd47(83)=acd47(86)+acd47(93)+acd47(92)+acd47(89)+acd47(88)+acd47(87)+acd&
      &47(85)+acd47(83)+acd47(84)
      acd47(83)=acd47(13)*acd47(83)
      acd47(84)=acd47(65)*acd47(66)
      acd47(85)=acd47(63)*acd47(64)
      acd47(86)=acd47(43)*acd47(41)
      acd47(87)=acd47(21)*acd47(14)
      acd47(88)=acd47(33)*acd47(27)
      acd47(89)=acd47(32)*acd47(62)
      acd47(92)=-acd47(5)*acd47(97)
      acd47(93)=acd47(19)*acd47(61)
      acd47(84)=acd47(93)+acd47(92)+acd47(89)+acd47(88)+acd47(87)+acd47(86)+acd&
      &47(84)+acd47(85)
      acd47(84)=acd47(22)*acd47(84)
      acd47(85)=acd47(43)*acd47(42)
      acd47(86)=acd47(21)*acd47(20)
      acd47(87)=acd47(33)*acd47(31)
      acd47(88)=-acd47(10)*acd47(97)
      acd47(85)=acd47(88)+acd47(87)+acd47(85)+acd47(86)
      acd47(85)=acd47(24)*acd47(85)
      acd47(86)=acd47(39)*acd47(42)
      acd47(87)=acd47(12)*acd47(20)
      acd47(88)=acd47(25)*acd47(31)
      acd47(89)=-acd47(10)*acd47(90)
      acd47(86)=acd47(89)+acd47(88)+acd47(86)+acd47(87)
      acd47(86)=acd47(19)*acd47(86)
      acd47(87)=-acd47(7)*acd47(10)
      acd47(87)=acd47(11)+acd47(87)
      acd47(87)=acd47(1)*acd47(87)
      acd47(88)=-acd47(2)*acd47(5)*acd47(91)
      brack=acd47(80)+acd47(81)+acd47(82)+acd47(83)+acd47(84)+acd47(85)+acd47(8&
      &6)+2.0_ki*acd47(87)+acd47(88)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd47
      complex(ki) :: brack
      acd47(1)=d(iv1,iv2)
      acd47(2)=spvak2k1(iv3)
      acd47(3)=dotproduct(qshift,spvak2k5)
      acd47(4)=abb47(51)
      acd47(5)=abb47(38)
      acd47(6)=spvak2k5(iv3)
      acd47(7)=dotproduct(qshift,spvak2k1)
      acd47(8)=abb47(43)
      acd47(9)=dotproduct(qshift,spvak2l3)
      acd47(10)=abb47(61)
      acd47(11)=abb47(29)
      acd47(12)=spvak2l3(iv3)
      acd47(13)=abb47(49)
      acd47(14)=d(iv1,iv3)
      acd47(15)=spvak2k1(iv2)
      acd47(16)=spvak2k5(iv2)
      acd47(17)=spvak2l3(iv2)
      acd47(18)=d(iv2,iv3)
      acd47(19)=spvak2k1(iv1)
      acd47(20)=spvak2k5(iv1)
      acd47(21)=spvak2l3(iv1)
      acd47(22)=k1(iv1)
      acd47(23)=abb47(42)
      acd47(24)=abb47(60)
      acd47(25)=k1(iv2)
      acd47(26)=k1(iv3)
      acd47(27)=k2(iv1)
      acd47(28)=abb47(30)
      acd47(29)=spvak2l4(iv3)
      acd47(30)=abb47(33)
      acd47(31)=spvak2l4(iv2)
      acd47(32)=k2(iv2)
      acd47(33)=spvak2l4(iv1)
      acd47(34)=k2(iv3)
      acd47(35)=l3(iv1)
      acd47(36)=abb47(24)
      acd47(37)=l3(iv2)
      acd47(38)=l3(iv3)
      acd47(39)=l4(iv1)
      acd47(40)=abb47(16)
      acd47(41)=l4(iv2)
      acd47(42)=l4(iv3)
      acd47(43)=qshift(iv1)
      acd47(44)=qshift(iv2)
      acd47(45)=qshift(iv3)
      acd47(46)=abb47(18)
      acd47(47)=abb47(11)
      acd47(48)=abb47(21)
      acd47(49)=abb47(13)
      acd47(50)=spvak1k5(iv3)
      acd47(51)=spval3k5(iv3)
      acd47(52)=abb47(27)
      acd47(53)=spval4k5(iv3)
      acd47(54)=abb47(41)
      acd47(55)=spvak1k5(iv2)
      acd47(56)=spval3k5(iv2)
      acd47(57)=spval4k5(iv2)
      acd47(58)=spvak1k5(iv1)
      acd47(59)=spval3k5(iv1)
      acd47(60)=spval4k5(iv1)
      acd47(61)=abb47(46)
      acd47(62)=spval3k1(iv3)
      acd47(63)=abb47(44)
      acd47(64)=spval3k1(iv2)
      acd47(65)=spval3k1(iv1)
      acd47(66)=acd47(54)*acd47(53)
      acd47(67)=acd47(52)*acd47(51)
      acd47(68)=acd47(49)*acd47(29)
      acd47(69)=acd47(40)*acd47(42)
      acd47(70)=acd47(36)*acd47(38)
      acd47(71)=acd47(28)*acd47(34)
      acd47(72)=acd47(12)*acd47(48)
      acd47(73)=acd47(8)*acd47(50)
      acd47(74)=2.0_ki*acd47(4)
      acd47(75)=acd47(74)*acd47(45)
      acd47(66)=acd47(66)+acd47(67)+acd47(68)+acd47(69)-acd47(75)+acd47(70)+acd&
      &47(71)+acd47(72)-acd47(73)
      acd47(67)=acd47(15)*acd47(66)
      acd47(68)=acd47(54)*acd47(57)
      acd47(69)=acd47(52)*acd47(56)
      acd47(70)=acd47(49)*acd47(31)
      acd47(71)=acd47(40)*acd47(41)
      acd47(72)=acd47(36)*acd47(37)
      acd47(73)=acd47(28)*acd47(32)
      acd47(75)=acd47(17)*acd47(48)
      acd47(76)=acd47(8)*acd47(55)
      acd47(77)=acd47(74)*acd47(44)
      acd47(68)=acd47(68)+acd47(69)+acd47(70)+acd47(71)-acd47(77)+acd47(72)+acd&
      &47(73)+acd47(75)-acd47(76)
      acd47(69)=2.0_ki*acd47(46)
      acd47(70)=acd47(15)*acd47(69)
      acd47(70)=acd47(70)+acd47(68)
      acd47(70)=acd47(2)*acd47(70)
      acd47(71)=-acd47(18)*acd47(9)
      acd47(72)=-acd47(17)*acd47(45)
      acd47(73)=-acd47(12)*acd47(44)
      acd47(71)=acd47(73)+acd47(71)+acd47(72)
      acd47(72)=2.0_ki*acd47(10)
      acd47(71)=acd47(71)*acd47(72)
      acd47(73)=acd47(17)*acd47(26)
      acd47(75)=acd47(12)*acd47(25)
      acd47(73)=acd47(75)+acd47(73)
      acd47(73)=acd47(24)*acd47(73)
      acd47(75)=acd47(74)*acd47(7)
      acd47(76)=acd47(8)*acd47(3)
      acd47(75)=-acd47(75)+4.0_ki*acd47(76)+2.0_ki*acd47(11)
      acd47(76)=acd47(18)*acd47(75)
      acd47(77)=acd47(31)*acd47(34)
      acd47(78)=acd47(29)*acd47(32)
      acd47(77)=acd47(77)+acd47(78)
      acd47(77)=acd47(30)*acd47(77)
      acd47(67)=acd47(70)+acd47(67)+acd47(71)+acd47(77)+acd47(76)+acd47(73)
      acd47(67)=acd47(20)*acd47(67)
      acd47(70)=acd47(54)*acd47(60)
      acd47(71)=acd47(52)*acd47(59)
      acd47(73)=acd47(49)*acd47(33)
      acd47(76)=acd47(40)*acd47(39)
      acd47(77)=acd47(36)*acd47(35)
      acd47(78)=acd47(28)*acd47(27)
      acd47(79)=acd47(21)*acd47(48)
      acd47(80)=acd47(8)*acd47(58)
      acd47(69)=acd47(69)*acd47(19)
      acd47(74)=acd47(74)*acd47(43)
      acd47(69)=-acd47(70)-acd47(76)-acd47(77)-acd47(71)-acd47(73)+acd47(74)-ac&
      &d47(78)-acd47(79)+acd47(80)-acd47(69)
      acd47(70)=-acd47(2)*acd47(69)
      acd47(66)=acd47(19)*acd47(66)
      acd47(71)=acd47(63)*acd47(62)
      acd47(73)=acd47(23)*acd47(26)
      acd47(74)=acd47(29)*acd47(61)
      acd47(76)=2.0_ki*acd47(8)
      acd47(77)=acd47(45)*acd47(76)
      acd47(78)=acd47(2)*acd47(47)
      acd47(71)=acd47(78)+acd47(77)+acd47(74)+acd47(71)+acd47(73)
      acd47(73)=2.0_ki*acd47(20)
      acd47(71)=acd47(71)*acd47(73)
      acd47(74)=-acd47(21)*acd47(45)
      acd47(77)=-acd47(14)*acd47(9)
      acd47(78)=-acd47(12)*acd47(43)
      acd47(74)=acd47(78)+acd47(74)+acd47(77)
      acd47(74)=acd47(74)*acd47(72)
      acd47(77)=acd47(21)*acd47(26)
      acd47(78)=acd47(12)*acd47(22)
      acd47(77)=acd47(78)+acd47(77)
      acd47(77)=acd47(24)*acd47(77)
      acd47(78)=acd47(14)*acd47(75)
      acd47(79)=acd47(33)*acd47(34)
      acd47(80)=acd47(29)*acd47(27)
      acd47(79)=acd47(79)+acd47(80)
      acd47(79)=acd47(30)*acd47(79)
      acd47(66)=acd47(71)+acd47(70)+acd47(66)+acd47(74)+acd47(79)+acd47(78)+acd&
      &47(77)
      acd47(66)=acd47(16)*acd47(66)
      acd47(69)=-acd47(15)*acd47(69)
      acd47(68)=acd47(19)*acd47(68)
      acd47(70)=acd47(63)*acd47(64)
      acd47(71)=acd47(23)*acd47(25)
      acd47(74)=acd47(31)*acd47(61)
      acd47(77)=acd47(44)*acd47(76)
      acd47(78)=acd47(15)*acd47(47)
      acd47(70)=acd47(78)+acd47(77)+acd47(74)+acd47(70)+acd47(71)
      acd47(70)=acd47(70)*acd47(73)
      acd47(71)=acd47(63)*acd47(65)
      acd47(73)=acd47(22)*acd47(23)
      acd47(74)=acd47(33)*acd47(61)
      acd47(76)=acd47(43)*acd47(76)
      acd47(77)=acd47(19)*acd47(47)
      acd47(71)=acd47(77)+acd47(76)+acd47(74)+acd47(71)+acd47(73)
      acd47(71)=acd47(16)*acd47(71)
      acd47(73)=-acd47(21)*acd47(44)
      acd47(74)=-acd47(17)*acd47(43)
      acd47(76)=-acd47(1)*acd47(9)
      acd47(73)=acd47(76)+acd47(73)+acd47(74)
      acd47(72)=acd47(73)*acd47(72)
      acd47(73)=acd47(21)*acd47(25)
      acd47(74)=acd47(17)*acd47(22)
      acd47(73)=acd47(74)+acd47(73)
      acd47(73)=acd47(24)*acd47(73)
      acd47(74)=acd47(1)*acd47(75)
      acd47(75)=acd47(33)*acd47(32)
      acd47(76)=acd47(31)*acd47(27)
      acd47(75)=acd47(75)+acd47(76)
      acd47(75)=acd47(30)*acd47(75)
      acd47(68)=2.0_ki*acd47(71)+acd47(70)+acd47(69)+acd47(68)+acd47(72)+acd47(&
      &75)+acd47(74)+acd47(73)
      acd47(68)=acd47(6)*acd47(68)
      acd47(69)=-acd47(19)*acd47(18)
      acd47(70)=-acd47(15)*acd47(14)
      acd47(71)=-acd47(2)*acd47(1)
      acd47(69)=acd47(71)+acd47(70)+acd47(69)
      acd47(70)=acd47(4)*acd47(3)
      acd47(70)=acd47(70)-acd47(5)
      acd47(69)=acd47(70)*acd47(69)
      acd47(70)=acd47(18)*acd47(21)
      acd47(71)=acd47(14)*acd47(17)
      acd47(72)=acd47(1)*acd47(12)
      acd47(70)=acd47(72)+acd47(70)+acd47(71)
      acd47(71)=-acd47(10)*acd47(3)
      acd47(71)=acd47(71)+acd47(13)
      acd47(70)=acd47(70)*acd47(71)
      acd47(69)=acd47(70)+acd47(69)
      brack=acd47(66)+acd47(67)+acd47(68)+2.0_ki*acd47(69)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd47
      complex(ki) :: brack
      acd47(1)=d(iv1,iv2)
      acd47(2)=spvak2k1(iv3)
      acd47(3)=spvak2k5(iv4)
      acd47(4)=abb47(51)
      acd47(5)=spvak2k1(iv4)
      acd47(6)=spvak2k5(iv3)
      acd47(7)=abb47(43)
      acd47(8)=spvak2l3(iv4)
      acd47(9)=abb47(61)
      acd47(10)=spvak2l3(iv3)
      acd47(11)=d(iv1,iv3)
      acd47(12)=spvak2k1(iv2)
      acd47(13)=spvak2k5(iv2)
      acd47(14)=spvak2l3(iv2)
      acd47(15)=d(iv1,iv4)
      acd47(16)=d(iv2,iv3)
      acd47(17)=spvak2k1(iv1)
      acd47(18)=spvak2k5(iv1)
      acd47(19)=spvak2l3(iv1)
      acd47(20)=d(iv2,iv4)
      acd47(21)=d(iv3,iv4)
      acd47(22)=acd47(1)*acd47(3)
      acd47(23)=acd47(15)*acd47(13)
      acd47(24)=acd47(20)*acd47(18)
      acd47(22)=acd47(22)+acd47(23)+acd47(24)
      acd47(23)=acd47(2)*acd47(22)
      acd47(24)=acd47(11)*acd47(3)
      acd47(25)=acd47(15)*acd47(6)
      acd47(26)=acd47(21)*acd47(18)
      acd47(24)=acd47(26)+acd47(24)+acd47(25)
      acd47(25)=acd47(12)*acd47(24)
      acd47(27)=acd47(16)*acd47(3)
      acd47(28)=acd47(20)*acd47(6)
      acd47(29)=acd47(21)*acd47(13)
      acd47(27)=acd47(29)+acd47(27)+acd47(28)
      acd47(28)=acd47(17)*acd47(27)
      acd47(29)=acd47(11)*acd47(13)
      acd47(30)=acd47(16)*acd47(18)
      acd47(29)=acd47(29)+acd47(30)
      acd47(30)=acd47(1)*acd47(6)
      acd47(30)=acd47(29)+acd47(30)
      acd47(31)=acd47(5)*acd47(30)
      acd47(23)=acd47(28)+acd47(25)+acd47(31)+acd47(23)
      acd47(23)=acd47(4)*acd47(23)
      acd47(25)=acd47(10)*acd47(22)
      acd47(24)=acd47(14)*acd47(24)
      acd47(27)=acd47(19)*acd47(27)
      acd47(28)=acd47(8)*acd47(30)
      acd47(24)=acd47(27)+acd47(24)+acd47(25)+acd47(28)
      acd47(24)=acd47(9)*acd47(24)
      acd47(22)=-acd47(6)*acd47(22)
      acd47(25)=-acd47(3)*acd47(29)
      acd47(26)=-acd47(13)*acd47(26)
      acd47(22)=acd47(26)+acd47(22)+acd47(25)
      acd47(22)=acd47(7)*acd47(22)
      acd47(22)=2.0_ki*acd47(22)+acd47(24)+acd47(23)
      brack=2.0_ki*acd47(22)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd47
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd47h1_qp
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
!---#[ subroutine reconstruct_d47:
   subroutine     reconstruct_d47(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group5
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group5), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_47:
      coeffs%coeffs_47%c0 = derivative(czip)
      coeffs%coeffs_47%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_47%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_47%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_47%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_47%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_47%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_47%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_47%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_47%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_47%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_47%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_47%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_47%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_47%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_47%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_47%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_47%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_47%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_47%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_47%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_47%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_47%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_47%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_47%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_47%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_47%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_47%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_47%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_47%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_47%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_47%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_47%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_47%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_47%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_47%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_47%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_47%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_47%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_47%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_47%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_47%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_47%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_47%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_47%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_47%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_47%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_47%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_47%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_47%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_47%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_47%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_47%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_47%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_47%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_47%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_47%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_47%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_47%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_47%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_47%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_47%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_47%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_47%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_47%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_47%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_47%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_47%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_47%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_47%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_47%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_47%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_47%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_47%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_47%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_47%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_47%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_47%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_47%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_47%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_47%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_47%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_47%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_47%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_47%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_47%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_47%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_47%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_47%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_47%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_47%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_47%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_47%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_47%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_47%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_47%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_47%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_47%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_47%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_47%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_47%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_47%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_47%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_47%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_47%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_47%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_47%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_47%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_47%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_47%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_47%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_47%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_47%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_47%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_47%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_47%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_47%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_47%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_47%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_47%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_47%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_47%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_47%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_47%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_47%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_47%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_47:
   end subroutine reconstruct_d47
!---#] subroutine reconstruct_d47:
end module p0_gg_hhg_d47h1l1d_qp
