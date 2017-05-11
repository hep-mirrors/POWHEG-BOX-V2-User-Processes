module p0_gg_hhg_d27h3l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d27h3l1d.f90
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
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d27
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd27h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd27
      complex(ki) :: brack
      acd27(1)=dotproduct(k1,qshift)
      acd27(2)=dotproduct(k2,qshift)
      acd27(3)=abb27(62)
      acd27(4)=dotproduct(l3,qshift)
      acd27(5)=abb27(57)
      acd27(6)=dotproduct(qshift,qshift)
      acd27(7)=abb27(16)
      acd27(8)=abb27(30)
      acd27(9)=dotproduct(qshift,spvak2k1)
      acd27(10)=abb27(21)
      acd27(11)=abb27(38)
      acd27(12)=dotproduct(k5,qshift)
      acd27(13)=abb27(26)
      acd27(14)=abb27(28)
      acd27(15)=abb27(20)
      acd27(16)=abb27(48)
      acd27(17)=abb27(37)
      acd27(18)=abb27(50)
      acd27(19)=dotproduct(l4,qshift)
      acd27(20)=abb27(23)
      acd27(21)=abb27(27)
      acd27(22)=abb27(19)
      acd27(23)=abb27(11)
      acd27(24)=dotproduct(qshift,spvak2l4)
      acd27(25)=abb27(56)
      acd27(26)=dotproduct(qshift,spvak2k5)
      acd27(27)=abb27(69)
      acd27(28)=dotproduct(qshift,spval4k5)
      acd27(29)=abb27(15)
      acd27(30)=dotproduct(qshift,spvak5k1)
      acd27(31)=abb27(31)
      acd27(32)=dotproduct(qshift,spvak5l4)
      acd27(33)=abb27(64)
      acd27(34)=abb27(12)
      acd27(35)=abb27(32)
      acd27(36)=abb27(25)
      acd27(37)=abb27(22)
      acd27(38)=abb27(39)
      acd27(39)=dotproduct(qshift,spvak2l3)
      acd27(40)=abb27(13)
      acd27(41)=dotproduct(qshift,spval3k2)
      acd27(42)=abb27(33)
      acd27(43)=dotproduct(qshift,spval3k5)
      acd27(44)=abb27(29)
      acd27(45)=dotproduct(qshift,spval4k2)
      acd27(46)=abb27(35)
      acd27(47)=dotproduct(qshift,spvak5k2)
      acd27(48)=abb27(24)
      acd27(49)=dotproduct(qshift,spvak5l3)
      acd27(50)=abb27(41)
      acd27(51)=abb27(10)
      acd27(52)=abb27(36)
      acd27(53)=abb27(67)
      acd27(54)=abb27(59)
      acd27(55)=abb27(14)
      acd27(56)=abb27(63)
      acd27(57)=abb27(40)
      acd27(58)=abb27(45)
      acd27(59)=abb27(66)
      acd27(60)=abb27(18)
      acd27(61)=acd27(2)+acd27(12)
      acd27(62)=-acd27(10)*acd27(61)
      acd27(63)=acd27(4)*acd27(11)
      acd27(62)=acd27(63)+acd27(15)+acd27(62)
      acd27(62)=acd27(2)*acd27(62)
      acd27(63)=acd27(45)*acd27(46)
      acd27(64)=acd27(43)*acd27(44)
      acd27(65)=acd27(41)*acd27(42)
      acd27(66)=acd27(49)*acd27(50)
      acd27(67)=acd27(47)*acd27(48)
      acd27(68)=acd27(39)*acd27(40)
      acd27(69)=acd27(32)*acd27(38)
      acd27(70)=acd27(28)*acd27(37)
      acd27(71)=acd27(26)*acd27(36)
      acd27(72)=acd27(24)*acd27(35)
      acd27(73)=acd27(19)*acd27(20)
      acd27(74)=acd27(12)*acd27(22)
      acd27(75)=acd27(12)*acd27(11)
      acd27(75)=acd27(17)+acd27(75)
      acd27(75)=acd27(4)*acd27(75)
      acd27(61)=-acd27(13)*acd27(61)
      acd27(61)=-acd27(23)+acd27(61)
      acd27(61)=acd27(6)*acd27(61)
      acd27(61)=acd27(61)+acd27(62)+acd27(75)+acd27(74)+acd27(73)+acd27(72)+acd&
      &27(71)+acd27(70)+acd27(69)+acd27(68)+acd27(67)+acd27(66)+acd27(65)+acd27&
      &(64)-acd27(51)+acd27(63)
      acd27(61)=acd27(9)*acd27(61)
      acd27(62)=-acd27(6)+acd27(1)+acd27(19)
      acd27(62)=acd27(7)*acd27(62)
      acd27(63)=-acd27(30)*acd27(31)
      acd27(64)=-acd27(32)*acd27(33)
      acd27(65)=-acd27(28)*acd27(29)
      acd27(66)=-acd27(26)*acd27(27)
      acd27(67)=acd27(24)*acd27(25)
      acd27(68)=acd27(4)*acd27(5)
      acd27(69)=-acd27(2)*acd27(14)
      acd27(62)=acd27(69)+acd27(68)+acd27(67)+acd27(66)+acd27(65)+acd27(64)+acd&
      &27(34)+acd27(63)+acd27(62)
      acd27(62)=acd27(6)*acd27(62)
      acd27(63)=-acd27(49)*acd27(59)
      acd27(64)=-acd27(47)*acd27(58)
      acd27(65)=-acd27(39)*acd27(57)
      acd27(66)=-acd27(30)*acd27(55)
      acd27(67)=-acd27(32)*acd27(56)
      acd27(68)=-acd27(28)*acd27(54)
      acd27(69)=-acd27(26)*acd27(53)
      acd27(70)=-acd27(24)*acd27(52)
      acd27(71)=-acd27(19)*acd27(21)
      acd27(72)=-acd27(1)*acd27(8)
      acd27(73)=-acd27(1)*acd27(5)
      acd27(73)=-acd27(18)+acd27(73)
      acd27(73)=acd27(4)*acd27(73)
      acd27(74)=acd27(1)*acd27(3)
      acd27(74)=-acd27(16)+acd27(74)
      acd27(74)=acd27(2)*acd27(74)
      brack=acd27(60)+acd27(61)+acd27(62)+acd27(63)+acd27(64)+acd27(65)+acd27(6&
      &6)+acd27(67)+acd27(68)+acd27(69)+acd27(70)+acd27(71)+acd27(72)+acd27(73)&
      &+acd27(74)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd27h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd27
      complex(ki) :: brack
      acd27(1)=k1(iv1)
      acd27(2)=dotproduct(k2,qshift)
      acd27(3)=abb27(62)
      acd27(4)=dotproduct(l3,qshift)
      acd27(5)=abb27(57)
      acd27(6)=dotproduct(qshift,qshift)
      acd27(7)=abb27(16)
      acd27(8)=abb27(30)
      acd27(9)=k2(iv1)
      acd27(10)=dotproduct(k1,qshift)
      acd27(11)=dotproduct(qshift,spvak2k1)
      acd27(12)=abb27(21)
      acd27(13)=abb27(38)
      acd27(14)=dotproduct(k5,qshift)
      acd27(15)=abb27(26)
      acd27(16)=abb27(28)
      acd27(17)=abb27(20)
      acd27(18)=abb27(48)
      acd27(19)=l3(iv1)
      acd27(20)=abb27(37)
      acd27(21)=abb27(50)
      acd27(22)=l4(iv1)
      acd27(23)=abb27(23)
      acd27(24)=abb27(27)
      acd27(25)=k5(iv1)
      acd27(26)=abb27(19)
      acd27(27)=qshift(iv1)
      acd27(28)=dotproduct(l4,qshift)
      acd27(29)=abb27(11)
      acd27(30)=dotproduct(qshift,spvak2l4)
      acd27(31)=abb27(56)
      acd27(32)=dotproduct(qshift,spvak2k5)
      acd27(33)=abb27(69)
      acd27(34)=dotproduct(qshift,spval4k5)
      acd27(35)=abb27(15)
      acd27(36)=dotproduct(qshift,spvak5k1)
      acd27(37)=abb27(31)
      acd27(38)=dotproduct(qshift,spvak5l4)
      acd27(39)=abb27(64)
      acd27(40)=abb27(12)
      acd27(41)=spvak2k1(iv1)
      acd27(42)=abb27(32)
      acd27(43)=abb27(25)
      acd27(44)=abb27(22)
      acd27(45)=abb27(39)
      acd27(46)=dotproduct(qshift,spvak2l3)
      acd27(47)=abb27(13)
      acd27(48)=dotproduct(qshift,spval3k2)
      acd27(49)=abb27(33)
      acd27(50)=dotproduct(qshift,spval3k5)
      acd27(51)=abb27(29)
      acd27(52)=dotproduct(qshift,spval4k2)
      acd27(53)=abb27(35)
      acd27(54)=dotproduct(qshift,spvak5k2)
      acd27(55)=abb27(24)
      acd27(56)=dotproduct(qshift,spvak5l3)
      acd27(57)=abb27(41)
      acd27(58)=abb27(10)
      acd27(59)=spvak2l4(iv1)
      acd27(60)=abb27(36)
      acd27(61)=spvak2k5(iv1)
      acd27(62)=abb27(67)
      acd27(63)=spval4k5(iv1)
      acd27(64)=abb27(59)
      acd27(65)=spvak5k1(iv1)
      acd27(66)=abb27(14)
      acd27(67)=spvak5l4(iv1)
      acd27(68)=abb27(63)
      acd27(69)=spvak2l3(iv1)
      acd27(70)=abb27(40)
      acd27(71)=spval3k2(iv1)
      acd27(72)=spval3k5(iv1)
      acd27(73)=spval4k2(iv1)
      acd27(74)=spvak5k2(iv1)
      acd27(75)=abb27(45)
      acd27(76)=spvak5l3(iv1)
      acd27(77)=abb27(66)
      acd27(78)=acd27(14)*acd27(12)
      acd27(79)=acd27(4)*acd27(13)
      acd27(78)=-acd27(17)+acd27(78)-acd27(79)
      acd27(80)=acd27(9)*acd27(78)
      acd27(81)=2.0_ki*acd27(9)+acd27(25)
      acd27(81)=acd27(12)*acd27(81)
      acd27(82)=acd27(13)*acd27(19)
      acd27(81)=-acd27(82)+acd27(81)
      acd27(81)=acd27(2)*acd27(81)
      acd27(82)=acd27(14)+acd27(2)
      acd27(82)=acd27(15)*acd27(82)
      acd27(82)=acd27(82)+acd27(29)
      acd27(83)=2.0_ki*acd27(27)
      acd27(84)=acd27(82)*acd27(83)
      acd27(79)=-acd27(79)-acd27(26)
      acd27(79)=acd27(25)*acd27(79)
      acd27(85)=acd27(14)*acd27(13)
      acd27(85)=acd27(85)+acd27(20)
      acd27(86)=-acd27(19)*acd27(85)
      acd27(87)=-acd27(57)*acd27(76)
      acd27(88)=-acd27(55)*acd27(74)
      acd27(89)=-acd27(53)*acd27(73)
      acd27(90)=-acd27(51)*acd27(72)
      acd27(91)=-acd27(49)*acd27(71)
      acd27(92)=-acd27(47)*acd27(69)
      acd27(93)=-acd27(67)*acd27(45)
      acd27(94)=-acd27(63)*acd27(44)
      acd27(95)=-acd27(61)*acd27(43)
      acd27(96)=-acd27(59)*acd27(42)
      acd27(97)=-acd27(22)*acd27(23)
      acd27(98)=acd27(25)+acd27(9)
      acd27(98)=acd27(6)*acd27(15)*acd27(98)
      acd27(79)=acd27(98)+acd27(84)+acd27(81)+acd27(80)+acd27(97)+acd27(96)+acd&
      &27(95)+acd27(94)+acd27(93)+acd27(92)+acd27(91)+acd27(90)+acd27(89)+acd27&
      &(87)+acd27(88)+acd27(86)+acd27(79)
      acd27(79)=acd27(11)*acd27(79)
      acd27(80)=acd27(2)*acd27(12)
      acd27(78)=acd27(80)+acd27(78)
      acd27(78)=acd27(2)*acd27(78)
      acd27(80)=-acd27(57)*acd27(56)
      acd27(81)=-acd27(55)*acd27(54)
      acd27(84)=-acd27(53)*acd27(52)
      acd27(86)=-acd27(51)*acd27(50)
      acd27(87)=-acd27(49)*acd27(48)
      acd27(88)=-acd27(47)*acd27(46)
      acd27(89)=-acd27(38)*acd27(45)
      acd27(90)=-acd27(34)*acd27(44)
      acd27(91)=-acd27(32)*acd27(43)
      acd27(92)=-acd27(30)*acd27(42)
      acd27(93)=-acd27(23)*acd27(28)
      acd27(94)=-acd27(14)*acd27(26)
      acd27(85)=-acd27(4)*acd27(85)
      acd27(82)=acd27(6)*acd27(82)
      acd27(78)=acd27(82)+acd27(78)+acd27(85)+acd27(94)+acd27(93)+acd27(92)+acd&
      &27(91)+acd27(90)+acd27(89)+acd27(88)+acd27(87)+acd27(86)+acd27(84)+acd27&
      &(81)+acd27(58)+acd27(80)
      acd27(78)=acd27(41)*acd27(78)
      acd27(80)=acd27(4)*acd27(5)
      acd27(81)=acd27(38)*acd27(39)
      acd27(82)=acd27(37)*acd27(36)
      acd27(84)=acd27(34)*acd27(35)
      acd27(85)=acd27(32)*acd27(33)
      acd27(86)=-acd27(30)*acd27(31)
      acd27(87)=-acd27(28)-acd27(10)
      acd27(87)=acd27(7)*acd27(87)
      acd27(88)=acd27(2)*acd27(16)
      acd27(81)=acd27(88)-acd27(80)+acd27(87)+acd27(86)+acd27(85)+acd27(84)+acd&
      &27(82)-acd27(40)+acd27(81)
      acd27(81)=acd27(81)*acd27(83)
      acd27(82)=4.0_ki*acd27(27)-acd27(22)-acd27(1)
      acd27(82)=acd27(7)*acd27(82)
      acd27(83)=acd27(37)*acd27(65)
      acd27(84)=acd27(67)*acd27(39)
      acd27(85)=acd27(63)*acd27(35)
      acd27(86)=acd27(61)*acd27(33)
      acd27(87)=-acd27(59)*acd27(31)
      acd27(88)=-acd27(19)*acd27(5)
      acd27(89)=acd27(9)*acd27(16)
      acd27(82)=acd27(89)+acd27(88)+acd27(87)+acd27(86)+acd27(85)+acd27(83)+acd&
      &27(84)+acd27(82)
      acd27(82)=acd27(6)*acd27(82)
      acd27(83)=-acd27(2)*acd27(3)
      acd27(80)=acd27(83)+acd27(80)+acd27(8)
      acd27(80)=acd27(1)*acd27(80)
      acd27(83)=acd27(76)*acd27(77)
      acd27(84)=acd27(74)*acd27(75)
      acd27(85)=acd27(69)*acd27(70)
      acd27(86)=acd27(65)*acd27(66)
      acd27(87)=acd27(67)*acd27(68)
      acd27(88)=acd27(63)*acd27(64)
      acd27(89)=acd27(61)*acd27(62)
      acd27(90)=acd27(59)*acd27(60)
      acd27(91)=acd27(22)*acd27(24)
      acd27(92)=acd27(5)*acd27(10)
      acd27(92)=acd27(21)+acd27(92)
      acd27(92)=acd27(19)*acd27(92)
      acd27(93)=-acd27(10)*acd27(3)
      acd27(93)=acd27(18)+acd27(93)
      acd27(93)=acd27(9)*acd27(93)
      brack=acd27(78)+acd27(79)+acd27(80)+acd27(81)+acd27(82)+acd27(83)+acd27(8&
      &4)+acd27(85)+acd27(86)+acd27(87)+acd27(88)+acd27(89)+acd27(90)+acd27(91)&
      &+acd27(92)+acd27(93)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd27h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(101) :: acd27
      complex(ki) :: brack
      acd27(1)=d(iv1,iv2)
      acd27(2)=dotproduct(k1,qshift)
      acd27(3)=abb27(16)
      acd27(4)=dotproduct(k2,qshift)
      acd27(5)=dotproduct(qshift,spvak2k1)
      acd27(6)=abb27(26)
      acd27(7)=abb27(28)
      acd27(8)=dotproduct(l3,qshift)
      acd27(9)=abb27(57)
      acd27(10)=dotproduct(l4,qshift)
      acd27(11)=dotproduct(k5,qshift)
      acd27(12)=dotproduct(qshift,qshift)
      acd27(13)=abb27(11)
      acd27(14)=dotproduct(qshift,spvak2l4)
      acd27(15)=abb27(56)
      acd27(16)=dotproduct(qshift,spvak2k5)
      acd27(17)=abb27(69)
      acd27(18)=dotproduct(qshift,spval4k5)
      acd27(19)=abb27(15)
      acd27(20)=dotproduct(qshift,spvak5k1)
      acd27(21)=abb27(31)
      acd27(22)=dotproduct(qshift,spvak5l4)
      acd27(23)=abb27(64)
      acd27(24)=abb27(12)
      acd27(25)=k1(iv1)
      acd27(26)=k2(iv2)
      acd27(27)=abb27(62)
      acd27(28)=l3(iv2)
      acd27(29)=qshift(iv2)
      acd27(30)=k1(iv2)
      acd27(31)=k2(iv1)
      acd27(32)=l3(iv1)
      acd27(33)=qshift(iv1)
      acd27(34)=abb27(21)
      acd27(35)=abb27(38)
      acd27(36)=k5(iv2)
      acd27(37)=spvak2k1(iv2)
      acd27(38)=abb27(20)
      acd27(39)=k5(iv1)
      acd27(40)=spvak2k1(iv1)
      acd27(41)=abb27(37)
      acd27(42)=l4(iv1)
      acd27(43)=abb27(23)
      acd27(44)=l4(iv2)
      acd27(45)=abb27(19)
      acd27(46)=spvak2l4(iv2)
      acd27(47)=spvak2k5(iv2)
      acd27(48)=spval4k5(iv2)
      acd27(49)=spvak5k1(iv2)
      acd27(50)=spvak5l4(iv2)
      acd27(51)=spvak2l4(iv1)
      acd27(52)=spvak2k5(iv1)
      acd27(53)=spval4k5(iv1)
      acd27(54)=spvak5k1(iv1)
      acd27(55)=spvak5l4(iv1)
      acd27(56)=abb27(32)
      acd27(57)=abb27(25)
      acd27(58)=abb27(22)
      acd27(59)=abb27(39)
      acd27(60)=spvak2l3(iv2)
      acd27(61)=abb27(13)
      acd27(62)=spval3k2(iv2)
      acd27(63)=abb27(33)
      acd27(64)=spval3k5(iv2)
      acd27(65)=abb27(29)
      acd27(66)=spval4k2(iv2)
      acd27(67)=abb27(35)
      acd27(68)=spvak5k2(iv2)
      acd27(69)=abb27(24)
      acd27(70)=spvak5l3(iv2)
      acd27(71)=abb27(41)
      acd27(72)=spvak2l3(iv1)
      acd27(73)=spval3k2(iv1)
      acd27(74)=spval3k5(iv1)
      acd27(75)=spval4k2(iv1)
      acd27(76)=spvak5k2(iv1)
      acd27(77)=spvak5l3(iv1)
      acd27(78)=acd27(34)*acd27(11)
      acd27(79)=acd27(4)*acd27(34)
      acd27(78)=2.0_ki*acd27(79)+acd27(78)-acd27(38)
      acd27(80)=-acd27(26)*acd27(78)
      acd27(81)=acd27(26)+acd27(36)
      acd27(82)=acd27(8)*acd27(81)
      acd27(83)=acd27(4)+acd27(11)
      acd27(84)=acd27(28)*acd27(83)
      acd27(82)=acd27(84)+acd27(82)
      acd27(82)=acd27(35)*acd27(82)
      acd27(84)=acd27(6)*acd27(12)
      acd27(85)=-acd27(81)*acd27(84)
      acd27(86)=acd27(83)*acd27(6)
      acd27(86)=acd27(86)+acd27(13)
      acd27(87)=2.0_ki*acd27(29)
      acd27(88)=-acd27(86)*acd27(87)
      acd27(79)=acd27(79)-acd27(45)
      acd27(89)=-acd27(36)*acd27(79)
      acd27(90)=acd27(71)*acd27(70)
      acd27(91)=acd27(69)*acd27(68)
      acd27(92)=acd27(67)*acd27(66)
      acd27(93)=acd27(65)*acd27(64)
      acd27(94)=acd27(63)*acd27(62)
      acd27(95)=acd27(61)*acd27(60)
      acd27(96)=acd27(50)*acd27(59)
      acd27(97)=acd27(48)*acd27(58)
      acd27(98)=acd27(47)*acd27(57)
      acd27(99)=acd27(46)*acd27(56)
      acd27(100)=acd27(43)*acd27(44)
      acd27(101)=acd27(28)*acd27(41)
      acd27(80)=acd27(88)+acd27(85)+acd27(82)+acd27(80)+acd27(101)+acd27(100)+a&
      &cd27(99)+acd27(98)+acd27(97)+acd27(96)+acd27(95)+acd27(94)+acd27(93)+acd&
      &27(92)+acd27(90)+acd27(91)+acd27(89)
      acd27(80)=acd27(40)*acd27(80)
      acd27(78)=-acd27(31)*acd27(78)
      acd27(82)=acd27(31)+acd27(39)
      acd27(85)=acd27(8)*acd27(82)
      acd27(83)=acd27(32)*acd27(83)
      acd27(83)=acd27(83)+acd27(85)
      acd27(83)=acd27(35)*acd27(83)
      acd27(84)=-acd27(82)*acd27(84)
      acd27(85)=2.0_ki*acd27(33)
      acd27(88)=-acd27(86)*acd27(85)
      acd27(79)=-acd27(39)*acd27(79)
      acd27(89)=acd27(71)*acd27(77)
      acd27(90)=acd27(69)*acd27(76)
      acd27(91)=acd27(67)*acd27(75)
      acd27(92)=acd27(65)*acd27(74)
      acd27(93)=acd27(63)*acd27(73)
      acd27(94)=acd27(61)*acd27(72)
      acd27(95)=acd27(55)*acd27(59)
      acd27(96)=acd27(53)*acd27(58)
      acd27(97)=acd27(52)*acd27(57)
      acd27(98)=acd27(51)*acd27(56)
      acd27(99)=acd27(42)*acd27(43)
      acd27(100)=acd27(32)*acd27(41)
      acd27(78)=acd27(88)+acd27(84)+acd27(83)+acd27(78)+acd27(100)+acd27(99)+ac&
      &d27(98)+acd27(97)+acd27(96)+acd27(95)+acd27(94)+acd27(93)+acd27(92)+acd2&
      &7(91)+acd27(89)+acd27(90)+acd27(79)
      acd27(78)=acd27(37)*acd27(78)
      acd27(79)=-acd27(23)*acd27(22)
      acd27(83)=-acd27(21)*acd27(20)
      acd27(84)=-acd27(19)*acd27(18)
      acd27(88)=-acd27(17)*acd27(16)
      acd27(89)=acd27(15)*acd27(14)
      acd27(90)=acd27(8)*acd27(9)
      acd27(91)=-2.0_ki*acd27(12)+acd27(10)+acd27(2)
      acd27(91)=acd27(3)*acd27(91)
      acd27(92)=-acd27(4)*acd27(7)
      acd27(86)=-acd27(5)*acd27(86)
      acd27(79)=acd27(86)+acd27(92)+acd27(91)+acd27(90)+acd27(89)+acd27(88)+acd&
      &27(84)+acd27(83)+acd27(24)+acd27(79)
      acd27(79)=acd27(1)*acd27(79)
      acd27(83)=acd27(5)*acd27(6)
      acd27(84)=-acd27(81)*acd27(83)
      acd27(86)=acd27(28)*acd27(9)
      acd27(88)=-acd27(23)*acd27(50)
      acd27(89)=-acd27(21)*acd27(49)
      acd27(90)=-acd27(19)*acd27(48)
      acd27(91)=-acd27(17)*acd27(47)
      acd27(92)=acd27(15)*acd27(46)
      acd27(93)=acd27(44)+acd27(30)
      acd27(93)=acd27(3)*acd27(93)
      acd27(94)=-acd27(26)*acd27(7)
      acd27(84)=acd27(84)+acd27(94)+acd27(93)+acd27(86)+acd27(92)+acd27(91)+acd&
      &27(90)+acd27(88)+acd27(89)
      acd27(84)=acd27(84)*acd27(85)
      acd27(83)=-acd27(82)*acd27(83)
      acd27(85)=-4.0_ki*acd27(33)+acd27(42)+acd27(25)
      acd27(85)=acd27(3)*acd27(85)
      acd27(88)=acd27(32)*acd27(9)
      acd27(89)=-acd27(23)*acd27(55)
      acd27(90)=-acd27(21)*acd27(54)
      acd27(91)=-acd27(19)*acd27(53)
      acd27(92)=-acd27(17)*acd27(52)
      acd27(93)=acd27(15)*acd27(51)
      acd27(94)=-acd27(31)*acd27(7)
      acd27(83)=acd27(83)+acd27(94)+acd27(88)+acd27(93)+acd27(92)+acd27(91)+acd&
      &27(89)+acd27(90)+acd27(85)
      acd27(83)=acd27(83)*acd27(87)
      acd27(85)=acd27(34)*acd27(39)
      acd27(87)=2.0_ki*acd27(34)
      acd27(87)=-acd27(31)*acd27(87)
      acd27(85)=-acd27(85)+acd27(87)
      acd27(85)=acd27(26)*acd27(85)
      acd27(81)=acd27(32)*acd27(81)
      acd27(82)=acd27(28)*acd27(82)
      acd27(81)=acd27(82)+acd27(81)
      acd27(81)=acd27(35)*acd27(81)
      acd27(82)=-acd27(36)*acd27(31)*acd27(34)
      acd27(81)=acd27(81)+acd27(82)+acd27(85)
      acd27(81)=acd27(5)*acd27(81)
      acd27(82)=acd27(31)*acd27(27)
      acd27(82)=acd27(82)-acd27(88)
      acd27(82)=acd27(30)*acd27(82)
      acd27(85)=acd27(26)*acd27(27)
      acd27(85)=acd27(85)-acd27(86)
      acd27(85)=acd27(25)*acd27(85)
      brack=acd27(78)+2.0_ki*acd27(79)+acd27(80)+acd27(81)+acd27(82)+acd27(83)+&
      &acd27(84)+acd27(85)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd27h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd27
      complex(ki) :: brack
      acd27(1)=d(iv1,iv2)
      acd27(2)=k1(iv3)
      acd27(3)=abb27(16)
      acd27(4)=k2(iv3)
      acd27(5)=dotproduct(qshift,spvak2k1)
      acd27(6)=abb27(26)
      acd27(7)=abb27(28)
      acd27(8)=l3(iv3)
      acd27(9)=abb27(57)
      acd27(10)=l4(iv3)
      acd27(11)=k5(iv3)
      acd27(12)=qshift(iv3)
      acd27(13)=spvak2k1(iv3)
      acd27(14)=dotproduct(k2,qshift)
      acd27(15)=dotproduct(k5,qshift)
      acd27(16)=abb27(11)
      acd27(17)=spvak2l4(iv3)
      acd27(18)=abb27(56)
      acd27(19)=spvak2k5(iv3)
      acd27(20)=abb27(69)
      acd27(21)=spval4k5(iv3)
      acd27(22)=abb27(15)
      acd27(23)=spvak5k1(iv3)
      acd27(24)=abb27(31)
      acd27(25)=spvak5l4(iv3)
      acd27(26)=abb27(64)
      acd27(27)=d(iv1,iv3)
      acd27(28)=k1(iv2)
      acd27(29)=k2(iv2)
      acd27(30)=l3(iv2)
      acd27(31)=l4(iv2)
      acd27(32)=k5(iv2)
      acd27(33)=qshift(iv2)
      acd27(34)=spvak2k1(iv2)
      acd27(35)=spvak2l4(iv2)
      acd27(36)=spvak2k5(iv2)
      acd27(37)=spval4k5(iv2)
      acd27(38)=spvak5k1(iv2)
      acd27(39)=spvak5l4(iv2)
      acd27(40)=d(iv2,iv3)
      acd27(41)=k1(iv1)
      acd27(42)=k2(iv1)
      acd27(43)=l3(iv1)
      acd27(44)=l4(iv1)
      acd27(45)=k5(iv1)
      acd27(46)=qshift(iv1)
      acd27(47)=spvak2k1(iv1)
      acd27(48)=spvak2l4(iv1)
      acd27(49)=spvak2k5(iv1)
      acd27(50)=spval4k5(iv1)
      acd27(51)=spvak5k1(iv1)
      acd27(52)=spvak5l4(iv1)
      acd27(53)=abb27(21)
      acd27(54)=abb27(38)
      acd27(55)=acd27(26)*acd27(52)
      acd27(56)=acd27(24)*acd27(51)
      acd27(57)=acd27(22)*acd27(50)
      acd27(58)=acd27(20)*acd27(49)
      acd27(59)=-acd27(18)*acd27(48)
      acd27(60)=-acd27(43)*acd27(9)
      acd27(61)=4.0_ki*acd27(46)-acd27(44)-acd27(41)
      acd27(61)=acd27(3)*acd27(61)
      acd27(62)=acd27(42)*acd27(7)
      acd27(63)=acd27(47)*acd27(16)
      acd27(55)=acd27(63)+acd27(62)+acd27(61)+acd27(60)+acd27(59)+acd27(58)+acd&
      &27(57)+acd27(55)+acd27(56)
      acd27(55)=acd27(40)*acd27(55)
      acd27(56)=acd27(26)*acd27(39)
      acd27(57)=acd27(24)*acd27(38)
      acd27(58)=acd27(22)*acd27(37)
      acd27(59)=acd27(20)*acd27(36)
      acd27(60)=-acd27(18)*acd27(35)
      acd27(61)=-acd27(30)*acd27(9)
      acd27(62)=4.0_ki*acd27(33)-acd27(31)-acd27(28)
      acd27(62)=acd27(3)*acd27(62)
      acd27(63)=acd27(29)*acd27(7)
      acd27(64)=acd27(34)*acd27(16)
      acd27(56)=acd27(64)+acd27(63)+acd27(62)+acd27(61)+acd27(60)+acd27(59)+acd&
      &27(58)+acd27(56)+acd27(57)
      acd27(56)=acd27(27)*acd27(56)
      acd27(57)=acd27(26)*acd27(25)
      acd27(58)=acd27(24)*acd27(23)
      acd27(59)=acd27(22)*acd27(21)
      acd27(60)=acd27(20)*acd27(19)
      acd27(61)=-acd27(18)*acd27(17)
      acd27(62)=-acd27(8)*acd27(9)
      acd27(63)=4.0_ki*acd27(12)-acd27(10)-acd27(2)
      acd27(63)=acd27(3)*acd27(63)
      acd27(64)=acd27(4)*acd27(7)
      acd27(65)=acd27(13)*acd27(16)
      acd27(57)=acd27(65)+acd27(64)+acd27(63)+acd27(62)+acd27(61)+acd27(60)+acd&
      &27(59)+acd27(57)+acd27(58)
      acd27(57)=acd27(1)*acd27(57)
      acd27(58)=acd27(4)+acd27(11)
      acd27(59)=acd27(33)*acd27(58)
      acd27(60)=acd27(29)+acd27(32)
      acd27(61)=acd27(12)*acd27(60)
      acd27(59)=acd27(61)+acd27(59)
      acd27(59)=acd27(47)*acd27(59)
      acd27(61)=acd27(46)*acd27(58)
      acd27(62)=acd27(42)+acd27(45)
      acd27(63)=acd27(12)*acd27(62)
      acd27(61)=acd27(63)+acd27(61)
      acd27(61)=acd27(34)*acd27(61)
      acd27(63)=acd27(46)*acd27(60)
      acd27(64)=acd27(33)*acd27(62)
      acd27(63)=acd27(64)+acd27(63)
      acd27(63)=acd27(13)*acd27(63)
      acd27(64)=acd27(5)*acd27(62)
      acd27(65)=acd27(14)+acd27(15)
      acd27(66)=acd27(47)*acd27(65)
      acd27(64)=acd27(66)+acd27(64)
      acd27(64)=acd27(40)*acd27(64)
      acd27(66)=acd27(5)*acd27(60)
      acd27(67)=acd27(34)*acd27(65)
      acd27(66)=acd27(67)+acd27(66)
      acd27(66)=acd27(27)*acd27(66)
      acd27(67)=acd27(5)*acd27(58)
      acd27(65)=acd27(13)*acd27(65)
      acd27(65)=acd27(65)+acd27(67)
      acd27(65)=acd27(1)*acd27(65)
      acd27(59)=acd27(65)+acd27(66)+acd27(64)+acd27(63)+acd27(59)+acd27(61)
      acd27(59)=acd27(6)*acd27(59)
      acd27(55)=acd27(55)+acd27(56)+acd27(57)+acd27(59)
      acd27(56)=acd27(53)*acd27(32)
      acd27(57)=2.0_ki*acd27(53)
      acd27(57)=acd27(29)*acd27(57)
      acd27(56)=acd27(56)+acd27(57)
      acd27(56)=acd27(4)*acd27(56)
      acd27(57)=-acd27(30)*acd27(58)
      acd27(59)=-acd27(8)*acd27(60)
      acd27(57)=acd27(59)+acd27(57)
      acd27(57)=acd27(54)*acd27(57)
      acd27(59)=acd27(11)*acd27(29)*acd27(53)
      acd27(56)=acd27(57)+acd27(59)+acd27(56)
      acd27(56)=acd27(47)*acd27(56)
      acd27(57)=acd27(53)*acd27(45)
      acd27(59)=acd27(42)*acd27(53)
      acd27(57)=acd27(57)+2.0_ki*acd27(59)
      acd27(61)=acd27(4)*acd27(57)
      acd27(58)=-acd27(43)*acd27(58)
      acd27(63)=-acd27(8)*acd27(62)
      acd27(58)=acd27(63)+acd27(58)
      acd27(58)=acd27(54)*acd27(58)
      acd27(63)=acd27(11)*acd27(59)
      acd27(58)=acd27(58)+acd27(63)+acd27(61)
      acd27(58)=acd27(34)*acd27(58)
      acd27(57)=acd27(29)*acd27(57)
      acd27(60)=-acd27(43)*acd27(60)
      acd27(61)=-acd27(30)*acd27(62)
      acd27(60)=acd27(61)+acd27(60)
      acd27(60)=acd27(54)*acd27(60)
      acd27(59)=acd27(32)*acd27(59)
      acd27(57)=acd27(60)+acd27(59)+acd27(57)
      acd27(57)=acd27(13)*acd27(57)
      brack=2.0_ki*acd27(55)+acd27(56)+acd27(57)+acd27(58)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd27h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd27
      complex(ki) :: brack
      acd27(1)=d(iv1,iv2)
      acd27(2)=d(iv3,iv4)
      acd27(3)=abb27(16)
      acd27(4)=k2(iv3)
      acd27(5)=spvak2k1(iv4)
      acd27(6)=abb27(26)
      acd27(7)=k2(iv4)
      acd27(8)=spvak2k1(iv3)
      acd27(9)=k5(iv3)
      acd27(10)=k5(iv4)
      acd27(11)=d(iv1,iv3)
      acd27(12)=d(iv2,iv4)
      acd27(13)=k2(iv2)
      acd27(14)=spvak2k1(iv2)
      acd27(15)=k5(iv2)
      acd27(16)=d(iv1,iv4)
      acd27(17)=d(iv2,iv3)
      acd27(18)=k2(iv1)
      acd27(19)=spvak2k1(iv1)
      acd27(20)=k5(iv1)
      acd27(21)=acd27(7)+acd27(10)
      acd27(22)=-acd27(17)*acd27(21)
      acd27(23)=acd27(4)+acd27(9)
      acd27(24)=-acd27(12)*acd27(23)
      acd27(25)=acd27(13)+acd27(15)
      acd27(26)=-acd27(2)*acd27(25)
      acd27(22)=acd27(26)+acd27(22)+acd27(24)
      acd27(22)=acd27(19)*acd27(22)
      acd27(24)=-acd27(16)*acd27(23)
      acd27(26)=-acd27(11)*acd27(21)
      acd27(27)=acd27(18)+acd27(20)
      acd27(28)=-acd27(2)*acd27(27)
      acd27(24)=acd27(28)+acd27(24)+acd27(26)
      acd27(24)=acd27(14)*acd27(24)
      acd27(26)=-acd27(16)*acd27(25)
      acd27(28)=-acd27(12)*acd27(27)
      acd27(21)=-acd27(1)*acd27(21)
      acd27(21)=acd27(21)+acd27(26)+acd27(28)
      acd27(21)=acd27(8)*acd27(21)
      acd27(26)=-acd27(17)*acd27(27)
      acd27(25)=-acd27(11)*acd27(25)
      acd27(23)=-acd27(1)*acd27(23)
      acd27(23)=acd27(23)+acd27(26)+acd27(25)
      acd27(23)=acd27(5)*acd27(23)
      acd27(21)=acd27(23)+acd27(21)+acd27(22)+acd27(24)
      acd27(21)=acd27(6)*acd27(21)
      acd27(22)=-acd27(16)*acd27(17)
      acd27(23)=-acd27(11)*acd27(12)
      acd27(24)=-acd27(1)*acd27(2)
      acd27(22)=acd27(24)+acd27(22)+acd27(23)
      acd27(22)=acd27(3)*acd27(22)
      acd27(21)=4.0_ki*acd27(22)+acd27(21)
      brack=2.0_ki*acd27(21)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd27h3_qp
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
      qshift = k3+k4
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
!---#[ subroutine reconstruct_d27:
   subroutine     reconstruct_d27(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group6
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group6), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_27:
      coeffs%coeffs_27%c0 = derivative(czip)
      coeffs%coeffs_27%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_27%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_27%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_27%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_27%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_27%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_27%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_27%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_27%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_27%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_27%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_27%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_27%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_27%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_27%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_27%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_27%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_27%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_27%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_27%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_27%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_27%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_27%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_27%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_27%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_27%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_27%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_27%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_27%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_27%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_27%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_27%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_27%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_27%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_27%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_27%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_27%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_27%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_27%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_27%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_27%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_27%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_27%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_27%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_27%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_27%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_27%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_27%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_27%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_27%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_27%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_27%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_27%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_27%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_27%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_27%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_27%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_27%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_27%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_27%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_27%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_27%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_27%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_27%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_27%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_27%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_27%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_27%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_27%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_27:
   end subroutine reconstruct_d27
!---#] subroutine reconstruct_d27:
end module p0_gg_hhg_d27h3l1d_qp
