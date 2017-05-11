module pb_gg_hh_d10h0l121_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity0d10h0l121.f90
   ! generator: buildfortran_n3.py
   use pb_gg_hh_config_qp, only: ki
   use pb_gg_hh_util_qp, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0 = 0
   public :: numerator_tmu
contains
!---#[ subroutine brack_0:
   pure subroutine brack_0(ninjaA0, brack)
      use pb_gg_hh_model_qp
      use pb_gg_hh_kinematics_qp
      use pb_gg_hh_color_qp
      use pb_gg_hh_abbrevd10h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(3) :: acd10
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd10(1)=dotproduct(ninjaA0,ninjaA0)
      acd10(2)=abb10(10)
      acd10(3)=-acd10(2)*acd10(1)**2
      brack(ninjaidxt0)=acd10(3)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="pb_gg_hh_d10h0_ninja_tmu")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use pb_gg_hh_globalsl1_qp, only: epspow
      use pb_gg_hh_kinematics_qp
      use pb_gg_hh_abbrevd10h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki), dimension(0:3,0:*), intent(in) :: a
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      complex(ki), dimension(4) :: vecA0
      qshift = -k3
	     vecA0(1:4) = - a(0:3,0)
      t1 = 0
      call cond_t(epspow.eq.t1,brack_0,vecA0, coeffs)
   end subroutine numerator_tmu
!---#] subroutine numerator_tmu:
end module pb_gg_hh_d10h0l121_qp
