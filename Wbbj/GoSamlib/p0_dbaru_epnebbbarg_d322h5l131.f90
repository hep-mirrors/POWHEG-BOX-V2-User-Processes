module     p0_dbaru_epnebbbarg_d322h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d322h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd322h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd322
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd322(1)=dotproduct(k2,ninjaE3)
      acd322(2)=dotproduct(ninjaE3,spvak1k2)
      acd322(3)=dotproduct(ninjaE3,spvak7k2)
      acd322(4)=abb322(14)
      acd322(5)=dotproduct(ninjaE3,spvak4k2)
      acd322(6)=abb322(50)
      acd322(7)=dotproduct(ninjaE3,spvak1k3)
      acd322(8)=abb322(76)
      acd322(9)=dotproduct(ninjaE3,spval6l5)
      acd322(10)=abb322(22)
      acd322(11)=abb322(19)
      acd322(12)=abb322(25)
      acd322(13)=acd322(10)*acd322(2)
      acd322(14)=acd322(11)*acd322(5)
      acd322(15)=acd322(12)*acd322(7)
      acd322(13)=acd322(15)+acd322(14)+acd322(13)
      acd322(13)=acd322(13)*acd322(9)
      acd322(14)=acd322(4)*acd322(2)
      acd322(15)=acd322(6)*acd322(5)
      acd322(16)=acd322(8)*acd322(7)
      acd322(14)=acd322(16)+acd322(14)+acd322(15)
      acd322(14)=acd322(14)*acd322(1)
      acd322(13)=acd322(14)+acd322(13)
      acd322(13)=acd322(3)*acd322(13)
      brack(ninjaidxt2mu0)=acd322(13)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd322h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(123) :: acd322
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd322(1)=dotproduct(k2,ninjaE3)
      acd322(2)=dotproduct(ninjaE3,spvak1k2)
      acd322(3)=dotproduct(ninjaE4,spvak7k2)
      acd322(4)=abb322(14)
      acd322(5)=dotproduct(ninjaE3,spvak7k2)
      acd322(6)=dotproduct(ninjaE4,spvak1k2)
      acd322(7)=dotproduct(ninjaE4,spvak4k2)
      acd322(8)=abb322(50)
      acd322(9)=dotproduct(ninjaE4,spvak1k3)
      acd322(10)=abb322(76)
      acd322(11)=dotproduct(ninjaE3,spvak4k2)
      acd322(12)=dotproduct(ninjaE3,spvak1k3)
      acd322(13)=dotproduct(k2,ninjaE4)
      acd322(14)=dotproduct(ninjaE4,spval6l5)
      acd322(15)=abb322(22)
      acd322(16)=dotproduct(ninjaE3,spval6l5)
      acd322(17)=abb322(37)
      acd322(18)=abb322(19)
      acd322(19)=abb322(25)
      acd322(20)=abb322(30)
      acd322(21)=abb322(59)
      acd322(22)=dotproduct(ninjaE3,spval6k2)
      acd322(23)=abb322(33)
      acd322(24)=abb322(48)
      acd322(25)=dotproduct(ninjaE3,spval6k3)
      acd322(26)=abb322(95)
      acd322(27)=dotproduct(k2,ninjaA)
      acd322(28)=dotproduct(ninjaA,spvak1k2)
      acd322(29)=dotproduct(ninjaA,spvak7k2)
      acd322(30)=dotproduct(ninjaA,spvak4k2)
      acd322(31)=dotproduct(ninjaA,spvak1k3)
      acd322(32)=abb322(52)
      acd322(33)=abb322(36)
      acd322(34)=abb322(28)
      acd322(35)=abb322(91)
      acd322(36)=dotproduct(l5,ninjaE3)
      acd322(37)=abb322(43)
      acd322(38)=abb322(49)
      acd322(39)=dotproduct(l6,ninjaE3)
      acd322(40)=abb322(38)
      acd322(41)=abb322(42)
      acd322(42)=abb322(57)
      acd322(43)=abb322(40)
      acd322(44)=abb322(39)
      acd322(45)=abb322(81)
      acd322(46)=dotproduct(k7,ninjaE3)
      acd322(47)=abb322(20)
      acd322(48)=abb322(41)
      acd322(49)=dotproduct(ninjaA,ninjaE3)
      acd322(50)=dotproduct(ninjaA,spval6l5)
      acd322(51)=abb322(12)
      acd322(52)=abb322(23)
      acd322(53)=abb322(18)
      acd322(54)=abb322(54)
      acd322(55)=dotproduct(ninjaE3,spvak2k3)
      acd322(56)=abb322(15)
      acd322(57)=abb322(56)
      acd322(58)=dotproduct(ninjaE3,spvak1l5)
      acd322(59)=abb322(21)
      acd322(60)=abb322(27)
      acd322(61)=abb322(47)
      acd322(62)=dotproduct(ninjaE3,spval6k7)
      acd322(63)=dotproduct(ninjaE3,spval5k2)
      acd322(64)=abb322(51)
      acd322(65)=dotproduct(ninjaE3,spvak4l5)
      acd322(66)=abb322(55)
      acd322(67)=abb322(98)
      acd322(68)=dotproduct(ninjaE3,spvak2l5)
      acd322(69)=abb322(74)
      acd322(70)=abb322(53)
      acd322(71)=abb322(77)
      acd322(72)=dotproduct(ninjaA,spval6k2)
      acd322(73)=dotproduct(ninjaA,spval6k3)
      acd322(74)=abb322(45)
      acd322(75)=dotproduct(l5,ninjaA)
      acd322(76)=abb322(72)
      acd322(77)=dotproduct(l6,ninjaA)
      acd322(78)=abb322(68)
      acd322(79)=dotproduct(k7,ninjaA)
      acd322(80)=abb322(136)
      acd322(81)=dotproduct(ninjaA,ninjaA)
      acd322(82)=abb322(35)
      acd322(83)=dotproduct(ninjaA,spvak2k3)
      acd322(84)=dotproduct(ninjaA,spvak1l5)
      acd322(85)=dotproduct(ninjaA,spval6k7)
      acd322(86)=dotproduct(ninjaA,spval5k2)
      acd322(87)=dotproduct(ninjaA,spvak4l5)
      acd322(88)=dotproduct(ninjaA,spvak2l5)
      acd322(89)=abb322(16)
      acd322(90)=abb322(29)
      acd322(91)=abb322(13)
      acd322(92)=abb322(24)
      acd322(93)=abb322(34)
      acd322(94)=abb322(31)
      acd322(95)=abb322(67)
      acd322(96)=acd322(10)*acd322(9)
      acd322(97)=acd322(8)*acd322(7)
      acd322(98)=acd322(4)*acd322(6)
      acd322(96)=acd322(98)+acd322(96)+acd322(97)
      acd322(96)=acd322(96)*acd322(1)
      acd322(97)=acd322(19)*acd322(9)
      acd322(98)=acd322(18)*acd322(7)
      acd322(99)=acd322(15)*acd322(6)
      acd322(97)=acd322(99)+acd322(97)+acd322(98)
      acd322(97)=acd322(97)*acd322(16)
      acd322(98)=acd322(19)*acd322(14)
      acd322(99)=acd322(10)*acd322(13)
      acd322(98)=acd322(98)+acd322(99)
      acd322(98)=acd322(98)*acd322(12)
      acd322(99)=acd322(18)*acd322(14)
      acd322(100)=acd322(8)*acd322(13)
      acd322(99)=acd322(99)+acd322(100)
      acd322(99)=acd322(99)*acd322(11)
      acd322(100)=acd322(15)*acd322(14)
      acd322(101)=acd322(4)*acd322(13)
      acd322(100)=acd322(100)+acd322(101)
      acd322(100)=acd322(100)*acd322(2)
      acd322(96)=acd322(100)+acd322(96)+acd322(98)+acd322(99)+acd322(97)+acd322&
      &(20)
      acd322(97)=acd322(5)*acd322(96)
      acd322(98)=acd322(12)*acd322(10)
      acd322(99)=acd322(11)*acd322(8)
      acd322(100)=acd322(2)*acd322(4)
      acd322(98)=acd322(100)+acd322(98)+acd322(99)
      acd322(99)=acd322(98)*acd322(1)
      acd322(100)=acd322(3)*acd322(99)
      acd322(101)=acd322(25)*acd322(26)
      acd322(102)=acd322(22)*acd322(23)
      acd322(101)=acd322(101)+acd322(102)
      acd322(102)=acd322(16)*acd322(3)
      acd322(103)=acd322(102)*acd322(19)
      acd322(103)=acd322(103)+acd322(24)
      acd322(104)=acd322(12)*acd322(103)
      acd322(105)=acd322(102)*acd322(18)
      acd322(105)=acd322(105)+acd322(21)
      acd322(106)=acd322(11)*acd322(105)
      acd322(102)=acd322(102)*acd322(15)
      acd322(102)=acd322(102)+acd322(17)
      acd322(107)=acd322(2)*acd322(102)
      acd322(97)=acd322(97)+acd322(100)+acd322(107)+acd322(106)+acd322(104)+acd&
      &322(101)
      acd322(100)=acd322(19)*acd322(31)
      acd322(104)=acd322(18)*acd322(30)
      acd322(106)=acd322(15)*acd322(28)
      acd322(100)=acd322(100)+acd322(104)+acd322(106)+acd322(57)
      acd322(104)=acd322(100)*acd322(16)
      acd322(106)=acd322(10)*acd322(31)
      acd322(107)=acd322(8)*acd322(30)
      acd322(108)=acd322(4)*acd322(28)
      acd322(106)=acd322(107)+acd322(106)+acd322(108)+acd322(33)
      acd322(107)=acd322(106)*acd322(1)
      acd322(108)=acd322(18)*acd322(50)
      acd322(109)=acd322(27)*acd322(8)
      acd322(108)=acd322(54)+acd322(108)+acd322(109)
      acd322(108)=acd322(108)*acd322(11)
      acd322(109)=acd322(19)*acd322(50)
      acd322(110)=acd322(27)*acd322(10)
      acd322(109)=acd322(61)+acd322(109)+acd322(110)
      acd322(109)=acd322(109)*acd322(12)
      acd322(110)=acd322(15)*acd322(50)
      acd322(111)=acd322(27)*acd322(4)
      acd322(110)=acd322(110)+acd322(111)+acd322(51)
      acd322(110)=acd322(110)*acd322(2)
      acd322(111)=acd322(69)*acd322(68)
      acd322(112)=acd322(66)*acd322(65)
      acd322(113)=acd322(64)*acd322(63)
      acd322(114)=acd322(59)*acd322(58)
      acd322(115)=acd322(56)*acd322(55)
      acd322(116)=acd322(36)*acd322(37)
      acd322(117)=acd322(38)*acd322(62)
      acd322(118)=acd322(46)*acd322(48)
      acd322(119)=acd322(39)*acd322(41)
      acd322(120)=acd322(25)*acd322(67)
      acd322(121)=acd322(22)*acd322(60)
      acd322(122)=2.0_ki*acd322(49)
      acd322(123)=acd322(122)*acd322(20)
      acd322(104)=acd322(123)+acd322(114)+acd322(115)+acd322(116)+acd322(117)+a&
      &cd322(111)+acd322(120)+acd322(121)+acd322(112)+acd322(113)+acd322(110)+a&
      &cd322(118)+acd322(119)+acd322(104)+acd322(107)+acd322(108)+acd322(109)
      acd322(107)=acd322(5)*acd322(53)
      acd322(107)=acd322(107)+acd322(104)
      acd322(107)=acd322(5)*acd322(107)
      acd322(108)=acd322(17)*acd322(122)
      acd322(109)=acd322(46)*acd322(47)
      acd322(110)=acd322(39)*acd322(40)
      acd322(111)=acd322(22)*acd322(52)
      acd322(108)=acd322(111)+acd322(110)+acd322(108)+acd322(109)
      acd322(108)=acd322(2)*acd322(108)
      acd322(109)=acd322(12)*acd322(19)
      acd322(110)=acd322(11)*acd322(18)
      acd322(111)=acd322(2)*acd322(15)
      acd322(109)=acd322(111)+acd322(109)+acd322(110)
      acd322(109)=acd322(16)*acd322(109)
      acd322(99)=acd322(99)+acd322(109)
      acd322(99)=acd322(29)*acd322(99)
      acd322(109)=acd322(39)+acd322(46)
      acd322(110)=acd322(43)*acd322(109)
      acd322(111)=acd322(38)*acd322(36)
      acd322(112)=acd322(23)*acd322(122)
      acd322(110)=acd322(111)+acd322(112)+acd322(110)
      acd322(110)=acd322(22)*acd322(110)
      acd322(111)=acd322(39)-acd322(46)
      acd322(112)=-acd322(44)*acd322(111)
      acd322(113)=acd322(24)*acd322(122)
      acd322(114)=acd322(22)*acd322(71)
      acd322(112)=acd322(114)+acd322(113)+acd322(112)
      acd322(112)=acd322(12)*acd322(112)
      acd322(111)=-acd322(42)*acd322(111)
      acd322(113)=acd322(21)*acd322(122)
      acd322(114)=acd322(22)*acd322(70)
      acd322(111)=acd322(114)+acd322(113)+acd322(111)
      acd322(111)=acd322(11)*acd322(111)
      acd322(113)=acd322(25)*acd322(35)
      acd322(114)=acd322(22)*acd322(34)
      acd322(115)=acd322(2)*acd322(32)
      acd322(113)=acd322(115)+acd322(113)+acd322(114)
      acd322(113)=acd322(1)*acd322(113)
      acd322(109)=acd322(45)*acd322(109)
      acd322(114)=acd322(26)*acd322(122)
      acd322(109)=acd322(114)+acd322(109)
      acd322(109)=acd322(25)*acd322(109)
      acd322(99)=acd322(107)+acd322(99)+acd322(113)+acd322(108)+acd322(111)+acd&
      &322(112)+acd322(109)+acd322(110)
      acd322(96)=ninjaP*acd322(96)
      acd322(100)=acd322(50)*acd322(100)
      acd322(106)=acd322(27)*acd322(106)
      acd322(107)=acd322(69)*acd322(88)
      acd322(108)=acd322(66)*acd322(87)
      acd322(109)=acd322(64)*acd322(86)
      acd322(110)=acd322(59)*acd322(84)
      acd322(111)=acd322(56)*acd322(83)
      acd322(112)=acd322(37)*acd322(75)
      acd322(113)=acd322(73)*acd322(67)
      acd322(114)=acd322(81)*acd322(20)
      acd322(115)=acd322(79)*acd322(48)
      acd322(116)=acd322(77)*acd322(41)
      acd322(117)=acd322(38)*acd322(85)
      acd322(118)=acd322(72)*acd322(60)
      acd322(119)=acd322(31)*acd322(61)
      acd322(120)=acd322(30)*acd322(54)
      acd322(121)=acd322(28)*acd322(51)
      acd322(123)=acd322(29)*acd322(53)
      acd322(96)=2.0_ki*acd322(123)+acd322(106)+acd322(121)+acd322(120)+acd322(&
      &119)+acd322(118)+acd322(117)+acd322(116)+acd322(115)+acd322(114)+acd322(&
      &113)+acd322(112)+acd322(111)+acd322(110)+acd322(109)+acd322(108)+acd322(&
      &90)+acd322(107)+acd322(96)+acd322(100)
      acd322(96)=acd322(5)*acd322(96)
      acd322(100)=acd322(29)*acd322(104)
      acd322(104)=acd322(81)*acd322(23)
      acd322(106)=acd322(77)+acd322(79)
      acd322(107)=acd322(43)*acd322(106)
      acd322(108)=acd322(38)*acd322(75)
      acd322(109)=acd322(31)*acd322(71)
      acd322(110)=acd322(30)*acd322(70)
      acd322(111)=acd322(28)*acd322(52)
      acd322(112)=acd322(27)*acd322(34)
      acd322(104)=acd322(112)+acd322(111)+acd322(110)+acd322(109)+acd322(108)+a&
      &cd322(107)+acd322(92)+acd322(104)
      acd322(104)=acd322(22)*acd322(104)
      acd322(107)=acd322(81)*acd322(17)
      acd322(108)=acd322(79)*acd322(47)
      acd322(109)=acd322(77)*acd322(40)
      acd322(110)=acd322(72)*acd322(52)
      acd322(111)=acd322(27)*acd322(32)
      acd322(102)=ninjaP*acd322(102)
      acd322(102)=acd322(102)+acd322(111)+acd322(110)+acd322(109)+acd322(108)+a&
      &cd322(89)+acd322(107)
      acd322(102)=acd322(2)*acd322(102)
      acd322(107)=acd322(26)*acd322(73)
      acd322(108)=acd322(72)*acd322(23)
      acd322(109)=acd322(31)*acd322(24)
      acd322(110)=acd322(30)*acd322(21)
      acd322(111)=acd322(28)*acd322(17)
      acd322(107)=acd322(111)+acd322(110)+acd322(109)+acd322(108)+acd322(82)+ac&
      &d322(107)
      acd322(107)=acd322(107)*acd322(122)
      acd322(108)=acd322(81)*acd322(24)
      acd322(109)=acd322(77)-acd322(79)
      acd322(110)=-acd322(44)*acd322(109)
      acd322(111)=acd322(72)*acd322(71)
      acd322(103)=ninjaP*acd322(103)
      acd322(103)=acd322(103)+acd322(111)+acd322(110)+acd322(93)+acd322(108)
      acd322(103)=acd322(12)*acd322(103)
      acd322(108)=acd322(81)*acd322(21)
      acd322(109)=-acd322(42)*acd322(109)
      acd322(110)=acd322(72)*acd322(70)
      acd322(105)=ninjaP*acd322(105)
      acd322(105)=acd322(105)+acd322(110)+acd322(109)+acd322(91)+acd322(108)
      acd322(105)=acd322(11)*acd322(105)
      acd322(98)=ninjaP*acd322(98)*acd322(3)
      acd322(108)=acd322(73)*acd322(35)
      acd322(109)=acd322(72)*acd322(34)
      acd322(110)=acd322(28)*acd322(32)
      acd322(98)=acd322(110)+acd322(109)+acd322(74)+acd322(108)+acd322(98)
      acd322(98)=acd322(1)*acd322(98)
      acd322(108)=acd322(31)*acd322(44)
      acd322(109)=acd322(30)*acd322(42)
      acd322(108)=acd322(108)+acd322(109)
      acd322(109)=acd322(45)*acd322(73)
      acd322(110)=acd322(72)*acd322(43)
      acd322(109)=acd322(109)+acd322(110)
      acd322(110)=acd322(28)*acd322(47)
      acd322(110)=acd322(110)+acd322(80)+acd322(109)+acd322(108)
      acd322(110)=acd322(46)*acd322(110)
      acd322(111)=acd322(28)*acd322(40)
      acd322(108)=acd322(111)+acd322(78)+acd322(109)-acd322(108)
      acd322(108)=acd322(39)*acd322(108)
      acd322(109)=acd322(81)*acd322(26)
      acd322(106)=acd322(45)*acd322(106)
      acd322(111)=acd322(27)*acd322(35)
      acd322(106)=acd322(111)+acd322(106)+acd322(95)+acd322(109)
      acd322(106)=acd322(25)*acd322(106)
      acd322(101)=ninjaP*acd322(101)
      acd322(109)=acd322(72)*acd322(38)
      acd322(109)=acd322(109)+acd322(76)
      acd322(109)=acd322(36)*acd322(109)
      acd322(111)=acd322(62)*acd322(94)
      acd322(96)=acd322(96)+acd322(100)+acd322(98)+acd322(102)+acd322(105)+acd3&
      &22(103)+acd322(101)+acd322(104)+acd322(106)+acd322(108)+acd322(110)+acd3&
      &22(107)+acd322(111)+acd322(109)
      brack(ninjaidxt1mu0)=acd322(99)
      brack(ninjaidxt0mu0)=acd322(96)
      brack(ninjaidxt0mu2)=acd322(97)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d322h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd322h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d322h5l131
