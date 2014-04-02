module     p0_dbaru_epnebbbar_d1h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity2d1h2l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d1
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd1h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd1
      complex(ki) :: brack
      acd1(1)=dotproduct(k1,qshift)
      acd1(2)=dotproduct(qshift,spvak4k3)
      acd1(3)=abb1(18)
      acd1(4)=abb1(16)
      acd1(5)=dotproduct(k2,qshift)
      acd1(6)=dotproduct(k3,qshift)
      acd1(7)=abb1(31)
      acd1(8)=dotproduct(k4,qshift)
      acd1(9)=dotproduct(qshift,qshift)
      acd1(10)=abb1(10)
      acd1(11)=dotproduct(qshift,spvak1k2)
      acd1(12)=abb1(14)
      acd1(13)=abb1(20)
      acd1(14)=dotproduct(qshift,spvak1k3)
      acd1(15)=abb1(23)
      acd1(16)=dotproduct(qshift,spvak4k2)
      acd1(17)=abb1(28)
      acd1(18)=dotproduct(qshift,spval5l6)
      acd1(19)=abb1(36)
      acd1(20)=abb1(27)
      acd1(21)=dotproduct(l5,qshift)
      acd1(22)=dotproduct(l6,qshift)
      acd1(23)=abb1(25)
      acd1(24)=abb1(24)
      acd1(25)=abb1(22)
      acd1(26)=dotproduct(qshift,spval5k2)
      acd1(27)=abb1(32)
      acd1(28)=abb1(9)
      acd1(29)=abb1(7)
      acd1(30)=abb1(19)
      acd1(31)=abb1(15)
      acd1(32)=abb1(8)
      acd1(33)=abb1(12)
      acd1(34)=dotproduct(qshift,spvak3k2)
      acd1(35)=dotproduct(qshift,spval6k2)
      acd1(36)=abb1(26)
      acd1(37)=abb1(17)
      acd1(38)=abb1(30)
      acd1(39)=abb1(29)
      acd1(40)=abb1(21)
      acd1(41)=abb1(11)
      acd1(42)=abb1(13)
      acd1(43)=abb1(33)
      acd1(44)=-acd1(12)*acd1(5)
      acd1(45)=-acd1(29)*acd1(18)
      acd1(44)=acd1(30)+acd1(45)+acd1(44)
      acd1(44)=acd1(44)*acd1(11)
      acd1(45)=acd1(13)*acd1(5)
      acd1(46)=acd1(31)*acd1(16)
      acd1(47)=acd1(32)*acd1(18)
      acd1(48)=acd1(33)*acd1(26)
      acd1(49)=acd1(34)*acd1(24)
      acd1(50)=acd1(36)*acd1(35)
      acd1(44)=acd1(47)+acd1(45)+acd1(44)-acd1(37)+acd1(50)+acd1(49)+acd1(48)+a&
      &cd1(46)
      acd1(44)=acd1(2)*acd1(44)
      acd1(45)=-acd1(24)*acd1(16)
      acd1(46)=-acd1(10)*acd1(5)
      acd1(47)=-acd1(23)*acd1(2)
      acd1(48)=-acd1(25)*acd1(18)
      acd1(49)=-acd1(27)*acd1(26)
      acd1(45)=acd1(28)+acd1(49)+acd1(48)+acd1(47)+acd1(46)+acd1(45)
      acd1(45)=acd1(9)*acd1(45)
      acd1(46)=acd1(7)*acd1(5)
      acd1(47)=-acd1(17)*acd1(16)
      acd1(48)=-acd1(19)*acd1(18)
      acd1(46)=acd1(48)+acd1(46)-acd1(20)+acd1(47)
      acd1(47)=acd1(8)+acd1(6)
      acd1(46)=acd1(47)*acd1(46)
      acd1(47)=-acd1(22)-acd1(21)-acd1(1)
      acd1(48)=acd1(3)*acd1(2)
      acd1(48)=acd1(48)+acd1(4)
      acd1(47)=acd1(48)*acd1(47)
      acd1(48)=acd1(15)*acd1(5)
      acd1(49)=acd1(39)*acd1(18)
      acd1(48)=-acd1(40)+acd1(49)+acd1(48)
      acd1(48)=acd1(14)*acd1(48)
      acd1(49)=-acd1(38)*acd1(11)
      acd1(50)=-acd1(41)*acd1(18)
      acd1(51)=-acd1(42)*acd1(26)
      acd1(52)=-acd1(43)*acd1(35)
      brack=acd1(44)+acd1(45)+acd1(46)+acd1(47)+acd1(48)+acd1(49)+acd1(50)+acd1&
      &(51)+acd1(52)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd1h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(73) :: acd1
      complex(ki) :: brack
      acd1(1)=k1(iv1)
      acd1(2)=dotproduct(qshift,spvak4k3)
      acd1(3)=abb1(18)
      acd1(4)=abb1(16)
      acd1(5)=k2(iv1)
      acd1(6)=dotproduct(k3,qshift)
      acd1(7)=abb1(31)
      acd1(8)=dotproduct(k4,qshift)
      acd1(9)=dotproduct(qshift,qshift)
      acd1(10)=abb1(10)
      acd1(11)=dotproduct(qshift,spvak1k2)
      acd1(12)=abb1(14)
      acd1(13)=abb1(20)
      acd1(14)=dotproduct(qshift,spvak1k3)
      acd1(15)=abb1(23)
      acd1(16)=k3(iv1)
      acd1(17)=dotproduct(k2,qshift)
      acd1(18)=dotproduct(qshift,spvak4k2)
      acd1(19)=abb1(28)
      acd1(20)=dotproduct(qshift,spval5l6)
      acd1(21)=abb1(36)
      acd1(22)=abb1(27)
      acd1(23)=k4(iv1)
      acd1(24)=l5(iv1)
      acd1(25)=l6(iv1)
      acd1(26)=qshift(iv1)
      acd1(27)=abb1(25)
      acd1(28)=abb1(24)
      acd1(29)=abb1(22)
      acd1(30)=dotproduct(qshift,spval5k2)
      acd1(31)=abb1(32)
      acd1(32)=abb1(9)
      acd1(33)=spvak4k3(iv1)
      acd1(34)=dotproduct(k1,qshift)
      acd1(35)=dotproduct(l5,qshift)
      acd1(36)=dotproduct(l6,qshift)
      acd1(37)=abb1(7)
      acd1(38)=abb1(19)
      acd1(39)=abb1(15)
      acd1(40)=abb1(8)
      acd1(41)=abb1(12)
      acd1(42)=dotproduct(qshift,spvak3k2)
      acd1(43)=dotproduct(qshift,spval6k2)
      acd1(44)=abb1(26)
      acd1(45)=abb1(17)
      acd1(46)=spvak1k2(iv1)
      acd1(47)=abb1(30)
      acd1(48)=spvak1k3(iv1)
      acd1(49)=abb1(29)
      acd1(50)=abb1(21)
      acd1(51)=spvak4k2(iv1)
      acd1(52)=spval5l6(iv1)
      acd1(53)=abb1(11)
      acd1(54)=spval5k2(iv1)
      acd1(55)=abb1(13)
      acd1(56)=spvak3k2(iv1)
      acd1(57)=spval6k2(iv1)
      acd1(58)=abb1(33)
      acd1(59)=-acd1(44)*acd1(43)
      acd1(60)=-acd1(30)*acd1(41)
      acd1(61)=-acd1(28)*acd1(42)
      acd1(62)=-acd1(18)*acd1(39)
      acd1(63)=-acd1(11)*acd1(38)
      acd1(64)=acd1(9)*acd1(27)
      acd1(65)=acd1(34)+acd1(36)+acd1(35)
      acd1(65)=acd1(3)*acd1(65)
      acd1(66)=acd1(11)*acd1(37)
      acd1(66)=acd1(66)-acd1(40)
      acd1(67)=acd1(20)*acd1(66)
      acd1(68)=acd1(11)*acd1(12)
      acd1(68)=acd1(68)-acd1(13)
      acd1(69)=acd1(17)*acd1(68)
      acd1(59)=acd1(69)+acd1(67)+acd1(65)+acd1(64)+acd1(63)+acd1(62)+acd1(61)+a&
      &cd1(60)+acd1(45)+acd1(59)
      acd1(59)=acd1(33)*acd1(59)
      acd1(60)=acd1(20)*acd1(37)
      acd1(61)=acd1(17)*acd1(12)
      acd1(60)=acd1(61)+acd1(60)-acd1(38)
      acd1(60)=acd1(46)*acd1(60)
      acd1(61)=-acd1(44)*acd1(57)
      acd1(62)=-acd1(54)*acd1(41)
      acd1(63)=-acd1(51)*acd1(39)
      acd1(64)=-acd1(28)*acd1(56)
      acd1(65)=2.0_ki*acd1(26)
      acd1(67)=acd1(27)*acd1(65)
      acd1(68)=acd1(5)*acd1(68)
      acd1(69)=acd1(25)+acd1(1)+acd1(24)
      acd1(70)=acd1(3)*acd1(69)
      acd1(66)=acd1(52)*acd1(66)
      acd1(60)=acd1(66)+acd1(70)+acd1(68)+acd1(67)+acd1(64)+acd1(63)+acd1(61)+a&
      &cd1(62)+acd1(60)
      acd1(60)=acd1(2)*acd1(60)
      acd1(61)=-acd1(14)*acd1(15)
      acd1(62)=acd1(6)+acd1(8)
      acd1(63)=-acd1(7)*acd1(62)
      acd1(64)=acd1(9)*acd1(10)
      acd1(61)=acd1(64)+acd1(61)+acd1(63)
      acd1(61)=acd1(5)*acd1(61)
      acd1(63)=-acd1(14)*acd1(49)
      acd1(64)=acd1(21)*acd1(62)
      acd1(66)=acd1(9)*acd1(29)
      acd1(63)=acd1(66)+acd1(64)+acd1(53)+acd1(63)
      acd1(63)=acd1(52)*acd1(63)
      acd1(64)=acd1(16)+acd1(23)
      acd1(66)=acd1(21)*acd1(64)
      acd1(67)=-acd1(48)*acd1(49)
      acd1(68)=acd1(29)*acd1(65)
      acd1(66)=acd1(68)+acd1(67)+acd1(66)
      acd1(66)=acd1(20)*acd1(66)
      acd1(67)=-acd1(48)*acd1(15)
      acd1(68)=-acd1(7)*acd1(64)
      acd1(70)=acd1(10)*acd1(65)
      acd1(67)=acd1(70)+acd1(67)+acd1(68)
      acd1(67)=acd1(17)*acd1(67)
      acd1(68)=acd1(18)*acd1(19)
      acd1(68)=acd1(68)+acd1(22)
      acd1(64)=acd1(68)*acd1(64)
      acd1(68)=acd1(54)*acd1(31)
      acd1(70)=acd1(28)*acd1(51)
      acd1(68)=acd1(68)+acd1(70)
      acd1(68)=acd1(9)*acd1(68)
      acd1(70)=acd1(30)*acd1(31)
      acd1(71)=acd1(18)*acd1(28)
      acd1(70)=acd1(71)-acd1(32)+acd1(70)
      acd1(65)=acd1(70)*acd1(65)
      acd1(70)=acd1(57)*acd1(58)
      acd1(71)=acd1(54)*acd1(55)
      acd1(72)=acd1(48)*acd1(50)
      acd1(69)=acd1(4)*acd1(69)
      acd1(73)=acd1(46)*acd1(47)
      acd1(62)=acd1(19)*acd1(51)*acd1(62)
      brack=acd1(59)+acd1(60)+acd1(61)+acd1(62)+acd1(63)+acd1(64)+acd1(65)+acd1&
      &(66)+acd1(67)+acd1(68)+acd1(69)+acd1(70)+acd1(71)+acd1(72)+acd1(73)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd1h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(71) :: acd1
      complex(ki) :: brack
      acd1(1)=d(iv1,iv2)
      acd1(2)=dotproduct(k2,qshift)
      acd1(3)=abb1(10)
      acd1(4)=dotproduct(qshift,spvak4k2)
      acd1(5)=abb1(24)
      acd1(6)=dotproduct(qshift,spvak4k3)
      acd1(7)=abb1(25)
      acd1(8)=dotproduct(qshift,spval5k2)
      acd1(9)=abb1(32)
      acd1(10)=dotproduct(qshift,spval5l6)
      acd1(11)=abb1(22)
      acd1(12)=abb1(9)
      acd1(13)=k1(iv1)
      acd1(14)=spvak4k3(iv2)
      acd1(15)=abb1(18)
      acd1(16)=k1(iv2)
      acd1(17)=spvak4k3(iv1)
      acd1(18)=k2(iv1)
      acd1(19)=k3(iv2)
      acd1(20)=abb1(31)
      acd1(21)=k4(iv2)
      acd1(22)=qshift(iv2)
      acd1(23)=dotproduct(qshift,spvak1k2)
      acd1(24)=abb1(14)
      acd1(25)=abb1(20)
      acd1(26)=spvak1k2(iv2)
      acd1(27)=spvak1k3(iv2)
      acd1(28)=abb1(23)
      acd1(29)=k2(iv2)
      acd1(30)=k3(iv1)
      acd1(31)=k4(iv1)
      acd1(32)=qshift(iv1)
      acd1(33)=spvak1k2(iv1)
      acd1(34)=spvak1k3(iv1)
      acd1(35)=spvak4k2(iv2)
      acd1(36)=abb1(28)
      acd1(37)=spval5l6(iv2)
      acd1(38)=abb1(36)
      acd1(39)=spvak4k2(iv1)
      acd1(40)=spval5l6(iv1)
      acd1(41)=l5(iv1)
      acd1(42)=l5(iv2)
      acd1(43)=l6(iv1)
      acd1(44)=l6(iv2)
      acd1(45)=spval5k2(iv2)
      acd1(46)=spval5k2(iv1)
      acd1(47)=abb1(15)
      acd1(48)=abb1(12)
      acd1(49)=abb1(7)
      acd1(50)=abb1(8)
      acd1(51)=abb1(19)
      acd1(52)=spvak3k2(iv2)
      acd1(53)=spval6k2(iv2)
      acd1(54)=abb1(26)
      acd1(55)=spvak3k2(iv1)
      acd1(56)=spval6k2(iv1)
      acd1(57)=abb1(29)
      acd1(58)=acd1(24)*acd1(2)
      acd1(59)=acd1(49)*acd1(10)
      acd1(58)=acd1(58)+acd1(59)-acd1(51)
      acd1(59)=-acd1(26)*acd1(58)
      acd1(60)=acd1(54)*acd1(53)
      acd1(61)=acd1(45)*acd1(48)
      acd1(62)=acd1(35)*acd1(47)
      acd1(63)=2.0_ki*acd1(22)
      acd1(64)=-acd1(7)*acd1(63)
      acd1(65)=acd1(5)*acd1(52)
      acd1(66)=-acd1(16)-acd1(44)-acd1(42)
      acd1(66)=acd1(15)*acd1(66)
      acd1(67)=acd1(49)*acd1(23)
      acd1(67)=acd1(67)-acd1(50)
      acd1(68)=-acd1(37)*acd1(67)
      acd1(69)=acd1(24)*acd1(23)
      acd1(69)=acd1(69)-acd1(25)
      acd1(70)=-acd1(29)*acd1(69)
      acd1(59)=acd1(70)+acd1(68)+acd1(66)+acd1(65)+acd1(64)+acd1(62)+acd1(60)+a&
      &cd1(61)+acd1(59)
      acd1(59)=acd1(17)*acd1(59)
      acd1(58)=-acd1(33)*acd1(58)
      acd1(60)=acd1(54)*acd1(56)
      acd1(61)=acd1(46)*acd1(48)
      acd1(62)=acd1(39)*acd1(47)
      acd1(64)=2.0_ki*acd1(32)
      acd1(65)=-acd1(7)*acd1(64)
      acd1(66)=acd1(5)*acd1(55)
      acd1(68)=-acd1(13)-acd1(43)-acd1(41)
      acd1(68)=acd1(15)*acd1(68)
      acd1(67)=-acd1(40)*acd1(67)
      acd1(69)=-acd1(18)*acd1(69)
      acd1(58)=acd1(69)+acd1(67)+acd1(68)+acd1(66)+acd1(65)+acd1(62)+acd1(60)+a&
      &cd1(61)+acd1(58)
      acd1(58)=acd1(14)*acd1(58)
      acd1(60)=-acd1(10)*acd1(11)
      acd1(61)=-acd1(9)*acd1(8)
      acd1(62)=-acd1(2)*acd1(3)
      acd1(65)=-acd1(6)*acd1(7)
      acd1(66)=-acd1(5)*acd1(4)
      acd1(60)=acd1(66)+acd1(65)+acd1(62)+acd1(61)+acd1(12)+acd1(60)
      acd1(60)=acd1(1)*acd1(60)
      acd1(61)=-acd1(32)*acd1(35)
      acd1(62)=-acd1(22)*acd1(39)
      acd1(61)=acd1(61)+acd1(62)
      acd1(61)=acd1(5)*acd1(61)
      acd1(60)=acd1(61)+acd1(60)
      acd1(61)=acd1(27)*acd1(57)
      acd1(62)=acd1(19)+acd1(21)
      acd1(65)=-acd1(38)*acd1(62)
      acd1(66)=-acd1(11)*acd1(63)
      acd1(67)=acd1(49)*acd1(6)
      acd1(68)=-acd1(26)*acd1(67)
      acd1(61)=acd1(68)+acd1(66)+acd1(61)+acd1(65)
      acd1(61)=acd1(40)*acd1(61)
      acd1(65)=acd1(34)*acd1(57)
      acd1(66)=acd1(30)+acd1(31)
      acd1(68)=-acd1(38)*acd1(66)
      acd1(69)=-acd1(11)*acd1(64)
      acd1(67)=-acd1(33)*acd1(67)
      acd1(65)=acd1(67)+acd1(69)+acd1(65)+acd1(68)
      acd1(65)=acd1(37)*acd1(65)
      acd1(67)=acd1(28)*acd1(34)
      acd1(68)=acd1(20)*acd1(66)
      acd1(69)=-acd1(3)*acd1(64)
      acd1(70)=acd1(24)*acd1(6)
      acd1(71)=-acd1(33)*acd1(70)
      acd1(67)=acd1(71)+acd1(69)+acd1(67)+acd1(68)
      acd1(67)=acd1(29)*acd1(67)
      acd1(68)=acd1(27)*acd1(28)
      acd1(69)=acd1(20)*acd1(62)
      acd1(71)=-acd1(3)*acd1(63)
      acd1(70)=-acd1(26)*acd1(70)
      acd1(68)=acd1(70)+acd1(71)+acd1(68)+acd1(69)
      acd1(68)=acd1(18)*acd1(68)
      acd1(64)=-acd1(45)*acd1(64)
      acd1(63)=-acd1(46)*acd1(63)
      acd1(63)=acd1(63)+acd1(64)
      acd1(63)=acd1(9)*acd1(63)
      acd1(62)=-acd1(39)*acd1(62)
      acd1(64)=-acd1(35)*acd1(66)
      acd1(62)=acd1(62)+acd1(64)
      acd1(62)=acd1(36)*acd1(62)
      brack=acd1(58)+acd1(59)+2.0_ki*acd1(60)+acd1(61)+acd1(62)+acd1(63)+acd1(6&
      &5)+acd1(67)+acd1(68)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd1h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd1
      complex(ki) :: brack
      acd1(1)=d(iv1,iv2)
      acd1(2)=k2(iv3)
      acd1(3)=abb1(10)
      acd1(4)=spvak4k2(iv3)
      acd1(5)=abb1(24)
      acd1(6)=spvak4k3(iv3)
      acd1(7)=abb1(25)
      acd1(8)=spval5k2(iv3)
      acd1(9)=abb1(32)
      acd1(10)=spval5l6(iv3)
      acd1(11)=abb1(22)
      acd1(12)=d(iv1,iv3)
      acd1(13)=k2(iv2)
      acd1(14)=spvak4k2(iv2)
      acd1(15)=spvak4k3(iv2)
      acd1(16)=spval5k2(iv2)
      acd1(17)=spval5l6(iv2)
      acd1(18)=d(iv2,iv3)
      acd1(19)=k2(iv1)
      acd1(20)=spvak4k2(iv1)
      acd1(21)=spvak4k3(iv1)
      acd1(22)=spval5k2(iv1)
      acd1(23)=spval5l6(iv1)
      acd1(24)=spvak1k2(iv3)
      acd1(25)=abb1(14)
      acd1(26)=spvak1k2(iv2)
      acd1(27)=spvak1k2(iv1)
      acd1(28)=abb1(7)
      acd1(29)=acd1(3)*acd1(2)
      acd1(30)=acd1(11)*acd1(10)
      acd1(31)=acd1(4)*acd1(5)
      acd1(32)=acd1(8)*acd1(9)
      acd1(29)=acd1(32)+acd1(31)+acd1(30)+acd1(29)
      acd1(30)=2.0_ki*acd1(1)
      acd1(29)=acd1(30)*acd1(29)
      acd1(30)=acd1(2)*acd1(25)
      acd1(31)=acd1(10)*acd1(28)
      acd1(30)=acd1(31)+acd1(30)
      acd1(31)=acd1(26)*acd1(21)
      acd1(32)=acd1(27)*acd1(15)
      acd1(31)=acd1(31)+acd1(32)
      acd1(30)=acd1(31)*acd1(30)
      acd1(31)=acd1(6)*acd1(1)
      acd1(32)=acd1(15)*acd1(12)
      acd1(33)=acd1(21)*acd1(18)
      acd1(31)=acd1(33)+acd1(31)+acd1(32)
      acd1(31)=acd1(7)*acd1(31)
      acd1(32)=acd1(20)*acd1(5)
      acd1(33)=acd1(22)*acd1(9)
      acd1(32)=acd1(33)+acd1(32)
      acd1(33)=2.0_ki*acd1(18)
      acd1(32)=acd1(33)*acd1(32)
      acd1(34)=acd1(14)*acd1(5)
      acd1(35)=acd1(16)*acd1(9)
      acd1(34)=acd1(35)+acd1(34)
      acd1(35)=2.0_ki*acd1(12)
      acd1(34)=acd1(35)*acd1(34)
      acd1(36)=acd1(24)*acd1(21)
      acd1(37)=acd1(27)*acd1(6)
      acd1(36)=acd1(36)+acd1(37)
      acd1(37)=acd1(25)*acd1(36)
      acd1(38)=acd1(3)*acd1(35)
      acd1(37)=acd1(38)+acd1(37)
      acd1(37)=acd1(13)*acd1(37)
      acd1(36)=acd1(28)*acd1(36)
      acd1(35)=acd1(11)*acd1(35)
      acd1(35)=acd1(35)+acd1(36)
      acd1(35)=acd1(17)*acd1(35)
      acd1(36)=acd1(24)*acd1(15)
      acd1(38)=acd1(26)*acd1(6)
      acd1(36)=acd1(36)+acd1(38)
      acd1(38)=acd1(25)*acd1(36)
      acd1(39)=acd1(3)*acd1(33)
      acd1(38)=acd1(39)+acd1(38)
      acd1(38)=acd1(19)*acd1(38)
      acd1(36)=acd1(28)*acd1(36)
      acd1(33)=acd1(11)*acd1(33)
      acd1(33)=acd1(33)+acd1(36)
      acd1(33)=acd1(23)*acd1(33)
      brack=acd1(29)+acd1(30)+2.0_ki*acd1(31)+acd1(32)+acd1(33)+acd1(34)+acd1(3&
      &5)+acd1(37)+acd1(38)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd1h2
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
      qshift = -k3+k2-k4
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
!---#[ subroutine reconstruct_d1:
   subroutine     reconstruct_d1(coeffs)
      use p0_dbaru_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_1:
      coeffs%coeffs_1%c0 = derivative(czip)
      coeffs%coeffs_1%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_1%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_1%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_1%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_1%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_1%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_1%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_1%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_1%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_1%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_1%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_1%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_1%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_1%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_1%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_1%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_1%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_1%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_1%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_1%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_1%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_1%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_1%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_1%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_1%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_1%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_1%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_1%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_1%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_1%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_1%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_1%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_1%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_1%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_1:
   end subroutine reconstruct_d1
!---#] subroutine reconstruct_d1:
end module     p0_dbaru_epnebbbar_d1h2l1d
