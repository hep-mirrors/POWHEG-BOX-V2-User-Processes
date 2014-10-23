module     p0_dbaru_epnebbbarg_d175h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d175h4l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd175h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(27) :: acd175
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd175(1)=dotproduct(k2,ninjaE3)
      acd175(2)=dotproduct(ninjaE3,spval5k2)
      acd175(3)=abb175(30)
      acd175(4)=dotproduct(ninjaE3,spval6k2)
      acd175(5)=abb175(40)
      acd175(6)=dotproduct(ninjaE3,spvak7k2)
      acd175(7)=abb175(76)
      acd175(8)=dotproduct(k3,ninjaE3)
      acd175(9)=dotproduct(k4,ninjaE3)
      acd175(10)=dotproduct(ninjaE3,spvak1k2)
      acd175(11)=abb175(14)
      acd175(12)=abb175(24)
      acd175(13)=abb175(23)
      acd175(14)=dotproduct(ninjaE3,spvak4k2)
      acd175(15)=abb175(18)
      acd175(16)=dotproduct(ninjaE3,spvak4k3)
      acd175(17)=abb175(49)
      acd175(18)=abb175(17)
      acd175(19)=abb175(42)
      acd175(20)=abb175(53)
      acd175(21)=abb175(52)
      acd175(22)=-acd175(1)+acd175(8)+acd175(9)
      acd175(23)=-acd175(7)*acd175(22)
      acd175(24)=acd175(16)*acd175(21)
      acd175(25)=acd175(14)*acd175(19)
      acd175(26)=acd175(10)*acd175(13)
      acd175(23)=acd175(26)+acd175(24)+acd175(25)+acd175(23)
      acd175(23)=acd175(6)*acd175(23)
      acd175(24)=acd175(5)*acd175(22)
      acd175(25)=acd175(16)*acd175(20)
      acd175(26)=acd175(14)*acd175(18)
      acd175(27)=acd175(10)*acd175(12)
      acd175(24)=acd175(27)+acd175(25)+acd175(26)+acd175(24)
      acd175(24)=acd175(4)*acd175(24)
      acd175(22)=-acd175(3)*acd175(22)
      acd175(25)=acd175(16)*acd175(17)
      acd175(26)=acd175(14)*acd175(15)
      acd175(27)=acd175(10)*acd175(11)
      acd175(22)=acd175(27)+acd175(25)+acd175(26)+acd175(22)
      acd175(22)=acd175(2)*acd175(22)
      acd175(22)=acd175(22)+acd175(23)+acd175(24)
      brack(ninjaidxt1x0mu0)=acd175(22)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd175h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(85) :: acd175
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd175(1)=dotproduct(k2,ninjaA1)
      acd175(2)=dotproduct(ninjaE3,spval5k2)
      acd175(3)=abb175(30)
      acd175(4)=dotproduct(ninjaE3,spval6k2)
      acd175(5)=abb175(40)
      acd175(6)=dotproduct(ninjaE3,spvak7k2)
      acd175(7)=abb175(76)
      acd175(8)=dotproduct(k2,ninjaE3)
      acd175(9)=dotproduct(ninjaA1,spval5k2)
      acd175(10)=dotproduct(ninjaA1,spval6k2)
      acd175(11)=dotproduct(ninjaA1,spvak7k2)
      acd175(12)=dotproduct(k3,ninjaA1)
      acd175(13)=dotproduct(k3,ninjaE3)
      acd175(14)=dotproduct(k4,ninjaA1)
      acd175(15)=dotproduct(k4,ninjaE3)
      acd175(16)=dotproduct(ninjaA1,spvak1k2)
      acd175(17)=abb175(14)
      acd175(18)=abb175(24)
      acd175(19)=abb175(23)
      acd175(20)=dotproduct(ninjaE3,spvak1k2)
      acd175(21)=dotproduct(ninjaE3,spvak4k2)
      acd175(22)=abb175(18)
      acd175(23)=dotproduct(ninjaE3,spvak4k3)
      acd175(24)=abb175(49)
      acd175(25)=dotproduct(ninjaA1,spvak4k2)
      acd175(26)=abb175(17)
      acd175(27)=abb175(42)
      acd175(28)=abb175(53)
      acd175(29)=dotproduct(ninjaA1,spvak4k3)
      acd175(30)=abb175(52)
      acd175(31)=dotproduct(k2,ninjaA0)
      acd175(32)=dotproduct(ninjaA0,spval5k2)
      acd175(33)=dotproduct(ninjaA0,spval6k2)
      acd175(34)=dotproduct(ninjaA0,spvak7k2)
      acd175(35)=abb175(51)
      acd175(36)=dotproduct(k3,ninjaA0)
      acd175(37)=abb175(56)
      acd175(38)=dotproduct(k4,ninjaA0)
      acd175(39)=dotproduct(l5,ninjaE3)
      acd175(40)=abb175(34)
      acd175(41)=dotproduct(l6,ninjaE3)
      acd175(42)=abb175(31)
      acd175(43)=dotproduct(k7,ninjaE3)
      acd175(44)=dotproduct(ninjaA0,ninjaE3)
      acd175(45)=abb175(32)
      acd175(46)=dotproduct(ninjaA0,spvak1k2)
      acd175(47)=dotproduct(ninjaA0,spvak4k2)
      acd175(48)=dotproduct(ninjaA0,spvak4k3)
      acd175(49)=abb175(13)
      acd175(50)=abb175(16)
      acd175(51)=dotproduct(ninjaE3,spval6k3)
      acd175(52)=abb175(15)
      acd175(53)=abb175(54)
      acd175(54)=abb175(26)
      acd175(55)=dotproduct(ninjaE3,spvak1k3)
      acd175(56)=abb175(21)
      acd175(57)=abb175(22)
      acd175(58)=abb175(28)
      acd175(59)=dotproduct(ninjaE3,spval6l5)
      acd175(60)=abb175(33)
      acd175(61)=dotproduct(ninjaE3,spval6k7)
      acd175(62)=abb175(78)
      acd175(63)=acd175(15)+acd175(13)
      acd175(64)=acd175(63)-acd175(8)
      acd175(65)=acd175(64)*acd175(3)
      acd175(66)=acd175(17)*acd175(20)
      acd175(67)=acd175(22)*acd175(21)
      acd175(68)=acd175(24)*acd175(23)
      acd175(65)=-acd175(65)+acd175(66)+acd175(67)+acd175(68)
      acd175(66)=acd175(9)*acd175(65)
      acd175(67)=acd175(64)*acd175(5)
      acd175(68)=acd175(18)*acd175(20)
      acd175(69)=acd175(26)*acd175(21)
      acd175(70)=acd175(28)*acd175(23)
      acd175(67)=acd175(70)+acd175(67)+acd175(68)+acd175(69)
      acd175(68)=acd175(10)*acd175(67)
      acd175(64)=acd175(64)*acd175(7)
      acd175(69)=acd175(19)*acd175(20)
      acd175(70)=acd175(27)*acd175(21)
      acd175(71)=acd175(30)*acd175(23)
      acd175(64)=acd175(71)-acd175(64)+acd175(69)+acd175(70)
      acd175(69)=acd175(11)*acd175(64)
      acd175(70)=acd175(3)*acd175(2)
      acd175(71)=acd175(5)*acd175(4)
      acd175(72)=acd175(7)*acd175(6)
      acd175(70)=acd175(72)+acd175(70)-acd175(71)
      acd175(71)=-acd175(14)-acd175(12)+acd175(1)
      acd175(71)=acd175(70)*acd175(71)
      acd175(72)=acd175(17)*acd175(2)
      acd175(73)=acd175(18)*acd175(4)
      acd175(74)=acd175(19)*acd175(6)
      acd175(72)=acd175(74)+acd175(72)+acd175(73)
      acd175(73)=acd175(16)*acd175(72)
      acd175(74)=acd175(22)*acd175(2)
      acd175(75)=acd175(26)*acd175(4)
      acd175(76)=acd175(27)*acd175(6)
      acd175(74)=acd175(76)+acd175(74)+acd175(75)
      acd175(75)=acd175(25)*acd175(74)
      acd175(76)=acd175(24)*acd175(2)
      acd175(77)=acd175(28)*acd175(4)
      acd175(78)=acd175(30)*acd175(6)
      acd175(76)=acd175(78)+acd175(76)+acd175(77)
      acd175(77)=acd175(29)*acd175(76)
      acd175(66)=acd175(77)+acd175(75)+acd175(73)+acd175(69)+acd175(68)+acd175(&
      &66)+acd175(71)
      acd175(65)=acd175(32)*acd175(65)
      acd175(67)=acd175(33)*acd175(67)
      acd175(64)=acd175(34)*acd175(64)
      acd175(68)=-acd175(38)-acd175(36)+acd175(31)
      acd175(68)=acd175(70)*acd175(68)
      acd175(69)=acd175(46)*acd175(72)
      acd175(70)=acd175(47)*acd175(74)
      acd175(71)=acd175(48)*acd175(76)
      acd175(72)=acd175(43)+acd175(39)
      acd175(72)=acd175(40)*acd175(72)
      acd175(63)=acd175(37)*acd175(63)
      acd175(73)=acd175(35)*acd175(8)
      acd175(74)=acd175(42)*acd175(41)
      acd175(75)=acd175(45)*acd175(44)
      acd175(76)=acd175(49)*acd175(20)
      acd175(77)=acd175(50)*acd175(2)
      acd175(78)=acd175(52)*acd175(51)
      acd175(79)=acd175(53)*acd175(21)
      acd175(80)=acd175(54)*acd175(4)
      acd175(81)=acd175(56)*acd175(55)
      acd175(82)=acd175(57)*acd175(23)
      acd175(83)=acd175(58)*acd175(6)
      acd175(84)=acd175(60)*acd175(59)
      acd175(85)=acd175(62)*acd175(61)
      acd175(63)=acd175(85)+acd175(84)+acd175(83)+acd175(82)+acd175(81)+acd175(&
      &80)+acd175(79)+acd175(78)+acd175(77)+acd175(76)+2.0_ki*acd175(75)+acd175&
      &(74)+acd175(73)+acd175(63)+acd175(71)+acd175(70)+acd175(69)+acd175(64)+a&
      &cd175(67)+acd175(65)+acd175(72)+acd175(68)
      brack(ninjaidxt0x0mu0)=acd175(63)
      brack(ninjaidxt0x1mu0)=acd175(66)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d175h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd175h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6
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
end module     p0_dbaru_epnebbbarg_d175h4l132
