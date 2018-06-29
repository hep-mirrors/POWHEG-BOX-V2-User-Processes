module     p12_sbars_epnemumnmubarg_d517h7l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity7d517h7l131.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd517h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(7) :: acd517
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd517(1)=dotproduct(k2,ninjaE3)
      acd517(2)=dotproduct(ninjaE3,spvak7k2)
      acd517(3)=abb517(11)
      acd517(4)=dotproduct(ninjaE3,spvak2k7)
      acd517(5)=abb517(14)
      acd517(6)=acd517(3)*acd517(1)
      acd517(7)=acd517(5)*acd517(4)
      acd517(6)=acd517(6)+acd517(7)
      acd517(6)=acd517(2)*acd517(6)
      brack(ninjaidxt2mu0)=acd517(6)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd517h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd517
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd517(1)=dotproduct(k2,ninjaE3)
      acd517(2)=dotproduct(ninjaE4,spvak7k2)
      acd517(3)=abb517(11)
      acd517(4)=dotproduct(k2,ninjaE4)
      acd517(5)=dotproduct(ninjaE3,spvak7k2)
      acd517(6)=dotproduct(ninjaE4,spvak2k7)
      acd517(7)=abb517(14)
      acd517(8)=dotproduct(ninjaE3,spvak2k7)
      acd517(9)=abb517(10)
      acd517(10)=dotproduct(k2,ninjaA)
      acd517(11)=dotproduct(ninjaA,spvak7k2)
      acd517(12)=abb517(15)
      acd517(13)=dotproduct(k7,ninjaE3)
      acd517(14)=abb517(12)
      acd517(15)=dotproduct(ninjaA,ninjaE3)
      acd517(16)=dotproduct(ninjaA,spvak2k7)
      acd517(17)=abb517(9)
      acd517(18)=dotproduct(k7,ninjaA)
      acd517(19)=dotproduct(ninjaA,ninjaA)
      acd517(20)=abb517(8)
      acd517(21)=acd517(1)*acd517(3)
      acd517(22)=acd517(8)*acd517(7)
      acd517(21)=acd517(21)+acd517(22)
      acd517(22)=acd517(21)*acd517(2)
      acd517(23)=acd517(7)*acd517(5)
      acd517(24)=acd517(23)*acd517(6)
      acd517(25)=acd517(5)*acd517(3)
      acd517(26)=acd517(25)*acd517(4)
      acd517(22)=acd517(9)+acd517(22)+acd517(24)+acd517(26)
      acd517(21)=acd517(11)*acd517(21)
      acd517(24)=acd517(10)*acd517(25)
      acd517(25)=acd517(12)*acd517(1)
      acd517(23)=acd517(16)*acd517(23)
      acd517(26)=acd517(17)*acd517(5)
      acd517(27)=acd517(13)*acd517(14)
      acd517(28)=acd517(15)*acd517(9)
      acd517(21)=2.0_ki*acd517(28)+acd517(27)+acd517(26)+acd517(23)+acd517(25)+&
      &acd517(24)+acd517(21)
      acd517(23)=ninjaP*acd517(22)
      acd517(24)=acd517(10)*acd517(3)
      acd517(25)=acd517(16)*acd517(7)
      acd517(24)=acd517(17)+acd517(25)+acd517(24)
      acd517(24)=acd517(11)*acd517(24)
      acd517(25)=acd517(12)*acd517(10)
      acd517(26)=acd517(18)*acd517(14)
      acd517(27)=acd517(19)*acd517(9)
      acd517(23)=acd517(20)+acd517(27)+acd517(26)+acd517(25)+acd517(23)+acd517(&
      &24)
      brack(ninjaidxt1mu0)=acd517(21)
      brack(ninjaidxt0mu0)=acd517(23)
      brack(ninjaidxt0mu2)=acd517(22)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d517h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd517h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p12_sbars_epnemumnmubarg_d517h7l131
