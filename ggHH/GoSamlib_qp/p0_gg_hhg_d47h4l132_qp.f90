module p0_gg_hhg_d47h4l132_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d47h4l132.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd47
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=0.0_ki
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(93) :: acd47
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd47(1)=dotproduct(k1,ninjaE3)
      acd47(2)=dotproduct(k2,ninjaE3)
      acd47(3)=dotproduct(ninjaE3,spvak5k2)
      acd47(4)=abb47(71)
      acd47(5)=dotproduct(ninjaE3,spvak1k2)
      acd47(6)=abb47(20)
      acd47(7)=dotproduct(l3,ninjaE3)
      acd47(8)=abb47(102)
      acd47(9)=abb47(153)
      acd47(10)=dotproduct(ninjaA0,ninjaE3)
      acd47(11)=abb47(96)
      acd47(12)=abb47(30)
      acd47(13)=dotproduct(ninjaE3,spvak2k5)
      acd47(14)=abb47(114)
      acd47(15)=dotproduct(ninjaE3,spval3k2)
      acd47(16)=abb47(124)
      acd47(17)=dotproduct(ninjaE3,spvak2l3)
      acd47(18)=abb47(131)
      acd47(19)=dotproduct(ninjaE3,spvak1k5)
      acd47(20)=abb47(141)
      acd47(21)=dotproduct(ninjaE3,spval3k5)
      acd47(22)=abb47(90)
      acd47(23)=abb47(103)
      acd47(24)=abb47(26)
      acd47(25)=abb47(83)
      acd47(26)=dotproduct(l4,ninjaE3)
      acd47(27)=abb47(45)
      acd47(28)=dotproduct(k5,ninjaE3)
      acd47(29)=abb47(42)
      acd47(30)=abb47(95)
      acd47(31)=abb47(22)
      acd47(32)=abb47(105)
      acd47(33)=abb47(79)
      acd47(34)=dotproduct(ninjaE3,spval4k2)
      acd47(35)=abb47(111)
      acd47(36)=abb47(62)
      acd47(37)=abb47(144)
      acd47(38)=dotproduct(ninjaE3,spvak1l4)
      acd47(39)=abb47(146)
      acd47(40)=abb47(50)
      acd47(41)=dotproduct(ninjaE3,spvak2l4)
      acd47(42)=abb47(32)
      acd47(43)=dotproduct(ninjaE3,spvak2k1)
      acd47(44)=abb47(64)
      acd47(45)=abb47(72)
      acd47(46)=dotproduct(ninjaE3,spval4k5)
      acd47(47)=abb47(149)
      acd47(48)=abb47(106)
      acd47(49)=abb47(56)
      acd47(50)=abb47(94)
      acd47(51)=abb47(29)
      acd47(52)=abb47(86)
      acd47(53)=abb47(78)
      acd47(54)=abb47(59)
      acd47(55)=abb47(65)
      acd47(56)=abb47(101)
      acd47(57)=abb47(54)
      acd47(58)=abb47(93)
      acd47(59)=abb47(27)
      acd47(60)=abb47(25)
      acd47(61)=abb47(85)
      acd47(62)=abb47(99)
      acd47(63)=abb47(24)
      acd47(64)=abb47(122)
      acd47(65)=abb47(55)
      acd47(66)=abb47(117)
      acd47(67)=abb47(145)
      acd47(68)=abb47(68)
      acd47(69)=abb47(69)
      acd47(70)=abb47(9)
      acd47(71)=abb47(17)
      acd47(72)=dotproduct(ninjaE3,spvak1l3)
      acd47(73)=abb47(130)
      acd47(74)=abb47(40)
      acd47(75)=abb47(87)
      acd47(76)=abb47(44)
      acd47(77)=abb47(77)
      acd47(78)=abb47(150)
      acd47(79)=abb47(113)
      acd47(80)=acd47(43)*acd47(44)
      acd47(81)=acd47(46)*acd47(47)
      acd47(82)=acd47(41)*acd47(42)
      acd47(83)=acd47(28)*acd47(29)
      acd47(84)=acd47(21)*acd47(48)
      acd47(85)=acd47(17)*acd47(40)
      acd47(86)=acd47(19)*acd47(45)
      acd47(87)=acd47(26)*acd47(27)
      acd47(88)=acd47(13)*acd47(33)
      acd47(89)=acd47(7)*acd47(25)
      acd47(90)=acd47(1)*acd47(6)
      acd47(91)=2.0_ki*acd47(10)
      acd47(92)=acd47(31)*acd47(91)
      acd47(93)=acd47(2)*acd47(24)
      acd47(80)=acd47(93)+acd47(92)+acd47(90)+acd47(89)+acd47(88)+acd47(87)+acd&
      &47(86)+acd47(85)+acd47(84)+acd47(83)+acd47(82)+acd47(80)+acd47(81)
      acd47(80)=acd47(2)*acd47(80)
      acd47(81)=acd47(46)*acd47(69)
      acd47(82)=acd47(41)*acd47(68)
      acd47(83)=acd47(28)*acd47(20)
      acd47(84)=acd47(26)*acd47(59)
      acd47(85)=acd47(13)*acd47(65)
      acd47(86)=acd47(7)*acd47(51)
      acd47(87)=acd47(1)*acd47(12)
      acd47(88)=acd47(63)*acd47(91)
      acd47(81)=acd47(88)+acd47(87)+acd47(86)+acd47(85)+acd47(84)+acd47(83)+acd&
      &47(81)+acd47(82)
      acd47(81)=acd47(81)*acd47(91)
      acd47(82)=acd47(43)*acd47(76)
      acd47(83)=acd47(46)*acd47(78)
      acd47(84)=acd47(41)*acd47(75)
      acd47(85)=acd47(21)*acd47(79)
      acd47(86)=acd47(17)*acd47(74)
      acd47(87)=acd47(19)*acd47(77)
      acd47(88)=acd47(13)*acd47(71)
      acd47(89)=acd47(2)*acd47(36)
      acd47(82)=acd47(89)+acd47(88)+acd47(87)+acd47(86)+acd47(85)+acd47(84)+acd&
      &47(82)+acd47(83)
      acd47(82)=acd47(3)*acd47(82)
      acd47(83)=acd47(43)*acd47(54)
      acd47(84)=acd47(46)*acd47(56)
      acd47(85)=-acd47(41)*acd47(53)
      acd47(86)=acd47(28)*acd47(49)
      acd47(87)=acd47(19)*acd47(55)
      acd47(88)=acd47(13)*acd47(52)
      acd47(83)=acd47(88)+acd47(87)+acd47(86)+acd47(85)+acd47(83)+acd47(84)
      acd47(83)=acd47(7)*acd47(83)
      acd47(84)=acd47(28)*acd47(57)
      acd47(85)=acd47(21)*acd47(61)
      acd47(86)=acd47(17)*acd47(60)
      acd47(84)=acd47(86)+acd47(84)+acd47(85)
      acd47(84)=acd47(26)*acd47(84)
      acd47(85)=acd47(13)*acd47(14)
      acd47(86)=acd47(7)*acd47(9)
      acd47(85)=acd47(85)+acd47(86)
      acd47(85)=acd47(1)*acd47(85)
      acd47(80)=acd47(82)+acd47(80)+acd47(81)+acd47(85)+acd47(84)+acd47(83)
      acd47(80)=acd47(5)*acd47(80)
      acd47(81)=acd47(38)*acd47(39)
      acd47(82)=acd47(34)*acd47(35)
      acd47(83)=acd47(19)*acd47(37)
      acd47(84)=-acd47(26)*acd47(8)
      acd47(85)=acd47(13)*acd47(32)
      acd47(86)=acd47(1)*acd47(4)
      acd47(87)=acd47(30)*acd47(91)
      acd47(88)=acd47(2)*acd47(23)
      acd47(81)=acd47(88)+acd47(87)+acd47(86)+acd47(85)+acd47(84)+acd47(83)+acd&
      &47(81)+acd47(82)
      acd47(81)=acd47(2)*acd47(81)
      acd47(82)=acd47(19)*acd47(67)
      acd47(83)=acd47(26)*acd47(58)
      acd47(84)=acd47(13)*acd47(64)
      acd47(85)=acd47(7)*acd47(50)
      acd47(86)=acd47(1)*acd47(11)
      acd47(87)=acd47(62)*acd47(91)
      acd47(82)=acd47(87)+acd47(86)+acd47(85)+acd47(84)+acd47(82)+acd47(83)
      acd47(82)=acd47(82)*acd47(91)
      acd47(83)=acd47(21)*acd47(22)
      acd47(84)=acd47(17)*acd47(18)
      acd47(85)=acd47(19)*acd47(20)
      acd47(86)=acd47(7)*acd47(8)
      acd47(83)=acd47(86)+acd47(85)+acd47(83)+acd47(84)
      acd47(83)=acd47(1)*acd47(83)
      acd47(84)=acd47(72)*acd47(73)
      acd47(85)=acd47(34)*acd47(70)
      acd47(84)=acd47(84)+acd47(85)
      acd47(84)=acd47(13)*acd47(84)
      acd47(81)=acd47(81)+acd47(82)+acd47(84)+acd47(83)
      acd47(81)=acd47(3)*acd47(81)
      acd47(82)=acd47(1)*acd47(16)
      acd47(83)=acd47(66)*acd47(91)
      acd47(82)=acd47(82)+acd47(83)
      acd47(82)=acd47(82)*acd47(13)*acd47(15)
      acd47(80)=acd47(80)+acd47(81)+acd47(82)
      brack(ninjaidxt0x0mu0)=acd47(80)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d47h4_ninja_t2_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd47h4_qp
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
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module p0_gg_hhg_d47h4l132_qp
