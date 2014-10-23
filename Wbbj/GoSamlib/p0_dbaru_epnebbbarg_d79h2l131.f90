module     p0_dbaru_epnebbbarg_d79h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d79h2l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd79h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd79
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd79h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(103) :: acd79
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd79(1)=dotproduct(k2,ninjaE3)
      acd79(2)=dotproduct(k7,ninjaE3)
      acd79(3)=dotproduct(ninjaE3,spvak4k3)
      acd79(4)=abb79(109)
      acd79(5)=dotproduct(ninjaE3,spvak2k7)
      acd79(6)=abb79(74)
      acd79(7)=dotproduct(ninjaE3,spvak1k7)
      acd79(8)=abb79(65)
      acd79(9)=dotproduct(ninjaE3,spvak1l6)
      acd79(10)=abb79(95)
      acd79(11)=dotproduct(ninjaE3,spvak1k2)
      acd79(12)=abb79(54)
      acd79(13)=dotproduct(ninjaE3,spval5l6)
      acd79(14)=abb79(73)
      acd79(15)=dotproduct(ninjaE3,spval5k7)
      acd79(16)=dotproduct(k1,ninjaE3)
      acd79(17)=abb79(89)
      acd79(18)=abb79(78)
      acd79(19)=abb79(18)
      acd79(20)=abb79(103)
      acd79(21)=dotproduct(k2,ninjaA)
      acd79(22)=dotproduct(k7,ninjaA)
      acd79(23)=dotproduct(ninjaA,spvak4k3)
      acd79(24)=abb79(59)
      acd79(25)=dotproduct(ninjaA,spvak2k7)
      acd79(26)=dotproduct(ninjaA,spvak1k7)
      acd79(27)=abb79(27)
      acd79(28)=abb79(30)
      acd79(29)=dotproduct(ninjaE3,spvak1k3)
      acd79(30)=abb79(13)
      acd79(31)=dotproduct(ninjaE3,spvak2k3)
      acd79(32)=abb79(84)
      acd79(33)=abb79(100)
      acd79(34)=dotproduct(l5,ninjaE3)
      acd79(35)=abb79(112)
      acd79(36)=abb79(82)
      acd79(37)=abb79(94)
      acd79(38)=dotproduct(l6,ninjaE3)
      acd79(39)=abb79(51)
      acd79(40)=dotproduct(ninjaA,spvak1l6)
      acd79(41)=abb79(20)
      acd79(42)=abb79(58)
      acd79(43)=abb79(75)
      acd79(44)=dotproduct(ninjaE3,spvak2l6)
      acd79(45)=abb79(52)
      acd79(46)=abb79(81)
      acd79(47)=dotproduct(ninjaE3,spvak2k1)
      acd79(48)=abb79(38)
      acd79(49)=abb79(55)
      acd79(50)=dotproduct(ninjaE3,spvak7l6)
      acd79(51)=abb79(97)
      acd79(52)=abb79(102)
      acd79(53)=dotproduct(ninjaE3,spvak4l6)
      acd79(54)=abb79(107)
      acd79(55)=dotproduct(ninjaA,ninjaE3)
      acd79(56)=abb79(93)
      acd79(57)=abb79(85)
      acd79(58)=abb79(90)
      acd79(59)=dotproduct(ninjaA,spvak1k2)
      acd79(60)=dotproduct(ninjaA,spval5k7)
      acd79(61)=dotproduct(ninjaA,spval5l6)
      acd79(62)=abb79(11)
      acd79(63)=abb79(12)
      acd79(64)=abb79(17)
      acd79(65)=abb79(19)
      acd79(66)=abb79(22)
      acd79(67)=abb79(110)
      acd79(68)=abb79(32)
      acd79(69)=abb79(41)
      acd79(70)=abb79(108)
      acd79(71)=abb79(66)
      acd79(72)=dotproduct(ninjaE3,spvak1l5)
      acd79(73)=abb79(71)
      acd79(74)=dotproduct(ninjaE3,spvak2l5)
      acd79(75)=abb79(79)
      acd79(76)=abb79(14)
      acd79(77)=abb79(21)
      acd79(78)=abb79(47)
      acd79(79)=abb79(34)
      acd79(80)=abb79(53)
      acd79(81)=abb79(61)
      acd79(82)=abb79(67)
      acd79(83)=abb79(72)
      acd79(84)=abb79(101)
      acd79(85)=dotproduct(ninjaE3,spval5k1)
      acd79(86)=abb79(96)
      acd79(87)=dotproduct(ninjaE3,spval5k3)
      acd79(88)=dotproduct(ninjaE3,spval5k2)
      acd79(89)=-acd79(11)*acd79(8)
      acd79(90)=acd79(1)*acd79(6)
      acd79(91)=-acd79(9)*acd79(12)
      acd79(89)=acd79(91)+acd79(89)+acd79(90)
      acd79(89)=acd79(5)*acd79(89)
      acd79(90)=acd79(1)*acd79(4)
      acd79(91)=-acd79(9)*acd79(10)
      acd79(90)=acd79(90)+acd79(91)
      acd79(90)=acd79(2)*acd79(90)
      acd79(91)=acd79(13)*acd79(14)
      acd79(92)=-acd79(7)*acd79(91)
      acd79(93)=acd79(8)*acd79(7)
      acd79(94)=acd79(1)*acd79(93)
      acd79(95)=acd79(9)*acd79(14)*acd79(15)
      acd79(89)=acd79(89)+acd79(90)+acd79(95)+acd79(92)+acd79(94)
      acd79(89)=acd79(3)*acd79(89)
      acd79(90)=acd79(53)*acd79(83)
      acd79(92)=acd79(50)*acd79(81)
      acd79(94)=acd79(38)*acd79(39)
      acd79(95)=acd79(47)*acd79(79)
      acd79(96)=acd79(44)*acd79(77)
      acd79(97)=acd79(16)*acd79(19)
      acd79(98)=acd79(31)*acd79(78)
      acd79(99)=acd79(29)*acd79(76)
      acd79(100)=acd79(13)*acd79(82)
      acd79(101)=acd79(8)*acd79(23)
      acd79(101)=acd79(63)-acd79(101)
      acd79(101)=acd79(11)*acd79(101)
      acd79(102)=acd79(23)*acd79(6)
      acd79(102)=acd79(28)+acd79(102)
      acd79(102)=acd79(1)*acd79(102)
      acd79(103)=-acd79(23)*acd79(12)
      acd79(103)=acd79(80)+acd79(103)
      acd79(103)=acd79(9)*acd79(103)
      acd79(90)=acd79(103)+acd79(102)+acd79(101)+acd79(100)+acd79(99)+acd79(98)&
      &+acd79(97)+acd79(96)+acd79(95)+acd79(94)+acd79(90)+acd79(92)
      acd79(90)=acd79(5)*acd79(90)
      acd79(92)=acd79(6)*acd79(25)
      acd79(94)=acd79(4)*acd79(22)
      acd79(95)=acd79(8)*acd79(26)
      acd79(92)=acd79(95)+acd79(94)+acd79(27)+acd79(92)
      acd79(92)=acd79(1)*acd79(92)
      acd79(94)=-acd79(12)*acd79(25)
      acd79(95)=-acd79(10)*acd79(22)
      acd79(96)=acd79(14)*acd79(60)
      acd79(94)=acd79(96)+acd79(95)+acd79(70)+acd79(94)
      acd79(94)=acd79(9)*acd79(94)
      acd79(95)=-acd79(12)*acd79(40)
      acd79(96)=acd79(6)*acd79(21)
      acd79(97)=-acd79(8)*acd79(59)
      acd79(95)=acd79(97)+acd79(96)+acd79(68)+acd79(95)
      acd79(95)=acd79(5)*acd79(95)
      acd79(96)=acd79(15)*acd79(40)
      acd79(97)=-acd79(7)*acd79(61)
      acd79(96)=acd79(96)+acd79(97)
      acd79(96)=acd79(14)*acd79(96)
      acd79(97)=-acd79(10)*acd79(40)
      acd79(98)=acd79(4)*acd79(21)
      acd79(97)=acd79(98)+acd79(42)+acd79(97)
      acd79(97)=acd79(2)*acd79(97)
      acd79(98)=acd79(74)*acd79(75)
      acd79(99)=acd79(72)*acd79(73)
      acd79(100)=acd79(15)*acd79(71)
      acd79(101)=acd79(7)*acd79(69)
      acd79(91)=-acd79(26)*acd79(91)
      acd79(102)=acd79(21)*acd79(93)
      acd79(103)=-acd79(8)*acd79(25)
      acd79(103)=acd79(62)+acd79(103)
      acd79(103)=acd79(11)*acd79(103)
      acd79(91)=acd79(95)+acd79(97)+acd79(94)+acd79(92)+acd79(103)+acd79(102)+a&
      &cd79(91)+acd79(96)+acd79(101)+acd79(100)+acd79(98)+acd79(99)
      acd79(91)=acd79(3)*acd79(91)
      acd79(92)=acd79(16)+acd79(38)
      acd79(92)=acd79(18)*acd79(92)
      acd79(94)=acd79(53)*acd79(54)
      acd79(95)=acd79(50)*acd79(51)
      acd79(96)=acd79(47)*acd79(48)
      acd79(97)=acd79(44)*acd79(45)
      acd79(98)=acd79(31)*acd79(46)
      acd79(99)=acd79(29)*acd79(43)
      acd79(100)=acd79(13)*acd79(52)
      acd79(101)=acd79(11)*acd79(41)
      acd79(102)=acd79(23)*acd79(4)
      acd79(102)=acd79(24)+acd79(102)
      acd79(102)=acd79(1)*acd79(102)
      acd79(103)=-acd79(23)*acd79(10)
      acd79(103)=acd79(49)+acd79(103)
      acd79(103)=acd79(9)*acd79(103)
      acd79(92)=acd79(103)+acd79(102)+acd79(101)+acd79(100)+acd79(99)+acd79(98)&
      &+acd79(97)+acd79(96)+acd79(94)+acd79(95)+acd79(92)
      acd79(92)=acd79(2)*acd79(92)
      acd79(94)=acd79(85)*acd79(86)
      acd79(95)=acd79(84)*acd79(87)
      acd79(96)=-acd79(67)*acd79(88)
      acd79(97)=2.0_ki*acd79(55)
      acd79(98)=acd79(58)*acd79(97)
      acd79(99)=acd79(34)*acd79(37)
      acd79(100)=acd79(14)*acd79(23)
      acd79(101)=acd79(15)*acd79(100)
      acd79(102)=acd79(1)*acd79(33)
      acd79(94)=acd79(102)+acd79(101)+acd79(99)+acd79(98)+acd79(96)+acd79(94)+a&
      &cd79(95)
      acd79(94)=acd79(9)*acd79(94)
      acd79(95)=acd79(47)*acd79(66)
      acd79(96)=acd79(44)*acd79(64)
      acd79(98)=acd79(31)*acd79(65)
      acd79(99)=acd79(13)*acd79(67)
      acd79(95)=acd79(99)+acd79(98)+acd79(95)+acd79(96)
      acd79(95)=acd79(11)*acd79(95)
      acd79(96)=acd79(16)*acd79(17)
      acd79(98)=acd79(31)*acd79(32)
      acd79(99)=acd79(29)*acd79(30)
      acd79(93)=acd79(23)*acd79(93)
      acd79(93)=acd79(93)+acd79(99)+acd79(96)+acd79(98)
      acd79(93)=acd79(1)*acd79(93)
      acd79(96)=acd79(16)*acd79(20)
      acd79(98)=-acd79(29)*acd79(84)
      acd79(99)=-acd79(7)*acd79(100)
      acd79(96)=acd79(99)+acd79(96)+acd79(98)
      acd79(96)=acd79(13)*acd79(96)
      acd79(98)=acd79(57)*acd79(97)
      acd79(99)=acd79(34)*acd79(36)
      acd79(98)=acd79(98)+acd79(99)
      acd79(98)=acd79(31)*acd79(98)
      acd79(97)=acd79(56)*acd79(97)
      acd79(99)=acd79(34)*acd79(35)
      acd79(97)=acd79(97)+acd79(99)
      acd79(97)=acd79(29)*acd79(97)
      acd79(90)=acd79(91)+acd79(90)+acd79(92)+acd79(94)+acd79(93)+acd79(95)+acd&
      &79(96)+acd79(98)+acd79(97)
      brack(ninjaidxt1mu0)=acd79(89)
      brack(ninjaidxt0mu0)=acd79(90)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d79h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd79h2
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
end module     p0_dbaru_epnebbbarg_d79h2l131
