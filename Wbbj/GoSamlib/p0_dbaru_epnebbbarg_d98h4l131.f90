module     p0_dbaru_epnebbbarg_d98h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d98h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd98h4
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
      use p0_dbaru_epnebbbarg_abbrevd98h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd98
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd98(1)=dotproduct(ninjaE3,spval5k2)
      acd98(2)=dotproduct(ninjaE3,spvak4k2)
      acd98(3)=abb98(12)
      acd98(4)=dotproduct(ninjaE3,spvak1k2)
      acd98(5)=abb98(13)
      acd98(6)=dotproduct(ninjaE3,spvak7k2)
      acd98(7)=abb98(10)
      acd98(8)=abb98(11)
      acd98(9)=dotproduct(ninjaA,spval5k2)
      acd98(10)=dotproduct(ninjaA,spvak4k2)
      acd98(11)=dotproduct(ninjaA,spvak7k2)
      acd98(12)=dotproduct(ninjaA,spvak1k2)
      acd98(13)=abb98(9)
      acd98(14)=abb98(14)
      acd98(15)=acd98(3)*acd98(2)
      acd98(16)=acd98(5)*acd98(4)
      acd98(15)=acd98(15)+acd98(16)
      acd98(16)=acd98(1)*acd98(15)
      acd98(17)=acd98(7)*acd98(2)
      acd98(18)=acd98(8)*acd98(4)
      acd98(17)=acd98(17)+acd98(18)
      acd98(18)=acd98(6)*acd98(17)
      acd98(16)=acd98(18)+acd98(16)
      acd98(15)=acd98(9)*acd98(15)
      acd98(18)=acd98(3)*acd98(1)
      acd98(19)=acd98(7)*acd98(6)
      acd98(18)=acd98(18)+acd98(19)
      acd98(18)=acd98(10)*acd98(18)
      acd98(17)=acd98(11)*acd98(17)
      acd98(19)=acd98(5)*acd98(1)
      acd98(20)=acd98(8)*acd98(6)
      acd98(19)=acd98(19)+acd98(20)
      acd98(19)=acd98(12)*acd98(19)
      acd98(20)=acd98(13)*acd98(1)
      acd98(21)=acd98(14)*acd98(6)
      acd98(15)=acd98(21)+acd98(20)+acd98(19)+acd98(17)+acd98(15)+acd98(18)
      brack(ninjaidxt1mu0)=acd98(16)
      brack(ninjaidxt0mu0)=acd98(15)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d98h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd98h4
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
end module     p0_dbaru_epnebbbarg_d98h4l131
