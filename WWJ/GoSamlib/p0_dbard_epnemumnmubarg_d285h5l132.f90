module     p0_dbard_epnemumnmubarg_d285h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity5d285h5l132.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd285h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(24) :: acd285
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd285(1)=dotproduct(k2,ninjaE3)
      acd285(2)=dotproduct(ninjaE3,spvak4k3)
      acd285(3)=abb285(21)
      acd285(4)=dotproduct(k5,ninjaE3)
      acd285(5)=dotproduct(k6,ninjaE3)
      acd285(6)=dotproduct(ninjaE3,spvak5k2)
      acd285(7)=abb285(8)
      acd285(8)=dotproduct(ninjaE3,spvak1k6)
      acd285(9)=abb285(9)
      acd285(10)=dotproduct(ninjaE3,spvak5k6)
      acd285(11)=abb285(10)
      acd285(12)=dotproduct(ninjaE3,spvak1k2)
      acd285(13)=abb285(14)
      acd285(14)=dotproduct(ninjaE3,spvak7k2)
      acd285(15)=abb285(24)
      acd285(16)=dotproduct(ninjaE3,spvak7k6)
      acd285(17)=abb285(25)
      acd285(18)=acd285(5)-acd285(1)+acd285(4)
      acd285(18)=acd285(18)*acd285(3)
      acd285(19)=acd285(7)*acd285(6)
      acd285(20)=acd285(9)*acd285(8)
      acd285(21)=acd285(11)*acd285(10)
      acd285(22)=acd285(13)*acd285(12)
      acd285(23)=acd285(15)*acd285(14)
      acd285(24)=acd285(17)*acd285(16)
      acd285(18)=acd285(18)+acd285(24)+acd285(23)+acd285(22)+acd285(21)+acd285(&
      &20)+acd285(19)
      acd285(18)=acd285(2)*acd285(18)
      brack(ninjaidxt1x0mu0)=acd285(18)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd285h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(56) :: acd285
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd285(1)=dotproduct(k2,ninjaA1)
      acd285(2)=dotproduct(ninjaE3,spvak4k3)
      acd285(3)=abb285(21)
      acd285(4)=dotproduct(k2,ninjaE3)
      acd285(5)=dotproduct(ninjaA1,spvak4k3)
      acd285(6)=dotproduct(k5,ninjaA1)
      acd285(7)=dotproduct(k5,ninjaE3)
      acd285(8)=dotproduct(k6,ninjaA1)
      acd285(9)=dotproduct(k6,ninjaE3)
      acd285(10)=dotproduct(ninjaE3,spvak5k2)
      acd285(11)=abb285(8)
      acd285(12)=dotproduct(ninjaE3,spvak1k6)
      acd285(13)=abb285(9)
      acd285(14)=dotproduct(ninjaE3,spvak5k6)
      acd285(15)=abb285(10)
      acd285(16)=dotproduct(ninjaE3,spvak1k2)
      acd285(17)=abb285(14)
      acd285(18)=dotproduct(ninjaE3,spvak7k2)
      acd285(19)=abb285(24)
      acd285(20)=dotproduct(ninjaE3,spvak7k6)
      acd285(21)=abb285(25)
      acd285(22)=dotproduct(ninjaA1,spvak5k2)
      acd285(23)=dotproduct(ninjaA1,spvak1k6)
      acd285(24)=dotproduct(ninjaA1,spvak5k6)
      acd285(25)=dotproduct(ninjaA1,spvak1k2)
      acd285(26)=dotproduct(ninjaA1,spvak7k2)
      acd285(27)=dotproduct(ninjaA1,spvak7k6)
      acd285(28)=dotproduct(k2,ninjaA0)
      acd285(29)=dotproduct(ninjaA0,spvak4k3)
      acd285(30)=dotproduct(k3,ninjaE3)
      acd285(31)=abb285(17)
      acd285(32)=dotproduct(k4,ninjaE3)
      acd285(33)=dotproduct(k5,ninjaA0)
      acd285(34)=dotproduct(k6,ninjaA0)
      acd285(35)=dotproduct(ninjaA0,ninjaE3)
      acd285(36)=abb285(13)
      acd285(37)=dotproduct(ninjaA0,spvak5k2)
      acd285(38)=dotproduct(ninjaA0,spvak1k6)
      acd285(39)=dotproduct(ninjaA0,spvak5k6)
      acd285(40)=dotproduct(ninjaA0,spvak1k2)
      acd285(41)=dotproduct(ninjaA0,spvak7k2)
      acd285(42)=dotproduct(ninjaA0,spvak7k6)
      acd285(43)=abb285(12)
      acd285(44)=dotproduct(ninjaE3,spvak1k3)
      acd285(45)=abb285(11)
      acd285(46)=dotproduct(ninjaE3,spvak7k3)
      acd285(47)=abb285(19)
      acd285(48)=-acd285(9)+acd285(4)-acd285(7)
      acd285(48)=acd285(48)*acd285(3)
      acd285(49)=acd285(21)*acd285(20)
      acd285(50)=acd285(19)*acd285(18)
      acd285(51)=acd285(17)*acd285(16)
      acd285(52)=acd285(15)*acd285(14)
      acd285(53)=acd285(13)*acd285(12)
      acd285(54)=acd285(11)*acd285(10)
      acd285(48)=-acd285(48)+acd285(49)+acd285(50)+acd285(51)+acd285(52)+acd285&
      &(53)+acd285(54)
      acd285(49)=acd285(5)*acd285(48)
      acd285(50)=acd285(21)*acd285(27)
      acd285(51)=acd285(19)*acd285(26)
      acd285(52)=acd285(17)*acd285(25)
      acd285(53)=acd285(15)*acd285(24)
      acd285(54)=acd285(13)*acd285(23)
      acd285(55)=acd285(11)*acd285(22)
      acd285(56)=-acd285(1)+acd285(8)+acd285(6)
      acd285(56)=acd285(3)*acd285(56)
      acd285(50)=acd285(56)+acd285(55)+acd285(54)+acd285(53)+acd285(52)+acd285(&
      &50)+acd285(51)
      acd285(50)=acd285(2)*acd285(50)
      acd285(49)=acd285(50)+acd285(49)
      acd285(48)=acd285(29)*acd285(48)
      acd285(50)=acd285(21)*acd285(42)
      acd285(51)=acd285(19)*acd285(41)
      acd285(52)=acd285(17)*acd285(40)
      acd285(53)=acd285(15)*acd285(39)
      acd285(54)=acd285(13)*acd285(38)
      acd285(55)=acd285(11)*acd285(37)
      acd285(56)=-acd285(28)+acd285(34)+acd285(33)
      acd285(56)=acd285(3)*acd285(56)
      acd285(50)=acd285(56)+acd285(55)+acd285(54)+acd285(53)+acd285(52)+acd285(&
      &51)+acd285(43)+acd285(50)
      acd285(50)=acd285(2)*acd285(50)
      acd285(51)=acd285(46)*acd285(47)
      acd285(52)=acd285(44)*acd285(45)
      acd285(53)=acd285(35)*acd285(36)
      acd285(54)=acd285(32)+acd285(30)
      acd285(54)=acd285(31)*acd285(54)
      acd285(48)=acd285(50)+acd285(54)+2.0_ki*acd285(53)+acd285(51)+acd285(52)+&
      &acd285(48)
      brack(ninjaidxt0x0mu0)=acd285(48)
      brack(ninjaidxt0x1mu0)=acd285(49)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d285h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd285h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k6-k5-k4
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
end module     p0_dbard_epnemumnmubarg_d285h5l132
