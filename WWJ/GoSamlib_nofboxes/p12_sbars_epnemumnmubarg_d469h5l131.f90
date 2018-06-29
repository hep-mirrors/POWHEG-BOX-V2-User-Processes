module     p12_sbars_epnemumnmubarg_d469h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity5d469h5l131.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd469h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd469
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd469(1)=dotproduct(k2,ninjaE3)
      acd469(2)=abb469(19)
      acd469(3)=dotproduct(k5,ninjaE3)
      acd469(4)=abb469(26)
      acd469(5)=dotproduct(k6,ninjaE3)
      acd469(6)=abb469(20)
      acd469(7)=dotproduct(ninjaE3,spvak5k2)
      acd469(8)=abb469(9)
      acd469(9)=dotproduct(ninjaE3,spvak2k6)
      acd469(10)=abb469(10)
      acd469(11)=dotproduct(ninjaE3,spvak5k6)
      acd469(12)=abb469(13)
      acd469(13)=dotproduct(ninjaE3,spvak6k2)
      acd469(14)=abb469(15)
      acd469(15)=acd469(2)*acd469(1)
      acd469(16)=acd469(4)*acd469(3)
      acd469(17)=acd469(6)*acd469(5)
      acd469(18)=acd469(8)*acd469(7)
      acd469(19)=acd469(10)*acd469(9)
      acd469(20)=acd469(12)*acd469(11)
      acd469(21)=acd469(14)*acd469(13)
      acd469(15)=acd469(21)+acd469(20)+acd469(19)+acd469(18)+acd469(17)+acd469(&
      &15)+acd469(16)
      brack(ninjaidxt2mu0)=acd469(15)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d469h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd469h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p12_sbars_epnemumnmubarg_d469h5l131
