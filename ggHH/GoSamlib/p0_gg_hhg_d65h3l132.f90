module     p0_gg_hhg_d65h3l132
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d65h3l132.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2x0mu0 = 0
   integer, parameter :: ninjaidxt1x0mu0 = 1
   integer, parameter :: ninjaidxt1x1mu0 = 2
   integer, parameter :: ninjaidxt0x0mu0 = 3
   integer, parameter :: ninjaidxt0x0mu2 = 4
   integer, parameter :: ninjaidxt0x1mu0 = 5
   integer, parameter :: ninjaidxt0x2mu0 = 6
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd65h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd65
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd65(1)=dotproduct(k2,ninjaE3)
      acd65(2)=dotproduct(ninjaE3,spvak2k1)
      acd65(3)=dotproduct(ninjaE3,spvak2k5)
      acd65(4)=dotproduct(ninjaE3,spvak5k2)
      acd65(5)=abb65(63)
      acd65(6)=dotproduct(l4,ninjaE3)
      acd65(7)=abb65(89)
      acd65(8)=dotproduct(ninjaA0,ninjaE3)
      acd65(9)=abb65(30)
      acd65(10)=acd65(5)*acd65(1)
      acd65(11)=acd65(7)*acd65(6)
      acd65(12)=acd65(9)*acd65(8)
      acd65(10)=2.0_ki*acd65(12)+acd65(10)+acd65(11)
      acd65(10)=acd65(2)*acd65(10)*acd65(4)*acd65(3)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd65(10)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd65h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(103) :: acd65
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd65(1)=dotproduct(ninjaE3,spvak2k1)
      acd65(2)=dotproduct(ninjaE3,spvak2k5)
      acd65(3)=dotproduct(ninjaE3,spvak5k2)
      acd65(4)=abb65(30)
      acd65(5)=dotproduct(k2,ninjaA1)
      acd65(6)=abb65(63)
      acd65(7)=dotproduct(k2,ninjaE3)
      acd65(8)=dotproduct(ninjaA1,spvak2k1)
      acd65(9)=dotproduct(ninjaA1,spvak2k5)
      acd65(10)=dotproduct(ninjaA1,spvak5k2)
      acd65(11)=dotproduct(l4,ninjaA1)
      acd65(12)=abb65(89)
      acd65(13)=dotproduct(l4,ninjaE3)
      acd65(14)=dotproduct(ninjaA0,ninjaA1)
      acd65(15)=dotproduct(ninjaA0,ninjaE3)
      acd65(16)=dotproduct(ninjaA1,ninjaA1)
      acd65(17)=dotproduct(k1,ninjaE3)
      acd65(18)=abb65(152)
      acd65(19)=abb65(87)
      acd65(20)=abb65(127)
      acd65(21)=abb65(145)
      acd65(22)=abb65(47)
      acd65(23)=abb65(144)
      acd65(24)=dotproduct(k2,ninjaA0)
      acd65(25)=abb65(70)
      acd65(26)=abb65(81)
      acd65(27)=dotproduct(k5,ninjaE3)
      acd65(28)=abb65(71)
      acd65(29)=abb65(46)
      acd65(30)=abb65(126)
      acd65(31)=dotproduct(ninjaA0,spvak2k1)
      acd65(32)=dotproduct(ninjaA0,spvak2k5)
      acd65(33)=dotproduct(ninjaA0,spvak5k2)
      acd65(34)=dotproduct(ninjaE3,spvak1k2)
      acd65(35)=abb65(10)
      acd65(36)=abb65(41)
      acd65(37)=dotproduct(ninjaE3,spvak5k1)
      acd65(38)=abb65(64)
      acd65(39)=abb65(146)
      acd65(40)=dotproduct(l3,ninjaE3)
      acd65(41)=abb65(19)
      acd65(42)=abb65(125)
      acd65(43)=abb65(74)
      acd65(44)=dotproduct(l4,ninjaA0)
      acd65(45)=abb65(98)
      acd65(46)=abb65(43)
      acd65(47)=abb65(124)
      acd65(48)=abb65(24)
      acd65(49)=abb65(39)
      acd65(50)=abb65(59)
      acd65(51)=abb65(154)
      acd65(52)=abb65(32)
      acd65(53)=dotproduct(ninjaA0,ninjaA0)
      acd65(54)=abb65(50)
      acd65(55)=abb65(147)
      acd65(56)=abb65(29)
      acd65(57)=abb65(36)
      acd65(58)=abb65(31)
      acd65(59)=abb65(33)
      acd65(60)=dotproduct(ninjaE3,spval3k5)
      acd65(61)=abb65(69)
      acd65(62)=dotproduct(ninjaE3,spval4k5)
      acd65(63)=abb65(76)
      acd65(64)=dotproduct(ninjaE3,spvak2l4)
      acd65(65)=abb65(80)
      acd65(66)=dotproduct(ninjaE3,spvak2l3)
      acd65(67)=abb65(82)
      acd65(68)=abb65(108)
      acd65(69)=dotproduct(ninjaE3,spval3k2)
      acd65(70)=abb65(158)
      acd65(71)=dotproduct(ninjaE3,spvak5l4)
      acd65(72)=abb65(143)
      acd65(73)=abb65(155)
      acd65(74)=abb65(159)
      acd65(75)=abb65(101)
      acd65(76)=abb65(12)
      acd65(77)=abb65(25)
      acd65(78)=abb65(38)
      acd65(79)=dotproduct(ninjaE3,spvak5l3)
      acd65(80)=abb65(42)
      acd65(81)=dotproduct(ninjaE3,spval4k2)
      acd65(82)=abb65(48)
      acd65(83)=acd65(4)*acd65(3)
      acd65(84)=acd65(2)*acd65(1)
      acd65(85)=acd65(83)*acd65(84)
      acd65(86)=acd65(6)*acd65(7)
      acd65(87)=acd65(12)*acd65(13)
      acd65(88)=2.0_ki*acd65(15)
      acd65(89)=acd65(88)*acd65(4)
      acd65(86)=acd65(89)+acd65(86)+acd65(87)
      acd65(87)=acd65(3)*acd65(2)
      acd65(89)=acd65(86)*acd65(87)
      acd65(90)=acd65(8)*acd65(89)
      acd65(91)=acd65(3)*acd65(1)
      acd65(92)=acd65(86)*acd65(91)
      acd65(93)=acd65(9)*acd65(92)
      acd65(86)=acd65(86)*acd65(84)
      acd65(94)=acd65(10)*acd65(86)
      acd65(95)=acd65(5)*acd65(6)
      acd65(96)=acd65(11)*acd65(12)
      acd65(95)=acd65(96)+acd65(95)
      acd65(95)=acd65(3)*acd65(84)*acd65(95)
      acd65(96)=ninjaP1+2.0_ki*acd65(14)
      acd65(96)=acd65(85)*acd65(96)
      acd65(90)=acd65(94)+acd65(90)+acd65(93)+acd65(96)+acd65(95)
      acd65(93)=acd65(16)+ninjaP2
      acd65(93)=acd65(85)*acd65(93)
      acd65(94)=acd65(22)*acd65(17)
      acd65(95)=acd65(29)*acd65(7)
      acd65(96)=acd65(41)*acd65(40)
      acd65(97)=acd65(46)*acd65(13)
      acd65(98)=acd65(52)*acd65(27)
      acd65(99)=acd65(56)*acd65(34)
      acd65(100)=acd65(61)*acd65(60)
      acd65(101)=acd65(63)*acd65(62)
      acd65(102)=acd65(65)*acd65(64)
      acd65(103)=acd65(67)*acd65(66)
      acd65(94)=acd65(103)+acd65(102)+acd65(101)+acd65(100)+acd65(99)+acd65(98)&
      &+acd65(97)+acd65(96)+acd65(95)+acd65(94)
      acd65(94)=acd65(1)*acd65(94)
      acd65(95)=acd65(30)*acd65(7)
      acd65(96)=acd65(42)*acd65(40)
      acd65(97)=acd65(47)*acd65(13)
      acd65(98)=acd65(70)*acd65(69)
      acd65(99)=acd65(72)*acd65(71)
      acd65(95)=acd65(97)+acd65(95)+acd65(99)+acd65(98)+acd65(96)
      acd65(95)=acd65(2)*acd65(95)
      acd65(96)=acd65(74)*acd65(64)
      acd65(97)=acd65(75)*acd65(66)
      acd65(96)=acd65(97)+acd65(96)
      acd65(96)=acd65(3)*acd65(96)
      acd65(97)=acd65(17)*acd65(2)
      acd65(98)=acd65(23)*acd65(97)
      acd65(99)=-acd65(57)*acd65(1)**2
      acd65(100)=acd65(58)*acd65(84)
      acd65(91)=acd65(59)*acd65(91)
      acd65(87)=acd65(68)*acd65(87)
      acd65(101)=acd65(37)*acd65(2)
      acd65(102)=acd65(73)*acd65(101)
      acd65(87)=acd65(102)+acd65(87)+acd65(91)+acd65(100)+acd65(99)+acd65(98)+a&
      &cd65(94)+acd65(96)+acd65(95)
      acd65(87)=acd65(88)*acd65(87)
      acd65(88)=ninjaP0+acd65(53)
      acd65(83)=acd65(83)*acd65(88)
      acd65(88)=acd65(24)*acd65(6)
      acd65(91)=acd65(44)*acd65(12)
      acd65(88)=acd65(76)+acd65(91)+acd65(88)
      acd65(88)=acd65(3)*acd65(88)
      acd65(91)=acd65(36)*acd65(7)
      acd65(94)=acd65(43)*acd65(40)
      acd65(95)=acd65(49)*acd65(13)
      acd65(96)=acd65(77)*acd65(69)
      acd65(98)=acd65(78)*acd65(71)
      acd65(99)=acd65(80)*acd65(79)
      acd65(100)=acd65(82)*acd65(81)
      acd65(83)=acd65(100)+acd65(99)+acd65(98)+acd65(96)+acd65(95)+acd65(94)+ac&
      &d65(91)+acd65(88)+acd65(83)
      acd65(83)=acd65(84)*acd65(83)
      acd65(84)=acd65(20)*acd65(17)
      acd65(88)=acd65(26)*acd65(7)
      acd65(91)=acd65(45)*acd65(27)
      acd65(94)=acd65(48)*acd65(34)
      acd65(95)=acd65(50)*acd65(37)
      acd65(84)=acd65(95)+acd65(94)+acd65(91)+acd65(88)+acd65(84)
      acd65(84)=acd65(13)*acd65(84)
      acd65(88)=acd65(18)*acd65(17)
      acd65(91)=acd65(28)*acd65(27)
      acd65(94)=acd65(35)*acd65(34)
      acd65(95)=acd65(38)*acd65(37)
      acd65(88)=acd65(95)+acd65(94)+acd65(91)+acd65(88)
      acd65(88)=acd65(7)*acd65(88)
      acd65(91)=acd65(25)*acd65(7)**2
      acd65(94)=acd65(15)**2
      acd65(94)=4.0_ki*acd65(94)
      acd65(95)=acd65(54)*acd65(94)
      acd65(84)=acd65(95)+acd65(91)+acd65(84)+acd65(88)
      acd65(84)=acd65(1)*acd65(84)
      acd65(88)=acd65(31)*acd65(89)
      acd65(89)=acd65(32)*acd65(92)
      acd65(86)=acd65(33)*acd65(86)
      acd65(91)=acd65(39)*acd65(7)
      acd65(92)=acd65(51)*acd65(13)
      acd65(91)=acd65(92)+acd65(91)
      acd65(91)=acd65(101)*acd65(91)
      acd65(92)=acd65(19)*acd65(7)
      acd65(95)=acd65(21)*acd65(13)
      acd65(92)=acd65(95)+acd65(92)
      acd65(92)=acd65(97)*acd65(92)
      acd65(94)=acd65(55)*acd65(2)*acd65(94)
      acd65(83)=acd65(94)+acd65(86)+acd65(88)+acd65(89)+acd65(87)+acd65(83)+acd&
      &65(84)+acd65(92)+acd65(91)
      brack(ninjaidxt0x0mu0)=acd65(83)
      brack(ninjaidxt0x0mu2)=acd65(85)
      brack(ninjaidxt0x1mu0)=acd65(90)
      brack(ninjaidxt0x2mu0)=acd65(93)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d65h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd65h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k4
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_gg_hhg_d65h3l132
