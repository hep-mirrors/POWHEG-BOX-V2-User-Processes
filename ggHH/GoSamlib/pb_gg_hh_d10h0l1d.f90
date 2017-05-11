module     pb_gg_hh_d10h0l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity0d10h0l1d.f90
   ! generator: buildfortran_d.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d10
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd10
      complex(ki) :: brack
      acd10(1)=dotproduct(k1,qshift)
      acd10(2)=dotproduct(k2,qshift)
      acd10(3)=abb10(26)
      acd10(4)=dotproduct(qshift,qshift)
      acd10(5)=abb10(12)
      acd10(6)=dotproduct(qshift,spvak1l3)
      acd10(7)=abb10(45)
      acd10(8)=dotproduct(qshift,spvak2k1)
      acd10(9)=abb10(42)
      acd10(10)=dotproduct(qshift,spvak2l3)
      acd10(11)=abb10(38)
      acd10(12)=dotproduct(qshift,spval3k1)
      acd10(13)=abb10(29)
      acd10(14)=dotproduct(qshift,spval3k2)
      acd10(15)=abb10(36)
      acd10(16)=abb10(15)
      acd10(17)=abb10(24)
      acd10(18)=abb10(28)
      acd10(19)=dotproduct(l3,qshift)
      acd10(20)=abb10(10)
      acd10(21)=dotproduct(l4,qshift)
      acd10(22)=abb10(27)
      acd10(23)=abb10(39)
      acd10(24)=abb10(41)
      acd10(25)=abb10(32)
      acd10(26)=dotproduct(qshift,spvak1l4)
      acd10(27)=abb10(44)
      acd10(28)=dotproduct(qshift,spval4k2)
      acd10(29)=abb10(33)
      acd10(30)=abb10(14)
      acd10(31)=abb10(21)
      acd10(32)=dotproduct(qshift,spvak1k2)
      acd10(33)=abb10(7)
      acd10(34)=abb10(8)
      acd10(35)=abb10(13)
      acd10(36)=abb10(31)
      acd10(37)=abb10(34)
      acd10(38)=abb10(37)
      acd10(39)=abb10(43)
      acd10(40)=abb10(30)
      acd10(41)=dotproduct(qshift,spvak2l4)
      acd10(42)=abb10(16)
      acd10(43)=dotproduct(qshift,spval3l4)
      acd10(44)=abb10(23)
      acd10(45)=dotproduct(qshift,spval4l3)
      acd10(46)=abb10(19)
      acd10(47)=abb10(9)
      acd10(48)=abb10(40)
      acd10(49)=dotproduct(qshift,spval4k1)
      acd10(50)=abb10(35)
      acd10(51)=abb10(18)
      acd10(52)=-acd10(4)-acd10(19)+acd10(21)
      acd10(52)=acd10(20)*acd10(52)
      acd10(53)=-acd10(28)*acd10(29)
      acd10(54)=-acd10(26)*acd10(27)
      acd10(55)=-acd10(14)*acd10(25)
      acd10(56)=-acd10(6)*acd10(23)
      acd10(57)=-acd10(2)*acd10(17)
      acd10(58)=-acd10(8)*acd10(24)
      acd10(59)=-acd10(1)*acd10(5)
      acd10(52)=acd10(59)+acd10(58)+acd10(57)+acd10(56)+acd10(55)+acd10(54)+acd&
      &10(30)+acd10(53)+acd10(52)
      acd10(52)=acd10(4)*acd10(52)
      acd10(53)=acd10(45)*acd10(46)
      acd10(54)=acd10(43)*acd10(44)
      acd10(55)=acd10(41)*acd10(42)
      acd10(56)=-acd10(12)*acd10(15)
      acd10(57)=acd10(10)*acd10(35)
      acd10(58)=acd10(8)*acd10(33)
      acd10(53)=acd10(58)+acd10(57)+acd10(56)+acd10(55)+acd10(54)-acd10(47)+acd&
      &10(53)
      acd10(53)=acd10(32)*acd10(53)
      acd10(54)=-acd10(14)*acd10(15)
      acd10(55)=acd10(12)*acd10(13)
      acd10(56)=acd10(10)*acd10(11)
      acd10(57)=acd10(6)*acd10(7)
      acd10(58)=acd10(2)*acd10(3)
      acd10(59)=acd10(8)*acd10(9)
      acd10(54)=acd10(59)+acd10(58)+acd10(57)+acd10(56)+acd10(55)-acd10(16)+acd&
      &10(54)
      acd10(54)=acd10(1)*acd10(54)
      acd10(55)=-acd10(49)*acd10(50)
      acd10(56)=-acd10(41)*acd10(48)
      acd10(57)=-acd10(28)*acd10(40)
      acd10(58)=-acd10(26)*acd10(39)
      acd10(59)=-acd10(21)*acd10(22)
      acd10(60)=-acd10(14)*acd10(38)
      acd10(61)=-acd10(12)*acd10(37)
      acd10(62)=-acd10(10)*acd10(36)
      acd10(63)=-acd10(6)*acd10(31)
      acd10(64)=-acd10(2)*acd10(18)
      acd10(65)=-acd10(8)*acd10(34)
      brack=acd10(51)+acd10(52)+acd10(53)+acd10(54)+acd10(55)+acd10(56)+acd10(5&
      &7)+acd10(58)+acd10(59)+acd10(60)+acd10(61)+acd10(62)+acd10(63)+acd10(64)&
      &+acd10(65)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(83) :: acd10
      complex(ki) :: brack
      acd10(1)=k1(iv1)
      acd10(2)=dotproduct(k2,qshift)
      acd10(3)=abb10(26)
      acd10(4)=dotproduct(qshift,qshift)
      acd10(5)=abb10(12)
      acd10(6)=dotproduct(qshift,spvak1l3)
      acd10(7)=abb10(45)
      acd10(8)=dotproduct(qshift,spvak2k1)
      acd10(9)=abb10(42)
      acd10(10)=dotproduct(qshift,spvak2l3)
      acd10(11)=abb10(38)
      acd10(12)=dotproduct(qshift,spval3k1)
      acd10(13)=abb10(29)
      acd10(14)=dotproduct(qshift,spval3k2)
      acd10(15)=abb10(36)
      acd10(16)=abb10(15)
      acd10(17)=k2(iv1)
      acd10(18)=dotproduct(k1,qshift)
      acd10(19)=abb10(24)
      acd10(20)=abb10(28)
      acd10(21)=l3(iv1)
      acd10(22)=abb10(10)
      acd10(23)=l4(iv1)
      acd10(24)=abb10(27)
      acd10(25)=qshift(iv1)
      acd10(26)=dotproduct(l3,qshift)
      acd10(27)=dotproduct(l4,qshift)
      acd10(28)=abb10(39)
      acd10(29)=abb10(41)
      acd10(30)=abb10(32)
      acd10(31)=dotproduct(qshift,spvak1l4)
      acd10(32)=abb10(44)
      acd10(33)=dotproduct(qshift,spval4k2)
      acd10(34)=abb10(33)
      acd10(35)=abb10(14)
      acd10(36)=spvak1l3(iv1)
      acd10(37)=abb10(21)
      acd10(38)=spvak2k1(iv1)
      acd10(39)=dotproduct(qshift,spvak1k2)
      acd10(40)=abb10(7)
      acd10(41)=abb10(8)
      acd10(42)=spvak2l3(iv1)
      acd10(43)=abb10(13)
      acd10(44)=abb10(31)
      acd10(45)=spval3k1(iv1)
      acd10(46)=abb10(34)
      acd10(47)=spval3k2(iv1)
      acd10(48)=abb10(37)
      acd10(49)=spvak1l4(iv1)
      acd10(50)=abb10(43)
      acd10(51)=spval4k2(iv1)
      acd10(52)=abb10(30)
      acd10(53)=spvak1k2(iv1)
      acd10(54)=dotproduct(qshift,spvak2l4)
      acd10(55)=abb10(16)
      acd10(56)=dotproduct(qshift,spval3l4)
      acd10(57)=abb10(23)
      acd10(58)=dotproduct(qshift,spval4l3)
      acd10(59)=abb10(19)
      acd10(60)=abb10(9)
      acd10(61)=spvak2l4(iv1)
      acd10(62)=abb10(40)
      acd10(63)=spval3l4(iv1)
      acd10(64)=spval4l3(iv1)
      acd10(65)=spval4k1(iv1)
      acd10(66)=abb10(35)
      acd10(67)=-acd10(34)*acd10(51)
      acd10(68)=-acd10(32)*acd10(49)
      acd10(69)=-acd10(47)*acd10(30)
      acd10(70)=-acd10(36)*acd10(28)
      acd10(71)=-acd10(17)*acd10(19)
      acd10(72)=-acd10(38)*acd10(29)
      acd10(73)=-acd10(21)+acd10(23)
      acd10(73)=acd10(22)*acd10(73)
      acd10(74)=-acd10(1)*acd10(5)
      acd10(67)=acd10(74)+acd10(73)+acd10(72)+acd10(71)+acd10(70)+acd10(69)+acd&
      &10(67)+acd10(68)
      acd10(67)=acd10(4)*acd10(67)
      acd10(68)=-2.0_ki*acd10(4)+acd10(27)-acd10(26)
      acd10(68)=acd10(22)*acd10(68)
      acd10(69)=-acd10(34)*acd10(33)
      acd10(70)=-acd10(32)*acd10(31)
      acd10(71)=-acd10(14)*acd10(30)
      acd10(72)=-acd10(6)*acd10(28)
      acd10(73)=-acd10(2)*acd10(19)
      acd10(74)=-acd10(8)*acd10(29)
      acd10(75)=-acd10(18)*acd10(5)
      acd10(68)=acd10(75)+acd10(74)+acd10(73)+acd10(72)+acd10(71)+acd10(70)+acd&
      &10(35)+acd10(69)+acd10(68)
      acd10(68)=acd10(25)*acd10(68)
      acd10(69)=acd10(59)*acd10(64)
      acd10(70)=acd10(57)*acd10(63)
      acd10(71)=acd10(55)*acd10(61)
      acd10(72)=acd10(42)*acd10(43)
      acd10(73)=acd10(38)*acd10(40)
      acd10(74)=-acd10(15)*acd10(45)
      acd10(69)=acd10(74)+acd10(73)+acd10(72)+acd10(71)+acd10(69)+acd10(70)
      acd10(69)=acd10(39)*acd10(69)
      acd10(70)=acd10(59)*acd10(58)
      acd10(71)=acd10(57)*acd10(56)
      acd10(72)=acd10(55)*acd10(54)
      acd10(73)=acd10(10)*acd10(43)
      acd10(74)=acd10(8)*acd10(40)
      acd10(75)=-acd10(15)*acd10(12)
      acd10(70)=acd10(75)+acd10(74)+acd10(73)+acd10(72)+acd10(71)-acd10(60)+acd&
      &10(70)
      acd10(70)=acd10(53)*acd10(70)
      acd10(71)=acd10(45)*acd10(13)
      acd10(72)=acd10(42)*acd10(11)
      acd10(73)=acd10(36)*acd10(7)
      acd10(74)=acd10(17)*acd10(3)
      acd10(75)=acd10(38)*acd10(9)
      acd10(76)=-acd10(15)*acd10(47)
      acd10(71)=acd10(76)+acd10(75)+acd10(74)+acd10(73)+acd10(71)+acd10(72)
      acd10(71)=acd10(18)*acd10(71)
      acd10(72)=acd10(12)*acd10(13)
      acd10(73)=acd10(10)*acd10(11)
      acd10(74)=acd10(6)*acd10(7)
      acd10(75)=acd10(2)*acd10(3)
      acd10(76)=acd10(8)*acd10(9)
      acd10(77)=-acd10(15)*acd10(14)
      acd10(72)=acd10(77)+acd10(76)+acd10(75)+acd10(74)+acd10(73)-acd10(16)+acd&
      &10(72)
      acd10(72)=acd10(1)*acd10(72)
      acd10(73)=-acd10(65)*acd10(66)
      acd10(74)=-acd10(61)*acd10(62)
      acd10(75)=-acd10(51)*acd10(52)
      acd10(76)=-acd10(49)*acd10(50)
      acd10(77)=-acd10(23)*acd10(24)
      acd10(78)=-acd10(47)*acd10(48)
      acd10(79)=-acd10(45)*acd10(46)
      acd10(80)=-acd10(42)*acd10(44)
      acd10(81)=-acd10(36)*acd10(37)
      acd10(82)=-acd10(17)*acd10(20)
      acd10(83)=-acd10(38)*acd10(41)
      brack=acd10(67)+2.0_ki*acd10(68)+acd10(69)+acd10(70)+acd10(71)+acd10(72)+&
      &acd10(73)+acd10(74)+acd10(75)+acd10(76)+acd10(77)+acd10(78)+acd10(79)+ac&
      &d10(80)+acd10(81)+acd10(82)+acd10(83)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(73) :: acd10
      complex(ki) :: brack
      acd10(1)=d(iv1,iv2)
      acd10(2)=dotproduct(k1,qshift)
      acd10(3)=abb10(12)
      acd10(4)=dotproduct(k2,qshift)
      acd10(5)=abb10(24)
      acd10(6)=dotproduct(l3,qshift)
      acd10(7)=abb10(10)
      acd10(8)=dotproduct(l4,qshift)
      acd10(9)=dotproduct(qshift,qshift)
      acd10(10)=dotproduct(qshift,spvak1l3)
      acd10(11)=abb10(39)
      acd10(12)=dotproduct(qshift,spvak1l4)
      acd10(13)=abb10(44)
      acd10(14)=dotproduct(qshift,spvak2k1)
      acd10(15)=abb10(41)
      acd10(16)=dotproduct(qshift,spval3k2)
      acd10(17)=abb10(32)
      acd10(18)=dotproduct(qshift,spval4k2)
      acd10(19)=abb10(33)
      acd10(20)=abb10(14)
      acd10(21)=k1(iv1)
      acd10(22)=k2(iv2)
      acd10(23)=abb10(26)
      acd10(24)=qshift(iv2)
      acd10(25)=spvak1l3(iv2)
      acd10(26)=abb10(45)
      acd10(27)=spvak2k1(iv2)
      acd10(28)=abb10(42)
      acd10(29)=spval3k2(iv2)
      acd10(30)=abb10(36)
      acd10(31)=spvak2l3(iv2)
      acd10(32)=abb10(38)
      acd10(33)=spval3k1(iv2)
      acd10(34)=abb10(29)
      acd10(35)=k1(iv2)
      acd10(36)=k2(iv1)
      acd10(37)=qshift(iv1)
      acd10(38)=spvak1l3(iv1)
      acd10(39)=spvak2k1(iv1)
      acd10(40)=spval3k2(iv1)
      acd10(41)=spvak2l3(iv1)
      acd10(42)=spval3k1(iv1)
      acd10(43)=l3(iv1)
      acd10(44)=l3(iv2)
      acd10(45)=l4(iv1)
      acd10(46)=l4(iv2)
      acd10(47)=spvak1l4(iv2)
      acd10(48)=spval4k2(iv2)
      acd10(49)=spvak1l4(iv1)
      acd10(50)=spval4k2(iv1)
      acd10(51)=spvak1k2(iv2)
      acd10(52)=abb10(7)
      acd10(53)=spvak1k2(iv1)
      acd10(54)=abb10(13)
      acd10(55)=spvak2l4(iv2)
      acd10(56)=abb10(16)
      acd10(57)=spval3l4(iv2)
      acd10(58)=abb10(23)
      acd10(59)=spval4l3(iv2)
      acd10(60)=abb10(19)
      acd10(61)=spvak2l4(iv1)
      acd10(62)=spval3l4(iv1)
      acd10(63)=spval4l3(iv1)
      acd10(64)=-acd10(19)*acd10(48)
      acd10(65)=-acd10(17)*acd10(29)
      acd10(66)=-acd10(15)*acd10(27)
      acd10(67)=-acd10(13)*acd10(47)
      acd10(68)=-acd10(11)*acd10(25)
      acd10(69)=-acd10(5)*acd10(22)
      acd10(70)=-acd10(35)*acd10(3)
      acd10(71)=acd10(46)-acd10(44)
      acd10(71)=acd10(7)*acd10(71)
      acd10(64)=acd10(71)+acd10(70)+acd10(69)+acd10(68)+acd10(67)+acd10(66)+acd&
      &10(64)+acd10(65)
      acd10(64)=acd10(37)*acd10(64)
      acd10(65)=-4.0_ki*acd10(37)+acd10(45)-acd10(43)
      acd10(65)=acd10(7)*acd10(65)
      acd10(66)=-acd10(19)*acd10(50)
      acd10(67)=-acd10(17)*acd10(40)
      acd10(68)=-acd10(15)*acd10(39)
      acd10(69)=-acd10(13)*acd10(49)
      acd10(70)=-acd10(11)*acd10(38)
      acd10(71)=-acd10(5)*acd10(36)
      acd10(72)=-acd10(21)*acd10(3)
      acd10(65)=acd10(72)+acd10(71)+acd10(70)+acd10(69)+acd10(68)+acd10(66)+acd&
      &10(67)+acd10(65)
      acd10(65)=acd10(24)*acd10(65)
      acd10(66)=-acd10(19)*acd10(18)
      acd10(67)=-acd10(17)*acd10(16)
      acd10(68)=-acd10(15)*acd10(14)
      acd10(69)=-acd10(13)*acd10(12)
      acd10(70)=-acd10(11)*acd10(10)
      acd10(71)=-acd10(5)*acd10(4)
      acd10(72)=-acd10(3)*acd10(2)
      acd10(73)=-acd10(6)-2.0_ki*acd10(9)+acd10(8)
      acd10(73)=acd10(7)*acd10(73)
      acd10(66)=acd10(73)+acd10(72)+acd10(71)+acd10(70)+acd10(69)+acd10(68)+acd&
      &10(67)+acd10(20)+acd10(66)
      acd10(66)=acd10(1)*acd10(66)
      acd10(64)=acd10(66)+acd10(64)+acd10(65)
      acd10(65)=acd10(60)*acd10(59)
      acd10(66)=acd10(58)*acd10(57)
      acd10(67)=acd10(56)*acd10(55)
      acd10(68)=acd10(31)*acd10(54)
      acd10(69)=acd10(27)*acd10(52)
      acd10(70)=-acd10(30)*acd10(33)
      acd10(65)=acd10(70)+acd10(69)+acd10(68)+acd10(67)+acd10(65)+acd10(66)
      acd10(65)=acd10(53)*acd10(65)
      acd10(66)=acd10(60)*acd10(63)
      acd10(67)=acd10(58)*acd10(62)
      acd10(68)=acd10(56)*acd10(61)
      acd10(69)=acd10(41)*acd10(54)
      acd10(70)=acd10(39)*acd10(52)
      acd10(71)=-acd10(30)*acd10(42)
      acd10(66)=acd10(71)+acd10(70)+acd10(69)+acd10(68)+acd10(66)+acd10(67)
      acd10(66)=acd10(51)*acd10(66)
      acd10(67)=acd10(34)*acd10(42)
      acd10(68)=acd10(32)*acd10(41)
      acd10(69)=acd10(26)*acd10(38)
      acd10(70)=acd10(23)*acd10(36)
      acd10(71)=acd10(39)*acd10(28)
      acd10(72)=-acd10(30)*acd10(40)
      acd10(67)=acd10(72)+acd10(71)+acd10(70)+acd10(69)+acd10(67)+acd10(68)
      acd10(67)=acd10(35)*acd10(67)
      acd10(68)=acd10(33)*acd10(34)
      acd10(69)=acd10(31)*acd10(32)
      acd10(70)=acd10(25)*acd10(26)
      acd10(71)=acd10(22)*acd10(23)
      acd10(72)=acd10(27)*acd10(28)
      acd10(73)=-acd10(30)*acd10(29)
      acd10(68)=acd10(73)+acd10(72)+acd10(71)+acd10(70)+acd10(68)+acd10(69)
      acd10(68)=acd10(21)*acd10(68)
      brack=2.0_ki*acd10(64)+acd10(65)+acd10(66)+acd10(67)+acd10(68)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd10
      complex(ki) :: brack
      acd10(1)=d(iv1,iv2)
      acd10(2)=k1(iv3)
      acd10(3)=abb10(12)
      acd10(4)=k2(iv3)
      acd10(5)=abb10(24)
      acd10(6)=l3(iv3)
      acd10(7)=abb10(10)
      acd10(8)=l4(iv3)
      acd10(9)=qshift(iv3)
      acd10(10)=spvak1l3(iv3)
      acd10(11)=abb10(39)
      acd10(12)=spvak1l4(iv3)
      acd10(13)=abb10(44)
      acd10(14)=spvak2k1(iv3)
      acd10(15)=abb10(41)
      acd10(16)=spval3k2(iv3)
      acd10(17)=abb10(32)
      acd10(18)=spval4k2(iv3)
      acd10(19)=abb10(33)
      acd10(20)=d(iv1,iv3)
      acd10(21)=k1(iv2)
      acd10(22)=k2(iv2)
      acd10(23)=l3(iv2)
      acd10(24)=l4(iv2)
      acd10(25)=qshift(iv2)
      acd10(26)=spvak1l3(iv2)
      acd10(27)=spvak1l4(iv2)
      acd10(28)=spvak2k1(iv2)
      acd10(29)=spval3k2(iv2)
      acd10(30)=spval4k2(iv2)
      acd10(31)=d(iv2,iv3)
      acd10(32)=k1(iv1)
      acd10(33)=k2(iv1)
      acd10(34)=l3(iv1)
      acd10(35)=l4(iv1)
      acd10(36)=qshift(iv1)
      acd10(37)=spvak1l3(iv1)
      acd10(38)=spvak1l4(iv1)
      acd10(39)=spvak2k1(iv1)
      acd10(40)=spval3k2(iv1)
      acd10(41)=spval4k2(iv1)
      acd10(42)=-acd10(19)*acd10(41)
      acd10(43)=-acd10(17)*acd10(40)
      acd10(44)=-acd10(15)*acd10(39)
      acd10(45)=-acd10(13)*acd10(38)
      acd10(46)=-acd10(11)*acd10(37)
      acd10(47)=-acd10(5)*acd10(33)
      acd10(48)=-acd10(3)*acd10(32)
      acd10(49)=-acd10(34)-4.0_ki*acd10(36)+acd10(35)
      acd10(49)=acd10(7)*acd10(49)
      acd10(42)=acd10(49)+acd10(48)+acd10(47)+acd10(46)+acd10(45)+acd10(44)+acd&
      &10(42)+acd10(43)
      acd10(42)=acd10(31)*acd10(42)
      acd10(43)=-acd10(19)*acd10(30)
      acd10(44)=-acd10(17)*acd10(29)
      acd10(45)=-acd10(15)*acd10(28)
      acd10(46)=-acd10(13)*acd10(27)
      acd10(47)=-acd10(11)*acd10(26)
      acd10(48)=-acd10(5)*acd10(22)
      acd10(49)=-acd10(3)*acd10(21)
      acd10(50)=-acd10(23)-4.0_ki*acd10(25)+acd10(24)
      acd10(50)=acd10(7)*acd10(50)
      acd10(43)=acd10(50)+acd10(49)+acd10(48)+acd10(47)+acd10(46)+acd10(45)+acd&
      &10(43)+acd10(44)
      acd10(43)=acd10(20)*acd10(43)
      acd10(44)=-acd10(19)*acd10(18)
      acd10(45)=-acd10(17)*acd10(16)
      acd10(46)=-acd10(15)*acd10(14)
      acd10(47)=-acd10(13)*acd10(12)
      acd10(48)=-acd10(11)*acd10(10)
      acd10(49)=-acd10(5)*acd10(4)
      acd10(50)=-acd10(3)*acd10(2)
      acd10(51)=-acd10(6)-4.0_ki*acd10(9)+acd10(8)
      acd10(51)=acd10(7)*acd10(51)
      acd10(44)=acd10(51)+acd10(50)+acd10(49)+acd10(48)+acd10(47)+acd10(46)+acd&
      &10(44)+acd10(45)
      acd10(44)=acd10(1)*acd10(44)
      acd10(42)=acd10(44)+acd10(42)+acd10(43)
      brack=2.0_ki*acd10(42)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(10) :: acd10
      complex(ki) :: brack
      acd10(1)=d(iv1,iv2)
      acd10(2)=d(iv3,iv4)
      acd10(3)=abb10(10)
      acd10(4)=d(iv1,iv3)
      acd10(5)=d(iv2,iv4)
      acd10(6)=d(iv1,iv4)
      acd10(7)=d(iv2,iv3)
      acd10(8)=-acd10(2)*acd10(1)
      acd10(9)=-acd10(5)*acd10(4)
      acd10(10)=-acd10(7)*acd10(6)
      acd10(8)=acd10(10)+acd10(8)+acd10(9)
      brack=8.0_ki*acd10(8)*acd10(3)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd10h0
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
      qshift = -k3
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
!---#[ subroutine reconstruct_d10:
   subroutine     reconstruct_d10(coeffs)
      use pb_gg_hh_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_10:
      coeffs%coeffs_10%c0 = derivative(czip)
      coeffs%coeffs_10%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_10%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_10%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_10%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_10%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_10%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_10%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_10%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_10%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_10%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_10%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_10%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_10%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_10%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_10%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_10%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_10%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_10%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_10%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_10%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_10%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_10%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_10%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_10%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_10%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_10%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_10%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_10%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_10%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_10%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_10%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_10%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_10%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_10%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_10%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_10%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_10%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_10%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_10%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_10%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_10%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_10%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_10%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_10%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_10%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_10%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_10%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_10%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_10%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_10%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_10%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_10%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_10%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_10%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_10%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_10%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_10%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_10%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_10%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_10%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_10%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_10%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_10%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_10%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_10%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_10%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_10%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_10%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_10%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_10:
   end subroutine reconstruct_d10
!---#] subroutine reconstruct_d10:
end module     pb_gg_hh_d10h0l1d
