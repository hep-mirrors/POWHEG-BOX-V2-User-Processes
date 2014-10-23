module     p0_dbaru_epnebbbarg_d126h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d126h1l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd126h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd126
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd126(1)=dotproduct(k2,ninjaE3)
      acd126(2)=dotproduct(ninjaE3,spvak2k7)
      acd126(3)=dotproduct(ninjaE3,spvak4k3)
      acd126(4)=abb126(28)
      acd126(5)=dotproduct(l5,ninjaE3)
      acd126(6)=abb126(39)
      acd126(7)=dotproduct(l6,ninjaE3)
      acd126(8)=dotproduct(ninjaE3,spval6l5)
      acd126(9)=abb126(12)
      acd126(10)=dotproduct(ninjaE3,spval6k2)
      acd126(11)=abb126(13)
      acd126(12)=dotproduct(ninjaE3,spvak1k2)
      acd126(13)=abb126(15)
      acd126(14)=dotproduct(ninjaE3,spvak1l5)
      acd126(15)=abb126(22)
      acd126(16)=-acd126(7)-acd126(5)
      acd126(16)=acd126(6)*acd126(16)
      acd126(17)=acd126(4)*acd126(1)
      acd126(18)=acd126(9)*acd126(8)
      acd126(19)=acd126(11)*acd126(10)
      acd126(20)=acd126(13)*acd126(12)
      acd126(21)=acd126(15)*acd126(14)
      acd126(16)=acd126(21)+acd126(20)+acd126(19)+acd126(18)+acd126(17)+acd126(&
      &16)
      acd126(16)=acd126(16)*acd126(3)*acd126(2)
      brack(ninjaidxt2mu0)=acd126(16)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd126h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(95) :: acd126
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd126(1)=dotproduct(k2,ninjaE3)
      acd126(2)=dotproduct(ninjaE3,spvak2k7)
      acd126(3)=dotproduct(ninjaE4,spvak4k3)
      acd126(4)=abb126(28)
      acd126(5)=dotproduct(ninjaE3,spvak4k3)
      acd126(6)=dotproduct(ninjaE4,spvak2k7)
      acd126(7)=abb126(20)
      acd126(8)=dotproduct(k2,ninjaE4)
      acd126(9)=dotproduct(l5,ninjaE3)
      acd126(10)=abb126(39)
      acd126(11)=abb126(33)
      acd126(12)=dotproduct(l5,ninjaE4)
      acd126(13)=dotproduct(l6,ninjaE3)
      acd126(14)=dotproduct(l6,ninjaE4)
      acd126(15)=dotproduct(ninjaE3,spvak1k7)
      acd126(16)=abb126(14)
      acd126(17)=dotproduct(ninjaE3,spval6k2)
      acd126(18)=abb126(13)
      acd126(19)=dotproduct(ninjaE4,spval6k2)
      acd126(20)=dotproduct(ninjaE4,spval6l5)
      acd126(21)=abb126(12)
      acd126(22)=dotproduct(ninjaE4,spvak1k2)
      acd126(23)=abb126(15)
      acd126(24)=dotproduct(ninjaE4,spvak1l5)
      acd126(25)=abb126(22)
      acd126(26)=dotproduct(ninjaE3,spval6l5)
      acd126(27)=dotproduct(ninjaE3,spvak1k2)
      acd126(28)=dotproduct(ninjaE3,spvak1l5)
      acd126(29)=abb126(30)
      acd126(30)=abb126(16)
      acd126(31)=abb126(44)
      acd126(32)=dotproduct(k2,ninjaA)
      acd126(33)=dotproduct(k7,ninjaE3)
      acd126(34)=abb126(54)
      acd126(35)=dotproduct(ninjaA,ninjaE3)
      acd126(36)=dotproduct(ninjaA,spvak2k7)
      acd126(37)=dotproduct(ninjaA,spvak4k3)
      acd126(38)=abb126(32)
      acd126(39)=dotproduct(k3,ninjaE3)
      acd126(40)=abb126(49)
      acd126(41)=dotproduct(k4,ninjaE3)
      acd126(42)=dotproduct(l5,ninjaA)
      acd126(43)=abb126(47)
      acd126(44)=abb126(52)
      acd126(45)=dotproduct(l6,ninjaA)
      acd126(46)=abb126(19)
      acd126(47)=abb126(41)
      acd126(48)=abb126(46)
      acd126(49)=dotproduct(ninjaA,spval6k2)
      acd126(50)=dotproduct(ninjaA,spval6l5)
      acd126(51)=dotproduct(ninjaA,spvak1k2)
      acd126(52)=dotproduct(ninjaA,spvak1l5)
      acd126(53)=abb126(26)
      acd126(54)=abb126(18)
      acd126(55)=abb126(11)
      acd126(56)=abb126(17)
      acd126(57)=abb126(25)
      acd126(58)=dotproduct(ninjaE3,spvak1k3)
      acd126(59)=abb126(23)
      acd126(60)=dotproduct(k7,ninjaA)
      acd126(61)=dotproduct(ninjaA,ninjaA)
      acd126(62)=abb126(45)
      acd126(63)=dotproduct(k3,ninjaA)
      acd126(64)=abb126(35)
      acd126(65)=dotproduct(k4,ninjaA)
      acd126(66)=abb126(43)
      acd126(67)=dotproduct(ninjaA,spvak1k7)
      acd126(68)=abb126(31)
      acd126(69)=abb126(24)
      acd126(70)=dotproduct(ninjaA,spvak1k3)
      acd126(71)=abb126(10)
      acd126(72)=abb126(21)
      acd126(73)=abb126(37)
      acd126(74)=abb126(48)
      acd126(75)=abb126(42)
      acd126(76)=acd126(12)+acd126(14)
      acd126(76)=acd126(76)*acd126(10)
      acd126(77)=acd126(25)*acd126(24)
      acd126(78)=acd126(23)*acd126(22)
      acd126(79)=acd126(21)*acd126(20)
      acd126(80)=acd126(18)*acd126(19)
      acd126(81)=acd126(4)*acd126(8)
      acd126(76)=-acd126(77)-acd126(78)-acd126(79)-acd126(80)+acd126(76)-acd126&
      &(81)
      acd126(76)=acd126(76)*acd126(5)
      acd126(77)=acd126(25)*acd126(28)
      acd126(78)=acd126(23)*acd126(27)
      acd126(79)=acd126(26)*acd126(21)
      acd126(80)=acd126(17)*acd126(18)
      acd126(81)=acd126(1)*acd126(4)
      acd126(77)=acd126(81)+acd126(77)+acd126(78)+acd126(79)+acd126(80)
      acd126(78)=acd126(9)+acd126(13)
      acd126(79)=acd126(78)*acd126(10)
      acd126(79)=acd126(79)-acd126(77)
      acd126(80)=acd126(3)*acd126(79)
      acd126(76)=acd126(76)-acd126(29)+acd126(80)
      acd126(80)=-acd126(2)*acd126(76)
      acd126(81)=acd126(26)*acd126(31)
      acd126(82)=acd126(17)*acd126(30)
      acd126(83)=acd126(78)*acd126(11)
      acd126(84)=acd126(1)*acd126(7)
      acd126(85)=acd126(15)*acd126(16)
      acd126(81)=acd126(85)+acd126(81)+acd126(82)+acd126(83)+acd126(84)
      acd126(82)=acd126(6)*acd126(79)
      acd126(83)=-acd126(5)*acd126(82)
      acd126(80)=acd126(80)+acd126(83)+acd126(81)
      acd126(77)=acd126(77)*acd126(37)
      acd126(83)=acd126(10)*acd126(37)
      acd126(83)=acd126(83)+acd126(44)
      acd126(84)=acd126(83)*acd126(78)
      acd126(86)=acd126(39)+acd126(41)
      acd126(87)=acd126(86)+acd126(33)
      acd126(87)=acd126(87)*acd126(40)
      acd126(88)=acd126(59)*acd126(58)
      acd126(89)=acd126(15)*acd126(53)
      acd126(90)=acd126(26)*acd126(57)
      acd126(91)=acd126(17)*acd126(55)
      acd126(92)=acd126(1)*acd126(38)
      acd126(93)=2.0_ki*acd126(35)
      acd126(94)=acd126(93)*acd126(29)
      acd126(77)=acd126(88)+acd126(89)-acd126(84)+acd126(77)-acd126(87)+acd126(&
      &90)+acd126(91)+acd126(92)+acd126(94)
      acd126(84)=acd126(25)*acd126(52)
      acd126(87)=acd126(23)*acd126(51)
      acd126(88)=acd126(21)*acd126(50)
      acd126(89)=acd126(18)*acd126(49)
      acd126(90)=acd126(4)*acd126(32)
      acd126(84)=acd126(87)+acd126(84)+acd126(89)+acd126(90)+acd126(88)+acd126(&
      &56)
      acd126(87)=acd126(42)+acd126(45)
      acd126(88)=acd126(87)*acd126(10)
      acd126(88)=acd126(84)-acd126(88)
      acd126(89)=acd126(5)*acd126(88)
      acd126(89)=acd126(89)+acd126(77)
      acd126(89)=acd126(2)*acd126(89)
      acd126(79)=-acd126(36)*acd126(79)
      acd126(90)=acd126(15)*acd126(54)
      acd126(79)=acd126(90)+acd126(79)
      acd126(79)=acd126(5)*acd126(79)
      acd126(90)=acd126(33)*acd126(43)
      acd126(91)=acd126(93)*acd126(11)
      acd126(90)=acd126(90)+acd126(91)
      acd126(90)=acd126(90)*acd126(78)
      acd126(85)=acd126(93)*acd126(85)
      acd126(91)=acd126(31)*acd126(93)
      acd126(92)=acd126(33)*acd126(48)
      acd126(91)=acd126(91)+acd126(92)
      acd126(91)=acd126(26)*acd126(91)
      acd126(92)=acd126(30)*acd126(93)
      acd126(94)=acd126(33)*acd126(47)
      acd126(92)=acd126(92)+acd126(94)
      acd126(92)=acd126(17)*acd126(92)
      acd126(94)=acd126(7)*acd126(93)
      acd126(95)=acd126(33)*acd126(34)
      acd126(94)=acd126(94)+acd126(95)
      acd126(94)=acd126(1)*acd126(94)
      acd126(95)=acd126(33)*acd126(15)*acd126(46)
      acd126(79)=acd126(89)+acd126(79)+acd126(94)+acd126(92)+acd126(91)+acd126(&
      &85)+acd126(95)+acd126(90)
      acd126(76)=-ninjaP*acd126(76)
      acd126(84)=acd126(37)*acd126(84)
      acd126(83)=-acd126(87)*acd126(83)
      acd126(85)=acd126(59)*acd126(70)
      acd126(89)=acd126(67)*acd126(53)
      acd126(90)=acd126(50)*acd126(57)
      acd126(91)=acd126(49)*acd126(55)
      acd126(92)=acd126(32)*acd126(38)
      acd126(94)=acd126(61)*acd126(29)
      acd126(95)=-acd126(60)-acd126(65)-acd126(63)
      acd126(95)=acd126(40)*acd126(95)
      acd126(76)=acd126(84)+acd126(95)+acd126(94)+acd126(92)+acd126(91)+acd126(&
      &90)+acd126(89)+acd126(72)+acd126(85)+acd126(76)+acd126(83)
      acd126(76)=acd126(2)*acd126(76)
      acd126(77)=acd126(36)*acd126(77)
      acd126(82)=-ninjaP*acd126(82)
      acd126(83)=acd126(36)*acd126(88)
      acd126(84)=acd126(67)*acd126(54)
      acd126(82)=acd126(83)+acd126(82)+acd126(74)+acd126(84)
      acd126(82)=acd126(5)*acd126(82)
      acd126(83)=acd126(16)*acd126(67)
      acd126(84)=acd126(50)*acd126(31)
      acd126(85)=acd126(49)*acd126(30)
      acd126(88)=acd126(32)*acd126(7)
      acd126(89)=acd126(11)*acd126(87)
      acd126(83)=acd126(89)+acd126(88)+acd126(85)+acd126(84)+acd126(69)+acd126(&
      &83)
      acd126(83)=acd126(83)*acd126(93)
      acd126(84)=acd126(43)*acd126(87)
      acd126(85)=acd126(67)*acd126(46)
      acd126(87)=acd126(50)*acd126(48)
      acd126(88)=acd126(49)*acd126(47)
      acd126(89)=acd126(32)*acd126(34)
      acd126(84)=acd126(89)+acd126(88)+acd126(87)+acd126(68)+acd126(85)+acd126(&
      &84)
      acd126(84)=acd126(33)*acd126(84)
      acd126(81)=ninjaP*acd126(81)
      acd126(85)=acd126(61)*acd126(16)
      acd126(87)=acd126(60)*acd126(46)
      acd126(88)=acd126(37)*acd126(54)
      acd126(85)=acd126(88)+acd126(87)+acd126(71)+acd126(85)
      acd126(85)=acd126(15)*acd126(85)
      acd126(87)=acd126(60)*acd126(43)
      acd126(88)=acd126(11)*acd126(61)
      acd126(87)=acd126(66)+acd126(87)+acd126(88)
      acd126(78)=acd126(87)*acd126(78)
      acd126(87)=acd126(61)*acd126(31)
      acd126(88)=acd126(60)*acd126(48)
      acd126(87)=acd126(88)+acd126(75)+acd126(87)
      acd126(87)=acd126(26)*acd126(87)
      acd126(88)=acd126(61)*acd126(30)
      acd126(89)=acd126(60)*acd126(47)
      acd126(88)=acd126(89)+acd126(73)+acd126(88)
      acd126(88)=acd126(17)*acd126(88)
      acd126(89)=acd126(61)*acd126(7)
      acd126(90)=acd126(60)*acd126(34)
      acd126(89)=acd126(90)+acd126(62)+acd126(89)
      acd126(89)=acd126(1)*acd126(89)
      acd126(86)=-acd126(64)*acd126(86)
      acd126(76)=acd126(76)+acd126(82)+acd126(77)+acd126(81)+acd126(89)+acd126(&
      &88)+acd126(87)+acd126(84)+acd126(83)+acd126(85)+acd126(86)+acd126(78)
      brack(ninjaidxt1mu0)=acd126(79)
      brack(ninjaidxt0mu0)=acd126(76)
      brack(ninjaidxt0mu2)=acd126(80)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d126h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd126h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3-k2+k7+k4
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
end module     p0_dbaru_epnebbbarg_d126h1l131
