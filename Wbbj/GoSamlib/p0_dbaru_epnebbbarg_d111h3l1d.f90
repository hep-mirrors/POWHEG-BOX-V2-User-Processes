module     p0_dbaru_epnebbbarg_d111h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d111h3l1d.f90
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
   public :: derivative , reconstruct_d111
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd111h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd111
      complex(ki) :: brack
      acd111(1)=dotproduct(k2,qshift)
      acd111(2)=abb111(20)
      acd111(3)=dotproduct(l5,qshift)
      acd111(4)=abb111(15)
      acd111(5)=dotproduct(l6,qshift)
      acd111(6)=dotproduct(k7,qshift)
      acd111(7)=dotproduct(qshift,spvak2l5)
      acd111(8)=abb111(29)
      acd111(9)=dotproduct(qshift,spvak2l6)
      acd111(10)=abb111(28)
      acd111(11)=dotproduct(qshift,spvak2k7)
      acd111(12)=abb111(30)
      acd111(13)=abb111(11)
      acd111(14)=abb111(33)
      acd111(15)=abb111(26)
      acd111(16)=abb111(14)
      acd111(17)=abb111(19)
      acd111(18)=abb111(25)
      acd111(19)=dotproduct(qshift,qshift)
      acd111(20)=abb111(17)
      acd111(21)=dotproduct(qshift,spvak1k7)
      acd111(22)=abb111(34)
      acd111(23)=dotproduct(qshift,spvak4k7)
      acd111(24)=abb111(31)
      acd111(25)=abb111(22)
      acd111(26)=abb111(37)
      acd111(27)=abb111(36)
      acd111(28)=abb111(45)
      acd111(29)=dotproduct(qshift,spvak1l5)
      acd111(30)=abb111(12)
      acd111(31)=dotproduct(qshift,spvak1l6)
      acd111(32)=abb111(18)
      acd111(33)=dotproduct(qshift,spvak4l5)
      acd111(34)=abb111(35)
      acd111(35)=dotproduct(qshift,spvak4l6)
      acd111(36)=abb111(43)
      acd111(37)=dotproduct(qshift,spval5k2)
      acd111(38)=abb111(38)
      acd111(39)=dotproduct(qshift,spval6k2)
      acd111(40)=abb111(41)
      acd111(41)=abb111(10)
      acd111(42)=abb111(27)
      acd111(43)=abb111(32)
      acd111(44)=dotproduct(qshift,spvak7k2)
      acd111(45)=abb111(23)
      acd111(46)=abb111(24)
      acd111(47)=acd111(3)+acd111(5)
      acd111(48)=acd111(19)-acd111(47)
      acd111(48)=acd111(14)*acd111(48)
      acd111(49)=acd111(35)*acd111(36)
      acd111(50)=acd111(33)*acd111(34)
      acd111(51)=acd111(31)*acd111(32)
      acd111(52)=acd111(29)*acd111(30)
      acd111(53)=acd111(39)*acd111(40)
      acd111(54)=acd111(37)*acd111(38)
      acd111(55)=acd111(1)*acd111(12)
      acd111(48)=acd111(55)+acd111(54)+acd111(53)+acd111(52)+acd111(51)+acd111(&
      &50)-acd111(41)+acd111(49)+acd111(48)
      acd111(48)=acd111(11)*acd111(48)
      acd111(49)=-acd111(6)+acd111(47)
      acd111(49)=acd111(4)*acd111(49)
      acd111(50)=acd111(9)*acd111(10)
      acd111(51)=acd111(7)*acd111(8)
      acd111(52)=acd111(1)*acd111(2)
      acd111(49)=acd111(52)+acd111(51)+acd111(50)-acd111(13)+acd111(49)
      acd111(49)=acd111(1)*acd111(49)
      acd111(50)=acd111(6)+acd111(19)
      acd111(51)=-acd111(17)*acd111(50)
      acd111(52)=acd111(23)*acd111(27)
      acd111(53)=acd111(21)*acd111(26)
      acd111(51)=acd111(53)-acd111(28)+acd111(52)+acd111(51)
      acd111(51)=acd111(9)*acd111(51)
      acd111(50)=-acd111(16)*acd111(50)
      acd111(52)=acd111(23)*acd111(24)
      acd111(53)=acd111(21)*acd111(22)
      acd111(50)=acd111(53)-acd111(25)+acd111(52)+acd111(50)
      acd111(50)=acd111(7)*acd111(50)
      acd111(47)=-acd111(15)*acd111(47)
      acd111(52)=-acd111(44)*acd111(45)
      acd111(53)=-acd111(39)*acd111(43)
      acd111(54)=-acd111(37)*acd111(42)
      acd111(55)=acd111(19)*acd111(20)
      acd111(56)=-acd111(6)*acd111(18)
      brack=acd111(46)+acd111(47)+acd111(48)+acd111(49)+acd111(50)+acd111(51)+a&
      &cd111(52)+acd111(53)+acd111(54)+acd111(55)+acd111(56)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd111h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd111
      complex(ki) :: brack
      acd111(1)=k2(iv1)
      acd111(2)=dotproduct(k2,qshift)
      acd111(3)=abb111(20)
      acd111(4)=dotproduct(l5,qshift)
      acd111(5)=abb111(15)
      acd111(6)=dotproduct(l6,qshift)
      acd111(7)=dotproduct(k7,qshift)
      acd111(8)=dotproduct(qshift,spvak2l5)
      acd111(9)=abb111(29)
      acd111(10)=dotproduct(qshift,spvak2l6)
      acd111(11)=abb111(28)
      acd111(12)=dotproduct(qshift,spvak2k7)
      acd111(13)=abb111(30)
      acd111(14)=abb111(11)
      acd111(15)=l5(iv1)
      acd111(16)=abb111(33)
      acd111(17)=abb111(26)
      acd111(18)=l6(iv1)
      acd111(19)=k7(iv1)
      acd111(20)=abb111(14)
      acd111(21)=abb111(19)
      acd111(22)=abb111(25)
      acd111(23)=qshift(iv1)
      acd111(24)=abb111(17)
      acd111(25)=spvak2l5(iv1)
      acd111(26)=dotproduct(qshift,qshift)
      acd111(27)=dotproduct(qshift,spvak1k7)
      acd111(28)=abb111(34)
      acd111(29)=dotproduct(qshift,spvak4k7)
      acd111(30)=abb111(31)
      acd111(31)=abb111(22)
      acd111(32)=spvak2l6(iv1)
      acd111(33)=abb111(37)
      acd111(34)=abb111(36)
      acd111(35)=abb111(45)
      acd111(36)=spvak2k7(iv1)
      acd111(37)=dotproduct(qshift,spvak1l5)
      acd111(38)=abb111(12)
      acd111(39)=dotproduct(qshift,spvak1l6)
      acd111(40)=abb111(18)
      acd111(41)=dotproduct(qshift,spvak4l5)
      acd111(42)=abb111(35)
      acd111(43)=dotproduct(qshift,spvak4l6)
      acd111(44)=abb111(43)
      acd111(45)=dotproduct(qshift,spval5k2)
      acd111(46)=abb111(38)
      acd111(47)=dotproduct(qshift,spval6k2)
      acd111(48)=abb111(41)
      acd111(49)=abb111(10)
      acd111(50)=spvak1l5(iv1)
      acd111(51)=spvak1l6(iv1)
      acd111(52)=spvak1k7(iv1)
      acd111(53)=spvak4k7(iv1)
      acd111(54)=spvak4l5(iv1)
      acd111(55)=spvak4l6(iv1)
      acd111(56)=spval5k2(iv1)
      acd111(57)=abb111(27)
      acd111(58)=spval6k2(iv1)
      acd111(59)=abb111(32)
      acd111(60)=spvak7k2(iv1)
      acd111(61)=abb111(23)
      acd111(62)=acd111(15)+acd111(18)
      acd111(63)=2.0_ki*acd111(23)
      acd111(64)=acd111(63)-acd111(62)
      acd111(64)=acd111(16)*acd111(64)
      acd111(65)=acd111(48)*acd111(58)
      acd111(66)=acd111(46)*acd111(56)
      acd111(67)=acd111(44)*acd111(55)
      acd111(68)=acd111(42)*acd111(54)
      acd111(69)=acd111(40)*acd111(51)
      acd111(70)=acd111(38)*acd111(50)
      acd111(71)=acd111(1)*acd111(13)
      acd111(64)=acd111(71)+acd111(64)+acd111(70)+acd111(69)+acd111(68)+acd111(&
      &67)+acd111(65)+acd111(66)
      acd111(64)=acd111(12)*acd111(64)
      acd111(65)=acd111(48)*acd111(47)
      acd111(66)=acd111(46)*acd111(45)
      acd111(67)=acd111(44)*acd111(43)
      acd111(68)=acd111(42)*acd111(41)
      acd111(69)=acd111(40)*acd111(39)
      acd111(70)=acd111(38)*acd111(37)
      acd111(71)=acd111(4)+acd111(6)
      acd111(72)=acd111(26)-acd111(71)
      acd111(72)=acd111(16)*acd111(72)
      acd111(73)=acd111(2)*acd111(13)
      acd111(65)=acd111(73)+acd111(72)+acd111(70)+acd111(69)+acd111(68)+acd111(&
      &67)+acd111(66)-acd111(49)+acd111(65)
      acd111(65)=acd111(36)*acd111(65)
      acd111(66)=acd111(10)*acd111(11)
      acd111(67)=acd111(8)*acd111(9)
      acd111(68)=-acd111(7)+acd111(71)
      acd111(68)=acd111(5)*acd111(68)
      acd111(69)=acd111(2)*acd111(3)
      acd111(66)=2.0_ki*acd111(69)+acd111(68)+acd111(67)-acd111(14)+acd111(66)
      acd111(66)=acd111(1)*acd111(66)
      acd111(67)=acd111(63)+acd111(19)
      acd111(68)=-acd111(21)*acd111(67)
      acd111(69)=acd111(34)*acd111(53)
      acd111(70)=acd111(33)*acd111(52)
      acd111(68)=acd111(69)+acd111(70)+acd111(68)
      acd111(68)=acd111(10)*acd111(68)
      acd111(67)=-acd111(20)*acd111(67)
      acd111(69)=acd111(30)*acd111(53)
      acd111(70)=acd111(28)*acd111(52)
      acd111(67)=acd111(69)+acd111(70)+acd111(67)
      acd111(67)=acd111(8)*acd111(67)
      acd111(69)=acd111(29)*acd111(34)
      acd111(70)=acd111(27)*acd111(33)
      acd111(71)=acd111(7)+acd111(26)
      acd111(72)=-acd111(21)*acd111(71)
      acd111(69)=acd111(72)+acd111(70)-acd111(35)+acd111(69)
      acd111(69)=acd111(32)*acd111(69)
      acd111(70)=acd111(29)*acd111(30)
      acd111(72)=acd111(27)*acd111(28)
      acd111(71)=-acd111(20)*acd111(71)
      acd111(70)=acd111(71)+acd111(72)-acd111(31)+acd111(70)
      acd111(70)=acd111(25)*acd111(70)
      acd111(71)=acd111(32)*acd111(11)
      acd111(72)=acd111(25)*acd111(9)
      acd111(73)=-acd111(19)+acd111(62)
      acd111(73)=acd111(5)*acd111(73)
      acd111(71)=acd111(73)+acd111(71)+acd111(72)
      acd111(71)=acd111(2)*acd111(71)
      acd111(62)=-acd111(17)*acd111(62)
      acd111(72)=-acd111(60)*acd111(61)
      acd111(73)=-acd111(58)*acd111(59)
      acd111(74)=-acd111(56)*acd111(57)
      acd111(63)=acd111(24)*acd111(63)
      acd111(75)=-acd111(19)*acd111(22)
      brack=acd111(62)+acd111(63)+acd111(64)+acd111(65)+acd111(66)+acd111(67)+a&
      &cd111(68)+acd111(69)+acd111(70)+acd111(71)+acd111(72)+acd111(73)+acd111(&
      &74)+acd111(75)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd111h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd111
      complex(ki) :: brack
      acd111(1)=d(iv1,iv2)
      acd111(2)=dotproduct(qshift,spvak2l5)
      acd111(3)=abb111(14)
      acd111(4)=dotproduct(qshift,spvak2l6)
      acd111(5)=abb111(19)
      acd111(6)=dotproduct(qshift,spvak2k7)
      acd111(7)=abb111(33)
      acd111(8)=abb111(17)
      acd111(9)=k2(iv1)
      acd111(10)=k2(iv2)
      acd111(11)=abb111(20)
      acd111(12)=l5(iv2)
      acd111(13)=abb111(15)
      acd111(14)=l6(iv2)
      acd111(15)=k7(iv2)
      acd111(16)=spvak2l5(iv2)
      acd111(17)=abb111(29)
      acd111(18)=spvak2l6(iv2)
      acd111(19)=abb111(28)
      acd111(20)=spvak2k7(iv2)
      acd111(21)=abb111(30)
      acd111(22)=l5(iv1)
      acd111(23)=l6(iv1)
      acd111(24)=k7(iv1)
      acd111(25)=spvak2l5(iv1)
      acd111(26)=spvak2l6(iv1)
      acd111(27)=spvak2k7(iv1)
      acd111(28)=qshift(iv1)
      acd111(29)=qshift(iv2)
      acd111(30)=spvak1k7(iv2)
      acd111(31)=abb111(34)
      acd111(32)=spvak4k7(iv2)
      acd111(33)=abb111(31)
      acd111(34)=spvak1k7(iv1)
      acd111(35)=spvak4k7(iv1)
      acd111(36)=abb111(37)
      acd111(37)=abb111(36)
      acd111(38)=spvak1l5(iv2)
      acd111(39)=abb111(12)
      acd111(40)=spvak1l6(iv2)
      acd111(41)=abb111(18)
      acd111(42)=spvak4l5(iv2)
      acd111(43)=abb111(35)
      acd111(44)=spvak4l6(iv2)
      acd111(45)=abb111(43)
      acd111(46)=spval5k2(iv2)
      acd111(47)=abb111(38)
      acd111(48)=spval6k2(iv2)
      acd111(49)=abb111(41)
      acd111(50)=spvak1l5(iv1)
      acd111(51)=spvak1l6(iv1)
      acd111(52)=spvak4l5(iv1)
      acd111(53)=spvak4l6(iv1)
      acd111(54)=spval5k2(iv1)
      acd111(55)=spval6k2(iv1)
      acd111(56)=acd111(12)+acd111(14)
      acd111(57)=2.0_ki*acd111(29)
      acd111(58)=acd111(57)-acd111(56)
      acd111(58)=acd111(7)*acd111(58)
      acd111(59)=acd111(49)*acd111(48)
      acd111(60)=acd111(47)*acd111(46)
      acd111(61)=acd111(45)*acd111(44)
      acd111(62)=acd111(43)*acd111(42)
      acd111(63)=acd111(41)*acd111(40)
      acd111(64)=acd111(39)*acd111(38)
      acd111(65)=acd111(10)*acd111(21)
      acd111(58)=acd111(58)+acd111(65)+acd111(64)+acd111(63)+acd111(62)+acd111(&
      &61)+acd111(59)+acd111(60)
      acd111(58)=acd111(27)*acd111(58)
      acd111(59)=acd111(22)+acd111(23)
      acd111(60)=2.0_ki*acd111(28)
      acd111(61)=acd111(60)-acd111(59)
      acd111(61)=acd111(7)*acd111(61)
      acd111(62)=acd111(49)*acd111(55)
      acd111(63)=acd111(47)*acd111(54)
      acd111(64)=acd111(45)*acd111(53)
      acd111(65)=acd111(43)*acd111(52)
      acd111(66)=acd111(41)*acd111(51)
      acd111(67)=acd111(39)*acd111(50)
      acd111(68)=acd111(9)*acd111(21)
      acd111(61)=acd111(61)+acd111(68)+acd111(67)+acd111(66)+acd111(65)+acd111(&
      &64)+acd111(62)+acd111(63)
      acd111(61)=acd111(20)*acd111(61)
      acd111(62)=acd111(18)*acd111(19)
      acd111(63)=acd111(16)*acd111(17)
      acd111(56)=-acd111(15)+acd111(56)
      acd111(56)=acd111(13)*acd111(56)
      acd111(64)=acd111(10)*acd111(11)
      acd111(56)=2.0_ki*acd111(64)+acd111(56)+acd111(62)+acd111(63)
      acd111(56)=acd111(9)*acd111(56)
      acd111(62)=2.0_ki*acd111(1)
      acd111(63)=-acd111(4)*acd111(62)
      acd111(57)=acd111(57)+acd111(15)
      acd111(64)=-acd111(26)*acd111(57)
      acd111(60)=acd111(60)+acd111(24)
      acd111(65)=-acd111(18)*acd111(60)
      acd111(63)=acd111(65)+acd111(63)+acd111(64)
      acd111(63)=acd111(5)*acd111(63)
      acd111(64)=-acd111(2)*acd111(62)
      acd111(57)=-acd111(25)*acd111(57)
      acd111(60)=-acd111(16)*acd111(60)
      acd111(57)=acd111(60)+acd111(64)+acd111(57)
      acd111(57)=acd111(3)*acd111(57)
      acd111(60)=acd111(26)*acd111(19)
      acd111(64)=acd111(25)*acd111(17)
      acd111(59)=-acd111(24)+acd111(59)
      acd111(59)=acd111(13)*acd111(59)
      acd111(59)=acd111(59)+acd111(60)+acd111(64)
      acd111(59)=acd111(10)*acd111(59)
      acd111(60)=acd111(7)*acd111(6)
      acd111(60)=acd111(60)+acd111(8)
      acd111(60)=acd111(62)*acd111(60)
      acd111(62)=acd111(32)*acd111(37)
      acd111(64)=acd111(30)*acd111(36)
      acd111(62)=acd111(62)+acd111(64)
      acd111(62)=acd111(26)*acd111(62)
      acd111(64)=acd111(32)*acd111(33)
      acd111(65)=acd111(30)*acd111(31)
      acd111(64)=acd111(64)+acd111(65)
      acd111(64)=acd111(25)*acd111(64)
      acd111(65)=acd111(35)*acd111(37)
      acd111(66)=acd111(34)*acd111(36)
      acd111(65)=acd111(65)+acd111(66)
      acd111(65)=acd111(18)*acd111(65)
      acd111(66)=acd111(33)*acd111(35)
      acd111(67)=acd111(31)*acd111(34)
      acd111(66)=acd111(66)+acd111(67)
      acd111(66)=acd111(16)*acd111(66)
      brack=acd111(56)+acd111(57)+acd111(58)+acd111(59)+acd111(60)+acd111(61)+a&
      &cd111(62)+acd111(63)+acd111(64)+acd111(65)+acd111(66)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd111h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(20) :: acd111
      complex(ki) :: brack
      acd111(1)=d(iv1,iv2)
      acd111(2)=spvak2l5(iv3)
      acd111(3)=abb111(14)
      acd111(4)=spvak2l6(iv3)
      acd111(5)=abb111(19)
      acd111(6)=spvak2k7(iv3)
      acd111(7)=abb111(33)
      acd111(8)=d(iv1,iv3)
      acd111(9)=spvak2l5(iv2)
      acd111(10)=spvak2l6(iv2)
      acd111(11)=spvak2k7(iv2)
      acd111(12)=d(iv2,iv3)
      acd111(13)=spvak2l5(iv1)
      acd111(14)=spvak2l6(iv1)
      acd111(15)=spvak2k7(iv1)
      acd111(16)=-acd111(2)*acd111(3)
      acd111(17)=-acd111(4)*acd111(5)
      acd111(18)=acd111(6)*acd111(7)
      acd111(16)=acd111(18)+acd111(16)+acd111(17)
      acd111(16)=acd111(1)*acd111(16)
      acd111(17)=-acd111(9)*acd111(3)
      acd111(18)=-acd111(10)*acd111(5)
      acd111(19)=acd111(11)*acd111(7)
      acd111(17)=acd111(19)+acd111(18)+acd111(17)
      acd111(17)=acd111(8)*acd111(17)
      acd111(18)=-acd111(13)*acd111(3)
      acd111(19)=-acd111(14)*acd111(5)
      acd111(20)=acd111(15)*acd111(7)
      acd111(18)=acd111(20)+acd111(19)+acd111(18)
      acd111(18)=acd111(12)*acd111(18)
      acd111(16)=acd111(18)+acd111(17)+acd111(16)
      brack=2.0_ki*acd111(16)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd111h3
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d111:
   subroutine     reconstruct_d111(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_111:
      coeffs%coeffs_111%c0 = derivative(czip)
      coeffs%coeffs_111%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_111%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_111%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_111%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_111%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_111%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_111%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_111%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_111%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_111%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_111%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_111%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_111%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_111%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_111%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_111%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_111%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_111%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_111%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_111%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_111%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_111%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_111%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_111%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_111%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_111%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_111%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_111%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_111%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_111%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_111%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_111%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_111%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_111%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_111:
   end subroutine reconstruct_d111
!---#] subroutine reconstruct_d111:
end module     p0_dbaru_epnebbbarg_d111h3l1d
