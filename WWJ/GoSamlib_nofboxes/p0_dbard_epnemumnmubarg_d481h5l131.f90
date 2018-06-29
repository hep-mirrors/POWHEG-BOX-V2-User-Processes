module     p0_dbard_epnemumnmubarg_d481h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity5d481h5l131.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd481h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(6) :: acd481
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd481(1)=dotproduct(ninjaE3,spvak1k2)
      acd481(2)=dotproduct(ninjaE3,spvak4k3)
      acd481(3)=dotproduct(ninjaE3,spvak5k6)
      acd481(4)=dotproduct(ninjaE3,spvak7k2)
      acd481(5)=abb481(14)
      acd481(6)=-acd481(5)*acd481(4)*acd481(3)*acd481(2)*acd481(1)
      brack(ninjaidxt2mu0)=acd481(6)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd481h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(102) :: acd481
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd481(1)=dotproduct(ninjaE3,spvak7k2)
      acd481(2)=dotproduct(ninjaE3,spvak5k2)
      acd481(3)=abb481(8)
      acd481(4)=dotproduct(ninjaE3,spvak1k3)
      acd481(5)=abb481(47)
      acd481(6)=dotproduct(ninjaE3,spvak4k3)
      acd481(7)=dotproduct(ninjaE3,spvak1k2)
      acd481(8)=dotproduct(ninjaE4,spvak5k6)
      acd481(9)=abb481(14)
      acd481(10)=dotproduct(ninjaE3,spvak5k6)
      acd481(11)=dotproduct(ninjaE4,spvak1k2)
      acd481(12)=abb481(41)
      acd481(13)=dotproduct(ninjaE4,spvak4k3)
      acd481(14)=dotproduct(ninjaE3,spvak4k2)
      acd481(15)=abb481(27)
      acd481(16)=abb481(22)
      acd481(17)=dotproduct(ninjaE4,spvak7k2)
      acd481(18)=dotproduct(k1,ninjaE3)
      acd481(19)=abb481(18)
      acd481(20)=abb481(11)
      acd481(21)=abb481(39)
      acd481(22)=abb481(37)
      acd481(23)=abb481(26)
      acd481(24)=dotproduct(k2,ninjaE3)
      acd481(25)=abb481(12)
      acd481(26)=dotproduct(k3,ninjaE3)
      acd481(27)=dotproduct(k4,ninjaE3)
      acd481(28)=dotproduct(k7,ninjaE3)
      acd481(29)=dotproduct(ninjaA,ninjaE3)
      acd481(30)=dotproduct(ninjaA,spvak7k2)
      acd481(31)=dotproduct(ninjaA,spvak4k3)
      acd481(32)=dotproduct(ninjaA,spvak1k2)
      acd481(33)=dotproduct(ninjaA,spvak5k6)
      acd481(34)=abb481(43)
      acd481(35)=abb481(44)
      acd481(36)=abb481(24)
      acd481(37)=abb481(48)
      acd481(38)=abb481(28)
      acd481(39)=dotproduct(ninjaE3,spvak1k6)
      acd481(40)=abb481(19)
      acd481(41)=abb481(42)
      acd481(42)=dotproduct(ninjaE3,spvak3k2)
      acd481(43)=dotproduct(ninjaE3,spvak1k4)
      acd481(44)=abb481(36)
      acd481(45)=dotproduct(k1,ninjaA)
      acd481(46)=abb481(10)
      acd481(47)=abb481(21)
      acd481(48)=dotproduct(ninjaA,spvak5k2)
      acd481(49)=dotproduct(ninjaA,spvak1k3)
      acd481(50)=dotproduct(ninjaA,spvak4k2)
      acd481(51)=abb481(6)
      acd481(52)=dotproduct(k2,ninjaA)
      acd481(53)=abb481(32)
      acd481(54)=abb481(40)
      acd481(55)=abb481(34)
      acd481(56)=dotproduct(k3,ninjaA)
      acd481(57)=abb481(31)
      acd481(58)=dotproduct(k4,ninjaA)
      acd481(59)=dotproduct(k7,ninjaA)
      acd481(60)=abb481(30)
      acd481(61)=dotproduct(ninjaA,ninjaA)
      acd481(62)=abb481(23)
      acd481(63)=abb481(9)
      acd481(64)=abb481(15)
      acd481(65)=abb481(20)
      acd481(66)=abb481(35)
      acd481(67)=dotproduct(ninjaA,spvak1k6)
      acd481(68)=dotproduct(ninjaA,spvak3k2)
      acd481(69)=dotproduct(ninjaA,spvak1k4)
      acd481(70)=abb481(29)
      acd481(71)=abb481(16)
      acd481(72)=abb481(17)
      acd481(73)=abb481(38)
      acd481(74)=abb481(45)
      acd481(75)=abb481(33)
      acd481(76)=abb481(46)
      acd481(77)=acd481(14)*acd481(15)
      acd481(78)=acd481(4)*acd481(5)
      acd481(77)=acd481(77)-acd481(78)
      acd481(78)=acd481(10)*acd481(9)
      acd481(79)=acd481(78)*acd481(11)
      acd481(80)=acd481(7)*acd481(9)
      acd481(81)=acd481(80)*acd481(8)
      acd481(79)=-acd481(12)+acd481(79)+acd481(81)
      acd481(81)=-acd481(6)*acd481(79)
      acd481(82)=acd481(78)*acd481(7)
      acd481(83)=-acd481(13)*acd481(82)
      acd481(84)=acd481(2)*acd481(3)
      acd481(81)=acd481(81)+acd481(84)+acd481(83)+acd481(77)
      acd481(81)=acd481(1)*acd481(81)
      acd481(83)=acd481(82)*acd481(17)
      acd481(84)=-acd481(2)*acd481(16)
      acd481(84)=-acd481(83)+acd481(84)
      acd481(84)=acd481(6)*acd481(84)
      acd481(81)=acd481(84)+acd481(81)
      acd481(84)=acd481(40)*acd481(39)
      acd481(85)=acd481(21)*acd481(28)
      acd481(86)=acd481(15)*acd481(42)
      acd481(87)=acd481(5)*acd481(43)
      acd481(84)=acd481(84)+acd481(85)+acd481(86)-acd481(87)
      acd481(85)=acd481(18)*acd481(21)
      acd481(86)=acd481(14)*acd481(41)
      acd481(87)=acd481(4)*acd481(36)
      acd481(88)=2.0_ki*acd481(29)
      acd481(89)=acd481(88)*acd481(12)
      acd481(90)=acd481(9)*acd481(33)
      acd481(90)=acd481(90)+acd481(38)
      acd481(91)=acd481(90)*acd481(7)
      acd481(78)=acd481(78)*acd481(32)
      acd481(78)=acd481(89)-acd481(91)-acd481(78)+acd481(84)+acd481(85)+acd481(&
      &86)+acd481(87)
      acd481(85)=acd481(2)*acd481(35)
      acd481(86)=acd481(1)*acd481(34)
      acd481(85)=acd481(86)+acd481(85)+acd481(78)
      acd481(85)=acd481(6)*acd481(85)
      acd481(86)=acd481(18)*acd481(22)
      acd481(87)=acd481(4)*acd481(37)
      acd481(89)=acd481(9)*acd481(31)
      acd481(89)=acd481(89)-acd481(44)
      acd481(91)=acd481(89)*acd481(7)
      acd481(86)=acd481(86)+acd481(87)-acd481(91)
      acd481(86)=acd481(86)*acd481(10)
      acd481(87)=-acd481(4)*acd481(20)
      acd481(91)=acd481(14)*acd481(23)
      acd481(87)=acd481(87)+acd481(91)
      acd481(91)=acd481(26)+acd481(27)
      acd481(92)=acd481(91)-acd481(18)
      acd481(87)=acd481(92)*acd481(87)
      acd481(77)=acd481(77)*acd481(88)
      acd481(77)=-acd481(86)-acd481(77)+acd481(87)
      acd481(86)=acd481(91)*acd481(19)
      acd481(87)=acd481(18)*acd481(19)
      acd481(93)=acd481(88)*acd481(3)
      acd481(87)=-acd481(86)+acd481(87)-acd481(93)
      acd481(93)=-acd481(2)*acd481(87)
      acd481(85)=acd481(93)+acd481(85)-acd481(77)
      acd481(85)=acd481(1)*acd481(85)
      acd481(93)=acd481(24)*acd481(25)
      acd481(94)=acd481(25)*acd481(28)
      acd481(93)=acd481(93)-acd481(94)
      acd481(95)=-acd481(16)*acd481(88)
      acd481(95)=acd481(95)+acd481(93)
      acd481(95)=acd481(2)*acd481(95)
      acd481(82)=-acd481(30)*acd481(82)
      acd481(82)=acd481(82)+acd481(95)
      acd481(82)=acd481(6)*acd481(82)
      acd481(82)=acd481(82)+acd481(85)
      acd481(79)=-ninjaP*acd481(79)
      acd481(85)=-acd481(32)*acd481(90)
      acd481(90)=acd481(40)*acd481(67)
      acd481(95)=acd481(50)*acd481(41)
      acd481(96)=acd481(49)*acd481(36)
      acd481(97)=acd481(12)*acd481(61)
      acd481(98)=acd481(48)*acd481(35)
      acd481(99)=acd481(59)+acd481(45)
      acd481(99)=acd481(21)*acd481(99)
      acd481(100)=acd481(15)*acd481(68)
      acd481(101)=-acd481(5)*acd481(69)
      acd481(102)=acd481(30)*acd481(34)
      acd481(79)=2.0_ki*acd481(102)+acd481(101)+acd481(100)+acd481(99)+acd481(9&
      &8)+acd481(97)+acd481(96)+acd481(95)+acd481(73)+acd481(90)+acd481(79)+acd&
      &481(85)
      acd481(79)=acd481(6)*acd481(79)
      acd481(84)=acd481(31)*acd481(84)
      acd481(85)=acd481(23)*acd481(50)
      acd481(90)=acd481(20)*acd481(49)
      acd481(85)=acd481(85)-acd481(90)
      acd481(90)=acd481(19)*acd481(48)
      acd481(95)=acd481(33)*acd481(22)
      acd481(96)=acd481(31)*acd481(21)
      acd481(90)=acd481(96)-acd481(90)+acd481(51)+acd481(95)+acd481(85)
      acd481(90)=acd481(18)*acd481(90)
      acd481(95)=acd481(33)*acd481(37)
      acd481(96)=ninjaP+acd481(61)
      acd481(97)=-acd481(5)*acd481(96)
      acd481(98)=-acd481(58)+acd481(45)-acd481(56)
      acd481(99)=-acd481(20)*acd481(98)
      acd481(100)=acd481(31)*acd481(36)
      acd481(95)=acd481(100)+acd481(99)+acd481(97)+acd481(72)+acd481(95)
      acd481(95)=acd481(4)*acd481(95)
      acd481(97)=acd481(48)*acd481(3)
      acd481(99)=acd481(15)*acd481(50)
      acd481(100)=-acd481(5)*acd481(49)
      acd481(101)=acd481(31)*acd481(12)
      acd481(97)=acd481(101)+acd481(100)+acd481(99)+acd481(63)+acd481(97)
      acd481(97)=acd481(97)*acd481(88)
      acd481(99)=-acd481(32)*acd481(89)
      acd481(100)=acd481(45)*acd481(22)
      acd481(101)=acd481(49)*acd481(37)
      acd481(80)=-ninjaP*acd481(13)*acd481(80)
      acd481(80)=acd481(80)+acd481(101)+acd481(75)+acd481(100)+acd481(99)
      acd481(80)=acd481(10)*acd481(80)
      acd481(99)=acd481(15)*acd481(96)
      acd481(100)=acd481(23)*acd481(98)
      acd481(101)=acd481(31)*acd481(41)
      acd481(99)=acd481(101)+acd481(100)+acd481(76)+acd481(99)
      acd481(99)=acd481(14)*acd481(99)
      acd481(100)=acd481(3)*acd481(96)
      acd481(98)=-acd481(19)*acd481(98)
      acd481(101)=acd481(31)*acd481(35)
      acd481(98)=acd481(101)+acd481(98)+acd481(71)+acd481(100)
      acd481(98)=acd481(2)*acd481(98)
      acd481(85)=acd481(57)-acd481(85)
      acd481(85)=acd481(91)*acd481(85)
      acd481(89)=-acd481(33)*acd481(89)
      acd481(91)=-acd481(31)*acd481(38)
      acd481(89)=acd481(91)+acd481(74)+acd481(89)
      acd481(89)=acd481(7)*acd481(89)
      acd481(91)=acd481(28)*acd481(60)
      acd481(86)=acd481(48)*acd481(86)
      acd481(100)=acd481(31)*acd481(34)
      acd481(100)=acd481(70)+acd481(100)
      acd481(100)=acd481(1)*acd481(100)
      acd481(79)=acd481(100)+acd481(79)+acd481(98)+acd481(80)+acd481(97)+acd481&
      &(95)+acd481(89)+acd481(99)+acd481(90)+acd481(84)+acd481(86)+acd481(91)+a&
      &cd481(85)
      acd481(79)=acd481(1)*acd481(79)
      acd481(78)=acd481(30)*acd481(78)
      acd481(80)=-acd481(16)*acd481(96)
      acd481(84)=acd481(52)-acd481(59)
      acd481(84)=acd481(25)*acd481(84)
      acd481(85)=acd481(30)*acd481(35)
      acd481(80)=acd481(85)+acd481(84)+acd481(80)
      acd481(80)=acd481(2)*acd481(80)
      acd481(84)=-acd481(48)*acd481(16)
      acd481(84)=acd481(65)+acd481(84)
      acd481(84)=acd481(84)*acd481(88)
      acd481(85)=-acd481(48)*acd481(94)
      acd481(86)=acd481(25)*acd481(48)
      acd481(86)=acd481(54)+acd481(86)
      acd481(86)=acd481(24)*acd481(86)
      acd481(83)=-ninjaP*acd481(83)
      acd481(78)=acd481(80)+acd481(78)+acd481(83)+acd481(84)+acd481(85)+acd481(&
      &86)
      acd481(78)=acd481(6)*acd481(78)
      acd481(77)=-acd481(30)*acd481(77)
      acd481(80)=-acd481(30)*acd481(87)
      acd481(83)=acd481(31)*acd481(93)
      acd481(84)=-acd481(31)*acd481(16)
      acd481(84)=acd481(64)+acd481(84)
      acd481(84)=acd481(84)*acd481(88)
      acd481(85)=-acd481(28)+acd481(24)
      acd481(85)=acd481(53)*acd481(85)
      acd481(80)=acd481(80)+acd481(84)+acd481(83)+acd481(85)
      acd481(80)=acd481(2)*acd481(80)
      acd481(83)=acd481(24)+acd481(92)
      acd481(83)=acd481(47)*acd481(83)
      acd481(84)=acd481(62)*acd481(88)
      acd481(83)=acd481(84)+acd481(83)
      acd481(83)=acd481(83)*acd481(88)
      acd481(84)=acd481(24)*acd481(55)
      acd481(85)=acd481(66)*acd481(88)
      acd481(84)=acd481(84)+acd481(85)
      acd481(84)=acd481(10)*acd481(84)
      acd481(85)=-acd481(24)*acd481(46)*acd481(92)
      acd481(77)=acd481(79)+acd481(78)+acd481(80)+acd481(77)+acd481(84)+acd481(&
      &83)+acd481(85)
      brack(ninjaidxt1mu0)=acd481(82)
      brack(ninjaidxt0mu0)=acd481(77)
      brack(ninjaidxt0mu2)=acd481(81)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d481h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd481h5
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
end module     p0_dbard_epnemumnmubarg_d481h5l131
