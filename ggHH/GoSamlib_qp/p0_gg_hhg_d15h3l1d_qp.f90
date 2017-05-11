module p0_gg_hhg_d15h3l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d15h3l1d.f90
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
   public :: derivative , reconstruct_d15
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd15h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(94) :: acd15
      complex(ki) :: brack
      acd15(1)=dotproduct(k1,qshift)
      acd15(2)=dotproduct(qshift,qshift)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(80)
      acd15(5)=abb15(95)
      acd15(6)=dotproduct(k2,qshift)
      acd15(7)=abb15(84)
      acd15(8)=dotproduct(l3,qshift)
      acd15(9)=abb15(81)
      acd15(10)=dotproduct(l4,qshift)
      acd15(11)=abb15(56)
      acd15(12)=abb15(41)
      acd15(13)=abb15(69)
      acd15(14)=dotproduct(qshift,spvak1l3)
      acd15(15)=abb15(33)
      acd15(16)=dotproduct(qshift,spvak1k5)
      acd15(17)=abb15(38)
      acd15(18)=dotproduct(qshift,spvak2k1)
      acd15(19)=abb15(63)
      acd15(20)=dotproduct(qshift,spvak2l3)
      acd15(21)=abb15(16)
      acd15(22)=dotproduct(qshift,spval3k1)
      acd15(23)=abb15(78)
      acd15(24)=abb15(44)
      acd15(25)=abb15(76)
      acd15(26)=abb15(14)
      acd15(27)=abb15(50)
      acd15(28)=abb15(25)
      acd15(29)=abb15(27)
      acd15(30)=abb15(32)
      acd15(31)=abb15(26)
      acd15(32)=abb15(39)
      acd15(33)=abb15(12)
      acd15(34)=abb15(57)
      acd15(35)=abb15(45)
      acd15(36)=dotproduct(k5,qshift)
      acd15(37)=abb15(61)
      acd15(38)=abb15(34)
      acd15(39)=abb15(40)
      acd15(40)=abb15(31)
      acd15(41)=abb15(17)
      acd15(42)=abb15(19)
      acd15(43)=abb15(68)
      acd15(44)=abb15(49)
      acd15(45)=dotproduct(qshift,spvak1l4)
      acd15(46)=abb15(51)
      acd15(47)=dotproduct(qshift,spvak2l4)
      acd15(48)=abb15(103)
      acd15(49)=dotproduct(qshift,spval4k1)
      acd15(50)=abb15(42)
      acd15(51)=abb15(36)
      acd15(52)=abb15(43)
      acd15(53)=abb15(22)
      acd15(54)=abb15(30)
      acd15(55)=abb15(13)
      acd15(56)=abb15(18)
      acd15(57)=abb15(106)
      acd15(58)=abb15(75)
      acd15(59)=dotproduct(qshift,spvak1k2)
      acd15(60)=abb15(28)
      acd15(61)=dotproduct(qshift,spval3k2)
      acd15(62)=abb15(98)
      acd15(63)=dotproduct(qshift,spval4k2)
      acd15(64)=abb15(96)
      acd15(65)=abb15(23)
      acd15(66)=abb15(29)
      acd15(67)=abb15(10)
      acd15(68)=abb15(35)
      acd15(69)=abb15(11)
      acd15(70)=abb15(20)
      acd15(71)=abb15(48)
      acd15(72)=abb15(60)
      acd15(73)=abb15(46)
      acd15(74)=abb15(21)
      acd15(75)=abb15(73)
      acd15(76)=abb15(52)
      acd15(77)=abb15(24)
      acd15(78)=-acd15(6)+acd15(1)
      acd15(78)=acd15(4)*acd15(78)
      acd15(79)=acd15(18)*acd15(38)
      acd15(78)=acd15(79)-acd15(39)+acd15(78)
      acd15(78)=acd15(2)*acd15(78)
      acd15(79)=acd15(63)*acd15(64)
      acd15(80)=acd15(61)*acd15(62)
      acd15(81)=acd15(59)*acd15(60)
      acd15(82)=acd15(1)*acd15(5)
      acd15(83)=acd15(49)*acd15(58)
      acd15(84)=acd15(47)*acd15(57)
      acd15(85)=acd15(45)*acd15(56)
      acd15(86)=acd15(22)*acd15(55)
      acd15(87)=acd15(20)*acd15(54)
      acd15(88)=acd15(14)*acd15(52)
      acd15(89)=acd15(8)*acd15(27)
      acd15(90)=acd15(18)*acd15(53)
      acd15(91)=acd15(10)*acd15(29)
      acd15(92)=acd15(6)*acd15(13)
      acd15(78)=acd15(78)+acd15(92)+acd15(91)+acd15(90)+acd15(89)+acd15(88)+acd&
      &15(87)+acd15(86)+acd15(85)+acd15(84)+acd15(83)+acd15(82)+acd15(81)+acd15&
      &(80)-acd15(65)+acd15(79)
      acd15(78)=acd15(3)*acd15(78)
      acd15(79)=acd15(2)+acd15(8)-acd15(36)
      acd15(79)=acd15(26)*acd15(79)
      acd15(80)=-acd15(49)*acd15(50)
      acd15(81)=-acd15(47)*acd15(48)
      acd15(82)=-acd15(45)*acd15(46)
      acd15(83)=-acd15(16)*acd15(41)
      acd15(84)=-acd15(22)*acd15(44)
      acd15(85)=acd15(20)*acd15(43)
      acd15(86)=-acd15(14)*acd15(40)
      acd15(87)=-acd15(18)*acd15(42)
      acd15(88)=-acd15(10)*acd15(25)
      acd15(89)=-acd15(6)*acd15(12)
      acd15(79)=acd15(89)+acd15(88)+acd15(87)+acd15(86)+acd15(85)+acd15(84)+acd&
      &15(83)+acd15(82)+acd15(81)+acd15(51)+acd15(80)+acd15(79)
      acd15(79)=acd15(2)*acd15(79)
      acd15(80)=acd15(16)*acd15(17)
      acd15(81)=acd15(22)*acd15(23)
      acd15(82)=acd15(20)*acd15(21)
      acd15(83)=acd15(14)*acd15(15)
      acd15(84)=acd15(8)*acd15(9)
      acd15(85)=acd15(18)*acd15(19)
      acd15(86)=acd15(10)*acd15(11)
      acd15(87)=acd15(6)*acd15(7)
      acd15(80)=acd15(87)+acd15(86)+acd15(85)+acd15(84)+acd15(83)+acd15(82)+acd&
      &15(81)-acd15(24)+acd15(80)
      acd15(80)=acd15(6)*acd15(80)
      acd15(81)=acd15(16)*acd15(31)
      acd15(82)=acd15(22)*acd15(34)
      acd15(83)=acd15(20)*acd15(33)
      acd15(84)=acd15(14)*acd15(30)
      acd15(85)=-acd15(8)*acd15(25)
      acd15(86)=acd15(18)*acd15(32)
      acd15(81)=acd15(86)+acd15(85)+acd15(84)+acd15(83)+acd15(82)-acd15(35)+acd&
      &15(81)
      acd15(81)=acd15(10)*acd15(81)
      acd15(82)=-acd15(63)*acd15(76)
      acd15(83)=-acd15(61)*acd15(75)
      acd15(84)=-acd15(59)*acd15(74)
      acd15(85)=-acd15(36)*acd15(37)
      acd15(86)=-acd15(49)*acd15(73)
      acd15(87)=-acd15(47)*acd15(72)
      acd15(88)=-acd15(45)*acd15(71)
      acd15(89)=-acd15(16)*acd15(67)
      acd15(90)=-acd15(22)*acd15(70)
      acd15(91)=-acd15(20)*acd15(69)
      acd15(92)=-acd15(14)*acd15(66)
      acd15(93)=-acd15(8)*acd15(28)
      acd15(94)=-acd15(18)*acd15(68)
      brack=acd15(77)+acd15(78)+acd15(79)+acd15(80)+acd15(81)+acd15(82)+acd15(8&
      &3)+acd15(84)+acd15(85)+acd15(86)+acd15(87)+acd15(88)+acd15(89)+acd15(90)&
      &+acd15(91)+acd15(92)+acd15(93)+acd15(94)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd15h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(115) :: acd15
      complex(ki) :: brack
      acd15(1)=k1(iv1)
      acd15(2)=dotproduct(qshift,qshift)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(80)
      acd15(5)=abb15(95)
      acd15(6)=k2(iv1)
      acd15(7)=dotproduct(k2,qshift)
      acd15(8)=abb15(84)
      acd15(9)=dotproduct(l3,qshift)
      acd15(10)=abb15(81)
      acd15(11)=dotproduct(l4,qshift)
      acd15(12)=abb15(56)
      acd15(13)=abb15(41)
      acd15(14)=abb15(69)
      acd15(15)=dotproduct(qshift,spvak1l3)
      acd15(16)=abb15(33)
      acd15(17)=dotproduct(qshift,spvak1k5)
      acd15(18)=abb15(38)
      acd15(19)=dotproduct(qshift,spvak2k1)
      acd15(20)=abb15(63)
      acd15(21)=dotproduct(qshift,spvak2l3)
      acd15(22)=abb15(16)
      acd15(23)=dotproduct(qshift,spval3k1)
      acd15(24)=abb15(78)
      acd15(25)=abb15(44)
      acd15(26)=l3(iv1)
      acd15(27)=abb15(76)
      acd15(28)=abb15(14)
      acd15(29)=abb15(50)
      acd15(30)=abb15(25)
      acd15(31)=l4(iv1)
      acd15(32)=abb15(27)
      acd15(33)=abb15(32)
      acd15(34)=abb15(26)
      acd15(35)=abb15(39)
      acd15(36)=abb15(12)
      acd15(37)=abb15(57)
      acd15(38)=abb15(45)
      acd15(39)=k5(iv1)
      acd15(40)=abb15(61)
      acd15(41)=qshift(iv1)
      acd15(42)=dotproduct(k1,qshift)
      acd15(43)=dotproduct(k5,qshift)
      acd15(44)=abb15(34)
      acd15(45)=abb15(40)
      acd15(46)=abb15(31)
      acd15(47)=abb15(17)
      acd15(48)=abb15(19)
      acd15(49)=abb15(68)
      acd15(50)=abb15(49)
      acd15(51)=dotproduct(qshift,spvak1l4)
      acd15(52)=abb15(51)
      acd15(53)=dotproduct(qshift,spvak2l4)
      acd15(54)=abb15(103)
      acd15(55)=dotproduct(qshift,spval4k1)
      acd15(56)=abb15(42)
      acd15(57)=abb15(36)
      acd15(58)=spvak2k5(iv1)
      acd15(59)=abb15(43)
      acd15(60)=abb15(22)
      acd15(61)=abb15(30)
      acd15(62)=abb15(13)
      acd15(63)=abb15(18)
      acd15(64)=abb15(106)
      acd15(65)=abb15(75)
      acd15(66)=dotproduct(qshift,spvak1k2)
      acd15(67)=abb15(28)
      acd15(68)=dotproduct(qshift,spval3k2)
      acd15(69)=abb15(98)
      acd15(70)=dotproduct(qshift,spval4k2)
      acd15(71)=abb15(96)
      acd15(72)=abb15(23)
      acd15(73)=spvak1l3(iv1)
      acd15(74)=abb15(29)
      acd15(75)=spvak1k5(iv1)
      acd15(76)=abb15(10)
      acd15(77)=spvak2k1(iv1)
      acd15(78)=abb15(35)
      acd15(79)=spvak2l3(iv1)
      acd15(80)=abb15(11)
      acd15(81)=spval3k1(iv1)
      acd15(82)=abb15(20)
      acd15(83)=spvak1l4(iv1)
      acd15(84)=abb15(48)
      acd15(85)=spvak2l4(iv1)
      acd15(86)=abb15(60)
      acd15(87)=spval4k1(iv1)
      acd15(88)=abb15(46)
      acd15(89)=spvak1k2(iv1)
      acd15(90)=abb15(21)
      acd15(91)=spval3k2(iv1)
      acd15(92)=abb15(73)
      acd15(93)=spval4k2(iv1)
      acd15(94)=abb15(52)
      acd15(95)=-acd15(42)+acd15(7)
      acd15(95)=acd15(4)*acd15(95)
      acd15(96)=acd15(19)*acd15(44)
      acd15(95)=-acd15(96)+acd15(45)+acd15(95)
      acd15(96)=2.0_ki*acd15(41)
      acd15(97)=-acd15(95)*acd15(96)
      acd15(98)=-acd15(6)+acd15(1)
      acd15(98)=acd15(4)*acd15(98)
      acd15(99)=acd15(77)*acd15(44)
      acd15(98)=acd15(99)+acd15(98)
      acd15(98)=acd15(2)*acd15(98)
      acd15(99)=acd15(71)*acd15(93)
      acd15(100)=acd15(69)*acd15(91)
      acd15(101)=acd15(67)*acd15(89)
      acd15(102)=acd15(1)*acd15(5)
      acd15(103)=acd15(87)*acd15(65)
      acd15(104)=acd15(85)*acd15(64)
      acd15(105)=acd15(83)*acd15(63)
      acd15(106)=acd15(81)*acd15(62)
      acd15(107)=acd15(79)*acd15(61)
      acd15(108)=acd15(73)*acd15(59)
      acd15(109)=acd15(26)*acd15(29)
      acd15(110)=acd15(77)*acd15(60)
      acd15(111)=acd15(31)*acd15(32)
      acd15(112)=acd15(6)*acd15(14)
      acd15(97)=acd15(98)+acd15(97)+acd15(112)+acd15(111)+acd15(110)+acd15(109)&
      &+acd15(108)+acd15(107)+acd15(106)+acd15(105)+acd15(104)+acd15(103)+acd15&
      &(102)+acd15(101)+acd15(99)+acd15(100)
      acd15(97)=acd15(3)*acd15(97)
      acd15(98)=acd15(71)*acd15(70)
      acd15(99)=acd15(69)*acd15(68)
      acd15(100)=acd15(67)*acd15(66)
      acd15(101)=acd15(55)*acd15(65)
      acd15(102)=acd15(53)*acd15(64)
      acd15(103)=acd15(51)*acd15(63)
      acd15(104)=acd15(42)*acd15(5)
      acd15(105)=acd15(23)*acd15(62)
      acd15(106)=acd15(21)*acd15(61)
      acd15(107)=acd15(15)*acd15(59)
      acd15(108)=acd15(9)*acd15(29)
      acd15(109)=acd15(19)*acd15(60)
      acd15(110)=acd15(11)*acd15(32)
      acd15(111)=acd15(7)*acd15(14)
      acd15(98)=acd15(111)+acd15(110)+acd15(109)+acd15(108)+acd15(107)+acd15(10&
      &6)+acd15(105)+acd15(104)+acd15(103)+acd15(102)+acd15(101)+acd15(100)+acd&
      &15(99)-acd15(72)+acd15(98)
      acd15(98)=acd15(58)*acd15(98)
      acd15(95)=-acd15(58)*acd15(95)
      acd15(99)=4.0_ki*acd15(41)+acd15(26)-acd15(39)
      acd15(99)=acd15(28)*acd15(99)
      acd15(100)=-acd15(87)*acd15(56)
      acd15(101)=-acd15(85)*acd15(54)
      acd15(102)=-acd15(83)*acd15(52)
      acd15(103)=-acd15(75)*acd15(47)
      acd15(104)=-acd15(81)*acd15(50)
      acd15(105)=acd15(79)*acd15(49)
      acd15(106)=-acd15(73)*acd15(46)
      acd15(107)=-acd15(77)*acd15(48)
      acd15(108)=-acd15(31)*acd15(27)
      acd15(109)=-acd15(6)*acd15(13)
      acd15(95)=acd15(95)+acd15(109)+acd15(108)+acd15(107)+acd15(106)+acd15(105&
      &)+acd15(104)+acd15(103)+acd15(102)+acd15(100)+acd15(101)+acd15(99)
      acd15(95)=acd15(2)*acd15(95)
      acd15(99)=-acd15(55)*acd15(56)
      acd15(100)=-acd15(53)*acd15(54)
      acd15(101)=-acd15(51)*acd15(52)
      acd15(102)=-acd15(17)*acd15(47)
      acd15(103)=-acd15(23)*acd15(50)
      acd15(104)=acd15(21)*acd15(49)
      acd15(105)=-acd15(15)*acd15(46)
      acd15(106)=-acd15(43)+acd15(9)
      acd15(106)=acd15(28)*acd15(106)
      acd15(107)=-acd15(19)*acd15(48)
      acd15(108)=-acd15(11)*acd15(27)
      acd15(109)=-acd15(7)*acd15(13)
      acd15(99)=acd15(109)+acd15(108)+acd15(107)+acd15(106)+acd15(105)+acd15(10&
      &4)+acd15(103)+acd15(102)+acd15(101)+acd15(100)+acd15(57)+acd15(99)
      acd15(96)=acd15(99)*acd15(96)
      acd15(99)=acd15(17)*acd15(18)
      acd15(100)=acd15(23)*acd15(24)
      acd15(101)=acd15(21)*acd15(22)
      acd15(102)=acd15(15)*acd15(16)
      acd15(103)=acd15(9)*acd15(10)
      acd15(104)=acd15(19)*acd15(20)
      acd15(105)=acd15(11)*acd15(12)
      acd15(106)=acd15(7)*acd15(8)
      acd15(99)=2.0_ki*acd15(106)+acd15(105)+acd15(104)+acd15(103)+acd15(102)+a&
      &cd15(101)+acd15(100)-acd15(25)+acd15(99)
      acd15(99)=acd15(6)*acd15(99)
      acd15(100)=acd15(75)*acd15(18)
      acd15(101)=acd15(81)*acd15(24)
      acd15(102)=acd15(79)*acd15(22)
      acd15(103)=acd15(73)*acd15(16)
      acd15(104)=acd15(26)*acd15(10)
      acd15(105)=acd15(77)*acd15(20)
      acd15(106)=acd15(31)*acd15(12)
      acd15(100)=acd15(106)+acd15(105)+acd15(104)+acd15(103)+acd15(102)+acd15(1&
      &00)+acd15(101)
      acd15(100)=acd15(7)*acd15(100)
      acd15(101)=acd15(75)*acd15(34)
      acd15(102)=acd15(81)*acd15(37)
      acd15(103)=acd15(79)*acd15(36)
      acd15(104)=acd15(73)*acd15(33)
      acd15(105)=-acd15(26)*acd15(27)
      acd15(106)=acd15(77)*acd15(35)
      acd15(101)=acd15(106)+acd15(105)+acd15(104)+acd15(103)+acd15(101)+acd15(1&
      &02)
      acd15(101)=acd15(11)*acd15(101)
      acd15(102)=acd15(17)*acd15(34)
      acd15(103)=acd15(23)*acd15(37)
      acd15(104)=acd15(21)*acd15(36)
      acd15(105)=acd15(15)*acd15(33)
      acd15(106)=-acd15(9)*acd15(27)
      acd15(107)=acd15(19)*acd15(35)
      acd15(102)=acd15(107)+acd15(106)+acd15(105)+acd15(104)+acd15(103)-acd15(3&
      &8)+acd15(102)
      acd15(102)=acd15(31)*acd15(102)
      acd15(103)=-acd15(93)*acd15(94)
      acd15(104)=-acd15(91)*acd15(92)
      acd15(105)=-acd15(89)*acd15(90)
      acd15(106)=-acd15(39)*acd15(40)
      acd15(107)=-acd15(87)*acd15(88)
      acd15(108)=-acd15(85)*acd15(86)
      acd15(109)=-acd15(83)*acd15(84)
      acd15(110)=-acd15(75)*acd15(76)
      acd15(111)=-acd15(81)*acd15(82)
      acd15(112)=-acd15(79)*acd15(80)
      acd15(113)=-acd15(73)*acd15(74)
      acd15(114)=-acd15(26)*acd15(30)
      acd15(115)=-acd15(77)*acd15(78)
      brack=acd15(95)+acd15(96)+acd15(97)+acd15(98)+acd15(99)+acd15(100)+acd15(&
      &101)+acd15(102)+acd15(103)+acd15(104)+acd15(105)+acd15(106)+acd15(107)+a&
      &cd15(108)+acd15(109)+acd15(110)+acd15(111)+acd15(112)+acd15(113)+acd15(1&
      &14)+acd15(115)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd15h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(116) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=dotproduct(k1,qshift)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(80)
      acd15(5)=dotproduct(k2,qshift)
      acd15(6)=abb15(41)
      acd15(7)=dotproduct(l3,qshift)
      acd15(8)=abb15(14)
      acd15(9)=dotproduct(l4,qshift)
      acd15(10)=abb15(76)
      acd15(11)=dotproduct(k5,qshift)
      acd15(12)=dotproduct(qshift,qshift)
      acd15(13)=dotproduct(qshift,spvak2k1)
      acd15(14)=abb15(34)
      acd15(15)=abb15(40)
      acd15(16)=dotproduct(qshift,spvak1l3)
      acd15(17)=abb15(31)
      acd15(18)=dotproduct(qshift,spvak1l4)
      acd15(19)=abb15(51)
      acd15(20)=dotproduct(qshift,spvak1k5)
      acd15(21)=abb15(17)
      acd15(22)=abb15(19)
      acd15(23)=dotproduct(qshift,spvak2l3)
      acd15(24)=abb15(68)
      acd15(25)=dotproduct(qshift,spvak2l4)
      acd15(26)=abb15(103)
      acd15(27)=dotproduct(qshift,spval3k1)
      acd15(28)=abb15(49)
      acd15(29)=dotproduct(qshift,spval4k1)
      acd15(30)=abb15(42)
      acd15(31)=abb15(36)
      acd15(32)=k1(iv1)
      acd15(33)=qshift(iv2)
      acd15(34)=spvak2k5(iv2)
      acd15(35)=abb15(95)
      acd15(36)=k1(iv2)
      acd15(37)=qshift(iv1)
      acd15(38)=spvak2k5(iv1)
      acd15(39)=k2(iv1)
      acd15(40)=k2(iv2)
      acd15(41)=abb15(84)
      acd15(42)=l3(iv2)
      acd15(43)=abb15(81)
      acd15(44)=l4(iv2)
      acd15(45)=abb15(56)
      acd15(46)=abb15(69)
      acd15(47)=spvak1l3(iv2)
      acd15(48)=abb15(33)
      acd15(49)=spvak1k5(iv2)
      acd15(50)=abb15(38)
      acd15(51)=spvak2k1(iv2)
      acd15(52)=abb15(63)
      acd15(53)=spvak2l3(iv2)
      acd15(54)=abb15(16)
      acd15(55)=spval3k1(iv2)
      acd15(56)=abb15(78)
      acd15(57)=l3(iv1)
      acd15(58)=l4(iv1)
      acd15(59)=spvak1l3(iv1)
      acd15(60)=spvak1k5(iv1)
      acd15(61)=spvak2k1(iv1)
      acd15(62)=spvak2l3(iv1)
      acd15(63)=spval3k1(iv1)
      acd15(64)=abb15(50)
      acd15(65)=abb15(27)
      acd15(66)=abb15(32)
      acd15(67)=abb15(26)
      acd15(68)=abb15(39)
      acd15(69)=abb15(12)
      acd15(70)=abb15(57)
      acd15(71)=k5(iv1)
      acd15(72)=k5(iv2)
      acd15(73)=spvak1l4(iv2)
      acd15(74)=spvak2l4(iv2)
      acd15(75)=spval4k1(iv2)
      acd15(76)=spvak1l4(iv1)
      acd15(77)=spvak2l4(iv1)
      acd15(78)=spval4k1(iv1)
      acd15(79)=abb15(43)
      acd15(80)=abb15(18)
      acd15(81)=abb15(22)
      acd15(82)=abb15(30)
      acd15(83)=abb15(106)
      acd15(84)=abb15(13)
      acd15(85)=abb15(75)
      acd15(86)=spvak1k2(iv2)
      acd15(87)=abb15(28)
      acd15(88)=spval3k2(iv2)
      acd15(89)=abb15(98)
      acd15(90)=spval4k2(iv2)
      acd15(91)=abb15(96)
      acd15(92)=spvak1k2(iv1)
      acd15(93)=spval3k2(iv1)
      acd15(94)=spval4k2(iv1)
      acd15(95)=acd15(5)-acd15(2)
      acd15(95)=acd15(95)*acd15(4)
      acd15(96)=acd15(14)*acd15(13)
      acd15(95)=-acd15(95)+acd15(96)-acd15(15)
      acd15(96)=2.0_ki*acd15(33)
      acd15(97)=acd15(95)*acd15(96)
      acd15(98)=acd15(12)*acd15(14)
      acd15(98)=acd15(98)+acd15(81)
      acd15(99)=acd15(51)*acd15(98)
      acd15(100)=acd15(91)*acd15(90)
      acd15(101)=acd15(89)*acd15(88)
      acd15(102)=acd15(87)*acd15(86)
      acd15(103)=acd15(75)*acd15(85)
      acd15(104)=acd15(74)*acd15(83)
      acd15(105)=acd15(73)*acd15(80)
      acd15(106)=acd15(36)*acd15(35)
      acd15(107)=acd15(55)*acd15(84)
      acd15(108)=acd15(53)*acd15(82)
      acd15(109)=acd15(47)*acd15(79)
      acd15(110)=acd15(42)*acd15(64)
      acd15(111)=acd15(44)*acd15(65)
      acd15(112)=acd15(40)*acd15(46)
      acd15(113)=acd15(40)-acd15(36)
      acd15(113)=acd15(113)*acd15(4)
      acd15(114)=-acd15(12)*acd15(113)
      acd15(97)=acd15(97)+acd15(114)+acd15(112)+acd15(111)+acd15(110)+acd15(109&
      &)+acd15(108)+acd15(107)+acd15(106)+acd15(105)+acd15(104)+acd15(103)+acd1&
      &5(102)+acd15(100)+acd15(101)+acd15(99)
      acd15(97)=acd15(38)*acd15(97)
      acd15(99)=2.0_ki*acd15(37)
      acd15(100)=acd15(95)*acd15(99)
      acd15(98)=acd15(61)*acd15(98)
      acd15(101)=acd15(91)*acd15(94)
      acd15(102)=acd15(89)*acd15(93)
      acd15(103)=acd15(87)*acd15(92)
      acd15(104)=acd15(78)*acd15(85)
      acd15(105)=acd15(77)*acd15(83)
      acd15(106)=acd15(76)*acd15(80)
      acd15(107)=acd15(32)*acd15(35)
      acd15(108)=acd15(63)*acd15(84)
      acd15(109)=acd15(62)*acd15(82)
      acd15(110)=acd15(59)*acd15(79)
      acd15(111)=acd15(57)*acd15(64)
      acd15(112)=acd15(58)*acd15(65)
      acd15(114)=acd15(39)*acd15(46)
      acd15(115)=acd15(39)-acd15(32)
      acd15(115)=acd15(115)*acd15(4)
      acd15(116)=-acd15(12)*acd15(115)
      acd15(98)=acd15(100)+acd15(116)+acd15(114)+acd15(112)+acd15(111)+acd15(11&
      &0)+acd15(109)+acd15(108)+acd15(107)+acd15(106)+acd15(105)+acd15(104)+acd&
      &15(103)+acd15(101)+acd15(102)+acd15(98)
      acd15(98)=acd15(34)*acd15(98)
      acd15(95)=acd15(3)*acd15(95)
      acd15(100)=-acd15(30)*acd15(29)
      acd15(101)=-acd15(28)*acd15(27)
      acd15(102)=-acd15(26)*acd15(25)
      acd15(103)=acd15(24)*acd15(23)
      acd15(104)=-acd15(21)*acd15(20)
      acd15(105)=-acd15(19)*acd15(18)
      acd15(106)=-acd15(17)*acd15(16)
      acd15(107)=-acd15(13)*acd15(22)
      acd15(108)=-acd15(5)*acd15(6)
      acd15(109)=-acd15(10)*acd15(9)
      acd15(110)=2.0_ki*acd15(12)-acd15(11)+acd15(7)
      acd15(110)=acd15(8)*acd15(110)
      acd15(95)=acd15(110)+acd15(109)+acd15(108)+acd15(107)+acd15(106)+acd15(10&
      &5)+acd15(104)+acd15(103)+acd15(102)+acd15(101)+acd15(31)+acd15(100)+acd1&
      &5(95)
      acd15(95)=acd15(1)*acd15(95)
      acd15(100)=acd15(3)*acd15(14)
      acd15(100)=acd15(100)-acd15(22)
      acd15(101)=acd15(51)*acd15(100)
      acd15(102)=-acd15(30)*acd15(75)
      acd15(103)=-acd15(26)*acd15(74)
      acd15(104)=-acd15(21)*acd15(49)
      acd15(105)=-acd15(19)*acd15(73)
      acd15(106)=-acd15(55)*acd15(28)
      acd15(107)=acd15(53)*acd15(24)
      acd15(108)=-acd15(47)*acd15(17)
      acd15(109)=-acd15(72)+acd15(42)
      acd15(109)=acd15(8)*acd15(109)
      acd15(110)=-acd15(44)*acd15(10)
      acd15(111)=-acd15(40)*acd15(6)
      acd15(112)=-acd15(3)*acd15(113)
      acd15(101)=acd15(112)+acd15(111)+acd15(110)+acd15(109)+acd15(108)+acd15(1&
      &07)+acd15(106)+acd15(105)+acd15(104)+acd15(102)+acd15(103)+acd15(101)
      acd15(99)=acd15(101)*acd15(99)
      acd15(100)=acd15(61)*acd15(100)
      acd15(101)=4.0_ki*acd15(37)-acd15(71)+acd15(57)
      acd15(101)=acd15(8)*acd15(101)
      acd15(102)=-acd15(30)*acd15(78)
      acd15(103)=-acd15(26)*acd15(77)
      acd15(104)=-acd15(21)*acd15(60)
      acd15(105)=-acd15(19)*acd15(76)
      acd15(106)=-acd15(63)*acd15(28)
      acd15(107)=acd15(62)*acd15(24)
      acd15(108)=-acd15(59)*acd15(17)
      acd15(109)=-acd15(58)*acd15(10)
      acd15(110)=-acd15(39)*acd15(6)
      acd15(111)=-acd15(3)*acd15(115)
      acd15(100)=acd15(111)+acd15(110)+acd15(109)+acd15(108)+acd15(107)+acd15(1&
      &06)+acd15(105)+acd15(104)+acd15(102)+acd15(103)+acd15(101)+acd15(100)
      acd15(96)=acd15(100)*acd15(96)
      acd15(100)=acd15(49)*acd15(50)
      acd15(101)=acd15(55)*acd15(56)
      acd15(102)=acd15(53)*acd15(54)
      acd15(103)=acd15(47)*acd15(48)
      acd15(104)=acd15(42)*acd15(43)
      acd15(105)=acd15(51)*acd15(52)
      acd15(106)=acd15(44)*acd15(45)
      acd15(107)=acd15(40)*acd15(41)
      acd15(100)=2.0_ki*acd15(107)+acd15(106)+acd15(105)+acd15(104)+acd15(103)+&
      &acd15(102)+acd15(100)+acd15(101)
      acd15(100)=acd15(39)*acd15(100)
      acd15(101)=acd15(60)*acd15(50)
      acd15(102)=acd15(63)*acd15(56)
      acd15(103)=acd15(62)*acd15(54)
      acd15(104)=acd15(59)*acd15(48)
      acd15(105)=acd15(57)*acd15(43)
      acd15(106)=acd15(61)*acd15(52)
      acd15(107)=acd15(58)*acd15(45)
      acd15(101)=acd15(107)+acd15(106)+acd15(105)+acd15(104)+acd15(103)+acd15(1&
      &01)+acd15(102)
      acd15(101)=acd15(40)*acd15(101)
      acd15(102)=acd15(49)*acd15(67)
      acd15(103)=acd15(55)*acd15(70)
      acd15(104)=acd15(53)*acd15(69)
      acd15(105)=acd15(47)*acd15(66)
      acd15(106)=-acd15(10)*acd15(42)
      acd15(107)=acd15(51)*acd15(68)
      acd15(102)=acd15(107)+acd15(106)+acd15(105)+acd15(104)+acd15(102)+acd15(1&
      &03)
      acd15(102)=acd15(58)*acd15(102)
      acd15(103)=acd15(60)*acd15(67)
      acd15(104)=acd15(63)*acd15(70)
      acd15(105)=acd15(62)*acd15(69)
      acd15(106)=acd15(59)*acd15(66)
      acd15(107)=-acd15(10)*acd15(57)
      acd15(108)=acd15(61)*acd15(68)
      acd15(103)=acd15(108)+acd15(107)+acd15(106)+acd15(105)+acd15(103)+acd15(1&
      &04)
      acd15(103)=acd15(44)*acd15(103)
      brack=2.0_ki*acd15(95)+acd15(96)+acd15(97)+acd15(98)+acd15(99)+acd15(100)&
      &+acd15(101)+acd15(102)+acd15(103)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd15h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=k1(iv3)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(80)
      acd15(5)=k2(iv3)
      acd15(6)=abb15(41)
      acd15(7)=l3(iv3)
      acd15(8)=abb15(14)
      acd15(9)=l4(iv3)
      acd15(10)=abb15(76)
      acd15(11)=k5(iv3)
      acd15(12)=qshift(iv3)
      acd15(13)=spvak2k5(iv3)
      acd15(14)=dotproduct(k1,qshift)
      acd15(15)=dotproduct(k2,qshift)
      acd15(16)=dotproduct(qshift,spvak2k1)
      acd15(17)=abb15(34)
      acd15(18)=abb15(40)
      acd15(19)=spvak1l3(iv3)
      acd15(20)=abb15(31)
      acd15(21)=spvak1l4(iv3)
      acd15(22)=abb15(51)
      acd15(23)=spvak1k5(iv3)
      acd15(24)=abb15(17)
      acd15(25)=spvak2k1(iv3)
      acd15(26)=abb15(19)
      acd15(27)=spvak2l3(iv3)
      acd15(28)=abb15(68)
      acd15(29)=spvak2l4(iv3)
      acd15(30)=abb15(103)
      acd15(31)=spval3k1(iv3)
      acd15(32)=abb15(49)
      acd15(33)=spval4k1(iv3)
      acd15(34)=abb15(42)
      acd15(35)=d(iv1,iv3)
      acd15(36)=k1(iv2)
      acd15(37)=k2(iv2)
      acd15(38)=l3(iv2)
      acd15(39)=l4(iv2)
      acd15(40)=k5(iv2)
      acd15(41)=qshift(iv2)
      acd15(42)=spvak2k5(iv2)
      acd15(43)=spvak1l3(iv2)
      acd15(44)=spvak1l4(iv2)
      acd15(45)=spvak1k5(iv2)
      acd15(46)=spvak2k1(iv2)
      acd15(47)=spvak2l3(iv2)
      acd15(48)=spvak2l4(iv2)
      acd15(49)=spval3k1(iv2)
      acd15(50)=spval4k1(iv2)
      acd15(51)=d(iv2,iv3)
      acd15(52)=k1(iv1)
      acd15(53)=k2(iv1)
      acd15(54)=l3(iv1)
      acd15(55)=l4(iv1)
      acd15(56)=k5(iv1)
      acd15(57)=qshift(iv1)
      acd15(58)=spvak2k5(iv1)
      acd15(59)=spvak1l3(iv1)
      acd15(60)=spvak1l4(iv1)
      acd15(61)=spvak1k5(iv1)
      acd15(62)=spvak2k1(iv1)
      acd15(63)=spvak2l3(iv1)
      acd15(64)=spvak2l4(iv1)
      acd15(65)=spval3k1(iv1)
      acd15(66)=spval4k1(iv1)
      acd15(67)=acd15(3)*acd15(62)
      acd15(68)=acd15(58)*acd15(16)
      acd15(67)=acd15(67)+acd15(68)
      acd15(67)=acd15(17)*acd15(67)
      acd15(68)=-acd15(34)*acd15(66)
      acd15(69)=-acd15(32)*acd15(65)
      acd15(70)=-acd15(30)*acd15(64)
      acd15(71)=acd15(28)*acd15(63)
      acd15(72)=-acd15(24)*acd15(61)
      acd15(73)=-acd15(22)*acd15(60)
      acd15(74)=-acd15(20)*acd15(59)
      acd15(75)=-acd15(10)*acd15(55)
      acd15(76)=-acd15(62)*acd15(26)
      acd15(77)=-acd15(53)*acd15(6)
      acd15(78)=4.0_ki*acd15(57)-acd15(56)+acd15(54)
      acd15(78)=acd15(8)*acd15(78)
      acd15(79)=-acd15(58)*acd15(18)
      acd15(67)=acd15(67)+acd15(79)+acd15(78)+acd15(77)+acd15(76)+acd15(75)+acd&
      &15(74)+acd15(73)+acd15(72)+acd15(71)+acd15(70)+acd15(68)+acd15(69)
      acd15(67)=acd15(51)*acd15(67)
      acd15(68)=acd15(3)*acd15(46)
      acd15(69)=acd15(42)*acd15(16)
      acd15(68)=acd15(68)+acd15(69)
      acd15(68)=acd15(17)*acd15(68)
      acd15(69)=-acd15(34)*acd15(50)
      acd15(70)=-acd15(32)*acd15(49)
      acd15(71)=-acd15(30)*acd15(48)
      acd15(72)=acd15(28)*acd15(47)
      acd15(73)=-acd15(24)*acd15(45)
      acd15(74)=-acd15(22)*acd15(44)
      acd15(75)=-acd15(20)*acd15(43)
      acd15(76)=-acd15(10)*acd15(39)
      acd15(77)=-acd15(46)*acd15(26)
      acd15(78)=-acd15(37)*acd15(6)
      acd15(79)=4.0_ki*acd15(41)-acd15(40)+acd15(38)
      acd15(79)=acd15(8)*acd15(79)
      acd15(80)=-acd15(42)*acd15(18)
      acd15(68)=acd15(68)+acd15(80)+acd15(79)+acd15(78)+acd15(77)+acd15(76)+acd&
      &15(75)+acd15(74)+acd15(73)+acd15(72)+acd15(71)+acd15(69)+acd15(70)
      acd15(68)=acd15(35)*acd15(68)
      acd15(69)=acd15(3)*acd15(25)
      acd15(70)=acd15(13)*acd15(16)
      acd15(69)=acd15(69)+acd15(70)
      acd15(69)=acd15(17)*acd15(69)
      acd15(70)=-acd15(34)*acd15(33)
      acd15(71)=-acd15(32)*acd15(31)
      acd15(72)=-acd15(30)*acd15(29)
      acd15(73)=acd15(28)*acd15(27)
      acd15(74)=-acd15(24)*acd15(23)
      acd15(75)=-acd15(22)*acd15(21)
      acd15(76)=-acd15(20)*acd15(19)
      acd15(77)=-acd15(10)*acd15(9)
      acd15(78)=-acd15(25)*acd15(26)
      acd15(79)=-acd15(5)*acd15(6)
      acd15(80)=4.0_ki*acd15(12)-acd15(11)+acd15(7)
      acd15(80)=acd15(8)*acd15(80)
      acd15(81)=-acd15(13)*acd15(18)
      acd15(69)=acd15(69)+acd15(81)+acd15(80)+acd15(79)+acd15(78)+acd15(77)+acd&
      &15(76)+acd15(75)+acd15(74)+acd15(73)+acd15(72)+acd15(70)+acd15(71)
      acd15(69)=acd15(1)*acd15(69)
      acd15(70)=acd15(5)-acd15(2)
      acd15(71)=-acd15(41)*acd15(70)
      acd15(72)=acd15(37)-acd15(36)
      acd15(73)=-acd15(12)*acd15(72)
      acd15(71)=acd15(71)+acd15(73)
      acd15(71)=acd15(58)*acd15(71)
      acd15(73)=-acd15(57)*acd15(70)
      acd15(74)=acd15(53)-acd15(52)
      acd15(75)=-acd15(12)*acd15(74)
      acd15(73)=acd15(73)+acd15(75)
      acd15(73)=acd15(42)*acd15(73)
      acd15(75)=-acd15(57)*acd15(72)
      acd15(76)=-acd15(41)*acd15(74)
      acd15(75)=acd15(75)+acd15(76)
      acd15(75)=acd15(13)*acd15(75)
      acd15(74)=-acd15(3)*acd15(74)
      acd15(76)=acd15(14)-acd15(15)
      acd15(77)=acd15(58)*acd15(76)
      acd15(74)=acd15(74)+acd15(77)
      acd15(74)=acd15(51)*acd15(74)
      acd15(72)=-acd15(3)*acd15(72)
      acd15(77)=acd15(42)*acd15(76)
      acd15(72)=acd15(72)+acd15(77)
      acd15(72)=acd15(35)*acd15(72)
      acd15(70)=-acd15(3)*acd15(70)
      acd15(76)=acd15(13)*acd15(76)
      acd15(70)=acd15(70)+acd15(76)
      acd15(70)=acd15(1)*acd15(70)
      acd15(70)=acd15(70)+acd15(72)+acd15(74)+acd15(75)+acd15(71)+acd15(73)
      acd15(70)=acd15(4)*acd15(70)
      acd15(71)=acd15(41)*acd15(25)
      acd15(72)=acd15(12)*acd15(46)
      acd15(71)=acd15(71)+acd15(72)
      acd15(71)=acd15(58)*acd15(71)
      acd15(72)=acd15(57)*acd15(25)
      acd15(73)=acd15(12)*acd15(62)
      acd15(72)=acd15(72)+acd15(73)
      acd15(72)=acd15(42)*acd15(72)
      acd15(73)=acd15(57)*acd15(46)
      acd15(74)=acd15(41)*acd15(62)
      acd15(73)=acd15(73)+acd15(74)
      acd15(73)=acd15(13)*acd15(73)
      acd15(71)=acd15(73)+acd15(71)+acd15(72)
      acd15(71)=acd15(17)*acd15(71)
      acd15(67)=acd15(70)+acd15(69)+acd15(68)+acd15(71)+acd15(67)
      brack=2.0_ki*acd15(67)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd15h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=d(iv3,iv4)
      acd15(3)=abb15(14)
      acd15(4)=k1(iv3)
      acd15(5)=spvak2k5(iv4)
      acd15(6)=abb15(80)
      acd15(7)=k1(iv4)
      acd15(8)=spvak2k5(iv3)
      acd15(9)=k2(iv3)
      acd15(10)=k2(iv4)
      acd15(11)=spvak2k1(iv4)
      acd15(12)=abb15(34)
      acd15(13)=spvak2k1(iv3)
      acd15(14)=d(iv1,iv3)
      acd15(15)=d(iv2,iv4)
      acd15(16)=k1(iv2)
      acd15(17)=spvak2k5(iv2)
      acd15(18)=k2(iv2)
      acd15(19)=spvak2k1(iv2)
      acd15(20)=d(iv1,iv4)
      acd15(21)=d(iv2,iv3)
      acd15(22)=k1(iv1)
      acd15(23)=spvak2k5(iv1)
      acd15(24)=k2(iv1)
      acd15(25)=spvak2k1(iv1)
      acd15(26)=acd15(21)*acd15(11)
      acd15(27)=acd15(15)*acd15(13)
      acd15(28)=acd15(2)*acd15(19)
      acd15(26)=acd15(28)+acd15(26)+acd15(27)
      acd15(26)=acd15(23)*acd15(26)
      acd15(27)=acd15(20)*acd15(13)
      acd15(28)=acd15(14)*acd15(11)
      acd15(29)=acd15(2)*acd15(25)
      acd15(27)=acd15(29)+acd15(27)+acd15(28)
      acd15(27)=acd15(17)*acd15(27)
      acd15(28)=acd15(20)*acd15(19)
      acd15(29)=acd15(15)*acd15(25)
      acd15(30)=acd15(1)*acd15(11)
      acd15(28)=acd15(30)+acd15(28)+acd15(29)
      acd15(28)=acd15(8)*acd15(28)
      acd15(29)=acd15(21)*acd15(25)
      acd15(30)=acd15(14)*acd15(19)
      acd15(31)=acd15(1)*acd15(13)
      acd15(29)=acd15(31)+acd15(29)+acd15(30)
      acd15(29)=acd15(5)*acd15(29)
      acd15(26)=acd15(29)+acd15(28)+acd15(26)+acd15(27)
      acd15(26)=acd15(12)*acd15(26)
      acd15(27)=acd15(7)-acd15(10)
      acd15(28)=acd15(21)*acd15(27)
      acd15(29)=acd15(4)-acd15(9)
      acd15(30)=acd15(15)*acd15(29)
      acd15(31)=acd15(16)-acd15(18)
      acd15(32)=acd15(2)*acd15(31)
      acd15(28)=acd15(32)+acd15(28)+acd15(30)
      acd15(28)=acd15(23)*acd15(28)
      acd15(30)=acd15(20)*acd15(29)
      acd15(32)=acd15(14)*acd15(27)
      acd15(33)=acd15(22)-acd15(24)
      acd15(34)=acd15(2)*acd15(33)
      acd15(30)=acd15(34)+acd15(30)+acd15(32)
      acd15(30)=acd15(17)*acd15(30)
      acd15(32)=acd15(20)*acd15(31)
      acd15(34)=acd15(15)*acd15(33)
      acd15(27)=acd15(1)*acd15(27)
      acd15(27)=acd15(27)+acd15(32)+acd15(34)
      acd15(27)=acd15(8)*acd15(27)
      acd15(32)=acd15(21)*acd15(33)
      acd15(31)=acd15(14)*acd15(31)
      acd15(29)=acd15(1)*acd15(29)
      acd15(29)=acd15(29)+acd15(32)+acd15(31)
      acd15(29)=acd15(5)*acd15(29)
      acd15(27)=acd15(29)+acd15(27)+acd15(28)+acd15(30)
      acd15(27)=acd15(6)*acd15(27)
      acd15(28)=acd15(20)*acd15(21)
      acd15(29)=acd15(14)*acd15(15)
      acd15(30)=acd15(1)*acd15(2)
      acd15(28)=acd15(30)+acd15(28)+acd15(29)
      acd15(28)=acd15(3)*acd15(28)
      acd15(26)=acd15(27)+4.0_ki*acd15(28)+acd15(26)
      brack=2.0_ki*acd15(26)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd15h3_qp
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
!---#[ subroutine reconstruct_d15:
   subroutine     reconstruct_d15(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_15:
      coeffs%coeffs_15%c0 = derivative(czip)
      coeffs%coeffs_15%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_15%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_15%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_15%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_15%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_15%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_15%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_15%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_15%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_15%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_15%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_15%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_15%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_15%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_15%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_15%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_15%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_15%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_15%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_15%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_15%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_15%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_15%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_15%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_15%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_15%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_15%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_15%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_15%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_15%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_15%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_15%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_15%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_15%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_15%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_15%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_15%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_15%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_15%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_15%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_15%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_15%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_15%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_15%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_15%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_15%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_15%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_15%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_15%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_15%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_15%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_15%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_15%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_15%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_15%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_15%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_15%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_15%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_15%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_15%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_15%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_15%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_15%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_15%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_15%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_15%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_15%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_15%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_15%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_15:
   end subroutine reconstruct_d15
!---#] subroutine reconstruct_d15:
end module p0_gg_hhg_d15h3l1d_qp
