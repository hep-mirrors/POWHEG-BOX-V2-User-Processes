module     p0_gg_hhg_d29h3l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d29h3l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d29
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd29h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd29
      complex(ki) :: brack
      acd29(1)=dotproduct(k1,qshift)
      acd29(2)=dotproduct(k2,qshift)
      acd29(3)=abb29(62)
      acd29(4)=dotproduct(l4,qshift)
      acd29(5)=abb29(57)
      acd29(6)=dotproduct(qshift,qshift)
      acd29(7)=abb29(16)
      acd29(8)=abb29(45)
      acd29(9)=dotproduct(qshift,spvak2k1)
      acd29(10)=abb29(21)
      acd29(11)=abb29(37)
      acd29(12)=dotproduct(k5,qshift)
      acd29(13)=abb29(22)
      acd29(14)=abb29(28)
      acd29(15)=abb29(20)
      acd29(16)=abb29(48)
      acd29(17)=dotproduct(l3,qshift)
      acd29(18)=abb29(23)
      acd29(19)=abb29(12)
      acd29(20)=abb29(26)
      acd29(21)=abb29(53)
      acd29(22)=abb29(19)
      acd29(23)=abb29(11)
      acd29(24)=dotproduct(qshift,spvak2l3)
      acd29(25)=abb29(56)
      acd29(26)=dotproduct(qshift,spvak2k5)
      acd29(27)=abb29(69)
      acd29(28)=dotproduct(qshift,spval3k5)
      acd29(29)=abb29(15)
      acd29(30)=dotproduct(qshift,spvak5k1)
      acd29(31)=abb29(31)
      acd29(32)=dotproduct(qshift,spvak5l3)
      acd29(33)=abb29(66)
      acd29(34)=abb29(27)
      acd29(35)=abb29(13)
      acd29(36)=abb29(25)
      acd29(37)=abb29(35)
      acd29(38)=abb29(40)
      acd29(39)=dotproduct(qshift,spvak2l4)
      acd29(40)=abb29(32)
      acd29(41)=dotproduct(qshift,spval3k2)
      acd29(42)=abb29(38)
      acd29(43)=dotproduct(qshift,spval4k2)
      acd29(44)=abb29(33)
      acd29(45)=dotproduct(qshift,spval4k5)
      acd29(46)=abb29(29)
      acd29(47)=dotproduct(qshift,spvak5k2)
      acd29(48)=abb29(24)
      acd29(49)=dotproduct(qshift,spvak5l4)
      acd29(50)=abb29(39)
      acd29(51)=abb29(10)
      acd29(52)=abb29(36)
      acd29(53)=abb29(67)
      acd29(54)=abb29(59)
      acd29(55)=abb29(14)
      acd29(56)=abb29(65)
      acd29(57)=abb29(60)
      acd29(58)=abb29(30)
      acd29(59)=abb29(63)
      acd29(60)=abb29(18)
      acd29(61)=acd29(2)+acd29(12)
      acd29(62)=-acd29(10)*acd29(61)
      acd29(63)=acd29(4)*acd29(11)
      acd29(62)=acd29(63)+acd29(15)+acd29(62)
      acd29(62)=acd29(2)*acd29(62)
      acd29(63)=acd29(45)*acd29(46)
      acd29(64)=acd29(43)*acd29(44)
      acd29(65)=acd29(41)*acd29(42)
      acd29(66)=acd29(49)*acd29(50)
      acd29(67)=acd29(47)*acd29(48)
      acd29(68)=acd29(39)*acd29(40)
      acd29(69)=acd29(32)*acd29(38)
      acd29(70)=acd29(28)*acd29(37)
      acd29(71)=acd29(26)*acd29(36)
      acd29(72)=acd29(24)*acd29(35)
      acd29(73)=acd29(17)*acd29(18)
      acd29(74)=acd29(12)*acd29(22)
      acd29(75)=acd29(12)*acd29(11)
      acd29(75)=acd29(20)+acd29(75)
      acd29(75)=acd29(4)*acd29(75)
      acd29(61)=-acd29(13)*acd29(61)
      acd29(61)=-acd29(23)+acd29(61)
      acd29(61)=acd29(6)*acd29(61)
      acd29(61)=acd29(61)+acd29(62)+acd29(75)+acd29(74)+acd29(73)+acd29(72)+acd&
      &29(71)+acd29(70)+acd29(69)+acd29(68)+acd29(67)+acd29(66)+acd29(65)+acd29&
      &(64)-acd29(51)+acd29(63)
      acd29(61)=acd29(9)*acd29(61)
      acd29(62)=-acd29(6)+acd29(1)+acd29(17)
      acd29(62)=acd29(7)*acd29(62)
      acd29(63)=-acd29(30)*acd29(31)
      acd29(64)=-acd29(32)*acd29(33)
      acd29(65)=-acd29(28)*acd29(29)
      acd29(66)=-acd29(26)*acd29(27)
      acd29(67)=acd29(24)*acd29(25)
      acd29(68)=acd29(4)*acd29(5)
      acd29(69)=-acd29(2)*acd29(14)
      acd29(62)=acd29(69)+acd29(68)+acd29(67)+acd29(66)+acd29(65)+acd29(64)+acd&
      &29(34)+acd29(63)+acd29(62)
      acd29(62)=acd29(6)*acd29(62)
      acd29(63)=-acd29(49)*acd29(59)
      acd29(64)=-acd29(47)*acd29(58)
      acd29(65)=-acd29(39)*acd29(57)
      acd29(66)=-acd29(30)*acd29(55)
      acd29(67)=-acd29(32)*acd29(56)
      acd29(68)=-acd29(28)*acd29(54)
      acd29(69)=-acd29(26)*acd29(53)
      acd29(70)=-acd29(24)*acd29(52)
      acd29(71)=-acd29(17)*acd29(19)
      acd29(72)=-acd29(1)*acd29(8)
      acd29(73)=-acd29(1)*acd29(5)
      acd29(73)=-acd29(21)+acd29(73)
      acd29(73)=acd29(4)*acd29(73)
      acd29(74)=acd29(1)*acd29(3)
      acd29(74)=-acd29(16)+acd29(74)
      acd29(74)=acd29(2)*acd29(74)
      brack=acd29(60)+acd29(61)+acd29(62)+acd29(63)+acd29(64)+acd29(65)+acd29(6&
      &6)+acd29(67)+acd29(68)+acd29(69)+acd29(70)+acd29(71)+acd29(72)+acd29(73)&
      &+acd29(74)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd29h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd29
      complex(ki) :: brack
      acd29(1)=k1(iv1)
      acd29(2)=dotproduct(k2,qshift)
      acd29(3)=abb29(62)
      acd29(4)=dotproduct(l4,qshift)
      acd29(5)=abb29(57)
      acd29(6)=dotproduct(qshift,qshift)
      acd29(7)=abb29(16)
      acd29(8)=abb29(45)
      acd29(9)=k2(iv1)
      acd29(10)=dotproduct(k1,qshift)
      acd29(11)=dotproduct(qshift,spvak2k1)
      acd29(12)=abb29(21)
      acd29(13)=abb29(37)
      acd29(14)=dotproduct(k5,qshift)
      acd29(15)=abb29(22)
      acd29(16)=abb29(28)
      acd29(17)=abb29(20)
      acd29(18)=abb29(48)
      acd29(19)=l3(iv1)
      acd29(20)=abb29(23)
      acd29(21)=abb29(12)
      acd29(22)=l4(iv1)
      acd29(23)=abb29(26)
      acd29(24)=abb29(53)
      acd29(25)=k5(iv1)
      acd29(26)=abb29(19)
      acd29(27)=qshift(iv1)
      acd29(28)=dotproduct(l3,qshift)
      acd29(29)=abb29(11)
      acd29(30)=dotproduct(qshift,spvak2l3)
      acd29(31)=abb29(56)
      acd29(32)=dotproduct(qshift,spvak2k5)
      acd29(33)=abb29(69)
      acd29(34)=dotproduct(qshift,spval3k5)
      acd29(35)=abb29(15)
      acd29(36)=dotproduct(qshift,spvak5k1)
      acd29(37)=abb29(31)
      acd29(38)=dotproduct(qshift,spvak5l3)
      acd29(39)=abb29(66)
      acd29(40)=abb29(27)
      acd29(41)=spvak2k1(iv1)
      acd29(42)=abb29(13)
      acd29(43)=abb29(25)
      acd29(44)=abb29(35)
      acd29(45)=abb29(40)
      acd29(46)=dotproduct(qshift,spvak2l4)
      acd29(47)=abb29(32)
      acd29(48)=dotproduct(qshift,spval3k2)
      acd29(49)=abb29(38)
      acd29(50)=dotproduct(qshift,spval4k2)
      acd29(51)=abb29(33)
      acd29(52)=dotproduct(qshift,spval4k5)
      acd29(53)=abb29(29)
      acd29(54)=dotproduct(qshift,spvak5k2)
      acd29(55)=abb29(24)
      acd29(56)=dotproduct(qshift,spvak5l4)
      acd29(57)=abb29(39)
      acd29(58)=abb29(10)
      acd29(59)=spvak2l3(iv1)
      acd29(60)=abb29(36)
      acd29(61)=spvak2k5(iv1)
      acd29(62)=abb29(67)
      acd29(63)=spval3k5(iv1)
      acd29(64)=abb29(59)
      acd29(65)=spvak5k1(iv1)
      acd29(66)=abb29(14)
      acd29(67)=spvak5l3(iv1)
      acd29(68)=abb29(65)
      acd29(69)=spvak2l4(iv1)
      acd29(70)=abb29(60)
      acd29(71)=spval3k2(iv1)
      acd29(72)=spval4k2(iv1)
      acd29(73)=spval4k5(iv1)
      acd29(74)=spvak5k2(iv1)
      acd29(75)=abb29(30)
      acd29(76)=spvak5l4(iv1)
      acd29(77)=abb29(63)
      acd29(78)=acd29(14)*acd29(12)
      acd29(79)=acd29(4)*acd29(13)
      acd29(78)=-acd29(17)+acd29(78)-acd29(79)
      acd29(80)=acd29(9)*acd29(78)
      acd29(81)=2.0_ki*acd29(9)+acd29(25)
      acd29(81)=acd29(12)*acd29(81)
      acd29(82)=acd29(13)*acd29(22)
      acd29(81)=-acd29(82)+acd29(81)
      acd29(81)=acd29(2)*acd29(81)
      acd29(82)=acd29(14)+acd29(2)
      acd29(82)=acd29(15)*acd29(82)
      acd29(82)=acd29(82)+acd29(29)
      acd29(83)=2.0_ki*acd29(27)
      acd29(84)=acd29(82)*acd29(83)
      acd29(79)=-acd29(79)-acd29(26)
      acd29(79)=acd29(25)*acd29(79)
      acd29(85)=acd29(14)*acd29(13)
      acd29(85)=acd29(85)+acd29(23)
      acd29(86)=-acd29(22)*acd29(85)
      acd29(87)=-acd29(57)*acd29(76)
      acd29(88)=-acd29(55)*acd29(74)
      acd29(89)=-acd29(53)*acd29(73)
      acd29(90)=-acd29(51)*acd29(72)
      acd29(91)=-acd29(49)*acd29(71)
      acd29(92)=-acd29(47)*acd29(69)
      acd29(93)=-acd29(67)*acd29(45)
      acd29(94)=-acd29(63)*acd29(44)
      acd29(95)=-acd29(61)*acd29(43)
      acd29(96)=-acd29(59)*acd29(42)
      acd29(97)=-acd29(19)*acd29(20)
      acd29(98)=acd29(25)+acd29(9)
      acd29(98)=acd29(6)*acd29(15)*acd29(98)
      acd29(79)=acd29(98)+acd29(84)+acd29(81)+acd29(80)+acd29(97)+acd29(96)+acd&
      &29(95)+acd29(94)+acd29(93)+acd29(92)+acd29(91)+acd29(90)+acd29(89)+acd29&
      &(87)+acd29(88)+acd29(86)+acd29(79)
      acd29(79)=acd29(11)*acd29(79)
      acd29(80)=acd29(2)*acd29(12)
      acd29(78)=acd29(80)+acd29(78)
      acd29(78)=acd29(2)*acd29(78)
      acd29(80)=-acd29(57)*acd29(56)
      acd29(81)=-acd29(55)*acd29(54)
      acd29(84)=-acd29(53)*acd29(52)
      acd29(86)=-acd29(51)*acd29(50)
      acd29(87)=-acd29(49)*acd29(48)
      acd29(88)=-acd29(47)*acd29(46)
      acd29(89)=-acd29(38)*acd29(45)
      acd29(90)=-acd29(34)*acd29(44)
      acd29(91)=-acd29(32)*acd29(43)
      acd29(92)=-acd29(30)*acd29(42)
      acd29(93)=-acd29(20)*acd29(28)
      acd29(94)=-acd29(14)*acd29(26)
      acd29(85)=-acd29(4)*acd29(85)
      acd29(82)=acd29(6)*acd29(82)
      acd29(78)=acd29(82)+acd29(78)+acd29(85)+acd29(94)+acd29(93)+acd29(92)+acd&
      &29(91)+acd29(90)+acd29(89)+acd29(88)+acd29(87)+acd29(86)+acd29(84)+acd29&
      &(81)+acd29(58)+acd29(80)
      acd29(78)=acd29(41)*acd29(78)
      acd29(80)=acd29(4)*acd29(5)
      acd29(81)=acd29(38)*acd29(39)
      acd29(82)=acd29(37)*acd29(36)
      acd29(84)=acd29(34)*acd29(35)
      acd29(85)=acd29(32)*acd29(33)
      acd29(86)=-acd29(30)*acd29(31)
      acd29(87)=-acd29(28)-acd29(10)
      acd29(87)=acd29(7)*acd29(87)
      acd29(88)=acd29(2)*acd29(16)
      acd29(81)=acd29(88)-acd29(80)+acd29(87)+acd29(86)+acd29(85)+acd29(84)+acd&
      &29(82)-acd29(40)+acd29(81)
      acd29(81)=acd29(81)*acd29(83)
      acd29(82)=4.0_ki*acd29(27)-acd29(19)-acd29(1)
      acd29(82)=acd29(7)*acd29(82)
      acd29(83)=acd29(37)*acd29(65)
      acd29(84)=acd29(67)*acd29(39)
      acd29(85)=acd29(63)*acd29(35)
      acd29(86)=acd29(61)*acd29(33)
      acd29(87)=-acd29(59)*acd29(31)
      acd29(88)=-acd29(22)*acd29(5)
      acd29(89)=acd29(9)*acd29(16)
      acd29(82)=acd29(89)+acd29(88)+acd29(87)+acd29(86)+acd29(85)+acd29(83)+acd&
      &29(84)+acd29(82)
      acd29(82)=acd29(6)*acd29(82)
      acd29(83)=-acd29(2)*acd29(3)
      acd29(80)=acd29(83)+acd29(80)+acd29(8)
      acd29(80)=acd29(1)*acd29(80)
      acd29(83)=acd29(76)*acd29(77)
      acd29(84)=acd29(74)*acd29(75)
      acd29(85)=acd29(69)*acd29(70)
      acd29(86)=acd29(65)*acd29(66)
      acd29(87)=acd29(67)*acd29(68)
      acd29(88)=acd29(63)*acd29(64)
      acd29(89)=acd29(61)*acd29(62)
      acd29(90)=acd29(59)*acd29(60)
      acd29(91)=acd29(19)*acd29(21)
      acd29(92)=acd29(5)*acd29(10)
      acd29(92)=acd29(24)+acd29(92)
      acd29(92)=acd29(22)*acd29(92)
      acd29(93)=-acd29(10)*acd29(3)
      acd29(93)=acd29(18)+acd29(93)
      acd29(93)=acd29(9)*acd29(93)
      brack=acd29(78)+acd29(79)+acd29(80)+acd29(81)+acd29(82)+acd29(83)+acd29(8&
      &4)+acd29(85)+acd29(86)+acd29(87)+acd29(88)+acd29(89)+acd29(90)+acd29(91)&
      &+acd29(92)+acd29(93)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd29h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(101) :: acd29
      complex(ki) :: brack
      acd29(1)=d(iv1,iv2)
      acd29(2)=dotproduct(k1,qshift)
      acd29(3)=abb29(16)
      acd29(4)=dotproduct(k2,qshift)
      acd29(5)=dotproduct(qshift,spvak2k1)
      acd29(6)=abb29(22)
      acd29(7)=abb29(28)
      acd29(8)=dotproduct(l3,qshift)
      acd29(9)=dotproduct(l4,qshift)
      acd29(10)=abb29(57)
      acd29(11)=dotproduct(k5,qshift)
      acd29(12)=dotproduct(qshift,qshift)
      acd29(13)=abb29(11)
      acd29(14)=dotproduct(qshift,spvak2l3)
      acd29(15)=abb29(56)
      acd29(16)=dotproduct(qshift,spvak2k5)
      acd29(17)=abb29(69)
      acd29(18)=dotproduct(qshift,spval3k5)
      acd29(19)=abb29(15)
      acd29(20)=dotproduct(qshift,spvak5k1)
      acd29(21)=abb29(31)
      acd29(22)=dotproduct(qshift,spvak5l3)
      acd29(23)=abb29(66)
      acd29(24)=abb29(27)
      acd29(25)=k1(iv1)
      acd29(26)=k2(iv2)
      acd29(27)=abb29(62)
      acd29(28)=l4(iv2)
      acd29(29)=qshift(iv2)
      acd29(30)=k1(iv2)
      acd29(31)=k2(iv1)
      acd29(32)=l4(iv1)
      acd29(33)=qshift(iv1)
      acd29(34)=abb29(21)
      acd29(35)=abb29(37)
      acd29(36)=k5(iv2)
      acd29(37)=spvak2k1(iv2)
      acd29(38)=abb29(20)
      acd29(39)=k5(iv1)
      acd29(40)=spvak2k1(iv1)
      acd29(41)=l3(iv1)
      acd29(42)=abb29(23)
      acd29(43)=l3(iv2)
      acd29(44)=abb29(26)
      acd29(45)=abb29(19)
      acd29(46)=spvak2l3(iv2)
      acd29(47)=spvak2k5(iv2)
      acd29(48)=spval3k5(iv2)
      acd29(49)=spvak5k1(iv2)
      acd29(50)=spvak5l3(iv2)
      acd29(51)=spvak2l3(iv1)
      acd29(52)=spvak2k5(iv1)
      acd29(53)=spval3k5(iv1)
      acd29(54)=spvak5k1(iv1)
      acd29(55)=spvak5l3(iv1)
      acd29(56)=abb29(13)
      acd29(57)=abb29(25)
      acd29(58)=abb29(35)
      acd29(59)=abb29(40)
      acd29(60)=spvak2l4(iv2)
      acd29(61)=abb29(32)
      acd29(62)=spval3k2(iv2)
      acd29(63)=abb29(38)
      acd29(64)=spval4k2(iv2)
      acd29(65)=abb29(33)
      acd29(66)=spval4k5(iv2)
      acd29(67)=abb29(29)
      acd29(68)=spvak5k2(iv2)
      acd29(69)=abb29(24)
      acd29(70)=spvak5l4(iv2)
      acd29(71)=abb29(39)
      acd29(72)=spvak2l4(iv1)
      acd29(73)=spval3k2(iv1)
      acd29(74)=spval4k2(iv1)
      acd29(75)=spval4k5(iv1)
      acd29(76)=spvak5k2(iv1)
      acd29(77)=spvak5l4(iv1)
      acd29(78)=acd29(34)*acd29(11)
      acd29(79)=acd29(4)*acd29(34)
      acd29(78)=2.0_ki*acd29(79)+acd29(78)-acd29(38)
      acd29(80)=-acd29(26)*acd29(78)
      acd29(81)=acd29(26)+acd29(36)
      acd29(82)=acd29(9)*acd29(81)
      acd29(83)=acd29(4)+acd29(11)
      acd29(84)=acd29(28)*acd29(83)
      acd29(82)=acd29(84)+acd29(82)
      acd29(82)=acd29(35)*acd29(82)
      acd29(84)=acd29(6)*acd29(12)
      acd29(85)=-acd29(81)*acd29(84)
      acd29(86)=acd29(83)*acd29(6)
      acd29(86)=acd29(86)+acd29(13)
      acd29(87)=2.0_ki*acd29(29)
      acd29(88)=-acd29(86)*acd29(87)
      acd29(79)=acd29(79)-acd29(45)
      acd29(89)=-acd29(36)*acd29(79)
      acd29(90)=acd29(71)*acd29(70)
      acd29(91)=acd29(69)*acd29(68)
      acd29(92)=acd29(67)*acd29(66)
      acd29(93)=acd29(65)*acd29(64)
      acd29(94)=acd29(63)*acd29(62)
      acd29(95)=acd29(61)*acd29(60)
      acd29(96)=acd29(50)*acd29(59)
      acd29(97)=acd29(48)*acd29(58)
      acd29(98)=acd29(47)*acd29(57)
      acd29(99)=acd29(46)*acd29(56)
      acd29(100)=acd29(42)*acd29(43)
      acd29(101)=acd29(28)*acd29(44)
      acd29(80)=acd29(88)+acd29(85)+acd29(82)+acd29(80)+acd29(101)+acd29(100)+a&
      &cd29(99)+acd29(98)+acd29(97)+acd29(96)+acd29(95)+acd29(94)+acd29(93)+acd&
      &29(92)+acd29(90)+acd29(91)+acd29(89)
      acd29(80)=acd29(40)*acd29(80)
      acd29(78)=-acd29(31)*acd29(78)
      acd29(82)=acd29(31)+acd29(39)
      acd29(85)=acd29(9)*acd29(82)
      acd29(83)=acd29(32)*acd29(83)
      acd29(83)=acd29(83)+acd29(85)
      acd29(83)=acd29(35)*acd29(83)
      acd29(84)=-acd29(82)*acd29(84)
      acd29(85)=2.0_ki*acd29(33)
      acd29(88)=-acd29(86)*acd29(85)
      acd29(79)=-acd29(39)*acd29(79)
      acd29(89)=acd29(71)*acd29(77)
      acd29(90)=acd29(69)*acd29(76)
      acd29(91)=acd29(67)*acd29(75)
      acd29(92)=acd29(65)*acd29(74)
      acd29(93)=acd29(63)*acd29(73)
      acd29(94)=acd29(61)*acd29(72)
      acd29(95)=acd29(55)*acd29(59)
      acd29(96)=acd29(53)*acd29(58)
      acd29(97)=acd29(52)*acd29(57)
      acd29(98)=acd29(51)*acd29(56)
      acd29(99)=acd29(41)*acd29(42)
      acd29(100)=acd29(32)*acd29(44)
      acd29(78)=acd29(88)+acd29(84)+acd29(83)+acd29(78)+acd29(100)+acd29(99)+ac&
      &d29(98)+acd29(97)+acd29(96)+acd29(95)+acd29(94)+acd29(93)+acd29(92)+acd2&
      &9(91)+acd29(89)+acd29(90)+acd29(79)
      acd29(78)=acd29(37)*acd29(78)
      acd29(79)=-acd29(23)*acd29(22)
      acd29(83)=-acd29(21)*acd29(20)
      acd29(84)=-acd29(19)*acd29(18)
      acd29(88)=-acd29(17)*acd29(16)
      acd29(89)=acd29(15)*acd29(14)
      acd29(90)=acd29(9)*acd29(10)
      acd29(91)=-2.0_ki*acd29(12)+acd29(8)+acd29(2)
      acd29(91)=acd29(3)*acd29(91)
      acd29(92)=-acd29(4)*acd29(7)
      acd29(86)=-acd29(5)*acd29(86)
      acd29(79)=acd29(86)+acd29(92)+acd29(91)+acd29(90)+acd29(89)+acd29(88)+acd&
      &29(84)+acd29(83)+acd29(24)+acd29(79)
      acd29(79)=acd29(1)*acd29(79)
      acd29(83)=acd29(5)*acd29(6)
      acd29(84)=-acd29(81)*acd29(83)
      acd29(86)=acd29(28)*acd29(10)
      acd29(88)=-acd29(23)*acd29(50)
      acd29(89)=-acd29(21)*acd29(49)
      acd29(90)=-acd29(19)*acd29(48)
      acd29(91)=-acd29(17)*acd29(47)
      acd29(92)=acd29(15)*acd29(46)
      acd29(93)=acd29(43)+acd29(30)
      acd29(93)=acd29(3)*acd29(93)
      acd29(94)=-acd29(26)*acd29(7)
      acd29(84)=acd29(84)+acd29(94)+acd29(93)+acd29(86)+acd29(92)+acd29(91)+acd&
      &29(90)+acd29(88)+acd29(89)
      acd29(84)=acd29(84)*acd29(85)
      acd29(83)=-acd29(82)*acd29(83)
      acd29(85)=-4.0_ki*acd29(33)+acd29(41)+acd29(25)
      acd29(85)=acd29(3)*acd29(85)
      acd29(88)=acd29(32)*acd29(10)
      acd29(89)=-acd29(23)*acd29(55)
      acd29(90)=-acd29(21)*acd29(54)
      acd29(91)=-acd29(19)*acd29(53)
      acd29(92)=-acd29(17)*acd29(52)
      acd29(93)=acd29(15)*acd29(51)
      acd29(94)=-acd29(31)*acd29(7)
      acd29(83)=acd29(83)+acd29(94)+acd29(88)+acd29(93)+acd29(92)+acd29(91)+acd&
      &29(89)+acd29(90)+acd29(85)
      acd29(83)=acd29(83)*acd29(87)
      acd29(85)=acd29(34)*acd29(39)
      acd29(87)=2.0_ki*acd29(34)
      acd29(87)=-acd29(31)*acd29(87)
      acd29(85)=-acd29(85)+acd29(87)
      acd29(85)=acd29(26)*acd29(85)
      acd29(81)=acd29(32)*acd29(81)
      acd29(82)=acd29(28)*acd29(82)
      acd29(81)=acd29(82)+acd29(81)
      acd29(81)=acd29(35)*acd29(81)
      acd29(82)=-acd29(36)*acd29(31)*acd29(34)
      acd29(81)=acd29(81)+acd29(82)+acd29(85)
      acd29(81)=acd29(5)*acd29(81)
      acd29(82)=acd29(31)*acd29(27)
      acd29(82)=acd29(82)-acd29(88)
      acd29(82)=acd29(30)*acd29(82)
      acd29(85)=acd29(26)*acd29(27)
      acd29(85)=acd29(85)-acd29(86)
      acd29(85)=acd29(25)*acd29(85)
      brack=acd29(78)+2.0_ki*acd29(79)+acd29(80)+acd29(81)+acd29(82)+acd29(83)+&
      &acd29(84)+acd29(85)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd29h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd29
      complex(ki) :: brack
      acd29(1)=d(iv1,iv2)
      acd29(2)=k1(iv3)
      acd29(3)=abb29(16)
      acd29(4)=k2(iv3)
      acd29(5)=dotproduct(qshift,spvak2k1)
      acd29(6)=abb29(22)
      acd29(7)=abb29(28)
      acd29(8)=l3(iv3)
      acd29(9)=l4(iv3)
      acd29(10)=abb29(57)
      acd29(11)=k5(iv3)
      acd29(12)=qshift(iv3)
      acd29(13)=spvak2k1(iv3)
      acd29(14)=dotproduct(k2,qshift)
      acd29(15)=dotproduct(k5,qshift)
      acd29(16)=abb29(11)
      acd29(17)=spvak2l3(iv3)
      acd29(18)=abb29(56)
      acd29(19)=spvak2k5(iv3)
      acd29(20)=abb29(69)
      acd29(21)=spval3k5(iv3)
      acd29(22)=abb29(15)
      acd29(23)=spvak5k1(iv3)
      acd29(24)=abb29(31)
      acd29(25)=spvak5l3(iv3)
      acd29(26)=abb29(66)
      acd29(27)=d(iv1,iv3)
      acd29(28)=k1(iv2)
      acd29(29)=k2(iv2)
      acd29(30)=l3(iv2)
      acd29(31)=l4(iv2)
      acd29(32)=k5(iv2)
      acd29(33)=qshift(iv2)
      acd29(34)=spvak2k1(iv2)
      acd29(35)=spvak2l3(iv2)
      acd29(36)=spvak2k5(iv2)
      acd29(37)=spval3k5(iv2)
      acd29(38)=spvak5k1(iv2)
      acd29(39)=spvak5l3(iv2)
      acd29(40)=d(iv2,iv3)
      acd29(41)=k1(iv1)
      acd29(42)=k2(iv1)
      acd29(43)=l3(iv1)
      acd29(44)=l4(iv1)
      acd29(45)=k5(iv1)
      acd29(46)=qshift(iv1)
      acd29(47)=spvak2k1(iv1)
      acd29(48)=spvak2l3(iv1)
      acd29(49)=spvak2k5(iv1)
      acd29(50)=spval3k5(iv1)
      acd29(51)=spvak5k1(iv1)
      acd29(52)=spvak5l3(iv1)
      acd29(53)=abb29(21)
      acd29(54)=abb29(37)
      acd29(55)=acd29(26)*acd29(52)
      acd29(56)=acd29(24)*acd29(51)
      acd29(57)=acd29(22)*acd29(50)
      acd29(58)=acd29(20)*acd29(49)
      acd29(59)=-acd29(18)*acd29(48)
      acd29(60)=-acd29(44)*acd29(10)
      acd29(61)=4.0_ki*acd29(46)-acd29(43)-acd29(41)
      acd29(61)=acd29(3)*acd29(61)
      acd29(62)=acd29(42)*acd29(7)
      acd29(63)=acd29(47)*acd29(16)
      acd29(55)=acd29(63)+acd29(62)+acd29(61)+acd29(60)+acd29(59)+acd29(58)+acd&
      &29(57)+acd29(55)+acd29(56)
      acd29(55)=acd29(40)*acd29(55)
      acd29(56)=acd29(26)*acd29(39)
      acd29(57)=acd29(24)*acd29(38)
      acd29(58)=acd29(22)*acd29(37)
      acd29(59)=acd29(20)*acd29(36)
      acd29(60)=-acd29(18)*acd29(35)
      acd29(61)=-acd29(31)*acd29(10)
      acd29(62)=4.0_ki*acd29(33)-acd29(30)-acd29(28)
      acd29(62)=acd29(3)*acd29(62)
      acd29(63)=acd29(29)*acd29(7)
      acd29(64)=acd29(34)*acd29(16)
      acd29(56)=acd29(64)+acd29(63)+acd29(62)+acd29(61)+acd29(60)+acd29(59)+acd&
      &29(58)+acd29(56)+acd29(57)
      acd29(56)=acd29(27)*acd29(56)
      acd29(57)=acd29(26)*acd29(25)
      acd29(58)=acd29(24)*acd29(23)
      acd29(59)=acd29(22)*acd29(21)
      acd29(60)=acd29(20)*acd29(19)
      acd29(61)=-acd29(18)*acd29(17)
      acd29(62)=-acd29(9)*acd29(10)
      acd29(63)=4.0_ki*acd29(12)-acd29(8)-acd29(2)
      acd29(63)=acd29(3)*acd29(63)
      acd29(64)=acd29(4)*acd29(7)
      acd29(65)=acd29(13)*acd29(16)
      acd29(57)=acd29(65)+acd29(64)+acd29(63)+acd29(62)+acd29(61)+acd29(60)+acd&
      &29(59)+acd29(57)+acd29(58)
      acd29(57)=acd29(1)*acd29(57)
      acd29(58)=acd29(4)+acd29(11)
      acd29(59)=acd29(33)*acd29(58)
      acd29(60)=acd29(29)+acd29(32)
      acd29(61)=acd29(12)*acd29(60)
      acd29(59)=acd29(61)+acd29(59)
      acd29(59)=acd29(47)*acd29(59)
      acd29(61)=acd29(46)*acd29(58)
      acd29(62)=acd29(42)+acd29(45)
      acd29(63)=acd29(12)*acd29(62)
      acd29(61)=acd29(63)+acd29(61)
      acd29(61)=acd29(34)*acd29(61)
      acd29(63)=acd29(46)*acd29(60)
      acd29(64)=acd29(33)*acd29(62)
      acd29(63)=acd29(64)+acd29(63)
      acd29(63)=acd29(13)*acd29(63)
      acd29(64)=acd29(5)*acd29(62)
      acd29(65)=acd29(14)+acd29(15)
      acd29(66)=acd29(47)*acd29(65)
      acd29(64)=acd29(66)+acd29(64)
      acd29(64)=acd29(40)*acd29(64)
      acd29(66)=acd29(5)*acd29(60)
      acd29(67)=acd29(34)*acd29(65)
      acd29(66)=acd29(67)+acd29(66)
      acd29(66)=acd29(27)*acd29(66)
      acd29(67)=acd29(5)*acd29(58)
      acd29(65)=acd29(13)*acd29(65)
      acd29(65)=acd29(65)+acd29(67)
      acd29(65)=acd29(1)*acd29(65)
      acd29(59)=acd29(65)+acd29(66)+acd29(64)+acd29(63)+acd29(59)+acd29(61)
      acd29(59)=acd29(6)*acd29(59)
      acd29(55)=acd29(55)+acd29(56)+acd29(57)+acd29(59)
      acd29(56)=acd29(53)*acd29(32)
      acd29(57)=2.0_ki*acd29(53)
      acd29(57)=acd29(29)*acd29(57)
      acd29(56)=acd29(56)+acd29(57)
      acd29(56)=acd29(4)*acd29(56)
      acd29(57)=-acd29(31)*acd29(58)
      acd29(59)=-acd29(9)*acd29(60)
      acd29(57)=acd29(59)+acd29(57)
      acd29(57)=acd29(54)*acd29(57)
      acd29(59)=acd29(11)*acd29(29)*acd29(53)
      acd29(56)=acd29(57)+acd29(59)+acd29(56)
      acd29(56)=acd29(47)*acd29(56)
      acd29(57)=acd29(53)*acd29(45)
      acd29(59)=acd29(42)*acd29(53)
      acd29(57)=acd29(57)+2.0_ki*acd29(59)
      acd29(61)=acd29(4)*acd29(57)
      acd29(58)=-acd29(44)*acd29(58)
      acd29(63)=-acd29(9)*acd29(62)
      acd29(58)=acd29(63)+acd29(58)
      acd29(58)=acd29(54)*acd29(58)
      acd29(63)=acd29(11)*acd29(59)
      acd29(58)=acd29(58)+acd29(63)+acd29(61)
      acd29(58)=acd29(34)*acd29(58)
      acd29(57)=acd29(29)*acd29(57)
      acd29(60)=-acd29(44)*acd29(60)
      acd29(61)=-acd29(31)*acd29(62)
      acd29(60)=acd29(61)+acd29(60)
      acd29(60)=acd29(54)*acd29(60)
      acd29(59)=acd29(32)*acd29(59)
      acd29(57)=acd29(60)+acd29(59)+acd29(57)
      acd29(57)=acd29(13)*acd29(57)
      brack=2.0_ki*acd29(55)+acd29(56)+acd29(57)+acd29(58)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd29h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd29
      complex(ki) :: brack
      acd29(1)=d(iv1,iv2)
      acd29(2)=d(iv3,iv4)
      acd29(3)=abb29(16)
      acd29(4)=k2(iv3)
      acd29(5)=spvak2k1(iv4)
      acd29(6)=abb29(22)
      acd29(7)=k2(iv4)
      acd29(8)=spvak2k1(iv3)
      acd29(9)=k5(iv3)
      acd29(10)=k5(iv4)
      acd29(11)=d(iv1,iv3)
      acd29(12)=d(iv2,iv4)
      acd29(13)=k2(iv2)
      acd29(14)=spvak2k1(iv2)
      acd29(15)=k5(iv2)
      acd29(16)=d(iv1,iv4)
      acd29(17)=d(iv2,iv3)
      acd29(18)=k2(iv1)
      acd29(19)=spvak2k1(iv1)
      acd29(20)=k5(iv1)
      acd29(21)=acd29(7)+acd29(10)
      acd29(22)=-acd29(17)*acd29(21)
      acd29(23)=acd29(4)+acd29(9)
      acd29(24)=-acd29(12)*acd29(23)
      acd29(25)=acd29(13)+acd29(15)
      acd29(26)=-acd29(2)*acd29(25)
      acd29(22)=acd29(26)+acd29(22)+acd29(24)
      acd29(22)=acd29(19)*acd29(22)
      acd29(24)=-acd29(16)*acd29(23)
      acd29(26)=-acd29(11)*acd29(21)
      acd29(27)=acd29(18)+acd29(20)
      acd29(28)=-acd29(2)*acd29(27)
      acd29(24)=acd29(28)+acd29(24)+acd29(26)
      acd29(24)=acd29(14)*acd29(24)
      acd29(26)=-acd29(16)*acd29(25)
      acd29(28)=-acd29(12)*acd29(27)
      acd29(21)=-acd29(1)*acd29(21)
      acd29(21)=acd29(21)+acd29(26)+acd29(28)
      acd29(21)=acd29(8)*acd29(21)
      acd29(26)=-acd29(17)*acd29(27)
      acd29(25)=-acd29(11)*acd29(25)
      acd29(23)=-acd29(1)*acd29(23)
      acd29(23)=acd29(23)+acd29(26)+acd29(25)
      acd29(23)=acd29(5)*acd29(23)
      acd29(21)=acd29(23)+acd29(21)+acd29(22)+acd29(24)
      acd29(21)=acd29(6)*acd29(21)
      acd29(22)=-acd29(16)*acd29(17)
      acd29(23)=-acd29(11)*acd29(12)
      acd29(24)=-acd29(1)*acd29(2)
      acd29(22)=acd29(24)+acd29(22)+acd29(23)
      acd29(22)=acd29(3)*acd29(22)
      acd29(21)=4.0_ki*acd29(22)+acd29(21)
      brack=2.0_ki*acd29(21)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd29h3
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
      qshift = k3+k5+k4
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
!---#[ subroutine reconstruct_d29:
   subroutine     reconstruct_d29(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group10
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group10), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_29:
      coeffs%coeffs_29%c0 = derivative(czip)
      coeffs%coeffs_29%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_29%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_29%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_29%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_29%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_29%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_29%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_29%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_29%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_29%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_29%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_29%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_29%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_29%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_29%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_29%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_29%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_29%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_29%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_29%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_29%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_29%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_29%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_29%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_29%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_29%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_29%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_29%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_29%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_29%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_29%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_29%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_29%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_29%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_29%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_29%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_29%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_29%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_29%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_29%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_29%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_29%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_29%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_29%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_29%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_29%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_29%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_29%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_29%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_29%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_29%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_29%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_29%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_29%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_29%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_29%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_29%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_29%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_29%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_29%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_29%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_29%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_29%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_29%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_29%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_29%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_29%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_29%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_29%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_29:
   end subroutine reconstruct_d29
!---#] subroutine reconstruct_d29:
end module     p0_gg_hhg_d29h3l1d
