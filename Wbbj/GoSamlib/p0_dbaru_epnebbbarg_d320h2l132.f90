module     p0_dbaru_epnebbbarg_d320h2l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d320h2l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd320h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd320
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd320(1)=dotproduct(k2,ninjaE3)
      acd320(2)=dotproduct(ninjaE3,spvak1k3)
      acd320(3)=dotproduct(ninjaE3,spvak2k7)
      acd320(4)=abb320(18)
      acd320(5)=dotproduct(ninjaE3,spvak1k2)
      acd320(6)=abb320(38)
      acd320(7)=dotproduct(ninjaE3,spvak4k2)
      acd320(8)=abb320(63)
      acd320(9)=dotproduct(ninjaE3,spval5l6)
      acd320(10)=abb320(45)
      acd320(11)=abb320(54)
      acd320(12)=abb320(107)
      acd320(13)=acd320(10)*acd320(2)
      acd320(14)=acd320(11)*acd320(5)
      acd320(15)=acd320(12)*acd320(7)
      acd320(13)=acd320(15)+acd320(14)+acd320(13)
      acd320(13)=acd320(13)*acd320(9)
      acd320(14)=acd320(4)*acd320(2)
      acd320(15)=acd320(6)*acd320(5)
      acd320(16)=acd320(8)*acd320(7)
      acd320(14)=acd320(16)+acd320(14)+acd320(15)
      acd320(14)=acd320(14)*acd320(1)
      acd320(13)=acd320(14)+acd320(13)
      acd320(13)=acd320(3)*acd320(13)
      brack(ninjaidxt1x0mu0)=acd320(13)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd320h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(118) :: acd320
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd320(1)=dotproduct(k2,ninjaA1)
      acd320(2)=dotproduct(ninjaE3,spvak1k2)
      acd320(3)=dotproduct(ninjaE3,spvak2k7)
      acd320(4)=abb320(38)
      acd320(5)=dotproduct(ninjaE3,spvak1k3)
      acd320(6)=abb320(18)
      acd320(7)=dotproduct(ninjaE3,spvak4k2)
      acd320(8)=abb320(63)
      acd320(9)=dotproduct(k2,ninjaE3)
      acd320(10)=dotproduct(ninjaA1,spvak1k2)
      acd320(11)=dotproduct(ninjaA1,spvak2k7)
      acd320(12)=dotproduct(ninjaA1,spvak1k3)
      acd320(13)=dotproduct(ninjaA1,spvak4k2)
      acd320(14)=dotproduct(ninjaE3,spval5l6)
      acd320(15)=abb320(54)
      acd320(16)=abb320(45)
      acd320(17)=abb320(107)
      acd320(18)=dotproduct(ninjaA1,spval5l6)
      acd320(19)=dotproduct(k2,ninjaA0)
      acd320(20)=abb320(21)
      acd320(21)=dotproduct(l6,ninjaE3)
      acd320(22)=abb320(24)
      acd320(23)=dotproduct(k7,ninjaE3)
      acd320(24)=dotproduct(ninjaA0,ninjaE3)
      acd320(25)=abb320(39)
      acd320(26)=dotproduct(ninjaA0,spvak1k2)
      acd320(27)=dotproduct(ninjaA0,spvak2k7)
      acd320(28)=dotproduct(ninjaA0,spvak1k3)
      acd320(29)=dotproduct(ninjaA0,spvak4k2)
      acd320(30)=abb320(51)
      acd320(31)=dotproduct(ninjaE3,spvak1l6)
      acd320(32)=abb320(80)
      acd320(33)=abb320(42)
      acd320(34)=abb320(82)
      acd320(35)=dotproduct(ninjaE3,spvak2l6)
      acd320(36)=abb320(32)
      acd320(37)=dotproduct(ninjaE3,spvak2k3)
      acd320(38)=abb320(64)
      acd320(39)=abb320(124)
      acd320(40)=dotproduct(ninjaE3,spvak4l6)
      acd320(41)=abb320(102)
      acd320(42)=dotproduct(ninjaE3,spval5k2)
      acd320(43)=abb320(43)
      acd320(44)=dotproduct(ninjaE3,spval5k3)
      acd320(45)=abb320(106)
      acd320(46)=dotproduct(l5,ninjaE3)
      acd320(47)=abb320(27)
      acd320(48)=abb320(52)
      acd320(49)=abb320(25)
      acd320(50)=abb320(40)
      acd320(51)=abb320(55)
      acd320(52)=abb320(26)
      acd320(53)=abb320(59)
      acd320(54)=abb320(140)
      acd320(55)=abb320(36)
      acd320(56)=abb320(72)
      acd320(57)=abb320(53)
      acd320(58)=abb320(23)
      acd320(59)=abb320(30)
      acd320(60)=abb320(65)
      acd320(61)=abb320(56)
      acd320(62)=abb320(41)
      acd320(63)=abb320(66)
      acd320(64)=abb320(50)
      acd320(65)=abb320(138)
      acd320(66)=abb320(119)
      acd320(67)=abb320(44)
      acd320(68)=abb320(81)
      acd320(69)=dotproduct(ninjaA0,spval5l6)
      acd320(70)=dotproduct(ninjaE3,spval5k7)
      acd320(71)=abb320(14)
      acd320(72)=abb320(16)
      acd320(73)=abb320(58)
      acd320(74)=abb320(60)
      acd320(75)=abb320(85)
      acd320(76)=abb320(98)
      acd320(77)=abb320(15)
      acd320(78)=abb320(118)
      acd320(79)=abb320(62)
      acd320(80)=abb320(46)
      acd320(81)=abb320(31)
      acd320(82)=abb320(37)
      acd320(83)=abb320(99)
      acd320(84)=abb320(49)
      acd320(85)=abb320(73)
      acd320(86)=dotproduct(ninjaE3,spvak2l5)
      acd320(87)=abb320(48)
      acd320(88)=abb320(101)
      acd320(89)=dotproduct(ninjaE3,spvak7l6)
      acd320(90)=abb320(47)
      acd320(91)=abb320(67)
      acd320(92)=abb320(33)
      acd320(93)=abb320(145)
      acd320(94)=acd320(15)*acd320(2)
      acd320(95)=acd320(16)*acd320(5)
      acd320(96)=acd320(17)*acd320(7)
      acd320(94)=acd320(96)+acd320(94)+acd320(95)
      acd320(94)=acd320(14)*acd320(94)
      acd320(95)=acd320(4)*acd320(2)
      acd320(96)=acd320(6)*acd320(5)
      acd320(97)=acd320(8)*acd320(7)
      acd320(95)=acd320(97)+acd320(95)+acd320(96)
      acd320(95)=acd320(95)*acd320(9)
      acd320(94)=acd320(94)+acd320(95)
      acd320(95)=acd320(11)*acd320(94)
      acd320(96)=acd320(7)*acd320(3)
      acd320(97)=acd320(96)*acd320(8)
      acd320(98)=acd320(5)*acd320(3)
      acd320(99)=acd320(98)*acd320(6)
      acd320(100)=acd320(2)*acd320(3)
      acd320(101)=acd320(100)*acd320(4)
      acd320(97)=acd320(101)+acd320(97)+acd320(99)
      acd320(99)=acd320(1)*acd320(97)
      acd320(101)=acd320(96)*acd320(17)
      acd320(102)=acd320(98)*acd320(16)
      acd320(103)=acd320(100)*acd320(15)
      acd320(101)=acd320(103)+acd320(101)+acd320(102)
      acd320(102)=acd320(18)*acd320(101)
      acd320(103)=acd320(14)*acd320(3)
      acd320(104)=acd320(103)*acd320(15)
      acd320(105)=acd320(9)*acd320(3)
      acd320(106)=acd320(105)*acd320(4)
      acd320(104)=acd320(104)+acd320(106)
      acd320(106)=acd320(10)*acd320(104)
      acd320(107)=acd320(103)*acd320(16)
      acd320(108)=acd320(105)*acd320(6)
      acd320(107)=acd320(107)+acd320(108)
      acd320(108)=acd320(12)*acd320(107)
      acd320(109)=acd320(103)*acd320(17)
      acd320(110)=acd320(105)*acd320(8)
      acd320(109)=acd320(109)+acd320(110)
      acd320(110)=acd320(13)*acd320(109)
      acd320(95)=acd320(110)+acd320(108)+acd320(106)+acd320(102)+acd320(99)+acd&
      &320(95)
      acd320(99)=acd320(47)*acd320(46)
      acd320(102)=acd320(50)*acd320(21)
      acd320(106)=acd320(58)*acd320(23)
      acd320(108)=2.0_ki*acd320(24)
      acd320(110)=acd320(61)*acd320(108)
      acd320(111)=acd320(77)*acd320(31)
      acd320(112)=acd320(80)*acd320(35)
      acd320(113)=acd320(81)*acd320(37)
      acd320(114)=acd320(83)*acd320(40)
      acd320(115)=acd320(84)*acd320(42)
      acd320(116)=acd320(87)*acd320(86)
      acd320(117)=acd320(88)*acd320(44)
      acd320(118)=-acd320(89)*acd320(63)
      acd320(99)=acd320(118)+acd320(117)+acd320(116)+acd320(115)+acd320(114)+ac&
      &d320(113)+acd320(112)+acd320(111)+acd320(110)+acd320(106)+acd320(102)+ac&
      &d320(99)
      acd320(99)=acd320(3)*acd320(99)
      acd320(102)=acd320(63)*acd320(35)
      acd320(106)=acd320(25)*acd320(9)
      acd320(110)=acd320(59)*acd320(2)
      acd320(111)=-acd320(60)*acd320(31)
      acd320(112)=acd320(62)*acd320(5)
      acd320(113)=acd320(64)*acd320(37)
      acd320(114)=acd320(65)*acd320(7)
      acd320(115)=-acd320(66)*acd320(40)
      acd320(116)=acd320(67)*acd320(42)
      acd320(117)=-acd320(68)*acd320(44)
      acd320(102)=acd320(117)+acd320(116)+acd320(115)+acd320(114)+acd320(113)+a&
      &cd320(112)+acd320(111)+acd320(110)+acd320(106)+acd320(102)
      acd320(102)=acd320(108)*acd320(102)
      acd320(106)=acd320(30)*acd320(2)
      acd320(108)=acd320(32)*acd320(31)
      acd320(110)=acd320(34)*acd320(5)
      acd320(111)=acd320(36)*acd320(35)
      acd320(112)=acd320(38)*acd320(37)
      acd320(113)=acd320(39)*acd320(7)
      acd320(114)=acd320(41)*acd320(40)
      acd320(115)=acd320(43)*acd320(42)
      acd320(116)=acd320(45)*acd320(44)
      acd320(106)=acd320(116)+acd320(115)+acd320(114)+acd320(113)+acd320(112)+a&
      &cd320(111)+acd320(110)+acd320(108)+acd320(106)
      acd320(106)=acd320(9)*acd320(106)
      acd320(108)=acd320(22)*acd320(9)
      acd320(110)=-acd320(49)*acd320(31)
      acd320(111)=acd320(52)*acd320(35)
      acd320(112)=acd320(53)*acd320(37)
      acd320(113)=-acd320(55)*acd320(40)
      acd320(114)=-acd320(56)*acd320(42)
      acd320(115)=-acd320(57)*acd320(44)
      acd320(108)=acd320(108)+acd320(115)+acd320(114)+acd320(113)+acd320(112)+a&
      &cd320(111)+acd320(110)
      acd320(110)=acd320(23)+acd320(21)
      acd320(108)=acd320(110)*acd320(108)
      acd320(110)=acd320(48)*acd320(21)
      acd320(111)=acd320(71)*acd320(70)
      acd320(112)=acd320(73)*acd320(35)
      acd320(113)=acd320(74)*acd320(14)
      acd320(110)=acd320(113)+acd320(112)+acd320(111)+acd320(110)
      acd320(110)=acd320(2)*acd320(110)
      acd320(111)=acd320(51)*acd320(21)
      acd320(112)=acd320(75)*acd320(70)
      acd320(113)=acd320(90)*acd320(35)
      acd320(114)=acd320(91)*acd320(14)
      acd320(111)=acd320(114)+acd320(113)+acd320(112)+acd320(111)
      acd320(111)=acd320(5)*acd320(111)
      acd320(112)=acd320(54)*acd320(21)
      acd320(113)=acd320(76)*acd320(70)
      acd320(114)=acd320(92)*acd320(35)
      acd320(115)=acd320(93)*acd320(14)
      acd320(112)=acd320(115)+acd320(114)+acd320(113)+acd320(112)
      acd320(112)=acd320(7)*acd320(112)
      acd320(94)=acd320(27)*acd320(94)
      acd320(97)=acd320(19)*acd320(97)
      acd320(101)=acd320(69)*acd320(101)
      acd320(104)=acd320(26)*acd320(104)
      acd320(107)=acd320(28)*acd320(107)
      acd320(109)=acd320(29)*acd320(109)
      acd320(113)=acd320(20)*acd320(9)**2
      acd320(105)=acd320(33)*acd320(105)
      acd320(100)=acd320(72)*acd320(100)
      acd320(114)=acd320(78)*acd320(3)**2
      acd320(98)=acd320(79)*acd320(98)
      acd320(96)=acd320(82)*acd320(96)
      acd320(103)=acd320(85)*acd320(103)
      acd320(94)=acd320(103)+acd320(96)+acd320(98)+acd320(114)+acd320(100)+acd3&
      &20(105)+acd320(113)+acd320(109)+acd320(107)+acd320(104)+acd320(101)+acd3&
      &20(94)+acd320(97)+acd320(99)+acd320(102)+acd320(106)+acd320(112)+acd320(&
      &111)+acd320(110)+acd320(108)
      brack(ninjaidxt0x0mu0)=acd320(94)
      brack(ninjaidxt0x1mu0)=acd320(95)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d320h2_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd320h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = + a0(0:3)
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
end module     p0_dbaru_epnebbbarg_d320h2l132
