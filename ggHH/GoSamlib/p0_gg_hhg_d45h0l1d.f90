module     p0_gg_hhg_d45h0l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d45h0l1d.f90
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
   public :: derivative , reconstruct_d45
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd45h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd45
      complex(ki) :: brack
      acd45(1)=dotproduct(k1,qshift)
      acd45(2)=dotproduct(k2,qshift)
      acd45(3)=dotproduct(qshift,spvak2k5)
      acd45(4)=abb45(36)
      acd45(5)=dotproduct(k5,qshift)
      acd45(6)=abb45(35)
      acd45(7)=dotproduct(qshift,qshift)
      acd45(8)=abb45(23)
      acd45(9)=dotproduct(qshift,spvak1k2)
      acd45(10)=abb45(14)
      acd45(11)=abb45(48)
      acd45(12)=dotproduct(qshift,spvak1k5)
      acd45(13)=abb45(33)
      acd45(14)=dotproduct(qshift,spvak2l3)
      acd45(15)=abb45(29)
      acd45(16)=dotproduct(qshift,spval3k5)
      acd45(17)=abb45(44)
      acd45(18)=abb45(16)
      acd45(19)=abb45(31)
      acd45(20)=abb45(19)
      acd45(21)=abb45(22)
      acd45(22)=abb45(32)
      acd45(23)=abb45(13)
      acd45(24)=dotproduct(l3,qshift)
      acd45(25)=abb45(40)
      acd45(26)=abb45(27)
      acd45(27)=abb45(30)
      acd45(28)=abb45(39)
      acd45(29)=abb45(26)
      acd45(30)=abb45(10)
      acd45(31)=abb45(37)
      acd45(32)=abb45(24)
      acd45(33)=abb45(46)
      acd45(34)=abb45(15)
      acd45(35)=abb45(50)
      acd45(36)=abb45(41)
      acd45(37)=abb45(18)
      acd45(38)=abb45(9)
      acd45(39)=abb45(47)
      acd45(40)=abb45(20)
      acd45(41)=abb45(25)
      acd45(42)=abb45(8)
      acd45(43)=dotproduct(qshift,spvak2k1)
      acd45(44)=abb45(11)
      acd45(45)=abb45(12)
      acd45(46)=abb45(17)
      acd45(47)=abb45(51)
      acd45(48)=abb45(42)
      acd45(49)=abb45(21)
      acd45(50)=acd45(24)*acd45(25)
      acd45(51)=acd45(16)*acd45(36)
      acd45(52)=-acd45(14)*acd45(35)
      acd45(53)=acd45(5)*acd45(28)
      acd45(54)=acd45(12)*acd45(34)
      acd45(55)=acd45(2)*acd45(19)
      acd45(56)=acd45(1)*acd45(8)
      acd45(57)=-acd45(7)*acd45(31)
      acd45(50)=acd45(57)+acd45(56)+acd45(55)+acd45(54)+acd45(53)+acd45(52)+acd&
      &45(51)-acd45(37)+acd45(50)
      acd45(50)=acd45(7)*acd45(50)
      acd45(51)=acd45(7)+acd45(5)
      acd45(51)=acd45(29)*acd45(51)
      acd45(52)=-acd45(43)*acd45(44)
      acd45(53)=-acd45(16)*acd45(42)
      acd45(54)=-acd45(14)*acd45(41)
      acd45(55)=-acd45(12)*acd45(40)
      acd45(56)=-acd45(2)*acd45(21)
      acd45(51)=acd45(56)+acd45(55)+acd45(54)+acd45(53)+acd45(45)+acd45(52)+acd&
      &45(51)
      acd45(51)=acd45(9)*acd45(51)
      acd45(52)=-acd45(16)*acd45(17)
      acd45(53)=-acd45(14)*acd45(15)
      acd45(54)=-acd45(5)*acd45(6)
      acd45(55)=-acd45(12)*acd45(13)
      acd45(56)=-acd45(2)*acd45(4)
      acd45(52)=acd45(56)+acd45(55)+acd45(54)+acd45(53)+acd45(18)+acd45(52)
      acd45(52)=acd45(1)*acd45(52)
      acd45(53)=-acd45(1)+acd45(24)
      acd45(53)=acd45(10)*acd45(53)
      acd45(54)=acd45(2)*acd45(20)
      acd45(55)=-acd45(7)*acd45(32)
      acd45(53)=acd45(55)+acd45(54)-acd45(38)+acd45(53)
      acd45(53)=acd45(9)*acd45(53)
      acd45(54)=-acd45(1)*acd45(11)
      acd45(55)=acd45(7)*acd45(33)
      acd45(53)=acd45(53)+acd45(55)+acd45(39)+acd45(54)
      acd45(53)=acd45(3)*acd45(53)
      acd45(54)=acd45(24)*acd45(27)
      acd45(55)=acd45(16)*acd45(48)
      acd45(56)=acd45(14)*acd45(47)
      acd45(57)=acd45(5)*acd45(30)
      acd45(58)=-acd45(24)*acd45(26)
      acd45(58)=acd45(46)+acd45(58)
      acd45(58)=acd45(12)*acd45(58)
      acd45(59)=-acd45(12)*acd45(22)
      acd45(59)=acd45(23)+acd45(59)
      acd45(59)=acd45(2)*acd45(59)
      acd45(50)=acd45(53)+acd45(51)+acd45(50)+acd45(52)+acd45(59)+acd45(58)+acd&
      &45(57)+acd45(56)+acd45(55)-acd45(49)+acd45(54)
      brack=acd45(50)*acd45(3)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd45h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd45
      complex(ki) :: brack
      acd45(1)=k1(iv1)
      acd45(2)=dotproduct(k2,qshift)
      acd45(3)=dotproduct(qshift,spvak2k5)
      acd45(4)=abb45(36)
      acd45(5)=dotproduct(k5,qshift)
      acd45(6)=abb45(35)
      acd45(7)=dotproduct(qshift,qshift)
      acd45(8)=abb45(23)
      acd45(9)=dotproduct(qshift,spvak1k2)
      acd45(10)=abb45(14)
      acd45(11)=abb45(48)
      acd45(12)=dotproduct(qshift,spvak1k5)
      acd45(13)=abb45(33)
      acd45(14)=dotproduct(qshift,spvak2l3)
      acd45(15)=abb45(29)
      acd45(16)=dotproduct(qshift,spval3k5)
      acd45(17)=abb45(44)
      acd45(18)=abb45(16)
      acd45(19)=k2(iv1)
      acd45(20)=dotproduct(k1,qshift)
      acd45(21)=abb45(31)
      acd45(22)=abb45(19)
      acd45(23)=abb45(22)
      acd45(24)=abb45(32)
      acd45(25)=abb45(13)
      acd45(26)=l3(iv1)
      acd45(27)=abb45(40)
      acd45(28)=abb45(27)
      acd45(29)=abb45(30)
      acd45(30)=k5(iv1)
      acd45(31)=abb45(39)
      acd45(32)=abb45(26)
      acd45(33)=abb45(10)
      acd45(34)=qshift(iv1)
      acd45(35)=dotproduct(l3,qshift)
      acd45(36)=abb45(37)
      acd45(37)=abb45(24)
      acd45(38)=abb45(46)
      acd45(39)=abb45(15)
      acd45(40)=abb45(50)
      acd45(41)=abb45(41)
      acd45(42)=abb45(18)
      acd45(43)=spvak2k5(iv1)
      acd45(44)=abb45(9)
      acd45(45)=abb45(47)
      acd45(46)=abb45(20)
      acd45(47)=abb45(25)
      acd45(48)=abb45(8)
      acd45(49)=dotproduct(qshift,spvak2k1)
      acd45(50)=abb45(11)
      acd45(51)=abb45(12)
      acd45(52)=abb45(17)
      acd45(53)=abb45(51)
      acd45(54)=abb45(42)
      acd45(55)=abb45(21)
      acd45(56)=spvak1k2(iv1)
      acd45(57)=spvak1k5(iv1)
      acd45(58)=spvak2l3(iv1)
      acd45(59)=spval3k5(iv1)
      acd45(60)=spvak2k1(iv1)
      acd45(61)=-acd45(59)*acd45(41)
      acd45(62)=acd45(58)*acd45(40)
      acd45(63)=-acd45(30)*acd45(31)
      acd45(64)=-acd45(26)*acd45(27)
      acd45(65)=-acd45(57)*acd45(39)
      acd45(66)=-acd45(19)*acd45(21)
      acd45(67)=-acd45(1)*acd45(8)
      acd45(68)=acd45(34)*acd45(36)
      acd45(69)=-acd45(56)*acd45(32)
      acd45(61)=acd45(69)+4.0_ki*acd45(68)+acd45(67)+acd45(66)+acd45(65)+acd45(&
      &64)+acd45(63)+acd45(61)+acd45(62)
      acd45(61)=acd45(7)*acd45(61)
      acd45(62)=acd45(35)*acd45(27)
      acd45(63)=acd45(16)*acd45(41)
      acd45(64)=acd45(14)*acd45(40)
      acd45(65)=acd45(5)*acd45(31)
      acd45(66)=acd45(12)*acd45(39)
      acd45(67)=acd45(2)*acd45(21)
      acd45(62)=acd45(62)+acd45(66)+acd45(67)+acd45(63)-acd45(64)+acd45(65)-acd&
      &45(42)
      acd45(63)=2.0_ki*acd45(34)
      acd45(64)=-acd45(62)*acd45(63)
      acd45(65)=acd45(50)*acd45(49)
      acd45(66)=acd45(16)*acd45(48)
      acd45(67)=acd45(14)*acd45(47)
      acd45(68)=acd45(5)*acd45(32)
      acd45(69)=acd45(12)*acd45(46)
      acd45(70)=acd45(2)*acd45(23)
      acd45(65)=acd45(67)-acd45(68)+acd45(69)+acd45(70)-acd45(51)+acd45(65)+acd&
      &45(66)
      acd45(66)=acd45(56)*acd45(65)
      acd45(67)=acd45(59)*acd45(17)
      acd45(68)=acd45(58)*acd45(15)
      acd45(69)=acd45(30)*acd45(6)
      acd45(70)=acd45(57)*acd45(13)
      acd45(71)=acd45(19)*acd45(4)
      acd45(72)=-acd45(8)*acd45(63)
      acd45(67)=acd45(72)+acd45(71)+acd45(70)+acd45(69)+acd45(67)+acd45(68)
      acd45(67)=acd45(20)*acd45(67)
      acd45(68)=-acd45(63)-acd45(30)
      acd45(68)=acd45(32)*acd45(68)
      acd45(69)=acd45(50)*acd45(60)
      acd45(70)=acd45(59)*acd45(48)
      acd45(71)=acd45(58)*acd45(47)
      acd45(72)=acd45(57)*acd45(46)
      acd45(73)=acd45(19)*acd45(23)
      acd45(68)=acd45(73)+acd45(72)+acd45(71)+acd45(69)+acd45(70)+acd45(68)
      acd45(68)=acd45(9)*acd45(68)
      acd45(69)=-acd45(20)+acd45(35)
      acd45(69)=acd45(10)*acd45(69)
      acd45(70)=acd45(2)*acd45(22)
      acd45(71)=acd45(7)*acd45(37)
      acd45(69)=-acd45(71)+acd45(70)-acd45(44)+acd45(69)
      acd45(70)=-acd45(56)*acd45(69)
      acd45(71)=acd45(1)-acd45(26)
      acd45(71)=acd45(10)*acd45(71)
      acd45(72)=-acd45(19)*acd45(22)
      acd45(73)=acd45(37)*acd45(63)
      acd45(71)=acd45(73)+acd45(72)+acd45(71)
      acd45(71)=acd45(9)*acd45(71)
      acd45(72)=acd45(1)*acd45(11)
      acd45(63)=-acd45(38)*acd45(63)
      acd45(63)=acd45(71)+acd45(72)+acd45(63)+acd45(70)
      acd45(63)=acd45(3)*acd45(63)
      acd45(70)=acd45(16)*acd45(17)
      acd45(71)=acd45(14)*acd45(15)
      acd45(72)=acd45(5)*acd45(6)
      acd45(70)=acd45(71)+acd45(70)+acd45(72)-acd45(18)
      acd45(71)=acd45(1)*acd45(70)
      acd45(72)=acd45(26)*acd45(28)
      acd45(73)=acd45(19)*acd45(24)
      acd45(74)=acd45(1)*acd45(13)
      acd45(72)=acd45(74)+acd45(72)+acd45(73)
      acd45(72)=acd45(12)*acd45(72)
      acd45(69)=-acd45(9)*acd45(69)
      acd45(73)=acd45(20)*acd45(11)
      acd45(74)=-acd45(7)*acd45(38)
      acd45(69)=acd45(69)+acd45(74)-acd45(45)+acd45(73)
      acd45(69)=acd45(43)*acd45(69)
      acd45(73)=acd45(57)*acd45(24)
      acd45(74)=acd45(1)*acd45(4)
      acd45(73)=acd45(73)+acd45(74)
      acd45(73)=acd45(2)*acd45(73)
      acd45(74)=acd45(35)*acd45(28)
      acd45(74)=acd45(74)-acd45(52)
      acd45(75)=acd45(57)*acd45(74)
      acd45(76)=-acd45(59)*acd45(54)
      acd45(77)=-acd45(58)*acd45(53)
      acd45(78)=-acd45(30)*acd45(33)
      acd45(79)=-acd45(26)*acd45(29)
      acd45(80)=-acd45(19)*acd45(25)
      acd45(61)=acd45(63)+2.0_ki*acd45(69)+acd45(68)+acd45(61)+acd45(67)+acd45(&
      &66)+acd45(64)+acd45(73)+acd45(72)+acd45(71)+acd45(80)+acd45(79)+acd45(78&
      &)+acd45(76)+acd45(77)+acd45(75)
      acd45(61)=acd45(3)*acd45(61)
      acd45(63)=-acd45(20)*acd45(8)
      acd45(64)=acd45(7)*acd45(36)
      acd45(62)=acd45(64)+acd45(63)-acd45(62)
      acd45(62)=acd45(7)*acd45(62)
      acd45(63)=-acd45(7)*acd45(32)
      acd45(63)=acd45(63)+acd45(65)
      acd45(63)=acd45(9)*acd45(63)
      acd45(64)=acd45(12)*acd45(13)
      acd45(65)=acd45(2)*acd45(4)
      acd45(64)=acd45(65)+acd45(64)+acd45(70)
      acd45(64)=acd45(20)*acd45(64)
      acd45(65)=-acd45(35)*acd45(29)
      acd45(66)=-acd45(16)*acd45(54)
      acd45(67)=-acd45(14)*acd45(53)
      acd45(68)=-acd45(5)*acd45(33)
      acd45(69)=acd45(12)*acd45(74)
      acd45(70)=acd45(12)*acd45(24)
      acd45(70)=-acd45(25)+acd45(70)
      acd45(70)=acd45(2)*acd45(70)
      acd45(62)=acd45(63)+acd45(62)+acd45(64)+acd45(70)+acd45(69)+acd45(68)+acd&
      &45(67)+acd45(66)+acd45(55)+acd45(65)
      acd45(62)=acd45(43)*acd45(62)
      brack=acd45(61)+acd45(62)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd45h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd45
      complex(ki) :: brack
      acd45(1)=d(iv1,iv2)
      acd45(2)=dotproduct(k1,qshift)
      acd45(3)=dotproduct(qshift,spvak2k5)
      acd45(4)=abb45(23)
      acd45(5)=dotproduct(k2,qshift)
      acd45(6)=abb45(31)
      acd45(7)=dotproduct(l3,qshift)
      acd45(8)=abb45(40)
      acd45(9)=dotproduct(k5,qshift)
      acd45(10)=abb45(39)
      acd45(11)=dotproduct(qshift,qshift)
      acd45(12)=abb45(37)
      acd45(13)=dotproduct(qshift,spvak1k2)
      acd45(14)=abb45(24)
      acd45(15)=abb45(46)
      acd45(16)=abb45(26)
      acd45(17)=dotproduct(qshift,spvak1k5)
      acd45(18)=abb45(15)
      acd45(19)=dotproduct(qshift,spvak2l3)
      acd45(20)=abb45(50)
      acd45(21)=dotproduct(qshift,spval3k5)
      acd45(22)=abb45(41)
      acd45(23)=abb45(18)
      acd45(24)=k1(iv1)
      acd45(25)=k2(iv2)
      acd45(26)=abb45(36)
      acd45(27)=k5(iv2)
      acd45(28)=abb45(35)
      acd45(29)=qshift(iv2)
      acd45(30)=spvak2k5(iv2)
      acd45(31)=abb45(14)
      acd45(32)=abb45(48)
      acd45(33)=abb45(33)
      acd45(34)=abb45(29)
      acd45(35)=abb45(44)
      acd45(36)=abb45(16)
      acd45(37)=spvak1k2(iv2)
      acd45(38)=spvak1k5(iv2)
      acd45(39)=spvak2l3(iv2)
      acd45(40)=spval3k5(iv2)
      acd45(41)=k1(iv2)
      acd45(42)=k2(iv1)
      acd45(43)=k5(iv1)
      acd45(44)=qshift(iv1)
      acd45(45)=spvak2k5(iv1)
      acd45(46)=spvak1k2(iv1)
      acd45(47)=spvak1k5(iv1)
      acd45(48)=spvak2l3(iv1)
      acd45(49)=spval3k5(iv1)
      acd45(50)=abb45(19)
      acd45(51)=abb45(22)
      acd45(52)=abb45(32)
      acd45(53)=abb45(13)
      acd45(54)=l3(iv1)
      acd45(55)=abb45(27)
      acd45(56)=abb45(30)
      acd45(57)=l3(iv2)
      acd45(58)=abb45(10)
      acd45(59)=abb45(9)
      acd45(60)=abb45(47)
      acd45(61)=abb45(20)
      acd45(62)=abb45(25)
      acd45(63)=abb45(8)
      acd45(64)=dotproduct(qshift,spvak2k1)
      acd45(65)=abb45(11)
      acd45(66)=abb45(12)
      acd45(67)=abb45(17)
      acd45(68)=abb45(51)
      acd45(69)=abb45(42)
      acd45(70)=spvak2k1(iv2)
      acd45(71)=spvak2k1(iv1)
      acd45(72)=acd45(22)*acd45(49)
      acd45(73)=acd45(20)*acd45(48)
      acd45(74)=acd45(10)*acd45(43)
      acd45(75)=acd45(8)*acd45(54)
      acd45(76)=acd45(47)*acd45(18)
      acd45(77)=acd45(42)*acd45(6)
      acd45(78)=acd45(24)*acd45(4)
      acd45(79)=4.0_ki*acd45(12)
      acd45(80)=acd45(79)*acd45(44)
      acd45(72)=-acd45(73)+acd45(74)+acd45(75)+acd45(76)+acd45(77)+acd45(72)+ac&
      &d45(78)-acd45(80)
      acd45(73)=acd45(11)*acd45(72)
      acd45(74)=acd45(21)*acd45(22)
      acd45(75)=acd45(19)*acd45(20)
      acd45(76)=acd45(9)*acd45(10)
      acd45(77)=acd45(7)*acd45(8)
      acd45(78)=acd45(17)*acd45(18)
      acd45(80)=acd45(5)*acd45(6)
      acd45(81)=acd45(2)*acd45(4)
      acd45(74)=acd45(81)-acd45(23)+acd45(77)+acd45(76)+acd45(74)-acd45(75)+acd&
      &45(78)+acd45(80)
      acd45(75)=2.0_ki*acd45(44)
      acd45(76)=acd45(74)*acd45(75)
      acd45(77)=acd45(9)+acd45(11)
      acd45(77)=acd45(16)*acd45(77)
      acd45(78)=acd45(65)*acd45(64)
      acd45(80)=acd45(21)*acd45(63)
      acd45(81)=acd45(19)*acd45(62)
      acd45(82)=acd45(17)*acd45(61)
      acd45(83)=acd45(5)*acd45(51)
      acd45(77)=-acd45(77)+acd45(82)+acd45(83)+acd45(78)+acd45(80)+acd45(81)-ac&
      &d45(66)
      acd45(78)=-acd45(46)*acd45(77)
      acd45(80)=acd45(43)+acd45(75)
      acd45(80)=acd45(16)*acd45(80)
      acd45(81)=acd45(65)*acd45(71)
      acd45(82)=acd45(49)*acd45(63)
      acd45(83)=acd45(48)*acd45(62)
      acd45(84)=acd45(47)*acd45(61)
      acd45(85)=acd45(42)*acd45(51)
      acd45(80)=-acd45(80)+acd45(81)+acd45(82)+acd45(83)+acd45(84)+acd45(85)
      acd45(81)=-acd45(13)*acd45(80)
      acd45(82)=acd45(21)*acd45(35)
      acd45(83)=acd45(19)*acd45(34)
      acd45(84)=acd45(9)*acd45(28)
      acd45(85)=acd45(17)*acd45(33)
      acd45(86)=acd45(5)*acd45(26)
      acd45(82)=-acd45(36)+acd45(82)+acd45(85)+acd45(86)+acd45(83)+acd45(84)
      acd45(83)=-acd45(24)*acd45(82)
      acd45(84)=acd45(49)*acd45(35)
      acd45(85)=acd45(48)*acd45(34)
      acd45(86)=acd45(43)*acd45(28)
      acd45(87)=acd45(47)*acd45(33)
      acd45(88)=acd45(42)*acd45(26)
      acd45(84)=acd45(88)+acd45(84)+acd45(85)+acd45(86)+acd45(87)
      acd45(85)=-acd45(2)*acd45(84)
      acd45(86)=acd45(7)-acd45(2)
      acd45(86)=acd45(31)*acd45(86)
      acd45(87)=acd45(5)*acd45(50)
      acd45(88)=acd45(11)*acd45(14)
      acd45(86)=-acd45(59)-acd45(88)+acd45(86)+acd45(87)
      acd45(87)=acd45(13)*acd45(86)
      acd45(88)=-acd45(2)*acd45(32)
      acd45(89)=acd45(11)*acd45(15)
      acd45(87)=acd45(87)+acd45(89)+acd45(60)+acd45(88)
      acd45(88)=2.0_ki*acd45(45)
      acd45(87)=acd45(87)*acd45(88)
      acd45(89)=acd45(7)*acd45(55)
      acd45(90)=acd45(5)*acd45(52)
      acd45(89)=acd45(90)+acd45(89)-acd45(67)
      acd45(90)=-acd45(47)*acd45(89)
      acd45(91)=acd45(54)*acd45(55)
      acd45(92)=acd45(42)*acd45(52)
      acd45(91)=acd45(91)+acd45(92)
      acd45(92)=-acd45(17)*acd45(91)
      acd45(93)=acd45(54)*acd45(56)
      acd45(94)=acd45(49)*acd45(69)
      acd45(95)=acd45(48)*acd45(68)
      acd45(96)=acd45(43)*acd45(58)
      acd45(97)=acd45(42)*acd45(53)
      acd45(73)=acd45(87)+acd45(81)+acd45(78)+acd45(73)+acd45(76)+acd45(85)+acd&
      &45(83)+acd45(92)+acd45(97)+acd45(96)+acd45(95)+acd45(93)+acd45(94)+acd45&
      &(90)
      acd45(73)=acd45(30)*acd45(73)
      acd45(76)=2.0_ki*acd45(29)
      acd45(72)=acd45(72)*acd45(76)
      acd45(78)=2.0_ki*acd45(1)
      acd45(81)=acd45(78)*acd45(74)
      acd45(83)=acd45(22)*acd45(40)
      acd45(85)=acd45(20)*acd45(39)
      acd45(87)=acd45(10)*acd45(27)
      acd45(90)=acd45(8)*acd45(57)
      acd45(92)=acd45(38)*acd45(18)
      acd45(93)=acd45(25)*acd45(6)
      acd45(94)=acd45(41)*acd45(4)
      acd45(83)=acd45(83)+acd45(92)+acd45(93)-acd45(85)+acd45(87)+acd45(90)+acd&
      &45(94)
      acd45(85)=acd45(83)*acd45(75)
      acd45(87)=-acd45(27)-acd45(76)
      acd45(87)=acd45(16)*acd45(87)
      acd45(90)=acd45(65)*acd45(70)
      acd45(92)=acd45(40)*acd45(63)
      acd45(93)=acd45(39)*acd45(62)
      acd45(94)=acd45(38)*acd45(61)
      acd45(95)=acd45(25)*acd45(51)
      acd45(87)=acd45(90)+acd45(95)+acd45(92)+acd45(93)+acd45(94)+acd45(87)
      acd45(90)=-acd45(46)*acd45(87)
      acd45(80)=-acd45(37)*acd45(80)
      acd45(84)=-acd45(41)*acd45(84)
      acd45(92)=acd45(40)*acd45(35)
      acd45(93)=acd45(39)*acd45(34)
      acd45(94)=acd45(27)*acd45(28)
      acd45(95)=acd45(38)*acd45(33)
      acd45(96)=acd45(25)*acd45(26)
      acd45(92)=acd45(92)+acd45(95)+acd45(96)+acd45(93)+acd45(94)
      acd45(93)=-acd45(24)*acd45(92)
      acd45(94)=acd45(37)*acd45(86)
      acd45(95)=acd45(41)-acd45(57)
      acd45(95)=acd45(95)*acd45(31)
      acd45(96)=acd45(25)*acd45(50)
      acd45(97)=acd45(76)*acd45(14)
      acd45(95)=acd45(95)-acd45(96)+acd45(97)
      acd45(96)=-acd45(13)*acd45(95)
      acd45(97)=-acd45(41)*acd45(32)
      acd45(98)=acd45(15)*acd45(76)
      acd45(94)=acd45(96)+acd45(94)+acd45(97)+acd45(98)
      acd45(88)=acd45(94)*acd45(88)
      acd45(86)=acd45(46)*acd45(86)
      acd45(94)=acd45(54)-acd45(24)
      acd45(94)=acd45(31)*acd45(94)
      acd45(96)=acd45(42)*acd45(50)
      acd45(97)=acd45(75)*acd45(14)
      acd45(94)=-acd45(97)+acd45(94)+acd45(96)
      acd45(96)=acd45(13)*acd45(94)
      acd45(97)=-acd45(24)*acd45(32)
      acd45(75)=acd45(15)*acd45(75)
      acd45(75)=acd45(96)+acd45(86)+acd45(97)+acd45(75)
      acd45(75)=acd45(30)*acd45(75)
      acd45(86)=-acd45(46)*acd45(95)
      acd45(94)=acd45(37)*acd45(94)
      acd45(95)=-acd45(13)*acd45(14)
      acd45(95)=acd45(95)+acd45(15)
      acd45(78)=acd45(78)*acd45(95)
      acd45(78)=acd45(94)+acd45(86)+acd45(78)
      acd45(78)=acd45(3)*acd45(78)
      acd45(86)=acd45(57)*acd45(55)
      acd45(94)=acd45(25)*acd45(52)
      acd45(86)=acd45(86)+acd45(94)
      acd45(94)=-acd45(47)*acd45(86)
      acd45(95)=-acd45(11)*acd45(79)
      acd45(96)=2.0_ki*acd45(16)
      acd45(96)=acd45(13)*acd45(96)
      acd45(95)=acd45(96)+acd45(95)
      acd45(95)=acd45(1)*acd45(95)
      acd45(91)=-acd45(38)*acd45(91)
      acd45(72)=acd45(78)+2.0_ki*acd45(75)+acd45(88)+acd45(80)+acd45(90)+acd45(&
      &72)+acd45(85)+acd45(93)+acd45(84)+acd45(91)+acd45(81)+acd45(95)+acd45(94)
      acd45(72)=acd45(3)*acd45(72)
      acd45(74)=acd45(74)*acd45(76)
      acd45(75)=-acd45(29)*acd45(79)
      acd45(75)=acd45(75)+acd45(83)
      acd45(75)=acd45(11)*acd45(75)
      acd45(76)=-acd45(37)*acd45(77)
      acd45(77)=-acd45(13)*acd45(87)
      acd45(78)=-acd45(41)*acd45(82)
      acd45(79)=-acd45(2)*acd45(92)
      acd45(80)=-acd45(38)*acd45(89)
      acd45(81)=-acd45(17)*acd45(86)
      acd45(82)=acd45(57)*acd45(56)
      acd45(83)=acd45(40)*acd45(69)
      acd45(84)=acd45(39)*acd45(68)
      acd45(85)=acd45(27)*acd45(58)
      acd45(86)=acd45(25)*acd45(53)
      acd45(74)=acd45(77)+acd45(76)+acd45(75)+acd45(74)+acd45(79)+acd45(78)+acd&
      &45(81)+acd45(86)+acd45(85)+acd45(84)+acd45(82)+acd45(83)+acd45(80)
      acd45(74)=acd45(45)*acd45(74)
      brack=acd45(72)+acd45(73)+acd45(74)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd45h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(108) :: acd45
      complex(ki) :: brack
      acd45(1)=d(iv1,iv2)
      acd45(2)=k1(iv3)
      acd45(3)=dotproduct(qshift,spvak2k5)
      acd45(4)=abb45(23)
      acd45(5)=k2(iv3)
      acd45(6)=abb45(31)
      acd45(7)=l3(iv3)
      acd45(8)=abb45(40)
      acd45(9)=k5(iv3)
      acd45(10)=abb45(39)
      acd45(11)=qshift(iv3)
      acd45(12)=abb45(37)
      acd45(13)=spvak2k5(iv3)
      acd45(14)=dotproduct(k1,qshift)
      acd45(15)=dotproduct(k2,qshift)
      acd45(16)=dotproduct(l3,qshift)
      acd45(17)=dotproduct(k5,qshift)
      acd45(18)=dotproduct(qshift,qshift)
      acd45(19)=dotproduct(qshift,spvak1k2)
      acd45(20)=abb45(24)
      acd45(21)=abb45(46)
      acd45(22)=abb45(26)
      acd45(23)=dotproduct(qshift,spvak1k5)
      acd45(24)=abb45(15)
      acd45(25)=dotproduct(qshift,spvak2l3)
      acd45(26)=abb45(50)
      acd45(27)=dotproduct(qshift,spval3k5)
      acd45(28)=abb45(41)
      acd45(29)=abb45(18)
      acd45(30)=spvak1k2(iv3)
      acd45(31)=spvak1k5(iv3)
      acd45(32)=spvak2l3(iv3)
      acd45(33)=spval3k5(iv3)
      acd45(34)=d(iv1,iv3)
      acd45(35)=k1(iv2)
      acd45(36)=k2(iv2)
      acd45(37)=l3(iv2)
      acd45(38)=k5(iv2)
      acd45(39)=qshift(iv2)
      acd45(40)=spvak2k5(iv2)
      acd45(41)=spvak1k2(iv2)
      acd45(42)=spvak1k5(iv2)
      acd45(43)=spvak2l3(iv2)
      acd45(44)=spval3k5(iv2)
      acd45(45)=d(iv2,iv3)
      acd45(46)=k1(iv1)
      acd45(47)=k2(iv1)
      acd45(48)=l3(iv1)
      acd45(49)=k5(iv1)
      acd45(50)=qshift(iv1)
      acd45(51)=spvak2k5(iv1)
      acd45(52)=spvak1k2(iv1)
      acd45(53)=spvak1k5(iv1)
      acd45(54)=spvak2l3(iv1)
      acd45(55)=spval3k5(iv1)
      acd45(56)=abb45(36)
      acd45(57)=abb45(35)
      acd45(58)=abb45(14)
      acd45(59)=abb45(48)
      acd45(60)=abb45(33)
      acd45(61)=abb45(29)
      acd45(62)=abb45(44)
      acd45(63)=abb45(19)
      acd45(64)=abb45(22)
      acd45(65)=abb45(32)
      acd45(66)=abb45(27)
      acd45(67)=abb45(9)
      acd45(68)=abb45(20)
      acd45(69)=abb45(25)
      acd45(70)=abb45(8)
      acd45(71)=spvak2k1(iv3)
      acd45(72)=abb45(11)
      acd45(73)=spvak2k1(iv2)
      acd45(74)=spvak2k1(iv1)
      acd45(75)=acd45(12)*acd45(18)
      acd45(76)=acd45(28)*acd45(27)
      acd45(77)=acd45(26)*acd45(25)
      acd45(78)=acd45(24)*acd45(23)
      acd45(79)=acd45(10)*acd45(17)
      acd45(80)=acd45(8)*acd45(16)
      acd45(81)=acd45(6)*acd45(15)
      acd45(82)=acd45(4)*acd45(14)
      acd45(83)=acd45(19)*acd45(22)
      acd45(75)=-acd45(29)+acd45(83)+acd45(82)+acd45(81)+acd45(80)+acd45(79)+ac&
      &d45(78)-2.0_ki*acd45(75)+acd45(76)-acd45(77)
      acd45(75)=2.0_ki*acd45(75)
      acd45(76)=-acd45(1)*acd45(75)
      acd45(77)=acd45(28)*acd45(44)
      acd45(78)=acd45(26)*acd45(43)
      acd45(79)=acd45(24)*acd45(42)
      acd45(80)=acd45(10)*acd45(38)
      acd45(81)=acd45(8)*acd45(37)
      acd45(82)=acd45(6)*acd45(36)
      acd45(83)=acd45(35)*acd45(4)
      acd45(77)=acd45(81)+acd45(80)+acd45(79)+acd45(77)-acd45(78)+acd45(82)+acd&
      &45(83)
      acd45(78)=2.0_ki*acd45(50)
      acd45(79)=-acd45(77)*acd45(78)
      acd45(80)=acd45(28)*acd45(55)
      acd45(81)=acd45(26)*acd45(54)
      acd45(82)=acd45(24)*acd45(53)
      acd45(83)=acd45(10)*acd45(49)
      acd45(84)=acd45(8)*acd45(48)
      acd45(85)=acd45(6)*acd45(47)
      acd45(86)=acd45(46)*acd45(4)
      acd45(80)=acd45(86)+acd45(85)+acd45(84)+acd45(83)+acd45(82)+acd45(80)-acd&
      &45(81)
      acd45(81)=4.0_ki*acd45(12)
      acd45(82)=acd45(81)*acd45(50)
      acd45(82)=acd45(82)-acd45(80)
      acd45(83)=2.0_ki*acd45(39)
      acd45(84)=acd45(82)*acd45(83)
      acd45(85)=acd45(83)+acd45(38)
      acd45(85)=acd45(85)*acd45(22)
      acd45(86)=acd45(72)*acd45(73)
      acd45(87)=acd45(44)*acd45(70)
      acd45(88)=acd45(43)*acd45(69)
      acd45(89)=acd45(42)*acd45(68)
      acd45(90)=acd45(36)*acd45(64)
      acd45(85)=-acd45(86)-acd45(87)-acd45(88)-acd45(89)+acd45(85)-acd45(90)
      acd45(86)=-acd45(52)*acd45(85)
      acd45(87)=-acd45(49)-acd45(78)
      acd45(87)=acd45(22)*acd45(87)
      acd45(88)=acd45(72)*acd45(74)
      acd45(89)=acd45(55)*acd45(70)
      acd45(90)=acd45(54)*acd45(69)
      acd45(91)=acd45(53)*acd45(68)
      acd45(92)=acd45(47)*acd45(64)
      acd45(87)=acd45(88)+acd45(92)+acd45(89)+acd45(90)+acd45(91)+acd45(87)
      acd45(88)=acd45(41)*acd45(87)
      acd45(89)=acd45(44)*acd45(62)
      acd45(90)=acd45(43)*acd45(61)
      acd45(91)=acd45(38)*acd45(57)
      acd45(92)=acd45(42)*acd45(60)
      acd45(93)=acd45(36)*acd45(56)
      acd45(89)=acd45(93)+acd45(89)+acd45(90)+acd45(91)+acd45(92)
      acd45(90)=acd45(46)*acd45(89)
      acd45(91)=acd45(55)*acd45(62)
      acd45(92)=acd45(54)*acd45(61)
      acd45(93)=acd45(49)*acd45(57)
      acd45(94)=acd45(53)*acd45(60)
      acd45(95)=acd45(47)*acd45(56)
      acd45(91)=acd45(95)+acd45(91)+acd45(92)+acd45(93)+acd45(94)
      acd45(92)=acd45(35)*acd45(91)
      acd45(93)=acd45(14)-acd45(16)
      acd45(93)=acd45(93)*acd45(58)
      acd45(94)=acd45(63)*acd45(15)
      acd45(95)=acd45(20)*acd45(18)
      acd45(93)=acd45(93)+acd45(67)-acd45(94)+acd45(95)
      acd45(94)=acd45(41)*acd45(93)
      acd45(95)=acd45(19)*acd45(20)
      acd45(95)=acd45(95)-acd45(21)
      acd45(96)=acd45(95)*acd45(83)
      acd45(97)=acd45(35)-acd45(37)
      acd45(98)=acd45(58)*acd45(19)
      acd45(99)=acd45(97)*acd45(98)
      acd45(100)=acd45(35)*acd45(59)
      acd45(101)=acd45(19)*acd45(63)
      acd45(102)=-acd45(36)*acd45(101)
      acd45(94)=acd45(94)+acd45(99)+acd45(96)+acd45(100)+acd45(102)
      acd45(96)=2.0_ki*acd45(51)
      acd45(94)=acd45(94)*acd45(96)
      acd45(99)=acd45(52)*acd45(93)
      acd45(100)=acd45(95)*acd45(78)
      acd45(102)=acd45(46)-acd45(48)
      acd45(103)=acd45(102)*acd45(98)
      acd45(104)=acd45(46)*acd45(59)
      acd45(105)=-acd45(47)*acd45(101)
      acd45(99)=acd45(99)+acd45(103)+acd45(100)+acd45(104)+acd45(105)
      acd45(99)=acd45(40)*acd45(99)
      acd45(100)=acd45(36)*acd45(63)
      acd45(103)=acd45(83)*acd45(20)
      acd45(97)=acd45(97)*acd45(58)
      acd45(97)=-acd45(97)+acd45(100)-acd45(103)
      acd45(100)=-acd45(52)*acd45(97)
      acd45(103)=acd45(47)*acd45(63)
      acd45(102)=acd45(102)*acd45(58)
      acd45(104)=acd45(78)*acd45(20)
      acd45(102)=-acd45(104)+acd45(103)-acd45(102)
      acd45(103)=-acd45(41)*acd45(102)
      acd45(104)=2.0_ki*acd45(95)
      acd45(105)=acd45(1)*acd45(104)
      acd45(100)=acd45(103)+acd45(105)+acd45(100)
      acd45(103)=2.0_ki*acd45(3)
      acd45(100)=acd45(100)*acd45(103)
      acd45(105)=acd45(37)*acd45(66)
      acd45(106)=acd45(36)*acd45(65)
      acd45(105)=acd45(105)+acd45(106)
      acd45(106)=acd45(53)*acd45(105)
      acd45(107)=acd45(48)*acd45(66)
      acd45(108)=acd45(47)*acd45(65)
      acd45(107)=acd45(107)+acd45(108)
      acd45(108)=acd45(42)*acd45(107)
      acd45(76)=2.0_ki*acd45(99)+acd45(94)+acd45(100)+acd45(88)+acd45(86)+acd45&
      &(84)+acd45(79)+acd45(76)+acd45(92)+acd45(90)+acd45(108)+acd45(106)
      acd45(76)=acd45(13)*acd45(76)
      acd45(79)=-acd45(34)*acd45(75)
      acd45(84)=acd45(28)*acd45(33)
      acd45(86)=acd45(26)*acd45(32)
      acd45(88)=acd45(24)*acd45(31)
      acd45(90)=acd45(10)*acd45(9)
      acd45(92)=acd45(8)*acd45(7)
      acd45(94)=acd45(5)*acd45(6)
      acd45(99)=acd45(2)*acd45(4)
      acd45(84)=acd45(99)+acd45(94)+acd45(92)+acd45(90)+acd45(88)+acd45(84)-acd&
      &45(86)
      acd45(78)=-acd45(84)*acd45(78)
      acd45(86)=2.0_ki*acd45(11)
      acd45(82)=acd45(82)*acd45(86)
      acd45(88)=acd45(86)+acd45(9)
      acd45(88)=acd45(88)*acd45(22)
      acd45(90)=acd45(72)*acd45(71)
      acd45(92)=acd45(33)*acd45(70)
      acd45(94)=acd45(32)*acd45(69)
      acd45(99)=acd45(31)*acd45(68)
      acd45(100)=acd45(5)*acd45(64)
      acd45(88)=-acd45(90)-acd45(92)-acd45(94)-acd45(99)+acd45(88)-acd45(100)
      acd45(90)=-acd45(52)*acd45(88)
      acd45(87)=acd45(30)*acd45(87)
      acd45(92)=acd45(33)*acd45(62)
      acd45(94)=acd45(32)*acd45(61)
      acd45(99)=acd45(9)*acd45(57)
      acd45(100)=acd45(31)*acd45(60)
      acd45(106)=acd45(5)*acd45(56)
      acd45(92)=acd45(92)+acd45(100)+acd45(106)+acd45(94)+acd45(99)
      acd45(94)=acd45(46)*acd45(92)
      acd45(91)=acd45(2)*acd45(91)
      acd45(93)=acd45(30)*acd45(93)
      acd45(95)=acd45(95)*acd45(86)
      acd45(99)=acd45(2)-acd45(7)
      acd45(98)=acd45(99)*acd45(98)
      acd45(100)=acd45(2)*acd45(59)
      acd45(101)=-acd45(5)*acd45(101)
      acd45(93)=acd45(93)+acd45(98)+acd45(95)+acd45(100)+acd45(101)
      acd45(93)=acd45(93)*acd45(96)
      acd45(95)=acd45(86)*acd45(20)
      acd45(96)=acd45(99)*acd45(58)
      acd45(98)=acd45(5)*acd45(63)
      acd45(95)=-acd45(98)+acd45(95)+acd45(96)
      acd45(96)=acd45(52)*acd45(95)
      acd45(98)=-acd45(30)*acd45(102)
      acd45(99)=acd45(34)*acd45(104)
      acd45(96)=acd45(98)+acd45(99)+acd45(96)
      acd45(96)=acd45(96)*acd45(103)
      acd45(98)=acd45(7)*acd45(66)
      acd45(99)=acd45(5)*acd45(65)
      acd45(98)=acd45(98)+acd45(99)
      acd45(99)=acd45(53)*acd45(98)
      acd45(100)=acd45(31)*acd45(107)
      acd45(78)=acd45(93)+acd45(96)+acd45(87)+acd45(90)+acd45(82)+acd45(78)+acd&
      &45(79)+acd45(91)+acd45(94)+acd45(100)+acd45(99)
      acd45(78)=acd45(40)*acd45(78)
      acd45(75)=-acd45(45)*acd45(75)
      acd45(79)=-acd45(84)*acd45(83)
      acd45(82)=acd45(39)*acd45(81)
      acd45(82)=acd45(82)-acd45(77)
      acd45(82)=acd45(82)*acd45(86)
      acd45(83)=-acd45(41)*acd45(88)
      acd45(85)=-acd45(30)*acd45(85)
      acd45(86)=acd45(35)*acd45(92)
      acd45(87)=acd45(2)*acd45(89)
      acd45(88)=acd45(41)*acd45(95)
      acd45(89)=-acd45(30)*acd45(97)
      acd45(90)=acd45(45)*acd45(104)
      acd45(88)=acd45(89)+acd45(90)+acd45(88)
      acd45(88)=acd45(88)*acd45(103)
      acd45(89)=acd45(42)*acd45(98)
      acd45(90)=acd45(31)*acd45(105)
      acd45(75)=acd45(88)+acd45(85)+acd45(83)+acd45(82)+acd45(79)+acd45(75)+acd&
      &45(87)+acd45(86)+acd45(90)+acd45(89)
      acd45(75)=acd45(51)*acd45(75)
      acd45(79)=-acd45(45)*acd45(80)
      acd45(77)=-acd45(34)*acd45(77)
      acd45(80)=-acd45(1)*acd45(84)
      acd45(82)=acd45(52)*acd45(45)
      acd45(83)=acd45(41)*acd45(34)
      acd45(84)=acd45(30)*acd45(1)
      acd45(82)=acd45(84)+acd45(82)+acd45(83)
      acd45(83)=acd45(3)*acd45(20)
      acd45(83)=acd45(83)-acd45(22)
      acd45(82)=acd45(82)*acd45(83)
      acd45(83)=acd45(50)*acd45(45)
      acd45(84)=acd45(39)*acd45(34)
      acd45(85)=acd45(11)*acd45(1)
      acd45(83)=acd45(85)+acd45(84)+acd45(83)
      acd45(81)=acd45(81)*acd45(83)
      acd45(77)=acd45(80)+acd45(79)+acd45(77)+acd45(81)+acd45(82)
      acd45(77)=acd45(77)*acd45(103)
      brack=acd45(75)+acd45(76)+acd45(77)+acd45(78)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd45h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(90) :: acd45
      complex(ki) :: brack
      acd45(1)=d(iv1,iv2)
      acd45(2)=d(iv3,iv4)
      acd45(3)=dotproduct(qshift,spvak2k5)
      acd45(4)=abb45(37)
      acd45(5)=k1(iv3)
      acd45(6)=spvak2k5(iv4)
      acd45(7)=abb45(23)
      acd45(8)=k1(iv4)
      acd45(9)=spvak2k5(iv3)
      acd45(10)=k2(iv3)
      acd45(11)=abb45(31)
      acd45(12)=k2(iv4)
      acd45(13)=l3(iv3)
      acd45(14)=abb45(40)
      acd45(15)=l3(iv4)
      acd45(16)=k5(iv3)
      acd45(17)=abb45(39)
      acd45(18)=k5(iv4)
      acd45(19)=qshift(iv3)
      acd45(20)=qshift(iv4)
      acd45(21)=dotproduct(qshift,spvak1k2)
      acd45(22)=abb45(24)
      acd45(23)=abb45(46)
      acd45(24)=spvak1k2(iv4)
      acd45(25)=abb45(26)
      acd45(26)=spvak1k5(iv4)
      acd45(27)=abb45(15)
      acd45(28)=spvak2l3(iv4)
      acd45(29)=abb45(50)
      acd45(30)=spval3k5(iv4)
      acd45(31)=abb45(41)
      acd45(32)=spvak1k2(iv3)
      acd45(33)=spvak1k5(iv3)
      acd45(34)=spvak2l3(iv3)
      acd45(35)=spval3k5(iv3)
      acd45(36)=d(iv1,iv3)
      acd45(37)=d(iv2,iv4)
      acd45(38)=k1(iv2)
      acd45(39)=spvak2k5(iv2)
      acd45(40)=k2(iv2)
      acd45(41)=l3(iv2)
      acd45(42)=k5(iv2)
      acd45(43)=qshift(iv2)
      acd45(44)=spvak1k2(iv2)
      acd45(45)=spvak1k5(iv2)
      acd45(46)=spvak2l3(iv2)
      acd45(47)=spval3k5(iv2)
      acd45(48)=d(iv1,iv4)
      acd45(49)=d(iv2,iv3)
      acd45(50)=k1(iv1)
      acd45(51)=spvak2k5(iv1)
      acd45(52)=k2(iv1)
      acd45(53)=l3(iv1)
      acd45(54)=k5(iv1)
      acd45(55)=qshift(iv1)
      acd45(56)=spvak1k2(iv1)
      acd45(57)=spvak1k5(iv1)
      acd45(58)=spvak2l3(iv1)
      acd45(59)=spval3k5(iv1)
      acd45(60)=abb45(14)
      acd45(61)=abb45(19)
      acd45(62)=acd45(1)*acd45(9)
      acd45(63)=acd45(36)*acd45(39)
      acd45(64)=acd45(49)*acd45(51)
      acd45(62)=acd45(64)+acd45(62)+acd45(63)
      acd45(63)=acd45(62)*acd45(24)
      acd45(64)=acd45(2)*acd45(51)
      acd45(65)=acd45(36)*acd45(6)
      acd45(66)=acd45(48)*acd45(9)
      acd45(65)=acd45(66)+acd45(64)+acd45(65)
      acd45(66)=acd45(65)*acd45(44)
      acd45(67)=acd45(2)*acd45(39)
      acd45(68)=acd45(37)*acd45(9)
      acd45(69)=acd45(49)*acd45(6)
      acd45(67)=acd45(69)+acd45(67)+acd45(68)
      acd45(68)=acd45(67)*acd45(56)
      acd45(69)=acd45(37)*acd45(51)
      acd45(70)=acd45(48)*acd45(39)
      acd45(69)=acd45(69)+acd45(70)
      acd45(70)=acd45(1)*acd45(6)
      acd45(70)=acd45(69)+acd45(70)
      acd45(71)=acd45(70)*acd45(32)
      acd45(63)=acd45(71)+acd45(68)+acd45(63)+acd45(66)
      acd45(66)=-acd45(22)*acd45(63)
      acd45(68)=-acd45(2)*acd45(1)
      acd45(71)=-acd45(37)*acd45(36)
      acd45(72)=-acd45(49)*acd45(48)
      acd45(68)=acd45(72)+acd45(68)+acd45(71)
      acd45(71)=2.0_ki*acd45(4)
      acd45(68)=acd45(68)*acd45(71)
      acd45(66)=acd45(68)+acd45(66)
      acd45(66)=acd45(3)*acd45(66)
      acd45(68)=-acd45(67)*acd45(71)
      acd45(72)=acd45(24)*acd45(39)
      acd45(73)=acd45(44)*acd45(6)
      acd45(74)=acd45(72)+acd45(73)
      acd45(75)=acd45(22)*acd45(9)
      acd45(76)=-acd45(75)*acd45(74)
      acd45(77)=acd45(32)*acd45(39)
      acd45(78)=acd45(22)*acd45(6)
      acd45(79)=-acd45(78)*acd45(77)
      acd45(68)=acd45(68)+acd45(79)+acd45(76)
      acd45(68)=acd45(55)*acd45(68)
      acd45(76)=acd45(44)*acd45(51)
      acd45(79)=acd45(56)*acd45(39)
      acd45(76)=acd45(76)+acd45(79)
      acd45(79)=-acd45(78)*acd45(76)
      acd45(80)=-acd45(70)*acd45(71)
      acd45(81)=acd45(72)*acd45(51)
      acd45(82)=-acd45(22)*acd45(81)
      acd45(79)=acd45(80)+acd45(82)+acd45(79)
      acd45(79)=acd45(19)*acd45(79)
      acd45(80)=-acd45(62)*acd45(71)
      acd45(82)=-acd45(75)*acd45(76)
      acd45(83)=acd45(77)*acd45(51)
      acd45(84)=-acd45(22)*acd45(83)
      acd45(80)=acd45(80)+acd45(84)+acd45(82)
      acd45(80)=acd45(20)*acd45(80)
      acd45(82)=-acd45(78)*acd45(62)
      acd45(84)=-acd45(75)*acd45(69)
      acd45(64)=acd45(64)*acd45(39)
      acd45(85)=-acd45(22)*acd45(64)
      acd45(82)=acd45(85)+acd45(82)+acd45(84)
      acd45(82)=acd45(21)*acd45(82)
      acd45(84)=acd45(6)*acd45(62)
      acd45(69)=acd45(9)*acd45(69)
      acd45(64)=acd45(64)+acd45(84)+acd45(69)
      acd45(64)=acd45(23)*acd45(64)
      acd45(69)=-acd45(65)*acd45(71)
      acd45(71)=acd45(56)*acd45(6)
      acd45(84)=-acd45(24)*acd45(51)
      acd45(84)=-acd45(71)+acd45(84)
      acd45(75)=acd45(75)*acd45(84)
      acd45(78)=-acd45(32)*acd45(51)*acd45(78)
      acd45(69)=acd45(69)+acd45(78)+acd45(75)
      acd45(69)=acd45(43)*acd45(69)
      acd45(64)=acd45(80)+acd45(82)+acd45(64)+acd45(69)+acd45(68)+acd45(66)+acd&
      &45(79)
      acd45(63)=acd45(25)*acd45(63)
      acd45(66)=acd45(54)*acd45(17)
      acd45(68)=acd45(57)*acd45(27)
      acd45(69)=-acd45(58)*acd45(29)
      acd45(75)=acd45(59)*acd45(31)
      acd45(66)=acd45(75)+acd45(69)+acd45(68)+acd45(66)
      acd45(66)=acd45(67)*acd45(66)
      acd45(68)=acd45(42)*acd45(17)
      acd45(69)=acd45(45)*acd45(27)
      acd45(75)=-acd45(46)*acd45(29)
      acd45(78)=acd45(47)*acd45(31)
      acd45(68)=acd45(78)+acd45(75)+acd45(69)+acd45(68)
      acd45(68)=acd45(65)*acd45(68)
      acd45(69)=acd45(18)*acd45(17)
      acd45(75)=acd45(26)*acd45(27)
      acd45(78)=-acd45(28)*acd45(29)
      acd45(79)=acd45(30)*acd45(31)
      acd45(69)=acd45(79)+acd45(78)+acd45(75)+acd45(69)
      acd45(69)=acd45(62)*acd45(69)
      acd45(75)=acd45(16)*acd45(17)
      acd45(78)=acd45(33)*acd45(27)
      acd45(79)=-acd45(34)*acd45(29)
      acd45(80)=acd45(35)*acd45(31)
      acd45(75)=acd45(80)+acd45(79)+acd45(78)+acd45(75)
      acd45(75)=acd45(70)*acd45(75)
      acd45(78)=acd45(24)*acd45(9)
      acd45(79)=acd45(32)*acd45(6)
      acd45(78)=acd45(78)+acd45(79)
      acd45(79)=acd45(60)*acd45(51)
      acd45(80)=acd45(79)*acd45(78)
      acd45(82)=acd45(60)*acd45(9)
      acd45(84)=acd45(71)*acd45(82)
      acd45(80)=acd45(84)+acd45(80)
      acd45(84)=acd45(7)*acd45(65)
      acd45(84)=acd45(84)-acd45(80)
      acd45(84)=acd45(38)*acd45(84)
      acd45(85)=acd45(14)*acd45(65)
      acd45(80)=acd45(85)+acd45(80)
      acd45(80)=acd45(41)*acd45(80)
      acd45(85)=acd45(60)*acd45(39)
      acd45(86)=acd45(85)*acd45(78)
      acd45(82)=acd45(73)*acd45(82)
      acd45(82)=acd45(82)+acd45(86)
      acd45(86)=acd45(7)*acd45(67)
      acd45(86)=acd45(86)-acd45(82)
      acd45(86)=acd45(50)*acd45(86)
      acd45(87)=acd45(11)*acd45(67)
      acd45(72)=acd45(9)*acd45(72)
      acd45(88)=acd45(6)*acd45(77)
      acd45(89)=acd45(9)*acd45(6)
      acd45(90)=acd45(44)*acd45(89)
      acd45(72)=acd45(90)+acd45(72)+acd45(88)
      acd45(72)=acd45(61)*acd45(72)
      acd45(72)=acd45(87)+acd45(72)
      acd45(72)=acd45(52)*acd45(72)
      acd45(67)=acd45(14)*acd45(67)
      acd45(67)=acd45(67)+acd45(82)
      acd45(67)=acd45(53)*acd45(67)
      acd45(74)=acd45(79)*acd45(74)
      acd45(82)=acd45(71)*acd45(85)
      acd45(74)=acd45(74)+acd45(82)
      acd45(82)=acd45(7)*acd45(70)
      acd45(82)=acd45(82)-acd45(74)
      acd45(82)=acd45(5)*acd45(82)
      acd45(87)=acd45(7)*acd45(62)
      acd45(88)=acd45(44)*acd45(9)
      acd45(77)=acd45(88)+acd45(77)
      acd45(77)=acd45(77)*acd45(79)
      acd45(79)=acd45(85)*acd45(56)*acd45(9)
      acd45(77)=acd45(77)+acd45(79)
      acd45(79)=acd45(87)-acd45(77)
      acd45(79)=acd45(8)*acd45(79)
      acd45(73)=acd45(51)*acd45(73)
      acd45(71)=acd45(39)*acd45(71)
      acd45(71)=acd45(71)+acd45(81)+acd45(73)
      acd45(71)=acd45(61)*acd45(71)
      acd45(73)=acd45(11)*acd45(70)
      acd45(71)=acd45(73)+acd45(71)
      acd45(71)=acd45(10)*acd45(71)
      acd45(73)=acd45(11)*acd45(62)
      acd45(76)=acd45(9)*acd45(76)
      acd45(76)=acd45(83)+acd45(76)
      acd45(76)=acd45(61)*acd45(76)
      acd45(73)=acd45(73)+acd45(76)
      acd45(73)=acd45(12)*acd45(73)
      acd45(70)=acd45(14)*acd45(70)
      acd45(70)=acd45(70)+acd45(74)
      acd45(70)=acd45(13)*acd45(70)
      acd45(62)=acd45(14)*acd45(62)
      acd45(62)=acd45(62)+acd45(77)
      acd45(62)=acd45(15)*acd45(62)
      acd45(65)=acd45(11)*acd45(65)
      acd45(74)=acd45(51)*acd45(78)
      acd45(76)=acd45(56)*acd45(89)
      acd45(74)=acd45(76)+acd45(74)
      acd45(74)=acd45(61)*acd45(74)
      acd45(65)=acd45(65)+acd45(74)
      acd45(65)=acd45(40)*acd45(65)
      acd45(62)=acd45(67)+acd45(72)+acd45(86)+acd45(80)+acd45(65)+acd45(84)+acd&
      &45(62)+acd45(70)+acd45(73)+acd45(71)+acd45(79)+acd45(82)+acd45(63)+acd45&
      &(75)+acd45(69)+acd45(68)+acd45(66)+2.0_ki*acd45(64)
      brack=2.0_ki*acd45(62)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd45h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(40) :: acd45
      complex(ki) :: brack
      acd45(1)=d(iv1,iv2)
      acd45(2)=d(iv3,iv4)
      acd45(3)=spvak2k5(iv5)
      acd45(4)=abb45(37)
      acd45(5)=d(iv3,iv5)
      acd45(6)=spvak2k5(iv4)
      acd45(7)=d(iv4,iv5)
      acd45(8)=spvak2k5(iv3)
      acd45(9)=spvak1k2(iv5)
      acd45(10)=abb45(24)
      acd45(11)=spvak1k2(iv4)
      acd45(12)=spvak1k2(iv3)
      acd45(13)=d(iv1,iv3)
      acd45(14)=d(iv2,iv4)
      acd45(15)=d(iv2,iv5)
      acd45(16)=spvak2k5(iv2)
      acd45(17)=spvak1k2(iv2)
      acd45(18)=d(iv1,iv4)
      acd45(19)=d(iv2,iv3)
      acd45(20)=d(iv1,iv5)
      acd45(21)=spvak2k5(iv1)
      acd45(22)=spvak1k2(iv1)
      acd45(23)=acd45(9)*acd45(8)
      acd45(24)=acd45(12)*acd45(3)
      acd45(23)=acd45(23)+acd45(24)
      acd45(24)=acd45(16)*acd45(10)
      acd45(25)=acd45(24)*acd45(23)
      acd45(26)=2.0_ki*acd45(4)
      acd45(27)=acd45(26)*acd45(5)
      acd45(28)=acd45(16)*acd45(27)
      acd45(29)=acd45(15)*acd45(8)*acd45(26)
      acd45(30)=acd45(8)*acd45(10)
      acd45(31)=acd45(30)*acd45(3)
      acd45(32)=acd45(17)*acd45(31)
      acd45(25)=acd45(32)+acd45(29)+acd45(28)+acd45(25)
      acd45(25)=acd45(18)*acd45(25)
      acd45(28)=acd45(2)*acd45(3)
      acd45(29)=acd45(5)*acd45(6)
      acd45(32)=acd45(7)*acd45(8)
      acd45(28)=acd45(32)+acd45(28)+acd45(29)
      acd45(29)=acd45(24)*acd45(28)
      acd45(32)=acd45(14)*acd45(31)
      acd45(30)=acd45(30)*acd45(6)
      acd45(33)=acd45(15)*acd45(30)
      acd45(34)=acd45(3)*acd45(6)*acd45(10)
      acd45(35)=acd45(19)*acd45(34)
      acd45(29)=acd45(35)+acd45(33)+acd45(32)+acd45(29)
      acd45(29)=acd45(22)*acd45(29)
      acd45(32)=acd45(1)*acd45(4)*acd45(28)
      acd45(33)=acd45(21)*acd45(10)
      acd45(23)=acd45(33)*acd45(23)
      acd45(27)=acd45(21)*acd45(27)
      acd45(35)=acd45(26)*acd45(13)
      acd45(36)=acd45(3)*acd45(35)
      acd45(23)=acd45(36)+acd45(27)+acd45(23)
      acd45(23)=acd45(14)*acd45(23)
      acd45(27)=acd45(11)*acd45(8)
      acd45(36)=acd45(12)*acd45(6)
      acd45(27)=acd45(27)+acd45(36)
      acd45(36)=acd45(33)*acd45(27)
      acd45(37)=acd45(2)*acd45(26)*acd45(21)
      acd45(35)=acd45(6)*acd45(35)
      acd45(35)=acd45(35)+acd45(37)+acd45(36)
      acd45(35)=acd45(15)*acd45(35)
      acd45(28)=acd45(33)*acd45(28)
      acd45(36)=acd45(13)*acd45(34)
      acd45(28)=acd45(36)+acd45(28)
      acd45(28)=acd45(17)*acd45(28)
      acd45(36)=acd45(9)*acd45(6)
      acd45(37)=acd45(11)*acd45(3)
      acd45(36)=acd45(36)+acd45(37)
      acd45(37)=acd45(33)*acd45(36)
      acd45(38)=acd45(7)*acd45(21)
      acd45(39)=acd45(18)*acd45(3)
      acd45(38)=acd45(39)+acd45(38)
      acd45(38)=acd45(26)*acd45(38)
      acd45(37)=acd45(38)+acd45(37)
      acd45(37)=acd45(19)*acd45(37)
      acd45(38)=acd45(2)*acd45(16)
      acd45(39)=acd45(14)*acd45(8)
      acd45(40)=acd45(19)*acd45(6)
      acd45(38)=acd45(40)+acd45(39)+acd45(38)
      acd45(38)=acd45(26)*acd45(38)
      acd45(27)=acd45(24)*acd45(27)
      acd45(39)=acd45(17)*acd45(30)
      acd45(27)=acd45(39)+acd45(38)+acd45(27)
      acd45(27)=acd45(20)*acd45(27)
      acd45(30)=acd45(1)*acd45(30)
      acd45(33)=acd45(33)*acd45(16)
      acd45(38)=acd45(2)*acd45(33)
      acd45(30)=acd45(30)+acd45(38)
      acd45(30)=acd45(9)*acd45(30)
      acd45(31)=acd45(1)*acd45(31)
      acd45(38)=acd45(5)*acd45(33)
      acd45(31)=acd45(31)+acd45(38)
      acd45(31)=acd45(11)*acd45(31)
      acd45(34)=acd45(1)*acd45(34)
      acd45(33)=acd45(7)*acd45(33)
      acd45(33)=acd45(34)+acd45(33)
      acd45(33)=acd45(12)*acd45(33)
      acd45(24)=acd45(24)*acd45(36)
      acd45(26)=acd45(7)*acd45(16)*acd45(26)
      acd45(24)=acd45(26)+acd45(24)
      acd45(24)=acd45(13)*acd45(24)
      acd45(23)=acd45(29)+acd45(27)+acd45(37)+acd45(25)+acd45(28)+acd45(35)+acd&
      &45(23)+acd45(24)+acd45(33)+acd45(31)+2.0_ki*acd45(32)+acd45(30)
      brack=4.0_ki*acd45(23)
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd45h0
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
!---#[ subroutine reconstruct_d45:
   subroutine     reconstruct_d45(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group11
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group11), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_45:
      coeffs%coeffs_45%c0 = derivative(czip)
      coeffs%coeffs_45%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_45%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_45%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_45%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_45%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_45%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_45%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_45%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_45%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_45%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_45%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_45%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_45%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_45%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_45%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_45%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_45%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_45%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_45%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_45%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_45%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_45%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_45%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_45%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_45%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_45%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_45%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_45%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_45%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_45%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_45%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_45%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_45%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_45%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_45%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_45%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_45%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_45%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_45%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_45%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_45%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_45%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_45%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_45%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_45%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_45%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_45%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_45%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_45%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_45%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_45%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_45%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_45%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_45%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_45%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_45%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_45%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_45%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_45%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_45%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_45%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_45%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_45%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_45%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_45%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_45%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_45%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_45%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_45%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_45%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_45%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_45%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_45%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_45%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_45%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_45%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_45%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_45%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_45%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_45%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_45%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_45%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_45%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_45%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_45%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_45%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_45%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_45%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_45%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_45%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_45%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_45%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_45%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_45%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_45%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_45%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_45%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_45%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_45%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_45%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_45%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_45%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_45%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_45%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_45%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_45%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_45%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_45%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_45%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_45%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_45%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_45%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_45%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_45%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_45%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_45%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_45%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_45%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_45%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_45%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_45%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_45%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_45%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_45%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_45%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_45:
   end subroutine reconstruct_d45
!---#] subroutine reconstruct_d45:
end module     p0_gg_hhg_d45h0l1d
