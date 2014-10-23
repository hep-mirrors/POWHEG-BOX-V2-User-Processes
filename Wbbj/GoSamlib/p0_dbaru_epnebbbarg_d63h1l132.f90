module     p0_dbaru_epnebbbarg_d63h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d63h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd63h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(55) :: acd63
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd63(1)=dotproduct(k1,ninjaE3)
      acd63(2)=abb63(23)
      acd63(3)=dotproduct(k2,ninjaE3)
      acd63(4)=abb63(21)
      acd63(5)=dotproduct(k3,ninjaE3)
      acd63(6)=abb63(64)
      acd63(7)=dotproduct(k4,ninjaE3)
      acd63(8)=abb63(86)
      acd63(9)=dotproduct(l5,ninjaE3)
      acd63(10)=abb63(113)
      acd63(11)=dotproduct(l6,ninjaE3)
      acd63(12)=dotproduct(k7,ninjaE3)
      acd63(13)=abb63(22)
      acd63(14)=dotproduct(ninjaE3,spvak2k7)
      acd63(15)=abb63(15)
      acd63(16)=dotproduct(ninjaE3,spval6k2)
      acd63(17)=abb63(16)
      acd63(18)=dotproduct(ninjaE3,spval5k2)
      acd63(19)=abb63(17)
      acd63(20)=dotproduct(ninjaE3,spvak2l6)
      acd63(21)=abb63(19)
      acd63(22)=dotproduct(ninjaE3,spval6k7)
      acd63(23)=abb63(20)
      acd63(24)=dotproduct(ninjaE3,spvak2l5)
      acd63(25)=abb63(24)
      acd63(26)=dotproduct(ninjaE3,spvak1k3)
      acd63(27)=abb63(25)
      acd63(28)=dotproduct(ninjaE3,spvak4k1)
      acd63(29)=abb63(26)
      acd63(30)=dotproduct(ninjaE3,spvak4k3)
      acd63(31)=abb63(27)
      acd63(32)=dotproduct(ninjaE3,spvak1k4)
      acd63(33)=abb63(28)
      acd63(34)=dotproduct(ninjaE3,spvak7k2)
      acd63(35)=abb63(31)
      acd63(36)=dotproduct(ninjaE3,spval6l5)
      acd63(37)=abb63(33)
      acd63(38)=acd63(11)+acd63(9)
      acd63(38)=acd63(10)*acd63(38)
      acd63(39)=acd63(2)*acd63(1)
      acd63(40)=acd63(4)*acd63(3)
      acd63(41)=acd63(6)*acd63(5)
      acd63(42)=acd63(8)*acd63(7)
      acd63(43)=acd63(13)*acd63(12)
      acd63(44)=acd63(15)*acd63(14)
      acd63(45)=acd63(17)*acd63(16)
      acd63(46)=acd63(19)*acd63(18)
      acd63(47)=acd63(21)*acd63(20)
      acd63(48)=acd63(23)*acd63(22)
      acd63(49)=acd63(25)*acd63(24)
      acd63(50)=acd63(27)*acd63(26)
      acd63(51)=acd63(29)*acd63(28)
      acd63(52)=acd63(31)*acd63(30)
      acd63(53)=acd63(33)*acd63(32)
      acd63(54)=acd63(35)*acd63(34)
      acd63(55)=acd63(37)*acd63(36)
      acd63(38)=acd63(55)+acd63(54)+acd63(53)+acd63(52)+acd63(51)+acd63(50)+acd&
      &63(49)+acd63(48)+acd63(47)+acd63(46)+acd63(45)+acd63(44)+acd63(43)+acd63&
      &(42)+acd63(41)+acd63(39)+acd63(40)+acd63(38)
      brack(ninjaidxt1x0mu0)=acd63(38)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd63h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(76) :: acd63
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd63(1)=dotproduct(k1,ninjaA1)
      acd63(2)=abb63(23)
      acd63(3)=dotproduct(k2,ninjaA1)
      acd63(4)=abb63(21)
      acd63(5)=dotproduct(k3,ninjaA1)
      acd63(6)=abb63(64)
      acd63(7)=dotproduct(k4,ninjaA1)
      acd63(8)=abb63(86)
      acd63(9)=dotproduct(l5,ninjaA1)
      acd63(10)=abb63(113)
      acd63(11)=dotproduct(l6,ninjaA1)
      acd63(12)=dotproduct(k7,ninjaA1)
      acd63(13)=abb63(22)
      acd63(14)=dotproduct(ninjaA1,spvak2k7)
      acd63(15)=abb63(15)
      acd63(16)=dotproduct(ninjaA1,spval6k2)
      acd63(17)=abb63(16)
      acd63(18)=dotproduct(ninjaA1,spval5k2)
      acd63(19)=abb63(17)
      acd63(20)=dotproduct(ninjaA1,spvak2l6)
      acd63(21)=abb63(19)
      acd63(22)=dotproduct(ninjaA1,spval6k7)
      acd63(23)=abb63(20)
      acd63(24)=dotproduct(ninjaA1,spvak2l5)
      acd63(25)=abb63(24)
      acd63(26)=dotproduct(ninjaA1,spvak1k3)
      acd63(27)=abb63(25)
      acd63(28)=dotproduct(ninjaA1,spvak4k1)
      acd63(29)=abb63(26)
      acd63(30)=dotproduct(ninjaA1,spvak4k3)
      acd63(31)=abb63(27)
      acd63(32)=dotproduct(ninjaA1,spvak1k4)
      acd63(33)=abb63(28)
      acd63(34)=dotproduct(ninjaA1,spvak7k2)
      acd63(35)=abb63(31)
      acd63(36)=dotproduct(ninjaA1,spval6l5)
      acd63(37)=abb63(33)
      acd63(38)=dotproduct(k1,ninjaA0)
      acd63(39)=dotproduct(k2,ninjaA0)
      acd63(40)=dotproduct(k3,ninjaA0)
      acd63(41)=dotproduct(k4,ninjaA0)
      acd63(42)=dotproduct(l5,ninjaA0)
      acd63(43)=dotproduct(l6,ninjaA0)
      acd63(44)=dotproduct(k7,ninjaA0)
      acd63(45)=dotproduct(ninjaA0,spvak2k7)
      acd63(46)=dotproduct(ninjaA0,spval6k2)
      acd63(47)=dotproduct(ninjaA0,spval5k2)
      acd63(48)=dotproduct(ninjaA0,spvak2l6)
      acd63(49)=dotproduct(ninjaA0,spval6k7)
      acd63(50)=dotproduct(ninjaA0,spvak2l5)
      acd63(51)=dotproduct(ninjaA0,spvak1k3)
      acd63(52)=dotproduct(ninjaA0,spvak4k1)
      acd63(53)=dotproduct(ninjaA0,spvak4k3)
      acd63(54)=dotproduct(ninjaA0,spvak1k4)
      acd63(55)=dotproduct(ninjaA0,spvak7k2)
      acd63(56)=dotproduct(ninjaA0,spval6l5)
      acd63(57)=abb63(18)
      acd63(58)=acd63(11)+acd63(9)
      acd63(58)=acd63(10)*acd63(58)
      acd63(59)=acd63(1)*acd63(2)
      acd63(60)=acd63(3)*acd63(4)
      acd63(61)=acd63(5)*acd63(6)
      acd63(62)=acd63(7)*acd63(8)
      acd63(63)=acd63(12)*acd63(13)
      acd63(64)=acd63(14)*acd63(15)
      acd63(65)=acd63(16)*acd63(17)
      acd63(66)=acd63(18)*acd63(19)
      acd63(67)=acd63(20)*acd63(21)
      acd63(68)=acd63(22)*acd63(23)
      acd63(69)=acd63(24)*acd63(25)
      acd63(70)=acd63(26)*acd63(27)
      acd63(71)=acd63(28)*acd63(29)
      acd63(72)=acd63(30)*acd63(31)
      acd63(73)=acd63(32)*acd63(33)
      acd63(74)=acd63(34)*acd63(35)
      acd63(75)=acd63(36)*acd63(37)
      acd63(58)=acd63(75)+acd63(74)+acd63(73)+acd63(72)+acd63(71)+acd63(70)+acd&
      &63(69)+acd63(68)+acd63(67)+acd63(66)+acd63(65)+acd63(64)+acd63(63)+acd63&
      &(62)+acd63(61)+acd63(59)+acd63(60)+acd63(58)
      acd63(59)=acd63(43)+acd63(42)
      acd63(59)=acd63(10)*acd63(59)
      acd63(60)=acd63(38)*acd63(2)
      acd63(61)=acd63(39)*acd63(4)
      acd63(62)=acd63(40)*acd63(6)
      acd63(63)=acd63(41)*acd63(8)
      acd63(64)=acd63(44)*acd63(13)
      acd63(65)=acd63(45)*acd63(15)
      acd63(66)=acd63(46)*acd63(17)
      acd63(67)=acd63(47)*acd63(19)
      acd63(68)=acd63(48)*acd63(21)
      acd63(69)=acd63(49)*acd63(23)
      acd63(70)=acd63(50)*acd63(25)
      acd63(71)=acd63(51)*acd63(27)
      acd63(72)=acd63(52)*acd63(29)
      acd63(73)=acd63(53)*acd63(31)
      acd63(74)=acd63(54)*acd63(33)
      acd63(75)=acd63(55)*acd63(35)
      acd63(76)=acd63(56)*acd63(37)
      acd63(59)=acd63(57)+acd63(76)+acd63(75)+acd63(74)+acd63(73)+acd63(72)+acd&
      &63(71)+acd63(70)+acd63(69)+acd63(68)+acd63(67)+acd63(66)+acd63(65)+acd63&
      &(64)+acd63(63)+acd63(62)+acd63(60)+acd63(61)+acd63(59)
      brack(ninjaidxt0x0mu0)=acd63(59)
      brack(ninjaidxt0x1mu0)=acd63(58)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d63h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd63h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
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
end module     p0_dbaru_epnebbbarg_d63h1l132
