module     p1_dbarc_epnebbbarg_d92h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d92h2l1d.f90
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
   public :: derivative , reconstruct_d92
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd92h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(123) :: acd92
      complex(ki) :: brack
      acd92(1)=dotproduct(k1,qshift)
      acd92(2)=dotproduct(k2,qshift)
      acd92(3)=abb92(115)
      acd92(4)=dotproduct(qshift,spvak4k2)
      acd92(5)=abb92(52)
      acd92(6)=dotproduct(qshift,spvak4l6)
      acd92(7)=abb92(162)
      acd92(8)=dotproduct(qshift,spvae7k2)
      acd92(9)=abb92(30)
      acd92(10)=dotproduct(qshift,spvae7l6)
      acd92(11)=abb92(23)
      acd92(12)=abb92(94)
      acd92(13)=abb92(81)
      acd92(14)=dotproduct(k3,qshift)
      acd92(15)=abb92(125)
      acd92(16)=dotproduct(k4,qshift)
      acd92(17)=dotproduct(l5,qshift)
      acd92(18)=dotproduct(l6,qshift)
      acd92(19)=abb92(112)
      acd92(20)=dotproduct(k7,qshift)
      acd92(21)=abb92(104)
      acd92(22)=dotproduct(e7,qshift)
      acd92(23)=abb92(31)
      acd92(24)=abb92(54)
      acd92(25)=abb92(164)
      acd92(26)=abb92(25)
      acd92(27)=abb92(34)
      acd92(28)=dotproduct(qshift,spvak1k2)
      acd92(29)=abb92(43)
      acd92(30)=dotproduct(qshift,spvak1l6)
      acd92(31)=abb92(20)
      acd92(32)=dotproduct(qshift,spvak2l6)
      acd92(33)=abb92(24)
      acd92(34)=dotproduct(qshift,spvak4k3)
      acd92(35)=abb92(56)
      acd92(36)=dotproduct(qshift,spval5k2)
      acd92(37)=abb92(156)
      acd92(38)=dotproduct(qshift,spval5l6)
      acd92(39)=abb92(108)
      acd92(40)=dotproduct(qshift,spval6k2)
      acd92(41)=abb92(102)
      acd92(42)=abb92(26)
      acd92(43)=abb92(219)
      acd92(44)=abb92(42)
      acd92(45)=abb92(39)
      acd92(46)=abb92(107)
      acd92(47)=abb92(132)
      acd92(48)=abb92(124)
      acd92(49)=abb92(97)
      acd92(50)=abb92(214)
      acd92(51)=abb92(206)
      acd92(52)=abb92(212)
      acd92(53)=abb92(178)
      acd92(54)=abb92(19)
      acd92(55)=abb92(59)
      acd92(56)=abb92(45)
      acd92(57)=abb92(40)
      acd92(58)=abb92(21)
      acd92(59)=abb92(95)
      acd92(60)=abb92(87)
      acd92(61)=abb92(109)
      acd92(62)=abb92(79)
      acd92(63)=abb92(189)
      acd92(64)=abb92(27)
      acd92(65)=abb92(16)
      acd92(66)=abb92(67)
      acd92(67)=abb92(12)
      acd92(68)=abb92(71)
      acd92(69)=abb92(76)
      acd92(70)=abb92(126)
      acd92(71)=dotproduct(qshift,qshift)
      acd92(72)=abb92(11)
      acd92(73)=abb92(44)
      acd92(74)=abb92(13)
      acd92(75)=abb92(74)
      acd92(76)=abb92(73)
      acd92(77)=abb92(72)
      acd92(78)=abb92(60)
      acd92(79)=abb92(18)
      acd92(80)=abb92(37)
      acd92(81)=abb92(36)
      acd92(82)=abb92(38)
      acd92(83)=abb92(77)
      acd92(84)=abb92(128)
      acd92(85)=abb92(70)
      acd92(86)=abb92(48)
      acd92(87)=abb92(41)
      acd92(88)=abb92(29)
      acd92(89)=abb92(32)
      acd92(90)=abb92(14)
      acd92(91)=abb92(47)
      acd92(92)=abb92(53)
      acd92(93)=abb92(96)
      acd92(94)=abb92(88)
      acd92(95)=abb92(64)
      acd92(96)=abb92(33)
      acd92(97)=abb92(17)
      acd92(98)=dotproduct(qshift,spvak1l5)
      acd92(99)=abb92(22)
      acd92(100)=dotproduct(qshift,spvak2k1)
      acd92(101)=abb92(35)
      acd92(102)=dotproduct(qshift,spvak2l5)
      acd92(103)=abb92(28)
      acd92(104)=abb92(15)
      acd92(105)=acd92(14)+acd92(16)
      acd92(106)=acd92(15)*acd92(105)
      acd92(107)=acd92(1)-acd92(17)
      acd92(108)=acd92(3)*acd92(107)
      acd92(109)=acd92(10)*acd92(27)
      acd92(110)=acd92(6)*acd92(25)
      acd92(111)=acd92(40)*acd92(41)
      acd92(112)=acd92(36)*acd92(37)
      acd92(113)=acd92(38)*acd92(39)
      acd92(114)=acd92(34)*acd92(35)
      acd92(115)=acd92(32)*acd92(33)
      acd92(116)=acd92(30)*acd92(31)
      acd92(117)=acd92(28)*acd92(29)
      acd92(118)=acd92(22)*acd92(23)
      acd92(119)=acd92(20)*acd92(21)
      acd92(120)=acd92(18)*acd92(19)
      acd92(121)=acd92(8)*acd92(26)
      acd92(122)=acd92(4)*acd92(24)
      acd92(123)=acd92(2)*acd92(13)
      acd92(106)=acd92(123)+acd92(122)+acd92(121)+acd92(120)+acd92(119)+acd92(1&
      &18)+acd92(117)+acd92(116)+acd92(115)+acd92(114)+acd92(113)+acd92(112)+ac&
      &d92(111)+acd92(110)-acd92(42)+acd92(109)+acd92(108)+acd92(106)
      acd92(106)=acd92(2)*acd92(106)
      acd92(108)=acd92(9)*acd92(107)
      acd92(109)=acd92(40)*acd92(85)
      acd92(110)=acd92(36)*acd92(83)
      acd92(111)=acd92(38)*acd92(84)
      acd92(112)=acd92(32)*acd92(82)
      acd92(113)=acd92(30)*acd92(81)
      acd92(114)=acd92(28)*acd92(80)
      acd92(115)=acd92(18)*acd92(55)
      acd92(108)=acd92(115)+acd92(114)+acd92(113)+acd92(112)+acd92(111)+acd92(1&
      &10)+acd92(109)-acd92(86)+acd92(108)
      acd92(108)=acd92(8)*acd92(108)
      acd92(107)=-acd92(5)*acd92(107)
      acd92(109)=acd92(40)*acd92(78)
      acd92(110)=acd92(36)*acd92(76)
      acd92(111)=acd92(38)*acd92(77)
      acd92(112)=acd92(32)*acd92(75)
      acd92(113)=acd92(30)*acd92(74)
      acd92(114)=acd92(28)*acd92(73)
      acd92(115)=acd92(18)*acd92(54)
      acd92(107)=acd92(115)+acd92(114)+acd92(113)+acd92(112)+acd92(111)+acd92(1&
      &10)+acd92(109)-acd92(79)+acd92(107)
      acd92(107)=acd92(4)*acd92(107)
      acd92(109)=acd92(40)*acd92(49)
      acd92(110)=acd92(36)*acd92(47)
      acd92(111)=acd92(38)*acd92(48)
      acd92(112)=acd92(32)*acd92(46)
      acd92(113)=acd92(30)*acd92(45)
      acd92(114)=acd92(28)*acd92(44)
      acd92(109)=-acd92(111)-acd92(109)-acd92(110)-acd92(112)+acd92(113)+acd92(&
      &114)+acd92(50)
      acd92(109)=acd92(109)*acd92(105)
      acd92(110)=acd92(40)*acd92(69)
      acd92(111)=acd92(36)*acd92(67)
      acd92(112)=acd92(38)*acd92(68)
      acd92(113)=acd92(32)*acd92(66)
      acd92(114)=acd92(30)*acd92(65)
      acd92(115)=acd92(28)*acd92(64)
      acd92(110)=acd92(115)+acd92(114)+acd92(113)+acd92(112)+acd92(111)-acd92(7&
      &0)+acd92(110)
      acd92(110)=acd92(22)*acd92(110)
      acd92(111)=acd92(40)*acd92(62)
      acd92(112)=acd92(36)*acd92(60)
      acd92(113)=acd92(38)*acd92(61)
      acd92(114)=acd92(32)*acd92(59)
      acd92(115)=acd92(30)*acd92(58)
      acd92(116)=acd92(28)*acd92(57)
      acd92(111)=acd92(116)+acd92(115)+acd92(114)+acd92(113)+acd92(112)-acd92(6&
      &3)+acd92(111)
      acd92(111)=acd92(20)*acd92(111)
      acd92(112)=acd92(10)*acd92(11)
      acd92(113)=acd92(6)*acd92(7)
      acd92(112)=acd92(112)-acd92(113)
      acd92(113)=acd92(112)+acd92(51)
      acd92(105)=-acd92(43)*acd92(105)
      acd92(114)=acd92(34)*acd92(56)
      acd92(115)=acd92(22)*acd92(53)
      acd92(116)=acd92(20)*acd92(52)
      acd92(105)=acd92(116)+acd92(115)+acd92(114)+acd92(105)+acd92(113)
      acd92(105)=acd92(18)*acd92(105)
      acd92(114)=acd92(40)*acd92(95)
      acd92(115)=acd92(36)*acd92(93)
      acd92(116)=acd92(38)*acd92(94)
      acd92(114)=acd92(116)+acd92(115)-acd92(96)+acd92(114)
      acd92(114)=acd92(34)*acd92(114)
      acd92(113)=acd92(17)*acd92(113)
      acd92(112)=-acd92(12)-acd92(112)
      acd92(112)=acd92(1)*acd92(112)
      acd92(115)=-acd92(102)*acd92(103)
      acd92(116)=-acd92(100)*acd92(101)
      acd92(117)=-acd92(98)*acd92(99)
      acd92(118)=acd92(71)*acd92(72)
      acd92(119)=-acd92(38)*acd92(97)
      acd92(120)=acd92(34)*acd92(91)
      acd92(120)=-acd92(92)+acd92(120)
      acd92(120)=acd92(32)*acd92(120)
      acd92(121)=acd92(34)*acd92(89)
      acd92(121)=-acd92(90)+acd92(121)
      acd92(121)=acd92(30)*acd92(121)
      acd92(122)=acd92(34)*acd92(87)
      acd92(122)=-acd92(88)+acd92(122)
      acd92(122)=acd92(28)*acd92(122)
      brack=acd92(104)+acd92(105)+acd92(106)+acd92(107)+acd92(108)+acd92(109)+a&
      &cd92(110)+acd92(111)+acd92(112)+acd92(113)+acd92(114)+acd92(115)+acd92(1&
      &16)+acd92(117)+acd92(118)+acd92(119)+acd92(120)+acd92(121)+acd92(122)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd92h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(150) :: acd92
      complex(ki) :: brack
      acd92(1)=k1(iv1)
      acd92(2)=dotproduct(k2,qshift)
      acd92(3)=abb92(115)
      acd92(4)=dotproduct(qshift,spvak4k2)
      acd92(5)=abb92(52)
      acd92(6)=dotproduct(qshift,spvak4l6)
      acd92(7)=abb92(162)
      acd92(8)=dotproduct(qshift,spvae7k2)
      acd92(9)=abb92(30)
      acd92(10)=dotproduct(qshift,spvae7l6)
      acd92(11)=abb92(23)
      acd92(12)=abb92(94)
      acd92(13)=k2(iv1)
      acd92(14)=dotproduct(k1,qshift)
      acd92(15)=abb92(81)
      acd92(16)=dotproduct(k3,qshift)
      acd92(17)=abb92(125)
      acd92(18)=dotproduct(k4,qshift)
      acd92(19)=dotproduct(l5,qshift)
      acd92(20)=dotproduct(l6,qshift)
      acd92(21)=abb92(112)
      acd92(22)=dotproduct(k7,qshift)
      acd92(23)=abb92(104)
      acd92(24)=dotproduct(e7,qshift)
      acd92(25)=abb92(31)
      acd92(26)=abb92(54)
      acd92(27)=abb92(164)
      acd92(28)=abb92(25)
      acd92(29)=abb92(34)
      acd92(30)=dotproduct(qshift,spvak1k2)
      acd92(31)=abb92(43)
      acd92(32)=dotproduct(qshift,spvak1l6)
      acd92(33)=abb92(20)
      acd92(34)=dotproduct(qshift,spvak2l6)
      acd92(35)=abb92(24)
      acd92(36)=dotproduct(qshift,spvak4k3)
      acd92(37)=abb92(56)
      acd92(38)=dotproduct(qshift,spval5k2)
      acd92(39)=abb92(156)
      acd92(40)=dotproduct(qshift,spval5l6)
      acd92(41)=abb92(108)
      acd92(42)=dotproduct(qshift,spval6k2)
      acd92(43)=abb92(102)
      acd92(44)=abb92(26)
      acd92(45)=k3(iv1)
      acd92(46)=abb92(219)
      acd92(47)=abb92(42)
      acd92(48)=abb92(39)
      acd92(49)=abb92(107)
      acd92(50)=abb92(132)
      acd92(51)=abb92(124)
      acd92(52)=abb92(97)
      acd92(53)=abb92(214)
      acd92(54)=k4(iv1)
      acd92(55)=l5(iv1)
      acd92(56)=abb92(206)
      acd92(57)=l6(iv1)
      acd92(58)=abb92(212)
      acd92(59)=abb92(178)
      acd92(60)=abb92(19)
      acd92(61)=abb92(59)
      acd92(62)=abb92(45)
      acd92(63)=k7(iv1)
      acd92(64)=abb92(40)
      acd92(65)=abb92(21)
      acd92(66)=abb92(95)
      acd92(67)=abb92(87)
      acd92(68)=abb92(109)
      acd92(69)=abb92(79)
      acd92(70)=abb92(189)
      acd92(71)=e7(iv1)
      acd92(72)=abb92(27)
      acd92(73)=abb92(16)
      acd92(74)=abb92(67)
      acd92(75)=abb92(12)
      acd92(76)=abb92(71)
      acd92(77)=abb92(76)
      acd92(78)=abb92(126)
      acd92(79)=qshift(iv1)
      acd92(80)=abb92(11)
      acd92(81)=spvak4k2(iv1)
      acd92(82)=abb92(44)
      acd92(83)=abb92(13)
      acd92(84)=abb92(74)
      acd92(85)=abb92(73)
      acd92(86)=abb92(72)
      acd92(87)=abb92(60)
      acd92(88)=abb92(18)
      acd92(89)=spvak4l6(iv1)
      acd92(90)=spvae7k2(iv1)
      acd92(91)=abb92(37)
      acd92(92)=abb92(36)
      acd92(93)=abb92(38)
      acd92(94)=abb92(77)
      acd92(95)=abb92(128)
      acd92(96)=abb92(70)
      acd92(97)=abb92(48)
      acd92(98)=spvae7l6(iv1)
      acd92(99)=spvak1k2(iv1)
      acd92(100)=abb92(41)
      acd92(101)=abb92(29)
      acd92(102)=spvak1l6(iv1)
      acd92(103)=abb92(32)
      acd92(104)=abb92(14)
      acd92(105)=spvak2l6(iv1)
      acd92(106)=abb92(47)
      acd92(107)=abb92(53)
      acd92(108)=spvak4k3(iv1)
      acd92(109)=abb92(96)
      acd92(110)=abb92(88)
      acd92(111)=abb92(64)
      acd92(112)=abb92(33)
      acd92(113)=spval5k2(iv1)
      acd92(114)=spval5l6(iv1)
      acd92(115)=abb92(17)
      acd92(116)=spval6k2(iv1)
      acd92(117)=spvak1l5(iv1)
      acd92(118)=abb92(22)
      acd92(119)=spvak2k1(iv1)
      acd92(120)=abb92(35)
      acd92(121)=spvak2l5(iv1)
      acd92(122)=abb92(28)
      acd92(123)=acd92(16)+acd92(18)
      acd92(124)=-acd92(17)*acd92(123)
      acd92(125)=acd92(14)-acd92(19)
      acd92(126)=-acd92(3)*acd92(125)
      acd92(127)=-acd92(10)*acd92(29)
      acd92(128)=-acd92(6)*acd92(27)
      acd92(129)=-acd92(42)*acd92(43)
      acd92(130)=-acd92(40)*acd92(41)
      acd92(131)=-acd92(38)*acd92(39)
      acd92(132)=-acd92(36)*acd92(37)
      acd92(133)=-acd92(34)*acd92(35)
      acd92(134)=-acd92(32)*acd92(33)
      acd92(135)=-acd92(30)*acd92(31)
      acd92(136)=-acd92(24)*acd92(25)
      acd92(137)=-acd92(22)*acd92(23)
      acd92(138)=-acd92(20)*acd92(21)
      acd92(139)=-acd92(8)*acd92(28)
      acd92(140)=-acd92(4)*acd92(26)
      acd92(141)=acd92(2)*acd92(15)
      acd92(124)=-2.0_ki*acd92(141)+acd92(140)+acd92(139)+acd92(138)+acd92(137)&
      &+acd92(136)+acd92(135)+acd92(134)+acd92(133)+acd92(132)+acd92(131)+acd92&
      &(130)+acd92(129)+acd92(128)+acd92(44)+acd92(127)+acd92(126)+acd92(124)
      acd92(124)=acd92(13)*acd92(124)
      acd92(126)=acd92(45)+acd92(54)
      acd92(127)=-acd92(17)*acd92(126)
      acd92(128)=acd92(1)-acd92(55)
      acd92(129)=-acd92(3)*acd92(128)
      acd92(130)=-acd92(98)*acd92(29)
      acd92(131)=-acd92(89)*acd92(27)
      acd92(132)=-acd92(116)*acd92(43)
      acd92(133)=-acd92(113)*acd92(39)
      acd92(134)=-acd92(114)*acd92(41)
      acd92(135)=-acd92(108)*acd92(37)
      acd92(136)=-acd92(105)*acd92(35)
      acd92(137)=-acd92(102)*acd92(33)
      acd92(138)=-acd92(99)*acd92(31)
      acd92(139)=-acd92(71)*acd92(25)
      acd92(140)=-acd92(63)*acd92(23)
      acd92(141)=-acd92(90)*acd92(28)
      acd92(142)=-acd92(81)*acd92(26)
      acd92(143)=-acd92(57)*acd92(21)
      acd92(127)=acd92(143)+acd92(142)+acd92(141)+acd92(140)+acd92(139)+acd92(1&
      &38)+acd92(137)+acd92(136)+acd92(135)+acd92(134)+acd92(133)+acd92(132)+ac&
      &d92(130)+acd92(131)+acd92(129)+acd92(127)
      acd92(127)=acd92(2)*acd92(127)
      acd92(129)=-acd92(9)*acd92(125)
      acd92(130)=-acd92(42)*acd92(96)
      acd92(131)=-acd92(40)*acd92(95)
      acd92(132)=-acd92(38)*acd92(94)
      acd92(133)=-acd92(34)*acd92(93)
      acd92(134)=-acd92(32)*acd92(92)
      acd92(135)=-acd92(30)*acd92(91)
      acd92(136)=-acd92(20)*acd92(61)
      acd92(129)=acd92(136)+acd92(135)+acd92(134)+acd92(133)+acd92(132)+acd92(1&
      &31)+acd92(130)+acd92(97)+acd92(129)
      acd92(129)=acd92(90)*acd92(129)
      acd92(130)=acd92(5)*acd92(125)
      acd92(131)=-acd92(42)*acd92(87)
      acd92(132)=-acd92(40)*acd92(86)
      acd92(133)=-acd92(38)*acd92(85)
      acd92(134)=-acd92(34)*acd92(84)
      acd92(135)=-acd92(32)*acd92(83)
      acd92(136)=-acd92(30)*acd92(82)
      acd92(137)=-acd92(20)*acd92(60)
      acd92(130)=acd92(137)+acd92(136)+acd92(135)+acd92(134)+acd92(133)+acd92(1&
      &32)+acd92(131)+acd92(88)+acd92(130)
      acd92(130)=acd92(81)*acd92(130)
      acd92(131)=-acd92(9)*acd92(128)
      acd92(132)=-acd92(116)*acd92(96)
      acd92(133)=-acd92(113)*acd92(94)
      acd92(134)=-acd92(114)*acd92(95)
      acd92(135)=-acd92(105)*acd92(93)
      acd92(136)=-acd92(102)*acd92(92)
      acd92(137)=-acd92(99)*acd92(91)
      acd92(131)=acd92(137)+acd92(136)+acd92(135)+acd92(134)+acd92(133)+acd92(1&
      &32)+acd92(131)
      acd92(131)=acd92(8)*acd92(131)
      acd92(128)=acd92(5)*acd92(128)
      acd92(132)=-acd92(116)*acd92(87)
      acd92(133)=-acd92(113)*acd92(85)
      acd92(134)=-acd92(114)*acd92(86)
      acd92(135)=-acd92(105)*acd92(84)
      acd92(136)=-acd92(102)*acd92(83)
      acd92(137)=-acd92(99)*acd92(82)
      acd92(128)=acd92(137)+acd92(136)+acd92(135)+acd92(134)+acd92(133)+acd92(1&
      &32)+acd92(128)
      acd92(128)=acd92(4)*acd92(128)
      acd92(132)=acd92(11)*acd92(10)
      acd92(133)=acd92(7)*acd92(6)
      acd92(132)=acd92(132)-acd92(133)
      acd92(133)=acd92(46)*acd92(123)
      acd92(134)=-acd92(36)*acd92(62)
      acd92(135)=-acd92(24)*acd92(59)
      acd92(136)=-acd92(22)*acd92(58)
      acd92(137)=-acd92(8)*acd92(61)
      acd92(138)=-acd92(4)*acd92(60)
      acd92(133)=acd92(138)+acd92(137)+acd92(136)+acd92(135)+acd92(134)-acd92(5&
      &6)+acd92(133)-acd92(132)
      acd92(133)=acd92(57)*acd92(133)
      acd92(134)=acd92(42)*acd92(52)
      acd92(135)=acd92(40)*acd92(51)
      acd92(136)=acd92(38)*acd92(50)
      acd92(137)=acd92(34)*acd92(49)
      acd92(138)=acd92(32)*acd92(48)
      acd92(139)=acd92(30)*acd92(47)
      acd92(134)=-acd92(136)-acd92(134)-acd92(135)-acd92(137)+acd92(138)+acd92(&
      &139)+acd92(53)
      acd92(134)=-acd92(134)*acd92(126)
      acd92(135)=-acd92(42)*acd92(111)
      acd92(136)=-acd92(40)*acd92(110)
      acd92(137)=-acd92(38)*acd92(109)
      acd92(138)=-acd92(34)*acd92(106)
      acd92(139)=-acd92(32)*acd92(103)
      acd92(140)=-acd92(30)*acd92(100)
      acd92(135)=acd92(140)+acd92(139)+acd92(138)+acd92(137)+acd92(136)+acd92(1&
      &12)+acd92(135)
      acd92(135)=acd92(108)*acd92(135)
      acd92(136)=-acd92(42)*acd92(77)
      acd92(137)=-acd92(40)*acd92(76)
      acd92(138)=-acd92(38)*acd92(75)
      acd92(139)=-acd92(34)*acd92(74)
      acd92(140)=-acd92(32)*acd92(73)
      acd92(141)=-acd92(30)*acd92(72)
      acd92(136)=acd92(141)+acd92(140)+acd92(139)+acd92(138)+acd92(137)+acd92(7&
      &8)+acd92(136)
      acd92(136)=acd92(71)*acd92(136)
      acd92(137)=-acd92(42)*acd92(69)
      acd92(138)=-acd92(40)*acd92(68)
      acd92(139)=-acd92(38)*acd92(67)
      acd92(140)=-acd92(34)*acd92(66)
      acd92(141)=-acd92(32)*acd92(65)
      acd92(142)=-acd92(30)*acd92(64)
      acd92(137)=acd92(142)+acd92(141)+acd92(140)+acd92(139)+acd92(138)+acd92(7&
      &0)+acd92(137)
      acd92(137)=acd92(63)*acd92(137)
      acd92(126)=acd92(46)*acd92(126)
      acd92(138)=-acd92(11)*acd92(98)
      acd92(139)=acd92(7)*acd92(89)
      acd92(140)=-acd92(108)*acd92(62)
      acd92(141)=-acd92(71)*acd92(59)
      acd92(142)=-acd92(63)*acd92(58)
      acd92(126)=acd92(142)+acd92(141)+acd92(140)+acd92(138)+acd92(139)+acd92(1&
      &26)
      acd92(126)=acd92(20)*acd92(126)
      acd92(138)=acd92(51)*acd92(123)
      acd92(139)=-acd92(36)*acd92(110)
      acd92(140)=-acd92(24)*acd92(76)
      acd92(141)=-acd92(22)*acd92(68)
      acd92(138)=acd92(141)+acd92(140)+acd92(115)+acd92(139)+acd92(138)
      acd92(138)=acd92(114)*acd92(138)
      acd92(139)=acd92(49)*acd92(123)
      acd92(140)=-acd92(36)*acd92(106)
      acd92(141)=-acd92(24)*acd92(74)
      acd92(142)=-acd92(22)*acd92(66)
      acd92(139)=acd92(142)+acd92(141)+acd92(107)+acd92(140)+acd92(139)
      acd92(139)=acd92(105)*acd92(139)
      acd92(140)=-acd92(48)*acd92(123)
      acd92(141)=-acd92(36)*acd92(103)
      acd92(142)=-acd92(24)*acd92(73)
      acd92(143)=-acd92(22)*acd92(65)
      acd92(140)=acd92(143)+acd92(142)+acd92(104)+acd92(141)+acd92(140)
      acd92(140)=acd92(102)*acd92(140)
      acd92(141)=-acd92(47)*acd92(123)
      acd92(142)=-acd92(36)*acd92(100)
      acd92(143)=-acd92(24)*acd92(72)
      acd92(144)=-acd92(22)*acd92(64)
      acd92(141)=acd92(144)+acd92(143)+acd92(101)+acd92(142)+acd92(141)
      acd92(141)=acd92(99)*acd92(141)
      acd92(142)=acd92(116)*acd92(52)
      acd92(143)=acd92(113)*acd92(50)
      acd92(142)=acd92(142)+acd92(143)
      acd92(123)=acd92(142)*acd92(123)
      acd92(142)=acd92(98)*acd92(125)
      acd92(143)=-acd92(55)*acd92(10)
      acd92(142)=acd92(143)+acd92(142)
      acd92(142)=acd92(11)*acd92(142)
      acd92(125)=-acd92(89)*acd92(125)
      acd92(143)=acd92(55)*acd92(6)
      acd92(125)=acd92(143)+acd92(125)
      acd92(125)=acd92(7)*acd92(125)
      acd92(132)=acd92(12)+acd92(132)
      acd92(132)=acd92(1)*acd92(132)
      acd92(143)=-acd92(116)*acd92(111)
      acd92(144)=-acd92(113)*acd92(109)
      acd92(143)=acd92(143)+acd92(144)
      acd92(143)=acd92(36)*acd92(143)
      acd92(144)=-acd92(116)*acd92(77)
      acd92(145)=-acd92(113)*acd92(75)
      acd92(144)=acd92(144)+acd92(145)
      acd92(144)=acd92(24)*acd92(144)
      acd92(145)=-acd92(116)*acd92(69)
      acd92(146)=-acd92(113)*acd92(67)
      acd92(145)=acd92(145)+acd92(146)
      acd92(145)=acd92(22)*acd92(145)
      acd92(146)=acd92(121)*acd92(122)
      acd92(147)=acd92(119)*acd92(120)
      acd92(148)=acd92(117)*acd92(118)
      acd92(149)=acd92(79)*acd92(80)
      acd92(150)=-acd92(55)*acd92(56)
      brack=acd92(123)+acd92(124)+acd92(125)+acd92(126)+acd92(127)+acd92(128)+a&
      &cd92(129)+acd92(130)+acd92(131)+acd92(132)+acd92(133)+acd92(134)+acd92(1&
      &35)+acd92(136)+acd92(137)+acd92(138)+acd92(139)+acd92(140)+acd92(141)+ac&
      &d92(142)+acd92(143)+acd92(144)+acd92(145)+acd92(146)+acd92(147)+acd92(14&
      &8)-2.0_ki*acd92(149)+acd92(150)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd92h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(126) :: acd92
      complex(ki) :: brack
      acd92(1)=d(iv1,iv2)
      acd92(2)=abb92(11)
      acd92(3)=k1(iv1)
      acd92(4)=k2(iv2)
      acd92(5)=abb92(115)
      acd92(6)=spvak4k2(iv2)
      acd92(7)=abb92(52)
      acd92(8)=spvak4l6(iv2)
      acd92(9)=abb92(162)
      acd92(10)=spvae7k2(iv2)
      acd92(11)=abb92(30)
      acd92(12)=spvae7l6(iv2)
      acd92(13)=abb92(23)
      acd92(14)=k1(iv2)
      acd92(15)=k2(iv1)
      acd92(16)=spvak4k2(iv1)
      acd92(17)=spvak4l6(iv1)
      acd92(18)=spvae7k2(iv1)
      acd92(19)=spvae7l6(iv1)
      acd92(20)=abb92(81)
      acd92(21)=k3(iv2)
      acd92(22)=abb92(125)
      acd92(23)=k4(iv2)
      acd92(24)=l5(iv2)
      acd92(25)=l6(iv2)
      acd92(26)=abb92(112)
      acd92(27)=k7(iv2)
      acd92(28)=abb92(104)
      acd92(29)=e7(iv2)
      acd92(30)=abb92(31)
      acd92(31)=abb92(54)
      acd92(32)=abb92(164)
      acd92(33)=abb92(25)
      acd92(34)=abb92(34)
      acd92(35)=spvak1k2(iv2)
      acd92(36)=abb92(43)
      acd92(37)=spvak1l6(iv2)
      acd92(38)=abb92(20)
      acd92(39)=spvak2l6(iv2)
      acd92(40)=abb92(24)
      acd92(41)=spvak4k3(iv2)
      acd92(42)=abb92(56)
      acd92(43)=spval5k2(iv2)
      acd92(44)=abb92(156)
      acd92(45)=spval5l6(iv2)
      acd92(46)=abb92(108)
      acd92(47)=spval6k2(iv2)
      acd92(48)=abb92(102)
      acd92(49)=k3(iv1)
      acd92(50)=k4(iv1)
      acd92(51)=l5(iv1)
      acd92(52)=l6(iv1)
      acd92(53)=k7(iv1)
      acd92(54)=e7(iv1)
      acd92(55)=spvak1k2(iv1)
      acd92(56)=spvak1l6(iv1)
      acd92(57)=spvak2l6(iv1)
      acd92(58)=spvak4k3(iv1)
      acd92(59)=spval5k2(iv1)
      acd92(60)=spval5l6(iv1)
      acd92(61)=spval6k2(iv1)
      acd92(62)=abb92(219)
      acd92(63)=abb92(42)
      acd92(64)=abb92(39)
      acd92(65)=abb92(107)
      acd92(66)=abb92(132)
      acd92(67)=abb92(124)
      acd92(68)=abb92(97)
      acd92(69)=abb92(212)
      acd92(70)=abb92(178)
      acd92(71)=abb92(19)
      acd92(72)=abb92(59)
      acd92(73)=abb92(45)
      acd92(74)=abb92(40)
      acd92(75)=abb92(21)
      acd92(76)=abb92(95)
      acd92(77)=abb92(87)
      acd92(78)=abb92(109)
      acd92(79)=abb92(79)
      acd92(80)=abb92(27)
      acd92(81)=abb92(16)
      acd92(82)=abb92(67)
      acd92(83)=abb92(12)
      acd92(84)=abb92(71)
      acd92(85)=abb92(76)
      acd92(86)=abb92(44)
      acd92(87)=abb92(13)
      acd92(88)=abb92(74)
      acd92(89)=abb92(73)
      acd92(90)=abb92(72)
      acd92(91)=abb92(60)
      acd92(92)=abb92(37)
      acd92(93)=abb92(36)
      acd92(94)=abb92(38)
      acd92(95)=abb92(77)
      acd92(96)=abb92(128)
      acd92(97)=abb92(70)
      acd92(98)=abb92(41)
      acd92(99)=abb92(32)
      acd92(100)=abb92(47)
      acd92(101)=abb92(96)
      acd92(102)=abb92(88)
      acd92(103)=abb92(64)
      acd92(104)=acd92(49)+acd92(50)
      acd92(105)=acd92(22)*acd92(104)
      acd92(106)=acd92(3)-acd92(51)
      acd92(107)=acd92(5)*acd92(106)
      acd92(108)=acd92(19)*acd92(34)
      acd92(109)=acd92(17)*acd92(32)
      acd92(110)=acd92(61)*acd92(48)
      acd92(111)=acd92(60)*acd92(46)
      acd92(112)=acd92(59)*acd92(44)
      acd92(113)=acd92(58)*acd92(42)
      acd92(114)=acd92(57)*acd92(40)
      acd92(115)=acd92(56)*acd92(38)
      acd92(116)=acd92(55)*acd92(36)
      acd92(117)=acd92(54)*acd92(30)
      acd92(118)=acd92(53)*acd92(28)
      acd92(119)=acd92(52)*acd92(26)
      acd92(120)=acd92(18)*acd92(33)
      acd92(121)=acd92(16)*acd92(31)
      acd92(122)=acd92(15)*acd92(20)
      acd92(105)=2.0_ki*acd92(122)+acd92(121)+acd92(120)+acd92(119)+acd92(118)+&
      &acd92(117)+acd92(116)+acd92(115)+acd92(114)+acd92(113)+acd92(112)+acd92(&
      &111)+acd92(110)+acd92(108)+acd92(109)+acd92(107)+acd92(105)
      acd92(105)=acd92(4)*acd92(105)
      acd92(107)=acd92(21)+acd92(23)
      acd92(108)=acd92(22)*acd92(107)
      acd92(109)=acd92(14)-acd92(24)
      acd92(110)=acd92(5)*acd92(109)
      acd92(111)=acd92(12)*acd92(34)
      acd92(112)=acd92(8)*acd92(32)
      acd92(113)=acd92(47)*acd92(48)
      acd92(114)=acd92(45)*acd92(46)
      acd92(115)=acd92(43)*acd92(44)
      acd92(116)=acd92(41)*acd92(42)
      acd92(117)=acd92(39)*acd92(40)
      acd92(118)=acd92(37)*acd92(38)
      acd92(119)=acd92(35)*acd92(36)
      acd92(120)=acd92(29)*acd92(30)
      acd92(121)=acd92(27)*acd92(28)
      acd92(122)=acd92(25)*acd92(26)
      acd92(123)=acd92(10)*acd92(33)
      acd92(124)=acd92(6)*acd92(31)
      acd92(108)=acd92(124)+acd92(123)+acd92(122)+acd92(121)+acd92(120)+acd92(1&
      &19)+acd92(118)+acd92(117)+acd92(116)+acd92(115)+acd92(114)+acd92(113)+ac&
      &d92(111)+acd92(112)+acd92(110)+acd92(108)
      acd92(108)=acd92(15)*acd92(108)
      acd92(110)=acd92(11)*acd92(109)
      acd92(111)=acd92(47)*acd92(97)
      acd92(112)=acd92(45)*acd92(96)
      acd92(113)=acd92(43)*acd92(95)
      acd92(114)=acd92(39)*acd92(94)
      acd92(115)=acd92(37)*acd92(93)
      acd92(116)=acd92(35)*acd92(92)
      acd92(117)=acd92(25)*acd92(72)
      acd92(110)=acd92(117)+acd92(116)+acd92(115)+acd92(114)+acd92(113)+acd92(1&
      &12)+acd92(111)+acd92(110)
      acd92(110)=acd92(18)*acd92(110)
      acd92(111)=-acd92(7)*acd92(109)
      acd92(112)=acd92(47)*acd92(91)
      acd92(113)=acd92(45)*acd92(90)
      acd92(114)=acd92(43)*acd92(89)
      acd92(115)=acd92(39)*acd92(88)
      acd92(116)=acd92(37)*acd92(87)
      acd92(117)=acd92(35)*acd92(86)
      acd92(118)=acd92(25)*acd92(71)
      acd92(111)=acd92(118)+acd92(117)+acd92(116)+acd92(115)+acd92(114)+acd92(1&
      &13)+acd92(112)+acd92(111)
      acd92(111)=acd92(16)*acd92(111)
      acd92(112)=acd92(11)*acd92(106)
      acd92(113)=acd92(61)*acd92(97)
      acd92(114)=acd92(60)*acd92(96)
      acd92(115)=acd92(59)*acd92(95)
      acd92(116)=acd92(57)*acd92(94)
      acd92(117)=acd92(56)*acd92(93)
      acd92(118)=acd92(55)*acd92(92)
      acd92(119)=acd92(52)*acd92(72)
      acd92(112)=acd92(119)+acd92(118)+acd92(117)+acd92(116)+acd92(115)+acd92(1&
      &14)+acd92(113)+acd92(112)
      acd92(112)=acd92(10)*acd92(112)
      acd92(113)=-acd92(7)*acd92(106)
      acd92(114)=acd92(61)*acd92(91)
      acd92(115)=acd92(60)*acd92(90)
      acd92(116)=acd92(59)*acd92(89)
      acd92(117)=acd92(57)*acd92(88)
      acd92(118)=acd92(56)*acd92(87)
      acd92(119)=acd92(55)*acd92(86)
      acd92(120)=acd92(52)*acd92(71)
      acd92(113)=acd92(120)+acd92(119)+acd92(118)+acd92(117)+acd92(116)+acd92(1&
      &15)+acd92(114)+acd92(113)
      acd92(113)=acd92(6)*acd92(113)
      acd92(114)=acd92(61)*acd92(68)
      acd92(115)=acd92(60)*acd92(67)
      acd92(116)=acd92(59)*acd92(66)
      acd92(117)=acd92(57)*acd92(65)
      acd92(118)=acd92(56)*acd92(64)
      acd92(119)=acd92(55)*acd92(63)
      acd92(114)=-acd92(119)+acd92(116)+acd92(114)+acd92(115)+acd92(117)-acd92(&
      &118)
      acd92(114)=-acd92(114)*acd92(107)
      acd92(115)=acd92(61)*acd92(103)
      acd92(116)=acd92(60)*acd92(102)
      acd92(117)=acd92(59)*acd92(101)
      acd92(118)=acd92(57)*acd92(100)
      acd92(119)=acd92(56)*acd92(99)
      acd92(120)=acd92(55)*acd92(98)
      acd92(115)=acd92(120)+acd92(119)+acd92(118)+acd92(117)+acd92(115)+acd92(1&
      &16)
      acd92(115)=acd92(41)*acd92(115)
      acd92(116)=acd92(61)*acd92(85)
      acd92(117)=acd92(60)*acd92(84)
      acd92(118)=acd92(59)*acd92(83)
      acd92(119)=acd92(57)*acd92(82)
      acd92(120)=acd92(56)*acd92(81)
      acd92(121)=acd92(55)*acd92(80)
      acd92(116)=acd92(121)+acd92(120)+acd92(119)+acd92(118)+acd92(116)+acd92(1&
      &17)
      acd92(116)=acd92(29)*acd92(116)
      acd92(117)=acd92(61)*acd92(79)
      acd92(118)=acd92(60)*acd92(78)
      acd92(119)=acd92(59)*acd92(77)
      acd92(120)=acd92(57)*acd92(76)
      acd92(121)=acd92(56)*acd92(75)
      acd92(122)=acd92(55)*acd92(74)
      acd92(117)=acd92(122)+acd92(121)+acd92(120)+acd92(119)+acd92(117)+acd92(1&
      &18)
      acd92(117)=acd92(27)*acd92(117)
      acd92(107)=-acd92(62)*acd92(107)
      acd92(118)=acd92(13)*acd92(12)
      acd92(119)=-acd92(9)*acd92(8)
      acd92(120)=acd92(41)*acd92(73)
      acd92(121)=acd92(29)*acd92(70)
      acd92(122)=acd92(27)*acd92(69)
      acd92(107)=acd92(122)+acd92(121)+acd92(120)+acd92(118)+acd92(119)+acd92(1&
      &07)
      acd92(107)=acd92(52)*acd92(107)
      acd92(118)=-acd92(62)*acd92(104)
      acd92(119)=acd92(13)*acd92(19)
      acd92(120)=-acd92(9)*acd92(17)
      acd92(121)=acd92(58)*acd92(73)
      acd92(122)=acd92(54)*acd92(70)
      acd92(123)=acd92(53)*acd92(69)
      acd92(118)=acd92(123)+acd92(122)+acd92(121)+acd92(119)+acd92(120)+acd92(1&
      &18)
      acd92(118)=acd92(25)*acd92(118)
      acd92(119)=-acd92(68)*acd92(104)
      acd92(120)=acd92(58)*acd92(103)
      acd92(121)=acd92(54)*acd92(85)
      acd92(122)=acd92(53)*acd92(79)
      acd92(119)=acd92(122)+acd92(120)+acd92(121)+acd92(119)
      acd92(119)=acd92(47)*acd92(119)
      acd92(120)=-acd92(67)*acd92(104)
      acd92(121)=acd92(58)*acd92(102)
      acd92(122)=acd92(54)*acd92(84)
      acd92(123)=acd92(53)*acd92(78)
      acd92(120)=acd92(123)+acd92(121)+acd92(122)+acd92(120)
      acd92(120)=acd92(45)*acd92(120)
      acd92(121)=-acd92(66)*acd92(104)
      acd92(122)=acd92(58)*acd92(101)
      acd92(123)=acd92(54)*acd92(83)
      acd92(124)=acd92(53)*acd92(77)
      acd92(121)=acd92(124)+acd92(122)+acd92(123)+acd92(121)
      acd92(121)=acd92(43)*acd92(121)
      acd92(122)=-acd92(65)*acd92(104)
      acd92(123)=acd92(58)*acd92(100)
      acd92(124)=acd92(54)*acd92(82)
      acd92(125)=acd92(53)*acd92(76)
      acd92(122)=acd92(125)+acd92(123)+acd92(124)+acd92(122)
      acd92(122)=acd92(39)*acd92(122)
      acd92(123)=acd92(64)*acd92(104)
      acd92(124)=acd92(58)*acd92(99)
      acd92(125)=acd92(54)*acd92(81)
      acd92(126)=acd92(53)*acd92(75)
      acd92(123)=acd92(126)+acd92(124)+acd92(125)+acd92(123)
      acd92(123)=acd92(37)*acd92(123)
      acd92(104)=acd92(63)*acd92(104)
      acd92(124)=acd92(58)*acd92(98)
      acd92(125)=acd92(54)*acd92(80)
      acd92(126)=acd92(53)*acd92(74)
      acd92(104)=acd92(126)+acd92(124)+acd92(125)+acd92(104)
      acd92(104)=acd92(35)*acd92(104)
      acd92(124)=-acd92(19)*acd92(109)
      acd92(125)=-acd92(12)*acd92(106)
      acd92(124)=acd92(125)+acd92(124)
      acd92(124)=acd92(13)*acd92(124)
      acd92(109)=acd92(17)*acd92(109)
      acd92(106)=acd92(8)*acd92(106)
      acd92(106)=acd92(106)+acd92(109)
      acd92(106)=acd92(9)*acd92(106)
      acd92(109)=acd92(1)*acd92(2)
      brack=acd92(104)+acd92(105)+acd92(106)+acd92(107)+acd92(108)+2.0_ki*acd92&
      &(109)+acd92(110)+acd92(111)+acd92(112)+acd92(113)+acd92(114)+acd92(115)+&
      &acd92(116)+acd92(117)+acd92(118)+acd92(119)+acd92(120)+acd92(121)+acd92(&
      &122)+acd92(123)+acd92(124)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd92h2
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
      qshift = k6+k5
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
!---#[ subroutine reconstruct_d92:
   subroutine     reconstruct_d92(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_92:
      coeffs%coeffs_92%c0 = derivative(czip)
      coeffs%coeffs_92%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_92%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_92%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_92%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_92%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_92%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_92%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_92%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_92%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_92%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_92%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_92%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_92%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_92%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_92:
   end subroutine reconstruct_d92
!---#] subroutine reconstruct_d92:
end module     p1_dbarc_epnebbbarg_d92h2l1d
