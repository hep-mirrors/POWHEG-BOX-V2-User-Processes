module     p0_gg_hhg_d57h0l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d57h0l1d.f90
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
   public :: derivative , reconstruct_d57
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(92) :: acd57
      complex(ki) :: brack
      acd57(1)=dotproduct(k1,qshift)
      acd57(2)=dotproduct(k2,qshift)
      acd57(3)=dotproduct(qshift,spvak2k5)
      acd57(4)=abb57(85)
      acd57(5)=abb57(65)
      acd57(6)=dotproduct(l3,qshift)
      acd57(7)=abb57(90)
      acd57(8)=abb57(67)
      acd57(9)=dotproduct(qshift,qshift)
      acd57(10)=abb57(82)
      acd57(11)=abb57(36)
      acd57(12)=dotproduct(qshift,spvak1k2)
      acd57(13)=abb57(53)
      acd57(14)=dotproduct(qshift,spvak1k5)
      acd57(15)=abb57(70)
      acd57(16)=dotproduct(qshift,spvak2l3)
      acd57(17)=abb57(51)
      acd57(18)=dotproduct(qshift,spval3k5)
      acd57(19)=abb57(89)
      acd57(20)=abb57(79)
      acd57(21)=abb57(32)
      acd57(22)=abb57(64)
      acd57(23)=abb57(19)
      acd57(24)=abb57(73)
      acd57(25)=abb57(66)
      acd57(26)=abb57(60)
      acd57(27)=abb57(15)
      acd57(28)=abb57(54)
      acd57(29)=abb57(47)
      acd57(30)=abb57(102)
      acd57(31)=abb57(61)
      acd57(32)=abb57(49)
      acd57(33)=abb57(20)
      acd57(34)=abb57(43)
      acd57(35)=abb57(58)
      acd57(36)=abb57(97)
      acd57(37)=abb57(59)
      acd57(38)=dotproduct(l4,qshift)
      acd57(39)=abb57(44)
      acd57(40)=abb57(37)
      acd57(41)=abb57(80)
      acd57(42)=abb57(34)
      acd57(43)=abb57(77)
      acd57(44)=abb57(21)
      acd57(45)=abb57(28)
      acd57(46)=abb57(69)
      acd57(47)=abb57(48)
      acd57(48)=abb57(71)
      acd57(49)=dotproduct(qshift,spvak2l4)
      acd57(50)=abb57(76)
      acd57(51)=dotproduct(qshift,spval4k5)
      acd57(52)=abb57(83)
      acd57(53)=abb57(23)
      acd57(54)=abb57(41)
      acd57(55)=abb57(31)
      acd57(56)=abb57(40)
      acd57(57)=abb57(30)
      acd57(58)=abb57(26)
      acd57(59)=abb57(13)
      acd57(60)=abb57(62)
      acd57(61)=abb57(12)
      acd57(62)=abb57(52)
      acd57(63)=abb57(27)
      acd57(64)=abb57(33)
      acd57(65)=abb57(42)
      acd57(66)=abb57(86)
      acd57(67)=abb57(16)
      acd57(68)=abb57(84)
      acd57(69)=abb57(75)
      acd57(70)=abb57(22)
      acd57(71)=abb57(11)
      acd57(72)=abb57(103)
      acd57(73)=dotproduct(qshift,spvak2k1)
      acd57(74)=abb57(17)
      acd57(75)=abb57(14)
      acd57(76)=abb57(63)
      acd57(77)=abb57(18)
      acd57(78)=abb57(68)
      acd57(79)=abb57(10)
      acd57(80)=abb57(25)
      acd57(81)=acd57(51)*acd57(52)
      acd57(82)=acd57(49)*acd57(50)
      acd57(83)=acd57(38)*acd57(39)
      acd57(84)=acd57(14)*acd57(46)
      acd57(85)=acd57(18)*acd57(48)
      acd57(86)=acd57(16)*acd57(47)
      acd57(87)=acd57(6)*acd57(32)
      acd57(88)=acd57(2)*acd57(26)
      acd57(89)=acd57(1)*acd57(10)
      acd57(90)=acd57(12)*acd57(45)
      acd57(91)=-acd57(9)*acd57(43)
      acd57(81)=acd57(91)+acd57(90)+acd57(89)+acd57(88)+acd57(87)+acd57(86)+acd&
      &57(85)+acd57(84)+acd57(83)+acd57(82)-acd57(53)+acd57(81)
      acd57(81)=acd57(9)*acd57(81)
      acd57(82)=acd57(1)-acd57(38)
      acd57(83)=acd57(13)*acd57(82)
      acd57(84)=-acd57(51)*acd57(62)
      acd57(85)=-acd57(49)*acd57(61)
      acd57(86)=-acd57(18)*acd57(60)
      acd57(87)=-acd57(16)*acd57(59)
      acd57(88)=-acd57(6)*acd57(34)
      acd57(89)=-acd57(2)*acd57(28)
      acd57(90)=-acd57(3)*acd57(58)
      acd57(83)=acd57(90)+acd57(89)+acd57(88)+acd57(87)+acd57(86)+acd57(85)+acd&
      &57(63)+acd57(84)+acd57(83)
      acd57(83)=acd57(12)*acd57(83)
      acd57(84)=-acd57(14)*acd57(15)
      acd57(85)=-acd57(18)*acd57(19)
      acd57(86)=-acd57(16)*acd57(17)
      acd57(87)=-acd57(6)*acd57(7)
      acd57(88)=-acd57(2)*acd57(4)
      acd57(84)=acd57(88)+acd57(87)+acd57(86)+acd57(85)+acd57(20)+acd57(84)
      acd57(84)=acd57(1)*acd57(84)
      acd57(85)=acd57(51)*acd57(68)
      acd57(86)=acd57(49)*acd57(67)
      acd57(87)=acd57(38)*acd57(41)
      acd57(88)=acd57(14)*acd57(64)
      acd57(89)=acd57(18)*acd57(66)
      acd57(90)=acd57(16)*acd57(65)
      acd57(91)=acd57(6)*acd57(35)
      acd57(92)=acd57(2)*acd57(29)
      acd57(81)=acd57(81)+acd57(84)+acd57(92)+acd57(91)+acd57(90)+acd57(89)+acd&
      &57(88)+acd57(87)+acd57(86)-acd57(69)+acd57(85)+acd57(83)
      acd57(81)=acd57(3)*acd57(81)
      acd57(83)=-acd57(38)*acd57(40)
      acd57(84)=-acd57(18)*acd57(56)
      acd57(85)=-acd57(16)*acd57(55)
      acd57(86)=-acd57(6)*acd57(33)
      acd57(87)=-acd57(2)*acd57(27)
      acd57(88)=-acd57(1)*acd57(11)
      acd57(89)=-acd57(12)*acd57(54)
      acd57(90)=acd57(9)*acd57(44)
      acd57(83)=acd57(90)+acd57(89)+acd57(88)+acd57(87)+acd57(86)+acd57(85)+acd&
      &57(84)+acd57(57)+acd57(83)
      acd57(83)=acd57(9)*acd57(83)
      acd57(82)=-acd57(21)*acd57(82)
      acd57(84)=acd57(73)*acd57(74)
      acd57(85)=acd57(14)*acd57(70)
      acd57(86)=acd57(18)*acd57(72)
      acd57(87)=acd57(16)*acd57(71)
      acd57(88)=acd57(6)*acd57(36)
      acd57(89)=acd57(2)*acd57(30)
      acd57(82)=acd57(89)+acd57(88)+acd57(87)+acd57(86)+acd57(85)-acd57(75)+acd&
      &57(84)+acd57(82)
      acd57(82)=acd57(12)*acd57(82)
      acd57(84)=acd57(14)*acd57(22)
      acd57(85)=acd57(18)*acd57(24)
      acd57(86)=acd57(16)*acd57(23)
      acd57(87)=acd57(6)*acd57(8)
      acd57(88)=acd57(2)*acd57(5)
      acd57(84)=acd57(88)+acd57(87)+acd57(86)+acd57(85)-acd57(25)+acd57(84)
      acd57(84)=acd57(1)*acd57(84)
      acd57(85)=-acd57(49)*acd57(79)
      acd57(86)=-acd57(38)*acd57(42)
      acd57(87)=-acd57(14)*acd57(76)
      acd57(88)=-acd57(18)*acd57(78)
      acd57(89)=-acd57(16)*acd57(77)
      acd57(90)=-acd57(6)*acd57(37)
      acd57(91)=-acd57(2)*acd57(31)
      brack=acd57(80)+acd57(81)+acd57(82)+acd57(83)+acd57(84)+acd57(85)+acd57(8&
      &6)+acd57(87)+acd57(88)+acd57(89)+acd57(90)+acd57(91)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(112) :: acd57
      complex(ki) :: brack
      acd57(1)=k1(iv1)
      acd57(2)=dotproduct(k2,qshift)
      acd57(3)=dotproduct(qshift,spvak2k5)
      acd57(4)=abb57(85)
      acd57(5)=abb57(65)
      acd57(6)=dotproduct(l3,qshift)
      acd57(7)=abb57(90)
      acd57(8)=abb57(67)
      acd57(9)=dotproduct(qshift,qshift)
      acd57(10)=abb57(82)
      acd57(11)=abb57(36)
      acd57(12)=dotproduct(qshift,spvak1k2)
      acd57(13)=abb57(53)
      acd57(14)=dotproduct(qshift,spvak1k5)
      acd57(15)=abb57(70)
      acd57(16)=dotproduct(qshift,spvak2l3)
      acd57(17)=abb57(51)
      acd57(18)=dotproduct(qshift,spval3k5)
      acd57(19)=abb57(89)
      acd57(20)=abb57(79)
      acd57(21)=abb57(32)
      acd57(22)=abb57(64)
      acd57(23)=abb57(19)
      acd57(24)=abb57(73)
      acd57(25)=abb57(66)
      acd57(26)=k2(iv1)
      acd57(27)=dotproduct(k1,qshift)
      acd57(28)=abb57(60)
      acd57(29)=abb57(15)
      acd57(30)=abb57(54)
      acd57(31)=abb57(47)
      acd57(32)=abb57(102)
      acd57(33)=abb57(61)
      acd57(34)=l3(iv1)
      acd57(35)=abb57(49)
      acd57(36)=abb57(20)
      acd57(37)=abb57(43)
      acd57(38)=abb57(58)
      acd57(39)=abb57(97)
      acd57(40)=abb57(59)
      acd57(41)=l4(iv1)
      acd57(42)=abb57(44)
      acd57(43)=abb57(37)
      acd57(44)=abb57(80)
      acd57(45)=abb57(34)
      acd57(46)=qshift(iv1)
      acd57(47)=dotproduct(l4,qshift)
      acd57(48)=abb57(77)
      acd57(49)=abb57(21)
      acd57(50)=abb57(28)
      acd57(51)=abb57(69)
      acd57(52)=abb57(48)
      acd57(53)=abb57(71)
      acd57(54)=dotproduct(qshift,spvak2l4)
      acd57(55)=abb57(76)
      acd57(56)=dotproduct(qshift,spval4k5)
      acd57(57)=abb57(83)
      acd57(58)=abb57(23)
      acd57(59)=abb57(41)
      acd57(60)=abb57(31)
      acd57(61)=abb57(40)
      acd57(62)=abb57(30)
      acd57(63)=spvak2k5(iv1)
      acd57(64)=abb57(26)
      acd57(65)=abb57(13)
      acd57(66)=abb57(62)
      acd57(67)=abb57(12)
      acd57(68)=abb57(52)
      acd57(69)=abb57(27)
      acd57(70)=abb57(33)
      acd57(71)=abb57(42)
      acd57(72)=abb57(86)
      acd57(73)=abb57(16)
      acd57(74)=abb57(84)
      acd57(75)=abb57(75)
      acd57(76)=spvak1k2(iv1)
      acd57(77)=abb57(22)
      acd57(78)=abb57(11)
      acd57(79)=abb57(103)
      acd57(80)=dotproduct(qshift,spvak2k1)
      acd57(81)=abb57(17)
      acd57(82)=abb57(14)
      acd57(83)=spvak1k5(iv1)
      acd57(84)=abb57(63)
      acd57(85)=spvak2l3(iv1)
      acd57(86)=abb57(18)
      acd57(87)=spval3k5(iv1)
      acd57(88)=abb57(68)
      acd57(89)=spvak2l4(iv1)
      acd57(90)=abb57(10)
      acd57(91)=spval4k5(iv1)
      acd57(92)=spvak2k1(iv1)
      acd57(93)=-acd57(57)*acd57(91)
      acd57(94)=-acd57(89)*acd57(55)
      acd57(95)=-acd57(83)*acd57(51)
      acd57(96)=-acd57(41)*acd57(42)
      acd57(97)=-acd57(87)*acd57(53)
      acd57(98)=-acd57(85)*acd57(52)
      acd57(99)=-acd57(34)*acd57(35)
      acd57(100)=-acd57(26)*acd57(28)
      acd57(101)=-acd57(1)*acd57(10)
      acd57(102)=-acd57(76)*acd57(50)
      acd57(103)=4.0_ki*acd57(46)
      acd57(104)=acd57(48)*acd57(103)
      acd57(93)=acd57(104)+acd57(102)+acd57(101)+acd57(100)+acd57(99)+acd57(98)&
      &+acd57(97)+acd57(96)+acd57(95)+acd57(93)+acd57(94)
      acd57(93)=acd57(9)*acd57(93)
      acd57(94)=acd57(1)-acd57(41)
      acd57(95)=-acd57(13)*acd57(94)
      acd57(96)=acd57(68)*acd57(91)
      acd57(97)=acd57(89)*acd57(67)
      acd57(98)=acd57(87)*acd57(66)
      acd57(99)=acd57(85)*acd57(65)
      acd57(100)=acd57(34)*acd57(37)
      acd57(101)=acd57(26)*acd57(30)
      acd57(102)=2.0_ki*acd57(46)
      acd57(104)=-acd57(50)*acd57(102)
      acd57(105)=acd57(63)*acd57(64)
      acd57(95)=2.0_ki*acd57(105)+acd57(104)+acd57(101)+acd57(100)+acd57(99)+ac&
      &d57(98)+acd57(96)+acd57(97)+acd57(95)
      acd57(95)=acd57(12)*acd57(95)
      acd57(96)=acd57(56)*acd57(57)
      acd57(97)=acd57(54)*acd57(55)
      acd57(98)=acd57(47)*acd57(42)
      acd57(99)=acd57(14)*acd57(51)
      acd57(100)=acd57(18)*acd57(53)
      acd57(101)=acd57(16)*acd57(52)
      acd57(104)=acd57(6)*acd57(35)
      acd57(105)=acd57(2)*acd57(28)
      acd57(96)=acd57(96)+acd57(97)+acd57(98)+acd57(99)+acd57(100)+acd57(101)+a&
      &cd57(104)+acd57(105)-acd57(58)
      acd57(97)=-acd57(96)*acd57(102)
      acd57(98)=acd57(83)*acd57(15)
      acd57(99)=acd57(87)*acd57(19)
      acd57(100)=acd57(85)*acd57(17)
      acd57(101)=acd57(34)*acd57(7)
      acd57(104)=acd57(26)*acd57(4)
      acd57(105)=-acd57(76)*acd57(13)
      acd57(106)=-acd57(10)*acd57(102)
      acd57(98)=acd57(106)+acd57(105)+acd57(104)+acd57(101)+acd57(100)+acd57(98&
      &)+acd57(99)
      acd57(98)=acd57(27)*acd57(98)
      acd57(99)=acd57(56)*acd57(68)
      acd57(100)=acd57(54)*acd57(67)
      acd57(101)=acd57(18)*acd57(66)
      acd57(104)=acd57(16)*acd57(65)
      acd57(105)=acd57(6)*acd57(37)
      acd57(106)=acd57(2)*acd57(30)
      acd57(99)=acd57(101)+acd57(104)+acd57(105)+acd57(106)-acd57(69)+acd57(99)&
      &+acd57(100)
      acd57(100)=acd57(47)*acd57(13)
      acd57(101)=acd57(3)*acd57(64)
      acd57(100)=acd57(101)+acd57(100)+acd57(99)
      acd57(100)=acd57(76)*acd57(100)
      acd57(101)=acd57(14)*acd57(15)
      acd57(104)=acd57(18)*acd57(19)
      acd57(105)=acd57(16)*acd57(17)
      acd57(106)=acd57(6)*acd57(7)
      acd57(107)=acd57(2)*acd57(4)
      acd57(101)=acd57(105)+acd57(106)+acd57(107)-acd57(20)+acd57(101)+acd57(10&
      &4)
      acd57(104)=acd57(1)*acd57(101)
      acd57(105)=-acd57(91)*acd57(74)
      acd57(106)=-acd57(89)*acd57(73)
      acd57(107)=-acd57(83)*acd57(70)
      acd57(108)=-acd57(41)*acd57(44)
      acd57(109)=-acd57(87)*acd57(72)
      acd57(110)=-acd57(85)*acd57(71)
      acd57(111)=-acd57(34)*acd57(38)
      acd57(112)=-acd57(26)*acd57(31)
      acd57(93)=acd57(93)+acd57(98)+acd57(97)+acd57(104)+acd57(112)+acd57(111)+&
      &acd57(110)+acd57(109)+acd57(108)+acd57(107)+acd57(105)+acd57(106)+acd57(&
      &95)+acd57(100)
      acd57(93)=acd57(3)*acd57(93)
      acd57(95)=-acd57(27)*acd57(10)
      acd57(97)=-acd57(12)*acd57(50)
      acd57(98)=acd57(9)*acd57(48)
      acd57(95)=acd57(98)+acd57(97)+acd57(95)-acd57(96)
      acd57(95)=acd57(9)*acd57(95)
      acd57(96)=-acd57(27)+acd57(47)
      acd57(96)=acd57(13)*acd57(96)
      acd57(96)=acd57(96)+acd57(99)
      acd57(96)=acd57(12)*acd57(96)
      acd57(97)=acd57(27)*acd57(101)
      acd57(98)=-acd57(56)*acd57(74)
      acd57(99)=-acd57(54)*acd57(73)
      acd57(100)=-acd57(47)*acd57(44)
      acd57(101)=-acd57(14)*acd57(70)
      acd57(104)=-acd57(18)*acd57(72)
      acd57(105)=-acd57(16)*acd57(71)
      acd57(106)=-acd57(6)*acd57(38)
      acd57(107)=-acd57(2)*acd57(31)
      acd57(95)=acd57(95)+acd57(96)+acd57(97)+acd57(107)+acd57(106)+acd57(105)+&
      &acd57(104)+acd57(101)+acd57(100)+acd57(99)+acd57(75)+acd57(98)
      acd57(95)=acd57(63)*acd57(95)
      acd57(94)=acd57(21)*acd57(94)
      acd57(96)=-acd57(81)*acd57(92)
      acd57(97)=-acd57(83)*acd57(77)
      acd57(98)=-acd57(87)*acd57(79)
      acd57(99)=-acd57(85)*acd57(78)
      acd57(100)=-acd57(34)*acd57(39)
      acd57(101)=-acd57(26)*acd57(32)
      acd57(104)=acd57(59)*acd57(102)
      acd57(94)=acd57(104)+acd57(101)+acd57(100)+acd57(99)+acd57(98)+acd57(96)+&
      &acd57(97)+acd57(94)
      acd57(94)=acd57(12)*acd57(94)
      acd57(96)=acd57(41)*acd57(43)
      acd57(97)=acd57(87)*acd57(61)
      acd57(98)=acd57(85)*acd57(60)
      acd57(99)=acd57(34)*acd57(36)
      acd57(100)=acd57(26)*acd57(29)
      acd57(101)=acd57(1)*acd57(11)
      acd57(104)=acd57(76)*acd57(59)
      acd57(103)=-acd57(49)*acd57(103)
      acd57(96)=acd57(103)+acd57(104)+acd57(101)+acd57(100)+acd57(99)+acd57(98)&
      &+acd57(96)+acd57(97)
      acd57(96)=acd57(9)*acd57(96)
      acd57(97)=-acd57(81)*acd57(80)
      acd57(98)=-acd57(47)*acd57(21)
      acd57(99)=-acd57(14)*acd57(77)
      acd57(100)=-acd57(18)*acd57(79)
      acd57(101)=-acd57(16)*acd57(78)
      acd57(103)=-acd57(6)*acd57(39)
      acd57(104)=-acd57(2)*acd57(32)
      acd57(97)=acd57(104)+acd57(103)+acd57(101)+acd57(100)+acd57(99)+acd57(98)&
      &+acd57(82)+acd57(97)
      acd57(97)=acd57(76)*acd57(97)
      acd57(98)=-acd57(83)*acd57(22)
      acd57(99)=-acd57(87)*acd57(24)
      acd57(100)=-acd57(85)*acd57(23)
      acd57(101)=-acd57(34)*acd57(8)
      acd57(103)=-acd57(26)*acd57(5)
      acd57(104)=acd57(76)*acd57(21)
      acd57(105)=acd57(11)*acd57(102)
      acd57(98)=acd57(105)+acd57(104)+acd57(103)+acd57(101)+acd57(100)+acd57(98&
      &)+acd57(99)
      acd57(98)=acd57(27)*acd57(98)
      acd57(99)=-acd57(14)*acd57(22)
      acd57(100)=-acd57(18)*acd57(24)
      acd57(101)=-acd57(16)*acd57(23)
      acd57(103)=-acd57(6)*acd57(8)
      acd57(104)=-acd57(2)*acd57(5)
      acd57(99)=acd57(104)+acd57(103)+acd57(101)+acd57(100)+acd57(25)+acd57(99)
      acd57(99)=acd57(1)*acd57(99)
      acd57(100)=acd57(47)*acd57(43)
      acd57(101)=acd57(18)*acd57(61)
      acd57(103)=acd57(16)*acd57(60)
      acd57(104)=acd57(6)*acd57(36)
      acd57(105)=acd57(2)*acd57(29)
      acd57(100)=acd57(105)+acd57(104)+acd57(103)+acd57(101)-acd57(62)+acd57(10&
      &0)
      acd57(100)=acd57(100)*acd57(102)
      acd57(101)=acd57(89)*acd57(90)
      acd57(102)=acd57(83)*acd57(84)
      acd57(103)=acd57(41)*acd57(45)
      acd57(104)=acd57(87)*acd57(88)
      acd57(105)=acd57(85)*acd57(86)
      acd57(106)=acd57(34)*acd57(40)
      acd57(107)=acd57(26)*acd57(33)
      brack=acd57(93)+acd57(94)+acd57(95)+acd57(96)+acd57(97)+acd57(98)+acd57(9&
      &9)+acd57(100)+acd57(101)+acd57(102)+acd57(103)+acd57(104)+acd57(105)+acd&
      &57(106)+acd57(107)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(121) :: acd57
      complex(ki) :: brack
      acd57(1)=d(iv1,iv2)
      acd57(2)=dotproduct(k1,qshift)
      acd57(3)=dotproduct(qshift,spvak2k5)
      acd57(4)=abb57(82)
      acd57(5)=abb57(36)
      acd57(6)=dotproduct(k2,qshift)
      acd57(7)=abb57(60)
      acd57(8)=abb57(15)
      acd57(9)=dotproduct(l3,qshift)
      acd57(10)=abb57(49)
      acd57(11)=abb57(20)
      acd57(12)=dotproduct(l4,qshift)
      acd57(13)=abb57(44)
      acd57(14)=abb57(37)
      acd57(15)=dotproduct(qshift,qshift)
      acd57(16)=abb57(77)
      acd57(17)=abb57(21)
      acd57(18)=dotproduct(qshift,spvak1k2)
      acd57(19)=abb57(28)
      acd57(20)=dotproduct(qshift,spvak1k5)
      acd57(21)=abb57(69)
      acd57(22)=dotproduct(qshift,spvak2l3)
      acd57(23)=abb57(48)
      acd57(24)=dotproduct(qshift,spvak2l4)
      acd57(25)=abb57(76)
      acd57(26)=dotproduct(qshift,spval3k5)
      acd57(27)=abb57(71)
      acd57(28)=dotproduct(qshift,spval4k5)
      acd57(29)=abb57(83)
      acd57(30)=abb57(23)
      acd57(31)=abb57(41)
      acd57(32)=abb57(31)
      acd57(33)=abb57(40)
      acd57(34)=abb57(30)
      acd57(35)=k1(iv1)
      acd57(36)=k2(iv2)
      acd57(37)=abb57(85)
      acd57(38)=abb57(65)
      acd57(39)=l3(iv2)
      acd57(40)=abb57(90)
      acd57(41)=abb57(67)
      acd57(42)=qshift(iv2)
      acd57(43)=spvak2k5(iv2)
      acd57(44)=abb57(53)
      acd57(45)=abb57(70)
      acd57(46)=abb57(51)
      acd57(47)=abb57(89)
      acd57(48)=abb57(79)
      acd57(49)=spvak1k2(iv2)
      acd57(50)=abb57(32)
      acd57(51)=spvak1k5(iv2)
      acd57(52)=abb57(64)
      acd57(53)=spvak2l3(iv2)
      acd57(54)=abb57(19)
      acd57(55)=spval3k5(iv2)
      acd57(56)=abb57(73)
      acd57(57)=k1(iv2)
      acd57(58)=k2(iv1)
      acd57(59)=l3(iv1)
      acd57(60)=qshift(iv1)
      acd57(61)=spvak2k5(iv1)
      acd57(62)=spvak1k2(iv1)
      acd57(63)=spvak1k5(iv1)
      acd57(64)=spvak2l3(iv1)
      acd57(65)=spval3k5(iv1)
      acd57(66)=abb57(54)
      acd57(67)=abb57(47)
      acd57(68)=abb57(102)
      acd57(69)=abb57(43)
      acd57(70)=abb57(58)
      acd57(71)=abb57(97)
      acd57(72)=l4(iv1)
      acd57(73)=abb57(80)
      acd57(74)=l4(iv2)
      acd57(75)=spvak2l4(iv2)
      acd57(76)=spval4k5(iv2)
      acd57(77)=spvak2l4(iv1)
      acd57(78)=spval4k5(iv1)
      acd57(79)=abb57(26)
      acd57(80)=abb57(13)
      acd57(81)=abb57(12)
      acd57(82)=abb57(62)
      acd57(83)=abb57(52)
      acd57(84)=abb57(27)
      acd57(85)=abb57(33)
      acd57(86)=abb57(42)
      acd57(87)=abb57(16)
      acd57(88)=abb57(86)
      acd57(89)=abb57(84)
      acd57(90)=abb57(22)
      acd57(91)=abb57(11)
      acd57(92)=abb57(103)
      acd57(93)=spvak2k1(iv2)
      acd57(94)=abb57(17)
      acd57(95)=spvak2k1(iv1)
      acd57(96)=acd57(29)*acd57(28)
      acd57(97)=acd57(25)*acd57(24)
      acd57(98)=acd57(21)*acd57(20)
      acd57(99)=acd57(13)*acd57(12)
      acd57(100)=acd57(26)*acd57(27)
      acd57(101)=acd57(22)*acd57(23)
      acd57(102)=acd57(9)*acd57(10)
      acd57(103)=acd57(6)*acd57(7)
      acd57(104)=acd57(2)*acd57(4)
      acd57(105)=acd57(18)*acd57(19)
      acd57(96)=acd57(102)+acd57(101)+acd57(100)+acd57(99)+acd57(96)+acd57(97)+&
      &acd57(98)+acd57(103)+acd57(104)+acd57(105)-acd57(30)
      acd57(97)=acd57(15)*acd57(16)
      acd57(98)=-acd57(96)+2.0_ki*acd57(97)
      acd57(99)=2.0_ki*acd57(42)
      acd57(100)=-acd57(98)*acd57(99)
      acd57(101)=acd57(29)*acd57(76)
      acd57(102)=acd57(25)*acd57(75)
      acd57(103)=acd57(21)*acd57(51)
      acd57(104)=acd57(13)*acd57(74)
      acd57(105)=acd57(55)*acd57(27)
      acd57(106)=acd57(53)*acd57(23)
      acd57(107)=acd57(39)*acd57(10)
      acd57(108)=acd57(36)*acd57(7)
      acd57(109)=acd57(57)*acd57(4)
      acd57(101)=acd57(101)+acd57(102)+acd57(103)+acd57(104)+acd57(105)+acd57(1&
      &06)+acd57(107)+acd57(108)+acd57(109)
      acd57(102)=acd57(15)*acd57(101)
      acd57(103)=acd57(2)-acd57(12)
      acd57(103)=acd57(103)*acd57(44)
      acd57(104)=acd57(83)*acd57(28)
      acd57(105)=acd57(81)*acd57(24)
      acd57(106)=acd57(26)*acd57(82)
      acd57(107)=acd57(22)*acd57(80)
      acd57(108)=acd57(9)*acd57(69)
      acd57(109)=acd57(6)*acd57(66)
      acd57(110)=acd57(15)*acd57(19)
      acd57(103)=-acd57(109)-acd57(105)-acd57(106)-acd57(107)-acd57(108)+acd57(&
      &103)-acd57(104)+acd57(110)+acd57(84)
      acd57(104)=acd57(49)*acd57(103)
      acd57(105)=acd57(83)*acd57(76)
      acd57(106)=acd57(81)*acd57(75)
      acd57(107)=acd57(55)*acd57(82)
      acd57(108)=acd57(53)*acd57(80)
      acd57(109)=acd57(39)*acd57(69)
      acd57(110)=acd57(36)*acd57(66)
      acd57(105)=acd57(108)+acd57(105)+acd57(109)+acd57(110)+acd57(106)+acd57(1&
      &07)
      acd57(106)=-acd57(44)*acd57(74)
      acd57(106)=acd57(106)-acd57(105)
      acd57(106)=acd57(18)*acd57(106)
      acd57(107)=acd57(45)*acd57(20)
      acd57(108)=acd57(26)*acd57(47)
      acd57(109)=acd57(22)*acd57(46)
      acd57(110)=acd57(9)*acd57(40)
      acd57(111)=acd57(6)*acd57(37)
      acd57(112)=acd57(18)*acd57(44)
      acd57(107)=acd57(107)-acd57(112)-acd57(48)+acd57(108)+acd57(109)+acd57(11&
      &0)+acd57(111)
      acd57(108)=-acd57(57)*acd57(107)
      acd57(109)=acd57(51)*acd57(45)
      acd57(110)=acd57(55)*acd57(47)
      acd57(111)=acd57(53)*acd57(46)
      acd57(112)=acd57(39)*acd57(40)
      acd57(113)=acd57(36)*acd57(37)
      acd57(109)=acd57(109)+acd57(111)+acd57(112)+acd57(110)+acd57(113)
      acd57(110)=-acd57(2)*acd57(109)
      acd57(111)=acd57(76)*acd57(89)
      acd57(112)=acd57(75)*acd57(87)
      acd57(113)=acd57(74)*acd57(73)
      acd57(114)=acd57(51)*acd57(85)
      acd57(115)=acd57(55)*acd57(88)
      acd57(116)=acd57(53)*acd57(86)
      acd57(117)=acd57(39)*acd57(70)
      acd57(118)=acd57(36)*acd57(67)
      acd57(100)=acd57(100)+acd57(104)+acd57(102)+acd57(108)+acd57(106)+acd57(1&
      &10)+acd57(118)+acd57(117)+acd57(116)+acd57(115)+acd57(114)+acd57(113)+ac&
      &d57(111)+acd57(112)
      acd57(100)=acd57(61)*acd57(100)
      acd57(102)=2.0_ki*acd57(60)
      acd57(98)=-acd57(98)*acd57(102)
      acd57(104)=acd57(29)*acd57(78)
      acd57(106)=acd57(25)*acd57(77)
      acd57(108)=acd57(21)*acd57(63)
      acd57(110)=acd57(13)*acd57(72)
      acd57(111)=acd57(65)*acd57(27)
      acd57(112)=acd57(64)*acd57(23)
      acd57(113)=acd57(59)*acd57(10)
      acd57(114)=acd57(58)*acd57(7)
      acd57(115)=acd57(35)*acd57(4)
      acd57(104)=acd57(115)+acd57(111)+acd57(112)+acd57(113)+acd57(114)+acd57(1&
      &04)+acd57(106)+acd57(108)+acd57(110)
      acd57(106)=acd57(15)*acd57(104)
      acd57(103)=acd57(62)*acd57(103)
      acd57(108)=acd57(83)*acd57(78)
      acd57(110)=acd57(81)*acd57(77)
      acd57(111)=acd57(65)*acd57(82)
      acd57(112)=acd57(64)*acd57(80)
      acd57(113)=acd57(59)*acd57(69)
      acd57(114)=acd57(58)*acd57(66)
      acd57(115)=2.0_ki*acd57(79)
      acd57(116)=acd57(115)*acd57(61)
      acd57(108)=acd57(116)+acd57(108)+acd57(110)+acd57(111)+acd57(112)+acd57(1&
      &13)+acd57(114)
      acd57(110)=-acd57(44)*acd57(72)
      acd57(110)=acd57(110)-acd57(108)
      acd57(110)=acd57(18)*acd57(110)
      acd57(107)=-acd57(35)*acd57(107)
      acd57(111)=acd57(63)*acd57(45)
      acd57(112)=acd57(65)*acd57(47)
      acd57(113)=acd57(64)*acd57(46)
      acd57(114)=acd57(59)*acd57(40)
      acd57(116)=acd57(58)*acd57(37)
      acd57(111)=acd57(116)+acd57(111)+acd57(112)+acd57(113)+acd57(114)
      acd57(112)=-acd57(2)*acd57(111)
      acd57(113)=acd57(78)*acd57(89)
      acd57(114)=acd57(77)*acd57(87)
      acd57(116)=acd57(72)*acd57(73)
      acd57(117)=acd57(63)*acd57(85)
      acd57(118)=acd57(65)*acd57(88)
      acd57(119)=acd57(64)*acd57(86)
      acd57(120)=acd57(59)*acd57(70)
      acd57(121)=acd57(58)*acd57(67)
      acd57(98)=acd57(98)+acd57(103)+acd57(106)+acd57(107)+acd57(112)+acd57(121&
      &)+acd57(120)+acd57(119)+acd57(118)+acd57(117)+acd57(116)+acd57(113)+acd5&
      &7(114)+acd57(110)
      acd57(98)=acd57(43)*acd57(98)
      acd57(96)=-4.0_ki*acd57(97)+2.0_ki*acd57(96)
      acd57(96)=acd57(1)*acd57(96)
      acd57(97)=acd57(49)*acd57(19)
      acd57(97)=acd57(97)+acd57(101)
      acd57(97)=acd57(97)*acd57(102)
      acd57(101)=acd57(62)*acd57(19)
      acd57(103)=4.0_ki*acd57(60)
      acd57(106)=-acd57(16)*acd57(103)
      acd57(101)=acd57(106)+acd57(101)+acd57(104)
      acd57(101)=acd57(101)*acd57(99)
      acd57(104)=acd57(35)-acd57(72)
      acd57(106)=acd57(44)*acd57(104)
      acd57(106)=acd57(106)-acd57(108)
      acd57(106)=acd57(49)*acd57(106)
      acd57(107)=acd57(57)-acd57(74)
      acd57(108)=acd57(44)*acd57(107)
      acd57(110)=-acd57(43)*acd57(115)
      acd57(105)=acd57(110)+acd57(108)-acd57(105)
      acd57(105)=acd57(62)*acd57(105)
      acd57(108)=-acd57(57)*acd57(111)
      acd57(109)=-acd57(35)*acd57(109)
      acd57(96)=acd57(101)+acd57(97)+acd57(109)+acd57(108)+acd57(106)+acd57(105&
      &)+acd57(96)
      acd57(96)=acd57(3)*acd57(96)
      acd57(97)=-acd57(72)*acd57(14)
      acd57(101)=-acd57(65)*acd57(33)
      acd57(105)=-acd57(64)*acd57(32)
      acd57(106)=-acd57(59)*acd57(11)
      acd57(108)=-acd57(58)*acd57(8)
      acd57(109)=-acd57(35)*acd57(5)
      acd57(110)=-acd57(62)*acd57(31)
      acd57(103)=acd57(17)*acd57(103)
      acd57(97)=acd57(103)+acd57(110)+acd57(109)+acd57(108)+acd57(106)+acd57(10&
      &5)+acd57(97)+acd57(101)
      acd57(97)=acd57(97)*acd57(99)
      acd57(99)=-acd57(12)*acd57(14)
      acd57(101)=-acd57(26)*acd57(33)
      acd57(103)=-acd57(22)*acd57(32)
      acd57(105)=-acd57(9)*acd57(11)
      acd57(106)=-acd57(6)*acd57(8)
      acd57(108)=-acd57(2)*acd57(5)
      acd57(109)=-acd57(18)*acd57(31)
      acd57(99)=acd57(109)+acd57(108)+acd57(106)+acd57(105)+acd57(103)+acd57(10&
      &1)+acd57(34)+acd57(99)
      acd57(101)=4.0_ki*acd57(17)
      acd57(101)=acd57(15)*acd57(101)
      acd57(99)=acd57(101)+2.0_ki*acd57(99)
      acd57(99)=acd57(1)*acd57(99)
      acd57(101)=-acd57(50)*acd57(107)
      acd57(103)=acd57(94)*acd57(93)
      acd57(105)=acd57(51)*acd57(90)
      acd57(106)=acd57(55)*acd57(92)
      acd57(107)=acd57(53)*acd57(91)
      acd57(108)=acd57(39)*acd57(71)
      acd57(109)=acd57(36)*acd57(68)
      acd57(101)=acd57(109)+acd57(108)+acd57(107)+acd57(106)+acd57(105)+acd57(1&
      &03)+acd57(101)
      acd57(101)=acd57(62)*acd57(101)
      acd57(103)=-acd57(50)*acd57(104)
      acd57(104)=acd57(94)*acd57(95)
      acd57(105)=acd57(63)*acd57(90)
      acd57(106)=acd57(65)*acd57(92)
      acd57(107)=acd57(64)*acd57(91)
      acd57(108)=acd57(59)*acd57(71)
      acd57(109)=acd57(58)*acd57(68)
      acd57(103)=acd57(109)+acd57(108)+acd57(107)+acd57(106)+acd57(105)+acd57(1&
      &04)+acd57(103)
      acd57(103)=acd57(49)*acd57(103)
      acd57(104)=-acd57(74)*acd57(14)
      acd57(105)=-acd57(55)*acd57(33)
      acd57(106)=-acd57(53)*acd57(32)
      acd57(107)=-acd57(39)*acd57(11)
      acd57(108)=-acd57(36)*acd57(8)
      acd57(109)=-acd57(57)*acd57(5)
      acd57(110)=-acd57(49)*acd57(31)
      acd57(104)=acd57(110)+acd57(109)+acd57(108)+acd57(107)+acd57(106)+acd57(1&
      &04)+acd57(105)
      acd57(102)=acd57(104)*acd57(102)
      acd57(104)=acd57(63)*acd57(52)
      acd57(105)=acd57(65)*acd57(56)
      acd57(106)=acd57(64)*acd57(54)
      acd57(107)=acd57(59)*acd57(41)
      acd57(108)=acd57(58)*acd57(38)
      acd57(104)=acd57(108)+acd57(107)+acd57(106)+acd57(104)+acd57(105)
      acd57(104)=acd57(57)*acd57(104)
      acd57(105)=acd57(51)*acd57(52)
      acd57(106)=acd57(55)*acd57(56)
      acd57(107)=acd57(53)*acd57(54)
      acd57(108)=acd57(39)*acd57(41)
      acd57(109)=acd57(36)*acd57(38)
      acd57(105)=acd57(109)+acd57(108)+acd57(107)+acd57(105)+acd57(106)
      acd57(105)=acd57(35)*acd57(105)
      brack=acd57(96)+acd57(97)+acd57(98)+acd57(99)+acd57(100)+acd57(101)+acd57&
      &(102)+acd57(103)+acd57(104)+acd57(105)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(105) :: acd57
      complex(ki) :: brack
      acd57(1)=d(iv1,iv2)
      acd57(2)=k1(iv3)
      acd57(3)=dotproduct(qshift,spvak2k5)
      acd57(4)=abb57(82)
      acd57(5)=abb57(36)
      acd57(6)=k2(iv3)
      acd57(7)=abb57(60)
      acd57(8)=abb57(15)
      acd57(9)=l3(iv3)
      acd57(10)=abb57(49)
      acd57(11)=abb57(20)
      acd57(12)=l4(iv3)
      acd57(13)=abb57(44)
      acd57(14)=abb57(37)
      acd57(15)=qshift(iv3)
      acd57(16)=abb57(77)
      acd57(17)=abb57(21)
      acd57(18)=spvak2k5(iv3)
      acd57(19)=dotproduct(k1,qshift)
      acd57(20)=dotproduct(k2,qshift)
      acd57(21)=dotproduct(l3,qshift)
      acd57(22)=dotproduct(l4,qshift)
      acd57(23)=dotproduct(qshift,qshift)
      acd57(24)=dotproduct(qshift,spvak1k2)
      acd57(25)=abb57(28)
      acd57(26)=dotproduct(qshift,spvak1k5)
      acd57(27)=abb57(69)
      acd57(28)=dotproduct(qshift,spvak2l3)
      acd57(29)=abb57(48)
      acd57(30)=dotproduct(qshift,spvak2l4)
      acd57(31)=abb57(76)
      acd57(32)=dotproduct(qshift,spval3k5)
      acd57(33)=abb57(71)
      acd57(34)=dotproduct(qshift,spval4k5)
      acd57(35)=abb57(83)
      acd57(36)=abb57(23)
      acd57(37)=spvak1k2(iv3)
      acd57(38)=abb57(41)
      acd57(39)=spvak1k5(iv3)
      acd57(40)=spvak2l3(iv3)
      acd57(41)=abb57(31)
      acd57(42)=spvak2l4(iv3)
      acd57(43)=spval3k5(iv3)
      acd57(44)=abb57(40)
      acd57(45)=spval4k5(iv3)
      acd57(46)=d(iv1,iv3)
      acd57(47)=k1(iv2)
      acd57(48)=k2(iv2)
      acd57(49)=l3(iv2)
      acd57(50)=l4(iv2)
      acd57(51)=qshift(iv2)
      acd57(52)=spvak2k5(iv2)
      acd57(53)=spvak1k2(iv2)
      acd57(54)=spvak1k5(iv2)
      acd57(55)=spvak2l3(iv2)
      acd57(56)=spvak2l4(iv2)
      acd57(57)=spval3k5(iv2)
      acd57(58)=spval4k5(iv2)
      acd57(59)=d(iv2,iv3)
      acd57(60)=k1(iv1)
      acd57(61)=k2(iv1)
      acd57(62)=l3(iv1)
      acd57(63)=l4(iv1)
      acd57(64)=qshift(iv1)
      acd57(65)=spvak2k5(iv1)
      acd57(66)=spvak1k2(iv1)
      acd57(67)=spvak1k5(iv1)
      acd57(68)=spvak2l3(iv1)
      acd57(69)=spvak2l4(iv1)
      acd57(70)=spval3k5(iv1)
      acd57(71)=spval4k5(iv1)
      acd57(72)=abb57(85)
      acd57(73)=abb57(90)
      acd57(74)=abb57(53)
      acd57(75)=abb57(70)
      acd57(76)=abb57(51)
      acd57(77)=abb57(89)
      acd57(78)=abb57(54)
      acd57(79)=abb57(43)
      acd57(80)=abb57(26)
      acd57(81)=abb57(13)
      acd57(82)=abb57(12)
      acd57(83)=abb57(62)
      acd57(84)=abb57(52)
      acd57(85)=acd57(35)*acd57(71)
      acd57(86)=acd57(33)*acd57(70)
      acd57(87)=acd57(31)*acd57(69)
      acd57(88)=acd57(29)*acd57(68)
      acd57(89)=acd57(27)*acd57(67)
      acd57(90)=acd57(13)*acd57(63)
      acd57(91)=acd57(10)*acd57(62)
      acd57(92)=acd57(7)*acd57(61)
      acd57(93)=4.0_ki*acd57(16)
      acd57(94)=acd57(93)*acd57(64)
      acd57(95)=acd57(60)*acd57(4)
      acd57(96)=acd57(66)*acd57(25)
      acd57(85)=acd57(96)+acd57(95)-acd57(94)+acd57(92)+acd57(91)+acd57(90)+acd&
      &57(89)+acd57(88)+acd57(87)+acd57(85)+acd57(86)
      acd57(86)=-acd57(59)*acd57(85)
      acd57(87)=acd57(35)*acd57(58)
      acd57(88)=acd57(33)*acd57(57)
      acd57(89)=acd57(31)*acd57(56)
      acd57(90)=acd57(29)*acd57(55)
      acd57(91)=acd57(27)*acd57(54)
      acd57(92)=acd57(13)*acd57(50)
      acd57(94)=acd57(10)*acd57(49)
      acd57(95)=acd57(7)*acd57(48)
      acd57(96)=acd57(47)*acd57(4)
      acd57(97)=acd57(53)*acd57(25)
      acd57(87)=acd57(97)+acd57(96)+acd57(95)+acd57(94)+acd57(92)+acd57(91)+acd&
      &57(90)+acd57(89)+acd57(87)+acd57(88)
      acd57(88)=acd57(93)*acd57(51)
      acd57(88)=acd57(88)-acd57(87)
      acd57(89)=acd57(46)*acd57(88)
      acd57(90)=acd57(35)*acd57(45)
      acd57(91)=acd57(33)*acd57(43)
      acd57(92)=acd57(31)*acd57(42)
      acd57(94)=acd57(29)*acd57(40)
      acd57(95)=acd57(27)*acd57(39)
      acd57(96)=acd57(13)*acd57(12)
      acd57(97)=acd57(10)*acd57(9)
      acd57(98)=acd57(7)*acd57(6)
      acd57(99)=acd57(2)*acd57(4)
      acd57(100)=acd57(37)*acd57(25)
      acd57(90)=acd57(100)+acd57(97)+acd57(96)+acd57(95)+acd57(94)+acd57(92)+ac&
      &d57(90)+acd57(91)+acd57(98)+acd57(99)
      acd57(91)=acd57(15)*acd57(93)
      acd57(91)=acd57(91)-acd57(90)
      acd57(91)=acd57(1)*acd57(91)
      acd57(86)=acd57(91)+acd57(86)+acd57(89)
      acd57(86)=acd57(3)*acd57(86)
      acd57(89)=acd57(63)*acd57(14)
      acd57(91)=acd57(70)*acd57(44)
      acd57(92)=acd57(68)*acd57(41)
      acd57(93)=acd57(62)*acd57(11)
      acd57(94)=acd57(61)*acd57(8)
      acd57(95)=acd57(60)*acd57(5)
      acd57(96)=acd57(66)*acd57(38)
      acd57(97)=4.0_ki*acd57(64)
      acd57(97)=-acd57(17)*acd57(97)
      acd57(89)=acd57(97)+acd57(96)+acd57(95)+acd57(94)+acd57(93)+acd57(92)+acd&
      &57(89)+acd57(91)
      acd57(89)=acd57(59)*acd57(89)
      acd57(91)=acd57(50)*acd57(14)
      acd57(92)=acd57(57)*acd57(44)
      acd57(93)=acd57(55)*acd57(41)
      acd57(94)=acd57(49)*acd57(11)
      acd57(95)=acd57(48)*acd57(8)
      acd57(96)=acd57(47)*acd57(5)
      acd57(97)=acd57(53)*acd57(38)
      acd57(98)=4.0_ki*acd57(17)
      acd57(99)=-acd57(51)*acd57(98)
      acd57(91)=acd57(99)+acd57(97)+acd57(96)+acd57(95)+acd57(94)+acd57(93)+acd&
      &57(91)+acd57(92)
      acd57(91)=acd57(46)*acd57(91)
      acd57(92)=acd57(12)*acd57(14)
      acd57(93)=acd57(43)*acd57(44)
      acd57(94)=acd57(40)*acd57(41)
      acd57(95)=acd57(9)*acd57(11)
      acd57(96)=acd57(6)*acd57(8)
      acd57(97)=acd57(2)*acd57(5)
      acd57(99)=acd57(37)*acd57(38)
      acd57(98)=-acd57(15)*acd57(98)
      acd57(92)=acd57(98)+acd57(99)+acd57(97)+acd57(96)+acd57(95)+acd57(94)+acd&
      &57(92)+acd57(93)
      acd57(92)=acd57(1)*acd57(92)
      acd57(86)=acd57(86)+acd57(92)+acd57(89)+acd57(91)
      acd57(89)=acd57(16)*acd57(23)
      acd57(91)=acd57(35)*acd57(34)
      acd57(92)=acd57(33)*acd57(32)
      acd57(93)=acd57(31)*acd57(30)
      acd57(94)=acd57(29)*acd57(28)
      acd57(95)=acd57(27)*acd57(26)
      acd57(96)=acd57(25)*acd57(24)
      acd57(97)=acd57(13)*acd57(22)
      acd57(98)=acd57(10)*acd57(21)
      acd57(99)=acd57(7)*acd57(20)
      acd57(100)=acd57(4)*acd57(19)
      acd57(89)=-acd57(36)+acd57(100)+acd57(99)+acd57(98)+acd57(97)+acd57(96)+a&
      &cd57(95)+acd57(94)-2.0_ki*acd57(89)+acd57(91)+acd57(92)+acd57(93)
      acd57(89)=2.0_ki*acd57(89)
      acd57(91)=-acd57(59)*acd57(89)
      acd57(90)=2.0_ki*acd57(90)
      acd57(92)=-acd57(51)*acd57(90)
      acd57(93)=2.0_ki*acd57(15)
      acd57(88)=acd57(88)*acd57(93)
      acd57(93)=acd57(12)-acd57(2)
      acd57(93)=acd57(74)*acd57(93)
      acd57(94)=acd57(84)*acd57(45)
      acd57(95)=acd57(82)*acd57(42)
      acd57(96)=acd57(43)*acd57(83)
      acd57(97)=acd57(40)*acd57(81)
      acd57(98)=acd57(9)*acd57(79)
      acd57(99)=acd57(6)*acd57(78)
      acd57(93)=acd57(95)+acd57(93)+acd57(98)+acd57(99)+acd57(94)+acd57(96)+acd&
      &57(97)
      acd57(94)=acd57(53)*acd57(93)
      acd57(95)=acd57(50)-acd57(47)
      acd57(95)=acd57(74)*acd57(95)
      acd57(96)=acd57(84)*acd57(58)
      acd57(97)=acd57(82)*acd57(56)
      acd57(98)=acd57(57)*acd57(83)
      acd57(99)=acd57(55)*acd57(81)
      acd57(100)=acd57(49)*acd57(79)
      acd57(101)=acd57(48)*acd57(78)
      acd57(95)=acd57(97)+acd57(98)+acd57(99)+acd57(100)+acd57(101)+acd57(95)+a&
      &cd57(96)
      acd57(96)=acd57(37)*acd57(95)
      acd57(97)=acd57(75)*acd57(39)
      acd57(98)=acd57(43)*acd57(77)
      acd57(99)=acd57(40)*acd57(76)
      acd57(100)=acd57(9)*acd57(73)
      acd57(101)=acd57(6)*acd57(72)
      acd57(97)=acd57(97)+acd57(98)+acd57(99)+acd57(100)+acd57(101)
      acd57(98)=acd57(47)*acd57(97)
      acd57(99)=acd57(75)*acd57(54)
      acd57(100)=acd57(57)*acd57(77)
      acd57(101)=acd57(55)*acd57(76)
      acd57(102)=acd57(49)*acd57(73)
      acd57(103)=acd57(48)*acd57(72)
      acd57(99)=acd57(103)+acd57(99)+acd57(100)+acd57(101)+acd57(102)
      acd57(100)=acd57(2)*acd57(99)
      acd57(88)=acd57(91)+acd57(88)+acd57(92)+acd57(96)+acd57(94)+acd57(98)+acd&
      &57(100)
      acd57(88)=acd57(65)*acd57(88)
      acd57(85)=2.0_ki*acd57(85)
      acd57(91)=-acd57(15)*acd57(85)
      acd57(92)=-acd57(46)*acd57(89)
      acd57(90)=-acd57(64)*acd57(90)
      acd57(94)=acd57(63)-acd57(60)
      acd57(94)=acd57(74)*acd57(94)
      acd57(96)=acd57(84)*acd57(71)
      acd57(98)=acd57(82)*acd57(69)
      acd57(100)=acd57(70)*acd57(83)
      acd57(101)=acd57(68)*acd57(81)
      acd57(102)=acd57(62)*acd57(79)
      acd57(103)=acd57(61)*acd57(78)
      acd57(104)=2.0_ki*acd57(80)
      acd57(105)=acd57(104)*acd57(65)
      acd57(94)=acd57(105)+acd57(98)+acd57(100)+acd57(101)+acd57(102)+acd57(103&
      &)+acd57(94)+acd57(96)
      acd57(96)=acd57(37)*acd57(94)
      acd57(93)=acd57(66)*acd57(93)
      acd57(97)=acd57(60)*acd57(97)
      acd57(98)=acd57(75)*acd57(67)
      acd57(100)=acd57(70)*acd57(77)
      acd57(101)=acd57(68)*acd57(76)
      acd57(102)=acd57(62)*acd57(73)
      acd57(103)=acd57(61)*acd57(72)
      acd57(98)=acd57(103)+acd57(98)+acd57(100)+acd57(101)+acd57(102)
      acd57(100)=acd57(2)*acd57(98)
      acd57(90)=acd57(92)+acd57(91)+acd57(90)+acd57(93)+acd57(97)+acd57(100)+ac&
      &d57(96)
      acd57(90)=acd57(52)*acd57(90)
      acd57(85)=-acd57(51)*acd57(85)
      acd57(89)=-acd57(1)*acd57(89)
      acd57(91)=2.0_ki*acd57(64)
      acd57(87)=-acd57(87)*acd57(91)
      acd57(91)=acd57(53)*acd57(94)
      acd57(92)=acd57(52)*acd57(104)
      acd57(92)=acd57(92)+acd57(95)
      acd57(92)=acd57(66)*acd57(92)
      acd57(93)=acd57(60)*acd57(99)
      acd57(94)=acd57(47)*acd57(98)
      acd57(85)=acd57(89)+acd57(85)+acd57(87)+acd57(93)+acd57(94)+acd57(91)+acd&
      &57(92)
      acd57(85)=acd57(18)*acd57(85)
      brack=acd57(85)+2.0_ki*acd57(86)+acd57(88)+acd57(90)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd57
      complex(ki) :: brack
      acd57(1)=d(iv1,iv2)
      acd57(2)=d(iv3,iv4)
      acd57(3)=dotproduct(qshift,spvak2k5)
      acd57(4)=abb57(77)
      acd57(5)=abb57(21)
      acd57(6)=k1(iv3)
      acd57(7)=spvak2k5(iv4)
      acd57(8)=abb57(82)
      acd57(9)=k1(iv4)
      acd57(10)=spvak2k5(iv3)
      acd57(11)=k2(iv3)
      acd57(12)=abb57(60)
      acd57(13)=k2(iv4)
      acd57(14)=l3(iv3)
      acd57(15)=abb57(49)
      acd57(16)=l3(iv4)
      acd57(17)=l4(iv3)
      acd57(18)=abb57(44)
      acd57(19)=l4(iv4)
      acd57(20)=qshift(iv3)
      acd57(21)=qshift(iv4)
      acd57(22)=spvak1k2(iv4)
      acd57(23)=abb57(28)
      acd57(24)=spvak1k5(iv4)
      acd57(25)=abb57(69)
      acd57(26)=spvak2l3(iv4)
      acd57(27)=abb57(48)
      acd57(28)=spvak2l4(iv4)
      acd57(29)=abb57(76)
      acd57(30)=spval3k5(iv4)
      acd57(31)=abb57(71)
      acd57(32)=spval4k5(iv4)
      acd57(33)=abb57(83)
      acd57(34)=spvak1k2(iv3)
      acd57(35)=spvak1k5(iv3)
      acd57(36)=spvak2l3(iv3)
      acd57(37)=spvak2l4(iv3)
      acd57(38)=spval3k5(iv3)
      acd57(39)=spval4k5(iv3)
      acd57(40)=d(iv1,iv3)
      acd57(41)=d(iv2,iv4)
      acd57(42)=k1(iv2)
      acd57(43)=spvak2k5(iv2)
      acd57(44)=k2(iv2)
      acd57(45)=l3(iv2)
      acd57(46)=l4(iv2)
      acd57(47)=qshift(iv2)
      acd57(48)=spvak1k2(iv2)
      acd57(49)=spvak1k5(iv2)
      acd57(50)=spvak2l3(iv2)
      acd57(51)=spvak2l4(iv2)
      acd57(52)=spval3k5(iv2)
      acd57(53)=spval4k5(iv2)
      acd57(54)=d(iv1,iv4)
      acd57(55)=d(iv2,iv3)
      acd57(56)=k1(iv1)
      acd57(57)=spvak2k5(iv1)
      acd57(58)=k2(iv1)
      acd57(59)=l3(iv1)
      acd57(60)=l4(iv1)
      acd57(61)=qshift(iv1)
      acd57(62)=spvak1k2(iv1)
      acd57(63)=spvak1k5(iv1)
      acd57(64)=spvak2l3(iv1)
      acd57(65)=spvak2l4(iv1)
      acd57(66)=spval3k5(iv1)
      acd57(67)=spval4k5(iv1)
      acd57(68)=acd57(6)*acd57(8)
      acd57(69)=acd57(11)*acd57(12)
      acd57(70)=acd57(14)*acd57(15)
      acd57(71)=acd57(17)*acd57(18)
      acd57(72)=4.0_ki*acd57(4)
      acd57(73)=-acd57(20)*acd57(72)
      acd57(74)=acd57(34)*acd57(23)
      acd57(75)=acd57(35)*acd57(25)
      acd57(76)=acd57(36)*acd57(27)
      acd57(77)=acd57(37)*acd57(29)
      acd57(78)=acd57(38)*acd57(31)
      acd57(79)=acd57(39)*acd57(33)
      acd57(68)=acd57(79)+acd57(78)+acd57(77)+acd57(76)+acd57(75)+acd57(74)+acd&
      &57(73)+acd57(71)+acd57(70)+acd57(69)+acd57(68)
      acd57(69)=acd57(1)*acd57(7)
      acd57(70)=acd57(41)*acd57(57)
      acd57(71)=acd57(54)*acd57(43)
      acd57(69)=acd57(69)+acd57(70)+acd57(71)
      acd57(68)=acd57(69)*acd57(68)
      acd57(69)=acd57(9)*acd57(8)
      acd57(70)=acd57(13)*acd57(12)
      acd57(71)=acd57(16)*acd57(15)
      acd57(73)=acd57(19)*acd57(18)
      acd57(74)=-acd57(21)*acd57(72)
      acd57(75)=acd57(22)*acd57(23)
      acd57(76)=acd57(24)*acd57(25)
      acd57(77)=acd57(26)*acd57(27)
      acd57(78)=acd57(28)*acd57(29)
      acd57(79)=acd57(30)*acd57(31)
      acd57(80)=acd57(32)*acd57(33)
      acd57(69)=acd57(80)+acd57(79)+acd57(78)+acd57(77)+acd57(76)+acd57(75)+acd&
      &57(74)+acd57(73)+acd57(71)+acd57(70)+acd57(69)
      acd57(70)=acd57(1)*acd57(10)
      acd57(71)=acd57(40)*acd57(43)
      acd57(73)=acd57(55)*acd57(57)
      acd57(70)=acd57(70)+acd57(71)+acd57(73)
      acd57(69)=acd57(70)*acd57(69)
      acd57(70)=acd57(42)*acd57(8)
      acd57(71)=acd57(44)*acd57(12)
      acd57(73)=acd57(45)*acd57(15)
      acd57(74)=acd57(46)*acd57(18)
      acd57(75)=-acd57(47)*acd57(72)
      acd57(76)=acd57(48)*acd57(23)
      acd57(77)=acd57(49)*acd57(25)
      acd57(78)=acd57(50)*acd57(27)
      acd57(79)=acd57(51)*acd57(29)
      acd57(80)=acd57(52)*acd57(31)
      acd57(81)=acd57(53)*acd57(33)
      acd57(70)=acd57(81)+acd57(80)+acd57(79)+acd57(78)+acd57(77)+acd57(76)+acd&
      &57(75)+acd57(74)+acd57(73)+acd57(71)+acd57(70)
      acd57(71)=acd57(2)*acd57(57)
      acd57(73)=acd57(40)*acd57(7)
      acd57(74)=acd57(54)*acd57(10)
      acd57(71)=acd57(74)+acd57(71)+acd57(73)
      acd57(70)=acd57(71)*acd57(70)
      acd57(71)=acd57(56)*acd57(8)
      acd57(73)=acd57(58)*acd57(12)
      acd57(74)=acd57(59)*acd57(15)
      acd57(75)=acd57(60)*acd57(18)
      acd57(72)=-acd57(61)*acd57(72)
      acd57(76)=acd57(62)*acd57(23)
      acd57(77)=acd57(63)*acd57(25)
      acd57(78)=acd57(64)*acd57(27)
      acd57(79)=acd57(65)*acd57(29)
      acd57(80)=acd57(66)*acd57(31)
      acd57(81)=acd57(67)*acd57(33)
      acd57(71)=acd57(81)+acd57(80)+acd57(79)+acd57(78)+acd57(77)+acd57(76)+acd&
      &57(72)+acd57(75)+acd57(74)+acd57(73)+acd57(71)
      acd57(72)=acd57(2)*acd57(43)
      acd57(73)=acd57(41)*acd57(10)
      acd57(74)=acd57(55)*acd57(7)
      acd57(72)=acd57(74)+acd57(72)+acd57(73)
      acd57(71)=acd57(72)*acd57(71)
      acd57(72)=acd57(2)*acd57(1)
      acd57(73)=acd57(41)*acd57(40)
      acd57(74)=acd57(55)*acd57(54)
      acd57(72)=acd57(74)+acd57(72)+acd57(73)
      acd57(73)=-acd57(3)*acd57(4)
      acd57(73)=acd57(73)+acd57(5)
      acd57(72)=acd57(72)*acd57(73)
      acd57(68)=4.0_ki*acd57(72)+acd57(71)+acd57(70)+acd57(69)+acd57(68)
      brack=2.0_ki*acd57(68)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd57
      complex(ki) :: brack
      acd57(1)=d(iv1,iv2)
      acd57(2)=d(iv3,iv4)
      acd57(3)=spvak2k5(iv5)
      acd57(4)=abb57(77)
      acd57(5)=d(iv3,iv5)
      acd57(6)=spvak2k5(iv4)
      acd57(7)=d(iv4,iv5)
      acd57(8)=spvak2k5(iv3)
      acd57(9)=d(iv1,iv3)
      acd57(10)=d(iv2,iv4)
      acd57(11)=d(iv2,iv5)
      acd57(12)=spvak2k5(iv2)
      acd57(13)=d(iv1,iv4)
      acd57(14)=d(iv2,iv3)
      acd57(15)=d(iv1,iv5)
      acd57(16)=spvak2k5(iv1)
      acd57(17)=acd57(7)*acd57(8)
      acd57(18)=acd57(5)*acd57(6)
      acd57(19)=acd57(2)*acd57(3)
      acd57(17)=acd57(19)+acd57(17)+acd57(18)
      acd57(17)=acd57(1)*acd57(17)
      acd57(18)=acd57(11)*acd57(13)
      acd57(19)=acd57(10)*acd57(15)
      acd57(18)=acd57(18)+acd57(19)
      acd57(18)=acd57(8)*acd57(18)
      acd57(19)=acd57(14)*acd57(16)
      acd57(20)=acd57(9)*acd57(12)
      acd57(19)=acd57(19)+acd57(20)
      acd57(19)=acd57(7)*acd57(19)
      acd57(20)=acd57(14)*acd57(15)
      acd57(21)=acd57(9)*acd57(11)
      acd57(20)=acd57(20)+acd57(21)
      acd57(20)=acd57(6)*acd57(20)
      acd57(21)=acd57(12)*acd57(13)
      acd57(22)=acd57(10)*acd57(16)
      acd57(21)=acd57(21)+acd57(22)
      acd57(21)=acd57(5)*acd57(21)
      acd57(22)=acd57(13)*acd57(14)
      acd57(23)=acd57(9)*acd57(10)
      acd57(22)=acd57(22)+acd57(23)
      acd57(22)=acd57(3)*acd57(22)
      acd57(23)=acd57(12)*acd57(15)
      acd57(24)=acd57(11)*acd57(16)
      acd57(23)=acd57(23)+acd57(24)
      acd57(23)=acd57(2)*acd57(23)
      acd57(17)=acd57(17)+acd57(23)+acd57(22)+acd57(21)+acd57(20)+acd57(18)+acd&
      &57(19)
      brack=8.0_ki*acd57(17)*acd57(4)
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd57h0
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
      qshift = -k3+k2-k5
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
!---#[ subroutine reconstruct_d57:
   subroutine     reconstruct_d57(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group7
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group7), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_57:
      coeffs%coeffs_57%c0 = derivative(czip)
      coeffs%coeffs_57%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_57%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_57%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_57%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_57%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_57%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_57%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_57%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_57%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_57%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_57%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_57%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_57%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_57%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_57%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_57%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_57%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_57%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_57%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_57%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_57%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_57%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_57%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_57%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_57%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_57%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_57%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_57%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_57%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_57%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_57%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_57%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_57%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_57%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_57%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_57%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_57%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_57%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_57%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_57%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_57%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_57%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_57%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_57%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_57%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_57%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_57%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_57%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_57%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_57%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_57%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_57%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_57%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_57%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_57%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_57%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_57%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_57%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_57%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_57%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_57%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_57%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_57%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_57%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_57%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_57%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_57%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_57%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_57%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_57%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_57%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_57%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_57%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_57%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_57%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_57%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_57%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_57%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_57%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_57%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_57%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_57%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_57%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_57%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_57%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_57%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_57%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_57%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_57%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_57%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_57%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_57%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_57%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_57%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_57%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_57%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_57%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_57%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_57%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_57%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_57%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_57%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_57%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_57%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_57%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_57%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_57%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_57%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_57%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_57%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_57%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_57%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_57%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_57%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_57%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_57%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_57%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_57%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_57%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_57%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_57%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_57%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_57%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_57%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_57%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_57:
   end subroutine reconstruct_d57
!---#] subroutine reconstruct_d57:
end module     p0_gg_hhg_d57h0l1d
