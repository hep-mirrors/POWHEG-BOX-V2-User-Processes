module     p0_dbaru_epnebbbarg_d21h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d21h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd21h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(50) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd21(1)=dotproduct(k1,ninjaE3)
      acd21(2)=dotproduct(ninjaE3,spval6k2)
      acd21(3)=abb21(176)
      acd21(4)=dotproduct(ninjaE3,spval5k2)
      acd21(5)=abb21(39)
      acd21(6)=dotproduct(k2,ninjaE3)
      acd21(7)=abb21(166)
      acd21(8)=abb21(43)
      acd21(9)=dotproduct(k3,ninjaE3)
      acd21(10)=abb21(84)
      acd21(11)=abb21(53)
      acd21(12)=dotproduct(k4,ninjaE3)
      acd21(13)=dotproduct(l5,ninjaE3)
      acd21(14)=abb21(177)
      acd21(15)=abb21(47)
      acd21(16)=dotproduct(l6,ninjaE3)
      acd21(17)=dotproduct(k7,ninjaE3)
      acd21(18)=abb21(49)
      acd21(19)=abb21(24)
      acd21(20)=dotproduct(ninjaE3,spvak4k3)
      acd21(21)=abb21(13)
      acd21(22)=abb21(21)
      acd21(23)=dotproduct(ninjaE3,spvak2k7)
      acd21(24)=abb21(25)
      acd21(25)=dotproduct(ninjaE3,spvak1k2)
      acd21(26)=abb21(17)
      acd21(27)=dotproduct(ninjaE3,spvak4k2)
      acd21(28)=abb21(19)
      acd21(29)=dotproduct(ninjaE3,spvak1l5)
      acd21(30)=abb21(31)
      acd21(31)=dotproduct(ninjaE3,spvak1l6)
      acd21(32)=abb21(32)
      acd21(33)=abb21(15)
      acd21(34)=abb21(28)
      acd21(35)=abb21(29)
      acd21(36)=abb21(23)
      acd21(37)=abb21(34)
      acd21(38)=acd21(13)+acd21(16)
      acd21(39)=acd21(15)*acd21(38)
      acd21(40)=acd21(9)+acd21(12)
      acd21(41)=acd21(11)*acd21(40)
      acd21(42)=acd21(31)*acd21(37)
      acd21(43)=acd21(29)*acd21(36)
      acd21(44)=acd21(27)*acd21(35)
      acd21(45)=acd21(25)*acd21(34)
      acd21(46)=acd21(23)*acd21(33)
      acd21(47)=acd21(20)*acd21(22)
      acd21(48)=acd21(17)*acd21(19)
      acd21(49)=acd21(6)*acd21(8)
      acd21(50)=acd21(1)*acd21(5)
      acd21(39)=acd21(50)+acd21(49)+acd21(48)+acd21(47)+acd21(46)+acd21(45)+acd&
      &21(44)+acd21(42)+acd21(43)+acd21(41)+acd21(39)
      acd21(39)=acd21(4)*acd21(39)
      acd21(38)=acd21(14)*acd21(38)
      acd21(40)=acd21(10)*acd21(40)
      acd21(41)=acd21(31)*acd21(32)
      acd21(42)=acd21(29)*acd21(30)
      acd21(43)=acd21(27)*acd21(28)
      acd21(44)=acd21(25)*acd21(26)
      acd21(45)=acd21(23)*acd21(24)
      acd21(46)=acd21(20)*acd21(21)
      acd21(47)=acd21(17)*acd21(18)
      acd21(48)=acd21(6)*acd21(7)
      acd21(49)=acd21(1)*acd21(3)
      acd21(38)=acd21(49)+acd21(48)+acd21(47)+acd21(46)+acd21(45)+acd21(44)+acd&
      &21(43)+acd21(41)+acd21(42)+acd21(40)+acd21(38)
      acd21(38)=acd21(2)*acd21(38)
      acd21(38)=acd21(39)+acd21(38)
      brack(ninjaidxt2mu0)=acd21(38)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd21h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(102) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd21(1)=dotproduct(k1,ninjaE3)
      acd21(2)=dotproduct(ninjaE4,spval6k2)
      acd21(3)=abb21(176)
      acd21(4)=dotproduct(ninjaE4,spval5k2)
      acd21(5)=abb21(39)
      acd21(6)=dotproduct(k1,ninjaE4)
      acd21(7)=dotproduct(ninjaE3,spval6k2)
      acd21(8)=dotproduct(ninjaE3,spval5k2)
      acd21(9)=dotproduct(k2,ninjaE3)
      acd21(10)=abb21(166)
      acd21(11)=abb21(43)
      acd21(12)=dotproduct(k2,ninjaE4)
      acd21(13)=dotproduct(k3,ninjaE3)
      acd21(14)=abb21(84)
      acd21(15)=abb21(53)
      acd21(16)=dotproduct(k3,ninjaE4)
      acd21(17)=dotproduct(k4,ninjaE3)
      acd21(18)=dotproduct(k4,ninjaE4)
      acd21(19)=dotproduct(l5,ninjaE3)
      acd21(20)=abb21(177)
      acd21(21)=abb21(47)
      acd21(22)=dotproduct(l5,ninjaE4)
      acd21(23)=dotproduct(l6,ninjaE3)
      acd21(24)=dotproduct(l6,ninjaE4)
      acd21(25)=dotproduct(k7,ninjaE3)
      acd21(26)=abb21(49)
      acd21(27)=abb21(24)
      acd21(28)=dotproduct(k7,ninjaE4)
      acd21(29)=dotproduct(ninjaE3,spvak4k3)
      acd21(30)=abb21(13)
      acd21(31)=abb21(21)
      acd21(32)=dotproduct(ninjaE4,spvak4k3)
      acd21(33)=dotproduct(ninjaE4,spvak2k7)
      acd21(34)=abb21(25)
      acd21(35)=dotproduct(ninjaE4,spvak1k2)
      acd21(36)=abb21(17)
      acd21(37)=dotproduct(ninjaE4,spvak4k2)
      acd21(38)=abb21(19)
      acd21(39)=dotproduct(ninjaE4,spvak1l5)
      acd21(40)=abb21(31)
      acd21(41)=dotproduct(ninjaE4,spvak1l6)
      acd21(42)=abb21(32)
      acd21(43)=dotproduct(ninjaE3,spvak2k7)
      acd21(44)=abb21(15)
      acd21(45)=abb21(28)
      acd21(46)=abb21(29)
      acd21(47)=abb21(23)
      acd21(48)=abb21(34)
      acd21(49)=dotproduct(ninjaE3,spvak1k2)
      acd21(50)=dotproduct(ninjaE3,spvak4k2)
      acd21(51)=dotproduct(ninjaE3,spvak1l5)
      acd21(52)=dotproduct(ninjaE3,spvak1l6)
      acd21(53)=abb21(42)
      acd21(54)=dotproduct(k1,ninjaA)
      acd21(55)=dotproduct(ninjaA,spval6k2)
      acd21(56)=dotproduct(ninjaA,spval5k2)
      acd21(57)=abb21(40)
      acd21(58)=dotproduct(k2,ninjaA)
      acd21(59)=abb21(52)
      acd21(60)=dotproduct(k3,ninjaA)
      acd21(61)=abb21(163)
      acd21(62)=dotproduct(k4,ninjaA)
      acd21(63)=dotproduct(l5,ninjaA)
      acd21(64)=abb21(27)
      acd21(65)=dotproduct(l6,ninjaA)
      acd21(66)=dotproduct(k7,ninjaA)
      acd21(67)=abb21(202)
      acd21(68)=dotproduct(ninjaA,ninjaE3)
      acd21(69)=dotproduct(ninjaA,spvak4k3)
      acd21(70)=dotproduct(ninjaA,spvak2k7)
      acd21(71)=dotproduct(ninjaA,spvak1k2)
      acd21(72)=dotproduct(ninjaA,spvak4k2)
      acd21(73)=dotproduct(ninjaA,spvak1l5)
      acd21(74)=dotproduct(ninjaA,spvak1l6)
      acd21(75)=abb21(14)
      acd21(76)=abb21(20)
      acd21(77)=abb21(22)
      acd21(78)=abb21(30)
      acd21(79)=abb21(16)
      acd21(80)=abb21(26)
      acd21(81)=dotproduct(ninjaA,ninjaA)
      acd21(82)=abb21(18)
      acd21(83)=acd21(42)*acd21(41)
      acd21(84)=acd21(40)*acd21(39)
      acd21(85)=acd21(38)*acd21(37)
      acd21(86)=acd21(36)*acd21(35)
      acd21(87)=acd21(34)*acd21(33)
      acd21(88)=acd21(30)*acd21(32)
      acd21(89)=acd21(26)*acd21(28)
      acd21(90)=acd21(10)*acd21(12)
      acd21(91)=acd21(3)*acd21(6)
      acd21(92)=acd21(16)+acd21(18)
      acd21(93)=acd21(92)*acd21(14)
      acd21(94)=acd21(22)+acd21(24)
      acd21(95)=acd21(94)*acd21(20)
      acd21(83)=acd21(83)+acd21(93)+acd21(95)+acd21(88)+acd21(89)+acd21(90)+acd&
      &21(91)+acd21(84)+acd21(85)+acd21(86)+acd21(87)
      acd21(83)=acd21(83)*acd21(7)
      acd21(84)=acd21(48)*acd21(41)
      acd21(85)=acd21(47)*acd21(39)
      acd21(86)=acd21(46)*acd21(37)
      acd21(87)=acd21(45)*acd21(35)
      acd21(88)=acd21(44)*acd21(33)
      acd21(89)=acd21(31)*acd21(32)
      acd21(90)=acd21(27)*acd21(28)
      acd21(91)=acd21(11)*acd21(12)
      acd21(93)=acd21(5)*acd21(6)
      acd21(92)=acd21(92)*acd21(15)
      acd21(94)=acd21(94)*acd21(21)
      acd21(84)=acd21(84)+acd21(92)+acd21(94)+acd21(89)+acd21(90)+acd21(91)+acd&
      &21(93)+acd21(85)+acd21(86)+acd21(87)+acd21(88)
      acd21(84)=acd21(84)*acd21(8)
      acd21(85)=acd21(48)*acd21(52)
      acd21(86)=acd21(47)*acd21(51)
      acd21(87)=acd21(46)*acd21(50)
      acd21(88)=acd21(45)*acd21(49)
      acd21(89)=acd21(43)*acd21(44)
      acd21(90)=acd21(29)*acd21(31)
      acd21(91)=acd21(25)*acd21(27)
      acd21(92)=acd21(13)+acd21(17)
      acd21(93)=acd21(92)*acd21(15)
      acd21(94)=acd21(19)+acd21(23)
      acd21(95)=acd21(94)*acd21(21)
      acd21(96)=acd21(9)*acd21(11)
      acd21(97)=acd21(1)*acd21(5)
      acd21(85)=acd21(95)+acd21(93)+acd21(91)+acd21(90)+acd21(89)+acd21(88)+acd&
      &21(87)+acd21(85)+acd21(86)+acd21(96)+acd21(97)
      acd21(86)=acd21(85)*acd21(4)
      acd21(87)=acd21(42)*acd21(52)
      acd21(88)=acd21(40)*acd21(51)
      acd21(89)=acd21(38)*acd21(50)
      acd21(90)=acd21(36)*acd21(49)
      acd21(91)=acd21(34)*acd21(43)
      acd21(93)=acd21(29)*acd21(30)
      acd21(95)=acd21(25)*acd21(26)
      acd21(96)=acd21(92)*acd21(14)
      acd21(97)=acd21(94)*acd21(20)
      acd21(98)=acd21(9)*acd21(10)
      acd21(99)=acd21(1)*acd21(3)
      acd21(87)=acd21(99)+acd21(98)+acd21(97)+acd21(96)+acd21(95)+acd21(93)+acd&
      &21(89)+acd21(88)+acd21(87)+acd21(90)+acd21(91)
      acd21(88)=acd21(87)*acd21(2)
      acd21(83)=acd21(53)+acd21(86)+acd21(88)+acd21(83)+acd21(84)
      acd21(84)=acd21(56)*acd21(85)
      acd21(85)=acd21(55)*acd21(87)
      acd21(86)=acd21(48)*acd21(74)
      acd21(87)=acd21(47)*acd21(73)
      acd21(88)=acd21(46)*acd21(72)
      acd21(89)=acd21(45)*acd21(71)
      acd21(90)=acd21(44)*acd21(70)
      acd21(91)=acd21(31)*acd21(69)
      acd21(93)=acd21(27)*acd21(66)
      acd21(95)=acd21(11)*acd21(58)
      acd21(96)=acd21(5)*acd21(54)
      acd21(97)=acd21(60)+acd21(62)
      acd21(98)=acd21(97)*acd21(15)
      acd21(99)=acd21(63)+acd21(65)
      acd21(100)=acd21(99)*acd21(21)
      acd21(86)=acd21(91)+acd21(93)+acd21(95)+acd21(96)+acd21(87)+acd21(88)+acd&
      &21(89)+acd21(90)+acd21(78)+acd21(86)+acd21(98)+acd21(100)
      acd21(87)=acd21(8)*acd21(86)
      acd21(88)=acd21(42)*acd21(74)
      acd21(89)=acd21(40)*acd21(73)
      acd21(90)=acd21(38)*acd21(72)
      acd21(91)=acd21(36)*acd21(71)
      acd21(93)=acd21(34)*acd21(70)
      acd21(95)=acd21(30)*acd21(69)
      acd21(96)=acd21(26)*acd21(66)
      acd21(98)=acd21(10)*acd21(58)
      acd21(100)=acd21(3)*acd21(54)
      acd21(101)=acd21(97)*acd21(14)
      acd21(102)=acd21(99)*acd21(20)
      acd21(88)=acd21(100)+acd21(101)+acd21(102)+acd21(76)+acd21(93)+acd21(95)+&
      &acd21(96)+acd21(98)+acd21(88)+acd21(89)+acd21(90)+acd21(91)
      acd21(89)=acd21(7)*acd21(88)
      acd21(90)=-acd21(64)*acd21(94)
      acd21(91)=acd21(61)*acd21(92)
      acd21(92)=acd21(53)*acd21(68)
      acd21(93)=acd21(50)*acd21(80)
      acd21(94)=acd21(49)*acd21(79)
      acd21(95)=acd21(43)*acd21(77)
      acd21(96)=acd21(29)*acd21(75)
      acd21(98)=acd21(25)*acd21(67)
      acd21(100)=acd21(9)*acd21(59)
      acd21(101)=acd21(1)*acd21(57)
      acd21(84)=acd21(89)+acd21(87)+acd21(85)+acd21(84)+acd21(101)+acd21(100)+a&
      &cd21(98)+acd21(96)+acd21(95)+acd21(94)+2.0_ki*acd21(92)+acd21(93)+acd21(&
      &91)+acd21(90)
      acd21(85)=ninjaP*acd21(83)
      acd21(86)=acd21(56)*acd21(86)
      acd21(87)=acd21(55)*acd21(88)
      acd21(88)=-acd21(64)*acd21(99)
      acd21(89)=acd21(61)*acd21(97)
      acd21(90)=acd21(53)*acd21(81)
      acd21(91)=acd21(72)*acd21(80)
      acd21(92)=acd21(71)*acd21(79)
      acd21(93)=acd21(70)*acd21(77)
      acd21(94)=acd21(69)*acd21(75)
      acd21(95)=acd21(66)*acd21(67)
      acd21(96)=acd21(58)*acd21(59)
      acd21(97)=acd21(54)*acd21(57)
      acd21(85)=acd21(85)+acd21(87)+acd21(86)+acd21(97)+acd21(96)+acd21(95)+acd&
      &21(94)+acd21(93)+acd21(92)+acd21(91)+acd21(82)+acd21(90)+acd21(89)+acd21&
      &(88)
      brack(ninjaidxt1mu0)=acd21(84)
      brack(ninjaidxt0mu0)=acd21(85)
      brack(ninjaidxt0mu2)=acd21(83)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d21h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd21h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6-k5
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
end module     p0_dbaru_epnebbbarg_d21h0l131
