module     p12_sbars_epnemumnmubarg_d591h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d591h5l132.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd591h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(19) :: acd591
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd591(1)=dotproduct(k2,ninjaE3)
      acd591(2)=dotproduct(ninjaE3,spvak4k3)
      acd591(3)=dotproduct(ninjaE3,spvak7k2)
      acd591(4)=abb591(27)
      acd591(5)=dotproduct(k5,ninjaE3)
      acd591(6)=dotproduct(k6,ninjaE3)
      acd591(7)=dotproduct(ninjaE3,spvak5k2)
      acd591(8)=abb591(16)
      acd591(9)=dotproduct(ninjaE3,spvak1k2)
      acd591(10)=abb591(17)
      acd591(11)=dotproduct(ninjaE3,spvak1k6)
      acd591(12)=abb591(25)
      acd591(13)=dotproduct(ninjaE3,spvak5k6)
      acd591(14)=abb591(28)
      acd591(15)=-acd591(6)+acd591(1)-acd591(5)
      acd591(15)=acd591(4)*acd591(15)
      acd591(16)=acd591(8)*acd591(7)
      acd591(17)=acd591(10)*acd591(9)
      acd591(18)=acd591(12)*acd591(11)
      acd591(19)=acd591(14)*acd591(13)
      acd591(15)=acd591(19)+acd591(18)+acd591(17)+acd591(16)+acd591(15)
      acd591(15)=acd591(15)*acd591(3)*acd591(2)
      brack(ninjaidxt1x0mu0)=acd591(15)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd591h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(70) :: acd591
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd591(1)=dotproduct(k2,ninjaA1)
      acd591(2)=dotproduct(ninjaE3,spvak4k3)
      acd591(3)=dotproduct(ninjaE3,spvak7k2)
      acd591(4)=abb591(27)
      acd591(5)=dotproduct(k2,ninjaE3)
      acd591(6)=dotproduct(ninjaA1,spvak4k3)
      acd591(7)=dotproduct(ninjaA1,spvak7k2)
      acd591(8)=dotproduct(k5,ninjaA1)
      acd591(9)=dotproduct(k5,ninjaE3)
      acd591(10)=dotproduct(k6,ninjaA1)
      acd591(11)=dotproduct(k6,ninjaE3)
      acd591(12)=dotproduct(ninjaA1,spvak1k2)
      acd591(13)=abb591(17)
      acd591(14)=dotproduct(ninjaE3,spvak1k2)
      acd591(15)=dotproduct(ninjaE3,spvak5k2)
      acd591(16)=abb591(16)
      acd591(17)=dotproduct(ninjaE3,spvak5k6)
      acd591(18)=abb591(28)
      acd591(19)=dotproduct(ninjaE3,spvak1k6)
      acd591(20)=abb591(25)
      acd591(21)=dotproduct(ninjaA1,spvak5k2)
      acd591(22)=dotproduct(ninjaA1,spvak5k6)
      acd591(23)=dotproduct(ninjaA1,spvak1k6)
      acd591(24)=dotproduct(k2,ninjaA0)
      acd591(25)=dotproduct(k3,ninjaE3)
      acd591(26)=abb591(19)
      acd591(27)=dotproduct(k4,ninjaE3)
      acd591(28)=dotproduct(ninjaA0,ninjaE3)
      acd591(29)=abb591(21)
      acd591(30)=dotproduct(ninjaA0,spvak4k3)
      acd591(31)=dotproduct(ninjaA0,spvak7k2)
      acd591(32)=abb591(41)
      acd591(33)=abb591(40)
      acd591(34)=dotproduct(ninjaE3,spvak1k3)
      acd591(35)=abb591(29)
      acd591(36)=abb591(34)
      acd591(37)=abb591(35)
      acd591(38)=dotproduct(k5,ninjaA0)
      acd591(39)=dotproduct(k6,ninjaA0)
      acd591(40)=dotproduct(k7,ninjaE3)
      acd591(41)=abb591(26)
      acd591(42)=abb591(30)
      acd591(43)=abb591(38)
      acd591(44)=abb591(36)
      acd591(45)=dotproduct(ninjaA0,spvak1k2)
      acd591(46)=dotproduct(ninjaA0,spvak5k2)
      acd591(47)=dotproduct(ninjaA0,spvak5k6)
      acd591(48)=dotproduct(ninjaA0,spvak1k6)
      acd591(49)=abb591(7)
      acd591(50)=abb591(8)
      acd591(51)=abb591(9)
      acd591(52)=abb591(10)
      acd591(53)=abb591(12)
      acd591(54)=dotproduct(ninjaE3,spvak1k4)
      acd591(55)=abb591(15)
      acd591(56)=acd591(20)*acd591(23)
      acd591(57)=acd591(18)*acd591(22)
      acd591(58)=acd591(16)*acd591(21)
      acd591(59)=acd591(13)*acd591(12)
      acd591(60)=acd591(1)-acd591(10)-acd591(8)
      acd591(60)=acd591(4)*acd591(60)
      acd591(56)=acd591(60)+acd591(59)+acd591(58)+acd591(56)+acd591(57)
      acd591(56)=acd591(3)*acd591(56)
      acd591(57)=acd591(20)*acd591(19)
      acd591(58)=acd591(13)*acd591(14)
      acd591(57)=acd591(57)+acd591(58)
      acd591(58)=-acd591(11)+acd591(5)-acd591(9)
      acd591(59)=acd591(58)*acd591(4)
      acd591(60)=acd591(17)*acd591(18)
      acd591(61)=acd591(15)*acd591(16)
      acd591(60)=acd591(59)+acd591(57)+acd591(60)+acd591(61)
      acd591(61)=acd591(7)*acd591(60)
      acd591(56)=acd591(56)+acd591(61)
      acd591(56)=acd591(2)*acd591(56)
      acd591(61)=acd591(3)*acd591(6)*acd591(60)
      acd591(56)=acd591(61)+acd591(56)
      acd591(61)=acd591(20)*acd591(48)
      acd591(62)=acd591(18)*acd591(47)
      acd591(63)=acd591(16)*acd591(46)
      acd591(64)=acd591(13)*acd591(45)
      acd591(65)=acd591(24)-acd591(39)-acd591(38)
      acd591(65)=acd591(4)*acd591(65)
      acd591(61)=acd591(65)+acd591(64)+acd591(63)+acd591(62)+acd591(50)+acd591(&
      &61)
      acd591(61)=acd591(3)*acd591(61)
      acd591(57)=acd591(59)+acd591(57)
      acd591(57)=acd591(31)*acd591(57)
      acd591(59)=acd591(25)+acd591(27)
      acd591(62)=-acd591(40)-acd591(59)
      acd591(62)=acd591(33)*acd591(62)
      acd591(63)=acd591(32)*acd591(58)
      acd591(64)=-acd591(42)*acd591(54)
      acd591(65)=acd591(34)*acd591(51)
      acd591(66)=acd591(14)*acd591(49)
      acd591(67)=2.0_ki*acd591(28)
      acd591(68)=acd591(41)*acd591(67)
      acd591(69)=acd591(31)*acd591(18)
      acd591(69)=acd591(53)+acd591(69)
      acd591(69)=acd591(17)*acd591(69)
      acd591(70)=acd591(31)*acd591(16)
      acd591(70)=acd591(52)+acd591(70)
      acd591(70)=acd591(15)*acd591(70)
      acd591(57)=acd591(61)+acd591(70)+acd591(69)+acd591(68)+acd591(66)+acd591(&
      &65)+acd591(64)+acd591(63)+acd591(62)+acd591(57)
      acd591(57)=acd591(2)*acd591(57)
      acd591(60)=acd591(30)*acd591(60)
      acd591(61)=acd591(34)*acd591(55)
      acd591(60)=acd591(61)+acd591(60)
      acd591(60)=acd591(3)*acd591(60)
      acd591(61)=acd591(59)*acd591(35)
      acd591(62)=-acd591(42)*acd591(67)
      acd591(61)=acd591(62)+acd591(61)
      acd591(61)=acd591(34)*acd591(61)
      acd591(62)=acd591(26)*acd591(59)
      acd591(63)=acd591(67)*acd591(29)
      acd591(62)=acd591(62)-acd591(63)
      acd591(58)=-acd591(62)*acd591(58)
      acd591(62)=-acd591(37)*acd591(59)
      acd591(63)=acd591(44)*acd591(67)
      acd591(62)=acd591(63)+acd591(62)
      acd591(62)=acd591(17)*acd591(62)
      acd591(59)=-acd591(36)*acd591(59)
      acd591(63)=acd591(43)*acd591(67)
      acd591(59)=acd591(63)+acd591(59)
      acd591(59)=acd591(15)*acd591(59)
      acd591(57)=acd591(57)+acd591(60)+acd591(59)+acd591(62)+acd591(58)+acd591(&
      &61)
      brack(ninjaidxt0x0mu0)=acd591(57)
      brack(ninjaidxt0x1mu0)=acd591(56)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d591h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd591h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
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
end module     p12_sbars_epnemumnmubarg_d591h5l132
