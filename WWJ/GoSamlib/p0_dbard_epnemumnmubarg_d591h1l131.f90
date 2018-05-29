module     p0_dbard_epnemumnmubarg_d591h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d591h1l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd591h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(19) :: acd591
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd591(1)=dotproduct(k2,ninjaE3)
      acd591(2)=dotproduct(ninjaE3,spvak2k7)
      acd591(3)=dotproduct(ninjaE3,spvak4k3)
      acd591(4)=abb591(9)
      acd591(5)=dotproduct(k5,ninjaE3)
      acd591(6)=dotproduct(k6,ninjaE3)
      acd591(7)=dotproduct(ninjaE3,spvak5k2)
      acd591(8)=abb591(8)
      acd591(9)=dotproduct(ninjaE3,spvak1k2)
      acd591(10)=abb591(18)
      acd591(11)=dotproduct(ninjaE3,spvak5k6)
      acd591(12)=abb591(28)
      acd591(13)=dotproduct(ninjaE3,spvak1k6)
      acd591(14)=abb591(35)
      acd591(15)=-acd591(6)+acd591(1)-acd591(5)
      acd591(15)=acd591(4)*acd591(15)
      acd591(16)=acd591(8)*acd591(7)
      acd591(17)=acd591(10)*acd591(9)
      acd591(18)=acd591(12)*acd591(11)
      acd591(19)=acd591(14)*acd591(13)
      acd591(15)=acd591(19)+acd591(18)+acd591(17)+acd591(16)+acd591(15)
      acd591(15)=acd591(15)*acd591(3)*acd591(2)
      brack(ninjaidxt2mu0)=acd591(15)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd591h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(96) :: acd591
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd591(1)=dotproduct(k2,ninjaE3)
      acd591(2)=dotproduct(ninjaE3,spvak2k7)
      acd591(3)=dotproduct(ninjaE4,spvak4k3)
      acd591(4)=abb591(9)
      acd591(5)=dotproduct(ninjaE3,spvak4k3)
      acd591(6)=dotproduct(ninjaE4,spvak2k7)
      acd591(7)=abb591(11)
      acd591(8)=dotproduct(k2,ninjaE4)
      acd591(9)=dotproduct(k5,ninjaE3)
      acd591(10)=dotproduct(k5,ninjaE4)
      acd591(11)=dotproduct(k6,ninjaE3)
      acd591(12)=dotproduct(k6,ninjaE4)
      acd591(13)=dotproduct(ninjaE3,spvak1k3)
      acd591(14)=abb591(41)
      acd591(15)=dotproduct(ninjaE4,spvak5k2)
      acd591(16)=abb591(8)
      acd591(17)=dotproduct(ninjaE4,spvak5k6)
      acd591(18)=abb591(28)
      acd591(19)=dotproduct(ninjaE4,spvak1k2)
      acd591(20)=abb591(18)
      acd591(21)=dotproduct(ninjaE4,spvak1k6)
      acd591(22)=abb591(35)
      acd591(23)=dotproduct(ninjaE3,spvak5k2)
      acd591(24)=dotproduct(ninjaE3,spvak5k6)
      acd591(25)=dotproduct(ninjaE3,spvak1k2)
      acd591(26)=dotproduct(ninjaE3,spvak1k6)
      acd591(27)=abb591(42)
      acd591(28)=abb591(20)
      acd591(29)=abb591(38)
      acd591(30)=dotproduct(k2,ninjaA)
      acd591(31)=dotproduct(k3,ninjaE3)
      acd591(32)=abb591(31)
      acd591(33)=dotproduct(k4,ninjaE3)
      acd591(34)=dotproduct(ninjaA,ninjaE3)
      acd591(35)=dotproduct(ninjaA,spvak2k7)
      acd591(36)=dotproduct(ninjaA,spvak4k3)
      acd591(37)=abb591(45)
      acd591(38)=abb591(10)
      acd591(39)=abb591(43)
      acd591(40)=abb591(26)
      acd591(41)=abb591(40)
      acd591(42)=dotproduct(k5,ninjaA)
      acd591(43)=dotproduct(k6,ninjaA)
      acd591(44)=dotproduct(k7,ninjaE3)
      acd591(45)=dotproduct(ninjaA,spvak5k2)
      acd591(46)=dotproduct(ninjaA,spvak5k6)
      acd591(47)=dotproduct(ninjaA,spvak1k2)
      acd591(48)=dotproduct(ninjaA,spvak1k6)
      acd591(49)=abb591(12)
      acd591(50)=abb591(25)
      acd591(51)=abb591(23)
      acd591(52)=abb591(22)
      acd591(53)=abb591(24)
      acd591(54)=dotproduct(ninjaE3,spvak1k7)
      acd591(55)=abb591(34)
      acd591(56)=dotproduct(ninjaE3,spvak1k4)
      acd591(57)=dotproduct(k3,ninjaA)
      acd591(58)=dotproduct(k4,ninjaA)
      acd591(59)=dotproduct(ninjaA,ninjaA)
      acd591(60)=abb591(21)
      acd591(61)=dotproduct(ninjaA,spvak1k3)
      acd591(62)=abb591(15)
      acd591(63)=dotproduct(k7,ninjaA)
      acd591(64)=abb591(16)
      acd591(65)=abb591(14)
      acd591(66)=dotproduct(ninjaA,spvak1k7)
      acd591(67)=dotproduct(ninjaA,spvak1k4)
      acd591(68)=abb591(7)
      acd591(69)=abb591(19)
      acd591(70)=abb591(27)
      acd591(71)=abb591(13)
      acd591(72)=abb591(17)
      acd591(73)=-acd591(12)+acd591(8)-acd591(10)
      acd591(73)=acd591(73)*acd591(4)
      acd591(74)=acd591(22)*acd591(21)
      acd591(75)=acd591(20)*acd591(19)
      acd591(76)=acd591(18)*acd591(17)
      acd591(77)=acd591(16)*acd591(15)
      acd591(73)=acd591(73)+acd591(74)+acd591(75)+acd591(76)+acd591(77)
      acd591(73)=acd591(73)*acd591(2)
      acd591(74)=acd591(22)*acd591(26)
      acd591(75)=acd591(20)*acd591(25)
      acd591(76)=acd591(24)*acd591(18)
      acd591(77)=acd591(23)*acd591(16)
      acd591(74)=acd591(77)+acd591(76)+acd591(74)+acd591(75)
      acd591(75)=acd591(74)*acd591(6)
      acd591(73)=acd591(73)+acd591(75)+acd591(27)
      acd591(75)=-acd591(11)+acd591(1)-acd591(9)
      acd591(76)=acd591(75)*acd591(6)
      acd591(77)=acd591(4)*acd591(76)
      acd591(77)=acd591(77)+acd591(73)
      acd591(77)=acd591(5)*acd591(77)
      acd591(78)=acd591(24)*acd591(29)
      acd591(79)=acd591(23)*acd591(28)
      acd591(80)=acd591(75)*acd591(7)
      acd591(81)=acd591(13)*acd591(14)
      acd591(78)=-acd591(78)-acd591(79)+acd591(80)+acd591(81)
      acd591(79)=acd591(74)*acd591(3)
      acd591(80)=acd591(75)*acd591(3)
      acd591(82)=acd591(4)*acd591(80)
      acd591(82)=acd591(82)+acd591(79)
      acd591(82)=acd591(2)*acd591(82)
      acd591(77)=acd591(77)+acd591(82)-acd591(78)
      acd591(82)=acd591(75)*acd591(4)
      acd591(74)=acd591(82)+acd591(74)
      acd591(82)=acd591(35)*acd591(74)
      acd591(83)=acd591(31)+acd591(33)
      acd591(84)=acd591(83)+acd591(44)
      acd591(84)=acd591(84)*acd591(39)
      acd591(85)=acd591(55)*acd591(54)
      acd591(86)=acd591(14)*acd591(56)
      acd591(87)=acd591(13)*acd591(50)
      acd591(88)=acd591(24)*acd591(53)
      acd591(89)=acd591(23)*acd591(52)
      acd591(90)=2.0_ki*acd591(34)
      acd591(91)=acd591(90)*acd591(27)
      acd591(92)=acd591(75)*acd591(37)
      acd591(82)=acd591(89)+acd591(91)-acd591(92)+acd591(85)+acd591(87)+acd591(&
      &88)+acd591(84)-acd591(86)+acd591(82)
      acd591(84)=acd591(22)*acd591(48)
      acd591(85)=acd591(20)*acd591(47)
      acd591(86)=acd591(18)*acd591(46)
      acd591(87)=acd591(16)*acd591(45)
      acd591(84)=acd591(51)+acd591(87)+acd591(86)+acd591(84)+acd591(85)
      acd591(85)=-acd591(43)+acd591(30)-acd591(42)
      acd591(86)=acd591(4)*acd591(85)
      acd591(86)=acd591(86)+acd591(84)
      acd591(86)=acd591(2)*acd591(86)
      acd591(86)=acd591(86)+acd591(82)
      acd591(86)=acd591(5)*acd591(86)
      acd591(74)=acd591(36)*acd591(74)
      acd591(87)=acd591(13)*acd591(49)
      acd591(74)=acd591(87)+acd591(74)
      acd591(74)=acd591(2)*acd591(74)
      acd591(87)=acd591(83)*acd591(32)
      acd591(88)=acd591(90)*acd591(7)
      acd591(87)=acd591(87)-acd591(88)
      acd591(88)=acd591(87)*acd591(75)
      acd591(81)=-acd591(90)*acd591(81)
      acd591(89)=-acd591(41)*acd591(83)
      acd591(91)=acd591(29)*acd591(90)
      acd591(89)=acd591(91)+acd591(89)
      acd591(89)=acd591(24)*acd591(89)
      acd591(91)=-acd591(40)*acd591(83)
      acd591(92)=acd591(28)*acd591(90)
      acd591(91)=acd591(92)+acd591(91)
      acd591(91)=acd591(23)*acd591(91)
      acd591(92)=acd591(13)*acd591(38)*acd591(83)
      acd591(74)=acd591(86)+acd591(74)+acd591(91)+acd591(89)+acd591(81)+acd591(&
      &88)+acd591(92)
      acd591(73)=ninjaP*acd591(73)
      acd591(81)=acd591(35)*acd591(84)
      acd591(86)=acd591(35)*acd591(85)
      acd591(76)=ninjaP*acd591(76)
      acd591(76)=acd591(86)+acd591(76)
      acd591(76)=acd591(4)*acd591(76)
      acd591(86)=acd591(55)*acd591(66)
      acd591(88)=acd591(61)*acd591(50)
      acd591(89)=acd591(59)*acd591(27)
      acd591(91)=acd591(46)*acd591(53)
      acd591(92)=acd591(45)*acd591(52)
      acd591(93)=-acd591(14)*acd591(67)
      acd591(94)=acd591(57)+acd591(58)
      acd591(95)=acd591(63)+acd591(94)
      acd591(95)=acd591(39)*acd591(95)
      acd591(96)=-acd591(37)*acd591(85)
      acd591(73)=acd591(76)+acd591(81)+acd591(96)+acd591(95)+acd591(93)+acd591(&
      &92)+acd591(91)+acd591(89)+acd591(88)+acd591(70)+acd591(86)+acd591(73)
      acd591(73)=acd591(5)*acd591(73)
      acd591(76)=acd591(36)*acd591(82)
      acd591(79)=ninjaP*acd591(79)
      acd591(81)=acd591(36)*acd591(84)
      acd591(80)=ninjaP*acd591(80)
      acd591(82)=acd591(36)*acd591(85)
      acd591(80)=acd591(80)+acd591(82)
      acd591(80)=acd591(4)*acd591(80)
      acd591(82)=acd591(61)*acd591(49)
      acd591(79)=acd591(80)+acd591(81)+acd591(79)+acd591(69)+acd591(82)
      acd591(79)=acd591(2)*acd591(79)
      acd591(78)=-ninjaP*acd591(78)
      acd591(80)=acd591(38)*acd591(61)
      acd591(81)=acd591(46)*acd591(41)
      acd591(82)=acd591(45)*acd591(40)
      acd591(80)=-acd591(80)+acd591(81)+acd591(82)-acd591(62)
      acd591(80)=-acd591(80)*acd591(83)
      acd591(81)=acd591(38)*acd591(94)
      acd591(82)=-acd591(14)*acd591(59)
      acd591(83)=acd591(35)*acd591(49)
      acd591(81)=acd591(83)+acd591(82)+acd591(68)+acd591(81)
      acd591(81)=acd591(13)*acd591(81)
      acd591(82)=acd591(46)*acd591(29)
      acd591(83)=acd591(45)*acd591(28)
      acd591(84)=-acd591(14)*acd591(61)
      acd591(82)=acd591(84)+acd591(83)+acd591(65)+acd591(82)
      acd591(82)=acd591(82)*acd591(90)
      acd591(83)=acd591(85)*acd591(87)
      acd591(84)=acd591(94)*acd591(32)
      acd591(85)=acd591(7)*acd591(59)
      acd591(84)=acd591(60)+acd591(84)-acd591(85)
      acd591(75)=acd591(84)*acd591(75)
      acd591(84)=-acd591(41)*acd591(94)
      acd591(85)=acd591(59)*acd591(29)
      acd591(84)=acd591(72)+acd591(85)+acd591(84)
      acd591(84)=acd591(24)*acd591(84)
      acd591(85)=-acd591(40)*acd591(94)
      acd591(86)=acd591(59)*acd591(28)
      acd591(85)=acd591(71)+acd591(86)+acd591(85)
      acd591(85)=acd591(23)*acd591(85)
      acd591(86)=acd591(44)*acd591(64)
      acd591(73)=acd591(73)+acd591(79)+acd591(78)+acd591(85)+acd591(84)+acd591(&
      &82)+acd591(86)+acd591(75)+acd591(76)+acd591(81)+acd591(80)+acd591(83)
      brack(ninjaidxt1mu0)=acd591(74)
      brack(ninjaidxt0mu0)=acd591(73)
      brack(ninjaidxt0mu2)=acd591(77)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d591h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd591h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
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
end module     p0_dbard_epnemumnmubarg_d591h1l131
