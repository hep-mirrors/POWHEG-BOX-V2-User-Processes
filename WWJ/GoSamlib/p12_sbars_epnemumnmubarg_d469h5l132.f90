module     p12_sbars_epnemumnmubarg_d469h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d469h5l132.f90
   ! generator: buildfortran_tn3.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd469h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd469
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd469(1)=dotproduct(k2,ninjaE3)
      acd469(2)=abb469(19)
      acd469(3)=dotproduct(k5,ninjaE3)
      acd469(4)=abb469(26)
      acd469(5)=dotproduct(k6,ninjaE3)
      acd469(6)=abb469(20)
      acd469(7)=dotproduct(ninjaE3,spvak5k2)
      acd469(8)=abb469(9)
      acd469(9)=dotproduct(ninjaE3,spvak2k6)
      acd469(10)=abb469(10)
      acd469(11)=dotproduct(ninjaE3,spvak5k6)
      acd469(12)=abb469(13)
      acd469(13)=dotproduct(ninjaE3,spvak6k2)
      acd469(14)=abb469(15)
      acd469(15)=acd469(2)*acd469(1)
      acd469(16)=acd469(4)*acd469(3)
      acd469(17)=acd469(6)*acd469(5)
      acd469(18)=acd469(8)*acd469(7)
      acd469(19)=acd469(10)*acd469(9)
      acd469(20)=acd469(12)*acd469(11)
      acd469(21)=acd469(14)*acd469(13)
      acd469(15)=acd469(21)+acd469(20)+acd469(19)+acd469(18)+acd469(17)+acd469(&
      &15)+acd469(16)
      brack(ninjaidxt1x0mu0)=acd469(15)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd469h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(30) :: acd469
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd469(1)=dotproduct(k2,ninjaA1)
      acd469(2)=abb469(19)
      acd469(3)=dotproduct(k5,ninjaA1)
      acd469(4)=abb469(26)
      acd469(5)=dotproduct(k6,ninjaA1)
      acd469(6)=abb469(20)
      acd469(7)=dotproduct(ninjaA1,spvak5k2)
      acd469(8)=abb469(9)
      acd469(9)=dotproduct(ninjaA1,spvak2k6)
      acd469(10)=abb469(10)
      acd469(11)=dotproduct(ninjaA1,spvak5k6)
      acd469(12)=abb469(13)
      acd469(13)=dotproduct(ninjaA1,spvak6k2)
      acd469(14)=abb469(15)
      acd469(15)=dotproduct(k2,ninjaA0)
      acd469(16)=dotproduct(k5,ninjaA0)
      acd469(17)=dotproduct(k6,ninjaA0)
      acd469(18)=dotproduct(ninjaA0,spvak5k2)
      acd469(19)=dotproduct(ninjaA0,spvak2k6)
      acd469(20)=dotproduct(ninjaA0,spvak5k6)
      acd469(21)=dotproduct(ninjaA0,spvak6k2)
      acd469(22)=abb469(14)
      acd469(23)=acd469(1)*acd469(2)
      acd469(24)=acd469(3)*acd469(4)
      acd469(25)=acd469(5)*acd469(6)
      acd469(26)=acd469(7)*acd469(8)
      acd469(27)=acd469(9)*acd469(10)
      acd469(28)=acd469(11)*acd469(12)
      acd469(29)=acd469(13)*acd469(14)
      acd469(23)=acd469(29)+acd469(28)+acd469(27)+acd469(26)+acd469(25)+acd469(&
      &23)+acd469(24)
      acd469(24)=acd469(15)*acd469(2)
      acd469(25)=acd469(16)*acd469(4)
      acd469(26)=acd469(17)*acd469(6)
      acd469(27)=acd469(18)*acd469(8)
      acd469(28)=acd469(19)*acd469(10)
      acd469(29)=acd469(20)*acd469(12)
      acd469(30)=acd469(21)*acd469(14)
      acd469(24)=acd469(22)+acd469(30)+acd469(29)+acd469(28)+acd469(27)+acd469(&
      &26)+acd469(24)+acd469(25)
      brack(ninjaidxt0x0mu0)=acd469(24)
      brack(ninjaidxt0x1mu0)=acd469(23)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d469h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd469h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
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
end module     p12_sbars_epnemumnmubarg_d469h5l132
