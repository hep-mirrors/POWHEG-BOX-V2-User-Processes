module     p9_csbar_epnebbbarg_d312h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d312h0l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d312
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd312h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(93) :: acd312
      complex(ki) :: brack
      acd312(1)=dotproduct(k1,qshift)
      acd312(2)=dotproduct(k2,qshift)
      acd312(3)=abb312(102)
      acd312(4)=dotproduct(e7,qshift)
      acd312(5)=abb312(149)
      acd312(6)=dotproduct(qshift,spvak2k1)
      acd312(7)=abb312(19)
      acd312(8)=dotproduct(qshift,spvak4k1)
      acd312(9)=abb312(56)
      acd312(10)=dotproduct(qshift,spvak4k2)
      acd312(11)=abb312(41)
      acd312(12)=dotproduct(qshift,spval6k1)
      acd312(13)=abb312(15)
      acd312(14)=abb312(29)
      acd312(15)=abb312(73)
      acd312(16)=dotproduct(l6,qshift)
      acd312(17)=abb312(65)
      acd312(18)=dotproduct(qshift,qshift)
      acd312(19)=abb312(48)
      acd312(20)=abb312(9)
      acd312(21)=abb312(64)
      acd312(22)=abb312(45)
      acd312(23)=abb312(20)
      acd312(24)=abb312(60)
      acd312(25)=dotproduct(qshift,spvae7k1)
      acd312(26)=abb312(51)
      acd312(27)=abb312(55)
      acd312(28)=abb312(35)
      acd312(29)=dotproduct(qshift,spval6k2)
      acd312(30)=abb312(43)
      acd312(31)=abb312(69)
      acd312(32)=abb312(39)
      acd312(33)=abb312(12)
      acd312(34)=abb312(23)
      acd312(35)=abb312(27)
      acd312(36)=abb312(40)
      acd312(37)=abb312(68)
      acd312(38)=abb312(52)
      acd312(39)=abb312(26)
      acd312(40)=dotproduct(qshift,spval5k1)
      acd312(41)=abb312(34)
      acd312(42)=dotproduct(qshift,spval5k2)
      acd312(43)=abb312(31)
      acd312(44)=abb312(10)
      acd312(45)=abb312(16)
      acd312(46)=abb312(14)
      acd312(47)=abb312(22)
      acd312(48)=abb312(36)
      acd312(49)=abb312(21)
      acd312(50)=abb312(18)
      acd312(51)=abb312(44)
      acd312(52)=dotproduct(qshift,spval6l5)
      acd312(53)=abb312(137)
      acd312(54)=dotproduct(qshift,spval6k7)
      acd312(55)=abb312(133)
      acd312(56)=abb312(46)
      acd312(57)=abb312(11)
      acd312(58)=dotproduct(qshift,spval6e7)
      acd312(59)=abb312(13)
      acd312(60)=abb312(115)
      acd312(61)=abb312(24)
      acd312(62)=dotproduct(qshift,spvak1k2)
      acd312(63)=abb312(17)
      acd312(64)=dotproduct(qshift,spvak7k1)
      acd312(65)=abb312(76)
      acd312(66)=abb312(25)
      acd312(67)=abb312(30)
      acd312(68)=abb312(53)
      acd312(69)=dotproduct(qshift,spvak7k2)
      acd312(70)=abb312(75)
      acd312(71)=dotproduct(qshift,spvae7k2)
      acd312(72)=abb312(66)
      acd312(73)=abb312(28)
      acd312(74)=-acd312(19)*acd312(2)
      acd312(75)=-acd312(28)*acd312(4)
      acd312(76)=-acd312(36)*acd312(6)
      acd312(77)=-acd312(37)*acd312(8)
      acd312(78)=-acd312(38)*acd312(10)
      acd312(79)=-acd312(39)*acd312(29)
      acd312(80)=-acd312(41)*acd312(40)
      acd312(81)=-acd312(43)*acd312(42)
      acd312(74)=acd312(44)+acd312(81)+acd312(80)+acd312(79)+acd312(78)+acd312(&
      &77)+acd312(76)+acd312(75)+acd312(74)
      acd312(74)=acd312(18)*acd312(74)
      acd312(75)=acd312(17)*acd312(4)
      acd312(76)=acd312(20)*acd312(6)
      acd312(77)=acd312(21)*acd312(8)
      acd312(78)=acd312(22)*acd312(10)
      acd312(79)=acd312(23)*acd312(12)
      acd312(75)=-acd312(24)+acd312(79)+acd312(78)+acd312(77)+acd312(76)+acd312&
      &(75)
      acd312(75)=acd312(2)*acd312(75)
      acd312(76)=acd312(26)*acd312(16)
      acd312(77)=acd312(49)*acd312(12)
      acd312(78)=acd312(51)*acd312(29)
      acd312(79)=acd312(53)*acd312(52)
      acd312(80)=acd312(55)*acd312(54)
      acd312(76)=-acd312(56)+acd312(80)+acd312(79)+acd312(78)+acd312(77)+acd312&
      &(76)
      acd312(76)=acd312(25)*acd312(76)
      acd312(77)=acd312(3)*acd312(2)
      acd312(78)=acd312(7)*acd312(6)
      acd312(79)=-acd312(9)*acd312(8)
      acd312(80)=acd312(11)*acd312(10)
      acd312(77)=acd312(78)+acd312(77)+acd312(80)+acd312(79)
      acd312(78)=acd312(16)-acd312(1)
      acd312(77)=acd312(78)*acd312(77)
      acd312(79)=-acd312(30)*acd312(6)
      acd312(80)=-acd312(31)*acd312(8)
      acd312(79)=acd312(34)+acd312(80)+acd312(79)
      acd312(79)=acd312(79)*acd312(4)
      acd312(80)=acd312(45)*acd312(6)
      acd312(81)=acd312(47)*acd312(8)
      acd312(79)=-acd312(57)+acd312(81)+acd312(80)+acd312(79)
      acd312(79)=acd312(29)*acd312(79)
      acd312(80)=acd312(5)*acd312(1)
      acd312(81)=acd312(32)*acd312(10)
      acd312(82)=acd312(33)*acd312(12)
      acd312(80)=-acd312(35)+acd312(82)+acd312(81)+acd312(80)
      acd312(80)=acd312(4)*acd312(80)
      acd312(81)=acd312(59)*acd312(40)
      acd312(82)=acd312(65)*acd312(64)
      acd312(81)=-acd312(66)+acd312(82)+acd312(81)
      acd312(81)=acd312(58)*acd312(81)
      acd312(78)=acd312(18)+acd312(78)
      acd312(78)=acd312(13)*acd312(78)
      acd312(78)=-acd312(50)+acd312(78)
      acd312(78)=acd312(12)*acd312(78)
      acd312(82)=-acd312(14)*acd312(1)
      acd312(83)=acd312(15)*acd312(2)**2
      acd312(84)=-acd312(27)*acd312(16)
      acd312(85)=-acd312(46)*acd312(6)
      acd312(86)=-acd312(48)*acd312(10)
      acd312(87)=-acd312(60)*acd312(40)
      acd312(88)=-acd312(61)*acd312(42)
      acd312(89)=-acd312(63)*acd312(62)
      acd312(90)=-acd312(67)*acd312(54)
      acd312(91)=-acd312(68)*acd312(64)
      acd312(92)=-acd312(70)*acd312(69)
      acd312(93)=-acd312(72)*acd312(71)
      brack=acd312(73)+acd312(74)+acd312(75)+acd312(76)+acd312(77)+acd312(78)+a&
      &cd312(79)+acd312(80)+acd312(81)+acd312(82)+acd312(83)+acd312(84)+acd312(&
      &85)+acd312(86)+acd312(87)+acd312(88)+acd312(89)+acd312(90)+acd312(91)+ac&
      &d312(92)+acd312(93)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd312h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(114) :: acd312
      complex(ki) :: brack
      acd312(1)=k1(iv1)
      acd312(2)=dotproduct(k2,qshift)
      acd312(3)=abb312(102)
      acd312(4)=dotproduct(e7,qshift)
      acd312(5)=abb312(149)
      acd312(6)=dotproduct(qshift,spvak2k1)
      acd312(7)=abb312(19)
      acd312(8)=dotproduct(qshift,spvak4k1)
      acd312(9)=abb312(56)
      acd312(10)=dotproduct(qshift,spvak4k2)
      acd312(11)=abb312(41)
      acd312(12)=dotproduct(qshift,spval6k1)
      acd312(13)=abb312(15)
      acd312(14)=abb312(29)
      acd312(15)=k2(iv1)
      acd312(16)=dotproduct(k1,qshift)
      acd312(17)=abb312(73)
      acd312(18)=dotproduct(l6,qshift)
      acd312(19)=abb312(65)
      acd312(20)=dotproduct(qshift,qshift)
      acd312(21)=abb312(48)
      acd312(22)=abb312(9)
      acd312(23)=abb312(64)
      acd312(24)=abb312(45)
      acd312(25)=abb312(20)
      acd312(26)=abb312(60)
      acd312(27)=l6(iv1)
      acd312(28)=dotproduct(qshift,spvae7k1)
      acd312(29)=abb312(51)
      acd312(30)=abb312(55)
      acd312(31)=e7(iv1)
      acd312(32)=abb312(35)
      acd312(33)=dotproduct(qshift,spval6k2)
      acd312(34)=abb312(43)
      acd312(35)=abb312(69)
      acd312(36)=abb312(39)
      acd312(37)=abb312(12)
      acd312(38)=abb312(23)
      acd312(39)=abb312(27)
      acd312(40)=qshift(iv1)
      acd312(41)=abb312(40)
      acd312(42)=abb312(68)
      acd312(43)=abb312(52)
      acd312(44)=abb312(26)
      acd312(45)=dotproduct(qshift,spval5k1)
      acd312(46)=abb312(34)
      acd312(47)=dotproduct(qshift,spval5k2)
      acd312(48)=abb312(31)
      acd312(49)=abb312(10)
      acd312(50)=spvak2k1(iv1)
      acd312(51)=abb312(16)
      acd312(52)=abb312(14)
      acd312(53)=spvak4k1(iv1)
      acd312(54)=abb312(22)
      acd312(55)=spvak4k2(iv1)
      acd312(56)=abb312(36)
      acd312(57)=spval6k1(iv1)
      acd312(58)=abb312(21)
      acd312(59)=abb312(18)
      acd312(60)=spvae7k1(iv1)
      acd312(61)=abb312(44)
      acd312(62)=dotproduct(qshift,spval6l5)
      acd312(63)=abb312(137)
      acd312(64)=dotproduct(qshift,spval6k7)
      acd312(65)=abb312(133)
      acd312(66)=abb312(46)
      acd312(67)=spval6k2(iv1)
      acd312(68)=abb312(11)
      acd312(69)=spval5k1(iv1)
      acd312(70)=dotproduct(qshift,spval6e7)
      acd312(71)=abb312(13)
      acd312(72)=abb312(115)
      acd312(73)=spval5k2(iv1)
      acd312(74)=abb312(24)
      acd312(75)=spvak1k2(iv1)
      acd312(76)=abb312(17)
      acd312(77)=spval6e7(iv1)
      acd312(78)=dotproduct(qshift,spvak7k1)
      acd312(79)=abb312(76)
      acd312(80)=abb312(25)
      acd312(81)=spval6l5(iv1)
      acd312(82)=spval6k7(iv1)
      acd312(83)=abb312(30)
      acd312(84)=spvak7k1(iv1)
      acd312(85)=abb312(53)
      acd312(86)=spvak7k2(iv1)
      acd312(87)=abb312(75)
      acd312(88)=spvae7k2(iv1)
      acd312(89)=abb312(66)
      acd312(90)=acd312(48)*acd312(73)
      acd312(91)=acd312(69)*acd312(46)
      acd312(92)=acd312(55)*acd312(43)
      acd312(93)=acd312(53)*acd312(42)
      acd312(94)=-acd312(57)*acd312(13)
      acd312(95)=acd312(50)*acd312(41)
      acd312(96)=acd312(67)*acd312(44)
      acd312(97)=acd312(31)*acd312(32)
      acd312(90)=acd312(97)+acd312(96)+acd312(95)+acd312(94)+acd312(93)+acd312(&
      &92)+acd312(90)+acd312(91)
      acd312(90)=acd312(20)*acd312(90)
      acd312(91)=acd312(12)*acd312(13)
      acd312(92)=acd312(48)*acd312(47)
      acd312(93)=acd312(45)*acd312(46)
      acd312(94)=acd312(10)*acd312(43)
      acd312(95)=acd312(8)*acd312(42)
      acd312(96)=acd312(6)*acd312(41)
      acd312(97)=acd312(33)*acd312(44)
      acd312(98)=acd312(2)*acd312(21)
      acd312(92)=acd312(98)+acd312(97)+acd312(96)+acd312(95)-acd312(91)+acd312(&
      &94)+acd312(93)-acd312(49)+acd312(92)
      acd312(93)=2.0_ki*acd312(40)
      acd312(92)=acd312(92)*acd312(93)
      acd312(94)=acd312(16)-acd312(18)
      acd312(95)=acd312(3)*acd312(94)
      acd312(96)=-acd312(10)*acd312(24)
      acd312(97)=-acd312(12)*acd312(25)
      acd312(98)=-acd312(8)*acd312(23)
      acd312(99)=-acd312(6)*acd312(22)
      acd312(100)=acd312(20)*acd312(21)
      acd312(101)=acd312(2)*acd312(17)
      acd312(95)=-2.0_ki*acd312(101)+acd312(100)+acd312(99)+acd312(98)+acd312(9&
      &7)+acd312(26)+acd312(96)+acd312(95)
      acd312(95)=acd312(15)*acd312(95)
      acd312(96)=acd312(8)*acd312(35)
      acd312(97)=acd312(6)*acd312(34)
      acd312(96)=-acd312(38)+acd312(96)+acd312(97)
      acd312(97)=acd312(67)*acd312(96)
      acd312(98)=acd312(53)*acd312(35)
      acd312(99)=acd312(50)*acd312(34)
      acd312(98)=acd312(98)+acd312(99)
      acd312(98)=acd312(33)*acd312(98)
      acd312(99)=-acd312(55)*acd312(36)
      acd312(100)=-acd312(57)*acd312(37)
      acd312(101)=-acd312(1)*acd312(5)
      acd312(93)=acd312(32)*acd312(93)
      acd312(102)=-acd312(15)*acd312(19)
      acd312(93)=acd312(102)+acd312(93)+acd312(98)+acd312(97)+acd312(101)+acd31&
      &2(99)+acd312(100)
      acd312(93)=acd312(4)*acd312(93)
      acd312(97)=acd312(1)-acd312(27)
      acd312(97)=acd312(3)*acd312(97)
      acd312(98)=-acd312(55)*acd312(24)
      acd312(99)=-acd312(53)*acd312(23)
      acd312(100)=-acd312(57)*acd312(25)
      acd312(101)=-acd312(50)*acd312(22)
      acd312(102)=-acd312(31)*acd312(19)
      acd312(97)=acd312(102)+acd312(101)+acd312(100)+acd312(98)+acd312(99)+acd3&
      &12(97)
      acd312(97)=acd312(2)*acd312(97)
      acd312(98)=acd312(10)*acd312(11)
      acd312(99)=acd312(8)*acd312(9)
      acd312(100)=acd312(6)*acd312(7)
      acd312(91)=-acd312(98)-acd312(91)+acd312(99)-acd312(100)
      acd312(98)=-acd312(28)*acd312(29)
      acd312(98)=acd312(30)+acd312(98)+acd312(91)
      acd312(98)=acd312(27)*acd312(98)
      acd312(91)=acd312(14)-acd312(91)
      acd312(91)=acd312(1)*acd312(91)
      acd312(96)=acd312(33)*acd312(96)
      acd312(99)=-acd312(10)*acd312(36)
      acd312(100)=-acd312(16)*acd312(5)
      acd312(101)=-acd312(12)*acd312(37)
      acd312(96)=acd312(96)+acd312(101)+acd312(100)+acd312(39)+acd312(99)
      acd312(96)=acd312(31)*acd312(96)
      acd312(99)=-acd312(65)*acd312(64)
      acd312(100)=-acd312(63)*acd312(62)
      acd312(101)=-acd312(12)*acd312(58)
      acd312(99)=acd312(101)+acd312(100)+acd312(66)+acd312(99)
      acd312(99)=acd312(60)*acd312(99)
      acd312(100)=-acd312(28)*acd312(61)
      acd312(101)=-acd312(8)*acd312(54)
      acd312(102)=-acd312(6)*acd312(51)
      acd312(100)=acd312(102)+acd312(101)+acd312(68)+acd312(100)
      acd312(100)=acd312(67)*acd312(100)
      acd312(101)=-acd312(60)*acd312(61)
      acd312(102)=-acd312(53)*acd312(54)
      acd312(103)=-acd312(50)*acd312(51)
      acd312(101)=acd312(103)+acd312(101)+acd312(102)
      acd312(101)=acd312(33)*acd312(101)
      acd312(102)=-acd312(79)*acd312(78)
      acd312(103)=-acd312(45)*acd312(71)
      acd312(102)=acd312(103)+acd312(80)+acd312(102)
      acd312(102)=acd312(77)*acd312(102)
      acd312(103)=-acd312(65)*acd312(82)
      acd312(104)=-acd312(63)*acd312(81)
      acd312(103)=acd312(103)+acd312(104)
      acd312(103)=acd312(28)*acd312(103)
      acd312(104)=acd312(55)*acd312(11)
      acd312(105)=acd312(53)*acd312(9)
      acd312(104)=acd312(104)-acd312(105)
      acd312(105)=-acd312(60)*acd312(29)
      acd312(105)=acd312(105)-acd312(104)
      acd312(105)=acd312(18)*acd312(105)
      acd312(104)=acd312(16)*acd312(104)
      acd312(106)=-acd312(28)*acd312(58)
      acd312(107)=acd312(13)*acd312(94)
      acd312(106)=acd312(107)+acd312(59)+acd312(106)
      acd312(106)=acd312(57)*acd312(106)
      acd312(107)=-acd312(70)*acd312(79)
      acd312(107)=acd312(107)+acd312(85)
      acd312(107)=acd312(84)*acd312(107)
      acd312(108)=acd312(88)*acd312(89)
      acd312(109)=acd312(86)*acd312(87)
      acd312(110)=acd312(75)*acd312(76)
      acd312(111)=acd312(82)*acd312(83)
      acd312(112)=acd312(73)*acd312(74)
      acd312(113)=-acd312(70)*acd312(71)
      acd312(113)=acd312(72)+acd312(113)
      acd312(113)=acd312(69)*acd312(113)
      acd312(114)=acd312(55)*acd312(56)
      acd312(94)=acd312(7)*acd312(94)
      acd312(94)=acd312(52)+acd312(94)
      acd312(94)=acd312(50)*acd312(94)
      brack=acd312(90)+acd312(91)+acd312(92)+acd312(93)+acd312(94)+acd312(95)+a&
      &cd312(96)+acd312(97)+acd312(98)+acd312(99)+acd312(100)+acd312(101)+acd31&
      &2(102)+acd312(103)+acd312(104)+acd312(105)+acd312(106)+acd312(107)+acd31&
      &2(108)+acd312(109)+acd312(110)+acd312(111)+acd312(112)+acd312(113)+acd31&
      &2(114)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd312h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(100) :: acd312
      complex(ki) :: brack
      acd312(1)=d(iv1,iv2)
      acd312(2)=dotproduct(k2,qshift)
      acd312(3)=abb312(48)
      acd312(4)=dotproduct(e7,qshift)
      acd312(5)=abb312(35)
      acd312(6)=dotproduct(qshift,spvak2k1)
      acd312(7)=abb312(40)
      acd312(8)=dotproduct(qshift,spvak4k1)
      acd312(9)=abb312(68)
      acd312(10)=dotproduct(qshift,spvak4k2)
      acd312(11)=abb312(52)
      acd312(12)=dotproduct(qshift,spval5k1)
      acd312(13)=abb312(34)
      acd312(14)=dotproduct(qshift,spval5k2)
      acd312(15)=abb312(31)
      acd312(16)=dotproduct(qshift,spval6k1)
      acd312(17)=abb312(15)
      acd312(18)=dotproduct(qshift,spval6k2)
      acd312(19)=abb312(26)
      acd312(20)=abb312(10)
      acd312(21)=k1(iv1)
      acd312(22)=k2(iv2)
      acd312(23)=abb312(102)
      acd312(24)=e7(iv2)
      acd312(25)=abb312(149)
      acd312(26)=spvak2k1(iv2)
      acd312(27)=abb312(19)
      acd312(28)=spvak4k1(iv2)
      acd312(29)=abb312(56)
      acd312(30)=spvak4k2(iv2)
      acd312(31)=abb312(41)
      acd312(32)=spval6k1(iv2)
      acd312(33)=k1(iv2)
      acd312(34)=k2(iv1)
      acd312(35)=e7(iv1)
      acd312(36)=spvak2k1(iv1)
      acd312(37)=spvak4k1(iv1)
      acd312(38)=spvak4k2(iv1)
      acd312(39)=spval6k1(iv1)
      acd312(40)=abb312(73)
      acd312(41)=l6(iv2)
      acd312(42)=abb312(65)
      acd312(43)=qshift(iv2)
      acd312(44)=abb312(9)
      acd312(45)=abb312(64)
      acd312(46)=abb312(45)
      acd312(47)=abb312(20)
      acd312(48)=l6(iv1)
      acd312(49)=qshift(iv1)
      acd312(50)=spvae7k1(iv2)
      acd312(51)=abb312(51)
      acd312(52)=spvae7k1(iv1)
      acd312(53)=abb312(43)
      acd312(54)=abb312(69)
      acd312(55)=abb312(39)
      acd312(56)=abb312(12)
      acd312(57)=spval6k2(iv2)
      acd312(58)=abb312(23)
      acd312(59)=spval6k2(iv1)
      acd312(60)=spval5k1(iv2)
      acd312(61)=spval5k2(iv2)
      acd312(62)=spval5k1(iv1)
      acd312(63)=spval5k2(iv1)
      acd312(64)=abb312(16)
      acd312(65)=abb312(22)
      acd312(66)=spval6e7(iv2)
      acd312(67)=abb312(13)
      acd312(68)=spval6e7(iv1)
      acd312(69)=abb312(21)
      acd312(70)=abb312(44)
      acd312(71)=spval6l5(iv2)
      acd312(72)=abb312(137)
      acd312(73)=spval6k7(iv2)
      acd312(74)=abb312(133)
      acd312(75)=spval6l5(iv1)
      acd312(76)=spval6k7(iv1)
      acd312(77)=spvak7k1(iv2)
      acd312(78)=abb312(76)
      acd312(79)=spvak7k1(iv1)
      acd312(80)=-acd312(15)*acd312(14)
      acd312(81)=-acd312(13)*acd312(12)
      acd312(82)=-acd312(11)*acd312(10)
      acd312(83)=-acd312(8)*acd312(9)
      acd312(84)=-acd312(6)*acd312(7)
      acd312(85)=-acd312(3)*acd312(2)
      acd312(86)=-acd312(18)*acd312(19)
      acd312(87)=-acd312(4)*acd312(5)
      acd312(88)=acd312(17)*acd312(16)
      acd312(80)=acd312(88)+acd312(87)+acd312(86)+acd312(85)+acd312(84)+acd312(&
      &83)+acd312(82)+acd312(81)+acd312(20)+acd312(80)
      acd312(80)=acd312(1)*acd312(80)
      acd312(81)=acd312(54)*acd312(8)
      acd312(82)=acd312(53)*acd312(6)
      acd312(81)=-acd312(58)+acd312(81)+acd312(82)
      acd312(82)=-acd312(57)*acd312(81)
      acd312(83)=acd312(30)*acd312(55)
      acd312(84)=acd312(33)*acd312(25)
      acd312(85)=acd312(32)*acd312(56)
      acd312(86)=acd312(54)*acd312(18)
      acd312(87)=-acd312(28)*acd312(86)
      acd312(88)=acd312(53)*acd312(18)
      acd312(89)=-acd312(26)*acd312(88)
      acd312(90)=2.0_ki*acd312(43)
      acd312(91)=-acd312(5)*acd312(90)
      acd312(92)=acd312(22)*acd312(42)
      acd312(82)=acd312(92)+acd312(91)+acd312(82)+acd312(89)+acd312(87)+acd312(&
      &85)+acd312(83)+acd312(84)
      acd312(82)=acd312(35)*acd312(82)
      acd312(81)=-acd312(59)*acd312(81)
      acd312(83)=acd312(38)*acd312(55)
      acd312(84)=acd312(39)*acd312(56)
      acd312(85)=acd312(21)*acd312(25)
      acd312(86)=-acd312(37)*acd312(86)
      acd312(87)=-acd312(36)*acd312(88)
      acd312(88)=2.0_ki*acd312(49)
      acd312(89)=-acd312(5)*acd312(88)
      acd312(91)=acd312(34)*acd312(42)
      acd312(81)=acd312(91)+acd312(89)+acd312(81)+acd312(87)+acd312(86)+acd312(&
      &85)+acd312(83)+acd312(84)
      acd312(81)=acd312(24)*acd312(81)
      acd312(83)=-acd312(15)*acd312(61)
      acd312(84)=-acd312(13)*acd312(60)
      acd312(85)=-acd312(30)*acd312(11)
      acd312(86)=-acd312(28)*acd312(9)
      acd312(87)=-acd312(26)*acd312(7)
      acd312(89)=acd312(17)*acd312(32)
      acd312(91)=-acd312(57)*acd312(19)
      acd312(83)=acd312(91)+acd312(89)+acd312(87)+acd312(86)+acd312(85)+acd312(&
      &83)+acd312(84)
      acd312(83)=acd312(83)*acd312(88)
      acd312(84)=-acd312(15)*acd312(63)
      acd312(85)=-acd312(13)*acd312(62)
      acd312(86)=-acd312(38)*acd312(11)
      acd312(87)=-acd312(37)*acd312(9)
      acd312(89)=-acd312(36)*acd312(7)
      acd312(91)=acd312(17)*acd312(39)
      acd312(92)=-acd312(59)*acd312(19)
      acd312(84)=acd312(92)+acd312(91)+acd312(89)+acd312(87)+acd312(86)+acd312(&
      &84)+acd312(85)
      acd312(84)=acd312(84)*acd312(90)
      acd312(85)=acd312(21)-acd312(48)
      acd312(86)=-acd312(23)*acd312(85)
      acd312(87)=acd312(38)*acd312(46)
      acd312(89)=acd312(39)*acd312(47)
      acd312(91)=acd312(37)*acd312(45)
      acd312(92)=acd312(36)*acd312(44)
      acd312(88)=-acd312(3)*acd312(88)
      acd312(93)=acd312(34)*acd312(40)
      acd312(86)=2.0_ki*acd312(93)+acd312(88)+acd312(92)+acd312(91)+acd312(89)+&
      &acd312(87)+acd312(86)
      acd312(86)=acd312(22)*acd312(86)
      acd312(87)=acd312(33)-acd312(41)
      acd312(88)=-acd312(23)*acd312(87)
      acd312(89)=acd312(30)*acd312(46)
      acd312(91)=acd312(32)*acd312(47)
      acd312(92)=acd312(28)*acd312(45)
      acd312(93)=acd312(26)*acd312(44)
      acd312(90)=-acd312(3)*acd312(90)
      acd312(88)=acd312(90)+acd312(93)+acd312(92)+acd312(91)+acd312(89)+acd312(&
      &88)
      acd312(88)=acd312(34)*acd312(88)
      acd312(89)=acd312(74)*acd312(73)
      acd312(90)=acd312(72)*acd312(71)
      acd312(91)=acd312(32)*acd312(69)
      acd312(89)=acd312(91)+acd312(89)+acd312(90)
      acd312(89)=acd312(52)*acd312(89)
      acd312(90)=acd312(74)*acd312(76)
      acd312(91)=acd312(72)*acd312(75)
      acd312(92)=acd312(39)*acd312(69)
      acd312(90)=acd312(92)+acd312(90)+acd312(91)
      acd312(90)=acd312(50)*acd312(90)
      acd312(91)=acd312(50)*acd312(70)
      acd312(92)=acd312(54)*acd312(4)
      acd312(92)=acd312(92)-acd312(65)
      acd312(93)=-acd312(28)*acd312(92)
      acd312(94)=acd312(53)*acd312(4)
      acd312(94)=acd312(94)-acd312(64)
      acd312(95)=-acd312(26)*acd312(94)
      acd312(91)=acd312(95)+acd312(91)+acd312(93)
      acd312(91)=acd312(59)*acd312(91)
      acd312(93)=acd312(52)*acd312(70)
      acd312(92)=-acd312(37)*acd312(92)
      acd312(94)=-acd312(36)*acd312(94)
      acd312(92)=acd312(94)+acd312(93)+acd312(92)
      acd312(92)=acd312(57)*acd312(92)
      acd312(93)=acd312(28)*acd312(29)
      acd312(94)=-acd312(26)*acd312(27)
      acd312(93)=acd312(94)+acd312(93)
      acd312(93)=acd312(85)*acd312(93)
      acd312(94)=acd312(37)*acd312(29)
      acd312(95)=-acd312(36)*acd312(27)
      acd312(94)=acd312(95)+acd312(94)
      acd312(94)=acd312(87)*acd312(94)
      acd312(95)=acd312(78)*acd312(77)
      acd312(96)=acd312(60)*acd312(67)
      acd312(95)=acd312(96)+acd312(95)
      acd312(95)=acd312(68)*acd312(95)
      acd312(96)=acd312(78)*acd312(79)
      acd312(97)=acd312(62)*acd312(67)
      acd312(96)=acd312(97)+acd312(96)
      acd312(96)=acd312(66)*acd312(96)
      acd312(97)=acd312(30)*acd312(31)
      acd312(98)=acd312(50)*acd312(51)
      acd312(98)=acd312(98)+acd312(97)
      acd312(98)=acd312(48)*acd312(98)
      acd312(99)=acd312(38)*acd312(31)
      acd312(100)=acd312(52)*acd312(51)
      acd312(100)=acd312(100)+acd312(99)
      acd312(100)=acd312(41)*acd312(100)
      acd312(87)=-acd312(39)*acd312(87)
      acd312(85)=-acd312(32)*acd312(85)
      acd312(85)=acd312(85)+acd312(87)
      acd312(85)=acd312(17)*acd312(85)
      acd312(87)=-acd312(33)*acd312(99)
      acd312(97)=-acd312(21)*acd312(97)
      brack=2.0_ki*acd312(80)+acd312(81)+acd312(82)+acd312(83)+acd312(84)+acd31&
      &2(85)+acd312(86)+acd312(87)+acd312(88)+acd312(89)+acd312(90)+acd312(91)+&
      &acd312(92)+acd312(93)+acd312(94)+acd312(95)+acd312(96)+acd312(97)+acd312&
      &(98)+acd312(100)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd312h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd312
      complex(ki) :: brack
      acd312(1)=d(iv1,iv2)
      acd312(2)=k2(iv3)
      acd312(3)=abb312(48)
      acd312(4)=e7(iv3)
      acd312(5)=abb312(35)
      acd312(6)=spvak2k1(iv3)
      acd312(7)=abb312(40)
      acd312(8)=spvak4k1(iv3)
      acd312(9)=abb312(68)
      acd312(10)=spvak4k2(iv3)
      acd312(11)=abb312(52)
      acd312(12)=spval5k1(iv3)
      acd312(13)=abb312(34)
      acd312(14)=spval5k2(iv3)
      acd312(15)=abb312(31)
      acd312(16)=spval6k1(iv3)
      acd312(17)=abb312(15)
      acd312(18)=spval6k2(iv3)
      acd312(19)=abb312(26)
      acd312(20)=d(iv1,iv3)
      acd312(21)=k2(iv2)
      acd312(22)=e7(iv2)
      acd312(23)=spvak2k1(iv2)
      acd312(24)=spvak4k1(iv2)
      acd312(25)=spvak4k2(iv2)
      acd312(26)=spval5k1(iv2)
      acd312(27)=spval5k2(iv2)
      acd312(28)=spval6k1(iv2)
      acd312(29)=spval6k2(iv2)
      acd312(30)=d(iv2,iv3)
      acd312(31)=k2(iv1)
      acd312(32)=e7(iv1)
      acd312(33)=spvak2k1(iv1)
      acd312(34)=spvak4k1(iv1)
      acd312(35)=spvak4k2(iv1)
      acd312(36)=spval5k1(iv1)
      acd312(37)=spval5k2(iv1)
      acd312(38)=spval6k1(iv1)
      acd312(39)=spval6k2(iv1)
      acd312(40)=abb312(43)
      acd312(41)=abb312(69)
      acd312(42)=-acd312(17)*acd312(38)
      acd312(43)=acd312(15)*acd312(37)
      acd312(44)=acd312(13)*acd312(36)
      acd312(45)=acd312(11)*acd312(35)
      acd312(46)=acd312(9)*acd312(34)
      acd312(47)=acd312(7)*acd312(33)
      acd312(48)=acd312(3)*acd312(31)
      acd312(49)=acd312(39)*acd312(19)
      acd312(50)=acd312(32)*acd312(5)
      acd312(42)=acd312(50)+acd312(49)+acd312(48)+acd312(47)+acd312(46)+acd312(&
      &45)+acd312(44)+acd312(42)+acd312(43)
      acd312(42)=acd312(30)*acd312(42)
      acd312(43)=-acd312(17)*acd312(28)
      acd312(44)=acd312(15)*acd312(27)
      acd312(45)=acd312(13)*acd312(26)
      acd312(46)=acd312(11)*acd312(25)
      acd312(47)=acd312(9)*acd312(24)
      acd312(48)=acd312(7)*acd312(23)
      acd312(49)=acd312(3)*acd312(21)
      acd312(50)=acd312(29)*acd312(19)
      acd312(51)=acd312(22)*acd312(5)
      acd312(43)=acd312(51)+acd312(50)+acd312(49)+acd312(48)+acd312(47)+acd312(&
      &46)+acd312(45)+acd312(43)+acd312(44)
      acd312(43)=acd312(20)*acd312(43)
      acd312(44)=-acd312(17)*acd312(16)
      acd312(45)=acd312(15)*acd312(14)
      acd312(46)=acd312(13)*acd312(12)
      acd312(47)=acd312(11)*acd312(10)
      acd312(48)=acd312(8)*acd312(9)
      acd312(49)=acd312(6)*acd312(7)
      acd312(50)=acd312(3)*acd312(2)
      acd312(51)=acd312(18)*acd312(19)
      acd312(52)=acd312(4)*acd312(5)
      acd312(44)=acd312(52)+acd312(51)+acd312(50)+acd312(49)+acd312(48)+acd312(&
      &47)+acd312(46)+acd312(44)+acd312(45)
      acd312(44)=acd312(1)*acd312(44)
      acd312(42)=acd312(44)+acd312(42)+acd312(43)
      acd312(43)=acd312(29)*acd312(32)
      acd312(44)=acd312(22)*acd312(39)
      acd312(43)=acd312(43)+acd312(44)
      acd312(44)=acd312(8)*acd312(43)
      acd312(45)=acd312(32)*acd312(24)
      acd312(46)=acd312(22)*acd312(34)
      acd312(45)=acd312(45)+acd312(46)
      acd312(45)=acd312(18)*acd312(45)
      acd312(46)=acd312(39)*acd312(24)
      acd312(47)=acd312(29)*acd312(34)
      acd312(46)=acd312(46)+acd312(47)
      acd312(46)=acd312(4)*acd312(46)
      acd312(44)=acd312(46)+acd312(45)+acd312(44)
      acd312(44)=acd312(41)*acd312(44)
      acd312(43)=acd312(6)*acd312(43)
      acd312(45)=acd312(32)*acd312(23)
      acd312(46)=acd312(22)*acd312(33)
      acd312(45)=acd312(45)+acd312(46)
      acd312(45)=acd312(18)*acd312(45)
      acd312(46)=acd312(39)*acd312(23)
      acd312(47)=acd312(29)*acd312(33)
      acd312(46)=acd312(46)+acd312(47)
      acd312(46)=acd312(4)*acd312(46)
      acd312(43)=acd312(46)+acd312(45)+acd312(43)
      acd312(43)=acd312(40)*acd312(43)
      brack=2.0_ki*acd312(42)+acd312(43)+acd312(44)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd312h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k7+k5
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
      if(present(i3)) then
          iv3=i3
          deg=3
      else
          iv3=1
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
      if(deg.eq.3) then
         numerator = cond(epspow.eq.t1,brack_4,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d312:
   subroutine     reconstruct_d312(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group19
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group19), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_312:
      coeffs%coeffs_312%c0 = derivative(czip)
      coeffs%coeffs_312%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_312%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_312%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_312%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_312%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_312%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_312%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_312%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_312%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_312%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_312%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_312%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_312%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_312%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_312%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_312%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_312%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_312%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_312%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_312%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_312%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_312%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_312%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_312%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_312%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_312%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_312%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_312%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_312%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_312%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_312%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_312%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_312%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_312%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_312:
   end subroutine reconstruct_d312
!---#] subroutine reconstruct_d312:
end module     p9_csbar_epnebbbarg_d312h0l1d
