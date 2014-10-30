module     p0_dbaru_epnebbbarg_d117h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d117h5l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd117h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd117
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd117(1)=dotproduct(k2,ninjaE3)
      acd117(2)=dotproduct(ninjaE3,spvak7k2)
      acd117(3)=abb117(28)
      acd117(4)=dotproduct(k3,ninjaE3)
      acd117(5)=dotproduct(k4,ninjaE3)
      acd117(6)=dotproduct(ninjaE3,spvak4k2)
      acd117(7)=abb117(15)
      acd117(8)=dotproduct(ninjaE3,spvak4k3)
      acd117(9)=abb117(18)
      acd117(10)=dotproduct(ninjaE3,spval6l5)
      acd117(11)=abb117(85)
      acd117(12)=dotproduct(ninjaE3,spvak1k2)
      acd117(13)=abb117(21)
      acd117(14)=dotproduct(ninjaE3,spvak1k3)
      acd117(15)=abb117(39)
      acd117(16)=abb117(20)
      acd117(17)=abb117(43)
      acd117(18)=abb117(47)
      acd117(19)=abb117(40)
      acd117(20)=acd117(4)+acd117(5)
      acd117(21)=acd117(1)-acd117(20)
      acd117(21)=acd117(3)*acd117(21)
      acd117(22)=acd117(14)*acd117(15)
      acd117(23)=acd117(12)*acd117(13)
      acd117(24)=acd117(8)*acd117(9)
      acd117(25)=acd117(6)*acd117(7)
      acd117(26)=-acd117(10)*acd117(11)
      acd117(21)=acd117(26)+acd117(25)+acd117(24)+acd117(22)+acd117(23)+acd117(&
      &21)
      acd117(21)=acd117(1)*acd117(21)
      acd117(22)=acd117(14)*acd117(19)
      acd117(23)=acd117(12)*acd117(18)
      acd117(24)=acd117(8)*acd117(17)
      acd117(25)=acd117(6)*acd117(16)
      acd117(20)=acd117(11)*acd117(20)
      acd117(20)=acd117(20)+acd117(25)+acd117(24)+acd117(22)+acd117(23)
      acd117(20)=acd117(10)*acd117(20)
      acd117(20)=acd117(20)+acd117(21)
      acd117(20)=acd117(2)*acd117(20)
      brack(ninjaidxt1x0mu0)=acd117(20)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd117h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(107) :: acd117
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd117(1)=dotproduct(k2,ninjaA1)
      acd117(2)=dotproduct(k2,ninjaE3)
      acd117(3)=dotproduct(ninjaE3,spvak7k2)
      acd117(4)=abb117(28)
      acd117(5)=dotproduct(k3,ninjaE3)
      acd117(6)=dotproduct(k4,ninjaE3)
      acd117(7)=dotproduct(ninjaE3,spvak4k2)
      acd117(8)=abb117(15)
      acd117(9)=dotproduct(ninjaE3,spval6l5)
      acd117(10)=abb117(85)
      acd117(11)=dotproduct(ninjaE3,spvak4k3)
      acd117(12)=abb117(18)
      acd117(13)=dotproduct(ninjaE3,spvak1k2)
      acd117(14)=abb117(21)
      acd117(15)=dotproduct(ninjaE3,spvak1k3)
      acd117(16)=abb117(39)
      acd117(17)=dotproduct(ninjaA1,spvak7k2)
      acd117(18)=dotproduct(k3,ninjaA1)
      acd117(19)=dotproduct(k4,ninjaA1)
      acd117(20)=dotproduct(ninjaA1,spvak4k2)
      acd117(21)=dotproduct(ninjaA1,spval6l5)
      acd117(22)=dotproduct(ninjaA1,spvak4k3)
      acd117(23)=dotproduct(ninjaA1,spvak1k2)
      acd117(24)=dotproduct(ninjaA1,spvak1k3)
      acd117(25)=abb117(20)
      acd117(26)=abb117(43)
      acd117(27)=abb117(47)
      acd117(28)=abb117(40)
      acd117(29)=dotproduct(k1,ninjaE3)
      acd117(30)=abb117(134)
      acd117(31)=abb117(128)
      acd117(32)=abb117(42)
      acd117(33)=abb117(61)
      acd117(34)=abb117(60)
      acd117(35)=abb117(98)
      acd117(36)=dotproduct(k2,ninjaA0)
      acd117(37)=dotproduct(ninjaA0,spvak7k2)
      acd117(38)=abb117(52)
      acd117(39)=dotproduct(k3,ninjaA0)
      acd117(40)=abb117(152)
      acd117(41)=dotproduct(k4,ninjaA0)
      acd117(42)=dotproduct(l5,ninjaE3)
      acd117(43)=abb117(56)
      acd117(44)=dotproduct(l6,ninjaE3)
      acd117(45)=dotproduct(k7,ninjaE3)
      acd117(46)=abb117(54)
      acd117(47)=dotproduct(ninjaA0,ninjaE3)
      acd117(48)=abb117(35)
      acd117(49)=dotproduct(ninjaA0,spvak4k2)
      acd117(50)=dotproduct(ninjaA0,spval6l5)
      acd117(51)=dotproduct(ninjaA0,spvak4k3)
      acd117(52)=dotproduct(ninjaA0,spvak1k2)
      acd117(53)=dotproduct(ninjaA0,spvak1k3)
      acd117(54)=abb117(29)
      acd117(55)=abb117(12)
      acd117(56)=abb117(14)
      acd117(57)=abb117(41)
      acd117(58)=abb117(246)
      acd117(59)=abb117(245)
      acd117(60)=abb117(67)
      acd117(61)=abb117(64)
      acd117(62)=abb117(69)
      acd117(63)=abb117(45)
      acd117(64)=abb117(63)
      acd117(65)=abb117(174)
      acd117(66)=abb117(97)
      acd117(67)=abb117(26)
      acd117(68)=abb117(90)
      acd117(69)=abb117(58)
      acd117(70)=abb117(70)
      acd117(71)=abb117(27)
      acd117(72)=abb117(30)
      acd117(73)=abb117(13)
      acd117(74)=abb117(71)
      acd117(75)=abb117(50)
      acd117(76)=abb117(31)
      acd117(77)=abb117(11)
      acd117(78)=abb117(16)
      acd117(79)=abb117(23)
      acd117(80)=abb117(17)
      acd117(81)=abb117(44)
      acd117(82)=dotproduct(ninjaE3,spvak1k7)
      acd117(83)=dotproduct(ninjaE3,spvak1l5)
      acd117(84)=abb117(33)
      acd117(85)=abb117(34)
      acd117(86)=abb117(25)
      acd117(87)=acd117(10)*acd117(21)
      acd117(88)=acd117(16)*acd117(24)
      acd117(89)=acd117(14)*acd117(23)
      acd117(90)=acd117(12)*acd117(22)
      acd117(91)=acd117(8)*acd117(20)
      acd117(92)=acd117(18)+acd117(19)
      acd117(93)=2.0_ki*acd117(1)-acd117(92)
      acd117(93)=acd117(4)*acd117(93)
      acd117(87)=-acd117(87)+acd117(93)+acd117(91)+acd117(90)+acd117(88)+acd117&
      &(89)
      acd117(87)=acd117(2)*acd117(87)
      acd117(88)=acd117(28)*acd117(24)
      acd117(89)=acd117(27)*acd117(23)
      acd117(90)=acd117(26)*acd117(22)
      acd117(91)=acd117(25)*acd117(20)
      acd117(92)=-acd117(1)+acd117(92)
      acd117(92)=acd117(10)*acd117(92)
      acd117(88)=acd117(92)+acd117(91)+acd117(90)+acd117(88)+acd117(89)
      acd117(88)=acd117(9)*acd117(88)
      acd117(89)=acd117(21)*acd117(28)
      acd117(90)=acd117(1)*acd117(16)
      acd117(89)=acd117(89)+acd117(90)
      acd117(89)=acd117(15)*acd117(89)
      acd117(90)=acd117(21)*acd117(27)
      acd117(91)=acd117(1)*acd117(14)
      acd117(90)=acd117(90)+acd117(91)
      acd117(90)=acd117(13)*acd117(90)
      acd117(91)=acd117(21)*acd117(26)
      acd117(92)=acd117(1)*acd117(12)
      acd117(91)=acd117(91)+acd117(92)
      acd117(91)=acd117(11)*acd117(91)
      acd117(92)=acd117(21)*acd117(25)
      acd117(93)=acd117(1)*acd117(8)
      acd117(92)=acd117(92)+acd117(93)
      acd117(92)=acd117(7)*acd117(92)
      acd117(93)=acd117(5)+acd117(6)
      acd117(94)=acd117(93)*acd117(4)
      acd117(95)=-acd117(1)*acd117(94)
      acd117(96)=acd117(93)*acd117(10)
      acd117(97)=acd117(21)*acd117(96)
      acd117(87)=acd117(87)+acd117(88)+acd117(97)+acd117(95)+acd117(92)+acd117(&
      &91)+acd117(89)+acd117(90)
      acd117(87)=acd117(3)*acd117(87)
      acd117(88)=acd117(15)*acd117(28)
      acd117(89)=acd117(13)*acd117(27)
      acd117(88)=acd117(88)+acd117(89)
      acd117(89)=acd117(17)*acd117(88)
      acd117(90)=acd117(11)*acd117(17)
      acd117(91)=acd117(26)*acd117(90)
      acd117(92)=acd117(7)*acd117(17)
      acd117(95)=acd117(25)*acd117(92)
      acd117(97)=acd117(17)*acd117(93)
      acd117(98)=acd117(10)*acd117(97)
      acd117(89)=acd117(98)+acd117(95)+acd117(89)+acd117(91)
      acd117(89)=acd117(9)*acd117(89)
      acd117(91)=acd117(15)*acd117(16)
      acd117(95)=acd117(13)*acd117(14)
      acd117(91)=acd117(91)+acd117(95)
      acd117(95)=-acd117(9)*acd117(10)
      acd117(98)=acd117(2)*acd117(4)
      acd117(95)=acd117(98)+acd117(95)+acd117(91)
      acd117(95)=acd117(17)*acd117(95)
      acd117(90)=acd117(12)*acd117(90)
      acd117(92)=acd117(8)*acd117(92)
      acd117(97)=-acd117(4)*acd117(97)
      acd117(90)=acd117(97)+acd117(92)+acd117(90)+acd117(95)
      acd117(90)=acd117(2)*acd117(90)
      acd117(87)=acd117(87)+acd117(89)+acd117(90)
      acd117(89)=acd117(10)*acd117(50)
      acd117(90)=acd117(16)*acd117(53)
      acd117(92)=acd117(14)*acd117(52)
      acd117(95)=acd117(12)*acd117(51)
      acd117(97)=acd117(8)*acd117(49)
      acd117(98)=acd117(39)+acd117(41)
      acd117(99)=2.0_ki*acd117(36)-acd117(98)
      acd117(99)=acd117(4)*acd117(99)
      acd117(89)=-acd117(89)+acd117(99)+acd117(97)+acd117(95)+acd117(92)+acd117&
      &(55)+acd117(90)
      acd117(89)=acd117(2)*acd117(89)
      acd117(90)=acd117(28)*acd117(53)
      acd117(92)=acd117(27)*acd117(52)
      acd117(95)=acd117(26)*acd117(51)
      acd117(97)=acd117(25)*acd117(49)
      acd117(98)=-acd117(36)+acd117(98)
      acd117(98)=acd117(10)*acd117(98)
      acd117(90)=acd117(98)+acd117(97)+acd117(95)+acd117(92)+acd117(79)+acd117(&
      &90)
      acd117(90)=acd117(9)*acd117(90)
      acd117(92)=acd117(50)*acd117(28)
      acd117(95)=acd117(36)*acd117(16)
      acd117(92)=acd117(95)+acd117(85)+acd117(92)
      acd117(92)=acd117(15)*acd117(92)
      acd117(95)=acd117(50)*acd117(27)
      acd117(97)=acd117(36)*acd117(14)
      acd117(95)=acd117(97)+acd117(81)+acd117(95)
      acd117(95)=acd117(13)*acd117(95)
      acd117(97)=acd117(50)*acd117(26)
      acd117(98)=acd117(36)*acd117(12)
      acd117(97)=acd117(98)+acd117(80)+acd117(97)
      acd117(97)=acd117(11)*acd117(97)
      acd117(98)=acd117(50)*acd117(25)
      acd117(99)=acd117(36)*acd117(8)
      acd117(98)=acd117(99)+acd117(77)+acd117(98)
      acd117(98)=acd117(7)*acd117(98)
      acd117(99)=acd117(42)+acd117(44)
      acd117(100)=acd117(64)*acd117(99)
      acd117(101)=acd117(61)*acd117(93)
      acd117(102)=acd117(83)*acd117(84)
      acd117(103)=-acd117(76)*acd117(82)
      acd117(104)=acd117(29)*acd117(33)
      acd117(105)=2.0_ki*acd117(47)
      acd117(106)=acd117(73)*acd117(105)
      acd117(107)=acd117(45)*acd117(68)
      acd117(94)=-acd117(36)*acd117(94)
      acd117(96)=acd117(50)*acd117(96)
      acd117(89)=acd117(89)+acd117(90)+acd117(96)+acd117(94)+acd117(98)+acd117(&
      &97)+acd117(95)+acd117(92)+acd117(107)+acd117(106)+acd117(104)+acd117(102&
      &)+acd117(103)+acd117(101)+acd117(100)
      acd117(89)=acd117(3)*acd117(89)
      acd117(90)=acd117(37)*acd117(91)
      acd117(91)=-acd117(43)*acd117(99)
      acd117(92)=-acd117(40)*acd117(93)
      acd117(94)=acd117(29)*acd117(30)
      acd117(95)=acd117(48)*acd117(105)
      acd117(96)=acd117(45)*acd117(46)
      acd117(97)=acd117(37)*acd117(12)
      acd117(97)=acd117(57)+acd117(97)
      acd117(97)=acd117(11)*acd117(97)
      acd117(98)=acd117(37)*acd117(8)
      acd117(98)=acd117(54)+acd117(98)
      acd117(98)=acd117(7)*acd117(98)
      acd117(100)=acd117(37)*acd117(93)
      acd117(101)=-acd117(4)*acd117(100)
      acd117(102)=-acd117(10)*acd117(37)
      acd117(102)=acd117(56)+acd117(102)
      acd117(102)=acd117(9)*acd117(102)
      acd117(103)=acd117(4)*acd117(37)
      acd117(103)=acd117(38)+acd117(103)
      acd117(103)=acd117(2)*acd117(103)
      acd117(90)=acd117(103)+acd117(102)+acd117(101)+acd117(98)+acd117(97)+acd1&
      &17(90)+acd117(96)+acd117(95)+acd117(94)+acd117(92)+acd117(91)
      acd117(90)=acd117(2)*acd117(90)
      acd117(88)=acd117(37)*acd117(88)
      acd117(91)=-acd117(65)*acd117(99)
      acd117(92)=-acd117(62)*acd117(93)
      acd117(94)=acd117(29)*acd117(34)
      acd117(95)=acd117(74)*acd117(105)
      acd117(96)=acd117(45)*acd117(69)
      acd117(97)=acd117(37)*acd117(26)
      acd117(97)=acd117(86)+acd117(97)
      acd117(97)=acd117(11)*acd117(97)
      acd117(98)=acd117(37)*acd117(25)
      acd117(98)=acd117(78)+acd117(98)
      acd117(98)=acd117(7)*acd117(98)
      acd117(100)=acd117(10)*acd117(100)
      acd117(88)=acd117(100)+acd117(98)+acd117(97)+acd117(88)+acd117(96)+acd117&
      &(95)+acd117(94)+acd117(92)+acd117(91)
      acd117(88)=acd117(9)*acd117(88)
      acd117(91)=acd117(99)*acd117(58)
      acd117(92)=acd117(29)*acd117(31)
      acd117(94)=acd117(45)*acd117(59)
      acd117(95)=acd117(105)*acd117(60)
      acd117(91)=-acd117(95)+acd117(91)+acd117(92)-acd117(94)
      acd117(91)=acd117(91)*acd117(93)
      acd117(92)=-acd117(66)*acd117(99)
      acd117(93)=acd117(29)*acd117(35)
      acd117(94)=acd117(75)*acd117(105)
      acd117(95)=acd117(45)*acd117(70)
      acd117(92)=acd117(95)+acd117(94)+acd117(93)+acd117(92)
      acd117(92)=acd117(11)*acd117(92)
      acd117(93)=acd117(63)*acd117(99)
      acd117(94)=acd117(29)*acd117(32)
      acd117(95)=acd117(72)*acd117(105)
      acd117(96)=acd117(45)*acd117(67)
      acd117(93)=acd117(96)+acd117(95)+acd117(94)+acd117(93)
      acd117(93)=acd117(7)*acd117(93)
      acd117(94)=acd117(76)*acd117(105)
      acd117(95)=acd117(45)*acd117(71)
      acd117(94)=acd117(94)+acd117(95)
      acd117(94)=acd117(13)*acd117(94)
      acd117(88)=acd117(89)+acd117(90)+acd117(88)+acd117(93)+acd117(94)+acd117(&
      &92)+acd117(91)
      brack(ninjaidxt0x0mu0)=acd117(88)
      brack(ninjaidxt0x1mu0)=acd117(87)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d117h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd117h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
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
end module     p0_dbaru_epnebbbarg_d117h5l132