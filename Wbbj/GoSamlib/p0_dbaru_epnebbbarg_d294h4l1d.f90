module     p0_dbaru_epnebbbarg_d294h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d294h4l1d.f90
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
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d294
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd294h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd294
      complex(ki) :: brack
      acd294(1)=dotproduct(k2,qshift)
      acd294(2)=dotproduct(qshift,spvak4k2)
      acd294(3)=dotproduct(qshift,spvak7k2)
      acd294(4)=abb294(18)
      acd294(5)=abb294(30)
      acd294(6)=dotproduct(qshift,spval6k2)
      acd294(7)=abb294(22)
      acd294(8)=abb294(88)
      acd294(9)=abb294(32)
      acd294(10)=abb294(48)
      acd294(11)=dotproduct(l6,qshift)
      acd294(12)=abb294(51)
      acd294(13)=abb294(40)
      acd294(14)=abb294(19)
      acd294(15)=dotproduct(qshift,spvak1k2)
      acd294(16)=abb294(46)
      acd294(17)=abb294(83)
      acd294(18)=abb294(31)
      acd294(19)=abb294(28)
      acd294(20)=dotproduct(qshift,spval5k2)
      acd294(21)=abb294(41)
      acd294(22)=abb294(29)
      acd294(23)=dotproduct(qshift,qshift)
      acd294(24)=abb294(21)
      acd294(25)=abb294(36)
      acd294(26)=abb294(15)
      acd294(27)=abb294(45)
      acd294(28)=abb294(24)
      acd294(29)=abb294(74)
      acd294(30)=dotproduct(qshift,spvak4k3)
      acd294(31)=abb294(11)
      acd294(32)=abb294(17)
      acd294(33)=abb294(44)
      acd294(34)=abb294(13)
      acd294(35)=dotproduct(qshift,spval6k3)
      acd294(36)=abb294(10)
      acd294(37)=abb294(90)
      acd294(38)=dotproduct(qshift,spval6k1)
      acd294(39)=abb294(39)
      acd294(40)=dotproduct(qshift,spval6l5)
      acd294(41)=abb294(82)
      acd294(42)=dotproduct(qshift,spval6k7)
      acd294(43)=abb294(38)
      acd294(44)=abb294(14)
      acd294(45)=abb294(42)
      acd294(46)=abb294(37)
      acd294(47)=abb294(35)
      acd294(48)=abb294(33)
      acd294(49)=abb294(43)
      acd294(50)=abb294(20)
      acd294(51)=abb294(12)
      acd294(52)=abb294(27)
      acd294(53)=abb294(98)
      acd294(54)=abb294(34)
      acd294(55)=abb294(26)
      acd294(56)=abb294(25)
      acd294(57)=abb294(16)
      acd294(58)=-acd294(30)*acd294(33)
      acd294(59)=acd294(23)*acd294(26)
      acd294(60)=-acd294(1)*acd294(7)
      acd294(61)=acd294(30)*acd294(31)
      acd294(61)=-acd294(32)+acd294(61)
      acd294(61)=acd294(15)*acd294(61)
      acd294(62)=-acd294(11)*acd294(14)
      acd294(58)=acd294(62)+acd294(61)+acd294(60)+acd294(59)+acd294(34)+acd294(&
      &58)
      acd294(58)=acd294(6)*acd294(58)
      acd294(59)=-acd294(2)*acd294(12)
      acd294(60)=-acd294(15)*acd294(16)
      acd294(59)=acd294(60)+acd294(17)+acd294(59)
      acd294(59)=acd294(11)*acd294(59)
      acd294(60)=acd294(42)*acd294(43)
      acd294(61)=acd294(40)*acd294(41)
      acd294(62)=acd294(38)*acd294(39)
      acd294(63)=acd294(35)*acd294(37)
      acd294(64)=-acd294(23)*acd294(27)
      acd294(65)=acd294(2)*acd294(23)
      acd294(66)=acd294(24)*acd294(65)
      acd294(67)=-acd294(2)*acd294(4)
      acd294(67)=acd294(8)+acd294(67)
      acd294(67)=acd294(1)*acd294(67)
      acd294(68)=acd294(15)*acd294(35)
      acd294(69)=-acd294(36)*acd294(68)
      acd294(58)=acd294(58)+acd294(59)+acd294(69)+acd294(67)+acd294(66)+acd294(&
      &64)+acd294(63)+acd294(62)+acd294(61)-acd294(44)+acd294(60)
      acd294(58)=acd294(3)*acd294(58)
      acd294(59)=acd294(20)*acd294(48)
      acd294(60)=-acd294(20)*acd294(47)
      acd294(60)=acd294(49)+acd294(60)
      acd294(60)=acd294(30)*acd294(60)
      acd294(61)=-acd294(23)*acd294(28)
      acd294(62)=acd294(1)*acd294(9)
      acd294(63)=-acd294(30)*acd294(45)
      acd294(63)=acd294(46)+acd294(63)
      acd294(63)=acd294(15)*acd294(63)
      acd294(64)=acd294(11)*acd294(18)
      acd294(59)=acd294(64)+acd294(63)+acd294(62)+acd294(61)+acd294(60)-acd294(&
      &50)+acd294(59)
      acd294(59)=acd294(6)*acd294(59)
      acd294(60)=acd294(20)*acd294(21)
      acd294(61)=acd294(2)*acd294(13)
      acd294(62)=acd294(15)*acd294(19)
      acd294(60)=acd294(62)+acd294(61)-acd294(22)+acd294(60)
      acd294(60)=acd294(11)*acd294(60)
      acd294(61)=-acd294(42)*acd294(56)
      acd294(62)=-acd294(40)*acd294(55)
      acd294(63)=-acd294(38)*acd294(54)
      acd294(64)=acd294(20)*acd294(52)
      acd294(64)=-acd294(53)+acd294(64)
      acd294(64)=acd294(35)*acd294(64)
      acd294(66)=acd294(23)*acd294(29)
      acd294(65)=-acd294(25)*acd294(65)
      acd294(67)=acd294(2)*acd294(5)
      acd294(67)=-acd294(10)+acd294(67)
      acd294(67)=acd294(1)*acd294(67)
      acd294(68)=acd294(51)*acd294(68)
      brack=acd294(57)+acd294(58)+acd294(59)+acd294(60)+acd294(61)+acd294(62)+a&
      &cd294(63)+acd294(64)+acd294(65)+acd294(66)+acd294(67)+acd294(68)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd294h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(90) :: acd294
      complex(ki) :: brack
      acd294(1)=k2(iv1)
      acd294(2)=dotproduct(qshift,spvak4k2)
      acd294(3)=dotproduct(qshift,spvak7k2)
      acd294(4)=abb294(18)
      acd294(5)=abb294(30)
      acd294(6)=dotproduct(qshift,spval6k2)
      acd294(7)=abb294(22)
      acd294(8)=abb294(88)
      acd294(9)=abb294(32)
      acd294(10)=abb294(48)
      acd294(11)=l6(iv1)
      acd294(12)=abb294(51)
      acd294(13)=abb294(40)
      acd294(14)=abb294(19)
      acd294(15)=dotproduct(qshift,spvak1k2)
      acd294(16)=abb294(46)
      acd294(17)=abb294(83)
      acd294(18)=abb294(31)
      acd294(19)=abb294(28)
      acd294(20)=dotproduct(qshift,spval5k2)
      acd294(21)=abb294(41)
      acd294(22)=abb294(29)
      acd294(23)=qshift(iv1)
      acd294(24)=abb294(21)
      acd294(25)=abb294(36)
      acd294(26)=abb294(15)
      acd294(27)=abb294(45)
      acd294(28)=abb294(24)
      acd294(29)=abb294(74)
      acd294(30)=spvak4k2(iv1)
      acd294(31)=dotproduct(k2,qshift)
      acd294(32)=dotproduct(l6,qshift)
      acd294(33)=dotproduct(qshift,qshift)
      acd294(34)=spvak7k2(iv1)
      acd294(35)=dotproduct(qshift,spvak4k3)
      acd294(36)=abb294(11)
      acd294(37)=abb294(17)
      acd294(38)=abb294(44)
      acd294(39)=abb294(13)
      acd294(40)=dotproduct(qshift,spval6k3)
      acd294(41)=abb294(10)
      acd294(42)=abb294(90)
      acd294(43)=dotproduct(qshift,spval6k1)
      acd294(44)=abb294(39)
      acd294(45)=dotproduct(qshift,spval6l5)
      acd294(46)=abb294(82)
      acd294(47)=dotproduct(qshift,spval6k7)
      acd294(48)=abb294(38)
      acd294(49)=abb294(14)
      acd294(50)=spval6k2(iv1)
      acd294(51)=abb294(42)
      acd294(52)=abb294(37)
      acd294(53)=abb294(35)
      acd294(54)=abb294(33)
      acd294(55)=abb294(43)
      acd294(56)=abb294(20)
      acd294(57)=spvak1k2(iv1)
      acd294(58)=abb294(12)
      acd294(59)=spval5k2(iv1)
      acd294(60)=abb294(27)
      acd294(61)=spvak4k3(iv1)
      acd294(62)=spval6k3(iv1)
      acd294(63)=abb294(98)
      acd294(64)=spval6k1(iv1)
      acd294(65)=abb294(34)
      acd294(66)=spval6l5(iv1)
      acd294(67)=abb294(26)
      acd294(68)=spval6k7(iv1)
      acd294(69)=abb294(25)
      acd294(70)=acd294(35)*acd294(36)
      acd294(70)=acd294(70)-acd294(37)
      acd294(71)=acd294(57)*acd294(70)
      acd294(72)=-acd294(61)*acd294(38)
      acd294(73)=2.0_ki*acd294(23)
      acd294(74)=acd294(26)*acd294(73)
      acd294(75)=-acd294(1)*acd294(7)
      acd294(76)=-acd294(11)*acd294(14)
      acd294(77)=acd294(15)*acd294(61)
      acd294(78)=acd294(36)*acd294(77)
      acd294(71)=acd294(78)+acd294(76)+acd294(75)+acd294(72)+acd294(74)+acd294(&
      &71)
      acd294(71)=acd294(6)*acd294(71)
      acd294(70)=acd294(70)*acd294(15)
      acd294(72)=acd294(33)*acd294(26)
      acd294(74)=acd294(31)*acd294(7)
      acd294(75)=acd294(35)*acd294(38)
      acd294(76)=acd294(32)*acd294(14)
      acd294(70)=-acd294(72)-acd294(70)+acd294(74)+acd294(75)+acd294(76)-acd294&
      &(39)
      acd294(72)=-acd294(50)*acd294(70)
      acd294(74)=acd294(24)*acd294(73)
      acd294(75)=-acd294(1)*acd294(4)
      acd294(76)=-acd294(11)*acd294(12)
      acd294(74)=acd294(76)+acd294(74)+acd294(75)
      acd294(74)=acd294(2)*acd294(74)
      acd294(75)=-acd294(30)*acd294(12)
      acd294(76)=-acd294(57)*acd294(16)
      acd294(75)=acd294(75)+acd294(76)
      acd294(75)=acd294(32)*acd294(75)
      acd294(76)=-acd294(62)*acd294(41)
      acd294(78)=-acd294(11)*acd294(16)
      acd294(76)=acd294(76)+acd294(78)
      acd294(76)=acd294(15)*acd294(76)
      acd294(78)=acd294(48)*acd294(68)
      acd294(79)=acd294(46)*acd294(66)
      acd294(80)=acd294(44)*acd294(64)
      acd294(81)=acd294(62)*acd294(42)
      acd294(82)=-acd294(27)*acd294(73)
      acd294(83)=acd294(1)*acd294(8)
      acd294(84)=acd294(33)*acd294(30)
      acd294(85)=acd294(24)*acd294(84)
      acd294(86)=acd294(31)*acd294(30)
      acd294(87)=-acd294(4)*acd294(86)
      acd294(88)=acd294(57)*acd294(40)
      acd294(89)=-acd294(41)*acd294(88)
      acd294(90)=acd294(11)*acd294(17)
      acd294(71)=acd294(71)+acd294(72)+acd294(76)+acd294(75)+acd294(74)+acd294(&
      &90)+acd294(89)+acd294(87)+acd294(85)+acd294(83)+acd294(82)+acd294(81)+ac&
      &d294(80)+acd294(78)+acd294(79)
      acd294(71)=acd294(3)*acd294(71)
      acd294(72)=acd294(31)*acd294(4)
      acd294(74)=acd294(33)*acd294(24)
      acd294(72)=acd294(74)-acd294(72)
      acd294(72)=acd294(2)*acd294(72)
      acd294(74)=-acd294(40)*acd294(41)
      acd294(75)=-acd294(32)*acd294(16)
      acd294(74)=acd294(74)+acd294(75)
      acd294(74)=acd294(15)*acd294(74)
      acd294(75)=acd294(48)*acd294(47)
      acd294(76)=acd294(46)*acd294(45)
      acd294(78)=acd294(44)*acd294(43)
      acd294(79)=acd294(40)*acd294(42)
      acd294(80)=-acd294(33)*acd294(27)
      acd294(81)=acd294(31)*acd294(8)
      acd294(82)=-acd294(2)*acd294(12)
      acd294(82)=acd294(17)+acd294(82)
      acd294(82)=acd294(32)*acd294(82)
      acd294(72)=acd294(74)+acd294(82)+acd294(72)+acd294(81)+acd294(80)+acd294(&
      &79)+acd294(78)+acd294(76)-acd294(49)+acd294(75)
      acd294(72)=acd294(34)*acd294(72)
      acd294(70)=-acd294(34)*acd294(70)
      acd294(74)=-acd294(59)*acd294(53)
      acd294(75)=-acd294(57)*acd294(51)
      acd294(74)=acd294(74)+acd294(75)
      acd294(74)=acd294(35)*acd294(74)
      acd294(75)=acd294(20)*acd294(53)
      acd294(75)=acd294(75)-acd294(55)
      acd294(76)=-acd294(61)*acd294(75)
      acd294(78)=acd294(59)*acd294(54)
      acd294(79)=-acd294(28)*acd294(73)
      acd294(80)=acd294(1)*acd294(9)
      acd294(81)=acd294(57)*acd294(52)
      acd294(82)=acd294(11)*acd294(18)
      acd294(77)=-acd294(51)*acd294(77)
      acd294(70)=acd294(70)+acd294(77)+acd294(74)+acd294(82)+acd294(81)+acd294(&
      &80)+acd294(79)+acd294(78)+acd294(76)
      acd294(70)=acd294(6)*acd294(70)
      acd294(74)=acd294(20)*acd294(54)
      acd294(76)=-acd294(33)*acd294(28)
      acd294(77)=acd294(31)*acd294(9)
      acd294(75)=-acd294(35)*acd294(75)
      acd294(78)=acd294(32)*acd294(18)
      acd294(79)=-acd294(35)*acd294(51)
      acd294(79)=acd294(52)+acd294(79)
      acd294(79)=acd294(15)*acd294(79)
      acd294(74)=acd294(79)+acd294(78)+acd294(75)+acd294(77)+acd294(76)-acd294(&
      &56)+acd294(74)
      acd294(74)=acd294(50)*acd294(74)
      acd294(75)=-acd294(25)*acd294(73)
      acd294(76)=acd294(1)*acd294(5)
      acd294(77)=acd294(11)*acd294(13)
      acd294(75)=acd294(77)+acd294(75)+acd294(76)
      acd294(75)=acd294(2)*acd294(75)
      acd294(76)=acd294(59)*acd294(21)
      acd294(77)=acd294(30)*acd294(13)
      acd294(78)=acd294(57)*acd294(19)
      acd294(76)=acd294(78)+acd294(76)+acd294(77)
      acd294(76)=acd294(32)*acd294(76)
      acd294(77)=acd294(62)*acd294(58)
      acd294(78)=acd294(11)*acd294(19)
      acd294(77)=acd294(77)+acd294(78)
      acd294(77)=acd294(15)*acd294(77)
      acd294(78)=acd294(20)*acd294(60)
      acd294(78)=acd294(78)-acd294(63)
      acd294(78)=acd294(62)*acd294(78)
      acd294(79)=-acd294(68)*acd294(69)
      acd294(80)=-acd294(66)*acd294(67)
      acd294(81)=-acd294(64)*acd294(65)
      acd294(82)=acd294(40)*acd294(59)*acd294(60)
      acd294(73)=acd294(29)*acd294(73)
      acd294(83)=-acd294(1)*acd294(10)
      acd294(84)=-acd294(25)*acd294(84)
      acd294(85)=acd294(5)*acd294(86)
      acd294(86)=acd294(58)*acd294(88)
      acd294(87)=acd294(20)*acd294(21)
      acd294(87)=-acd294(22)+acd294(87)
      acd294(87)=acd294(11)*acd294(87)
      brack=acd294(70)+acd294(71)+acd294(72)+acd294(73)+acd294(74)+acd294(75)+a&
      &cd294(76)+acd294(77)+acd294(78)+acd294(79)+acd294(80)+acd294(81)+acd294(&
      &82)+acd294(83)+acd294(84)+acd294(85)+acd294(86)+acd294(87)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd294h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(95) :: acd294
      complex(ki) :: brack
      acd294(1)=d(iv1,iv2)
      acd294(2)=dotproduct(qshift,spvak4k2)
      acd294(3)=dotproduct(qshift,spvak7k2)
      acd294(4)=abb294(21)
      acd294(5)=abb294(36)
      acd294(6)=dotproduct(qshift,spval6k2)
      acd294(7)=abb294(15)
      acd294(8)=abb294(45)
      acd294(9)=abb294(24)
      acd294(10)=abb294(74)
      acd294(11)=k2(iv1)
      acd294(12)=spvak4k2(iv2)
      acd294(13)=abb294(18)
      acd294(14)=abb294(30)
      acd294(15)=spvak7k2(iv2)
      acd294(16)=abb294(22)
      acd294(17)=abb294(88)
      acd294(18)=spval6k2(iv2)
      acd294(19)=abb294(32)
      acd294(20)=k2(iv2)
      acd294(21)=spvak4k2(iv1)
      acd294(22)=spvak7k2(iv1)
      acd294(23)=spval6k2(iv1)
      acd294(24)=l6(iv1)
      acd294(25)=abb294(51)
      acd294(26)=abb294(40)
      acd294(27)=abb294(19)
      acd294(28)=dotproduct(qshift,spvak1k2)
      acd294(29)=abb294(46)
      acd294(30)=abb294(83)
      acd294(31)=abb294(31)
      acd294(32)=spvak1k2(iv2)
      acd294(33)=abb294(28)
      acd294(34)=spval5k2(iv2)
      acd294(35)=abb294(41)
      acd294(36)=l6(iv2)
      acd294(37)=spvak1k2(iv1)
      acd294(38)=spval5k2(iv1)
      acd294(39)=qshift(iv1)
      acd294(40)=qshift(iv2)
      acd294(41)=dotproduct(k2,qshift)
      acd294(42)=dotproduct(l6,qshift)
      acd294(43)=dotproduct(qshift,qshift)
      acd294(44)=dotproduct(qshift,spvak4k3)
      acd294(45)=abb294(11)
      acd294(46)=abb294(17)
      acd294(47)=abb294(44)
      acd294(48)=abb294(13)
      acd294(49)=dotproduct(qshift,spval6k3)
      acd294(50)=abb294(10)
      acd294(51)=spvak4k3(iv2)
      acd294(52)=spval6k3(iv2)
      acd294(53)=abb294(90)
      acd294(54)=spval6k1(iv2)
      acd294(55)=abb294(39)
      acd294(56)=spval6l5(iv2)
      acd294(57)=abb294(82)
      acd294(58)=spval6k7(iv2)
      acd294(59)=abb294(38)
      acd294(60)=spvak4k3(iv1)
      acd294(61)=spval6k3(iv1)
      acd294(62)=spval6k1(iv1)
      acd294(63)=spval6l5(iv1)
      acd294(64)=spval6k7(iv1)
      acd294(65)=abb294(42)
      acd294(66)=abb294(37)
      acd294(67)=abb294(35)
      acd294(68)=abb294(33)
      acd294(69)=dotproduct(qshift,spval5k2)
      acd294(70)=abb294(43)
      acd294(71)=abb294(12)
      acd294(72)=abb294(27)
      acd294(73)=acd294(28)*acd294(45)
      acd294(73)=acd294(73)-acd294(47)
      acd294(74)=-acd294(51)*acd294(73)
      acd294(75)=acd294(20)*acd294(16)
      acd294(76)=acd294(36)*acd294(27)
      acd294(77)=acd294(44)*acd294(45)
      acd294(77)=acd294(77)-acd294(46)
      acd294(78)=acd294(77)*acd294(32)
      acd294(79)=2.0_ki*acd294(40)
      acd294(80)=acd294(79)*acd294(7)
      acd294(74)=-acd294(78)+acd294(75)-acd294(80)+acd294(76)+acd294(74)
      acd294(75)=-acd294(6)*acd294(74)
      acd294(76)=acd294(27)*acd294(42)
      acd294(78)=acd294(16)*acd294(41)
      acd294(80)=acd294(7)*acd294(43)
      acd294(81)=acd294(77)*acd294(28)
      acd294(82)=acd294(44)*acd294(47)
      acd294(76)=-acd294(81)+acd294(76)+acd294(82)-acd294(48)+acd294(78)-acd294&
      &(80)
      acd294(78)=-acd294(18)*acd294(76)
      acd294(80)=acd294(25)*acd294(42)
      acd294(81)=acd294(13)*acd294(41)
      acd294(82)=acd294(4)*acd294(43)
      acd294(80)=-acd294(82)+acd294(80)+acd294(81)
      acd294(81)=-acd294(12)*acd294(80)
      acd294(82)=acd294(20)*acd294(13)
      acd294(83)=acd294(79)*acd294(4)
      acd294(82)=acd294(82)-acd294(83)
      acd294(83)=-acd294(2)*acd294(82)
      acd294(84)=acd294(50)*acd294(49)
      acd294(85)=acd294(29)*acd294(42)
      acd294(84)=acd294(84)+acd294(85)
      acd294(85)=-acd294(32)*acd294(84)
      acd294(86)=acd294(50)*acd294(52)
      acd294(87)=acd294(36)*acd294(29)
      acd294(86)=acd294(86)+acd294(87)
      acd294(87)=-acd294(28)*acd294(86)
      acd294(88)=acd294(59)*acd294(58)
      acd294(89)=acd294(57)*acd294(56)
      acd294(90)=acd294(55)*acd294(54)
      acd294(91)=acd294(52)*acd294(53)
      acd294(92)=-acd294(8)*acd294(79)
      acd294(93)=acd294(20)*acd294(17)
      acd294(94)=acd294(2)*acd294(25)
      acd294(94)=acd294(94)-acd294(30)
      acd294(95)=-acd294(36)*acd294(94)
      acd294(75)=acd294(78)+acd294(75)+acd294(87)+acd294(85)+acd294(95)+acd294(&
      &81)+acd294(83)+acd294(93)+acd294(92)+acd294(91)+acd294(90)+acd294(88)+ac&
      &d294(89)
      acd294(75)=acd294(22)*acd294(75)
      acd294(73)=-acd294(60)*acd294(73)
      acd294(78)=acd294(11)*acd294(16)
      acd294(81)=acd294(24)*acd294(27)
      acd294(77)=acd294(77)*acd294(37)
      acd294(83)=2.0_ki*acd294(39)
      acd294(85)=acd294(83)*acd294(7)
      acd294(73)=-acd294(77)+acd294(78)-acd294(85)+acd294(81)+acd294(73)
      acd294(77)=-acd294(6)*acd294(73)
      acd294(76)=-acd294(23)*acd294(76)
      acd294(78)=-acd294(21)*acd294(80)
      acd294(80)=acd294(11)*acd294(13)
      acd294(81)=acd294(83)*acd294(4)
      acd294(80)=acd294(80)-acd294(81)
      acd294(81)=-acd294(2)*acd294(80)
      acd294(84)=-acd294(37)*acd294(84)
      acd294(85)=acd294(50)*acd294(61)
      acd294(87)=acd294(24)*acd294(29)
      acd294(85)=acd294(85)+acd294(87)
      acd294(87)=-acd294(28)*acd294(85)
      acd294(88)=acd294(59)*acd294(64)
      acd294(89)=acd294(57)*acd294(63)
      acd294(90)=acd294(55)*acd294(62)
      acd294(91)=acd294(61)*acd294(53)
      acd294(92)=-acd294(8)*acd294(83)
      acd294(93)=acd294(11)*acd294(17)
      acd294(94)=-acd294(24)*acd294(94)
      acd294(76)=acd294(76)+acd294(77)+acd294(87)+acd294(84)+acd294(94)+acd294(&
      &78)+acd294(81)+acd294(93)+acd294(92)+acd294(91)+acd294(90)+acd294(88)+ac&
      &d294(89)
      acd294(76)=acd294(15)*acd294(76)
      acd294(74)=-acd294(23)*acd294(74)
      acd294(73)=-acd294(18)*acd294(73)
      acd294(77)=-acd294(36)*acd294(25)
      acd294(77)=acd294(77)-acd294(82)
      acd294(77)=acd294(21)*acd294(77)
      acd294(78)=-acd294(24)*acd294(25)
      acd294(78)=acd294(78)-acd294(80)
      acd294(78)=acd294(12)*acd294(78)
      acd294(80)=-acd294(37)*acd294(86)
      acd294(81)=-acd294(32)*acd294(85)
      acd294(82)=acd294(32)*acd294(60)
      acd294(84)=acd294(37)*acd294(51)
      acd294(84)=acd294(82)+acd294(84)
      acd294(84)=acd294(45)*acd294(84)
      acd294(85)=2.0_ki*acd294(7)
      acd294(85)=acd294(1)*acd294(85)
      acd294(84)=acd294(85)+acd294(84)
      acd294(84)=acd294(6)*acd294(84)
      acd294(85)=acd294(2)*acd294(4)
      acd294(85)=-acd294(8)+acd294(85)
      acd294(85)=acd294(1)*acd294(85)
      acd294(73)=acd294(73)+acd294(74)+acd294(84)+acd294(81)+acd294(80)+2.0_ki*&
      &acd294(85)+acd294(78)+acd294(77)
      acd294(73)=acd294(3)*acd294(73)
      acd294(74)=acd294(28)*acd294(65)
      acd294(77)=acd294(67)*acd294(69)
      acd294(74)=acd294(74)+acd294(77)-acd294(70)
      acd294(77)=-acd294(51)*acd294(74)
      acd294(78)=acd294(44)*acd294(67)
      acd294(78)=acd294(78)-acd294(68)
      acd294(80)=-acd294(34)*acd294(78)
      acd294(81)=-acd294(9)*acd294(79)
      acd294(84)=acd294(20)*acd294(19)
      acd294(85)=acd294(36)*acd294(31)
      acd294(86)=acd294(44)*acd294(65)
      acd294(86)=acd294(86)-acd294(66)
      acd294(87)=-acd294(32)*acd294(86)
      acd294(77)=acd294(87)+acd294(85)+acd294(84)+acd294(81)+acd294(80)+acd294(&
      &77)
      acd294(77)=acd294(23)*acd294(77)
      acd294(74)=-acd294(60)*acd294(74)
      acd294(78)=-acd294(38)*acd294(78)
      acd294(80)=-acd294(9)*acd294(83)
      acd294(81)=acd294(11)*acd294(19)
      acd294(84)=acd294(24)*acd294(31)
      acd294(85)=-acd294(37)*acd294(86)
      acd294(74)=acd294(85)+acd294(84)+acd294(81)+acd294(80)+acd294(78)+acd294(&
      &74)
      acd294(74)=acd294(18)*acd294(74)
      acd294(78)=-acd294(67)*acd294(38)
      acd294(80)=-acd294(37)*acd294(65)
      acd294(78)=acd294(80)+acd294(78)
      acd294(78)=acd294(51)*acd294(78)
      acd294(80)=2.0_ki*acd294(1)
      acd294(81)=-acd294(9)*acd294(80)
      acd294(84)=-acd294(60)*acd294(67)*acd294(34)
      acd294(82)=-acd294(65)*acd294(82)
      acd294(78)=acd294(82)+acd294(81)+acd294(84)+acd294(78)
      acd294(78)=acd294(6)*acd294(78)
      acd294(81)=acd294(38)*acd294(52)
      acd294(82)=acd294(34)*acd294(61)
      acd294(81)=acd294(81)+acd294(82)
      acd294(81)=acd294(72)*acd294(81)
      acd294(82)=-acd294(2)*acd294(5)
      acd294(82)=acd294(82)+acd294(10)
      acd294(80)=acd294(80)*acd294(82)
      acd294(79)=-acd294(5)*acd294(79)
      acd294(82)=acd294(20)*acd294(14)
      acd294(79)=acd294(79)+acd294(82)
      acd294(79)=acd294(21)*acd294(79)
      acd294(82)=-acd294(5)*acd294(83)
      acd294(83)=acd294(11)*acd294(14)
      acd294(82)=acd294(82)+acd294(83)
      acd294(82)=acd294(12)*acd294(82)
      acd294(83)=acd294(38)*acd294(35)
      acd294(84)=acd294(21)*acd294(26)
      acd294(83)=acd294(83)+acd294(84)
      acd294(83)=acd294(36)*acd294(83)
      acd294(84)=acd294(34)*acd294(35)
      acd294(85)=acd294(12)*acd294(26)
      acd294(84)=acd294(84)+acd294(85)
      acd294(84)=acd294(24)*acd294(84)
      acd294(85)=acd294(52)*acd294(71)
      acd294(86)=acd294(36)*acd294(33)
      acd294(85)=acd294(85)+acd294(86)
      acd294(85)=acd294(37)*acd294(85)
      acd294(86)=acd294(61)*acd294(71)
      acd294(87)=acd294(24)*acd294(33)
      acd294(86)=acd294(86)+acd294(87)
      acd294(86)=acd294(32)*acd294(86)
      brack=acd294(73)+acd294(74)+acd294(75)+acd294(76)+acd294(77)+acd294(78)+a&
      &cd294(79)+acd294(80)+acd294(81)+acd294(82)+acd294(83)+acd294(84)+acd294(&
      &85)+acd294(86)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd294h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd294
      complex(ki) :: brack
      acd294(1)=d(iv1,iv2)
      acd294(2)=spvak4k2(iv3)
      acd294(3)=dotproduct(qshift,spvak7k2)
      acd294(4)=abb294(21)
      acd294(5)=abb294(36)
      acd294(6)=spvak7k2(iv3)
      acd294(7)=dotproduct(qshift,spvak4k2)
      acd294(8)=dotproduct(qshift,spval6k2)
      acd294(9)=abb294(15)
      acd294(10)=abb294(45)
      acd294(11)=spval6k2(iv3)
      acd294(12)=abb294(24)
      acd294(13)=d(iv1,iv3)
      acd294(14)=spvak4k2(iv2)
      acd294(15)=spvak7k2(iv2)
      acd294(16)=spval6k2(iv2)
      acd294(17)=d(iv2,iv3)
      acd294(18)=spvak4k2(iv1)
      acd294(19)=spvak7k2(iv1)
      acd294(20)=spval6k2(iv1)
      acd294(21)=k2(iv1)
      acd294(22)=abb294(18)
      acd294(23)=abb294(22)
      acd294(24)=k2(iv2)
      acd294(25)=k2(iv3)
      acd294(26)=l6(iv1)
      acd294(27)=abb294(51)
      acd294(28)=abb294(19)
      acd294(29)=spvak1k2(iv3)
      acd294(30)=abb294(46)
      acd294(31)=spvak1k2(iv2)
      acd294(32)=l6(iv2)
      acd294(33)=spvak1k2(iv1)
      acd294(34)=l6(iv3)
      acd294(35)=qshift(iv1)
      acd294(36)=qshift(iv2)
      acd294(37)=qshift(iv3)
      acd294(38)=dotproduct(qshift,spvak4k3)
      acd294(39)=abb294(11)
      acd294(40)=abb294(17)
      acd294(41)=spvak4k3(iv3)
      acd294(42)=dotproduct(qshift,spvak1k2)
      acd294(43)=abb294(44)
      acd294(44)=spvak4k3(iv2)
      acd294(45)=spval6k3(iv3)
      acd294(46)=abb294(10)
      acd294(47)=spval6k3(iv2)
      acd294(48)=spvak4k3(iv1)
      acd294(49)=spval6k3(iv1)
      acd294(50)=abb294(42)
      acd294(51)=spval5k2(iv3)
      acd294(52)=abb294(35)
      acd294(53)=spval5k2(iv2)
      acd294(54)=spval5k2(iv1)
      acd294(55)=acd294(28)*acd294(34)
      acd294(56)=acd294(23)*acd294(25)
      acd294(57)=acd294(41)*acd294(43)
      acd294(58)=acd294(29)*acd294(40)
      acd294(59)=2.0_ki*acd294(9)
      acd294(60)=acd294(59)*acd294(37)
      acd294(55)=acd294(55)+acd294(57)+acd294(58)+acd294(56)-acd294(60)
      acd294(56)=-acd294(16)*acd294(55)
      acd294(57)=acd294(28)*acd294(32)
      acd294(58)=acd294(23)*acd294(24)
      acd294(60)=acd294(44)*acd294(43)
      acd294(61)=acd294(31)*acd294(40)
      acd294(62)=acd294(59)*acd294(36)
      acd294(57)=acd294(57)+acd294(61)-acd294(62)+acd294(58)+acd294(60)
      acd294(58)=-acd294(11)*acd294(57)
      acd294(60)=acd294(31)*acd294(41)
      acd294(61)=acd294(29)*acd294(44)
      acd294(60)=acd294(60)+acd294(61)
      acd294(61)=acd294(8)*acd294(60)
      acd294(62)=acd294(41)*acd294(42)
      acd294(63)=acd294(29)*acd294(38)
      acd294(62)=acd294(62)+acd294(63)
      acd294(63)=acd294(16)*acd294(62)
      acd294(64)=acd294(44)*acd294(42)
      acd294(65)=acd294(31)*acd294(38)
      acd294(64)=acd294(64)+acd294(65)
      acd294(65)=acd294(11)*acd294(64)
      acd294(61)=acd294(65)+acd294(63)+acd294(61)
      acd294(61)=acd294(39)*acd294(61)
      acd294(63)=acd294(17)*acd294(7)
      acd294(65)=acd294(14)*acd294(37)
      acd294(66)=acd294(2)*acd294(36)
      acd294(63)=acd294(66)+acd294(63)+acd294(65)
      acd294(65)=2.0_ki*acd294(4)
      acd294(63)=acd294(63)*acd294(65)
      acd294(66)=acd294(27)*acd294(34)
      acd294(67)=acd294(22)*acd294(25)
      acd294(66)=acd294(66)+acd294(67)
      acd294(67)=-acd294(14)*acd294(66)
      acd294(68)=acd294(27)*acd294(32)
      acd294(69)=acd294(22)*acd294(24)
      acd294(68)=acd294(68)+acd294(69)
      acd294(69)=-acd294(2)*acd294(68)
      acd294(70)=acd294(46)*acd294(45)
      acd294(71)=acd294(30)*acd294(34)
      acd294(70)=acd294(70)+acd294(71)
      acd294(71)=-acd294(31)*acd294(70)
      acd294(72)=acd294(46)*acd294(47)
      acd294(73)=acd294(30)*acd294(32)
      acd294(72)=acd294(72)+acd294(73)
      acd294(73)=-acd294(29)*acd294(72)
      acd294(74)=2.0_ki*acd294(17)
      acd294(75)=-acd294(10)*acd294(74)
      acd294(76)=acd294(59)*acd294(8)
      acd294(77)=acd294(17)*acd294(76)
      acd294(56)=acd294(61)+acd294(58)+acd294(56)+acd294(73)+acd294(71)+acd294(&
      &63)+acd294(77)+acd294(69)+acd294(75)+acd294(67)
      acd294(56)=acd294(19)*acd294(56)
      acd294(55)=-acd294(20)*acd294(55)
      acd294(58)=acd294(26)*acd294(28)
      acd294(61)=acd294(23)*acd294(21)
      acd294(63)=acd294(48)*acd294(43)
      acd294(67)=acd294(33)*acd294(40)
      acd294(69)=acd294(59)*acd294(35)
      acd294(58)=acd294(58)+acd294(67)-acd294(69)+acd294(61)+acd294(63)
      acd294(61)=-acd294(11)*acd294(58)
      acd294(63)=acd294(33)*acd294(41)
      acd294(67)=acd294(29)*acd294(48)
      acd294(63)=acd294(63)+acd294(67)
      acd294(67)=acd294(8)*acd294(63)
      acd294(62)=acd294(20)*acd294(62)
      acd294(69)=acd294(48)*acd294(42)
      acd294(71)=acd294(33)*acd294(38)
      acd294(69)=acd294(69)+acd294(71)
      acd294(71)=acd294(11)*acd294(69)
      acd294(62)=acd294(71)+acd294(62)+acd294(67)
      acd294(62)=acd294(39)*acd294(62)
      acd294(67)=acd294(13)*acd294(7)
      acd294(71)=acd294(18)*acd294(37)
      acd294(73)=acd294(2)*acd294(35)
      acd294(67)=acd294(73)+acd294(67)+acd294(71)
      acd294(67)=acd294(67)*acd294(65)
      acd294(66)=-acd294(18)*acd294(66)
      acd294(71)=acd294(26)*acd294(27)
      acd294(73)=acd294(22)*acd294(21)
      acd294(71)=acd294(71)+acd294(73)
      acd294(73)=-acd294(2)*acd294(71)
      acd294(70)=-acd294(33)*acd294(70)
      acd294(75)=acd294(46)*acd294(49)
      acd294(77)=acd294(26)*acd294(30)
      acd294(75)=acd294(75)+acd294(77)
      acd294(77)=-acd294(29)*acd294(75)
      acd294(78)=2.0_ki*acd294(13)
      acd294(79)=-acd294(10)*acd294(78)
      acd294(80)=acd294(13)*acd294(76)
      acd294(55)=acd294(62)+acd294(61)+acd294(55)+acd294(77)+acd294(70)+acd294(&
      &67)+acd294(80)+acd294(73)+acd294(79)+acd294(66)
      acd294(55)=acd294(15)*acd294(55)
      acd294(57)=-acd294(20)*acd294(57)
      acd294(58)=-acd294(16)*acd294(58)
      acd294(61)=acd294(33)*acd294(44)
      acd294(62)=acd294(31)*acd294(48)
      acd294(61)=acd294(61)+acd294(62)
      acd294(62)=acd294(8)*acd294(61)
      acd294(64)=acd294(20)*acd294(64)
      acd294(66)=acd294(16)*acd294(69)
      acd294(62)=acd294(66)+acd294(64)+acd294(62)
      acd294(62)=acd294(39)*acd294(62)
      acd294(64)=acd294(1)*acd294(7)
      acd294(66)=acd294(18)*acd294(36)
      acd294(67)=acd294(14)*acd294(35)
      acd294(64)=acd294(67)+acd294(64)+acd294(66)
      acd294(64)=acd294(64)*acd294(65)
      acd294(65)=-acd294(18)*acd294(68)
      acd294(66)=-acd294(14)*acd294(71)
      acd294(67)=-acd294(33)*acd294(72)
      acd294(68)=-acd294(31)*acd294(75)
      acd294(69)=2.0_ki*acd294(1)
      acd294(70)=-acd294(10)*acd294(69)
      acd294(71)=acd294(1)*acd294(76)
      acd294(57)=acd294(62)+acd294(58)+acd294(57)+acd294(68)+acd294(67)+acd294(&
      &64)+acd294(71)+acd294(66)+acd294(70)+acd294(65)
      acd294(57)=acd294(6)*acd294(57)
      acd294(58)=-acd294(44)*acd294(51)
      acd294(62)=-acd294(41)*acd294(53)
      acd294(58)=acd294(62)+acd294(58)
      acd294(58)=acd294(52)*acd294(58)
      acd294(62)=-acd294(50)*acd294(60)
      acd294(64)=-acd294(12)*acd294(74)
      acd294(59)=acd294(59)*acd294(3)
      acd294(65)=acd294(17)*acd294(59)
      acd294(58)=acd294(65)+acd294(64)+acd294(62)+acd294(58)
      acd294(58)=acd294(20)*acd294(58)
      acd294(62)=-acd294(48)*acd294(51)
      acd294(64)=-acd294(41)*acd294(54)
      acd294(62)=acd294(64)+acd294(62)
      acd294(62)=acd294(52)*acd294(62)
      acd294(64)=-acd294(50)*acd294(63)
      acd294(65)=-acd294(12)*acd294(78)
      acd294(66)=acd294(13)*acd294(59)
      acd294(62)=acd294(66)+acd294(65)+acd294(64)+acd294(62)
      acd294(62)=acd294(16)*acd294(62)
      acd294(64)=-acd294(48)*acd294(53)
      acd294(65)=-acd294(44)*acd294(54)
      acd294(64)=acd294(65)+acd294(64)
      acd294(64)=acd294(52)*acd294(64)
      acd294(65)=-acd294(50)*acd294(61)
      acd294(66)=-acd294(12)*acd294(69)
      acd294(59)=acd294(1)*acd294(59)
      acd294(59)=acd294(59)+acd294(66)+acd294(65)+acd294(64)
      acd294(59)=acd294(11)*acd294(59)
      acd294(60)=acd294(20)*acd294(60)
      acd294(63)=acd294(16)*acd294(63)
      acd294(61)=acd294(11)*acd294(61)
      acd294(60)=acd294(61)+acd294(60)+acd294(63)
      acd294(60)=acd294(39)*acd294(3)*acd294(60)
      acd294(61)=acd294(18)*acd294(17)
      acd294(63)=acd294(14)*acd294(13)
      acd294(64)=acd294(2)*acd294(1)
      acd294(61)=acd294(64)+acd294(61)+acd294(63)
      acd294(63)=acd294(3)*acd294(4)
      acd294(63)=acd294(63)-acd294(5)
      acd294(61)=acd294(61)*acd294(63)
      brack=acd294(55)+acd294(56)+acd294(57)+acd294(58)+acd294(59)+acd294(60)+2&
      &.0_ki*acd294(61)+acd294(62)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd294h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd294
      complex(ki) :: brack
      acd294(1)=d(iv1,iv2)
      acd294(2)=spvak4k2(iv3)
      acd294(3)=spvak7k2(iv4)
      acd294(4)=abb294(21)
      acd294(5)=spvak4k2(iv4)
      acd294(6)=spvak7k2(iv3)
      acd294(7)=spval6k2(iv4)
      acd294(8)=abb294(15)
      acd294(9)=spval6k2(iv3)
      acd294(10)=d(iv1,iv3)
      acd294(11)=spvak4k2(iv2)
      acd294(12)=spvak7k2(iv2)
      acd294(13)=spval6k2(iv2)
      acd294(14)=d(iv1,iv4)
      acd294(15)=d(iv2,iv3)
      acd294(16)=spvak4k2(iv1)
      acd294(17)=spvak7k2(iv1)
      acd294(18)=spval6k2(iv1)
      acd294(19)=d(iv2,iv4)
      acd294(20)=d(iv3,iv4)
      acd294(21)=spvak1k2(iv3)
      acd294(22)=spvak4k3(iv4)
      acd294(23)=abb294(11)
      acd294(24)=spvak1k2(iv4)
      acd294(25)=spvak4k3(iv3)
      acd294(26)=spvak1k2(iv2)
      acd294(27)=spvak4k3(iv2)
      acd294(28)=spvak1k2(iv1)
      acd294(29)=spvak4k3(iv1)
      acd294(30)=acd294(24)*acd294(25)
      acd294(31)=acd294(21)*acd294(22)
      acd294(30)=acd294(30)+acd294(31)
      acd294(31)=acd294(13)*acd294(30)
      acd294(32)=acd294(24)*acd294(27)
      acd294(33)=acd294(22)*acd294(26)
      acd294(32)=acd294(32)+acd294(33)
      acd294(33)=acd294(9)*acd294(32)
      acd294(34)=acd294(25)*acd294(26)
      acd294(35)=acd294(21)*acd294(27)
      acd294(34)=acd294(34)+acd294(35)
      acd294(35)=acd294(7)*acd294(34)
      acd294(31)=acd294(35)+acd294(31)+acd294(33)
      acd294(31)=acd294(17)*acd294(31)
      acd294(30)=acd294(18)*acd294(30)
      acd294(33)=acd294(24)*acd294(29)
      acd294(35)=acd294(22)*acd294(28)
      acd294(33)=acd294(33)+acd294(35)
      acd294(35)=acd294(9)*acd294(33)
      acd294(36)=acd294(25)*acd294(28)
      acd294(37)=acd294(21)*acd294(29)
      acd294(36)=acd294(36)+acd294(37)
      acd294(37)=acd294(7)*acd294(36)
      acd294(30)=acd294(37)+acd294(30)+acd294(35)
      acd294(30)=acd294(12)*acd294(30)
      acd294(32)=acd294(18)*acd294(32)
      acd294(33)=acd294(13)*acd294(33)
      acd294(35)=acd294(27)*acd294(28)
      acd294(37)=acd294(26)*acd294(29)
      acd294(35)=acd294(35)+acd294(37)
      acd294(37)=acd294(7)*acd294(35)
      acd294(32)=acd294(37)+acd294(32)+acd294(33)
      acd294(32)=acd294(6)*acd294(32)
      acd294(33)=acd294(18)*acd294(34)
      acd294(34)=acd294(13)*acd294(36)
      acd294(35)=acd294(9)*acd294(35)
      acd294(33)=acd294(35)+acd294(33)+acd294(34)
      acd294(33)=acd294(3)*acd294(33)
      acd294(30)=acd294(33)+acd294(32)+acd294(31)+acd294(30)
      acd294(30)=acd294(23)*acd294(30)
      acd294(31)=acd294(13)*acd294(20)
      acd294(32)=acd294(9)*acd294(19)
      acd294(33)=acd294(7)*acd294(15)
      acd294(31)=acd294(33)+acd294(31)+acd294(32)
      acd294(31)=acd294(17)*acd294(31)
      acd294(32)=acd294(18)*acd294(20)
      acd294(33)=acd294(9)*acd294(14)
      acd294(34)=acd294(7)*acd294(10)
      acd294(32)=acd294(34)+acd294(32)+acd294(33)
      acd294(32)=acd294(12)*acd294(32)
      acd294(33)=acd294(18)*acd294(19)
      acd294(34)=acd294(13)*acd294(14)
      acd294(35)=acd294(7)*acd294(1)
      acd294(33)=acd294(35)+acd294(33)+acd294(34)
      acd294(33)=acd294(6)*acd294(33)
      acd294(31)=acd294(33)+acd294(31)+acd294(32)
      acd294(31)=acd294(8)*acd294(31)
      acd294(32)=acd294(20)*acd294(11)
      acd294(33)=acd294(19)*acd294(2)
      acd294(34)=acd294(15)*acd294(5)
      acd294(32)=acd294(34)+acd294(32)+acd294(33)
      acd294(32)=acd294(17)*acd294(32)
      acd294(33)=acd294(20)*acd294(16)
      acd294(34)=acd294(14)*acd294(2)
      acd294(35)=acd294(10)*acd294(5)
      acd294(33)=acd294(35)+acd294(33)+acd294(34)
      acd294(33)=acd294(12)*acd294(33)
      acd294(34)=acd294(19)*acd294(16)
      acd294(35)=acd294(14)*acd294(11)
      acd294(36)=acd294(1)*acd294(5)
      acd294(34)=acd294(36)+acd294(34)+acd294(35)
      acd294(34)=acd294(6)*acd294(34)
      acd294(32)=acd294(34)+acd294(32)+acd294(33)
      acd294(32)=acd294(4)*acd294(32)
      acd294(33)=acd294(18)*acd294(15)
      acd294(34)=acd294(13)*acd294(10)
      acd294(35)=acd294(9)*acd294(1)
      acd294(33)=acd294(35)+acd294(33)+acd294(34)
      acd294(33)=acd294(8)*acd294(33)
      acd294(34)=acd294(15)*acd294(16)
      acd294(35)=acd294(10)*acd294(11)
      acd294(36)=acd294(1)*acd294(2)
      acd294(34)=acd294(36)+acd294(34)+acd294(35)
      acd294(34)=acd294(4)*acd294(34)
      acd294(33)=acd294(33)+acd294(34)
      acd294(33)=acd294(3)*acd294(33)
      acd294(31)=acd294(33)+acd294(32)+acd294(31)
      brack=acd294(30)+2.0_ki*acd294(31)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd294h4
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
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
      if(present(i4)) then
          iv4=i4
          deg=4
      else
          iv4=1
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
      if(deg.eq.4) then
         numerator = cond(epspow.eq.t1,brack_5,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d294:
   subroutine     reconstruct_d294(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_294:
      coeffs%coeffs_294%c0 = derivative(czip)
      coeffs%coeffs_294%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_294%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_294%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_294%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_294%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_294%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_294%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_294%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_294%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_294%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_294%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_294%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_294%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_294%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_294%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_294%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_294%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_294%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_294%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_294%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_294%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_294%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_294%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_294%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_294%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_294%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_294%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_294%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_294%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_294%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_294%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_294%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_294%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_294%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_294%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_294%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_294%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_294%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_294%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_294%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_294%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_294%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_294%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_294%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_294%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_294%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_294%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_294%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_294%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_294%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_294%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_294%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_294%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_294%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_294%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_294%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_294%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_294%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_294%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_294%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_294%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_294%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_294%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_294%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_294%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_294%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_294%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_294%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_294%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_294:
   end subroutine reconstruct_d294
!---#] subroutine reconstruct_d294:
end module     p0_dbaru_epnebbbarg_d294h4l1d
