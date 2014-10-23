module     p0_dbaru_epnebbbarg_d311h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d311h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd311h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd311
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd311h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(98) :: acd311
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd311(1)=dotproduct(k2,ninjaE3)
      acd311(2)=dotproduct(ninjaE3,spvak2k7)
      acd311(3)=dotproduct(ninjaE3,spval6k2)
      acd311(4)=abb311(35)
      acd311(5)=dotproduct(k3,ninjaE3)
      acd311(6)=dotproduct(ninjaE3,spvak4k2)
      acd311(7)=abb311(99)
      acd311(8)=dotproduct(k4,ninjaE3)
      acd311(9)=abb311(47)
      acd311(10)=abb311(36)
      acd311(11)=dotproduct(ninjaE3,spvak4k3)
      acd311(12)=abb311(52)
      acd311(13)=abb311(45)
      acd311(14)=dotproduct(ninjaE3,spvak3k2)
      acd311(15)=abb311(56)
      acd311(16)=dotproduct(k2,ninjaA)
      acd311(17)=abb311(13)
      acd311(18)=abb311(38)
      acd311(19)=dotproduct(l6,ninjaE3)
      acd311(20)=abb311(42)
      acd311(21)=dotproduct(k7,ninjaE3)
      acd311(22)=abb311(26)
      acd311(23)=dotproduct(ninjaA,ninjaE3)
      acd311(24)=abb311(105)
      acd311(25)=dotproduct(ninjaA,spvak2k7)
      acd311(26)=dotproduct(ninjaA,spval6k2)
      acd311(27)=abb311(53)
      acd311(28)=abb311(48)
      acd311(29)=abb311(69)
      acd311(30)=dotproduct(ninjaE3,spvak1k2)
      acd311(31)=abb311(18)
      acd311(32)=abb311(21)
      acd311(33)=dotproduct(ninjaE3,spval6k7)
      acd311(34)=abb311(59)
      acd311(35)=dotproduct(k3,ninjaA)
      acd311(36)=abb311(142)
      acd311(37)=abb311(139)
      acd311(38)=abb311(71)
      acd311(39)=dotproduct(ninjaA,spvak4k2)
      acd311(40)=abb311(76)
      acd311(41)=abb311(102)
      acd311(42)=abb311(84)
      acd311(43)=dotproduct(k4,ninjaA)
      acd311(44)=abb311(54)
      acd311(45)=abb311(66)
      acd311(46)=abb311(104)
      acd311(47)=abb311(78)
      acd311(48)=abb311(50)
      acd311(49)=abb311(80)
      acd311(50)=abb311(160)
      acd311(51)=abb311(57)
      acd311(52)=abb311(43)
      acd311(53)=abb311(62)
      acd311(54)=dotproduct(ninjaA,spvak4k3)
      acd311(55)=dotproduct(ninjaA,spvak3k2)
      acd311(56)=abb311(11)
      acd311(57)=abb311(25)
      acd311(58)=dotproduct(ninjaE3,spval6k3)
      acd311(59)=abb311(14)
      acd311(60)=abb311(28)
      acd311(61)=abb311(17)
      acd311(62)=abb311(51)
      acd311(63)=dotproduct(ninjaE3,spval5k3)
      acd311(64)=abb311(41)
      acd311(65)=dotproduct(ninjaE3,spvak7k2)
      acd311(66)=abb311(60)
      acd311(67)=dotproduct(ninjaE3,spvak1k3)
      acd311(68)=abb311(63)
      acd311(69)=dotproduct(ninjaE3,spval5k2)
      acd311(70)=abb311(74)
      acd311(71)=abb311(98)
      acd311(72)=abb311(12)
      acd311(73)=abb311(15)
      acd311(74)=abb311(107)
      acd311(75)=abb311(30)
      acd311(76)=abb311(19)
      acd311(77)=abb311(31)
      acd311(78)=abb311(77)
      acd311(79)=abb311(109)
      acd311(80)=acd311(5)+acd311(8)
      acd311(81)=-acd311(7)*acd311(80)
      acd311(82)=acd311(11)*acd311(12)
      acd311(83)=acd311(3)*acd311(10)
      acd311(84)=acd311(6)*acd311(9)
      acd311(81)=acd311(84)+acd311(83)+acd311(82)+acd311(81)
      acd311(81)=acd311(6)*acd311(81)
      acd311(82)=acd311(80)-acd311(1)
      acd311(83)=acd311(4)*acd311(82)
      acd311(84)=acd311(11)*acd311(13)
      acd311(83)=acd311(84)+acd311(83)
      acd311(83)=acd311(3)*acd311(83)
      acd311(84)=acd311(14)*acd311(15)
      acd311(85)=acd311(11)*acd311(84)
      acd311(81)=acd311(81)+acd311(85)+acd311(83)
      acd311(81)=acd311(2)*acd311(81)
      acd311(83)=acd311(12)*acd311(54)
      acd311(85)=acd311(39)*acd311(9)
      acd311(86)=acd311(26)*acd311(10)
      acd311(87)=acd311(35)+acd311(43)
      acd311(88)=-acd311(7)*acd311(87)
      acd311(83)=acd311(88)+acd311(86)+2.0_ki*acd311(85)+acd311(56)+acd311(83)
      acd311(83)=acd311(6)*acd311(83)
      acd311(85)=acd311(15)*acd311(55)
      acd311(86)=acd311(39)*acd311(12)
      acd311(88)=acd311(26)*acd311(13)
      acd311(85)=acd311(88)+acd311(86)+acd311(61)+acd311(85)
      acd311(85)=acd311(11)*acd311(85)
      acd311(86)=acd311(13)*acd311(54)
      acd311(88)=acd311(39)*acd311(10)
      acd311(87)=-acd311(16)+acd311(87)
      acd311(87)=acd311(4)*acd311(87)
      acd311(86)=acd311(87)+acd311(88)+acd311(57)+acd311(86)
      acd311(86)=acd311(3)*acd311(86)
      acd311(87)=acd311(7)*acd311(39)
      acd311(88)=acd311(4)*acd311(26)
      acd311(87)=acd311(40)+acd311(87)-acd311(88)
      acd311(87)=-acd311(87)*acd311(80)
      acd311(89)=acd311(69)*acd311(70)
      acd311(90)=acd311(67)*acd311(68)
      acd311(91)=acd311(65)*acd311(66)
      acd311(92)=acd311(63)*acd311(64)
      acd311(93)=acd311(58)*acd311(59)
      acd311(94)=acd311(54)*acd311(84)
      acd311(95)=acd311(30)*acd311(60)
      acd311(96)=acd311(21)*acd311(48)
      acd311(97)=acd311(19)*acd311(44)
      acd311(98)=acd311(33)*acd311(62)
      acd311(88)=acd311(27)-acd311(88)
      acd311(88)=acd311(1)*acd311(88)
      acd311(83)=acd311(83)+acd311(86)+acd311(85)+acd311(88)+acd311(98)+acd311(&
      &97)+acd311(96)+acd311(95)+acd311(94)+acd311(93)+acd311(92)+acd311(91)+ac&
      &d311(89)+acd311(90)+acd311(87)
      acd311(83)=acd311(2)*acd311(83)
      acd311(85)=acd311(25)*acd311(7)
      acd311(85)=acd311(85)+acd311(41)
      acd311(85)=-acd311(85)*acd311(80)
      acd311(86)=acd311(30)*acd311(73)
      acd311(87)=2.0_ki*acd311(23)
      acd311(88)=acd311(51)*acd311(87)
      acd311(89)=acd311(21)*acd311(49)
      acd311(90)=acd311(19)*acd311(45)
      acd311(91)=acd311(33)*acd311(75)
      acd311(92)=acd311(1)*acd311(28)
      acd311(93)=acd311(25)*acd311(12)
      acd311(93)=acd311(74)+acd311(93)
      acd311(93)=acd311(11)*acd311(93)
      acd311(94)=acd311(25)*acd311(10)
      acd311(94)=acd311(72)+acd311(94)
      acd311(94)=acd311(3)*acd311(94)
      acd311(95)=acd311(25)*acd311(9)
      acd311(95)=acd311(71)+acd311(95)
      acd311(95)=acd311(6)*acd311(95)
      acd311(85)=acd311(95)+acd311(94)+acd311(93)+acd311(92)+acd311(91)+acd311(&
      &90)+acd311(89)+acd311(86)+acd311(88)+acd311(85)
      acd311(85)=acd311(6)*acd311(85)
      acd311(86)=acd311(14)*acd311(79)
      acd311(88)=acd311(30)*acd311(77)
      acd311(89)=acd311(52)*acd311(87)
      acd311(90)=acd311(21)*acd311(50)
      acd311(91)=acd311(19)*acd311(46)
      acd311(92)=acd311(33)*acd311(78)
      acd311(84)=acd311(25)*acd311(84)
      acd311(93)=acd311(1)*acd311(32)
      acd311(84)=acd311(93)+acd311(84)+acd311(92)+acd311(91)+acd311(90)+acd311(&
      &89)+acd311(86)+acd311(88)
      acd311(84)=acd311(11)*acd311(84)
      acd311(86)=acd311(18)*acd311(80)
      acd311(88)=acd311(30)*acd311(31)
      acd311(89)=acd311(24)*acd311(87)
      acd311(90)=acd311(21)*acd311(22)
      acd311(91)=acd311(19)*acd311(20)
      acd311(92)=acd311(33)*acd311(34)
      acd311(93)=acd311(1)*acd311(17)
      acd311(86)=acd311(93)+acd311(92)+acd311(91)+acd311(90)-acd311(88)+acd311(&
      &89)+acd311(86)
      acd311(86)=acd311(1)*acd311(86)
      acd311(89)=acd311(87)*acd311(38)
      acd311(90)=acd311(21)*acd311(37)
      acd311(91)=acd311(19)*acd311(36)
      acd311(92)=acd311(33)*acd311(42)
      acd311(88)=acd311(89)-acd311(90)-acd311(91)+acd311(92)-acd311(88)
      acd311(80)=-acd311(88)*acd311(80)
      acd311(88)=-acd311(19)+acd311(21)
      acd311(88)=acd311(47)*acd311(88)
      acd311(87)=acd311(53)*acd311(87)
      acd311(87)=acd311(87)+acd311(88)
      acd311(87)=acd311(33)*acd311(87)
      acd311(88)=acd311(4)*acd311(25)
      acd311(88)=acd311(88)-acd311(29)
      acd311(82)=acd311(88)*acd311(82)
      acd311(88)=acd311(25)*acd311(13)
      acd311(88)=acd311(76)+acd311(88)
      acd311(88)=acd311(11)*acd311(88)
      acd311(82)=acd311(88)+acd311(82)
      acd311(82)=acd311(3)*acd311(82)
      acd311(80)=acd311(83)+acd311(85)+acd311(82)+acd311(84)+acd311(86)+acd311(&
      &87)+acd311(80)
      brack(ninjaidxt1mu0)=acd311(81)
      brack(ninjaidxt0mu0)=acd311(80)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d311h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd311h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6
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
end module     p0_dbaru_epnebbbarg_d311h0l131
