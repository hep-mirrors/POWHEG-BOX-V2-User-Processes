module     p4_ubaru_epnemumnmubarg_d545h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity1d545h1l1d.f90
   ! generator: buildfortran_d.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d545
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd545h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(93) :: acd545
      complex(ki) :: brack
      acd545(1)=dotproduct(k1,qshift)
      acd545(2)=dotproduct(k2,qshift)
      acd545(3)=abb545(160)
      acd545(4)=dotproduct(k3,qshift)
      acd545(5)=abb545(88)
      acd545(6)=dotproduct(k4,qshift)
      acd545(7)=dotproduct(k5,qshift)
      acd545(8)=dotproduct(k6,qshift)
      acd545(9)=dotproduct(qshift,spvak1k7)
      acd545(10)=abb545(30)
      acd545(11)=dotproduct(qshift,spvak2k7)
      acd545(12)=abb545(60)
      acd545(13)=dotproduct(qshift,spvak3k2)
      acd545(14)=abb545(34)
      acd545(15)=dotproduct(qshift,spvak4k2)
      acd545(16)=abb545(29)
      acd545(17)=dotproduct(qshift,spvak4k3)
      acd545(18)=abb545(25)
      acd545(19)=dotproduct(qshift,spvak4k6)
      acd545(20)=abb545(42)
      acd545(21)=dotproduct(qshift,spvak5k2)
      acd545(22)=abb545(41)
      acd545(23)=dotproduct(qshift,spvak5k3)
      acd545(24)=abb545(63)
      acd545(25)=dotproduct(qshift,spvak5k6)
      acd545(26)=abb545(22)
      acd545(27)=dotproduct(qshift,spvak6k2)
      acd545(28)=abb545(125)
      acd545(29)=abb545(51)
      acd545(30)=dotproduct(k7,qshift)
      acd545(31)=dotproduct(qshift,qshift)
      acd545(32)=abb545(40)
      acd545(33)=abb545(48)
      acd545(34)=dotproduct(qshift,spvak1k2)
      acd545(35)=abb545(15)
      acd545(36)=abb545(49)
      acd545(37)=abb545(110)
      acd545(38)=abb545(119)
      acd545(39)=abb545(26)
      acd545(40)=abb545(38)
      acd545(41)=abb545(35)
      acd545(42)=abb545(23)
      acd545(43)=abb545(27)
      acd545(44)=abb545(161)
      acd545(45)=abb545(19)
      acd545(46)=abb545(52)
      acd545(47)=abb545(20)
      acd545(48)=abb545(82)
      acd545(49)=abb545(79)
      acd545(50)=abb545(13)
      acd545(51)=abb545(28)
      acd545(52)=abb545(16)
      acd545(53)=abb545(31)
      acd545(54)=abb545(46)
      acd545(55)=abb545(45)
      acd545(56)=abb545(12)
      acd545(57)=abb545(39)
      acd545(58)=abb545(66)
      acd545(59)=abb545(32)
      acd545(60)=dotproduct(qshift,spvak7k2)
      acd545(61)=abb545(65)
      acd545(62)=abb545(24)
      acd545(63)=abb545(33)
      acd545(64)=abb545(14)
      acd545(65)=abb545(21)
      acd545(66)=abb545(44)
      acd545(67)=abb545(50)
      acd545(68)=abb545(53)
      acd545(69)=abb545(18)
      acd545(70)=abb545(43)
      acd545(71)=abb545(103)
      acd545(72)=abb545(17)
      acd545(73)=abb545(163)
      acd545(74)=abb545(106)
      acd545(75)=abb545(36)
      acd545(76)=abb545(37)
      acd545(77)=acd545(12)*acd545(1)
      acd545(78)=-acd545(40)*acd545(31)
      acd545(79)=acd545(46)*acd545(9)
      acd545(80)=acd545(51)*acd545(13)
      acd545(81)=acd545(52)*acd545(15)
      acd545(82)=acd545(55)*acd545(21)
      acd545(83)=acd545(58)*acd545(27)
      acd545(84)=acd545(61)*acd545(60)
      acd545(77)=-acd545(62)+acd545(84)+acd545(83)+acd545(82)+acd545(81)+acd545&
      &(80)+acd545(79)+acd545(78)+acd545(77)
      acd545(77)=acd545(11)*acd545(77)
      acd545(78)=acd545(3)*acd545(2)
      acd545(79)=-acd545(10)*acd545(9)
      acd545(80)=acd545(14)*acd545(13)
      acd545(81)=acd545(16)*acd545(15)
      acd545(82)=acd545(22)*acd545(21)
      acd545(83)=-acd545(28)*acd545(27)
      acd545(78)=acd545(79)+acd545(83)+acd545(82)+acd545(81)+acd545(80)+acd545(&
      &78)
      acd545(79)=acd545(30)-acd545(1)
      acd545(78)=acd545(79)*acd545(78)
      acd545(79)=-acd545(32)*acd545(2)
      acd545(80)=-acd545(39)*acd545(9)
      acd545(81)=-acd545(41)*acd545(13)
      acd545(82)=-acd545(42)*acd545(15)
      acd545(83)=-acd545(43)*acd545(21)
      acd545(84)=-acd545(44)*acd545(27)
      acd545(79)=acd545(45)+acd545(84)+acd545(83)+acd545(82)+acd545(81)+acd545(&
      &80)+acd545(79)
      acd545(79)=acd545(31)*acd545(79)
      acd545(80)=-acd545(8)-acd545(7)+acd545(6)+acd545(4)
      acd545(81)=acd545(36)*acd545(80)
      acd545(82)=acd545(65)*acd545(17)
      acd545(83)=acd545(67)*acd545(19)
      acd545(84)=acd545(70)*acd545(23)
      acd545(85)=acd545(72)*acd545(25)
      acd545(81)=-acd545(75)+acd545(85)+acd545(84)+acd545(83)+acd545(82)+acd545&
      &(81)
      acd545(81)=acd545(34)*acd545(81)
      acd545(82)=acd545(47)*acd545(17)
      acd545(83)=acd545(48)*acd545(19)
      acd545(84)=acd545(49)*acd545(23)
      acd545(85)=acd545(50)*acd545(25)
      acd545(82)=acd545(85)+acd545(84)+acd545(83)+acd545(82)
      acd545(82)=acd545(9)*acd545(82)
      acd545(83)=acd545(18)*acd545(17)
      acd545(84)=acd545(20)*acd545(19)
      acd545(85)=acd545(24)*acd545(23)
      acd545(86)=acd545(26)*acd545(25)
      acd545(83)=-acd545(29)+acd545(86)+acd545(85)+acd545(84)+acd545(83)
      acd545(83)=acd545(1)*acd545(83)
      acd545(84)=-acd545(53)*acd545(17)
      acd545(85)=-acd545(54)*acd545(19)
      acd545(86)=-acd545(56)*acd545(23)
      acd545(87)=-acd545(57)*acd545(25)
      acd545(84)=acd545(59)+acd545(87)+acd545(86)+acd545(85)+acd545(84)
      acd545(85)=acd545(34)*acd545(11)
      acd545(84)=acd545(85)*acd545(84)
      acd545(86)=-acd545(5)*acd545(1)
      acd545(87)=acd545(33)*acd545(9)
      acd545(85)=acd545(35)*acd545(85)
      acd545(85)=acd545(37)+acd545(85)+acd545(86)+acd545(87)
      acd545(80)=acd545(80)*acd545(85)
      acd545(85)=-acd545(38)*acd545(30)
      acd545(86)=-acd545(63)*acd545(13)
      acd545(87)=-acd545(64)*acd545(15)
      acd545(88)=-acd545(66)*acd545(17)
      acd545(89)=-acd545(68)*acd545(19)
      acd545(90)=-acd545(69)*acd545(21)
      acd545(91)=-acd545(71)*acd545(23)
      acd545(92)=-acd545(73)*acd545(25)
      acd545(93)=-acd545(74)*acd545(27)
      brack=acd545(76)+acd545(77)+acd545(78)+acd545(79)+acd545(80)+acd545(81)+a&
      &cd545(82)+acd545(83)+acd545(84)+acd545(85)+acd545(86)+acd545(87)+acd545(&
      &88)+acd545(89)+acd545(90)+acd545(91)+acd545(92)+acd545(93)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd545h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(116) :: acd545
      complex(ki) :: brack
      acd545(1)=k1(iv1)
      acd545(2)=dotproduct(k2,qshift)
      acd545(3)=abb545(160)
      acd545(4)=dotproduct(k3,qshift)
      acd545(5)=abb545(88)
      acd545(6)=dotproduct(k4,qshift)
      acd545(7)=dotproduct(k5,qshift)
      acd545(8)=dotproduct(k6,qshift)
      acd545(9)=dotproduct(qshift,spvak1k7)
      acd545(10)=abb545(30)
      acd545(11)=dotproduct(qshift,spvak2k7)
      acd545(12)=abb545(60)
      acd545(13)=dotproduct(qshift,spvak3k2)
      acd545(14)=abb545(34)
      acd545(15)=dotproduct(qshift,spvak4k2)
      acd545(16)=abb545(29)
      acd545(17)=dotproduct(qshift,spvak4k3)
      acd545(18)=abb545(25)
      acd545(19)=dotproduct(qshift,spvak4k6)
      acd545(20)=abb545(42)
      acd545(21)=dotproduct(qshift,spvak5k2)
      acd545(22)=abb545(41)
      acd545(23)=dotproduct(qshift,spvak5k3)
      acd545(24)=abb545(63)
      acd545(25)=dotproduct(qshift,spvak5k6)
      acd545(26)=abb545(22)
      acd545(27)=dotproduct(qshift,spvak6k2)
      acd545(28)=abb545(125)
      acd545(29)=abb545(51)
      acd545(30)=k2(iv1)
      acd545(31)=dotproduct(k1,qshift)
      acd545(32)=dotproduct(k7,qshift)
      acd545(33)=dotproduct(qshift,qshift)
      acd545(34)=abb545(40)
      acd545(35)=k3(iv1)
      acd545(36)=abb545(48)
      acd545(37)=dotproduct(qshift,spvak1k2)
      acd545(38)=abb545(15)
      acd545(39)=abb545(49)
      acd545(40)=abb545(110)
      acd545(41)=k4(iv1)
      acd545(42)=k5(iv1)
      acd545(43)=k6(iv1)
      acd545(44)=k7(iv1)
      acd545(45)=abb545(119)
      acd545(46)=qshift(iv1)
      acd545(47)=abb545(26)
      acd545(48)=abb545(38)
      acd545(49)=abb545(35)
      acd545(50)=abb545(23)
      acd545(51)=abb545(27)
      acd545(52)=abb545(161)
      acd545(53)=abb545(19)
      acd545(54)=spvak1k7(iv1)
      acd545(55)=abb545(52)
      acd545(56)=abb545(20)
      acd545(57)=abb545(82)
      acd545(58)=abb545(79)
      acd545(59)=abb545(13)
      acd545(60)=spvak2k7(iv1)
      acd545(61)=abb545(28)
      acd545(62)=abb545(16)
      acd545(63)=abb545(31)
      acd545(64)=abb545(46)
      acd545(65)=abb545(45)
      acd545(66)=abb545(12)
      acd545(67)=abb545(39)
      acd545(68)=abb545(66)
      acd545(69)=abb545(32)
      acd545(70)=dotproduct(qshift,spvak7k2)
      acd545(71)=abb545(65)
      acd545(72)=abb545(24)
      acd545(73)=spvak3k2(iv1)
      acd545(74)=abb545(33)
      acd545(75)=spvak4k2(iv1)
      acd545(76)=abb545(14)
      acd545(77)=spvak4k3(iv1)
      acd545(78)=abb545(21)
      acd545(79)=abb545(44)
      acd545(80)=spvak4k6(iv1)
      acd545(81)=abb545(50)
      acd545(82)=abb545(53)
      acd545(83)=spvak5k2(iv1)
      acd545(84)=abb545(18)
      acd545(85)=spvak5k3(iv1)
      acd545(86)=abb545(43)
      acd545(87)=abb545(103)
      acd545(88)=spvak5k6(iv1)
      acd545(89)=abb545(17)
      acd545(90)=abb545(163)
      acd545(91)=spvak6k2(iv1)
      acd545(92)=abb545(106)
      acd545(93)=spvak1k2(iv1)
      acd545(94)=abb545(36)
      acd545(95)=spvak7k2(iv1)
      acd545(96)=-acd545(4)-acd545(6)+acd545(7)+acd545(8)
      acd545(97)=acd545(96)*acd545(38)
      acd545(98)=acd545(25)*acd545(67)
      acd545(99)=acd545(23)*acd545(66)
      acd545(100)=acd545(19)*acd545(64)
      acd545(101)=acd545(17)*acd545(63)
      acd545(97)=acd545(97)+acd545(98)+acd545(99)+acd545(100)+acd545(101)-acd54&
      &5(69)
      acd545(98)=acd545(93)*acd545(97)
      acd545(99)=acd545(88)*acd545(67)
      acd545(100)=acd545(85)*acd545(66)
      acd545(101)=acd545(80)*acd545(64)
      acd545(102)=acd545(77)*acd545(63)
      acd545(103)=-acd545(42)-acd545(43)+acd545(35)+acd545(41)
      acd545(104)=-acd545(38)*acd545(103)
      acd545(99)=acd545(104)+acd545(102)+acd545(101)+acd545(99)+acd545(100)
      acd545(99)=acd545(37)*acd545(99)
      acd545(100)=-acd545(71)*acd545(95)
      acd545(101)=-acd545(91)*acd545(68)
      acd545(102)=-acd545(83)*acd545(65)
      acd545(104)=-acd545(75)*acd545(62)
      acd545(105)=-acd545(73)*acd545(61)
      acd545(106)=2.0_ki*acd545(46)
      acd545(107)=acd545(48)*acd545(106)
      acd545(108)=-acd545(54)*acd545(55)
      acd545(109)=-acd545(1)*acd545(12)
      acd545(98)=acd545(99)+acd545(98)+acd545(109)+acd545(108)+acd545(107)+acd5&
      &45(105)+acd545(104)+acd545(102)+acd545(100)+acd545(101)
      acd545(98)=acd545(11)*acd545(98)
      acd545(99)=-acd545(71)*acd545(70)
      acd545(100)=-acd545(27)*acd545(68)
      acd545(101)=-acd545(21)*acd545(65)
      acd545(102)=-acd545(15)*acd545(62)
      acd545(104)=-acd545(13)*acd545(61)
      acd545(105)=acd545(33)*acd545(48)
      acd545(107)=-acd545(9)*acd545(55)
      acd545(108)=-acd545(31)*acd545(12)
      acd545(99)=acd545(108)+acd545(107)+acd545(105)+acd545(104)+acd545(102)+ac&
      &d545(101)+acd545(100)+acd545(72)+acd545(99)
      acd545(99)=acd545(60)*acd545(99)
      acd545(100)=-acd545(25)*acd545(59)
      acd545(101)=-acd545(23)*acd545(58)
      acd545(102)=-acd545(19)*acd545(57)
      acd545(104)=-acd545(17)*acd545(56)
      acd545(105)=acd545(32)*acd545(10)
      acd545(107)=acd545(33)*acd545(47)
      acd545(108)=acd545(36)*acd545(96)
      acd545(100)=acd545(108)+acd545(107)+acd545(105)+acd545(104)+acd545(102)+a&
      &cd545(100)+acd545(101)
      acd545(100)=acd545(54)*acd545(100)
      acd545(101)=-acd545(88)*acd545(59)
      acd545(102)=-acd545(85)*acd545(58)
      acd545(104)=-acd545(80)*acd545(57)
      acd545(105)=-acd545(77)*acd545(56)
      acd545(107)=acd545(44)*acd545(10)
      acd545(108)=acd545(47)*acd545(106)
      acd545(109)=-acd545(36)*acd545(103)
      acd545(101)=acd545(109)+acd545(108)+acd545(107)+acd545(105)+acd545(104)+a&
      &cd545(101)+acd545(102)
      acd545(101)=acd545(9)*acd545(101)
      acd545(102)=acd545(3)*acd545(30)
      acd545(104)=acd545(91)*acd545(28)
      acd545(105)=acd545(83)*acd545(22)
      acd545(107)=acd545(75)*acd545(16)
      acd545(108)=acd545(73)*acd545(14)
      acd545(102)=acd545(108)+acd545(102)-acd545(104)+acd545(105)+acd545(107)
      acd545(104)=-acd545(88)*acd545(26)
      acd545(105)=-acd545(85)*acd545(24)
      acd545(107)=-acd545(80)*acd545(20)
      acd545(108)=-acd545(77)*acd545(18)
      acd545(109)=acd545(5)*acd545(103)
      acd545(110)=-acd545(54)*acd545(10)
      acd545(104)=acd545(110)+acd545(109)+acd545(108)+acd545(107)+acd545(105)+a&
      &cd545(104)+acd545(102)
      acd545(104)=acd545(31)*acd545(104)
      acd545(105)=acd545(27)*acd545(28)
      acd545(107)=acd545(21)*acd545(22)
      acd545(108)=acd545(15)*acd545(16)
      acd545(109)=acd545(13)*acd545(14)
      acd545(110)=acd545(3)*acd545(2)
      acd545(105)=-acd545(105)+acd545(107)+acd545(108)+acd545(109)+acd545(110)
      acd545(107)=-acd545(25)*acd545(26)
      acd545(108)=-acd545(23)*acd545(24)
      acd545(109)=-acd545(19)*acd545(20)
      acd545(110)=-acd545(17)*acd545(18)
      acd545(111)=-acd545(5)*acd545(96)
      acd545(112)=-acd545(9)*acd545(10)
      acd545(107)=acd545(112)+acd545(111)+acd545(110)+acd545(109)+acd545(108)+a&
      &cd545(107)+acd545(29)+acd545(105)
      acd545(107)=acd545(1)*acd545(107)
      acd545(97)=acd545(60)*acd545(97)
      acd545(108)=-acd545(88)*acd545(89)
      acd545(109)=-acd545(85)*acd545(86)
      acd545(110)=-acd545(80)*acd545(81)
      acd545(111)=-acd545(77)*acd545(78)
      acd545(112)=-acd545(39)*acd545(103)
      acd545(97)=acd545(97)+acd545(112)+acd545(111)+acd545(110)+acd545(108)+acd&
      &545(109)
      acd545(97)=acd545(37)*acd545(97)
      acd545(102)=-acd545(32)*acd545(102)
      acd545(105)=acd545(45)-acd545(105)
      acd545(105)=acd545(44)*acd545(105)
      acd545(108)=acd545(30)*acd545(34)
      acd545(109)=acd545(91)*acd545(52)
      acd545(110)=acd545(83)*acd545(51)
      acd545(111)=acd545(75)*acd545(50)
      acd545(112)=acd545(73)*acd545(49)
      acd545(108)=acd545(112)+acd545(111)+acd545(110)+acd545(108)+acd545(109)
      acd545(108)=acd545(33)*acd545(108)
      acd545(109)=acd545(2)*acd545(34)
      acd545(110)=acd545(27)*acd545(52)
      acd545(111)=acd545(21)*acd545(51)
      acd545(112)=acd545(15)*acd545(50)
      acd545(113)=acd545(13)*acd545(49)
      acd545(109)=acd545(113)+acd545(112)+acd545(111)+acd545(110)-acd545(53)+ac&
      &d545(109)
      acd545(106)=acd545(109)*acd545(106)
      acd545(109)=-acd545(25)*acd545(89)
      acd545(110)=-acd545(23)*acd545(86)
      acd545(111)=-acd545(19)*acd545(81)
      acd545(112)=-acd545(17)*acd545(78)
      acd545(96)=acd545(39)*acd545(96)
      acd545(96)=acd545(96)+acd545(112)+acd545(111)+acd545(110)+acd545(94)+acd5&
      &45(109)
      acd545(96)=acd545(93)*acd545(96)
      acd545(103)=-acd545(40)*acd545(103)
      acd545(109)=acd545(91)*acd545(92)
      acd545(110)=acd545(88)*acd545(90)
      acd545(111)=acd545(85)*acd545(87)
      acd545(112)=acd545(83)*acd545(84)
      acd545(113)=acd545(80)*acd545(82)
      acd545(114)=acd545(77)*acd545(79)
      acd545(115)=acd545(75)*acd545(76)
      acd545(116)=acd545(73)*acd545(74)
      brack=acd545(96)+acd545(97)+acd545(98)+acd545(99)+acd545(100)+acd545(101)&
      &+acd545(102)+acd545(103)+acd545(104)+acd545(105)+acd545(106)+acd545(107)&
      &+acd545(108)+acd545(109)+acd545(110)+acd545(111)+acd545(112)+acd545(113)&
      &+acd545(114)+acd545(115)+acd545(116)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd545h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(119) :: acd545
      complex(ki) :: brack
      acd545(1)=d(iv1,iv2)
      acd545(2)=dotproduct(k2,qshift)
      acd545(3)=abb545(40)
      acd545(4)=dotproduct(qshift,spvak1k7)
      acd545(5)=abb545(26)
      acd545(6)=dotproduct(qshift,spvak2k7)
      acd545(7)=abb545(38)
      acd545(8)=dotproduct(qshift,spvak3k2)
      acd545(9)=abb545(35)
      acd545(10)=dotproduct(qshift,spvak4k2)
      acd545(11)=abb545(23)
      acd545(12)=dotproduct(qshift,spvak5k2)
      acd545(13)=abb545(27)
      acd545(14)=dotproduct(qshift,spvak6k2)
      acd545(15)=abb545(161)
      acd545(16)=abb545(19)
      acd545(17)=k1(iv1)
      acd545(18)=k2(iv2)
      acd545(19)=abb545(160)
      acd545(20)=k3(iv2)
      acd545(21)=abb545(88)
      acd545(22)=k4(iv2)
      acd545(23)=k5(iv2)
      acd545(24)=k6(iv2)
      acd545(25)=spvak1k7(iv2)
      acd545(26)=abb545(30)
      acd545(27)=spvak2k7(iv2)
      acd545(28)=abb545(60)
      acd545(29)=spvak3k2(iv2)
      acd545(30)=abb545(34)
      acd545(31)=spvak4k2(iv2)
      acd545(32)=abb545(29)
      acd545(33)=spvak5k2(iv2)
      acd545(34)=abb545(41)
      acd545(35)=spvak6k2(iv2)
      acd545(36)=abb545(125)
      acd545(37)=spvak4k3(iv2)
      acd545(38)=abb545(25)
      acd545(39)=spvak4k6(iv2)
      acd545(40)=abb545(42)
      acd545(41)=spvak5k3(iv2)
      acd545(42)=abb545(63)
      acd545(43)=spvak5k6(iv2)
      acd545(44)=abb545(22)
      acd545(45)=k1(iv2)
      acd545(46)=k2(iv1)
      acd545(47)=k3(iv1)
      acd545(48)=k4(iv1)
      acd545(49)=k5(iv1)
      acd545(50)=k6(iv1)
      acd545(51)=spvak1k7(iv1)
      acd545(52)=spvak2k7(iv1)
      acd545(53)=spvak3k2(iv1)
      acd545(54)=spvak4k2(iv1)
      acd545(55)=spvak5k2(iv1)
      acd545(56)=spvak6k2(iv1)
      acd545(57)=spvak4k3(iv1)
      acd545(58)=spvak4k6(iv1)
      acd545(59)=spvak5k3(iv1)
      acd545(60)=spvak5k6(iv1)
      acd545(61)=k7(iv2)
      acd545(62)=qshift(iv2)
      acd545(63)=k7(iv1)
      acd545(64)=qshift(iv1)
      acd545(65)=abb545(48)
      acd545(66)=dotproduct(qshift,spvak1k2)
      acd545(67)=abb545(15)
      acd545(68)=spvak1k2(iv2)
      acd545(69)=abb545(49)
      acd545(70)=spvak1k2(iv1)
      acd545(71)=abb545(52)
      acd545(72)=abb545(20)
      acd545(73)=abb545(82)
      acd545(74)=abb545(79)
      acd545(75)=abb545(13)
      acd545(76)=abb545(28)
      acd545(77)=abb545(16)
      acd545(78)=abb545(45)
      acd545(79)=abb545(66)
      acd545(80)=abb545(31)
      acd545(81)=abb545(46)
      acd545(82)=abb545(12)
      acd545(83)=abb545(39)
      acd545(84)=dotproduct(k3,qshift)
      acd545(85)=dotproduct(k4,qshift)
      acd545(86)=dotproduct(k5,qshift)
      acd545(87)=dotproduct(k6,qshift)
      acd545(88)=dotproduct(qshift,spvak4k3)
      acd545(89)=dotproduct(qshift,spvak4k6)
      acd545(90)=dotproduct(qshift,spvak5k3)
      acd545(91)=dotproduct(qshift,spvak5k6)
      acd545(92)=abb545(32)
      acd545(93)=spvak7k2(iv2)
      acd545(94)=abb545(65)
      acd545(95)=spvak7k2(iv1)
      acd545(96)=abb545(21)
      acd545(97)=abb545(50)
      acd545(98)=abb545(43)
      acd545(99)=abb545(17)
      acd545(100)=-acd545(84)-acd545(85)+acd545(86)+acd545(87)
      acd545(100)=acd545(100)*acd545(67)
      acd545(101)=acd545(83)*acd545(91)
      acd545(102)=acd545(82)*acd545(90)
      acd545(103)=acd545(81)*acd545(89)
      acd545(104)=acd545(80)*acd545(88)
      acd545(100)=acd545(100)+acd545(101)+acd545(102)+acd545(103)+acd545(104)-a&
      &cd545(92)
      acd545(101)=-acd545(68)*acd545(100)
      acd545(102)=acd545(83)*acd545(43)
      acd545(103)=acd545(82)*acd545(41)
      acd545(104)=acd545(81)*acd545(39)
      acd545(105)=acd545(80)*acd545(37)
      acd545(102)=acd545(102)+acd545(103)+acd545(104)+acd545(105)
      acd545(103)=-acd545(66)*acd545(102)
      acd545(104)=acd545(67)*acd545(66)
      acd545(105)=-acd545(20)-acd545(22)+acd545(23)+acd545(24)
      acd545(106)=-acd545(105)*acd545(104)
      acd545(107)=acd545(94)*acd545(93)
      acd545(108)=acd545(35)*acd545(79)
      acd545(109)=acd545(33)*acd545(78)
      acd545(110)=acd545(31)*acd545(77)
      acd545(111)=acd545(29)*acd545(76)
      acd545(112)=2.0_ki*acd545(62)
      acd545(113)=-acd545(7)*acd545(112)
      acd545(114)=acd545(25)*acd545(71)
      acd545(115)=acd545(45)*acd545(28)
      acd545(101)=acd545(101)+acd545(106)+acd545(103)+acd545(115)+acd545(114)+a&
      &cd545(113)+acd545(111)+acd545(110)+acd545(109)+acd545(107)+acd545(108)
      acd545(101)=acd545(52)*acd545(101)
      acd545(100)=-acd545(70)*acd545(100)
      acd545(103)=acd545(83)*acd545(60)
      acd545(106)=acd545(82)*acd545(59)
      acd545(107)=acd545(81)*acd545(58)
      acd545(108)=acd545(80)*acd545(57)
      acd545(103)=acd545(108)+acd545(103)+acd545(106)+acd545(107)
      acd545(106)=-acd545(66)*acd545(103)
      acd545(107)=-acd545(50)-acd545(49)+acd545(47)+acd545(48)
      acd545(104)=acd545(107)*acd545(104)
      acd545(108)=acd545(94)*acd545(95)
      acd545(109)=acd545(56)*acd545(79)
      acd545(110)=acd545(55)*acd545(78)
      acd545(111)=acd545(54)*acd545(77)
      acd545(113)=acd545(53)*acd545(76)
      acd545(114)=2.0_ki*acd545(64)
      acd545(115)=-acd545(7)*acd545(114)
      acd545(116)=acd545(51)*acd545(71)
      acd545(117)=acd545(17)*acd545(28)
      acd545(100)=acd545(100)+acd545(104)+acd545(106)+acd545(117)+acd545(116)+a&
      &cd545(115)+acd545(113)+acd545(111)+acd545(110)+acd545(108)+acd545(109)
      acd545(100)=acd545(27)*acd545(100)
      acd545(104)=acd545(43)*acd545(75)
      acd545(106)=acd545(41)*acd545(74)
      acd545(108)=acd545(39)*acd545(73)
      acd545(109)=acd545(37)*acd545(72)
      acd545(110)=-acd545(61)*acd545(26)
      acd545(111)=-acd545(5)*acd545(112)
      acd545(113)=-acd545(65)*acd545(105)
      acd545(104)=acd545(113)+acd545(111)+acd545(110)+acd545(109)+acd545(108)+a&
      &cd545(104)+acd545(106)
      acd545(104)=acd545(51)*acd545(104)
      acd545(106)=acd545(60)*acd545(75)
      acd545(108)=acd545(59)*acd545(74)
      acd545(109)=acd545(58)*acd545(73)
      acd545(110)=acd545(57)*acd545(72)
      acd545(111)=-acd545(63)*acd545(26)
      acd545(113)=-acd545(5)*acd545(114)
      acd545(115)=acd545(65)*acd545(107)
      acd545(106)=acd545(115)+acd545(113)+acd545(111)+acd545(110)+acd545(109)+a&
      &cd545(106)+acd545(108)
      acd545(106)=acd545(25)*acd545(106)
      acd545(108)=acd545(36)*acd545(56)
      acd545(109)=acd545(34)*acd545(55)
      acd545(110)=acd545(32)*acd545(54)
      acd545(111)=acd545(30)*acd545(53)
      acd545(113)=acd545(19)*acd545(46)
      acd545(108)=acd545(113)-acd545(108)+acd545(109)+acd545(110)+acd545(111)
      acd545(109)=acd545(60)*acd545(44)
      acd545(110)=acd545(59)*acd545(42)
      acd545(111)=acd545(58)*acd545(40)
      acd545(113)=acd545(57)*acd545(38)
      acd545(115)=-acd545(21)*acd545(107)
      acd545(116)=acd545(51)*acd545(26)
      acd545(109)=acd545(116)+acd545(115)+acd545(113)+acd545(111)+acd545(110)+a&
      &cd545(109)-acd545(108)
      acd545(109)=acd545(45)*acd545(109)
      acd545(110)=acd545(35)*acd545(36)
      acd545(111)=acd545(33)*acd545(34)
      acd545(113)=acd545(31)*acd545(32)
      acd545(115)=acd545(29)*acd545(30)
      acd545(116)=acd545(19)*acd545(18)
      acd545(110)=acd545(116)-acd545(110)+acd545(111)+acd545(113)+acd545(115)
      acd545(111)=acd545(43)*acd545(44)
      acd545(113)=acd545(41)*acd545(42)
      acd545(115)=acd545(39)*acd545(40)
      acd545(116)=acd545(37)*acd545(38)
      acd545(117)=acd545(21)*acd545(105)
      acd545(118)=acd545(25)*acd545(26)
      acd545(111)=acd545(118)+acd545(117)+acd545(116)+acd545(115)+acd545(113)+a&
      &cd545(111)-acd545(110)
      acd545(111)=acd545(17)*acd545(111)
      acd545(113)=-acd545(15)*acd545(14)
      acd545(115)=-acd545(13)*acd545(12)
      acd545(116)=-acd545(11)*acd545(10)
      acd545(117)=-acd545(9)*acd545(8)
      acd545(118)=-acd545(5)*acd545(4)
      acd545(119)=-acd545(3)*acd545(2)
      acd545(113)=acd545(119)+acd545(118)+acd545(117)+acd545(116)+acd545(115)+a&
      &cd545(16)+acd545(113)
      acd545(115)=2.0_ki*acd545(7)
      acd545(115)=-acd545(6)*acd545(115)
      acd545(113)=acd545(115)+2.0_ki*acd545(113)
      acd545(113)=acd545(1)*acd545(113)
      acd545(102)=-acd545(6)*acd545(102)
      acd545(115)=acd545(67)*acd545(6)
      acd545(115)=acd545(115)+acd545(69)
      acd545(105)=-acd545(105)*acd545(115)
      acd545(116)=acd545(43)*acd545(99)
      acd545(117)=acd545(41)*acd545(98)
      acd545(118)=acd545(39)*acd545(97)
      acd545(119)=acd545(37)*acd545(96)
      acd545(102)=acd545(102)+acd545(119)+acd545(118)+acd545(116)+acd545(117)+a&
      &cd545(105)
      acd545(102)=acd545(70)*acd545(102)
      acd545(103)=-acd545(6)*acd545(103)
      acd545(105)=acd545(107)*acd545(115)
      acd545(107)=acd545(60)*acd545(99)
      acd545(115)=acd545(59)*acd545(98)
      acd545(116)=acd545(58)*acd545(97)
      acd545(117)=acd545(57)*acd545(96)
      acd545(103)=acd545(103)+acd545(117)+acd545(116)+acd545(107)+acd545(115)+a&
      &cd545(105)
      acd545(103)=acd545(68)*acd545(103)
      acd545(105)=acd545(63)*acd545(110)
      acd545(107)=acd545(61)*acd545(108)
      acd545(108)=-acd545(3)*acd545(18)
      acd545(110)=-acd545(35)*acd545(15)
      acd545(115)=-acd545(33)*acd545(13)
      acd545(116)=-acd545(31)*acd545(11)
      acd545(117)=-acd545(29)*acd545(9)
      acd545(108)=acd545(117)+acd545(116)+acd545(115)+acd545(108)+acd545(110)
      acd545(108)=acd545(108)*acd545(114)
      acd545(110)=-acd545(3)*acd545(46)
      acd545(114)=-acd545(56)*acd545(15)
      acd545(115)=-acd545(55)*acd545(13)
      acd545(116)=-acd545(54)*acd545(11)
      acd545(117)=-acd545(53)*acd545(9)
      acd545(110)=acd545(117)+acd545(116)+acd545(115)+acd545(110)+acd545(114)
      acd545(110)=acd545(110)*acd545(112)
      brack=acd545(100)+acd545(101)+acd545(102)+acd545(103)+acd545(104)+acd545(&
      &105)+acd545(106)+acd545(107)+acd545(108)+acd545(109)+acd545(110)+acd545(&
      &111)+acd545(113)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd545h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd545
      complex(ki) :: brack
      acd545(1)=d(iv1,iv2)
      acd545(2)=k2(iv3)
      acd545(3)=abb545(40)
      acd545(4)=spvak1k7(iv3)
      acd545(5)=abb545(26)
      acd545(6)=spvak2k7(iv3)
      acd545(7)=abb545(38)
      acd545(8)=spvak3k2(iv3)
      acd545(9)=abb545(35)
      acd545(10)=spvak4k2(iv3)
      acd545(11)=abb545(23)
      acd545(12)=spvak5k2(iv3)
      acd545(13)=abb545(27)
      acd545(14)=spvak6k2(iv3)
      acd545(15)=abb545(161)
      acd545(16)=d(iv1,iv3)
      acd545(17)=k2(iv2)
      acd545(18)=spvak1k7(iv2)
      acd545(19)=spvak2k7(iv2)
      acd545(20)=spvak3k2(iv2)
      acd545(21)=spvak4k2(iv2)
      acd545(22)=spvak5k2(iv2)
      acd545(23)=spvak6k2(iv2)
      acd545(24)=d(iv2,iv3)
      acd545(25)=k2(iv1)
      acd545(26)=spvak1k7(iv1)
      acd545(27)=spvak2k7(iv1)
      acd545(28)=spvak3k2(iv1)
      acd545(29)=spvak4k2(iv1)
      acd545(30)=spvak5k2(iv1)
      acd545(31)=spvak6k2(iv1)
      acd545(32)=k3(iv1)
      acd545(33)=spvak1k2(iv3)
      acd545(34)=abb545(15)
      acd545(35)=spvak1k2(iv2)
      acd545(36)=k3(iv2)
      acd545(37)=spvak1k2(iv1)
      acd545(38)=k3(iv3)
      acd545(39)=k4(iv1)
      acd545(40)=k4(iv2)
      acd545(41)=k4(iv3)
      acd545(42)=k5(iv1)
      acd545(43)=k5(iv2)
      acd545(44)=k5(iv3)
      acd545(45)=k6(iv1)
      acd545(46)=k6(iv2)
      acd545(47)=k6(iv3)
      acd545(48)=spvak4k3(iv3)
      acd545(49)=abb545(31)
      acd545(50)=spvak4k6(iv3)
      acd545(51)=abb545(46)
      acd545(52)=spvak5k3(iv3)
      acd545(53)=abb545(12)
      acd545(54)=spvak5k6(iv3)
      acd545(55)=abb545(39)
      acd545(56)=spvak4k3(iv2)
      acd545(57)=spvak4k6(iv2)
      acd545(58)=spvak5k3(iv2)
      acd545(59)=spvak5k6(iv2)
      acd545(60)=spvak4k3(iv1)
      acd545(61)=spvak4k6(iv1)
      acd545(62)=spvak5k3(iv1)
      acd545(63)=spvak5k6(iv1)
      acd545(64)=acd545(25)*acd545(3)
      acd545(65)=acd545(26)*acd545(5)
      acd545(66)=acd545(28)*acd545(9)
      acd545(67)=acd545(29)*acd545(11)
      acd545(68)=acd545(30)*acd545(13)
      acd545(69)=acd545(31)*acd545(15)
      acd545(64)=acd545(69)+acd545(68)+acd545(67)+acd545(66)+acd545(65)+acd545(&
      &64)
      acd545(65)=2.0_ki*acd545(24)
      acd545(64)=acd545(65)*acd545(64)
      acd545(65)=acd545(17)*acd545(3)
      acd545(66)=acd545(18)*acd545(5)
      acd545(67)=acd545(20)*acd545(9)
      acd545(68)=acd545(21)*acd545(11)
      acd545(69)=acd545(22)*acd545(13)
      acd545(70)=acd545(23)*acd545(15)
      acd545(65)=acd545(70)+acd545(69)+acd545(68)+acd545(67)+acd545(66)+acd545(&
      &65)
      acd545(66)=2.0_ki*acd545(16)
      acd545(65)=acd545(66)*acd545(65)
      acd545(66)=acd545(2)*acd545(3)
      acd545(67)=acd545(4)*acd545(5)
      acd545(68)=acd545(8)*acd545(9)
      acd545(69)=acd545(10)*acd545(11)
      acd545(70)=acd545(12)*acd545(13)
      acd545(71)=acd545(14)*acd545(15)
      acd545(66)=acd545(71)+acd545(70)+acd545(69)+acd545(68)+acd545(67)+acd545(&
      &66)
      acd545(67)=2.0_ki*acd545(1)
      acd545(66)=acd545(67)*acd545(66)
      acd545(67)=acd545(35)*acd545(27)
      acd545(68)=acd545(37)*acd545(19)
      acd545(67)=acd545(67)+acd545(68)
      acd545(68)=acd545(47)+acd545(44)-acd545(41)-acd545(38)
      acd545(68)=acd545(68)*acd545(67)
      acd545(69)=acd545(33)*acd545(27)
      acd545(70)=acd545(37)*acd545(6)
      acd545(69)=acd545(69)+acd545(70)
      acd545(70)=acd545(46)+acd545(43)-acd545(40)-acd545(36)
      acd545(70)=acd545(70)*acd545(69)
      acd545(71)=acd545(33)*acd545(19)
      acd545(72)=acd545(35)*acd545(6)
      acd545(71)=acd545(71)+acd545(72)
      acd545(72)=acd545(45)+acd545(42)-acd545(39)-acd545(32)
      acd545(72)=acd545(72)*acd545(71)
      acd545(68)=acd545(72)+acd545(70)+acd545(68)
      acd545(68)=acd545(34)*acd545(68)
      acd545(70)=acd545(56)*acd545(49)
      acd545(72)=acd545(57)*acd545(51)
      acd545(73)=acd545(58)*acd545(53)
      acd545(74)=acd545(59)*acd545(55)
      acd545(70)=acd545(74)+acd545(73)+acd545(72)+acd545(70)
      acd545(69)=acd545(69)*acd545(70)
      acd545(70)=acd545(48)*acd545(49)
      acd545(72)=acd545(50)*acd545(51)
      acd545(73)=acd545(52)*acd545(53)
      acd545(74)=acd545(54)*acd545(55)
      acd545(70)=acd545(74)+acd545(73)+acd545(72)+acd545(70)
      acd545(67)=acd545(67)*acd545(70)
      acd545(70)=acd545(60)*acd545(49)
      acd545(72)=acd545(61)*acd545(51)
      acd545(73)=acd545(62)*acd545(53)
      acd545(74)=acd545(63)*acd545(55)
      acd545(70)=acd545(74)+acd545(73)+acd545(72)+acd545(70)
      acd545(70)=acd545(71)*acd545(70)
      acd545(71)=acd545(1)*acd545(6)
      acd545(72)=acd545(16)*acd545(19)
      acd545(73)=acd545(24)*acd545(27)
      acd545(71)=acd545(73)+acd545(71)+acd545(72)
      acd545(71)=acd545(7)*acd545(71)
      brack=acd545(64)+acd545(65)+acd545(66)+acd545(67)+acd545(68)+acd545(69)+a&
      &cd545(70)+2.0_ki*acd545(71)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd545h1
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
      qshift = k2
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
!---#[ subroutine reconstruct_d545:
   subroutine     reconstruct_d545(coeffs)
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_545:
      coeffs%coeffs_545%c0 = derivative(czip)
      coeffs%coeffs_545%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_545%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_545%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_545%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_545%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_545%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_545%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_545%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_545%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_545%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_545%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_545%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_545%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_545%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_545%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_545%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_545%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_545%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_545%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_545%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_545%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_545%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_545%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_545%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_545%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_545%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_545%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_545%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_545%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_545%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_545%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_545%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_545%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_545%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_545:
   end subroutine reconstruct_d545
!---#] subroutine reconstruct_d545:
end module     p4_ubaru_epnemumnmubarg_d545h1l1d
