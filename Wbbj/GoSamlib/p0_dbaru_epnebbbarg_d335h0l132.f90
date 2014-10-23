module     p0_dbaru_epnebbbarg_d335h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d335h0l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd335h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(37) :: acd335
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd335(1)=dotproduct(k2,ninjaE3)
      acd335(2)=dotproduct(ninjaE3,spvak2k7)
      acd335(3)=abb335(21)
      acd335(4)=dotproduct(l5,ninjaE3)
      acd335(5)=abb335(17)
      acd335(6)=dotproduct(k7,ninjaE3)
      acd335(7)=abb335(23)
      acd335(8)=dotproduct(ninjaE3,spvak1k2)
      acd335(9)=abb335(13)
      acd335(10)=dotproduct(ninjaE3,spvak4k2)
      acd335(11)=abb335(14)
      acd335(12)=dotproduct(ninjaE3,spval5k2)
      acd335(13)=abb335(15)
      acd335(14)=dotproduct(ninjaE3,spvak1k3)
      acd335(15)=abb335(19)
      acd335(16)=dotproduct(ninjaE3,spval5k7)
      acd335(17)=abb335(26)
      acd335(18)=dotproduct(ninjaE3,spval5k3)
      acd335(19)=abb335(27)
      acd335(20)=dotproduct(ninjaE3,spvak7k2)
      acd335(21)=abb335(29)
      acd335(22)=dotproduct(ninjaE3,spval6k3)
      acd335(23)=abb335(36)
      acd335(24)=dotproduct(ninjaE3,spval6k2)
      acd335(25)=abb335(41)
      acd335(26)=acd335(3)*acd335(1)
      acd335(27)=acd335(5)*acd335(4)
      acd335(28)=acd335(7)*acd335(6)
      acd335(29)=acd335(9)*acd335(8)
      acd335(30)=acd335(11)*acd335(10)
      acd335(31)=acd335(13)*acd335(12)
      acd335(32)=acd335(15)*acd335(14)
      acd335(33)=acd335(17)*acd335(16)
      acd335(34)=acd335(19)*acd335(18)
      acd335(35)=acd335(21)*acd335(20)
      acd335(36)=acd335(23)*acd335(22)
      acd335(37)=acd335(25)*acd335(24)
      acd335(26)=acd335(37)+acd335(36)+acd335(35)+acd335(34)+acd335(33)+acd335(&
      &32)+acd335(31)+acd335(30)+acd335(29)+acd335(28)+acd335(26)+acd335(27)
      acd335(26)=acd335(2)*acd335(26)
      brack(ninjaidxt1x0mu0)=acd335(26)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd335h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(70) :: acd335
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd335(1)=dotproduct(k2,ninjaA1)
      acd335(2)=dotproduct(ninjaE3,spvak2k7)
      acd335(3)=abb335(21)
      acd335(4)=dotproduct(k2,ninjaE3)
      acd335(5)=dotproduct(ninjaA1,spvak2k7)
      acd335(6)=dotproduct(l5,ninjaA1)
      acd335(7)=abb335(17)
      acd335(8)=dotproduct(l5,ninjaE3)
      acd335(9)=dotproduct(k7,ninjaA1)
      acd335(10)=abb335(23)
      acd335(11)=dotproduct(k7,ninjaE3)
      acd335(12)=dotproduct(ninjaA1,spvak1k2)
      acd335(13)=abb335(13)
      acd335(14)=dotproduct(ninjaE3,spvak1k2)
      acd335(15)=dotproduct(ninjaE3,spvak4k2)
      acd335(16)=abb335(14)
      acd335(17)=dotproduct(ninjaE3,spval5k2)
      acd335(18)=abb335(15)
      acd335(19)=dotproduct(ninjaE3,spvak1k3)
      acd335(20)=abb335(19)
      acd335(21)=dotproduct(ninjaE3,spval5k7)
      acd335(22)=abb335(26)
      acd335(23)=dotproduct(ninjaE3,spval5k3)
      acd335(24)=abb335(27)
      acd335(25)=dotproduct(ninjaE3,spvak7k2)
      acd335(26)=abb335(29)
      acd335(27)=dotproduct(ninjaE3,spval6k3)
      acd335(28)=abb335(36)
      acd335(29)=dotproduct(ninjaE3,spval6k2)
      acd335(30)=abb335(41)
      acd335(31)=dotproduct(ninjaA1,spvak4k2)
      acd335(32)=dotproduct(ninjaA1,spval5k2)
      acd335(33)=dotproduct(ninjaA1,spvak1k3)
      acd335(34)=dotproduct(ninjaA1,spval5k7)
      acd335(35)=dotproduct(ninjaA1,spval5k3)
      acd335(36)=dotproduct(ninjaA1,spvak7k2)
      acd335(37)=dotproduct(ninjaA1,spval6k3)
      acd335(38)=dotproduct(ninjaA1,spval6k2)
      acd335(39)=dotproduct(k2,ninjaA0)
      acd335(40)=dotproduct(ninjaA0,spvak2k7)
      acd335(41)=dotproduct(l5,ninjaA0)
      acd335(42)=dotproduct(k7,ninjaA0)
      acd335(43)=abb335(51)
      acd335(44)=dotproduct(ninjaA0,ninjaE3)
      acd335(45)=abb335(53)
      acd335(46)=dotproduct(ninjaA0,spvak1k2)
      acd335(47)=dotproduct(ninjaA0,spvak4k2)
      acd335(48)=dotproduct(ninjaA0,spval5k2)
      acd335(49)=dotproduct(ninjaA0,spvak1k3)
      acd335(50)=dotproduct(ninjaA0,spval5k7)
      acd335(51)=dotproduct(ninjaA0,spval5k3)
      acd335(52)=dotproduct(ninjaA0,spvak7k2)
      acd335(53)=dotproduct(ninjaA0,spval6k3)
      acd335(54)=dotproduct(ninjaA0,spval6k2)
      acd335(55)=abb335(16)
      acd335(56)=abb335(35)
      acd335(57)=acd335(30)*acd335(29)
      acd335(58)=acd335(28)*acd335(27)
      acd335(59)=acd335(26)*acd335(25)
      acd335(60)=acd335(24)*acd335(23)
      acd335(61)=acd335(22)*acd335(21)
      acd335(62)=acd335(20)*acd335(19)
      acd335(63)=acd335(18)*acd335(17)
      acd335(64)=acd335(16)*acd335(15)
      acd335(65)=acd335(13)*acd335(14)
      acd335(66)=acd335(10)*acd335(11)
      acd335(67)=acd335(7)*acd335(8)
      acd335(68)=acd335(3)*acd335(4)
      acd335(57)=acd335(65)+acd335(66)+acd335(67)+acd335(68)+acd335(61)+acd335(&
      &62)+acd335(63)+acd335(64)+acd335(57)+acd335(58)+acd335(59)+acd335(60)
      acd335(58)=acd335(5)*acd335(57)
      acd335(59)=acd335(30)*acd335(38)
      acd335(60)=acd335(28)*acd335(37)
      acd335(61)=acd335(26)*acd335(36)
      acd335(62)=acd335(24)*acd335(35)
      acd335(63)=acd335(22)*acd335(34)
      acd335(64)=acd335(20)*acd335(33)
      acd335(65)=acd335(18)*acd335(32)
      acd335(66)=acd335(16)*acd335(31)
      acd335(67)=acd335(13)*acd335(12)
      acd335(68)=acd335(10)*acd335(9)
      acd335(69)=acd335(7)*acd335(6)
      acd335(70)=acd335(3)*acd335(1)
      acd335(59)=acd335(70)+acd335(69)+acd335(68)+acd335(67)+acd335(66)+acd335(&
      &65)+acd335(64)+acd335(63)+acd335(62)+acd335(61)+acd335(59)+acd335(60)
      acd335(59)=acd335(2)*acd335(59)
      acd335(58)=acd335(58)+acd335(59)
      acd335(57)=acd335(40)*acd335(57)
      acd335(59)=acd335(30)*acd335(54)
      acd335(60)=acd335(28)*acd335(53)
      acd335(61)=acd335(26)*acd335(52)
      acd335(62)=acd335(24)*acd335(51)
      acd335(63)=acd335(22)*acd335(50)
      acd335(64)=acd335(20)*acd335(49)
      acd335(65)=acd335(18)*acd335(48)
      acd335(66)=acd335(16)*acd335(47)
      acd335(67)=acd335(13)*acd335(46)
      acd335(68)=acd335(10)*acd335(42)
      acd335(69)=acd335(7)*acd335(41)
      acd335(70)=acd335(3)*acd335(39)
      acd335(59)=acd335(70)+acd335(69)+acd335(68)+acd335(67)+acd335(66)+acd335(&
      &65)+acd335(64)+acd335(63)+acd335(62)+acd335(61)+acd335(60)+acd335(55)+ac&
      &d335(59)
      acd335(59)=acd335(2)*acd335(59)
      acd335(60)=acd335(44)*acd335(45)
      acd335(61)=acd335(21)*acd335(56)
      acd335(62)=acd335(11)*acd335(43)
      acd335(57)=acd335(59)+acd335(57)+acd335(62)+2.0_ki*acd335(60)+acd335(61)
      brack(ninjaidxt0x0mu0)=acd335(57)
      brack(ninjaidxt0x1mu0)=acd335(58)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d335h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd335h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6
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
end module     p0_dbaru_epnebbbarg_d335h0l132
