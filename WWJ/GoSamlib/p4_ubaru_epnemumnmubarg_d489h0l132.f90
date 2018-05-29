module     p4_ubaru_epnemumnmubarg_d489h0l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity0d489h0l132.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd489h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(13) :: acd489
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd489(1)=dotproduct(k1,ninjaE3)
      acd489(2)=dotproduct(ninjaE3,spvak2k7)
      acd489(3)=abb489(12)
      acd489(4)=dotproduct(k7,ninjaE3)
      acd489(5)=abb489(13)
      acd489(6)=dotproduct(ninjaE3,spvak7k1)
      acd489(7)=abb489(9)
      acd489(8)=dotproduct(ninjaE3,spvak7k2)
      acd489(9)=abb489(17)
      acd489(10)=acd489(3)*acd489(1)
      acd489(11)=acd489(5)*acd489(4)
      acd489(12)=acd489(7)*acd489(6)
      acd489(13)=acd489(9)*acd489(8)
      acd489(10)=acd489(13)+acd489(12)+acd489(10)+acd489(11)
      acd489(10)=acd489(2)*acd489(10)
      brack(ninjaidxt1x0mu0)=acd489(10)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd489h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(35) :: acd489
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd489(1)=dotproduct(k1,ninjaA1)
      acd489(2)=dotproduct(ninjaE3,spvak2k7)
      acd489(3)=abb489(12)
      acd489(4)=dotproduct(k1,ninjaE3)
      acd489(5)=dotproduct(ninjaA1,spvak2k7)
      acd489(6)=dotproduct(k7,ninjaA1)
      acd489(7)=abb489(13)
      acd489(8)=dotproduct(k7,ninjaE3)
      acd489(9)=dotproduct(ninjaE3,spvak7k1)
      acd489(10)=abb489(9)
      acd489(11)=dotproduct(ninjaE3,spvak7k2)
      acd489(12)=abb489(17)
      acd489(13)=dotproduct(ninjaA1,spvak7k1)
      acd489(14)=dotproduct(ninjaA1,spvak7k2)
      acd489(15)=dotproduct(k1,ninjaA0)
      acd489(16)=dotproduct(ninjaA0,spvak2k7)
      acd489(17)=abb489(16)
      acd489(18)=dotproduct(k7,ninjaA0)
      acd489(19)=abb489(10)
      acd489(20)=dotproduct(ninjaA0,ninjaE3)
      acd489(21)=abb489(8)
      acd489(22)=dotproduct(ninjaA0,spvak7k1)
      acd489(23)=dotproduct(ninjaA0,spvak7k2)
      acd489(24)=abb489(21)
      acd489(25)=dotproduct(ninjaE3,spvak1k2)
      acd489(26)=abb489(11)
      acd489(27)=abb489(19)
      acd489(28)=acd489(12)*acd489(11)
      acd489(29)=acd489(10)*acd489(9)
      acd489(30)=acd489(7)*acd489(8)
      acd489(31)=acd489(3)*acd489(4)
      acd489(28)=acd489(31)+acd489(30)+acd489(28)+acd489(29)
      acd489(29)=acd489(5)*acd489(28)
      acd489(30)=acd489(12)*acd489(14)
      acd489(31)=acd489(10)*acd489(13)
      acd489(32)=acd489(7)*acd489(6)
      acd489(33)=acd489(3)*acd489(1)
      acd489(30)=acd489(33)+acd489(32)+acd489(30)+acd489(31)
      acd489(30)=acd489(2)*acd489(30)
      acd489(29)=acd489(30)+acd489(29)
      acd489(28)=acd489(16)*acd489(28)
      acd489(30)=acd489(12)*acd489(23)
      acd489(31)=acd489(10)*acd489(22)
      acd489(32)=acd489(7)*acd489(18)
      acd489(33)=acd489(3)*acd489(15)
      acd489(30)=acd489(33)+acd489(32)+acd489(31)+acd489(24)+acd489(30)
      acd489(30)=acd489(2)*acd489(30)
      acd489(31)=acd489(25)*acd489(26)
      acd489(32)=acd489(20)*acd489(21)
      acd489(33)=acd489(11)*acd489(27)
      acd489(34)=acd489(8)*acd489(19)
      acd489(35)=acd489(4)*acd489(17)
      acd489(28)=acd489(30)+acd489(35)+acd489(34)+acd489(33)+acd489(31)+2.0_ki*&
      &acd489(32)+acd489(28)
      brack(ninjaidxt0x0mu0)=acd489(28)
      brack(ninjaidxt0x1mu0)=acd489(29)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d489h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd489h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7
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
end module     p4_ubaru_epnemumnmubarg_d489h0l132
