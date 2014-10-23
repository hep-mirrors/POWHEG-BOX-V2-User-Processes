module     p0_dbaru_epnebbbarg_d176h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d176h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd176h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(20) :: acd176
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd176(1)=dotproduct(ninjaE3,spvak1k2)
      acd176(2)=dotproduct(ninjaE3,spvak2k7)
      acd176(3)=abb176(18)
      acd176(4)=dotproduct(ninjaE3,spvak2l6)
      acd176(5)=abb176(33)
      acd176(6)=dotproduct(ninjaE3,spvak2l5)
      acd176(7)=abb176(36)
      acd176(8)=dotproduct(ninjaE3,spvak1k3)
      acd176(9)=abb176(29)
      acd176(10)=dotproduct(ninjaE3,spvak4k2)
      acd176(11)=abb176(58)
      acd176(12)=abb176(32)
      acd176(13)=abb176(35)
      acd176(14)=abb176(46)
      acd176(15)=abb176(38)
      acd176(16)=acd176(3)*acd176(2)
      acd176(17)=acd176(5)*acd176(4)
      acd176(18)=acd176(7)*acd176(6)
      acd176(16)=acd176(18)+acd176(16)+acd176(17)
      acd176(16)=acd176(1)*acd176(16)
      acd176(17)=acd176(9)*acd176(2)
      acd176(18)=acd176(12)*acd176(4)
      acd176(19)=acd176(13)*acd176(6)
      acd176(17)=acd176(19)+acd176(18)+acd176(17)
      acd176(17)=acd176(8)*acd176(17)
      acd176(18)=acd176(11)*acd176(2)
      acd176(19)=acd176(14)*acd176(4)
      acd176(20)=acd176(15)*acd176(6)
      acd176(18)=acd176(20)+acd176(19)+acd176(18)
      acd176(18)=acd176(10)*acd176(18)
      acd176(16)=acd176(18)+acd176(17)+acd176(16)
      brack(ninjaidxt1x0mu0)=acd176(16)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd176h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(94) :: acd176
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd176(1)=dotproduct(ninjaA1,spvak1k2)
      acd176(2)=dotproduct(ninjaE3,spvak2k7)
      acd176(3)=abb176(18)
      acd176(4)=dotproduct(ninjaE3,spvak2l6)
      acd176(5)=abb176(33)
      acd176(6)=dotproduct(ninjaE3,spvak2l5)
      acd176(7)=abb176(36)
      acd176(8)=dotproduct(ninjaA1,spvak2k7)
      acd176(9)=dotproduct(ninjaE3,spvak1k2)
      acd176(10)=dotproduct(ninjaE3,spvak1k3)
      acd176(11)=abb176(29)
      acd176(12)=dotproduct(ninjaE3,spvak4k2)
      acd176(13)=abb176(58)
      acd176(14)=dotproduct(ninjaA1,spvak2l6)
      acd176(15)=abb176(32)
      acd176(16)=abb176(46)
      acd176(17)=dotproduct(ninjaA1,spvak1k3)
      acd176(18)=abb176(35)
      acd176(19)=dotproduct(ninjaA1,spvak2l5)
      acd176(20)=abb176(38)
      acd176(21)=dotproduct(ninjaA1,spvak4k2)
      acd176(22)=dotproduct(k2,ninjaE3)
      acd176(23)=abb176(15)
      acd176(24)=dotproduct(l5,ninjaE3)
      acd176(25)=abb176(30)
      acd176(26)=dotproduct(l6,ninjaE3)
      acd176(27)=abb176(25)
      acd176(28)=dotproduct(k7,ninjaE3)
      acd176(29)=abb176(24)
      acd176(30)=dotproduct(ninjaA0,ninjaE3)
      acd176(31)=abb176(31)
      acd176(32)=dotproduct(ninjaA0,spvak1k2)
      acd176(33)=dotproduct(ninjaA0,spvak2k7)
      acd176(34)=dotproduct(ninjaA0,spvak2l6)
      acd176(35)=dotproduct(ninjaA0,spvak1k3)
      acd176(36)=dotproduct(ninjaA0,spvak2l5)
      acd176(37)=dotproduct(ninjaA0,spvak4k2)
      acd176(38)=dotproduct(ninjaE3,spval5k7)
      acd176(39)=abb176(14)
      acd176(40)=abb176(16)
      acd176(41)=dotproduct(ninjaE3,spvak1k7)
      acd176(42)=abb176(17)
      acd176(43)=abb176(53)
      acd176(44)=dotproduct(ninjaE3,spval5l6)
      acd176(45)=abb176(20)
      acd176(46)=dotproduct(ninjaE3,spvak1l5)
      acd176(47)=abb176(21)
      acd176(48)=dotproduct(ninjaE3,spvak2k3)
      acd176(49)=abb176(22)
      acd176(50)=abb176(23)
      acd176(51)=abb176(26)
      acd176(52)=dotproduct(ninjaE3,spvak1l6)
      acd176(53)=abb176(27)
      acd176(54)=dotproduct(ninjaE3,spvak4l5)
      acd176(55)=abb176(28)
      acd176(56)=dotproduct(ninjaE3,spvak4k7)
      acd176(57)=abb176(34)
      acd176(58)=abb176(51)
      acd176(59)=dotproduct(ninjaE3,spvak7l5)
      acd176(60)=abb176(37)
      acd176(61)=abb176(44)
      acd176(62)=dotproduct(ninjaE3,spvak4l6)
      acd176(63)=abb176(39)
      acd176(64)=dotproduct(ninjaE3,spvak7l6)
      acd176(65)=abb176(43)
      acd176(66)=acd176(3)*acd176(2)
      acd176(67)=acd176(5)*acd176(4)
      acd176(68)=acd176(7)*acd176(6)
      acd176(66)=acd176(68)+acd176(66)+acd176(67)
      acd176(67)=acd176(1)*acd176(66)
      acd176(68)=acd176(3)*acd176(9)
      acd176(69)=acd176(11)*acd176(10)
      acd176(70)=acd176(13)*acd176(12)
      acd176(68)=acd176(70)+acd176(68)+acd176(69)
      acd176(69)=acd176(8)*acd176(68)
      acd176(70)=acd176(5)*acd176(9)
      acd176(71)=acd176(15)*acd176(10)
      acd176(72)=acd176(16)*acd176(12)
      acd176(70)=acd176(72)+acd176(70)+acd176(71)
      acd176(71)=acd176(14)*acd176(70)
      acd176(72)=acd176(11)*acd176(2)
      acd176(73)=acd176(15)*acd176(4)
      acd176(74)=acd176(18)*acd176(6)
      acd176(72)=acd176(74)+acd176(72)+acd176(73)
      acd176(73)=acd176(17)*acd176(72)
      acd176(74)=acd176(7)*acd176(9)
      acd176(75)=acd176(18)*acd176(10)
      acd176(76)=acd176(20)*acd176(12)
      acd176(74)=acd176(76)+acd176(74)+acd176(75)
      acd176(75)=acd176(19)*acd176(74)
      acd176(76)=acd176(13)*acd176(2)
      acd176(77)=acd176(16)*acd176(4)
      acd176(78)=acd176(20)*acd176(6)
      acd176(76)=acd176(78)+acd176(76)+acd176(77)
      acd176(77)=acd176(21)*acd176(76)
      acd176(67)=acd176(77)+acd176(75)+acd176(73)+acd176(71)+acd176(67)+acd176(&
      &69)
      acd176(66)=acd176(32)*acd176(66)
      acd176(68)=acd176(33)*acd176(68)
      acd176(69)=acd176(34)*acd176(70)
      acd176(70)=acd176(35)*acd176(72)
      acd176(71)=acd176(36)*acd176(74)
      acd176(72)=acd176(37)*acd176(76)
      acd176(73)=acd176(23)*acd176(22)
      acd176(74)=acd176(25)*acd176(24)
      acd176(75)=acd176(27)*acd176(26)
      acd176(76)=acd176(29)*acd176(28)
      acd176(77)=acd176(31)*acd176(30)
      acd176(78)=acd176(39)*acd176(38)
      acd176(79)=acd176(40)*acd176(9)
      acd176(80)=acd176(42)*acd176(41)
      acd176(81)=acd176(43)*acd176(2)
      acd176(82)=acd176(45)*acd176(44)
      acd176(83)=acd176(47)*acd176(46)
      acd176(84)=acd176(49)*acd176(48)
      acd176(85)=acd176(50)*acd176(4)
      acd176(86)=acd176(51)*acd176(10)
      acd176(87)=acd176(53)*acd176(52)
      acd176(88)=acd176(55)*acd176(54)
      acd176(89)=acd176(57)*acd176(56)
      acd176(90)=acd176(58)*acd176(6)
      acd176(91)=acd176(60)*acd176(59)
      acd176(92)=acd176(61)*acd176(12)
      acd176(93)=acd176(63)*acd176(62)
      acd176(94)=acd176(65)*acd176(64)
      acd176(66)=acd176(94)+acd176(93)+acd176(92)+acd176(91)+acd176(90)+acd176(&
      &89)+acd176(88)+acd176(87)+acd176(86)+acd176(85)+acd176(84)+acd176(83)+ac&
      &d176(82)+acd176(81)+acd176(80)+acd176(79)+acd176(78)+2.0_ki*acd176(77)+a&
      &cd176(76)+acd176(75)+acd176(74)+acd176(73)+acd176(72)+acd176(71)+acd176(&
      &70)+acd176(69)+acd176(66)+acd176(68)
      brack(ninjaidxt0x0mu0)=acd176(66)
      brack(ninjaidxt0x1mu0)=acd176(67)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d176h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd176h3
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
end module     p0_dbaru_epnebbbarg_d176h3l132
