module     p0_dbaru_epnebbbarg_d125h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d125h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd125h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd125
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd125(1)=dotproduct(k2,ninjaE3)
      acd125(2)=dotproduct(ninjaE3,spvak2k7)
      acd125(3)=dotproduct(ninjaE3,spvak4k3)
      acd125(4)=abb125(38)
      acd125(5)=dotproduct(l5,ninjaE3)
      acd125(6)=abb125(50)
      acd125(7)=dotproduct(l6,ninjaE3)
      acd125(8)=dotproduct(ninjaE3,spvak2l6)
      acd125(9)=abb125(8)
      acd125(10)=dotproduct(ninjaE3,spvak2l5)
      acd125(11)=abb125(11)
      acd125(12)=dotproduct(ninjaE3,spvak1l6)
      acd125(13)=abb125(15)
      acd125(14)=dotproduct(ninjaE3,spvak1l5)
      acd125(15)=abb125(19)
      acd125(16)=-acd125(7)-acd125(5)
      acd125(16)=acd125(6)*acd125(16)
      acd125(17)=acd125(4)*acd125(1)
      acd125(18)=acd125(9)*acd125(8)
      acd125(19)=acd125(11)*acd125(10)
      acd125(20)=acd125(13)*acd125(12)
      acd125(21)=acd125(15)*acd125(14)
      acd125(16)=acd125(21)+acd125(20)+acd125(19)+acd125(18)+acd125(17)+acd125(&
      &16)
      acd125(16)=acd125(16)*acd125(3)*acd125(2)
      brack(ninjaidxt2mu0)=acd125(16)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd125h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(103) :: acd125
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd125(1)=dotproduct(k2,ninjaE3)
      acd125(2)=dotproduct(ninjaE3,spvak2k7)
      acd125(3)=dotproduct(ninjaE4,spvak4k3)
      acd125(4)=abb125(38)
      acd125(5)=dotproduct(ninjaE3,spvak4k3)
      acd125(6)=dotproduct(ninjaE4,spvak2k7)
      acd125(7)=abb125(43)
      acd125(8)=dotproduct(k2,ninjaE4)
      acd125(9)=dotproduct(l5,ninjaE3)
      acd125(10)=abb125(50)
      acd125(11)=abb125(28)
      acd125(12)=dotproduct(l5,ninjaE4)
      acd125(13)=dotproduct(l6,ninjaE3)
      acd125(14)=dotproduct(l6,ninjaE4)
      acd125(15)=dotproduct(ninjaE3,spvak2l6)
      acd125(16)=abb125(8)
      acd125(17)=abb125(31)
      acd125(18)=dotproduct(ninjaE4,spvak2l6)
      acd125(19)=dotproduct(ninjaE4,spvak2l5)
      acd125(20)=abb125(11)
      acd125(21)=dotproduct(ninjaE4,spvak1l6)
      acd125(22)=abb125(15)
      acd125(23)=dotproduct(ninjaE4,spvak1l5)
      acd125(24)=abb125(19)
      acd125(25)=dotproduct(ninjaE3,spvak2l5)
      acd125(26)=dotproduct(ninjaE3,spvak1l6)
      acd125(27)=dotproduct(ninjaE3,spvak1l5)
      acd125(28)=abb125(63)
      acd125(29)=abb125(17)
      acd125(30)=abb125(22)
      acd125(31)=dotproduct(k1,ninjaE3)
      acd125(32)=abb125(64)
      acd125(33)=abb125(52)
      acd125(34)=abb125(34)
      acd125(35)=abb125(61)
      acd125(36)=abb125(32)
      acd125(37)=dotproduct(k2,ninjaA)
      acd125(38)=dotproduct(k3,ninjaE3)
      acd125(39)=dotproduct(k4,ninjaE3)
      acd125(40)=dotproduct(ninjaA,ninjaE3)
      acd125(41)=dotproduct(ninjaA,spvak2k7)
      acd125(42)=dotproduct(ninjaA,spvak4k3)
      acd125(43)=abb125(57)
      acd125(44)=abb125(59)
      acd125(45)=abb125(44)
      acd125(46)=abb125(35)
      acd125(47)=abb125(29)
      acd125(48)=dotproduct(l5,ninjaA)
      acd125(49)=abb125(26)
      acd125(50)=abb125(14)
      acd125(51)=dotproduct(l6,ninjaA)
      acd125(52)=dotproduct(k7,ninjaE3)
      acd125(53)=abb125(13)
      acd125(54)=dotproduct(ninjaA,spvak2l6)
      acd125(55)=dotproduct(ninjaA,spvak2l5)
      acd125(56)=dotproduct(ninjaA,spvak1l6)
      acd125(57)=dotproduct(ninjaA,spvak1l5)
      acd125(58)=abb125(37)
      acd125(59)=abb125(27)
      acd125(60)=abb125(12)
      acd125(61)=abb125(25)
      acd125(62)=dotproduct(ninjaE3,spvak1k3)
      acd125(63)=abb125(30)
      acd125(64)=abb125(16)
      acd125(65)=dotproduct(k1,ninjaA)
      acd125(66)=abb125(23)
      acd125(67)=dotproduct(k3,ninjaA)
      acd125(68)=dotproduct(k4,ninjaA)
      acd125(69)=dotproduct(ninjaA,ninjaA)
      acd125(70)=abb125(58)
      acd125(71)=abb125(45)
      acd125(72)=abb125(39)
      acd125(73)=dotproduct(k7,ninjaA)
      acd125(74)=abb125(33)
      acd125(75)=abb125(18)
      acd125(76)=dotproduct(ninjaA,spvak1k3)
      acd125(77)=abb125(20)
      acd125(78)=abb125(9)
      acd125(79)=abb125(10)
      acd125(80)=abb125(21)
      acd125(81)=acd125(9)+acd125(13)
      acd125(82)=acd125(81)*acd125(10)
      acd125(83)=acd125(24)*acd125(27)
      acd125(84)=acd125(22)*acd125(26)
      acd125(85)=acd125(25)*acd125(20)
      acd125(86)=acd125(15)*acd125(16)
      acd125(87)=acd125(1)*acd125(4)
      acd125(82)=acd125(82)-acd125(87)-acd125(83)-acd125(84)-acd125(85)-acd125(&
      &86)
      acd125(83)=-acd125(3)*acd125(82)
      acd125(84)=acd125(12)+acd125(14)
      acd125(84)=acd125(84)*acd125(10)
      acd125(85)=acd125(24)*acd125(23)
      acd125(86)=acd125(22)*acd125(21)
      acd125(87)=acd125(20)*acd125(19)
      acd125(88)=acd125(16)*acd125(18)
      acd125(89)=acd125(4)*acd125(8)
      acd125(84)=-acd125(84)+acd125(85)+acd125(87)+acd125(88)+acd125(86)+acd125&
      &(89)
      acd125(84)=acd125(84)*acd125(5)
      acd125(83)=acd125(84)+acd125(28)+acd125(83)
      acd125(84)=acd125(2)*acd125(83)
      acd125(85)=acd125(6)*acd125(82)
      acd125(85)=-acd125(29)+acd125(85)
      acd125(86)=-acd125(5)*acd125(85)
      acd125(87)=acd125(25)*acd125(30)
      acd125(88)=acd125(15)*acd125(17)
      acd125(89)=acd125(81)*acd125(11)
      acd125(90)=acd125(1)*acd125(7)
      acd125(87)=-acd125(87)-acd125(88)+acd125(89)-acd125(90)
      acd125(84)=acd125(84)+acd125(86)-acd125(87)
      acd125(86)=acd125(82)*acd125(42)
      acd125(88)=acd125(63)*acd125(62)
      acd125(89)=acd125(31)*acd125(35)
      acd125(90)=acd125(25)*acd125(61)
      acd125(91)=acd125(15)*acd125(58)
      acd125(92)=acd125(81)*acd125(49)
      acd125(93)=acd125(38)+acd125(39)
      acd125(94)=acd125(93)*acd125(46)
      acd125(95)=acd125(1)*acd125(43)
      acd125(96)=2.0_ki*acd125(40)
      acd125(97)=acd125(96)*acd125(28)
      acd125(86)=-acd125(91)-acd125(92)-acd125(94)-acd125(95)-acd125(88)-acd125&
      &(89)-acd125(90)+acd125(86)-acd125(97)
      acd125(88)=acd125(24)*acd125(57)
      acd125(89)=acd125(22)*acd125(56)
      acd125(90)=acd125(20)*acd125(55)
      acd125(91)=acd125(48)+acd125(51)
      acd125(92)=acd125(91)*acd125(10)
      acd125(94)=acd125(16)*acd125(54)
      acd125(95)=acd125(4)*acd125(37)
      acd125(88)=acd125(60)-acd125(92)+acd125(88)+acd125(89)+acd125(90)+acd125(&
      &94)+acd125(95)
      acd125(89)=acd125(5)*acd125(88)
      acd125(89)=acd125(89)-acd125(86)
      acd125(89)=acd125(2)*acd125(89)
      acd125(90)=acd125(52)*acd125(53)
      acd125(92)=acd125(25)*acd125(64)
      acd125(94)=acd125(15)*acd125(59)
      acd125(95)=acd125(81)*acd125(50)
      acd125(97)=acd125(1)*acd125(44)
      acd125(98)=acd125(96)*acd125(29)
      acd125(90)=acd125(92)+acd125(94)-acd125(95)+acd125(97)+acd125(90)+acd125(&
      &98)
      acd125(82)=-acd125(41)*acd125(82)
      acd125(82)=acd125(82)+acd125(90)
      acd125(82)=acd125(5)*acd125(82)
      acd125(92)=-acd125(47)*acd125(93)
      acd125(94)=acd125(31)*acd125(36)
      acd125(95)=acd125(30)*acd125(96)
      acd125(92)=acd125(95)+acd125(94)+acd125(92)
      acd125(92)=acd125(25)*acd125(92)
      acd125(94)=-acd125(45)*acd125(93)
      acd125(95)=acd125(31)*acd125(34)
      acd125(97)=acd125(17)*acd125(96)
      acd125(94)=acd125(97)+acd125(95)+acd125(94)
      acd125(94)=acd125(15)*acd125(94)
      acd125(95)=acd125(31)-acd125(93)
      acd125(97)=acd125(95)*acd125(33)
      acd125(98)=acd125(96)*acd125(11)
      acd125(98)=acd125(98)-acd125(97)
      acd125(98)=-acd125(98)*acd125(81)
      acd125(95)=-acd125(32)*acd125(95)
      acd125(99)=acd125(7)*acd125(96)
      acd125(95)=acd125(99)+acd125(95)
      acd125(95)=acd125(1)*acd125(95)
      acd125(82)=acd125(89)+acd125(82)+acd125(95)+acd125(92)+acd125(94)+acd125(&
      &98)
      acd125(83)=ninjaP*acd125(83)
      acd125(89)=acd125(42)*acd125(88)
      acd125(92)=acd125(49)*acd125(91)
      acd125(94)=acd125(63)*acd125(76)
      acd125(95)=acd125(65)*acd125(35)
      acd125(98)=acd125(67)+acd125(68)
      acd125(99)=acd125(46)*acd125(98)
      acd125(100)=acd125(69)*acd125(28)
      acd125(101)=acd125(55)*acd125(61)
      acd125(102)=acd125(54)*acd125(58)
      acd125(103)=acd125(37)*acd125(43)
      acd125(83)=acd125(89)+acd125(103)+acd125(102)+acd125(101)+acd125(100)+acd&
      &125(99)+acd125(95)+acd125(78)+acd125(94)+acd125(83)+acd125(92)
      acd125(83)=acd125(2)*acd125(83)
      acd125(86)=-acd125(41)*acd125(86)
      acd125(85)=-ninjaP*acd125(85)
      acd125(88)=acd125(41)*acd125(88)
      acd125(89)=-acd125(50)*acd125(91)
      acd125(92)=acd125(53)*acd125(73)
      acd125(94)=acd125(69)*acd125(29)
      acd125(95)=acd125(55)*acd125(64)
      acd125(99)=acd125(54)*acd125(59)
      acd125(100)=acd125(37)*acd125(44)
      acd125(85)=acd125(88)+acd125(85)+acd125(100)+acd125(99)+acd125(95)+acd125&
      &(94)+acd125(79)+acd125(92)+acd125(89)
      acd125(85)=acd125(5)*acd125(85)
      acd125(88)=acd125(42)*acd125(90)
      acd125(89)=acd125(55)*acd125(30)
      acd125(90)=acd125(54)*acd125(17)
      acd125(92)=acd125(37)*acd125(7)
      acd125(94)=-acd125(11)*acd125(91)
      acd125(89)=acd125(94)+acd125(92)+acd125(90)+acd125(75)+acd125(89)
      acd125(89)=acd125(89)*acd125(96)
      acd125(87)=-ninjaP*acd125(87)
      acd125(90)=acd125(55)*acd125(47)
      acd125(92)=acd125(54)*acd125(45)
      acd125(94)=acd125(32)*acd125(37)
      acd125(90)=-acd125(92)-acd125(90)+acd125(94)-acd125(71)
      acd125(90)=acd125(90)*acd125(93)
      acd125(92)=acd125(55)*acd125(36)
      acd125(93)=acd125(54)*acd125(34)
      acd125(92)=-acd125(94)+acd125(93)+acd125(66)+acd125(92)
      acd125(92)=acd125(31)*acd125(92)
      acd125(93)=acd125(65)*acd125(36)
      acd125(94)=-acd125(47)*acd125(98)
      acd125(95)=acd125(69)*acd125(30)
      acd125(93)=acd125(95)+acd125(94)+acd125(80)+acd125(93)
      acd125(93)=acd125(25)*acd125(93)
      acd125(94)=acd125(65)*acd125(34)
      acd125(95)=-acd125(45)*acd125(98)
      acd125(96)=acd125(69)*acd125(17)
      acd125(94)=acd125(96)+acd125(95)+acd125(77)+acd125(94)
      acd125(94)=acd125(15)*acd125(94)
      acd125(95)=acd125(11)*acd125(69)
      acd125(96)=acd125(98)-acd125(65)
      acd125(98)=acd125(96)*acd125(33)
      acd125(95)=acd125(95)+acd125(98)-acd125(72)
      acd125(81)=-acd125(95)*acd125(81)
      acd125(91)=acd125(91)*acd125(97)
      acd125(95)=acd125(69)*acd125(7)
      acd125(96)=acd125(32)*acd125(96)
      acd125(95)=acd125(96)+acd125(70)+acd125(95)
      acd125(95)=acd125(1)*acd125(95)
      acd125(96)=acd125(52)*acd125(74)
      acd125(81)=acd125(83)+acd125(85)+acd125(86)+acd125(88)+acd125(87)+acd125(&
      &95)+acd125(94)+acd125(93)+acd125(91)+acd125(89)+acd125(92)+acd125(96)+ac&
      &d125(81)+acd125(90)
      brack(ninjaidxt1mu0)=acd125(82)
      brack(ninjaidxt0mu0)=acd125(81)
      brack(ninjaidxt0mu2)=acd125(84)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d125h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd125h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
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
end module     p0_dbaru_epnebbbarg_d125h3l131
