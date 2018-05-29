module     p0_dbard_epnemumnmubarg_d281h1l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d281h1l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd281h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(13) :: acd281
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
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
      brack(ninjaidxt1x0mu0)=acd281(10)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd281h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(31) :: acd281
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd281(1)=dotproduct(k7,ninjaA1)
      acd281(2)=dotproduct(ninjaE3,spvak5k6)
      acd281(3)=abb281(15)
      acd281(4)=dotproduct(k7,ninjaE3)
      acd281(5)=dotproduct(ninjaA1,spvak5k6)
      acd281(6)=dotproduct(ninjaA1,spvak1k7)
      acd281(7)=abb281(8)
      acd281(8)=dotproduct(ninjaE3,spvak1k7)
      acd281(9)=dotproduct(ninjaE3,spvak2k7)
      acd281(10)=abb281(10)
      acd281(11)=dotproduct(ninjaE3,spvak4k7)
      acd281(12)=abb281(16)
      acd281(13)=dotproduct(ninjaA1,spvak2k7)
      acd281(14)=dotproduct(ninjaA1,spvak4k7)
      acd281(15)=dotproduct(k7,ninjaA0)
      acd281(16)=dotproduct(ninjaA0,spvak5k6)
      acd281(17)=dotproduct(ninjaA0,ninjaE3)
      acd281(18)=abb281(13)
      acd281(19)=dotproduct(ninjaA0,spvak1k7)
      acd281(20)=dotproduct(ninjaA0,spvak2k7)
      acd281(21)=dotproduct(ninjaA0,spvak4k7)
      acd281(22)=dotproduct(ninjaE3,spvak1k6)
      acd281(23)=abb281(9)
      acd281(24)=dotproduct(ninjaE3,spvak4k6)
      acd281(25)=abb281(11)
      acd281(26)=acd281(12)*acd281(11)
      acd281(27)=acd281(10)*acd281(9)
      acd281(28)=acd281(7)*acd281(8)
      acd281(29)=acd281(3)*acd281(4)
      acd281(26)=acd281(29)+acd281(28)+acd281(26)+acd281(27)
      acd281(27)=acd281(5)*acd281(26)
      acd281(28)=acd281(12)*acd281(14)
      acd281(29)=acd281(10)*acd281(13)
      acd281(30)=acd281(7)*acd281(6)
      acd281(31)=acd281(3)*acd281(1)
      acd281(28)=acd281(31)+acd281(30)+acd281(28)+acd281(29)
      acd281(28)=acd281(2)*acd281(28)
      acd281(27)=acd281(28)+acd281(27)
      acd281(26)=acd281(16)*acd281(26)
      acd281(28)=acd281(12)*acd281(21)
      acd281(29)=acd281(10)*acd281(20)
      acd281(30)=acd281(7)*acd281(19)
      acd281(31)=acd281(3)*acd281(15)
      acd281(28)=acd281(31)+acd281(30)+acd281(28)+acd281(29)
      acd281(28)=acd281(2)*acd281(28)
      acd281(29)=acd281(24)*acd281(25)
      acd281(30)=acd281(22)*acd281(23)
      acd281(31)=acd281(17)*acd281(18)
      acd281(26)=acd281(28)+2.0_ki*acd281(31)+acd281(29)+acd281(30)+acd281(26)
      brack(ninjaidxt0x0mu0)=acd281(26)
      brack(ninjaidxt0x1mu0)=acd281(27)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d281h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd281h1
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
end module     p0_dbard_epnemumnmubarg_d281h1l132
