module     p0_dbaru_epnebbbarg_d179h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d179h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d179
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd179h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(94) :: acd179
      complex(ki) :: brack
      acd179(1)=dotproduct(k2,qshift)
      acd179(2)=abb179(28)
      acd179(3)=dotproduct(k3,qshift)
      acd179(4)=dotproduct(k4,qshift)
      acd179(5)=dotproduct(l6,qshift)
      acd179(6)=abb179(64)
      acd179(7)=dotproduct(k7,qshift)
      acd179(8)=dotproduct(e7,qshift)
      acd179(9)=abb179(160)
      acd179(10)=dotproduct(qshift,spvak1k2)
      acd179(11)=abb179(40)
      acd179(12)=dotproduct(qshift,spvak4k2)
      acd179(13)=abb179(15)
      acd179(14)=dotproduct(qshift,spvak4k3)
      acd179(15)=abb179(61)
      acd179(16)=dotproduct(qshift,spval5l6)
      acd179(17)=abb179(32)
      acd179(18)=dotproduct(qshift,spval5k7)
      acd179(19)=abb179(68)
      acd179(20)=dotproduct(qshift,spval6k2)
      acd179(21)=abb179(20)
      acd179(22)=dotproduct(qshift,spvak7k2)
      acd179(23)=abb179(67)
      acd179(24)=dotproduct(qshift,spvae7k2)
      acd179(25)=abb179(22)
      acd179(26)=dotproduct(qshift,spval5e7)
      acd179(27)=abb179(78)
      acd179(28)=dotproduct(qshift,spval6e7)
      acd179(29)=abb179(57)
      acd179(30)=abb179(14)
      acd179(31)=abb179(95)
      acd179(32)=dotproduct(l5,qshift)
      acd179(33)=abb179(46)
      acd179(34)=abb179(38)
      acd179(35)=abb179(30)
      acd179(36)=abb179(109)
      acd179(37)=abb179(27)
      acd179(38)=abb179(25)
      acd179(39)=abb179(29)
      acd179(40)=abb179(97)
      acd179(41)=abb179(115)
      acd179(42)=dotproduct(qshift,qshift)
      acd179(43)=abb179(23)
      acd179(44)=abb179(47)
      acd179(45)=abb179(35)
      acd179(46)=abb179(37)
      acd179(47)=abb179(45)
      acd179(48)=abb179(21)
      acd179(49)=abb179(43)
      acd179(50)=abb179(41)
      acd179(51)=abb179(24)
      acd179(52)=abb179(33)
      acd179(53)=abb179(42)
      acd179(54)=abb179(34)
      acd179(55)=abb179(36)
      acd179(56)=abb179(11)
      acd179(57)=abb179(26)
      acd179(58)=abb179(13)
      acd179(59)=abb179(12)
      acd179(60)=abb179(44)
      acd179(61)=abb179(122)
      acd179(62)=abb179(117)
      acd179(63)=abb179(118)
      acd179(64)=abb179(52)
      acd179(65)=abb179(114)
      acd179(66)=abb179(85)
      acd179(67)=abb179(49)
      acd179(68)=abb179(19)
      acd179(69)=abb179(39)
      acd179(70)=abb179(53)
      acd179(71)=abb179(63)
      acd179(72)=abb179(16)
      acd179(73)=abb179(71)
      acd179(74)=abb179(17)
      acd179(75)=dotproduct(qshift,spvak1k3)
      acd179(76)=abb179(18)
      acd179(77)=abb179(51)
      acd179(78)=acd179(5)+acd179(7)
      acd179(79)=acd179(6)*acd179(78)
      acd179(80)=acd179(28)*acd179(29)
      acd179(81)=acd179(26)*acd179(27)
      acd179(82)=acd179(24)*acd179(25)
      acd179(83)=acd179(22)*acd179(23)
      acd179(84)=acd179(20)*acd179(21)
      acd179(85)=acd179(18)*acd179(19)
      acd179(86)=acd179(16)*acd179(17)
      acd179(87)=acd179(8)*acd179(9)
      acd179(79)=acd179(79)-acd179(85)-acd179(84)+acd179(83)+acd179(82)-acd179(&
      &80)+acd179(81)+acd179(86)+acd179(87)
      acd179(80)=acd179(79)-acd179(31)
      acd179(81)=acd179(3)+acd179(4)
      acd179(80)=acd179(80)*acd179(81)
      acd179(82)=acd179(36)*acd179(78)
      acd179(83)=acd179(28)*acd179(66)
      acd179(84)=acd179(26)*acd179(65)
      acd179(85)=acd179(24)*acd179(64)
      acd179(86)=acd179(22)*acd179(63)
      acd179(87)=acd179(20)*acd179(62)
      acd179(88)=acd179(18)*acd179(61)
      acd179(89)=acd179(16)*acd179(60)
      acd179(90)=acd179(8)*acd179(40)
      acd179(82)=acd179(90)+acd179(89)+acd179(88)+acd179(87)+acd179(86)+acd179(&
      &85)+acd179(84)-acd179(67)+acd179(83)+acd179(82)
      acd179(82)=acd179(14)*acd179(82)
      acd179(83)=-acd179(35)*acd179(78)
      acd179(84)=acd179(28)*acd179(58)
      acd179(85)=acd179(26)*acd179(57)
      acd179(86)=acd179(24)*acd179(56)
      acd179(87)=acd179(22)*acd179(55)
      acd179(88)=acd179(20)*acd179(54)
      acd179(89)=acd179(18)*acd179(53)
      acd179(90)=acd179(16)*acd179(52)
      acd179(91)=acd179(8)*acd179(39)
      acd179(83)=acd179(91)+acd179(90)+acd179(89)+acd179(88)+acd179(87)+acd179(&
      &86)+acd179(85)-acd179(59)+acd179(84)+acd179(83)
      acd179(83)=acd179(12)*acd179(83)
      acd179(84)=-acd179(34)*acd179(78)
      acd179(85)=acd179(28)*acd179(50)
      acd179(86)=acd179(26)*acd179(49)
      acd179(87)=acd179(24)*acd179(48)
      acd179(88)=acd179(22)*acd179(47)
      acd179(89)=acd179(20)*acd179(46)
      acd179(90)=acd179(18)*acd179(45)
      acd179(91)=acd179(16)*acd179(44)
      acd179(92)=acd179(8)*acd179(38)
      acd179(84)=acd179(92)+acd179(91)+acd179(90)+acd179(89)+acd179(88)+acd179(&
      &87)+acd179(86)-acd179(51)+acd179(85)+acd179(84)
      acd179(84)=acd179(10)*acd179(84)
      acd179(81)=-acd179(1)+acd179(81)
      acd179(81)=acd179(2)*acd179(81)
      acd179(85)=acd179(14)*acd179(15)
      acd179(86)=acd179(12)*acd179(13)
      acd179(87)=acd179(10)*acd179(11)
      acd179(79)=acd179(87)+acd179(86)+acd179(85)-acd179(30)+acd179(81)-acd179(&
      &79)
      acd179(79)=acd179(1)*acd179(79)
      acd179(78)=acd179(37)*acd179(78)
      acd179(81)=-acd179(75)*acd179(76)
      acd179(85)=acd179(42)*acd179(43)
      acd179(86)=-acd179(32)*acd179(33)
      acd179(87)=-acd179(28)*acd179(74)
      acd179(88)=-acd179(26)*acd179(73)
      acd179(89)=-acd179(24)*acd179(72)
      acd179(90)=-acd179(22)*acd179(71)
      acd179(91)=-acd179(20)*acd179(70)
      acd179(92)=-acd179(18)*acd179(69)
      acd179(93)=-acd179(16)*acd179(68)
      acd179(94)=-acd179(8)*acd179(41)
      brack=acd179(77)+acd179(78)+acd179(79)+acd179(80)+acd179(81)+acd179(82)+a&
      &cd179(83)+acd179(84)+acd179(85)+acd179(86)+acd179(87)+acd179(88)+acd179(&
      &89)+acd179(90)+acd179(91)+acd179(92)+acd179(93)+acd179(94)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd179h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(115) :: acd179
      complex(ki) :: brack
      acd179(1)=k2(iv1)
      acd179(2)=dotproduct(k2,qshift)
      acd179(3)=abb179(28)
      acd179(4)=dotproduct(k3,qshift)
      acd179(5)=dotproduct(k4,qshift)
      acd179(6)=dotproduct(l6,qshift)
      acd179(7)=abb179(64)
      acd179(8)=dotproduct(k7,qshift)
      acd179(9)=dotproduct(e7,qshift)
      acd179(10)=abb179(160)
      acd179(11)=dotproduct(qshift,spvak1k2)
      acd179(12)=abb179(40)
      acd179(13)=dotproduct(qshift,spvak4k2)
      acd179(14)=abb179(15)
      acd179(15)=dotproduct(qshift,spvak4k3)
      acd179(16)=abb179(61)
      acd179(17)=dotproduct(qshift,spval5l6)
      acd179(18)=abb179(32)
      acd179(19)=dotproduct(qshift,spval5k7)
      acd179(20)=abb179(68)
      acd179(21)=dotproduct(qshift,spval6k2)
      acd179(22)=abb179(20)
      acd179(23)=dotproduct(qshift,spvak7k2)
      acd179(24)=abb179(67)
      acd179(25)=dotproduct(qshift,spvae7k2)
      acd179(26)=abb179(22)
      acd179(27)=dotproduct(qshift,spval5e7)
      acd179(28)=abb179(78)
      acd179(29)=dotproduct(qshift,spval6e7)
      acd179(30)=abb179(57)
      acd179(31)=abb179(14)
      acd179(32)=k3(iv1)
      acd179(33)=abb179(95)
      acd179(34)=k4(iv1)
      acd179(35)=l5(iv1)
      acd179(36)=abb179(46)
      acd179(37)=l6(iv1)
      acd179(38)=abb179(38)
      acd179(39)=abb179(30)
      acd179(40)=abb179(109)
      acd179(41)=abb179(27)
      acd179(42)=k7(iv1)
      acd179(43)=e7(iv1)
      acd179(44)=abb179(25)
      acd179(45)=abb179(29)
      acd179(46)=abb179(97)
      acd179(47)=abb179(115)
      acd179(48)=qshift(iv1)
      acd179(49)=abb179(23)
      acd179(50)=spvak1k2(iv1)
      acd179(51)=abb179(47)
      acd179(52)=abb179(35)
      acd179(53)=abb179(37)
      acd179(54)=abb179(45)
      acd179(55)=abb179(21)
      acd179(56)=abb179(43)
      acd179(57)=abb179(41)
      acd179(58)=abb179(24)
      acd179(59)=spvak4k2(iv1)
      acd179(60)=abb179(33)
      acd179(61)=abb179(42)
      acd179(62)=abb179(34)
      acd179(63)=abb179(36)
      acd179(64)=abb179(11)
      acd179(65)=abb179(26)
      acd179(66)=abb179(13)
      acd179(67)=abb179(12)
      acd179(68)=spvak4k3(iv1)
      acd179(69)=abb179(44)
      acd179(70)=abb179(122)
      acd179(71)=abb179(117)
      acd179(72)=abb179(118)
      acd179(73)=abb179(52)
      acd179(74)=abb179(114)
      acd179(75)=abb179(85)
      acd179(76)=abb179(49)
      acd179(77)=spval5l6(iv1)
      acd179(78)=abb179(19)
      acd179(79)=spval5k7(iv1)
      acd179(80)=abb179(39)
      acd179(81)=spval6k2(iv1)
      acd179(82)=abb179(53)
      acd179(83)=spvak7k2(iv1)
      acd179(84)=abb179(63)
      acd179(85)=spvae7k2(iv1)
      acd179(86)=abb179(16)
      acd179(87)=spval5e7(iv1)
      acd179(88)=abb179(71)
      acd179(89)=spval6e7(iv1)
      acd179(90)=abb179(17)
      acd179(91)=spvak1k3(iv1)
      acd179(92)=abb179(18)
      acd179(93)=acd179(37)+acd179(42)
      acd179(94)=acd179(40)*acd179(93)
      acd179(95)=acd179(89)*acd179(75)
      acd179(96)=acd179(87)*acd179(74)
      acd179(97)=acd179(85)*acd179(73)
      acd179(98)=acd179(83)*acd179(72)
      acd179(99)=acd179(81)*acd179(71)
      acd179(100)=acd179(79)*acd179(70)
      acd179(101)=acd179(77)*acd179(69)
      acd179(102)=acd179(43)*acd179(46)
      acd179(94)=acd179(102)+acd179(101)+acd179(100)+acd179(99)+acd179(98)+acd1&
      &79(97)+acd179(95)+acd179(96)+acd179(94)
      acd179(94)=acd179(15)*acd179(94)
      acd179(95)=-acd179(39)*acd179(93)
      acd179(96)=acd179(89)*acd179(66)
      acd179(97)=acd179(87)*acd179(65)
      acd179(98)=acd179(85)*acd179(64)
      acd179(99)=acd179(83)*acd179(63)
      acd179(100)=acd179(81)*acd179(62)
      acd179(101)=acd179(79)*acd179(61)
      acd179(102)=acd179(77)*acd179(60)
      acd179(103)=acd179(43)*acd179(45)
      acd179(95)=acd179(103)+acd179(102)+acd179(101)+acd179(100)+acd179(99)+acd&
      &179(98)+acd179(96)+acd179(97)+acd179(95)
      acd179(95)=acd179(13)*acd179(95)
      acd179(96)=-acd179(38)*acd179(93)
      acd179(97)=acd179(89)*acd179(57)
      acd179(98)=acd179(87)*acd179(56)
      acd179(99)=acd179(85)*acd179(55)
      acd179(100)=acd179(83)*acd179(54)
      acd179(101)=acd179(81)*acd179(53)
      acd179(102)=acd179(79)*acd179(52)
      acd179(103)=acd179(77)*acd179(51)
      acd179(104)=acd179(43)*acd179(44)
      acd179(96)=acd179(104)+acd179(103)+acd179(102)+acd179(101)+acd179(100)+ac&
      &d179(99)+acd179(97)+acd179(98)+acd179(96)
      acd179(96)=acd179(11)*acd179(96)
      acd179(97)=acd179(6)+acd179(8)
      acd179(98)=acd179(40)*acd179(97)
      acd179(99)=acd179(29)*acd179(75)
      acd179(100)=acd179(27)*acd179(74)
      acd179(101)=acd179(25)*acd179(73)
      acd179(102)=acd179(23)*acd179(72)
      acd179(103)=acd179(21)*acd179(71)
      acd179(104)=acd179(19)*acd179(70)
      acd179(105)=acd179(17)*acd179(69)
      acd179(106)=acd179(9)*acd179(46)
      acd179(98)=acd179(106)+acd179(105)+acd179(104)+acd179(103)+acd179(102)+ac&
      &d179(101)+acd179(100)-acd179(76)+acd179(99)+acd179(98)
      acd179(98)=acd179(68)*acd179(98)
      acd179(99)=-acd179(39)*acd179(97)
      acd179(100)=acd179(29)*acd179(66)
      acd179(101)=acd179(27)*acd179(65)
      acd179(102)=acd179(25)*acd179(64)
      acd179(103)=acd179(23)*acd179(63)
      acd179(104)=acd179(21)*acd179(62)
      acd179(105)=acd179(19)*acd179(61)
      acd179(106)=acd179(17)*acd179(60)
      acd179(107)=acd179(9)*acd179(45)
      acd179(99)=acd179(107)+acd179(106)+acd179(105)+acd179(104)+acd179(103)+ac&
      &d179(102)+acd179(101)-acd179(67)+acd179(100)+acd179(99)
      acd179(99)=acd179(59)*acd179(99)
      acd179(100)=-acd179(38)*acd179(97)
      acd179(101)=acd179(29)*acd179(57)
      acd179(102)=acd179(27)*acd179(56)
      acd179(103)=acd179(25)*acd179(55)
      acd179(104)=acd179(23)*acd179(54)
      acd179(105)=acd179(21)*acd179(53)
      acd179(106)=acd179(19)*acd179(52)
      acd179(107)=acd179(17)*acd179(51)
      acd179(108)=acd179(9)*acd179(44)
      acd179(100)=acd179(108)+acd179(107)+acd179(106)+acd179(105)+acd179(104)+a&
      &cd179(103)+acd179(102)-acd179(58)+acd179(101)+acd179(100)
      acd179(100)=acd179(50)*acd179(100)
      acd179(101)=acd179(89)*acd179(30)
      acd179(102)=acd179(87)*acd179(28)
      acd179(103)=acd179(85)*acd179(26)
      acd179(104)=acd179(83)*acd179(24)
      acd179(105)=acd179(81)*acd179(22)
      acd179(106)=acd179(79)*acd179(20)
      acd179(107)=acd179(77)*acd179(18)
      acd179(108)=acd179(43)*acd179(10)
      acd179(101)=-acd179(108)-acd179(107)+acd179(106)+acd179(105)-acd179(104)-&
      &acd179(103)+acd179(101)-acd179(102)
      acd179(102)=acd179(4)+acd179(5)
      acd179(103)=-acd179(101)*acd179(102)
      acd179(104)=acd179(29)*acd179(30)
      acd179(105)=acd179(27)*acd179(28)
      acd179(106)=acd179(25)*acd179(26)
      acd179(107)=acd179(23)*acd179(24)
      acd179(108)=acd179(21)*acd179(22)
      acd179(109)=acd179(19)*acd179(20)
      acd179(110)=acd179(17)*acd179(18)
      acd179(111)=acd179(9)*acd179(10)
      acd179(104)=-acd179(107)-acd179(106)-acd179(105)+acd179(104)-acd179(110)-&
      &acd179(111)+acd179(108)+acd179(109)
      acd179(105)=acd179(104)+acd179(33)
      acd179(106)=acd179(32)+acd179(34)
      acd179(105)=-acd179(105)*acd179(106)
      acd179(107)=acd179(3)*acd179(106)
      acd179(108)=acd179(68)*acd179(16)
      acd179(109)=acd179(59)*acd179(14)
      acd179(110)=acd179(50)*acd179(12)
      acd179(111)=-acd179(7)*acd179(93)
      acd179(101)=acd179(111)+acd179(110)+acd179(109)+acd179(108)+acd179(107)+a&
      &cd179(101)
      acd179(101)=acd179(2)*acd179(101)
      acd179(107)=-2.0_ki*acd179(2)+acd179(102)
      acd179(107)=acd179(3)*acd179(107)
      acd179(108)=acd179(15)*acd179(16)
      acd179(109)=acd179(13)*acd179(14)
      acd179(110)=acd179(11)*acd179(12)
      acd179(111)=-acd179(7)*acd179(97)
      acd179(104)=acd179(111)+acd179(110)+acd179(109)+acd179(108)-acd179(31)+ac&
      &d179(107)+acd179(104)
      acd179(104)=acd179(1)*acd179(104)
      acd179(102)=acd179(93)*acd179(102)
      acd179(97)=acd179(97)*acd179(106)
      acd179(97)=acd179(97)+acd179(102)
      acd179(97)=acd179(7)*acd179(97)
      acd179(93)=acd179(41)*acd179(93)
      acd179(102)=-acd179(91)*acd179(92)
      acd179(106)=acd179(48)*acd179(49)
      acd179(107)=-acd179(35)*acd179(36)
      acd179(108)=-acd179(89)*acd179(90)
      acd179(109)=-acd179(87)*acd179(88)
      acd179(110)=-acd179(85)*acd179(86)
      acd179(111)=-acd179(83)*acd179(84)
      acd179(112)=-acd179(81)*acd179(82)
      acd179(113)=-acd179(79)*acd179(80)
      acd179(114)=-acd179(77)*acd179(78)
      acd179(115)=-acd179(43)*acd179(47)
      brack=acd179(93)+acd179(94)+acd179(95)+acd179(96)+acd179(97)+acd179(98)+a&
      &cd179(99)+acd179(100)+acd179(101)+acd179(102)+acd179(103)+acd179(104)+ac&
      &d179(105)+2.0_ki*acd179(106)+acd179(107)+acd179(108)+acd179(109)+acd179(&
      &110)+acd179(111)+acd179(112)+acd179(113)+acd179(114)+acd179(115)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd179h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(93) :: acd179
      complex(ki) :: brack
      acd179(1)=d(iv1,iv2)
      acd179(2)=abb179(23)
      acd179(3)=k2(iv1)
      acd179(4)=k2(iv2)
      acd179(5)=abb179(28)
      acd179(6)=k3(iv2)
      acd179(7)=k4(iv2)
      acd179(8)=l6(iv2)
      acd179(9)=abb179(64)
      acd179(10)=k7(iv2)
      acd179(11)=e7(iv2)
      acd179(12)=abb179(160)
      acd179(13)=spvak1k2(iv2)
      acd179(14)=abb179(40)
      acd179(15)=spvak4k2(iv2)
      acd179(16)=abb179(15)
      acd179(17)=spvak4k3(iv2)
      acd179(18)=abb179(61)
      acd179(19)=spval5l6(iv2)
      acd179(20)=abb179(32)
      acd179(21)=spval5k7(iv2)
      acd179(22)=abb179(68)
      acd179(23)=spval6k2(iv2)
      acd179(24)=abb179(20)
      acd179(25)=spvak7k2(iv2)
      acd179(26)=abb179(67)
      acd179(27)=spvae7k2(iv2)
      acd179(28)=abb179(22)
      acd179(29)=spval5e7(iv2)
      acd179(30)=abb179(78)
      acd179(31)=spval6e7(iv2)
      acd179(32)=abb179(57)
      acd179(33)=k3(iv1)
      acd179(34)=k4(iv1)
      acd179(35)=l6(iv1)
      acd179(36)=k7(iv1)
      acd179(37)=e7(iv1)
      acd179(38)=spvak1k2(iv1)
      acd179(39)=spvak4k2(iv1)
      acd179(40)=spvak4k3(iv1)
      acd179(41)=spval5l6(iv1)
      acd179(42)=spval5k7(iv1)
      acd179(43)=spval6k2(iv1)
      acd179(44)=spvak7k2(iv1)
      acd179(45)=spvae7k2(iv1)
      acd179(46)=spval5e7(iv1)
      acd179(47)=spval6e7(iv1)
      acd179(48)=abb179(38)
      acd179(49)=abb179(30)
      acd179(50)=abb179(109)
      acd179(51)=abb179(25)
      acd179(52)=abb179(29)
      acd179(53)=abb179(97)
      acd179(54)=abb179(47)
      acd179(55)=abb179(35)
      acd179(56)=abb179(37)
      acd179(57)=abb179(45)
      acd179(58)=abb179(21)
      acd179(59)=abb179(43)
      acd179(60)=abb179(41)
      acd179(61)=abb179(33)
      acd179(62)=abb179(42)
      acd179(63)=abb179(34)
      acd179(64)=abb179(36)
      acd179(65)=abb179(11)
      acd179(66)=abb179(26)
      acd179(67)=abb179(13)
      acd179(68)=abb179(44)
      acd179(69)=abb179(122)
      acd179(70)=abb179(117)
      acd179(71)=abb179(118)
      acd179(72)=abb179(52)
      acd179(73)=abb179(114)
      acd179(74)=abb179(85)
      acd179(75)=acd179(8)+acd179(10)
      acd179(76)=acd179(50)*acd179(75)
      acd179(77)=acd179(31)*acd179(74)
      acd179(78)=acd179(29)*acd179(73)
      acd179(79)=acd179(27)*acd179(72)
      acd179(80)=acd179(25)*acd179(71)
      acd179(81)=acd179(23)*acd179(70)
      acd179(82)=acd179(21)*acd179(69)
      acd179(83)=acd179(19)*acd179(68)
      acd179(84)=acd179(11)*acd179(53)
      acd179(76)=acd179(84)+acd179(83)+acd179(82)+acd179(81)+acd179(80)+acd179(&
      &79)+acd179(77)+acd179(78)+acd179(76)
      acd179(76)=acd179(40)*acd179(76)
      acd179(77)=-acd179(49)*acd179(75)
      acd179(78)=acd179(31)*acd179(67)
      acd179(79)=acd179(29)*acd179(66)
      acd179(80)=acd179(27)*acd179(65)
      acd179(81)=acd179(25)*acd179(64)
      acd179(82)=acd179(23)*acd179(63)
      acd179(83)=acd179(21)*acd179(62)
      acd179(84)=acd179(19)*acd179(61)
      acd179(85)=acd179(11)*acd179(52)
      acd179(77)=acd179(85)+acd179(84)+acd179(83)+acd179(82)+acd179(81)+acd179(&
      &80)+acd179(78)+acd179(79)+acd179(77)
      acd179(77)=acd179(39)*acd179(77)
      acd179(78)=-acd179(48)*acd179(75)
      acd179(79)=acd179(31)*acd179(60)
      acd179(80)=acd179(29)*acd179(59)
      acd179(81)=acd179(27)*acd179(58)
      acd179(82)=acd179(25)*acd179(57)
      acd179(83)=acd179(23)*acd179(56)
      acd179(84)=acd179(21)*acd179(55)
      acd179(85)=acd179(19)*acd179(54)
      acd179(86)=acd179(11)*acd179(51)
      acd179(78)=acd179(86)+acd179(85)+acd179(84)+acd179(83)+acd179(82)+acd179(&
      &81)+acd179(79)+acd179(80)+acd179(78)
      acd179(78)=acd179(38)*acd179(78)
      acd179(79)=acd179(35)+acd179(36)
      acd179(80)=acd179(50)*acd179(79)
      acd179(81)=acd179(47)*acd179(74)
      acd179(82)=acd179(46)*acd179(73)
      acd179(83)=acd179(45)*acd179(72)
      acd179(84)=acd179(44)*acd179(71)
      acd179(85)=acd179(43)*acd179(70)
      acd179(86)=acd179(42)*acd179(69)
      acd179(87)=acd179(41)*acd179(68)
      acd179(88)=acd179(37)*acd179(53)
      acd179(80)=acd179(88)+acd179(87)+acd179(86)+acd179(85)+acd179(84)+acd179(&
      &83)+acd179(81)+acd179(82)+acd179(80)
      acd179(80)=acd179(17)*acd179(80)
      acd179(81)=-acd179(49)*acd179(79)
      acd179(82)=acd179(47)*acd179(67)
      acd179(83)=acd179(46)*acd179(66)
      acd179(84)=acd179(45)*acd179(65)
      acd179(85)=acd179(44)*acd179(64)
      acd179(86)=acd179(43)*acd179(63)
      acd179(87)=acd179(42)*acd179(62)
      acd179(88)=acd179(41)*acd179(61)
      acd179(89)=acd179(37)*acd179(52)
      acd179(81)=acd179(89)+acd179(88)+acd179(87)+acd179(86)+acd179(85)+acd179(&
      &84)+acd179(82)+acd179(83)+acd179(81)
      acd179(81)=acd179(15)*acd179(81)
      acd179(82)=-acd179(48)*acd179(79)
      acd179(83)=acd179(47)*acd179(60)
      acd179(84)=acd179(46)*acd179(59)
      acd179(85)=acd179(45)*acd179(58)
      acd179(86)=acd179(44)*acd179(57)
      acd179(87)=acd179(43)*acd179(56)
      acd179(88)=acd179(42)*acd179(55)
      acd179(89)=acd179(41)*acd179(54)
      acd179(90)=acd179(37)*acd179(51)
      acd179(82)=acd179(90)+acd179(89)+acd179(88)+acd179(87)+acd179(86)+acd179(&
      &85)+acd179(83)+acd179(84)+acd179(82)
      acd179(82)=acd179(13)*acd179(82)
      acd179(83)=acd179(32)*acd179(47)
      acd179(84)=acd179(30)*acd179(46)
      acd179(85)=acd179(28)*acd179(45)
      acd179(86)=acd179(26)*acd179(44)
      acd179(87)=acd179(24)*acd179(43)
      acd179(88)=acd179(22)*acd179(42)
      acd179(89)=acd179(20)*acd179(41)
      acd179(90)=acd179(12)*acd179(37)
      acd179(83)=acd179(90)+acd179(89)-acd179(88)+acd179(85)+acd179(84)-acd179(&
      &83)+acd179(86)-acd179(87)
      acd179(84)=acd179(6)+acd179(7)
      acd179(85)=acd179(83)*acd179(84)
      acd179(86)=acd179(31)*acd179(32)
      acd179(87)=acd179(29)*acd179(30)
      acd179(88)=acd179(27)*acd179(28)
      acd179(89)=acd179(25)*acd179(26)
      acd179(90)=acd179(23)*acd179(24)
      acd179(91)=acd179(21)*acd179(22)
      acd179(92)=acd179(19)*acd179(20)
      acd179(93)=acd179(11)*acd179(12)
      acd179(86)=-acd179(93)+acd179(90)-acd179(89)-acd179(88)+acd179(86)-acd179&
      &(87)+acd179(91)-acd179(92)
      acd179(87)=acd179(33)+acd179(34)
      acd179(88)=-acd179(86)*acd179(87)
      acd179(89)=acd179(5)*acd179(87)
      acd179(90)=acd179(40)*acd179(18)
      acd179(91)=acd179(39)*acd179(16)
      acd179(92)=acd179(38)*acd179(14)
      acd179(93)=-acd179(9)*acd179(79)
      acd179(83)=acd179(93)+acd179(92)+acd179(91)+acd179(90)-acd179(83)+acd179(&
      &89)
      acd179(83)=acd179(4)*acd179(83)
      acd179(89)=-2.0_ki*acd179(4)+acd179(84)
      acd179(89)=acd179(5)*acd179(89)
      acd179(90)=acd179(17)*acd179(18)
      acd179(91)=acd179(15)*acd179(16)
      acd179(92)=acd179(13)*acd179(14)
      acd179(93)=-acd179(9)*acd179(75)
      acd179(86)=acd179(93)+acd179(92)+acd179(91)+acd179(90)+acd179(89)+acd179(&
      &86)
      acd179(86)=acd179(3)*acd179(86)
      acd179(75)=acd179(75)*acd179(87)
      acd179(79)=acd179(79)*acd179(84)
      acd179(75)=acd179(79)+acd179(75)
      acd179(75)=acd179(9)*acd179(75)
      acd179(79)=acd179(1)*acd179(2)
      brack=acd179(75)+acd179(76)+acd179(77)+acd179(78)+2.0_ki*acd179(79)+acd17&
      &9(80)+acd179(81)+acd179(82)+acd179(83)+acd179(85)+acd179(86)+acd179(88)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd179h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d179:
   subroutine     reconstruct_d179(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_179:
      coeffs%coeffs_179%c0 = derivative(czip)
      coeffs%coeffs_179%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_179%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_179%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_179%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_179%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_179%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_179%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_179%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_179%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_179%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_179%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_179%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_179%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_179%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_179:
   end subroutine reconstruct_d179
!---#] subroutine reconstruct_d179:
end module     p0_dbaru_epnebbbarg_d179h0l1d
