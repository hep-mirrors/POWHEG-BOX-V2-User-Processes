module p0_gg_hhg_d43h3l132_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d43h3l132.f90
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
      use p0_gg_hhg_abbrevd43h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd43
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
      use p0_gg_hhg_abbrevd43h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(89) :: acd43
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd43(1)=dotproduct(k1,ninjaE3)
      acd43(2)=dotproduct(k2,ninjaE3)
      acd43(3)=dotproduct(ninjaE3,spvak2k1)
      acd43(4)=abb43(136)
      acd43(5)=dotproduct(ninjaE3,spvak2k5)
      acd43(6)=abb43(133)
      acd43(7)=dotproduct(l4,ninjaE3)
      acd43(8)=abb43(134)
      acd43(9)=abb43(62)
      acd43(10)=dotproduct(ninjaA0,ninjaE3)
      acd43(11)=abb43(34)
      acd43(12)=abb43(88)
      acd43(13)=dotproduct(ninjaE3,spvak5k2)
      acd43(14)=abb43(66)
      acd43(15)=dotproduct(ninjaE3,spvak5k1)
      acd43(16)=abb43(140)
      acd43(17)=dotproduct(ninjaE3,spval4k2)
      acd43(18)=abb43(38)
      acd43(19)=dotproduct(ninjaE3,spvak5l4)
      acd43(20)=abb43(129)
      acd43(21)=dotproduct(ninjaE3,spvak2l4)
      acd43(22)=abb43(147)
      acd43(23)=abb43(114)
      acd43(24)=abb43(126)
      acd43(25)=dotproduct(l3,ninjaE3)
      acd43(26)=abb43(89)
      acd43(27)=abb43(40)
      acd43(28)=dotproduct(k5,ninjaE3)
      acd43(29)=abb43(33)
      acd43(30)=abb43(23)
      acd43(31)=abb43(68)
      acd43(32)=abb43(50)
      acd43(33)=abb43(12)
      acd43(34)=dotproduct(ninjaE3,spvak1k2)
      acd43(35)=abb43(24)
      acd43(36)=abb43(29)
      acd43(37)=dotproduct(ninjaE3,spvak5l3)
      acd43(38)=abb43(64)
      acd43(39)=dotproduct(ninjaE3,spval3k2)
      acd43(40)=abb43(87)
      acd43(41)=abb43(139)
      acd43(42)=abb43(30)
      acd43(43)=dotproduct(ninjaE3,spvak2l3)
      acd43(44)=abb43(157)
      acd43(45)=dotproduct(ninjaE3,spval3k1)
      acd43(46)=abb43(144)
      acd43(47)=abb43(149)
      acd43(48)=abb43(155)
      acd43(49)=abb43(46)
      acd43(50)=abb43(65)
      acd43(51)=abb43(97)
      acd43(52)=abb43(110)
      acd43(53)=abb43(35)
      acd43(54)=abb43(43)
      acd43(55)=abb43(11)
      acd43(56)=abb43(14)
      acd43(57)=abb43(57)
      acd43(58)=abb43(154)
      acd43(59)=abb43(16)
      acd43(60)=abb43(120)
      acd43(61)=abb43(78)
      acd43(62)=abb43(69)
      acd43(63)=abb43(96)
      acd43(64)=abb43(141)
      acd43(65)=abb43(135)
      acd43(66)=abb43(71)
      acd43(67)=abb43(98)
      acd43(68)=abb43(25)
      acd43(69)=abb43(63)
      acd43(70)=abb43(86)
      acd43(71)=abb43(74)
      acd43(72)=abb43(80)
      acd43(73)=abb43(106)
      acd43(74)=abb43(124)
      acd43(75)=dotproduct(ninjaE3,spval4k1)
      acd43(76)=abb43(143)
      acd43(77)=abb43(146)
      acd43(78)=acd43(37)*acd43(38)
      acd43(79)=acd43(39)*acd43(40)
      acd43(80)=acd43(34)*acd43(35)
      acd43(81)=acd43(28)*acd43(29)
      acd43(82)=acd43(15)*acd43(32)
      acd43(83)=acd43(25)*acd43(26)
      acd43(84)=acd43(7)*acd43(27)
      acd43(85)=acd43(1)*acd43(4)
      acd43(86)=2.0_ki*acd43(10)
      acd43(87)=acd43(30)*acd43(86)
      acd43(88)=acd43(13)*acd43(36)
      acd43(89)=acd43(2)*acd43(23)
      acd43(78)=acd43(89)+acd43(88)+acd43(87)+acd43(85)+acd43(84)+acd43(83)+acd&
      &43(82)+acd43(81)+acd43(80)+acd43(78)+acd43(79)
      acd43(78)=acd43(2)*acd43(78)
      acd43(79)=acd43(37)*acd43(62)
      acd43(80)=acd43(39)*acd43(63)
      acd43(81)=acd43(28)*acd43(16)
      acd43(82)=acd43(25)*acd43(49)
      acd43(83)=acd43(7)*acd43(53)
      acd43(84)=acd43(1)*acd43(11)
      acd43(85)=acd43(59)*acd43(86)
      acd43(79)=acd43(85)+acd43(84)+acd43(83)+acd43(82)+acd43(81)+acd43(79)+acd&
      &43(80)
      acd43(79)=acd43(79)*acd43(86)
      acd43(80)=acd43(19)*acd43(71)
      acd43(81)=acd43(17)*acd43(70)
      acd43(82)=acd43(39)*acd43(72)
      acd43(83)=acd43(34)*acd43(68)
      acd43(84)=acd43(15)*acd43(67)
      acd43(85)=acd43(13)*acd43(69)
      acd43(87)=acd43(2)*acd43(33)
      acd43(80)=acd43(87)+acd43(85)+acd43(84)+acd43(83)+acd43(82)+acd43(80)+acd&
      &43(81)
      acd43(80)=acd43(5)*acd43(80)
      acd43(81)=acd43(34)*acd43(56)
      acd43(82)=acd43(28)*acd43(52)
      acd43(83)=acd43(15)*acd43(55)
      acd43(84)=acd43(1)*acd43(8)
      acd43(81)=acd43(84)+acd43(83)+acd43(81)+acd43(82)
      acd43(81)=acd43(7)*acd43(81)
      acd43(82)=acd43(1)-acd43(25)
      acd43(83)=acd43(14)*acd43(82)
      acd43(84)=acd43(7)*acd43(57)
      acd43(85)=acd43(61)*acd43(86)
      acd43(83)=acd43(85)+acd43(84)+acd43(83)
      acd43(83)=acd43(13)*acd43(83)
      acd43(78)=acd43(80)+acd43(78)+acd43(83)+acd43(79)+acd43(81)
      acd43(78)=acd43(3)*acd43(78)
      acd43(79)=acd43(45)*acd43(46)
      acd43(80)=acd43(43)*acd43(44)
      acd43(81)=acd43(15)*acd43(41)
      acd43(83)=-acd43(25)*acd43(9)
      acd43(84)=acd43(1)*acd43(6)
      acd43(85)=acd43(31)*acd43(86)
      acd43(87)=acd43(13)*acd43(42)
      acd43(88)=acd43(2)*acd43(24)
      acd43(79)=acd43(88)+acd43(87)+acd43(85)+acd43(84)+acd43(83)+acd43(81)+acd&
      &43(79)+acd43(80)
      acd43(79)=acd43(2)*acd43(79)
      acd43(80)=acd43(75)*acd43(76)
      acd43(81)=acd43(45)*acd43(77)
      acd43(83)=acd43(43)*acd43(74)
      acd43(84)=acd43(21)*acd43(73)
      acd43(85)=acd43(25)*acd43(51)
      acd43(87)=-acd43(7)*acd43(42)
      acd43(88)=acd43(65)*acd43(86)
      acd43(80)=acd43(88)+acd43(87)+acd43(85)+acd43(84)+acd43(83)+acd43(80)+acd&
      &43(81)
      acd43(80)=acd43(13)*acd43(80)
      acd43(81)=acd43(15)*acd43(64)
      acd43(83)=acd43(25)*acd43(50)
      acd43(84)=acd43(7)*acd43(54)
      acd43(85)=acd43(1)*acd43(12)
      acd43(87)=acd43(60)*acd43(86)
      acd43(81)=acd43(87)+acd43(85)+acd43(84)+acd43(81)+acd43(83)
      acd43(81)=acd43(81)*acd43(86)
      acd43(83)=acd43(19)*acd43(20)
      acd43(84)=acd43(17)*acd43(18)
      acd43(85)=acd43(15)*acd43(16)
      acd43(87)=acd43(7)*acd43(9)
      acd43(83)=acd43(87)+acd43(85)+acd43(83)+acd43(84)
      acd43(83)=acd43(1)*acd43(83)
      acd43(79)=acd43(79)+acd43(80)+acd43(83)+acd43(81)
      acd43(79)=acd43(5)*acd43(79)
      acd43(80)=-acd43(82)*acd43(22)
      acd43(81)=acd43(66)*acd43(86)
      acd43(80)=acd43(81)+acd43(80)
      acd43(80)=acd43(21)*acd43(80)
      acd43(81)=acd43(43)*acd43(48)
      acd43(82)=acd43(21)*acd43(47)
      acd43(81)=acd43(81)+acd43(82)
      acd43(81)=acd43(2)*acd43(81)
      acd43(82)=-acd43(7)*acd43(43)*acd43(58)
      acd43(80)=acd43(81)+acd43(82)+acd43(80)
      acd43(80)=acd43(13)*acd43(80)
      acd43(78)=acd43(78)+acd43(79)+acd43(80)
      brack(ninjaidxt0x0mu0)=acd43(78)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d43h3_ninja_t2_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd43h3_qp
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
end module p0_gg_hhg_d43h3l132_qp
