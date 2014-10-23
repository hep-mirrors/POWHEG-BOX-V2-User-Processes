module     p0_dbaru_epnebbbarg_d84h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d84h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd84h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd84
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd84(1)=dotproduct(ninjaE3,spvak1k2)
      acd84(2)=dotproduct(ninjaE3,spvak2l6)
      acd84(3)=dotproduct(ninjaE3,spvak2k7)
      acd84(4)=dotproduct(ninjaE3,spvak4k3)
      acd84(5)=abb84(8)
      acd84(6)=dotproduct(ninjaE3,spvak2l5)
      acd84(7)=abb84(16)
      acd84(8)=acd84(5)*acd84(2)
      acd84(9)=acd84(7)*acd84(6)
      acd84(8)=acd84(8)+acd84(9)
      acd84(8)=acd84(1)*acd84(8)*acd84(4)*acd84(3)
      brack(ninjaidxt2mu0)=acd84(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd84h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(146) :: acd84
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd84(1)=dotproduct(k2,ninjaE3)
      acd84(2)=dotproduct(ninjaE3,spvak2k7)
      acd84(3)=abb84(36)
      acd84(4)=dotproduct(ninjaE3,spvak4k3)
      acd84(5)=abb84(90)
      acd84(6)=dotproduct(ninjaE3,spvak2l6)
      acd84(7)=abb84(11)
      acd84(8)=dotproduct(ninjaE3,spvak2l5)
      acd84(9)=abb84(19)
      acd84(10)=dotproduct(ninjaE3,spvak1k2)
      acd84(11)=dotproduct(ninjaE4,spvak2l6)
      acd84(12)=abb84(8)
      acd84(13)=dotproduct(ninjaE4,spvak2l5)
      acd84(14)=abb84(16)
      acd84(15)=dotproduct(ninjaE4,spvak4k3)
      acd84(16)=dotproduct(ninjaE4,spvak2k7)
      acd84(17)=dotproduct(ninjaE4,spvak1k2)
      acd84(18)=abb84(45)
      acd84(19)=abb84(66)
      acd84(20)=abb84(55)
      acd84(21)=dotproduct(ninjaE3,spvak1k3)
      acd84(22)=abb84(88)
      acd84(23)=dotproduct(ninjaE3,spvak4k2)
      acd84(24)=abb84(53)
      acd84(25)=abb84(86)
      acd84(26)=abb84(77)
      acd84(27)=dotproduct(k1,ninjaE3)
      acd84(28)=abb84(56)
      acd84(29)=abb84(82)
      acd84(30)=abb84(89)
      acd84(31)=abb84(40)
      acd84(32)=abb84(87)
      acd84(33)=abb84(61)
      acd84(34)=abb84(32)
      acd84(35)=abb84(54)
      acd84(36)=abb84(51)
      acd84(37)=dotproduct(k3,ninjaE3)
      acd84(38)=dotproduct(k4,ninjaE3)
      acd84(39)=dotproduct(k7,ninjaE3)
      acd84(40)=dotproduct(ninjaA,ninjaE3)
      acd84(41)=abb84(47)
      acd84(42)=abb84(85)
      acd84(43)=abb84(73)
      acd84(44)=dotproduct(ninjaA,spvak1k2)
      acd84(45)=dotproduct(ninjaA,spvak2k7)
      acd84(46)=dotproduct(ninjaA,spvak4k3)
      acd84(47)=dotproduct(ninjaA,spvak2l6)
      acd84(48)=dotproduct(ninjaA,spvak2l5)
      acd84(49)=abb84(7)
      acd84(50)=abb84(9)
      acd84(51)=abb84(17)
      acd84(52)=abb84(37)
      acd84(53)=abb84(41)
      acd84(54)=abb84(25)
      acd84(55)=dotproduct(ninjaE3,spvak7k2)
      acd84(56)=abb84(59)
      acd84(57)=dotproduct(ninjaE3,spvak3k2)
      acd84(58)=dotproduct(ninjaE3,spvak1l6)
      acd84(59)=abb84(83)
      acd84(60)=dotproduct(ninjaE3,spvak1l5)
      acd84(61)=abb84(84)
      acd84(62)=dotproduct(ninjaE3,spvak1k4)
      acd84(63)=abb84(64)
      acd84(64)=abb84(34)
      acd84(65)=dotproduct(k1,ninjaA)
      acd84(66)=dotproduct(k2,ninjaA)
      acd84(67)=abb84(50)
      acd84(68)=abb84(57)
      acd84(69)=abb84(29)
      acd84(70)=dotproduct(ninjaA,spvak1k3)
      acd84(71)=dotproduct(ninjaA,spvak4k2)
      acd84(72)=abb84(33)
      acd84(73)=abb84(75)
      acd84(74)=abb84(72)
      acd84(75)=abb84(46)
      acd84(76)=abb84(69)
      acd84(77)=dotproduct(k3,ninjaA)
      acd84(78)=abb84(71)
      acd84(79)=dotproduct(k4,ninjaA)
      acd84(80)=dotproduct(k7,ninjaA)
      acd84(81)=dotproduct(ninjaA,ninjaA)
      acd84(82)=abb84(21)
      acd84(83)=abb84(22)
      acd84(84)=abb84(42)
      acd84(85)=abb84(74)
      acd84(86)=abb84(63)
      acd84(87)=abb84(48)
      acd84(88)=abb84(24)
      acd84(89)=abb84(92)
      acd84(90)=abb84(79)
      acd84(91)=abb84(91)
      acd84(92)=abb84(38)
      acd84(93)=abb84(27)
      acd84(94)=abb84(81)
      acd84(95)=abb84(10)
      acd84(96)=abb84(18)
      acd84(97)=abb84(43)
      acd84(98)=dotproduct(ninjaA,spvak7k2)
      acd84(99)=dotproduct(ninjaA,spvak3k2)
      acd84(100)=dotproduct(ninjaA,spvak1l6)
      acd84(101)=dotproduct(ninjaA,spvak1l5)
      acd84(102)=dotproduct(ninjaA,spvak1k4)
      acd84(103)=abb84(15)
      acd84(104)=abb84(30)
      acd84(105)=abb84(35)
      acd84(106)=abb84(39)
      acd84(107)=abb84(31)
      acd84(108)=abb84(26)
      acd84(109)=abb84(52)
      acd84(110)=abb84(78)
      acd84(111)=abb84(70)
      acd84(112)=abb84(49)
      acd84(113)=abb84(76)
      acd84(114)=abb84(68)
      acd84(115)=acd84(8)*acd84(14)
      acd84(116)=acd84(6)*acd84(12)
      acd84(115)=acd84(115)+acd84(116)
      acd84(115)=acd84(115)*acd84(17)
      acd84(115)=acd84(115)+acd84(18)
      acd84(116)=acd84(14)*acd84(13)
      acd84(117)=acd84(12)*acd84(11)
      acd84(116)=acd84(116)+acd84(117)
      acd84(117)=acd84(10)*acd84(116)
      acd84(117)=acd84(117)+acd84(115)
      acd84(117)=acd84(4)*acd84(117)
      acd84(118)=acd84(21)*acd84(22)
      acd84(119)=acd84(23)*acd84(24)
      acd84(118)=acd84(118)+acd84(119)
      acd84(120)=acd84(10)*acd84(14)
      acd84(121)=acd84(15)*acd84(120)
      acd84(121)=acd84(20)+acd84(121)
      acd84(121)=acd84(8)*acd84(121)
      acd84(122)=acd84(10)*acd84(12)
      acd84(123)=acd84(15)*acd84(122)
      acd84(123)=acd84(19)+acd84(123)
      acd84(123)=acd84(6)*acd84(123)
      acd84(124)=acd84(1)*acd84(3)
      acd84(117)=acd84(117)+acd84(124)+acd84(123)+acd84(121)-acd84(118)
      acd84(117)=acd84(2)*acd84(117)
      acd84(121)=acd84(16)*acd84(120)
      acd84(121)=acd84(26)+acd84(121)
      acd84(121)=acd84(8)*acd84(121)
      acd84(123)=acd84(16)*acd84(122)
      acd84(123)=acd84(25)+acd84(123)
      acd84(123)=acd84(6)*acd84(123)
      acd84(124)=-acd84(1)*acd84(5)
      acd84(121)=acd84(124)+acd84(121)+acd84(123)
      acd84(121)=acd84(4)*acd84(121)
      acd84(123)=acd84(8)*acd84(9)
      acd84(124)=acd84(6)*acd84(7)
      acd84(123)=acd84(123)+acd84(124)
      acd84(123)=acd84(1)*acd84(123)
      acd84(117)=acd84(117)+acd84(123)+acd84(121)
      acd84(121)=acd84(61)*acd84(60)
      acd84(123)=acd84(59)*acd84(58)
      acd84(124)=acd84(24)*acd84(57)
      acd84(125)=acd84(22)*acd84(62)
      acd84(126)=acd84(55)*acd84(5)
      acd84(127)=acd84(23)*acd84(56)
      acd84(128)=acd84(39)*acd84(31)
      acd84(129)=acd84(21)*acd84(54)
      acd84(121)=-acd84(123)-acd84(121)+acd84(126)-acd84(127)+acd84(124)+acd84(&
      &125)+acd84(128)-acd84(129)
      acd84(123)=acd84(14)*acd84(48)
      acd84(124)=acd84(12)*acd84(47)
      acd84(123)=acd84(49)+acd84(123)+acd84(124)
      acd84(124)=acd84(123)*acd84(10)
      acd84(125)=acd84(27)*acd84(31)
      acd84(124)=acd84(121)+acd84(125)-acd84(124)
      acd84(125)=2.0_ki*acd84(40)
      acd84(126)=acd84(18)*acd84(125)
      acd84(127)=acd84(14)*acd84(44)
      acd84(127)=acd84(127)+acd84(53)
      acd84(128)=acd84(8)*acd84(127)
      acd84(129)=acd84(12)*acd84(44)
      acd84(129)=acd84(129)+acd84(52)
      acd84(130)=acd84(6)*acd84(129)
      acd84(131)=acd84(1)*acd84(41)
      acd84(126)=acd84(131)+acd84(130)+acd84(128)+acd84(126)-acd84(124)
      acd84(126)=acd84(4)*acd84(126)
      acd84(128)=acd84(46)*acd84(14)
      acd84(128)=acd84(128)+acd84(51)
      acd84(128)=acd84(128)*acd84(10)
      acd84(130)=acd84(21)*acd84(64)
      acd84(131)=acd84(27)*acd84(33)
      acd84(128)=acd84(128)+acd84(130)+acd84(131)
      acd84(130)=acd84(20)*acd84(125)
      acd84(130)=acd84(130)+acd84(128)
      acd84(130)=acd84(8)*acd84(130)
      acd84(131)=acd84(46)*acd84(12)
      acd84(131)=acd84(131)+acd84(50)
      acd84(131)=acd84(131)*acd84(10)
      acd84(132)=acd84(21)*acd84(63)
      acd84(133)=acd84(27)*acd84(32)
      acd84(131)=acd84(131)+acd84(132)+acd84(133)
      acd84(132)=acd84(19)*acd84(125)
      acd84(132)=acd84(132)+acd84(131)
      acd84(132)=acd84(6)*acd84(132)
      acd84(133)=acd84(23)*acd84(35)
      acd84(134)=acd84(21)*acd84(34)
      acd84(133)=acd84(133)+acd84(134)
      acd84(134)=acd84(37)+acd84(38)
      acd84(135)=acd84(134)-acd84(27)
      acd84(133)=acd84(133)*acd84(135)
      acd84(136)=-acd84(118)*acd84(125)
      acd84(137)=-acd84(135)*acd84(28)
      acd84(138)=acd84(3)*acd84(125)
      acd84(138)=acd84(138)+acd84(137)
      acd84(138)=acd84(1)*acd84(138)
      acd84(126)=acd84(126)+acd84(138)+acd84(132)+acd84(130)+acd84(136)+acd84(1&
      &33)
      acd84(126)=acd84(2)*acd84(126)
      acd84(130)=acd84(1)-acd84(39)
      acd84(130)=acd84(36)*acd84(130)
      acd84(132)=-acd84(5)*acd84(125)
      acd84(136)=-acd84(8)*acd84(43)
      acd84(138)=-acd84(6)*acd84(42)
      acd84(130)=acd84(138)+acd84(136)+acd84(132)+acd84(130)
      acd84(130)=acd84(1)*acd84(130)
      acd84(132)=-acd84(39)*acd84(43)
      acd84(120)=acd84(45)*acd84(120)
      acd84(136)=acd84(26)*acd84(125)
      acd84(120)=acd84(136)+acd84(132)+acd84(120)
      acd84(120)=acd84(8)*acd84(120)
      acd84(132)=-acd84(39)*acd84(42)
      acd84(122)=acd84(45)*acd84(122)
      acd84(136)=acd84(25)*acd84(125)
      acd84(122)=acd84(136)+acd84(132)+acd84(122)
      acd84(122)=acd84(6)*acd84(122)
      acd84(120)=acd84(130)+acd84(120)+acd84(122)
      acd84(120)=acd84(4)*acd84(120)
      acd84(122)=acd84(27)*acd84(30)
      acd84(130)=acd84(9)*acd84(125)
      acd84(122)=acd84(122)+acd84(130)
      acd84(122)=acd84(8)*acd84(122)
      acd84(130)=acd84(27)*acd84(29)
      acd84(132)=acd84(7)*acd84(125)
      acd84(130)=acd84(130)+acd84(132)
      acd84(130)=acd84(6)*acd84(130)
      acd84(122)=acd84(122)+acd84(130)
      acd84(122)=acd84(1)*acd84(122)
      acd84(120)=acd84(126)+acd84(122)+acd84(120)
      acd84(122)=acd84(44)*acd84(123)
      acd84(115)=ninjaP*acd84(115)
      acd84(126)=acd84(10)*ninjaP
      acd84(116)=acd84(116)*acd84(126)
      acd84(130)=acd84(61)*acd84(101)
      acd84(132)=acd84(59)*acd84(100)
      acd84(136)=acd84(71)*acd84(56)
      acd84(138)=acd84(70)*acd84(54)
      acd84(139)=-acd84(80)-acd84(65)
      acd84(139)=acd84(31)*acd84(139)
      acd84(140)=-acd84(24)*acd84(99)
      acd84(141)=-acd84(22)*acd84(102)
      acd84(142)=-acd84(5)*acd84(98)
      acd84(143)=acd84(81)*acd84(18)
      acd84(144)=acd84(66)*acd84(41)
      acd84(145)=acd84(48)*acd84(53)
      acd84(146)=acd84(47)*acd84(52)
      acd84(115)=acd84(116)+acd84(146)+acd84(145)+acd84(144)+acd84(143)+acd84(1&
      &42)+acd84(141)+acd84(140)+acd84(139)+acd84(138)+acd84(136)+acd84(132)+ac&
      &d84(104)+acd84(130)+acd84(115)+acd84(122)
      acd84(115)=acd84(4)*acd84(115)
      acd84(116)=-acd84(46)*acd84(121)
      acd84(121)=-acd84(24)*acd84(71)
      acd84(122)=-acd84(22)*acd84(70)
      acd84(130)=acd84(66)*acd84(3)
      acd84(132)=acd84(48)*acd84(20)
      acd84(136)=acd84(47)*acd84(19)
      acd84(138)=acd84(46)*acd84(18)
      acd84(121)=acd84(138)+acd84(136)+acd84(132)+acd84(130)+acd84(122)+acd84(9&
      &3)+acd84(121)
      acd84(121)=acd84(121)*acd84(125)
      acd84(122)=ninjaP+acd84(81)
      acd84(130)=acd84(20)*acd84(122)
      acd84(132)=acd84(70)*acd84(64)
      acd84(136)=acd84(65)*acd84(33)
      acd84(138)=acd84(44)*acd84(51)
      acd84(139)=acd84(46)*acd84(127)
      acd84(140)=acd84(126)*acd84(14)
      acd84(141)=acd84(15)*acd84(140)
      acd84(130)=acd84(141)+acd84(139)+acd84(138)+acd84(136)+acd84(106)+acd84(1&
      &32)+acd84(130)
      acd84(130)=acd84(8)*acd84(130)
      acd84(132)=acd84(19)*acd84(122)
      acd84(136)=acd84(70)*acd84(63)
      acd84(138)=acd84(65)*acd84(32)
      acd84(139)=acd84(44)*acd84(50)
      acd84(141)=acd84(46)*acd84(129)
      acd84(126)=acd84(126)*acd84(12)
      acd84(142)=acd84(15)*acd84(126)
      acd84(132)=acd84(142)+acd84(141)+acd84(139)+acd84(138)+acd84(105)+acd84(1&
      &36)+acd84(132)
      acd84(132)=acd84(6)*acd84(132)
      acd84(136)=-acd84(22)*acd84(122)
      acd84(138)=-acd84(79)+acd84(65)-acd84(77)
      acd84(139)=-acd84(34)*acd84(138)
      acd84(141)=acd84(48)*acd84(64)
      acd84(142)=acd84(47)*acd84(63)
      acd84(136)=acd84(142)+acd84(141)+acd84(139)+acd84(107)+acd84(136)
      acd84(136)=acd84(21)*acd84(136)
      acd84(139)=acd84(35)*acd84(71)
      acd84(141)=acd84(34)*acd84(70)
      acd84(142)=acd84(66)*acd84(28)
      acd84(139)=-acd84(142)+acd84(139)+acd84(141)
      acd84(141)=acd84(48)*acd84(33)
      acd84(142)=acd84(47)*acd84(32)
      acd84(143)=-acd84(46)*acd84(31)
      acd84(141)=acd84(143)+acd84(142)+acd84(141)+acd84(72)-acd84(139)
      acd84(141)=acd84(27)*acd84(141)
      acd84(139)=acd84(139)+acd84(87)
      acd84(139)=acd84(139)*acd84(134)
      acd84(123)=acd84(46)*acd84(123)
      acd84(142)=acd84(48)*acd84(51)
      acd84(143)=acd84(47)*acd84(50)
      acd84(123)=acd84(123)+acd84(143)+acd84(103)+acd84(142)
      acd84(123)=acd84(10)*acd84(123)
      acd84(142)=acd84(3)*acd84(122)
      acd84(143)=acd84(28)*acd84(138)
      acd84(144)=acd84(46)*acd84(41)
      acd84(142)=acd84(144)+acd84(143)+acd84(83)+acd84(142)
      acd84(142)=acd84(1)*acd84(142)
      acd84(143)=-acd84(81)*acd84(24)
      acd84(138)=-acd84(35)*acd84(138)
      acd84(138)=acd84(138)+acd84(109)+acd84(143)
      acd84(138)=acd84(23)*acd84(138)
      acd84(143)=acd84(55)*acd84(108)
      acd84(119)=-ninjaP*acd84(119)
      acd84(144)=acd84(39)*acd84(88)
      acd84(115)=acd84(115)+acd84(142)+acd84(132)+acd84(130)+acd84(121)+acd84(1&
      &23)+acd84(141)+acd84(116)+acd84(136)+acd84(144)+acd84(119)+acd84(138)+ac&
      &d84(143)+acd84(139)
      acd84(115)=acd84(2)*acd84(115)
      acd84(116)=acd84(48)*acd84(9)
      acd84(119)=acd84(47)*acd84(7)
      acd84(121)=-acd84(46)*acd84(5)
      acd84(123)=acd84(45)*acd84(3)
      acd84(116)=acd84(123)+acd84(121)+acd84(119)+acd84(82)+acd84(116)
      acd84(116)=acd84(116)*acd84(125)
      acd84(119)=acd84(9)*acd84(122)
      acd84(121)=acd84(65)*acd84(30)
      acd84(123)=-acd84(46)*acd84(43)
      acd84(119)=acd84(123)+acd84(86)+acd84(121)+acd84(119)
      acd84(119)=acd84(8)*acd84(119)
      acd84(121)=acd84(7)*acd84(122)
      acd84(123)=acd84(65)*acd84(29)
      acd84(130)=-acd84(46)*acd84(42)
      acd84(121)=acd84(130)+acd84(85)+acd84(123)+acd84(121)
      acd84(121)=acd84(6)*acd84(121)
      acd84(123)=acd84(48)*acd84(30)
      acd84(130)=acd84(47)*acd84(29)
      acd84(123)=acd84(130)+acd84(67)+acd84(123)
      acd84(123)=acd84(27)*acd84(123)
      acd84(130)=-acd84(78)*acd84(134)
      acd84(132)=-acd84(39)*acd84(76)
      acd84(134)=acd84(46)*acd84(39)
      acd84(136)=-acd84(36)*acd84(134)
      acd84(137)=acd84(45)*acd84(137)
      acd84(138)=acd84(46)*acd84(36)
      acd84(138)=acd84(76)+acd84(138)
      acd84(138)=acd84(1)*acd84(138)
      acd84(116)=acd84(138)+acd84(121)+acd84(119)+acd84(116)+acd84(137)+acd84(1&
      &23)+acd84(136)+acd84(132)+acd84(130)
      acd84(116)=acd84(1)*acd84(116)
      acd84(119)=-acd84(45)*acd84(124)
      acd84(121)=-acd84(66)*acd84(5)
      acd84(123)=acd84(48)*acd84(26)
      acd84(124)=acd84(47)*acd84(25)
      acd84(130)=acd84(45)*acd84(18)
      acd84(121)=acd84(130)+acd84(124)+acd84(123)+acd84(94)+acd84(121)
      acd84(121)=acd84(121)*acd84(125)
      acd84(123)=acd84(26)*acd84(122)
      acd84(124)=acd84(66)+acd84(80)
      acd84(130)=-acd84(43)*acd84(124)
      acd84(132)=acd84(16)*acd84(140)
      acd84(127)=acd84(45)*acd84(127)
      acd84(123)=acd84(127)+acd84(132)+acd84(111)+acd84(130)+acd84(123)
      acd84(123)=acd84(8)*acd84(123)
      acd84(127)=acd84(25)*acd84(122)
      acd84(124)=-acd84(42)*acd84(124)
      acd84(126)=acd84(16)*acd84(126)
      acd84(129)=acd84(45)*acd84(129)
      acd84(124)=acd84(129)+acd84(126)+acd84(110)+acd84(124)+acd84(127)
      acd84(124)=acd84(6)*acd84(124)
      acd84(126)=acd84(48)*acd84(43)
      acd84(127)=acd84(47)*acd84(42)
      acd84(126)=acd84(126)+acd84(127)
      acd84(127)=2.0_ki*acd84(66)-acd84(80)
      acd84(127)=acd84(36)*acd84(127)
      acd84(122)=-acd84(5)*acd84(122)
      acd84(129)=acd84(45)*acd84(41)
      acd84(122)=acd84(129)+acd84(84)+acd84(122)+acd84(127)-acd84(126)
      acd84(122)=acd84(1)*acd84(122)
      acd84(127)=-acd84(66)*acd84(36)
      acd84(126)=acd84(89)+acd84(127)-acd84(126)
      acd84(126)=acd84(39)*acd84(126)
      acd84(127)=acd84(55)*acd84(112)
      acd84(119)=acd84(122)+acd84(124)+acd84(123)+acd84(121)+acd84(119)+acd84(1&
      &27)+acd84(126)
      acd84(119)=acd84(4)*acd84(119)
      acd84(121)=acd84(45)*acd84(128)
      acd84(122)=acd84(66)*acd84(9)
      acd84(123)=acd84(46)*acd84(26)
      acd84(124)=acd84(45)*acd84(20)
      acd84(122)=acd84(124)+acd84(123)+acd84(96)+acd84(122)
      acd84(122)=acd84(122)*acd84(125)
      acd84(123)=acd84(55)*acd84(114)
      acd84(124)=acd84(39)*acd84(91)
      acd84(126)=-acd84(43)*acd84(134)
      acd84(127)=acd84(66)*acd84(30)
      acd84(127)=acd84(74)+acd84(127)
      acd84(127)=acd84(27)*acd84(127)
      acd84(121)=acd84(122)+acd84(121)+acd84(127)+acd84(126)+acd84(123)+acd84(1&
      &24)
      acd84(121)=acd84(8)*acd84(121)
      acd84(122)=acd84(45)*acd84(131)
      acd84(123)=acd84(66)*acd84(7)
      acd84(124)=acd84(46)*acd84(25)
      acd84(126)=acd84(45)*acd84(19)
      acd84(123)=acd84(126)+acd84(124)+acd84(95)+acd84(123)
      acd84(123)=acd84(123)*acd84(125)
      acd84(124)=acd84(55)*acd84(113)
      acd84(126)=acd84(39)*acd84(90)
      acd84(127)=-acd84(42)*acd84(134)
      acd84(128)=acd84(66)*acd84(29)
      acd84(128)=acd84(73)+acd84(128)
      acd84(128)=acd84(27)*acd84(128)
      acd84(122)=acd84(123)+acd84(122)+acd84(128)+acd84(127)+acd84(124)+acd84(1&
      &26)
      acd84(122)=acd84(6)*acd84(122)
      acd84(118)=-acd84(45)*acd84(118)
      acd84(123)=-acd84(39)-acd84(135)
      acd84(123)=acd84(69)*acd84(123)
      acd84(124)=acd84(55)*acd84(97)
      acd84(126)=acd84(92)*acd84(125)
      acd84(118)=acd84(126)+acd84(118)+acd84(124)+acd84(123)
      acd84(118)=acd84(118)*acd84(125)
      acd84(123)=acd84(39)*acd84(68)
      acd84(124)=acd84(55)*acd84(75)
      acd84(123)=acd84(123)+acd84(124)
      acd84(123)=acd84(123)*acd84(135)
      acd84(124)=acd84(45)*acd84(133)
      acd84(115)=acd84(115)+acd84(119)+acd84(116)+acd84(122)+acd84(121)+acd84(1&
      &18)+acd84(124)+acd84(123)
      brack(ninjaidxt1mu0)=acd84(120)
      brack(ninjaidxt0mu0)=acd84(115)
      brack(ninjaidxt0mu2)=acd84(117)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d84h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd84h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7
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
end module     p0_dbaru_epnebbbarg_d84h3l131
