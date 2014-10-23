module     p0_dbaru_epnebbbarg_d85h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d85h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd85h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd85
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd85(1)=dotproduct(k2,ninjaE3)
      acd85(2)=dotproduct(ninjaE3,spvak1k2)
      acd85(3)=dotproduct(ninjaE3,spvak4k3)
      acd85(4)=dotproduct(ninjaE3,spvak7k2)
      acd85(5)=abb85(72)
      acd85(6)=dotproduct(ninjaE3,spval6l5)
      acd85(7)=abb85(26)
      acd85(8)=-acd85(5)*acd85(1)
      acd85(9)=acd85(7)*acd85(6)
      acd85(8)=acd85(8)+acd85(9)
      acd85(8)=acd85(2)*acd85(8)*acd85(4)*acd85(3)
      brack(ninjaidxt2mu0)=acd85(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd85h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(123) :: acd85
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd85(1)=dotproduct(k2,ninjaE3)
      acd85(2)=dotproduct(ninjaE3,spvak1k2)
      acd85(3)=dotproduct(ninjaE3,spvak4k3)
      acd85(4)=dotproduct(ninjaE4,spvak7k2)
      acd85(5)=abb85(72)
      acd85(6)=dotproduct(ninjaE3,spvak7k2)
      acd85(7)=dotproduct(ninjaE4,spvak4k3)
      acd85(8)=dotproduct(ninjaE4,spvak1k2)
      acd85(9)=abb85(52)
      acd85(10)=dotproduct(ninjaE3,spvak4k2)
      acd85(11)=abb85(33)
      acd85(12)=dotproduct(k2,ninjaE4)
      acd85(13)=dotproduct(ninjaE4,spval6l5)
      acd85(14)=abb85(26)
      acd85(15)=dotproduct(ninjaE3,spval6l5)
      acd85(16)=abb85(43)
      acd85(17)=abb85(25)
      acd85(18)=abb85(62)
      acd85(19)=dotproduct(ninjaE3,spvak1l5)
      acd85(20)=abb85(47)
      acd85(21)=dotproduct(ninjaE3,spval6k2)
      acd85(22)=abb85(63)
      acd85(23)=abb85(38)
      acd85(24)=dotproduct(k1,ninjaE3)
      acd85(25)=abb85(44)
      acd85(26)=dotproduct(k2,ninjaA)
      acd85(27)=abb85(73)
      acd85(28)=dotproduct(k3,ninjaE3)
      acd85(29)=dotproduct(k4,ninjaE3)
      acd85(30)=dotproduct(ninjaA,ninjaE3)
      acd85(31)=dotproduct(ninjaA,spvak1k2)
      acd85(32)=dotproduct(ninjaA,spvak4k3)
      acd85(33)=dotproduct(ninjaA,spvak7k2)
      acd85(34)=abb85(31)
      acd85(35)=abb85(42)
      acd85(36)=abb85(29)
      acd85(37)=abb85(21)
      acd85(38)=dotproduct(ninjaE3,spvak1k3)
      acd85(39)=abb85(55)
      acd85(40)=abb85(64)
      acd85(41)=abb85(9)
      acd85(42)=abb85(35)
      acd85(43)=abb85(39)
      acd85(44)=dotproduct(ninjaA,spval6l5)
      acd85(45)=abb85(7)
      acd85(46)=abb85(57)
      acd85(47)=abb85(68)
      acd85(48)=abb85(46)
      acd85(49)=abb85(69)
      acd85(50)=dotproduct(ninjaE3,spvak3k2)
      acd85(51)=abb85(17)
      acd85(52)=dotproduct(ninjaE3,spvak1k7)
      acd85(53)=abb85(19)
      acd85(54)=abb85(71)
      acd85(55)=abb85(22)
      acd85(56)=abb85(56)
      acd85(57)=dotproduct(k1,ninjaA)
      acd85(58)=abb85(13)
      acd85(59)=dotproduct(ninjaA,spvak4k2)
      acd85(60)=abb85(51)
      acd85(61)=dotproduct(k3,ninjaA)
      acd85(62)=abb85(36)
      acd85(63)=dotproduct(k4,ninjaA)
      acd85(64)=dotproduct(k7,ninjaE3)
      acd85(65)=abb85(53)
      acd85(66)=dotproduct(ninjaA,ninjaA)
      acd85(67)=abb85(10)
      acd85(68)=dotproduct(ninjaA,spvak1l5)
      acd85(69)=dotproduct(ninjaA,spvak1k3)
      acd85(70)=dotproduct(ninjaA,spval6k2)
      acd85(71)=abb85(66)
      acd85(72)=abb85(8)
      acd85(73)=abb85(45)
      acd85(74)=abb85(54)
      acd85(75)=abb85(40)
      acd85(76)=abb85(32)
      acd85(77)=abb85(28)
      acd85(78)=abb85(65)
      acd85(79)=abb85(60)
      acd85(80)=abb85(34)
      acd85(81)=abb85(49)
      acd85(82)=abb85(50)
      acd85(83)=abb85(24)
      acd85(84)=abb85(41)
      acd85(85)=dotproduct(ninjaA,spvak3k2)
      acd85(86)=dotproduct(ninjaA,spvak1k7)
      acd85(87)=abb85(27)
      acd85(88)=abb85(15)
      acd85(89)=abb85(18)
      acd85(90)=abb85(14)
      acd85(91)=abb85(20)
      acd85(92)=acd85(21)*acd85(22)
      acd85(93)=acd85(19)*acd85(20)
      acd85(92)=acd85(92)+acd85(93)
      acd85(93)=acd85(14)*acd85(13)
      acd85(94)=acd85(5)*acd85(12)
      acd85(93)=acd85(93)-acd85(94)
      acd85(93)=acd85(93)*acd85(2)
      acd85(94)=acd85(8)*acd85(15)*acd85(14)
      acd85(93)=acd85(93)+acd85(94)
      acd85(94)=acd85(3)*acd85(93)
      acd85(95)=acd85(2)*acd85(5)
      acd85(96)=acd85(95)*acd85(7)
      acd85(97)=acd85(8)*acd85(3)*acd85(5)
      acd85(96)=acd85(96)+acd85(97)-acd85(9)
      acd85(97)=-acd85(1)*acd85(96)
      acd85(98)=-acd85(10)*acd85(17)
      acd85(99)=acd85(2)*acd85(16)
      acd85(100)=acd85(2)*acd85(14)
      acd85(101)=acd85(100)*acd85(7)
      acd85(101)=acd85(101)+acd85(18)
      acd85(102)=acd85(15)*acd85(101)
      acd85(94)=acd85(97)+acd85(94)+acd85(102)+acd85(99)+acd85(98)+acd85(92)
      acd85(94)=acd85(6)*acd85(94)
      acd85(97)=acd85(10)*acd85(11)
      acd85(98)=acd85(95)*acd85(3)
      acd85(99)=-acd85(4)*acd85(98)
      acd85(97)=acd85(97)+acd85(99)
      acd85(97)=acd85(1)*acd85(97)
      acd85(99)=acd85(15)*acd85(10)
      acd85(102)=acd85(23)*acd85(99)
      acd85(103)=acd85(100)*acd85(3)
      acd85(104)=acd85(15)*acd85(4)*acd85(103)
      acd85(94)=acd85(94)+acd85(97)+acd85(102)+acd85(104)
      acd85(97)=acd85(21)*acd85(40)
      acd85(102)=acd85(19)*acd85(37)
      acd85(97)=acd85(97)-acd85(102)
      acd85(102)=acd85(28)+acd85(29)
      acd85(104)=-acd85(97)*acd85(102)
      acd85(105)=2.0_ki*acd85(30)
      acd85(106)=acd85(105)*acd85(16)
      acd85(107)=acd85(102)*acd85(42)
      acd85(106)=acd85(106)+acd85(107)
      acd85(106)=acd85(106)*acd85(2)
      acd85(107)=acd85(105)*acd85(17)
      acd85(108)=acd85(102)*acd85(43)
      acd85(107)=acd85(107)-acd85(108)
      acd85(107)=acd85(107)*acd85(10)
      acd85(92)=acd85(92)*acd85(105)
      acd85(92)=acd85(92)+acd85(106)-acd85(107)+acd85(104)
      acd85(104)=acd85(52)*acd85(53)
      acd85(106)=acd85(24)*acd85(25)
      acd85(107)=acd85(17)*acd85(50)
      acd85(108)=acd85(21)*acd85(54)
      acd85(109)=acd85(19)*acd85(51)
      acd85(104)=-acd85(109)-acd85(104)-acd85(106)+acd85(107)-acd85(108)
      acd85(106)=acd85(5)*acd85(26)
      acd85(106)=acd85(106)-acd85(45)
      acd85(107)=acd85(14)*acd85(44)
      acd85(107)=acd85(106)-acd85(107)
      acd85(107)=acd85(107)*acd85(2)
      acd85(108)=acd85(10)*acd85(48)
      acd85(107)=-acd85(107)+acd85(108)-acd85(104)
      acd85(108)=acd85(6)*acd85(47)
      acd85(109)=acd85(14)*acd85(31)
      acd85(109)=acd85(109)+acd85(49)
      acd85(110)=acd85(15)*acd85(109)
      acd85(110)=acd85(108)+acd85(110)+acd85(107)
      acd85(110)=acd85(3)*acd85(110)
      acd85(111)=acd85(102)-acd85(105)
      acd85(111)=acd85(111)*acd85(9)
      acd85(112)=acd85(10)*acd85(35)
      acd85(113)=acd85(95)*acd85(32)
      acd85(114)=acd85(38)*acd85(39)
      acd85(97)=-acd85(113)-acd85(111)+acd85(112)+acd85(114)+acd85(97)
      acd85(111)=acd85(15)*acd85(36)
      acd85(112)=acd85(5)*acd85(31)
      acd85(112)=acd85(112)-acd85(34)
      acd85(113)=-acd85(3)*acd85(112)
      acd85(111)=acd85(113)+acd85(111)+acd85(97)
      acd85(111)=acd85(1)*acd85(111)
      acd85(113)=acd85(10)*acd85(55)
      acd85(115)=acd85(105)*acd85(18)
      acd85(116)=acd85(14)*acd85(32)
      acd85(116)=acd85(116)+acd85(46)
      acd85(117)=acd85(116)*acd85(2)
      acd85(118)=acd85(38)*acd85(56)
      acd85(113)=acd85(113)+acd85(115)+acd85(117)+acd85(118)
      acd85(115)=acd85(15)*acd85(113)
      acd85(110)=acd85(111)+acd85(115)+acd85(110)+acd85(92)
      acd85(110)=acd85(6)*acd85(110)
      acd85(111)=acd85(105)*acd85(10)
      acd85(115)=acd85(11)*acd85(111)
      acd85(99)=acd85(41)*acd85(99)
      acd85(98)=-acd85(33)*acd85(98)
      acd85(117)=acd85(1)*acd85(10)*acd85(27)
      acd85(98)=acd85(117)+acd85(98)+acd85(115)+acd85(99)
      acd85(98)=acd85(1)*acd85(98)
      acd85(99)=acd85(23)*acd85(111)
      acd85(103)=acd85(33)*acd85(103)
      acd85(99)=acd85(99)+acd85(103)
      acd85(99)=acd85(15)*acd85(99)
      acd85(98)=acd85(110)+acd85(98)+acd85(99)
      acd85(93)=ninjaP*acd85(93)
      acd85(99)=acd85(44)*acd85(109)
      acd85(103)=-acd85(31)*acd85(106)
      acd85(110)=acd85(53)*acd85(86)
      acd85(115)=acd85(25)*acd85(57)
      acd85(117)=acd85(70)*acd85(54)
      acd85(119)=acd85(68)*acd85(51)
      acd85(120)=acd85(59)*acd85(48)
      acd85(121)=-acd85(17)*acd85(85)
      acd85(122)=acd85(26)*acd85(34)
      acd85(123)=acd85(33)*acd85(47)
      acd85(93)=2.0_ki*acd85(123)+acd85(122)+acd85(121)+acd85(120)+acd85(119)+a&
      &cd85(117)+acd85(115)+acd85(87)+acd85(110)+acd85(103)+acd85(99)+acd85(93)
      acd85(93)=acd85(3)*acd85(93)
      acd85(99)=acd85(31)*acd85(116)
      acd85(101)=ninjaP*acd85(101)
      acd85(103)=acd85(56)*acd85(69)
      acd85(110)=acd85(66)*acd85(18)
      acd85(115)=acd85(59)*acd85(55)
      acd85(117)=acd85(26)*acd85(36)
      acd85(119)=acd85(32)*acd85(49)
      acd85(99)=acd85(119)+acd85(117)+acd85(115)+acd85(110)+acd85(89)+acd85(103&
      &)+acd85(101)+acd85(99)
      acd85(99)=acd85(15)*acd85(99)
      acd85(101)=acd85(40)*acd85(70)
      acd85(103)=acd85(37)*acd85(68)
      acd85(101)=acd85(101)-acd85(103)
      acd85(96)=-ninjaP*acd85(96)
      acd85(103)=-acd85(32)*acd85(112)
      acd85(110)=acd85(39)*acd85(69)
      acd85(115)=acd85(59)*acd85(35)
      acd85(117)=acd85(44)*acd85(36)
      acd85(119)=acd85(61)+acd85(63)
      acd85(120)=acd85(66)-acd85(119)
      acd85(120)=acd85(9)*acd85(120)
      acd85(96)=acd85(120)+acd85(117)+acd85(115)+acd85(72)+acd85(110)+acd85(96)&
      &+acd85(101)+acd85(103)
      acd85(96)=acd85(1)*acd85(96)
      acd85(103)=acd85(26)*acd85(9)
      acd85(110)=acd85(22)*acd85(70)
      acd85(115)=acd85(20)*acd85(68)
      acd85(117)=-acd85(17)*acd85(59)
      acd85(120)=acd85(44)*acd85(18)
      acd85(121)=acd85(31)*acd85(16)
      acd85(110)=acd85(103)+acd85(121)+acd85(120)+acd85(117)+acd85(115)+acd85(8&
      &2)+acd85(110)
      acd85(110)=acd85(110)*acd85(105)
      acd85(104)=acd85(108)-acd85(104)
      acd85(104)=acd85(32)*acd85(104)
      acd85(108)=ninjaP+acd85(66)
      acd85(115)=-acd85(17)*acd85(108)
      acd85(117)=acd85(43)*acd85(119)
      acd85(120)=acd85(44)*acd85(55)
      acd85(121)=acd85(26)*acd85(35)
      acd85(122)=acd85(32)*acd85(48)
      acd85(115)=acd85(122)+acd85(121)+acd85(120)+acd85(88)+acd85(117)+acd85(11&
      &5)
      acd85(115)=acd85(10)*acd85(115)
      acd85(117)=acd85(59)*acd85(43)
      acd85(120)=acd85(31)*acd85(42)
      acd85(101)=acd85(117)-acd85(101)-acd85(103)+acd85(120)-acd85(77)
      acd85(101)=acd85(101)*acd85(102)
      acd85(103)=acd85(16)*acd85(108)
      acd85(116)=acd85(44)*acd85(116)
      acd85(106)=-acd85(32)*acd85(106)
      acd85(117)=acd85(42)*acd85(119)
      acd85(103)=acd85(117)+acd85(106)+acd85(116)+acd85(103)
      acd85(103)=acd85(2)*acd85(103)
      acd85(106)=acd85(22)*acd85(108)
      acd85(116)=acd85(119)-acd85(26)
      acd85(117)=-acd85(40)*acd85(116)
      acd85(106)=acd85(117)+acd85(106)
      acd85(106)=acd85(21)*acd85(106)
      acd85(117)=acd85(20)*acd85(108)
      acd85(116)=acd85(37)*acd85(116)
      acd85(116)=acd85(116)+acd85(117)
      acd85(116)=acd85(19)*acd85(116)
      acd85(117)=acd85(52)*acd85(91)
      acd85(119)=acd85(50)*acd85(90)
      acd85(120)=acd85(24)*acd85(58)
      acd85(118)=acd85(44)*acd85(118)
      acd85(114)=acd85(26)*acd85(114)
      acd85(93)=acd85(96)+acd85(93)+acd85(99)+acd85(103)+acd85(115)+acd85(110)+&
      &acd85(116)+acd85(106)+acd85(114)+acd85(118)+acd85(120)+acd85(117)+acd85(&
      &119)+acd85(104)+acd85(101)
      acd85(93)=acd85(6)*acd85(93)
      acd85(96)=acd85(33)*acd85(97)
      acd85(97)=acd85(11)*acd85(108)
      acd85(99)=acd85(44)*acd85(41)
      acd85(101)=acd85(26)*acd85(27)
      acd85(97)=2.0_ki*acd85(101)+acd85(99)+acd85(73)+acd85(97)
      acd85(97)=acd85(10)*acd85(97)
      acd85(99)=acd85(59)*acd85(11)
      acd85(99)=acd85(67)+acd85(99)
      acd85(99)=acd85(99)*acd85(105)
      acd85(101)=acd85(59)*acd85(41)
      acd85(103)=acd85(33)*acd85(36)
      acd85(101)=acd85(103)+acd85(74)+acd85(101)
      acd85(101)=acd85(15)*acd85(101)
      acd85(103)=ninjaP*acd85(4)
      acd85(95)=-acd85(95)*acd85(103)
      acd85(104)=-acd85(33)*acd85(112)
      acd85(95)=acd85(104)+acd85(71)+acd85(95)
      acd85(95)=acd85(3)*acd85(95)
      acd85(104)=acd85(62)*acd85(102)
      acd85(106)=acd85(64)*acd85(65)
      acd85(110)=acd85(59)*acd85(27)
      acd85(110)=acd85(60)+acd85(110)
      acd85(110)=acd85(1)*acd85(110)
      acd85(95)=acd85(110)+acd85(95)+acd85(101)+acd85(96)+acd85(97)+acd85(99)+a&
      &cd85(106)+acd85(104)
      acd85(95)=acd85(1)*acd85(95)
      acd85(92)=acd85(33)*acd85(92)
      acd85(96)=acd85(33)*acd85(107)
      acd85(97)=acd85(100)*acd85(103)
      acd85(99)=acd85(33)*acd85(109)
      acd85(97)=acd85(97)+acd85(99)
      acd85(97)=acd85(15)*acd85(97)
      acd85(99)=acd85(64)*acd85(78)
      acd85(100)=acd85(81)*acd85(105)
      acd85(96)=acd85(97)+acd85(96)+acd85(99)+acd85(100)
      acd85(96)=acd85(3)*acd85(96)
      acd85(97)=acd85(33)*acd85(113)
      acd85(99)=acd85(59)*acd85(23)
      acd85(99)=acd85(84)+acd85(99)
      acd85(99)=acd85(99)*acd85(105)
      acd85(100)=acd85(23)*acd85(108)
      acd85(101)=acd85(26)*acd85(41)
      acd85(100)=acd85(101)+acd85(100)
      acd85(100)=acd85(10)*acd85(100)
      acd85(101)=acd85(64)*acd85(79)
      acd85(97)=acd85(97)+acd85(100)+acd85(101)+acd85(99)
      acd85(97)=acd85(15)*acd85(97)
      acd85(99)=acd85(76)*acd85(102)
      acd85(100)=-acd85(64)*acd85(62)
      acd85(101)=acd85(80)*acd85(105)
      acd85(99)=acd85(101)+acd85(100)+acd85(99)
      acd85(99)=acd85(99)*acd85(105)
      acd85(100)=acd85(44)*acd85(23)
      acd85(101)=acd85(26)*acd85(11)
      acd85(100)=acd85(101)+acd85(83)+acd85(100)
      acd85(100)=acd85(100)*acd85(111)
      acd85(101)=acd85(64)*acd85(75)*acd85(102)
      acd85(92)=acd85(93)+acd85(95)+acd85(96)+acd85(97)+acd85(92)+acd85(100)+ac&
      &d85(99)+acd85(101)
      brack(ninjaidxt1mu0)=acd85(98)
      brack(ninjaidxt0mu0)=acd85(92)
      brack(ninjaidxt0mu2)=acd85(94)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d85h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd85h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d85h5l131
