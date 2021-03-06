module     p4_ubaru_epnemumnmubarg_d65h6l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity6d65h6l132.f90
   ! generator: buildfortran_tn3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2x0mu0 = 0
   integer, parameter :: ninjaidxt1x0mu0 = 1
   integer, parameter :: ninjaidxt1x1mu0 = 2
   integer, parameter :: ninjaidxt0x0mu0 = 3
   integer, parameter :: ninjaidxt0x0mu2 = 4
   integer, parameter :: ninjaidxt0x1mu0 = 5
   integer, parameter :: ninjaidxt0x2mu0 = 6
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd65h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(125) :: acd65
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd65(1)=dotproduct(k1,ninjaE3)
      acd65(2)=dotproduct(k2,ninjaE3)
      acd65(3)=abb65(334)
      acd65(4)=dotproduct(ninjaE3,spvak7k2)
      acd65(5)=abb65(32)
      acd65(6)=dotproduct(ninjaE3,spvak2k3)
      acd65(7)=abb65(161)
      acd65(8)=dotproduct(ninjaE3,spvak2k6)
      acd65(9)=abb65(167)
      acd65(10)=dotproduct(ninjaE3,spvak7k3)
      acd65(11)=abb65(96)
      acd65(12)=dotproduct(ninjaE3,spvak4k2)
      acd65(13)=abb65(94)
      acd65(14)=dotproduct(ninjaE3,spvak7k1)
      acd65(15)=abb65(90)
      acd65(16)=dotproduct(ninjaE3,spvak3k2)
      acd65(17)=abb65(56)
      acd65(18)=dotproduct(ninjaE3,spvak5k1)
      acd65(19)=abb65(391)
      acd65(20)=dotproduct(ninjaE3,spvak6k2)
      acd65(21)=abb65(163)
      acd65(22)=dotproduct(ninjaE3,spvak7k6)
      acd65(23)=abb65(63)
      acd65(24)=dotproduct(ninjaE3,spvak5k2)
      acd65(25)=abb65(406)
      acd65(26)=dotproduct(ninjaE3,spvak4k1)
      acd65(27)=abb65(224)
      acd65(28)=dotproduct(ninjaE3,spvak7k4)
      acd65(29)=abb65(403)
      acd65(30)=dotproduct(ninjaE3,spvak7k5)
      acd65(31)=abb65(399)
      acd65(32)=dotproduct(k3,ninjaE3)
      acd65(33)=abb65(276)
      acd65(34)=dotproduct(k4,ninjaE3)
      acd65(35)=dotproduct(k5,ninjaE3)
      acd65(36)=dotproduct(k6,ninjaE3)
      acd65(37)=dotproduct(k7,ninjaE3)
      acd65(38)=dotproduct(ninjaA0,ninjaE3)
      acd65(39)=dotproduct(ninjaE3,spvak2k1)
      acd65(40)=abb65(41)
      acd65(41)=dotproduct(ninjaE3,spvak4k3)
      acd65(42)=abb65(49)
      acd65(43)=dotproduct(ninjaE3,spvak5k3)
      acd65(44)=abb65(405)
      acd65(45)=dotproduct(ninjaE3,spvak4k6)
      acd65(46)=abb65(58)
      acd65(47)=dotproduct(ninjaE3,spvak5k6)
      acd65(48)=abb65(381)
      acd65(49)=abb65(85)
      acd65(50)=dotproduct(ninjaE3,spvak2k4)
      acd65(51)=abb65(160)
      acd65(52)=abb65(199)
      acd65(53)=dotproduct(ninjaE3,spvak2k5)
      acd65(54)=abb65(130)
      acd65(55)=abb65(171)
      acd65(56)=abb65(36)
      acd65(57)=abb65(416)
      acd65(58)=abb65(105)
      acd65(59)=dotproduct(ninjaE3,spvak3k1)
      acd65(60)=abb65(88)
      acd65(61)=dotproduct(ninjaE3,spvak6k1)
      acd65(62)=abb65(251)
      acd65(63)=abb65(174)
      acd65(64)=abb65(29)
      acd65(65)=abb65(69)
      acd65(66)=abb65(158)
      acd65(67)=abb65(111)
      acd65(68)=abb65(37)
      acd65(69)=abb65(64)
      acd65(70)=abb65(181)
      acd65(71)=abb65(76)
      acd65(72)=abb65(412)
      acd65(73)=abb65(239)
      acd65(74)=abb65(392)
      acd65(75)=abb65(408)
      acd65(76)=abb65(35)
      acd65(77)=abb65(404)
      acd65(78)=abb65(97)
      acd65(79)=abb65(401)
      acd65(80)=abb65(264)
      acd65(81)=abb65(12)
      acd65(82)=abb65(13)
      acd65(83)=abb65(15)
      acd65(84)=abb65(16)
      acd65(85)=abb65(20)
      acd65(86)=abb65(82)
      acd65(87)=abb65(22)
      acd65(88)=abb65(42)
      acd65(89)=abb65(53)
      acd65(90)=dotproduct(ninjaE3,spvak2k7)
      acd65(91)=abb65(70)
      acd65(92)=abb65(325)
      acd65(93)=abb65(17)
      acd65(94)=abb65(18)
      acd65(95)=abb65(19)
      acd65(96)=abb65(21)
      acd65(97)=abb65(23)
      acd65(98)=abb65(24)
      acd65(99)=abb65(26)
      acd65(100)=abb65(39)
      acd65(101)=abb65(60)
      acd65(102)=dotproduct(ninjaE3,spvak1k2)
      acd65(103)=abb65(141)
      acd65(104)=abb65(51)
      acd65(105)=abb65(110)
      acd65(106)=abb65(389)
      acd65(107)=acd65(14)*acd65(15)
      acd65(108)=acd65(61)*acd65(80)
      acd65(109)=acd65(59)*acd65(78)
      acd65(110)=acd65(53)*acd65(66)
      acd65(111)=acd65(50)*acd65(63)
      acd65(112)=acd65(30)*acd65(79)
      acd65(113)=acd65(28)*acd65(77)
      acd65(114)=acd65(24)*acd65(75)
      acd65(115)=acd65(22)*acd65(74)
      acd65(116)=acd65(20)*acd65(73)
      acd65(117)=acd65(16)*acd65(71)
      acd65(118)=acd65(12)*acd65(70)
      acd65(119)=acd65(10)*acd65(69)
      acd65(120)=acd65(26)*acd65(76)
      acd65(121)=acd65(18)*acd65(72)
      acd65(122)=acd65(8)*acd65(67)
      acd65(123)=acd65(6)*acd65(65)
      acd65(124)=acd65(39)*acd65(68)
      acd65(125)=acd65(4)*acd65(64)
      acd65(108)=acd65(125)+acd65(107)+acd65(124)+acd65(123)+acd65(122)+acd65(1&
      &21)+acd65(120)+acd65(119)+acd65(118)+acd65(117)+acd65(116)+acd65(115)+ac&
      &d65(114)+acd65(113)+acd65(112)+acd65(111)+acd65(110)+acd65(108)+acd65(10&
      &9)
      acd65(109)=2.0_ki*acd65(38)
      acd65(108)=acd65(108)*acd65(109)
      acd65(110)=acd65(30)*acd65(31)
      acd65(111)=acd65(28)*acd65(29)
      acd65(112)=acd65(24)*acd65(25)
      acd65(113)=acd65(22)*acd65(23)
      acd65(114)=acd65(20)*acd65(21)
      acd65(115)=acd65(16)*acd65(17)
      acd65(116)=acd65(12)*acd65(13)
      acd65(117)=acd65(10)*acd65(11)
      acd65(118)=acd65(26)*acd65(27)
      acd65(119)=acd65(18)*acd65(19)
      acd65(120)=acd65(8)*acd65(9)
      acd65(121)=acd65(6)*acd65(7)
      acd65(122)=acd65(4)*acd65(5)
      acd65(107)=acd65(113)-acd65(110)+acd65(114)-acd65(115)+acd65(111)-acd65(1&
      &12)-acd65(120)+acd65(121)-acd65(122)-acd65(107)+acd65(116)-acd65(117)+ac&
      &d65(118)-acd65(119)
      acd65(110)=-acd65(1)*acd65(107)
      acd65(109)=-acd65(2)-acd65(109)-acd65(1)-acd65(37)
      acd65(109)=acd65(3)*acd65(109)
      acd65(111)=acd65(47)*acd65(48)
      acd65(112)=acd65(45)*acd65(46)
      acd65(113)=acd65(43)*acd65(44)
      acd65(114)=acd65(41)*acd65(42)
      acd65(115)=-acd65(32)-acd65(34)+acd65(35)+acd65(36)
      acd65(116)=acd65(33)*acd65(115)
      acd65(117)=acd65(39)*acd65(40)
      acd65(107)=acd65(117)+acd65(116)+acd65(114)+acd65(113)+acd65(111)+acd65(1&
      &12)+acd65(109)-acd65(107)
      acd65(107)=acd65(2)*acd65(107)
      acd65(109)=acd65(91)*acd65(90)
      acd65(111)=acd65(61)*acd65(92)
      acd65(112)=acd65(59)*acd65(89)
      acd65(113)=acd65(53)*acd65(83)
      acd65(114)=acd65(50)*acd65(81)
      acd65(116)=acd65(26)*acd65(88)
      acd65(117)=acd65(18)*acd65(87)
      acd65(118)=acd65(8)*acd65(84)
      acd65(119)=acd65(6)*acd65(82)
      acd65(120)=acd65(39)*acd65(85)
      acd65(121)=acd65(14)*acd65(86)
      acd65(109)=acd65(121)+acd65(120)+acd65(119)+acd65(118)+acd65(117)+acd65(1&
      &16)+acd65(114)+acd65(113)+acd65(112)+acd65(109)+acd65(111)
      acd65(109)=acd65(4)*acd65(109)
      acd65(111)=acd65(91)*acd65(102)
      acd65(112)=acd65(30)*acd65(101)
      acd65(113)=acd65(28)*acd65(100)
      acd65(114)=acd65(24)*acd65(99)
      acd65(116)=acd65(22)*acd65(98)
      acd65(117)=acd65(20)*acd65(97)
      acd65(118)=acd65(16)*acd65(96)
      acd65(119)=acd65(12)*acd65(94)
      acd65(120)=acd65(10)*acd65(93)
      acd65(121)=acd65(37)*acd65(56)
      acd65(111)=acd65(121)+acd65(120)+acd65(119)+acd65(118)+acd65(117)+acd65(1&
      &16)+acd65(114)+acd65(113)+acd65(111)+acd65(112)
      acd65(111)=acd65(39)*acd65(111)
      acd65(112)=acd65(61)*acd65(62)
      acd65(113)=acd65(59)*acd65(60)
      acd65(114)=acd65(53)*acd65(54)
      acd65(116)=acd65(50)*acd65(51)
      acd65(117)=acd65(26)*acd65(58)
      acd65(118)=acd65(18)*acd65(57)
      acd65(119)=acd65(8)*acd65(55)
      acd65(120)=acd65(6)*acd65(52)
      acd65(112)=acd65(120)+acd65(119)+acd65(118)+acd65(117)+acd65(116)+acd65(1&
      &14)+acd65(112)+acd65(113)
      acd65(112)=acd65(37)*acd65(112)
      acd65(113)=acd65(47)*acd65(106)
      acd65(114)=acd65(45)*acd65(105)
      acd65(116)=acd65(43)*acd65(104)
      acd65(117)=acd65(41)*acd65(103)
      acd65(115)=acd65(49)*acd65(115)
      acd65(118)=acd65(37)*acd65(15)
      acd65(119)=acd65(39)*acd65(95)
      acd65(113)=acd65(119)+acd65(118)+acd65(115)+acd65(117)+acd65(116)+acd65(1&
      &13)+acd65(114)
      acd65(113)=acd65(14)*acd65(113)
      acd65(107)=acd65(107)+acd65(108)+acd65(110)+acd65(109)+acd65(113)+acd65(1&
      &12)+acd65(111)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd65(107)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd65h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(282) :: acd65
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd65(1)=dotproduct(k2,ninjaE3)
      acd65(2)=abb65(334)
      acd65(3)=dotproduct(ninjaE3,spvak2k4)
      acd65(4)=abb65(174)
      acd65(5)=dotproduct(ninjaE3,spvak7k2)
      acd65(6)=abb65(29)
      acd65(7)=dotproduct(ninjaE3,spvak2k3)
      acd65(8)=abb65(69)
      acd65(9)=dotproduct(ninjaE3,spvak2k5)
      acd65(10)=abb65(158)
      acd65(11)=dotproduct(ninjaE3,spvak2k6)
      acd65(12)=abb65(111)
      acd65(13)=dotproduct(ninjaE3,spvak2k1)
      acd65(14)=abb65(37)
      acd65(15)=dotproduct(ninjaE3,spvak7k3)
      acd65(16)=abb65(64)
      acd65(17)=dotproduct(ninjaE3,spvak4k2)
      acd65(18)=abb65(181)
      acd65(19)=dotproduct(ninjaE3,spvak7k1)
      acd65(20)=abb65(90)
      acd65(21)=dotproduct(ninjaE3,spvak3k2)
      acd65(22)=abb65(76)
      acd65(23)=dotproduct(ninjaE3,spvak5k1)
      acd65(24)=abb65(412)
      acd65(25)=dotproduct(ninjaE3,spvak6k2)
      acd65(26)=abb65(239)
      acd65(27)=dotproduct(ninjaE3,spvak7k6)
      acd65(28)=abb65(392)
      acd65(29)=dotproduct(ninjaE3,spvak5k2)
      acd65(30)=abb65(408)
      acd65(31)=dotproduct(ninjaE3,spvak4k1)
      acd65(32)=abb65(35)
      acd65(33)=dotproduct(ninjaE3,spvak7k4)
      acd65(34)=abb65(404)
      acd65(35)=dotproduct(ninjaE3,spvak3k1)
      acd65(36)=abb65(97)
      acd65(37)=dotproduct(ninjaE3,spvak7k5)
      acd65(38)=abb65(401)
      acd65(39)=dotproduct(ninjaE3,spvak6k1)
      acd65(40)=abb65(264)
      acd65(41)=dotproduct(k1,ninjaA1)
      acd65(42)=abb65(32)
      acd65(43)=abb65(161)
      acd65(44)=abb65(167)
      acd65(45)=abb65(96)
      acd65(46)=abb65(94)
      acd65(47)=abb65(56)
      acd65(48)=abb65(391)
      acd65(49)=abb65(163)
      acd65(50)=abb65(63)
      acd65(51)=abb65(406)
      acd65(52)=abb65(224)
      acd65(53)=abb65(403)
      acd65(54)=abb65(399)
      acd65(55)=dotproduct(k1,ninjaE3)
      acd65(56)=dotproduct(k2,ninjaA1)
      acd65(57)=dotproduct(ninjaA1,spvak7k2)
      acd65(58)=dotproduct(ninjaA1,spvak2k3)
      acd65(59)=dotproduct(ninjaA1,spvak2k6)
      acd65(60)=dotproduct(ninjaA1,spvak7k3)
      acd65(61)=dotproduct(ninjaA1,spvak4k2)
      acd65(62)=dotproduct(ninjaA1,spvak7k1)
      acd65(63)=dotproduct(ninjaA1,spvak3k2)
      acd65(64)=dotproduct(ninjaA1,spvak5k1)
      acd65(65)=dotproduct(ninjaA1,spvak6k2)
      acd65(66)=dotproduct(ninjaA1,spvak7k6)
      acd65(67)=dotproduct(ninjaA1,spvak5k2)
      acd65(68)=dotproduct(ninjaA1,spvak4k1)
      acd65(69)=dotproduct(ninjaA1,spvak7k4)
      acd65(70)=dotproduct(ninjaA1,spvak7k5)
      acd65(71)=dotproduct(k3,ninjaE3)
      acd65(72)=abb65(276)
      acd65(73)=dotproduct(k4,ninjaE3)
      acd65(74)=dotproduct(k5,ninjaE3)
      acd65(75)=dotproduct(k6,ninjaE3)
      acd65(76)=dotproduct(k7,ninjaE3)
      acd65(77)=dotproduct(ninjaA0,ninjaE3)
      acd65(78)=abb65(41)
      acd65(79)=dotproduct(ninjaE3,spvak4k3)
      acd65(80)=abb65(49)
      acd65(81)=dotproduct(ninjaE3,spvak5k3)
      acd65(82)=abb65(405)
      acd65(83)=dotproduct(ninjaE3,spvak4k6)
      acd65(84)=abb65(58)
      acd65(85)=dotproduct(ninjaE3,spvak5k6)
      acd65(86)=abb65(381)
      acd65(87)=dotproduct(k3,ninjaA1)
      acd65(88)=dotproduct(k4,ninjaA1)
      acd65(89)=dotproduct(k5,ninjaA1)
      acd65(90)=dotproduct(k6,ninjaA1)
      acd65(91)=dotproduct(k7,ninjaA1)
      acd65(92)=dotproduct(ninjaA0,ninjaA1)
      acd65(93)=dotproduct(ninjaA1,spvak2k1)
      acd65(94)=dotproduct(ninjaA1,spvak4k3)
      acd65(95)=dotproduct(ninjaA1,spvak5k3)
      acd65(96)=dotproduct(ninjaA1,spvak4k6)
      acd65(97)=dotproduct(ninjaA1,spvak5k6)
      acd65(98)=abb65(85)
      acd65(99)=abb65(160)
      acd65(100)=abb65(199)
      acd65(101)=abb65(130)
      acd65(102)=abb65(171)
      acd65(103)=abb65(36)
      acd65(104)=abb65(416)
      acd65(105)=abb65(105)
      acd65(106)=abb65(88)
      acd65(107)=abb65(251)
      acd65(108)=dotproduct(ninjaA1,spvak2k4)
      acd65(109)=dotproduct(ninjaA1,spvak2k5)
      acd65(110)=dotproduct(ninjaA1,spvak3k1)
      acd65(111)=dotproduct(ninjaA1,spvak6k1)
      acd65(112)=abb65(12)
      acd65(113)=abb65(13)
      acd65(114)=abb65(15)
      acd65(115)=abb65(16)
      acd65(116)=abb65(20)
      acd65(117)=abb65(82)
      acd65(118)=abb65(22)
      acd65(119)=abb65(42)
      acd65(120)=abb65(53)
      acd65(121)=dotproduct(ninjaE3,spvak2k7)
      acd65(122)=abb65(70)
      acd65(123)=abb65(325)
      acd65(124)=abb65(17)
      acd65(125)=abb65(18)
      acd65(126)=abb65(19)
      acd65(127)=abb65(21)
      acd65(128)=abb65(23)
      acd65(129)=abb65(24)
      acd65(130)=abb65(26)
      acd65(131)=abb65(39)
      acd65(132)=abb65(60)
      acd65(133)=dotproduct(ninjaE3,spvak1k2)
      acd65(134)=abb65(141)
      acd65(135)=abb65(51)
      acd65(136)=abb65(110)
      acd65(137)=abb65(389)
      acd65(138)=dotproduct(ninjaA1,spvak1k2)
      acd65(139)=dotproduct(ninjaA1,spvak2k7)
      acd65(140)=dotproduct(ninjaA1,ninjaA1)
      acd65(141)=dotproduct(k1,ninjaA0)
      acd65(142)=dotproduct(k2,ninjaA0)
      acd65(143)=dotproduct(ninjaA0,spvak7k2)
      acd65(144)=dotproduct(ninjaA0,spvak2k3)
      acd65(145)=dotproduct(ninjaA0,spvak2k6)
      acd65(146)=dotproduct(ninjaA0,spvak7k3)
      acd65(147)=dotproduct(ninjaA0,spvak4k2)
      acd65(148)=dotproduct(ninjaA0,spvak7k1)
      acd65(149)=dotproduct(ninjaA0,spvak3k2)
      acd65(150)=dotproduct(ninjaA0,spvak5k1)
      acd65(151)=dotproduct(ninjaA0,spvak6k2)
      acd65(152)=dotproduct(ninjaA0,spvak7k6)
      acd65(153)=dotproduct(ninjaA0,spvak5k2)
      acd65(154)=dotproduct(ninjaA0,spvak4k1)
      acd65(155)=dotproduct(ninjaA0,spvak7k4)
      acd65(156)=dotproduct(ninjaA0,spvak7k5)
      acd65(157)=abb65(34)
      acd65(158)=dotproduct(k3,ninjaA0)
      acd65(159)=dotproduct(k4,ninjaA0)
      acd65(160)=dotproduct(k5,ninjaA0)
      acd65(161)=dotproduct(k6,ninjaA0)
      acd65(162)=dotproduct(k7,ninjaA0)
      acd65(163)=dotproduct(ninjaA0,ninjaA0)
      acd65(164)=dotproduct(ninjaA0,spvak2k1)
      acd65(165)=dotproduct(ninjaA0,spvak4k3)
      acd65(166)=dotproduct(ninjaA0,spvak5k3)
      acd65(167)=dotproduct(ninjaA0,spvak4k6)
      acd65(168)=dotproduct(ninjaA0,spvak5k6)
      acd65(169)=abb65(59)
      acd65(170)=abb65(274)
      acd65(171)=dotproduct(ninjaA0,spvak2k4)
      acd65(172)=dotproduct(ninjaA0,spvak2k5)
      acd65(173)=dotproduct(ninjaA0,spvak3k1)
      acd65(174)=dotproduct(ninjaA0,spvak6k1)
      acd65(175)=abb65(66)
      acd65(176)=dotproduct(ninjaA0,spvak1k2)
      acd65(177)=dotproduct(ninjaA0,spvak2k7)
      acd65(178)=abb65(52)
      acd65(179)=abb65(30)
      acd65(180)=abb65(48)
      acd65(181)=abb65(118)
      acd65(182)=abb65(122)
      acd65(183)=abb65(33)
      acd65(184)=abb65(269)
      acd65(185)=abb65(46)
      acd65(186)=abb65(369)
      acd65(187)=abb65(402)
      acd65(188)=abb65(126)
      acd65(189)=abb65(407)
      acd65(190)=abb65(55)
      acd65(191)=abb65(398)
      acd65(192)=abb65(117)
      acd65(193)=acd65(4)*acd65(3)
      acd65(194)=acd65(8)*acd65(7)
      acd65(195)=acd65(10)*acd65(9)
      acd65(196)=acd65(12)*acd65(11)
      acd65(197)=acd65(16)*acd65(15)
      acd65(198)=acd65(18)*acd65(17)
      acd65(199)=acd65(22)*acd65(21)
      acd65(200)=acd65(24)*acd65(23)
      acd65(201)=acd65(26)*acd65(25)
      acd65(202)=acd65(28)*acd65(27)
      acd65(203)=acd65(30)*acd65(29)
      acd65(204)=acd65(32)*acd65(31)
      acd65(205)=acd65(34)*acd65(33)
      acd65(206)=acd65(36)*acd65(35)
      acd65(207)=acd65(38)*acd65(37)
      acd65(208)=acd65(40)*acd65(39)
      acd65(193)=acd65(204)+acd65(203)+acd65(202)+acd65(201)+acd65(200)+acd65(1&
      &99)+acd65(198)+acd65(197)+acd65(196)+acd65(195)+acd65(193)+acd65(194)+ac&
      &d65(205)+acd65(206)+acd65(207)+acd65(208)
      acd65(194)=acd65(6)*acd65(5)
      acd65(195)=acd65(14)*acd65(13)
      acd65(194)=acd65(194)+acd65(195)
      acd65(195)=acd65(2)*acd65(1)
      acd65(196)=acd65(20)*acd65(19)
      acd65(197)=acd65(195)-acd65(196)
      acd65(198)=-acd65(197)+acd65(193)+acd65(194)
      acd65(193)=acd65(193)+acd65(196)
      acd65(199)=ninjaP1+2.0_ki*acd65(92)
      acd65(200)=acd65(199)*acd65(193)
      acd65(201)=acd65(43)*acd65(7)
      acd65(202)=acd65(44)*acd65(11)
      acd65(203)=acd65(48)*acd65(23)
      acd65(204)=acd65(52)*acd65(31)
      acd65(205)=acd65(45)*acd65(15)
      acd65(206)=acd65(46)*acd65(17)
      acd65(207)=acd65(47)*acd65(21)
      acd65(208)=acd65(49)*acd65(25)
      acd65(209)=acd65(50)*acd65(27)
      acd65(210)=acd65(51)*acd65(29)
      acd65(211)=acd65(53)*acd65(33)
      acd65(212)=acd65(54)*acd65(37)
      acd65(201)=-acd65(209)+acd65(210)-acd65(211)+acd65(212)+acd65(205)-acd65(&
      &206)+acd65(207)-acd65(208)-acd65(201)+acd65(202)+acd65(203)-acd65(204)
      acd65(202)=acd65(41)+acd65(56)
      acd65(203)=acd65(202)*acd65(201)
      acd65(204)=acd65(80)*acd65(79)
      acd65(205)=acd65(82)*acd65(81)
      acd65(206)=acd65(84)*acd65(83)
      acd65(207)=acd65(86)*acd65(85)
      acd65(196)=acd65(196)+acd65(204)+acd65(205)+acd65(206)+acd65(207)
      acd65(204)=acd65(56)*acd65(196)
      acd65(205)=acd65(112)*acd65(3)
      acd65(206)=acd65(114)*acd65(9)
      acd65(207)=acd65(120)*acd65(35)
      acd65(208)=acd65(123)*acd65(39)
      acd65(209)=acd65(121)*acd65(122)
      acd65(205)=acd65(209)+acd65(205)+acd65(206)+acd65(207)+acd65(208)
      acd65(206)=acd65(57)*acd65(205)
      acd65(207)=acd65(55)+acd65(1)
      acd65(208)=2.0_ki*acd65(77)
      acd65(209)=acd65(76)+acd65(207)+acd65(208)
      acd65(209)=acd65(209)*acd65(20)
      acd65(210)=acd65(134)*acd65(79)
      acd65(211)=acd65(135)*acd65(81)
      acd65(212)=acd65(136)*acd65(83)
      acd65(213)=acd65(137)*acd65(85)
      acd65(209)=acd65(209)+acd65(210)+acd65(211)+acd65(212)+acd65(213)
      acd65(210)=acd65(62)*acd65(209)
      acd65(211)=acd65(99)*acd65(3)
      acd65(212)=acd65(101)*acd65(9)
      acd65(213)=acd65(106)*acd65(35)
      acd65(214)=acd65(107)*acd65(39)
      acd65(211)=-acd65(197)+acd65(211)+acd65(212)+acd65(213)+acd65(214)
      acd65(212)=acd65(91)*acd65(211)
      acd65(213)=acd65(133)*acd65(93)
      acd65(214)=acd65(138)*acd65(13)
      acd65(215)=acd65(139)*acd65(5)
      acd65(213)=acd65(215)+acd65(214)+acd65(213)
      acd65(213)=acd65(122)*acd65(213)
      acd65(214)=acd65(99)*acd65(76)
      acd65(215)=acd65(112)*acd65(5)
      acd65(216)=acd65(208)*acd65(4)
      acd65(214)=acd65(216)+acd65(214)+acd65(215)
      acd65(215)=acd65(108)*acd65(214)
      acd65(216)=acd65(101)*acd65(76)
      acd65(217)=acd65(114)*acd65(5)
      acd65(218)=acd65(208)*acd65(10)
      acd65(216)=acd65(218)+acd65(216)+acd65(217)
      acd65(217)=acd65(109)*acd65(216)
      acd65(218)=acd65(106)*acd65(76)
      acd65(219)=acd65(120)*acd65(5)
      acd65(220)=acd65(208)*acd65(36)
      acd65(218)=acd65(220)+acd65(218)+acd65(219)
      acd65(219)=acd65(110)*acd65(218)
      acd65(220)=acd65(107)*acd65(76)
      acd65(221)=acd65(123)*acd65(5)
      acd65(222)=acd65(208)*acd65(40)
      acd65(220)=acd65(222)+acd65(220)+acd65(221)
      acd65(221)=acd65(111)*acd65(220)
      acd65(222)=acd65(72)*acd65(56)
      acd65(223)=acd65(62)*acd65(98)
      acd65(222)=acd65(222)+acd65(223)
      acd65(223)=-acd65(71)-acd65(73)+acd65(75)+acd65(74)
      acd65(222)=acd65(222)*acd65(223)
      acd65(224)=acd65(72)*acd65(1)
      acd65(225)=acd65(98)*acd65(19)
      acd65(224)=acd65(224)+acd65(225)
      acd65(225)=acd65(90)+acd65(89)-acd65(88)-acd65(87)
      acd65(225)=acd65(224)*acd65(225)
      acd65(226)=-acd65(1)*acd65(199)
      acd65(227)=acd65(77)+acd65(1)
      acd65(227)=acd65(76)+acd65(55)+2.0_ki*acd65(227)
      acd65(228)=-acd65(56)*acd65(227)
      acd65(226)=acd65(228)+acd65(226)
      acd65(226)=acd65(2)*acd65(226)
      acd65(228)=-acd65(41)*acd65(197)
      acd65(229)=acd65(5)*acd65(199)
      acd65(230)=acd65(57)*acd65(208)
      acd65(229)=acd65(230)+acd65(229)
      acd65(229)=acd65(6)*acd65(229)
      acd65(199)=acd65(13)*acd65(199)
      acd65(230)=acd65(93)*acd65(208)
      acd65(199)=acd65(230)+acd65(199)
      acd65(199)=acd65(14)*acd65(199)
      acd65(202)=acd65(5)*acd65(202)
      acd65(230)=acd65(57)*acd65(207)
      acd65(202)=acd65(230)+acd65(202)
      acd65(202)=acd65(42)*acd65(202)
      acd65(230)=acd65(208)*acd65(8)
      acd65(231)=acd65(207)*acd65(43)
      acd65(230)=acd65(230)-acd65(231)
      acd65(231)=acd65(58)*acd65(230)
      acd65(232)=acd65(208)*acd65(12)
      acd65(233)=acd65(207)*acd65(44)
      acd65(232)=acd65(232)+acd65(233)
      acd65(233)=acd65(59)*acd65(232)
      acd65(234)=acd65(208)*acd65(24)
      acd65(235)=acd65(207)*acd65(48)
      acd65(234)=acd65(234)+acd65(235)
      acd65(235)=acd65(64)*acd65(234)
      acd65(236)=acd65(208)*acd65(32)
      acd65(237)=acd65(207)*acd65(52)
      acd65(236)=acd65(236)-acd65(237)
      acd65(237)=acd65(68)*acd65(236)
      acd65(238)=acd65(208)*acd65(16)
      acd65(239)=acd65(207)*acd65(45)
      acd65(238)=acd65(238)+acd65(239)
      acd65(239)=acd65(60)*acd65(238)
      acd65(240)=acd65(208)*acd65(18)
      acd65(241)=acd65(207)*acd65(46)
      acd65(240)=acd65(240)-acd65(241)
      acd65(241)=acd65(61)*acd65(240)
      acd65(242)=acd65(208)*acd65(22)
      acd65(243)=acd65(207)*acd65(47)
      acd65(242)=acd65(242)+acd65(243)
      acd65(243)=acd65(63)*acd65(242)
      acd65(244)=acd65(208)*acd65(26)
      acd65(245)=acd65(207)*acd65(49)
      acd65(244)=acd65(244)-acd65(245)
      acd65(245)=acd65(65)*acd65(244)
      acd65(246)=acd65(208)*acd65(28)
      acd65(247)=acd65(207)*acd65(50)
      acd65(246)=acd65(246)-acd65(247)
      acd65(247)=acd65(66)*acd65(246)
      acd65(248)=acd65(208)*acd65(30)
      acd65(249)=acd65(207)*acd65(51)
      acd65(248)=acd65(248)+acd65(249)
      acd65(249)=acd65(67)*acd65(248)
      acd65(250)=acd65(208)*acd65(34)
      acd65(251)=acd65(207)*acd65(53)
      acd65(250)=acd65(250)-acd65(251)
      acd65(251)=acd65(69)*acd65(250)
      acd65(252)=acd65(208)*acd65(38)
      acd65(253)=acd65(207)*acd65(54)
      acd65(252)=acd65(252)+acd65(253)
      acd65(253)=acd65(70)*acd65(252)
      acd65(254)=acd65(56)*acd65(13)
      acd65(255)=acd65(93)*acd65(1)
      acd65(254)=acd65(254)+acd65(255)
      acd65(254)=acd65(78)*acd65(254)
      acd65(255)=acd65(91)*acd65(7)
      acd65(256)=acd65(58)*acd65(76)
      acd65(255)=acd65(255)+acd65(256)
      acd65(255)=acd65(100)*acd65(255)
      acd65(256)=acd65(91)*acd65(11)
      acd65(257)=acd65(59)*acd65(76)
      acd65(256)=acd65(256)+acd65(257)
      acd65(256)=acd65(102)*acd65(256)
      acd65(257)=acd65(93)*acd65(76)
      acd65(258)=acd65(91)*acd65(13)
      acd65(257)=acd65(257)+acd65(258)
      acd65(257)=acd65(103)*acd65(257)
      acd65(258)=acd65(91)*acd65(23)
      acd65(259)=acd65(64)*acd65(76)
      acd65(258)=acd65(258)+acd65(259)
      acd65(258)=acd65(104)*acd65(258)
      acd65(259)=acd65(91)*acd65(31)
      acd65(260)=acd65(68)*acd65(76)
      acd65(259)=acd65(259)+acd65(260)
      acd65(259)=acd65(105)*acd65(259)
      acd65(260)=acd65(57)*acd65(7)
      acd65(261)=acd65(58)*acd65(5)
      acd65(260)=acd65(260)+acd65(261)
      acd65(260)=acd65(113)*acd65(260)
      acd65(261)=acd65(57)*acd65(11)
      acd65(262)=acd65(59)*acd65(5)
      acd65(261)=acd65(261)+acd65(262)
      acd65(261)=acd65(115)*acd65(261)
      acd65(262)=acd65(57)*acd65(13)
      acd65(263)=acd65(93)*acd65(5)
      acd65(262)=acd65(262)+acd65(263)
      acd65(262)=acd65(116)*acd65(262)
      acd65(263)=acd65(57)*acd65(19)
      acd65(264)=acd65(62)*acd65(5)
      acd65(263)=acd65(263)+acd65(264)
      acd65(263)=acd65(117)*acd65(263)
      acd65(264)=acd65(57)*acd65(23)
      acd65(265)=acd65(64)*acd65(5)
      acd65(264)=acd65(264)+acd65(265)
      acd65(264)=acd65(118)*acd65(264)
      acd65(265)=acd65(57)*acd65(31)
      acd65(266)=acd65(68)*acd65(5)
      acd65(265)=acd65(265)+acd65(266)
      acd65(265)=acd65(119)*acd65(265)
      acd65(266)=acd65(93)*acd65(15)
      acd65(267)=acd65(60)*acd65(13)
      acd65(266)=acd65(266)+acd65(267)
      acd65(266)=acd65(124)*acd65(266)
      acd65(267)=acd65(17)*acd65(93)
      acd65(268)=acd65(61)*acd65(13)
      acd65(267)=acd65(267)+acd65(268)
      acd65(267)=acd65(125)*acd65(267)
      acd65(268)=acd65(62)*acd65(13)
      acd65(269)=acd65(93)*acd65(19)
      acd65(268)=acd65(268)+acd65(269)
      acd65(268)=acd65(126)*acd65(268)
      acd65(269)=acd65(21)*acd65(93)
      acd65(270)=acd65(63)*acd65(13)
      acd65(269)=acd65(269)+acd65(270)
      acd65(269)=acd65(127)*acd65(269)
      acd65(270)=acd65(25)*acd65(93)
      acd65(271)=acd65(65)*acd65(13)
      acd65(270)=acd65(270)+acd65(271)
      acd65(270)=acd65(128)*acd65(270)
      acd65(271)=acd65(93)*acd65(27)
      acd65(272)=acd65(66)*acd65(13)
      acd65(271)=acd65(271)+acd65(272)
      acd65(271)=acd65(129)*acd65(271)
      acd65(272)=acd65(29)*acd65(93)
      acd65(273)=acd65(67)*acd65(13)
      acd65(272)=acd65(272)+acd65(273)
      acd65(272)=acd65(130)*acd65(272)
      acd65(273)=acd65(93)*acd65(33)
      acd65(274)=acd65(69)*acd65(13)
      acd65(273)=acd65(273)+acd65(274)
      acd65(273)=acd65(131)*acd65(273)
      acd65(274)=acd65(93)*acd65(37)
      acd65(275)=acd65(70)*acd65(13)
      acd65(274)=acd65(274)+acd65(275)
      acd65(274)=acd65(132)*acd65(274)
      acd65(275)=acd65(80)*acd65(1)
      acd65(276)=acd65(134)*acd65(19)
      acd65(275)=acd65(275)+acd65(276)
      acd65(276)=acd65(94)*acd65(275)
      acd65(277)=acd65(82)*acd65(1)
      acd65(278)=acd65(135)*acd65(19)
      acd65(277)=acd65(277)+acd65(278)
      acd65(278)=acd65(95)*acd65(277)
      acd65(279)=acd65(84)*acd65(1)
      acd65(280)=acd65(136)*acd65(19)
      acd65(279)=acd65(279)+acd65(280)
      acd65(280)=acd65(96)*acd65(279)
      acd65(281)=acd65(86)*acd65(1)
      acd65(282)=acd65(137)*acd65(19)
      acd65(281)=acd65(281)+acd65(282)
      acd65(282)=acd65(97)*acd65(281)
      acd65(199)=acd65(282)+acd65(280)+acd65(278)+acd65(276)+acd65(221)+acd65(2&
      &19)+acd65(217)+acd65(215)+acd65(274)+acd65(273)+acd65(272)+acd65(271)+ac&
      &d65(270)+acd65(269)+acd65(268)+acd65(267)+acd65(266)+acd65(265)+acd65(26&
      &4)+acd65(263)+acd65(262)+acd65(261)+acd65(260)+acd65(259)+acd65(258)+acd&
      &65(257)+acd65(256)+acd65(255)+acd65(254)+acd65(253)+acd65(251)+acd65(249&
      &)+acd65(247)+acd65(245)+acd65(243)+acd65(241)+acd65(239)+acd65(237)+acd6&
      &5(235)+acd65(233)+acd65(231)+acd65(202)+acd65(199)+acd65(229)+acd65(228)&
      &+acd65(226)+acd65(212)+acd65(210)+acd65(206)+acd65(204)+acd65(225)+acd65&
      &(222)+acd65(213)+acd65(200)+acd65(203)
      acd65(194)=-acd65(195)+acd65(193)+acd65(194)
      acd65(195)=ninjaP2+acd65(140)
      acd65(194)=acd65(195)*acd65(194)
      acd65(195)=ninjaP0+acd65(163)
      acd65(193)=acd65(195)*acd65(193)
      acd65(200)=acd65(141)+acd65(142)
      acd65(201)=acd65(200)*acd65(201)
      acd65(202)=acd65(124)*acd65(15)
      acd65(203)=acd65(125)*acd65(17)
      acd65(204)=acd65(127)*acd65(21)
      acd65(206)=acd65(128)*acd65(25)
      acd65(210)=acd65(129)*acd65(27)
      acd65(212)=acd65(130)*acd65(29)
      acd65(213)=acd65(131)*acd65(33)
      acd65(215)=acd65(132)*acd65(37)
      acd65(217)=acd65(133)*acd65(122)
      acd65(202)=acd65(217)+acd65(215)+acd65(213)+acd65(212)+acd65(210)+acd65(2&
      &06)+acd65(204)+acd65(203)+acd65(202)
      acd65(202)=acd65(164)*acd65(202)
      acd65(196)=acd65(142)*acd65(196)
      acd65(203)=acd65(143)*acd65(205)
      acd65(204)=acd65(148)*acd65(209)
      acd65(205)=acd65(162)*acd65(211)
      acd65(206)=acd65(171)*acd65(214)
      acd65(209)=acd65(172)*acd65(216)
      acd65(210)=acd65(173)*acd65(218)
      acd65(211)=acd65(174)*acd65(220)
      acd65(212)=acd65(72)*acd65(142)
      acd65(213)=acd65(148)*acd65(98)
      acd65(212)=-acd65(170)+acd65(212)+acd65(213)
      acd65(212)=acd65(223)*acd65(212)
      acd65(213)=acd65(176)*acd65(13)
      acd65(214)=acd65(177)*acd65(5)
      acd65(213)=acd65(214)+acd65(213)
      acd65(213)=acd65(122)*acd65(213)
      acd65(214)=acd65(161)+acd65(160)-acd65(159)-acd65(158)
      acd65(214)=acd65(224)*acd65(214)
      acd65(215)=-acd65(1)*acd65(195)
      acd65(216)=-acd65(142)*acd65(227)
      acd65(215)=acd65(216)+acd65(215)
      acd65(215)=acd65(2)*acd65(215)
      acd65(197)=-acd65(141)*acd65(197)
      acd65(216)=acd65(5)*acd65(195)
      acd65(217)=acd65(143)*acd65(208)
      acd65(216)=acd65(217)+acd65(216)
      acd65(216)=acd65(6)*acd65(216)
      acd65(195)=acd65(13)*acd65(195)
      acd65(208)=acd65(164)*acd65(208)
      acd65(195)=acd65(208)+acd65(195)
      acd65(195)=acd65(14)*acd65(195)
      acd65(200)=acd65(5)*acd65(200)
      acd65(207)=acd65(143)*acd65(207)
      acd65(200)=acd65(207)+acd65(200)
      acd65(200)=acd65(42)*acd65(200)
      acd65(207)=acd65(144)*acd65(230)
      acd65(208)=acd65(145)*acd65(232)
      acd65(217)=acd65(150)*acd65(234)
      acd65(218)=acd65(154)*acd65(236)
      acd65(219)=acd65(142)*acd65(13)
      acd65(220)=acd65(164)*acd65(1)
      acd65(219)=acd65(219)+acd65(220)
      acd65(219)=acd65(78)*acd65(219)
      acd65(220)=acd65(162)*acd65(7)
      acd65(221)=acd65(144)*acd65(76)
      acd65(220)=acd65(220)+acd65(221)
      acd65(220)=acd65(100)*acd65(220)
      acd65(221)=acd65(162)*acd65(11)
      acd65(222)=acd65(145)*acd65(76)
      acd65(221)=acd65(221)+acd65(222)
      acd65(221)=acd65(102)*acd65(221)
      acd65(222)=acd65(164)*acd65(76)
      acd65(223)=acd65(162)*acd65(13)
      acd65(222)=acd65(222)+acd65(223)
      acd65(222)=acd65(103)*acd65(222)
      acd65(223)=acd65(162)*acd65(23)
      acd65(224)=acd65(150)*acd65(76)
      acd65(223)=acd65(223)+acd65(224)
      acd65(223)=acd65(104)*acd65(223)
      acd65(224)=acd65(162)*acd65(31)
      acd65(225)=acd65(154)*acd65(76)
      acd65(224)=acd65(224)+acd65(225)
      acd65(224)=acd65(105)*acd65(224)
      acd65(225)=acd65(143)*acd65(7)
      acd65(226)=acd65(144)*acd65(5)
      acd65(225)=acd65(225)+acd65(226)
      acd65(225)=acd65(113)*acd65(225)
      acd65(226)=acd65(143)*acd65(11)
      acd65(227)=acd65(145)*acd65(5)
      acd65(226)=acd65(226)+acd65(227)
      acd65(226)=acd65(115)*acd65(226)
      acd65(227)=acd65(143)*acd65(13)
      acd65(228)=acd65(164)*acd65(5)
      acd65(227)=acd65(227)+acd65(228)
      acd65(227)=acd65(116)*acd65(227)
      acd65(228)=acd65(143)*acd65(19)
      acd65(229)=acd65(148)*acd65(5)
      acd65(228)=acd65(228)+acd65(229)
      acd65(228)=acd65(117)*acd65(228)
      acd65(229)=acd65(143)*acd65(23)
      acd65(230)=acd65(150)*acd65(5)
      acd65(229)=acd65(229)+acd65(230)
      acd65(229)=acd65(118)*acd65(229)
      acd65(230)=acd65(143)*acd65(31)
      acd65(231)=acd65(154)*acd65(5)
      acd65(230)=acd65(230)+acd65(231)
      acd65(230)=acd65(119)*acd65(230)
      acd65(231)=acd65(148)*acd65(13)
      acd65(232)=acd65(164)*acd65(19)
      acd65(231)=acd65(231)+acd65(232)
      acd65(231)=acd65(126)*acd65(231)
      acd65(232)=acd65(124)*acd65(13)
      acd65(232)=acd65(232)+acd65(238)
      acd65(232)=acd65(146)*acd65(232)
      acd65(233)=acd65(125)*acd65(13)
      acd65(233)=acd65(233)+acd65(240)
      acd65(233)=acd65(147)*acd65(233)
      acd65(234)=acd65(127)*acd65(13)
      acd65(234)=acd65(234)+acd65(242)
      acd65(234)=acd65(149)*acd65(234)
      acd65(235)=acd65(128)*acd65(13)
      acd65(235)=acd65(235)+acd65(244)
      acd65(235)=acd65(151)*acd65(235)
      acd65(236)=acd65(129)*acd65(13)
      acd65(236)=acd65(236)+acd65(246)
      acd65(236)=acd65(152)*acd65(236)
      acd65(237)=acd65(130)*acd65(13)
      acd65(237)=acd65(237)+acd65(248)
      acd65(237)=acd65(153)*acd65(237)
      acd65(238)=acd65(131)*acd65(13)
      acd65(238)=acd65(238)+acd65(250)
      acd65(238)=acd65(155)*acd65(238)
      acd65(239)=acd65(132)*acd65(13)
      acd65(239)=acd65(239)+acd65(252)
      acd65(239)=acd65(156)*acd65(239)
      acd65(240)=acd65(165)*acd65(275)
      acd65(241)=acd65(166)*acd65(277)
      acd65(242)=acd65(167)*acd65(279)
      acd65(243)=acd65(168)*acd65(281)
      acd65(244)=acd65(157)*acd65(55)
      acd65(245)=acd65(169)*acd65(1)
      acd65(246)=acd65(175)*acd65(76)
      acd65(247)=acd65(178)*acd65(3)
      acd65(248)=acd65(179)*acd65(5)
      acd65(249)=acd65(180)*acd65(7)
      acd65(250)=acd65(181)*acd65(9)
      acd65(251)=acd65(182)*acd65(11)
      acd65(252)=acd65(183)*acd65(13)
      acd65(253)=acd65(184)*acd65(15)
      acd65(254)=acd65(185)*acd65(19)
      acd65(255)=acd65(186)*acd65(27)
      acd65(256)=acd65(187)*acd65(33)
      acd65(257)=acd65(188)*acd65(79)
      acd65(258)=acd65(189)*acd65(81)
      acd65(259)=acd65(190)*acd65(83)
      acd65(260)=acd65(191)*acd65(37)
      acd65(261)=acd65(192)*acd65(85)
      acd65(193)=acd65(261)+acd65(260)+acd65(259)+acd65(258)+acd65(257)+acd65(2&
      &56)+acd65(255)+acd65(254)+acd65(253)+acd65(252)+acd65(251)+acd65(250)+ac&
      &d65(249)+acd65(248)+acd65(247)+acd65(246)+acd65(245)+acd65(244)+acd65(24&
      &3)+acd65(242)+acd65(241)+acd65(240)+acd65(211)+acd65(210)+acd65(209)+acd&
      &65(206)+acd65(239)+acd65(238)+acd65(237)+acd65(236)+acd65(235)+acd65(234&
      &)+acd65(233)+acd65(232)+acd65(231)+acd65(230)+acd65(229)+acd65(228)+acd6&
      &5(227)+acd65(226)+acd65(225)+acd65(224)+acd65(223)+acd65(222)+acd65(221)&
      &+acd65(220)+acd65(219)+acd65(218)+acd65(217)+acd65(208)+acd65(207)+acd65&
      &(200)+acd65(195)+acd65(216)+acd65(197)+acd65(215)+acd65(202)+acd65(205)+&
      &acd65(204)+acd65(203)+acd65(196)+acd65(214)+acd65(213)+acd65(212)+acd65(&
      &193)+acd65(201)
      brack(ninjaidxt0x0mu0)=acd65(193)
      brack(ninjaidxt0x0mu2)=acd65(198)
      brack(ninjaidxt0x1mu0)=acd65(199)
      brack(ninjaidxt0x2mu0)=acd65(194)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d65h6_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd65h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = - a0(0:3)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p4_ubaru_epnemumnmubarg_d65h6l132
