module     p0_dbaru_epnebbbarg_d17h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d17h0l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd17(1)=dotproduct(k7,ninjaE3)
      acd17(2)=dotproduct(ninjaE3,spvak4k3)
      acd17(3)=dotproduct(ninjaE3,spval6k2)
      acd17(4)=abb17(50)
      acd17(5)=dotproduct(ninjaE3,spval5k2)
      acd17(6)=abb17(44)
      acd17(7)=dotproduct(ninjaE3,spvak2k7)
      acd17(8)=abb17(14)
      acd17(9)=abb17(19)
      acd17(10)=dotproduct(ninjaE3,spvak1k7)
      acd17(11)=abb17(22)
      acd17(12)=abb17(23)
      acd17(13)=acd17(6)*acd17(1)
      acd17(14)=acd17(9)*acd17(7)
      acd17(15)=acd17(12)*acd17(10)
      acd17(13)=acd17(15)+acd17(14)+acd17(13)
      acd17(13)=acd17(13)*acd17(5)
      acd17(14)=acd17(4)*acd17(1)
      acd17(15)=acd17(8)*acd17(7)
      acd17(16)=acd17(11)*acd17(10)
      acd17(14)=acd17(16)+acd17(15)+acd17(14)
      acd17(14)=acd17(14)*acd17(3)
      acd17(13)=acd17(14)+acd17(13)
      acd17(13)=acd17(2)*acd17(13)
      brack(ninjaidxt1x0mu0)=acd17(13)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(67) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd17(1)=dotproduct(k7,ninjaA1)
      acd17(2)=dotproduct(ninjaE3,spvak4k3)
      acd17(3)=dotproduct(ninjaE3,spval6k2)
      acd17(4)=abb17(50)
      acd17(5)=dotproduct(ninjaE3,spval5k2)
      acd17(6)=abb17(44)
      acd17(7)=dotproduct(k7,ninjaE3)
      acd17(8)=dotproduct(ninjaA1,spvak4k3)
      acd17(9)=dotproduct(ninjaA1,spval6k2)
      acd17(10)=dotproduct(ninjaA1,spval5k2)
      acd17(11)=dotproduct(ninjaA1,spvak2k7)
      acd17(12)=abb17(14)
      acd17(13)=abb17(19)
      acd17(14)=dotproduct(ninjaE3,spvak2k7)
      acd17(15)=dotproduct(ninjaE3,spvak1k7)
      acd17(16)=abb17(22)
      acd17(17)=abb17(23)
      acd17(18)=dotproduct(ninjaA1,spvak1k7)
      acd17(19)=dotproduct(k1,ninjaE3)
      acd17(20)=abb17(39)
      acd17(21)=dotproduct(k2,ninjaE3)
      acd17(22)=abb17(31)
      acd17(23)=dotproduct(k3,ninjaE3)
      acd17(24)=abb17(70)
      acd17(25)=abb17(17)
      acd17(26)=abb17(71)
      acd17(27)=abb17(51)
      acd17(28)=dotproduct(k4,ninjaE3)
      acd17(29)=dotproduct(l5,ninjaE3)
      acd17(30)=dotproduct(l6,ninjaE3)
      acd17(31)=dotproduct(k7,ninjaA0)
      acd17(32)=dotproduct(ninjaA0,ninjaE3)
      acd17(33)=abb17(36)
      acd17(34)=dotproduct(ninjaA0,spvak4k3)
      acd17(35)=dotproduct(ninjaA0,spval6k2)
      acd17(36)=dotproduct(ninjaA0,spval5k2)
      acd17(37)=abb17(37)
      acd17(38)=abb17(11)
      acd17(39)=abb17(38)
      acd17(40)=abb17(73)
      acd17(41)=abb17(48)
      acd17(42)=dotproduct(ninjaA0,spvak2k7)
      acd17(43)=dotproduct(ninjaA0,spvak1k7)
      acd17(44)=abb17(12)
      acd17(45)=abb17(34)
      acd17(46)=abb17(27)
      acd17(47)=abb17(20)
      acd17(48)=dotproduct(ninjaE3,spvak1k3)
      acd17(49)=abb17(13)
      acd17(50)=abb17(18)
      acd17(51)=acd17(4)*acd17(7)
      acd17(52)=acd17(12)*acd17(14)
      acd17(51)=acd17(51)+acd17(52)
      acd17(51)=acd17(51)*acd17(3)
      acd17(52)=acd17(6)*acd17(7)
      acd17(53)=acd17(13)*acd17(14)
      acd17(52)=acd17(52)+acd17(53)
      acd17(52)=acd17(52)*acd17(5)
      acd17(53)=acd17(5)*acd17(17)
      acd17(54)=acd17(3)*acd17(16)
      acd17(53)=acd17(53)+acd17(54)
      acd17(53)=acd17(15)*acd17(53)
      acd17(51)=acd17(53)+acd17(51)+acd17(52)
      acd17(52)=acd17(8)*acd17(51)
      acd17(53)=acd17(15)*acd17(2)
      acd17(54)=acd17(53)*acd17(16)
      acd17(55)=acd17(14)*acd17(2)
      acd17(56)=acd17(55)*acd17(12)
      acd17(57)=acd17(7)*acd17(2)
      acd17(58)=acd17(57)*acd17(4)
      acd17(54)=acd17(58)+acd17(54)+acd17(56)
      acd17(56)=acd17(9)*acd17(54)
      acd17(58)=acd17(53)*acd17(17)
      acd17(59)=acd17(55)*acd17(13)
      acd17(60)=acd17(57)*acd17(6)
      acd17(58)=acd17(60)+acd17(58)+acd17(59)
      acd17(59)=acd17(10)*acd17(58)
      acd17(60)=acd17(5)*acd17(2)
      acd17(61)=acd17(60)*acd17(6)
      acd17(62)=acd17(3)*acd17(2)
      acd17(63)=acd17(62)*acd17(4)
      acd17(61)=acd17(61)+acd17(63)
      acd17(63)=acd17(1)*acd17(61)
      acd17(64)=acd17(60)*acd17(13)
      acd17(65)=acd17(62)*acd17(12)
      acd17(64)=acd17(64)+acd17(65)
      acd17(65)=acd17(11)*acd17(64)
      acd17(66)=acd17(60)*acd17(17)
      acd17(67)=acd17(62)*acd17(16)
      acd17(66)=acd17(66)+acd17(67)
      acd17(67)=acd17(18)*acd17(66)
      acd17(52)=acd17(67)+acd17(65)+acd17(63)+acd17(59)+acd17(56)+acd17(52)
      acd17(56)=acd17(33)*acd17(7)
      acd17(59)=acd17(38)*acd17(14)
      acd17(63)=acd17(39)*acd17(2)
      acd17(65)=acd17(40)*acd17(3)
      acd17(67)=acd17(41)*acd17(5)
      acd17(56)=acd17(67)+acd17(65)+acd17(63)+acd17(59)+acd17(56)
      acd17(59)=2.0_ki*acd17(32)
      acd17(56)=acd17(59)*acd17(56)
      acd17(59)=-acd17(24)*acd17(7)
      acd17(63)=-acd17(25)*acd17(14)
      acd17(65)=acd17(26)*acd17(3)
      acd17(67)=acd17(27)*acd17(5)
      acd17(59)=acd17(67)+acd17(65)+acd17(63)+acd17(59)
      acd17(63)=acd17(28)+acd17(23)
      acd17(59)=acd17(63)*acd17(59)
      acd17(51)=acd17(34)*acd17(51)
      acd17(54)=acd17(35)*acd17(54)
      acd17(58)=acd17(36)*acd17(58)
      acd17(63)=acd17(49)*acd17(3)
      acd17(65)=acd17(50)*acd17(5)
      acd17(63)=acd17(65)+acd17(63)
      acd17(63)=acd17(48)*acd17(63)
      acd17(65)=acd17(30)+acd17(29)+acd17(19)
      acd17(65)=acd17(20)*acd17(65)
      acd17(67)=acd17(22)*acd17(21)
      acd17(65)=acd17(67)+acd17(65)
      acd17(65)=acd17(2)*acd17(65)
      acd17(61)=acd17(31)*acd17(61)
      acd17(64)=acd17(42)*acd17(64)
      acd17(66)=acd17(43)*acd17(66)
      acd17(57)=acd17(37)*acd17(57)
      acd17(55)=acd17(44)*acd17(55)
      acd17(62)=acd17(45)*acd17(62)
      acd17(60)=acd17(46)*acd17(60)
      acd17(53)=acd17(47)*acd17(53)
      acd17(51)=acd17(53)+acd17(60)+acd17(62)+acd17(55)+acd17(57)+acd17(66)+acd&
      &17(64)+acd17(61)+acd17(58)+acd17(51)+acd17(54)+acd17(56)+acd17(65)+acd17&
      &(63)+acd17(59)
      brack(ninjaidxt0x0mu0)=acd17(51)
      brack(ninjaidxt0x1mu0)=acd17(52)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d17h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd17h0
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
end module     p0_dbaru_epnebbbarg_d17h0l132
