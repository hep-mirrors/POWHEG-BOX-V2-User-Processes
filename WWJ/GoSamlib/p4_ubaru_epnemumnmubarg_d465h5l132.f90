module     p4_ubaru_epnemumnmubarg_d465h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity5d465h5l132.f90
   ! generator: buildfortran_tn3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd465h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd465
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd465(1)=dotproduct(k2,ninjaE3)
      acd465(2)=abb465(27)
      acd465(3)=dotproduct(k3,ninjaE3)
      acd465(4)=abb465(33)
      acd465(5)=dotproduct(k4,ninjaE3)
      acd465(6)=abb465(34)
      acd465(7)=dotproduct(ninjaE3,spvak4k2)
      acd465(8)=abb465(9)
      acd465(9)=dotproduct(ninjaE3,spvak4k3)
      acd465(10)=abb465(10)
      acd465(11)=dotproduct(ninjaE3,spvak3k2)
      acd465(12)=abb465(11)
      acd465(13)=dotproduct(ninjaE3,spvak2k3)
      acd465(14)=abb465(12)
      acd465(15)=acd465(2)*acd465(1)
      acd465(16)=acd465(4)*acd465(3)
      acd465(17)=acd465(6)*acd465(5)
      acd465(18)=acd465(8)*acd465(7)
      acd465(19)=acd465(10)*acd465(9)
      acd465(20)=acd465(12)*acd465(11)
      acd465(21)=acd465(14)*acd465(13)
      acd465(15)=acd465(21)+acd465(20)+acd465(19)+acd465(18)+acd465(17)+acd465(&
      &15)+acd465(16)
      brack(ninjaidxt1x0mu0)=acd465(15)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd465h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(30) :: acd465
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd465(1)=dotproduct(k2,ninjaA1)
      acd465(2)=abb465(27)
      acd465(3)=dotproduct(k3,ninjaA1)
      acd465(4)=abb465(33)
      acd465(5)=dotproduct(k4,ninjaA1)
      acd465(6)=abb465(34)
      acd465(7)=dotproduct(ninjaA1,spvak4k2)
      acd465(8)=abb465(9)
      acd465(9)=dotproduct(ninjaA1,spvak4k3)
      acd465(10)=abb465(10)
      acd465(11)=dotproduct(ninjaA1,spvak3k2)
      acd465(12)=abb465(11)
      acd465(13)=dotproduct(ninjaA1,spvak2k3)
      acd465(14)=abb465(12)
      acd465(15)=dotproduct(k2,ninjaA0)
      acd465(16)=dotproduct(k3,ninjaA0)
      acd465(17)=dotproduct(k4,ninjaA0)
      acd465(18)=dotproduct(ninjaA0,spvak4k2)
      acd465(19)=dotproduct(ninjaA0,spvak4k3)
      acd465(20)=dotproduct(ninjaA0,spvak3k2)
      acd465(21)=dotproduct(ninjaA0,spvak2k3)
      acd465(22)=abb465(16)
      acd465(23)=acd465(1)*acd465(2)
      acd465(24)=acd465(3)*acd465(4)
      acd465(25)=acd465(5)*acd465(6)
      acd465(26)=acd465(7)*acd465(8)
      acd465(27)=acd465(9)*acd465(10)
      acd465(28)=acd465(11)*acd465(12)
      acd465(29)=acd465(13)*acd465(14)
      acd465(23)=acd465(29)+acd465(28)+acd465(27)+acd465(26)+acd465(25)+acd465(&
      &23)+acd465(24)
      acd465(24)=acd465(15)*acd465(2)
      acd465(25)=acd465(16)*acd465(4)
      acd465(26)=acd465(17)*acd465(6)
      acd465(27)=acd465(18)*acd465(8)
      acd465(28)=acd465(19)*acd465(10)
      acd465(29)=acd465(20)*acd465(12)
      acd465(30)=acd465(21)*acd465(14)
      acd465(24)=acd465(22)+acd465(30)+acd465(29)+acd465(28)+acd465(27)+acd465(&
      &26)+acd465(24)+acd465(25)
      brack(ninjaidxt0x0mu0)=acd465(24)
      brack(ninjaidxt0x1mu0)=acd465(23)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d465h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd465h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3-k2+k4
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p4_ubaru_epnemumnmubarg_d465h5l132
