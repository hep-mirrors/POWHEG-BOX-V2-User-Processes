module     p8_cbarc_epnemumnmubarg_d191h7l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity7d191h7l131.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd191h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd191
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd191h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd191
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd191(1)=abb191(11)
      acd191(2)=dotproduct(k1,ninjaE3)
      acd191(3)=dotproduct(k2,ninjaE3)
      acd191(4)=abb191(9)
      acd191(5)=dotproduct(k7,ninjaE3)
      acd191(6)=dotproduct(ninjaA,ninjaE3)
      acd191(7)=dotproduct(ninjaE3,spvak1k2)
      acd191(8)=abb191(10)
      acd191(9)=dotproduct(ninjaE3,spvak7k2)
      acd191(10)=abb191(12)
      acd191(11)=dotproduct(k1,ninjaA)
      acd191(12)=dotproduct(k2,ninjaA)
      acd191(13)=dotproduct(k7,ninjaA)
      acd191(14)=dotproduct(ninjaA,ninjaA)
      acd191(15)=dotproduct(ninjaA,spvak1k2)
      acd191(16)=dotproduct(ninjaA,spvak7k2)
      acd191(17)=abb191(8)
      acd191(18)=-2.0_ki*acd191(6)+acd191(5)+acd191(2)
      acd191(18)=acd191(1)*acd191(18)
      acd191(19)=acd191(3)*acd191(4)
      acd191(20)=acd191(7)*acd191(8)
      acd191(21)=acd191(9)*acd191(10)
      acd191(18)=acd191(21)+acd191(20)+acd191(19)+acd191(18)
      acd191(19)=-ninjaP-acd191(14)+acd191(13)+acd191(11)
      acd191(19)=acd191(1)*acd191(19)
      acd191(20)=acd191(12)*acd191(4)
      acd191(21)=acd191(15)*acd191(8)
      acd191(22)=acd191(16)*acd191(10)
      acd191(19)=acd191(17)+acd191(22)+acd191(21)+acd191(20)+acd191(19)
      brack(ninjaidxt1mu0)=acd191(18)
      brack(ninjaidxt0mu0)=acd191(19)
      brack(ninjaidxt0mu2)=-acd191(1)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d191h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd191h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
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
end module     p8_cbarc_epnemumnmubarg_d191h7l131
