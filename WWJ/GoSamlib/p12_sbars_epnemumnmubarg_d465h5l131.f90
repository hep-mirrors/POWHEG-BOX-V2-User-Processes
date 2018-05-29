module     p12_sbars_epnemumnmubarg_d465h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d465h5l131.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd465h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(35) :: acd465
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd465(1)=dotproduct(k1,ninjaE3)
      acd465(2)=abb465(13)
      acd465(3)=dotproduct(k2,ninjaE3)
      acd465(4)=abb465(21)
      acd465(5)=dotproduct(k3,ninjaE3)
      acd465(6)=abb465(16)
      acd465(7)=dotproduct(k4,ninjaE3)
      acd465(8)=abb465(25)
      acd465(9)=dotproduct(k5,ninjaE3)
      acd465(10)=dotproduct(k6,ninjaE3)
      acd465(11)=dotproduct(ninjaE3,spvak5k2)
      acd465(12)=abb465(8)
      acd465(13)=dotproduct(ninjaE3,spvak5k6)
      acd465(14)=abb465(9)
      acd465(15)=dotproduct(ninjaE3,spvak1k3)
      acd465(16)=abb465(10)
      acd465(17)=dotproduct(ninjaE3,spvak7k2)
      acd465(18)=abb465(11)
      acd465(19)=dotproduct(ninjaE3,spvak4k1)
      acd465(20)=abb465(12)
      acd465(21)=dotproduct(ninjaE3,spvak4k3)
      acd465(22)=abb465(14)
      acd465(23)=dotproduct(ninjaE3,spvak1k4)
      acd465(24)=abb465(15)
      acd465(25)=-acd465(10)-acd465(9)+acd465(3)
      acd465(25)=acd465(4)*acd465(25)
      acd465(26)=acd465(2)*acd465(1)
      acd465(27)=acd465(6)*acd465(5)
      acd465(28)=acd465(8)*acd465(7)
      acd465(29)=acd465(12)*acd465(11)
      acd465(30)=acd465(14)*acd465(13)
      acd465(31)=acd465(16)*acd465(15)
      acd465(32)=acd465(18)*acd465(17)
      acd465(33)=acd465(20)*acd465(19)
      acd465(34)=acd465(22)*acd465(21)
      acd465(35)=acd465(24)*acd465(23)
      acd465(25)=acd465(35)+acd465(34)+acd465(33)+acd465(32)+acd465(31)+acd465(&
      &30)+acd465(29)+acd465(28)+acd465(27)+acd465(26)+acd465(25)
      brack(ninjaidxt2mu0)=acd465(25)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d465h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd465h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p12_sbars_epnemumnmubarg_d465h5l131
