module     p12_sbars_epnemumnmubarg_d281h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity1d281h1l131.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd281h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(13) :: acd281
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd281(1)=dotproduct(k7,ninjaE3)
      acd281(2)=dotproduct(ninjaE3,spvak5k6)
      acd281(3)=abb281(15)
      acd281(4)=dotproduct(ninjaE3,spvak1k7)
      acd281(5)=abb281(8)
      acd281(6)=dotproduct(ninjaE3,spvak2k7)
      acd281(7)=abb281(10)
      acd281(8)=dotproduct(ninjaE3,spvak4k7)
      acd281(9)=abb281(16)
      acd281(10)=acd281(3)*acd281(1)
      acd281(11)=acd281(5)*acd281(4)
      acd281(12)=acd281(7)*acd281(6)
      acd281(13)=acd281(9)*acd281(8)
      acd281(10)=acd281(13)+acd281(12)+acd281(10)+acd281(11)
      acd281(10)=acd281(2)*acd281(10)
      brack(ninjaidxt2mu0)=acd281(10)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd281h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(35) :: acd281
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd281(1)=dotproduct(k7,ninjaE3)
      acd281(2)=dotproduct(ninjaE4,spvak5k6)
      acd281(3)=abb281(15)
      acd281(4)=dotproduct(k7,ninjaE4)
      acd281(5)=dotproduct(ninjaE3,spvak5k6)
      acd281(6)=dotproduct(ninjaE3,spvak1k7)
      acd281(7)=abb281(8)
      acd281(8)=dotproduct(ninjaE4,spvak1k7)
      acd281(9)=dotproduct(ninjaE4,spvak2k7)
      acd281(10)=abb281(10)
      acd281(11)=dotproduct(ninjaE4,spvak4k7)
      acd281(12)=abb281(16)
      acd281(13)=dotproduct(ninjaE3,spvak2k7)
      acd281(14)=dotproduct(ninjaE3,spvak4k7)
      acd281(15)=abb281(13)
      acd281(16)=dotproduct(k7,ninjaA)
      acd281(17)=dotproduct(ninjaA,spvak5k6)
      acd281(18)=dotproduct(ninjaA,ninjaE3)
      acd281(19)=dotproduct(ninjaA,spvak1k7)
      acd281(20)=dotproduct(ninjaA,spvak2k7)
      acd281(21)=dotproduct(ninjaA,spvak4k7)
      acd281(22)=dotproduct(ninjaE3,spvak1k6)
      acd281(23)=abb281(9)
      acd281(24)=dotproduct(ninjaE3,spvak4k6)
      acd281(25)=abb281(11)
      acd281(26)=dotproduct(ninjaA,ninjaA)
      acd281(27)=dotproduct(ninjaA,spvak1k6)
      acd281(28)=dotproduct(ninjaA,spvak4k6)
      acd281(29)=acd281(12)*acd281(11)
      acd281(30)=acd281(10)*acd281(9)
      acd281(31)=acd281(7)*acd281(8)
      acd281(32)=acd281(3)*acd281(4)
      acd281(29)=acd281(29)+acd281(30)+acd281(31)+acd281(32)
      acd281(29)=acd281(29)*acd281(5)
      acd281(30)=acd281(12)*acd281(14)
      acd281(31)=acd281(10)*acd281(13)
      acd281(32)=acd281(7)*acd281(6)
      acd281(33)=acd281(3)*acd281(1)
      acd281(30)=acd281(30)+acd281(31)+acd281(32)+acd281(33)
      acd281(31)=acd281(30)*acd281(2)
      acd281(29)=acd281(29)+acd281(31)+acd281(15)
      acd281(30)=acd281(17)*acd281(30)
      acd281(31)=acd281(12)*acd281(21)
      acd281(32)=acd281(10)*acd281(20)
      acd281(33)=acd281(7)*acd281(19)
      acd281(34)=acd281(3)*acd281(16)
      acd281(31)=acd281(34)+acd281(31)+acd281(32)+acd281(33)
      acd281(32)=acd281(5)*acd281(31)
      acd281(33)=acd281(25)*acd281(24)
      acd281(34)=acd281(23)*acd281(22)
      acd281(35)=acd281(15)*acd281(18)
      acd281(30)=acd281(32)+acd281(30)+2.0_ki*acd281(35)+acd281(33)+acd281(34)
      acd281(32)=ninjaP*acd281(29)
      acd281(31)=acd281(17)*acd281(31)
      acd281(33)=acd281(25)*acd281(28)
      acd281(34)=acd281(23)*acd281(27)
      acd281(35)=acd281(15)*acd281(26)
      acd281(31)=acd281(31)+acd281(35)+acd281(33)+acd281(34)+acd281(32)
      brack(ninjaidxt1mu0)=acd281(30)
      brack(ninjaidxt0mu0)=acd281(31)
      brack(ninjaidxt0mu2)=acd281(29)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d281h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd281h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p12_sbars_epnemumnmubarg_d281h1l131
