module     p0_dbaru_epnebbbarg_d102h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d102h2l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd102h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(14) :: acd102
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd102(1)=dotproduct(k2,ninjaE3)
      acd102(2)=dotproduct(ninjaE3,spvak2k7)
      acd102(3)=dotproduct(ninjaE3,spvak4k3)
      acd102(4)=abb102(28)
      acd102(5)=dotproduct(ninjaE3,spval6k2)
      acd102(6)=abb102(30)
      acd102(7)=dotproduct(ninjaE3,spval5k2)
      acd102(8)=abb102(31)
      acd102(9)=dotproduct(ninjaE3,spvak1k2)
      acd102(10)=abb102(42)
      acd102(11)=acd102(4)*acd102(1)
      acd102(12)=-acd102(6)*acd102(5)
      acd102(13)=-acd102(8)*acd102(7)
      acd102(14)=acd102(10)*acd102(9)
      acd102(11)=acd102(14)+acd102(13)+acd102(11)+acd102(12)
      acd102(11)=acd102(11)*acd102(3)*acd102(2)
      brack(ninjaidxt2mu0)=acd102(11)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd102h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(124) :: acd102
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd102(1)=dotproduct(k2,ninjaE3)
      acd102(2)=dotproduct(ninjaE3,spvak4k3)
      acd102(3)=dotproduct(ninjaE4,spvak2k7)
      acd102(4)=abb102(28)
      acd102(5)=dotproduct(ninjaE3,spvak2k7)
      acd102(6)=dotproduct(ninjaE4,spvak4k3)
      acd102(7)=abb102(35)
      acd102(8)=dotproduct(k2,ninjaE4)
      acd102(9)=dotproduct(ninjaE3,spvak4k2)
      acd102(10)=abb102(17)
      acd102(11)=dotproduct(ninjaE4,spval6k2)
      acd102(12)=abb102(30)
      acd102(13)=dotproduct(ninjaE4,spval5k2)
      acd102(14)=abb102(31)
      acd102(15)=dotproduct(ninjaE4,spvak1k2)
      acd102(16)=abb102(42)
      acd102(17)=dotproduct(ninjaE3,spval6k2)
      acd102(18)=dotproduct(ninjaE3,spval5k2)
      acd102(19)=dotproduct(ninjaE3,spvak1k2)
      acd102(20)=abb102(20)
      acd102(21)=dotproduct(ninjaE3,spvak1k7)
      acd102(22)=abb102(33)
      acd102(23)=dotproduct(ninjaE3,spval6k7)
      acd102(24)=abb102(58)
      acd102(25)=dotproduct(ninjaE3,spval5k7)
      acd102(26)=abb102(65)
      acd102(27)=dotproduct(k2,ninjaA)
      acd102(28)=dotproduct(k3,ninjaE3)
      acd102(29)=abb102(38)
      acd102(30)=dotproduct(k4,ninjaE3)
      acd102(31)=dotproduct(ninjaA,ninjaE3)
      acd102(32)=dotproduct(ninjaA,spvak4k3)
      acd102(33)=dotproduct(ninjaA,spvak2k7)
      acd102(34)=abb102(26)
      acd102(35)=abb102(18)
      acd102(36)=abb102(13)
      acd102(37)=abb102(39)
      acd102(38)=abb102(59)
      acd102(39)=abb102(66)
      acd102(40)=dotproduct(ninjaA,spval6k2)
      acd102(41)=dotproduct(ninjaA,spval5k2)
      acd102(42)=dotproduct(ninjaA,spvak1k2)
      acd102(43)=dotproduct(ninjaE3,spvak3k2)
      acd102(44)=abb102(11)
      acd102(45)=abb102(27)
      acd102(46)=abb102(14)
      acd102(47)=dotproduct(ninjaE3,spval5k3)
      acd102(48)=abb102(75)
      acd102(49)=dotproduct(ninjaE3,spvak1k4)
      acd102(50)=abb102(40)
      acd102(51)=dotproduct(ninjaE3,spvak2k3)
      acd102(52)=abb102(36)
      acd102(53)=dotproduct(ninjaE3,spvak1k3)
      acd102(54)=abb102(41)
      acd102(55)=dotproduct(ninjaE3,spval6k3)
      acd102(56)=abb102(73)
      acd102(57)=dotproduct(ninjaE3,spvak2k4)
      acd102(58)=abb102(29)
      acd102(59)=dotproduct(ninjaE3,spval5k4)
      acd102(60)=abb102(44)
      acd102(61)=abb102(48)
      acd102(62)=dotproduct(ninjaE3,spval6k4)
      acd102(63)=abb102(71)
      acd102(64)=abb102(74)
      acd102(65)=abb102(15)
      acd102(66)=abb102(37)
      acd102(67)=abb102(24)
      acd102(68)=abb102(25)
      acd102(69)=dotproduct(k3,ninjaA)
      acd102(70)=dotproduct(k4,ninjaA)
      acd102(71)=dotproduct(ninjaA,ninjaA)
      acd102(72)=dotproduct(ninjaA,spvak4k2)
      acd102(73)=dotproduct(ninjaA,spvak1k7)
      acd102(74)=dotproduct(ninjaA,spval6k7)
      acd102(75)=dotproduct(ninjaA,spval5k7)
      acd102(76)=abb102(21)
      acd102(77)=dotproduct(ninjaA,spvak3k2)
      acd102(78)=dotproduct(ninjaA,spval5k3)
      acd102(79)=dotproduct(ninjaA,spvak1k4)
      acd102(80)=dotproduct(ninjaA,spvak2k3)
      acd102(81)=dotproduct(ninjaA,spvak1k3)
      acd102(82)=dotproduct(ninjaA,spval6k3)
      acd102(83)=dotproduct(ninjaA,spvak2k4)
      acd102(84)=dotproduct(ninjaA,spval5k4)
      acd102(85)=dotproduct(ninjaA,spval6k4)
      acd102(86)=abb102(10)
      acd102(87)=abb102(23)
      acd102(88)=abb102(12)
      acd102(89)=abb102(19)
      acd102(90)=abb102(68)
      acd102(91)=abb102(16)
      acd102(92)=abb102(22)
      acd102(93)=abb102(34)
      acd102(94)=abb102(63)
      acd102(95)=abb102(32)
      acd102(96)=abb102(67)
      acd102(97)=abb102(56)
      acd102(98)=abb102(61)
      acd102(99)=abb102(64)
      acd102(100)=acd102(16)*acd102(15)
      acd102(101)=acd102(14)*acd102(13)
      acd102(102)=acd102(12)*acd102(11)
      acd102(103)=acd102(4)*acd102(8)
      acd102(100)=-acd102(100)+acd102(101)+acd102(102)-acd102(103)
      acd102(100)=acd102(100)*acd102(5)
      acd102(101)=acd102(16)*acd102(19)
      acd102(102)=acd102(14)*acd102(18)
      acd102(103)=acd102(12)*acd102(17)
      acd102(104)=acd102(1)*acd102(4)
      acd102(101)=-acd102(101)+acd102(102)+acd102(103)-acd102(104)
      acd102(102)=acd102(101)*acd102(3)
      acd102(100)=acd102(100)+acd102(102)
      acd102(102)=-acd102(2)*acd102(100)
      acd102(103)=acd102(25)*acd102(26)
      acd102(104)=acd102(23)*acd102(24)
      acd102(105)=acd102(21)*acd102(22)
      acd102(106)=acd102(9)*acd102(10)
      acd102(103)=acd102(103)+acd102(104)+acd102(105)+acd102(106)
      acd102(104)=acd102(1)*acd102(7)
      acd102(104)=acd102(104)+acd102(103)
      acd102(105)=acd102(101)*acd102(6)
      acd102(105)=acd102(105)-acd102(20)
      acd102(106)=-acd102(5)*acd102(105)
      acd102(102)=acd102(102)+acd102(106)+acd102(104)
      acd102(106)=acd102(101)*acd102(33)
      acd102(107)=acd102(62)*acd102(63)
      acd102(108)=acd102(59)*acd102(60)
      acd102(109)=acd102(57)*acd102(58)
      acd102(110)=acd102(49)*acd102(50)
      acd102(111)=acd102(55)*acd102(56)
      acd102(112)=acd102(53)*acd102(54)
      acd102(113)=acd102(51)*acd102(52)
      acd102(114)=acd102(47)*acd102(48)
      acd102(115)=acd102(35)*acd102(43)
      acd102(116)=acd102(25)*acd102(64)
      acd102(117)=acd102(23)*acd102(61)
      acd102(118)=acd102(21)*acd102(46)
      acd102(119)=acd102(9)*acd102(44)
      acd102(120)=acd102(1)*acd102(34)
      acd102(106)=acd102(112)+acd102(113)+acd102(114)+acd102(115)+acd102(108)+a&
      &cd102(109)+acd102(110)+acd102(111)+acd102(107)+acd102(120)-acd102(106)+a&
      &cd102(116)+acd102(117)+acd102(118)+acd102(119)
      acd102(107)=acd102(16)*acd102(42)
      acd102(108)=acd102(14)*acd102(41)
      acd102(109)=acd102(12)*acd102(40)
      acd102(110)=acd102(4)*acd102(27)
      acd102(107)=-acd102(109)+acd102(107)-acd102(108)+acd102(110)+acd102(45)
      acd102(108)=acd102(5)*acd102(107)
      acd102(108)=acd102(108)+acd102(106)
      acd102(108)=acd102(2)*acd102(108)
      acd102(109)=acd102(55)*acd102(68)
      acd102(110)=acd102(53)*acd102(67)
      acd102(111)=acd102(51)*acd102(66)
      acd102(112)=acd102(47)*acd102(65)
      acd102(113)=acd102(28)+acd102(30)
      acd102(114)=acd102(113)*acd102(36)
      acd102(115)=2.0_ki*acd102(31)
      acd102(116)=acd102(115)*acd102(20)
      acd102(109)=acd102(109)+acd102(110)+acd102(111)+acd102(112)+acd102(114)+a&
      &cd102(116)
      acd102(101)=-acd102(32)*acd102(101)
      acd102(101)=acd102(101)+acd102(109)
      acd102(101)=acd102(5)*acd102(101)
      acd102(110)=acd102(25)*acd102(39)
      acd102(111)=acd102(23)*acd102(38)
      acd102(112)=acd102(21)*acd102(37)
      acd102(114)=acd102(9)*acd102(35)
      acd102(110)=acd102(110)+acd102(111)+acd102(112)-acd102(114)
      acd102(110)=acd102(110)*acd102(113)
      acd102(103)=acd102(103)*acd102(115)
      acd102(111)=acd102(29)*acd102(113)
      acd102(112)=acd102(7)*acd102(115)
      acd102(111)=acd102(112)+acd102(111)
      acd102(111)=acd102(1)*acd102(111)
      acd102(101)=acd102(108)+acd102(101)+acd102(111)+acd102(103)+acd102(110)
      acd102(100)=-ninjaP*acd102(100)
      acd102(103)=acd102(33)*acd102(107)
      acd102(108)=acd102(63)*acd102(85)
      acd102(110)=acd102(60)*acd102(84)
      acd102(111)=acd102(58)*acd102(83)
      acd102(112)=acd102(56)*acd102(82)
      acd102(114)=acd102(54)*acd102(81)
      acd102(116)=acd102(52)*acd102(80)
      acd102(117)=acd102(50)*acd102(79)
      acd102(118)=acd102(48)*acd102(78)
      acd102(119)=acd102(75)*acd102(64)
      acd102(120)=acd102(74)*acd102(61)
      acd102(121)=acd102(73)*acd102(46)
      acd102(122)=acd102(72)*acd102(44)
      acd102(123)=acd102(27)*acd102(34)
      acd102(124)=acd102(35)*acd102(77)
      acd102(100)=acd102(103)+acd102(124)+acd102(123)+acd102(122)+acd102(121)+a&
      &cd102(120)+acd102(119)+acd102(118)+acd102(117)+acd102(116)+acd102(114)+a&
      &cd102(112)+acd102(111)+acd102(108)+acd102(110)+acd102(100)
      acd102(100)=acd102(2)*acd102(100)
      acd102(103)=acd102(32)*acd102(106)
      acd102(105)=-ninjaP*acd102(105)
      acd102(106)=acd102(32)*acd102(107)
      acd102(107)=acd102(68)*acd102(82)
      acd102(108)=acd102(67)*acd102(81)
      acd102(110)=acd102(66)*acd102(80)
      acd102(111)=acd102(65)*acd102(78)
      acd102(112)=acd102(71)*acd102(20)
      acd102(114)=acd102(69)+acd102(70)
      acd102(116)=acd102(36)*acd102(114)
      acd102(105)=acd102(106)+acd102(105)+acd102(116)+acd102(112)+acd102(111)+a&
      &cd102(110)+acd102(108)+acd102(88)+acd102(107)
      acd102(105)=acd102(5)*acd102(105)
      acd102(106)=acd102(33)*acd102(109)
      acd102(107)=acd102(39)*acd102(75)
      acd102(108)=acd102(38)*acd102(74)
      acd102(109)=acd102(37)*acd102(73)
      acd102(110)=acd102(27)*acd102(29)
      acd102(111)=acd102(35)*acd102(72)
      acd102(107)=-acd102(111)+acd102(107)+acd102(108)+acd102(109)+acd102(110)
      acd102(107)=acd102(107)*acd102(113)
      acd102(108)=acd102(26)*acd102(75)
      acd102(109)=acd102(24)*acd102(74)
      acd102(110)=acd102(22)*acd102(73)
      acd102(111)=acd102(10)*acd102(72)
      acd102(112)=acd102(27)*acd102(7)
      acd102(108)=acd102(112)+acd102(111)+acd102(110)+acd102(109)+acd102(76)+ac&
      &d102(108)
      acd102(108)=acd102(108)*acd102(115)
      acd102(104)=ninjaP*acd102(104)
      acd102(109)=acd102(71)*acd102(26)
      acd102(110)=acd102(39)*acd102(114)
      acd102(109)=acd102(110)+acd102(99)+acd102(109)
      acd102(109)=acd102(25)*acd102(109)
      acd102(110)=acd102(71)*acd102(24)
      acd102(111)=acd102(38)*acd102(114)
      acd102(110)=acd102(111)+acd102(97)+acd102(110)
      acd102(110)=acd102(23)*acd102(110)
      acd102(111)=acd102(71)*acd102(22)
      acd102(112)=acd102(37)*acd102(114)
      acd102(111)=acd102(112)+acd102(89)+acd102(111)
      acd102(111)=acd102(21)*acd102(111)
      acd102(112)=acd102(71)*acd102(10)
      acd102(113)=-acd102(35)*acd102(114)
      acd102(112)=acd102(113)+acd102(87)+acd102(112)
      acd102(112)=acd102(9)*acd102(112)
      acd102(113)=acd102(71)*acd102(7)
      acd102(114)=acd102(29)*acd102(114)
      acd102(113)=acd102(113)+acd102(114)
      acd102(113)=acd102(1)*acd102(113)
      acd102(114)=acd102(62)*acd102(98)
      acd102(115)=acd102(59)*acd102(96)
      acd102(116)=acd102(57)*acd102(95)
      acd102(117)=acd102(49)*acd102(91)
      acd102(118)=acd102(43)*acd102(86)
      acd102(119)=acd102(55)*acd102(94)
      acd102(120)=acd102(53)*acd102(93)
      acd102(121)=acd102(51)*acd102(92)
      acd102(122)=acd102(47)*acd102(90)
      acd102(100)=acd102(100)+acd102(105)+acd102(103)+acd102(106)+acd102(104)+a&
      &cd102(113)+acd102(108)+acd102(112)+acd102(111)+acd102(110)+acd102(109)+a&
      &cd102(122)+acd102(121)+acd102(120)+acd102(119)+acd102(118)+acd102(117)+a&
      &cd102(116)+acd102(114)+acd102(115)+acd102(107)
      brack(ninjaidxt1mu0)=acd102(101)
      brack(ninjaidxt0mu0)=acd102(100)
      brack(ninjaidxt0mu2)=acd102(102)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d102h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd102h2
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
end module     p0_dbaru_epnebbbarg_d102h2l131
