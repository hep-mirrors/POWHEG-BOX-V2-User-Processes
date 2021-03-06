module     p0_dbaru_epnebbbarg_d82h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d82h0l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd82h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd82
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd82(1)=dotproduct(ninjaE3,spvak1k2)
      acd82(2)=dotproduct(ninjaE3,spvak2k7)
      acd82(3)=dotproduct(ninjaE3,spvak4k3)
      acd82(4)=dotproduct(ninjaE3,spval6k2)
      acd82(5)=abb82(14)
      acd82(6)=dotproduct(ninjaE3,spval5k2)
      acd82(7)=abb82(26)
      acd82(8)=-acd82(5)*acd82(4)
      acd82(9)=-acd82(7)*acd82(6)
      acd82(8)=acd82(8)+acd82(9)
      acd82(8)=acd82(1)*acd82(8)*acd82(3)*acd82(2)
      brack(ninjaidxt2mu0)=acd82(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd82h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(143) :: acd82
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd82(1)=dotproduct(k2,ninjaE3)
      acd82(2)=dotproduct(ninjaE3,spvak4k3)
      acd82(3)=abb82(71)
      acd82(4)=dotproduct(ninjaE3,spvak2k7)
      acd82(5)=dotproduct(ninjaE3,spval6k2)
      acd82(6)=dotproduct(ninjaE3,spvak1k2)
      acd82(7)=dotproduct(ninjaE4,spvak4k3)
      acd82(8)=abb82(14)
      acd82(9)=dotproduct(ninjaE4,spvak1k2)
      acd82(10)=abb82(47)
      acd82(11)=dotproduct(ninjaE4,spval6k2)
      acd82(12)=dotproduct(ninjaE4,spval5k2)
      acd82(13)=abb82(26)
      acd82(14)=dotproduct(ninjaE3,spval5k2)
      acd82(15)=abb82(45)
      acd82(16)=dotproduct(ninjaE3,spvak4k2)
      acd82(17)=abb82(52)
      acd82(18)=dotproduct(ninjaE4,spvak2k7)
      acd82(19)=abb82(83)
      acd82(20)=abb82(51)
      acd82(21)=abb82(85)
      acd82(22)=dotproduct(k1,ninjaE3)
      acd82(23)=abb82(86)
      acd82(24)=abb82(74)
      acd82(25)=abb82(88)
      acd82(26)=abb82(77)
      acd82(27)=dotproduct(k7,ninjaE3)
      acd82(28)=dotproduct(ninjaA,ninjaE3)
      acd82(29)=abb82(73)
      acd82(30)=abb82(55)
      acd82(31)=abb82(80)
      acd82(32)=dotproduct(k3,ninjaE3)
      acd82(33)=abb82(46)
      acd82(34)=abb82(60)
      acd82(35)=dotproduct(k4,ninjaE3)
      acd82(36)=dotproduct(ninjaA,spvak2k7)
      acd82(37)=dotproduct(ninjaA,spval6k2)
      acd82(38)=dotproduct(ninjaA,spvak1k2)
      acd82(39)=dotproduct(ninjaA,spvak4k3)
      acd82(40)=dotproduct(ninjaA,spval5k2)
      acd82(41)=dotproduct(ninjaE3,spvak1k3)
      acd82(42)=abb82(9)
      acd82(43)=abb82(17)
      acd82(44)=abb82(13)
      acd82(45)=abb82(79)
      acd82(46)=dotproduct(ninjaE3,spvak7k2)
      acd82(47)=abb82(72)
      acd82(48)=abb82(27)
      acd82(49)=abb82(44)
      acd82(50)=abb82(81)
      acd82(51)=abb82(89)
      acd82(52)=dotproduct(ninjaE3,spvak3k2)
      acd82(53)=dotproduct(ninjaE3,spvak1k7)
      acd82(54)=abb82(90)
      acd82(55)=abb82(75)
      acd82(56)=dotproduct(k1,ninjaA)
      acd82(57)=abb82(16)
      acd82(58)=abb82(15)
      acd82(59)=abb82(12)
      acd82(60)=dotproduct(ninjaA,spvak4k2)
      acd82(61)=abb82(8)
      acd82(62)=abb82(92)
      acd82(63)=abb82(57)
      acd82(64)=abb82(41)
      acd82(65)=abb82(78)
      acd82(66)=abb82(65)
      acd82(67)=dotproduct(k2,ninjaA)
      acd82(68)=abb82(49)
      acd82(69)=abb82(56)
      acd82(70)=dotproduct(k7,ninjaA)
      acd82(71)=dotproduct(ninjaA,ninjaA)
      acd82(72)=abb82(24)
      acd82(73)=abb82(28)
      acd82(74)=abb82(36)
      acd82(75)=abb82(69)
      acd82(76)=abb82(54)
      acd82(77)=abb82(43)
      acd82(78)=dotproduct(k3,ninjaA)
      acd82(79)=abb82(23)
      acd82(80)=dotproduct(k4,ninjaA)
      acd82(81)=abb82(66)
      acd82(82)=abb82(63)
      acd82(83)=abb82(35)
      acd82(84)=abb82(19)
      acd82(85)=abb82(62)
      acd82(86)=abb82(37)
      acd82(87)=abb82(68)
      acd82(88)=abb82(59)
      acd82(89)=dotproduct(ninjaA,spvak1k3)
      acd82(90)=dotproduct(ninjaA,spvak7k2)
      acd82(91)=dotproduct(ninjaA,spvak3k2)
      acd82(92)=dotproduct(ninjaA,spvak1k7)
      acd82(93)=abb82(11)
      acd82(94)=abb82(33)
      acd82(95)=abb82(10)
      acd82(96)=abb82(64)
      acd82(97)=abb82(48)
      acd82(98)=abb82(50)
      acd82(99)=abb82(53)
      acd82(100)=abb82(38)
      acd82(101)=abb82(25)
      acd82(102)=abb82(70)
      acd82(103)=abb82(82)
      acd82(104)=abb82(34)
      acd82(105)=abb82(67)
      acd82(106)=abb82(84)
      acd82(107)=dotproduct(ninjaE3,spvak1k4)
      acd82(108)=abb82(91)
      acd82(109)=acd82(1)*acd82(3)
      acd82(110)=acd82(6)*acd82(20)
      acd82(111)=acd82(6)*acd82(13)
      acd82(112)=acd82(111)*acd82(18)
      acd82(112)=acd82(21)-acd82(112)
      acd82(112)=acd82(14)*acd82(112)
      acd82(113)=acd82(6)*acd82(8)
      acd82(114)=acd82(113)*acd82(18)
      acd82(114)=acd82(114)-acd82(19)
      acd82(115)=-acd82(5)*acd82(114)
      acd82(109)=acd82(115)+acd82(112)+acd82(109)+acd82(110)
      acd82(109)=acd82(2)*acd82(109)
      acd82(110)=acd82(14)*acd82(13)
      acd82(112)=-acd82(5)*acd82(8)
      acd82(112)=acd82(112)-acd82(110)
      acd82(112)=acd82(9)*acd82(112)
      acd82(115)=acd82(13)*acd82(12)
      acd82(116)=-acd82(8)*acd82(11)
      acd82(116)=-acd82(115)+acd82(116)
      acd82(116)=acd82(6)*acd82(116)
      acd82(112)=acd82(116)+acd82(112)
      acd82(112)=acd82(2)*acd82(112)
      acd82(116)=acd82(16)*acd82(17)
      acd82(117)=acd82(111)*acd82(7)
      acd82(117)=acd82(15)-acd82(117)
      acd82(117)=acd82(14)*acd82(117)
      acd82(118)=acd82(113)*acd82(7)
      acd82(118)=acd82(118)-acd82(10)
      acd82(119)=-acd82(5)*acd82(118)
      acd82(112)=acd82(112)+acd82(119)-acd82(116)+acd82(117)
      acd82(112)=acd82(4)*acd82(112)
      acd82(109)=acd82(109)+acd82(112)
      acd82(112)=acd82(17)*acd82(52)
      acd82(117)=acd82(46)*acd82(47)
      acd82(119)=acd82(16)*acd82(51)
      acd82(112)=-acd82(119)+acd82(112)-acd82(117)
      acd82(117)=acd82(13)*acd82(40)
      acd82(119)=acd82(8)*acd82(37)
      acd82(117)=-acd82(48)+acd82(117)+acd82(119)
      acd82(119)=-acd82(6)*acd82(117)
      acd82(120)=acd82(13)*acd82(38)
      acd82(120)=acd82(120)-acd82(50)
      acd82(121)=-acd82(14)*acd82(120)
      acd82(122)=acd82(8)*acd82(38)
      acd82(122)=acd82(122)-acd82(45)
      acd82(123)=-acd82(5)*acd82(122)
      acd82(119)=acd82(123)+acd82(121)+acd82(119)-acd82(112)
      acd82(119)=acd82(2)*acd82(119)
      acd82(121)=acd82(41)*acd82(43)
      acd82(123)=acd82(22)*acd82(24)
      acd82(124)=acd82(32)+acd82(35)
      acd82(125)=acd82(34)*acd82(124)
      acd82(121)=-acd82(125)+acd82(121)+acd82(123)
      acd82(123)=2.0_ki*acd82(28)
      acd82(126)=acd82(15)*acd82(123)
      acd82(127)=acd82(39)*acd82(13)
      acd82(127)=acd82(127)-acd82(49)
      acd82(128)=-acd82(6)*acd82(127)
      acd82(126)=acd82(128)+acd82(126)+acd82(121)
      acd82(126)=acd82(14)*acd82(126)
      acd82(128)=acd82(41)*acd82(42)
      acd82(129)=acd82(22)*acd82(23)
      acd82(130)=acd82(33)*acd82(124)
      acd82(128)=acd82(130)+acd82(128)+acd82(129)
      acd82(129)=acd82(10)*acd82(123)
      acd82(131)=acd82(39)*acd82(8)
      acd82(131)=acd82(131)-acd82(44)
      acd82(132)=-acd82(6)*acd82(131)
      acd82(129)=acd82(132)+acd82(129)+acd82(128)
      acd82(129)=acd82(5)*acd82(129)
      acd82(132)=acd82(22)*acd82(25)
      acd82(133)=acd82(25)*acd82(124)
      acd82(132)=acd82(132)-acd82(133)
      acd82(132)=acd82(132)*acd82(16)
      acd82(134)=-acd82(123)*acd82(116)
      acd82(119)=acd82(119)+acd82(129)+acd82(126)-acd82(132)+acd82(134)
      acd82(119)=acd82(4)*acd82(119)
      acd82(126)=acd82(123)+acd82(27)
      acd82(129)=acd82(21)*acd82(126)
      acd82(134)=acd82(53)*acd82(55)
      acd82(135)=acd82(1)*acd82(31)
      acd82(136)=-acd82(36)*acd82(111)
      acd82(129)=acd82(136)+acd82(135)+acd82(134)+acd82(129)
      acd82(129)=acd82(14)*acd82(129)
      acd82(126)=acd82(19)*acd82(126)
      acd82(135)=acd82(53)*acd82(54)
      acd82(136)=acd82(1)*acd82(29)
      acd82(113)=-acd82(36)*acd82(113)
      acd82(113)=acd82(113)+acd82(136)+acd82(135)+acd82(126)
      acd82(113)=acd82(5)*acd82(113)
      acd82(126)=acd82(1)-acd82(27)
      acd82(136)=acd82(126)*acd82(30)
      acd82(137)=acd82(123)*acd82(20)
      acd82(136)=acd82(136)-acd82(137)
      acd82(136)=acd82(136)*acd82(6)
      acd82(137)=acd82(26)*acd82(126)
      acd82(138)=acd82(3)*acd82(123)
      acd82(137)=acd82(138)+acd82(137)
      acd82(137)=acd82(1)*acd82(137)
      acd82(113)=acd82(113)+acd82(129)+acd82(137)-acd82(136)
      acd82(113)=acd82(2)*acd82(113)
      acd82(113)=acd82(113)+acd82(119)
      acd82(110)=-ninjaP*acd82(110)
      acd82(119)=acd82(8)*ninjaP
      acd82(129)=-acd82(5)*acd82(119)
      acd82(110)=acd82(129)+acd82(110)
      acd82(110)=acd82(9)*acd82(110)
      acd82(129)=-acd82(38)*acd82(117)
      acd82(115)=-ninjaP*acd82(115)
      acd82(119)=-acd82(11)*acd82(119)
      acd82(115)=acd82(115)+acd82(119)
      acd82(115)=acd82(6)*acd82(115)
      acd82(119)=acd82(47)*acd82(90)
      acd82(137)=acd82(60)*acd82(51)
      acd82(138)=-acd82(17)*acd82(91)
      acd82(139)=acd82(40)*acd82(50)
      acd82(140)=acd82(37)*acd82(45)
      acd82(110)=acd82(115)+acd82(140)+acd82(139)+acd82(138)+acd82(119)+acd82(1&
      &37)+acd82(129)+acd82(110)
      acd82(110)=acd82(2)*acd82(110)
      acd82(115)=ninjaP+acd82(71)
      acd82(119)=acd82(15)*acd82(115)
      acd82(129)=acd82(43)*acd82(89)
      acd82(137)=acd82(24)*acd82(56)
      acd82(138)=acd82(78)+acd82(80)
      acd82(139)=-acd82(34)*acd82(138)
      acd82(140)=acd82(38)*acd82(49)
      acd82(141)=-acd82(39)*acd82(120)
      acd82(111)=acd82(111)*ninjaP
      acd82(142)=-acd82(7)*acd82(111)
      acd82(119)=acd82(142)+acd82(141)+acd82(140)+acd82(139)+acd82(137)+acd82(9&
      &7)+acd82(129)+acd82(119)
      acd82(119)=acd82(14)*acd82(119)
      acd82(118)=-ninjaP*acd82(118)
      acd82(129)=acd82(42)*acd82(89)
      acd82(137)=acd82(23)*acd82(56)
      acd82(139)=acd82(71)*acd82(10)
      acd82(140)=acd82(33)*acd82(138)
      acd82(141)=acd82(38)*acd82(44)
      acd82(142)=-acd82(39)*acd82(122)
      acd82(118)=acd82(142)+acd82(141)+acd82(140)+acd82(139)+acd82(137)+acd82(9&
      &4)+acd82(129)+acd82(118)
      acd82(118)=acd82(5)*acd82(118)
      acd82(129)=-acd82(25)*acd82(60)
      acd82(137)=acd82(40)*acd82(24)
      acd82(139)=acd82(37)*acd82(23)
      acd82(129)=acd82(139)+acd82(137)+acd82(61)+acd82(129)
      acd82(129)=acd82(22)*acd82(129)
      acd82(137)=-acd82(39)*acd82(112)
      acd82(139)=-acd82(17)*acd82(60)
      acd82(140)=acd82(40)*acd82(15)
      acd82(141)=acd82(37)*acd82(10)
      acd82(139)=acd82(141)+acd82(139)+acd82(140)
      acd82(139)=acd82(139)*acd82(123)
      acd82(140)=-acd82(39)*acd82(117)
      acd82(141)=acd82(40)*acd82(49)
      acd82(142)=acd82(37)*acd82(44)
      acd82(140)=acd82(140)+acd82(142)+acd82(96)+acd82(141)
      acd82(140)=acd82(6)*acd82(140)
      acd82(141)=acd82(40)*acd82(43)
      acd82(142)=acd82(37)*acd82(42)
      acd82(141)=acd82(142)+acd82(93)+acd82(141)
      acd82(141)=acd82(41)*acd82(141)
      acd82(142)=-acd82(17)*acd82(115)
      acd82(138)=-acd82(56)+acd82(138)
      acd82(138)=acd82(25)*acd82(138)
      acd82(138)=acd82(138)+acd82(98)+acd82(142)
      acd82(138)=acd82(16)*acd82(138)
      acd82(133)=acd82(60)*acd82(133)
      acd82(142)=acd82(46)*acd82(95)
      acd82(125)=-acd82(40)*acd82(125)
      acd82(130)=acd82(37)*acd82(130)
      acd82(143)=acd82(1)*acd82(73)
      acd82(110)=acd82(110)+acd82(118)+acd82(119)+acd82(140)+acd82(143)+acd82(1&
      &39)+acd82(137)+acd82(138)+acd82(129)+acd82(141)+acd82(130)+acd82(125)+ac&
      &d82(142)+acd82(133)
      acd82(110)=acd82(4)*acd82(110)
      acd82(118)=acd82(38)*acd82(30)
      acd82(119)=acd82(3)*acd82(115)
      acd82(125)=-acd82(70)+2.0_ki*acd82(67)
      acd82(125)=acd82(26)*acd82(125)
      acd82(129)=acd82(40)*acd82(31)
      acd82(130)=acd82(37)*acd82(29)
      acd82(119)=acd82(130)+acd82(129)-acd82(118)+acd82(125)+acd82(76)+acd82(11&
      &9)
      acd82(119)=acd82(1)*acd82(119)
      acd82(125)=acd82(71)+acd82(70)
      acd82(129)=ninjaP+acd82(125)
      acd82(129)=acd82(21)*acd82(129)
      acd82(130)=acd82(55)*acd82(92)
      acd82(133)=acd82(67)*acd82(31)
      acd82(120)=-acd82(36)*acd82(120)
      acd82(111)=-acd82(18)*acd82(111)
      acd82(111)=acd82(111)+acd82(120)+acd82(133)+acd82(106)+acd82(130)+acd82(1&
      &29)
      acd82(111)=acd82(14)*acd82(111)
      acd82(114)=-ninjaP*acd82(114)
      acd82(120)=acd82(54)*acd82(92)
      acd82(129)=acd82(67)*acd82(29)
      acd82(125)=acd82(19)*acd82(125)
      acd82(122)=-acd82(36)*acd82(122)
      acd82(114)=acd82(122)+acd82(125)+acd82(129)+acd82(103)+acd82(120)+acd82(1&
      &14)
      acd82(114)=acd82(5)*acd82(114)
      acd82(120)=acd82(40)*acd82(21)
      acd82(122)=acd82(37)*acd82(19)
      acd82(120)=acd82(120)+acd82(122)
      acd82(122)=-acd82(26)*acd82(67)
      acd82(118)=acd82(122)+acd82(118)+acd82(120)
      acd82(118)=acd82(27)*acd82(118)
      acd82(112)=-acd82(36)*acd82(112)
      acd82(122)=acd82(3)*acd82(67)
      acd82(125)=acd82(38)*acd82(20)
      acd82(120)=acd82(125)+acd82(87)+acd82(122)+acd82(120)
      acd82(120)=acd82(120)*acd82(123)
      acd82(117)=-acd82(36)*acd82(117)
      acd82(115)=acd82(20)*acd82(115)
      acd82(122)=acd82(70)-acd82(67)
      acd82(122)=acd82(30)*acd82(122)
      acd82(115)=acd82(117)+acd82(122)+acd82(115)
      acd82(115)=acd82(6)*acd82(115)
      acd82(117)=acd82(107)*acd82(108)
      acd82(122)=acd82(46)*acd82(104)
      acd82(125)=acd82(40)*acd82(134)
      acd82(129)=acd82(37)*acd82(135)
      acd82(130)=acd82(41)*acd82(100)
      acd82(133)=acd82(22)*acd82(65)
      acd82(111)=acd82(114)+acd82(111)+acd82(115)+acd82(119)+acd82(120)+acd82(1&
      &12)+acd82(133)+acd82(118)+acd82(130)+acd82(129)+acd82(125)+acd82(117)+ac&
      &d82(122)
      acd82(111)=acd82(2)*acd82(111)
      acd82(112)=acd82(36)*acd82(121)
      acd82(114)=acd82(27)*acd82(21)
      acd82(114)=acd82(134)+acd82(114)
      acd82(114)=acd82(39)*acd82(114)
      acd82(115)=acd82(39)*acd82(21)
      acd82(117)=acd82(36)*acd82(15)
      acd82(115)=acd82(117)+acd82(88)+acd82(115)
      acd82(115)=acd82(115)*acd82(123)
      acd82(117)=acd82(6)*acd82(36)
      acd82(118)=-acd82(127)*acd82(117)
      acd82(119)=acd82(46)*acd82(105)
      acd82(120)=acd82(41)*acd82(101)
      acd82(121)=acd82(27)*acd82(82)
      acd82(122)=acd82(22)*acd82(66)
      acd82(125)=acd82(39)*acd82(31)
      acd82(125)=acd82(77)+acd82(125)
      acd82(125)=acd82(1)*acd82(125)
      acd82(112)=acd82(118)+acd82(125)+acd82(115)+acd82(112)+acd82(114)+acd82(1&
      &22)+acd82(121)+acd82(119)+acd82(120)
      acd82(112)=acd82(14)*acd82(112)
      acd82(114)=acd82(36)*acd82(128)
      acd82(115)=acd82(27)*acd82(19)
      acd82(115)=acd82(135)+acd82(115)
      acd82(115)=acd82(39)*acd82(115)
      acd82(118)=acd82(39)*acd82(19)
      acd82(119)=acd82(36)*acd82(10)
      acd82(118)=acd82(119)+acd82(85)+acd82(118)
      acd82(118)=acd82(118)*acd82(123)
      acd82(117)=-acd82(131)*acd82(117)
      acd82(119)=acd82(46)*acd82(102)
      acd82(120)=acd82(41)*acd82(99)
      acd82(121)=acd82(27)*acd82(81)
      acd82(122)=acd82(22)*acd82(63)
      acd82(125)=acd82(39)*acd82(29)
      acd82(125)=acd82(75)+acd82(125)
      acd82(125)=acd82(1)*acd82(125)
      acd82(114)=acd82(117)+acd82(125)+acd82(118)+acd82(114)+acd82(115)+acd82(1&
      &22)+acd82(121)+acd82(119)+acd82(120)
      acd82(114)=acd82(5)*acd82(114)
      acd82(115)=-acd82(79)*acd82(124)
      acd82(117)=acd82(46)*acd82(86)
      acd82(118)=acd82(41)*acd82(84)
      acd82(119)=acd82(22)*acd82(59)
      acd82(116)=-acd82(36)*acd82(116)
      acd82(120)=acd82(83)*acd82(123)
      acd82(115)=acd82(120)+acd82(116)+acd82(119)+acd82(118)+acd82(117)+acd82(1&
      &15)
      acd82(115)=acd82(115)*acd82(123)
      acd82(116)=acd82(39)*acd82(26)
      acd82(116)=acd82(116)+acd82(68)
      acd82(116)=acd82(116)*acd82(126)
      acd82(117)=acd82(39)*acd82(3)
      acd82(117)=acd82(72)+acd82(117)
      acd82(117)=acd82(117)*acd82(123)
      acd82(118)=-acd82(69)*acd82(124)
      acd82(119)=-acd82(41)*acd82(74)
      acd82(120)=acd82(22)*acd82(57)
      acd82(116)=acd82(117)+acd82(120)+acd82(119)+acd82(118)+acd82(116)
      acd82(116)=acd82(1)*acd82(116)
      acd82(117)=acd82(46)*acd82(64)
      acd82(118)=-acd82(41)*acd82(62)
      acd82(119)=acd82(27)*acd82(58)
      acd82(118)=acd82(119)-acd82(117)+acd82(118)
      acd82(118)=acd82(22)*acd82(118)
      acd82(119)=acd82(62)*acd82(124)
      acd82(120)=acd82(27)*acd82(74)
      acd82(119)=acd82(120)+acd82(119)
      acd82(119)=acd82(41)*acd82(119)
      acd82(117)=acd82(117)*acd82(124)
      acd82(120)=-acd82(36)*acd82(132)
      acd82(121)=-acd82(39)*acd82(136)
      acd82(110)=acd82(110)+acd82(111)+acd82(114)+acd82(112)+acd82(121)+acd82(1&
      &16)+acd82(115)+acd82(120)+acd82(118)+acd82(117)+acd82(119)
      brack(ninjaidxt1mu0)=acd82(113)
      brack(ninjaidxt0mu0)=acd82(110)
      brack(ninjaidxt0mu2)=acd82(109)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d82h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd82h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d82h0l131
