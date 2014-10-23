module     p0_dbaru_epnebbbarg_d96h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d96h5l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd96h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd96
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd96(1)=dotproduct(k2,ninjaE3)
      acd96(2)=dotproduct(ninjaE3,spvak7k2)
      acd96(3)=abb96(168)
      acd96(4)=dotproduct(k3,ninjaE3)
      acd96(5)=dotproduct(k4,ninjaE3)
      acd96(6)=dotproduct(ninjaE3,spvak4k2)
      acd96(7)=abb96(56)
      acd96(8)=dotproduct(ninjaE3,spval6l5)
      acd96(9)=abb96(64)
      acd96(10)=dotproduct(ninjaE3,spvak4k3)
      acd96(11)=abb96(82)
      acd96(12)=dotproduct(ninjaE3,spvak1k2)
      acd96(13)=abb96(63)
      acd96(14)=dotproduct(ninjaE3,spvak1k3)
      acd96(15)=abb96(65)
      acd96(16)=abb96(16)
      acd96(17)=abb96(26)
      acd96(18)=abb96(31)
      acd96(19)=abb96(38)
      acd96(20)=acd96(4)+acd96(5)
      acd96(21)=-acd96(1)+acd96(20)
      acd96(21)=acd96(3)*acd96(21)
      acd96(22)=acd96(14)*acd96(15)
      acd96(23)=acd96(12)*acd96(13)
      acd96(24)=acd96(10)*acd96(11)
      acd96(25)=acd96(6)*acd96(7)
      acd96(26)=acd96(8)*acd96(9)
      acd96(21)=acd96(26)+acd96(25)+acd96(24)+acd96(22)+acd96(23)+acd96(21)
      acd96(21)=acd96(1)*acd96(21)
      acd96(22)=acd96(14)*acd96(19)
      acd96(23)=acd96(12)*acd96(18)
      acd96(24)=acd96(10)*acd96(17)
      acd96(25)=acd96(6)*acd96(16)
      acd96(20)=-acd96(9)*acd96(20)
      acd96(20)=acd96(20)+acd96(25)+acd96(24)+acd96(22)+acd96(23)
      acd96(20)=acd96(8)*acd96(20)
      acd96(20)=acd96(20)+acd96(21)
      acd96(20)=acd96(2)*acd96(20)
      brack(ninjaidxt1x0mu0)=acd96(20)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd96h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(129) :: acd96
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd96(1)=dotproduct(k2,ninjaA1)
      acd96(2)=dotproduct(k2,ninjaE3)
      acd96(3)=dotproduct(ninjaE3,spvak7k2)
      acd96(4)=abb96(168)
      acd96(5)=dotproduct(k3,ninjaE3)
      acd96(6)=dotproduct(k4,ninjaE3)
      acd96(7)=dotproduct(ninjaE3,spvak4k2)
      acd96(8)=abb96(56)
      acd96(9)=dotproduct(ninjaE3,spval6l5)
      acd96(10)=abb96(64)
      acd96(11)=dotproduct(ninjaE3,spvak4k3)
      acd96(12)=abb96(82)
      acd96(13)=dotproduct(ninjaE3,spvak1k2)
      acd96(14)=abb96(63)
      acd96(15)=dotproduct(ninjaE3,spvak1k3)
      acd96(16)=abb96(65)
      acd96(17)=dotproduct(ninjaA1,spvak7k2)
      acd96(18)=dotproduct(k3,ninjaA1)
      acd96(19)=dotproduct(k4,ninjaA1)
      acd96(20)=dotproduct(ninjaA1,spvak4k2)
      acd96(21)=dotproduct(ninjaA1,spval6l5)
      acd96(22)=dotproduct(ninjaA1,spvak4k3)
      acd96(23)=dotproduct(ninjaA1,spvak1k2)
      acd96(24)=dotproduct(ninjaA1,spvak1k3)
      acd96(25)=abb96(16)
      acd96(26)=abb96(26)
      acd96(27)=abb96(31)
      acd96(28)=abb96(38)
      acd96(29)=dotproduct(k1,ninjaE3)
      acd96(30)=abb96(74)
      acd96(31)=abb96(149)
      acd96(32)=abb96(58)
      acd96(33)=abb96(110)
      acd96(34)=abb96(126)
      acd96(35)=abb96(186)
      acd96(36)=dotproduct(k2,ninjaA0)
      acd96(37)=dotproduct(ninjaA0,spvak7k2)
      acd96(38)=abb96(201)
      acd96(39)=dotproduct(k3,ninjaA0)
      acd96(40)=abb96(273)
      acd96(41)=dotproduct(k4,ninjaA0)
      acd96(42)=dotproduct(l5,ninjaE3)
      acd96(43)=abb96(59)
      acd96(44)=dotproduct(l6,ninjaE3)
      acd96(45)=dotproduct(k7,ninjaE3)
      acd96(46)=abb96(51)
      acd96(47)=dotproduct(ninjaA0,ninjaE3)
      acd96(48)=abb96(29)
      acd96(49)=dotproduct(ninjaA0,spvak4k2)
      acd96(50)=dotproduct(ninjaA0,spval6l5)
      acd96(51)=dotproduct(ninjaA0,spvak4k3)
      acd96(52)=dotproduct(ninjaA0,spvak1k2)
      acd96(53)=dotproduct(ninjaA0,spvak1k3)
      acd96(54)=abb96(43)
      acd96(55)=abb96(104)
      acd96(56)=abb96(71)
      acd96(57)=abb96(37)
      acd96(58)=dotproduct(ninjaE3,spvak1l6)
      acd96(59)=abb96(17)
      acd96(60)=abb96(61)
      acd96(61)=dotproduct(ninjaE3,spvak1l5)
      acd96(62)=abb96(53)
      acd96(63)=abb96(41)
      acd96(64)=abb96(272)
      acd96(65)=abb96(218)
      acd96(66)=abb96(22)
      acd96(67)=abb96(113)
      acd96(68)=abb96(89)
      acd96(69)=abb96(27)
      acd96(70)=abb96(86)
      acd96(71)=abb96(99)
      acd96(72)=abb96(39)
      acd96(73)=abb96(52)
      acd96(74)=abb96(30)
      acd96(75)=abb96(19)
      acd96(76)=abb96(90)
      acd96(77)=abb96(14)
      acd96(78)=abb96(35)
      acd96(79)=abb96(21)
      acd96(80)=abb96(50)
      acd96(81)=abb96(78)
      acd96(82)=abb96(46)
      acd96(83)=abb96(49)
      acd96(84)=abb96(45)
      acd96(85)=abb96(12)
      acd96(86)=abb96(54)
      acd96(87)=abb96(73)
      acd96(88)=abb96(20)
      acd96(89)=abb96(24)
      acd96(90)=abb96(36)
      acd96(91)=abb96(33)
      acd96(92)=abb96(47)
      acd96(93)=abb96(40)
      acd96(94)=abb96(57)
      acd96(95)=acd96(4)*acd96(2)
      acd96(96)=acd96(10)*acd96(9)
      acd96(95)=acd96(95)-acd96(96)
      acd96(97)=acd96(6)+acd96(5)
      acd96(95)=acd96(95)*acd96(97)
      acd96(96)=acd96(96)*acd96(2)
      acd96(98)=acd96(2)**2
      acd96(99)=acd96(98)*acd96(4)
      acd96(95)=acd96(96)-acd96(99)+acd96(95)
      acd96(96)=acd96(17)*acd96(95)
      acd96(99)=acd96(97)*acd96(3)
      acd96(100)=acd96(4)*acd96(99)
      acd96(101)=acd96(2)*acd96(3)
      acd96(102)=acd96(101)*acd96(4)
      acd96(103)=acd96(9)*acd96(3)
      acd96(104)=acd96(103)*acd96(10)
      acd96(100)=acd96(104)+acd96(100)-2.0_ki*acd96(102)
      acd96(105)=acd96(1)*acd96(100)
      acd96(102)=acd96(102)-acd96(104)
      acd96(104)=acd96(19)+acd96(18)
      acd96(104)=acd96(102)*acd96(104)
      acd96(106)=-acd96(97)*acd96(10)*acd96(3)
      acd96(107)=acd96(101)*acd96(10)
      acd96(106)=acd96(107)+acd96(106)
      acd96(107)=acd96(21)*acd96(106)
      acd96(108)=acd96(17)*acd96(2)
      acd96(109)=acd96(7)*acd96(108)
      acd96(110)=acd96(7)*acd96(3)
      acd96(111)=acd96(1)*acd96(110)
      acd96(109)=acd96(109)+acd96(111)
      acd96(109)=acd96(8)*acd96(109)
      acd96(111)=acd96(11)*acd96(108)
      acd96(112)=acd96(11)*acd96(3)
      acd96(113)=acd96(1)*acd96(112)
      acd96(111)=acd96(111)+acd96(113)
      acd96(111)=acd96(12)*acd96(111)
      acd96(113)=acd96(13)*acd96(108)
      acd96(114)=acd96(13)*acd96(3)
      acd96(115)=acd96(1)*acd96(114)
      acd96(113)=acd96(113)+acd96(115)
      acd96(113)=acd96(14)*acd96(113)
      acd96(108)=acd96(15)*acd96(108)
      acd96(115)=acd96(15)*acd96(3)
      acd96(116)=acd96(1)*acd96(115)
      acd96(108)=acd96(108)+acd96(116)
      acd96(108)=acd96(16)*acd96(108)
      acd96(116)=acd96(17)*acd96(9)
      acd96(117)=acd96(7)*acd96(116)
      acd96(118)=acd96(21)*acd96(110)
      acd96(117)=acd96(117)+acd96(118)
      acd96(117)=acd96(25)*acd96(117)
      acd96(118)=acd96(11)*acd96(116)
      acd96(119)=acd96(21)*acd96(112)
      acd96(118)=acd96(118)+acd96(119)
      acd96(118)=acd96(26)*acd96(118)
      acd96(119)=acd96(13)*acd96(116)
      acd96(120)=acd96(21)*acd96(114)
      acd96(119)=acd96(119)+acd96(120)
      acd96(119)=acd96(27)*acd96(119)
      acd96(116)=acd96(15)*acd96(116)
      acd96(120)=acd96(21)*acd96(115)
      acd96(116)=acd96(116)+acd96(120)
      acd96(116)=acd96(28)*acd96(116)
      acd96(120)=acd96(101)*acd96(8)
      acd96(121)=acd96(103)*acd96(25)
      acd96(120)=acd96(120)+acd96(121)
      acd96(121)=acd96(20)*acd96(120)
      acd96(122)=acd96(101)*acd96(12)
      acd96(123)=acd96(103)*acd96(26)
      acd96(122)=acd96(122)+acd96(123)
      acd96(123)=acd96(22)*acd96(122)
      acd96(124)=acd96(101)*acd96(14)
      acd96(125)=acd96(103)*acd96(27)
      acd96(124)=acd96(124)+acd96(125)
      acd96(125)=acd96(23)*acd96(124)
      acd96(126)=acd96(101)*acd96(16)
      acd96(127)=acd96(103)*acd96(28)
      acd96(126)=acd96(126)+acd96(127)
      acd96(127)=acd96(24)*acd96(126)
      acd96(96)=acd96(127)+acd96(125)+acd96(123)+acd96(121)+acd96(116)+acd96(11&
      &9)+acd96(118)+acd96(117)+acd96(108)+acd96(113)+acd96(111)+acd96(109)+acd&
      &96(107)+acd96(96)+acd96(105)+acd96(104)
      acd96(104)=acd96(30)*acd96(29)
      acd96(105)=acd96(46)*acd96(45)
      acd96(107)=2.0_ki*acd96(47)
      acd96(108)=acd96(48)*acd96(107)
      acd96(109)=acd96(54)*acd96(7)
      acd96(111)=acd96(55)*acd96(9)
      acd96(113)=acd96(56)*acd96(11)
      acd96(116)=acd96(59)*acd96(58)
      acd96(117)=acd96(60)*acd96(13)
      acd96(118)=acd96(62)*acd96(61)
      acd96(119)=acd96(63)*acd96(15)
      acd96(104)=acd96(119)+acd96(118)+acd96(117)+acd96(116)+acd96(113)+acd96(1&
      &11)+acd96(109)+acd96(108)+acd96(105)+acd96(104)
      acd96(104)=acd96(2)*acd96(104)
      acd96(105)=acd96(33)*acd96(29)
      acd96(108)=acd96(76)*acd96(45)
      acd96(109)=acd96(80)*acd96(107)
      acd96(111)=acd96(85)*acd96(7)
      acd96(113)=acd96(87)*acd96(11)
      acd96(116)=acd96(89)*acd96(13)
      acd96(117)=acd96(90)*acd96(61)
      acd96(118)=acd96(91)*acd96(15)
      acd96(105)=acd96(118)+acd96(117)+acd96(116)+acd96(113)+acd96(111)+acd96(1&
      &09)+acd96(108)+acd96(105)
      acd96(105)=acd96(9)*acd96(105)
      acd96(108)=acd96(64)*acd96(97)
      acd96(109)=acd96(43)*acd96(2)
      acd96(111)=acd96(69)*acd96(7)
      acd96(113)=-acd96(70)*acd96(9)
      acd96(116)=-acd96(71)*acd96(11)
      acd96(117)=acd96(72)*acd96(3)
      acd96(118)=-acd96(73)*acd96(13)
      acd96(108)=acd96(118)+acd96(117)+acd96(116)+acd96(113)+acd96(111)+acd96(1&
      &09)+acd96(108)
      acd96(109)=acd96(44)+acd96(42)
      acd96(108)=acd96(109)*acd96(108)
      acd96(111)=-acd96(66)*acd96(97)
      acd96(113)=acd96(79)*acd96(7)
      acd96(116)=acd96(81)*acd96(11)
      acd96(117)=acd96(82)*acd96(3)
      acd96(118)=acd96(83)*acd96(13)
      acd96(111)=acd96(118)+acd96(117)+acd96(116)+acd96(113)+acd96(111)
      acd96(111)=acd96(107)*acd96(111)
      acd96(113)=-acd96(31)*acd96(97)
      acd96(116)=acd96(32)*acd96(7)
      acd96(117)=acd96(34)*acd96(11)
      acd96(118)=acd96(35)*acd96(3)
      acd96(113)=acd96(118)+acd96(117)+acd96(116)+acd96(113)
      acd96(113)=acd96(29)*acd96(113)
      acd96(116)=-acd96(65)*acd96(97)
      acd96(117)=acd96(75)*acd96(7)
      acd96(118)=acd96(77)*acd96(11)
      acd96(119)=acd96(78)*acd96(3)
      acd96(116)=acd96(119)+acd96(118)+acd96(117)+acd96(116)
      acd96(116)=acd96(45)*acd96(116)
      acd96(95)=acd96(37)*acd96(95)
      acd96(100)=acd96(36)*acd96(100)
      acd96(117)=-acd96(40)*acd96(2)
      acd96(118)=acd96(67)*acd96(9)
      acd96(117)=acd96(118)+acd96(117)
      acd96(97)=acd96(97)*acd96(117)
      acd96(109)=-acd96(74)*acd96(109)
      acd96(117)=acd96(94)*acd96(3)
      acd96(109)=acd96(117)+acd96(109)
      acd96(109)=acd96(61)*acd96(109)
      acd96(117)=acd96(41)+acd96(39)
      acd96(102)=acd96(102)*acd96(117)
      acd96(106)=acd96(50)*acd96(106)
      acd96(117)=acd96(37)*acd96(2)
      acd96(118)=acd96(7)*acd96(117)
      acd96(119)=acd96(36)*acd96(110)
      acd96(118)=acd96(118)+acd96(119)
      acd96(118)=acd96(8)*acd96(118)
      acd96(119)=acd96(11)*acd96(117)
      acd96(121)=acd96(36)*acd96(112)
      acd96(119)=acd96(119)+acd96(121)
      acd96(119)=acd96(12)*acd96(119)
      acd96(121)=acd96(13)*acd96(117)
      acd96(123)=acd96(36)*acd96(114)
      acd96(121)=acd96(121)+acd96(123)
      acd96(121)=acd96(14)*acd96(121)
      acd96(117)=acd96(15)*acd96(117)
      acd96(123)=acd96(36)*acd96(115)
      acd96(117)=acd96(117)+acd96(123)
      acd96(117)=acd96(16)*acd96(117)
      acd96(123)=acd96(37)*acd96(9)
      acd96(125)=acd96(7)*acd96(123)
      acd96(127)=acd96(50)*acd96(110)
      acd96(125)=acd96(125)+acd96(127)
      acd96(125)=acd96(25)*acd96(125)
      acd96(127)=acd96(11)*acd96(123)
      acd96(128)=acd96(50)*acd96(112)
      acd96(127)=acd96(127)+acd96(128)
      acd96(127)=acd96(26)*acd96(127)
      acd96(128)=acd96(13)*acd96(123)
      acd96(129)=acd96(50)*acd96(114)
      acd96(128)=acd96(128)+acd96(129)
      acd96(128)=acd96(27)*acd96(128)
      acd96(123)=acd96(15)*acd96(123)
      acd96(115)=acd96(50)*acd96(115)
      acd96(115)=acd96(123)+acd96(115)
      acd96(115)=acd96(28)*acd96(115)
      acd96(120)=acd96(49)*acd96(120)
      acd96(122)=acd96(51)*acd96(122)
      acd96(123)=acd96(52)*acd96(124)
      acd96(124)=acd96(53)*acd96(126)
      acd96(107)=acd96(61)*acd96(107)
      acd96(126)=acd96(58)*acd96(9)
      acd96(107)=acd96(107)+acd96(126)
      acd96(107)=acd96(84)*acd96(107)
      acd96(99)=-acd96(68)*acd96(99)
      acd96(98)=acd96(38)*acd96(98)
      acd96(101)=acd96(57)*acd96(101)
      acd96(110)=acd96(86)*acd96(110)
      acd96(103)=acd96(88)*acd96(103)
      acd96(112)=acd96(92)*acd96(112)
      acd96(114)=acd96(93)*acd96(114)
      acd96(95)=acd96(114)+acd96(112)+acd96(103)+acd96(110)+acd96(101)+acd96(98&
      &)+acd96(107)+acd96(99)+acd96(124)+acd96(123)+acd96(122)+acd96(120)+acd96&
      &(115)+acd96(128)+acd96(127)+acd96(125)+acd96(117)+acd96(121)+acd96(119)+&
      &acd96(118)+acd96(106)+acd96(95)+acd96(100)+acd96(104)+acd96(105)+acd96(1&
      &11)+acd96(116)+acd96(113)+acd96(102)+acd96(109)+acd96(108)+acd96(97)
      brack(ninjaidxt0x0mu0)=acd96(95)
      brack(ninjaidxt0x1mu0)=acd96(96)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d96h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd96h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
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
end module     p0_dbaru_epnebbbarg_d96h5l132
