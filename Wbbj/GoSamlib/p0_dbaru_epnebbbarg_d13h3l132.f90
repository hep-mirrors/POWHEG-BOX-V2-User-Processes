module     p0_dbaru_epnebbbarg_d13h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d13h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd13h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd13
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd13(1)=dotproduct(ninjaE3,spvak1k2)
      acd13(2)=dotproduct(ninjaE3,spvak2l6)
      acd13(3)=dotproduct(ninjaE3,spvak4k3)
      acd13(4)=abb13(27)
      acd13(5)=dotproduct(ninjaE3,spvak2l5)
      acd13(6)=abb13(30)
      acd13(7)=-acd13(4)*acd13(2)
      acd13(8)=-acd13(6)*acd13(5)
      acd13(7)=acd13(7)+acd13(8)
      acd13(7)=acd13(7)*acd13(3)*acd13(1)
      brack(ninjaidxt1x0mu0)=acd13(7)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd13h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(72) :: acd13
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd13(1)=dotproduct(ninjaA1,spvak2l5)
      acd13(2)=dotproduct(ninjaE3,spvak4k3)
      acd13(3)=dotproduct(ninjaE3,spvak1k2)
      acd13(4)=abb13(30)
      acd13(5)=dotproduct(ninjaA1,spvak2l6)
      acd13(6)=abb13(27)
      acd13(7)=dotproduct(ninjaA1,spvak4k3)
      acd13(8)=dotproduct(ninjaE3,spvak2l5)
      acd13(9)=dotproduct(ninjaE3,spvak2l6)
      acd13(10)=dotproduct(ninjaA1,spvak1k2)
      acd13(11)=dotproduct(k1,ninjaE3)
      acd13(12)=abb13(23)
      acd13(13)=abb13(57)
      acd13(14)=dotproduct(k2,ninjaE3)
      acd13(15)=abb13(60)
      acd13(16)=dotproduct(l5,ninjaE3)
      acd13(17)=abb13(56)
      acd13(18)=dotproduct(l6,ninjaE3)
      acd13(19)=dotproduct(ninjaA0,ninjaE3)
      acd13(20)=abb13(41)
      acd13(21)=dotproduct(ninjaE3,spvak1k3)
      acd13(22)=abb13(11)
      acd13(23)=abb13(26)
      acd13(24)=dotproduct(ninjaE3,spvak4k2)
      acd13(25)=abb13(14)
      acd13(26)=abb13(58)
      acd13(27)=abb13(49)
      acd13(28)=abb13(45)
      acd13(29)=abb13(54)
      acd13(30)=abb13(25)
      acd13(31)=abb13(47)
      acd13(32)=abb13(50)
      acd13(33)=dotproduct(ninjaA0,spvak2l5)
      acd13(34)=dotproduct(ninjaA0,spvak2l6)
      acd13(35)=dotproduct(ninjaA0,spvak4k3)
      acd13(36)=dotproduct(ninjaA0,spvak1k2)
      acd13(37)=abb13(35)
      acd13(38)=abb13(19)
      acd13(39)=abb13(12)
      acd13(40)=dotproduct(ninjaE3,spval5k2)
      acd13(41)=abb13(33)
      acd13(42)=dotproduct(ninjaE3,spval6k2)
      acd13(43)=abb13(20)
      acd13(44)=abb13(22)
      acd13(45)=dotproduct(ninjaE3,spvak7k2)
      acd13(46)=abb13(28)
      acd13(47)=dotproduct(ninjaE3,spvak1k7)
      acd13(48)=abb13(29)
      acd13(49)=abb13(13)
      acd13(50)=abb13(64)
      acd13(51)=abb13(31)
      acd13(52)=abb13(40)
      acd13(53)=abb13(63)
      acd13(54)=abb13(34)
      acd13(55)=abb13(15)
      acd13(56)=dotproduct(ninjaE3,spvak1l5)
      acd13(57)=abb13(16)
      acd13(58)=abb13(55)
      acd13(59)=dotproduct(ninjaE3,spvak1l6)
      acd13(60)=abb13(39)
      acd13(61)=acd13(9)*acd13(6)
      acd13(62)=acd13(8)*acd13(4)
      acd13(61)=acd13(61)+acd13(62)
      acd13(62)=-acd13(10)*acd13(61)
      acd13(63)=-acd13(6)*acd13(5)
      acd13(64)=-acd13(4)*acd13(1)
      acd13(63)=acd13(63)+acd13(64)
      acd13(63)=acd13(3)*acd13(63)
      acd13(62)=acd13(63)+acd13(62)
      acd13(62)=acd13(2)*acd13(62)
      acd13(63)=-acd13(61)*acd13(3)*acd13(7)
      acd13(62)=acd13(62)+acd13(63)
      acd13(63)=acd13(47)*acd13(54)
      acd13(64)=acd13(45)*acd13(53)
      acd13(65)=acd13(11)*acd13(13)
      acd13(66)=acd13(42)*acd13(51)
      acd13(67)=acd13(40)*acd13(50)
      acd13(68)=acd13(24)*acd13(49)
      acd13(69)=acd13(21)*acd13(38)
      acd13(70)=acd13(14)*acd13(26)
      acd13(71)=-acd13(6)*acd13(35)
      acd13(71)=acd13(52)+acd13(71)
      acd13(71)=acd13(3)*acd13(71)
      acd13(63)=acd13(71)+acd13(70)+acd13(69)+acd13(68)+acd13(67)+acd13(66)+acd&
      &13(65)+acd13(63)+acd13(64)
      acd13(63)=acd13(9)*acd13(63)
      acd13(64)=acd13(47)*acd13(48)
      acd13(65)=acd13(45)*acd13(46)
      acd13(66)=acd13(11)*acd13(12)
      acd13(67)=acd13(42)*acd13(43)
      acd13(68)=acd13(40)*acd13(41)
      acd13(69)=acd13(24)*acd13(39)
      acd13(70)=acd13(21)*acd13(37)
      acd13(71)=acd13(14)*acd13(23)
      acd13(72)=-acd13(4)*acd13(35)
      acd13(72)=acd13(44)+acd13(72)
      acd13(72)=acd13(3)*acd13(72)
      acd13(64)=acd13(72)+acd13(71)+acd13(70)+acd13(69)+acd13(68)+acd13(67)+acd&
      &13(66)+acd13(64)+acd13(65)
      acd13(64)=acd13(8)*acd13(64)
      acd13(61)=-acd13(36)*acd13(61)
      acd13(65)=-acd13(6)*acd13(34)
      acd13(66)=-acd13(4)*acd13(33)
      acd13(65)=acd13(65)+acd13(66)
      acd13(65)=acd13(3)*acd13(65)
      acd13(66)=acd13(59)*acd13(60)
      acd13(67)=acd13(56)*acd13(57)
      acd13(68)=acd13(42)*acd13(58)
      acd13(69)=acd13(40)*acd13(55)
      acd13(70)=2.0_ki*acd13(19)
      acd13(71)=acd13(32)*acd13(70)
      acd13(72)=acd13(14)*acd13(27)
      acd13(61)=acd13(65)+acd13(72)+acd13(71)+acd13(69)+acd13(68)+acd13(66)+acd&
      &13(67)+acd13(61)
      acd13(61)=acd13(2)*acd13(61)
      acd13(65)=acd13(16)+acd13(18)
      acd13(66)=-acd13(17)*acd13(65)
      acd13(67)=acd13(20)*acd13(70)
      acd13(68)=acd13(24)*acd13(25)
      acd13(69)=acd13(21)*acd13(22)
      acd13(71)=acd13(14)*acd13(15)
      acd13(66)=acd13(71)+acd13(69)+acd13(68)+acd13(67)+acd13(66)
      acd13(66)=acd13(14)*acd13(66)
      acd13(67)=acd13(29)*acd13(65)
      acd13(68)=acd13(31)*acd13(70)
      acd13(67)=acd13(68)+acd13(67)
      acd13(67)=acd13(24)*acd13(67)
      acd13(65)=acd13(28)*acd13(65)
      acd13(68)=acd13(30)*acd13(70)
      acd13(65)=acd13(68)+acd13(65)
      acd13(65)=acd13(21)*acd13(65)
      acd13(61)=acd13(61)+acd13(64)+acd13(63)+acd13(66)+acd13(67)+acd13(65)
      brack(ninjaidxt0x0mu0)=acd13(61)
      brack(ninjaidxt0x1mu0)=acd13(62)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d13h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd13h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = + a0(0:3)
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
end module     p0_dbaru_epnebbbarg_d13h3l132
