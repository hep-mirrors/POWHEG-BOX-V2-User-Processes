module     p0_dbaru_epnebbbarg_d104h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d104h5l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd104h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd104
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd104(1)=dotproduct(k2,ninjaE3)
      acd104(2)=dotproduct(ninjaE3,spvak1k2)
      acd104(3)=dotproduct(ninjaE3,spvak4k3)
      acd104(4)=abb104(41)
      acd104(5)=dotproduct(l5,ninjaE3)
      acd104(6)=abb104(44)
      acd104(7)=dotproduct(l6,ninjaE3)
      acd104(8)=abb104(39)
      acd104(9)=dotproduct(k7,ninjaE3)
      acd104(10)=abb104(33)
      acd104(11)=dotproduct(ninjaE3,spvak7k2)
      acd104(12)=abb104(14)
      acd104(13)=dotproduct(ninjaE3,spval6k2)
      acd104(14)=abb104(17)
      acd104(15)=dotproduct(ninjaE3,spval5k2)
      acd104(16)=abb104(20)
      acd104(17)=dotproduct(ninjaE3,spval6l5)
      acd104(18)=abb104(47)
      acd104(19)=acd104(4)*acd104(1)
      acd104(20)=acd104(6)*acd104(5)
      acd104(21)=acd104(8)*acd104(7)
      acd104(22)=acd104(10)*acd104(9)
      acd104(23)=acd104(12)*acd104(11)
      acd104(24)=acd104(14)*acd104(13)
      acd104(25)=acd104(16)*acd104(15)
      acd104(26)=acd104(18)*acd104(17)
      acd104(19)=acd104(26)+acd104(25)+acd104(24)+acd104(23)+acd104(22)+acd104(&
      &21)+acd104(19)+acd104(20)
      acd104(19)=acd104(19)*acd104(3)*acd104(2)
      brack(ninjaidxt1x0mu0)=acd104(19)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd104h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(101) :: acd104
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd104(1)=dotproduct(k2,ninjaA1)
      acd104(2)=dotproduct(ninjaE3,spvak4k3)
      acd104(3)=dotproduct(ninjaE3,spvak1k2)
      acd104(4)=abb104(41)
      acd104(5)=dotproduct(k2,ninjaE3)
      acd104(6)=dotproduct(ninjaA1,spvak4k3)
      acd104(7)=dotproduct(ninjaA1,spvak1k2)
      acd104(8)=dotproduct(l5,ninjaA1)
      acd104(9)=abb104(44)
      acd104(10)=dotproduct(l5,ninjaE3)
      acd104(11)=dotproduct(l6,ninjaA1)
      acd104(12)=abb104(39)
      acd104(13)=dotproduct(l6,ninjaE3)
      acd104(14)=dotproduct(k7,ninjaA1)
      acd104(15)=abb104(33)
      acd104(16)=dotproduct(k7,ninjaE3)
      acd104(17)=dotproduct(ninjaE3,spval6l5)
      acd104(18)=abb104(47)
      acd104(19)=dotproduct(ninjaE3,spvak7k2)
      acd104(20)=abb104(14)
      acd104(21)=dotproduct(ninjaE3,spval6k2)
      acd104(22)=abb104(17)
      acd104(23)=dotproduct(ninjaE3,spval5k2)
      acd104(24)=abb104(20)
      acd104(25)=dotproduct(ninjaA1,spval6l5)
      acd104(26)=dotproduct(ninjaA1,spvak7k2)
      acd104(27)=dotproduct(ninjaA1,spval6k2)
      acd104(28)=dotproduct(ninjaA1,spval5k2)
      acd104(29)=dotproduct(k1,ninjaE3)
      acd104(30)=abb104(86)
      acd104(31)=dotproduct(k2,ninjaA0)
      acd104(32)=dotproduct(k3,ninjaE3)
      acd104(33)=abb104(273)
      acd104(34)=dotproduct(k4,ninjaE3)
      acd104(35)=dotproduct(ninjaA0,ninjaE3)
      acd104(36)=abb104(56)
      acd104(37)=dotproduct(ninjaA0,spvak4k3)
      acd104(38)=dotproduct(ninjaA0,spvak1k2)
      acd104(39)=abb104(69)
      acd104(40)=dotproduct(ninjaE3,spvak1k3)
      acd104(41)=abb104(42)
      acd104(42)=abb104(265)
      acd104(43)=abb104(259)
      acd104(44)=abb104(234)
      acd104(45)=abb104(79)
      acd104(46)=abb104(55)
      acd104(47)=abb104(123)
      acd104(48)=abb104(121)
      acd104(49)=dotproduct(ninjaE3,spvak4k2)
      acd104(50)=abb104(25)
      acd104(51)=dotproduct(l5,ninjaA0)
      acd104(52)=abb104(50)
      acd104(53)=abb104(68)
      acd104(54)=abb104(35)
      acd104(55)=dotproduct(l6,ninjaA0)
      acd104(56)=abb104(29)
      acd104(57)=abb104(59)
      acd104(58)=abb104(36)
      acd104(59)=dotproduct(k7,ninjaA0)
      acd104(60)=abb104(46)
      acd104(61)=abb104(49)
      acd104(62)=abb104(31)
      acd104(63)=abb104(83)
      acd104(64)=abb104(110)
      acd104(65)=abb104(135)
      acd104(66)=abb104(48)
      acd104(67)=abb104(112)
      acd104(68)=abb104(19)
      acd104(69)=dotproduct(ninjaE3,spvak7l5)
      acd104(70)=abb104(105)
      acd104(71)=dotproduct(ninjaA0,spval6l5)
      acd104(72)=dotproduct(ninjaA0,spvak7k2)
      acd104(73)=dotproduct(ninjaA0,spval6k2)
      acd104(74)=dotproduct(ninjaA0,spval5k2)
      acd104(75)=abb104(13)
      acd104(76)=abb104(30)
      acd104(77)=abb104(18)
      acd104(78)=abb104(15)
      acd104(79)=abb104(16)
      acd104(80)=abb104(23)
      acd104(81)=dotproduct(ninjaE3,spvak3k2)
      acd104(82)=abb104(89)
      acd104(83)=abb104(52)
      acd104(84)=abb104(51)
      acd104(85)=abb104(32)
      acd104(86)=abb104(38)
      acd104(87)=acd104(4)*acd104(5)
      acd104(88)=acd104(9)*acd104(10)
      acd104(89)=acd104(12)*acd104(13)
      acd104(90)=acd104(15)*acd104(16)
      acd104(91)=acd104(18)*acd104(17)
      acd104(92)=acd104(20)*acd104(19)
      acd104(93)=acd104(22)*acd104(21)
      acd104(94)=acd104(24)*acd104(23)
      acd104(87)=acd104(91)+acd104(92)+acd104(93)+acd104(94)+acd104(87)+acd104(&
      &88)+acd104(89)+acd104(90)
      acd104(88)=acd104(6)*acd104(3)
      acd104(89)=acd104(7)*acd104(2)
      acd104(88)=acd104(88)+acd104(89)
      acd104(88)=acd104(88)*acd104(87)
      acd104(89)=acd104(1)*acd104(4)
      acd104(90)=acd104(8)*acd104(9)
      acd104(91)=acd104(11)*acd104(12)
      acd104(92)=acd104(14)*acd104(15)
      acd104(93)=acd104(25)*acd104(18)
      acd104(94)=acd104(26)*acd104(20)
      acd104(95)=acd104(27)*acd104(22)
      acd104(96)=acd104(28)*acd104(24)
      acd104(89)=acd104(96)+acd104(95)+acd104(94)+acd104(93)+acd104(92)+acd104(&
      &91)+acd104(90)+acd104(89)
      acd104(90)=acd104(3)*acd104(2)
      acd104(89)=acd104(90)*acd104(89)
      acd104(88)=acd104(89)+acd104(88)
      acd104(89)=acd104(30)*acd104(29)
      acd104(91)=acd104(39)*acd104(5)
      acd104(92)=acd104(53)*acd104(10)
      acd104(93)=acd104(57)*acd104(13)
      acd104(94)=acd104(61)*acd104(16)
      acd104(95)=acd104(75)*acd104(17)
      acd104(96)=acd104(77)*acd104(19)
      acd104(97)=acd104(78)*acd104(21)
      acd104(98)=acd104(79)*acd104(23)
      acd104(99)=acd104(80)*acd104(49)
      acd104(100)=acd104(81)*acd104(68)
      acd104(101)=acd104(82)*acd104(69)
      acd104(89)=acd104(98)+acd104(97)+acd104(96)+acd104(95)+acd104(101)+acd104&
      &(100)+acd104(99)+acd104(94)+acd104(93)+acd104(92)+acd104(91)+acd104(89)
      acd104(89)=acd104(2)*acd104(89)
      acd104(91)=acd104(68)*acd104(49)
      acd104(92)=acd104(36)*acd104(5)
      acd104(93)=acd104(52)*acd104(10)
      acd104(94)=acd104(56)*acd104(13)
      acd104(95)=acd104(60)*acd104(16)
      acd104(96)=acd104(63)*acd104(2)
      acd104(97)=acd104(64)*acd104(17)
      acd104(98)=acd104(65)*acd104(19)
      acd104(99)=acd104(66)*acd104(21)
      acd104(100)=acd104(67)*acd104(23)
      acd104(101)=acd104(70)*acd104(69)
      acd104(91)=acd104(101)+acd104(100)+acd104(99)+acd104(98)+acd104(97)+acd10&
      &4(96)+acd104(95)+acd104(94)+acd104(93)+acd104(92)+acd104(91)
      acd104(92)=2.0_ki*acd104(35)
      acd104(91)=acd104(92)*acd104(91)
      acd104(92)=-acd104(33)*acd104(5)
      acd104(93)=-acd104(42)*acd104(10)
      acd104(94)=-acd104(43)*acd104(13)
      acd104(95)=-acd104(44)*acd104(16)
      acd104(96)=-acd104(45)*acd104(17)
      acd104(97)=acd104(46)*acd104(19)
      acd104(98)=acd104(47)*acd104(21)
      acd104(99)=acd104(48)*acd104(23)
      acd104(100)=-acd104(50)*acd104(49)
      acd104(92)=acd104(100)+acd104(99)+acd104(98)+acd104(97)+acd104(96)+acd104&
      &(95)+acd104(94)+acd104(93)+acd104(92)
      acd104(93)=acd104(34)+acd104(32)
      acd104(92)=acd104(93)*acd104(92)
      acd104(93)=acd104(37)*acd104(3)
      acd104(94)=acd104(38)*acd104(2)
      acd104(93)=acd104(93)+acd104(94)
      acd104(87)=acd104(93)*acd104(87)
      acd104(93)=acd104(41)*acd104(5)
      acd104(94)=acd104(54)*acd104(10)
      acd104(95)=acd104(58)*acd104(13)
      acd104(96)=acd104(62)*acd104(16)
      acd104(97)=acd104(83)*acd104(17)
      acd104(98)=acd104(84)*acd104(19)
      acd104(99)=acd104(85)*acd104(21)
      acd104(100)=acd104(86)*acd104(23)
      acd104(93)=acd104(100)+acd104(99)+acd104(98)+acd104(97)+acd104(96)+acd104&
      &(95)+acd104(94)+acd104(93)
      acd104(93)=acd104(40)*acd104(93)
      acd104(94)=acd104(31)*acd104(4)
      acd104(95)=acd104(51)*acd104(9)
      acd104(96)=acd104(55)*acd104(12)
      acd104(97)=acd104(59)*acd104(15)
      acd104(98)=acd104(71)*acd104(18)
      acd104(99)=acd104(72)*acd104(20)
      acd104(100)=acd104(73)*acd104(22)
      acd104(101)=acd104(74)*acd104(24)
      acd104(94)=acd104(76)+acd104(101)+acd104(100)+acd104(99)+acd104(98)+acd10&
      &4(97)+acd104(96)+acd104(95)+acd104(94)
      acd104(90)=acd104(90)*acd104(94)
      acd104(87)=acd104(91)+acd104(90)+acd104(93)+acd104(92)+acd104(87)+acd104(&
      &89)
      brack(ninjaidxt0x0mu0)=acd104(87)
      brack(ninjaidxt0x1mu0)=acd104(88)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d104h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d104h5l132
