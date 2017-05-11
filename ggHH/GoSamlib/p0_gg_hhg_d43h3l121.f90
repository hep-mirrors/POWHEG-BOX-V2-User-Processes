module     p0_gg_hhg_d43h3l121
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d43h3l121.f90
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
      use p0_gg_hhg_abbrevd43h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(7) :: acd43
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd43(1)=dotproduct(ninjaA0,ninjaA0)
      acd43(2)=dotproduct(ninjaA0,spvak2k1)
      acd43(3)=abb43(16)
      acd43(4)=dotproduct(ninjaA0,spvak2k5)
      acd43(5)=abb43(120)
      acd43(6)=acd43(3)*acd43(2)
      acd43(7)=acd43(5)*acd43(4)
      acd43(6)=acd43(6)+acd43(7)
      acd43(6)=acd43(6)*acd43(1)**2
      brack(ninjaidxt0)=acd43(6)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p0_gg_hhg_d43h3_ninja_tmu")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd43h3
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
end module     p0_gg_hhg_d43h3l121
