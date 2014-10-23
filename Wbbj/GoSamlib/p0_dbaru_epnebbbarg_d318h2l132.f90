module     p0_dbaru_epnebbbarg_d318h2l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d318h2l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd318h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd318
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd318(1)=dotproduct(k2,ninjaE3)
      acd318(2)=dotproduct(ninjaE3,spvak1k2)
      acd318(3)=dotproduct(ninjaE3,spvak2k7)
      acd318(4)=abb318(26)
      acd318(5)=dotproduct(ninjaE3,spvak4k2)
      acd318(6)=abb318(70)
      acd318(7)=dotproduct(ninjaE3,spvak1k3)
      acd318(8)=abb318(55)
      acd318(9)=dotproduct(ninjaE3,spval5l6)
      acd318(10)=abb318(28)
      acd318(11)=abb318(40)
      acd318(12)=abb318(58)
      acd318(13)=acd318(10)*acd318(2)
      acd318(14)=acd318(11)*acd318(5)
      acd318(15)=acd318(12)*acd318(7)
      acd318(13)=acd318(15)+acd318(14)+acd318(13)
      acd318(13)=acd318(13)*acd318(9)
      acd318(14)=acd318(4)*acd318(2)
      acd318(15)=acd318(6)*acd318(5)
      acd318(16)=acd318(8)*acd318(7)
      acd318(14)=acd318(16)+acd318(14)+acd318(15)
      acd318(14)=acd318(14)*acd318(1)
      acd318(13)=acd318(14)+acd318(13)
      acd318(13)=acd318(3)*acd318(13)
      brack(ninjaidxt1x0mu0)=acd318(13)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd318h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(115) :: acd318
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd318(1)=dotproduct(k2,ninjaA1)
      acd318(2)=dotproduct(ninjaE3,spvak2k7)
      acd318(3)=dotproduct(ninjaE3,spvak1k2)
      acd318(4)=abb318(26)
      acd318(5)=dotproduct(ninjaE3,spvak4k2)
      acd318(6)=abb318(70)
      acd318(7)=dotproduct(ninjaE3,spvak1k3)
      acd318(8)=abb318(55)
      acd318(9)=dotproduct(k2,ninjaE3)
      acd318(10)=dotproduct(ninjaA1,spvak2k7)
      acd318(11)=dotproduct(ninjaA1,spvak1k2)
      acd318(12)=dotproduct(ninjaA1,spvak4k2)
      acd318(13)=dotproduct(ninjaA1,spvak1k3)
      acd318(14)=dotproduct(ninjaE3,spval5l6)
      acd318(15)=abb318(28)
      acd318(16)=abb318(40)
      acd318(17)=abb318(58)
      acd318(18)=dotproduct(ninjaA1,spval5l6)
      acd318(19)=dotproduct(k2,ninjaA0)
      acd318(20)=abb318(92)
      acd318(21)=dotproduct(l5,ninjaE3)
      acd318(22)=abb318(91)
      acd318(23)=dotproduct(k7,ninjaE3)
      acd318(24)=dotproduct(ninjaA0,ninjaE3)
      acd318(25)=abb318(71)
      acd318(26)=dotproduct(ninjaA0,spvak2k7)
      acd318(27)=dotproduct(ninjaA0,spvak1k2)
      acd318(28)=dotproduct(ninjaA0,spvak4k2)
      acd318(29)=dotproduct(ninjaA0,spvak1k3)
      acd318(30)=abb318(36)
      acd318(31)=dotproduct(ninjaE3,spvak2l6)
      acd318(32)=abb318(19)
      acd318(33)=abb318(24)
      acd318(34)=dotproduct(ninjaE3,spval5k7)
      acd318(35)=abb318(139)
      acd318(36)=dotproduct(ninjaE3,spvak2k3)
      acd318(37)=abb318(39)
      acd318(38)=abb318(168)
      acd318(39)=dotproduct(ninjaE3,spvak1l6)
      acd318(40)=abb318(46)
      acd318(41)=abb318(81)
      acd318(42)=dotproduct(ninjaE3,spvak4l6)
      acd318(43)=abb318(146)
      acd318(44)=abb318(33)
      acd318(45)=abb318(16)
      acd318(46)=abb318(21)
      acd318(47)=abb318(89)
      acd318(48)=abb318(72)
      acd318(49)=abb318(129)
      acd318(50)=abb318(44)
      acd318(51)=abb318(78)
      acd318(52)=abb318(112)
      acd318(53)=dotproduct(l6,ninjaE3)
      acd318(54)=abb318(32)
      acd318(55)=abb318(25)
      acd318(56)=abb318(47)
      acd318(57)=abb318(73)
      acd318(58)=abb318(69)
      acd318(59)=abb318(54)
      acd318(60)=abb318(143)
      acd318(61)=dotproduct(ninjaA0,spval5l6)
      acd318(62)=dotproduct(ninjaE3,spvak2l5)
      acd318(63)=abb318(15)
      acd318(64)=abb318(30)
      acd318(65)=abb318(68)
      acd318(66)=abb318(75)
      acd318(67)=abb318(76)
      acd318(68)=abb318(57)
      acd318(69)=abb318(18)
      acd318(70)=abb318(60)
      acd318(71)=abb318(31)
      acd318(72)=dotproduct(ninjaE3,spval5k3)
      acd318(73)=abb318(34)
      acd318(74)=abb318(74)
      acd318(75)=abb318(67)
      acd318(76)=abb318(59)
      acd318(77)=dotproduct(ninjaE3,spvak7l6)
      acd318(78)=dotproduct(ninjaE3,spvak7k2)
      acd318(79)=abb318(48)
      acd318(80)=abb318(52)
      acd318(81)=dotproduct(ninjaE3,spval5k2)
      acd318(82)=abb318(64)
      acd318(83)=abb318(65)
      acd318(84)=abb318(22)
      acd318(85)=abb318(23)
      acd318(86)=abb318(116)
      acd318(87)=abb318(82)
      acd318(88)=abb318(149)
      acd318(89)=abb318(79)
      acd318(90)=acd318(4)*acd318(3)
      acd318(91)=acd318(6)*acd318(5)
      acd318(92)=acd318(8)*acd318(7)
      acd318(90)=acd318(90)+acd318(91)+acd318(92)
      acd318(90)=acd318(90)*acd318(9)
      acd318(91)=acd318(15)*acd318(3)
      acd318(92)=acd318(16)*acd318(5)
      acd318(93)=acd318(17)*acd318(7)
      acd318(91)=acd318(91)+acd318(93)+acd318(92)
      acd318(91)=acd318(14)*acd318(91)
      acd318(90)=acd318(90)+acd318(91)
      acd318(91)=acd318(10)*acd318(90)
      acd318(92)=acd318(7)*acd318(2)
      acd318(93)=acd318(92)*acd318(8)
      acd318(94)=acd318(5)*acd318(2)
      acd318(95)=acd318(94)*acd318(6)
      acd318(96)=acd318(3)*acd318(2)
      acd318(97)=acd318(96)*acd318(4)
      acd318(93)=acd318(97)+acd318(93)+acd318(95)
      acd318(95)=acd318(1)*acd318(93)
      acd318(97)=acd318(92)*acd318(17)
      acd318(98)=acd318(94)*acd318(16)
      acd318(99)=acd318(96)*acd318(15)
      acd318(97)=acd318(99)+acd318(97)+acd318(98)
      acd318(98)=acd318(18)*acd318(97)
      acd318(99)=acd318(14)*acd318(2)
      acd318(100)=acd318(99)*acd318(15)
      acd318(101)=acd318(9)*acd318(2)
      acd318(102)=acd318(101)*acd318(4)
      acd318(100)=acd318(100)+acd318(102)
      acd318(102)=acd318(11)*acd318(100)
      acd318(103)=acd318(99)*acd318(16)
      acd318(104)=acd318(101)*acd318(6)
      acd318(103)=acd318(103)+acd318(104)
      acd318(104)=acd318(12)*acd318(103)
      acd318(105)=acd318(99)*acd318(17)
      acd318(106)=acd318(101)*acd318(8)
      acd318(105)=acd318(105)+acd318(106)
      acd318(106)=acd318(13)*acd318(105)
      acd318(91)=acd318(106)+acd318(104)+acd318(102)+acd318(98)+acd318(95)+acd3&
      &18(91)
      acd318(95)=-acd318(53)+acd318(23)
      acd318(95)=acd318(54)*acd318(95)
      acd318(98)=acd318(44)*acd318(21)
      acd318(102)=2.0_ki*acd318(24)
      acd318(104)=acd318(55)*acd318(102)
      acd318(106)=acd318(63)*acd318(62)
      acd318(107)=acd318(68)*acd318(31)
      acd318(108)=acd318(70)*acd318(34)
      acd318(109)=acd318(73)*acd318(72)
      acd318(110)=acd318(74)*acd318(36)
      acd318(111)=acd318(76)*acd318(39)
      acd318(112)=-acd318(77)*acd318(56)
      acd318(113)=acd318(79)*acd318(78)
      acd318(114)=acd318(82)*acd318(81)
      acd318(115)=acd318(83)*acd318(42)
      acd318(95)=acd318(115)+acd318(114)+acd318(113)+acd318(112)+acd318(111)+ac&
      &d318(110)+acd318(109)+acd318(108)+acd318(107)+acd318(106)+acd318(104)+ac&
      &d318(98)+acd318(95)
      acd318(95)=acd318(2)*acd318(95)
      acd318(98)=acd318(25)*acd318(102)
      acd318(104)=acd318(32)*acd318(31)
      acd318(106)=acd318(33)*acd318(3)
      acd318(107)=acd318(35)*acd318(34)
      acd318(108)=acd318(37)*acd318(36)
      acd318(109)=acd318(38)*acd318(5)
      acd318(110)=acd318(40)*acd318(39)
      acd318(111)=acd318(41)*acd318(7)
      acd318(112)=acd318(43)*acd318(42)
      acd318(98)=acd318(112)+acd318(111)+acd318(110)+acd318(109)+acd318(108)+ac&
      &d318(107)+acd318(106)+acd318(104)+acd318(98)
      acd318(98)=acd318(9)*acd318(98)
      acd318(104)=acd318(22)*acd318(9)
      acd318(106)=acd318(45)*acd318(31)
      acd318(107)=-acd318(47)*acd318(34)
      acd318(108)=-acd318(48)*acd318(36)
      acd318(109)=-acd318(50)*acd318(39)
      acd318(110)=-acd318(52)*acd318(42)
      acd318(104)=acd318(107)+acd318(104)+acd318(110)+acd318(109)+acd318(108)+a&
      &cd318(106)
      acd318(106)=acd318(23)+acd318(21)
      acd318(104)=acd318(106)*acd318(104)
      acd318(106)=acd318(56)*acd318(31)
      acd318(107)=acd318(57)*acd318(34)
      acd318(108)=acd318(58)*acd318(36)
      acd318(109)=acd318(59)*acd318(39)
      acd318(110)=acd318(60)*acd318(42)
      acd318(106)=acd318(110)+acd318(109)+acd318(108)+acd318(107)+acd318(106)
      acd318(102)=acd318(102)*acd318(106)
      acd318(106)=acd318(46)*acd318(21)
      acd318(107)=acd318(64)*acd318(62)
      acd318(108)=acd318(84)*acd318(34)
      acd318(109)=acd318(85)*acd318(14)
      acd318(106)=acd318(109)+acd318(108)+acd318(107)+acd318(106)
      acd318(106)=acd318(3)*acd318(106)
      acd318(107)=acd318(49)*acd318(21)
      acd318(108)=acd318(65)*acd318(62)
      acd318(109)=acd318(86)*acd318(34)
      acd318(110)=acd318(88)*acd318(14)
      acd318(107)=acd318(110)+acd318(109)+acd318(108)+acd318(107)
      acd318(107)=acd318(5)*acd318(107)
      acd318(108)=acd318(51)*acd318(21)
      acd318(109)=acd318(66)*acd318(62)
      acd318(110)=acd318(87)*acd318(34)
      acd318(111)=acd318(89)*acd318(14)
      acd318(108)=acd318(111)+acd318(110)+acd318(109)+acd318(108)
      acd318(108)=acd318(7)*acd318(108)
      acd318(90)=acd318(26)*acd318(90)
      acd318(93)=acd318(19)*acd318(93)
      acd318(97)=acd318(61)*acd318(97)
      acd318(100)=acd318(27)*acd318(100)
      acd318(103)=acd318(28)*acd318(103)
      acd318(105)=acd318(29)*acd318(105)
      acd318(109)=acd318(20)*acd318(9)**2
      acd318(101)=acd318(30)*acd318(101)
      acd318(110)=acd318(67)*acd318(2)**2
      acd318(96)=acd318(69)*acd318(96)
      acd318(99)=acd318(71)*acd318(99)
      acd318(94)=acd318(75)*acd318(94)
      acd318(92)=acd318(80)*acd318(92)
      acd318(90)=acd318(92)+acd318(94)+acd318(99)+acd318(96)+acd318(110)+acd318&
      &(101)+acd318(109)+acd318(105)+acd318(103)+acd318(100)+acd318(97)+acd318(&
      &90)+acd318(93)+acd318(95)+acd318(98)+acd318(102)+acd318(108)+acd318(107)&
      &+acd318(106)+acd318(104)
      brack(ninjaidxt0x0mu0)=acd318(90)
      brack(ninjaidxt0x1mu0)=acd318(91)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d318h2_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd318h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = - a0(0:3)
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
end module     p0_dbaru_epnebbbarg_d318h2l132
