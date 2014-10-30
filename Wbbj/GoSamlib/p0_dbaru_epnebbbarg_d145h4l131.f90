module     p0_dbaru_epnebbbarg_d145h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d145h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd145h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(77) :: acd145
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd145(1)=dotproduct(k2,ninjaA)
      acd145(2)=dotproduct(ninjaE3,spvak7k2)
      acd145(3)=dotproduct(ninjaE3,spval5k2)
      acd145(4)=abb145(33)
      acd145(5)=dotproduct(ninjaE3,spval6k2)
      acd145(6)=abb145(117)
      acd145(7)=dotproduct(k2,ninjaE3)
      acd145(8)=dotproduct(ninjaA,spvak7k2)
      acd145(9)=dotproduct(ninjaA,spval5k2)
      acd145(10)=dotproduct(ninjaA,spval6k2)
      acd145(11)=abb145(20)
      acd145(12)=abb145(39)
      acd145(13)=abb145(106)
      acd145(14)=dotproduct(k3,ninjaA)
      acd145(15)=dotproduct(k3,ninjaE3)
      acd145(16)=dotproduct(k4,ninjaA)
      acd145(17)=dotproduct(k4,ninjaE3)
      acd145(18)=dotproduct(l5,ninjaE3)
      acd145(19)=abb145(129)
      acd145(20)=abb145(37)
      acd145(21)=abb145(102)
      acd145(22)=dotproduct(l6,ninjaE3)
      acd145(23)=dotproduct(k7,ninjaE3)
      acd145(24)=abb145(124)
      acd145(25)=abb145(34)
      acd145(26)=abb145(101)
      acd145(27)=dotproduct(ninjaA,ninjaE3)
      acd145(28)=abb145(57)
      acd145(29)=abb145(35)
      acd145(30)=abb145(53)
      acd145(31)=dotproduct(ninjaE3,spvak1k2)
      acd145(32)=abb145(28)
      acd145(33)=abb145(40)
      acd145(34)=dotproduct(ninjaE3,spvak1k3)
      acd145(35)=abb145(30)
      acd145(36)=dotproduct(ninjaE3,spvak4k2)
      acd145(37)=abb145(31)
      acd145(38)=dotproduct(ninjaE3,spvak4k3)
      acd145(39)=abb145(45)
      acd145(40)=abb145(56)
      acd145(41)=abb145(46)
      acd145(42)=abb145(54)
      acd145(43)=dotproduct(ninjaA,spvak1k2)
      acd145(44)=dotproduct(ninjaA,spvak1k3)
      acd145(45)=dotproduct(ninjaA,spvak4k2)
      acd145(46)=dotproduct(ninjaA,spvak4k3)
      acd145(47)=abb145(25)
      acd145(48)=abb145(29)
      acd145(49)=abb145(47)
      acd145(50)=dotproduct(ninjaE3,spvak1l5)
      acd145(51)=abb145(52)
      acd145(52)=dotproduct(ninjaE3,spvak1l6)
      acd145(53)=abb145(55)
      acd145(54)=dotproduct(ninjaE3,spval5k3)
      acd145(55)=abb145(81)
      acd145(56)=dotproduct(ninjaE3,spval6k3)
      acd145(57)=abb145(96)
      acd145(58)=dotproduct(ninjaE3,spvak7k3)
      acd145(59)=abb145(36)
      acd145(60)=abb145(66)
      acd145(61)=-acd145(7)+acd145(15)+acd145(17)
      acd145(62)=acd145(61)*acd145(6)
      acd145(63)=acd145(38)*acd145(42)
      acd145(64)=acd145(36)*acd145(41)
      acd145(65)=acd145(34)*acd145(40)
      acd145(66)=acd145(31)*acd145(33)
      acd145(62)=acd145(62)-acd145(66)-acd145(63)-acd145(64)-acd145(65)
      acd145(63)=-acd145(10)*acd145(62)
      acd145(61)=acd145(61)*acd145(4)
      acd145(64)=acd145(38)*acd145(39)
      acd145(65)=acd145(36)*acd145(37)
      acd145(66)=acd145(34)*acd145(35)
      acd145(67)=acd145(31)*acd145(32)
      acd145(61)=acd145(61)-acd145(67)-acd145(66)-acd145(64)-acd145(65)
      acd145(64)=-acd145(9)*acd145(61)
      acd145(65)=acd145(42)*acd145(46)
      acd145(66)=acd145(41)*acd145(45)
      acd145(67)=acd145(40)*acd145(44)
      acd145(68)=acd145(33)*acd145(43)
      acd145(69)=-acd145(16)+acd145(1)-acd145(14)
      acd145(70)=acd145(6)*acd145(69)
      acd145(65)=acd145(70)+acd145(68)+acd145(67)+acd145(66)+acd145(49)+acd145(&
      &65)
      acd145(65)=acd145(5)*acd145(65)
      acd145(66)=acd145(39)*acd145(46)
      acd145(67)=acd145(37)*acd145(45)
      acd145(68)=acd145(35)*acd145(44)
      acd145(70)=acd145(32)*acd145(43)
      acd145(69)=acd145(4)*acd145(69)
      acd145(66)=acd145(69)+acd145(70)+acd145(68)+acd145(67)+acd145(48)+acd145(&
      &66)
      acd145(66)=acd145(3)*acd145(66)
      acd145(67)=acd145(18)+acd145(22)
      acd145(68)=-acd145(19)*acd145(67)
      acd145(69)=acd145(56)*acd145(57)
      acd145(70)=acd145(54)*acd145(55)
      acd145(71)=acd145(52)*acd145(53)
      acd145(72)=acd145(50)*acd145(51)
      acd145(73)=2.0_ki*acd145(27)
      acd145(74)=acd145(28)*acd145(73)
      acd145(75)=acd145(23)*acd145(24)
      acd145(76)=acd145(31)*acd145(47)
      acd145(77)=acd145(7)*acd145(11)
      acd145(63)=acd145(66)+acd145(65)+acd145(77)+acd145(76)+acd145(75)+acd145(&
      &74)+acd145(72)+acd145(71)+acd145(69)+acd145(70)+acd145(68)+acd145(64)+ac&
      &d145(63)
      acd145(63)=acd145(2)*acd145(63)
      acd145(64)=-acd145(8)*acd145(62)
      acd145(65)=-acd145(21)*acd145(67)
      acd145(66)=acd145(58)*acd145(60)
      acd145(68)=acd145(30)*acd145(73)
      acd145(69)=acd145(23)*acd145(26)
      acd145(70)=acd145(7)*acd145(13)
      acd145(64)=acd145(64)+acd145(70)+acd145(69)+acd145(66)+acd145(68)+acd145(&
      &65)
      acd145(64)=acd145(5)*acd145(64)
      acd145(65)=-acd145(8)*acd145(61)
      acd145(66)=-acd145(20)*acd145(67)
      acd145(67)=acd145(58)*acd145(59)
      acd145(68)=acd145(29)*acd145(73)
      acd145(69)=acd145(23)*acd145(25)
      acd145(70)=acd145(7)*acd145(12)
      acd145(65)=acd145(65)+acd145(70)+acd145(69)+acd145(67)+acd145(68)+acd145(&
      &66)
      acd145(65)=acd145(3)*acd145(65)
      acd145(63)=acd145(63)+acd145(64)+acd145(65)
      acd145(62)=-acd145(5)*acd145(62)
      acd145(61)=-acd145(3)*acd145(61)
      acd145(61)=acd145(62)+acd145(61)
      acd145(61)=acd145(2)*acd145(61)
      brack(ninjaidxt3mu0)=acd145(61)
      brack(ninjaidxt2mu0)=acd145(63)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd145h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(130) :: acd145
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd145(1)=dotproduct(k2,ninjaA)
      acd145(2)=dotproduct(ninjaE3,spvak7k2)
      acd145(3)=dotproduct(ninjaE4,spval6k2)
      acd145(4)=abb145(117)
      acd145(5)=dotproduct(ninjaE4,spval5k2)
      acd145(6)=abb145(33)
      acd145(7)=dotproduct(ninjaE3,spval6k2)
      acd145(8)=dotproduct(ninjaE4,spvak7k2)
      acd145(9)=dotproduct(ninjaE3,spval5k2)
      acd145(10)=dotproduct(k2,ninjaE3)
      acd145(11)=dotproduct(ninjaA,spvak7k2)
      acd145(12)=dotproduct(ninjaA,spval6k2)
      acd145(13)=dotproduct(ninjaA,spval5k2)
      acd145(14)=abb145(20)
      acd145(15)=abb145(106)
      acd145(16)=abb145(39)
      acd145(17)=dotproduct(k2,ninjaE4)
      acd145(18)=dotproduct(k3,ninjaA)
      acd145(19)=dotproduct(k3,ninjaE3)
      acd145(20)=dotproduct(k3,ninjaE4)
      acd145(21)=dotproduct(k4,ninjaA)
      acd145(22)=dotproduct(k4,ninjaE3)
      acd145(23)=dotproduct(k4,ninjaE4)
      acd145(24)=dotproduct(l5,ninjaE3)
      acd145(25)=abb145(129)
      acd145(26)=abb145(102)
      acd145(27)=abb145(37)
      acd145(28)=dotproduct(l5,ninjaE4)
      acd145(29)=dotproduct(l6,ninjaE3)
      acd145(30)=dotproduct(l6,ninjaE4)
      acd145(31)=dotproduct(k7,ninjaE3)
      acd145(32)=abb145(124)
      acd145(33)=abb145(101)
      acd145(34)=abb145(34)
      acd145(35)=dotproduct(k7,ninjaE4)
      acd145(36)=dotproduct(ninjaA,ninjaE3)
      acd145(37)=abb145(57)
      acd145(38)=abb145(53)
      acd145(39)=abb145(35)
      acd145(40)=dotproduct(ninjaA,ninjaE4)
      acd145(41)=dotproduct(ninjaE3,spvak1k2)
      acd145(42)=abb145(40)
      acd145(43)=abb145(28)
      acd145(44)=dotproduct(ninjaE4,spvak1k2)
      acd145(45)=dotproduct(ninjaE4,spvak1k3)
      acd145(46)=abb145(56)
      acd145(47)=dotproduct(ninjaE4,spvak4k2)
      acd145(48)=abb145(46)
      acd145(49)=dotproduct(ninjaE4,spvak4k3)
      acd145(50)=abb145(54)
      acd145(51)=abb145(30)
      acd145(52)=abb145(31)
      acd145(53)=abb145(45)
      acd145(54)=dotproduct(ninjaE3,spvak1k3)
      acd145(55)=dotproduct(ninjaE3,spvak4k2)
      acd145(56)=dotproduct(ninjaE3,spvak4k3)
      acd145(57)=dotproduct(ninjaA,spvak1k2)
      acd145(58)=dotproduct(ninjaA,spvak1k3)
      acd145(59)=dotproduct(ninjaA,spvak4k2)
      acd145(60)=dotproduct(ninjaA,spvak4k3)
      acd145(61)=abb145(25)
      acd145(62)=abb145(47)
      acd145(63)=abb145(29)
      acd145(64)=dotproduct(ninjaE4,spval5k3)
      acd145(65)=abb145(81)
      acd145(66)=dotproduct(ninjaE4,spvak1l5)
      acd145(67)=abb145(52)
      acd145(68)=dotproduct(ninjaE4,spvak1l6)
      acd145(69)=abb145(55)
      acd145(70)=dotproduct(ninjaE4,spval6k3)
      acd145(71)=abb145(96)
      acd145(72)=dotproduct(ninjaE3,spvak7k3)
      acd145(73)=abb145(66)
      acd145(74)=abb145(36)
      acd145(75)=dotproduct(ninjaE4,spvak7k3)
      acd145(76)=dotproduct(ninjaE3,spval5k3)
      acd145(77)=dotproduct(ninjaE3,spvak1l5)
      acd145(78)=dotproduct(ninjaE3,spvak1l6)
      acd145(79)=dotproduct(ninjaE3,spval6k3)
      acd145(80)=abb145(22)
      acd145(81)=abb145(19)
      acd145(82)=abb145(77)
      acd145(83)=dotproduct(l5,ninjaA)
      acd145(84)=abb145(58)
      acd145(85)=dotproduct(l6,ninjaA)
      acd145(86)=dotproduct(k7,ninjaA)
      acd145(87)=abb145(59)
      acd145(88)=dotproduct(ninjaA,ninjaA)
      acd145(89)=dotproduct(ninjaA,spvak7k3)
      acd145(90)=dotproduct(ninjaA,spval5k3)
      acd145(91)=dotproduct(ninjaA,spvak1l5)
      acd145(92)=dotproduct(ninjaA,spvak1l6)
      acd145(93)=dotproduct(ninjaA,spval6k3)
      acd145(94)=abb145(21)
      acd145(95)=abb145(23)
      acd145(96)=abb145(49)
      acd145(97)=abb145(26)
      acd145(98)=abb145(27)
      acd145(99)=abb145(51)
      acd145(100)=abb145(38)
      acd145(101)=abb145(41)
      acd145(102)=abb145(67)
      acd145(103)=abb145(60)
      acd145(104)=acd145(53)*acd145(60)
      acd145(105)=acd145(52)*acd145(59)
      acd145(106)=acd145(51)*acd145(58)
      acd145(107)=acd145(43)*acd145(57)
      acd145(104)=acd145(104)+acd145(107)+acd145(63)+acd145(105)+acd145(106)
      acd145(105)=acd145(104)*acd145(5)
      acd145(106)=acd145(50)*acd145(60)
      acd145(107)=acd145(48)*acd145(59)
      acd145(108)=acd145(46)*acd145(58)
      acd145(109)=acd145(42)*acd145(57)
      acd145(106)=acd145(62)+acd145(107)+acd145(106)+acd145(108)+acd145(109)
      acd145(107)=acd145(106)*acd145(3)
      acd145(108)=acd145(53)*acd145(49)
      acd145(109)=acd145(52)*acd145(47)
      acd145(110)=acd145(51)*acd145(45)
      acd145(111)=acd145(43)*acd145(44)
      acd145(108)=acd145(109)+acd145(108)+acd145(110)+acd145(111)
      acd145(109)=acd145(108)*acd145(13)
      acd145(110)=acd145(50)*acd145(49)
      acd145(111)=acd145(48)*acd145(47)
      acd145(112)=acd145(46)*acd145(45)
      acd145(113)=acd145(42)*acd145(44)
      acd145(110)=acd145(113)+acd145(112)+acd145(110)+acd145(111)
      acd145(111)=acd145(110)*acd145(12)
      acd145(112)=acd145(18)+acd145(21)
      acd145(113)=acd145(1)-acd145(112)
      acd145(114)=acd145(113)*acd145(5)
      acd145(115)=-acd145(23)+acd145(17)-acd145(20)
      acd145(116)=acd145(115)*acd145(13)
      acd145(114)=acd145(114)+acd145(116)
      acd145(114)=acd145(114)*acd145(6)
      acd145(116)=acd145(113)*acd145(3)
      acd145(117)=acd145(115)*acd145(12)
      acd145(116)=acd145(116)+acd145(117)
      acd145(116)=acd145(116)*acd145(4)
      acd145(117)=acd145(71)*acd145(70)
      acd145(118)=acd145(69)*acd145(68)
      acd145(119)=acd145(67)*acd145(66)
      acd145(120)=acd145(65)*acd145(64)
      acd145(121)=acd145(32)*acd145(35)
      acd145(122)=acd145(44)*acd145(61)
      acd145(123)=acd145(17)*acd145(14)
      acd145(124)=2.0_ki*acd145(40)
      acd145(125)=acd145(124)*acd145(37)
      acd145(126)=acd145(28)+acd145(30)
      acd145(127)=acd145(126)*acd145(25)
      acd145(105)=acd145(117)+acd145(105)+acd145(107)+acd145(118)+acd145(119)+a&
      &cd145(114)+acd145(125)-acd145(127)+acd145(109)+acd145(111)+acd145(116)+a&
      &cd145(120)+acd145(121)+acd145(122)+acd145(123)
      acd145(105)=acd145(105)*acd145(2)
      acd145(107)=acd145(53)*acd145(56)
      acd145(109)=acd145(19)+acd145(22)
      acd145(111)=acd145(10)-acd145(109)
      acd145(114)=acd145(111)*acd145(6)
      acd145(116)=acd145(52)*acd145(55)
      acd145(117)=acd145(51)*acd145(54)
      acd145(118)=acd145(41)*acd145(43)
      acd145(107)=acd145(114)+acd145(118)+acd145(107)+acd145(116)+acd145(117)
      acd145(114)=-acd145(13)*acd145(107)
      acd145(111)=acd145(111)*acd145(4)
      acd145(116)=acd145(50)*acd145(56)
      acd145(117)=acd145(48)*acd145(55)
      acd145(118)=acd145(46)*acd145(54)
      acd145(119)=acd145(41)*acd145(42)
      acd145(111)=acd145(111)+acd145(119)+acd145(118)+acd145(116)+acd145(117)
      acd145(116)=-acd145(12)*acd145(111)
      acd145(117)=acd145(113)*acd145(6)
      acd145(104)=acd145(117)+acd145(104)
      acd145(117)=acd145(104)*acd145(9)
      acd145(113)=acd145(113)*acd145(4)
      acd145(106)=acd145(113)+acd145(106)
      acd145(113)=acd145(106)*acd145(7)
      acd145(118)=acd145(71)*acd145(79)
      acd145(119)=acd145(69)*acd145(78)
      acd145(120)=acd145(67)*acd145(77)
      acd145(121)=acd145(65)*acd145(76)
      acd145(122)=acd145(31)*acd145(32)
      acd145(123)=acd145(41)*acd145(61)
      acd145(125)=acd145(10)*acd145(14)
      acd145(127)=2.0_ki*acd145(36)
      acd145(128)=acd145(127)*acd145(37)
      acd145(129)=acd145(24)+acd145(29)
      acd145(130)=acd145(129)*acd145(25)
      acd145(113)=-acd145(113)-acd145(117)-acd145(128)-acd145(125)-acd145(123)-&
      &acd145(122)-acd145(121)-acd145(118)-acd145(119)-acd145(120)+acd145(130)+&
      &acd145(116)+acd145(114)
      acd145(114)=acd145(113)*acd145(8)
      acd145(116)=acd145(5)*acd145(107)
      acd145(117)=acd145(3)*acd145(111)
      acd145(118)=acd145(115)*acd145(6)
      acd145(108)=acd145(118)+acd145(108)
      acd145(108)=acd145(108)*acd145(9)
      acd145(115)=acd145(115)*acd145(4)
      acd145(110)=acd145(115)+acd145(110)
      acd145(110)=acd145(110)*acd145(7)
      acd145(108)=acd145(108)+acd145(110)+acd145(37)+acd145(117)+acd145(116)
      acd145(110)=acd145(108)*acd145(11)
      acd145(115)=acd145(73)*acd145(75)
      acd145(116)=acd145(33)*acd145(35)
      acd145(117)=acd145(17)*acd145(15)
      acd145(118)=acd145(124)*acd145(38)
      acd145(119)=acd145(126)*acd145(26)
      acd145(115)=acd145(115)+acd145(118)-acd145(119)+acd145(116)+acd145(117)
      acd145(115)=acd145(115)*acd145(7)
      acd145(116)=acd145(74)*acd145(75)
      acd145(117)=acd145(34)*acd145(35)
      acd145(118)=acd145(17)*acd145(16)
      acd145(119)=acd145(124)*acd145(39)
      acd145(120)=acd145(126)*acd145(27)
      acd145(116)=acd145(116)+acd145(119)-acd145(120)+acd145(117)+acd145(118)
      acd145(116)=acd145(116)*acd145(9)
      acd145(117)=acd145(72)*acd145(74)
      acd145(118)=acd145(31)*acd145(34)
      acd145(119)=acd145(10)*acd145(16)
      acd145(120)=acd145(127)*acd145(39)
      acd145(121)=acd145(129)*acd145(27)
      acd145(117)=-acd145(121)+acd145(120)+acd145(119)+acd145(117)+acd145(118)
      acd145(118)=acd145(117)*acd145(5)
      acd145(119)=acd145(72)*acd145(73)
      acd145(120)=acd145(31)*acd145(33)
      acd145(121)=acd145(10)*acd145(15)
      acd145(122)=acd145(127)*acd145(38)
      acd145(123)=acd145(129)*acd145(26)
      acd145(119)=-acd145(123)+acd145(122)+acd145(121)+acd145(119)+acd145(120)
      acd145(120)=acd145(119)*acd145(3)
      acd145(121)=acd145(13)*acd145(39)
      acd145(122)=acd145(12)*acd145(38)
      acd145(105)=acd145(105)+acd145(116)+acd145(115)+acd145(80)+acd145(122)+ac&
      &d145(110)+acd145(118)+acd145(120)+acd145(121)-acd145(114)
      acd145(110)=-acd145(11)*acd145(113)
      acd145(104)=acd145(104)*acd145(13)
      acd145(106)=acd145(106)*acd145(12)
      acd145(113)=acd145(71)*acd145(93)
      acd145(114)=acd145(69)*acd145(92)
      acd145(115)=acd145(67)*acd145(91)
      acd145(116)=acd145(65)*acd145(90)
      acd145(118)=acd145(32)*acd145(86)
      acd145(120)=acd145(37)*acd145(88)
      acd145(121)=acd145(57)*acd145(61)
      acd145(122)=acd145(1)*acd145(14)
      acd145(123)=acd145(83)+acd145(85)
      acd145(124)=acd145(123)*acd145(25)
      acd145(104)=acd145(104)+acd145(106)-acd145(124)+acd145(94)+acd145(118)+ac&
      &d145(120)+acd145(121)+acd145(122)+acd145(113)+acd145(114)+acd145(115)+ac&
      &d145(116)
      acd145(106)=acd145(2)*acd145(104)
      acd145(108)=acd145(108)*acd145(2)
      acd145(111)=acd145(111)*acd145(7)
      acd145(107)=acd145(107)*acd145(9)
      acd145(107)=acd145(111)+acd145(107)
      acd145(107)=acd145(107)*acd145(8)
      acd145(111)=acd145(9)*acd145(39)
      acd145(113)=acd145(7)*acd145(38)
      acd145(107)=acd145(107)+acd145(108)+acd145(111)+acd145(113)
      acd145(108)=ninjaP*acd145(107)
      acd145(111)=acd145(13)*acd145(117)
      acd145(113)=acd145(12)*acd145(119)
      acd145(114)=acd145(74)*acd145(89)
      acd145(115)=acd145(34)*acd145(86)
      acd145(116)=acd145(39)*acd145(88)
      acd145(117)=acd145(1)*acd145(16)
      acd145(118)=acd145(123)*acd145(27)
      acd145(114)=acd145(117)+acd145(114)-acd145(118)+acd145(98)+acd145(115)+ac&
      &d145(116)
      acd145(115)=acd145(9)*acd145(114)
      acd145(116)=acd145(73)*acd145(89)
      acd145(117)=acd145(33)*acd145(86)
      acd145(118)=acd145(38)*acd145(88)
      acd145(119)=acd145(1)*acd145(15)
      acd145(120)=acd145(123)*acd145(26)
      acd145(116)=acd145(119)+acd145(116)-acd145(120)+acd145(97)+acd145(117)+ac&
      &d145(118)
      acd145(117)=acd145(7)*acd145(116)
      acd145(118)=acd145(84)*acd145(129)
      acd145(109)=-acd145(82)*acd145(109)
      acd145(119)=acd145(79)*acd145(102)
      acd145(120)=acd145(76)*acd145(101)
      acd145(121)=acd145(72)*acd145(95)
      acd145(122)=acd145(80)*acd145(127)
      acd145(124)=acd145(31)*acd145(87)
      acd145(125)=acd145(56)*acd145(100)
      acd145(126)=acd145(55)*acd145(99)
      acd145(127)=acd145(41)*acd145(96)
      acd145(128)=acd145(10)*acd145(81)
      acd145(106)=acd145(108)+acd145(106)+acd145(110)+acd145(117)+acd145(115)+a&
      &cd145(113)+acd145(111)+acd145(128)+acd145(127)+acd145(126)+acd145(125)+a&
      &cd145(124)+acd145(122)+acd145(121)+acd145(119)+acd145(120)+acd145(109)+a&
      &cd145(118)
      acd145(108)=ninjaP*acd145(105)
      acd145(104)=acd145(11)*acd145(104)
      acd145(109)=acd145(13)*acd145(114)
      acd145(110)=acd145(12)*acd145(116)
      acd145(111)=acd145(84)*acd145(123)
      acd145(112)=-acd145(82)*acd145(112)
      acd145(113)=acd145(93)*acd145(102)
      acd145(114)=acd145(90)*acd145(101)
      acd145(115)=acd145(89)*acd145(95)
      acd145(116)=acd145(88)*acd145(80)
      acd145(117)=acd145(86)*acd145(87)
      acd145(118)=acd145(60)*acd145(100)
      acd145(119)=acd145(59)*acd145(99)
      acd145(120)=acd145(57)*acd145(96)
      acd145(121)=acd145(1)*acd145(81)
      acd145(104)=acd145(108)+acd145(104)+acd145(110)+acd145(109)+acd145(121)+a&
      &cd145(120)+acd145(119)+acd145(118)+acd145(117)+acd145(116)+acd145(115)+a&
      &cd145(114)+acd145(103)+acd145(113)+acd145(112)+acd145(111)
      brack(ninjaidxt1mu0)=acd145(106)
      brack(ninjaidxt1mu2)=acd145(107)
      brack(ninjaidxt0mu0)=acd145(104)
      brack(ninjaidxt0mu2)=acd145(105)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d145h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd145h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6-k5
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d145h4l131