module     p0_dbaru_epnebbbarg_d336h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d336h5l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd336h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(40) :: acd336
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd336(1)=dotproduct(k2,ninjaE3)
      acd336(2)=dotproduct(ninjaE3,spvak7k2)
      acd336(3)=abb336(30)
      acd336(4)=dotproduct(l5,ninjaE3)
      acd336(5)=abb336(20)
      acd336(6)=dotproduct(k7,ninjaE3)
      acd336(7)=abb336(34)
      acd336(8)=dotproduct(ninjaE3,spvak7l5)
      acd336(9)=abb336(12)
      acd336(10)=dotproduct(ninjaE3,spvak1k2)
      acd336(11)=abb336(16)
      acd336(12)=dotproduct(ninjaE3,spvak1k3)
      acd336(13)=abb336(19)
      acd336(14)=dotproduct(ninjaE3,spvak4k2)
      acd336(15)=abb336(24)
      acd336(16)=dotproduct(ninjaE3,spvak2k7)
      acd336(17)=abb336(25)
      acd336(18)=dotproduct(ninjaE3,spvak2l5)
      acd336(19)=abb336(26)
      acd336(20)=dotproduct(ninjaE3,spval6k2)
      acd336(21)=abb336(28)
      acd336(22)=dotproduct(ninjaE3,spvak1l5)
      acd336(23)=abb336(31)
      acd336(24)=dotproduct(ninjaE3,spvak2k3)
      acd336(25)=abb336(35)
      acd336(26)=dotproduct(ninjaE3,spval6k3)
      acd336(27)=abb336(45)
      acd336(28)=acd336(3)*acd336(1)
      acd336(29)=acd336(5)*acd336(4)
      acd336(30)=acd336(7)*acd336(6)
      acd336(31)=acd336(9)*acd336(8)
      acd336(32)=acd336(11)*acd336(10)
      acd336(33)=acd336(13)*acd336(12)
      acd336(34)=acd336(15)*acd336(14)
      acd336(35)=acd336(17)*acd336(16)
      acd336(36)=acd336(19)*acd336(18)
      acd336(37)=acd336(21)*acd336(20)
      acd336(38)=acd336(23)*acd336(22)
      acd336(39)=acd336(25)*acd336(24)
      acd336(40)=acd336(27)*acd336(26)
      acd336(28)=acd336(40)+acd336(39)+acd336(38)+acd336(37)+acd336(36)+acd336(&
      &35)+acd336(34)+acd336(33)+acd336(32)+acd336(31)+acd336(30)+acd336(28)+ac&
      &d336(29)
      acd336(28)=acd336(2)*acd336(28)
      brack(ninjaidxt1x0mu0)=acd336(28)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd336h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(80) :: acd336
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd336(1)=dotproduct(k2,ninjaA1)
      acd336(2)=dotproduct(ninjaE3,spvak7k2)
      acd336(3)=abb336(30)
      acd336(4)=dotproduct(k2,ninjaE3)
      acd336(5)=dotproduct(ninjaA1,spvak7k2)
      acd336(6)=dotproduct(l5,ninjaA1)
      acd336(7)=abb336(20)
      acd336(8)=dotproduct(l5,ninjaE3)
      acd336(9)=dotproduct(k7,ninjaA1)
      acd336(10)=abb336(34)
      acd336(11)=dotproduct(k7,ninjaE3)
      acd336(12)=dotproduct(ninjaE3,spvak7l5)
      acd336(13)=abb336(12)
      acd336(14)=dotproduct(ninjaE3,spvak1k3)
      acd336(15)=abb336(19)
      acd336(16)=dotproduct(ninjaE3,spval6k3)
      acd336(17)=abb336(45)
      acd336(18)=dotproduct(ninjaE3,spvak1k2)
      acd336(19)=abb336(16)
      acd336(20)=dotproduct(ninjaE3,spvak4k2)
      acd336(21)=abb336(24)
      acd336(22)=dotproduct(ninjaE3,spvak2k7)
      acd336(23)=abb336(25)
      acd336(24)=dotproduct(ninjaE3,spvak2l5)
      acd336(25)=abb336(26)
      acd336(26)=dotproduct(ninjaE3,spval6k2)
      acd336(27)=abb336(28)
      acd336(28)=dotproduct(ninjaE3,spvak1l5)
      acd336(29)=abb336(31)
      acd336(30)=dotproduct(ninjaE3,spvak2k3)
      acd336(31)=abb336(35)
      acd336(32)=dotproduct(ninjaA1,spvak7l5)
      acd336(33)=dotproduct(ninjaA1,spvak1k3)
      acd336(34)=dotproduct(ninjaA1,spval6k3)
      acd336(35)=dotproduct(ninjaA1,spvak1k2)
      acd336(36)=dotproduct(ninjaA1,spvak4k2)
      acd336(37)=dotproduct(ninjaA1,spvak2k7)
      acd336(38)=dotproduct(ninjaA1,spvak2l5)
      acd336(39)=dotproduct(ninjaA1,spval6k2)
      acd336(40)=dotproduct(ninjaA1,spvak1l5)
      acd336(41)=dotproduct(ninjaA1,spvak2k3)
      acd336(42)=dotproduct(k2,ninjaA0)
      acd336(43)=dotproduct(ninjaA0,spvak7k2)
      acd336(44)=abb336(44)
      acd336(45)=dotproduct(l5,ninjaA0)
      acd336(46)=abb336(21)
      acd336(47)=dotproduct(k7,ninjaA0)
      acd336(48)=dotproduct(ninjaA0,ninjaE3)
      acd336(49)=abb336(42)
      acd336(50)=dotproduct(ninjaA0,spvak7l5)
      acd336(51)=dotproduct(ninjaA0,spvak1k3)
      acd336(52)=dotproduct(ninjaA0,spval6k3)
      acd336(53)=dotproduct(ninjaA0,spvak1k2)
      acd336(54)=dotproduct(ninjaA0,spvak4k2)
      acd336(55)=dotproduct(ninjaA0,spvak2k7)
      acd336(56)=dotproduct(ninjaA0,spvak2l5)
      acd336(57)=dotproduct(ninjaA0,spval6k2)
      acd336(58)=dotproduct(ninjaA0,spvak1l5)
      acd336(59)=dotproduct(ninjaA0,spvak2k3)
      acd336(60)=abb336(17)
      acd336(61)=abb336(13)
      acd336(62)=abb336(14)
      acd336(63)=abb336(15)
      acd336(64)=abb336(22)
      acd336(65)=abb336(40)
      acd336(66)=acd336(31)*acd336(30)
      acd336(67)=acd336(29)*acd336(28)
      acd336(68)=acd336(27)*acd336(26)
      acd336(69)=acd336(25)*acd336(24)
      acd336(70)=acd336(23)*acd336(22)
      acd336(71)=acd336(21)*acd336(20)
      acd336(72)=acd336(19)*acd336(18)
      acd336(73)=acd336(17)*acd336(16)
      acd336(74)=acd336(15)*acd336(14)
      acd336(75)=acd336(13)*acd336(12)
      acd336(76)=acd336(10)*acd336(11)
      acd336(77)=acd336(7)*acd336(8)
      acd336(78)=acd336(3)*acd336(4)
      acd336(66)=acd336(70)+acd336(71)+acd336(72)+acd336(73)+acd336(66)+acd336(&
      &67)+acd336(68)+acd336(69)+acd336(78)+acd336(74)+acd336(75)+acd336(76)+ac&
      &d336(77)
      acd336(67)=acd336(5)*acd336(66)
      acd336(68)=acd336(31)*acd336(41)
      acd336(69)=acd336(29)*acd336(40)
      acd336(70)=acd336(27)*acd336(39)
      acd336(71)=acd336(25)*acd336(38)
      acd336(72)=acd336(23)*acd336(37)
      acd336(73)=acd336(21)*acd336(36)
      acd336(74)=acd336(19)*acd336(35)
      acd336(75)=acd336(17)*acd336(34)
      acd336(76)=acd336(15)*acd336(33)
      acd336(77)=acd336(13)*acd336(32)
      acd336(78)=acd336(10)*acd336(9)
      acd336(79)=acd336(7)*acd336(6)
      acd336(80)=acd336(3)*acd336(1)
      acd336(68)=acd336(80)+acd336(79)+acd336(78)+acd336(77)+acd336(76)+acd336(&
      &75)+acd336(74)+acd336(73)+acd336(72)+acd336(71)+acd336(70)+acd336(68)+ac&
      &d336(69)
      acd336(68)=acd336(2)*acd336(68)
      acd336(67)=acd336(67)+acd336(68)
      acd336(66)=acd336(43)*acd336(66)
      acd336(68)=acd336(31)*acd336(59)
      acd336(69)=acd336(29)*acd336(58)
      acd336(70)=acd336(27)*acd336(57)
      acd336(71)=acd336(25)*acd336(56)
      acd336(72)=acd336(23)*acd336(55)
      acd336(73)=acd336(21)*acd336(54)
      acd336(74)=acd336(19)*acd336(53)
      acd336(75)=acd336(17)*acd336(52)
      acd336(76)=acd336(15)*acd336(51)
      acd336(77)=acd336(13)*acd336(50)
      acd336(78)=acd336(10)*acd336(47)
      acd336(79)=acd336(7)*acd336(45)
      acd336(80)=acd336(3)*acd336(42)
      acd336(68)=acd336(80)+acd336(79)+acd336(78)+acd336(77)+acd336(76)+acd336(&
      &75)+acd336(74)+acd336(73)+acd336(72)+acd336(71)+acd336(70)+acd336(69)+ac&
      &d336(60)+acd336(68)
      acd336(68)=acd336(2)*acd336(68)
      acd336(69)=-acd336(8)-acd336(11)
      acd336(69)=acd336(46)*acd336(69)
      acd336(70)=acd336(48)*acd336(49)
      acd336(71)=acd336(26)*acd336(65)
      acd336(72)=acd336(20)*acd336(64)
      acd336(73)=acd336(18)*acd336(63)
      acd336(74)=acd336(16)*acd336(62)
      acd336(75)=acd336(14)*acd336(61)
      acd336(76)=acd336(4)*acd336(44)
      acd336(66)=acd336(68)+acd336(66)+acd336(76)+acd336(75)+acd336(74)+acd336(&
      &73)+acd336(72)+2.0_ki*acd336(70)+acd336(71)+acd336(69)
      brack(ninjaidxt0x0mu0)=acd336(66)
      brack(ninjaidxt0x1mu0)=acd336(67)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d336h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd336h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
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
end module     p0_dbaru_epnebbbarg_d336h5l132
