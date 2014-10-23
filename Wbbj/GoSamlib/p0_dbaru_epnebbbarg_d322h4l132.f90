module     p0_dbaru_epnebbbarg_d322h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d322h4l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd322h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd322
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd322(1)=dotproduct(ninjaE3,spvak1k2)
      acd322(2)=dotproduct(ninjaE3,spval6k2)
      acd322(3)=dotproduct(ninjaE3,spvak7k2)
      acd322(4)=abb322(18)
      acd322(5)=dotproduct(ninjaE3,spval5k2)
      acd322(6)=abb322(25)
      acd322(7)=dotproduct(ninjaE3,spvak1k3)
      acd322(8)=abb322(45)
      acd322(9)=dotproduct(ninjaE3,spvak4k2)
      acd322(10)=abb322(43)
      acd322(11)=abb322(29)
      acd322(12)=abb322(35)
      acd322(13)=acd322(6)*acd322(1)
      acd322(14)=acd322(11)*acd322(7)
      acd322(15)=acd322(12)*acd322(9)
      acd322(13)=acd322(15)+acd322(14)+acd322(13)
      acd322(13)=acd322(13)*acd322(5)
      acd322(14)=acd322(4)*acd322(1)
      acd322(15)=acd322(8)*acd322(7)
      acd322(16)=acd322(10)*acd322(9)
      acd322(14)=acd322(16)+acd322(15)+acd322(14)
      acd322(14)=acd322(14)*acd322(2)
      acd322(13)=acd322(14)+acd322(13)
      acd322(13)=acd322(3)*acd322(13)
      brack(ninjaidxt1x0mu0)=acd322(13)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd322h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(75) :: acd322
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd322(1)=dotproduct(ninjaA1,spval6k2)
      acd322(2)=dotproduct(ninjaE3,spvak7k2)
      acd322(3)=dotproduct(ninjaE3,spvak1k2)
      acd322(4)=abb322(18)
      acd322(5)=dotproduct(ninjaE3,spvak1k3)
      acd322(6)=abb322(45)
      acd322(7)=dotproduct(ninjaE3,spvak4k2)
      acd322(8)=abb322(43)
      acd322(9)=dotproduct(ninjaA1,spvak7k2)
      acd322(10)=dotproduct(ninjaE3,spval6k2)
      acd322(11)=dotproduct(ninjaE3,spval5k2)
      acd322(12)=abb322(25)
      acd322(13)=abb322(29)
      acd322(14)=abb322(35)
      acd322(15)=dotproduct(ninjaA1,spvak1k2)
      acd322(16)=dotproduct(ninjaA1,spvak1k3)
      acd322(17)=dotproduct(ninjaA1,spval5k2)
      acd322(18)=dotproduct(ninjaA1,spvak4k2)
      acd322(19)=dotproduct(k2,ninjaE3)
      acd322(20)=abb322(17)
      acd322(21)=abb322(57)
      acd322(22)=abb322(26)
      acd322(23)=dotproduct(l5,ninjaE3)
      acd322(24)=abb322(85)
      acd322(25)=abb322(74)
      acd322(26)=dotproduct(l6,ninjaE3)
      acd322(27)=abb322(33)
      acd322(28)=abb322(32)
      acd322(29)=dotproduct(k7,ninjaE3)
      acd322(30)=abb322(54)
      acd322(31)=dotproduct(ninjaA0,ninjaE3)
      acd322(32)=abb322(20)
      acd322(33)=abb322(44)
      acd322(34)=abb322(22)
      acd322(35)=dotproduct(ninjaA0,spval6k2)
      acd322(36)=dotproduct(ninjaA0,spvak7k2)
      acd322(37)=dotproduct(ninjaA0,spvak1k2)
      acd322(38)=dotproduct(ninjaA0,spvak1k3)
      acd322(39)=dotproduct(ninjaA0,spval5k2)
      acd322(40)=dotproduct(ninjaA0,spvak4k2)
      acd322(41)=abb322(13)
      acd322(42)=abb322(53)
      acd322(43)=abb322(14)
      acd322(44)=abb322(23)
      acd322(45)=abb322(36)
      acd322(46)=abb322(30)
      acd322(47)=dotproduct(ninjaE3,spval5k3)
      acd322(48)=abb322(34)
      acd322(49)=dotproduct(ninjaE3,spval6k3)
      acd322(50)=abb322(79)
      acd322(51)=dotproduct(ninjaE3,spval6k7)
      acd322(52)=dotproduct(ninjaE3,spval6l5)
      acd322(53)=abb322(87)
      acd322(54)=acd322(3)*acd322(12)
      acd322(55)=acd322(13)*acd322(5)
      acd322(56)=acd322(14)*acd322(7)
      acd322(54)=acd322(54)+acd322(56)+acd322(55)
      acd322(54)=acd322(11)*acd322(54)
      acd322(55)=acd322(4)*acd322(3)
      acd322(56)=acd322(6)*acd322(5)
      acd322(57)=acd322(8)*acd322(7)
      acd322(55)=acd322(57)+acd322(55)+acd322(56)
      acd322(55)=acd322(55)*acd322(10)
      acd322(54)=acd322(55)+acd322(54)
      acd322(55)=acd322(9)*acd322(54)
      acd322(56)=acd322(7)*acd322(2)
      acd322(57)=acd322(56)*acd322(8)
      acd322(58)=acd322(5)*acd322(2)
      acd322(59)=acd322(58)*acd322(6)
      acd322(60)=acd322(3)*acd322(2)
      acd322(61)=acd322(60)*acd322(4)
      acd322(57)=acd322(61)+acd322(57)+acd322(59)
      acd322(59)=acd322(1)*acd322(57)
      acd322(61)=acd322(56)*acd322(14)
      acd322(62)=acd322(58)*acd322(13)
      acd322(63)=acd322(60)*acd322(12)
      acd322(61)=acd322(63)+acd322(61)+acd322(62)
      acd322(62)=acd322(17)*acd322(61)
      acd322(63)=acd322(11)*acd322(2)
      acd322(64)=acd322(63)*acd322(12)
      acd322(65)=acd322(10)*acd322(2)
      acd322(66)=acd322(65)*acd322(4)
      acd322(64)=acd322(64)+acd322(66)
      acd322(66)=acd322(15)*acd322(64)
      acd322(67)=acd322(63)*acd322(13)
      acd322(68)=acd322(65)*acd322(6)
      acd322(67)=acd322(67)+acd322(68)
      acd322(68)=acd322(16)*acd322(67)
      acd322(69)=acd322(63)*acd322(14)
      acd322(70)=acd322(65)*acd322(8)
      acd322(69)=acd322(69)+acd322(70)
      acd322(70)=acd322(18)*acd322(69)
      acd322(55)=acd322(70)+acd322(68)+acd322(66)+acd322(62)+acd322(59)+acd322(&
      &55)
      acd322(59)=acd322(21)*acd322(19)
      acd322(62)=acd322(25)*acd322(23)
      acd322(66)=acd322(27)*acd322(26)
      acd322(68)=acd322(30)*acd322(29)
      acd322(70)=2.0_ki*acd322(31)
      acd322(71)=acd322(33)*acd322(70)
      acd322(72)=acd322(48)*acd322(47)
      acd322(73)=acd322(50)*acd322(49)
      acd322(74)=acd322(51)*acd322(24)
      acd322(75)=acd322(53)*acd322(52)
      acd322(59)=acd322(75)+acd322(74)+acd322(73)+acd322(72)+acd322(71)+acd322(&
      &68)+acd322(66)+acd322(62)+acd322(59)
      acd322(59)=acd322(2)*acd322(59)
      acd322(54)=acd322(36)*acd322(54)
      acd322(62)=acd322(24)*acd322(23)
      acd322(66)=acd322(20)*acd322(19)
      acd322(68)=acd322(32)*acd322(70)
      acd322(62)=acd322(68)+acd322(66)+acd322(62)
      acd322(62)=acd322(10)*acd322(62)
      acd322(66)=-acd322(29)-acd322(26)
      acd322(66)=acd322(28)*acd322(66)
      acd322(68)=acd322(22)*acd322(19)
      acd322(70)=acd322(34)*acd322(70)
      acd322(66)=acd322(70)+acd322(68)+acd322(66)
      acd322(66)=acd322(3)*acd322(66)
      acd322(57)=acd322(35)*acd322(57)
      acd322(61)=acd322(39)*acd322(61)
      acd322(64)=acd322(37)*acd322(64)
      acd322(67)=acd322(38)*acd322(67)
      acd322(68)=acd322(40)*acd322(69)
      acd322(65)=acd322(41)*acd322(65)
      acd322(69)=acd322(42)*acd322(2)**2
      acd322(60)=acd322(43)*acd322(60)
      acd322(58)=acd322(44)*acd322(58)
      acd322(63)=acd322(45)*acd322(63)
      acd322(56)=acd322(46)*acd322(56)
      acd322(54)=acd322(56)+acd322(63)+acd322(58)+acd322(60)+acd322(69)+acd322(&
      &65)+acd322(68)+acd322(67)+acd322(64)+acd322(61)+acd322(54)+acd322(57)+ac&
      &d322(59)+acd322(66)+acd322(62)
      brack(ninjaidxt0x0mu0)=acd322(54)
      brack(ninjaidxt0x1mu0)=acd322(55)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d322h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd322h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = + a0(0:3)
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
end module     p0_dbaru_epnebbbarg_d322h4l132
