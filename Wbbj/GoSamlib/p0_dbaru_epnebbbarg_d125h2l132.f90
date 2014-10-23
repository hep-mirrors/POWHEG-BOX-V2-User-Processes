module     p0_dbaru_epnebbbarg_d125h2l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d125h2l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd125h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd125
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd125(1)=dotproduct(k2,ninjaE3)
      acd125(2)=dotproduct(ninjaE3,spvak2k7)
      acd125(3)=dotproduct(ninjaE3,spvak4k3)
      acd125(4)=abb125(43)
      acd125(5)=dotproduct(l5,ninjaE3)
      acd125(6)=abb125(39)
      acd125(7)=dotproduct(l6,ninjaE3)
      acd125(8)=dotproduct(ninjaE3,spval5l6)
      acd125(9)=abb125(18)
      acd125(10)=dotproduct(ninjaE3,spval5k2)
      acd125(11)=abb125(21)
      acd125(12)=dotproduct(ninjaE3,spvak1k2)
      acd125(13)=abb125(36)
      acd125(14)=dotproduct(ninjaE3,spvak1l6)
      acd125(15)=abb125(41)
      acd125(16)=-acd125(7)-acd125(5)
      acd125(16)=acd125(6)*acd125(16)
      acd125(17)=acd125(4)*acd125(1)
      acd125(18)=acd125(9)*acd125(8)
      acd125(19)=acd125(11)*acd125(10)
      acd125(20)=acd125(13)*acd125(12)
      acd125(21)=acd125(15)*acd125(14)
      acd125(16)=acd125(21)+acd125(20)+acd125(19)+acd125(18)+acd125(17)+acd125(&
      &16)
      acd125(16)=acd125(16)*acd125(3)*acd125(2)
      brack(ninjaidxt1x0mu0)=acd125(16)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd125h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(80) :: acd125
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd125(1)=dotproduct(k2,ninjaA1)
      acd125(2)=dotproduct(ninjaE3,spvak2k7)
      acd125(3)=dotproduct(ninjaE3,spvak4k3)
      acd125(4)=abb125(43)
      acd125(5)=dotproduct(k2,ninjaE3)
      acd125(6)=dotproduct(ninjaA1,spvak2k7)
      acd125(7)=dotproduct(ninjaA1,spvak4k3)
      acd125(8)=dotproduct(l5,ninjaA1)
      acd125(9)=abb125(39)
      acd125(10)=dotproduct(l5,ninjaE3)
      acd125(11)=dotproduct(l6,ninjaA1)
      acd125(12)=dotproduct(l6,ninjaE3)
      acd125(13)=dotproduct(ninjaE3,spval5k2)
      acd125(14)=abb125(21)
      acd125(15)=dotproduct(ninjaE3,spval5l6)
      acd125(16)=abb125(18)
      acd125(17)=dotproduct(ninjaE3,spvak1k2)
      acd125(18)=abb125(36)
      acd125(19)=dotproduct(ninjaE3,spvak1l6)
      acd125(20)=abb125(41)
      acd125(21)=dotproduct(ninjaA1,spval5k2)
      acd125(22)=dotproduct(ninjaA1,spval5l6)
      acd125(23)=dotproduct(ninjaA1,spvak1k2)
      acd125(24)=dotproduct(ninjaA1,spvak1l6)
      acd125(25)=dotproduct(k1,ninjaE3)
      acd125(26)=abb125(51)
      acd125(27)=abb125(35)
      acd125(28)=abb125(37)
      acd125(29)=abb125(31)
      acd125(30)=abb125(74)
      acd125(31)=dotproduct(k2,ninjaA0)
      acd125(32)=dotproduct(k3,ninjaE3)
      acd125(33)=abb125(72)
      acd125(34)=dotproduct(k4,ninjaE3)
      acd125(35)=dotproduct(ninjaA0,ninjaE3)
      acd125(36)=abb125(34)
      acd125(37)=dotproduct(ninjaA0,spvak2k7)
      acd125(38)=dotproduct(ninjaA0,spvak4k3)
      acd125(39)=abb125(33)
      acd125(40)=abb125(45)
      acd125(41)=abb125(67)
      acd125(42)=abb125(32)
      acd125(43)=abb125(28)
      acd125(44)=abb125(57)
      acd125(45)=dotproduct(l5,ninjaA0)
      acd125(46)=abb125(30)
      acd125(47)=abb125(23)
      acd125(48)=abb125(22)
      acd125(49)=dotproduct(l6,ninjaA0)
      acd125(50)=dotproduct(k7,ninjaE3)
      acd125(51)=abb125(15)
      acd125(52)=abb125(27)
      acd125(53)=abb125(29)
      acd125(54)=abb125(14)
      acd125(55)=abb125(64)
      acd125(56)=dotproduct(ninjaA0,spval5k2)
      acd125(57)=dotproduct(ninjaA0,spval5l6)
      acd125(58)=dotproduct(ninjaA0,spvak1k2)
      acd125(59)=dotproduct(ninjaA0,spvak1l6)
      acd125(60)=dotproduct(ninjaE3,spvak1k3)
      acd125(61)=abb125(9)
      acd125(62)=abb125(12)
      acd125(63)=abb125(38)
      acd125(64)=abb125(19)
      acd125(65)=abb125(17)
      acd125(66)=abb125(16)
      acd125(67)=-acd125(11)-acd125(8)
      acd125(67)=acd125(9)*acd125(67)
      acd125(68)=acd125(1)*acd125(4)
      acd125(69)=acd125(21)*acd125(14)
      acd125(70)=acd125(22)*acd125(16)
      acd125(71)=acd125(23)*acd125(18)
      acd125(72)=acd125(24)*acd125(20)
      acd125(67)=acd125(72)+acd125(71)+acd125(70)+acd125(69)+acd125(68)+acd125(&
      &67)
      acd125(68)=acd125(3)*acd125(2)
      acd125(67)=acd125(68)*acd125(67)
      acd125(69)=acd125(4)*acd125(5)
      acd125(70)=acd125(14)*acd125(13)
      acd125(71)=acd125(16)*acd125(15)
      acd125(72)=acd125(17)*acd125(18)
      acd125(73)=acd125(19)*acd125(20)
      acd125(69)=acd125(69)+acd125(70)+acd125(71)+acd125(72)+acd125(73)
      acd125(70)=acd125(6)*acd125(3)
      acd125(71)=acd125(7)*acd125(2)
      acd125(70)=acd125(70)+acd125(71)
      acd125(70)=acd125(70)*acd125(69)
      acd125(71)=acd125(12)+acd125(10)
      acd125(72)=acd125(71)*acd125(9)
      acd125(73)=acd125(3)*acd125(72)
      acd125(74)=-acd125(6)*acd125(73)
      acd125(72)=acd125(2)*acd125(72)
      acd125(75)=-acd125(7)*acd125(72)
      acd125(67)=acd125(74)+acd125(75)+acd125(67)+acd125(70)
      acd125(70)=-acd125(46)*acd125(71)
      acd125(74)=acd125(36)*acd125(5)
      acd125(75)=acd125(52)*acd125(2)
      acd125(76)=acd125(53)*acd125(3)
      acd125(77)=acd125(54)*acd125(13)
      acd125(78)=acd125(55)*acd125(15)
      acd125(70)=acd125(78)+acd125(77)+acd125(76)+acd125(75)+acd125(74)+acd125(&
      &70)
      acd125(74)=2.0_ki*acd125(35)
      acd125(70)=acd125(74)*acd125(70)
      acd125(74)=-acd125(49)-acd125(45)
      acd125(74)=acd125(9)*acd125(74)
      acd125(75)=acd125(31)*acd125(4)
      acd125(76)=acd125(56)*acd125(14)
      acd125(77)=acd125(57)*acd125(16)
      acd125(78)=acd125(58)*acd125(18)
      acd125(79)=acd125(59)*acd125(20)
      acd125(74)=acd125(62)+acd125(79)+acd125(78)+acd125(77)+acd125(76)+acd125(&
      &75)+acd125(74)
      acd125(68)=acd125(68)*acd125(74)
      acd125(74)=acd125(37)*acd125(3)
      acd125(75)=acd125(38)*acd125(2)
      acd125(74)=acd125(74)+acd125(75)
      acd125(69)=acd125(74)*acd125(69)
      acd125(74)=acd125(41)*acd125(71)
      acd125(75)=acd125(33)*acd125(5)
      acd125(76)=acd125(42)*acd125(2)
      acd125(77)=acd125(43)*acd125(13)
      acd125(78)=acd125(44)*acd125(15)
      acd125(74)=acd125(78)+acd125(77)+acd125(76)+acd125(75)+acd125(74)
      acd125(75)=acd125(34)+acd125(32)
      acd125(74)=acd125(75)*acd125(74)
      acd125(75)=acd125(27)*acd125(71)
      acd125(76)=acd125(26)*acd125(5)
      acd125(77)=acd125(28)*acd125(2)
      acd125(78)=acd125(29)*acd125(13)
      acd125(79)=acd125(30)*acd125(15)
      acd125(75)=acd125(79)+acd125(78)+acd125(77)+acd125(76)+acd125(75)
      acd125(75)=acd125(25)*acd125(75)
      acd125(76)=acd125(39)*acd125(5)
      acd125(77)=acd125(61)*acd125(60)
      acd125(78)=acd125(63)*acd125(13)
      acd125(79)=acd125(64)*acd125(15)
      acd125(76)=acd125(79)+acd125(78)+acd125(77)+acd125(76)
      acd125(76)=acd125(2)*acd125(76)
      acd125(77)=acd125(40)*acd125(5)
      acd125(78)=acd125(51)*acd125(50)
      acd125(79)=acd125(65)*acd125(13)
      acd125(80)=acd125(66)*acd125(15)
      acd125(77)=acd125(80)+acd125(79)+acd125(78)+acd125(77)
      acd125(77)=acd125(3)*acd125(77)
      acd125(73)=-acd125(37)*acd125(73)
      acd125(72)=-acd125(38)*acd125(72)
      acd125(78)=acd125(47)*acd125(71)*acd125(2)
      acd125(71)=-acd125(48)*acd125(71)*acd125(3)
      acd125(68)=acd125(71)+acd125(78)+acd125(73)+acd125(72)+acd125(68)+acd125(&
      &70)+acd125(75)+acd125(77)+acd125(76)+acd125(74)+acd125(69)
      brack(ninjaidxt0x0mu0)=acd125(68)
      brack(ninjaidxt0x1mu0)=acd125(67)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d125h2_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd125h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
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
end module     p0_dbaru_epnebbbarg_d125h2l132
