module     pb_gg_hh_d8h3l121
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity3d8h3l121.f90
   ! generator: buildfortran_n3.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0 = 0
   public :: numerator_tmu
contains
!---#[ subroutine brack_0:
   pure subroutine brack_0(ninjaA0, brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd8h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0
      complex(ki), dimension(7) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd8(1)=dotproduct(ninjaA0,ninjaA0)
      acd8(2)=abb8(27)
      acd8(3)=dotproduct(ninjaA0,spvak1k2)
      acd8(4)=dotproduct(ninjaA0,spvak2k1)
      acd8(5)=abb8(5)
      acd8(6)=acd8(3)*acd8(4)*acd8(5)
      acd8(7)=acd8(1)*acd8(2)
      acd8(6)=acd8(6)+acd8(7)
      acd8(6)=acd8(1)*acd8(6)
      brack(ninjaidxt0)=acd8(6)
   end subroutine brack_0
!---#] subroutine brack_0:
!---#[ subroutine numerator_tmu:
   subroutine numerator_tmu(ncut, a, coeffs) &
   & bind(c, name="pb_gg_hh_d8h3_ninja_tmu")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd8h3
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
end module     pb_gg_hh_d8h3l121
