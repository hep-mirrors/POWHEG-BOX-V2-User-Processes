module     p0_dbaru_epnebbbarg_d122h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d122h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd122h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd122
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd122h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(84) :: acd122
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd122(1)=dotproduct(k2,ninjaE3)
      acd122(2)=dotproduct(ninjaE3,spval6k2)
      acd122(3)=abb122(30)
      acd122(4)=dotproduct(ninjaE3,spvak7k2)
      acd122(5)=abb122(67)
      acd122(6)=dotproduct(ninjaE3,spvak1k2)
      acd122(7)=abb122(31)
      acd122(8)=dotproduct(k3,ninjaE3)
      acd122(9)=dotproduct(ninjaE3,spvak4k2)
      acd122(10)=abb122(29)
      acd122(11)=dotproduct(k4,ninjaE3)
      acd122(12)=dotproduct(l6,ninjaE3)
      acd122(13)=abb122(33)
      acd122(14)=dotproduct(k7,ninjaE3)
      acd122(15)=abb122(19)
      acd122(16)=abb122(13)
      acd122(17)=abb122(14)
      acd122(18)=dotproduct(ninjaE3,spvak4k3)
      acd122(19)=abb122(20)
      acd122(20)=dotproduct(ninjaE3,spvak7k3)
      acd122(21)=abb122(16)
      acd122(22)=abb122(26)
      acd122(23)=dotproduct(ninjaE3,spvak1l6)
      acd122(24)=abb122(23)
      acd122(25)=abb122(34)
      acd122(26)=dotproduct(ninjaE3,spval6k3)
      acd122(27)=abb122(21)
      acd122(28)=dotproduct(ninjaE3,spvak1k7)
      acd122(29)=abb122(32)
      acd122(30)=dotproduct(ninjaE3,spvak3k2)
      acd122(31)=abb122(22)
      acd122(32)=dotproduct(k2,ninjaA)
      acd122(33)=dotproduct(ninjaA,spval6k2)
      acd122(34)=dotproduct(ninjaA,spvak7k2)
      acd122(35)=dotproduct(ninjaA,spvak1k2)
      acd122(36)=abb122(25)
      acd122(37)=dotproduct(k3,ninjaA)
      acd122(38)=dotproduct(ninjaA,spvak4k2)
      acd122(39)=abb122(37)
      acd122(40)=dotproduct(k4,ninjaA)
      acd122(41)=dotproduct(l6,ninjaA)
      acd122(42)=dotproduct(k7,ninjaA)
      acd122(43)=dotproduct(ninjaA,ninjaE3)
      acd122(44)=abb122(45)
      acd122(45)=dotproduct(ninjaA,spvak7k3)
      acd122(46)=dotproduct(ninjaA,spval6k3)
      acd122(47)=dotproduct(ninjaA,spvak4k3)
      acd122(48)=dotproduct(ninjaA,spvak3k2)
      acd122(49)=dotproduct(ninjaA,spvak1l6)
      acd122(50)=dotproduct(ninjaA,spvak1k7)
      acd122(51)=dotproduct(ninjaE3,spvak1k3)
      acd122(52)=abb122(12)
      acd122(53)=abb122(18)
      acd122(54)=abb122(24)
      acd122(55)=abb122(27)
      acd122(56)=abb122(61)
      acd122(57)=abb122(47)
      acd122(58)=abb122(17)
      acd122(59)=abb122(28)
      acd122(60)=dotproduct(ninjaE3,spval6l5)
      acd122(61)=abb122(46)
      acd122(62)=dotproduct(ninjaE3,spvak7l5)
      acd122(63)=abb122(51)
      acd122(64)=dotproduct(ninjaE3,spval5k2)
      acd122(65)=abb122(52)
      acd122(66)=acd122(8)+acd122(11)
      acd122(67)=acd122(1)-acd122(66)
      acd122(68)=acd122(67)*acd122(5)
      acd122(69)=acd122(24)*acd122(28)
      acd122(70)=acd122(21)*acd122(26)
      acd122(68)=acd122(68)+acd122(69)-acd122(70)
      acd122(69)=acd122(18)*acd122(27)
      acd122(70)=acd122(6)*acd122(29)
      acd122(71)=acd122(9)*acd122(17)
      acd122(69)=acd122(71)+acd122(70)+acd122(69)+acd122(68)
      acd122(69)=acd122(4)*acd122(69)
      acd122(67)=acd122(67)*acd122(3)
      acd122(70)=acd122(24)*acd122(23)
      acd122(71)=acd122(21)*acd122(20)
      acd122(67)=acd122(67)-acd122(70)-acd122(71)
      acd122(70)=acd122(18)*acd122(22)
      acd122(71)=acd122(6)*acd122(25)
      acd122(72)=acd122(9)*acd122(16)
      acd122(70)=acd122(72)+acd122(71)+acd122(70)-acd122(67)
      acd122(70)=acd122(2)*acd122(70)
      acd122(71)=-acd122(10)*acd122(66)
      acd122(72)=acd122(18)*acd122(19)
      acd122(73)=acd122(9)*acd122(15)
      acd122(71)=acd122(73)+acd122(72)+acd122(71)
      acd122(71)=acd122(9)*acd122(71)
      acd122(72)=acd122(12)+acd122(14)
      acd122(72)=acd122(72)*acd122(13)
      acd122(73)=acd122(1)*acd122(7)
      acd122(73)=-acd122(72)+acd122(73)
      acd122(73)=acd122(6)*acd122(73)
      acd122(74)=acd122(31)*acd122(30)
      acd122(75)=acd122(18)*acd122(74)
      acd122(69)=acd122(70)+acd122(69)+acd122(71)+acd122(75)+acd122(73)
      acd122(70)=acd122(47)*acd122(27)
      acd122(71)=acd122(35)*acd122(29)
      acd122(73)=acd122(38)*acd122(17)
      acd122(75)=acd122(24)*acd122(50)
      acd122(76)=-acd122(21)*acd122(46)
      acd122(77)=acd122(37)+acd122(40)
      acd122(78)=acd122(77)-acd122(32)
      acd122(79)=-acd122(5)*acd122(78)
      acd122(70)=acd122(79)+acd122(76)+acd122(75)+acd122(73)+acd122(71)+acd122(&
      &55)+acd122(70)
      acd122(70)=acd122(4)*acd122(70)
      acd122(71)=acd122(47)*acd122(22)
      acd122(73)=acd122(35)*acd122(25)
      acd122(75)=acd122(38)*acd122(16)
      acd122(76)=acd122(24)*acd122(49)
      acd122(79)=acd122(21)*acd122(45)
      acd122(78)=acd122(3)*acd122(78)
      acd122(71)=acd122(78)+acd122(79)+acd122(76)+acd122(75)+acd122(73)+acd122(&
      &54)+acd122(71)
      acd122(71)=acd122(2)*acd122(71)
      acd122(73)=acd122(47)*acd122(19)
      acd122(75)=acd122(38)*acd122(15)
      acd122(76)=-acd122(10)*acd122(77)
      acd122(77)=acd122(34)*acd122(17)
      acd122(78)=acd122(33)*acd122(16)
      acd122(73)=acd122(78)+acd122(77)+acd122(76)+2.0_ki*acd122(75)+acd122(53)+&
      &acd122(73)
      acd122(73)=acd122(9)*acd122(73)
      acd122(75)=acd122(31)*acd122(48)
      acd122(76)=acd122(38)*acd122(19)
      acd122(77)=acd122(34)*acd122(27)
      acd122(78)=acd122(33)*acd122(22)
      acd122(75)=acd122(78)+acd122(77)+acd122(76)+acd122(58)+acd122(75)
      acd122(75)=acd122(18)*acd122(75)
      acd122(76)=acd122(7)*acd122(32)
      acd122(77)=-acd122(42)-acd122(41)
      acd122(77)=acd122(13)*acd122(77)
      acd122(78)=acd122(34)*acd122(29)
      acd122(79)=acd122(33)*acd122(25)
      acd122(76)=acd122(79)+acd122(78)+acd122(77)+acd122(59)+acd122(76)
      acd122(76)=acd122(6)*acd122(76)
      acd122(68)=acd122(34)*acd122(68)
      acd122(67)=-acd122(33)*acd122(67)
      acd122(77)=acd122(10)*acd122(38)
      acd122(77)=acd122(77)-acd122(39)
      acd122(66)=-acd122(77)*acd122(66)
      acd122(77)=acd122(64)*acd122(65)
      acd122(78)=acd122(62)*acd122(63)
      acd122(79)=acd122(60)*acd122(61)
      acd122(80)=acd122(51)*acd122(52)
      acd122(81)=acd122(43)*acd122(44)
      acd122(82)=acd122(26)*acd122(57)
      acd122(83)=acd122(20)*acd122(56)
      acd122(74)=acd122(47)*acd122(74)
      acd122(72)=-acd122(35)*acd122(72)
      acd122(84)=acd122(35)*acd122(7)
      acd122(84)=acd122(36)+acd122(84)
      acd122(84)=acd122(1)*acd122(84)
      acd122(66)=acd122(71)+acd122(70)+acd122(73)+acd122(76)+acd122(75)+acd122(&
      &84)+acd122(72)+acd122(74)+acd122(83)+acd122(82)+2.0_ki*acd122(81)+acd122&
      &(80)+acd122(79)+acd122(77)+acd122(78)+acd122(67)+acd122(68)+acd122(66)
      brack(ninjaidxt1mu0)=acd122(69)
      brack(ninjaidxt0mu0)=acd122(66)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d122h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d122h4l131
