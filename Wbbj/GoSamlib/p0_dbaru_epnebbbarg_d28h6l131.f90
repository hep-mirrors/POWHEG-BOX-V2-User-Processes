module     p0_dbaru_epnebbbarg_d28h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d28h6l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd28h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(130) :: acd28
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd28(1)=dotproduct(k1,ninjaA)
      acd28(2)=dotproduct(k2,ninjaE3)
      acd28(3)=abb28(71)
      acd28(4)=dotproduct(ninjaE3,spval5l6)
      acd28(5)=abb28(97)
      acd28(6)=dotproduct(k1,ninjaE3)
      acd28(7)=dotproduct(k2,ninjaA)
      acd28(8)=dotproduct(ninjaA,spval5l6)
      acd28(9)=abb28(47)
      acd28(10)=dotproduct(l5,ninjaE3)
      acd28(11)=abb28(27)
      acd28(12)=dotproduct(l6,ninjaE3)
      acd28(13)=dotproduct(k7,ninjaE3)
      acd28(14)=abb28(26)
      acd28(15)=dotproduct(ninjaE3,spval5k2)
      acd28(16)=abb28(24)
      acd28(17)=dotproduct(ninjaE3,spval6k2)
      acd28(18)=abb28(67)
      acd28(19)=dotproduct(ninjaE3,spvak1k2)
      acd28(20)=abb28(20)
      acd28(21)=dotproduct(ninjaE3,spvak1l6)
      acd28(22)=abb28(60)
      acd28(23)=dotproduct(ninjaE3,spvak7k2)
      acd28(24)=abb28(119)
      acd28(25)=abb28(94)
      acd28(26)=dotproduct(ninjaE3,spvak4k2)
      acd28(27)=abb28(41)
      acd28(28)=dotproduct(ninjaE3,spvak1k3)
      acd28(29)=abb28(66)
      acd28(30)=dotproduct(ninjaE3,spvak1l5)
      acd28(31)=abb28(65)
      acd28(32)=dotproduct(ninjaE3,spvak7k3)
      acd28(33)=abb28(130)
      acd28(34)=dotproduct(l5,ninjaA)
      acd28(35)=dotproduct(l6,ninjaA)
      acd28(36)=dotproduct(k7,ninjaA)
      acd28(37)=dotproduct(ninjaA,spval5k2)
      acd28(38)=dotproduct(ninjaA,spval6k2)
      acd28(39)=dotproduct(ninjaA,spvak1k2)
      acd28(40)=dotproduct(ninjaA,spvak1l6)
      acd28(41)=dotproduct(ninjaA,spvak7k2)
      acd28(42)=dotproduct(ninjaA,spvak4k2)
      acd28(43)=dotproduct(ninjaA,spvak1k3)
      acd28(44)=dotproduct(ninjaA,spvak1l5)
      acd28(45)=dotproduct(ninjaA,spvak7k3)
      acd28(46)=abb28(22)
      acd28(47)=abb28(70)
      acd28(48)=abb28(69)
      acd28(49)=abb28(37)
      acd28(50)=abb28(53)
      acd28(51)=dotproduct(ninjaA,ninjaE3)
      acd28(52)=abb28(206)
      acd28(53)=abb28(28)
      acd28(54)=abb28(83)
      acd28(55)=abb28(29)
      acd28(56)=abb28(63)
      acd28(57)=abb28(52)
      acd28(58)=abb28(43)
      acd28(59)=abb28(61)
      acd28(60)=abb28(62)
      acd28(61)=abb28(101)
      acd28(62)=abb28(17)
      acd28(63)=abb28(18)
      acd28(64)=abb28(19)
      acd28(65)=abb28(23)
      acd28(66)=abb28(25)
      acd28(67)=abb28(45)
      acd28(68)=dotproduct(ninjaE3,spval5k1)
      acd28(69)=abb28(31)
      acd28(70)=dotproduct(ninjaE3,spvak4l6)
      acd28(71)=abb28(34)
      acd28(72)=abb28(36)
      acd28(73)=dotproduct(ninjaE3,spvak2k7)
      acd28(74)=abb28(48)
      acd28(75)=dotproduct(ninjaE3,spvak2k3)
      acd28(76)=abb28(49)
      acd28(77)=dotproduct(ninjaE3,spval5k3)
      acd28(78)=abb28(51)
      acd28(79)=dotproduct(ninjaE3,spvak2l6)
      acd28(80)=abb28(54)
      acd28(81)=dotproduct(ninjaE3,spvak2l5)
      acd28(82)=abb28(56)
      acd28(83)=dotproduct(ninjaE3,spval6k3)
      acd28(84)=abb28(57)
      acd28(85)=dotproduct(ninjaE3,spvak2k1)
      acd28(86)=abb28(58)
      acd28(87)=abb28(64)
      acd28(88)=dotproduct(ninjaE3,spval6k1)
      acd28(89)=abb28(73)
      acd28(90)=dotproduct(ninjaE3,spvak7l5)
      acd28(91)=abb28(74)
      acd28(92)=dotproduct(ninjaE3,spvak7l6)
      acd28(93)=abb28(78)
      acd28(94)=dotproduct(ninjaE3,spval5k7)
      acd28(95)=abb28(128)
      acd28(96)=dotproduct(ninjaE3,spval6l5)
      acd28(97)=abb28(153)
      acd28(98)=dotproduct(ninjaE3,spval6k7)
      acd28(99)=abb28(190)
      acd28(100)=acd28(33)*acd28(45)
      acd28(101)=acd28(31)*acd28(44)
      acd28(102)=acd28(29)*acd28(43)
      acd28(103)=acd28(27)*acd28(42)
      acd28(104)=acd28(24)*acd28(41)
      acd28(105)=acd28(22)*acd28(40)
      acd28(106)=acd28(20)*acd28(39)
      acd28(107)=acd28(18)*acd28(38)
      acd28(108)=acd28(16)*acd28(37)
      acd28(109)=acd28(14)*acd28(36)
      acd28(110)=acd28(3)*acd28(1)
      acd28(111)=acd28(34)+acd28(35)
      acd28(112)=acd28(11)*acd28(111)
      acd28(113)=acd28(8)*acd28(25)
      acd28(114)=acd28(7)*acd28(9)
      acd28(100)=2.0_ki*acd28(114)+acd28(113)+acd28(112)+acd28(110)+acd28(109)+&
      &acd28(108)+acd28(107)+acd28(106)+acd28(105)+acd28(104)+acd28(103)+acd28(&
      &102)+acd28(101)+acd28(46)+acd28(100)
      acd28(100)=acd28(2)*acd28(100)
      acd28(101)=acd28(61)*acd28(45)
      acd28(102)=acd28(60)*acd28(44)
      acd28(103)=acd28(59)*acd28(43)
      acd28(104)=acd28(58)*acd28(42)
      acd28(105)=acd28(57)*acd28(41)
      acd28(106)=acd28(56)*acd28(40)
      acd28(107)=acd28(55)*acd28(39)
      acd28(108)=acd28(54)*acd28(38)
      acd28(109)=acd28(53)*acd28(37)
      acd28(110)=acd28(50)*acd28(36)
      acd28(112)=acd28(5)*acd28(1)
      acd28(111)=-acd28(47)*acd28(111)
      acd28(113)=acd28(7)*acd28(25)
      acd28(101)=acd28(113)+acd28(111)+acd28(112)+acd28(110)+acd28(109)+acd28(1&
      &08)+acd28(107)+acd28(106)+acd28(105)+acd28(104)+acd28(103)+acd28(102)+ac&
      &d28(67)+acd28(101)
      acd28(101)=acd28(4)*acd28(101)
      acd28(102)=acd28(32)*acd28(61)
      acd28(103)=acd28(28)*acd28(59)
      acd28(104)=acd28(13)*acd28(50)
      acd28(105)=acd28(6)*acd28(5)
      acd28(106)=acd28(30)*acd28(60)
      acd28(107)=acd28(26)*acd28(58)
      acd28(108)=acd28(23)*acd28(57)
      acd28(109)=acd28(10)+acd28(12)
      acd28(110)=acd28(109)*acd28(47)
      acd28(111)=acd28(21)*acd28(56)
      acd28(112)=acd28(19)*acd28(55)
      acd28(113)=acd28(17)*acd28(54)
      acd28(114)=acd28(15)*acd28(53)
      acd28(102)=acd28(111)+acd28(112)+acd28(113)+acd28(114)+acd28(106)+acd28(1&
      &07)+acd28(108)-acd28(110)+acd28(102)+acd28(103)+acd28(104)+acd28(105)
      acd28(103)=acd28(8)*acd28(102)
      acd28(104)=acd28(32)*acd28(33)
      acd28(105)=acd28(28)*acd28(29)
      acd28(106)=acd28(13)*acd28(14)
      acd28(107)=acd28(6)*acd28(3)
      acd28(108)=acd28(30)*acd28(31)
      acd28(110)=acd28(26)*acd28(27)
      acd28(109)=acd28(109)*acd28(11)
      acd28(111)=acd28(23)*acd28(24)
      acd28(112)=acd28(21)*acd28(22)
      acd28(113)=acd28(19)*acd28(20)
      acd28(114)=acd28(17)*acd28(18)
      acd28(115)=acd28(15)*acd28(16)
      acd28(104)=acd28(111)+acd28(112)+acd28(113)+acd28(114)+acd28(108)+acd28(1&
      &10)+acd28(109)+acd28(115)+acd28(104)+acd28(105)+acd28(106)+acd28(107)
      acd28(105)=acd28(7)*acd28(104)
      acd28(106)=acd28(98)*acd28(99)
      acd28(107)=acd28(96)*acd28(97)
      acd28(108)=acd28(94)*acd28(95)
      acd28(109)=acd28(92)*acd28(93)
      acd28(110)=acd28(90)*acd28(91)
      acd28(111)=acd28(88)*acd28(89)
      acd28(112)=acd28(85)*acd28(86)
      acd28(113)=acd28(83)*acd28(84)
      acd28(114)=acd28(81)*acd28(82)
      acd28(115)=acd28(79)*acd28(80)
      acd28(116)=acd28(77)*acd28(78)
      acd28(117)=acd28(75)*acd28(76)
      acd28(118)=acd28(73)*acd28(74)
      acd28(119)=acd28(70)*acd28(71)
      acd28(120)=acd28(68)*acd28(69)
      acd28(121)=acd28(51)*acd28(52)
      acd28(122)=acd28(30)*acd28(87)
      acd28(123)=acd28(26)*acd28(72)
      acd28(124)=acd28(23)*acd28(66)
      acd28(125)=acd28(21)*acd28(65)
      acd28(126)=acd28(19)*acd28(64)
      acd28(127)=acd28(17)*acd28(63)
      acd28(128)=acd28(15)*acd28(62)
      acd28(129)=acd28(12)*acd28(49)
      acd28(130)=acd28(10)*acd28(48)
      acd28(100)=acd28(100)+acd28(101)+acd28(105)+acd28(103)+acd28(130)+acd28(1&
      &29)+acd28(128)+acd28(127)+acd28(126)+acd28(125)+acd28(124)+acd28(123)+ac&
      &d28(122)+2.0_ki*acd28(121)+acd28(120)+acd28(119)+acd28(118)+acd28(117)+a&
      &cd28(116)+acd28(115)+acd28(114)+acd28(113)+acd28(112)+acd28(111)+acd28(1&
      &10)+acd28(109)+acd28(108)+acd28(106)+acd28(107)
      acd28(101)=acd28(4)*acd28(102)
      acd28(102)=acd28(4)*acd28(25)
      acd28(103)=acd28(2)*acd28(9)
      acd28(102)=acd28(103)+acd28(102)+acd28(104)
      acd28(102)=acd28(2)*acd28(102)
      acd28(101)=acd28(101)+acd28(102)
      brack(ninjaidxt3mu0)=acd28(101)
      brack(ninjaidxt2mu0)=acd28(100)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d28h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd28h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d28h6l131
