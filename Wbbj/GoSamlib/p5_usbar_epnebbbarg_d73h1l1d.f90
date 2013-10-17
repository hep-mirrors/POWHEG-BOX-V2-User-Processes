module     p5_usbar_epnebbbarg_d73h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d73h1l1d.f90
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
   public :: derivative , reconstruct_d73
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd73h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd73
      complex(ki) :: brack
      acd73(1)=abb73(21)
      brack=acd73(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd73h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(76) :: acd73
      complex(ki) :: brack
      acd73(1)=k2(iv1)
      acd73(2)=abb73(11)
      acd73(3)=k3(iv1)
      acd73(4)=abb73(70)
      acd73(5)=k4(iv1)
      acd73(6)=spvak2k1(iv1)
      acd73(7)=abb73(12)
      acd73(8)=spvak2l5(iv1)
      acd73(9)=abb73(28)
      acd73(10)=spvak2k7(iv1)
      acd73(11)=abb73(29)
      acd73(12)=spvak4k1(iv1)
      acd73(13)=abb73(26)
      acd73(14)=spvak4k3(iv1)
      acd73(15)=abb73(17)
      acd73(16)=spval5k1(iv1)
      acd73(17)=abb73(16)
      acd73(18)=spval5k2(iv1)
      acd73(19)=abb73(52)
      acd73(20)=spval5k3(iv1)
      acd73(21)=abb73(140)
      acd73(22)=spval5l6(iv1)
      acd73(23)=abb73(93)
      acd73(24)=spval6k1(iv1)
      acd73(25)=abb73(14)
      acd73(26)=spval6k2(iv1)
      acd73(27)=abb73(62)
      acd73(28)=spval6l5(iv1)
      acd73(29)=abb73(132)
      acd73(30)=spval6k7(iv1)
      acd73(31)=abb73(128)
      acd73(32)=spvak7k1(iv1)
      acd73(33)=abb73(53)
      acd73(34)=spvak7k2(iv1)
      acd73(35)=abb73(127)
      acd73(36)=spvak7k3(iv1)
      acd73(37)=abb73(117)
      acd73(38)=spvak7l6(iv1)
      acd73(39)=abb73(103)
      acd73(40)=spvae7k1(iv1)
      acd73(41)=abb73(10)
      acd73(42)=spvak2e7(iv1)
      acd73(43)=abb73(101)
      acd73(44)=spvae7k2(iv1)
      acd73(45)=abb73(56)
      acd73(46)=spvae7k3(iv1)
      acd73(47)=abb73(122)
      acd73(48)=spval6e7(iv1)
      acd73(49)=abb73(118)
      acd73(50)=spvae7l6(iv1)
      acd73(51)=abb73(22)
      acd73(52)=acd73(5)+acd73(3)
      acd73(52)=acd73(4)*acd73(52)
      acd73(53)=acd73(2)*acd73(1)
      acd73(54)=acd73(7)*acd73(6)
      acd73(55)=acd73(9)*acd73(8)
      acd73(56)=acd73(11)*acd73(10)
      acd73(57)=acd73(13)*acd73(12)
      acd73(58)=acd73(15)*acd73(14)
      acd73(59)=acd73(17)*acd73(16)
      acd73(60)=acd73(19)*acd73(18)
      acd73(61)=acd73(21)*acd73(20)
      acd73(62)=acd73(23)*acd73(22)
      acd73(63)=acd73(25)*acd73(24)
      acd73(64)=acd73(27)*acd73(26)
      acd73(65)=acd73(29)*acd73(28)
      acd73(66)=acd73(31)*acd73(30)
      acd73(67)=acd73(33)*acd73(32)
      acd73(68)=acd73(35)*acd73(34)
      acd73(69)=acd73(37)*acd73(36)
      acd73(70)=acd73(39)*acd73(38)
      acd73(71)=acd73(41)*acd73(40)
      acd73(72)=acd73(43)*acd73(42)
      acd73(73)=acd73(45)*acd73(44)
      acd73(74)=acd73(47)*acd73(46)
      acd73(75)=acd73(49)*acd73(48)
      acd73(76)=acd73(51)*acd73(50)
      brack=acd73(52)+acd73(53)+acd73(54)+acd73(55)+acd73(56)+acd73(57)+acd73(5&
      &8)+acd73(59)+acd73(60)+acd73(61)+acd73(62)+acd73(63)+acd73(64)+acd73(65)&
      &+acd73(66)+acd73(67)+acd73(68)+acd73(69)+acd73(70)+acd73(71)+acd73(72)+a&
      &cd73(73)+acd73(74)+acd73(75)+acd73(76)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd73h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(130) :: acd73
      complex(ki) :: brack
      acd73(1)=d(iv1,iv2)
      acd73(2)=abb73(34)
      acd73(3)=k2(iv1)
      acd73(4)=k2(iv2)
      acd73(5)=abb73(97)
      acd73(6)=k3(iv2)
      acd73(7)=k4(iv2)
      acd73(8)=spvak2k3(iv2)
      acd73(9)=abb73(13)
      acd73(10)=spvak4k3(iv2)
      acd73(11)=abb73(19)
      acd73(12)=spval5k1(iv2)
      acd73(13)=abb73(30)
      acd73(14)=spval5k3(iv2)
      acd73(15)=abb73(77)
      acd73(16)=spval6k1(iv2)
      acd73(17)=abb73(46)
      acd73(18)=spval6k3(iv2)
      acd73(19)=abb73(20)
      acd73(20)=spval6l5(iv2)
      acd73(21)=abb73(119)
      acd73(22)=spval6k7(iv2)
      acd73(23)=abb73(131)
      acd73(24)=spvak7k1(iv2)
      acd73(25)=abb73(8)
      acd73(26)=spvak7k3(iv2)
      acd73(27)=abb73(79)
      acd73(28)=spvae7k1(iv2)
      acd73(29)=abb73(15)
      acd73(30)=spvae7k3(iv2)
      acd73(31)=abb73(124)
      acd73(32)=spval6e7(iv2)
      acd73(33)=abb73(121)
      acd73(34)=k3(iv1)
      acd73(35)=k4(iv1)
      acd73(36)=spvak2k3(iv1)
      acd73(37)=spvak4k3(iv1)
      acd73(38)=spval5k1(iv1)
      acd73(39)=spval5k3(iv1)
      acd73(40)=spval6k1(iv1)
      acd73(41)=spval6k3(iv1)
      acd73(42)=spval6l5(iv1)
      acd73(43)=spval6k7(iv1)
      acd73(44)=spvak7k1(iv1)
      acd73(45)=spvak7k3(iv1)
      acd73(46)=spvae7k1(iv1)
      acd73(47)=spvae7k3(iv1)
      acd73(48)=spval6e7(iv1)
      acd73(49)=abb73(134)
      acd73(50)=abb73(27)
      acd73(51)=abb73(54)
      acd73(52)=abb73(18)
      acd73(53)=abb73(66)
      acd73(54)=abb73(49)
      acd73(55)=abb73(73)
      acd73(56)=abb73(71)
      acd73(57)=abb73(137)
      acd73(58)=spval6k2(iv2)
      acd73(59)=abb73(31)
      acd73(60)=spval5k2(iv2)
      acd73(61)=abb73(39)
      acd73(62)=spvak7k2(iv2)
      acd73(63)=abb73(72)
      acd73(64)=spvae7k2(iv2)
      acd73(65)=abb73(59)
      acd73(66)=spval6k2(iv1)
      acd73(67)=spval5k2(iv1)
      acd73(68)=spvak7k2(iv1)
      acd73(69)=spvae7k2(iv1)
      acd73(70)=abb73(23)
      acd73(71)=abb73(44)
      acd73(72)=abb73(50)
      acd73(73)=abb73(45)
      acd73(74)=abb73(38)
      acd73(75)=abb73(9)
      acd73(76)=abb73(47)
      acd73(77)=abb73(36)
      acd73(78)=spvak2k1(iv2)
      acd73(79)=abb73(37)
      acd73(80)=abb73(35)
      acd73(81)=spvak2k4(iv2)
      acd73(82)=abb73(43)
      acd73(83)=spvak2l5(iv2)
      acd73(84)=abb73(25)
      acd73(85)=spvak2k7(iv2)
      acd73(86)=abb73(63)
      acd73(87)=spval5l6(iv2)
      acd73(88)=abb73(58)
      acd73(89)=spval6k4(iv2)
      acd73(90)=abb73(120)
      acd73(91)=spvak7l6(iv2)
      acd73(92)=abb73(48)
      acd73(93)=spvak2e7(iv2)
      acd73(94)=abb73(40)
      acd73(95)=spvae7l6(iv2)
      acd73(96)=abb73(33)
      acd73(97)=spvak2k1(iv1)
      acd73(98)=spvak2k4(iv1)
      acd73(99)=spvak2l5(iv1)
      acd73(100)=spvak2k7(iv1)
      acd73(101)=spval5l6(iv1)
      acd73(102)=spval6k4(iv1)
      acd73(103)=spvak7l6(iv1)
      acd73(104)=spvak2e7(iv1)
      acd73(105)=spvae7l6(iv1)
      acd73(106)=abb73(24)
      acd73(107)=abb73(68)
      acd73(108)=abb73(57)
      acd73(109)=abb73(41)
      acd73(110)=acd73(96)*acd73(95)
      acd73(111)=acd73(92)*acd73(91)
      acd73(112)=acd73(90)*acd73(89)
      acd73(113)=acd73(88)*acd73(87)
      acd73(114)=-acd73(82)*acd73(81)
      acd73(115)=acd73(93)*acd73(94)
      acd73(116)=acd73(85)*acd73(86)
      acd73(117)=acd73(83)*acd73(84)
      acd73(118)=acd73(78)*acd73(79)
      acd73(119)=acd73(32)*acd73(77)
      acd73(120)=acd73(28)*acd73(76)
      acd73(121)=acd73(24)*acd73(75)
      acd73(122)=acd73(22)*acd73(74)
      acd73(123)=acd73(20)*acd73(73)
      acd73(124)=acd73(16)*acd73(71)
      acd73(125)=acd73(12)*acd73(70)
      acd73(126)=acd73(58)*acd73(80)
      acd73(127)=acd73(18)*acd73(72)
      acd73(128)=acd73(8)*acd73(50)
      acd73(129)=acd73(4)*acd73(11)
      acd73(110)=acd73(129)+acd73(128)+acd73(127)+acd73(126)+acd73(125)+acd73(1&
      &24)+acd73(123)+acd73(122)+acd73(121)+acd73(120)+acd73(119)+acd73(118)+ac&
      &d73(117)+acd73(116)+acd73(115)+acd73(114)+acd73(113)+acd73(112)+acd73(11&
      &0)+acd73(111)
      acd73(110)=acd73(37)*acd73(110)
      acd73(111)=acd73(96)*acd73(105)
      acd73(112)=acd73(92)*acd73(103)
      acd73(113)=acd73(90)*acd73(102)
      acd73(114)=acd73(88)*acd73(101)
      acd73(115)=-acd73(82)*acd73(98)
      acd73(116)=acd73(104)*acd73(94)
      acd73(117)=acd73(100)*acd73(86)
      acd73(118)=acd73(99)*acd73(84)
      acd73(119)=acd73(97)*acd73(79)
      acd73(120)=acd73(48)*acd73(77)
      acd73(121)=acd73(46)*acd73(76)
      acd73(122)=acd73(44)*acd73(75)
      acd73(123)=acd73(43)*acd73(74)
      acd73(124)=acd73(42)*acd73(73)
      acd73(125)=acd73(40)*acd73(71)
      acd73(126)=acd73(38)*acd73(70)
      acd73(127)=acd73(66)*acd73(80)
      acd73(128)=acd73(41)*acd73(72)
      acd73(129)=acd73(36)*acd73(50)
      acd73(130)=acd73(3)*acd73(11)
      acd73(111)=acd73(130)+acd73(129)+acd73(128)+acd73(127)+acd73(126)+acd73(1&
      &25)+acd73(124)+acd73(123)+acd73(122)+acd73(121)+acd73(120)+acd73(119)+ac&
      &d73(118)+acd73(117)+acd73(116)+acd73(115)+acd73(114)+acd73(113)+acd73(11&
      &1)+acd73(112)
      acd73(111)=acd73(10)*acd73(111)
      acd73(112)=acd73(31)*acd73(47)
      acd73(113)=acd73(27)*acd73(45)
      acd73(114)=acd73(15)*acd73(39)
      acd73(115)=acd73(48)*acd73(33)
      acd73(116)=acd73(46)*acd73(29)
      acd73(117)=acd73(44)*acd73(25)
      acd73(118)=acd73(43)*acd73(23)
      acd73(119)=acd73(42)*acd73(21)
      acd73(120)=acd73(40)*acd73(17)
      acd73(121)=acd73(38)*acd73(13)
      acd73(122)=acd73(34)+acd73(35)
      acd73(123)=-acd73(5)*acd73(122)
      acd73(124)=acd73(41)*acd73(19)
      acd73(125)=-acd73(36)*acd73(9)
      acd73(112)=acd73(125)+acd73(124)+acd73(123)+acd73(121)+acd73(120)+acd73(1&
      &19)+acd73(118)+acd73(117)+acd73(116)+acd73(115)+acd73(114)+acd73(112)+ac&
      &d73(113)
      acd73(112)=acd73(4)*acd73(112)
      acd73(113)=acd73(6)+acd73(7)
      acd73(114)=2.0_ki*acd73(4)-acd73(113)
      acd73(114)=acd73(5)*acd73(114)
      acd73(115)=acd73(31)*acd73(30)
      acd73(116)=acd73(27)*acd73(26)
      acd73(117)=acd73(15)*acd73(14)
      acd73(118)=acd73(32)*acd73(33)
      acd73(119)=acd73(28)*acd73(29)
      acd73(120)=acd73(24)*acd73(25)
      acd73(121)=acd73(22)*acd73(23)
      acd73(123)=acd73(20)*acd73(21)
      acd73(124)=acd73(16)*acd73(17)
      acd73(125)=acd73(12)*acd73(13)
      acd73(126)=acd73(18)*acd73(19)
      acd73(127)=-acd73(8)*acd73(9)
      acd73(114)=acd73(127)+acd73(126)+acd73(125)+acd73(124)+acd73(123)+acd73(1&
      &21)+acd73(120)+acd73(119)+acd73(118)+acd73(117)+acd73(115)+acd73(116)+ac&
      &d73(114)
      acd73(114)=acd73(3)*acd73(114)
      acd73(115)=acd73(65)*acd73(64)
      acd73(116)=acd73(63)*acd73(62)
      acd73(117)=acd73(61)*acd73(60)
      acd73(118)=acd73(28)*acd73(56)
      acd73(119)=acd73(24)*acd73(55)
      acd73(120)=acd73(12)*acd73(51)
      acd73(121)=acd73(57)*acd73(32)
      acd73(123)=-acd73(54)*acd73(22)
      acd73(124)=acd73(53)*acd73(20)
      acd73(125)=-acd73(52)*acd73(16)
      acd73(126)=acd73(58)*acd73(59)
      acd73(127)=acd73(9)*acd73(113)
      acd73(115)=acd73(127)+acd73(126)+acd73(125)+acd73(124)+acd73(123)+acd73(1&
      &21)+acd73(120)+acd73(119)+acd73(118)+acd73(117)+acd73(115)+acd73(116)
      acd73(115)=acd73(36)*acd73(115)
      acd73(116)=acd73(65)*acd73(69)
      acd73(117)=acd73(63)*acd73(68)
      acd73(118)=acd73(61)*acd73(67)
      acd73(119)=acd73(46)*acd73(56)
      acd73(120)=acd73(44)*acd73(55)
      acd73(121)=acd73(38)*acd73(51)
      acd73(123)=acd73(57)*acd73(48)
      acd73(124)=-acd73(54)*acd73(43)
      acd73(125)=acd73(53)*acd73(42)
      acd73(126)=-acd73(52)*acd73(40)
      acd73(127)=acd73(66)*acd73(59)
      acd73(128)=acd73(9)*acd73(122)
      acd73(116)=acd73(128)+acd73(127)+acd73(126)+acd73(125)+acd73(124)+acd73(1&
      &23)+acd73(121)+acd73(120)+acd73(119)+acd73(118)+acd73(116)+acd73(117)
      acd73(116)=acd73(8)*acd73(116)
      acd73(117)=-acd73(57)*acd73(93)
      acd73(118)=acd73(54)*acd73(85)
      acd73(119)=-acd73(53)*acd73(83)
      acd73(120)=acd73(52)*acd73(78)
      acd73(113)=-acd73(49)*acd73(113)
      acd73(113)=acd73(113)+acd73(120)+acd73(119)+acd73(117)+acd73(118)
      acd73(113)=acd73(41)*acd73(113)
      acd73(117)=-acd73(57)*acd73(104)
      acd73(118)=acd73(54)*acd73(100)
      acd73(119)=-acd73(53)*acd73(99)
      acd73(120)=acd73(52)*acd73(97)
      acd73(121)=-acd73(49)*acd73(122)
      acd73(117)=acd73(121)+acd73(120)+acd73(119)+acd73(117)+acd73(118)
      acd73(117)=acd73(18)*acd73(117)
      acd73(118)=acd73(93)*acd73(109)
      acd73(119)=acd73(85)*acd73(108)
      acd73(120)=acd73(83)*acd73(107)
      acd73(121)=acd73(78)*acd73(106)
      acd73(118)=acd73(121)+acd73(120)+acd73(118)+acd73(119)
      acd73(118)=acd73(66)*acd73(118)
      acd73(119)=acd73(104)*acd73(109)
      acd73(120)=acd73(100)*acd73(108)
      acd73(121)=acd73(99)*acd73(107)
      acd73(122)=acd73(97)*acd73(106)
      acd73(119)=acd73(122)+acd73(121)+acd73(119)+acd73(120)
      acd73(119)=acd73(58)*acd73(119)
      acd73(120)=acd73(1)*acd73(2)
      brack=acd73(110)+acd73(111)+acd73(112)+acd73(113)+acd73(114)+acd73(115)+a&
      &cd73(116)+acd73(117)+acd73(118)+acd73(119)+2.0_ki*acd73(120)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd73h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd73
      complex(ki) :: brack
      acd73(1)=d(iv1,iv2)
      acd73(2)=k2(iv3)
      acd73(3)=abb73(90)
      acd73(4)=spvak2k3(iv3)
      acd73(5)=abb73(43)
      acd73(6)=spval6k3(iv3)
      acd73(7)=abb73(120)
      acd73(8)=d(iv1,iv3)
      acd73(9)=k2(iv2)
      acd73(10)=spvak2k3(iv2)
      acd73(11)=spval6k3(iv2)
      acd73(12)=d(iv2,iv3)
      acd73(13)=k2(iv1)
      acd73(14)=spvak2k3(iv1)
      acd73(15)=spval6k3(iv1)
      acd73(16)=spvak4k3(iv2)
      acd73(17)=spval6k1(iv3)
      acd73(18)=abb73(51)
      acd73(19)=spvak4k3(iv3)
      acd73(20)=spval6k1(iv2)
      acd73(21)=spvak4k3(iv1)
      acd73(22)=spval6k1(iv1)
      acd73(23)=spvak2l5(iv3)
      acd73(24)=abb73(69)
      acd73(25)=spvak2k7(iv3)
      acd73(26)=abb73(64)
      acd73(27)=spvak2e7(iv3)
      acd73(28)=abb73(55)
      acd73(29)=spvak2l5(iv2)
      acd73(30)=spvak2k7(iv2)
      acd73(31)=spvak2e7(iv2)
      acd73(32)=spvak2k1(iv2)
      acd73(33)=spval5k2(iv3)
      acd73(34)=abb73(61)
      acd73(35)=spval6k2(iv3)
      acd73(36)=abb73(60)
      acd73(37)=spval6l5(iv3)
      acd73(38)=spval6k7(iv3)
      acd73(39)=spvak7k2(iv3)
      acd73(40)=abb73(32)
      acd73(41)=spvae7k2(iv3)
      acd73(42)=abb73(42)
      acd73(43)=spval6e7(iv3)
      acd73(44)=spvak2k1(iv3)
      acd73(45)=spval5k2(iv2)
      acd73(46)=spval6k2(iv2)
      acd73(47)=spval6l5(iv2)
      acd73(48)=spval6k7(iv2)
      acd73(49)=spvak7k2(iv2)
      acd73(50)=spvae7k2(iv2)
      acd73(51)=spval6e7(iv2)
      acd73(52)=spvak2l5(iv1)
      acd73(53)=spvak2k7(iv1)
      acd73(54)=spvak2e7(iv1)
      acd73(55)=spvak2k1(iv1)
      acd73(56)=spval5k2(iv1)
      acd73(57)=spval6k2(iv1)
      acd73(58)=spval6l5(iv1)
      acd73(59)=spval6k7(iv1)
      acd73(60)=spvak7k2(iv1)
      acd73(61)=spvae7k2(iv1)
      acd73(62)=spval6e7(iv1)
      acd73(63)=-acd73(56)*acd73(34)
      acd73(64)=acd73(57)*acd73(36)
      acd73(65)=acd73(58)*acd73(24)
      acd73(66)=-acd73(59)*acd73(26)
      acd73(67)=acd73(60)*acd73(40)
      acd73(68)=-acd73(61)*acd73(42)
      acd73(69)=acd73(62)*acd73(28)
      acd73(63)=acd73(69)+acd73(68)+acd73(67)+acd73(66)+acd73(65)+acd73(64)+acd&
      &73(63)
      acd73(64)=acd73(32)*acd73(19)
      acd73(65)=acd73(44)*acd73(16)
      acd73(64)=acd73(64)+acd73(65)
      acd73(63)=acd73(64)*acd73(63)
      acd73(64)=-acd73(33)*acd73(34)
      acd73(65)=acd73(35)*acd73(36)
      acd73(66)=acd73(37)*acd73(24)
      acd73(67)=-acd73(38)*acd73(26)
      acd73(68)=acd73(39)*acd73(40)
      acd73(69)=-acd73(41)*acd73(42)
      acd73(70)=acd73(43)*acd73(28)
      acd73(64)=acd73(70)+acd73(69)+acd73(68)+acd73(67)+acd73(66)+acd73(65)+acd&
      &73(64)
      acd73(65)=acd73(32)*acd73(21)
      acd73(66)=acd73(55)*acd73(16)
      acd73(65)=acd73(65)+acd73(66)
      acd73(64)=acd73(65)*acd73(64)
      acd73(65)=-acd73(45)*acd73(34)
      acd73(66)=acd73(46)*acd73(36)
      acd73(67)=acd73(47)*acd73(24)
      acd73(68)=-acd73(48)*acd73(26)
      acd73(69)=acd73(49)*acd73(40)
      acd73(70)=-acd73(50)*acd73(42)
      acd73(71)=acd73(51)*acd73(28)
      acd73(65)=acd73(71)+acd73(70)+acd73(69)+acd73(68)+acd73(67)+acd73(66)+acd&
      &73(65)
      acd73(66)=acd73(44)*acd73(21)
      acd73(67)=acd73(55)*acd73(19)
      acd73(66)=acd73(66)+acd73(67)
      acd73(65)=acd73(66)*acd73(65)
      acd73(66)=acd73(2)*acd73(18)
      acd73(67)=-acd73(23)*acd73(24)
      acd73(68)=acd73(25)*acd73(26)
      acd73(69)=-acd73(27)*acd73(28)
      acd73(66)=acd73(69)+acd73(68)+acd73(67)+acd73(66)
      acd73(67)=acd73(20)*acd73(21)
      acd73(68)=acd73(22)*acd73(16)
      acd73(67)=acd73(67)+acd73(68)
      acd73(66)=acd73(67)*acd73(66)
      acd73(67)=-acd73(52)*acd73(24)
      acd73(68)=acd73(53)*acd73(26)
      acd73(69)=-acd73(54)*acd73(28)
      acd73(67)=acd73(69)+acd73(68)+acd73(67)
      acd73(68)=acd73(17)*acd73(16)
      acd73(69)=acd73(20)*acd73(19)
      acd73(68)=acd73(68)+acd73(69)
      acd73(67)=acd73(68)*acd73(67)
      acd73(69)=-acd73(29)*acd73(24)
      acd73(70)=acd73(30)*acd73(26)
      acd73(71)=-acd73(31)*acd73(28)
      acd73(69)=acd73(71)+acd73(70)+acd73(69)
      acd73(70)=acd73(17)*acd73(21)
      acd73(71)=acd73(22)*acd73(19)
      acd73(70)=acd73(70)+acd73(71)
      acd73(69)=acd73(70)*acd73(69)
      acd73(71)=2.0_ki*acd73(3)
      acd73(71)=acd73(2)*acd73(71)
      acd73(72)=2.0_ki*acd73(5)
      acd73(72)=acd73(4)*acd73(72)
      acd73(73)=2.0_ki*acd73(7)
      acd73(73)=-acd73(6)*acd73(73)
      acd73(71)=acd73(73)+acd73(72)+acd73(71)
      acd73(71)=acd73(1)*acd73(71)
      acd73(72)=acd73(14)*acd73(5)
      acd73(73)=-acd73(15)*acd73(7)
      acd73(72)=acd73(73)+acd73(72)
      acd73(73)=2.0_ki*acd73(12)
      acd73(72)=acd73(73)*acd73(72)
      acd73(74)=acd73(10)*acd73(5)
      acd73(75)=-acd73(11)*acd73(7)
      acd73(74)=acd73(75)+acd73(74)
      acd73(75)=2.0_ki*acd73(8)
      acd73(74)=acd73(75)*acd73(74)
      acd73(70)=acd73(18)*acd73(70)
      acd73(75)=acd73(3)*acd73(75)
      acd73(70)=acd73(70)+acd73(75)
      acd73(70)=acd73(9)*acd73(70)
      acd73(68)=acd73(18)*acd73(68)
      acd73(73)=acd73(3)*acd73(73)
      acd73(68)=acd73(68)+acd73(73)
      acd73(68)=acd73(13)*acd73(68)
      brack=acd73(63)+acd73(64)+acd73(65)+acd73(66)+acd73(67)+acd73(68)+acd73(6&
      &9)+acd73(70)+acd73(71)+acd73(72)+acd73(74)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd73h1
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
      qshift = 0
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
!---#[ subroutine reconstruct_d73:
   subroutine     reconstruct_d73(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_73:
      coeffs%coeffs_73%c0 = derivative(czip)
      coeffs%coeffs_73%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_73%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_73%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_73%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_73%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_73%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_73%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_73%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_73%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_73%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_73%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_73%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_73%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_73%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_73%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_73%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_73%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_73%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_73%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_73%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_73%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_73%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_73%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_73%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_73%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_73%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_73%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_73%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_73%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_73%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_73%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_73%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_73%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_73%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_73:
   end subroutine reconstruct_d73
!---#] subroutine reconstruct_d73:
end module     p5_usbar_epnebbbarg_d73h1l1d