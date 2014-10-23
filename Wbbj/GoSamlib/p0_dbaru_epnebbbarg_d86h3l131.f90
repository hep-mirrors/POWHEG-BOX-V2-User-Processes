module     p0_dbaru_epnebbbarg_d86h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d86h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd86h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(50) :: acd86
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd86(1)=dotproduct(k1,ninjaE3)
      acd86(2)=dotproduct(ninjaE3,spvak2l5)
      acd86(3)=abb86(37)
      acd86(4)=dotproduct(ninjaE3,spvak2l6)
      acd86(5)=abb86(71)
      acd86(6)=dotproduct(k2,ninjaE3)
      acd86(7)=abb86(28)
      acd86(8)=abb86(57)
      acd86(9)=dotproduct(k3,ninjaE3)
      acd86(10)=abb86(36)
      acd86(11)=abb86(94)
      acd86(12)=dotproduct(k4,ninjaE3)
      acd86(13)=dotproduct(l5,ninjaE3)
      acd86(14)=abb86(27)
      acd86(15)=abb86(64)
      acd86(16)=dotproduct(l6,ninjaE3)
      acd86(17)=dotproduct(k7,ninjaE3)
      acd86(18)=abb86(26)
      acd86(19)=abb86(58)
      acd86(20)=dotproduct(ninjaE3,spvak4k3)
      acd86(21)=abb86(19)
      acd86(22)=dotproduct(ninjaE3,spvak2k7)
      acd86(23)=abb86(22)
      acd86(24)=dotproduct(ninjaE3,spvak4k2)
      acd86(25)=abb86(24)
      acd86(26)=dotproduct(ninjaE3,spvak1k2)
      acd86(27)=abb86(34)
      acd86(28)=dotproduct(ninjaE3,spval6k2)
      acd86(29)=abb86(39)
      acd86(30)=dotproduct(ninjaE3,spval5k2)
      acd86(31)=abb86(42)
      acd86(32)=abb86(107)
      acd86(33)=abb86(30)
      acd86(34)=abb86(73)
      acd86(35)=abb86(29)
      acd86(36)=abb86(87)
      acd86(37)=abb86(93)
      acd86(38)=acd86(13)+acd86(16)
      acd86(39)=-acd86(15)*acd86(38)
      acd86(40)=acd86(9)+acd86(12)
      acd86(41)=-acd86(11)*acd86(40)
      acd86(42)=acd86(30)*acd86(37)
      acd86(43)=acd86(28)*acd86(36)
      acd86(44)=acd86(26)*acd86(35)
      acd86(45)=acd86(24)*acd86(34)
      acd86(46)=acd86(22)*acd86(33)
      acd86(47)=acd86(20)*acd86(32)
      acd86(48)=acd86(17)*acd86(19)
      acd86(49)=acd86(6)*acd86(8)
      acd86(50)=acd86(1)*acd86(5)
      acd86(39)=acd86(50)+acd86(49)+acd86(48)+acd86(47)+acd86(46)+acd86(45)+acd&
      &86(44)+acd86(42)+acd86(43)+acd86(41)+acd86(39)
      acd86(39)=acd86(4)*acd86(39)
      acd86(38)=-acd86(14)*acd86(38)
      acd86(40)=-acd86(10)*acd86(40)
      acd86(41)=acd86(30)*acd86(31)
      acd86(42)=acd86(28)*acd86(29)
      acd86(43)=acd86(26)*acd86(27)
      acd86(44)=acd86(24)*acd86(25)
      acd86(45)=acd86(22)*acd86(23)
      acd86(46)=acd86(20)*acd86(21)
      acd86(47)=acd86(17)*acd86(18)
      acd86(48)=acd86(6)*acd86(7)
      acd86(49)=acd86(1)*acd86(3)
      acd86(38)=acd86(49)+acd86(48)+acd86(47)+acd86(46)+acd86(45)+acd86(44)+acd&
      &86(43)+acd86(41)+acd86(42)+acd86(40)+acd86(38)
      acd86(38)=acd86(2)*acd86(38)
      acd86(38)=acd86(39)+acd86(38)
      brack(ninjaidxt2mu0)=acd86(38)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd86h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(146) :: acd86
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd86(1)=dotproduct(k1,ninjaE3)
      acd86(2)=dotproduct(ninjaE4,spvak2l5)
      acd86(3)=abb86(37)
      acd86(4)=dotproduct(ninjaE4,spvak2l6)
      acd86(5)=abb86(71)
      acd86(6)=dotproduct(k1,ninjaE4)
      acd86(7)=dotproduct(ninjaE3,spvak2l5)
      acd86(8)=dotproduct(ninjaE3,spvak2l6)
      acd86(9)=dotproduct(k2,ninjaE3)
      acd86(10)=abb86(28)
      acd86(11)=abb86(57)
      acd86(12)=dotproduct(k2,ninjaE4)
      acd86(13)=dotproduct(k3,ninjaE3)
      acd86(14)=abb86(36)
      acd86(15)=abb86(94)
      acd86(16)=dotproduct(k3,ninjaE4)
      acd86(17)=dotproduct(k4,ninjaE3)
      acd86(18)=dotproduct(k4,ninjaE4)
      acd86(19)=dotproduct(l5,ninjaE3)
      acd86(20)=abb86(27)
      acd86(21)=abb86(64)
      acd86(22)=dotproduct(l5,ninjaE4)
      acd86(23)=dotproduct(l6,ninjaE3)
      acd86(24)=dotproduct(l6,ninjaE4)
      acd86(25)=dotproduct(k7,ninjaE3)
      acd86(26)=abb86(26)
      acd86(27)=abb86(58)
      acd86(28)=dotproduct(k7,ninjaE4)
      acd86(29)=dotproduct(ninjaE3,spvak1k2)
      acd86(30)=abb86(34)
      acd86(31)=abb86(29)
      acd86(32)=dotproduct(ninjaE4,spvak1k2)
      acd86(33)=dotproduct(ninjaE4,spvak4k3)
      acd86(34)=abb86(19)
      acd86(35)=dotproduct(ninjaE4,spvak2k7)
      acd86(36)=abb86(22)
      acd86(37)=dotproduct(ninjaE4,spvak4k2)
      acd86(38)=abb86(24)
      acd86(39)=dotproduct(ninjaE4,spval6k2)
      acd86(40)=abb86(39)
      acd86(41)=dotproduct(ninjaE4,spval5k2)
      acd86(42)=abb86(42)
      acd86(43)=dotproduct(ninjaE3,spvak4k3)
      acd86(44)=abb86(107)
      acd86(45)=dotproduct(ninjaE3,spvak2k7)
      acd86(46)=abb86(30)
      acd86(47)=dotproduct(ninjaE3,spvak4k2)
      acd86(48)=abb86(73)
      acd86(49)=abb86(87)
      acd86(50)=abb86(93)
      acd86(51)=dotproduct(ninjaE3,spval6k2)
      acd86(52)=dotproduct(ninjaE3,spval5k2)
      acd86(53)=abb86(66)
      acd86(54)=dotproduct(k1,ninjaA)
      acd86(55)=dotproduct(ninjaA,spvak2l5)
      acd86(56)=dotproduct(ninjaA,spvak2l6)
      acd86(57)=abb86(52)
      acd86(58)=dotproduct(k2,ninjaA)
      acd86(59)=abb86(35)
      acd86(60)=dotproduct(k3,ninjaA)
      acd86(61)=abb86(102)
      acd86(62)=dotproduct(k4,ninjaA)
      acd86(63)=dotproduct(l5,ninjaA)
      acd86(64)=abb86(48)
      acd86(65)=dotproduct(l6,ninjaA)
      acd86(66)=abb86(41)
      acd86(67)=dotproduct(k7,ninjaA)
      acd86(68)=abb86(121)
      acd86(69)=dotproduct(ninjaA,ninjaE3)
      acd86(70)=dotproduct(ninjaA,spvak1k2)
      acd86(71)=dotproduct(ninjaA,spvak4k3)
      acd86(72)=dotproduct(ninjaA,spvak2k7)
      acd86(73)=dotproduct(ninjaA,spvak4k2)
      acd86(74)=dotproduct(ninjaA,spval6k2)
      acd86(75)=dotproduct(ninjaA,spval5k2)
      acd86(76)=dotproduct(ninjaE3,spvak1l5)
      acd86(77)=abb86(17)
      acd86(78)=abb86(18)
      acd86(79)=abb86(23)
      acd86(80)=abb86(165)
      acd86(81)=dotproduct(ninjaE3,spvak1k3)
      acd86(82)=abb86(20)
      acd86(83)=abb86(21)
      acd86(84)=abb86(128)
      acd86(85)=dotproduct(ninjaE3,spvak2k3)
      acd86(86)=abb86(25)
      acd86(87)=abb86(50)
      acd86(88)=dotproduct(ninjaE3,spvak2k1)
      acd86(89)=abb86(31)
      acd86(90)=dotproduct(ninjaE3,spvak1k7)
      acd86(91)=abb86(32)
      acd86(92)=dotproduct(ninjaE3,spvak1l6)
      acd86(93)=abb86(33)
      acd86(94)=abb86(245)
      acd86(95)=abb86(77)
      acd86(96)=dotproduct(ninjaE3,spval5l6)
      acd86(97)=abb86(74)
      acd86(98)=dotproduct(ninjaE3,spvak7l6)
      acd86(99)=abb86(103)
      acd86(100)=dotproduct(ninjaE3,spvak4k7)
      acd86(101)=abb86(140)
      acd86(102)=dotproduct(ninjaE3,spvak4l6)
      acd86(103)=abb86(166)
      acd86(104)=dotproduct(ninjaA,ninjaA)
      acd86(105)=dotproduct(ninjaA,spvak1l5)
      acd86(106)=dotproduct(ninjaA,spvak1k3)
      acd86(107)=dotproduct(ninjaA,spvak2k3)
      acd86(108)=dotproduct(ninjaA,spvak2k1)
      acd86(109)=dotproduct(ninjaA,spvak1k7)
      acd86(110)=dotproduct(ninjaA,spvak1l6)
      acd86(111)=dotproduct(ninjaA,spval5l6)
      acd86(112)=dotproduct(ninjaA,spvak7l6)
      acd86(113)=dotproduct(ninjaA,spvak4k7)
      acd86(114)=dotproduct(ninjaA,spvak4l6)
      acd86(115)=abb86(65)
      acd86(116)=acd86(42)*acd86(41)
      acd86(117)=acd86(40)*acd86(39)
      acd86(118)=acd86(38)*acd86(37)
      acd86(119)=acd86(36)*acd86(35)
      acd86(120)=acd86(34)*acd86(33)
      acd86(121)=acd86(30)*acd86(32)
      acd86(122)=acd86(26)*acd86(28)
      acd86(123)=acd86(10)*acd86(12)
      acd86(124)=acd86(3)*acd86(6)
      acd86(125)=acd86(16)+acd86(18)
      acd86(126)=acd86(125)*acd86(14)
      acd86(127)=acd86(22)+acd86(24)
      acd86(128)=acd86(127)*acd86(20)
      acd86(116)=acd86(116)-acd86(126)-acd86(128)+acd86(121)+acd86(122)+acd86(1&
      &23)+acd86(124)+acd86(117)+acd86(118)+acd86(119)+acd86(120)
      acd86(116)=acd86(116)*acd86(7)
      acd86(117)=acd86(50)*acd86(41)
      acd86(118)=acd86(49)*acd86(39)
      acd86(119)=acd86(48)*acd86(37)
      acd86(120)=acd86(46)*acd86(35)
      acd86(121)=acd86(44)*acd86(33)
      acd86(122)=acd86(31)*acd86(32)
      acd86(123)=acd86(27)*acd86(28)
      acd86(124)=acd86(11)*acd86(12)
      acd86(126)=acd86(5)*acd86(6)
      acd86(125)=acd86(125)*acd86(15)
      acd86(127)=acd86(127)*acd86(21)
      acd86(117)=acd86(117)-acd86(125)-acd86(127)+acd86(122)+acd86(123)+acd86(1&
      &24)+acd86(126)+acd86(118)+acd86(119)+acd86(120)+acd86(121)
      acd86(117)=acd86(117)*acd86(8)
      acd86(118)=acd86(50)*acd86(52)
      acd86(119)=acd86(49)*acd86(51)
      acd86(120)=acd86(47)*acd86(48)
      acd86(121)=acd86(45)*acd86(46)
      acd86(122)=acd86(43)*acd86(44)
      acd86(123)=acd86(29)*acd86(31)
      acd86(124)=acd86(25)*acd86(27)
      acd86(125)=acd86(13)+acd86(17)
      acd86(126)=acd86(125)*acd86(15)
      acd86(127)=acd86(19)+acd86(23)
      acd86(128)=acd86(127)*acd86(21)
      acd86(129)=acd86(9)*acd86(11)
      acd86(130)=acd86(1)*acd86(5)
      acd86(118)=-acd86(128)-acd86(126)+acd86(124)+acd86(123)+acd86(122)+acd86(&
      &121)+acd86(120)+acd86(118)+acd86(119)+acd86(129)+acd86(130)
      acd86(119)=acd86(118)*acd86(4)
      acd86(120)=acd86(42)*acd86(52)
      acd86(121)=acd86(40)*acd86(51)
      acd86(122)=acd86(38)*acd86(47)
      acd86(123)=acd86(36)*acd86(45)
      acd86(124)=acd86(34)*acd86(43)
      acd86(126)=acd86(29)*acd86(30)
      acd86(128)=acd86(25)*acd86(26)
      acd86(129)=acd86(125)*acd86(14)
      acd86(127)=acd86(127)*acd86(20)
      acd86(130)=acd86(9)*acd86(10)
      acd86(131)=acd86(1)*acd86(3)
      acd86(120)=acd86(131)+acd86(130)-acd86(127)-acd86(129)+acd86(128)+acd86(1&
      &26)+acd86(122)+acd86(121)+acd86(120)+acd86(123)+acd86(124)
      acd86(121)=acd86(120)*acd86(2)
      acd86(116)=acd86(53)+acd86(119)+acd86(121)+acd86(116)+acd86(117)
      acd86(117)=acd86(56)*acd86(118)
      acd86(118)=acd86(55)*acd86(120)
      acd86(119)=acd86(50)*acd86(75)
      acd86(120)=acd86(49)*acd86(74)
      acd86(121)=acd86(48)*acd86(73)
      acd86(122)=acd86(46)*acd86(72)
      acd86(123)=acd86(44)*acd86(71)
      acd86(124)=acd86(31)*acd86(70)
      acd86(126)=acd86(27)*acd86(67)
      acd86(127)=acd86(11)*acd86(58)
      acd86(128)=acd86(5)*acd86(54)
      acd86(129)=acd86(60)+acd86(62)
      acd86(130)=acd86(129)*acd86(15)
      acd86(131)=acd86(63)+acd86(65)
      acd86(132)=acd86(131)*acd86(21)
      acd86(119)=-acd86(124)-acd86(126)-acd86(127)-acd86(128)-acd86(120)-acd86(&
      &121)-acd86(122)-acd86(123)-acd86(87)-acd86(119)+acd86(130)+acd86(132)
      acd86(120)=-acd86(8)*acd86(119)
      acd86(121)=acd86(42)*acd86(75)
      acd86(122)=acd86(40)*acd86(74)
      acd86(123)=acd86(38)*acd86(73)
      acd86(124)=acd86(36)*acd86(72)
      acd86(126)=acd86(34)*acd86(71)
      acd86(127)=acd86(30)*acd86(70)
      acd86(128)=acd86(26)*acd86(67)
      acd86(130)=acd86(10)*acd86(58)
      acd86(132)=acd86(3)*acd86(54)
      acd86(133)=acd86(129)*acd86(14)
      acd86(131)=acd86(131)*acd86(20)
      acd86(121)=acd86(132)-acd86(133)-acd86(131)+acd86(79)+acd86(126)+acd86(12&
      &7)+acd86(128)+acd86(130)+acd86(121)+acd86(122)+acd86(123)+acd86(124)
      acd86(122)=acd86(7)*acd86(121)
      acd86(123)=-acd86(61)*acd86(125)
      acd86(124)=acd86(103)*acd86(102)
      acd86(125)=acd86(101)*acd86(100)
      acd86(126)=acd86(99)*acd86(98)
      acd86(127)=acd86(97)*acd86(96)
      acd86(128)=acd86(93)*acd86(92)
      acd86(130)=acd86(91)*acd86(90)
      acd86(131)=acd86(89)*acd86(88)
      acd86(132)=acd86(86)*acd86(85)
      acd86(133)=acd86(82)*acd86(81)
      acd86(134)=acd86(77)*acd86(76)
      acd86(135)=acd86(53)*acd86(69)
      acd86(136)=acd86(52)*acd86(95)
      acd86(137)=acd86(51)*acd86(94)
      acd86(138)=acd86(47)*acd86(84)
      acd86(139)=acd86(45)*acd86(83)
      acd86(140)=acd86(43)*acd86(80)
      acd86(141)=acd86(29)*acd86(78)
      acd86(142)=acd86(25)*acd86(68)
      acd86(143)=acd86(23)*acd86(66)
      acd86(144)=acd86(19)*acd86(64)
      acd86(145)=acd86(9)*acd86(59)
      acd86(146)=acd86(1)*acd86(57)
      acd86(117)=acd86(122)+acd86(120)+acd86(118)+acd86(117)+acd86(146)+acd86(1&
      &45)+acd86(144)+acd86(143)+acd86(142)+acd86(141)+acd86(140)+acd86(139)+ac&
      &d86(138)+acd86(137)+acd86(136)+2.0_ki*acd86(135)+acd86(134)+acd86(133)+a&
      &cd86(132)+acd86(131)+acd86(130)+acd86(128)+acd86(127)+acd86(126)+acd86(1&
      &24)+acd86(125)+acd86(123)
      acd86(118)=ninjaP*acd86(116)
      acd86(119)=-acd86(56)*acd86(119)
      acd86(120)=acd86(55)*acd86(121)
      acd86(121)=-acd86(61)*acd86(129)
      acd86(122)=acd86(103)*acd86(114)
      acd86(123)=acd86(101)*acd86(113)
      acd86(124)=acd86(99)*acd86(112)
      acd86(125)=acd86(97)*acd86(111)
      acd86(126)=acd86(93)*acd86(110)
      acd86(127)=acd86(91)*acd86(109)
      acd86(128)=acd86(89)*acd86(108)
      acd86(129)=acd86(86)*acd86(107)
      acd86(130)=acd86(82)*acd86(106)
      acd86(131)=acd86(77)*acd86(105)
      acd86(132)=acd86(53)*acd86(104)
      acd86(133)=acd86(75)*acd86(95)
      acd86(134)=acd86(74)*acd86(94)
      acd86(135)=acd86(73)*acd86(84)
      acd86(136)=acd86(72)*acd86(83)
      acd86(137)=acd86(71)*acd86(80)
      acd86(138)=acd86(70)*acd86(78)
      acd86(139)=acd86(67)*acd86(68)
      acd86(140)=acd86(65)*acd86(66)
      acd86(141)=acd86(63)*acd86(64)
      acd86(142)=acd86(58)*acd86(59)
      acd86(143)=acd86(54)*acd86(57)
      acd86(118)=acd86(118)+acd86(120)+acd86(119)+acd86(143)+acd86(142)+acd86(1&
      &41)+acd86(140)+acd86(139)+acd86(138)+acd86(137)+acd86(136)+acd86(135)+ac&
      &d86(134)+acd86(133)+acd86(132)+acd86(131)+acd86(130)+acd86(129)+acd86(12&
      &8)+acd86(127)+acd86(126)+acd86(125)+acd86(124)+acd86(123)+acd86(115)+acd&
      &86(122)+acd86(121)
      brack(ninjaidxt1mu0)=acd86(117)
      brack(ninjaidxt0mu0)=acd86(118)
      brack(ninjaidxt0mu2)=acd86(116)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d86h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd86h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6
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
end module     p0_dbaru_epnebbbarg_d86h3l131
