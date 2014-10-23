module     p0_dbaru_epnebbbarg_d70h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d70h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd70h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd70
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd70(1)=dotproduct(k2,ninjaE3)
      acd70(2)=dotproduct(ninjaE3,spvak1k2)
      acd70(3)=dotproduct(ninjaE3,spvak4k3)
      acd70(4)=dotproduct(ninjaE3,spvak7k2)
      acd70(5)=abb70(40)
      acd70(6)=dotproduct(ninjaE3,spval5l6)
      acd70(7)=abb70(12)
      acd70(8)=acd70(5)*acd70(1)
      acd70(9)=acd70(7)*acd70(6)
      acd70(8)=acd70(8)+acd70(9)
      acd70(8)=acd70(2)*acd70(8)*acd70(4)*acd70(3)
      brack(ninjaidxt2mu0)=acd70(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd70h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(135) :: acd70
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd70(1)=dotproduct(k2,ninjaE3)
      acd70(2)=dotproduct(ninjaE3,spvak4k3)
      acd70(3)=dotproduct(ninjaE3,spvak7k2)
      acd70(4)=dotproduct(ninjaE4,spvak1k2)
      acd70(5)=abb70(40)
      acd70(6)=dotproduct(ninjaE3,spvak1k2)
      acd70(7)=dotproduct(ninjaE4,spvak7k2)
      acd70(8)=dotproduct(ninjaE4,spvak4k3)
      acd70(9)=abb70(71)
      acd70(10)=abb70(57)
      acd70(11)=dotproduct(ninjaE3,spvak4k2)
      acd70(12)=abb70(39)
      acd70(13)=dotproduct(k2,ninjaE4)
      acd70(14)=dotproduct(ninjaE3,spval5l6)
      acd70(15)=abb70(12)
      acd70(16)=dotproduct(ninjaE4,spval5l6)
      acd70(17)=abb70(33)
      acd70(18)=dotproduct(ninjaE3,spval5k2)
      acd70(19)=abb70(10)
      acd70(20)=abb70(64)
      acd70(21)=abb70(58)
      acd70(22)=abb70(48)
      acd70(23)=abb70(46)
      acd70(24)=dotproduct(k1,ninjaE3)
      acd70(25)=abb70(24)
      acd70(26)=dotproduct(k2,ninjaA)
      acd70(27)=dotproduct(k3,ninjaE3)
      acd70(28)=dotproduct(k4,ninjaE3)
      acd70(29)=dotproduct(k7,ninjaE3)
      acd70(30)=abb70(79)
      acd70(31)=abb70(56)
      acd70(32)=abb70(41)
      acd70(33)=dotproduct(ninjaA,ninjaE3)
      acd70(34)=dotproduct(ninjaA,spvak4k3)
      acd70(35)=dotproduct(ninjaA,spvak7k2)
      acd70(36)=dotproduct(ninjaA,spvak1k2)
      acd70(37)=abb70(31)
      acd70(38)=abb70(84)
      acd70(39)=abb70(45)
      acd70(40)=dotproduct(ninjaE3,spvak1k3)
      acd70(41)=abb70(38)
      acd70(42)=dotproduct(ninjaE3,spvak1k7)
      acd70(43)=abb70(44)
      acd70(44)=dotproduct(l5,ninjaE3)
      acd70(45)=dotproduct(l6,ninjaE3)
      acd70(46)=abb70(75)
      acd70(47)=abb70(23)
      acd70(48)=abb70(47)
      acd70(49)=dotproduct(ninjaA,spval5l6)
      acd70(50)=abb70(9)
      acd70(51)=abb70(36)
      acd70(52)=abb70(11)
      acd70(53)=abb70(42)
      acd70(54)=abb70(13)
      acd70(55)=dotproduct(ninjaE3,spval6k2)
      acd70(56)=abb70(37)
      acd70(57)=dotproduct(ninjaE3,spvak3k2)
      acd70(58)=abb70(97)
      acd70(59)=abb70(16)
      acd70(60)=abb70(59)
      acd70(61)=dotproduct(k1,ninjaA)
      acd70(62)=abb70(29)
      acd70(63)=abb70(28)
      acd70(64)=abb70(77)
      acd70(65)=dotproduct(k3,ninjaA)
      acd70(66)=dotproduct(k4,ninjaA)
      acd70(67)=dotproduct(k7,ninjaA)
      acd70(68)=dotproduct(ninjaA,spvak4k2)
      acd70(69)=dotproduct(ninjaA,ninjaA)
      acd70(70)=dotproduct(ninjaA,spvak1k3)
      acd70(71)=dotproduct(ninjaA,spvak1k7)
      acd70(72)=abb70(55)
      acd70(73)=abb70(22)
      acd70(74)=abb70(53)
      acd70(75)=dotproduct(l5,ninjaA)
      acd70(76)=dotproduct(l6,ninjaA)
      acd70(77)=abb70(35)
      acd70(78)=abb70(91)
      acd70(79)=abb70(67)
      acd70(80)=abb70(98)
      acd70(81)=abb70(50)
      acd70(82)=abb70(32)
      acd70(83)=abb70(86)
      acd70(84)=abb70(34)
      acd70(85)=dotproduct(ninjaA,spval5k2)
      acd70(86)=abb70(21)
      acd70(87)=abb70(30)
      acd70(88)=abb70(27)
      acd70(89)=abb70(49)
      acd70(90)=abb70(15)
      acd70(91)=abb70(18)
      acd70(92)=abb70(85)
      acd70(93)=dotproduct(ninjaA,spval6k2)
      acd70(94)=dotproduct(ninjaA,spvak3k2)
      acd70(95)=abb70(19)
      acd70(96)=abb70(54)
      acd70(97)=abb70(66)
      acd70(98)=abb70(20)
      acd70(99)=abb70(14)
      acd70(100)=abb70(43)
      acd70(101)=abb70(89)
      acd70(102)=abb70(51)
      acd70(103)=abb70(52)
      acd70(104)=acd70(15)*acd70(16)
      acd70(105)=acd70(5)*acd70(13)
      acd70(104)=acd70(104)+acd70(105)
      acd70(104)=acd70(104)*acd70(6)
      acd70(105)=acd70(1)*acd70(5)
      acd70(106)=acd70(14)*acd70(15)
      acd70(105)=acd70(106)+acd70(105)
      acd70(105)=acd70(4)*acd70(105)
      acd70(104)=acd70(104)+acd70(105)+acd70(17)
      acd70(105)=acd70(2)*acd70(104)
      acd70(106)=-acd70(11)*acd70(23)
      acd70(107)=acd70(6)*acd70(5)
      acd70(108)=acd70(107)*acd70(8)
      acd70(108)=acd70(108)+acd70(9)
      acd70(109)=acd70(1)*acd70(108)
      acd70(110)=acd70(6)*acd70(15)
      acd70(111)=acd70(110)*acd70(8)
      acd70(111)=acd70(111)-acd70(20)
      acd70(112)=acd70(14)*acd70(111)
      acd70(105)=acd70(105)+acd70(112)+acd70(106)+acd70(109)
      acd70(105)=acd70(3)*acd70(105)
      acd70(106)=acd70(11)*acd70(12)
      acd70(109)=acd70(6)*acd70(10)
      acd70(106)=acd70(106)+acd70(109)
      acd70(106)=acd70(1)*acd70(106)
      acd70(109)=acd70(11)*acd70(22)
      acd70(112)=-acd70(6)*acd70(21)
      acd70(109)=acd70(109)+acd70(112)
      acd70(109)=acd70(14)*acd70(109)
      acd70(112)=acd70(107)*acd70(1)
      acd70(113)=acd70(110)*acd70(14)
      acd70(112)=acd70(112)+acd70(113)
      acd70(113)=acd70(7)*acd70(112)
      acd70(114)=acd70(18)*acd70(19)
      acd70(113)=acd70(114)+acd70(113)
      acd70(113)=acd70(2)*acd70(113)
      acd70(105)=acd70(105)+acd70(113)+acd70(106)+acd70(109)
      acd70(106)=acd70(40)*acd70(41)
      acd70(109)=acd70(10)*acd70(42)
      acd70(113)=acd70(27)+acd70(28)
      acd70(115)=acd70(113)*acd70(9)
      acd70(106)=acd70(115)+acd70(106)-acd70(109)
      acd70(109)=acd70(29)*acd70(30)
      acd70(109)=acd70(109)+acd70(106)
      acd70(115)=2.0_ki*acd70(33)
      acd70(116)=acd70(9)*acd70(115)
      acd70(117)=acd70(11)*acd70(39)
      acd70(118)=acd70(34)*acd70(107)
      acd70(116)=acd70(118)+acd70(117)+acd70(116)+acd70(109)
      acd70(116)=acd70(1)*acd70(116)
      acd70(117)=acd70(40)*acd70(60)
      acd70(118)=acd70(21)*acd70(42)
      acd70(119)=acd70(113)*acd70(20)
      acd70(117)=-acd70(119)+acd70(117)+acd70(118)
      acd70(118)=acd70(29)*acd70(46)
      acd70(118)=acd70(118)+acd70(117)
      acd70(119)=-acd70(20)*acd70(115)
      acd70(120)=acd70(11)*acd70(59)
      acd70(121)=acd70(34)*acd70(110)
      acd70(119)=acd70(121)+acd70(120)+acd70(119)+acd70(118)
      acd70(119)=acd70(14)*acd70(119)
      acd70(120)=acd70(45)+acd70(24)+acd70(44)
      acd70(121)=acd70(120)*acd70(25)
      acd70(122)=acd70(55)*acd70(56)
      acd70(123)=acd70(23)*acd70(57)
      acd70(124)=acd70(18)*acd70(52)
      acd70(121)=acd70(121)+acd70(124)+acd70(122)+acd70(123)
      acd70(122)=acd70(15)*acd70(49)
      acd70(123)=acd70(5)*acd70(26)
      acd70(122)=acd70(53)+acd70(122)+acd70(123)
      acd70(123)=acd70(122)*acd70(6)
      acd70(124)=acd70(11)*acd70(54)
      acd70(123)=acd70(123)+acd70(124)+acd70(121)
      acd70(124)=acd70(17)*acd70(115)
      acd70(125)=acd70(5)*acd70(36)
      acd70(125)=acd70(125)+acd70(37)
      acd70(126)=acd70(1)*acd70(125)
      acd70(127)=acd70(15)*acd70(36)
      acd70(127)=acd70(127)+acd70(50)
      acd70(128)=acd70(14)*acd70(127)
      acd70(124)=acd70(128)+acd70(126)+acd70(124)+acd70(123)
      acd70(124)=acd70(2)*acd70(124)
      acd70(126)=acd70(1)*acd70(38)
      acd70(128)=acd70(14)*acd70(58)
      acd70(129)=acd70(2)*acd70(51)
      acd70(126)=acd70(129)+acd70(126)+acd70(128)
      acd70(126)=acd70(3)*acd70(126)
      acd70(128)=acd70(113)+acd70(29)
      acd70(128)=acd70(128)*acd70(43)
      acd70(129)=-acd70(23)*acd70(115)
      acd70(129)=acd70(129)-acd70(128)
      acd70(129)=acd70(11)*acd70(129)
      acd70(116)=acd70(126)+acd70(124)+acd70(119)+acd70(129)+acd70(116)
      acd70(116)=acd70(3)*acd70(116)
      acd70(119)=acd70(29)*acd70(32)
      acd70(124)=acd70(12)*acd70(115)
      acd70(119)=acd70(119)+acd70(124)
      acd70(119)=acd70(11)*acd70(119)
      acd70(124)=acd70(29)*acd70(31)
      acd70(126)=acd70(10)*acd70(115)
      acd70(124)=acd70(124)+acd70(126)
      acd70(124)=acd70(6)*acd70(124)
      acd70(119)=acd70(119)+acd70(124)
      acd70(119)=acd70(1)*acd70(119)
      acd70(124)=acd70(29)*acd70(48)
      acd70(126)=acd70(22)*acd70(115)
      acd70(124)=acd70(124)+acd70(126)
      acd70(124)=acd70(11)*acd70(124)
      acd70(126)=acd70(29)*acd70(47)
      acd70(129)=-acd70(21)*acd70(115)
      acd70(126)=acd70(126)+acd70(129)
      acd70(126)=acd70(6)*acd70(126)
      acd70(124)=acd70(124)+acd70(126)
      acd70(124)=acd70(14)*acd70(124)
      acd70(112)=acd70(35)*acd70(112)
      acd70(126)=acd70(115)*acd70(114)
      acd70(112)=acd70(126)+acd70(112)
      acd70(112)=acd70(2)*acd70(112)
      acd70(112)=acd70(116)+acd70(112)+acd70(119)+acd70(124)
      acd70(104)=ninjaP*acd70(104)
      acd70(116)=acd70(36)*acd70(122)
      acd70(119)=acd70(56)*acd70(93)
      acd70(124)=acd70(52)*acd70(85)
      acd70(126)=acd70(69)*acd70(17)
      acd70(129)=acd70(23)*acd70(94)
      acd70(130)=acd70(68)*acd70(54)
      acd70(131)=acd70(61)+acd70(76)+acd70(75)
      acd70(131)=acd70(25)*acd70(131)
      acd70(132)=acd70(49)*acd70(50)
      acd70(133)=acd70(26)*acd70(37)
      acd70(134)=2.0_ki*acd70(35)
      acd70(135)=acd70(51)*acd70(134)
      acd70(104)=acd70(135)+acd70(133)+acd70(132)+acd70(131)+acd70(130)+acd70(1&
      &29)+acd70(126)+acd70(124)+acd70(95)+acd70(119)+acd70(116)+acd70(104)
      acd70(104)=acd70(2)*acd70(104)
      acd70(108)=ninjaP*acd70(108)
      acd70(116)=acd70(41)*acd70(70)
      acd70(119)=acd70(67)*acd70(30)
      acd70(124)=-acd70(10)*acd70(71)
      acd70(126)=acd70(68)*acd70(39)
      acd70(129)=acd70(65)+acd70(66)
      acd70(130)=acd70(129)+acd70(69)
      acd70(131)=acd70(9)*acd70(130)
      acd70(132)=acd70(34)*acd70(125)
      acd70(133)=acd70(38)*acd70(134)
      acd70(108)=acd70(133)+acd70(132)+acd70(131)+acd70(126)+acd70(124)+acd70(1&
      &19)+acd70(72)+acd70(116)+acd70(108)
      acd70(108)=acd70(1)*acd70(108)
      acd70(111)=ninjaP*acd70(111)
      acd70(116)=acd70(60)*acd70(70)
      acd70(119)=acd70(67)*acd70(46)
      acd70(124)=acd70(21)*acd70(71)
      acd70(126)=acd70(68)*acd70(59)
      acd70(130)=-acd70(20)*acd70(130)
      acd70(131)=acd70(34)*acd70(127)
      acd70(132)=acd70(58)*acd70(134)
      acd70(111)=acd70(132)+acd70(131)+acd70(130)+acd70(126)+acd70(124)+acd70(1&
      &19)+acd70(96)+acd70(116)+acd70(111)
      acd70(111)=acd70(14)*acd70(111)
      acd70(116)=ninjaP+acd70(69)
      acd70(119)=-acd70(23)*acd70(116)
      acd70(124)=-acd70(67)-acd70(129)
      acd70(124)=acd70(43)*acd70(124)
      acd70(126)=acd70(49)*acd70(59)
      acd70(129)=acd70(26)*acd70(39)
      acd70(130)=acd70(34)*acd70(54)
      acd70(119)=acd70(130)+acd70(129)+acd70(126)+acd70(124)+acd70(100)+acd70(1&
      &19)
      acd70(119)=acd70(11)*acd70(119)
      acd70(121)=acd70(34)*acd70(121)
      acd70(124)=-acd70(68)*acd70(23)
      acd70(126)=-acd70(49)*acd70(20)
      acd70(129)=acd70(26)*acd70(9)
      acd70(130)=acd70(34)*acd70(17)
      acd70(124)=acd70(130)+acd70(129)+acd70(126)+acd70(88)+acd70(124)
      acd70(124)=acd70(124)*acd70(115)
      acd70(117)=acd70(49)*acd70(117)
      acd70(106)=acd70(26)*acd70(106)
      acd70(126)=acd70(43)*acd70(68)
      acd70(129)=acd70(49)*acd70(46)
      acd70(130)=acd70(26)*acd70(30)
      acd70(129)=acd70(130)+acd70(129)+acd70(79)-acd70(126)
      acd70(129)=acd70(29)*acd70(129)
      acd70(130)=acd70(49)*acd70(58)
      acd70(131)=acd70(26)*acd70(38)
      acd70(132)=acd70(34)*acd70(51)
      acd70(130)=acd70(132)+acd70(131)+acd70(97)+acd70(130)
      acd70(130)=acd70(3)*acd70(130)
      acd70(126)=-acd70(126)-acd70(74)
      acd70(126)=acd70(113)*acd70(126)
      acd70(122)=acd70(34)*acd70(122)
      acd70(122)=acd70(99)+acd70(122)
      acd70(122)=acd70(6)*acd70(122)
      acd70(131)=-acd70(64)*acd70(120)
      acd70(132)=acd70(55)*acd70(101)
      acd70(133)=acd70(42)*acd70(103)
      acd70(134)=acd70(40)*acd70(102)
      acd70(135)=acd70(18)*acd70(98)
      acd70(104)=acd70(130)+acd70(104)+acd70(111)+acd70(108)+acd70(122)+acd70(1&
      &19)+acd70(124)+acd70(129)+acd70(121)+acd70(106)+acd70(117)+acd70(135)+ac&
      &d70(134)+acd70(133)+acd70(132)+acd70(131)+acd70(126)
      acd70(104)=acd70(3)*acd70(104)
      acd70(106)=acd70(73)*acd70(113)
      acd70(108)=acd70(63)*acd70(120)
      acd70(111)=acd70(55)*acd70(92)
      acd70(113)=acd70(18)*acd70(89)
      acd70(117)=acd70(34)*acd70(114)
      acd70(119)=acd70(29)*acd70(77)
      acd70(121)=acd70(84)*acd70(115)
      acd70(106)=acd70(121)+acd70(119)+acd70(117)+acd70(113)+acd70(111)+acd70(1&
      &08)+acd70(106)
      acd70(106)=acd70(106)*acd70(115)
      acd70(108)=acd70(35)*acd70(109)
      acd70(109)=acd70(68)*acd70(12)
      acd70(111)=acd70(36)*acd70(10)
      acd70(113)=acd70(35)*acd70(9)
      acd70(109)=acd70(113)+acd70(109)+acd70(111)
      acd70(109)=acd70(109)*acd70(115)
      acd70(111)=acd70(12)*acd70(116)
      acd70(113)=acd70(67)*acd70(32)
      acd70(117)=acd70(35)*acd70(39)
      acd70(111)=acd70(117)+acd70(113)+acd70(111)
      acd70(111)=acd70(11)*acd70(111)
      acd70(113)=acd70(10)*acd70(116)
      acd70(117)=acd70(67)*acd70(31)
      acd70(119)=acd70(35)*acd70(34)
      acd70(121)=acd70(5)*acd70(119)
      acd70(113)=acd70(121)+acd70(117)+acd70(113)
      acd70(113)=acd70(6)*acd70(113)
      acd70(117)=acd70(68)*acd70(32)
      acd70(121)=acd70(36)*acd70(31)
      acd70(117)=acd70(117)+acd70(121)
      acd70(117)=acd70(29)*acd70(117)
      acd70(108)=acd70(113)+acd70(111)+acd70(109)+acd70(117)+acd70(108)
      acd70(108)=acd70(1)*acd70(108)
      acd70(109)=acd70(35)*acd70(118)
      acd70(111)=acd70(68)*acd70(22)
      acd70(113)=-acd70(36)*acd70(21)
      acd70(117)=-acd70(35)*acd70(20)
      acd70(111)=acd70(117)+acd70(113)+acd70(87)+acd70(111)
      acd70(111)=acd70(111)*acd70(115)
      acd70(113)=acd70(22)*acd70(116)
      acd70(117)=acd70(67)*acd70(48)
      acd70(118)=acd70(35)*acd70(59)
      acd70(113)=acd70(118)+acd70(117)+acd70(113)
      acd70(113)=acd70(11)*acd70(113)
      acd70(117)=-acd70(21)*acd70(116)
      acd70(118)=acd70(67)*acd70(47)
      acd70(119)=acd70(15)*acd70(119)
      acd70(117)=acd70(119)+acd70(118)+acd70(117)
      acd70(117)=acd70(6)*acd70(117)
      acd70(118)=acd70(68)*acd70(48)
      acd70(119)=acd70(36)*acd70(47)
      acd70(118)=acd70(119)+acd70(78)+acd70(118)
      acd70(118)=acd70(29)*acd70(118)
      acd70(109)=acd70(117)+acd70(113)+acd70(111)+acd70(118)+acd70(109)
      acd70(109)=acd70(14)*acd70(109)
      acd70(111)=acd70(35)*acd70(123)
      acd70(113)=acd70(114)*acd70(116)
      acd70(114)=acd70(19)*acd70(85)
      acd70(116)=acd70(35)*acd70(17)
      acd70(114)=acd70(116)+acd70(86)+acd70(114)
      acd70(114)=acd70(114)*acd70(115)
      acd70(116)=ninjaP*acd70(7)
      acd70(107)=acd70(107)*acd70(116)
      acd70(117)=acd70(35)*acd70(125)
      acd70(107)=acd70(117)+acd70(107)
      acd70(107)=acd70(1)*acd70(107)
      acd70(110)=acd70(110)*acd70(116)
      acd70(116)=acd70(35)*acd70(127)
      acd70(110)=acd70(116)+acd70(110)
      acd70(110)=acd70(14)*acd70(110)
      acd70(107)=acd70(110)+acd70(107)+acd70(114)+acd70(111)+acd70(113)
      acd70(107)=acd70(2)*acd70(107)
      acd70(110)=acd70(62)*acd70(120)
      acd70(111)=acd70(55)*acd70(83)
      acd70(113)=acd70(18)*acd70(80)
      acd70(110)=acd70(113)+acd70(111)+acd70(110)
      acd70(110)=acd70(29)*acd70(110)
      acd70(111)=acd70(49)*acd70(22)
      acd70(113)=acd70(26)*acd70(12)
      acd70(114)=-acd70(35)*acd70(23)
      acd70(111)=acd70(114)+acd70(113)+acd70(91)+acd70(111)
      acd70(111)=acd70(111)*acd70(115)
      acd70(113)=acd70(49)*acd70(48)
      acd70(114)=acd70(26)*acd70(32)
      acd70(113)=acd70(114)+acd70(82)+acd70(113)
      acd70(113)=acd70(29)*acd70(113)
      acd70(114)=-acd70(35)*acd70(128)
      acd70(111)=acd70(111)+acd70(113)+acd70(114)
      acd70(111)=acd70(11)*acd70(111)
      acd70(113)=acd70(49)*acd70(47)
      acd70(114)=acd70(26)*acd70(31)
      acd70(113)=acd70(114)+acd70(81)+acd70(113)
      acd70(113)=acd70(29)*acd70(113)
      acd70(114)=-acd70(49)*acd70(21)
      acd70(116)=acd70(26)*acd70(10)
      acd70(114)=acd70(116)+acd70(90)+acd70(114)
      acd70(114)=acd70(114)*acd70(115)
      acd70(113)=acd70(113)+acd70(114)
      acd70(113)=acd70(6)*acd70(113)
      acd70(104)=acd70(104)+acd70(107)+acd70(109)+acd70(108)+acd70(113)+acd70(1&
      &11)+acd70(110)+acd70(106)
      brack(ninjaidxt1mu0)=acd70(112)
      brack(ninjaidxt0mu0)=acd70(104)
      brack(ninjaidxt0mu2)=acd70(105)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d70h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd70h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3-k2+k7+k4
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d70h6l131
