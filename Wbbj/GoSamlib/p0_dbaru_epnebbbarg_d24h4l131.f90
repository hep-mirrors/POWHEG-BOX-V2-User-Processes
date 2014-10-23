module     p0_dbaru_epnebbbarg_d24h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d24h4l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd24h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(118) :: acd24
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd24(1)=dotproduct(k1,ninjaA)
      acd24(2)=dotproduct(ninjaE3,spval5k2)
      acd24(3)=abb24(57)
      acd24(4)=dotproduct(ninjaE3,spval6k2)
      acd24(5)=abb24(222)
      acd24(6)=dotproduct(k1,ninjaE3)
      acd24(7)=dotproduct(ninjaA,spval5k2)
      acd24(8)=dotproduct(ninjaA,spval6k2)
      acd24(9)=dotproduct(k2,ninjaA)
      acd24(10)=abb24(41)
      acd24(11)=abb24(159)
      acd24(12)=dotproduct(k2,ninjaE3)
      acd24(13)=abb24(19)
      acd24(14)=dotproduct(k3,ninjaA)
      acd24(15)=abb24(68)
      acd24(16)=abb24(210)
      acd24(17)=dotproduct(k3,ninjaE3)
      acd24(18)=dotproduct(k4,ninjaA)
      acd24(19)=dotproduct(k4,ninjaE3)
      acd24(20)=dotproduct(l5,ninjaA)
      acd24(21)=abb24(27)
      acd24(22)=abb24(201)
      acd24(23)=dotproduct(l5,ninjaE3)
      acd24(24)=abb24(20)
      acd24(25)=dotproduct(l6,ninjaA)
      acd24(26)=dotproduct(l6,ninjaE3)
      acd24(27)=abb24(24)
      acd24(28)=dotproduct(k7,ninjaA)
      acd24(29)=abb24(40)
      acd24(30)=abb24(203)
      acd24(31)=dotproduct(k7,ninjaE3)
      acd24(32)=dotproduct(ninjaA,ninjaE3)
      acd24(33)=abb24(29)
      acd24(34)=dotproduct(ninjaA,spvak1k2)
      acd24(35)=abb24(22)
      acd24(36)=abb24(18)
      acd24(37)=dotproduct(ninjaE3,spvak1k2)
      acd24(38)=abb24(33)
      acd24(39)=dotproduct(ninjaE3,spvak7k2)
      acd24(40)=abb24(17)
      acd24(41)=abb24(26)
      acd24(42)=dotproduct(ninjaE3,spvak4k2)
      acd24(43)=abb24(32)
      acd24(44)=dotproduct(ninjaE3,spvak4k3)
      acd24(45)=abb24(37)
      acd24(46)=dotproduct(ninjaE3,spvak1l6)
      acd24(47)=abb24(58)
      acd24(48)=dotproduct(ninjaE3,spvak1l5)
      acd24(49)=abb24(53)
      acd24(50)=dotproduct(ninjaE3,spvak1k3)
      acd24(51)=abb24(62)
      acd24(52)=dotproduct(ninjaE3,spvak7k3)
      acd24(53)=abb24(73)
      acd24(54)=dotproduct(ninjaA,spvak7k2)
      acd24(55)=abb24(21)
      acd24(56)=abb24(105)
      acd24(57)=abb24(39)
      acd24(58)=abb24(54)
      acd24(59)=abb24(59)
      acd24(60)=abb24(56)
      acd24(61)=abb24(63)
      acd24(62)=abb24(231)
      acd24(63)=dotproduct(ninjaA,spvak4k2)
      acd24(64)=dotproduct(ninjaA,spvak4k3)
      acd24(65)=dotproduct(ninjaA,spvak1l6)
      acd24(66)=dotproduct(ninjaA,spvak1l5)
      acd24(67)=dotproduct(ninjaA,spvak1k3)
      acd24(68)=dotproduct(ninjaA,spvak7k3)
      acd24(69)=abb24(16)
      acd24(70)=abb24(25)
      acd24(71)=abb24(23)
      acd24(72)=abb24(44)
      acd24(73)=dotproduct(ninjaE3,spval6l5)
      acd24(74)=abb24(38)
      acd24(75)=abb24(43)
      acd24(76)=dotproduct(ninjaE3,spval5k3)
      acd24(77)=abb24(45)
      acd24(78)=abb24(46)
      acd24(79)=dotproduct(ninjaE3,spvak7l5)
      acd24(80)=abb24(49)
      acd24(81)=dotproduct(ninjaE3,spval5k1)
      acd24(82)=abb24(51)
      acd24(83)=dotproduct(ninjaE3,spval5l6)
      acd24(84)=abb24(60)
      acd24(85)=dotproduct(ninjaE3,spvak7l6)
      acd24(86)=abb24(88)
      acd24(87)=dotproduct(ninjaE3,spval5k7)
      acd24(88)=abb24(114)
      acd24(89)=dotproduct(ninjaE3,spval6k7)
      acd24(90)=abb24(115)
      acd24(91)=dotproduct(ninjaE3,spval6k3)
      acd24(92)=abb24(118)
      acd24(93)=dotproduct(ninjaE3,spval6k1)
      acd24(94)=abb24(164)
      acd24(95)=acd24(62)*acd24(68)
      acd24(96)=acd24(61)*acd24(67)
      acd24(97)=acd24(60)*acd24(66)
      acd24(98)=acd24(59)*acd24(65)
      acd24(99)=acd24(58)*acd24(64)
      acd24(100)=acd24(57)*acd24(63)
      acd24(101)=acd24(55)*acd24(54)
      acd24(102)=acd24(36)*acd24(34)
      acd24(103)=acd24(30)*acd24(28)
      acd24(104)=acd24(11)*acd24(9)
      acd24(105)=acd24(5)*acd24(1)
      acd24(106)=acd24(20)+acd24(25)
      acd24(107)=acd24(22)*acd24(106)
      acd24(108)=acd24(14)+acd24(18)
      acd24(109)=-acd24(16)*acd24(108)
      acd24(110)=acd24(8)*acd24(56)
      acd24(111)=acd24(7)*acd24(41)
      acd24(95)=acd24(111)+2.0_ki*acd24(110)+acd24(109)+acd24(107)+acd24(105)+a&
      &cd24(104)+acd24(103)+acd24(102)+acd24(101)+acd24(100)+acd24(99)+acd24(98&
      &)+acd24(97)+acd24(96)+acd24(72)+acd24(95)
      acd24(95)=acd24(4)*acd24(95)
      acd24(96)=acd24(53)*acd24(68)
      acd24(97)=acd24(51)*acd24(67)
      acd24(98)=acd24(49)*acd24(66)
      acd24(99)=acd24(47)*acd24(65)
      acd24(100)=acd24(45)*acd24(64)
      acd24(101)=acd24(43)*acd24(63)
      acd24(102)=acd24(40)*acd24(54)
      acd24(103)=acd24(35)*acd24(34)
      acd24(104)=acd24(29)*acd24(28)
      acd24(105)=acd24(10)*acd24(9)
      acd24(107)=acd24(3)*acd24(1)
      acd24(106)=acd24(21)*acd24(106)
      acd24(108)=-acd24(15)*acd24(108)
      acd24(109)=acd24(8)*acd24(41)
      acd24(110)=acd24(7)*acd24(38)
      acd24(96)=2.0_ki*acd24(110)+acd24(109)+acd24(108)+acd24(106)+acd24(107)+a&
      &cd24(105)+acd24(104)+acd24(103)+acd24(102)+acd24(101)+acd24(100)+acd24(9&
      &9)+acd24(98)+acd24(97)+acd24(70)+acd24(96)
      acd24(96)=acd24(2)*acd24(96)
      acd24(97)=acd24(52)*acd24(62)
      acd24(98)=acd24(50)*acd24(61)
      acd24(99)=acd24(44)*acd24(58)
      acd24(100)=acd24(42)*acd24(57)
      acd24(101)=acd24(31)*acd24(30)
      acd24(102)=acd24(6)*acd24(5)
      acd24(103)=acd24(48)*acd24(60)
      acd24(104)=acd24(23)+acd24(26)
      acd24(105)=acd24(104)*acd24(22)
      acd24(106)=acd24(17)+acd24(19)
      acd24(107)=acd24(106)*acd24(16)
      acd24(108)=acd24(46)*acd24(59)
      acd24(109)=acd24(39)*acd24(55)
      acd24(110)=acd24(37)*acd24(36)
      acd24(111)=acd24(12)*acd24(11)
      acd24(97)=acd24(101)+acd24(102)+acd24(103)+acd24(105)+acd24(97)+acd24(98)&
      &+acd24(99)+acd24(100)-acd24(107)+acd24(108)+acd24(109)+acd24(110)+acd24(&
      &111)
      acd24(98)=acd24(8)*acd24(97)
      acd24(99)=acd24(52)*acd24(53)
      acd24(100)=acd24(50)*acd24(51)
      acd24(101)=acd24(44)*acd24(45)
      acd24(102)=acd24(42)*acd24(43)
      acd24(103)=acd24(31)*acd24(29)
      acd24(105)=acd24(6)*acd24(3)
      acd24(107)=acd24(48)*acd24(49)
      acd24(104)=acd24(104)*acd24(21)
      acd24(106)=acd24(106)*acd24(15)
      acd24(108)=acd24(46)*acd24(47)
      acd24(109)=acd24(39)*acd24(40)
      acd24(110)=acd24(37)*acd24(35)
      acd24(111)=acd24(12)*acd24(10)
      acd24(99)=acd24(103)+acd24(105)+acd24(107)+acd24(104)+acd24(99)+acd24(100&
      &)+acd24(101)+acd24(102)-acd24(106)+acd24(108)+acd24(109)+acd24(110)+acd2&
      &4(111)
      acd24(100)=acd24(7)*acd24(99)
      acd24(101)=acd24(93)*acd24(94)
      acd24(102)=acd24(91)*acd24(92)
      acd24(103)=acd24(89)*acd24(90)
      acd24(104)=acd24(87)*acd24(88)
      acd24(105)=acd24(85)*acd24(86)
      acd24(106)=acd24(83)*acd24(84)
      acd24(107)=acd24(81)*acd24(82)
      acd24(108)=acd24(79)*acd24(80)
      acd24(109)=acd24(76)*acd24(77)
      acd24(110)=acd24(73)*acd24(74)
      acd24(111)=acd24(32)*acd24(33)
      acd24(112)=acd24(48)*acd24(78)
      acd24(113)=acd24(46)*acd24(75)
      acd24(114)=acd24(39)*acd24(71)
      acd24(115)=acd24(37)*acd24(69)
      acd24(116)=acd24(26)*acd24(27)
      acd24(117)=acd24(23)*acd24(24)
      acd24(118)=acd24(12)*acd24(13)
      acd24(95)=acd24(96)+acd24(95)+acd24(100)+acd24(98)+acd24(118)+acd24(117)+&
      &acd24(116)+acd24(115)+acd24(114)+acd24(113)+acd24(112)+2.0_ki*acd24(111)&
      &+acd24(110)+acd24(109)+acd24(108)+acd24(107)+acd24(106)+acd24(105)+acd24&
      &(104)+acd24(103)+acd24(101)+acd24(102)
      acd24(96)=acd24(4)*acd24(56)
      acd24(96)=acd24(96)+acd24(97)
      acd24(96)=acd24(4)*acd24(96)
      acd24(97)=acd24(4)*acd24(41)
      acd24(98)=acd24(2)*acd24(38)
      acd24(97)=acd24(98)+acd24(97)+acd24(99)
      acd24(97)=acd24(2)*acd24(97)
      acd24(96)=acd24(96)+acd24(97)
      brack(ninjaidxt3mu0)=acd24(96)
      brack(ninjaidxt2mu0)=acd24(95)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d24h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd24h4
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
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d24h4l131
