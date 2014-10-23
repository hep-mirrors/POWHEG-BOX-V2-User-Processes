module     p0_dbaru_epnebbbarg_d316h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d316h1l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd316h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd316
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd316h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(124) :: acd316
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd316(1)=dotproduct(k2,ninjaE3)
      acd316(2)=dotproduct(ninjaE3,spvak2k7)
      acd316(3)=dotproduct(ninjaE3,spvak1k2)
      acd316(4)=abb316(34)
      acd316(5)=dotproduct(ninjaE3,spval6l5)
      acd316(6)=abb316(113)
      acd316(7)=dotproduct(ninjaE3,spvak1l5)
      acd316(8)=abb316(39)
      acd316(9)=dotproduct(ninjaE3,spvak1k3)
      acd316(10)=abb316(53)
      acd316(11)=dotproduct(k3,ninjaE3)
      acd316(12)=dotproduct(k4,ninjaE3)
      acd316(13)=dotproduct(ninjaE3,spvak4k3)
      acd316(14)=abb316(36)
      acd316(15)=abb316(33)
      acd316(16)=abb316(48)
      acd316(17)=dotproduct(ninjaE3,spvak2k3)
      acd316(18)=abb316(40)
      acd316(19)=dotproduct(ninjaE3,spval6k2)
      acd316(20)=abb316(46)
      acd316(21)=dotproduct(ninjaE3,spvak4k2)
      acd316(22)=abb316(37)
      acd316(23)=abb316(27)
      acd316(24)=abb316(38)
      acd316(25)=abb316(44)
      acd316(26)=dotproduct(ninjaE3,spval6k3)
      acd316(27)=dotproduct(k1,ninjaE3)
      acd316(28)=abb316(104)
      acd316(29)=abb316(43)
      acd316(30)=dotproduct(ninjaE3,spval6k7)
      acd316(31)=abb316(47)
      acd316(32)=dotproduct(k2,ninjaA)
      acd316(33)=abb316(52)
      acd316(34)=abb316(116)
      acd316(35)=dotproduct(l6,ninjaE3)
      acd316(36)=abb316(124)
      acd316(37)=dotproduct(k7,ninjaE3)
      acd316(38)=abb316(101)
      acd316(39)=dotproduct(ninjaA,ninjaE3)
      acd316(40)=abb316(64)
      acd316(41)=dotproduct(ninjaA,spvak2k7)
      acd316(42)=dotproduct(ninjaA,spvak1k2)
      acd316(43)=dotproduct(ninjaA,spval6l5)
      acd316(44)=dotproduct(ninjaA,spvak1l5)
      acd316(45)=dotproduct(ninjaA,spvak1k3)
      acd316(46)=abb316(23)
      acd316(47)=abb316(99)
      acd316(48)=abb316(32)
      acd316(49)=abb316(24)
      acd316(50)=abb316(84)
      acd316(51)=dotproduct(k3,ninjaA)
      acd316(52)=abb316(123)
      acd316(53)=abb316(35)
      acd316(54)=abb316(107)
      acd316(55)=dotproduct(k4,ninjaA)
      acd316(56)=abb316(41)
      acd316(57)=abb316(59)
      acd316(58)=abb316(122)
      acd316(59)=abb316(90)
      acd316(60)=abb316(115)
      acd316(61)=abb316(130)
      acd316(62)=abb316(11)
      acd316(63)=abb316(82)
      acd316(64)=abb316(87)
      acd316(65)=abb316(80)
      acd316(66)=abb316(96)
      acd316(67)=dotproduct(ninjaA,spvak4k3)
      acd316(68)=dotproduct(ninjaA,spvak2k3)
      acd316(69)=dotproduct(ninjaA,spval6k2)
      acd316(70)=dotproduct(ninjaA,spvak4k2)
      acd316(71)=dotproduct(ninjaA,spval6k3)
      acd316(72)=dotproduct(ninjaE3,spvak1k7)
      acd316(73)=abb316(10)
      acd316(74)=abb316(12)
      acd316(75)=dotproduct(ninjaE3,spvak2l5)
      acd316(76)=abb316(14)
      acd316(77)=abb316(15)
      acd316(78)=dotproduct(ninjaE3,spvak2l6)
      acd316(79)=abb316(22)
      acd316(80)=abb316(73)
      acd316(81)=abb316(25)
      acd316(82)=abb316(29)
      acd316(83)=abb316(79)
      acd316(84)=abb316(28)
      acd316(85)=dotproduct(ninjaE3,spvak7k2)
      acd316(86)=abb316(45)
      acd316(87)=abb316(57)
      acd316(88)=abb316(109)
      acd316(89)=abb316(114)
      acd316(90)=dotproduct(ninjaE3,spvak3k2)
      acd316(91)=abb316(112)
      acd316(92)=abb316(26)
      acd316(93)=abb316(31)
      acd316(94)=abb316(21)
      acd316(95)=abb316(106)
      acd316(96)=abb316(60)
      acd316(97)=dotproduct(ninjaE3,spvak7l5)
      acd316(98)=abb316(103)
      acd316(99)=acd316(11)+acd316(12)
      acd316(100)=acd316(99)*acd316(8)
      acd316(101)=acd316(25)*acd316(26)
      acd316(102)=acd316(13)*acd316(16)
      acd316(103)=acd316(21)*acd316(24)
      acd316(104)=acd316(19)*acd316(20)
      acd316(100)=acd316(102)+acd316(100)-acd316(101)+acd316(103)+acd316(104)
      acd316(101)=acd316(7)*acd316(100)
      acd316(102)=acd316(99)*acd316(4)
      acd316(103)=acd316(13)*acd316(14)
      acd316(105)=acd316(21)*acd316(22)
      acd316(106)=acd316(17)*acd316(18)
      acd316(102)=acd316(102)+acd316(103)+acd316(105)+acd316(106)
      acd316(103)=acd316(3)*acd316(102)
      acd316(105)=acd316(99)-acd316(1)
      acd316(105)=acd316(105)*acd316(6)
      acd316(107)=acd316(25)*acd316(9)
      acd316(108)=acd316(13)*acd316(15)
      acd316(109)=acd316(21)*acd316(23)
      acd316(105)=acd316(105)+acd316(109)+acd316(107)+acd316(108)
      acd316(107)=-acd316(3)*acd316(20)
      acd316(107)=acd316(107)+acd316(105)
      acd316(107)=acd316(5)*acd316(107)
      acd316(108)=acd316(7)*acd316(8)
      acd316(109)=acd316(9)*acd316(10)
      acd316(110)=-acd316(3)*acd316(4)
      acd316(108)=acd316(110)+acd316(109)-acd316(108)
      acd316(108)=acd316(1)*acd316(108)
      acd316(101)=acd316(107)+acd316(108)+acd316(101)+acd316(103)
      acd316(101)=acd316(2)*acd316(101)
      acd316(103)=acd316(24)*acd316(70)
      acd316(107)=acd316(16)*acd316(67)
      acd316(108)=-acd316(25)*acd316(71)
      acd316(110)=acd316(20)*acd316(69)
      acd316(111)=-acd316(55)+acd316(32)-acd316(51)
      acd316(112)=-acd316(8)*acd316(111)
      acd316(103)=acd316(112)+acd316(110)+acd316(108)+acd316(107)+acd316(84)+ac&
      &d316(103)
      acd316(103)=acd316(7)*acd316(103)
      acd316(107)=acd316(22)*acd316(70)
      acd316(108)=acd316(18)*acd316(68)
      acd316(110)=acd316(14)*acd316(67)
      acd316(112)=-acd316(20)*acd316(43)
      acd316(113)=-acd316(4)*acd316(111)
      acd316(107)=acd316(113)+acd316(112)+acd316(110)+acd316(108)+acd316(81)+ac&
      &d316(107)
      acd316(107)=acd316(3)*acd316(107)
      acd316(108)=acd316(23)*acd316(70)
      acd316(110)=acd316(15)*acd316(67)
      acd316(112)=acd316(25)*acd316(45)
      acd316(113)=-acd316(20)*acd316(42)
      acd316(111)=-acd316(6)*acd316(111)
      acd316(108)=acd316(111)+acd316(113)+acd316(112)+acd316(110)+acd316(83)+ac&
      &d316(108)
      acd316(108)=acd316(5)*acd316(108)
      acd316(110)=acd316(8)*acd316(44)
      acd316(111)=acd316(6)*acd316(43)
      acd316(112)=acd316(4)*acd316(42)
      acd316(110)=acd316(112)+acd316(110)+acd316(111)
      acd316(111)=acd316(110)-acd316(53)
      acd316(111)=acd316(111)*acd316(99)
      acd316(112)=acd316(44)*acd316(16)
      acd316(113)=acd316(43)*acd316(15)
      acd316(114)=acd316(42)*acd316(14)
      acd316(112)=acd316(114)+acd316(113)+acd316(74)+acd316(112)
      acd316(112)=acd316(13)*acd316(112)
      acd316(113)=acd316(44)*acd316(24)
      acd316(114)=acd316(43)*acd316(23)
      acd316(115)=acd316(42)*acd316(22)
      acd316(113)=acd316(115)+acd316(114)+acd316(82)+acd316(113)
      acd316(113)=acd316(21)*acd316(113)
      acd316(114)=acd316(10)*acd316(45)
      acd316(110)=acd316(46)+acd316(114)-acd316(110)
      acd316(110)=acd316(1)*acd316(110)
      acd316(114)=-acd316(44)*acd316(26)
      acd316(115)=acd316(43)*acd316(9)
      acd316(114)=acd316(114)+acd316(115)
      acd316(114)=acd316(25)*acd316(114)
      acd316(115)=acd316(37)+acd316(27)
      acd316(115)=acd316(29)*acd316(115)
      acd316(116)=acd316(85)*acd316(86)
      acd316(117)=acd316(72)*acd316(73)
      acd316(118)=acd316(78)*acd316(79)
      acd316(119)=acd316(75)*acd316(76)
      acd316(120)=acd316(17)*acd316(77)
      acd316(121)=acd316(32)*acd316(109)
      acd316(106)=acd316(42)*acd316(106)
      acd316(122)=2.0_ki*acd316(39)
      acd316(123)=acd316(62)*acd316(122)
      acd316(104)=acd316(44)*acd316(104)
      acd316(124)=acd316(30)*acd316(80)
      acd316(103)=acd316(108)+acd316(110)+acd316(107)+acd316(103)+acd316(113)+a&
      &cd316(112)+acd316(124)+acd316(104)+acd316(114)+acd316(123)+acd316(106)+a&
      &cd316(121)+acd316(120)+acd316(119)+acd316(118)+acd316(116)+acd316(117)+a&
      &cd316(115)+acd316(111)
      acd316(103)=acd316(2)*acd316(103)
      acd316(104)=acd316(35)*acd316(36)
      acd316(106)=acd316(122)*acd316(40)
      acd316(107)=acd316(19)*acd316(48)
      acd316(108)=acd316(30)*acd316(49)
      acd316(104)=-acd316(106)-acd316(104)+acd316(107)+acd316(108)
      acd316(106)=acd316(34)*acd316(99)
      acd316(107)=acd316(27)*acd316(28)
      acd316(108)=acd316(37)*acd316(38)
      acd316(110)=acd316(13)*acd316(47)
      acd316(111)=acd316(21)*acd316(50)
      acd316(109)=acd316(41)*acd316(109)
      acd316(112)=acd316(7)*acd316(41)
      acd316(113)=-acd316(8)*acd316(112)
      acd316(114)=acd316(3)*acd316(41)
      acd316(115)=-acd316(4)*acd316(114)
      acd316(116)=acd316(1)*acd316(33)
      acd316(106)=acd316(116)+acd316(115)+acd316(113)+acd316(109)+acd316(111)+a&
      &cd316(110)+acd316(108)+acd316(107)+acd316(106)-acd316(104)
      acd316(106)=acd316(1)*acd316(106)
      acd316(107)=-acd316(54)*acd316(99)
      acd316(108)=acd316(35)*acd316(57)
      acd316(109)=acd316(65)*acd316(122)
      acd316(110)=acd316(37)*acd316(60)
      acd316(111)=acd316(19)*acd316(95)
      acd316(113)=acd316(30)*acd316(96)
      acd316(115)=acd316(13)*acd316(89)
      acd316(116)=acd316(21)*acd316(98)
      acd316(107)=acd316(116)+acd316(115)+acd316(113)+acd316(111)+acd316(110)+a&
      &cd316(108)+acd316(109)+acd316(107)
      acd316(107)=acd316(21)*acd316(107)
      acd316(108)=acd316(90)*acd316(91)
      acd316(109)=acd316(35)*acd316(56)
      acd316(110)=acd316(63)*acd316(122)
      acd316(111)=acd316(37)*acd316(59)
      acd316(113)=acd316(19)*acd316(87)
      acd316(115)=acd316(30)*acd316(88)
      acd316(108)=acd316(115)+acd316(113)+acd316(111)+acd316(110)+acd316(108)+a&
      &cd316(109)
      acd316(108)=acd316(13)*acd316(108)
      acd316(100)=acd316(100)*acd316(112)
      acd316(105)=acd316(41)*acd316(105)
      acd316(109)=-acd316(35)*acd316(58)
      acd316(110)=acd316(66)*acd316(122)
      acd316(111)=acd316(37)*acd316(61)
      acd316(112)=-acd316(20)*acd316(114)
      acd316(105)=acd316(112)+acd316(111)+acd316(109)+acd316(110)+acd316(105)
      acd316(105)=acd316(5)*acd316(105)
      acd316(109)=acd316(37)*acd316(52)
      acd316(104)=acd316(109)+acd316(104)
      acd316(99)=acd316(104)*acd316(99)
      acd316(104)=-acd316(37)+acd316(27)
      acd316(104)=acd316(31)*acd316(104)
      acd316(109)=-acd316(58)*acd316(97)
      acd316(110)=acd316(75)*acd316(93)
      acd316(111)=acd316(64)*acd316(122)
      acd316(104)=acd316(111)+acd316(109)+acd316(110)+acd316(104)
      acd316(104)=acd316(30)*acd316(104)
      acd316(102)=acd316(102)*acd316(114)
      acd316(109)=acd316(78)*acd316(94)
      acd316(110)=acd316(75)*acd316(92)
      acd316(109)=acd316(109)+acd316(110)
      acd316(109)=acd316(19)*acd316(109)
      acd316(99)=acd316(103)+acd316(105)+acd316(106)+acd316(102)+acd316(100)+ac&
      &d316(107)+acd316(108)+acd316(109)+acd316(104)+acd316(99)
      brack(ninjaidxt1mu0)=acd316(101)
      brack(ninjaidxt0mu0)=acd316(99)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d316h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd316h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d316h1l131
