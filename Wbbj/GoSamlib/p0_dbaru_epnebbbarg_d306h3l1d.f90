module     p0_dbaru_epnebbbarg_d306h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d306h3l1d.f90
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
   public :: derivative , reconstruct_d306
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd306h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd306
      complex(ki) :: brack
      acd306(1)=dotproduct(k2,qshift)
      acd306(2)=abb306(13)
      acd306(3)=dotproduct(l5,qshift)
      acd306(4)=abb306(39)
      acd306(5)=dotproduct(k7,qshift)
      acd306(6)=abb306(38)
      acd306(7)=dotproduct(qshift,qshift)
      acd306(8)=abb306(55)
      acd306(9)=dotproduct(qshift,spvak1l5)
      acd306(10)=dotproduct(qshift,spvak2k7)
      acd306(11)=abb306(22)
      acd306(12)=dotproduct(qshift,spvak4l5)
      acd306(13)=abb306(43)
      acd306(14)=abb306(10)
      acd306(15)=dotproduct(qshift,spvak1l6)
      acd306(16)=abb306(14)
      acd306(17)=dotproduct(qshift,spvak1k7)
      acd306(18)=abb306(48)
      acd306(19)=dotproduct(qshift,spvak4l6)
      acd306(20)=abb306(34)
      acd306(21)=dotproduct(qshift,spvak4k7)
      acd306(22)=abb306(77)
      acd306(23)=abb306(26)
      acd306(24)=abb306(42)
      acd306(25)=abb306(74)
      acd306(26)=abb306(63)
      acd306(27)=abb306(20)
      acd306(28)=abb306(54)
      acd306(29)=abb306(21)
      acd306(30)=abb306(45)
      acd306(31)=abb306(19)
      acd306(32)=abb306(11)
      acd306(33)=abb306(40)
      acd306(34)=abb306(24)
      acd306(35)=abb306(18)
      acd306(36)=dotproduct(qshift,spvak1k2)
      acd306(37)=dotproduct(qshift,spvak2l5)
      acd306(38)=abb306(16)
      acd306(39)=dotproduct(qshift,spvak2l6)
      acd306(40)=abb306(17)
      acd306(41)=abb306(12)
      acd306(42)=dotproduct(qshift,spvak4k2)
      acd306(43)=abb306(23)
      acd306(44)=abb306(47)
      acd306(45)=abb306(46)
      acd306(46)=abb306(44)
      acd306(47)=dotproduct(qshift,spvak7k2)
      acd306(48)=abb306(32)
      acd306(49)=abb306(31)
      acd306(50)=abb306(15)
      acd306(51)=abb306(33)
      acd306(52)=abb306(78)
      acd306(53)=abb306(73)
      acd306(54)=abb306(25)
      acd306(55)=abb306(59)
      acd306(56)=-acd306(39)*acd306(40)
      acd306(57)=-acd306(37)*acd306(38)
      acd306(56)=acd306(57)+acd306(41)+acd306(56)
      acd306(56)=acd306(36)*acd306(56)
      acd306(57)=-acd306(12)*acd306(13)
      acd306(58)=-acd306(9)*acd306(11)
      acd306(57)=acd306(58)+acd306(14)+acd306(57)
      acd306(57)=acd306(1)*acd306(57)
      acd306(58)=acd306(47)*acd306(48)
      acd306(59)=acd306(12)*acd306(33)
      acd306(60)=acd306(9)*acd306(29)
      acd306(61)=-acd306(39)*acd306(45)
      acd306(61)=acd306(46)+acd306(61)
      acd306(61)=acd306(42)*acd306(61)
      acd306(62)=-acd306(42)*acd306(43)
      acd306(62)=acd306(44)+acd306(62)
      acd306(62)=acd306(37)*acd306(62)
      acd306(63)=acd306(21)*acd306(35)
      acd306(64)=acd306(19)*acd306(34)
      acd306(65)=acd306(17)*acd306(32)
      acd306(66)=acd306(15)*acd306(31)
      acd306(67)=-acd306(7)*acd306(27)
      acd306(68)=acd306(3)*acd306(24)
      acd306(69)=acd306(10)*acd306(30)
      acd306(56)=acd306(69)+acd306(57)+acd306(68)+acd306(67)+acd306(66)+acd306(&
      &65)+acd306(64)+acd306(63)+acd306(56)+acd306(62)+acd306(61)+acd306(60)+ac&
      &d306(59)-acd306(49)+acd306(58)
      acd306(56)=acd306(10)*acd306(56)
      acd306(57)=acd306(5)*acd306(6)
      acd306(58)=acd306(21)*acd306(22)
      acd306(59)=acd306(19)*acd306(20)
      acd306(60)=acd306(17)*acd306(18)
      acd306(61)=acd306(15)*acd306(16)
      acd306(62)=-acd306(7)*acd306(8)
      acd306(63)=acd306(3)*acd306(4)
      acd306(64)=acd306(1)*acd306(2)
      acd306(57)=acd306(64)+acd306(63)+acd306(62)+acd306(61)+acd306(60)+acd306(&
      &59)+acd306(58)-acd306(23)+acd306(57)
      acd306(57)=acd306(1)*acd306(57)
      acd306(58)=-acd306(47)*acd306(54)
      acd306(59)=-acd306(5)*acd306(26)
      acd306(60)=-acd306(21)*acd306(53)
      acd306(61)=-acd306(19)*acd306(52)
      acd306(62)=-acd306(17)*acd306(51)
      acd306(63)=-acd306(15)*acd306(50)
      acd306(64)=acd306(7)*acd306(28)
      acd306(65)=-acd306(3)*acd306(25)
      brack=acd306(55)+acd306(56)+acd306(57)+acd306(58)+acd306(59)+acd306(60)+a&
      &cd306(61)+acd306(62)+acd306(63)+acd306(64)+acd306(65)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd306h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(91) :: acd306
      complex(ki) :: brack
      acd306(1)=k2(iv1)
      acd306(2)=dotproduct(k2,qshift)
      acd306(3)=abb306(13)
      acd306(4)=dotproduct(l5,qshift)
      acd306(5)=abb306(39)
      acd306(6)=dotproduct(k7,qshift)
      acd306(7)=abb306(38)
      acd306(8)=dotproduct(qshift,qshift)
      acd306(9)=abb306(55)
      acd306(10)=dotproduct(qshift,spvak1l5)
      acd306(11)=dotproduct(qshift,spvak2k7)
      acd306(12)=abb306(22)
      acd306(13)=dotproduct(qshift,spvak4l5)
      acd306(14)=abb306(43)
      acd306(15)=abb306(10)
      acd306(16)=dotproduct(qshift,spvak1l6)
      acd306(17)=abb306(14)
      acd306(18)=dotproduct(qshift,spvak1k7)
      acd306(19)=abb306(48)
      acd306(20)=dotproduct(qshift,spvak4l6)
      acd306(21)=abb306(34)
      acd306(22)=dotproduct(qshift,spvak4k7)
      acd306(23)=abb306(77)
      acd306(24)=abb306(26)
      acd306(25)=l5(iv1)
      acd306(26)=abb306(42)
      acd306(27)=abb306(74)
      acd306(28)=k7(iv1)
      acd306(29)=abb306(63)
      acd306(30)=qshift(iv1)
      acd306(31)=abb306(20)
      acd306(32)=abb306(54)
      acd306(33)=spvak1l5(iv1)
      acd306(34)=abb306(21)
      acd306(35)=spvak2k7(iv1)
      acd306(36)=abb306(45)
      acd306(37)=abb306(19)
      acd306(38)=abb306(11)
      acd306(39)=abb306(40)
      acd306(40)=abb306(24)
      acd306(41)=abb306(18)
      acd306(42)=dotproduct(qshift,spvak1k2)
      acd306(43)=dotproduct(qshift,spvak2l5)
      acd306(44)=abb306(16)
      acd306(45)=dotproduct(qshift,spvak2l6)
      acd306(46)=abb306(17)
      acd306(47)=abb306(12)
      acd306(48)=dotproduct(qshift,spvak4k2)
      acd306(49)=abb306(23)
      acd306(50)=abb306(47)
      acd306(51)=abb306(46)
      acd306(52)=abb306(44)
      acd306(53)=dotproduct(qshift,spvak7k2)
      acd306(54)=abb306(32)
      acd306(55)=abb306(31)
      acd306(56)=spvak1l6(iv1)
      acd306(57)=abb306(15)
      acd306(58)=spvak1k7(iv1)
      acd306(59)=abb306(33)
      acd306(60)=spvak4l5(iv1)
      acd306(61)=spvak4l6(iv1)
      acd306(62)=abb306(78)
      acd306(63)=spvak4k7(iv1)
      acd306(64)=abb306(73)
      acd306(65)=spvak1k2(iv1)
      acd306(66)=spvak2l5(iv1)
      acd306(67)=spvak2l6(iv1)
      acd306(68)=spvak4k2(iv1)
      acd306(69)=spvak7k2(iv1)
      acd306(70)=abb306(25)
      acd306(71)=-acd306(51)*acd306(68)
      acd306(72)=-acd306(46)*acd306(65)
      acd306(71)=acd306(71)+acd306(72)
      acd306(71)=acd306(45)*acd306(71)
      acd306(72)=-acd306(51)*acd306(67)
      acd306(73)=-acd306(49)*acd306(66)
      acd306(72)=acd306(72)+acd306(73)
      acd306(72)=acd306(48)*acd306(72)
      acd306(73)=-acd306(49)*acd306(68)
      acd306(74)=-acd306(44)*acd306(65)
      acd306(73)=acd306(73)+acd306(74)
      acd306(73)=acd306(43)*acd306(73)
      acd306(74)=-acd306(46)*acd306(67)
      acd306(75)=-acd306(44)*acd306(66)
      acd306(74)=acd306(74)+acd306(75)
      acd306(74)=acd306(42)*acd306(74)
      acd306(75)=acd306(13)*acd306(14)
      acd306(76)=acd306(10)*acd306(12)
      acd306(75)=-acd306(15)+acd306(75)+acd306(76)
      acd306(76)=-acd306(1)*acd306(75)
      acd306(77)=-acd306(14)*acd306(60)
      acd306(78)=-acd306(12)*acd306(33)
      acd306(77)=acd306(77)+acd306(78)
      acd306(77)=acd306(2)*acd306(77)
      acd306(78)=acd306(54)*acd306(69)
      acd306(79)=acd306(39)*acd306(60)
      acd306(80)=acd306(33)*acd306(34)
      acd306(81)=acd306(68)*acd306(52)
      acd306(82)=acd306(66)*acd306(50)
      acd306(83)=acd306(65)*acd306(47)
      acd306(84)=acd306(63)*acd306(41)
      acd306(85)=acd306(61)*acd306(40)
      acd306(86)=acd306(58)*acd306(38)
      acd306(87)=acd306(56)*acd306(37)
      acd306(88)=2.0_ki*acd306(30)
      acd306(89)=-acd306(31)*acd306(88)
      acd306(90)=acd306(25)*acd306(26)
      acd306(91)=acd306(35)*acd306(36)
      acd306(71)=2.0_ki*acd306(91)+acd306(77)+acd306(76)+acd306(74)+acd306(73)+&
      &acd306(72)+acd306(71)+acd306(90)+acd306(89)+acd306(87)+acd306(86)+acd306&
      &(85)+acd306(84)+acd306(83)+acd306(82)+acd306(81)+acd306(80)+acd306(78)+a&
      &cd306(79)
      acd306(71)=acd306(11)*acd306(71)
      acd306(72)=-acd306(45)*acd306(46)
      acd306(73)=-acd306(43)*acd306(44)
      acd306(72)=acd306(73)+acd306(47)+acd306(72)
      acd306(72)=acd306(42)*acd306(72)
      acd306(73)=-acd306(2)*acd306(75)
      acd306(74)=acd306(54)*acd306(53)
      acd306(75)=acd306(22)*acd306(41)
      acd306(76)=acd306(20)*acd306(40)
      acd306(77)=acd306(18)*acd306(38)
      acd306(78)=acd306(16)*acd306(37)
      acd306(79)=-acd306(8)*acd306(31)
      acd306(80)=acd306(4)*acd306(26)
      acd306(81)=acd306(13)*acd306(39)
      acd306(82)=acd306(10)*acd306(34)
      acd306(83)=-acd306(45)*acd306(51)
      acd306(83)=acd306(52)+acd306(83)
      acd306(83)=acd306(48)*acd306(83)
      acd306(84)=-acd306(48)*acd306(49)
      acd306(84)=acd306(50)+acd306(84)
      acd306(84)=acd306(43)*acd306(84)
      acd306(72)=acd306(73)+acd306(72)+acd306(84)+acd306(83)+acd306(82)+acd306(&
      &81)+acd306(80)+acd306(79)+acd306(78)+acd306(77)+acd306(76)+acd306(75)-ac&
      &d306(55)+acd306(74)
      acd306(72)=acd306(35)*acd306(72)
      acd306(73)=acd306(7)*acd306(28)
      acd306(74)=acd306(63)*acd306(23)
      acd306(75)=acd306(61)*acd306(21)
      acd306(76)=acd306(58)*acd306(19)
      acd306(77)=acd306(56)*acd306(17)
      acd306(78)=-acd306(9)*acd306(88)
      acd306(79)=acd306(25)*acd306(5)
      acd306(80)=acd306(1)*acd306(3)
      acd306(73)=2.0_ki*acd306(80)+acd306(79)+acd306(78)+acd306(77)+acd306(76)+&
      &acd306(75)+acd306(73)+acd306(74)
      acd306(73)=acd306(2)*acd306(73)
      acd306(74)=acd306(22)*acd306(23)
      acd306(75)=acd306(20)*acd306(21)
      acd306(76)=acd306(18)*acd306(19)
      acd306(77)=acd306(16)*acd306(17)
      acd306(78)=-acd306(8)*acd306(9)
      acd306(79)=acd306(7)*acd306(6)
      acd306(80)=acd306(4)*acd306(5)
      acd306(74)=acd306(80)+acd306(79)+acd306(78)+acd306(77)+acd306(76)+acd306(&
      &75)-acd306(24)+acd306(74)
      acd306(74)=acd306(1)*acd306(74)
      acd306(75)=-acd306(69)*acd306(70)
      acd306(76)=-acd306(28)*acd306(29)
      acd306(77)=-acd306(63)*acd306(64)
      acd306(78)=-acd306(61)*acd306(62)
      acd306(79)=-acd306(58)*acd306(59)
      acd306(80)=-acd306(56)*acd306(57)
      acd306(81)=acd306(32)*acd306(88)
      acd306(82)=-acd306(25)*acd306(27)
      brack=acd306(71)+acd306(72)+acd306(73)+acd306(74)+acd306(75)+acd306(76)+a&
      &cd306(77)+acd306(78)+acd306(79)+acd306(80)+acd306(81)+acd306(82)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd306h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(94) :: acd306
      complex(ki) :: brack
      acd306(1)=d(iv1,iv2)
      acd306(2)=dotproduct(k2,qshift)
      acd306(3)=abb306(55)
      acd306(4)=dotproduct(qshift,spvak2k7)
      acd306(5)=abb306(20)
      acd306(6)=abb306(54)
      acd306(7)=k2(iv1)
      acd306(8)=k2(iv2)
      acd306(9)=abb306(13)
      acd306(10)=l5(iv2)
      acd306(11)=abb306(39)
      acd306(12)=k7(iv2)
      acd306(13)=abb306(38)
      acd306(14)=qshift(iv2)
      acd306(15)=spvak2k7(iv2)
      acd306(16)=dotproduct(qshift,spvak1l5)
      acd306(17)=abb306(22)
      acd306(18)=dotproduct(qshift,spvak4l5)
      acd306(19)=abb306(43)
      acd306(20)=abb306(10)
      acd306(21)=spvak1l5(iv2)
      acd306(22)=spvak1l6(iv2)
      acd306(23)=abb306(14)
      acd306(24)=spvak1k7(iv2)
      acd306(25)=abb306(48)
      acd306(26)=spvak4l5(iv2)
      acd306(27)=spvak4l6(iv2)
      acd306(28)=abb306(34)
      acd306(29)=spvak4k7(iv2)
      acd306(30)=abb306(77)
      acd306(31)=l5(iv1)
      acd306(32)=k7(iv1)
      acd306(33)=qshift(iv1)
      acd306(34)=spvak2k7(iv1)
      acd306(35)=spvak1l5(iv1)
      acd306(36)=spvak1l6(iv1)
      acd306(37)=spvak1k7(iv1)
      acd306(38)=spvak4l5(iv1)
      acd306(39)=spvak4l6(iv1)
      acd306(40)=spvak4k7(iv1)
      acd306(41)=abb306(42)
      acd306(42)=abb306(45)
      acd306(43)=abb306(21)
      acd306(44)=abb306(19)
      acd306(45)=abb306(11)
      acd306(46)=abb306(40)
      acd306(47)=abb306(24)
      acd306(48)=abb306(18)
      acd306(49)=spvak1k2(iv2)
      acd306(50)=dotproduct(qshift,spvak2l5)
      acd306(51)=abb306(16)
      acd306(52)=dotproduct(qshift,spvak2l6)
      acd306(53)=abb306(17)
      acd306(54)=abb306(12)
      acd306(55)=spvak2l5(iv2)
      acd306(56)=dotproduct(qshift,spvak1k2)
      acd306(57)=dotproduct(qshift,spvak4k2)
      acd306(58)=abb306(23)
      acd306(59)=abb306(47)
      acd306(60)=spvak2l6(iv2)
      acd306(61)=abb306(46)
      acd306(62)=spvak4k2(iv2)
      acd306(63)=abb306(44)
      acd306(64)=spvak7k2(iv2)
      acd306(65)=abb306(32)
      acd306(66)=spvak1k2(iv1)
      acd306(67)=spvak2l5(iv1)
      acd306(68)=spvak2l6(iv1)
      acd306(69)=spvak4k2(iv1)
      acd306(70)=spvak7k2(iv1)
      acd306(71)=acd306(31)*acd306(11)
      acd306(72)=acd306(36)*acd306(23)
      acd306(73)=acd306(37)*acd306(25)
      acd306(74)=acd306(39)*acd306(28)
      acd306(75)=acd306(40)*acd306(30)
      acd306(76)=acd306(9)*acd306(7)
      acd306(77)=acd306(32)*acd306(13)
      acd306(71)=acd306(77)+2.0_ki*acd306(76)+acd306(75)+acd306(74)+acd306(73)+&
      &acd306(72)+acd306(71)
      acd306(71)=acd306(8)*acd306(71)
      acd306(72)=acd306(11)*acd306(10)
      acd306(73)=acd306(23)*acd306(22)
      acd306(74)=acd306(25)*acd306(24)
      acd306(75)=acd306(28)*acd306(27)
      acd306(76)=acd306(30)*acd306(29)
      acd306(77)=acd306(12)*acd306(13)
      acd306(72)=acd306(77)+acd306(76)+acd306(75)+acd306(74)+acd306(73)+acd306(&
      &72)
      acd306(72)=acd306(7)*acd306(72)
      acd306(73)=-acd306(3)*acd306(7)
      acd306(74)=-acd306(5)*acd306(34)
      acd306(73)=acd306(73)+acd306(74)
      acd306(73)=acd306(14)*acd306(73)
      acd306(74)=-acd306(3)*acd306(8)
      acd306(75)=-acd306(5)*acd306(15)
      acd306(74)=acd306(74)+acd306(75)
      acd306(74)=acd306(33)*acd306(74)
      acd306(75)=acd306(42)*acd306(34)*acd306(15)
      acd306(73)=acd306(75)+acd306(73)+acd306(74)
      acd306(74)=-acd306(66)*acd306(51)
      acd306(75)=-acd306(69)*acd306(58)
      acd306(74)=acd306(75)+acd306(74)
      acd306(74)=acd306(55)*acd306(74)
      acd306(75)=-acd306(49)*acd306(51)
      acd306(76)=-acd306(62)*acd306(58)
      acd306(75)=acd306(75)+acd306(76)
      acd306(75)=acd306(67)*acd306(75)
      acd306(74)=acd306(75)+acd306(74)
      acd306(74)=acd306(4)*acd306(74)
      acd306(75)=-acd306(21)*acd306(17)
      acd306(76)=-acd306(26)*acd306(19)
      acd306(75)=acd306(76)+acd306(75)
      acd306(76)=acd306(7)*acd306(4)
      acd306(77)=acd306(2)*acd306(34)
      acd306(76)=acd306(76)+acd306(77)
      acd306(75)=acd306(76)*acd306(75)
      acd306(76)=-acd306(35)*acd306(17)
      acd306(77)=-acd306(38)*acd306(19)
      acd306(76)=acd306(77)+acd306(76)
      acd306(77)=acd306(8)*acd306(4)
      acd306(78)=acd306(2)*acd306(15)
      acd306(77)=acd306(77)+acd306(78)
      acd306(76)=acd306(77)*acd306(76)
      acd306(77)=-acd306(56)*acd306(51)
      acd306(78)=-acd306(57)*acd306(58)
      acd306(77)=acd306(59)+acd306(78)+acd306(77)
      acd306(78)=acd306(55)*acd306(34)
      acd306(79)=acd306(67)*acd306(15)
      acd306(78)=acd306(78)+acd306(79)
      acd306(77)=acd306(78)*acd306(77)
      acd306(78)=-acd306(16)*acd306(17)
      acd306(79)=-acd306(18)*acd306(19)
      acd306(78)=acd306(20)+acd306(79)+acd306(78)
      acd306(79)=acd306(7)*acd306(15)
      acd306(80)=acd306(8)*acd306(34)
      acd306(79)=acd306(79)+acd306(80)
      acd306(78)=acd306(79)*acd306(78)
      acd306(79)=acd306(49)*acd306(34)
      acd306(80)=acd306(66)*acd306(15)
      acd306(79)=acd306(79)+acd306(80)
      acd306(80)=-acd306(51)*acd306(79)
      acd306(81)=acd306(62)*acd306(34)
      acd306(82)=acd306(69)*acd306(15)
      acd306(81)=acd306(81)+acd306(82)
      acd306(82)=-acd306(58)*acd306(81)
      acd306(80)=acd306(82)+acd306(80)
      acd306(80)=acd306(50)*acd306(80)
      acd306(82)=-acd306(53)*acd306(79)
      acd306(83)=-acd306(61)*acd306(81)
      acd306(82)=acd306(83)+acd306(82)
      acd306(82)=acd306(52)*acd306(82)
      acd306(83)=-acd306(66)*acd306(4)
      acd306(84)=-acd306(56)*acd306(34)
      acd306(83)=acd306(84)+acd306(83)
      acd306(83)=acd306(53)*acd306(83)
      acd306(84)=acd306(61)*acd306(4)
      acd306(85)=-acd306(69)*acd306(84)
      acd306(86)=acd306(57)*acd306(61)
      acd306(87)=-acd306(34)*acd306(86)
      acd306(83)=acd306(87)+acd306(85)+acd306(83)
      acd306(83)=acd306(60)*acd306(83)
      acd306(85)=-acd306(49)*acd306(4)
      acd306(87)=-acd306(56)*acd306(15)
      acd306(85)=acd306(87)+acd306(85)
      acd306(85)=acd306(53)*acd306(85)
      acd306(84)=-acd306(62)*acd306(84)
      acd306(86)=-acd306(15)*acd306(86)
      acd306(84)=acd306(86)+acd306(84)+acd306(85)
      acd306(84)=acd306(68)*acd306(84)
      acd306(85)=acd306(64)*acd306(34)
      acd306(86)=acd306(70)*acd306(15)
      acd306(85)=acd306(86)+acd306(85)
      acd306(85)=acd306(65)*acd306(85)
      acd306(86)=-acd306(3)*acd306(2)
      acd306(87)=-acd306(5)*acd306(4)
      acd306(86)=acd306(6)+acd306(87)+acd306(86)
      acd306(87)=2.0_ki*acd306(1)
      acd306(86)=acd306(87)*acd306(86)
      acd306(87)=acd306(10)*acd306(34)
      acd306(88)=acd306(31)*acd306(15)
      acd306(87)=acd306(87)+acd306(88)
      acd306(87)=acd306(41)*acd306(87)
      acd306(88)=acd306(21)*acd306(34)
      acd306(89)=acd306(35)*acd306(15)
      acd306(88)=acd306(88)+acd306(89)
      acd306(88)=acd306(43)*acd306(88)
      acd306(89)=acd306(22)*acd306(34)
      acd306(90)=acd306(36)*acd306(15)
      acd306(89)=acd306(89)+acd306(90)
      acd306(89)=acd306(44)*acd306(89)
      acd306(90)=acd306(24)*acd306(34)
      acd306(91)=acd306(37)*acd306(15)
      acd306(90)=acd306(90)+acd306(91)
      acd306(90)=acd306(45)*acd306(90)
      acd306(91)=acd306(26)*acd306(34)
      acd306(92)=acd306(38)*acd306(15)
      acd306(91)=acd306(91)+acd306(92)
      acd306(91)=acd306(46)*acd306(91)
      acd306(92)=acd306(27)*acd306(34)
      acd306(93)=acd306(39)*acd306(15)
      acd306(92)=acd306(92)+acd306(93)
      acd306(92)=acd306(47)*acd306(92)
      acd306(93)=acd306(29)*acd306(34)
      acd306(94)=acd306(40)*acd306(15)
      acd306(93)=acd306(93)+acd306(94)
      acd306(93)=acd306(48)*acd306(93)
      acd306(79)=acd306(54)*acd306(79)
      acd306(81)=acd306(63)*acd306(81)
      brack=acd306(71)+acd306(72)+2.0_ki*acd306(73)+acd306(74)+acd306(75)+acd30&
      &6(76)+acd306(77)+acd306(78)+acd306(79)+acd306(80)+acd306(81)+acd306(82)+&
      &acd306(83)+acd306(84)+acd306(85)+acd306(86)+acd306(87)+acd306(88)+acd306&
      &(89)+acd306(90)+acd306(91)+acd306(92)+acd306(93)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd306h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd306
      complex(ki) :: brack
      acd306(1)=d(iv1,iv2)
      acd306(2)=k2(iv3)
      acd306(3)=abb306(55)
      acd306(4)=spvak2k7(iv3)
      acd306(5)=abb306(20)
      acd306(6)=d(iv1,iv3)
      acd306(7)=k2(iv2)
      acd306(8)=spvak2k7(iv2)
      acd306(9)=d(iv2,iv3)
      acd306(10)=k2(iv1)
      acd306(11)=spvak2k7(iv1)
      acd306(12)=spvak1l5(iv3)
      acd306(13)=abb306(22)
      acd306(14)=spvak4l5(iv3)
      acd306(15)=abb306(43)
      acd306(16)=spvak1l5(iv2)
      acd306(17)=spvak4l5(iv2)
      acd306(18)=spvak1l5(iv1)
      acd306(19)=spvak4l5(iv1)
      acd306(20)=spvak1k2(iv2)
      acd306(21)=spvak2l5(iv3)
      acd306(22)=abb306(16)
      acd306(23)=spvak2l6(iv3)
      acd306(24)=abb306(17)
      acd306(25)=spvak1k2(iv3)
      acd306(26)=spvak2l5(iv2)
      acd306(27)=spvak2l6(iv2)
      acd306(28)=spvak4k2(iv3)
      acd306(29)=abb306(23)
      acd306(30)=spvak4k2(iv2)
      acd306(31)=abb306(46)
      acd306(32)=spvak1k2(iv1)
      acd306(33)=spvak2l5(iv1)
      acd306(34)=spvak2l6(iv1)
      acd306(35)=spvak4k2(iv1)
      acd306(36)=acd306(26)*acd306(22)
      acd306(37)=acd306(27)*acd306(24)
      acd306(36)=acd306(36)+acd306(37)
      acd306(37)=-acd306(36)*acd306(25)
      acd306(38)=acd306(21)*acd306(22)
      acd306(39)=acd306(23)*acd306(24)
      acd306(38)=acd306(38)+acd306(39)
      acd306(39)=-acd306(38)*acd306(20)
      acd306(40)=acd306(26)*acd306(29)
      acd306(41)=acd306(27)*acd306(31)
      acd306(40)=acd306(40)+acd306(41)
      acd306(41)=-acd306(28)*acd306(40)
      acd306(42)=acd306(21)*acd306(29)
      acd306(43)=acd306(23)*acd306(31)
      acd306(42)=acd306(42)+acd306(43)
      acd306(43)=-acd306(30)*acd306(42)
      acd306(37)=acd306(43)+acd306(41)+acd306(39)+acd306(37)
      acd306(37)=acd306(11)*acd306(37)
      acd306(39)=-acd306(3)*acd306(2)
      acd306(41)=-acd306(5)*acd306(4)
      acd306(39)=acd306(39)+acd306(41)
      acd306(39)=acd306(1)*acd306(39)
      acd306(41)=-acd306(3)*acd306(7)
      acd306(43)=-acd306(5)*acd306(8)
      acd306(41)=acd306(41)+acd306(43)
      acd306(41)=acd306(6)*acd306(41)
      acd306(43)=-acd306(3)*acd306(10)
      acd306(44)=-acd306(5)*acd306(11)
      acd306(43)=acd306(43)+acd306(44)
      acd306(43)=acd306(9)*acd306(43)
      acd306(39)=acd306(43)+acd306(39)+acd306(41)
      acd306(36)=-acd306(4)*acd306(36)
      acd306(38)=-acd306(8)*acd306(38)
      acd306(36)=acd306(38)+acd306(36)
      acd306(36)=acd306(32)*acd306(36)
      acd306(38)=acd306(20)*acd306(4)
      acd306(41)=acd306(25)*acd306(8)
      acd306(38)=acd306(38)+acd306(41)
      acd306(41)=-acd306(22)*acd306(38)
      acd306(43)=acd306(28)*acd306(8)
      acd306(44)=acd306(30)*acd306(4)
      acd306(43)=acd306(43)+acd306(44)
      acd306(44)=-acd306(29)*acd306(43)
      acd306(41)=acd306(44)+acd306(41)
      acd306(41)=acd306(33)*acd306(41)
      acd306(38)=-acd306(24)*acd306(38)
      acd306(43)=-acd306(31)*acd306(43)
      acd306(38)=acd306(43)+acd306(38)
      acd306(38)=acd306(34)*acd306(38)
      acd306(40)=-acd306(4)*acd306(40)
      acd306(42)=-acd306(8)*acd306(42)
      acd306(40)=acd306(42)+acd306(40)
      acd306(40)=acd306(35)*acd306(40)
      acd306(42)=acd306(7)*acd306(13)
      acd306(43)=-acd306(11)*acd306(42)
      acd306(44)=acd306(10)*acd306(13)
      acd306(45)=-acd306(8)*acd306(44)
      acd306(43)=acd306(43)+acd306(45)
      acd306(43)=acd306(12)*acd306(43)
      acd306(45)=acd306(7)*acd306(15)
      acd306(46)=-acd306(11)*acd306(45)
      acd306(47)=acd306(10)*acd306(15)
      acd306(48)=-acd306(8)*acd306(47)
      acd306(46)=acd306(46)+acd306(48)
      acd306(46)=acd306(14)*acd306(46)
      acd306(48)=acd306(2)*acd306(13)
      acd306(49)=-acd306(11)*acd306(48)
      acd306(44)=-acd306(4)*acd306(44)
      acd306(44)=acd306(49)+acd306(44)
      acd306(44)=acd306(16)*acd306(44)
      acd306(49)=acd306(2)*acd306(15)
      acd306(50)=-acd306(11)*acd306(49)
      acd306(47)=-acd306(4)*acd306(47)
      acd306(47)=acd306(50)+acd306(47)
      acd306(47)=acd306(17)*acd306(47)
      acd306(48)=-acd306(8)*acd306(48)
      acd306(42)=-acd306(4)*acd306(42)
      acd306(42)=acd306(48)+acd306(42)
      acd306(42)=acd306(18)*acd306(42)
      acd306(48)=-acd306(8)*acd306(49)
      acd306(45)=-acd306(4)*acd306(45)
      acd306(45)=acd306(48)+acd306(45)
      acd306(45)=acd306(19)*acd306(45)
      brack=acd306(36)+acd306(37)+acd306(38)+2.0_ki*acd306(39)+acd306(40)+acd30&
      &6(41)+acd306(42)+acd306(43)+acd306(44)+acd306(45)+acd306(46)+acd306(47)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd306h3
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
      qshift = -k7
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
!---#[ subroutine reconstruct_d306:
   subroutine     reconstruct_d306(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group19
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group19), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_306:
      coeffs%coeffs_306%c0 = derivative(czip)
      coeffs%coeffs_306%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_306%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_306%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_306%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_306%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_306%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_306%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_306%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_306%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_306%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_306%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_306%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_306%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_306%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_306%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_306%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_306%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_306%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_306%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_306%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_306%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_306%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_306%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_306%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_306%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_306%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_306%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_306%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_306%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_306%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_306%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_306%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_306%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_306%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_306:
   end subroutine reconstruct_d306
!---#] subroutine reconstruct_d306:
end module     p0_dbaru_epnebbbarg_d306h3l1d
