module     p0_dbaru_epnebbbarg_d153h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d153h4l1d.f90
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
      use p0_dbaru_epnebbbarg_abbrevd153h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd153
      complex(ki) :: brack
      acd153(1)=dotproduct(k2,qshift)
      acd153(2)=dotproduct(qshift,spvak7k2)
      acd153(3)=abb153(79)
      acd153(4)=abb153(44)
      acd153(5)=dotproduct(l5,qshift)
      acd153(6)=abb153(40)
      acd153(7)=abb153(29)
      acd153(8)=dotproduct(l6,qshift)
      acd153(9)=dotproduct(k7,qshift)
      acd153(10)=dotproduct(qshift,spval5k2)
      acd153(11)=abb153(27)
      acd153(12)=dotproduct(qshift,spval6k2)
      acd153(13)=abb153(57)
      acd153(14)=abb153(28)
      acd153(15)=dotproduct(qshift,qshift)
      acd153(16)=abb153(33)
      acd153(17)=abb153(52)
      acd153(18)=abb153(35)
      acd153(19)=abb153(32)
      acd153(20)=dotproduct(qshift,spvak1k2)
      acd153(21)=abb153(30)
      acd153(22)=dotproduct(qshift,spvak1k3)
      acd153(23)=abb153(50)
      acd153(24)=dotproduct(qshift,spvak4k2)
      acd153(25)=abb153(22)
      acd153(26)=abb153(20)
      acd153(27)=abb153(26)
      acd153(28)=abb153(24)
      acd153(29)=abb153(41)
      acd153(30)=abb153(25)
      acd153(31)=abb153(21)
      acd153(32)=dotproduct(qshift,spvak1l5)
      acd153(33)=abb153(31)
      acd153(34)=dotproduct(qshift,spvak1l6)
      acd153(35)=abb153(36)
      acd153(36)=dotproduct(qshift,spval5k3)
      acd153(37)=abb153(64)
      acd153(38)=dotproduct(qshift,spval6k3)
      acd153(39)=abb153(65)
      acd153(40)=abb153(37)
      acd153(41)=dotproduct(qshift,spvak7k3)
      acd153(42)=abb153(23)
      acd153(43)=abb153(45)
      acd153(44)=abb153(77)
      acd153(45)=abb153(34)
      acd153(46)=abb153(46)
      acd153(47)=abb153(39)
      acd153(48)=abb153(85)
      acd153(49)=abb153(47)
      acd153(50)=-acd153(27)*acd153(20)
      acd153(51)=-acd153(28)*acd153(22)
      acd153(52)=-acd153(29)*acd153(24)
      acd153(50)=acd153(30)+acd153(52)+acd153(51)+acd153(50)
      acd153(50)=acd153(50)*acd153(12)
      acd153(51)=-acd153(21)*acd153(20)
      acd153(52)=-acd153(23)*acd153(22)
      acd153(53)=-acd153(25)*acd153(24)
      acd153(51)=acd153(26)+acd153(53)+acd153(52)+acd153(51)
      acd153(51)=acd153(51)*acd153(10)
      acd153(52)=acd153(3)*acd153(1)
      acd153(53)=-acd153(16)*acd153(15)
      acd153(54)=acd153(31)*acd153(20)
      acd153(55)=acd153(33)*acd153(32)
      acd153(56)=acd153(35)*acd153(34)
      acd153(57)=acd153(37)*acd153(36)
      acd153(58)=acd153(39)*acd153(38)
      acd153(50)=acd153(54)+acd153(51)+acd153(50)-acd153(40)+acd153(58)+acd153(&
      &57)+acd153(56)+acd153(55)+acd153(53)+acd153(52)
      acd153(50)=acd153(2)*acd153(50)
      acd153(51)=acd153(11)*acd153(9)
      acd153(52)=-acd153(17)*acd153(15)
      acd153(53)=acd153(42)*acd153(41)
      acd153(51)=-acd153(43)+acd153(53)+acd153(52)+acd153(51)
      acd153(51)=acd153(10)*acd153(51)
      acd153(52)=acd153(13)*acd153(9)
      acd153(53)=-acd153(18)*acd153(15)
      acd153(54)=acd153(44)*acd153(41)
      acd153(52)=-acd153(45)+acd153(54)+acd153(53)+acd153(52)
      acd153(52)=acd153(12)*acd153(52)
      acd153(53)=-acd153(8)-acd153(5)
      acd153(54)=acd153(6)*acd153(2)
      acd153(54)=acd153(54)+acd153(7)
      acd153(53)=acd153(54)*acd153(53)
      acd153(54)=-acd153(4)*acd153(1)
      acd153(55)=-acd153(14)*acd153(9)
      acd153(56)=-acd153(19)*acd153(15)
      acd153(57)=-acd153(46)*acd153(41)
      acd153(58)=-acd153(47)*acd153(36)
      acd153(59)=-acd153(48)*acd153(38)
      brack=acd153(49)+acd153(50)+acd153(51)+acd153(52)+acd153(53)+acd153(54)+a&
      &cd153(55)+acd153(56)+acd153(57)+acd153(58)+acd153(59)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd153h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd153
      complex(ki) :: brack
      acd153(1)=k2(iv1)
      acd153(2)=dotproduct(qshift,spvak7k2)
      acd153(3)=abb153(79)
      acd153(4)=abb153(44)
      acd153(5)=l5(iv1)
      acd153(6)=abb153(40)
      acd153(7)=abb153(29)
      acd153(8)=l6(iv1)
      acd153(9)=k7(iv1)
      acd153(10)=dotproduct(qshift,spval5k2)
      acd153(11)=abb153(27)
      acd153(12)=dotproduct(qshift,spval6k2)
      acd153(13)=abb153(57)
      acd153(14)=abb153(28)
      acd153(15)=qshift(iv1)
      acd153(16)=abb153(33)
      acd153(17)=abb153(52)
      acd153(18)=abb153(35)
      acd153(19)=abb153(32)
      acd153(20)=spvak7k2(iv1)
      acd153(21)=dotproduct(k2,qshift)
      acd153(22)=dotproduct(l5,qshift)
      acd153(23)=dotproduct(l6,qshift)
      acd153(24)=dotproduct(qshift,qshift)
      acd153(25)=dotproduct(qshift,spvak1k2)
      acd153(26)=abb153(30)
      acd153(27)=dotproduct(qshift,spvak1k3)
      acd153(28)=abb153(50)
      acd153(29)=dotproduct(qshift,spvak4k2)
      acd153(30)=abb153(22)
      acd153(31)=abb153(20)
      acd153(32)=abb153(26)
      acd153(33)=abb153(24)
      acd153(34)=abb153(41)
      acd153(35)=abb153(25)
      acd153(36)=abb153(21)
      acd153(37)=dotproduct(qshift,spvak1l5)
      acd153(38)=abb153(31)
      acd153(39)=dotproduct(qshift,spvak1l6)
      acd153(40)=abb153(36)
      acd153(41)=dotproduct(qshift,spval5k3)
      acd153(42)=abb153(64)
      acd153(43)=dotproduct(qshift,spval6k3)
      acd153(44)=abb153(65)
      acd153(45)=abb153(37)
      acd153(46)=spval5k2(iv1)
      acd153(47)=dotproduct(k7,qshift)
      acd153(48)=dotproduct(qshift,spvak7k3)
      acd153(49)=abb153(23)
      acd153(50)=abb153(45)
      acd153(51)=spval6k2(iv1)
      acd153(52)=abb153(77)
      acd153(53)=abb153(34)
      acd153(54)=spvak1k2(iv1)
      acd153(55)=spvak1k3(iv1)
      acd153(56)=spvak1l5(iv1)
      acd153(57)=spvak1l6(iv1)
      acd153(58)=spvak4k2(iv1)
      acd153(59)=spvak7k3(iv1)
      acd153(60)=abb153(46)
      acd153(61)=spval5k3(iv1)
      acd153(62)=abb153(39)
      acd153(63)=spval6k3(iv1)
      acd153(64)=abb153(85)
      acd153(65)=acd153(29)*acd153(34)
      acd153(66)=acd153(27)*acd153(33)
      acd153(67)=acd153(25)*acd153(32)
      acd153(65)=acd153(65)+acd153(66)+acd153(67)-acd153(35)
      acd153(66)=acd153(51)*acd153(65)
      acd153(67)=acd153(29)*acd153(30)
      acd153(68)=acd153(27)*acd153(28)
      acd153(69)=acd153(25)*acd153(26)
      acd153(67)=acd153(67)+acd153(68)+acd153(69)-acd153(31)
      acd153(68)=acd153(46)*acd153(67)
      acd153(69)=acd153(34)*acd153(58)
      acd153(70)=acd153(33)*acd153(55)
      acd153(71)=acd153(32)*acd153(54)
      acd153(69)=acd153(71)+acd153(69)+acd153(70)
      acd153(69)=acd153(12)*acd153(69)
      acd153(70)=acd153(30)*acd153(58)
      acd153(71)=acd153(28)*acd153(55)
      acd153(72)=acd153(26)*acd153(54)
      acd153(70)=acd153(72)+acd153(70)+acd153(71)
      acd153(70)=acd153(10)*acd153(70)
      acd153(71)=-acd153(44)*acd153(63)
      acd153(72)=-acd153(42)*acd153(61)
      acd153(73)=-acd153(40)*acd153(57)
      acd153(74)=-acd153(38)*acd153(56)
      acd153(75)=-acd153(1)*acd153(3)
      acd153(76)=-acd153(54)*acd153(36)
      acd153(77)=2.0_ki*acd153(15)
      acd153(78)=acd153(16)*acd153(77)
      acd153(79)=acd153(5)+acd153(8)
      acd153(80)=acd153(6)*acd153(79)
      acd153(66)=acd153(70)+acd153(69)+acd153(68)+acd153(66)+acd153(80)+acd153(&
      &78)+acd153(76)+acd153(75)+acd153(74)+acd153(73)+acd153(71)+acd153(72)
      acd153(66)=acd153(2)*acd153(66)
      acd153(65)=acd153(12)*acd153(65)
      acd153(67)=acd153(10)*acd153(67)
      acd153(68)=-acd153(44)*acd153(43)
      acd153(69)=-acd153(42)*acd153(41)
      acd153(70)=-acd153(40)*acd153(39)
      acd153(71)=-acd153(38)*acd153(37)
      acd153(72)=-acd153(3)*acd153(21)
      acd153(73)=acd153(24)*acd153(16)
      acd153(74)=acd153(23)+acd153(22)
      acd153(74)=acd153(6)*acd153(74)
      acd153(75)=-acd153(25)*acd153(36)
      acd153(65)=acd153(67)+acd153(65)+acd153(75)+acd153(74)+acd153(73)+acd153(&
      &72)+acd153(71)+acd153(70)+acd153(69)+acd153(45)+acd153(68)
      acd153(65)=acd153(20)*acd153(65)
      acd153(67)=-acd153(48)*acd153(52)
      acd153(68)=-acd153(13)*acd153(47)
      acd153(69)=acd153(24)*acd153(18)
      acd153(67)=acd153(69)+acd153(68)+acd153(53)+acd153(67)
      acd153(67)=acd153(51)*acd153(67)
      acd153(68)=-acd153(48)*acd153(49)
      acd153(69)=-acd153(11)*acd153(47)
      acd153(70)=acd153(24)*acd153(17)
      acd153(68)=acd153(70)+acd153(69)+acd153(50)+acd153(68)
      acd153(68)=acd153(46)*acd153(68)
      acd153(69)=-acd153(59)*acd153(52)
      acd153(70)=-acd153(9)*acd153(13)
      acd153(71)=acd153(18)*acd153(77)
      acd153(69)=acd153(71)+acd153(69)+acd153(70)
      acd153(69)=acd153(12)*acd153(69)
      acd153(70)=-acd153(59)*acd153(49)
      acd153(71)=-acd153(9)*acd153(11)
      acd153(72)=acd153(17)*acd153(77)
      acd153(70)=acd153(72)+acd153(70)+acd153(71)
      acd153(70)=acd153(10)*acd153(70)
      acd153(71)=acd153(7)*acd153(79)
      acd153(72)=acd153(63)*acd153(64)
      acd153(73)=acd153(61)*acd153(62)
      acd153(74)=acd153(1)*acd153(4)
      acd153(75)=acd153(59)*acd153(60)
      acd153(76)=acd153(9)*acd153(14)
      acd153(77)=acd153(19)*acd153(77)
      brack=acd153(65)+acd153(66)+acd153(67)+acd153(68)+acd153(69)+acd153(70)+a&
      &cd153(71)+acd153(72)+acd153(73)+acd153(74)+acd153(75)+acd153(76)+acd153(&
      &77)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd153h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd153
      complex(ki) :: brack
      acd153(1)=d(iv1,iv2)
      acd153(2)=dotproduct(qshift,spval5k2)
      acd153(3)=abb153(52)
      acd153(4)=dotproduct(qshift,spval6k2)
      acd153(5)=abb153(35)
      acd153(6)=dotproduct(qshift,spvak7k2)
      acd153(7)=abb153(33)
      acd153(8)=abb153(32)
      acd153(9)=k2(iv1)
      acd153(10)=spvak7k2(iv2)
      acd153(11)=abb153(79)
      acd153(12)=k2(iv2)
      acd153(13)=spvak7k2(iv1)
      acd153(14)=l5(iv1)
      acd153(15)=abb153(40)
      acd153(16)=l5(iv2)
      acd153(17)=l6(iv1)
      acd153(18)=l6(iv2)
      acd153(19)=k7(iv1)
      acd153(20)=spval5k2(iv2)
      acd153(21)=abb153(27)
      acd153(22)=spval6k2(iv2)
      acd153(23)=abb153(57)
      acd153(24)=k7(iv2)
      acd153(25)=spval5k2(iv1)
      acd153(26)=spval6k2(iv1)
      acd153(27)=qshift(iv1)
      acd153(28)=qshift(iv2)
      acd153(29)=dotproduct(qshift,spvak1k2)
      acd153(30)=abb153(30)
      acd153(31)=dotproduct(qshift,spvak1k3)
      acd153(32)=abb153(50)
      acd153(33)=dotproduct(qshift,spvak4k2)
      acd153(34)=abb153(22)
      acd153(35)=abb153(20)
      acd153(36)=spvak1k2(iv2)
      acd153(37)=spvak1k3(iv2)
      acd153(38)=spvak4k2(iv2)
      acd153(39)=spvak7k3(iv2)
      acd153(40)=abb153(23)
      acd153(41)=spvak1k2(iv1)
      acd153(42)=spvak1k3(iv1)
      acd153(43)=spvak4k2(iv1)
      acd153(44)=spvak7k3(iv1)
      acd153(45)=abb153(26)
      acd153(46)=abb153(24)
      acd153(47)=abb153(41)
      acd153(48)=abb153(25)
      acd153(49)=abb153(77)
      acd153(50)=abb153(21)
      acd153(51)=spvak1l5(iv2)
      acd153(52)=abb153(31)
      acd153(53)=spvak1l6(iv2)
      acd153(54)=abb153(36)
      acd153(55)=spval5k3(iv2)
      acd153(56)=abb153(64)
      acd153(57)=spval6k3(iv2)
      acd153(58)=abb153(65)
      acd153(59)=spvak1l5(iv1)
      acd153(60)=spvak1l6(iv1)
      acd153(61)=spval5k3(iv1)
      acd153(62)=spval6k3(iv1)
      acd153(63)=acd153(47)*acd153(38)
      acd153(64)=acd153(46)*acd153(37)
      acd153(65)=acd153(45)*acd153(36)
      acd153(63)=acd153(65)+acd153(63)+acd153(64)
      acd153(64)=-acd153(4)*acd153(63)
      acd153(65)=acd153(34)*acd153(38)
      acd153(66)=acd153(32)*acd153(37)
      acd153(67)=acd153(30)*acd153(36)
      acd153(65)=acd153(65)+acd153(66)+acd153(67)
      acd153(66)=-acd153(2)*acd153(65)
      acd153(67)=acd153(47)*acd153(33)
      acd153(68)=acd153(46)*acd153(31)
      acd153(69)=acd153(45)*acd153(29)
      acd153(67)=acd153(67)+acd153(68)+acd153(69)-acd153(48)
      acd153(68)=-acd153(22)*acd153(67)
      acd153(69)=acd153(34)*acd153(33)
      acd153(70)=acd153(32)*acd153(31)
      acd153(71)=acd153(30)*acd153(29)
      acd153(69)=acd153(69)+acd153(70)+acd153(71)-acd153(35)
      acd153(70)=-acd153(20)*acd153(69)
      acd153(71)=acd153(58)*acd153(57)
      acd153(72)=acd153(56)*acd153(55)
      acd153(73)=acd153(54)*acd153(53)
      acd153(74)=acd153(52)*acd153(51)
      acd153(75)=acd153(11)*acd153(12)
      acd153(76)=2.0_ki*acd153(7)
      acd153(77)=-acd153(28)*acd153(76)
      acd153(78)=-acd153(18)-acd153(16)
      acd153(78)=acd153(15)*acd153(78)
      acd153(79)=acd153(36)*acd153(50)
      acd153(64)=acd153(70)+acd153(68)+acd153(66)+acd153(64)+acd153(79)+acd153(&
      &78)+acd153(77)+acd153(75)+acd153(74)+acd153(73)+acd153(71)+acd153(72)
      acd153(64)=acd153(13)*acd153(64)
      acd153(66)=acd153(47)*acd153(43)
      acd153(68)=acd153(46)*acd153(42)
      acd153(70)=acd153(45)*acd153(41)
      acd153(66)=acd153(70)+acd153(66)+acd153(68)
      acd153(68)=-acd153(4)*acd153(66)
      acd153(70)=acd153(34)*acd153(43)
      acd153(71)=acd153(32)*acd153(42)
      acd153(72)=acd153(30)*acd153(41)
      acd153(70)=acd153(70)+acd153(71)+acd153(72)
      acd153(71)=-acd153(2)*acd153(70)
      acd153(67)=-acd153(26)*acd153(67)
      acd153(69)=-acd153(25)*acd153(69)
      acd153(72)=acd153(58)*acd153(62)
      acd153(73)=acd153(56)*acd153(61)
      acd153(74)=acd153(54)*acd153(60)
      acd153(75)=acd153(52)*acd153(59)
      acd153(77)=acd153(11)*acd153(9)
      acd153(78)=-acd153(27)*acd153(76)
      acd153(79)=-acd153(17)-acd153(14)
      acd153(79)=acd153(15)*acd153(79)
      acd153(80)=acd153(41)*acd153(50)
      acd153(67)=acd153(69)+acd153(67)+acd153(71)+acd153(68)+acd153(80)+acd153(&
      &79)+acd153(78)+acd153(77)+acd153(75)+acd153(74)+acd153(72)+acd153(73)
      acd153(67)=acd153(10)*acd153(67)
      acd153(63)=-acd153(26)*acd153(63)
      acd153(65)=-acd153(25)*acd153(65)
      acd153(66)=-acd153(22)*acd153(66)
      acd153(68)=-acd153(20)*acd153(70)
      acd153(69)=-acd153(1)*acd153(76)
      acd153(63)=acd153(68)+acd153(66)+acd153(65)+acd153(69)+acd153(63)
      acd153(63)=acd153(6)*acd153(63)
      acd153(65)=acd153(39)*acd153(49)
      acd153(66)=acd153(23)*acd153(24)
      acd153(68)=2.0_ki*acd153(28)
      acd153(69)=-acd153(5)*acd153(68)
      acd153(65)=acd153(69)+acd153(65)+acd153(66)
      acd153(65)=acd153(26)*acd153(65)
      acd153(66)=acd153(39)*acd153(40)
      acd153(69)=acd153(21)*acd153(24)
      acd153(68)=-acd153(3)*acd153(68)
      acd153(66)=acd153(68)+acd153(66)+acd153(69)
      acd153(66)=acd153(25)*acd153(66)
      acd153(68)=acd153(44)*acd153(49)
      acd153(69)=acd153(19)*acd153(23)
      acd153(70)=2.0_ki*acd153(27)
      acd153(71)=-acd153(5)*acd153(70)
      acd153(68)=acd153(71)+acd153(68)+acd153(69)
      acd153(68)=acd153(22)*acd153(68)
      acd153(69)=acd153(40)*acd153(44)
      acd153(71)=acd153(19)*acd153(21)
      acd153(70)=-acd153(3)*acd153(70)
      acd153(69)=acd153(70)+acd153(69)+acd153(71)
      acd153(69)=acd153(20)*acd153(69)
      acd153(70)=-acd153(4)*acd153(5)
      acd153(71)=-acd153(2)*acd153(3)
      acd153(70)=acd153(71)-acd153(8)+acd153(70)
      acd153(70)=acd153(1)*acd153(70)
      brack=acd153(63)+acd153(64)+acd153(65)+acd153(66)+acd153(67)+acd153(68)+a&
      &cd153(69)+2.0_ki*acd153(70)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd153h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd153
      complex(ki) :: brack
      acd153(1)=d(iv1,iv2)
      acd153(2)=spval5k2(iv3)
      acd153(3)=abb153(52)
      acd153(4)=spval6k2(iv3)
      acd153(5)=abb153(35)
      acd153(6)=spvak7k2(iv3)
      acd153(7)=abb153(33)
      acd153(8)=d(iv1,iv3)
      acd153(9)=spval5k2(iv2)
      acd153(10)=spval6k2(iv2)
      acd153(11)=spvak7k2(iv2)
      acd153(12)=d(iv2,iv3)
      acd153(13)=spval5k2(iv1)
      acd153(14)=spval6k2(iv1)
      acd153(15)=spvak7k2(iv1)
      acd153(16)=spvak1k2(iv3)
      acd153(17)=abb153(30)
      acd153(18)=spvak1k3(iv3)
      acd153(19)=abb153(50)
      acd153(20)=spvak4k2(iv3)
      acd153(21)=abb153(22)
      acd153(22)=spvak1k2(iv2)
      acd153(23)=spvak1k3(iv2)
      acd153(24)=spvak4k2(iv2)
      acd153(25)=spvak1k2(iv1)
      acd153(26)=spvak1k3(iv1)
      acd153(27)=spvak4k2(iv1)
      acd153(28)=abb153(26)
      acd153(29)=abb153(24)
      acd153(30)=abb153(41)
      acd153(31)=acd153(30)*acd153(20)
      acd153(32)=acd153(29)*acd153(18)
      acd153(33)=acd153(28)*acd153(16)
      acd153(31)=acd153(33)+acd153(31)+acd153(32)
      acd153(32)=acd153(10)*acd153(31)
      acd153(33)=acd153(21)*acd153(20)
      acd153(34)=acd153(19)*acd153(18)
      acd153(35)=acd153(17)*acd153(16)
      acd153(33)=acd153(35)+acd153(33)+acd153(34)
      acd153(34)=acd153(9)*acd153(33)
      acd153(35)=acd153(30)*acd153(24)
      acd153(36)=acd153(29)*acd153(23)
      acd153(37)=acd153(28)*acd153(22)
      acd153(35)=acd153(37)+acd153(35)+acd153(36)
      acd153(36)=acd153(4)*acd153(35)
      acd153(37)=acd153(21)*acd153(24)
      acd153(38)=acd153(19)*acd153(23)
      acd153(39)=acd153(17)*acd153(22)
      acd153(37)=acd153(39)+acd153(37)+acd153(38)
      acd153(38)=acd153(2)*acd153(37)
      acd153(39)=2.0_ki*acd153(7)
      acd153(40)=acd153(12)*acd153(39)
      acd153(32)=acd153(38)+acd153(36)+acd153(34)+acd153(40)+acd153(32)
      acd153(32)=acd153(15)*acd153(32)
      acd153(31)=acd153(14)*acd153(31)
      acd153(33)=acd153(13)*acd153(33)
      acd153(34)=acd153(30)*acd153(27)
      acd153(36)=acd153(29)*acd153(26)
      acd153(38)=acd153(28)*acd153(25)
      acd153(34)=acd153(38)+acd153(34)+acd153(36)
      acd153(36)=acd153(4)*acd153(34)
      acd153(38)=acd153(21)*acd153(27)
      acd153(40)=acd153(19)*acd153(26)
      acd153(41)=acd153(17)*acd153(25)
      acd153(38)=acd153(41)+acd153(38)+acd153(40)
      acd153(40)=acd153(2)*acd153(38)
      acd153(41)=acd153(8)*acd153(39)
      acd153(31)=acd153(40)+acd153(36)+acd153(33)+acd153(41)+acd153(31)
      acd153(31)=acd153(11)*acd153(31)
      acd153(33)=acd153(14)*acd153(35)
      acd153(35)=acd153(13)*acd153(37)
      acd153(34)=acd153(10)*acd153(34)
      acd153(36)=acd153(9)*acd153(38)
      acd153(37)=acd153(1)*acd153(39)
      acd153(33)=acd153(36)+acd153(34)+acd153(35)+acd153(37)+acd153(33)
      acd153(33)=acd153(6)*acd153(33)
      acd153(34)=acd153(14)*acd153(12)
      acd153(35)=acd153(10)*acd153(8)
      acd153(36)=acd153(4)*acd153(1)
      acd153(34)=acd153(36)+acd153(35)+acd153(34)
      acd153(34)=acd153(5)*acd153(34)
      acd153(35)=acd153(13)*acd153(12)
      acd153(36)=acd153(9)*acd153(8)
      acd153(37)=acd153(2)*acd153(1)
      acd153(35)=acd153(37)+acd153(36)+acd153(35)
      acd153(35)=acd153(3)*acd153(35)
      acd153(34)=acd153(35)+acd153(34)
      brack=acd153(31)+acd153(32)+acd153(33)+2.0_ki*acd153(34)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd153h4
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
end module     p0_dbaru_epnebbbarg_d153h4l1d
