module     p0_dbaru_epnebbbarg_d229h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d229h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd229h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(32) :: acd229
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd229(1)=dotproduct(k2,ninjaE3)
      acd229(2)=dotproduct(ninjaE3,spvak2k7)
      acd229(3)=abb229(22)
      acd229(4)=dotproduct(ninjaE3,spvak2l5)
      acd229(5)=abb229(42)
      acd229(6)=dotproduct(ninjaE3,spvak2l6)
      acd229(7)=abb229(36)
      acd229(8)=dotproduct(k3,ninjaE3)
      acd229(9)=dotproduct(k4,ninjaE3)
      acd229(10)=dotproduct(ninjaE3,spvak1k3)
      acd229(11)=abb229(16)
      acd229(12)=abb229(32)
      acd229(13)=abb229(25)
      acd229(14)=dotproduct(ninjaE3,spvak1k2)
      acd229(15)=abb229(23)
      acd229(16)=dotproduct(ninjaE3,spvak4k2)
      acd229(17)=abb229(24)
      acd229(18)=dotproduct(ninjaE3,spvak4k3)
      acd229(19)=abb229(35)
      acd229(20)=abb229(17)
      acd229(21)=abb229(29)
      acd229(22)=abb229(52)
      acd229(23)=abb229(48)
      acd229(24)=abb229(57)
      acd229(25)=abb229(45)
      acd229(26)=-acd229(1)+acd229(8)+acd229(9)
      acd229(27)=-acd229(7)*acd229(26)
      acd229(28)=acd229(18)*acd229(25)
      acd229(29)=acd229(16)*acd229(24)
      acd229(30)=acd229(14)*acd229(21)
      acd229(31)=acd229(10)*acd229(13)
      acd229(27)=acd229(31)+acd229(30)+acd229(28)+acd229(29)+acd229(27)
      acd229(27)=acd229(6)*acd229(27)
      acd229(28)=-acd229(5)*acd229(26)
      acd229(29)=acd229(18)*acd229(23)
      acd229(30)=acd229(16)*acd229(22)
      acd229(31)=acd229(14)*acd229(20)
      acd229(32)=acd229(10)*acd229(12)
      acd229(28)=acd229(32)+acd229(31)+acd229(29)+acd229(30)+acd229(28)
      acd229(28)=acd229(4)*acd229(28)
      acd229(26)=acd229(3)*acd229(26)
      acd229(29)=acd229(18)*acd229(19)
      acd229(30)=acd229(16)*acd229(17)
      acd229(31)=acd229(14)*acd229(15)
      acd229(32)=acd229(10)*acd229(11)
      acd229(26)=acd229(32)+acd229(31)+acd229(29)+acd229(30)+acd229(26)
      acd229(26)=acd229(2)*acd229(26)
      acd229(26)=acd229(26)+acd229(27)+acd229(28)
      brack(ninjaidxt1x0mu0)=acd229(26)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd229h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(92) :: acd229
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd229(1)=dotproduct(k2,ninjaA1)
      acd229(2)=dotproduct(ninjaE3,spvak2k7)
      acd229(3)=abb229(22)
      acd229(4)=dotproduct(ninjaE3,spvak2l5)
      acd229(5)=abb229(42)
      acd229(6)=dotproduct(ninjaE3,spvak2l6)
      acd229(7)=abb229(36)
      acd229(8)=dotproduct(k2,ninjaE3)
      acd229(9)=dotproduct(ninjaA1,spvak2k7)
      acd229(10)=dotproduct(ninjaA1,spvak2l5)
      acd229(11)=dotproduct(ninjaA1,spvak2l6)
      acd229(12)=dotproduct(k3,ninjaA1)
      acd229(13)=dotproduct(k3,ninjaE3)
      acd229(14)=dotproduct(k4,ninjaA1)
      acd229(15)=dotproduct(k4,ninjaE3)
      acd229(16)=dotproduct(ninjaA1,spvak1k3)
      acd229(17)=abb229(16)
      acd229(18)=abb229(32)
      acd229(19)=abb229(25)
      acd229(20)=dotproduct(ninjaE3,spvak1k3)
      acd229(21)=dotproduct(ninjaE3,spvak1k2)
      acd229(22)=abb229(23)
      acd229(23)=dotproduct(ninjaE3,spvak4k2)
      acd229(24)=abb229(24)
      acd229(25)=dotproduct(ninjaE3,spvak4k3)
      acd229(26)=abb229(35)
      acd229(27)=dotproduct(ninjaA1,spvak1k2)
      acd229(28)=abb229(17)
      acd229(29)=abb229(29)
      acd229(30)=abb229(52)
      acd229(31)=abb229(48)
      acd229(32)=dotproduct(ninjaA1,spvak4k2)
      acd229(33)=abb229(57)
      acd229(34)=abb229(45)
      acd229(35)=dotproduct(ninjaA1,spvak4k3)
      acd229(36)=dotproduct(k1,ninjaE3)
      acd229(37)=abb229(55)
      acd229(38)=dotproduct(k2,ninjaA0)
      acd229(39)=dotproduct(ninjaA0,spvak2k7)
      acd229(40)=dotproduct(ninjaA0,spvak2l5)
      acd229(41)=dotproduct(ninjaA0,spvak2l6)
      acd229(42)=abb229(50)
      acd229(43)=dotproduct(k3,ninjaA0)
      acd229(44)=abb229(194)
      acd229(45)=dotproduct(k4,ninjaA0)
      acd229(46)=dotproduct(l5,ninjaE3)
      acd229(47)=abb229(102)
      acd229(48)=dotproduct(l6,ninjaE3)
      acd229(49)=dotproduct(k7,ninjaE3)
      acd229(50)=dotproduct(ninjaA0,ninjaE3)
      acd229(51)=abb229(26)
      acd229(52)=dotproduct(ninjaA0,spvak1k3)
      acd229(53)=dotproduct(ninjaA0,spvak1k2)
      acd229(54)=dotproduct(ninjaA0,spvak4k2)
      acd229(55)=dotproduct(ninjaA0,spvak4k3)
      acd229(56)=dotproduct(ninjaE3,spvak1l6)
      acd229(57)=abb229(15)
      acd229(58)=abb229(28)
      acd229(59)=abb229(20)
      acd229(60)=abb229(21)
      acd229(61)=abb229(27)
      acd229(62)=abb229(18)
      acd229(63)=dotproduct(ninjaE3,spvak1l5)
      acd229(64)=abb229(19)
      acd229(65)=abb229(31)
      acd229(66)=abb229(34)
      acd229(67)=dotproduct(ninjaE3,spvak1k7)
      acd229(68)=abb229(37)
      acd229(69)=acd229(17)*acd229(20)
      acd229(70)=acd229(22)*acd229(21)
      acd229(71)=acd229(24)*acd229(23)
      acd229(72)=acd229(26)*acd229(25)
      acd229(69)=acd229(69)+acd229(70)+acd229(71)+acd229(72)
      acd229(70)=acd229(9)*acd229(69)
      acd229(71)=acd229(18)*acd229(20)
      acd229(72)=acd229(28)*acd229(21)
      acd229(73)=acd229(30)*acd229(23)
      acd229(74)=acd229(31)*acd229(25)
      acd229(71)=acd229(74)+acd229(71)+acd229(72)+acd229(73)
      acd229(72)=acd229(10)*acd229(71)
      acd229(73)=acd229(19)*acd229(20)
      acd229(74)=acd229(29)*acd229(21)
      acd229(75)=acd229(33)*acd229(23)
      acd229(76)=acd229(34)*acd229(25)
      acd229(73)=acd229(76)+acd229(73)+acd229(74)+acd229(75)
      acd229(74)=acd229(11)*acd229(73)
      acd229(75)=acd229(3)*acd229(2)
      acd229(76)=acd229(5)*acd229(4)
      acd229(77)=acd229(7)*acd229(6)
      acd229(75)=-acd229(77)+acd229(75)-acd229(76)
      acd229(76)=acd229(14)+acd229(12)-acd229(1)
      acd229(76)=acd229(75)*acd229(76)
      acd229(77)=acd229(9)*acd229(3)
      acd229(78)=acd229(10)*acd229(5)
      acd229(79)=acd229(11)*acd229(7)
      acd229(77)=-acd229(79)+acd229(77)-acd229(78)
      acd229(78)=acd229(15)+acd229(13)
      acd229(79)=acd229(78)-acd229(8)
      acd229(77)=acd229(77)*acd229(79)
      acd229(80)=acd229(17)*acd229(2)
      acd229(81)=acd229(18)*acd229(4)
      acd229(82)=acd229(19)*acd229(6)
      acd229(80)=acd229(82)+acd229(80)+acd229(81)
      acd229(81)=acd229(16)*acd229(80)
      acd229(82)=acd229(22)*acd229(2)
      acd229(83)=acd229(28)*acd229(4)
      acd229(84)=acd229(29)*acd229(6)
      acd229(82)=acd229(82)+acd229(83)+acd229(84)
      acd229(83)=acd229(27)*acd229(82)
      acd229(84)=acd229(24)*acd229(2)
      acd229(85)=acd229(30)*acd229(4)
      acd229(86)=acd229(33)*acd229(6)
      acd229(84)=acd229(84)+acd229(85)+acd229(86)
      acd229(85)=acd229(32)*acd229(84)
      acd229(86)=acd229(26)*acd229(2)
      acd229(87)=acd229(31)*acd229(4)
      acd229(88)=acd229(34)*acd229(6)
      acd229(86)=acd229(86)+acd229(87)+acd229(88)
      acd229(87)=acd229(35)*acd229(86)
      acd229(70)=acd229(87)+acd229(85)+acd229(83)+acd229(81)+acd229(74)+acd229(&
      &72)+acd229(70)+acd229(77)+acd229(76)
      acd229(72)=acd229(3)*acd229(79)
      acd229(69)=acd229(72)+acd229(69)
      acd229(69)=acd229(39)*acd229(69)
      acd229(72)=-acd229(5)*acd229(79)
      acd229(71)=acd229(72)+acd229(71)
      acd229(71)=acd229(40)*acd229(71)
      acd229(72)=-acd229(7)*acd229(79)
      acd229(72)=acd229(72)+acd229(73)
      acd229(72)=acd229(41)*acd229(72)
      acd229(73)=acd229(45)+acd229(43)-acd229(38)
      acd229(73)=acd229(75)*acd229(73)
      acd229(74)=acd229(52)*acd229(80)
      acd229(75)=acd229(53)*acd229(82)
      acd229(76)=acd229(54)*acd229(84)
      acd229(77)=acd229(55)*acd229(86)
      acd229(79)=acd229(49)+acd229(48)+acd229(46)
      acd229(79)=acd229(47)*acd229(79)
      acd229(78)=-acd229(44)*acd229(78)
      acd229(80)=acd229(37)*acd229(36)
      acd229(81)=acd229(42)*acd229(8)
      acd229(82)=acd229(51)*acd229(50)
      acd229(83)=acd229(57)*acd229(56)
      acd229(84)=acd229(58)*acd229(20)
      acd229(85)=acd229(59)*acd229(2)
      acd229(86)=acd229(60)*acd229(21)
      acd229(87)=acd229(61)*acd229(4)
      acd229(88)=acd229(62)*acd229(23)
      acd229(89)=acd229(64)*acd229(63)
      acd229(90)=acd229(65)*acd229(6)
      acd229(91)=acd229(66)*acd229(25)
      acd229(92)=acd229(68)*acd229(67)
      acd229(69)=acd229(92)+acd229(91)+acd229(90)+acd229(89)+acd229(88)+acd229(&
      &87)+acd229(86)+acd229(85)+acd229(84)+acd229(83)+2.0_ki*acd229(82)+acd229&
      &(81)+acd229(80)+acd229(78)+acd229(77)+acd229(76)+acd229(75)+acd229(74)+a&
      &cd229(72)+acd229(71)+acd229(69)+acd229(79)+acd229(73)
      brack(ninjaidxt0x0mu0)=acd229(69)
      brack(ninjaidxt0x1mu0)=acd229(70)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d229h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
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
end module     p0_dbaru_epnebbbarg_d229h3l132
