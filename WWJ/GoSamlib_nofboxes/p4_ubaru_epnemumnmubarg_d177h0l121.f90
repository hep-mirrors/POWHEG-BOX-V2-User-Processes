module     p4_ubaru_epnemumnmubarg_d177h0l121
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity0d177h0l121.f90
   ! generator: buildfortran_n3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0 = 0
   public :: numerator_tmu
contains
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d177h0_ninja_tmu")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd177h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki), dimension(0:3,0:*), intent(in) :: a
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      t1 = 0
      coeffs(0) = 0.0_ki
   end subroutine numerator_tmu
!---#] subroutine numerator_tmu:
end module     p4_ubaru_epnemumnmubarg_d177h0l121
