module     p0_dbard_epnemumnmubarg_d573h6l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity6d573h6l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd573h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(20) :: acd573
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd573(1)=dotproduct(k3,ninjaE3)
      acd573(2)=dotproduct(ninjaE3,spvak2k1)
      acd573(3)=dotproduct(ninjaE3,spvak7k2)
      acd573(4)=abb573(30)
      acd573(5)=dotproduct(k4,ninjaE3)
      acd573(6)=dotproduct(k5,ninjaE3)
      acd573(7)=dotproduct(k6,ninjaE3)
      acd573(8)=dotproduct(ninjaE3,spvak5k6)
      acd573(9)=abb573(31)
      acd573(10)=dotproduct(ninjaE3,spvak5k3)
      acd573(11)=abb573(32)
      acd573(12)=dotproduct(ninjaE3,spvak4k6)
      acd573(13)=abb573(33)
      acd573(14)=dotproduct(ninjaE3,spvak4k3)
      acd573(15)=abb573(34)
      acd573(16)=acd573(7)+acd573(6)-acd573(1)-acd573(5)
      acd573(16)=acd573(4)*acd573(16)
      acd573(17)=acd573(9)*acd573(8)
      acd573(18)=acd573(11)*acd573(10)
      acd573(19)=acd573(13)*acd573(12)
      acd573(20)=acd573(15)*acd573(14)
      acd573(16)=acd573(20)+acd573(19)+acd573(18)+acd573(17)+acd573(16)
      acd573(16)=acd573(16)*acd573(3)*acd573(2)
      brack(ninjaidxt2mu0)=acd573(16)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd573h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(144) :: acd573
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd573(1)=dotproduct(k2,ninjaE3)
      acd573(2)=abb573(27)
      acd573(3)=dotproduct(k3,ninjaE3)
      acd573(4)=dotproduct(ninjaE3,spvak7k2)
      acd573(5)=dotproduct(ninjaE4,spvak2k1)
      acd573(6)=abb573(30)
      acd573(7)=dotproduct(ninjaE3,spvak2k1)
      acd573(8)=dotproduct(ninjaE4,spvak7k2)
      acd573(9)=abb573(102)
      acd573(10)=dotproduct(k3,ninjaE4)
      acd573(11)=dotproduct(k4,ninjaE3)
      acd573(12)=dotproduct(k4,ninjaE4)
      acd573(13)=dotproduct(k5,ninjaE3)
      acd573(14)=dotproduct(k5,ninjaE4)
      acd573(15)=dotproduct(k6,ninjaE3)
      acd573(16)=dotproduct(k6,ninjaE4)
      acd573(17)=dotproduct(ninjaE3,spvak5k3)
      acd573(18)=abb573(32)
      acd573(19)=abb573(59)
      acd573(20)=dotproduct(ninjaE3,spvak4k3)
      acd573(21)=abb573(34)
      acd573(22)=dotproduct(ninjaE4,spvak5k3)
      acd573(23)=dotproduct(ninjaE4,spvak4k3)
      acd573(24)=dotproduct(ninjaE4,spvak5k6)
      acd573(25)=abb573(31)
      acd573(26)=dotproduct(ninjaE4,spvak4k6)
      acd573(27)=abb573(33)
      acd573(28)=dotproduct(ninjaE3,spvak5k6)
      acd573(29)=dotproduct(ninjaE3,spvak4k6)
      acd573(30)=abb573(43)
      acd573(31)=abb573(17)
      acd573(32)=dotproduct(ninjaE3,spvak2k3)
      acd573(33)=abb573(20)
      acd573(34)=dotproduct(ninjaE3,spvak2k6)
      acd573(35)=abb573(21)
      acd573(36)=dotproduct(ninjaE3,spvak2k5)
      acd573(37)=abb573(47)
      acd573(38)=abb573(41)
      acd573(39)=abb573(94)
      acd573(40)=dotproduct(ninjaE3,spvak2k4)
      acd573(41)=abb573(68)
      acd573(42)=dotproduct(k1,ninjaE3)
      acd573(43)=abb573(247)
      acd573(44)=abb573(61)
      acd573(45)=abb573(208)
      acd573(46)=dotproduct(ninjaA,ninjaE3)
      acd573(47)=abb573(87)
      acd573(48)=abb573(24)
      acd573(49)=abb573(25)
      acd573(50)=abb573(28)
      acd573(51)=abb573(29)
      acd573(52)=abb573(67)
      acd573(53)=abb573(112)
      acd573(54)=abb573(53)
      acd573(55)=dotproduct(k3,ninjaA)
      acd573(56)=dotproduct(k7,ninjaE3)
      acd573(57)=dotproduct(ninjaA,spvak7k2)
      acd573(58)=dotproduct(ninjaA,spvak2k1)
      acd573(59)=abb573(55)
      acd573(60)=dotproduct(k4,ninjaA)
      acd573(61)=dotproduct(k5,ninjaA)
      acd573(62)=dotproduct(k6,ninjaA)
      acd573(63)=abb573(50)
      acd573(64)=dotproduct(ninjaA,spvak5k3)
      acd573(65)=dotproduct(ninjaA,spvak4k3)
      acd573(66)=dotproduct(ninjaA,spvak5k6)
      acd573(67)=dotproduct(ninjaA,spvak4k6)
      acd573(68)=dotproduct(ninjaE3,spvak2k7)
      acd573(69)=abb573(95)
      acd573(70)=abb573(76)
      acd573(71)=abb573(19)
      acd573(72)=abb573(26)
      acd573(73)=abb573(22)
      acd573(74)=abb573(48)
      acd573(75)=abb573(35)
      acd573(76)=abb573(114)
      acd573(77)=dotproduct(ninjaE3,spvak5k1)
      acd573(78)=abb573(36)
      acd573(79)=abb573(73)
      acd573(80)=dotproduct(ninjaE3,spvak3k1)
      acd573(81)=abb573(63)
      acd573(82)=dotproduct(ninjaE3,spvak4k1)
      acd573(83)=abb573(64)
      acd573(84)=dotproduct(ninjaE3,spvak6k1)
      acd573(85)=abb573(75)
      acd573(86)=dotproduct(k1,ninjaA)
      acd573(87)=dotproduct(k2,ninjaA)
      acd573(88)=abb573(23)
      acd573(89)=dotproduct(ninjaA,ninjaA)
      acd573(90)=dotproduct(ninjaA,spvak2k3)
      acd573(91)=dotproduct(ninjaA,spvak2k6)
      acd573(92)=dotproduct(ninjaA,spvak2k5)
      acd573(93)=dotproduct(ninjaA,spvak2k4)
      acd573(94)=abb573(11)
      acd573(95)=dotproduct(k7,ninjaA)
      acd573(96)=abb573(152)
      acd573(97)=abb573(42)
      acd573(98)=abb573(13)
      acd573(99)=dotproduct(ninjaA,spvak2k7)
      acd573(100)=dotproduct(ninjaA,spvak5k1)
      acd573(101)=dotproduct(ninjaA,spvak3k1)
      acd573(102)=dotproduct(ninjaA,spvak4k1)
      acd573(103)=dotproduct(ninjaA,spvak6k1)
      acd573(104)=abb573(12)
      acd573(105)=abb573(14)
      acd573(106)=abb573(15)
      acd573(107)=abb573(16)
      acd573(108)=abb573(79)
      acd573(109)=abb573(110)
      acd573(110)=-acd573(3)-acd573(11)+acd573(13)+acd573(15)
      acd573(111)=acd573(110)*acd573(9)
      acd573(112)=acd573(40)*acd573(41)
      acd573(113)=acd573(36)*acd573(37)
      acd573(114)=acd573(34)*acd573(35)
      acd573(115)=acd573(32)*acd573(33)
      acd573(111)=acd573(111)+acd573(115)+acd573(114)+acd573(112)+acd573(113)
      acd573(112)=acd573(29)*acd573(39)
      acd573(113)=acd573(28)*acd573(38)
      acd573(114)=acd573(20)*acd573(31)
      acd573(115)=acd573(17)*acd573(19)
      acd573(112)=acd573(114)+acd573(113)+acd573(112)+acd573(115)+acd573(111)
      acd573(113)=acd573(1)*acd573(2)
      acd573(113)=acd573(113)-acd573(112)
      acd573(114)=-acd573(10)-acd573(12)+acd573(14)+acd573(16)
      acd573(114)=acd573(114)*acd573(6)
      acd573(115)=acd573(27)*acd573(26)
      acd573(116)=acd573(25)*acd573(24)
      acd573(117)=acd573(21)*acd573(23)
      acd573(118)=acd573(18)*acd573(22)
      acd573(114)=acd573(114)+acd573(115)+acd573(116)+acd573(117)+acd573(118)
      acd573(114)=acd573(114)*acd573(7)
      acd573(115)=acd573(29)*acd573(27)
      acd573(116)=acd573(28)*acd573(25)
      acd573(117)=acd573(20)*acd573(21)
      acd573(118)=acd573(17)*acd573(18)
      acd573(115)=acd573(118)+acd573(117)+acd573(115)+acd573(116)
      acd573(116)=acd573(115)*acd573(5)
      acd573(114)=acd573(114)+acd573(116)+acd573(30)
      acd573(116)=acd573(110)*acd573(5)
      acd573(117)=acd573(6)*acd573(116)
      acd573(117)=acd573(117)+acd573(114)
      acd573(117)=acd573(4)*acd573(117)
      acd573(118)=acd573(115)*acd573(8)
      acd573(119)=acd573(110)*acd573(8)
      acd573(120)=acd573(6)*acd573(119)
      acd573(120)=acd573(120)+acd573(118)
      acd573(120)=acd573(7)*acd573(120)
      acd573(117)=acd573(117)+acd573(120)-acd573(113)
      acd573(120)=acd573(115)*acd573(58)
      acd573(121)=acd573(85)*acd573(84)
      acd573(122)=acd573(83)*acd573(82)
      acd573(123)=acd573(81)*acd573(80)
      acd573(124)=acd573(78)*acd573(77)
      acd573(125)=acd573(42)*acd573(44)
      acd573(126)=acd573(2)*acd573(68)
      acd573(127)=acd573(40)*acd573(79)
      acd573(128)=acd573(36)*acd573(74)
      acd573(129)=acd573(34)*acd573(73)
      acd573(130)=acd573(32)*acd573(72)
      acd573(131)=acd573(29)*acd573(76)
      acd573(132)=acd573(28)*acd573(75)
      acd573(133)=acd573(20)*acd573(70)
      acd573(134)=acd573(17)*acd573(69)
      acd573(135)=acd573(56)*acd573(63)
      acd573(136)=2.0_ki*acd573(46)
      acd573(137)=acd573(136)*acd573(30)
      acd573(138)=acd573(110)*acd573(59)
      acd573(120)=acd573(123)+acd573(124)+acd573(125)+acd573(126)+acd573(135)+a&
      &cd573(137)+acd573(138)+acd573(120)+acd573(121)+acd573(122)+acd573(131)+a&
      &cd573(132)+acd573(133)+acd573(134)+acd573(127)+acd573(128)+acd573(129)+a&
      &cd573(130)
      acd573(121)=acd573(27)*acd573(67)
      acd573(122)=acd573(25)*acd573(66)
      acd573(123)=acd573(21)*acd573(65)
      acd573(124)=acd573(18)*acd573(64)
      acd573(121)=acd573(123)+acd573(121)+acd573(122)+acd573(124)+acd573(71)
      acd573(122)=-acd573(55)-acd573(60)+acd573(61)+acd573(62)
      acd573(123)=acd573(6)*acd573(122)
      acd573(123)=acd573(123)+acd573(121)
      acd573(123)=acd573(7)*acd573(123)
      acd573(124)=acd573(110)*acd573(6)
      acd573(125)=acd573(124)*acd573(58)
      acd573(123)=acd573(123)+acd573(125)+acd573(120)
      acd573(123)=acd573(4)*acd573(123)
      acd573(125)=acd573(110)*acd573(45)
      acd573(126)=acd573(29)*acd573(53)
      acd573(127)=acd573(28)*acd573(52)
      acd573(128)=acd573(20)*acd573(48)
      acd573(129)=acd573(17)*acd573(47)
      acd573(126)=-acd573(126)-acd573(129)-acd573(125)+acd573(127)-acd573(128)
      acd573(127)=acd573(40)*acd573(54)
      acd573(128)=acd573(36)*acd573(51)
      acd573(129)=acd573(34)*acd573(50)
      acd573(130)=acd573(32)*acd573(49)
      acd573(127)=-acd573(130)-acd573(129)+acd573(127)-acd573(128)
      acd573(128)=acd573(127)+acd573(126)
      acd573(128)=acd573(56)*acd573(128)
      acd573(112)=acd573(112)*acd573(136)
      acd573(129)=acd573(42)*acd573(43)
      acd573(129)=acd573(129)-acd573(127)
      acd573(130)=-acd573(2)*acd573(136)
      acd573(126)=acd573(130)+acd573(129)+acd573(126)
      acd573(126)=acd573(1)*acd573(126)
      acd573(115)=acd573(57)*acd573(115)
      acd573(124)=acd573(124)*acd573(57)
      acd573(115)=acd573(115)+acd573(124)
      acd573(115)=acd573(7)*acd573(115)
      acd573(112)=acd573(123)+acd573(115)+acd573(126)+acd573(128)+acd573(112)
      acd573(114)=ninjaP*acd573(114)
      acd573(115)=acd573(58)*acd573(121)
      acd573(123)=acd573(58)*acd573(122)
      acd573(116)=ninjaP*acd573(116)
      acd573(116)=acd573(123)+acd573(116)
      acd573(116)=acd573(6)*acd573(116)
      acd573(123)=acd573(85)*acd573(103)
      acd573(126)=acd573(83)*acd573(102)
      acd573(128)=acd573(81)*acd573(101)
      acd573(130)=acd573(78)*acd573(100)
      acd573(131)=acd573(44)*acd573(86)
      acd573(132)=acd573(93)*acd573(79)
      acd573(133)=acd573(92)*acd573(74)
      acd573(134)=acd573(91)*acd573(73)
      acd573(135)=acd573(90)*acd573(72)
      acd573(137)=acd573(67)*acd573(76)
      acd573(138)=acd573(66)*acd573(75)
      acd573(139)=acd573(65)*acd573(70)
      acd573(140)=acd573(64)*acd573(69)
      acd573(141)=acd573(2)*acd573(99)
      acd573(142)=acd573(59)*acd573(122)
      acd573(143)=acd573(95)*acd573(63)
      acd573(144)=acd573(89)*acd573(30)
      acd573(114)=acd573(116)+acd573(115)+acd573(144)+acd573(143)+acd573(142)+a&
      &cd573(141)+acd573(140)+acd573(139)+acd573(138)+acd573(137)+acd573(135)+a&
      &cd573(134)+acd573(133)+acd573(132)+acd573(131)+acd573(130)+acd573(128)+a&
      &cd573(126)+acd573(106)+acd573(123)+acd573(114)
      acd573(114)=acd573(4)*acd573(114)
      acd573(115)=acd573(57)*acd573(120)
      acd573(116)=acd573(41)*acd573(93)
      acd573(120)=acd573(37)*acd573(92)
      acd573(123)=acd573(35)*acd573(91)
      acd573(126)=acd573(33)*acd573(90)
      acd573(128)=acd573(67)*acd573(39)
      acd573(130)=acd573(66)*acd573(38)
      acd573(131)=acd573(65)*acd573(31)
      acd573(132)=acd573(64)*acd573(19)
      acd573(133)=-acd573(87)*acd573(2)
      acd573(134)=acd573(9)*acd573(122)
      acd573(116)=acd573(134)+acd573(133)+acd573(132)+acd573(131)+acd573(130)+a&
      &cd573(128)+acd573(126)+acd573(123)+acd573(120)+acd573(98)+acd573(116)
      acd573(116)=acd573(116)*acd573(136)
      acd573(111)=acd573(89)*acd573(111)
      acd573(120)=acd573(67)*acd573(53)
      acd573(123)=acd573(66)*acd573(52)
      acd573(126)=acd573(65)*acd573(48)
      acd573(128)=acd573(64)*acd573(47)
      acd573(130)=acd573(122)*acd573(45)
      acd573(120)=acd573(130)+acd573(120)-acd573(123)+acd573(126)+acd573(128)
      acd573(123)=acd573(54)*acd573(93)
      acd573(126)=acd573(51)*acd573(92)
      acd573(128)=acd573(50)*acd573(91)
      acd573(130)=acd573(49)*acd573(90)
      acd573(123)=-acd573(123)+acd573(126)+acd573(128)+acd573(130)
      acd573(126)=acd573(97)-acd573(123)-acd573(120)
      acd573(126)=acd573(56)*acd573(126)
      acd573(128)=acd573(43)*acd573(86)
      acd573(130)=-acd573(89)*acd573(2)
      acd573(120)=acd573(130)+acd573(94)+acd573(128)+acd573(123)-acd573(120)
      acd573(120)=acd573(1)*acd573(120)
      acd573(113)=-ninjaP*acd573(113)
      acd573(118)=ninjaP*acd573(118)
      acd573(121)=acd573(57)*acd573(121)
      acd573(119)=ninjaP*acd573(119)
      acd573(122)=acd573(57)*acd573(122)
      acd573(119)=acd573(119)+acd573(122)
      acd573(119)=acd573(6)*acd573(119)
      acd573(118)=acd573(119)+acd573(118)+acd573(121)
      acd573(118)=acd573(7)*acd573(118)
      acd573(119)=acd573(95)*acd573(127)
      acd573(121)=acd573(87)*acd573(129)
      acd573(122)=acd573(87)+acd573(95)
      acd573(123)=-acd573(53)*acd573(122)
      acd573(127)=acd573(89)*acd573(39)
      acd573(123)=acd573(127)+acd573(109)+acd573(123)
      acd573(123)=acd573(29)*acd573(123)
      acd573(127)=acd573(52)*acd573(122)
      acd573(128)=acd573(89)*acd573(38)
      acd573(127)=acd573(128)+acd573(108)+acd573(127)
      acd573(127)=acd573(28)*acd573(127)
      acd573(128)=-acd573(48)*acd573(122)
      acd573(129)=acd573(89)*acd573(31)
      acd573(128)=acd573(129)+acd573(107)+acd573(128)
      acd573(128)=acd573(20)*acd573(128)
      acd573(129)=-acd573(47)*acd573(122)
      acd573(130)=acd573(89)*acd573(19)
      acd573(129)=acd573(130)+acd573(105)+acd573(129)
      acd573(129)=acd573(17)*acd573(129)
      acd573(122)=-acd573(122)*acd573(125)
      acd573(110)=acd573(96)*acd573(110)
      acd573(125)=acd573(68)*acd573(104)
      acd573(130)=acd573(42)*acd573(88)
      acd573(124)=acd573(58)*acd573(124)
      acd573(110)=acd573(114)+acd573(118)+acd573(124)+acd573(115)+acd573(113)+a&
      &cd573(120)+acd573(116)+acd573(126)+acd573(122)+acd573(129)+acd573(128)+a&
      &cd573(127)+acd573(123)+acd573(121)+acd573(119)+acd573(125)+acd573(130)+a&
      &cd573(110)+acd573(111)
      brack(ninjaidxt1mu0)=acd573(112)
      brack(ninjaidxt0mu0)=acd573(110)
      brack(ninjaidxt0mu2)=acd573(117)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d573h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd573h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbard_epnemumnmubarg_d573h6l131
