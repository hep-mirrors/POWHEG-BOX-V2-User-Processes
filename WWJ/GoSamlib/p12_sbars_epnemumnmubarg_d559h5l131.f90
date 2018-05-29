module     p12_sbars_epnemumnmubarg_d559h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d559h5l131.f90
   ! generator: buildfortran_tn3.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd559h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(20) :: acd559
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd559(1)=dotproduct(k3,ninjaE3)
      acd559(2)=dotproduct(ninjaE3,spvak1k2)
      acd559(3)=dotproduct(ninjaE3,spvak7k2)
      acd559(4)=abb559(22)
      acd559(5)=dotproduct(k4,ninjaE3)
      acd559(6)=dotproduct(k5,ninjaE3)
      acd559(7)=dotproduct(k6,ninjaE3)
      acd559(8)=dotproduct(ninjaE3,spvak4k6)
      acd559(9)=abb559(12)
      acd559(10)=dotproduct(ninjaE3,spvak4k3)
      acd559(11)=abb559(13)
      acd559(12)=dotproduct(ninjaE3,spvak5k3)
      acd559(13)=abb559(18)
      acd559(14)=dotproduct(ninjaE3,spvak5k6)
      acd559(15)=abb559(24)
      acd559(16)=acd559(7)+acd559(6)-acd559(1)-acd559(5)
      acd559(16)=acd559(4)*acd559(16)
      acd559(17)=acd559(9)*acd559(8)
      acd559(18)=acd559(11)*acd559(10)
      acd559(19)=acd559(13)*acd559(12)
      acd559(20)=acd559(15)*acd559(14)
      acd559(16)=acd559(20)+acd559(19)+acd559(18)+acd559(17)+acd559(16)
      acd559(16)=acd559(16)*acd559(3)*acd559(2)
      brack(ninjaidxt2mu0)=acd559(16)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd559h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(106) :: acd559
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd559(1)=dotproduct(k3,ninjaE3)
      acd559(2)=dotproduct(ninjaE3,spvak1k2)
      acd559(3)=dotproduct(ninjaE4,spvak7k2)
      acd559(4)=abb559(22)
      acd559(5)=dotproduct(ninjaE3,spvak7k2)
      acd559(6)=dotproduct(ninjaE4,spvak1k2)
      acd559(7)=dotproduct(k3,ninjaE4)
      acd559(8)=dotproduct(k4,ninjaE3)
      acd559(9)=dotproduct(k4,ninjaE4)
      acd559(10)=dotproduct(k5,ninjaE3)
      acd559(11)=dotproduct(k5,ninjaE4)
      acd559(12)=dotproduct(k6,ninjaE3)
      acd559(13)=dotproduct(k6,ninjaE4)
      acd559(14)=dotproduct(ninjaE3,spvak4k6)
      acd559(15)=abb559(12)
      acd559(16)=dotproduct(ninjaE4,spvak4k6)
      acd559(17)=dotproduct(ninjaE4,spvak4k3)
      acd559(18)=abb559(13)
      acd559(19)=dotproduct(ninjaE4,spvak5k3)
      acd559(20)=abb559(18)
      acd559(21)=dotproduct(ninjaE4,spvak5k6)
      acd559(22)=abb559(24)
      acd559(23)=dotproduct(ninjaE3,spvak4k3)
      acd559(24)=dotproduct(ninjaE3,spvak5k3)
      acd559(25)=dotproduct(ninjaE3,spvak5k6)
      acd559(26)=abb559(17)
      acd559(27)=dotproduct(ninjaE3,spvak4k2)
      acd559(28)=abb559(26)
      acd559(29)=dotproduct(ninjaE3,spvak3k2)
      acd559(30)=abb559(23)
      acd559(31)=dotproduct(ninjaE3,spvak5k2)
      acd559(32)=abb559(44)
      acd559(33)=dotproduct(ninjaE3,spvak6k2)
      acd559(34)=abb559(64)
      acd559(35)=dotproduct(k1,ninjaE3)
      acd559(36)=abb559(49)
      acd559(37)=dotproduct(k2,ninjaE3)
      acd559(38)=abb559(33)
      acd559(39)=abb559(19)
      acd559(40)=abb559(68)
      acd559(41)=abb559(71)
      acd559(42)=dotproduct(k3,ninjaA)
      acd559(43)=dotproduct(ninjaA,spvak1k2)
      acd559(44)=dotproduct(ninjaA,spvak7k2)
      acd559(45)=dotproduct(k4,ninjaA)
      acd559(46)=dotproduct(k5,ninjaA)
      acd559(47)=dotproduct(k6,ninjaA)
      acd559(48)=dotproduct(k7,ninjaE3)
      acd559(49)=dotproduct(ninjaA,ninjaE3)
      acd559(50)=dotproduct(ninjaA,spvak4k6)
      acd559(51)=dotproduct(ninjaA,spvak4k3)
      acd559(52)=dotproduct(ninjaA,spvak5k3)
      acd559(53)=dotproduct(ninjaA,spvak5k6)
      acd559(54)=abb559(14)
      acd559(55)=abb559(54)
      acd559(56)=abb559(15)
      acd559(57)=abb559(25)
      acd559(58)=abb559(20)
      acd559(59)=dotproduct(ninjaE3,spvak1k3)
      acd559(60)=abb559(21)
      acd559(61)=dotproduct(ninjaE3,spvak1k6)
      acd559(62)=abb559(29)
      acd559(63)=dotproduct(ninjaE3,spvak1k4)
      acd559(64)=abb559(38)
      acd559(65)=dotproduct(ninjaE3,spvak1k5)
      acd559(66)=abb559(55)
      acd559(67)=abb559(84)
      acd559(68)=dotproduct(k1,ninjaA)
      acd559(69)=dotproduct(k2,ninjaA)
      acd559(70)=dotproduct(ninjaA,spvak4k2)
      acd559(71)=dotproduct(ninjaA,spvak3k2)
      acd559(72)=dotproduct(ninjaA,spvak5k2)
      acd559(73)=dotproduct(ninjaA,spvak6k2)
      acd559(74)=abb559(41)
      acd559(75)=dotproduct(k7,ninjaA)
      acd559(76)=dotproduct(ninjaA,ninjaA)
      acd559(77)=abb559(16)
      acd559(78)=dotproduct(ninjaA,spvak1k3)
      acd559(79)=dotproduct(ninjaA,spvak1k6)
      acd559(80)=dotproduct(ninjaA,spvak1k4)
      acd559(81)=dotproduct(ninjaA,spvak1k5)
      acd559(82)=abb559(47)
      acd559(83)=-acd559(7)-acd559(9)+acd559(11)+acd559(13)
      acd559(83)=acd559(83)*acd559(4)
      acd559(84)=acd559(22)*acd559(21)
      acd559(85)=acd559(20)*acd559(19)
      acd559(86)=acd559(18)*acd559(17)
      acd559(87)=acd559(15)*acd559(16)
      acd559(83)=acd559(83)+acd559(84)+acd559(85)+acd559(86)+acd559(87)
      acd559(83)=acd559(83)*acd559(2)
      acd559(84)=acd559(22)*acd559(25)
      acd559(85)=acd559(20)*acd559(24)
      acd559(86)=acd559(18)*acd559(23)
      acd559(87)=acd559(15)*acd559(14)
      acd559(84)=acd559(84)+acd559(85)+acd559(86)+acd559(87)
      acd559(85)=acd559(84)*acd559(6)
      acd559(83)=acd559(83)+acd559(85)+acd559(26)
      acd559(85)=-acd559(1)-acd559(8)+acd559(10)+acd559(12)
      acd559(86)=acd559(85)*acd559(4)
      acd559(87)=acd559(6)*acd559(86)
      acd559(87)=acd559(87)+acd559(83)
      acd559(87)=acd559(5)*acd559(87)
      acd559(88)=acd559(33)*acd559(34)
      acd559(89)=acd559(31)*acd559(32)
      acd559(90)=acd559(29)*acd559(30)
      acd559(91)=acd559(27)*acd559(28)
      acd559(88)=acd559(88)+acd559(89)+acd559(90)+acd559(91)
      acd559(89)=acd559(84)*acd559(3)
      acd559(90)=acd559(3)*acd559(86)
      acd559(90)=acd559(89)+acd559(90)
      acd559(90)=acd559(2)*acd559(90)
      acd559(87)=acd559(87)+acd559(90)+acd559(88)
      acd559(90)=acd559(84)*acd559(43)
      acd559(91)=acd559(48)+acd559(35)
      acd559(91)=acd559(91)*acd559(36)
      acd559(92)=acd559(66)*acd559(65)
      acd559(93)=acd559(64)*acd559(63)
      acd559(94)=acd559(62)*acd559(61)
      acd559(95)=acd559(60)*acd559(59)
      acd559(96)=acd559(33)*acd559(67)
      acd559(97)=acd559(31)*acd559(58)
      acd559(98)=acd559(29)*acd559(57)
      acd559(99)=acd559(27)*acd559(56)
      acd559(100)=2.0_ki*acd559(49)
      acd559(101)=acd559(100)*acd559(26)
      acd559(90)=acd559(95)+acd559(92)+acd559(96)+acd559(97)+acd559(93)+acd559(&
      &94)-acd559(91)+acd559(98)+acd559(99)+acd559(101)+acd559(90)
      acd559(91)=acd559(22)*acd559(53)
      acd559(92)=acd559(20)*acd559(52)
      acd559(93)=acd559(18)*acd559(51)
      acd559(94)=acd559(15)*acd559(50)
      acd559(91)=acd559(93)+acd559(92)+acd559(91)+acd559(94)+acd559(54)
      acd559(92)=-acd559(42)-acd559(45)+acd559(46)+acd559(47)
      acd559(93)=acd559(4)*acd559(92)
      acd559(93)=acd559(93)+acd559(91)
      acd559(93)=acd559(2)*acd559(93)
      acd559(94)=acd559(86)*acd559(43)
      acd559(95)=acd559(5)*acd559(55)
      acd559(93)=acd559(95)+acd559(93)+acd559(94)+acd559(90)
      acd559(93)=acd559(5)*acd559(93)
      acd559(94)=acd559(33)*acd559(41)
      acd559(95)=-acd559(31)*acd559(40)
      acd559(96)=-acd559(29)*acd559(39)
      acd559(97)=acd559(27)*acd559(38)
      acd559(94)=acd559(97)+acd559(96)+acd559(94)+acd559(95)
      acd559(95)=acd559(48)-acd559(37)
      acd559(94)=acd559(95)*acd559(94)
      acd559(95)=acd559(88)*acd559(100)
      acd559(84)=acd559(44)*acd559(84)
      acd559(86)=acd559(86)*acd559(44)
      acd559(84)=acd559(84)+acd559(86)
      acd559(84)=acd559(2)*acd559(84)
      acd559(84)=acd559(93)+acd559(84)+acd559(95)+acd559(94)
      acd559(83)=ninjaP*acd559(83)
      acd559(93)=acd559(43)*acd559(91)
      acd559(94)=acd559(43)*acd559(92)
      acd559(85)=acd559(85)*ninjaP
      acd559(95)=acd559(6)*acd559(85)
      acd559(94)=acd559(94)+acd559(95)
      acd559(94)=acd559(4)*acd559(94)
      acd559(95)=acd559(66)*acd559(81)
      acd559(96)=acd559(64)*acd559(80)
      acd559(97)=acd559(62)*acd559(79)
      acd559(98)=acd559(60)*acd559(78)
      acd559(99)=acd559(73)*acd559(67)
      acd559(101)=acd559(72)*acd559(58)
      acd559(102)=acd559(71)*acd559(57)
      acd559(103)=acd559(70)*acd559(56)
      acd559(104)=acd559(26)*acd559(76)
      acd559(105)=-acd559(68)-acd559(75)
      acd559(105)=acd559(36)*acd559(105)
      acd559(106)=acd559(44)*acd559(55)
      acd559(83)=acd559(94)+2.0_ki*acd559(106)+acd559(93)+acd559(105)+acd559(10&
      &4)+acd559(103)+acd559(102)+acd559(101)+acd559(99)+acd559(98)+acd559(97)+&
      &acd559(96)+acd559(82)+acd559(95)+acd559(83)
      acd559(83)=acd559(5)*acd559(83)
      acd559(90)=acd559(44)*acd559(90)
      acd559(89)=ninjaP*acd559(89)
      acd559(91)=acd559(44)*acd559(91)
      acd559(85)=acd559(3)*acd559(85)
      acd559(92)=acd559(44)*acd559(92)
      acd559(85)=acd559(85)+acd559(92)
      acd559(85)=acd559(4)*acd559(85)
      acd559(85)=acd559(85)+acd559(89)+acd559(91)
      acd559(85)=acd559(2)*acd559(85)
      acd559(89)=acd559(41)*acd559(73)
      acd559(91)=acd559(40)*acd559(72)
      acd559(92)=acd559(39)*acd559(71)
      acd559(93)=acd559(38)*acd559(70)
      acd559(89)=-acd559(89)+acd559(91)+acd559(92)-acd559(93)
      acd559(91)=acd559(74)+acd559(89)
      acd559(91)=acd559(37)*acd559(91)
      acd559(89)=-acd559(48)*acd559(89)
      acd559(92)=acd559(34)*acd559(73)
      acd559(93)=acd559(32)*acd559(72)
      acd559(94)=acd559(30)*acd559(71)
      acd559(95)=acd559(28)*acd559(70)
      acd559(92)=acd559(95)+acd559(94)+acd559(93)+acd559(77)+acd559(92)
      acd559(92)=acd559(92)*acd559(100)
      acd559(88)=ninjaP*acd559(88)
      acd559(93)=acd559(34)*acd559(76)
      acd559(94)=acd559(75)-acd559(69)
      acd559(95)=acd559(41)*acd559(94)
      acd559(93)=acd559(93)+acd559(95)
      acd559(93)=acd559(33)*acd559(93)
      acd559(95)=acd559(32)*acd559(76)
      acd559(96)=-acd559(40)*acd559(94)
      acd559(95)=acd559(95)+acd559(96)
      acd559(95)=acd559(31)*acd559(95)
      acd559(96)=acd559(30)*acd559(76)
      acd559(97)=-acd559(39)*acd559(94)
      acd559(96)=acd559(96)+acd559(97)
      acd559(96)=acd559(29)*acd559(96)
      acd559(97)=acd559(28)*acd559(76)
      acd559(94)=acd559(38)*acd559(94)
      acd559(94)=acd559(97)+acd559(94)
      acd559(94)=acd559(27)*acd559(94)
      acd559(86)=acd559(43)*acd559(86)
      acd559(83)=acd559(83)+acd559(85)+acd559(86)+acd559(90)+acd559(88)+acd559(&
      &92)+acd559(94)+acd559(96)+acd559(95)+acd559(93)+acd559(91)+acd559(89)
      brack(ninjaidxt1mu0)=acd559(84)
      brack(ninjaidxt0mu0)=acd559(83)
      brack(ninjaidxt0mu2)=acd559(87)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d559h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd559h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p12_sbars_epnemumnmubarg_d559h5l131
