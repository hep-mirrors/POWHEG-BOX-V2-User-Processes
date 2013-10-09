module     p9_csbar_epnebbbarg_d101h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d101h2l1d.f90
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
   public :: derivative , reconstruct_d101
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd101h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(108) :: acd101
      complex(ki) :: brack
      acd101(1)=dotproduct(k1,qshift)
      acd101(2)=abb101(36)
      acd101(3)=dotproduct(k2,qshift)
      acd101(4)=dotproduct(qshift,spvae7k1)
      acd101(5)=abb101(73)
      acd101(6)=dotproduct(qshift,spvak4e7)
      acd101(7)=abb101(53)
      acd101(8)=abb101(19)
      acd101(9)=dotproduct(l6,qshift)
      acd101(10)=abb101(63)
      acd101(11)=abb101(40)
      acd101(12)=dotproduct(qshift,spvak2e7)
      acd101(13)=abb101(12)
      acd101(14)=abb101(20)
      acd101(15)=dotproduct(k7,qshift)
      acd101(16)=abb101(44)
      acd101(17)=dotproduct(e7,qshift)
      acd101(18)=dotproduct(qshift,spvak2k1)
      acd101(19)=abb101(24)
      acd101(20)=dotproduct(qshift,spvak2l6)
      acd101(21)=abb101(18)
      acd101(22)=dotproduct(qshift,spvak2k7)
      acd101(23)=abb101(48)
      acd101(24)=dotproduct(qshift,spvak4k1)
      acd101(25)=abb101(69)
      acd101(26)=dotproduct(qshift,spvak4l6)
      acd101(27)=abb101(31)
      acd101(28)=dotproduct(qshift,spvak4k7)
      acd101(29)=abb101(54)
      acd101(30)=dotproduct(qshift,spvak7k1)
      acd101(31)=abb101(26)
      acd101(32)=abb101(43)
      acd101(33)=dotproduct(qshift,qshift)
      acd101(34)=abb101(21)
      acd101(35)=abb101(45)
      acd101(36)=abb101(56)
      acd101(37)=dotproduct(qshift,spvae7l6)
      acd101(38)=abb101(38)
      acd101(39)=abb101(34)
      acd101(40)=abb101(47)
      acd101(41)=abb101(50)
      acd101(42)=abb101(28)
      acd101(43)=abb101(66)
      acd101(44)=abb101(30)
      acd101(45)=abb101(58)
      acd101(46)=abb101(55)
      acd101(47)=dotproduct(qshift,spvak4k2)
      acd101(48)=abb101(15)
      acd101(49)=abb101(10)
      acd101(50)=abb101(23)
      acd101(51)=abb101(32)
      acd101(52)=abb101(46)
      acd101(53)=abb101(49)
      acd101(54)=abb101(37)
      acd101(55)=abb101(17)
      acd101(56)=abb101(64)
      acd101(57)=abb101(39)
      acd101(58)=abb101(13)
      acd101(59)=abb101(25)
      acd101(60)=dotproduct(qshift,spval6k1)
      acd101(61)=abb101(16)
      acd101(62)=abb101(33)
      acd101(63)=abb101(14)
      acd101(64)=abb101(27)
      acd101(65)=dotproduct(qshift,spval6k2)
      acd101(66)=abb101(42)
      acd101(67)=dotproduct(qshift,spval6k7)
      acd101(68)=abb101(52)
      acd101(69)=dotproduct(qshift,spvak7k2)
      acd101(70)=abb101(22)
      acd101(71)=dotproduct(qshift,spvak7l6)
      acd101(72)=abb101(74)
      acd101(73)=dotproduct(qshift,spvae7k2)
      acd101(74)=abb101(11)
      acd101(75)=dotproduct(qshift,spval6e7)
      acd101(76)=abb101(29)
      acd101(77)=dotproduct(qshift,spvak7e7)
      acd101(78)=abb101(35)
      acd101(79)=dotproduct(qshift,spvae7k7)
      acd101(80)=abb101(41)
      acd101(81)=abb101(9)
      acd101(82)=acd101(9)+acd101(15)
      acd101(83)=acd101(13)*acd101(82)
      acd101(84)=acd101(47)*acd101(48)
      acd101(85)=acd101(28)*acd101(45)
      acd101(86)=acd101(26)*acd101(44)
      acd101(87)=acd101(22)*acd101(42)
      acd101(88)=acd101(20)*acd101(41)
      acd101(89)=acd101(24)*acd101(43)
      acd101(90)=acd101(18)*acd101(40)
      acd101(91)=acd101(4)*acd101(35)
      acd101(92)=acd101(37)*acd101(46)
      acd101(83)=acd101(92)+acd101(91)+acd101(90)+acd101(89)+acd101(88)+acd101(&
      &87)+acd101(86)+acd101(85)-acd101(49)+acd101(84)+acd101(83)
      acd101(83)=acd101(12)*acd101(83)
      acd101(84)=acd101(30)*acd101(31)
      acd101(85)=acd101(28)*acd101(29)
      acd101(86)=acd101(26)*acd101(27)
      acd101(87)=acd101(22)*acd101(23)
      acd101(88)=acd101(20)*acd101(21)
      acd101(89)=acd101(24)*acd101(25)
      acd101(90)=acd101(18)*acd101(19)
      acd101(84)=acd101(90)+acd101(89)+acd101(88)+acd101(87)+acd101(86)+acd101(&
      &85)-acd101(32)+acd101(84)
      acd101(84)=acd101(17)*acd101(84)
      acd101(85)=acd101(60)*acd101(61)
      acd101(86)=acd101(30)*acd101(58)
      acd101(87)=acd101(24)*acd101(54)
      acd101(88)=acd101(18)*acd101(50)
      acd101(89)=acd101(6)*acd101(38)
      acd101(85)=acd101(89)+acd101(88)+acd101(87)+acd101(86)-acd101(62)+acd101(&
      &85)
      acd101(85)=acd101(37)*acd101(85)
      acd101(86)=-acd101(11)*acd101(82)
      acd101(87)=acd101(3)*acd101(7)
      acd101(86)=-acd101(39)+acd101(87)+acd101(86)
      acd101(86)=acd101(6)*acd101(86)
      acd101(82)=acd101(10)*acd101(82)
      acd101(87)=acd101(3)*acd101(5)
      acd101(82)=-acd101(36)+acd101(87)+acd101(82)
      acd101(82)=acd101(4)*acd101(82)
      acd101(87)=-acd101(79)*acd101(80)
      acd101(88)=-acd101(77)*acd101(78)
      acd101(89)=-acd101(75)*acd101(76)
      acd101(90)=-acd101(73)*acd101(74)
      acd101(91)=-acd101(71)*acd101(72)
      acd101(92)=-acd101(69)*acd101(70)
      acd101(93)=-acd101(67)*acd101(68)
      acd101(94)=-acd101(65)*acd101(66)
      acd101(95)=acd101(33)*acd101(34)
      acd101(96)=-acd101(1)*acd101(2)
      acd101(97)=-acd101(60)*acd101(64)
      acd101(98)=-acd101(47)*acd101(63)
      acd101(99)=-acd101(30)*acd101(59)
      acd101(100)=-acd101(28)*acd101(57)
      acd101(101)=-acd101(26)*acd101(56)
      acd101(102)=-acd101(22)*acd101(53)
      acd101(103)=-acd101(20)*acd101(52)
      acd101(104)=-acd101(3)*acd101(8)
      acd101(105)=-acd101(24)*acd101(55)
      acd101(106)=-acd101(18)*acd101(51)
      acd101(107)=-acd101(15)*acd101(16)
      acd101(108)=-acd101(9)*acd101(14)
      brack=acd101(81)+acd101(82)+acd101(83)+acd101(84)+acd101(85)+acd101(86)+a&
      &cd101(87)+acd101(88)+acd101(89)+acd101(90)+acd101(91)+acd101(92)+acd101(&
      &93)+acd101(94)+acd101(95)+acd101(96)+acd101(97)+acd101(98)+acd101(99)+ac&
      &d101(100)+acd101(101)+acd101(102)+acd101(103)+acd101(104)+acd101(105)+ac&
      &d101(106)+acd101(107)+acd101(108)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd101h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(129) :: acd101
      complex(ki) :: brack
      acd101(1)=k1(iv1)
      acd101(2)=abb101(36)
      acd101(3)=k2(iv1)
      acd101(4)=dotproduct(qshift,spvae7k1)
      acd101(5)=abb101(73)
      acd101(6)=dotproduct(qshift,spvak4e7)
      acd101(7)=abb101(53)
      acd101(8)=abb101(19)
      acd101(9)=l6(iv1)
      acd101(10)=abb101(63)
      acd101(11)=abb101(40)
      acd101(12)=dotproduct(qshift,spvak2e7)
      acd101(13)=abb101(12)
      acd101(14)=abb101(20)
      acd101(15)=k7(iv1)
      acd101(16)=abb101(44)
      acd101(17)=e7(iv1)
      acd101(18)=dotproduct(qshift,spvak2k1)
      acd101(19)=abb101(24)
      acd101(20)=dotproduct(qshift,spvak2l6)
      acd101(21)=abb101(18)
      acd101(22)=dotproduct(qshift,spvak2k7)
      acd101(23)=abb101(48)
      acd101(24)=dotproduct(qshift,spvak4k1)
      acd101(25)=abb101(69)
      acd101(26)=dotproduct(qshift,spvak4l6)
      acd101(27)=abb101(31)
      acd101(28)=dotproduct(qshift,spvak4k7)
      acd101(29)=abb101(54)
      acd101(30)=dotproduct(qshift,spvak7k1)
      acd101(31)=abb101(26)
      acd101(32)=abb101(43)
      acd101(33)=qshift(iv1)
      acd101(34)=abb101(21)
      acd101(35)=spvae7k1(iv1)
      acd101(36)=dotproduct(k2,qshift)
      acd101(37)=dotproduct(l6,qshift)
      acd101(38)=dotproduct(k7,qshift)
      acd101(39)=abb101(45)
      acd101(40)=abb101(56)
      acd101(41)=spvak4e7(iv1)
      acd101(42)=dotproduct(qshift,spvae7l6)
      acd101(43)=abb101(38)
      acd101(44)=abb101(34)
      acd101(45)=spvak2e7(iv1)
      acd101(46)=abb101(47)
      acd101(47)=abb101(50)
      acd101(48)=abb101(28)
      acd101(49)=abb101(66)
      acd101(50)=abb101(30)
      acd101(51)=abb101(58)
      acd101(52)=abb101(55)
      acd101(53)=dotproduct(qshift,spvak4k2)
      acd101(54)=abb101(15)
      acd101(55)=abb101(10)
      acd101(56)=spvak2k1(iv1)
      acd101(57)=dotproduct(e7,qshift)
      acd101(58)=abb101(23)
      acd101(59)=abb101(32)
      acd101(60)=spvak2l6(iv1)
      acd101(61)=abb101(46)
      acd101(62)=spvak2k7(iv1)
      acd101(63)=abb101(49)
      acd101(64)=spvak4k1(iv1)
      acd101(65)=abb101(37)
      acd101(66)=abb101(17)
      acd101(67)=spvak4l6(iv1)
      acd101(68)=abb101(64)
      acd101(69)=spvak4k7(iv1)
      acd101(70)=abb101(39)
      acd101(71)=spvak7k1(iv1)
      acd101(72)=abb101(13)
      acd101(73)=abb101(25)
      acd101(74)=spvae7l6(iv1)
      acd101(75)=dotproduct(qshift,spval6k1)
      acd101(76)=abb101(16)
      acd101(77)=abb101(33)
      acd101(78)=spvak4k2(iv1)
      acd101(79)=abb101(14)
      acd101(80)=spval6k1(iv1)
      acd101(81)=abb101(27)
      acd101(82)=spval6k2(iv1)
      acd101(83)=abb101(42)
      acd101(84)=spval6k7(iv1)
      acd101(85)=abb101(52)
      acd101(86)=spvak7k2(iv1)
      acd101(87)=abb101(22)
      acd101(88)=spvak7l6(iv1)
      acd101(89)=abb101(74)
      acd101(90)=spvae7k2(iv1)
      acd101(91)=abb101(11)
      acd101(92)=spval6e7(iv1)
      acd101(93)=abb101(29)
      acd101(94)=spvak7e7(iv1)
      acd101(95)=abb101(35)
      acd101(96)=spvae7k7(iv1)
      acd101(97)=abb101(41)
      acd101(98)=acd101(9)+acd101(15)
      acd101(99)=acd101(13)*acd101(98)
      acd101(100)=acd101(54)*acd101(78)
      acd101(101)=acd101(69)*acd101(51)
      acd101(102)=acd101(67)*acd101(50)
      acd101(103)=acd101(62)*acd101(48)
      acd101(104)=acd101(60)*acd101(47)
      acd101(105)=acd101(64)*acd101(49)
      acd101(106)=acd101(56)*acd101(46)
      acd101(107)=acd101(35)*acd101(39)
      acd101(108)=acd101(74)*acd101(52)
      acd101(99)=acd101(108)+acd101(107)+acd101(106)+acd101(105)+acd101(104)+ac&
      &d101(103)+acd101(102)+acd101(100)+acd101(101)+acd101(99)
      acd101(99)=acd101(12)*acd101(99)
      acd101(100)=acd101(54)*acd101(53)
      acd101(101)=acd101(28)*acd101(51)
      acd101(102)=acd101(26)*acd101(50)
      acd101(103)=acd101(22)*acd101(48)
      acd101(104)=acd101(20)*acd101(47)
      acd101(105)=acd101(24)*acd101(49)
      acd101(106)=acd101(18)*acd101(46)
      acd101(107)=acd101(37)+acd101(38)
      acd101(108)=acd101(13)*acd101(107)
      acd101(109)=acd101(4)*acd101(39)
      acd101(110)=acd101(42)*acd101(52)
      acd101(100)=acd101(110)+acd101(109)+acd101(108)+acd101(106)+acd101(105)+a&
      &cd101(104)+acd101(103)+acd101(102)+acd101(101)-acd101(55)+acd101(100)
      acd101(100)=acd101(45)*acd101(100)
      acd101(101)=acd101(71)*acd101(31)
      acd101(102)=acd101(69)*acd101(29)
      acd101(103)=acd101(67)*acd101(27)
      acd101(104)=acd101(62)*acd101(23)
      acd101(105)=acd101(60)*acd101(21)
      acd101(106)=acd101(64)*acd101(25)
      acd101(108)=acd101(56)*acd101(19)
      acd101(101)=acd101(108)+acd101(106)+acd101(105)+acd101(104)+acd101(103)+a&
      &cd101(101)+acd101(102)
      acd101(101)=acd101(57)*acd101(101)
      acd101(102)=acd101(30)*acd101(31)
      acd101(103)=acd101(28)*acd101(29)
      acd101(104)=acd101(26)*acd101(27)
      acd101(105)=acd101(22)*acd101(23)
      acd101(106)=acd101(20)*acd101(21)
      acd101(108)=acd101(24)*acd101(25)
      acd101(109)=acd101(18)*acd101(19)
      acd101(102)=acd101(109)+acd101(108)+acd101(106)+acd101(105)+acd101(104)+a&
      &cd101(103)-acd101(32)+acd101(102)
      acd101(102)=acd101(17)*acd101(102)
      acd101(103)=acd101(76)*acd101(80)
      acd101(104)=acd101(71)*acd101(72)
      acd101(105)=acd101(64)*acd101(65)
      acd101(106)=acd101(56)*acd101(58)
      acd101(108)=acd101(41)*acd101(43)
      acd101(103)=acd101(108)+acd101(106)+acd101(105)+acd101(103)+acd101(104)
      acd101(103)=acd101(42)*acd101(103)
      acd101(104)=acd101(76)*acd101(75)
      acd101(105)=acd101(30)*acd101(72)
      acd101(106)=acd101(24)*acd101(65)
      acd101(108)=acd101(18)*acd101(58)
      acd101(109)=acd101(6)*acd101(43)
      acd101(104)=acd101(109)+acd101(108)+acd101(106)+acd101(105)-acd101(77)+ac&
      &d101(104)
      acd101(104)=acd101(74)*acd101(104)
      acd101(105)=-acd101(11)*acd101(98)
      acd101(106)=acd101(3)*acd101(7)
      acd101(105)=acd101(106)+acd101(105)
      acd101(105)=acd101(6)*acd101(105)
      acd101(98)=acd101(10)*acd101(98)
      acd101(106)=acd101(3)*acd101(5)
      acd101(98)=acd101(106)+acd101(98)
      acd101(98)=acd101(4)*acd101(98)
      acd101(106)=acd101(7)*acd101(36)
      acd101(108)=-acd101(11)*acd101(107)
      acd101(106)=acd101(108)-acd101(44)+acd101(106)
      acd101(106)=acd101(41)*acd101(106)
      acd101(108)=acd101(5)*acd101(36)
      acd101(107)=acd101(10)*acd101(107)
      acd101(107)=acd101(107)-acd101(40)+acd101(108)
      acd101(107)=acd101(35)*acd101(107)
      acd101(108)=-acd101(96)*acd101(97)
      acd101(109)=-acd101(94)*acd101(95)
      acd101(110)=-acd101(92)*acd101(93)
      acd101(111)=-acd101(90)*acd101(91)
      acd101(112)=-acd101(88)*acd101(89)
      acd101(113)=-acd101(86)*acd101(87)
      acd101(114)=-acd101(84)*acd101(85)
      acd101(115)=-acd101(82)*acd101(83)
      acd101(116)=acd101(33)*acd101(34)
      acd101(117)=-acd101(1)*acd101(2)
      acd101(118)=-acd101(80)*acd101(81)
      acd101(119)=-acd101(78)*acd101(79)
      acd101(120)=-acd101(71)*acd101(73)
      acd101(121)=-acd101(69)*acd101(70)
      acd101(122)=-acd101(67)*acd101(68)
      acd101(123)=-acd101(62)*acd101(63)
      acd101(124)=-acd101(60)*acd101(61)
      acd101(125)=-acd101(3)*acd101(8)
      acd101(126)=-acd101(64)*acd101(66)
      acd101(127)=-acd101(56)*acd101(59)
      acd101(128)=-acd101(15)*acd101(16)
      acd101(129)=-acd101(9)*acd101(14)
      brack=acd101(98)+acd101(99)+acd101(100)+acd101(101)+acd101(102)+acd101(10&
      &3)+acd101(104)+acd101(105)+acd101(106)+acd101(107)+acd101(108)+acd101(10&
      &9)+acd101(110)+acd101(111)+acd101(112)+acd101(113)+acd101(114)+acd101(11&
      &5)+2.0_ki*acd101(116)+acd101(117)+acd101(118)+acd101(119)+acd101(120)+ac&
      &d101(121)+acd101(122)+acd101(123)+acd101(124)+acd101(125)+acd101(126)+ac&
      &d101(127)+acd101(128)+acd101(129)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd101h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd101
      complex(ki) :: brack
      acd101(1)=d(iv1,iv2)
      acd101(2)=abb101(21)
      acd101(3)=k2(iv1)
      acd101(4)=spvae7k1(iv2)
      acd101(5)=abb101(73)
      acd101(6)=spvak4e7(iv2)
      acd101(7)=abb101(53)
      acd101(8)=k2(iv2)
      acd101(9)=spvae7k1(iv1)
      acd101(10)=spvak4e7(iv1)
      acd101(11)=l6(iv1)
      acd101(12)=abb101(63)
      acd101(13)=abb101(40)
      acd101(14)=spvak2e7(iv2)
      acd101(15)=abb101(12)
      acd101(16)=l6(iv2)
      acd101(17)=spvak2e7(iv1)
      acd101(18)=k7(iv1)
      acd101(19)=k7(iv2)
      acd101(20)=e7(iv1)
      acd101(21)=spvak2k1(iv2)
      acd101(22)=abb101(24)
      acd101(23)=spvak2l6(iv2)
      acd101(24)=abb101(18)
      acd101(25)=spvak2k7(iv2)
      acd101(26)=abb101(48)
      acd101(27)=spvak4k1(iv2)
      acd101(28)=abb101(69)
      acd101(29)=spvak4l6(iv2)
      acd101(30)=abb101(31)
      acd101(31)=spvak4k7(iv2)
      acd101(32)=abb101(54)
      acd101(33)=spvak7k1(iv2)
      acd101(34)=abb101(26)
      acd101(35)=e7(iv2)
      acd101(36)=spvak2k1(iv1)
      acd101(37)=spvak2l6(iv1)
      acd101(38)=spvak2k7(iv1)
      acd101(39)=spvak4k1(iv1)
      acd101(40)=spvak4l6(iv1)
      acd101(41)=spvak4k7(iv1)
      acd101(42)=spvak7k1(iv1)
      acd101(43)=abb101(45)
      acd101(44)=spvae7l6(iv2)
      acd101(45)=abb101(38)
      acd101(46)=spvae7l6(iv1)
      acd101(47)=abb101(47)
      acd101(48)=abb101(50)
      acd101(49)=abb101(28)
      acd101(50)=abb101(66)
      acd101(51)=abb101(30)
      acd101(52)=abb101(58)
      acd101(53)=abb101(55)
      acd101(54)=spvak4k2(iv2)
      acd101(55)=abb101(15)
      acd101(56)=spvak4k2(iv1)
      acd101(57)=abb101(23)
      acd101(58)=abb101(37)
      acd101(59)=abb101(13)
      acd101(60)=spval6k1(iv2)
      acd101(61)=abb101(16)
      acd101(62)=spval6k1(iv1)
      acd101(63)=acd101(55)*acd101(54)
      acd101(64)=acd101(31)*acd101(52)
      acd101(65)=acd101(29)*acd101(51)
      acd101(66)=acd101(25)*acd101(49)
      acd101(67)=acd101(23)*acd101(48)
      acd101(68)=acd101(27)*acd101(50)
      acd101(69)=acd101(21)*acd101(47)
      acd101(70)=acd101(16)+acd101(19)
      acd101(71)=acd101(15)*acd101(70)
      acd101(72)=acd101(4)*acd101(43)
      acd101(73)=acd101(44)*acd101(53)
      acd101(63)=acd101(73)+acd101(72)+acd101(71)+acd101(69)+acd101(68)+acd101(&
      &67)+acd101(66)+acd101(65)+acd101(63)+acd101(64)
      acd101(63)=acd101(17)*acd101(63)
      acd101(64)=acd101(55)*acd101(56)
      acd101(65)=acd101(41)*acd101(52)
      acd101(66)=acd101(40)*acd101(51)
      acd101(67)=acd101(38)*acd101(49)
      acd101(68)=acd101(37)*acd101(48)
      acd101(69)=acd101(39)*acd101(50)
      acd101(71)=acd101(36)*acd101(47)
      acd101(72)=acd101(11)+acd101(18)
      acd101(73)=acd101(15)*acd101(72)
      acd101(74)=acd101(9)*acd101(43)
      acd101(75)=acd101(46)*acd101(53)
      acd101(64)=acd101(75)+acd101(74)+acd101(73)+acd101(71)+acd101(69)+acd101(&
      &68)+acd101(67)+acd101(66)+acd101(64)+acd101(65)
      acd101(64)=acd101(14)*acd101(64)
      acd101(65)=acd101(34)*acd101(42)
      acd101(66)=acd101(32)*acd101(41)
      acd101(67)=acd101(30)*acd101(40)
      acd101(68)=acd101(26)*acd101(38)
      acd101(69)=acd101(24)*acd101(37)
      acd101(71)=acd101(39)*acd101(28)
      acd101(73)=acd101(36)*acd101(22)
      acd101(65)=acd101(73)+acd101(71)+acd101(69)+acd101(68)+acd101(67)+acd101(&
      &65)+acd101(66)
      acd101(65)=acd101(35)*acd101(65)
      acd101(66)=acd101(33)*acd101(34)
      acd101(67)=acd101(31)*acd101(32)
      acd101(68)=acd101(29)*acd101(30)
      acd101(69)=acd101(25)*acd101(26)
      acd101(71)=acd101(23)*acd101(24)
      acd101(73)=acd101(27)*acd101(28)
      acd101(74)=acd101(21)*acd101(22)
      acd101(66)=acd101(74)+acd101(73)+acd101(71)+acd101(69)+acd101(68)+acd101(&
      &66)+acd101(67)
      acd101(66)=acd101(20)*acd101(66)
      acd101(67)=acd101(61)*acd101(60)
      acd101(68)=acd101(33)*acd101(59)
      acd101(69)=acd101(27)*acd101(58)
      acd101(71)=acd101(21)*acd101(57)
      acd101(73)=acd101(6)*acd101(45)
      acd101(67)=acd101(73)+acd101(71)+acd101(69)+acd101(67)+acd101(68)
      acd101(67)=acd101(46)*acd101(67)
      acd101(68)=acd101(61)*acd101(62)
      acd101(69)=acd101(42)*acd101(59)
      acd101(71)=acd101(39)*acd101(58)
      acd101(73)=acd101(36)*acd101(57)
      acd101(74)=acd101(10)*acd101(45)
      acd101(68)=acd101(74)+acd101(73)+acd101(71)+acd101(68)+acd101(69)
      acd101(68)=acd101(44)*acd101(68)
      acd101(69)=acd101(7)*acd101(8)
      acd101(71)=-acd101(13)*acd101(70)
      acd101(69)=acd101(69)+acd101(71)
      acd101(69)=acd101(10)*acd101(69)
      acd101(71)=acd101(5)*acd101(8)
      acd101(70)=acd101(12)*acd101(70)
      acd101(70)=acd101(71)+acd101(70)
      acd101(70)=acd101(9)*acd101(70)
      acd101(71)=acd101(3)*acd101(7)
      acd101(73)=-acd101(13)*acd101(72)
      acd101(71)=acd101(71)+acd101(73)
      acd101(71)=acd101(6)*acd101(71)
      acd101(73)=acd101(3)*acd101(5)
      acd101(72)=acd101(12)*acd101(72)
      acd101(72)=acd101(73)+acd101(72)
      acd101(72)=acd101(4)*acd101(72)
      acd101(73)=acd101(1)*acd101(2)
      brack=acd101(63)+acd101(64)+acd101(65)+acd101(66)+acd101(67)+acd101(68)+a&
      &cd101(69)+acd101(70)+acd101(71)+acd101(72)+2.0_ki*acd101(73)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd101h2
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
!---#[ subroutine reconstruct_d101:
   subroutine     reconstruct_d101(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_101:
      coeffs%coeffs_101%c0 = derivative(czip)
      coeffs%coeffs_101%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_101%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_101%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_101%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_101%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_101%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_101%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_101%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_101%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_101%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_101%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_101%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_101%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_101%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_101:
   end subroutine reconstruct_d101
!---#] subroutine reconstruct_d101:
end module     p9_csbar_epnebbbarg_d101h2l1d
