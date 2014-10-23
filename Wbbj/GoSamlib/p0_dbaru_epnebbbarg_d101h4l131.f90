module     p0_dbaru_epnebbbarg_d101h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d101h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd101h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd101
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd101h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(79) :: acd101
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd101(1)=dotproduct(k2,ninjaE3)
      acd101(2)=dotproduct(ninjaE3,spvak1k2)
      acd101(3)=abb101(30)
      acd101(4)=dotproduct(ninjaE3,spval6k2)
      acd101(5)=abb101(44)
      acd101(6)=dotproduct(ninjaE3,spvak7k2)
      acd101(7)=abb101(55)
      acd101(8)=dotproduct(k3,ninjaE3)
      acd101(9)=abb101(41)
      acd101(10)=dotproduct(k4,ninjaE3)
      acd101(11)=dotproduct(l6,ninjaE3)
      acd101(12)=abb101(12)
      acd101(13)=dotproduct(k7,ninjaE3)
      acd101(14)=abb101(11)
      acd101(15)=dotproduct(ninjaE3,spvak4k2)
      acd101(16)=abb101(13)
      acd101(17)=abb101(14)
      acd101(18)=dotproduct(ninjaE3,spvak4k3)
      acd101(19)=abb101(20)
      acd101(20)=dotproduct(ninjaE3,spval5k2)
      acd101(21)=abb101(17)
      acd101(22)=abb101(19)
      acd101(23)=abb101(32)
      acd101(24)=abb101(63)
      acd101(25)=dotproduct(ninjaE3,spvak1k3)
      acd101(26)=abb101(31)
      acd101(27)=dotproduct(ninjaE3,spval5k3)
      acd101(28)=abb101(60)
      acd101(29)=abb101(24)
      acd101(30)=abb101(25)
      acd101(31)=abb101(62)
      acd101(32)=abb101(29)
      acd101(33)=abb101(59)
      acd101(34)=abb101(34)
      acd101(35)=dotproduct(k1,ninjaE3)
      acd101(36)=abb101(23)
      acd101(37)=dotproduct(k2,ninjaA)
      acd101(38)=dotproduct(ninjaA,spvak1k2)
      acd101(39)=dotproduct(ninjaA,spval6k2)
      acd101(40)=dotproduct(ninjaA,spvak7k2)
      acd101(41)=abb101(28)
      acd101(42)=dotproduct(k3,ninjaA)
      acd101(43)=abb101(52)
      acd101(44)=dotproduct(k4,ninjaA)
      acd101(45)=dotproduct(l6,ninjaA)
      acd101(46)=dotproduct(k7,ninjaA)
      acd101(47)=dotproduct(ninjaA,spvak4k2)
      acd101(48)=dotproduct(ninjaA,spvak4k3)
      acd101(49)=dotproduct(ninjaA,spval5k2)
      acd101(50)=dotproduct(ninjaA,spvak1k3)
      acd101(51)=dotproduct(ninjaA,spval5k3)
      acd101(52)=abb101(21)
      acd101(53)=abb101(40)
      acd101(54)=abb101(15)
      acd101(55)=abb101(51)
      acd101(56)=abb101(16)
      acd101(57)=abb101(37)
      acd101(58)=dotproduct(ninjaE3,spval5l6)
      acd101(59)=abb101(36)
      acd101(60)=dotproduct(ninjaE3,spval5k7)
      acd101(61)=abb101(57)
      acd101(62)=abb101(58)
      acd101(63)=acd101(11)+acd101(13)
      acd101(63)=acd101(63)*acd101(12)
      acd101(64)=acd101(8)+acd101(10)
      acd101(65)=acd101(9)*acd101(64)
      acd101(66)=acd101(18)*acd101(19)
      acd101(67)=acd101(15)*acd101(16)
      acd101(68)=acd101(1)*acd101(3)
      acd101(69)=acd101(20)*acd101(21)
      acd101(63)=acd101(66)+acd101(67)-acd101(63)-acd101(65)+acd101(68)+acd101(&
      &69)
      acd101(65)=acd101(6)*acd101(17)
      acd101(66)=acd101(4)*acd101(14)
      acd101(65)=acd101(66)+acd101(65)+acd101(63)
      acd101(65)=acd101(2)*acd101(65)
      acd101(66)=acd101(1)-acd101(64)
      acd101(67)=acd101(66)*acd101(7)
      acd101(68)=acd101(27)*acd101(33)
      acd101(69)=acd101(25)*acd101(32)
      acd101(70)=acd101(18)*acd101(30)
      acd101(71)=acd101(15)*acd101(29)
      acd101(67)=acd101(67)+acd101(68)+acd101(69)+acd101(70)+acd101(71)
      acd101(68)=acd101(20)*acd101(31)
      acd101(68)=acd101(68)+acd101(67)
      acd101(68)=acd101(6)*acd101(68)
      acd101(66)=acd101(66)*acd101(5)
      acd101(69)=acd101(27)*acd101(28)
      acd101(70)=acd101(25)*acd101(26)
      acd101(71)=acd101(18)*acd101(23)
      acd101(72)=acd101(15)*acd101(22)
      acd101(66)=-acd101(66)+acd101(69)+acd101(70)+acd101(71)+acd101(72)
      acd101(69)=acd101(20)*acd101(24)
      acd101(69)=acd101(69)+acd101(66)
      acd101(69)=acd101(4)*acd101(69)
      acd101(70)=acd101(25)*acd101(34)
      acd101(71)=acd101(20)*acd101(70)
      acd101(65)=acd101(65)+acd101(69)+acd101(71)+acd101(68)
      acd101(68)=acd101(19)*acd101(48)
      acd101(69)=acd101(16)*acd101(47)
      acd101(71)=acd101(3)*acd101(37)
      acd101(72)=acd101(49)*acd101(21)
      acd101(73)=-acd101(46)-acd101(45)
      acd101(73)=acd101(12)*acd101(73)
      acd101(74)=acd101(42)+acd101(44)
      acd101(75)=-acd101(9)*acd101(74)
      acd101(76)=acd101(40)*acd101(17)
      acd101(77)=acd101(39)*acd101(14)
      acd101(68)=acd101(77)+acd101(76)+acd101(75)+acd101(73)+acd101(72)+acd101(&
      &71)+acd101(69)+acd101(52)+acd101(68)
      acd101(68)=acd101(2)*acd101(68)
      acd101(69)=acd101(33)*acd101(51)
      acd101(71)=acd101(32)*acd101(50)
      acd101(72)=acd101(30)*acd101(48)
      acd101(73)=acd101(29)*acd101(47)
      acd101(75)=acd101(49)*acd101(31)
      acd101(74)=acd101(74)-acd101(37)
      acd101(76)=-acd101(7)*acd101(74)
      acd101(77)=acd101(38)*acd101(17)
      acd101(69)=acd101(77)+acd101(76)+acd101(75)+acd101(73)+acd101(72)+acd101(&
      &71)+acd101(55)+acd101(69)
      acd101(69)=acd101(6)*acd101(69)
      acd101(71)=acd101(28)*acd101(51)
      acd101(72)=acd101(26)*acd101(50)
      acd101(73)=acd101(23)*acd101(48)
      acd101(75)=acd101(22)*acd101(47)
      acd101(76)=acd101(49)*acd101(24)
      acd101(74)=acd101(5)*acd101(74)
      acd101(77)=acd101(38)*acd101(14)
      acd101(71)=acd101(77)+acd101(74)+acd101(76)+acd101(75)+acd101(73)+acd101(&
      &72)+acd101(53)+acd101(71)
      acd101(71)=acd101(4)*acd101(71)
      acd101(63)=acd101(38)*acd101(63)
      acd101(67)=acd101(40)*acd101(67)
      acd101(66)=acd101(39)*acd101(66)
      acd101(72)=acd101(34)*acd101(50)
      acd101(73)=acd101(40)*acd101(31)
      acd101(74)=acd101(39)*acd101(24)
      acd101(72)=acd101(74)+acd101(73)+acd101(57)+acd101(72)
      acd101(72)=acd101(20)*acd101(72)
      acd101(64)=acd101(43)*acd101(64)
      acd101(73)=acd101(60)*acd101(61)
      acd101(74)=acd101(58)*acd101(59)
      acd101(75)=acd101(35)*acd101(36)
      acd101(76)=acd101(27)*acd101(62)
      acd101(70)=acd101(49)*acd101(70)
      acd101(77)=acd101(18)*acd101(56)
      acd101(78)=acd101(15)*acd101(54)
      acd101(79)=acd101(1)*acd101(41)
      acd101(63)=acd101(68)+acd101(71)+acd101(69)+acd101(63)+acd101(72)+acd101(&
      &79)+acd101(78)+acd101(77)+acd101(70)+acd101(76)+acd101(75)+acd101(73)+ac&
      &d101(74)+acd101(66)+acd101(67)+acd101(64)
      brack(ninjaidxt1mu0)=acd101(65)
      brack(ninjaidxt0mu0)=acd101(63)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d101h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd101h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
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
end module     p0_dbaru_epnebbbarg_d101h4l131
