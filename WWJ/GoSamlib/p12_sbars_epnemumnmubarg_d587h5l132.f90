module     p12_sbars_epnemumnmubarg_d587h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d587h5l132.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd587h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd587
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd587(1)=dotproduct(ninjaE3,spvak1k2)
      acd587(2)=dotproduct(ninjaE3,spvak5k6)
      acd587(3)=dotproduct(ninjaE3,spvak7k2)
      acd587(4)=abb587(13)
      acd587(5)=dotproduct(ninjaE3,spvak4k2)
      acd587(6)=abb587(18)
      acd587(7)=acd587(4)*acd587(1)
      acd587(8)=acd587(6)*acd587(5)
      acd587(7)=acd587(7)+acd587(8)
      acd587(7)=acd587(7)*acd587(3)*acd587(2)
      brack(ninjaidxt1x0mu0)=acd587(7)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd587h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(45) :: acd587
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd587(1)=dotproduct(ninjaA1,spvak4k2)
      acd587(2)=dotproduct(ninjaE3,spvak5k6)
      acd587(3)=dotproduct(ninjaE3,spvak7k2)
      acd587(4)=abb587(18)
      acd587(5)=dotproduct(ninjaA1,spvak5k6)
      acd587(6)=dotproduct(ninjaE3,spvak4k2)
      acd587(7)=dotproduct(ninjaE3,spvak1k2)
      acd587(8)=abb587(13)
      acd587(9)=dotproduct(ninjaA1,spvak1k2)
      acd587(10)=dotproduct(ninjaA1,spvak7k2)
      acd587(11)=dotproduct(k5,ninjaE3)
      acd587(12)=abb587(26)
      acd587(13)=abb587(15)
      acd587(14)=abb587(16)
      acd587(15)=dotproduct(ninjaE3,spvak5k2)
      acd587(16)=abb587(19)
      acd587(17)=dotproduct(k6,ninjaE3)
      acd587(18)=dotproduct(ninjaA0,ninjaE3)
      acd587(19)=abb587(27)
      acd587(20)=abb587(14)
      acd587(21)=abb587(20)
      acd587(22)=dotproduct(ninjaA0,spvak4k2)
      acd587(23)=dotproduct(ninjaA0,spvak5k6)
      acd587(24)=dotproduct(ninjaA0,spvak1k2)
      acd587(25)=dotproduct(ninjaA0,spvak7k2)
      acd587(26)=abb587(7)
      acd587(27)=abb587(9)
      acd587(28)=abb587(11)
      acd587(29)=abb587(12)
      acd587(30)=dotproduct(ninjaE3,spvak6k2)
      acd587(31)=dotproduct(ninjaE3,spvak1k6)
      acd587(32)=abb587(23)
      acd587(33)=dotproduct(ninjaE3,spvak4k6)
      acd587(34)=abb587(24)
      acd587(35)=acd587(1)*acd587(4)
      acd587(36)=acd587(9)*acd587(8)
      acd587(35)=acd587(36)+acd587(35)
      acd587(36)=acd587(2)*acd587(3)
      acd587(35)=acd587(36)*acd587(35)
      acd587(37)=acd587(4)*acd587(6)
      acd587(38)=acd587(8)*acd587(7)
      acd587(37)=acd587(37)+acd587(38)
      acd587(38)=acd587(3)*acd587(37)
      acd587(39)=acd587(5)*acd587(38)
      acd587(37)=acd587(2)*acd587(37)
      acd587(40)=acd587(10)*acd587(37)
      acd587(35)=acd587(39)+acd587(40)+acd587(35)
      acd587(39)=acd587(17)+acd587(11)
      acd587(40)=2.0_ki*acd587(18)
      acd587(41)=-acd587(40)+acd587(39)
      acd587(41)=acd587(14)*acd587(41)
      acd587(42)=acd587(32)*acd587(31)
      acd587(43)=acd587(34)*acd587(33)
      acd587(41)=acd587(41)+acd587(43)+acd587(42)
      acd587(41)=acd587(3)*acd587(41)
      acd587(42)=acd587(26)*acd587(6)
      acd587(43)=acd587(27)*acd587(7)
      acd587(44)=acd587(29)*acd587(15)
      acd587(42)=acd587(44)+acd587(43)+acd587(42)
      acd587(42)=acd587(2)*acd587(42)
      acd587(43)=acd587(19)*acd587(6)
      acd587(44)=acd587(20)*acd587(7)
      acd587(45)=acd587(21)*acd587(15)
      acd587(43)=acd587(45)+acd587(44)+acd587(43)
      acd587(40)=acd587(40)*acd587(43)
      acd587(43)=acd587(12)*acd587(6)
      acd587(44)=acd587(13)*acd587(7)
      acd587(43)=acd587(44)+acd587(43)
      acd587(43)=acd587(39)*acd587(43)
      acd587(39)=-acd587(15)*acd587(39)
      acd587(44)=acd587(30)*acd587(2)
      acd587(39)=acd587(44)+acd587(39)
      acd587(39)=acd587(16)*acd587(39)
      acd587(44)=acd587(22)*acd587(4)
      acd587(45)=acd587(24)*acd587(8)
      acd587(44)=acd587(28)+acd587(45)+acd587(44)
      acd587(36)=acd587(36)*acd587(44)
      acd587(38)=acd587(23)*acd587(38)
      acd587(37)=acd587(25)*acd587(37)
      acd587(36)=acd587(37)+acd587(38)+acd587(40)+acd587(36)+acd587(39)+acd587(&
      &42)+acd587(43)+acd587(41)
      brack(ninjaidxt0x0mu0)=acd587(36)
      brack(ninjaidxt0x1mu0)=acd587(35)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d587h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd587h5
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
end module     p12_sbars_epnemumnmubarg_d587h5l132
