module     p12_sbars_epnemumnmubarg_d1h5l121
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d1h5l121.f90
   ! generator: buildfortran_n3.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0 = 0
   public :: numerator_tmu
contains
!---#[ subroutine brack_0:
   pure subroutine brack_0(ninjaA0, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd1h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(14) :: acd1
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd1(1)=dotproduct(ninjaA0,ninjaA0)
      acd1(2)=abb1(12)
      acd1(3)=dotproduct(ninjaA0,spvak1k2)
      acd1(4)=dotproduct(ninjaA0,spvak5k6)
      acd1(5)=abb1(33)
      acd1(6)=dotproduct(ninjaA0,spvak7k2)
      acd1(7)=abb1(17)
      acd1(8)=dotproduct(ninjaA0,spvak4k3)
      acd1(9)=abb1(42)
      acd1(10)=abb1(8)
      acd1(11)=acd1(4)*acd1(5)
      acd1(12)=acd1(6)*acd1(7)
      acd1(11)=acd1(11)+acd1(12)
      acd1(11)=acd1(3)*acd1(11)
      acd1(12)=acd1(6)*acd1(8)
      acd1(13)=acd1(9)*acd1(12)
      acd1(14)=acd1(1)*acd1(2)
      acd1(11)=acd1(14)+acd1(13)+acd1(11)
      acd1(11)=acd1(1)*acd1(11)
      acd1(12)=acd1(3)*acd1(4)*acd1(10)*acd1(12)
      acd1(11)=acd1(12)+acd1(11)
      brack(ninjaidxt0)=acd1(11)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d1h5_ninja_tmu")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd1h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki), dimension(0:3,0:*), intent(in) :: a
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      complex(ki), dimension(4) :: vecA0
      qshift = k3+k7+k6+k5+k4
	     vecA0(1:4) = + a(0:3,0)
      t1 = 0
      call cond_t(epspow.eq.t1,brack_0,vecA0, coeffs)
   end subroutine numerator_tmu
!---#] subroutine numerator_tmu:
end module     p12_sbars_epnemumnmubarg_d1h5l121
