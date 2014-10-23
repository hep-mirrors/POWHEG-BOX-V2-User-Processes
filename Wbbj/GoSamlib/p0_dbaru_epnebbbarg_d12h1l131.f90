module     p0_dbaru_epnebbbarg_d12h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d12h1l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd12h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd12
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd12(1)=dotproduct(k2,ninjaE3)
      acd12(2)=dotproduct(ninjaE3,spvak1k2)
      acd12(3)=dotproduct(ninjaE3,spvak4k3)
      acd12(4)=abb12(16)
      acd12(5)=dotproduct(ninjaE3,spval6l5)
      acd12(6)=abb12(15)
      acd12(7)=acd12(4)*acd12(1)
      acd12(8)=acd12(6)*acd12(5)
      acd12(7)=acd12(7)+acd12(8)
      acd12(7)=acd12(7)*acd12(3)*acd12(2)
      brack(ninjaidxt2mu0)=acd12(7)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd12h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(104) :: acd12
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd12(1)=dotproduct(k2,ninjaE3)
      acd12(2)=dotproduct(ninjaE3,spvak4k3)
      acd12(3)=dotproduct(ninjaE4,spvak1k2)
      acd12(4)=abb12(16)
      acd12(5)=dotproduct(ninjaE3,spvak1k2)
      acd12(6)=dotproduct(ninjaE4,spvak4k3)
      acd12(7)=abb12(47)
      acd12(8)=dotproduct(k2,ninjaE4)
      acd12(9)=dotproduct(ninjaE3,spval6l5)
      acd12(10)=abb12(15)
      acd12(11)=dotproduct(ninjaE4,spval6l5)
      acd12(12)=dotproduct(ninjaE3,spval6k2)
      acd12(13)=abb12(24)
      acd12(14)=abb12(46)
      acd12(15)=abb12(36)
      acd12(16)=dotproduct(ninjaE3,spvak1l5)
      acd12(17)=abb12(33)
      acd12(18)=dotproduct(ninjaE3,spvak4k2)
      acd12(19)=abb12(28)
      acd12(20)=dotproduct(k1,ninjaE3)
      acd12(21)=abb12(20)
      acd12(22)=dotproduct(k2,ninjaA)
      acd12(23)=dotproduct(k3,ninjaE3)
      acd12(24)=dotproduct(k4,ninjaE3)
      acd12(25)=dotproduct(ninjaA,ninjaE3)
      acd12(26)=dotproduct(ninjaA,spvak4k3)
      acd12(27)=dotproduct(ninjaA,spvak1k2)
      acd12(28)=abb12(10)
      acd12(29)=abb12(49)
      acd12(30)=abb12(35)
      acd12(31)=abb12(25)
      acd12(32)=abb12(27)
      acd12(33)=dotproduct(ninjaE3,spvak1k3)
      acd12(34)=abb12(30)
      acd12(35)=abb12(37)
      acd12(36)=abb12(22)
      acd12(37)=dotproduct(ninjaA,spval6l5)
      acd12(38)=abb12(9)
      acd12(39)=dotproduct(ninjaE3,spvak1k7)
      acd12(40)=abb12(18)
      acd12(41)=dotproduct(ninjaE3,spvak3k2)
      acd12(42)=abb12(31)
      acd12(43)=abb12(17)
      acd12(44)=abb12(41)
      acd12(45)=dotproduct(ninjaE3,spvak7k2)
      acd12(46)=abb12(50)
      acd12(47)=abb12(21)
      acd12(48)=abb12(29)
      acd12(49)=abb12(32)
      acd12(50)=dotproduct(k1,ninjaA)
      acd12(51)=abb12(23)
      acd12(52)=dotproduct(k3,ninjaA)
      acd12(53)=dotproduct(k4,ninjaA)
      acd12(54)=dotproduct(ninjaA,ninjaA)
      acd12(55)=dotproduct(ninjaA,spval6k2)
      acd12(56)=dotproduct(ninjaA,spvak1l5)
      acd12(57)=dotproduct(ninjaA,spvak4k2)
      acd12(58)=dotproduct(ninjaA,spvak1k3)
      acd12(59)=abb12(39)
      acd12(60)=abb12(40)
      acd12(61)=abb12(12)
      acd12(62)=dotproduct(ninjaA,spvak1k7)
      acd12(63)=dotproduct(ninjaA,spvak3k2)
      acd12(64)=dotproduct(ninjaA,spvak7k2)
      acd12(65)=abb12(34)
      acd12(66)=abb12(11)
      acd12(67)=abb12(13)
      acd12(68)=abb12(14)
      acd12(69)=abb12(19)
      acd12(70)=acd12(13)*acd12(12)
      acd12(71)=acd12(17)*acd12(16)
      acd12(70)=acd12(70)+acd12(71)
      acd12(71)=acd12(19)*acd12(18)
      acd12(72)=acd12(7)*acd12(1)
      acd12(73)=acd12(71)+acd12(72)
      acd12(74)=acd12(14)*acd12(9)
      acd12(75)=acd12(15)*acd12(5)
      acd12(74)=acd12(73)+acd12(74)+acd12(75)+acd12(70)
      acd12(75)=acd12(10)*acd12(9)
      acd12(76)=acd12(75)*acd12(5)
      acd12(77)=acd12(4)*acd12(5)
      acd12(78)=acd12(77)*acd12(1)
      acd12(76)=acd12(76)+acd12(78)
      acd12(76)=acd12(76)*acd12(6)
      acd12(79)=acd12(4)*acd12(1)
      acd12(79)=acd12(79)+acd12(75)
      acd12(80)=acd12(2)*acd12(79)
      acd12(81)=acd12(80)*acd12(3)
      acd12(76)=acd12(76)+acd12(81)
      acd12(81)=acd12(10)*acd12(5)
      acd12(82)=acd12(81)*acd12(11)
      acd12(83)=acd12(77)*acd12(8)
      acd12(82)=acd12(82)+acd12(83)
      acd12(83)=acd12(2)*acd12(82)
      acd12(83)=acd12(83)+acd12(74)+acd12(76)
      acd12(84)=acd12(21)*acd12(20)
      acd12(85)=acd12(40)*acd12(39)
      acd12(86)=acd12(41)*acd12(19)
      acd12(87)=acd12(45)*acd12(46)
      acd12(84)=-acd12(84)-acd12(85)+acd12(86)-acd12(87)
      acd12(85)=acd12(22)*acd12(77)
      acd12(86)=acd12(37)*acd12(81)
      acd12(87)=acd12(28)*acd12(1)
      acd12(88)=acd12(38)*acd12(12)
      acd12(89)=acd12(42)*acd12(5)
      acd12(90)=acd12(43)*acd12(16)
      acd12(91)=acd12(44)*acd12(18)
      acd12(85)=acd12(89)+acd12(91)+acd12(90)+acd12(88)+acd12(87)+acd12(86)+acd&
      &12(85)-acd12(84)
      acd12(85)=acd12(2)*acd12(85)
      acd12(86)=acd12(49)*acd12(33)
      acd12(87)=acd12(30)*acd12(1)
      acd12(88)=acd12(47)*acd12(5)
      acd12(89)=acd12(48)*acd12(18)
      acd12(87)=acd12(86)+acd12(89)+acd12(88)+acd12(87)
      acd12(87)=acd12(9)*acd12(87)
      acd12(88)=2.0_ki*acd12(25)
      acd12(74)=acd12(88)*acd12(74)
      acd12(89)=acd12(35)*acd12(5)
      acd12(72)=acd12(89)-acd12(72)
      acd12(89)=acd12(24)+acd12(23)
      acd12(90)=-acd12(89)*acd12(72)
      acd12(91)=acd12(34)*acd12(33)
      acd12(92)=acd12(32)*acd12(18)
      acd12(92)=acd12(91)+acd12(92)
      acd12(92)=acd12(1)*acd12(92)
      acd12(93)=acd12(26)*acd12(5)
      acd12(75)=acd12(75)*acd12(93)
      acd12(80)=acd12(27)*acd12(80)
      acd12(78)=acd12(26)*acd12(78)
      acd12(94)=acd12(89)-acd12(1)
      acd12(95)=acd12(94)*acd12(29)
      acd12(96)=acd12(12)*acd12(95)
      acd12(94)=acd12(94)*acd12(31)
      acd12(97)=-acd12(16)*acd12(94)
      acd12(98)=acd12(89)*acd12(36)
      acd12(99)=acd12(18)*acd12(98)
      acd12(74)=acd12(99)+acd12(97)+acd12(96)+acd12(80)+acd12(78)+acd12(75)+acd&
      &12(74)+acd12(87)+acd12(92)+acd12(90)+acd12(85)
      acd12(75)=ninjaP*acd12(82)
      acd12(78)=acd12(50)*acd12(21)
      acd12(80)=acd12(62)*acd12(40)
      acd12(82)=-acd12(63)*acd12(19)
      acd12(85)=acd12(64)*acd12(46)
      acd12(75)=acd12(65)+acd12(85)+acd12(82)+acd12(80)+acd12(78)+acd12(75)
      acd12(75)=acd12(2)*acd12(75)
      acd12(78)=-acd12(26)*acd12(84)
      acd12(80)=acd12(29)*acd12(12)
      acd12(82)=acd12(31)*acd12(16)
      acd12(80)=acd12(80)-acd12(82)
      acd12(82)=acd12(7)*acd12(89)
      acd12(77)=acd12(77)*acd12(26)
      acd12(77)=acd12(91)+acd12(77)+acd12(82)-acd12(80)
      acd12(77)=acd12(22)*acd12(77)
      acd12(82)=acd12(36)*acd12(18)
      acd12(72)=acd12(82)+acd12(80)-acd12(72)
      acd12(80)=acd12(53)+acd12(52)
      acd12(72)=acd12(72)*acd12(80)
      acd12(80)=acd12(26)*acd12(81)
      acd12(81)=acd12(27)*acd12(2)
      acd12(82)=acd12(10)*acd12(81)
      acd12(80)=acd12(86)+acd12(80)+acd12(82)
      acd12(80)=acd12(37)*acd12(80)
      acd12(71)=acd12(71)+acd12(76)
      acd12(71)=ninjaP*acd12(71)
      acd12(76)=acd12(54)+ninjaP
      acd12(70)=acd12(76)*acd12(70)
      acd12(82)=-acd12(35)*acd12(27)
      acd12(82)=acd12(60)+acd12(82)
      acd12(82)=acd12(89)*acd12(82)
      acd12(84)=acd12(22)*acd12(88)
      acd12(85)=ninjaP*acd12(1)
      acd12(84)=acd12(84)+acd12(85)
      acd12(84)=acd12(7)*acd12(84)
      acd12(79)=acd12(26)*acd12(79)
      acd12(85)=acd12(22)*acd12(2)
      acd12(86)=acd12(4)*acd12(85)
      acd12(79)=acd12(86)+acd12(79)
      acd12(79)=acd12(27)*acd12(79)
      acd12(73)=acd12(54)*acd12(73)
      acd12(86)=acd12(19)*acd12(88)
      acd12(86)=acd12(86)+acd12(98)
      acd12(86)=acd12(57)*acd12(86)
      acd12(87)=acd12(9)*acd12(76)
      acd12(89)=acd12(37)*acd12(88)
      acd12(87)=acd12(89)+acd12(87)
      acd12(87)=acd12(14)*acd12(87)
      acd12(76)=acd12(5)*acd12(76)
      acd12(89)=acd12(27)*acd12(88)
      acd12(76)=acd12(89)+acd12(76)
      acd12(76)=acd12(15)*acd12(76)
      acd12(89)=acd12(13)*acd12(88)
      acd12(89)=acd12(95)+acd12(89)
      acd12(89)=acd12(55)*acd12(89)
      acd12(90)=acd12(17)*acd12(88)
      acd12(90)=-acd12(94)+acd12(90)
      acd12(90)=acd12(56)*acd12(90)
      acd12(91)=acd12(26)*acd12(1)
      acd12(85)=acd12(91)+acd12(85)
      acd12(85)=acd12(28)*acd12(85)
      acd12(91)=acd12(22)*acd12(9)
      acd12(92)=acd12(37)*acd12(1)
      acd12(91)=acd12(91)+acd12(92)
      acd12(91)=acd12(30)*acd12(91)
      acd12(92)=acd12(22)*acd12(18)
      acd12(94)=acd12(57)*acd12(1)
      acd12(92)=acd12(92)+acd12(94)
      acd12(92)=acd12(32)*acd12(92)
      acd12(94)=acd12(12)*acd12(26)
      acd12(95)=acd12(55)*acd12(2)
      acd12(94)=acd12(94)+acd12(95)
      acd12(94)=acd12(38)*acd12(94)
      acd12(81)=acd12(93)+acd12(81)
      acd12(81)=acd12(42)*acd12(81)
      acd12(93)=acd12(16)*acd12(26)
      acd12(95)=acd12(56)*acd12(2)
      acd12(93)=acd12(93)+acd12(95)
      acd12(93)=acd12(43)*acd12(93)
      acd12(95)=acd12(26)*acd12(18)
      acd12(96)=acd12(57)*acd12(2)
      acd12(95)=acd12(95)+acd12(96)
      acd12(95)=acd12(44)*acd12(95)
      acd12(96)=acd12(27)*acd12(9)
      acd12(97)=acd12(37)*acd12(5)
      acd12(96)=acd12(96)+acd12(97)
      acd12(96)=acd12(47)*acd12(96)
      acd12(97)=acd12(37)*acd12(18)
      acd12(98)=acd12(57)*acd12(9)
      acd12(97)=acd12(97)+acd12(98)
      acd12(97)=acd12(48)*acd12(97)
      acd12(98)=acd12(34)*acd12(1)
      acd12(99)=acd12(49)*acd12(9)
      acd12(98)=acd12(98)+acd12(99)
      acd12(98)=acd12(58)*acd12(98)
      acd12(99)=acd12(51)*acd12(20)
      acd12(100)=acd12(59)*acd12(1)
      acd12(88)=acd12(61)*acd12(88)
      acd12(101)=acd12(66)*acd12(39)
      acd12(102)=acd12(67)*acd12(41)
      acd12(103)=acd12(68)*acd12(9)
      acd12(104)=acd12(69)*acd12(18)
      acd12(70)=acd12(104)+acd12(103)+acd12(102)+acd12(101)+acd12(88)+acd12(100&
      &)+acd12(99)+acd12(98)+acd12(97)+acd12(96)+acd12(95)+acd12(93)+acd12(81)+&
      &acd12(94)+acd12(92)+acd12(91)+acd12(85)+acd12(90)+acd12(89)+acd12(76)+ac&
      &d12(87)+acd12(86)+acd12(73)+acd12(79)+acd12(84)+acd12(75)+acd12(77)+acd1&
      &2(78)+acd12(71)+acd12(82)+acd12(80)+acd12(72)+acd12(70)
      brack(ninjaidxt1mu0)=acd12(74)
      brack(ninjaidxt0mu0)=acd12(70)
      brack(ninjaidxt0mu2)=acd12(83)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d12h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd12h1
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
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d12h1l131
