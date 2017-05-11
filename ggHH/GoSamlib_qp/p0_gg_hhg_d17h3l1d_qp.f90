module p0_gg_hhg_d17h3l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d17h3l1d.f90
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
   public :: derivative , reconstruct_d17
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(90) :: acd17
      complex(ki) :: brack
      acd17(1)=dotproduct(k1,qshift)
      acd17(2)=dotproduct(k5,qshift)
      acd17(3)=abb17(68)
      acd17(4)=dotproduct(qshift,qshift)
      acd17(5)=abb17(26)
      acd17(6)=dotproduct(qshift,spvak2k5)
      acd17(7)=abb17(23)
      acd17(8)=dotproduct(qshift,spval3k5)
      acd17(9)=abb17(75)
      acd17(10)=abb17(39)
      acd17(11)=dotproduct(k2,qshift)
      acd17(12)=abb17(65)
      acd17(13)=abb17(31)
      acd17(14)=abb17(17)
      acd17(15)=dotproduct(qshift,spvak1k5)
      acd17(16)=abb17(18)
      acd17(17)=abb17(42)
      acd17(18)=dotproduct(l3,qshift)
      acd17(19)=abb17(70)
      acd17(20)=abb17(43)
      acd17(21)=abb17(32)
      acd17(22)=abb17(69)
      acd17(23)=dotproduct(l4,qshift)
      acd17(24)=abb17(63)
      acd17(25)=abb17(15)
      acd17(26)=dotproduct(qshift,spvak2k1)
      acd17(27)=abb17(34)
      acd17(28)=abb17(53)
      acd17(29)=abb17(40)
      acd17(30)=abb17(74)
      acd17(31)=abb17(11)
      acd17(32)=abb17(28)
      acd17(33)=dotproduct(qshift,spvak2l3)
      acd17(34)=abb17(36)
      acd17(35)=dotproduct(qshift,spvak2l4)
      acd17(36)=abb17(59)
      acd17(37)=dotproduct(qshift,spval4k5)
      acd17(38)=abb17(64)
      acd17(39)=abb17(20)
      acd17(40)=abb17(79)
      acd17(41)=abb17(10)
      acd17(42)=abb17(12)
      acd17(43)=abb17(14)
      acd17(44)=abb17(49)
      acd17(45)=dotproduct(qshift,spval3k2)
      acd17(46)=abb17(77)
      acd17(47)=dotproduct(qshift,spval3l4)
      acd17(48)=abb17(72)
      acd17(49)=dotproduct(qshift,spval4k2)
      acd17(50)=abb17(52)
      acd17(51)=dotproduct(qshift,spval4l3)
      acd17(52)=abb17(48)
      acd17(53)=dotproduct(qshift,spvak5k2)
      acd17(54)=abb17(24)
      acd17(55)=dotproduct(qshift,spvak5l3)
      acd17(56)=abb17(62)
      acd17(57)=abb17(13)
      acd17(58)=abb17(29)
      acd17(59)=abb17(25)
      acd17(60)=abb17(21)
      acd17(61)=abb17(19)
      acd17(62)=abb17(27)
      acd17(63)=abb17(80)
      acd17(64)=abb17(57)
      acd17(65)=dotproduct(qshift,spvak1l3)
      acd17(66)=abb17(33)
      acd17(67)=dotproduct(qshift,spvak1l4)
      acd17(68)=abb17(30)
      acd17(69)=dotproduct(qshift,spval3k1)
      acd17(70)=abb17(71)
      acd17(71)=dotproduct(qshift,spval4k1)
      acd17(72)=abb17(66)
      acd17(73)=abb17(22)
      acd17(74)=acd17(55)*acd17(56)
      acd17(75)=acd17(53)*acd17(54)
      acd17(76)=acd17(51)*acd17(52)
      acd17(77)=acd17(49)*acd17(50)
      acd17(78)=acd17(47)*acd17(48)
      acd17(79)=acd17(45)*acd17(46)
      acd17(80)=acd17(35)*acd17(44)
      acd17(81)=acd17(33)*acd17(43)
      acd17(82)=acd17(26)*acd17(42)
      acd17(83)=acd17(18)*acd17(20)
      acd17(84)=acd17(1)*acd17(7)
      acd17(85)=acd17(11)*acd17(14)
      acd17(86)=acd17(8)*acd17(41)
      acd17(87)=-acd17(4)*acd17(29)
      acd17(88)=acd17(6)*acd17(40)
      acd17(74)=acd17(88)+acd17(87)+acd17(86)+acd17(85)+acd17(84)+acd17(83)+acd&
      &17(82)+acd17(81)+acd17(80)+acd17(79)+acd17(78)+acd17(77)+acd17(76)+acd17&
      &(75)-acd17(57)+acd17(74)
      acd17(74)=acd17(6)*acd17(74)
      acd17(75)=acd17(4)-acd17(23)
      acd17(75)=acd17(19)*acd17(75)
      acd17(76)=acd17(18)*acd17(19)
      acd17(77)=-acd17(37)*acd17(38)
      acd17(78)=-acd17(35)*acd17(36)
      acd17(79)=-acd17(33)*acd17(34)
      acd17(80)=-acd17(15)*acd17(31)
      acd17(81)=-acd17(26)*acd17(32)
      acd17(82)=-acd17(1)*acd17(5)
      acd17(83)=-acd17(11)*acd17(13)
      acd17(84)=acd17(8)*acd17(30)
      acd17(85)=-acd17(2)*acd17(25)
      acd17(75)=acd17(85)+acd17(84)+acd17(83)+acd17(82)+acd17(76)+acd17(81)+acd&
      &17(80)+acd17(79)+acd17(78)+acd17(39)+acd17(77)+acd17(75)
      acd17(75)=acd17(4)*acd17(75)
      acd17(77)=acd17(26)*acd17(27)
      acd17(78)=acd17(1)*acd17(3)
      acd17(79)=acd17(11)*acd17(12)
      acd17(76)=acd17(79)+acd17(78)-acd17(76)-acd17(28)+acd17(77)
      acd17(76)=acd17(2)*acd17(76)
      acd17(77)=-acd17(11)+acd17(1)
      acd17(77)=acd17(9)*acd17(77)
      acd17(78)=acd17(26)*acd17(58)
      acd17(77)=-acd17(59)+acd17(78)+acd17(77)
      acd17(77)=acd17(8)*acd17(77)
      acd17(78)=-acd17(71)*acd17(72)
      acd17(79)=-acd17(69)*acd17(70)
      acd17(80)=-acd17(67)*acd17(68)
      acd17(81)=-acd17(65)*acd17(66)
      acd17(82)=-acd17(37)*acd17(64)
      acd17(83)=-acd17(23)*acd17(24)
      acd17(84)=-acd17(35)*acd17(63)
      acd17(85)=-acd17(33)*acd17(62)
      acd17(86)=-acd17(15)*acd17(60)
      acd17(87)=-acd17(26)*acd17(61)
      acd17(88)=-acd17(15)*acd17(21)
      acd17(88)=-acd17(22)+acd17(88)
      acd17(88)=acd17(18)*acd17(88)
      acd17(89)=-acd17(1)*acd17(10)
      acd17(90)=acd17(15)*acd17(16)
      acd17(90)=-acd17(17)+acd17(90)
      acd17(90)=acd17(11)*acd17(90)
      brack=acd17(73)+acd17(74)+acd17(75)+acd17(76)+acd17(77)+acd17(78)+acd17(7&
      &9)+acd17(80)+acd17(81)+acd17(82)+acd17(83)+acd17(84)+acd17(85)+acd17(86)&
      &+acd17(87)+acd17(88)+acd17(89)+acd17(90)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(111) :: acd17
      complex(ki) :: brack
      acd17(1)=k1(iv1)
      acd17(2)=dotproduct(k5,qshift)
      acd17(3)=abb17(68)
      acd17(4)=dotproduct(qshift,qshift)
      acd17(5)=abb17(26)
      acd17(6)=dotproduct(qshift,spvak2k5)
      acd17(7)=abb17(23)
      acd17(8)=dotproduct(qshift,spval3k5)
      acd17(9)=abb17(75)
      acd17(10)=abb17(39)
      acd17(11)=k2(iv1)
      acd17(12)=abb17(65)
      acd17(13)=abb17(31)
      acd17(14)=abb17(17)
      acd17(15)=dotproduct(qshift,spvak1k5)
      acd17(16)=abb17(18)
      acd17(17)=abb17(42)
      acd17(18)=l3(iv1)
      acd17(19)=abb17(70)
      acd17(20)=abb17(43)
      acd17(21)=abb17(32)
      acd17(22)=abb17(69)
      acd17(23)=l4(iv1)
      acd17(24)=abb17(63)
      acd17(25)=k5(iv1)
      acd17(26)=dotproduct(k1,qshift)
      acd17(27)=dotproduct(k2,qshift)
      acd17(28)=dotproduct(l3,qshift)
      acd17(29)=abb17(15)
      acd17(30)=dotproduct(qshift,spvak2k1)
      acd17(31)=abb17(34)
      acd17(32)=abb17(53)
      acd17(33)=qshift(iv1)
      acd17(34)=dotproduct(l4,qshift)
      acd17(35)=abb17(40)
      acd17(36)=abb17(74)
      acd17(37)=abb17(11)
      acd17(38)=abb17(28)
      acd17(39)=dotproduct(qshift,spvak2l3)
      acd17(40)=abb17(36)
      acd17(41)=dotproduct(qshift,spvak2l4)
      acd17(42)=abb17(59)
      acd17(43)=dotproduct(qshift,spval4k5)
      acd17(44)=abb17(64)
      acd17(45)=abb17(20)
      acd17(46)=spvak2k5(iv1)
      acd17(47)=abb17(79)
      acd17(48)=abb17(10)
      acd17(49)=abb17(12)
      acd17(50)=abb17(14)
      acd17(51)=abb17(49)
      acd17(52)=dotproduct(qshift,spval3k2)
      acd17(53)=abb17(77)
      acd17(54)=dotproduct(qshift,spval3l4)
      acd17(55)=abb17(72)
      acd17(56)=dotproduct(qshift,spval4k2)
      acd17(57)=abb17(52)
      acd17(58)=dotproduct(qshift,spval4l3)
      acd17(59)=abb17(48)
      acd17(60)=dotproduct(qshift,spvak5k2)
      acd17(61)=abb17(24)
      acd17(62)=dotproduct(qshift,spvak5l3)
      acd17(63)=abb17(62)
      acd17(64)=abb17(13)
      acd17(65)=spval3k5(iv1)
      acd17(66)=abb17(29)
      acd17(67)=abb17(25)
      acd17(68)=spvak1k5(iv1)
      acd17(69)=abb17(21)
      acd17(70)=spvak2k1(iv1)
      acd17(71)=abb17(19)
      acd17(72)=spvak2l3(iv1)
      acd17(73)=abb17(27)
      acd17(74)=spvak2l4(iv1)
      acd17(75)=abb17(80)
      acd17(76)=spval4k5(iv1)
      acd17(77)=abb17(57)
      acd17(78)=spvak1l3(iv1)
      acd17(79)=abb17(33)
      acd17(80)=spvak1l4(iv1)
      acd17(81)=abb17(30)
      acd17(82)=spval3k2(iv1)
      acd17(83)=spval3l4(iv1)
      acd17(84)=spval4k2(iv1)
      acd17(85)=spval4l3(iv1)
      acd17(86)=spvak5k2(iv1)
      acd17(87)=spvak5l3(iv1)
      acd17(88)=spval3k1(iv1)
      acd17(89)=abb17(71)
      acd17(90)=spval4k1(iv1)
      acd17(91)=abb17(66)
      acd17(92)=acd17(63)*acd17(62)
      acd17(93)=acd17(61)*acd17(60)
      acd17(94)=acd17(59)*acd17(58)
      acd17(95)=acd17(57)*acd17(56)
      acd17(96)=acd17(55)*acd17(54)
      acd17(97)=acd17(53)*acd17(52)
      acd17(98)=acd17(41)*acd17(51)
      acd17(99)=acd17(39)*acd17(50)
      acd17(100)=acd17(30)*acd17(49)
      acd17(101)=acd17(28)*acd17(20)
      acd17(102)=acd17(26)*acd17(7)
      acd17(103)=acd17(27)*acd17(14)
      acd17(104)=acd17(8)*acd17(48)
      acd17(105)=-acd17(4)*acd17(35)
      acd17(106)=acd17(6)*acd17(47)
      acd17(92)=2.0_ki*acd17(106)+acd17(105)+acd17(104)+acd17(103)+acd17(102)+a&
      &cd17(101)+acd17(100)+acd17(99)+acd17(98)+acd17(97)+acd17(96)+acd17(95)+a&
      &cd17(94)+acd17(93)-acd17(64)+acd17(92)
      acd17(92)=acd17(46)*acd17(92)
      acd17(93)=acd17(63)*acd17(87)
      acd17(94)=acd17(61)*acd17(86)
      acd17(95)=acd17(59)*acd17(85)
      acd17(96)=acd17(57)*acd17(84)
      acd17(97)=acd17(55)*acd17(83)
      acd17(98)=acd17(53)*acd17(82)
      acd17(99)=acd17(74)*acd17(51)
      acd17(100)=acd17(72)*acd17(50)
      acd17(101)=acd17(70)*acd17(49)
      acd17(102)=acd17(18)*acd17(20)
      acd17(103)=acd17(1)*acd17(7)
      acd17(104)=acd17(65)*acd17(48)
      acd17(105)=acd17(11)*acd17(14)
      acd17(106)=2.0_ki*acd17(33)
      acd17(107)=-acd17(35)*acd17(106)
      acd17(93)=acd17(107)+acd17(105)+acd17(104)+acd17(103)+acd17(102)+acd17(10&
      &1)+acd17(100)+acd17(99)+acd17(98)+acd17(97)+acd17(96)+acd17(95)+acd17(93&
      &)+acd17(94)
      acd17(93)=acd17(6)*acd17(93)
      acd17(94)=-acd17(44)*acd17(76)
      acd17(95)=-acd17(74)*acd17(42)
      acd17(96)=-acd17(72)*acd17(40)
      acd17(97)=-acd17(68)*acd17(37)
      acd17(98)=-acd17(70)*acd17(38)
      acd17(99)=-acd17(1)*acd17(5)
      acd17(100)=acd17(65)*acd17(36)
      acd17(101)=-acd17(25)*acd17(29)
      acd17(102)=-acd17(11)*acd17(13)
      acd17(103)=-acd17(23)+acd17(18)
      acd17(103)=acd17(19)*acd17(103)
      acd17(94)=acd17(103)+acd17(102)+acd17(101)+acd17(100)+acd17(99)+acd17(98)&
      &+acd17(97)+acd17(96)+acd17(94)+acd17(95)
      acd17(94)=acd17(4)*acd17(94)
      acd17(95)=2.0_ki*acd17(4)-acd17(34)+acd17(28)
      acd17(95)=acd17(19)*acd17(95)
      acd17(96)=-acd17(44)*acd17(43)
      acd17(97)=-acd17(41)*acd17(42)
      acd17(98)=-acd17(39)*acd17(40)
      acd17(99)=-acd17(15)*acd17(37)
      acd17(100)=-acd17(30)*acd17(38)
      acd17(101)=-acd17(26)*acd17(5)
      acd17(102)=-acd17(27)*acd17(13)
      acd17(103)=acd17(8)*acd17(36)
      acd17(104)=-acd17(2)*acd17(29)
      acd17(95)=acd17(104)+acd17(103)+acd17(102)+acd17(101)+acd17(100)+acd17(99&
      &)+acd17(98)+acd17(97)+acd17(45)+acd17(96)+acd17(95)
      acd17(95)=acd17(95)*acd17(106)
      acd17(96)=acd17(30)*acd17(31)
      acd17(97)=acd17(26)*acd17(3)
      acd17(98)=acd17(27)*acd17(12)
      acd17(96)=acd17(98)+acd17(97)-acd17(32)+acd17(96)
      acd17(96)=acd17(25)*acd17(96)
      acd17(97)=acd17(8)*acd17(9)
      acd17(98)=acd17(15)*acd17(16)
      acd17(99)=acd17(2)*acd17(12)
      acd17(98)=acd17(99)-acd17(97)-acd17(17)+acd17(98)
      acd17(98)=acd17(11)*acd17(98)
      acd17(99)=-acd17(28)*acd17(21)
      acd17(100)=acd17(27)*acd17(16)
      acd17(99)=acd17(100)+acd17(99)-acd17(69)
      acd17(99)=acd17(68)*acd17(99)
      acd17(100)=acd17(8)*acd17(66)
      acd17(101)=acd17(2)*acd17(31)
      acd17(100)=acd17(101)+acd17(100)-acd17(71)
      acd17(100)=acd17(70)*acd17(100)
      acd17(101)=acd17(2)*acd17(3)
      acd17(97)=acd17(101)-acd17(10)+acd17(97)
      acd17(97)=acd17(1)*acd17(97)
      acd17(101)=-acd17(27)+acd17(26)
      acd17(101)=acd17(9)*acd17(101)
      acd17(102)=acd17(30)*acd17(66)
      acd17(101)=-acd17(67)+acd17(102)+acd17(101)
      acd17(101)=acd17(65)*acd17(101)
      acd17(102)=-acd17(2)*acd17(18)
      acd17(103)=-acd17(25)*acd17(28)
      acd17(102)=acd17(102)+acd17(103)
      acd17(102)=acd17(19)*acd17(102)
      acd17(103)=-acd17(90)*acd17(91)
      acd17(104)=-acd17(88)*acd17(89)
      acd17(105)=-acd17(80)*acd17(81)
      acd17(106)=-acd17(78)*acd17(79)
      acd17(107)=-acd17(76)*acd17(77)
      acd17(108)=-acd17(23)*acd17(24)
      acd17(109)=-acd17(74)*acd17(75)
      acd17(110)=-acd17(72)*acd17(73)
      acd17(111)=-acd17(15)*acd17(21)
      acd17(111)=-acd17(22)+acd17(111)
      acd17(111)=acd17(18)*acd17(111)
      brack=acd17(92)+acd17(93)+acd17(94)+acd17(95)+acd17(96)+acd17(97)+acd17(9&
      &8)+acd17(99)+acd17(100)+acd17(101)+acd17(102)+acd17(103)+acd17(104)+acd1&
      &7(105)+acd17(106)+acd17(107)+acd17(108)+acd17(109)+acd17(110)+acd17(111)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(102) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=dotproduct(k1,qshift)
      acd17(3)=abb17(26)
      acd17(4)=dotproduct(k2,qshift)
      acd17(5)=abb17(31)
      acd17(6)=dotproduct(l3,qshift)
      acd17(7)=abb17(70)
      acd17(8)=dotproduct(l4,qshift)
      acd17(9)=dotproduct(k5,qshift)
      acd17(10)=abb17(15)
      acd17(11)=dotproduct(qshift,qshift)
      acd17(12)=dotproduct(qshift,spvak1k5)
      acd17(13)=abb17(11)
      acd17(14)=dotproduct(qshift,spvak2k1)
      acd17(15)=abb17(28)
      acd17(16)=dotproduct(qshift,spvak2l3)
      acd17(17)=abb17(36)
      acd17(18)=dotproduct(qshift,spvak2l4)
      acd17(19)=abb17(59)
      acd17(20)=dotproduct(qshift,spvak2k5)
      acd17(21)=abb17(40)
      acd17(22)=dotproduct(qshift,spval3k5)
      acd17(23)=abb17(74)
      acd17(24)=dotproduct(qshift,spval4k5)
      acd17(25)=abb17(64)
      acd17(26)=abb17(20)
      acd17(27)=k1(iv1)
      acd17(28)=k5(iv2)
      acd17(29)=abb17(68)
      acd17(30)=qshift(iv2)
      acd17(31)=spvak2k5(iv2)
      acd17(32)=abb17(23)
      acd17(33)=spval3k5(iv2)
      acd17(34)=abb17(75)
      acd17(35)=k1(iv2)
      acd17(36)=k5(iv1)
      acd17(37)=qshift(iv1)
      acd17(38)=spvak2k5(iv1)
      acd17(39)=spval3k5(iv1)
      acd17(40)=k2(iv1)
      acd17(41)=abb17(65)
      acd17(42)=spvak1k5(iv2)
      acd17(43)=abb17(18)
      acd17(44)=abb17(17)
      acd17(45)=k2(iv2)
      acd17(46)=spvak1k5(iv1)
      acd17(47)=l3(iv1)
      acd17(48)=abb17(32)
      acd17(49)=abb17(43)
      acd17(50)=l3(iv2)
      acd17(51)=l4(iv1)
      acd17(52)=l4(iv2)
      acd17(53)=spvak2k1(iv2)
      acd17(54)=abb17(34)
      acd17(55)=spvak2k1(iv1)
      acd17(56)=spvak2l3(iv2)
      acd17(57)=spvak2l4(iv2)
      acd17(58)=spval4k5(iv2)
      acd17(59)=spvak2l3(iv1)
      acd17(60)=spvak2l4(iv1)
      acd17(61)=spval4k5(iv1)
      acd17(62)=abb17(12)
      acd17(63)=abb17(29)
      acd17(64)=abb17(14)
      acd17(65)=abb17(49)
      acd17(66)=abb17(79)
      acd17(67)=abb17(10)
      acd17(68)=spval3k2(iv2)
      acd17(69)=abb17(77)
      acd17(70)=spval3l4(iv2)
      acd17(71)=abb17(72)
      acd17(72)=spval4k2(iv2)
      acd17(73)=abb17(52)
      acd17(74)=spval4l3(iv2)
      acd17(75)=abb17(48)
      acd17(76)=spvak5k2(iv2)
      acd17(77)=abb17(24)
      acd17(78)=spvak5l3(iv2)
      acd17(79)=abb17(62)
      acd17(80)=spval3k2(iv1)
      acd17(81)=spval3l4(iv1)
      acd17(82)=spval4k2(iv1)
      acd17(83)=spval4l3(iv1)
      acd17(84)=spvak5k2(iv1)
      acd17(85)=spvak5l3(iv1)
      acd17(86)=acd17(79)*acd17(85)
      acd17(87)=acd17(77)*acd17(84)
      acd17(88)=acd17(75)*acd17(83)
      acd17(89)=acd17(73)*acd17(82)
      acd17(90)=acd17(71)*acd17(81)
      acd17(91)=acd17(69)*acd17(80)
      acd17(92)=acd17(60)*acd17(65)
      acd17(93)=acd17(59)*acd17(64)
      acd17(94)=acd17(55)*acd17(62)
      acd17(95)=acd17(47)*acd17(49)
      acd17(96)=acd17(27)*acd17(32)
      acd17(97)=acd17(40)*acd17(44)
      acd17(98)=acd17(39)*acd17(67)
      acd17(99)=2.0_ki*acd17(37)
      acd17(100)=-acd17(21)*acd17(99)
      acd17(101)=acd17(38)*acd17(66)
      acd17(86)=2.0_ki*acd17(101)+acd17(100)+acd17(98)+acd17(97)+acd17(96)+acd1&
      &7(95)+acd17(94)+acd17(93)+acd17(92)+acd17(91)+acd17(90)+acd17(89)+acd17(&
      &88)+acd17(86)+acd17(87)
      acd17(86)=acd17(31)*acd17(86)
      acd17(87)=acd17(79)*acd17(78)
      acd17(88)=acd17(77)*acd17(76)
      acd17(89)=acd17(75)*acd17(74)
      acd17(90)=acd17(73)*acd17(72)
      acd17(91)=acd17(71)*acd17(70)
      acd17(92)=acd17(69)*acd17(68)
      acd17(93)=acd17(57)*acd17(65)
      acd17(94)=acd17(56)*acd17(64)
      acd17(95)=acd17(53)*acd17(62)
      acd17(96)=acd17(50)*acd17(49)
      acd17(97)=acd17(35)*acd17(32)
      acd17(98)=acd17(45)*acd17(44)
      acd17(100)=acd17(33)*acd17(67)
      acd17(101)=2.0_ki*acd17(30)
      acd17(102)=-acd17(21)*acd17(101)
      acd17(87)=acd17(102)+acd17(100)+acd17(98)+acd17(97)+acd17(96)+acd17(95)+a&
      &cd17(94)+acd17(93)+acd17(92)+acd17(91)+acd17(90)+acd17(89)+acd17(87)+acd&
      &17(88)
      acd17(87)=acd17(38)*acd17(87)
      acd17(88)=-acd17(25)*acd17(24)
      acd17(89)=acd17(23)*acd17(22)
      acd17(90)=-acd17(21)*acd17(20)
      acd17(91)=-acd17(19)*acd17(18)
      acd17(92)=-acd17(17)*acd17(16)
      acd17(93)=-acd17(15)*acd17(14)
      acd17(94)=-acd17(13)*acd17(12)
      acd17(95)=-acd17(10)*acd17(9)
      acd17(96)=-acd17(5)*acd17(4)
      acd17(97)=-acd17(3)*acd17(2)
      acd17(98)=acd17(6)+2.0_ki*acd17(11)-acd17(8)
      acd17(98)=acd17(7)*acd17(98)
      acd17(88)=acd17(98)+acd17(97)+acd17(96)+acd17(95)+acd17(94)+acd17(93)+acd&
      &17(92)+acd17(91)+acd17(90)+acd17(89)+acd17(26)+acd17(88)
      acd17(88)=acd17(1)*acd17(88)
      acd17(89)=-acd17(25)*acd17(58)
      acd17(90)=-acd17(19)*acd17(57)
      acd17(91)=-acd17(17)*acd17(56)
      acd17(92)=-acd17(13)*acd17(42)
      acd17(93)=-acd17(53)*acd17(15)
      acd17(94)=-acd17(35)*acd17(3)
      acd17(95)=-acd17(45)*acd17(5)
      acd17(96)=acd17(33)*acd17(23)
      acd17(97)=-acd17(28)*acd17(10)
      acd17(98)=-acd17(52)+acd17(50)
      acd17(98)=acd17(7)*acd17(98)
      acd17(89)=acd17(98)+acd17(97)+acd17(96)+acd17(95)+acd17(94)+acd17(93)+acd&
      &17(92)+acd17(91)+acd17(89)+acd17(90)
      acd17(89)=acd17(89)*acd17(99)
      acd17(90)=4.0_ki*acd17(37)-acd17(51)+acd17(47)
      acd17(90)=acd17(7)*acd17(90)
      acd17(91)=-acd17(25)*acd17(61)
      acd17(92)=-acd17(19)*acd17(60)
      acd17(93)=-acd17(17)*acd17(59)
      acd17(94)=-acd17(13)*acd17(46)
      acd17(95)=-acd17(55)*acd17(15)
      acd17(96)=-acd17(27)*acd17(3)
      acd17(97)=-acd17(40)*acd17(5)
      acd17(98)=acd17(39)*acd17(23)
      acd17(99)=-acd17(36)*acd17(10)
      acd17(90)=acd17(99)+acd17(98)+acd17(97)+acd17(96)+acd17(95)+acd17(94)+acd&
      &17(93)+acd17(91)+acd17(92)+acd17(90)
      acd17(90)=acd17(90)*acd17(101)
      acd17(91)=acd17(53)*acd17(54)
      acd17(92)=acd17(35)*acd17(29)
      acd17(93)=acd17(45)*acd17(41)
      acd17(91)=acd17(93)+acd17(91)+acd17(92)
      acd17(91)=acd17(36)*acd17(91)
      acd17(92)=acd17(55)*acd17(54)
      acd17(93)=acd17(27)*acd17(29)
      acd17(94)=acd17(40)*acd17(41)
      acd17(92)=acd17(94)+acd17(92)+acd17(93)
      acd17(92)=acd17(28)*acd17(92)
      acd17(93)=-acd17(50)*acd17(48)
      acd17(94)=acd17(45)*acd17(43)
      acd17(93)=acd17(94)+acd17(93)
      acd17(93)=acd17(46)*acd17(93)
      acd17(94)=-acd17(47)*acd17(48)
      acd17(95)=acd17(40)*acd17(43)
      acd17(94)=acd17(95)+acd17(94)
      acd17(94)=acd17(42)*acd17(94)
      acd17(95)=-acd17(45)+acd17(35)
      acd17(95)=acd17(34)*acd17(95)
      acd17(96)=acd17(53)*acd17(63)
      acd17(95)=acd17(96)+acd17(95)
      acd17(95)=acd17(39)*acd17(95)
      acd17(96)=-acd17(40)+acd17(27)
      acd17(96)=acd17(34)*acd17(96)
      acd17(97)=acd17(55)*acd17(63)
      acd17(96)=acd17(97)+acd17(96)
      acd17(96)=acd17(33)*acd17(96)
      acd17(97)=-acd17(36)*acd17(50)
      acd17(98)=-acd17(28)*acd17(47)
      acd17(97)=acd17(97)+acd17(98)
      acd17(97)=acd17(7)*acd17(97)
      brack=acd17(86)+acd17(87)+2.0_ki*acd17(88)+acd17(89)+acd17(90)+acd17(91)+&
      &acd17(92)+acd17(93)+acd17(94)+acd17(95)+acd17(96)+acd17(97)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=k1(iv3)
      acd17(3)=abb17(26)
      acd17(4)=k2(iv3)
      acd17(5)=abb17(31)
      acd17(6)=l3(iv3)
      acd17(7)=abb17(70)
      acd17(8)=l4(iv3)
      acd17(9)=k5(iv3)
      acd17(10)=abb17(15)
      acd17(11)=qshift(iv3)
      acd17(12)=spvak1k5(iv3)
      acd17(13)=abb17(11)
      acd17(14)=spvak2k1(iv3)
      acd17(15)=abb17(28)
      acd17(16)=spvak2l3(iv3)
      acd17(17)=abb17(36)
      acd17(18)=spvak2l4(iv3)
      acd17(19)=abb17(59)
      acd17(20)=spvak2k5(iv3)
      acd17(21)=abb17(40)
      acd17(22)=spval3k5(iv3)
      acd17(23)=abb17(74)
      acd17(24)=spval4k5(iv3)
      acd17(25)=abb17(64)
      acd17(26)=d(iv1,iv3)
      acd17(27)=k1(iv2)
      acd17(28)=k2(iv2)
      acd17(29)=l3(iv2)
      acd17(30)=l4(iv2)
      acd17(31)=k5(iv2)
      acd17(32)=qshift(iv2)
      acd17(33)=spvak1k5(iv2)
      acd17(34)=spvak2k1(iv2)
      acd17(35)=spvak2l3(iv2)
      acd17(36)=spvak2l4(iv2)
      acd17(37)=spvak2k5(iv2)
      acd17(38)=spval3k5(iv2)
      acd17(39)=spval4k5(iv2)
      acd17(40)=d(iv2,iv3)
      acd17(41)=k1(iv1)
      acd17(42)=k2(iv1)
      acd17(43)=l3(iv1)
      acd17(44)=l4(iv1)
      acd17(45)=k5(iv1)
      acd17(46)=qshift(iv1)
      acd17(47)=spvak1k5(iv1)
      acd17(48)=spvak2k1(iv1)
      acd17(49)=spvak2l3(iv1)
      acd17(50)=spvak2l4(iv1)
      acd17(51)=spvak2k5(iv1)
      acd17(52)=spval3k5(iv1)
      acd17(53)=spval4k5(iv1)
      acd17(54)=-acd17(25)*acd17(53)
      acd17(55)=acd17(23)*acd17(52)
      acd17(56)=-acd17(21)*acd17(51)
      acd17(57)=-acd17(19)*acd17(50)
      acd17(58)=-acd17(17)*acd17(49)
      acd17(59)=-acd17(15)*acd17(48)
      acd17(60)=-acd17(13)*acd17(47)
      acd17(61)=-acd17(10)*acd17(45)
      acd17(62)=-acd17(5)*acd17(42)
      acd17(63)=-acd17(3)*acd17(41)
      acd17(64)=acd17(43)+4.0_ki*acd17(46)-acd17(44)
      acd17(64)=acd17(7)*acd17(64)
      acd17(54)=acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd17(60)+acd17(59)+acd&
      &17(58)+acd17(57)+acd17(56)+acd17(54)+acd17(55)
      acd17(54)=acd17(40)*acd17(54)
      acd17(55)=-acd17(25)*acd17(39)
      acd17(56)=acd17(23)*acd17(38)
      acd17(57)=-acd17(21)*acd17(37)
      acd17(58)=-acd17(19)*acd17(36)
      acd17(59)=-acd17(17)*acd17(35)
      acd17(60)=-acd17(15)*acd17(34)
      acd17(61)=-acd17(13)*acd17(33)
      acd17(62)=-acd17(10)*acd17(31)
      acd17(63)=-acd17(5)*acd17(28)
      acd17(64)=-acd17(3)*acd17(27)
      acd17(65)=acd17(29)+4.0_ki*acd17(32)-acd17(30)
      acd17(65)=acd17(7)*acd17(65)
      acd17(55)=acd17(65)+acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd17(60)+acd&
      &17(59)+acd17(58)+acd17(57)+acd17(55)+acd17(56)
      acd17(55)=acd17(26)*acd17(55)
      acd17(56)=-acd17(25)*acd17(24)
      acd17(57)=acd17(23)*acd17(22)
      acd17(58)=-acd17(21)*acd17(20)
      acd17(59)=-acd17(19)*acd17(18)
      acd17(60)=-acd17(17)*acd17(16)
      acd17(61)=-acd17(15)*acd17(14)
      acd17(62)=-acd17(13)*acd17(12)
      acd17(63)=-acd17(10)*acd17(9)
      acd17(64)=-acd17(5)*acd17(4)
      acd17(65)=-acd17(3)*acd17(2)
      acd17(66)=acd17(6)+4.0_ki*acd17(11)-acd17(8)
      acd17(66)=acd17(7)*acd17(66)
      acd17(56)=acd17(66)+acd17(65)+acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd&
      &17(60)+acd17(59)+acd17(58)+acd17(56)+acd17(57)
      acd17(56)=acd17(1)*acd17(56)
      acd17(54)=acd17(56)+acd17(54)+acd17(55)
      brack=2.0_ki*acd17(54)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(10) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=d(iv3,iv4)
      acd17(3)=abb17(70)
      acd17(4)=d(iv1,iv3)
      acd17(5)=d(iv2,iv4)
      acd17(6)=d(iv1,iv4)
      acd17(7)=d(iv2,iv3)
      acd17(8)=acd17(2)*acd17(1)
      acd17(9)=acd17(5)*acd17(4)
      acd17(10)=acd17(7)*acd17(6)
      acd17(8)=acd17(10)+acd17(8)+acd17(9)
      brack=8.0_ki*acd17(8)*acd17(3)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd17h3_qp
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
!---#[ subroutine reconstruct_d17:
   subroutine     reconstruct_d17(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group5
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group5), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_17:
      coeffs%coeffs_17%c0 = derivative(czip)
      coeffs%coeffs_17%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_17%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_17%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_17%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_17%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_17%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_17%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_17%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_17%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_17%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_17%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_17%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_17%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_17%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_17%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_17%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_17%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_17%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_17%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_17%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_17%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_17%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_17%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_17%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_17%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_17%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_17%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_17%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_17%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_17%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_17%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_17%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_17%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_17%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_17%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_17%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_17%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_17%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_17%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_17%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_17%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_17%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_17%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_17%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_17%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_17%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_17%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_17%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_17%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_17%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_17%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_17%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_17%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_17%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_17%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_17%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_17%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_17%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_17%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_17%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_17%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_17%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_17%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_17%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_17%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_17%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_17%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_17%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_17%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_17:
   end subroutine reconstruct_d17
!---#] subroutine reconstruct_d17:
end module p0_gg_hhg_d17h3l1d_qp
