module p0_gg_hhg_d21h0l132_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d21h0l132.f90
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
      use p0_gg_hhg_abbrevd21h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd21(1)=dotproduct(k1,ninjaE3)
      acd21(2)=dotproduct(k2,ninjaE3)
      acd21(3)=dotproduct(ninjaE3,spvak2k5)
      acd21(4)=abb21(48)
      acd21(5)=dotproduct(l3,ninjaE3)
      acd21(6)=abb21(79)
      acd21(7)=dotproduct(ninjaA0,ninjaE3)
      acd21(8)=abb21(67)
      acd21(9)=dotproduct(k5,ninjaE3)
      acd21(10)=dotproduct(ninjaE3,spvak1k2)
      acd21(11)=abb21(23)
      acd21(12)=abb21(22)
      acd21(13)=abb21(21)
      acd21(14)=abb21(34)
      acd21(15)=abb21(47)
      acd21(16)=abb21(50)
      acd21(17)=2.0_ki*acd21(7)
      acd21(18)=acd21(16)*acd21(17)
      acd21(19)=-acd21(5)*acd21(14)
      acd21(20)=acd21(2)*acd21(12)
      acd21(18)=acd21(20)+acd21(18)+acd21(19)
      acd21(18)=acd21(3)*acd21(18)
      acd21(19)=acd21(1)+acd21(9)
      acd21(20)=-acd21(8)*acd21(19)
      acd21(21)=acd21(10)*acd21(15)
      acd21(20)=acd21(21)+acd21(20)
      acd21(17)=acd21(20)*acd21(17)
      acd21(20)=-acd21(6)*acd21(19)
      acd21(21)=acd21(10)*acd21(13)
      acd21(20)=acd21(21)+acd21(20)
      acd21(20)=acd21(5)*acd21(20)
      acd21(19)=-acd21(4)*acd21(19)
      acd21(21)=acd21(10)*acd21(11)
      acd21(19)=acd21(21)+acd21(19)
      acd21(19)=acd21(2)*acd21(19)
      acd21(17)=acd21(18)+acd21(19)+acd21(17)+acd21(20)
      acd21(17)=acd21(3)*acd21(17)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd21(17)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd21h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(112) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd21(1)=dotproduct(k1,ninjaE3)
      acd21(2)=dotproduct(ninjaE3,spvak2k5)
      acd21(3)=abb21(67)
      acd21(4)=dotproduct(k5,ninjaE3)
      acd21(5)=abb21(50)
      acd21(6)=dotproduct(ninjaE3,spvak1k2)
      acd21(7)=abb21(47)
      acd21(8)=dotproduct(k1,ninjaA1)
      acd21(9)=dotproduct(k2,ninjaE3)
      acd21(10)=abb21(48)
      acd21(11)=dotproduct(l3,ninjaE3)
      acd21(12)=abb21(79)
      acd21(13)=dotproduct(ninjaA0,ninjaE3)
      acd21(14)=dotproduct(k2,ninjaA1)
      acd21(15)=dotproduct(ninjaA1,spvak2k5)
      acd21(16)=dotproduct(l3,ninjaA1)
      acd21(17)=dotproduct(ninjaA0,ninjaA1)
      acd21(18)=abb21(22)
      acd21(19)=abb21(23)
      acd21(20)=dotproduct(k5,ninjaA1)
      acd21(21)=dotproduct(ninjaA1,spvak1k2)
      acd21(22)=abb21(34)
      acd21(23)=abb21(21)
      acd21(24)=dotproduct(ninjaA1,ninjaA1)
      acd21(25)=dotproduct(k1,ninjaA0)
      acd21(26)=dotproduct(k2,ninjaA0)
      acd21(27)=dotproduct(ninjaA0,spvak2k5)
      acd21(28)=dotproduct(l3,ninjaA0)
      acd21(29)=dotproduct(ninjaA0,ninjaA0)
      acd21(30)=abb21(51)
      acd21(31)=abb21(36)
      acd21(32)=abb21(35)
      acd21(33)=dotproduct(k5,ninjaA0)
      acd21(34)=abb21(42)
      acd21(35)=dotproduct(ninjaA0,spvak1k2)
      acd21(36)=abb21(25)
      acd21(37)=abb21(78)
      acd21(38)=dotproduct(l4,ninjaE3)
      acd21(39)=abb21(41)
      acd21(40)=abb21(68)
      acd21(41)=abb21(37)
      acd21(42)=abb21(66)
      acd21(43)=dotproduct(ninjaE3,spvak1l4)
      acd21(44)=abb21(17)
      acd21(45)=dotproduct(ninjaE3,spvak2k1)
      acd21(46)=abb21(59)
      acd21(47)=dotproduct(ninjaE3,spval4k5)
      acd21(48)=abb21(40)
      acd21(49)=dotproduct(ninjaE3,spvak1k5)
      acd21(50)=abb21(38)
      acd21(51)=dotproduct(ninjaE3,spval4k1)
      acd21(52)=abb21(44)
      acd21(53)=dotproduct(ninjaE3,spval4k2)
      acd21(54)=abb21(49)
      acd21(55)=abb21(18)
      acd21(56)=dotproduct(ninjaE3,spval3k5)
      acd21(57)=abb21(11)
      acd21(58)=abb21(13)
      acd21(59)=dotproduct(ninjaE3,spval3k1)
      acd21(60)=abb21(14)
      acd21(61)=abb21(19)
      acd21(62)=abb21(20)
      acd21(63)=abb21(26)
      acd21(64)=dotproduct(ninjaE3,spval3k2)
      acd21(65)=abb21(29)
      acd21(66)=dotproduct(ninjaE3,spvak1l3)
      acd21(67)=abb21(30)
      acd21(68)=abb21(62)
      acd21(69)=dotproduct(ninjaE3,spvak2l4)
      acd21(70)=abb21(45)
      acd21(71)=abb21(63)
      acd21(72)=dotproduct(ninjaE3,spvak2l3)
      acd21(73)=abb21(52)
      acd21(74)=dotproduct(ninjaE3,spvak5l3)
      acd21(75)=abb21(54)
      acd21(76)=dotproduct(ninjaE3,spvak5k2)
      acd21(77)=abb21(61)
      acd21(78)=dotproduct(ninjaE3,spvak5l4)
      acd21(79)=abb21(70)
      acd21(80)=acd21(1)+acd21(4)
      acd21(81)=acd21(3)*acd21(2)
      acd21(82)=acd21(81)*acd21(80)
      acd21(83)=acd21(2)**2
      acd21(84)=acd21(83)*acd21(5)
      acd21(85)=acd21(6)*acd21(2)
      acd21(86)=acd21(85)*acd21(7)
      acd21(82)=-acd21(82)+acd21(84)+acd21(86)
      acd21(84)=ninjaP1+2.0_ki*acd21(17)
      acd21(84)=acd21(82)*acd21(84)
      acd21(86)=2.0_ki*acd21(13)
      acd21(81)=acd21(86)*acd21(81)
      acd21(87)=acd21(10)*acd21(9)
      acd21(88)=acd21(87)*acd21(2)
      acd21(89)=acd21(11)*acd21(2)
      acd21(90)=acd21(89)*acd21(12)
      acd21(81)=acd21(88)+acd21(81)+acd21(90)
      acd21(88)=-acd21(20)-acd21(8)
      acd21(88)=acd21(81)*acd21(88)
      acd21(90)=acd21(3)*acd21(13)
      acd21(91)=acd21(11)*acd21(12)
      acd21(87)=acd21(91)+acd21(87)+2.0_ki*acd21(90)
      acd21(87)=acd21(80)*acd21(87)
      acd21(90)=acd21(19)*acd21(9)
      acd21(91)=acd21(23)*acd21(11)
      acd21(91)=acd21(91)+acd21(90)
      acd21(91)=acd21(6)*acd21(91)
      acd21(87)=-acd21(91)+acd21(87)
      acd21(91)=acd21(7)*acd21(6)
      acd21(92)=acd21(86)*acd21(91)
      acd21(93)=acd21(5)*acd21(13)
      acd21(93)=4.0_ki*acd21(93)
      acd21(94)=acd21(2)*acd21(93)
      acd21(92)=acd21(94)+acd21(92)-acd21(87)
      acd21(92)=acd21(15)*acd21(92)
      acd21(94)=acd21(85)*acd21(19)
      acd21(80)=acd21(2)*acd21(80)
      acd21(95)=acd21(80)*acd21(10)
      acd21(94)=acd21(94)-acd21(95)
      acd21(95)=acd21(14)*acd21(94)
      acd21(96)=acd21(85)*acd21(23)
      acd21(97)=acd21(80)*acd21(12)
      acd21(96)=acd21(96)-acd21(97)
      acd21(97)=acd21(16)*acd21(96)
      acd21(98)=2.0_ki*acd21(2)
      acd21(99)=acd21(98)*acd21(15)
      acd21(100)=acd21(9)*acd21(99)
      acd21(101)=acd21(14)*acd21(83)
      acd21(100)=acd21(100)+acd21(101)
      acd21(100)=acd21(18)*acd21(100)
      acd21(99)=-acd21(11)*acd21(99)
      acd21(101)=-acd21(16)*acd21(83)
      acd21(99)=acd21(99)+acd21(101)
      acd21(99)=acd21(22)*acd21(99)
      acd21(101)=acd21(86)*acd21(7)
      acd21(90)=acd21(90)+acd21(101)
      acd21(90)=acd21(2)*acd21(90)
      acd21(101)=acd21(89)*acd21(23)
      acd21(90)=acd21(101)+acd21(90)
      acd21(101)=acd21(21)*acd21(90)
      acd21(84)=acd21(101)+acd21(99)+acd21(100)+acd21(97)+acd21(95)+acd21(92)+a&
      &cd21(88)+acd21(84)
      acd21(88)=acd21(24)+ninjaP2
      acd21(88)=acd21(82)*acd21(88)
      acd21(92)=acd21(27)*acd21(93)
      acd21(93)=acd21(36)*acd21(9)
      acd21(95)=acd21(40)*acd21(38)
      acd21(97)=acd21(42)*acd21(86)
      acd21(99)=acd21(57)*acd21(56)
      acd21(100)=acd21(58)*acd21(43)
      acd21(101)=acd21(60)*acd21(59)
      acd21(102)=acd21(62)*acd21(45)
      acd21(103)=acd21(63)*acd21(47)
      acd21(104)=acd21(65)*acd21(64)
      acd21(105)=acd21(67)*acd21(66)
      acd21(106)=acd21(68)*acd21(51)
      acd21(107)=acd21(70)*acd21(69)
      acd21(108)=acd21(71)*acd21(53)
      acd21(109)=acd21(73)*acd21(72)
      acd21(110)=acd21(75)*acd21(74)
      acd21(111)=acd21(77)*acd21(76)
      acd21(112)=acd21(79)*acd21(78)
      acd21(92)=acd21(112)+acd21(111)+acd21(110)+acd21(109)+acd21(108)+acd21(10&
      &7)+acd21(106)+acd21(105)+acd21(104)+acd21(103)+acd21(102)+acd21(101)+acd&
      &21(100)+acd21(99)+acd21(97)+acd21(95)+acd21(93)+acd21(92)
      acd21(92)=acd21(2)*acd21(92)
      acd21(91)=acd21(27)*acd21(91)
      acd21(93)=acd21(34)*acd21(9)
      acd21(95)=acd21(41)*acd21(4)
      acd21(97)=acd21(44)*acd21(43)
      acd21(99)=acd21(46)*acd21(45)
      acd21(100)=acd21(48)*acd21(47)
      acd21(101)=acd21(50)*acd21(49)
      acd21(102)=acd21(52)*acd21(51)
      acd21(103)=acd21(54)*acd21(53)
      acd21(91)=acd21(103)+acd21(102)+acd21(101)+acd21(100)+acd21(99)+acd21(97)&
      &+acd21(95)+acd21(93)+acd21(91)
      acd21(91)=acd21(86)*acd21(91)
      acd21(93)=ninjaP0+acd21(29)
      acd21(93)=acd21(82)*acd21(93)
      acd21(95)=-acd21(33)-acd21(25)
      acd21(81)=acd21(81)*acd21(95)
      acd21(95)=acd21(18)*acd21(9)
      acd21(97)=-acd21(22)*acd21(11)
      acd21(95)=acd21(97)+acd21(95)
      acd21(95)=acd21(98)*acd21(95)
      acd21(87)=acd21(95)-acd21(87)
      acd21(87)=acd21(27)*acd21(87)
      acd21(95)=acd21(18)*acd21(83)
      acd21(94)=acd21(95)+acd21(94)
      acd21(94)=acd21(26)*acd21(94)
      acd21(95)=-acd21(22)*acd21(83)
      acd21(95)=acd21(95)+acd21(96)
      acd21(95)=acd21(28)*acd21(95)
      acd21(90)=acd21(35)*acd21(90)
      acd21(96)=acd21(13)**2
      acd21(97)=-acd21(38)*acd21(13)
      acd21(96)=-2.0_ki*acd21(96)+acd21(97)
      acd21(96)=acd21(39)*acd21(96)
      acd21(80)=-acd21(30)*acd21(80)
      acd21(86)=-acd21(86)-acd21(9)
      acd21(86)=acd21(32)*acd21(11)*acd21(86)
      acd21(97)=acd21(31)*acd21(9)**2
      acd21(89)=acd21(37)*acd21(89)
      acd21(83)=acd21(55)*acd21(83)
      acd21(85)=acd21(61)*acd21(85)
      acd21(80)=acd21(85)+acd21(83)+acd21(89)+acd21(97)+2.0_ki*acd21(96)+acd21(&
      &86)+acd21(80)+acd21(90)+acd21(95)+acd21(94)+acd21(92)+acd21(91)+acd21(87&
      &)+acd21(81)+acd21(93)
      brack(ninjaidxt0x0mu0)=acd21(80)
      brack(ninjaidxt0x0mu2)=acd21(82)
      brack(ninjaidxt0x1mu0)=acd21(84)
      brack(ninjaidxt0x2mu0)=acd21(88)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d21h0_ninja_t2_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd21h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = - a0(0:3)
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
end module p0_gg_hhg_d21h0l132_qp
