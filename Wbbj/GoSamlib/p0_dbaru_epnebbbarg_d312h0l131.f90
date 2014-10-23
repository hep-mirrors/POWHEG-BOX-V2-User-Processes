module     p0_dbaru_epnebbbarg_d312h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d312h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd312h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd312
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd312h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(122) :: acd312
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd312(1)=dotproduct(k2,ninjaE3)
      acd312(2)=dotproduct(ninjaE3,spvak1k2)
      acd312(3)=dotproduct(ninjaE3,spvak2k7)
      acd312(4)=abb312(24)
      acd312(5)=dotproduct(ninjaE3,spval6k2)
      acd312(6)=abb312(109)
      acd312(7)=dotproduct(k3,ninjaE3)
      acd312(8)=dotproduct(k4,ninjaE3)
      acd312(9)=dotproduct(ninjaE3,spvak4k3)
      acd312(10)=abb312(15)
      acd312(11)=abb312(145)
      acd312(12)=dotproduct(ninjaE3,spvak4k2)
      acd312(13)=abb312(21)
      acd312(14)=abb312(119)
      acd312(15)=dotproduct(ninjaE3,spval6k3)
      acd312(16)=abb312(128)
      acd312(17)=dotproduct(ninjaE3,spval5k3)
      acd312(18)=abb312(129)
      acd312(19)=dotproduct(ninjaE3,spvak1k3)
      acd312(20)=dotproduct(ninjaE3,spval5k2)
      acd312(21)=dotproduct(k1,ninjaE3)
      acd312(22)=abb312(151)
      acd312(23)=abb312(158)
      acd312(24)=abb312(70)
      acd312(25)=abb312(89)
      acd312(26)=dotproduct(k2,ninjaA)
      acd312(27)=dotproduct(l6,ninjaE3)
      acd312(28)=abb312(59)
      acd312(29)=dotproduct(ninjaA,ninjaE3)
      acd312(30)=abb312(79)
      acd312(31)=dotproduct(ninjaA,spvak1k2)
      acd312(32)=dotproduct(ninjaA,spvak2k7)
      acd312(33)=dotproduct(ninjaA,spval6k2)
      acd312(34)=dotproduct(ninjaE3,spvak1k7)
      acd312(35)=abb312(147)
      acd312(36)=abb312(13)
      acd312(37)=abb312(61)
      acd312(38)=abb312(172)
      acd312(39)=dotproduct(ninjaE3,spvak1l5)
      acd312(40)=abb312(30)
      acd312(41)=dotproduct(ninjaE3,spvak1l6)
      acd312(42)=abb312(67)
      acd312(43)=dotproduct(ninjaE3,spval6k1)
      acd312(44)=abb312(76)
      acd312(45)=dotproduct(ninjaE3,spval6l5)
      acd312(46)=abb312(160)
      acd312(47)=dotproduct(ninjaE3,spval6k7)
      acd312(48)=abb312(157)
      acd312(49)=abb312(164)
      acd312(50)=abb312(123)
      acd312(51)=dotproduct(k3,ninjaA)
      acd312(52)=abb312(17)
      acd312(53)=abb312(180)
      acd312(54)=dotproduct(k4,ninjaA)
      acd312(55)=dotproduct(l5,ninjaE3)
      acd312(56)=abb312(23)
      acd312(57)=abb312(178)
      acd312(58)=abb312(163)
      acd312(59)=abb312(99)
      acd312(60)=abb312(115)
      acd312(61)=abb312(35)
      acd312(62)=abb312(46)
      acd312(63)=dotproduct(k7,ninjaE3)
      acd312(64)=abb312(63)
      acd312(65)=abb312(107)
      acd312(66)=abb312(20)
      acd312(67)=abb312(44)
      acd312(68)=abb312(171)
      acd312(69)=abb312(165)
      acd312(70)=abb312(127)
      acd312(71)=dotproduct(ninjaA,spvak4k3)
      acd312(72)=dotproduct(ninjaA,spvak4k2)
      acd312(73)=dotproduct(ninjaA,spval6k3)
      acd312(74)=dotproduct(ninjaA,spvak1k3)
      acd312(75)=dotproduct(ninjaA,spval5k2)
      acd312(76)=dotproduct(ninjaA,spval5k3)
      acd312(77)=abb312(11)
      acd312(78)=abb312(12)
      acd312(79)=abb312(31)
      acd312(80)=abb312(84)
      acd312(81)=abb312(98)
      acd312(82)=abb312(92)
      acd312(83)=abb312(80)
      acd312(84)=abb312(100)
      acd312(85)=abb312(72)
      acd312(86)=abb312(86)
      acd312(87)=abb312(18)
      acd312(88)=abb312(52)
      acd312(89)=abb312(26)
      acd312(90)=abb312(95)
      acd312(91)=abb312(90)
      acd312(92)=abb312(68)
      acd312(93)=abb312(133)
      acd312(94)=abb312(140)
      acd312(95)=abb312(22)
      acd312(96)=abb312(134)
      acd312(97)=abb312(148)
      acd312(98)=abb312(103)
      acd312(99)=abb312(88)
      acd312(100)=abb312(96)
      acd312(101)=abb312(121)
      acd312(102)=abb312(114)
      acd312(103)=abb312(116)
      acd312(104)=acd312(7)+acd312(8)
      acd312(105)=acd312(104)-acd312(1)
      acd312(106)=acd312(6)*acd312(105)
      acd312(107)=acd312(19)*acd312(16)
      acd312(108)=acd312(12)*acd312(14)
      acd312(109)=acd312(9)*acd312(11)
      acd312(106)=acd312(109)+acd312(107)+acd312(108)+acd312(106)
      acd312(106)=acd312(5)*acd312(106)
      acd312(107)=acd312(18)*acd312(17)
      acd312(108)=acd312(15)*acd312(16)
      acd312(107)=acd312(107)+acd312(108)
      acd312(108)=-acd312(4)*acd312(105)
      acd312(109)=acd312(12)*acd312(13)
      acd312(110)=acd312(9)*acd312(10)
      acd312(108)=acd312(110)+acd312(109)+acd312(108)-acd312(107)
      acd312(108)=acd312(2)*acd312(108)
      acd312(109)=acd312(18)*acd312(20)
      acd312(110)=acd312(19)*acd312(109)
      acd312(106)=acd312(108)+acd312(110)+acd312(106)
      acd312(106)=acd312(3)*acd312(106)
      acd312(108)=acd312(13)*acd312(72)
      acd312(110)=acd312(10)*acd312(71)
      acd312(111)=-acd312(18)*acd312(76)
      acd312(112)=-acd312(16)*acd312(73)
      acd312(113)=-acd312(54)+acd312(26)-acd312(51)
      acd312(114)=acd312(4)*acd312(113)
      acd312(108)=acd312(114)+acd312(112)+acd312(111)+acd312(110)+acd312(95)+ac&
      &d312(108)
      acd312(108)=acd312(2)*acd312(108)
      acd312(110)=acd312(14)*acd312(72)
      acd312(111)=acd312(11)*acd312(71)
      acd312(112)=acd312(16)*acd312(74)
      acd312(113)=-acd312(6)*acd312(113)
      acd312(110)=acd312(113)+acd312(112)+acd312(111)+acd312(98)+acd312(110)
      acd312(110)=acd312(5)*acd312(110)
      acd312(111)=acd312(6)*acd312(33)
      acd312(112)=acd312(4)*acd312(31)
      acd312(111)=-acd312(37)+acd312(111)-acd312(112)
      acd312(105)=acd312(111)*acd312(105)
      acd312(111)=acd312(20)*acd312(74)
      acd312(112)=-acd312(31)*acd312(17)
      acd312(111)=acd312(111)+acd312(112)
      acd312(111)=acd312(18)*acd312(111)
      acd312(112)=acd312(18)*acd312(75)
      acd312(113)=acd312(16)*acd312(33)
      acd312(112)=acd312(113)+acd312(101)+acd312(112)
      acd312(112)=acd312(19)*acd312(112)
      acd312(113)=acd312(33)*acd312(14)
      acd312(114)=acd312(31)*acd312(13)
      acd312(113)=acd312(114)+acd312(88)+acd312(113)
      acd312(113)=acd312(12)*acd312(113)
      acd312(114)=acd312(33)*acd312(11)
      acd312(115)=acd312(31)*acd312(10)
      acd312(114)=acd312(115)+acd312(80)+acd312(114)
      acd312(114)=acd312(9)*acd312(114)
      acd312(115)=acd312(20)*acd312(102)
      acd312(116)=acd312(17)*acd312(103)
      acd312(117)=acd312(41)*acd312(99)
      acd312(118)=acd312(27)*acd312(62)
      acd312(119)=acd312(21)*acd312(25)
      acd312(120)=-acd312(16)*acd312(31)
      acd312(120)=acd312(100)+acd312(120)
      acd312(120)=acd312(15)*acd312(120)
      acd312(121)=2.0_ki*acd312(29)
      acd312(122)=acd312(67)*acd312(121)
      acd312(105)=acd312(108)+acd312(110)+acd312(114)+acd312(113)+acd312(112)+a&
      &cd312(122)+acd312(120)+acd312(111)+acd312(119)+acd312(118)+acd312(117)+a&
      &cd312(115)+acd312(116)+acd312(105)
      acd312(105)=acd312(3)*acd312(105)
      acd312(108)=acd312(47)*acd312(48)
      acd312(110)=acd312(45)*acd312(46)
      acd312(111)=acd312(43)*acd312(44)
      acd312(112)=acd312(39)*acd312(40)
      acd312(113)=acd312(121)*acd312(30)
      acd312(114)=acd312(34)*acd312(35)
      acd312(115)=acd312(41)*acd312(42)
      acd312(116)=acd312(27)*acd312(28)
      acd312(117)=acd312(21)*acd312(22)
      acd312(108)=acd312(111)+acd312(110)-acd312(108)-acd312(114)+acd312(115)+a&
      &cd312(112)-acd312(113)+acd312(116)+acd312(117)
      acd312(110)=acd312(108)*acd312(104)
      acd312(111)=acd312(47)*acd312(94)
      acd312(112)=acd312(45)*acd312(93)
      acd312(113)=acd312(43)*acd312(92)
      acd312(114)=acd312(39)*acd312(90)
      acd312(115)=acd312(34)*acd312(78)
      acd312(116)=acd312(41)*acd312(91)
      acd312(117)=acd312(27)*acd312(61)
      acd312(118)=acd312(21)*acd312(24)
      acd312(119)=acd312(65)*acd312(121)
      acd312(111)=acd312(119)+acd312(118)+acd312(117)+acd312(116)+acd312(115)+a&
      &cd312(114)+acd312(113)+acd312(111)+acd312(112)
      acd312(111)=acd312(12)*acd312(111)
      acd312(112)=acd312(47)*acd312(86)
      acd312(113)=acd312(45)*acd312(85)
      acd312(114)=acd312(43)*acd312(84)
      acd312(115)=acd312(39)*acd312(82)
      acd312(116)=acd312(34)*acd312(77)
      acd312(117)=acd312(41)*acd312(83)
      acd312(118)=acd312(27)*acd312(60)
      acd312(119)=acd312(21)*acd312(23)
      acd312(120)=acd312(64)*acd312(121)
      acd312(112)=acd312(120)+acd312(119)+acd312(118)+acd312(117)+acd312(116)+a&
      &cd312(115)+acd312(114)+acd312(112)+acd312(113)
      acd312(112)=acd312(9)*acd312(112)
      acd312(113)=acd312(15)*acd312(49)
      acd312(114)=acd312(19)*acd312(50)
      acd312(108)=acd312(114)+acd312(113)-acd312(108)
      acd312(108)=acd312(1)*acd312(108)
      acd312(113)=acd312(32)*acd312(4)
      acd312(114)=acd312(113)-acd312(52)
      acd312(114)=-acd312(114)*acd312(104)
      acd312(107)=-acd312(32)*acd312(107)
      acd312(115)=acd312(55)-acd312(63)
      acd312(116)=-acd312(56)*acd312(115)
      acd312(117)=acd312(17)*acd312(97)
      acd312(118)=acd312(15)*acd312(96)
      acd312(119)=acd312(66)*acd312(121)
      acd312(120)=acd312(32)*acd312(13)
      acd312(120)=acd312(87)+acd312(120)
      acd312(120)=acd312(12)*acd312(120)
      acd312(122)=acd312(32)*acd312(10)
      acd312(122)=acd312(79)+acd312(122)
      acd312(122)=acd312(9)*acd312(122)
      acd312(113)=acd312(36)+acd312(113)
      acd312(113)=acd312(1)*acd312(113)
      acd312(107)=acd312(113)+acd312(122)+acd312(120)+acd312(107)+acd312(119)+a&
      &cd312(118)+acd312(117)+acd312(116)+acd312(114)
      acd312(107)=acd312(2)*acd312(107)
      acd312(113)=acd312(32)*acd312(6)
      acd312(114)=acd312(113)+acd312(53)
      acd312(104)=acd312(114)*acd312(104)
      acd312(114)=-acd312(57)*acd312(115)
      acd312(116)=acd312(68)*acd312(121)
      acd312(117)=-acd312(19)*acd312(96)
      acd312(118)=acd312(32)*acd312(19)
      acd312(119)=acd312(16)*acd312(118)
      acd312(120)=acd312(32)*acd312(14)
      acd312(120)=acd312(89)+acd312(120)
      acd312(120)=acd312(12)*acd312(120)
      acd312(122)=acd312(32)*acd312(11)
      acd312(122)=acd312(81)+acd312(122)
      acd312(122)=acd312(9)*acd312(122)
      acd312(113)=acd312(38)-acd312(113)
      acd312(113)=acd312(1)*acd312(113)
      acd312(104)=acd312(113)+acd312(122)+acd312(120)+acd312(119)+acd312(117)+a&
      &cd312(116)+acd312(114)+acd312(104)
      acd312(104)=acd312(5)*acd312(104)
      acd312(113)=acd312(59)*acd312(115)
      acd312(114)=-acd312(20)*acd312(97)
      acd312(116)=acd312(70)*acd312(121)
      acd312(113)=acd312(116)+acd312(114)+acd312(113)
      acd312(113)=acd312(19)*acd312(113)
      acd312(114)=acd312(58)*acd312(115)
      acd312(115)=acd312(69)*acd312(121)
      acd312(114)=acd312(114)+acd312(115)
      acd312(114)=acd312(15)*acd312(114)
      acd312(109)=acd312(118)*acd312(109)
      acd312(104)=acd312(105)+acd312(107)+acd312(104)+acd312(108)+acd312(112)+a&
      &cd312(111)+acd312(109)+acd312(113)+acd312(114)+acd312(110)
      brack(ninjaidxt1mu0)=acd312(106)
      brack(ninjaidxt0mu0)=acd312(104)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d312h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd312h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k5
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
end module     p0_dbaru_epnebbbarg_d312h0l131
