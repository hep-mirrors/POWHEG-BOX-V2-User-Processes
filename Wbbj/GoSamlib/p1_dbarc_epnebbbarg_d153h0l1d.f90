module     p1_dbarc_epnebbbarg_d153h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d153h0l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d153
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd153h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(111) :: acd153
      complex(ki) :: brack
      acd153(1)=dotproduct(k2,qshift)
      acd153(2)=dotproduct(e7,qshift)
      acd153(3)=abb153(75)
      acd153(4)=abb153(62)
      acd153(5)=dotproduct(l5,qshift)
      acd153(6)=abb153(54)
      acd153(7)=abb153(46)
      acd153(8)=dotproduct(l6,qshift)
      acd153(9)=dotproduct(k7,qshift)
      acd153(10)=dotproduct(qshift,spval5k2)
      acd153(11)=abb153(65)
      acd153(12)=dotproduct(qshift,spval6k2)
      acd153(13)=abb153(96)
      acd153(14)=abb153(44)
      acd153(15)=dotproduct(qshift,qshift)
      acd153(16)=abb153(47)
      acd153(17)=dotproduct(qshift,spvak1k2)
      acd153(18)=abb153(63)
      acd153(19)=dotproduct(qshift,spvak1k3)
      acd153(20)=abb153(74)
      acd153(21)=dotproduct(qshift,spvak4k2)
      acd153(22)=abb153(51)
      acd153(23)=abb153(61)
      acd153(24)=abb153(66)
      acd153(25)=abb153(59)
      acd153(26)=abb153(82)
      acd153(27)=abb153(93)
      acd153(28)=abb153(39)
      acd153(29)=dotproduct(qshift,spvak1l5)
      acd153(30)=abb153(52)
      acd153(31)=dotproduct(qshift,spvak1l6)
      acd153(32)=abb153(77)
      acd153(33)=dotproduct(qshift,spval5k3)
      acd153(34)=abb153(87)
      acd153(35)=dotproduct(qshift,spval6k3)
      acd153(36)=abb153(95)
      acd153(37)=abb153(72)
      acd153(38)=abb153(70)
      acd153(39)=abb153(112)
      acd153(40)=abb153(40)
      acd153(41)=abb153(56)
      acd153(42)=abb153(92)
      acd153(43)=abb153(69)
      acd153(44)=dotproduct(qshift,spvak1e7)
      acd153(45)=abb153(33)
      acd153(46)=dotproduct(qshift,spvae7k2)
      acd153(47)=abb153(97)
      acd153(48)=dotproduct(qshift,spvae7k3)
      acd153(49)=abb153(67)
      acd153(50)=abb153(35)
      acd153(51)=abb153(36)
      acd153(52)=abb153(32)
      acd153(53)=abb153(80)
      acd153(54)=dotproduct(qshift,spvak1k7)
      acd153(55)=abb153(73)
      acd153(56)=dotproduct(qshift,spvak4k7)
      acd153(57)=abb153(89)
      acd153(58)=dotproduct(qshift,spvak7k2)
      acd153(59)=abb153(78)
      acd153(60)=dotproduct(qshift,spvak7k3)
      acd153(61)=abb153(49)
      acd153(62)=dotproduct(qshift,spvak4e7)
      acd153(63)=abb153(76)
      acd153(64)=abb153(50)
      acd153(65)=abb153(60)
      acd153(66)=abb153(58)
      acd153(67)=abb153(111)
      acd153(68)=abb153(71)
      acd153(69)=abb153(85)
      acd153(70)=abb153(127)
      acd153(71)=abb153(123)
      acd153(72)=abb153(133)
      acd153(73)=abb153(48)
      acd153(74)=abb153(34)
      acd153(75)=abb153(45)
      acd153(76)=abb153(37)
      acd153(77)=abb153(41)
      acd153(78)=abb153(64)
      acd153(79)=abb153(83)
      acd153(80)=abb153(120)
      acd153(81)=abb153(116)
      acd153(82)=abb153(107)
      acd153(83)=abb153(57)
      acd153(84)=dotproduct(qshift,spvak4l5)
      acd153(85)=abb153(55)
      acd153(86)=dotproduct(qshift,spvak4l6)
      acd153(87)=abb153(53)
      acd153(88)=abb153(43)
      acd153(89)=abb153(91)
      acd153(90)=abb153(38)
      acd153(91)=-acd153(16)*acd153(2)
      acd153(92)=-acd153(38)*acd153(10)
      acd153(93)=-acd153(39)*acd153(12)
      acd153(94)=-acd153(40)*acd153(17)
      acd153(95)=-acd153(41)*acd153(21)
      acd153(96)=-acd153(42)*acd153(33)
      acd153(97)=-acd153(43)*acd153(35)
      acd153(98)=acd153(45)*acd153(44)
      acd153(99)=-acd153(47)*acd153(46)
      acd153(100)=-acd153(49)*acd153(48)
      acd153(91)=acd153(50)+acd153(100)+acd153(99)+acd153(98)+acd153(97)+acd153&
      &(96)+acd153(95)+acd153(94)+acd153(93)+acd153(92)+acd153(91)
      acd153(91)=acd153(15)*acd153(91)
      acd153(92)=acd153(11)*acd153(9)
      acd153(93)=acd153(51)*acd153(44)
      acd153(94)=acd153(52)*acd153(46)
      acd153(95)=acd153(53)*acd153(48)
      acd153(96)=acd153(55)*acd153(54)
      acd153(97)=acd153(57)*acd153(56)
      acd153(98)=acd153(59)*acd153(58)
      acd153(99)=acd153(61)*acd153(60)
      acd153(100)=acd153(63)*acd153(62)
      acd153(92)=-acd153(64)+acd153(100)+acd153(99)+acd153(98)+acd153(97)+acd15&
      &3(96)+acd153(95)+acd153(94)+acd153(93)+acd153(92)
      acd153(92)=acd153(10)*acd153(92)
      acd153(93)=acd153(13)*acd153(9)
      acd153(94)=acd153(65)*acd153(44)
      acd153(95)=acd153(66)*acd153(46)
      acd153(96)=acd153(67)*acd153(48)
      acd153(97)=acd153(68)*acd153(54)
      acd153(98)=acd153(69)*acd153(56)
      acd153(99)=acd153(70)*acd153(58)
      acd153(100)=acd153(71)*acd153(60)
      acd153(101)=acd153(72)*acd153(62)
      acd153(93)=-acd153(73)+acd153(101)+acd153(100)+acd153(99)+acd153(98)+acd1&
      &53(97)+acd153(96)+acd153(95)+acd153(94)+acd153(93)
      acd153(93)=acd153(12)*acd153(93)
      acd153(94)=-acd153(24)*acd153(17)
      acd153(95)=-acd153(25)*acd153(19)
      acd153(96)=-acd153(26)*acd153(21)
      acd153(94)=acd153(27)+acd153(96)+acd153(95)+acd153(94)
      acd153(94)=acd153(94)*acd153(12)
      acd153(95)=-acd153(18)*acd153(17)
      acd153(96)=-acd153(20)*acd153(19)
      acd153(97)=-acd153(22)*acd153(21)
      acd153(95)=acd153(23)+acd153(97)+acd153(96)+acd153(95)
      acd153(95)=acd153(95)*acd153(10)
      acd153(96)=acd153(3)*acd153(1)
      acd153(97)=acd153(28)*acd153(17)
      acd153(98)=acd153(30)*acd153(29)
      acd153(99)=acd153(32)*acd153(31)
      acd153(100)=acd153(34)*acd153(33)
      acd153(101)=acd153(36)*acd153(35)
      acd153(94)=acd153(97)+acd153(95)+acd153(94)-acd153(37)+acd153(101)+acd153&
      &(100)+acd153(99)+acd153(98)+acd153(96)
      acd153(94)=acd153(2)*acd153(94)
      acd153(95)=-acd153(8)-acd153(5)
      acd153(96)=acd153(6)*acd153(2)
      acd153(96)=acd153(96)+acd153(7)
      acd153(95)=acd153(96)*acd153(95)
      acd153(96)=-acd153(4)*acd153(1)
      acd153(97)=-acd153(14)*acd153(9)
      acd153(98)=-acd153(74)*acd153(17)
      acd153(99)=-acd153(75)*acd153(29)
      acd153(100)=-acd153(76)*acd153(31)
      acd153(101)=-acd153(77)*acd153(21)
      acd153(102)=-acd153(78)*acd153(33)
      acd153(103)=-acd153(79)*acd153(35)
      acd153(104)=-acd153(80)*acd153(44)
      acd153(105)=-acd153(81)*acd153(46)
      acd153(106)=-acd153(82)*acd153(48)
      acd153(107)=-acd153(83)*acd153(54)
      acd153(108)=-acd153(85)*acd153(84)
      acd153(109)=-acd153(87)*acd153(86)
      acd153(110)=-acd153(88)*acd153(58)
      acd153(111)=-acd153(89)*acd153(60)
      brack=acd153(90)+acd153(91)+acd153(92)+acd153(93)+acd153(94)+acd153(95)+a&
      &cd153(96)+acd153(97)+acd153(98)+acd153(99)+acd153(100)+acd153(101)+acd15&
      &3(102)+acd153(103)+acd153(104)+acd153(105)+acd153(106)+acd153(107)+acd15&
      &3(108)+acd153(109)+acd153(110)+acd153(111)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd153h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(137) :: acd153
      complex(ki) :: brack
      acd153(1)=k2(iv1)
      acd153(2)=dotproduct(e7,qshift)
      acd153(3)=abb153(75)
      acd153(4)=abb153(62)
      acd153(5)=l5(iv1)
      acd153(6)=abb153(54)
      acd153(7)=abb153(46)
      acd153(8)=l6(iv1)
      acd153(9)=k7(iv1)
      acd153(10)=dotproduct(qshift,spval5k2)
      acd153(11)=abb153(65)
      acd153(12)=dotproduct(qshift,spval6k2)
      acd153(13)=abb153(96)
      acd153(14)=abb153(44)
      acd153(15)=e7(iv1)
      acd153(16)=dotproduct(k2,qshift)
      acd153(17)=dotproduct(l5,qshift)
      acd153(18)=dotproduct(l6,qshift)
      acd153(19)=dotproduct(qshift,qshift)
      acd153(20)=abb153(47)
      acd153(21)=dotproduct(qshift,spvak1k2)
      acd153(22)=abb153(63)
      acd153(23)=dotproduct(qshift,spvak1k3)
      acd153(24)=abb153(74)
      acd153(25)=dotproduct(qshift,spvak4k2)
      acd153(26)=abb153(51)
      acd153(27)=abb153(61)
      acd153(28)=abb153(66)
      acd153(29)=abb153(59)
      acd153(30)=abb153(82)
      acd153(31)=abb153(93)
      acd153(32)=abb153(39)
      acd153(33)=dotproduct(qshift,spvak1l5)
      acd153(34)=abb153(52)
      acd153(35)=dotproduct(qshift,spvak1l6)
      acd153(36)=abb153(77)
      acd153(37)=dotproduct(qshift,spval5k3)
      acd153(38)=abb153(87)
      acd153(39)=dotproduct(qshift,spval6k3)
      acd153(40)=abb153(95)
      acd153(41)=abb153(72)
      acd153(42)=qshift(iv1)
      acd153(43)=abb153(70)
      acd153(44)=abb153(112)
      acd153(45)=abb153(40)
      acd153(46)=abb153(56)
      acd153(47)=abb153(92)
      acd153(48)=abb153(69)
      acd153(49)=dotproduct(qshift,spvak1e7)
      acd153(50)=abb153(33)
      acd153(51)=dotproduct(qshift,spvae7k2)
      acd153(52)=abb153(97)
      acd153(53)=dotproduct(qshift,spvae7k3)
      acd153(54)=abb153(67)
      acd153(55)=abb153(35)
      acd153(56)=spval5k2(iv1)
      acd153(57)=dotproduct(k7,qshift)
      acd153(58)=abb153(36)
      acd153(59)=abb153(32)
      acd153(60)=abb153(80)
      acd153(61)=dotproduct(qshift,spvak1k7)
      acd153(62)=abb153(73)
      acd153(63)=dotproduct(qshift,spvak4k7)
      acd153(64)=abb153(89)
      acd153(65)=dotproduct(qshift,spvak7k2)
      acd153(66)=abb153(78)
      acd153(67)=dotproduct(qshift,spvak7k3)
      acd153(68)=abb153(49)
      acd153(69)=dotproduct(qshift,spvak4e7)
      acd153(70)=abb153(76)
      acd153(71)=abb153(50)
      acd153(72)=spval6k2(iv1)
      acd153(73)=abb153(60)
      acd153(74)=abb153(58)
      acd153(75)=abb153(111)
      acd153(76)=abb153(71)
      acd153(77)=abb153(85)
      acd153(78)=abb153(127)
      acd153(79)=abb153(123)
      acd153(80)=abb153(133)
      acd153(81)=abb153(48)
      acd153(82)=spvak1k2(iv1)
      acd153(83)=abb153(34)
      acd153(84)=spvak1k3(iv1)
      acd153(85)=spvak1l5(iv1)
      acd153(86)=abb153(45)
      acd153(87)=spvak1l6(iv1)
      acd153(88)=abb153(37)
      acd153(89)=spvak4k2(iv1)
      acd153(90)=abb153(41)
      acd153(91)=spval5k3(iv1)
      acd153(92)=abb153(64)
      acd153(93)=spval6k3(iv1)
      acd153(94)=abb153(83)
      acd153(95)=spvak1e7(iv1)
      acd153(96)=abb153(120)
      acd153(97)=spvae7k2(iv1)
      acd153(98)=abb153(116)
      acd153(99)=spvae7k3(iv1)
      acd153(100)=abb153(107)
      acd153(101)=spvak1k7(iv1)
      acd153(102)=abb153(57)
      acd153(103)=spvak4l5(iv1)
      acd153(104)=abb153(55)
      acd153(105)=spvak4l6(iv1)
      acd153(106)=abb153(53)
      acd153(107)=spvak4k7(iv1)
      acd153(108)=spvak7k2(iv1)
      acd153(109)=abb153(43)
      acd153(110)=spvak7k3(iv1)
      acd153(111)=abb153(91)
      acd153(112)=spvak4e7(iv1)
      acd153(113)=acd153(23)*acd153(29)
      acd153(114)=acd153(25)*acd153(30)
      acd153(115)=acd153(21)*acd153(28)
      acd153(113)=acd153(113)+acd153(114)+acd153(115)-acd153(31)
      acd153(114)=acd153(72)*acd153(113)
      acd153(115)=acd153(23)*acd153(24)
      acd153(116)=acd153(25)*acd153(26)
      acd153(117)=acd153(21)*acd153(22)
      acd153(115)=acd153(115)+acd153(116)+acd153(117)-acd153(27)
      acd153(116)=acd153(56)*acd153(115)
      acd153(117)=acd153(29)*acd153(84)
      acd153(118)=acd153(89)*acd153(30)
      acd153(119)=acd153(82)*acd153(28)
      acd153(117)=acd153(119)+acd153(117)+acd153(118)
      acd153(117)=acd153(12)*acd153(117)
      acd153(118)=acd153(24)*acd153(84)
      acd153(119)=acd153(89)*acd153(26)
      acd153(120)=acd153(82)*acd153(22)
      acd153(118)=acd153(120)+acd153(118)+acd153(119)
      acd153(118)=acd153(10)*acd153(118)
      acd153(119)=-acd153(36)*acd153(87)
      acd153(120)=-acd153(34)*acd153(85)
      acd153(121)=-acd153(1)*acd153(3)
      acd153(122)=-acd153(93)*acd153(40)
      acd153(123)=-acd153(91)*acd153(38)
      acd153(124)=acd153(5)+acd153(8)
      acd153(125)=acd153(6)*acd153(124)
      acd153(126)=-acd153(82)*acd153(32)
      acd153(127)=2.0_ki*acd153(42)
      acd153(128)=acd153(20)*acd153(127)
      acd153(114)=acd153(118)+acd153(117)+acd153(116)+acd153(114)+acd153(128)+a&
      &cd153(126)+acd153(125)+acd153(123)+acd153(122)+acd153(121)+acd153(119)+a&
      &cd153(120)
      acd153(114)=acd153(2)*acd153(114)
      acd153(116)=-acd153(69)*acd153(80)
      acd153(117)=-acd153(67)*acd153(79)
      acd153(118)=-acd153(65)*acd153(78)
      acd153(119)=-acd153(63)*acd153(77)
      acd153(120)=-acd153(61)*acd153(76)
      acd153(121)=-acd153(13)*acd153(57)
      acd153(122)=-acd153(53)*acd153(75)
      acd153(123)=-acd153(51)*acd153(74)
      acd153(125)=-acd153(49)*acd153(73)
      acd153(126)=acd153(19)*acd153(44)
      acd153(116)=acd153(126)+acd153(125)+acd153(123)+acd153(122)+acd153(121)+a&
      &cd153(120)+acd153(119)+acd153(118)+acd153(117)+acd153(81)+acd153(116)
      acd153(116)=acd153(72)*acd153(116)
      acd153(117)=-acd153(69)*acd153(70)
      acd153(118)=-acd153(67)*acd153(68)
      acd153(119)=-acd153(65)*acd153(66)
      acd153(120)=-acd153(63)*acd153(64)
      acd153(121)=-acd153(61)*acd153(62)
      acd153(122)=-acd153(11)*acd153(57)
      acd153(123)=-acd153(53)*acd153(60)
      acd153(125)=-acd153(51)*acd153(59)
      acd153(126)=-acd153(49)*acd153(58)
      acd153(128)=acd153(19)*acd153(43)
      acd153(117)=acd153(128)+acd153(126)+acd153(125)+acd153(123)+acd153(122)+a&
      &cd153(121)+acd153(120)+acd153(119)+acd153(118)+acd153(71)+acd153(117)
      acd153(117)=acd153(56)*acd153(117)
      acd153(118)=-acd153(80)*acd153(112)
      acd153(119)=-acd153(77)*acd153(107)
      acd153(120)=-acd153(110)*acd153(79)
      acd153(121)=-acd153(108)*acd153(78)
      acd153(122)=-acd153(101)*acd153(76)
      acd153(123)=-acd153(9)*acd153(13)
      acd153(125)=-acd153(99)*acd153(75)
      acd153(126)=-acd153(97)*acd153(74)
      acd153(128)=-acd153(95)*acd153(73)
      acd153(129)=acd153(44)*acd153(127)
      acd153(118)=acd153(129)+acd153(128)+acd153(126)+acd153(125)+acd153(123)+a&
      &cd153(122)+acd153(121)+acd153(120)+acd153(118)+acd153(119)
      acd153(118)=acd153(12)*acd153(118)
      acd153(119)=-acd153(70)*acd153(112)
      acd153(120)=-acd153(64)*acd153(107)
      acd153(121)=-acd153(110)*acd153(68)
      acd153(122)=-acd153(108)*acd153(66)
      acd153(123)=-acd153(101)*acd153(62)
      acd153(125)=-acd153(9)*acd153(11)
      acd153(126)=-acd153(99)*acd153(60)
      acd153(128)=-acd153(97)*acd153(59)
      acd153(129)=-acd153(95)*acd153(58)
      acd153(130)=acd153(43)*acd153(127)
      acd153(119)=acd153(130)+acd153(129)+acd153(128)+acd153(126)+acd153(125)+a&
      &cd153(123)+acd153(122)+acd153(121)+acd153(119)+acd153(120)
      acd153(119)=acd153(10)*acd153(119)
      acd153(113)=acd153(12)*acd153(113)
      acd153(115)=acd153(10)*acd153(115)
      acd153(120)=-acd153(39)*acd153(40)
      acd153(121)=-acd153(37)*acd153(38)
      acd153(122)=-acd153(36)*acd153(35)
      acd153(123)=-acd153(34)*acd153(33)
      acd153(125)=-acd153(3)*acd153(16)
      acd153(126)=acd153(18)+acd153(17)
      acd153(126)=acd153(6)*acd153(126)
      acd153(128)=-acd153(21)*acd153(32)
      acd153(129)=acd153(19)*acd153(20)
      acd153(113)=acd153(115)+acd153(113)+acd153(129)+acd153(128)+acd153(126)+a&
      &cd153(125)+acd153(123)+acd153(122)+acd153(121)+acd153(41)+acd153(120)
      acd153(113)=acd153(15)*acd153(113)
      acd153(115)=acd153(93)*acd153(48)
      acd153(120)=acd153(91)*acd153(47)
      acd153(121)=acd153(99)*acd153(54)
      acd153(122)=acd153(97)*acd153(52)
      acd153(123)=-acd153(95)*acd153(50)
      acd153(125)=acd153(89)*acd153(46)
      acd153(126)=acd153(82)*acd153(45)
      acd153(115)=acd153(126)+acd153(125)+acd153(123)+acd153(122)+acd153(121)+a&
      &cd153(115)+acd153(120)
      acd153(115)=acd153(19)*acd153(115)
      acd153(120)=acd153(39)*acd153(48)
      acd153(121)=acd153(37)*acd153(47)
      acd153(122)=acd153(53)*acd153(54)
      acd153(123)=acd153(51)*acd153(52)
      acd153(125)=-acd153(49)*acd153(50)
      acd153(126)=acd153(25)*acd153(46)
      acd153(128)=acd153(21)*acd153(45)
      acd153(120)=acd153(128)+acd153(126)+acd153(125)+acd153(123)+acd153(122)+a&
      &cd153(121)-acd153(55)+acd153(120)
      acd153(120)=acd153(120)*acd153(127)
      acd153(121)=acd153(7)*acd153(124)
      acd153(122)=acd153(105)*acd153(106)
      acd153(123)=acd153(103)*acd153(104)
      acd153(124)=acd153(87)*acd153(88)
      acd153(125)=acd153(85)*acd153(86)
      acd153(126)=acd153(1)*acd153(4)
      acd153(127)=acd153(110)*acd153(111)
      acd153(128)=acd153(108)*acd153(109)
      acd153(129)=acd153(101)*acd153(102)
      acd153(130)=acd153(93)*acd153(94)
      acd153(131)=acd153(91)*acd153(92)
      acd153(132)=acd153(9)*acd153(14)
      acd153(133)=acd153(99)*acd153(100)
      acd153(134)=acd153(97)*acd153(98)
      acd153(135)=acd153(95)*acd153(96)
      acd153(136)=acd153(89)*acd153(90)
      acd153(137)=acd153(82)*acd153(83)
      brack=acd153(113)+acd153(114)+acd153(115)+acd153(116)+acd153(117)+acd153(&
      &118)+acd153(119)+acd153(120)+acd153(121)+acd153(122)+acd153(123)+acd153(&
      &124)+acd153(125)+acd153(126)+acd153(127)+acd153(128)+acd153(129)+acd153(&
      &130)+acd153(131)+acd153(132)+acd153(133)+acd153(134)+acd153(135)+acd153(&
      &136)+acd153(137)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd153h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(121) :: acd153
      complex(ki) :: brack
      acd153(1)=d(iv1,iv2)
      acd153(2)=dotproduct(e7,qshift)
      acd153(3)=abb153(47)
      acd153(4)=dotproduct(qshift,spvak1k2)
      acd153(5)=abb153(40)
      acd153(6)=dotproduct(qshift,spvak4k2)
      acd153(7)=abb153(56)
      acd153(8)=dotproduct(qshift,spval5k2)
      acd153(9)=abb153(70)
      acd153(10)=dotproduct(qshift,spval5k3)
      acd153(11)=abb153(92)
      acd153(12)=dotproduct(qshift,spval6k2)
      acd153(13)=abb153(112)
      acd153(14)=dotproduct(qshift,spval6k3)
      acd153(15)=abb153(69)
      acd153(16)=dotproduct(qshift,spvak1e7)
      acd153(17)=abb153(33)
      acd153(18)=dotproduct(qshift,spvae7k2)
      acd153(19)=abb153(97)
      acd153(20)=dotproduct(qshift,spvae7k3)
      acd153(21)=abb153(67)
      acd153(22)=abb153(35)
      acd153(23)=k2(iv1)
      acd153(24)=e7(iv2)
      acd153(25)=abb153(75)
      acd153(26)=k2(iv2)
      acd153(27)=e7(iv1)
      acd153(28)=l5(iv1)
      acd153(29)=abb153(54)
      acd153(30)=l5(iv2)
      acd153(31)=l6(iv1)
      acd153(32)=l6(iv2)
      acd153(33)=k7(iv1)
      acd153(34)=spval5k2(iv2)
      acd153(35)=abb153(65)
      acd153(36)=spval6k2(iv2)
      acd153(37)=abb153(96)
      acd153(38)=k7(iv2)
      acd153(39)=spval5k2(iv1)
      acd153(40)=spval6k2(iv1)
      acd153(41)=qshift(iv2)
      acd153(42)=spvak1k2(iv2)
      acd153(43)=abb153(63)
      acd153(44)=abb153(66)
      acd153(45)=abb153(39)
      acd153(46)=spvak4k2(iv2)
      acd153(47)=abb153(51)
      acd153(48)=abb153(82)
      acd153(49)=dotproduct(qshift,spvak1k3)
      acd153(50)=abb153(74)
      acd153(51)=abb153(61)
      acd153(52)=spval5k3(iv2)
      acd153(53)=abb153(87)
      acd153(54)=abb153(59)
      acd153(55)=abb153(93)
      acd153(56)=spval6k3(iv2)
      acd153(57)=abb153(95)
      acd153(58)=spvak1k3(iv2)
      acd153(59)=spvak1l5(iv2)
      acd153(60)=abb153(52)
      acd153(61)=spvak1l6(iv2)
      acd153(62)=abb153(77)
      acd153(63)=qshift(iv1)
      acd153(64)=spvak1k2(iv1)
      acd153(65)=spvak4k2(iv1)
      acd153(66)=spval5k3(iv1)
      acd153(67)=spval6k3(iv1)
      acd153(68)=spvak1k3(iv1)
      acd153(69)=spvak1l5(iv1)
      acd153(70)=spvak1l6(iv1)
      acd153(71)=spvak1e7(iv2)
      acd153(72)=spvae7k2(iv2)
      acd153(73)=spvae7k3(iv2)
      acd153(74)=spvak1e7(iv1)
      acd153(75)=spvae7k2(iv1)
      acd153(76)=spvae7k3(iv1)
      acd153(77)=abb153(36)
      acd153(78)=abb153(32)
      acd153(79)=abb153(80)
      acd153(80)=spvak1k7(iv2)
      acd153(81)=abb153(73)
      acd153(82)=spvak4k7(iv2)
      acd153(83)=abb153(89)
      acd153(84)=spvak7k2(iv2)
      acd153(85)=abb153(78)
      acd153(86)=spvak7k3(iv2)
      acd153(87)=abb153(49)
      acd153(88)=spvak4e7(iv2)
      acd153(89)=abb153(76)
      acd153(90)=spvak1k7(iv1)
      acd153(91)=spvak4k7(iv1)
      acd153(92)=spvak7k2(iv1)
      acd153(93)=spvak7k3(iv1)
      acd153(94)=spvak4e7(iv1)
      acd153(95)=abb153(60)
      acd153(96)=abb153(58)
      acd153(97)=abb153(111)
      acd153(98)=abb153(71)
      acd153(99)=abb153(85)
      acd153(100)=abb153(127)
      acd153(101)=abb153(123)
      acd153(102)=abb153(133)
      acd153(103)=acd153(54)*acd153(58)
      acd153(104)=acd153(48)*acd153(46)
      acd153(105)=acd153(42)*acd153(44)
      acd153(103)=acd153(105)+acd153(103)+acd153(104)
      acd153(104)=-acd153(12)*acd153(103)
      acd153(105)=acd153(50)*acd153(58)
      acd153(106)=acd153(47)*acd153(46)
      acd153(107)=acd153(42)*acd153(43)
      acd153(105)=acd153(105)+acd153(106)+acd153(107)
      acd153(106)=-acd153(8)*acd153(105)
      acd153(107)=acd153(54)*acd153(49)
      acd153(108)=acd153(48)*acd153(6)
      acd153(109)=acd153(44)*acd153(4)
      acd153(107)=acd153(108)+acd153(107)+acd153(109)-acd153(55)
      acd153(108)=-acd153(36)*acd153(107)
      acd153(109)=acd153(50)*acd153(49)
      acd153(110)=acd153(47)*acd153(6)
      acd153(111)=acd153(43)*acd153(4)
      acd153(109)=-acd153(51)+acd153(109)+acd153(110)+acd153(111)
      acd153(110)=-acd153(34)*acd153(109)
      acd153(111)=acd153(62)*acd153(61)
      acd153(112)=acd153(60)*acd153(59)
      acd153(113)=acd153(56)*acd153(57)
      acd153(114)=acd153(52)*acd153(53)
      acd153(115)=acd153(25)*acd153(26)
      acd153(116)=-acd153(32)-acd153(30)
      acd153(116)=acd153(29)*acd153(116)
      acd153(117)=acd153(42)*acd153(45)
      acd153(118)=2.0_ki*acd153(41)
      acd153(119)=-acd153(3)*acd153(118)
      acd153(104)=acd153(110)+acd153(108)+acd153(119)+acd153(106)+acd153(104)+a&
      &cd153(117)+acd153(116)+acd153(115)+acd153(114)+acd153(113)+acd153(111)+a&
      &cd153(112)
      acd153(104)=acd153(27)*acd153(104)
      acd153(106)=acd153(54)*acd153(68)
      acd153(108)=acd153(48)*acd153(65)
      acd153(110)=acd153(44)*acd153(64)
      acd153(106)=acd153(110)+acd153(106)+acd153(108)
      acd153(108)=-acd153(12)*acd153(106)
      acd153(110)=acd153(50)*acd153(68)
      acd153(111)=acd153(47)*acd153(65)
      acd153(112)=acd153(43)*acd153(64)
      acd153(110)=acd153(112)+acd153(110)+acd153(111)
      acd153(111)=-acd153(8)*acd153(110)
      acd153(107)=-acd153(40)*acd153(107)
      acd153(109)=-acd153(39)*acd153(109)
      acd153(112)=acd153(62)*acd153(70)
      acd153(113)=acd153(60)*acd153(69)
      acd153(114)=acd153(57)*acd153(67)
      acd153(115)=acd153(53)*acd153(66)
      acd153(116)=acd153(25)*acd153(23)
      acd153(117)=-acd153(31)-acd153(28)
      acd153(117)=acd153(29)*acd153(117)
      acd153(119)=acd153(64)*acd153(45)
      acd153(120)=2.0_ki*acd153(63)
      acd153(121)=-acd153(3)*acd153(120)
      acd153(107)=acd153(109)+acd153(107)+acd153(121)+acd153(111)+acd153(108)+a&
      &cd153(119)+acd153(117)+acd153(116)+acd153(115)+acd153(114)+acd153(112)+a&
      &cd153(113)
      acd153(107)=acd153(24)*acd153(107)
      acd153(103)=-acd153(2)*acd153(103)
      acd153(108)=acd153(88)*acd153(102)
      acd153(109)=acd153(86)*acd153(101)
      acd153(111)=acd153(84)*acd153(100)
      acd153(112)=acd153(82)*acd153(99)
      acd153(113)=acd153(80)*acd153(98)
      acd153(114)=acd153(37)*acd153(38)
      acd153(115)=acd153(73)*acd153(97)
      acd153(116)=acd153(72)*acd153(96)
      acd153(117)=acd153(71)*acd153(95)
      acd153(119)=-acd153(13)*acd153(118)
      acd153(103)=acd153(103)+acd153(119)+acd153(117)+acd153(116)+acd153(115)+a&
      &cd153(114)+acd153(113)+acd153(112)+acd153(111)+acd153(108)+acd153(109)
      acd153(103)=acd153(40)*acd153(103)
      acd153(105)=-acd153(2)*acd153(105)
      acd153(108)=acd153(88)*acd153(89)
      acd153(109)=acd153(86)*acd153(87)
      acd153(111)=acd153(84)*acd153(85)
      acd153(112)=acd153(82)*acd153(83)
      acd153(113)=acd153(80)*acd153(81)
      acd153(114)=acd153(35)*acd153(38)
      acd153(115)=acd153(73)*acd153(79)
      acd153(116)=acd153(72)*acd153(78)
      acd153(117)=acd153(71)*acd153(77)
      acd153(118)=-acd153(9)*acd153(118)
      acd153(105)=acd153(105)+acd153(118)+acd153(117)+acd153(116)+acd153(115)+a&
      &cd153(114)+acd153(113)+acd153(112)+acd153(111)+acd153(108)+acd153(109)
      acd153(105)=acd153(39)*acd153(105)
      acd153(106)=-acd153(2)*acd153(106)
      acd153(108)=acd153(94)*acd153(102)
      acd153(109)=acd153(93)*acd153(101)
      acd153(111)=acd153(92)*acd153(100)
      acd153(112)=acd153(91)*acd153(99)
      acd153(113)=acd153(90)*acd153(98)
      acd153(114)=acd153(33)*acd153(37)
      acd153(115)=acd153(76)*acd153(97)
      acd153(116)=acd153(75)*acd153(96)
      acd153(117)=acd153(74)*acd153(95)
      acd153(118)=-acd153(13)*acd153(120)
      acd153(106)=acd153(106)+acd153(118)+acd153(117)+acd153(116)+acd153(115)+a&
      &cd153(114)+acd153(113)+acd153(112)+acd153(111)+acd153(108)+acd153(109)
      acd153(106)=acd153(36)*acd153(106)
      acd153(108)=-acd153(2)*acd153(110)
      acd153(109)=acd153(89)*acd153(94)
      acd153(110)=acd153(87)*acd153(93)
      acd153(111)=acd153(85)*acd153(92)
      acd153(112)=acd153(83)*acd153(91)
      acd153(113)=acd153(81)*acd153(90)
      acd153(114)=acd153(33)*acd153(35)
      acd153(115)=acd153(76)*acd153(79)
      acd153(116)=acd153(75)*acd153(78)
      acd153(117)=acd153(74)*acd153(77)
      acd153(118)=-acd153(9)*acd153(120)
      acd153(108)=acd153(108)+acd153(118)+acd153(117)+acd153(116)+acd153(115)+a&
      &cd153(114)+acd153(113)+acd153(112)+acd153(111)+acd153(109)+acd153(110)
      acd153(108)=acd153(34)*acd153(108)
      acd153(109)=-acd153(21)*acd153(20)
      acd153(110)=-acd153(19)*acd153(18)
      acd153(111)=acd153(17)*acd153(16)
      acd153(112)=-acd153(15)*acd153(14)
      acd153(113)=-acd153(11)*acd153(10)
      acd153(114)=-acd153(6)*acd153(7)
      acd153(115)=-acd153(4)*acd153(5)
      acd153(116)=-acd153(12)*acd153(13)
      acd153(117)=-acd153(8)*acd153(9)
      acd153(118)=-acd153(2)*acd153(3)
      acd153(109)=acd153(118)+acd153(117)+acd153(116)+acd153(115)+acd153(114)+a&
      &cd153(113)+acd153(112)+acd153(111)+acd153(110)+acd153(22)+acd153(109)
      acd153(109)=acd153(1)*acd153(109)
      acd153(110)=-acd153(21)*acd153(73)
      acd153(111)=-acd153(19)*acd153(72)
      acd153(112)=acd153(17)*acd153(71)
      acd153(113)=-acd153(15)*acd153(56)
      acd153(114)=-acd153(11)*acd153(52)
      acd153(115)=-acd153(46)*acd153(7)
      acd153(116)=-acd153(42)*acd153(5)
      acd153(110)=acd153(116)+acd153(115)+acd153(114)+acd153(113)+acd153(112)+a&
      &cd153(110)+acd153(111)
      acd153(110)=acd153(63)*acd153(110)
      acd153(111)=-acd153(21)*acd153(76)
      acd153(112)=-acd153(19)*acd153(75)
      acd153(113)=acd153(17)*acd153(74)
      acd153(114)=-acd153(15)*acd153(67)
      acd153(115)=-acd153(11)*acd153(66)
      acd153(116)=-acd153(65)*acd153(7)
      acd153(117)=-acd153(64)*acd153(5)
      acd153(111)=acd153(117)+acd153(116)+acd153(115)+acd153(114)+acd153(113)+a&
      &cd153(111)+acd153(112)
      acd153(111)=acd153(41)*acd153(111)
      acd153(109)=acd153(110)+acd153(111)+acd153(109)
      brack=acd153(103)+acd153(104)+acd153(105)+acd153(106)+acd153(107)+acd153(&
      &108)+2.0_ki*acd153(109)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd153h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd153
      complex(ki) :: brack
      acd153(1)=d(iv1,iv2)
      acd153(2)=e7(iv3)
      acd153(3)=abb153(47)
      acd153(4)=spvak1k2(iv3)
      acd153(5)=abb153(40)
      acd153(6)=spvak4k2(iv3)
      acd153(7)=abb153(56)
      acd153(8)=spval5k2(iv3)
      acd153(9)=abb153(70)
      acd153(10)=spval5k3(iv3)
      acd153(11)=abb153(92)
      acd153(12)=spval6k2(iv3)
      acd153(13)=abb153(112)
      acd153(14)=spval6k3(iv3)
      acd153(15)=abb153(69)
      acd153(16)=spvak1e7(iv3)
      acd153(17)=abb153(33)
      acd153(18)=spvae7k2(iv3)
      acd153(19)=abb153(97)
      acd153(20)=spvae7k3(iv3)
      acd153(21)=abb153(67)
      acd153(22)=d(iv1,iv3)
      acd153(23)=e7(iv2)
      acd153(24)=spvak1k2(iv2)
      acd153(25)=spvak4k2(iv2)
      acd153(26)=spval5k2(iv2)
      acd153(27)=spval5k3(iv2)
      acd153(28)=spval6k2(iv2)
      acd153(29)=spval6k3(iv2)
      acd153(30)=spvak1e7(iv2)
      acd153(31)=spvae7k2(iv2)
      acd153(32)=spvae7k3(iv2)
      acd153(33)=d(iv2,iv3)
      acd153(34)=e7(iv1)
      acd153(35)=spvak1k2(iv1)
      acd153(36)=spvak4k2(iv1)
      acd153(37)=spval5k2(iv1)
      acd153(38)=spval5k3(iv1)
      acd153(39)=spval6k2(iv1)
      acd153(40)=spval6k3(iv1)
      acd153(41)=spvak1e7(iv1)
      acd153(42)=spvae7k2(iv1)
      acd153(43)=spvae7k3(iv1)
      acd153(44)=abb153(63)
      acd153(45)=abb153(66)
      acd153(46)=abb153(51)
      acd153(47)=abb153(82)
      acd153(48)=spvak1k3(iv3)
      acd153(49)=abb153(74)
      acd153(50)=spvak1k3(iv2)
      acd153(51)=abb153(59)
      acd153(52)=spvak1k3(iv1)
      acd153(53)=acd153(21)*acd153(43)
      acd153(54)=acd153(19)*acd153(42)
      acd153(55)=-acd153(17)*acd153(41)
      acd153(56)=acd153(15)*acd153(40)
      acd153(57)=acd153(11)*acd153(38)
      acd153(58)=acd153(36)*acd153(7)
      acd153(59)=acd153(35)*acd153(5)
      acd153(60)=acd153(39)*acd153(13)
      acd153(61)=acd153(37)*acd153(9)
      acd153(53)=acd153(61)+acd153(60)+acd153(59)+acd153(58)+acd153(57)+acd153(&
      &56)+acd153(55)+acd153(53)+acd153(54)
      acd153(53)=acd153(33)*acd153(53)
      acd153(54)=acd153(21)*acd153(32)
      acd153(55)=acd153(19)*acd153(31)
      acd153(56)=-acd153(17)*acd153(30)
      acd153(57)=acd153(15)*acd153(29)
      acd153(58)=acd153(11)*acd153(27)
      acd153(59)=acd153(25)*acd153(7)
      acd153(60)=acd153(24)*acd153(5)
      acd153(61)=acd153(28)*acd153(13)
      acd153(62)=acd153(26)*acd153(9)
      acd153(54)=acd153(62)+acd153(61)+acd153(60)+acd153(59)+acd153(58)+acd153(&
      &57)+acd153(56)+acd153(54)+acd153(55)
      acd153(54)=acd153(22)*acd153(54)
      acd153(55)=acd153(21)*acd153(20)
      acd153(56)=acd153(19)*acd153(18)
      acd153(57)=-acd153(17)*acd153(16)
      acd153(58)=acd153(15)*acd153(14)
      acd153(59)=acd153(11)*acd153(10)
      acd153(60)=acd153(6)*acd153(7)
      acd153(61)=acd153(4)*acd153(5)
      acd153(62)=acd153(12)*acd153(13)
      acd153(63)=acd153(8)*acd153(9)
      acd153(55)=acd153(63)+acd153(62)+acd153(61)+acd153(60)+acd153(59)+acd153(&
      &58)+acd153(57)+acd153(55)+acd153(56)
      acd153(55)=acd153(1)*acd153(55)
      acd153(53)=acd153(55)+acd153(53)+acd153(54)
      acd153(54)=acd153(51)*acd153(48)
      acd153(55)=acd153(47)*acd153(6)
      acd153(56)=acd153(45)*acd153(4)
      acd153(54)=acd153(56)+acd153(54)+acd153(55)
      acd153(55)=acd153(28)*acd153(54)
      acd153(56)=acd153(49)*acd153(48)
      acd153(57)=acd153(46)*acd153(6)
      acd153(58)=acd153(44)*acd153(4)
      acd153(56)=acd153(56)+acd153(57)+acd153(58)
      acd153(57)=acd153(26)*acd153(56)
      acd153(58)=acd153(51)*acd153(50)
      acd153(59)=acd153(47)*acd153(25)
      acd153(60)=acd153(45)*acd153(24)
      acd153(58)=acd153(60)+acd153(58)+acd153(59)
      acd153(59)=acd153(12)*acd153(58)
      acd153(60)=acd153(49)*acd153(50)
      acd153(61)=acd153(46)*acd153(25)
      acd153(62)=acd153(44)*acd153(24)
      acd153(60)=acd153(60)+acd153(61)+acd153(62)
      acd153(61)=acd153(8)*acd153(60)
      acd153(62)=2.0_ki*acd153(3)
      acd153(63)=acd153(33)*acd153(62)
      acd153(55)=acd153(63)+acd153(61)+acd153(59)+acd153(55)+acd153(57)
      acd153(55)=acd153(34)*acd153(55)
      acd153(54)=acd153(39)*acd153(54)
      acd153(56)=acd153(37)*acd153(56)
      acd153(57)=acd153(51)*acd153(52)
      acd153(59)=acd153(47)*acd153(36)
      acd153(61)=acd153(45)*acd153(35)
      acd153(57)=acd153(61)+acd153(57)+acd153(59)
      acd153(59)=acd153(12)*acd153(57)
      acd153(61)=acd153(49)*acd153(52)
      acd153(63)=acd153(46)*acd153(36)
      acd153(64)=acd153(44)*acd153(35)
      acd153(61)=acd153(61)+acd153(63)+acd153(64)
      acd153(63)=acd153(8)*acd153(61)
      acd153(64)=acd153(22)*acd153(62)
      acd153(54)=acd153(64)+acd153(63)+acd153(59)+acd153(54)+acd153(56)
      acd153(54)=acd153(23)*acd153(54)
      acd153(56)=acd153(39)*acd153(58)
      acd153(58)=acd153(37)*acd153(60)
      acd153(57)=acd153(28)*acd153(57)
      acd153(59)=acd153(26)*acd153(61)
      acd153(60)=acd153(1)*acd153(62)
      acd153(56)=acd153(60)+acd153(59)+acd153(57)+acd153(56)+acd153(58)
      acd153(56)=acd153(2)*acd153(56)
      brack=2.0_ki*acd153(53)+acd153(54)+acd153(55)+acd153(56)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd153h0
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
      qshift = -k6
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
!---#[ subroutine reconstruct_d153:
   subroutine     reconstruct_d153(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_153:
      coeffs%coeffs_153%c0 = derivative(czip)
      coeffs%coeffs_153%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_153%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_153%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_153%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_153%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_153%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_153%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_153%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_153%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_153%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_153%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_153%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_153%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_153%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_153%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_153%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_153%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_153%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_153%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_153%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_153%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_153%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_153%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_153%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_153%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_153%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_153%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_153%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_153%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_153%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_153%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_153%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_153%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_153%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_153:
   end subroutine reconstruct_d153
!---#] subroutine reconstruct_d153:
end module     p1_dbarc_epnebbbarg_d153h0l1d
