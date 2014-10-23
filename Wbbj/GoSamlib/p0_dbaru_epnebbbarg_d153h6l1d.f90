module     p0_dbaru_epnebbbarg_d153h6l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d153h6l1d.f90
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
   public :: derivative , reconstruct_d153
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd153h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(79) :: acd153
      complex(ki) :: brack
      acd153(1)=dotproduct(k2,qshift)
      acd153(2)=dotproduct(k7,qshift)
      acd153(3)=abb153(87)
      acd153(4)=dotproduct(qshift,qshift)
      acd153(5)=abb153(105)
      acd153(6)=dotproduct(qshift,spvak1k2)
      acd153(7)=dotproduct(qshift,spvak7k2)
      acd153(8)=abb153(35)
      acd153(9)=dotproduct(qshift,spvak1k3)
      acd153(10)=abb153(58)
      acd153(11)=dotproduct(qshift,spvak4k2)
      acd153(12)=abb153(48)
      acd153(13)=abb153(45)
      acd153(14)=dotproduct(qshift,spvak7k3)
      acd153(15)=abb153(56)
      acd153(16)=abb153(89)
      acd153(17)=dotproduct(l5,qshift)
      acd153(18)=abb153(85)
      acd153(19)=abb153(32)
      acd153(20)=dotproduct(l6,qshift)
      acd153(21)=dotproduct(qshift,spval5l6)
      acd153(22)=abb153(44)
      acd153(23)=abb153(54)
      acd153(24)=abb153(52)
      acd153(25)=abb153(57)
      acd153(26)=abb153(38)
      acd153(27)=abb153(53)
      acd153(28)=abb153(66)
      acd153(29)=abb153(33)
      acd153(30)=abb153(25)
      acd153(31)=abb153(24)
      acd153(32)=abb153(46)
      acd153(33)=abb153(61)
      acd153(34)=abb153(68)
      acd153(35)=abb153(42)
      acd153(36)=abb153(28)
      acd153(37)=dotproduct(qshift,spvak1l5)
      acd153(38)=abb153(37)
      acd153(39)=dotproduct(qshift,spvak1l6)
      acd153(40)=abb153(27)
      acd153(41)=dotproduct(qshift,spvak2k3)
      acd153(42)=abb153(31)
      acd153(43)=dotproduct(qshift,spvak4l6)
      acd153(44)=abb153(50)
      acd153(45)=dotproduct(qshift,spval5k2)
      acd153(46)=abb153(43)
      acd153(47)=dotproduct(qshift,spval5k3)
      acd153(48)=abb153(36)
      acd153(49)=dotproduct(qshift,spval6k2)
      acd153(50)=abb153(106)
      acd153(51)=dotproduct(qshift,spval6k3)
      acd153(52)=abb153(79)
      acd153(53)=abb153(26)
      acd153(54)=abb153(51)
      acd153(55)=abb153(65)
      acd153(56)=abb153(72)
      acd153(57)=abb153(71)
      acd153(58)=abb153(29)
      acd153(59)=abb153(69)
      acd153(60)=abb153(39)
      acd153(61)=abb153(30)
      acd153(62)=abb153(82)
      acd153(63)=abb153(100)
      acd153(64)=abb153(41)
      acd153(65)=-acd153(30)*acd153(6)
      acd153(66)=-acd153(33)*acd153(9)
      acd153(67)=-acd153(34)*acd153(11)
      acd153(65)=acd153(36)+acd153(67)+acd153(66)+acd153(65)
      acd153(65)=acd153(65)*acd153(21)
      acd153(66)=-acd153(8)*acd153(6)
      acd153(67)=-acd153(10)*acd153(9)
      acd153(68)=-acd153(12)*acd153(11)
      acd153(66)=acd153(13)+acd153(68)+acd153(67)+acd153(66)
      acd153(66)=acd153(66)*acd153(1)
      acd153(67)=-acd153(25)*acd153(4)
      acd153(68)=acd153(31)*acd153(6)
      acd153(69)=acd153(35)*acd153(11)
      acd153(70)=acd153(38)*acd153(37)
      acd153(71)=acd153(40)*acd153(39)
      acd153(72)=acd153(42)*acd153(41)
      acd153(73)=acd153(44)*acd153(43)
      acd153(74)=acd153(46)*acd153(45)
      acd153(75)=acd153(48)*acd153(47)
      acd153(76)=acd153(50)*acd153(49)
      acd153(77)=acd153(52)*acd153(51)
      acd153(65)=acd153(69)+acd153(68)+acd153(66)+acd153(65)-acd153(53)+acd153(&
      &77)+acd153(76)+acd153(75)+acd153(74)+acd153(73)+acd153(72)+acd153(71)+ac&
      &d153(70)+acd153(67)
      acd153(65)=acd153(7)*acd153(65)
      acd153(66)=-acd153(5)*acd153(1)
      acd153(67)=acd153(24)*acd153(6)
      acd153(68)=-acd153(26)*acd153(9)
      acd153(69)=acd153(27)*acd153(11)
      acd153(70)=-acd153(28)*acd153(21)
      acd153(66)=acd153(29)+acd153(70)+acd153(69)+acd153(68)+acd153(67)+acd153(&
      &66)
      acd153(66)=acd153(4)*acd153(66)
      acd153(67)=-acd153(20)-acd153(17)
      acd153(68)=acd153(18)*acd153(7)
      acd153(68)=acd153(68)+acd153(19)
      acd153(67)=acd153(68)*acd153(67)
      acd153(68)=acd153(3)*acd153(1)
      acd153(69)=acd153(22)*acd153(21)
      acd153(68)=-acd153(23)+acd153(69)+acd153(68)
      acd153(68)=acd153(2)*acd153(68)
      acd153(69)=acd153(15)*acd153(1)
      acd153(70)=acd153(56)*acd153(21)
      acd153(69)=-acd153(57)+acd153(70)+acd153(69)
      acd153(69)=acd153(14)*acd153(69)
      acd153(70)=-acd153(16)*acd153(1)
      acd153(71)=-acd153(32)*acd153(6)
      acd153(72)=-acd153(54)*acd153(9)
      acd153(73)=-acd153(55)*acd153(11)
      acd153(74)=-acd153(58)*acd153(21)
      acd153(75)=-acd153(59)*acd153(41)
      acd153(76)=-acd153(60)*acd153(45)
      acd153(77)=-acd153(61)*acd153(47)
      acd153(78)=-acd153(62)*acd153(49)
      acd153(79)=-acd153(63)*acd153(51)
      brack=acd153(64)+acd153(65)+acd153(66)+acd153(67)+acd153(68)+acd153(69)+a&
      &cd153(70)+acd153(71)+acd153(72)+acd153(73)+acd153(74)+acd153(75)+acd153(&
      &76)+acd153(77)+acd153(78)+acd153(79)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd153h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(102) :: acd153
      complex(ki) :: brack
      acd153(1)=k2(iv1)
      acd153(2)=dotproduct(k7,qshift)
      acd153(3)=abb153(87)
      acd153(4)=dotproduct(qshift,qshift)
      acd153(5)=abb153(105)
      acd153(6)=dotproduct(qshift,spvak1k2)
      acd153(7)=dotproduct(qshift,spvak7k2)
      acd153(8)=abb153(35)
      acd153(9)=dotproduct(qshift,spvak1k3)
      acd153(10)=abb153(58)
      acd153(11)=dotproduct(qshift,spvak4k2)
      acd153(12)=abb153(48)
      acd153(13)=abb153(45)
      acd153(14)=dotproduct(qshift,spvak7k3)
      acd153(15)=abb153(56)
      acd153(16)=abb153(89)
      acd153(17)=l5(iv1)
      acd153(18)=abb153(85)
      acd153(19)=abb153(32)
      acd153(20)=l6(iv1)
      acd153(21)=k7(iv1)
      acd153(22)=dotproduct(k2,qshift)
      acd153(23)=dotproduct(qshift,spval5l6)
      acd153(24)=abb153(44)
      acd153(25)=abb153(54)
      acd153(26)=qshift(iv1)
      acd153(27)=abb153(52)
      acd153(28)=abb153(57)
      acd153(29)=abb153(38)
      acd153(30)=abb153(53)
      acd153(31)=abb153(66)
      acd153(32)=abb153(33)
      acd153(33)=spvak1k2(iv1)
      acd153(34)=abb153(25)
      acd153(35)=abb153(24)
      acd153(36)=abb153(46)
      acd153(37)=spvak7k2(iv1)
      acd153(38)=dotproduct(l5,qshift)
      acd153(39)=dotproduct(l6,qshift)
      acd153(40)=abb153(61)
      acd153(41)=abb153(68)
      acd153(42)=abb153(42)
      acd153(43)=abb153(28)
      acd153(44)=dotproduct(qshift,spvak1l5)
      acd153(45)=abb153(37)
      acd153(46)=dotproduct(qshift,spvak1l6)
      acd153(47)=abb153(27)
      acd153(48)=dotproduct(qshift,spvak2k3)
      acd153(49)=abb153(31)
      acd153(50)=dotproduct(qshift,spvak4l6)
      acd153(51)=abb153(50)
      acd153(52)=dotproduct(qshift,spval5k2)
      acd153(53)=abb153(43)
      acd153(54)=dotproduct(qshift,spval5k3)
      acd153(55)=abb153(36)
      acd153(56)=dotproduct(qshift,spval6k2)
      acd153(57)=abb153(106)
      acd153(58)=dotproduct(qshift,spval6k3)
      acd153(59)=abb153(79)
      acd153(60)=abb153(26)
      acd153(61)=spvak1k3(iv1)
      acd153(62)=abb153(51)
      acd153(63)=spvak4k2(iv1)
      acd153(64)=abb153(65)
      acd153(65)=spvak7k3(iv1)
      acd153(66)=abb153(72)
      acd153(67)=abb153(71)
      acd153(68)=spval5l6(iv1)
      acd153(69)=abb153(29)
      acd153(70)=spvak1l5(iv1)
      acd153(71)=spvak1l6(iv1)
      acd153(72)=spvak2k3(iv1)
      acd153(73)=abb153(69)
      acd153(74)=spvak4l6(iv1)
      acd153(75)=spval5k2(iv1)
      acd153(76)=abb153(39)
      acd153(77)=spval5k3(iv1)
      acd153(78)=abb153(30)
      acd153(79)=spval6k2(iv1)
      acd153(80)=abb153(82)
      acd153(81)=spval6k3(iv1)
      acd153(82)=abb153(100)
      acd153(83)=acd153(9)*acd153(40)
      acd153(84)=acd153(11)*acd153(41)
      acd153(85)=acd153(6)*acd153(34)
      acd153(83)=acd153(83)+acd153(84)+acd153(85)-acd153(43)
      acd153(84)=acd153(68)*acd153(83)
      acd153(85)=acd153(9)*acd153(10)
      acd153(86)=acd153(11)*acd153(12)
      acd153(87)=acd153(6)*acd153(8)
      acd153(85)=acd153(85)+acd153(86)+acd153(87)-acd153(13)
      acd153(86)=acd153(1)*acd153(85)
      acd153(87)=acd153(61)*acd153(40)
      acd153(88)=acd153(63)*acd153(41)
      acd153(89)=acd153(33)*acd153(34)
      acd153(87)=acd153(89)+acd153(87)+acd153(88)
      acd153(87)=acd153(23)*acd153(87)
      acd153(88)=acd153(61)*acd153(10)
      acd153(89)=acd153(63)*acd153(12)
      acd153(90)=acd153(33)*acd153(8)
      acd153(88)=acd153(90)+acd153(88)+acd153(89)
      acd153(88)=acd153(22)*acd153(88)
      acd153(89)=-acd153(59)*acd153(81)
      acd153(90)=-acd153(57)*acd153(79)
      acd153(91)=-acd153(55)*acd153(77)
      acd153(92)=-acd153(53)*acd153(75)
      acd153(93)=-acd153(51)*acd153(74)
      acd153(94)=-acd153(49)*acd153(72)
      acd153(95)=-acd153(47)*acd153(71)
      acd153(96)=-acd153(45)*acd153(70)
      acd153(97)=acd153(17)+acd153(20)
      acd153(98)=acd153(18)*acd153(97)
      acd153(99)=-acd153(63)*acd153(42)
      acd153(100)=-acd153(33)*acd153(35)
      acd153(101)=2.0_ki*acd153(26)
      acd153(102)=acd153(28)*acd153(101)
      acd153(84)=acd153(88)+acd153(87)+acd153(86)+acd153(84)+acd153(102)+acd153&
      &(100)+acd153(99)+acd153(98)+acd153(96)+acd153(95)+acd153(94)+acd153(93)+&
      &acd153(92)+acd153(91)+acd153(89)+acd153(90)
      acd153(84)=acd153(7)*acd153(84)
      acd153(83)=acd153(23)*acd153(83)
      acd153(85)=acd153(22)*acd153(85)
      acd153(86)=-acd153(59)*acd153(58)
      acd153(87)=-acd153(57)*acd153(56)
      acd153(88)=-acd153(55)*acd153(54)
      acd153(89)=-acd153(53)*acd153(52)
      acd153(90)=-acd153(51)*acd153(50)
      acd153(91)=-acd153(49)*acd153(48)
      acd153(92)=-acd153(47)*acd153(46)
      acd153(93)=-acd153(45)*acd153(44)
      acd153(94)=acd153(39)+acd153(38)
      acd153(94)=acd153(18)*acd153(94)
      acd153(95)=-acd153(11)*acd153(42)
      acd153(96)=-acd153(6)*acd153(35)
      acd153(98)=acd153(4)*acd153(28)
      acd153(83)=acd153(85)+acd153(83)+acd153(98)+acd153(96)+acd153(95)+acd153(&
      &94)+acd153(93)+acd153(92)+acd153(91)+acd153(90)+acd153(89)+acd153(88)+ac&
      &d153(87)+acd153(60)+acd153(86)
      acd153(83)=acd153(37)*acd153(83)
      acd153(85)=acd153(61)*acd153(29)
      acd153(86)=-acd153(63)*acd153(30)
      acd153(87)=-acd153(33)*acd153(27)
      acd153(85)=acd153(87)+acd153(85)+acd153(86)
      acd153(85)=acd153(4)*acd153(85)
      acd153(86)=acd153(9)*acd153(29)
      acd153(87)=-acd153(11)*acd153(30)
      acd153(88)=-acd153(6)*acd153(27)
      acd153(86)=acd153(88)+acd153(87)-acd153(32)+acd153(86)
      acd153(86)=acd153(86)*acd153(101)
      acd153(87)=-acd153(14)*acd153(66)
      acd153(88)=-acd153(2)*acd153(24)
      acd153(89)=acd153(4)*acd153(31)
      acd153(87)=acd153(89)+acd153(88)+acd153(69)+acd153(87)
      acd153(87)=acd153(68)*acd153(87)
      acd153(88)=-acd153(14)*acd153(15)
      acd153(89)=-acd153(2)*acd153(3)
      acd153(90)=acd153(4)*acd153(5)
      acd153(88)=acd153(90)+acd153(89)+acd153(16)+acd153(88)
      acd153(88)=acd153(1)*acd153(88)
      acd153(89)=-acd153(65)*acd153(66)
      acd153(90)=-acd153(21)*acd153(24)
      acd153(91)=acd153(31)*acd153(101)
      acd153(89)=acd153(91)+acd153(89)+acd153(90)
      acd153(89)=acd153(23)*acd153(89)
      acd153(90)=-acd153(65)*acd153(15)
      acd153(91)=-acd153(21)*acd153(3)
      acd153(92)=acd153(5)*acd153(101)
      acd153(90)=acd153(92)+acd153(90)+acd153(91)
      acd153(90)=acd153(22)*acd153(90)
      acd153(91)=acd153(19)*acd153(97)
      acd153(92)=acd153(81)*acd153(82)
      acd153(93)=acd153(79)*acd153(80)
      acd153(94)=acd153(77)*acd153(78)
      acd153(95)=acd153(75)*acd153(76)
      acd153(96)=acd153(72)*acd153(73)
      acd153(97)=acd153(65)*acd153(67)
      acd153(98)=acd153(21)*acd153(25)
      acd153(99)=acd153(61)*acd153(62)
      acd153(100)=acd153(63)*acd153(64)
      acd153(101)=acd153(33)*acd153(36)
      brack=acd153(83)+acd153(84)+acd153(85)+acd153(86)+acd153(87)+acd153(88)+a&
      &cd153(89)+acd153(90)+acd153(91)+acd153(92)+acd153(93)+acd153(94)+acd153(&
      &95)+acd153(96)+acd153(97)+acd153(98)+acd153(99)+acd153(100)+acd153(101)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd153h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd153
      complex(ki) :: brack
      acd153(1)=d(iv1,iv2)
      acd153(2)=dotproduct(k2,qshift)
      acd153(3)=abb153(105)
      acd153(4)=dotproduct(qshift,spvak1k2)
      acd153(5)=abb153(52)
      acd153(6)=dotproduct(qshift,spvak1k3)
      acd153(7)=abb153(38)
      acd153(8)=dotproduct(qshift,spvak4k2)
      acd153(9)=abb153(53)
      acd153(10)=dotproduct(qshift,spval5l6)
      acd153(11)=abb153(66)
      acd153(12)=dotproduct(qshift,spvak7k2)
      acd153(13)=abb153(57)
      acd153(14)=abb153(33)
      acd153(15)=k2(iv1)
      acd153(16)=k7(iv2)
      acd153(17)=abb153(87)
      acd153(18)=qshift(iv2)
      acd153(19)=spvak1k2(iv2)
      acd153(20)=abb153(35)
      acd153(21)=spvak1k3(iv2)
      acd153(22)=abb153(58)
      acd153(23)=spvak4k2(iv2)
      acd153(24)=abb153(48)
      acd153(25)=spvak7k2(iv2)
      acd153(26)=abb153(45)
      acd153(27)=spvak7k3(iv2)
      acd153(28)=abb153(56)
      acd153(29)=k2(iv2)
      acd153(30)=k7(iv1)
      acd153(31)=qshift(iv1)
      acd153(32)=spvak1k2(iv1)
      acd153(33)=spvak1k3(iv1)
      acd153(34)=spvak4k2(iv1)
      acd153(35)=spvak7k2(iv1)
      acd153(36)=spvak7k3(iv1)
      acd153(37)=l5(iv1)
      acd153(38)=abb153(85)
      acd153(39)=l5(iv2)
      acd153(40)=l6(iv1)
      acd153(41)=l6(iv2)
      acd153(42)=spval5l6(iv2)
      acd153(43)=abb153(44)
      acd153(44)=spval5l6(iv1)
      acd153(45)=abb153(25)
      acd153(46)=abb153(24)
      acd153(47)=abb153(61)
      acd153(48)=abb153(68)
      acd153(49)=abb153(42)
      acd153(50)=abb153(28)
      acd153(51)=abb153(72)
      acd153(52)=spvak1l5(iv2)
      acd153(53)=abb153(37)
      acd153(54)=spvak1l6(iv2)
      acd153(55)=abb153(27)
      acd153(56)=spvak2k3(iv2)
      acd153(57)=abb153(31)
      acd153(58)=spvak4l6(iv2)
      acd153(59)=abb153(50)
      acd153(60)=spval5k2(iv2)
      acd153(61)=abb153(43)
      acd153(62)=spval5k3(iv2)
      acd153(63)=abb153(36)
      acd153(64)=spval6k2(iv2)
      acd153(65)=abb153(106)
      acd153(66)=spval6k3(iv2)
      acd153(67)=abb153(79)
      acd153(68)=spvak1l5(iv1)
      acd153(69)=spvak1l6(iv1)
      acd153(70)=spvak2k3(iv1)
      acd153(71)=spvak4l6(iv1)
      acd153(72)=spval5k2(iv1)
      acd153(73)=spval5k3(iv1)
      acd153(74)=spval6k2(iv1)
      acd153(75)=spval6k3(iv1)
      acd153(76)=acd153(47)*acd153(21)
      acd153(77)=acd153(23)*acd153(48)
      acd153(78)=acd153(19)*acd153(45)
      acd153(76)=acd153(78)+acd153(76)+acd153(77)
      acd153(77)=-acd153(10)*acd153(76)
      acd153(78)=acd153(23)*acd153(24)
      acd153(79)=acd153(22)*acd153(21)
      acd153(80)=acd153(19)*acd153(20)
      acd153(78)=acd153(78)+acd153(79)+acd153(80)
      acd153(79)=-acd153(2)*acd153(78)
      acd153(80)=acd153(48)*acd153(8)
      acd153(81)=acd153(47)*acd153(6)
      acd153(82)=acd153(45)*acd153(4)
      acd153(80)=acd153(80)+acd153(81)+acd153(82)-acd153(50)
      acd153(81)=-acd153(42)*acd153(80)
      acd153(82)=acd153(24)*acd153(8)
      acd153(83)=acd153(22)*acd153(6)
      acd153(84)=acd153(20)*acd153(4)
      acd153(82)=-acd153(26)+acd153(82)+acd153(83)+acd153(84)
      acd153(83)=-acd153(29)*acd153(82)
      acd153(84)=acd153(67)*acd153(66)
      acd153(85)=acd153(65)*acd153(64)
      acd153(86)=acd153(63)*acd153(62)
      acd153(87)=acd153(61)*acd153(60)
      acd153(88)=acd153(59)*acd153(58)
      acd153(89)=acd153(57)*acd153(56)
      acd153(90)=acd153(55)*acd153(54)
      acd153(91)=acd153(53)*acd153(52)
      acd153(92)=-acd153(41)-acd153(39)
      acd153(92)=acd153(38)*acd153(92)
      acd153(93)=acd153(23)*acd153(49)
      acd153(94)=acd153(19)*acd153(46)
      acd153(95)=2.0_ki*acd153(18)
      acd153(96)=-acd153(13)*acd153(95)
      acd153(77)=acd153(83)+acd153(81)+acd153(79)+acd153(77)+acd153(96)+acd153(&
      &94)+acd153(93)+acd153(92)+acd153(91)+acd153(90)+acd153(89)+acd153(88)+ac&
      &d153(87)+acd153(86)+acd153(84)+acd153(85)
      acd153(77)=acd153(35)*acd153(77)
      acd153(79)=acd153(47)*acd153(33)
      acd153(81)=acd153(34)*acd153(48)
      acd153(83)=acd153(32)*acd153(45)
      acd153(79)=acd153(83)+acd153(79)+acd153(81)
      acd153(81)=-acd153(10)*acd153(79)
      acd153(83)=acd153(24)*acd153(34)
      acd153(84)=acd153(22)*acd153(33)
      acd153(85)=acd153(20)*acd153(32)
      acd153(83)=acd153(83)+acd153(84)+acd153(85)
      acd153(84)=-acd153(2)*acd153(83)
      acd153(80)=-acd153(44)*acd153(80)
      acd153(82)=-acd153(15)*acd153(82)
      acd153(85)=acd153(67)*acd153(75)
      acd153(86)=acd153(65)*acd153(74)
      acd153(87)=acd153(63)*acd153(73)
      acd153(88)=acd153(61)*acd153(72)
      acd153(89)=acd153(59)*acd153(71)
      acd153(90)=acd153(57)*acd153(70)
      acd153(91)=acd153(55)*acd153(69)
      acd153(92)=acd153(53)*acd153(68)
      acd153(93)=-acd153(40)-acd153(37)
      acd153(93)=acd153(38)*acd153(93)
      acd153(94)=acd153(34)*acd153(49)
      acd153(96)=acd153(32)*acd153(46)
      acd153(97)=2.0_ki*acd153(31)
      acd153(98)=-acd153(13)*acd153(97)
      acd153(80)=acd153(82)+acd153(80)+acd153(84)+acd153(81)+acd153(98)+acd153(&
      &96)+acd153(94)+acd153(93)+acd153(92)+acd153(91)+acd153(90)+acd153(89)+ac&
      &d153(88)+acd153(87)+acd153(85)+acd153(86)
      acd153(80)=acd153(25)*acd153(80)
      acd153(76)=-acd153(44)*acd153(76)
      acd153(79)=-acd153(42)*acd153(79)
      acd153(81)=-acd153(29)*acd153(83)
      acd153(78)=-acd153(15)*acd153(78)
      acd153(82)=2.0_ki*acd153(13)
      acd153(82)=-acd153(1)*acd153(82)
      acd153(76)=acd153(78)+acd153(81)+acd153(79)+acd153(82)+acd153(76)
      acd153(76)=acd153(12)*acd153(76)
      acd153(78)=acd153(8)*acd153(9)
      acd153(79)=-acd153(6)*acd153(7)
      acd153(81)=acd153(4)*acd153(5)
      acd153(82)=-acd153(10)*acd153(11)
      acd153(83)=-acd153(2)*acd153(3)
      acd153(78)=acd153(83)+acd153(82)+acd153(81)+acd153(79)+acd153(14)+acd153(&
      &78)
      acd153(78)=acd153(1)*acd153(78)
      acd153(79)=-acd153(21)*acd153(7)
      acd153(81)=acd153(23)*acd153(9)
      acd153(82)=acd153(19)*acd153(5)
      acd153(79)=acd153(82)+acd153(79)+acd153(81)
      acd153(79)=acd153(31)*acd153(79)
      acd153(81)=-acd153(33)*acd153(7)
      acd153(82)=acd153(34)*acd153(9)
      acd153(83)=acd153(32)*acd153(5)
      acd153(81)=acd153(83)+acd153(81)+acd153(82)
      acd153(81)=acd153(18)*acd153(81)
      acd153(78)=acd153(78)+acd153(81)+acd153(79)
      acd153(79)=acd153(27)*acd153(51)
      acd153(81)=acd153(16)*acd153(43)
      acd153(82)=-acd153(11)*acd153(95)
      acd153(79)=acd153(82)+acd153(79)+acd153(81)
      acd153(79)=acd153(44)*acd153(79)
      acd153(81)=acd153(36)*acd153(51)
      acd153(82)=acd153(30)*acd153(43)
      acd153(83)=-acd153(11)*acd153(97)
      acd153(81)=acd153(83)+acd153(81)+acd153(82)
      acd153(81)=acd153(42)*acd153(81)
      acd153(82)=acd153(28)*acd153(36)
      acd153(83)=acd153(17)*acd153(30)
      acd153(84)=-acd153(3)*acd153(97)
      acd153(82)=acd153(84)+acd153(82)+acd153(83)
      acd153(82)=acd153(29)*acd153(82)
      acd153(83)=acd153(27)*acd153(28)
      acd153(84)=acd153(16)*acd153(17)
      acd153(85)=-acd153(3)*acd153(95)
      acd153(83)=acd153(85)+acd153(83)+acd153(84)
      acd153(83)=acd153(15)*acd153(83)
      brack=acd153(76)+acd153(77)+2.0_ki*acd153(78)+acd153(79)+acd153(80)+acd15&
      &3(81)+acd153(82)+acd153(83)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd153h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(45) :: acd153
      complex(ki) :: brack
      acd153(1)=d(iv1,iv2)
      acd153(2)=k2(iv3)
      acd153(3)=abb153(105)
      acd153(4)=spvak1k2(iv3)
      acd153(5)=abb153(52)
      acd153(6)=spvak1k3(iv3)
      acd153(7)=abb153(38)
      acd153(8)=spvak4k2(iv3)
      acd153(9)=abb153(53)
      acd153(10)=spval5l6(iv3)
      acd153(11)=abb153(66)
      acd153(12)=spvak7k2(iv3)
      acd153(13)=abb153(57)
      acd153(14)=d(iv1,iv3)
      acd153(15)=k2(iv2)
      acd153(16)=spvak1k2(iv2)
      acd153(17)=spvak1k3(iv2)
      acd153(18)=spvak4k2(iv2)
      acd153(19)=spval5l6(iv2)
      acd153(20)=spvak7k2(iv2)
      acd153(21)=d(iv2,iv3)
      acd153(22)=k2(iv1)
      acd153(23)=spvak1k2(iv1)
      acd153(24)=spvak1k3(iv1)
      acd153(25)=spvak4k2(iv1)
      acd153(26)=spval5l6(iv1)
      acd153(27)=spvak7k2(iv1)
      acd153(28)=abb153(35)
      acd153(29)=abb153(58)
      acd153(30)=abb153(48)
      acd153(31)=abb153(25)
      acd153(32)=abb153(61)
      acd153(33)=abb153(68)
      acd153(34)=-acd153(25)*acd153(9)
      acd153(35)=acd153(24)*acd153(7)
      acd153(36)=-acd153(23)*acd153(5)
      acd153(37)=acd153(26)*acd153(11)
      acd153(38)=acd153(22)*acd153(3)
      acd153(34)=acd153(38)+acd153(37)+acd153(36)+acd153(34)+acd153(35)
      acd153(34)=acd153(21)*acd153(34)
      acd153(35)=-acd153(18)*acd153(9)
      acd153(36)=acd153(17)*acd153(7)
      acd153(37)=-acd153(16)*acd153(5)
      acd153(38)=acd153(19)*acd153(11)
      acd153(39)=acd153(15)*acd153(3)
      acd153(35)=acd153(39)+acd153(38)+acd153(37)+acd153(35)+acd153(36)
      acd153(35)=acd153(14)*acd153(35)
      acd153(36)=-acd153(8)*acd153(9)
      acd153(37)=acd153(6)*acd153(7)
      acd153(38)=-acd153(4)*acd153(5)
      acd153(39)=acd153(10)*acd153(11)
      acd153(40)=acd153(2)*acd153(3)
      acd153(36)=acd153(40)+acd153(39)+acd153(38)+acd153(36)+acd153(37)
      acd153(36)=acd153(1)*acd153(36)
      acd153(34)=acd153(36)+acd153(35)+acd153(34)
      acd153(35)=acd153(33)*acd153(8)
      acd153(36)=acd153(32)*acd153(6)
      acd153(37)=acd153(31)*acd153(4)
      acd153(35)=acd153(37)+acd153(35)+acd153(36)
      acd153(36)=acd153(19)*acd153(35)
      acd153(37)=acd153(30)*acd153(8)
      acd153(38)=acd153(29)*acd153(6)
      acd153(39)=acd153(28)*acd153(4)
      acd153(37)=acd153(39)+acd153(37)+acd153(38)
      acd153(38)=acd153(15)*acd153(37)
      acd153(39)=acd153(33)*acd153(18)
      acd153(40)=acd153(32)*acd153(17)
      acd153(41)=acd153(31)*acd153(16)
      acd153(39)=acd153(41)+acd153(39)+acd153(40)
      acd153(40)=acd153(10)*acd153(39)
      acd153(41)=acd153(30)*acd153(18)
      acd153(42)=acd153(29)*acd153(17)
      acd153(43)=acd153(28)*acd153(16)
      acd153(41)=acd153(43)+acd153(41)+acd153(42)
      acd153(42)=acd153(2)*acd153(41)
      acd153(43)=2.0_ki*acd153(13)
      acd153(44)=acd153(21)*acd153(43)
      acd153(36)=acd153(42)+acd153(40)+acd153(38)+acd153(44)+acd153(36)
      acd153(36)=acd153(27)*acd153(36)
      acd153(35)=acd153(26)*acd153(35)
      acd153(37)=acd153(22)*acd153(37)
      acd153(38)=acd153(33)*acd153(25)
      acd153(40)=acd153(32)*acd153(24)
      acd153(42)=acd153(31)*acd153(23)
      acd153(38)=acd153(42)+acd153(38)+acd153(40)
      acd153(40)=acd153(10)*acd153(38)
      acd153(42)=acd153(30)*acd153(25)
      acd153(44)=acd153(29)*acd153(24)
      acd153(45)=acd153(28)*acd153(23)
      acd153(42)=acd153(45)+acd153(42)+acd153(44)
      acd153(44)=acd153(2)*acd153(42)
      acd153(45)=acd153(14)*acd153(43)
      acd153(35)=acd153(44)+acd153(40)+acd153(37)+acd153(45)+acd153(35)
      acd153(35)=acd153(20)*acd153(35)
      acd153(37)=acd153(26)*acd153(39)
      acd153(39)=acd153(22)*acd153(41)
      acd153(38)=acd153(19)*acd153(38)
      acd153(40)=acd153(15)*acd153(42)
      acd153(41)=acd153(1)*acd153(43)
      acd153(37)=acd153(40)+acd153(38)+acd153(39)+acd153(41)+acd153(37)
      acd153(37)=acd153(12)*acd153(37)
      brack=2.0_ki*acd153(34)+acd153(35)+acd153(36)+acd153(37)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd153h6
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
!---#[ subroutine reconstruct_d153:
   subroutine     reconstruct_d153(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_153:
      coeffs%coeffs_153%c0 = derivative(czip)
      coeffs%coeffs_153%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_153%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_153%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_153%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_153%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_153%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_153%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_153%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_153%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_153%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_153%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_153%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_153%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_153%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_153%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_153%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_153%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_153%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_153%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_153%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_153%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_153%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_153%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_153%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_153%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_153%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_153%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_153%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_153%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_153%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_153%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_153%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_153%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_153%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_153:
   end subroutine reconstruct_d153
!---#] subroutine reconstruct_d153:
end module     p0_dbaru_epnebbbarg_d153h6l1d
