module p0_gg_hhg_d53h3l121_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d53h3l121.f90
   ! generator: buildfortran_n3.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0 = 0
   public :: numerator_tmu
contains
!---#[ subroutine brack_0:
   pure subroutine brack_0(ninjaA0, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd53h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(9) :: acd53
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd53(1)=dotproduct(ninjaA0,ninjaA0)
      acd53(2)=dotproduct(ninjaA0,spvak2k5)
      acd53(3)=abb53(14)
      acd53(4)=dotproduct(ninjaA0,spvak2k1)
      acd53(5)=abb53(52)
      acd53(6)=dotproduct(ninjaA0,spvak5k2)
      acd53(7)=abb53(34)
      acd53(8)=acd53(4)*acd53(5)
      acd53(9)=acd53(2)*acd53(3)
      acd53(8)=acd53(8)+acd53(9)
      acd53(8)=acd53(1)*acd53(8)
      acd53(9)=acd53(2)*acd53(4)*acd53(6)*acd53(7)
      acd53(8)=acd53(9)+acd53(8)
      acd53(8)=acd53(1)*acd53(8)
      brack(ninjaidxt0)=acd53(8)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p0_gg_hhg_d53h3_ninja_tmu_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd53h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki), dimension(0:3,0:*), intent(in) :: a
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      complex(ki), dimension(4) :: vecA0
      qshift = k2
	     vecA0(1:4) = + a(0:3,0)
      t1 = 0
      call cond_t(epspow.eq.t1,brack_0,vecA0, coeffs)
   end subroutine numerator_tmu
!---#] subroutine numerator_tmu:
end module p0_gg_hhg_d53h3l121_qp
