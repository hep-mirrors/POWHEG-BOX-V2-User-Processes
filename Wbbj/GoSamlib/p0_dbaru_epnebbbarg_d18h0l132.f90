module     p0_dbaru_epnebbbarg_d18h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d18h0l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd18h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd18
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd18(1)=dotproduct(k2,ninjaE3)
      acd18(2)=dotproduct(ninjaE3,spval5k2)
      acd18(3)=abb18(13)
      acd18(4)=dotproduct(ninjaE3,spval6k2)
      acd18(5)=abb18(20)
      acd18(6)=abb18(14)
      acd18(7)=abb18(17)
      acd18(8)=abb18(38)
      acd18(9)=acd18(1)*acd18(3)
      acd18(10)=acd18(4)*acd18(7)
      acd18(11)=acd18(2)*acd18(6)
      acd18(9)=acd18(11)+acd18(9)+acd18(10)
      acd18(9)=acd18(2)*acd18(9)
      acd18(10)=acd18(1)*acd18(5)
      acd18(11)=acd18(4)*acd18(8)
      acd18(10)=acd18(10)+acd18(11)
      acd18(10)=acd18(4)*acd18(10)
      acd18(9)=acd18(10)+acd18(9)
      brack(ninjaidxt1x0mu0)=acd18(9)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd18h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd18
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd18(1)=dotproduct(k2,ninjaA1)
      acd18(2)=dotproduct(ninjaE3,spval5k2)
      acd18(3)=abb18(13)
      acd18(4)=dotproduct(ninjaE3,spval6k2)
      acd18(5)=abb18(20)
      acd18(6)=dotproduct(k2,ninjaE3)
      acd18(7)=dotproduct(ninjaA1,spval5k2)
      acd18(8)=dotproduct(ninjaA1,spval6k2)
      acd18(9)=abb18(14)
      acd18(10)=abb18(17)
      acd18(11)=abb18(38)
      acd18(12)=dotproduct(k2,ninjaA0)
      acd18(13)=dotproduct(ninjaA0,spval5k2)
      acd18(14)=dotproduct(ninjaA0,spval6k2)
      acd18(15)=abb18(16)
      acd18(16)=abb18(36)
      acd18(17)=acd18(6)*acd18(3)
      acd18(18)=acd18(10)*acd18(4)
      acd18(19)=acd18(9)*acd18(2)
      acd18(17)=2.0_ki*acd18(19)+acd18(17)+acd18(18)
      acd18(18)=acd18(7)*acd18(17)
      acd18(19)=acd18(6)*acd18(5)
      acd18(20)=acd18(10)*acd18(2)
      acd18(21)=acd18(11)*acd18(4)
      acd18(19)=2.0_ki*acd18(21)+acd18(19)+acd18(20)
      acd18(20)=acd18(8)*acd18(19)
      acd18(21)=acd18(3)*acd18(2)
      acd18(22)=acd18(5)*acd18(4)
      acd18(21)=acd18(21)+acd18(22)
      acd18(22)=acd18(1)*acd18(21)
      acd18(18)=acd18(22)+acd18(20)+acd18(18)
      acd18(17)=acd18(13)*acd18(17)
      acd18(19)=acd18(14)*acd18(19)
      acd18(20)=acd18(12)*acd18(21)
      acd18(21)=acd18(15)*acd18(2)
      acd18(22)=acd18(16)*acd18(4)
      acd18(17)=acd18(22)+acd18(21)+acd18(20)+acd18(19)+acd18(17)
      brack(ninjaidxt0x0mu0)=acd18(17)
      brack(ninjaidxt0x1mu0)=acd18(18)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d18h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd18h0
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
end module     p0_dbaru_epnebbbarg_d18h0l132