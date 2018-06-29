module     p8_cbarc_epnemumnmubarg_d559h4l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity4d559h4l131.f90
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
      use p8_cbarc_epnemumnmubarg_abbrevd559h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd559
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd559h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd559
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd559(1)=dotproduct(ninjaE3,spvak7k2)
      acd559(2)=abb559(12)
      acd559(3)=dotproduct(k1,ninjaE3)
      acd559(4)=abb559(11)
      acd559(5)=dotproduct(k7,ninjaE3)
      acd559(6)=dotproduct(ninjaA,ninjaE3)
      acd559(7)=dotproduct(ninjaE3,spvak7k1)
      acd559(8)=abb559(8)
      acd559(9)=abb559(10)
      acd559(10)=dotproduct(k1,ninjaA)
      acd559(11)=dotproduct(ninjaA,spvak7k2)
      acd559(12)=dotproduct(k2,ninjaE3)
      acd559(13)=abb559(9)
      acd559(14)=dotproduct(k7,ninjaA)
      acd559(15)=dotproduct(ninjaA,ninjaA)
      acd559(16)=abb559(7)
      acd559(17)=dotproduct(ninjaA,spvak7k1)
      acd559(18)=abb559(13)
      acd559(19)=acd559(1)*acd559(2)
      acd559(20)=2.0_ki*acd559(6)
      acd559(21)=acd559(20)*acd559(2)
      acd559(22)=acd559(3)+acd559(5)
      acd559(22)=acd559(22)*acd559(4)
      acd559(23)=acd559(8)*acd559(7)
      acd559(21)=acd559(23)+acd559(21)+acd559(22)
      acd559(22)=acd559(1)*acd559(9)
      acd559(22)=acd559(22)+acd559(21)
      acd559(22)=acd559(1)*acd559(22)
      acd559(23)=acd559(8)*acd559(17)
      acd559(24)=2.0_ki*acd559(11)
      acd559(24)=acd559(9)*acd559(24)
      acd559(25)=ninjaP+acd559(15)
      acd559(25)=acd559(2)*acd559(25)
      acd559(26)=acd559(14)+acd559(10)
      acd559(26)=acd559(4)*acd559(26)
      acd559(23)=acd559(26)+acd559(25)+acd559(24)+acd559(18)+acd559(23)
      acd559(23)=acd559(1)*acd559(23)
      acd559(21)=acd559(11)*acd559(21)
      acd559(24)=acd559(12)*acd559(13)
      acd559(20)=acd559(16)*acd559(20)
      acd559(20)=acd559(23)+acd559(24)+acd559(20)+acd559(21)
      brack(ninjaidxt1mu0)=acd559(22)
      brack(ninjaidxt0mu0)=acd559(20)
      brack(ninjaidxt0mu2)=acd559(19)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d559h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd559h4
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
end module     p8_cbarc_epnemumnmubarg_d559h4l131
