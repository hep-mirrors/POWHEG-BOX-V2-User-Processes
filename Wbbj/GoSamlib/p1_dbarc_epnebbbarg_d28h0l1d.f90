module     p1_dbarc_epnebbbarg_d28h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d28h0l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d28
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd28h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(123) :: acd28
      complex(ki) :: brack
      acd28(1)=dotproduct(k1,qshift)
      acd28(2)=dotproduct(qshift,spval5k2)
      acd28(3)=abb28(38)
      acd28(4)=dotproduct(qshift,spval6k2)
      acd28(5)=abb28(84)
      acd28(6)=dotproduct(k2,qshift)
      acd28(7)=abb28(36)
      acd28(8)=abb28(94)
      acd28(9)=abb28(28)
      acd28(10)=dotproduct(l5,qshift)
      acd28(11)=abb28(26)
      acd28(12)=abb28(46)
      acd28(13)=abb28(19)
      acd28(14)=dotproduct(l6,qshift)
      acd28(15)=abb28(24)
      acd28(16)=dotproduct(k7,qshift)
      acd28(17)=abb28(32)
      acd28(18)=abb28(60)
      acd28(19)=dotproduct(e7,qshift)
      acd28(20)=abb28(20)
      acd28(21)=abb28(34)
      acd28(22)=dotproduct(qshift,qshift)
      acd28(23)=abb28(31)
      acd28(24)=abb28(48)
      acd28(25)=abb28(45)
      acd28(26)=dotproduct(qshift,spvak1k2)
      acd28(27)=abb28(18)
      acd28(28)=dotproduct(qshift,spvak1k3)
      acd28(29)=abb28(61)
      acd28(30)=dotproduct(qshift,spvak1l5)
      acd28(31)=abb28(81)
      acd28(32)=dotproduct(qshift,spvak1l6)
      acd28(33)=abb28(92)
      acd28(34)=dotproduct(qshift,spvak1k7)
      acd28(35)=abb28(51)
      acd28(36)=dotproduct(qshift,spvak4k2)
      acd28(37)=abb28(70)
      acd28(38)=dotproduct(qshift,spvak4k7)
      acd28(39)=abb28(30)
      acd28(40)=dotproduct(qshift,spvak7k2)
      acd28(41)=abb28(44)
      acd28(42)=dotproduct(qshift,spvak7k3)
      acd28(43)=abb28(43)
      acd28(44)=abb28(17)
      acd28(45)=abb28(211)
      acd28(46)=abb28(21)
      acd28(47)=abb28(82)
      acd28(48)=abb28(77)
      acd28(49)=abb28(85)
      acd28(50)=abb28(53)
      acd28(51)=abb28(71)
      acd28(52)=abb28(58)
      acd28(53)=abb28(243)
      acd28(54)=abb28(201)
      acd28(55)=abb28(23)
      acd28(56)=abb28(16)
      acd28(57)=abb28(72)
      acd28(58)=abb28(79)
      acd28(59)=abb28(65)
      acd28(60)=dotproduct(qshift,spvak4l5)
      acd28(61)=abb28(67)
      acd28(62)=dotproduct(qshift,spvak4l6)
      acd28(63)=abb28(40)
      acd28(64)=dotproduct(qshift,spval5k1)
      acd28(65)=abb28(50)
      acd28(66)=abb28(123)
      acd28(67)=dotproduct(qshift,spval5k3)
      acd28(68)=abb28(57)
      acd28(69)=dotproduct(qshift,spval5l6)
      acd28(70)=abb28(66)
      acd28(71)=dotproduct(qshift,spval5k7)
      acd28(72)=abb28(39)
      acd28(73)=dotproduct(qshift,spval6k1)
      acd28(74)=abb28(176)
      acd28(75)=dotproduct(qshift,spval6k3)
      acd28(76)=abb28(159)
      acd28(77)=dotproduct(qshift,spval6l5)
      acd28(78)=abb28(165)
      acd28(79)=dotproduct(qshift,spval6k7)
      acd28(80)=abb28(151)
      acd28(81)=dotproduct(qshift,spvak7l5)
      acd28(82)=abb28(55)
      acd28(83)=dotproduct(qshift,spvak7l6)
      acd28(84)=abb28(98)
      acd28(85)=dotproduct(qshift,spvae7k2)
      acd28(86)=abb28(35)
      acd28(87)=dotproduct(qshift,spval5e7)
      acd28(88)=abb28(52)
      acd28(89)=dotproduct(qshift,spvae7l5)
      acd28(90)=abb28(64)
      acd28(91)=dotproduct(qshift,spval6e7)
      acd28(92)=abb28(47)
      acd28(93)=dotproduct(qshift,spvae7l6)
      acd28(94)=abb28(90)
      acd28(95)=abb28(78)
      acd28(96)=acd28(10)+acd28(14)
      acd28(97)=-acd28(11)*acd28(96)
      acd28(98)=acd28(42)*acd28(43)
      acd28(99)=acd28(38)*acd28(39)
      acd28(100)=acd28(34)*acd28(35)
      acd28(101)=acd28(28)*acd28(29)
      acd28(102)=acd28(19)*acd28(20)
      acd28(103)=acd28(16)*acd28(17)
      acd28(104)=acd28(1)*acd28(3)
      acd28(105)=acd28(40)*acd28(41)
      acd28(106)=acd28(36)*acd28(37)
      acd28(107)=acd28(32)*acd28(33)
      acd28(108)=acd28(30)*acd28(31)
      acd28(109)=acd28(26)*acd28(27)
      acd28(110)=acd28(6)*acd28(7)
      acd28(111)=acd28(4)*acd28(25)
      acd28(112)=acd28(2)*acd28(24)
      acd28(97)=acd28(112)+acd28(111)+acd28(110)+acd28(109)+acd28(108)+acd28(10&
      &7)+acd28(106)+acd28(105)+acd28(104)+acd28(103)+acd28(102)+acd28(101)+acd&
      &28(100)+acd28(99)-acd28(44)+acd28(98)+acd28(97)
      acd28(97)=acd28(2)*acd28(97)
      acd28(96)=-acd28(12)*acd28(96)
      acd28(98)=acd28(42)*acd28(54)
      acd28(99)=acd28(38)*acd28(52)
      acd28(100)=acd28(34)*acd28(50)
      acd28(101)=acd28(28)*acd28(47)
      acd28(102)=acd28(19)*acd28(21)
      acd28(103)=acd28(16)*acd28(18)
      acd28(104)=acd28(1)*acd28(5)
      acd28(105)=acd28(40)*acd28(53)
      acd28(106)=acd28(36)*acd28(51)
      acd28(107)=acd28(32)*acd28(49)
      acd28(108)=acd28(30)*acd28(48)
      acd28(109)=acd28(26)*acd28(46)
      acd28(110)=acd28(6)*acd28(8)
      acd28(111)=acd28(4)*acd28(45)
      acd28(96)=acd28(111)+acd28(110)+acd28(109)+acd28(108)+acd28(107)+acd28(10&
      &6)+acd28(105)+acd28(104)+acd28(103)+acd28(102)+acd28(101)+acd28(100)+acd&
      &28(99)-acd28(55)+acd28(98)+acd28(96)
      acd28(96)=acd28(4)*acd28(96)
      acd28(98)=-acd28(93)*acd28(94)
      acd28(99)=-acd28(91)*acd28(92)
      acd28(100)=-acd28(89)*acd28(90)
      acd28(101)=-acd28(87)*acd28(88)
      acd28(102)=-acd28(85)*acd28(86)
      acd28(103)=-acd28(83)*acd28(84)
      acd28(104)=-acd28(81)*acd28(82)
      acd28(105)=-acd28(79)*acd28(80)
      acd28(106)=-acd28(77)*acd28(78)
      acd28(107)=-acd28(75)*acd28(76)
      acd28(108)=-acd28(73)*acd28(74)
      acd28(109)=-acd28(71)*acd28(72)
      acd28(110)=-acd28(69)*acd28(70)
      acd28(111)=-acd28(67)*acd28(68)
      acd28(112)=-acd28(64)*acd28(65)
      acd28(113)=-acd28(62)*acd28(63)
      acd28(114)=-acd28(60)*acd28(61)
      acd28(115)=acd28(22)*acd28(23)
      acd28(116)=-acd28(40)*acd28(66)
      acd28(117)=-acd28(36)*acd28(59)
      acd28(118)=-acd28(32)*acd28(58)
      acd28(119)=-acd28(30)*acd28(57)
      acd28(120)=-acd28(26)*acd28(56)
      acd28(121)=-acd28(14)*acd28(15)
      acd28(122)=-acd28(10)*acd28(13)
      acd28(123)=-acd28(6)*acd28(9)
      brack=acd28(95)+acd28(96)+acd28(97)+acd28(98)+acd28(99)+acd28(100)+acd28(&
      &101)+acd28(102)+acd28(103)+acd28(104)+acd28(105)+acd28(106)+acd28(107)+a&
      &cd28(108)+acd28(109)+acd28(110)+acd28(111)+acd28(112)+acd28(113)+acd28(1&
      &14)+acd28(115)+acd28(116)+acd28(117)+acd28(118)+acd28(119)+acd28(120)+ac&
      &d28(121)+acd28(122)+acd28(123)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd28h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(141) :: acd28
      complex(ki) :: brack
      acd28(1)=k1(iv1)
      acd28(2)=dotproduct(qshift,spval5k2)
      acd28(3)=abb28(38)
      acd28(4)=dotproduct(qshift,spval6k2)
      acd28(5)=abb28(84)
      acd28(6)=k2(iv1)
      acd28(7)=abb28(36)
      acd28(8)=abb28(94)
      acd28(9)=abb28(28)
      acd28(10)=l5(iv1)
      acd28(11)=abb28(26)
      acd28(12)=abb28(46)
      acd28(13)=abb28(19)
      acd28(14)=l6(iv1)
      acd28(15)=abb28(24)
      acd28(16)=k7(iv1)
      acd28(17)=abb28(32)
      acd28(18)=abb28(60)
      acd28(19)=e7(iv1)
      acd28(20)=abb28(20)
      acd28(21)=abb28(34)
      acd28(22)=qshift(iv1)
      acd28(23)=abb28(31)
      acd28(24)=spval5k2(iv1)
      acd28(25)=dotproduct(k1,qshift)
      acd28(26)=dotproduct(k2,qshift)
      acd28(27)=dotproduct(l5,qshift)
      acd28(28)=dotproduct(l6,qshift)
      acd28(29)=dotproduct(k7,qshift)
      acd28(30)=dotproduct(e7,qshift)
      acd28(31)=abb28(48)
      acd28(32)=abb28(45)
      acd28(33)=dotproduct(qshift,spvak1k2)
      acd28(34)=abb28(18)
      acd28(35)=dotproduct(qshift,spvak1k3)
      acd28(36)=abb28(61)
      acd28(37)=dotproduct(qshift,spvak1l5)
      acd28(38)=abb28(81)
      acd28(39)=dotproduct(qshift,spvak1l6)
      acd28(40)=abb28(92)
      acd28(41)=dotproduct(qshift,spvak1k7)
      acd28(42)=abb28(51)
      acd28(43)=dotproduct(qshift,spvak4k2)
      acd28(44)=abb28(70)
      acd28(45)=dotproduct(qshift,spvak4k7)
      acd28(46)=abb28(30)
      acd28(47)=dotproduct(qshift,spvak7k2)
      acd28(48)=abb28(44)
      acd28(49)=dotproduct(qshift,spvak7k3)
      acd28(50)=abb28(43)
      acd28(51)=abb28(17)
      acd28(52)=spval6k2(iv1)
      acd28(53)=abb28(211)
      acd28(54)=abb28(21)
      acd28(55)=abb28(82)
      acd28(56)=abb28(77)
      acd28(57)=abb28(85)
      acd28(58)=abb28(53)
      acd28(59)=abb28(71)
      acd28(60)=abb28(58)
      acd28(61)=abb28(243)
      acd28(62)=abb28(201)
      acd28(63)=abb28(23)
      acd28(64)=spvak1k2(iv1)
      acd28(65)=abb28(16)
      acd28(66)=spvak1k3(iv1)
      acd28(67)=spvak1l5(iv1)
      acd28(68)=abb28(72)
      acd28(69)=spvak1l6(iv1)
      acd28(70)=abb28(79)
      acd28(71)=spvak1k7(iv1)
      acd28(72)=spvak4k2(iv1)
      acd28(73)=abb28(65)
      acd28(74)=spvak4l5(iv1)
      acd28(75)=abb28(67)
      acd28(76)=spvak4l6(iv1)
      acd28(77)=abb28(40)
      acd28(78)=spvak4k7(iv1)
      acd28(79)=spval5k1(iv1)
      acd28(80)=abb28(50)
      acd28(81)=spvak7k2(iv1)
      acd28(82)=abb28(123)
      acd28(83)=spvak7k3(iv1)
      acd28(84)=spval5k3(iv1)
      acd28(85)=abb28(57)
      acd28(86)=spval5l6(iv1)
      acd28(87)=abb28(66)
      acd28(88)=spval5k7(iv1)
      acd28(89)=abb28(39)
      acd28(90)=spval6k1(iv1)
      acd28(91)=abb28(176)
      acd28(92)=spval6k3(iv1)
      acd28(93)=abb28(159)
      acd28(94)=spval6l5(iv1)
      acd28(95)=abb28(165)
      acd28(96)=spval6k7(iv1)
      acd28(97)=abb28(151)
      acd28(98)=spvak7l5(iv1)
      acd28(99)=abb28(55)
      acd28(100)=spvak7l6(iv1)
      acd28(101)=abb28(98)
      acd28(102)=spvae7k2(iv1)
      acd28(103)=abb28(35)
      acd28(104)=spval5e7(iv1)
      acd28(105)=abb28(52)
      acd28(106)=spvae7l5(iv1)
      acd28(107)=abb28(64)
      acd28(108)=spval6e7(iv1)
      acd28(109)=abb28(47)
      acd28(110)=spvae7l6(iv1)
      acd28(111)=abb28(90)
      acd28(112)=acd28(49)*acd28(62)
      acd28(113)=acd28(47)*acd28(61)
      acd28(114)=acd28(45)*acd28(60)
      acd28(115)=acd28(43)*acd28(59)
      acd28(116)=acd28(41)*acd28(58)
      acd28(117)=acd28(39)*acd28(57)
      acd28(118)=acd28(37)*acd28(56)
      acd28(119)=acd28(35)*acd28(55)
      acd28(120)=acd28(33)*acd28(54)
      acd28(121)=acd28(21)*acd28(30)
      acd28(122)=acd28(18)*acd28(29)
      acd28(123)=acd28(8)*acd28(26)
      acd28(124)=acd28(5)*acd28(25)
      acd28(125)=acd28(27)+acd28(28)
      acd28(126)=-acd28(12)*acd28(125)
      acd28(127)=acd28(4)*acd28(53)
      acd28(128)=acd28(2)*acd28(32)
      acd28(112)=acd28(128)+2.0_ki*acd28(127)+acd28(126)+acd28(124)+acd28(123)+&
      &acd28(122)+acd28(121)+acd28(120)+acd28(119)+acd28(118)+acd28(117)+acd28(&
      &116)+acd28(115)+acd28(114)+acd28(113)-acd28(63)+acd28(112)
      acd28(112)=acd28(52)*acd28(112)
      acd28(113)=acd28(49)*acd28(50)
      acd28(114)=acd28(47)*acd28(48)
      acd28(115)=acd28(45)*acd28(46)
      acd28(116)=acd28(43)*acd28(44)
      acd28(117)=acd28(41)*acd28(42)
      acd28(118)=acd28(39)*acd28(40)
      acd28(119)=acd28(37)*acd28(38)
      acd28(120)=acd28(35)*acd28(36)
      acd28(121)=acd28(33)*acd28(34)
      acd28(122)=acd28(20)*acd28(30)
      acd28(123)=acd28(17)*acd28(29)
      acd28(124)=acd28(7)*acd28(26)
      acd28(126)=acd28(3)*acd28(25)
      acd28(125)=-acd28(11)*acd28(125)
      acd28(127)=acd28(4)*acd28(32)
      acd28(128)=acd28(2)*acd28(31)
      acd28(113)=2.0_ki*acd28(128)+acd28(127)+acd28(125)+acd28(126)+acd28(124)+&
      &acd28(123)+acd28(122)+acd28(121)+acd28(120)+acd28(119)+acd28(118)+acd28(&
      &117)+acd28(116)+acd28(115)+acd28(114)-acd28(51)+acd28(113)
      acd28(113)=acd28(24)*acd28(113)
      acd28(114)=acd28(62)*acd28(83)
      acd28(115)=acd28(60)*acd28(78)
      acd28(116)=acd28(58)*acd28(71)
      acd28(117)=acd28(55)*acd28(66)
      acd28(118)=acd28(19)*acd28(21)
      acd28(119)=acd28(16)*acd28(18)
      acd28(120)=acd28(1)*acd28(5)
      acd28(121)=acd28(81)*acd28(61)
      acd28(122)=acd28(72)*acd28(59)
      acd28(123)=acd28(69)*acd28(57)
      acd28(124)=acd28(67)*acd28(56)
      acd28(125)=acd28(64)*acd28(54)
      acd28(126)=acd28(6)*acd28(8)
      acd28(127)=acd28(10)+acd28(14)
      acd28(128)=-acd28(12)*acd28(127)
      acd28(114)=acd28(128)+acd28(126)+acd28(125)+acd28(124)+acd28(123)+acd28(1&
      &22)+acd28(121)+acd28(120)+acd28(119)+acd28(118)+acd28(117)+acd28(116)+ac&
      &d28(114)+acd28(115)
      acd28(114)=acd28(4)*acd28(114)
      acd28(115)=acd28(50)*acd28(83)
      acd28(116)=acd28(46)*acd28(78)
      acd28(117)=acd28(42)*acd28(71)
      acd28(118)=acd28(36)*acd28(66)
      acd28(119)=acd28(19)*acd28(20)
      acd28(120)=acd28(16)*acd28(17)
      acd28(121)=acd28(1)*acd28(3)
      acd28(122)=acd28(81)*acd28(48)
      acd28(123)=acd28(72)*acd28(44)
      acd28(124)=acd28(69)*acd28(40)
      acd28(125)=acd28(67)*acd28(38)
      acd28(126)=acd28(64)*acd28(34)
      acd28(128)=acd28(6)*acd28(7)
      acd28(127)=-acd28(11)*acd28(127)
      acd28(115)=acd28(127)+acd28(128)+acd28(126)+acd28(125)+acd28(124)+acd28(1&
      &23)+acd28(122)+acd28(121)+acd28(120)+acd28(119)+acd28(118)+acd28(117)+ac&
      &d28(115)+acd28(116)
      acd28(115)=acd28(2)*acd28(115)
      acd28(116)=-acd28(110)*acd28(111)
      acd28(117)=-acd28(108)*acd28(109)
      acd28(118)=-acd28(106)*acd28(107)
      acd28(119)=-acd28(104)*acd28(105)
      acd28(120)=-acd28(102)*acd28(103)
      acd28(121)=-acd28(100)*acd28(101)
      acd28(122)=-acd28(98)*acd28(99)
      acd28(123)=-acd28(96)*acd28(97)
      acd28(124)=-acd28(94)*acd28(95)
      acd28(125)=-acd28(92)*acd28(93)
      acd28(126)=-acd28(90)*acd28(91)
      acd28(127)=-acd28(88)*acd28(89)
      acd28(128)=-acd28(86)*acd28(87)
      acd28(129)=-acd28(84)*acd28(85)
      acd28(130)=-acd28(79)*acd28(80)
      acd28(131)=-acd28(76)*acd28(77)
      acd28(132)=-acd28(74)*acd28(75)
      acd28(133)=acd28(22)*acd28(23)
      acd28(134)=-acd28(81)*acd28(82)
      acd28(135)=-acd28(72)*acd28(73)
      acd28(136)=-acd28(69)*acd28(70)
      acd28(137)=-acd28(67)*acd28(68)
      acd28(138)=-acd28(64)*acd28(65)
      acd28(139)=-acd28(14)*acd28(15)
      acd28(140)=-acd28(10)*acd28(13)
      acd28(141)=-acd28(6)*acd28(9)
      brack=acd28(112)+acd28(113)+acd28(114)+acd28(115)+acd28(116)+acd28(117)+a&
      &cd28(118)+acd28(119)+acd28(120)+acd28(121)+acd28(122)+acd28(123)+acd28(1&
      &24)+acd28(125)+acd28(126)+acd28(127)+acd28(128)+acd28(129)+acd28(130)+ac&
      &d28(131)+acd28(132)+2.0_ki*acd28(133)+acd28(134)+acd28(135)+acd28(136)+a&
      &cd28(137)+acd28(138)+acd28(139)+acd28(140)+acd28(141)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd28h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(84) :: acd28
      complex(ki) :: brack
      acd28(1)=d(iv1,iv2)
      acd28(2)=abb28(31)
      acd28(3)=k1(iv1)
      acd28(4)=spval5k2(iv2)
      acd28(5)=abb28(38)
      acd28(6)=spval6k2(iv2)
      acd28(7)=abb28(84)
      acd28(8)=k1(iv2)
      acd28(9)=spval5k2(iv1)
      acd28(10)=spval6k2(iv1)
      acd28(11)=k2(iv1)
      acd28(12)=abb28(36)
      acd28(13)=abb28(94)
      acd28(14)=k2(iv2)
      acd28(15)=l5(iv1)
      acd28(16)=abb28(26)
      acd28(17)=abb28(46)
      acd28(18)=l5(iv2)
      acd28(19)=l6(iv1)
      acd28(20)=l6(iv2)
      acd28(21)=k7(iv1)
      acd28(22)=abb28(32)
      acd28(23)=abb28(60)
      acd28(24)=k7(iv2)
      acd28(25)=e7(iv1)
      acd28(26)=abb28(20)
      acd28(27)=abb28(34)
      acd28(28)=e7(iv2)
      acd28(29)=abb28(48)
      acd28(30)=abb28(45)
      acd28(31)=spvak1k2(iv2)
      acd28(32)=abb28(18)
      acd28(33)=spvak1k3(iv2)
      acd28(34)=abb28(61)
      acd28(35)=spvak1l5(iv2)
      acd28(36)=abb28(81)
      acd28(37)=spvak1l6(iv2)
      acd28(38)=abb28(92)
      acd28(39)=spvak1k7(iv2)
      acd28(40)=abb28(51)
      acd28(41)=spvak4k2(iv2)
      acd28(42)=abb28(70)
      acd28(43)=spvak4k7(iv2)
      acd28(44)=abb28(30)
      acd28(45)=spvak7k2(iv2)
      acd28(46)=abb28(44)
      acd28(47)=spvak7k3(iv2)
      acd28(48)=abb28(43)
      acd28(49)=spvak1k2(iv1)
      acd28(50)=spvak1k3(iv1)
      acd28(51)=spvak1l5(iv1)
      acd28(52)=spvak1l6(iv1)
      acd28(53)=spvak1k7(iv1)
      acd28(54)=spvak4k2(iv1)
      acd28(55)=spvak4k7(iv1)
      acd28(56)=spvak7k2(iv1)
      acd28(57)=spvak7k3(iv1)
      acd28(58)=abb28(211)
      acd28(59)=abb28(21)
      acd28(60)=abb28(82)
      acd28(61)=abb28(77)
      acd28(62)=abb28(85)
      acd28(63)=abb28(53)
      acd28(64)=abb28(71)
      acd28(65)=abb28(58)
      acd28(66)=abb28(243)
      acd28(67)=abb28(201)
      acd28(68)=acd28(57)*acd28(67)
      acd28(69)=acd28(56)*acd28(66)
      acd28(70)=acd28(55)*acd28(65)
      acd28(71)=acd28(54)*acd28(64)
      acd28(72)=acd28(53)*acd28(63)
      acd28(73)=acd28(52)*acd28(62)
      acd28(74)=acd28(51)*acd28(61)
      acd28(75)=acd28(50)*acd28(60)
      acd28(76)=acd28(49)*acd28(59)
      acd28(77)=acd28(25)*acd28(27)
      acd28(78)=acd28(21)*acd28(23)
      acd28(79)=acd28(11)*acd28(13)
      acd28(80)=acd28(3)*acd28(7)
      acd28(81)=acd28(15)+acd28(19)
      acd28(82)=-acd28(17)*acd28(81)
      acd28(83)=acd28(10)*acd28(58)
      acd28(84)=acd28(9)*acd28(30)
      acd28(68)=acd28(84)+2.0_ki*acd28(83)+acd28(82)+acd28(80)+acd28(79)+acd28(&
      &78)+acd28(77)+acd28(76)+acd28(75)+acd28(74)+acd28(73)+acd28(72)+acd28(71&
      &)+acd28(70)+acd28(68)+acd28(69)
      acd28(68)=acd28(6)*acd28(68)
      acd28(69)=acd28(48)*acd28(57)
      acd28(70)=acd28(46)*acd28(56)
      acd28(71)=acd28(44)*acd28(55)
      acd28(72)=acd28(42)*acd28(54)
      acd28(73)=acd28(40)*acd28(53)
      acd28(74)=acd28(38)*acd28(52)
      acd28(75)=acd28(36)*acd28(51)
      acd28(76)=acd28(34)*acd28(50)
      acd28(77)=acd28(32)*acd28(49)
      acd28(78)=acd28(25)*acd28(26)
      acd28(79)=acd28(21)*acd28(22)
      acd28(80)=acd28(11)*acd28(12)
      acd28(82)=acd28(3)*acd28(5)
      acd28(81)=-acd28(16)*acd28(81)
      acd28(83)=acd28(10)*acd28(30)
      acd28(84)=acd28(9)*acd28(29)
      acd28(69)=2.0_ki*acd28(84)+acd28(83)+acd28(81)+acd28(82)+acd28(80)+acd28(&
      &79)+acd28(78)+acd28(77)+acd28(76)+acd28(75)+acd28(74)+acd28(73)+acd28(72&
      &)+acd28(71)+acd28(69)+acd28(70)
      acd28(69)=acd28(4)*acd28(69)
      acd28(70)=acd28(47)*acd28(67)
      acd28(71)=acd28(45)*acd28(66)
      acd28(72)=acd28(43)*acd28(65)
      acd28(73)=acd28(41)*acd28(64)
      acd28(74)=acd28(39)*acd28(63)
      acd28(75)=acd28(37)*acd28(62)
      acd28(76)=acd28(35)*acd28(61)
      acd28(77)=acd28(33)*acd28(60)
      acd28(78)=acd28(31)*acd28(59)
      acd28(79)=acd28(27)*acd28(28)
      acd28(80)=acd28(23)*acd28(24)
      acd28(81)=acd28(13)*acd28(14)
      acd28(82)=acd28(7)*acd28(8)
      acd28(83)=acd28(18)+acd28(20)
      acd28(84)=-acd28(17)*acd28(83)
      acd28(70)=acd28(84)+acd28(82)+acd28(81)+acd28(80)+acd28(79)+acd28(78)+acd&
      &28(77)+acd28(76)+acd28(75)+acd28(74)+acd28(73)+acd28(72)+acd28(70)+acd28&
      &(71)
      acd28(70)=acd28(10)*acd28(70)
      acd28(71)=acd28(47)*acd28(48)
      acd28(72)=acd28(45)*acd28(46)
      acd28(73)=acd28(43)*acd28(44)
      acd28(74)=acd28(41)*acd28(42)
      acd28(75)=acd28(39)*acd28(40)
      acd28(76)=acd28(37)*acd28(38)
      acd28(77)=acd28(35)*acd28(36)
      acd28(78)=acd28(33)*acd28(34)
      acd28(79)=acd28(31)*acd28(32)
      acd28(80)=acd28(26)*acd28(28)
      acd28(81)=acd28(22)*acd28(24)
      acd28(82)=acd28(12)*acd28(14)
      acd28(84)=acd28(5)*acd28(8)
      acd28(83)=-acd28(16)*acd28(83)
      acd28(71)=acd28(83)+acd28(84)+acd28(82)+acd28(81)+acd28(80)+acd28(79)+acd&
      &28(78)+acd28(77)+acd28(76)+acd28(75)+acd28(74)+acd28(73)+acd28(71)+acd28&
      &(72)
      acd28(71)=acd28(9)*acd28(71)
      acd28(72)=acd28(1)*acd28(2)
      brack=acd28(68)+acd28(69)+acd28(70)+acd28(71)+2.0_ki*acd28(72)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd28h0
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
      qshift = k6
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
!---#[ subroutine reconstruct_d28:
   subroutine     reconstruct_d28(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_28:
      coeffs%coeffs_28%c0 = derivative(czip)
      coeffs%coeffs_28%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_28%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_28%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_28%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_28%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_28%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_28%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_28%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_28%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_28%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_28%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_28%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_28%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_28%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_28:
   end subroutine reconstruct_d28
!---#] subroutine reconstruct_d28:
end module     p1_dbarc_epnebbbarg_d28h0l1d
