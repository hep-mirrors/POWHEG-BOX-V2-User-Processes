module     p0_dbard_epnemumnmubarg_d603h1l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d603h1l132.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd603h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(19) :: acd603
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd603(1)=dotproduct(k2,ninjaE3)
      acd603(2)=dotproduct(ninjaE3,spvak2k7)
      acd603(3)=dotproduct(ninjaE3,spvak4k3)
      acd603(4)=abb603(39)
      acd603(5)=dotproduct(k5,ninjaE3)
      acd603(6)=dotproduct(k6,ninjaE3)
      acd603(7)=dotproduct(ninjaE3,spvak5k2)
      acd603(8)=abb603(8)
      acd603(9)=dotproduct(ninjaE3,spvak1k2)
      acd603(10)=abb603(10)
      acd603(11)=dotproduct(ninjaE3,spvak1k6)
      acd603(12)=abb603(17)
      acd603(13)=dotproduct(ninjaE3,spvak5k6)
      acd603(14)=abb603(32)
      acd603(15)=acd603(6)-acd603(1)+acd603(5)
      acd603(15)=acd603(4)*acd603(15)
      acd603(16)=acd603(8)*acd603(7)
      acd603(17)=acd603(10)*acd603(9)
      acd603(18)=acd603(12)*acd603(11)
      acd603(19)=acd603(14)*acd603(13)
      acd603(15)=acd603(19)+acd603(18)+acd603(17)+acd603(16)+acd603(15)
      acd603(15)=acd603(15)*acd603(3)*acd603(2)
      brack(ninjaidxt1x0mu0)=acd603(15)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd603h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(74) :: acd603
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd603(1)=dotproduct(k2,ninjaA1)
      acd603(2)=dotproduct(ninjaE3,spvak2k7)
      acd603(3)=dotproduct(ninjaE3,spvak4k3)
      acd603(4)=abb603(39)
      acd603(5)=dotproduct(k2,ninjaE3)
      acd603(6)=dotproduct(ninjaA1,spvak2k7)
      acd603(7)=dotproduct(ninjaA1,spvak4k3)
      acd603(8)=dotproduct(k5,ninjaA1)
      acd603(9)=dotproduct(k5,ninjaE3)
      acd603(10)=dotproduct(k6,ninjaA1)
      acd603(11)=dotproduct(k6,ninjaE3)
      acd603(12)=dotproduct(ninjaE3,spvak5k2)
      acd603(13)=abb603(8)
      acd603(14)=dotproduct(ninjaE3,spvak1k2)
      acd603(15)=abb603(10)
      acd603(16)=dotproduct(ninjaE3,spvak1k6)
      acd603(17)=abb603(17)
      acd603(18)=dotproduct(ninjaE3,spvak5k6)
      acd603(19)=abb603(32)
      acd603(20)=dotproduct(ninjaA1,spvak5k2)
      acd603(21)=dotproduct(ninjaA1,spvak1k2)
      acd603(22)=dotproduct(ninjaA1,spvak1k6)
      acd603(23)=dotproduct(ninjaA1,spvak5k6)
      acd603(24)=dotproduct(k1,ninjaE3)
      acd603(25)=abb603(28)
      acd603(26)=abb603(34)
      acd603(27)=abb603(35)
      acd603(28)=abb603(25)
      acd603(29)=dotproduct(k2,ninjaA0)
      acd603(30)=dotproduct(k3,ninjaE3)
      acd603(31)=abb603(40)
      acd603(32)=dotproduct(k4,ninjaE3)
      acd603(33)=dotproduct(ninjaA0,ninjaE3)
      acd603(34)=abb603(21)
      acd603(35)=dotproduct(ninjaA0,spvak2k7)
      acd603(36)=dotproduct(ninjaA0,spvak4k3)
      acd603(37)=abb603(27)
      acd603(38)=abb603(45)
      acd603(39)=abb603(30)
      acd603(40)=abb603(22)
      acd603(41)=abb603(46)
      acd603(42)=dotproduct(k5,ninjaA0)
      acd603(43)=dotproduct(k6,ninjaA0)
      acd603(44)=dotproduct(k7,ninjaE3)
      acd603(45)=abb603(14)
      acd603(46)=abb603(24)
      acd603(47)=abb603(42)
      acd603(48)=abb603(26)
      acd603(49)=abb603(23)
      acd603(50)=dotproduct(ninjaA0,spvak5k2)
      acd603(51)=dotproduct(ninjaA0,spvak1k2)
      acd603(52)=dotproduct(ninjaA0,spvak1k6)
      acd603(53)=dotproduct(ninjaA0,spvak5k6)
      acd603(54)=abb603(12)
      acd603(55)=abb603(19)
      acd603(56)=dotproduct(ninjaE3,spvak1k3)
      acd603(57)=abb603(9)
      acd603(58)=abb603(36)
      acd603(59)=abb603(16)
      acd603(60)=abb603(44)
      acd603(61)=acd603(19)*acd603(23)
      acd603(62)=acd603(17)*acd603(22)
      acd603(63)=acd603(15)*acd603(21)
      acd603(64)=acd603(13)*acd603(20)
      acd603(65)=-acd603(1)+acd603(10)+acd603(8)
      acd603(65)=acd603(4)*acd603(65)
      acd603(61)=acd603(65)+acd603(64)+acd603(63)+acd603(61)+acd603(62)
      acd603(61)=acd603(3)*acd603(61)
      acd603(62)=acd603(17)*acd603(16)
      acd603(63)=acd603(15)*acd603(14)
      acd603(62)=acd603(62)+acd603(63)
      acd603(63)=-acd603(11)+acd603(5)-acd603(9)
      acd603(64)=acd603(63)*acd603(4)
      acd603(65)=acd603(18)*acd603(19)
      acd603(66)=acd603(12)*acd603(13)
      acd603(65)=acd603(64)-acd603(62)-acd603(65)-acd603(66)
      acd603(66)=-acd603(7)*acd603(65)
      acd603(61)=acd603(61)+acd603(66)
      acd603(61)=acd603(2)*acd603(61)
      acd603(65)=-acd603(3)*acd603(6)*acd603(65)
      acd603(61)=acd603(65)+acd603(61)
      acd603(65)=acd603(19)*acd603(53)
      acd603(66)=acd603(17)*acd603(52)
      acd603(67)=acd603(15)*acd603(51)
      acd603(68)=acd603(13)*acd603(50)
      acd603(69)=-acd603(29)+acd603(43)+acd603(42)
      acd603(69)=acd603(4)*acd603(69)
      acd603(65)=acd603(69)+acd603(68)+acd603(67)+acd603(66)+acd603(54)+acd603(&
      &65)
      acd603(65)=acd603(3)*acd603(65)
      acd603(62)=acd603(64)-acd603(62)
      acd603(64)=-acd603(36)*acd603(62)
      acd603(66)=acd603(30)+acd603(32)
      acd603(67)=acd603(39)*acd603(66)
      acd603(68)=acd603(37)*acd603(63)
      acd603(69)=acd603(56)*acd603(57)
      acd603(70)=acd603(24)*acd603(26)
      acd603(71)=2.0_ki*acd603(33)
      acd603(72)=acd603(46)*acd603(71)
      acd603(73)=acd603(36)*acd603(19)
      acd603(73)=acd603(58)+acd603(73)
      acd603(73)=acd603(18)*acd603(73)
      acd603(74)=acd603(36)*acd603(13)
      acd603(74)=acd603(55)+acd603(74)
      acd603(74)=acd603(12)*acd603(74)
      acd603(64)=acd603(65)+acd603(74)+acd603(73)+acd603(72)+acd603(70)+acd603(&
      &69)+acd603(68)+acd603(67)+acd603(64)
      acd603(64)=acd603(2)*acd603(64)
      acd603(62)=-acd603(35)*acd603(62)
      acd603(65)=-acd603(38)*acd603(63)
      acd603(67)=acd603(44)*acd603(45)
      acd603(68)=acd603(47)*acd603(71)
      acd603(69)=acd603(35)*acd603(19)
      acd603(69)=acd603(60)+acd603(69)
      acd603(69)=acd603(18)*acd603(69)
      acd603(70)=acd603(35)*acd603(13)
      acd603(70)=acd603(59)+acd603(70)
      acd603(70)=acd603(12)*acd603(70)
      acd603(62)=acd603(70)+acd603(69)+acd603(68)+acd603(67)+acd603(65)+acd603(&
      &62)
      acd603(62)=acd603(3)*acd603(62)
      acd603(65)=acd603(31)*acd603(66)
      acd603(67)=acd603(71)*acd603(34)
      acd603(68)=acd603(24)*acd603(25)
      acd603(65)=acd603(68)+acd603(65)-acd603(67)
      acd603(63)=acd603(65)*acd603(63)
      acd603(65)=acd603(41)*acd603(66)
      acd603(67)=acd603(24)*acd603(28)
      acd603(68)=acd603(49)*acd603(71)
      acd603(65)=acd603(68)+acd603(67)+acd603(65)
      acd603(65)=acd603(18)*acd603(65)
      acd603(66)=acd603(40)*acd603(66)
      acd603(67)=acd603(24)*acd603(27)
      acd603(68)=acd603(48)*acd603(71)
      acd603(66)=acd603(68)+acd603(67)+acd603(66)
      acd603(66)=acd603(12)*acd603(66)
      acd603(62)=acd603(64)+acd603(62)+acd603(65)+acd603(66)+acd603(63)
      brack(ninjaidxt0x0mu0)=acd603(62)
      brack(ninjaidxt0x1mu0)=acd603(61)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d603h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd603h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7
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
end module     p0_dbard_epnemumnmubarg_d603h1l132
