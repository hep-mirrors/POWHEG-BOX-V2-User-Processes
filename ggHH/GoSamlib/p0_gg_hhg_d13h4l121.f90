module     p0_gg_hhg_d13h4l121
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d13h4l121.f90
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
      use p0_gg_hhg_abbrevd13h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(10) :: acd13
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd13(1)=dotproduct(k2,ninjaA0)
      acd13(2)=dotproduct(ninjaA0,ninjaA0)
      acd13(3)=dotproduct(ninjaA0,spvak5k2)
      acd13(4)=abb13(40)
      acd13(5)=dotproduct(ninjaA0,spvak1k2)
      acd13(6)=abb13(13)
      acd13(7)=dotproduct(ninjaA0,spvak5k1)
      acd13(8)=abb13(51)
      acd13(9)=acd13(6)*acd13(3)
      acd13(10)=-acd13(8)*acd13(7)
      acd13(9)=acd13(10)+acd13(9)
      acd13(9)=acd13(9)*acd13(5)
      acd13(10)=acd13(4)*acd13(1)*acd13(3)
      acd13(9)=acd13(10)+acd13(9)
      acd13(9)=acd13(2)*acd13(9)
      brack(ninjaidxt0)=acd13(9)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="p0_gg_hhg_d13h4_ninja_tmu")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd13h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki), dimension(0:3,0:*), intent(in) :: a
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      complex(ki), dimension(4) :: vecA0
      qshift = k3+k5
	     vecA0(1:4) = + a(0:3,0)
      t1 = 0
      call cond_t(epspow.eq.t1,brack_0,vecA0, coeffs)
   end subroutine numerator_tmu
!---#] subroutine numerator_tmu:
end module     p0_gg_hhg_d13h4l121
