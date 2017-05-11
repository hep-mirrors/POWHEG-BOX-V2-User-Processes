module     p0_gg_hhg_d49h0l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d49h0l1d.f90
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
   public :: derivative , reconstruct_d49
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd49
      complex(ki) :: brack
      acd49(1)=dotproduct(k1,qshift)
      acd49(2)=dotproduct(k2,qshift)
      acd49(3)=dotproduct(qshift,spvak2k5)
      acd49(4)=abb49(36)
      acd49(5)=dotproduct(k5,qshift)
      acd49(6)=abb49(35)
      acd49(7)=dotproduct(qshift,qshift)
      acd49(8)=abb49(23)
      acd49(9)=dotproduct(qshift,spvak1k2)
      acd49(10)=abb49(14)
      acd49(11)=abb49(48)
      acd49(12)=dotproduct(qshift,spvak1k5)
      acd49(13)=abb49(33)
      acd49(14)=dotproduct(qshift,spvak2l4)
      acd49(15)=abb49(29)
      acd49(16)=dotproduct(qshift,spval4k5)
      acd49(17)=abb49(44)
      acd49(18)=abb49(16)
      acd49(19)=abb49(31)
      acd49(20)=abb49(19)
      acd49(21)=abb49(22)
      acd49(22)=abb49(32)
      acd49(23)=abb49(13)
      acd49(24)=dotproduct(l4,qshift)
      acd49(25)=abb49(40)
      acd49(26)=abb49(27)
      acd49(27)=abb49(30)
      acd49(28)=abb49(39)
      acd49(29)=abb49(26)
      acd49(30)=abb49(10)
      acd49(31)=abb49(37)
      acd49(32)=abb49(24)
      acd49(33)=abb49(46)
      acd49(34)=abb49(15)
      acd49(35)=abb49(50)
      acd49(36)=abb49(41)
      acd49(37)=abb49(18)
      acd49(38)=abb49(9)
      acd49(39)=abb49(47)
      acd49(40)=abb49(20)
      acd49(41)=abb49(25)
      acd49(42)=abb49(8)
      acd49(43)=dotproduct(qshift,spvak2k1)
      acd49(44)=abb49(11)
      acd49(45)=abb49(12)
      acd49(46)=abb49(17)
      acd49(47)=abb49(51)
      acd49(48)=abb49(42)
      acd49(49)=abb49(21)
      acd49(50)=acd49(24)*acd49(25)
      acd49(51)=acd49(16)*acd49(36)
      acd49(52)=-acd49(14)*acd49(35)
      acd49(53)=acd49(5)*acd49(28)
      acd49(54)=acd49(12)*acd49(34)
      acd49(55)=acd49(2)*acd49(19)
      acd49(56)=acd49(1)*acd49(8)
      acd49(57)=-acd49(7)*acd49(31)
      acd49(50)=acd49(57)+acd49(56)+acd49(55)+acd49(54)+acd49(53)+acd49(52)+acd&
      &49(51)-acd49(37)+acd49(50)
      acd49(50)=acd49(7)*acd49(50)
      acd49(51)=acd49(7)+acd49(5)
      acd49(51)=acd49(29)*acd49(51)
      acd49(52)=-acd49(43)*acd49(44)
      acd49(53)=-acd49(16)*acd49(42)
      acd49(54)=-acd49(14)*acd49(41)
      acd49(55)=-acd49(12)*acd49(40)
      acd49(56)=-acd49(2)*acd49(21)
      acd49(51)=acd49(56)+acd49(55)+acd49(54)+acd49(53)+acd49(45)+acd49(52)+acd&
      &49(51)
      acd49(51)=acd49(9)*acd49(51)
      acd49(52)=-acd49(16)*acd49(17)
      acd49(53)=-acd49(14)*acd49(15)
      acd49(54)=-acd49(5)*acd49(6)
      acd49(55)=-acd49(12)*acd49(13)
      acd49(56)=-acd49(2)*acd49(4)
      acd49(52)=acd49(56)+acd49(55)+acd49(54)+acd49(53)+acd49(18)+acd49(52)
      acd49(52)=acd49(1)*acd49(52)
      acd49(53)=-acd49(1)+acd49(24)
      acd49(53)=acd49(10)*acd49(53)
      acd49(54)=acd49(2)*acd49(20)
      acd49(55)=-acd49(7)*acd49(32)
      acd49(53)=acd49(55)+acd49(54)-acd49(38)+acd49(53)
      acd49(53)=acd49(9)*acd49(53)
      acd49(54)=-acd49(1)*acd49(11)
      acd49(55)=acd49(7)*acd49(33)
      acd49(53)=acd49(53)+acd49(55)+acd49(39)+acd49(54)
      acd49(53)=acd49(3)*acd49(53)
      acd49(54)=acd49(24)*acd49(27)
      acd49(55)=acd49(16)*acd49(48)
      acd49(56)=acd49(14)*acd49(47)
      acd49(57)=acd49(5)*acd49(30)
      acd49(58)=-acd49(24)*acd49(26)
      acd49(58)=acd49(46)+acd49(58)
      acd49(58)=acd49(12)*acd49(58)
      acd49(59)=-acd49(12)*acd49(22)
      acd49(59)=acd49(23)+acd49(59)
      acd49(59)=acd49(2)*acd49(59)
      acd49(50)=acd49(53)+acd49(51)+acd49(50)+acd49(52)+acd49(59)+acd49(58)+acd&
      &49(57)+acd49(56)+acd49(55)-acd49(49)+acd49(54)
      brack=acd49(50)*acd49(3)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd49
      complex(ki) :: brack
      acd49(1)=k1(iv1)
      acd49(2)=dotproduct(k2,qshift)
      acd49(3)=dotproduct(qshift,spvak2k5)
      acd49(4)=abb49(36)
      acd49(5)=dotproduct(k5,qshift)
      acd49(6)=abb49(35)
      acd49(7)=dotproduct(qshift,qshift)
      acd49(8)=abb49(23)
      acd49(9)=dotproduct(qshift,spvak1k2)
      acd49(10)=abb49(14)
      acd49(11)=abb49(48)
      acd49(12)=dotproduct(qshift,spvak1k5)
      acd49(13)=abb49(33)
      acd49(14)=dotproduct(qshift,spvak2l4)
      acd49(15)=abb49(29)
      acd49(16)=dotproduct(qshift,spval4k5)
      acd49(17)=abb49(44)
      acd49(18)=abb49(16)
      acd49(19)=k2(iv1)
      acd49(20)=dotproduct(k1,qshift)
      acd49(21)=abb49(31)
      acd49(22)=abb49(19)
      acd49(23)=abb49(22)
      acd49(24)=abb49(32)
      acd49(25)=abb49(13)
      acd49(26)=l4(iv1)
      acd49(27)=abb49(40)
      acd49(28)=abb49(27)
      acd49(29)=abb49(30)
      acd49(30)=k5(iv1)
      acd49(31)=abb49(39)
      acd49(32)=abb49(26)
      acd49(33)=abb49(10)
      acd49(34)=qshift(iv1)
      acd49(35)=dotproduct(l4,qshift)
      acd49(36)=abb49(37)
      acd49(37)=abb49(24)
      acd49(38)=abb49(46)
      acd49(39)=abb49(15)
      acd49(40)=abb49(50)
      acd49(41)=abb49(41)
      acd49(42)=abb49(18)
      acd49(43)=spvak2k5(iv1)
      acd49(44)=abb49(9)
      acd49(45)=abb49(47)
      acd49(46)=abb49(20)
      acd49(47)=abb49(25)
      acd49(48)=abb49(8)
      acd49(49)=dotproduct(qshift,spvak2k1)
      acd49(50)=abb49(11)
      acd49(51)=abb49(12)
      acd49(52)=abb49(17)
      acd49(53)=abb49(51)
      acd49(54)=abb49(42)
      acd49(55)=abb49(21)
      acd49(56)=spvak1k2(iv1)
      acd49(57)=spvak1k5(iv1)
      acd49(58)=spvak2l4(iv1)
      acd49(59)=spval4k5(iv1)
      acd49(60)=spvak2k1(iv1)
      acd49(61)=-acd49(59)*acd49(41)
      acd49(62)=acd49(58)*acd49(40)
      acd49(63)=-acd49(30)*acd49(31)
      acd49(64)=-acd49(26)*acd49(27)
      acd49(65)=-acd49(57)*acd49(39)
      acd49(66)=-acd49(19)*acd49(21)
      acd49(67)=-acd49(1)*acd49(8)
      acd49(68)=acd49(34)*acd49(36)
      acd49(69)=-acd49(56)*acd49(32)
      acd49(61)=acd49(69)+4.0_ki*acd49(68)+acd49(67)+acd49(66)+acd49(65)+acd49(&
      &64)+acd49(63)+acd49(61)+acd49(62)
      acd49(61)=acd49(7)*acd49(61)
      acd49(62)=acd49(35)*acd49(27)
      acd49(63)=acd49(16)*acd49(41)
      acd49(64)=acd49(14)*acd49(40)
      acd49(65)=acd49(5)*acd49(31)
      acd49(66)=acd49(12)*acd49(39)
      acd49(67)=acd49(2)*acd49(21)
      acd49(62)=acd49(62)+acd49(66)+acd49(67)+acd49(63)-acd49(64)+acd49(65)-acd&
      &49(42)
      acd49(63)=2.0_ki*acd49(34)
      acd49(64)=-acd49(62)*acd49(63)
      acd49(65)=acd49(50)*acd49(49)
      acd49(66)=acd49(16)*acd49(48)
      acd49(67)=acd49(14)*acd49(47)
      acd49(68)=acd49(5)*acd49(32)
      acd49(69)=acd49(12)*acd49(46)
      acd49(70)=acd49(2)*acd49(23)
      acd49(65)=acd49(67)-acd49(68)+acd49(69)+acd49(70)-acd49(51)+acd49(65)+acd&
      &49(66)
      acd49(66)=acd49(56)*acd49(65)
      acd49(67)=acd49(59)*acd49(17)
      acd49(68)=acd49(58)*acd49(15)
      acd49(69)=acd49(30)*acd49(6)
      acd49(70)=acd49(57)*acd49(13)
      acd49(71)=acd49(19)*acd49(4)
      acd49(72)=-acd49(8)*acd49(63)
      acd49(67)=acd49(72)+acd49(71)+acd49(70)+acd49(69)+acd49(67)+acd49(68)
      acd49(67)=acd49(20)*acd49(67)
      acd49(68)=-acd49(63)-acd49(30)
      acd49(68)=acd49(32)*acd49(68)
      acd49(69)=acd49(50)*acd49(60)
      acd49(70)=acd49(59)*acd49(48)
      acd49(71)=acd49(58)*acd49(47)
      acd49(72)=acd49(57)*acd49(46)
      acd49(73)=acd49(19)*acd49(23)
      acd49(68)=acd49(73)+acd49(72)+acd49(71)+acd49(69)+acd49(70)+acd49(68)
      acd49(68)=acd49(9)*acd49(68)
      acd49(69)=-acd49(20)+acd49(35)
      acd49(69)=acd49(10)*acd49(69)
      acd49(70)=acd49(2)*acd49(22)
      acd49(71)=acd49(7)*acd49(37)
      acd49(69)=-acd49(71)+acd49(70)-acd49(44)+acd49(69)
      acd49(70)=-acd49(56)*acd49(69)
      acd49(71)=acd49(1)-acd49(26)
      acd49(71)=acd49(10)*acd49(71)
      acd49(72)=-acd49(19)*acd49(22)
      acd49(73)=acd49(37)*acd49(63)
      acd49(71)=acd49(73)+acd49(72)+acd49(71)
      acd49(71)=acd49(9)*acd49(71)
      acd49(72)=acd49(1)*acd49(11)
      acd49(63)=-acd49(38)*acd49(63)
      acd49(63)=acd49(71)+acd49(72)+acd49(63)+acd49(70)
      acd49(63)=acd49(3)*acd49(63)
      acd49(70)=acd49(16)*acd49(17)
      acd49(71)=acd49(14)*acd49(15)
      acd49(72)=acd49(5)*acd49(6)
      acd49(70)=acd49(71)+acd49(70)+acd49(72)-acd49(18)
      acd49(71)=acd49(1)*acd49(70)
      acd49(72)=acd49(26)*acd49(28)
      acd49(73)=acd49(19)*acd49(24)
      acd49(74)=acd49(1)*acd49(13)
      acd49(72)=acd49(74)+acd49(72)+acd49(73)
      acd49(72)=acd49(12)*acd49(72)
      acd49(69)=-acd49(9)*acd49(69)
      acd49(73)=acd49(20)*acd49(11)
      acd49(74)=-acd49(7)*acd49(38)
      acd49(69)=acd49(69)+acd49(74)-acd49(45)+acd49(73)
      acd49(69)=acd49(43)*acd49(69)
      acd49(73)=acd49(57)*acd49(24)
      acd49(74)=acd49(1)*acd49(4)
      acd49(73)=acd49(73)+acd49(74)
      acd49(73)=acd49(2)*acd49(73)
      acd49(74)=acd49(35)*acd49(28)
      acd49(74)=acd49(74)-acd49(52)
      acd49(75)=acd49(57)*acd49(74)
      acd49(76)=-acd49(59)*acd49(54)
      acd49(77)=-acd49(58)*acd49(53)
      acd49(78)=-acd49(30)*acd49(33)
      acd49(79)=-acd49(26)*acd49(29)
      acd49(80)=-acd49(19)*acd49(25)
      acd49(61)=acd49(63)+2.0_ki*acd49(69)+acd49(68)+acd49(61)+acd49(67)+acd49(&
      &66)+acd49(64)+acd49(73)+acd49(72)+acd49(71)+acd49(80)+acd49(79)+acd49(78&
      &)+acd49(76)+acd49(77)+acd49(75)
      acd49(61)=acd49(3)*acd49(61)
      acd49(63)=-acd49(20)*acd49(8)
      acd49(64)=acd49(7)*acd49(36)
      acd49(62)=acd49(64)+acd49(63)-acd49(62)
      acd49(62)=acd49(7)*acd49(62)
      acd49(63)=-acd49(7)*acd49(32)
      acd49(63)=acd49(63)+acd49(65)
      acd49(63)=acd49(9)*acd49(63)
      acd49(64)=acd49(12)*acd49(13)
      acd49(65)=acd49(2)*acd49(4)
      acd49(64)=acd49(65)+acd49(64)+acd49(70)
      acd49(64)=acd49(20)*acd49(64)
      acd49(65)=-acd49(35)*acd49(29)
      acd49(66)=-acd49(16)*acd49(54)
      acd49(67)=-acd49(14)*acd49(53)
      acd49(68)=-acd49(5)*acd49(33)
      acd49(69)=acd49(12)*acd49(74)
      acd49(70)=acd49(12)*acd49(24)
      acd49(70)=-acd49(25)+acd49(70)
      acd49(70)=acd49(2)*acd49(70)
      acd49(62)=acd49(63)+acd49(62)+acd49(64)+acd49(70)+acd49(69)+acd49(68)+acd&
      &49(67)+acd49(66)+acd49(55)+acd49(65)
      acd49(62)=acd49(43)*acd49(62)
      brack=acd49(61)+acd49(62)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(98) :: acd49
      complex(ki) :: brack
      acd49(1)=d(iv1,iv2)
      acd49(2)=dotproduct(k1,qshift)
      acd49(3)=dotproduct(qshift,spvak2k5)
      acd49(4)=abb49(23)
      acd49(5)=dotproduct(k2,qshift)
      acd49(6)=abb49(31)
      acd49(7)=dotproduct(l4,qshift)
      acd49(8)=abb49(40)
      acd49(9)=dotproduct(k5,qshift)
      acd49(10)=abb49(39)
      acd49(11)=dotproduct(qshift,qshift)
      acd49(12)=abb49(37)
      acd49(13)=dotproduct(qshift,spvak1k2)
      acd49(14)=abb49(24)
      acd49(15)=abb49(46)
      acd49(16)=abb49(26)
      acd49(17)=dotproduct(qshift,spvak1k5)
      acd49(18)=abb49(15)
      acd49(19)=dotproduct(qshift,spvak2l4)
      acd49(20)=abb49(50)
      acd49(21)=dotproduct(qshift,spval4k5)
      acd49(22)=abb49(41)
      acd49(23)=abb49(18)
      acd49(24)=k1(iv1)
      acd49(25)=k2(iv2)
      acd49(26)=abb49(36)
      acd49(27)=k5(iv2)
      acd49(28)=abb49(35)
      acd49(29)=qshift(iv2)
      acd49(30)=spvak2k5(iv2)
      acd49(31)=abb49(14)
      acd49(32)=abb49(48)
      acd49(33)=abb49(33)
      acd49(34)=abb49(29)
      acd49(35)=abb49(44)
      acd49(36)=abb49(16)
      acd49(37)=spvak1k2(iv2)
      acd49(38)=spvak1k5(iv2)
      acd49(39)=spvak2l4(iv2)
      acd49(40)=spval4k5(iv2)
      acd49(41)=k1(iv2)
      acd49(42)=k2(iv1)
      acd49(43)=k5(iv1)
      acd49(44)=qshift(iv1)
      acd49(45)=spvak2k5(iv1)
      acd49(46)=spvak1k2(iv1)
      acd49(47)=spvak1k5(iv1)
      acd49(48)=spvak2l4(iv1)
      acd49(49)=spval4k5(iv1)
      acd49(50)=abb49(19)
      acd49(51)=abb49(22)
      acd49(52)=abb49(32)
      acd49(53)=abb49(13)
      acd49(54)=l4(iv1)
      acd49(55)=abb49(27)
      acd49(56)=abb49(30)
      acd49(57)=l4(iv2)
      acd49(58)=abb49(10)
      acd49(59)=abb49(9)
      acd49(60)=abb49(47)
      acd49(61)=abb49(20)
      acd49(62)=abb49(25)
      acd49(63)=abb49(8)
      acd49(64)=dotproduct(qshift,spvak2k1)
      acd49(65)=abb49(11)
      acd49(66)=abb49(12)
      acd49(67)=abb49(17)
      acd49(68)=abb49(51)
      acd49(69)=abb49(42)
      acd49(70)=spvak2k1(iv2)
      acd49(71)=spvak2k1(iv1)
      acd49(72)=acd49(22)*acd49(49)
      acd49(73)=acd49(20)*acd49(48)
      acd49(74)=acd49(10)*acd49(43)
      acd49(75)=acd49(8)*acd49(54)
      acd49(76)=acd49(47)*acd49(18)
      acd49(77)=acd49(42)*acd49(6)
      acd49(78)=acd49(24)*acd49(4)
      acd49(79)=4.0_ki*acd49(12)
      acd49(80)=acd49(79)*acd49(44)
      acd49(72)=-acd49(73)+acd49(74)+acd49(75)+acd49(76)+acd49(77)+acd49(72)+ac&
      &d49(78)-acd49(80)
      acd49(73)=acd49(11)*acd49(72)
      acd49(74)=acd49(21)*acd49(22)
      acd49(75)=acd49(19)*acd49(20)
      acd49(76)=acd49(9)*acd49(10)
      acd49(77)=acd49(7)*acd49(8)
      acd49(78)=acd49(17)*acd49(18)
      acd49(80)=acd49(5)*acd49(6)
      acd49(81)=acd49(2)*acd49(4)
      acd49(74)=acd49(81)-acd49(23)+acd49(77)+acd49(76)+acd49(74)-acd49(75)+acd&
      &49(78)+acd49(80)
      acd49(75)=2.0_ki*acd49(44)
      acd49(76)=acd49(74)*acd49(75)
      acd49(77)=acd49(9)+acd49(11)
      acd49(77)=acd49(16)*acd49(77)
      acd49(78)=acd49(65)*acd49(64)
      acd49(80)=acd49(21)*acd49(63)
      acd49(81)=acd49(19)*acd49(62)
      acd49(82)=acd49(17)*acd49(61)
      acd49(83)=acd49(5)*acd49(51)
      acd49(77)=-acd49(77)+acd49(82)+acd49(83)+acd49(78)+acd49(80)+acd49(81)-ac&
      &d49(66)
      acd49(78)=-acd49(46)*acd49(77)
      acd49(80)=acd49(43)+acd49(75)
      acd49(80)=acd49(16)*acd49(80)
      acd49(81)=acd49(65)*acd49(71)
      acd49(82)=acd49(49)*acd49(63)
      acd49(83)=acd49(48)*acd49(62)
      acd49(84)=acd49(47)*acd49(61)
      acd49(85)=acd49(42)*acd49(51)
      acd49(80)=-acd49(80)+acd49(81)+acd49(82)+acd49(83)+acd49(84)+acd49(85)
      acd49(81)=-acd49(13)*acd49(80)
      acd49(82)=acd49(21)*acd49(35)
      acd49(83)=acd49(19)*acd49(34)
      acd49(84)=acd49(9)*acd49(28)
      acd49(85)=acd49(17)*acd49(33)
      acd49(86)=acd49(5)*acd49(26)
      acd49(82)=-acd49(36)+acd49(82)+acd49(85)+acd49(86)+acd49(83)+acd49(84)
      acd49(83)=-acd49(24)*acd49(82)
      acd49(84)=acd49(49)*acd49(35)
      acd49(85)=acd49(48)*acd49(34)
      acd49(86)=acd49(43)*acd49(28)
      acd49(87)=acd49(47)*acd49(33)
      acd49(88)=acd49(42)*acd49(26)
      acd49(84)=acd49(88)+acd49(84)+acd49(85)+acd49(86)+acd49(87)
      acd49(85)=-acd49(2)*acd49(84)
      acd49(86)=acd49(7)-acd49(2)
      acd49(86)=acd49(31)*acd49(86)
      acd49(87)=acd49(5)*acd49(50)
      acd49(88)=acd49(11)*acd49(14)
      acd49(86)=-acd49(59)-acd49(88)+acd49(86)+acd49(87)
      acd49(87)=acd49(13)*acd49(86)
      acd49(88)=-acd49(2)*acd49(32)
      acd49(89)=acd49(11)*acd49(15)
      acd49(87)=acd49(87)+acd49(89)+acd49(60)+acd49(88)
      acd49(88)=2.0_ki*acd49(45)
      acd49(87)=acd49(87)*acd49(88)
      acd49(89)=acd49(7)*acd49(55)
      acd49(90)=acd49(5)*acd49(52)
      acd49(89)=acd49(90)+acd49(89)-acd49(67)
      acd49(90)=-acd49(47)*acd49(89)
      acd49(91)=acd49(54)*acd49(55)
      acd49(92)=acd49(42)*acd49(52)
      acd49(91)=acd49(91)+acd49(92)
      acd49(92)=-acd49(17)*acd49(91)
      acd49(93)=acd49(54)*acd49(56)
      acd49(94)=acd49(49)*acd49(69)
      acd49(95)=acd49(48)*acd49(68)
      acd49(96)=acd49(43)*acd49(58)
      acd49(97)=acd49(42)*acd49(53)
      acd49(73)=acd49(87)+acd49(81)+acd49(78)+acd49(73)+acd49(76)+acd49(85)+acd&
      &49(83)+acd49(92)+acd49(97)+acd49(96)+acd49(95)+acd49(93)+acd49(94)+acd49&
      &(90)
      acd49(73)=acd49(30)*acd49(73)
      acd49(76)=2.0_ki*acd49(29)
      acd49(72)=acd49(72)*acd49(76)
      acd49(78)=2.0_ki*acd49(1)
      acd49(81)=acd49(78)*acd49(74)
      acd49(83)=acd49(22)*acd49(40)
      acd49(85)=acd49(20)*acd49(39)
      acd49(87)=acd49(10)*acd49(27)
      acd49(90)=acd49(8)*acd49(57)
      acd49(92)=acd49(38)*acd49(18)
      acd49(93)=acd49(25)*acd49(6)
      acd49(94)=acd49(41)*acd49(4)
      acd49(83)=acd49(83)+acd49(92)+acd49(93)-acd49(85)+acd49(87)+acd49(90)+acd&
      &49(94)
      acd49(85)=acd49(83)*acd49(75)
      acd49(87)=-acd49(27)-acd49(76)
      acd49(87)=acd49(16)*acd49(87)
      acd49(90)=acd49(65)*acd49(70)
      acd49(92)=acd49(40)*acd49(63)
      acd49(93)=acd49(39)*acd49(62)
      acd49(94)=acd49(38)*acd49(61)
      acd49(95)=acd49(25)*acd49(51)
      acd49(87)=acd49(90)+acd49(95)+acd49(92)+acd49(93)+acd49(94)+acd49(87)
      acd49(90)=-acd49(46)*acd49(87)
      acd49(80)=-acd49(37)*acd49(80)
      acd49(84)=-acd49(41)*acd49(84)
      acd49(92)=acd49(40)*acd49(35)
      acd49(93)=acd49(39)*acd49(34)
      acd49(94)=acd49(27)*acd49(28)
      acd49(95)=acd49(38)*acd49(33)
      acd49(96)=acd49(25)*acd49(26)
      acd49(92)=acd49(92)+acd49(95)+acd49(96)+acd49(93)+acd49(94)
      acd49(93)=-acd49(24)*acd49(92)
      acd49(94)=acd49(37)*acd49(86)
      acd49(95)=acd49(41)-acd49(57)
      acd49(95)=acd49(95)*acd49(31)
      acd49(96)=acd49(25)*acd49(50)
      acd49(97)=acd49(76)*acd49(14)
      acd49(95)=acd49(95)-acd49(96)+acd49(97)
      acd49(96)=-acd49(13)*acd49(95)
      acd49(97)=-acd49(41)*acd49(32)
      acd49(98)=acd49(15)*acd49(76)
      acd49(94)=acd49(96)+acd49(94)+acd49(97)+acd49(98)
      acd49(88)=acd49(94)*acd49(88)
      acd49(86)=acd49(46)*acd49(86)
      acd49(94)=acd49(54)-acd49(24)
      acd49(94)=acd49(31)*acd49(94)
      acd49(96)=acd49(42)*acd49(50)
      acd49(97)=acd49(75)*acd49(14)
      acd49(94)=-acd49(97)+acd49(94)+acd49(96)
      acd49(96)=acd49(13)*acd49(94)
      acd49(97)=-acd49(24)*acd49(32)
      acd49(75)=acd49(15)*acd49(75)
      acd49(75)=acd49(96)+acd49(86)+acd49(97)+acd49(75)
      acd49(75)=acd49(30)*acd49(75)
      acd49(86)=-acd49(46)*acd49(95)
      acd49(94)=acd49(37)*acd49(94)
      acd49(95)=-acd49(13)*acd49(14)
      acd49(95)=acd49(95)+acd49(15)
      acd49(78)=acd49(78)*acd49(95)
      acd49(78)=acd49(94)+acd49(86)+acd49(78)
      acd49(78)=acd49(3)*acd49(78)
      acd49(86)=acd49(57)*acd49(55)
      acd49(94)=acd49(25)*acd49(52)
      acd49(86)=acd49(86)+acd49(94)
      acd49(94)=-acd49(47)*acd49(86)
      acd49(95)=-acd49(11)*acd49(79)
      acd49(96)=2.0_ki*acd49(16)
      acd49(96)=acd49(13)*acd49(96)
      acd49(95)=acd49(96)+acd49(95)
      acd49(95)=acd49(1)*acd49(95)
      acd49(91)=-acd49(38)*acd49(91)
      acd49(72)=acd49(78)+2.0_ki*acd49(75)+acd49(88)+acd49(80)+acd49(90)+acd49(&
      &72)+acd49(85)+acd49(93)+acd49(84)+acd49(91)+acd49(81)+acd49(95)+acd49(94)
      acd49(72)=acd49(3)*acd49(72)
      acd49(74)=acd49(74)*acd49(76)
      acd49(75)=-acd49(29)*acd49(79)
      acd49(75)=acd49(75)+acd49(83)
      acd49(75)=acd49(11)*acd49(75)
      acd49(76)=-acd49(37)*acd49(77)
      acd49(77)=-acd49(13)*acd49(87)
      acd49(78)=-acd49(41)*acd49(82)
      acd49(79)=-acd49(2)*acd49(92)
      acd49(80)=-acd49(38)*acd49(89)
      acd49(81)=-acd49(17)*acd49(86)
      acd49(82)=acd49(57)*acd49(56)
      acd49(83)=acd49(40)*acd49(69)
      acd49(84)=acd49(39)*acd49(68)
      acd49(85)=acd49(27)*acd49(58)
      acd49(86)=acd49(25)*acd49(53)
      acd49(74)=acd49(77)+acd49(76)+acd49(75)+acd49(74)+acd49(79)+acd49(78)+acd&
      &49(81)+acd49(86)+acd49(85)+acd49(84)+acd49(82)+acd49(83)+acd49(80)
      acd49(74)=acd49(45)*acd49(74)
      brack=acd49(72)+acd49(73)+acd49(74)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(108) :: acd49
      complex(ki) :: brack
      acd49(1)=d(iv1,iv2)
      acd49(2)=k1(iv3)
      acd49(3)=dotproduct(qshift,spvak2k5)
      acd49(4)=abb49(23)
      acd49(5)=k2(iv3)
      acd49(6)=abb49(31)
      acd49(7)=l4(iv3)
      acd49(8)=abb49(40)
      acd49(9)=k5(iv3)
      acd49(10)=abb49(39)
      acd49(11)=qshift(iv3)
      acd49(12)=abb49(37)
      acd49(13)=spvak2k5(iv3)
      acd49(14)=dotproduct(k1,qshift)
      acd49(15)=dotproduct(k2,qshift)
      acd49(16)=dotproduct(l4,qshift)
      acd49(17)=dotproduct(k5,qshift)
      acd49(18)=dotproduct(qshift,qshift)
      acd49(19)=dotproduct(qshift,spvak1k2)
      acd49(20)=abb49(24)
      acd49(21)=abb49(46)
      acd49(22)=abb49(26)
      acd49(23)=dotproduct(qshift,spvak1k5)
      acd49(24)=abb49(15)
      acd49(25)=dotproduct(qshift,spvak2l4)
      acd49(26)=abb49(50)
      acd49(27)=dotproduct(qshift,spval4k5)
      acd49(28)=abb49(41)
      acd49(29)=abb49(18)
      acd49(30)=spvak1k2(iv3)
      acd49(31)=spvak1k5(iv3)
      acd49(32)=spvak2l4(iv3)
      acd49(33)=spval4k5(iv3)
      acd49(34)=d(iv1,iv3)
      acd49(35)=k1(iv2)
      acd49(36)=k2(iv2)
      acd49(37)=l4(iv2)
      acd49(38)=k5(iv2)
      acd49(39)=qshift(iv2)
      acd49(40)=spvak2k5(iv2)
      acd49(41)=spvak1k2(iv2)
      acd49(42)=spvak1k5(iv2)
      acd49(43)=spvak2l4(iv2)
      acd49(44)=spval4k5(iv2)
      acd49(45)=d(iv2,iv3)
      acd49(46)=k1(iv1)
      acd49(47)=k2(iv1)
      acd49(48)=l4(iv1)
      acd49(49)=k5(iv1)
      acd49(50)=qshift(iv1)
      acd49(51)=spvak2k5(iv1)
      acd49(52)=spvak1k2(iv1)
      acd49(53)=spvak1k5(iv1)
      acd49(54)=spvak2l4(iv1)
      acd49(55)=spval4k5(iv1)
      acd49(56)=abb49(36)
      acd49(57)=abb49(35)
      acd49(58)=abb49(14)
      acd49(59)=abb49(48)
      acd49(60)=abb49(33)
      acd49(61)=abb49(29)
      acd49(62)=abb49(44)
      acd49(63)=abb49(19)
      acd49(64)=abb49(22)
      acd49(65)=abb49(32)
      acd49(66)=abb49(27)
      acd49(67)=abb49(9)
      acd49(68)=abb49(20)
      acd49(69)=abb49(25)
      acd49(70)=abb49(8)
      acd49(71)=spvak2k1(iv3)
      acd49(72)=abb49(11)
      acd49(73)=spvak2k1(iv2)
      acd49(74)=spvak2k1(iv1)
      acd49(75)=acd49(12)*acd49(18)
      acd49(76)=acd49(28)*acd49(27)
      acd49(77)=acd49(26)*acd49(25)
      acd49(78)=acd49(24)*acd49(23)
      acd49(79)=acd49(10)*acd49(17)
      acd49(80)=acd49(8)*acd49(16)
      acd49(81)=acd49(6)*acd49(15)
      acd49(82)=acd49(4)*acd49(14)
      acd49(83)=acd49(19)*acd49(22)
      acd49(75)=-acd49(29)+acd49(83)+acd49(82)+acd49(81)+acd49(80)+acd49(79)+ac&
      &d49(78)-2.0_ki*acd49(75)+acd49(76)-acd49(77)
      acd49(75)=2.0_ki*acd49(75)
      acd49(76)=-acd49(1)*acd49(75)
      acd49(77)=acd49(28)*acd49(44)
      acd49(78)=acd49(26)*acd49(43)
      acd49(79)=acd49(24)*acd49(42)
      acd49(80)=acd49(10)*acd49(38)
      acd49(81)=acd49(8)*acd49(37)
      acd49(82)=acd49(6)*acd49(36)
      acd49(83)=acd49(35)*acd49(4)
      acd49(77)=acd49(81)+acd49(80)+acd49(79)+acd49(77)-acd49(78)+acd49(82)+acd&
      &49(83)
      acd49(78)=2.0_ki*acd49(50)
      acd49(79)=-acd49(77)*acd49(78)
      acd49(80)=acd49(28)*acd49(55)
      acd49(81)=acd49(26)*acd49(54)
      acd49(82)=acd49(24)*acd49(53)
      acd49(83)=acd49(10)*acd49(49)
      acd49(84)=acd49(8)*acd49(48)
      acd49(85)=acd49(6)*acd49(47)
      acd49(86)=acd49(46)*acd49(4)
      acd49(80)=acd49(86)+acd49(85)+acd49(84)+acd49(83)+acd49(82)+acd49(80)-acd&
      &49(81)
      acd49(81)=4.0_ki*acd49(12)
      acd49(82)=acd49(81)*acd49(50)
      acd49(82)=acd49(82)-acd49(80)
      acd49(83)=2.0_ki*acd49(39)
      acd49(84)=acd49(82)*acd49(83)
      acd49(85)=acd49(83)+acd49(38)
      acd49(85)=acd49(85)*acd49(22)
      acd49(86)=acd49(72)*acd49(73)
      acd49(87)=acd49(44)*acd49(70)
      acd49(88)=acd49(43)*acd49(69)
      acd49(89)=acd49(42)*acd49(68)
      acd49(90)=acd49(36)*acd49(64)
      acd49(85)=-acd49(86)-acd49(87)-acd49(88)-acd49(89)+acd49(85)-acd49(90)
      acd49(86)=-acd49(52)*acd49(85)
      acd49(87)=-acd49(49)-acd49(78)
      acd49(87)=acd49(22)*acd49(87)
      acd49(88)=acd49(72)*acd49(74)
      acd49(89)=acd49(55)*acd49(70)
      acd49(90)=acd49(54)*acd49(69)
      acd49(91)=acd49(53)*acd49(68)
      acd49(92)=acd49(47)*acd49(64)
      acd49(87)=acd49(88)+acd49(92)+acd49(89)+acd49(90)+acd49(91)+acd49(87)
      acd49(88)=acd49(41)*acd49(87)
      acd49(89)=acd49(44)*acd49(62)
      acd49(90)=acd49(43)*acd49(61)
      acd49(91)=acd49(38)*acd49(57)
      acd49(92)=acd49(42)*acd49(60)
      acd49(93)=acd49(36)*acd49(56)
      acd49(89)=acd49(93)+acd49(89)+acd49(90)+acd49(91)+acd49(92)
      acd49(90)=acd49(46)*acd49(89)
      acd49(91)=acd49(55)*acd49(62)
      acd49(92)=acd49(54)*acd49(61)
      acd49(93)=acd49(49)*acd49(57)
      acd49(94)=acd49(53)*acd49(60)
      acd49(95)=acd49(47)*acd49(56)
      acd49(91)=acd49(95)+acd49(91)+acd49(92)+acd49(93)+acd49(94)
      acd49(92)=acd49(35)*acd49(91)
      acd49(93)=acd49(14)-acd49(16)
      acd49(93)=acd49(93)*acd49(58)
      acd49(94)=acd49(63)*acd49(15)
      acd49(95)=acd49(20)*acd49(18)
      acd49(93)=acd49(93)+acd49(67)-acd49(94)+acd49(95)
      acd49(94)=acd49(41)*acd49(93)
      acd49(95)=acd49(19)*acd49(20)
      acd49(95)=acd49(95)-acd49(21)
      acd49(96)=acd49(95)*acd49(83)
      acd49(97)=acd49(35)-acd49(37)
      acd49(98)=acd49(58)*acd49(19)
      acd49(99)=acd49(97)*acd49(98)
      acd49(100)=acd49(35)*acd49(59)
      acd49(101)=acd49(19)*acd49(63)
      acd49(102)=-acd49(36)*acd49(101)
      acd49(94)=acd49(94)+acd49(99)+acd49(96)+acd49(100)+acd49(102)
      acd49(96)=2.0_ki*acd49(51)
      acd49(94)=acd49(94)*acd49(96)
      acd49(99)=acd49(52)*acd49(93)
      acd49(100)=acd49(95)*acd49(78)
      acd49(102)=acd49(46)-acd49(48)
      acd49(103)=acd49(102)*acd49(98)
      acd49(104)=acd49(46)*acd49(59)
      acd49(105)=-acd49(47)*acd49(101)
      acd49(99)=acd49(99)+acd49(103)+acd49(100)+acd49(104)+acd49(105)
      acd49(99)=acd49(40)*acd49(99)
      acd49(100)=acd49(36)*acd49(63)
      acd49(103)=acd49(83)*acd49(20)
      acd49(97)=acd49(97)*acd49(58)
      acd49(97)=-acd49(97)+acd49(100)-acd49(103)
      acd49(100)=-acd49(52)*acd49(97)
      acd49(103)=acd49(47)*acd49(63)
      acd49(102)=acd49(102)*acd49(58)
      acd49(104)=acd49(78)*acd49(20)
      acd49(102)=-acd49(104)+acd49(103)-acd49(102)
      acd49(103)=-acd49(41)*acd49(102)
      acd49(104)=2.0_ki*acd49(95)
      acd49(105)=acd49(1)*acd49(104)
      acd49(100)=acd49(103)+acd49(105)+acd49(100)
      acd49(103)=2.0_ki*acd49(3)
      acd49(100)=acd49(100)*acd49(103)
      acd49(105)=acd49(37)*acd49(66)
      acd49(106)=acd49(36)*acd49(65)
      acd49(105)=acd49(105)+acd49(106)
      acd49(106)=acd49(53)*acd49(105)
      acd49(107)=acd49(48)*acd49(66)
      acd49(108)=acd49(47)*acd49(65)
      acd49(107)=acd49(107)+acd49(108)
      acd49(108)=acd49(42)*acd49(107)
      acd49(76)=2.0_ki*acd49(99)+acd49(94)+acd49(100)+acd49(88)+acd49(86)+acd49&
      &(84)+acd49(79)+acd49(76)+acd49(92)+acd49(90)+acd49(108)+acd49(106)
      acd49(76)=acd49(13)*acd49(76)
      acd49(79)=-acd49(34)*acd49(75)
      acd49(84)=acd49(28)*acd49(33)
      acd49(86)=acd49(26)*acd49(32)
      acd49(88)=acd49(24)*acd49(31)
      acd49(90)=acd49(10)*acd49(9)
      acd49(92)=acd49(8)*acd49(7)
      acd49(94)=acd49(5)*acd49(6)
      acd49(99)=acd49(2)*acd49(4)
      acd49(84)=acd49(99)+acd49(94)+acd49(92)+acd49(90)+acd49(88)+acd49(84)-acd&
      &49(86)
      acd49(78)=-acd49(84)*acd49(78)
      acd49(86)=2.0_ki*acd49(11)
      acd49(82)=acd49(82)*acd49(86)
      acd49(88)=acd49(86)+acd49(9)
      acd49(88)=acd49(88)*acd49(22)
      acd49(90)=acd49(72)*acd49(71)
      acd49(92)=acd49(33)*acd49(70)
      acd49(94)=acd49(32)*acd49(69)
      acd49(99)=acd49(31)*acd49(68)
      acd49(100)=acd49(5)*acd49(64)
      acd49(88)=-acd49(90)-acd49(92)-acd49(94)-acd49(99)+acd49(88)-acd49(100)
      acd49(90)=-acd49(52)*acd49(88)
      acd49(87)=acd49(30)*acd49(87)
      acd49(92)=acd49(33)*acd49(62)
      acd49(94)=acd49(32)*acd49(61)
      acd49(99)=acd49(9)*acd49(57)
      acd49(100)=acd49(31)*acd49(60)
      acd49(106)=acd49(5)*acd49(56)
      acd49(92)=acd49(92)+acd49(100)+acd49(106)+acd49(94)+acd49(99)
      acd49(94)=acd49(46)*acd49(92)
      acd49(91)=acd49(2)*acd49(91)
      acd49(93)=acd49(30)*acd49(93)
      acd49(95)=acd49(95)*acd49(86)
      acd49(99)=acd49(2)-acd49(7)
      acd49(98)=acd49(99)*acd49(98)
      acd49(100)=acd49(2)*acd49(59)
      acd49(101)=-acd49(5)*acd49(101)
      acd49(93)=acd49(93)+acd49(98)+acd49(95)+acd49(100)+acd49(101)
      acd49(93)=acd49(93)*acd49(96)
      acd49(95)=acd49(86)*acd49(20)
      acd49(96)=acd49(99)*acd49(58)
      acd49(98)=acd49(5)*acd49(63)
      acd49(95)=-acd49(98)+acd49(95)+acd49(96)
      acd49(96)=acd49(52)*acd49(95)
      acd49(98)=-acd49(30)*acd49(102)
      acd49(99)=acd49(34)*acd49(104)
      acd49(96)=acd49(98)+acd49(99)+acd49(96)
      acd49(96)=acd49(96)*acd49(103)
      acd49(98)=acd49(7)*acd49(66)
      acd49(99)=acd49(5)*acd49(65)
      acd49(98)=acd49(98)+acd49(99)
      acd49(99)=acd49(53)*acd49(98)
      acd49(100)=acd49(31)*acd49(107)
      acd49(78)=acd49(93)+acd49(96)+acd49(87)+acd49(90)+acd49(82)+acd49(78)+acd&
      &49(79)+acd49(91)+acd49(94)+acd49(100)+acd49(99)
      acd49(78)=acd49(40)*acd49(78)
      acd49(75)=-acd49(45)*acd49(75)
      acd49(79)=-acd49(84)*acd49(83)
      acd49(82)=acd49(39)*acd49(81)
      acd49(82)=acd49(82)-acd49(77)
      acd49(82)=acd49(82)*acd49(86)
      acd49(83)=-acd49(41)*acd49(88)
      acd49(85)=-acd49(30)*acd49(85)
      acd49(86)=acd49(35)*acd49(92)
      acd49(87)=acd49(2)*acd49(89)
      acd49(88)=acd49(41)*acd49(95)
      acd49(89)=-acd49(30)*acd49(97)
      acd49(90)=acd49(45)*acd49(104)
      acd49(88)=acd49(89)+acd49(90)+acd49(88)
      acd49(88)=acd49(88)*acd49(103)
      acd49(89)=acd49(42)*acd49(98)
      acd49(90)=acd49(31)*acd49(105)
      acd49(75)=acd49(88)+acd49(85)+acd49(83)+acd49(82)+acd49(79)+acd49(75)+acd&
      &49(87)+acd49(86)+acd49(90)+acd49(89)
      acd49(75)=acd49(51)*acd49(75)
      acd49(79)=-acd49(45)*acd49(80)
      acd49(77)=-acd49(34)*acd49(77)
      acd49(80)=-acd49(1)*acd49(84)
      acd49(82)=acd49(52)*acd49(45)
      acd49(83)=acd49(41)*acd49(34)
      acd49(84)=acd49(30)*acd49(1)
      acd49(82)=acd49(84)+acd49(82)+acd49(83)
      acd49(83)=acd49(3)*acd49(20)
      acd49(83)=acd49(83)-acd49(22)
      acd49(82)=acd49(82)*acd49(83)
      acd49(83)=acd49(50)*acd49(45)
      acd49(84)=acd49(39)*acd49(34)
      acd49(85)=acd49(11)*acd49(1)
      acd49(83)=acd49(85)+acd49(84)+acd49(83)
      acd49(81)=acd49(81)*acd49(83)
      acd49(77)=acd49(80)+acd49(79)+acd49(77)+acd49(81)+acd49(82)
      acd49(77)=acd49(77)*acd49(103)
      brack=acd49(75)+acd49(76)+acd49(77)+acd49(78)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(90) :: acd49
      complex(ki) :: brack
      acd49(1)=d(iv1,iv2)
      acd49(2)=d(iv3,iv4)
      acd49(3)=dotproduct(qshift,spvak2k5)
      acd49(4)=abb49(37)
      acd49(5)=k1(iv3)
      acd49(6)=spvak2k5(iv4)
      acd49(7)=abb49(23)
      acd49(8)=k1(iv4)
      acd49(9)=spvak2k5(iv3)
      acd49(10)=k2(iv3)
      acd49(11)=abb49(31)
      acd49(12)=k2(iv4)
      acd49(13)=l4(iv3)
      acd49(14)=abb49(40)
      acd49(15)=l4(iv4)
      acd49(16)=k5(iv3)
      acd49(17)=abb49(39)
      acd49(18)=k5(iv4)
      acd49(19)=qshift(iv3)
      acd49(20)=qshift(iv4)
      acd49(21)=dotproduct(qshift,spvak1k2)
      acd49(22)=abb49(24)
      acd49(23)=abb49(46)
      acd49(24)=spvak1k2(iv4)
      acd49(25)=abb49(26)
      acd49(26)=spvak1k5(iv4)
      acd49(27)=abb49(15)
      acd49(28)=spvak2l4(iv4)
      acd49(29)=abb49(50)
      acd49(30)=spval4k5(iv4)
      acd49(31)=abb49(41)
      acd49(32)=spvak1k2(iv3)
      acd49(33)=spvak1k5(iv3)
      acd49(34)=spvak2l4(iv3)
      acd49(35)=spval4k5(iv3)
      acd49(36)=d(iv1,iv3)
      acd49(37)=d(iv2,iv4)
      acd49(38)=k1(iv2)
      acd49(39)=spvak2k5(iv2)
      acd49(40)=k2(iv2)
      acd49(41)=l4(iv2)
      acd49(42)=k5(iv2)
      acd49(43)=qshift(iv2)
      acd49(44)=spvak1k2(iv2)
      acd49(45)=spvak1k5(iv2)
      acd49(46)=spvak2l4(iv2)
      acd49(47)=spval4k5(iv2)
      acd49(48)=d(iv1,iv4)
      acd49(49)=d(iv2,iv3)
      acd49(50)=k1(iv1)
      acd49(51)=spvak2k5(iv1)
      acd49(52)=k2(iv1)
      acd49(53)=l4(iv1)
      acd49(54)=k5(iv1)
      acd49(55)=qshift(iv1)
      acd49(56)=spvak1k2(iv1)
      acd49(57)=spvak1k5(iv1)
      acd49(58)=spvak2l4(iv1)
      acd49(59)=spval4k5(iv1)
      acd49(60)=abb49(14)
      acd49(61)=abb49(19)
      acd49(62)=acd49(1)*acd49(9)
      acd49(63)=acd49(36)*acd49(39)
      acd49(64)=acd49(49)*acd49(51)
      acd49(62)=acd49(64)+acd49(62)+acd49(63)
      acd49(63)=acd49(62)*acd49(24)
      acd49(64)=acd49(2)*acd49(51)
      acd49(65)=acd49(36)*acd49(6)
      acd49(66)=acd49(48)*acd49(9)
      acd49(65)=acd49(66)+acd49(64)+acd49(65)
      acd49(66)=acd49(65)*acd49(44)
      acd49(67)=acd49(2)*acd49(39)
      acd49(68)=acd49(37)*acd49(9)
      acd49(69)=acd49(49)*acd49(6)
      acd49(67)=acd49(69)+acd49(67)+acd49(68)
      acd49(68)=acd49(67)*acd49(56)
      acd49(69)=acd49(37)*acd49(51)
      acd49(70)=acd49(48)*acd49(39)
      acd49(69)=acd49(69)+acd49(70)
      acd49(70)=acd49(1)*acd49(6)
      acd49(70)=acd49(69)+acd49(70)
      acd49(71)=acd49(70)*acd49(32)
      acd49(63)=acd49(71)+acd49(68)+acd49(63)+acd49(66)
      acd49(66)=-acd49(22)*acd49(63)
      acd49(68)=-acd49(2)*acd49(1)
      acd49(71)=-acd49(37)*acd49(36)
      acd49(72)=-acd49(49)*acd49(48)
      acd49(68)=acd49(72)+acd49(68)+acd49(71)
      acd49(71)=2.0_ki*acd49(4)
      acd49(68)=acd49(68)*acd49(71)
      acd49(66)=acd49(68)+acd49(66)
      acd49(66)=acd49(3)*acd49(66)
      acd49(68)=-acd49(67)*acd49(71)
      acd49(72)=acd49(24)*acd49(39)
      acd49(73)=acd49(44)*acd49(6)
      acd49(74)=acd49(72)+acd49(73)
      acd49(75)=acd49(22)*acd49(9)
      acd49(76)=-acd49(75)*acd49(74)
      acd49(77)=acd49(32)*acd49(39)
      acd49(78)=acd49(22)*acd49(6)
      acd49(79)=-acd49(78)*acd49(77)
      acd49(68)=acd49(68)+acd49(79)+acd49(76)
      acd49(68)=acd49(55)*acd49(68)
      acd49(76)=acd49(44)*acd49(51)
      acd49(79)=acd49(56)*acd49(39)
      acd49(76)=acd49(76)+acd49(79)
      acd49(79)=-acd49(78)*acd49(76)
      acd49(80)=-acd49(70)*acd49(71)
      acd49(81)=acd49(72)*acd49(51)
      acd49(82)=-acd49(22)*acd49(81)
      acd49(79)=acd49(80)+acd49(82)+acd49(79)
      acd49(79)=acd49(19)*acd49(79)
      acd49(80)=-acd49(62)*acd49(71)
      acd49(82)=-acd49(75)*acd49(76)
      acd49(83)=acd49(77)*acd49(51)
      acd49(84)=-acd49(22)*acd49(83)
      acd49(80)=acd49(80)+acd49(84)+acd49(82)
      acd49(80)=acd49(20)*acd49(80)
      acd49(82)=-acd49(78)*acd49(62)
      acd49(84)=-acd49(75)*acd49(69)
      acd49(64)=acd49(64)*acd49(39)
      acd49(85)=-acd49(22)*acd49(64)
      acd49(82)=acd49(85)+acd49(82)+acd49(84)
      acd49(82)=acd49(21)*acd49(82)
      acd49(84)=acd49(6)*acd49(62)
      acd49(69)=acd49(9)*acd49(69)
      acd49(64)=acd49(64)+acd49(84)+acd49(69)
      acd49(64)=acd49(23)*acd49(64)
      acd49(69)=-acd49(65)*acd49(71)
      acd49(71)=acd49(56)*acd49(6)
      acd49(84)=-acd49(24)*acd49(51)
      acd49(84)=-acd49(71)+acd49(84)
      acd49(75)=acd49(75)*acd49(84)
      acd49(78)=-acd49(32)*acd49(51)*acd49(78)
      acd49(69)=acd49(69)+acd49(78)+acd49(75)
      acd49(69)=acd49(43)*acd49(69)
      acd49(64)=acd49(80)+acd49(82)+acd49(64)+acd49(69)+acd49(68)+acd49(66)+acd&
      &49(79)
      acd49(63)=acd49(25)*acd49(63)
      acd49(66)=acd49(54)*acd49(17)
      acd49(68)=acd49(57)*acd49(27)
      acd49(69)=-acd49(58)*acd49(29)
      acd49(75)=acd49(59)*acd49(31)
      acd49(66)=acd49(75)+acd49(69)+acd49(68)+acd49(66)
      acd49(66)=acd49(67)*acd49(66)
      acd49(68)=acd49(42)*acd49(17)
      acd49(69)=acd49(45)*acd49(27)
      acd49(75)=-acd49(46)*acd49(29)
      acd49(78)=acd49(47)*acd49(31)
      acd49(68)=acd49(78)+acd49(75)+acd49(69)+acd49(68)
      acd49(68)=acd49(65)*acd49(68)
      acd49(69)=acd49(18)*acd49(17)
      acd49(75)=acd49(26)*acd49(27)
      acd49(78)=-acd49(28)*acd49(29)
      acd49(79)=acd49(30)*acd49(31)
      acd49(69)=acd49(79)+acd49(78)+acd49(75)+acd49(69)
      acd49(69)=acd49(62)*acd49(69)
      acd49(75)=acd49(16)*acd49(17)
      acd49(78)=acd49(33)*acd49(27)
      acd49(79)=-acd49(34)*acd49(29)
      acd49(80)=acd49(35)*acd49(31)
      acd49(75)=acd49(80)+acd49(79)+acd49(78)+acd49(75)
      acd49(75)=acd49(70)*acd49(75)
      acd49(78)=acd49(24)*acd49(9)
      acd49(79)=acd49(32)*acd49(6)
      acd49(78)=acd49(78)+acd49(79)
      acd49(79)=acd49(60)*acd49(51)
      acd49(80)=acd49(79)*acd49(78)
      acd49(82)=acd49(60)*acd49(9)
      acd49(84)=acd49(71)*acd49(82)
      acd49(80)=acd49(84)+acd49(80)
      acd49(84)=acd49(7)*acd49(65)
      acd49(84)=acd49(84)-acd49(80)
      acd49(84)=acd49(38)*acd49(84)
      acd49(85)=acd49(14)*acd49(65)
      acd49(80)=acd49(85)+acd49(80)
      acd49(80)=acd49(41)*acd49(80)
      acd49(85)=acd49(60)*acd49(39)
      acd49(86)=acd49(85)*acd49(78)
      acd49(82)=acd49(73)*acd49(82)
      acd49(82)=acd49(82)+acd49(86)
      acd49(86)=acd49(7)*acd49(67)
      acd49(86)=acd49(86)-acd49(82)
      acd49(86)=acd49(50)*acd49(86)
      acd49(87)=acd49(11)*acd49(67)
      acd49(72)=acd49(9)*acd49(72)
      acd49(88)=acd49(6)*acd49(77)
      acd49(89)=acd49(9)*acd49(6)
      acd49(90)=acd49(44)*acd49(89)
      acd49(72)=acd49(90)+acd49(72)+acd49(88)
      acd49(72)=acd49(61)*acd49(72)
      acd49(72)=acd49(87)+acd49(72)
      acd49(72)=acd49(52)*acd49(72)
      acd49(67)=acd49(14)*acd49(67)
      acd49(67)=acd49(67)+acd49(82)
      acd49(67)=acd49(53)*acd49(67)
      acd49(74)=acd49(79)*acd49(74)
      acd49(82)=acd49(71)*acd49(85)
      acd49(74)=acd49(74)+acd49(82)
      acd49(82)=acd49(7)*acd49(70)
      acd49(82)=acd49(82)-acd49(74)
      acd49(82)=acd49(5)*acd49(82)
      acd49(87)=acd49(7)*acd49(62)
      acd49(88)=acd49(44)*acd49(9)
      acd49(77)=acd49(88)+acd49(77)
      acd49(77)=acd49(77)*acd49(79)
      acd49(79)=acd49(85)*acd49(56)*acd49(9)
      acd49(77)=acd49(77)+acd49(79)
      acd49(79)=acd49(87)-acd49(77)
      acd49(79)=acd49(8)*acd49(79)
      acd49(73)=acd49(51)*acd49(73)
      acd49(71)=acd49(39)*acd49(71)
      acd49(71)=acd49(71)+acd49(81)+acd49(73)
      acd49(71)=acd49(61)*acd49(71)
      acd49(73)=acd49(11)*acd49(70)
      acd49(71)=acd49(73)+acd49(71)
      acd49(71)=acd49(10)*acd49(71)
      acd49(73)=acd49(11)*acd49(62)
      acd49(76)=acd49(9)*acd49(76)
      acd49(76)=acd49(83)+acd49(76)
      acd49(76)=acd49(61)*acd49(76)
      acd49(73)=acd49(73)+acd49(76)
      acd49(73)=acd49(12)*acd49(73)
      acd49(70)=acd49(14)*acd49(70)
      acd49(70)=acd49(70)+acd49(74)
      acd49(70)=acd49(13)*acd49(70)
      acd49(62)=acd49(14)*acd49(62)
      acd49(62)=acd49(62)+acd49(77)
      acd49(62)=acd49(15)*acd49(62)
      acd49(65)=acd49(11)*acd49(65)
      acd49(74)=acd49(51)*acd49(78)
      acd49(76)=acd49(56)*acd49(89)
      acd49(74)=acd49(76)+acd49(74)
      acd49(74)=acd49(61)*acd49(74)
      acd49(65)=acd49(65)+acd49(74)
      acd49(65)=acd49(40)*acd49(65)
      acd49(62)=acd49(67)+acd49(72)+acd49(86)+acd49(80)+acd49(65)+acd49(84)+acd&
      &49(62)+acd49(70)+acd49(73)+acd49(71)+acd49(79)+acd49(82)+acd49(63)+acd49&
      &(75)+acd49(69)+acd49(68)+acd49(66)+2.0_ki*acd49(64)
      brack=2.0_ki*acd49(62)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(40) :: acd49
      complex(ki) :: brack
      acd49(1)=d(iv1,iv2)
      acd49(2)=d(iv3,iv4)
      acd49(3)=spvak2k5(iv5)
      acd49(4)=abb49(37)
      acd49(5)=d(iv3,iv5)
      acd49(6)=spvak2k5(iv4)
      acd49(7)=d(iv4,iv5)
      acd49(8)=spvak2k5(iv3)
      acd49(9)=spvak1k2(iv5)
      acd49(10)=abb49(24)
      acd49(11)=spvak1k2(iv4)
      acd49(12)=spvak1k2(iv3)
      acd49(13)=d(iv1,iv3)
      acd49(14)=d(iv2,iv4)
      acd49(15)=d(iv2,iv5)
      acd49(16)=spvak2k5(iv2)
      acd49(17)=spvak1k2(iv2)
      acd49(18)=d(iv1,iv4)
      acd49(19)=d(iv2,iv3)
      acd49(20)=d(iv1,iv5)
      acd49(21)=spvak2k5(iv1)
      acd49(22)=spvak1k2(iv1)
      acd49(23)=acd49(9)*acd49(8)
      acd49(24)=acd49(12)*acd49(3)
      acd49(23)=acd49(23)+acd49(24)
      acd49(24)=acd49(16)*acd49(10)
      acd49(25)=acd49(24)*acd49(23)
      acd49(26)=2.0_ki*acd49(4)
      acd49(27)=acd49(26)*acd49(5)
      acd49(28)=acd49(16)*acd49(27)
      acd49(29)=acd49(15)*acd49(8)*acd49(26)
      acd49(30)=acd49(8)*acd49(10)
      acd49(31)=acd49(30)*acd49(3)
      acd49(32)=acd49(17)*acd49(31)
      acd49(25)=acd49(32)+acd49(29)+acd49(28)+acd49(25)
      acd49(25)=acd49(18)*acd49(25)
      acd49(28)=acd49(2)*acd49(3)
      acd49(29)=acd49(5)*acd49(6)
      acd49(32)=acd49(7)*acd49(8)
      acd49(28)=acd49(32)+acd49(28)+acd49(29)
      acd49(29)=acd49(24)*acd49(28)
      acd49(32)=acd49(14)*acd49(31)
      acd49(30)=acd49(30)*acd49(6)
      acd49(33)=acd49(15)*acd49(30)
      acd49(34)=acd49(3)*acd49(6)*acd49(10)
      acd49(35)=acd49(19)*acd49(34)
      acd49(29)=acd49(35)+acd49(33)+acd49(32)+acd49(29)
      acd49(29)=acd49(22)*acd49(29)
      acd49(32)=acd49(1)*acd49(4)*acd49(28)
      acd49(33)=acd49(21)*acd49(10)
      acd49(23)=acd49(33)*acd49(23)
      acd49(27)=acd49(21)*acd49(27)
      acd49(35)=acd49(26)*acd49(13)
      acd49(36)=acd49(3)*acd49(35)
      acd49(23)=acd49(36)+acd49(27)+acd49(23)
      acd49(23)=acd49(14)*acd49(23)
      acd49(27)=acd49(11)*acd49(8)
      acd49(36)=acd49(12)*acd49(6)
      acd49(27)=acd49(27)+acd49(36)
      acd49(36)=acd49(33)*acd49(27)
      acd49(37)=acd49(2)*acd49(26)*acd49(21)
      acd49(35)=acd49(6)*acd49(35)
      acd49(35)=acd49(35)+acd49(37)+acd49(36)
      acd49(35)=acd49(15)*acd49(35)
      acd49(28)=acd49(33)*acd49(28)
      acd49(36)=acd49(13)*acd49(34)
      acd49(28)=acd49(36)+acd49(28)
      acd49(28)=acd49(17)*acd49(28)
      acd49(36)=acd49(9)*acd49(6)
      acd49(37)=acd49(11)*acd49(3)
      acd49(36)=acd49(36)+acd49(37)
      acd49(37)=acd49(33)*acd49(36)
      acd49(38)=acd49(7)*acd49(21)
      acd49(39)=acd49(18)*acd49(3)
      acd49(38)=acd49(39)+acd49(38)
      acd49(38)=acd49(26)*acd49(38)
      acd49(37)=acd49(38)+acd49(37)
      acd49(37)=acd49(19)*acd49(37)
      acd49(38)=acd49(2)*acd49(16)
      acd49(39)=acd49(14)*acd49(8)
      acd49(40)=acd49(19)*acd49(6)
      acd49(38)=acd49(40)+acd49(39)+acd49(38)
      acd49(38)=acd49(26)*acd49(38)
      acd49(27)=acd49(24)*acd49(27)
      acd49(39)=acd49(17)*acd49(30)
      acd49(27)=acd49(39)+acd49(38)+acd49(27)
      acd49(27)=acd49(20)*acd49(27)
      acd49(30)=acd49(1)*acd49(30)
      acd49(33)=acd49(33)*acd49(16)
      acd49(38)=acd49(2)*acd49(33)
      acd49(30)=acd49(30)+acd49(38)
      acd49(30)=acd49(9)*acd49(30)
      acd49(31)=acd49(1)*acd49(31)
      acd49(38)=acd49(5)*acd49(33)
      acd49(31)=acd49(31)+acd49(38)
      acd49(31)=acd49(11)*acd49(31)
      acd49(34)=acd49(1)*acd49(34)
      acd49(33)=acd49(7)*acd49(33)
      acd49(33)=acd49(34)+acd49(33)
      acd49(33)=acd49(12)*acd49(33)
      acd49(24)=acd49(24)*acd49(36)
      acd49(26)=acd49(7)*acd49(16)*acd49(26)
      acd49(24)=acd49(26)+acd49(24)
      acd49(24)=acd49(13)*acd49(24)
      acd49(23)=acd49(29)+acd49(27)+acd49(37)+acd49(25)+acd49(28)+acd49(35)+acd&
      &49(23)+acd49(24)+acd49(33)+acd49(31)+2.0_ki*acd49(32)+acd49(30)
      brack=4.0_ki*acd49(23)
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd49h0
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
!---#[ subroutine reconstruct_d49:
   subroutine     reconstruct_d49(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group10
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group10), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_49:
      coeffs%coeffs_49%c0 = derivative(czip)
      coeffs%coeffs_49%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_49%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_49%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_49%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_49%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_49%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_49%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_49%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_49%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_49%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_49%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_49%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_49%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_49%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_49%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_49%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_49%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_49%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_49%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_49%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_49%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_49%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_49%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_49%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_49%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_49%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_49%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_49%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_49%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_49%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_49%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_49%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_49%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_49%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_49%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_49%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_49%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_49%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_49%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_49%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_49%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_49%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_49%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_49%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_49%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_49%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_49%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_49%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_49%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_49%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_49%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_49%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_49%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_49%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_49%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_49%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_49%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_49%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_49%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_49%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_49%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_49%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_49%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_49%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_49%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_49%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_49%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_49%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_49%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_49%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_49%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_49%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_49%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_49%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_49%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_49%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_49%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_49%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_49%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_49%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_49%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_49%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_49%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_49%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_49%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_49%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_49%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_49%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_49%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_49%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_49%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_49%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_49%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_49%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_49%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_49%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_49%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_49%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_49%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_49%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_49%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_49%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_49%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_49%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_49%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_49%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_49%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_49%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_49%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_49%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_49%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_49%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_49%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_49%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_49%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_49%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_49%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_49%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_49%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_49%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_49%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_49%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_49%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_49%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_49%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_49:
   end subroutine reconstruct_d49
!---#] subroutine reconstruct_d49:
end module     p0_gg_hhg_d49h0l1d
