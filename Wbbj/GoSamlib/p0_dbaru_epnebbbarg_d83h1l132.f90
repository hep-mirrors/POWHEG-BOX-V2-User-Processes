module     p0_dbaru_epnebbbarg_d83h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d83h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd83h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd83
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd83(1)=dotproduct(k2,ninjaE3)
      acd83(2)=dotproduct(ninjaE3,spvak1k2)
      acd83(3)=dotproduct(ninjaE3,spvak2k7)
      acd83(4)=dotproduct(ninjaE3,spvak4k3)
      acd83(5)=abb83(9)
      acd83(6)=dotproduct(ninjaE3,spval6l5)
      acd83(7)=abb83(73)
      acd83(8)=acd83(5)*acd83(1)
      acd83(9)=acd83(7)*acd83(6)
      acd83(8)=acd83(8)+acd83(9)
      acd83(8)=acd83(2)*acd83(8)*acd83(4)*acd83(3)
      brack(ninjaidxt1x0mu0)=acd83(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(84) :: acd83
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd83(1)=dotproduct(k2,ninjaA1)
      acd83(2)=dotproduct(ninjaE3,spvak1k2)
      acd83(3)=dotproduct(ninjaE3,spvak2k7)
      acd83(4)=dotproduct(ninjaE3,spvak4k3)
      acd83(5)=abb83(9)
      acd83(6)=dotproduct(k2,ninjaE3)
      acd83(7)=dotproduct(ninjaA1,spvak1k2)
      acd83(8)=dotproduct(ninjaA1,spvak2k7)
      acd83(9)=dotproduct(ninjaA1,spvak4k3)
      acd83(10)=dotproduct(ninjaE3,spval6l5)
      acd83(11)=abb83(73)
      acd83(12)=dotproduct(ninjaA1,spval6l5)
      acd83(13)=dotproduct(k1,ninjaE3)
      acd83(14)=abb83(93)
      acd83(15)=dotproduct(k2,ninjaA0)
      acd83(16)=dotproduct(k7,ninjaE3)
      acd83(17)=abb83(48)
      acd83(18)=dotproduct(ninjaA0,ninjaE3)
      acd83(19)=abb83(58)
      acd83(20)=dotproduct(k3,ninjaE3)
      acd83(21)=abb83(40)
      acd83(22)=dotproduct(k4,ninjaE3)
      acd83(23)=dotproduct(ninjaE3,spvak4k2)
      acd83(24)=abb83(62)
      acd83(25)=dotproduct(ninjaE3,spvak1k3)
      acd83(26)=abb83(98)
      acd83(27)=abb83(63)
      acd83(28)=abb83(91)
      acd83(29)=abb83(82)
      acd83(30)=abb83(59)
      acd83(31)=abb83(99)
      acd83(32)=abb83(66)
      acd83(33)=dotproduct(ninjaA0,spvak1k2)
      acd83(34)=dotproduct(ninjaA0,spvak2k7)
      acd83(35)=dotproduct(ninjaA0,spvak4k3)
      acd83(36)=abb83(12)
      acd83(37)=abb83(13)
      acd83(38)=abb83(49)
      acd83(39)=dotproduct(ninjaE3,spvak7k2)
      acd83(40)=dotproduct(ninjaE3,spvak1k7)
      acd83(41)=abb83(89)
      acd83(42)=abb83(86)
      acd83(43)=abb83(36)
      acd83(44)=abb83(33)
      acd83(45)=dotproduct(ninjaE3,spval6k2)
      acd83(46)=abb83(87)
      acd83(47)=dotproduct(ninjaE3,spvak1l5)
      acd83(48)=abb83(97)
      acd83(49)=abb83(85)
      acd83(50)=abb83(51)
      acd83(51)=abb83(52)
      acd83(52)=abb83(35)
      acd83(53)=abb83(41)
      acd83(54)=abb83(96)
      acd83(55)=abb83(74)
      acd83(56)=abb83(67)
      acd83(57)=abb83(100)
      acd83(58)=dotproduct(ninjaA0,spval6l5)
      acd83(59)=abb83(8)
      acd83(60)=abb83(55)
      acd83(61)=abb83(28)
      acd83(62)=dotproduct(ninjaE3,spvak3k2)
      acd83(63)=abb83(75)
      acd83(64)=abb83(80)
      acd83(65)=abb83(44)
      acd83(66)=abb83(23)
      acd83(67)=abb83(92)
      acd83(68)=abb83(90)
      acd83(69)=acd83(1)*acd83(2)*acd83(5)
      acd83(70)=acd83(11)*acd83(2)
      acd83(71)=acd83(12)*acd83(70)
      acd83(69)=acd83(71)+acd83(69)
      acd83(71)=acd83(4)*acd83(3)
      acd83(69)=acd83(71)*acd83(69)
      acd83(72)=acd83(5)*acd83(6)
      acd83(73)=acd83(11)*acd83(10)
      acd83(72)=acd83(72)+acd83(73)
      acd83(73)=acd83(71)*acd83(72)
      acd83(74)=acd83(7)*acd83(73)
      acd83(75)=acd83(72)*acd83(2)*acd83(4)
      acd83(76)=acd83(8)*acd83(75)
      acd83(77)=acd83(2)*acd83(3)
      acd83(72)=acd83(77)*acd83(72)
      acd83(78)=acd83(9)*acd83(72)
      acd83(69)=acd83(78)+acd83(74)+acd83(76)+acd83(69)
      acd83(74)=acd83(15)*acd83(5)
      acd83(74)=acd83(59)+acd83(74)
      acd83(74)=acd83(2)*acd83(74)
      acd83(76)=acd83(14)*acd83(13)
      acd83(78)=acd83(36)*acd83(6)
      acd83(70)=acd83(58)*acd83(70)
      acd83(79)=acd83(60)*acd83(23)
      acd83(80)=acd83(61)*acd83(45)
      acd83(81)=acd83(62)*acd83(52)
      acd83(82)=acd83(63)*acd83(39)
      acd83(83)=acd83(64)*acd83(47)
      acd83(70)=acd83(83)+acd83(82)+acd83(81)+acd83(80)+acd83(79)+acd83(70)+acd&
      &83(78)+acd83(76)+acd83(74)
      acd83(70)=acd83(71)*acd83(70)
      acd83(71)=acd83(55)*acd83(4)
      acd83(74)=acd83(56)*acd83(23)
      acd83(76)=acd83(57)*acd83(25)
      acd83(71)=acd83(76)+acd83(74)+acd83(71)
      acd83(71)=acd83(10)*acd83(71)
      acd83(74)=acd83(53)*acd83(45)
      acd83(76)=acd83(54)*acd83(47)
      acd83(74)=acd83(76)+acd83(74)
      acd83(74)=acd83(3)*acd83(74)
      acd83(76)=acd83(30)*acd83(23)
      acd83(78)=acd83(31)*acd83(25)
      acd83(76)=acd83(78)+acd83(76)
      acd83(76)=acd83(6)*acd83(76)
      acd83(78)=acd83(23)*acd83(3)
      acd83(79)=acd83(52)*acd83(78)
      acd83(80)=acd83(6)*acd83(3)
      acd83(81)=acd83(28)*acd83(80)
      acd83(82)=acd83(4)*acd83(6)
      acd83(83)=acd83(29)*acd83(82)
      acd83(84)=acd83(51)*acd83(77)
      acd83(71)=acd83(84)+acd83(83)+acd83(81)+acd83(79)+acd83(71)+acd83(76)+acd&
      &83(74)
      acd83(74)=2.0_ki*acd83(18)
      acd83(71)=acd83(74)*acd83(71)
      acd83(76)=-acd83(46)*acd83(45)
      acd83(79)=acd83(48)*acd83(47)
      acd83(76)=acd83(79)+acd83(76)
      acd83(76)=acd83(76)*acd83(3)
      acd83(79)=acd83(21)*acd83(80)
      acd83(77)=-acd83(43)*acd83(77)
      acd83(78)=-acd83(44)*acd83(78)
      acd83(76)=acd83(78)+acd83(79)+acd83(77)+acd83(76)
      acd83(77)=acd83(16)+acd83(22)+acd83(20)
      acd83(76)=acd83(77)*acd83(76)
      acd83(77)=acd83(41)*acd83(80)
      acd83(78)=acd83(42)*acd83(82)
      acd83(79)=acd83(10)*acd83(3)
      acd83(81)=acd83(67)*acd83(79)
      acd83(82)=acd83(68)*acd83(10)*acd83(4)
      acd83(77)=acd83(82)+acd83(81)+acd83(78)+acd83(77)
      acd83(77)=acd83(40)*acd83(77)
      acd83(78)=acd83(27)*acd83(6)
      acd83(81)=acd83(49)*acd83(23)
      acd83(82)=acd83(50)*acd83(25)
      acd83(78)=acd83(82)+acd83(81)+acd83(78)
      acd83(78)=acd83(10)*acd83(78)
      acd83(81)=acd83(24)*acd83(23)
      acd83(82)=acd83(26)*acd83(25)
      acd83(81)=acd83(82)+acd83(81)
      acd83(81)=acd83(6)*acd83(81)
      acd83(82)=acd83(6)**2
      acd83(83)=acd83(17)*acd83(82)
      acd83(78)=acd83(83)+acd83(78)+acd83(81)
      acd83(78)=acd83(16)*acd83(78)
      acd83(81)=acd83(37)*acd83(23)
      acd83(83)=acd83(38)*acd83(25)
      acd83(81)=acd83(83)+acd83(81)
      acd83(81)=acd83(80)*acd83(81)
      acd83(83)=acd83(65)*acd83(23)
      acd83(84)=acd83(66)*acd83(25)
      acd83(83)=acd83(84)+acd83(83)
      acd83(83)=acd83(79)*acd83(83)
      acd83(82)=-acd83(82)*acd83(74)
      acd83(80)=-acd83(39)*acd83(80)
      acd83(80)=acd83(82)+acd83(80)
      acd83(80)=acd83(19)*acd83(80)
      acd83(74)=acd83(10)*acd83(6)*acd83(74)
      acd83(79)=acd83(39)*acd83(79)
      acd83(74)=acd83(74)+acd83(79)
      acd83(74)=acd83(32)*acd83(74)
      acd83(73)=acd83(33)*acd83(73)
      acd83(75)=acd83(34)*acd83(75)
      acd83(72)=acd83(35)*acd83(72)
      acd83(70)=acd83(72)+acd83(75)+acd83(73)+acd83(74)+acd83(80)+acd83(71)+acd&
      &83(70)+acd83(78)+acd83(77)+acd83(83)+acd83(81)+acd83(76)
      brack(ninjaidxt0x0mu0)=acd83(70)
      brack(ninjaidxt0x1mu0)=acd83(69)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d83h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd83h1
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
end module     p0_dbaru_epnebbbarg_d83h1l132
