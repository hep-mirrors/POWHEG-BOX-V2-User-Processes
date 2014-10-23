module     p0_dbaru_epnebbbarg_d317h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d317h0l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd317h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd317
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd317(1)=dotproduct(k2,ninjaE3)
      acd317(2)=dotproduct(ninjaE3,spvak2k7)
      acd317(3)=dotproduct(ninjaE3,spval6k2)
      acd317(4)=abb317(26)
      acd317(5)=dotproduct(ninjaE3,spval5k2)
      acd317(6)=abb317(57)
      acd317(7)=dotproduct(k3,ninjaE3)
      acd317(8)=dotproduct(k4,ninjaE3)
      acd317(9)=dotproduct(ninjaE3,spvak1k2)
      acd317(10)=abb317(15)
      acd317(11)=abb317(54)
      acd317(12)=dotproduct(ninjaE3,spvak4k2)
      acd317(13)=abb317(30)
      acd317(14)=dotproduct(ninjaE3,spvak4k3)
      acd317(15)=abb317(70)
      acd317(16)=abb317(49)
      acd317(17)=abb317(152)
      acd317(18)=acd317(14)*acd317(17)
      acd317(19)=acd317(12)*acd317(16)
      acd317(20)=-acd317(9)*acd317(11)
      acd317(21)=-acd317(8)+acd317(1)-acd317(7)
      acd317(22)=acd317(6)*acd317(21)
      acd317(18)=acd317(22)+acd317(20)+acd317(18)+acd317(19)
      acd317(18)=acd317(5)*acd317(18)
      acd317(19)=acd317(14)*acd317(15)
      acd317(20)=acd317(12)*acd317(13)
      acd317(22)=acd317(9)*acd317(10)
      acd317(21)=acd317(4)*acd317(21)
      acd317(19)=acd317(21)+acd317(22)+acd317(19)+acd317(20)
      acd317(19)=acd317(3)*acd317(19)
      acd317(18)=acd317(18)+acd317(19)
      acd317(18)=acd317(2)*acd317(18)
      brack(ninjaidxt1x0mu0)=acd317(18)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd317h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(125) :: acd317
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd317(1)=dotproduct(k2,ninjaA1)
      acd317(2)=dotproduct(ninjaE3,spvak2k7)
      acd317(3)=dotproduct(ninjaE3,spval6k2)
      acd317(4)=abb317(26)
      acd317(5)=dotproduct(ninjaE3,spval5k2)
      acd317(6)=abb317(57)
      acd317(7)=dotproduct(k2,ninjaE3)
      acd317(8)=dotproduct(ninjaA1,spvak2k7)
      acd317(9)=dotproduct(ninjaA1,spval6k2)
      acd317(10)=dotproduct(ninjaA1,spval5k2)
      acd317(11)=dotproduct(k3,ninjaA1)
      acd317(12)=dotproduct(k3,ninjaE3)
      acd317(13)=dotproduct(k4,ninjaA1)
      acd317(14)=dotproduct(k4,ninjaE3)
      acd317(15)=dotproduct(ninjaA1,spvak1k2)
      acd317(16)=abb317(15)
      acd317(17)=abb317(54)
      acd317(18)=dotproduct(ninjaE3,spvak1k2)
      acd317(19)=dotproduct(ninjaE3,spvak4k2)
      acd317(20)=abb317(30)
      acd317(21)=abb317(49)
      acd317(22)=dotproduct(ninjaE3,spvak4k3)
      acd317(23)=abb317(70)
      acd317(24)=abb317(152)
      acd317(25)=dotproduct(ninjaA1,spvak4k2)
      acd317(26)=dotproduct(ninjaA1,spvak4k3)
      acd317(27)=dotproduct(k2,ninjaA0)
      acd317(28)=abb317(41)
      acd317(29)=dotproduct(l6,ninjaE3)
      acd317(30)=abb317(208)
      acd317(31)=dotproduct(k7,ninjaE3)
      acd317(32)=abb317(209)
      acd317(33)=dotproduct(ninjaA0,ninjaE3)
      acd317(34)=abb317(53)
      acd317(35)=dotproduct(ninjaA0,spvak2k7)
      acd317(36)=dotproduct(ninjaA0,spval6k2)
      acd317(37)=dotproduct(ninjaA0,spval5k2)
      acd317(38)=abb317(20)
      acd317(39)=abb317(18)
      acd317(40)=abb317(14)
      acd317(41)=dotproduct(ninjaE3,spval6k7)
      acd317(42)=abb317(43)
      acd317(43)=abb317(51)
      acd317(44)=dotproduct(ninjaE3,spvak1k3)
      acd317(45)=abb317(16)
      acd317(46)=abb317(21)
      acd317(47)=abb317(62)
      acd317(48)=dotproduct(ninjaE3,spval6k3)
      acd317(49)=abb317(90)
      acd317(50)=dotproduct(k3,ninjaA0)
      acd317(51)=abb317(60)
      acd317(52)=abb317(35)
      acd317(53)=dotproduct(k4,ninjaA0)
      acd317(54)=dotproduct(l5,ninjaE3)
      acd317(55)=abb317(59)
      acd317(56)=abb317(66)
      acd317(57)=abb317(58)
      acd317(58)=abb317(155)
      acd317(59)=abb317(34)
      acd317(60)=abb317(55)
      acd317(61)=abb317(103)
      acd317(62)=abb317(87)
      acd317(63)=abb317(52)
      acd317(64)=abb317(134)
      acd317(65)=abb317(122)
      acd317(66)=abb317(31)
      acd317(67)=abb317(38)
      acd317(68)=abb317(22)
      acd317(69)=abb317(82)
      acd317(70)=abb317(63)
      acd317(71)=abb317(81)
      acd317(72)=abb317(67)
      acd317(73)=abb317(80)
      acd317(74)=dotproduct(ninjaA0,spvak1k2)
      acd317(75)=dotproduct(ninjaA0,spvak4k2)
      acd317(76)=dotproduct(ninjaA0,spvak4k3)
      acd317(77)=abb317(12)
      acd317(78)=abb317(33)
      acd317(79)=abb317(44)
      acd317(80)=abb317(64)
      acd317(81)=abb317(29)
      acd317(82)=abb317(76)
      acd317(83)=abb317(69)
      acd317(84)=abb317(39)
      acd317(85)=abb317(61)
      acd317(86)=abb317(27)
      acd317(87)=dotproduct(ninjaE3,spvak7k2)
      acd317(88)=abb317(73)
      acd317(89)=abb317(92)
      acd317(90)=dotproduct(ninjaE3,spval6l5)
      acd317(91)=abb317(84)
      acd317(92)=abb317(13)
      acd317(93)=abb317(28)
      acd317(94)=abb317(32)
      acd317(95)=abb317(150)
      acd317(96)=abb317(78)
      acd317(97)=abb317(154)
      acd317(98)=acd317(5)*acd317(2)
      acd317(99)=acd317(98)*acd317(6)
      acd317(100)=acd317(3)*acd317(2)
      acd317(101)=acd317(100)*acd317(4)
      acd317(99)=acd317(99)+acd317(101)
      acd317(101)=-acd317(13)-acd317(11)+acd317(1)
      acd317(101)=acd317(99)*acd317(101)
      acd317(102)=acd317(4)*acd317(3)
      acd317(103)=acd317(6)*acd317(5)
      acd317(102)=acd317(102)+acd317(103)
      acd317(103)=acd317(14)+acd317(12)
      acd317(104)=acd317(103)-acd317(7)
      acd317(102)=-acd317(102)*acd317(104)
      acd317(105)=acd317(8)*acd317(102)
      acd317(106)=acd317(8)*acd317(3)
      acd317(107)=acd317(18)*acd317(106)
      acd317(108)=acd317(18)*acd317(2)
      acd317(109)=acd317(9)*acd317(108)
      acd317(107)=acd317(107)+acd317(109)
      acd317(107)=acd317(16)*acd317(107)
      acd317(109)=acd317(8)*acd317(5)
      acd317(110)=-acd317(18)*acd317(109)
      acd317(111)=-acd317(10)*acd317(108)
      acd317(110)=acd317(110)+acd317(111)
      acd317(110)=acd317(17)*acd317(110)
      acd317(111)=acd317(19)*acd317(106)
      acd317(112)=acd317(19)*acd317(2)
      acd317(113)=acd317(9)*acd317(112)
      acd317(111)=acd317(111)+acd317(113)
      acd317(111)=acd317(20)*acd317(111)
      acd317(113)=acd317(19)*acd317(109)
      acd317(114)=acd317(10)*acd317(112)
      acd317(113)=acd317(113)+acd317(114)
      acd317(113)=acd317(21)*acd317(113)
      acd317(106)=acd317(22)*acd317(106)
      acd317(114)=acd317(22)*acd317(2)
      acd317(115)=acd317(9)*acd317(114)
      acd317(106)=acd317(106)+acd317(115)
      acd317(106)=acd317(23)*acd317(106)
      acd317(109)=acd317(22)*acd317(109)
      acd317(115)=acd317(10)*acd317(114)
      acd317(109)=acd317(109)+acd317(115)
      acd317(109)=acd317(24)*acd317(109)
      acd317(115)=acd317(98)*acd317(17)
      acd317(116)=acd317(100)*acd317(16)
      acd317(115)=acd317(115)-acd317(116)
      acd317(116)=-acd317(15)*acd317(115)
      acd317(117)=acd317(98)*acd317(21)
      acd317(118)=acd317(100)*acd317(20)
      acd317(117)=acd317(117)+acd317(118)
      acd317(118)=acd317(25)*acd317(117)
      acd317(119)=acd317(98)*acd317(24)
      acd317(120)=acd317(100)*acd317(23)
      acd317(119)=acd317(119)+acd317(120)
      acd317(120)=acd317(26)*acd317(119)
      acd317(121)=acd317(104)*acd317(2)
      acd317(122)=acd317(4)*acd317(121)
      acd317(123)=-acd317(9)*acd317(122)
      acd317(121)=acd317(6)*acd317(121)
      acd317(124)=-acd317(10)*acd317(121)
      acd317(101)=acd317(120)+acd317(118)+acd317(116)+acd317(109)+acd317(106)+a&
      &cd317(113)+acd317(111)+acd317(110)+acd317(107)+acd317(124)+acd317(105)+a&
      &cd317(123)+acd317(101)
      acd317(105)=acd317(35)*acd317(3)
      acd317(106)=acd317(16)*acd317(105)
      acd317(107)=acd317(35)*acd317(5)
      acd317(109)=-acd317(17)*acd317(107)
      acd317(110)=acd317(38)*acd317(7)
      acd317(111)=acd317(56)*acd317(29)
      acd317(113)=acd317(63)*acd317(31)
      acd317(116)=2.0_ki*acd317(33)
      acd317(118)=acd317(66)*acd317(116)
      acd317(120)=acd317(78)*acd317(41)
      acd317(123)=acd317(79)*acd317(3)
      acd317(124)=acd317(80)*acd317(5)
      acd317(106)=acd317(124)+acd317(123)+acd317(120)+acd317(118)+acd317(113)+a&
      &cd317(111)+acd317(110)+acd317(109)+acd317(106)
      acd317(106)=acd317(18)*acd317(106)
      acd317(109)=acd317(20)*acd317(105)
      acd317(110)=acd317(21)*acd317(107)
      acd317(111)=acd317(40)*acd317(7)
      acd317(113)=acd317(58)*acd317(29)
      acd317(118)=acd317(64)*acd317(31)
      acd317(120)=acd317(68)*acd317(116)
      acd317(123)=acd317(92)*acd317(41)
      acd317(124)=acd317(93)*acd317(3)
      acd317(125)=acd317(94)*acd317(5)
      acd317(109)=acd317(125)+acd317(124)+acd317(123)+acd317(120)+acd317(118)+a&
      &cd317(113)+acd317(111)+acd317(110)+acd317(109)
      acd317(109)=acd317(19)*acd317(109)
      acd317(105)=acd317(23)*acd317(105)
      acd317(107)=acd317(24)*acd317(107)
      acd317(110)=acd317(46)*acd317(7)
      acd317(111)=acd317(61)*acd317(29)
      acd317(113)=acd317(65)*acd317(31)
      acd317(118)=acd317(71)*acd317(116)
      acd317(120)=acd317(95)*acd317(41)
      acd317(123)=acd317(96)*acd317(3)
      acd317(124)=acd317(97)*acd317(5)
      acd317(105)=acd317(124)+acd317(123)+acd317(120)+acd317(118)+acd317(113)+a&
      &cd317(111)+acd317(110)+acd317(107)+acd317(105)
      acd317(105)=acd317(22)*acd317(105)
      acd317(107)=acd317(54)+acd317(31)
      acd317(107)=acd317(55)*acd317(107)
      acd317(110)=acd317(39)*acd317(7)
      acd317(111)=acd317(57)*acd317(29)
      acd317(113)=acd317(67)*acd317(116)
      acd317(118)=acd317(82)*acd317(41)
      acd317(120)=acd317(84)*acd317(44)
      acd317(123)=acd317(88)*acd317(87)
      acd317(124)=acd317(89)*acd317(48)
      acd317(125)=acd317(91)*acd317(90)
      acd317(107)=acd317(125)+acd317(124)+acd317(123)+acd317(120)+acd317(118)+a&
      &cd317(113)+acd317(111)+acd317(110)+acd317(107)
      acd317(107)=acd317(2)*acd317(107)
      acd317(110)=-acd317(34)*acd317(104)
      acd317(111)=acd317(69)*acd317(3)
      acd317(113)=acd317(70)*acd317(44)
      acd317(118)=acd317(72)*acd317(5)
      acd317(120)=acd317(73)*acd317(48)
      acd317(110)=acd317(120)+acd317(118)+acd317(113)+acd317(111)+acd317(110)
      acd317(110)=acd317(116)*acd317(110)
      acd317(111)=acd317(30)*acd317(29)
      acd317(113)=acd317(32)*acd317(31)
      acd317(116)=acd317(42)*acd317(41)
      acd317(118)=acd317(47)*acd317(5)
      acd317(111)=acd317(118)+acd317(116)+acd317(113)+acd317(111)
      acd317(104)=acd317(104)*acd317(111)
      acd317(111)=acd317(16)*acd317(108)
      acd317(113)=acd317(20)*acd317(112)
      acd317(116)=acd317(23)*acd317(114)
      acd317(111)=acd317(116)+acd317(113)+acd317(111)-acd317(122)
      acd317(111)=acd317(36)*acd317(111)
      acd317(113)=-acd317(17)*acd317(108)
      acd317(116)=acd317(21)*acd317(112)
      acd317(118)=acd317(24)*acd317(114)
      acd317(113)=acd317(118)+acd317(116)+acd317(113)-acd317(121)
      acd317(113)=acd317(37)*acd317(113)
      acd317(116)=-acd317(59)*acd317(3)
      acd317(118)=acd317(60)*acd317(44)
      acd317(120)=acd317(62)*acd317(48)
      acd317(116)=acd317(116)+acd317(120)+acd317(118)
      acd317(118)=acd317(31)+acd317(29)
      acd317(116)=acd317(118)*acd317(116)
      acd317(118)=acd317(43)*acd317(3)
      acd317(120)=acd317(45)*acd317(44)
      acd317(121)=acd317(49)*acd317(48)
      acd317(118)=acd317(121)+acd317(120)+acd317(118)
      acd317(118)=acd317(7)*acd317(118)
      acd317(120)=acd317(51)*acd317(2)
      acd317(121)=acd317(52)*acd317(3)
      acd317(120)=acd317(121)+acd317(120)
      acd317(120)=acd317(103)*acd317(120)
      acd317(121)=-acd317(53)-acd317(50)+acd317(27)
      acd317(99)=acd317(99)*acd317(121)
      acd317(102)=acd317(35)*acd317(102)
      acd317(103)=-acd317(7)*acd317(103)
      acd317(121)=acd317(7)**2
      acd317(103)=acd317(121)+acd317(103)
      acd317(103)=acd317(28)*acd317(103)
      acd317(115)=-acd317(74)*acd317(115)
      acd317(117)=acd317(75)*acd317(117)
      acd317(119)=acd317(76)*acd317(119)
      acd317(108)=acd317(77)*acd317(108)
      acd317(112)=acd317(81)*acd317(112)
      acd317(100)=acd317(83)*acd317(100)
      acd317(114)=acd317(85)*acd317(114)
      acd317(98)=acd317(86)*acd317(98)
      acd317(98)=acd317(98)+acd317(114)+acd317(100)+acd317(112)+acd317(108)+acd&
      &317(119)+acd317(117)+acd317(115)+acd317(103)+acd317(113)+acd317(111)+acd&
      &317(102)+acd317(107)+acd317(105)+acd317(109)+acd317(106)+acd317(110)+acd&
      &317(118)+acd317(99)+acd317(120)+acd317(116)+acd317(104)
      brack(ninjaidxt0x0mu0)=acd317(98)
      brack(ninjaidxt0x1mu0)=acd317(101)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d317h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd317h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6
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
end module     p0_dbaru_epnebbbarg_d317h0l132
