module     p0_dbaru_epnebbbarg_d16h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d16h2l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd16h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd16
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd16(1)=dotproduct(k2,ninjaE3)
      acd16(2)=dotproduct(ninjaE3,spvak1k2)
      acd16(3)=dotproduct(ninjaE3,spvak4k3)
      acd16(4)=abb16(22)
      acd16(5)=dotproduct(ninjaE3,spval5l6)
      acd16(6)=abb16(10)
      acd16(7)=acd16(4)*acd16(1)
      acd16(8)=acd16(6)*acd16(5)
      acd16(7)=acd16(7)+acd16(8)
      acd16(7)=acd16(7)*acd16(3)*acd16(2)
      brack(ninjaidxt2mu0)=acd16(7)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd16h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(76) :: acd16
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd16(1)=dotproduct(k2,ninjaE3)
      acd16(2)=dotproduct(ninjaE3,spvak1k2)
      acd16(3)=dotproduct(ninjaE4,spvak4k3)
      acd16(4)=abb16(22)
      acd16(5)=dotproduct(ninjaE3,spvak4k3)
      acd16(6)=dotproduct(ninjaE4,spvak1k2)
      acd16(7)=abb16(27)
      acd16(8)=dotproduct(k2,ninjaE4)
      acd16(9)=dotproduct(ninjaE4,spval5l6)
      acd16(10)=abb16(10)
      acd16(11)=dotproduct(ninjaE3,spval5l6)
      acd16(12)=abb16(28)
      acd16(13)=abb16(29)
      acd16(14)=dotproduct(ninjaE3,spval5k2)
      acd16(15)=abb16(34)
      acd16(16)=dotproduct(ninjaE3,spvak4k2)
      acd16(17)=abb16(14)
      acd16(18)=dotproduct(k2,ninjaA)
      acd16(19)=dotproduct(ninjaA,ninjaE3)
      acd16(20)=dotproduct(ninjaA,spvak1k2)
      acd16(21)=dotproduct(ninjaA,spvak4k3)
      acd16(22)=dotproduct(ninjaE3,spvak1k3)
      acd16(23)=abb16(11)
      acd16(24)=dotproduct(k3,ninjaE3)
      acd16(25)=abb16(19)
      acd16(26)=abb16(35)
      acd16(27)=dotproduct(k4,ninjaE3)
      acd16(28)=dotproduct(l5,ninjaE3)
      acd16(29)=abb16(37)
      acd16(30)=dotproduct(l6,ninjaE3)
      acd16(31)=dotproduct(ninjaA,spval5l6)
      acd16(32)=abb16(16)
      acd16(33)=abb16(38)
      acd16(34)=abb16(12)
      acd16(35)=dotproduct(ninjaE3,spval6k2)
      acd16(36)=abb16(15)
      acd16(37)=abb16(21)
      acd16(38)=dotproduct(ninjaA,ninjaA)
      acd16(39)=dotproduct(ninjaA,spvak1k3)
      acd16(40)=dotproduct(k3,ninjaA)
      acd16(41)=dotproduct(ninjaA,spval5k2)
      acd16(42)=dotproduct(k4,ninjaA)
      acd16(43)=dotproduct(l5,ninjaA)
      acd16(44)=abb16(20)
      acd16(45)=dotproduct(l6,ninjaA)
      acd16(46)=dotproduct(ninjaA,spvak4k2)
      acd16(47)=abb16(17)
      acd16(48)=dotproduct(ninjaA,spval6k2)
      acd16(49)=abb16(13)
      acd16(50)=abb16(23)
      acd16(51)=abb16(18)
      acd16(52)=abb16(32)
      acd16(53)=acd16(4)*acd16(1)
      acd16(54)=acd16(53)*acd16(2)
      acd16(55)=acd16(10)*acd16(2)
      acd16(56)=acd16(55)*acd16(11)
      acd16(54)=acd16(54)+acd16(56)
      acd16(54)=acd16(54)*acd16(3)
      acd16(57)=acd16(10)*acd16(11)
      acd16(57)=acd16(53)+acd16(57)
      acd16(58)=acd16(5)*acd16(57)
      acd16(59)=acd16(58)*acd16(6)
      acd16(54)=acd16(54)+acd16(59)
      acd16(59)=acd16(7)*acd16(1)
      acd16(60)=acd16(15)*acd16(14)
      acd16(59)=acd16(59)+acd16(60)
      acd16(60)=acd16(13)*acd16(11)
      acd16(60)=acd16(59)+acd16(60)
      acd16(61)=acd16(16)*acd16(17)
      acd16(62)=acd16(60)+acd16(61)
      acd16(63)=acd16(55)*acd16(9)
      acd16(64)=acd16(4)*acd16(2)
      acd16(65)=acd16(64)*acd16(8)
      acd16(63)=acd16(63)+acd16(65)
      acd16(65)=acd16(12)+acd16(63)
      acd16(65)=acd16(5)*acd16(65)
      acd16(65)=acd16(65)+acd16(62)+acd16(54)
      acd16(66)=acd16(30)+acd16(28)
      acd16(67)=-acd16(29)*acd16(66)
      acd16(68)=acd16(31)*acd16(55)
      acd16(69)=2.0_ki*acd16(19)
      acd16(70)=acd16(12)*acd16(69)
      acd16(71)=acd16(18)*acd16(64)
      acd16(72)=acd16(32)*acd16(2)
      acd16(73)=acd16(33)*acd16(11)
      acd16(74)=acd16(34)*acd16(14)
      acd16(75)=acd16(36)*acd16(35)
      acd16(67)=acd16(72)+acd16(75)+acd16(74)+acd16(73)+acd16(71)+acd16(70)+acd&
      &16(68)+acd16(67)
      acd16(67)=acd16(5)*acd16(67)
      acd16(68)=acd16(25)*acd16(11)
      acd16(70)=acd16(26)*acd16(14)
      acd16(68)=acd16(68)-acd16(70)
      acd16(70)=acd16(27)+acd16(24)
      acd16(71)=-acd16(68)*acd16(70)
      acd16(72)=acd16(23)*acd16(1)
      acd16(73)=acd16(37)*acd16(11)
      acd16(72)=acd16(72)+acd16(73)
      acd16(73)=acd16(22)*acd16(72)
      acd16(62)=acd16(69)*acd16(62)
      acd16(74)=acd16(21)*acd16(2)
      acd16(53)=acd16(53)*acd16(74)
      acd16(58)=acd16(20)*acd16(58)
      acd16(56)=acd16(21)*acd16(56)
      acd16(53)=acd16(58)+acd16(53)+acd16(56)+acd16(62)+acd16(73)+acd16(71)+acd&
      &16(67)
      acd16(56)=acd16(5)*acd16(63)
      acd16(54)=acd16(56)+acd16(59)+acd16(54)
      acd16(54)=ninjaP*acd16(54)
      acd16(56)=-acd16(25)*acd16(70)
      acd16(55)=acd16(21)*acd16(55)
      acd16(58)=acd16(37)*acd16(22)
      acd16(55)=acd16(58)+acd16(55)+acd16(56)
      acd16(55)=acd16(31)*acd16(55)
      acd16(56)=acd16(21)*acd16(64)
      acd16(58)=acd16(20)*acd16(5)
      acd16(59)=acd16(4)*acd16(58)
      acd16(62)=acd16(7)*acd16(69)
      acd16(56)=acd16(62)+acd16(56)+acd16(59)
      acd16(56)=acd16(18)*acd16(56)
      acd16(59)=-acd16(42)-acd16(40)
      acd16(59)=acd16(68)*acd16(59)
      acd16(62)=acd16(35)*acd16(21)
      acd16(63)=acd16(48)*acd16(5)
      acd16(62)=acd16(63)+acd16(62)
      acd16(62)=acd16(36)*acd16(62)
      acd16(63)=acd16(46)*acd16(17)
      acd16(63)=acd16(47)+acd16(63)
      acd16(63)=acd16(69)*acd16(63)
      acd16(64)=-acd16(45)-acd16(43)
      acd16(64)=acd16(5)*acd16(64)
      acd16(67)=-acd16(21)*acd16(66)
      acd16(64)=acd16(67)+acd16(64)
      acd16(64)=acd16(29)*acd16(64)
      acd16(57)=acd16(21)*acd16(57)
      acd16(67)=acd16(31)*acd16(5)
      acd16(68)=acd16(10)*acd16(67)
      acd16(57)=acd16(68)+acd16(57)
      acd16(57)=acd16(20)*acd16(57)
      acd16(68)=acd16(21)*acd16(69)
      acd16(71)=ninjaP*acd16(5)
      acd16(68)=acd16(68)+acd16(71)
      acd16(68)=acd16(12)*acd16(68)
      acd16(71)=ninjaP*acd16(11)
      acd16(73)=acd16(31)*acd16(69)
      acd16(71)=acd16(71)+acd16(73)
      acd16(71)=acd16(13)*acd16(71)
      acd16(73)=acd16(12)*acd16(5)
      acd16(60)=acd16(73)+acd16(60)
      acd16(60)=acd16(38)*acd16(60)
      acd16(73)=ninjaP+acd16(38)
      acd16(61)=acd16(73)*acd16(61)
      acd16(70)=acd16(26)*acd16(70)
      acd16(69)=acd16(15)*acd16(69)
      acd16(69)=acd16(69)+acd16(70)
      acd16(69)=acd16(41)*acd16(69)
      acd16(58)=acd16(74)+acd16(58)
      acd16(58)=acd16(32)*acd16(58)
      acd16(70)=acd16(21)*acd16(11)
      acd16(67)=acd16(70)+acd16(67)
      acd16(67)=acd16(33)*acd16(67)
      acd16(70)=acd16(14)*acd16(21)
      acd16(73)=acd16(41)*acd16(5)
      acd16(70)=acd16(70)+acd16(73)
      acd16(70)=acd16(34)*acd16(70)
      acd16(72)=acd16(39)*acd16(72)
      acd16(73)=acd16(23)*acd16(18)
      acd16(73)=acd16(50)+acd16(73)
      acd16(73)=acd16(22)*acd16(73)
      acd16(66)=-acd16(44)*acd16(66)
      acd16(74)=acd16(49)*acd16(11)
      acd16(75)=acd16(51)*acd16(14)
      acd16(76)=acd16(52)*acd16(35)
      acd16(54)=acd16(76)+acd16(75)+acd16(74)+acd16(66)+acd16(72)+acd16(70)+acd&
      &16(67)+acd16(58)+acd16(69)+acd16(61)+acd16(60)+acd16(56)+acd16(71)+acd16&
      &(68)+acd16(57)+acd16(54)+acd16(64)+acd16(55)+acd16(63)+acd16(62)+acd16(7&
      &3)+acd16(59)
      brack(ninjaidxt1mu0)=acd16(53)
      brack(ninjaidxt0mu0)=acd16(54)
      brack(ninjaidxt0mu2)=acd16(65)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d16h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd16h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d16h2l131
