module p0_gg_hhg_d53h0l131_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d53h0l131.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd53
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd53(1)=dotproduct(k2,ninjaE3)
      acd53(2)=dotproduct(ninjaE3,spvak1k2)
      acd53(3)=dotproduct(ninjaE3,spvak2k5)
      acd53(4)=abb53(31)
      acd53(5)=dotproduct(l4,ninjaE3)
      acd53(6)=abb53(18)
      acd53(7)=dotproduct(ninjaA,ninjaE3)
      acd53(8)=abb53(29)
      acd53(9)=acd53(4)*acd53(1)
      acd53(10)=-acd53(6)*acd53(5)
      acd53(11)=acd53(8)*acd53(7)
      acd53(9)=2.0_ki*acd53(11)+acd53(9)+acd53(10)
      acd53(9)=acd53(2)*acd53(9)*acd53(3)**2
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd53(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(99) :: acd53
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd53(1)=dotproduct(k1,ninjaE3)
      acd53(2)=dotproduct(ninjaE3,spvak2k5)
      acd53(3)=abb53(68)
      acd53(4)=dotproduct(k2,ninjaE3)
      acd53(5)=dotproduct(ninjaE3,spvak1k2)
      acd53(6)=dotproduct(ninjaE4,spvak2k5)
      acd53(7)=abb53(31)
      acd53(8)=dotproduct(ninjaE4,spvak1k2)
      acd53(9)=abb53(45)
      acd53(10)=dotproduct(k2,ninjaE4)
      acd53(11)=dotproduct(l4,ninjaE3)
      acd53(12)=abb53(18)
      acd53(13)=abb53(64)
      acd53(14)=dotproduct(l4,ninjaE4)
      acd53(15)=dotproduct(ninjaA,ninjaE3)
      acd53(16)=abb53(29)
      acd53(17)=abb53(17)
      acd53(18)=dotproduct(ninjaA,ninjaE4)
      acd53(19)=dotproduct(ninjaA,spvak1k2)
      acd53(20)=dotproduct(ninjaA,spvak2k5)
      acd53(21)=abb53(16)
      acd53(22)=dotproduct(ninjaE3,spvak1k5)
      acd53(23)=abb53(32)
      acd53(24)=abb53(55)
      acd53(25)=abb53(74)
      acd53(26)=abb53(47)
      acd53(27)=dotproduct(k2,ninjaA)
      acd53(28)=abb53(8)
      acd53(29)=abb53(49)
      acd53(30)=dotproduct(l4,ninjaA)
      acd53(31)=abb53(30)
      acd53(32)=abb53(33)
      acd53(33)=dotproduct(k5,ninjaE3)
      acd53(34)=abb53(27)
      acd53(35)=dotproduct(ninjaA,ninjaA)
      acd53(36)=abb53(26)
      acd53(37)=abb53(12)
      acd53(38)=dotproduct(ninjaE3,spvak2k1)
      acd53(39)=abb53(21)
      acd53(40)=dotproduct(ninjaE3,spval4k5)
      acd53(41)=abb53(24)
      acd53(42)=dotproduct(ninjaE3,spvak2l4)
      acd53(43)=abb53(37)
      acd53(44)=dotproduct(k1,ninjaA)
      acd53(45)=abb53(56)
      acd53(46)=abb53(42)
      acd53(47)=abb53(67)
      acd53(48)=abb53(9)
      acd53(49)=dotproduct(ninjaA,spvak1k5)
      acd53(50)=abb53(40)
      acd53(51)=abb53(72)
      acd53(52)=abb53(10)
      acd53(53)=abb53(58)
      acd53(54)=abb53(22)
      acd53(55)=abb53(50)
      acd53(56)=dotproduct(k5,ninjaA)
      acd53(57)=abb53(38)
      acd53(58)=abb53(70)
      acd53(59)=abb53(28)
      acd53(60)=abb53(36)
      acd53(61)=abb53(57)
      acd53(62)=abb53(20)
      acd53(63)=abb53(79)
      acd53(64)=abb53(53)
      acd53(65)=abb53(78)
      acd53(66)=dotproduct(ninjaA,spvak2k1)
      acd53(67)=dotproduct(ninjaA,spval4k5)
      acd53(68)=dotproduct(ninjaA,spvak2l4)
      acd53(69)=abb53(14)
      acd53(70)=abb53(69)
      acd53(71)=abb53(25)
      acd53(72)=abb53(75)
      acd53(73)=acd53(22)*acd53(23)
      acd53(74)=acd53(1)*acd53(3)
      acd53(73)=acd53(73)+acd53(74)
      acd53(74)=acd53(11)*acd53(13)
      acd53(75)=acd53(4)*acd53(9)
      acd53(74)=acd53(73)+acd53(74)+acd53(75)
      acd53(75)=acd53(12)*acd53(14)
      acd53(76)=acd53(7)*acd53(10)
      acd53(77)=2.0_ki*acd53(16)
      acd53(78)=acd53(77)*acd53(18)
      acd53(75)=-acd53(78)+acd53(75)-acd53(76)
      acd53(75)=acd53(75)*acd53(5)
      acd53(76)=acd53(11)*acd53(12)
      acd53(78)=acd53(4)*acd53(7)
      acd53(76)=acd53(76)-acd53(78)
      acd53(78)=2.0_ki*acd53(15)
      acd53(79)=acd53(78)*acd53(16)
      acd53(79)=acd53(76)-acd53(79)
      acd53(80)=acd53(79)*acd53(8)
      acd53(75)=acd53(80)+acd53(75)
      acd53(80)=acd53(19)*acd53(16)
      acd53(80)=acd53(80)-acd53(75)
      acd53(80)=acd53(2)*acd53(80)
      acd53(81)=acd53(15)*acd53(16)
      acd53(81)=4.0_ki*acd53(81)
      acd53(82)=acd53(81)-2.0_ki*acd53(76)
      acd53(82)=acd53(6)*acd53(82)
      acd53(77)=acd53(77)*acd53(20)
      acd53(77)=acd53(77)+acd53(21)
      acd53(82)=acd53(82)+acd53(77)
      acd53(82)=acd53(5)*acd53(82)
      acd53(83)=acd53(15)*acd53(17)
      acd53(80)=acd53(80)+acd53(82)+4.0_ki*acd53(83)+acd53(74)
      acd53(80)=acd53(2)*acd53(80)
      acd53(82)=acd53(42)*acd53(43)
      acd53(83)=acd53(38)*acd53(39)
      acd53(84)=acd53(33)*acd53(34)
      acd53(85)=acd53(40)*acd53(41)
      acd53(86)=acd53(22)*acd53(37)
      acd53(87)=acd53(1)*acd53(26)
      acd53(82)=acd53(85)+acd53(82)+acd53(86)+acd53(87)+acd53(83)+acd53(84)
      acd53(83)=acd53(11)*acd53(31)
      acd53(84)=acd53(4)*acd53(28)
      acd53(83)=acd53(84)+acd53(82)+acd53(83)
      acd53(84)=2.0_ki*acd53(20)
      acd53(85)=acd53(76)*acd53(84)
      acd53(86)=acd53(77)*acd53(78)
      acd53(86)=acd53(86)-acd53(85)+acd53(83)
      acd53(86)=acd53(5)*acd53(86)
      acd53(87)=acd53(22)*acd53(32)
      acd53(88)=acd53(1)*acd53(25)
      acd53(87)=acd53(87)-acd53(88)
      acd53(87)=acd53(87)*acd53(11)
      acd53(88)=acd53(22)*acd53(29)
      acd53(89)=acd53(1)*acd53(24)
      acd53(88)=acd53(88)+acd53(89)
      acd53(88)=acd53(88)*acd53(4)
      acd53(87)=acd53(87)-acd53(88)
      acd53(88)=acd53(17)*acd53(78)
      acd53(88)=acd53(88)+acd53(74)
      acd53(88)=acd53(88)*acd53(78)
      acd53(89)=ninjaP+acd53(35)
      acd53(90)=acd53(89)*acd53(16)
      acd53(91)=acd53(12)*acd53(30)
      acd53(92)=acd53(7)*acd53(27)
      acd53(90)=acd53(90)+acd53(36)-acd53(91)+acd53(92)
      acd53(91)=acd53(5)*acd53(90)
      acd53(79)=-acd53(19)*acd53(79)
      acd53(79)=acd53(91)+acd53(79)
      acd53(79)=acd53(2)*acd53(79)
      acd53(79)=acd53(79)+acd53(86)+acd53(88)-acd53(87)
      acd53(79)=acd53(2)*acd53(79)
      acd53(86)=acd53(5)*acd53(16)*acd53(2)**2
      acd53(84)=acd53(90)*acd53(84)
      acd53(88)=2.0_ki*ninjaP
      acd53(91)=-acd53(88)*acd53(76)
      acd53(81)=ninjaP*acd53(81)
      acd53(81)=acd53(81)+acd53(91)
      acd53(81)=acd53(6)*acd53(81)
      acd53(91)=acd53(21)*acd53(89)
      acd53(92)=acd53(43)*acd53(68)
      acd53(93)=acd53(41)*acd53(67)
      acd53(94)=acd53(39)*acd53(66)
      acd53(95)=acd53(37)*acd53(49)
      acd53(96)=acd53(34)*acd53(56)
      acd53(97)=acd53(26)*acd53(44)
      acd53(98)=acd53(30)*acd53(31)
      acd53(99)=acd53(27)*acd53(28)
      acd53(81)=acd53(84)+acd53(99)+acd53(98)+acd53(97)+acd53(96)+acd53(95)+acd&
      &53(94)+acd53(93)+acd53(69)+acd53(92)+acd53(81)+acd53(91)
      acd53(81)=acd53(5)*acd53(81)
      acd53(82)=-acd53(85)+acd53(82)
      acd53(82)=acd53(19)*acd53(82)
      acd53(84)=acd53(88)+2.0_ki*acd53(35)
      acd53(84)=acd53(17)*acd53(84)
      acd53(77)=acd53(19)*acd53(77)
      acd53(85)=acd53(23)*acd53(49)
      acd53(88)=acd53(3)*acd53(44)
      acd53(91)=acd53(30)*acd53(13)
      acd53(92)=acd53(27)*acd53(9)
      acd53(77)=acd53(92)+acd53(91)+acd53(88)+acd53(61)+acd53(85)+acd53(77)+acd&
      &53(84)
      acd53(77)=acd53(77)*acd53(78)
      acd53(84)=acd53(13)*acd53(89)
      acd53(85)=-acd53(32)*acd53(49)
      acd53(88)=acd53(25)*acd53(44)
      acd53(91)=acd53(19)*acd53(31)
      acd53(84)=acd53(91)+acd53(88)+acd53(55)+acd53(85)+acd53(84)
      acd53(84)=acd53(11)*acd53(84)
      acd53(85)=acd53(9)*acd53(89)
      acd53(88)=acd53(29)*acd53(49)
      acd53(89)=acd53(24)*acd53(44)
      acd53(91)=acd53(19)*acd53(28)
      acd53(85)=acd53(91)+acd53(89)+acd53(51)+acd53(88)+acd53(85)
      acd53(85)=acd53(4)*acd53(85)
      acd53(75)=-ninjaP*acd53(75)
      acd53(88)=acd53(19)*acd53(90)
      acd53(75)=acd53(70)+acd53(88)+acd53(75)
      acd53(75)=acd53(2)*acd53(75)
      acd53(88)=-acd53(30)*acd53(32)
      acd53(89)=acd53(27)*acd53(29)
      acd53(90)=acd53(35)*acd53(23)
      acd53(88)=acd53(90)+acd53(89)+acd53(71)+acd53(88)
      acd53(88)=acd53(22)*acd53(88)
      acd53(89)=acd53(30)*acd53(25)
      acd53(90)=acd53(27)*acd53(24)
      acd53(91)=acd53(35)*acd53(3)
      acd53(89)=acd53(91)+acd53(90)+acd53(47)+acd53(89)
      acd53(89)=acd53(1)*acd53(89)
      acd53(73)=ninjaP*acd53(73)
      acd53(90)=acd53(33)*acd53(58)
      acd53(91)=acd53(40)*acd53(72)
      acd53(73)=acd53(75)+acd53(81)+acd53(77)+acd53(85)+acd53(84)+acd53(73)+acd&
      &53(89)+acd53(88)+acd53(90)+acd53(91)+acd53(82)
      acd53(73)=acd53(2)*acd53(73)
      acd53(74)=acd53(20)*acd53(74)
      acd53(75)=acd53(20)*acd53(17)
      acd53(75)=acd53(59)+acd53(75)
      acd53(75)=acd53(75)*acd53(78)
      acd53(77)=acd53(42)*acd53(65)
      acd53(81)=-acd53(38)*acd53(63)
      acd53(82)=-acd53(33)*acd53(57)
      acd53(84)=acd53(40)*acd53(64)
      acd53(85)=acd53(22)*acd53(62)
      acd53(88)=acd53(1)*acd53(46)
      acd53(89)=acd53(11)*acd53(54)
      acd53(90)=acd53(4)*acd53(48)
      acd53(74)=acd53(75)+acd53(74)+acd53(90)+acd53(89)+acd53(88)+acd53(85)+acd&
      &53(84)+acd53(82)+acd53(77)+acd53(81)
      acd53(74)=acd53(74)*acd53(78)
      acd53(75)=-acd53(20)*acd53(76)
      acd53(75)=acd53(75)+acd53(83)
      acd53(75)=acd53(20)*acd53(75)
      acd53(76)=acd53(20)*acd53(16)
      acd53(76)=acd53(21)+acd53(76)
      acd53(76)=acd53(20)*acd53(76)
      acd53(76)=acd53(60)+acd53(76)
      acd53(76)=acd53(76)*acd53(78)
      acd53(77)=acd53(4)*acd53(50)
      acd53(75)=acd53(76)+acd53(77)+acd53(75)
      acd53(75)=acd53(5)*acd53(75)
      acd53(76)=acd53(40)*acd53(53)
      acd53(77)=acd53(22)*acd53(52)
      acd53(78)=acd53(1)*acd53(45)
      acd53(76)=acd53(78)+acd53(76)+acd53(77)
      acd53(76)=acd53(4)*acd53(76)
      acd53(77)=-acd53(20)*acd53(87)
      acd53(73)=acd53(73)+acd53(75)+acd53(74)+acd53(76)+acd53(77)
      brack(ninjaidxt1mu0)=acd53(79)
      brack(ninjaidxt1mu2)=acd53(86)
      brack(ninjaidxt0mu0)=acd53(73)
      brack(ninjaidxt0mu2)=acd53(80)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d53h0_ninja_t3_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd53h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module p0_gg_hhg_d53h0l131_qp
