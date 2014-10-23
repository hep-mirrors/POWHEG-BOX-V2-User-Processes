module     p0_dbaru_epnebbbarg_d21h6l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d21h6l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd21h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(46) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd21(1)=dotproduct(k1,ninjaE3)
      acd21(2)=dotproduct(k2,ninjaE3)
      acd21(3)=abb21(23)
      acd21(4)=dotproduct(ninjaE3,spval5l6)
      acd21(5)=abb21(42)
      acd21(6)=abb21(77)
      acd21(7)=dotproduct(k3,ninjaE3)
      acd21(8)=abb21(100)
      acd21(9)=dotproduct(k4,ninjaE3)
      acd21(10)=dotproduct(l5,ninjaE3)
      acd21(11)=abb21(39)
      acd21(12)=dotproduct(l6,ninjaE3)
      acd21(13)=dotproduct(ninjaE3,spvak4k2)
      acd21(14)=abb21(15)
      acd21(15)=abb21(46)
      acd21(16)=dotproduct(ninjaE3,spvak7k2)
      acd21(17)=abb21(37)
      acd21(18)=dotproduct(ninjaE3,spvak1l5)
      acd21(19)=abb21(19)
      acd21(20)=dotproduct(ninjaE3,spvak4k3)
      acd21(21)=abb21(25)
      acd21(22)=dotproduct(ninjaE3,spvak1l6)
      acd21(23)=abb21(26)
      acd21(24)=dotproduct(ninjaE3,spvak1k2)
      acd21(25)=abb21(31)
      acd21(26)=abb21(57)
      acd21(27)=abb21(44)
      acd21(28)=abb21(12)
      acd21(29)=abb21(13)
      acd21(30)=abb21(28)
      acd21(31)=abb21(29)
      acd21(32)=abb21(30)
      acd21(33)=abb21(32)
      acd21(34)=acd21(10)+acd21(12)
      acd21(35)=-acd21(11)*acd21(34)
      acd21(36)=acd21(7)+acd21(9)
      acd21(37)=-acd21(8)*acd21(36)
      acd21(38)=acd21(24)*acd21(25)
      acd21(39)=acd21(22)*acd21(23)
      acd21(40)=acd21(20)*acd21(21)
      acd21(41)=acd21(18)*acd21(19)
      acd21(42)=acd21(16)*acd21(17)
      acd21(43)=acd21(13)*acd21(14)
      acd21(44)=acd21(1)*acd21(3)
      acd21(45)=acd21(4)*acd21(15)
      acd21(46)=acd21(2)*acd21(6)
      acd21(35)=acd21(46)+acd21(45)+acd21(44)+acd21(43)+acd21(42)+acd21(41)+acd&
      &21(40)+acd21(38)+acd21(39)+acd21(37)+acd21(35)
      acd21(35)=acd21(2)*acd21(35)
      acd21(34)=-acd21(27)*acd21(34)
      acd21(36)=-acd21(26)*acd21(36)
      acd21(37)=acd21(24)*acd21(33)
      acd21(38)=acd21(22)*acd21(32)
      acd21(39)=acd21(20)*acd21(31)
      acd21(40)=acd21(18)*acd21(30)
      acd21(41)=acd21(16)*acd21(29)
      acd21(42)=acd21(13)*acd21(28)
      acd21(43)=acd21(1)*acd21(5)
      acd21(34)=acd21(43)+acd21(42)+acd21(41)+acd21(40)+acd21(39)+acd21(37)+acd&
      &21(38)+acd21(36)+acd21(34)
      acd21(34)=acd21(4)*acd21(34)
      acd21(34)=acd21(34)+acd21(35)
      brack(ninjaidxt1x0mu0)=acd21(34)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd21h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(98) :: acd21
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd21(1)=dotproduct(k1,ninjaA1)
      acd21(2)=dotproduct(k2,ninjaE3)
      acd21(3)=abb21(23)
      acd21(4)=dotproduct(ninjaE3,spval5l6)
      acd21(5)=abb21(42)
      acd21(6)=dotproduct(k1,ninjaE3)
      acd21(7)=dotproduct(k2,ninjaA1)
      acd21(8)=dotproduct(ninjaA1,spval5l6)
      acd21(9)=abb21(77)
      acd21(10)=dotproduct(k3,ninjaE3)
      acd21(11)=abb21(100)
      acd21(12)=dotproduct(k4,ninjaE3)
      acd21(13)=dotproduct(l5,ninjaE3)
      acd21(14)=abb21(39)
      acd21(15)=dotproduct(l6,ninjaE3)
      acd21(16)=dotproduct(ninjaE3,spvak4k2)
      acd21(17)=abb21(15)
      acd21(18)=abb21(46)
      acd21(19)=dotproduct(ninjaE3,spvak7k2)
      acd21(20)=abb21(37)
      acd21(21)=dotproduct(ninjaE3,spvak1k2)
      acd21(22)=abb21(31)
      acd21(23)=dotproduct(ninjaE3,spvak1l6)
      acd21(24)=abb21(26)
      acd21(25)=dotproduct(ninjaE3,spvak4k3)
      acd21(26)=abb21(25)
      acd21(27)=dotproduct(ninjaE3,spvak1l5)
      acd21(28)=abb21(19)
      acd21(29)=dotproduct(k3,ninjaA1)
      acd21(30)=dotproduct(k4,ninjaA1)
      acd21(31)=dotproduct(l5,ninjaA1)
      acd21(32)=dotproduct(l6,ninjaA1)
      acd21(33)=dotproduct(ninjaA1,spvak4k2)
      acd21(34)=dotproduct(ninjaA1,spvak7k2)
      acd21(35)=dotproduct(ninjaA1,spvak1k2)
      acd21(36)=dotproduct(ninjaA1,spvak1l6)
      acd21(37)=dotproduct(ninjaA1,spvak4k3)
      acd21(38)=dotproduct(ninjaA1,spvak1l5)
      acd21(39)=abb21(57)
      acd21(40)=abb21(44)
      acd21(41)=abb21(12)
      acd21(42)=abb21(13)
      acd21(43)=abb21(32)
      acd21(44)=abb21(30)
      acd21(45)=abb21(29)
      acd21(46)=abb21(28)
      acd21(47)=dotproduct(k1,ninjaA0)
      acd21(48)=dotproduct(k2,ninjaA0)
      acd21(49)=dotproduct(ninjaA0,spval5l6)
      acd21(50)=abb21(21)
      acd21(51)=dotproduct(k3,ninjaA0)
      acd21(52)=dotproduct(k4,ninjaA0)
      acd21(53)=dotproduct(l5,ninjaA0)
      acd21(54)=dotproduct(l6,ninjaA0)
      acd21(55)=dotproduct(ninjaA0,spvak4k2)
      acd21(56)=dotproduct(ninjaA0,spvak7k2)
      acd21(57)=dotproduct(ninjaA0,spvak1k2)
      acd21(58)=dotproduct(ninjaA0,spvak1l6)
      acd21(59)=dotproduct(ninjaA0,spvak4k3)
      acd21(60)=dotproduct(ninjaA0,spvak1l5)
      acd21(61)=abb21(20)
      acd21(62)=abb21(118)
      acd21(63)=abb21(33)
      acd21(64)=dotproduct(ninjaA0,ninjaE3)
      acd21(65)=abb21(27)
      acd21(66)=abb21(14)
      acd21(67)=abb21(35)
      acd21(68)=abb21(22)
      acd21(69)=abb21(16)
      acd21(70)=abb21(17)
      acd21(71)=abb21(18)
      acd21(72)=acd21(3)*acd21(6)
      acd21(73)=acd21(17)*acd21(16)
      acd21(74)=acd21(20)*acd21(19)
      acd21(75)=acd21(22)*acd21(21)
      acd21(76)=acd21(24)*acd21(23)
      acd21(77)=acd21(26)*acd21(25)
      acd21(78)=acd21(28)*acd21(27)
      acd21(79)=acd21(9)*acd21(2)
      acd21(72)=acd21(75)+acd21(76)+acd21(77)+acd21(78)+acd21(72)+2.0_ki*acd21(&
      &79)+acd21(73)+acd21(74)
      acd21(73)=acd21(7)*acd21(72)
      acd21(74)=acd21(5)*acd21(6)
      acd21(75)=acd21(41)*acd21(16)
      acd21(76)=acd21(42)*acd21(19)
      acd21(77)=acd21(43)*acd21(21)
      acd21(78)=acd21(44)*acd21(23)
      acd21(79)=acd21(45)*acd21(25)
      acd21(80)=acd21(46)*acd21(27)
      acd21(74)=acd21(77)+acd21(78)+acd21(79)+acd21(80)+acd21(74)+acd21(75)+acd&
      &21(76)
      acd21(75)=acd21(8)*acd21(74)
      acd21(76)=acd21(11)*acd21(7)
      acd21(77)=acd21(39)*acd21(8)
      acd21(76)=acd21(76)+acd21(77)
      acd21(77)=acd21(12)+acd21(10)
      acd21(76)=-acd21(76)*acd21(77)
      acd21(78)=acd21(14)*acd21(7)
      acd21(79)=acd21(40)*acd21(8)
      acd21(78)=acd21(78)+acd21(79)
      acd21(79)=acd21(15)+acd21(13)
      acd21(78)=-acd21(78)*acd21(79)
      acd21(80)=acd21(11)*acd21(2)
      acd21(81)=acd21(39)*acd21(4)
      acd21(80)=acd21(80)+acd21(81)
      acd21(81)=-acd21(30)-acd21(29)
      acd21(81)=acd21(80)*acd21(81)
      acd21(82)=acd21(14)*acd21(2)
      acd21(83)=acd21(40)*acd21(4)
      acd21(82)=acd21(82)+acd21(83)
      acd21(83)=-acd21(32)-acd21(31)
      acd21(83)=acd21(82)*acd21(83)
      acd21(84)=acd21(7)*acd21(4)
      acd21(85)=acd21(8)*acd21(2)
      acd21(84)=acd21(84)+acd21(85)
      acd21(84)=acd21(18)*acd21(84)
      acd21(85)=acd21(3)*acd21(2)
      acd21(86)=acd21(5)*acd21(4)
      acd21(85)=acd21(85)+acd21(86)
      acd21(86)=acd21(1)*acd21(85)
      acd21(87)=acd21(17)*acd21(2)
      acd21(88)=acd21(41)*acd21(4)
      acd21(87)=acd21(87)+acd21(88)
      acd21(88)=acd21(33)*acd21(87)
      acd21(89)=acd21(20)*acd21(2)
      acd21(90)=acd21(42)*acd21(4)
      acd21(89)=acd21(89)+acd21(90)
      acd21(90)=acd21(34)*acd21(89)
      acd21(91)=acd21(22)*acd21(2)
      acd21(92)=acd21(43)*acd21(4)
      acd21(91)=acd21(91)+acd21(92)
      acd21(92)=acd21(35)*acd21(91)
      acd21(93)=acd21(24)*acd21(2)
      acd21(94)=acd21(44)*acd21(4)
      acd21(93)=acd21(93)+acd21(94)
      acd21(94)=acd21(36)*acd21(93)
      acd21(95)=acd21(26)*acd21(2)
      acd21(96)=acd21(45)*acd21(4)
      acd21(95)=acd21(95)+acd21(96)
      acd21(96)=acd21(37)*acd21(95)
      acd21(97)=acd21(28)*acd21(2)
      acd21(98)=acd21(46)*acd21(4)
      acd21(97)=acd21(97)+acd21(98)
      acd21(98)=acd21(38)*acd21(97)
      acd21(73)=acd21(98)+acd21(96)+acd21(94)+acd21(92)+acd21(90)+acd21(88)+acd&
      &21(86)+acd21(84)+acd21(73)+acd21(75)+acd21(83)+acd21(81)+acd21(78)+acd21&
      &(76)
      acd21(72)=acd21(48)*acd21(72)
      acd21(74)=acd21(49)*acd21(74)
      acd21(75)=acd21(14)*acd21(48)
      acd21(76)=acd21(40)*acd21(49)
      acd21(75)=-acd21(63)-acd21(75)-acd21(76)
      acd21(75)=acd21(79)*acd21(75)
      acd21(76)=acd21(11)*acd21(48)
      acd21(78)=acd21(39)*acd21(49)
      acd21(76)=-acd21(62)-acd21(76)-acd21(78)
      acd21(76)=acd21(77)*acd21(76)
      acd21(77)=-acd21(52)-acd21(51)
      acd21(77)=acd21(80)*acd21(77)
      acd21(78)=-acd21(54)-acd21(53)
      acd21(78)=acd21(82)*acd21(78)
      acd21(79)=acd21(48)*acd21(4)
      acd21(80)=acd21(49)*acd21(2)
      acd21(79)=acd21(79)+acd21(80)
      acd21(79)=acd21(18)*acd21(79)
      acd21(80)=acd21(47)*acd21(85)
      acd21(81)=acd21(55)*acd21(87)
      acd21(82)=acd21(56)*acd21(89)
      acd21(83)=acd21(57)*acd21(91)
      acd21(84)=acd21(58)*acd21(93)
      acd21(85)=acd21(59)*acd21(95)
      acd21(86)=acd21(60)*acd21(97)
      acd21(87)=acd21(50)*acd21(6)
      acd21(88)=acd21(61)*acd21(2)
      acd21(89)=acd21(65)*acd21(64)
      acd21(90)=acd21(66)*acd21(16)
      acd21(91)=acd21(67)*acd21(4)
      acd21(92)=acd21(68)*acd21(19)
      acd21(93)=acd21(69)*acd21(21)
      acd21(94)=acd21(70)*acd21(23)
      acd21(95)=acd21(71)*acd21(25)
      acd21(72)=acd21(95)+acd21(94)+acd21(93)+acd21(92)+acd21(91)+acd21(90)+2.0&
      &_ki*acd21(89)+acd21(88)+acd21(87)+acd21(86)+acd21(85)+acd21(84)+acd21(83&
      &)+acd21(82)+acd21(81)+acd21(80)+acd21(79)+acd21(72)+acd21(74)+acd21(78)+&
      &acd21(77)+acd21(76)+acd21(75)
      brack(ninjaidxt0x0mu0)=acd21(72)
      brack(ninjaidxt0x1mu0)=acd21(73)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d21h6_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd21h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6-k5
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d21h6l132
