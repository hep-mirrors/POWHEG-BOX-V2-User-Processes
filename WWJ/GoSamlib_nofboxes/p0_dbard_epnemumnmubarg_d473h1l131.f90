module     p0_dbard_epnemumnmubarg_d473h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity1d473h1l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd473h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(6) :: acd473
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd473(1)=dotproduct(ninjaE3,spvak1k2)
      acd473(2)=dotproduct(ninjaE3,spvak2k7)
      acd473(3)=dotproduct(ninjaE3,spvak4k3)
      acd473(4)=dotproduct(ninjaE3,spvak5k6)
      acd473(5)=abb473(7)
      acd473(6)=-acd473(5)*acd473(4)*acd473(3)*acd473(2)*acd473(1)
      brack(ninjaidxt2mu0)=acd473(6)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd473h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(143) :: acd473
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd473(1)=dotproduct(k2,ninjaE3)
      acd473(2)=dotproduct(ninjaE3,spvak4k3)
      acd473(3)=abb473(33)
      acd473(4)=dotproduct(ninjaE3,spvak5k6)
      acd473(5)=abb473(25)
      acd473(6)=dotproduct(ninjaE3,spvak1k3)
      acd473(7)=abb473(90)
      acd473(8)=dotproduct(ninjaE3,spvak1k2)
      acd473(9)=dotproduct(ninjaE3,spvak2k7)
      acd473(10)=dotproduct(ninjaE4,spvak5k6)
      acd473(11)=abb473(7)
      acd473(12)=dotproduct(ninjaE4,spvak4k3)
      acd473(13)=dotproduct(ninjaE4,spvak2k7)
      acd473(14)=dotproduct(ninjaE4,spvak1k2)
      acd473(15)=abb473(83)
      acd473(16)=dotproduct(ninjaE3,spvak5k2)
      acd473(17)=abb473(76)
      acd473(18)=dotproduct(ninjaE3,spvak1k7)
      acd473(19)=abb473(87)
      acd473(20)=dotproduct(ninjaE3,spvak4k2)
      acd473(21)=abb473(31)
      acd473(22)=dotproduct(k1,ninjaE3)
      acd473(23)=abb473(63)
      acd473(24)=abb473(41)
      acd473(25)=abb473(82)
      acd473(26)=abb473(72)
      acd473(27)=abb473(66)
      acd473(28)=abb473(77)
      acd473(29)=dotproduct(k3,ninjaE3)
      acd473(30)=dotproduct(k4,ninjaE3)
      acd473(31)=dotproduct(k5,ninjaE3)
      acd473(32)=dotproduct(k6,ninjaE3)
      acd473(33)=dotproduct(ninjaA,ninjaE3)
      acd473(34)=abb473(84)
      acd473(35)=abb473(40)
      acd473(36)=abb473(30)
      acd473(37)=abb473(86)
      acd473(38)=dotproduct(ninjaA,spvak1k2)
      acd473(39)=dotproduct(ninjaA,spvak2k7)
      acd473(40)=dotproduct(ninjaA,spvak4k3)
      acd473(41)=dotproduct(ninjaA,spvak5k6)
      acd473(42)=abb473(43)
      acd473(43)=abb473(47)
      acd473(44)=abb473(59)
      acd473(45)=abb473(39)
      acd473(46)=abb473(16)
      acd473(47)=dotproduct(ninjaE3,spvak1k6)
      acd473(48)=abb473(89)
      acd473(49)=abb473(57)
      acd473(50)=dotproduct(ninjaE3,spvak1k4)
      acd473(51)=abb473(67)
      acd473(52)=dotproduct(ninjaE3,spvak3k2)
      acd473(53)=dotproduct(ninjaE3,spvak6k2)
      acd473(54)=abb473(88)
      acd473(55)=dotproduct(k1,ninjaA)
      acd473(56)=dotproduct(k2,ninjaA)
      acd473(57)=abb473(52)
      acd473(58)=abb473(51)
      acd473(59)=abb473(19)
      acd473(60)=dotproduct(ninjaA,spvak1k3)
      acd473(61)=dotproduct(ninjaA,spvak4k2)
      acd473(62)=abb473(42)
      acd473(63)=abb473(78)
      acd473(64)=abb473(71)
      acd473(65)=abb473(13)
      acd473(66)=abb473(70)
      acd473(67)=abb473(56)
      acd473(68)=abb473(46)
      acd473(69)=dotproduct(k3,ninjaA)
      acd473(70)=abb473(50)
      acd473(71)=dotproduct(k4,ninjaA)
      acd473(72)=dotproduct(k5,ninjaA)
      acd473(73)=dotproduct(k6,ninjaA)
      acd473(74)=dotproduct(ninjaA,ninjaA)
      acd473(75)=abb473(44)
      acd473(76)=dotproduct(ninjaA,spvak5k2)
      acd473(77)=dotproduct(ninjaA,spvak1k7)
      acd473(78)=abb473(22)
      acd473(79)=abb473(80)
      acd473(80)=abb473(75)
      acd473(81)=abb473(61)
      acd473(82)=abb473(18)
      acd473(83)=abb473(55)
      acd473(84)=abb473(60)
      acd473(85)=abb473(74)
      acd473(86)=abb473(49)
      acd473(87)=abb473(6)
      acd473(88)=abb473(34)
      acd473(89)=abb473(37)
      acd473(90)=abb473(20)
      acd473(91)=abb473(29)
      acd473(92)=abb473(54)
      acd473(93)=dotproduct(ninjaA,spvak1k4)
      acd473(94)=dotproduct(ninjaA,spvak3k2)
      acd473(95)=dotproduct(ninjaA,spvak6k2)
      acd473(96)=dotproduct(ninjaA,spvak1k6)
      acd473(97)=abb473(10)
      acd473(98)=abb473(48)
      acd473(99)=abb473(14)
      acd473(100)=abb473(27)
      acd473(101)=abb473(38)
      acd473(102)=abb473(68)
      acd473(103)=abb473(8)
      acd473(104)=abb473(58)
      acd473(105)=abb473(53)
      acd473(106)=abb473(24)
      acd473(107)=abb473(12)
      acd473(108)=abb473(45)
      acd473(109)=abb473(17)
      acd473(110)=abb473(64)
      acd473(111)=abb473(65)
      acd473(112)=acd473(18)*acd473(19)
      acd473(113)=acd473(16)*acd473(17)
      acd473(112)=acd473(112)-acd473(113)
      acd473(113)=acd473(9)*acd473(11)
      acd473(114)=acd473(113)*acd473(14)
      acd473(115)=acd473(8)*acd473(11)
      acd473(116)=-acd473(13)*acd473(115)
      acd473(116)=acd473(116)-acd473(114)
      acd473(116)=acd473(4)*acd473(116)
      acd473(117)=-acd473(10)*acd473(115)
      acd473(117)=acd473(15)+acd473(117)
      acd473(117)=acd473(9)*acd473(117)
      acd473(118)=acd473(1)*acd473(3)
      acd473(116)=acd473(116)+acd473(118)+acd473(117)-acd473(112)
      acd473(116)=acd473(2)*acd473(116)
      acd473(117)=acd473(6)*acd473(7)
      acd473(118)=acd473(20)*acd473(21)
      acd473(117)=acd473(117)+acd473(118)
      acd473(119)=-acd473(9)*acd473(12)*acd473(115)
      acd473(120)=acd473(1)*acd473(5)
      acd473(119)=acd473(120)+acd473(119)+acd473(117)
      acd473(119)=acd473(4)*acd473(119)
      acd473(116)=acd473(119)+acd473(116)
      acd473(119)=acd473(11)*acd473(39)
      acd473(119)=acd473(119)-acd473(45)
      acd473(120)=acd473(119)*acd473(8)
      acd473(121)=acd473(21)*acd473(52)
      acd473(122)=acd473(17)*acd473(53)
      acd473(123)=acd473(7)*acd473(50)
      acd473(124)=acd473(18)*acd473(54)
      acd473(125)=acd473(20)*acd473(51)
      acd473(126)=acd473(22)*acd473(26)
      acd473(120)=-acd473(120)+acd473(124)-acd473(123)-acd473(121)+acd473(122)+&
      &acd473(125)+acd473(126)
      acd473(121)=acd473(16)*acd473(49)
      acd473(122)=acd473(6)*acd473(43)
      acd473(121)=acd473(122)+acd473(121)+acd473(120)
      acd473(113)=-acd473(38)*acd473(113)
      acd473(122)=acd473(1)*acd473(35)
      acd473(113)=acd473(122)+acd473(113)+acd473(121)
      acd473(113)=acd473(4)*acd473(113)
      acd473(122)=acd473(18)*acd473(37)
      acd473(123)=acd473(16)*acd473(36)
      acd473(122)=acd473(122)-acd473(123)
      acd473(123)=acd473(31)+acd473(32)
      acd473(124)=-acd473(1)+acd473(123)
      acd473(124)=acd473(28)*acd473(124)
      acd473(125)=2.0_ki*acd473(33)
      acd473(126)=acd473(3)*acd473(125)
      acd473(127)=acd473(9)*acd473(34)
      acd473(124)=acd473(127)+acd473(126)+acd473(124)-acd473(122)
      acd473(124)=acd473(1)*acd473(124)
      acd473(126)=acd473(48)*acd473(47)
      acd473(127)=acd473(8)*acd473(19)
      acd473(126)=acd473(126)+acd473(127)
      acd473(127)=acd473(16)*acd473(46)
      acd473(128)=acd473(115)*acd473(41)
      acd473(127)=-acd473(128)+acd473(127)+acd473(126)
      acd473(128)=acd473(15)*acd473(125)
      acd473(128)=acd473(128)+acd473(127)
      acd473(128)=acd473(9)*acd473(128)
      acd473(129)=-acd473(123)*acd473(122)
      acd473(130)=-acd473(112)*acd473(125)
      acd473(113)=acd473(113)+acd473(124)+acd473(128)+acd473(130)-acd473(129)
      acd473(113)=acd473(2)*acd473(113)
      acd473(124)=acd473(8)*acd473(44)
      acd473(128)=acd473(22)*acd473(25)
      acd473(124)=acd473(124)+acd473(128)
      acd473(128)=acd473(6)*acd473(42)
      acd473(130)=-acd473(40)*acd473(115)
      acd473(128)=acd473(130)+acd473(128)+acd473(124)
      acd473(128)=acd473(9)*acd473(128)
      acd473(117)=acd473(117)*acd473(125)
      acd473(130)=acd473(29)+acd473(30)
      acd473(131)=acd473(130)-acd473(22)
      acd473(132)=-acd473(131)*acd473(23)
      acd473(133)=acd473(5)*acd473(125)
      acd473(133)=acd473(133)+acd473(132)
      acd473(133)=acd473(1)*acd473(133)
      acd473(134)=acd473(20)*acd473(131)*acd473(27)
      acd473(135)=-acd473(131)*acd473(24)
      acd473(136)=-acd473(6)*acd473(135)
      acd473(117)=acd473(133)+acd473(128)+acd473(117)+acd473(136)+acd473(134)
      acd473(117)=acd473(4)*acd473(117)
      acd473(113)=acd473(117)+acd473(113)
      acd473(117)=-acd473(38)*acd473(119)
      acd473(119)=acd473(77)*acd473(54)
      acd473(128)=acd473(61)*acd473(51)
      acd473(133)=acd473(55)*acd473(26)
      acd473(136)=acd473(76)*acd473(49)
      acd473(137)=acd473(60)*acd473(43)
      acd473(138)=-acd473(21)*acd473(94)
      acd473(139)=acd473(17)*acd473(95)
      acd473(140)=-acd473(7)*acd473(93)
      acd473(141)=acd473(56)*acd473(35)
      acd473(115)=acd473(115)*ninjaP
      acd473(142)=-acd473(13)*acd473(115)
      acd473(114)=-ninjaP*acd473(114)
      acd473(114)=acd473(114)+acd473(142)+acd473(141)+acd473(140)+acd473(139)+a&
      &cd473(138)+acd473(137)+acd473(136)+acd473(133)+acd473(128)+acd473(105)+a&
      &cd473(119)+acd473(117)
      acd473(114)=acd473(4)*acd473(114)
      acd473(117)=acd473(41)*acd473(120)
      acd473(119)=ninjaP+acd473(74)
      acd473(120)=acd473(15)*acd473(119)
      acd473(128)=acd473(48)*acd473(96)
      acd473(133)=acd473(76)*acd473(46)
      acd473(136)=acd473(19)*acd473(38)
      acd473(137)=acd473(56)*acd473(34)
      acd473(138)=-acd473(10)*acd473(115)
      acd473(139)=acd473(11)*acd473(38)
      acd473(140)=-acd473(41)*acd473(139)
      acd473(120)=acd473(140)+acd473(138)+acd473(137)+acd473(136)+acd473(133)+a&
      &cd473(101)+acd473(128)+acd473(120)
      acd473(120)=acd473(9)*acd473(120)
      acd473(128)=acd473(37)*acd473(77)
      acd473(133)=acd473(36)*acd473(76)
      acd473(128)=acd473(128)-acd473(133)
      acd473(133)=acd473(3)*acd473(119)
      acd473(136)=acd473(56)*acd473(28)
      acd473(137)=acd473(72)+acd473(73)
      acd473(138)=acd473(28)*acd473(137)
      acd473(140)=acd473(39)*acd473(34)
      acd473(141)=acd473(41)*acd473(35)
      acd473(133)=acd473(141)+acd473(140)-2.0_ki*acd473(136)+acd473(138)+acd473&
      &(80)-acd473(128)+acd473(133)
      acd473(133)=acd473(1)*acd473(133)
      acd473(138)=acd473(17)*acd473(119)
      acd473(140)=acd473(39)*acd473(46)
      acd473(137)=acd473(137)-acd473(56)
      acd473(141)=-acd473(36)*acd473(137)
      acd473(142)=acd473(41)*acd473(49)
      acd473(138)=acd473(142)+acd473(141)+acd473(140)+acd473(106)+acd473(138)
      acd473(138)=acd473(16)*acd473(138)
      acd473(140)=-acd473(19)*acd473(77)
      acd473(141)=acd473(17)*acd473(76)
      acd473(142)=acd473(56)*acd473(3)
      acd473(143)=acd473(39)*acd473(15)
      acd473(140)=acd473(143)+acd473(142)+acd473(141)+acd473(89)+acd473(140)
      acd473(140)=acd473(140)*acd473(125)
      acd473(128)=-acd473(85)+acd473(128)+acd473(136)
      acd473(128)=acd473(128)*acd473(123)
      acd473(126)=acd473(39)*acd473(126)
      acd473(136)=-acd473(19)*acd473(119)
      acd473(137)=acd473(37)*acd473(137)
      acd473(136)=acd473(137)+acd473(136)
      acd473(136)=acd473(18)*acd473(136)
      acd473(137)=acd473(50)*acd473(107)
      acd473(141)=acd473(53)*acd473(108)
      acd473(142)=acd473(22)*acd473(64)
      acd473(143)=acd473(41)*acd473(43)
      acd473(143)=acd473(98)+acd473(143)
      acd473(143)=acd473(6)*acd473(143)
      acd473(114)=acd473(114)+acd473(133)+acd473(120)+acd473(140)+acd473(143)+a&
      &cd473(138)+acd473(117)+acd473(142)+acd473(136)+acd473(137)+acd473(141)+a&
      &cd473(126)+acd473(128)
      acd473(114)=acd473(2)*acd473(114)
      acd473(117)=acd473(40)*acd473(121)
      acd473(120)=acd473(55)*acd473(25)
      acd473(121)=acd473(60)*acd473(42)
      acd473(126)=acd473(38)*acd473(44)
      acd473(115)=-acd473(12)*acd473(115)
      acd473(128)=-acd473(40)*acd473(139)
      acd473(115)=acd473(128)+acd473(115)+acd473(126)+acd473(121)+acd473(102)+a&
      &cd473(120)
      acd473(115)=acd473(9)*acd473(115)
      acd473(120)=acd473(27)*acd473(61)
      acd473(121)=acd473(24)*acd473(60)
      acd473(126)=acd473(23)*acd473(56)
      acd473(120)=-acd473(126)+acd473(120)+acd473(121)
      acd473(121)=acd473(120)-acd473(84)
      acd473(121)=acd473(121)*acd473(130)
      acd473(126)=acd473(39)*acd473(25)
      acd473(120)=acd473(65)+acd473(126)-acd473(120)
      acd473(120)=acd473(22)*acd473(120)
      acd473(126)=acd473(7)*acd473(119)
      acd473(128)=acd473(39)*acd473(42)
      acd473(133)=-acd473(71)+acd473(55)-acd473(69)
      acd473(136)=-acd473(24)*acd473(133)
      acd473(126)=acd473(136)+acd473(128)+acd473(99)+acd473(126)
      acd473(126)=acd473(6)*acd473(126)
      acd473(128)=acd473(21)*acd473(61)
      acd473(136)=acd473(7)*acd473(60)
      acd473(137)=acd473(56)*acd473(5)
      acd473(128)=acd473(137)+acd473(136)+acd473(90)+acd473(128)
      acd473(128)=acd473(128)*acd473(125)
      acd473(136)=acd473(5)*acd473(119)
      acd473(137)=acd473(23)*acd473(133)
      acd473(138)=acd473(40)*acd473(35)
      acd473(136)=acd473(138)+acd473(137)+acd473(81)+acd473(136)
      acd473(136)=acd473(1)*acd473(136)
      acd473(119)=acd473(21)*acd473(119)
      acd473(133)=-acd473(27)*acd473(133)
      acd473(119)=acd473(133)+acd473(110)+acd473(119)
      acd473(119)=acd473(20)*acd473(119)
      acd473(133)=acd473(53)*acd473(111)
      acd473(137)=acd473(39)*acd473(44)
      acd473(137)=acd473(100)+acd473(137)
      acd473(137)=acd473(8)*acd473(137)
      acd473(138)=acd473(16)*acd473(109)
      acd473(115)=acd473(136)+acd473(115)+acd473(128)+acd473(117)+acd473(126)+a&
      &cd473(138)+acd473(120)+acd473(137)+acd473(119)+acd473(133)+acd473(121)
      acd473(115)=acd473(4)*acd473(115)
      acd473(117)=acd473(28)*acd473(123)
      acd473(117)=acd473(117)-acd473(122)
      acd473(117)=acd473(40)*acd473(117)
      acd473(119)=acd473(41)*acd473(5)
      acd473(120)=acd473(40)*acd473(3)
      acd473(119)=acd473(120)+acd473(75)+acd473(119)
      acd473(119)=acd473(119)*acd473(125)
      acd473(120)=-acd473(70)*acd473(130)
      acd473(121)=-acd473(68)*acd473(123)
      acd473(122)=acd473(22)*acd473(57)
      acd473(126)=acd473(41)*acd473(132)
      acd473(128)=-acd473(16)*acd473(82)
      acd473(132)=acd473(6)*acd473(78)
      acd473(133)=acd473(40)*acd473(34)
      acd473(133)=acd473(79)+acd473(133)
      acd473(133)=acd473(9)*acd473(133)
      acd473(136)=-acd473(40)*acd473(28)
      acd473(136)=acd473(68)+acd473(136)
      acd473(136)=acd473(1)*acd473(136)
      acd473(117)=acd473(136)+acd473(133)+acd473(119)+acd473(117)+acd473(132)+a&
      &cd473(128)+acd473(126)+acd473(122)+acd473(121)+acd473(120)
      acd473(117)=acd473(1)*acd473(117)
      acd473(112)=-acd473(40)*acd473(112)
      acd473(119)=acd473(83)*acd473(130)
      acd473(120)=acd473(53)*acd473(92)
      acd473(121)=acd473(22)*acd473(59)
      acd473(118)=acd473(41)*acd473(118)
      acd473(122)=acd473(16)*acd473(91)
      acd473(126)=acd473(41)*acd473(7)
      acd473(126)=acd473(87)+acd473(126)
      acd473(126)=acd473(6)*acd473(126)
      acd473(128)=acd473(86)*acd473(125)
      acd473(112)=acd473(128)+acd473(112)+acd473(126)+acd473(122)+acd473(118)+a&
      &cd473(121)+acd473(120)+acd473(119)
      acd473(112)=acd473(112)*acd473(125)
      acd473(118)=acd473(40)*acd473(127)
      acd473(119)=acd473(41)*acd473(124)
      acd473(120)=acd473(40)*acd473(15)
      acd473(120)=acd473(88)+acd473(120)
      acd473(120)=acd473(120)*acd473(125)
      acd473(121)=acd473(53)*acd473(104)
      acd473(122)=acd473(22)*acd473(63)
      acd473(124)=acd473(16)*acd473(103)
      acd473(125)=acd473(41)*acd473(42)
      acd473(125)=acd473(97)+acd473(125)
      acd473(125)=acd473(6)*acd473(125)
      acd473(118)=acd473(120)+acd473(118)+acd473(125)+acd473(124)+acd473(119)+a&
      &cd473(121)+acd473(122)
      acd473(118)=acd473(9)*acd473(118)
      acd473(119)=-acd473(78)*acd473(123)
      acd473(120)=acd473(62)*acd473(131)
      acd473(121)=-acd473(41)*acd473(135)
      acd473(119)=acd473(121)+acd473(120)+acd473(119)
      acd473(119)=acd473(6)*acd473(119)
      acd473(120)=acd473(53)*acd473(67)
      acd473(121)=acd473(120)*acd473(130)
      acd473(122)=acd473(58)*acd473(123)
      acd473(120)=-acd473(120)+acd473(122)
      acd473(120)=acd473(22)*acd473(120)
      acd473(122)=acd473(82)*acd473(123)
      acd473(123)=acd473(66)*acd473(131)
      acd473(122)=acd473(123)+acd473(122)
      acd473(122)=acd473(16)*acd473(122)
      acd473(123)=-acd473(40)*acd473(129)
      acd473(124)=acd473(41)*acd473(134)
      acd473(112)=acd473(114)+acd473(115)+acd473(117)+acd473(118)+acd473(112)+a&
      &cd473(123)+acd473(119)+acd473(122)+acd473(124)+acd473(120)+acd473(121)
      brack(ninjaidxt1mu0)=acd473(113)
      brack(ninjaidxt0mu0)=acd473(112)
      brack(ninjaidxt0mu2)=acd473(116)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d473h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd473h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
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
end module     p0_dbard_epnemumnmubarg_d473h1l131
