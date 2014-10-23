module     p0_dbaru_epnebbbarg_d315h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d315h3l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd315h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd315
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd315h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(83) :: acd315
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd315(1)=dotproduct(k2,ninjaE3)
      acd315(2)=dotproduct(ninjaE3,spvak2k7)
      acd315(3)=dotproduct(ninjaE3,spvak1l5)
      acd315(4)=abb315(40)
      acd315(5)=dotproduct(ninjaE3,spvak2l5)
      acd315(6)=abb315(34)
      acd315(7)=dotproduct(k3,ninjaE3)
      acd315(8)=dotproduct(ninjaE3,spvak1l6)
      acd315(9)=abb315(18)
      acd315(10)=abb315(37)
      acd315(11)=dotproduct(k4,ninjaE3)
      acd315(12)=dotproduct(ninjaE3,spvak4k2)
      acd315(13)=abb315(21)
      acd315(14)=abb315(41)
      acd315(15)=abb315(27)
      acd315(16)=dotproduct(ninjaE3,spvak4k3)
      acd315(17)=abb315(19)
      acd315(18)=dotproduct(ninjaE3,spvak2k3)
      acd315(19)=abb315(25)
      acd315(20)=abb315(36)
      acd315(21)=abb315(42)
      acd315(22)=dotproduct(ninjaE3,spvak2l6)
      acd315(23)=dotproduct(ninjaE3,spvak1k2)
      acd315(24)=abb315(44)
      acd315(25)=dotproduct(ninjaE3,spvak1k3)
      acd315(26)=abb315(43)
      acd315(27)=abb315(24)
      acd315(28)=dotproduct(k1,ninjaE3)
      acd315(29)=abb315(33)
      acd315(30)=dotproduct(k2,ninjaA)
      acd315(31)=dotproduct(ninjaA,ninjaE3)
      acd315(32)=abb315(38)
      acd315(33)=dotproduct(ninjaA,spvak2k7)
      acd315(34)=dotproduct(ninjaA,spvak1l5)
      acd315(35)=dotproduct(ninjaA,spvak2l5)
      acd315(36)=abb315(13)
      acd315(37)=dotproduct(ninjaE3,spvak1k7)
      acd315(38)=abb315(50)
      acd315(39)=dotproduct(k3,ninjaA)
      acd315(40)=dotproduct(ninjaA,spvak1l6)
      acd315(41)=abb315(23)
      acd315(42)=dotproduct(k4,ninjaA)
      acd315(43)=abb315(22)
      acd315(44)=abb315(74)
      acd315(45)=abb315(70)
      acd315(46)=abb315(32)
      acd315(47)=dotproduct(ninjaA,spvak4k2)
      acd315(48)=dotproduct(ninjaA,spvak2l6)
      acd315(49)=dotproduct(ninjaA,spvak4k3)
      acd315(50)=dotproduct(ninjaA,spvak1k2)
      acd315(51)=dotproduct(ninjaA,spvak1k3)
      acd315(52)=dotproduct(ninjaA,spvak2k3)
      acd315(53)=abb315(10)
      acd315(54)=abb315(12)
      acd315(55)=abb315(14)
      acd315(56)=abb315(15)
      acd315(57)=abb315(17)
      acd315(58)=abb315(35)
      acd315(59)=abb315(30)
      acd315(60)=abb315(29)
      acd315(61)=abb315(39)
      acd315(62)=abb315(20)
      acd315(63)=acd315(7)+acd315(11)
      acd315(64)=acd315(10)*acd315(63)
      acd315(65)=acd315(21)*acd315(18)
      acd315(66)=acd315(1)*acd315(4)
      acd315(67)=acd315(16)*acd315(20)
      acd315(68)=acd315(12)*acd315(14)
      acd315(64)=-acd315(65)+acd315(66)+acd315(64)+acd315(67)+acd315(68)
      acd315(64)=acd315(64)*acd315(3)
      acd315(65)=-acd315(9)*acd315(63)
      acd315(66)=acd315(19)*acd315(18)
      acd315(67)=acd315(16)*acd315(17)
      acd315(68)=acd315(12)*acd315(13)
      acd315(65)=acd315(66)+acd315(67)+acd315(68)+acd315(65)
      acd315(65)=acd315(65)*acd315(8)
      acd315(66)=acd315(23)*acd315(24)
      acd315(67)=acd315(19)*acd315(25)
      acd315(66)=acd315(66)-acd315(67)
      acd315(66)=acd315(66)*acd315(22)
      acd315(64)=acd315(66)+acd315(65)+acd315(64)
      acd315(65)=acd315(63)-acd315(1)
      acd315(66)=acd315(65)*acd315(6)
      acd315(67)=acd315(23)*acd315(27)
      acd315(68)=acd315(21)*acd315(25)
      acd315(69)=acd315(16)*acd315(26)
      acd315(70)=acd315(12)*acd315(15)
      acd315(67)=acd315(66)+acd315(67)+acd315(68)+acd315(69)+acd315(70)
      acd315(68)=acd315(5)*acd315(67)
      acd315(68)=acd315(68)+acd315(64)
      acd315(68)=acd315(2)*acd315(68)
      acd315(69)=acd315(20)*acd315(49)
      acd315(70)=acd315(14)*acd315(47)
      acd315(71)=acd315(4)*acd315(30)
      acd315(72)=-acd315(21)*acd315(52)
      acd315(73)=acd315(39)+acd315(42)
      acd315(74)=acd315(10)*acd315(73)
      acd315(69)=acd315(74)+acd315(72)+acd315(71)+acd315(70)+acd315(55)+acd315(&
      &69)
      acd315(69)=acd315(3)*acd315(69)
      acd315(70)=acd315(27)*acd315(50)
      acd315(71)=acd315(26)*acd315(49)
      acd315(72)=acd315(15)*acd315(47)
      acd315(74)=acd315(21)*acd315(51)
      acd315(75)=-acd315(30)+acd315(73)
      acd315(75)=acd315(6)*acd315(75)
      acd315(70)=acd315(75)+acd315(74)+acd315(72)+acd315(70)+acd315(71)
      acd315(70)=acd315(5)*acd315(70)
      acd315(71)=acd315(17)*acd315(49)
      acd315(72)=acd315(13)*acd315(47)
      acd315(74)=acd315(19)*acd315(52)
      acd315(73)=-acd315(9)*acd315(73)
      acd315(71)=acd315(73)+acd315(74)+acd315(72)+acd315(54)+acd315(71)
      acd315(71)=acd315(8)*acd315(71)
      acd315(72)=-acd315(25)*acd315(48)
      acd315(73)=-acd315(22)*acd315(51)
      acd315(74)=acd315(18)*acd315(40)
      acd315(72)=acd315(74)+acd315(72)+acd315(73)
      acd315(72)=acd315(19)*acd315(72)
      acd315(73)=acd315(40)*acd315(17)
      acd315(74)=acd315(34)*acd315(20)
      acd315(75)=acd315(35)*acd315(26)
      acd315(73)=acd315(75)+acd315(74)+acd315(57)+acd315(73)
      acd315(73)=acd315(16)*acd315(73)
      acd315(74)=acd315(40)*acd315(13)
      acd315(75)=acd315(34)*acd315(14)
      acd315(76)=acd315(35)*acd315(15)
      acd315(74)=acd315(76)+acd315(75)+acd315(53)+acd315(74)
      acd315(74)=acd315(12)*acd315(74)
      acd315(75)=acd315(10)*acd315(34)
      acd315(76)=acd315(9)*acd315(40)
      acd315(75)=-acd315(41)+acd315(75)-acd315(76)
      acd315(63)=acd315(75)*acd315(63)
      acd315(75)=acd315(24)*acd315(48)
      acd315(76)=acd315(35)*acd315(27)
      acd315(75)=acd315(76)+acd315(58)+acd315(75)
      acd315(75)=acd315(23)*acd315(75)
      acd315(76)=acd315(25)*acd315(35)
      acd315(77)=-acd315(18)*acd315(34)
      acd315(76)=acd315(76)+acd315(77)
      acd315(76)=acd315(21)*acd315(76)
      acd315(77)=acd315(28)*acd315(29)
      acd315(78)=2.0_ki*acd315(31)
      acd315(79)=acd315(43)*acd315(78)
      acd315(80)=acd315(25)*acd315(59)
      acd315(81)=acd315(24)*acd315(50)
      acd315(81)=acd315(56)+acd315(81)
      acd315(81)=acd315(22)*acd315(81)
      acd315(82)=acd315(18)*acd315(60)
      acd315(83)=acd315(34)*acd315(4)
      acd315(83)=acd315(36)+acd315(83)
      acd315(83)=acd315(1)*acd315(83)
      acd315(66)=acd315(35)*acd315(66)
      acd315(63)=acd315(70)+acd315(69)+acd315(71)+acd315(66)+acd315(74)+acd315(&
      &73)+acd315(83)+acd315(72)+acd315(76)+acd315(82)+acd315(81)+acd315(75)+ac&
      &d315(80)+acd315(77)+acd315(79)+acd315(63)
      acd315(63)=acd315(2)*acd315(63)
      acd315(64)=acd315(33)*acd315(64)
      acd315(66)=acd315(33)*acd315(67)
      acd315(67)=acd315(46)*acd315(78)
      acd315(66)=acd315(67)+acd315(66)
      acd315(66)=acd315(5)*acd315(66)
      acd315(67)=acd315(78)*acd315(32)
      acd315(69)=acd315(37)*acd315(38)
      acd315(67)=acd315(67)-acd315(69)
      acd315(65)=-acd315(67)*acd315(65)
      acd315(67)=acd315(37)*acd315(62)
      acd315(69)=acd315(45)*acd315(78)
      acd315(67)=acd315(67)+acd315(69)
      acd315(67)=acd315(16)*acd315(67)
      acd315(69)=acd315(37)*acd315(61)
      acd315(70)=acd315(44)*acd315(78)
      acd315(69)=acd315(69)+acd315(70)
      acd315(69)=acd315(12)*acd315(69)
      acd315(63)=acd315(63)+acd315(66)+acd315(64)+acd315(69)+acd315(67)+acd315(&
      &65)
      brack(ninjaidxt1mu0)=acd315(68)
      brack(ninjaidxt0mu0)=acd315(63)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d315h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd315h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k5
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d315h3l131
