module     p0_dbard_epnemumnmubarg_d607h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity1d607h1l131.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(19) :: acd607
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd607(1)=dotproduct(k2,ninjaE3)
      acd607(2)=dotproduct(ninjaE3,spvak2k7)
      acd607(3)=dotproduct(ninjaE3,spvak4k3)
      acd607(4)=abb607(14)
      acd607(5)=dotproduct(k5,ninjaE3)
      acd607(6)=dotproduct(k6,ninjaE3)
      acd607(7)=dotproduct(ninjaE3,spvak5k2)
      acd607(8)=abb607(7)
      acd607(9)=dotproduct(ninjaE3,spvak1k2)
      acd607(10)=abb607(10)
      acd607(11)=dotproduct(ninjaE3,spvak1k6)
      acd607(12)=abb607(21)
      acd607(13)=dotproduct(ninjaE3,spvak5k6)
      acd607(14)=abb607(37)
      acd607(15)=acd607(6)-acd607(1)+acd607(5)
      acd607(15)=acd607(4)*acd607(15)
      acd607(16)=acd607(8)*acd607(7)
      acd607(17)=acd607(10)*acd607(9)
      acd607(18)=acd607(12)*acd607(11)
      acd607(19)=acd607(14)*acd607(13)
      acd607(15)=acd607(19)+acd607(18)+acd607(17)+acd607(16)+acd607(15)
      acd607(15)=acd607(15)*acd607(3)*acd607(2)
      brack(ninjaidxt2mu0)=acd607(15)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(92) :: acd607
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd607(1)=dotproduct(k2,ninjaE3)
      acd607(2)=dotproduct(ninjaE3,spvak2k7)
      acd607(3)=dotproduct(ninjaE4,spvak4k3)
      acd607(4)=abb607(14)
      acd607(5)=dotproduct(ninjaE3,spvak4k3)
      acd607(6)=dotproduct(ninjaE4,spvak2k7)
      acd607(7)=abb607(17)
      acd607(8)=dotproduct(k2,ninjaE4)
      acd607(9)=dotproduct(k5,ninjaE3)
      acd607(10)=dotproduct(k5,ninjaE4)
      acd607(11)=dotproduct(k6,ninjaE3)
      acd607(12)=dotproduct(k6,ninjaE4)
      acd607(13)=dotproduct(ninjaE4,spvak5k2)
      acd607(14)=abb607(7)
      acd607(15)=dotproduct(ninjaE4,spvak1k2)
      acd607(16)=abb607(10)
      acd607(17)=dotproduct(ninjaE4,spvak5k6)
      acd607(18)=abb607(37)
      acd607(19)=dotproduct(ninjaE4,spvak1k6)
      acd607(20)=abb607(21)
      acd607(21)=dotproduct(ninjaE3,spvak5k2)
      acd607(22)=dotproduct(ninjaE3,spvak1k2)
      acd607(23)=dotproduct(ninjaE3,spvak5k6)
      acd607(24)=dotproduct(ninjaE3,spvak1k6)
      acd607(25)=abb607(22)
      acd607(26)=abb607(26)
      acd607(27)=dotproduct(ninjaE3,spvak1k7)
      acd607(28)=abb607(16)
      acd607(29)=abb607(18)
      acd607(30)=dotproduct(k2,ninjaA)
      acd607(31)=dotproduct(k7,ninjaE3)
      acd607(32)=abb607(31)
      acd607(33)=dotproduct(ninjaA,ninjaE3)
      acd607(34)=dotproduct(ninjaA,spvak2k7)
      acd607(35)=dotproduct(ninjaA,spvak4k3)
      acd607(36)=abb607(36)
      acd607(37)=dotproduct(k3,ninjaE3)
      acd607(38)=abb607(29)
      acd607(39)=dotproduct(k4,ninjaE3)
      acd607(40)=dotproduct(k5,ninjaA)
      acd607(41)=dotproduct(k6,ninjaA)
      acd607(42)=abb607(28)
      acd607(43)=abb607(35)
      acd607(44)=abb607(34)
      acd607(45)=dotproduct(ninjaA,spvak5k2)
      acd607(46)=dotproduct(ninjaA,spvak1k2)
      acd607(47)=dotproduct(ninjaA,spvak5k6)
      acd607(48)=dotproduct(ninjaA,spvak1k6)
      acd607(49)=abb607(11)
      acd607(50)=abb607(32)
      acd607(51)=abb607(19)
      acd607(52)=abb607(30)
      acd607(53)=dotproduct(ninjaE3,spvak1k3)
      acd607(54)=abb607(33)
      acd607(55)=abb607(8)
      acd607(56)=dotproduct(k7,ninjaA)
      acd607(57)=dotproduct(ninjaA,ninjaA)
      acd607(58)=abb607(27)
      acd607(59)=dotproduct(k3,ninjaA)
      acd607(60)=abb607(20)
      acd607(61)=dotproduct(k4,ninjaA)
      acd607(62)=dotproduct(ninjaA,spvak1k7)
      acd607(63)=abb607(23)
      acd607(64)=abb607(13)
      acd607(65)=dotproduct(ninjaA,spvak1k3)
      acd607(66)=abb607(12)
      acd607(67)=abb607(9)
      acd607(68)=abb607(24)
      acd607(69)=abb607(15)
      acd607(70)=abb607(25)
      acd607(71)=-acd607(12)+acd607(8)-acd607(10)
      acd607(71)=acd607(71)*acd607(4)
      acd607(72)=acd607(20)*acd607(19)
      acd607(73)=acd607(18)*acd607(17)
      acd607(74)=acd607(16)*acd607(15)
      acd607(75)=acd607(14)*acd607(13)
      acd607(71)=acd607(71)-acd607(72)-acd607(73)-acd607(74)-acd607(75)
      acd607(71)=acd607(71)*acd607(5)
      acd607(72)=acd607(20)*acd607(24)
      acd607(73)=acd607(16)*acd607(22)
      acd607(74)=acd607(23)*acd607(18)
      acd607(75)=acd607(21)*acd607(14)
      acd607(72)=acd607(75)+acd607(74)+acd607(72)+acd607(73)
      acd607(73)=acd607(72)*acd607(3)
      acd607(71)=acd607(71)-acd607(73)-acd607(25)
      acd607(73)=-acd607(11)+acd607(1)-acd607(9)
      acd607(74)=acd607(73)*acd607(3)
      acd607(75)=-acd607(4)*acd607(74)
      acd607(75)=acd607(75)-acd607(71)
      acd607(75)=acd607(2)*acd607(75)
      acd607(76)=acd607(23)*acd607(29)
      acd607(77)=acd607(21)*acd607(26)
      acd607(78)=acd607(73)*acd607(7)
      acd607(79)=acd607(27)*acd607(28)
      acd607(76)=acd607(79)+acd607(78)+acd607(76)+acd607(77)
      acd607(77)=acd607(72)*acd607(6)
      acd607(78)=acd607(73)*acd607(6)
      acd607(80)=-acd607(4)*acd607(78)
      acd607(80)=acd607(80)+acd607(77)
      acd607(80)=acd607(5)*acd607(80)
      acd607(75)=acd607(75)+acd607(80)+acd607(76)
      acd607(80)=acd607(73)*acd607(4)
      acd607(72)=acd607(80)-acd607(72)
      acd607(80)=-acd607(35)*acd607(72)
      acd607(81)=acd607(37)+acd607(39)
      acd607(82)=acd607(81)+acd607(31)
      acd607(82)=acd607(82)*acd607(38)
      acd607(83)=acd607(54)*acd607(53)
      acd607(84)=acd607(27)*acd607(51)
      acd607(85)=acd607(23)*acd607(52)
      acd607(86)=acd607(21)*acd607(50)
      acd607(87)=2.0_ki*acd607(33)
      acd607(88)=acd607(87)*acd607(25)
      acd607(89)=acd607(73)*acd607(36)
      acd607(80)=acd607(82)+acd607(85)+acd607(86)+acd607(88)-acd607(89)+acd607(&
      &83)+acd607(84)+acd607(80)
      acd607(82)=acd607(20)*acd607(48)
      acd607(83)=acd607(18)*acd607(47)
      acd607(84)=acd607(16)*acd607(46)
      acd607(85)=acd607(14)*acd607(45)
      acd607(82)=acd607(84)+acd607(82)+acd607(83)+acd607(85)+acd607(49)
      acd607(83)=-acd607(41)+acd607(30)-acd607(40)
      acd607(84)=-acd607(4)*acd607(83)
      acd607(84)=acd607(84)+acd607(82)
      acd607(84)=acd607(5)*acd607(84)
      acd607(84)=acd607(84)+acd607(80)
      acd607(84)=acd607(2)*acd607(84)
      acd607(72)=-acd607(34)*acd607(72)
      acd607(85)=acd607(27)*acd607(55)
      acd607(72)=acd607(85)+acd607(72)
      acd607(72)=acd607(5)*acd607(72)
      acd607(85)=acd607(31)*acd607(32)
      acd607(86)=acd607(87)*acd607(7)
      acd607(85)=acd607(85)+acd607(86)
      acd607(85)=acd607(85)*acd607(73)
      acd607(79)=acd607(87)*acd607(79)
      acd607(88)=acd607(29)*acd607(87)
      acd607(89)=acd607(31)*acd607(44)
      acd607(88)=acd607(88)+acd607(89)
      acd607(88)=acd607(23)*acd607(88)
      acd607(89)=acd607(26)*acd607(87)
      acd607(90)=acd607(31)*acd607(42)
      acd607(89)=acd607(89)+acd607(90)
      acd607(89)=acd607(21)*acd607(89)
      acd607(90)=acd607(31)*acd607(27)*acd607(43)
      acd607(72)=acd607(84)+acd607(72)+acd607(89)+acd607(88)+acd607(79)+acd607(&
      &90)+acd607(85)
      acd607(71)=-ninjaP*acd607(71)
      acd607(79)=acd607(35)*acd607(82)
      acd607(84)=-acd607(35)*acd607(83)
      acd607(74)=-ninjaP*acd607(74)
      acd607(74)=acd607(84)+acd607(74)
      acd607(74)=acd607(4)*acd607(74)
      acd607(84)=acd607(54)*acd607(65)
      acd607(85)=acd607(62)*acd607(51)
      acd607(88)=acd607(47)*acd607(52)
      acd607(89)=acd607(45)*acd607(50)
      acd607(90)=acd607(57)*acd607(25)
      acd607(91)=acd607(56)+acd607(61)+acd607(59)
      acd607(91)=acd607(38)*acd607(91)
      acd607(92)=-acd607(36)*acd607(83)
      acd607(71)=acd607(74)+acd607(79)+acd607(92)+acd607(91)+acd607(90)+acd607(&
      &89)+acd607(88)+acd607(85)+acd607(66)+acd607(84)+acd607(71)
      acd607(71)=acd607(2)*acd607(71)
      acd607(74)=acd607(34)*acd607(80)
      acd607(77)=ninjaP*acd607(77)
      acd607(79)=acd607(34)*acd607(82)
      acd607(78)=-ninjaP*acd607(78)
      acd607(80)=-acd607(34)*acd607(83)
      acd607(78)=acd607(78)+acd607(80)
      acd607(78)=acd607(4)*acd607(78)
      acd607(80)=acd607(62)*acd607(55)
      acd607(77)=acd607(78)+acd607(79)+acd607(77)+acd607(67)+acd607(80)
      acd607(77)=acd607(5)*acd607(77)
      acd607(78)=acd607(62)*acd607(43)
      acd607(79)=acd607(47)*acd607(44)
      acd607(80)=acd607(45)*acd607(42)
      acd607(82)=acd607(32)*acd607(83)
      acd607(78)=acd607(82)+acd607(80)+acd607(79)+acd607(63)+acd607(78)
      acd607(78)=acd607(31)*acd607(78)
      acd607(76)=ninjaP*acd607(76)
      acd607(79)=acd607(57)*acd607(28)
      acd607(80)=acd607(56)*acd607(43)
      acd607(82)=acd607(35)*acd607(55)
      acd607(79)=acd607(82)+acd607(80)+acd607(69)+acd607(79)
      acd607(79)=acd607(27)*acd607(79)
      acd607(80)=acd607(28)*acd607(62)
      acd607(82)=acd607(47)*acd607(29)
      acd607(84)=acd607(45)*acd607(26)
      acd607(80)=acd607(84)+acd607(82)+acd607(64)+acd607(80)
      acd607(80)=acd607(80)*acd607(87)
      acd607(82)=acd607(32)*acd607(56)
      acd607(84)=acd607(7)*acd607(57)
      acd607(82)=acd607(58)+acd607(82)+acd607(84)
      acd607(73)=acd607(82)*acd607(73)
      acd607(82)=acd607(83)*acd607(86)
      acd607(83)=acd607(57)*acd607(29)
      acd607(84)=acd607(56)*acd607(44)
      acd607(83)=acd607(84)+acd607(70)+acd607(83)
      acd607(83)=acd607(23)*acd607(83)
      acd607(84)=acd607(57)*acd607(26)
      acd607(85)=acd607(56)*acd607(42)
      acd607(84)=acd607(85)+acd607(68)+acd607(84)
      acd607(84)=acd607(21)*acd607(84)
      acd607(81)=acd607(60)*acd607(81)
      acd607(71)=acd607(71)+acd607(77)+acd607(76)+acd607(84)+acd607(83)+acd607(&
      &82)+acd607(78)+acd607(80)+acd607(73)+acd607(74)+acd607(79)+acd607(81)
      brack(ninjaidxt1mu0)=acd607(72)
      brack(ninjaidxt0mu0)=acd607(71)
      brack(ninjaidxt0mu2)=acd607(75)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d607h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd607h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3+k7+k6+k5+k4
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbard_epnemumnmubarg_d607h1l131
