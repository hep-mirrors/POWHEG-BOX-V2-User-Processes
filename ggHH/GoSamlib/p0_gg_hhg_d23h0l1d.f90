module     p0_gg_hhg_d23h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d23h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd23
      complex(ki) :: brack
      acd23(1)=abb23(23)
      brack=acd23(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd23
      complex(ki) :: brack
      acd23(1)=k2(iv1)
      acd23(2)=abb23(33)
      acd23(3)=k5(iv1)
      acd23(4)=abb23(44)
      acd23(5)=spvak1l4(iv1)
      acd23(6)=abb23(24)
      acd23(7)=spvak1k5(iv1)
      acd23(8)=abb23(42)
      acd23(9)=spvak2k1(iv1)
      acd23(10)=abb23(40)
      acd23(11)=spvak2l3(iv1)
      acd23(12)=abb23(27)
      acd23(13)=spvak2l4(iv1)
      acd23(14)=abb23(28)
      acd23(15)=spvak2k5(iv1)
      acd23(16)=abb23(22)
      acd23(17)=spval3k5(iv1)
      acd23(18)=abb23(12)
      acd23(19)=spval4k1(iv1)
      acd23(20)=abb23(54)
      acd23(21)=spval4k2(iv1)
      acd23(22)=abb23(81)
      acd23(23)=spval4k5(iv1)
      acd23(24)=abb23(29)
      acd23(25)=-acd23(2)*acd23(1)
      acd23(26)=-acd23(4)*acd23(3)
      acd23(27)=-acd23(6)*acd23(5)
      acd23(28)=-acd23(8)*acd23(7)
      acd23(29)=-acd23(10)*acd23(9)
      acd23(30)=-acd23(12)*acd23(11)
      acd23(31)=-acd23(14)*acd23(13)
      acd23(32)=-acd23(16)*acd23(15)
      acd23(33)=-acd23(18)*acd23(17)
      acd23(34)=-acd23(20)*acd23(19)
      acd23(35)=-acd23(22)*acd23(21)
      acd23(36)=-acd23(24)*acd23(23)
      brack=acd23(25)+acd23(26)+acd23(27)+acd23(28)+acd23(29)+acd23(30)+acd23(3&
      &1)+acd23(32)+acd23(33)+acd23(34)+acd23(35)+acd23(36)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=abb23(32)
      acd23(3)=k2(iv1)
      acd23(4)=k2(iv2)
      acd23(5)=abb23(15)
      acd23(6)=k5(iv2)
      acd23(7)=abb23(69)
      acd23(8)=spvak1k5(iv2)
      acd23(9)=abb23(43)
      acd23(10)=spvak2k1(iv2)
      acd23(11)=abb23(50)
      acd23(12)=spvak2k5(iv2)
      acd23(13)=abb23(30)
      acd23(14)=spval4k5(iv2)
      acd23(15)=abb23(11)
      acd23(16)=k5(iv1)
      acd23(17)=spvak1k5(iv1)
      acd23(18)=spvak2k1(iv1)
      acd23(19)=spvak2k5(iv1)
      acd23(20)=spval4k5(iv1)
      acd23(21)=abb23(86)
      acd23(22)=spvak2l4(iv2)
      acd23(23)=abb23(35)
      acd23(24)=spvak2l4(iv1)
      acd23(25)=abb23(56)
      acd23(26)=abb23(37)
      acd23(27)=abb23(34)
      acd23(28)=abb23(25)
      acd23(29)=abb23(26)
      acd23(30)=abb23(36)
      acd23(31)=abb23(16)
      acd23(32)=spvak1k2(iv2)
      acd23(33)=abb23(47)
      acd23(34)=spvak1k2(iv1)
      acd23(35)=abb23(20)
      acd23(36)=spval4k1(iv2)
      acd23(37)=abb23(14)
      acd23(38)=spval4k2(iv2)
      acd23(39)=abb23(17)
      acd23(40)=spval4k1(iv1)
      acd23(41)=spval4k2(iv1)
      acd23(42)=acd23(33)*acd23(34)
      acd23(43)=acd23(16)*acd23(21)
      acd23(44)=acd23(20)*acd23(30)
      acd23(45)=acd23(18)*acd23(27)
      acd23(46)=acd23(24)*acd23(31)
      acd23(47)=acd23(3)*acd23(13)
      acd23(48)=acd23(19)*acd23(29)
      acd23(42)=2.0_ki*acd23(48)+acd23(47)+acd23(46)+acd23(45)+acd23(44)+acd23(&
      &42)+acd23(43)
      acd23(42)=acd23(12)*acd23(42)
      acd23(43)=acd23(33)*acd23(32)
      acd23(44)=acd23(6)*acd23(21)
      acd23(45)=acd23(14)*acd23(30)
      acd23(46)=acd23(10)*acd23(27)
      acd23(47)=acd23(22)*acd23(31)
      acd23(48)=acd23(4)*acd23(13)
      acd23(43)=acd23(48)+acd23(47)+acd23(46)+acd23(45)+acd23(43)+acd23(44)
      acd23(43)=acd23(19)*acd23(43)
      acd23(44)=acd23(39)*acd23(38)
      acd23(45)=acd23(37)*acd23(36)
      acd23(46)=acd23(8)*acd23(26)
      acd23(47)=acd23(6)*acd23(23)
      acd23(48)=acd23(14)*acd23(35)
      acd23(44)=acd23(48)+acd23(47)+acd23(46)+acd23(44)+acd23(45)
      acd23(44)=acd23(24)*acd23(44)
      acd23(45)=acd23(39)*acd23(41)
      acd23(46)=acd23(37)*acd23(40)
      acd23(47)=acd23(17)*acd23(26)
      acd23(48)=acd23(16)*acd23(23)
      acd23(49)=acd23(20)*acd23(35)
      acd23(45)=acd23(49)+acd23(48)+acd23(47)+acd23(45)+acd23(46)
      acd23(45)=acd23(22)*acd23(45)
      acd23(46)=acd23(8)*acd23(9)
      acd23(47)=acd23(6)*acd23(7)
      acd23(48)=acd23(14)*acd23(15)
      acd23(49)=acd23(10)*acd23(11)
      acd23(50)=acd23(4)*acd23(5)
      acd23(46)=2.0_ki*acd23(50)+acd23(49)+acd23(48)+acd23(46)+acd23(47)
      acd23(46)=acd23(3)*acd23(46)
      acd23(47)=acd23(17)*acd23(9)
      acd23(48)=acd23(16)*acd23(7)
      acd23(49)=acd23(20)*acd23(15)
      acd23(50)=acd23(18)*acd23(11)
      acd23(47)=acd23(50)+acd23(49)+acd23(47)+acd23(48)
      acd23(47)=acd23(4)*acd23(47)
      acd23(48)=acd23(8)*acd23(25)
      acd23(49)=acd23(14)*acd23(28)
      acd23(48)=acd23(49)+acd23(48)
      acd23(48)=acd23(18)*acd23(48)
      acd23(49)=acd23(17)*acd23(25)
      acd23(50)=acd23(20)*acd23(28)
      acd23(49)=acd23(49)+acd23(50)
      acd23(49)=acd23(10)*acd23(49)
      acd23(50)=acd23(1)*acd23(2)
      brack=acd23(42)+acd23(43)+acd23(44)+acd23(45)+acd23(46)+acd23(47)+acd23(4&
      &8)+acd23(49)+2.0_ki*acd23(50)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=k2(iv3)
      acd23(3)=abb23(67)
      acd23(4)=k5(iv3)
      acd23(5)=abb23(48)
      acd23(6)=spvak1k5(iv3)
      acd23(7)=abb23(45)
      acd23(8)=spvak2k1(iv3)
      acd23(9)=abb23(39)
      acd23(10)=spvak2k5(iv3)
      acd23(11)=abb23(21)
      acd23(12)=d(iv1,iv3)
      acd23(13)=k2(iv2)
      acd23(14)=k5(iv2)
      acd23(15)=spvak1k5(iv2)
      acd23(16)=spvak2k1(iv2)
      acd23(17)=spvak2k5(iv2)
      acd23(18)=d(iv2,iv3)
      acd23(19)=k2(iv1)
      acd23(20)=k5(iv1)
      acd23(21)=spvak1k5(iv1)
      acd23(22)=spvak2k1(iv1)
      acd23(23)=spvak2k5(iv1)
      acd23(24)=abb23(55)
      acd23(25)=abb23(87)
      acd23(26)=abb23(57)
      acd23(27)=abb23(46)
      acd23(28)=spvak1k2(iv3)
      acd23(29)=abb23(49)
      acd23(30)=spvak1k2(iv2)
      acd23(31)=spvak1l4(iv2)
      acd23(32)=spval4k5(iv3)
      acd23(33)=abb23(41)
      acd23(34)=spvak1l4(iv3)
      acd23(35)=spval4k5(iv2)
      acd23(36)=spvak1k2(iv1)
      acd23(37)=spvak1l4(iv1)
      acd23(38)=spval4k5(iv1)
      acd23(39)=spvak2l4(iv3)
      acd23(40)=abb23(38)
      acd23(41)=spvak2l4(iv2)
      acd23(42)=spvak2l4(iv1)
      acd23(43)=spval4k1(iv3)
      acd23(44)=abb23(76)
      acd23(45)=spval4k2(iv3)
      acd23(46)=abb23(51)
      acd23(47)=spval4k1(iv2)
      acd23(48)=spval4k2(iv2)
      acd23(49)=spval4k1(iv1)
      acd23(50)=spval4k2(iv1)
      acd23(51)=abb23(71)
      acd23(52)=spvak5k2(iv3)
      acd23(53)=spvak5k2(iv2)
      acd23(54)=abb23(13)
      acd23(55)=spvak5l4(iv3)
      acd23(56)=spvak5l4(iv2)
      acd23(57)=spvak5k2(iv1)
      acd23(58)=spvak5l4(iv1)
      acd23(59)=-acd23(1)*acd23(2)
      acd23(60)=-acd23(12)*acd23(13)
      acd23(61)=-acd23(18)*acd23(19)
      acd23(59)=acd23(61)+acd23(59)+acd23(60)
      acd23(59)=acd23(3)*acd23(59)
      acd23(60)=-acd23(4)*acd23(1)
      acd23(61)=-acd23(14)*acd23(12)
      acd23(62)=-acd23(20)*acd23(18)
      acd23(60)=acd23(62)+acd23(60)+acd23(61)
      acd23(60)=acd23(5)*acd23(60)
      acd23(61)=-acd23(1)*acd23(6)
      acd23(62)=-acd23(12)*acd23(15)
      acd23(63)=-acd23(18)*acd23(21)
      acd23(61)=acd23(63)+acd23(61)+acd23(62)
      acd23(61)=acd23(7)*acd23(61)
      acd23(62)=-acd23(1)*acd23(8)
      acd23(63)=-acd23(12)*acd23(16)
      acd23(64)=-acd23(18)*acd23(22)
      acd23(62)=acd23(64)+acd23(62)+acd23(63)
      acd23(62)=acd23(9)*acd23(62)
      acd23(63)=-acd23(1)*acd23(10)
      acd23(64)=-acd23(12)*acd23(17)
      acd23(65)=-acd23(18)*acd23(23)
      acd23(63)=acd23(65)+acd23(63)+acd23(64)
      acd23(63)=acd23(11)*acd23(63)
      acd23(64)=acd23(6)*acd23(13)
      acd23(65)=acd23(15)*acd23(2)
      acd23(64)=acd23(64)+acd23(65)
      acd23(65)=-acd23(19)*acd23(64)
      acd23(66)=acd23(21)*acd23(13)
      acd23(67)=-acd23(2)*acd23(66)
      acd23(65)=acd23(67)+acd23(65)
      acd23(65)=acd23(24)*acd23(65)
      acd23(67)=acd23(13)*acd23(23)
      acd23(68)=acd23(19)*acd23(17)
      acd23(67)=acd23(67)+acd23(68)
      acd23(68)=-acd23(10)*acd23(67)
      acd23(69)=acd23(2)*acd23(23)
      acd23(70)=-acd23(17)*acd23(69)
      acd23(68)=acd23(70)+acd23(68)
      acd23(68)=acd23(27)*acd23(68)
      acd23(59)=acd23(61)+acd23(62)+acd23(63)+acd23(65)+acd23(68)+acd23(59)+acd&
      &23(60)
      acd23(60)=acd23(41)*acd23(21)
      acd23(61)=acd23(42)*acd23(15)
      acd23(60)=acd23(60)+acd23(61)
      acd23(61)=-acd23(43)*acd23(60)
      acd23(62)=acd23(39)*acd23(21)
      acd23(63)=acd23(42)*acd23(6)
      acd23(62)=acd23(62)+acd23(63)
      acd23(63)=-acd23(47)*acd23(62)
      acd23(65)=acd23(39)*acd23(15)
      acd23(68)=acd23(41)*acd23(6)
      acd23(65)=acd23(65)+acd23(68)
      acd23(68)=-acd23(49)*acd23(65)
      acd23(61)=acd23(68)+acd23(63)+acd23(61)
      acd23(61)=acd23(44)*acd23(61)
      acd23(60)=-acd23(45)*acd23(60)
      acd23(62)=-acd23(48)*acd23(62)
      acd23(63)=-acd23(50)*acd23(65)
      acd23(60)=acd23(63)+acd23(62)+acd23(60)
      acd23(60)=acd23(46)*acd23(60)
      acd23(62)=-acd23(15)*acd23(19)
      acd23(62)=acd23(62)-acd23(66)
      acd23(62)=acd23(8)*acd23(62)
      acd23(63)=acd23(21)*acd23(2)
      acd23(65)=-acd23(6)*acd23(19)
      acd23(63)=acd23(65)-acd23(63)
      acd23(63)=acd23(16)*acd23(63)
      acd23(64)=-acd23(22)*acd23(64)
      acd23(62)=acd23(64)+acd23(62)+acd23(63)
      acd23(62)=acd23(26)*acd23(62)
      acd23(63)=-acd23(35)*acd23(23)
      acd23(64)=-acd23(38)*acd23(17)
      acd23(63)=acd23(63)+acd23(64)
      acd23(63)=acd23(39)*acd23(63)
      acd23(64)=-acd23(32)*acd23(23)
      acd23(65)=-acd23(38)*acd23(10)
      acd23(64)=acd23(64)+acd23(65)
      acd23(64)=acd23(41)*acd23(64)
      acd23(65)=-acd23(32)*acd23(17)
      acd23(66)=-acd23(35)*acd23(10)
      acd23(65)=acd23(65)+acd23(66)
      acd23(65)=acd23(42)*acd23(65)
      acd23(63)=acd23(65)+acd23(63)+acd23(64)
      acd23(63)=acd23(54)*acd23(63)
      acd23(64)=-acd23(25)*acd23(67)
      acd23(65)=-acd23(41)*acd23(38)
      acd23(66)=-acd23(42)*acd23(35)
      acd23(65)=acd23(65)+acd23(66)
      acd23(65)=acd23(40)*acd23(65)
      acd23(64)=acd23(64)+acd23(65)
      acd23(64)=acd23(4)*acd23(64)
      acd23(65)=acd23(19)*acd23(10)
      acd23(65)=acd23(69)+acd23(65)
      acd23(66)=-acd23(25)*acd23(65)
      acd23(68)=-acd23(39)*acd23(38)
      acd23(69)=-acd23(42)*acd23(32)
      acd23(68)=acd23(68)+acd23(69)
      acd23(68)=acd23(40)*acd23(68)
      acd23(66)=acd23(66)+acd23(68)
      acd23(66)=acd23(14)*acd23(66)
      acd23(68)=acd23(2)*acd23(17)
      acd23(69)=acd23(13)*acd23(10)
      acd23(68)=acd23(68)+acd23(69)
      acd23(69)=-acd23(25)*acd23(68)
      acd23(70)=-acd23(39)*acd23(35)
      acd23(71)=-acd23(41)*acd23(32)
      acd23(70)=acd23(70)+acd23(71)
      acd23(70)=acd23(40)*acd23(70)
      acd23(69)=acd23(69)+acd23(70)
      acd23(69)=acd23(20)*acd23(69)
      acd23(67)=-acd23(29)*acd23(67)
      acd23(70)=acd23(51)*acd23(23)
      acd23(71)=-acd23(16)*acd23(70)
      acd23(72)=acd23(51)*acd23(17)
      acd23(73)=-acd23(22)*acd23(72)
      acd23(67)=acd23(67)+acd23(71)+acd23(73)
      acd23(67)=acd23(28)*acd23(67)
      acd23(65)=-acd23(29)*acd23(65)
      acd23(71)=-acd23(8)*acd23(70)
      acd23(73)=acd23(51)*acd23(10)
      acd23(74)=-acd23(22)*acd23(73)
      acd23(65)=acd23(65)+acd23(71)+acd23(74)
      acd23(65)=acd23(30)*acd23(65)
      acd23(71)=-acd23(32)*acd23(19)
      acd23(74)=-acd23(38)*acd23(2)
      acd23(71)=acd23(71)+acd23(74)
      acd23(71)=acd23(33)*acd23(71)
      acd23(74)=acd23(38)*acd23(44)
      acd23(75)=-acd23(8)*acd23(74)
      acd23(76)=acd23(32)*acd23(44)
      acd23(77)=-acd23(22)*acd23(76)
      acd23(71)=acd23(71)+acd23(75)+acd23(77)
      acd23(71)=acd23(31)*acd23(71)
      acd23(75)=-acd23(35)*acd23(19)
      acd23(77)=-acd23(38)*acd23(13)
      acd23(75)=acd23(75)+acd23(77)
      acd23(75)=acd23(33)*acd23(75)
      acd23(77)=-acd23(16)*acd23(74)
      acd23(78)=acd23(35)*acd23(44)
      acd23(79)=-acd23(22)*acd23(78)
      acd23(75)=acd23(75)+acd23(77)+acd23(79)
      acd23(75)=acd23(34)*acd23(75)
      acd23(68)=-acd23(29)*acd23(68)
      acd23(77)=-acd23(8)*acd23(72)
      acd23(73)=-acd23(16)*acd23(73)
      acd23(68)=acd23(68)+acd23(77)+acd23(73)
      acd23(68)=acd23(36)*acd23(68)
      acd23(73)=-acd23(32)*acd23(13)
      acd23(77)=-acd23(35)*acd23(2)
      acd23(73)=acd23(73)+acd23(77)
      acd23(73)=acd23(33)*acd23(73)
      acd23(77)=-acd23(8)*acd23(78)
      acd23(79)=-acd23(16)*acd23(76)
      acd23(73)=acd23(73)+acd23(77)+acd23(79)
      acd23(73)=acd23(37)*acd23(73)
      acd23(77)=acd23(52)*acd23(17)
      acd23(79)=2.0_ki*acd23(10)
      acd23(80)=-acd23(53)*acd23(79)
      acd23(77)=acd23(80)-2.0_ki*acd23(77)
      acd23(70)=acd23(70)*acd23(77)
      acd23(77)=-acd23(23)*acd23(78)
      acd23(80)=-acd23(17)*acd23(74)
      acd23(77)=acd23(77)+acd23(80)
      acd23(77)=acd23(55)*acd23(77)
      acd23(80)=-acd23(23)*acd23(76)
      acd23(74)=-acd23(10)*acd23(74)
      acd23(74)=acd23(80)+acd23(74)
      acd23(74)=acd23(56)*acd23(74)
      acd23(76)=-acd23(17)*acd23(76)
      acd23(78)=-acd23(10)*acd23(78)
      acd23(76)=acd23(76)+acd23(78)
      acd23(76)=acd23(58)*acd23(76)
      acd23(72)=-acd23(57)*acd23(72)*acd23(79)
      brack=2.0_ki*acd23(59)+acd23(60)+acd23(61)+acd23(62)+acd23(63)+acd23(64)+&
      &acd23(65)+acd23(66)+acd23(67)+acd23(68)+acd23(69)+acd23(70)+acd23(71)+ac&
      &d23(72)+acd23(73)+acd23(74)+acd23(75)+acd23(76)+acd23(77)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=d(iv3,iv4)
      acd23(3)=abb23(18)
      acd23(4)=k5(iv3)
      acd23(5)=spvak2k5(iv4)
      acd23(6)=abb23(31)
      acd23(7)=k5(iv4)
      acd23(8)=spvak2k5(iv3)
      acd23(9)=abb23(13)
      acd23(10)=spvak1k2(iv4)
      acd23(11)=abb23(41)
      acd23(12)=spvak1k2(iv3)
      acd23(13)=spvak1k5(iv3)
      acd23(14)=spvak2k1(iv4)
      acd23(15)=abb23(38)
      acd23(16)=spvak1k5(iv4)
      acd23(17)=spvak2k1(iv3)
      acd23(18)=d(iv1,iv3)
      acd23(19)=d(iv2,iv4)
      acd23(20)=k5(iv2)
      acd23(21)=spvak2k5(iv2)
      acd23(22)=spvak1k2(iv2)
      acd23(23)=spvak1k5(iv2)
      acd23(24)=spvak2k1(iv2)
      acd23(25)=d(iv1,iv4)
      acd23(26)=d(iv2,iv3)
      acd23(27)=k5(iv1)
      acd23(28)=spvak2k5(iv1)
      acd23(29)=spvak1k2(iv1)
      acd23(30)=spvak1k5(iv1)
      acd23(31)=spvak2k1(iv1)
      acd23(32)=acd23(1)*acd23(5)
      acd23(33)=acd23(19)*acd23(28)
      acd23(34)=acd23(25)*acd23(21)
      acd23(32)=acd23(32)+acd23(33)+acd23(34)
      acd23(33)=acd23(4)*acd23(32)
      acd23(34)=acd23(2)*acd23(28)
      acd23(35)=acd23(18)*acd23(5)
      acd23(36)=acd23(25)*acd23(8)
      acd23(35)=acd23(36)+acd23(34)+acd23(35)
      acd23(36)=acd23(20)*acd23(35)
      acd23(37)=acd23(2)*acd23(21)
      acd23(38)=acd23(19)*acd23(8)
      acd23(39)=acd23(26)*acd23(5)
      acd23(37)=acd23(37)+acd23(38)+acd23(39)
      acd23(38)=acd23(27)*acd23(37)
      acd23(39)=acd23(18)*acd23(21)
      acd23(40)=acd23(26)*acd23(28)
      acd23(39)=acd23(39)+acd23(40)
      acd23(40)=acd23(1)*acd23(8)
      acd23(40)=acd23(39)+acd23(40)
      acd23(41)=acd23(7)*acd23(40)
      acd23(33)=acd23(38)+acd23(36)+acd23(41)+acd23(33)
      acd23(33)=acd23(6)*acd23(33)
      acd23(36)=acd23(12)*acd23(32)
      acd23(35)=acd23(22)*acd23(35)
      acd23(37)=acd23(29)*acd23(37)
      acd23(38)=acd23(10)*acd23(40)
      acd23(35)=acd23(37)+acd23(35)+acd23(36)+acd23(38)
      acd23(35)=acd23(11)*acd23(35)
      acd23(32)=acd23(8)*acd23(32)
      acd23(36)=acd23(5)*acd23(39)
      acd23(34)=acd23(21)*acd23(34)
      acd23(32)=acd23(34)+acd23(32)+acd23(36)
      acd23(32)=acd23(9)*acd23(32)
      acd23(34)=acd23(2)*acd23(1)
      acd23(36)=acd23(19)*acd23(18)
      acd23(37)=acd23(26)*acd23(25)
      acd23(34)=acd23(37)+acd23(34)+acd23(36)
      acd23(34)=acd23(3)*acd23(34)
      acd23(32)=acd23(32)+2.0_ki*acd23(34)
      acd23(34)=acd23(14)*acd23(15)
      acd23(36)=acd23(26)*acd23(34)
      acd23(37)=acd23(17)*acd23(15)
      acd23(38)=acd23(19)*acd23(37)
      acd23(39)=acd23(2)*acd23(15)
      acd23(40)=acd23(24)*acd23(39)
      acd23(36)=acd23(40)+acd23(36)+acd23(38)
      acd23(36)=acd23(30)*acd23(36)
      acd23(38)=acd23(13)*acd23(15)
      acd23(40)=acd23(19)*acd23(38)
      acd23(41)=acd23(16)*acd23(15)
      acd23(42)=acd23(26)*acd23(41)
      acd23(39)=acd23(23)*acd23(39)
      acd23(39)=acd23(39)+acd23(40)+acd23(42)
      acd23(39)=acd23(31)*acd23(39)
      acd23(40)=acd23(13)*acd23(34)
      acd23(42)=acd23(16)*acd23(37)
      acd23(40)=acd23(42)+acd23(40)
      acd23(40)=acd23(1)*acd23(40)
      acd23(34)=acd23(18)*acd23(34)
      acd23(37)=acd23(25)*acd23(37)
      acd23(34)=acd23(34)+acd23(37)
      acd23(34)=acd23(23)*acd23(34)
      acd23(37)=acd23(25)*acd23(38)
      acd23(38)=acd23(18)*acd23(41)
      acd23(37)=acd23(37)+acd23(38)
      acd23(37)=acd23(24)*acd23(37)
      acd23(32)=acd23(39)+acd23(36)+acd23(37)+acd23(34)+2.0_ki*acd23(32)+acd23(&
      &40)+acd23(35)+acd23(33)
      brack=2.0_ki*acd23(32)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd23h0
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
      qshift = 0
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
end module     p0_gg_hhg_d23h0l1d
