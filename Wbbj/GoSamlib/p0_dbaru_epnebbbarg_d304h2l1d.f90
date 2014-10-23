module     p0_dbaru_epnebbbarg_d304h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d304h2l1d.f90
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
   public :: derivative , reconstruct_d304
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd304
      complex(ki) :: brack
      acd304(1)=dotproduct(k2,qshift)
      acd304(2)=abb304(34)
      acd304(3)=dotproduct(l6,qshift)
      acd304(4)=abb304(39)
      acd304(5)=dotproduct(qshift,qshift)
      acd304(6)=abb304(20)
      acd304(7)=dotproduct(qshift,spvak1k2)
      acd304(8)=dotproduct(qshift,spvak2k7)
      acd304(9)=abb304(13)
      acd304(10)=abb304(31)
      acd304(11)=dotproduct(qshift,spvak4k2)
      acd304(12)=abb304(41)
      acd304(13)=abb304(16)
      acd304(14)=dotproduct(qshift,spvak1l6)
      acd304(15)=abb304(14)
      acd304(16)=dotproduct(qshift,spvak2l5)
      acd304(17)=abb304(22)
      acd304(18)=dotproduct(qshift,spvak2l6)
      acd304(19)=abb304(12)
      acd304(20)=abb304(72)
      acd304(21)=dotproduct(qshift,spvak4l6)
      acd304(22)=abb304(69)
      acd304(23)=abb304(21)
      acd304(24)=abb304(28)
      acd304(25)=abb304(30)
      acd304(26)=abb304(23)
      acd304(27)=abb304(75)
      acd304(28)=abb304(66)
      acd304(29)=abb304(54)
      acd304(30)=abb304(33)
      acd304(31)=abb304(24)
      acd304(32)=abb304(76)
      acd304(33)=abb304(71)
      acd304(34)=dotproduct(qshift,spval5k2)
      acd304(35)=abb304(63)
      acd304(36)=dotproduct(qshift,spval5l6)
      acd304(37)=abb304(61)
      acd304(38)=abb304(19)
      acd304(39)=abb304(15)
      acd304(40)=abb304(26)
      acd304(41)=abb304(38)
      acd304(42)=abb304(32)
      acd304(43)=dotproduct(qshift,spval6k2)
      acd304(44)=abb304(27)
      acd304(45)=dotproduct(qshift,spvak7k2)
      acd304(46)=abb304(29)
      acd304(47)=abb304(11)
      acd304(48)=abb304(50)
      acd304(49)=abb304(65)
      acd304(50)=abb304(45)
      acd304(51)=abb304(25)
      acd304(52)=abb304(58)
      acd304(53)=dotproduct(qshift,spvak7l6)
      acd304(54)=abb304(40)
      acd304(55)=abb304(17)
      acd304(56)=-acd304(11)*acd304(12)
      acd304(57)=-acd304(7)*acd304(9)
      acd304(56)=acd304(57)+acd304(13)+acd304(56)
      acd304(56)=acd304(8)*acd304(56)
      acd304(57)=acd304(16)*acd304(17)
      acd304(58)=acd304(18)*acd304(19)
      acd304(59)=acd304(21)*acd304(22)
      acd304(60)=acd304(14)*acd304(15)
      acd304(61)=acd304(11)*acd304(20)
      acd304(62)=acd304(7)*acd304(10)
      acd304(63)=acd304(3)*acd304(4)
      acd304(64)=-acd304(5)*acd304(6)
      acd304(65)=acd304(1)*acd304(2)
      acd304(56)=acd304(65)+acd304(56)+acd304(64)+acd304(63)+acd304(62)+acd304(&
      &61)+acd304(60)+acd304(59)+acd304(58)-acd304(23)+acd304(57)
      acd304(56)=acd304(1)*acd304(56)
      acd304(57)=-acd304(36)*acd304(37)
      acd304(58)=-acd304(34)*acd304(35)
      acd304(59)=-acd304(21)*acd304(33)
      acd304(60)=-acd304(14)*acd304(31)
      acd304(61)=-acd304(11)*acd304(32)
      acd304(62)=-acd304(7)*acd304(30)
      acd304(57)=acd304(62)+acd304(61)+acd304(60)+acd304(59)+acd304(58)+acd304(&
      &38)+acd304(57)
      acd304(57)=acd304(5)*acd304(57)
      acd304(58)=acd304(5)+acd304(3)
      acd304(58)=acd304(25)*acd304(58)
      acd304(59)=acd304(43)*acd304(44)
      acd304(60)=acd304(6)*acd304(45)
      acd304(61)=acd304(34)*acd304(42)
      acd304(62)=acd304(11)*acd304(41)
      acd304(63)=acd304(7)*acd304(39)
      acd304(58)=acd304(63)+acd304(62)+acd304(61)+acd304(60)-acd304(46)+acd304(&
      &59)+acd304(58)
      acd304(58)=acd304(8)*acd304(58)
      acd304(59)=acd304(21)*acd304(28)
      acd304(60)=acd304(14)*acd304(26)
      acd304(61)=acd304(11)*acd304(27)
      acd304(62)=acd304(7)*acd304(24)
      acd304(59)=acd304(62)+acd304(61)+acd304(60)-acd304(29)+acd304(59)
      acd304(59)=acd304(3)*acd304(59)
      acd304(60)=-acd304(53)*acd304(54)
      acd304(61)=-acd304(45)*acd304(52)
      acd304(62)=-acd304(43)*acd304(51)
      acd304(63)=-acd304(36)*acd304(50)
      acd304(64)=-acd304(18)*acd304(47)
      acd304(65)=-acd304(34)*acd304(49)
      acd304(66)=-acd304(11)*acd304(48)
      acd304(67)=-acd304(7)*acd304(40)
      brack=acd304(55)+acd304(56)+acd304(57)+acd304(58)+acd304(59)+acd304(60)+a&
      &cd304(61)+acd304(62)+acd304(63)+acd304(64)+acd304(65)+acd304(66)+acd304(&
      &67)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(84) :: acd304
      complex(ki) :: brack
      acd304(1)=k2(iv1)
      acd304(2)=dotproduct(k2,qshift)
      acd304(3)=abb304(34)
      acd304(4)=dotproduct(l6,qshift)
      acd304(5)=abb304(39)
      acd304(6)=dotproduct(qshift,qshift)
      acd304(7)=abb304(20)
      acd304(8)=dotproduct(qshift,spvak1k2)
      acd304(9)=dotproduct(qshift,spvak2k7)
      acd304(10)=abb304(13)
      acd304(11)=abb304(31)
      acd304(12)=dotproduct(qshift,spvak4k2)
      acd304(13)=abb304(41)
      acd304(14)=abb304(16)
      acd304(15)=dotproduct(qshift,spvak1l6)
      acd304(16)=abb304(14)
      acd304(17)=dotproduct(qshift,spvak2l5)
      acd304(18)=abb304(22)
      acd304(19)=dotproduct(qshift,spvak2l6)
      acd304(20)=abb304(12)
      acd304(21)=abb304(72)
      acd304(22)=dotproduct(qshift,spvak4l6)
      acd304(23)=abb304(69)
      acd304(24)=abb304(21)
      acd304(25)=l6(iv1)
      acd304(26)=abb304(28)
      acd304(27)=abb304(30)
      acd304(28)=abb304(23)
      acd304(29)=abb304(75)
      acd304(30)=abb304(66)
      acd304(31)=abb304(54)
      acd304(32)=qshift(iv1)
      acd304(33)=abb304(33)
      acd304(34)=abb304(24)
      acd304(35)=abb304(76)
      acd304(36)=abb304(71)
      acd304(37)=dotproduct(qshift,spval5k2)
      acd304(38)=abb304(63)
      acd304(39)=dotproduct(qshift,spval5l6)
      acd304(40)=abb304(61)
      acd304(41)=abb304(19)
      acd304(42)=spvak1k2(iv1)
      acd304(43)=abb304(15)
      acd304(44)=abb304(26)
      acd304(45)=spvak2k7(iv1)
      acd304(46)=abb304(38)
      acd304(47)=abb304(32)
      acd304(48)=dotproduct(qshift,spval6k2)
      acd304(49)=abb304(27)
      acd304(50)=dotproduct(qshift,spvak7k2)
      acd304(51)=abb304(29)
      acd304(52)=spvak1l6(iv1)
      acd304(53)=spvak2l5(iv1)
      acd304(54)=spvak2l6(iv1)
      acd304(55)=abb304(11)
      acd304(56)=spvak4k2(iv1)
      acd304(57)=abb304(50)
      acd304(58)=spvak4l6(iv1)
      acd304(59)=spval5k2(iv1)
      acd304(60)=abb304(65)
      acd304(61)=spval5l6(iv1)
      acd304(62)=abb304(45)
      acd304(63)=spval6k2(iv1)
      acd304(64)=abb304(25)
      acd304(65)=spvak7k2(iv1)
      acd304(66)=abb304(58)
      acd304(67)=spvak7l6(iv1)
      acd304(68)=abb304(40)
      acd304(69)=acd304(12)*acd304(13)
      acd304(70)=acd304(8)*acd304(10)
      acd304(69)=-acd304(14)+acd304(69)+acd304(70)
      acd304(70)=-acd304(45)*acd304(69)
      acd304(71)=-acd304(56)*acd304(13)
      acd304(72)=-acd304(42)*acd304(10)
      acd304(71)=acd304(71)+acd304(72)
      acd304(71)=acd304(9)*acd304(71)
      acd304(72)=acd304(20)*acd304(54)
      acd304(73)=acd304(18)*acd304(53)
      acd304(74)=acd304(58)*acd304(23)
      acd304(75)=acd304(52)*acd304(16)
      acd304(76)=acd304(56)*acd304(21)
      acd304(77)=acd304(42)*acd304(11)
      acd304(78)=acd304(25)*acd304(5)
      acd304(79)=2.0_ki*acd304(32)
      acd304(80)=-acd304(7)*acd304(79)
      acd304(81)=acd304(1)*acd304(3)
      acd304(70)=2.0_ki*acd304(81)+acd304(71)+acd304(70)+acd304(80)+acd304(78)+&
      &acd304(77)+acd304(76)+acd304(75)+acd304(74)+acd304(72)+acd304(73)
      acd304(70)=acd304(2)*acd304(70)
      acd304(69)=-acd304(9)*acd304(69)
      acd304(71)=acd304(20)*acd304(19)
      acd304(72)=acd304(18)*acd304(17)
      acd304(73)=acd304(22)*acd304(23)
      acd304(74)=acd304(15)*acd304(16)
      acd304(75)=acd304(12)*acd304(21)
      acd304(76)=acd304(8)*acd304(11)
      acd304(77)=acd304(4)*acd304(5)
      acd304(78)=-acd304(6)*acd304(7)
      acd304(69)=acd304(69)+acd304(78)+acd304(77)+acd304(76)+acd304(75)+acd304(&
      &74)+acd304(73)+acd304(72)-acd304(24)+acd304(71)
      acd304(69)=acd304(1)*acd304(69)
      acd304(71)=-acd304(40)*acd304(61)
      acd304(72)=-acd304(59)*acd304(38)
      acd304(73)=-acd304(58)*acd304(36)
      acd304(74)=-acd304(52)*acd304(34)
      acd304(75)=-acd304(56)*acd304(35)
      acd304(76)=-acd304(42)*acd304(33)
      acd304(71)=acd304(76)+acd304(75)+acd304(74)+acd304(73)+acd304(71)+acd304(&
      &72)
      acd304(71)=acd304(6)*acd304(71)
      acd304(72)=-acd304(40)*acd304(39)
      acd304(73)=-acd304(37)*acd304(38)
      acd304(74)=-acd304(22)*acd304(36)
      acd304(75)=-acd304(15)*acd304(34)
      acd304(76)=-acd304(12)*acd304(35)
      acd304(77)=-acd304(8)*acd304(33)
      acd304(72)=acd304(77)+acd304(76)+acd304(75)+acd304(74)+acd304(73)+acd304(&
      &41)+acd304(72)
      acd304(72)=acd304(72)*acd304(79)
      acd304(73)=acd304(6)+acd304(4)
      acd304(73)=acd304(27)*acd304(73)
      acd304(74)=acd304(49)*acd304(48)
      acd304(75)=acd304(37)*acd304(47)
      acd304(76)=acd304(7)*acd304(50)
      acd304(77)=acd304(12)*acd304(46)
      acd304(78)=acd304(8)*acd304(43)
      acd304(73)=acd304(78)+acd304(77)+acd304(76)+acd304(75)-acd304(51)+acd304(&
      &74)+acd304(73)
      acd304(73)=acd304(45)*acd304(73)
      acd304(74)=acd304(79)+acd304(25)
      acd304(74)=acd304(27)*acd304(74)
      acd304(75)=acd304(49)*acd304(63)
      acd304(76)=acd304(59)*acd304(47)
      acd304(77)=acd304(7)*acd304(65)
      acd304(78)=acd304(56)*acd304(46)
      acd304(79)=acd304(42)*acd304(43)
      acd304(74)=acd304(79)+acd304(78)+acd304(77)+acd304(75)+acd304(76)+acd304(&
      &74)
      acd304(74)=acd304(9)*acd304(74)
      acd304(75)=acd304(58)*acd304(30)
      acd304(76)=acd304(52)*acd304(28)
      acd304(77)=acd304(56)*acd304(29)
      acd304(78)=acd304(42)*acd304(26)
      acd304(75)=acd304(78)+acd304(77)+acd304(75)+acd304(76)
      acd304(75)=acd304(4)*acd304(75)
      acd304(76)=acd304(22)*acd304(30)
      acd304(77)=acd304(15)*acd304(28)
      acd304(78)=acd304(12)*acd304(29)
      acd304(79)=acd304(8)*acd304(26)
      acd304(76)=acd304(79)+acd304(78)+acd304(77)-acd304(31)+acd304(76)
      acd304(76)=acd304(25)*acd304(76)
      acd304(77)=-acd304(67)*acd304(68)
      acd304(78)=-acd304(65)*acd304(66)
      acd304(79)=-acd304(63)*acd304(64)
      acd304(80)=-acd304(61)*acd304(62)
      acd304(81)=-acd304(54)*acd304(55)
      acd304(82)=-acd304(59)*acd304(60)
      acd304(83)=-acd304(56)*acd304(57)
      acd304(84)=-acd304(42)*acd304(44)
      brack=acd304(69)+acd304(70)+acd304(71)+acd304(72)+acd304(73)+acd304(74)+a&
      &cd304(75)+acd304(76)+acd304(77)+acd304(78)+acd304(79)+acd304(80)+acd304(&
      &81)+acd304(82)+acd304(83)+acd304(84)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd304
      complex(ki) :: brack
      acd304(1)=d(iv1,iv2)
      acd304(2)=dotproduct(k2,qshift)
      acd304(3)=abb304(20)
      acd304(4)=dotproduct(qshift,spvak1k2)
      acd304(5)=abb304(33)
      acd304(6)=dotproduct(qshift,spvak1l6)
      acd304(7)=abb304(24)
      acd304(8)=dotproduct(qshift,spvak2k7)
      acd304(9)=abb304(30)
      acd304(10)=dotproduct(qshift,spvak4k2)
      acd304(11)=abb304(76)
      acd304(12)=dotproduct(qshift,spvak4l6)
      acd304(13)=abb304(71)
      acd304(14)=dotproduct(qshift,spval5k2)
      acd304(15)=abb304(63)
      acd304(16)=dotproduct(qshift,spval5l6)
      acd304(17)=abb304(61)
      acd304(18)=abb304(19)
      acd304(19)=k2(iv1)
      acd304(20)=k2(iv2)
      acd304(21)=abb304(34)
      acd304(22)=l6(iv2)
      acd304(23)=abb304(39)
      acd304(24)=qshift(iv2)
      acd304(25)=spvak1k2(iv2)
      acd304(26)=abb304(13)
      acd304(27)=abb304(31)
      acd304(28)=spvak1l6(iv2)
      acd304(29)=abb304(14)
      acd304(30)=spvak2k7(iv2)
      acd304(31)=abb304(41)
      acd304(32)=abb304(16)
      acd304(33)=spvak4k2(iv2)
      acd304(34)=abb304(72)
      acd304(35)=spvak4l6(iv2)
      acd304(36)=abb304(69)
      acd304(37)=spvak2l5(iv2)
      acd304(38)=abb304(22)
      acd304(39)=spvak2l6(iv2)
      acd304(40)=abb304(12)
      acd304(41)=l6(iv1)
      acd304(42)=qshift(iv1)
      acd304(43)=spvak1k2(iv1)
      acd304(44)=spvak1l6(iv1)
      acd304(45)=spvak2k7(iv1)
      acd304(46)=spvak4k2(iv1)
      acd304(47)=spvak4l6(iv1)
      acd304(48)=spvak2l5(iv1)
      acd304(49)=spvak2l6(iv1)
      acd304(50)=abb304(28)
      acd304(51)=abb304(23)
      acd304(52)=abb304(75)
      acd304(53)=abb304(66)
      acd304(54)=spval5k2(iv2)
      acd304(55)=spval5l6(iv2)
      acd304(56)=spval5k2(iv1)
      acd304(57)=spval5l6(iv1)
      acd304(58)=abb304(15)
      acd304(59)=abb304(38)
      acd304(60)=abb304(32)
      acd304(61)=spval6k2(iv2)
      acd304(62)=abb304(27)
      acd304(63)=spvak7k2(iv2)
      acd304(64)=spval6k2(iv1)
      acd304(65)=spvak7k2(iv1)
      acd304(66)=acd304(31)*acd304(10)
      acd304(67)=acd304(26)*acd304(4)
      acd304(66)=acd304(66)+acd304(67)-acd304(32)
      acd304(67)=-acd304(30)*acd304(66)
      acd304(68)=acd304(40)*acd304(39)
      acd304(69)=acd304(38)*acd304(37)
      acd304(70)=acd304(35)*acd304(36)
      acd304(71)=acd304(28)*acd304(29)
      acd304(72)=acd304(33)*acd304(34)
      acd304(73)=acd304(31)*acd304(33)
      acd304(74)=-acd304(8)*acd304(73)
      acd304(75)=acd304(26)*acd304(8)
      acd304(75)=acd304(27)-acd304(75)
      acd304(75)=acd304(25)*acd304(75)
      acd304(76)=acd304(22)*acd304(23)
      acd304(77)=2.0_ki*acd304(24)
      acd304(78)=-acd304(3)*acd304(77)
      acd304(79)=acd304(20)*acd304(21)
      acd304(67)=2.0_ki*acd304(79)+acd304(67)+acd304(78)+acd304(76)+acd304(75)+&
      &acd304(74)+acd304(72)+acd304(71)+acd304(70)+acd304(68)+acd304(69)
      acd304(67)=acd304(19)*acd304(67)
      acd304(68)=acd304(31)*acd304(46)
      acd304(69)=acd304(26)*acd304(43)
      acd304(68)=acd304(68)+acd304(69)
      acd304(69)=-acd304(8)*acd304(68)
      acd304(66)=-acd304(45)*acd304(66)
      acd304(70)=acd304(40)*acd304(49)
      acd304(71)=acd304(38)*acd304(48)
      acd304(72)=acd304(47)*acd304(36)
      acd304(74)=acd304(44)*acd304(29)
      acd304(75)=acd304(46)*acd304(34)
      acd304(76)=acd304(43)*acd304(27)
      acd304(78)=acd304(41)*acd304(23)
      acd304(79)=2.0_ki*acd304(42)
      acd304(80)=-acd304(3)*acd304(79)
      acd304(66)=acd304(66)+acd304(80)+acd304(78)+acd304(76)+acd304(75)+acd304(&
      &74)+acd304(72)+acd304(70)+acd304(71)+acd304(69)
      acd304(66)=acd304(20)*acd304(66)
      acd304(69)=-acd304(17)*acd304(16)
      acd304(70)=-acd304(15)*acd304(14)
      acd304(71)=-acd304(13)*acd304(12)
      acd304(72)=-acd304(10)*acd304(11)
      acd304(74)=-acd304(7)*acd304(6)
      acd304(75)=-acd304(4)*acd304(5)
      acd304(76)=acd304(8)*acd304(9)
      acd304(78)=-acd304(2)*acd304(3)
      acd304(69)=acd304(78)+acd304(76)+acd304(75)+acd304(74)+acd304(72)+acd304(&
      &71)+acd304(70)+acd304(18)+acd304(69)
      acd304(69)=acd304(1)*acd304(69)
      acd304(70)=acd304(77)+acd304(22)
      acd304(70)=acd304(9)*acd304(70)
      acd304(71)=acd304(62)*acd304(61)
      acd304(72)=acd304(54)*acd304(60)
      acd304(74)=acd304(3)*acd304(63)
      acd304(75)=acd304(33)*acd304(59)
      acd304(73)=-acd304(2)*acd304(73)
      acd304(76)=acd304(26)*acd304(2)
      acd304(76)=acd304(58)-acd304(76)
      acd304(76)=acd304(25)*acd304(76)
      acd304(70)=acd304(76)+acd304(73)+acd304(75)+acd304(74)+acd304(71)+acd304(&
      &72)+acd304(70)
      acd304(70)=acd304(45)*acd304(70)
      acd304(68)=-acd304(2)*acd304(68)
      acd304(71)=acd304(79)+acd304(41)
      acd304(71)=acd304(9)*acd304(71)
      acd304(72)=acd304(62)*acd304(64)
      acd304(73)=acd304(56)*acd304(60)
      acd304(74)=acd304(3)*acd304(65)
      acd304(75)=acd304(46)*acd304(59)
      acd304(76)=acd304(43)*acd304(58)
      acd304(68)=acd304(76)+acd304(75)+acd304(74)+acd304(72)+acd304(73)+acd304(&
      &68)+acd304(71)
      acd304(68)=acd304(30)*acd304(68)
      acd304(71)=-acd304(17)*acd304(55)
      acd304(72)=-acd304(15)*acd304(54)
      acd304(73)=-acd304(13)*acd304(35)
      acd304(74)=-acd304(7)*acd304(28)
      acd304(75)=-acd304(33)*acd304(11)
      acd304(76)=-acd304(25)*acd304(5)
      acd304(71)=acd304(76)+acd304(75)+acd304(74)+acd304(73)+acd304(71)+acd304(&
      &72)
      acd304(71)=acd304(71)*acd304(79)
      acd304(72)=-acd304(17)*acd304(57)
      acd304(73)=-acd304(15)*acd304(56)
      acd304(74)=-acd304(13)*acd304(47)
      acd304(75)=-acd304(7)*acd304(44)
      acd304(76)=-acd304(46)*acd304(11)
      acd304(78)=-acd304(43)*acd304(5)
      acd304(72)=acd304(78)+acd304(76)+acd304(75)+acd304(74)+acd304(72)+acd304(&
      &73)
      acd304(72)=acd304(72)*acd304(77)
      acd304(73)=acd304(35)*acd304(53)
      acd304(74)=acd304(28)*acd304(51)
      acd304(75)=acd304(33)*acd304(52)
      acd304(76)=acd304(25)*acd304(50)
      acd304(73)=acd304(76)+acd304(75)+acd304(73)+acd304(74)
      acd304(73)=acd304(41)*acd304(73)
      acd304(74)=acd304(47)*acd304(53)
      acd304(75)=acd304(44)*acd304(51)
      acd304(76)=acd304(46)*acd304(52)
      acd304(77)=acd304(43)*acd304(50)
      acd304(74)=acd304(77)+acd304(76)+acd304(74)+acd304(75)
      acd304(74)=acd304(22)*acd304(74)
      brack=acd304(66)+acd304(67)+acd304(68)+2.0_ki*acd304(69)+acd304(70)+acd30&
      &4(71)+acd304(72)+acd304(73)+acd304(74)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd304
      complex(ki) :: brack
      acd304(1)=d(iv1,iv2)
      acd304(2)=k2(iv3)
      acd304(3)=abb304(20)
      acd304(4)=spvak1k2(iv3)
      acd304(5)=abb304(33)
      acd304(6)=spvak1l6(iv3)
      acd304(7)=abb304(24)
      acd304(8)=spvak2k7(iv3)
      acd304(9)=abb304(30)
      acd304(10)=spvak4k2(iv3)
      acd304(11)=abb304(76)
      acd304(12)=spvak4l6(iv3)
      acd304(13)=abb304(71)
      acd304(14)=spval5k2(iv3)
      acd304(15)=abb304(63)
      acd304(16)=spval5l6(iv3)
      acd304(17)=abb304(61)
      acd304(18)=d(iv1,iv3)
      acd304(19)=k2(iv2)
      acd304(20)=spvak1k2(iv2)
      acd304(21)=spvak1l6(iv2)
      acd304(22)=spvak2k7(iv2)
      acd304(23)=spvak4k2(iv2)
      acd304(24)=spvak4l6(iv2)
      acd304(25)=spval5k2(iv2)
      acd304(26)=spval5l6(iv2)
      acd304(27)=d(iv2,iv3)
      acd304(28)=k2(iv1)
      acd304(29)=spvak1k2(iv1)
      acd304(30)=spvak1l6(iv1)
      acd304(31)=spvak2k7(iv1)
      acd304(32)=spvak4k2(iv1)
      acd304(33)=spvak4l6(iv1)
      acd304(34)=spval5k2(iv1)
      acd304(35)=spval5l6(iv1)
      acd304(36)=abb304(13)
      acd304(37)=abb304(41)
      acd304(38)=-acd304(17)*acd304(35)
      acd304(39)=-acd304(15)*acd304(34)
      acd304(40)=-acd304(13)*acd304(33)
      acd304(41)=-acd304(11)*acd304(32)
      acd304(42)=-acd304(7)*acd304(30)
      acd304(43)=-acd304(5)*acd304(29)
      acd304(44)=acd304(31)*acd304(9)
      acd304(45)=-acd304(28)*acd304(3)
      acd304(38)=acd304(45)+acd304(44)+acd304(43)+acd304(42)+acd304(41)+acd304(&
      &40)+acd304(38)+acd304(39)
      acd304(38)=acd304(27)*acd304(38)
      acd304(39)=-acd304(17)*acd304(26)
      acd304(40)=-acd304(15)*acd304(25)
      acd304(41)=-acd304(13)*acd304(24)
      acd304(42)=-acd304(11)*acd304(23)
      acd304(43)=-acd304(7)*acd304(21)
      acd304(44)=-acd304(5)*acd304(20)
      acd304(45)=acd304(22)*acd304(9)
      acd304(46)=-acd304(19)*acd304(3)
      acd304(39)=acd304(46)+acd304(45)+acd304(44)+acd304(43)+acd304(42)+acd304(&
      &41)+acd304(39)+acd304(40)
      acd304(39)=acd304(18)*acd304(39)
      acd304(40)=-acd304(17)*acd304(16)
      acd304(41)=-acd304(15)*acd304(14)
      acd304(42)=-acd304(13)*acd304(12)
      acd304(43)=-acd304(10)*acd304(11)
      acd304(44)=-acd304(7)*acd304(6)
      acd304(45)=-acd304(4)*acd304(5)
      acd304(46)=acd304(8)*acd304(9)
      acd304(47)=-acd304(2)*acd304(3)
      acd304(40)=acd304(47)+acd304(46)+acd304(45)+acd304(44)+acd304(43)+acd304(&
      &42)+acd304(40)+acd304(41)
      acd304(40)=acd304(1)*acd304(40)
      acd304(38)=acd304(40)+acd304(38)+acd304(39)
      acd304(39)=acd304(22)*acd304(28)
      acd304(40)=acd304(19)*acd304(31)
      acd304(39)=acd304(39)+acd304(40)
      acd304(40)=-acd304(10)*acd304(39)
      acd304(41)=-acd304(28)*acd304(23)
      acd304(42)=-acd304(19)*acd304(32)
      acd304(41)=acd304(41)+acd304(42)
      acd304(41)=acd304(8)*acd304(41)
      acd304(42)=-acd304(31)*acd304(23)
      acd304(43)=-acd304(22)*acd304(32)
      acd304(42)=acd304(42)+acd304(43)
      acd304(42)=acd304(2)*acd304(42)
      acd304(40)=acd304(42)+acd304(41)+acd304(40)
      acd304(40)=acd304(37)*acd304(40)
      acd304(39)=-acd304(4)*acd304(39)
      acd304(41)=-acd304(28)*acd304(20)
      acd304(42)=-acd304(19)*acd304(29)
      acd304(41)=acd304(41)+acd304(42)
      acd304(41)=acd304(8)*acd304(41)
      acd304(42)=-acd304(31)*acd304(20)
      acd304(43)=-acd304(22)*acd304(29)
      acd304(42)=acd304(42)+acd304(43)
      acd304(42)=acd304(2)*acd304(42)
      acd304(39)=acd304(42)+acd304(41)+acd304(39)
      acd304(39)=acd304(36)*acd304(39)
      brack=2.0_ki*acd304(38)+acd304(39)+acd304(40)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd304h2
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
!---#[ subroutine reconstruct_d304:
   subroutine     reconstruct_d304(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_304:
      coeffs%coeffs_304%c0 = derivative(czip)
      coeffs%coeffs_304%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_304%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_304%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_304%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_304%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_304%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_304%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_304%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_304%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_304%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_304%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_304%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_304%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_304%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_304%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_304%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_304%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_304%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_304%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_304%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_304%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_304%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_304%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_304%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_304%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_304%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_304%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_304%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_304%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_304%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_304%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_304%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_304%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_304%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_304:
   end subroutine reconstruct_d304
!---#] subroutine reconstruct_d304:
end module     p0_dbaru_epnebbbarg_d304h2l1d
