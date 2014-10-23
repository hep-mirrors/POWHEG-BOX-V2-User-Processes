module     p0_dbaru_epnebbbarg_d121h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d121h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd121h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd121
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd121h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(13) :: acd121
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd121(1)=dotproduct(ninjaE3,spval5k2)
      acd121(2)=dotproduct(ninjaE3,spval6k2)
      acd121(3)=abb121(8)
      acd121(4)=dotproduct(ninjaE3,spvak7k2)
      acd121(5)=abb121(11)
      acd121(6)=dotproduct(ninjaA,spval5k2)
      acd121(7)=dotproduct(ninjaA,spval6k2)
      acd121(8)=dotproduct(ninjaA,spvak7k2)
      acd121(9)=abb121(9)
      acd121(10)=acd121(2)*acd121(3)
      acd121(11)=acd121(4)*acd121(5)
      acd121(10)=acd121(10)+acd121(11)
      acd121(11)=acd121(1)*acd121(10)
      acd121(12)=acd121(7)*acd121(3)
      acd121(13)=acd121(8)*acd121(5)
      acd121(12)=acd121(9)+acd121(13)+acd121(12)
      acd121(12)=acd121(1)*acd121(12)
      acd121(10)=acd121(6)*acd121(10)
      acd121(10)=acd121(10)+acd121(12)
      brack(ninjaidxt1mu0)=acd121(11)
      brack(ninjaidxt0mu0)=acd121(10)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d121h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd121h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d121h4l131
