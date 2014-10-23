module     p0_dbaru_epnebbbarg_d240h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d240h4l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd240h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(83) :: acd240
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd240(1)=dotproduct(k2,ninjaA)
      acd240(2)=dotproduct(ninjaE3,spval6k2)
      acd240(3)=abb240(73)
      acd240(4)=dotproduct(ninjaE3,spval5k2)
      acd240(5)=abb240(40)
      acd240(6)=dotproduct(ninjaE3,spvak7k2)
      acd240(7)=abb240(100)
      acd240(8)=dotproduct(k2,ninjaE3)
      acd240(9)=dotproduct(ninjaA,spval6k2)
      acd240(10)=dotproduct(ninjaA,spval5k2)
      acd240(11)=dotproduct(ninjaA,spvak7k2)
      acd240(12)=abb240(21)
      acd240(13)=dotproduct(k3,ninjaA)
      acd240(14)=dotproduct(k3,ninjaE3)
      acd240(15)=abb240(49)
      acd240(16)=dotproduct(k4,ninjaA)
      acd240(17)=dotproduct(k4,ninjaE3)
      acd240(18)=dotproduct(l5,ninjaE3)
      acd240(19)=abb240(22)
      acd240(20)=dotproduct(l6,ninjaE3)
      acd240(21)=dotproduct(k7,ninjaE3)
      acd240(22)=dotproduct(ninjaA,ninjaE3)
      acd240(23)=abb240(25)
      acd240(24)=dotproduct(ninjaA,spvak1k2)
      acd240(25)=abb240(17)
      acd240(26)=abb240(20)
      acd240(27)=abb240(27)
      acd240(28)=dotproduct(ninjaE3,spvak1k2)
      acd240(29)=dotproduct(ninjaE3,spvak4k2)
      acd240(30)=abb240(50)
      acd240(31)=dotproduct(ninjaE3,spvak1k3)
      acd240(32)=abb240(52)
      acd240(33)=dotproduct(ninjaE3,spvak4k3)
      acd240(34)=abb240(45)
      acd240(35)=abb240(19)
      acd240(36)=abb240(24)
      acd240(37)=abb240(78)
      acd240(38)=dotproduct(ninjaA,spvak4k2)
      acd240(39)=abb240(41)
      acd240(40)=dotproduct(ninjaA,spvak1k3)
      acd240(41)=abb240(43)
      acd240(42)=abb240(86)
      acd240(43)=dotproduct(ninjaA,spvak4k3)
      acd240(44)=abb240(16)
      acd240(45)=abb240(28)
      acd240(46)=abb240(18)
      acd240(47)=abb240(51)
      acd240(48)=dotproduct(ninjaE3,spvak1l6)
      acd240(49)=abb240(23)
      acd240(50)=dotproduct(ninjaE3,spvak7k3)
      acd240(51)=abb240(26)
      acd240(52)=abb240(66)
      acd240(53)=dotproduct(ninjaE3,spvak1l5)
      acd240(54)=abb240(34)
      acd240(55)=dotproduct(ninjaE3,spval6k3)
      acd240(56)=abb240(36)
      acd240(57)=dotproduct(ninjaE3,spvak1k7)
      acd240(58)=abb240(42)
      acd240(59)=abb240(76)
      acd240(60)=dotproduct(ninjaE3,spval5k3)
      acd240(61)=abb240(57)
      acd240(62)=acd240(14)+acd240(17)
      acd240(63)=acd240(62)-acd240(8)
      acd240(64)=acd240(63)*acd240(7)
      acd240(65)=acd240(31)*acd240(41)
      acd240(66)=acd240(33)*acd240(42)
      acd240(67)=acd240(29)*acd240(39)
      acd240(68)=acd240(28)*acd240(27)
      acd240(64)=acd240(64)+acd240(65)+acd240(66)+acd240(67)+acd240(68)
      acd240(65)=acd240(11)*acd240(64)
      acd240(66)=acd240(63)*acd240(5)
      acd240(67)=acd240(31)*acd240(36)
      acd240(68)=acd240(33)*acd240(37)
      acd240(69)=acd240(29)*acd240(35)
      acd240(70)=acd240(28)*acd240(26)
      acd240(66)=acd240(66)+acd240(67)+acd240(68)+acd240(69)+acd240(70)
      acd240(67)=acd240(10)*acd240(66)
      acd240(63)=acd240(63)*acd240(3)
      acd240(68)=acd240(31)*acd240(32)
      acd240(69)=acd240(33)*acd240(34)
      acd240(70)=acd240(29)*acd240(30)
      acd240(71)=acd240(28)*acd240(25)
      acd240(63)=acd240(63)+acd240(68)+acd240(69)+acd240(70)+acd240(71)
      acd240(68)=acd240(9)*acd240(63)
      acd240(69)=acd240(42)*acd240(43)
      acd240(70)=acd240(40)*acd240(41)
      acd240(71)=acd240(38)*acd240(39)
      acd240(72)=acd240(24)*acd240(27)
      acd240(73)=-acd240(16)+acd240(1)-acd240(13)
      acd240(74)=-acd240(7)*acd240(73)
      acd240(69)=acd240(74)+acd240(72)+acd240(71)+acd240(70)+acd240(52)+acd240(&
      &69)
      acd240(69)=acd240(6)*acd240(69)
      acd240(70)=acd240(37)*acd240(43)
      acd240(71)=acd240(36)*acd240(40)
      acd240(72)=acd240(35)*acd240(38)
      acd240(74)=acd240(24)*acd240(26)
      acd240(75)=-acd240(5)*acd240(73)
      acd240(70)=acd240(75)+acd240(74)+acd240(72)+acd240(71)+acd240(46)+acd240(&
      &70)
      acd240(70)=acd240(4)*acd240(70)
      acd240(71)=acd240(34)*acd240(43)
      acd240(72)=acd240(32)*acd240(40)
      acd240(74)=acd240(30)*acd240(38)
      acd240(75)=acd240(24)*acd240(25)
      acd240(73)=-acd240(3)*acd240(73)
      acd240(71)=acd240(73)+acd240(75)+acd240(74)+acd240(72)+acd240(45)+acd240(&
      &71)
      acd240(71)=acd240(2)*acd240(71)
      acd240(62)=-acd240(15)*acd240(62)
      acd240(72)=acd240(60)*acd240(61)
      acd240(73)=acd240(57)*acd240(58)
      acd240(74)=acd240(55)*acd240(56)
      acd240(75)=acd240(53)*acd240(54)
      acd240(76)=acd240(50)*acd240(51)
      acd240(77)=acd240(48)*acd240(49)
      acd240(78)=acd240(22)*acd240(23)
      acd240(79)=acd240(18)+acd240(21)+acd240(20)
      acd240(79)=acd240(19)*acd240(79)
      acd240(80)=acd240(33)*acd240(59)
      acd240(81)=acd240(29)*acd240(47)
      acd240(82)=acd240(28)*acd240(44)
      acd240(83)=acd240(8)*acd240(12)
      acd240(62)=acd240(71)+acd240(70)+acd240(69)+acd240(83)+acd240(82)+acd240(&
      &81)+acd240(80)+acd240(79)+2.0_ki*acd240(78)+acd240(77)+acd240(76)+acd240&
      &(75)+acd240(74)+acd240(72)+acd240(73)+acd240(62)+acd240(68)+acd240(67)+a&
      &cd240(65)
      acd240(64)=acd240(6)*acd240(64)
      acd240(65)=acd240(4)*acd240(66)
      acd240(63)=acd240(2)*acd240(63)
      acd240(63)=acd240(63)+acd240(64)+acd240(65)
      brack(ninjaidxt3mu0)=acd240(63)
      brack(ninjaidxt2mu0)=acd240(62)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d240h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd240h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d240h4l131
