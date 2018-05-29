module     p4_ubaru_epnemumnmubarg_d285h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity1d285h1l131.f90
   ! generator: buildfortran_tn3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd285h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(13) :: acd285
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd285(1)=dotproduct(k7,ninjaE3)
      acd285(2)=dotproduct(ninjaE3,spvak4k3)
      acd285(3)=abb285(16)
      acd285(4)=dotproduct(ninjaE3,spvak1k7)
      acd285(5)=abb285(8)
      acd285(6)=dotproduct(ninjaE3,spvak2k7)
      acd285(7)=abb285(10)
      acd285(8)=dotproduct(ninjaE3,spvak5k7)
      acd285(9)=abb285(17)
      acd285(10)=acd285(3)*acd285(1)
      acd285(11)=acd285(5)*acd285(4)
      acd285(12)=acd285(7)*acd285(6)
      acd285(13)=acd285(9)*acd285(8)
      acd285(10)=acd285(13)+acd285(12)+acd285(10)+acd285(11)
      acd285(10)=acd285(2)*acd285(10)
      brack(ninjaidxt2mu0)=acd285(10)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd285h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(35) :: acd285
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd285(1)=dotproduct(k7,ninjaE3)
      acd285(2)=dotproduct(ninjaE4,spvak4k3)
      acd285(3)=abb285(16)
      acd285(4)=dotproduct(k7,ninjaE4)
      acd285(5)=dotproduct(ninjaE3,spvak4k3)
      acd285(6)=dotproduct(ninjaE3,spvak1k7)
      acd285(7)=abb285(8)
      acd285(8)=dotproduct(ninjaE4,spvak1k7)
      acd285(9)=dotproduct(ninjaE4,spvak2k7)
      acd285(10)=abb285(10)
      acd285(11)=dotproduct(ninjaE4,spvak5k7)
      acd285(12)=abb285(17)
      acd285(13)=dotproduct(ninjaE3,spvak2k7)
      acd285(14)=dotproduct(ninjaE3,spvak5k7)
      acd285(15)=abb285(13)
      acd285(16)=dotproduct(k7,ninjaA)
      acd285(17)=dotproduct(ninjaA,spvak4k3)
      acd285(18)=dotproduct(ninjaA,ninjaE3)
      acd285(19)=dotproduct(ninjaA,spvak1k7)
      acd285(20)=dotproduct(ninjaA,spvak2k7)
      acd285(21)=dotproduct(ninjaA,spvak5k7)
      acd285(22)=dotproduct(ninjaE3,spvak1k3)
      acd285(23)=abb285(9)
      acd285(24)=dotproduct(ninjaE3,spvak5k3)
      acd285(25)=abb285(11)
      acd285(26)=dotproduct(ninjaA,ninjaA)
      acd285(27)=dotproduct(ninjaA,spvak1k3)
      acd285(28)=dotproduct(ninjaA,spvak5k3)
      acd285(29)=acd285(12)*acd285(11)
      acd285(30)=acd285(10)*acd285(9)
      acd285(31)=acd285(7)*acd285(8)
      acd285(32)=acd285(3)*acd285(4)
      acd285(29)=acd285(29)+acd285(30)+acd285(31)+acd285(32)
      acd285(29)=acd285(29)*acd285(5)
      acd285(30)=acd285(12)*acd285(14)
      acd285(31)=acd285(10)*acd285(13)
      acd285(32)=acd285(7)*acd285(6)
      acd285(33)=acd285(3)*acd285(1)
      acd285(30)=acd285(30)+acd285(31)+acd285(32)+acd285(33)
      acd285(31)=acd285(30)*acd285(2)
      acd285(29)=acd285(29)+acd285(31)+acd285(15)
      acd285(30)=acd285(17)*acd285(30)
      acd285(31)=acd285(12)*acd285(21)
      acd285(32)=acd285(10)*acd285(20)
      acd285(33)=acd285(7)*acd285(19)
      acd285(34)=acd285(3)*acd285(16)
      acd285(31)=acd285(34)+acd285(31)+acd285(32)+acd285(33)
      acd285(32)=acd285(5)*acd285(31)
      acd285(33)=acd285(25)*acd285(24)
      acd285(34)=acd285(23)*acd285(22)
      acd285(35)=acd285(15)*acd285(18)
      acd285(30)=acd285(32)+acd285(30)+2.0_ki*acd285(35)+acd285(33)+acd285(34)
      acd285(32)=ninjaP*acd285(29)
      acd285(31)=acd285(17)*acd285(31)
      acd285(33)=acd285(25)*acd285(28)
      acd285(34)=acd285(23)*acd285(27)
      acd285(35)=acd285(15)*acd285(26)
      acd285(31)=acd285(31)+acd285(35)+acd285(33)+acd285(34)+acd285(32)
      brack(ninjaidxt1mu0)=acd285(30)
      brack(ninjaidxt0mu0)=acd285(31)
      brack(ninjaidxt0mu2)=acd285(29)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d285h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd285h1
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
end module     p4_ubaru_epnemumnmubarg_d285h1l131
