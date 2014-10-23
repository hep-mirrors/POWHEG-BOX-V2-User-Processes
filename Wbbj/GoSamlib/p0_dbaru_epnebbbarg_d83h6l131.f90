module     p0_dbaru_epnebbbarg_d83h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d83h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd83h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd83
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd83(1)=dotproduct(k2,ninjaE3)
      acd83(2)=dotproduct(ninjaE3,spvak1k2)
      acd83(3)=dotproduct(ninjaE3,spvak4k3)
      acd83(4)=dotproduct(ninjaE3,spvak7k2)
      acd83(5)=abb83(25)
      acd83(6)=dotproduct(ninjaE3,spval5l6)
      acd83(7)=abb83(41)
      acd83(8)=acd83(5)*acd83(1)
      acd83(9)=-acd83(7)*acd83(6)
      acd83(8)=acd83(8)+acd83(9)
      acd83(8)=acd83(2)*acd83(8)*acd83(4)*acd83(3)
      brack(ninjaidxt2mu0)=acd83(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd83h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(113) :: acd83
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd83(1)=dotproduct(k2,ninjaE3)
      acd83(2)=dotproduct(ninjaE3,spvak4k2)
      acd83(3)=abb83(63)
      acd83(4)=dotproduct(ninjaE3,spvak7k2)
      acd83(5)=dotproduct(ninjaE3,spvak4k3)
      acd83(6)=dotproduct(ninjaE4,spvak1k2)
      acd83(7)=abb83(25)
      acd83(8)=dotproduct(ninjaE3,spvak1k2)
      acd83(9)=dotproduct(ninjaE4,spvak4k3)
      acd83(10)=abb83(36)
      acd83(11)=dotproduct(ninjaE4,spvak7k2)
      acd83(12)=dotproduct(k2,ninjaE4)
      acd83(13)=abb83(21)
      acd83(14)=dotproduct(ninjaE3,spval5l6)
      acd83(15)=abb83(20)
      acd83(16)=dotproduct(ninjaE3,spvak1l6)
      acd83(17)=abb83(16)
      acd83(18)=abb83(41)
      acd83(19)=dotproduct(ninjaE4,spval5l6)
      acd83(20)=abb83(29)
      acd83(21)=abb83(18)
      acd83(22)=dotproduct(ninjaE3,spval5k2)
      acd83(23)=abb83(49)
      acd83(24)=dotproduct(k1,ninjaE3)
      acd83(25)=abb83(52)
      acd83(26)=dotproduct(k2,ninjaA)
      acd83(27)=dotproduct(k3,ninjaE3)
      acd83(28)=dotproduct(k4,ninjaE3)
      acd83(29)=dotproduct(k7,ninjaE3)
      acd83(30)=abb83(61)
      acd83(31)=abb83(39)
      acd83(32)=dotproduct(ninjaA,ninjaE3)
      acd83(33)=dotproduct(ninjaA,spvak7k2)
      acd83(34)=dotproduct(ninjaA,spvak4k3)
      acd83(35)=dotproduct(ninjaA,spvak1k2)
      acd83(36)=abb83(40)
      acd83(37)=abb83(35)
      acd83(38)=abb83(55)
      acd83(39)=dotproduct(ninjaE3,spvak1k3)
      acd83(40)=abb83(10)
      acd83(41)=dotproduct(ninjaE3,spvak1k7)
      acd83(42)=abb83(64)
      acd83(43)=abb83(22)
      acd83(44)=abb83(31)
      acd83(45)=abb83(19)
      acd83(46)=abb83(50)
      acd83(47)=abb83(42)
      acd83(48)=abb83(44)
      acd83(49)=dotproduct(ninjaA,spval5l6)
      acd83(50)=abb83(56)
      acd83(51)=abb83(43)
      acd83(52)=abb83(57)
      acd83(53)=abb83(46)
      acd83(54)=abb83(9)
      acd83(55)=abb83(23)
      acd83(56)=abb83(17)
      acd83(57)=dotproduct(ninjaE3,spvak3k2)
      acd83(58)=abb83(11)
      acd83(59)=abb83(65)
      acd83(60)=dotproduct(k1,ninjaA)
      acd83(61)=abb83(24)
      acd83(62)=dotproduct(k3,ninjaA)
      acd83(63)=dotproduct(k4,ninjaA)
      acd83(64)=dotproduct(k7,ninjaA)
      acd83(65)=dotproduct(ninjaA,spvak4k2)
      acd83(66)=dotproduct(ninjaA,ninjaA)
      acd83(67)=abb83(30)
      acd83(68)=dotproduct(ninjaA,spvak1k3)
      acd83(69)=dotproduct(ninjaA,spvak1k7)
      acd83(70)=abb83(32)
      acd83(71)=dotproduct(ninjaA,spvak1l6)
      acd83(72)=dotproduct(ninjaA,spval5k2)
      acd83(73)=abb83(60)
      acd83(74)=abb83(37)
      acd83(75)=abb83(33)
      acd83(76)=abb83(54)
      acd83(77)=abb83(28)
      acd83(78)=abb83(14)
      acd83(79)=abb83(27)
      acd83(80)=dotproduct(ninjaA,spvak3k2)
      acd83(81)=abb83(8)
      acd83(82)=abb83(34)
      acd83(83)=abb83(13)
      acd83(84)=abb83(12)
      acd83(85)=abb83(38)
      acd83(86)=acd83(22)*acd83(23)
      acd83(87)=acd83(16)*acd83(17)
      acd83(86)=acd83(86)-acd83(87)
      acd83(87)=acd83(7)*acd83(12)
      acd83(88)=acd83(18)*acd83(19)
      acd83(87)=acd83(87)-acd83(88)
      acd83(88)=acd83(8)*acd83(87)
      acd83(89)=acd83(14)*acd83(18)
      acd83(90)=-acd83(6)*acd83(89)
      acd83(88)=acd83(90)+acd83(88)
      acd83(88)=acd83(5)*acd83(88)
      acd83(90)=acd83(8)*acd83(7)
      acd83(91)=acd83(90)*acd83(9)
      acd83(92)=acd83(6)*acd83(5)*acd83(7)
      acd83(91)=acd83(10)+acd83(91)+acd83(92)
      acd83(92)=acd83(1)*acd83(91)
      acd83(93)=acd83(14)*acd83(20)
      acd83(94)=-acd83(9)*acd83(89)
      acd83(94)=acd83(21)+acd83(94)
      acd83(94)=acd83(8)*acd83(94)
      acd83(95)=-acd83(2)*acd83(13)
      acd83(88)=acd83(92)+acd83(88)+acd83(95)+acd83(94)+acd83(93)+acd83(86)
      acd83(88)=acd83(4)*acd83(88)
      acd83(92)=acd83(2)*acd83(3)
      acd83(93)=acd83(90)*acd83(5)
      acd83(94)=acd83(11)*acd83(93)
      acd83(92)=acd83(92)+acd83(94)
      acd83(92)=acd83(1)*acd83(92)
      acd83(94)=acd83(2)*acd83(14)
      acd83(95)=acd83(15)*acd83(94)
      acd83(96)=acd83(89)*acd83(5)*acd83(8)
      acd83(97)=-acd83(11)*acd83(96)
      acd83(88)=acd83(88)+acd83(92)+acd83(95)+acd83(97)
      acd83(92)=2.0_ki*acd83(32)
      acd83(95)=acd83(92)*acd83(21)
      acd83(97)=acd83(89)*acd83(34)
      acd83(98)=acd83(27)+acd83(28)
      acd83(99)=acd83(98)+acd83(29)
      acd83(100)=acd83(99)*acd83(45)
      acd83(95)=-acd83(95)+acd83(97)-acd83(100)
      acd83(95)=acd83(95)*acd83(8)
      acd83(97)=acd83(14)*acd83(51)
      acd83(100)=acd83(92)*acd83(13)
      acd83(101)=acd83(99)*acd83(43)
      acd83(97)=-acd83(97)+acd83(100)-acd83(101)
      acd83(97)=acd83(97)*acd83(2)
      acd83(100)=acd83(41)*acd83(59)
      acd83(101)=acd83(39)*acd83(58)
      acd83(100)=acd83(100)+acd83(101)
      acd83(101)=acd83(29)*acd83(48)
      acd83(102)=acd83(92)*acd83(20)
      acd83(101)=acd83(101)+acd83(102)+acd83(100)
      acd83(101)=acd83(101)*acd83(14)
      acd83(102)=acd83(22)*acd83(46)
      acd83(103)=acd83(16)*acd83(44)
      acd83(102)=acd83(102)+acd83(103)
      acd83(102)=acd83(102)*acd83(99)
      acd83(86)=acd83(86)*acd83(92)
      acd83(86)=-acd83(95)-acd83(97)+acd83(101)+acd83(86)+acd83(102)
      acd83(95)=acd83(18)*acd83(49)
      acd83(95)=acd83(95)-acd83(55)
      acd83(97)=acd83(7)*acd83(26)
      acd83(97)=-acd83(97)+acd83(95)
      acd83(101)=acd83(97)*acd83(8)
      acd83(102)=acd83(24)*acd83(25)
      acd83(103)=acd83(13)*acd83(57)
      acd83(102)=acd83(102)-acd83(103)
      acd83(103)=acd83(22)*acd83(56)
      acd83(104)=acd83(16)*acd83(54)
      acd83(105)=acd83(2)*acd83(50)
      acd83(106)=acd83(89)*acd83(35)
      acd83(101)=-acd83(101)+acd83(103)-acd83(106)+acd83(102)+acd83(104)+acd83(&
      &105)
      acd83(103)=acd83(5)*acd83(101)
      acd83(104)=acd83(98)-acd83(92)
      acd83(104)=acd83(104)*acd83(10)
      acd83(105)=acd83(41)*acd83(42)
      acd83(106)=acd83(39)*acd83(40)
      acd83(105)=acd83(105)+acd83(106)
      acd83(106)=acd83(29)*acd83(31)
      acd83(107)=acd83(2)*acd83(36)
      acd83(108)=acd83(90)*acd83(34)
      acd83(104)=acd83(107)-acd83(104)+acd83(106)+acd83(108)+acd83(105)
      acd83(106)=acd83(7)*acd83(35)
      acd83(106)=acd83(106)+acd83(38)
      acd83(107)=acd83(5)*acd83(106)
      acd83(107)=acd83(107)+acd83(104)
      acd83(107)=acd83(1)*acd83(107)
      acd83(108)=acd83(14)*acd83(53)
      acd83(109)=acd83(5)*acd83(52)
      acd83(110)=acd83(1)*acd83(37)
      acd83(108)=acd83(110)+acd83(108)+acd83(109)
      acd83(108)=acd83(4)*acd83(108)
      acd83(103)=acd83(108)+acd83(107)+acd83(103)+acd83(86)
      acd83(103)=acd83(4)*acd83(103)
      acd83(107)=acd83(29)*acd83(47)
      acd83(108)=acd83(15)*acd83(92)
      acd83(107)=acd83(107)+acd83(108)
      acd83(94)=acd83(107)*acd83(94)
      acd83(107)=acd83(29)*acd83(30)
      acd83(108)=acd83(3)*acd83(92)
      acd83(107)=acd83(107)+acd83(108)
      acd83(107)=acd83(2)*acd83(107)
      acd83(93)=acd83(33)*acd83(93)
      acd83(93)=acd83(107)+acd83(93)
      acd83(93)=acd83(1)*acd83(93)
      acd83(96)=-acd83(33)*acd83(96)
      acd83(93)=acd83(103)+acd83(93)+acd83(94)+acd83(96)
      acd83(94)=-acd83(35)*acd83(97)
      acd83(87)=acd83(8)*ninjaP*acd83(87)
      acd83(96)=acd83(25)*acd83(60)
      acd83(97)=acd83(72)*acd83(56)
      acd83(103)=acd83(71)*acd83(54)
      acd83(107)=-acd83(13)*acd83(80)
      acd83(108)=acd83(65)*acd83(50)
      acd83(109)=acd83(26)*acd83(38)
      acd83(89)=acd83(89)*ninjaP
      acd83(110)=-acd83(6)*acd83(89)
      acd83(111)=2.0_ki*acd83(33)
      acd83(112)=acd83(52)*acd83(111)
      acd83(87)=acd83(112)+acd83(87)+acd83(110)+acd83(109)+acd83(108)+acd83(107&
      &)+acd83(103)+acd83(96)+acd83(97)+acd83(94)
      acd83(87)=acd83(5)*acd83(87)
      acd83(91)=ninjaP*acd83(91)
      acd83(94)=acd83(42)*acd83(69)
      acd83(96)=acd83(40)*acd83(68)
      acd83(97)=acd83(64)*acd83(31)
      acd83(103)=acd83(65)*acd83(36)
      acd83(107)=acd83(62)+acd83(63)
      acd83(108)=acd83(66)-acd83(107)
      acd83(108)=acd83(10)*acd83(108)
      acd83(109)=acd83(34)*acd83(38)
      acd83(110)=acd83(7)*acd83(34)
      acd83(112)=acd83(35)*acd83(110)
      acd83(113)=acd83(37)*acd83(111)
      acd83(91)=acd83(113)+acd83(112)+acd83(109)+acd83(108)+acd83(103)+acd83(97&
      &)+acd83(94)+acd83(96)+acd83(91)
      acd83(91)=acd83(1)*acd83(91)
      acd83(94)=ninjaP+acd83(66)
      acd83(96)=acd83(20)*acd83(94)
      acd83(97)=acd83(59)*acd83(69)
      acd83(103)=acd83(58)*acd83(68)
      acd83(108)=acd83(64)*acd83(48)
      acd83(109)=acd83(65)*acd83(51)
      acd83(112)=-acd83(18)*acd83(34)*acd83(35)
      acd83(111)=acd83(53)*acd83(111)
      acd83(96)=acd83(111)+acd83(112)+acd83(109)+acd83(108)+acd83(97)+acd83(103&
      &)+acd83(96)
      acd83(96)=acd83(14)*acd83(96)
      acd83(97)=acd83(26)*acd83(10)
      acd83(103)=acd83(23)*acd83(72)
      acd83(108)=-acd83(17)*acd83(71)
      acd83(109)=-acd83(65)*acd83(13)
      acd83(111)=acd83(49)*acd83(20)
      acd83(112)=acd83(35)*acd83(21)
      acd83(103)=acd83(97)+acd83(112)+acd83(111)+acd83(109)+acd83(108)+acd83(77&
      &)+acd83(103)
      acd83(103)=acd83(103)*acd83(92)
      acd83(108)=acd83(21)*acd83(94)
      acd83(95)=-acd83(34)*acd83(95)
      acd83(107)=acd83(107)+acd83(64)
      acd83(109)=acd83(45)*acd83(107)
      acd83(110)=acd83(26)*acd83(110)
      acd83(111)=-acd83(9)*acd83(89)
      acd83(95)=acd83(111)+acd83(110)+acd83(109)+acd83(84)+acd83(95)+acd83(108)
      acd83(95)=acd83(8)*acd83(95)
      acd83(108)=-acd83(13)*acd83(94)
      acd83(109)=acd83(49)*acd83(51)
      acd83(110)=acd83(43)*acd83(107)
      acd83(111)=acd83(26)*acd83(36)
      acd83(112)=acd83(34)*acd83(50)
      acd83(108)=acd83(112)+acd83(111)+acd83(110)+acd83(109)+acd83(81)+acd83(10&
      &8)
      acd83(108)=acd83(2)*acd83(108)
      acd83(109)=acd83(46)*acd83(72)
      acd83(110)=acd83(44)*acd83(71)
      acd83(111)=acd83(43)*acd83(65)
      acd83(112)=acd83(35)*acd83(45)
      acd83(109)=acd83(109)+acd83(110)+acd83(111)+acd83(112)
      acd83(97)=acd83(109)-acd83(97)
      acd83(97)=acd83(97)*acd83(98)
      acd83(98)=acd83(49)*acd83(48)
      acd83(110)=acd83(26)*acd83(31)
      acd83(98)=acd83(110)+acd83(74)+acd83(98)+acd83(109)
      acd83(98)=acd83(29)*acd83(98)
      acd83(109)=acd83(23)*acd83(94)
      acd83(110)=acd83(46)*acd83(107)
      acd83(111)=acd83(34)*acd83(56)
      acd83(109)=acd83(111)+acd83(110)+acd83(109)
      acd83(109)=acd83(22)*acd83(109)
      acd83(110)=-acd83(17)*acd83(94)
      acd83(107)=acd83(44)*acd83(107)
      acd83(111)=acd83(34)*acd83(54)
      acd83(107)=acd83(111)+acd83(107)+acd83(83)+acd83(110)
      acd83(107)=acd83(16)*acd83(107)
      acd83(110)=acd83(49)*acd83(53)
      acd83(111)=acd83(26)*acd83(37)
      acd83(112)=acd83(34)*acd83(52)
      acd83(110)=acd83(112)+acd83(111)+acd83(82)+acd83(110)
      acd83(110)=acd83(4)*acd83(110)
      acd83(100)=acd83(49)*acd83(100)
      acd83(105)=acd83(26)*acd83(105)
      acd83(102)=acd83(34)*acd83(102)
      acd83(111)=acd83(57)*acd83(85)
      acd83(112)=acd83(24)*acd83(61)
      acd83(87)=acd83(110)+acd83(91)+acd83(87)+acd83(108)+acd83(95)+acd83(103)+&
      &acd83(98)+acd83(107)+acd83(109)+acd83(102)+acd83(105)+acd83(100)+acd83(1&
      &11)+acd83(112)+acd83(96)+acd83(97)
      acd83(87)=acd83(4)*acd83(87)
      acd83(86)=acd83(33)*acd83(86)
      acd83(91)=acd83(33)*acd83(101)
      acd83(95)=acd83(78)*acd83(92)
      acd83(89)=-acd83(89)*acd83(8)*acd83(11)
      acd83(89)=acd83(91)+acd83(95)+acd83(89)
      acd83(89)=acd83(5)*acd83(89)
      acd83(91)=acd83(33)*acd83(104)
      acd83(95)=acd83(65)*acd83(3)
      acd83(95)=acd83(67)+acd83(95)
      acd83(95)=acd83(95)*acd83(92)
      acd83(96)=acd83(3)*acd83(94)
      acd83(97)=acd83(64)*acd83(30)
      acd83(96)=acd83(97)+acd83(96)
      acd83(96)=acd83(2)*acd83(96)
      acd83(90)=ninjaP*acd83(11)*acd83(90)
      acd83(97)=acd83(33)*acd83(106)
      acd83(90)=acd83(90)+acd83(97)
      acd83(90)=acd83(5)*acd83(90)
      acd83(97)=acd83(29)*acd83(65)
      acd83(98)=acd83(30)*acd83(97)
      acd83(90)=acd83(90)+acd83(91)+acd83(96)+acd83(98)+acd83(95)
      acd83(90)=acd83(1)*acd83(90)
      acd83(91)=acd83(49)*acd83(47)
      acd83(95)=acd83(26)*acd83(30)
      acd83(91)=acd83(95)+acd83(73)+acd83(91)
      acd83(91)=acd83(29)*acd83(91)
      acd83(95)=acd83(49)*acd83(15)
      acd83(96)=acd83(26)*acd83(3)
      acd83(95)=acd83(96)+acd83(76)+acd83(95)
      acd83(95)=acd83(95)*acd83(92)
      acd83(94)=acd83(15)*acd83(94)
      acd83(96)=acd83(64)*acd83(47)
      acd83(94)=acd83(96)+acd83(94)
      acd83(94)=acd83(14)*acd83(94)
      acd83(91)=acd83(94)+acd83(91)+acd83(95)
      acd83(91)=acd83(2)*acd83(91)
      acd83(94)=acd83(70)*acd83(99)
      acd83(95)=acd83(75)*acd83(92)
      acd83(94)=acd83(95)+acd83(94)
      acd83(94)=acd83(94)*acd83(92)
      acd83(95)=acd83(65)*acd83(15)
      acd83(95)=acd83(79)+acd83(95)
      acd83(92)=acd83(95)*acd83(92)
      acd83(95)=acd83(47)*acd83(97)
      acd83(92)=acd83(95)+acd83(92)
      acd83(92)=acd83(14)*acd83(92)
      acd83(86)=acd83(87)+acd83(90)+acd83(89)+acd83(86)+acd83(91)+acd83(94)+acd&
      &83(92)
      brack(ninjaidxt1mu0)=acd83(93)
      brack(ninjaidxt0mu0)=acd83(86)
      brack(ninjaidxt0mu2)=acd83(88)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d83h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd83h6
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
end module     p0_dbaru_epnebbbarg_d83h6l131
