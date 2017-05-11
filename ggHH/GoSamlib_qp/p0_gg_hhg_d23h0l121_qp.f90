module p0_gg_hhg_d23h0l121_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d23h0l121.f90
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
      use p0_gg_hhg_abbrevd23h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(12) :: acd23
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd23(1)=dotproduct(k1,ninjaA0)
      acd23(2)=dotproduct(ninjaA0,ninjaA0)
      acd23(3)=dotproduct(ninjaA0,spvak2k5)
      acd23(4)=abb23(53)
      acd23(5)=dotproduct(k5,ninjaA0)
      acd23(6)=abb23(48)
      acd23(7)=abb23(57)
      acd23(8)=dotproduct(ninjaA0,spvak1k2)
      acd23(9)=abb23(56)
      acd23(10)=acd23(8)*acd23(9)
      acd23(11)=-acd23(5)-acd23(1)
      acd23(11)=acd23(4)*acd23(11)
      acd23(12)=acd23(3)*acd23(7)
      acd23(10)=acd23(12)+acd23(10)+acd23(11)
      acd23(10)=acd23(3)*acd23(10)
      acd23(11)=-acd23(2)*acd23(6)
      acd23(10)=acd23(10)+acd23(11)
      acd23(10)=acd23(2)*acd23(10)
      brack(ninjaidxt0)=acd23(10)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p0_gg_hhg_d23h0_ninja_tmu_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
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
end module p0_gg_hhg_d23h0l121_qp
