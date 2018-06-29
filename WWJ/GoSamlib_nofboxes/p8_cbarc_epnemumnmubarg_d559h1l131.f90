module     p8_cbarc_epnemumnmubarg_d559h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity1d559h1l131.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd559h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(20) :: acd559
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd559(1)=dotproduct(k3,ninjaE3)
      acd559(2)=dotproduct(ninjaE3,spvak1k2)
      acd559(3)=dotproduct(ninjaE3,spvak2k7)
      acd559(4)=abb559(29)
      acd559(5)=dotproduct(k4,ninjaE3)
      acd559(6)=dotproduct(k5,ninjaE3)
      acd559(7)=dotproduct(k6,ninjaE3)
      acd559(8)=dotproduct(ninjaE3,spvak4k6)
      acd559(9)=abb559(17)
      acd559(10)=dotproduct(ninjaE3,spvak5k3)
      acd559(11)=abb559(27)
      acd559(12)=dotproduct(ninjaE3,spvak5k6)
      acd559(13)=abb559(39)
      acd559(14)=dotproduct(ninjaE3,spvak4k3)
      acd559(15)=abb559(43)
      acd559(16)=-acd559(7)-acd559(6)+acd559(1)+acd559(5)
      acd559(16)=acd559(4)*acd559(16)
      acd559(17)=acd559(9)*acd559(8)
      acd559(18)=acd559(11)*acd559(10)
      acd559(19)=acd559(13)*acd559(12)
      acd559(20)=acd559(15)*acd559(14)
      acd559(16)=acd559(20)+acd559(19)+acd559(18)+acd559(17)+acd559(16)
      acd559(16)=acd559(16)*acd559(3)*acd559(2)
      brack(ninjaidxt2mu0)=acd559(16)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd559h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(147) :: acd559
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd559(1)=dotproduct(k2,ninjaE3)
      acd559(2)=abb559(23)
      acd559(3)=dotproduct(k3,ninjaE3)
      acd559(4)=dotproduct(ninjaE3,spvak1k2)
      acd559(5)=dotproduct(ninjaE4,spvak2k7)
      acd559(6)=abb559(29)
      acd559(7)=dotproduct(ninjaE3,spvak2k7)
      acd559(8)=dotproduct(ninjaE4,spvak1k2)
      acd559(9)=abb559(21)
      acd559(10)=dotproduct(k3,ninjaE4)
      acd559(11)=dotproduct(k4,ninjaE3)
      acd559(12)=dotproduct(k4,ninjaE4)
      acd559(13)=dotproduct(k5,ninjaE3)
      acd559(14)=dotproduct(k5,ninjaE4)
      acd559(15)=dotproduct(k6,ninjaE3)
      acd559(16)=dotproduct(k6,ninjaE4)
      acd559(17)=dotproduct(ninjaE3,spvak4k3)
      acd559(18)=abb559(43)
      acd559(19)=abb559(40)
      acd559(20)=dotproduct(ninjaE3,spvak5k3)
      acd559(21)=abb559(27)
      acd559(22)=abb559(41)
      acd559(23)=dotproduct(ninjaE3,spvak1k3)
      acd559(24)=abb559(15)
      acd559(25)=dotproduct(ninjaE3,spvak1k6)
      acd559(26)=abb559(16)
      acd559(27)=dotproduct(ninjaE4,spvak4k3)
      acd559(28)=dotproduct(ninjaE4,spvak5k3)
      acd559(29)=dotproduct(ninjaE4,spvak4k6)
      acd559(30)=abb559(17)
      acd559(31)=dotproduct(ninjaE4,spvak5k6)
      acd559(32)=abb559(39)
      acd559(33)=dotproduct(ninjaE3,spvak4k6)
      acd559(34)=dotproduct(ninjaE3,spvak5k6)
      acd559(35)=abb559(33)
      acd559(36)=abb559(51)
      acd559(37)=dotproduct(ninjaE3,spvak5k2)
      acd559(38)=abb559(65)
      acd559(39)=dotproduct(ninjaE3,spvak6k2)
      acd559(40)=abb559(68)
      acd559(41)=dotproduct(ninjaE3,spvak4k2)
      acd559(42)=abb559(37)
      acd559(43)=dotproduct(ninjaE3,spvak3k2)
      acd559(44)=abb559(110)
      acd559(45)=dotproduct(ninjaE3,spvak1k4)
      acd559(46)=abb559(38)
      acd559(47)=dotproduct(ninjaE3,spvak1k5)
      acd559(48)=abb559(48)
      acd559(49)=dotproduct(k1,ninjaE3)
      acd559(50)=abb559(82)
      acd559(51)=abb559(120)
      acd559(52)=abb559(166)
      acd559(53)=dotproduct(k7,ninjaE3)
      acd559(54)=dotproduct(ninjaA,ninjaE3)
      acd559(55)=abb559(94)
      acd559(56)=abb559(98)
      acd559(57)=abb559(28)
      acd559(58)=abb559(31)
      acd559(59)=abb559(159)
      acd559(60)=abb559(147)
      acd559(61)=abb559(99)
      acd559(62)=abb559(34)
      acd559(63)=abb559(54)
      acd559(64)=abb559(72)
      acd559(65)=abb559(58)
      acd559(66)=abb559(44)
      acd559(67)=dotproduct(k3,ninjaA)
      acd559(68)=dotproduct(ninjaA,spvak1k2)
      acd559(69)=dotproduct(ninjaA,spvak2k7)
      acd559(70)=dotproduct(ninjaE3,spvak1k7)
      acd559(71)=abb559(12)
      acd559(72)=dotproduct(k4,ninjaA)
      acd559(73)=dotproduct(k5,ninjaA)
      acd559(74)=dotproduct(k6,ninjaA)
      acd559(75)=dotproduct(ninjaA,spvak4k3)
      acd559(76)=dotproduct(ninjaA,spvak5k3)
      acd559(77)=dotproduct(ninjaA,spvak4k6)
      acd559(78)=dotproduct(ninjaA,spvak5k6)
      acd559(79)=abb559(13)
      acd559(80)=abb559(14)
      acd559(81)=abb559(46)
      acd559(82)=abb559(18)
      acd559(83)=abb559(32)
      acd559(84)=abb559(42)
      acd559(85)=abb559(25)
      acd559(86)=dotproduct(ninjaE3,spvak7k2)
      acd559(87)=abb559(71)
      acd559(88)=abb559(30)
      acd559(89)=abb559(84)
      acd559(90)=abb559(35)
      acd559(91)=abb559(36)
      acd559(92)=abb559(49)
      acd559(93)=abb559(56)
      acd559(94)=dotproduct(k1,ninjaA)
      acd559(95)=abb559(22)
      acd559(96)=dotproduct(k2,ninjaA)
      acd559(97)=dotproduct(k7,ninjaA)
      acd559(98)=dotproduct(ninjaA,ninjaA)
      acd559(99)=dotproduct(ninjaA,spvak1k3)
      acd559(100)=dotproduct(ninjaA,spvak1k6)
      acd559(101)=dotproduct(ninjaA,spvak5k2)
      acd559(102)=dotproduct(ninjaA,spvak6k2)
      acd559(103)=dotproduct(ninjaA,spvak4k2)
      acd559(104)=dotproduct(ninjaA,spvak3k2)
      acd559(105)=dotproduct(ninjaA,spvak1k4)
      acd559(106)=dotproduct(ninjaA,spvak1k5)
      acd559(107)=abb559(26)
      acd559(108)=dotproduct(ninjaA,spvak1k7)
      acd559(109)=abb559(115)
      acd559(110)=abb559(69)
      acd559(111)=abb559(20)
      acd559(112)=dotproduct(ninjaA,spvak7k2)
      acd559(113)=abb559(79)
      acd559(114)=abb559(96)
      acd559(115)=abb559(59)
      acd559(116)=abb559(144)
      acd559(117)=abb559(116)
      acd559(118)=abb559(19)
      acd559(119)=acd559(47)*acd559(48)
      acd559(120)=acd559(45)*acd559(46)
      acd559(121)=acd559(43)*acd559(44)
      acd559(122)=acd559(41)*acd559(42)
      acd559(123)=acd559(39)*acd559(40)
      acd559(124)=acd559(37)*acd559(38)
      acd559(125)=acd559(25)*acd559(26)
      acd559(126)=acd559(23)*acd559(24)
      acd559(127)=acd559(34)*acd559(36)
      acd559(128)=acd559(33)*acd559(35)
      acd559(129)=acd559(20)*acd559(22)
      acd559(130)=acd559(17)*acd559(19)
      acd559(131)=-acd559(15)+acd559(3)+acd559(11)-acd559(13)
      acd559(132)=acd559(131)*acd559(9)
      acd559(119)=-acd559(132)+acd559(130)+acd559(127)+acd559(126)+acd559(125)+&
      &acd559(124)+acd559(123)+acd559(122)+acd559(121)+acd559(119)+acd559(120)+&
      &acd559(128)+acd559(129)
      acd559(120)=-acd559(10)-acd559(12)+acd559(14)+acd559(16)
      acd559(120)=acd559(120)*acd559(6)
      acd559(121)=acd559(32)*acd559(31)
      acd559(122)=acd559(30)*acd559(29)
      acd559(123)=acd559(21)*acd559(28)
      acd559(124)=acd559(18)*acd559(27)
      acd559(120)=-acd559(120)+acd559(124)+acd559(121)+acd559(122)+acd559(123)
      acd559(120)=acd559(120)*acd559(4)
      acd559(121)=acd559(34)*acd559(32)
      acd559(122)=acd559(33)*acd559(30)
      acd559(123)=acd559(20)*acd559(21)
      acd559(124)=acd559(17)*acd559(18)
      acd559(121)=acd559(121)+acd559(122)+acd559(123)+acd559(124)
      acd559(122)=acd559(8)*acd559(121)
      acd559(123)=acd559(8)*acd559(131)
      acd559(124)=acd559(6)*acd559(123)
      acd559(122)=acd559(120)+acd559(122)+acd559(124)
      acd559(122)=acd559(7)*acd559(122)
      acd559(124)=acd559(5)*acd559(121)
      acd559(125)=acd559(5)*acd559(131)
      acd559(126)=acd559(6)*acd559(125)
      acd559(124)=acd559(124)+acd559(126)
      acd559(124)=acd559(4)*acd559(124)
      acd559(126)=acd559(1)*acd559(2)
      acd559(122)=acd559(122)+acd559(124)+acd559(126)+acd559(119)
      acd559(124)=2.0_ki*acd559(54)
      acd559(126)=acd559(119)*acd559(124)
      acd559(127)=acd559(86)*acd559(87)
      acd559(128)=acd559(47)*acd559(93)
      acd559(129)=acd559(45)*acd559(92)
      acd559(130)=acd559(43)*acd559(91)
      acd559(132)=acd559(41)*acd559(90)
      acd559(133)=acd559(39)*acd559(89)
      acd559(134)=acd559(37)*acd559(88)
      acd559(135)=acd559(25)*acd559(84)
      acd559(136)=acd559(23)*acd559(83)
      acd559(127)=acd559(136)+acd559(132)+acd559(133)+acd559(134)+acd559(135)+a&
      &cd559(127)+acd559(128)+acd559(129)+acd559(130)
      acd559(128)=acd559(131)*acd559(6)
      acd559(129)=acd559(128)+acd559(121)
      acd559(129)=acd559(68)*acd559(129)
      acd559(130)=acd559(32)*acd559(78)
      acd559(132)=acd559(30)*acd559(77)
      acd559(133)=acd559(21)*acd559(76)
      acd559(134)=acd559(18)*acd559(75)
      acd559(130)=acd559(85)+acd559(130)+acd559(132)+acd559(133)+acd559(134)
      acd559(132)=-acd559(74)-acd559(73)+acd559(67)+acd559(72)
      acd559(133)=acd559(6)*acd559(132)
      acd559(133)=acd559(133)+acd559(130)
      acd559(133)=acd559(4)*acd559(133)
      acd559(134)=-acd559(1)-acd559(49)
      acd559(134)=acd559(50)*acd559(134)
      acd559(129)=acd559(133)+acd559(129)+acd559(134)+acd559(127)
      acd559(129)=acd559(7)*acd559(129)
      acd559(133)=acd559(47)*acd559(66)
      acd559(134)=acd559(45)*acd559(65)
      acd559(135)=acd559(43)*acd559(64)
      acd559(136)=acd559(41)*acd559(63)
      acd559(137)=acd559(39)*acd559(62)
      acd559(138)=acd559(37)*acd559(61)
      acd559(139)=acd559(25)*acd559(58)
      acd559(140)=acd559(23)*acd559(57)
      acd559(133)=acd559(140)-acd559(139)-acd559(138)+acd559(135)+acd559(134)-a&
      &cd559(133)+acd559(136)-acd559(137)
      acd559(134)=-acd559(53)*acd559(133)
      acd559(135)=acd559(34)*acd559(60)
      acd559(136)=acd559(33)*acd559(59)
      acd559(137)=acd559(20)*acd559(56)
      acd559(138)=acd559(17)*acd559(55)
      acd559(139)=acd559(131)*acd559(52)
      acd559(135)=acd559(135)+acd559(136)+acd559(137)+acd559(138)+acd559(139)+a&
      &cd559(133)
      acd559(136)=acd559(1)-acd559(53)
      acd559(136)=acd559(51)*acd559(136)
      acd559(137)=acd559(2)*acd559(124)
      acd559(136)=acd559(137)+acd559(136)+acd559(135)
      acd559(136)=acd559(1)*acd559(136)
      acd559(137)=-acd559(71)*acd559(131)
      acd559(138)=acd559(34)*acd559(82)
      acd559(139)=acd559(33)*acd559(81)
      acd559(140)=acd559(20)*acd559(80)
      acd559(141)=acd559(17)*acd559(79)
      acd559(137)=acd559(141)+acd559(140)+acd559(138)+acd559(139)+acd559(137)
      acd559(137)=acd559(70)*acd559(137)
      acd559(138)=acd559(69)*acd559(121)
      acd559(128)=acd559(128)*acd559(69)
      acd559(138)=acd559(138)+acd559(128)
      acd559(138)=acd559(4)*acd559(138)
      acd559(126)=acd559(129)+acd559(138)+acd559(136)+acd559(126)+acd559(134)+a&
      &cd559(137)
      acd559(129)=acd559(48)*acd559(106)
      acd559(134)=acd559(46)*acd559(105)
      acd559(136)=acd559(44)*acd559(104)
      acd559(137)=acd559(42)*acd559(103)
      acd559(138)=acd559(40)*acd559(102)
      acd559(139)=acd559(38)*acd559(101)
      acd559(140)=acd559(26)*acd559(100)
      acd559(141)=acd559(24)*acd559(99)
      acd559(142)=acd559(78)*acd559(36)
      acd559(143)=acd559(77)*acd559(35)
      acd559(144)=acd559(76)*acd559(22)
      acd559(145)=acd559(75)*acd559(19)
      acd559(146)=acd559(96)*acd559(2)
      acd559(147)=-acd559(9)*acd559(132)
      acd559(129)=acd559(147)+acd559(146)+acd559(145)+acd559(144)+acd559(143)+a&
      &cd559(142)+acd559(141)+acd559(140)+acd559(139)+acd559(138)+acd559(137)+a&
      &cd559(136)+acd559(134)+acd559(111)+acd559(129)
      acd559(124)=acd559(129)*acd559(124)
      acd559(120)=ninjaP*acd559(120)
      acd559(129)=acd559(68)*acd559(130)
      acd559(134)=acd559(121)*ninjaP
      acd559(136)=acd559(8)*acd559(134)
      acd559(137)=acd559(68)*acd559(132)
      acd559(123)=ninjaP*acd559(123)
      acd559(123)=acd559(137)+acd559(123)
      acd559(123)=acd559(6)*acd559(123)
      acd559(137)=-acd559(96)-acd559(94)
      acd559(137)=acd559(50)*acd559(137)
      acd559(138)=acd559(87)*acd559(112)
      acd559(139)=acd559(106)*acd559(93)
      acd559(140)=acd559(105)*acd559(92)
      acd559(141)=acd559(104)*acd559(91)
      acd559(142)=acd559(103)*acd559(90)
      acd559(143)=acd559(102)*acd559(89)
      acd559(144)=acd559(101)*acd559(88)
      acd559(145)=acd559(100)*acd559(84)
      acd559(146)=acd559(99)*acd559(83)
      acd559(120)=acd559(120)+acd559(123)+acd559(136)+acd559(129)+acd559(146)+a&
      &cd559(145)+acd559(144)+acd559(143)+acd559(142)+acd559(141)+acd559(140)+a&
      &cd559(139)+acd559(115)+acd559(138)+acd559(137)
      acd559(120)=acd559(7)*acd559(120)
      acd559(123)=ninjaP+acd559(98)
      acd559(119)=acd559(119)*acd559(123)
      acd559(121)=acd559(68)*acd559(121)
      acd559(129)=-acd559(50)*acd559(49)
      acd559(121)=acd559(121)+acd559(129)+acd559(127)
      acd559(121)=acd559(69)*acd559(121)
      acd559(127)=acd559(66)*acd559(106)
      acd559(129)=acd559(65)*acd559(105)
      acd559(136)=acd559(64)*acd559(104)
      acd559(137)=acd559(63)*acd559(103)
      acd559(138)=acd559(62)*acd559(102)
      acd559(139)=acd559(61)*acd559(101)
      acd559(140)=acd559(58)*acd559(100)
      acd559(141)=acd559(57)*acd559(99)
      acd559(127)=-acd559(138)-acd559(139)-acd559(140)+acd559(141)-acd559(127)+&
      &acd559(129)+acd559(136)+acd559(137)
      acd559(129)=2.0_ki*acd559(96)-acd559(97)
      acd559(129)=acd559(51)*acd559(129)
      acd559(123)=acd559(2)*acd559(123)
      acd559(136)=acd559(78)*acd559(60)
      acd559(137)=acd559(77)*acd559(59)
      acd559(138)=acd559(76)*acd559(56)
      acd559(139)=acd559(75)*acd559(55)
      acd559(140)=acd559(52)*acd559(132)
      acd559(141)=-acd559(69)*acd559(50)
      acd559(123)=acd559(141)+acd559(140)+acd559(139)+acd559(138)+acd559(137)+a&
      &cd559(107)+acd559(136)+acd559(123)+acd559(129)+acd559(127)
      acd559(123)=acd559(1)*acd559(123)
      acd559(129)=-acd559(97)*acd559(133)
      acd559(127)=acd559(110)-acd559(127)
      acd559(127)=acd559(53)*acd559(127)
      acd559(133)=-acd559(53)*acd559(51)
      acd559(133)=acd559(133)+acd559(135)
      acd559(133)=acd559(96)*acd559(133)
      acd559(135)=acd559(78)*acd559(82)
      acd559(136)=acd559(77)*acd559(81)
      acd559(137)=acd559(76)*acd559(80)
      acd559(138)=acd559(75)*acd559(79)
      acd559(139)=-acd559(71)*acd559(132)
      acd559(135)=acd559(139)+acd559(138)+acd559(137)+acd559(135)+acd559(136)
      acd559(135)=acd559(70)*acd559(135)
      acd559(130)=acd559(69)*acd559(130)
      acd559(134)=acd559(5)*acd559(134)
      acd559(132)=acd559(69)*acd559(132)
      acd559(125)=ninjaP*acd559(125)
      acd559(125)=acd559(132)+acd559(125)
      acd559(125)=acd559(6)*acd559(125)
      acd559(125)=acd559(125)+acd559(130)+acd559(134)
      acd559(125)=acd559(4)*acd559(125)
      acd559(130)=acd559(71)*acd559(108)
      acd559(130)=acd559(130)-acd559(109)
      acd559(130)=-acd559(130)*acd559(131)
      acd559(131)=acd559(86)*acd559(118)
      acd559(132)=acd559(49)*acd559(95)
      acd559(134)=acd559(108)*acd559(82)
      acd559(134)=acd559(117)+acd559(134)
      acd559(134)=acd559(34)*acd559(134)
      acd559(136)=acd559(108)*acd559(81)
      acd559(136)=acd559(116)+acd559(136)
      acd559(136)=acd559(33)*acd559(136)
      acd559(137)=acd559(108)*acd559(80)
      acd559(137)=acd559(114)+acd559(137)
      acd559(137)=acd559(20)*acd559(137)
      acd559(138)=acd559(108)*acd559(79)
      acd559(138)=acd559(113)+acd559(138)
      acd559(138)=acd559(17)*acd559(138)
      acd559(128)=acd559(68)*acd559(128)
      acd559(119)=acd559(120)+acd559(125)+acd559(128)+acd559(123)+acd559(121)+a&
      &cd559(124)+acd559(133)+acd559(127)+acd559(138)+acd559(137)+acd559(136)+a&
      &cd559(134)+acd559(135)+acd559(131)+acd559(132)+acd559(129)+acd559(130)+a&
      &cd559(119)
      brack(ninjaidxt1mu0)=acd559(126)
      brack(ninjaidxt0mu0)=acd559(119)
      brack(ninjaidxt0mu2)=acd559(122)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d559h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd559h1
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
end module     p8_cbarc_epnemumnmubarg_d559h1l131
