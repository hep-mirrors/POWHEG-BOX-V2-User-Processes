module     p0_dbaru_epnebbbarg_d98h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d98h2l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd98h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd98
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd98h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(78) :: acd98
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd98(1)=dotproduct(k2,ninjaE3)
      acd98(2)=dotproduct(ninjaE3,spvak1l5)
      acd98(3)=abb98(23)
      acd98(4)=dotproduct(ninjaE3,spvak1k7)
      acd98(5)=abb98(21)
      acd98(6)=dotproduct(ninjaE3,spvak4k7)
      acd98(7)=abb98(27)
      acd98(8)=dotproduct(ninjaE3,spvak4l5)
      acd98(9)=abb98(35)
      acd98(10)=dotproduct(ninjaE3,spvak1k2)
      acd98(11)=dotproduct(ninjaE3,spval5l6)
      acd98(12)=abb98(16)
      acd98(13)=dotproduct(ninjaE3,spvak2k7)
      acd98(14)=abb98(20)
      acd98(15)=dotproduct(ninjaE3,spvak2l5)
      acd98(16)=abb98(22)
      acd98(17)=dotproduct(ninjaE3,spvak2l6)
      acd98(18)=abb98(28)
      acd98(19)=dotproduct(ninjaE3,spvak4k2)
      acd98(20)=abb98(30)
      acd98(21)=abb98(18)
      acd98(22)=abb98(37)
      acd98(23)=abb98(38)
      acd98(24)=dotproduct(k2,ninjaA)
      acd98(25)=dotproduct(ninjaA,spvak1l5)
      acd98(26)=dotproduct(ninjaA,spvak1k7)
      acd98(27)=dotproduct(ninjaA,spvak4k7)
      acd98(28)=dotproduct(ninjaA,spvak4l5)
      acd98(29)=abb98(13)
      acd98(30)=dotproduct(l5,ninjaE3)
      acd98(31)=abb98(32)
      acd98(32)=dotproduct(k7,ninjaE3)
      acd98(33)=abb98(54)
      acd98(34)=dotproduct(ninjaA,spvak1k2)
      acd98(35)=dotproduct(ninjaA,spvak4k2)
      acd98(36)=dotproduct(ninjaA,spval5l6)
      acd98(37)=dotproduct(ninjaA,spvak2k7)
      acd98(38)=dotproduct(ninjaA,spvak2l5)
      acd98(39)=dotproduct(ninjaA,spvak2l6)
      acd98(40)=abb98(11)
      acd98(41)=abb98(12)
      acd98(42)=dotproduct(ninjaE3,spval5k7)
      acd98(43)=abb98(14)
      acd98(44)=abb98(15)
      acd98(45)=abb98(36)
      acd98(46)=dotproduct(ninjaE3,spval5k2)
      acd98(47)=abb98(19)
      acd98(48)=abb98(24)
      acd98(49)=abb98(26)
      acd98(50)=abb98(25)
      acd98(51)=abb98(33)
      acd98(52)=dotproduct(ninjaE3,spvak7l5)
      acd98(53)=abb98(34)
      acd98(54)=dotproduct(ninjaE3,spvak7k2)
      acd98(55)=abb98(42)
      acd98(56)=acd98(3)*acd98(2)
      acd98(57)=acd98(5)*acd98(4)
      acd98(58)=acd98(7)*acd98(6)
      acd98(59)=acd98(9)*acd98(8)
      acd98(56)=acd98(56)+acd98(57)+acd98(58)+acd98(59)
      acd98(57)=acd98(1)*acd98(56)
      acd98(58)=acd98(12)*acd98(11)
      acd98(59)=acd98(14)*acd98(13)
      acd98(60)=acd98(16)*acd98(15)
      acd98(61)=acd98(18)*acd98(17)
      acd98(58)=acd98(58)+acd98(59)+acd98(60)+acd98(61)
      acd98(59)=acd98(10)*acd98(58)
      acd98(60)=acd98(20)*acd98(11)
      acd98(61)=acd98(21)*acd98(13)
      acd98(62)=acd98(22)*acd98(15)
      acd98(63)=acd98(23)*acd98(17)
      acd98(60)=acd98(60)+acd98(61)+acd98(62)+acd98(63)
      acd98(61)=acd98(19)*acd98(60)
      acd98(57)=acd98(61)+acd98(59)+acd98(57)
      acd98(59)=acd98(25)*acd98(3)
      acd98(61)=acd98(26)*acd98(5)
      acd98(62)=acd98(27)*acd98(7)
      acd98(63)=acd98(28)*acd98(9)
      acd98(59)=acd98(29)+acd98(63)+acd98(62)+acd98(61)+acd98(59)
      acd98(59)=acd98(1)*acd98(59)
      acd98(56)=acd98(24)*acd98(56)
      acd98(58)=acd98(34)*acd98(58)
      acd98(60)=acd98(35)*acd98(60)
      acd98(61)=acd98(12)*acd98(10)
      acd98(62)=acd98(20)*acd98(19)
      acd98(61)=acd98(61)+acd98(62)
      acd98(61)=acd98(36)*acd98(61)
      acd98(62)=acd98(14)*acd98(10)
      acd98(63)=acd98(21)*acd98(19)
      acd98(62)=acd98(62)+acd98(63)
      acd98(62)=acd98(37)*acd98(62)
      acd98(63)=acd98(16)*acd98(10)
      acd98(64)=acd98(22)*acd98(19)
      acd98(63)=acd98(63)+acd98(64)
      acd98(63)=acd98(38)*acd98(63)
      acd98(64)=acd98(18)*acd98(10)
      acd98(65)=acd98(23)*acd98(19)
      acd98(64)=acd98(64)+acd98(65)
      acd98(64)=acd98(39)*acd98(64)
      acd98(65)=acd98(31)*acd98(30)
      acd98(66)=acd98(33)*acd98(32)
      acd98(67)=acd98(40)*acd98(10)
      acd98(68)=acd98(41)*acd98(19)
      acd98(69)=acd98(43)*acd98(42)
      acd98(70)=acd98(44)*acd98(2)
      acd98(71)=acd98(45)*acd98(13)
      acd98(72)=acd98(47)*acd98(46)
      acd98(73)=acd98(48)*acd98(4)
      acd98(74)=acd98(49)*acd98(15)
      acd98(75)=acd98(50)*acd98(6)
      acd98(76)=acd98(51)*acd98(8)
      acd98(77)=acd98(53)*acd98(52)
      acd98(78)=acd98(55)*acd98(54)
      acd98(56)=acd98(78)+acd98(77)+acd98(76)+acd98(75)+acd98(74)+acd98(73)+acd&
      &98(72)+acd98(71)+acd98(70)+acd98(69)+acd98(68)+acd98(67)+acd98(66)+acd98&
      &(65)+acd98(64)+acd98(63)+acd98(62)+acd98(61)+acd98(60)+acd98(58)+acd98(5&
      &6)+acd98(59)
      brack(ninjaidxt1mu0)=acd98(57)
      brack(ninjaidxt0mu0)=acd98(56)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d98h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd98h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d98h2l131
