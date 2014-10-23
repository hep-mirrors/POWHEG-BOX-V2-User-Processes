module     p0_dbaru_epnebbbarg_d303h5l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d303h5l1d.f90
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
   public :: derivative , reconstruct_d303
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd303
      complex(ki) :: brack
      acd303(1)=dotproduct(k2,qshift)
      acd303(2)=dotproduct(qshift,spvak1k2)
      acd303(3)=dotproduct(qshift,spvak7k2)
      acd303(4)=abb303(10)
      acd303(5)=abb303(39)
      acd303(6)=dotproduct(qshift,spvak4k2)
      acd303(7)=abb303(13)
      acd303(8)=abb303(26)
      acd303(9)=abb303(43)
      acd303(10)=dotproduct(qshift,spval6k2)
      acd303(11)=abb303(20)
      acd303(12)=abb303(37)
      acd303(13)=dotproduct(l5,qshift)
      acd303(14)=abb303(19)
      acd303(15)=abb303(31)
      acd303(16)=dotproduct(k7,qshift)
      acd303(17)=abb303(16)
      acd303(18)=abb303(40)
      acd303(19)=dotproduct(qshift,qshift)
      acd303(20)=abb303(28)
      acd303(21)=abb303(36)
      acd303(22)=dotproduct(qshift,spval6l5)
      acd303(23)=abb303(15)
      acd303(24)=abb303(24)
      acd303(25)=abb303(44)
      acd303(26)=abb303(25)
      acd303(27)=abb303(17)
      acd303(28)=abb303(12)
      acd303(29)=dotproduct(qshift,spvak1l5)
      acd303(30)=dotproduct(qshift,spvak4l5)
      acd303(31)=abb303(21)
      acd303(32)=abb303(38)
      acd303(33)=abb303(23)
      acd303(34)=abb303(18)
      acd303(35)=dotproduct(qshift,spval6k7)
      acd303(36)=abb303(11)
      acd303(37)=abb303(42)
      acd303(38)=abb303(30)
      acd303(39)=dotproduct(qshift,spvak7l5)
      acd303(40)=abb303(32)
      acd303(41)=abb303(14)
      acd303(42)=abb303(34)
      acd303(43)=abb303(35)
      acd303(44)=abb303(41)
      acd303(45)=dotproduct(qshift,spval5k2)
      acd303(46)=abb303(33)
      acd303(47)=abb303(29)
      acd303(48)=abb303(22)
      acd303(49)=-acd303(6)*acd303(7)
      acd303(50)=-acd303(2)*acd303(4)
      acd303(49)=acd303(50)+acd303(8)+acd303(49)
      acd303(49)=acd303(1)*acd303(49)
      acd303(50)=-acd303(30)*acd303(27)
      acd303(51)=-acd303(29)*acd303(23)
      acd303(50)=acd303(51)+acd303(31)+acd303(50)
      acd303(50)=acd303(10)*acd303(50)
      acd303(51)=-acd303(19)*acd303(20)
      acd303(52)=acd303(15)*acd303(35)
      acd303(53)=acd303(13)*acd303(14)
      acd303(54)=-acd303(30)*acd303(34)
      acd303(55)=-acd303(29)*acd303(33)
      acd303(56)=acd303(22)*acd303(32)
      acd303(57)=acd303(22)*acd303(27)
      acd303(57)=acd303(28)+acd303(57)
      acd303(57)=acd303(6)*acd303(57)
      acd303(58)=acd303(22)*acd303(23)
      acd303(58)=acd303(24)+acd303(58)
      acd303(58)=acd303(2)*acd303(58)
      acd303(49)=acd303(50)+acd303(49)+acd303(58)+acd303(57)+acd303(56)+acd303(&
      &55)+acd303(54)+acd303(53)+acd303(52)-acd303(36)+acd303(51)
      acd303(49)=acd303(3)*acd303(49)
      acd303(50)=acd303(39)*acd303(40)
      acd303(51)=acd303(16)*acd303(17)
      acd303(52)=-acd303(13)*acd303(15)
      acd303(53)=acd303(30)*acd303(37)
      acd303(54)=acd303(29)*acd303(25)
      acd303(55)=acd303(1)*acd303(11)
      acd303(50)=acd303(55)+acd303(54)+acd303(53)+acd303(52)+acd303(51)-acd303(&
      &41)+acd303(50)
      acd303(50)=acd303(10)*acd303(50)
      acd303(51)=acd303(6)*acd303(9)
      acd303(52)=acd303(2)*acd303(5)
      acd303(51)=acd303(52)-acd303(12)+acd303(51)
      acd303(51)=acd303(1)*acd303(51)
      acd303(52)=-acd303(45)*acd303(46)
      acd303(53)=-acd303(35)*acd303(47)
      acd303(54)=acd303(19)*acd303(21)
      acd303(55)=-acd303(16)*acd303(18)
      acd303(56)=-acd303(30)*acd303(44)
      acd303(57)=-acd303(29)*acd303(43)
      acd303(58)=-acd303(22)*acd303(42)
      acd303(59)=-acd303(22)*acd303(37)
      acd303(59)=-acd303(38)+acd303(59)
      acd303(59)=acd303(6)*acd303(59)
      acd303(60)=-acd303(22)*acd303(25)
      acd303(60)=-acd303(26)+acd303(60)
      acd303(60)=acd303(2)*acd303(60)
      brack=acd303(48)+acd303(49)+acd303(50)+acd303(51)+acd303(52)+acd303(53)+a&
      &cd303(54)+acd303(55)+acd303(56)+acd303(57)+acd303(58)+acd303(59)+acd303(&
      &60)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd303
      complex(ki) :: brack
      acd303(1)=k2(iv1)
      acd303(2)=dotproduct(qshift,spvak1k2)
      acd303(3)=dotproduct(qshift,spvak7k2)
      acd303(4)=abb303(10)
      acd303(5)=abb303(39)
      acd303(6)=dotproduct(qshift,spvak4k2)
      acd303(7)=abb303(13)
      acd303(8)=abb303(26)
      acd303(9)=abb303(43)
      acd303(10)=dotproduct(qshift,spval6k2)
      acd303(11)=abb303(20)
      acd303(12)=abb303(37)
      acd303(13)=l5(iv1)
      acd303(14)=abb303(19)
      acd303(15)=abb303(31)
      acd303(16)=k7(iv1)
      acd303(17)=abb303(16)
      acd303(18)=abb303(40)
      acd303(19)=qshift(iv1)
      acd303(20)=abb303(28)
      acd303(21)=abb303(36)
      acd303(22)=spvak1k2(iv1)
      acd303(23)=dotproduct(k2,qshift)
      acd303(24)=dotproduct(qshift,spval6l5)
      acd303(25)=abb303(15)
      acd303(26)=abb303(24)
      acd303(27)=abb303(44)
      acd303(28)=abb303(25)
      acd303(29)=spvak7k2(iv1)
      acd303(30)=dotproduct(l5,qshift)
      acd303(31)=dotproduct(qshift,qshift)
      acd303(32)=abb303(17)
      acd303(33)=abb303(12)
      acd303(34)=dotproduct(qshift,spvak1l5)
      acd303(35)=dotproduct(qshift,spvak4l5)
      acd303(36)=abb303(21)
      acd303(37)=abb303(38)
      acd303(38)=abb303(23)
      acd303(39)=abb303(18)
      acd303(40)=dotproduct(qshift,spval6k7)
      acd303(41)=abb303(11)
      acd303(42)=spvak4k2(iv1)
      acd303(43)=abb303(42)
      acd303(44)=abb303(30)
      acd303(45)=spval6k2(iv1)
      acd303(46)=dotproduct(k7,qshift)
      acd303(47)=dotproduct(qshift,spvak7l5)
      acd303(48)=abb303(32)
      acd303(49)=abb303(14)
      acd303(50)=spval6l5(iv1)
      acd303(51)=abb303(34)
      acd303(52)=spvak1l5(iv1)
      acd303(53)=abb303(35)
      acd303(54)=spvak4l5(iv1)
      acd303(55)=abb303(41)
      acd303(56)=spval5k2(iv1)
      acd303(57)=abb303(33)
      acd303(58)=spvak7l5(iv1)
      acd303(59)=spval6k7(iv1)
      acd303(60)=abb303(29)
      acd303(61)=-acd303(32)*acd303(42)
      acd303(62)=-acd303(22)*acd303(25)
      acd303(61)=acd303(61)+acd303(62)
      acd303(61)=acd303(24)*acd303(61)
      acd303(62)=acd303(6)*acd303(7)
      acd303(63)=acd303(2)*acd303(4)
      acd303(62)=-acd303(8)+acd303(62)+acd303(63)
      acd303(63)=acd303(1)*acd303(62)
      acd303(64)=acd303(42)*acd303(7)
      acd303(65)=acd303(22)*acd303(4)
      acd303(64)=acd303(64)+acd303(65)
      acd303(64)=acd303(23)*acd303(64)
      acd303(65)=acd303(32)*acd303(35)
      acd303(66)=acd303(25)*acd303(34)
      acd303(65)=-acd303(36)+acd303(65)+acd303(66)
      acd303(66)=acd303(45)*acd303(65)
      acd303(67)=acd303(32)*acd303(54)
      acd303(68)=acd303(25)*acd303(52)
      acd303(67)=acd303(67)+acd303(68)
      acd303(67)=acd303(10)*acd303(67)
      acd303(68)=2.0_ki*acd303(19)
      acd303(69)=acd303(20)*acd303(68)
      acd303(70)=-acd303(13)*acd303(14)
      acd303(71)=acd303(54)*acd303(39)
      acd303(72)=acd303(52)*acd303(38)
      acd303(73)=-acd303(15)*acd303(59)
      acd303(74)=-acd303(50)*acd303(37)
      acd303(75)=-acd303(42)*acd303(33)
      acd303(76)=-acd303(22)*acd303(26)
      acd303(77)=acd303(6)*acd303(50)
      acd303(78)=-acd303(32)*acd303(77)
      acd303(79)=acd303(2)*acd303(50)
      acd303(80)=-acd303(25)*acd303(79)
      acd303(61)=acd303(67)+acd303(66)+acd303(64)+acd303(63)+acd303(80)+acd303(&
      &78)+acd303(61)+acd303(76)+acd303(75)+acd303(74)+acd303(73)+acd303(72)+ac&
      &d303(71)+acd303(69)+acd303(70)
      acd303(61)=acd303(3)*acd303(61)
      acd303(62)=acd303(23)*acd303(62)
      acd303(63)=acd303(10)*acd303(65)
      acd303(64)=acd303(20)*acd303(31)
      acd303(65)=-acd303(14)*acd303(30)
      acd303(66)=acd303(35)*acd303(39)
      acd303(67)=acd303(34)*acd303(38)
      acd303(69)=-acd303(15)*acd303(40)
      acd303(70)=-acd303(24)*acd303(37)
      acd303(71)=-acd303(24)*acd303(32)
      acd303(71)=-acd303(33)+acd303(71)
      acd303(71)=acd303(6)*acd303(71)
      acd303(72)=-acd303(24)*acd303(25)
      acd303(72)=-acd303(26)+acd303(72)
      acd303(72)=acd303(2)*acd303(72)
      acd303(62)=acd303(63)+acd303(62)+acd303(72)+acd303(71)+acd303(70)+acd303(&
      &69)+acd303(67)+acd303(66)+acd303(65)+acd303(41)+acd303(64)
      acd303(62)=acd303(29)*acd303(62)
      acd303(63)=-acd303(48)*acd303(47)
      acd303(64)=-acd303(17)*acd303(46)
      acd303(65)=-acd303(35)*acd303(43)
      acd303(66)=-acd303(27)*acd303(34)
      acd303(67)=acd303(15)*acd303(30)
      acd303(69)=-acd303(23)*acd303(11)
      acd303(63)=acd303(69)+acd303(67)+acd303(66)+acd303(65)+acd303(64)+acd303(&
      &49)+acd303(63)
      acd303(63)=acd303(45)*acd303(63)
      acd303(64)=-acd303(48)*acd303(58)
      acd303(65)=-acd303(16)*acd303(17)
      acd303(66)=-acd303(43)*acd303(54)
      acd303(67)=-acd303(27)*acd303(52)
      acd303(69)=acd303(15)*acd303(13)
      acd303(70)=-acd303(1)*acd303(11)
      acd303(64)=acd303(70)+acd303(69)+acd303(67)+acd303(66)+acd303(64)+acd303(&
      &65)
      acd303(64)=acd303(10)*acd303(64)
      acd303(65)=acd303(42)*acd303(43)
      acd303(66)=acd303(22)*acd303(27)
      acd303(65)=acd303(65)+acd303(66)
      acd303(65)=acd303(24)*acd303(65)
      acd303(66)=-acd303(6)*acd303(9)
      acd303(67)=-acd303(2)*acd303(5)
      acd303(66)=acd303(67)+acd303(12)+acd303(66)
      acd303(66)=acd303(1)*acd303(66)
      acd303(67)=-acd303(42)*acd303(9)
      acd303(69)=-acd303(22)*acd303(5)
      acd303(67)=acd303(67)+acd303(69)
      acd303(67)=acd303(23)*acd303(67)
      acd303(69)=acd303(56)*acd303(57)
      acd303(70)=acd303(59)*acd303(60)
      acd303(68)=-acd303(21)*acd303(68)
      acd303(71)=acd303(16)*acd303(18)
      acd303(72)=acd303(54)*acd303(55)
      acd303(73)=acd303(52)*acd303(53)
      acd303(74)=acd303(50)*acd303(51)
      acd303(75)=acd303(42)*acd303(44)
      acd303(76)=acd303(22)*acd303(28)
      acd303(77)=acd303(43)*acd303(77)
      acd303(78)=acd303(27)*acd303(79)
      brack=acd303(61)+acd303(62)+acd303(63)+acd303(64)+acd303(65)+acd303(66)+a&
      &cd303(67)+acd303(68)+acd303(69)+acd303(70)+acd303(71)+acd303(72)+acd303(&
      &73)+acd303(74)+acd303(75)+acd303(76)+acd303(77)+acd303(78)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(73) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=dotproduct(qshift,spvak7k2)
      acd303(3)=abb303(28)
      acd303(4)=abb303(36)
      acd303(5)=k2(iv1)
      acd303(6)=spvak7k2(iv2)
      acd303(7)=dotproduct(qshift,spvak1k2)
      acd303(8)=abb303(10)
      acd303(9)=dotproduct(qshift,spvak4k2)
      acd303(10)=abb303(13)
      acd303(11)=abb303(26)
      acd303(12)=spvak1k2(iv2)
      acd303(13)=abb303(39)
      acd303(14)=spvak4k2(iv2)
      acd303(15)=abb303(43)
      acd303(16)=spval6k2(iv2)
      acd303(17)=abb303(20)
      acd303(18)=k2(iv2)
      acd303(19)=spvak7k2(iv1)
      acd303(20)=spvak1k2(iv1)
      acd303(21)=spvak4k2(iv1)
      acd303(22)=spval6k2(iv1)
      acd303(23)=l5(iv1)
      acd303(24)=abb303(19)
      acd303(25)=abb303(31)
      acd303(26)=l5(iv2)
      acd303(27)=k7(iv1)
      acd303(28)=abb303(16)
      acd303(29)=k7(iv2)
      acd303(30)=qshift(iv1)
      acd303(31)=qshift(iv2)
      acd303(32)=dotproduct(k2,qshift)
      acd303(33)=dotproduct(qshift,spval6l5)
      acd303(34)=abb303(15)
      acd303(35)=abb303(24)
      acd303(36)=abb303(17)
      acd303(37)=abb303(12)
      acd303(38)=dotproduct(qshift,spvak1l5)
      acd303(39)=dotproduct(qshift,spvak4l5)
      acd303(40)=abb303(21)
      acd303(41)=spval6l5(iv2)
      acd303(42)=abb303(38)
      acd303(43)=spvak1l5(iv2)
      acd303(44)=dotproduct(qshift,spval6k2)
      acd303(45)=abb303(23)
      acd303(46)=spvak4l5(iv2)
      acd303(47)=abb303(18)
      acd303(48)=spval6k7(iv2)
      acd303(49)=spval6l5(iv1)
      acd303(50)=spvak1l5(iv1)
      acd303(51)=spvak4l5(iv1)
      acd303(52)=spval6k7(iv1)
      acd303(53)=abb303(44)
      acd303(54)=abb303(42)
      acd303(55)=spvak7l5(iv2)
      acd303(56)=abb303(32)
      acd303(57)=spvak7l5(iv1)
      acd303(58)=-acd303(44)*acd303(46)
      acd303(59)=acd303(41)*acd303(9)
      acd303(60)=acd303(14)*acd303(33)
      acd303(61)=-acd303(16)*acd303(39)
      acd303(58)=acd303(61)+acd303(60)+acd303(58)+acd303(59)
      acd303(58)=acd303(36)*acd303(58)
      acd303(59)=-acd303(43)*acd303(44)
      acd303(60)=acd303(41)*acd303(7)
      acd303(61)=acd303(12)*acd303(33)
      acd303(62)=-acd303(16)*acd303(38)
      acd303(59)=acd303(62)+acd303(61)+acd303(59)+acd303(60)
      acd303(59)=acd303(34)*acd303(59)
      acd303(60)=acd303(10)*acd303(9)
      acd303(61)=acd303(8)*acd303(7)
      acd303(60)=-acd303(11)+acd303(60)+acd303(61)
      acd303(61)=-acd303(18)*acd303(60)
      acd303(62)=acd303(24)*acd303(26)
      acd303(63)=2.0_ki*acd303(3)
      acd303(64)=-acd303(31)*acd303(63)
      acd303(65)=-acd303(46)*acd303(47)
      acd303(66)=-acd303(43)*acd303(45)
      acd303(67)=acd303(25)*acd303(48)
      acd303(68)=acd303(41)*acd303(42)
      acd303(69)=acd303(10)*acd303(32)
      acd303(69)=acd303(69)-acd303(37)
      acd303(70)=-acd303(14)*acd303(69)
      acd303(71)=acd303(8)*acd303(32)
      acd303(71)=acd303(71)-acd303(35)
      acd303(72)=-acd303(12)*acd303(71)
      acd303(73)=acd303(16)*acd303(40)
      acd303(58)=acd303(59)+acd303(58)+acd303(73)+acd303(61)+acd303(72)+acd303(&
      &70)+acd303(68)+acd303(67)+acd303(66)+acd303(65)+acd303(62)+acd303(64)
      acd303(58)=acd303(19)*acd303(58)
      acd303(59)=-acd303(44)*acd303(51)
      acd303(61)=acd303(49)*acd303(9)
      acd303(62)=acd303(21)*acd303(33)
      acd303(64)=-acd303(22)*acd303(39)
      acd303(59)=acd303(64)+acd303(62)+acd303(59)+acd303(61)
      acd303(59)=acd303(36)*acd303(59)
      acd303(61)=-acd303(44)*acd303(50)
      acd303(62)=acd303(49)*acd303(7)
      acd303(64)=acd303(20)*acd303(33)
      acd303(65)=-acd303(22)*acd303(38)
      acd303(61)=acd303(65)+acd303(64)+acd303(61)+acd303(62)
      acd303(61)=acd303(34)*acd303(61)
      acd303(60)=-acd303(5)*acd303(60)
      acd303(62)=acd303(23)*acd303(24)
      acd303(64)=-acd303(30)*acd303(63)
      acd303(65)=-acd303(51)*acd303(47)
      acd303(66)=-acd303(50)*acd303(45)
      acd303(67)=acd303(25)*acd303(52)
      acd303(68)=acd303(49)*acd303(42)
      acd303(69)=-acd303(21)*acd303(69)
      acd303(70)=-acd303(20)*acd303(71)
      acd303(71)=acd303(22)*acd303(40)
      acd303(59)=acd303(61)+acd303(59)+acd303(71)+acd303(60)+acd303(70)+acd303(&
      &69)+acd303(68)+acd303(67)+acd303(66)+acd303(65)+acd303(62)+acd303(64)
      acd303(59)=acd303(6)*acd303(59)
      acd303(60)=acd303(56)*acd303(55)
      acd303(61)=acd303(28)*acd303(29)
      acd303(62)=acd303(46)*acd303(54)
      acd303(64)=acd303(43)*acd303(53)
      acd303(65)=-acd303(25)*acd303(26)
      acd303(66)=acd303(18)*acd303(17)
      acd303(60)=acd303(66)+acd303(65)+acd303(64)+acd303(62)+acd303(60)+acd303(&
      &61)
      acd303(60)=acd303(22)*acd303(60)
      acd303(61)=acd303(56)*acd303(57)
      acd303(62)=acd303(28)*acd303(27)
      acd303(64)=acd303(51)*acd303(54)
      acd303(65)=acd303(50)*acd303(53)
      acd303(66)=-acd303(25)*acd303(23)
      acd303(67)=acd303(5)*acd303(17)
      acd303(61)=acd303(67)+acd303(66)+acd303(65)+acd303(64)+acd303(61)+acd303(&
      &62)
      acd303(61)=acd303(16)*acd303(61)
      acd303(62)=acd303(21)*acd303(41)
      acd303(64)=acd303(14)*acd303(49)
      acd303(62)=acd303(62)+acd303(64)
      acd303(64)=-acd303(22)*acd303(46)
      acd303(65)=-acd303(16)*acd303(51)
      acd303(64)=acd303(65)+acd303(64)+acd303(62)
      acd303(64)=acd303(36)*acd303(64)
      acd303(65)=acd303(20)*acd303(41)
      acd303(66)=acd303(12)*acd303(49)
      acd303(65)=acd303(65)+acd303(66)
      acd303(66)=-acd303(22)*acd303(43)
      acd303(67)=-acd303(16)*acd303(50)
      acd303(66)=acd303(67)+acd303(66)+acd303(65)
      acd303(66)=acd303(34)*acd303(66)
      acd303(67)=-acd303(21)*acd303(10)
      acd303(68)=-acd303(20)*acd303(8)
      acd303(67)=acd303(67)+acd303(68)
      acd303(67)=acd303(18)*acd303(67)
      acd303(68)=-acd303(14)*acd303(10)
      acd303(69)=-acd303(12)*acd303(8)
      acd303(68)=acd303(68)+acd303(69)
      acd303(68)=acd303(5)*acd303(68)
      acd303(63)=-acd303(1)*acd303(63)
      acd303(63)=acd303(66)+acd303(64)+acd303(68)+acd303(63)+acd303(67)
      acd303(63)=acd303(2)*acd303(63)
      acd303(62)=-acd303(54)*acd303(62)
      acd303(64)=-acd303(53)*acd303(65)
      acd303(65)=acd303(21)*acd303(15)
      acd303(66)=acd303(20)*acd303(13)
      acd303(65)=acd303(65)+acd303(66)
      acd303(65)=acd303(18)*acd303(65)
      acd303(66)=acd303(14)*acd303(15)
      acd303(67)=acd303(12)*acd303(13)
      acd303(66)=acd303(66)+acd303(67)
      acd303(66)=acd303(5)*acd303(66)
      acd303(67)=2.0_ki*acd303(1)
      acd303(67)=acd303(4)*acd303(67)
      brack=acd303(58)+acd303(59)+acd303(60)+acd303(61)+acd303(62)+acd303(63)+a&
      &cd303(64)+acd303(65)+acd303(66)+acd303(67)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(40) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=spvak7k2(iv3)
      acd303(3)=abb303(28)
      acd303(4)=d(iv1,iv3)
      acd303(5)=spvak7k2(iv2)
      acd303(6)=d(iv2,iv3)
      acd303(7)=spvak7k2(iv1)
      acd303(8)=k2(iv1)
      acd303(9)=spvak1k2(iv3)
      acd303(10)=abb303(10)
      acd303(11)=spvak4k2(iv3)
      acd303(12)=abb303(13)
      acd303(13)=spvak1k2(iv2)
      acd303(14)=spvak4k2(iv2)
      acd303(15)=k2(iv2)
      acd303(16)=spvak1k2(iv1)
      acd303(17)=spvak4k2(iv1)
      acd303(18)=k2(iv3)
      acd303(19)=spval6l5(iv3)
      acd303(20)=abb303(15)
      acd303(21)=spval6l5(iv2)
      acd303(22)=abb303(17)
      acd303(23)=spvak1l5(iv2)
      acd303(24)=spval6k2(iv3)
      acd303(25)=spvak1l5(iv3)
      acd303(26)=spval6k2(iv2)
      acd303(27)=spvak4l5(iv3)
      acd303(28)=spvak4l5(iv2)
      acd303(29)=spval6l5(iv1)
      acd303(30)=spvak1l5(iv1)
      acd303(31)=spval6k2(iv1)
      acd303(32)=spvak4l5(iv1)
      acd303(33)=acd303(26)*acd303(27)
      acd303(34)=acd303(24)*acd303(28)
      acd303(35)=-acd303(14)*acd303(19)
      acd303(36)=-acd303(11)*acd303(21)
      acd303(33)=acd303(36)+acd303(35)+acd303(33)+acd303(34)
      acd303(33)=acd303(22)*acd303(33)
      acd303(34)=acd303(26)*acd303(25)
      acd303(35)=acd303(24)*acd303(23)
      acd303(36)=-acd303(13)*acd303(19)
      acd303(37)=-acd303(9)*acd303(21)
      acd303(34)=acd303(37)+acd303(36)+acd303(34)+acd303(35)
      acd303(34)=acd303(20)*acd303(34)
      acd303(35)=acd303(14)*acd303(18)
      acd303(36)=acd303(11)*acd303(15)
      acd303(35)=acd303(35)+acd303(36)
      acd303(35)=acd303(12)*acd303(35)
      acd303(36)=acd303(13)*acd303(18)
      acd303(37)=acd303(9)*acd303(15)
      acd303(36)=acd303(36)+acd303(37)
      acd303(36)=acd303(10)*acd303(36)
      acd303(37)=2.0_ki*acd303(3)
      acd303(38)=acd303(6)*acd303(37)
      acd303(33)=acd303(34)+acd303(33)+acd303(36)+acd303(38)+acd303(35)
      acd303(33)=acd303(7)*acd303(33)
      acd303(34)=acd303(31)*acd303(27)
      acd303(35)=acd303(24)*acd303(32)
      acd303(36)=-acd303(17)*acd303(19)
      acd303(38)=-acd303(11)*acd303(29)
      acd303(34)=acd303(38)+acd303(36)+acd303(34)+acd303(35)
      acd303(34)=acd303(22)*acd303(34)
      acd303(35)=acd303(31)*acd303(25)
      acd303(36)=acd303(24)*acd303(30)
      acd303(38)=-acd303(16)*acd303(19)
      acd303(39)=-acd303(9)*acd303(29)
      acd303(35)=acd303(39)+acd303(38)+acd303(35)+acd303(36)
      acd303(35)=acd303(20)*acd303(35)
      acd303(36)=acd303(17)*acd303(18)
      acd303(38)=acd303(8)*acd303(11)
      acd303(36)=acd303(36)+acd303(38)
      acd303(36)=acd303(12)*acd303(36)
      acd303(38)=acd303(16)*acd303(18)
      acd303(39)=acd303(8)*acd303(9)
      acd303(38)=acd303(38)+acd303(39)
      acd303(38)=acd303(10)*acd303(38)
      acd303(39)=acd303(4)*acd303(37)
      acd303(34)=acd303(35)+acd303(34)+acd303(38)+acd303(39)+acd303(36)
      acd303(34)=acd303(5)*acd303(34)
      acd303(35)=acd303(31)*acd303(28)
      acd303(36)=acd303(26)*acd303(32)
      acd303(38)=-acd303(17)*acd303(21)
      acd303(39)=-acd303(14)*acd303(29)
      acd303(35)=acd303(39)+acd303(38)+acd303(35)+acd303(36)
      acd303(35)=acd303(22)*acd303(35)
      acd303(36)=acd303(31)*acd303(23)
      acd303(38)=acd303(26)*acd303(30)
      acd303(39)=-acd303(16)*acd303(21)
      acd303(40)=-acd303(13)*acd303(29)
      acd303(36)=acd303(40)+acd303(39)+acd303(36)+acd303(38)
      acd303(36)=acd303(20)*acd303(36)
      acd303(38)=acd303(15)*acd303(17)
      acd303(39)=acd303(8)*acd303(14)
      acd303(38)=acd303(38)+acd303(39)
      acd303(38)=acd303(12)*acd303(38)
      acd303(39)=acd303(15)*acd303(16)
      acd303(40)=acd303(8)*acd303(13)
      acd303(39)=acd303(39)+acd303(40)
      acd303(39)=acd303(10)*acd303(39)
      acd303(37)=acd303(1)*acd303(37)
      acd303(35)=acd303(36)+acd303(35)+acd303(39)+acd303(37)+acd303(38)
      acd303(35)=acd303(2)*acd303(35)
      brack=acd303(33)+acd303(34)+acd303(35)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h5
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
      qshift = k5
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
!---#[ subroutine reconstruct_d303:
   subroutine     reconstruct_d303(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group12
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group12), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_303:
      coeffs%coeffs_303%c0 = derivative(czip)
      coeffs%coeffs_303%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_303%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_303%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_303%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_303%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_303%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_303%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_303%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_303%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_303%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_303%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_303%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_303%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_303%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_303%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_303%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_303%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_303%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_303%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_303%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_303%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_303%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_303%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_303%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_303%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_303%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_303%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_303%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_303%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_303%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_303%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_303%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_303%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_303%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_303:
   end subroutine reconstruct_d303
!---#] subroutine reconstruct_d303:
end module     p0_dbaru_epnebbbarg_d303h5l1d
