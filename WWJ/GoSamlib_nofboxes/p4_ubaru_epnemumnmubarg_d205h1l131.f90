module     p4_ubaru_epnemumnmubarg_d205h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity1d205h1l131.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd205h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(44) :: acd205
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd205(1)=dotproduct(k1,ninjaE3)
      acd205(2)=abb205(28)
      acd205(3)=dotproduct(k2,ninjaE3)
      acd205(4)=abb205(51)
      acd205(5)=dotproduct(k3,ninjaE3)
      acd205(6)=abb205(46)
      acd205(7)=dotproduct(k4,ninjaE3)
      acd205(8)=dotproduct(k5,ninjaE3)
      acd205(9)=abb205(48)
      acd205(10)=dotproduct(k6,ninjaE3)
      acd205(11)=dotproduct(k7,ninjaE3)
      acd205(12)=abb205(32)
      acd205(13)=dotproduct(ninjaE3,spvak4k2)
      acd205(14)=abb205(14)
      acd205(15)=dotproduct(ninjaE3,spvak3k2)
      acd205(16)=abb205(15)
      acd205(17)=dotproduct(ninjaE3,spvak1k7)
      acd205(18)=abb205(16)
      acd205(19)=dotproduct(ninjaE3,spvak5k6)
      acd205(20)=abb205(17)
      acd205(21)=dotproduct(ninjaE3,spvak5k2)
      acd205(22)=abb205(19)
      acd205(23)=dotproduct(ninjaE3,spvak5k3)
      acd205(24)=abb205(24)
      acd205(25)=dotproduct(ninjaE3,spvak4k6)
      acd205(26)=abb205(27)
      acd205(27)=dotproduct(ninjaE3,spvak4k3)
      acd205(28)=abb205(39)
      acd205(29)=dotproduct(ninjaE3,spvak6k2)
      acd205(30)=abb205(53)
      acd205(31)=acd205(7)+acd205(5)
      acd205(31)=acd205(6)*acd205(31)
      acd205(32)=acd205(10)+acd205(8)
      acd205(32)=acd205(9)*acd205(32)
      acd205(33)=acd205(2)*acd205(1)
      acd205(34)=acd205(4)*acd205(3)
      acd205(35)=acd205(12)*acd205(11)
      acd205(36)=acd205(14)*acd205(13)
      acd205(37)=acd205(16)*acd205(15)
      acd205(38)=acd205(18)*acd205(17)
      acd205(39)=acd205(20)*acd205(19)
      acd205(40)=acd205(22)*acd205(21)
      acd205(41)=acd205(24)*acd205(23)
      acd205(42)=acd205(26)*acd205(25)
      acd205(43)=acd205(28)*acd205(27)
      acd205(44)=acd205(30)*acd205(29)
      acd205(31)=acd205(44)+acd205(43)+acd205(42)+acd205(41)+acd205(40)+acd205(&
      &39)+acd205(38)+acd205(37)+acd205(36)+acd205(35)+acd205(33)+acd205(34)+ac&
      &d205(32)+acd205(31)
      brack(ninjaidxt2mu0)=acd205(31)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d205h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd205h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k6-k5-k4
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p4_ubaru_epnemumnmubarg_d205h1l131
