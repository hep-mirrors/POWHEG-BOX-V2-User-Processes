module     p0_dbaru_epnebbbarg_d17h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d17h1l1d.f90
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
   public :: derivative , reconstruct_d17
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd17h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(54) :: acd17
      complex(ki) :: brack
      acd17(1)=dotproduct(k1,qshift)
      acd17(2)=dotproduct(qshift,spvak4k3)
      acd17(3)=abb17(37)
      acd17(4)=abb17(48)
      acd17(5)=dotproduct(k2,qshift)
      acd17(6)=dotproduct(k3,qshift)
      acd17(7)=abb17(74)
      acd17(8)=dotproduct(k4,qshift)
      acd17(9)=dotproduct(k7,qshift)
      acd17(10)=abb17(14)
      acd17(11)=dotproduct(qshift,qshift)
      acd17(12)=abb17(65)
      acd17(13)=dotproduct(qshift,spvak1k7)
      acd17(14)=abb17(23)
      acd17(15)=dotproduct(qshift,spvak2k7)
      acd17(16)=abb17(15)
      acd17(17)=abb17(12)
      acd17(18)=dotproduct(qshift,spvak1k3)
      acd17(19)=abb17(27)
      acd17(20)=abb17(44)
      acd17(21)=abb17(67)
      acd17(22)=abb17(19)
      acd17(23)=dotproduct(qshift,spval6l5)
      acd17(24)=abb17(75)
      acd17(25)=abb17(50)
      acd17(26)=dotproduct(l5,qshift)
      acd17(27)=dotproduct(l6,qshift)
      acd17(28)=abb17(62)
      acd17(29)=abb17(28)
      acd17(30)=abb17(24)
      acd17(31)=abb17(31)
      acd17(32)=abb17(16)
      acd17(33)=abb17(17)
      acd17(34)=abb17(66)
      acd17(35)=abb17(26)
      acd17(36)=abb17(21)
      acd17(37)=abb17(20)
      acd17(38)=abb17(18)
      acd17(39)=abb17(13)
      acd17(40)=abb17(11)
      acd17(41)=abb17(22)
      acd17(42)=abb17(29)
      acd17(43)=abb17(25)
      acd17(44)=abb17(10)
      acd17(45)=abb17(73)
      acd17(46)=-acd17(29)*acd17(9)
      acd17(47)=-acd17(36)*acd17(13)
      acd17(48)=-acd17(38)*acd17(15)
      acd17(46)=acd17(40)+acd17(48)+acd17(47)+acd17(46)
      acd17(46)=acd17(46)*acd17(23)
      acd17(47)=-acd17(10)*acd17(9)
      acd17(48)=acd17(14)*acd17(13)
      acd17(49)=-acd17(16)*acd17(15)
      acd17(47)=acd17(17)+acd17(49)+acd17(48)+acd17(47)
      acd17(47)=acd17(47)*acd17(5)
      acd17(48)=acd17(30)*acd17(9)
      acd17(49)=acd17(37)*acd17(13)
      acd17(50)=acd17(39)*acd17(15)
      acd17(46)=-acd17(41)+acd17(50)+acd17(49)+acd17(48)+acd17(47)+acd17(46)
      acd17(46)=acd17(2)*acd17(46)
      acd17(47)=-acd17(12)*acd17(5)
      acd17(48)=-acd17(28)*acd17(9)
      acd17(49)=-acd17(32)*acd17(2)
      acd17(50)=-acd17(33)*acd17(15)
      acd17(51)=-acd17(34)*acd17(23)
      acd17(47)=acd17(35)+acd17(51)+acd17(50)+acd17(49)+acd17(48)+acd17(47)
      acd17(47)=acd17(11)*acd17(47)
      acd17(48)=-acd17(7)*acd17(5)
      acd17(49)=-acd17(21)*acd17(9)
      acd17(50)=-acd17(22)*acd17(15)
      acd17(51)=acd17(24)*acd17(23)
      acd17(48)=acd17(25)+acd17(51)+acd17(50)+acd17(49)+acd17(48)
      acd17(49)=acd17(8)+acd17(6)
      acd17(48)=acd17(49)*acd17(48)
      acd17(49)=acd17(27)+acd17(26)+acd17(1)
      acd17(50)=acd17(3)*acd17(2)
      acd17(50)=acd17(50)+acd17(4)
      acd17(49)=acd17(50)*acd17(49)
      acd17(50)=acd17(19)*acd17(5)
      acd17(51)=acd17(42)*acd17(23)
      acd17(50)=-acd17(43)+acd17(51)+acd17(50)
      acd17(50)=acd17(18)*acd17(50)
      acd17(51)=-acd17(20)*acd17(5)
      acd17(52)=-acd17(31)*acd17(9)
      acd17(53)=-acd17(44)*acd17(15)
      acd17(54)=-acd17(45)*acd17(23)
      brack=acd17(46)+acd17(47)+acd17(48)+acd17(49)+acd17(50)+acd17(51)+acd17(5&
      &2)+acd17(53)+acd17(54)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd17h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(72) :: acd17
      complex(ki) :: brack
      acd17(1)=k1(iv1)
      acd17(2)=dotproduct(qshift,spvak4k3)
      acd17(3)=abb17(37)
      acd17(4)=abb17(48)
      acd17(5)=k2(iv1)
      acd17(6)=dotproduct(k3,qshift)
      acd17(7)=abb17(74)
      acd17(8)=dotproduct(k4,qshift)
      acd17(9)=dotproduct(k7,qshift)
      acd17(10)=abb17(14)
      acd17(11)=dotproduct(qshift,qshift)
      acd17(12)=abb17(65)
      acd17(13)=dotproduct(qshift,spvak1k7)
      acd17(14)=abb17(23)
      acd17(15)=dotproduct(qshift,spvak2k7)
      acd17(16)=abb17(15)
      acd17(17)=abb17(12)
      acd17(18)=dotproduct(qshift,spvak1k3)
      acd17(19)=abb17(27)
      acd17(20)=abb17(44)
      acd17(21)=k3(iv1)
      acd17(22)=dotproduct(k2,qshift)
      acd17(23)=abb17(67)
      acd17(24)=abb17(19)
      acd17(25)=dotproduct(qshift,spval6l5)
      acd17(26)=abb17(75)
      acd17(27)=abb17(50)
      acd17(28)=k4(iv1)
      acd17(29)=l5(iv1)
      acd17(30)=l6(iv1)
      acd17(31)=k7(iv1)
      acd17(32)=abb17(62)
      acd17(33)=abb17(28)
      acd17(34)=abb17(24)
      acd17(35)=abb17(31)
      acd17(36)=qshift(iv1)
      acd17(37)=abb17(16)
      acd17(38)=abb17(17)
      acd17(39)=abb17(66)
      acd17(40)=abb17(26)
      acd17(41)=spvak4k3(iv1)
      acd17(42)=dotproduct(k1,qshift)
      acd17(43)=dotproduct(l5,qshift)
      acd17(44)=dotproduct(l6,qshift)
      acd17(45)=abb17(21)
      acd17(46)=abb17(20)
      acd17(47)=abb17(18)
      acd17(48)=abb17(13)
      acd17(49)=abb17(11)
      acd17(50)=abb17(22)
      acd17(51)=spvak1k3(iv1)
      acd17(52)=abb17(29)
      acd17(53)=abb17(25)
      acd17(54)=spvak1k7(iv1)
      acd17(55)=spvak2k7(iv1)
      acd17(56)=abb17(10)
      acd17(57)=spval6l5(iv1)
      acd17(58)=abb17(73)
      acd17(59)=acd17(13)*acd17(45)
      acd17(60)=acd17(15)*acd17(47)
      acd17(61)=acd17(9)*acd17(33)
      acd17(59)=-acd17(49)+acd17(61)+acd17(59)+acd17(60)
      acd17(60)=acd17(57)*acd17(59)
      acd17(61)=acd17(13)*acd17(14)
      acd17(62)=acd17(15)*acd17(16)
      acd17(63)=acd17(9)*acd17(10)
      acd17(61)=acd17(17)-acd17(63)+acd17(61)-acd17(62)
      acd17(62)=-acd17(5)*acd17(61)
      acd17(63)=acd17(45)*acd17(54)
      acd17(64)=acd17(55)*acd17(47)
      acd17(65)=acd17(31)*acd17(33)
      acd17(63)=acd17(65)+acd17(63)+acd17(64)
      acd17(63)=acd17(25)*acd17(63)
      acd17(64)=-acd17(14)*acd17(54)
      acd17(65)=acd17(55)*acd17(16)
      acd17(66)=acd17(31)*acd17(10)
      acd17(64)=acd17(66)+acd17(64)+acd17(65)
      acd17(64)=acd17(22)*acd17(64)
      acd17(65)=-acd17(54)*acd17(46)
      acd17(66)=2.0_ki*acd17(36)
      acd17(67)=acd17(37)*acd17(66)
      acd17(68)=acd17(30)+acd17(1)+acd17(29)
      acd17(69)=-acd17(3)*acd17(68)
      acd17(70)=-acd17(55)*acd17(48)
      acd17(71)=-acd17(31)*acd17(34)
      acd17(60)=acd17(64)+acd17(63)+acd17(62)+acd17(60)+acd17(71)+acd17(70)+acd&
      &17(69)+acd17(65)+acd17(67)
      acd17(60)=acd17(2)*acd17(60)
      acd17(59)=acd17(25)*acd17(59)
      acd17(61)=-acd17(22)*acd17(61)
      acd17(62)=-acd17(13)*acd17(46)
      acd17(63)=acd17(11)*acd17(37)
      acd17(64)=-acd17(42)-acd17(44)-acd17(43)
      acd17(64)=acd17(3)*acd17(64)
      acd17(65)=-acd17(15)*acd17(48)
      acd17(67)=-acd17(9)*acd17(34)
      acd17(59)=acd17(61)+acd17(59)+acd17(67)+acd17(65)+acd17(64)+acd17(63)+acd&
      &17(50)+acd17(62)
      acd17(59)=acd17(41)*acd17(59)
      acd17(61)=acd17(6)+acd17(8)
      acd17(62)=-acd17(26)*acd17(61)
      acd17(63)=-acd17(18)*acd17(52)
      acd17(64)=acd17(11)*acd17(39)
      acd17(62)=acd17(64)+acd17(58)+acd17(63)+acd17(62)
      acd17(62)=acd17(57)*acd17(62)
      acd17(63)=acd17(7)*acd17(61)
      acd17(64)=-acd17(18)*acd17(19)
      acd17(65)=acd17(11)*acd17(12)
      acd17(63)=acd17(65)+acd17(20)+acd17(64)+acd17(63)
      acd17(63)=acd17(5)*acd17(63)
      acd17(64)=acd17(21)+acd17(28)
      acd17(65)=-acd17(26)*acd17(64)
      acd17(67)=-acd17(51)*acd17(52)
      acd17(69)=acd17(39)*acd17(66)
      acd17(65)=acd17(69)+acd17(67)+acd17(65)
      acd17(65)=acd17(25)*acd17(65)
      acd17(67)=acd17(7)*acd17(64)
      acd17(69)=-acd17(51)*acd17(19)
      acd17(70)=acd17(12)*acd17(66)
      acd17(67)=acd17(70)+acd17(69)+acd17(67)
      acd17(67)=acd17(22)*acd17(67)
      acd17(69)=acd17(24)*acd17(61)
      acd17(70)=acd17(11)*acd17(38)
      acd17(69)=acd17(70)+acd17(56)+acd17(69)
      acd17(69)=acd17(55)*acd17(69)
      acd17(61)=acd17(23)*acd17(61)
      acd17(70)=acd17(11)*acd17(32)
      acd17(61)=acd17(70)+acd17(35)+acd17(61)
      acd17(61)=acd17(31)*acd17(61)
      acd17(70)=acd17(24)*acd17(64)
      acd17(71)=acd17(38)*acd17(66)
      acd17(70)=acd17(71)+acd17(70)
      acd17(70)=acd17(15)*acd17(70)
      acd17(71)=acd17(23)*acd17(64)
      acd17(72)=acd17(32)*acd17(66)
      acd17(71)=acd17(72)+acd17(71)
      acd17(71)=acd17(9)*acd17(71)
      acd17(64)=-acd17(27)*acd17(64)
      acd17(72)=acd17(51)*acd17(53)
      acd17(68)=-acd17(4)*acd17(68)
      acd17(66)=-acd17(40)*acd17(66)
      brack=acd17(59)+acd17(60)+acd17(61)+acd17(62)+acd17(63)+acd17(64)+acd17(6&
      &5)+acd17(66)+acd17(67)+acd17(68)+acd17(69)+acd17(70)+acd17(71)+acd17(72)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd17h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(71) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=dotproduct(k2,qshift)
      acd17(3)=abb17(65)
      acd17(4)=dotproduct(k7,qshift)
      acd17(5)=abb17(62)
      acd17(6)=dotproduct(qshift,spvak2k7)
      acd17(7)=abb17(17)
      acd17(8)=dotproduct(qshift,spvak4k3)
      acd17(9)=abb17(16)
      acd17(10)=dotproduct(qshift,spval6l5)
      acd17(11)=abb17(66)
      acd17(12)=abb17(26)
      acd17(13)=k1(iv1)
      acd17(14)=spvak4k3(iv2)
      acd17(15)=abb17(37)
      acd17(16)=k1(iv2)
      acd17(17)=spvak4k3(iv1)
      acd17(18)=k2(iv1)
      acd17(19)=k3(iv2)
      acd17(20)=abb17(74)
      acd17(21)=k4(iv2)
      acd17(22)=k7(iv2)
      acd17(23)=abb17(14)
      acd17(24)=qshift(iv2)
      acd17(25)=spvak2k7(iv2)
      acd17(26)=abb17(15)
      acd17(27)=dotproduct(qshift,spvak1k7)
      acd17(28)=abb17(23)
      acd17(29)=abb17(12)
      acd17(30)=spvak1k3(iv2)
      acd17(31)=abb17(27)
      acd17(32)=spvak1k7(iv2)
      acd17(33)=k2(iv2)
      acd17(34)=k3(iv1)
      acd17(35)=k4(iv1)
      acd17(36)=k7(iv1)
      acd17(37)=qshift(iv1)
      acd17(38)=spvak2k7(iv1)
      acd17(39)=spvak1k3(iv1)
      acd17(40)=spvak1k7(iv1)
      acd17(41)=abb17(67)
      acd17(42)=abb17(19)
      acd17(43)=spval6l5(iv2)
      acd17(44)=abb17(75)
      acd17(45)=spval6l5(iv1)
      acd17(46)=l5(iv1)
      acd17(47)=l5(iv2)
      acd17(48)=l6(iv1)
      acd17(49)=l6(iv2)
      acd17(50)=abb17(28)
      acd17(51)=abb17(24)
      acd17(52)=abb17(18)
      acd17(53)=abb17(13)
      acd17(54)=abb17(21)
      acd17(55)=abb17(11)
      acd17(56)=abb17(20)
      acd17(57)=abb17(29)
      acd17(58)=acd17(54)*acd17(27)
      acd17(59)=acd17(52)*acd17(6)
      acd17(60)=acd17(50)*acd17(4)
      acd17(58)=acd17(58)+acd17(59)+acd17(60)-acd17(55)
      acd17(59)=-acd17(43)*acd17(58)
      acd17(60)=acd17(28)*acd17(27)
      acd17(61)=acd17(26)*acd17(6)
      acd17(62)=acd17(23)*acd17(4)
      acd17(60)=acd17(61)-acd17(60)+acd17(62)-acd17(29)
      acd17(61)=-acd17(33)*acd17(60)
      acd17(62)=acd17(10)*acd17(54)
      acd17(63)=acd17(2)*acd17(28)
      acd17(62)=-acd17(56)+acd17(62)-acd17(63)
      acd17(63)=-acd17(32)*acd17(62)
      acd17(64)=acd17(10)*acd17(52)
      acd17(65)=acd17(2)*acd17(26)
      acd17(64)=-acd17(53)+acd17(64)+acd17(65)
      acd17(65)=-acd17(25)*acd17(64)
      acd17(66)=acd17(10)*acd17(50)
      acd17(67)=acd17(2)*acd17(23)
      acd17(66)=-acd17(51)+acd17(66)+acd17(67)
      acd17(67)=-acd17(22)*acd17(66)
      acd17(68)=2.0_ki*acd17(24)
      acd17(69)=-acd17(9)*acd17(68)
      acd17(70)=acd17(16)+acd17(49)+acd17(47)
      acd17(70)=acd17(15)*acd17(70)
      acd17(59)=acd17(61)+acd17(59)+acd17(67)+acd17(65)+acd17(70)+acd17(69)+acd&
      &17(63)
      acd17(59)=acd17(17)*acd17(59)
      acd17(58)=-acd17(45)*acd17(58)
      acd17(60)=-acd17(18)*acd17(60)
      acd17(61)=-acd17(40)*acd17(62)
      acd17(62)=-acd17(38)*acd17(64)
      acd17(63)=-acd17(36)*acd17(66)
      acd17(64)=2.0_ki*acd17(37)
      acd17(65)=-acd17(9)*acd17(64)
      acd17(66)=acd17(13)+acd17(48)+acd17(46)
      acd17(66)=acd17(15)*acd17(66)
      acd17(58)=acd17(60)+acd17(58)+acd17(63)+acd17(62)+acd17(66)+acd17(65)+acd&
      &17(61)
      acd17(58)=acd17(14)*acd17(58)
      acd17(60)=-acd17(54)*acd17(32)
      acd17(61)=-acd17(25)*acd17(52)
      acd17(62)=-acd17(22)*acd17(50)
      acd17(60)=acd17(62)+acd17(60)+acd17(61)
      acd17(60)=acd17(45)*acd17(60)
      acd17(61)=-acd17(54)*acd17(40)
      acd17(62)=-acd17(38)*acd17(52)
      acd17(63)=-acd17(36)*acd17(50)
      acd17(61)=acd17(63)+acd17(61)+acd17(62)
      acd17(61)=acd17(43)*acd17(61)
      acd17(62)=acd17(28)*acd17(40)
      acd17(63)=-acd17(38)*acd17(26)
      acd17(65)=-acd17(36)*acd17(23)
      acd17(62)=acd17(65)+acd17(62)+acd17(63)
      acd17(62)=acd17(33)*acd17(62)
      acd17(63)=acd17(28)*acd17(32)
      acd17(65)=-acd17(25)*acd17(26)
      acd17(66)=-acd17(22)*acd17(23)
      acd17(63)=acd17(66)+acd17(63)+acd17(65)
      acd17(63)=acd17(18)*acd17(63)
      acd17(65)=2.0_ki*acd17(9)
      acd17(65)=-acd17(1)*acd17(65)
      acd17(60)=acd17(63)+acd17(62)+acd17(61)+acd17(65)+acd17(60)
      acd17(60)=acd17(8)*acd17(60)
      acd17(61)=-acd17(6)*acd17(7)
      acd17(62)=-acd17(4)*acd17(5)
      acd17(63)=-acd17(10)*acd17(11)
      acd17(65)=-acd17(2)*acd17(3)
      acd17(61)=acd17(65)+acd17(63)+acd17(62)+acd17(12)+acd17(61)
      acd17(61)=acd17(1)*acd17(61)
      acd17(62)=acd17(19)+acd17(21)
      acd17(63)=acd17(44)*acd17(62)
      acd17(65)=acd17(30)*acd17(57)
      acd17(66)=-acd17(11)*acd17(68)
      acd17(63)=acd17(66)+acd17(65)+acd17(63)
      acd17(63)=acd17(45)*acd17(63)
      acd17(65)=acd17(34)+acd17(35)
      acd17(66)=acd17(44)*acd17(65)
      acd17(67)=acd17(39)*acd17(57)
      acd17(69)=-acd17(11)*acd17(64)
      acd17(66)=acd17(69)+acd17(67)+acd17(66)
      acd17(66)=acd17(43)*acd17(66)
      acd17(67)=acd17(31)*acd17(39)
      acd17(69)=-acd17(20)*acd17(65)
      acd17(70)=-acd17(3)*acd17(64)
      acd17(67)=acd17(70)+acd17(67)+acd17(69)
      acd17(67)=acd17(33)*acd17(67)
      acd17(69)=-acd17(20)*acd17(62)
      acd17(70)=acd17(30)*acd17(31)
      acd17(71)=-acd17(3)*acd17(68)
      acd17(69)=acd17(71)+acd17(70)+acd17(69)
      acd17(69)=acd17(18)*acd17(69)
      acd17(70)=-acd17(42)*acd17(62)
      acd17(71)=-acd17(7)*acd17(68)
      acd17(70)=acd17(71)+acd17(70)
      acd17(70)=acd17(38)*acd17(70)
      acd17(62)=-acd17(41)*acd17(62)
      acd17(68)=-acd17(5)*acd17(68)
      acd17(62)=acd17(68)+acd17(62)
      acd17(62)=acd17(36)*acd17(62)
      acd17(68)=-acd17(42)*acd17(65)
      acd17(71)=-acd17(7)*acd17(64)
      acd17(68)=acd17(71)+acd17(68)
      acd17(68)=acd17(25)*acd17(68)
      acd17(65)=-acd17(41)*acd17(65)
      acd17(64)=-acd17(5)*acd17(64)
      acd17(64)=acd17(64)+acd17(65)
      acd17(64)=acd17(22)*acd17(64)
      brack=acd17(58)+acd17(59)+acd17(60)+2.0_ki*acd17(61)+acd17(62)+acd17(63)+&
      &acd17(64)+acd17(66)+acd17(67)+acd17(68)+acd17(69)+acd17(70)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd17h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(44) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=k2(iv3)
      acd17(3)=abb17(65)
      acd17(4)=k7(iv3)
      acd17(5)=abb17(62)
      acd17(6)=spvak2k7(iv3)
      acd17(7)=abb17(17)
      acd17(8)=spvak4k3(iv3)
      acd17(9)=abb17(16)
      acd17(10)=spval6l5(iv3)
      acd17(11)=abb17(66)
      acd17(12)=d(iv1,iv3)
      acd17(13)=k2(iv2)
      acd17(14)=k7(iv2)
      acd17(15)=spvak2k7(iv2)
      acd17(16)=spvak4k3(iv2)
      acd17(17)=spval6l5(iv2)
      acd17(18)=d(iv2,iv3)
      acd17(19)=k2(iv1)
      acd17(20)=k7(iv1)
      acd17(21)=spvak2k7(iv1)
      acd17(22)=spvak4k3(iv1)
      acd17(23)=spval6l5(iv1)
      acd17(24)=abb17(14)
      acd17(25)=abb17(15)
      acd17(26)=spvak1k7(iv3)
      acd17(27)=abb17(23)
      acd17(28)=spvak1k7(iv2)
      acd17(29)=spvak1k7(iv1)
      acd17(30)=abb17(28)
      acd17(31)=abb17(18)
      acd17(32)=abb17(21)
      acd17(33)=acd17(21)*acd17(7)
      acd17(34)=acd17(20)*acd17(5)
      acd17(35)=acd17(23)*acd17(11)
      acd17(36)=acd17(19)*acd17(3)
      acd17(33)=acd17(36)+acd17(35)+acd17(33)+acd17(34)
      acd17(33)=acd17(18)*acd17(33)
      acd17(34)=acd17(15)*acd17(7)
      acd17(35)=acd17(14)*acd17(5)
      acd17(36)=acd17(17)*acd17(11)
      acd17(37)=acd17(13)*acd17(3)
      acd17(34)=acd17(37)+acd17(36)+acd17(34)+acd17(35)
      acd17(34)=acd17(12)*acd17(34)
      acd17(35)=acd17(6)*acd17(7)
      acd17(36)=acd17(4)*acd17(5)
      acd17(37)=acd17(10)*acd17(11)
      acd17(38)=acd17(2)*acd17(3)
      acd17(35)=acd17(38)+acd17(37)+acd17(35)+acd17(36)
      acd17(35)=acd17(1)*acd17(35)
      acd17(33)=acd17(35)+acd17(34)+acd17(33)
      acd17(34)=acd17(32)*acd17(26)
      acd17(35)=acd17(31)*acd17(6)
      acd17(36)=acd17(30)*acd17(4)
      acd17(34)=acd17(36)+acd17(34)+acd17(35)
      acd17(35)=acd17(17)*acd17(34)
      acd17(36)=acd17(27)*acd17(26)
      acd17(37)=acd17(25)*acd17(6)
      acd17(38)=acd17(24)*acd17(4)
      acd17(36)=-acd17(38)+acd17(36)-acd17(37)
      acd17(37)=-acd17(13)*acd17(36)
      acd17(38)=acd17(32)*acd17(28)
      acd17(39)=acd17(31)*acd17(15)
      acd17(40)=acd17(30)*acd17(14)
      acd17(38)=acd17(40)+acd17(38)+acd17(39)
      acd17(39)=acd17(10)*acd17(38)
      acd17(40)=acd17(27)*acd17(28)
      acd17(41)=acd17(25)*acd17(15)
      acd17(42)=acd17(24)*acd17(14)
      acd17(40)=-acd17(42)+acd17(40)-acd17(41)
      acd17(41)=-acd17(2)*acd17(40)
      acd17(42)=2.0_ki*acd17(9)
      acd17(43)=acd17(18)*acd17(42)
      acd17(35)=acd17(41)+acd17(39)+acd17(37)+acd17(43)+acd17(35)
      acd17(35)=acd17(22)*acd17(35)
      acd17(34)=acd17(23)*acd17(34)
      acd17(36)=-acd17(19)*acd17(36)
      acd17(37)=acd17(32)*acd17(29)
      acd17(39)=acd17(31)*acd17(21)
      acd17(41)=acd17(30)*acd17(20)
      acd17(37)=acd17(41)+acd17(37)+acd17(39)
      acd17(39)=acd17(10)*acd17(37)
      acd17(41)=acd17(27)*acd17(29)
      acd17(43)=acd17(25)*acd17(21)
      acd17(44)=acd17(24)*acd17(20)
      acd17(41)=-acd17(44)+acd17(41)-acd17(43)
      acd17(43)=-acd17(2)*acd17(41)
      acd17(44)=acd17(12)*acd17(42)
      acd17(34)=acd17(43)+acd17(39)+acd17(36)+acd17(44)+acd17(34)
      acd17(34)=acd17(16)*acd17(34)
      acd17(36)=acd17(23)*acd17(38)
      acd17(38)=-acd17(19)*acd17(40)
      acd17(37)=acd17(17)*acd17(37)
      acd17(39)=-acd17(13)*acd17(41)
      acd17(40)=acd17(1)*acd17(42)
      acd17(36)=acd17(39)+acd17(37)+acd17(38)+acd17(40)+acd17(36)
      acd17(36)=acd17(8)*acd17(36)
      brack=2.0_ki*acd17(33)+acd17(34)+acd17(35)+acd17(36)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd17h1
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
      qshift = -k3+k2-k7-k4
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
!---#[ subroutine reconstruct_d17:
   subroutine     reconstruct_d17(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_17:
      coeffs%coeffs_17%c0 = derivative(czip)
      coeffs%coeffs_17%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_17%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_17%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_17%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_17%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_17%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_17%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_17%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_17%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_17%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_17%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_17%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_17%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_17%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_17%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_17%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_17%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_17%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_17%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_17%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_17%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_17%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_17%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_17%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_17%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_17%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_17%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_17%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_17%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_17%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_17%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_17%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_17%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_17%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_17:
   end subroutine reconstruct_d17
!---#] subroutine reconstruct_d17:
end module     p0_dbaru_epnebbbarg_d17h1l1d
