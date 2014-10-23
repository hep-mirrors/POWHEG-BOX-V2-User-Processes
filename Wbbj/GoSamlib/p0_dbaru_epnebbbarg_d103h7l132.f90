module     p0_dbaru_epnebbbarg_d103h7l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d103h7l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd103h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd103
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd103(1)=dotproduct(k2,ninjaE3)
      acd103(2)=dotproduct(ninjaE3,spvak4k3)
      acd103(3)=dotproduct(ninjaE3,spvak7k2)
      acd103(4)=abb103(60)
      acd103(5)=dotproduct(l5,ninjaE3)
      acd103(6)=abb103(32)
      acd103(7)=dotproduct(l6,ninjaE3)
      acd103(8)=dotproduct(ninjaE3,spvak1l6)
      acd103(9)=abb103(11)
      acd103(10)=dotproduct(ninjaE3,spvak1l5)
      acd103(11)=abb103(14)
      acd103(12)=dotproduct(ninjaE3,spvak2l5)
      acd103(13)=abb103(20)
      acd103(14)=dotproduct(ninjaE3,spvak2l6)
      acd103(15)=abb103(24)
      acd103(16)=-acd103(7)-acd103(5)
      acd103(16)=acd103(6)*acd103(16)
      acd103(17)=acd103(4)*acd103(1)
      acd103(18)=acd103(9)*acd103(8)
      acd103(19)=acd103(11)*acd103(10)
      acd103(20)=acd103(13)*acd103(12)
      acd103(21)=acd103(15)*acd103(14)
      acd103(16)=acd103(21)+acd103(20)+acd103(19)+acd103(18)+acd103(17)+acd103(&
      &16)
      acd103(16)=acd103(16)*acd103(3)*acd103(2)
      brack(ninjaidxt1x0mu0)=acd103(16)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd103h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(76) :: acd103
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd103(1)=dotproduct(k2,ninjaA1)
      acd103(2)=dotproduct(ninjaE3,spvak4k3)
      acd103(3)=dotproduct(ninjaE3,spvak7k2)
      acd103(4)=abb103(60)
      acd103(5)=dotproduct(k2,ninjaE3)
      acd103(6)=dotproduct(ninjaA1,spvak4k3)
      acd103(7)=dotproduct(ninjaA1,spvak7k2)
      acd103(8)=dotproduct(l5,ninjaA1)
      acd103(9)=abb103(32)
      acd103(10)=dotproduct(l5,ninjaE3)
      acd103(11)=dotproduct(l6,ninjaA1)
      acd103(12)=dotproduct(l6,ninjaE3)
      acd103(13)=dotproduct(ninjaA1,spvak2l6)
      acd103(14)=abb103(24)
      acd103(15)=dotproduct(ninjaE3,spvak2l6)
      acd103(16)=dotproduct(ninjaE3,spvak1l6)
      acd103(17)=abb103(11)
      acd103(18)=dotproduct(ninjaE3,spvak2l5)
      acd103(19)=abb103(20)
      acd103(20)=dotproduct(ninjaE3,spvak1l5)
      acd103(21)=abb103(14)
      acd103(22)=dotproduct(ninjaA1,spvak1l6)
      acd103(23)=dotproduct(ninjaA1,spvak2l5)
      acd103(24)=dotproduct(ninjaA1,spvak1l5)
      acd103(25)=dotproduct(k2,ninjaA0)
      acd103(26)=dotproduct(k3,ninjaE3)
      acd103(27)=abb103(42)
      acd103(28)=dotproduct(k4,ninjaE3)
      acd103(29)=dotproduct(ninjaA0,ninjaE3)
      acd103(30)=abb103(45)
      acd103(31)=dotproduct(ninjaA0,spvak4k3)
      acd103(32)=dotproduct(ninjaA0,spvak7k2)
      acd103(33)=abb103(19)
      acd103(34)=abb103(39)
      acd103(35)=abb103(62)
      acd103(36)=abb103(57)
      acd103(37)=abb103(27)
      acd103(38)=dotproduct(ninjaE3,spvak1k3)
      acd103(39)=abb103(23)
      acd103(40)=dotproduct(l5,ninjaA0)
      acd103(41)=abb103(26)
      acd103(42)=abb103(25)
      acd103(43)=dotproduct(l6,ninjaA0)
      acd103(44)=dotproduct(k7,ninjaE3)
      acd103(45)=abb103(63)
      acd103(46)=abb103(40)
      acd103(47)=abb103(28)
      acd103(48)=abb103(30)
      acd103(49)=dotproduct(ninjaA0,spvak2l6)
      acd103(50)=dotproduct(ninjaA0,spvak1l6)
      acd103(51)=dotproduct(ninjaA0,spvak2l5)
      acd103(52)=dotproduct(ninjaA0,spvak1l5)
      acd103(53)=abb103(9)
      acd103(54)=dotproduct(ninjaE3,spvak1k2)
      acd103(55)=abb103(10)
      acd103(56)=abb103(15)
      acd103(57)=abb103(13)
      acd103(58)=abb103(33)
      acd103(59)=dotproduct(ninjaE3,spvak1k4)
      acd103(60)=abb103(35)
      acd103(61)=acd103(21)*acd103(24)
      acd103(62)=acd103(19)*acd103(23)
      acd103(63)=acd103(17)*acd103(22)
      acd103(64)=acd103(14)*acd103(13)
      acd103(65)=acd103(4)*acd103(1)
      acd103(66)=-acd103(11)-acd103(8)
      acd103(66)=acd103(9)*acd103(66)
      acd103(61)=acd103(66)+acd103(65)+acd103(64)+acd103(63)+acd103(61)+acd103(&
      &62)
      acd103(61)=acd103(3)*acd103(61)
      acd103(62)=acd103(21)*acd103(20)
      acd103(63)=acd103(17)*acd103(16)
      acd103(62)=acd103(62)+acd103(63)
      acd103(63)=acd103(10)+acd103(12)
      acd103(64)=acd103(63)*acd103(9)
      acd103(65)=acd103(18)*acd103(19)
      acd103(66)=acd103(15)*acd103(14)
      acd103(67)=acd103(5)*acd103(4)
      acd103(65)=acd103(64)-acd103(67)-acd103(62)-acd103(65)-acd103(66)
      acd103(66)=-acd103(7)*acd103(65)
      acd103(61)=acd103(61)+acd103(66)
      acd103(61)=acd103(2)*acd103(61)
      acd103(66)=-acd103(3)*acd103(6)*acd103(65)
      acd103(61)=acd103(66)+acd103(61)
      acd103(66)=acd103(21)*acd103(52)
      acd103(67)=acd103(19)*acd103(51)
      acd103(68)=acd103(17)*acd103(50)
      acd103(69)=acd103(14)*acd103(49)
      acd103(70)=acd103(4)*acd103(25)
      acd103(71)=-acd103(43)-acd103(40)
      acd103(71)=acd103(9)*acd103(71)
      acd103(66)=acd103(71)+acd103(70)+acd103(69)+acd103(68)+acd103(67)+acd103(&
      &56)+acd103(66)
      acd103(66)=acd103(3)*acd103(66)
      acd103(62)=-acd103(64)+acd103(62)
      acd103(62)=acd103(32)*acd103(62)
      acd103(64)=acd103(42)*acd103(63)
      acd103(67)=acd103(26)+acd103(28)
      acd103(68)=-acd103(44)-acd103(67)
      acd103(68)=acd103(36)*acd103(68)
      acd103(69)=acd103(54)*acd103(55)
      acd103(70)=-acd103(48)*acd103(59)
      acd103(71)=acd103(38)*acd103(58)
      acd103(72)=2.0_ki*acd103(29)
      acd103(73)=acd103(46)*acd103(72)
      acd103(74)=acd103(32)*acd103(19)
      acd103(74)=acd103(57)+acd103(74)
      acd103(74)=acd103(18)*acd103(74)
      acd103(75)=acd103(32)*acd103(14)
      acd103(75)=acd103(53)+acd103(75)
      acd103(75)=acd103(15)*acd103(75)
      acd103(76)=acd103(32)*acd103(4)
      acd103(76)=acd103(33)+acd103(76)
      acd103(76)=acd103(5)*acd103(76)
      acd103(62)=acd103(66)+acd103(76)+acd103(75)+acd103(74)+acd103(73)+acd103(&
      &71)+acd103(69)+acd103(70)+acd103(68)+acd103(64)+acd103(62)
      acd103(62)=acd103(2)*acd103(62)
      acd103(64)=-acd103(31)*acd103(65)
      acd103(65)=acd103(38)*acd103(60)
      acd103(64)=acd103(65)+acd103(64)
      acd103(64)=acd103(3)*acd103(64)
      acd103(65)=acd103(67)*acd103(39)
      acd103(66)=-acd103(48)*acd103(72)
      acd103(65)=acd103(66)+acd103(65)
      acd103(65)=acd103(38)*acd103(65)
      acd103(66)=acd103(34)*acd103(67)
      acd103(68)=acd103(72)*acd103(41)
      acd103(66)=acd103(66)-acd103(68)
      acd103(63)=-acd103(66)*acd103(63)
      acd103(66)=acd103(37)*acd103(67)
      acd103(68)=-acd103(47)*acd103(72)
      acd103(66)=acd103(68)+acd103(66)
      acd103(66)=acd103(18)*acd103(66)
      acd103(68)=acd103(35)*acd103(67)
      acd103(69)=-acd103(45)*acd103(72)
      acd103(68)=acd103(69)+acd103(68)
      acd103(68)=acd103(15)*acd103(68)
      acd103(67)=acd103(27)*acd103(67)
      acd103(69)=-acd103(30)*acd103(72)
      acd103(67)=acd103(69)+acd103(67)
      acd103(67)=acd103(5)*acd103(67)
      acd103(62)=acd103(62)+acd103(64)+acd103(67)+acd103(68)+acd103(66)+acd103(&
      &63)+acd103(65)
      brack(ninjaidxt0x0mu0)=acd103(62)
      brack(ninjaidxt0x1mu0)=acd103(61)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d103h7_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd103h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d103h7l132
