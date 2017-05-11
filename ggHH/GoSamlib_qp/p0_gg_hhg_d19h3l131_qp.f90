module p0_gg_hhg_d19h3l131_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d19h3l131.f90
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
      use p0_gg_hhg_abbrevd19h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd19
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd19h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(105) :: acd19
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd19(1)=dotproduct(k2,ninjaE3)
      acd19(2)=abb19(20)
      acd19(3)=dotproduct(l3,ninjaE3)
      acd19(4)=abb19(35)
      acd19(5)=dotproduct(l4,ninjaE3)
      acd19(6)=dotproduct(k5,ninjaE3)
      acd19(7)=abb19(31)
      acd19(8)=dotproduct(ninjaA,ninjaE3)
      acd19(9)=dotproduct(ninjaE3,spvak2k1)
      acd19(10)=abb19(18)
      acd19(11)=dotproduct(ninjaE3,spvak2k5)
      acd19(12)=abb19(47)
      acd19(13)=dotproduct(ninjaE3,spvak5l4)
      acd19(14)=abb19(13)
      acd19(15)=dotproduct(ninjaE3,spval3k2)
      acd19(16)=abb19(34)
      acd19(17)=dotproduct(ninjaE3,spvak5k1)
      acd19(18)=abb19(25)
      acd19(19)=dotproduct(ninjaE3,spvak5l3)
      acd19(20)=abb19(54)
      acd19(21)=dotproduct(ninjaE3,spval4k2)
      acd19(22)=abb19(60)
      acd19(23)=abb19(36)
      acd19(24)=abb19(17)
      acd19(25)=dotproduct(ninjaE3,spvak2l3)
      acd19(26)=abb19(15)
      acd19(27)=abb19(12)
      acd19(28)=abb19(24)
      acd19(29)=dotproduct(ninjaE3,spval3k1)
      acd19(30)=abb19(45)
      acd19(31)=abb19(53)
      acd19(32)=dotproduct(ninjaE3,spval3k5)
      acd19(33)=abb19(65)
      acd19(34)=dotproduct(ninjaE3,spvak5k2)
      acd19(35)=abb19(10)
      acd19(36)=abb19(11)
      acd19(37)=abb19(26)
      acd19(38)=dotproduct(ninjaE3,spvak2l4)
      acd19(39)=abb19(28)
      acd19(40)=dotproduct(ninjaE3,spval3l4)
      acd19(41)=abb19(39)
      acd19(42)=dotproduct(ninjaE3,spval4l3)
      acd19(43)=abb19(52)
      acd19(44)=dotproduct(k2,ninjaA)
      acd19(45)=dotproduct(ninjaA,ninjaA)
      acd19(46)=dotproduct(ninjaA,spvak2k1)
      acd19(47)=dotproduct(ninjaA,spvak2l3)
      acd19(48)=dotproduct(ninjaA,spvak2k5)
      acd19(49)=dotproduct(ninjaA,spval3k2)
      acd19(50)=dotproduct(ninjaA,spval3k1)
      acd19(51)=dotproduct(ninjaA,spvak5l3)
      acd19(52)=dotproduct(ninjaA,spval3k5)
      acd19(53)=abb19(21)
      acd19(54)=dotproduct(l3,ninjaA)
      acd19(55)=dotproduct(l4,ninjaA)
      acd19(56)=abb19(44)
      acd19(57)=dotproduct(k5,ninjaA)
      acd19(58)=abb19(43)
      acd19(59)=dotproduct(ninjaA,spvak5l4)
      acd19(60)=dotproduct(ninjaA,spvak5k1)
      acd19(61)=dotproduct(ninjaA,spval4k2)
      acd19(62)=abb19(14)
      acd19(63)=dotproduct(ninjaA,spvak5k2)
      acd19(64)=dotproduct(ninjaA,spvak2l4)
      acd19(65)=dotproduct(ninjaA,spval3l4)
      acd19(66)=dotproduct(ninjaA,spval4l3)
      acd19(67)=abb19(16)
      acd19(68)=abb19(46)
      acd19(69)=abb19(27)
      acd19(70)=abb19(50)
      acd19(71)=abb19(40)
      acd19(72)=abb19(32)
      acd19(73)=abb19(41)
      acd19(74)=abb19(42)
      acd19(75)=abb19(33)
      acd19(76)=abb19(51)
      acd19(77)=dotproduct(ninjaE3,spval4k1)
      acd19(78)=abb19(57)
      acd19(79)=dotproduct(ninjaE3,spval4k5)
      acd19(80)=abb19(58)
      acd19(81)=abb19(59)
      acd19(82)=abb19(63)
      acd19(83)=acd19(5)-acd19(3)
      acd19(83)=acd19(83)*acd19(4)
      acd19(84)=acd19(21)*acd19(22)
      acd19(85)=acd19(17)*acd19(18)
      acd19(86)=acd19(13)*acd19(14)
      acd19(87)=acd19(6)*acd19(7)
      acd19(88)=acd19(19)*acd19(20)
      acd19(89)=acd19(15)*acd19(16)
      acd19(90)=acd19(11)*acd19(12)
      acd19(91)=acd19(9)*acd19(10)
      acd19(83)=acd19(83)+acd19(87)+acd19(86)+acd19(84)+acd19(85)+acd19(88)+acd&
      &19(89)+acd19(90)+acd19(91)
      acd19(84)=acd19(1)*acd19(2)
      acd19(84)=acd19(84)+acd19(83)
      acd19(85)=acd19(8)*acd19(4)
      acd19(85)=4.0_ki*acd19(85)+acd19(84)
      acd19(86)=2.0_ki*acd19(8)
      acd19(87)=acd19(4)*acd19(86)
      acd19(84)=acd19(87)+acd19(84)
      acd19(84)=acd19(84)*acd19(86)
      acd19(87)=acd19(32)*acd19(33)
      acd19(88)=acd19(29)*acd19(30)
      acd19(89)=acd19(25)*acd19(26)
      acd19(90)=acd19(19)*acd19(31)
      acd19(91)=acd19(15)*acd19(28)
      acd19(87)=acd19(89)+acd19(88)+acd19(87)+acd19(90)+acd19(91)
      acd19(88)=acd19(11)*acd19(27)
      acd19(89)=acd19(9)*acd19(24)
      acd19(90)=acd19(1)*acd19(23)
      acd19(88)=acd19(90)+acd19(89)+acd19(88)+acd19(87)
      acd19(88)=acd19(1)*acd19(88)
      acd19(89)=acd19(43)*acd19(42)
      acd19(90)=acd19(41)*acd19(40)
      acd19(91)=acd19(38)*acd19(39)
      acd19(92)=acd19(25)*acd19(36)
      acd19(89)=acd19(92)+acd19(91)+acd19(89)+acd19(90)
      acd19(90)=acd19(11)*acd19(37)
      acd19(91)=acd19(9)*acd19(35)
      acd19(90)=acd19(91)+acd19(90)+acd19(89)
      acd19(90)=acd19(34)*acd19(90)
      acd19(84)=acd19(84)+acd19(90)+acd19(88)
      acd19(88)=acd19(22)*acd19(61)
      acd19(90)=acd19(20)*acd19(51)
      acd19(91)=acd19(18)*acd19(60)
      acd19(92)=acd19(16)*acd19(49)
      acd19(93)=acd19(14)*acd19(59)
      acd19(94)=acd19(12)*acd19(48)
      acd19(95)=acd19(10)*acd19(46)
      acd19(96)=acd19(7)*acd19(57)
      acd19(97)=acd19(44)*acd19(2)
      acd19(98)=acd19(45)+ninjaP
      acd19(99)=acd19(55)-acd19(54)+2.0_ki*acd19(98)
      acd19(99)=acd19(4)*acd19(99)
      acd19(88)=acd19(99)+acd19(97)+acd19(96)+acd19(95)+acd19(94)+acd19(93)+acd&
      &19(92)+acd19(91)+acd19(90)+acd19(62)+acd19(88)
      acd19(86)=acd19(88)*acd19(86)
      acd19(83)=acd19(98)*acd19(83)
      acd19(88)=acd19(2)*acd19(98)
      acd19(90)=acd19(33)*acd19(52)
      acd19(91)=acd19(31)*acd19(51)
      acd19(92)=acd19(30)*acd19(50)
      acd19(93)=acd19(28)*acd19(49)
      acd19(94)=acd19(27)*acd19(48)
      acd19(95)=acd19(26)*acd19(47)
      acd19(96)=acd19(24)*acd19(46)
      acd19(97)=acd19(44)*acd19(23)
      acd19(88)=2.0_ki*acd19(97)+acd19(96)+acd19(95)+acd19(94)+acd19(93)+acd19(&
      &92)+acd19(91)+acd19(53)+acd19(90)+acd19(88)
      acd19(88)=acd19(1)*acd19(88)
      acd19(90)=acd19(43)*acd19(66)
      acd19(91)=acd19(41)*acd19(65)
      acd19(92)=acd19(39)*acd19(64)
      acd19(93)=acd19(37)*acd19(48)
      acd19(94)=acd19(36)*acd19(47)
      acd19(95)=acd19(35)*acd19(46)
      acd19(90)=acd19(95)+acd19(94)+acd19(93)+acd19(92)+acd19(91)+acd19(68)+acd&
      &19(90)
      acd19(90)=acd19(34)*acd19(90)
      acd19(87)=acd19(44)*acd19(87)
      acd19(89)=acd19(63)*acd19(89)
      acd19(91)=acd19(63)*acd19(37)
      acd19(92)=acd19(44)*acd19(27)
      acd19(91)=acd19(92)+acd19(70)+acd19(91)
      acd19(91)=acd19(11)*acd19(91)
      acd19(92)=acd19(63)*acd19(35)
      acd19(93)=acd19(44)*acd19(24)
      acd19(92)=acd19(93)+acd19(67)+acd19(92)
      acd19(92)=acd19(9)*acd19(92)
      acd19(93)=acd19(79)*acd19(80)
      acd19(94)=acd19(77)*acd19(78)
      acd19(95)=acd19(38)*acd19(74)
      acd19(96)=acd19(32)*acd19(82)
      acd19(97)=acd19(29)*acd19(75)
      acd19(98)=acd19(25)*acd19(69)
      acd19(99)=acd19(21)*acd19(81)
      acd19(100)=acd19(17)*acd19(73)
      acd19(101)=acd19(13)*acd19(71)
      acd19(102)=acd19(6)*acd19(58)
      acd19(103)=acd19(5)*acd19(56)
      acd19(104)=acd19(19)*acd19(76)
      acd19(105)=acd19(15)*acd19(72)
      acd19(83)=acd19(86)+acd19(88)+acd19(90)+acd19(92)+acd19(91)+acd19(87)+acd&
      &19(105)+acd19(104)+acd19(89)+acd19(103)+acd19(102)+acd19(101)+acd19(100)&
      &+acd19(99)+acd19(98)+acd19(97)+acd19(96)+acd19(95)+acd19(93)+acd19(94)+a&
      &cd19(83)
      brack(ninjaidxt1mu0)=acd19(84)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd19(83)
      brack(ninjaidxt0mu2)=acd19(85)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d19h3_ninja_t3_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd19h3_qp
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
end module p0_gg_hhg_d19h3l131_qp
