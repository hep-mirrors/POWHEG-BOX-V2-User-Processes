module     p8_cbarc_epnemumnmubarg_d285h1l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity1d285h1l132.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd285h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(13) :: acd285
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
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
      brack(ninjaidxt1x0mu0)=acd285(10)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd285h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(31) :: acd285
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd285(1)=dotproduct(k7,ninjaA1)
      acd285(2)=dotproduct(ninjaE3,spvak4k3)
      acd285(3)=abb285(16)
      acd285(4)=dotproduct(k7,ninjaE3)
      acd285(5)=dotproduct(ninjaA1,spvak4k3)
      acd285(6)=dotproduct(ninjaA1,spvak1k7)
      acd285(7)=abb285(8)
      acd285(8)=dotproduct(ninjaE3,spvak1k7)
      acd285(9)=dotproduct(ninjaE3,spvak2k7)
      acd285(10)=abb285(10)
      acd285(11)=dotproduct(ninjaE3,spvak5k7)
      acd285(12)=abb285(17)
      acd285(13)=dotproduct(ninjaA1,spvak2k7)
      acd285(14)=dotproduct(ninjaA1,spvak5k7)
      acd285(15)=dotproduct(k7,ninjaA0)
      acd285(16)=dotproduct(ninjaA0,spvak4k3)
      acd285(17)=dotproduct(ninjaA0,ninjaE3)
      acd285(18)=abb285(13)
      acd285(19)=dotproduct(ninjaA0,spvak1k7)
      acd285(20)=dotproduct(ninjaA0,spvak2k7)
      acd285(21)=dotproduct(ninjaA0,spvak5k7)
      acd285(22)=dotproduct(ninjaE3,spvak1k3)
      acd285(23)=abb285(9)
      acd285(24)=dotproduct(ninjaE3,spvak5k3)
      acd285(25)=abb285(11)
      acd285(26)=acd285(12)*acd285(11)
      acd285(27)=acd285(10)*acd285(9)
      acd285(28)=acd285(7)*acd285(8)
      acd285(29)=acd285(3)*acd285(4)
      acd285(26)=acd285(29)+acd285(28)+acd285(26)+acd285(27)
      acd285(27)=acd285(5)*acd285(26)
      acd285(28)=acd285(12)*acd285(14)
      acd285(29)=acd285(10)*acd285(13)
      acd285(30)=acd285(7)*acd285(6)
      acd285(31)=acd285(3)*acd285(1)
      acd285(28)=acd285(31)+acd285(30)+acd285(28)+acd285(29)
      acd285(28)=acd285(2)*acd285(28)
      acd285(27)=acd285(28)+acd285(27)
      acd285(26)=acd285(16)*acd285(26)
      acd285(28)=acd285(12)*acd285(21)
      acd285(29)=acd285(10)*acd285(20)
      acd285(30)=acd285(7)*acd285(19)
      acd285(31)=acd285(3)*acd285(15)
      acd285(28)=acd285(31)+acd285(30)+acd285(28)+acd285(29)
      acd285(28)=acd285(2)*acd285(28)
      acd285(29)=acd285(24)*acd285(25)
      acd285(30)=acd285(22)*acd285(23)
      acd285(31)=acd285(17)*acd285(18)
      acd285(26)=acd285(28)+2.0_ki*acd285(31)+acd285(29)+acd285(30)+acd285(26)
      brack(ninjaidxt0x0mu0)=acd285(26)
      brack(ninjaidxt0x1mu0)=acd285(27)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d285h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd285h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7
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
end module     p8_cbarc_epnemumnmubarg_d285h1l132
