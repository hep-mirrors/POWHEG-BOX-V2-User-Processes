module     p0_dbard_epnemumnmubarg_d481h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity1d481h1l131.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd481h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(6) :: acd481
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd481(1)=dotproduct(ninjaE3,spvak1k2)
      acd481(2)=dotproduct(ninjaE3,spvak2k7)
      acd481(3)=dotproduct(ninjaE3,spvak4k3)
      acd481(4)=dotproduct(ninjaE3,spvak5k6)
      acd481(5)=abb481(15)
      acd481(6)=-acd481(5)*acd481(4)*acd481(3)*acd481(2)*acd481(1)
      brack(ninjaidxt2mu0)=acd481(6)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd481h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(137) :: acd481
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd481(1)=dotproduct(k2,ninjaE3)
      acd481(2)=dotproduct(ninjaE3,spvak4k3)
      acd481(3)=abb481(66)
      acd481(4)=dotproduct(ninjaE3,spvak5k6)
      acd481(5)=dotproduct(ninjaE3,spvak2k7)
      acd481(6)=dotproduct(ninjaE4,spvak1k2)
      acd481(7)=abb481(15)
      acd481(8)=dotproduct(ninjaE3,spvak1k2)
      acd481(9)=dotproduct(ninjaE4,spvak2k7)
      acd481(10)=abb481(52)
      acd481(11)=dotproduct(ninjaE4,spvak4k3)
      acd481(12)=dotproduct(ninjaE4,spvak5k6)
      acd481(13)=dotproduct(ninjaE3,spvak5k2)
      acd481(14)=abb481(45)
      acd481(15)=dotproduct(ninjaE3,spvak1k6)
      acd481(16)=abb481(82)
      acd481(17)=abb481(12)
      acd481(18)=dotproduct(ninjaE3,spvak1k3)
      acd481(19)=abb481(72)
      acd481(20)=dotproduct(ninjaE3,spvak4k2)
      acd481(21)=abb481(80)
      acd481(22)=dotproduct(k1,ninjaE3)
      acd481(23)=abb481(74)
      acd481(24)=abb481(34)
      acd481(25)=abb481(22)
      acd481(26)=abb481(50)
      acd481(27)=abb481(31)
      acd481(28)=abb481(14)
      acd481(29)=dotproduct(k7,ninjaE3)
      acd481(30)=dotproduct(ninjaA,ninjaE3)
      acd481(31)=abb481(69)
      acd481(32)=abb481(46)
      acd481(33)=abb481(81)
      acd481(34)=dotproduct(k3,ninjaE3)
      acd481(35)=dotproduct(k4,ninjaE3)
      acd481(36)=dotproduct(ninjaA,spvak5k6)
      acd481(37)=dotproduct(ninjaA,spvak4k3)
      acd481(38)=dotproduct(ninjaA,spvak2k7)
      acd481(39)=dotproduct(ninjaA,spvak1k2)
      acd481(40)=dotproduct(ninjaE3,spvak1k7)
      acd481(41)=abb481(11)
      acd481(42)=abb481(55)
      acd481(43)=abb481(51)
      acd481(44)=abb481(75)
      acd481(45)=abb481(60)
      acd481(46)=abb481(59)
      acd481(47)=abb481(79)
      acd481(48)=dotproduct(ninjaE3,spvak7k2)
      acd481(49)=abb481(64)
      acd481(50)=abb481(70)
      acd481(51)=dotproduct(ninjaE3,spvak1k4)
      acd481(52)=dotproduct(ninjaE3,spvak3k2)
      acd481(53)=dotproduct(k1,ninjaA)
      acd481(54)=abb481(35)
      acd481(55)=abb481(41)
      acd481(56)=abb481(40)
      acd481(57)=dotproduct(ninjaA,spvak5k2)
      acd481(58)=dotproduct(ninjaA,spvak1k3)
      acd481(59)=dotproduct(ninjaA,spvak4k2)
      acd481(60)=abb481(10)
      acd481(61)=abb481(67)
      acd481(62)=abb481(28)
      acd481(63)=abb481(23)
      acd481(64)=abb481(47)
      acd481(65)=dotproduct(k2,ninjaA)
      acd481(66)=abb481(36)
      acd481(67)=abb481(39)
      acd481(68)=dotproduct(k7,ninjaA)
      acd481(69)=dotproduct(ninjaA,ninjaA)
      acd481(70)=abb481(38)
      acd481(71)=dotproduct(ninjaA,spvak1k6)
      acd481(72)=abb481(54)
      acd481(73)=abb481(29)
      acd481(74)=abb481(73)
      acd481(75)=abb481(57)
      acd481(76)=abb481(19)
      acd481(77)=dotproduct(k3,ninjaA)
      acd481(78)=abb481(42)
      acd481(79)=abb481(71)
      acd481(80)=dotproduct(k4,ninjaA)
      acd481(81)=abb481(62)
      acd481(82)=abb481(43)
      acd481(83)=abb481(48)
      acd481(84)=abb481(63)
      acd481(85)=abb481(24)
      acd481(86)=abb481(30)
      acd481(87)=abb481(17)
      acd481(88)=abb481(37)
      acd481(89)=dotproduct(ninjaA,spvak1k7)
      acd481(90)=dotproduct(ninjaA,spvak7k2)
      acd481(91)=dotproduct(ninjaA,spvak1k4)
      acd481(92)=dotproduct(ninjaA,spvak3k2)
      acd481(93)=abb481(68)
      acd481(94)=abb481(56)
      acd481(95)=abb481(26)
      acd481(96)=abb481(53)
      acd481(97)=abb481(13)
      acd481(98)=abb481(16)
      acd481(99)=abb481(65)
      acd481(100)=abb481(83)
      acd481(101)=abb481(20)
      acd481(102)=abb481(32)
      acd481(103)=abb481(18)
      acd481(104)=abb481(78)
      acd481(105)=abb481(33)
      acd481(106)=acd481(15)*acd481(16)
      acd481(107)=acd481(13)*acd481(14)
      acd481(108)=-acd481(1)*acd481(3)
      acd481(109)=acd481(8)*acd481(7)
      acd481(110)=-acd481(9)*acd481(109)
      acd481(110)=acd481(10)+acd481(110)
      acd481(110)=acd481(4)*acd481(110)
      acd481(107)=acd481(110)+acd481(108)+acd481(106)+acd481(107)
      acd481(107)=acd481(2)*acd481(107)
      acd481(108)=acd481(18)*acd481(19)
      acd481(110)=acd481(20)*acd481(21)
      acd481(108)=acd481(108)-acd481(110)
      acd481(111)=acd481(4)*acd481(7)
      acd481(112)=acd481(111)*acd481(6)
      acd481(113)=-acd481(12)*acd481(109)
      acd481(113)=acd481(113)-acd481(112)
      acd481(113)=acd481(2)*acd481(113)
      acd481(114)=acd481(13)*acd481(17)
      acd481(115)=-acd481(4)*acd481(11)*acd481(109)
      acd481(113)=acd481(113)+acd481(115)+acd481(114)-acd481(108)
      acd481(113)=acd481(5)*acd481(113)
      acd481(107)=acd481(107)+acd481(113)
      acd481(113)=acd481(7)*acd481(36)
      acd481(113)=acd481(113)-acd481(45)
      acd481(114)=acd481(113)*acd481(8)
      acd481(115)=acd481(48)*acd481(49)
      acd481(116)=acd481(21)*acd481(52)
      acd481(117)=acd481(19)*acd481(51)
      acd481(118)=acd481(15)*acd481(50)
      acd481(119)=acd481(20)*acd481(47)
      acd481(120)=acd481(22)*acd481(24)
      acd481(114)=-acd481(114)+acd481(120)+acd481(115)+acd481(118)+acd481(119)+&
      &acd481(116)-acd481(117)
      acd481(115)=acd481(18)*acd481(46)
      acd481(116)=acd481(13)*acd481(44)
      acd481(117)=acd481(1)*acd481(24)
      acd481(111)=-acd481(39)*acd481(111)
      acd481(111)=acd481(111)+acd481(117)+acd481(116)+acd481(115)+acd481(114)
      acd481(111)=acd481(2)*acd481(111)
      acd481(115)=acd481(8)*acd481(42)
      acd481(116)=acd481(22)*acd481(23)
      acd481(117)=acd481(109)*acd481(37)
      acd481(115)=acd481(115)+acd481(116)-acd481(117)
      acd481(116)=acd481(18)*acd481(43)
      acd481(116)=acd481(116)+acd481(115)
      acd481(116)=acd481(4)*acd481(116)
      acd481(117)=2.0_ki*acd481(30)
      acd481(108)=-acd481(108)*acd481(117)
      acd481(118)=acd481(34)+acd481(35)
      acd481(119)=acd481(118)-acd481(22)
      acd481(120)=-acd481(119)*acd481(25)
      acd481(121)=acd481(17)*acd481(117)
      acd481(121)=acd481(121)-acd481(120)
      acd481(121)=acd481(13)*acd481(121)
      acd481(122)=acd481(20)*acd481(119)*acd481(27)
      acd481(123)=-acd481(119)*acd481(26)
      acd481(124)=-acd481(18)*acd481(123)
      acd481(108)=acd481(111)+acd481(116)+acd481(121)+acd481(108)+acd481(124)-a&
      &cd481(122)
      acd481(108)=acd481(5)*acd481(108)
      acd481(111)=acd481(1)-acd481(29)
      acd481(111)=acd481(28)*acd481(111)
      acd481(116)=acd481(15)*acd481(33)
      acd481(121)=-acd481(3)*acd481(117)
      acd481(124)=-acd481(13)*acd481(32)
      acd481(111)=acd481(124)+acd481(121)-acd481(116)+acd481(111)
      acd481(111)=acd481(1)*acd481(111)
      acd481(121)=acd481(41)*acd481(40)
      acd481(124)=-acd481(38)*acd481(109)
      acd481(125)=acd481(10)*acd481(117)
      acd481(126)=acd481(1)*acd481(31)
      acd481(124)=acd481(126)+acd481(125)+acd481(121)+acd481(124)
      acd481(124)=acd481(4)*acd481(124)
      acd481(125)=acd481(117)*acd481(106)
      acd481(126)=acd481(29)*acd481(32)
      acd481(127)=acd481(14)*acd481(117)
      acd481(126)=acd481(126)+acd481(127)
      acd481(126)=acd481(13)*acd481(126)
      acd481(127)=acd481(116)*acd481(29)
      acd481(111)=acd481(124)+acd481(111)+acd481(126)+acd481(127)+acd481(125)
      acd481(111)=acd481(2)*acd481(111)
      acd481(108)=acd481(111)+acd481(108)
      acd481(111)=acd481(38)*acd481(114)
      acd481(124)=acd481(33)*acd481(71)
      acd481(125)=acd481(32)*acd481(57)
      acd481(124)=acd481(124)+acd481(125)
      acd481(125)=ninjaP+acd481(69)
      acd481(126)=-acd481(3)*acd481(125)
      acd481(128)=-acd481(68)+2.0_ki*acd481(65)
      acd481(128)=acd481(28)*acd481(128)
      acd481(129)=acd481(36)*acd481(31)
      acd481(130)=acd481(38)*acd481(24)
      acd481(126)=acd481(130)+acd481(129)+acd481(128)+acd481(73)+acd481(126)-ac&
      &d481(124)
      acd481(126)=acd481(1)*acd481(126)
      acd481(128)=acd481(10)*acd481(125)
      acd481(129)=acd481(41)*acd481(89)
      acd481(130)=acd481(65)*acd481(31)
      acd481(109)=acd481(109)*ninjaP
      acd481(131)=-acd481(9)*acd481(109)
      acd481(132)=acd481(7)*acd481(39)
      acd481(133)=-acd481(38)*acd481(132)
      acd481(128)=acd481(133)+acd481(131)+acd481(130)+acd481(93)+acd481(129)+ac&
      &d481(128)
      acd481(128)=acd481(4)*acd481(128)
      acd481(129)=acd481(16)*acd481(71)
      acd481(130)=-acd481(65)*acd481(3)
      acd481(131)=acd481(57)*acd481(14)
      acd481(133)=acd481(36)*acd481(10)
      acd481(129)=acd481(133)+acd481(131)+acd481(130)+acd481(84)+acd481(129)
      acd481(129)=acd481(129)*acd481(117)
      acd481(130)=acd481(14)*acd481(125)
      acd481(131)=acd481(65)-acd481(68)
      acd481(133)=-acd481(32)*acd481(131)
      acd481(134)=acd481(38)*acd481(44)
      acd481(130)=acd481(134)+acd481(133)+acd481(130)
      acd481(130)=acd481(13)*acd481(130)
      acd481(133)=-acd481(28)*acd481(65)
      acd481(124)=acd481(81)+acd481(133)+acd481(124)
      acd481(124)=acd481(29)*acd481(124)
      acd481(133)=acd481(16)*acd481(125)
      acd481(131)=-acd481(33)*acd481(131)
      acd481(131)=acd481(131)+acd481(133)
      acd481(131)=acd481(15)*acd481(131)
      acd481(133)=acd481(51)*acd481(100)
      acd481(134)=acd481(48)*acd481(99)
      acd481(135)=acd481(36)*acd481(121)
      acd481(136)=acd481(22)*acd481(61)
      acd481(137)=acd481(38)*acd481(46)
      acd481(137)=acd481(98)+acd481(137)
      acd481(137)=acd481(18)*acd481(137)
      acd481(111)=acd481(128)+acd481(126)+acd481(130)+acd481(129)+acd481(137)+a&
      &cd481(111)+acd481(136)+acd481(131)+acd481(124)+acd481(135)+acd481(133)+a&
      &cd481(134)
      acd481(111)=acd481(2)*acd481(111)
      acd481(113)=-acd481(39)*acd481(113)
      acd481(124)=acd481(50)*acd481(71)
      acd481(126)=acd481(49)*acd481(90)
      acd481(128)=acd481(59)*acd481(47)
      acd481(129)=acd481(58)*acd481(46)
      acd481(130)=acd481(57)*acd481(44)
      acd481(131)=acd481(53)+acd481(65)
      acd481(131)=acd481(24)*acd481(131)
      acd481(133)=acd481(21)*acd481(92)
      acd481(134)=-acd481(19)*acd481(91)
      acd481(135)=-acd481(12)*acd481(109)
      acd481(112)=-ninjaP*acd481(112)
      acd481(112)=acd481(112)+acd481(135)+acd481(134)+acd481(133)+acd481(131)+a&
      &cd481(130)+acd481(129)+acd481(128)+acd481(126)+acd481(97)+acd481(124)+ac&
      &d481(113)
      acd481(112)=acd481(2)*acd481(112)
      acd481(113)=acd481(37)*acd481(114)
      acd481(114)=acd481(53)*acd481(23)
      acd481(124)=acd481(58)*acd481(43)
      acd481(126)=acd481(39)*acd481(42)
      acd481(109)=-acd481(11)*acd481(109)
      acd481(128)=-acd481(37)*acd481(132)
      acd481(109)=acd481(128)+acd481(109)+acd481(126)+acd481(124)+acd481(94)+ac&
      &d481(114)
      acd481(109)=acd481(4)*acd481(109)
      acd481(114)=-acd481(19)*acd481(125)
      acd481(124)=acd481(36)*acd481(43)
      acd481(126)=-acd481(80)+acd481(53)-acd481(77)
      acd481(128)=-acd481(26)*acd481(126)
      acd481(129)=acd481(37)*acd481(46)
      acd481(114)=acd481(129)+acd481(128)+acd481(103)+acd481(124)+acd481(114)
      acd481(114)=acd481(18)*acd481(114)
      acd481(124)=acd481(27)*acd481(59)
      acd481(128)=acd481(26)*acd481(58)
      acd481(129)=acd481(25)*acd481(57)
      acd481(124)=-acd481(124)+acd481(128)+acd481(129)
      acd481(128)=acd481(124)+acd481(79)
      acd481(128)=acd481(128)*acd481(118)
      acd481(129)=acd481(36)*acd481(23)
      acd481(124)=acd481(62)+acd481(129)-acd481(124)
      acd481(124)=acd481(22)*acd481(124)
      acd481(129)=acd481(57)*acd481(17)
      acd481(130)=acd481(21)*acd481(59)
      acd481(131)=-acd481(19)*acd481(58)
      acd481(129)=acd481(131)+acd481(130)+acd481(85)+acd481(129)
      acd481(129)=acd481(129)*acd481(117)
      acd481(130)=acd481(17)*acd481(125)
      acd481(131)=-acd481(25)*acd481(126)
      acd481(132)=acd481(37)*acd481(44)
      acd481(130)=acd481(132)+acd481(131)+acd481(101)+acd481(130)
      acd481(130)=acd481(13)*acd481(130)
      acd481(125)=acd481(21)*acd481(125)
      acd481(126)=acd481(27)*acd481(126)
      acd481(125)=acd481(126)+acd481(104)+acd481(125)
      acd481(125)=acd481(20)*acd481(125)
      acd481(126)=acd481(48)*acd481(105)
      acd481(131)=acd481(36)*acd481(42)
      acd481(131)=acd481(102)+acd481(131)
      acd481(131)=acd481(8)*acd481(131)
      acd481(132)=acd481(37)*acd481(24)
      acd481(132)=acd481(74)+acd481(132)
      acd481(132)=acd481(1)*acd481(132)
      acd481(109)=acd481(112)+acd481(109)+acd481(132)+acd481(130)+acd481(129)+a&
      &cd481(114)+acd481(113)+acd481(124)+acd481(131)+acd481(125)+acd481(126)+a&
      &cd481(128)
      acd481(109)=acd481(5)*acd481(109)
      acd481(112)=-acd481(29)*acd481(28)
      acd481(112)=acd481(112)-acd481(116)
      acd481(112)=acd481(37)*acd481(112)
      acd481(113)=-acd481(37)*acd481(3)
      acd481(113)=acd481(70)+acd481(113)
      acd481(113)=acd481(113)*acd481(117)
      acd481(114)=-acd481(67)*acd481(118)
      acd481(116)=acd481(29)*acd481(66)
      acd481(124)=acd481(22)*acd481(54)
      acd481(125)=-acd481(18)*acd481(76)
      acd481(126)=acd481(37)*acd481(32)
      acd481(126)=acd481(126)-acd481(75)
      acd481(128)=-acd481(13)*acd481(126)
      acd481(129)=acd481(37)*acd481(28)
      acd481(129)=-acd481(66)+acd481(129)
      acd481(129)=acd481(1)*acd481(129)
      acd481(112)=acd481(129)+acd481(128)+acd481(113)+acd481(125)+acd481(112)+a&
      &cd481(124)+acd481(116)+acd481(114)
      acd481(112)=acd481(1)*acd481(112)
      acd481(113)=-acd481(78)*acd481(118)
      acd481(114)=acd481(48)*acd481(88)
      acd481(116)=acd481(22)*acd481(56)
      acd481(106)=acd481(37)*acd481(106)
      acd481(110)=acd481(38)*acd481(110)
      acd481(124)=-acd481(38)*acd481(19)
      acd481(124)=acd481(87)+acd481(124)
      acd481(124)=acd481(18)*acd481(124)
      acd481(125)=acd481(82)*acd481(117)
      acd481(106)=acd481(125)+acd481(124)+acd481(110)+acd481(106)+acd481(116)+a&
      &cd481(114)+acd481(113)
      acd481(106)=acd481(106)*acd481(117)
      acd481(110)=acd481(38)*acd481(115)
      acd481(113)=acd481(37)*acd481(10)
      acd481(113)=acd481(83)+acd481(113)
      acd481(113)=acd481(113)*acd481(117)
      acd481(114)=acd481(48)*acd481(96)
      acd481(115)=acd481(22)*acd481(60)
      acd481(116)=acd481(37)*acd481(121)
      acd481(121)=acd481(38)*acd481(43)
      acd481(121)=acd481(95)+acd481(121)
      acd481(121)=acd481(18)*acd481(121)
      acd481(124)=acd481(37)*acd481(31)
      acd481(124)=acd481(72)+acd481(124)
      acd481(124)=acd481(1)*acd481(124)
      acd481(110)=acd481(124)+acd481(113)+acd481(121)+acd481(110)+acd481(116)+a&
      &cd481(114)+acd481(115)
      acd481(110)=acd481(4)*acd481(110)
      acd481(113)=acd481(63)*acd481(119)
      acd481(114)=acd481(29)*acd481(76)
      acd481(115)=-acd481(38)*acd481(123)
      acd481(113)=acd481(115)+acd481(114)+acd481(113)
      acd481(113)=acd481(18)*acd481(113)
      acd481(114)=acd481(37)*acd481(14)
      acd481(115)=acd481(38)*acd481(17)
      acd481(114)=acd481(115)+acd481(86)+acd481(114)
      acd481(114)=acd481(114)*acd481(117)
      acd481(115)=acd481(29)*acd481(126)
      acd481(116)=-acd481(38)*acd481(120)
      acd481(114)=acd481(114)+acd481(116)+acd481(115)
      acd481(114)=acd481(13)*acd481(114)
      acd481(115)=acd481(48)*acd481(64)
      acd481(116)=acd481(115)*acd481(118)
      acd481(117)=acd481(29)*acd481(55)
      acd481(115)=-acd481(115)+acd481(117)
      acd481(115)=acd481(22)*acd481(115)
      acd481(117)=acd481(37)*acd481(127)
      acd481(118)=-acd481(38)*acd481(122)
      acd481(106)=acd481(109)+acd481(111)+acd481(110)+acd481(112)+acd481(114)+a&
      &cd481(106)+acd481(113)+acd481(118)+acd481(117)+acd481(115)+acd481(116)
      brack(ninjaidxt1mu0)=acd481(108)
      brack(ninjaidxt0mu0)=acd481(106)
      brack(ninjaidxt0mu2)=acd481(107)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d481h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd481h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
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
end module     p0_dbard_epnemumnmubarg_d481h1l131
