module     p8_cbarc_epnemumnmubarg_d599h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity5d599h5l131.f90
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
      use p8_cbarc_epnemumnmubarg_abbrevd599h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(19) :: acd599
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd599(1)=dotproduct(k2,ninjaE3)
      acd599(2)=dotproduct(ninjaE3,spvak5k6)
      acd599(3)=dotproduct(ninjaE3,spvak7k2)
      acd599(4)=abb599(19)
      acd599(5)=dotproduct(k3,ninjaE3)
      acd599(6)=dotproduct(k4,ninjaE3)
      acd599(7)=dotproduct(ninjaE3,spvak4k2)
      acd599(8)=abb599(13)
      acd599(9)=dotproduct(ninjaE3,spvak1k3)
      acd599(10)=abb599(17)
      acd599(11)=dotproduct(ninjaE3,spvak1k2)
      acd599(12)=abb599(18)
      acd599(13)=dotproduct(ninjaE3,spvak4k3)
      acd599(14)=abb599(33)
      acd599(15)=acd599(6)-acd599(1)+acd599(5)
      acd599(15)=acd599(4)*acd599(15)
      acd599(16)=acd599(8)*acd599(7)
      acd599(17)=acd599(10)*acd599(9)
      acd599(18)=acd599(12)*acd599(11)
      acd599(19)=acd599(14)*acd599(13)
      acd599(15)=acd599(19)+acd599(18)+acd599(17)+acd599(16)+acd599(15)
      acd599(15)=acd599(15)*acd599(3)*acd599(2)
      brack(ninjaidxt2mu0)=acd599(15)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd599h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(82) :: acd599
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd599(1)=dotproduct(k2,ninjaE3)
      acd599(2)=dotproduct(ninjaE3,spvak7k2)
      acd599(3)=dotproduct(ninjaE4,spvak5k6)
      acd599(4)=abb599(19)
      acd599(5)=dotproduct(ninjaE3,spvak5k6)
      acd599(6)=dotproduct(ninjaE4,spvak7k2)
      acd599(7)=abb599(23)
      acd599(8)=dotproduct(k2,ninjaE4)
      acd599(9)=dotproduct(k3,ninjaE3)
      acd599(10)=dotproduct(k3,ninjaE4)
      acd599(11)=dotproduct(k4,ninjaE3)
      acd599(12)=dotproduct(k4,ninjaE4)
      acd599(13)=dotproduct(ninjaE3,spvak4k2)
      acd599(14)=abb599(13)
      acd599(15)=dotproduct(ninjaE3,spvak1k2)
      acd599(16)=abb599(18)
      acd599(17)=dotproduct(ninjaE4,spvak4k2)
      acd599(18)=dotproduct(ninjaE4,spvak1k2)
      acd599(19)=dotproduct(ninjaE4,spvak1k3)
      acd599(20)=abb599(17)
      acd599(21)=dotproduct(ninjaE4,spvak4k3)
      acd599(22)=abb599(33)
      acd599(23)=dotproduct(ninjaE3,spvak1k3)
      acd599(24)=dotproduct(ninjaE3,spvak4k3)
      acd599(25)=abb599(26)
      acd599(26)=abb599(16)
      acd599(27)=abb599(15)
      acd599(28)=abb599(29)
      acd599(29)=dotproduct(k2,ninjaA)
      acd599(30)=dotproduct(k7,ninjaE3)
      acd599(31)=abb599(20)
      acd599(32)=dotproduct(ninjaA,ninjaE3)
      acd599(33)=dotproduct(ninjaA,spvak7k2)
      acd599(34)=dotproduct(ninjaA,spvak5k6)
      acd599(35)=abb599(28)
      acd599(36)=dotproduct(k3,ninjaA)
      acd599(37)=dotproduct(k4,ninjaA)
      acd599(38)=dotproduct(k5,ninjaE3)
      acd599(39)=abb599(27)
      acd599(40)=dotproduct(k6,ninjaE3)
      acd599(41)=abb599(31)
      acd599(42)=abb599(9)
      acd599(43)=abb599(32)
      acd599(44)=dotproduct(ninjaA,spvak4k2)
      acd599(45)=dotproduct(ninjaA,spvak1k2)
      acd599(46)=dotproduct(ninjaA,spvak1k3)
      acd599(47)=dotproduct(ninjaA,spvak4k3)
      acd599(48)=abb599(8)
      acd599(49)=abb599(10)
      acd599(50)=dotproduct(ninjaE3,spvak1k6)
      acd599(51)=abb599(12)
      acd599(52)=dotproduct(ninjaE3,spvak1k7)
      acd599(53)=abb599(30)
      acd599(54)=dotproduct(k7,ninjaA)
      acd599(55)=dotproduct(ninjaA,ninjaA)
      acd599(56)=dotproduct(k5,ninjaA)
      acd599(57)=dotproduct(k6,ninjaA)
      acd599(58)=abb599(14)
      acd599(59)=abb599(11)
      acd599(60)=dotproduct(ninjaA,spvak1k6)
      acd599(61)=dotproduct(ninjaA,spvak1k7)
      acd599(62)=abb599(7)
      acd599(63)=-acd599(12)+acd599(8)-acd599(10)
      acd599(63)=acd599(63)*acd599(4)
      acd599(64)=acd599(22)*acd599(21)
      acd599(65)=acd599(20)*acd599(19)
      acd599(66)=acd599(16)*acd599(18)
      acd599(67)=acd599(14)*acd599(17)
      acd599(63)=acd599(63)-acd599(64)-acd599(65)-acd599(66)-acd599(67)
      acd599(63)=acd599(63)*acd599(5)
      acd599(64)=acd599(20)*acd599(23)
      acd599(65)=acd599(15)*acd599(16)
      acd599(66)=acd599(24)*acd599(22)
      acd599(67)=acd599(13)*acd599(14)
      acd599(64)=acd599(64)+acd599(65)+acd599(66)+acd599(67)
      acd599(65)=acd599(64)*acd599(3)
      acd599(63)=acd599(63)-acd599(65)-acd599(25)
      acd599(65)=acd599(9)+acd599(11)
      acd599(66)=acd599(65)-acd599(1)
      acd599(67)=acd599(66)*acd599(3)
      acd599(68)=acd599(4)*acd599(67)
      acd599(68)=acd599(68)-acd599(63)
      acd599(68)=acd599(2)*acd599(68)
      acd599(69)=acd599(66)*acd599(7)
      acd599(70)=acd599(24)*acd599(28)
      acd599(71)=acd599(13)*acd599(26)
      acd599(72)=acd599(15)*acd599(27)
      acd599(69)=-acd599(69)+acd599(72)+acd599(70)+acd599(71)
      acd599(70)=acd599(64)*acd599(6)
      acd599(71)=acd599(66)*acd599(6)
      acd599(73)=acd599(4)*acd599(71)
      acd599(73)=acd599(73)+acd599(70)
      acd599(73)=acd599(5)*acd599(73)
      acd599(68)=acd599(68)+acd599(73)+acd599(69)
      acd599(73)=acd599(66)*acd599(4)
      acd599(64)=acd599(73)+acd599(64)
      acd599(73)=acd599(34)*acd599(64)
      acd599(74)=acd599(30)+acd599(38)+acd599(40)
      acd599(74)=acd599(74)*acd599(39)
      acd599(75)=acd599(51)*acd599(50)
      acd599(76)=acd599(27)*acd599(52)
      acd599(77)=acd599(24)*acd599(53)
      acd599(78)=acd599(13)*acd599(48)
      acd599(79)=2.0_ki*acd599(32)
      acd599(80)=acd599(79)*acd599(25)
      acd599(66)=acd599(66)*acd599(35)
      acd599(66)=acd599(74)+acd599(77)+acd599(78)+acd599(80)+acd599(66)+acd599(&
      &75)-acd599(76)+acd599(73)
      acd599(73)=acd599(22)*acd599(47)
      acd599(74)=acd599(20)*acd599(46)
      acd599(75)=acd599(16)*acd599(45)
      acd599(76)=acd599(14)*acd599(44)
      acd599(73)=acd599(73)+acd599(74)+acd599(75)+acd599(76)+acd599(49)
      acd599(74)=-acd599(37)+acd599(29)-acd599(36)
      acd599(75)=-acd599(4)*acd599(74)
      acd599(75)=acd599(75)+acd599(73)
      acd599(75)=acd599(5)*acd599(75)
      acd599(75)=acd599(75)+acd599(66)
      acd599(75)=acd599(2)*acd599(75)
      acd599(64)=acd599(5)*acd599(33)*acd599(64)
      acd599(76)=acd599(30)*acd599(31)
      acd599(77)=-acd599(7)*acd599(32)
      acd599(77)=2.0_ki*acd599(77)-acd599(76)
      acd599(77)=acd599(65)*acd599(77)
      acd599(72)=acd599(79)*acd599(72)
      acd599(78)=acd599(28)*acd599(79)
      acd599(80)=acd599(30)*acd599(43)
      acd599(78)=acd599(78)+acd599(80)
      acd599(78)=acd599(24)*acd599(78)
      acd599(80)=acd599(26)*acd599(79)
      acd599(81)=acd599(30)*acd599(41)
      acd599(80)=acd599(80)+acd599(81)
      acd599(80)=acd599(13)*acd599(80)
      acd599(81)=acd599(7)*acd599(79)
      acd599(76)=acd599(76)+acd599(81)
      acd599(76)=acd599(1)*acd599(76)
      acd599(81)=acd599(30)*acd599(15)*acd599(42)
      acd599(64)=acd599(75)+acd599(64)+acd599(76)+acd599(80)+acd599(78)+acd599(&
      &72)+acd599(81)+acd599(77)
      acd599(63)=-ninjaP*acd599(63)
      acd599(72)=acd599(34)*acd599(73)
      acd599(75)=-acd599(34)*acd599(74)
      acd599(67)=ninjaP*acd599(67)
      acd599(67)=acd599(75)+acd599(67)
      acd599(67)=acd599(4)*acd599(67)
      acd599(75)=acd599(51)*acd599(60)
      acd599(76)=acd599(47)*acd599(53)
      acd599(77)=acd599(44)*acd599(48)
      acd599(78)=acd599(55)*acd599(25)
      acd599(80)=-acd599(27)*acd599(61)
      acd599(81)=acd599(54)+acd599(57)+acd599(56)
      acd599(81)=acd599(39)*acd599(81)
      acd599(82)=-acd599(35)*acd599(74)
      acd599(63)=acd599(67)+acd599(72)+acd599(82)+acd599(81)+acd599(80)+acd599(&
      &78)+acd599(77)+acd599(76)+acd599(62)+acd599(75)+acd599(63)
      acd599(63)=acd599(2)*acd599(63)
      acd599(66)=acd599(33)*acd599(66)
      acd599(67)=ninjaP*acd599(70)
      acd599(70)=acd599(33)*acd599(73)
      acd599(71)=ninjaP*acd599(71)
      acd599(72)=-acd599(33)*acd599(74)
      acd599(71)=acd599(71)+acd599(72)
      acd599(71)=acd599(4)*acd599(71)
      acd599(67)=acd599(71)+acd599(67)+acd599(70)
      acd599(67)=acd599(5)*acd599(67)
      acd599(70)=acd599(45)*acd599(42)
      acd599(71)=acd599(47)*acd599(43)
      acd599(72)=acd599(44)*acd599(41)
      acd599(73)=acd599(31)*acd599(74)
      acd599(70)=acd599(73)+acd599(72)+acd599(71)+acd599(58)+acd599(70)
      acd599(70)=acd599(30)*acd599(70)
      acd599(69)=ninjaP*acd599(69)
      acd599(71)=acd599(47)*acd599(28)
      acd599(72)=acd599(44)*acd599(26)
      acd599(73)=acd599(27)*acd599(45)
      acd599(71)=acd599(73)+acd599(72)+acd599(59)+acd599(71)
      acd599(71)=acd599(71)*acd599(79)
      acd599(72)=acd599(31)*acd599(54)
      acd599(73)=-acd599(72)*acd599(65)
      acd599(75)=acd599(54)*acd599(42)
      acd599(76)=acd599(27)*acd599(55)
      acd599(75)=acd599(75)+acd599(76)
      acd599(75)=acd599(15)*acd599(75)
      acd599(76)=acd599(55)*acd599(28)
      acd599(77)=acd599(54)*acd599(43)
      acd599(76)=acd599(76)+acd599(77)
      acd599(76)=acd599(24)*acd599(76)
      acd599(77)=acd599(55)*acd599(26)
      acd599(78)=acd599(54)*acd599(41)
      acd599(77)=acd599(77)+acd599(78)
      acd599(77)=acd599(13)*acd599(77)
      acd599(74)=acd599(74)*acd599(79)
      acd599(65)=-acd599(55)*acd599(65)
      acd599(65)=acd599(74)+acd599(65)
      acd599(65)=acd599(7)*acd599(65)
      acd599(74)=acd599(7)*acd599(55)
      acd599(72)=acd599(72)+acd599(74)
      acd599(72)=acd599(1)*acd599(72)
      acd599(63)=acd599(63)+acd599(67)+acd599(69)+acd599(72)+acd599(65)+acd599(&
      &77)+acd599(76)+acd599(70)+acd599(75)+acd599(71)+acd599(73)+acd599(66)
      brack(ninjaidxt1mu0)=acd599(64)
      brack(ninjaidxt0mu0)=acd599(63)
      brack(ninjaidxt0mu2)=acd599(68)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d599h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd599h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3+k7+k6+k5+k4
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
end module     p8_cbarc_epnemumnmubarg_d599h5l131
