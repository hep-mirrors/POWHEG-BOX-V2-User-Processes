module     p0_dbaru_epnebbbarg_d225h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d225h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd225h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(47) :: acd225
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd225(1)=dotproduct(k2,ninjaE3)
      acd225(2)=dotproduct(ninjaE3,spvak1k2)
      acd225(3)=abb225(22)
      acd225(4)=dotproduct(ninjaE3,spvak4k2)
      acd225(5)=abb225(137)
      acd225(6)=dotproduct(l5,ninjaE3)
      acd225(7)=abb225(25)
      acd225(8)=abb225(206)
      acd225(9)=dotproduct(l6,ninjaE3)
      acd225(10)=abb225(18)
      acd225(11)=abb225(120)
      acd225(12)=dotproduct(k7,ninjaE3)
      acd225(13)=abb225(28)
      acd225(14)=abb225(223)
      acd225(15)=dotproduct(ninjaE3,spvak7l5)
      acd225(16)=abb225(29)
      acd225(17)=dotproduct(ninjaE3,spvak2l5)
      acd225(18)=abb225(24)
      acd225(19)=dotproduct(ninjaE3,spvak7l6)
      acd225(20)=abb225(26)
      acd225(21)=dotproduct(ninjaE3,spvak7k2)
      acd225(22)=abb225(31)
      acd225(23)=dotproduct(ninjaE3,spval6l5)
      acd225(24)=abb225(33)
      acd225(25)=dotproduct(ninjaE3,spval5l6)
      acd225(26)=abb225(34)
      acd225(27)=dotproduct(ninjaE3,spvak2l6)
      acd225(28)=abb225(41)
      acd225(29)=abb225(19)
      acd225(30)=abb225(38)
      acd225(31)=abb225(35)
      acd225(32)=abb225(211)
      acd225(33)=abb225(164)
      acd225(34)=abb225(37)
      acd225(35)=abb225(96)
      acd225(36)=acd225(3)*acd225(1)
      acd225(37)=acd225(7)*acd225(6)
      acd225(38)=acd225(10)*acd225(9)
      acd225(39)=acd225(13)*acd225(12)
      acd225(40)=acd225(16)*acd225(15)
      acd225(41)=acd225(18)*acd225(17)
      acd225(42)=acd225(20)*acd225(19)
      acd225(43)=acd225(22)*acd225(21)
      acd225(44)=acd225(24)*acd225(23)
      acd225(45)=acd225(26)*acd225(25)
      acd225(46)=acd225(28)*acd225(27)
      acd225(36)=acd225(46)+acd225(45)+acd225(44)+acd225(43)+acd225(42)+acd225(&
      &41)+acd225(40)+acd225(39)+acd225(38)+acd225(37)+acd225(36)
      acd225(36)=acd225(2)*acd225(36)
      acd225(37)=acd225(5)*acd225(1)
      acd225(38)=acd225(8)*acd225(6)
      acd225(39)=acd225(11)*acd225(9)
      acd225(40)=acd225(14)*acd225(12)
      acd225(41)=acd225(29)*acd225(15)
      acd225(42)=acd225(30)*acd225(17)
      acd225(43)=acd225(31)*acd225(19)
      acd225(44)=acd225(32)*acd225(21)
      acd225(45)=acd225(33)*acd225(23)
      acd225(46)=acd225(34)*acd225(25)
      acd225(47)=acd225(35)*acd225(27)
      acd225(37)=acd225(47)+acd225(46)+acd225(45)+acd225(44)+acd225(43)+acd225(&
      &42)+acd225(41)+acd225(40)+acd225(39)+acd225(38)+acd225(37)
      acd225(37)=acd225(4)*acd225(37)
      acd225(36)=acd225(37)+acd225(36)
      brack(ninjaidxt2mu0)=acd225(36)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd225h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(135) :: acd225
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd225(1)=dotproduct(k2,ninjaE3)
      acd225(2)=dotproduct(ninjaE4,spvak1k2)
      acd225(3)=abb225(22)
      acd225(4)=dotproduct(ninjaE4,spvak4k2)
      acd225(5)=abb225(137)
      acd225(6)=dotproduct(k2,ninjaE4)
      acd225(7)=dotproduct(ninjaE3,spvak1k2)
      acd225(8)=dotproduct(ninjaE3,spvak4k2)
      acd225(9)=dotproduct(l5,ninjaE3)
      acd225(10)=abb225(25)
      acd225(11)=abb225(206)
      acd225(12)=dotproduct(l5,ninjaE4)
      acd225(13)=dotproduct(l6,ninjaE3)
      acd225(14)=abb225(18)
      acd225(15)=abb225(120)
      acd225(16)=dotproduct(l6,ninjaE4)
      acd225(17)=dotproduct(k7,ninjaE3)
      acd225(18)=abb225(28)
      acd225(19)=abb225(223)
      acd225(20)=dotproduct(k7,ninjaE4)
      acd225(21)=dotproduct(ninjaE4,spvak7l5)
      acd225(22)=abb225(29)
      acd225(23)=dotproduct(ninjaE4,spvak2l6)
      acd225(24)=abb225(41)
      acd225(25)=dotproduct(ninjaE4,spvak2l5)
      acd225(26)=abb225(24)
      acd225(27)=dotproduct(ninjaE4,spvak7l6)
      acd225(28)=abb225(26)
      acd225(29)=dotproduct(ninjaE4,spvak7k2)
      acd225(30)=abb225(31)
      acd225(31)=dotproduct(ninjaE4,spval6l5)
      acd225(32)=abb225(33)
      acd225(33)=dotproduct(ninjaE4,spval5l6)
      acd225(34)=abb225(34)
      acd225(35)=abb225(19)
      acd225(36)=abb225(96)
      acd225(37)=abb225(38)
      acd225(38)=abb225(35)
      acd225(39)=abb225(211)
      acd225(40)=abb225(164)
      acd225(41)=abb225(37)
      acd225(42)=dotproduct(ninjaE3,spvak7l5)
      acd225(43)=dotproduct(ninjaE3,spvak2l6)
      acd225(44)=dotproduct(ninjaE3,spvak2l5)
      acd225(45)=dotproduct(ninjaE3,spvak7l6)
      acd225(46)=dotproduct(ninjaE3,spvak7k2)
      acd225(47)=dotproduct(ninjaE3,spval6l5)
      acd225(48)=dotproduct(ninjaE3,spval5l6)
      acd225(49)=abb225(21)
      acd225(50)=dotproduct(k1,ninjaE3)
      acd225(51)=abb225(45)
      acd225(52)=dotproduct(k2,ninjaA)
      acd225(53)=dotproduct(ninjaA,spvak1k2)
      acd225(54)=dotproduct(ninjaA,spvak4k2)
      acd225(55)=abb225(88)
      acd225(56)=dotproduct(k3,ninjaE3)
      acd225(57)=abb225(44)
      acd225(58)=dotproduct(k4,ninjaE3)
      acd225(59)=abb225(30)
      acd225(60)=dotproduct(l5,ninjaA)
      acd225(61)=abb225(173)
      acd225(62)=dotproduct(l6,ninjaA)
      acd225(63)=dotproduct(k7,ninjaA)
      acd225(64)=abb225(159)
      acd225(65)=dotproduct(ninjaA,ninjaE3)
      acd225(66)=dotproduct(ninjaA,spvak7l5)
      acd225(67)=dotproduct(ninjaA,spvak2l6)
      acd225(68)=dotproduct(ninjaA,spvak2l5)
      acd225(69)=dotproduct(ninjaA,spvak7l6)
      acd225(70)=dotproduct(ninjaA,spvak7k2)
      acd225(71)=dotproduct(ninjaA,spval6l5)
      acd225(72)=dotproduct(ninjaA,spval5l6)
      acd225(73)=abb225(15)
      acd225(74)=dotproduct(ninjaE3,spvak4k1)
      acd225(75)=abb225(16)
      acd225(76)=dotproduct(ninjaE3,spvak1k4)
      acd225(77)=abb225(17)
      acd225(78)=abb225(40)
      acd225(79)=abb225(50)
      acd225(80)=dotproduct(ninjaE3,spvak3k2)
      acd225(81)=abb225(20)
      acd225(82)=abb225(23)
      acd225(83)=abb225(32)
      acd225(84)=abb225(81)
      acd225(85)=dotproduct(ninjaE3,spvak1k3)
      acd225(86)=abb225(27)
      acd225(87)=abb225(36)
      acd225(88)=abb225(52)
      acd225(89)=abb225(56)
      acd225(90)=dotproduct(ninjaE3,spval5k2)
      acd225(91)=abb225(46)
      acd225(92)=dotproduct(ninjaE3,spval6k2)
      acd225(93)=abb225(70)
      acd225(94)=dotproduct(ninjaE3,spvak4k3)
      acd225(95)=abb225(89)
      acd225(96)=dotproduct(k1,ninjaA)
      acd225(97)=dotproduct(k3,ninjaA)
      acd225(98)=dotproduct(k4,ninjaA)
      acd225(99)=dotproduct(ninjaA,ninjaA)
      acd225(100)=dotproduct(ninjaA,spvak4k1)
      acd225(101)=dotproduct(ninjaA,spvak1k4)
      acd225(102)=dotproduct(ninjaA,spvak3k2)
      acd225(103)=dotproduct(ninjaA,spvak1k3)
      acd225(104)=dotproduct(ninjaA,spval5k2)
      acd225(105)=dotproduct(ninjaA,spval6k2)
      acd225(106)=dotproduct(ninjaA,spvak4k3)
      acd225(107)=abb225(83)
      acd225(108)=acd225(34)*acd225(33)
      acd225(109)=acd225(32)*acd225(31)
      acd225(110)=acd225(30)*acd225(29)
      acd225(111)=acd225(28)*acd225(27)
      acd225(112)=acd225(26)*acd225(25)
      acd225(113)=acd225(24)*acd225(23)
      acd225(114)=acd225(22)*acd225(21)
      acd225(115)=acd225(18)*acd225(20)
      acd225(116)=acd225(14)*acd225(16)
      acd225(117)=acd225(10)*acd225(12)
      acd225(118)=acd225(3)*acd225(6)
      acd225(108)=acd225(108)+acd225(116)+acd225(117)+acd225(113)+acd225(114)+a&
      &cd225(115)+acd225(118)+acd225(109)+acd225(110)+acd225(111)+acd225(112)
      acd225(108)=acd225(108)*acd225(7)
      acd225(109)=acd225(41)*acd225(33)
      acd225(110)=acd225(40)*acd225(31)
      acd225(111)=acd225(39)*acd225(29)
      acd225(112)=acd225(38)*acd225(27)
      acd225(113)=acd225(37)*acd225(25)
      acd225(114)=acd225(36)*acd225(23)
      acd225(115)=acd225(35)*acd225(21)
      acd225(116)=acd225(19)*acd225(20)
      acd225(117)=acd225(15)*acd225(16)
      acd225(118)=acd225(11)*acd225(12)
      acd225(119)=acd225(5)*acd225(6)
      acd225(109)=acd225(109)+acd225(117)+acd225(118)+acd225(114)+acd225(115)+a&
      &cd225(116)+acd225(119)+acd225(110)+acd225(111)+acd225(112)+acd225(113)
      acd225(109)=acd225(109)*acd225(8)
      acd225(110)=acd225(34)*acd225(48)
      acd225(111)=acd225(32)*acd225(47)
      acd225(112)=acd225(30)*acd225(46)
      acd225(113)=acd225(28)*acd225(45)
      acd225(114)=acd225(26)*acd225(44)
      acd225(115)=acd225(24)*acd225(43)
      acd225(116)=acd225(22)*acd225(42)
      acd225(117)=acd225(17)*acd225(18)
      acd225(118)=acd225(13)*acd225(14)
      acd225(119)=acd225(9)*acd225(10)
      acd225(120)=acd225(1)*acd225(3)
      acd225(110)=acd225(116)+acd225(115)+acd225(114)+acd225(113)+acd225(112)+a&
      &cd225(110)+acd225(111)+acd225(117)+acd225(118)+acd225(119)+acd225(120)
      acd225(111)=acd225(110)*acd225(2)
      acd225(112)=acd225(41)*acd225(48)
      acd225(113)=acd225(40)*acd225(47)
      acd225(114)=acd225(39)*acd225(46)
      acd225(115)=acd225(38)*acd225(45)
      acd225(116)=acd225(37)*acd225(44)
      acd225(117)=acd225(36)*acd225(43)
      acd225(118)=acd225(35)*acd225(42)
      acd225(119)=acd225(17)*acd225(19)
      acd225(120)=acd225(13)*acd225(15)
      acd225(121)=acd225(9)*acd225(11)
      acd225(122)=acd225(1)*acd225(5)
      acd225(112)=acd225(122)+acd225(121)+acd225(120)+acd225(119)+acd225(118)+a&
      &cd225(117)+acd225(116)+acd225(113)+acd225(112)+acd225(114)+acd225(115)
      acd225(113)=acd225(112)*acd225(4)
      acd225(108)=acd225(111)+acd225(113)+acd225(49)+acd225(108)+acd225(109)
      acd225(109)=acd225(54)*acd225(112)
      acd225(110)=acd225(53)*acd225(110)
      acd225(111)=acd225(41)*acd225(72)
      acd225(112)=acd225(40)*acd225(71)
      acd225(113)=acd225(39)*acd225(70)
      acd225(114)=acd225(38)*acd225(69)
      acd225(115)=acd225(37)*acd225(68)
      acd225(116)=acd225(36)*acd225(67)
      acd225(117)=acd225(35)*acd225(66)
      acd225(118)=acd225(19)*acd225(63)
      acd225(119)=acd225(15)*acd225(62)
      acd225(120)=acd225(11)*acd225(60)
      acd225(121)=acd225(5)*acd225(52)
      acd225(111)=acd225(119)+acd225(120)+acd225(121)+acd225(78)+acd225(115)+ac&
      &d225(116)+acd225(117)+acd225(118)+acd225(111)+acd225(112)+acd225(113)+ac&
      &d225(114)
      acd225(112)=acd225(8)*acd225(111)
      acd225(113)=acd225(34)*acd225(72)
      acd225(114)=acd225(32)*acd225(71)
      acd225(115)=acd225(30)*acd225(70)
      acd225(116)=acd225(28)*acd225(69)
      acd225(117)=acd225(26)*acd225(68)
      acd225(118)=acd225(24)*acd225(67)
      acd225(119)=acd225(22)*acd225(66)
      acd225(120)=acd225(18)*acd225(63)
      acd225(121)=acd225(14)*acd225(62)
      acd225(122)=acd225(10)*acd225(60)
      acd225(123)=acd225(3)*acd225(52)
      acd225(113)=acd225(121)+acd225(122)+acd225(123)+acd225(73)+acd225(117)+ac&
      &d225(118)+acd225(119)+acd225(120)+acd225(113)+acd225(114)+acd225(115)+ac&
      &d225(116)
      acd225(114)=acd225(7)*acd225(113)
      acd225(115)=-acd225(9)-acd225(13)
      acd225(115)=acd225(61)*acd225(115)
      acd225(116)=acd225(95)*acd225(94)
      acd225(117)=acd225(93)*acd225(92)
      acd225(118)=acd225(91)*acd225(90)
      acd225(119)=acd225(86)*acd225(85)
      acd225(120)=acd225(81)*acd225(80)
      acd225(121)=acd225(77)*acd225(76)
      acd225(122)=acd225(75)*acd225(74)
      acd225(123)=acd225(59)*acd225(58)
      acd225(124)=acd225(57)*acd225(56)
      acd225(125)=acd225(51)*acd225(50)
      acd225(126)=acd225(49)*acd225(65)
      acd225(127)=acd225(48)*acd225(89)
      acd225(128)=acd225(47)*acd225(88)
      acd225(129)=acd225(46)*acd225(87)
      acd225(130)=acd225(45)*acd225(84)
      acd225(131)=acd225(44)*acd225(83)
      acd225(132)=acd225(43)*acd225(82)
      acd225(133)=acd225(42)*acd225(79)
      acd225(134)=acd225(17)*acd225(64)
      acd225(135)=acd225(1)*acd225(55)
      acd225(109)=acd225(114)+acd225(112)+acd225(110)+acd225(109)+acd225(135)+a&
      &cd225(134)+acd225(133)+acd225(132)+acd225(131)+acd225(130)+acd225(129)+a&
      &cd225(128)+acd225(127)+2.0_ki*acd225(126)+acd225(125)+acd225(124)+acd225&
      &(123)+acd225(122)+acd225(121)+acd225(120)+acd225(119)+acd225(118)+acd225&
      &(116)+acd225(117)+acd225(115)
      acd225(110)=ninjaP*acd225(108)
      acd225(111)=acd225(54)*acd225(111)
      acd225(112)=acd225(53)*acd225(113)
      acd225(113)=-acd225(60)-acd225(62)
      acd225(113)=acd225(61)*acd225(113)
      acd225(114)=acd225(95)*acd225(106)
      acd225(115)=acd225(93)*acd225(105)
      acd225(116)=acd225(91)*acd225(104)
      acd225(117)=acd225(86)*acd225(103)
      acd225(118)=acd225(81)*acd225(102)
      acd225(119)=acd225(77)*acd225(101)
      acd225(120)=acd225(75)*acd225(100)
      acd225(121)=acd225(59)*acd225(98)
      acd225(122)=acd225(57)*acd225(97)
      acd225(123)=acd225(51)*acd225(96)
      acd225(124)=acd225(49)*acd225(99)
      acd225(125)=acd225(72)*acd225(89)
      acd225(126)=acd225(71)*acd225(88)
      acd225(127)=acd225(70)*acd225(87)
      acd225(128)=acd225(69)*acd225(84)
      acd225(129)=acd225(68)*acd225(83)
      acd225(130)=acd225(67)*acd225(82)
      acd225(131)=acd225(66)*acd225(79)
      acd225(132)=acd225(63)*acd225(64)
      acd225(133)=acd225(52)*acd225(55)
      acd225(110)=acd225(110)+acd225(112)+acd225(111)+acd225(133)+acd225(132)+a&
      &cd225(131)+acd225(130)+acd225(129)+acd225(128)+acd225(127)+acd225(126)+a&
      &cd225(125)+acd225(124)+acd225(123)+acd225(122)+acd225(121)+acd225(120)+a&
      &cd225(119)+acd225(118)+acd225(117)+acd225(116)+acd225(115)+acd225(107)+a&
      &cd225(114)+acd225(113)
      brack(ninjaidxt1mu0)=acd225(109)
      brack(ninjaidxt0mu0)=acd225(110)
      brack(ninjaidxt0mu2)=acd225(108)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d225h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd225h7
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
end module     p0_dbaru_epnebbbarg_d225h7l131
