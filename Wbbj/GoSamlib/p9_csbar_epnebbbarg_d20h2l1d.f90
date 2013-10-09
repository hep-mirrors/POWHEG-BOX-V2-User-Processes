module     p9_csbar_epnebbbarg_d20h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d20h2l1d.f90
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
   public :: derivative , reconstruct_d20
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd20h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(85) :: acd20
      complex(ki) :: brack
      acd20(1)=dotproduct(k1,qshift)
      acd20(2)=dotproduct(qshift,spvak4k3)
      acd20(3)=abb20(30)
      acd20(4)=dotproduct(k2,qshift)
      acd20(5)=abb20(29)
      acd20(6)=dotproduct(k3,qshift)
      acd20(7)=abb20(113)
      acd20(8)=abb20(47)
      acd20(9)=dotproduct(k4,qshift)
      acd20(10)=dotproduct(l5,qshift)
      acd20(11)=abb20(130)
      acd20(12)=dotproduct(l6,qshift)
      acd20(13)=dotproduct(k7,qshift)
      acd20(14)=abb20(51)
      acd20(15)=dotproduct(e7,qshift)
      acd20(16)=abb20(25)
      acd20(17)=dotproduct(qshift,qshift)
      acd20(18)=abb20(60)
      acd20(19)=dotproduct(qshift,spvak2k1)
      acd20(20)=abb20(20)
      acd20(21)=dotproduct(qshift,spvak2k3)
      acd20(22)=abb20(19)
      acd20(23)=dotproduct(qshift,spvak2k4)
      acd20(24)=abb20(33)
      acd20(25)=dotproduct(qshift,spvak2l5)
      acd20(26)=abb20(38)
      acd20(27)=dotproduct(qshift,spvak2l6)
      acd20(28)=abb20(78)
      acd20(29)=dotproduct(qshift,spvak2k7)
      acd20(30)=abb20(36)
      acd20(31)=dotproduct(qshift,spval5k1)
      acd20(32)=abb20(17)
      acd20(33)=dotproduct(qshift,spval5k2)
      acd20(34)=abb20(28)
      acd20(35)=dotproduct(qshift,spval5l6)
      acd20(36)=abb20(27)
      acd20(37)=dotproduct(qshift,spval5k7)
      acd20(38)=abb20(61)
      acd20(39)=dotproduct(qshift,spval6k1)
      acd20(40)=abb20(32)
      acd20(41)=dotproduct(qshift,spval6k2)
      acd20(42)=abb20(48)
      acd20(43)=dotproduct(qshift,spvak7k1)
      acd20(44)=abb20(50)
      acd20(45)=dotproduct(qshift,spvak7k2)
      acd20(46)=abb20(45)
      acd20(47)=dotproduct(qshift,spvak7l6)
      acd20(48)=abb20(43)
      acd20(49)=dotproduct(qshift,spvae7k1)
      acd20(50)=abb20(16)
      acd20(51)=dotproduct(qshift,spvak2e7)
      acd20(52)=abb20(87)
      acd20(53)=dotproduct(qshift,spvae7k2)
      acd20(54)=abb20(74)
      acd20(55)=dotproduct(qshift,spval5e7)
      acd20(56)=abb20(64)
      acd20(57)=dotproduct(qshift,spvae7l6)
      acd20(58)=abb20(37)
      acd20(59)=abb20(15)
      acd20(60)=abb20(18)
      acd20(61)=-acd20(12)-acd20(10)
      acd20(61)=acd20(61)*acd20(11)
      acd20(62)=acd20(3)*acd20(1)
      acd20(63)=acd20(5)*acd20(4)
      acd20(64)=acd20(14)*acd20(13)
      acd20(65)=acd20(16)*acd20(15)
      acd20(66)=acd20(20)*acd20(19)
      acd20(67)=acd20(22)*acd20(21)
      acd20(68)=acd20(24)*acd20(23)
      acd20(69)=acd20(26)*acd20(25)
      acd20(70)=acd20(28)*acd20(27)
      acd20(71)=acd20(30)*acd20(29)
      acd20(72)=acd20(32)*acd20(31)
      acd20(73)=acd20(34)*acd20(33)
      acd20(74)=acd20(36)*acd20(35)
      acd20(75)=acd20(38)*acd20(37)
      acd20(76)=acd20(40)*acd20(39)
      acd20(77)=acd20(42)*acd20(41)
      acd20(78)=acd20(44)*acd20(43)
      acd20(79)=acd20(46)*acd20(45)
      acd20(80)=acd20(48)*acd20(47)
      acd20(81)=acd20(50)*acd20(49)
      acd20(82)=acd20(52)*acd20(51)
      acd20(83)=acd20(54)*acd20(53)
      acd20(84)=acd20(56)*acd20(55)
      acd20(85)=acd20(58)*acd20(57)
      acd20(61)=acd20(61)-acd20(59)+acd20(85)+acd20(84)+acd20(83)+acd20(82)+acd&
      &20(81)+acd20(80)+acd20(79)+acd20(78)+acd20(77)+acd20(76)+acd20(75)+acd20&
      &(74)+acd20(73)+acd20(72)+acd20(71)+acd20(70)+acd20(69)+acd20(68)+acd20(6&
      &7)+acd20(66)+acd20(65)+acd20(64)+acd20(63)+acd20(62)
      acd20(61)=acd20(2)*acd20(61)
      acd20(62)=acd20(9)+acd20(6)
      acd20(63)=acd20(7)*acd20(2)
      acd20(63)=acd20(63)-acd20(8)
      acd20(62)=acd20(63)*acd20(62)
      acd20(63)=acd20(18)*acd20(17)
      acd20(64)=-acd20(60)*acd20(21)
      brack=acd20(61)+acd20(62)+acd20(63)+acd20(64)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd20h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(115) :: acd20
      complex(ki) :: brack
      acd20(1)=k1(iv1)
      acd20(2)=dotproduct(qshift,spvak4k3)
      acd20(3)=abb20(30)
      acd20(4)=k2(iv1)
      acd20(5)=abb20(29)
      acd20(6)=k3(iv1)
      acd20(7)=abb20(113)
      acd20(8)=abb20(47)
      acd20(9)=k4(iv1)
      acd20(10)=l5(iv1)
      acd20(11)=abb20(130)
      acd20(12)=l6(iv1)
      acd20(13)=k7(iv1)
      acd20(14)=abb20(51)
      acd20(15)=e7(iv1)
      acd20(16)=abb20(25)
      acd20(17)=qshift(iv1)
      acd20(18)=abb20(60)
      acd20(19)=spvak4k3(iv1)
      acd20(20)=dotproduct(k1,qshift)
      acd20(21)=dotproduct(k2,qshift)
      acd20(22)=dotproduct(k3,qshift)
      acd20(23)=dotproduct(k4,qshift)
      acd20(24)=dotproduct(l5,qshift)
      acd20(25)=dotproduct(l6,qshift)
      acd20(26)=dotproduct(k7,qshift)
      acd20(27)=dotproduct(e7,qshift)
      acd20(28)=dotproduct(qshift,spvak2k1)
      acd20(29)=abb20(20)
      acd20(30)=dotproduct(qshift,spvak2k3)
      acd20(31)=abb20(19)
      acd20(32)=dotproduct(qshift,spvak2k4)
      acd20(33)=abb20(33)
      acd20(34)=dotproduct(qshift,spvak2l5)
      acd20(35)=abb20(38)
      acd20(36)=dotproduct(qshift,spvak2l6)
      acd20(37)=abb20(78)
      acd20(38)=dotproduct(qshift,spvak2k7)
      acd20(39)=abb20(36)
      acd20(40)=dotproduct(qshift,spval5k1)
      acd20(41)=abb20(17)
      acd20(42)=dotproduct(qshift,spval5k2)
      acd20(43)=abb20(28)
      acd20(44)=dotproduct(qshift,spval5l6)
      acd20(45)=abb20(27)
      acd20(46)=dotproduct(qshift,spval5k7)
      acd20(47)=abb20(61)
      acd20(48)=dotproduct(qshift,spval6k1)
      acd20(49)=abb20(32)
      acd20(50)=dotproduct(qshift,spval6k2)
      acd20(51)=abb20(48)
      acd20(52)=dotproduct(qshift,spvak7k1)
      acd20(53)=abb20(50)
      acd20(54)=dotproduct(qshift,spvak7k2)
      acd20(55)=abb20(45)
      acd20(56)=dotproduct(qshift,spvak7l6)
      acd20(57)=abb20(43)
      acd20(58)=dotproduct(qshift,spvae7k1)
      acd20(59)=abb20(16)
      acd20(60)=dotproduct(qshift,spvak2e7)
      acd20(61)=abb20(87)
      acd20(62)=dotproduct(qshift,spvae7k2)
      acd20(63)=abb20(74)
      acd20(64)=dotproduct(qshift,spval5e7)
      acd20(65)=abb20(64)
      acd20(66)=dotproduct(qshift,spvae7l6)
      acd20(67)=abb20(37)
      acd20(68)=abb20(15)
      acd20(69)=spvak2k1(iv1)
      acd20(70)=spvak2k3(iv1)
      acd20(71)=abb20(18)
      acd20(72)=spvak2k4(iv1)
      acd20(73)=spvak2l5(iv1)
      acd20(74)=spvak2l6(iv1)
      acd20(75)=spvak2k7(iv1)
      acd20(76)=spval5k1(iv1)
      acd20(77)=spval5k2(iv1)
      acd20(78)=spval5l6(iv1)
      acd20(79)=spval5k7(iv1)
      acd20(80)=spval6k1(iv1)
      acd20(81)=spval6k2(iv1)
      acd20(82)=spvak7k1(iv1)
      acd20(83)=spvak7k2(iv1)
      acd20(84)=spvak7l6(iv1)
      acd20(85)=spvae7k1(iv1)
      acd20(86)=spvak2e7(iv1)
      acd20(87)=spvae7k2(iv1)
      acd20(88)=spval5e7(iv1)
      acd20(89)=spvae7l6(iv1)
      acd20(90)=-acd20(25)-acd20(24)
      acd20(90)=acd20(90)*acd20(11)
      acd20(91)=acd20(23)+acd20(22)
      acd20(91)=acd20(91)*acd20(7)
      acd20(92)=acd20(20)*acd20(3)
      acd20(93)=acd20(21)*acd20(5)
      acd20(94)=acd20(26)*acd20(14)
      acd20(95)=acd20(27)*acd20(16)
      acd20(96)=acd20(28)*acd20(29)
      acd20(97)=acd20(30)*acd20(31)
      acd20(98)=acd20(32)*acd20(33)
      acd20(99)=acd20(34)*acd20(35)
      acd20(100)=acd20(36)*acd20(37)
      acd20(101)=acd20(38)*acd20(39)
      acd20(102)=acd20(40)*acd20(41)
      acd20(103)=acd20(42)*acd20(43)
      acd20(104)=acd20(44)*acd20(45)
      acd20(105)=acd20(46)*acd20(47)
      acd20(106)=acd20(48)*acd20(49)
      acd20(107)=acd20(50)*acd20(51)
      acd20(108)=acd20(52)*acd20(53)
      acd20(109)=acd20(54)*acd20(55)
      acd20(110)=acd20(56)*acd20(57)
      acd20(111)=acd20(58)*acd20(59)
      acd20(112)=acd20(60)*acd20(61)
      acd20(113)=acd20(62)*acd20(63)
      acd20(114)=acd20(64)*acd20(65)
      acd20(115)=acd20(66)*acd20(67)
      acd20(90)=acd20(91)+acd20(90)-acd20(68)+acd20(115)+acd20(114)+acd20(113)+&
      &acd20(112)+acd20(111)+acd20(110)+acd20(109)+acd20(108)+acd20(107)+acd20(&
      &106)+acd20(105)+acd20(104)+acd20(103)+acd20(102)+acd20(101)+acd20(100)+a&
      &cd20(99)+acd20(98)+acd20(97)+acd20(96)+acd20(95)+acd20(94)+acd20(93)+acd&
      &20(92)
      acd20(90)=acd20(19)*acd20(90)
      acd20(91)=-acd20(12)-acd20(10)
      acd20(91)=acd20(91)*acd20(11)
      acd20(92)=acd20(70)*acd20(31)
      acd20(93)=acd20(1)*acd20(3)
      acd20(94)=acd20(4)*acd20(5)
      acd20(95)=acd20(13)*acd20(14)
      acd20(96)=acd20(15)*acd20(16)
      acd20(97)=acd20(69)*acd20(29)
      acd20(98)=acd20(72)*acd20(33)
      acd20(99)=acd20(73)*acd20(35)
      acd20(100)=acd20(74)*acd20(37)
      acd20(101)=acd20(75)*acd20(39)
      acd20(102)=acd20(76)*acd20(41)
      acd20(103)=acd20(77)*acd20(43)
      acd20(104)=acd20(78)*acd20(45)
      acd20(105)=acd20(79)*acd20(47)
      acd20(106)=acd20(80)*acd20(49)
      acd20(107)=acd20(81)*acd20(51)
      acd20(108)=acd20(82)*acd20(53)
      acd20(109)=acd20(83)*acd20(55)
      acd20(110)=acd20(84)*acd20(57)
      acd20(111)=acd20(85)*acd20(59)
      acd20(112)=acd20(86)*acd20(61)
      acd20(113)=acd20(87)*acd20(63)
      acd20(114)=acd20(88)*acd20(65)
      acd20(115)=acd20(89)*acd20(67)
      acd20(91)=acd20(91)+acd20(115)+acd20(114)+acd20(113)+acd20(112)+acd20(111&
      &)+acd20(110)+acd20(109)+acd20(108)+acd20(107)+acd20(106)+acd20(105)+acd2&
      &0(104)+acd20(103)+acd20(102)+acd20(101)+acd20(100)+acd20(99)+acd20(98)+a&
      &cd20(97)+acd20(96)+acd20(95)+acd20(94)+acd20(93)+acd20(92)
      acd20(91)=acd20(2)*acd20(91)
      acd20(92)=acd20(9)+acd20(6)
      acd20(93)=acd20(7)*acd20(2)
      acd20(93)=acd20(93)-acd20(8)
      acd20(92)=acd20(93)*acd20(92)
      acd20(93)=acd20(18)*acd20(17)
      acd20(94)=-acd20(71)*acd20(70)
      brack=acd20(90)+acd20(91)+acd20(92)+2.0_ki*acd20(93)+acd20(94)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd20h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(113) :: acd20
      complex(ki) :: brack
      acd20(1)=d(iv1,iv2)
      acd20(2)=abb20(60)
      acd20(3)=k1(iv1)
      acd20(4)=spvak4k3(iv2)
      acd20(5)=abb20(30)
      acd20(6)=k1(iv2)
      acd20(7)=spvak4k3(iv1)
      acd20(8)=k2(iv1)
      acd20(9)=abb20(29)
      acd20(10)=k2(iv2)
      acd20(11)=k3(iv1)
      acd20(12)=abb20(113)
      acd20(13)=k3(iv2)
      acd20(14)=k4(iv1)
      acd20(15)=k4(iv2)
      acd20(16)=l5(iv1)
      acd20(17)=abb20(130)
      acd20(18)=l5(iv2)
      acd20(19)=l6(iv1)
      acd20(20)=l6(iv2)
      acd20(21)=k7(iv1)
      acd20(22)=abb20(51)
      acd20(23)=k7(iv2)
      acd20(24)=e7(iv1)
      acd20(25)=abb20(25)
      acd20(26)=e7(iv2)
      acd20(27)=spvak2k1(iv2)
      acd20(28)=abb20(20)
      acd20(29)=spvak2k3(iv2)
      acd20(30)=abb20(19)
      acd20(31)=spvak2k4(iv2)
      acd20(32)=abb20(33)
      acd20(33)=spvak2l5(iv2)
      acd20(34)=abb20(38)
      acd20(35)=spvak2l6(iv2)
      acd20(36)=abb20(78)
      acd20(37)=spvak2k7(iv2)
      acd20(38)=abb20(36)
      acd20(39)=spval5k1(iv2)
      acd20(40)=abb20(17)
      acd20(41)=spval5k2(iv2)
      acd20(42)=abb20(28)
      acd20(43)=spval5l6(iv2)
      acd20(44)=abb20(27)
      acd20(45)=spval5k7(iv2)
      acd20(46)=abb20(61)
      acd20(47)=spval6k1(iv2)
      acd20(48)=abb20(32)
      acd20(49)=spval6k2(iv2)
      acd20(50)=abb20(48)
      acd20(51)=spvak7k1(iv2)
      acd20(52)=abb20(50)
      acd20(53)=spvak7k2(iv2)
      acd20(54)=abb20(45)
      acd20(55)=spvak7l6(iv2)
      acd20(56)=abb20(43)
      acd20(57)=spvae7k1(iv2)
      acd20(58)=abb20(16)
      acd20(59)=spvak2e7(iv2)
      acd20(60)=abb20(87)
      acd20(61)=spvae7k2(iv2)
      acd20(62)=abb20(74)
      acd20(63)=spval5e7(iv2)
      acd20(64)=abb20(64)
      acd20(65)=spvae7l6(iv2)
      acd20(66)=abb20(37)
      acd20(67)=spvak2k1(iv1)
      acd20(68)=spvak2k3(iv1)
      acd20(69)=spvak2k4(iv1)
      acd20(70)=spvak2l5(iv1)
      acd20(71)=spvak2l6(iv1)
      acd20(72)=spvak2k7(iv1)
      acd20(73)=spval5k1(iv1)
      acd20(74)=spval5k2(iv1)
      acd20(75)=spval5l6(iv1)
      acd20(76)=spval5k7(iv1)
      acd20(77)=spval6k1(iv1)
      acd20(78)=spval6k2(iv1)
      acd20(79)=spvak7k1(iv1)
      acd20(80)=spvak7k2(iv1)
      acd20(81)=spvak7l6(iv1)
      acd20(82)=spvae7k1(iv1)
      acd20(83)=spvak2e7(iv1)
      acd20(84)=spvae7k2(iv1)
      acd20(85)=spval5e7(iv1)
      acd20(86)=spvae7l6(iv1)
      acd20(87)=-acd20(19)-acd20(16)
      acd20(87)=acd20(87)*acd20(17)
      acd20(88)=acd20(14)+acd20(11)
      acd20(88)=acd20(88)*acd20(12)
      acd20(89)=acd20(3)*acd20(5)
      acd20(90)=acd20(8)*acd20(9)
      acd20(91)=acd20(21)*acd20(22)
      acd20(92)=acd20(24)*acd20(25)
      acd20(93)=acd20(67)*acd20(28)
      acd20(94)=acd20(68)*acd20(30)
      acd20(95)=acd20(69)*acd20(32)
      acd20(96)=acd20(70)*acd20(34)
      acd20(97)=acd20(71)*acd20(36)
      acd20(98)=acd20(72)*acd20(38)
      acd20(99)=acd20(73)*acd20(40)
      acd20(100)=acd20(74)*acd20(42)
      acd20(101)=acd20(75)*acd20(44)
      acd20(102)=acd20(76)*acd20(46)
      acd20(103)=acd20(77)*acd20(48)
      acd20(104)=acd20(78)*acd20(50)
      acd20(105)=acd20(79)*acd20(52)
      acd20(106)=acd20(80)*acd20(54)
      acd20(107)=acd20(81)*acd20(56)
      acd20(108)=acd20(82)*acd20(58)
      acd20(109)=acd20(83)*acd20(60)
      acd20(110)=acd20(84)*acd20(62)
      acd20(111)=acd20(85)*acd20(64)
      acd20(112)=acd20(86)*acd20(66)
      acd20(87)=acd20(88)+acd20(87)+acd20(112)+acd20(111)+acd20(110)+acd20(109)&
      &+acd20(108)+acd20(107)+acd20(106)+acd20(105)+acd20(104)+acd20(103)+acd20&
      &(102)+acd20(101)+acd20(100)+acd20(99)+acd20(98)+acd20(97)+acd20(96)+acd2&
      &0(95)+acd20(94)+acd20(93)+acd20(92)+acd20(91)+acd20(90)+acd20(89)
      acd20(87)=acd20(4)*acd20(87)
      acd20(88)=-acd20(20)-acd20(18)
      acd20(88)=acd20(88)*acd20(17)
      acd20(89)=acd20(15)+acd20(13)
      acd20(89)=acd20(89)*acd20(12)
      acd20(90)=acd20(6)*acd20(5)
      acd20(91)=acd20(10)*acd20(9)
      acd20(92)=acd20(23)*acd20(22)
      acd20(93)=acd20(26)*acd20(25)
      acd20(94)=acd20(27)*acd20(28)
      acd20(95)=acd20(29)*acd20(30)
      acd20(96)=acd20(31)*acd20(32)
      acd20(97)=acd20(33)*acd20(34)
      acd20(98)=acd20(35)*acd20(36)
      acd20(99)=acd20(37)*acd20(38)
      acd20(100)=acd20(39)*acd20(40)
      acd20(101)=acd20(41)*acd20(42)
      acd20(102)=acd20(43)*acd20(44)
      acd20(103)=acd20(45)*acd20(46)
      acd20(104)=acd20(47)*acd20(48)
      acd20(105)=acd20(49)*acd20(50)
      acd20(106)=acd20(51)*acd20(52)
      acd20(107)=acd20(53)*acd20(54)
      acd20(108)=acd20(55)*acd20(56)
      acd20(109)=acd20(57)*acd20(58)
      acd20(110)=acd20(59)*acd20(60)
      acd20(111)=acd20(61)*acd20(62)
      acd20(112)=acd20(63)*acd20(64)
      acd20(113)=acd20(65)*acd20(66)
      acd20(88)=acd20(89)+acd20(88)+acd20(113)+acd20(112)+acd20(111)+acd20(110)&
      &+acd20(109)+acd20(108)+acd20(107)+acd20(106)+acd20(105)+acd20(104)+acd20&
      &(103)+acd20(102)+acd20(101)+acd20(100)+acd20(99)+acd20(98)+acd20(97)+acd&
      &20(96)+acd20(95)+acd20(94)+acd20(93)+acd20(92)+acd20(91)+acd20(90)
      acd20(88)=acd20(7)*acd20(88)
      acd20(89)=acd20(2)*acd20(1)
      brack=acd20(87)+acd20(88)+2.0_ki*acd20(89)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd20h2
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d20:
   subroutine     reconstruct_d20(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_20:
      coeffs%coeffs_20%c0 = derivative(czip)
      coeffs%coeffs_20%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_20%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_20%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_20%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_20%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_20%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_20%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_20%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_20%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_20%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_20%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_20%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_20%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_20%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_20:
   end subroutine reconstruct_d20
!---#] subroutine reconstruct_d20:
end module     p9_csbar_epnebbbarg_d20h2l1d
