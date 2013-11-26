module     p9_csbar_epnebbbarg_d86h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d86h0l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d86
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd86h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(119) :: acd86
      complex(ki) :: brack
      acd86(1)=dotproduct(k1,qshift)
      acd86(2)=dotproduct(qshift,spval5k2)
      acd86(3)=abb86(37)
      acd86(4)=dotproduct(qshift,spval6k2)
      acd86(5)=abb86(36)
      acd86(6)=abb86(130)
      acd86(7)=dotproduct(k2,qshift)
      acd86(8)=abb86(51)
      acd86(9)=abb86(95)
      acd86(10)=abb86(52)
      acd86(11)=dotproduct(k3,qshift)
      acd86(12)=abb86(74)
      acd86(13)=abb86(135)
      acd86(14)=abb86(181)
      acd86(15)=dotproduct(k4,qshift)
      acd86(16)=dotproduct(l5,qshift)
      acd86(17)=abb86(44)
      acd86(18)=abb86(85)
      acd86(19)=abb86(35)
      acd86(20)=dotproduct(l6,qshift)
      acd86(21)=abb86(66)
      acd86(22)=dotproduct(k7,qshift)
      acd86(23)=abb86(30)
      acd86(24)=abb86(26)
      acd86(25)=abb86(364)
      acd86(26)=dotproduct(e7,qshift)
      acd86(27)=abb86(16)
      acd86(28)=abb86(33)
      acd86(29)=abb86(100)
      acd86(30)=dotproduct(qshift,qshift)
      acd86(31)=abb86(132)
      acd86(32)=dotproduct(qshift,spvak2k1)
      acd86(33)=abb86(43)
      acd86(34)=dotproduct(qshift,spvak4k1)
      acd86(35)=abb86(19)
      acd86(36)=dotproduct(qshift,spvak4k3)
      acd86(37)=abb86(22)
      acd86(38)=dotproduct(qshift,spval5k1)
      acd86(39)=abb86(61)
      acd86(40)=dotproduct(qshift,spval6k1)
      acd86(41)=abb86(39)
      acd86(42)=dotproduct(qshift,spvae7k1)
      acd86(43)=abb86(18)
      acd86(44)=abb86(15)
      acd86(45)=abb86(40)
      acd86(46)=abb86(25)
      acd86(47)=abb86(23)
      acd86(48)=abb86(55)
      acd86(49)=abb86(28)
      acd86(50)=abb86(50)
      acd86(51)=abb86(32)
      acd86(52)=dotproduct(qshift,spvak1k2)
      acd86(53)=abb86(46)
      acd86(54)=abb86(27)
      acd86(55)=dotproduct(qshift,spvak2k3)
      acd86(56)=abb86(48)
      acd86(57)=dotproduct(qshift,spvak2l5)
      acd86(58)=abb86(31)
      acd86(59)=dotproduct(qshift,spvak2l6)
      acd86(60)=abb86(45)
      acd86(61)=dotproduct(qshift,spvak2k7)
      acd86(62)=abb86(29)
      acd86(63)=abb86(24)
      acd86(64)=dotproduct(qshift,spvak4k2)
      acd86(65)=abb86(42)
      acd86(66)=abb86(21)
      acd86(67)=dotproduct(qshift,spvak4k7)
      acd86(68)=abb86(67)
      acd86(69)=abb86(47)
      acd86(70)=abb86(20)
      acd86(71)=abb86(92)
      acd86(72)=dotproduct(qshift,spval6k3)
      acd86(73)=abb86(41)
      acd86(74)=dotproduct(qshift,spval6l5)
      acd86(75)=abb86(34)
      acd86(76)=dotproduct(qshift,spval6k7)
      acd86(77)=abb86(49)
      acd86(78)=dotproduct(qshift,spvak7k1)
      acd86(79)=abb86(141)
      acd86(80)=dotproduct(qshift,spvak7k2)
      acd86(81)=abb86(196)
      acd86(82)=dotproduct(qshift,spvak7k3)
      acd86(83)=abb86(260)
      acd86(84)=dotproduct(qshift,spvae7k2)
      acd86(85)=abb86(86)
      acd86(86)=dotproduct(qshift,spval6e7)
      acd86(87)=abb86(38)
      acd86(88)=abb86(17)
      acd86(89)=acd86(16)+acd86(20)
      acd86(90)=-acd86(18)*acd86(89)
      acd86(91)=acd86(11)+acd86(15)
      acd86(92)=acd86(13)*acd86(91)
      acd86(93)=acd86(42)*acd86(50)
      acd86(94)=acd86(40)*acd86(49)
      acd86(95)=acd86(38)*acd86(48)
      acd86(96)=acd86(36)*acd86(47)
      acd86(97)=acd86(34)*acd86(46)
      acd86(98)=acd86(32)*acd86(45)
      acd86(99)=acd86(26)*acd86(28)
      acd86(100)=acd86(22)*acd86(24)
      acd86(101)=acd86(7)*acd86(9)
      acd86(102)=acd86(1)*acd86(5)
      acd86(90)=acd86(102)+acd86(101)+acd86(100)+acd86(99)+acd86(98)+acd86(97)+&
      &acd86(96)+acd86(95)+acd86(94)-acd86(51)+acd86(93)+acd86(92)+acd86(90)
      acd86(90)=acd86(4)*acd86(90)
      acd86(89)=acd86(17)*acd86(89)
      acd86(92)=acd86(12)*acd86(91)
      acd86(93)=acd86(42)*acd86(43)
      acd86(94)=acd86(40)*acd86(41)
      acd86(95)=acd86(38)*acd86(39)
      acd86(96)=acd86(36)*acd86(37)
      acd86(97)=acd86(34)*acd86(35)
      acd86(98)=acd86(32)*acd86(33)
      acd86(99)=acd86(26)*acd86(27)
      acd86(100)=acd86(22)*acd86(23)
      acd86(101)=acd86(7)*acd86(8)
      acd86(102)=acd86(1)*acd86(3)
      acd86(89)=acd86(102)+acd86(101)+acd86(100)+acd86(99)+acd86(98)+acd86(97)+&
      &acd86(96)+acd86(95)+acd86(94)-acd86(44)+acd86(93)+acd86(92)+acd86(89)
      acd86(89)=acd86(2)*acd86(89)
      acd86(91)=-acd86(14)*acd86(91)
      acd86(92)=-acd86(86)*acd86(87)
      acd86(93)=-acd86(84)*acd86(85)
      acd86(94)=-acd86(82)*acd86(83)
      acd86(95)=-acd86(80)*acd86(81)
      acd86(96)=-acd86(78)*acd86(79)
      acd86(97)=-acd86(76)*acd86(77)
      acd86(98)=-acd86(74)*acd86(75)
      acd86(99)=-acd86(72)*acd86(73)
      acd86(100)=-acd86(67)*acd86(68)
      acd86(101)=-acd86(64)*acd86(65)
      acd86(102)=-acd86(61)*acd86(62)
      acd86(103)=-acd86(59)*acd86(60)
      acd86(104)=-acd86(57)*acd86(58)
      acd86(105)=-acd86(55)*acd86(56)
      acd86(106)=-acd86(52)*acd86(53)
      acd86(107)=acd86(30)*acd86(31)
      acd86(108)=-acd86(42)*acd86(71)
      acd86(109)=-acd86(40)*acd86(70)
      acd86(110)=-acd86(38)*acd86(69)
      acd86(111)=-acd86(36)*acd86(66)
      acd86(112)=-acd86(34)*acd86(63)
      acd86(113)=-acd86(32)*acd86(54)
      acd86(114)=-acd86(26)*acd86(29)
      acd86(115)=-acd86(22)*acd86(25)
      acd86(116)=-acd86(20)*acd86(21)
      acd86(117)=-acd86(16)*acd86(19)
      acd86(118)=-acd86(7)*acd86(10)
      acd86(119)=-acd86(1)*acd86(6)
      brack=acd86(88)+acd86(89)+acd86(90)+acd86(91)+acd86(92)+acd86(93)+acd86(9&
      &4)+acd86(95)+acd86(96)+acd86(97)+acd86(98)+acd86(99)+acd86(100)+acd86(10&
      &1)+acd86(102)+acd86(103)+acd86(104)+acd86(105)+acd86(106)+acd86(107)+acd&
      &86(108)+acd86(109)+acd86(110)+acd86(111)+acd86(112)+acd86(113)+acd86(114&
      &)+acd86(115)+acd86(116)+acd86(117)+acd86(118)+acd86(119)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd86h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(136) :: acd86
      complex(ki) :: brack
      acd86(1)=k1(iv1)
      acd86(2)=dotproduct(qshift,spval5k2)
      acd86(3)=abb86(37)
      acd86(4)=dotproduct(qshift,spval6k2)
      acd86(5)=abb86(36)
      acd86(6)=abb86(130)
      acd86(7)=k2(iv1)
      acd86(8)=abb86(51)
      acd86(9)=abb86(95)
      acd86(10)=abb86(52)
      acd86(11)=k3(iv1)
      acd86(12)=abb86(74)
      acd86(13)=abb86(135)
      acd86(14)=abb86(181)
      acd86(15)=k4(iv1)
      acd86(16)=l5(iv1)
      acd86(17)=abb86(44)
      acd86(18)=abb86(85)
      acd86(19)=abb86(35)
      acd86(20)=l6(iv1)
      acd86(21)=abb86(66)
      acd86(22)=k7(iv1)
      acd86(23)=abb86(30)
      acd86(24)=abb86(26)
      acd86(25)=abb86(364)
      acd86(26)=e7(iv1)
      acd86(27)=abb86(16)
      acd86(28)=abb86(33)
      acd86(29)=abb86(100)
      acd86(30)=qshift(iv1)
      acd86(31)=abb86(132)
      acd86(32)=spval5k2(iv1)
      acd86(33)=dotproduct(k1,qshift)
      acd86(34)=dotproduct(k2,qshift)
      acd86(35)=dotproduct(k3,qshift)
      acd86(36)=dotproduct(k4,qshift)
      acd86(37)=dotproduct(l5,qshift)
      acd86(38)=dotproduct(l6,qshift)
      acd86(39)=dotproduct(k7,qshift)
      acd86(40)=dotproduct(e7,qshift)
      acd86(41)=dotproduct(qshift,spvak2k1)
      acd86(42)=abb86(43)
      acd86(43)=dotproduct(qshift,spvak4k1)
      acd86(44)=abb86(19)
      acd86(45)=dotproduct(qshift,spvak4k3)
      acd86(46)=abb86(22)
      acd86(47)=dotproduct(qshift,spval5k1)
      acd86(48)=abb86(61)
      acd86(49)=dotproduct(qshift,spval6k1)
      acd86(50)=abb86(39)
      acd86(51)=dotproduct(qshift,spvae7k1)
      acd86(52)=abb86(18)
      acd86(53)=abb86(15)
      acd86(54)=spval6k2(iv1)
      acd86(55)=abb86(40)
      acd86(56)=abb86(25)
      acd86(57)=abb86(23)
      acd86(58)=abb86(55)
      acd86(59)=abb86(28)
      acd86(60)=abb86(50)
      acd86(61)=abb86(32)
      acd86(62)=spvak1k2(iv1)
      acd86(63)=abb86(46)
      acd86(64)=spvak2k1(iv1)
      acd86(65)=abb86(27)
      acd86(66)=spvak2k3(iv1)
      acd86(67)=abb86(48)
      acd86(68)=spvak2l5(iv1)
      acd86(69)=abb86(31)
      acd86(70)=spvak2l6(iv1)
      acd86(71)=abb86(45)
      acd86(72)=spvak2k7(iv1)
      acd86(73)=abb86(29)
      acd86(74)=spvak4k1(iv1)
      acd86(75)=abb86(24)
      acd86(76)=spvak4k2(iv1)
      acd86(77)=abb86(42)
      acd86(78)=spvak4k3(iv1)
      acd86(79)=abb86(21)
      acd86(80)=spvak4k7(iv1)
      acd86(81)=abb86(67)
      acd86(82)=spval5k1(iv1)
      acd86(83)=abb86(47)
      acd86(84)=spval6k1(iv1)
      acd86(85)=abb86(20)
      acd86(86)=spvae7k1(iv1)
      acd86(87)=abb86(92)
      acd86(88)=spval6k3(iv1)
      acd86(89)=abb86(41)
      acd86(90)=spval6l5(iv1)
      acd86(91)=abb86(34)
      acd86(92)=spval6k7(iv1)
      acd86(93)=abb86(49)
      acd86(94)=spvak7k1(iv1)
      acd86(95)=abb86(141)
      acd86(96)=spvak7k2(iv1)
      acd86(97)=abb86(196)
      acd86(98)=spvak7k3(iv1)
      acd86(99)=abb86(260)
      acd86(100)=spvae7k2(iv1)
      acd86(101)=abb86(86)
      acd86(102)=spval6e7(iv1)
      acd86(103)=abb86(38)
      acd86(104)=acd86(86)*acd86(60)
      acd86(105)=acd86(84)*acd86(59)
      acd86(106)=acd86(82)*acd86(58)
      acd86(107)=acd86(78)*acd86(57)
      acd86(108)=acd86(74)*acd86(56)
      acd86(109)=acd86(64)*acd86(55)
      acd86(110)=acd86(26)*acd86(28)
      acd86(111)=acd86(22)*acd86(24)
      acd86(112)=acd86(7)*acd86(9)
      acd86(113)=acd86(1)*acd86(5)
      acd86(114)=acd86(16)+acd86(20)
      acd86(115)=-acd86(18)*acd86(114)
      acd86(116)=acd86(11)+acd86(15)
      acd86(117)=acd86(13)*acd86(116)
      acd86(104)=acd86(117)+acd86(115)+acd86(113)+acd86(112)+acd86(111)+acd86(1&
      &10)+acd86(109)+acd86(108)+acd86(107)+acd86(106)+acd86(104)+acd86(105)
      acd86(104)=acd86(4)*acd86(104)
      acd86(105)=acd86(86)*acd86(52)
      acd86(106)=acd86(84)*acd86(50)
      acd86(107)=acd86(82)*acd86(48)
      acd86(108)=acd86(78)*acd86(46)
      acd86(109)=acd86(74)*acd86(44)
      acd86(110)=acd86(64)*acd86(42)
      acd86(111)=acd86(26)*acd86(27)
      acd86(112)=acd86(22)*acd86(23)
      acd86(113)=acd86(7)*acd86(8)
      acd86(115)=acd86(1)*acd86(3)
      acd86(114)=acd86(17)*acd86(114)
      acd86(117)=acd86(12)*acd86(116)
      acd86(105)=acd86(117)+acd86(114)+acd86(115)+acd86(113)+acd86(112)+acd86(1&
      &11)+acd86(110)+acd86(109)+acd86(108)+acd86(107)+acd86(105)+acd86(106)
      acd86(105)=acd86(2)*acd86(105)
      acd86(106)=acd86(51)*acd86(60)
      acd86(107)=acd86(49)*acd86(59)
      acd86(108)=acd86(47)*acd86(58)
      acd86(109)=acd86(45)*acd86(57)
      acd86(110)=acd86(43)*acd86(56)
      acd86(111)=acd86(41)*acd86(55)
      acd86(112)=acd86(28)*acd86(40)
      acd86(113)=acd86(24)*acd86(39)
      acd86(114)=acd86(9)*acd86(34)
      acd86(115)=acd86(5)*acd86(33)
      acd86(117)=acd86(37)+acd86(38)
      acd86(118)=-acd86(18)*acd86(117)
      acd86(119)=acd86(35)+acd86(36)
      acd86(120)=acd86(13)*acd86(119)
      acd86(106)=acd86(120)+acd86(118)+acd86(115)+acd86(114)+acd86(113)+acd86(1&
      &12)+acd86(111)+acd86(110)+acd86(109)+acd86(108)+acd86(107)-acd86(61)+acd&
      &86(106)
      acd86(106)=acd86(54)*acd86(106)
      acd86(107)=acd86(51)*acd86(52)
      acd86(108)=acd86(49)*acd86(50)
      acd86(109)=acd86(47)*acd86(48)
      acd86(110)=acd86(45)*acd86(46)
      acd86(111)=acd86(43)*acd86(44)
      acd86(112)=acd86(41)*acd86(42)
      acd86(113)=acd86(27)*acd86(40)
      acd86(114)=acd86(23)*acd86(39)
      acd86(115)=acd86(8)*acd86(34)
      acd86(118)=acd86(3)*acd86(33)
      acd86(117)=acd86(17)*acd86(117)
      acd86(119)=acd86(12)*acd86(119)
      acd86(107)=acd86(119)+acd86(117)+acd86(118)+acd86(115)+acd86(114)+acd86(1&
      &13)+acd86(112)+acd86(111)+acd86(110)+acd86(109)+acd86(108)-acd86(53)+acd&
      &86(107)
      acd86(107)=acd86(32)*acd86(107)
      acd86(108)=-acd86(14)*acd86(116)
      acd86(109)=-acd86(102)*acd86(103)
      acd86(110)=-acd86(100)*acd86(101)
      acd86(111)=-acd86(98)*acd86(99)
      acd86(112)=-acd86(96)*acd86(97)
      acd86(113)=-acd86(94)*acd86(95)
      acd86(114)=-acd86(92)*acd86(93)
      acd86(115)=-acd86(90)*acd86(91)
      acd86(116)=-acd86(88)*acd86(89)
      acd86(117)=-acd86(80)*acd86(81)
      acd86(118)=-acd86(76)*acd86(77)
      acd86(119)=-acd86(72)*acd86(73)
      acd86(120)=-acd86(70)*acd86(71)
      acd86(121)=-acd86(68)*acd86(69)
      acd86(122)=-acd86(66)*acd86(67)
      acd86(123)=-acd86(62)*acd86(63)
      acd86(124)=acd86(30)*acd86(31)
      acd86(125)=-acd86(86)*acd86(87)
      acd86(126)=-acd86(84)*acd86(85)
      acd86(127)=-acd86(82)*acd86(83)
      acd86(128)=-acd86(78)*acd86(79)
      acd86(129)=-acd86(74)*acd86(75)
      acd86(130)=-acd86(64)*acd86(65)
      acd86(131)=-acd86(26)*acd86(29)
      acd86(132)=-acd86(22)*acd86(25)
      acd86(133)=-acd86(20)*acd86(21)
      acd86(134)=-acd86(16)*acd86(19)
      acd86(135)=-acd86(7)*acd86(10)
      acd86(136)=-acd86(1)*acd86(6)
      brack=acd86(104)+acd86(105)+acd86(106)+acd86(107)+acd86(108)+acd86(109)+a&
      &cd86(110)+acd86(111)+acd86(112)+acd86(113)+acd86(114)+acd86(115)+acd86(1&
      &16)+acd86(117)+acd86(118)+acd86(119)+acd86(120)+acd86(121)+acd86(122)+ac&
      &d86(123)+2.0_ki*acd86(124)+acd86(125)+acd86(126)+acd86(127)+acd86(128)+a&
      &cd86(129)+acd86(130)+acd86(131)+acd86(132)+acd86(133)+acd86(134)+acd86(1&
      &35)+acd86(136)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd86h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd86
      complex(ki) :: brack
      acd86(1)=d(iv1,iv2)
      acd86(2)=abb86(132)
      acd86(3)=k1(iv1)
      acd86(4)=spval5k2(iv2)
      acd86(5)=abb86(37)
      acd86(6)=spval6k2(iv2)
      acd86(7)=abb86(36)
      acd86(8)=k1(iv2)
      acd86(9)=spval5k2(iv1)
      acd86(10)=spval6k2(iv1)
      acd86(11)=k2(iv1)
      acd86(12)=abb86(51)
      acd86(13)=abb86(95)
      acd86(14)=k2(iv2)
      acd86(15)=k3(iv1)
      acd86(16)=abb86(74)
      acd86(17)=abb86(135)
      acd86(18)=k3(iv2)
      acd86(19)=k4(iv1)
      acd86(20)=k4(iv2)
      acd86(21)=l5(iv1)
      acd86(22)=abb86(44)
      acd86(23)=abb86(85)
      acd86(24)=l5(iv2)
      acd86(25)=l6(iv1)
      acd86(26)=l6(iv2)
      acd86(27)=k7(iv1)
      acd86(28)=abb86(30)
      acd86(29)=abb86(26)
      acd86(30)=k7(iv2)
      acd86(31)=e7(iv1)
      acd86(32)=abb86(16)
      acd86(33)=abb86(33)
      acd86(34)=e7(iv2)
      acd86(35)=spvak2k1(iv2)
      acd86(36)=abb86(43)
      acd86(37)=spvak4k1(iv2)
      acd86(38)=abb86(19)
      acd86(39)=spvak4k3(iv2)
      acd86(40)=abb86(22)
      acd86(41)=spval5k1(iv2)
      acd86(42)=abb86(61)
      acd86(43)=spval6k1(iv2)
      acd86(44)=abb86(39)
      acd86(45)=spvae7k1(iv2)
      acd86(46)=abb86(18)
      acd86(47)=spvak2k1(iv1)
      acd86(48)=spvak4k1(iv1)
      acd86(49)=spvak4k3(iv1)
      acd86(50)=spval5k1(iv1)
      acd86(51)=spval6k1(iv1)
      acd86(52)=spvae7k1(iv1)
      acd86(53)=abb86(40)
      acd86(54)=abb86(25)
      acd86(55)=abb86(23)
      acd86(56)=abb86(55)
      acd86(57)=abb86(28)
      acd86(58)=abb86(50)
      acd86(59)=acd86(45)*acd86(58)
      acd86(60)=acd86(43)*acd86(57)
      acd86(61)=acd86(41)*acd86(56)
      acd86(62)=acd86(39)*acd86(55)
      acd86(63)=acd86(37)*acd86(54)
      acd86(64)=acd86(35)*acd86(53)
      acd86(65)=acd86(33)*acd86(34)
      acd86(66)=acd86(29)*acd86(30)
      acd86(67)=acd86(13)*acd86(14)
      acd86(68)=acd86(7)*acd86(8)
      acd86(69)=acd86(24)+acd86(26)
      acd86(70)=-acd86(23)*acd86(69)
      acd86(71)=acd86(18)+acd86(20)
      acd86(72)=acd86(17)*acd86(71)
      acd86(59)=acd86(72)+acd86(70)+acd86(68)+acd86(67)+acd86(66)+acd86(65)+acd&
      &86(64)+acd86(63)+acd86(62)+acd86(61)+acd86(59)+acd86(60)
      acd86(59)=acd86(10)*acd86(59)
      acd86(60)=acd86(45)*acd86(46)
      acd86(61)=acd86(43)*acd86(44)
      acd86(62)=acd86(41)*acd86(42)
      acd86(63)=acd86(39)*acd86(40)
      acd86(64)=acd86(37)*acd86(38)
      acd86(65)=acd86(35)*acd86(36)
      acd86(66)=acd86(32)*acd86(34)
      acd86(67)=acd86(28)*acd86(30)
      acd86(68)=acd86(12)*acd86(14)
      acd86(70)=acd86(5)*acd86(8)
      acd86(69)=acd86(22)*acd86(69)
      acd86(71)=acd86(16)*acd86(71)
      acd86(60)=acd86(71)+acd86(69)+acd86(70)+acd86(68)+acd86(67)+acd86(66)+acd&
      &86(65)+acd86(64)+acd86(63)+acd86(62)+acd86(60)+acd86(61)
      acd86(60)=acd86(9)*acd86(60)
      acd86(61)=acd86(52)*acd86(58)
      acd86(62)=acd86(51)*acd86(57)
      acd86(63)=acd86(50)*acd86(56)
      acd86(64)=acd86(49)*acd86(55)
      acd86(65)=acd86(48)*acd86(54)
      acd86(66)=acd86(47)*acd86(53)
      acd86(67)=acd86(31)*acd86(33)
      acd86(68)=acd86(27)*acd86(29)
      acd86(69)=acd86(11)*acd86(13)
      acd86(70)=acd86(3)*acd86(7)
      acd86(71)=acd86(21)+acd86(25)
      acd86(72)=-acd86(23)*acd86(71)
      acd86(73)=acd86(15)+acd86(19)
      acd86(74)=acd86(17)*acd86(73)
      acd86(61)=acd86(74)+acd86(72)+acd86(70)+acd86(69)+acd86(68)+acd86(67)+acd&
      &86(66)+acd86(65)+acd86(64)+acd86(63)+acd86(61)+acd86(62)
      acd86(61)=acd86(6)*acd86(61)
      acd86(62)=acd86(46)*acd86(52)
      acd86(63)=acd86(44)*acd86(51)
      acd86(64)=acd86(42)*acd86(50)
      acd86(65)=acd86(40)*acd86(49)
      acd86(66)=acd86(38)*acd86(48)
      acd86(67)=acd86(36)*acd86(47)
      acd86(68)=acd86(31)*acd86(32)
      acd86(69)=acd86(27)*acd86(28)
      acd86(70)=acd86(11)*acd86(12)
      acd86(72)=acd86(3)*acd86(5)
      acd86(71)=acd86(22)*acd86(71)
      acd86(73)=acd86(16)*acd86(73)
      acd86(62)=acd86(73)+acd86(71)+acd86(72)+acd86(70)+acd86(69)+acd86(68)+acd&
      &86(67)+acd86(66)+acd86(65)+acd86(64)+acd86(62)+acd86(63)
      acd86(62)=acd86(4)*acd86(62)
      acd86(63)=acd86(1)*acd86(2)
      brack=acd86(59)+acd86(60)+acd86(61)+acd86(62)+2.0_ki*acd86(63)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd86h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k6
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
      end if
      if(present(i2)) then
          iv2=i2
          deg=2
      else
          iv2=1
      end if
      t1 = 0
      if(deg.eq.0) then
         numerator = cond(epspow.eq.t1,brack_1,Q,mu2)
         return
      end if
      if(deg.eq.1) then
         numerator = cond(epspow.eq.t1,brack_2,Q,mu2)
         return
      end if
      if(deg.eq.2) then
         numerator = cond(epspow.eq.t1,brack_3,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d86:
   subroutine     reconstruct_d86(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_86:
      coeffs%coeffs_86%c0 = derivative(czip)
      coeffs%coeffs_86%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_86%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_86%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_86%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_86%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_86%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_86%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_86%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_86%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_86%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_86%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_86%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_86%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_86%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_86:
   end subroutine reconstruct_d86
!---#] subroutine reconstruct_d86:
end module     p9_csbar_epnebbbarg_d86h0l1d
