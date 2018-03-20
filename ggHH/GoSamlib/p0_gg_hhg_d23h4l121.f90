module     p0_gg_hhg_d23h4l121
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d23h4l121.f90
   ! generator: buildfortran_n3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0 = 0
   public :: numerator_tmu
contains
!---#[ subroutine brack_0:
   pure subroutine brack_0(ninjaA0, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd23h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(9) :: acd23
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd23(1)=dotproduct(ninjaA0,ninjaA0)
      acd23(2)=abb23(42)
      acd23(3)=dotproduct(ninjaA0,spvak1k2)
      acd23(4)=dotproduct(ninjaA0,spvak2k5)
      acd23(5)=abb23(11)
      acd23(6)=dotproduct(ninjaA0,spvak5k2)
      acd23(7)=abb23(44)
      acd23(8)=-acd23(6)*acd23(7)
      acd23(9)=acd23(3)*acd23(5)
      acd23(8)=acd23(8)+acd23(9)
      acd23(8)=acd23(4)*acd23(8)
      acd23(9)=acd23(1)*acd23(2)
      acd23(8)=acd23(8)+acd23(9)
      acd23(8)=acd23(1)*acd23(8)
      brack(ninjaidxt0)=acd23(8)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p0_gg_hhg_d23h4_ninja_tmu")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd23h4
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
end module     p0_gg_hhg_d23h4l121
