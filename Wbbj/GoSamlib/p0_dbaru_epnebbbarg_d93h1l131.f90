module     p0_dbaru_epnebbbarg_d93h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d93h1l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd93h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd93
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd93h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(103) :: acd93
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd93(1)=dotproduct(k1,ninjaE3)
      acd93(2)=dotproduct(k2,ninjaE3)
      acd93(3)=abb93(92)
      acd93(4)=dotproduct(ninjaE3,spvak1k2)
      acd93(5)=abb93(34)
      acd93(6)=dotproduct(ninjaE3,spvak1l5)
      acd93(7)=abb93(55)
      acd93(8)=dotproduct(ninjaE3,spval6l5)
      acd93(9)=abb93(175)
      acd93(10)=abb93(19)
      acd93(11)=abb93(18)
      acd93(12)=abb93(166)
      acd93(13)=dotproduct(ninjaE3,spvak1l6)
      acd93(14)=abb93(49)
      acd93(15)=dotproduct(k3,ninjaE3)
      acd93(16)=abb93(51)
      acd93(17)=abb93(38)
      acd93(18)=abb93(169)
      acd93(19)=dotproduct(k4,ninjaE3)
      acd93(20)=dotproduct(l5,ninjaE3)
      acd93(21)=abb93(163)
      acd93(22)=dotproduct(l6,ninjaE3)
      acd93(23)=abb93(62)
      acd93(24)=dotproduct(k7,ninjaE3)
      acd93(25)=abb93(16)
      acd93(26)=abb93(48)
      acd93(27)=abb93(137)
      acd93(28)=dotproduct(ninjaE3,spvak2k7)
      acd93(29)=abb93(21)
      acd93(30)=abb93(23)
      acd93(31)=abb93(26)
      acd93(32)=dotproduct(ninjaE3,spvak4k2)
      acd93(33)=abb93(25)
      acd93(34)=abb93(35)
      acd93(35)=abb93(40)
      acd93(36)=dotproduct(ninjaE3,spvak4k3)
      acd93(37)=abb93(15)
      acd93(38)=dotproduct(ninjaE3,spvak2l5)
      acd93(39)=abb93(31)
      acd93(40)=abb93(22)
      acd93(41)=dotproduct(ninjaE3,spvak2k1)
      acd93(42)=abb93(32)
      acd93(43)=dotproduct(ninjaE3,spvak2l6)
      acd93(44)=abb93(30)
      acd93(45)=abb93(33)
      acd93(46)=abb93(47)
      acd93(47)=dotproduct(ninjaE3,spval6k2)
      acd93(48)=dotproduct(ninjaE3,spval6k1)
      acd93(49)=abb93(29)
      acd93(50)=abb93(59)
      acd93(51)=dotproduct(k1,ninjaA)
      acd93(52)=dotproduct(k2,ninjaA)
      acd93(53)=dotproduct(ninjaA,spvak1k2)
      acd93(54)=dotproduct(ninjaA,spvak1l5)
      acd93(55)=dotproduct(ninjaA,spval6l5)
      acd93(56)=abb93(45)
      acd93(57)=dotproduct(ninjaA,spvak1l6)
      acd93(58)=abb93(64)
      acd93(59)=dotproduct(k3,ninjaA)
      acd93(60)=abb93(113)
      acd93(61)=dotproduct(k4,ninjaA)
      acd93(62)=dotproduct(l5,ninjaA)
      acd93(63)=abb93(103)
      acd93(64)=dotproduct(l6,ninjaA)
      acd93(65)=dotproduct(k7,ninjaA)
      acd93(66)=abb93(17)
      acd93(67)=dotproduct(ninjaA,spvak2k7)
      acd93(68)=dotproduct(ninjaA,spvak4k2)
      acd93(69)=dotproduct(ninjaA,spvak4k3)
      acd93(70)=dotproduct(ninjaA,spvak2l5)
      acd93(71)=dotproduct(ninjaA,spval6k2)
      acd93(72)=dotproduct(ninjaA,spvak2k1)
      acd93(73)=dotproduct(ninjaA,spval6k1)
      acd93(74)=dotproduct(ninjaA,spvak2l6)
      acd93(75)=abb93(13)
      acd93(76)=abb93(14)
      acd93(77)=abb93(28)
      acd93(78)=abb93(80)
      acd93(79)=abb93(50)
      acd93(80)=abb93(20)
      acd93(81)=abb93(117)
      acd93(82)=abb93(27)
      acd93(83)=abb93(42)
      acd93(84)=acd93(15)+acd93(19)
      acd93(85)=acd93(17)*acd93(84)
      acd93(86)=-acd93(20)+acd93(1)
      acd93(86)=acd93(7)*acd93(86)
      acd93(87)=acd93(49)*acd93(48)
      acd93(88)=acd93(40)*acd93(47)
      acd93(89)=acd93(36)*acd93(45)
      acd93(90)=acd93(32)*acd93(34)
      acd93(91)=acd93(28)*acd93(30)
      acd93(92)=acd93(24)*acd93(26)
      acd93(93)=acd93(22)*acd93(23)
      acd93(94)=acd93(2)*acd93(11)
      acd93(85)=acd93(94)+acd93(88)+acd93(89)+acd93(90)+acd93(91)+acd93(87)+acd&
      &93(92)+acd93(93)+acd93(86)+acd93(85)
      acd93(86)=acd93(6)*acd93(85)
      acd93(87)=acd93(20)+acd93(22)
      acd93(88)=acd93(87)-acd93(1)
      acd93(88)=acd93(5)*acd93(88)
      acd93(89)=acd93(16)*acd93(84)
      acd93(90)=acd93(43)*acd93(44)
      acd93(91)=acd93(41)*acd93(42)
      acd93(92)=acd93(38)*acd93(39)
      acd93(93)=acd93(36)*acd93(37)
      acd93(94)=acd93(32)*acd93(33)
      acd93(95)=acd93(28)*acd93(29)
      acd93(96)=acd93(24)*acd93(25)
      acd93(97)=acd93(2)*acd93(10)
      acd93(88)=acd93(91)+acd93(92)+acd93(93)+acd93(94)+acd93(89)+acd93(97)+acd&
      &93(90)+acd93(95)+acd93(96)+acd93(88)
      acd93(89)=-acd93(8)*acd93(40)
      acd93(89)=acd93(89)+acd93(88)
      acd93(89)=acd93(4)*acd93(89)
      acd93(90)=-acd93(18)*acd93(84)
      acd93(91)=acd93(13)*acd93(50)
      acd93(92)=acd93(36)*acd93(46)
      acd93(93)=acd93(32)*acd93(35)
      acd93(94)=acd93(28)*acd93(31)
      acd93(95)=acd93(87)*acd93(21)
      acd93(96)=acd93(24)*acd93(27)
      acd93(97)=acd93(1)*acd93(9)
      acd93(98)=acd93(2)*acd93(12)
      acd93(90)=acd93(93)+acd93(94)-acd93(95)+acd93(98)+acd93(96)+acd93(97)+acd&
      &93(91)+acd93(92)+acd93(90)
      acd93(91)=acd93(8)*acd93(90)
      acd93(92)=acd93(13)*acd93(14)
      acd93(93)=acd93(1)*acd93(3)
      acd93(93)=acd93(92)+acd93(93)
      acd93(93)=acd93(2)*acd93(93)
      acd93(86)=acd93(89)+acd93(86)+acd93(93)+acd93(91)
      acd93(89)=acd93(44)*acd93(74)
      acd93(91)=acd93(42)*acd93(72)
      acd93(93)=acd93(39)*acd93(70)
      acd93(94)=acd93(37)*acd93(69)
      acd93(95)=acd93(33)*acd93(68)
      acd93(96)=acd93(29)*acd93(67)
      acd93(97)=acd93(25)*acd93(65)
      acd93(98)=acd93(52)*acd93(10)
      acd93(99)=acd93(59)+acd93(61)
      acd93(100)=acd93(16)*acd93(99)
      acd93(101)=acd93(51)-acd93(62)
      acd93(102)=acd93(64)-acd93(101)
      acd93(102)=acd93(5)*acd93(102)
      acd93(103)=-acd93(55)*acd93(40)
      acd93(89)=acd93(103)+acd93(102)+acd93(100)+acd93(98)+acd93(97)+acd93(96)+&
      &acd93(95)+acd93(94)+acd93(93)+acd93(91)+acd93(77)+acd93(89)
      acd93(89)=acd93(4)*acd93(89)
      acd93(85)=acd93(54)*acd93(85)
      acd93(88)=acd93(53)*acd93(88)
      acd93(91)=acd93(50)*acd93(57)
      acd93(93)=acd93(46)*acd93(69)
      acd93(94)=acd93(35)*acd93(68)
      acd93(95)=acd93(31)*acd93(67)
      acd93(96)=acd93(27)*acd93(65)
      acd93(97)=acd93(51)*acd93(9)
      acd93(98)=acd93(52)*acd93(12)
      acd93(100)=acd93(62)+acd93(64)
      acd93(100)=-acd93(21)*acd93(100)
      acd93(102)=-acd93(18)*acd93(99)
      acd93(103)=-acd93(53)*acd93(40)
      acd93(91)=acd93(103)+acd93(102)+acd93(100)+acd93(98)+acd93(97)+acd93(96)+&
      &acd93(95)+acd93(94)+acd93(93)+acd93(81)+acd93(91)
      acd93(91)=acd93(8)*acd93(91)
      acd93(93)=acd93(49)*acd93(73)
      acd93(94)=acd93(45)*acd93(69)
      acd93(95)=acd93(34)*acd93(68)
      acd93(96)=acd93(30)*acd93(67)
      acd93(97)=acd93(26)*acd93(65)
      acd93(98)=acd93(23)*acd93(64)
      acd93(100)=acd93(52)*acd93(11)
      acd93(102)=acd93(40)*acd93(71)
      acd93(99)=acd93(17)*acd93(99)
      acd93(101)=acd93(7)*acd93(101)
      acd93(93)=acd93(101)+acd93(99)+acd93(102)+acd93(100)+acd93(98)+acd93(97)+&
      &acd93(96)+acd93(95)+acd93(94)+acd93(79)+acd93(93)
      acd93(93)=acd93(6)*acd93(93)
      acd93(90)=acd93(55)*acd93(90)
      acd93(94)=acd93(14)*acd93(57)
      acd93(95)=acd93(51)*acd93(3)
      acd93(94)=acd93(95)+acd93(58)+acd93(94)
      acd93(94)=acd93(2)*acd93(94)
      acd93(87)=acd93(63)*acd93(87)
      acd93(84)=acd93(60)*acd93(84)
      acd93(95)=acd93(43)*acd93(83)
      acd93(96)=acd93(41)*acd93(82)
      acd93(97)=acd93(38)*acd93(80)
      acd93(92)=acd93(52)*acd93(92)
      acd93(98)=acd93(36)*acd93(78)
      acd93(99)=acd93(32)*acd93(76)
      acd93(100)=acd93(28)*acd93(75)
      acd93(101)=acd93(24)*acd93(66)
      acd93(102)=acd93(52)*acd93(3)
      acd93(102)=acd93(56)+acd93(102)
      acd93(102)=acd93(1)*acd93(102)
      acd93(84)=acd93(89)+acd93(93)+acd93(91)+acd93(88)+acd93(85)+acd93(90)+acd&
      &93(94)+acd93(102)+acd93(101)+acd93(100)+acd93(99)+acd93(98)+acd93(92)+ac&
      &d93(97)+acd93(95)+acd93(96)+acd93(84)+acd93(87)
      brack(ninjaidxt1mu0)=acd93(86)
      brack(ninjaidxt0mu0)=acd93(84)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d93h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd93h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d93h1l131
