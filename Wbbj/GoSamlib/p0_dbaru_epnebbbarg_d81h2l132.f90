module     p0_dbaru_epnebbbarg_d81h2l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d81h2l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd81h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd81
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd81(1)=dotproduct(k2,ninjaE3)
      acd81(2)=dotproduct(ninjaE3,spvak1k2)
      acd81(3)=dotproduct(ninjaE3,spvak2k7)
      acd81(4)=dotproduct(ninjaE3,spvak4k3)
      acd81(5)=abb81(30)
      acd81(6)=dotproduct(ninjaE3,spval5l6)
      acd81(7)=abb81(102)
      acd81(8)=-acd81(5)*acd81(1)
      acd81(9)=-acd81(7)*acd81(6)
      acd81(8)=acd81(8)+acd81(9)
      acd81(8)=acd81(2)*acd81(8)*acd81(4)*acd81(3)
      brack(ninjaidxt1x0mu0)=acd81(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd81h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(84) :: acd81
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd81(1)=dotproduct(k2,ninjaA1)
      acd81(2)=dotproduct(ninjaE3,spvak2k7)
      acd81(3)=dotproduct(ninjaE3,spvak4k3)
      acd81(4)=dotproduct(ninjaE3,spvak1k2)
      acd81(5)=abb81(30)
      acd81(6)=dotproduct(k2,ninjaE3)
      acd81(7)=dotproduct(ninjaA1,spvak2k7)
      acd81(8)=dotproduct(ninjaA1,spvak4k3)
      acd81(9)=dotproduct(ninjaA1,spvak1k2)
      acd81(10)=dotproduct(ninjaE3,spval5l6)
      acd81(11)=abb81(102)
      acd81(12)=dotproduct(ninjaA1,spval5l6)
      acd81(13)=dotproduct(k1,ninjaE3)
      acd81(14)=abb81(101)
      acd81(15)=dotproduct(k2,ninjaA0)
      acd81(16)=dotproduct(k7,ninjaE3)
      acd81(17)=abb81(39)
      acd81(18)=dotproduct(ninjaA0,ninjaE3)
      acd81(19)=abb81(36)
      acd81(20)=dotproduct(k3,ninjaE3)
      acd81(21)=abb81(94)
      acd81(22)=dotproduct(k4,ninjaE3)
      acd81(23)=dotproduct(ninjaE3,spvak4k2)
      acd81(24)=abb81(87)
      acd81(25)=abb81(60)
      acd81(26)=dotproduct(ninjaE3,spvak1k7)
      acd81(27)=abb81(113)
      acd81(28)=abb81(93)
      acd81(29)=abb81(34)
      acd81(30)=abb81(62)
      acd81(31)=abb81(29)
      acd81(32)=dotproduct(ninjaA0,spvak2k7)
      acd81(33)=dotproduct(ninjaA0,spvak4k3)
      acd81(34)=dotproduct(ninjaA0,spvak1k2)
      acd81(35)=dotproduct(ninjaE3,spvak1k3)
      acd81(36)=abb81(45)
      acd81(37)=abb81(31)
      acd81(38)=abb81(33)
      acd81(39)=abb81(82)
      acd81(40)=dotproduct(ninjaE3,spvak7k2)
      acd81(41)=abb81(25)
      acd81(42)=abb81(8)
      acd81(43)=dotproduct(ninjaE3,spval5k2)
      acd81(44)=abb81(61)
      acd81(45)=abb81(105)
      acd81(46)=abb81(89)
      acd81(47)=abb81(114)
      acd81(48)=abb81(18)
      acd81(49)=abb81(104)
      acd81(50)=abb81(69)
      acd81(51)=abb81(106)
      acd81(52)=abb81(21)
      acd81(53)=abb81(115)
      acd81(54)=dotproduct(ninjaA0,spval5l6)
      acd81(55)=abb81(72)
      acd81(56)=abb81(56)
      acd81(57)=abb81(9)
      acd81(58)=dotproduct(ninjaE3,spvak1k4)
      acd81(59)=abb81(58)
      acd81(60)=abb81(108)
      acd81(61)=abb81(49)
      acd81(62)=abb81(76)
      acd81(63)=dotproduct(ninjaE3,spvak3k2)
      acd81(64)=dotproduct(ninjaE3,spvak1l6)
      acd81(65)=abb81(112)
      acd81(66)=abb81(43)
      acd81(67)=abb81(99)
      acd81(68)=abb81(26)
      acd81(69)=acd81(6)*acd81(5)
      acd81(70)=acd81(10)*acd81(11)
      acd81(69)=-acd81(69)-acd81(70)
      acd81(69)=acd81(9)*acd81(69)
      acd81(71)=-acd81(11)*acd81(12)
      acd81(72)=-acd81(5)*acd81(1)
      acd81(71)=acd81(71)+acd81(72)
      acd81(71)=acd81(4)*acd81(71)
      acd81(69)=acd81(71)+acd81(69)
      acd81(69)=acd81(3)*acd81(69)
      acd81(71)=acd81(70)*acd81(4)
      acd81(72)=acd81(4)*acd81(5)
      acd81(73)=acd81(72)*acd81(6)
      acd81(71)=acd81(71)+acd81(73)
      acd81(73)=-acd81(8)*acd81(71)
      acd81(69)=acd81(69)+acd81(73)
      acd81(69)=acd81(2)*acd81(69)
      acd81(71)=-acd81(3)*acd81(7)*acd81(71)
      acd81(69)=acd81(71)+acd81(69)
      acd81(71)=-acd81(11)*acd81(54)
      acd81(73)=-acd81(5)*acd81(15)
      acd81(71)=acd81(73)+acd81(61)+acd81(71)
      acd81(71)=acd81(4)*acd81(71)
      acd81(73)=acd81(64)*acd81(65)
      acd81(74)=acd81(13)*acd81(14)
      acd81(75)=-acd81(51)*acd81(63)
      acd81(76)=-acd81(48)*acd81(58)
      acd81(77)=acd81(40)*acd81(62)
      acd81(78)=acd81(43)*acd81(57)
      acd81(79)=acd81(35)*acd81(55)
      acd81(80)=acd81(26)*acd81(60)
      acd81(81)=acd81(23)*acd81(59)
      acd81(82)=2.0_ki*acd81(18)
      acd81(83)=acd81(49)*acd81(82)
      acd81(70)=-acd81(34)*acd81(70)
      acd81(84)=-acd81(5)*acd81(34)
      acd81(84)=acd81(37)+acd81(84)
      acd81(84)=acd81(6)*acd81(84)
      acd81(70)=acd81(84)+acd81(70)+acd81(71)+acd81(83)+acd81(81)+acd81(80)+acd&
      &81(79)+acd81(78)+acd81(77)+acd81(76)+acd81(75)+acd81(73)+acd81(74)
      acd81(70)=acd81(3)*acd81(70)
      acd81(71)=acd81(16)+acd81(20)+acd81(22)
      acd81(73)=-acd81(21)*acd81(71)
      acd81(74)=acd81(40)*acd81(19)
      acd81(75)=acd81(35)*acd81(36)
      acd81(76)=acd81(26)*acd81(39)
      acd81(77)=acd81(23)*acd81(38)
      acd81(78)=acd81(28)*acd81(82)
      acd81(79)=-acd81(33)*acd81(72)
      acd81(73)=acd81(79)+acd81(78)+acd81(77)+acd81(76)+acd81(75)+acd81(74)+acd&
      &81(73)
      acd81(73)=acd81(6)*acd81(73)
      acd81(74)=-acd81(40)*acd81(30)
      acd81(75)=acd81(35)*acd81(56)
      acd81(76)=acd81(26)*acd81(67)
      acd81(77)=acd81(23)*acd81(66)
      acd81(78)=acd81(4)*acd81(11)
      acd81(79)=-acd81(33)*acd81(78)
      acd81(74)=acd81(79)+acd81(77)+acd81(76)+acd81(74)+acd81(75)
      acd81(74)=acd81(10)*acd81(74)
      acd81(75)=acd81(43)*acd81(44)
      acd81(76)=acd81(35)*acd81(42)
      acd81(77)=acd81(23)*acd81(45)
      acd81(75)=acd81(77)+acd81(75)+acd81(76)
      acd81(71)=acd81(71)*acd81(75)
      acd81(75)=acd81(43)*acd81(50)
      acd81(76)=-acd81(35)*acd81(48)
      acd81(77)=-acd81(23)*acd81(51)
      acd81(75)=acd81(77)+acd81(75)+acd81(76)
      acd81(75)=acd81(75)*acd81(82)
      acd81(70)=acd81(70)+acd81(73)+acd81(74)+acd81(75)+acd81(71)
      acd81(70)=acd81(2)*acd81(70)
      acd81(71)=acd81(26)*acd81(27)
      acd81(73)=acd81(23)*acd81(24)
      acd81(71)=acd81(71)+acd81(73)
      acd81(71)=acd81(16)*acd81(71)
      acd81(73)=acd81(26)*acd81(31)
      acd81(74)=acd81(23)*acd81(29)
      acd81(73)=acd81(73)+acd81(74)
      acd81(73)=acd81(73)*acd81(82)
      acd81(74)=acd81(16)*acd81(25)
      acd81(75)=-acd81(30)*acd81(82)
      acd81(74)=acd81(74)+acd81(75)
      acd81(74)=acd81(10)*acd81(74)
      acd81(75)=acd81(16)*acd81(17)
      acd81(76)=acd81(19)*acd81(82)
      acd81(75)=acd81(75)+acd81(76)
      acd81(75)=acd81(6)*acd81(75)
      acd81(71)=acd81(75)+acd81(74)+acd81(73)+acd81(71)
      acd81(71)=acd81(6)*acd81(71)
      acd81(73)=acd81(26)*acd81(47)
      acd81(74)=acd81(23)*acd81(46)
      acd81(73)=acd81(73)+acd81(74)
      acd81(73)=acd81(16)*acd81(73)
      acd81(74)=acd81(26)*acd81(53)
      acd81(75)=acd81(23)*acd81(52)
      acd81(74)=acd81(74)+acd81(75)
      acd81(74)=acd81(74)*acd81(82)
      acd81(73)=acd81(74)+acd81(73)
      acd81(73)=acd81(10)*acd81(73)
      acd81(74)=acd81(26)*acd81(68)
      acd81(75)=-acd81(32)*acd81(78)
      acd81(74)=acd81(74)+acd81(75)
      acd81(74)=acd81(10)*acd81(74)
      acd81(75)=acd81(26)*acd81(41)
      acd81(72)=-acd81(32)*acd81(72)
      acd81(72)=acd81(75)+acd81(72)
      acd81(72)=acd81(6)*acd81(72)
      acd81(72)=acd81(74)+acd81(72)
      acd81(72)=acd81(3)*acd81(72)
      acd81(70)=acd81(70)+acd81(72)+acd81(73)+acd81(71)
      brack(ninjaidxt0x0mu0)=acd81(70)
      brack(ninjaidxt0x1mu0)=acd81(69)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d81h2_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd81h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d81h2l132
