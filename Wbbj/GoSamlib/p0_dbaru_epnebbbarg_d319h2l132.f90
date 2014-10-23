module     p0_dbaru_epnebbbarg_d319h2l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d319h2l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd319h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd319
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd319(1)=dotproduct(k2,ninjaE3)
      acd319(2)=dotproduct(ninjaE3,spvak2k7)
      acd319(3)=abb319(54)
      acd319(4)=dotproduct(k3,ninjaE3)
      acd319(5)=dotproduct(k4,ninjaE3)
      acd319(6)=dotproduct(ninjaE3,spvak4k2)
      acd319(7)=abb319(27)
      acd319(8)=dotproduct(ninjaE3,spval5l6)
      acd319(9)=abb319(59)
      acd319(10)=dotproduct(ninjaE3,spvak4k3)
      acd319(11)=abb319(46)
      acd319(12)=dotproduct(ninjaE3,spvak1k2)
      acd319(13)=abb319(47)
      acd319(14)=abb319(19)
      acd319(15)=abb319(53)
      acd319(16)=abb319(49)
      acd319(17)=acd319(4)+acd319(5)
      acd319(18)=-acd319(1)+acd319(17)
      acd319(18)=acd319(3)*acd319(18)
      acd319(19)=acd319(12)*acd319(13)
      acd319(20)=acd319(10)*acd319(11)
      acd319(21)=acd319(6)*acd319(7)
      acd319(22)=acd319(8)*acd319(9)
      acd319(18)=acd319(22)+acd319(21)+acd319(19)+acd319(20)+acd319(18)
      acd319(18)=acd319(1)*acd319(18)
      acd319(19)=acd319(12)*acd319(16)
      acd319(20)=acd319(10)*acd319(15)
      acd319(21)=acd319(6)*acd319(14)
      acd319(17)=-acd319(9)*acd319(17)
      acd319(17)=acd319(17)+acd319(21)+acd319(19)+acd319(20)
      acd319(17)=acd319(8)*acd319(17)
      acd319(17)=acd319(17)+acd319(18)
      acd319(17)=acd319(2)*acd319(17)
      brack(ninjaidxt1x0mu0)=acd319(17)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd319h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(111) :: acd319
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd319(1)=dotproduct(k2,ninjaA1)
      acd319(2)=dotproduct(k2,ninjaE3)
      acd319(3)=dotproduct(ninjaE3,spvak2k7)
      acd319(4)=abb319(54)
      acd319(5)=dotproduct(k3,ninjaE3)
      acd319(6)=dotproduct(k4,ninjaE3)
      acd319(7)=dotproduct(ninjaE3,spvak4k3)
      acd319(8)=abb319(46)
      acd319(9)=dotproduct(ninjaE3,spvak4k2)
      acd319(10)=abb319(27)
      acd319(11)=dotproduct(ninjaE3,spvak1k2)
      acd319(12)=abb319(47)
      acd319(13)=dotproduct(ninjaE3,spval5l6)
      acd319(14)=abb319(59)
      acd319(15)=dotproduct(ninjaA1,spvak2k7)
      acd319(16)=dotproduct(k3,ninjaA1)
      acd319(17)=dotproduct(k4,ninjaA1)
      acd319(18)=dotproduct(ninjaA1,spvak4k3)
      acd319(19)=dotproduct(ninjaA1,spvak4k2)
      acd319(20)=dotproduct(ninjaA1,spvak1k2)
      acd319(21)=dotproduct(ninjaA1,spval5l6)
      acd319(22)=abb319(53)
      acd319(23)=abb319(19)
      acd319(24)=abb319(49)
      acd319(25)=dotproduct(k2,ninjaA0)
      acd319(26)=dotproduct(ninjaA0,spvak2k7)
      acd319(27)=abb319(118)
      acd319(28)=dotproduct(k3,ninjaA0)
      acd319(29)=dotproduct(k4,ninjaA0)
      acd319(30)=dotproduct(k7,ninjaE3)
      acd319(31)=abb319(187)
      acd319(32)=dotproduct(ninjaA0,ninjaE3)
      acd319(33)=abb319(79)
      acd319(34)=dotproduct(ninjaA0,spvak4k3)
      acd319(35)=dotproduct(ninjaA0,spvak4k2)
      acd319(36)=dotproduct(ninjaA0,spvak1k2)
      acd319(37)=dotproduct(ninjaA0,spval5l6)
      acd319(38)=dotproduct(ninjaE3,spvak2l6)
      acd319(39)=abb319(16)
      acd319(40)=abb319(90)
      acd319(41)=abb319(51)
      acd319(42)=abb319(24)
      acd319(43)=abb319(50)
      acd319(44)=abb319(39)
      acd319(45)=abb319(60)
      acd319(46)=abb319(22)
      acd319(47)=abb319(81)
      acd319(48)=dotproduct(l5,ninjaE3)
      acd319(49)=abb319(101)
      acd319(50)=abb319(28)
      acd319(51)=dotproduct(l6,ninjaE3)
      acd319(52)=abb319(31)
      acd319(53)=abb319(219)
      acd319(54)=abb319(91)
      acd319(55)=abb319(17)
      acd319(56)=abb319(48)
      acd319(57)=abb319(44)
      acd319(58)=abb319(87)
      acd319(59)=abb319(33)
      acd319(60)=abb319(42)
      acd319(61)=abb319(141)
      acd319(62)=abb319(13)
      acd319(63)=abb319(15)
      acd319(64)=abb319(52)
      acd319(65)=abb319(20)
      acd319(66)=abb319(34)
      acd319(67)=abb319(183)
      acd319(68)=abb319(26)
      acd319(69)=abb319(89)
      acd319(70)=abb319(36)
      acd319(71)=abb319(40)
      acd319(72)=dotproduct(ninjaE3,spvak1l6)
      acd319(73)=abb319(18)
      acd319(74)=abb319(41)
      acd319(75)=abb319(55)
      acd319(76)=dotproduct(ninjaE3,spvak2k3)
      acd319(77)=abb319(29)
      acd319(78)=dotproduct(ninjaE3,spvak2l5)
      acd319(79)=abb319(37)
      acd319(80)=dotproduct(ninjaE3,spvak4l6)
      acd319(81)=abb319(38)
      acd319(82)=dotproduct(ninjaE3,spvak1k3)
      acd319(83)=abb319(43)
      acd319(84)=dotproduct(ninjaE3,spvak7l6)
      acd319(85)=acd319(4)*acd319(2)
      acd319(86)=acd319(14)*acd319(13)
      acd319(85)=acd319(85)-acd319(86)
      acd319(87)=acd319(6)+acd319(5)
      acd319(85)=acd319(85)*acd319(87)
      acd319(86)=acd319(86)*acd319(2)
      acd319(88)=acd319(2)**2
      acd319(89)=acd319(88)*acd319(4)
      acd319(85)=-acd319(89)+acd319(86)+acd319(85)
      acd319(86)=acd319(15)*acd319(85)
      acd319(89)=acd319(87)*acd319(4)*acd319(3)
      acd319(90)=acd319(2)*acd319(3)
      acd319(91)=acd319(90)*acd319(4)
      acd319(92)=acd319(13)*acd319(3)
      acd319(93)=acd319(92)*acd319(14)
      acd319(89)=-2.0_ki*acd319(91)+acd319(93)+acd319(89)
      acd319(94)=acd319(1)*acd319(89)
      acd319(91)=acd319(91)-acd319(93)
      acd319(93)=acd319(17)+acd319(16)
      acd319(93)=acd319(91)*acd319(93)
      acd319(95)=acd319(15)*acd319(2)
      acd319(96)=acd319(7)*acd319(95)
      acd319(97)=acd319(7)*acd319(3)
      acd319(98)=acd319(1)*acd319(97)
      acd319(96)=acd319(96)+acd319(98)
      acd319(96)=acd319(8)*acd319(96)
      acd319(98)=acd319(9)*acd319(95)
      acd319(99)=acd319(9)*acd319(3)
      acd319(100)=acd319(1)*acd319(99)
      acd319(98)=acd319(98)+acd319(100)
      acd319(98)=acd319(10)*acd319(98)
      acd319(95)=acd319(11)*acd319(95)
      acd319(100)=acd319(11)*acd319(3)
      acd319(101)=acd319(1)*acd319(100)
      acd319(95)=acd319(95)+acd319(101)
      acd319(95)=acd319(12)*acd319(95)
      acd319(101)=-acd319(87)*acd319(14)*acd319(3)
      acd319(102)=acd319(90)*acd319(14)
      acd319(101)=acd319(102)+acd319(101)
      acd319(102)=acd319(21)*acd319(101)
      acd319(103)=acd319(15)*acd319(13)
      acd319(104)=acd319(7)*acd319(103)
      acd319(105)=acd319(21)*acd319(97)
      acd319(104)=acd319(104)+acd319(105)
      acd319(104)=acd319(22)*acd319(104)
      acd319(105)=acd319(9)*acd319(103)
      acd319(106)=acd319(21)*acd319(99)
      acd319(105)=acd319(105)+acd319(106)
      acd319(105)=acd319(23)*acd319(105)
      acd319(103)=acd319(11)*acd319(103)
      acd319(106)=acd319(21)*acd319(100)
      acd319(103)=acd319(103)+acd319(106)
      acd319(103)=acd319(24)*acd319(103)
      acd319(106)=acd319(90)*acd319(8)
      acd319(107)=acd319(92)*acd319(22)
      acd319(106)=acd319(106)+acd319(107)
      acd319(107)=acd319(18)*acd319(106)
      acd319(108)=acd319(90)*acd319(10)
      acd319(109)=acd319(92)*acd319(23)
      acd319(108)=acd319(108)+acd319(109)
      acd319(109)=acd319(19)*acd319(108)
      acd319(110)=acd319(90)*acd319(12)
      acd319(111)=acd319(92)*acd319(24)
      acd319(110)=acd319(110)+acd319(111)
      acd319(111)=acd319(20)*acd319(110)
      acd319(86)=acd319(111)+acd319(109)+acd319(107)+acd319(103)+acd319(105)+ac&
      &d319(104)+acd319(102)+acd319(95)+acd319(98)+acd319(96)+acd319(86)+acd319&
      &(94)+acd319(93)
      acd319(93)=-acd319(47)*acd319(87)
      acd319(94)=acd319(48)+acd319(30)
      acd319(95)=acd319(50)*acd319(94)
      acd319(96)=acd319(52)*acd319(51)
      acd319(98)=2.0_ki*acd319(32)
      acd319(102)=acd319(60)*acd319(98)
      acd319(103)=acd319(73)*acd319(72)
      acd319(104)=acd319(77)*acd319(76)
      acd319(105)=acd319(79)*acd319(78)
      acd319(107)=acd319(81)*acd319(80)
      acd319(109)=acd319(83)*acd319(82)
      acd319(111)=acd319(84)*acd319(49)
      acd319(93)=acd319(95)+acd319(93)+acd319(111)+acd319(109)+acd319(107)+acd3&
      &19(105)+acd319(104)+acd319(103)+acd319(102)+acd319(96)
      acd319(93)=acd319(3)*acd319(93)
      acd319(94)=-acd319(49)*acd319(94)
      acd319(95)=-acd319(46)*acd319(87)
      acd319(96)=acd319(39)*acd319(2)
      acd319(102)=acd319(56)*acd319(98)
      acd319(103)=acd319(62)*acd319(7)
      acd319(104)=acd319(63)*acd319(9)
      acd319(105)=acd319(64)*acd319(11)
      acd319(107)=acd319(65)*acd319(3)
      acd319(94)=acd319(107)+acd319(105)+acd319(104)+acd319(103)+acd319(102)+ac&
      &d319(96)+acd319(95)+acd319(94)
      acd319(94)=acd319(38)*acd319(94)
      acd319(95)=acd319(22)*acd319(7)
      acd319(96)=acd319(23)*acd319(9)
      acd319(102)=acd319(24)*acd319(11)
      acd319(95)=acd319(102)+acd319(96)+acd319(95)
      acd319(95)=acd319(26)*acd319(95)
      acd319(96)=acd319(87)-acd319(2)
      acd319(102)=-acd319(44)*acd319(96)
      acd319(103)=acd319(61)*acd319(98)
      acd319(104)=acd319(67)*acd319(7)
      acd319(105)=acd319(69)*acd319(9)
      acd319(107)=acd319(71)*acd319(11)
      acd319(95)=acd319(102)+acd319(107)+acd319(105)+acd319(104)+acd319(103)+ac&
      &d319(95)
      acd319(95)=acd319(13)*acd319(95)
      acd319(102)=-acd319(45)*acd319(87)
      acd319(103)=acd319(33)*acd319(2)
      acd319(104)=acd319(57)*acd319(7)
      acd319(105)=acd319(58)*acd319(9)
      acd319(107)=acd319(59)*acd319(11)
      acd319(102)=acd319(107)+acd319(105)+acd319(104)+acd319(103)+acd319(102)
      acd319(98)=acd319(98)*acd319(102)
      acd319(96)=-acd319(31)*acd319(96)
      acd319(102)=acd319(53)*acd319(7)
      acd319(103)=acd319(54)*acd319(9)
      acd319(104)=acd319(55)*acd319(11)
      acd319(96)=acd319(104)+acd319(103)+acd319(102)+acd319(96)
      acd319(96)=acd319(30)*acd319(96)
      acd319(102)=acd319(22)*acd319(97)
      acd319(103)=acd319(23)*acd319(99)
      acd319(104)=acd319(24)*acd319(100)
      acd319(101)=acd319(104)+acd319(103)+acd319(102)+acd319(101)
      acd319(101)=acd319(37)*acd319(101)
      acd319(102)=acd319(40)*acd319(7)
      acd319(103)=acd319(41)*acd319(9)
      acd319(104)=acd319(42)*acd319(11)
      acd319(102)=acd319(104)+acd319(103)+acd319(102)
      acd319(102)=acd319(2)*acd319(102)
      acd319(85)=acd319(26)*acd319(85)
      acd319(89)=acd319(25)*acd319(89)
      acd319(103)=acd319(29)+acd319(28)
      acd319(91)=acd319(91)*acd319(103)
      acd319(103)=acd319(26)*acd319(2)
      acd319(104)=acd319(7)*acd319(103)
      acd319(105)=acd319(25)*acd319(97)
      acd319(104)=acd319(104)+acd319(105)
      acd319(104)=acd319(8)*acd319(104)
      acd319(105)=acd319(9)*acd319(103)
      acd319(107)=acd319(25)*acd319(99)
      acd319(105)=acd319(105)+acd319(107)
      acd319(105)=acd319(10)*acd319(105)
      acd319(103)=acd319(11)*acd319(103)
      acd319(107)=acd319(25)*acd319(100)
      acd319(103)=acd319(103)+acd319(107)
      acd319(103)=acd319(12)*acd319(103)
      acd319(87)=acd319(2)*acd319(87)
      acd319(87)=-acd319(88)+acd319(87)
      acd319(87)=acd319(27)*acd319(87)
      acd319(88)=acd319(34)*acd319(106)
      acd319(106)=acd319(35)*acd319(108)
      acd319(107)=acd319(36)*acd319(110)
      acd319(90)=acd319(43)*acd319(90)
      acd319(97)=acd319(66)*acd319(97)
      acd319(99)=acd319(68)*acd319(99)
      acd319(100)=acd319(70)*acd319(100)
      acd319(108)=acd319(74)*acd319(3)**2
      acd319(92)=acd319(75)*acd319(92)
      acd319(85)=acd319(92)+acd319(108)+acd319(100)+acd319(99)+acd319(97)+acd31&
      &9(90)+acd319(107)+acd319(106)+acd319(88)+acd319(87)+acd319(101)+acd319(1&
      &03)+acd319(105)+acd319(104)+acd319(85)+acd319(89)+acd319(94)+acd319(98)+&
      &acd319(96)+acd319(91)+acd319(102)+acd319(93)+acd319(95)
      brack(ninjaidxt0x0mu0)=acd319(85)
      brack(ninjaidxt0x1mu0)=acd319(86)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d319h2_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd319h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6
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
end module     p0_dbaru_epnebbbarg_d319h2l132
