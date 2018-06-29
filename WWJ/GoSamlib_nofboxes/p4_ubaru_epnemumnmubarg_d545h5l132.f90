module     p4_ubaru_epnemumnmubarg_d545h5l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity5d545h5l132.f90
   ! generator: buildfortran_tn3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd545h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(20) :: acd545
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd545(1)=dotproduct(k3,ninjaE3)
      acd545(2)=dotproduct(ninjaE3,spvak1k2)
      acd545(3)=dotproduct(ninjaE3,spvak7k2)
      acd545(4)=abb545(41)
      acd545(5)=dotproduct(k4,ninjaE3)
      acd545(6)=dotproduct(k5,ninjaE3)
      acd545(7)=dotproduct(k6,ninjaE3)
      acd545(8)=dotproduct(ninjaE3,spvak4k6)
      acd545(9)=abb545(13)
      acd545(10)=dotproduct(ninjaE3,spvak4k3)
      acd545(11)=abb545(25)
      acd545(12)=dotproduct(ninjaE3,spvak5k6)
      acd545(13)=abb545(32)
      acd545(14)=dotproduct(ninjaE3,spvak5k3)
      acd545(15)=abb545(34)
      acd545(16)=-acd545(7)-acd545(6)+acd545(1)+acd545(5)
      acd545(16)=acd545(4)*acd545(16)
      acd545(17)=acd545(9)*acd545(8)
      acd545(18)=acd545(11)*acd545(10)
      acd545(19)=acd545(13)*acd545(12)
      acd545(20)=acd545(15)*acd545(14)
      acd545(16)=acd545(20)+acd545(19)+acd545(18)+acd545(17)+acd545(16)
      acd545(16)=acd545(16)*acd545(3)*acd545(2)
      brack(ninjaidxt1x0mu0)=acd545(16)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd545h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(79) :: acd545
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd545(1)=dotproduct(k3,ninjaA1)
      acd545(2)=dotproduct(ninjaE3,spvak1k2)
      acd545(3)=dotproduct(ninjaE3,spvak7k2)
      acd545(4)=abb545(41)
      acd545(5)=dotproduct(k3,ninjaE3)
      acd545(6)=dotproduct(ninjaA1,spvak1k2)
      acd545(7)=dotproduct(ninjaA1,spvak7k2)
      acd545(8)=dotproduct(k4,ninjaA1)
      acd545(9)=dotproduct(k4,ninjaE3)
      acd545(10)=dotproduct(k5,ninjaA1)
      acd545(11)=dotproduct(k5,ninjaE3)
      acd545(12)=dotproduct(k6,ninjaA1)
      acd545(13)=dotproduct(k6,ninjaE3)
      acd545(14)=dotproduct(ninjaE3,spvak4k6)
      acd545(15)=abb545(13)
      acd545(16)=dotproduct(ninjaE3,spvak4k3)
      acd545(17)=abb545(25)
      acd545(18)=dotproduct(ninjaE3,spvak5k6)
      acd545(19)=abb545(32)
      acd545(20)=dotproduct(ninjaE3,spvak5k3)
      acd545(21)=abb545(34)
      acd545(22)=dotproduct(ninjaA1,spvak4k6)
      acd545(23)=dotproduct(ninjaA1,spvak4k3)
      acd545(24)=dotproduct(ninjaA1,spvak5k6)
      acd545(25)=dotproduct(ninjaA1,spvak5k3)
      acd545(26)=dotproduct(k1,ninjaE3)
      acd545(27)=abb545(28)
      acd545(28)=abb545(50)
      acd545(29)=dotproduct(ninjaE3,spvak5k2)
      acd545(30)=abb545(40)
      acd545(31)=dotproduct(ninjaE3,spvak4k2)
      acd545(32)=abb545(23)
      acd545(33)=dotproduct(ninjaE3,spvak3k2)
      acd545(34)=abb545(31)
      acd545(35)=dotproduct(ninjaE3,spvak6k2)
      acd545(36)=abb545(162)
      acd545(37)=dotproduct(k3,ninjaA0)
      acd545(38)=dotproduct(ninjaA0,spvak1k2)
      acd545(39)=dotproduct(ninjaA0,spvak7k2)
      acd545(40)=abb545(35)
      acd545(41)=dotproduct(k4,ninjaA0)
      acd545(42)=dotproduct(k5,ninjaA0)
      acd545(43)=dotproduct(k6,ninjaA0)
      acd545(44)=dotproduct(k7,ninjaE3)
      acd545(45)=abb545(79)
      acd545(46)=dotproduct(ninjaA0,ninjaE3)
      acd545(47)=abb545(43)
      acd545(48)=abb545(14)
      acd545(49)=abb545(18)
      acd545(50)=abb545(36)
      acd545(51)=abb545(105)
      acd545(52)=dotproduct(ninjaA0,spvak4k6)
      acd545(53)=dotproduct(ninjaA0,spvak4k3)
      acd545(54)=dotproduct(ninjaA0,spvak5k6)
      acd545(55)=dotproduct(ninjaA0,spvak5k3)
      acd545(56)=abb545(38)
      acd545(57)=abb545(29)
      acd545(58)=abb545(15)
      acd545(59)=abb545(20)
      acd545(60)=abb545(27)
      acd545(61)=abb545(102)
      acd545(62)=abb545(17)
      acd545(63)=abb545(24)
      acd545(64)=abb545(39)
      acd545(65)=dotproduct(ninjaE3,spvak1k7)
      acd545(66)=abb545(165)
      acd545(67)=-acd545(5)-acd545(9)+acd545(11)+acd545(13)
      acd545(68)=acd545(67)*acd545(4)
      acd545(69)=acd545(21)*acd545(20)
      acd545(70)=acd545(19)*acd545(18)
      acd545(71)=acd545(17)*acd545(16)
      acd545(72)=acd545(15)*acd545(14)
      acd545(68)=-acd545(68)+acd545(69)+acd545(70)+acd545(71)+acd545(72)
      acd545(69)=acd545(7)*acd545(68)
      acd545(70)=acd545(21)*acd545(25)
      acd545(71)=acd545(19)*acd545(24)
      acd545(72)=acd545(17)*acd545(23)
      acd545(73)=acd545(15)*acd545(22)
      acd545(74)=acd545(1)+acd545(8)-acd545(12)-acd545(10)
      acd545(74)=acd545(4)*acd545(74)
      acd545(70)=acd545(74)+acd545(73)+acd545(72)+acd545(70)+acd545(71)
      acd545(70)=acd545(3)*acd545(70)
      acd545(69)=acd545(70)+acd545(69)
      acd545(69)=acd545(2)*acd545(69)
      acd545(70)=acd545(3)*acd545(6)*acd545(68)
      acd545(69)=acd545(70)+acd545(69)
      acd545(70)=acd545(38)*acd545(68)
      acd545(71)=2.0_ki*acd545(46)
      acd545(72)=-acd545(44)-acd545(71)
      acd545(72)=acd545(45)*acd545(72)
      acd545(73)=-acd545(47)*acd545(65)
      acd545(74)=acd545(35)*acd545(66)
      acd545(75)=acd545(33)*acd545(64)
      acd545(76)=acd545(31)*acd545(63)
      acd545(77)=acd545(29)*acd545(62)
      acd545(78)=acd545(26)*acd545(28)
      acd545(79)=acd545(3)*acd545(61)
      acd545(70)=acd545(79)+acd545(78)+acd545(77)+acd545(76)+acd545(75)+acd545(&
      &73)+acd545(74)+acd545(70)+acd545(72)
      acd545(70)=acd545(3)*acd545(70)
      acd545(68)=acd545(39)*acd545(68)
      acd545(72)=acd545(21)*acd545(55)
      acd545(73)=acd545(19)*acd545(54)
      acd545(74)=acd545(17)*acd545(53)
      acd545(75)=acd545(15)*acd545(52)
      acd545(76)=acd545(37)+acd545(41)-acd545(43)-acd545(42)
      acd545(76)=acd545(4)*acd545(76)
      acd545(72)=acd545(76)+acd545(75)+acd545(74)+acd545(73)+acd545(57)+acd545(&
      &72)
      acd545(72)=acd545(3)*acd545(72)
      acd545(73)=acd545(26)-acd545(44)
      acd545(74)=-acd545(27)*acd545(73)
      acd545(67)=acd545(40)*acd545(67)
      acd545(75)=acd545(20)*acd545(60)
      acd545(76)=acd545(18)*acd545(59)
      acd545(77)=acd545(16)*acd545(58)
      acd545(78)=acd545(14)*acd545(56)
      acd545(79)=acd545(47)*acd545(71)
      acd545(67)=acd545(72)+acd545(79)+acd545(78)+acd545(77)+acd545(75)+acd545(&
      &76)+acd545(67)+acd545(68)+acd545(74)
      acd545(67)=acd545(2)*acd545(67)
      acd545(68)=acd545(35)*acd545(36)
      acd545(72)=acd545(33)*acd545(34)
      acd545(74)=acd545(31)*acd545(32)
      acd545(75)=acd545(29)*acd545(30)
      acd545(68)=acd545(72)+acd545(68)+acd545(74)-acd545(75)
      acd545(68)=-acd545(68)*acd545(73)
      acd545(72)=acd545(35)*acd545(51)
      acd545(73)=acd545(33)*acd545(50)
      acd545(74)=acd545(31)*acd545(49)
      acd545(75)=acd545(29)*acd545(48)
      acd545(72)=acd545(75)+acd545(74)+acd545(72)+acd545(73)
      acd545(71)=acd545(72)*acd545(71)
      acd545(67)=acd545(67)+acd545(70)+acd545(71)+acd545(68)
      brack(ninjaidxt0x0mu0)=acd545(67)
      brack(ninjaidxt0x1mu0)=acd545(69)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d545h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd545h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
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
end module     p4_ubaru_epnemumnmubarg_d545h5l132
