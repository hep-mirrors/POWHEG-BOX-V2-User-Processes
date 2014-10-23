module     p0_dbaru_epnebbbarg_d179h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d179h1l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd179h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(52) :: acd179
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd179(1)=dotproduct(k2,ninjaE3)
      acd179(2)=abb179(22)
      acd179(3)=dotproduct(k3,ninjaE3)
      acd179(4)=dotproduct(k4,ninjaE3)
      acd179(5)=dotproduct(l6,ninjaE3)
      acd179(6)=abb179(40)
      acd179(7)=dotproduct(k7,ninjaE3)
      acd179(8)=dotproduct(ninjaE3,spvak4k2)
      acd179(9)=abb179(153)
      acd179(10)=dotproduct(ninjaE3,spval6k7)
      acd179(11)=abb179(33)
      acd179(12)=dotproduct(ninjaE3,spvak2k7)
      acd179(13)=abb179(17)
      acd179(14)=dotproduct(ninjaE3,spval6l5)
      acd179(15)=abb179(55)
      acd179(16)=dotproduct(ninjaE3,spvak2l6)
      acd179(17)=abb179(19)
      acd179(18)=dotproduct(ninjaE3,spvak2l5)
      acd179(19)=abb179(20)
      acd179(20)=dotproduct(ninjaE3,spvak4k3)
      acd179(21)=abb179(102)
      acd179(22)=dotproduct(ninjaE3,spvak1k2)
      acd179(23)=abb179(35)
      acd179(24)=abb179(136)
      acd179(25)=abb179(83)
      acd179(26)=abb179(29)
      acd179(27)=abb179(14)
      acd179(28)=abb179(21)
      acd179(29)=abb179(18)
      acd179(30)=abb179(34)
      acd179(31)=abb179(28)
      acd179(32)=abb179(32)
      acd179(33)=abb179(36)
      acd179(34)=abb179(23)
      acd179(35)=abb179(25)
      acd179(36)=abb179(91)
      acd179(37)=abb179(37)
      acd179(38)=abb179(26)
      acd179(39)=abb179(41)
      acd179(40)=abb179(38)
      acd179(41)=abb179(42)
      acd179(42)=acd179(5)+acd179(7)
      acd179(43)=acd179(6)*acd179(42)
      acd179(44)=acd179(18)*acd179(19)
      acd179(45)=acd179(16)*acd179(17)
      acd179(46)=acd179(14)*acd179(15)
      acd179(47)=acd179(12)*acd179(13)
      acd179(48)=acd179(10)*acd179(11)
      acd179(43)=acd179(43)-acd179(46)+acd179(44)-acd179(45)+acd179(47)+acd179(&
      &48)
      acd179(44)=acd179(3)+acd179(4)
      acd179(45)=acd179(43)*acd179(44)
      acd179(46)=acd179(26)*acd179(42)
      acd179(47)=acd179(18)*acd179(41)
      acd179(48)=acd179(16)*acd179(39)
      acd179(49)=acd179(14)*acd179(37)
      acd179(50)=acd179(12)*acd179(35)
      acd179(51)=acd179(10)*acd179(33)
      acd179(46)=acd179(51)+acd179(50)+acd179(49)+acd179(47)+acd179(48)+acd179(&
      &46)
      acd179(46)=acd179(22)*acd179(46)
      acd179(47)=acd179(25)*acd179(42)
      acd179(48)=acd179(18)*acd179(40)
      acd179(49)=acd179(16)*acd179(38)
      acd179(50)=acd179(14)*acd179(36)
      acd179(51)=acd179(12)*acd179(34)
      acd179(52)=acd179(10)*acd179(32)
      acd179(47)=acd179(52)+acd179(51)+acd179(50)+acd179(48)+acd179(49)+acd179(&
      &47)
      acd179(47)=acd179(20)*acd179(47)
      acd179(42)=acd179(24)*acd179(42)
      acd179(48)=acd179(18)*acd179(31)
      acd179(49)=acd179(16)*acd179(30)
      acd179(50)=acd179(14)*acd179(29)
      acd179(51)=acd179(12)*acd179(28)
      acd179(52)=acd179(10)*acd179(27)
      acd179(42)=acd179(52)+acd179(51)+acd179(50)+acd179(48)+acd179(49)+acd179(&
      &42)
      acd179(42)=acd179(8)*acd179(42)
      acd179(44)=-acd179(1)+acd179(44)
      acd179(44)=acd179(2)*acd179(44)
      acd179(48)=acd179(22)*acd179(23)
      acd179(49)=acd179(20)*acd179(21)
      acd179(50)=acd179(8)*acd179(9)
      acd179(43)=acd179(50)+acd179(49)+acd179(48)+acd179(44)-acd179(43)
      acd179(43)=acd179(1)*acd179(43)
      acd179(42)=acd179(43)+acd179(42)+acd179(46)+acd179(47)+acd179(45)
      brack(ninjaidxt1x0mu0)=acd179(42)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd179h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(121) :: acd179
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd179(1)=dotproduct(k2,ninjaA1)
      acd179(2)=dotproduct(k2,ninjaE3)
      acd179(3)=abb179(22)
      acd179(4)=dotproduct(k3,ninjaE3)
      acd179(5)=dotproduct(k4,ninjaE3)
      acd179(6)=dotproduct(l6,ninjaE3)
      acd179(7)=abb179(40)
      acd179(8)=dotproduct(k7,ninjaE3)
      acd179(9)=dotproduct(ninjaE3,spval6k7)
      acd179(10)=abb179(33)
      acd179(11)=dotproduct(ninjaE3,spvak4k2)
      acd179(12)=abb179(153)
      acd179(13)=dotproduct(ninjaE3,spvak2k7)
      acd179(14)=abb179(17)
      acd179(15)=dotproduct(ninjaE3,spval6l5)
      acd179(16)=abb179(55)
      acd179(17)=dotproduct(ninjaE3,spvak2l6)
      acd179(18)=abb179(19)
      acd179(19)=dotproduct(ninjaE3,spvak2l5)
      acd179(20)=abb179(20)
      acd179(21)=dotproduct(ninjaE3,spvak4k3)
      acd179(22)=abb179(102)
      acd179(23)=dotproduct(ninjaE3,spvak1k2)
      acd179(24)=abb179(35)
      acd179(25)=dotproduct(k3,ninjaA1)
      acd179(26)=dotproduct(k4,ninjaA1)
      acd179(27)=dotproduct(l6,ninjaA1)
      acd179(28)=dotproduct(k7,ninjaA1)
      acd179(29)=dotproduct(ninjaA1,spval6k7)
      acd179(30)=dotproduct(ninjaA1,spvak4k2)
      acd179(31)=dotproduct(ninjaA1,spvak2k7)
      acd179(32)=dotproduct(ninjaA1,spval6l5)
      acd179(33)=dotproduct(ninjaA1,spvak2l6)
      acd179(34)=dotproduct(ninjaA1,spvak2l5)
      acd179(35)=dotproduct(ninjaA1,spvak4k3)
      acd179(36)=dotproduct(ninjaA1,spvak1k2)
      acd179(37)=abb179(136)
      acd179(38)=abb179(83)
      acd179(39)=abb179(29)
      acd179(40)=abb179(14)
      acd179(41)=abb179(32)
      acd179(42)=abb179(36)
      acd179(43)=abb179(21)
      acd179(44)=abb179(18)
      acd179(45)=abb179(34)
      acd179(46)=abb179(28)
      acd179(47)=abb179(23)
      acd179(48)=abb179(25)
      acd179(49)=abb179(91)
      acd179(50)=abb179(37)
      acd179(51)=abb179(26)
      acd179(52)=abb179(41)
      acd179(53)=abb179(38)
      acd179(54)=abb179(42)
      acd179(55)=dotproduct(k2,ninjaA0)
      acd179(56)=dotproduct(k3,ninjaA0)
      acd179(57)=dotproduct(k4,ninjaA0)
      acd179(58)=dotproduct(l6,ninjaA0)
      acd179(59)=dotproduct(k7,ninjaA0)
      acd179(60)=dotproduct(ninjaA0,spval6k7)
      acd179(61)=dotproduct(ninjaA0,spvak4k2)
      acd179(62)=dotproduct(ninjaA0,spvak2k7)
      acd179(63)=dotproduct(ninjaA0,spval6l5)
      acd179(64)=dotproduct(ninjaA0,spvak2l6)
      acd179(65)=dotproduct(ninjaA0,spvak2l5)
      acd179(66)=dotproduct(ninjaA0,spvak4k3)
      acd179(67)=dotproduct(ninjaA0,spvak1k2)
      acd179(68)=abb179(16)
      acd179(69)=abb179(96)
      acd179(70)=dotproduct(l5,ninjaE3)
      acd179(71)=abb179(94)
      acd179(72)=abb179(31)
      acd179(73)=dotproduct(ninjaA0,ninjaE3)
      acd179(74)=abb179(54)
      acd179(75)=abb179(13)
      acd179(76)=abb179(64)
      acd179(77)=abb179(15)
      acd179(78)=abb179(50)
      acd179(79)=abb179(24)
      acd179(80)=abb179(30)
      acd179(81)=abb179(72)
      acd179(82)=abb179(27)
      acd179(83)=dotproduct(ninjaE3,spvak1k3)
      acd179(84)=abb179(39)
      acd179(85)=acd179(8)+acd179(6)
      acd179(86)=acd179(7)*acd179(85)
      acd179(87)=acd179(10)*acd179(9)
      acd179(88)=acd179(14)*acd179(13)
      acd179(89)=acd179(16)*acd179(15)
      acd179(90)=acd179(18)*acd179(17)
      acd179(91)=acd179(20)*acd179(19)
      acd179(86)=acd179(91)+acd179(86)+acd179(87)+acd179(88)-acd179(89)-acd179(&
      &90)
      acd179(87)=acd179(3)*acd179(2)
      acd179(87)=acd179(86)+acd179(87)
      acd179(88)=acd179(26)+acd179(25)
      acd179(88)=acd179(87)*acd179(88)
      acd179(89)=acd179(5)+acd179(4)
      acd179(90)=-acd179(89)+2.0_ki*acd179(2)
      acd179(90)=acd179(90)*acd179(3)
      acd179(86)=acd179(90)+acd179(86)
      acd179(90)=-acd179(1)*acd179(86)
      acd179(91)=acd179(29)*acd179(10)
      acd179(92)=acd179(31)*acd179(14)
      acd179(93)=-acd179(32)*acd179(16)
      acd179(94)=-acd179(33)*acd179(18)
      acd179(95)=acd179(34)*acd179(20)
      acd179(91)=acd179(95)+acd179(94)+acd179(93)+acd179(92)+acd179(91)
      acd179(92)=acd179(89)-acd179(2)
      acd179(91)=acd179(92)*acd179(91)
      acd179(93)=-acd179(7)*acd179(92)
      acd179(94)=acd179(37)*acd179(11)
      acd179(95)=acd179(38)*acd179(21)
      acd179(96)=acd179(39)*acd179(23)
      acd179(93)=acd179(96)-acd179(93)+acd179(94)+acd179(95)
      acd179(94)=acd179(28)+acd179(27)
      acd179(94)=acd179(93)*acd179(94)
      acd179(95)=acd179(37)*acd179(30)
      acd179(96)=acd179(38)*acd179(35)
      acd179(97)=acd179(39)*acd179(36)
      acd179(95)=acd179(97)+acd179(96)+acd179(95)
      acd179(95)=acd179(85)*acd179(95)
      acd179(96)=acd179(1)*acd179(11)
      acd179(97)=acd179(30)*acd179(2)
      acd179(96)=acd179(96)+acd179(97)
      acd179(96)=acd179(12)*acd179(96)
      acd179(97)=acd179(1)*acd179(21)
      acd179(98)=acd179(35)*acd179(2)
      acd179(97)=acd179(97)+acd179(98)
      acd179(97)=acd179(22)*acd179(97)
      acd179(98)=acd179(1)*acd179(23)
      acd179(99)=acd179(36)*acd179(2)
      acd179(98)=acd179(98)+acd179(99)
      acd179(98)=acd179(24)*acd179(98)
      acd179(99)=acd179(30)*acd179(9)
      acd179(100)=acd179(29)*acd179(11)
      acd179(99)=acd179(99)+acd179(100)
      acd179(99)=acd179(40)*acd179(99)
      acd179(100)=acd179(35)*acd179(9)
      acd179(101)=acd179(29)*acd179(21)
      acd179(100)=acd179(100)+acd179(101)
      acd179(100)=acd179(41)*acd179(100)
      acd179(101)=acd179(36)*acd179(9)
      acd179(102)=acd179(29)*acd179(23)
      acd179(101)=acd179(101)+acd179(102)
      acd179(101)=acd179(42)*acd179(101)
      acd179(102)=acd179(30)*acd179(13)
      acd179(103)=acd179(31)*acd179(11)
      acd179(102)=acd179(102)+acd179(103)
      acd179(102)=acd179(43)*acd179(102)
      acd179(103)=acd179(30)*acd179(15)
      acd179(104)=acd179(32)*acd179(11)
      acd179(103)=acd179(103)+acd179(104)
      acd179(103)=acd179(44)*acd179(103)
      acd179(104)=acd179(30)*acd179(17)
      acd179(105)=acd179(33)*acd179(11)
      acd179(104)=acd179(104)+acd179(105)
      acd179(104)=acd179(45)*acd179(104)
      acd179(105)=acd179(30)*acd179(19)
      acd179(106)=acd179(34)*acd179(11)
      acd179(105)=acd179(105)+acd179(106)
      acd179(105)=acd179(46)*acd179(105)
      acd179(106)=acd179(35)*acd179(13)
      acd179(107)=acd179(31)*acd179(21)
      acd179(106)=acd179(106)+acd179(107)
      acd179(106)=acd179(47)*acd179(106)
      acd179(107)=acd179(36)*acd179(13)
      acd179(108)=acd179(31)*acd179(23)
      acd179(107)=acd179(107)+acd179(108)
      acd179(107)=acd179(48)*acd179(107)
      acd179(108)=acd179(35)*acd179(15)
      acd179(109)=acd179(32)*acd179(21)
      acd179(108)=acd179(108)+acd179(109)
      acd179(108)=acd179(49)*acd179(108)
      acd179(109)=acd179(36)*acd179(15)
      acd179(110)=acd179(32)*acd179(23)
      acd179(109)=acd179(109)+acd179(110)
      acd179(109)=acd179(50)*acd179(109)
      acd179(110)=acd179(35)*acd179(17)
      acd179(111)=acd179(33)*acd179(21)
      acd179(110)=acd179(110)+acd179(111)
      acd179(110)=acd179(51)*acd179(110)
      acd179(111)=acd179(36)*acd179(17)
      acd179(112)=acd179(33)*acd179(23)
      acd179(111)=acd179(111)+acd179(112)
      acd179(111)=acd179(52)*acd179(111)
      acd179(112)=acd179(35)*acd179(19)
      acd179(113)=acd179(34)*acd179(21)
      acd179(112)=acd179(112)+acd179(113)
      acd179(112)=acd179(53)*acd179(112)
      acd179(113)=acd179(36)*acd179(19)
      acd179(114)=acd179(34)*acd179(23)
      acd179(113)=acd179(113)+acd179(114)
      acd179(113)=acd179(54)*acd179(113)
      acd179(88)=acd179(113)+acd179(112)+acd179(111)+acd179(110)+acd179(109)+ac&
      &d179(108)+acd179(107)+acd179(106)+acd179(105)+acd179(104)+acd179(103)+ac&
      &d179(102)+acd179(101)+acd179(100)+acd179(99)+acd179(98)+acd179(97)+acd17&
      &9(96)+acd179(90)+acd179(91)+acd179(95)+acd179(88)+acd179(94)
      acd179(90)=acd179(57)+acd179(56)
      acd179(87)=acd179(87)*acd179(90)
      acd179(86)=-acd179(55)*acd179(86)
      acd179(90)=acd179(60)*acd179(10)
      acd179(91)=acd179(62)*acd179(14)
      acd179(94)=-acd179(63)*acd179(16)
      acd179(95)=-acd179(64)*acd179(18)
      acd179(96)=acd179(65)*acd179(20)
      acd179(90)=acd179(96)+acd179(95)+acd179(94)+acd179(91)+acd179(90)
      acd179(90)=acd179(92)*acd179(90)
      acd179(91)=acd179(59)+acd179(58)
      acd179(91)=acd179(93)*acd179(91)
      acd179(92)=acd179(61)*acd179(37)
      acd179(93)=acd179(66)*acd179(38)
      acd179(94)=acd179(67)*acd179(39)
      acd179(92)=acd179(72)+acd179(94)+acd179(93)+acd179(92)
      acd179(85)=acd179(85)*acd179(92)
      acd179(92)=acd179(55)*acd179(11)
      acd179(93)=acd179(61)*acd179(2)
      acd179(92)=acd179(92)+acd179(93)
      acd179(92)=acd179(12)*acd179(92)
      acd179(93)=acd179(55)*acd179(21)
      acd179(94)=acd179(66)*acd179(2)
      acd179(93)=acd179(93)+acd179(94)
      acd179(93)=acd179(22)*acd179(93)
      acd179(94)=acd179(55)*acd179(23)
      acd179(95)=acd179(67)*acd179(2)
      acd179(94)=acd179(94)+acd179(95)
      acd179(94)=acd179(24)*acd179(94)
      acd179(95)=acd179(61)*acd179(9)
      acd179(96)=acd179(60)*acd179(11)
      acd179(95)=acd179(95)+acd179(96)
      acd179(95)=acd179(40)*acd179(95)
      acd179(96)=acd179(66)*acd179(9)
      acd179(97)=acd179(60)*acd179(21)
      acd179(96)=acd179(96)+acd179(97)
      acd179(96)=acd179(41)*acd179(96)
      acd179(97)=acd179(67)*acd179(9)
      acd179(98)=acd179(60)*acd179(23)
      acd179(97)=acd179(97)+acd179(98)
      acd179(97)=acd179(42)*acd179(97)
      acd179(98)=acd179(61)*acd179(13)
      acd179(99)=acd179(62)*acd179(11)
      acd179(98)=acd179(98)+acd179(99)
      acd179(98)=acd179(43)*acd179(98)
      acd179(99)=acd179(61)*acd179(15)
      acd179(100)=acd179(63)*acd179(11)
      acd179(99)=acd179(99)+acd179(100)
      acd179(99)=acd179(44)*acd179(99)
      acd179(100)=acd179(61)*acd179(17)
      acd179(101)=acd179(64)*acd179(11)
      acd179(100)=acd179(100)+acd179(101)
      acd179(100)=acd179(45)*acd179(100)
      acd179(101)=acd179(61)*acd179(19)
      acd179(102)=acd179(65)*acd179(11)
      acd179(101)=acd179(101)+acd179(102)
      acd179(101)=acd179(46)*acd179(101)
      acd179(102)=acd179(66)*acd179(13)
      acd179(103)=acd179(62)*acd179(21)
      acd179(102)=acd179(102)+acd179(103)
      acd179(102)=acd179(47)*acd179(102)
      acd179(103)=acd179(67)*acd179(13)
      acd179(104)=acd179(62)*acd179(23)
      acd179(103)=acd179(103)+acd179(104)
      acd179(103)=acd179(48)*acd179(103)
      acd179(104)=acd179(66)*acd179(15)
      acd179(105)=acd179(63)*acd179(21)
      acd179(104)=acd179(104)+acd179(105)
      acd179(104)=acd179(49)*acd179(104)
      acd179(105)=acd179(67)*acd179(15)
      acd179(106)=acd179(63)*acd179(23)
      acd179(105)=acd179(105)+acd179(106)
      acd179(105)=acd179(50)*acd179(105)
      acd179(106)=acd179(66)*acd179(17)
      acd179(107)=acd179(64)*acd179(21)
      acd179(106)=acd179(106)+acd179(107)
      acd179(106)=acd179(51)*acd179(106)
      acd179(107)=acd179(67)*acd179(17)
      acd179(108)=acd179(64)*acd179(23)
      acd179(107)=acd179(107)+acd179(108)
      acd179(107)=acd179(52)*acd179(107)
      acd179(108)=acd179(66)*acd179(19)
      acd179(109)=acd179(65)*acd179(21)
      acd179(108)=acd179(108)+acd179(109)
      acd179(108)=acd179(53)*acd179(108)
      acd179(109)=acd179(67)*acd179(19)
      acd179(110)=acd179(65)*acd179(23)
      acd179(109)=acd179(109)+acd179(110)
      acd179(109)=acd179(54)*acd179(109)
      acd179(89)=-acd179(69)*acd179(89)
      acd179(110)=acd179(68)*acd179(2)
      acd179(111)=acd179(71)*acd179(70)
      acd179(112)=acd179(74)*acd179(73)
      acd179(113)=acd179(75)*acd179(9)
      acd179(114)=acd179(76)*acd179(11)
      acd179(115)=acd179(77)*acd179(13)
      acd179(116)=acd179(78)*acd179(15)
      acd179(117)=acd179(79)*acd179(17)
      acd179(118)=acd179(80)*acd179(19)
      acd179(119)=acd179(81)*acd179(21)
      acd179(120)=acd179(82)*acd179(23)
      acd179(121)=acd179(84)*acd179(83)
      acd179(85)=acd179(121)+acd179(120)+acd179(119)+acd179(118)+acd179(117)+ac&
      &d179(116)+acd179(115)+acd179(114)+acd179(113)+2.0_ki*acd179(112)+acd179(&
      &111)+acd179(110)+acd179(89)+acd179(109)+acd179(108)+acd179(107)+acd179(1&
      &06)+acd179(105)+acd179(104)+acd179(103)+acd179(102)+acd179(101)+acd179(1&
      &00)+acd179(99)+acd179(98)+acd179(97)+acd179(96)+acd179(95)+acd179(94)+ac&
      &d179(93)+acd179(92)+acd179(86)+acd179(90)+acd179(85)+acd179(87)+acd179(9&
      &1)
      brack(ninjaidxt0x0mu0)=acd179(85)
      brack(ninjaidxt0x1mu0)=acd179(88)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d179h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd179h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d179h1l132
