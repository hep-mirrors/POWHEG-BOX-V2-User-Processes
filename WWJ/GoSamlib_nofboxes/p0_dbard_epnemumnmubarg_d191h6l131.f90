module     p0_dbard_epnemumnmubarg_d191h6l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity6d191h6l131.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd191h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(33) :: acd191
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd191(1)=dotproduct(k3,ninjaE3)
      acd191(2)=dotproduct(k7,ninjaE3)
      acd191(3)=abb191(85)
      acd191(4)=dotproduct(ninjaE3,spvak7k1)
      acd191(5)=abb191(24)
      acd191(6)=dotproduct(ninjaE3,spvak7k2)
      acd191(7)=abb191(22)
      acd191(8)=dotproduct(k4,ninjaE3)
      acd191(9)=dotproduct(k5,ninjaE3)
      acd191(10)=dotproduct(k6,ninjaE3)
      acd191(11)=dotproduct(ninjaE3,spvak4k3)
      acd191(12)=abb191(43)
      acd191(13)=dotproduct(ninjaE3,spvak5k3)
      acd191(14)=abb191(65)
      acd191(15)=dotproduct(ninjaE3,spvak4k6)
      acd191(16)=abb191(57)
      acd191(17)=dotproduct(ninjaE3,spvak5k6)
      acd191(18)=abb191(51)
      acd191(19)=abb191(13)
      acd191(20)=abb191(28)
      acd191(21)=abb191(18)
      acd191(22)=abb191(36)
      acd191(23)=abb191(41)
      acd191(24)=abb191(37)
      acd191(25)=abb191(56)
      acd191(26)=abb191(39)
      acd191(27)=acd191(17)*acd191(26)
      acd191(28)=acd191(15)*acd191(25)
      acd191(29)=acd191(13)*acd191(24)
      acd191(30)=acd191(11)*acd191(20)
      acd191(31)=-acd191(1)-acd191(8)+acd191(9)+acd191(10)
      acd191(32)=acd191(7)*acd191(31)
      acd191(27)=acd191(32)+acd191(30)+acd191(29)+acd191(27)+acd191(28)
      acd191(27)=acd191(6)*acd191(27)
      acd191(28)=acd191(17)*acd191(23)
      acd191(29)=acd191(15)*acd191(22)
      acd191(30)=acd191(13)*acd191(21)
      acd191(32)=acd191(11)*acd191(19)
      acd191(33)=-acd191(5)*acd191(31)
      acd191(28)=acd191(33)+acd191(32)+acd191(30)+acd191(28)+acd191(29)
      acd191(28)=acd191(4)*acd191(28)
      acd191(29)=acd191(17)*acd191(18)
      acd191(30)=acd191(15)*acd191(16)
      acd191(32)=acd191(13)*acd191(14)
      acd191(33)=acd191(11)*acd191(12)
      acd191(31)=-acd191(3)*acd191(31)
      acd191(29)=acd191(31)+acd191(33)+acd191(32)+acd191(29)+acd191(30)
      acd191(29)=acd191(2)*acd191(29)
      acd191(27)=acd191(29)+acd191(27)+acd191(28)
      brack(ninjaidxt2mu0)=acd191(27)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd191h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(101) :: acd191
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd191(1)=dotproduct(k3,ninjaE3)
      acd191(2)=dotproduct(k7,ninjaE4)
      acd191(3)=abb191(85)
      acd191(4)=dotproduct(ninjaE4,spvak7k1)
      acd191(5)=abb191(24)
      acd191(6)=dotproduct(ninjaE4,spvak7k2)
      acd191(7)=abb191(22)
      acd191(8)=dotproduct(k3,ninjaE4)
      acd191(9)=dotproduct(k7,ninjaE3)
      acd191(10)=dotproduct(ninjaE3,spvak7k1)
      acd191(11)=dotproduct(ninjaE3,spvak7k2)
      acd191(12)=dotproduct(k4,ninjaE3)
      acd191(13)=dotproduct(k4,ninjaE4)
      acd191(14)=dotproduct(k5,ninjaE3)
      acd191(15)=dotproduct(k5,ninjaE4)
      acd191(16)=dotproduct(k6,ninjaE3)
      acd191(17)=dotproduct(k6,ninjaE4)
      acd191(18)=dotproduct(ninjaE4,spvak4k3)
      acd191(19)=abb191(43)
      acd191(20)=dotproduct(ninjaE4,spvak5k3)
      acd191(21)=abb191(65)
      acd191(22)=dotproduct(ninjaE4,spvak4k6)
      acd191(23)=abb191(57)
      acd191(24)=dotproduct(ninjaE4,spvak5k6)
      acd191(25)=abb191(51)
      acd191(26)=dotproduct(ninjaE3,spvak4k3)
      acd191(27)=dotproduct(ninjaE3,spvak5k3)
      acd191(28)=dotproduct(ninjaE3,spvak4k6)
      acd191(29)=dotproduct(ninjaE3,spvak5k6)
      acd191(30)=abb191(13)
      acd191(31)=abb191(28)
      acd191(32)=abb191(18)
      acd191(33)=abb191(36)
      acd191(34)=abb191(41)
      acd191(35)=abb191(37)
      acd191(36)=abb191(56)
      acd191(37)=abb191(39)
      acd191(38)=abb191(26)
      acd191(39)=dotproduct(k1,ninjaE3)
      acd191(40)=abb191(88)
      acd191(41)=dotproduct(k2,ninjaE3)
      acd191(42)=dotproduct(k3,ninjaA)
      acd191(43)=dotproduct(k7,ninjaA)
      acd191(44)=dotproduct(ninjaA,spvak7k1)
      acd191(45)=dotproduct(ninjaA,spvak7k2)
      acd191(46)=abb191(76)
      acd191(47)=dotproduct(k4,ninjaA)
      acd191(48)=dotproduct(k5,ninjaA)
      acd191(49)=dotproduct(k6,ninjaA)
      acd191(50)=dotproduct(ninjaA,spvak4k3)
      acd191(51)=dotproduct(ninjaA,spvak5k3)
      acd191(52)=dotproduct(ninjaA,spvak4k6)
      acd191(53)=dotproduct(ninjaA,spvak5k6)
      acd191(54)=abb191(31)
      acd191(55)=dotproduct(ninjaA,ninjaE3)
      acd191(56)=abb191(14)
      acd191(57)=dotproduct(ninjaE3,spvak4k1)
      acd191(58)=abb191(15)
      acd191(59)=dotproduct(ninjaE3,spvak3k1)
      acd191(60)=abb191(16)
      acd191(61)=abb191(17)
      acd191(62)=abb191(19)
      acd191(63)=dotproduct(ninjaE3,spvak5k1)
      acd191(64)=abb191(23)
      acd191(65)=dotproduct(ninjaE3,spvak6k1)
      acd191(66)=abb191(34)
      acd191(67)=abb191(50)
      acd191(68)=abb191(42)
      acd191(69)=dotproduct(k1,ninjaA)
      acd191(70)=dotproduct(k2,ninjaA)
      acd191(71)=dotproduct(ninjaA,ninjaA)
      acd191(72)=dotproduct(ninjaA,spvak4k1)
      acd191(73)=dotproduct(ninjaA,spvak3k1)
      acd191(74)=dotproduct(ninjaA,spvak5k1)
      acd191(75)=dotproduct(ninjaA,spvak6k1)
      acd191(76)=abb191(20)
      acd191(77)=acd191(25)*acd191(24)
      acd191(78)=acd191(23)*acd191(22)
      acd191(79)=acd191(21)*acd191(20)
      acd191(80)=acd191(19)*acd191(18)
      acd191(77)=acd191(77)+acd191(78)+acd191(79)+acd191(80)
      acd191(77)=acd191(77)*acd191(9)
      acd191(78)=acd191(34)*acd191(24)
      acd191(79)=acd191(33)*acd191(22)
      acd191(80)=acd191(32)*acd191(20)
      acd191(81)=acd191(30)*acd191(18)
      acd191(78)=acd191(78)+acd191(79)+acd191(80)+acd191(81)
      acd191(78)=acd191(78)*acd191(10)
      acd191(79)=acd191(37)*acd191(24)
      acd191(80)=acd191(36)*acd191(22)
      acd191(81)=acd191(35)*acd191(20)
      acd191(82)=acd191(31)*acd191(18)
      acd191(79)=acd191(79)+acd191(80)+acd191(81)+acd191(82)
      acd191(79)=acd191(79)*acd191(11)
      acd191(80)=acd191(29)*acd191(34)
      acd191(81)=acd191(28)*acd191(33)
      acd191(82)=acd191(27)*acd191(32)
      acd191(83)=acd191(26)*acd191(30)
      acd191(80)=acd191(83)+acd191(80)+acd191(81)+acd191(82)
      acd191(81)=acd191(80)*acd191(4)
      acd191(82)=acd191(29)*acd191(25)
      acd191(83)=acd191(28)*acd191(23)
      acd191(84)=acd191(27)*acd191(21)
      acd191(85)=acd191(26)*acd191(19)
      acd191(82)=acd191(85)+acd191(82)+acd191(83)+acd191(84)
      acd191(83)=acd191(82)*acd191(2)
      acd191(84)=acd191(29)*acd191(37)
      acd191(85)=acd191(28)*acd191(36)
      acd191(86)=acd191(27)*acd191(35)
      acd191(87)=acd191(26)*acd191(31)
      acd191(84)=acd191(85)+acd191(84)+acd191(86)+acd191(87)
      acd191(85)=acd191(84)*acd191(6)
      acd191(86)=-acd191(1)-acd191(12)+acd191(14)+acd191(16)
      acd191(87)=acd191(86)*acd191(6)
      acd191(88)=-acd191(8)-acd191(13)+acd191(15)+acd191(17)
      acd191(89)=acd191(88)*acd191(11)
      acd191(87)=acd191(87)+acd191(89)
      acd191(87)=acd191(87)*acd191(7)
      acd191(89)=acd191(86)*acd191(4)
      acd191(90)=acd191(88)*acd191(10)
      acd191(89)=acd191(89)+acd191(90)
      acd191(89)=acd191(89)*acd191(5)
      acd191(90)=acd191(86)*acd191(2)
      acd191(88)=acd191(88)*acd191(9)
      acd191(88)=acd191(90)+acd191(88)
      acd191(88)=acd191(88)*acd191(3)
      acd191(77)=-acd191(88)+acd191(77)+acd191(81)+acd191(83)+acd191(85)+acd191&
      &(38)+acd191(87)-acd191(89)+acd191(78)+acd191(79)
      acd191(78)=acd191(44)*acd191(80)
      acd191(79)=acd191(45)*acd191(84)
      acd191(80)=acd191(43)*acd191(82)
      acd191(81)=acd191(34)*acd191(53)
      acd191(82)=acd191(33)*acd191(52)
      acd191(83)=acd191(32)*acd191(51)
      acd191(84)=acd191(30)*acd191(50)
      acd191(81)=acd191(81)+acd191(82)+acd191(83)+acd191(84)
      acd191(82)=acd191(10)*acd191(81)
      acd191(83)=acd191(37)*acd191(53)
      acd191(84)=acd191(36)*acd191(52)
      acd191(85)=acd191(35)*acd191(51)
      acd191(87)=acd191(31)*acd191(50)
      acd191(83)=acd191(62)+acd191(83)+acd191(84)+acd191(85)+acd191(87)
      acd191(84)=acd191(11)*acd191(83)
      acd191(85)=acd191(25)*acd191(53)
      acd191(87)=acd191(23)*acd191(52)
      acd191(88)=acd191(21)*acd191(51)
      acd191(89)=acd191(19)*acd191(50)
      acd191(85)=acd191(85)+acd191(89)+acd191(54)+acd191(87)+acd191(88)
      acd191(87)=acd191(9)*acd191(85)
      acd191(88)=acd191(45)*acd191(86)
      acd191(89)=-acd191(49)-acd191(48)+acd191(42)+acd191(47)
      acd191(90)=-acd191(11)*acd191(89)
      acd191(88)=acd191(88)+acd191(90)
      acd191(88)=acd191(7)*acd191(88)
      acd191(90)=-acd191(44)*acd191(86)
      acd191(91)=acd191(10)*acd191(89)
      acd191(90)=acd191(90)+acd191(91)
      acd191(90)=acd191(5)*acd191(90)
      acd191(91)=-acd191(43)*acd191(86)
      acd191(92)=acd191(9)*acd191(89)
      acd191(91)=acd191(91)+acd191(92)
      acd191(91)=acd191(3)*acd191(91)
      acd191(86)=acd191(46)*acd191(86)
      acd191(92)=acd191(66)*acd191(65)
      acd191(93)=acd191(64)*acd191(63)
      acd191(94)=acd191(60)*acd191(59)
      acd191(95)=acd191(58)*acd191(57)
      acd191(96)=acd191(41)-acd191(39)
      acd191(96)=acd191(40)*acd191(96)
      acd191(97)=acd191(38)*acd191(55)
      acd191(98)=acd191(29)*acd191(68)
      acd191(99)=acd191(28)*acd191(67)
      acd191(100)=acd191(27)*acd191(61)
      acd191(101)=acd191(26)*acd191(56)
      acd191(78)=acd191(91)+acd191(90)+acd191(88)+acd191(87)+acd191(84)+acd191(&
      &82)+acd191(80)+acd191(79)+acd191(78)+acd191(101)+acd191(100)+acd191(99)+&
      &acd191(98)+2.0_ki*acd191(97)+acd191(96)+acd191(95)+acd191(94)+acd191(92)&
      &+acd191(93)+acd191(86)
      acd191(79)=ninjaP*acd191(77)
      acd191(80)=acd191(44)*acd191(81)
      acd191(81)=acd191(45)*acd191(83)
      acd191(82)=acd191(43)*acd191(85)
      acd191(83)=-acd191(7)*acd191(45)
      acd191(84)=acd191(5)*acd191(44)
      acd191(85)=acd191(3)*acd191(43)
      acd191(83)=acd191(85)+acd191(84)+acd191(83)-acd191(46)
      acd191(83)=acd191(89)*acd191(83)
      acd191(84)=acd191(66)*acd191(75)
      acd191(85)=acd191(64)*acd191(74)
      acd191(86)=acd191(60)*acd191(73)
      acd191(87)=acd191(58)*acd191(72)
      acd191(88)=acd191(70)-acd191(69)
      acd191(88)=acd191(40)*acd191(88)
      acd191(89)=acd191(38)*acd191(71)
      acd191(90)=acd191(53)*acd191(68)
      acd191(91)=acd191(52)*acd191(67)
      acd191(92)=acd191(51)*acd191(61)
      acd191(93)=acd191(50)*acd191(56)
      acd191(79)=acd191(79)+acd191(82)+acd191(81)+acd191(80)+acd191(93)+acd191(&
      &92)+acd191(91)+acd191(90)+acd191(89)+acd191(88)+acd191(87)+acd191(86)+ac&
      &d191(85)+acd191(76)+acd191(84)+acd191(83)
      brack(ninjaidxt1mu0)=acd191(78)
      brack(ninjaidxt0mu0)=acd191(79)
      brack(ninjaidxt0mu2)=acd191(77)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d191h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd191h6
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
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbard_epnemumnmubarg_d191h6l131
