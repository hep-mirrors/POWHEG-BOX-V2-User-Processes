module     p4_ubaru_epnemumnmubarg_d33h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity1d33h1l131.f90
   ! generator: buildfortran_tn3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd33h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(5) :: acd33
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd33(1)=dotproduct(ninjaE3,spvak1k2)
      acd33(2)=dotproduct(ninjaE3,spvak4k3)
      acd33(3)=dotproduct(ninjaE3,spvak5k6)
      acd33(4)=abb33(31)
      acd33(5)=acd33(4)*acd33(3)*acd33(2)*acd33(1)
      brack(ninjaidxt2mu0)=acd33(5)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd33h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(78) :: acd33
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd33(1)=dotproduct(ninjaE3,spvak4k2)
      acd33(2)=abb33(19)
      acd33(3)=dotproduct(ninjaE3,spvak5k6)
      acd33(4)=dotproduct(ninjaE3,spvak4k3)
      acd33(5)=dotproduct(ninjaE4,spvak1k2)
      acd33(6)=abb33(31)
      acd33(7)=dotproduct(ninjaE3,spvak1k2)
      acd33(8)=dotproduct(ninjaE4,spvak4k3)
      acd33(9)=abb33(33)
      acd33(10)=dotproduct(ninjaE4,spvak5k6)
      acd33(11)=dotproduct(ninjaE3,spvak5k2)
      acd33(12)=abb33(34)
      acd33(13)=dotproduct(ninjaE3,spvak1k6)
      acd33(14)=abb33(18)
      acd33(15)=dotproduct(k1,ninjaE3)
      acd33(16)=abb33(22)
      acd33(17)=dotproduct(k2,ninjaE3)
      acd33(18)=abb33(15)
      acd33(19)=abb33(30)
      acd33(20)=abb33(35)
      acd33(21)=abb33(23)
      acd33(22)=dotproduct(k3,ninjaE3)
      acd33(23)=dotproduct(k4,ninjaE3)
      acd33(24)=dotproduct(ninjaA,ninjaE3)
      acd33(25)=dotproduct(ninjaA,spvak5k6)
      acd33(26)=dotproduct(ninjaA,spvak4k3)
      acd33(27)=dotproduct(ninjaA,spvak1k2)
      acd33(28)=dotproduct(ninjaE3,spvak1k7)
      acd33(29)=abb33(12)
      acd33(30)=abb33(17)
      acd33(31)=abb33(37)
      acd33(32)=dotproduct(ninjaE3,spvak1k3)
      acd33(33)=abb33(9)
      acd33(34)=abb33(27)
      acd33(35)=abb33(14)
      acd33(36)=abb33(26)
      acd33(37)=dotproduct(ninjaE3,spvak3k2)
      acd33(38)=abb33(25)
      acd33(39)=dotproduct(ninjaE3,spvak7k2)
      acd33(40)=abb33(38)
      acd33(41)=dotproduct(k1,ninjaA)
      acd33(42)=abb33(21)
      acd33(43)=dotproduct(k2,ninjaA)
      acd33(44)=dotproduct(ninjaA,spvak4k2)
      acd33(45)=dotproduct(ninjaA,spvak5k2)
      acd33(46)=dotproduct(ninjaA,spvak1k6)
      acd33(47)=abb33(29)
      acd33(48)=dotproduct(k3,ninjaA)
      acd33(49)=abb33(24)
      acd33(50)=dotproduct(k4,ninjaA)
      acd33(51)=dotproduct(ninjaA,ninjaA)
      acd33(52)=abb33(11)
      acd33(53)=dotproduct(ninjaA,spvak1k7)
      acd33(54)=dotproduct(ninjaA,spvak1k3)
      acd33(55)=dotproduct(ninjaA,spvak3k2)
      acd33(56)=dotproduct(ninjaA,spvak7k2)
      acd33(57)=abb33(7)
      acd33(58)=abb33(8)
      acd33(59)=abb33(16)
      acd33(60)=abb33(13)
      acd33(61)=abb33(20)
      acd33(62)=acd33(3)*acd33(6)
      acd33(63)=acd33(62)*acd33(5)
      acd33(64)=acd33(6)*acd33(7)
      acd33(65)=acd33(10)*acd33(64)
      acd33(65)=acd33(65)+acd33(63)
      acd33(65)=acd33(4)*acd33(65)
      acd33(66)=acd33(13)*acd33(14)
      acd33(67)=acd33(11)*acd33(12)
      acd33(68)=-acd33(1)*acd33(2)
      acd33(69)=acd33(8)*acd33(64)
      acd33(69)=acd33(9)+acd33(69)
      acd33(69)=acd33(3)*acd33(69)
      acd33(65)=acd33(65)+acd33(69)+acd33(68)+acd33(66)+acd33(67)
      acd33(66)=acd33(17)+acd33(15)
      acd33(66)=acd33(66)*acd33(16)
      acd33(67)=acd33(40)*acd33(39)
      acd33(68)=acd33(28)*acd33(29)
      acd33(69)=acd33(2)*acd33(37)
      acd33(70)=acd33(7)*acd33(38)
      acd33(71)=acd33(64)*acd33(25)
      acd33(66)=acd33(71)+acd33(70)-acd33(66)+acd33(67)+acd33(68)+acd33(69)
      acd33(67)=acd33(13)*acd33(36)
      acd33(68)=acd33(11)*acd33(35)
      acd33(69)=acd33(1)*acd33(31)
      acd33(62)=acd33(27)*acd33(62)
      acd33(62)=acd33(62)+acd33(69)+acd33(68)+acd33(67)+acd33(66)
      acd33(62)=acd33(4)*acd33(62)
      acd33(67)=acd33(7)*acd33(34)
      acd33(68)=acd33(33)*acd33(32)
      acd33(67)=acd33(67)+acd33(68)
      acd33(68)=2.0_ki*acd33(24)
      acd33(69)=acd33(9)*acd33(68)
      acd33(70)=acd33(17)*acd33(19)
      acd33(64)=acd33(26)*acd33(64)
      acd33(71)=acd33(1)*acd33(30)
      acd33(64)=acd33(71)+acd33(64)+acd33(70)+acd33(69)+acd33(67)
      acd33(64)=acd33(3)*acd33(64)
      acd33(69)=acd33(22)+acd33(23)
      acd33(70)=acd33(69)-acd33(17)
      acd33(71)=-acd33(21)*acd33(70)
      acd33(72)=acd33(14)*acd33(68)
      acd33(71)=acd33(72)+acd33(71)
      acd33(71)=acd33(13)*acd33(71)
      acd33(72)=acd33(20)*acd33(70)
      acd33(73)=acd33(12)*acd33(68)
      acd33(72)=acd33(73)+acd33(72)
      acd33(72)=acd33(11)*acd33(72)
      acd33(70)=-acd33(18)*acd33(70)
      acd33(73)=-acd33(2)*acd33(68)
      acd33(70)=acd33(73)+acd33(70)
      acd33(70)=acd33(1)*acd33(70)
      acd33(62)=acd33(62)+acd33(64)+acd33(70)+acd33(71)+acd33(72)
      acd33(64)=acd33(25)*acd33(27)
      acd33(70)=acd33(7)*ninjaP
      acd33(71)=acd33(10)*acd33(70)
      acd33(64)=acd33(64)+acd33(71)
      acd33(64)=acd33(6)*acd33(64)
      acd33(71)=acd33(40)*acd33(56)
      acd33(72)=acd33(29)*acd33(53)
      acd33(73)=acd33(46)*acd33(36)
      acd33(74)=acd33(45)*acd33(35)
      acd33(75)=acd33(27)*acd33(38)
      acd33(76)=acd33(44)*acd33(31)
      acd33(77)=-acd33(41)-acd33(43)
      acd33(77)=acd33(16)*acd33(77)
      acd33(78)=acd33(2)*acd33(55)
      acd33(63)=ninjaP*acd33(63)
      acd33(63)=acd33(63)+acd33(64)+acd33(78)+acd33(77)+acd33(76)+acd33(75)+acd&
      &33(74)+acd33(73)+acd33(72)+acd33(60)+acd33(71)
      acd33(63)=acd33(4)*acd33(63)
      acd33(64)=acd33(26)*acd33(66)
      acd33(66)=acd33(8)*acd33(70)
      acd33(70)=acd33(26)*acd33(27)
      acd33(66)=acd33(66)+acd33(70)
      acd33(66)=acd33(6)*acd33(66)
      acd33(70)=ninjaP+acd33(51)
      acd33(71)=acd33(9)*acd33(70)
      acd33(72)=acd33(33)*acd33(54)
      acd33(73)=acd33(43)*acd33(19)
      acd33(74)=acd33(27)*acd33(34)
      acd33(75)=acd33(44)*acd33(30)
      acd33(66)=acd33(66)+acd33(75)+acd33(74)+acd33(73)+acd33(59)+acd33(72)+acd&
      &33(71)
      acd33(66)=acd33(3)*acd33(66)
      acd33(71)=acd33(14)*acd33(46)
      acd33(72)=acd33(12)*acd33(45)
      acd33(73)=acd33(25)*acd33(9)
      acd33(74)=-acd33(2)*acd33(44)
      acd33(71)=acd33(74)+acd33(73)+acd33(72)+acd33(52)+acd33(71)
      acd33(68)=acd33(71)*acd33(68)
      acd33(71)=acd33(25)*acd33(30)
      acd33(72)=-acd33(2)*acd33(70)
      acd33(73)=-acd33(50)+acd33(43)-acd33(48)
      acd33(74)=acd33(18)*acd33(73)
      acd33(75)=acd33(26)*acd33(31)
      acd33(71)=acd33(75)+acd33(74)+acd33(72)+acd33(58)+acd33(71)
      acd33(71)=acd33(1)*acd33(71)
      acd33(72)=acd33(21)*acd33(46)
      acd33(74)=acd33(20)*acd33(45)
      acd33(75)=acd33(18)*acd33(44)
      acd33(72)=acd33(75)+acd33(72)-acd33(74)
      acd33(74)=acd33(49)-acd33(72)
      acd33(69)=acd33(69)*acd33(74)
      acd33(74)=acd33(25)*acd33(19)
      acd33(72)=acd33(47)+acd33(74)+acd33(72)
      acd33(72)=acd33(17)*acd33(72)
      acd33(74)=acd33(14)*acd33(70)
      acd33(75)=acd33(21)*acd33(73)
      acd33(76)=acd33(26)*acd33(36)
      acd33(74)=acd33(76)+acd33(75)+acd33(74)
      acd33(74)=acd33(13)*acd33(74)
      acd33(70)=acd33(12)*acd33(70)
      acd33(73)=-acd33(20)*acd33(73)
      acd33(75)=acd33(26)*acd33(35)
      acd33(70)=acd33(75)+acd33(73)+acd33(70)
      acd33(70)=acd33(11)*acd33(70)
      acd33(67)=acd33(25)*acd33(67)
      acd33(73)=acd33(37)*acd33(61)
      acd33(75)=acd33(28)*acd33(57)
      acd33(76)=acd33(15)*acd33(42)
      acd33(63)=acd33(63)+acd33(66)+acd33(71)+acd33(70)+acd33(74)+acd33(72)+acd&
      &33(68)+acd33(76)+acd33(73)+acd33(75)+acd33(64)+acd33(69)+acd33(67)
      brack(ninjaidxt1mu0)=acd33(62)
      brack(ninjaidxt0mu0)=acd33(63)
      brack(ninjaidxt0mu2)=acd33(65)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d33h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd33h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p4_ubaru_epnemumnmubarg_d33h1l131
