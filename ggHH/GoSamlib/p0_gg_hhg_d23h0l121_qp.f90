module     p0_gg_hhg_d23h0l121_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d23h0l121_qp.f90
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
      use p0_gg_hhg_abbrevd23h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(14) :: acd23
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd23(1)=dotproduct(k5,ninjaA0)
      acd23(2)=dotproduct(ninjaA0,ninjaA0)
      acd23(3)=dotproduct(ninjaA0,spvak2k5)
      acd23(4)=abb23(31)
      acd23(5)=abb23(18)
      acd23(6)=abb23(13)
      acd23(7)=dotproduct(ninjaA0,spvak1k2)
      acd23(8)=abb23(41)
      acd23(9)=dotproduct(ninjaA0,spvak1k5)
      acd23(10)=dotproduct(ninjaA0,spvak2k1)
      acd23(11)=abb23(38)
      acd23(12)=acd23(7)*acd23(8)
      acd23(13)=acd23(1)*acd23(4)
      acd23(14)=acd23(3)*acd23(6)
      acd23(12)=acd23(14)+acd23(12)+acd23(13)
      acd23(12)=acd23(3)*acd23(12)
      acd23(13)=acd23(9)*acd23(10)*acd23(11)
      acd23(14)=acd23(2)*acd23(5)
      acd23(12)=acd23(14)+acd23(13)+acd23(12)
      acd23(12)=acd23(2)*acd23(12)
      brack(ninjaidxt0)=acd23(12)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p0_gg_hhg_d23h0_qp_ninja_tmu")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd23h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki), dimension(0:3,0:*), intent(in) :: a
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: vecA0
	     vecA0(1:4) = - a(0:3,0)
      t1 = 0
      call cond_t(epspow.eq.t1,brack_0,vecA0, coeffs)
   end subroutine numerator_tmu
!---#] subroutine numerator_tmu:
end module     p0_gg_hhg_d23h0l121_qp
