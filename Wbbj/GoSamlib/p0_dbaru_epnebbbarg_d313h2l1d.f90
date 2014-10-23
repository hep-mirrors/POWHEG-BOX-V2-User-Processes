module     p0_dbaru_epnebbbarg_d313h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d313h2l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d313
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd313h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(93) :: acd313
      complex(ki) :: brack
      acd313(1)=dotproduct(k2,qshift)
      acd313(2)=dotproduct(qshift,spvak2k7)
      acd313(3)=abb313(36)
      acd313(4)=dotproduct(k3,qshift)
      acd313(5)=dotproduct(k4,qshift)
      acd313(6)=dotproduct(k7,qshift)
      acd313(7)=abb313(62)
      acd313(8)=dotproduct(qshift,qshift)
      acd313(9)=abb313(43)
      acd313(10)=dotproduct(qshift,spvak4k2)
      acd313(11)=abb313(20)
      acd313(12)=dotproduct(qshift,spvak4k3)
      acd313(13)=abb313(29)
      acd313(14)=dotproduct(qshift,spvak4l6)
      acd313(15)=abb313(59)
      acd313(16)=abb313(25)
      acd313(17)=dotproduct(qshift,spvak4k7)
      acd313(18)=abb313(58)
      acd313(19)=abb313(49)
      acd313(20)=abb313(21)
      acd313(21)=abb313(34)
      acd313(22)=abb313(56)
      acd313(23)=abb313(24)
      acd313(24)=abb313(94)
      acd313(25)=abb313(88)
      acd313(26)=dotproduct(qshift,spvak2l6)
      acd313(27)=abb313(44)
      acd313(28)=abb313(48)
      acd313(29)=abb313(40)
      acd313(30)=abb313(92)
      acd313(31)=abb313(57)
      acd313(32)=abb313(46)
      acd313(33)=abb313(33)
      acd313(34)=abb313(26)
      acd313(35)=abb313(54)
      acd313(36)=abb313(45)
      acd313(37)=abb313(31)
      acd313(38)=abb313(61)
      acd313(39)=abb313(27)
      acd313(40)=abb313(53)
      acd313(41)=dotproduct(qshift,spvak3k2)
      acd313(42)=abb313(10)
      acd313(43)=dotproduct(qshift,spvak3l6)
      acd313(44)=abb313(19)
      acd313(45)=abb313(13)
      acd313(46)=dotproduct(qshift,spvak1k2)
      acd313(47)=abb313(28)
      acd313(48)=dotproduct(qshift,spvak1k3)
      acd313(49)=abb313(16)
      acd313(50)=dotproduct(qshift,spvak1l6)
      acd313(51)=abb313(14)
      acd313(52)=dotproduct(qshift,spvak2k3)
      acd313(53)=abb313(11)
      acd313(54)=dotproduct(qshift,spval5k2)
      acd313(55)=abb313(39)
      acd313(56)=dotproduct(qshift,spval5k3)
      acd313(57)=abb313(42)
      acd313(58)=dotproduct(qshift,spval5l6)
      acd313(59)=abb313(50)
      acd313(60)=dotproduct(qshift,spvak7l6)
      acd313(61)=abb313(18)
      acd313(62)=abb313(89)
      acd313(63)=abb313(93)
      acd313(64)=abb313(91)
      acd313(65)=dotproduct(qshift,spvak3k7)
      acd313(66)=abb313(12)
      acd313(67)=abb313(35)
      acd313(68)=abb313(32)
      acd313(69)=abb313(22)
      acd313(70)=abb313(15)
      acd313(71)=abb313(17)
      acd313(72)=abb313(37)
      acd313(73)=abb313(76)
      acd313(74)=abb313(71)
      acd313(75)=abb313(55)
      acd313(76)=abb313(23)
      acd313(77)=acd313(4)+acd313(5)
      acd313(78)=-acd313(20)*acd313(77)
      acd313(79)=acd313(26)*acd313(38)
      acd313(80)=-acd313(14)*acd313(37)
      acd313(81)=-acd313(12)*acd313(36)
      acd313(82)=-acd313(1)*acd313(11)
      acd313(83)=-acd313(10)*acd313(35)
      acd313(78)=acd313(83)+acd313(82)+acd313(81)+acd313(80)+acd313(39)+acd313(&
      &79)+acd313(78)
      acd313(78)=acd313(10)*acd313(78)
      acd313(79)=-acd313(41)*acd313(42)
      acd313(80)=-acd313(38)*acd313(43)
      acd313(81)=-acd313(14)*acd313(40)
      acd313(79)=acd313(81)+acd313(80)+acd313(44)+acd313(79)
      acd313(79)=acd313(12)*acd313(79)
      acd313(80)=acd313(1)-acd313(77)
      acd313(80)=acd313(3)*acd313(80)
      acd313(81)=acd313(14)*acd313(15)
      acd313(82)=-acd313(12)*acd313(13)
      acd313(80)=acd313(82)+acd313(16)-acd313(81)+acd313(80)
      acd313(80)=acd313(1)*acd313(80)
      acd313(81)=acd313(81)-acd313(21)
      acd313(81)=acd313(81)*acd313(77)
      acd313(82)=acd313(58)*acd313(59)
      acd313(83)=acd313(56)*acd313(57)
      acd313(84)=acd313(54)*acd313(55)
      acd313(85)=acd313(52)*acd313(53)
      acd313(86)=acd313(50)*acd313(51)
      acd313(87)=acd313(48)*acd313(49)
      acd313(88)=acd313(46)*acd313(47)
      acd313(89)=-acd313(32)*acd313(60)
      acd313(90)=acd313(26)*acd313(45)
      acd313(91)=-acd313(8)*acd313(29)
      acd313(92)=acd313(6)*acd313(23)
      acd313(93)=acd313(2)*acd313(34)
      acd313(78)=acd313(93)+acd313(78)+acd313(80)+acd313(79)+acd313(92)+acd313(&
      &91)+acd313(90)+acd313(89)+acd313(88)+acd313(87)+acd313(86)+acd313(85)+ac&
      &d313(84)+acd313(83)-acd313(61)+acd313(82)+acd313(81)
      acd313(78)=acd313(2)*acd313(78)
      acd313(79)=acd313(65)*acd313(66)
      acd313(80)=acd313(17)*acd313(64)
      acd313(81)=-acd313(8)*acd313(31)
      acd313(82)=acd313(6)*acd313(25)
      acd313(79)=acd313(82)+acd313(81)+acd313(80)-acd313(67)+acd313(79)
      acd313(79)=acd313(12)*acd313(79)
      acd313(80)=acd313(17)*acd313(18)
      acd313(81)=acd313(8)*acd313(9)
      acd313(82)=acd313(6)*acd313(7)
      acd313(80)=acd313(82)+acd313(80)+acd313(81)
      acd313(81)=-acd313(22)+acd313(80)
      acd313(77)=acd313(81)*acd313(77)
      acd313(80)=-acd313(19)-acd313(80)
      acd313(80)=acd313(1)*acd313(80)
      acd313(81)=acd313(17)*acd313(62)
      acd313(82)=-acd313(8)*acd313(30)
      acd313(83)=acd313(6)*acd313(24)
      acd313(81)=acd313(83)+acd313(82)-acd313(63)+acd313(81)
      acd313(81)=acd313(10)*acd313(81)
      acd313(82)=-acd313(58)*acd313(75)
      acd313(83)=-acd313(56)*acd313(74)
      acd313(84)=-acd313(54)*acd313(73)
      acd313(85)=-acd313(52)*acd313(72)
      acd313(86)=-acd313(50)*acd313(71)
      acd313(87)=-acd313(48)*acd313(70)
      acd313(88)=-acd313(46)*acd313(69)
      acd313(89)=-acd313(26)*acd313(68)
      acd313(90)=acd313(26)*acd313(32)
      acd313(90)=acd313(33)+acd313(90)
      acd313(90)=acd313(8)*acd313(90)
      acd313(91)=acd313(26)*acd313(27)
      acd313(91)=-acd313(28)+acd313(91)
      acd313(91)=acd313(6)*acd313(91)
      brack=acd313(76)+acd313(77)+acd313(78)+acd313(79)+acd313(80)+acd313(81)+a&
      &cd313(82)+acd313(83)+acd313(84)+acd313(85)+acd313(86)+acd313(87)+acd313(&
      &88)+acd313(89)+acd313(90)+acd313(91)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd313h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(124) :: acd313
      complex(ki) :: brack
      acd313(1)=k2(iv1)
      acd313(2)=dotproduct(k2,qshift)
      acd313(3)=dotproduct(qshift,spvak2k7)
      acd313(4)=abb313(36)
      acd313(5)=dotproduct(k3,qshift)
      acd313(6)=dotproduct(k4,qshift)
      acd313(7)=dotproduct(k7,qshift)
      acd313(8)=abb313(62)
      acd313(9)=dotproduct(qshift,qshift)
      acd313(10)=abb313(43)
      acd313(11)=dotproduct(qshift,spvak4k2)
      acd313(12)=abb313(20)
      acd313(13)=dotproduct(qshift,spvak4k3)
      acd313(14)=abb313(29)
      acd313(15)=dotproduct(qshift,spvak4l6)
      acd313(16)=abb313(59)
      acd313(17)=abb313(25)
      acd313(18)=dotproduct(qshift,spvak4k7)
      acd313(19)=abb313(58)
      acd313(20)=abb313(49)
      acd313(21)=k3(iv1)
      acd313(22)=abb313(21)
      acd313(23)=abb313(34)
      acd313(24)=abb313(56)
      acd313(25)=k4(iv1)
      acd313(26)=k7(iv1)
      acd313(27)=abb313(24)
      acd313(28)=abb313(94)
      acd313(29)=abb313(88)
      acd313(30)=dotproduct(qshift,spvak2l6)
      acd313(31)=abb313(44)
      acd313(32)=abb313(48)
      acd313(33)=qshift(iv1)
      acd313(34)=abb313(40)
      acd313(35)=abb313(92)
      acd313(36)=abb313(57)
      acd313(37)=abb313(46)
      acd313(38)=abb313(33)
      acd313(39)=spvak2k7(iv1)
      acd313(40)=abb313(26)
      acd313(41)=abb313(54)
      acd313(42)=abb313(45)
      acd313(43)=abb313(31)
      acd313(44)=abb313(61)
      acd313(45)=abb313(27)
      acd313(46)=abb313(53)
      acd313(47)=dotproduct(qshift,spvak3k2)
      acd313(48)=abb313(10)
      acd313(49)=dotproduct(qshift,spvak3l6)
      acd313(50)=abb313(19)
      acd313(51)=abb313(13)
      acd313(52)=dotproduct(qshift,spvak1k2)
      acd313(53)=abb313(28)
      acd313(54)=dotproduct(qshift,spvak1k3)
      acd313(55)=abb313(16)
      acd313(56)=dotproduct(qshift,spvak1l6)
      acd313(57)=abb313(14)
      acd313(58)=dotproduct(qshift,spvak2k3)
      acd313(59)=abb313(11)
      acd313(60)=dotproduct(qshift,spval5k2)
      acd313(61)=abb313(39)
      acd313(62)=dotproduct(qshift,spval5k3)
      acd313(63)=abb313(42)
      acd313(64)=dotproduct(qshift,spval5l6)
      acd313(65)=abb313(50)
      acd313(66)=dotproduct(qshift,spvak7l6)
      acd313(67)=abb313(18)
      acd313(68)=spvak4k2(iv1)
      acd313(69)=abb313(89)
      acd313(70)=abb313(93)
      acd313(71)=spvak4k3(iv1)
      acd313(72)=abb313(91)
      acd313(73)=dotproduct(qshift,spvak3k7)
      acd313(74)=abb313(12)
      acd313(75)=abb313(35)
      acd313(76)=spvak4l6(iv1)
      acd313(77)=spvak4k7(iv1)
      acd313(78)=spvak2l6(iv1)
      acd313(79)=abb313(32)
      acd313(80)=spvak1k2(iv1)
      acd313(81)=abb313(22)
      acd313(82)=spvak1k3(iv1)
      acd313(83)=abb313(15)
      acd313(84)=spvak1l6(iv1)
      acd313(85)=abb313(17)
      acd313(86)=spvak2k3(iv1)
      acd313(87)=abb313(37)
      acd313(88)=spvak3k2(iv1)
      acd313(89)=spvak3l6(iv1)
      acd313(90)=spval5k2(iv1)
      acd313(91)=abb313(76)
      acd313(92)=spval5k3(iv1)
      acd313(93)=abb313(71)
      acd313(94)=spval5l6(iv1)
      acd313(95)=abb313(55)
      acd313(96)=spvak7l6(iv1)
      acd313(97)=spvak3k7(iv1)
      acd313(98)=acd313(21)+acd313(25)
      acd313(99)=-acd313(22)*acd313(98)
      acd313(100)=-acd313(76)*acd313(43)
      acd313(101)=acd313(44)*acd313(78)
      acd313(102)=-acd313(71)*acd313(42)
      acd313(103)=-acd313(1)*acd313(12)
      acd313(104)=acd313(68)*acd313(41)
      acd313(99)=-2.0_ki*acd313(104)+acd313(103)+acd313(102)+acd313(100)+acd313&
      &(101)+acd313(99)
      acd313(99)=acd313(11)*acd313(99)
      acd313(100)=-acd313(48)*acd313(88)
      acd313(101)=-acd313(76)*acd313(46)
      acd313(102)=-acd313(44)*acd313(89)
      acd313(103)=-acd313(1)*acd313(14)
      acd313(104)=-acd313(68)*acd313(42)
      acd313(100)=acd313(104)+acd313(103)+acd313(102)+acd313(100)+acd313(101)
      acd313(100)=acd313(13)*acd313(100)
      acd313(101)=2.0_ki*acd313(1)-acd313(98)
      acd313(101)=acd313(4)*acd313(101)
      acd313(102)=acd313(16)*acd313(76)
      acd313(103)=-acd313(71)*acd313(14)
      acd313(104)=-acd313(68)*acd313(12)
      acd313(101)=acd313(104)+acd313(103)-acd313(102)+acd313(101)
      acd313(101)=acd313(2)*acd313(101)
      acd313(103)=acd313(48)*acd313(47)
      acd313(104)=acd313(44)*acd313(49)
      acd313(105)=acd313(15)*acd313(46)
      acd313(103)=-acd313(50)+acd313(105)+acd313(103)+acd313(104)
      acd313(104)=-acd313(71)*acd313(103)
      acd313(105)=acd313(5)+acd313(6)
      acd313(106)=-acd313(22)*acd313(105)
      acd313(107)=acd313(44)*acd313(30)
      acd313(108)=acd313(15)*acd313(43)
      acd313(106)=acd313(45)+acd313(107)-acd313(108)+acd313(106)
      acd313(107)=acd313(68)*acd313(106)
      acd313(108)=acd313(15)*acd313(16)
      acd313(109)=acd313(108)-acd313(23)
      acd313(110)=acd313(98)*acd313(109)
      acd313(102)=acd313(102)*acd313(105)
      acd313(108)=acd313(108)-acd313(17)
      acd313(111)=-acd313(4)*acd313(105)
      acd313(111)=acd313(111)-acd313(108)
      acd313(111)=acd313(1)*acd313(111)
      acd313(112)=acd313(65)*acd313(94)
      acd313(113)=acd313(63)*acd313(92)
      acd313(114)=acd313(61)*acd313(90)
      acd313(115)=acd313(59)*acd313(86)
      acd313(116)=acd313(57)*acd313(84)
      acd313(117)=acd313(55)*acd313(82)
      acd313(118)=acd313(53)*acd313(80)
      acd313(119)=-acd313(37)*acd313(96)
      acd313(120)=acd313(78)*acd313(51)
      acd313(121)=2.0_ki*acd313(33)
      acd313(122)=-acd313(34)*acd313(121)
      acd313(123)=acd313(26)*acd313(27)
      acd313(124)=acd313(39)*acd313(40)
      acd313(99)=2.0_ki*acd313(124)+acd313(99)+acd313(101)+acd313(100)+acd313(1&
      &07)+acd313(111)+acd313(104)+acd313(123)+acd313(122)+acd313(120)+acd313(1&
      &19)+acd313(118)+acd313(117)+acd313(116)+acd313(115)+acd313(114)+acd313(1&
      &12)+acd313(113)+acd313(102)+acd313(110)
      acd313(99)=acd313(3)*acd313(99)
      acd313(100)=-acd313(13)*acd313(42)
      acd313(101)=-acd313(2)*acd313(12)
      acd313(102)=-acd313(11)*acd313(41)
      acd313(100)=acd313(102)+acd313(101)+acd313(100)+acd313(106)
      acd313(100)=acd313(11)*acd313(100)
      acd313(101)=-acd313(13)*acd313(103)
      acd313(102)=acd313(105)-acd313(2)
      acd313(103)=-acd313(4)*acd313(102)
      acd313(104)=-acd313(13)*acd313(14)
      acd313(103)=acd313(104)+acd313(103)-acd313(108)
      acd313(103)=acd313(2)*acd313(103)
      acd313(104)=acd313(109)*acd313(105)
      acd313(105)=acd313(65)*acd313(64)
      acd313(106)=acd313(63)*acd313(62)
      acd313(107)=acd313(61)*acd313(60)
      acd313(108)=acd313(59)*acd313(58)
      acd313(109)=acd313(57)*acd313(56)
      acd313(110)=acd313(55)*acd313(54)
      acd313(111)=acd313(53)*acd313(52)
      acd313(112)=-acd313(37)*acd313(66)
      acd313(113)=acd313(30)*acd313(51)
      acd313(114)=-acd313(9)*acd313(34)
      acd313(115)=acd313(7)*acd313(27)
      acd313(100)=acd313(100)+acd313(103)+acd313(101)+acd313(115)+acd313(114)+a&
      &cd313(113)+acd313(112)+acd313(111)+acd313(110)+acd313(109)+acd313(108)+a&
      &cd313(107)+acd313(106)-acd313(67)+acd313(105)+acd313(104)
      acd313(100)=acd313(39)*acd313(100)
      acd313(101)=acd313(74)*acd313(73)
      acd313(103)=acd313(18)*acd313(72)
      acd313(104)=-acd313(9)*acd313(36)
      acd313(105)=acd313(7)*acd313(29)
      acd313(101)=acd313(105)+acd313(104)+acd313(103)-acd313(75)+acd313(101)
      acd313(101)=acd313(71)*acd313(101)
      acd313(103)=acd313(74)*acd313(97)
      acd313(104)=acd313(77)*acd313(72)
      acd313(105)=-acd313(36)*acd313(121)
      acd313(106)=acd313(26)*acd313(29)
      acd313(103)=acd313(106)+acd313(105)+acd313(103)+acd313(104)
      acd313(103)=acd313(13)*acd313(103)
      acd313(104)=acd313(19)*acd313(18)
      acd313(105)=acd313(9)*acd313(10)
      acd313(106)=acd313(7)*acd313(8)
      acd313(104)=acd313(106)+acd313(104)+acd313(105)
      acd313(105)=acd313(104)-acd313(24)
      acd313(98)=acd313(105)*acd313(98)
      acd313(105)=acd313(121)*acd313(10)
      acd313(106)=acd313(19)*acd313(77)
      acd313(107)=acd313(26)*acd313(8)
      acd313(105)=acd313(105)+acd313(106)+acd313(107)
      acd313(102)=acd313(105)*acd313(102)
      acd313(104)=-acd313(20)-acd313(104)
      acd313(104)=acd313(1)*acd313(104)
      acd313(105)=acd313(18)*acd313(69)
      acd313(106)=-acd313(9)*acd313(35)
      acd313(107)=acd313(7)*acd313(28)
      acd313(105)=acd313(107)+acd313(106)-acd313(70)+acd313(105)
      acd313(105)=acd313(68)*acd313(105)
      acd313(106)=acd313(77)*acd313(69)
      acd313(107)=-acd313(35)*acd313(121)
      acd313(108)=acd313(26)*acd313(28)
      acd313(106)=acd313(108)+acd313(106)+acd313(107)
      acd313(106)=acd313(11)*acd313(106)
      acd313(107)=acd313(9)*acd313(37)
      acd313(108)=acd313(7)*acd313(31)
      acd313(107)=acd313(108)+acd313(107)-acd313(79)
      acd313(107)=acd313(78)*acd313(107)
      acd313(108)=acd313(30)*acd313(37)
      acd313(108)=acd313(38)+acd313(108)
      acd313(108)=acd313(108)*acd313(121)
      acd313(109)=-acd313(94)*acd313(95)
      acd313(110)=-acd313(92)*acd313(93)
      acd313(111)=-acd313(90)*acd313(91)
      acd313(112)=-acd313(86)*acd313(87)
      acd313(113)=-acd313(84)*acd313(85)
      acd313(114)=-acd313(82)*acd313(83)
      acd313(115)=-acd313(80)*acd313(81)
      acd313(116)=acd313(30)*acd313(31)
      acd313(116)=-acd313(32)+acd313(116)
      acd313(116)=acd313(26)*acd313(116)
      brack=acd313(98)+acd313(99)+acd313(100)+acd313(101)+acd313(102)+acd313(10&
      &3)+acd313(104)+acd313(105)+acd313(106)+acd313(107)+acd313(108)+acd313(10&
      &9)+acd313(110)+acd313(111)+acd313(112)+acd313(113)+acd313(114)+acd313(11&
      &5)+acd313(116)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd313h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(125) :: acd313
      complex(ki) :: brack
      acd313(1)=d(iv1,iv2)
      acd313(2)=dotproduct(k2,qshift)
      acd313(3)=abb313(43)
      acd313(4)=dotproduct(k3,qshift)
      acd313(5)=dotproduct(k4,qshift)
      acd313(6)=dotproduct(qshift,spvak2l6)
      acd313(7)=abb313(46)
      acd313(8)=dotproduct(qshift,spvak2k7)
      acd313(9)=abb313(40)
      acd313(10)=dotproduct(qshift,spvak4k2)
      acd313(11)=abb313(92)
      acd313(12)=dotproduct(qshift,spvak4k3)
      acd313(13)=abb313(57)
      acd313(14)=abb313(33)
      acd313(15)=k2(iv1)
      acd313(16)=k2(iv2)
      acd313(17)=abb313(36)
      acd313(18)=k3(iv2)
      acd313(19)=k4(iv2)
      acd313(20)=k7(iv2)
      acd313(21)=abb313(62)
      acd313(22)=qshift(iv2)
      acd313(23)=spvak2k7(iv2)
      acd313(24)=abb313(20)
      acd313(25)=abb313(29)
      acd313(26)=dotproduct(qshift,spvak4l6)
      acd313(27)=abb313(59)
      acd313(28)=abb313(25)
      acd313(29)=spvak4k2(iv2)
      acd313(30)=spvak4k3(iv2)
      acd313(31)=spvak4l6(iv2)
      acd313(32)=spvak4k7(iv2)
      acd313(33)=abb313(58)
      acd313(34)=k3(iv1)
      acd313(35)=k4(iv1)
      acd313(36)=k7(iv1)
      acd313(37)=qshift(iv1)
      acd313(38)=spvak2k7(iv1)
      acd313(39)=spvak4k2(iv1)
      acd313(40)=spvak4k3(iv1)
      acd313(41)=spvak4l6(iv1)
      acd313(42)=spvak4k7(iv1)
      acd313(43)=abb313(21)
      acd313(44)=abb313(34)
      acd313(45)=spvak2l6(iv2)
      acd313(46)=abb313(44)
      acd313(47)=abb313(24)
      acd313(48)=abb313(94)
      acd313(49)=abb313(88)
      acd313(50)=spvak2l6(iv1)
      acd313(51)=abb313(61)
      acd313(52)=abb313(13)
      acd313(53)=abb313(26)
      acd313(54)=abb313(54)
      acd313(55)=abb313(45)
      acd313(56)=abb313(31)
      acd313(57)=abb313(27)
      acd313(58)=abb313(53)
      acd313(59)=dotproduct(qshift,spvak3k2)
      acd313(60)=abb313(10)
      acd313(61)=dotproduct(qshift,spvak3l6)
      acd313(62)=abb313(19)
      acd313(63)=spvak1k2(iv2)
      acd313(64)=abb313(28)
      acd313(65)=spvak1k3(iv2)
      acd313(66)=abb313(16)
      acd313(67)=spvak1l6(iv2)
      acd313(68)=abb313(14)
      acd313(69)=spvak2k3(iv2)
      acd313(70)=abb313(11)
      acd313(71)=spvak3k2(iv2)
      acd313(72)=spvak3l6(iv2)
      acd313(73)=spval5k2(iv2)
      acd313(74)=abb313(39)
      acd313(75)=spval5k3(iv2)
      acd313(76)=abb313(42)
      acd313(77)=spval5l6(iv2)
      acd313(78)=abb313(50)
      acd313(79)=spvak7l6(iv2)
      acd313(80)=spvak1k2(iv1)
      acd313(81)=spvak1k3(iv1)
      acd313(82)=spvak1l6(iv1)
      acd313(83)=spvak2k3(iv1)
      acd313(84)=spvak3k2(iv1)
      acd313(85)=spvak3l6(iv1)
      acd313(86)=spval5k2(iv1)
      acd313(87)=spval5k3(iv1)
      acd313(88)=spval5l6(iv1)
      acd313(89)=spvak7l6(iv1)
      acd313(90)=abb313(89)
      acd313(91)=abb313(91)
      acd313(92)=spvak3k7(iv2)
      acd313(93)=abb313(12)
      acd313(94)=spvak3k7(iv1)
      acd313(95)=acd313(26)*acd313(56)
      acd313(96)=acd313(12)*acd313(55)
      acd313(97)=acd313(51)*acd313(6)
      acd313(98)=acd313(2)*acd313(24)
      acd313(99)=acd313(4)+acd313(5)
      acd313(100)=acd313(99)*acd313(43)
      acd313(101)=2.0_ki*acd313(54)
      acd313(102)=acd313(101)*acd313(10)
      acd313(95)=-acd313(97)+acd313(98)+acd313(100)+acd313(102)-acd313(57)+acd3&
      &13(95)+acd313(96)
      acd313(96)=-acd313(39)*acd313(95)
      acd313(97)=acd313(60)*acd313(59)
      acd313(98)=acd313(26)*acd313(58)
      acd313(100)=acd313(51)*acd313(61)
      acd313(102)=acd313(2)*acd313(25)
      acd313(97)=-acd313(62)+acd313(97)+acd313(98)+acd313(100)+acd313(102)
      acd313(98)=-acd313(40)*acd313(97)
      acd313(100)=acd313(41)*acd313(56)
      acd313(102)=acd313(51)*acd313(50)
      acd313(103)=acd313(40)*acd313(55)
      acd313(104)=acd313(34)+acd313(35)
      acd313(105)=acd313(104)*acd313(43)
      acd313(100)=acd313(100)-acd313(102)+acd313(103)+acd313(105)
      acd313(102)=-acd313(10)*acd313(100)
      acd313(103)=acd313(60)*acd313(84)
      acd313(105)=acd313(41)*acd313(58)
      acd313(106)=acd313(51)*acd313(85)
      acd313(103)=acd313(106)+acd313(103)+acd313(105)
      acd313(105)=-acd313(12)*acd313(103)
      acd313(106)=-acd313(99)+2.0_ki*acd313(2)
      acd313(106)=acd313(106)*acd313(17)
      acd313(107)=acd313(12)*acd313(25)
      acd313(108)=acd313(10)*acd313(24)
      acd313(106)=-acd313(106)-acd313(28)+acd313(107)+acd313(108)
      acd313(107)=-acd313(15)*acd313(106)
      acd313(99)=acd313(99)-acd313(2)
      acd313(108)=acd313(41)*acd313(99)
      acd313(109)=acd313(104)-acd313(15)
      acd313(110)=acd313(26)*acd313(109)
      acd313(108)=acd313(110)+acd313(108)
      acd313(108)=acd313(27)*acd313(108)
      acd313(110)=-acd313(44)*acd313(104)
      acd313(111)=acd313(78)*acd313(88)
      acd313(112)=acd313(76)*acd313(87)
      acd313(113)=acd313(74)*acd313(86)
      acd313(114)=acd313(70)*acd313(83)
      acd313(115)=acd313(68)*acd313(82)
      acd313(116)=acd313(66)*acd313(81)
      acd313(117)=acd313(64)*acd313(80)
      acd313(118)=acd313(50)*acd313(52)
      acd313(119)=-acd313(7)*acd313(89)
      acd313(120)=2.0_ki*acd313(37)
      acd313(121)=-acd313(9)*acd313(120)
      acd313(122)=acd313(36)*acd313(47)
      acd313(104)=acd313(104)*acd313(17)
      acd313(123)=-acd313(2)*acd313(104)
      acd313(124)=acd313(38)*acd313(53)
      acd313(96)=2.0_ki*acd313(124)+acd313(108)+acd313(96)+acd313(107)+acd313(1&
      &02)+acd313(123)+acd313(98)+acd313(122)+acd313(121)+acd313(119)+acd313(11&
      &8)+acd313(117)+acd313(116)+acd313(115)+acd313(114)+acd313(113)+acd313(11&
      &1)+acd313(112)+acd313(105)+acd313(110)
      acd313(96)=acd313(23)*acd313(96)
      acd313(95)=-acd313(29)*acd313(95)
      acd313(97)=-acd313(30)*acd313(97)
      acd313(98)=acd313(31)*acd313(56)
      acd313(102)=acd313(51)*acd313(45)
      acd313(105)=acd313(30)*acd313(55)
      acd313(107)=acd313(18)+acd313(19)
      acd313(108)=acd313(107)*acd313(43)
      acd313(98)=acd313(98)-acd313(102)+acd313(105)+acd313(108)
      acd313(102)=-acd313(10)*acd313(98)
      acd313(105)=acd313(60)*acd313(71)
      acd313(108)=acd313(31)*acd313(58)
      acd313(110)=acd313(51)*acd313(72)
      acd313(105)=acd313(110)+acd313(105)+acd313(108)
      acd313(108)=-acd313(12)*acd313(105)
      acd313(106)=-acd313(16)*acd313(106)
      acd313(110)=-acd313(17)*acd313(2)
      acd313(110)=acd313(110)-acd313(44)
      acd313(110)=acd313(107)*acd313(110)
      acd313(111)=acd313(31)*acd313(99)
      acd313(112)=acd313(107)-acd313(16)
      acd313(113)=acd313(26)*acd313(112)
      acd313(111)=acd313(113)+acd313(111)
      acd313(111)=acd313(27)*acd313(111)
      acd313(113)=acd313(78)*acd313(77)
      acd313(114)=acd313(76)*acd313(75)
      acd313(115)=acd313(74)*acd313(73)
      acd313(116)=acd313(70)*acd313(69)
      acd313(117)=acd313(68)*acd313(67)
      acd313(118)=acd313(66)*acd313(65)
      acd313(119)=acd313(64)*acd313(63)
      acd313(121)=acd313(45)*acd313(52)
      acd313(122)=-acd313(7)*acd313(79)
      acd313(123)=2.0_ki*acd313(22)
      acd313(124)=-acd313(9)*acd313(123)
      acd313(125)=acd313(20)*acd313(47)
      acd313(95)=acd313(111)+acd313(95)+acd313(106)+acd313(102)+acd313(97)+acd3&
      &13(125)+acd313(124)+acd313(122)+acd313(121)+acd313(119)+acd313(118)+acd3&
      &13(117)+acd313(116)+acd313(115)+acd313(113)+acd313(114)+acd313(108)+acd3&
      &13(110)
      acd313(95)=acd313(38)*acd313(95)
      acd313(97)=-acd313(16)*acd313(24)
      acd313(97)=acd313(97)-acd313(98)
      acd313(97)=acd313(39)*acd313(97)
      acd313(98)=-acd313(15)*acd313(24)
      acd313(101)=-acd313(39)*acd313(101)
      acd313(98)=acd313(101)+acd313(98)-acd313(100)
      acd313(98)=acd313(29)*acd313(98)
      acd313(100)=-acd313(40)*acd313(105)
      acd313(101)=-acd313(30)*acd313(103)
      acd313(102)=-acd313(40)*acd313(25)
      acd313(102)=acd313(102)-acd313(104)
      acd313(102)=acd313(16)*acd313(102)
      acd313(103)=2.0_ki*acd313(16)-acd313(107)
      acd313(103)=acd313(17)*acd313(103)
      acd313(104)=-acd313(30)*acd313(25)
      acd313(103)=acd313(104)+acd313(103)
      acd313(103)=acd313(15)*acd313(103)
      acd313(104)=acd313(31)*acd313(109)
      acd313(105)=acd313(41)*acd313(112)
      acd313(104)=acd313(105)+acd313(104)
      acd313(104)=acd313(27)*acd313(104)
      acd313(105)=2.0_ki*acd313(1)
      acd313(106)=-acd313(9)*acd313(105)
      acd313(97)=acd313(104)+acd313(98)+acd313(97)+acd313(103)+acd313(102)+acd3&
      &13(101)+acd313(106)+acd313(100)
      acd313(97)=acd313(8)*acd313(97)
      acd313(98)=acd313(93)*acd313(92)
      acd313(100)=acd313(32)*acd313(91)
      acd313(101)=-acd313(13)*acd313(123)
      acd313(102)=acd313(20)*acd313(49)
      acd313(98)=acd313(102)+acd313(101)+acd313(98)+acd313(100)
      acd313(98)=acd313(40)*acd313(98)
      acd313(100)=acd313(93)*acd313(94)
      acd313(101)=acd313(42)*acd313(91)
      acd313(102)=-acd313(13)*acd313(120)
      acd313(103)=acd313(36)*acd313(49)
      acd313(100)=acd313(103)+acd313(102)+acd313(100)+acd313(101)
      acd313(100)=acd313(30)*acd313(100)
      acd313(101)=acd313(33)*acd313(32)
      acd313(102)=2.0_ki*acd313(3)
      acd313(103)=acd313(102)*acd313(22)
      acd313(104)=acd313(20)*acd313(21)
      acd313(101)=acd313(104)+acd313(101)+acd313(103)
      acd313(101)=acd313(101)*acd313(109)
      acd313(103)=acd313(33)*acd313(42)
      acd313(104)=acd313(36)*acd313(21)
      acd313(106)=acd313(102)*acd313(37)
      acd313(103)=acd313(106)+acd313(103)+acd313(104)
      acd313(103)=acd313(103)*acd313(112)
      acd313(104)=acd313(7)*acd313(6)
      acd313(106)=-acd313(12)*acd313(13)
      acd313(107)=-acd313(10)*acd313(11)
      acd313(104)=acd313(107)+acd313(106)+acd313(14)+acd313(104)
      acd313(104)=acd313(105)*acd313(104)
      acd313(105)=acd313(32)*acd313(90)
      acd313(106)=-acd313(11)*acd313(123)
      acd313(107)=acd313(20)*acd313(48)
      acd313(105)=acd313(107)+acd313(105)+acd313(106)
      acd313(105)=acd313(39)*acd313(105)
      acd313(106)=acd313(42)*acd313(90)
      acd313(107)=-acd313(11)*acd313(120)
      acd313(108)=acd313(36)*acd313(48)
      acd313(106)=acd313(108)+acd313(106)+acd313(107)
      acd313(106)=acd313(29)*acd313(106)
      acd313(107)=acd313(36)*acd313(45)
      acd313(108)=acd313(20)*acd313(50)
      acd313(107)=acd313(108)+acd313(107)
      acd313(107)=acd313(46)*acd313(107)
      acd313(108)=acd313(45)*acd313(120)
      acd313(109)=acd313(50)*acd313(123)
      acd313(108)=acd313(109)+acd313(108)
      acd313(108)=acd313(7)*acd313(108)
      acd313(99)=acd313(102)*acd313(1)*acd313(99)
      brack=acd313(95)+acd313(96)+acd313(97)+acd313(98)+acd313(99)+acd313(100)+&
      &acd313(101)+acd313(103)+acd313(104)+acd313(105)+acd313(106)+acd313(107)+&
      &acd313(108)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd313h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd313
      complex(ki) :: brack
      acd313(1)=d(iv1,iv2)
      acd313(2)=k2(iv3)
      acd313(3)=abb313(43)
      acd313(4)=k3(iv3)
      acd313(5)=k4(iv3)
      acd313(6)=spvak2l6(iv3)
      acd313(7)=abb313(46)
      acd313(8)=spvak2k7(iv3)
      acd313(9)=abb313(40)
      acd313(10)=spvak4k2(iv3)
      acd313(11)=abb313(92)
      acd313(12)=spvak4k3(iv3)
      acd313(13)=abb313(57)
      acd313(14)=d(iv1,iv3)
      acd313(15)=k2(iv2)
      acd313(16)=k3(iv2)
      acd313(17)=k4(iv2)
      acd313(18)=spvak2l6(iv2)
      acd313(19)=spvak2k7(iv2)
      acd313(20)=spvak4k2(iv2)
      acd313(21)=spvak4k3(iv2)
      acd313(22)=d(iv2,iv3)
      acd313(23)=k2(iv1)
      acd313(24)=k3(iv1)
      acd313(25)=k4(iv1)
      acd313(26)=spvak2l6(iv1)
      acd313(27)=spvak2k7(iv1)
      acd313(28)=spvak4k2(iv1)
      acd313(29)=spvak4k3(iv1)
      acd313(30)=abb313(36)
      acd313(31)=abb313(20)
      acd313(32)=abb313(29)
      acd313(33)=spvak4l6(iv3)
      acd313(34)=abb313(59)
      acd313(35)=spvak4l6(iv2)
      acd313(36)=spvak4l6(iv1)
      acd313(37)=abb313(21)
      acd313(38)=abb313(61)
      acd313(39)=abb313(54)
      acd313(40)=abb313(45)
      acd313(41)=abb313(31)
      acd313(42)=abb313(53)
      acd313(43)=spvak3k2(iv3)
      acd313(44)=abb313(10)
      acd313(45)=spvak3l6(iv3)
      acd313(46)=spvak3k2(iv2)
      acd313(47)=spvak3l6(iv2)
      acd313(48)=spvak3k2(iv1)
      acd313(49)=spvak3l6(iv1)
      acd313(50)=acd313(33)*acd313(41)
      acd313(51)=acd313(12)*acd313(40)
      acd313(52)=acd313(38)*acd313(6)
      acd313(53)=acd313(4)+acd313(5)
      acd313(54)=acd313(53)*acd313(37)
      acd313(55)=acd313(2)*acd313(31)
      acd313(50)=-acd313(55)-acd313(50)-acd313(51)+acd313(52)-acd313(54)
      acd313(51)=acd313(20)*acd313(50)
      acd313(52)=acd313(35)*acd313(41)
      acd313(54)=acd313(21)*acd313(40)
      acd313(55)=acd313(38)*acd313(18)
      acd313(56)=acd313(16)+acd313(17)
      acd313(57)=acd313(56)*acd313(37)
      acd313(58)=acd313(15)*acd313(31)
      acd313(52)=-acd313(58)-acd313(52)-acd313(54)+acd313(55)-acd313(57)
      acd313(54)=2.0_ki*acd313(39)
      acd313(55)=-acd313(20)*acd313(54)
      acd313(55)=acd313(55)+acd313(52)
      acd313(55)=acd313(10)*acd313(55)
      acd313(57)=acd313(44)*acd313(43)
      acd313(58)=acd313(33)*acd313(42)
      acd313(59)=acd313(2)*acd313(32)
      acd313(57)=acd313(59)+acd313(57)+acd313(58)
      acd313(58)=-acd313(21)*acd313(57)
      acd313(59)=acd313(44)*acd313(46)
      acd313(60)=acd313(35)*acd313(42)
      acd313(61)=acd313(15)*acd313(32)
      acd313(59)=acd313(61)+acd313(59)+acd313(60)
      acd313(60)=-acd313(12)*acd313(59)
      acd313(61)=-acd313(21)*acd313(45)
      acd313(62)=-acd313(12)*acd313(47)
      acd313(61)=acd313(61)+acd313(62)
      acd313(61)=acd313(38)*acd313(61)
      acd313(62)=-acd313(15)*acd313(53)
      acd313(63)=2.0_ki*acd313(15)-acd313(56)
      acd313(63)=acd313(2)*acd313(63)
      acd313(62)=acd313(62)+acd313(63)
      acd313(62)=acd313(30)*acd313(62)
      acd313(63)=acd313(53)-acd313(2)
      acd313(64)=acd313(35)*acd313(63)
      acd313(65)=acd313(56)-acd313(15)
      acd313(66)=acd313(33)*acd313(65)
      acd313(64)=acd313(66)+acd313(64)
      acd313(64)=acd313(34)*acd313(64)
      acd313(66)=2.0_ki*acd313(9)
      acd313(67)=-acd313(22)*acd313(66)
      acd313(51)=acd313(64)+acd313(55)+acd313(51)+acd313(62)+acd313(61)+acd313(&
      &67)+acd313(60)+acd313(58)
      acd313(51)=acd313(27)*acd313(51)
      acd313(55)=acd313(36)*acd313(41)
      acd313(58)=acd313(29)*acd313(40)
      acd313(60)=acd313(38)*acd313(26)
      acd313(61)=acd313(23)*acd313(31)
      acd313(62)=acd313(24)+acd313(25)
      acd313(64)=acd313(62)*acd313(37)
      acd313(54)=acd313(54)*acd313(28)
      acd313(54)=acd313(55)+acd313(58)-acd313(60)+acd313(61)+acd313(64)+acd313(&
      &54)
      acd313(55)=-acd313(10)*acd313(54)
      acd313(50)=acd313(28)*acd313(50)
      acd313(57)=-acd313(29)*acd313(57)
      acd313(58)=acd313(44)*acd313(48)
      acd313(60)=acd313(36)*acd313(42)
      acd313(61)=acd313(23)*acd313(32)
      acd313(58)=acd313(61)+acd313(58)+acd313(60)
      acd313(60)=-acd313(12)*acd313(58)
      acd313(61)=-acd313(29)*acd313(45)
      acd313(64)=-acd313(12)*acd313(49)
      acd313(61)=acd313(61)+acd313(64)
      acd313(61)=acd313(38)*acd313(61)
      acd313(53)=-acd313(23)*acd313(53)
      acd313(64)=-acd313(62)+2.0_ki*acd313(23)
      acd313(67)=acd313(2)*acd313(64)
      acd313(53)=acd313(53)+acd313(67)
      acd313(53)=acd313(30)*acd313(53)
      acd313(67)=acd313(36)*acd313(63)
      acd313(62)=acd313(62)-acd313(23)
      acd313(68)=acd313(33)*acd313(62)
      acd313(67)=acd313(68)+acd313(67)
      acd313(67)=acd313(34)*acd313(67)
      acd313(68)=-acd313(14)*acd313(66)
      acd313(50)=acd313(67)+acd313(55)+acd313(50)+acd313(53)+acd313(61)+acd313(&
      &68)+acd313(60)+acd313(57)
      acd313(50)=acd313(19)*acd313(50)
      acd313(53)=-acd313(20)*acd313(54)
      acd313(52)=acd313(28)*acd313(52)
      acd313(54)=-acd313(29)*acd313(59)
      acd313(55)=-acd313(21)*acd313(58)
      acd313(57)=-acd313(29)*acd313(47)
      acd313(58)=-acd313(21)*acd313(49)
      acd313(57)=acd313(57)+acd313(58)
      acd313(57)=acd313(38)*acd313(57)
      acd313(56)=-acd313(23)*acd313(56)
      acd313(58)=acd313(15)*acd313(64)
      acd313(56)=acd313(56)+acd313(58)
      acd313(56)=acd313(30)*acd313(56)
      acd313(58)=acd313(36)*acd313(65)
      acd313(59)=acd313(35)*acd313(62)
      acd313(58)=acd313(59)+acd313(58)
      acd313(58)=acd313(34)*acd313(58)
      acd313(59)=-acd313(1)*acd313(66)
      acd313(52)=acd313(58)+acd313(53)+acd313(52)+acd313(56)+acd313(57)+acd313(&
      &59)+acd313(55)+acd313(54)
      acd313(52)=acd313(8)*acd313(52)
      acd313(53)=acd313(7)*acd313(26)
      acd313(54)=-acd313(29)*acd313(13)
      acd313(55)=-acd313(28)*acd313(11)
      acd313(53)=acd313(55)+acd313(54)+acd313(53)
      acd313(53)=acd313(22)*acd313(53)
      acd313(54)=acd313(7)*acd313(18)
      acd313(55)=-acd313(21)*acd313(13)
      acd313(56)=-acd313(20)*acd313(11)
      acd313(54)=acd313(56)+acd313(55)+acd313(54)
      acd313(54)=acd313(14)*acd313(54)
      acd313(55)=acd313(6)*acd313(7)
      acd313(56)=-acd313(12)*acd313(13)
      acd313(57)=-acd313(10)*acd313(11)
      acd313(55)=acd313(57)+acd313(56)+acd313(55)
      acd313(55)=acd313(1)*acd313(55)
      acd313(56)=acd313(22)*acd313(62)
      acd313(57)=acd313(14)*acd313(65)
      acd313(58)=acd313(1)*acd313(63)
      acd313(56)=acd313(58)+acd313(57)+acd313(56)
      acd313(56)=acd313(3)*acd313(56)
      acd313(53)=acd313(56)+acd313(55)+acd313(54)+acd313(53)
      brack=acd313(50)+acd313(51)+acd313(52)+2.0_ki*acd313(53)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd313h2
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k7-k6
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d313:
   subroutine     reconstruct_d313(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_313:
      coeffs%coeffs_313%c0 = derivative(czip)
      coeffs%coeffs_313%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_313%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_313%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_313%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_313%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_313%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_313%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_313%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_313%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_313%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_313%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_313%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_313%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_313%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_313%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_313%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_313%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_313%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_313%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_313%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_313%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_313%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_313%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_313%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_313%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_313%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_313%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_313%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_313%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_313%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_313%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_313%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_313%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_313%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_313:
   end subroutine reconstruct_d313
!---#] subroutine reconstruct_d313:
end module     p0_dbaru_epnebbbarg_d313h2l1d
