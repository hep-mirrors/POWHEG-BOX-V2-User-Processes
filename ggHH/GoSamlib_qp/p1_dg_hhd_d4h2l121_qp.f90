module p1_dg_hhd_d4h2l121_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p1_dg_hhd/helicity2d4h2l121.f90
   ! generator: buildfortran_n3.py
   use p1_dg_hhd_config_qp, only: ki
   use p1_dg_hhd_util_qp, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0 = 0
   public :: numerator_tmu
contains
!---#[ subroutine brack_0:
   pure subroutine brack_0(ninjaA0, brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd4h2_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(3) :: acd4
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd4(1)=dotproduct(ninjaA0,ninjaA0)
      acd4(2)=abb4(11)
      acd4(3)=-acd4(2)*acd4(1)**2
      brack(ninjaidxt0)=acd4(3)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p1_dg_hhd_d4h2_ninja_tmu_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd4h2_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki), dimension(0:3,0:*), intent(in) :: a
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: vecA0
	     vecA0(1:4) = + a(0:3,0)
      t1 = 0
      call cond_t(epspow.eq.t1,brack_0,vecA0, coeffs)
   end subroutine numerator_tmu
!---#] subroutine numerator_tmu:
end module p1_dg_hhd_d4h2l121_qp
