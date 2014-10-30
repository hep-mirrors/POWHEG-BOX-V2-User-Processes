module     p0_dbaru_epnebbbarg_d67h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d67h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd67h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd67
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd67(1)=dotproduct(ninjaE3,spvak1k2)
      acd67(2)=dotproduct(ninjaE3,spvak4k3)
      acd67(3)=dotproduct(ninjaE3,spval5k2)
      acd67(4)=dotproduct(ninjaE3,spvak7k2)
      acd67(5)=abb67(51)
      acd67(6)=dotproduct(ninjaE3,spval6k2)
      acd67(7)=abb67(52)
      acd67(8)=acd67(5)*acd67(3)
      acd67(9)=acd67(7)*acd67(6)
      acd67(8)=acd67(8)+acd67(9)
      acd67(8)=acd67(1)*acd67(8)*acd67(4)*acd67(2)
      brack(ninjaidxt2mu0)=acd67(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd67h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(128) :: acd67
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd67(1)=dotproduct(ninjaE3,spvak4k3)
      acd67(2)=dotproduct(ninjaE3,spvak7k2)
      acd67(3)=dotproduct(ninjaE3,spval5k2)
      acd67(4)=dotproduct(ninjaE4,spvak1k2)
      acd67(5)=abb67(51)
      acd67(6)=dotproduct(ninjaE3,spval6k2)
      acd67(7)=abb67(52)
      acd67(8)=dotproduct(ninjaE3,spvak1k2)
      acd67(9)=dotproduct(ninjaE4,spval5k2)
      acd67(10)=dotproduct(ninjaE4,spval6k2)
      acd67(11)=dotproduct(ninjaE4,spvak7k2)
      acd67(12)=dotproduct(ninjaE4,spvak4k3)
      acd67(13)=abb67(80)
      acd67(14)=abb67(99)
      acd67(15)=dotproduct(ninjaE3,spvak4k2)
      acd67(16)=abb67(36)
      acd67(17)=abb67(10)
      acd67(18)=abb67(42)
      acd67(19)=dotproduct(k1,ninjaE3)
      acd67(20)=abb67(61)
      acd67(21)=abb67(98)
      acd67(22)=abb67(35)
      acd67(23)=abb67(46)
      acd67(24)=abb67(41)
      acd67(25)=dotproduct(k3,ninjaE3)
      acd67(26)=abb67(57)
      acd67(27)=abb67(95)
      acd67(28)=dotproduct(k4,ninjaE3)
      acd67(29)=dotproduct(ninjaA,ninjaE3)
      acd67(30)=dotproduct(ninjaA,spvak4k3)
      acd67(31)=dotproduct(ninjaA,spvak7k2)
      acd67(32)=dotproduct(ninjaA,spval5k2)
      acd67(33)=dotproduct(ninjaA,spval6k2)
      acd67(34)=dotproduct(ninjaA,spvak1k2)
      acd67(35)=abb67(29)
      acd67(36)=abb67(22)
      acd67(37)=abb67(17)
      acd67(38)=abb67(33)
      acd67(39)=dotproduct(ninjaE3,spvak3k2)
      acd67(40)=abb67(56)
      acd67(41)=abb67(23)
      acd67(42)=abb67(9)
      acd67(43)=abb67(49)
      acd67(44)=abb67(12)
      acd67(45)=abb67(26)
      acd67(46)=abb67(48)
      acd67(47)=abb67(20)
      acd67(48)=abb67(53)
      acd67(49)=dotproduct(ninjaE3,spvak1k3)
      acd67(50)=abb67(15)
      acd67(51)=abb67(59)
      acd67(52)=abb67(58)
      acd67(53)=dotproduct(k1,ninjaA)
      acd67(54)=dotproduct(ninjaA,spvak4k2)
      acd67(55)=abb67(11)
      acd67(56)=abb67(45)
      acd67(57)=abb67(92)
      acd67(58)=abb67(25)
      acd67(59)=dotproduct(k3,ninjaA)
      acd67(60)=abb67(77)
      acd67(61)=dotproduct(k4,ninjaA)
      acd67(62)=dotproduct(l5,ninjaE3)
      acd67(63)=abb67(71)
      acd67(64)=abb67(30)
      acd67(65)=abb67(83)
      acd67(66)=dotproduct(l6,ninjaE3)
      acd67(67)=dotproduct(k7,ninjaE3)
      acd67(68)=abb67(62)
      acd67(69)=abb67(90)
      acd67(70)=dotproduct(ninjaA,ninjaA)
      acd67(71)=abb67(67)
      acd67(72)=abb67(31)
      acd67(73)=abb67(87)
      acd67(74)=abb67(32)
      acd67(75)=dotproduct(ninjaA,spvak3k2)
      acd67(76)=dotproduct(ninjaA,spvak1k3)
      acd67(77)=abb67(8)
      acd67(78)=abb67(13)
      acd67(79)=abb67(18)
      acd67(80)=abb67(47)
      acd67(81)=abb67(28)
      acd67(82)=abb67(75)
      acd67(83)=abb67(38)
      acd67(84)=abb67(91)
      acd67(85)=abb67(34)
      acd67(86)=abb67(21)
      acd67(87)=abb67(54)
      acd67(88)=abb67(79)
      acd67(89)=abb67(81)
      acd67(90)=abb67(44)
      acd67(91)=abb67(43)
      acd67(92)=abb67(101)
      acd67(93)=abb67(40)
      acd67(94)=abb67(37)
      acd67(95)=acd67(7)*acd67(10)
      acd67(96)=acd67(5)*acd67(9)
      acd67(96)=acd67(95)+acd67(96)
      acd67(96)=acd67(1)*acd67(8)*acd67(96)
      acd67(97)=acd67(1)*acd67(4)
      acd67(98)=acd67(97)*acd67(7)
      acd67(99)=acd67(8)*acd67(7)
      acd67(100)=acd67(99)*acd67(12)
      acd67(98)=acd67(98)+acd67(100)+acd67(14)
      acd67(100)=acd67(6)*acd67(98)
      acd67(101)=acd67(8)*acd67(5)
      acd67(102)=acd67(12)*acd67(101)
      acd67(103)=acd67(5)*acd67(97)
      acd67(102)=acd67(103)+acd67(13)+acd67(102)
      acd67(102)=acd67(3)*acd67(102)
      acd67(103)=-acd67(15)*acd67(16)
      acd67(96)=acd67(102)+acd67(100)+acd67(103)+acd67(96)
      acd67(96)=acd67(2)*acd67(96)
      acd67(100)=acd67(15)*acd67(18)
      acd67(99)=acd67(99)*acd67(11)
      acd67(102)=acd67(1)*acd67(99)
      acd67(100)=acd67(100)+acd67(102)
      acd67(100)=acd67(6)*acd67(100)
      acd67(102)=acd67(15)*acd67(17)
      acd67(103)=acd67(1)*acd67(11)*acd67(101)
      acd67(102)=acd67(102)+acd67(103)
      acd67(102)=acd67(3)*acd67(102)
      acd67(96)=acd67(96)+acd67(100)+acd67(102)
      acd67(100)=acd67(33)*acd67(7)
      acd67(102)=acd67(32)*acd67(5)
      acd67(100)=acd67(40)+acd67(100)+acd67(102)
      acd67(102)=acd67(8)*acd67(100)
      acd67(103)=acd67(16)*acd67(39)
      acd67(104)=acd67(15)*acd67(38)
      acd67(105)=acd67(2)*acd67(35)
      acd67(102)=acd67(105)+acd67(104)+acd67(103)+acd67(102)
      acd67(102)=acd67(1)*acd67(102)
      acd67(103)=acd67(25)+acd67(28)
      acd67(104)=acd67(27)*acd67(103)
      acd67(105)=acd67(49)*acd67(52)
      acd67(106)=acd67(19)*acd67(21)
      acd67(107)=2.0_ki*acd67(29)
      acd67(108)=acd67(107)*acd67(14)
      acd67(104)=acd67(108)+acd67(106)+acd67(104)+acd67(105)
      acd67(105)=acd67(30)*acd67(7)
      acd67(105)=acd67(105)+acd67(51)
      acd67(106)=acd67(8)*acd67(105)
      acd67(108)=acd67(7)*acd67(34)
      acd67(108)=acd67(108)+acd67(37)
      acd67(109)=acd67(1)*acd67(108)
      acd67(106)=acd67(109)+acd67(106)+acd67(104)
      acd67(106)=acd67(6)*acd67(106)
      acd67(109)=acd67(26)*acd67(103)
      acd67(110)=acd67(49)*acd67(50)
      acd67(111)=acd67(19)*acd67(20)
      acd67(112)=acd67(107)*acd67(13)
      acd67(109)=acd67(112)+acd67(111)+acd67(109)+acd67(110)
      acd67(110)=acd67(30)*acd67(5)
      acd67(110)=acd67(110)+acd67(48)
      acd67(111)=acd67(8)*acd67(110)
      acd67(112)=acd67(5)*acd67(34)
      acd67(112)=acd67(112)+acd67(36)
      acd67(113)=acd67(1)*acd67(112)
      acd67(111)=acd67(113)+acd67(111)+acd67(109)
      acd67(111)=acd67(3)*acd67(111)
      acd67(113)=acd67(107)*acd67(16)
      acd67(114)=acd67(19)-acd67(103)
      acd67(115)=acd67(114)*acd67(22)
      acd67(113)=acd67(113)-acd67(115)
      acd67(115)=-acd67(15)*acd67(113)
      acd67(102)=acd67(111)+acd67(106)+acd67(115)+acd67(102)
      acd67(102)=acd67(2)*acd67(102)
      acd67(106)=-acd67(17)*acd67(39)
      acd67(111)=acd67(31)*acd67(5)
      acd67(111)=acd67(44)+acd67(111)
      acd67(111)=acd67(8)*acd67(111)
      acd67(115)=acd67(15)*acd67(43)
      acd67(116)=acd67(6)*acd67(42)
      acd67(117)=acd67(3)*acd67(41)
      acd67(106)=acd67(117)+acd67(116)+acd67(115)+acd67(106)+acd67(111)
      acd67(106)=acd67(1)*acd67(106)
      acd67(111)=acd67(107)*acd67(17)
      acd67(115)=acd67(114)*acd67(23)
      acd67(111)=acd67(111)-acd67(115)
      acd67(115)=acd67(15)*acd67(111)
      acd67(106)=acd67(115)+acd67(106)
      acd67(106)=acd67(3)*acd67(106)
      acd67(115)=-acd67(18)*acd67(39)
      acd67(116)=acd67(31)*acd67(7)
      acd67(116)=acd67(47)+acd67(116)
      acd67(116)=acd67(8)*acd67(116)
      acd67(117)=acd67(15)*acd67(46)
      acd67(118)=acd67(6)*acd67(45)
      acd67(115)=acd67(118)+acd67(117)+acd67(115)+acd67(116)
      acd67(115)=acd67(1)*acd67(115)
      acd67(116)=acd67(107)*acd67(18)
      acd67(117)=acd67(114)*acd67(24)
      acd67(116)=acd67(116)-acd67(117)
      acd67(117)=acd67(15)*acd67(116)
      acd67(115)=acd67(117)+acd67(115)
      acd67(115)=acd67(6)*acd67(115)
      acd67(102)=acd67(102)+acd67(115)+acd67(106)
      acd67(106)=acd67(5)*ninjaP
      acd67(97)=acd67(97)*acd67(106)
      acd67(115)=ninjaP+acd67(70)
      acd67(117)=acd67(13)*acd67(115)
      acd67(118)=acd67(50)*acd67(76)
      acd67(119)=acd67(53)*acd67(20)
      acd67(120)=acd67(59)+acd67(61)
      acd67(121)=acd67(26)*acd67(120)
      acd67(122)=acd67(34)*acd67(48)
      acd67(123)=acd67(30)*acd67(112)
      acd67(101)=acd67(101)*ninjaP
      acd67(124)=acd67(12)*acd67(101)
      acd67(97)=acd67(97)+acd67(124)+acd67(123)+acd67(122)+acd67(121)+acd67(119&
      &)+acd67(83)+acd67(118)+acd67(117)
      acd67(97)=acd67(3)*acd67(97)
      acd67(95)=ninjaP*acd67(95)
      acd67(106)=acd67(9)*acd67(106)
      acd67(95)=acd67(95)+acd67(106)
      acd67(95)=acd67(8)*acd67(95)
      acd67(106)=acd67(16)*acd67(75)
      acd67(117)=acd67(34)*acd67(40)
      acd67(118)=acd67(54)*acd67(38)
      acd67(119)=acd67(33)*acd67(108)
      acd67(121)=acd67(32)*acd67(112)
      acd67(122)=acd67(31)*acd67(35)
      acd67(95)=acd67(95)+2.0_ki*acd67(122)+acd67(121)+acd67(119)+acd67(118)+ac&
      &d67(117)+acd67(77)+acd67(106)
      acd67(95)=acd67(1)*acd67(95)
      acd67(98)=ninjaP*acd67(98)
      acd67(106)=acd67(52)*acd67(76)
      acd67(117)=acd67(53)*acd67(21)
      acd67(118)=acd67(14)*acd67(70)
      acd67(119)=acd67(27)*acd67(120)
      acd67(121)=acd67(34)*acd67(51)
      acd67(122)=acd67(30)*acd67(108)
      acd67(98)=acd67(122)+acd67(121)+acd67(119)+acd67(118)+acd67(117)+acd67(84&
      &)+acd67(106)+acd67(98)
      acd67(98)=acd67(6)*acd67(98)
      acd67(106)=acd67(33)*acd67(104)
      acd67(117)=acd67(32)*acd67(109)
      acd67(118)=acd67(30)*acd67(100)
      acd67(119)=acd67(33)*acd67(51)
      acd67(121)=acd67(32)*acd67(48)
      acd67(118)=acd67(118)+acd67(121)+acd67(86)+acd67(119)
      acd67(118)=acd67(8)*acd67(118)
      acd67(119)=-acd67(16)*acd67(115)
      acd67(120)=acd67(120)-acd67(53)
      acd67(121)=-acd67(22)*acd67(120)
      acd67(122)=acd67(30)*acd67(38)
      acd67(119)=acd67(122)+acd67(121)+acd67(85)+acd67(119)
      acd67(119)=acd67(15)*acd67(119)
      acd67(121)=acd67(54)*acd67(22)
      acd67(122)=acd67(121)+acd67(60)
      acd67(103)=-acd67(122)*acd67(103)
      acd67(122)=-acd67(54)*acd67(16)
      acd67(122)=acd67(71)+acd67(122)
      acd67(122)=acd67(122)*acd67(107)
      acd67(123)=acd67(62)+acd67(66)
      acd67(124)=-acd67(67)+acd67(123)
      acd67(124)=acd67(63)*acd67(124)
      acd67(125)=acd67(49)*acd67(87)
      acd67(121)=acd67(55)+acd67(121)
      acd67(121)=acd67(19)*acd67(121)
      acd67(126)=acd67(30)*acd67(39)
      acd67(127)=acd67(16)*acd67(126)
      acd67(128)=acd67(30)*acd67(35)
      acd67(128)=acd67(82)+acd67(128)
      acd67(128)=acd67(2)*acd67(128)
      acd67(95)=acd67(128)+acd67(97)+acd67(98)+acd67(95)+acd67(119)+acd67(118)+&
      &acd67(127)+acd67(117)+acd67(106)+acd67(121)+acd67(122)+acd67(125)+acd67(&
      &124)+acd67(103)
      acd67(95)=acd67(2)*acd67(95)
      acd67(97)=-acd67(17)*acd67(75)
      acd67(98)=acd67(34)*acd67(44)
      acd67(103)=acd67(54)*acd67(43)
      acd67(106)=acd67(33)*acd67(42)
      acd67(117)=acd67(32)*acd67(41)
      acd67(112)=acd67(31)*acd67(112)
      acd67(101)=acd67(11)*acd67(101)
      acd67(97)=acd67(101)+acd67(112)+2.0_ki*acd67(117)+acd67(106)+acd67(103)+a&
      &cd67(98)+acd67(78)+acd67(97)
      acd67(97)=acd67(1)*acd67(97)
      acd67(98)=acd67(31)*acd67(109)
      acd67(101)=acd67(17)*acd67(115)
      acd67(103)=acd67(23)*acd67(120)
      acd67(106)=acd67(30)*acd67(43)
      acd67(101)=acd67(106)+acd67(103)+acd67(90)+acd67(101)
      acd67(101)=acd67(15)*acd67(101)
      acd67(103)=acd67(54)*acd67(23)
      acd67(103)=acd67(103)-acd67(56)
      acd67(103)=-acd67(103)*acd67(114)
      acd67(106)=acd67(54)*acd67(17)
      acd67(106)=acd67(72)+acd67(106)
      acd67(106)=acd67(106)*acd67(107)
      acd67(109)=acd67(30)*acd67(44)
      acd67(110)=acd67(31)*acd67(110)
      acd67(109)=acd67(110)+acd67(91)+acd67(109)
      acd67(109)=acd67(8)*acd67(109)
      acd67(110)=-acd67(64)*acd67(123)
      acd67(112)=acd67(67)*acd67(68)
      acd67(117)=-acd67(17)*acd67(126)
      acd67(118)=acd67(30)*acd67(42)
      acd67(118)=acd67(89)+acd67(118)
      acd67(118)=acd67(6)*acd67(118)
      acd67(119)=acd67(30)*acd67(41)
      acd67(119)=acd67(88)+acd67(119)
      acd67(119)=acd67(3)*acd67(119)
      acd67(97)=acd67(119)+acd67(118)+acd67(97)+acd67(101)+acd67(109)+acd67(98)&
      &+acd67(117)+acd67(106)+acd67(112)+acd67(103)+acd67(110)
      acd67(97)=acd67(3)*acd67(97)
      acd67(98)=-acd67(18)*acd67(75)
      acd67(101)=acd67(34)*acd67(47)
      acd67(103)=acd67(54)*acd67(46)
      acd67(106)=acd67(33)*acd67(45)
      acd67(109)=acd67(32)*acd67(42)
      acd67(108)=acd67(31)*acd67(108)
      acd67(99)=ninjaP*acd67(99)
      acd67(98)=acd67(99)+acd67(108)+acd67(109)+2.0_ki*acd67(106)+acd67(103)+ac&
      &d67(101)+acd67(79)+acd67(98)
      acd67(98)=acd67(1)*acd67(98)
      acd67(99)=acd67(31)*acd67(104)
      acd67(101)=acd67(18)*acd67(115)
      acd67(103)=acd67(24)*acd67(120)
      acd67(104)=acd67(30)*acd67(46)
      acd67(101)=acd67(104)+acd67(103)+acd67(93)+acd67(101)
      acd67(101)=acd67(15)*acd67(101)
      acd67(103)=acd67(54)*acd67(24)
      acd67(103)=acd67(103)-acd67(57)
      acd67(103)=-acd67(103)*acd67(114)
      acd67(104)=acd67(54)*acd67(18)
      acd67(104)=acd67(73)+acd67(104)
      acd67(104)=acd67(104)*acd67(107)
      acd67(106)=acd67(30)*acd67(47)
      acd67(105)=acd67(31)*acd67(105)
      acd67(105)=acd67(105)+acd67(94)+acd67(106)
      acd67(105)=acd67(8)*acd67(105)
      acd67(106)=acd67(65)*acd67(123)
      acd67(108)=acd67(67)*acd67(69)
      acd67(109)=-acd67(18)*acd67(126)
      acd67(110)=acd67(30)*acd67(45)
      acd67(110)=acd67(92)+acd67(110)
      acd67(110)=acd67(6)*acd67(110)
      acd67(98)=acd67(110)+acd67(98)+acd67(101)+acd67(105)+acd67(99)+acd67(109)&
      &+acd67(104)+acd67(108)+acd67(103)+acd67(106)
      acd67(98)=acd67(6)*acd67(98)
      acd67(99)=acd67(33)*acd67(116)
      acd67(101)=acd67(32)*acd67(111)
      acd67(103)=-acd67(31)*acd67(113)
      acd67(104)=acd67(58)*acd67(114)
      acd67(105)=-acd67(74)*acd67(107)
      acd67(99)=acd67(103)+acd67(101)+acd67(99)+acd67(105)+acd67(104)
      acd67(99)=acd67(15)*acd67(99)
      acd67(101)=-acd67(33)*acd67(18)
      acd67(103)=-acd67(32)*acd67(17)
      acd67(104)=acd67(31)*acd67(16)
      acd67(101)=acd67(104)+acd67(103)+acd67(74)+acd67(101)
      acd67(101)=acd67(39)*acd67(101)
      acd67(100)=acd67(31)*acd67(100)
      acd67(103)=acd67(33)*acd67(47)
      acd67(104)=acd67(32)*acd67(44)
      acd67(100)=acd67(100)+acd67(104)+acd67(81)+acd67(103)
      acd67(100)=acd67(8)*acd67(100)
      acd67(103)=acd67(33)*acd67(46)
      acd67(104)=acd67(32)*acd67(43)
      acd67(105)=acd67(31)*acd67(38)
      acd67(103)=acd67(105)+acd67(104)+acd67(80)+acd67(103)
      acd67(103)=acd67(15)*acd67(103)
      acd67(100)=acd67(103)+acd67(100)+acd67(101)
      acd67(100)=acd67(1)*acd67(100)
      acd67(95)=acd67(95)+acd67(97)+acd67(98)+acd67(99)+acd67(100)
      brack(ninjaidxt1mu0)=acd67(102)
      brack(ninjaidxt0mu0)=acd67(95)
      brack(ninjaidxt0mu2)=acd67(96)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d67h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd67h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
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
end module     p0_dbaru_epnebbbarg_d67h4l131