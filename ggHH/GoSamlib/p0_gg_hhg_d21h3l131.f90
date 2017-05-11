module     p0_gg_hhg_d21h3l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d21h3l131.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd21h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd21(1)=dotproduct(k2,ninjaE3)
      acd21(2)=dotproduct(ninjaE3,spvak2k1)
      acd21(3)=dotproduct(ninjaE3,spvak5k2)
      acd21(4)=abb21(19)
      acd21(5)=dotproduct(ninjaE3,spvak2k5)
      acd21(6)=abb21(30)
      acd21(7)=dotproduct(l3,ninjaE3)
      acd21(8)=abb21(17)
      acd21(9)=abb21(58)
      acd21(10)=dotproduct(ninjaA,ninjaE3)
      acd21(11)=abb21(10)
      acd21(12)=abb21(14)
      acd21(13)=acd21(6)*acd21(1)
      acd21(14)=acd21(9)*acd21(7)
      acd21(15)=2.0_ki*acd21(10)
      acd21(16)=acd21(12)*acd21(15)
      acd21(13)=acd21(16)+acd21(14)+acd21(13)
      acd21(13)=acd21(13)*acd21(5)
      acd21(14)=acd21(4)*acd21(1)
      acd21(16)=acd21(8)*acd21(7)
      acd21(15)=acd21(11)*acd21(15)
      acd21(14)=acd21(15)+acd21(16)+acd21(14)
      acd21(14)=acd21(14)*acd21(2)
      acd21(13)=acd21(14)+acd21(13)
      acd21(13)=acd21(3)*acd21(13)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd21(13)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd21h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(99) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd21(1)=dotproduct(k2,ninjaE3)
      acd21(2)=dotproduct(ninjaE3,spvak2k1)
      acd21(3)=dotproduct(ninjaE4,spvak5k2)
      acd21(4)=abb21(19)
      acd21(5)=dotproduct(ninjaE3,spvak5k2)
      acd21(6)=dotproduct(ninjaE4,spvak2k1)
      acd21(7)=dotproduct(ninjaE4,spvak2k5)
      acd21(8)=abb21(30)
      acd21(9)=dotproduct(ninjaE3,spvak2k5)
      acd21(10)=abb21(34)
      acd21(11)=dotproduct(k2,ninjaE4)
      acd21(12)=dotproduct(l3,ninjaE3)
      acd21(13)=abb21(17)
      acd21(14)=abb21(58)
      acd21(15)=abb21(37)
      acd21(16)=dotproduct(l3,ninjaE4)
      acd21(17)=dotproduct(l4,ninjaE3)
      acd21(18)=abb21(29)
      acd21(19)=dotproduct(k5,ninjaE3)
      acd21(20)=abb21(26)
      acd21(21)=dotproduct(ninjaA,ninjaE3)
      acd21(22)=abb21(10)
      acd21(23)=abb21(14)
      acd21(24)=dotproduct(ninjaA,ninjaE4)
      acd21(25)=dotproduct(ninjaA,spvak2k1)
      acd21(26)=dotproduct(ninjaA,spvak5k2)
      acd21(27)=dotproduct(ninjaA,spvak2k5)
      acd21(28)=abb21(43)
      acd21(29)=dotproduct(ninjaE3,spvak2l4)
      acd21(30)=abb21(28)
      acd21(31)=dotproduct(ninjaE3,spvak5k1)
      acd21(32)=abb21(54)
      acd21(33)=dotproduct(ninjaE3,spval4k5)
      acd21(34)=abb21(42)
      acd21(35)=dotproduct(ninjaE3,spval4k1)
      acd21(36)=abb21(45)
      acd21(37)=dotproduct(k2,ninjaA)
      acd21(38)=abb21(48)
      acd21(39)=abb21(50)
      acd21(40)=dotproduct(l3,ninjaA)
      acd21(41)=abb21(49)
      acd21(42)=abb21(41)
      acd21(43)=dotproduct(ninjaA,ninjaA)
      acd21(44)=abb21(12)
      acd21(45)=dotproduct(ninjaE3,spvak2l3)
      acd21(46)=abb21(11)
      acd21(47)=abb21(31)
      acd21(48)=abb21(20)
      acd21(49)=dotproduct(ninjaE3,spval3k5)
      acd21(50)=abb21(27)
      acd21(51)=abb21(57)
      acd21(52)=abb21(59)
      acd21(53)=dotproduct(ninjaE3,spval3k1)
      acd21(54)=abb21(56)
      acd21(55)=abb21(18)
      acd21(56)=abb21(32)
      acd21(57)=dotproduct(l4,ninjaA)
      acd21(58)=abb21(33)
      acd21(59)=dotproduct(k5,ninjaA)
      acd21(60)=abb21(35)
      acd21(61)=dotproduct(ninjaA,spvak2l4)
      acd21(62)=dotproduct(ninjaA,spvak5k1)
      acd21(63)=dotproduct(ninjaA,spval4k5)
      acd21(64)=dotproduct(ninjaA,spval4k1)
      acd21(65)=abb21(13)
      acd21(66)=dotproduct(ninjaA,spvak2l3)
      acd21(67)=dotproduct(ninjaA,spval3k5)
      acd21(68)=dotproduct(ninjaA,spval3k1)
      acd21(69)=abb21(23)
      acd21(70)=abb21(15)
      acd21(71)=abb21(24)
      acd21(72)=abb21(55)
      acd21(73)=abb21(53)
      acd21(74)=acd21(14)*acd21(16)
      acd21(75)=acd21(8)*acd21(11)
      acd21(76)=2.0_ki*acd21(24)
      acd21(77)=acd21(76)*acd21(23)
      acd21(74)=acd21(77)+acd21(74)+acd21(75)
      acd21(74)=acd21(74)*acd21(9)
      acd21(75)=acd21(13)*acd21(16)
      acd21(77)=acd21(4)*acd21(11)
      acd21(76)=acd21(76)*acd21(22)
      acd21(75)=acd21(75)+acd21(77)+acd21(76)
      acd21(75)=acd21(75)*acd21(2)
      acd21(76)=acd21(14)*acd21(7)
      acd21(77)=acd21(13)*acd21(6)
      acd21(76)=acd21(76)+acd21(77)
      acd21(76)=acd21(76)*acd21(12)
      acd21(77)=acd21(8)*acd21(7)
      acd21(78)=acd21(4)*acd21(6)
      acd21(77)=acd21(77)+acd21(78)
      acd21(77)=acd21(77)*acd21(1)
      acd21(78)=acd21(23)*acd21(27)
      acd21(79)=acd21(22)*acd21(25)
      acd21(78)=acd21(28)+acd21(78)+acd21(79)
      acd21(79)=acd21(23)*acd21(7)
      acd21(80)=acd21(22)*acd21(6)
      acd21(79)=acd21(79)+acd21(80)
      acd21(80)=2.0_ki*acd21(21)
      acd21(79)=acd21(79)*acd21(80)
      acd21(74)=acd21(79)+acd21(74)+acd21(75)+acd21(76)+acd21(77)+acd21(78)
      acd21(75)=acd21(5)*acd21(74)
      acd21(76)=acd21(31)*acd21(32)
      acd21(77)=acd21(19)*acd21(20)
      acd21(79)=acd21(35)*acd21(36)
      acd21(81)=acd21(33)*acd21(34)
      acd21(82)=acd21(29)*acd21(30)
      acd21(83)=acd21(18)*acd21(17)
      acd21(76)=-acd21(81)+acd21(76)+acd21(82)+acd21(83)+acd21(77)-acd21(79)
      acd21(77)=acd21(1)*acd21(10)
      acd21(79)=acd21(12)*acd21(15)
      acd21(77)=acd21(76)+acd21(77)+acd21(79)
      acd21(81)=acd21(9)*acd21(23)
      acd21(82)=acd21(2)*acd21(22)
      acd21(81)=acd21(81)+acd21(82)
      acd21(82)=acd21(81)*acd21(26)
      acd21(82)=acd21(82)+acd21(77)
      acd21(83)=acd21(1)*acd21(3)
      acd21(84)=acd21(83)*acd21(8)
      acd21(85)=acd21(12)*acd21(3)
      acd21(86)=acd21(85)*acd21(14)
      acd21(84)=acd21(84)+acd21(86)
      acd21(84)=acd21(84)*acd21(9)
      acd21(83)=acd21(83)*acd21(4)
      acd21(85)=acd21(85)*acd21(13)
      acd21(83)=acd21(83)+acd21(85)
      acd21(83)=acd21(83)*acd21(2)
      acd21(83)=acd21(84)+acd21(83)
      acd21(84)=acd21(81)*acd21(3)
      acd21(85)=2.0_ki*acd21(18)
      acd21(84)=acd21(84)+acd21(85)
      acd21(86)=acd21(84)*acd21(80)
      acd21(75)=acd21(75)+acd21(86)+acd21(82)+acd21(83)
      acd21(86)=acd21(14)*acd21(40)
      acd21(87)=acd21(23)*acd21(43)
      acd21(88)=acd21(8)*acd21(37)
      acd21(86)=acd21(47)+acd21(86)+acd21(87)+acd21(88)
      acd21(86)=acd21(86)*acd21(9)
      acd21(87)=acd21(22)*acd21(43)
      acd21(88)=acd21(13)*acd21(40)
      acd21(89)=acd21(4)*acd21(37)
      acd21(87)=acd21(87)+acd21(88)+acd21(89)+acd21(44)
      acd21(87)=acd21(87)*acd21(2)
      acd21(88)=acd21(8)*acd21(27)
      acd21(89)=acd21(4)*acd21(25)
      acd21(88)=acd21(39)+acd21(88)+acd21(89)
      acd21(89)=acd21(88)*acd21(1)
      acd21(90)=acd21(14)*acd21(27)
      acd21(91)=acd21(13)*acd21(25)
      acd21(90)=acd21(90)+acd21(91)+acd21(41)
      acd21(91)=acd21(90)*acd21(12)
      acd21(92)=acd21(81)*ninjaP
      acd21(93)=acd21(54)*acd21(53)
      acd21(94)=acd21(50)*acd21(49)
      acd21(95)=acd21(46)*acd21(45)
      acd21(96)=acd21(35)*acd21(52)
      acd21(97)=acd21(33)*acd21(51)
      acd21(98)=acd21(29)*acd21(48)
      acd21(99)=acd21(17)*acd21(42)
      acd21(86)=acd21(86)+acd21(96)+acd21(97)+acd21(98)+acd21(99)+acd21(93)+acd&
      &21(89)+acd21(91)+acd21(94)+acd21(95)+acd21(87)+acd21(92)
      acd21(87)=acd21(78)*acd21(80)
      acd21(87)=acd21(87)+acd21(86)
      acd21(87)=acd21(5)*acd21(87)
      acd21(89)=acd21(18)*acd21(80)
      acd21(82)=acd21(89)+acd21(82)
      acd21(82)=acd21(82)*acd21(80)
      acd21(89)=acd21(12)*acd21(14)
      acd21(91)=acd21(1)*acd21(8)
      acd21(89)=acd21(89)+acd21(91)
      acd21(89)=acd21(9)*acd21(89)
      acd21(91)=acd21(12)*acd21(13)
      acd21(92)=acd21(1)*acd21(4)
      acd21(91)=acd21(91)+acd21(92)
      acd21(91)=acd21(2)*acd21(91)
      acd21(89)=acd21(89)+acd21(91)
      acd21(89)=acd21(26)*acd21(89)
      acd21(91)=acd21(1)*acd21(38)
      acd21(79)=acd21(79)+acd21(91)
      acd21(79)=acd21(1)*acd21(79)
      acd21(79)=acd21(87)+acd21(82)+acd21(79)+acd21(89)
      acd21(81)=acd21(5)*acd21(81)
      acd21(74)=ninjaP*acd21(74)
      acd21(82)=acd21(40)*acd21(90)
      acd21(87)=acd21(37)*acd21(88)
      acd21(88)=acd21(43)*acd21(78)
      acd21(89)=acd21(54)*acd21(68)
      acd21(90)=acd21(52)*acd21(64)
      acd21(91)=acd21(51)*acd21(63)
      acd21(92)=acd21(50)*acd21(67)
      acd21(93)=acd21(48)*acd21(61)
      acd21(94)=acd21(46)*acd21(66)
      acd21(95)=acd21(42)*acd21(57)
      acd21(96)=acd21(27)*acd21(47)
      acd21(97)=acd21(25)*acd21(44)
      acd21(74)=acd21(97)+acd21(96)+acd21(95)+acd21(94)+acd21(93)+acd21(92)+acd&
      &21(91)+acd21(90)+acd21(69)+acd21(89)+acd21(88)+acd21(87)+acd21(82)+acd21&
      &(74)
      acd21(74)=acd21(5)*acd21(74)
      acd21(82)=acd21(26)*acd21(86)
      acd21(84)=ninjaP*acd21(84)
      acd21(78)=acd21(26)*acd21(78)
      acd21(86)=acd21(40)*acd21(15)
      acd21(87)=-acd21(36)*acd21(64)
      acd21(88)=-acd21(34)*acd21(63)
      acd21(89)=acd21(32)*acd21(62)
      acd21(90)=acd21(30)*acd21(61)
      acd21(91)=acd21(20)*acd21(59)
      acd21(92)=acd21(18)*acd21(57)
      acd21(93)=acd21(37)*acd21(10)
      acd21(85)=acd21(43)*acd21(85)
      acd21(78)=acd21(78)+acd21(84)+acd21(85)+acd21(93)+acd21(92)+acd21(86)+acd&
      &21(91)+acd21(90)+acd21(89)+acd21(88)+acd21(65)+acd21(87)
      acd21(78)=acd21(78)*acd21(80)
      acd21(76)=acd21(43)*acd21(76)
      acd21(77)=acd21(77)+acd21(83)
      acd21(77)=ninjaP*acd21(77)
      acd21(80)=acd21(37)*acd21(38)
      acd21(83)=acd21(43)*acd21(10)
      acd21(80)=acd21(83)+2.0_ki*acd21(80)+acd21(55)+acd21(86)
      acd21(80)=acd21(1)*acd21(80)
      acd21(83)=acd21(31)*acd21(71)
      acd21(84)=acd21(19)*acd21(60)
      acd21(85)=acd21(35)*acd21(73)
      acd21(86)=acd21(33)*acd21(72)
      acd21(87)=acd21(29)*acd21(70)
      acd21(88)=acd21(17)*acd21(58)
      acd21(89)=acd21(43)+acd21(37)
      acd21(89)=acd21(15)*acd21(89)
      acd21(89)=acd21(56)+acd21(89)
      acd21(89)=acd21(12)*acd21(89)
      acd21(74)=acd21(74)+acd21(78)+acd21(82)+acd21(77)+acd21(80)+acd21(89)+acd&
      &21(76)+acd21(88)+acd21(87)+acd21(86)+acd21(85)+acd21(83)+acd21(84)
      brack(ninjaidxt1mu0)=acd21(79)
      brack(ninjaidxt1mu2)=acd21(81)
      brack(ninjaidxt0mu0)=acd21(74)
      brack(ninjaidxt0mu2)=acd21(75)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d21h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd21h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d21h3l131
