module     p0_dbaru_epnebbbarg_d298h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d298h5l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd298h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd298
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd298h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(93) :: acd298
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd298(1)=dotproduct(k2,ninjaE3)
      acd298(2)=dotproduct(ninjaE3,spvak1k2)
      acd298(3)=dotproduct(ninjaE3,spvak7k2)
      acd298(4)=dotproduct(ninjaE3,spvak4k3)
      acd298(5)=abb298(71)
      acd298(6)=dotproduct(ninjaE3,spval6l5)
      acd298(7)=abb298(147)
      acd298(8)=dotproduct(ninjaE3,spvak1l5)
      acd298(9)=dotproduct(ninjaE3,spval6k2)
      acd298(10)=dotproduct(k1,ninjaE3)
      acd298(11)=abb298(93)
      acd298(12)=abb298(29)
      acd298(13)=dotproduct(ninjaE3,spvak7l5)
      acd298(14)=dotproduct(k2,ninjaA)
      acd298(15)=abb298(101)
      acd298(16)=dotproduct(ninjaA,spvak1k2)
      acd298(17)=dotproduct(ninjaA,spvak7k2)
      acd298(18)=dotproduct(ninjaA,spvak4k3)
      acd298(19)=abb298(60)
      acd298(20)=abb298(67)
      acd298(21)=abb298(207)
      acd298(22)=abb298(78)
      acd298(23)=abb298(186)
      acd298(24)=abb298(52)
      acd298(25)=dotproduct(ninjaE3,spvak1k3)
      acd298(26)=abb298(151)
      acd298(27)=dotproduct(ninjaE3,spval6k3)
      acd298(28)=abb298(196)
      acd298(29)=dotproduct(ninjaE3,spvak4k2)
      acd298(30)=abb298(76)
      acd298(31)=dotproduct(ninjaE3,spval5k2)
      acd298(32)=abb298(99)
      acd298(33)=abb298(108)
      acd298(34)=dotproduct(l5,ninjaE3)
      acd298(35)=abb298(40)
      acd298(36)=abb298(152)
      acd298(37)=abb298(149)
      acd298(38)=dotproduct(l6,ninjaE3)
      acd298(39)=abb298(15)
      acd298(40)=abb298(26)
      acd298(41)=dotproduct(k7,ninjaE3)
      acd298(42)=abb298(51)
      acd298(43)=dotproduct(ninjaA,ninjaE3)
      acd298(44)=abb298(21)
      acd298(45)=abb298(189)
      acd298(46)=abb298(118)
      acd298(47)=abb298(213)
      acd298(48)=abb298(110)
      acd298(49)=dotproduct(ninjaA,spvak1l5)
      acd298(50)=dotproduct(ninjaA,spval6k2)
      acd298(51)=dotproduct(ninjaA,spval6l5)
      acd298(52)=dotproduct(ninjaE3,spvak2k7)
      acd298(53)=abb298(22)
      acd298(54)=dotproduct(ninjaE3,spvak2k1)
      acd298(55)=abb298(25)
      acd298(56)=abb298(142)
      acd298(57)=dotproduct(ninjaE3,spval6k1)
      acd298(58)=abb298(65)
      acd298(59)=abb298(43)
      acd298(60)=abb298(153)
      acd298(61)=dotproduct(ninjaE3,spvak2k3)
      acd298(62)=abb298(63)
      acd298(63)=dotproduct(ninjaE3,spval6k7)
      acd298(64)=abb298(125)
      acd298(65)=dotproduct(ninjaE3,spvak2l6)
      acd298(66)=abb298(87)
      acd298(67)=abb298(146)
      acd298(68)=abb298(133)
      acd298(69)=abb298(50)
      acd298(70)=abb298(122)
      acd298(71)=abb298(111)
      acd298(72)=dotproduct(ninjaE3,spvak1k7)
      acd298(73)=dotproduct(ninjaE3,spvak1l6)
      acd298(74)=abb298(141)
      acd298(75)=abb298(105)
      acd298(76)=abb298(136)
      acd298(77)=abb298(72)
      acd298(78)=abb298(53)
      acd298(79)=acd298(6)*acd298(7)
      acd298(80)=-acd298(1)*acd298(5)
      acd298(79)=acd298(79)+acd298(80)
      acd298(79)=acd298(2)*acd298(79)
      acd298(80)=-acd298(9)*acd298(8)*acd298(7)
      acd298(79)=acd298(80)+acd298(79)
      acd298(79)=acd298(3)*acd298(4)*acd298(79)
      acd298(80)=acd298(65)*acd298(66)
      acd298(81)=acd298(61)*acd298(62)
      acd298(82)=acd298(54)*acd298(55)
      acd298(83)=acd298(52)*acd298(53)
      acd298(84)=acd298(57)*acd298(58)
      acd298(85)=acd298(63)*acd298(64)
      acd298(86)=acd298(34)*acd298(35)
      acd298(87)=acd298(38)*acd298(39)
      acd298(88)=-acd298(27)*acd298(60)
      acd298(89)=2.0_ki*acd298(43)
      acd298(90)=acd298(44)*acd298(89)
      acd298(91)=acd298(7)*acd298(18)
      acd298(91)=acd298(91)-acd298(56)
      acd298(92)=acd298(6)*acd298(91)
      acd298(93)=-acd298(5)*acd298(18)
      acd298(93)=acd298(19)+acd298(93)
      acd298(93)=acd298(1)*acd298(93)
      acd298(80)=acd298(93)+acd298(92)+acd298(90)+acd298(88)+acd298(87)+acd298(&
      &86)+acd298(85)+acd298(84)+acd298(83)+acd298(82)+acd298(80)+acd298(81)
      acd298(80)=acd298(2)*acd298(80)
      acd298(81)=acd298(31)*acd298(32)
      acd298(82)=acd298(29)*acd298(30)
      acd298(83)=acd298(27)*acd298(28)
      acd298(84)=acd298(25)*acd298(26)
      acd298(85)=acd298(6)*acd298(23)
      acd298(86)=acd298(1)*acd298(15)
      acd298(87)=acd298(3)*acd298(21)
      acd298(81)=acd298(87)+acd298(86)+acd298(85)+acd298(84)+acd298(83)+acd298(&
      &81)+acd298(82)
      acd298(81)=acd298(1)*acd298(81)
      acd298(82)=acd298(73)*acd298(74)
      acd298(83)=-acd298(64)*acd298(72)
      acd298(84)=acd298(10)*acd298(11)
      acd298(85)=acd298(25)*acd298(60)
      acd298(86)=-acd298(8)*acd298(91)
      acd298(87)=acd298(1)*acd298(22)
      acd298(82)=acd298(87)+acd298(86)+acd298(85)+acd298(84)+acd298(82)+acd298(&
      &83)
      acd298(82)=acd298(9)*acd298(82)
      acd298(83)=-acd298(5)*acd298(14)
      acd298(84)=acd298(7)*acd298(51)
      acd298(83)=acd298(84)+acd298(59)+acd298(83)
      acd298(83)=acd298(2)*acd298(83)
      acd298(84)=acd298(63)*acd298(77)
      acd298(85)=-acd298(7)*acd298(50)
      acd298(85)=acd298(68)+acd298(85)
      acd298(85)=acd298(8)*acd298(85)
      acd298(86)=acd298(7)*acd298(16)
      acd298(86)=acd298(75)+acd298(86)
      acd298(86)=acd298(6)*acd298(86)
      acd298(87)=-acd298(5)*acd298(16)
      acd298(87)=acd298(24)+acd298(87)
      acd298(87)=acd298(1)*acd298(87)
      acd298(88)=-acd298(7)*acd298(49)
      acd298(88)=acd298(71)+acd298(88)
      acd298(88)=acd298(9)*acd298(88)
      acd298(83)=acd298(83)+acd298(88)+acd298(87)+acd298(86)+acd298(84)+acd298(&
      &85)
      acd298(83)=acd298(4)*acd298(83)
      acd298(84)=acd298(89)*acd298(45)
      acd298(85)=acd298(73)*acd298(76)
      acd298(86)=-acd298(70)*acd298(72)
      acd298(87)=-acd298(25)*acd298(69)
      acd298(88)=acd298(38)+acd298(41)
      acd298(90)=-acd298(10)-acd298(88)
      acd298(90)=acd298(12)*acd298(90)
      acd298(85)=acd298(90)-acd298(84)+acd298(87)+acd298(85)+acd298(86)
      acd298(85)=acd298(6)*acd298(85)
      acd298(86)=acd298(63)*acd298(70)
      acd298(87)=acd298(38)*acd298(40)
      acd298(90)=acd298(27)*acd298(69)
      acd298(91)=acd298(12)*acd298(57)
      acd298(86)=acd298(91)+acd298(90)+acd298(86)+acd298(87)
      acd298(86)=acd298(8)*acd298(86)
      acd298(87)=acd298(27)*acd298(37)
      acd298(90)=acd298(25)*acd298(36)
      acd298(87)=acd298(87)+acd298(90)
      acd298(87)=acd298(34)*acd298(87)
      acd298(90)=acd298(27)*acd298(47)
      acd298(91)=acd298(25)*acd298(46)
      acd298(90)=acd298(90)+acd298(91)
      acd298(90)=acd298(90)*acd298(89)
      acd298(80)=acd298(83)+acd298(80)+acd298(82)+acd298(85)+acd298(86)+acd298(&
      &90)+acd298(81)+acd298(87)
      acd298(80)=acd298(3)*acd298(80)
      acd298(81)=acd298(41)*acd298(42)
      acd298(82)=acd298(48)*acd298(89)
      acd298(83)=acd298(13)*acd298(78)
      acd298(85)=acd298(7)*acd298(17)
      acd298(85)=acd298(85)-acd298(67)
      acd298(86)=-acd298(8)*acd298(85)
      acd298(87)=acd298(1)*acd298(33)
      acd298(81)=acd298(87)+acd298(86)+acd298(83)+acd298(81)+acd298(82)
      acd298(81)=acd298(9)*acd298(81)
      acd298(82)=acd298(6)*acd298(85)
      acd298(83)=-acd298(5)*acd298(17)
      acd298(83)=acd298(20)+acd298(83)
      acd298(83)=acd298(1)*acd298(83)
      acd298(82)=acd298(82)+acd298(83)
      acd298(82)=acd298(2)*acd298(82)
      acd298(81)=acd298(81)+acd298(82)
      acd298(81)=acd298(4)*acd298(81)
      acd298(82)=-acd298(10)+acd298(88)
      acd298(82)=acd298(12)*acd298(82)
      acd298(83)=-acd298(1)*acd298(23)
      acd298(82)=acd298(83)+acd298(84)+acd298(82)
      acd298(82)=acd298(9)*acd298(13)*acd298(82)
      acd298(80)=acd298(80)+acd298(82)+acd298(81)
      brack(ninjaidxt1mu0)=acd298(79)
      brack(ninjaidxt0mu0)=acd298(80)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d298h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd298h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k5
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d298h5l131
