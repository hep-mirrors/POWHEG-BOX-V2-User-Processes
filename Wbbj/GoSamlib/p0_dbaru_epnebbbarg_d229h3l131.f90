module     p0_dbaru_epnebbbarg_d229h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d229h3l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd229h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(32) :: acd229
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd229(1)=dotproduct(k2,ninjaE3)
      acd229(2)=dotproduct(ninjaE3,spvak2k7)
      acd229(3)=abb229(22)
      acd229(4)=dotproduct(ninjaE3,spvak2l5)
      acd229(5)=abb229(42)
      acd229(6)=dotproduct(ninjaE3,spvak2l6)
      acd229(7)=abb229(36)
      acd229(8)=dotproduct(k3,ninjaE3)
      acd229(9)=dotproduct(k4,ninjaE3)
      acd229(10)=dotproduct(ninjaE3,spvak1k3)
      acd229(11)=abb229(16)
      acd229(12)=abb229(32)
      acd229(13)=abb229(25)
      acd229(14)=dotproduct(ninjaE3,spvak1k2)
      acd229(15)=abb229(23)
      acd229(16)=dotproduct(ninjaE3,spvak4k2)
      acd229(17)=abb229(24)
      acd229(18)=dotproduct(ninjaE3,spvak4k3)
      acd229(19)=abb229(35)
      acd229(20)=abb229(17)
      acd229(21)=abb229(29)
      acd229(22)=abb229(52)
      acd229(23)=abb229(48)
      acd229(24)=abb229(57)
      acd229(25)=abb229(45)
      acd229(26)=-acd229(1)+acd229(8)+acd229(9)
      acd229(27)=-acd229(7)*acd229(26)
      acd229(28)=acd229(18)*acd229(25)
      acd229(29)=acd229(16)*acd229(24)
      acd229(30)=acd229(14)*acd229(21)
      acd229(31)=acd229(10)*acd229(13)
      acd229(27)=acd229(31)+acd229(30)+acd229(28)+acd229(29)+acd229(27)
      acd229(27)=acd229(6)*acd229(27)
      acd229(28)=-acd229(5)*acd229(26)
      acd229(29)=acd229(18)*acd229(23)
      acd229(30)=acd229(16)*acd229(22)
      acd229(31)=acd229(14)*acd229(20)
      acd229(32)=acd229(10)*acd229(12)
      acd229(28)=acd229(32)+acd229(31)+acd229(29)+acd229(30)+acd229(28)
      acd229(28)=acd229(4)*acd229(28)
      acd229(26)=acd229(3)*acd229(26)
      acd229(29)=acd229(18)*acd229(19)
      acd229(30)=acd229(16)*acd229(17)
      acd229(31)=acd229(14)*acd229(15)
      acd229(32)=acd229(10)*acd229(11)
      acd229(26)=acd229(32)+acd229(31)+acd229(29)+acd229(30)+acd229(26)
      acd229(26)=acd229(2)*acd229(26)
      acd229(26)=acd229(26)+acd229(27)+acd229(28)
      brack(ninjaidxt2mu0)=acd229(26)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd229h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(103) :: acd229
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd229(1)=dotproduct(k2,ninjaE3)
      acd229(2)=dotproduct(ninjaE4,spvak2k7)
      acd229(3)=abb229(22)
      acd229(4)=dotproduct(ninjaE4,spvak2l5)
      acd229(5)=abb229(42)
      acd229(6)=dotproduct(ninjaE4,spvak2l6)
      acd229(7)=abb229(36)
      acd229(8)=dotproduct(k2,ninjaE4)
      acd229(9)=dotproduct(ninjaE3,spvak2k7)
      acd229(10)=dotproduct(ninjaE3,spvak2l5)
      acd229(11)=dotproduct(ninjaE3,spvak2l6)
      acd229(12)=dotproduct(k3,ninjaE3)
      acd229(13)=dotproduct(k3,ninjaE4)
      acd229(14)=dotproduct(k4,ninjaE3)
      acd229(15)=dotproduct(k4,ninjaE4)
      acd229(16)=dotproduct(ninjaE3,spvak1k3)
      acd229(17)=abb229(16)
      acd229(18)=abb229(32)
      acd229(19)=abb229(25)
      acd229(20)=dotproduct(ninjaE4,spvak1k3)
      acd229(21)=dotproduct(ninjaE4,spvak1k2)
      acd229(22)=abb229(23)
      acd229(23)=dotproduct(ninjaE4,spvak4k2)
      acd229(24)=abb229(24)
      acd229(25)=dotproduct(ninjaE4,spvak4k3)
      acd229(26)=abb229(35)
      acd229(27)=dotproduct(ninjaE3,spvak1k2)
      acd229(28)=abb229(17)
      acd229(29)=abb229(29)
      acd229(30)=abb229(52)
      acd229(31)=abb229(48)
      acd229(32)=dotproduct(ninjaE3,spvak4k2)
      acd229(33)=abb229(57)
      acd229(34)=abb229(45)
      acd229(35)=dotproduct(ninjaE3,spvak4k3)
      acd229(36)=abb229(26)
      acd229(37)=dotproduct(k1,ninjaE3)
      acd229(38)=abb229(55)
      acd229(39)=dotproduct(k2,ninjaA)
      acd229(40)=dotproduct(ninjaA,spvak2k7)
      acd229(41)=dotproduct(ninjaA,spvak2l5)
      acd229(42)=dotproduct(ninjaA,spvak2l6)
      acd229(43)=abb229(50)
      acd229(44)=dotproduct(k3,ninjaA)
      acd229(45)=abb229(194)
      acd229(46)=dotproduct(k4,ninjaA)
      acd229(47)=dotproduct(l5,ninjaE3)
      acd229(48)=abb229(102)
      acd229(49)=dotproduct(l6,ninjaE3)
      acd229(50)=dotproduct(k7,ninjaE3)
      acd229(51)=dotproduct(ninjaA,ninjaE3)
      acd229(52)=dotproduct(ninjaA,spvak1k3)
      acd229(53)=dotproduct(ninjaA,spvak1k2)
      acd229(54)=dotproduct(ninjaA,spvak4k2)
      acd229(55)=dotproduct(ninjaA,spvak4k3)
      acd229(56)=dotproduct(ninjaE3,spvak1l6)
      acd229(57)=abb229(15)
      acd229(58)=abb229(28)
      acd229(59)=abb229(20)
      acd229(60)=abb229(21)
      acd229(61)=abb229(27)
      acd229(62)=abb229(18)
      acd229(63)=dotproduct(ninjaE3,spvak1l5)
      acd229(64)=abb229(19)
      acd229(65)=abb229(31)
      acd229(66)=abb229(34)
      acd229(67)=dotproduct(ninjaE3,spvak1k7)
      acd229(68)=abb229(37)
      acd229(69)=dotproduct(k1,ninjaA)
      acd229(70)=dotproduct(l5,ninjaA)
      acd229(71)=dotproduct(l6,ninjaA)
      acd229(72)=dotproduct(k7,ninjaA)
      acd229(73)=dotproduct(ninjaA,ninjaA)
      acd229(74)=dotproduct(ninjaA,spvak1l6)
      acd229(75)=dotproduct(ninjaA,spvak1l5)
      acd229(76)=dotproduct(ninjaA,spvak1k7)
      acd229(77)=abb229(80)
      acd229(78)=acd229(34)*acd229(25)
      acd229(79)=acd229(33)*acd229(23)
      acd229(80)=acd229(29)*acd229(21)
      acd229(81)=acd229(19)*acd229(20)
      acd229(82)=-acd229(15)+acd229(8)-acd229(13)
      acd229(83)=acd229(82)*acd229(7)
      acd229(78)=acd229(83)+acd229(78)+acd229(79)+acd229(80)+acd229(81)
      acd229(78)=acd229(78)*acd229(11)
      acd229(79)=acd229(31)*acd229(25)
      acd229(80)=acd229(30)*acd229(23)
      acd229(81)=acd229(28)*acd229(21)
      acd229(83)=acd229(18)*acd229(20)
      acd229(84)=acd229(82)*acd229(5)
      acd229(79)=acd229(84)+acd229(79)+acd229(80)+acd229(81)+acd229(83)
      acd229(79)=acd229(79)*acd229(10)
      acd229(80)=acd229(26)*acd229(25)
      acd229(81)=acd229(24)*acd229(23)
      acd229(83)=acd229(22)*acd229(21)
      acd229(84)=acd229(17)*acd229(20)
      acd229(82)=acd229(82)*acd229(3)
      acd229(80)=-acd229(82)+acd229(80)+acd229(81)+acd229(83)+acd229(84)
      acd229(80)=acd229(80)*acd229(9)
      acd229(81)=acd229(35)*acd229(31)
      acd229(82)=acd229(32)*acd229(30)
      acd229(83)=acd229(27)*acd229(28)
      acd229(84)=acd229(16)*acd229(18)
      acd229(81)=acd229(84)+acd229(81)+acd229(82)+acd229(83)
      acd229(82)=acd229(81)*acd229(4)
      acd229(83)=acd229(35)*acd229(26)
      acd229(84)=acd229(32)*acd229(24)
      acd229(85)=acd229(27)*acd229(22)
      acd229(86)=acd229(16)*acd229(17)
      acd229(83)=acd229(86)+acd229(83)+acd229(84)+acd229(85)
      acd229(84)=acd229(83)*acd229(2)
      acd229(85)=acd229(35)*acd229(34)
      acd229(86)=acd229(32)*acd229(33)
      acd229(87)=acd229(27)*acd229(29)
      acd229(88)=acd229(16)*acd229(19)
      acd229(85)=acd229(86)+acd229(85)+acd229(87)+acd229(88)
      acd229(86)=acd229(85)*acd229(6)
      acd229(87)=acd229(7)*acd229(6)
      acd229(88)=acd229(5)*acd229(4)
      acd229(89)=acd229(3)*acd229(2)
      acd229(87)=acd229(87)+acd229(88)-acd229(89)
      acd229(88)=acd229(12)+acd229(14)
      acd229(89)=acd229(1)-acd229(88)
      acd229(87)=acd229(87)*acd229(89)
      acd229(78)=acd229(78)+acd229(79)+acd229(80)+acd229(87)+acd229(82)+acd229(&
      &84)+acd229(86)+acd229(36)
      acd229(79)=acd229(42)*acd229(85)
      acd229(80)=acd229(41)*acd229(81)
      acd229(81)=acd229(40)*acd229(83)
      acd229(82)=acd229(34)*acd229(55)
      acd229(83)=acd229(33)*acd229(54)
      acd229(84)=acd229(29)*acd229(53)
      acd229(85)=acd229(19)*acd229(52)
      acd229(82)=acd229(65)+acd229(82)+acd229(83)+acd229(84)+acd229(85)
      acd229(83)=acd229(44)+acd229(46)
      acd229(84)=acd229(39)-acd229(83)
      acd229(85)=acd229(7)*acd229(84)
      acd229(85)=acd229(85)+acd229(82)
      acd229(85)=acd229(11)*acd229(85)
      acd229(86)=acd229(31)*acd229(55)
      acd229(87)=acd229(30)*acd229(54)
      acd229(90)=acd229(28)*acd229(53)
      acd229(91)=acd229(18)*acd229(52)
      acd229(86)=acd229(61)+acd229(86)+acd229(87)+acd229(90)+acd229(91)
      acd229(87)=acd229(5)*acd229(84)
      acd229(87)=acd229(87)+acd229(86)
      acd229(87)=acd229(10)*acd229(87)
      acd229(90)=acd229(26)*acd229(55)
      acd229(91)=acd229(24)*acd229(54)
      acd229(92)=acd229(22)*acd229(53)
      acd229(93)=acd229(17)*acd229(52)
      acd229(90)=acd229(59)+acd229(90)+acd229(91)+acd229(92)+acd229(93)
      acd229(91)=-acd229(3)*acd229(84)
      acd229(91)=acd229(91)+acd229(90)
      acd229(91)=acd229(9)*acd229(91)
      acd229(92)=acd229(7)*acd229(42)
      acd229(93)=acd229(5)*acd229(41)
      acd229(94)=acd229(3)*acd229(40)
      acd229(92)=-acd229(94)+acd229(92)+acd229(93)
      acd229(89)=acd229(89)*acd229(92)
      acd229(88)=-acd229(45)*acd229(88)
      acd229(93)=acd229(68)*acd229(67)
      acd229(94)=acd229(64)*acd229(63)
      acd229(95)=acd229(57)*acd229(56)
      acd229(96)=acd229(38)*acd229(37)
      acd229(97)=acd229(36)*acd229(51)
      acd229(98)=acd229(47)+acd229(50)+acd229(49)
      acd229(98)=acd229(48)*acd229(98)
      acd229(99)=acd229(35)*acd229(66)
      acd229(100)=acd229(32)*acd229(62)
      acd229(101)=acd229(27)*acd229(60)
      acd229(102)=acd229(16)*acd229(58)
      acd229(103)=acd229(1)*acd229(43)
      acd229(79)=acd229(91)+acd229(87)+acd229(85)+acd229(81)+acd229(80)+acd229(&
      &79)+acd229(103)+acd229(102)+acd229(101)+acd229(100)+acd229(99)+acd229(98&
      &)+2.0_ki*acd229(97)+acd229(96)+acd229(95)+acd229(93)+acd229(94)+acd229(8&
      &9)+acd229(88)
      acd229(80)=ninjaP*acd229(78)
      acd229(81)=acd229(42)*acd229(82)
      acd229(82)=acd229(41)*acd229(86)
      acd229(85)=acd229(40)*acd229(90)
      acd229(84)=acd229(84)*acd229(92)
      acd229(83)=-acd229(45)*acd229(83)
      acd229(86)=acd229(68)*acd229(76)
      acd229(87)=acd229(64)*acd229(75)
      acd229(88)=acd229(57)*acd229(74)
      acd229(89)=acd229(38)*acd229(69)
      acd229(90)=acd229(36)*acd229(73)
      acd229(91)=acd229(70)+acd229(72)+acd229(71)
      acd229(91)=acd229(48)*acd229(91)
      acd229(92)=acd229(55)*acd229(66)
      acd229(93)=acd229(54)*acd229(62)
      acd229(94)=acd229(53)*acd229(60)
      acd229(95)=acd229(52)*acd229(58)
      acd229(96)=acd229(39)*acd229(43)
      acd229(80)=acd229(80)+acd229(85)+acd229(82)+acd229(81)+acd229(96)+acd229(&
      &95)+acd229(94)+acd229(93)+acd229(92)+acd229(91)+acd229(90)+acd229(89)+ac&
      &d229(88)+acd229(87)+acd229(77)+acd229(86)+acd229(84)+acd229(83)
      brack(ninjaidxt1mu0)=acd229(79)
      brack(ninjaidxt0mu0)=acd229(80)
      brack(ninjaidxt0mu2)=acd229(78)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d229h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
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
end module     p0_dbaru_epnebbbarg_d229h3l131
