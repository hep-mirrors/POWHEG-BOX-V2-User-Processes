module     p0_dbaru_epnebbbarg_d86h7l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d86h7l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd86h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(50) :: acd86
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd86(1)=dotproduct(k1,ninjaE3)
      acd86(2)=dotproduct(ninjaE3,spvak2l6)
      acd86(3)=abb86(147)
      acd86(4)=dotproduct(ninjaE3,spvak2l5)
      acd86(5)=abb86(58)
      acd86(6)=dotproduct(k2,ninjaE3)
      acd86(7)=abb86(26)
      acd86(8)=abb86(47)
      acd86(9)=dotproduct(k3,ninjaE3)
      acd86(10)=abb86(191)
      acd86(11)=abb86(43)
      acd86(12)=dotproduct(k4,ninjaE3)
      acd86(13)=dotproduct(l5,ninjaE3)
      acd86(14)=abb86(76)
      acd86(15)=abb86(30)
      acd86(16)=dotproduct(l6,ninjaE3)
      acd86(17)=dotproduct(k7,ninjaE3)
      acd86(18)=abb86(69)
      acd86(19)=abb86(25)
      acd86(20)=dotproduct(ninjaE3,spval6k2)
      acd86(21)=abb86(21)
      acd86(22)=dotproduct(ninjaE3,spvak4k2)
      acd86(23)=abb86(150)
      acd86(24)=dotproduct(ninjaE3,spvak7k2)
      acd86(25)=abb86(133)
      acd86(26)=dotproduct(ninjaE3,spvak1k2)
      acd86(27)=abb86(32)
      acd86(28)=dotproduct(ninjaE3,spvak4k3)
      acd86(29)=abb86(62)
      acd86(30)=dotproduct(ninjaE3,spval5k2)
      acd86(31)=abb86(49)
      acd86(32)=abb86(34)
      acd86(33)=abb86(24)
      acd86(34)=abb86(29)
      acd86(35)=abb86(35)
      acd86(36)=abb86(45)
      acd86(37)=abb86(59)
      acd86(38)=acd86(13)+acd86(16)
      acd86(39)=-acd86(15)*acd86(38)
      acd86(40)=acd86(9)+acd86(12)
      acd86(41)=acd86(11)*acd86(40)
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
      acd86(40)=acd86(10)*acd86(40)
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
      brack(ninjaidxt1x0mu0)=acd86(38)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd86h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(142) :: acd86
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd86(1)=dotproduct(k1,ninjaA1)
      acd86(2)=dotproduct(ninjaE3,spvak2l6)
      acd86(3)=abb86(147)
      acd86(4)=dotproduct(ninjaE3,spvak2l5)
      acd86(5)=abb86(58)
      acd86(6)=dotproduct(k1,ninjaE3)
      acd86(7)=dotproduct(ninjaA1,spvak2l6)
      acd86(8)=dotproduct(ninjaA1,spvak2l5)
      acd86(9)=dotproduct(k2,ninjaA1)
      acd86(10)=abb86(26)
      acd86(11)=abb86(47)
      acd86(12)=dotproduct(k2,ninjaE3)
      acd86(13)=dotproduct(k3,ninjaA1)
      acd86(14)=abb86(191)
      acd86(15)=abb86(43)
      acd86(16)=dotproduct(k3,ninjaE3)
      acd86(17)=dotproduct(k4,ninjaA1)
      acd86(18)=dotproduct(k4,ninjaE3)
      acd86(19)=dotproduct(l5,ninjaA1)
      acd86(20)=abb86(76)
      acd86(21)=abb86(30)
      acd86(22)=dotproduct(l5,ninjaE3)
      acd86(23)=dotproduct(l6,ninjaA1)
      acd86(24)=dotproduct(l6,ninjaE3)
      acd86(25)=dotproduct(k7,ninjaA1)
      acd86(26)=abb86(69)
      acd86(27)=abb86(25)
      acd86(28)=dotproduct(k7,ninjaE3)
      acd86(29)=dotproduct(ninjaA1,spvak7k2)
      acd86(30)=abb86(133)
      acd86(31)=abb86(29)
      acd86(32)=dotproduct(ninjaE3,spvak7k2)
      acd86(33)=dotproduct(ninjaE3,spvak1k2)
      acd86(34)=abb86(32)
      acd86(35)=dotproduct(ninjaE3,spval6k2)
      acd86(36)=abb86(21)
      acd86(37)=dotproduct(ninjaE3,spvak4k2)
      acd86(38)=abb86(150)
      acd86(39)=dotproduct(ninjaE3,spvak4k3)
      acd86(40)=abb86(62)
      acd86(41)=dotproduct(ninjaE3,spval5k2)
      acd86(42)=abb86(49)
      acd86(43)=dotproduct(ninjaA1,spvak1k2)
      acd86(44)=abb86(35)
      acd86(45)=dotproduct(ninjaA1,spval6k2)
      acd86(46)=abb86(34)
      acd86(47)=abb86(24)
      acd86(48)=abb86(45)
      acd86(49)=abb86(59)
      acd86(50)=dotproduct(ninjaA1,spvak4k2)
      acd86(51)=dotproduct(ninjaA1,spvak4k3)
      acd86(52)=dotproduct(ninjaA1,spval5k2)
      acd86(53)=dotproduct(k1,ninjaA0)
      acd86(54)=dotproduct(ninjaA0,spvak2l6)
      acd86(55)=dotproduct(ninjaA0,spvak2l5)
      acd86(56)=abb86(186)
      acd86(57)=dotproduct(k2,ninjaA0)
      acd86(58)=abb86(17)
      acd86(59)=dotproduct(k3,ninjaA0)
      acd86(60)=abb86(277)
      acd86(61)=dotproduct(k4,ninjaA0)
      acd86(62)=dotproduct(l5,ninjaA0)
      acd86(63)=abb86(28)
      acd86(64)=dotproduct(l6,ninjaA0)
      acd86(65)=abb86(52)
      acd86(66)=dotproduct(k7,ninjaA0)
      acd86(67)=abb86(66)
      acd86(68)=dotproduct(ninjaA0,ninjaE3)
      acd86(69)=abb86(153)
      acd86(70)=dotproduct(ninjaA0,spvak7k2)
      acd86(71)=dotproduct(ninjaA0,spvak1k2)
      acd86(72)=dotproduct(ninjaA0,spval6k2)
      acd86(73)=dotproduct(ninjaA0,spvak4k2)
      acd86(74)=dotproduct(ninjaA0,spvak4k3)
      acd86(75)=dotproduct(ninjaA0,spval5k2)
      acd86(76)=abb86(16)
      acd86(77)=dotproduct(ninjaE3,spvak2k1)
      acd86(78)=abb86(18)
      acd86(79)=abb86(19)
      acd86(80)=abb86(20)
      acd86(81)=abb86(46)
      acd86(82)=dotproduct(ninjaE3,spvak7l6)
      acd86(83)=abb86(22)
      acd86(84)=abb86(27)
      acd86(85)=abb86(31)
      acd86(86)=dotproduct(ninjaE3,spvak1l6)
      acd86(87)=abb86(33)
      acd86(88)=dotproduct(ninjaE3,spvak2k3)
      acd86(89)=abb86(36)
      acd86(90)=dotproduct(ninjaE3,spval5l6)
      acd86(91)=abb86(37)
      acd86(92)=dotproduct(ninjaE3,spvak1l5)
      acd86(93)=abb86(39)
      acd86(94)=dotproduct(ninjaE3,spvak1k3)
      acd86(95)=abb86(40)
      acd86(96)=abb86(140)
      acd86(97)=abb86(48)
      acd86(98)=dotproduct(ninjaE3,spvak2k7)
      acd86(99)=abb86(56)
      acd86(100)=dotproduct(ninjaE3,spvak4l6)
      acd86(101)=abb86(77)
      acd86(102)=dotproduct(ninjaE3,spvak7k3)
      acd86(103)=abb86(238)
      acd86(104)=acd86(3)*acd86(6)
      acd86(105)=acd86(10)*acd86(12)
      acd86(106)=acd86(26)*acd86(28)
      acd86(107)=acd86(30)*acd86(32)
      acd86(108)=acd86(34)*acd86(33)
      acd86(109)=acd86(36)*acd86(35)
      acd86(110)=acd86(38)*acd86(37)
      acd86(111)=acd86(40)*acd86(39)
      acd86(112)=acd86(42)*acd86(41)
      acd86(104)=acd86(107)+acd86(108)+acd86(109)+acd86(110)+acd86(104)+acd86(1&
      &11)+acd86(112)+acd86(105)+acd86(106)
      acd86(105)=acd86(7)*acd86(104)
      acd86(106)=acd86(5)*acd86(6)
      acd86(107)=acd86(11)*acd86(12)
      acd86(108)=acd86(27)*acd86(28)
      acd86(109)=acd86(31)*acd86(32)
      acd86(110)=acd86(44)*acd86(33)
      acd86(111)=acd86(46)*acd86(35)
      acd86(112)=acd86(47)*acd86(37)
      acd86(113)=acd86(48)*acd86(39)
      acd86(114)=acd86(49)*acd86(41)
      acd86(106)=acd86(114)+acd86(110)+acd86(111)+acd86(112)+acd86(113)+acd86(1&
      &06)+acd86(107)+acd86(108)+acd86(109)
      acd86(107)=acd86(8)*acd86(106)
      acd86(108)=acd86(14)*acd86(7)
      acd86(109)=acd86(15)*acd86(8)
      acd86(108)=acd86(108)+acd86(109)
      acd86(109)=acd86(18)+acd86(16)
      acd86(108)=acd86(108)*acd86(109)
      acd86(110)=acd86(20)*acd86(7)
      acd86(111)=acd86(21)*acd86(8)
      acd86(110)=acd86(110)+acd86(111)
      acd86(111)=-acd86(24)-acd86(22)
      acd86(110)=acd86(110)*acd86(111)
      acd86(111)=acd86(14)*acd86(2)
      acd86(112)=acd86(15)*acd86(4)
      acd86(111)=acd86(111)+acd86(112)
      acd86(112)=acd86(17)+acd86(13)
      acd86(112)=acd86(111)*acd86(112)
      acd86(113)=acd86(20)*acd86(2)
      acd86(114)=acd86(21)*acd86(4)
      acd86(113)=acd86(113)+acd86(114)
      acd86(114)=-acd86(23)-acd86(19)
      acd86(114)=acd86(113)*acd86(114)
      acd86(115)=acd86(3)*acd86(2)
      acd86(116)=acd86(5)*acd86(4)
      acd86(115)=acd86(115)+acd86(116)
      acd86(116)=acd86(1)*acd86(115)
      acd86(117)=acd86(10)*acd86(2)
      acd86(118)=acd86(11)*acd86(4)
      acd86(117)=acd86(117)+acd86(118)
      acd86(118)=acd86(9)*acd86(117)
      acd86(119)=acd86(26)*acd86(2)
      acd86(120)=acd86(27)*acd86(4)
      acd86(119)=acd86(119)+acd86(120)
      acd86(120)=acd86(25)*acd86(119)
      acd86(121)=acd86(30)*acd86(2)
      acd86(122)=acd86(31)*acd86(4)
      acd86(121)=acd86(121)+acd86(122)
      acd86(122)=acd86(29)*acd86(121)
      acd86(123)=acd86(34)*acd86(2)
      acd86(124)=acd86(44)*acd86(4)
      acd86(123)=acd86(123)+acd86(124)
      acd86(124)=acd86(43)*acd86(123)
      acd86(125)=acd86(36)*acd86(2)
      acd86(126)=acd86(46)*acd86(4)
      acd86(125)=acd86(125)+acd86(126)
      acd86(126)=acd86(45)*acd86(125)
      acd86(127)=acd86(38)*acd86(2)
      acd86(128)=acd86(47)*acd86(4)
      acd86(127)=acd86(127)+acd86(128)
      acd86(128)=acd86(50)*acd86(127)
      acd86(129)=acd86(40)*acd86(2)
      acd86(130)=acd86(48)*acd86(4)
      acd86(129)=acd86(129)+acd86(130)
      acd86(130)=acd86(51)*acd86(129)
      acd86(131)=acd86(42)*acd86(2)
      acd86(132)=acd86(49)*acd86(4)
      acd86(131)=acd86(131)+acd86(132)
      acd86(132)=acd86(52)*acd86(131)
      acd86(105)=acd86(132)+acd86(130)+acd86(128)+acd86(126)+acd86(124)+acd86(1&
      &22)+acd86(120)+acd86(118)+acd86(116)+acd86(107)+acd86(105)+acd86(114)+ac&
      &d86(112)+acd86(110)+acd86(108)
      acd86(104)=acd86(54)*acd86(104)
      acd86(106)=acd86(55)*acd86(106)
      acd86(107)=acd86(14)*acd86(54)
      acd86(108)=acd86(15)*acd86(55)
      acd86(107)=-acd86(60)+acd86(107)+acd86(108)
      acd86(107)=acd86(109)*acd86(107)
      acd86(108)=acd86(61)+acd86(59)
      acd86(108)=acd86(111)*acd86(108)
      acd86(109)=-acd86(64)-acd86(62)
      acd86(109)=acd86(113)*acd86(109)
      acd86(110)=acd86(20)*acd86(54)
      acd86(111)=acd86(21)*acd86(55)
      acd86(110)=acd86(110)+acd86(111)
      acd86(111)=acd86(63)-acd86(110)
      acd86(111)=acd86(22)*acd86(111)
      acd86(110)=acd86(65)-acd86(110)
      acd86(110)=acd86(24)*acd86(110)
      acd86(112)=acd86(53)*acd86(115)
      acd86(113)=acd86(57)*acd86(117)
      acd86(114)=acd86(66)*acd86(119)
      acd86(115)=acd86(70)*acd86(121)
      acd86(116)=acd86(71)*acd86(123)
      acd86(117)=acd86(72)*acd86(125)
      acd86(118)=acd86(73)*acd86(127)
      acd86(119)=acd86(74)*acd86(129)
      acd86(120)=acd86(75)*acd86(131)
      acd86(121)=acd86(56)*acd86(6)
      acd86(122)=acd86(58)*acd86(12)
      acd86(123)=acd86(67)*acd86(28)
      acd86(124)=acd86(69)*acd86(68)
      acd86(125)=acd86(76)*acd86(32)
      acd86(126)=acd86(78)*acd86(77)
      acd86(127)=acd86(79)*acd86(2)
      acd86(128)=acd86(80)*acd86(33)
      acd86(129)=acd86(81)*acd86(35)
      acd86(130)=acd86(83)*acd86(82)
      acd86(131)=acd86(84)*acd86(4)
      acd86(132)=acd86(85)*acd86(37)
      acd86(133)=acd86(87)*acd86(86)
      acd86(134)=acd86(89)*acd86(88)
      acd86(135)=acd86(91)*acd86(90)
      acd86(136)=acd86(93)*acd86(92)
      acd86(137)=acd86(95)*acd86(94)
      acd86(138)=acd86(96)*acd86(39)
      acd86(139)=acd86(97)*acd86(41)
      acd86(140)=acd86(99)*acd86(98)
      acd86(141)=acd86(101)*acd86(100)
      acd86(142)=acd86(103)*acd86(102)
      acd86(104)=acd86(142)+acd86(141)+acd86(140)+acd86(139)+acd86(138)+acd86(1&
      &37)+acd86(136)+acd86(135)+acd86(134)+acd86(133)+acd86(132)+acd86(131)+ac&
      &d86(130)+acd86(129)+acd86(128)+acd86(127)+acd86(126)+acd86(125)+2.0_ki*a&
      &cd86(124)+acd86(123)+acd86(122)+acd86(121)+acd86(120)+acd86(119)+acd86(1&
      &18)+acd86(117)+acd86(116)+acd86(115)+acd86(114)+acd86(113)+acd86(112)+ac&
      &d86(106)+acd86(104)+acd86(110)+acd86(111)+acd86(109)+acd86(108)+acd86(10&
      &7)
      brack(ninjaidxt0x0mu0)=acd86(104)
      brack(ninjaidxt0x1mu0)=acd86(105)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d86h7_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd86h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d86h7l132
