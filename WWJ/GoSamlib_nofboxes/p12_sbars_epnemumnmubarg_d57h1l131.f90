module     p12_sbars_epnemumnmubarg_d57h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity1d57h1l131.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd57h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(10) :: acd57
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd57(1)=dotproduct(k2,ninjaE3)
      acd57(2)=dotproduct(ninjaE3,spvak5k6)
      acd57(3)=abb57(12)
      acd57(4)=dotproduct(ninjaE3,spvak5k2)
      acd57(5)=abb57(9)
      acd57(6)=dotproduct(ninjaE3,spvak6k2)
      acd57(7)=abb57(17)
      acd57(8)=acd57(3)*acd57(1)
      acd57(9)=acd57(5)*acd57(4)
      acd57(10)=acd57(7)*acd57(6)
      acd57(8)=acd57(10)+acd57(8)+acd57(9)
      acd57(8)=acd57(2)*acd57(8)
      brack(ninjaidxt2mu0)=acd57(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd57h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(35) :: acd57
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd57(1)=dotproduct(k2,ninjaE3)
      acd57(2)=dotproduct(ninjaE4,spvak5k6)
      acd57(3)=abb57(12)
      acd57(4)=dotproduct(k2,ninjaE4)
      acd57(5)=dotproduct(ninjaE3,spvak5k6)
      acd57(6)=dotproduct(ninjaE3,spvak5k2)
      acd57(7)=abb57(9)
      acd57(8)=dotproduct(ninjaE4,spvak5k2)
      acd57(9)=dotproduct(ninjaE4,spvak6k2)
      acd57(10)=abb57(17)
      acd57(11)=dotproduct(ninjaE3,spvak6k2)
      acd57(12)=abb57(14)
      acd57(13)=dotproduct(k2,ninjaA)
      acd57(14)=dotproduct(ninjaA,spvak5k6)
      acd57(15)=dotproduct(k6,ninjaE3)
      acd57(16)=abb57(18)
      acd57(17)=dotproduct(ninjaA,ninjaE3)
      acd57(18)=dotproduct(ninjaA,spvak5k2)
      acd57(19)=dotproduct(ninjaA,spvak6k2)
      acd57(20)=abb57(21)
      acd57(21)=dotproduct(ninjaE3,spvak2k6)
      acd57(22)=abb57(10)
      acd57(23)=dotproduct(k6,ninjaA)
      acd57(24)=dotproduct(ninjaA,ninjaA)
      acd57(25)=dotproduct(ninjaA,spvak2k6)
      acd57(26)=acd57(1)*acd57(3)
      acd57(27)=acd57(6)*acd57(7)
      acd57(28)=acd57(11)*acd57(10)
      acd57(26)=acd57(28)+acd57(26)+acd57(27)
      acd57(27)=acd57(26)*acd57(2)
      acd57(28)=acd57(3)*acd57(5)
      acd57(29)=acd57(4)*acd57(28)
      acd57(30)=acd57(7)*acd57(5)
      acd57(31)=acd57(8)*acd57(30)
      acd57(32)=acd57(10)*acd57(5)
      acd57(33)=acd57(9)*acd57(32)
      acd57(29)=acd57(33)+acd57(31)+acd57(29)+acd57(12)+acd57(27)
      acd57(26)=acd57(14)*acd57(26)
      acd57(28)=acd57(13)*acd57(28)
      acd57(30)=acd57(18)*acd57(30)
      acd57(31)=acd57(19)*acd57(32)
      acd57(32)=acd57(20)*acd57(5)
      acd57(33)=acd57(15)*acd57(16)
      acd57(34)=acd57(17)*acd57(12)
      acd57(35)=acd57(21)*acd57(22)
      acd57(26)=acd57(35)+2.0_ki*acd57(34)+acd57(33)+acd57(32)+acd57(31)+acd57(&
      &30)+acd57(28)+acd57(26)
      acd57(28)=acd57(4)*acd57(3)
      acd57(30)=acd57(8)*acd57(7)
      acd57(31)=acd57(9)*acd57(10)
      acd57(28)=acd57(31)+acd57(30)+acd57(28)
      acd57(28)=acd57(28)*acd57(5)
      acd57(27)=acd57(28)+acd57(27)
      acd57(27)=ninjaP*acd57(27)
      acd57(28)=acd57(18)*acd57(7)
      acd57(30)=acd57(19)*acd57(10)
      acd57(31)=acd57(13)*acd57(3)
      acd57(28)=acd57(20)+acd57(30)+acd57(28)+acd57(31)
      acd57(28)=acd57(14)*acd57(28)
      acd57(30)=acd57(24)+ninjaP
      acd57(30)=acd57(12)*acd57(30)
      acd57(31)=acd57(23)*acd57(16)
      acd57(32)=acd57(25)*acd57(22)
      acd57(27)=acd57(32)+acd57(31)+acd57(28)+acd57(30)+acd57(27)
      brack(ninjaidxt1mu0)=acd57(26)
      brack(ninjaidxt0mu0)=acd57(27)
      brack(ninjaidxt0mu2)=acd57(29)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d57h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd57h1
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
end module     p12_sbars_epnemumnmubarg_d57h1l131
