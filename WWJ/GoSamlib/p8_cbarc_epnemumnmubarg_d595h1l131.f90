module     p8_cbarc_epnemumnmubarg_d595h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity1d595h1l131.f90
   ! generator: buildfortran_tn3.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(19) :: acd595
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd595(1)=dotproduct(k2,ninjaE3)
      acd595(2)=dotproduct(ninjaE3,spvak2k7)
      acd595(3)=dotproduct(ninjaE3,spvak5k6)
      acd595(4)=abb595(29)
      acd595(5)=dotproduct(k3,ninjaE3)
      acd595(6)=dotproduct(k4,ninjaE3)
      acd595(7)=dotproduct(ninjaE3,spvak4k2)
      acd595(8)=abb595(12)
      acd595(9)=dotproduct(ninjaE3,spvak1k2)
      acd595(10)=abb595(23)
      acd595(11)=dotproduct(ninjaE3,spvak4k3)
      acd595(12)=abb595(33)
      acd595(13)=dotproduct(ninjaE3,spvak1k3)
      acd595(14)=abb595(37)
      acd595(15)=acd595(6)-acd595(1)+acd595(5)
      acd595(15)=acd595(4)*acd595(15)
      acd595(16)=acd595(8)*acd595(7)
      acd595(17)=acd595(10)*acd595(9)
      acd595(18)=acd595(12)*acd595(11)
      acd595(19)=acd595(14)*acd595(13)
      acd595(15)=acd595(19)+acd595(18)+acd595(17)+acd595(16)+acd595(15)
      acd595(15)=acd595(15)*acd595(3)*acd595(2)
      brack(ninjaidxt2mu0)=acd595(15)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(99) :: acd595
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd595(1)=dotproduct(k2,ninjaE3)
      acd595(2)=dotproduct(ninjaE3,spvak5k6)
      acd595(3)=dotproduct(ninjaE4,spvak2k7)
      acd595(4)=abb595(29)
      acd595(5)=dotproduct(ninjaE3,spvak2k7)
      acd595(6)=dotproduct(ninjaE4,spvak5k6)
      acd595(7)=abb595(20)
      acd595(8)=dotproduct(k2,ninjaE4)
      acd595(9)=dotproduct(k3,ninjaE3)
      acd595(10)=dotproduct(k3,ninjaE4)
      acd595(11)=dotproduct(k4,ninjaE3)
      acd595(12)=dotproduct(k4,ninjaE4)
      acd595(13)=dotproduct(ninjaE3,spvak4k2)
      acd595(14)=abb595(12)
      acd595(15)=dotproduct(ninjaE4,spvak4k2)
      acd595(16)=dotproduct(ninjaE4,spvak4k3)
      acd595(17)=abb595(33)
      acd595(18)=dotproduct(ninjaE4,spvak1k2)
      acd595(19)=abb595(23)
      acd595(20)=dotproduct(ninjaE4,spvak1k3)
      acd595(21)=abb595(37)
      acd595(22)=dotproduct(ninjaE3,spvak4k3)
      acd595(23)=dotproduct(ninjaE3,spvak1k2)
      acd595(24)=dotproduct(ninjaE3,spvak1k3)
      acd595(25)=abb595(28)
      acd595(26)=abb595(10)
      acd595(27)=abb595(14)
      acd595(28)=abb595(21)
      acd595(29)=dotproduct(k1,ninjaE3)
      acd595(30)=abb595(41)
      acd595(31)=abb595(22)
      acd595(32)=abb595(13)
      acd595(33)=abb595(43)
      acd595(34)=dotproduct(k2,ninjaA)
      acd595(35)=dotproduct(k5,ninjaE3)
      acd595(36)=abb595(39)
      acd595(37)=dotproduct(k6,ninjaE3)
      acd595(38)=dotproduct(ninjaA,ninjaE3)
      acd595(39)=dotproduct(ninjaA,spvak5k6)
      acd595(40)=dotproduct(ninjaA,spvak2k7)
      acd595(41)=abb595(30)
      acd595(42)=abb595(32)
      acd595(43)=dotproduct(k3,ninjaA)
      acd595(44)=dotproduct(k4,ninjaA)
      acd595(45)=abb595(11)
      acd595(46)=abb595(19)
      acd595(47)=abb595(47)
      acd595(48)=dotproduct(k7,ninjaE3)
      acd595(49)=abb595(6)
      acd595(50)=dotproduct(ninjaA,spvak4k2)
      acd595(51)=dotproduct(ninjaA,spvak4k3)
      acd595(52)=dotproduct(ninjaA,spvak1k2)
      acd595(53)=dotproduct(ninjaA,spvak1k3)
      acd595(54)=abb595(25)
      acd595(55)=abb595(16)
      acd595(56)=abb595(42)
      acd595(57)=abb595(31)
      acd595(58)=dotproduct(ninjaE3,spvak1k6)
      acd595(59)=abb595(18)
      acd595(60)=abb595(36)
      acd595(61)=dotproduct(k1,ninjaA)
      acd595(62)=abb595(24)
      acd595(63)=dotproduct(k5,ninjaA)
      acd595(64)=dotproduct(k6,ninjaA)
      acd595(65)=dotproduct(ninjaA,ninjaA)
      acd595(66)=abb595(34)
      acd595(67)=abb595(26)
      acd595(68)=dotproduct(k7,ninjaA)
      acd595(69)=abb595(17)
      acd595(70)=abb595(9)
      acd595(71)=dotproduct(ninjaA,spvak1k6)
      acd595(72)=abb595(27)
      acd595(73)=abb595(8)
      acd595(74)=abb595(15)
      acd595(75)=abb595(35)
      acd595(76)=-acd595(12)+acd595(8)-acd595(10)
      acd595(76)=acd595(76)*acd595(4)
      acd595(77)=acd595(21)*acd595(20)
      acd595(78)=acd595(19)*acd595(18)
      acd595(79)=acd595(17)*acd595(16)
      acd595(80)=acd595(14)*acd595(15)
      acd595(76)=acd595(76)-acd595(80)-acd595(79)-acd595(77)-acd595(78)
      acd595(76)=acd595(76)*acd595(2)
      acd595(77)=acd595(21)*acd595(24)
      acd595(78)=acd595(19)*acd595(23)
      acd595(79)=acd595(22)*acd595(17)
      acd595(80)=acd595(13)*acd595(14)
      acd595(77)=acd595(80)+acd595(79)+acd595(77)+acd595(78)
      acd595(78)=acd595(77)*acd595(6)
      acd595(76)=acd595(76)-acd595(78)-acd595(27)
      acd595(78)=-acd595(11)+acd595(1)-acd595(9)
      acd595(79)=acd595(78)*acd595(6)
      acd595(80)=-acd595(4)*acd595(79)
      acd595(80)=acd595(80)-acd595(76)
      acd595(80)=acd595(5)*acd595(80)
      acd595(81)=acd595(77)*acd595(3)
      acd595(81)=acd595(81)+acd595(25)
      acd595(82)=acd595(78)*acd595(3)
      acd595(83)=-acd595(4)*acd595(82)
      acd595(83)=acd595(83)+acd595(81)
      acd595(83)=acd595(2)*acd595(83)
      acd595(84)=acd595(22)*acd595(28)
      acd595(85)=acd595(13)*acd595(26)
      acd595(86)=acd595(78)*acd595(7)
      acd595(84)=-acd595(86)+acd595(84)+acd595(85)
      acd595(80)=acd595(80)+acd595(83)+acd595(84)
      acd595(83)=acd595(78)*acd595(4)
      acd595(77)=acd595(83)-acd595(77)
      acd595(83)=-acd595(39)*acd595(77)
      acd595(85)=acd595(59)*acd595(58)
      acd595(86)=acd595(29)*acd595(32)
      acd595(87)=acd595(22)*acd595(60)
      acd595(88)=acd595(13)*acd595(57)
      acd595(89)=2.0_ki*acd595(38)
      acd595(90)=acd595(89)*acd595(27)
      acd595(91)=acd595(78)*acd595(42)
      acd595(92)=acd595(35)+acd595(37)
      acd595(93)=acd595(92)*acd595(46)
      acd595(83)=acd595(88)+acd595(90)+acd595(91)-acd595(93)+acd595(87)+acd595(&
      &85)+acd595(86)+acd595(83)
      acd595(85)=acd595(21)*acd595(53)
      acd595(86)=acd595(19)*acd595(52)
      acd595(87)=acd595(17)*acd595(51)
      acd595(88)=acd595(14)*acd595(50)
      acd595(85)=acd595(55)+acd595(88)+acd595(87)+acd595(85)+acd595(86)
      acd595(86)=-acd595(34)+acd595(43)+acd595(44)
      acd595(87)=acd595(4)*acd595(86)
      acd595(87)=acd595(87)+acd595(85)
      acd595(87)=acd595(2)*acd595(87)
      acd595(87)=acd595(87)+acd595(83)
      acd595(87)=acd595(5)*acd595(87)
      acd595(88)=acd595(48)*acd595(49)
      acd595(90)=acd595(22)*acd595(56)
      acd595(91)=acd595(13)*acd595(54)
      acd595(93)=acd595(89)*acd595(25)
      acd595(94)=acd595(78)*acd595(41)
      acd595(88)=acd595(94)+acd595(88)+acd595(90)+acd595(91)+acd595(93)
      acd595(77)=-acd595(40)*acd595(77)
      acd595(77)=acd595(77)+acd595(88)
      acd595(77)=acd595(2)*acd595(77)
      acd595(90)=-acd595(47)*acd595(92)
      acd595(91)=acd595(29)*acd595(33)
      acd595(93)=acd595(28)*acd595(89)
      acd595(90)=acd595(93)+acd595(91)+acd595(90)
      acd595(90)=acd595(22)*acd595(90)
      acd595(91)=acd595(45)*acd595(92)
      acd595(93)=acd595(29)*acd595(31)
      acd595(94)=acd595(26)*acd595(89)
      acd595(91)=acd595(94)+acd595(93)+acd595(91)
      acd595(91)=acd595(13)*acd595(91)
      acd595(93)=acd595(92)*acd595(36)
      acd595(94)=acd595(89)*acd595(7)
      acd595(93)=acd595(93)+acd595(94)
      acd595(94)=acd595(29)*acd595(30)
      acd595(94)=-acd595(94)+acd595(93)
      acd595(94)=-acd595(94)*acd595(78)
      acd595(77)=acd595(87)+acd595(77)+acd595(90)+acd595(91)+acd595(94)
      acd595(76)=-ninjaP*acd595(76)
      acd595(87)=acd595(39)*acd595(85)
      acd595(79)=-ninjaP*acd595(79)
      acd595(90)=acd595(39)*acd595(86)
      acd595(79)=acd595(79)+acd595(90)
      acd595(79)=acd595(4)*acd595(79)
      acd595(90)=-acd595(42)*acd595(86)
      acd595(91)=acd595(59)*acd595(71)
      acd595(94)=acd595(61)*acd595(32)
      acd595(95)=acd595(63)+acd595(64)
      acd595(96)=-acd595(46)*acd595(95)
      acd595(97)=acd595(65)*acd595(27)
      acd595(98)=acd595(51)*acd595(60)
      acd595(99)=acd595(50)*acd595(57)
      acd595(76)=acd595(79)+acd595(87)+acd595(99)+acd595(98)+acd595(97)+acd595(&
      &96)+acd595(94)+acd595(74)+acd595(91)+acd595(90)+acd595(76)
      acd595(76)=acd595(5)*acd595(76)
      acd595(79)=acd595(40)*acd595(83)
      acd595(81)=ninjaP*acd595(81)
      acd595(83)=acd595(40)*acd595(85)
      acd595(82)=-ninjaP*acd595(82)
      acd595(85)=acd595(40)*acd595(86)
      acd595(82)=acd595(82)+acd595(85)
      acd595(82)=acd595(4)*acd595(82)
      acd595(85)=-acd595(41)*acd595(86)
      acd595(87)=acd595(49)*acd595(68)
      acd595(90)=acd595(65)*acd595(25)
      acd595(91)=acd595(51)*acd595(56)
      acd595(94)=acd595(50)*acd595(54)
      acd595(81)=acd595(82)+acd595(83)+acd595(81)+acd595(94)+acd595(91)+acd595(&
      &90)+acd595(72)+acd595(87)+acd595(85)
      acd595(81)=acd595(2)*acd595(81)
      acd595(82)=acd595(39)*acd595(88)
      acd595(83)=acd595(30)*acd595(61)
      acd595(85)=acd595(7)*acd595(65)
      acd595(87)=acd595(95)*acd595(36)
      acd595(83)=-acd595(66)-acd595(87)+acd595(83)-acd595(85)
      acd595(78)=acd595(83)*acd595(78)
      acd595(83)=acd595(51)*acd595(33)
      acd595(85)=acd595(50)*acd595(31)
      acd595(87)=-acd595(30)*acd595(86)
      acd595(83)=acd595(87)+acd595(85)+acd595(62)+acd595(83)
      acd595(83)=acd595(29)*acd595(83)
      acd595(85)=acd595(61)*acd595(33)
      acd595(87)=-acd595(47)*acd595(95)
      acd595(88)=acd595(65)*acd595(28)
      acd595(85)=acd595(88)+acd595(87)+acd595(75)+acd595(85)
      acd595(85)=acd595(22)*acd595(85)
      acd595(87)=acd595(61)*acd595(31)
      acd595(88)=acd595(45)*acd595(95)
      acd595(90)=acd595(65)*acd595(26)
      acd595(87)=acd595(90)+acd595(88)+acd595(73)+acd595(87)
      acd595(87)=acd595(13)*acd595(87)
      acd595(84)=ninjaP*acd595(84)
      acd595(86)=acd595(86)*acd595(93)
      acd595(88)=acd595(51)*acd595(47)
      acd595(90)=acd595(50)*acd595(45)
      acd595(88)=-acd595(88)+acd595(90)+acd595(67)
      acd595(88)=acd595(88)*acd595(92)
      acd595(90)=acd595(51)*acd595(28)
      acd595(91)=acd595(50)*acd595(26)
      acd595(90)=acd595(91)+acd595(70)+acd595(90)
      acd595(89)=acd595(90)*acd595(89)
      acd595(90)=acd595(48)*acd595(69)
      acd595(76)=acd595(76)+acd595(81)+acd595(82)+acd595(84)+acd595(87)+acd595(&
      &85)+acd595(89)+acd595(83)+acd595(90)+acd595(79)+acd595(78)+acd595(88)+ac&
      &d595(86)
      brack(ninjaidxt1mu0)=acd595(77)
      brack(ninjaidxt0mu0)=acd595(76)
      brack(ninjaidxt0mu2)=acd595(80)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d595h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd595h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7
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
end module     p8_cbarc_epnemumnmubarg_d595h1l131
