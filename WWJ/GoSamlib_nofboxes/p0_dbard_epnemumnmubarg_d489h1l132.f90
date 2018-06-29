module     p0_dbard_epnemumnmubarg_d489h1l132
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity1d489h1l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd489h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(45) :: acd489
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd489(1)=dotproduct(k1,ninjaE3)
      acd489(2)=dotproduct(ninjaE3,spvak2k7)
      acd489(3)=abb489(17)
      acd489(4)=dotproduct(k2,ninjaE3)
      acd489(5)=abb489(44)
      acd489(6)=dotproduct(k3,ninjaE3)
      acd489(7)=abb489(38)
      acd489(8)=dotproduct(k4,ninjaE3)
      acd489(9)=dotproduct(k5,ninjaE3)
      acd489(10)=abb489(43)
      acd489(11)=dotproduct(k6,ninjaE3)
      acd489(12)=dotproduct(k7,ninjaE3)
      acd489(13)=abb489(25)
      acd489(14)=dotproduct(ninjaE3,spvak1k7)
      acd489(15)=abb489(18)
      acd489(16)=dotproduct(ninjaE3,spvak5k2)
      acd489(17)=abb489(21)
      acd489(18)=dotproduct(ninjaE3,spvak4k3)
      acd489(19)=abb489(35)
      acd489(20)=dotproduct(ninjaE3,spvak4k2)
      acd489(21)=abb489(40)
      acd489(22)=dotproduct(ninjaE3,spvak3k2)
      acd489(23)=abb489(41)
      acd489(24)=dotproduct(ninjaE3,spvak6k2)
      acd489(25)=abb489(49)
      acd489(26)=dotproduct(ninjaE3,spvak5k3)
      acd489(27)=abb489(64)
      acd489(28)=dotproduct(ninjaE3,spvak5k6)
      acd489(29)=abb489(70)
      acd489(30)=dotproduct(ninjaE3,spvak4k6)
      acd489(31)=abb489(75)
      acd489(32)=acd489(11)+acd489(9)
      acd489(32)=acd489(32)*acd489(10)
      acd489(33)=-acd489(8)-acd489(6)
      acd489(33)=acd489(33)*acd489(7)
      acd489(34)=acd489(3)*acd489(1)
      acd489(35)=acd489(5)*acd489(4)
      acd489(36)=acd489(13)*acd489(12)
      acd489(37)=acd489(15)*acd489(14)
      acd489(38)=acd489(17)*acd489(16)
      acd489(39)=acd489(19)*acd489(18)
      acd489(40)=acd489(21)*acd489(20)
      acd489(41)=acd489(23)*acd489(22)
      acd489(42)=acd489(25)*acd489(24)
      acd489(43)=acd489(27)*acd489(26)
      acd489(44)=acd489(29)*acd489(28)
      acd489(45)=acd489(31)*acd489(30)
      acd489(32)=acd489(33)+acd489(32)+acd489(45)+acd489(44)+acd489(43)+acd489(&
      &42)+acd489(41)+acd489(40)+acd489(39)+acd489(38)+acd489(37)+acd489(36)+ac&
      &d489(34)+acd489(35)
      acd489(32)=acd489(2)*acd489(32)
      brack(ninjaidxt1x0mu0)=acd489(32)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd489h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(100) :: acd489
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd489(1)=dotproduct(k1,ninjaA1)
      acd489(2)=dotproduct(ninjaE3,spvak2k7)
      acd489(3)=abb489(17)
      acd489(4)=dotproduct(k1,ninjaE3)
      acd489(5)=dotproduct(ninjaA1,spvak2k7)
      acd489(6)=dotproduct(k2,ninjaA1)
      acd489(7)=abb489(44)
      acd489(8)=dotproduct(k2,ninjaE3)
      acd489(9)=dotproduct(k3,ninjaA1)
      acd489(10)=abb489(38)
      acd489(11)=dotproduct(k3,ninjaE3)
      acd489(12)=dotproduct(k4,ninjaA1)
      acd489(13)=dotproduct(k4,ninjaE3)
      acd489(14)=dotproduct(k5,ninjaA1)
      acd489(15)=abb489(43)
      acd489(16)=dotproduct(k5,ninjaE3)
      acd489(17)=dotproduct(k6,ninjaA1)
      acd489(18)=dotproduct(k6,ninjaE3)
      acd489(19)=dotproduct(k7,ninjaA1)
      acd489(20)=abb489(25)
      acd489(21)=dotproduct(k7,ninjaE3)
      acd489(22)=dotproduct(ninjaA1,spvak4k3)
      acd489(23)=abb489(35)
      acd489(24)=dotproduct(ninjaE3,spvak4k3)
      acd489(25)=dotproduct(ninjaE3,spvak1k7)
      acd489(26)=abb489(18)
      acd489(27)=dotproduct(ninjaE3,spvak5k2)
      acd489(28)=abb489(21)
      acd489(29)=dotproduct(ninjaE3,spvak3k2)
      acd489(30)=abb489(41)
      acd489(31)=dotproduct(ninjaE3,spvak6k2)
      acd489(32)=abb489(49)
      acd489(33)=dotproduct(ninjaE3,spvak4k2)
      acd489(34)=abb489(40)
      acd489(35)=dotproduct(ninjaE3,spvak5k6)
      acd489(36)=abb489(70)
      acd489(37)=dotproduct(ninjaE3,spvak4k6)
      acd489(38)=abb489(75)
      acd489(39)=dotproduct(ninjaE3,spvak5k3)
      acd489(40)=abb489(64)
      acd489(41)=dotproduct(ninjaA1,spvak1k7)
      acd489(42)=dotproduct(ninjaA1,spvak5k2)
      acd489(43)=dotproduct(ninjaA1,spvak3k2)
      acd489(44)=dotproduct(ninjaA1,spvak6k2)
      acd489(45)=dotproduct(ninjaA1,spvak4k2)
      acd489(46)=dotproduct(ninjaA1,spvak5k6)
      acd489(47)=dotproduct(ninjaA1,spvak4k6)
      acd489(48)=dotproduct(ninjaA1,spvak5k3)
      acd489(49)=dotproduct(k1,ninjaA0)
      acd489(50)=dotproduct(ninjaA0,spvak2k7)
      acd489(51)=abb489(23)
      acd489(52)=dotproduct(k2,ninjaA0)
      acd489(53)=abb489(122)
      acd489(54)=dotproduct(k3,ninjaA0)
      acd489(55)=abb489(100)
      acd489(56)=dotproduct(k4,ninjaA0)
      acd489(57)=dotproduct(k5,ninjaA0)
      acd489(58)=abb489(135)
      acd489(59)=dotproduct(k6,ninjaA0)
      acd489(60)=dotproduct(k7,ninjaA0)
      acd489(61)=abb489(27)
      acd489(62)=dotproduct(ninjaA0,ninjaE3)
      acd489(63)=abb489(24)
      acd489(64)=dotproduct(ninjaA0,spvak4k3)
      acd489(65)=dotproduct(ninjaA0,spvak1k7)
      acd489(66)=dotproduct(ninjaA0,spvak5k2)
      acd489(67)=dotproduct(ninjaA0,spvak3k2)
      acd489(68)=dotproduct(ninjaA0,spvak6k2)
      acd489(69)=dotproduct(ninjaA0,spvak4k2)
      acd489(70)=dotproduct(ninjaA0,spvak5k6)
      acd489(71)=dotproduct(ninjaA0,spvak4k6)
      acd489(72)=dotproduct(ninjaA0,spvak5k3)
      acd489(73)=abb489(14)
      acd489(74)=abb489(15)
      acd489(75)=abb489(16)
      acd489(76)=abb489(42)
      acd489(77)=abb489(26)
      acd489(78)=abb489(30)
      acd489(79)=abb489(39)
      acd489(80)=abb489(50)
      acd489(81)=abb489(55)
      acd489(82)=abb489(67)
      acd489(83)=acd489(11)+acd489(13)
      acd489(84)=acd489(83)*acd489(10)
      acd489(85)=acd489(16)+acd489(18)
      acd489(86)=acd489(85)*acd489(15)
      acd489(87)=acd489(40)*acd489(39)
      acd489(88)=acd489(38)*acd489(37)
      acd489(89)=acd489(36)*acd489(35)
      acd489(90)=acd489(34)*acd489(33)
      acd489(91)=acd489(32)*acd489(31)
      acd489(92)=acd489(30)*acd489(29)
      acd489(93)=acd489(28)*acd489(27)
      acd489(94)=acd489(26)*acd489(25)
      acd489(95)=acd489(23)*acd489(24)
      acd489(96)=acd489(20)*acd489(21)
      acd489(97)=acd489(7)*acd489(8)
      acd489(98)=acd489(3)*acd489(4)
      acd489(84)=acd489(87)+acd489(88)+acd489(89)+acd489(90)-acd489(84)+acd489(&
      &86)+acd489(95)+acd489(96)+acd489(97)+acd489(98)+acd489(91)+acd489(92)+ac&
      &d489(93)+acd489(94)
      acd489(86)=acd489(5)*acd489(84)
      acd489(87)=acd489(40)*acd489(48)
      acd489(88)=acd489(38)*acd489(47)
      acd489(89)=acd489(36)*acd489(46)
      acd489(90)=acd489(34)*acd489(45)
      acd489(91)=acd489(32)*acd489(44)
      acd489(92)=acd489(30)*acd489(43)
      acd489(93)=acd489(28)*acd489(42)
      acd489(94)=acd489(26)*acd489(41)
      acd489(95)=acd489(23)*acd489(22)
      acd489(96)=acd489(20)*acd489(19)
      acd489(97)=acd489(7)*acd489(6)
      acd489(98)=acd489(3)*acd489(1)
      acd489(99)=acd489(17)+acd489(14)
      acd489(99)=acd489(15)*acd489(99)
      acd489(100)=-acd489(12)-acd489(9)
      acd489(100)=acd489(10)*acd489(100)
      acd489(87)=acd489(100)+acd489(99)+acd489(98)+acd489(97)+acd489(96)+acd489&
      &(95)+acd489(94)+acd489(93)+acd489(92)+acd489(91)+acd489(90)+acd489(89)+a&
      &cd489(87)+acd489(88)
      acd489(87)=acd489(2)*acd489(87)
      acd489(86)=acd489(86)+acd489(87)
      acd489(84)=acd489(50)*acd489(84)
      acd489(87)=acd489(40)*acd489(72)
      acd489(88)=acd489(38)*acd489(71)
      acd489(89)=acd489(36)*acd489(70)
      acd489(90)=acd489(34)*acd489(69)
      acd489(91)=acd489(32)*acd489(68)
      acd489(92)=acd489(30)*acd489(67)
      acd489(93)=acd489(28)*acd489(66)
      acd489(94)=acd489(26)*acd489(65)
      acd489(95)=acd489(23)*acd489(64)
      acd489(96)=acd489(20)*acd489(60)
      acd489(97)=acd489(7)*acd489(52)
      acd489(98)=acd489(3)*acd489(49)
      acd489(99)=acd489(59)+acd489(57)
      acd489(99)=acd489(15)*acd489(99)
      acd489(100)=-acd489(56)-acd489(54)
      acd489(100)=acd489(10)*acd489(100)
      acd489(87)=acd489(100)+acd489(99)+acd489(98)+acd489(97)+acd489(96)+acd489&
      &(95)+acd489(94)+acd489(93)+acd489(92)+acd489(91)+acd489(90)+acd489(89)+a&
      &cd489(88)+acd489(74)+acd489(87)
      acd489(87)=acd489(2)*acd489(87)
      acd489(85)=acd489(58)*acd489(85)
      acd489(83)=-acd489(55)*acd489(83)
      acd489(88)=acd489(62)*acd489(63)
      acd489(89)=acd489(39)*acd489(82)
      acd489(90)=acd489(37)*acd489(81)
      acd489(91)=acd489(35)*acd489(80)
      acd489(92)=acd489(33)*acd489(79)
      acd489(93)=acd489(31)*acd489(78)
      acd489(94)=acd489(29)*acd489(77)
      acd489(95)=acd489(27)*acd489(76)
      acd489(96)=acd489(25)*acd489(75)
      acd489(97)=acd489(24)*acd489(73)
      acd489(98)=acd489(21)*acd489(61)
      acd489(99)=acd489(8)*acd489(53)
      acd489(100)=acd489(4)*acd489(51)
      acd489(83)=acd489(87)+acd489(84)+acd489(100)+acd489(99)+acd489(98)+acd489&
      &(97)+acd489(96)+acd489(95)+acd489(94)+acd489(93)+acd489(92)+acd489(91)+a&
      &cd489(90)+2.0_ki*acd489(88)+acd489(89)+acd489(83)+acd489(85)
      brack(ninjaidxt0x0mu0)=acd489(83)
      brack(ninjaidxt0x1mu0)=acd489(86)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d489h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd489h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbard_epnemumnmubarg_d489h1l132
