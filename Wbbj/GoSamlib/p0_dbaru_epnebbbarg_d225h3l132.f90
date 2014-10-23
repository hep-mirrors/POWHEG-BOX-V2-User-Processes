module     p0_dbaru_epnebbbarg_d225h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d225h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd225h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(15) :: acd225
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd225(1)=dotproduct(ninjaE3,spvak1k2)
      acd225(2)=dotproduct(ninjaE3,spvak2k7)
      acd225(3)=abb225(21)
      acd225(4)=dotproduct(ninjaE3,spvak2l6)
      acd225(5)=abb225(24)
      acd225(6)=dotproduct(ninjaE3,spvak2l5)
      acd225(7)=abb225(25)
      acd225(8)=dotproduct(ninjaE3,spvak4k2)
      acd225(9)=abb225(80)
      acd225(10)=abb225(48)
      acd225(11)=abb225(40)
      acd225(12)=acd225(3)*acd225(2)
      acd225(13)=acd225(5)*acd225(4)
      acd225(14)=acd225(7)*acd225(6)
      acd225(12)=acd225(14)+acd225(12)+acd225(13)
      acd225(12)=acd225(1)*acd225(12)
      acd225(13)=acd225(9)*acd225(2)
      acd225(14)=acd225(10)*acd225(4)
      acd225(15)=acd225(11)*acd225(6)
      acd225(13)=acd225(15)+acd225(14)+acd225(13)
      acd225(13)=acd225(8)*acd225(13)
      acd225(12)=acd225(13)+acd225(12)
      brack(ninjaidxt1x0mu0)=acd225(12)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd225h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(79) :: acd225
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd225(1)=dotproduct(ninjaA1,spvak2k7)
      acd225(2)=dotproduct(ninjaE3,spvak1k2)
      acd225(3)=abb225(21)
      acd225(4)=dotproduct(ninjaE3,spvak4k2)
      acd225(5)=abb225(80)
      acd225(6)=dotproduct(ninjaA1,spvak2l6)
      acd225(7)=abb225(24)
      acd225(8)=abb225(48)
      acd225(9)=dotproduct(ninjaA1,spvak1k2)
      acd225(10)=dotproduct(ninjaE3,spvak2k7)
      acd225(11)=dotproduct(ninjaE3,spvak2l6)
      acd225(12)=dotproduct(ninjaE3,spvak2l5)
      acd225(13)=abb225(25)
      acd225(14)=dotproduct(ninjaA1,spvak2l5)
      acd225(15)=abb225(40)
      acd225(16)=dotproduct(ninjaA1,spvak4k2)
      acd225(17)=dotproduct(k1,ninjaE3)
      acd225(18)=abb225(20)
      acd225(19)=dotproduct(k2,ninjaE3)
      acd225(20)=abb225(18)
      acd225(21)=dotproduct(k3,ninjaE3)
      acd225(22)=abb225(129)
      acd225(23)=dotproduct(k4,ninjaE3)
      acd225(24)=abb225(31)
      acd225(25)=dotproduct(l5,ninjaE3)
      acd225(26)=dotproduct(l6,ninjaE3)
      acd225(27)=dotproduct(k7,ninjaE3)
      acd225(28)=dotproduct(ninjaA0,ninjaE3)
      acd225(29)=abb225(22)
      acd225(30)=dotproduct(ninjaA0,spvak2k7)
      acd225(31)=dotproduct(ninjaA0,spvak2l6)
      acd225(32)=dotproduct(ninjaA0,spvak1k2)
      acd225(33)=dotproduct(ninjaA0,spvak2l5)
      acd225(34)=dotproduct(ninjaA0,spvak4k2)
      acd225(35)=abb225(16)
      acd225(36)=abb225(17)
      acd225(37)=abb225(19)
      acd225(38)=dotproduct(ninjaE3,spvak4k1)
      acd225(39)=abb225(23)
      acd225(40)=abb225(30)
      acd225(41)=dotproduct(ninjaE3,spval5k2)
      acd225(42)=abb225(26)
      acd225(43)=dotproduct(ninjaE3,spvak3k2)
      acd225(44)=abb225(27)
      acd225(45)=abb225(29)
      acd225(46)=dotproduct(ninjaE3,spvak1k4)
      acd225(47)=abb225(32)
      acd225(48)=dotproduct(ninjaE3,spvak7k2)
      acd225(49)=abb225(33)
      acd225(50)=dotproduct(ninjaE3,spvak1k3)
      acd225(51)=abb225(36)
      acd225(52)=dotproduct(ninjaE3,spval6k2)
      acd225(53)=abb225(42)
      acd225(54)=dotproduct(ninjaE3,spvak4k3)
      acd225(55)=abb225(68)
      acd225(56)=acd225(3)*acd225(10)
      acd225(57)=acd225(7)*acd225(11)
      acd225(58)=acd225(13)*acd225(12)
      acd225(56)=acd225(58)+acd225(56)+acd225(57)
      acd225(57)=acd225(9)*acd225(56)
      acd225(58)=acd225(5)*acd225(10)
      acd225(59)=acd225(8)*acd225(11)
      acd225(60)=acd225(15)*acd225(12)
      acd225(58)=acd225(60)+acd225(58)+acd225(59)
      acd225(59)=acd225(16)*acd225(58)
      acd225(60)=acd225(3)*acd225(2)
      acd225(61)=acd225(5)*acd225(4)
      acd225(60)=acd225(60)+acd225(61)
      acd225(61)=acd225(1)*acd225(60)
      acd225(62)=acd225(7)*acd225(2)
      acd225(63)=acd225(8)*acd225(4)
      acd225(62)=acd225(62)+acd225(63)
      acd225(63)=acd225(6)*acd225(62)
      acd225(64)=acd225(13)*acd225(2)
      acd225(65)=acd225(15)*acd225(4)
      acd225(64)=acd225(64)+acd225(65)
      acd225(65)=acd225(14)*acd225(64)
      acd225(57)=acd225(65)+acd225(63)+acd225(61)+acd225(57)+acd225(59)
      acd225(56)=acd225(32)*acd225(56)
      acd225(58)=acd225(34)*acd225(58)
      acd225(59)=acd225(30)*acd225(60)
      acd225(60)=acd225(31)*acd225(62)
      acd225(61)=acd225(33)*acd225(64)
      acd225(62)=acd225(27)+acd225(26)+acd225(25)-acd225(21)
      acd225(62)=acd225(22)*acd225(62)
      acd225(63)=acd225(18)*acd225(17)
      acd225(64)=acd225(20)*acd225(19)
      acd225(65)=acd225(24)*acd225(23)
      acd225(66)=acd225(29)*acd225(28)
      acd225(67)=acd225(35)*acd225(10)
      acd225(68)=acd225(36)*acd225(11)
      acd225(69)=acd225(37)*acd225(2)
      acd225(70)=acd225(39)*acd225(38)
      acd225(71)=acd225(40)*acd225(12)
      acd225(72)=acd225(42)*acd225(41)
      acd225(73)=acd225(44)*acd225(43)
      acd225(74)=acd225(45)*acd225(4)
      acd225(75)=acd225(47)*acd225(46)
      acd225(76)=acd225(49)*acd225(48)
      acd225(77)=acd225(51)*acd225(50)
      acd225(78)=acd225(53)*acd225(52)
      acd225(79)=acd225(55)*acd225(54)
      acd225(56)=acd225(79)+acd225(78)+acd225(77)+acd225(76)+acd225(75)+acd225(&
      &74)+acd225(73)+acd225(72)+acd225(71)+acd225(70)+acd225(69)+acd225(68)+ac&
      &d225(67)+2.0_ki*acd225(66)+acd225(65)+acd225(64)+acd225(63)+acd225(61)+a&
      &cd225(60)+acd225(59)+acd225(56)+acd225(58)+acd225(62)
      brack(ninjaidxt0x0mu0)=acd225(56)
      brack(ninjaidxt0x1mu0)=acd225(57)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d225h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd225h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
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
end module     p0_dbaru_epnebbbarg_d225h3l132
