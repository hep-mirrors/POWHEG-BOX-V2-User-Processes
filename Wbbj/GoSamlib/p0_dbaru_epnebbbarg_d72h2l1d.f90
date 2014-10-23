module     p0_dbaru_epnebbbarg_d72h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d72h2l1d.f90
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
   public :: derivative , reconstruct_d72
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd72h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(122) :: acd72
      complex(ki) :: brack
      acd72(1)=dotproduct(k1,qshift)
      acd72(2)=dotproduct(k2,qshift)
      acd72(3)=abb72(29)
      acd72(4)=dotproduct(qshift,spvak1k3)
      acd72(5)=abb72(42)
      acd72(6)=dotproduct(qshift,spvak1l6)
      acd72(7)=abb72(72)
      acd72(8)=dotproduct(qshift,spvak2k3)
      acd72(9)=abb72(26)
      acd72(10)=dotproduct(qshift,spvak2l5)
      acd72(11)=abb72(61)
      acd72(12)=dotproduct(qshift,spvak2l6)
      acd72(13)=abb72(76)
      acd72(14)=dotproduct(qshift,spvak2k7)
      acd72(15)=abb72(59)
      acd72(16)=dotproduct(qshift,spvak4k3)
      acd72(17)=abb72(20)
      acd72(18)=dotproduct(qshift,spval5k2)
      acd72(19)=abb72(145)
      acd72(20)=dotproduct(qshift,spval5l6)
      acd72(21)=abb72(143)
      acd72(22)=abb72(17)
      acd72(23)=abb72(22)
      acd72(24)=abb72(49)
      acd72(25)=dotproduct(qshift,spvak1l5)
      acd72(26)=abb72(38)
      acd72(27)=dotproduct(qshift,spvak1k7)
      acd72(28)=abb72(58)
      acd72(29)=abb72(23)
      acd72(30)=abb72(11)
      acd72(31)=dotproduct(k3,qshift)
      acd72(32)=abb72(89)
      acd72(33)=dotproduct(k4,qshift)
      acd72(34)=dotproduct(qshift,qshift)
      acd72(35)=abb72(46)
      acd72(36)=abb72(60)
      acd72(37)=abb72(75)
      acd72(38)=abb72(81)
      acd72(39)=abb72(39)
      acd72(40)=abb72(74)
      acd72(41)=abb72(34)
      acd72(42)=abb72(28)
      acd72(43)=abb72(64)
      acd72(44)=abb72(79)
      acd72(45)=abb72(83)
      acd72(46)=abb72(80)
      acd72(47)=dotproduct(qshift,spvak2k1)
      acd72(48)=abb72(84)
      acd72(49)=dotproduct(qshift,spval5k1)
      acd72(50)=abb72(82)
      acd72(51)=dotproduct(qshift,spval5k3)
      acd72(52)=abb72(55)
      acd72(53)=abb72(71)
      acd72(54)=dotproduct(qshift,spvak1k2)
      acd72(55)=abb72(33)
      acd72(56)=abb72(24)
      acd72(57)=abb72(18)
      acd72(58)=abb72(54)
      acd72(59)=abb72(78)
      acd72(60)=abb72(30)
      acd72(61)=abb72(70)
      acd72(62)=abb72(16)
      acd72(63)=abb72(10)
      acd72(64)=abb72(68)
      acd72(65)=abb72(144)
      acd72(66)=abb72(52)
      acd72(67)=abb72(15)
      acd72(68)=abb72(69)
      acd72(69)=abb72(13)
      acd72(70)=dotproduct(qshift,spvak1k4)
      acd72(71)=dotproduct(qshift,spvak2k4)
      acd72(72)=dotproduct(qshift,spval6k2)
      acd72(73)=abb72(31)
      acd72(74)=dotproduct(qshift,spval6l5)
      acd72(75)=abb72(53)
      acd72(76)=dotproduct(qshift,spval6k7)
      acd72(77)=abb72(51)
      acd72(78)=abb72(19)
      acd72(79)=abb72(63)
      acd72(80)=abb72(113)
      acd72(81)=abb72(43)
      acd72(82)=abb72(14)
      acd72(83)=abb72(37)
      acd72(84)=abb72(27)
      acd72(85)=abb72(35)
      acd72(86)=abb72(12)
      acd72(87)=abb72(25)
      acd72(88)=abb72(98)
      acd72(89)=abb72(99)
      acd72(90)=dotproduct(qshift,spvak4k2)
      acd72(91)=abb72(32)
      acd72(92)=abb72(47)
      acd72(93)=abb72(66)
      acd72(94)=abb72(95)
      acd72(95)=abb72(21)
      acd72(96)=-acd72(57)*acd72(10)
      acd72(97)=acd72(59)*acd72(12)
      acd72(98)=-acd72(62)*acd72(14)
      acd72(99)=-acd72(65)*acd72(20)
      acd72(96)=acd72(69)+acd72(99)+acd72(98)+acd72(97)+acd72(96)
      acd72(96)=acd72(96)*acd72(54)
      acd72(97)=-acd72(26)*acd72(25)
      acd72(98)=-acd72(28)*acd72(27)
      acd72(97)=acd72(29)+acd72(98)+acd72(97)
      acd72(97)=acd72(97)*acd72(2)
      acd72(98)=acd72(17)*acd72(1)
      acd72(99)=acd72(42)*acd72(4)
      acd72(100)=acd72(45)*acd72(6)
      acd72(101)=acd72(53)*acd72(8)
      acd72(102)=acd72(60)*acd72(12)
      acd72(103)=acd72(64)*acd72(18)
      acd72(104)=acd72(66)*acd72(20)
      acd72(105)=acd72(67)*acd72(25)
      acd72(106)=acd72(68)*acd72(27)
      acd72(107)=acd72(70)*acd72(35)
      acd72(108)=-acd72(71)*acd72(37)
      acd72(109)=acd72(73)*acd72(72)
      acd72(110)=acd72(75)*acd72(74)
      acd72(111)=acd72(77)*acd72(76)
      acd72(96)=acd72(106)+acd72(105)+acd72(104)+acd72(102)+acd72(96)+acd72(97)&
      &-acd72(78)+acd72(111)+acd72(110)+acd72(109)+acd72(108)+acd72(107)+acd72(&
      &103)+acd72(101)+acd72(100)+acd72(99)+acd72(98)
      acd72(96)=acd72(16)*acd72(96)
      acd72(97)=acd72(51)*acd72(44)
      acd72(98)=acd72(24)*acd72(2)
      acd72(99)=-acd72(36)*acd72(34)
      acd72(100)=acd72(46)*acd72(18)
      acd72(101)=acd72(48)*acd72(47)
      acd72(102)=acd72(50)*acd72(49)
      acd72(97)=-acd72(52)+acd72(102)+acd72(101)+acd72(100)+acd72(99)+acd72(98)&
      &+acd72(97)
      acd72(97)=acd72(6)*acd72(97)
      acd72(98)=acd72(3)*acd72(2)
      acd72(99)=acd72(11)*acd72(10)
      acd72(100)=acd72(13)*acd72(12)
      acd72(101)=acd72(15)*acd72(14)
      acd72(102)=acd72(19)*acd72(18)
      acd72(103)=acd72(21)*acd72(20)
      acd72(98)=-acd72(22)+acd72(103)+acd72(102)+acd72(101)+acd72(100)+acd72(99&
      &)+acd72(98)
      acd72(98)=acd72(1)*acd72(98)
      acd72(99)=acd72(35)*acd72(34)
      acd72(100)=-acd72(44)*acd72(20)
      acd72(101)=acd72(23)*acd72(2)
      acd72(102)=acd72(43)*acd72(18)
      acd72(99)=acd72(102)+acd72(101)+acd72(100)+acd72(99)
      acd72(99)=acd72(4)*acd72(99)
      acd72(100)=-acd72(5)*acd72(4)
      acd72(101)=acd72(7)*acd72(6)
      acd72(102)=acd72(9)*acd72(8)
      acd72(100)=acd72(102)+acd72(100)+acd72(101)
      acd72(101)=acd72(33)+acd72(31)
      acd72(102)=acd72(101)-acd72(1)
      acd72(100)=acd72(102)*acd72(100)
      acd72(102)=acd72(81)*acd72(25)
      acd72(103)=acd72(83)*acd72(27)
      acd72(104)=acd72(85)*acd72(54)
      acd72(102)=-acd72(87)+acd72(104)+acd72(103)+acd72(102)
      acd72(102)=acd72(47)*acd72(102)
      acd72(103)=-acd72(37)*acd72(34)
      acd72(104)=acd72(55)*acd72(54)
      acd72(103)=-acd72(56)+acd72(104)+acd72(103)
      acd72(103)=acd72(8)*acd72(103)
      acd72(104)=acd72(25)*acd72(8)
      acd72(105)=-acd72(10)*acd72(4)
      acd72(104)=acd72(104)+acd72(105)
      acd72(104)=acd72(39)*acd72(104)
      acd72(105)=-acd72(8)*acd72(6)
      acd72(106)=acd72(12)*acd72(4)
      acd72(105)=acd72(105)+acd72(106)
      acd72(105)=acd72(40)*acd72(105)
      acd72(106)=-acd72(27)*acd72(8)
      acd72(107)=acd72(14)*acd72(4)
      acd72(106)=acd72(106)+acd72(107)
      acd72(106)=acd72(41)*acd72(106)
      acd72(101)=acd72(32)*acd72(101)
      acd72(107)=-acd72(30)*acd72(2)
      acd72(108)=acd72(38)*acd72(34)
      acd72(109)=-acd72(58)*acd72(10)
      acd72(110)=-acd72(61)*acd72(12)
      acd72(111)=-acd72(63)*acd72(14)
      acd72(112)=-acd72(79)*acd72(18)
      acd72(113)=-acd72(80)*acd72(20)
      acd72(114)=-acd72(82)*acd72(25)
      acd72(115)=-acd72(84)*acd72(27)
      acd72(116)=-acd72(86)*acd72(54)
      acd72(117)=-acd72(88)*acd72(49)
      acd72(118)=-acd72(89)*acd72(51)
      acd72(119)=-acd72(91)*acd72(90)
      acd72(120)=-acd72(92)*acd72(72)
      acd72(121)=-acd72(93)*acd72(74)
      acd72(122)=-acd72(94)*acd72(76)
      brack=acd72(95)+acd72(96)+acd72(97)+acd72(98)+acd72(99)+acd72(100)+acd72(&
      &101)+acd72(102)+acd72(103)+acd72(104)+acd72(105)+acd72(106)+acd72(107)+a&
      &cd72(108)+acd72(109)+acd72(110)+acd72(111)+acd72(112)+acd72(113)+acd72(1&
      &14)+acd72(115)+acd72(116)+acd72(117)+acd72(118)+acd72(119)+acd72(120)+ac&
      &d72(121)+acd72(122)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd72h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(148) :: acd72
      complex(ki) :: brack
      acd72(1)=k1(iv1)
      acd72(2)=dotproduct(k2,qshift)
      acd72(3)=abb72(29)
      acd72(4)=dotproduct(qshift,spvak1k3)
      acd72(5)=abb72(42)
      acd72(6)=dotproduct(qshift,spvak1l6)
      acd72(7)=abb72(72)
      acd72(8)=dotproduct(qshift,spvak2k3)
      acd72(9)=abb72(26)
      acd72(10)=dotproduct(qshift,spvak2l5)
      acd72(11)=abb72(61)
      acd72(12)=dotproduct(qshift,spvak2l6)
      acd72(13)=abb72(76)
      acd72(14)=dotproduct(qshift,spvak2k7)
      acd72(15)=abb72(59)
      acd72(16)=dotproduct(qshift,spvak4k3)
      acd72(17)=abb72(20)
      acd72(18)=dotproduct(qshift,spval5k2)
      acd72(19)=abb72(145)
      acd72(20)=dotproduct(qshift,spval5l6)
      acd72(21)=abb72(143)
      acd72(22)=abb72(17)
      acd72(23)=k2(iv1)
      acd72(24)=dotproduct(k1,qshift)
      acd72(25)=abb72(22)
      acd72(26)=abb72(49)
      acd72(27)=dotproduct(qshift,spvak1l5)
      acd72(28)=abb72(38)
      acd72(29)=dotproduct(qshift,spvak1k7)
      acd72(30)=abb72(58)
      acd72(31)=abb72(23)
      acd72(32)=abb72(11)
      acd72(33)=k3(iv1)
      acd72(34)=abb72(89)
      acd72(35)=k4(iv1)
      acd72(36)=qshift(iv1)
      acd72(37)=abb72(46)
      acd72(38)=abb72(60)
      acd72(39)=abb72(75)
      acd72(40)=abb72(81)
      acd72(41)=spvak1k3(iv1)
      acd72(42)=dotproduct(k3,qshift)
      acd72(43)=dotproduct(k4,qshift)
      acd72(44)=dotproduct(qshift,qshift)
      acd72(45)=abb72(39)
      acd72(46)=abb72(74)
      acd72(47)=abb72(34)
      acd72(48)=abb72(28)
      acd72(49)=abb72(64)
      acd72(50)=abb72(79)
      acd72(51)=spvak1l6(iv1)
      acd72(52)=abb72(83)
      acd72(53)=abb72(80)
      acd72(54)=dotproduct(qshift,spvak2k1)
      acd72(55)=abb72(84)
      acd72(56)=dotproduct(qshift,spval5k1)
      acd72(57)=abb72(82)
      acd72(58)=dotproduct(qshift,spval5k3)
      acd72(59)=abb72(55)
      acd72(60)=spvak2k3(iv1)
      acd72(61)=abb72(71)
      acd72(62)=dotproduct(qshift,spvak1k2)
      acd72(63)=abb72(33)
      acd72(64)=abb72(24)
      acd72(65)=spvak2l5(iv1)
      acd72(66)=abb72(18)
      acd72(67)=abb72(54)
      acd72(68)=spvak2l6(iv1)
      acd72(69)=abb72(78)
      acd72(70)=abb72(30)
      acd72(71)=abb72(70)
      acd72(72)=spvak2k7(iv1)
      acd72(73)=abb72(16)
      acd72(74)=abb72(10)
      acd72(75)=spvak4k3(iv1)
      acd72(76)=abb72(68)
      acd72(77)=abb72(144)
      acd72(78)=abb72(52)
      acd72(79)=abb72(15)
      acd72(80)=abb72(69)
      acd72(81)=abb72(13)
      acd72(82)=dotproduct(qshift,spvak1k4)
      acd72(83)=dotproduct(qshift,spvak2k4)
      acd72(84)=dotproduct(qshift,spval6k2)
      acd72(85)=abb72(31)
      acd72(86)=dotproduct(qshift,spval6l5)
      acd72(87)=abb72(53)
      acd72(88)=dotproduct(qshift,spval6k7)
      acd72(89)=abb72(51)
      acd72(90)=abb72(19)
      acd72(91)=spval5k2(iv1)
      acd72(92)=abb72(63)
      acd72(93)=spval5l6(iv1)
      acd72(94)=abb72(113)
      acd72(95)=spvak1l5(iv1)
      acd72(96)=abb72(43)
      acd72(97)=abb72(14)
      acd72(98)=spvak1k7(iv1)
      acd72(99)=abb72(37)
      acd72(100)=abb72(27)
      acd72(101)=spvak1k2(iv1)
      acd72(102)=abb72(35)
      acd72(103)=abb72(12)
      acd72(104)=spvak2k1(iv1)
      acd72(105)=abb72(25)
      acd72(106)=spvak1k4(iv1)
      acd72(107)=spval5k1(iv1)
      acd72(108)=abb72(98)
      acd72(109)=spval5k3(iv1)
      acd72(110)=abb72(99)
      acd72(111)=spvak2k4(iv1)
      acd72(112)=spvak4k2(iv1)
      acd72(113)=abb72(32)
      acd72(114)=spval6k2(iv1)
      acd72(115)=abb72(47)
      acd72(116)=spval6l5(iv1)
      acd72(117)=abb72(66)
      acd72(118)=spval6k7(iv1)
      acd72(119)=abb72(95)
      acd72(120)=acd72(14)*acd72(73)
      acd72(121)=acd72(10)*acd72(66)
      acd72(122)=acd72(20)*acd72(77)
      acd72(123)=acd72(12)*acd72(69)
      acd72(120)=-acd72(81)+acd72(120)+acd72(121)+acd72(122)-acd72(123)
      acd72(121)=-acd72(101)*acd72(120)
      acd72(122)=-acd72(72)*acd72(73)
      acd72(123)=-acd72(65)*acd72(66)
      acd72(124)=-acd72(93)*acd72(77)
      acd72(125)=acd72(68)*acd72(69)
      acd72(122)=acd72(125)+acd72(124)+acd72(122)+acd72(123)
      acd72(122)=acd72(62)*acd72(122)
      acd72(123)=acd72(29)*acd72(30)
      acd72(124)=acd72(27)*acd72(28)
      acd72(123)=-acd72(31)+acd72(123)+acd72(124)
      acd72(124)=-acd72(23)*acd72(123)
      acd72(125)=-acd72(98)*acd72(30)
      acd72(126)=-acd72(95)*acd72(28)
      acd72(125)=acd72(125)+acd72(126)
      acd72(125)=acd72(2)*acd72(125)
      acd72(126)=acd72(89)*acd72(118)
      acd72(127)=acd72(87)*acd72(116)
      acd72(128)=acd72(85)*acd72(114)
      acd72(129)=-acd72(39)*acd72(111)
      acd72(130)=acd72(37)*acd72(106)
      acd72(131)=acd72(98)*acd72(80)
      acd72(132)=acd72(95)*acd72(79)
      acd72(133)=acd72(93)*acd72(78)
      acd72(134)=acd72(91)*acd72(76)
      acd72(135)=acd72(68)*acd72(70)
      acd72(136)=acd72(60)*acd72(61)
      acd72(137)=acd72(41)*acd72(48)
      acd72(138)=acd72(1)*acd72(17)
      acd72(139)=acd72(51)*acd72(52)
      acd72(121)=acd72(139)+acd72(138)+acd72(137)+acd72(122)+acd72(136)+acd72(1&
      &25)+acd72(121)+acd72(124)+acd72(135)+acd72(134)+acd72(133)+acd72(132)+ac&
      &d72(131)+acd72(130)+acd72(129)+acd72(128)+acd72(126)+acd72(127)
      acd72(121)=acd72(16)*acd72(121)
      acd72(120)=-acd72(62)*acd72(120)
      acd72(122)=-acd72(2)*acd72(123)
      acd72(123)=acd72(89)*acd72(88)
      acd72(124)=acd72(87)*acd72(86)
      acd72(125)=acd72(85)*acd72(84)
      acd72(126)=-acd72(39)*acd72(83)
      acd72(127)=acd72(37)*acd72(82)
      acd72(128)=acd72(18)*acd72(76)
      acd72(129)=acd72(29)*acd72(80)
      acd72(130)=acd72(27)*acd72(79)
      acd72(131)=acd72(20)*acd72(78)
      acd72(132)=acd72(12)*acd72(70)
      acd72(133)=acd72(8)*acd72(61)
      acd72(134)=acd72(24)*acd72(17)
      acd72(135)=acd72(6)*acd72(52)
      acd72(136)=acd72(4)*acd72(48)
      acd72(120)=acd72(136)+acd72(135)+acd72(120)+acd72(134)+acd72(133)+acd72(1&
      &22)+acd72(132)+acd72(131)+acd72(130)+acd72(129)+acd72(128)+acd72(127)+ac&
      &d72(126)+acd72(125)+acd72(124)-acd72(90)+acd72(123)
      acd72(120)=acd72(75)*acd72(120)
      acd72(122)=acd72(18)*acd72(19)
      acd72(123)=acd72(14)*acd72(15)
      acd72(124)=acd72(10)*acd72(11)
      acd72(125)=acd72(20)*acd72(21)
      acd72(126)=acd72(12)*acd72(13)
      acd72(127)=acd72(2)*acd72(3)
      acd72(128)=-acd72(8)*acd72(9)
      acd72(129)=-acd72(6)*acd72(7)
      acd72(130)=acd72(4)*acd72(5)
      acd72(122)=acd72(130)+acd72(129)+acd72(128)+acd72(127)+acd72(126)+acd72(1&
      &25)+acd72(124)+acd72(123)-acd72(22)+acd72(122)
      acd72(122)=acd72(1)*acd72(122)
      acd72(123)=acd72(42)+acd72(43)
      acd72(124)=acd72(123)-acd72(24)
      acd72(125)=-acd72(5)*acd72(124)
      acd72(126)=acd72(37)*acd72(44)
      acd72(127)=acd72(18)*acd72(49)
      acd72(128)=acd72(14)*acd72(47)
      acd72(129)=-acd72(10)*acd72(45)
      acd72(130)=-acd72(20)*acd72(50)
      acd72(131)=acd72(12)*acd72(46)
      acd72(132)=acd72(2)*acd72(25)
      acd72(125)=acd72(132)+acd72(131)+acd72(130)+acd72(129)+acd72(128)+acd72(1&
      &26)+acd72(127)+acd72(125)
      acd72(125)=acd72(41)*acd72(125)
      acd72(126)=acd72(57)*acd72(107)
      acd72(127)=acd72(50)*acd72(109)
      acd72(128)=2.0_ki*acd72(36)
      acd72(129)=-acd72(38)*acd72(128)
      acd72(130)=acd72(104)*acd72(55)
      acd72(131)=acd72(91)*acd72(53)
      acd72(132)=acd72(33)+acd72(35)
      acd72(133)=acd72(7)*acd72(132)
      acd72(134)=acd72(23)*acd72(26)
      acd72(135)=-acd72(60)*acd72(46)
      acd72(126)=acd72(135)+acd72(134)+acd72(133)+acd72(131)+acd72(130)+acd72(1&
      &29)+acd72(126)+acd72(127)
      acd72(126)=acd72(6)*acd72(126)
      acd72(127)=acd72(47)*acd72(72)
      acd72(129)=-acd72(45)*acd72(65)
      acd72(130)=acd72(37)*acd72(128)
      acd72(131)=-acd72(93)*acd72(50)
      acd72(133)=acd72(91)*acd72(49)
      acd72(134)=acd72(68)*acd72(46)
      acd72(135)=-acd72(5)*acd72(132)
      acd72(136)=acd72(23)*acd72(25)
      acd72(127)=acd72(136)+acd72(135)+acd72(134)+acd72(133)+acd72(131)+acd72(1&
      &30)+acd72(127)+acd72(129)
      acd72(127)=acd72(4)*acd72(127)
      acd72(124)=acd72(7)*acd72(124)
      acd72(129)=acd72(57)*acd72(56)
      acd72(130)=-acd72(44)*acd72(38)
      acd72(131)=acd72(54)*acd72(55)
      acd72(133)=acd72(50)*acd72(58)
      acd72(134)=acd72(18)*acd72(53)
      acd72(135)=acd72(2)*acd72(26)
      acd72(136)=-acd72(8)*acd72(46)
      acd72(124)=acd72(136)+acd72(135)+acd72(134)+acd72(133)+acd72(131)+acd72(1&
      &30)-acd72(59)+acd72(129)+acd72(124)
      acd72(124)=acd72(51)*acd72(124)
      acd72(129)=acd72(72)*acd72(15)
      acd72(130)=acd72(65)*acd72(11)
      acd72(131)=acd72(93)*acd72(21)
      acd72(133)=acd72(91)*acd72(19)
      acd72(134)=acd72(68)*acd72(13)
      acd72(135)=acd72(23)*acd72(3)
      acd72(136)=-acd72(60)*acd72(9)
      acd72(129)=acd72(136)+acd72(135)+acd72(134)+acd72(133)+acd72(131)+acd72(1&
      &29)+acd72(130)
      acd72(129)=acd72(24)*acd72(129)
      acd72(130)=-acd72(39)*acd72(128)
      acd72(131)=-acd72(98)*acd72(47)
      acd72(133)=acd72(95)*acd72(45)
      acd72(134)=acd72(9)*acd72(132)
      acd72(135)=acd72(101)*acd72(63)
      acd72(130)=acd72(135)+acd72(134)+acd72(133)+acd72(130)+acd72(131)
      acd72(130)=acd72(8)*acd72(130)
      acd72(131)=-acd72(39)*acd72(44)
      acd72(133)=-acd72(29)*acd72(47)
      acd72(134)=acd72(27)*acd72(45)
      acd72(123)=acd72(9)*acd72(123)
      acd72(123)=acd72(123)+acd72(134)+acd72(133)-acd72(64)+acd72(131)
      acd72(123)=acd72(60)*acd72(123)
      acd72(131)=acd72(29)*acd72(99)
      acd72(133)=acd72(27)*acd72(96)
      acd72(131)=acd72(133)+acd72(131)-acd72(105)
      acd72(131)=acd72(104)*acd72(131)
      acd72(133)=acd72(104)*acd72(102)
      acd72(134)=acd72(60)*acd72(63)
      acd72(133)=acd72(133)+acd72(134)
      acd72(133)=acd72(62)*acd72(133)
      acd72(132)=acd72(34)*acd72(132)
      acd72(134)=-acd72(112)*acd72(113)
      acd72(135)=-acd72(118)*acd72(119)
      acd72(136)=-acd72(116)*acd72(117)
      acd72(137)=-acd72(114)*acd72(115)
      acd72(138)=-acd72(109)*acd72(110)
      acd72(139)=-acd72(107)*acd72(108)
      acd72(140)=-acd72(72)*acd72(74)
      acd72(141)=-acd72(65)*acd72(67)
      acd72(128)=acd72(40)*acd72(128)
      acd72(142)=acd72(54)*acd72(99)
      acd72(142)=-acd72(100)+acd72(142)
      acd72(142)=acd72(98)*acd72(142)
      acd72(143)=acd72(54)*acd72(96)
      acd72(143)=-acd72(97)+acd72(143)
      acd72(143)=acd72(95)*acd72(143)
      acd72(144)=-acd72(93)*acd72(94)
      acd72(145)=-acd72(91)*acd72(92)
      acd72(146)=-acd72(68)*acd72(71)
      acd72(147)=-acd72(23)*acd72(32)
      acd72(148)=acd72(54)*acd72(102)
      acd72(148)=-acd72(103)+acd72(148)
      acd72(148)=acd72(101)*acd72(148)
      brack=acd72(120)+acd72(121)+acd72(122)+acd72(123)+acd72(124)+acd72(125)+a&
      &cd72(126)+acd72(127)+acd72(128)+acd72(129)+acd72(130)+acd72(131)+acd72(1&
      &32)+acd72(133)+acd72(134)+acd72(135)+acd72(136)+acd72(137)+acd72(138)+ac&
      &d72(139)+acd72(140)+acd72(141)+acd72(142)+acd72(143)+acd72(144)+acd72(14&
      &5)+acd72(146)+acd72(147)+acd72(148)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd72h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(133) :: acd72
      complex(ki) :: brack
      acd72(1)=d(iv1,iv2)
      acd72(2)=dotproduct(qshift,spvak1k3)
      acd72(3)=abb72(46)
      acd72(4)=dotproduct(qshift,spvak1l6)
      acd72(5)=abb72(60)
      acd72(6)=dotproduct(qshift,spvak2k3)
      acd72(7)=abb72(75)
      acd72(8)=abb72(81)
      acd72(9)=k1(iv1)
      acd72(10)=k2(iv2)
      acd72(11)=abb72(29)
      acd72(12)=spvak1k3(iv2)
      acd72(13)=abb72(42)
      acd72(14)=spvak1l6(iv2)
      acd72(15)=abb72(72)
      acd72(16)=spvak2k3(iv2)
      acd72(17)=abb72(26)
      acd72(18)=spvak2l5(iv2)
      acd72(19)=abb72(61)
      acd72(20)=spvak2l6(iv2)
      acd72(21)=abb72(76)
      acd72(22)=spvak2k7(iv2)
      acd72(23)=abb72(59)
      acd72(24)=spvak4k3(iv2)
      acd72(25)=abb72(20)
      acd72(26)=spval5k2(iv2)
      acd72(27)=abb72(145)
      acd72(28)=spval5l6(iv2)
      acd72(29)=abb72(143)
      acd72(30)=k1(iv2)
      acd72(31)=k2(iv1)
      acd72(32)=spvak1k3(iv1)
      acd72(33)=spvak1l6(iv1)
      acd72(34)=spvak2k3(iv1)
      acd72(35)=spvak2l5(iv1)
      acd72(36)=spvak2l6(iv1)
      acd72(37)=spvak2k7(iv1)
      acd72(38)=spvak4k3(iv1)
      acd72(39)=spval5k2(iv1)
      acd72(40)=spval5l6(iv1)
      acd72(41)=abb72(22)
      acd72(42)=abb72(49)
      acd72(43)=dotproduct(qshift,spvak1l5)
      acd72(44)=abb72(38)
      acd72(45)=dotproduct(qshift,spvak1k7)
      acd72(46)=abb72(58)
      acd72(47)=abb72(23)
      acd72(48)=spvak1l5(iv2)
      acd72(49)=dotproduct(qshift,spvak4k3)
      acd72(50)=spvak1k7(iv2)
      acd72(51)=spvak1l5(iv1)
      acd72(52)=spvak1k7(iv1)
      acd72(53)=k3(iv1)
      acd72(54)=k3(iv2)
      acd72(55)=k4(iv1)
      acd72(56)=k4(iv2)
      acd72(57)=qshift(iv1)
      acd72(58)=qshift(iv2)
      acd72(59)=abb72(39)
      acd72(60)=abb72(74)
      acd72(61)=abb72(34)
      acd72(62)=abb72(28)
      acd72(63)=abb72(64)
      acd72(64)=abb72(79)
      acd72(65)=abb72(83)
      acd72(66)=abb72(80)
      acd72(67)=spvak2k1(iv2)
      acd72(68)=abb72(84)
      acd72(69)=spval5k1(iv2)
      acd72(70)=abb72(82)
      acd72(71)=spval5k3(iv2)
      acd72(72)=spvak2k1(iv1)
      acd72(73)=spval5k1(iv1)
      acd72(74)=spval5k3(iv1)
      acd72(75)=abb72(71)
      acd72(76)=spvak1k2(iv2)
      acd72(77)=abb72(33)
      acd72(78)=spvak1k2(iv1)
      acd72(79)=dotproduct(qshift,spvak1k2)
      acd72(80)=abb72(18)
      acd72(81)=abb72(78)
      acd72(82)=abb72(30)
      acd72(83)=abb72(16)
      acd72(84)=abb72(68)
      acd72(85)=abb72(144)
      acd72(86)=abb72(52)
      acd72(87)=dotproduct(k2,qshift)
      acd72(88)=abb72(15)
      acd72(89)=abb72(69)
      acd72(90)=dotproduct(qshift,spvak2l5)
      acd72(91)=dotproduct(qshift,spvak2l6)
      acd72(92)=dotproduct(qshift,spvak2k7)
      acd72(93)=dotproduct(qshift,spval5l6)
      acd72(94)=abb72(13)
      acd72(95)=spvak1k4(iv2)
      acd72(96)=spvak2k4(iv2)
      acd72(97)=spval6k2(iv2)
      acd72(98)=abb72(31)
      acd72(99)=spval6l5(iv2)
      acd72(100)=abb72(53)
      acd72(101)=spval6k7(iv2)
      acd72(102)=abb72(51)
      acd72(103)=spvak1k4(iv1)
      acd72(104)=spvak2k4(iv1)
      acd72(105)=spval6k2(iv1)
      acd72(106)=spval6l5(iv1)
      acd72(107)=spval6k7(iv1)
      acd72(108)=abb72(43)
      acd72(109)=abb72(37)
      acd72(110)=abb72(35)
      acd72(111)=acd72(85)*acd72(28)
      acd72(112)=acd72(83)*acd72(22)
      acd72(113)=acd72(81)*acd72(20)
      acd72(114)=acd72(80)*acd72(18)
      acd72(111)=-acd72(111)-acd72(112)+acd72(113)-acd72(114)
      acd72(112)=acd72(79)*acd72(111)
      acd72(113)=acd72(85)*acd72(93)
      acd72(114)=acd72(83)*acd72(92)
      acd72(115)=acd72(81)*acd72(91)
      acd72(116)=acd72(80)*acd72(90)
      acd72(113)=acd72(94)-acd72(113)-acd72(114)+acd72(115)-acd72(116)
      acd72(114)=acd72(76)*acd72(113)
      acd72(115)=acd72(46)*acd72(45)
      acd72(116)=acd72(44)*acd72(43)
      acd72(115)=-acd72(47)+acd72(115)+acd72(116)
      acd72(116)=-acd72(10)*acd72(115)
      acd72(117)=acd72(46)*acd72(87)
      acd72(117)=acd72(117)-acd72(89)
      acd72(118)=-acd72(50)*acd72(117)
      acd72(119)=acd72(102)*acd72(101)
      acd72(120)=acd72(100)*acd72(99)
      acd72(121)=acd72(98)*acd72(97)
      acd72(122)=acd72(26)*acd72(84)
      acd72(123)=acd72(48)*acd72(88)
      acd72(124)=acd72(28)*acd72(86)
      acd72(125)=acd72(20)*acd72(82)
      acd72(126)=-acd72(7)*acd72(96)
      acd72(127)=acd72(3)*acd72(95)
      acd72(128)=acd72(44)*acd72(48)
      acd72(129)=-acd72(87)*acd72(128)
      acd72(130)=acd72(16)*acd72(75)
      acd72(131)=acd72(30)*acd72(25)
      acd72(132)=acd72(14)*acd72(65)
      acd72(133)=acd72(12)*acd72(62)
      acd72(112)=acd72(133)+acd72(132)+acd72(114)+acd72(131)+acd72(130)+acd72(1&
      &16)+acd72(112)+acd72(129)+acd72(127)+acd72(126)+acd72(125)+acd72(124)+ac&
      &d72(123)+acd72(122)+acd72(121)+acd72(119)+acd72(120)+acd72(118)
      acd72(112)=acd72(38)*acd72(112)
      acd72(114)=acd72(85)*acd72(40)
      acd72(116)=acd72(83)*acd72(37)
      acd72(118)=acd72(81)*acd72(36)
      acd72(119)=acd72(80)*acd72(35)
      acd72(114)=-acd72(114)-acd72(116)+acd72(118)-acd72(119)
      acd72(116)=acd72(79)*acd72(114)
      acd72(113)=acd72(78)*acd72(113)
      acd72(115)=-acd72(31)*acd72(115)
      acd72(117)=-acd72(52)*acd72(117)
      acd72(118)=acd72(102)*acd72(107)
      acd72(119)=acd72(100)*acd72(106)
      acd72(120)=acd72(98)*acd72(105)
      acd72(121)=acd72(39)*acd72(84)
      acd72(122)=acd72(51)*acd72(88)
      acd72(123)=acd72(40)*acd72(86)
      acd72(124)=acd72(36)*acd72(82)
      acd72(125)=-acd72(7)*acd72(104)
      acd72(126)=acd72(3)*acd72(103)
      acd72(127)=acd72(44)*acd72(51)
      acd72(129)=-acd72(87)*acd72(127)
      acd72(130)=acd72(34)*acd72(75)
      acd72(131)=acd72(9)*acd72(25)
      acd72(132)=acd72(33)*acd72(65)
      acd72(133)=acd72(32)*acd72(62)
      acd72(113)=acd72(133)+acd72(132)+acd72(113)+acd72(131)+acd72(130)+acd72(1&
      &15)+acd72(116)+acd72(129)+acd72(126)+acd72(125)+acd72(124)+acd72(123)+ac&
      &d72(122)+acd72(121)+acd72(120)+acd72(118)+acd72(119)+acd72(117)
      acd72(113)=acd72(24)*acd72(113)
      acd72(115)=acd72(54)+acd72(56)
      acd72(116)=acd72(115)-acd72(30)
      acd72(117)=acd72(15)*acd72(116)
      acd72(118)=acd72(70)*acd72(69)
      acd72(119)=2.0_ki*acd72(58)
      acd72(119)=-acd72(5)*acd72(119)
      acd72(120)=acd72(67)*acd72(68)
      acd72(121)=acd72(64)*acd72(71)
      acd72(122)=acd72(26)*acd72(66)
      acd72(123)=acd72(10)*acd72(42)
      acd72(124)=-acd72(16)*acd72(60)
      acd72(117)=acd72(124)+acd72(123)+acd72(122)+acd72(121)+acd72(120)+acd72(1&
      &18)+acd72(119)+acd72(117)
      acd72(117)=acd72(33)*acd72(117)
      acd72(116)=-acd72(13)*acd72(116)
      acd72(118)=acd72(26)*acd72(63)
      acd72(119)=acd72(22)*acd72(61)
      acd72(120)=-acd72(18)*acd72(59)
      acd72(121)=-acd72(28)*acd72(64)
      acd72(122)=acd72(20)*acd72(60)
      acd72(123)=2.0_ki*acd72(3)
      acd72(124)=acd72(58)*acd72(123)
      acd72(125)=acd72(10)*acd72(41)
      acd72(116)=acd72(125)+acd72(124)+acd72(122)+acd72(121)+acd72(120)+acd72(1&
      &18)+acd72(119)+acd72(116)
      acd72(116)=acd72(32)*acd72(116)
      acd72(118)=acd72(53)+acd72(55)
      acd72(119)=acd72(118)-acd72(9)
      acd72(120)=acd72(15)*acd72(119)
      acd72(121)=acd72(70)*acd72(73)
      acd72(122)=2.0_ki*acd72(57)
      acd72(122)=-acd72(5)*acd72(122)
      acd72(124)=acd72(72)*acd72(68)
      acd72(125)=acd72(64)*acd72(74)
      acd72(126)=acd72(39)*acd72(66)
      acd72(129)=acd72(31)*acd72(42)
      acd72(130)=-acd72(34)*acd72(60)
      acd72(120)=acd72(130)+acd72(129)+acd72(126)+acd72(125)+acd72(124)+acd72(1&
      &21)+acd72(122)+acd72(120)
      acd72(120)=acd72(14)*acd72(120)
      acd72(119)=-acd72(13)*acd72(119)
      acd72(121)=acd72(39)*acd72(63)
      acd72(122)=acd72(37)*acd72(61)
      acd72(124)=-acd72(35)*acd72(59)
      acd72(125)=-acd72(40)*acd72(64)
      acd72(126)=acd72(36)*acd72(60)
      acd72(129)=acd72(57)*acd72(123)
      acd72(130)=acd72(31)*acd72(41)
      acd72(119)=acd72(130)+acd72(129)+acd72(126)+acd72(125)+acd72(124)+acd72(1&
      &21)+acd72(122)+acd72(119)
      acd72(119)=acd72(12)*acd72(119)
      acd72(121)=acd72(39)*acd72(27)
      acd72(122)=acd72(37)*acd72(23)
      acd72(124)=acd72(35)*acd72(19)
      acd72(125)=acd72(40)*acd72(29)
      acd72(126)=acd72(36)*acd72(21)
      acd72(129)=acd72(31)*acd72(11)
      acd72(130)=-acd72(34)*acd72(17)
      acd72(121)=acd72(130)+acd72(129)+acd72(126)+acd72(125)+acd72(124)+acd72(1&
      &21)+acd72(122)
      acd72(121)=acd72(30)*acd72(121)
      acd72(122)=acd72(26)*acd72(27)
      acd72(124)=acd72(22)*acd72(23)
      acd72(125)=acd72(18)*acd72(19)
      acd72(126)=acd72(28)*acd72(29)
      acd72(129)=acd72(20)*acd72(21)
      acd72(130)=acd72(10)*acd72(11)
      acd72(131)=-acd72(16)*acd72(17)
      acd72(122)=acd72(131)+acd72(130)+acd72(129)+acd72(126)+acd72(125)+acd72(1&
      &22)+acd72(124)
      acd72(122)=acd72(9)*acd72(122)
      acd72(111)=acd72(78)*acd72(111)
      acd72(114)=acd72(76)*acd72(114)
      acd72(124)=-acd72(46)*acd72(50)
      acd72(124)=acd72(124)-acd72(128)
      acd72(124)=acd72(31)*acd72(124)
      acd72(125)=-acd72(46)*acd72(52)
      acd72(125)=acd72(125)-acd72(127)
      acd72(125)=acd72(10)*acd72(125)
      acd72(111)=acd72(114)+acd72(111)+acd72(124)+acd72(125)
      acd72(111)=acd72(49)*acd72(111)
      acd72(114)=-acd72(50)*acd72(61)
      acd72(124)=acd72(48)*acd72(59)
      acd72(125)=2.0_ki*acd72(7)
      acd72(126)=-acd72(58)*acd72(125)
      acd72(115)=acd72(17)*acd72(115)
      acd72(114)=acd72(115)+acd72(126)+acd72(114)+acd72(124)
      acd72(114)=acd72(34)*acd72(114)
      acd72(115)=-acd72(52)*acd72(61)
      acd72(124)=acd72(51)*acd72(59)
      acd72(126)=-acd72(57)*acd72(125)
      acd72(118)=acd72(17)*acd72(118)
      acd72(115)=acd72(118)+acd72(126)+acd72(115)+acd72(124)
      acd72(115)=acd72(16)*acd72(115)
      acd72(118)=acd72(50)*acd72(109)
      acd72(124)=acd72(48)*acd72(108)
      acd72(118)=acd72(124)+acd72(118)
      acd72(118)=acd72(72)*acd72(118)
      acd72(124)=acd72(52)*acd72(109)
      acd72(126)=acd72(51)*acd72(108)
      acd72(124)=acd72(126)+acd72(124)
      acd72(124)=acd72(67)*acd72(124)
      acd72(125)=-acd72(6)*acd72(125)
      acd72(123)=acd72(2)*acd72(123)
      acd72(123)=acd72(123)+acd72(125)
      acd72(123)=acd72(1)*acd72(123)
      acd72(125)=2.0_ki*acd72(1)
      acd72(126)=-acd72(5)*acd72(4)
      acd72(126)=acd72(8)+acd72(126)
      acd72(125)=acd72(126)*acd72(125)
      acd72(126)=acd72(67)*acd72(110)
      acd72(127)=acd72(16)*acd72(77)
      acd72(126)=acd72(126)+acd72(127)
      acd72(126)=acd72(78)*acd72(126)
      acd72(127)=acd72(72)*acd72(110)
      acd72(128)=acd72(34)*acd72(77)
      acd72(127)=acd72(127)+acd72(128)
      acd72(127)=acd72(76)*acd72(127)
      brack=acd72(111)+acd72(112)+acd72(113)+acd72(114)+acd72(115)+acd72(116)+a&
      &cd72(117)+acd72(118)+acd72(119)+acd72(120)+acd72(121)+acd72(122)+acd72(1&
      &23)+acd72(124)+acd72(125)+acd72(126)+acd72(127)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd72h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd72
      complex(ki) :: brack
      acd72(1)=d(iv1,iv2)
      acd72(2)=spvak1k3(iv3)
      acd72(3)=abb72(46)
      acd72(4)=spvak1l6(iv3)
      acd72(5)=abb72(60)
      acd72(6)=spvak2k3(iv3)
      acd72(7)=abb72(75)
      acd72(8)=d(iv1,iv3)
      acd72(9)=spvak1k3(iv2)
      acd72(10)=spvak1l6(iv2)
      acd72(11)=spvak2k3(iv2)
      acd72(12)=d(iv2,iv3)
      acd72(13)=spvak1k3(iv1)
      acd72(14)=spvak1l6(iv1)
      acd72(15)=spvak2k3(iv1)
      acd72(16)=k2(iv1)
      acd72(17)=spvak1l5(iv2)
      acd72(18)=spvak4k3(iv3)
      acd72(19)=abb72(38)
      acd72(20)=spvak1l5(iv3)
      acd72(21)=spvak4k3(iv2)
      acd72(22)=spvak1k7(iv3)
      acd72(23)=abb72(58)
      acd72(24)=spvak1k7(iv2)
      acd72(25)=k2(iv2)
      acd72(26)=spvak1l5(iv1)
      acd72(27)=spvak4k3(iv1)
      acd72(28)=spvak1k7(iv1)
      acd72(29)=k2(iv3)
      acd72(30)=spvak1k2(iv2)
      acd72(31)=spvak2l5(iv3)
      acd72(32)=abb72(18)
      acd72(33)=spvak2l6(iv3)
      acd72(34)=abb72(78)
      acd72(35)=spvak2k7(iv3)
      acd72(36)=abb72(16)
      acd72(37)=spval5l6(iv3)
      acd72(38)=abb72(144)
      acd72(39)=spvak1k2(iv3)
      acd72(40)=spvak2l5(iv2)
      acd72(41)=spvak2l6(iv2)
      acd72(42)=spvak2k7(iv2)
      acd72(43)=spval5l6(iv2)
      acd72(44)=spvak1k2(iv1)
      acd72(45)=spvak2l5(iv1)
      acd72(46)=spvak2l6(iv1)
      acd72(47)=spvak2k7(iv1)
      acd72(48)=spval5l6(iv1)
      acd72(49)=-acd72(7)*acd72(6)
      acd72(50)=-acd72(5)*acd72(4)
      acd72(51)=acd72(3)*acd72(2)
      acd72(49)=acd72(51)+acd72(49)+acd72(50)
      acd72(49)=acd72(1)*acd72(49)
      acd72(50)=-acd72(12)*acd72(15)
      acd72(51)=-acd72(8)*acd72(11)
      acd72(50)=acd72(50)+acd72(51)
      acd72(50)=acd72(7)*acd72(50)
      acd72(51)=-acd72(12)*acd72(14)
      acd72(52)=-acd72(8)*acd72(10)
      acd72(51)=acd72(51)+acd72(52)
      acd72(51)=acd72(5)*acd72(51)
      acd72(52)=acd72(12)*acd72(13)
      acd72(53)=acd72(8)*acd72(9)
      acd72(52)=acd72(52)+acd72(53)
      acd72(52)=acd72(3)*acd72(52)
      acd72(49)=acd72(49)+acd72(52)+acd72(50)+acd72(51)
      acd72(50)=acd72(38)*acd72(43)
      acd72(51)=acd72(36)*acd72(42)
      acd72(52)=acd72(34)*acd72(41)
      acd72(53)=acd72(32)*acd72(40)
      acd72(50)=-acd72(50)-acd72(51)+acd72(52)-acd72(53)
      acd72(51)=acd72(39)*acd72(50)
      acd72(52)=acd72(38)*acd72(37)
      acd72(53)=acd72(36)*acd72(35)
      acd72(54)=acd72(34)*acd72(33)
      acd72(55)=acd72(32)*acd72(31)
      acd72(52)=-acd72(52)-acd72(53)+acd72(54)-acd72(55)
      acd72(53)=acd72(30)*acd72(52)
      acd72(54)=-acd72(29)*acd72(24)
      acd72(55)=-acd72(25)*acd72(22)
      acd72(54)=acd72(54)+acd72(55)
      acd72(54)=acd72(23)*acd72(54)
      acd72(55)=-acd72(29)*acd72(17)
      acd72(56)=-acd72(25)*acd72(20)
      acd72(55)=acd72(55)+acd72(56)
      acd72(55)=acd72(19)*acd72(55)
      acd72(51)=acd72(53)+acd72(51)+acd72(54)+acd72(55)
      acd72(51)=acd72(27)*acd72(51)
      acd72(52)=acd72(44)*acd72(52)
      acd72(53)=acd72(38)*acd72(48)
      acd72(54)=acd72(36)*acd72(47)
      acd72(55)=acd72(34)*acd72(46)
      acd72(56)=acd72(32)*acd72(45)
      acd72(53)=-acd72(53)-acd72(54)+acd72(55)-acd72(56)
      acd72(54)=acd72(39)*acd72(53)
      acd72(55)=-acd72(29)*acd72(28)
      acd72(56)=-acd72(16)*acd72(22)
      acd72(55)=acd72(55)+acd72(56)
      acd72(55)=acd72(23)*acd72(55)
      acd72(56)=-acd72(29)*acd72(26)
      acd72(57)=-acd72(16)*acd72(20)
      acd72(56)=acd72(56)+acd72(57)
      acd72(56)=acd72(19)*acd72(56)
      acd72(52)=acd72(54)+acd72(52)+acd72(55)+acd72(56)
      acd72(52)=acd72(21)*acd72(52)
      acd72(50)=acd72(44)*acd72(50)
      acd72(53)=acd72(30)*acd72(53)
      acd72(54)=-acd72(25)*acd72(28)
      acd72(55)=-acd72(16)*acd72(24)
      acd72(54)=acd72(54)+acd72(55)
      acd72(54)=acd72(23)*acd72(54)
      acd72(55)=-acd72(25)*acd72(26)
      acd72(56)=-acd72(16)*acd72(17)
      acd72(55)=acd72(55)+acd72(56)
      acd72(55)=acd72(19)*acd72(55)
      acd72(50)=acd72(53)+acd72(50)+acd72(54)+acd72(55)
      acd72(50)=acd72(18)*acd72(50)
      brack=2.0_ki*acd72(49)+acd72(50)+acd72(51)+acd72(52)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd72h2
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
      qshift = -k7-k6-k5
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
!---#[ subroutine reconstruct_d72:
   subroutine     reconstruct_d72(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_72:
      coeffs%coeffs_72%c0 = derivative(czip)
      coeffs%coeffs_72%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_72%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_72%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_72%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_72%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_72%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_72%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_72%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_72%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_72%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_72%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_72%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_72%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_72%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_72%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_72%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_72%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_72%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_72%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_72%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_72%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_72%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_72%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_72%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_72%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_72%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_72%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_72%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_72%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_72%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_72%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_72%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_72%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_72%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_72:
   end subroutine reconstruct_d72
!---#] subroutine reconstruct_d72:
end module     p0_dbaru_epnebbbarg_d72h2l1d
