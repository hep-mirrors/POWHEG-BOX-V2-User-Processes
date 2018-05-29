module     p12_sbars_epnemumnmubarg_d205h0l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity0d205h0l131.f90
   ! generator: buildfortran_tn3.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd205h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(18) :: acd205
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd205(1)=dotproduct(k1,ninjaE3)
      acd205(2)=abb205(10)
      acd205(3)=dotproduct(k7,ninjaE3)
      acd205(4)=abb205(15)
      acd205(5)=dotproduct(ninjaE3,spvak1k2)
      acd205(6)=abb205(8)
      acd205(7)=dotproduct(ninjaE3,spvak7k1)
      acd205(8)=abb205(9)
      acd205(9)=dotproduct(ninjaE3,spvak1k7)
      acd205(10)=abb205(13)
      acd205(11)=dotproduct(ninjaE3,spvak7k2)
      acd205(12)=abb205(16)
      acd205(13)=acd205(2)*acd205(1)
      acd205(14)=acd205(4)*acd205(3)
      acd205(15)=acd205(6)*acd205(5)
      acd205(16)=acd205(8)*acd205(7)
      acd205(17)=acd205(10)*acd205(9)
      acd205(18)=acd205(12)*acd205(11)
      acd205(13)=acd205(18)+acd205(17)+acd205(16)+acd205(15)+acd205(13)+acd205(&
      &14)
      brack(ninjaidxt2mu0)=acd205(13)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d205h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd205h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p12_sbars_epnemumnmubarg_d205h0l131
