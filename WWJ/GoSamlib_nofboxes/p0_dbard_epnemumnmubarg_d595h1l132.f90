module     p0_dbard_epnemumnmubarg_d595h1l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity1d595h1l132.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd595
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd595(1)=dotproduct(ninjaE3,spvak2k7)
      acd595(2)=dotproduct(ninjaE3,spvak4k2)
      acd595(3)=dotproduct(ninjaE3,spvak5k6)
      acd595(4)=abb595(6)
      acd595(5)=dotproduct(ninjaE3,spvak1k2)
      acd595(6)=abb595(7)
      acd595(7)=acd595(4)*acd595(2)
      acd595(8)=acd595(6)*acd595(5)
      acd595(7)=acd595(7)+acd595(8)
      acd595(7)=acd595(7)*acd595(3)*acd595(1)
      brack(ninjaidxt1x0mu0)=acd595(7)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(52) :: acd595
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd595(1)=dotproduct(ninjaA1,spvak2k7)
      acd595(2)=dotproduct(ninjaE3,spvak4k2)
      acd595(3)=dotproduct(ninjaE3,spvak5k6)
      acd595(4)=abb595(6)
      acd595(5)=dotproduct(ninjaE3,spvak1k2)
      acd595(6)=abb595(7)
      acd595(7)=dotproduct(ninjaA1,spvak4k2)
      acd595(8)=dotproduct(ninjaE3,spvak2k7)
      acd595(9)=dotproduct(ninjaA1,spvak5k6)
      acd595(10)=dotproduct(ninjaA1,spvak1k2)
      acd595(11)=dotproduct(k2,ninjaE3)
      acd595(12)=abb595(27)
      acd595(13)=dotproduct(k5,ninjaE3)
      acd595(14)=dotproduct(k6,ninjaE3)
      acd595(15)=dotproduct(ninjaA0,ninjaE3)
      acd595(16)=abb595(13)
      acd595(17)=abb595(29)
      acd595(18)=abb595(19)
      acd595(19)=dotproduct(ninjaE3,spvak5k2)
      acd595(20)=abb595(25)
      acd595(21)=abb595(12)
      acd595(22)=dotproduct(k7,ninjaE3)
      acd595(23)=abb595(21)
      acd595(24)=abb595(10)
      acd595(25)=abb595(23)
      acd595(26)=abb595(24)
      acd595(27)=dotproduct(ninjaA0,spvak2k7)
      acd595(28)=dotproduct(ninjaA0,spvak4k2)
      acd595(29)=dotproduct(ninjaA0,spvak5k6)
      acd595(30)=dotproduct(ninjaA0,spvak1k2)
      acd595(31)=abb595(26)
      acd595(32)=abb595(22)
      acd595(33)=abb595(30)
      acd595(34)=abb595(9)
      acd595(35)=dotproduct(ninjaE3,spvak1k6)
      acd595(36)=abb595(20)
      acd595(37)=dotproduct(ninjaE3,spvak4k6)
      acd595(38)=abb595(28)
      acd595(39)=acd595(6)*acd595(5)
      acd595(40)=acd595(4)*acd595(2)
      acd595(39)=acd595(39)+acd595(40)
      acd595(40)=acd595(9)*acd595(39)
      acd595(41)=acd595(6)*acd595(10)
      acd595(42)=acd595(4)*acd595(7)
      acd595(41)=acd595(41)+acd595(42)
      acd595(41)=acd595(3)*acd595(41)
      acd595(40)=acd595(41)+acd595(40)
      acd595(40)=acd595(8)*acd595(40)
      acd595(41)=acd595(3)*acd595(1)*acd595(39)
      acd595(40)=acd595(41)+acd595(40)
      acd595(41)=acd595(29)*acd595(39)
      acd595(42)=acd595(6)*acd595(30)
      acd595(43)=acd595(4)*acd595(28)
      acd595(42)=acd595(43)+acd595(32)+acd595(42)
      acd595(42)=acd595(3)*acd595(42)
      acd595(43)=acd595(13)+acd595(14)
      acd595(44)=-acd595(21)*acd595(43)
      acd595(45)=acd595(37)*acd595(38)
      acd595(46)=acd595(35)*acd595(36)
      acd595(47)=acd595(19)*acd595(34)
      acd595(48)=2.0_ki*acd595(15)
      acd595(49)=acd595(24)*acd595(48)
      acd595(50)=acd595(5)*acd595(33)
      acd595(51)=acd595(2)*acd595(31)
      acd595(52)=acd595(11)*acd595(17)
      acd595(41)=acd595(42)+acd595(52)+acd595(51)+acd595(50)+acd595(49)+acd595(&
      &47)+acd595(45)+acd595(46)+acd595(44)+acd595(41)
      acd595(41)=acd595(8)*acd595(41)
      acd595(39)=acd595(27)*acd595(39)
      acd595(42)=acd595(22)*acd595(23)
      acd595(44)=acd595(25)*acd595(48)
      acd595(45)=acd595(11)*acd595(18)
      acd595(39)=acd595(45)+acd595(42)+acd595(44)+acd595(39)
      acd595(39)=acd595(3)*acd595(39)
      acd595(42)=acd595(11)-acd595(43)
      acd595(42)=acd595(12)*acd595(42)
      acd595(43)=acd595(19)*acd595(20)
      acd595(44)=acd595(16)*acd595(48)
      acd595(42)=acd595(44)+acd595(43)+acd595(42)
      acd595(42)=acd595(11)*acd595(42)
      acd595(43)=acd595(19)*acd595(26)*acd595(48)
      acd595(39)=acd595(41)+acd595(39)+acd595(43)+acd595(42)
      brack(ninjaidxt0x0mu0)=acd595(39)
      brack(ninjaidxt0x1mu0)=acd595(40)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d595h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd595h1
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
end module     p0_dbard_epnemumnmubarg_d595h1l132
