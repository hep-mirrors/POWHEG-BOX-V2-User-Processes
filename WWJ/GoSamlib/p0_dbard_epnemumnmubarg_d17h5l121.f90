module     p0_dbard_epnemumnmubarg_d17h5l121
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity5d17h5l121.f90
   ! generator: buildfortran_n3.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0 = 0
   public :: numerator_tmu
contains
!---#[ subroutine brack_0:
   pure subroutine brack_0(ninjaA0, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd17h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(14) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd17(1)=dotproduct(ninjaA0,ninjaA0)
      acd17(2)=abb17(12)
      acd17(3)=dotproduct(ninjaA0,spvak1k2)
      acd17(4)=dotproduct(ninjaA0,spvak4k3)
      acd17(5)=abb17(33)
      acd17(6)=dotproduct(ninjaA0,spvak7k2)
      acd17(7)=abb17(17)
      acd17(8)=dotproduct(ninjaA0,spvak5k6)
      acd17(9)=abb17(67)
      acd17(10)=abb17(8)
      acd17(11)=acd17(4)*acd17(5)
      acd17(12)=acd17(6)*acd17(7)
      acd17(11)=acd17(11)+acd17(12)
      acd17(11)=acd17(3)*acd17(11)
      acd17(12)=acd17(6)*acd17(8)
      acd17(13)=acd17(9)*acd17(12)
      acd17(14)=acd17(1)*acd17(2)
      acd17(11)=acd17(14)+acd17(13)+acd17(11)
      acd17(11)=acd17(1)*acd17(11)
      acd17(12)=acd17(3)*acd17(4)*acd17(10)*acd17(12)
      acd17(11)=acd17(12)+acd17(11)
      brack(ninjaidxt0)=acd17(11)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d17h5_ninja_tmu")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd17h5
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
end module     p0_dbard_epnemumnmubarg_d17h5l121
