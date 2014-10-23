module     p0_dbaru_epnebbbarg_d321h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d321h4l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd321
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd321(1)=dotproduct(k2,ninjaE3)
      acd321(2)=dotproduct(ninjaE3,spval5k2)
      acd321(3)=dotproduct(ninjaE3,spvak7k2)
      acd321(4)=abb321(15)
      acd321(5)=dotproduct(ninjaE3,spval6k2)
      acd321(6)=abb321(45)
      acd321(7)=dotproduct(k3,ninjaE3)
      acd321(8)=dotproduct(k4,ninjaE3)
      acd321(9)=dotproduct(ninjaE3,spvak1k2)
      acd321(10)=abb321(19)
      acd321(11)=dotproduct(ninjaE3,spvak4k2)
      acd321(12)=abb321(26)
      acd321(13)=dotproduct(ninjaE3,spvak4k3)
      acd321(14)=abb321(33)
      acd321(15)=abb321(20)
      acd321(16)=abb321(47)
      acd321(17)=abb321(34)
      acd321(18)=acd321(13)*acd321(17)
      acd321(19)=acd321(11)*acd321(16)
      acd321(20)=acd321(9)*acd321(15)
      acd321(21)=-acd321(8)+acd321(1)-acd321(7)
      acd321(22)=-acd321(6)*acd321(21)
      acd321(18)=acd321(22)+acd321(20)+acd321(18)+acd321(19)
      acd321(18)=acd321(5)*acd321(18)
      acd321(19)=acd321(13)*acd321(14)
      acd321(20)=acd321(11)*acd321(12)
      acd321(22)=acd321(9)*acd321(10)
      acd321(21)=-acd321(4)*acd321(21)
      acd321(19)=acd321(21)+acd321(22)+acd321(19)+acd321(20)
      acd321(19)=acd321(2)*acd321(19)
      acd321(18)=acd321(18)+acd321(19)
      acd321(18)=acd321(3)*acd321(18)
      brack(ninjaidxt1x0mu0)=acd321(18)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(83) :: acd321
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd321(1)=dotproduct(k2,ninjaA1)
      acd321(2)=dotproduct(ninjaE3,spval5k2)
      acd321(3)=dotproduct(ninjaE3,spvak7k2)
      acd321(4)=abb321(15)
      acd321(5)=dotproduct(ninjaE3,spval6k2)
      acd321(6)=abb321(45)
      acd321(7)=dotproduct(k2,ninjaE3)
      acd321(8)=dotproduct(ninjaA1,spval5k2)
      acd321(9)=dotproduct(ninjaA1,spvak7k2)
      acd321(10)=dotproduct(ninjaA1,spval6k2)
      acd321(11)=dotproduct(k3,ninjaA1)
      acd321(12)=dotproduct(k3,ninjaE3)
      acd321(13)=dotproduct(k4,ninjaA1)
      acd321(14)=dotproduct(k4,ninjaE3)
      acd321(15)=dotproduct(ninjaE3,spvak1k2)
      acd321(16)=abb321(19)
      acd321(17)=dotproduct(ninjaE3,spvak4k3)
      acd321(18)=abb321(33)
      acd321(19)=dotproduct(ninjaE3,spvak4k2)
      acd321(20)=abb321(26)
      acd321(21)=abb321(20)
      acd321(22)=abb321(34)
      acd321(23)=abb321(47)
      acd321(24)=dotproduct(ninjaA1,spvak1k2)
      acd321(25)=dotproduct(ninjaA1,spvak4k3)
      acd321(26)=dotproduct(ninjaA1,spvak4k2)
      acd321(27)=dotproduct(k2,ninjaA0)
      acd321(28)=dotproduct(ninjaA0,spval5k2)
      acd321(29)=dotproduct(ninjaA0,spvak7k2)
      acd321(30)=dotproduct(ninjaA0,spval6k2)
      acd321(31)=abb321(61)
      acd321(32)=dotproduct(k3,ninjaA0)
      acd321(33)=abb321(35)
      acd321(34)=dotproduct(k4,ninjaA0)
      acd321(35)=dotproduct(l5,ninjaE3)
      acd321(36)=abb321(55)
      acd321(37)=dotproduct(l6,ninjaE3)
      acd321(38)=abb321(41)
      acd321(39)=dotproduct(k7,ninjaE3)
      acd321(40)=abb321(38)
      acd321(41)=abb321(73)
      acd321(42)=dotproduct(ninjaA0,ninjaE3)
      acd321(43)=abb321(70)
      acd321(44)=abb321(13)
      acd321(45)=abb321(46)
      acd321(46)=dotproduct(ninjaA0,spvak1k2)
      acd321(47)=dotproduct(ninjaA0,spvak4k3)
      acd321(48)=dotproduct(ninjaA0,spvak4k2)
      acd321(49)=abb321(12)
      acd321(50)=abb321(71)
      acd321(51)=abb321(16)
      acd321(52)=abb321(31)
      acd321(53)=abb321(22)
      acd321(54)=dotproduct(ninjaE3,spvak1k3)
      acd321(55)=abb321(23)
      acd321(56)=abb321(37)
      acd321(57)=dotproduct(ninjaE3,spval6l5)
      acd321(58)=abb321(30)
      acd321(59)=dotproduct(ninjaE3,spval6k3)
      acd321(60)=abb321(49)
      acd321(61)=dotproduct(ninjaE3,spval6k7)
      acd321(62)=acd321(20)*acd321(26)
      acd321(63)=acd321(18)*acd321(25)
      acd321(64)=acd321(16)*acd321(24)
      acd321(65)=-acd321(13)+acd321(1)-acd321(11)
      acd321(66)=-acd321(4)*acd321(65)
      acd321(62)=acd321(66)+acd321(64)+acd321(62)+acd321(63)
      acd321(62)=acd321(2)*acd321(62)
      acd321(63)=acd321(23)*acd321(26)
      acd321(64)=acd321(22)*acd321(25)
      acd321(66)=acd321(21)*acd321(24)
      acd321(65)=-acd321(6)*acd321(65)
      acd321(63)=acd321(65)+acd321(66)+acd321(63)+acd321(64)
      acd321(63)=acd321(5)*acd321(63)
      acd321(64)=acd321(10)*acd321(23)
      acd321(65)=acd321(8)*acd321(20)
      acd321(64)=acd321(64)+acd321(65)
      acd321(64)=acd321(19)*acd321(64)
      acd321(65)=acd321(10)*acd321(22)
      acd321(66)=acd321(8)*acd321(18)
      acd321(65)=acd321(65)+acd321(66)
      acd321(65)=acd321(17)*acd321(65)
      acd321(66)=acd321(10)*acd321(21)
      acd321(67)=acd321(8)*acd321(16)
      acd321(66)=acd321(66)+acd321(67)
      acd321(66)=acd321(15)*acd321(66)
      acd321(67)=acd321(12)+acd321(14)
      acd321(68)=acd321(7)-acd321(67)
      acd321(69)=acd321(68)*acd321(6)
      acd321(70)=-acd321(10)*acd321(69)
      acd321(68)=acd321(68)*acd321(4)
      acd321(71)=-acd321(8)*acd321(68)
      acd321(62)=acd321(63)+acd321(62)+acd321(71)+acd321(70)+acd321(66)+acd321(&
      &64)+acd321(65)
      acd321(62)=acd321(3)*acd321(62)
      acd321(63)=acd321(19)*acd321(20)
      acd321(64)=acd321(17)*acd321(18)
      acd321(65)=acd321(15)*acd321(16)
      acd321(63)=acd321(68)-acd321(65)-acd321(63)-acd321(64)
      acd321(63)=acd321(63)*acd321(2)
      acd321(64)=acd321(19)*acd321(23)
      acd321(65)=acd321(17)*acd321(22)
      acd321(66)=acd321(15)*acd321(21)
      acd321(64)=acd321(69)-acd321(66)-acd321(64)-acd321(65)
      acd321(65)=-acd321(5)*acd321(64)
      acd321(65)=-acd321(63)+acd321(65)
      acd321(65)=acd321(9)*acd321(65)
      acd321(62)=acd321(62)+acd321(65)
      acd321(65)=acd321(20)*acd321(48)
      acd321(66)=acd321(18)*acd321(47)
      acd321(70)=acd321(16)*acd321(46)
      acd321(71)=-acd321(34)+acd321(27)-acd321(32)
      acd321(72)=-acd321(4)*acd321(71)
      acd321(65)=acd321(72)+acd321(70)+acd321(66)+acd321(49)+acd321(65)
      acd321(65)=acd321(2)*acd321(65)
      acd321(66)=acd321(23)*acd321(48)
      acd321(70)=acd321(22)*acd321(47)
      acd321(72)=acd321(21)*acd321(46)
      acd321(71)=-acd321(6)*acd321(71)
      acd321(66)=acd321(71)+acd321(72)+acd321(70)+acd321(52)+acd321(66)
      acd321(66)=acd321(5)*acd321(66)
      acd321(70)=acd321(23)*acd321(30)
      acd321(71)=acd321(20)*acd321(28)
      acd321(70)=acd321(71)+acd321(56)+acd321(70)
      acd321(70)=acd321(19)*acd321(70)
      acd321(71)=acd321(22)*acd321(30)
      acd321(72)=acd321(18)*acd321(28)
      acd321(71)=acd321(72)+acd321(53)+acd321(71)
      acd321(71)=acd321(17)*acd321(71)
      acd321(72)=acd321(21)*acd321(30)
      acd321(73)=acd321(16)*acd321(28)
      acd321(72)=acd321(73)+acd321(51)+acd321(72)
      acd321(72)=acd321(15)*acd321(72)
      acd321(67)=acd321(33)*acd321(67)
      acd321(73)=acd321(59)*acd321(60)
      acd321(74)=acd321(57)*acd321(58)
      acd321(75)=acd321(54)*acd321(55)
      acd321(76)=acd321(37)*acd321(38)
      acd321(77)=acd321(35)*acd321(36)
      acd321(78)=-acd321(41)*acd321(61)
      acd321(79)=acd321(39)*acd321(40)
      acd321(80)=2.0_ki*acd321(42)
      acd321(81)=acd321(43)*acd321(80)
      acd321(82)=acd321(7)*acd321(31)
      acd321(69)=-acd321(30)*acd321(69)
      acd321(68)=-acd321(28)*acd321(68)
      acd321(83)=acd321(3)*acd321(50)
      acd321(65)=acd321(83)+acd321(66)+acd321(65)+acd321(68)+acd321(69)+acd321(&
      &72)+acd321(82)+acd321(71)+acd321(70)+acd321(81)+acd321(79)+acd321(78)+ac&
      &d321(77)+acd321(76)+acd321(75)+acd321(73)+acd321(74)+acd321(67)
      acd321(65)=acd321(3)*acd321(65)
      acd321(63)=-acd321(29)*acd321(63)
      acd321(64)=-acd321(29)*acd321(64)
      acd321(66)=acd321(39)*acd321(41)
      acd321(67)=acd321(45)*acd321(80)
      acd321(64)=acd321(66)+acd321(67)+acd321(64)
      acd321(64)=acd321(5)*acd321(64)
      acd321(66)=acd321(15)*acd321(44)*acd321(80)
      acd321(63)=acd321(65)+acd321(64)+acd321(66)+acd321(63)
      brack(ninjaidxt0x0mu0)=acd321(63)
      brack(ninjaidxt0x1mu0)=acd321(62)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d321h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
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
end module     p0_dbaru_epnebbbarg_d321h4l132
