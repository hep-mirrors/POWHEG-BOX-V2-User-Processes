module p0_gg_hhg_d25h3l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d25h3l1d.f90
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
   public :: derivative , reconstruct_d25
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd25h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(94) :: acd25
      complex(ki) :: brack
      acd25(1)=dotproduct(k1,qshift)
      acd25(2)=dotproduct(k2,qshift)
      acd25(3)=abb25(67)
      acd25(4)=dotproduct(k5,qshift)
      acd25(5)=abb25(65)
      acd25(6)=dotproduct(qshift,qshift)
      acd25(7)=abb25(16)
      acd25(8)=dotproduct(qshift,spvak2k1)
      acd25(9)=abb25(20)
      acd25(10)=dotproduct(qshift,spvak2l3)
      acd25(11)=abb25(85)
      acd25(12)=dotproduct(qshift,spvak2k5)
      acd25(13)=abb25(80)
      acd25(14)=dotproduct(qshift,spval3k1)
      acd25(15)=abb25(74)
      acd25(16)=dotproduct(qshift,spval3k5)
      acd25(17)=abb25(77)
      acd25(18)=dotproduct(qshift,spvak5l3)
      acd25(19)=abb25(71)
      acd25(20)=abb25(63)
      acd25(21)=abb25(47)
      acd25(22)=abb25(18)
      acd25(23)=abb25(48)
      acd25(24)=dotproduct(l3,qshift)
      acd25(25)=abb25(68)
      acd25(26)=dotproduct(l4,qshift)
      acd25(27)=abb25(30)
      acd25(28)=abb25(64)
      acd25(29)=abb25(19)
      acd25(30)=abb25(26)
      acd25(31)=abb25(21)
      acd25(32)=abb25(83)
      acd25(33)=abb25(15)
      acd25(34)=abb25(79)
      acd25(35)=dotproduct(qshift,spvak2l4)
      acd25(36)=abb25(82)
      acd25(37)=dotproduct(qshift,spval4k1)
      acd25(38)=abb25(76)
      acd25(39)=dotproduct(qshift,spvak5k1)
      acd25(40)=abb25(58)
      acd25(41)=abb25(41)
      acd25(42)=abb25(33)
      acd25(43)=abb25(12)
      acd25(44)=abb25(34)
      acd25(45)=abb25(10)
      acd25(46)=abb25(29)
      acd25(47)=abb25(22)
      acd25(48)=abb25(23)
      acd25(49)=dotproduct(qshift,spvak1k2)
      acd25(50)=abb25(66)
      acd25(51)=dotproduct(qshift,spvak1l3)
      acd25(52)=dotproduct(qshift,spval3k2)
      acd25(53)=abb25(32)
      acd25(54)=dotproduct(qshift,spval3l4)
      acd25(55)=abb25(31)
      acd25(56)=dotproduct(qshift,spval4k2)
      acd25(57)=abb25(28)
      acd25(58)=dotproduct(qshift,spval4l3)
      acd25(59)=abb25(27)
      acd25(60)=dotproduct(qshift,spvak5k2)
      acd25(61)=abb25(24)
      acd25(62)=abb25(11)
      acd25(63)=abb25(57)
      acd25(64)=abb25(13)
      acd25(65)=abb25(51)
      acd25(66)=abb25(72)
      acd25(67)=abb25(70)
      acd25(68)=abb25(44)
      acd25(69)=abb25(75)
      acd25(70)=abb25(25)
      acd25(71)=abb25(46)
      acd25(72)=dotproduct(qshift,spval4k5)
      acd25(73)=abb25(73)
      acd25(74)=dotproduct(qshift,spvak5l4)
      acd25(75)=abb25(69)
      acd25(76)=abb25(14)
      acd25(77)=acd25(60)*acd25(61)
      acd25(78)=acd25(58)*acd25(59)
      acd25(79)=acd25(56)*acd25(57)
      acd25(80)=acd25(54)*acd25(55)
      acd25(81)=-acd25(49)*acd25(50)
      acd25(82)=acd25(52)*acd25(53)
      acd25(83)=-acd25(32)*acd25(51)
      acd25(84)=acd25(35)*acd25(48)
      acd25(85)=acd25(18)*acd25(47)
      acd25(86)=acd25(16)*acd25(46)
      acd25(87)=acd25(14)*acd25(45)
      acd25(88)=acd25(12)*acd25(44)
      acd25(89)=acd25(10)*acd25(43)
      acd25(90)=acd25(4)*acd25(29)
      acd25(91)=acd25(2)*acd25(22)
      acd25(92)=acd25(1)*acd25(9)
      acd25(93)=-acd25(6)*acd25(31)
      acd25(94)=acd25(8)*acd25(42)
      acd25(77)=acd25(94)+acd25(93)+acd25(92)+acd25(91)+acd25(90)+acd25(89)+acd&
      &25(88)+acd25(87)+acd25(86)+acd25(85)+acd25(84)+acd25(83)+acd25(82)+acd25&
      &(81)+acd25(80)+acd25(79)+acd25(78)-acd25(62)+acd25(77)
      acd25(77)=acd25(8)*acd25(77)
      acd25(78)=-acd25(6)-acd25(24)+acd25(26)
      acd25(78)=acd25(25)*acd25(78)
      acd25(79)=-acd25(39)*acd25(40)
      acd25(80)=-acd25(37)*acd25(38)
      acd25(81)=-acd25(35)*acd25(36)
      acd25(82)=-acd25(14)*acd25(34)
      acd25(83)=-acd25(12)*acd25(33)
      acd25(84)=-acd25(10)*acd25(32)
      acd25(85)=-acd25(4)*acd25(28)
      acd25(86)=-acd25(2)*acd25(21)
      acd25(87)=-acd25(1)*acd25(7)
      acd25(78)=acd25(87)+acd25(86)+acd25(85)+acd25(84)+acd25(83)+acd25(82)+acd&
      &25(81)+acd25(80)+acd25(41)+acd25(79)+acd25(78)
      acd25(78)=acd25(6)*acd25(78)
      acd25(79)=acd25(18)*acd25(19)
      acd25(80)=acd25(16)*acd25(17)
      acd25(81)=acd25(14)*acd25(15)
      acd25(82)=acd25(12)*acd25(13)
      acd25(83)=acd25(10)*acd25(11)
      acd25(84)=acd25(4)*acd25(5)
      acd25(85)=acd25(2)*acd25(3)
      acd25(79)=acd25(85)+acd25(84)+acd25(83)+acd25(82)+acd25(81)+acd25(80)-acd&
      &25(20)+acd25(79)
      acd25(79)=acd25(1)*acd25(79)
      acd25(80)=-acd25(74)*acd25(75)
      acd25(81)=-acd25(72)*acd25(73)
      acd25(82)=-acd25(52)*acd25(71)
      acd25(83)=-acd25(39)*acd25(70)
      acd25(84)=-acd25(37)*acd25(69)
      acd25(85)=-acd25(26)*acd25(27)
      acd25(86)=-acd25(35)*acd25(68)
      acd25(87)=-acd25(18)*acd25(67)
      acd25(88)=-acd25(16)*acd25(66)
      acd25(89)=-acd25(14)*acd25(65)
      acd25(90)=-acd25(12)*acd25(64)
      acd25(91)=-acd25(10)*acd25(63)
      acd25(92)=-acd25(4)*acd25(30)
      acd25(93)=-acd25(2)*acd25(23)
      brack=acd25(76)+acd25(77)+acd25(78)+acd25(79)+acd25(80)+acd25(81)+acd25(8&
      &2)+acd25(83)+acd25(84)+acd25(85)+acd25(86)+acd25(87)+acd25(88)+acd25(89)&
      &+acd25(90)+acd25(91)+acd25(92)+acd25(93)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd25h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(117) :: acd25
      complex(ki) :: brack
      acd25(1)=k1(iv1)
      acd25(2)=dotproduct(k2,qshift)
      acd25(3)=abb25(67)
      acd25(4)=dotproduct(k5,qshift)
      acd25(5)=abb25(65)
      acd25(6)=dotproduct(qshift,qshift)
      acd25(7)=abb25(16)
      acd25(8)=dotproduct(qshift,spvak2k1)
      acd25(9)=abb25(20)
      acd25(10)=dotproduct(qshift,spvak2l3)
      acd25(11)=abb25(85)
      acd25(12)=dotproduct(qshift,spvak2k5)
      acd25(13)=abb25(80)
      acd25(14)=dotproduct(qshift,spval3k1)
      acd25(15)=abb25(74)
      acd25(16)=dotproduct(qshift,spval3k5)
      acd25(17)=abb25(77)
      acd25(18)=dotproduct(qshift,spvak5l3)
      acd25(19)=abb25(71)
      acd25(20)=abb25(63)
      acd25(21)=k2(iv1)
      acd25(22)=dotproduct(k1,qshift)
      acd25(23)=abb25(47)
      acd25(24)=abb25(18)
      acd25(25)=abb25(48)
      acd25(26)=l3(iv1)
      acd25(27)=abb25(68)
      acd25(28)=l4(iv1)
      acd25(29)=abb25(30)
      acd25(30)=k5(iv1)
      acd25(31)=abb25(64)
      acd25(32)=abb25(19)
      acd25(33)=abb25(26)
      acd25(34)=qshift(iv1)
      acd25(35)=dotproduct(l3,qshift)
      acd25(36)=dotproduct(l4,qshift)
      acd25(37)=abb25(21)
      acd25(38)=abb25(83)
      acd25(39)=abb25(15)
      acd25(40)=abb25(79)
      acd25(41)=dotproduct(qshift,spvak2l4)
      acd25(42)=abb25(82)
      acd25(43)=dotproduct(qshift,spval4k1)
      acd25(44)=abb25(76)
      acd25(45)=dotproduct(qshift,spvak5k1)
      acd25(46)=abb25(58)
      acd25(47)=abb25(41)
      acd25(48)=spvak2k1(iv1)
      acd25(49)=abb25(33)
      acd25(50)=abb25(12)
      acd25(51)=abb25(34)
      acd25(52)=abb25(10)
      acd25(53)=abb25(29)
      acd25(54)=abb25(22)
      acd25(55)=abb25(23)
      acd25(56)=dotproduct(qshift,spvak1k2)
      acd25(57)=abb25(66)
      acd25(58)=dotproduct(qshift,spvak1l3)
      acd25(59)=dotproduct(qshift,spval3k2)
      acd25(60)=abb25(32)
      acd25(61)=dotproduct(qshift,spval3l4)
      acd25(62)=abb25(31)
      acd25(63)=dotproduct(qshift,spval4k2)
      acd25(64)=abb25(28)
      acd25(65)=dotproduct(qshift,spval4l3)
      acd25(66)=abb25(27)
      acd25(67)=dotproduct(qshift,spvak5k2)
      acd25(68)=abb25(24)
      acd25(69)=abb25(11)
      acd25(70)=spvak2l3(iv1)
      acd25(71)=abb25(57)
      acd25(72)=spvak2k5(iv1)
      acd25(73)=abb25(13)
      acd25(74)=spval3k1(iv1)
      acd25(75)=abb25(51)
      acd25(76)=spval3k5(iv1)
      acd25(77)=abb25(72)
      acd25(78)=spvak5l3(iv1)
      acd25(79)=abb25(70)
      acd25(80)=spvak2l4(iv1)
      acd25(81)=abb25(44)
      acd25(82)=spval4k1(iv1)
      acd25(83)=abb25(75)
      acd25(84)=spvak5k1(iv1)
      acd25(85)=abb25(25)
      acd25(86)=spvak1k2(iv1)
      acd25(87)=spvak1l3(iv1)
      acd25(88)=spval3k2(iv1)
      acd25(89)=abb25(46)
      acd25(90)=spval3l4(iv1)
      acd25(91)=spval4k2(iv1)
      acd25(92)=spval4l3(iv1)
      acd25(93)=spvak5k2(iv1)
      acd25(94)=spval4k5(iv1)
      acd25(95)=abb25(73)
      acd25(96)=spvak5l4(iv1)
      acd25(97)=abb25(69)
      acd25(98)=acd25(68)*acd25(67)
      acd25(99)=acd25(66)*acd25(65)
      acd25(100)=acd25(64)*acd25(63)
      acd25(101)=acd25(62)*acd25(61)
      acd25(102)=acd25(60)*acd25(59)
      acd25(103)=-acd25(57)*acd25(56)
      acd25(104)=acd25(41)*acd25(55)
      acd25(105)=acd25(18)*acd25(54)
      acd25(106)=acd25(16)*acd25(53)
      acd25(107)=acd25(14)*acd25(52)
      acd25(108)=acd25(12)*acd25(51)
      acd25(109)=acd25(10)*acd25(50)
      acd25(110)=acd25(4)*acd25(32)
      acd25(111)=acd25(2)*acd25(24)
      acd25(112)=-acd25(38)*acd25(58)
      acd25(113)=acd25(22)*acd25(9)
      acd25(114)=-acd25(6)*acd25(37)
      acd25(115)=acd25(8)*acd25(49)
      acd25(98)=2.0_ki*acd25(115)+acd25(114)+acd25(113)+acd25(112)+acd25(111)+a&
      &cd25(110)+acd25(109)+acd25(108)+acd25(107)+acd25(106)+acd25(105)+acd25(1&
      &04)+acd25(103)+acd25(102)+acd25(101)+acd25(100)+acd25(99)-acd25(69)+acd2&
      &5(98)
      acd25(98)=acd25(48)*acd25(98)
      acd25(99)=acd25(68)*acd25(93)
      acd25(100)=acd25(66)*acd25(92)
      acd25(101)=acd25(64)*acd25(91)
      acd25(102)=acd25(62)*acd25(90)
      acd25(103)=acd25(60)*acd25(88)
      acd25(104)=-acd25(57)*acd25(86)
      acd25(105)=acd25(80)*acd25(55)
      acd25(106)=acd25(78)*acd25(54)
      acd25(107)=acd25(76)*acd25(53)
      acd25(108)=acd25(74)*acd25(52)
      acd25(109)=acd25(72)*acd25(51)
      acd25(110)=acd25(70)*acd25(50)
      acd25(111)=-acd25(38)*acd25(87)
      acd25(112)=acd25(30)*acd25(32)
      acd25(113)=acd25(21)*acd25(24)
      acd25(114)=acd25(1)*acd25(9)
      acd25(115)=2.0_ki*acd25(34)
      acd25(116)=-acd25(37)*acd25(115)
      acd25(99)=acd25(116)+acd25(114)+acd25(113)+acd25(112)+acd25(111)+acd25(11&
      &0)+acd25(109)+acd25(108)+acd25(107)+acd25(106)+acd25(105)+acd25(104)+acd&
      &25(103)+acd25(102)+acd25(101)+acd25(99)+acd25(100)
      acd25(99)=acd25(8)*acd25(99)
      acd25(100)=-acd25(46)*acd25(84)
      acd25(101)=-acd25(44)*acd25(82)
      acd25(102)=-acd25(80)*acd25(42)
      acd25(103)=-acd25(74)*acd25(40)
      acd25(104)=-acd25(72)*acd25(39)
      acd25(105)=-acd25(38)*acd25(70)
      acd25(106)=-acd25(30)*acd25(31)
      acd25(107)=-acd25(21)*acd25(23)
      acd25(108)=-acd25(26)+acd25(28)
      acd25(108)=acd25(27)*acd25(108)
      acd25(109)=-acd25(1)*acd25(7)
      acd25(100)=acd25(109)+acd25(108)+acd25(107)+acd25(106)+acd25(105)+acd25(1&
      &04)+acd25(103)+acd25(102)+acd25(100)+acd25(101)
      acd25(100)=acd25(6)*acd25(100)
      acd25(101)=-2.0_ki*acd25(6)+acd25(36)-acd25(35)
      acd25(101)=acd25(27)*acd25(101)
      acd25(102)=-acd25(46)*acd25(45)
      acd25(103)=-acd25(44)*acd25(43)
      acd25(104)=-acd25(41)*acd25(42)
      acd25(105)=-acd25(14)*acd25(40)
      acd25(106)=-acd25(12)*acd25(39)
      acd25(107)=-acd25(4)*acd25(31)
      acd25(108)=-acd25(2)*acd25(23)
      acd25(109)=-acd25(38)*acd25(10)
      acd25(110)=-acd25(22)*acd25(7)
      acd25(101)=acd25(110)+acd25(109)+acd25(108)+acd25(107)+acd25(106)+acd25(1&
      &05)+acd25(104)+acd25(103)+acd25(47)+acd25(102)+acd25(101)
      acd25(101)=acd25(101)*acd25(115)
      acd25(102)=acd25(78)*acd25(19)
      acd25(103)=acd25(76)*acd25(17)
      acd25(104)=acd25(74)*acd25(15)
      acd25(105)=acd25(72)*acd25(13)
      acd25(106)=acd25(70)*acd25(11)
      acd25(107)=acd25(30)*acd25(5)
      acd25(108)=acd25(21)*acd25(3)
      acd25(102)=acd25(108)+acd25(107)+acd25(106)+acd25(105)+acd25(104)+acd25(1&
      &02)+acd25(103)
      acd25(102)=acd25(22)*acd25(102)
      acd25(103)=acd25(18)*acd25(19)
      acd25(104)=acd25(16)*acd25(17)
      acd25(105)=acd25(14)*acd25(15)
      acd25(106)=acd25(12)*acd25(13)
      acd25(107)=acd25(10)*acd25(11)
      acd25(108)=acd25(4)*acd25(5)
      acd25(109)=acd25(2)*acd25(3)
      acd25(103)=acd25(109)+acd25(108)+acd25(107)+acd25(106)+acd25(105)+acd25(1&
      &04)-acd25(20)+acd25(103)
      acd25(103)=acd25(1)*acd25(103)
      acd25(104)=-acd25(96)*acd25(97)
      acd25(105)=-acd25(94)*acd25(95)
      acd25(106)=-acd25(88)*acd25(89)
      acd25(107)=-acd25(84)*acd25(85)
      acd25(108)=-acd25(82)*acd25(83)
      acd25(109)=-acd25(28)*acd25(29)
      acd25(110)=-acd25(80)*acd25(81)
      acd25(111)=-acd25(78)*acd25(79)
      acd25(112)=-acd25(76)*acd25(77)
      acd25(113)=-acd25(74)*acd25(75)
      acd25(114)=-acd25(72)*acd25(73)
      acd25(115)=-acd25(70)*acd25(71)
      acd25(116)=-acd25(30)*acd25(33)
      acd25(117)=-acd25(21)*acd25(25)
      brack=acd25(98)+acd25(99)+acd25(100)+acd25(101)+acd25(102)+acd25(103)+acd&
      &25(104)+acd25(105)+acd25(106)+acd25(107)+acd25(108)+acd25(109)+acd25(110&
      &)+acd25(111)+acd25(112)+acd25(113)+acd25(114)+acd25(115)+acd25(116)+acd2&
      &5(117)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd25h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(113) :: acd25
      complex(ki) :: brack
      acd25(1)=d(iv1,iv2)
      acd25(2)=dotproduct(k1,qshift)
      acd25(3)=abb25(16)
      acd25(4)=dotproduct(k2,qshift)
      acd25(5)=abb25(47)
      acd25(6)=dotproduct(l3,qshift)
      acd25(7)=abb25(68)
      acd25(8)=dotproduct(l4,qshift)
      acd25(9)=dotproduct(k5,qshift)
      acd25(10)=abb25(64)
      acd25(11)=dotproduct(qshift,qshift)
      acd25(12)=dotproduct(qshift,spvak2k1)
      acd25(13)=abb25(21)
      acd25(14)=dotproduct(qshift,spvak2l3)
      acd25(15)=abb25(83)
      acd25(16)=dotproduct(qshift,spvak2l4)
      acd25(17)=abb25(82)
      acd25(18)=dotproduct(qshift,spvak2k5)
      acd25(19)=abb25(15)
      acd25(20)=dotproduct(qshift,spval3k1)
      acd25(21)=abb25(79)
      acd25(22)=dotproduct(qshift,spval4k1)
      acd25(23)=abb25(76)
      acd25(24)=dotproduct(qshift,spvak5k1)
      acd25(25)=abb25(58)
      acd25(26)=abb25(41)
      acd25(27)=k1(iv1)
      acd25(28)=k2(iv2)
      acd25(29)=abb25(67)
      acd25(30)=k5(iv2)
      acd25(31)=abb25(65)
      acd25(32)=qshift(iv2)
      acd25(33)=spvak2k1(iv2)
      acd25(34)=abb25(20)
      acd25(35)=spvak2l3(iv2)
      acd25(36)=abb25(85)
      acd25(37)=spvak2k5(iv2)
      acd25(38)=abb25(80)
      acd25(39)=spval3k1(iv2)
      acd25(40)=abb25(74)
      acd25(41)=spval3k5(iv2)
      acd25(42)=abb25(77)
      acd25(43)=spvak5l3(iv2)
      acd25(44)=abb25(71)
      acd25(45)=k1(iv2)
      acd25(46)=k2(iv1)
      acd25(47)=k5(iv1)
      acd25(48)=qshift(iv1)
      acd25(49)=spvak2k1(iv1)
      acd25(50)=spvak2l3(iv1)
      acd25(51)=spvak2k5(iv1)
      acd25(52)=spval3k1(iv1)
      acd25(53)=spval3k5(iv1)
      acd25(54)=spvak5l3(iv1)
      acd25(55)=abb25(18)
      acd25(56)=l3(iv1)
      acd25(57)=l3(iv2)
      acd25(58)=l4(iv1)
      acd25(59)=l4(iv2)
      acd25(60)=abb25(19)
      acd25(61)=spvak2l4(iv2)
      acd25(62)=spval4k1(iv2)
      acd25(63)=spvak5k1(iv2)
      acd25(64)=spvak2l4(iv1)
      acd25(65)=spval4k1(iv1)
      acd25(66)=spvak5k1(iv1)
      acd25(67)=abb25(33)
      acd25(68)=abb25(12)
      acd25(69)=abb25(23)
      acd25(70)=abb25(34)
      acd25(71)=abb25(10)
      acd25(72)=abb25(29)
      acd25(73)=abb25(22)
      acd25(74)=spvak1k2(iv2)
      acd25(75)=abb25(66)
      acd25(76)=spvak1l3(iv2)
      acd25(77)=spval3k2(iv2)
      acd25(78)=abb25(32)
      acd25(79)=spval3l4(iv2)
      acd25(80)=abb25(31)
      acd25(81)=spval4k2(iv2)
      acd25(82)=abb25(28)
      acd25(83)=spval4l3(iv2)
      acd25(84)=abb25(27)
      acd25(85)=spvak5k2(iv2)
      acd25(86)=abb25(24)
      acd25(87)=spvak1k2(iv1)
      acd25(88)=spvak1l3(iv1)
      acd25(89)=spval3k2(iv1)
      acd25(90)=spval3l4(iv1)
      acd25(91)=spval4k2(iv1)
      acd25(92)=spval4l3(iv1)
      acd25(93)=spvak5k2(iv1)
      acd25(94)=acd25(86)*acd25(93)
      acd25(95)=acd25(84)*acd25(92)
      acd25(96)=acd25(82)*acd25(91)
      acd25(97)=acd25(80)*acd25(90)
      acd25(98)=acd25(78)*acd25(89)
      acd25(99)=-acd25(75)*acd25(87)
      acd25(100)=acd25(64)*acd25(69)
      acd25(101)=acd25(54)*acd25(73)
      acd25(102)=acd25(53)*acd25(72)
      acd25(103)=acd25(52)*acd25(71)
      acd25(104)=acd25(51)*acd25(70)
      acd25(105)=acd25(50)*acd25(68)
      acd25(106)=acd25(47)*acd25(60)
      acd25(107)=acd25(46)*acd25(55)
      acd25(108)=-acd25(15)*acd25(88)
      acd25(109)=acd25(27)*acd25(34)
      acd25(110)=2.0_ki*acd25(48)
      acd25(111)=-acd25(13)*acd25(110)
      acd25(112)=acd25(49)*acd25(67)
      acd25(94)=2.0_ki*acd25(112)+acd25(111)+acd25(109)+acd25(108)+acd25(107)+a&
      &cd25(106)+acd25(105)+acd25(104)+acd25(103)+acd25(102)+acd25(101)+acd25(1&
      &00)+acd25(99)+acd25(98)+acd25(97)+acd25(96)+acd25(94)+acd25(95)
      acd25(94)=acd25(33)*acd25(94)
      acd25(95)=acd25(86)*acd25(85)
      acd25(96)=acd25(84)*acd25(83)
      acd25(97)=acd25(82)*acd25(81)
      acd25(98)=acd25(80)*acd25(79)
      acd25(99)=acd25(78)*acd25(77)
      acd25(100)=-acd25(75)*acd25(74)
      acd25(101)=acd25(61)*acd25(69)
      acd25(102)=acd25(43)*acd25(73)
      acd25(103)=acd25(41)*acd25(72)
      acd25(104)=acd25(39)*acd25(71)
      acd25(105)=acd25(37)*acd25(70)
      acd25(106)=acd25(35)*acd25(68)
      acd25(107)=acd25(30)*acd25(60)
      acd25(108)=acd25(28)*acd25(55)
      acd25(109)=-acd25(15)*acd25(76)
      acd25(111)=acd25(45)*acd25(34)
      acd25(112)=2.0_ki*acd25(32)
      acd25(113)=-acd25(13)*acd25(112)
      acd25(95)=acd25(113)+acd25(111)+acd25(109)+acd25(108)+acd25(107)+acd25(10&
      &6)+acd25(105)+acd25(104)+acd25(103)+acd25(102)+acd25(101)+acd25(100)+acd&
      &25(99)+acd25(98)+acd25(97)+acd25(95)+acd25(96)
      acd25(95)=acd25(49)*acd25(95)
      acd25(96)=-acd25(25)*acd25(24)
      acd25(97)=-acd25(23)*acd25(22)
      acd25(98)=-acd25(21)*acd25(20)
      acd25(99)=-acd25(19)*acd25(18)
      acd25(100)=-acd25(17)*acd25(16)
      acd25(101)=-acd25(13)*acd25(12)
      acd25(102)=-acd25(10)*acd25(9)
      acd25(103)=-acd25(5)*acd25(4)
      acd25(104)=-acd25(3)*acd25(2)
      acd25(105)=-acd25(15)*acd25(14)
      acd25(106)=-acd25(6)-2.0_ki*acd25(11)+acd25(8)
      acd25(106)=acd25(7)*acd25(106)
      acd25(96)=acd25(106)+acd25(105)+acd25(104)+acd25(103)+acd25(102)+acd25(10&
      &1)+acd25(100)+acd25(99)+acd25(98)+acd25(97)+acd25(26)+acd25(96)
      acd25(96)=acd25(1)*acd25(96)
      acd25(97)=-acd25(25)*acd25(63)
      acd25(98)=-acd25(23)*acd25(62)
      acd25(99)=-acd25(21)*acd25(39)
      acd25(100)=-acd25(19)*acd25(37)
      acd25(101)=-acd25(17)*acd25(61)
      acd25(102)=-acd25(10)*acd25(30)
      acd25(103)=-acd25(5)*acd25(28)
      acd25(104)=-acd25(15)*acd25(35)
      acd25(105)=acd25(59)-acd25(57)
      acd25(105)=acd25(7)*acd25(105)
      acd25(106)=-acd25(45)*acd25(3)
      acd25(97)=acd25(106)+acd25(105)+acd25(104)+acd25(103)+acd25(102)+acd25(10&
      &1)+acd25(100)+acd25(99)+acd25(97)+acd25(98)
      acd25(97)=acd25(97)*acd25(110)
      acd25(98)=-4.0_ki*acd25(48)+acd25(58)-acd25(56)
      acd25(98)=acd25(7)*acd25(98)
      acd25(99)=-acd25(25)*acd25(66)
      acd25(100)=-acd25(23)*acd25(65)
      acd25(101)=-acd25(21)*acd25(52)
      acd25(102)=-acd25(19)*acd25(51)
      acd25(103)=-acd25(17)*acd25(64)
      acd25(104)=-acd25(10)*acd25(47)
      acd25(105)=-acd25(5)*acd25(46)
      acd25(106)=-acd25(15)*acd25(50)
      acd25(107)=-acd25(27)*acd25(3)
      acd25(98)=acd25(107)+acd25(106)+acd25(105)+acd25(104)+acd25(103)+acd25(10&
      &2)+acd25(101)+acd25(99)+acd25(100)+acd25(98)
      acd25(98)=acd25(98)*acd25(112)
      acd25(99)=acd25(44)*acd25(54)
      acd25(100)=acd25(42)*acd25(53)
      acd25(101)=acd25(52)*acd25(40)
      acd25(102)=acd25(51)*acd25(38)
      acd25(103)=acd25(50)*acd25(36)
      acd25(104)=acd25(47)*acd25(31)
      acd25(105)=acd25(46)*acd25(29)
      acd25(99)=acd25(105)+acd25(104)+acd25(103)+acd25(102)+acd25(101)+acd25(99&
      &)+acd25(100)
      acd25(99)=acd25(45)*acd25(99)
      acd25(100)=acd25(43)*acd25(44)
      acd25(101)=acd25(41)*acd25(42)
      acd25(102)=acd25(39)*acd25(40)
      acd25(103)=acd25(37)*acd25(38)
      acd25(104)=acd25(35)*acd25(36)
      acd25(105)=acd25(30)*acd25(31)
      acd25(106)=acd25(28)*acd25(29)
      acd25(100)=acd25(106)+acd25(105)+acd25(104)+acd25(103)+acd25(102)+acd25(1&
      &00)+acd25(101)
      acd25(100)=acd25(27)*acd25(100)
      brack=acd25(94)+acd25(95)+2.0_ki*acd25(96)+acd25(97)+acd25(98)+acd25(99)+&
      &acd25(100)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd25h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd25
      complex(ki) :: brack
      acd25(1)=d(iv1,iv2)
      acd25(2)=k1(iv3)
      acd25(3)=abb25(16)
      acd25(4)=k2(iv3)
      acd25(5)=abb25(47)
      acd25(6)=l3(iv3)
      acd25(7)=abb25(68)
      acd25(8)=l4(iv3)
      acd25(9)=k5(iv3)
      acd25(10)=abb25(64)
      acd25(11)=qshift(iv3)
      acd25(12)=spvak2k1(iv3)
      acd25(13)=abb25(21)
      acd25(14)=spvak2l3(iv3)
      acd25(15)=abb25(83)
      acd25(16)=spvak2l4(iv3)
      acd25(17)=abb25(82)
      acd25(18)=spvak2k5(iv3)
      acd25(19)=abb25(15)
      acd25(20)=spval3k1(iv3)
      acd25(21)=abb25(79)
      acd25(22)=spval4k1(iv3)
      acd25(23)=abb25(76)
      acd25(24)=spvak5k1(iv3)
      acd25(25)=abb25(58)
      acd25(26)=d(iv1,iv3)
      acd25(27)=k1(iv2)
      acd25(28)=k2(iv2)
      acd25(29)=l3(iv2)
      acd25(30)=l4(iv2)
      acd25(31)=k5(iv2)
      acd25(32)=qshift(iv2)
      acd25(33)=spvak2k1(iv2)
      acd25(34)=spvak2l3(iv2)
      acd25(35)=spvak2l4(iv2)
      acd25(36)=spvak2k5(iv2)
      acd25(37)=spval3k1(iv2)
      acd25(38)=spval4k1(iv2)
      acd25(39)=spvak5k1(iv2)
      acd25(40)=d(iv2,iv3)
      acd25(41)=k1(iv1)
      acd25(42)=k2(iv1)
      acd25(43)=l3(iv1)
      acd25(44)=l4(iv1)
      acd25(45)=k5(iv1)
      acd25(46)=qshift(iv1)
      acd25(47)=spvak2k1(iv1)
      acd25(48)=spvak2l3(iv1)
      acd25(49)=spvak2l4(iv1)
      acd25(50)=spvak2k5(iv1)
      acd25(51)=spval3k1(iv1)
      acd25(52)=spval4k1(iv1)
      acd25(53)=spvak5k1(iv1)
      acd25(54)=-acd25(25)*acd25(53)
      acd25(55)=-acd25(23)*acd25(52)
      acd25(56)=-acd25(21)*acd25(51)
      acd25(57)=-acd25(19)*acd25(50)
      acd25(58)=-acd25(17)*acd25(49)
      acd25(59)=-acd25(15)*acd25(48)
      acd25(60)=-acd25(13)*acd25(47)
      acd25(61)=-acd25(10)*acd25(45)
      acd25(62)=-acd25(5)*acd25(42)
      acd25(63)=-acd25(3)*acd25(41)
      acd25(64)=-acd25(43)-4.0_ki*acd25(46)+acd25(44)
      acd25(64)=acd25(7)*acd25(64)
      acd25(54)=acd25(64)+acd25(63)+acd25(62)+acd25(61)+acd25(60)+acd25(59)+acd&
      &25(58)+acd25(57)+acd25(56)+acd25(54)+acd25(55)
      acd25(54)=acd25(40)*acd25(54)
      acd25(55)=-acd25(25)*acd25(39)
      acd25(56)=-acd25(23)*acd25(38)
      acd25(57)=-acd25(21)*acd25(37)
      acd25(58)=-acd25(19)*acd25(36)
      acd25(59)=-acd25(17)*acd25(35)
      acd25(60)=-acd25(15)*acd25(34)
      acd25(61)=-acd25(13)*acd25(33)
      acd25(62)=-acd25(10)*acd25(31)
      acd25(63)=-acd25(5)*acd25(28)
      acd25(64)=-acd25(3)*acd25(27)
      acd25(65)=-acd25(29)-4.0_ki*acd25(32)+acd25(30)
      acd25(65)=acd25(7)*acd25(65)
      acd25(55)=acd25(65)+acd25(64)+acd25(63)+acd25(62)+acd25(61)+acd25(60)+acd&
      &25(59)+acd25(58)+acd25(57)+acd25(55)+acd25(56)
      acd25(55)=acd25(26)*acd25(55)
      acd25(56)=-acd25(25)*acd25(24)
      acd25(57)=-acd25(23)*acd25(22)
      acd25(58)=-acd25(21)*acd25(20)
      acd25(59)=-acd25(19)*acd25(18)
      acd25(60)=-acd25(17)*acd25(16)
      acd25(61)=-acd25(15)*acd25(14)
      acd25(62)=-acd25(13)*acd25(12)
      acd25(63)=-acd25(10)*acd25(9)
      acd25(64)=-acd25(5)*acd25(4)
      acd25(65)=-acd25(3)*acd25(2)
      acd25(66)=-acd25(6)-4.0_ki*acd25(11)+acd25(8)
      acd25(66)=acd25(7)*acd25(66)
      acd25(56)=acd25(66)+acd25(65)+acd25(64)+acd25(63)+acd25(62)+acd25(61)+acd&
      &25(60)+acd25(59)+acd25(58)+acd25(56)+acd25(57)
      acd25(56)=acd25(1)*acd25(56)
      acd25(54)=acd25(56)+acd25(54)+acd25(55)
      brack=2.0_ki*acd25(54)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd25h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(10) :: acd25
      complex(ki) :: brack
      acd25(1)=d(iv1,iv2)
      acd25(2)=d(iv3,iv4)
      acd25(3)=abb25(68)
      acd25(4)=d(iv1,iv3)
      acd25(5)=d(iv2,iv4)
      acd25(6)=d(iv1,iv4)
      acd25(7)=d(iv2,iv3)
      acd25(8)=-acd25(2)*acd25(1)
      acd25(9)=-acd25(5)*acd25(4)
      acd25(10)=-acd25(7)*acd25(6)
      acd25(8)=acd25(10)+acd25(8)+acd25(9)
      brack=8.0_ki*acd25(8)*acd25(3)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd25h3_qp
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
!---#[ subroutine reconstruct_d25:
   subroutine     reconstruct_d25(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_25:
      coeffs%coeffs_25%c0 = derivative(czip)
      coeffs%coeffs_25%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_25%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_25%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_25%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_25%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_25%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_25%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_25%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_25%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_25%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_25%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_25%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_25%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_25%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_25%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_25%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_25%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_25%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_25%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_25%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_25%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_25%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_25%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_25%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_25%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_25%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_25%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_25%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_25%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_25%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_25%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_25%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_25%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_25%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_25%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_25%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_25%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_25%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_25%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_25%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_25%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_25%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_25%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_25%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_25%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_25%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_25%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_25%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_25%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_25%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_25%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_25%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_25%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_25%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_25%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_25%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_25%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_25%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_25%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_25%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_25%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_25%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_25%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_25%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_25%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_25%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_25%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_25%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_25%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_25:
   end subroutine reconstruct_d25
!---#] subroutine reconstruct_d25:
end module p0_gg_hhg_d25h3l1d_qp
