module     p0_dbaru_epnebbbarg_d321h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d321h7l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd321h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd321
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd321(1)=dotproduct(k2,ninjaE3)
      acd321(2)=dotproduct(ninjaE3,spvak2l6)
      acd321(3)=dotproduct(ninjaE3,spvak7k2)
      acd321(4)=abb321(20)
      acd321(5)=dotproduct(ninjaE3,spvak2l5)
      acd321(6)=abb321(41)
      acd321(7)=dotproduct(k3,ninjaE3)
      acd321(8)=dotproduct(k4,ninjaE3)
      acd321(9)=dotproduct(ninjaE3,spvak1k2)
      acd321(10)=abb321(23)
      acd321(11)=dotproduct(ninjaE3,spvak4k3)
      acd321(12)=abb321(28)
      acd321(13)=dotproduct(ninjaE3,spvak4k2)
      acd321(14)=abb321(32)
      acd321(15)=abb321(52)
      acd321(16)=abb321(37)
      acd321(17)=abb321(40)
      acd321(18)=acd321(13)*acd321(17)
      acd321(19)=acd321(11)*acd321(16)
      acd321(20)=-acd321(9)*acd321(15)
      acd321(21)=-acd321(8)+acd321(1)-acd321(7)
      acd321(22)=acd321(6)*acd321(21)
      acd321(18)=acd321(22)+acd321(20)+acd321(18)+acd321(19)
      acd321(18)=acd321(5)*acd321(18)
      acd321(19)=acd321(13)*acd321(14)
      acd321(20)=acd321(11)*acd321(12)
      acd321(22)=acd321(9)*acd321(10)
      acd321(21)=acd321(4)*acd321(21)
      acd321(19)=acd321(21)+acd321(22)+acd321(19)+acd321(20)
      acd321(19)=acd321(2)*acd321(19)
      acd321(18)=acd321(18)+acd321(19)
      acd321(18)=acd321(3)*acd321(18)
      brack(ninjaidxt2mu0)=acd321(18)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd321h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(145) :: acd321
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd321(1)=dotproduct(k2,ninjaE3)
      acd321(2)=dotproduct(ninjaE3,spvak2l6)
      acd321(3)=dotproduct(ninjaE4,spvak7k2)
      acd321(4)=abb321(20)
      acd321(5)=dotproduct(ninjaE3,spvak7k2)
      acd321(6)=dotproduct(ninjaE4,spvak2l6)
      acd321(7)=dotproduct(ninjaE4,spvak2l5)
      acd321(8)=abb321(41)
      acd321(9)=dotproduct(ninjaE3,spvak2l5)
      acd321(10)=abb321(62)
      acd321(11)=dotproduct(k2,ninjaE4)
      acd321(12)=dotproduct(k3,ninjaE3)
      acd321(13)=abb321(53)
      acd321(14)=dotproduct(k3,ninjaE4)
      acd321(15)=dotproduct(k4,ninjaE3)
      acd321(16)=dotproduct(k4,ninjaE4)
      acd321(17)=dotproduct(ninjaE4,spvak1k2)
      acd321(18)=abb321(23)
      acd321(19)=dotproduct(ninjaE4,spvak4k3)
      acd321(20)=abb321(28)
      acd321(21)=dotproduct(ninjaE4,spvak4k2)
      acd321(22)=abb321(32)
      acd321(23)=dotproduct(ninjaE3,spvak1k2)
      acd321(24)=dotproduct(ninjaE3,spvak4k3)
      acd321(25)=dotproduct(ninjaE3,spvak4k2)
      acd321(26)=abb321(52)
      acd321(27)=abb321(37)
      acd321(28)=abb321(40)
      acd321(29)=abb321(17)
      acd321(30)=dotproduct(ninjaE3,spvak1l6)
      acd321(31)=abb321(36)
      acd321(32)=dotproduct(ninjaE3,spvak7l6)
      acd321(33)=abb321(79)
      acd321(34)=abb321(45)
      acd321(35)=abb321(68)
      acd321(36)=dotproduct(ninjaE3,spvak1k3)
      acd321(37)=abb321(38)
      acd321(38)=abb321(105)
      acd321(39)=dotproduct(ninjaE3,spvak2k3)
      acd321(40)=abb321(46)
      acd321(41)=dotproduct(k2,ninjaA)
      acd321(42)=dotproduct(k7,ninjaE3)
      acd321(43)=abb321(128)
      acd321(44)=dotproduct(ninjaA,ninjaE3)
      acd321(45)=dotproduct(ninjaA,spvak2l6)
      acd321(46)=dotproduct(ninjaA,spvak7k2)
      acd321(47)=dotproduct(ninjaA,spvak2l5)
      acd321(48)=abb321(13)
      acd321(49)=dotproduct(ninjaE3,spvak7l5)
      acd321(50)=abb321(87)
      acd321(51)=dotproduct(k3,ninjaA)
      acd321(52)=abb321(120)
      acd321(53)=abb321(25)
      acd321(54)=dotproduct(k4,ninjaA)
      acd321(55)=dotproduct(l5,ninjaE3)
      acd321(56)=abb321(47)
      acd321(57)=dotproduct(l6,ninjaE3)
      acd321(58)=abb321(22)
      acd321(59)=abb321(42)
      acd321(60)=abb321(76)
      acd321(61)=abb321(51)
      acd321(62)=abb321(70)
      acd321(63)=abb321(131)
      acd321(64)=dotproduct(ninjaA,spvak1k2)
      acd321(65)=dotproduct(ninjaA,spvak4k3)
      acd321(66)=dotproduct(ninjaA,spvak4k2)
      acd321(67)=abb321(12)
      acd321(68)=abb321(29)
      acd321(69)=abb321(19)
      acd321(70)=dotproduct(ninjaE3,spval5l6)
      acd321(71)=abb321(21)
      acd321(72)=abb321(48)
      acd321(73)=dotproduct(ninjaE3,spvak4l6)
      acd321(74)=abb321(24)
      acd321(75)=abb321(35)
      acd321(76)=abb321(34)
      acd321(77)=abb321(49)
      acd321(78)=abb321(33)
      acd321(79)=abb321(39)
      acd321(80)=dotproduct(ninjaE3,spvak2k7)
      acd321(81)=abb321(104)
      acd321(82)=abb321(26)
      acd321(83)=abb321(86)
      acd321(84)=abb321(130)
      acd321(85)=dotproduct(k7,ninjaA)
      acd321(86)=dotproduct(ninjaA,ninjaA)
      acd321(87)=dotproduct(ninjaA,spvak7l5)
      acd321(88)=abb321(83)
      acd321(89)=abb321(114)
      acd321(90)=dotproduct(l5,ninjaA)
      acd321(91)=abb321(98)
      acd321(92)=dotproduct(l6,ninjaA)
      acd321(93)=abb321(110)
      acd321(94)=dotproduct(ninjaA,spvak7l6)
      acd321(95)=abb321(56)
      acd321(96)=dotproduct(ninjaA,spvak1l6)
      acd321(97)=dotproduct(ninjaA,spvak1k3)
      acd321(98)=dotproduct(ninjaA,spvak2k3)
      acd321(99)=abb321(18)
      acd321(100)=dotproduct(ninjaA,spval5l6)
      acd321(101)=dotproduct(ninjaA,spvak4l6)
      acd321(102)=dotproduct(ninjaA,spvak2k7)
      acd321(103)=abb321(107)
      acd321(104)=abb321(14)
      acd321(105)=abb321(15)
      acd321(106)=abb321(64)
      acd321(107)=abb321(31)
      acd321(108)=abb321(27)
      acd321(109)=abb321(65)
      acd321(110)=abb321(30)
      acd321(111)=abb321(89)
      acd321(112)=abb321(43)
      acd321(113)=abb321(44)
      acd321(114)=acd321(23)*acd321(3)
      acd321(115)=acd321(114)*acd321(26)
      acd321(116)=acd321(24)*acd321(3)
      acd321(117)=acd321(116)*acd321(27)
      acd321(118)=acd321(25)*acd321(3)
      acd321(119)=acd321(118)*acd321(28)
      acd321(120)=acd321(12)+acd321(15)
      acd321(121)=acd321(120)-acd321(1)
      acd321(122)=acd321(3)*acd321(121)
      acd321(123)=acd321(122)*acd321(8)
      acd321(115)=-acd321(123)-acd321(115)+acd321(117)+acd321(119)
      acd321(115)=acd321(115)*acd321(9)
      acd321(114)=acd321(114)*acd321(18)
      acd321(116)=acd321(116)*acd321(20)
      acd321(117)=acd321(118)*acd321(22)
      acd321(118)=acd321(122)*acd321(4)
      acd321(114)=-acd321(118)+acd321(114)+acd321(116)+acd321(117)
      acd321(114)=acd321(114)*acd321(2)
      acd321(116)=acd321(39)*acd321(40)
      acd321(117)=acd321(36)*acd321(37)
      acd321(118)=acd321(30)*acd321(31)
      acd321(119)=acd321(32)*acd321(33)
      acd321(116)=-acd321(116)-acd321(117)+acd321(118)-acd321(119)
      acd321(117)=acd321(25)*acd321(38)
      acd321(118)=acd321(24)*acd321(35)
      acd321(119)=acd321(23)*acd321(34)
      acd321(122)=acd321(1)*acd321(10)
      acd321(123)=acd321(120)*acd321(13)
      acd321(114)=acd321(115)+acd321(114)+acd321(122)+acd321(117)-acd321(123)-a&
      &cd321(116)+acd321(118)+acd321(119)
      acd321(115)=acd321(22)*acd321(21)
      acd321(117)=acd321(20)*acd321(19)
      acd321(118)=acd321(18)*acd321(17)
      acd321(119)=-acd321(16)+acd321(11)-acd321(14)
      acd321(122)=acd321(119)*acd321(4)
      acd321(115)=acd321(115)+acd321(117)+acd321(118)+acd321(122)
      acd321(115)=acd321(115)*acd321(2)
      acd321(117)=acd321(28)*acd321(21)
      acd321(118)=acd321(27)*acd321(19)
      acd321(122)=acd321(26)*acd321(17)
      acd321(119)=acd321(119)*acd321(8)
      acd321(117)=-acd321(117)-acd321(118)+acd321(122)-acd321(119)
      acd321(117)=acd321(117)*acd321(9)
      acd321(118)=acd321(7)*acd321(28)
      acd321(119)=acd321(6)*acd321(22)
      acd321(118)=acd321(118)+acd321(119)
      acd321(118)=acd321(118)*acd321(25)
      acd321(119)=acd321(7)*acd321(27)
      acd321(122)=acd321(6)*acd321(20)
      acd321(119)=acd321(119)+acd321(122)
      acd321(119)=acd321(119)*acd321(24)
      acd321(122)=acd321(7)*acd321(26)
      acd321(123)=acd321(6)*acd321(18)
      acd321(122)=acd321(122)-acd321(123)
      acd321(122)=acd321(122)*acd321(23)
      acd321(123)=-acd321(121)*acd321(4)
      acd321(124)=acd321(6)*acd321(123)
      acd321(121)=-acd321(121)*acd321(8)
      acd321(125)=acd321(7)*acd321(121)
      acd321(115)=-acd321(115)+acd321(117)-acd321(118)-acd321(119)+acd321(122)-&
      &acd321(29)-acd321(124)-acd321(125)
      acd321(117)=-acd321(5)*acd321(115)
      acd321(117)=acd321(117)+acd321(114)
      acd321(118)=acd321(22)*acd321(66)
      acd321(119)=acd321(20)*acd321(65)
      acd321(122)=acd321(18)*acd321(64)
      acd321(124)=acd321(51)+acd321(54)
      acd321(125)=acd321(124)-acd321(41)
      acd321(126)=acd321(125)*acd321(4)
      acd321(118)=-acd321(126)+acd321(67)+acd321(122)+acd321(118)+acd321(119)
      acd321(119)=acd321(118)*acd321(2)
      acd321(122)=acd321(28)*acd321(66)
      acd321(126)=acd321(27)*acd321(65)
      acd321(127)=acd321(26)*acd321(64)
      acd321(128)=acd321(125)*acd321(8)
      acd321(122)=-acd321(128)+acd321(79)+acd321(122)+acd321(126)-acd321(127)
      acd321(126)=acd321(122)*acd321(9)
      acd321(127)=acd321(47)*acd321(26)
      acd321(128)=acd321(45)*acd321(18)
      acd321(127)=-acd321(72)+acd321(127)-acd321(128)
      acd321(127)=acd321(127)*acd321(23)
      acd321(128)=acd321(47)*acd321(27)
      acd321(129)=acd321(45)*acd321(20)
      acd321(128)=acd321(75)+acd321(128)+acd321(129)
      acd321(128)=acd321(128)*acd321(24)
      acd321(129)=acd321(47)*acd321(28)
      acd321(130)=acd321(45)*acd321(22)
      acd321(129)=acd321(77)+acd321(129)+acd321(130)
      acd321(129)=acd321(129)*acd321(25)
      acd321(130)=acd321(81)*acd321(80)
      acd321(131)=acd321(74)*acd321(73)
      acd321(132)=acd321(71)*acd321(70)
      acd321(133)=acd321(57)*acd321(58)
      acd321(134)=acd321(55)*acd321(56)
      acd321(135)=acd321(39)*acd321(78)
      acd321(136)=acd321(36)*acd321(76)
      acd321(137)=acd321(30)*acd321(68)
      acd321(138)=acd321(32)*acd321(69)
      acd321(139)=acd321(42)*acd321(59)
      acd321(140)=acd321(1)*acd321(48)
      acd321(141)=2.0_ki*acd321(44)
      acd321(142)=acd321(141)*acd321(29)
      acd321(143)=acd321(120)*acd321(53)
      acd321(144)=acd321(45)*acd321(123)
      acd321(145)=acd321(47)*acd321(121)
      acd321(119)=-acd321(127)+acd321(133)+acd321(134)+acd321(135)+acd321(136)+&
      &acd321(130)-acd321(143)+acd321(144)+acd321(131)+acd321(132)+acd321(128)+&
      &acd321(129)+acd321(142)+acd321(119)+acd321(126)+acd321(145)+acd321(137)+&
      &acd321(138)+acd321(139)+acd321(140)
      acd321(126)=acd321(5)*acd321(119)
      acd321(127)=acd321(25)*acd321(28)
      acd321(128)=acd321(24)*acd321(27)
      acd321(129)=-acd321(23)*acd321(26)
      acd321(121)=acd321(121)+acd321(129)+acd321(127)+acd321(128)
      acd321(121)=acd321(9)*acd321(121)
      acd321(127)=acd321(25)*acd321(22)
      acd321(128)=acd321(24)*acd321(20)
      acd321(129)=acd321(23)*acd321(18)
      acd321(123)=acd321(123)+acd321(129)+acd321(127)+acd321(128)
      acd321(123)=acd321(2)*acd321(123)
      acd321(121)=acd321(121)+acd321(123)
      acd321(121)=acd321(46)*acd321(121)
      acd321(123)=-acd321(116)*acd321(141)
      acd321(127)=acd321(42)*acd321(52)
      acd321(128)=acd321(141)*acd321(13)
      acd321(129)=acd321(49)*acd321(50)
      acd321(127)=-acd321(129)+acd321(127)+acd321(128)
      acd321(127)=-acd321(127)*acd321(120)
      acd321(128)=acd321(49)*acd321(84)
      acd321(130)=acd321(42)*acd321(63)
      acd321(131)=acd321(38)*acd321(141)
      acd321(128)=acd321(131)+acd321(128)+acd321(130)
      acd321(128)=acd321(25)*acd321(128)
      acd321(130)=acd321(49)*acd321(83)
      acd321(131)=acd321(42)*acd321(62)
      acd321(132)=acd321(35)*acd321(141)
      acd321(130)=acd321(132)+acd321(130)+acd321(131)
      acd321(130)=acd321(24)*acd321(130)
      acd321(131)=acd321(49)*acd321(82)
      acd321(132)=acd321(42)*acd321(61)
      acd321(133)=acd321(34)*acd321(141)
      acd321(131)=acd321(133)+acd321(131)+acd321(132)
      acd321(131)=acd321(23)*acd321(131)
      acd321(132)=acd321(42)*acd321(43)
      acd321(133)=acd321(10)*acd321(141)
      acd321(129)=acd321(133)-acd321(129)+acd321(132)
      acd321(129)=acd321(1)*acd321(129)
      acd321(132)=acd321(42)*acd321(32)*acd321(60)
      acd321(121)=acd321(126)+acd321(121)+acd321(129)+acd321(131)+acd321(130)+a&
      &cd321(128)+acd321(132)+acd321(123)+acd321(127)
      acd321(119)=acd321(46)*acd321(119)
      acd321(115)=-ninjaP*acd321(115)
      acd321(122)=acd321(47)*acd321(122)
      acd321(118)=acd321(45)*acd321(118)
      acd321(123)=-acd321(53)*acd321(124)
      acd321(126)=acd321(81)*acd321(102)
      acd321(127)=acd321(78)*acd321(98)
      acd321(128)=acd321(76)*acd321(97)
      acd321(129)=acd321(74)*acd321(101)
      acd321(130)=acd321(71)*acd321(100)
      acd321(131)=acd321(69)*acd321(94)
      acd321(132)=acd321(68)*acd321(96)
      acd321(133)=acd321(58)*acd321(92)
      acd321(134)=acd321(56)*acd321(90)
      acd321(135)=acd321(85)*acd321(59)
      acd321(136)=acd321(66)*acd321(77)
      acd321(137)=acd321(65)*acd321(75)
      acd321(138)=acd321(64)*acd321(72)
      acd321(139)=acd321(41)*acd321(48)
      acd321(140)=acd321(86)*acd321(29)
      acd321(115)=acd321(115)+acd321(140)+acd321(139)+acd321(138)+acd321(137)+a&
      &cd321(136)+acd321(135)+acd321(134)+acd321(133)+acd321(132)+acd321(131)+a&
      &cd321(130)+acd321(129)+acd321(128)+acd321(127)+acd321(104)+acd321(126)+a&
      &cd321(118)+acd321(122)+acd321(123)
      acd321(115)=acd321(5)*acd321(115)
      acd321(118)=acd321(40)*acd321(98)
      acd321(122)=acd321(37)*acd321(97)
      acd321(123)=acd321(33)*acd321(94)
      acd321(126)=-acd321(31)*acd321(96)
      acd321(127)=acd321(66)*acd321(38)
      acd321(128)=acd321(65)*acd321(35)
      acd321(129)=acd321(64)*acd321(34)
      acd321(130)=acd321(41)*acd321(10)
      acd321(131)=-acd321(13)*acd321(124)
      acd321(118)=acd321(131)+acd321(130)+acd321(129)+acd321(128)+acd321(127)+a&
      &cd321(126)+acd321(123)+acd321(122)+acd321(99)+acd321(118)
      acd321(118)=acd321(118)*acd321(141)
      acd321(114)=ninjaP*acd321(114)
      acd321(122)=-acd321(52)*acd321(124)
      acd321(123)=acd321(60)*acd321(94)
      acd321(124)=acd321(66)*acd321(63)
      acd321(126)=acd321(65)*acd321(62)
      acd321(127)=acd321(64)*acd321(61)
      acd321(128)=acd321(41)*acd321(43)
      acd321(122)=acd321(128)+acd321(127)+acd321(126)+acd321(124)+acd321(95)+ac&
      &d321(123)+acd321(122)
      acd321(122)=acd321(42)*acd321(122)
      acd321(116)=-acd321(86)*acd321(116)
      acd321(123)=acd321(50)*acd321(125)
      acd321(124)=acd321(66)*acd321(84)
      acd321(125)=acd321(65)*acd321(83)
      acd321(126)=acd321(64)*acd321(82)
      acd321(123)=acd321(126)+acd321(125)+acd321(108)+acd321(124)+acd321(123)
      acd321(123)=acd321(49)*acd321(123)
      acd321(124)=acd321(85)*acd321(52)
      acd321(125)=acd321(86)*acd321(13)
      acd321(126)=acd321(50)*acd321(87)
      acd321(124)=-acd321(125)-acd321(124)+acd321(126)+acd321(89)
      acd321(120)=acd321(124)*acd321(120)
      acd321(124)=acd321(87)*acd321(84)
      acd321(125)=acd321(85)*acd321(63)
      acd321(127)=acd321(86)*acd321(38)
      acd321(124)=acd321(127)+acd321(125)+acd321(111)+acd321(124)
      acd321(124)=acd321(25)*acd321(124)
      acd321(125)=acd321(87)*acd321(83)
      acd321(127)=acd321(85)*acd321(62)
      acd321(128)=acd321(86)*acd321(35)
      acd321(125)=acd321(128)+acd321(127)+acd321(109)+acd321(125)
      acd321(125)=acd321(24)*acd321(125)
      acd321(127)=acd321(87)*acd321(82)
      acd321(128)=acd321(85)*acd321(61)
      acd321(129)=acd321(86)*acd321(34)
      acd321(127)=acd321(129)+acd321(128)+acd321(107)+acd321(127)
      acd321(127)=acd321(23)*acd321(127)
      acd321(128)=acd321(85)*acd321(43)
      acd321(129)=acd321(86)*acd321(10)
      acd321(126)=acd321(129)-acd321(126)+acd321(88)+acd321(128)
      acd321(126)=acd321(1)*acd321(126)
      acd321(128)=acd321(57)*acd321(93)
      acd321(129)=acd321(55)*acd321(91)
      acd321(130)=acd321(39)*acd321(112)
      acd321(131)=acd321(36)*acd321(110)
      acd321(132)=acd321(30)*acd321(105)
      acd321(133)=acd321(85)*acd321(60)
      acd321(133)=acd321(106)+acd321(133)
      acd321(133)=acd321(32)*acd321(133)
      acd321(134)=acd321(9)*acd321(113)
      acd321(135)=acd321(2)*acd321(103)
      acd321(114)=acd321(115)+acd321(119)+acd321(114)+acd321(135)+acd321(134)+a&
      &cd321(126)+acd321(127)+acd321(125)+acd321(124)+acd321(118)+acd321(122)+a&
      &cd321(123)+acd321(116)+acd321(133)+acd321(132)+acd321(131)+acd321(130)+a&
      &cd321(128)+acd321(129)+acd321(120)
      brack(ninjaidxt1mu0)=acd321(121)
      brack(ninjaidxt0mu0)=acd321(114)
      brack(ninjaidxt0mu2)=acd321(117)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d321h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd321h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d321h7l131