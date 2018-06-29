module     p8_cbarc_epnemumnmubarg_d37h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity1d37h1l131.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd37h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd37
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd37(1)=dotproduct(k7,ninjaE3)
      acd37(2)=dotproduct(ninjaE3,spvak4k3)
      acd37(3)=dotproduct(ninjaE3,spvak5k6)
      acd37(4)=abb37(20)
      acd37(5)=dotproduct(ninjaE3,spvak2k7)
      acd37(6)=abb37(30)
      acd37(7)=dotproduct(ninjaE3,spvak1k7)
      acd37(8)=abb37(31)
      acd37(9)=acd37(4)*acd37(1)
      acd37(10)=acd37(6)*acd37(5)
      acd37(11)=acd37(8)*acd37(7)
      acd37(9)=acd37(11)+acd37(9)+acd37(10)
      acd37(9)=acd37(9)*acd37(3)*acd37(2)
      brack(ninjaidxt2mu0)=acd37(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd37h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(80) :: acd37
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd37(1)=dotproduct(k7,ninjaE3)
      acd37(2)=dotproduct(ninjaE3,spvak5k6)
      acd37(3)=dotproduct(ninjaE4,spvak4k3)
      acd37(4)=abb37(20)
      acd37(5)=dotproduct(ninjaE3,spvak4k3)
      acd37(6)=dotproduct(ninjaE4,spvak5k6)
      acd37(7)=abb37(29)
      acd37(8)=dotproduct(k7,ninjaE4)
      acd37(9)=dotproduct(ninjaE3,spvak2k7)
      acd37(10)=abb37(30)
      acd37(11)=abb37(16)
      acd37(12)=dotproduct(ninjaE4,spvak2k7)
      acd37(13)=dotproduct(ninjaE4,spvak1k7)
      acd37(14)=abb37(31)
      acd37(15)=dotproduct(ninjaE3,spvak1k7)
      acd37(16)=abb37(28)
      acd37(17)=dotproduct(ninjaE3,spvak1k6)
      acd37(18)=abb37(18)
      acd37(19)=dotproduct(k1,ninjaE3)
      acd37(20)=abb37(45)
      acd37(21)=abb37(25)
      acd37(22)=abb37(32)
      acd37(23)=abb37(33)
      acd37(24)=abb37(17)
      acd37(25)=dotproduct(k2,ninjaE3)
      acd37(26)=dotproduct(k5,ninjaE3)
      acd37(27)=dotproduct(k6,ninjaE3)
      acd37(28)=dotproduct(k7,ninjaA)
      acd37(29)=dotproduct(ninjaA,ninjaE3)
      acd37(30)=dotproduct(ninjaA,spvak5k6)
      acd37(31)=dotproduct(ninjaA,spvak4k3)
      acd37(32)=abb37(14)
      acd37(33)=abb37(44)
      acd37(34)=dotproduct(ninjaA,spvak2k7)
      acd37(35)=dotproduct(ninjaA,spvak1k7)
      acd37(36)=abb37(9)
      acd37(37)=abb37(23)
      acd37(38)=abb37(13)
      acd37(39)=abb37(53)
      acd37(40)=dotproduct(ninjaE3,spvak1k3)
      acd37(41)=abb37(15)
      acd37(42)=dotproduct(ninjaE3,spvak1k5)
      acd37(43)=abb37(12)
      acd37(44)=dotproduct(k1,ninjaA)
      acd37(45)=dotproduct(ninjaA,spvak1k6)
      acd37(46)=abb37(8)
      acd37(47)=dotproduct(k2,ninjaA)
      acd37(48)=abb37(51)
      acd37(49)=dotproduct(k5,ninjaA)
      acd37(50)=abb37(41)
      acd37(51)=dotproduct(k6,ninjaA)
      acd37(52)=dotproduct(ninjaA,ninjaA)
      acd37(53)=abb37(27)
      acd37(54)=abb37(19)
      acd37(55)=dotproduct(ninjaA,spvak1k3)
      acd37(56)=dotproduct(ninjaA,spvak1k5)
      acd37(57)=abb37(7)
      acd37(58)=abb37(10)
      acd37(59)=abb37(26)
      acd37(60)=abb37(24)
      acd37(61)=acd37(9)*acd37(10)
      acd37(62)=acd37(1)*acd37(4)
      acd37(63)=acd37(14)*acd37(15)
      acd37(61)=acd37(63)+acd37(61)+acd37(62)
      acd37(62)=acd37(61)*acd37(3)
      acd37(64)=acd37(14)*acd37(13)
      acd37(65)=acd37(10)*acd37(12)
      acd37(66)=acd37(4)*acd37(8)
      acd37(64)=acd37(66)+acd37(64)+acd37(65)
      acd37(64)=acd37(64)*acd37(5)
      acd37(62)=acd37(62)+acd37(64)+acd37(16)
      acd37(64)=acd37(2)*acd37(62)
      acd37(61)=acd37(61)*acd37(6)
      acd37(65)=acd37(5)*acd37(61)
      acd37(66)=acd37(17)*acd37(18)
      acd37(67)=acd37(9)*acd37(11)
      acd37(68)=acd37(1)*acd37(7)
      acd37(64)=acd37(64)+acd37(65)+acd37(68)+acd37(66)+acd37(67)
      acd37(65)=acd37(19)-acd37(25)
      acd37(65)=acd37(65)*acd37(22)
      acd37(66)=acd37(41)*acd37(40)
      acd37(67)=acd37(18)*acd37(42)
      acd37(68)=acd37(17)*acd37(38)
      acd37(69)=acd37(63)*acd37(31)
      acd37(70)=2.0_ki*acd37(29)
      acd37(71)=acd37(70)*acd37(16)
      acd37(65)=-acd37(65)-acd37(66)-acd37(68)-acd37(69)+acd37(67)-acd37(71)
      acd37(66)=acd37(14)*acd37(35)
      acd37(67)=acd37(10)*acd37(34)
      acd37(68)=acd37(4)*acd37(28)
      acd37(66)=acd37(66)+acd37(67)+acd37(68)+acd37(39)
      acd37(67)=acd37(5)*acd37(66)
      acd37(68)=acd37(31)*acd37(10)
      acd37(68)=acd37(68)+acd37(36)
      acd37(69)=acd37(9)*acd37(68)
      acd37(71)=acd37(31)*acd37(4)
      acd37(71)=acd37(71)+acd37(32)
      acd37(72)=acd37(1)*acd37(71)
      acd37(67)=acd37(67)+acd37(72)+acd37(69)-acd37(65)
      acd37(67)=acd37(2)*acd37(67)
      acd37(69)=acd37(19)*acd37(24)
      acd37(72)=acd37(17)*acd37(43)
      acd37(63)=acd37(30)*acd37(63)
      acd37(73)=acd37(30)*acd37(10)
      acd37(73)=acd37(37)+acd37(73)
      acd37(73)=acd37(9)*acd37(73)
      acd37(74)=acd37(30)*acd37(4)
      acd37(74)=acd37(33)+acd37(74)
      acd37(74)=acd37(1)*acd37(74)
      acd37(63)=acd37(74)+acd37(73)+acd37(63)+acd37(69)+acd37(72)
      acd37(63)=acd37(5)*acd37(63)
      acd37(69)=acd37(26)+acd37(27)
      acd37(72)=acd37(69)*acd37(21)
      acd37(73)=acd37(11)*acd37(70)
      acd37(74)=acd37(19)*acd37(21)
      acd37(73)=acd37(74)+acd37(73)-acd37(72)
      acd37(73)=acd37(9)*acd37(73)
      acd37(74)=-acd37(19)+acd37(69)
      acd37(74)=acd37(23)*acd37(74)
      acd37(75)=acd37(18)*acd37(70)
      acd37(74)=acd37(75)+acd37(74)
      acd37(74)=acd37(17)*acd37(74)
      acd37(75)=acd37(70)*acd37(7)
      acd37(76)=acd37(69)*acd37(20)
      acd37(75)=acd37(75)-acd37(76)
      acd37(76)=acd37(19)*acd37(20)
      acd37(76)=acd37(76)+acd37(75)
      acd37(76)=acd37(1)*acd37(76)
      acd37(63)=acd37(67)+acd37(63)+acd37(76)+acd37(74)+acd37(73)
      acd37(62)=ninjaP*acd37(62)
      acd37(67)=acd37(31)*acd37(66)
      acd37(73)=acd37(41)*acd37(55)
      acd37(74)=acd37(16)*acd37(52)
      acd37(76)=acd37(45)*acd37(38)
      acd37(77)=-acd37(47)+acd37(44)
      acd37(77)=acd37(22)*acd37(77)
      acd37(78)=-acd37(18)*acd37(56)
      acd37(79)=acd37(34)*acd37(36)
      acd37(80)=acd37(28)*acd37(32)
      acd37(62)=acd37(67)+acd37(80)+acd37(79)+acd37(78)+acd37(77)+acd37(76)+acd&
      &37(74)+acd37(58)+acd37(73)+acd37(62)
      acd37(62)=acd37(2)*acd37(62)
      acd37(65)=-acd37(30)*acd37(65)
      acd37(61)=ninjaP*acd37(61)
      acd37(66)=acd37(30)*acd37(66)
      acd37(67)=acd37(44)*acd37(24)
      acd37(73)=acd37(45)*acd37(43)
      acd37(74)=acd37(34)*acd37(37)
      acd37(76)=acd37(28)*acd37(33)
      acd37(61)=acd37(66)+acd37(76)+acd37(74)+acd37(73)+acd37(60)+acd37(67)+acd&
      &37(61)
      acd37(61)=acd37(5)*acd37(61)
      acd37(66)=acd37(23)*acd37(45)
      acd37(67)=acd37(21)*acd37(34)
      acd37(73)=acd37(20)*acd37(28)
      acd37(74)=acd37(31)*acd37(24)
      acd37(67)=acd37(74)+acd37(73)+acd37(67)+acd37(46)-acd37(66)
      acd37(67)=acd37(19)*acd37(67)
      acd37(73)=ninjaP+acd37(52)
      acd37(74)=acd37(11)*acd37(73)
      acd37(76)=-acd37(51)+acd37(44)-acd37(49)
      acd37(77)=acd37(21)*acd37(76)
      acd37(78)=acd37(31)*acd37(37)
      acd37(68)=acd37(30)*acd37(68)
      acd37(68)=acd37(68)+acd37(78)+acd37(77)+acd37(57)+acd37(74)
      acd37(68)=acd37(9)*acd37(68)
      acd37(74)=acd37(7)*acd37(73)
      acd37(77)=acd37(20)*acd37(76)
      acd37(78)=acd37(31)*acd37(33)
      acd37(71)=acd37(30)*acd37(71)
      acd37(71)=acd37(71)+acd37(78)+acd37(77)+acd37(53)+acd37(74)
      acd37(71)=acd37(1)*acd37(71)
      acd37(73)=acd37(18)*acd37(73)
      acd37(74)=-acd37(23)*acd37(76)
      acd37(76)=acd37(31)*acd37(43)
      acd37(73)=acd37(76)+acd37(74)+acd37(59)+acd37(73)
      acd37(73)=acd37(17)*acd37(73)
      acd37(66)=acd37(66)-acd37(50)
      acd37(66)=acd37(69)*acd37(66)
      acd37(69)=acd37(28)*acd37(75)
      acd37(74)=acd37(18)*acd37(45)
      acd37(75)=acd37(34)*acd37(11)
      acd37(74)=acd37(75)+acd37(54)+acd37(74)
      acd37(70)=acd37(74)*acd37(70)
      acd37(74)=acd37(25)*acd37(48)
      acd37(72)=-acd37(34)*acd37(72)
      acd37(61)=acd37(62)+acd37(61)+acd37(71)+acd37(68)+acd37(65)+acd37(73)+acd&
      &37(72)+acd37(70)+acd37(74)+acd37(67)+acd37(69)+acd37(66)
      brack(ninjaidxt1mu0)=acd37(63)
      brack(ninjaidxt0mu0)=acd37(61)
      brack(ninjaidxt0mu2)=acd37(64)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d37h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd37h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p8_cbarc_epnemumnmubarg_d37h1l131
