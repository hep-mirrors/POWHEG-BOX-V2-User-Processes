module     p0_dbaru_epnebbbarg_d62h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d62h3l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd62h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd62
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd62(1)=dotproduct(k2,ninjaE3)
      acd62(2)=abb62(57)
      acd62(3)=dotproduct(k3,ninjaE3)
      acd62(4)=abb62(127)
      acd62(5)=dotproduct(k4,ninjaE3)
      acd62(6)=abb62(124)
      acd62(7)=dotproduct(ninjaE3,spvak4k2)
      acd62(8)=abb62(15)
      acd62(9)=dotproduct(ninjaE3,spvak4k3)
      acd62(10)=abb62(16)
      acd62(11)=dotproduct(ninjaE3,spvak3k2)
      acd62(12)=abb62(17)
      acd62(13)=dotproduct(ninjaE3,spvak2k3)
      acd62(14)=abb62(18)
      acd62(15)=acd62(2)*acd62(1)
      acd62(16)=acd62(4)*acd62(3)
      acd62(17)=acd62(6)*acd62(5)
      acd62(18)=acd62(8)*acd62(7)
      acd62(19)=acd62(10)*acd62(9)
      acd62(20)=acd62(12)*acd62(11)
      acd62(21)=acd62(14)*acd62(13)
      acd62(15)=acd62(21)+acd62(20)+acd62(19)+acd62(18)+acd62(17)+acd62(15)+acd&
      &62(16)
      brack(ninjaidxt2mu0)=acd62(15)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d62h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd62h3
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
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d62h3l131
