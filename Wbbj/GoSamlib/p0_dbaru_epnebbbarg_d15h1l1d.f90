module     p0_dbaru_epnebbbarg_d15h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d15h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d15
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(88) :: acd15
      complex(ki) :: brack
      acd15(1)=dotproduct(k1,qshift)
      acd15(2)=dotproduct(k2,qshift)
      acd15(3)=abb15(24)
      acd15(4)=dotproduct(k7,qshift)
      acd15(5)=abb15(132)
      acd15(6)=dotproduct(e7,qshift)
      acd15(7)=abb15(103)
      acd15(8)=dotproduct(qshift,spvak1k2)
      acd15(9)=abb15(42)
      acd15(10)=dotproduct(qshift,spvak1l5)
      acd15(11)=abb15(50)
      acd15(12)=dotproduct(qshift,spvak4k3)
      acd15(13)=abb15(34)
      acd15(14)=dotproduct(qshift,spval6l5)
      acd15(15)=abb15(37)
      acd15(16)=dotproduct(qshift,spvae7k2)
      acd15(17)=abb15(46)
      acd15(18)=abb15(9)
      acd15(19)=abb15(51)
      acd15(20)=abb15(80)
      acd15(21)=dotproduct(l5,qshift)
      acd15(22)=dotproduct(l6,qshift)
      acd15(23)=abb15(49)
      acd15(24)=abb15(60)
      acd15(25)=dotproduct(qshift,qshift)
      acd15(26)=abb15(23)
      acd15(27)=abb15(17)
      acd15(28)=abb15(40)
      acd15(29)=abb15(20)
      acd15(30)=dotproduct(qshift,spvak1k7)
      acd15(31)=abb15(45)
      acd15(32)=abb15(31)
      acd15(33)=abb15(33)
      acd15(34)=abb15(21)
      acd15(35)=dotproduct(qshift,spvak1k3)
      acd15(36)=abb15(57)
      acd15(37)=dotproduct(qshift,spvak1l6)
      acd15(38)=abb15(27)
      acd15(39)=abb15(38)
      acd15(40)=abb15(126)
      acd15(41)=abb15(122)
      acd15(42)=abb15(43)
      acd15(43)=abb15(115)
      acd15(44)=abb15(79)
      acd15(45)=abb15(14)
      acd15(46)=abb15(11)
      acd15(47)=abb15(36)
      acd15(48)=abb15(32)
      acd15(49)=abb15(48)
      acd15(50)=abb15(53)
      acd15(51)=abb15(39)
      acd15(52)=abb15(16)
      acd15(53)=abb15(81)
      acd15(54)=abb15(18)
      acd15(55)=abb15(10)
      acd15(56)=abb15(26)
      acd15(57)=abb15(30)
      acd15(58)=abb15(55)
      acd15(59)=abb15(54)
      acd15(60)=abb15(44)
      acd15(61)=abb15(47)
      acd15(62)=abb15(35)
      acd15(63)=abb15(12)
      acd15(64)=abb15(25)
      acd15(65)=abb15(28)
      acd15(66)=abb15(29)
      acd15(67)=abb15(22)
      acd15(68)=abb15(15)
      acd15(69)=abb15(13)
      acd15(70)=-acd15(26)*acd15(2)
      acd15(71)=-acd15(41)*acd15(4)
      acd15(72)=-acd15(44)*acd15(6)
      acd15(73)=-acd15(49)*acd15(8)
      acd15(74)=-acd15(51)*acd15(14)
      acd15(75)=-acd15(52)*acd15(16)
      acd15(70)=acd15(53)+acd15(75)+acd15(74)+acd15(73)+acd15(72)+acd15(71)+acd&
      &15(70)
      acd15(70)=acd15(25)*acd15(70)
      acd15(71)=acd15(3)*acd15(1)
      acd15(72)=acd15(24)*acd15(6)
      acd15(73)=acd15(27)*acd15(10)
      acd15(74)=acd15(36)*acd15(35)
      acd15(75)=acd15(38)*acd15(37)
      acd15(71)=-acd15(39)+acd15(75)+acd15(74)+acd15(73)+acd15(72)+acd15(71)
      acd15(71)=acd15(2)*acd15(71)
      acd15(72)=acd15(22)+acd15(21)
      acd15(73)=acd15(72)-acd15(1)
      acd15(74)=-acd15(17)*acd15(73)
      acd15(75)=acd15(34)*acd15(2)
      acd15(76)=acd15(63)*acd15(12)
      acd15(77)=acd15(65)*acd15(14)
      acd15(74)=-acd15(68)+acd15(77)+acd15(76)+acd15(75)+acd15(74)
      acd15(74)=acd15(16)*acd15(74)
      acd15(75)=acd15(15)*acd15(1)
      acd15(76)=acd15(55)*acd15(8)
      acd15(77)=acd15(58)*acd15(10)
      acd15(78)=acd15(66)*acd15(35)
      acd15(75)=-acd15(67)+acd15(78)+acd15(77)+acd15(76)+acd15(75)
      acd15(75)=acd15(14)*acd15(75)
      acd15(76)=-acd15(7)*acd15(73)
      acd15(77)=acd15(46)*acd15(12)
      acd15(78)=acd15(47)*acd15(14)
      acd15(76)=-acd15(48)+acd15(78)+acd15(77)+acd15(76)
      acd15(76)=acd15(6)*acd15(76)
      acd15(77)=acd15(13)*acd15(1)
      acd15(78)=acd15(54)*acd15(8)
      acd15(79)=acd15(57)*acd15(10)
      acd15(77)=-acd15(64)+acd15(79)+acd15(78)+acd15(77)
      acd15(77)=acd15(12)*acd15(77)
      acd15(78)=-acd15(45)*acd15(6)
      acd15(79)=-acd15(60)*acd15(16)
      acd15(80)=-acd15(61)*acd15(30)
      acd15(78)=acd15(62)+acd15(80)+acd15(79)+acd15(78)
      acd15(79)=acd15(14)*acd15(12)
      acd15(78)=acd15(79)*acd15(78)
      acd15(80)=-acd15(23)*acd15(6)
      acd15(81)=-acd15(29)*acd15(16)
      acd15(82)=acd15(31)*acd15(30)
      acd15(80)=acd15(32)+acd15(82)+acd15(81)+acd15(80)
      acd15(81)=acd15(12)*acd15(2)
      acd15(80)=acd15(81)*acd15(80)
      acd15(79)=-acd15(28)*acd15(79)
      acd15(82)=acd15(33)*acd15(14)
      acd15(79)=acd15(82)+acd15(79)
      acd15(82)=acd15(4)-acd15(2)
      acd15(79)=acd15(82)*acd15(79)
      acd15(83)=-acd15(9)*acd15(8)
      acd15(84)=-acd15(11)*acd15(10)
      acd15(83)=acd15(84)+acd15(83)
      acd15(73)=acd15(73)*acd15(83)
      acd15(82)=-acd15(82)*acd15(72)
      acd15(83)=acd15(1)*acd15(4)
      acd15(82)=acd15(83)+acd15(82)
      acd15(82)=acd15(5)*acd15(82)
      acd15(83)=acd15(2)**2
      acd15(84)=-acd15(12)*acd15(83)
      acd15(81)=acd15(4)*acd15(81)
      acd15(81)=acd15(84)+acd15(81)
      acd15(81)=acd15(19)*acd15(81)
      acd15(84)=-acd15(4)*acd15(2)
      acd15(83)=acd15(83)+acd15(84)
      acd15(83)=acd15(20)*acd15(83)
      acd15(84)=acd15(25)*acd15(10)
      acd15(85)=acd15(37)*acd15(14)
      acd15(84)=acd15(84)+acd15(85)
      acd15(84)=acd15(50)*acd15(84)
      acd15(85)=acd15(42)*acd15(12)
      acd15(85)=-acd15(43)+acd15(85)
      acd15(85)=acd15(4)*acd15(85)
      acd15(72)=-acd15(40)*acd15(72)
      acd15(86)=-acd15(18)*acd15(1)
      acd15(87)=-acd15(56)*acd15(8)
      acd15(88)=-acd15(59)*acd15(10)
      brack=acd15(69)+acd15(70)+acd15(71)+acd15(72)+acd15(73)+acd15(74)+acd15(7&
      &5)+acd15(76)+acd15(77)+acd15(78)+acd15(79)+acd15(80)+acd15(81)+acd15(82)&
      &+acd15(83)+acd15(84)+acd15(85)+acd15(86)+acd15(87)+acd15(88)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(103) :: acd15
      complex(ki) :: brack
      acd15(1)=k1(iv1)
      acd15(2)=dotproduct(k2,qshift)
      acd15(3)=abb15(24)
      acd15(4)=dotproduct(k7,qshift)
      acd15(5)=abb15(132)
      acd15(6)=dotproduct(e7,qshift)
      acd15(7)=abb15(103)
      acd15(8)=dotproduct(qshift,spvak1k2)
      acd15(9)=abb15(42)
      acd15(10)=dotproduct(qshift,spvak1l5)
      acd15(11)=abb15(50)
      acd15(12)=dotproduct(qshift,spvak4k3)
      acd15(13)=abb15(34)
      acd15(14)=dotproduct(qshift,spval6l5)
      acd15(15)=abb15(37)
      acd15(16)=dotproduct(qshift,spvae7k2)
      acd15(17)=abb15(46)
      acd15(18)=abb15(9)
      acd15(19)=k2(iv1)
      acd15(20)=dotproduct(k1,qshift)
      acd15(21)=abb15(51)
      acd15(22)=abb15(80)
      acd15(23)=dotproduct(l5,qshift)
      acd15(24)=dotproduct(l6,qshift)
      acd15(25)=abb15(49)
      acd15(26)=abb15(60)
      acd15(27)=dotproduct(qshift,qshift)
      acd15(28)=abb15(23)
      acd15(29)=abb15(17)
      acd15(30)=abb15(40)
      acd15(31)=abb15(20)
      acd15(32)=dotproduct(qshift,spvak1k7)
      acd15(33)=abb15(45)
      acd15(34)=abb15(31)
      acd15(35)=abb15(33)
      acd15(36)=abb15(21)
      acd15(37)=dotproduct(qshift,spvak1k3)
      acd15(38)=abb15(57)
      acd15(39)=dotproduct(qshift,spvak1l6)
      acd15(40)=abb15(27)
      acd15(41)=abb15(38)
      acd15(42)=l5(iv1)
      acd15(43)=abb15(126)
      acd15(44)=l6(iv1)
      acd15(45)=k7(iv1)
      acd15(46)=abb15(122)
      acd15(47)=abb15(43)
      acd15(48)=abb15(115)
      acd15(49)=e7(iv1)
      acd15(50)=abb15(79)
      acd15(51)=abb15(14)
      acd15(52)=abb15(11)
      acd15(53)=abb15(36)
      acd15(54)=abb15(32)
      acd15(55)=qshift(iv1)
      acd15(56)=abb15(48)
      acd15(57)=abb15(53)
      acd15(58)=abb15(39)
      acd15(59)=abb15(16)
      acd15(60)=abb15(81)
      acd15(61)=spvak1k2(iv1)
      acd15(62)=abb15(18)
      acd15(63)=abb15(10)
      acd15(64)=abb15(26)
      acd15(65)=spvak1l5(iv1)
      acd15(66)=abb15(30)
      acd15(67)=abb15(55)
      acd15(68)=abb15(54)
      acd15(69)=spvak4k3(iv1)
      acd15(70)=abb15(44)
      acd15(71)=abb15(47)
      acd15(72)=abb15(35)
      acd15(73)=abb15(12)
      acd15(74)=abb15(25)
      acd15(75)=spval6l5(iv1)
      acd15(76)=abb15(28)
      acd15(77)=abb15(29)
      acd15(78)=abb15(22)
      acd15(79)=spvae7k2(iv1)
      acd15(80)=abb15(15)
      acd15(81)=spvak1k3(iv1)
      acd15(82)=spvak1l6(iv1)
      acd15(83)=spvak1k7(iv1)
      acd15(84)=acd15(32)*acd15(33)
      acd15(85)=acd15(16)*acd15(31)
      acd15(86)=acd15(6)*acd15(25)
      acd15(87)=acd15(4)*acd15(21)
      acd15(84)=acd15(34)+acd15(87)-acd15(86)+acd15(84)-acd15(85)
      acd15(85)=-acd15(14)*acd15(30)
      acd15(86)=acd15(2)*acd15(21)
      acd15(85)=acd15(86)+acd15(85)-acd15(84)
      acd15(85)=acd15(69)*acd15(85)
      acd15(86)=-acd15(45)+2.0_ki*acd15(19)
      acd15(87)=-acd15(22)*acd15(86)
      acd15(88)=-acd15(40)*acd15(82)
      acd15(89)=-acd15(38)*acd15(81)
      acd15(90)=-acd15(65)*acd15(29)
      acd15(91)=2.0_ki*acd15(55)
      acd15(92)=acd15(28)*acd15(91)
      acd15(93)=-acd15(1)*acd15(3)
      acd15(94)=-acd15(79)*acd15(36)
      acd15(95)=-acd15(49)*acd15(26)
      acd15(96)=acd15(42)+acd15(44)
      acd15(97)=-acd15(5)*acd15(96)
      acd15(98)=acd15(75)*acd15(35)
      acd15(85)=acd15(98)+acd15(97)+acd15(95)+acd15(94)+acd15(93)+acd15(92)+acd&
      &15(90)+acd15(88)+acd15(89)+acd15(85)+acd15(87)
      acd15(85)=acd15(2)*acd15(85)
      acd15(87)=acd15(32)*acd15(71)
      acd15(88)=acd15(16)*acd15(70)
      acd15(89)=acd15(6)*acd15(51)
      acd15(90)=acd15(4)*acd15(30)
      acd15(87)=acd15(89)+acd15(87)+acd15(88)+acd15(90)-acd15(72)
      acd15(88)=acd15(69)*acd15(87)
      acd15(89)=acd15(19)-acd15(45)
      acd15(90)=acd15(35)*acd15(89)
      acd15(92)=-acd15(77)*acd15(81)
      acd15(93)=-acd15(57)*acd15(82)
      acd15(94)=-acd15(61)*acd15(63)
      acd15(95)=-acd15(65)*acd15(67)
      acd15(97)=acd15(58)*acd15(91)
      acd15(98)=-acd15(1)*acd15(15)
      acd15(99)=-acd15(79)*acd15(76)
      acd15(100)=-acd15(49)*acd15(53)
      acd15(88)=acd15(88)+acd15(100)+acd15(99)+acd15(98)+acd15(97)+acd15(95)+ac&
      &d15(94)+acd15(92)+acd15(93)+acd15(90)
      acd15(88)=acd15(14)*acd15(88)
      acd15(86)=acd15(21)*acd15(86)
      acd15(90)=-acd15(33)*acd15(83)
      acd15(92)=acd15(79)*acd15(31)
      acd15(93)=acd15(49)*acd15(25)
      acd15(94)=-acd15(75)*acd15(30)
      acd15(86)=acd15(94)+acd15(93)+acd15(90)+acd15(92)+acd15(86)
      acd15(86)=acd15(2)*acd15(86)
      acd15(87)=acd15(75)*acd15(87)
      acd15(84)=-acd15(19)*acd15(84)
      acd15(89)=-acd15(30)*acd15(89)
      acd15(90)=acd15(71)*acd15(83)
      acd15(92)=acd15(79)*acd15(70)
      acd15(93)=acd15(49)*acd15(51)
      acd15(89)=acd15(93)+acd15(90)+acd15(92)+acd15(89)
      acd15(89)=acd15(14)*acd15(89)
      acd15(90)=-acd15(61)*acd15(62)
      acd15(92)=-acd15(65)*acd15(66)
      acd15(93)=-acd15(1)*acd15(13)
      acd15(94)=-acd15(79)*acd15(73)
      acd15(95)=-acd15(49)*acd15(52)
      acd15(97)=-acd15(45)*acd15(47)
      acd15(84)=acd15(86)+acd15(89)+acd15(84)+acd15(87)+acd15(97)+acd15(95)+acd&
      &15(94)+acd15(93)+acd15(90)+acd15(92)
      acd15(84)=acd15(12)*acd15(84)
      acd15(86)=-acd15(37)*acd15(77)
      acd15(87)=-acd15(57)*acd15(39)
      acd15(89)=-acd15(8)*acd15(63)
      acd15(90)=acd15(27)*acd15(58)
      acd15(92)=-acd15(10)*acd15(67)
      acd15(93)=-acd15(20)*acd15(15)
      acd15(94)=-acd15(16)*acd15(76)
      acd15(95)=-acd15(6)*acd15(53)
      acd15(97)=-acd15(4)*acd15(35)
      acd15(86)=acd15(97)+acd15(95)+acd15(94)+acd15(93)+acd15(92)+acd15(90)+acd&
      &15(89)+acd15(87)+acd15(78)+acd15(86)
      acd15(86)=acd15(75)*acd15(86)
      acd15(87)=-acd15(39)*acd15(40)
      acd15(89)=-acd15(37)*acd15(38)
      acd15(90)=acd15(27)*acd15(28)
      acd15(92)=-acd15(10)*acd15(29)
      acd15(93)=-acd15(20)*acd15(3)
      acd15(94)=acd15(23)+acd15(24)
      acd15(95)=-acd15(5)*acd15(94)
      acd15(97)=-acd15(16)*acd15(36)
      acd15(98)=-acd15(6)*acd15(26)
      acd15(99)=acd15(4)*acd15(22)
      acd15(87)=acd15(99)+acd15(98)+acd15(97)+acd15(95)+acd15(93)+acd15(92)+acd&
      &15(90)+acd15(89)+acd15(41)+acd15(87)
      acd15(87)=acd15(19)*acd15(87)
      acd15(89)=-acd15(8)*acd15(62)
      acd15(90)=-acd15(10)*acd15(66)
      acd15(92)=-acd15(20)*acd15(13)
      acd15(93)=-acd15(16)*acd15(73)
      acd15(95)=-acd15(6)*acd15(52)
      acd15(97)=-acd15(4)*acd15(47)
      acd15(89)=acd15(97)+acd15(95)+acd15(93)+acd15(92)+acd15(90)+acd15(74)+acd&
      &15(89)
      acd15(89)=acd15(69)*acd15(89)
      acd15(90)=acd15(10)*acd15(11)
      acd15(92)=acd15(8)*acd15(9)
      acd15(93)=acd15(90)+acd15(92)+acd15(43)
      acd15(93)=acd15(96)*acd15(93)
      acd15(95)=acd15(9)*acd15(94)
      acd15(97)=acd15(27)*acd15(56)
      acd15(95)=acd15(97)+acd15(64)+acd15(95)
      acd15(95)=acd15(61)*acd15(95)
      acd15(97)=acd15(27)*acd15(46)
      acd15(98)=acd15(94)-acd15(20)
      acd15(99)=acd15(5)*acd15(98)
      acd15(97)=acd15(99)+acd15(48)+acd15(97)
      acd15(97)=acd15(45)*acd15(97)
      acd15(94)=acd15(11)*acd15(94)
      acd15(99)=-acd15(27)*acd15(57)
      acd15(94)=acd15(99)+acd15(68)+acd15(94)
      acd15(94)=acd15(65)*acd15(94)
      acd15(99)=acd15(8)*acd15(56)
      acd15(100)=-acd15(10)*acd15(57)
      acd15(99)=acd15(100)-acd15(60)+acd15(99)
      acd15(99)=acd15(99)*acd15(91)
      acd15(100)=-acd15(61)*acd15(9)
      acd15(101)=-acd15(65)*acd15(11)
      acd15(100)=acd15(100)+acd15(101)
      acd15(100)=acd15(20)*acd15(100)
      acd15(90)=-acd15(90)+acd15(18)-acd15(92)
      acd15(90)=acd15(1)*acd15(90)
      acd15(92)=acd15(17)*acd15(98)
      acd15(101)=acd15(27)*acd15(59)
      acd15(92)=acd15(101)+acd15(80)+acd15(92)
      acd15(92)=acd15(79)*acd15(92)
      acd15(98)=acd15(7)*acd15(98)
      acd15(101)=acd15(27)*acd15(50)
      acd15(98)=acd15(101)+acd15(54)+acd15(98)
      acd15(98)=acd15(49)*acd15(98)
      acd15(96)=acd15(96)-acd15(1)
      acd15(101)=acd15(17)*acd15(96)
      acd15(102)=acd15(59)*acd15(91)
      acd15(101)=acd15(102)+acd15(101)
      acd15(101)=acd15(16)*acd15(101)
      acd15(102)=acd15(7)*acd15(96)
      acd15(103)=acd15(50)*acd15(91)
      acd15(102)=acd15(103)+acd15(102)
      acd15(102)=acd15(6)*acd15(102)
      acd15(91)=acd15(46)*acd15(91)
      acd15(96)=acd15(5)*acd15(96)
      acd15(91)=acd15(91)+acd15(96)
      acd15(91)=acd15(4)*acd15(91)
      brack=acd15(84)+acd15(85)+acd15(86)+acd15(87)+acd15(88)+acd15(89)+acd15(9&
      &0)+acd15(91)+acd15(92)+acd15(93)+acd15(94)+acd15(95)+acd15(97)+acd15(98)&
      &+acd15(99)+acd15(100)+acd15(101)+acd15(102)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(107) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=dotproduct(k2,qshift)
      acd15(3)=abb15(23)
      acd15(4)=dotproduct(k7,qshift)
      acd15(5)=abb15(122)
      acd15(6)=dotproduct(e7,qshift)
      acd15(7)=abb15(79)
      acd15(8)=dotproduct(qshift,spvak1k2)
      acd15(9)=abb15(48)
      acd15(10)=dotproduct(qshift,spvak1l5)
      acd15(11)=abb15(53)
      acd15(12)=dotproduct(qshift,spval6l5)
      acd15(13)=abb15(39)
      acd15(14)=dotproduct(qshift,spvae7k2)
      acd15(15)=abb15(16)
      acd15(16)=abb15(81)
      acd15(17)=k1(iv1)
      acd15(18)=k2(iv2)
      acd15(19)=abb15(24)
      acd15(20)=k7(iv2)
      acd15(21)=abb15(132)
      acd15(22)=e7(iv2)
      acd15(23)=abb15(103)
      acd15(24)=spvak1k2(iv2)
      acd15(25)=abb15(42)
      acd15(26)=spvak1l5(iv2)
      acd15(27)=abb15(50)
      acd15(28)=spval6l5(iv2)
      acd15(29)=abb15(37)
      acd15(30)=spvae7k2(iv2)
      acd15(31)=abb15(46)
      acd15(32)=spvak4k3(iv2)
      acd15(33)=abb15(34)
      acd15(34)=k1(iv2)
      acd15(35)=k2(iv1)
      acd15(36)=k7(iv1)
      acd15(37)=e7(iv1)
      acd15(38)=spvak1k2(iv1)
      acd15(39)=spvak1l5(iv1)
      acd15(40)=spval6l5(iv1)
      acd15(41)=spvae7k2(iv1)
      acd15(42)=spvak4k3(iv1)
      acd15(43)=dotproduct(qshift,spvak4k3)
      acd15(44)=abb15(51)
      acd15(45)=abb15(80)
      acd15(46)=l5(iv2)
      acd15(47)=l6(iv2)
      acd15(48)=abb15(49)
      acd15(49)=abb15(60)
      acd15(50)=qshift(iv2)
      acd15(51)=abb15(17)
      acd15(52)=abb15(40)
      acd15(53)=abb15(33)
      acd15(54)=abb15(20)
      acd15(55)=abb15(21)
      acd15(56)=dotproduct(qshift,spvak1k7)
      acd15(57)=abb15(45)
      acd15(58)=abb15(31)
      acd15(59)=spvak1k3(iv2)
      acd15(60)=abb15(57)
      acd15(61)=spvak1l6(iv2)
      acd15(62)=abb15(27)
      acd15(63)=spvak1k7(iv2)
      acd15(64)=l5(iv1)
      acd15(65)=l6(iv1)
      acd15(66)=qshift(iv1)
      acd15(67)=spvak1k3(iv1)
      acd15(68)=spvak1l6(iv1)
      acd15(69)=spvak1k7(iv1)
      acd15(70)=abb15(43)
      acd15(71)=abb15(14)
      acd15(72)=abb15(36)
      acd15(73)=abb15(11)
      acd15(74)=abb15(10)
      acd15(75)=abb15(18)
      acd15(76)=abb15(55)
      acd15(77)=abb15(30)
      acd15(78)=abb15(44)
      acd15(79)=abb15(28)
      acd15(80)=abb15(47)
      acd15(81)=abb15(35)
      acd15(82)=abb15(29)
      acd15(83)=abb15(12)
      acd15(84)=acd15(57)*acd15(69)
      acd15(85)=acd15(41)*acd15(54)
      acd15(86)=acd15(37)*acd15(48)
      acd15(87)=acd15(36)*acd15(44)
      acd15(84)=acd15(85)-acd15(84)+acd15(86)-acd15(87)
      acd15(85)=-acd15(43)*acd15(84)
      acd15(86)=acd15(62)*acd15(68)
      acd15(87)=acd15(60)*acd15(67)
      acd15(88)=2.0_ki*acd15(66)
      acd15(89)=-acd15(3)*acd15(88)
      acd15(90)=acd15(39)*acd15(51)
      acd15(91)=acd15(17)*acd15(19)
      acd15(92)=acd15(64)+acd15(65)
      acd15(93)=acd15(21)*acd15(92)
      acd15(94)=acd15(41)*acd15(55)
      acd15(95)=acd15(37)*acd15(49)
      acd15(96)=-acd15(36)*acd15(45)
      acd15(97)=acd15(43)*acd15(52)
      acd15(97)=acd15(97)-acd15(53)
      acd15(98)=acd15(40)*acd15(97)
      acd15(99)=-acd15(43)*acd15(44)
      acd15(99)=acd15(45)+acd15(99)
      acd15(99)=acd15(35)*acd15(99)
      acd15(85)=2.0_ki*acd15(99)+acd15(98)+acd15(85)+acd15(96)+acd15(95)+acd15(&
      &94)+acd15(93)+acd15(91)+acd15(90)+acd15(89)+acd15(86)+acd15(87)
      acd15(85)=acd15(18)*acd15(85)
      acd15(86)=acd15(57)*acd15(63)
      acd15(87)=acd15(30)*acd15(54)
      acd15(89)=acd15(22)*acd15(48)
      acd15(90)=acd15(20)*acd15(44)
      acd15(86)=-acd15(90)-acd15(86)+acd15(87)+acd15(89)
      acd15(87)=-acd15(43)*acd15(86)
      acd15(89)=acd15(61)*acd15(62)
      acd15(90)=acd15(59)*acd15(60)
      acd15(91)=2.0_ki*acd15(50)
      acd15(93)=-acd15(3)*acd15(91)
      acd15(94)=acd15(26)*acd15(51)
      acd15(95)=acd15(34)*acd15(19)
      acd15(96)=acd15(46)+acd15(47)
      acd15(98)=acd15(21)*acd15(96)
      acd15(99)=acd15(30)*acd15(55)
      acd15(100)=acd15(22)*acd15(49)
      acd15(101)=-acd15(20)*acd15(45)
      acd15(97)=acd15(28)*acd15(97)
      acd15(87)=acd15(97)+acd15(87)+acd15(101)+acd15(100)+acd15(99)+acd15(98)+a&
      &cd15(95)+acd15(94)+acd15(93)+acd15(89)+acd15(90)
      acd15(87)=acd15(35)*acd15(87)
      acd15(89)=acd15(80)*acd15(63)
      acd15(90)=acd15(30)*acd15(78)
      acd15(93)=acd15(22)*acd15(71)
      acd15(89)=acd15(89)+acd15(90)+acd15(93)
      acd15(90)=-acd15(52)*acd15(20)
      acd15(90)=acd15(90)-acd15(89)
      acd15(90)=acd15(43)*acd15(90)
      acd15(93)=acd15(59)*acd15(82)
      acd15(94)=acd15(11)*acd15(61)
      acd15(95)=acd15(24)*acd15(74)
      acd15(97)=-acd15(13)*acd15(91)
      acd15(98)=acd15(26)*acd15(76)
      acd15(99)=acd15(34)*acd15(29)
      acd15(100)=acd15(30)*acd15(79)
      acd15(101)=acd15(22)*acd15(72)
      acd15(102)=acd15(20)*acd15(53)
      acd15(90)=acd15(90)+acd15(102)+acd15(101)+acd15(100)+acd15(99)+acd15(98)+&
      &acd15(97)+acd15(95)+acd15(93)+acd15(94)
      acd15(90)=acd15(40)*acd15(90)
      acd15(93)=acd15(80)*acd15(69)
      acd15(94)=acd15(41)*acd15(78)
      acd15(95)=acd15(37)*acd15(71)
      acd15(93)=acd15(95)+acd15(93)+acd15(94)
      acd15(94)=-acd15(52)*acd15(36)
      acd15(94)=acd15(94)-acd15(93)
      acd15(94)=acd15(43)*acd15(94)
      acd15(95)=acd15(67)*acd15(82)
      acd15(97)=acd15(11)*acd15(68)
      acd15(98)=acd15(38)*acd15(74)
      acd15(99)=-acd15(13)*acd15(88)
      acd15(100)=acd15(39)*acd15(76)
      acd15(101)=acd15(17)*acd15(29)
      acd15(102)=acd15(41)*acd15(79)
      acd15(103)=acd15(37)*acd15(72)
      acd15(104)=acd15(36)*acd15(53)
      acd15(94)=acd15(94)+acd15(104)+acd15(103)+acd15(102)+acd15(101)+acd15(100&
      &)+acd15(99)+acd15(98)+acd15(95)+acd15(97)
      acd15(94)=acd15(28)*acd15(94)
      acd15(95)=2.0_ki*acd15(2)
      acd15(97)=acd15(95)-acd15(4)
      acd15(97)=acd15(97)*acd15(44)
      acd15(98)=acd15(57)*acd15(56)
      acd15(99)=acd15(54)*acd15(14)
      acd15(100)=acd15(48)*acd15(6)
      acd15(101)=acd15(52)*acd15(12)
      acd15(97)=acd15(97)-acd15(98)-acd15(101)-acd15(58)+acd15(99)+acd15(100)
      acd15(98)=-acd15(18)*acd15(97)
      acd15(86)=-acd15(2)*acd15(86)
      acd15(99)=acd15(2)-acd15(4)
      acd15(99)=acd15(99)*acd15(52)
      acd15(100)=acd15(80)*acd15(56)
      acd15(102)=acd15(78)*acd15(14)
      acd15(103)=acd15(71)*acd15(6)
      acd15(99)=-acd15(99)+acd15(100)+acd15(102)+acd15(103)-acd15(81)
      acd15(100)=-acd15(28)*acd15(99)
      acd15(89)=-acd15(12)*acd15(89)
      acd15(101)=acd15(101)-acd15(70)
      acd15(102)=-acd15(20)*acd15(101)
      acd15(103)=acd15(24)*acd15(75)
      acd15(104)=acd15(26)*acd15(77)
      acd15(105)=acd15(34)*acd15(33)
      acd15(106)=acd15(30)*acd15(83)
      acd15(107)=acd15(22)*acd15(73)
      acd15(86)=acd15(98)+acd15(100)+acd15(86)+acd15(89)+acd15(107)+acd15(106)+&
      &acd15(105)+acd15(103)+acd15(104)+acd15(102)
      acd15(86)=acd15(42)*acd15(86)
      acd15(89)=-acd15(35)*acd15(97)
      acd15(84)=-acd15(2)*acd15(84)
      acd15(97)=-acd15(40)*acd15(99)
      acd15(93)=-acd15(12)*acd15(93)
      acd15(98)=-acd15(36)*acd15(101)
      acd15(99)=acd15(38)*acd15(75)
      acd15(100)=acd15(39)*acd15(77)
      acd15(101)=acd15(17)*acd15(33)
      acd15(102)=acd15(41)*acd15(83)
      acd15(103)=acd15(37)*acd15(73)
      acd15(84)=acd15(89)+acd15(97)+acd15(84)+acd15(93)+acd15(103)+acd15(102)+a&
      &cd15(101)+acd15(99)+acd15(100)+acd15(98)
      acd15(84)=acd15(32)*acd15(84)
      acd15(89)=-acd15(9)*acd15(8)
      acd15(93)=-acd15(14)*acd15(15)
      acd15(97)=acd15(11)*acd15(10)
      acd15(98)=-acd15(6)*acd15(7)
      acd15(99)=-acd15(4)*acd15(5)
      acd15(100)=-acd15(12)*acd15(13)
      acd15(89)=acd15(100)+acd15(99)+acd15(98)+acd15(97)+acd15(93)+acd15(16)+ac&
      &d15(89)
      acd15(93)=2.0_ki*acd15(1)
      acd15(89)=acd15(93)*acd15(89)
      acd15(93)=-acd15(25)*acd15(96)
      acd15(97)=-acd15(9)*acd15(91)
      acd15(93)=acd15(97)+acd15(93)
      acd15(93)=acd15(38)*acd15(93)
      acd15(97)=-acd15(25)*acd15(92)
      acd15(98)=-acd15(9)*acd15(88)
      acd15(97)=acd15(98)+acd15(97)
      acd15(97)=acd15(24)*acd15(97)
      acd15(98)=-acd15(27)*acd15(96)
      acd15(99)=acd15(11)*acd15(91)
      acd15(98)=acd15(98)+acd15(99)
      acd15(98)=acd15(39)*acd15(98)
      acd15(99)=-acd15(27)*acd15(92)
      acd15(100)=acd15(11)*acd15(88)
      acd15(99)=acd15(99)+acd15(100)
      acd15(99)=acd15(26)*acd15(99)
      acd15(100)=acd15(25)*acd15(38)
      acd15(101)=acd15(39)*acd15(27)
      acd15(100)=acd15(100)+acd15(101)
      acd15(100)=acd15(34)*acd15(100)
      acd15(101)=acd15(24)*acd15(25)
      acd15(102)=acd15(26)*acd15(27)
      acd15(101)=acd15(101)+acd15(102)
      acd15(101)=acd15(17)*acd15(101)
      acd15(96)=acd15(96)-acd15(34)
      acd15(102)=-acd15(31)*acd15(96)
      acd15(103)=-acd15(15)*acd15(91)
      acd15(102)=acd15(103)+acd15(102)
      acd15(102)=acd15(41)*acd15(102)
      acd15(103)=-acd15(23)*acd15(96)
      acd15(104)=-acd15(7)*acd15(91)
      acd15(103)=acd15(104)+acd15(103)
      acd15(103)=acd15(37)*acd15(103)
      acd15(91)=-acd15(5)*acd15(91)
      acd15(96)=-acd15(21)*acd15(96)
      acd15(91)=acd15(91)+acd15(96)
      acd15(91)=acd15(36)*acd15(91)
      acd15(92)=acd15(92)-acd15(17)
      acd15(96)=-acd15(31)*acd15(92)
      acd15(104)=-acd15(15)*acd15(88)
      acd15(96)=acd15(104)+acd15(96)
      acd15(96)=acd15(30)*acd15(96)
      acd15(104)=-acd15(23)*acd15(92)
      acd15(105)=-acd15(7)*acd15(88)
      acd15(104)=acd15(105)+acd15(104)
      acd15(104)=acd15(22)*acd15(104)
      acd15(88)=-acd15(5)*acd15(88)
      acd15(92)=-acd15(21)*acd15(92)
      acd15(88)=acd15(88)+acd15(92)
      acd15(88)=acd15(20)*acd15(88)
      acd15(92)=-acd15(1)*acd15(3)*acd15(95)
      brack=acd15(84)+acd15(85)+acd15(86)+acd15(87)+acd15(88)+acd15(89)+acd15(9&
      &0)+acd15(91)+acd15(92)+acd15(93)+acd15(94)+acd15(96)+acd15(97)+acd15(98)&
      &+acd15(99)+acd15(100)+acd15(101)+acd15(102)+acd15(103)+acd15(104)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=k2(iv3)
      acd15(3)=abb15(23)
      acd15(4)=k7(iv3)
      acd15(5)=abb15(122)
      acd15(6)=e7(iv3)
      acd15(7)=abb15(79)
      acd15(8)=spvak1k2(iv3)
      acd15(9)=abb15(48)
      acd15(10)=spvak1l5(iv3)
      acd15(11)=abb15(53)
      acd15(12)=spval6l5(iv3)
      acd15(13)=abb15(39)
      acd15(14)=spvae7k2(iv3)
      acd15(15)=abb15(16)
      acd15(16)=d(iv1,iv3)
      acd15(17)=k2(iv2)
      acd15(18)=k7(iv2)
      acd15(19)=e7(iv2)
      acd15(20)=spvak1k2(iv2)
      acd15(21)=spvak1l5(iv2)
      acd15(22)=spval6l5(iv2)
      acd15(23)=spvae7k2(iv2)
      acd15(24)=d(iv2,iv3)
      acd15(25)=k2(iv1)
      acd15(26)=k7(iv1)
      acd15(27)=e7(iv1)
      acd15(28)=spvak1k2(iv1)
      acd15(29)=spvak1l5(iv1)
      acd15(30)=spval6l5(iv1)
      acd15(31)=spvae7k2(iv1)
      acd15(32)=spvak4k3(iv3)
      acd15(33)=abb15(51)
      acd15(34)=spvak4k3(iv2)
      acd15(35)=abb15(49)
      acd15(36)=abb15(40)
      acd15(37)=abb15(20)
      acd15(38)=spvak1k7(iv3)
      acd15(39)=abb15(45)
      acd15(40)=spvak1k7(iv2)
      acd15(41)=spvak4k3(iv1)
      acd15(42)=spvak1k7(iv1)
      acd15(43)=abb15(14)
      acd15(44)=abb15(44)
      acd15(45)=abb15(47)
      acd15(46)=-acd15(11)*acd15(29)
      acd15(47)=acd15(9)*acd15(28)
      acd15(48)=acd15(31)*acd15(15)
      acd15(49)=acd15(27)*acd15(7)
      acd15(50)=acd15(26)*acd15(5)
      acd15(51)=acd15(30)*acd15(13)
      acd15(52)=acd15(25)*acd15(3)
      acd15(46)=acd15(52)+acd15(51)+acd15(50)+acd15(49)+acd15(48)+acd15(46)+acd&
      &15(47)
      acd15(46)=acd15(24)*acd15(46)
      acd15(47)=-acd15(11)*acd15(21)
      acd15(48)=acd15(9)*acd15(20)
      acd15(49)=acd15(23)*acd15(15)
      acd15(50)=acd15(19)*acd15(7)
      acd15(51)=acd15(18)*acd15(5)
      acd15(52)=acd15(22)*acd15(13)
      acd15(53)=acd15(17)*acd15(3)
      acd15(47)=acd15(53)+acd15(52)+acd15(51)+acd15(50)+acd15(49)+acd15(47)+acd&
      &15(48)
      acd15(47)=acd15(16)*acd15(47)
      acd15(48)=-acd15(11)*acd15(10)
      acd15(49)=acd15(9)*acd15(8)
      acd15(50)=acd15(14)*acd15(15)
      acd15(51)=acd15(6)*acd15(7)
      acd15(52)=acd15(4)*acd15(5)
      acd15(53)=acd15(12)*acd15(13)
      acd15(54)=acd15(2)*acd15(3)
      acd15(48)=acd15(54)+acd15(53)+acd15(52)+acd15(51)+acd15(50)+acd15(48)+acd&
      &15(49)
      acd15(48)=acd15(1)*acd15(48)
      acd15(46)=acd15(48)+acd15(47)+acd15(46)
      acd15(47)=acd15(39)*acd15(38)
      acd15(48)=acd15(37)*acd15(14)
      acd15(49)=acd15(35)*acd15(6)
      acd15(50)=acd15(33)*acd15(4)
      acd15(51)=acd15(36)*acd15(12)
      acd15(47)=-acd15(47)+acd15(49)-acd15(50)+acd15(48)-acd15(51)
      acd15(48)=acd15(17)*acd15(47)
      acd15(49)=acd15(39)*acd15(40)
      acd15(50)=acd15(37)*acd15(23)
      acd15(51)=acd15(35)*acd15(19)
      acd15(52)=acd15(33)*acd15(18)
      acd15(53)=acd15(36)*acd15(22)
      acd15(49)=-acd15(49)+acd15(51)-acd15(52)+acd15(50)-acd15(53)
      acd15(50)=2.0_ki*acd15(33)
      acd15(51)=acd15(17)*acd15(50)
      acd15(51)=acd15(51)+acd15(49)
      acd15(51)=acd15(2)*acd15(51)
      acd15(52)=acd15(45)*acd15(38)
      acd15(53)=acd15(44)*acd15(14)
      acd15(54)=acd15(43)*acd15(6)
      acd15(52)=acd15(54)+acd15(52)+acd15(53)
      acd15(53)=acd15(22)*acd15(52)
      acd15(54)=acd15(45)*acd15(40)
      acd15(55)=acd15(44)*acd15(23)
      acd15(56)=acd15(43)*acd15(19)
      acd15(54)=acd15(56)+acd15(54)+acd15(55)
      acd15(55)=acd15(12)*acd15(54)
      acd15(56)=acd15(22)*acd15(4)
      acd15(57)=acd15(12)*acd15(18)
      acd15(56)=acd15(56)+acd15(57)
      acd15(56)=acd15(36)*acd15(56)
      acd15(48)=acd15(51)+acd15(48)+acd15(56)+acd15(53)+acd15(55)
      acd15(48)=acd15(41)*acd15(48)
      acd15(51)=acd15(39)*acd15(42)
      acd15(53)=acd15(37)*acd15(31)
      acd15(55)=acd15(35)*acd15(27)
      acd15(50)=acd15(50)*acd15(25)
      acd15(56)=acd15(33)*acd15(26)
      acd15(57)=acd15(36)*acd15(30)
      acd15(50)=acd15(50)-acd15(51)-acd15(56)-acd15(57)+acd15(53)+acd15(55)
      acd15(51)=acd15(2)*acd15(50)
      acd15(47)=acd15(25)*acd15(47)
      acd15(52)=acd15(30)*acd15(52)
      acd15(53)=acd15(45)*acd15(42)
      acd15(55)=acd15(44)*acd15(31)
      acd15(56)=acd15(43)*acd15(27)
      acd15(53)=acd15(56)+acd15(53)+acd15(55)
      acd15(55)=acd15(12)*acd15(53)
      acd15(56)=acd15(30)*acd15(4)
      acd15(57)=acd15(12)*acd15(26)
      acd15(56)=acd15(56)+acd15(57)
      acd15(56)=acd15(36)*acd15(56)
      acd15(47)=acd15(51)+acd15(47)+acd15(56)+acd15(52)+acd15(55)
      acd15(47)=acd15(34)*acd15(47)
      acd15(50)=acd15(17)*acd15(50)
      acd15(49)=acd15(25)*acd15(49)
      acd15(51)=acd15(30)*acd15(54)
      acd15(52)=acd15(22)*acd15(53)
      acd15(53)=acd15(30)*acd15(18)
      acd15(54)=acd15(22)*acd15(26)
      acd15(53)=acd15(53)+acd15(54)
      acd15(53)=acd15(36)*acd15(53)
      acd15(49)=acd15(50)+acd15(49)+acd15(53)+acd15(51)+acd15(52)
      acd15(49)=acd15(32)*acd15(49)
      brack=2.0_ki*acd15(46)+acd15(47)+acd15(48)+acd15(49)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd15h1
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
      qshift = k2
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
!---#[ subroutine reconstruct_d15:
   subroutine     reconstruct_d15(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group5
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group5), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_15:
      coeffs%coeffs_15%c0 = derivative(czip)
      coeffs%coeffs_15%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_15%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_15%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_15%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_15%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_15%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_15%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_15%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_15%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_15%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_15%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_15%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_15%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_15%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_15%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_15%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_15%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_15%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_15%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_15%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_15%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_15%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_15%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_15%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_15%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_15%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_15%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_15%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_15%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_15%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_15%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_15%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_15%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_15%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_15:
   end subroutine reconstruct_d15
!---#] subroutine reconstruct_d15:
end module     p0_dbaru_epnebbbarg_d15h1l1d