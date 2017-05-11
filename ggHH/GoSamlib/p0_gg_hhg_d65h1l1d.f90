module     p0_gg_hhg_d65h1l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d65h1l1d.f90
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
   integer, private :: iv5
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d65
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd65h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd65
      complex(ki) :: brack
      acd65(1)=dotproduct(k1,qshift)
      acd65(2)=dotproduct(qshift,spvak2k5)
      acd65(3)=abb65(47)
      acd65(4)=abb65(24)
      acd65(5)=dotproduct(k2,qshift)
      acd65(6)=dotproduct(qshift,spvak2k1)
      acd65(7)=abb65(33)
      acd65(8)=abb65(37)
      acd65(9)=abb65(35)
      acd65(10)=abb65(63)
      acd65(11)=abb65(26)
      acd65(12)=dotproduct(l3,qshift)
      acd65(13)=abb65(43)
      acd65(14)=abb65(46)
      acd65(15)=abb65(58)
      acd65(16)=abb65(27)
      acd65(17)=dotproduct(l4,qshift)
      acd65(18)=abb65(30)
      acd65(19)=abb65(39)
      acd65(20)=abb65(41)
      acd65(21)=abb65(16)
      acd65(22)=abb65(28)
      acd65(23)=dotproduct(qshift,qshift)
      acd65(24)=abb65(65)
      acd65(25)=abb65(49)
      acd65(26)=abb65(13)
      acd65(27)=dotproduct(qshift,spvak2l3)
      acd65(28)=abb65(44)
      acd65(29)=abb65(18)
      acd65(30)=abb65(17)
      acd65(31)=dotproduct(qshift,spvak2l4)
      acd65(32)=abb65(51)
      acd65(33)=abb65(25)
      acd65(34)=abb65(19)
      acd65(35)=abb65(50)
      acd65(36)=abb65(10)
      acd65(37)=abb65(31)
      acd65(38)=dotproduct(qshift,spval3k5)
      acd65(39)=abb65(23)
      acd65(40)=dotproduct(qshift,spval4k5)
      acd65(41)=abb65(48)
      acd65(42)=abb65(38)
      acd65(43)=abb65(29)
      acd65(44)=abb65(52)
      acd65(45)=abb65(22)
      acd65(46)=abb65(11)
      acd65(47)=abb65(36)
      acd65(48)=abb65(53)
      acd65(49)=dotproduct(qshift,spvak1k5)
      acd65(50)=abb65(12)
      acd65(51)=abb65(32)
      acd65(52)=abb65(15)
      acd65(53)=abb65(14)
      acd65(54)=abb65(21)
      acd65(55)=abb65(20)
      acd65(56)=acd65(49)*acd65(50)
      acd65(57)=acd65(38)*acd65(51)
      acd65(58)=acd65(12)*acd65(15)
      acd65(59)=acd65(31)*acd65(48)
      acd65(60)=acd65(27)*acd65(47)
      acd65(61)=acd65(17)*acd65(21)
      acd65(62)=acd65(5)*acd65(10)
      acd65(63)=-acd65(23)*acd65(30)
      acd65(64)=acd65(6)*acd65(46)
      acd65(56)=acd65(64)+acd65(63)+acd65(62)+acd65(61)+acd65(60)+acd65(59)+acd&
      &65(58)+acd65(57)-acd65(52)+acd65(56)
      acd65(56)=acd65(6)*acd65(56)
      acd65(57)=-acd65(40)*acd65(41)
      acd65(58)=-acd65(38)*acd65(39)
      acd65(59)=-acd65(12)*acd65(13)
      acd65(60)=-acd65(31)*acd65(37)
      acd65(61)=-acd65(27)*acd65(36)
      acd65(62)=-acd65(17)*acd65(19)
      acd65(63)=-acd65(5)*acd65(8)
      acd65(64)=acd65(23)*acd65(26)
      acd65(57)=acd65(64)+acd65(63)+acd65(62)+acd65(61)+acd65(60)+acd65(59)+acd&
      &65(58)+acd65(42)+acd65(57)
      acd65(57)=acd65(6)*acd65(57)
      acd65(58)=-acd65(17)*acd65(18)
      acd65(59)=acd65(5)*acd65(7)
      acd65(60)=-acd65(23)*acd65(24)
      acd65(58)=acd65(60)+acd65(59)-acd65(34)+acd65(58)
      acd65(58)=acd65(6)*acd65(58)
      acd65(59)=-acd65(23)*acd65(25)
      acd65(58)=acd65(58)+acd65(35)+acd65(59)
      acd65(58)=acd65(2)*acd65(58)
      acd65(59)=acd65(1)*acd65(3)
      acd65(60)=acd65(12)*acd65(14)
      acd65(61)=acd65(31)*acd65(44)
      acd65(62)=acd65(27)*acd65(43)
      acd65(63)=acd65(17)*acd65(20)
      acd65(64)=acd65(5)*acd65(9)
      acd65(65)=acd65(27)*acd65(28)
      acd65(65)=-acd65(29)+acd65(65)
      acd65(65)=acd65(23)*acd65(65)
      acd65(57)=acd65(58)+acd65(57)+acd65(65)+acd65(64)+acd65(63)+acd65(62)+acd&
      &65(61)+acd65(60)-acd65(45)+acd65(59)
      acd65(57)=acd65(2)*acd65(57)
      acd65(58)=-acd65(1)*acd65(4)
      acd65(59)=-acd65(12)*acd65(16)
      acd65(60)=-acd65(31)*acd65(54)
      acd65(61)=-acd65(27)*acd65(53)
      acd65(62)=-acd65(17)*acd65(22)
      acd65(63)=-acd65(5)*acd65(11)
      acd65(64)=-acd65(31)*acd65(32)
      acd65(64)=acd65(33)+acd65(64)
      acd65(64)=acd65(23)*acd65(64)
      brack=acd65(55)+acd65(56)+acd65(57)+acd65(58)+acd65(59)+acd65(60)+acd65(6&
      &1)+acd65(62)+acd65(63)+acd65(64)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd65h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd65
      complex(ki) :: brack
      acd65(1)=k1(iv1)
      acd65(2)=dotproduct(qshift,spvak2k5)
      acd65(3)=abb65(47)
      acd65(4)=abb65(24)
      acd65(5)=k2(iv1)
      acd65(6)=dotproduct(qshift,spvak2k1)
      acd65(7)=abb65(33)
      acd65(8)=abb65(37)
      acd65(9)=abb65(35)
      acd65(10)=abb65(63)
      acd65(11)=abb65(26)
      acd65(12)=l3(iv1)
      acd65(13)=abb65(43)
      acd65(14)=abb65(46)
      acd65(15)=abb65(58)
      acd65(16)=abb65(27)
      acd65(17)=l4(iv1)
      acd65(18)=abb65(30)
      acd65(19)=abb65(39)
      acd65(20)=abb65(41)
      acd65(21)=abb65(16)
      acd65(22)=abb65(28)
      acd65(23)=qshift(iv1)
      acd65(24)=abb65(65)
      acd65(25)=abb65(49)
      acd65(26)=abb65(13)
      acd65(27)=dotproduct(qshift,spvak2l3)
      acd65(28)=abb65(44)
      acd65(29)=abb65(18)
      acd65(30)=abb65(17)
      acd65(31)=dotproduct(qshift,spvak2l4)
      acd65(32)=abb65(51)
      acd65(33)=abb65(25)
      acd65(34)=spvak2k5(iv1)
      acd65(35)=dotproduct(k1,qshift)
      acd65(36)=dotproduct(k2,qshift)
      acd65(37)=dotproduct(l3,qshift)
      acd65(38)=dotproduct(l4,qshift)
      acd65(39)=dotproduct(qshift,qshift)
      acd65(40)=abb65(19)
      acd65(41)=abb65(50)
      acd65(42)=abb65(10)
      acd65(43)=abb65(31)
      acd65(44)=dotproduct(qshift,spval3k5)
      acd65(45)=abb65(23)
      acd65(46)=dotproduct(qshift,spval4k5)
      acd65(47)=abb65(48)
      acd65(48)=abb65(38)
      acd65(49)=abb65(29)
      acd65(50)=abb65(52)
      acd65(51)=abb65(22)
      acd65(52)=spvak2k1(iv1)
      acd65(53)=abb65(11)
      acd65(54)=abb65(36)
      acd65(55)=abb65(53)
      acd65(56)=dotproduct(qshift,spvak1k5)
      acd65(57)=abb65(12)
      acd65(58)=abb65(32)
      acd65(59)=abb65(15)
      acd65(60)=spvak2l3(iv1)
      acd65(61)=abb65(14)
      acd65(62)=spvak2l4(iv1)
      acd65(63)=abb65(21)
      acd65(64)=spvak1k5(iv1)
      acd65(65)=spval3k5(iv1)
      acd65(66)=spval4k5(iv1)
      acd65(67)=acd65(38)*acd65(18)
      acd65(68)=acd65(36)*acd65(7)
      acd65(69)=acd65(39)*acd65(24)
      acd65(67)=acd65(67)-acd65(68)+acd65(69)+acd65(40)
      acd65(68)=2.0_ki*acd65(34)
      acd65(69)=-acd65(67)*acd65(68)
      acd65(70)=-acd65(47)*acd65(66)
      acd65(71)=-acd65(45)*acd65(65)
      acd65(72)=-acd65(12)*acd65(13)
      acd65(73)=-acd65(62)*acd65(43)
      acd65(74)=-acd65(60)*acd65(42)
      acd65(75)=-acd65(17)*acd65(19)
      acd65(76)=-acd65(5)*acd65(8)
      acd65(77)=2.0_ki*acd65(23)
      acd65(78)=acd65(26)*acd65(77)
      acd65(69)=acd65(69)+acd65(78)+acd65(76)+acd65(75)+acd65(74)+acd65(73)+acd&
      &65(72)+acd65(70)+acd65(71)
      acd65(69)=acd65(6)*acd65(69)
      acd65(70)=acd65(47)*acd65(46)
      acd65(71)=acd65(44)*acd65(45)
      acd65(72)=acd65(37)*acd65(13)
      acd65(73)=acd65(31)*acd65(43)
      acd65(74)=acd65(38)*acd65(19)
      acd65(75)=acd65(36)*acd65(8)
      acd65(76)=acd65(27)*acd65(42)
      acd65(78)=acd65(39)*acd65(26)
      acd65(70)=acd65(75)+acd65(76)-acd65(78)-acd65(48)+acd65(70)+acd65(73)+acd&
      &65(74)+acd65(71)+acd65(72)
      acd65(71)=-acd65(52)*acd65(70)
      acd65(67)=-acd65(52)*acd65(67)
      acd65(72)=-acd65(17)*acd65(18)
      acd65(73)=acd65(5)*acd65(7)
      acd65(74)=-acd65(24)*acd65(77)
      acd65(72)=acd65(74)+acd65(72)+acd65(73)
      acd65(72)=acd65(6)*acd65(72)
      acd65(73)=-acd65(25)*acd65(77)
      acd65(67)=acd65(72)+acd65(73)+acd65(67)
      acd65(67)=acd65(2)*acd65(67)
      acd65(72)=acd65(27)*acd65(28)
      acd65(72)=acd65(72)-acd65(29)
      acd65(73)=acd65(72)*acd65(77)
      acd65(74)=-acd65(39)*acd65(25)
      acd65(74)=acd65(41)+acd65(74)
      acd65(68)=acd65(74)*acd65(68)
      acd65(74)=acd65(39)*acd65(28)
      acd65(74)=acd65(74)+acd65(49)
      acd65(74)=acd65(60)*acd65(74)
      acd65(75)=acd65(1)*acd65(3)
      acd65(76)=acd65(12)*acd65(14)
      acd65(78)=acd65(62)*acd65(50)
      acd65(79)=acd65(17)*acd65(20)
      acd65(80)=acd65(5)*acd65(9)
      acd65(67)=acd65(67)+acd65(69)+acd65(68)+acd65(71)+acd65(73)+acd65(80)+acd&
      &65(79)+acd65(78)+acd65(75)+acd65(76)+acd65(74)
      acd65(67)=acd65(2)*acd65(67)
      acd65(68)=-acd65(34)*acd65(70)
      acd65(69)=acd65(58)*acd65(65)
      acd65(70)=acd65(57)*acd65(64)
      acd65(71)=acd65(12)*acd65(15)
      acd65(73)=acd65(62)*acd65(55)
      acd65(74)=acd65(60)*acd65(54)
      acd65(75)=acd65(17)*acd65(21)
      acd65(76)=acd65(5)*acd65(10)
      acd65(78)=-acd65(30)*acd65(77)
      acd65(79)=acd65(52)*acd65(53)
      acd65(68)=acd65(68)+2.0_ki*acd65(79)+acd65(78)+acd65(76)+acd65(75)+acd65(&
      &74)+acd65(73)+acd65(71)+acd65(69)+acd65(70)
      acd65(68)=acd65(6)*acd65(68)
      acd65(69)=acd65(57)*acd65(56)
      acd65(70)=acd65(44)*acd65(58)
      acd65(71)=acd65(37)*acd65(15)
      acd65(73)=acd65(31)*acd65(55)
      acd65(74)=acd65(38)*acd65(21)
      acd65(75)=acd65(36)*acd65(10)
      acd65(76)=acd65(27)*acd65(54)
      acd65(78)=-acd65(39)*acd65(30)
      acd65(69)=acd65(78)+acd65(76)+acd65(75)+acd65(74)+acd65(73)+acd65(71)+acd&
      &65(70)-acd65(59)+acd65(69)
      acd65(69)=acd65(52)*acd65(69)
      acd65(70)=acd65(3)*acd65(35)
      acd65(71)=acd65(37)*acd65(14)
      acd65(73)=acd65(31)*acd65(50)
      acd65(74)=acd65(38)*acd65(20)
      acd65(75)=acd65(36)*acd65(9)
      acd65(76)=acd65(27)*acd65(49)
      acd65(72)=acd65(39)*acd65(72)
      acd65(70)=acd65(72)+acd65(76)+acd65(75)+acd65(74)+acd65(73)+acd65(71)-acd&
      &65(51)+acd65(70)
      acd65(70)=acd65(34)*acd65(70)
      acd65(71)=-acd65(31)*acd65(32)
      acd65(71)=acd65(33)+acd65(71)
      acd65(71)=acd65(71)*acd65(77)
      acd65(72)=-acd65(39)*acd65(32)
      acd65(72)=acd65(72)-acd65(63)
      acd65(72)=acd65(62)*acd65(72)
      acd65(73)=-acd65(1)*acd65(4)
      acd65(74)=-acd65(12)*acd65(16)
      acd65(75)=-acd65(60)*acd65(61)
      acd65(76)=-acd65(17)*acd65(22)
      acd65(77)=-acd65(5)*acd65(11)
      brack=acd65(67)+acd65(68)+acd65(69)+acd65(70)+acd65(71)+acd65(72)+acd65(7&
      &3)+acd65(74)+acd65(75)+acd65(76)+acd65(77)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd65h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd65
      complex(ki) :: brack
      acd65(1)=d(iv1,iv2)
      acd65(2)=dotproduct(qshift,spvak2k1)
      acd65(3)=dotproduct(qshift,spvak2k5)
      acd65(4)=abb65(65)
      acd65(5)=abb65(13)
      acd65(6)=abb65(17)
      acd65(7)=abb65(49)
      acd65(8)=dotproduct(qshift,spvak2l3)
      acd65(9)=abb65(44)
      acd65(10)=abb65(18)
      acd65(11)=dotproduct(qshift,spvak2l4)
      acd65(12)=abb65(51)
      acd65(13)=abb65(25)
      acd65(14)=k1(iv1)
      acd65(15)=spvak2k5(iv2)
      acd65(16)=abb65(47)
      acd65(17)=k1(iv2)
      acd65(18)=spvak2k5(iv1)
      acd65(19)=k2(iv1)
      acd65(20)=spvak2k1(iv2)
      acd65(21)=abb65(33)
      acd65(22)=abb65(37)
      acd65(23)=abb65(63)
      acd65(24)=abb65(35)
      acd65(25)=k2(iv2)
      acd65(26)=spvak2k1(iv1)
      acd65(27)=l3(iv1)
      acd65(28)=abb65(43)
      acd65(29)=abb65(58)
      acd65(30)=abb65(46)
      acd65(31)=l3(iv2)
      acd65(32)=l4(iv1)
      acd65(33)=abb65(30)
      acd65(34)=abb65(39)
      acd65(35)=abb65(16)
      acd65(36)=abb65(41)
      acd65(37)=l4(iv2)
      acd65(38)=qshift(iv1)
      acd65(39)=spvak2l3(iv2)
      acd65(40)=spvak2l4(iv2)
      acd65(41)=qshift(iv2)
      acd65(42)=spvak2l3(iv1)
      acd65(43)=spvak2l4(iv1)
      acd65(44)=abb65(11)
      acd65(45)=dotproduct(k2,qshift)
      acd65(46)=dotproduct(l3,qshift)
      acd65(47)=dotproduct(l4,qshift)
      acd65(48)=dotproduct(qshift,qshift)
      acd65(49)=abb65(19)
      acd65(50)=abb65(10)
      acd65(51)=abb65(31)
      acd65(52)=dotproduct(qshift,spval3k5)
      acd65(53)=abb65(23)
      acd65(54)=dotproduct(qshift,spval4k5)
      acd65(55)=abb65(48)
      acd65(56)=abb65(38)
      acd65(57)=abb65(36)
      acd65(58)=abb65(53)
      acd65(59)=spvak1k5(iv2)
      acd65(60)=abb65(12)
      acd65(61)=spval3k5(iv2)
      acd65(62)=abb65(32)
      acd65(63)=spval4k5(iv2)
      acd65(64)=spvak1k5(iv1)
      acd65(65)=spval3k5(iv1)
      acd65(66)=spval4k5(iv1)
      acd65(67)=abb65(50)
      acd65(68)=abb65(29)
      acd65(69)=abb65(52)
      acd65(70)=acd65(55)*acd65(66)
      acd65(71)=acd65(53)*acd65(65)
      acd65(72)=acd65(51)*acd65(43)
      acd65(73)=acd65(42)*acd65(50)
      acd65(74)=acd65(32)*acd65(34)
      acd65(75)=acd65(28)*acd65(27)
      acd65(76)=acd65(19)*acd65(22)
      acd65(77)=2.0_ki*acd65(38)
      acd65(78)=acd65(77)*acd65(5)
      acd65(70)=acd65(71)+acd65(72)+acd65(73)+acd65(74)+acd65(75)+acd65(70)+acd&
      &65(76)-acd65(78)
      acd65(71)=-acd65(2)*acd65(70)
      acd65(72)=acd65(55)*acd65(54)
      acd65(73)=acd65(53)*acd65(52)
      acd65(74)=acd65(51)*acd65(11)
      acd65(75)=acd65(50)*acd65(8)
      acd65(76)=acd65(34)*acd65(47)
      acd65(78)=acd65(28)*acd65(46)
      acd65(79)=acd65(22)*acd65(45)
      acd65(80)=acd65(48)*acd65(5)
      acd65(72)=acd65(75)+acd65(76)+acd65(78)+acd65(79)+acd65(72)-acd65(80)-acd&
      &65(56)+acd65(73)+acd65(74)
      acd65(73)=-acd65(26)*acd65(72)
      acd65(74)=acd65(33)*acd65(47)
      acd65(75)=acd65(21)*acd65(45)
      acd65(76)=acd65(4)*acd65(48)
      acd65(74)=acd65(74)-acd65(75)+acd65(76)+acd65(49)
      acd65(75)=-acd65(2)*acd65(74)
      acd65(76)=-acd65(48)*acd65(7)
      acd65(75)=acd65(75)+acd65(67)+acd65(76)
      acd65(76)=2.0_ki*acd65(18)
      acd65(75)=acd65(75)*acd65(76)
      acd65(78)=acd65(9)*acd65(8)
      acd65(78)=acd65(78)-acd65(10)
      acd65(79)=acd65(78)*acd65(77)
      acd65(80)=acd65(48)*acd65(9)
      acd65(80)=acd65(80)+acd65(68)
      acd65(81)=acd65(42)*acd65(80)
      acd65(82)=acd65(16)*acd65(14)
      acd65(83)=acd65(27)*acd65(30)
      acd65(84)=acd65(43)*acd65(69)
      acd65(85)=acd65(32)*acd65(36)
      acd65(86)=acd65(19)*acd65(24)
      acd65(71)=acd65(75)+acd65(73)+acd65(71)+acd65(79)+acd65(86)+acd65(85)+acd&
      &65(84)+acd65(82)+acd65(83)+acd65(81)
      acd65(71)=acd65(15)*acd65(71)
      acd65(73)=acd65(60)*acd65(64)
      acd65(75)=acd65(65)*acd65(62)
      acd65(79)=acd65(27)*acd65(29)
      acd65(81)=acd65(43)*acd65(58)
      acd65(82)=acd65(42)*acd65(57)
      acd65(83)=acd65(32)*acd65(35)
      acd65(84)=acd65(19)*acd65(23)
      acd65(85)=-acd65(6)*acd65(77)
      acd65(86)=acd65(26)*acd65(44)
      acd65(73)=2.0_ki*acd65(86)+acd65(85)+acd65(84)+acd65(83)+acd65(82)+acd65(&
      &81)+acd65(79)+acd65(73)+acd65(75)
      acd65(73)=acd65(20)*acd65(73)
      acd65(75)=acd65(55)*acd65(63)
      acd65(79)=acd65(53)*acd65(61)
      acd65(81)=acd65(51)*acd65(40)
      acd65(82)=acd65(39)*acd65(50)
      acd65(83)=acd65(34)*acd65(37)
      acd65(84)=acd65(28)*acd65(31)
      acd65(85)=acd65(22)*acd65(25)
      acd65(86)=2.0_ki*acd65(41)
      acd65(87)=acd65(86)*acd65(5)
      acd65(75)=acd65(79)+acd65(81)+acd65(82)+acd65(83)+acd65(84)+acd65(75)+acd&
      &65(85)-acd65(87)
      acd65(79)=-acd65(2)*acd65(75)
      acd65(72)=-acd65(20)*acd65(72)
      acd65(81)=acd65(78)*acd65(86)
      acd65(80)=acd65(39)*acd65(80)
      acd65(82)=acd65(16)*acd65(17)
      acd65(83)=acd65(31)*acd65(30)
      acd65(84)=acd65(40)*acd65(69)
      acd65(85)=acd65(37)*acd65(36)
      acd65(87)=acd65(25)*acd65(24)
      acd65(72)=acd65(72)+acd65(79)+acd65(81)+acd65(87)+acd65(85)+acd65(84)+acd&
      &65(82)+acd65(83)+acd65(80)
      acd65(72)=acd65(18)*acd65(72)
      acd65(75)=-acd65(26)*acd65(75)
      acd65(70)=-acd65(20)*acd65(70)
      acd65(79)=acd65(33)*acd65(32)
      acd65(80)=acd65(21)*acd65(19)
      acd65(81)=acd65(77)*acd65(4)
      acd65(79)=acd65(81)+acd65(79)-acd65(80)
      acd65(80)=-acd65(2)*acd65(79)
      acd65(81)=-acd65(26)*acd65(74)
      acd65(77)=-acd65(7)*acd65(77)
      acd65(77)=acd65(81)+acd65(77)+acd65(80)
      acd65(77)=acd65(15)*acd65(77)
      acd65(80)=acd65(41)*acd65(42)
      acd65(81)=acd65(38)*acd65(39)
      acd65(80)=acd65(81)+acd65(80)
      acd65(80)=acd65(9)*acd65(80)
      acd65(78)=acd65(1)*acd65(78)
      acd65(81)=acd65(2)*acd65(1)
      acd65(82)=acd65(5)*acd65(81)
      acd65(77)=acd65(77)+acd65(82)+acd65(78)+acd65(80)
      acd65(78)=acd65(33)*acd65(37)
      acd65(80)=acd65(21)*acd65(25)
      acd65(82)=acd65(86)*acd65(4)
      acd65(78)=acd65(82)+acd65(78)-acd65(80)
      acd65(80)=-acd65(2)*acd65(78)
      acd65(74)=-acd65(20)*acd65(74)
      acd65(82)=-acd65(7)*acd65(86)
      acd65(74)=acd65(74)+acd65(82)+acd65(80)
      acd65(74)=acd65(74)*acd65(76)
      acd65(76)=-acd65(26)*acd65(78)
      acd65(78)=-acd65(20)*acd65(79)
      acd65(79)=-acd65(1)*acd65(7)
      acd65(80)=-acd65(4)*acd65(81)
      acd65(79)=acd65(79)+acd65(80)
      acd65(76)=acd65(78)+2.0_ki*acd65(79)+acd65(76)
      acd65(76)=acd65(3)*acd65(76)
      acd65(70)=acd65(76)+acd65(74)+acd65(70)+acd65(75)+2.0_ki*acd65(77)
      acd65(70)=acd65(3)*acd65(70)
      acd65(74)=acd65(60)*acd65(59)
      acd65(75)=acd65(61)*acd65(62)
      acd65(76)=acd65(31)*acd65(29)
      acd65(77)=acd65(40)*acd65(58)
      acd65(78)=acd65(39)*acd65(57)
      acd65(79)=acd65(37)*acd65(35)
      acd65(80)=acd65(25)*acd65(23)
      acd65(82)=-acd65(6)*acd65(86)
      acd65(74)=acd65(82)+acd65(80)+acd65(79)+acd65(78)+acd65(77)+acd65(76)+acd&
      &65(74)+acd65(75)
      acd65(74)=acd65(26)*acd65(74)
      acd65(75)=-acd65(41)*acd65(43)
      acd65(76)=-acd65(38)*acd65(40)
      acd65(75)=acd65(76)+acd65(75)
      acd65(75)=acd65(12)*acd65(75)
      acd65(76)=-acd65(11)*acd65(12)
      acd65(76)=acd65(13)+acd65(76)
      acd65(76)=acd65(1)*acd65(76)
      acd65(77)=-acd65(6)*acd65(81)
      acd65(75)=acd65(77)+acd65(76)+acd65(75)
      brack=acd65(70)+acd65(71)+acd65(72)+acd65(73)+acd65(74)+2.0_ki*acd65(75)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd65h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(76) :: acd65
      complex(ki) :: brack
      acd65(1)=d(iv1,iv2)
      acd65(2)=spvak2k1(iv3)
      acd65(3)=dotproduct(qshift,spvak2k5)
      acd65(4)=abb65(65)
      acd65(5)=abb65(13)
      acd65(6)=abb65(17)
      acd65(7)=spvak2k5(iv3)
      acd65(8)=dotproduct(qshift,spvak2k1)
      acd65(9)=abb65(49)
      acd65(10)=dotproduct(qshift,spvak2l3)
      acd65(11)=abb65(44)
      acd65(12)=abb65(18)
      acd65(13)=spvak2l3(iv3)
      acd65(14)=spvak2l4(iv3)
      acd65(15)=abb65(51)
      acd65(16)=d(iv1,iv3)
      acd65(17)=spvak2k1(iv2)
      acd65(18)=spvak2k5(iv2)
      acd65(19)=spvak2l3(iv2)
      acd65(20)=spvak2l4(iv2)
      acd65(21)=d(iv2,iv3)
      acd65(22)=spvak2k1(iv1)
      acd65(23)=spvak2k5(iv1)
      acd65(24)=spvak2l3(iv1)
      acd65(25)=spvak2l4(iv1)
      acd65(26)=k2(iv1)
      acd65(27)=abb65(33)
      acd65(28)=abb65(37)
      acd65(29)=k2(iv2)
      acd65(30)=k2(iv3)
      acd65(31)=l3(iv1)
      acd65(32)=abb65(43)
      acd65(33)=l3(iv2)
      acd65(34)=l3(iv3)
      acd65(35)=l4(iv1)
      acd65(36)=abb65(30)
      acd65(37)=abb65(39)
      acd65(38)=l4(iv2)
      acd65(39)=l4(iv3)
      acd65(40)=qshift(iv1)
      acd65(41)=qshift(iv2)
      acd65(42)=qshift(iv3)
      acd65(43)=dotproduct(k2,qshift)
      acd65(44)=dotproduct(l4,qshift)
      acd65(45)=dotproduct(qshift,qshift)
      acd65(46)=abb65(19)
      acd65(47)=abb65(10)
      acd65(48)=abb65(31)
      acd65(49)=spval3k5(iv3)
      acd65(50)=abb65(23)
      acd65(51)=spval4k5(iv3)
      acd65(52)=abb65(48)
      acd65(53)=spval3k5(iv2)
      acd65(54)=spval4k5(iv2)
      acd65(55)=spval3k5(iv1)
      acd65(56)=spval4k5(iv1)
      acd65(57)=acd65(52)*acd65(51)
      acd65(58)=acd65(50)*acd65(49)
      acd65(59)=acd65(48)*acd65(14)
      acd65(60)=acd65(47)*acd65(13)
      acd65(61)=acd65(37)*acd65(39)
      acd65(62)=acd65(32)*acd65(34)
      acd65(63)=acd65(28)*acd65(30)
      acd65(64)=2.0_ki*acd65(5)
      acd65(65)=acd65(64)*acd65(42)
      acd65(57)=acd65(58)+acd65(59)+acd65(60)+acd65(61)-acd65(65)+acd65(57)+acd&
      &65(62)+acd65(63)
      acd65(58)=-acd65(17)*acd65(57)
      acd65(59)=acd65(52)*acd65(54)
      acd65(60)=acd65(50)*acd65(53)
      acd65(61)=acd65(48)*acd65(20)
      acd65(62)=acd65(47)*acd65(19)
      acd65(63)=acd65(37)*acd65(38)
      acd65(65)=acd65(32)*acd65(33)
      acd65(66)=acd65(28)*acd65(29)
      acd65(67)=acd65(64)*acd65(41)
      acd65(59)=acd65(60)+acd65(61)+acd65(62)+acd65(63)-acd65(67)+acd65(59)+acd&
      &65(65)+acd65(66)
      acd65(60)=-acd65(2)*acd65(59)
      acd65(61)=acd65(42)*acd65(19)
      acd65(62)=acd65(41)*acd65(13)
      acd65(63)=acd65(21)*acd65(10)
      acd65(61)=acd65(63)+acd65(61)+acd65(62)
      acd65(61)=acd65(11)*acd65(61)
      acd65(62)=acd65(8)*acd65(5)
      acd65(62)=acd65(62)-acd65(12)
      acd65(63)=acd65(21)*acd65(62)
      acd65(61)=acd65(61)+acd65(63)
      acd65(63)=acd65(36)*acd65(39)
      acd65(65)=acd65(27)*acd65(30)
      acd65(63)=acd65(63)-acd65(65)
      acd65(65)=2.0_ki*acd65(4)
      acd65(66)=acd65(65)*acd65(42)
      acd65(66)=acd65(63)+acd65(66)
      acd65(67)=-acd65(17)*acd65(66)
      acd65(68)=acd65(36)*acd65(38)
      acd65(69)=acd65(27)*acd65(29)
      acd65(68)=acd65(68)-acd65(69)
      acd65(69)=acd65(65)*acd65(41)
      acd65(69)=acd65(68)+acd65(69)
      acd65(70)=-acd65(2)*acd65(69)
      acd65(71)=acd65(4)*acd65(8)
      acd65(71)=acd65(71)+acd65(9)
      acd65(72)=-acd65(21)*acd65(71)
      acd65(67)=acd65(70)+2.0_ki*acd65(72)+acd65(67)
      acd65(70)=2.0_ki*acd65(3)
      acd65(67)=acd65(67)*acd65(70)
      acd65(58)=acd65(67)+acd65(60)+2.0_ki*acd65(61)+acd65(58)
      acd65(58)=acd65(23)*acd65(58)
      acd65(57)=-acd65(22)*acd65(57)
      acd65(60)=acd65(52)*acd65(56)
      acd65(61)=acd65(50)*acd65(55)
      acd65(67)=acd65(48)*acd65(25)
      acd65(72)=acd65(47)*acd65(24)
      acd65(73)=acd65(37)*acd65(35)
      acd65(74)=acd65(32)*acd65(31)
      acd65(75)=acd65(28)*acd65(26)
      acd65(64)=acd65(64)*acd65(40)
      acd65(60)=acd65(73)+acd65(74)+acd65(75)-acd65(64)+acd65(60)+acd65(61)+acd&
      &65(67)+acd65(72)
      acd65(61)=-acd65(2)*acd65(60)
      acd65(64)=acd65(36)*acd65(44)
      acd65(67)=acd65(27)*acd65(43)
      acd65(72)=acd65(4)*acd65(45)
      acd65(64)=-acd65(46)-acd65(64)+acd65(67)-acd65(72)
      acd65(67)=acd65(2)*acd65(64)
      acd65(63)=-acd65(8)*acd65(63)
      acd65(72)=2.0_ki*acd65(42)
      acd65(72)=-acd65(9)*acd65(72)
      acd65(73)=acd65(65)*acd65(8)
      acd65(74)=-acd65(42)*acd65(73)
      acd65(63)=acd65(67)+acd65(74)+acd65(72)+acd65(63)
      acd65(67)=2.0_ki*acd65(23)
      acd65(63)=acd65(63)*acd65(67)
      acd65(72)=acd65(42)*acd65(24)
      acd65(74)=acd65(40)*acd65(13)
      acd65(75)=acd65(16)*acd65(10)
      acd65(72)=acd65(75)+acd65(72)+acd65(74)
      acd65(72)=acd65(11)*acd65(72)
      acd65(74)=acd65(16)*acd65(62)
      acd65(72)=acd65(72)+acd65(74)
      acd65(66)=-acd65(22)*acd65(66)
      acd65(74)=acd65(36)*acd65(35)
      acd65(75)=acd65(27)*acd65(26)
      acd65(74)=acd65(74)-acd65(75)
      acd65(65)=acd65(65)*acd65(40)
      acd65(65)=acd65(74)+acd65(65)
      acd65(75)=-acd65(2)*acd65(65)
      acd65(76)=-acd65(16)*acd65(71)
      acd65(66)=acd65(75)+2.0_ki*acd65(76)+acd65(66)
      acd65(66)=acd65(66)*acd65(70)
      acd65(57)=acd65(63)+acd65(66)+acd65(61)+2.0_ki*acd65(72)+acd65(57)
      acd65(57)=acd65(18)*acd65(57)
      acd65(59)=-acd65(22)*acd65(59)
      acd65(60)=-acd65(17)*acd65(60)
      acd65(61)=acd65(22)*acd65(64)
      acd65(63)=-acd65(8)*acd65(74)
      acd65(66)=2.0_ki*acd65(40)
      acd65(66)=-acd65(9)*acd65(66)
      acd65(72)=-acd65(40)*acd65(73)
      acd65(61)=acd65(61)+acd65(72)+acd65(66)+acd65(63)
      acd65(61)=acd65(18)*acd65(61)
      acd65(63)=acd65(41)*acd65(24)
      acd65(66)=acd65(40)*acd65(19)
      acd65(72)=acd65(1)*acd65(10)
      acd65(63)=acd65(72)+acd65(63)+acd65(66)
      acd65(63)=acd65(11)*acd65(63)
      acd65(62)=acd65(1)*acd65(62)
      acd65(61)=acd65(61)+acd65(63)+acd65(62)
      acd65(62)=acd65(17)*acd65(64)
      acd65(63)=-acd65(8)*acd65(68)
      acd65(64)=2.0_ki*acd65(41)
      acd65(64)=-acd65(9)*acd65(64)
      acd65(66)=-acd65(41)*acd65(73)
      acd65(62)=acd65(62)+acd65(66)+acd65(64)+acd65(63)
      acd65(62)=acd65(62)*acd65(67)
      acd65(63)=-acd65(22)*acd65(69)
      acd65(64)=-acd65(17)*acd65(65)
      acd65(65)=-acd65(1)*acd65(71)
      acd65(63)=acd65(64)+2.0_ki*acd65(65)+acd65(63)
      acd65(63)=acd65(63)*acd65(70)
      acd65(59)=acd65(62)+acd65(63)+acd65(60)+acd65(59)+2.0_ki*acd65(61)
      acd65(59)=acd65(7)*acd65(59)
      acd65(60)=acd65(22)*acd65(21)
      acd65(61)=acd65(17)*acd65(16)
      acd65(62)=acd65(2)*acd65(1)
      acd65(60)=acd65(62)+acd65(60)+acd65(61)
      acd65(61)=-acd65(3)*acd65(4)
      acd65(61)=acd65(61)+acd65(5)
      acd65(61)=acd65(60)*acd65(61)
      acd65(62)=acd65(21)*acd65(24)
      acd65(63)=acd65(16)*acd65(19)
      acd65(64)=acd65(1)*acd65(13)
      acd65(62)=acd65(64)+acd65(62)+acd65(63)
      acd65(62)=acd65(11)*acd65(62)
      acd65(61)=acd65(62)+acd65(61)
      acd65(61)=acd65(3)*acd65(61)
      acd65(62)=-acd65(21)*acd65(25)
      acd65(63)=-acd65(16)*acd65(20)
      acd65(64)=-acd65(1)*acd65(14)
      acd65(62)=acd65(64)+acd65(62)+acd65(63)
      acd65(62)=acd65(15)*acd65(62)
      acd65(60)=-acd65(6)*acd65(60)
      acd65(60)=acd65(61)+acd65(60)+acd65(62)
      brack=acd65(57)+acd65(58)+acd65(59)+2.0_ki*acd65(60)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd65h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd65
      complex(ki) :: brack
      acd65(1)=d(iv1,iv2)
      acd65(2)=spvak2k1(iv3)
      acd65(3)=spvak2k5(iv4)
      acd65(4)=dotproduct(qshift,spvak2k5)
      acd65(5)=abb65(65)
      acd65(6)=abb65(13)
      acd65(7)=spvak2k1(iv4)
      acd65(8)=spvak2k5(iv3)
      acd65(9)=dotproduct(qshift,spvak2k1)
      acd65(10)=abb65(49)
      acd65(11)=spvak2l3(iv4)
      acd65(12)=abb65(44)
      acd65(13)=spvak2l3(iv3)
      acd65(14)=d(iv1,iv3)
      acd65(15)=spvak2k1(iv2)
      acd65(16)=spvak2k5(iv2)
      acd65(17)=spvak2l3(iv2)
      acd65(18)=d(iv1,iv4)
      acd65(19)=d(iv2,iv3)
      acd65(20)=spvak2k1(iv1)
      acd65(21)=spvak2k5(iv1)
      acd65(22)=spvak2l3(iv1)
      acd65(23)=d(iv2,iv4)
      acd65(24)=d(iv3,iv4)
      acd65(25)=k2(iv1)
      acd65(26)=abb65(33)
      acd65(27)=k2(iv2)
      acd65(28)=k2(iv3)
      acd65(29)=k2(iv4)
      acd65(30)=l4(iv1)
      acd65(31)=abb65(30)
      acd65(32)=l4(iv2)
      acd65(33)=l4(iv3)
      acd65(34)=l4(iv4)
      acd65(35)=qshift(iv1)
      acd65(36)=qshift(iv2)
      acd65(37)=qshift(iv3)
      acd65(38)=qshift(iv4)
      acd65(39)=acd65(24)*acd65(16)
      acd65(40)=acd65(23)*acd65(8)
      acd65(41)=acd65(19)*acd65(3)
      acd65(39)=acd65(41)+acd65(40)+acd65(39)
      acd65(40)=acd65(5)*acd65(21)
      acd65(42)=-acd65(40)*acd65(39)
      acd65(43)=acd65(18)*acd65(8)
      acd65(44)=acd65(14)*acd65(3)
      acd65(43)=acd65(43)+acd65(44)
      acd65(45)=acd65(5)*acd65(16)
      acd65(46)=-acd65(45)*acd65(43)
      acd65(47)=acd65(1)*acd65(3)
      acd65(48)=acd65(5)*acd65(8)
      acd65(49)=-acd65(48)*acd65(47)
      acd65(42)=acd65(49)+acd65(42)+acd65(46)
      acd65(42)=acd65(9)*acd65(42)
      acd65(46)=acd65(18)*acd65(16)
      acd65(49)=acd65(23)*acd65(21)
      acd65(46)=acd65(47)+acd65(46)+acd65(49)
      acd65(47)=-acd65(8)*acd65(46)
      acd65(49)=acd65(24)*acd65(21)
      acd65(44)=-acd65(49)-acd65(44)
      acd65(44)=acd65(16)*acd65(44)
      acd65(41)=-acd65(21)*acd65(41)
      acd65(41)=acd65(41)+acd65(47)+acd65(44)
      acd65(41)=acd65(10)*acd65(41)
      acd65(44)=acd65(2)*acd65(3)
      acd65(47)=acd65(7)*acd65(8)
      acd65(44)=acd65(44)+acd65(47)
      acd65(47)=-acd65(45)*acd65(44)
      acd65(50)=acd65(15)*acd65(3)
      acd65(51)=-acd65(48)*acd65(50)
      acd65(47)=acd65(51)+acd65(47)
      acd65(47)=acd65(35)*acd65(47)
      acd65(51)=-acd65(40)*acd65(44)
      acd65(52)=acd65(20)*acd65(3)
      acd65(53)=-acd65(48)*acd65(52)
      acd65(51)=acd65(53)+acd65(51)
      acd65(51)=acd65(36)*acd65(51)
      acd65(53)=acd65(7)*acd65(16)
      acd65(50)=acd65(53)+acd65(50)
      acd65(54)=-acd65(40)*acd65(50)
      acd65(55)=-acd65(45)*acd65(52)
      acd65(54)=acd65(55)+acd65(54)
      acd65(54)=acd65(37)*acd65(54)
      acd65(55)=acd65(2)*acd65(16)
      acd65(56)=acd65(15)*acd65(8)
      acd65(57)=acd65(55)+acd65(56)
      acd65(58)=-acd65(40)*acd65(57)
      acd65(59)=acd65(20)*acd65(8)
      acd65(60)=-acd65(45)*acd65(59)
      acd65(58)=acd65(60)+acd65(58)
      acd65(58)=acd65(38)*acd65(58)
      acd65(41)=acd65(42)+acd65(41)+acd65(47)+acd65(51)+acd65(54)+acd65(58)
      acd65(42)=acd65(1)*acd65(8)
      acd65(47)=acd65(14)*acd65(16)
      acd65(51)=acd65(19)*acd65(21)
      acd65(42)=acd65(51)+acd65(42)+acd65(47)
      acd65(42)=acd65(11)*acd65(42)
      acd65(46)=acd65(13)*acd65(46)
      acd65(39)=acd65(22)*acd65(39)
      acd65(43)=acd65(49)+acd65(43)
      acd65(43)=acd65(17)*acd65(43)
      acd65(39)=acd65(39)+acd65(43)+acd65(46)+acd65(42)
      acd65(39)=acd65(12)*acd65(39)
      acd65(42)=acd65(16)*acd65(44)
      acd65(43)=acd65(56)*acd65(3)
      acd65(42)=acd65(43)+acd65(42)
      acd65(43)=acd65(25)*acd65(42)
      acd65(46)=acd65(21)*acd65(44)
      acd65(47)=acd65(59)*acd65(3)
      acd65(46)=acd65(47)+acd65(46)
      acd65(47)=acd65(27)*acd65(46)
      acd65(49)=acd65(15)*acd65(21)
      acd65(51)=acd65(20)*acd65(16)
      acd65(49)=acd65(49)+acd65(51)
      acd65(51)=acd65(49)*acd65(3)
      acd65(53)=acd65(53)*acd65(21)
      acd65(51)=acd65(51)+acd65(53)
      acd65(53)=acd65(28)*acd65(51)
      acd65(54)=acd65(49)*acd65(8)
      acd65(55)=acd65(55)*acd65(21)
      acd65(54)=acd65(54)+acd65(55)
      acd65(55)=acd65(29)*acd65(54)
      acd65(43)=acd65(55)+acd65(53)+acd65(47)+acd65(43)
      acd65(43)=acd65(26)*acd65(43)
      acd65(42)=-acd65(30)*acd65(42)
      acd65(46)=-acd65(32)*acd65(46)
      acd65(47)=-acd65(33)*acd65(51)
      acd65(51)=-acd65(34)*acd65(54)
      acd65(42)=acd65(51)+acd65(47)+acd65(46)+acd65(42)
      acd65(42)=acd65(31)*acd65(42)
      acd65(46)=acd65(5)*acd65(3)
      acd65(47)=-acd65(2)*acd65(46)
      acd65(51)=-acd65(7)*acd65(48)
      acd65(47)=acd65(47)+acd65(51)
      acd65(51)=2.0_ki*acd65(4)
      acd65(47)=acd65(47)*acd65(51)
      acd65(44)=acd65(6)*acd65(44)
      acd65(44)=acd65(47)+acd65(44)
      acd65(44)=acd65(1)*acd65(44)
      acd65(47)=-acd65(7)*acd65(45)
      acd65(53)=-acd65(15)*acd65(46)
      acd65(47)=acd65(47)+acd65(53)
      acd65(47)=acd65(47)*acd65(51)
      acd65(50)=acd65(6)*acd65(50)
      acd65(47)=acd65(47)+acd65(50)
      acd65(47)=acd65(14)*acd65(47)
      acd65(50)=-acd65(2)*acd65(45)
      acd65(53)=-acd65(15)*acd65(48)
      acd65(50)=acd65(50)+acd65(53)
      acd65(50)=acd65(50)*acd65(51)
      acd65(53)=acd65(6)*acd65(57)
      acd65(50)=acd65(50)+acd65(53)
      acd65(50)=acd65(18)*acd65(50)
      acd65(53)=acd65(40)*acd65(7)
      acd65(46)=-acd65(20)*acd65(46)
      acd65(46)=-acd65(53)+acd65(46)
      acd65(46)=acd65(46)*acd65(51)
      acd65(53)=acd65(7)*acd65(21)
      acd65(52)=acd65(53)+acd65(52)
      acd65(52)=acd65(6)*acd65(52)
      acd65(46)=acd65(46)+acd65(52)
      acd65(46)=acd65(19)*acd65(46)
      acd65(52)=acd65(40)*acd65(2)
      acd65(48)=-acd65(20)*acd65(48)
      acd65(48)=-acd65(52)+acd65(48)
      acd65(48)=acd65(48)*acd65(51)
      acd65(52)=acd65(2)*acd65(21)
      acd65(52)=acd65(52)+acd65(59)
      acd65(52)=acd65(6)*acd65(52)
      acd65(48)=acd65(48)+acd65(52)
      acd65(48)=acd65(23)*acd65(48)
      acd65(40)=-acd65(15)*acd65(40)
      acd65(45)=-acd65(20)*acd65(45)
      acd65(40)=acd65(40)+acd65(45)
      acd65(40)=acd65(40)*acd65(51)
      acd65(45)=acd65(6)*acd65(49)
      acd65(40)=acd65(40)+acd65(45)
      acd65(40)=acd65(24)*acd65(40)
      acd65(39)=acd65(40)+acd65(48)+acd65(46)+acd65(50)+acd65(44)+acd65(47)+acd&
      &65(42)+acd65(43)+acd65(39)+2.0_ki*acd65(41)
      brack=2.0_ki*acd65(39)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd65h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd65
      complex(ki) :: brack
      acd65(1)=d(iv1,iv2)
      acd65(2)=spvak2k1(iv3)
      acd65(3)=spvak2k5(iv4)
      acd65(4)=spvak2k5(iv5)
      acd65(5)=abb65(65)
      acd65(6)=spvak2k1(iv4)
      acd65(7)=spvak2k5(iv3)
      acd65(8)=spvak2k1(iv5)
      acd65(9)=d(iv1,iv3)
      acd65(10)=spvak2k1(iv2)
      acd65(11)=spvak2k5(iv2)
      acd65(12)=d(iv1,iv4)
      acd65(13)=d(iv1,iv5)
      acd65(14)=d(iv2,iv3)
      acd65(15)=spvak2k1(iv1)
      acd65(16)=spvak2k5(iv1)
      acd65(17)=d(iv2,iv4)
      acd65(18)=d(iv2,iv5)
      acd65(19)=d(iv3,iv4)
      acd65(20)=d(iv3,iv5)
      acd65(21)=d(iv4,iv5)
      acd65(22)=-acd65(10)*acd65(20)
      acd65(23)=-acd65(8)*acd65(14)
      acd65(24)=-acd65(2)*acd65(18)
      acd65(22)=acd65(24)+acd65(22)+acd65(23)
      acd65(22)=acd65(16)*acd65(22)
      acd65(23)=-acd65(15)*acd65(20)
      acd65(24)=-acd65(8)*acd65(9)
      acd65(25)=-acd65(2)*acd65(13)
      acd65(23)=acd65(25)+acd65(23)+acd65(24)
      acd65(23)=acd65(11)*acd65(23)
      acd65(24)=-acd65(15)*acd65(18)
      acd65(25)=-acd65(10)*acd65(13)
      acd65(26)=-acd65(8)*acd65(1)
      acd65(24)=acd65(26)+acd65(24)+acd65(25)
      acd65(24)=acd65(7)*acd65(24)
      acd65(25)=-acd65(15)*acd65(14)
      acd65(26)=-acd65(10)*acd65(9)
      acd65(27)=-acd65(2)*acd65(1)
      acd65(25)=acd65(27)+acd65(25)+acd65(26)
      acd65(25)=acd65(4)*acd65(25)
      acd65(22)=acd65(25)+acd65(24)+acd65(22)+acd65(23)
      acd65(22)=acd65(3)*acd65(22)
      acd65(23)=-acd65(10)*acd65(19)
      acd65(24)=-acd65(6)*acd65(14)
      acd65(25)=-acd65(2)*acd65(17)
      acd65(23)=acd65(25)+acd65(23)+acd65(24)
      acd65(23)=acd65(16)*acd65(23)
      acd65(24)=-acd65(15)*acd65(19)
      acd65(25)=-acd65(6)*acd65(9)
      acd65(26)=-acd65(2)*acd65(12)
      acd65(24)=acd65(26)+acd65(24)+acd65(25)
      acd65(24)=acd65(11)*acd65(24)
      acd65(25)=-acd65(15)*acd65(17)
      acd65(26)=-acd65(10)*acd65(12)
      acd65(27)=-acd65(6)*acd65(1)
      acd65(25)=acd65(27)+acd65(25)+acd65(26)
      acd65(25)=acd65(7)*acd65(25)
      acd65(23)=acd65(25)+acd65(23)+acd65(24)
      acd65(23)=acd65(4)*acd65(23)
      acd65(24)=-acd65(10)*acd65(21)
      acd65(25)=-acd65(8)*acd65(17)
      acd65(26)=-acd65(6)*acd65(18)
      acd65(24)=acd65(26)+acd65(24)+acd65(25)
      acd65(24)=acd65(16)*acd65(24)
      acd65(25)=-acd65(15)*acd65(21)
      acd65(26)=-acd65(8)*acd65(12)
      acd65(27)=-acd65(6)*acd65(13)
      acd65(25)=acd65(27)+acd65(25)+acd65(26)
      acd65(25)=acd65(11)*acd65(25)
      acd65(24)=acd65(24)+acd65(25)
      acd65(24)=acd65(7)*acd65(24)
      acd65(25)=-acd65(8)*acd65(19)
      acd65(26)=-acd65(6)*acd65(20)
      acd65(27)=-acd65(2)*acd65(21)
      acd65(25)=acd65(27)+acd65(25)+acd65(26)
      acd65(25)=acd65(11)*acd65(16)*acd65(25)
      acd65(22)=acd65(22)+acd65(23)+acd65(25)+acd65(24)
      brack=4.0_ki*acd65(22)*acd65(5)
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd65h1
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
      integer, intent(in), optional :: i5
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k3-k4
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
      if(present(i5)) then
          iv5=i5
          deg=5
      else
          iv5=1
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
      if(deg.eq.5) then
         numerator = cond(epspow.eq.t1,brack_6,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d65:
   subroutine     reconstruct_d65(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_65:
      coeffs%coeffs_65%c0 = derivative(czip)
      coeffs%coeffs_65%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_65%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_65%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_65%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_65%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_65%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_65%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_65%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_65%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_65%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_65%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_65%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_65%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_65%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_65%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_65%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_65%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_65%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_65%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_65%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_65%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_65%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_65%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_65%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_65%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_65%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_65%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_65%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_65%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_65%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_65%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_65%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_65%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_65%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_65%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_65%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_65%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_65%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_65%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_65%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_65%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_65%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_65%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_65%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_65%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_65%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_65%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_65%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_65%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_65%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_65%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_65%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_65%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_65%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_65%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_65%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_65%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_65%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_65%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_65%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_65%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_65%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_65%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_65%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_65%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_65%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_65%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_65%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_65%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_65%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_65%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_65%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_65%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_65%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_65%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_65%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_65%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_65%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_65%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_65%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_65%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_65%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_65%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_65%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_65%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_65%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_65%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_65%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_65%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_65%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_65%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_65%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_65%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_65%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_65%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_65%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_65%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_65%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_65%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_65%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_65%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_65%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_65%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_65%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_65%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_65%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_65%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_65%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_65%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_65%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_65%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_65%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_65%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_65%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_65%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_65%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_65%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_65%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_65%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_65%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_65%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_65%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_65%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_65%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_65%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_65:
   end subroutine reconstruct_d65
!---#] subroutine reconstruct_d65:
end module     p0_gg_hhg_d65h1l1d
