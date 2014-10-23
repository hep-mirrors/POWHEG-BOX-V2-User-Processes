module     p0_dbaru_epnebbbarg_d127h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d127h4l1d.f90
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
   public :: derivative , reconstruct_d127
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd127h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd127
      complex(ki) :: brack
      acd127(1)=dotproduct(k1,qshift)
      acd127(2)=dotproduct(qshift,spvak4k2)
      acd127(3)=abb127(32)
      acd127(4)=dotproduct(qshift,spval5k2)
      acd127(5)=abb127(58)
      acd127(6)=dotproduct(qshift,spval6k2)
      acd127(7)=abb127(68)
      acd127(8)=dotproduct(qshift,spvak7k2)
      acd127(9)=abb127(54)
      acd127(10)=dotproduct(k3,qshift)
      acd127(11)=abb127(53)
      acd127(12)=abb127(65)
      acd127(13)=abb127(51)
      acd127(14)=dotproduct(k4,qshift)
      acd127(15)=dotproduct(qshift,qshift)
      acd127(16)=abb127(30)
      acd127(17)=abb127(45)
      acd127(18)=abb127(63)
      acd127(19)=abb127(49)
      acd127(20)=abb127(21)
      acd127(21)=dotproduct(qshift,spvak4k3)
      acd127(22)=abb127(34)
      acd127(23)=abb127(24)
      acd127(24)=dotproduct(qshift,spvak1k2)
      acd127(25)=abb127(13)
      acd127(26)=abb127(22)
      acd127(27)=abb127(17)
      acd127(28)=dotproduct(qshift,spvak1k3)
      acd127(29)=abb127(12)
      acd127(30)=abb127(43)
      acd127(31)=abb127(26)
      acd127(32)=abb127(23)
      acd127(33)=abb127(27)
      acd127(34)=abb127(20)
      acd127(35)=abb127(56)
      acd127(36)=abb127(25)
      acd127(37)=abb127(16)
      acd127(38)=abb127(15)
      acd127(39)=abb127(14)
      acd127(40)=abb127(46)
      acd127(41)=abb127(19)
      acd127(42)=abb127(18)
      acd127(43)=dotproduct(qshift,spvak3k2)
      acd127(44)=acd127(10)+acd127(14)
      acd127(45)=acd127(13)*acd127(44)
      acd127(46)=acd127(28)*acd127(39)
      acd127(47)=acd127(1)*acd127(9)
      acd127(48)=-acd127(15)*acd127(19)
      acd127(49)=acd127(24)*acd127(37)
      acd127(50)=-acd127(24)*acd127(36)
      acd127(50)=acd127(38)+acd127(50)
      acd127(50)=acd127(21)*acd127(50)
      acd127(45)=acd127(50)+acd127(49)+acd127(48)+acd127(47)-acd127(40)+acd127(&
      &46)+acd127(45)
      acd127(45)=acd127(8)*acd127(45)
      acd127(46)=acd127(12)*acd127(44)
      acd127(47)=acd127(28)*acd127(34)
      acd127(48)=acd127(1)*acd127(7)
      acd127(49)=-acd127(15)*acd127(18)
      acd127(50)=acd127(24)*acd127(32)
      acd127(51)=-acd127(24)*acd127(31)
      acd127(51)=acd127(33)+acd127(51)
      acd127(51)=acd127(21)*acd127(51)
      acd127(46)=acd127(51)+acd127(50)+acd127(49)+acd127(48)-acd127(35)+acd127(&
      &47)+acd127(46)
      acd127(46)=acd127(6)*acd127(46)
      acd127(47)=acd127(11)*acd127(44)
      acd127(48)=acd127(28)*acd127(29)
      acd127(49)=acd127(1)*acd127(5)
      acd127(50)=-acd127(15)*acd127(17)
      acd127(51)=acd127(24)*acd127(26)
      acd127(52)=-acd127(24)*acd127(25)
      acd127(52)=acd127(27)+acd127(52)
      acd127(52)=acd127(21)*acd127(52)
      acd127(47)=acd127(52)+acd127(51)+acd127(50)+acd127(49)-acd127(30)+acd127(&
      &48)+acd127(47)
      acd127(47)=acd127(4)*acd127(47)
      acd127(48)=-acd127(16)*acd127(43)
      acd127(49)=acd127(2)*acd127(22)
      acd127(50)=acd127(24)*acd127(41)
      acd127(48)=acd127(50)+acd127(48)+acd127(49)
      acd127(48)=acd127(21)*acd127(48)
      acd127(44)=-acd127(1)+acd127(44)
      acd127(44)=acd127(3)*acd127(44)
      acd127(49)=-acd127(15)*acd127(16)
      acd127(44)=acd127(49)-acd127(23)+acd127(44)
      acd127(44)=acd127(2)*acd127(44)
      acd127(49)=acd127(15)*acd127(20)
      acd127(50)=-acd127(24)*acd127(42)
      brack=acd127(44)+acd127(45)+acd127(46)+acd127(47)+acd127(48)+acd127(49)+a&
      &cd127(50)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd127h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd127
      complex(ki) :: brack
      acd127(1)=k1(iv1)
      acd127(2)=dotproduct(qshift,spvak4k2)
      acd127(3)=abb127(32)
      acd127(4)=dotproduct(qshift,spval5k2)
      acd127(5)=abb127(58)
      acd127(6)=dotproduct(qshift,spval6k2)
      acd127(7)=abb127(68)
      acd127(8)=dotproduct(qshift,spvak7k2)
      acd127(9)=abb127(54)
      acd127(10)=k3(iv1)
      acd127(11)=abb127(53)
      acd127(12)=abb127(65)
      acd127(13)=abb127(51)
      acd127(14)=k4(iv1)
      acd127(15)=qshift(iv1)
      acd127(16)=abb127(30)
      acd127(17)=abb127(45)
      acd127(18)=abb127(63)
      acd127(19)=abb127(49)
      acd127(20)=abb127(21)
      acd127(21)=spvak4k2(iv1)
      acd127(22)=dotproduct(k1,qshift)
      acd127(23)=dotproduct(k3,qshift)
      acd127(24)=dotproduct(k4,qshift)
      acd127(25)=dotproduct(qshift,qshift)
      acd127(26)=dotproduct(qshift,spvak4k3)
      acd127(27)=abb127(34)
      acd127(28)=abb127(24)
      acd127(29)=spval5k2(iv1)
      acd127(30)=dotproduct(qshift,spvak1k2)
      acd127(31)=abb127(13)
      acd127(32)=abb127(22)
      acd127(33)=abb127(17)
      acd127(34)=dotproduct(qshift,spvak1k3)
      acd127(35)=abb127(12)
      acd127(36)=abb127(43)
      acd127(37)=spval6k2(iv1)
      acd127(38)=abb127(26)
      acd127(39)=abb127(23)
      acd127(40)=abb127(27)
      acd127(41)=abb127(20)
      acd127(42)=abb127(56)
      acd127(43)=spvak7k2(iv1)
      acd127(44)=abb127(25)
      acd127(45)=abb127(16)
      acd127(46)=abb127(15)
      acd127(47)=abb127(14)
      acd127(48)=abb127(46)
      acd127(49)=spvak1k2(iv1)
      acd127(50)=abb127(19)
      acd127(51)=abb127(18)
      acd127(52)=spvak4k3(iv1)
      acd127(53)=dotproduct(qshift,spvak3k2)
      acd127(54)=spvak1k3(iv1)
      acd127(55)=spvak3k2(iv1)
      acd127(56)=acd127(8)*acd127(44)
      acd127(57)=acd127(6)*acd127(38)
      acd127(58)=acd127(4)*acd127(31)
      acd127(56)=acd127(56)+acd127(57)+acd127(58)-acd127(50)
      acd127(57)=acd127(49)*acd127(56)
      acd127(58)=acd127(43)*acd127(44)
      acd127(59)=acd127(37)*acd127(38)
      acd127(60)=acd127(29)*acd127(31)
      acd127(58)=acd127(60)+acd127(58)+acd127(59)
      acd127(58)=acd127(30)*acd127(58)
      acd127(59)=acd127(16)*acd127(55)
      acd127(60)=-acd127(21)*acd127(27)
      acd127(61)=-acd127(43)*acd127(46)
      acd127(62)=-acd127(37)*acd127(40)
      acd127(63)=-acd127(29)*acd127(33)
      acd127(57)=acd127(58)+acd127(63)+acd127(62)+acd127(61)+acd127(59)+acd127(&
      &60)+acd127(57)
      acd127(57)=acd127(26)*acd127(57)
      acd127(58)=acd127(10)+acd127(14)
      acd127(59)=-acd127(13)*acd127(58)
      acd127(60)=-acd127(54)*acd127(47)
      acd127(61)=-acd127(1)*acd127(9)
      acd127(62)=2.0_ki*acd127(15)
      acd127(63)=acd127(19)*acd127(62)
      acd127(64)=-acd127(49)*acd127(45)
      acd127(65)=-acd127(52)*acd127(46)
      acd127(59)=acd127(65)+acd127(64)+acd127(63)+acd127(61)+acd127(60)+acd127(&
      &59)
      acd127(59)=acd127(8)*acd127(59)
      acd127(60)=-acd127(12)*acd127(58)
      acd127(61)=-acd127(54)*acd127(41)
      acd127(63)=-acd127(1)*acd127(7)
      acd127(64)=acd127(18)*acd127(62)
      acd127(65)=-acd127(49)*acd127(39)
      acd127(66)=-acd127(52)*acd127(40)
      acd127(60)=acd127(66)+acd127(65)+acd127(64)+acd127(63)+acd127(61)+acd127(&
      &60)
      acd127(60)=acd127(6)*acd127(60)
      acd127(61)=-acd127(11)*acd127(58)
      acd127(63)=-acd127(54)*acd127(35)
      acd127(64)=-acd127(1)*acd127(5)
      acd127(62)=acd127(17)*acd127(62)
      acd127(65)=-acd127(49)*acd127(32)
      acd127(66)=-acd127(52)*acd127(33)
      acd127(61)=acd127(66)+acd127(65)+acd127(62)+acd127(64)+acd127(63)+acd127(&
      &61)
      acd127(61)=acd127(4)*acd127(61)
      acd127(62)=-acd127(34)*acd127(47)
      acd127(63)=acd127(25)*acd127(19)
      acd127(64)=-acd127(22)*acd127(9)
      acd127(65)=acd127(23)+acd127(24)
      acd127(66)=-acd127(13)*acd127(65)
      acd127(62)=acd127(66)+acd127(64)+acd127(63)+acd127(48)+acd127(62)
      acd127(62)=acd127(43)*acd127(62)
      acd127(63)=-acd127(34)*acd127(41)
      acd127(64)=acd127(25)*acd127(18)
      acd127(66)=-acd127(22)*acd127(7)
      acd127(67)=-acd127(12)*acd127(65)
      acd127(63)=acd127(67)+acd127(66)+acd127(64)+acd127(42)+acd127(63)
      acd127(63)=acd127(37)*acd127(63)
      acd127(64)=-acd127(34)*acd127(35)
      acd127(66)=acd127(25)*acd127(17)
      acd127(67)=-acd127(22)*acd127(5)
      acd127(68)=-acd127(11)*acd127(65)
      acd127(64)=acd127(68)+acd127(67)+acd127(66)+acd127(36)+acd127(64)
      acd127(64)=acd127(29)*acd127(64)
      acd127(56)=acd127(52)*acd127(56)
      acd127(66)=-acd127(43)*acd127(45)
      acd127(67)=-acd127(37)*acd127(39)
      acd127(68)=-acd127(29)*acd127(32)
      acd127(56)=acd127(68)+acd127(67)+acd127(66)+acd127(56)
      acd127(56)=acd127(30)*acd127(56)
      acd127(58)=acd127(1)-acd127(58)
      acd127(58)=acd127(2)*acd127(58)
      acd127(65)=acd127(22)-acd127(65)
      acd127(65)=acd127(21)*acd127(65)
      acd127(58)=acd127(58)+acd127(65)
      acd127(58)=acd127(3)*acd127(58)
      acd127(65)=acd127(16)*acd127(53)
      acd127(66)=-acd127(2)*acd127(27)
      acd127(65)=acd127(65)+acd127(66)
      acd127(65)=acd127(52)*acd127(65)
      acd127(66)=acd127(2)*acd127(16)
      acd127(66)=-acd127(20)+acd127(66)
      acd127(66)=acd127(15)*acd127(66)
      acd127(67)=acd127(16)*acd127(25)
      acd127(67)=acd127(28)+acd127(67)
      acd127(67)=acd127(21)*acd127(67)
      acd127(68)=acd127(49)*acd127(51)
      brack=acd127(56)+acd127(57)+acd127(58)+acd127(59)+acd127(60)+acd127(61)+a&
      &cd127(62)+acd127(63)+acd127(64)+acd127(65)+2.0_ki*acd127(66)+acd127(67)+&
      &acd127(68)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd127h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd127
      complex(ki) :: brack
      acd127(1)=d(iv1,iv2)
      acd127(2)=dotproduct(qshift,spvak4k2)
      acd127(3)=abb127(30)
      acd127(4)=dotproduct(qshift,spval5k2)
      acd127(5)=abb127(45)
      acd127(6)=dotproduct(qshift,spval6k2)
      acd127(7)=abb127(63)
      acd127(8)=dotproduct(qshift,spvak7k2)
      acd127(9)=abb127(49)
      acd127(10)=abb127(21)
      acd127(11)=k1(iv1)
      acd127(12)=spvak4k2(iv2)
      acd127(13)=abb127(32)
      acd127(14)=spval5k2(iv2)
      acd127(15)=abb127(58)
      acd127(16)=spval6k2(iv2)
      acd127(17)=abb127(68)
      acd127(18)=spvak7k2(iv2)
      acd127(19)=abb127(54)
      acd127(20)=k1(iv2)
      acd127(21)=spvak4k2(iv1)
      acd127(22)=spval5k2(iv1)
      acd127(23)=spval6k2(iv1)
      acd127(24)=spvak7k2(iv1)
      acd127(25)=k3(iv1)
      acd127(26)=abb127(53)
      acd127(27)=abb127(65)
      acd127(28)=abb127(51)
      acd127(29)=k3(iv2)
      acd127(30)=k4(iv1)
      acd127(31)=k4(iv2)
      acd127(32)=qshift(iv1)
      acd127(33)=qshift(iv2)
      acd127(34)=spvak4k3(iv2)
      acd127(35)=abb127(34)
      acd127(36)=spvak4k3(iv1)
      acd127(37)=spvak1k2(iv2)
      acd127(38)=dotproduct(qshift,spvak4k3)
      acd127(39)=abb127(13)
      acd127(40)=abb127(22)
      acd127(41)=dotproduct(qshift,spvak1k2)
      acd127(42)=abb127(17)
      acd127(43)=spvak1k3(iv2)
      acd127(44)=abb127(12)
      acd127(45)=spvak1k2(iv1)
      acd127(46)=spvak1k3(iv1)
      acd127(47)=abb127(26)
      acd127(48)=abb127(23)
      acd127(49)=abb127(27)
      acd127(50)=abb127(20)
      acd127(51)=abb127(25)
      acd127(52)=abb127(16)
      acd127(53)=abb127(15)
      acd127(54)=abb127(14)
      acd127(55)=abb127(19)
      acd127(56)=spvak3k2(iv2)
      acd127(57)=spvak3k2(iv1)
      acd127(58)=acd127(51)*acd127(8)
      acd127(59)=acd127(47)*acd127(6)
      acd127(60)=acd127(39)*acd127(4)
      acd127(58)=acd127(59)+acd127(58)+acd127(60)-acd127(55)
      acd127(59)=-acd127(37)*acd127(58)
      acd127(60)=acd127(12)*acd127(35)
      acd127(61)=-acd127(3)*acd127(56)
      acd127(62)=acd127(41)*acd127(51)
      acd127(62)=acd127(62)-acd127(53)
      acd127(63)=-acd127(18)*acd127(62)
      acd127(64)=acd127(41)*acd127(47)
      acd127(64)=acd127(64)-acd127(49)
      acd127(65)=-acd127(16)*acd127(64)
      acd127(66)=acd127(39)*acd127(41)
      acd127(66)=acd127(66)-acd127(42)
      acd127(67)=-acd127(14)*acd127(66)
      acd127(59)=acd127(59)+acd127(67)+acd127(65)+acd127(63)+acd127(60)+acd127(&
      &61)
      acd127(59)=acd127(36)*acd127(59)
      acd127(58)=-acd127(45)*acd127(58)
      acd127(60)=acd127(21)*acd127(35)
      acd127(61)=-acd127(3)*acd127(57)
      acd127(62)=-acd127(24)*acd127(62)
      acd127(63)=-acd127(23)*acd127(64)
      acd127(64)=-acd127(22)*acd127(66)
      acd127(58)=acd127(58)+acd127(64)+acd127(63)+acd127(62)+acd127(60)+acd127(&
      &61)
      acd127(58)=acd127(34)*acd127(58)
      acd127(60)=-acd127(8)*acd127(9)
      acd127(61)=-acd127(6)*acd127(7)
      acd127(62)=-acd127(4)*acd127(5)
      acd127(63)=-acd127(3)*acd127(2)
      acd127(60)=acd127(63)+acd127(62)+acd127(61)+acd127(10)+acd127(60)
      acd127(60)=acd127(1)*acd127(60)
      acd127(61)=-acd127(21)*acd127(33)
      acd127(62)=-acd127(12)*acd127(32)
      acd127(61)=acd127(61)+acd127(62)
      acd127(61)=acd127(3)*acd127(61)
      acd127(60)=acd127(61)+acd127(60)
      acd127(61)=acd127(43)*acd127(54)
      acd127(62)=2.0_ki*acd127(33)
      acd127(63)=-acd127(9)*acd127(62)
      acd127(64)=acd127(29)+acd127(31)
      acd127(65)=acd127(28)*acd127(64)
      acd127(66)=acd127(20)*acd127(19)
      acd127(61)=acd127(66)+acd127(65)+acd127(61)+acd127(63)
      acd127(61)=acd127(24)*acd127(61)
      acd127(63)=acd127(43)*acd127(50)
      acd127(65)=-acd127(7)*acd127(62)
      acd127(66)=acd127(27)*acd127(64)
      acd127(67)=acd127(20)*acd127(17)
      acd127(63)=acd127(67)+acd127(66)+acd127(63)+acd127(65)
      acd127(63)=acd127(23)*acd127(63)
      acd127(65)=acd127(43)*acd127(44)
      acd127(62)=-acd127(5)*acd127(62)
      acd127(66)=acd127(26)*acd127(64)
      acd127(67)=acd127(20)*acd127(15)
      acd127(62)=acd127(67)+acd127(66)+acd127(65)+acd127(62)
      acd127(62)=acd127(22)*acd127(62)
      acd127(65)=acd127(25)+acd127(30)
      acd127(66)=acd127(28)*acd127(65)
      acd127(67)=acd127(46)*acd127(54)
      acd127(68)=2.0_ki*acd127(32)
      acd127(69)=-acd127(9)*acd127(68)
      acd127(70)=acd127(11)*acd127(19)
      acd127(66)=acd127(70)+acd127(67)+acd127(69)+acd127(66)
      acd127(66)=acd127(18)*acd127(66)
      acd127(67)=acd127(27)*acd127(65)
      acd127(69)=acd127(46)*acd127(50)
      acd127(70)=-acd127(7)*acd127(68)
      acd127(71)=acd127(11)*acd127(17)
      acd127(67)=acd127(71)+acd127(69)+acd127(70)+acd127(67)
      acd127(67)=acd127(16)*acd127(67)
      acd127(69)=acd127(26)*acd127(65)
      acd127(70)=acd127(46)*acd127(44)
      acd127(68)=-acd127(5)*acd127(68)
      acd127(71)=acd127(11)*acd127(15)
      acd127(68)=acd127(71)+acd127(70)+acd127(68)+acd127(69)
      acd127(68)=acd127(14)*acd127(68)
      acd127(69)=acd127(38)*acd127(51)
      acd127(69)=acd127(69)-acd127(52)
      acd127(70)=-acd127(18)*acd127(69)
      acd127(71)=acd127(38)*acd127(47)
      acd127(71)=acd127(71)-acd127(48)
      acd127(72)=-acd127(16)*acd127(71)
      acd127(73)=acd127(38)*acd127(39)
      acd127(73)=acd127(73)-acd127(40)
      acd127(74)=-acd127(14)*acd127(73)
      acd127(70)=acd127(74)+acd127(70)+acd127(72)
      acd127(70)=acd127(45)*acd127(70)
      acd127(69)=-acd127(24)*acd127(69)
      acd127(71)=-acd127(23)*acd127(71)
      acd127(72)=-acd127(22)*acd127(73)
      acd127(69)=acd127(72)+acd127(69)+acd127(71)
      acd127(69)=acd127(37)*acd127(69)
      acd127(64)=-acd127(20)+acd127(64)
      acd127(64)=acd127(21)*acd127(64)
      acd127(65)=-acd127(11)+acd127(65)
      acd127(65)=acd127(12)*acd127(65)
      acd127(64)=acd127(64)+acd127(65)
      acd127(64)=acd127(13)*acd127(64)
      brack=acd127(58)+acd127(59)+2.0_ki*acd127(60)+acd127(61)+acd127(62)+acd12&
      &7(63)+acd127(64)+acd127(66)+acd127(67)+acd127(68)+acd127(69)+acd127(70)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd127h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd127
      complex(ki) :: brack
      acd127(1)=d(iv1,iv2)
      acd127(2)=spvak4k2(iv3)
      acd127(3)=abb127(30)
      acd127(4)=spval5k2(iv3)
      acd127(5)=abb127(45)
      acd127(6)=spval6k2(iv3)
      acd127(7)=abb127(63)
      acd127(8)=spvak7k2(iv3)
      acd127(9)=abb127(49)
      acd127(10)=d(iv1,iv3)
      acd127(11)=spvak4k2(iv2)
      acd127(12)=spval5k2(iv2)
      acd127(13)=spval6k2(iv2)
      acd127(14)=spvak7k2(iv2)
      acd127(15)=d(iv2,iv3)
      acd127(16)=spvak4k2(iv1)
      acd127(17)=spval5k2(iv1)
      acd127(18)=spval6k2(iv1)
      acd127(19)=spvak7k2(iv1)
      acd127(20)=spvak1k2(iv2)
      acd127(21)=spvak4k3(iv3)
      acd127(22)=abb127(13)
      acd127(23)=spvak1k2(iv3)
      acd127(24)=spvak4k3(iv2)
      acd127(25)=spvak1k2(iv1)
      acd127(26)=spvak4k3(iv1)
      acd127(27)=abb127(26)
      acd127(28)=abb127(25)
      acd127(29)=acd127(5)*acd127(4)
      acd127(30)=acd127(7)*acd127(6)
      acd127(31)=acd127(9)*acd127(8)
      acd127(32)=acd127(2)*acd127(3)
      acd127(29)=acd127(32)+acd127(31)+acd127(30)+acd127(29)
      acd127(30)=2.0_ki*acd127(1)
      acd127(29)=acd127(30)*acd127(29)
      acd127(30)=acd127(4)*acd127(22)
      acd127(31)=acd127(6)*acd127(27)
      acd127(32)=acd127(8)*acd127(28)
      acd127(30)=acd127(30)+acd127(32)+acd127(31)
      acd127(31)=acd127(25)*acd127(24)
      acd127(32)=acd127(26)*acd127(20)
      acd127(31)=acd127(31)+acd127(32)
      acd127(30)=acd127(31)*acd127(30)
      acd127(31)=2.0_ki*acd127(10)
      acd127(32)=acd127(11)*acd127(31)
      acd127(33)=2.0_ki*acd127(15)
      acd127(34)=acd127(16)*acd127(33)
      acd127(32)=acd127(34)+acd127(32)
      acd127(32)=acd127(3)*acd127(32)
      acd127(34)=acd127(25)*acd127(21)
      acd127(35)=acd127(26)*acd127(23)
      acd127(34)=acd127(34)+acd127(35)
      acd127(35)=acd127(22)*acd127(34)
      acd127(36)=acd127(5)*acd127(31)
      acd127(35)=acd127(36)+acd127(35)
      acd127(35)=acd127(12)*acd127(35)
      acd127(36)=acd127(27)*acd127(34)
      acd127(37)=acd127(7)*acd127(31)
      acd127(36)=acd127(36)+acd127(37)
      acd127(36)=acd127(13)*acd127(36)
      acd127(34)=acd127(28)*acd127(34)
      acd127(31)=acd127(9)*acd127(31)
      acd127(31)=acd127(34)+acd127(31)
      acd127(31)=acd127(14)*acd127(31)
      acd127(34)=acd127(21)*acd127(20)
      acd127(37)=acd127(24)*acd127(23)
      acd127(34)=acd127(34)+acd127(37)
      acd127(37)=acd127(22)*acd127(34)
      acd127(38)=acd127(5)*acd127(33)
      acd127(37)=acd127(38)+acd127(37)
      acd127(37)=acd127(17)*acd127(37)
      acd127(38)=acd127(27)*acd127(34)
      acd127(39)=acd127(7)*acd127(33)
      acd127(38)=acd127(38)+acd127(39)
      acd127(38)=acd127(18)*acd127(38)
      acd127(34)=acd127(28)*acd127(34)
      acd127(33)=acd127(9)*acd127(33)
      acd127(33)=acd127(34)+acd127(33)
      acd127(33)=acd127(19)*acd127(33)
      brack=acd127(29)+acd127(30)+acd127(31)+acd127(32)+acd127(33)+acd127(35)+a&
      &cd127(36)+acd127(37)+acd127(38)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h4
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
!---#[ subroutine reconstruct_d127:
   subroutine     reconstruct_d127(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group9
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group9), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_127:
      coeffs%coeffs_127%c0 = derivative(czip)
      coeffs%coeffs_127%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_127%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_127%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_127%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_127%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_127%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_127%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_127%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_127%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_127%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_127%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_127%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_127%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_127%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_127%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_127%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_127%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_127%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_127%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_127%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_127%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_127%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_127%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_127%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_127%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_127%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_127%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_127%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_127%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_127%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_127%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_127%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_127%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_127%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_127:
   end subroutine reconstruct_d127
!---#] subroutine reconstruct_d127:
end module     p0_dbaru_epnebbbarg_d127h4l1d
