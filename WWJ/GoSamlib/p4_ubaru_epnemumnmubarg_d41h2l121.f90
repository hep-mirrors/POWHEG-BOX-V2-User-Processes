module     p4_ubaru_epnemumnmubarg_d41h2l121
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity2d41h2l121.f90
   ! generator: buildfortran_n3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0 = 0
   public :: numerator_tmu
contains
!---#[ subroutine brack_0:
   pure subroutine brack_0(ninjaA0, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd41h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(16) :: acd41
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd41(1)=dotproduct(ninjaA0,ninjaA0)
      acd41(2)=abb41(13)
      acd41(3)=dotproduct(ninjaA0,spvak2k1)
      acd41(4)=dotproduct(ninjaA0,spvak5k6)
      acd41(5)=abb41(51)
      acd41(6)=dotproduct(ninjaA0,spvak4k3)
      acd41(7)=abb41(94)
      acd41(8)=dotproduct(ninjaA0,spvak2k7)
      acd41(9)=abb41(91)
      acd41(10)=abb41(75)
      acd41(11)=abb41(59)
      acd41(12)=acd41(6)*acd41(7)
      acd41(13)=acd41(4)*acd41(5)
      acd41(12)=acd41(12)+acd41(13)
      acd41(12)=acd41(3)*acd41(12)
      acd41(13)=acd41(10)*acd41(6)*acd41(8)
      acd41(14)=acd41(4)*acd41(8)
      acd41(15)=acd41(9)*acd41(14)
      acd41(16)=acd41(1)*acd41(2)
      acd41(12)=acd41(16)+acd41(12)+acd41(13)+acd41(15)
      acd41(12)=acd41(1)*acd41(12)
      acd41(13)=acd41(3)*acd41(6)*acd41(11)*acd41(14)
      acd41(12)=acd41(13)+acd41(12)
      brack(ninjaidxt0)=acd41(12)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d41h2_ninja_tmu")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd41h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki), dimension(0:3,0:*), intent(in) :: a
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      complex(ki), dimension(4) :: vecA0
      qshift = -k3-k4
	     vecA0(1:4) = - a(0:3,0)
      t1 = 0
      call cond_t(epspow.eq.t1,brack_0,vecA0, coeffs)
   end subroutine numerator_tmu
!---#] subroutine numerator_tmu:
end module     p4_ubaru_epnemumnmubarg_d41h2l121
