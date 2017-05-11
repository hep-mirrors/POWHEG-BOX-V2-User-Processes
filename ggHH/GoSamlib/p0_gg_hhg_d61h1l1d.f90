module     p0_gg_hhg_d61h1l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d61h1l1d.f90
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
   public :: derivative , reconstruct_d61
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd61h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd61
      complex(ki) :: brack
      acd61(1)=dotproduct(k1,qshift)
      acd61(2)=dotproduct(qshift,spvak2k5)
      acd61(3)=abb61(47)
      acd61(4)=abb61(24)
      acd61(5)=dotproduct(k2,qshift)
      acd61(6)=dotproduct(qshift,spvak2k1)
      acd61(7)=abb61(33)
      acd61(8)=abb61(37)
      acd61(9)=abb61(35)
      acd61(10)=abb61(63)
      acd61(11)=abb61(26)
      acd61(12)=dotproduct(l3,qshift)
      acd61(13)=abb61(30)
      acd61(14)=abb61(43)
      acd61(15)=abb61(46)
      acd61(16)=abb61(58)
      acd61(17)=abb61(27)
      acd61(18)=dotproduct(l4,qshift)
      acd61(19)=abb61(39)
      acd61(20)=abb61(45)
      acd61(21)=abb61(32)
      acd61(22)=abb61(28)
      acd61(23)=dotproduct(qshift,qshift)
      acd61(24)=abb61(65)
      acd61(25)=abb61(49)
      acd61(26)=abb61(13)
      acd61(27)=dotproduct(qshift,spvak2l4)
      acd61(28)=abb61(52)
      acd61(29)=abb61(18)
      acd61(30)=abb61(16)
      acd61(31)=dotproduct(qshift,spvak2l3)
      acd61(32)=abb61(14)
      acd61(33)=abb61(25)
      acd61(34)=abb61(19)
      acd61(35)=abb61(50)
      acd61(36)=abb61(10)
      acd61(37)=abb61(12)
      acd61(38)=dotproduct(qshift,spval3k5)
      acd61(39)=abb61(48)
      acd61(40)=dotproduct(qshift,spval4k5)
      acd61(41)=abb61(23)
      acd61(42)=abb61(38)
      acd61(43)=abb61(53)
      acd61(44)=abb61(41)
      acd61(45)=abb61(22)
      acd61(46)=abb61(11)
      acd61(47)=abb61(44)
      acd61(48)=abb61(36)
      acd61(49)=dotproduct(qshift,spvak1k5)
      acd61(50)=abb61(31)
      acd61(51)=abb61(17)
      acd61(52)=abb61(15)
      acd61(53)=abb61(21)
      acd61(54)=abb61(29)
      acd61(55)=abb61(20)
      acd61(56)=acd61(49)*acd61(50)
      acd61(57)=acd61(40)*acd61(51)
      acd61(58)=acd61(18)*acd61(21)
      acd61(59)=acd61(31)*acd61(47)
      acd61(60)=acd61(27)*acd61(48)
      acd61(61)=acd61(12)*acd61(16)
      acd61(62)=acd61(5)*acd61(10)
      acd61(63)=-acd61(23)*acd61(30)
      acd61(64)=acd61(6)*acd61(46)
      acd61(56)=acd61(64)+acd61(63)+acd61(62)+acd61(61)+acd61(60)+acd61(59)+acd&
      &61(58)+acd61(57)-acd61(52)+acd61(56)
      acd61(56)=acd61(6)*acd61(56)
      acd61(57)=-acd61(38)*acd61(39)
      acd61(58)=-acd61(40)*acd61(41)
      acd61(59)=-acd61(18)*acd61(19)
      acd61(60)=-acd61(31)*acd61(36)
      acd61(61)=-acd61(27)*acd61(37)
      acd61(62)=-acd61(12)*acd61(14)
      acd61(63)=-acd61(5)*acd61(8)
      acd61(64)=acd61(23)*acd61(26)
      acd61(57)=acd61(64)+acd61(63)+acd61(62)+acd61(61)+acd61(60)+acd61(59)+acd&
      &61(58)+acd61(42)+acd61(57)
      acd61(57)=acd61(6)*acd61(57)
      acd61(58)=-acd61(12)*acd61(13)
      acd61(59)=acd61(5)*acd61(7)
      acd61(60)=-acd61(23)*acd61(24)
      acd61(58)=acd61(60)+acd61(59)-acd61(34)+acd61(58)
      acd61(58)=acd61(6)*acd61(58)
      acd61(59)=-acd61(23)*acd61(25)
      acd61(58)=acd61(58)+acd61(35)+acd61(59)
      acd61(58)=acd61(2)*acd61(58)
      acd61(59)=acd61(1)*acd61(3)
      acd61(60)=acd61(18)*acd61(20)
      acd61(61)=acd61(31)*acd61(43)
      acd61(62)=acd61(27)*acd61(44)
      acd61(63)=acd61(12)*acd61(15)
      acd61(64)=acd61(5)*acd61(9)
      acd61(65)=acd61(27)*acd61(28)
      acd61(65)=-acd61(29)+acd61(65)
      acd61(65)=acd61(23)*acd61(65)
      acd61(57)=acd61(58)+acd61(57)+acd61(65)+acd61(64)+acd61(63)+acd61(62)+acd&
      &61(61)+acd61(60)-acd61(45)+acd61(59)
      acd61(57)=acd61(2)*acd61(57)
      acd61(58)=-acd61(1)*acd61(4)
      acd61(59)=-acd61(18)*acd61(22)
      acd61(60)=-acd61(31)*acd61(53)
      acd61(61)=-acd61(27)*acd61(54)
      acd61(62)=-acd61(12)*acd61(17)
      acd61(63)=-acd61(5)*acd61(11)
      acd61(64)=-acd61(31)*acd61(32)
      acd61(64)=acd61(33)+acd61(64)
      acd61(64)=acd61(23)*acd61(64)
      brack=acd61(55)+acd61(56)+acd61(57)+acd61(58)+acd61(59)+acd61(60)+acd61(6&
      &1)+acd61(62)+acd61(63)+acd61(64)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd61h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd61
      complex(ki) :: brack
      acd61(1)=k1(iv1)
      acd61(2)=dotproduct(qshift,spvak2k5)
      acd61(3)=abb61(47)
      acd61(4)=abb61(24)
      acd61(5)=k2(iv1)
      acd61(6)=dotproduct(qshift,spvak2k1)
      acd61(7)=abb61(33)
      acd61(8)=abb61(37)
      acd61(9)=abb61(35)
      acd61(10)=abb61(63)
      acd61(11)=abb61(26)
      acd61(12)=l3(iv1)
      acd61(13)=abb61(30)
      acd61(14)=abb61(43)
      acd61(15)=abb61(46)
      acd61(16)=abb61(58)
      acd61(17)=abb61(27)
      acd61(18)=l4(iv1)
      acd61(19)=abb61(39)
      acd61(20)=abb61(45)
      acd61(21)=abb61(32)
      acd61(22)=abb61(28)
      acd61(23)=qshift(iv1)
      acd61(24)=abb61(65)
      acd61(25)=abb61(49)
      acd61(26)=abb61(13)
      acd61(27)=dotproduct(qshift,spvak2l4)
      acd61(28)=abb61(52)
      acd61(29)=abb61(18)
      acd61(30)=abb61(16)
      acd61(31)=dotproduct(qshift,spvak2l3)
      acd61(32)=abb61(14)
      acd61(33)=abb61(25)
      acd61(34)=spvak2k5(iv1)
      acd61(35)=dotproduct(k1,qshift)
      acd61(36)=dotproduct(k2,qshift)
      acd61(37)=dotproduct(l3,qshift)
      acd61(38)=dotproduct(l4,qshift)
      acd61(39)=dotproduct(qshift,qshift)
      acd61(40)=abb61(19)
      acd61(41)=abb61(50)
      acd61(42)=abb61(10)
      acd61(43)=abb61(12)
      acd61(44)=dotproduct(qshift,spval3k5)
      acd61(45)=abb61(48)
      acd61(46)=dotproduct(qshift,spval4k5)
      acd61(47)=abb61(23)
      acd61(48)=abb61(38)
      acd61(49)=abb61(53)
      acd61(50)=abb61(41)
      acd61(51)=abb61(22)
      acd61(52)=spvak2k1(iv1)
      acd61(53)=abb61(11)
      acd61(54)=abb61(44)
      acd61(55)=abb61(36)
      acd61(56)=dotproduct(qshift,spvak1k5)
      acd61(57)=abb61(31)
      acd61(58)=abb61(17)
      acd61(59)=abb61(15)
      acd61(60)=spvak2l3(iv1)
      acd61(61)=abb61(21)
      acd61(62)=spvak2l4(iv1)
      acd61(63)=abb61(29)
      acd61(64)=spvak1k5(iv1)
      acd61(65)=spval3k5(iv1)
      acd61(66)=spval4k5(iv1)
      acd61(67)=acd61(37)*acd61(13)
      acd61(68)=acd61(36)*acd61(7)
      acd61(69)=acd61(39)*acd61(24)
      acd61(67)=acd61(67)-acd61(68)+acd61(69)+acd61(40)
      acd61(68)=2.0_ki*acd61(34)
      acd61(69)=-acd61(67)*acd61(68)
      acd61(70)=-acd61(47)*acd61(66)
      acd61(71)=-acd61(45)*acd61(65)
      acd61(72)=-acd61(18)*acd61(19)
      acd61(73)=-acd61(62)*acd61(43)
      acd61(74)=-acd61(60)*acd61(42)
      acd61(75)=-acd61(12)*acd61(14)
      acd61(76)=-acd61(5)*acd61(8)
      acd61(77)=2.0_ki*acd61(23)
      acd61(78)=acd61(26)*acd61(77)
      acd61(69)=acd61(69)+acd61(78)+acd61(76)+acd61(75)+acd61(74)+acd61(73)+acd&
      &61(72)+acd61(70)+acd61(71)
      acd61(69)=acd61(6)*acd61(69)
      acd61(70)=acd61(46)*acd61(47)
      acd61(71)=acd61(45)*acd61(44)
      acd61(72)=acd61(38)*acd61(19)
      acd61(73)=acd61(31)*acd61(42)
      acd61(74)=acd61(37)*acd61(14)
      acd61(75)=acd61(36)*acd61(8)
      acd61(76)=acd61(27)*acd61(43)
      acd61(78)=acd61(39)*acd61(26)
      acd61(70)=acd61(75)+acd61(76)-acd61(78)-acd61(48)+acd61(70)+acd61(73)+acd&
      &61(74)+acd61(71)+acd61(72)
      acd61(71)=-acd61(52)*acd61(70)
      acd61(67)=-acd61(52)*acd61(67)
      acd61(72)=-acd61(12)*acd61(13)
      acd61(73)=acd61(5)*acd61(7)
      acd61(74)=-acd61(24)*acd61(77)
      acd61(72)=acd61(74)+acd61(72)+acd61(73)
      acd61(72)=acd61(6)*acd61(72)
      acd61(73)=-acd61(25)*acd61(77)
      acd61(67)=acd61(72)+acd61(73)+acd61(67)
      acd61(67)=acd61(2)*acd61(67)
      acd61(72)=acd61(27)*acd61(28)
      acd61(72)=acd61(72)-acd61(29)
      acd61(73)=acd61(72)*acd61(77)
      acd61(74)=-acd61(39)*acd61(25)
      acd61(74)=acd61(41)+acd61(74)
      acd61(68)=acd61(74)*acd61(68)
      acd61(74)=acd61(39)*acd61(28)
      acd61(74)=acd61(74)+acd61(50)
      acd61(74)=acd61(62)*acd61(74)
      acd61(75)=acd61(1)*acd61(3)
      acd61(76)=acd61(18)*acd61(20)
      acd61(78)=acd61(60)*acd61(49)
      acd61(79)=acd61(12)*acd61(15)
      acd61(80)=acd61(5)*acd61(9)
      acd61(67)=acd61(67)+acd61(69)+acd61(68)+acd61(71)+acd61(73)+acd61(80)+acd&
      &61(79)+acd61(78)+acd61(75)+acd61(76)+acd61(74)
      acd61(67)=acd61(2)*acd61(67)
      acd61(68)=-acd61(34)*acd61(70)
      acd61(69)=acd61(58)*acd61(66)
      acd61(70)=acd61(57)*acd61(64)
      acd61(71)=acd61(18)*acd61(21)
      acd61(73)=acd61(62)*acd61(55)
      acd61(74)=acd61(60)*acd61(54)
      acd61(75)=acd61(12)*acd61(16)
      acd61(76)=acd61(5)*acd61(10)
      acd61(78)=-acd61(30)*acd61(77)
      acd61(79)=acd61(52)*acd61(53)
      acd61(68)=acd61(68)+2.0_ki*acd61(79)+acd61(78)+acd61(76)+acd61(75)+acd61(&
      &74)+acd61(73)+acd61(71)+acd61(69)+acd61(70)
      acd61(68)=acd61(6)*acd61(68)
      acd61(69)=acd61(57)*acd61(56)
      acd61(70)=acd61(46)*acd61(58)
      acd61(71)=acd61(38)*acd61(21)
      acd61(73)=acd61(31)*acd61(54)
      acd61(74)=acd61(37)*acd61(16)
      acd61(75)=acd61(36)*acd61(10)
      acd61(76)=acd61(27)*acd61(55)
      acd61(78)=-acd61(39)*acd61(30)
      acd61(69)=acd61(78)+acd61(76)+acd61(75)+acd61(74)+acd61(73)+acd61(71)+acd&
      &61(70)-acd61(59)+acd61(69)
      acd61(69)=acd61(52)*acd61(69)
      acd61(70)=acd61(3)*acd61(35)
      acd61(71)=acd61(38)*acd61(20)
      acd61(73)=acd61(31)*acd61(49)
      acd61(74)=acd61(37)*acd61(15)
      acd61(75)=acd61(36)*acd61(9)
      acd61(76)=acd61(27)*acd61(50)
      acd61(72)=acd61(39)*acd61(72)
      acd61(70)=acd61(72)+acd61(76)+acd61(75)+acd61(74)+acd61(73)+acd61(71)-acd&
      &61(51)+acd61(70)
      acd61(70)=acd61(34)*acd61(70)
      acd61(71)=-acd61(31)*acd61(32)
      acd61(71)=acd61(33)+acd61(71)
      acd61(71)=acd61(71)*acd61(77)
      acd61(72)=-acd61(39)*acd61(32)
      acd61(72)=acd61(72)-acd61(61)
      acd61(72)=acd61(60)*acd61(72)
      acd61(73)=-acd61(1)*acd61(4)
      acd61(74)=-acd61(18)*acd61(22)
      acd61(75)=-acd61(62)*acd61(63)
      acd61(76)=-acd61(12)*acd61(17)
      acd61(77)=-acd61(5)*acd61(11)
      brack=acd61(67)+acd61(68)+acd61(69)+acd61(70)+acd61(71)+acd61(72)+acd61(7&
      &3)+acd61(74)+acd61(75)+acd61(76)+acd61(77)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd61h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd61
      complex(ki) :: brack
      acd61(1)=d(iv1,iv2)
      acd61(2)=dotproduct(qshift,spvak2k1)
      acd61(3)=dotproduct(qshift,spvak2k5)
      acd61(4)=abb61(65)
      acd61(5)=abb61(13)
      acd61(6)=abb61(16)
      acd61(7)=abb61(49)
      acd61(8)=dotproduct(qshift,spvak2l4)
      acd61(9)=abb61(52)
      acd61(10)=abb61(18)
      acd61(11)=dotproduct(qshift,spvak2l3)
      acd61(12)=abb61(14)
      acd61(13)=abb61(25)
      acd61(14)=k1(iv1)
      acd61(15)=spvak2k5(iv2)
      acd61(16)=abb61(47)
      acd61(17)=k1(iv2)
      acd61(18)=spvak2k5(iv1)
      acd61(19)=k2(iv1)
      acd61(20)=spvak2k1(iv2)
      acd61(21)=abb61(33)
      acd61(22)=abb61(37)
      acd61(23)=abb61(63)
      acd61(24)=abb61(35)
      acd61(25)=k2(iv2)
      acd61(26)=spvak2k1(iv1)
      acd61(27)=l3(iv1)
      acd61(28)=abb61(30)
      acd61(29)=abb61(43)
      acd61(30)=abb61(58)
      acd61(31)=abb61(46)
      acd61(32)=l3(iv2)
      acd61(33)=l4(iv1)
      acd61(34)=abb61(39)
      acd61(35)=abb61(32)
      acd61(36)=abb61(45)
      acd61(37)=l4(iv2)
      acd61(38)=qshift(iv1)
      acd61(39)=spvak2l3(iv2)
      acd61(40)=spvak2l4(iv2)
      acd61(41)=qshift(iv2)
      acd61(42)=spvak2l3(iv1)
      acd61(43)=spvak2l4(iv1)
      acd61(44)=abb61(11)
      acd61(45)=dotproduct(k2,qshift)
      acd61(46)=dotproduct(l3,qshift)
      acd61(47)=dotproduct(l4,qshift)
      acd61(48)=dotproduct(qshift,qshift)
      acd61(49)=abb61(19)
      acd61(50)=abb61(10)
      acd61(51)=abb61(12)
      acd61(52)=dotproduct(qshift,spval3k5)
      acd61(53)=abb61(48)
      acd61(54)=dotproduct(qshift,spval4k5)
      acd61(55)=abb61(23)
      acd61(56)=abb61(38)
      acd61(57)=abb61(44)
      acd61(58)=abb61(36)
      acd61(59)=spvak1k5(iv2)
      acd61(60)=abb61(31)
      acd61(61)=spval3k5(iv2)
      acd61(62)=spval4k5(iv2)
      acd61(63)=abb61(17)
      acd61(64)=spvak1k5(iv1)
      acd61(65)=spval3k5(iv1)
      acd61(66)=spval4k5(iv1)
      acd61(67)=abb61(50)
      acd61(68)=abb61(53)
      acd61(69)=abb61(41)
      acd61(70)=acd61(55)*acd61(66)
      acd61(71)=acd61(53)*acd61(65)
      acd61(72)=acd61(50)*acd61(42)
      acd61(73)=acd61(43)*acd61(51)
      acd61(74)=acd61(34)*acd61(33)
      acd61(75)=acd61(27)*acd61(29)
      acd61(76)=acd61(19)*acd61(22)
      acd61(77)=2.0_ki*acd61(38)
      acd61(78)=acd61(77)*acd61(5)
      acd61(70)=acd61(71)+acd61(72)+acd61(73)+acd61(74)+acd61(75)+acd61(70)+acd&
      &61(76)-acd61(78)
      acd61(71)=-acd61(2)*acd61(70)
      acd61(72)=acd61(55)*acd61(54)
      acd61(73)=acd61(53)*acd61(52)
      acd61(74)=acd61(51)*acd61(8)
      acd61(75)=acd61(50)*acd61(11)
      acd61(76)=acd61(34)*acd61(47)
      acd61(78)=acd61(29)*acd61(46)
      acd61(79)=acd61(22)*acd61(45)
      acd61(80)=acd61(48)*acd61(5)
      acd61(72)=acd61(75)+acd61(76)+acd61(78)+acd61(79)+acd61(72)-acd61(80)-acd&
      &61(56)+acd61(73)+acd61(74)
      acd61(73)=-acd61(26)*acd61(72)
      acd61(74)=acd61(28)*acd61(46)
      acd61(75)=acd61(21)*acd61(45)
      acd61(76)=acd61(4)*acd61(48)
      acd61(74)=acd61(74)-acd61(75)+acd61(76)+acd61(49)
      acd61(75)=-acd61(2)*acd61(74)
      acd61(76)=-acd61(48)*acd61(7)
      acd61(75)=acd61(75)+acd61(67)+acd61(76)
      acd61(76)=2.0_ki*acd61(18)
      acd61(75)=acd61(75)*acd61(76)
      acd61(78)=acd61(9)*acd61(8)
      acd61(78)=acd61(78)-acd61(10)
      acd61(79)=acd61(78)*acd61(77)
      acd61(80)=acd61(48)*acd61(9)
      acd61(80)=acd61(80)+acd61(69)
      acd61(81)=acd61(43)*acd61(80)
      acd61(82)=acd61(16)*acd61(14)
      acd61(83)=acd61(33)*acd61(36)
      acd61(84)=acd61(42)*acd61(68)
      acd61(85)=acd61(27)*acd61(31)
      acd61(86)=acd61(19)*acd61(24)
      acd61(71)=acd61(75)+acd61(73)+acd61(71)+acd61(79)+acd61(86)+acd61(85)+acd&
      &61(84)+acd61(82)+acd61(83)+acd61(81)
      acd61(71)=acd61(15)*acd61(71)
      acd61(73)=acd61(60)*acd61(64)
      acd61(75)=acd61(66)*acd61(63)
      acd61(79)=acd61(33)*acd61(35)
      acd61(81)=acd61(42)*acd61(57)
      acd61(82)=acd61(43)*acd61(58)
      acd61(83)=acd61(27)*acd61(30)
      acd61(84)=acd61(19)*acd61(23)
      acd61(85)=-acd61(6)*acd61(77)
      acd61(86)=acd61(26)*acd61(44)
      acd61(73)=2.0_ki*acd61(86)+acd61(85)+acd61(84)+acd61(83)+acd61(82)+acd61(&
      &81)+acd61(79)+acd61(73)+acd61(75)
      acd61(73)=acd61(20)*acd61(73)
      acd61(75)=acd61(55)*acd61(62)
      acd61(79)=acd61(53)*acd61(61)
      acd61(81)=acd61(50)*acd61(39)
      acd61(82)=acd61(40)*acd61(51)
      acd61(83)=acd61(34)*acd61(37)
      acd61(84)=acd61(29)*acd61(32)
      acd61(85)=acd61(22)*acd61(25)
      acd61(86)=2.0_ki*acd61(41)
      acd61(87)=acd61(86)*acd61(5)
      acd61(75)=acd61(79)+acd61(81)+acd61(82)+acd61(83)+acd61(84)+acd61(75)+acd&
      &61(85)-acd61(87)
      acd61(79)=-acd61(2)*acd61(75)
      acd61(72)=-acd61(20)*acd61(72)
      acd61(81)=acd61(78)*acd61(86)
      acd61(80)=acd61(40)*acd61(80)
      acd61(82)=acd61(16)*acd61(17)
      acd61(83)=acd61(37)*acd61(36)
      acd61(84)=acd61(39)*acd61(68)
      acd61(85)=acd61(32)*acd61(31)
      acd61(87)=acd61(25)*acd61(24)
      acd61(72)=acd61(72)+acd61(79)+acd61(81)+acd61(87)+acd61(85)+acd61(84)+acd&
      &61(82)+acd61(83)+acd61(80)
      acd61(72)=acd61(18)*acd61(72)
      acd61(75)=-acd61(26)*acd61(75)
      acd61(70)=-acd61(20)*acd61(70)
      acd61(79)=acd61(28)*acd61(27)
      acd61(80)=acd61(21)*acd61(19)
      acd61(81)=acd61(77)*acd61(4)
      acd61(79)=acd61(81)+acd61(79)-acd61(80)
      acd61(80)=-acd61(2)*acd61(79)
      acd61(81)=-acd61(26)*acd61(74)
      acd61(77)=-acd61(7)*acd61(77)
      acd61(77)=acd61(81)+acd61(77)+acd61(80)
      acd61(77)=acd61(15)*acd61(77)
      acd61(80)=acd61(41)*acd61(43)
      acd61(81)=acd61(38)*acd61(40)
      acd61(80)=acd61(81)+acd61(80)
      acd61(80)=acd61(9)*acd61(80)
      acd61(78)=acd61(1)*acd61(78)
      acd61(81)=acd61(2)*acd61(1)
      acd61(82)=acd61(5)*acd61(81)
      acd61(77)=acd61(77)+acd61(82)+acd61(78)+acd61(80)
      acd61(78)=acd61(28)*acd61(32)
      acd61(80)=acd61(21)*acd61(25)
      acd61(82)=acd61(86)*acd61(4)
      acd61(78)=acd61(82)+acd61(78)-acd61(80)
      acd61(80)=-acd61(2)*acd61(78)
      acd61(74)=-acd61(20)*acd61(74)
      acd61(82)=-acd61(7)*acd61(86)
      acd61(74)=acd61(74)+acd61(82)+acd61(80)
      acd61(74)=acd61(74)*acd61(76)
      acd61(76)=-acd61(26)*acd61(78)
      acd61(78)=-acd61(20)*acd61(79)
      acd61(79)=-acd61(1)*acd61(7)
      acd61(80)=-acd61(4)*acd61(81)
      acd61(79)=acd61(79)+acd61(80)
      acd61(76)=acd61(78)+2.0_ki*acd61(79)+acd61(76)
      acd61(76)=acd61(3)*acd61(76)
      acd61(70)=acd61(76)+acd61(74)+acd61(70)+acd61(75)+2.0_ki*acd61(77)
      acd61(70)=acd61(3)*acd61(70)
      acd61(74)=acd61(60)*acd61(59)
      acd61(75)=acd61(62)*acd61(63)
      acd61(76)=acd61(37)*acd61(35)
      acd61(77)=acd61(39)*acd61(57)
      acd61(78)=acd61(40)*acd61(58)
      acd61(79)=acd61(32)*acd61(30)
      acd61(80)=acd61(25)*acd61(23)
      acd61(82)=-acd61(6)*acd61(86)
      acd61(74)=acd61(82)+acd61(80)+acd61(79)+acd61(78)+acd61(77)+acd61(76)+acd&
      &61(74)+acd61(75)
      acd61(74)=acd61(26)*acd61(74)
      acd61(75)=-acd61(41)*acd61(42)
      acd61(76)=-acd61(38)*acd61(39)
      acd61(75)=acd61(76)+acd61(75)
      acd61(75)=acd61(12)*acd61(75)
      acd61(76)=-acd61(11)*acd61(12)
      acd61(76)=acd61(13)+acd61(76)
      acd61(76)=acd61(1)*acd61(76)
      acd61(77)=-acd61(6)*acd61(81)
      acd61(75)=acd61(77)+acd61(76)+acd61(75)
      brack=acd61(70)+acd61(71)+acd61(72)+acd61(73)+acd61(74)+2.0_ki*acd61(75)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd61h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(76) :: acd61
      complex(ki) :: brack
      acd61(1)=d(iv1,iv2)
      acd61(2)=spvak2k1(iv3)
      acd61(3)=dotproduct(qshift,spvak2k5)
      acd61(4)=abb61(65)
      acd61(5)=abb61(13)
      acd61(6)=abb61(16)
      acd61(7)=spvak2k5(iv3)
      acd61(8)=dotproduct(qshift,spvak2k1)
      acd61(9)=abb61(49)
      acd61(10)=dotproduct(qshift,spvak2l4)
      acd61(11)=abb61(52)
      acd61(12)=abb61(18)
      acd61(13)=spvak2l3(iv3)
      acd61(14)=abb61(14)
      acd61(15)=spvak2l4(iv3)
      acd61(16)=d(iv1,iv3)
      acd61(17)=spvak2k1(iv2)
      acd61(18)=spvak2k5(iv2)
      acd61(19)=spvak2l3(iv2)
      acd61(20)=spvak2l4(iv2)
      acd61(21)=d(iv2,iv3)
      acd61(22)=spvak2k1(iv1)
      acd61(23)=spvak2k5(iv1)
      acd61(24)=spvak2l3(iv1)
      acd61(25)=spvak2l4(iv1)
      acd61(26)=k2(iv1)
      acd61(27)=abb61(33)
      acd61(28)=abb61(37)
      acd61(29)=k2(iv2)
      acd61(30)=k2(iv3)
      acd61(31)=l3(iv1)
      acd61(32)=abb61(30)
      acd61(33)=abb61(43)
      acd61(34)=l3(iv2)
      acd61(35)=l3(iv3)
      acd61(36)=l4(iv1)
      acd61(37)=abb61(39)
      acd61(38)=l4(iv2)
      acd61(39)=l4(iv3)
      acd61(40)=qshift(iv1)
      acd61(41)=qshift(iv2)
      acd61(42)=qshift(iv3)
      acd61(43)=dotproduct(k2,qshift)
      acd61(44)=dotproduct(l3,qshift)
      acd61(45)=dotproduct(qshift,qshift)
      acd61(46)=abb61(19)
      acd61(47)=abb61(10)
      acd61(48)=abb61(12)
      acd61(49)=spval3k5(iv3)
      acd61(50)=abb61(48)
      acd61(51)=spval4k5(iv3)
      acd61(52)=abb61(23)
      acd61(53)=spval3k5(iv2)
      acd61(54)=spval4k5(iv2)
      acd61(55)=spval3k5(iv1)
      acd61(56)=spval4k5(iv1)
      acd61(57)=acd61(52)*acd61(51)
      acd61(58)=acd61(50)*acd61(49)
      acd61(59)=acd61(48)*acd61(15)
      acd61(60)=acd61(47)*acd61(13)
      acd61(61)=acd61(37)*acd61(39)
      acd61(62)=acd61(33)*acd61(35)
      acd61(63)=acd61(28)*acd61(30)
      acd61(64)=2.0_ki*acd61(5)
      acd61(65)=acd61(64)*acd61(42)
      acd61(57)=acd61(58)+acd61(59)+acd61(60)+acd61(61)-acd61(65)+acd61(57)+acd&
      &61(62)+acd61(63)
      acd61(58)=-acd61(17)*acd61(57)
      acd61(59)=acd61(52)*acd61(54)
      acd61(60)=acd61(50)*acd61(53)
      acd61(61)=acd61(48)*acd61(20)
      acd61(62)=acd61(47)*acd61(19)
      acd61(63)=acd61(37)*acd61(38)
      acd61(65)=acd61(33)*acd61(34)
      acd61(66)=acd61(28)*acd61(29)
      acd61(67)=acd61(64)*acd61(41)
      acd61(59)=acd61(60)+acd61(61)+acd61(62)+acd61(63)-acd61(67)+acd61(59)+acd&
      &61(65)+acd61(66)
      acd61(60)=-acd61(2)*acd61(59)
      acd61(61)=acd61(42)*acd61(20)
      acd61(62)=acd61(41)*acd61(15)
      acd61(63)=acd61(21)*acd61(10)
      acd61(61)=acd61(63)+acd61(61)+acd61(62)
      acd61(61)=acd61(11)*acd61(61)
      acd61(62)=acd61(8)*acd61(5)
      acd61(62)=acd61(62)-acd61(12)
      acd61(63)=acd61(21)*acd61(62)
      acd61(61)=acd61(61)+acd61(63)
      acd61(63)=acd61(32)*acd61(35)
      acd61(65)=acd61(27)*acd61(30)
      acd61(63)=acd61(63)-acd61(65)
      acd61(65)=2.0_ki*acd61(4)
      acd61(66)=acd61(65)*acd61(42)
      acd61(66)=acd61(63)+acd61(66)
      acd61(67)=-acd61(17)*acd61(66)
      acd61(68)=acd61(32)*acd61(34)
      acd61(69)=acd61(27)*acd61(29)
      acd61(68)=acd61(68)-acd61(69)
      acd61(69)=acd61(65)*acd61(41)
      acd61(69)=acd61(68)+acd61(69)
      acd61(70)=-acd61(2)*acd61(69)
      acd61(71)=acd61(4)*acd61(8)
      acd61(71)=acd61(71)+acd61(9)
      acd61(72)=-acd61(21)*acd61(71)
      acd61(67)=acd61(70)+2.0_ki*acd61(72)+acd61(67)
      acd61(70)=2.0_ki*acd61(3)
      acd61(67)=acd61(67)*acd61(70)
      acd61(58)=acd61(67)+acd61(60)+2.0_ki*acd61(61)+acd61(58)
      acd61(58)=acd61(23)*acd61(58)
      acd61(57)=-acd61(22)*acd61(57)
      acd61(60)=acd61(52)*acd61(56)
      acd61(61)=acd61(50)*acd61(55)
      acd61(67)=acd61(48)*acd61(25)
      acd61(72)=acd61(47)*acd61(24)
      acd61(73)=acd61(37)*acd61(36)
      acd61(74)=acd61(33)*acd61(31)
      acd61(75)=acd61(28)*acd61(26)
      acd61(64)=acd61(64)*acd61(40)
      acd61(60)=acd61(73)+acd61(74)+acd61(75)-acd61(64)+acd61(60)+acd61(61)+acd&
      &61(67)+acd61(72)
      acd61(61)=-acd61(2)*acd61(60)
      acd61(64)=acd61(32)*acd61(44)
      acd61(67)=acd61(27)*acd61(43)
      acd61(72)=acd61(4)*acd61(45)
      acd61(64)=-acd61(46)-acd61(64)+acd61(67)-acd61(72)
      acd61(67)=acd61(2)*acd61(64)
      acd61(63)=-acd61(8)*acd61(63)
      acd61(72)=2.0_ki*acd61(42)
      acd61(72)=-acd61(9)*acd61(72)
      acd61(73)=acd61(65)*acd61(8)
      acd61(74)=-acd61(42)*acd61(73)
      acd61(63)=acd61(67)+acd61(74)+acd61(72)+acd61(63)
      acd61(67)=2.0_ki*acd61(23)
      acd61(63)=acd61(63)*acd61(67)
      acd61(72)=acd61(42)*acd61(25)
      acd61(74)=acd61(40)*acd61(15)
      acd61(75)=acd61(16)*acd61(10)
      acd61(72)=acd61(75)+acd61(72)+acd61(74)
      acd61(72)=acd61(11)*acd61(72)
      acd61(74)=acd61(16)*acd61(62)
      acd61(72)=acd61(72)+acd61(74)
      acd61(66)=-acd61(22)*acd61(66)
      acd61(74)=acd61(32)*acd61(31)
      acd61(75)=acd61(27)*acd61(26)
      acd61(74)=acd61(74)-acd61(75)
      acd61(65)=acd61(65)*acd61(40)
      acd61(65)=acd61(74)+acd61(65)
      acd61(75)=-acd61(2)*acd61(65)
      acd61(76)=-acd61(16)*acd61(71)
      acd61(66)=acd61(75)+2.0_ki*acd61(76)+acd61(66)
      acd61(66)=acd61(66)*acd61(70)
      acd61(57)=acd61(63)+acd61(66)+acd61(61)+2.0_ki*acd61(72)+acd61(57)
      acd61(57)=acd61(18)*acd61(57)
      acd61(59)=-acd61(22)*acd61(59)
      acd61(60)=-acd61(17)*acd61(60)
      acd61(61)=acd61(22)*acd61(64)
      acd61(63)=-acd61(8)*acd61(74)
      acd61(66)=2.0_ki*acd61(40)
      acd61(66)=-acd61(9)*acd61(66)
      acd61(72)=-acd61(40)*acd61(73)
      acd61(61)=acd61(61)+acd61(72)+acd61(66)+acd61(63)
      acd61(61)=acd61(18)*acd61(61)
      acd61(63)=acd61(41)*acd61(25)
      acd61(66)=acd61(40)*acd61(20)
      acd61(72)=acd61(1)*acd61(10)
      acd61(63)=acd61(72)+acd61(63)+acd61(66)
      acd61(63)=acd61(11)*acd61(63)
      acd61(62)=acd61(1)*acd61(62)
      acd61(61)=acd61(61)+acd61(63)+acd61(62)
      acd61(62)=acd61(17)*acd61(64)
      acd61(63)=-acd61(8)*acd61(68)
      acd61(64)=2.0_ki*acd61(41)
      acd61(64)=-acd61(9)*acd61(64)
      acd61(66)=-acd61(41)*acd61(73)
      acd61(62)=acd61(62)+acd61(66)+acd61(64)+acd61(63)
      acd61(62)=acd61(62)*acd61(67)
      acd61(63)=-acd61(22)*acd61(69)
      acd61(64)=-acd61(17)*acd61(65)
      acd61(65)=-acd61(1)*acd61(71)
      acd61(63)=acd61(64)+2.0_ki*acd61(65)+acd61(63)
      acd61(63)=acd61(63)*acd61(70)
      acd61(59)=acd61(62)+acd61(63)+acd61(60)+acd61(59)+2.0_ki*acd61(61)
      acd61(59)=acd61(7)*acd61(59)
      acd61(60)=acd61(22)*acd61(21)
      acd61(61)=acd61(17)*acd61(16)
      acd61(62)=acd61(2)*acd61(1)
      acd61(60)=acd61(62)+acd61(60)+acd61(61)
      acd61(61)=-acd61(3)*acd61(4)
      acd61(61)=acd61(61)+acd61(5)
      acd61(61)=acd61(60)*acd61(61)
      acd61(62)=acd61(21)*acd61(25)
      acd61(63)=acd61(16)*acd61(20)
      acd61(64)=acd61(1)*acd61(15)
      acd61(62)=acd61(64)+acd61(62)+acd61(63)
      acd61(62)=acd61(11)*acd61(62)
      acd61(61)=acd61(62)+acd61(61)
      acd61(61)=acd61(3)*acd61(61)
      acd61(62)=-acd61(21)*acd61(24)
      acd61(63)=-acd61(16)*acd61(19)
      acd61(64)=-acd61(1)*acd61(13)
      acd61(62)=acd61(64)+acd61(62)+acd61(63)
      acd61(62)=acd61(14)*acd61(62)
      acd61(60)=-acd61(6)*acd61(60)
      acd61(60)=acd61(61)+acd61(60)+acd61(62)
      brack=acd61(57)+acd61(58)+acd61(59)+2.0_ki*acd61(60)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd61h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd61
      complex(ki) :: brack
      acd61(1)=d(iv1,iv2)
      acd61(2)=spvak2k1(iv3)
      acd61(3)=spvak2k5(iv4)
      acd61(4)=dotproduct(qshift,spvak2k5)
      acd61(5)=abb61(65)
      acd61(6)=abb61(13)
      acd61(7)=spvak2k1(iv4)
      acd61(8)=spvak2k5(iv3)
      acd61(9)=dotproduct(qshift,spvak2k1)
      acd61(10)=abb61(49)
      acd61(11)=spvak2l4(iv4)
      acd61(12)=abb61(52)
      acd61(13)=spvak2l4(iv3)
      acd61(14)=d(iv1,iv3)
      acd61(15)=spvak2k1(iv2)
      acd61(16)=spvak2k5(iv2)
      acd61(17)=spvak2l4(iv2)
      acd61(18)=d(iv1,iv4)
      acd61(19)=d(iv2,iv3)
      acd61(20)=spvak2k1(iv1)
      acd61(21)=spvak2k5(iv1)
      acd61(22)=spvak2l4(iv1)
      acd61(23)=d(iv2,iv4)
      acd61(24)=d(iv3,iv4)
      acd61(25)=k2(iv1)
      acd61(26)=abb61(33)
      acd61(27)=k2(iv2)
      acd61(28)=k2(iv3)
      acd61(29)=k2(iv4)
      acd61(30)=l3(iv1)
      acd61(31)=abb61(30)
      acd61(32)=l3(iv2)
      acd61(33)=l3(iv3)
      acd61(34)=l3(iv4)
      acd61(35)=qshift(iv1)
      acd61(36)=qshift(iv2)
      acd61(37)=qshift(iv3)
      acd61(38)=qshift(iv4)
      acd61(39)=acd61(24)*acd61(16)
      acd61(40)=acd61(23)*acd61(8)
      acd61(41)=acd61(19)*acd61(3)
      acd61(39)=acd61(41)+acd61(40)+acd61(39)
      acd61(40)=acd61(5)*acd61(21)
      acd61(42)=-acd61(40)*acd61(39)
      acd61(43)=acd61(18)*acd61(8)
      acd61(44)=acd61(14)*acd61(3)
      acd61(43)=acd61(43)+acd61(44)
      acd61(45)=acd61(5)*acd61(16)
      acd61(46)=-acd61(45)*acd61(43)
      acd61(47)=acd61(1)*acd61(3)
      acd61(48)=acd61(5)*acd61(8)
      acd61(49)=-acd61(48)*acd61(47)
      acd61(42)=acd61(49)+acd61(42)+acd61(46)
      acd61(42)=acd61(9)*acd61(42)
      acd61(46)=acd61(18)*acd61(16)
      acd61(49)=acd61(23)*acd61(21)
      acd61(46)=acd61(47)+acd61(46)+acd61(49)
      acd61(47)=-acd61(8)*acd61(46)
      acd61(49)=acd61(24)*acd61(21)
      acd61(44)=-acd61(49)-acd61(44)
      acd61(44)=acd61(16)*acd61(44)
      acd61(41)=-acd61(21)*acd61(41)
      acd61(41)=acd61(41)+acd61(47)+acd61(44)
      acd61(41)=acd61(10)*acd61(41)
      acd61(44)=acd61(2)*acd61(3)
      acd61(47)=acd61(7)*acd61(8)
      acd61(44)=acd61(44)+acd61(47)
      acd61(47)=-acd61(45)*acd61(44)
      acd61(50)=acd61(15)*acd61(3)
      acd61(51)=-acd61(48)*acd61(50)
      acd61(47)=acd61(51)+acd61(47)
      acd61(47)=acd61(35)*acd61(47)
      acd61(51)=-acd61(40)*acd61(44)
      acd61(52)=acd61(20)*acd61(3)
      acd61(53)=-acd61(48)*acd61(52)
      acd61(51)=acd61(53)+acd61(51)
      acd61(51)=acd61(36)*acd61(51)
      acd61(53)=acd61(7)*acd61(16)
      acd61(50)=acd61(53)+acd61(50)
      acd61(54)=-acd61(40)*acd61(50)
      acd61(55)=-acd61(45)*acd61(52)
      acd61(54)=acd61(55)+acd61(54)
      acd61(54)=acd61(37)*acd61(54)
      acd61(55)=acd61(2)*acd61(16)
      acd61(56)=acd61(15)*acd61(8)
      acd61(57)=acd61(55)+acd61(56)
      acd61(58)=-acd61(40)*acd61(57)
      acd61(59)=acd61(20)*acd61(8)
      acd61(60)=-acd61(45)*acd61(59)
      acd61(58)=acd61(60)+acd61(58)
      acd61(58)=acd61(38)*acd61(58)
      acd61(41)=acd61(42)+acd61(41)+acd61(47)+acd61(51)+acd61(54)+acd61(58)
      acd61(42)=acd61(1)*acd61(8)
      acd61(47)=acd61(14)*acd61(16)
      acd61(51)=acd61(19)*acd61(21)
      acd61(42)=acd61(51)+acd61(42)+acd61(47)
      acd61(42)=acd61(11)*acd61(42)
      acd61(46)=acd61(13)*acd61(46)
      acd61(39)=acd61(22)*acd61(39)
      acd61(43)=acd61(49)+acd61(43)
      acd61(43)=acd61(17)*acd61(43)
      acd61(39)=acd61(39)+acd61(43)+acd61(46)+acd61(42)
      acd61(39)=acd61(12)*acd61(39)
      acd61(42)=acd61(16)*acd61(44)
      acd61(43)=acd61(56)*acd61(3)
      acd61(42)=acd61(43)+acd61(42)
      acd61(43)=acd61(25)*acd61(42)
      acd61(46)=acd61(21)*acd61(44)
      acd61(47)=acd61(59)*acd61(3)
      acd61(46)=acd61(47)+acd61(46)
      acd61(47)=acd61(27)*acd61(46)
      acd61(49)=acd61(15)*acd61(21)
      acd61(51)=acd61(20)*acd61(16)
      acd61(49)=acd61(49)+acd61(51)
      acd61(51)=acd61(49)*acd61(3)
      acd61(53)=acd61(53)*acd61(21)
      acd61(51)=acd61(51)+acd61(53)
      acd61(53)=acd61(28)*acd61(51)
      acd61(54)=acd61(49)*acd61(8)
      acd61(55)=acd61(55)*acd61(21)
      acd61(54)=acd61(54)+acd61(55)
      acd61(55)=acd61(29)*acd61(54)
      acd61(43)=acd61(55)+acd61(53)+acd61(47)+acd61(43)
      acd61(43)=acd61(26)*acd61(43)
      acd61(42)=-acd61(30)*acd61(42)
      acd61(46)=-acd61(32)*acd61(46)
      acd61(47)=-acd61(33)*acd61(51)
      acd61(51)=-acd61(34)*acd61(54)
      acd61(42)=acd61(51)+acd61(47)+acd61(46)+acd61(42)
      acd61(42)=acd61(31)*acd61(42)
      acd61(46)=acd61(5)*acd61(3)
      acd61(47)=-acd61(2)*acd61(46)
      acd61(51)=-acd61(7)*acd61(48)
      acd61(47)=acd61(47)+acd61(51)
      acd61(51)=2.0_ki*acd61(4)
      acd61(47)=acd61(47)*acd61(51)
      acd61(44)=acd61(6)*acd61(44)
      acd61(44)=acd61(47)+acd61(44)
      acd61(44)=acd61(1)*acd61(44)
      acd61(47)=-acd61(7)*acd61(45)
      acd61(53)=-acd61(15)*acd61(46)
      acd61(47)=acd61(47)+acd61(53)
      acd61(47)=acd61(47)*acd61(51)
      acd61(50)=acd61(6)*acd61(50)
      acd61(47)=acd61(47)+acd61(50)
      acd61(47)=acd61(14)*acd61(47)
      acd61(50)=-acd61(2)*acd61(45)
      acd61(53)=-acd61(15)*acd61(48)
      acd61(50)=acd61(50)+acd61(53)
      acd61(50)=acd61(50)*acd61(51)
      acd61(53)=acd61(6)*acd61(57)
      acd61(50)=acd61(50)+acd61(53)
      acd61(50)=acd61(18)*acd61(50)
      acd61(53)=acd61(40)*acd61(7)
      acd61(46)=-acd61(20)*acd61(46)
      acd61(46)=-acd61(53)+acd61(46)
      acd61(46)=acd61(46)*acd61(51)
      acd61(53)=acd61(7)*acd61(21)
      acd61(52)=acd61(53)+acd61(52)
      acd61(52)=acd61(6)*acd61(52)
      acd61(46)=acd61(46)+acd61(52)
      acd61(46)=acd61(19)*acd61(46)
      acd61(52)=acd61(40)*acd61(2)
      acd61(48)=-acd61(20)*acd61(48)
      acd61(48)=-acd61(52)+acd61(48)
      acd61(48)=acd61(48)*acd61(51)
      acd61(52)=acd61(2)*acd61(21)
      acd61(52)=acd61(52)+acd61(59)
      acd61(52)=acd61(6)*acd61(52)
      acd61(48)=acd61(48)+acd61(52)
      acd61(48)=acd61(23)*acd61(48)
      acd61(40)=-acd61(15)*acd61(40)
      acd61(45)=-acd61(20)*acd61(45)
      acd61(40)=acd61(40)+acd61(45)
      acd61(40)=acd61(40)*acd61(51)
      acd61(45)=acd61(6)*acd61(49)
      acd61(40)=acd61(40)+acd61(45)
      acd61(40)=acd61(24)*acd61(40)
      acd61(39)=acd61(40)+acd61(48)+acd61(46)+acd61(50)+acd61(44)+acd61(47)+acd&
      &61(42)+acd61(43)+acd61(39)+2.0_ki*acd61(41)
      brack=2.0_ki*acd61(39)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd61h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd61
      complex(ki) :: brack
      acd61(1)=d(iv1,iv2)
      acd61(2)=spvak2k1(iv3)
      acd61(3)=spvak2k5(iv4)
      acd61(4)=spvak2k5(iv5)
      acd61(5)=abb61(65)
      acd61(6)=spvak2k1(iv4)
      acd61(7)=spvak2k5(iv3)
      acd61(8)=spvak2k1(iv5)
      acd61(9)=d(iv1,iv3)
      acd61(10)=spvak2k1(iv2)
      acd61(11)=spvak2k5(iv2)
      acd61(12)=d(iv1,iv4)
      acd61(13)=d(iv1,iv5)
      acd61(14)=d(iv2,iv3)
      acd61(15)=spvak2k1(iv1)
      acd61(16)=spvak2k5(iv1)
      acd61(17)=d(iv2,iv4)
      acd61(18)=d(iv2,iv5)
      acd61(19)=d(iv3,iv4)
      acd61(20)=d(iv3,iv5)
      acd61(21)=d(iv4,iv5)
      acd61(22)=-acd61(10)*acd61(20)
      acd61(23)=-acd61(8)*acd61(14)
      acd61(24)=-acd61(2)*acd61(18)
      acd61(22)=acd61(24)+acd61(22)+acd61(23)
      acd61(22)=acd61(16)*acd61(22)
      acd61(23)=-acd61(15)*acd61(20)
      acd61(24)=-acd61(8)*acd61(9)
      acd61(25)=-acd61(2)*acd61(13)
      acd61(23)=acd61(25)+acd61(23)+acd61(24)
      acd61(23)=acd61(11)*acd61(23)
      acd61(24)=-acd61(15)*acd61(18)
      acd61(25)=-acd61(10)*acd61(13)
      acd61(26)=-acd61(8)*acd61(1)
      acd61(24)=acd61(26)+acd61(24)+acd61(25)
      acd61(24)=acd61(7)*acd61(24)
      acd61(25)=-acd61(15)*acd61(14)
      acd61(26)=-acd61(10)*acd61(9)
      acd61(27)=-acd61(2)*acd61(1)
      acd61(25)=acd61(27)+acd61(25)+acd61(26)
      acd61(25)=acd61(4)*acd61(25)
      acd61(22)=acd61(25)+acd61(24)+acd61(22)+acd61(23)
      acd61(22)=acd61(3)*acd61(22)
      acd61(23)=-acd61(10)*acd61(19)
      acd61(24)=-acd61(6)*acd61(14)
      acd61(25)=-acd61(2)*acd61(17)
      acd61(23)=acd61(25)+acd61(23)+acd61(24)
      acd61(23)=acd61(16)*acd61(23)
      acd61(24)=-acd61(15)*acd61(19)
      acd61(25)=-acd61(6)*acd61(9)
      acd61(26)=-acd61(2)*acd61(12)
      acd61(24)=acd61(26)+acd61(24)+acd61(25)
      acd61(24)=acd61(11)*acd61(24)
      acd61(25)=-acd61(15)*acd61(17)
      acd61(26)=-acd61(10)*acd61(12)
      acd61(27)=-acd61(6)*acd61(1)
      acd61(25)=acd61(27)+acd61(25)+acd61(26)
      acd61(25)=acd61(7)*acd61(25)
      acd61(23)=acd61(25)+acd61(23)+acd61(24)
      acd61(23)=acd61(4)*acd61(23)
      acd61(24)=-acd61(10)*acd61(21)
      acd61(25)=-acd61(8)*acd61(17)
      acd61(26)=-acd61(6)*acd61(18)
      acd61(24)=acd61(26)+acd61(24)+acd61(25)
      acd61(24)=acd61(16)*acd61(24)
      acd61(25)=-acd61(15)*acd61(21)
      acd61(26)=-acd61(8)*acd61(12)
      acd61(27)=-acd61(6)*acd61(13)
      acd61(25)=acd61(27)+acd61(25)+acd61(26)
      acd61(25)=acd61(11)*acd61(25)
      acd61(24)=acd61(24)+acd61(25)
      acd61(24)=acd61(7)*acd61(24)
      acd61(25)=-acd61(8)*acd61(19)
      acd61(26)=-acd61(6)*acd61(20)
      acd61(27)=-acd61(2)*acd61(21)
      acd61(25)=acd61(27)+acd61(25)+acd61(26)
      acd61(25)=acd61(11)*acd61(16)*acd61(25)
      acd61(22)=acd61(22)+acd61(23)+acd61(25)+acd61(24)
      brack=4.0_ki*acd61(22)*acd61(5)
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd61h1
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
!---#[ subroutine reconstruct_d61:
   subroutine     reconstruct_d61(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group6
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group6), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_61:
      coeffs%coeffs_61%c0 = derivative(czip)
      coeffs%coeffs_61%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_61%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_61%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_61%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_61%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_61%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_61%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_61%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_61%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_61%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_61%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_61%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_61%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_61%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_61%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_61%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_61%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_61%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_61%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_61%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_61%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_61%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_61%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_61%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_61%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_61%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_61%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_61%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_61%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_61%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_61%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_61%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_61%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_61%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_61%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_61%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_61%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_61%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_61%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_61%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_61%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_61%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_61%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_61%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_61%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_61%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_61%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_61%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_61%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_61%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_61%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_61%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_61%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_61%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_61%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_61%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_61%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_61%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_61%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_61%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_61%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_61%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_61%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_61%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_61%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_61%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_61%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_61%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_61%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_61%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_61%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_61%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_61%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_61%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_61%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_61%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_61%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_61%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_61%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_61%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_61%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_61%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_61%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_61%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_61%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_61%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_61%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_61%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_61%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_61%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_61%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_61%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_61%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_61%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_61%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_61%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_61%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_61%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_61%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_61%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_61%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_61%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_61%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_61%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_61%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_61%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_61%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_61%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_61%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_61%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_61%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_61%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_61%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_61%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_61%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_61%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_61%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_61%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_61%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_61%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_61%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_61%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_61%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_61%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_61%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_61:
   end subroutine reconstruct_d61
!---#] subroutine reconstruct_d61:
end module     p0_gg_hhg_d61h1l1d
