module     p0_gg_hhg_d55h0l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d55h0l1d.f90
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
   integer, private :: iv5
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d55
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd55h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(92) :: acd55
      complex(ki) :: brack
      acd55(1)=dotproduct(k1,qshift)
      acd55(2)=dotproduct(k2,qshift)
      acd55(3)=dotproduct(qshift,spvak2k5)
      acd55(4)=abb55(85)
      acd55(5)=abb55(65)
      acd55(6)=dotproduct(l3,qshift)
      acd55(7)=abb55(90)
      acd55(8)=abb55(67)
      acd55(9)=dotproduct(qshift,qshift)
      acd55(10)=abb55(82)
      acd55(11)=abb55(36)
      acd55(12)=dotproduct(qshift,spvak1k2)
      acd55(13)=abb55(53)
      acd55(14)=dotproduct(qshift,spvak1k5)
      acd55(15)=abb55(70)
      acd55(16)=dotproduct(qshift,spvak2l3)
      acd55(17)=abb55(51)
      acd55(18)=dotproduct(qshift,spval3k5)
      acd55(19)=abb55(89)
      acd55(20)=abb55(79)
      acd55(21)=abb55(32)
      acd55(22)=abb55(64)
      acd55(23)=abb55(19)
      acd55(24)=abb55(73)
      acd55(25)=abb55(66)
      acd55(26)=abb55(60)
      acd55(27)=abb55(15)
      acd55(28)=abb55(54)
      acd55(29)=abb55(47)
      acd55(30)=abb55(102)
      acd55(31)=abb55(61)
      acd55(32)=abb55(49)
      acd55(33)=abb55(20)
      acd55(34)=abb55(43)
      acd55(35)=abb55(58)
      acd55(36)=abb55(97)
      acd55(37)=abb55(59)
      acd55(38)=dotproduct(l4,qshift)
      acd55(39)=abb55(44)
      acd55(40)=abb55(37)
      acd55(41)=abb55(80)
      acd55(42)=abb55(34)
      acd55(43)=abb55(77)
      acd55(44)=abb55(21)
      acd55(45)=abb55(28)
      acd55(46)=abb55(69)
      acd55(47)=abb55(48)
      acd55(48)=abb55(71)
      acd55(49)=dotproduct(qshift,spvak2l4)
      acd55(50)=abb55(76)
      acd55(51)=dotproduct(qshift,spval4k5)
      acd55(52)=abb55(83)
      acd55(53)=abb55(23)
      acd55(54)=abb55(41)
      acd55(55)=abb55(31)
      acd55(56)=abb55(40)
      acd55(57)=abb55(30)
      acd55(58)=abb55(26)
      acd55(59)=abb55(13)
      acd55(60)=abb55(62)
      acd55(61)=abb55(12)
      acd55(62)=abb55(52)
      acd55(63)=abb55(27)
      acd55(64)=abb55(33)
      acd55(65)=abb55(42)
      acd55(66)=abb55(86)
      acd55(67)=abb55(16)
      acd55(68)=abb55(84)
      acd55(69)=abb55(75)
      acd55(70)=abb55(22)
      acd55(71)=abb55(11)
      acd55(72)=abb55(103)
      acd55(73)=dotproduct(qshift,spvak2k1)
      acd55(74)=abb55(17)
      acd55(75)=abb55(14)
      acd55(76)=abb55(63)
      acd55(77)=abb55(18)
      acd55(78)=abb55(68)
      acd55(79)=abb55(10)
      acd55(80)=abb55(25)
      acd55(81)=acd55(51)*acd55(52)
      acd55(82)=acd55(49)*acd55(50)
      acd55(83)=acd55(38)*acd55(39)
      acd55(84)=acd55(14)*acd55(46)
      acd55(85)=acd55(18)*acd55(48)
      acd55(86)=acd55(16)*acd55(47)
      acd55(87)=acd55(6)*acd55(32)
      acd55(88)=acd55(2)*acd55(26)
      acd55(89)=acd55(1)*acd55(10)
      acd55(90)=acd55(12)*acd55(45)
      acd55(91)=-acd55(9)*acd55(43)
      acd55(81)=acd55(91)+acd55(90)+acd55(89)+acd55(88)+acd55(87)+acd55(86)+acd&
      &55(85)+acd55(84)+acd55(83)+acd55(82)-acd55(53)+acd55(81)
      acd55(81)=acd55(9)*acd55(81)
      acd55(82)=acd55(1)-acd55(38)
      acd55(83)=acd55(13)*acd55(82)
      acd55(84)=-acd55(51)*acd55(62)
      acd55(85)=-acd55(49)*acd55(61)
      acd55(86)=-acd55(18)*acd55(60)
      acd55(87)=-acd55(16)*acd55(59)
      acd55(88)=-acd55(6)*acd55(34)
      acd55(89)=-acd55(2)*acd55(28)
      acd55(90)=-acd55(3)*acd55(58)
      acd55(83)=acd55(90)+acd55(89)+acd55(88)+acd55(87)+acd55(86)+acd55(85)+acd&
      &55(63)+acd55(84)+acd55(83)
      acd55(83)=acd55(12)*acd55(83)
      acd55(84)=-acd55(14)*acd55(15)
      acd55(85)=-acd55(18)*acd55(19)
      acd55(86)=-acd55(16)*acd55(17)
      acd55(87)=-acd55(6)*acd55(7)
      acd55(88)=-acd55(2)*acd55(4)
      acd55(84)=acd55(88)+acd55(87)+acd55(86)+acd55(85)+acd55(20)+acd55(84)
      acd55(84)=acd55(1)*acd55(84)
      acd55(85)=acd55(51)*acd55(68)
      acd55(86)=acd55(49)*acd55(67)
      acd55(87)=acd55(38)*acd55(41)
      acd55(88)=acd55(14)*acd55(64)
      acd55(89)=acd55(18)*acd55(66)
      acd55(90)=acd55(16)*acd55(65)
      acd55(91)=acd55(6)*acd55(35)
      acd55(92)=acd55(2)*acd55(29)
      acd55(81)=acd55(81)+acd55(84)+acd55(92)+acd55(91)+acd55(90)+acd55(89)+acd&
      &55(88)+acd55(87)+acd55(86)-acd55(69)+acd55(85)+acd55(83)
      acd55(81)=acd55(3)*acd55(81)
      acd55(83)=-acd55(38)*acd55(40)
      acd55(84)=-acd55(18)*acd55(56)
      acd55(85)=-acd55(16)*acd55(55)
      acd55(86)=-acd55(6)*acd55(33)
      acd55(87)=-acd55(2)*acd55(27)
      acd55(88)=-acd55(1)*acd55(11)
      acd55(89)=-acd55(12)*acd55(54)
      acd55(90)=acd55(9)*acd55(44)
      acd55(83)=acd55(90)+acd55(89)+acd55(88)+acd55(87)+acd55(86)+acd55(85)+acd&
      &55(84)+acd55(57)+acd55(83)
      acd55(83)=acd55(9)*acd55(83)
      acd55(82)=-acd55(21)*acd55(82)
      acd55(84)=acd55(73)*acd55(74)
      acd55(85)=acd55(14)*acd55(70)
      acd55(86)=acd55(18)*acd55(72)
      acd55(87)=acd55(16)*acd55(71)
      acd55(88)=acd55(6)*acd55(36)
      acd55(89)=acd55(2)*acd55(30)
      acd55(82)=acd55(89)+acd55(88)+acd55(87)+acd55(86)+acd55(85)-acd55(75)+acd&
      &55(84)+acd55(82)
      acd55(82)=acd55(12)*acd55(82)
      acd55(84)=acd55(14)*acd55(22)
      acd55(85)=acd55(18)*acd55(24)
      acd55(86)=acd55(16)*acd55(23)
      acd55(87)=acd55(6)*acd55(8)
      acd55(88)=acd55(2)*acd55(5)
      acd55(84)=acd55(88)+acd55(87)+acd55(86)+acd55(85)-acd55(25)+acd55(84)
      acd55(84)=acd55(1)*acd55(84)
      acd55(85)=-acd55(49)*acd55(79)
      acd55(86)=-acd55(38)*acd55(42)
      acd55(87)=-acd55(14)*acd55(76)
      acd55(88)=-acd55(18)*acd55(78)
      acd55(89)=-acd55(16)*acd55(77)
      acd55(90)=-acd55(6)*acd55(37)
      acd55(91)=-acd55(2)*acd55(31)
      brack=acd55(80)+acd55(81)+acd55(82)+acd55(83)+acd55(84)+acd55(85)+acd55(8&
      &6)+acd55(87)+acd55(88)+acd55(89)+acd55(90)+acd55(91)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd55h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(112) :: acd55
      complex(ki) :: brack
      acd55(1)=k1(iv1)
      acd55(2)=dotproduct(k2,qshift)
      acd55(3)=dotproduct(qshift,spvak2k5)
      acd55(4)=abb55(85)
      acd55(5)=abb55(65)
      acd55(6)=dotproduct(l3,qshift)
      acd55(7)=abb55(90)
      acd55(8)=abb55(67)
      acd55(9)=dotproduct(qshift,qshift)
      acd55(10)=abb55(82)
      acd55(11)=abb55(36)
      acd55(12)=dotproduct(qshift,spvak1k2)
      acd55(13)=abb55(53)
      acd55(14)=dotproduct(qshift,spvak1k5)
      acd55(15)=abb55(70)
      acd55(16)=dotproduct(qshift,spvak2l3)
      acd55(17)=abb55(51)
      acd55(18)=dotproduct(qshift,spval3k5)
      acd55(19)=abb55(89)
      acd55(20)=abb55(79)
      acd55(21)=abb55(32)
      acd55(22)=abb55(64)
      acd55(23)=abb55(19)
      acd55(24)=abb55(73)
      acd55(25)=abb55(66)
      acd55(26)=k2(iv1)
      acd55(27)=dotproduct(k1,qshift)
      acd55(28)=abb55(60)
      acd55(29)=abb55(15)
      acd55(30)=abb55(54)
      acd55(31)=abb55(47)
      acd55(32)=abb55(102)
      acd55(33)=abb55(61)
      acd55(34)=l3(iv1)
      acd55(35)=abb55(49)
      acd55(36)=abb55(20)
      acd55(37)=abb55(43)
      acd55(38)=abb55(58)
      acd55(39)=abb55(97)
      acd55(40)=abb55(59)
      acd55(41)=l4(iv1)
      acd55(42)=abb55(44)
      acd55(43)=abb55(37)
      acd55(44)=abb55(80)
      acd55(45)=abb55(34)
      acd55(46)=qshift(iv1)
      acd55(47)=dotproduct(l4,qshift)
      acd55(48)=abb55(77)
      acd55(49)=abb55(21)
      acd55(50)=abb55(28)
      acd55(51)=abb55(69)
      acd55(52)=abb55(48)
      acd55(53)=abb55(71)
      acd55(54)=dotproduct(qshift,spvak2l4)
      acd55(55)=abb55(76)
      acd55(56)=dotproduct(qshift,spval4k5)
      acd55(57)=abb55(83)
      acd55(58)=abb55(23)
      acd55(59)=abb55(41)
      acd55(60)=abb55(31)
      acd55(61)=abb55(40)
      acd55(62)=abb55(30)
      acd55(63)=spvak2k5(iv1)
      acd55(64)=abb55(26)
      acd55(65)=abb55(13)
      acd55(66)=abb55(62)
      acd55(67)=abb55(12)
      acd55(68)=abb55(52)
      acd55(69)=abb55(27)
      acd55(70)=abb55(33)
      acd55(71)=abb55(42)
      acd55(72)=abb55(86)
      acd55(73)=abb55(16)
      acd55(74)=abb55(84)
      acd55(75)=abb55(75)
      acd55(76)=spvak1k2(iv1)
      acd55(77)=abb55(22)
      acd55(78)=abb55(11)
      acd55(79)=abb55(103)
      acd55(80)=dotproduct(qshift,spvak2k1)
      acd55(81)=abb55(17)
      acd55(82)=abb55(14)
      acd55(83)=spvak1k5(iv1)
      acd55(84)=abb55(63)
      acd55(85)=spvak2l3(iv1)
      acd55(86)=abb55(18)
      acd55(87)=spval3k5(iv1)
      acd55(88)=abb55(68)
      acd55(89)=spvak2l4(iv1)
      acd55(90)=abb55(10)
      acd55(91)=spval4k5(iv1)
      acd55(92)=spvak2k1(iv1)
      acd55(93)=acd55(57)*acd55(91)
      acd55(94)=acd55(89)*acd55(55)
      acd55(95)=acd55(83)*acd55(51)
      acd55(96)=acd55(41)*acd55(42)
      acd55(97)=acd55(87)*acd55(53)
      acd55(98)=acd55(85)*acd55(52)
      acd55(99)=acd55(34)*acd55(35)
      acd55(100)=acd55(26)*acd55(28)
      acd55(101)=acd55(1)*acd55(10)
      acd55(102)=acd55(76)*acd55(50)
      acd55(103)=4.0_ki*acd55(46)
      acd55(104)=-acd55(48)*acd55(103)
      acd55(93)=acd55(104)+acd55(102)+acd55(101)+acd55(100)+acd55(99)+acd55(98)&
      &+acd55(97)+acd55(96)+acd55(95)+acd55(93)+acd55(94)
      acd55(93)=acd55(9)*acd55(93)
      acd55(94)=acd55(1)-acd55(41)
      acd55(95)=acd55(13)*acd55(94)
      acd55(96)=-acd55(68)*acd55(91)
      acd55(97)=-acd55(89)*acd55(67)
      acd55(98)=-acd55(87)*acd55(66)
      acd55(99)=-acd55(85)*acd55(65)
      acd55(100)=-acd55(34)*acd55(37)
      acd55(101)=-acd55(26)*acd55(30)
      acd55(102)=2.0_ki*acd55(46)
      acd55(104)=acd55(50)*acd55(102)
      acd55(105)=acd55(63)*acd55(64)
      acd55(95)=-2.0_ki*acd55(105)+acd55(104)+acd55(101)+acd55(100)+acd55(99)+a&
      &cd55(98)+acd55(96)+acd55(97)+acd55(95)
      acd55(95)=acd55(12)*acd55(95)
      acd55(96)=acd55(56)*acd55(57)
      acd55(97)=acd55(54)*acd55(55)
      acd55(98)=acd55(47)*acd55(42)
      acd55(99)=acd55(14)*acd55(51)
      acd55(100)=acd55(18)*acd55(53)
      acd55(101)=acd55(16)*acd55(52)
      acd55(104)=acd55(6)*acd55(35)
      acd55(105)=acd55(2)*acd55(28)
      acd55(96)=acd55(96)+acd55(97)+acd55(98)+acd55(99)+acd55(100)+acd55(101)+a&
      &cd55(104)+acd55(105)-acd55(58)
      acd55(97)=acd55(96)*acd55(102)
      acd55(98)=-acd55(83)*acd55(15)
      acd55(99)=-acd55(87)*acd55(19)
      acd55(100)=-acd55(85)*acd55(17)
      acd55(101)=-acd55(34)*acd55(7)
      acd55(104)=-acd55(26)*acd55(4)
      acd55(105)=acd55(76)*acd55(13)
      acd55(106)=acd55(10)*acd55(102)
      acd55(98)=acd55(106)+acd55(105)+acd55(104)+acd55(101)+acd55(100)+acd55(98&
      &)+acd55(99)
      acd55(98)=acd55(27)*acd55(98)
      acd55(99)=acd55(56)*acd55(68)
      acd55(100)=acd55(54)*acd55(67)
      acd55(101)=acd55(18)*acd55(66)
      acd55(104)=acd55(16)*acd55(65)
      acd55(105)=acd55(6)*acd55(37)
      acd55(106)=acd55(2)*acd55(30)
      acd55(99)=acd55(101)+acd55(104)+acd55(105)+acd55(106)-acd55(69)+acd55(99)&
      &+acd55(100)
      acd55(100)=-acd55(47)*acd55(13)
      acd55(101)=-acd55(3)*acd55(64)
      acd55(100)=acd55(101)+acd55(100)-acd55(99)
      acd55(100)=acd55(76)*acd55(100)
      acd55(101)=acd55(14)*acd55(15)
      acd55(104)=acd55(18)*acd55(19)
      acd55(105)=acd55(16)*acd55(17)
      acd55(106)=acd55(6)*acd55(7)
      acd55(107)=acd55(2)*acd55(4)
      acd55(101)=acd55(105)+acd55(106)+acd55(107)-acd55(20)+acd55(101)+acd55(10&
      &4)
      acd55(104)=-acd55(1)*acd55(101)
      acd55(105)=acd55(91)*acd55(74)
      acd55(106)=acd55(89)*acd55(73)
      acd55(107)=acd55(83)*acd55(70)
      acd55(108)=acd55(41)*acd55(44)
      acd55(109)=acd55(87)*acd55(72)
      acd55(110)=acd55(85)*acd55(71)
      acd55(111)=acd55(34)*acd55(38)
      acd55(112)=acd55(26)*acd55(31)
      acd55(93)=acd55(93)+acd55(98)+acd55(97)+acd55(104)+acd55(112)+acd55(111)+&
      &acd55(110)+acd55(109)+acd55(108)+acd55(107)+acd55(105)+acd55(106)+acd55(&
      &95)+acd55(100)
      acd55(93)=acd55(3)*acd55(93)
      acd55(95)=acd55(27)*acd55(10)
      acd55(97)=acd55(12)*acd55(50)
      acd55(98)=-acd55(9)*acd55(48)
      acd55(95)=acd55(98)+acd55(97)+acd55(95)+acd55(96)
      acd55(95)=acd55(9)*acd55(95)
      acd55(96)=acd55(27)-acd55(47)
      acd55(96)=acd55(13)*acd55(96)
      acd55(96)=acd55(96)-acd55(99)
      acd55(96)=acd55(12)*acd55(96)
      acd55(97)=-acd55(27)*acd55(101)
      acd55(98)=acd55(56)*acd55(74)
      acd55(99)=acd55(54)*acd55(73)
      acd55(100)=acd55(47)*acd55(44)
      acd55(101)=acd55(14)*acd55(70)
      acd55(104)=acd55(18)*acd55(72)
      acd55(105)=acd55(16)*acd55(71)
      acd55(106)=acd55(6)*acd55(38)
      acd55(107)=acd55(2)*acd55(31)
      acd55(95)=acd55(95)+acd55(96)+acd55(97)+acd55(107)+acd55(106)+acd55(105)+&
      &acd55(104)+acd55(101)+acd55(100)+acd55(99)-acd55(75)+acd55(98)
      acd55(95)=acd55(63)*acd55(95)
      acd55(94)=-acd55(21)*acd55(94)
      acd55(96)=acd55(81)*acd55(92)
      acd55(97)=acd55(83)*acd55(77)
      acd55(98)=acd55(87)*acd55(79)
      acd55(99)=acd55(85)*acd55(78)
      acd55(100)=acd55(34)*acd55(39)
      acd55(101)=acd55(26)*acd55(32)
      acd55(104)=-acd55(59)*acd55(102)
      acd55(94)=acd55(104)+acd55(101)+acd55(100)+acd55(99)+acd55(98)+acd55(96)+&
      &acd55(97)+acd55(94)
      acd55(94)=acd55(12)*acd55(94)
      acd55(96)=-acd55(41)*acd55(43)
      acd55(97)=-acd55(87)*acd55(61)
      acd55(98)=-acd55(85)*acd55(60)
      acd55(99)=-acd55(34)*acd55(36)
      acd55(100)=-acd55(26)*acd55(29)
      acd55(101)=-acd55(1)*acd55(11)
      acd55(104)=-acd55(76)*acd55(59)
      acd55(103)=acd55(49)*acd55(103)
      acd55(96)=acd55(103)+acd55(104)+acd55(101)+acd55(100)+acd55(99)+acd55(98)&
      &+acd55(96)+acd55(97)
      acd55(96)=acd55(9)*acd55(96)
      acd55(97)=acd55(81)*acd55(80)
      acd55(98)=acd55(47)*acd55(21)
      acd55(99)=acd55(14)*acd55(77)
      acd55(100)=acd55(18)*acd55(79)
      acd55(101)=acd55(16)*acd55(78)
      acd55(103)=acd55(6)*acd55(39)
      acd55(104)=acd55(2)*acd55(32)
      acd55(97)=acd55(104)+acd55(103)+acd55(101)+acd55(100)+acd55(99)+acd55(98)&
      &-acd55(82)+acd55(97)
      acd55(97)=acd55(76)*acd55(97)
      acd55(98)=acd55(83)*acd55(22)
      acd55(99)=acd55(87)*acd55(24)
      acd55(100)=acd55(85)*acd55(23)
      acd55(101)=acd55(34)*acd55(8)
      acd55(103)=acd55(26)*acd55(5)
      acd55(104)=-acd55(76)*acd55(21)
      acd55(105)=-acd55(11)*acd55(102)
      acd55(98)=acd55(105)+acd55(104)+acd55(103)+acd55(101)+acd55(100)+acd55(98&
      &)+acd55(99)
      acd55(98)=acd55(27)*acd55(98)
      acd55(99)=acd55(14)*acd55(22)
      acd55(100)=acd55(18)*acd55(24)
      acd55(101)=acd55(16)*acd55(23)
      acd55(103)=acd55(6)*acd55(8)
      acd55(104)=acd55(2)*acd55(5)
      acd55(99)=acd55(104)+acd55(103)+acd55(101)+acd55(100)-acd55(25)+acd55(99)
      acd55(99)=acd55(1)*acd55(99)
      acd55(100)=-acd55(47)*acd55(43)
      acd55(101)=-acd55(18)*acd55(61)
      acd55(103)=-acd55(16)*acd55(60)
      acd55(104)=-acd55(6)*acd55(36)
      acd55(105)=-acd55(2)*acd55(29)
      acd55(100)=acd55(105)+acd55(104)+acd55(103)+acd55(101)+acd55(62)+acd55(10&
      &0)
      acd55(100)=acd55(100)*acd55(102)
      acd55(101)=-acd55(89)*acd55(90)
      acd55(102)=-acd55(83)*acd55(84)
      acd55(103)=-acd55(41)*acd55(45)
      acd55(104)=-acd55(87)*acd55(88)
      acd55(105)=-acd55(85)*acd55(86)
      acd55(106)=-acd55(34)*acd55(40)
      acd55(107)=-acd55(26)*acd55(33)
      brack=acd55(93)+acd55(94)+acd55(95)+acd55(96)+acd55(97)+acd55(98)+acd55(9&
      &9)+acd55(100)+acd55(101)+acd55(102)+acd55(103)+acd55(104)+acd55(105)+acd&
      &55(106)+acd55(107)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd55h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(121) :: acd55
      complex(ki) :: brack
      acd55(1)=d(iv1,iv2)
      acd55(2)=dotproduct(k1,qshift)
      acd55(3)=dotproduct(qshift,spvak2k5)
      acd55(4)=abb55(82)
      acd55(5)=abb55(36)
      acd55(6)=dotproduct(k2,qshift)
      acd55(7)=abb55(60)
      acd55(8)=abb55(15)
      acd55(9)=dotproduct(l3,qshift)
      acd55(10)=abb55(49)
      acd55(11)=abb55(20)
      acd55(12)=dotproduct(l4,qshift)
      acd55(13)=abb55(44)
      acd55(14)=abb55(37)
      acd55(15)=dotproduct(qshift,qshift)
      acd55(16)=abb55(77)
      acd55(17)=abb55(21)
      acd55(18)=dotproduct(qshift,spvak1k2)
      acd55(19)=abb55(28)
      acd55(20)=dotproduct(qshift,spvak1k5)
      acd55(21)=abb55(69)
      acd55(22)=dotproduct(qshift,spvak2l3)
      acd55(23)=abb55(48)
      acd55(24)=dotproduct(qshift,spvak2l4)
      acd55(25)=abb55(76)
      acd55(26)=dotproduct(qshift,spval3k5)
      acd55(27)=abb55(71)
      acd55(28)=dotproduct(qshift,spval4k5)
      acd55(29)=abb55(83)
      acd55(30)=abb55(23)
      acd55(31)=abb55(41)
      acd55(32)=abb55(31)
      acd55(33)=abb55(40)
      acd55(34)=abb55(30)
      acd55(35)=k1(iv1)
      acd55(36)=k2(iv2)
      acd55(37)=abb55(85)
      acd55(38)=abb55(65)
      acd55(39)=l3(iv2)
      acd55(40)=abb55(90)
      acd55(41)=abb55(67)
      acd55(42)=qshift(iv2)
      acd55(43)=spvak2k5(iv2)
      acd55(44)=abb55(53)
      acd55(45)=abb55(70)
      acd55(46)=abb55(51)
      acd55(47)=abb55(89)
      acd55(48)=abb55(79)
      acd55(49)=spvak1k2(iv2)
      acd55(50)=abb55(32)
      acd55(51)=spvak1k5(iv2)
      acd55(52)=abb55(64)
      acd55(53)=spvak2l3(iv2)
      acd55(54)=abb55(19)
      acd55(55)=spval3k5(iv2)
      acd55(56)=abb55(73)
      acd55(57)=k1(iv2)
      acd55(58)=k2(iv1)
      acd55(59)=l3(iv1)
      acd55(60)=qshift(iv1)
      acd55(61)=spvak2k5(iv1)
      acd55(62)=spvak1k2(iv1)
      acd55(63)=spvak1k5(iv1)
      acd55(64)=spvak2l3(iv1)
      acd55(65)=spval3k5(iv1)
      acd55(66)=abb55(54)
      acd55(67)=abb55(47)
      acd55(68)=abb55(102)
      acd55(69)=abb55(43)
      acd55(70)=abb55(58)
      acd55(71)=abb55(97)
      acd55(72)=l4(iv1)
      acd55(73)=abb55(80)
      acd55(74)=l4(iv2)
      acd55(75)=spvak2l4(iv2)
      acd55(76)=spval4k5(iv2)
      acd55(77)=spvak2l4(iv1)
      acd55(78)=spval4k5(iv1)
      acd55(79)=abb55(26)
      acd55(80)=abb55(13)
      acd55(81)=abb55(12)
      acd55(82)=abb55(62)
      acd55(83)=abb55(52)
      acd55(84)=abb55(27)
      acd55(85)=abb55(33)
      acd55(86)=abb55(42)
      acd55(87)=abb55(16)
      acd55(88)=abb55(86)
      acd55(89)=abb55(84)
      acd55(90)=abb55(22)
      acd55(91)=abb55(11)
      acd55(92)=abb55(103)
      acd55(93)=spvak2k1(iv2)
      acd55(94)=abb55(17)
      acd55(95)=spvak2k1(iv1)
      acd55(96)=acd55(29)*acd55(28)
      acd55(97)=acd55(25)*acd55(24)
      acd55(98)=acd55(21)*acd55(20)
      acd55(99)=acd55(13)*acd55(12)
      acd55(100)=acd55(26)*acd55(27)
      acd55(101)=acd55(22)*acd55(23)
      acd55(102)=acd55(9)*acd55(10)
      acd55(103)=acd55(6)*acd55(7)
      acd55(104)=acd55(2)*acd55(4)
      acd55(105)=acd55(18)*acd55(19)
      acd55(96)=acd55(102)+acd55(101)+acd55(100)+acd55(99)+acd55(96)+acd55(97)+&
      &acd55(98)+acd55(103)+acd55(104)+acd55(105)-acd55(30)
      acd55(97)=acd55(15)*acd55(16)
      acd55(98)=-acd55(96)+2.0_ki*acd55(97)
      acd55(99)=2.0_ki*acd55(42)
      acd55(100)=-acd55(98)*acd55(99)
      acd55(101)=acd55(29)*acd55(76)
      acd55(102)=acd55(25)*acd55(75)
      acd55(103)=acd55(21)*acd55(51)
      acd55(104)=acd55(13)*acd55(74)
      acd55(105)=acd55(55)*acd55(27)
      acd55(106)=acd55(53)*acd55(23)
      acd55(107)=acd55(39)*acd55(10)
      acd55(108)=acd55(36)*acd55(7)
      acd55(109)=acd55(57)*acd55(4)
      acd55(101)=acd55(101)+acd55(102)+acd55(103)+acd55(104)+acd55(105)+acd55(1&
      &06)+acd55(107)+acd55(108)+acd55(109)
      acd55(102)=acd55(15)*acd55(101)
      acd55(103)=acd55(2)-acd55(12)
      acd55(103)=acd55(103)*acd55(44)
      acd55(104)=acd55(83)*acd55(28)
      acd55(105)=acd55(81)*acd55(24)
      acd55(106)=acd55(26)*acd55(82)
      acd55(107)=acd55(22)*acd55(80)
      acd55(108)=acd55(9)*acd55(69)
      acd55(109)=acd55(6)*acd55(66)
      acd55(110)=acd55(15)*acd55(19)
      acd55(103)=-acd55(109)-acd55(105)-acd55(106)-acd55(107)-acd55(108)+acd55(&
      &103)-acd55(104)+acd55(110)+acd55(84)
      acd55(104)=acd55(49)*acd55(103)
      acd55(105)=acd55(83)*acd55(76)
      acd55(106)=acd55(81)*acd55(75)
      acd55(107)=acd55(55)*acd55(82)
      acd55(108)=acd55(53)*acd55(80)
      acd55(109)=acd55(39)*acd55(69)
      acd55(110)=acd55(36)*acd55(66)
      acd55(105)=acd55(108)+acd55(105)+acd55(109)+acd55(110)+acd55(106)+acd55(1&
      &07)
      acd55(106)=-acd55(44)*acd55(74)
      acd55(106)=acd55(106)-acd55(105)
      acd55(106)=acd55(18)*acd55(106)
      acd55(107)=acd55(45)*acd55(20)
      acd55(108)=acd55(26)*acd55(47)
      acd55(109)=acd55(22)*acd55(46)
      acd55(110)=acd55(9)*acd55(40)
      acd55(111)=acd55(6)*acd55(37)
      acd55(112)=acd55(18)*acd55(44)
      acd55(107)=acd55(107)-acd55(112)-acd55(48)+acd55(108)+acd55(109)+acd55(11&
      &0)+acd55(111)
      acd55(108)=-acd55(57)*acd55(107)
      acd55(109)=acd55(51)*acd55(45)
      acd55(110)=acd55(55)*acd55(47)
      acd55(111)=acd55(53)*acd55(46)
      acd55(112)=acd55(39)*acd55(40)
      acd55(113)=acd55(36)*acd55(37)
      acd55(109)=acd55(109)+acd55(111)+acd55(112)+acd55(110)+acd55(113)
      acd55(110)=-acd55(2)*acd55(109)
      acd55(111)=acd55(76)*acd55(89)
      acd55(112)=acd55(75)*acd55(87)
      acd55(113)=acd55(74)*acd55(73)
      acd55(114)=acd55(51)*acd55(85)
      acd55(115)=acd55(55)*acd55(88)
      acd55(116)=acd55(53)*acd55(86)
      acd55(117)=acd55(39)*acd55(70)
      acd55(118)=acd55(36)*acd55(67)
      acd55(100)=acd55(100)+acd55(104)+acd55(102)+acd55(108)+acd55(106)+acd55(1&
      &10)+acd55(118)+acd55(117)+acd55(116)+acd55(115)+acd55(114)+acd55(113)+ac&
      &d55(111)+acd55(112)
      acd55(100)=acd55(61)*acd55(100)
      acd55(102)=2.0_ki*acd55(60)
      acd55(98)=-acd55(98)*acd55(102)
      acd55(104)=acd55(29)*acd55(78)
      acd55(106)=acd55(25)*acd55(77)
      acd55(108)=acd55(21)*acd55(63)
      acd55(110)=acd55(13)*acd55(72)
      acd55(111)=acd55(65)*acd55(27)
      acd55(112)=acd55(64)*acd55(23)
      acd55(113)=acd55(59)*acd55(10)
      acd55(114)=acd55(58)*acd55(7)
      acd55(115)=acd55(35)*acd55(4)
      acd55(104)=acd55(115)+acd55(111)+acd55(112)+acd55(113)+acd55(114)+acd55(1&
      &04)+acd55(106)+acd55(108)+acd55(110)
      acd55(106)=acd55(15)*acd55(104)
      acd55(103)=acd55(62)*acd55(103)
      acd55(108)=acd55(83)*acd55(78)
      acd55(110)=acd55(81)*acd55(77)
      acd55(111)=acd55(65)*acd55(82)
      acd55(112)=acd55(64)*acd55(80)
      acd55(113)=acd55(59)*acd55(69)
      acd55(114)=acd55(58)*acd55(66)
      acd55(115)=2.0_ki*acd55(79)
      acd55(116)=acd55(115)*acd55(61)
      acd55(108)=acd55(116)+acd55(108)+acd55(110)+acd55(111)+acd55(112)+acd55(1&
      &13)+acd55(114)
      acd55(110)=-acd55(44)*acd55(72)
      acd55(110)=acd55(110)-acd55(108)
      acd55(110)=acd55(18)*acd55(110)
      acd55(107)=-acd55(35)*acd55(107)
      acd55(111)=acd55(63)*acd55(45)
      acd55(112)=acd55(65)*acd55(47)
      acd55(113)=acd55(64)*acd55(46)
      acd55(114)=acd55(59)*acd55(40)
      acd55(116)=acd55(58)*acd55(37)
      acd55(111)=acd55(116)+acd55(111)+acd55(112)+acd55(113)+acd55(114)
      acd55(112)=-acd55(2)*acd55(111)
      acd55(113)=acd55(78)*acd55(89)
      acd55(114)=acd55(77)*acd55(87)
      acd55(116)=acd55(72)*acd55(73)
      acd55(117)=acd55(63)*acd55(85)
      acd55(118)=acd55(65)*acd55(88)
      acd55(119)=acd55(64)*acd55(86)
      acd55(120)=acd55(59)*acd55(70)
      acd55(121)=acd55(58)*acd55(67)
      acd55(98)=acd55(98)+acd55(103)+acd55(106)+acd55(107)+acd55(112)+acd55(121&
      &)+acd55(120)+acd55(119)+acd55(118)+acd55(117)+acd55(116)+acd55(113)+acd5&
      &5(114)+acd55(110)
      acd55(98)=acd55(43)*acd55(98)
      acd55(96)=-4.0_ki*acd55(97)+2.0_ki*acd55(96)
      acd55(96)=acd55(1)*acd55(96)
      acd55(97)=acd55(49)*acd55(19)
      acd55(97)=acd55(97)+acd55(101)
      acd55(97)=acd55(97)*acd55(102)
      acd55(101)=acd55(62)*acd55(19)
      acd55(103)=4.0_ki*acd55(60)
      acd55(106)=-acd55(16)*acd55(103)
      acd55(101)=acd55(106)+acd55(101)+acd55(104)
      acd55(101)=acd55(101)*acd55(99)
      acd55(104)=acd55(35)-acd55(72)
      acd55(106)=acd55(44)*acd55(104)
      acd55(106)=acd55(106)-acd55(108)
      acd55(106)=acd55(49)*acd55(106)
      acd55(107)=acd55(57)-acd55(74)
      acd55(108)=acd55(44)*acd55(107)
      acd55(110)=-acd55(43)*acd55(115)
      acd55(105)=acd55(110)+acd55(108)-acd55(105)
      acd55(105)=acd55(62)*acd55(105)
      acd55(108)=-acd55(57)*acd55(111)
      acd55(109)=-acd55(35)*acd55(109)
      acd55(96)=acd55(101)+acd55(97)+acd55(109)+acd55(108)+acd55(106)+acd55(105&
      &)+acd55(96)
      acd55(96)=acd55(3)*acd55(96)
      acd55(97)=-acd55(72)*acd55(14)
      acd55(101)=-acd55(65)*acd55(33)
      acd55(105)=-acd55(64)*acd55(32)
      acd55(106)=-acd55(59)*acd55(11)
      acd55(108)=-acd55(58)*acd55(8)
      acd55(109)=-acd55(35)*acd55(5)
      acd55(110)=-acd55(62)*acd55(31)
      acd55(103)=acd55(17)*acd55(103)
      acd55(97)=acd55(103)+acd55(110)+acd55(109)+acd55(108)+acd55(106)+acd55(10&
      &5)+acd55(97)+acd55(101)
      acd55(97)=acd55(97)*acd55(99)
      acd55(99)=-acd55(12)*acd55(14)
      acd55(101)=-acd55(26)*acd55(33)
      acd55(103)=-acd55(22)*acd55(32)
      acd55(105)=-acd55(9)*acd55(11)
      acd55(106)=-acd55(6)*acd55(8)
      acd55(108)=-acd55(2)*acd55(5)
      acd55(109)=-acd55(18)*acd55(31)
      acd55(99)=acd55(109)+acd55(108)+acd55(106)+acd55(105)+acd55(103)+acd55(10&
      &1)+acd55(34)+acd55(99)
      acd55(101)=4.0_ki*acd55(17)
      acd55(101)=acd55(15)*acd55(101)
      acd55(99)=acd55(101)+2.0_ki*acd55(99)
      acd55(99)=acd55(1)*acd55(99)
      acd55(101)=-acd55(50)*acd55(107)
      acd55(103)=acd55(94)*acd55(93)
      acd55(105)=acd55(51)*acd55(90)
      acd55(106)=acd55(55)*acd55(92)
      acd55(107)=acd55(53)*acd55(91)
      acd55(108)=acd55(39)*acd55(71)
      acd55(109)=acd55(36)*acd55(68)
      acd55(101)=acd55(109)+acd55(108)+acd55(107)+acd55(106)+acd55(105)+acd55(1&
      &03)+acd55(101)
      acd55(101)=acd55(62)*acd55(101)
      acd55(103)=-acd55(50)*acd55(104)
      acd55(104)=acd55(94)*acd55(95)
      acd55(105)=acd55(63)*acd55(90)
      acd55(106)=acd55(65)*acd55(92)
      acd55(107)=acd55(64)*acd55(91)
      acd55(108)=acd55(59)*acd55(71)
      acd55(109)=acd55(58)*acd55(68)
      acd55(103)=acd55(109)+acd55(108)+acd55(107)+acd55(106)+acd55(105)+acd55(1&
      &04)+acd55(103)
      acd55(103)=acd55(49)*acd55(103)
      acd55(104)=-acd55(74)*acd55(14)
      acd55(105)=-acd55(55)*acd55(33)
      acd55(106)=-acd55(53)*acd55(32)
      acd55(107)=-acd55(39)*acd55(11)
      acd55(108)=-acd55(36)*acd55(8)
      acd55(109)=-acd55(57)*acd55(5)
      acd55(110)=-acd55(49)*acd55(31)
      acd55(104)=acd55(110)+acd55(109)+acd55(108)+acd55(107)+acd55(106)+acd55(1&
      &04)+acd55(105)
      acd55(102)=acd55(104)*acd55(102)
      acd55(104)=acd55(63)*acd55(52)
      acd55(105)=acd55(65)*acd55(56)
      acd55(106)=acd55(64)*acd55(54)
      acd55(107)=acd55(59)*acd55(41)
      acd55(108)=acd55(58)*acd55(38)
      acd55(104)=acd55(108)+acd55(107)+acd55(106)+acd55(104)+acd55(105)
      acd55(104)=acd55(57)*acd55(104)
      acd55(105)=acd55(51)*acd55(52)
      acd55(106)=acd55(55)*acd55(56)
      acd55(107)=acd55(53)*acd55(54)
      acd55(108)=acd55(39)*acd55(41)
      acd55(109)=acd55(36)*acd55(38)
      acd55(105)=acd55(109)+acd55(108)+acd55(107)+acd55(105)+acd55(106)
      acd55(105)=acd55(35)*acd55(105)
      brack=acd55(96)+acd55(97)+acd55(98)+acd55(99)+acd55(100)+acd55(101)+acd55&
      &(102)+acd55(103)+acd55(104)+acd55(105)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd55h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(105) :: acd55
      complex(ki) :: brack
      acd55(1)=d(iv1,iv2)
      acd55(2)=k1(iv3)
      acd55(3)=dotproduct(qshift,spvak2k5)
      acd55(4)=abb55(82)
      acd55(5)=abb55(36)
      acd55(6)=k2(iv3)
      acd55(7)=abb55(60)
      acd55(8)=abb55(15)
      acd55(9)=l3(iv3)
      acd55(10)=abb55(49)
      acd55(11)=abb55(20)
      acd55(12)=l4(iv3)
      acd55(13)=abb55(44)
      acd55(14)=abb55(37)
      acd55(15)=qshift(iv3)
      acd55(16)=abb55(77)
      acd55(17)=abb55(21)
      acd55(18)=spvak2k5(iv3)
      acd55(19)=dotproduct(k1,qshift)
      acd55(20)=dotproduct(k2,qshift)
      acd55(21)=dotproduct(l3,qshift)
      acd55(22)=dotproduct(l4,qshift)
      acd55(23)=dotproduct(qshift,qshift)
      acd55(24)=dotproduct(qshift,spvak1k2)
      acd55(25)=abb55(28)
      acd55(26)=dotproduct(qshift,spvak1k5)
      acd55(27)=abb55(69)
      acd55(28)=dotproduct(qshift,spvak2l3)
      acd55(29)=abb55(48)
      acd55(30)=dotproduct(qshift,spvak2l4)
      acd55(31)=abb55(76)
      acd55(32)=dotproduct(qshift,spval3k5)
      acd55(33)=abb55(71)
      acd55(34)=dotproduct(qshift,spval4k5)
      acd55(35)=abb55(83)
      acd55(36)=abb55(23)
      acd55(37)=spvak1k2(iv3)
      acd55(38)=abb55(41)
      acd55(39)=spvak1k5(iv3)
      acd55(40)=spvak2l3(iv3)
      acd55(41)=abb55(31)
      acd55(42)=spvak2l4(iv3)
      acd55(43)=spval3k5(iv3)
      acd55(44)=abb55(40)
      acd55(45)=spval4k5(iv3)
      acd55(46)=d(iv1,iv3)
      acd55(47)=k1(iv2)
      acd55(48)=k2(iv2)
      acd55(49)=l3(iv2)
      acd55(50)=l4(iv2)
      acd55(51)=qshift(iv2)
      acd55(52)=spvak2k5(iv2)
      acd55(53)=spvak1k2(iv2)
      acd55(54)=spvak1k5(iv2)
      acd55(55)=spvak2l3(iv2)
      acd55(56)=spvak2l4(iv2)
      acd55(57)=spval3k5(iv2)
      acd55(58)=spval4k5(iv2)
      acd55(59)=d(iv2,iv3)
      acd55(60)=k1(iv1)
      acd55(61)=k2(iv1)
      acd55(62)=l3(iv1)
      acd55(63)=l4(iv1)
      acd55(64)=qshift(iv1)
      acd55(65)=spvak2k5(iv1)
      acd55(66)=spvak1k2(iv1)
      acd55(67)=spvak1k5(iv1)
      acd55(68)=spvak2l3(iv1)
      acd55(69)=spvak2l4(iv1)
      acd55(70)=spval3k5(iv1)
      acd55(71)=spval4k5(iv1)
      acd55(72)=abb55(85)
      acd55(73)=abb55(90)
      acd55(74)=abb55(53)
      acd55(75)=abb55(70)
      acd55(76)=abb55(51)
      acd55(77)=abb55(89)
      acd55(78)=abb55(54)
      acd55(79)=abb55(43)
      acd55(80)=abb55(26)
      acd55(81)=abb55(13)
      acd55(82)=abb55(12)
      acd55(83)=abb55(62)
      acd55(84)=abb55(52)
      acd55(85)=acd55(35)*acd55(71)
      acd55(86)=acd55(33)*acd55(70)
      acd55(87)=acd55(31)*acd55(69)
      acd55(88)=acd55(29)*acd55(68)
      acd55(89)=acd55(27)*acd55(67)
      acd55(90)=acd55(13)*acd55(63)
      acd55(91)=acd55(10)*acd55(62)
      acd55(92)=acd55(7)*acd55(61)
      acd55(93)=4.0_ki*acd55(16)
      acd55(94)=acd55(93)*acd55(64)
      acd55(95)=acd55(60)*acd55(4)
      acd55(96)=acd55(66)*acd55(25)
      acd55(85)=acd55(96)+acd55(95)-acd55(94)+acd55(92)+acd55(91)+acd55(90)+acd&
      &55(89)+acd55(88)+acd55(87)+acd55(85)+acd55(86)
      acd55(86)=acd55(59)*acd55(85)
      acd55(87)=acd55(35)*acd55(58)
      acd55(88)=acd55(33)*acd55(57)
      acd55(89)=acd55(31)*acd55(56)
      acd55(90)=acd55(29)*acd55(55)
      acd55(91)=acd55(27)*acd55(54)
      acd55(92)=acd55(13)*acd55(50)
      acd55(94)=acd55(10)*acd55(49)
      acd55(95)=acd55(7)*acd55(48)
      acd55(96)=acd55(47)*acd55(4)
      acd55(97)=acd55(53)*acd55(25)
      acd55(87)=acd55(97)+acd55(96)+acd55(95)+acd55(94)+acd55(92)+acd55(91)+acd&
      &55(90)+acd55(89)+acd55(87)+acd55(88)
      acd55(88)=acd55(93)*acd55(51)
      acd55(88)=acd55(88)-acd55(87)
      acd55(89)=-acd55(46)*acd55(88)
      acd55(90)=acd55(35)*acd55(45)
      acd55(91)=acd55(33)*acd55(43)
      acd55(92)=acd55(31)*acd55(42)
      acd55(94)=acd55(29)*acd55(40)
      acd55(95)=acd55(27)*acd55(39)
      acd55(96)=acd55(13)*acd55(12)
      acd55(97)=acd55(10)*acd55(9)
      acd55(98)=acd55(7)*acd55(6)
      acd55(99)=acd55(2)*acd55(4)
      acd55(100)=acd55(37)*acd55(25)
      acd55(90)=acd55(100)+acd55(97)+acd55(96)+acd55(95)+acd55(94)+acd55(92)+ac&
      &d55(90)+acd55(91)+acd55(98)+acd55(99)
      acd55(91)=-acd55(15)*acd55(93)
      acd55(91)=acd55(91)+acd55(90)
      acd55(91)=acd55(1)*acd55(91)
      acd55(86)=acd55(91)+acd55(86)+acd55(89)
      acd55(86)=acd55(3)*acd55(86)
      acd55(89)=-acd55(63)*acd55(14)
      acd55(91)=-acd55(70)*acd55(44)
      acd55(92)=-acd55(68)*acd55(41)
      acd55(93)=-acd55(62)*acd55(11)
      acd55(94)=-acd55(61)*acd55(8)
      acd55(95)=-acd55(60)*acd55(5)
      acd55(96)=-acd55(66)*acd55(38)
      acd55(97)=4.0_ki*acd55(64)
      acd55(97)=acd55(17)*acd55(97)
      acd55(89)=acd55(97)+acd55(96)+acd55(95)+acd55(94)+acd55(93)+acd55(92)+acd&
      &55(89)+acd55(91)
      acd55(89)=acd55(59)*acd55(89)
      acd55(91)=-acd55(50)*acd55(14)
      acd55(92)=-acd55(57)*acd55(44)
      acd55(93)=-acd55(55)*acd55(41)
      acd55(94)=-acd55(49)*acd55(11)
      acd55(95)=-acd55(48)*acd55(8)
      acd55(96)=-acd55(47)*acd55(5)
      acd55(97)=-acd55(53)*acd55(38)
      acd55(98)=4.0_ki*acd55(17)
      acd55(99)=acd55(51)*acd55(98)
      acd55(91)=acd55(99)+acd55(97)+acd55(96)+acd55(95)+acd55(94)+acd55(93)+acd&
      &55(91)+acd55(92)
      acd55(91)=acd55(46)*acd55(91)
      acd55(92)=-acd55(12)*acd55(14)
      acd55(93)=-acd55(43)*acd55(44)
      acd55(94)=-acd55(40)*acd55(41)
      acd55(95)=-acd55(9)*acd55(11)
      acd55(96)=-acd55(6)*acd55(8)
      acd55(97)=-acd55(2)*acd55(5)
      acd55(99)=-acd55(37)*acd55(38)
      acd55(98)=acd55(15)*acd55(98)
      acd55(92)=acd55(98)+acd55(99)+acd55(97)+acd55(96)+acd55(95)+acd55(94)+acd&
      &55(92)+acd55(93)
      acd55(92)=acd55(1)*acd55(92)
      acd55(86)=acd55(86)+acd55(92)+acd55(89)+acd55(91)
      acd55(89)=acd55(16)*acd55(23)
      acd55(91)=acd55(35)*acd55(34)
      acd55(92)=acd55(33)*acd55(32)
      acd55(93)=acd55(31)*acd55(30)
      acd55(94)=acd55(29)*acd55(28)
      acd55(95)=acd55(27)*acd55(26)
      acd55(96)=acd55(25)*acd55(24)
      acd55(97)=acd55(13)*acd55(22)
      acd55(98)=acd55(10)*acd55(21)
      acd55(99)=acd55(7)*acd55(20)
      acd55(100)=acd55(4)*acd55(19)
      acd55(89)=-acd55(36)+acd55(100)+acd55(99)+acd55(98)+acd55(97)+acd55(96)+a&
      &cd55(95)+acd55(94)-2.0_ki*acd55(89)+acd55(91)+acd55(92)+acd55(93)
      acd55(89)=2.0_ki*acd55(89)
      acd55(91)=acd55(59)*acd55(89)
      acd55(90)=2.0_ki*acd55(90)
      acd55(92)=acd55(51)*acd55(90)
      acd55(93)=2.0_ki*acd55(15)
      acd55(88)=-acd55(88)*acd55(93)
      acd55(93)=acd55(12)-acd55(2)
      acd55(93)=acd55(74)*acd55(93)
      acd55(94)=acd55(84)*acd55(45)
      acd55(95)=acd55(82)*acd55(42)
      acd55(96)=acd55(43)*acd55(83)
      acd55(97)=acd55(40)*acd55(81)
      acd55(98)=acd55(9)*acd55(79)
      acd55(99)=acd55(6)*acd55(78)
      acd55(93)=acd55(95)+acd55(93)+acd55(98)+acd55(99)+acd55(94)+acd55(96)+acd&
      &55(97)
      acd55(94)=-acd55(53)*acd55(93)
      acd55(95)=acd55(50)-acd55(47)
      acd55(95)=acd55(74)*acd55(95)
      acd55(96)=acd55(84)*acd55(58)
      acd55(97)=acd55(82)*acd55(56)
      acd55(98)=acd55(57)*acd55(83)
      acd55(99)=acd55(55)*acd55(81)
      acd55(100)=acd55(49)*acd55(79)
      acd55(101)=acd55(48)*acd55(78)
      acd55(95)=acd55(97)+acd55(98)+acd55(99)+acd55(100)+acd55(101)+acd55(95)+a&
      &cd55(96)
      acd55(96)=-acd55(37)*acd55(95)
      acd55(97)=acd55(75)*acd55(39)
      acd55(98)=acd55(43)*acd55(77)
      acd55(99)=acd55(40)*acd55(76)
      acd55(100)=acd55(9)*acd55(73)
      acd55(101)=acd55(6)*acd55(72)
      acd55(97)=acd55(97)+acd55(98)+acd55(99)+acd55(100)+acd55(101)
      acd55(98)=-acd55(47)*acd55(97)
      acd55(99)=acd55(75)*acd55(54)
      acd55(100)=acd55(57)*acd55(77)
      acd55(101)=acd55(55)*acd55(76)
      acd55(102)=acd55(49)*acd55(73)
      acd55(103)=acd55(48)*acd55(72)
      acd55(99)=acd55(103)+acd55(99)+acd55(100)+acd55(101)+acd55(102)
      acd55(100)=-acd55(2)*acd55(99)
      acd55(88)=acd55(91)+acd55(88)+acd55(92)+acd55(96)+acd55(94)+acd55(98)+acd&
      &55(100)
      acd55(88)=acd55(65)*acd55(88)
      acd55(85)=2.0_ki*acd55(85)
      acd55(91)=acd55(15)*acd55(85)
      acd55(92)=acd55(46)*acd55(89)
      acd55(90)=acd55(64)*acd55(90)
      acd55(94)=acd55(63)-acd55(60)
      acd55(94)=acd55(74)*acd55(94)
      acd55(96)=acd55(84)*acd55(71)
      acd55(98)=acd55(82)*acd55(69)
      acd55(100)=acd55(70)*acd55(83)
      acd55(101)=acd55(68)*acd55(81)
      acd55(102)=acd55(62)*acd55(79)
      acd55(103)=acd55(61)*acd55(78)
      acd55(104)=2.0_ki*acd55(80)
      acd55(105)=acd55(104)*acd55(65)
      acd55(94)=acd55(105)+acd55(98)+acd55(100)+acd55(101)+acd55(102)+acd55(103&
      &)+acd55(94)+acd55(96)
      acd55(96)=-acd55(37)*acd55(94)
      acd55(93)=-acd55(66)*acd55(93)
      acd55(97)=-acd55(60)*acd55(97)
      acd55(98)=acd55(75)*acd55(67)
      acd55(100)=acd55(70)*acd55(77)
      acd55(101)=acd55(68)*acd55(76)
      acd55(102)=acd55(62)*acd55(73)
      acd55(103)=acd55(61)*acd55(72)
      acd55(98)=acd55(103)+acd55(98)+acd55(100)+acd55(101)+acd55(102)
      acd55(100)=-acd55(2)*acd55(98)
      acd55(90)=acd55(92)+acd55(91)+acd55(90)+acd55(93)+acd55(97)+acd55(100)+ac&
      &d55(96)
      acd55(90)=acd55(52)*acd55(90)
      acd55(85)=acd55(51)*acd55(85)
      acd55(89)=acd55(1)*acd55(89)
      acd55(91)=2.0_ki*acd55(64)
      acd55(87)=acd55(87)*acd55(91)
      acd55(91)=-acd55(53)*acd55(94)
      acd55(92)=-acd55(52)*acd55(104)
      acd55(92)=acd55(92)-acd55(95)
      acd55(92)=acd55(66)*acd55(92)
      acd55(93)=-acd55(60)*acd55(99)
      acd55(94)=-acd55(47)*acd55(98)
      acd55(85)=acd55(89)+acd55(85)+acd55(87)+acd55(93)+acd55(94)+acd55(91)+acd&
      &55(92)
      acd55(85)=acd55(18)*acd55(85)
      brack=acd55(85)+2.0_ki*acd55(86)+acd55(88)+acd55(90)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd55h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd55
      complex(ki) :: brack
      acd55(1)=d(iv1,iv2)
      acd55(2)=d(iv3,iv4)
      acd55(3)=dotproduct(qshift,spvak2k5)
      acd55(4)=abb55(77)
      acd55(5)=abb55(21)
      acd55(6)=k1(iv3)
      acd55(7)=spvak2k5(iv4)
      acd55(8)=abb55(82)
      acd55(9)=k1(iv4)
      acd55(10)=spvak2k5(iv3)
      acd55(11)=k2(iv3)
      acd55(12)=abb55(60)
      acd55(13)=k2(iv4)
      acd55(14)=l3(iv3)
      acd55(15)=abb55(49)
      acd55(16)=l3(iv4)
      acd55(17)=l4(iv3)
      acd55(18)=abb55(44)
      acd55(19)=l4(iv4)
      acd55(20)=qshift(iv3)
      acd55(21)=qshift(iv4)
      acd55(22)=spvak1k2(iv4)
      acd55(23)=abb55(28)
      acd55(24)=spvak1k5(iv4)
      acd55(25)=abb55(69)
      acd55(26)=spvak2l3(iv4)
      acd55(27)=abb55(48)
      acd55(28)=spvak2l4(iv4)
      acd55(29)=abb55(76)
      acd55(30)=spval3k5(iv4)
      acd55(31)=abb55(71)
      acd55(32)=spval4k5(iv4)
      acd55(33)=abb55(83)
      acd55(34)=spvak1k2(iv3)
      acd55(35)=spvak1k5(iv3)
      acd55(36)=spvak2l3(iv3)
      acd55(37)=spvak2l4(iv3)
      acd55(38)=spval3k5(iv3)
      acd55(39)=spval4k5(iv3)
      acd55(40)=d(iv1,iv3)
      acd55(41)=d(iv2,iv4)
      acd55(42)=k1(iv2)
      acd55(43)=spvak2k5(iv2)
      acd55(44)=k2(iv2)
      acd55(45)=l3(iv2)
      acd55(46)=l4(iv2)
      acd55(47)=qshift(iv2)
      acd55(48)=spvak1k2(iv2)
      acd55(49)=spvak1k5(iv2)
      acd55(50)=spvak2l3(iv2)
      acd55(51)=spvak2l4(iv2)
      acd55(52)=spval3k5(iv2)
      acd55(53)=spval4k5(iv2)
      acd55(54)=d(iv1,iv4)
      acd55(55)=d(iv2,iv3)
      acd55(56)=k1(iv1)
      acd55(57)=spvak2k5(iv1)
      acd55(58)=k2(iv1)
      acd55(59)=l3(iv1)
      acd55(60)=l4(iv1)
      acd55(61)=qshift(iv1)
      acd55(62)=spvak1k2(iv1)
      acd55(63)=spvak1k5(iv1)
      acd55(64)=spvak2l3(iv1)
      acd55(65)=spvak2l4(iv1)
      acd55(66)=spval3k5(iv1)
      acd55(67)=spval4k5(iv1)
      acd55(68)=acd55(6)*acd55(8)
      acd55(69)=acd55(11)*acd55(12)
      acd55(70)=acd55(14)*acd55(15)
      acd55(71)=acd55(17)*acd55(18)
      acd55(72)=4.0_ki*acd55(4)
      acd55(73)=-acd55(20)*acd55(72)
      acd55(74)=acd55(34)*acd55(23)
      acd55(75)=acd55(35)*acd55(25)
      acd55(76)=acd55(36)*acd55(27)
      acd55(77)=acd55(37)*acd55(29)
      acd55(78)=acd55(38)*acd55(31)
      acd55(79)=acd55(39)*acd55(33)
      acd55(68)=acd55(79)+acd55(78)+acd55(77)+acd55(76)+acd55(75)+acd55(74)+acd&
      &55(73)+acd55(71)+acd55(70)+acd55(69)+acd55(68)
      acd55(69)=acd55(1)*acd55(7)
      acd55(70)=acd55(41)*acd55(57)
      acd55(71)=acd55(54)*acd55(43)
      acd55(69)=acd55(69)+acd55(70)+acd55(71)
      acd55(68)=acd55(69)*acd55(68)
      acd55(69)=acd55(9)*acd55(8)
      acd55(70)=acd55(13)*acd55(12)
      acd55(71)=acd55(16)*acd55(15)
      acd55(73)=acd55(19)*acd55(18)
      acd55(74)=-acd55(21)*acd55(72)
      acd55(75)=acd55(22)*acd55(23)
      acd55(76)=acd55(24)*acd55(25)
      acd55(77)=acd55(26)*acd55(27)
      acd55(78)=acd55(28)*acd55(29)
      acd55(79)=acd55(30)*acd55(31)
      acd55(80)=acd55(32)*acd55(33)
      acd55(69)=acd55(80)+acd55(79)+acd55(78)+acd55(77)+acd55(76)+acd55(75)+acd&
      &55(74)+acd55(73)+acd55(71)+acd55(70)+acd55(69)
      acd55(70)=acd55(1)*acd55(10)
      acd55(71)=acd55(40)*acd55(43)
      acd55(73)=acd55(55)*acd55(57)
      acd55(70)=acd55(70)+acd55(71)+acd55(73)
      acd55(69)=acd55(70)*acd55(69)
      acd55(70)=acd55(42)*acd55(8)
      acd55(71)=acd55(44)*acd55(12)
      acd55(73)=acd55(45)*acd55(15)
      acd55(74)=acd55(46)*acd55(18)
      acd55(75)=-acd55(47)*acd55(72)
      acd55(76)=acd55(48)*acd55(23)
      acd55(77)=acd55(49)*acd55(25)
      acd55(78)=acd55(50)*acd55(27)
      acd55(79)=acd55(51)*acd55(29)
      acd55(80)=acd55(52)*acd55(31)
      acd55(81)=acd55(53)*acd55(33)
      acd55(70)=acd55(81)+acd55(80)+acd55(79)+acd55(78)+acd55(77)+acd55(76)+acd&
      &55(75)+acd55(74)+acd55(73)+acd55(71)+acd55(70)
      acd55(71)=acd55(2)*acd55(57)
      acd55(73)=acd55(40)*acd55(7)
      acd55(74)=acd55(54)*acd55(10)
      acd55(71)=acd55(74)+acd55(71)+acd55(73)
      acd55(70)=acd55(71)*acd55(70)
      acd55(71)=acd55(56)*acd55(8)
      acd55(73)=acd55(58)*acd55(12)
      acd55(74)=acd55(59)*acd55(15)
      acd55(75)=acd55(60)*acd55(18)
      acd55(72)=-acd55(61)*acd55(72)
      acd55(76)=acd55(62)*acd55(23)
      acd55(77)=acd55(63)*acd55(25)
      acd55(78)=acd55(64)*acd55(27)
      acd55(79)=acd55(65)*acd55(29)
      acd55(80)=acd55(66)*acd55(31)
      acd55(81)=acd55(67)*acd55(33)
      acd55(71)=acd55(81)+acd55(80)+acd55(79)+acd55(78)+acd55(77)+acd55(76)+acd&
      &55(72)+acd55(75)+acd55(74)+acd55(73)+acd55(71)
      acd55(72)=acd55(2)*acd55(43)
      acd55(73)=acd55(41)*acd55(10)
      acd55(74)=acd55(55)*acd55(7)
      acd55(72)=acd55(74)+acd55(72)+acd55(73)
      acd55(71)=acd55(72)*acd55(71)
      acd55(72)=acd55(2)*acd55(1)
      acd55(73)=acd55(41)*acd55(40)
      acd55(74)=acd55(55)*acd55(54)
      acd55(72)=acd55(74)+acd55(72)+acd55(73)
      acd55(73)=-acd55(3)*acd55(4)
      acd55(73)=acd55(73)+acd55(5)
      acd55(72)=acd55(72)*acd55(73)
      acd55(68)=4.0_ki*acd55(72)+acd55(71)+acd55(70)+acd55(69)+acd55(68)
      brack=2.0_ki*acd55(68)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd55h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd55
      complex(ki) :: brack
      acd55(1)=d(iv1,iv2)
      acd55(2)=d(iv3,iv4)
      acd55(3)=spvak2k5(iv5)
      acd55(4)=abb55(77)
      acd55(5)=d(iv3,iv5)
      acd55(6)=spvak2k5(iv4)
      acd55(7)=d(iv4,iv5)
      acd55(8)=spvak2k5(iv3)
      acd55(9)=d(iv1,iv3)
      acd55(10)=d(iv2,iv4)
      acd55(11)=d(iv2,iv5)
      acd55(12)=spvak2k5(iv2)
      acd55(13)=d(iv1,iv4)
      acd55(14)=d(iv2,iv3)
      acd55(15)=d(iv1,iv5)
      acd55(16)=spvak2k5(iv1)
      acd55(17)=-acd55(7)*acd55(8)
      acd55(18)=-acd55(5)*acd55(6)
      acd55(19)=-acd55(2)*acd55(3)
      acd55(17)=acd55(19)+acd55(17)+acd55(18)
      acd55(17)=acd55(1)*acd55(17)
      acd55(18)=-acd55(11)*acd55(13)
      acd55(19)=-acd55(10)*acd55(15)
      acd55(18)=acd55(18)+acd55(19)
      acd55(18)=acd55(8)*acd55(18)
      acd55(19)=-acd55(14)*acd55(16)
      acd55(20)=-acd55(9)*acd55(12)
      acd55(19)=acd55(19)+acd55(20)
      acd55(19)=acd55(7)*acd55(19)
      acd55(20)=-acd55(14)*acd55(15)
      acd55(21)=-acd55(9)*acd55(11)
      acd55(20)=acd55(20)+acd55(21)
      acd55(20)=acd55(6)*acd55(20)
      acd55(21)=-acd55(12)*acd55(13)
      acd55(22)=-acd55(10)*acd55(16)
      acd55(21)=acd55(21)+acd55(22)
      acd55(21)=acd55(5)*acd55(21)
      acd55(22)=-acd55(13)*acd55(14)
      acd55(23)=-acd55(9)*acd55(10)
      acd55(22)=acd55(22)+acd55(23)
      acd55(22)=acd55(3)*acd55(22)
      acd55(23)=-acd55(12)*acd55(15)
      acd55(24)=-acd55(11)*acd55(16)
      acd55(23)=acd55(23)+acd55(24)
      acd55(23)=acd55(2)*acd55(23)
      acd55(17)=acd55(17)+acd55(23)+acd55(22)+acd55(21)+acd55(20)+acd55(18)+acd&
      &55(19)
      brack=8.0_ki*acd55(17)*acd55(4)
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd55h0
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
!---#[ subroutine reconstruct_d55:
   subroutine     reconstruct_d55(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_55:
      coeffs%coeffs_55%c0 = derivative(czip)
      coeffs%coeffs_55%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_55%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_55%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_55%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_55%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_55%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_55%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_55%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_55%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_55%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_55%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_55%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_55%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_55%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_55%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_55%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_55%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_55%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_55%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_55%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_55%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_55%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_55%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_55%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_55%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_55%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_55%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_55%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_55%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_55%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_55%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_55%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_55%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_55%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_55%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_55%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_55%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_55%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_55%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_55%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_55%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_55%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_55%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_55%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_55%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_55%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_55%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_55%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_55%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_55%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_55%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_55%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_55%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_55%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_55%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_55%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_55%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_55%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_55%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_55%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_55%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_55%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_55%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_55%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_55%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_55%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_55%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_55%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_55%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_55%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_55%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_55%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_55%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_55%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_55%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_55%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_55%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_55%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_55%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_55%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_55%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_55%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_55%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_55%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_55%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_55%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_55%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_55%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_55%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_55%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_55%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_55%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_55%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_55%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_55%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_55%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_55%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_55%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_55%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_55%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_55%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_55%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_55%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_55%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_55%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_55%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_55%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_55%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_55%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_55%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_55%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_55%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_55%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_55%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_55%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_55%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_55%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_55%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_55%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_55%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_55%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_55%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_55%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_55%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_55%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_55:
   end subroutine reconstruct_d55
!---#] subroutine reconstruct_d55:
end module     p0_gg_hhg_d55h0l1d
