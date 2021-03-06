module     p0_dbaru_epnebbbarg_d69h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d69h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd69h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd69
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd69(1)=dotproduct(ninjaE3,spvak1k2)
      acd69(2)=dotproduct(ninjaE3,spvak2k7)
      acd69(3)=dotproduct(ninjaE3,spvak4k3)
      acd69(4)=dotproduct(ninjaE3,spval5k2)
      acd69(5)=abb69(70)
      acd69(6)=dotproduct(ninjaE3,spval6k2)
      acd69(7)=abb69(118)
      acd69(8)=-acd69(5)*acd69(4)
      acd69(9)=acd69(7)*acd69(6)
      acd69(8)=acd69(8)+acd69(9)
      acd69(8)=acd69(1)*acd69(8)*acd69(3)*acd69(2)
      brack(ninjaidxt2mu0)=acd69(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd69h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(139) :: acd69
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd69(1)=dotproduct(k2,ninjaE3)
      acd69(2)=dotproduct(ninjaE3,spvak4k3)
      acd69(3)=abb69(95)
      acd69(4)=dotproduct(ninjaE3,spval5k2)
      acd69(5)=abb69(69)
      acd69(6)=dotproduct(ninjaE3,spval6k2)
      acd69(7)=abb69(111)
      acd69(8)=dotproduct(ninjaE3,spvak2k7)
      acd69(9)=dotproduct(ninjaE4,spvak1k2)
      acd69(10)=abb69(70)
      acd69(11)=dotproduct(ninjaE3,spvak1k2)
      acd69(12)=dotproduct(ninjaE4,spval5k2)
      acd69(13)=dotproduct(ninjaE4,spval6k2)
      acd69(14)=abb69(118)
      acd69(15)=dotproduct(ninjaE4,spvak4k3)
      acd69(16)=abb69(14)
      acd69(17)=dotproduct(ninjaE3,spvak4k2)
      acd69(18)=abb69(41)
      acd69(19)=abb69(28)
      acd69(20)=dotproduct(ninjaE4,spvak2k7)
      acd69(21)=abb69(78)
      acd69(22)=abb69(101)
      acd69(23)=abb69(74)
      acd69(24)=abb69(84)
      acd69(25)=abb69(39)
      acd69(26)=abb69(32)
      acd69(27)=abb69(117)
      acd69(28)=dotproduct(k3,ninjaE3)
      acd69(29)=dotproduct(k4,ninjaE3)
      acd69(30)=dotproduct(l5,ninjaE3)
      acd69(31)=abb69(86)
      acd69(32)=dotproduct(l6,ninjaE3)
      acd69(33)=dotproduct(ninjaA,ninjaE3)
      acd69(34)=abb69(24)
      acd69(35)=abb69(40)
      acd69(36)=abb69(37)
      acd69(37)=abb69(12)
      acd69(38)=abb69(93)
      acd69(39)=abb69(61)
      acd69(40)=abb69(66)
      acd69(41)=abb69(16)
      acd69(42)=abb69(36)
      acd69(43)=dotproduct(k7,ninjaE3)
      acd69(44)=abb69(104)
      acd69(45)=abb69(88)
      acd69(46)=dotproduct(ninjaA,spvak2k7)
      acd69(47)=dotproduct(ninjaA,spvak4k3)
      acd69(48)=dotproduct(ninjaA,spval5k2)
      acd69(49)=dotproduct(ninjaA,spvak1k2)
      acd69(50)=dotproduct(ninjaA,spval6k2)
      acd69(51)=abb69(10)
      acd69(52)=abb69(54)
      acd69(53)=abb69(38)
      acd69(54)=abb69(15)
      acd69(55)=abb69(22)
      acd69(56)=dotproduct(ninjaE3,spvak1k3)
      acd69(57)=abb69(52)
      acd69(58)=abb69(43)
      acd69(59)=abb69(50)
      acd69(60)=abb69(51)
      acd69(61)=dotproduct(k2,ninjaA)
      acd69(62)=abb69(99)
      acd69(63)=dotproduct(k3,ninjaA)
      acd69(64)=abb69(112)
      acd69(65)=dotproduct(k4,ninjaA)
      acd69(66)=dotproduct(l5,ninjaA)
      acd69(67)=abb69(47)
      acd69(68)=dotproduct(l6,ninjaA)
      acd69(69)=abb69(89)
      acd69(70)=dotproduct(ninjaA,ninjaA)
      acd69(71)=abb69(62)
      acd69(72)=dotproduct(ninjaA,spvak4k2)
      acd69(73)=abb69(35)
      acd69(74)=abb69(79)
      acd69(75)=abb69(57)
      acd69(76)=abb69(33)
      acd69(77)=dotproduct(ninjaE3,spvak7k2)
      acd69(78)=abb69(42)
      acd69(79)=abb69(53)
      acd69(80)=abb69(48)
      acd69(81)=abb69(19)
      acd69(82)=abb69(45)
      acd69(83)=abb69(11)
      acd69(84)=dotproduct(k7,ninjaA)
      acd69(85)=abb69(31)
      acd69(86)=abb69(106)
      acd69(87)=abb69(148)
      acd69(88)=abb69(124)
      acd69(89)=abb69(49)
      acd69(90)=abb69(18)
      acd69(91)=abb69(94)
      acd69(92)=abb69(68)
      acd69(93)=abb69(30)
      acd69(94)=abb69(72)
      acd69(95)=abb69(91)
      acd69(96)=dotproduct(ninjaA,spvak1k3)
      acd69(97)=abb69(21)
      acd69(98)=abb69(13)
      acd69(99)=abb69(27)
      acd69(100)=abb69(29)
      acd69(101)=abb69(26)
      acd69(102)=abb69(46)
      acd69(103)=abb69(102)
      acd69(104)=abb69(17)
      acd69(105)=abb69(25)
      acd69(106)=abb69(64)
      acd69(107)=abb69(130)
      acd69(108)=acd69(14)*acd69(13)
      acd69(109)=-acd69(10)*acd69(12)
      acd69(109)=acd69(108)+acd69(109)
      acd69(110)=acd69(2)*acd69(11)
      acd69(109)=acd69(109)*acd69(110)
      acd69(111)=acd69(11)*acd69(14)
      acd69(112)=acd69(111)*acd69(15)
      acd69(113)=acd69(2)*acd69(9)
      acd69(114)=acd69(113)*acd69(14)
      acd69(112)=acd69(19)+acd69(112)+acd69(114)
      acd69(114)=acd69(6)*acd69(112)
      acd69(115)=acd69(11)*acd69(10)
      acd69(116)=acd69(115)*acd69(15)
      acd69(117)=-acd69(10)*acd69(113)
      acd69(116)=acd69(117)+acd69(16)-acd69(116)
      acd69(116)=acd69(4)*acd69(116)
      acd69(117)=acd69(17)*acd69(18)
      acd69(109)=acd69(116)+acd69(114)+acd69(117)+acd69(109)
      acd69(109)=acd69(8)*acd69(109)
      acd69(114)=acd69(2)*acd69(3)
      acd69(116)=acd69(6)*acd69(7)
      acd69(117)=acd69(4)*acd69(5)
      acd69(114)=acd69(117)+acd69(114)+acd69(116)
      acd69(114)=acd69(1)*acd69(114)
      acd69(116)=acd69(17)*acd69(24)
      acd69(111)=acd69(111)*acd69(20)
      acd69(111)=acd69(111)+acd69(22)
      acd69(117)=acd69(2)*acd69(111)
      acd69(116)=acd69(116)+acd69(117)
      acd69(116)=acd69(6)*acd69(116)
      acd69(117)=acd69(17)*acd69(23)
      acd69(118)=acd69(115)*acd69(20)
      acd69(118)=acd69(21)-acd69(118)
      acd69(118)=acd69(2)*acd69(118)
      acd69(117)=acd69(117)+acd69(118)
      acd69(117)=acd69(4)*acd69(117)
      acd69(109)=acd69(109)+acd69(114)+acd69(116)+acd69(117)
      acd69(114)=acd69(28)+acd69(29)
      acd69(116)=-acd69(42)*acd69(114)
      acd69(117)=acd69(56)*acd69(60)
      acd69(116)=acd69(117)+acd69(116)
      acd69(117)=acd69(17)*acd69(58)
      acd69(118)=acd69(47)*acd69(14)
      acd69(118)=acd69(118)+acd69(59)
      acd69(119)=acd69(11)*acd69(118)
      acd69(120)=2.0_ki*acd69(33)
      acd69(121)=acd69(19)*acd69(120)
      acd69(122)=acd69(14)*acd69(49)
      acd69(122)=acd69(122)+acd69(53)
      acd69(123)=acd69(2)*acd69(122)
      acd69(117)=acd69(123)+acd69(121)+acd69(119)+acd69(117)+acd69(116)
      acd69(117)=acd69(6)*acd69(117)
      acd69(119)=acd69(41)*acd69(114)
      acd69(121)=acd69(56)*acd69(57)
      acd69(119)=acd69(121)+acd69(119)
      acd69(121)=acd69(17)*acd69(54)
      acd69(123)=acd69(47)*acd69(10)
      acd69(123)=acd69(123)-acd69(55)
      acd69(124)=-acd69(11)*acd69(123)
      acd69(125)=acd69(16)*acd69(120)
      acd69(126)=acd69(10)*acd69(49)
      acd69(126)=acd69(126)-acd69(51)
      acd69(127)=-acd69(2)*acd69(126)
      acd69(121)=acd69(127)+acd69(125)+acd69(124)+acd69(121)+acd69(119)
      acd69(121)=acd69(4)*acd69(121)
      acd69(124)=acd69(17)*acd69(35)
      acd69(125)=acd69(6)*acd69(36)
      acd69(127)=acd69(4)*acd69(34)
      acd69(124)=acd69(127)+acd69(124)+acd69(125)
      acd69(124)=acd69(1)*acd69(124)
      acd69(125)=acd69(50)*acd69(14)
      acd69(127)=acd69(48)*acd69(10)
      acd69(125)=acd69(52)+acd69(125)-acd69(127)
      acd69(110)=acd69(125)*acd69(110)
      acd69(127)=acd69(120)*acd69(17)
      acd69(128)=acd69(18)*acd69(127)
      acd69(110)=acd69(124)+acd69(121)+acd69(117)+acd69(128)+acd69(110)
      acd69(110)=acd69(8)*acd69(110)
      acd69(117)=acd69(27)*acd69(114)
      acd69(121)=acd69(17)*acd69(40)
      acd69(124)=acd69(7)*acd69(120)
      acd69(128)=acd69(2)*acd69(38)
      acd69(121)=acd69(128)+acd69(124)+acd69(121)+acd69(117)
      acd69(121)=acd69(6)*acd69(121)
      acd69(124)=acd69(26)*acd69(114)
      acd69(128)=acd69(17)*acd69(39)
      acd69(129)=acd69(5)*acd69(120)
      acd69(130)=acd69(2)*acd69(37)
      acd69(128)=acd69(130)+acd69(129)+acd69(128)-acd69(124)
      acd69(128)=acd69(4)*acd69(128)
      acd69(129)=acd69(2)*acd69(25)
      acd69(130)=-acd69(6)*acd69(27)
      acd69(131)=acd69(4)*acd69(26)
      acd69(129)=acd69(131)+acd69(129)+acd69(130)
      acd69(129)=acd69(1)*acd69(129)
      acd69(130)=acd69(30)+acd69(32)
      acd69(131)=acd69(130)*acd69(31)
      acd69(132)=acd69(3)*acd69(120)
      acd69(132)=acd69(131)+acd69(132)
      acd69(132)=acd69(2)*acd69(132)
      acd69(121)=acd69(129)+acd69(128)+acd69(132)+acd69(121)
      acd69(121)=acd69(1)*acd69(121)
      acd69(128)=acd69(43)*acd69(45)
      acd69(129)=acd69(11)*acd69(46)
      acd69(132)=acd69(14)*acd69(129)
      acd69(133)=acd69(22)*acd69(120)
      acd69(128)=acd69(133)+acd69(128)+acd69(132)
      acd69(128)=acd69(2)*acd69(128)
      acd69(132)=acd69(24)*acd69(127)
      acd69(128)=acd69(132)+acd69(128)
      acd69(128)=acd69(6)*acd69(128)
      acd69(132)=acd69(43)*acd69(44)
      acd69(133)=-acd69(10)*acd69(129)
      acd69(134)=acd69(21)*acd69(120)
      acd69(132)=acd69(134)+acd69(132)+acd69(133)
      acd69(132)=acd69(2)*acd69(132)
      acd69(127)=acd69(23)*acd69(127)
      acd69(127)=acd69(127)+acd69(132)
      acd69(127)=acd69(4)*acd69(127)
      acd69(110)=acd69(110)+acd69(121)+acd69(128)+acd69(127)
      acd69(121)=acd69(10)*ninjaP
      acd69(113)=-acd69(113)*acd69(121)
      acd69(127)=ninjaP+acd69(70)
      acd69(128)=acd69(16)*acd69(127)
      acd69(132)=acd69(57)*acd69(96)
      acd69(133)=acd69(72)*acd69(54)
      acd69(134)=acd69(63)+acd69(65)
      acd69(135)=acd69(41)*acd69(134)
      acd69(136)=acd69(49)*acd69(55)
      acd69(137)=acd69(61)*acd69(34)
      acd69(138)=-acd69(47)*acd69(126)
      acd69(115)=acd69(115)*ninjaP
      acd69(139)=-acd69(15)*acd69(115)
      acd69(113)=acd69(113)+acd69(139)+acd69(138)+acd69(137)+acd69(136)+acd69(1&
      &35)+acd69(133)+acd69(98)+acd69(132)+acd69(128)
      acd69(113)=acd69(4)*acd69(113)
      acd69(112)=ninjaP*acd69(112)
      acd69(128)=acd69(60)*acd69(96)
      acd69(132)=acd69(72)*acd69(58)
      acd69(133)=-acd69(42)*acd69(134)
      acd69(135)=acd69(70)*acd69(19)
      acd69(136)=acd69(49)*acd69(59)
      acd69(137)=acd69(61)*acd69(36)
      acd69(138)=acd69(47)*acd69(122)
      acd69(112)=acd69(138)+acd69(137)+acd69(136)+acd69(135)+acd69(133)+acd69(1&
      &32)+acd69(101)+acd69(128)+acd69(112)
      acd69(112)=acd69(6)*acd69(112)
      acd69(128)=acd69(18)*acd69(127)
      acd69(132)=acd69(61)*acd69(35)
      acd69(133)=acd69(50)*acd69(58)
      acd69(135)=acd69(48)*acd69(54)
      acd69(128)=acd69(135)+acd69(133)+acd69(132)+acd69(99)+acd69(128)
      acd69(128)=acd69(17)*acd69(128)
      acd69(108)=ninjaP*acd69(108)
      acd69(121)=-acd69(12)*acd69(121)
      acd69(108)=acd69(108)+acd69(121)
      acd69(108)=acd69(11)*acd69(108)
      acd69(121)=acd69(49)*acd69(52)
      acd69(132)=acd69(50)*acd69(122)
      acd69(133)=-acd69(48)*acd69(126)
      acd69(108)=acd69(108)+acd69(133)+acd69(132)+acd69(97)+acd69(121)
      acd69(108)=acd69(2)*acd69(108)
      acd69(121)=acd69(47)*acd69(125)
      acd69(132)=acd69(50)*acd69(59)
      acd69(133)=acd69(48)*acd69(55)
      acd69(121)=acd69(121)+acd69(133)+acd69(100)+acd69(132)
      acd69(121)=acd69(11)*acd69(121)
      acd69(132)=acd69(72)*acd69(18)
      acd69(133)=acd69(50)*acd69(19)
      acd69(135)=acd69(48)*acd69(16)
      acd69(132)=acd69(135)+acd69(133)+acd69(90)+acd69(132)
      acd69(132)=acd69(132)*acd69(120)
      acd69(133)=acd69(72)*acd69(35)
      acd69(135)=acd69(50)*acd69(36)
      acd69(136)=acd69(48)*acd69(34)
      acd69(133)=acd69(136)+acd69(135)+acd69(73)+acd69(133)
      acd69(133)=acd69(1)*acd69(133)
      acd69(135)=acd69(50)*acd69(116)
      acd69(136)=acd69(48)*acd69(119)
      acd69(137)=-acd69(83)*acd69(130)
      acd69(138)=acd69(81)*acd69(114)
      acd69(139)=acd69(56)*acd69(102)
      acd69(108)=acd69(133)+acd69(113)+acd69(112)+acd69(108)+acd69(132)+acd69(1&
      &21)+acd69(128)+acd69(136)+acd69(135)+acd69(139)+acd69(138)+acd69(137)
      acd69(108)=acd69(8)*acd69(108)
      acd69(112)=acd69(3)*acd69(127)
      acd69(113)=acd69(68)+acd69(66)
      acd69(113)=acd69(31)*acd69(113)
      acd69(121)=2.0_ki*acd69(61)
      acd69(128)=acd69(25)*acd69(121)
      acd69(132)=acd69(50)*acd69(38)
      acd69(133)=acd69(48)*acd69(37)
      acd69(112)=acd69(133)+acd69(132)+acd69(128)+acd69(74)+acd69(113)+acd69(11&
      &2)
      acd69(112)=acd69(2)*acd69(112)
      acd69(113)=acd69(121)-acd69(134)
      acd69(121)=-acd69(27)*acd69(113)
      acd69(128)=acd69(7)*acd69(127)
      acd69(132)=acd69(72)*acd69(40)
      acd69(133)=acd69(47)*acd69(38)
      acd69(134)=acd69(46)*acd69(36)
      acd69(121)=acd69(134)+acd69(133)+acd69(79)+acd69(132)+acd69(121)+acd69(12&
      &8)
      acd69(121)=acd69(6)*acd69(121)
      acd69(113)=acd69(26)*acd69(113)
      acd69(128)=acd69(5)*acd69(127)
      acd69(132)=acd69(72)*acd69(39)
      acd69(133)=acd69(47)*acd69(37)
      acd69(134)=acd69(46)*acd69(34)
      acd69(113)=acd69(134)+acd69(133)+acd69(75)+acd69(132)+acd69(113)+acd69(12&
      &8)
      acd69(113)=acd69(4)*acd69(113)
      acd69(128)=acd69(50)*acd69(40)
      acd69(132)=acd69(48)*acd69(39)
      acd69(133)=acd69(46)*acd69(35)
      acd69(128)=acd69(133)+acd69(132)+acd69(76)+acd69(128)
      acd69(128)=acd69(17)*acd69(128)
      acd69(132)=acd69(50)*acd69(7)
      acd69(133)=acd69(48)*acd69(5)
      acd69(134)=acd69(47)*acd69(3)
      acd69(132)=acd69(134)+acd69(133)+acd69(71)+acd69(132)
      acd69(132)=acd69(132)*acd69(120)
      acd69(133)=-acd69(50)*acd69(27)
      acd69(134)=acd69(48)*acd69(26)
      acd69(135)=acd69(47)*acd69(25)
      acd69(133)=acd69(135)+acd69(134)+acd69(62)+acd69(133)
      acd69(133)=acd69(1)*acd69(133)
      acd69(134)=acd69(47)*acd69(31)
      acd69(134)=acd69(134)+acd69(67)
      acd69(134)=acd69(130)*acd69(134)
      acd69(135)=acd69(77)*acd69(78)
      acd69(136)=acd69(43)*acd69(69)
      acd69(135)=acd69(135)+acd69(136)
      acd69(136)=-acd69(64)*acd69(114)
      acd69(137)=acd69(50)*acd69(117)
      acd69(138)=-acd69(48)*acd69(124)
      acd69(112)=acd69(133)+acd69(113)+acd69(121)+acd69(112)+acd69(132)+acd69(1&
      &28)+acd69(138)+acd69(137)+acd69(135)+acd69(136)+acd69(134)
      acd69(112)=acd69(1)*acd69(112)
      acd69(111)=ninjaP*acd69(111)
      acd69(113)=acd69(45)*acd69(84)
      acd69(121)=acd69(70)*acd69(22)
      acd69(128)=acd69(61)*acd69(38)
      acd69(122)=acd69(46)*acd69(122)
      acd69(111)=acd69(122)+acd69(128)+acd69(121)+acd69(105)+acd69(113)+acd69(1&
      &11)
      acd69(111)=acd69(2)*acd69(111)
      acd69(113)=acd69(72)*acd69(24)
      acd69(121)=acd69(61)*acd69(7)
      acd69(122)=acd69(47)*acd69(22)
      acd69(128)=acd69(46)*acd69(19)
      acd69(113)=acd69(128)+acd69(122)+acd69(121)+acd69(95)+acd69(113)
      acd69(113)=acd69(113)*acd69(120)
      acd69(121)=acd69(24)*acd69(127)
      acd69(122)=acd69(61)*acd69(40)
      acd69(128)=acd69(46)*acd69(58)
      acd69(121)=acd69(128)+acd69(122)+acd69(121)
      acd69(121)=acd69(17)*acd69(121)
      acd69(116)=acd69(46)*acd69(116)
      acd69(118)=acd69(118)*acd69(129)
      acd69(122)=acd69(47)*acd69(45)
      acd69(122)=acd69(122)+acd69(88)
      acd69(122)=acd69(43)*acd69(122)
      acd69(128)=acd69(77)*acd69(107)
      acd69(117)=acd69(61)*acd69(117)
      acd69(111)=acd69(111)+acd69(113)+acd69(118)+acd69(121)+acd69(116)+acd69(1&
      &17)+acd69(128)+acd69(122)
      acd69(111)=acd69(6)*acd69(111)
      acd69(113)=acd69(21)*acd69(127)
      acd69(116)=acd69(44)*acd69(84)
      acd69(117)=acd69(61)*acd69(37)
      acd69(118)=-acd69(46)*acd69(126)
      acd69(115)=-acd69(20)*acd69(115)
      acd69(113)=acd69(115)+acd69(118)+acd69(117)+acd69(103)+acd69(116)+acd69(1&
      &13)
      acd69(113)=acd69(2)*acd69(113)
      acd69(115)=acd69(72)*acd69(23)
      acd69(116)=acd69(61)*acd69(5)
      acd69(117)=acd69(47)*acd69(21)
      acd69(118)=acd69(46)*acd69(16)
      acd69(115)=acd69(118)+acd69(117)+acd69(116)+acd69(92)+acd69(115)
      acd69(115)=acd69(115)*acd69(120)
      acd69(116)=acd69(23)*acd69(127)
      acd69(117)=acd69(61)*acd69(39)
      acd69(118)=acd69(46)*acd69(54)
      acd69(116)=acd69(118)+acd69(117)+acd69(116)
      acd69(116)=acd69(17)*acd69(116)
      acd69(117)=acd69(46)*acd69(119)
      acd69(118)=-acd69(123)*acd69(129)
      acd69(119)=acd69(47)*acd69(44)
      acd69(119)=acd69(119)+acd69(87)
      acd69(119)=acd69(43)*acd69(119)
      acd69(121)=acd69(77)*acd69(106)
      acd69(122)=-acd69(61)*acd69(124)
      acd69(113)=acd69(113)+acd69(115)+acd69(118)+acd69(116)+acd69(117)+acd69(1&
      &22)+acd69(121)+acd69(119)
      acd69(113)=acd69(4)*acd69(113)
      acd69(115)=acd69(50)*acd69(24)
      acd69(116)=acd69(48)*acd69(23)
      acd69(117)=acd69(46)*acd69(18)
      acd69(115)=acd69(117)+acd69(116)+acd69(93)+acd69(115)
      acd69(115)=acd69(17)*acd69(115)
      acd69(116)=-acd69(82)*acd69(130)
      acd69(117)=acd69(80)*acd69(114)
      acd69(118)=acd69(77)*acd69(94)
      acd69(119)=acd69(43)*acd69(85)
      acd69(121)=acd69(89)*acd69(120)
      acd69(115)=acd69(121)+acd69(115)+acd69(119)+acd69(118)+acd69(117)+acd69(1&
      &16)
      acd69(115)=acd69(115)*acd69(120)
      acd69(116)=acd69(61)*acd69(3)
      acd69(117)=acd69(50)*acd69(22)
      acd69(118)=acd69(48)*acd69(21)
      acd69(116)=acd69(118)+acd69(117)+acd69(91)+acd69(116)
      acd69(116)=acd69(116)*acd69(120)
      acd69(117)=acd69(50)*acd69(45)
      acd69(118)=acd69(48)*acd69(44)
      acd69(117)=acd69(118)+acd69(117)+acd69(86)
      acd69(117)=acd69(43)*acd69(117)
      acd69(118)=acd69(125)*acd69(129)
      acd69(119)=acd69(77)*acd69(104)
      acd69(120)=acd69(61)*acd69(131)
      acd69(116)=acd69(116)+acd69(118)+acd69(120)+acd69(119)+acd69(117)
      acd69(116)=acd69(2)*acd69(116)
      acd69(114)=-acd69(135)*acd69(114)
      acd69(108)=acd69(108)+acd69(112)+acd69(113)+acd69(111)+acd69(116)+acd69(1&
      &15)+acd69(114)
      brack(ninjaidxt1mu0)=acd69(110)
      brack(ninjaidxt0mu0)=acd69(108)
      brack(ninjaidxt0mu2)=acd69(109)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d69h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd69h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d69h0l131
