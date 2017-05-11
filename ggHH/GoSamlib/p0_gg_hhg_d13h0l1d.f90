module     p0_gg_hhg_d13h0l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d13h0l1d.f90
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
   public :: derivative , reconstruct_d13
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd13
      complex(ki) :: brack
      acd13(1)=dotproduct(k1,qshift)
      acd13(2)=dotproduct(qshift,qshift)
      acd13(3)=dotproduct(qshift,spvak2k5)
      acd13(4)=abb13(67)
      acd13(5)=abb13(61)
      acd13(6)=dotproduct(k2,qshift)
      acd13(7)=abb13(60)
      acd13(8)=dotproduct(l3,qshift)
      acd13(9)=abb13(54)
      acd13(10)=dotproduct(l4,qshift)
      acd13(11)=abb13(33)
      acd13(12)=abb13(21)
      acd13(13)=abb13(38)
      acd13(14)=dotproduct(qshift,spvak1l4)
      acd13(15)=abb13(32)
      acd13(16)=dotproduct(qshift,spvak1k5)
      acd13(17)=abb13(78)
      acd13(18)=dotproduct(qshift,spvak2k1)
      acd13(19)=abb13(40)
      acd13(20)=dotproduct(qshift,spvak2l4)
      acd13(21)=abb13(76)
      acd13(22)=dotproduct(qshift,spval4k1)
      acd13(23)=abb13(62)
      acd13(24)=dotproduct(qshift,spval4k2)
      acd13(25)=abb13(52)
      acd13(26)=abb13(13)
      acd13(27)=abb13(56)
      acd13(28)=abb13(43)
      acd13(29)=abb13(46)
      acd13(30)=abb13(72)
      acd13(31)=abb13(36)
      acd13(32)=abb13(74)
      acd13(33)=abb13(57)
      acd13(34)=abb13(51)
      acd13(35)=abb13(45)
      acd13(36)=abb13(27)
      acd13(37)=abb13(17)
      acd13(38)=abb13(42)
      acd13(39)=dotproduct(k5,qshift)
      acd13(40)=abb13(71)
      acd13(41)=dotproduct(qshift,spvak1k2)
      acd13(42)=abb13(24)
      acd13(43)=abb13(55)
      acd13(44)=abb13(25)
      acd13(45)=abb13(15)
      acd13(46)=abb13(50)
      acd13(47)=abb13(58)
      acd13(48)=abb13(47)
      acd13(49)=abb13(41)
      acd13(50)=dotproduct(qshift,spvak1l3)
      acd13(51)=abb13(39)
      acd13(52)=dotproduct(qshift,spvak2l3)
      acd13(53)=abb13(89)
      acd13(54)=dotproduct(qshift,spval3k1)
      acd13(55)=abb13(28)
      acd13(56)=dotproduct(qshift,spval3k2)
      acd13(57)=abb13(44)
      acd13(58)=abb13(20)
      acd13(59)=abb13(81)
      acd13(60)=abb13(64)
      acd13(61)=abb13(79)
      acd13(62)=abb13(16)
      acd13(63)=abb13(31)
      acd13(64)=abb13(23)
      acd13(65)=abb13(12)
      acd13(66)=abb13(98)
      acd13(67)=abb13(68)
      acd13(68)=abb13(30)
      acd13(69)=abb13(22)
      acd13(70)=abb13(26)
      acd13(71)=abb13(11)
      acd13(72)=abb13(59)
      acd13(73)=abb13(73)
      acd13(74)=abb13(53)
      acd13(75)=abb13(34)
      acd13(76)=abb13(14)
      acd13(77)=abb13(19)
      acd13(78)=abb13(82)
      acd13(79)=abb13(66)
      acd13(80)=abb13(69)
      acd13(81)=abb13(48)
      acd13(82)=acd13(1)*acd13(5)
      acd13(83)=acd13(56)*acd13(68)
      acd13(84)=acd13(54)*acd13(67)
      acd13(85)=acd13(52)*acd13(66)
      acd13(86)=acd13(50)*acd13(65)
      acd13(87)=acd13(41)*acd13(64)
      acd13(88)=acd13(24)*acd13(63)
      acd13(89)=acd13(22)*acd13(62)
      acd13(90)=acd13(20)*acd13(61)
      acd13(91)=acd13(18)*acd13(60)
      acd13(92)=acd13(14)*acd13(59)
      acd13(93)=acd13(10)*acd13(37)
      acd13(94)=acd13(8)*acd13(28)
      acd13(95)=acd13(6)*acd13(13)
      acd13(82)=acd13(95)+acd13(94)+acd13(93)+acd13(92)+acd13(91)+acd13(90)+acd&
      &13(89)+acd13(88)+acd13(87)+acd13(86)+acd13(85)+acd13(84)+acd13(83)-acd13&
      &(69)+acd13(82)
      acd13(82)=acd13(3)*acd13(82)
      acd13(83)=-acd13(6)+acd13(1)
      acd13(83)=acd13(4)*acd13(83)
      acd13(84)=acd13(41)*acd13(42)
      acd13(83)=acd13(84)-acd13(43)+acd13(83)
      acd13(83)=acd13(3)*acd13(83)
      acd13(84)=-acd13(2)-acd13(10)+acd13(39)
      acd13(84)=acd13(36)*acd13(84)
      acd13(85)=-acd13(56)*acd13(57)
      acd13(86)=-acd13(54)*acd13(55)
      acd13(87)=-acd13(52)*acd13(53)
      acd13(88)=-acd13(50)*acd13(51)
      acd13(89)=-acd13(16)*acd13(45)
      acd13(90)=acd13(24)*acd13(49)
      acd13(91)=-acd13(22)*acd13(48)
      acd13(92)=acd13(20)*acd13(47)
      acd13(93)=-acd13(18)*acd13(46)
      acd13(94)=acd13(14)*acd13(44)
      acd13(95)=acd13(8)*acd13(27)
      acd13(96)=-acd13(6)*acd13(12)
      acd13(83)=acd13(83)+acd13(96)+acd13(95)+acd13(94)+acd13(93)+acd13(92)+acd&
      &13(91)+acd13(90)+acd13(89)+acd13(88)+acd13(87)+acd13(86)+acd13(58)+acd13&
      &(85)+acd13(84)
      acd13(83)=acd13(2)*acd13(83)
      acd13(84)=acd13(16)*acd13(17)
      acd13(85)=acd13(24)*acd13(25)
      acd13(86)=acd13(22)*acd13(23)
      acd13(87)=acd13(20)*acd13(21)
      acd13(88)=acd13(18)*acd13(19)
      acd13(89)=acd13(14)*acd13(15)
      acd13(90)=acd13(10)*acd13(11)
      acd13(91)=acd13(8)*acd13(9)
      acd13(92)=acd13(6)*acd13(7)
      acd13(84)=acd13(92)+acd13(91)+acd13(90)+acd13(89)+acd13(88)+acd13(87)+acd&
      &13(86)+acd13(85)-acd13(26)+acd13(84)
      acd13(84)=acd13(6)*acd13(84)
      acd13(85)=acd13(16)*acd13(30)
      acd13(86)=-acd13(24)*acd13(34)
      acd13(87)=acd13(22)*acd13(33)
      acd13(88)=acd13(20)*acd13(32)
      acd13(89)=acd13(18)*acd13(31)
      acd13(90)=acd13(14)*acd13(29)
      acd13(91)=acd13(10)*acd13(27)
      acd13(85)=acd13(91)+acd13(90)+acd13(89)+acd13(88)+acd13(87)+acd13(86)-acd&
      &13(35)+acd13(85)
      acd13(85)=acd13(8)*acd13(85)
      acd13(86)=-acd13(39)*acd13(40)
      acd13(87)=-acd13(56)*acd13(80)
      acd13(88)=-acd13(54)*acd13(79)
      acd13(89)=-acd13(52)*acd13(78)
      acd13(90)=-acd13(50)*acd13(77)
      acd13(91)=-acd13(41)*acd13(76)
      acd13(92)=-acd13(16)*acd13(71)
      acd13(93)=-acd13(24)*acd13(75)
      acd13(94)=-acd13(22)*acd13(74)
      acd13(95)=-acd13(20)*acd13(73)
      acd13(96)=-acd13(18)*acd13(72)
      acd13(97)=-acd13(14)*acd13(70)
      acd13(98)=-acd13(10)*acd13(38)
      brack=acd13(81)+acd13(82)+acd13(83)+acd13(84)+acd13(85)+acd13(86)+acd13(8&
      &7)+acd13(88)+acd13(89)+acd13(90)+acd13(91)+acd13(92)+acd13(93)+acd13(94)&
      &+acd13(95)+acd13(96)+acd13(97)+acd13(98)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(119) :: acd13
      complex(ki) :: brack
      acd13(1)=k1(iv1)
      acd13(2)=dotproduct(qshift,qshift)
      acd13(3)=dotproduct(qshift,spvak2k5)
      acd13(4)=abb13(67)
      acd13(5)=abb13(61)
      acd13(6)=k2(iv1)
      acd13(7)=dotproduct(k2,qshift)
      acd13(8)=abb13(60)
      acd13(9)=dotproduct(l3,qshift)
      acd13(10)=abb13(54)
      acd13(11)=dotproduct(l4,qshift)
      acd13(12)=abb13(33)
      acd13(13)=abb13(21)
      acd13(14)=abb13(38)
      acd13(15)=dotproduct(qshift,spvak1l4)
      acd13(16)=abb13(32)
      acd13(17)=dotproduct(qshift,spvak1k5)
      acd13(18)=abb13(78)
      acd13(19)=dotproduct(qshift,spvak2k1)
      acd13(20)=abb13(40)
      acd13(21)=dotproduct(qshift,spvak2l4)
      acd13(22)=abb13(76)
      acd13(23)=dotproduct(qshift,spval4k1)
      acd13(24)=abb13(62)
      acd13(25)=dotproduct(qshift,spval4k2)
      acd13(26)=abb13(52)
      acd13(27)=abb13(13)
      acd13(28)=l3(iv1)
      acd13(29)=abb13(56)
      acd13(30)=abb13(43)
      acd13(31)=abb13(46)
      acd13(32)=abb13(72)
      acd13(33)=abb13(36)
      acd13(34)=abb13(74)
      acd13(35)=abb13(57)
      acd13(36)=abb13(51)
      acd13(37)=abb13(45)
      acd13(38)=l4(iv1)
      acd13(39)=abb13(27)
      acd13(40)=abb13(17)
      acd13(41)=abb13(42)
      acd13(42)=k5(iv1)
      acd13(43)=abb13(71)
      acd13(44)=qshift(iv1)
      acd13(45)=dotproduct(k1,qshift)
      acd13(46)=dotproduct(k5,qshift)
      acd13(47)=dotproduct(qshift,spvak1k2)
      acd13(48)=abb13(24)
      acd13(49)=abb13(55)
      acd13(50)=abb13(25)
      acd13(51)=abb13(15)
      acd13(52)=abb13(50)
      acd13(53)=abb13(58)
      acd13(54)=abb13(47)
      acd13(55)=abb13(41)
      acd13(56)=dotproduct(qshift,spvak1l3)
      acd13(57)=abb13(39)
      acd13(58)=dotproduct(qshift,spvak2l3)
      acd13(59)=abb13(89)
      acd13(60)=dotproduct(qshift,spval3k1)
      acd13(61)=abb13(28)
      acd13(62)=dotproduct(qshift,spval3k2)
      acd13(63)=abb13(44)
      acd13(64)=abb13(20)
      acd13(65)=spvak2k5(iv1)
      acd13(66)=abb13(81)
      acd13(67)=abb13(64)
      acd13(68)=abb13(79)
      acd13(69)=abb13(16)
      acd13(70)=abb13(31)
      acd13(71)=abb13(23)
      acd13(72)=abb13(12)
      acd13(73)=abb13(98)
      acd13(74)=abb13(68)
      acd13(75)=abb13(30)
      acd13(76)=abb13(22)
      acd13(77)=spvak1l4(iv1)
      acd13(78)=abb13(26)
      acd13(79)=spvak1k5(iv1)
      acd13(80)=abb13(11)
      acd13(81)=spvak2k1(iv1)
      acd13(82)=abb13(59)
      acd13(83)=spvak2l4(iv1)
      acd13(84)=abb13(73)
      acd13(85)=spval4k1(iv1)
      acd13(86)=abb13(53)
      acd13(87)=spval4k2(iv1)
      acd13(88)=abb13(34)
      acd13(89)=spvak1k2(iv1)
      acd13(90)=abb13(14)
      acd13(91)=spvak1l3(iv1)
      acd13(92)=abb13(19)
      acd13(93)=spvak2l3(iv1)
      acd13(94)=abb13(82)
      acd13(95)=spval3k1(iv1)
      acd13(96)=abb13(66)
      acd13(97)=spval3k2(iv1)
      acd13(98)=abb13(69)
      acd13(99)=-acd13(45)+acd13(7)
      acd13(99)=acd13(4)*acd13(99)
      acd13(100)=acd13(47)*acd13(48)
      acd13(99)=-acd13(100)+acd13(49)+acd13(99)
      acd13(100)=2.0_ki*acd13(44)
      acd13(101)=acd13(99)*acd13(100)
      acd13(102)=-acd13(1)*acd13(5)
      acd13(103)=-acd13(97)*acd13(75)
      acd13(104)=-acd13(95)*acd13(74)
      acd13(105)=-acd13(93)*acd13(73)
      acd13(106)=-acd13(91)*acd13(72)
      acd13(107)=-acd13(89)*acd13(71)
      acd13(108)=-acd13(87)*acd13(70)
      acd13(109)=-acd13(85)*acd13(69)
      acd13(110)=-acd13(83)*acd13(68)
      acd13(111)=-acd13(81)*acd13(67)
      acd13(112)=-acd13(77)*acd13(66)
      acd13(113)=-acd13(38)*acd13(40)
      acd13(114)=-acd13(28)*acd13(30)
      acd13(115)=-acd13(6)*acd13(14)
      acd13(101)=acd13(101)+acd13(115)+acd13(114)+acd13(113)+acd13(112)+acd13(1&
      &11)+acd13(110)+acd13(109)+acd13(108)+acd13(107)+acd13(106)+acd13(105)+ac&
      &d13(104)+acd13(102)+acd13(103)
      acd13(101)=acd13(3)*acd13(101)
      acd13(99)=acd13(65)*acd13(99)
      acd13(102)=acd13(6)-acd13(1)
      acd13(102)=acd13(4)*acd13(102)
      acd13(103)=-acd13(48)*acd13(89)
      acd13(102)=acd13(103)+acd13(102)
      acd13(102)=acd13(3)*acd13(102)
      acd13(103)=4.0_ki*acd13(44)+acd13(38)-acd13(42)
      acd13(103)=acd13(39)*acd13(103)
      acd13(104)=acd13(97)*acd13(63)
      acd13(105)=acd13(95)*acd13(61)
      acd13(106)=acd13(93)*acd13(59)
      acd13(107)=acd13(91)*acd13(57)
      acd13(108)=acd13(79)*acd13(51)
      acd13(109)=-acd13(87)*acd13(55)
      acd13(110)=acd13(85)*acd13(54)
      acd13(111)=-acd13(83)*acd13(53)
      acd13(112)=acd13(81)*acd13(52)
      acd13(113)=-acd13(77)*acd13(50)
      acd13(114)=-acd13(28)*acd13(29)
      acd13(115)=acd13(6)*acd13(13)
      acd13(99)=acd13(102)+acd13(99)+acd13(115)+acd13(114)+acd13(113)+acd13(112&
      &)+acd13(111)+acd13(110)+acd13(109)+acd13(108)+acd13(107)+acd13(106)+acd1&
      &3(104)+acd13(105)+acd13(103)
      acd13(99)=acd13(2)*acd13(99)
      acd13(102)=-acd13(62)*acd13(75)
      acd13(103)=-acd13(60)*acd13(74)
      acd13(104)=-acd13(58)*acd13(73)
      acd13(105)=-acd13(56)*acd13(72)
      acd13(106)=-acd13(47)*acd13(71)
      acd13(107)=-acd13(45)*acd13(5)
      acd13(108)=-acd13(25)*acd13(70)
      acd13(109)=-acd13(23)*acd13(69)
      acd13(110)=-acd13(21)*acd13(68)
      acd13(111)=-acd13(19)*acd13(67)
      acd13(112)=-acd13(15)*acd13(66)
      acd13(113)=-acd13(11)*acd13(40)
      acd13(114)=-acd13(9)*acd13(30)
      acd13(115)=-acd13(7)*acd13(14)
      acd13(102)=acd13(115)+acd13(114)+acd13(113)+acd13(112)+acd13(111)+acd13(1&
      &10)+acd13(109)+acd13(108)+acd13(107)+acd13(106)+acd13(105)+acd13(104)+ac&
      &d13(103)+acd13(76)+acd13(102)
      acd13(102)=acd13(65)*acd13(102)
      acd13(103)=acd13(62)*acd13(63)
      acd13(104)=acd13(60)*acd13(61)
      acd13(105)=acd13(58)*acd13(59)
      acd13(106)=acd13(56)*acd13(57)
      acd13(107)=acd13(17)*acd13(51)
      acd13(108)=-acd13(25)*acd13(55)
      acd13(109)=acd13(23)*acd13(54)
      acd13(110)=-acd13(21)*acd13(53)
      acd13(111)=acd13(19)*acd13(52)
      acd13(112)=-acd13(15)*acd13(50)
      acd13(113)=-acd13(46)+acd13(11)
      acd13(113)=acd13(39)*acd13(113)
      acd13(114)=-acd13(9)*acd13(29)
      acd13(115)=acd13(7)*acd13(13)
      acd13(103)=acd13(115)+acd13(114)+acd13(113)+acd13(112)+acd13(111)+acd13(1&
      &10)+acd13(109)+acd13(108)+acd13(107)+acd13(106)+acd13(105)+acd13(104)-ac&
      &d13(64)+acd13(103)
      acd13(100)=acd13(103)*acd13(100)
      acd13(103)=-acd13(17)*acd13(18)
      acd13(104)=-acd13(25)*acd13(26)
      acd13(105)=-acd13(23)*acd13(24)
      acd13(106)=-acd13(21)*acd13(22)
      acd13(107)=-acd13(19)*acd13(20)
      acd13(108)=-acd13(15)*acd13(16)
      acd13(109)=-acd13(11)*acd13(12)
      acd13(110)=-acd13(9)*acd13(10)
      acd13(111)=acd13(7)*acd13(8)
      acd13(103)=-2.0_ki*acd13(111)+acd13(110)+acd13(109)+acd13(108)+acd13(107)&
      &+acd13(106)+acd13(105)+acd13(104)+acd13(27)+acd13(103)
      acd13(103)=acd13(6)*acd13(103)
      acd13(104)=-acd13(79)*acd13(18)
      acd13(105)=-acd13(87)*acd13(26)
      acd13(106)=-acd13(85)*acd13(24)
      acd13(107)=-acd13(83)*acd13(22)
      acd13(108)=-acd13(81)*acd13(20)
      acd13(109)=-acd13(77)*acd13(16)
      acd13(110)=-acd13(38)*acd13(12)
      acd13(111)=-acd13(28)*acd13(10)
      acd13(104)=acd13(111)+acd13(110)+acd13(109)+acd13(108)+acd13(107)+acd13(1&
      &06)+acd13(104)+acd13(105)
      acd13(104)=acd13(7)*acd13(104)
      acd13(105)=-acd13(79)*acd13(32)
      acd13(106)=acd13(87)*acd13(36)
      acd13(107)=-acd13(85)*acd13(35)
      acd13(108)=-acd13(83)*acd13(34)
      acd13(109)=-acd13(81)*acd13(33)
      acd13(110)=-acd13(77)*acd13(31)
      acd13(111)=-acd13(38)*acd13(29)
      acd13(105)=acd13(111)+acd13(110)+acd13(109)+acd13(108)+acd13(107)+acd13(1&
      &05)+acd13(106)
      acd13(105)=acd13(9)*acd13(105)
      acd13(106)=-acd13(17)*acd13(32)
      acd13(107)=acd13(25)*acd13(36)
      acd13(108)=-acd13(23)*acd13(35)
      acd13(109)=-acd13(21)*acd13(34)
      acd13(110)=-acd13(19)*acd13(33)
      acd13(111)=-acd13(15)*acd13(31)
      acd13(112)=-acd13(11)*acd13(29)
      acd13(106)=acd13(112)+acd13(111)+acd13(110)+acd13(109)+acd13(108)+acd13(1&
      &07)+acd13(37)+acd13(106)
      acd13(106)=acd13(28)*acd13(106)
      acd13(107)=acd13(42)*acd13(43)
      acd13(108)=acd13(97)*acd13(98)
      acd13(109)=acd13(95)*acd13(96)
      acd13(110)=acd13(93)*acd13(94)
      acd13(111)=acd13(91)*acd13(92)
      acd13(112)=acd13(89)*acd13(90)
      acd13(113)=acd13(79)*acd13(80)
      acd13(114)=acd13(87)*acd13(88)
      acd13(115)=acd13(85)*acd13(86)
      acd13(116)=acd13(83)*acd13(84)
      acd13(117)=acd13(81)*acd13(82)
      acd13(118)=acd13(77)*acd13(78)
      acd13(119)=acd13(38)*acd13(41)
      brack=acd13(99)+acd13(100)+acd13(101)+acd13(102)+acd13(103)+acd13(104)+ac&
      &d13(105)+acd13(106)+acd13(107)+acd13(108)+acd13(109)+acd13(110)+acd13(11&
      &1)+acd13(112)+acd13(113)+acd13(114)+acd13(115)+acd13(116)+acd13(117)+acd&
      &13(118)+acd13(119)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(121) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=dotproduct(k1,qshift)
      acd13(3)=dotproduct(qshift,spvak2k5)
      acd13(4)=abb13(67)
      acd13(5)=dotproduct(k2,qshift)
      acd13(6)=abb13(21)
      acd13(7)=dotproduct(l3,qshift)
      acd13(8)=abb13(56)
      acd13(9)=dotproduct(l4,qshift)
      acd13(10)=abb13(27)
      acd13(11)=dotproduct(k5,qshift)
      acd13(12)=dotproduct(qshift,qshift)
      acd13(13)=dotproduct(qshift,spvak1k2)
      acd13(14)=abb13(24)
      acd13(15)=abb13(55)
      acd13(16)=dotproduct(qshift,spvak1l3)
      acd13(17)=abb13(39)
      acd13(18)=dotproduct(qshift,spvak1l4)
      acd13(19)=abb13(25)
      acd13(20)=dotproduct(qshift,spvak1k5)
      acd13(21)=abb13(15)
      acd13(22)=dotproduct(qshift,spvak2k1)
      acd13(23)=abb13(50)
      acd13(24)=dotproduct(qshift,spvak2l3)
      acd13(25)=abb13(89)
      acd13(26)=dotproduct(qshift,spvak2l4)
      acd13(27)=abb13(58)
      acd13(28)=dotproduct(qshift,spval3k1)
      acd13(29)=abb13(28)
      acd13(30)=dotproduct(qshift,spval3k2)
      acd13(31)=abb13(44)
      acd13(32)=dotproduct(qshift,spval4k1)
      acd13(33)=abb13(47)
      acd13(34)=dotproduct(qshift,spval4k2)
      acd13(35)=abb13(41)
      acd13(36)=abb13(20)
      acd13(37)=k1(iv1)
      acd13(38)=qshift(iv2)
      acd13(39)=spvak2k5(iv2)
      acd13(40)=abb13(61)
      acd13(41)=k1(iv2)
      acd13(42)=qshift(iv1)
      acd13(43)=spvak2k5(iv1)
      acd13(44)=k2(iv1)
      acd13(45)=k2(iv2)
      acd13(46)=abb13(60)
      acd13(47)=l3(iv2)
      acd13(48)=abb13(54)
      acd13(49)=l4(iv2)
      acd13(50)=abb13(33)
      acd13(51)=abb13(38)
      acd13(52)=spvak1l4(iv2)
      acd13(53)=abb13(32)
      acd13(54)=spvak1k5(iv2)
      acd13(55)=abb13(78)
      acd13(56)=spvak2k1(iv2)
      acd13(57)=abb13(40)
      acd13(58)=spvak2l4(iv2)
      acd13(59)=abb13(76)
      acd13(60)=spval4k1(iv2)
      acd13(61)=abb13(62)
      acd13(62)=spval4k2(iv2)
      acd13(63)=abb13(52)
      acd13(64)=l3(iv1)
      acd13(65)=l4(iv1)
      acd13(66)=spvak1l4(iv1)
      acd13(67)=spvak1k5(iv1)
      acd13(68)=spvak2k1(iv1)
      acd13(69)=spvak2l4(iv1)
      acd13(70)=spval4k1(iv1)
      acd13(71)=spval4k2(iv1)
      acd13(72)=abb13(43)
      acd13(73)=abb13(46)
      acd13(74)=abb13(72)
      acd13(75)=abb13(36)
      acd13(76)=abb13(74)
      acd13(77)=abb13(57)
      acd13(78)=abb13(51)
      acd13(79)=abb13(17)
      acd13(80)=k5(iv1)
      acd13(81)=k5(iv2)
      acd13(82)=spvak1k2(iv2)
      acd13(83)=spvak1l3(iv2)
      acd13(84)=spvak2l3(iv2)
      acd13(85)=spval3k1(iv2)
      acd13(86)=spval3k2(iv2)
      acd13(87)=spvak1k2(iv1)
      acd13(88)=spvak1l3(iv1)
      acd13(89)=spvak2l3(iv1)
      acd13(90)=spval3k1(iv1)
      acd13(91)=spval3k2(iv1)
      acd13(92)=abb13(23)
      acd13(93)=abb13(12)
      acd13(94)=abb13(81)
      acd13(95)=abb13(64)
      acd13(96)=abb13(98)
      acd13(97)=abb13(79)
      acd13(98)=abb13(68)
      acd13(99)=abb13(30)
      acd13(100)=abb13(16)
      acd13(101)=abb13(31)
      acd13(102)=acd13(5)-acd13(2)
      acd13(102)=acd13(102)*acd13(4)
      acd13(103)=acd13(14)*acd13(13)
      acd13(102)=-acd13(102)+acd13(103)-acd13(15)
      acd13(103)=acd13(39)*acd13(102)
      acd13(104)=-acd13(31)*acd13(86)
      acd13(105)=-acd13(29)*acd13(85)
      acd13(106)=-acd13(25)*acd13(84)
      acd13(107)=-acd13(21)*acd13(54)
      acd13(108)=-acd13(17)*acd13(83)
      acd13(109)=acd13(62)*acd13(35)
      acd13(110)=-acd13(60)*acd13(33)
      acd13(111)=acd13(58)*acd13(27)
      acd13(112)=-acd13(56)*acd13(23)
      acd13(113)=acd13(52)*acd13(19)
      acd13(114)=acd13(81)-acd13(49)
      acd13(114)=acd13(10)*acd13(114)
      acd13(115)=acd13(47)*acd13(8)
      acd13(116)=acd13(3)*acd13(14)
      acd13(117)=acd13(82)*acd13(116)
      acd13(118)=-acd13(45)*acd13(6)
      acd13(119)=acd13(45)-acd13(41)
      acd13(119)=acd13(119)*acd13(4)
      acd13(120)=-acd13(3)*acd13(119)
      acd13(103)=acd13(103)+acd13(120)+acd13(118)+acd13(117)+acd13(115)+acd13(1&
      &14)+acd13(113)+acd13(112)+acd13(111)+acd13(110)+acd13(109)+acd13(108)+ac&
      &d13(107)+acd13(106)+acd13(104)+acd13(105)
      acd13(103)=acd13(42)*acd13(103)
      acd13(104)=acd13(43)*acd13(102)
      acd13(105)=-4.0_ki*acd13(42)+acd13(80)-acd13(65)
      acd13(105)=acd13(10)*acd13(105)
      acd13(106)=-acd13(31)*acd13(91)
      acd13(107)=-acd13(29)*acd13(90)
      acd13(108)=-acd13(25)*acd13(89)
      acd13(109)=-acd13(21)*acd13(67)
      acd13(110)=-acd13(17)*acd13(88)
      acd13(111)=acd13(71)*acd13(35)
      acd13(112)=-acd13(70)*acd13(33)
      acd13(113)=acd13(69)*acd13(27)
      acd13(114)=-acd13(68)*acd13(23)
      acd13(115)=acd13(66)*acd13(19)
      acd13(117)=acd13(64)*acd13(8)
      acd13(116)=acd13(87)*acd13(116)
      acd13(118)=-acd13(44)*acd13(6)
      acd13(120)=acd13(44)-acd13(37)
      acd13(120)=acd13(120)*acd13(4)
      acd13(121)=-acd13(3)*acd13(120)
      acd13(104)=acd13(104)+acd13(121)+acd13(118)+acd13(116)+acd13(117)+acd13(1&
      &15)+acd13(114)+acd13(113)+acd13(112)+acd13(111)+acd13(110)+acd13(109)+ac&
      &d13(108)+acd13(106)+acd13(107)+acd13(105)
      acd13(104)=acd13(38)*acd13(104)
      acd13(102)=acd13(3)*acd13(102)
      acd13(105)=acd13(35)*acd13(34)
      acd13(106)=-acd13(33)*acd13(32)
      acd13(107)=-acd13(31)*acd13(30)
      acd13(108)=-acd13(29)*acd13(28)
      acd13(109)=acd13(27)*acd13(26)
      acd13(110)=-acd13(25)*acd13(24)
      acd13(111)=-acd13(23)*acd13(22)
      acd13(112)=-acd13(21)*acd13(20)
      acd13(113)=acd13(19)*acd13(18)
      acd13(114)=-acd13(17)*acd13(16)
      acd13(115)=-acd13(5)*acd13(6)
      acd13(116)=acd13(8)*acd13(7)
      acd13(117)=-2.0_ki*acd13(12)+acd13(11)-acd13(9)
      acd13(117)=acd13(10)*acd13(117)
      acd13(102)=acd13(117)+acd13(116)+acd13(115)+acd13(114)+acd13(113)+acd13(1&
      &12)+acd13(111)+acd13(110)+acd13(109)+acd13(108)+acd13(107)+acd13(106)+ac&
      &d13(36)+acd13(105)+acd13(102)
      acd13(102)=acd13(1)*acd13(102)
      acd13(102)=acd13(104)+acd13(102)+acd13(103)
      acd13(103)=acd13(12)*acd13(14)
      acd13(103)=acd13(103)+acd13(92)
      acd13(104)=acd13(82)*acd13(103)
      acd13(105)=acd13(86)*acd13(99)
      acd13(106)=acd13(85)*acd13(98)
      acd13(107)=acd13(84)*acd13(96)
      acd13(108)=acd13(83)*acd13(93)
      acd13(109)=acd13(41)*acd13(40)
      acd13(110)=acd13(62)*acd13(101)
      acd13(111)=acd13(60)*acd13(100)
      acd13(112)=acd13(58)*acd13(97)
      acd13(113)=acd13(56)*acd13(95)
      acd13(114)=acd13(52)*acd13(94)
      acd13(115)=acd13(49)*acd13(79)
      acd13(116)=acd13(47)*acd13(72)
      acd13(117)=acd13(45)*acd13(51)
      acd13(118)=-acd13(12)*acd13(119)
      acd13(104)=acd13(118)+acd13(117)+acd13(116)+acd13(115)+acd13(114)+acd13(1&
      &13)+acd13(112)+acd13(111)+acd13(110)+acd13(109)+acd13(108)+acd13(107)+ac&
      &d13(105)+acd13(106)+acd13(104)
      acd13(104)=acd13(43)*acd13(104)
      acd13(103)=acd13(87)*acd13(103)
      acd13(105)=acd13(91)*acd13(99)
      acd13(106)=acd13(90)*acd13(98)
      acd13(107)=acd13(89)*acd13(96)
      acd13(108)=acd13(88)*acd13(93)
      acd13(109)=acd13(37)*acd13(40)
      acd13(110)=acd13(71)*acd13(101)
      acd13(111)=acd13(70)*acd13(100)
      acd13(112)=acd13(69)*acd13(97)
      acd13(113)=acd13(68)*acd13(95)
      acd13(114)=acd13(66)*acd13(94)
      acd13(115)=acd13(65)*acd13(79)
      acd13(116)=acd13(64)*acd13(72)
      acd13(117)=acd13(44)*acd13(51)
      acd13(118)=-acd13(12)*acd13(120)
      acd13(103)=acd13(118)+acd13(117)+acd13(116)+acd13(115)+acd13(114)+acd13(1&
      &13)+acd13(112)+acd13(111)+acd13(110)+acd13(109)+acd13(108)+acd13(107)+ac&
      &d13(105)+acd13(106)+acd13(103)
      acd13(103)=acd13(39)*acd13(103)
      acd13(105)=acd13(54)*acd13(55)
      acd13(106)=acd13(62)*acd13(63)
      acd13(107)=acd13(60)*acd13(61)
      acd13(108)=acd13(58)*acd13(59)
      acd13(109)=acd13(56)*acd13(57)
      acd13(110)=acd13(52)*acd13(53)
      acd13(111)=acd13(49)*acd13(50)
      acd13(112)=acd13(47)*acd13(48)
      acd13(113)=acd13(45)*acd13(46)
      acd13(105)=2.0_ki*acd13(113)+acd13(112)+acd13(111)+acd13(110)+acd13(109)+&
      &acd13(108)+acd13(107)+acd13(105)+acd13(106)
      acd13(105)=acd13(44)*acd13(105)
      acd13(106)=acd13(67)*acd13(55)
      acd13(107)=acd13(71)*acd13(63)
      acd13(108)=acd13(70)*acd13(61)
      acd13(109)=acd13(69)*acd13(59)
      acd13(110)=acd13(68)*acd13(57)
      acd13(111)=acd13(66)*acd13(53)
      acd13(112)=acd13(65)*acd13(50)
      acd13(113)=acd13(64)*acd13(48)
      acd13(106)=acd13(113)+acd13(112)+acd13(111)+acd13(110)+acd13(109)+acd13(1&
      &08)+acd13(106)+acd13(107)
      acd13(106)=acd13(45)*acd13(106)
      acd13(107)=acd13(54)*acd13(74)
      acd13(108)=-acd13(62)*acd13(78)
      acd13(109)=acd13(60)*acd13(77)
      acd13(110)=acd13(58)*acd13(76)
      acd13(111)=acd13(56)*acd13(75)
      acd13(112)=acd13(52)*acd13(73)
      acd13(113)=acd13(8)*acd13(49)
      acd13(107)=acd13(113)+acd13(112)+acd13(111)+acd13(110)+acd13(109)+acd13(1&
      &07)+acd13(108)
      acd13(107)=acd13(64)*acd13(107)
      acd13(108)=acd13(67)*acd13(74)
      acd13(109)=-acd13(71)*acd13(78)
      acd13(110)=acd13(70)*acd13(77)
      acd13(111)=acd13(69)*acd13(76)
      acd13(112)=acd13(68)*acd13(75)
      acd13(113)=acd13(66)*acd13(73)
      acd13(114)=acd13(8)*acd13(65)
      acd13(108)=acd13(114)+acd13(113)+acd13(112)+acd13(111)+acd13(110)+acd13(1&
      &08)+acd13(109)
      acd13(108)=acd13(47)*acd13(108)
      brack=2.0_ki*acd13(102)+acd13(103)+acd13(104)+acd13(105)+acd13(106)+acd13&
      &(107)+acd13(108)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(94) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=k1(iv3)
      acd13(3)=dotproduct(qshift,spvak2k5)
      acd13(4)=abb13(67)
      acd13(5)=k2(iv3)
      acd13(6)=abb13(21)
      acd13(7)=l3(iv3)
      acd13(8)=abb13(56)
      acd13(9)=l4(iv3)
      acd13(10)=abb13(27)
      acd13(11)=k5(iv3)
      acd13(12)=qshift(iv3)
      acd13(13)=spvak2k5(iv3)
      acd13(14)=dotproduct(k1,qshift)
      acd13(15)=dotproduct(k2,qshift)
      acd13(16)=dotproduct(qshift,spvak1k2)
      acd13(17)=abb13(24)
      acd13(18)=abb13(55)
      acd13(19)=spvak1k2(iv3)
      acd13(20)=spvak1l3(iv3)
      acd13(21)=abb13(39)
      acd13(22)=spvak1l4(iv3)
      acd13(23)=abb13(25)
      acd13(24)=spvak1k5(iv3)
      acd13(25)=abb13(15)
      acd13(26)=spvak2k1(iv3)
      acd13(27)=abb13(50)
      acd13(28)=spvak2l3(iv3)
      acd13(29)=abb13(89)
      acd13(30)=spvak2l4(iv3)
      acd13(31)=abb13(58)
      acd13(32)=spval3k1(iv3)
      acd13(33)=abb13(28)
      acd13(34)=spval3k2(iv3)
      acd13(35)=abb13(44)
      acd13(36)=spval4k1(iv3)
      acd13(37)=abb13(47)
      acd13(38)=spval4k2(iv3)
      acd13(39)=abb13(41)
      acd13(40)=d(iv1,iv3)
      acd13(41)=k1(iv2)
      acd13(42)=k2(iv2)
      acd13(43)=l3(iv2)
      acd13(44)=l4(iv2)
      acd13(45)=k5(iv2)
      acd13(46)=qshift(iv2)
      acd13(47)=spvak2k5(iv2)
      acd13(48)=spvak1k2(iv2)
      acd13(49)=spvak1l3(iv2)
      acd13(50)=spvak1l4(iv2)
      acd13(51)=spvak1k5(iv2)
      acd13(52)=spvak2k1(iv2)
      acd13(53)=spvak2l3(iv2)
      acd13(54)=spvak2l4(iv2)
      acd13(55)=spval3k1(iv2)
      acd13(56)=spval3k2(iv2)
      acd13(57)=spval4k1(iv2)
      acd13(58)=spval4k2(iv2)
      acd13(59)=d(iv2,iv3)
      acd13(60)=k1(iv1)
      acd13(61)=k2(iv1)
      acd13(62)=l3(iv1)
      acd13(63)=l4(iv1)
      acd13(64)=k5(iv1)
      acd13(65)=qshift(iv1)
      acd13(66)=spvak2k5(iv1)
      acd13(67)=spvak1k2(iv1)
      acd13(68)=spvak1l3(iv1)
      acd13(69)=spvak1l4(iv1)
      acd13(70)=spvak1k5(iv1)
      acd13(71)=spvak2k1(iv1)
      acd13(72)=spvak2l3(iv1)
      acd13(73)=spvak2l4(iv1)
      acd13(74)=spval3k1(iv1)
      acd13(75)=spval3k2(iv1)
      acd13(76)=spval4k1(iv1)
      acd13(77)=spval4k2(iv1)
      acd13(78)=-acd13(3)*acd13(67)
      acd13(79)=-acd13(66)*acd13(16)
      acd13(78)=acd13(78)+acd13(79)
      acd13(78)=acd13(17)*acd13(78)
      acd13(79)=-acd13(39)*acd13(77)
      acd13(80)=acd13(37)*acd13(76)
      acd13(81)=acd13(35)*acd13(75)
      acd13(82)=acd13(33)*acd13(74)
      acd13(83)=-acd13(31)*acd13(73)
      acd13(84)=acd13(29)*acd13(72)
      acd13(85)=acd13(27)*acd13(71)
      acd13(86)=acd13(25)*acd13(70)
      acd13(87)=-acd13(23)*acd13(69)
      acd13(88)=acd13(21)*acd13(68)
      acd13(89)=-acd13(8)*acd13(62)
      acd13(90)=acd13(61)*acd13(6)
      acd13(91)=4.0_ki*acd13(65)-acd13(64)+acd13(63)
      acd13(91)=acd13(10)*acd13(91)
      acd13(92)=acd13(66)*acd13(18)
      acd13(78)=acd13(78)+acd13(92)+acd13(91)+acd13(90)+acd13(89)+acd13(88)+acd&
      &13(87)+acd13(86)+acd13(85)+acd13(84)+acd13(83)+acd13(82)+acd13(81)+acd13&
      &(79)+acd13(80)
      acd13(78)=acd13(59)*acd13(78)
      acd13(79)=-acd13(3)*acd13(48)
      acd13(80)=-acd13(47)*acd13(16)
      acd13(79)=acd13(79)+acd13(80)
      acd13(79)=acd13(17)*acd13(79)
      acd13(80)=-acd13(39)*acd13(58)
      acd13(81)=acd13(37)*acd13(57)
      acd13(82)=acd13(35)*acd13(56)
      acd13(83)=acd13(33)*acd13(55)
      acd13(84)=-acd13(31)*acd13(54)
      acd13(85)=acd13(29)*acd13(53)
      acd13(86)=acd13(27)*acd13(52)
      acd13(87)=acd13(25)*acd13(51)
      acd13(88)=-acd13(23)*acd13(50)
      acd13(89)=acd13(21)*acd13(49)
      acd13(90)=-acd13(8)*acd13(43)
      acd13(91)=acd13(42)*acd13(6)
      acd13(92)=4.0_ki*acd13(46)-acd13(45)+acd13(44)
      acd13(92)=acd13(10)*acd13(92)
      acd13(93)=acd13(47)*acd13(18)
      acd13(79)=acd13(79)+acd13(93)+acd13(92)+acd13(91)+acd13(90)+acd13(89)+acd&
      &13(88)+acd13(87)+acd13(86)+acd13(85)+acd13(84)+acd13(83)+acd13(82)+acd13&
      &(80)+acd13(81)
      acd13(79)=acd13(40)*acd13(79)
      acd13(80)=-acd13(3)*acd13(19)
      acd13(81)=-acd13(13)*acd13(16)
      acd13(80)=acd13(80)+acd13(81)
      acd13(80)=acd13(17)*acd13(80)
      acd13(81)=-acd13(39)*acd13(38)
      acd13(82)=acd13(37)*acd13(36)
      acd13(83)=acd13(35)*acd13(34)
      acd13(84)=acd13(33)*acd13(32)
      acd13(85)=-acd13(31)*acd13(30)
      acd13(86)=acd13(29)*acd13(28)
      acd13(87)=acd13(27)*acd13(26)
      acd13(88)=acd13(25)*acd13(24)
      acd13(89)=-acd13(23)*acd13(22)
      acd13(90)=acd13(21)*acd13(20)
      acd13(91)=-acd13(8)*acd13(7)
      acd13(92)=acd13(5)*acd13(6)
      acd13(93)=4.0_ki*acd13(12)-acd13(11)+acd13(9)
      acd13(93)=acd13(10)*acd13(93)
      acd13(94)=acd13(13)*acd13(18)
      acd13(80)=acd13(80)+acd13(94)+acd13(93)+acd13(92)+acd13(91)+acd13(90)+acd&
      &13(89)+acd13(88)+acd13(87)+acd13(86)+acd13(85)+acd13(84)+acd13(83)+acd13&
      &(81)+acd13(82)
      acd13(80)=acd13(1)*acd13(80)
      acd13(81)=acd13(5)-acd13(2)
      acd13(82)=acd13(46)*acd13(81)
      acd13(83)=acd13(42)-acd13(41)
      acd13(84)=acd13(12)*acd13(83)
      acd13(82)=acd13(82)+acd13(84)
      acd13(82)=acd13(66)*acd13(82)
      acd13(84)=acd13(65)*acd13(81)
      acd13(85)=acd13(61)-acd13(60)
      acd13(86)=acd13(12)*acd13(85)
      acd13(84)=acd13(84)+acd13(86)
      acd13(84)=acd13(47)*acd13(84)
      acd13(86)=acd13(65)*acd13(83)
      acd13(87)=acd13(46)*acd13(85)
      acd13(86)=acd13(86)+acd13(87)
      acd13(86)=acd13(13)*acd13(86)
      acd13(85)=acd13(3)*acd13(85)
      acd13(87)=acd13(14)-acd13(15)
      acd13(88)=-acd13(66)*acd13(87)
      acd13(85)=acd13(85)+acd13(88)
      acd13(85)=acd13(59)*acd13(85)
      acd13(83)=acd13(3)*acd13(83)
      acd13(88)=-acd13(47)*acd13(87)
      acd13(83)=acd13(83)+acd13(88)
      acd13(83)=acd13(40)*acd13(83)
      acd13(81)=acd13(3)*acd13(81)
      acd13(87)=-acd13(13)*acd13(87)
      acd13(81)=acd13(81)+acd13(87)
      acd13(81)=acd13(1)*acd13(81)
      acd13(81)=acd13(81)+acd13(83)+acd13(85)+acd13(86)+acd13(82)+acd13(84)
      acd13(81)=acd13(4)*acd13(81)
      acd13(82)=-acd13(46)*acd13(19)
      acd13(83)=-acd13(12)*acd13(48)
      acd13(82)=acd13(82)+acd13(83)
      acd13(82)=acd13(66)*acd13(82)
      acd13(83)=-acd13(65)*acd13(19)
      acd13(84)=-acd13(12)*acd13(67)
      acd13(83)=acd13(83)+acd13(84)
      acd13(83)=acd13(47)*acd13(83)
      acd13(84)=-acd13(65)*acd13(48)
      acd13(85)=-acd13(46)*acd13(67)
      acd13(84)=acd13(84)+acd13(85)
      acd13(84)=acd13(13)*acd13(84)
      acd13(82)=acd13(84)+acd13(82)+acd13(83)
      acd13(82)=acd13(17)*acd13(82)
      acd13(78)=acd13(81)+acd13(80)+acd13(79)+acd13(82)+acd13(78)
      brack=2.0_ki*acd13(78)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=d(iv3,iv4)
      acd13(3)=abb13(27)
      acd13(4)=k1(iv3)
      acd13(5)=spvak2k5(iv4)
      acd13(6)=abb13(67)
      acd13(7)=k1(iv4)
      acd13(8)=spvak2k5(iv3)
      acd13(9)=k2(iv3)
      acd13(10)=k2(iv4)
      acd13(11)=spvak1k2(iv4)
      acd13(12)=abb13(24)
      acd13(13)=spvak1k2(iv3)
      acd13(14)=d(iv1,iv3)
      acd13(15)=d(iv2,iv4)
      acd13(16)=k1(iv2)
      acd13(17)=spvak2k5(iv2)
      acd13(18)=k2(iv2)
      acd13(19)=spvak1k2(iv2)
      acd13(20)=d(iv1,iv4)
      acd13(21)=d(iv2,iv3)
      acd13(22)=k1(iv1)
      acd13(23)=spvak2k5(iv1)
      acd13(24)=k2(iv1)
      acd13(25)=spvak1k2(iv1)
      acd13(26)=acd13(21)*acd13(11)
      acd13(27)=acd13(15)*acd13(13)
      acd13(28)=acd13(2)*acd13(19)
      acd13(26)=acd13(28)+acd13(26)+acd13(27)
      acd13(26)=acd13(23)*acd13(26)
      acd13(27)=acd13(20)*acd13(13)
      acd13(28)=acd13(14)*acd13(11)
      acd13(29)=acd13(2)*acd13(25)
      acd13(27)=acd13(29)+acd13(27)+acd13(28)
      acd13(27)=acd13(17)*acd13(27)
      acd13(28)=acd13(20)*acd13(19)
      acd13(29)=acd13(15)*acd13(25)
      acd13(30)=acd13(1)*acd13(11)
      acd13(28)=acd13(30)+acd13(28)+acd13(29)
      acd13(28)=acd13(8)*acd13(28)
      acd13(29)=acd13(21)*acd13(25)
      acd13(30)=acd13(14)*acd13(19)
      acd13(31)=acd13(1)*acd13(13)
      acd13(29)=acd13(31)+acd13(29)+acd13(30)
      acd13(29)=acd13(5)*acd13(29)
      acd13(26)=acd13(29)+acd13(28)+acd13(26)+acd13(27)
      acd13(26)=acd13(12)*acd13(26)
      acd13(27)=acd13(7)-acd13(10)
      acd13(28)=acd13(21)*acd13(27)
      acd13(29)=acd13(4)-acd13(9)
      acd13(30)=acd13(15)*acd13(29)
      acd13(31)=acd13(16)-acd13(18)
      acd13(32)=acd13(2)*acd13(31)
      acd13(28)=acd13(32)+acd13(28)+acd13(30)
      acd13(28)=acd13(23)*acd13(28)
      acd13(30)=acd13(20)*acd13(29)
      acd13(32)=acd13(14)*acd13(27)
      acd13(33)=acd13(22)-acd13(24)
      acd13(34)=acd13(2)*acd13(33)
      acd13(30)=acd13(34)+acd13(30)+acd13(32)
      acd13(30)=acd13(17)*acd13(30)
      acd13(32)=acd13(20)*acd13(31)
      acd13(34)=acd13(15)*acd13(33)
      acd13(27)=acd13(1)*acd13(27)
      acd13(27)=acd13(27)+acd13(32)+acd13(34)
      acd13(27)=acd13(8)*acd13(27)
      acd13(32)=acd13(21)*acd13(33)
      acd13(31)=acd13(14)*acd13(31)
      acd13(29)=acd13(1)*acd13(29)
      acd13(29)=acd13(29)+acd13(32)+acd13(31)
      acd13(29)=acd13(5)*acd13(29)
      acd13(27)=acd13(29)+acd13(27)+acd13(28)+acd13(30)
      acd13(27)=acd13(6)*acd13(27)
      acd13(28)=-acd13(20)*acd13(21)
      acd13(29)=-acd13(14)*acd13(15)
      acd13(30)=-acd13(1)*acd13(2)
      acd13(28)=acd13(30)+acd13(28)+acd13(29)
      acd13(28)=acd13(3)*acd13(28)
      acd13(26)=acd13(27)+4.0_ki*acd13(28)+acd13(26)
      brack=2.0_ki*acd13(26)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd13h0
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
      qshift = k3+k5
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
!---#[ subroutine reconstruct_d13:
   subroutine     reconstruct_d13(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group10
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group10), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_13:
      coeffs%coeffs_13%c0 = derivative(czip)
      coeffs%coeffs_13%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_13%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_13%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_13%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_13%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_13%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_13%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_13%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_13%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_13%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_13%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_13%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_13%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_13%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_13%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_13%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_13%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_13%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_13%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_13%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_13%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_13%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_13%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_13%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_13%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_13%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_13%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_13%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_13%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_13%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_13%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_13%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_13%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_13%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_13%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_13%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_13%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_13%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_13%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_13%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_13%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_13%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_13%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_13%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_13%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_13%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_13%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_13%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_13%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_13%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_13%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_13%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_13%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_13%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_13%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_13%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_13%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_13%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_13%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_13%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_13%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_13%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_13%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_13%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_13%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_13%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_13%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_13%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_13%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_13:
   end subroutine reconstruct_d13
!---#] subroutine reconstruct_d13:
end module     p0_gg_hhg_d13h0l1d
