module     p0_dbaru_epnebbbarg_d117h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d117h2l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd117h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd117
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd117(1)=dotproduct(k2,ninjaE3)
      acd117(2)=dotproduct(ninjaE3,spvak2k7)
      acd117(3)=abb117(30)
      acd117(4)=dotproduct(k3,ninjaE3)
      acd117(5)=dotproduct(k4,ninjaE3)
      acd117(6)=dotproduct(ninjaE3,spvak4k2)
      acd117(7)=abb117(24)
      acd117(8)=dotproduct(ninjaE3,spval5l6)
      acd117(9)=abb117(59)
      acd117(10)=dotproduct(ninjaE3,spvak4k3)
      acd117(11)=abb117(16)
      acd117(12)=dotproduct(ninjaE3,spvak1k2)
      acd117(13)=abb117(31)
      acd117(14)=dotproduct(ninjaE3,spvak1k3)
      acd117(15)=abb117(37)
      acd117(16)=abb117(15)
      acd117(17)=abb117(21)
      acd117(18)=abb117(45)
      acd117(19)=abb117(41)
      acd117(20)=acd117(4)+acd117(5)
      acd117(21)=acd117(1)-acd117(20)
      acd117(21)=acd117(3)*acd117(21)
      acd117(22)=acd117(14)*acd117(15)
      acd117(23)=acd117(12)*acd117(13)
      acd117(24)=acd117(10)*acd117(11)
      acd117(25)=acd117(6)*acd117(7)
      acd117(26)=-acd117(8)*acd117(9)
      acd117(21)=acd117(26)+acd117(25)+acd117(24)+acd117(22)+acd117(23)+acd117(&
      &21)
      acd117(21)=acd117(1)*acd117(21)
      acd117(22)=acd117(14)*acd117(19)
      acd117(23)=acd117(12)*acd117(18)
      acd117(24)=acd117(10)*acd117(17)
      acd117(25)=acd117(6)*acd117(16)
      acd117(20)=acd117(9)*acd117(20)
      acd117(20)=acd117(20)+acd117(25)+acd117(24)+acd117(22)+acd117(23)
      acd117(20)=acd117(8)*acd117(20)
      acd117(20)=acd117(20)+acd117(21)
      acd117(20)=acd117(2)*acd117(20)
      brack(ninjaidxt2mu0)=acd117(20)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd117h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(136) :: acd117
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd117(1)=dotproduct(k2,ninjaE3)
      acd117(2)=dotproduct(ninjaE4,spvak2k7)
      acd117(3)=abb117(30)
      acd117(4)=dotproduct(k2,ninjaE4)
      acd117(5)=dotproduct(ninjaE3,spvak2k7)
      acd117(6)=dotproduct(k3,ninjaE3)
      acd117(7)=dotproduct(k3,ninjaE4)
      acd117(8)=dotproduct(k4,ninjaE3)
      acd117(9)=dotproduct(k4,ninjaE4)
      acd117(10)=dotproduct(ninjaE3,spvak4k3)
      acd117(11)=abb117(16)
      acd117(12)=dotproduct(ninjaE4,spvak4k3)
      acd117(13)=dotproduct(ninjaE4,spval5l6)
      acd117(14)=abb117(59)
      acd117(15)=dotproduct(ninjaE4,spvak4k2)
      acd117(16)=abb117(24)
      acd117(17)=dotproduct(ninjaE4,spvak1k2)
      acd117(18)=abb117(31)
      acd117(19)=dotproduct(ninjaE4,spvak1k3)
      acd117(20)=abb117(37)
      acd117(21)=dotproduct(ninjaE3,spval5l6)
      acd117(22)=dotproduct(ninjaE3,spvak4k2)
      acd117(23)=dotproduct(ninjaE3,spvak1k2)
      acd117(24)=dotproduct(ninjaE3,spvak1k3)
      acd117(25)=abb117(107)
      acd117(26)=abb117(100)
      acd117(27)=abb117(21)
      acd117(28)=abb117(11)
      acd117(29)=abb117(15)
      acd117(30)=abb117(45)
      acd117(31)=abb117(41)
      acd117(32)=abb117(23)
      acd117(33)=abb117(29)
      acd117(34)=abb117(17)
      acd117(35)=dotproduct(ninjaE3,spvak1k7)
      acd117(36)=abb117(42)
      acd117(37)=dotproduct(k1,ninjaE3)
      acd117(38)=abb117(248)
      acd117(39)=abb117(242)
      acd117(40)=abb117(153)
      acd117(41)=abb117(53)
      acd117(42)=abb117(70)
      acd117(43)=abb117(61)
      acd117(44)=dotproduct(k2,ninjaA)
      acd117(45)=dotproduct(ninjaA,spvak2k7)
      acd117(46)=abb117(129)
      acd117(47)=dotproduct(k3,ninjaA)
      acd117(48)=abb117(135)
      acd117(49)=dotproduct(k4,ninjaA)
      acd117(50)=dotproduct(l5,ninjaE3)
      acd117(51)=abb117(121)
      acd117(52)=dotproduct(l6,ninjaE3)
      acd117(53)=dotproduct(k7,ninjaE3)
      acd117(54)=abb117(116)
      acd117(55)=dotproduct(ninjaA,ninjaE3)
      acd117(56)=dotproduct(ninjaA,spvak4k3)
      acd117(57)=dotproduct(ninjaA,spval5l6)
      acd117(58)=dotproduct(ninjaA,spvak4k2)
      acd117(59)=dotproduct(ninjaA,spvak1k2)
      acd117(60)=dotproduct(ninjaA,spvak1k3)
      acd117(61)=abb117(151)
      acd117(62)=abb117(12)
      acd117(63)=abb117(67)
      acd117(64)=abb117(25)
      acd117(65)=abb117(33)
      acd117(66)=abb117(212)
      acd117(67)=abb117(90)
      acd117(68)=abb117(54)
      acd117(69)=abb117(115)
      acd117(70)=abb117(109)
      acd117(71)=abb117(71)
      acd117(72)=abb117(50)
      acd117(73)=abb117(60)
      acd117(74)=abb117(74)
      acd117(75)=abb117(73)
      acd117(76)=abb117(39)
      acd117(77)=abb117(52)
      acd117(78)=abb117(46)
      acd117(79)=abb117(44)
      acd117(80)=abb117(13)
      acd117(81)=abb117(43)
      acd117(82)=abb117(14)
      acd117(83)=abb117(35)
      acd117(84)=abb117(27)
      acd117(85)=dotproduct(ninjaE3,spvak1l6)
      acd117(86)=abb117(28)
      acd117(87)=abb117(36)
      acd117(88)=abb117(38)
      acd117(89)=abb117(47)
      acd117(90)=dotproduct(k1,ninjaA)
      acd117(91)=abb117(81)
      acd117(92)=dotproduct(l5,ninjaA)
      acd117(93)=dotproduct(l6,ninjaA)
      acd117(94)=dotproduct(k7,ninjaA)
      acd117(95)=dotproduct(ninjaA,ninjaA)
      acd117(96)=dotproduct(ninjaA,spvak1k7)
      acd117(97)=abb117(56)
      acd117(98)=abb117(19)
      acd117(99)=abb117(26)
      acd117(100)=abb117(172)
      acd117(101)=abb117(34)
      acd117(102)=dotproduct(ninjaA,spvak1l6)
      acd117(103)=abb117(32)
      acd117(104)=abb117(49)
      acd117(105)=abb117(20)
      acd117(106)=abb117(40)
      acd117(107)=abb117(18)
      acd117(108)=acd117(14)*acd117(13)
      acd117(109)=acd117(7)+acd117(9)
      acd117(110)=-acd117(109)+2.0_ki*acd117(4)
      acd117(110)=acd117(110)*acd117(3)
      acd117(111)=acd117(20)*acd117(19)
      acd117(112)=acd117(18)*acd117(17)
      acd117(113)=acd117(16)*acd117(15)
      acd117(114)=acd117(11)*acd117(12)
      acd117(108)=-acd117(108)+acd117(110)+acd117(111)+acd117(112)+acd117(113)+&
      &acd117(114)
      acd117(108)=acd117(108)*acd117(1)
      acd117(109)=acd117(109)-acd117(4)
      acd117(109)=acd117(109)*acd117(14)
      acd117(110)=acd117(31)*acd117(19)
      acd117(111)=acd117(30)*acd117(17)
      acd117(112)=acd117(29)*acd117(15)
      acd117(113)=acd117(27)*acd117(12)
      acd117(109)=acd117(109)+acd117(110)+acd117(111)+acd117(112)+acd117(113)
      acd117(109)=acd117(109)*acd117(21)
      acd117(110)=acd117(24)*acd117(20)
      acd117(111)=acd117(23)*acd117(18)
      acd117(112)=acd117(8)*acd117(3)
      acd117(113)=acd117(6)*acd117(3)
      acd117(110)=-acd117(112)-acd117(113)+acd117(110)+acd117(111)
      acd117(111)=acd117(110)*acd117(4)
      acd117(112)=acd117(24)*acd117(31)
      acd117(113)=acd117(23)*acd117(30)
      acd117(112)=acd117(112)+acd117(113)
      acd117(113)=acd117(6)+acd117(8)
      acd117(114)=acd117(113)*acd117(14)
      acd117(115)=acd117(114)+acd117(112)
      acd117(116)=acd117(13)*acd117(115)
      acd117(117)=acd117(13)*acd117(29)
      acd117(118)=acd117(4)*acd117(16)
      acd117(117)=acd117(117)+acd117(118)
      acd117(117)=acd117(117)*acd117(22)
      acd117(118)=acd117(13)*acd117(27)
      acd117(119)=acd117(4)*acd117(11)
      acd117(118)=acd117(118)+acd117(119)
      acd117(118)=acd117(118)*acd117(10)
      acd117(108)=acd117(108)+acd117(109)+acd117(117)+acd117(32)+acd117(118)+ac&
      &d117(111)+acd117(116)
      acd117(109)=acd117(5)*acd117(108)
      acd117(111)=acd117(22)*acd117(34)
      acd117(116)=acd117(10)*acd117(28)
      acd117(117)=acd117(113)*acd117(26)
      acd117(118)=acd117(35)*acd117(36)
      acd117(111)=acd117(111)+acd117(116)+acd117(117)+acd117(118)
      acd117(116)=acd117(22)*acd117(29)
      acd117(117)=acd117(10)*acd117(27)
      acd117(112)=acd117(114)+acd117(112)+acd117(116)+acd117(117)
      acd117(114)=acd117(2)*acd117(112)
      acd117(114)=acd117(33)+acd117(114)
      acd117(116)=acd117(21)*acd117(114)
      acd117(117)=acd117(22)*acd117(16)
      acd117(119)=acd117(10)*acd117(11)
      acd117(110)=acd117(117)+acd117(119)+acd117(110)
      acd117(117)=acd117(21)*acd117(14)
      acd117(117)=acd117(117)-acd117(110)
      acd117(117)=acd117(117)*acd117(2)
      acd117(119)=acd117(1)*acd117(3)*acd117(2)
      acd117(117)=acd117(117)-acd117(119)-acd117(25)
      acd117(119)=-acd117(1)*acd117(117)
      acd117(109)=acd117(109)+acd117(119)+acd117(116)+acd117(111)
      acd117(116)=acd117(110)*acd117(44)
      acd117(115)=-acd117(57)*acd117(115)
      acd117(119)=acd117(57)*acd117(29)
      acd117(119)=acd117(119)+acd117(82)
      acd117(119)=acd117(119)*acd117(22)
      acd117(120)=acd117(57)*acd117(27)
      acd117(120)=acd117(120)+acd117(79)
      acd117(120)=acd117(120)*acd117(10)
      acd117(121)=acd117(86)*acd117(85)
      acd117(122)=acd117(35)*acd117(83)
      acd117(123)=acd117(37)*acd117(41)
      acd117(124)=acd117(24)*acd117(87)
      acd117(125)=acd117(23)*acd117(84)
      acd117(126)=acd117(53)*acd117(75)
      acd117(127)=acd117(113)*acd117(68)
      acd117(128)=acd117(50)+acd117(52)
      acd117(129)=acd117(128)*acd117(71)
      acd117(130)=2.0_ki*acd117(55)
      acd117(131)=acd117(130)*acd117(32)
      acd117(115)=-acd117(120)-acd117(122)-acd117(123)-acd117(124)-acd117(125)-&
      &acd117(121)-acd117(131)-acd117(119)-acd117(126)-acd117(127)+acd117(129)-&
      &acd117(116)+acd117(115)
      acd117(116)=acd117(14)*acd117(57)
      acd117(119)=acd117(20)*acd117(60)
      acd117(120)=acd117(18)*acd117(59)
      acd117(121)=acd117(58)*acd117(16)
      acd117(122)=acd117(56)*acd117(11)
      acd117(123)=acd117(47)+acd117(49)
      acd117(124)=acd117(123)*acd117(3)
      acd117(119)=acd117(62)-acd117(116)+acd117(121)+acd117(120)+acd117(119)+ac&
      &d117(122)-acd117(124)
      acd117(120)=acd117(44)*acd117(3)
      acd117(121)=acd117(119)+2.0_ki*acd117(120)
      acd117(122)=acd117(1)*acd117(121)
      acd117(124)=acd117(31)*acd117(60)
      acd117(125)=acd117(30)*acd117(59)
      acd117(126)=acd117(58)*acd117(29)
      acd117(127)=acd117(56)*acd117(27)
      acd117(124)=acd117(81)+acd117(127)+acd117(126)+acd117(124)+acd117(125)
      acd117(125)=-acd117(44)+acd117(123)
      acd117(125)=acd117(14)*acd117(125)
      acd117(125)=acd117(124)+acd117(125)
      acd117(126)=acd117(21)*acd117(125)
      acd117(122)=acd117(122)+acd117(126)-acd117(115)
      acd117(122)=acd117(5)*acd117(122)
      acd117(126)=acd117(35)*acd117(65)
      acd117(127)=acd117(37)*acd117(38)
      acd117(129)=acd117(53)*acd117(54)
      acd117(131)=acd117(22)*acd117(64)
      acd117(132)=acd117(10)*acd117(61)
      acd117(133)=acd117(113)*acd117(48)
      acd117(134)=acd117(128)*acd117(51)
      acd117(135)=acd117(130)*acd117(25)
      acd117(126)=acd117(132)-acd117(133)+acd117(134)+acd117(135)+acd117(126)+a&
      &cd117(127)+acd117(129)+acd117(131)
      acd117(110)=acd117(45)*acd117(110)
      acd117(127)=-acd117(45)*acd117(14)
      acd117(127)=acd117(63)+acd117(127)
      acd117(127)=acd117(21)*acd117(127)
      acd117(129)=acd117(45)*acd117(3)
      acd117(129)=acd117(46)+acd117(129)
      acd117(129)=acd117(1)*acd117(129)
      acd117(110)=acd117(129)+acd117(127)+acd117(110)+acd117(126)
      acd117(110)=acd117(1)*acd117(110)
      acd117(127)=acd117(35)*acd117(89)
      acd117(129)=acd117(37)*acd117(42)
      acd117(131)=acd117(53)*acd117(76)
      acd117(132)=acd117(128)*acd117(72)
      acd117(133)=acd117(130)*acd117(33)
      acd117(127)=acd117(133)+acd117(127)+acd117(129)+acd117(131)-acd117(132)
      acd117(112)=acd117(45)*acd117(112)
      acd117(129)=acd117(69)*acd117(113)
      acd117(131)=acd117(22)*acd117(88)
      acd117(132)=acd117(10)*acd117(80)
      acd117(112)=acd117(112)+acd117(132)+acd117(131)+acd117(129)+acd117(127)
      acd117(112)=acd117(21)*acd117(112)
      acd117(129)=acd117(37)*acd117(39)
      acd117(131)=acd117(53)*acd117(67)
      acd117(132)=acd117(128)*acd117(66)
      acd117(133)=acd117(130)*acd117(26)
      acd117(129)=-acd117(129)-acd117(131)+acd117(132)-acd117(133)
      acd117(129)=-acd117(129)*acd117(113)
      acd117(131)=acd117(73)*acd117(128)
      acd117(132)=acd117(37)*acd117(43)
      acd117(133)=acd117(34)*acd117(130)
      acd117(134)=acd117(53)*acd117(77)
      acd117(131)=acd117(134)+acd117(133)+acd117(132)+acd117(131)
      acd117(131)=acd117(22)*acd117(131)
      acd117(132)=acd117(70)*acd117(128)
      acd117(133)=acd117(37)*acd117(40)
      acd117(134)=acd117(28)*acd117(130)
      acd117(135)=acd117(53)*acd117(74)
      acd117(132)=acd117(135)+acd117(134)+acd117(133)+acd117(132)
      acd117(132)=acd117(10)*acd117(132)
      acd117(118)=acd117(130)*acd117(118)
      acd117(133)=acd117(53)*acd117(35)*acd117(78)
      acd117(110)=acd117(122)+acd117(110)+acd117(112)+acd117(132)+acd117(131)+a&
      &cd117(118)+acd117(133)+acd117(129)
      acd117(108)=ninjaP*acd117(108)
      acd117(112)=acd117(120)+acd117(119)
      acd117(112)=acd117(44)*acd117(112)
      acd117(118)=acd117(57)*acd117(124)
      acd117(116)=acd117(116)+acd117(68)
      acd117(116)=acd117(123)*acd117(116)
      acd117(119)=acd117(92)+acd117(93)
      acd117(120)=-acd117(71)*acd117(119)
      acd117(122)=acd117(86)*acd117(102)
      acd117(124)=acd117(96)*acd117(83)
      acd117(129)=acd117(90)*acd117(41)
      acd117(131)=acd117(60)*acd117(87)
      acd117(132)=acd117(59)*acd117(84)
      acd117(133)=acd117(95)*acd117(32)
      acd117(134)=acd117(94)*acd117(75)
      acd117(135)=acd117(58)*acd117(82)
      acd117(136)=acd117(56)*acd117(79)
      acd117(108)=acd117(112)+acd117(118)+acd117(136)+acd117(135)+acd117(134)+a&
      &cd117(133)+acd117(132)+acd117(131)+acd117(129)+acd117(124)+acd117(104)+a&
      &cd117(122)+acd117(108)+acd117(120)+acd117(116)
      acd117(108)=acd117(5)*acd117(108)
      acd117(112)=-acd117(45)*acd117(115)
      acd117(115)=acd117(45)*acd117(121)
      acd117(116)=-ninjaP*acd117(117)
      acd117(117)=acd117(51)*acd117(119)
      acd117(118)=-acd117(48)*acd117(123)
      acd117(120)=acd117(96)*acd117(65)
      acd117(121)=acd117(90)*acd117(38)
      acd117(122)=acd117(95)*acd117(25)
      acd117(124)=acd117(94)*acd117(54)
      acd117(129)=acd117(58)*acd117(64)
      acd117(131)=acd117(56)*acd117(61)
      acd117(132)=acd117(57)*acd117(63)
      acd117(133)=acd117(44)*acd117(46)
      acd117(115)=acd117(115)+2.0_ki*acd117(133)+acd117(132)+acd117(131)+acd117&
      &(129)+acd117(124)+acd117(122)+acd117(121)+acd117(97)+acd117(120)+acd117(&
      &116)+acd117(118)+acd117(117)
      acd117(115)=acd117(1)*acd117(115)
      acd117(114)=ninjaP*acd117(114)
      acd117(116)=acd117(45)*acd117(125)
      acd117(117)=-acd117(72)*acd117(119)
      acd117(118)=acd117(69)*acd117(123)
      acd117(120)=acd117(96)*acd117(89)
      acd117(121)=acd117(90)*acd117(42)
      acd117(122)=acd117(95)*acd117(33)
      acd117(124)=acd117(94)*acd117(76)
      acd117(125)=acd117(58)*acd117(88)
      acd117(129)=acd117(56)*acd117(80)
      acd117(131)=acd117(44)*acd117(63)
      acd117(114)=acd117(116)+acd117(114)+acd117(131)+acd117(129)+acd117(125)+a&
      &cd117(124)+acd117(122)+acd117(121)+acd117(105)+acd117(120)+acd117(118)+a&
      &cd117(117)
      acd117(114)=acd117(21)*acd117(114)
      acd117(116)=acd117(44)*acd117(126)
      acd117(117)=acd117(90)*acd117(39)
      acd117(118)=acd117(94)*acd117(67)
      acd117(120)=acd117(26)*acd117(95)
      acd117(121)=acd117(57)*acd117(69)
      acd117(122)=acd117(119)*acd117(66)
      acd117(117)=-acd117(117)-acd117(118)-acd117(120)-acd117(121)+acd117(122)+&
      &acd117(98)
      acd117(113)=-acd117(117)*acd117(113)
      acd117(117)=acd117(57)*acd117(127)
      acd117(118)=acd117(73)*acd117(119)
      acd117(120)=acd117(90)*acd117(43)
      acd117(121)=acd117(95)*acd117(34)
      acd117(122)=acd117(94)*acd117(77)
      acd117(124)=acd117(57)*acd117(88)
      acd117(118)=acd117(124)+acd117(122)+acd117(121)+acd117(120)+acd117(106)+a&
      &cd117(118)
      acd117(118)=acd117(22)*acd117(118)
      acd117(119)=acd117(70)*acd117(119)
      acd117(120)=acd117(90)*acd117(40)
      acd117(121)=acd117(95)*acd117(28)
      acd117(122)=acd117(94)*acd117(74)
      acd117(124)=acd117(57)*acd117(80)
      acd117(119)=acd117(124)+acd117(122)+acd117(121)+acd117(120)+acd117(103)+a&
      &cd117(119)
      acd117(119)=acd117(10)*acd117(119)
      acd117(120)=acd117(26)*acd117(123)
      acd117(121)=acd117(36)*acd117(96)
      acd117(122)=acd117(58)*acd117(34)
      acd117(124)=acd117(56)*acd117(28)
      acd117(120)=acd117(124)+acd117(122)+acd117(101)+acd117(121)+acd117(120)
      acd117(120)=acd117(120)*acd117(130)
      acd117(121)=acd117(67)*acd117(123)
      acd117(122)=acd117(96)*acd117(78)
      acd117(124)=acd117(58)*acd117(77)
      acd117(125)=acd117(56)*acd117(74)
      acd117(121)=acd117(125)+acd117(124)+acd117(100)+acd117(122)+acd117(121)
      acd117(121)=acd117(53)*acd117(121)
      acd117(111)=ninjaP*acd117(111)
      acd117(122)=acd117(58)*acd117(73)
      acd117(124)=acd117(56)*acd117(70)
      acd117(125)=acd117(123)*acd117(66)
      acd117(122)=-acd117(122)-acd117(124)+acd117(125)-acd117(99)
      acd117(122)=-acd117(122)*acd117(128)
      acd117(123)=acd117(39)*acd117(123)
      acd117(124)=acd117(58)*acd117(43)
      acd117(125)=acd117(56)*acd117(40)
      acd117(123)=acd117(125)+acd117(91)+acd117(124)+acd117(123)
      acd117(123)=acd117(37)*acd117(123)
      acd117(124)=acd117(95)*acd117(36)
      acd117(125)=acd117(94)*acd117(78)
      acd117(124)=acd117(125)+acd117(107)+acd117(124)
      acd117(124)=acd117(35)*acd117(124)
      acd117(108)=acd117(108)+acd117(115)+acd117(114)+acd117(112)+acd117(111)+a&
      &cd117(116)+acd117(119)+acd117(118)+acd117(117)+acd117(121)+acd117(120)+a&
      &cd117(123)+acd117(124)+acd117(122)+acd117(113)
      brack(ninjaidxt1mu0)=acd117(110)
      brack(ninjaidxt0mu0)=acd117(108)
      brack(ninjaidxt0mu2)=acd117(109)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d117h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd117h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
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
end module     p0_dbaru_epnebbbarg_d117h2l131
