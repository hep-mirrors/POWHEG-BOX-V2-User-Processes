module     p12_sbars_epnemumnmubarg_d177h3l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity3d177h3l131.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd177h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd177
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd177h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(18) :: acd177
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd177(1)=abb177(12)
      acd177(2)=dotproduct(k1,ninjaE3)
      acd177(3)=dotproduct(k2,ninjaE3)
      acd177(4)=dotproduct(ninjaA,ninjaE3)
      acd177(5)=dotproduct(ninjaE3,spvak1k7)
      acd177(6)=abb177(8)
      acd177(7)=dotproduct(ninjaE3,spvak2k7)
      acd177(8)=abb177(9)
      acd177(9)=dotproduct(k1,ninjaA)
      acd177(10)=dotproduct(k2,ninjaA)
      acd177(11)=dotproduct(ninjaA,ninjaA)
      acd177(12)=dotproduct(ninjaA,spvak1k7)
      acd177(13)=dotproduct(ninjaA,spvak2k7)
      acd177(14)=abb177(10)
      acd177(15)=2.0_ki*acd177(4)+acd177(2)-acd177(3)
      acd177(15)=acd177(1)*acd177(15)
      acd177(16)=acd177(5)*acd177(6)
      acd177(17)=acd177(7)*acd177(8)
      acd177(15)=acd177(17)+acd177(16)+acd177(15)
      acd177(16)=ninjaP+acd177(11)+acd177(9)-acd177(10)
      acd177(16)=acd177(1)*acd177(16)
      acd177(17)=acd177(12)*acd177(6)
      acd177(18)=acd177(13)*acd177(8)
      acd177(16)=acd177(14)+acd177(18)+acd177(17)+acd177(16)
      brack(ninjaidxt1mu0)=acd177(15)
      brack(ninjaidxt0mu0)=acd177(16)
      brack(ninjaidxt0mu2)=acd177(1)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d177h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd177h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p12_sbars_epnemumnmubarg_d177h3l131
