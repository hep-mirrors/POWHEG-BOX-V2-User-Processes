module     p0_dbard_epnemumnmubarg_d57h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity5d57h5l132.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd57h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(10) :: acd57
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd57(1)=dotproduct(k2,ninjaE3)
      acd57(2)=dotproduct(ninjaE3,spvak5k6)
      acd57(3)=abb57(13)
      acd57(4)=dotproduct(ninjaE3,spvak5k2)
      acd57(5)=abb57(9)
      acd57(6)=dotproduct(ninjaE3,spvak6k2)
      acd57(7)=abb57(14)
      acd57(8)=acd57(3)*acd57(1)
      acd57(9)=acd57(5)*acd57(4)
      acd57(10)=acd57(7)*acd57(6)
      acd57(8)=acd57(10)+acd57(8)+acd57(9)
      acd57(8)=acd57(2)*acd57(8)
      brack(ninjaidxt1x0mu0)=acd57(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd57h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd57
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd57(1)=dotproduct(k2,ninjaA1)
      acd57(2)=dotproduct(ninjaE3,spvak5k6)
      acd57(3)=abb57(13)
      acd57(4)=dotproduct(k2,ninjaE3)
      acd57(5)=dotproduct(ninjaA1,spvak5k6)
      acd57(6)=dotproduct(ninjaA1,spvak5k2)
      acd57(7)=abb57(9)
      acd57(8)=dotproduct(ninjaE3,spvak5k2)
      acd57(9)=dotproduct(ninjaE3,spvak6k2)
      acd57(10)=abb57(14)
      acd57(11)=dotproduct(ninjaA1,spvak6k2)
      acd57(12)=dotproduct(k2,ninjaA0)
      acd57(13)=dotproduct(ninjaA0,spvak5k6)
      acd57(14)=dotproduct(k6,ninjaE3)
      acd57(15)=abb57(17)
      acd57(16)=dotproduct(ninjaA0,ninjaE3)
      acd57(17)=abb57(11)
      acd57(18)=dotproduct(ninjaA0,spvak5k2)
      acd57(19)=dotproduct(ninjaA0,spvak6k2)
      acd57(20)=abb57(10)
      acd57(21)=dotproduct(ninjaE3,spvak2k6)
      acd57(22)=abb57(15)
      acd57(23)=acd57(10)*acd57(9)
      acd57(24)=acd57(7)*acd57(8)
      acd57(25)=acd57(3)*acd57(4)
      acd57(23)=acd57(25)+acd57(23)+acd57(24)
      acd57(24)=acd57(5)*acd57(23)
      acd57(25)=acd57(10)*acd57(11)
      acd57(26)=acd57(7)*acd57(6)
      acd57(27)=acd57(3)*acd57(1)
      acd57(25)=acd57(27)+acd57(25)+acd57(26)
      acd57(25)=acd57(2)*acd57(25)
      acd57(24)=acd57(25)+acd57(24)
      acd57(23)=acd57(13)*acd57(23)
      acd57(25)=acd57(10)*acd57(19)
      acd57(26)=acd57(7)*acd57(18)
      acd57(27)=acd57(3)*acd57(12)
      acd57(25)=acd57(27)+acd57(26)+acd57(20)+acd57(25)
      acd57(25)=acd57(2)*acd57(25)
      acd57(26)=acd57(21)*acd57(22)
      acd57(27)=acd57(16)*acd57(17)
      acd57(28)=acd57(14)*acd57(15)
      acd57(23)=acd57(25)+acd57(28)+acd57(26)+2.0_ki*acd57(27)+acd57(23)
      brack(ninjaidxt0x0mu0)=acd57(23)
      brack(ninjaidxt0x1mu0)=acd57(24)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d57h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd57h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = + a0(0:3)
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
end module     p0_dbard_epnemumnmubarg_d57h5l132
