module     p5_usbar_epnebbbarg_d314h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d314h0l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d314
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd314h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(86) :: acd314
      complex(ki) :: brack
      acd314(1)=dotproduct(k1,qshift)
      acd314(2)=dotproduct(k2,qshift)
      acd314(3)=abb314(51)
      acd314(4)=dotproduct(qshift,spvak2k1)
      acd314(5)=abb314(52)
      acd314(6)=dotproduct(qshift,spvak4k1)
      acd314(7)=abb314(45)
      acd314(8)=dotproduct(qshift,spvak4k2)
      acd314(9)=abb314(39)
      acd314(10)=dotproduct(qshift,spval6k1)
      acd314(11)=abb314(62)
      acd314(12)=abb314(19)
      acd314(13)=dotproduct(k7,qshift)
      acd314(14)=dotproduct(e7,qshift)
      acd314(15)=abb314(69)
      acd314(16)=abb314(37)
      acd314(17)=dotproduct(qshift,qshift)
      acd314(18)=abb314(28)
      acd314(19)=dotproduct(qshift,spvak7k1)
      acd314(20)=abb314(34)
      acd314(21)=dotproduct(qshift,spvae7k1)
      acd314(22)=abb314(13)
      acd314(23)=abb314(22)
      acd314(24)=dotproduct(l5,qshift)
      acd314(25)=abb314(33)
      acd314(26)=abb314(46)
      acd314(27)=abb314(68)
      acd314(28)=abb314(25)
      acd314(29)=dotproduct(qshift,spval5k2)
      acd314(30)=abb314(17)
      acd314(31)=dotproduct(qshift,spval6k2)
      acd314(32)=abb314(32)
      acd314(33)=abb314(27)
      acd314(34)=abb314(29)
      acd314(35)=abb314(41)
      acd314(36)=abb314(47)
      acd314(37)=abb314(36)
      acd314(38)=abb314(55)
      acd314(39)=abb314(14)
      acd314(40)=dotproduct(qshift,spvak2k7)
      acd314(41)=abb314(48)
      acd314(42)=dotproduct(qshift,spvak4k7)
      acd314(43)=abb314(35)
      acd314(44)=dotproduct(qshift,spval5k1)
      acd314(45)=abb314(30)
      acd314(46)=dotproduct(qshift,spval6k7)
      acd314(47)=abb314(42)
      acd314(48)=abb314(53)
      acd314(49)=abb314(31)
      acd314(50)=abb314(40)
      acd314(51)=abb314(44)
      acd314(52)=abb314(60)
      acd314(53)=abb314(23)
      acd314(54)=abb314(18)
      acd314(55)=abb314(9)
      acd314(56)=abb314(16)
      acd314(57)=abb314(20)
      acd314(58)=abb314(11)
      acd314(59)=abb314(12)
      acd314(60)=abb314(10)
      acd314(61)=abb314(15)
      acd314(62)=dotproduct(qshift,spvak2e7)
      acd314(63)=abb314(79)
      acd314(64)=dotproduct(qshift,spvak4e7)
      acd314(65)=abb314(76)
      acd314(66)=dotproduct(qshift,spval6e7)
      acd314(67)=abb314(71)
      acd314(68)=abb314(38)
      acd314(69)=abb314(21)
      acd314(70)=abb314(26)
      acd314(71)=abb314(24)
      acd314(72)=abb314(8)
      acd314(73)=acd314(31)*acd314(35)
      acd314(74)=-acd314(29)*acd314(34)
      acd314(73)=acd314(74)+acd314(36)+acd314(73)
      acd314(73)=acd314(6)*acd314(73)
      acd314(74)=-acd314(31)*acd314(32)
      acd314(75)=acd314(29)*acd314(30)
      acd314(74)=acd314(75)+acd314(33)+acd314(74)
      acd314(74)=acd314(4)*acd314(74)
      acd314(75)=acd314(44)*acd314(45)
      acd314(76)=acd314(46)*acd314(47)
      acd314(77)=acd314(42)*acd314(43)
      acd314(78)=acd314(40)*acd314(41)
      acd314(79)=acd314(29)*acd314(39)
      acd314(80)=acd314(24)*acd314(25)
      acd314(81)=acd314(10)*acd314(38)
      acd314(82)=-acd314(17)*acd314(28)
      acd314(83)=-acd314(10)*acd314(35)
      acd314(83)=acd314(37)+acd314(83)
      acd314(83)=acd314(8)*acd314(83)
      acd314(84)=-acd314(10)*acd314(15)
      acd314(84)=acd314(16)+acd314(84)
      acd314(84)=acd314(2)*acd314(84)
      acd314(73)=acd314(84)+acd314(83)+acd314(82)+acd314(74)+acd314(73)+acd314(&
      &81)+acd314(80)+acd314(79)+acd314(78)+acd314(77)+acd314(76)-acd314(48)+ac&
      &d314(75)
      acd314(73)=acd314(14)*acd314(73)
      acd314(74)=acd314(66)*acd314(67)
      acd314(75)=acd314(64)*acd314(65)
      acd314(76)=acd314(62)*acd314(63)
      acd314(77)=acd314(24)*acd314(26)
      acd314(74)=acd314(77)+acd314(76)+acd314(75)-acd314(68)+acd314(74)
      acd314(74)=acd314(21)*acd314(74)
      acd314(75)=-acd314(10)*acd314(52)
      acd314(76)=-acd314(6)*acd314(50)
      acd314(77)=-acd314(4)*acd314(49)
      acd314(78)=-acd314(21)*acd314(53)
      acd314(75)=acd314(78)+acd314(77)+acd314(76)+acd314(54)+acd314(75)
      acd314(75)=acd314(17)*acd314(75)
      acd314(76)=acd314(1)+acd314(13)
      acd314(77)=-acd314(9)*acd314(76)
      acd314(78)=acd314(19)*acd314(57)
      acd314(79)=acd314(21)*acd314(58)
      acd314(80)=-acd314(17)*acd314(51)
      acd314(77)=acd314(80)+acd314(79)-acd314(59)+acd314(78)+acd314(77)
      acd314(77)=acd314(8)*acd314(77)
      acd314(78)=-acd314(3)*acd314(76)
      acd314(79)=acd314(19)*acd314(20)
      acd314(80)=acd314(21)*acd314(22)
      acd314(81)=-acd314(17)*acd314(18)
      acd314(78)=acd314(81)+acd314(80)-acd314(23)+acd314(79)+acd314(78)
      acd314(78)=acd314(2)*acd314(78)
      acd314(79)=acd314(11)*acd314(46)
      acd314(80)=-acd314(7)*acd314(42)
      acd314(81)=-acd314(5)*acd314(40)
      acd314(79)=acd314(81)+acd314(80)-acd314(61)+acd314(79)
      acd314(79)=acd314(19)*acd314(79)
      acd314(80)=-acd314(12)*acd314(76)
      acd314(81)=-acd314(46)*acd314(71)
      acd314(82)=-acd314(42)*acd314(70)
      acd314(83)=-acd314(40)*acd314(69)
      acd314(84)=-acd314(24)*acd314(27)
      acd314(85)=-acd314(11)*acd314(76)
      acd314(85)=-acd314(60)+acd314(85)
      acd314(85)=acd314(10)*acd314(85)
      acd314(86)=acd314(7)*acd314(76)
      acd314(86)=-acd314(56)+acd314(86)
      acd314(86)=acd314(6)*acd314(86)
      acd314(76)=acd314(5)*acd314(76)
      acd314(76)=-acd314(55)+acd314(76)
      acd314(76)=acd314(4)*acd314(76)
      brack=acd314(72)+acd314(73)+acd314(74)+acd314(75)+acd314(76)+acd314(77)+a&
      &cd314(78)+acd314(79)+acd314(80)+acd314(81)+acd314(82)+acd314(83)+acd314(&
      &84)+acd314(85)+acd314(86)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd314h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(117) :: acd314
      complex(ki) :: brack
      acd314(1)=k1(iv1)
      acd314(2)=dotproduct(k2,qshift)
      acd314(3)=abb314(51)
      acd314(4)=dotproduct(qshift,spvak2k1)
      acd314(5)=abb314(52)
      acd314(6)=dotproduct(qshift,spvak4k1)
      acd314(7)=abb314(45)
      acd314(8)=dotproduct(qshift,spvak4k2)
      acd314(9)=abb314(39)
      acd314(10)=dotproduct(qshift,spval6k1)
      acd314(11)=abb314(62)
      acd314(12)=abb314(19)
      acd314(13)=k2(iv1)
      acd314(14)=dotproduct(k1,qshift)
      acd314(15)=dotproduct(k7,qshift)
      acd314(16)=dotproduct(e7,qshift)
      acd314(17)=abb314(69)
      acd314(18)=abb314(37)
      acd314(19)=dotproduct(qshift,qshift)
      acd314(20)=abb314(28)
      acd314(21)=dotproduct(qshift,spvak7k1)
      acd314(22)=abb314(34)
      acd314(23)=dotproduct(qshift,spvae7k1)
      acd314(24)=abb314(13)
      acd314(25)=abb314(22)
      acd314(26)=l5(iv1)
      acd314(27)=abb314(33)
      acd314(28)=abb314(46)
      acd314(29)=abb314(68)
      acd314(30)=k7(iv1)
      acd314(31)=e7(iv1)
      acd314(32)=dotproduct(l5,qshift)
      acd314(33)=abb314(25)
      acd314(34)=dotproduct(qshift,spval5k2)
      acd314(35)=abb314(17)
      acd314(36)=dotproduct(qshift,spval6k2)
      acd314(37)=abb314(32)
      acd314(38)=abb314(27)
      acd314(39)=abb314(29)
      acd314(40)=abb314(41)
      acd314(41)=abb314(47)
      acd314(42)=abb314(36)
      acd314(43)=abb314(55)
      acd314(44)=abb314(14)
      acd314(45)=dotproduct(qshift,spvak2k7)
      acd314(46)=abb314(48)
      acd314(47)=dotproduct(qshift,spvak4k7)
      acd314(48)=abb314(35)
      acd314(49)=dotproduct(qshift,spval5k1)
      acd314(50)=abb314(30)
      acd314(51)=dotproduct(qshift,spval6k7)
      acd314(52)=abb314(42)
      acd314(53)=abb314(53)
      acd314(54)=qshift(iv1)
      acd314(55)=abb314(31)
      acd314(56)=abb314(40)
      acd314(57)=abb314(44)
      acd314(58)=abb314(60)
      acd314(59)=abb314(23)
      acd314(60)=abb314(18)
      acd314(61)=spvak2k1(iv1)
      acd314(62)=abb314(9)
      acd314(63)=spvak4k1(iv1)
      acd314(64)=abb314(16)
      acd314(65)=spvak4k2(iv1)
      acd314(66)=abb314(20)
      acd314(67)=abb314(11)
      acd314(68)=abb314(12)
      acd314(69)=spval6k1(iv1)
      acd314(70)=abb314(10)
      acd314(71)=spvak7k1(iv1)
      acd314(72)=abb314(15)
      acd314(73)=spvae7k1(iv1)
      acd314(74)=dotproduct(qshift,spvak2e7)
      acd314(75)=abb314(79)
      acd314(76)=dotproduct(qshift,spvak4e7)
      acd314(77)=abb314(76)
      acd314(78)=dotproduct(qshift,spval6e7)
      acd314(79)=abb314(71)
      acd314(80)=abb314(38)
      acd314(81)=spval5k2(iv1)
      acd314(82)=spval6k2(iv1)
      acd314(83)=spvak2k7(iv1)
      acd314(84)=abb314(21)
      acd314(85)=spvak4k7(iv1)
      acd314(86)=abb314(26)
      acd314(87)=spval5k1(iv1)
      acd314(88)=spval6k7(iv1)
      acd314(89)=abb314(24)
      acd314(90)=spvak2e7(iv1)
      acd314(91)=spvak4e7(iv1)
      acd314(92)=spval6e7(iv1)
      acd314(93)=acd314(8)*acd314(40)
      acd314(94)=acd314(2)*acd314(17)
      acd314(93)=acd314(94)+acd314(93)-acd314(43)
      acd314(93)=acd314(69)*acd314(93)
      acd314(94)=acd314(34)*acd314(39)
      acd314(95)=acd314(40)*acd314(36)
      acd314(94)=-acd314(41)+acd314(94)-acd314(95)
      acd314(95)=acd314(63)*acd314(94)
      acd314(96)=acd314(36)*acd314(37)
      acd314(97)=acd314(34)*acd314(35)
      acd314(96)=-acd314(38)+acd314(96)-acd314(97)
      acd314(97)=acd314(61)*acd314(96)
      acd314(98)=acd314(65)*acd314(40)
      acd314(99)=acd314(13)*acd314(17)
      acd314(98)=acd314(98)+acd314(99)
      acd314(98)=acd314(10)*acd314(98)
      acd314(99)=acd314(39)*acd314(81)
      acd314(100)=-acd314(40)*acd314(82)
      acd314(99)=acd314(99)+acd314(100)
      acd314(99)=acd314(6)*acd314(99)
      acd314(100)=acd314(37)*acd314(82)
      acd314(101)=-acd314(35)*acd314(81)
      acd314(100)=acd314(100)+acd314(101)
      acd314(100)=acd314(4)*acd314(100)
      acd314(101)=-acd314(50)*acd314(87)
      acd314(102)=-acd314(88)*acd314(52)
      acd314(103)=-acd314(85)*acd314(48)
      acd314(104)=-acd314(83)*acd314(46)
      acd314(105)=-acd314(81)*acd314(44)
      acd314(106)=-acd314(26)*acd314(27)
      acd314(107)=-acd314(65)*acd314(42)
      acd314(108)=2.0_ki*acd314(54)
      acd314(109)=acd314(33)*acd314(108)
      acd314(110)=-acd314(13)*acd314(18)
      acd314(93)=acd314(100)+acd314(99)+acd314(98)+acd314(110)+acd314(109)+acd3&
      &14(107)+acd314(97)+acd314(95)+acd314(106)+acd314(105)+acd314(104)+acd314&
      &(103)+acd314(101)+acd314(102)+acd314(93)
      acd314(93)=acd314(16)*acd314(93)
      acd314(94)=acd314(6)*acd314(94)
      acd314(95)=acd314(4)*acd314(96)
      acd314(96)=-acd314(51)*acd314(52)
      acd314(97)=-acd314(50)*acd314(49)
      acd314(98)=-acd314(47)*acd314(48)
      acd314(99)=-acd314(45)*acd314(46)
      acd314(100)=-acd314(27)*acd314(32)
      acd314(101)=-acd314(34)*acd314(44)
      acd314(102)=acd314(19)*acd314(33)
      acd314(103)=-acd314(10)*acd314(43)
      acd314(104)=acd314(10)*acd314(40)
      acd314(104)=-acd314(42)+acd314(104)
      acd314(104)=acd314(8)*acd314(104)
      acd314(105)=acd314(10)*acd314(17)
      acd314(105)=-acd314(18)+acd314(105)
      acd314(105)=acd314(2)*acd314(105)
      acd314(94)=acd314(105)+acd314(95)+acd314(94)+acd314(104)+acd314(103)+acd3&
      &14(102)+acd314(101)+acd314(100)+acd314(99)+acd314(98)+acd314(97)+acd314(&
      &53)+acd314(96)
      acd314(94)=acd314(31)*acd314(94)
      acd314(95)=-acd314(79)*acd314(78)
      acd314(96)=-acd314(77)*acd314(76)
      acd314(97)=-acd314(75)*acd314(74)
      acd314(98)=-acd314(28)*acd314(32)
      acd314(99)=acd314(19)*acd314(59)
      acd314(95)=acd314(99)+acd314(98)+acd314(97)+acd314(96)+acd314(80)+acd314(&
      &95)
      acd314(95)=acd314(73)*acd314(95)
      acd314(96)=-acd314(79)*acd314(92)
      acd314(97)=-acd314(77)*acd314(91)
      acd314(98)=-acd314(75)*acd314(90)
      acd314(99)=-acd314(26)*acd314(28)
      acd314(96)=acd314(99)+acd314(98)+acd314(96)+acd314(97)
      acd314(96)=acd314(23)*acd314(96)
      acd314(97)=acd314(14)+acd314(15)
      acd314(98)=acd314(9)*acd314(97)
      acd314(99)=-acd314(21)*acd314(66)
      acd314(100)=-acd314(23)*acd314(67)
      acd314(101)=acd314(19)*acd314(57)
      acd314(98)=acd314(101)+acd314(100)+acd314(68)+acd314(99)+acd314(98)
      acd314(98)=acd314(65)*acd314(98)
      acd314(99)=acd314(3)*acd314(97)
      acd314(100)=-acd314(21)*acd314(22)
      acd314(101)=-acd314(23)*acd314(24)
      acd314(102)=acd314(19)*acd314(20)
      acd314(99)=acd314(102)+acd314(101)+acd314(25)+acd314(100)+acd314(99)
      acd314(99)=acd314(13)*acd314(99)
      acd314(100)=acd314(1)+acd314(30)
      acd314(101)=acd314(9)*acd314(100)
      acd314(102)=-acd314(71)*acd314(66)
      acd314(103)=-acd314(73)*acd314(67)
      acd314(104)=acd314(57)*acd314(108)
      acd314(101)=acd314(104)+acd314(103)+acd314(102)+acd314(101)
      acd314(101)=acd314(8)*acd314(101)
      acd314(102)=acd314(3)*acd314(100)
      acd314(103)=-acd314(71)*acd314(22)
      acd314(104)=-acd314(73)*acd314(24)
      acd314(105)=acd314(20)*acd314(108)
      acd314(102)=acd314(105)+acd314(104)+acd314(103)+acd314(102)
      acd314(102)=acd314(2)*acd314(102)
      acd314(103)=acd314(69)*acd314(58)
      acd314(104)=acd314(63)*acd314(56)
      acd314(105)=acd314(61)*acd314(55)
      acd314(103)=acd314(105)+acd314(103)+acd314(104)
      acd314(103)=acd314(19)*acd314(103)
      acd314(104)=-acd314(21)*acd314(88)
      acd314(105)=-acd314(71)*acd314(51)
      acd314(104)=acd314(104)+acd314(105)
      acd314(104)=acd314(11)*acd314(104)
      acd314(105)=acd314(21)*acd314(85)
      acd314(106)=acd314(71)*acd314(47)
      acd314(105)=acd314(105)+acd314(106)
      acd314(105)=acd314(7)*acd314(105)
      acd314(106)=acd314(21)*acd314(83)
      acd314(107)=acd314(71)*acd314(45)
      acd314(106)=acd314(106)+acd314(107)
      acd314(106)=acd314(5)*acd314(106)
      acd314(107)=acd314(23)*acd314(59)
      acd314(107)=-acd314(60)+acd314(107)
      acd314(107)=acd314(107)*acd314(108)
      acd314(109)=acd314(11)*acd314(100)
      acd314(110)=acd314(58)*acd314(108)
      acd314(109)=acd314(110)+acd314(109)
      acd314(109)=acd314(10)*acd314(109)
      acd314(110)=-acd314(7)*acd314(100)
      acd314(111)=acd314(56)*acd314(108)
      acd314(110)=acd314(111)+acd314(110)
      acd314(110)=acd314(6)*acd314(110)
      acd314(111)=-acd314(5)*acd314(100)
      acd314(108)=acd314(55)*acd314(108)
      acd314(108)=acd314(108)+acd314(111)
      acd314(108)=acd314(4)*acd314(108)
      acd314(100)=acd314(12)*acd314(100)
      acd314(111)=acd314(88)*acd314(89)
      acd314(112)=acd314(85)*acd314(86)
      acd314(113)=acd314(83)*acd314(84)
      acd314(114)=acd314(26)*acd314(29)
      acd314(115)=acd314(71)*acd314(72)
      acd314(116)=acd314(11)*acd314(97)
      acd314(116)=acd314(70)+acd314(116)
      acd314(116)=acd314(69)*acd314(116)
      acd314(117)=-acd314(7)*acd314(97)
      acd314(117)=acd314(64)+acd314(117)
      acd314(117)=acd314(63)*acd314(117)
      acd314(97)=-acd314(5)*acd314(97)
      acd314(97)=acd314(62)+acd314(97)
      acd314(97)=acd314(61)*acd314(97)
      brack=acd314(93)+acd314(94)+acd314(95)+acd314(96)+acd314(97)+acd314(98)+a&
      &cd314(99)+acd314(100)+acd314(101)+acd314(102)+acd314(103)+acd314(104)+ac&
      &d314(105)+acd314(106)+acd314(107)+acd314(108)+acd314(109)+acd314(110)+ac&
      &d314(111)+acd314(112)+acd314(113)+acd314(114)+acd314(115)+acd314(116)+ac&
      &d314(117)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd314h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(110) :: acd314
      complex(ki) :: brack
      acd314(1)=d(iv1,iv2)
      acd314(2)=dotproduct(k2,qshift)
      acd314(3)=abb314(28)
      acd314(4)=dotproduct(e7,qshift)
      acd314(5)=abb314(25)
      acd314(6)=dotproduct(qshift,spvak2k1)
      acd314(7)=abb314(31)
      acd314(8)=dotproduct(qshift,spvak4k1)
      acd314(9)=abb314(40)
      acd314(10)=dotproduct(qshift,spvak4k2)
      acd314(11)=abb314(44)
      acd314(12)=dotproduct(qshift,spval6k1)
      acd314(13)=abb314(60)
      acd314(14)=dotproduct(qshift,spvae7k1)
      acd314(15)=abb314(23)
      acd314(16)=abb314(18)
      acd314(17)=k1(iv1)
      acd314(18)=k2(iv2)
      acd314(19)=abb314(51)
      acd314(20)=spvak2k1(iv2)
      acd314(21)=abb314(52)
      acd314(22)=spvak4k1(iv2)
      acd314(23)=abb314(45)
      acd314(24)=spvak4k2(iv2)
      acd314(25)=abb314(39)
      acd314(26)=spval6k1(iv2)
      acd314(27)=abb314(62)
      acd314(28)=k1(iv2)
      acd314(29)=k2(iv1)
      acd314(30)=spvak2k1(iv1)
      acd314(31)=spvak4k1(iv1)
      acd314(32)=spvak4k2(iv1)
      acd314(33)=spval6k1(iv1)
      acd314(34)=k7(iv2)
      acd314(35)=e7(iv2)
      acd314(36)=abb314(69)
      acd314(37)=abb314(37)
      acd314(38)=qshift(iv2)
      acd314(39)=spvae7k1(iv2)
      acd314(40)=abb314(13)
      acd314(41)=spvak7k1(iv2)
      acd314(42)=abb314(34)
      acd314(43)=k7(iv1)
      acd314(44)=e7(iv1)
      acd314(45)=qshift(iv1)
      acd314(46)=spvae7k1(iv1)
      acd314(47)=spvak7k1(iv1)
      acd314(48)=l5(iv1)
      acd314(49)=abb314(33)
      acd314(50)=abb314(46)
      acd314(51)=l5(iv2)
      acd314(52)=dotproduct(qshift,spval5k2)
      acd314(53)=abb314(17)
      acd314(54)=dotproduct(qshift,spval6k2)
      acd314(55)=abb314(32)
      acd314(56)=abb314(27)
      acd314(57)=abb314(29)
      acd314(58)=abb314(41)
      acd314(59)=abb314(47)
      acd314(60)=abb314(36)
      acd314(61)=abb314(55)
      acd314(62)=spval5k2(iv2)
      acd314(63)=abb314(14)
      acd314(64)=spval6k2(iv2)
      acd314(65)=spvak2k7(iv2)
      acd314(66)=abb314(48)
      acd314(67)=spvak4k7(iv2)
      acd314(68)=abb314(35)
      acd314(69)=spval5k1(iv2)
      acd314(70)=abb314(30)
      acd314(71)=spval6k7(iv2)
      acd314(72)=abb314(42)
      acd314(73)=spval5k2(iv1)
      acd314(74)=spval6k2(iv1)
      acd314(75)=spvak2k7(iv1)
      acd314(76)=spvak4k7(iv1)
      acd314(77)=spval5k1(iv1)
      acd314(78)=spval6k7(iv1)
      acd314(79)=abb314(11)
      acd314(80)=abb314(20)
      acd314(81)=spvak2e7(iv2)
      acd314(82)=abb314(79)
      acd314(83)=spvak4e7(iv2)
      acd314(84)=abb314(76)
      acd314(85)=spval6e7(iv2)
      acd314(86)=abb314(71)
      acd314(87)=spvak2e7(iv1)
      acd314(88)=spvak4e7(iv1)
      acd314(89)=spval6e7(iv1)
      acd314(90)=acd314(8)*acd314(64)
      acd314(91)=-acd314(26)*acd314(10)
      acd314(92)=-acd314(24)*acd314(12)
      acd314(93)=acd314(22)*acd314(54)
      acd314(90)=acd314(93)+acd314(92)+acd314(90)+acd314(91)
      acd314(90)=acd314(58)*acd314(90)
      acd314(91)=acd314(57)*acd314(8)
      acd314(92)=acd314(53)*acd314(6)
      acd314(91)=-acd314(91)+acd314(92)+acd314(63)
      acd314(92)=acd314(62)*acd314(91)
      acd314(93)=acd314(55)*acd314(54)
      acd314(94)=acd314(53)*acd314(52)
      acd314(93)=-acd314(56)+acd314(93)-acd314(94)
      acd314(94)=-acd314(20)*acd314(93)
      acd314(95)=acd314(71)*acd314(72)
      acd314(96)=acd314(70)*acd314(69)
      acd314(97)=acd314(67)*acd314(68)
      acd314(98)=acd314(65)*acd314(66)
      acd314(99)=acd314(49)*acd314(51)
      acd314(100)=acd314(55)*acd314(6)
      acd314(101)=-acd314(64)*acd314(100)
      acd314(102)=2.0_ki*acd314(38)
      acd314(103)=-acd314(5)*acd314(102)
      acd314(104)=acd314(36)*acd314(2)
      acd314(104)=acd314(104)-acd314(61)
      acd314(105)=-acd314(26)*acd314(104)
      acd314(106)=acd314(24)*acd314(60)
      acd314(107)=acd314(57)*acd314(52)
      acd314(107)=acd314(107)-acd314(59)
      acd314(108)=-acd314(22)*acd314(107)
      acd314(109)=acd314(36)*acd314(12)
      acd314(109)=acd314(109)-acd314(37)
      acd314(110)=-acd314(18)*acd314(109)
      acd314(90)=acd314(90)+acd314(110)+acd314(94)+acd314(108)+acd314(106)+acd3&
      &14(105)+acd314(103)+acd314(101)+acd314(99)+acd314(98)+acd314(97)+acd314(&
      &95)+acd314(96)+acd314(92)
      acd314(90)=acd314(44)*acd314(90)
      acd314(92)=acd314(8)*acd314(74)
      acd314(94)=-acd314(33)*acd314(10)
      acd314(95)=-acd314(32)*acd314(12)
      acd314(96)=acd314(31)*acd314(54)
      acd314(92)=acd314(96)+acd314(95)+acd314(92)+acd314(94)
      acd314(92)=acd314(58)*acd314(92)
      acd314(91)=acd314(73)*acd314(91)
      acd314(93)=-acd314(30)*acd314(93)
      acd314(94)=acd314(72)*acd314(78)
      acd314(95)=acd314(70)*acd314(77)
      acd314(96)=acd314(68)*acd314(76)
      acd314(97)=acd314(66)*acd314(75)
      acd314(98)=acd314(48)*acd314(49)
      acd314(99)=-acd314(74)*acd314(100)
      acd314(100)=2.0_ki*acd314(45)
      acd314(101)=-acd314(5)*acd314(100)
      acd314(103)=-acd314(33)*acd314(104)
      acd314(104)=acd314(32)*acd314(60)
      acd314(105)=-acd314(31)*acd314(107)
      acd314(106)=-acd314(29)*acd314(109)
      acd314(91)=acd314(92)+acd314(106)+acd314(93)+acd314(105)+acd314(104)+acd3&
      &14(103)+acd314(101)+acd314(99)+acd314(98)+acd314(97)+acd314(96)+acd314(9&
      &4)+acd314(95)+acd314(91)
      acd314(91)=acd314(35)*acd314(91)
      acd314(92)=-acd314(15)*acd314(14)
      acd314(93)=-acd314(10)*acd314(11)
      acd314(94)=-acd314(2)*acd314(3)
      acd314(95)=-acd314(12)*acd314(13)
      acd314(96)=-acd314(8)*acd314(9)
      acd314(97)=-acd314(6)*acd314(7)
      acd314(92)=acd314(97)+acd314(96)+acd314(95)+acd314(94)+acd314(93)+acd314(&
      &16)+acd314(92)
      acd314(92)=acd314(1)*acd314(92)
      acd314(93)=acd314(31)*acd314(64)
      acd314(94)=-acd314(26)*acd314(32)
      acd314(95)=-acd314(24)*acd314(33)
      acd314(96)=acd314(22)*acd314(74)
      acd314(93)=acd314(96)+acd314(95)+acd314(93)+acd314(94)
      acd314(93)=acd314(58)*acd314(93)
      acd314(94)=-acd314(31)*acd314(62)
      acd314(95)=-acd314(22)*acd314(73)
      acd314(94)=acd314(95)+acd314(94)
      acd314(94)=acd314(57)*acd314(94)
      acd314(95)=-acd314(26)*acd314(29)
      acd314(96)=-acd314(18)*acd314(33)
      acd314(95)=acd314(96)+acd314(95)
      acd314(95)=acd314(36)*acd314(95)
      acd314(96)=acd314(55)*acd314(64)
      acd314(97)=acd314(53)*acd314(62)
      acd314(96)=-acd314(96)+acd314(97)
      acd314(96)=acd314(30)*acd314(96)
      acd314(97)=acd314(55)*acd314(74)
      acd314(98)=acd314(53)*acd314(73)
      acd314(97)=-acd314(97)+acd314(98)
      acd314(97)=acd314(20)*acd314(97)
      acd314(98)=2.0_ki*acd314(5)
      acd314(98)=-acd314(1)*acd314(98)
      acd314(93)=acd314(93)+acd314(98)+acd314(97)+acd314(96)+acd314(95)+acd314(&
      &94)
      acd314(93)=acd314(4)*acd314(93)
      acd314(94)=acd314(86)*acd314(85)
      acd314(95)=acd314(84)*acd314(83)
      acd314(96)=acd314(82)*acd314(81)
      acd314(97)=acd314(50)*acd314(51)
      acd314(98)=-acd314(15)*acd314(102)
      acd314(94)=acd314(98)+acd314(97)+acd314(96)+acd314(94)+acd314(95)
      acd314(94)=acd314(46)*acd314(94)
      acd314(95)=acd314(86)*acd314(89)
      acd314(96)=acd314(84)*acd314(88)
      acd314(97)=acd314(82)*acd314(87)
      acd314(98)=acd314(48)*acd314(50)
      acd314(99)=-acd314(15)*acd314(100)
      acd314(95)=acd314(99)+acd314(98)+acd314(97)+acd314(95)+acd314(96)
      acd314(95)=acd314(39)*acd314(95)
      acd314(96)=acd314(28)+acd314(34)
      acd314(97)=-acd314(25)*acd314(96)
      acd314(98)=acd314(41)*acd314(80)
      acd314(99)=acd314(39)*acd314(79)
      acd314(101)=-acd314(11)*acd314(102)
      acd314(97)=acd314(101)+acd314(99)+acd314(98)+acd314(97)
      acd314(97)=acd314(32)*acd314(97)
      acd314(98)=-acd314(19)*acd314(96)
      acd314(99)=acd314(41)*acd314(42)
      acd314(101)=acd314(39)*acd314(40)
      acd314(103)=-acd314(3)*acd314(102)
      acd314(98)=acd314(103)+acd314(101)+acd314(99)+acd314(98)
      acd314(98)=acd314(29)*acd314(98)
      acd314(99)=acd314(17)+acd314(43)
      acd314(101)=-acd314(25)*acd314(99)
      acd314(103)=acd314(47)*acd314(80)
      acd314(104)=acd314(46)*acd314(79)
      acd314(105)=-acd314(11)*acd314(100)
      acd314(101)=acd314(105)+acd314(104)+acd314(103)+acd314(101)
      acd314(101)=acd314(24)*acd314(101)
      acd314(103)=-acd314(19)*acd314(99)
      acd314(104)=acd314(47)*acd314(42)
      acd314(105)=acd314(46)*acd314(40)
      acd314(106)=-acd314(3)*acd314(100)
      acd314(103)=acd314(106)+acd314(105)+acd314(104)+acd314(103)
      acd314(103)=acd314(18)*acd314(103)
      acd314(104)=acd314(47)*acd314(71)
      acd314(105)=acd314(41)*acd314(78)
      acd314(104)=acd314(104)+acd314(105)
      acd314(104)=acd314(27)*acd314(104)
      acd314(105)=-acd314(47)*acd314(67)
      acd314(106)=-acd314(41)*acd314(76)
      acd314(105)=acd314(105)+acd314(106)
      acd314(105)=acd314(23)*acd314(105)
      acd314(106)=-acd314(47)*acd314(65)
      acd314(107)=-acd314(41)*acd314(75)
      acd314(106)=acd314(106)+acd314(107)
      acd314(106)=acd314(21)*acd314(106)
      acd314(107)=-acd314(27)*acd314(96)
      acd314(108)=-acd314(13)*acd314(102)
      acd314(107)=acd314(107)+acd314(108)
      acd314(107)=acd314(33)*acd314(107)
      acd314(108)=acd314(23)*acd314(96)
      acd314(109)=-acd314(9)*acd314(102)
      acd314(108)=acd314(108)+acd314(109)
      acd314(108)=acd314(31)*acd314(108)
      acd314(96)=acd314(21)*acd314(96)
      acd314(102)=-acd314(7)*acd314(102)
      acd314(96)=acd314(96)+acd314(102)
      acd314(96)=acd314(30)*acd314(96)
      acd314(102)=-acd314(27)*acd314(99)
      acd314(109)=-acd314(13)*acd314(100)
      acd314(102)=acd314(102)+acd314(109)
      acd314(102)=acd314(26)*acd314(102)
      acd314(109)=acd314(23)*acd314(99)
      acd314(110)=-acd314(9)*acd314(100)
      acd314(109)=acd314(109)+acd314(110)
      acd314(109)=acd314(22)*acd314(109)
      acd314(99)=acd314(21)*acd314(99)
      acd314(100)=-acd314(7)*acd314(100)
      acd314(99)=acd314(99)+acd314(100)
      acd314(99)=acd314(20)*acd314(99)
      brack=acd314(90)+acd314(91)+2.0_ki*acd314(92)+acd314(93)+acd314(94)+acd31&
      &4(95)+acd314(96)+acd314(97)+acd314(98)+acd314(99)+acd314(101)+acd314(102&
      &)+acd314(103)+acd314(104)+acd314(105)+acd314(106)+acd314(107)+acd314(108&
      &)+acd314(109)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd314h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd314
      complex(ki) :: brack
      acd314(1)=d(iv1,iv2)
      acd314(2)=k2(iv3)
      acd314(3)=abb314(28)
      acd314(4)=e7(iv3)
      acd314(5)=abb314(25)
      acd314(6)=spvak2k1(iv3)
      acd314(7)=abb314(31)
      acd314(8)=spvak4k1(iv3)
      acd314(9)=abb314(40)
      acd314(10)=spvak4k2(iv3)
      acd314(11)=abb314(44)
      acd314(12)=spval6k1(iv3)
      acd314(13)=abb314(60)
      acd314(14)=spvae7k1(iv3)
      acd314(15)=abb314(23)
      acd314(16)=d(iv1,iv3)
      acd314(17)=k2(iv2)
      acd314(18)=e7(iv2)
      acd314(19)=spvak2k1(iv2)
      acd314(20)=spvak4k1(iv2)
      acd314(21)=spvak4k2(iv2)
      acd314(22)=spval6k1(iv2)
      acd314(23)=spvae7k1(iv2)
      acd314(24)=d(iv2,iv3)
      acd314(25)=k2(iv1)
      acd314(26)=e7(iv1)
      acd314(27)=spvak2k1(iv1)
      acd314(28)=spvak4k1(iv1)
      acd314(29)=spvak4k2(iv1)
      acd314(30)=spval6k1(iv1)
      acd314(31)=spvae7k1(iv1)
      acd314(32)=abb314(69)
      acd314(33)=spval5k2(iv3)
      acd314(34)=abb314(17)
      acd314(35)=spval6k2(iv3)
      acd314(36)=abb314(32)
      acd314(37)=spval5k2(iv2)
      acd314(38)=spval6k2(iv2)
      acd314(39)=abb314(29)
      acd314(40)=abb314(41)
      acd314(41)=spval5k2(iv1)
      acd314(42)=spval6k2(iv1)
      acd314(43)=acd314(15)*acd314(31)
      acd314(44)=acd314(11)*acd314(29)
      acd314(45)=acd314(3)*acd314(25)
      acd314(46)=acd314(30)*acd314(13)
      acd314(47)=acd314(28)*acd314(9)
      acd314(48)=acd314(27)*acd314(7)
      acd314(43)=acd314(48)+acd314(47)+acd314(46)+acd314(45)+acd314(43)+acd314(&
      &44)
      acd314(43)=acd314(24)*acd314(43)
      acd314(44)=acd314(15)*acd314(23)
      acd314(45)=acd314(11)*acd314(21)
      acd314(46)=acd314(3)*acd314(17)
      acd314(47)=acd314(22)*acd314(13)
      acd314(48)=acd314(20)*acd314(9)
      acd314(49)=acd314(19)*acd314(7)
      acd314(44)=acd314(49)+acd314(48)+acd314(47)+acd314(46)+acd314(44)+acd314(&
      &45)
      acd314(44)=acd314(16)*acd314(44)
      acd314(45)=acd314(15)*acd314(14)
      acd314(46)=acd314(10)*acd314(11)
      acd314(47)=acd314(2)*acd314(3)
      acd314(48)=acd314(12)*acd314(13)
      acd314(49)=acd314(8)*acd314(9)
      acd314(50)=acd314(6)*acd314(7)
      acd314(45)=acd314(50)+acd314(49)+acd314(48)+acd314(47)+acd314(45)+acd314(&
      &46)
      acd314(45)=acd314(1)*acd314(45)
      acd314(43)=acd314(45)+acd314(43)+acd314(44)
      acd314(44)=acd314(22)*acd314(10)
      acd314(45)=-acd314(20)*acd314(35)
      acd314(46)=acd314(12)*acd314(21)
      acd314(47)=-acd314(8)*acd314(38)
      acd314(44)=acd314(47)+acd314(46)+acd314(44)+acd314(45)
      acd314(44)=acd314(40)*acd314(44)
      acd314(45)=acd314(20)*acd314(33)
      acd314(46)=acd314(8)*acd314(37)
      acd314(45)=acd314(45)+acd314(46)
      acd314(45)=acd314(39)*acd314(45)
      acd314(46)=acd314(19)*acd314(35)
      acd314(47)=acd314(6)*acd314(38)
      acd314(46)=acd314(46)+acd314(47)
      acd314(46)=acd314(36)*acd314(46)
      acd314(47)=-acd314(19)*acd314(33)
      acd314(48)=-acd314(6)*acd314(37)
      acd314(47)=acd314(47)+acd314(48)
      acd314(47)=acd314(34)*acd314(47)
      acd314(48)=acd314(22)*acd314(2)
      acd314(49)=acd314(12)*acd314(17)
      acd314(48)=acd314(48)+acd314(49)
      acd314(48)=acd314(32)*acd314(48)
      acd314(49)=2.0_ki*acd314(5)
      acd314(50)=acd314(24)*acd314(49)
      acd314(44)=acd314(44)+acd314(50)+acd314(48)+acd314(47)+acd314(45)+acd314(&
      &46)
      acd314(44)=acd314(26)*acd314(44)
      acd314(45)=acd314(30)*acd314(10)
      acd314(46)=-acd314(28)*acd314(35)
      acd314(47)=acd314(12)*acd314(29)
      acd314(48)=-acd314(8)*acd314(42)
      acd314(45)=acd314(48)+acd314(47)+acd314(45)+acd314(46)
      acd314(45)=acd314(40)*acd314(45)
      acd314(46)=acd314(28)*acd314(33)
      acd314(47)=acd314(8)*acd314(41)
      acd314(46)=acd314(46)+acd314(47)
      acd314(46)=acd314(39)*acd314(46)
      acd314(47)=acd314(27)*acd314(35)
      acd314(48)=acd314(6)*acd314(42)
      acd314(47)=acd314(47)+acd314(48)
      acd314(47)=acd314(36)*acd314(47)
      acd314(48)=-acd314(27)*acd314(33)
      acd314(50)=-acd314(6)*acd314(41)
      acd314(48)=acd314(48)+acd314(50)
      acd314(48)=acd314(34)*acd314(48)
      acd314(50)=acd314(30)*acd314(2)
      acd314(51)=acd314(12)*acd314(25)
      acd314(50)=acd314(50)+acd314(51)
      acd314(50)=acd314(32)*acd314(50)
      acd314(51)=acd314(16)*acd314(49)
      acd314(45)=acd314(45)+acd314(51)+acd314(50)+acd314(48)+acd314(46)+acd314(&
      &47)
      acd314(45)=acd314(18)*acd314(45)
      acd314(46)=acd314(30)*acd314(21)
      acd314(47)=-acd314(28)*acd314(38)
      acd314(48)=acd314(22)*acd314(29)
      acd314(50)=-acd314(20)*acd314(42)
      acd314(46)=acd314(50)+acd314(48)+acd314(46)+acd314(47)
      acd314(46)=acd314(40)*acd314(46)
      acd314(47)=acd314(28)*acd314(37)
      acd314(48)=acd314(20)*acd314(41)
      acd314(47)=acd314(47)+acd314(48)
      acd314(47)=acd314(39)*acd314(47)
      acd314(48)=acd314(27)*acd314(38)
      acd314(50)=acd314(19)*acd314(42)
      acd314(48)=acd314(48)+acd314(50)
      acd314(48)=acd314(36)*acd314(48)
      acd314(50)=-acd314(27)*acd314(37)
      acd314(51)=-acd314(19)*acd314(41)
      acd314(50)=acd314(50)+acd314(51)
      acd314(50)=acd314(34)*acd314(50)
      acd314(51)=acd314(30)*acd314(17)
      acd314(52)=acd314(22)*acd314(25)
      acd314(51)=acd314(51)+acd314(52)
      acd314(51)=acd314(32)*acd314(51)
      acd314(49)=acd314(1)*acd314(49)
      acd314(46)=acd314(46)+acd314(49)+acd314(51)+acd314(50)+acd314(47)+acd314(&
      &48)
      acd314(46)=acd314(4)*acd314(46)
      brack=2.0_ki*acd314(43)+acd314(44)+acd314(45)+acd314(46)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd314h0
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
      qshift = k6+k5
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
!---#[ subroutine reconstruct_d314:
   subroutine     reconstruct_d314(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_314:
      coeffs%coeffs_314%c0 = derivative(czip)
      coeffs%coeffs_314%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_314%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_314%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_314%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_314%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_314%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_314%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_314%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_314%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_314%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_314%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_314%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_314%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_314%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_314%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_314%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_314%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_314%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_314%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_314%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_314%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_314%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_314%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_314%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_314%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_314%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_314%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_314%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_314%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_314%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_314%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_314%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_314%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_314%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_314:
   end subroutine reconstruct_d314
!---#] subroutine reconstruct_d314:
end module     p5_usbar_epnebbbarg_d314h0l1d