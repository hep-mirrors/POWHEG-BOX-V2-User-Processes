module p1_dg_hhd_d4h2l131_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p1_dg_hhd/helicity2d4h2l131.f90
   ! generator: buildfortran_tn3.py
   use p1_dg_hhd_config_qp, only: ki
   use p1_dg_hhd_util_qp, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd4h2_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd4
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd4h2_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(100) :: acd4
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd4(1)=dotproduct(k1,ninjaE3)
      acd4(2)=abb4(35)
      acd4(3)=dotproduct(k2,ninjaE3)
      acd4(4)=abb4(29)
      acd4(5)=dotproduct(l3,ninjaE3)
      acd4(6)=abb4(11)
      acd4(7)=dotproduct(l4,ninjaE3)
      acd4(8)=dotproduct(ninjaA,ninjaE3)
      acd4(9)=dotproduct(ninjaE3,spvak2k1)
      acd4(10)=abb4(20)
      acd4(11)=dotproduct(ninjaE3,spvak1k5)
      acd4(12)=abb4(31)
      acd4(13)=dotproduct(ninjaE3,spvak2k5)
      acd4(14)=abb4(14)
      acd4(15)=dotproduct(ninjaE3,spvak2l4)
      acd4(16)=abb4(49)
      acd4(17)=dotproduct(ninjaE3,spvak2l3)
      acd4(18)=abb4(48)
      acd4(19)=dotproduct(ninjaE3,spval3k1)
      acd4(20)=abb4(44)
      acd4(21)=dotproduct(ninjaE3,spval4k1)
      acd4(22)=abb4(41)
      acd4(23)=abb4(32)
      acd4(24)=abb4(13)
      acd4(25)=dotproduct(ninjaE3,spval3k5)
      acd4(26)=abb4(42)
      acd4(27)=abb4(10)
      acd4(28)=abb4(27)
      acd4(29)=dotproduct(ninjaE3,spvak1l3)
      acd4(30)=abb4(34)
      acd4(31)=abb4(54)
      acd4(32)=abb4(43)
      acd4(33)=abb4(9)
      acd4(34)=abb4(25)
      acd4(35)=abb4(45)
      acd4(36)=dotproduct(ninjaE3,spval3k2)
      acd4(37)=abb4(19)
      acd4(38)=abb4(21)
      acd4(39)=abb4(26)
      acd4(40)=dotproduct(ninjaE3,spval4k2)
      acd4(41)=abb4(30)
      acd4(42)=dotproduct(ninjaE3,spval4l3)
      acd4(43)=abb4(33)
      acd4(44)=dotproduct(ninjaE3,spval3l4)
      acd4(45)=abb4(52)
      acd4(46)=dotproduct(k1,ninjaA)
      acd4(47)=dotproduct(ninjaA,ninjaA)
      acd4(48)=abb4(36)
      acd4(49)=dotproduct(k2,ninjaA)
      acd4(50)=dotproduct(ninjaA,spvak2k1)
      acd4(51)=dotproduct(ninjaA,spval3k5)
      acd4(52)=dotproduct(ninjaA,spvak1k5)
      acd4(53)=dotproduct(ninjaA,spvak2k5)
      acd4(54)=dotproduct(ninjaA,spvak1l3)
      acd4(55)=dotproduct(ninjaA,spvak2l3)
      acd4(56)=dotproduct(ninjaA,spval3k1)
      acd4(57)=abb4(28)
      acd4(58)=dotproduct(l3,ninjaA)
      acd4(59)=dotproduct(l4,ninjaA)
      acd4(60)=abb4(18)
      acd4(61)=dotproduct(ninjaA,spvak2l4)
      acd4(62)=dotproduct(ninjaA,spval4k1)
      acd4(63)=abb4(16)
      acd4(64)=dotproduct(ninjaA,spval3k2)
      acd4(65)=dotproduct(ninjaA,spval4k2)
      acd4(66)=dotproduct(ninjaA,spval4l3)
      acd4(67)=dotproduct(ninjaA,spval3l4)
      acd4(68)=abb4(17)
      acd4(69)=abb4(37)
      acd4(70)=abb4(24)
      acd4(71)=abb4(23)
      acd4(72)=abb4(15)
      acd4(73)=abb4(47)
      acd4(74)=abb4(51)
      acd4(75)=dotproduct(ninjaE3,spval4k5)
      acd4(76)=abb4(38)
      acd4(77)=abb4(39)
      acd4(78)=abb4(40)
      acd4(79)=dotproduct(ninjaE3,spvak1l4)
      acd4(80)=abb4(50)
      acd4(81)=acd4(21)*acd4(22)
      acd4(82)=acd4(1)*acd4(2)
      acd4(83)=acd4(19)*acd4(20)
      acd4(84)=acd4(15)*acd4(16)
      acd4(85)=acd4(13)*acd4(14)
      acd4(86)=acd4(17)*acd4(18)
      acd4(87)=acd4(11)*acd4(12)
      acd4(81)=acd4(83)+acd4(81)+acd4(82)+acd4(84)+acd4(85)+acd4(86)+acd4(87)
      acd4(82)=acd4(3)*acd4(4)
      acd4(83)=acd4(9)*acd4(10)
      acd4(82)=acd4(83)+acd4(81)+acd4(82)
      acd4(83)=acd4(7)-acd4(5)
      acd4(84)=acd4(83)*acd4(6)
      acd4(85)=acd4(8)*acd4(6)
      acd4(85)=-4.0_ki*acd4(85)-acd4(84)+acd4(82)
      acd4(86)=acd4(45)*acd4(44)
      acd4(87)=acd4(43)*acd4(42)
      acd4(88)=acd4(41)*acd4(40)
      acd4(89)=acd4(37)*acd4(36)
      acd4(90)=acd4(29)*acd4(35)
      acd4(91)=acd4(25)*acd4(33)
      acd4(92)=acd4(15)*acd4(38)
      acd4(93)=acd4(17)*acd4(39)
      acd4(94)=acd4(11)*acd4(34)
      acd4(86)=acd4(91)+acd4(92)+acd4(93)+acd4(94)+acd4(86)+acd4(89)+acd4(90)+a&
      &cd4(87)+acd4(88)
      acd4(87)=acd4(3)*acd4(24)
      acd4(87)=acd4(87)+acd4(86)
      acd4(87)=acd4(9)*acd4(87)
      acd4(88)=2.0_ki*acd4(8)
      acd4(83)=-acd4(88)-acd4(83)
      acd4(83)=acd4(6)*acd4(83)
      acd4(82)=acd4(83)+acd4(82)
      acd4(82)=acd4(82)*acd4(88)
      acd4(83)=acd4(29)*acd4(30)
      acd4(89)=acd4(25)*acd4(26)
      acd4(90)=acd4(19)*acd4(32)
      acd4(91)=acd4(13)*acd4(28)
      acd4(83)=-acd4(83)-acd4(89)+acd4(90)-acd4(91)
      acd4(89)=acd4(17)*acd4(31)
      acd4(90)=acd4(11)*acd4(27)
      acd4(91)=acd4(3)*acd4(23)
      acd4(89)=acd4(91)+acd4(90)+acd4(89)-acd4(83)
      acd4(89)=acd4(3)*acd4(89)
      acd4(82)=acd4(82)+acd4(89)+acd4(87)
      acd4(87)=acd4(47)+ninjaP
      acd4(89)=acd4(10)*acd4(87)
      acd4(90)=acd4(45)*acd4(67)
      acd4(91)=acd4(43)*acd4(66)
      acd4(92)=acd4(41)*acd4(65)
      acd4(93)=acd4(39)*acd4(55)
      acd4(94)=acd4(38)*acd4(61)
      acd4(95)=acd4(37)*acd4(64)
      acd4(96)=acd4(35)*acd4(54)
      acd4(97)=acd4(34)*acd4(52)
      acd4(98)=acd4(33)*acd4(51)
      acd4(99)=acd4(49)*acd4(24)
      acd4(89)=acd4(99)+acd4(98)+acd4(97)+acd4(96)+acd4(95)+acd4(94)+acd4(93)+a&
      &cd4(92)+acd4(91)+acd4(68)+acd4(90)+acd4(89)
      acd4(89)=acd4(9)*acd4(89)
      acd4(90)=acd4(22)*acd4(62)
      acd4(91)=acd4(20)*acd4(56)
      acd4(92)=acd4(18)*acd4(55)
      acd4(93)=acd4(16)*acd4(61)
      acd4(94)=acd4(14)*acd4(53)
      acd4(95)=acd4(12)*acd4(52)
      acd4(96)=acd4(2)*acd4(46)
      acd4(97)=acd4(49)*acd4(4)
      acd4(98)=acd4(50)*acd4(10)
      acd4(99)=-acd4(59)+acd4(58)-2.0_ki*acd4(87)
      acd4(99)=acd4(6)*acd4(99)
      acd4(90)=acd4(99)+acd4(98)+acd4(97)+acd4(96)+acd4(95)+acd4(94)+acd4(93)+a&
      &cd4(92)+acd4(91)+acd4(63)+acd4(90)
      acd4(88)=acd4(90)*acd4(88)
      acd4(86)=acd4(50)*acd4(86)
      acd4(90)=acd4(4)*acd4(87)
      acd4(91)=-acd4(32)*acd4(56)
      acd4(92)=acd4(31)*acd4(55)
      acd4(93)=acd4(30)*acd4(54)
      acd4(94)=acd4(28)*acd4(53)
      acd4(95)=acd4(27)*acd4(52)
      acd4(96)=acd4(26)*acd4(51)
      acd4(97)=acd4(49)*acd4(23)
      acd4(98)=acd4(50)*acd4(24)
      acd4(90)=acd4(98)+2.0_ki*acd4(97)+acd4(96)+acd4(95)+acd4(94)+acd4(93)+acd&
      &4(92)+acd4(57)+acd4(91)+acd4(90)
      acd4(90)=acd4(3)*acd4(90)
      acd4(81)=-acd4(84)+acd4(81)
      acd4(81)=acd4(87)*acd4(81)
      acd4(83)=-acd4(49)*acd4(83)
      acd4(84)=acd4(79)*acd4(80)
      acd4(87)=acd4(75)*acd4(76)
      acd4(91)=acd4(29)*acd4(72)
      acd4(92)=acd4(25)*acd4(69)
      acd4(93)=acd4(21)*acd4(78)
      acd4(94)=acd4(7)*acd4(60)
      acd4(95)=acd4(1)*acd4(48)
      acd4(96)=acd4(19)*acd4(77)
      acd4(97)=acd4(15)*acd4(73)
      acd4(98)=acd4(13)*acd4(71)
      acd4(99)=acd4(49)*acd4(31)
      acd4(99)=acd4(74)+acd4(99)
      acd4(99)=acd4(17)*acd4(99)
      acd4(100)=acd4(49)*acd4(27)
      acd4(100)=acd4(70)+acd4(100)
      acd4(100)=acd4(11)*acd4(100)
      acd4(81)=acd4(88)+acd4(89)+acd4(90)+acd4(86)+acd4(100)+acd4(99)+acd4(83)+&
      &acd4(98)+acd4(97)+acd4(96)+acd4(95)+acd4(94)+acd4(93)+acd4(92)+acd4(91)+&
      &acd4(84)+acd4(87)+acd4(81)
      brack(ninjaidxt1mu0)=acd4(82)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd4(81)
      brack(ninjaidxt0mu2)=acd4(85)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p1_dg_hhd_d4h2_ninja_t3_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd4h2_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module p1_dg_hhd_d4h2l131_qp
