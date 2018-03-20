module     p0_gg_hhg_d51h3l121_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d51h3l121_qp.f90
   ! generator: buildfortran_n3.py
   use p0_gg_hhg_config, only: ki => ki_qp
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
      use p0_gg_hhg_abbrevd51h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(9) :: acd51
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd51(1)=dotproduct(ninjaA0,ninjaA0)
      acd51(2)=dotproduct(ninjaA0,spvak2k5)
      acd51(3)=abb51(33)
      acd51(4)=dotproduct(ninjaA0,spvak2k1)
      acd51(5)=abb51(47)
      acd51(6)=dotproduct(ninjaA0,spvak5k2)
      acd51(7)=abb51(35)
      acd51(8)=acd51(4)*acd51(5)
      acd51(9)=acd51(2)*acd51(3)
      acd51(8)=acd51(8)+acd51(9)
      acd51(8)=acd51(1)*acd51(8)
      acd51(9)=-acd51(2)*acd51(4)*acd51(6)*acd51(7)
      acd51(8)=acd51(9)+acd51(8)
      acd51(8)=acd51(1)*acd51(8)
      brack(ninjaidxt0)=acd51(8)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p0_gg_hhg_d51h3_qp_ninja_tmu")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd51h3_qp
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
end module     p0_gg_hhg_d51h3l121_qp
