module     p4_ubaru_epnemumnmubarg_d545h7l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity7d545h7l132.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd545h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd545
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      brack(ninjaidxt1x0mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd545h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(19) :: acd545
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd545(1)=dotproduct(k1,ninjaE3)
      acd545(2)=dotproduct(k2,ninjaE3)
      acd545(3)=abb545(7)
      acd545(4)=dotproduct(ninjaE3,spvak7k2)
      acd545(5)=abb545(17)
      acd545(6)=dotproduct(ninjaE3,spvak1k2)
      acd545(7)=abb545(13)
      acd545(8)=dotproduct(k7,ninjaE3)
      acd545(9)=dotproduct(ninjaA0,ninjaE3)
      acd545(10)=abb545(14)
      acd545(11)=abb545(16)
      acd545(12)=dotproduct(ninjaE3,spvak2k7)
      acd545(13)=abb545(10)
      acd545(14)=dotproduct(ninjaE3,spvak1k7)
      acd545(15)=2.0_ki*acd545(9)
      acd545(16)=acd545(2)-acd545(1)+acd545(15)
      acd545(16)=acd545(5)*acd545(16)
      acd545(17)=acd545(12)*acd545(13)
      acd545(18)=-acd545(11)*acd545(14)
      acd545(16)=acd545(17)+acd545(18)+acd545(16)
      acd545(16)=acd545(4)*acd545(16)
      acd545(17)=acd545(1)-acd545(8)
      acd545(18)=-acd545(7)*acd545(17)
      acd545(19)=acd545(11)*acd545(15)
      acd545(18)=acd545(19)+acd545(18)
      acd545(18)=acd545(6)*acd545(18)
      acd545(17)=acd545(3)*acd545(17)
      acd545(15)=-acd545(10)*acd545(15)
      acd545(15)=acd545(15)+acd545(17)
      acd545(15)=acd545(2)*acd545(15)
      acd545(15)=acd545(16)+acd545(15)+acd545(18)
      brack(ninjaidxt0x0mu0)=acd545(15)
      brack(ninjaidxt0x1mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d545h7_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd545h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p4_ubaru_epnemumnmubarg_d545h7l132
