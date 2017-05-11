module     p0_gg_hhg_d49h1l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d49h1l1d.f90
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
      use p0_gg_hhg_abbrevd49h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(45) :: acd49
      complex(ki) :: brack
      acd49(1)=dotproduct(k1,qshift)
      acd49(2)=dotproduct(qshift,spvak2k1)
      acd49(3)=dotproduct(qshift,spvak2k5)
      acd49(4)=abb49(23)
      acd49(5)=abb49(20)
      acd49(6)=abb49(33)
      acd49(7)=dotproduct(qshift,spvak2l4)
      acd49(8)=abb49(34)
      acd49(9)=abb49(28)
      acd49(10)=dotproduct(k2,qshift)
      acd49(11)=abb49(17)
      acd49(12)=abb49(11)
      acd49(13)=abb49(26)
      acd49(14)=dotproduct(l4,qshift)
      acd49(15)=abb49(13)
      acd49(16)=abb49(22)
      acd49(17)=dotproduct(k5,qshift)
      acd49(18)=abb49(19)
      acd49(19)=abb49(24)
      acd49(20)=dotproduct(qshift,qshift)
      acd49(21)=abb49(16)
      acd49(22)=abb49(27)
      acd49(23)=abb49(18)
      acd49(24)=abb49(35)
      acd49(25)=abb49(14)
      acd49(26)=abb49(9)
      acd49(27)=abb49(10)
      acd49(28)=abb49(12)
      acd49(29)=dotproduct(qshift,spvak1k5)
      acd49(30)=abb49(25)
      acd49(31)=dotproduct(qshift,spval4k5)
      acd49(32)=abb49(8)
      acd49(33)=abb49(15)
      acd49(34)=abb49(31)
      acd49(35)=abb49(36)
      acd49(36)=abb49(21)
      acd49(37)=-acd49(31)*acd49(32)
      acd49(38)=-acd49(29)*acd49(30)
      acd49(39)=-acd49(17)*acd49(18)
      acd49(40)=-acd49(14)*acd49(15)
      acd49(41)=-acd49(10)*acd49(12)
      acd49(42)=-acd49(7)*acd49(28)
      acd49(43)=acd49(20)*acd49(22)
      acd49(44)=-acd49(1)*acd49(5)
      acd49(45)=-acd49(2)*acd49(26)
      acd49(37)=acd49(45)+acd49(44)+acd49(43)+acd49(42)+acd49(41)+acd49(40)+acd&
      &49(39)+acd49(38)+acd49(33)+acd49(37)
      acd49(37)=acd49(2)*acd49(37)
      acd49(38)=acd49(1)-acd49(14)
      acd49(38)=acd49(4)*acd49(38)
      acd49(39)=acd49(10)*acd49(11)
      acd49(40)=-acd49(20)*acd49(21)
      acd49(38)=acd49(40)+acd49(39)-acd49(27)+acd49(38)
      acd49(38)=acd49(2)*acd49(38)
      acd49(39)=acd49(20)*acd49(23)
      acd49(40)=-acd49(1)*acd49(6)
      acd49(38)=acd49(38)+acd49(40)+acd49(34)+acd49(39)
      acd49(38)=acd49(3)*acd49(38)
      acd49(39)=acd49(17)*acd49(19)
      acd49(40)=-acd49(14)*acd49(16)
      acd49(41)=acd49(10)*acd49(13)
      acd49(42)=acd49(7)*acd49(35)
      acd49(43)=-acd49(7)*acd49(24)
      acd49(43)=-acd49(25)+acd49(43)
      acd49(43)=acd49(20)*acd49(43)
      acd49(44)=-acd49(7)*acd49(8)
      acd49(44)=acd49(9)+acd49(44)
      acd49(44)=acd49(1)*acd49(44)
      acd49(37)=acd49(38)+acd49(37)+acd49(44)+acd49(43)+acd49(42)+acd49(41)+acd&
      &49(40)-acd49(36)+acd49(39)
      brack=acd49(37)*acd49(3)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd49
      complex(ki) :: brack
      acd49(1)=k1(iv1)
      acd49(2)=dotproduct(qshift,spvak2k1)
      acd49(3)=dotproduct(qshift,spvak2k5)
      acd49(4)=abb49(23)
      acd49(5)=abb49(20)
      acd49(6)=abb49(33)
      acd49(7)=dotproduct(qshift,spvak2l4)
      acd49(8)=abb49(34)
      acd49(9)=abb49(28)
      acd49(10)=k2(iv1)
      acd49(11)=abb49(17)
      acd49(12)=abb49(11)
      acd49(13)=abb49(26)
      acd49(14)=l4(iv1)
      acd49(15)=abb49(13)
      acd49(16)=abb49(22)
      acd49(17)=k5(iv1)
      acd49(18)=abb49(19)
      acd49(19)=abb49(24)
      acd49(20)=qshift(iv1)
      acd49(21)=abb49(16)
      acd49(22)=abb49(27)
      acd49(23)=abb49(18)
      acd49(24)=abb49(35)
      acd49(25)=abb49(14)
      acd49(26)=spvak2k1(iv1)
      acd49(27)=dotproduct(k1,qshift)
      acd49(28)=dotproduct(k2,qshift)
      acd49(29)=dotproduct(l4,qshift)
      acd49(30)=dotproduct(k5,qshift)
      acd49(31)=dotproduct(qshift,qshift)
      acd49(32)=abb49(9)
      acd49(33)=abb49(10)
      acd49(34)=abb49(12)
      acd49(35)=dotproduct(qshift,spvak1k5)
      acd49(36)=abb49(25)
      acd49(37)=dotproduct(qshift,spval4k5)
      acd49(38)=abb49(8)
      acd49(39)=abb49(15)
      acd49(40)=spvak2k5(iv1)
      acd49(41)=abb49(31)
      acd49(42)=abb49(36)
      acd49(43)=abb49(21)
      acd49(44)=spvak2l4(iv1)
      acd49(45)=spvak1k5(iv1)
      acd49(46)=spval4k5(iv1)
      acd49(47)=acd49(29)-acd49(27)
      acd49(47)=acd49(4)*acd49(47)
      acd49(48)=acd49(28)*acd49(11)
      acd49(49)=acd49(31)*acd49(21)
      acd49(47)=acd49(33)-acd49(48)+acd49(49)+acd49(47)
      acd49(48)=2.0_ki*acd49(40)
      acd49(49)=acd49(47)*acd49(48)
      acd49(50)=acd49(38)*acd49(46)
      acd49(51)=acd49(36)*acd49(45)
      acd49(52)=acd49(18)*acd49(17)
      acd49(53)=acd49(14)*acd49(15)
      acd49(54)=acd49(10)*acd49(12)
      acd49(55)=acd49(44)*acd49(34)
      acd49(56)=2.0_ki*acd49(20)
      acd49(57)=-acd49(22)*acd49(56)
      acd49(58)=acd49(1)*acd49(5)
      acd49(59)=acd49(26)*acd49(32)
      acd49(49)=acd49(49)+2.0_ki*acd49(59)+acd49(58)+acd49(57)+acd49(55)+acd49(&
      &54)+acd49(53)+acd49(52)+acd49(50)+acd49(51)
      acd49(49)=acd49(2)*acd49(49)
      acd49(50)=acd49(38)*acd49(37)
      acd49(51)=acd49(36)*acd49(35)
      acd49(52)=acd49(18)*acd49(30)
      acd49(53)=acd49(29)*acd49(15)
      acd49(54)=acd49(28)*acd49(12)
      acd49(55)=acd49(7)*acd49(34)
      acd49(57)=acd49(31)*acd49(22)
      acd49(58)=acd49(27)*acd49(5)
      acd49(50)=acd49(55)-acd49(57)+acd49(58)-acd49(39)+acd49(50)+acd49(53)+acd&
      &49(54)+acd49(51)+acd49(52)
      acd49(51)=acd49(26)*acd49(50)
      acd49(47)=acd49(26)*acd49(47)
      acd49(52)=-acd49(10)*acd49(11)
      acd49(53)=acd49(21)*acd49(56)
      acd49(54)=acd49(14)-acd49(1)
      acd49(54)=acd49(4)*acd49(54)
      acd49(52)=acd49(54)+acd49(52)+acd49(53)
      acd49(52)=acd49(2)*acd49(52)
      acd49(53)=-acd49(23)*acd49(56)
      acd49(54)=acd49(1)*acd49(6)
      acd49(47)=acd49(52)+acd49(47)+acd49(53)+acd49(54)
      acd49(47)=acd49(3)*acd49(47)
      acd49(52)=acd49(31)*acd49(24)
      acd49(53)=acd49(27)*acd49(8)
      acd49(52)=acd49(53)+acd49(52)-acd49(42)
      acd49(52)=acd49(44)*acd49(52)
      acd49(53)=acd49(24)*acd49(56)
      acd49(54)=acd49(1)*acd49(8)
      acd49(53)=acd49(53)+acd49(54)
      acd49(53)=acd49(7)*acd49(53)
      acd49(54)=-acd49(31)*acd49(23)
      acd49(55)=acd49(27)*acd49(6)
      acd49(54)=acd49(55)-acd49(41)+acd49(54)
      acd49(48)=acd49(54)*acd49(48)
      acd49(54)=-acd49(17)*acd49(19)
      acd49(55)=acd49(14)*acd49(16)
      acd49(57)=-acd49(10)*acd49(13)
      acd49(56)=acd49(25)*acd49(56)
      acd49(58)=-acd49(1)*acd49(9)
      acd49(47)=acd49(47)+acd49(49)+acd49(48)+acd49(51)+acd49(53)+acd49(58)+acd&
      &49(56)+acd49(57)+acd49(54)+acd49(55)+acd49(52)
      acd49(47)=acd49(3)*acd49(47)
      acd49(48)=acd49(2)*acd49(32)
      acd49(48)=acd49(50)+acd49(48)
      acd49(48)=acd49(2)*acd49(48)
      acd49(49)=-acd49(30)*acd49(19)
      acd49(50)=acd49(29)*acd49(16)
      acd49(51)=-acd49(28)*acd49(13)
      acd49(52)=-acd49(7)*acd49(42)
      acd49(53)=acd49(7)*acd49(24)
      acd49(53)=acd49(25)+acd49(53)
      acd49(53)=acd49(31)*acd49(53)
      acd49(54)=acd49(7)*acd49(8)
      acd49(54)=-acd49(9)+acd49(54)
      acd49(54)=acd49(27)*acd49(54)
      acd49(48)=acd49(48)+acd49(54)+acd49(53)+acd49(52)+acd49(51)+acd49(50)+acd&
      &49(43)+acd49(49)
      acd49(48)=acd49(40)*acd49(48)
      brack=acd49(47)+acd49(48)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(73) :: acd49
      complex(ki) :: brack
      acd49(1)=d(iv1,iv2)
      acd49(2)=dotproduct(qshift,spvak2k1)
      acd49(3)=dotproduct(qshift,spvak2k5)
      acd49(4)=abb49(16)
      acd49(5)=abb49(27)
      acd49(6)=abb49(18)
      acd49(7)=dotproduct(qshift,spvak2l4)
      acd49(8)=abb49(35)
      acd49(9)=abb49(14)
      acd49(10)=k1(iv1)
      acd49(11)=spvak2k1(iv2)
      acd49(12)=abb49(23)
      acd49(13)=abb49(20)
      acd49(14)=spvak2k5(iv2)
      acd49(15)=abb49(33)
      acd49(16)=abb49(34)
      acd49(17)=abb49(28)
      acd49(18)=spvak2l4(iv2)
      acd49(19)=k1(iv2)
      acd49(20)=spvak2k1(iv1)
      acd49(21)=spvak2k5(iv1)
      acd49(22)=spvak2l4(iv1)
      acd49(23)=k2(iv1)
      acd49(24)=abb49(17)
      acd49(25)=abb49(11)
      acd49(26)=abb49(26)
      acd49(27)=k2(iv2)
      acd49(28)=l4(iv1)
      acd49(29)=abb49(13)
      acd49(30)=abb49(22)
      acd49(31)=l4(iv2)
      acd49(32)=k5(iv1)
      acd49(33)=abb49(19)
      acd49(34)=abb49(24)
      acd49(35)=k5(iv2)
      acd49(36)=qshift(iv1)
      acd49(37)=qshift(iv2)
      acd49(38)=abb49(9)
      acd49(39)=dotproduct(k1,qshift)
      acd49(40)=dotproduct(k2,qshift)
      acd49(41)=dotproduct(l4,qshift)
      acd49(42)=dotproduct(k5,qshift)
      acd49(43)=dotproduct(qshift,qshift)
      acd49(44)=abb49(10)
      acd49(45)=abb49(12)
      acd49(46)=dotproduct(qshift,spvak1k5)
      acd49(47)=abb49(25)
      acd49(48)=dotproduct(qshift,spval4k5)
      acd49(49)=abb49(8)
      acd49(50)=abb49(15)
      acd49(51)=spvak1k5(iv2)
      acd49(52)=spval4k5(iv2)
      acd49(53)=spvak1k5(iv1)
      acd49(54)=spval4k5(iv1)
      acd49(55)=abb49(31)
      acd49(56)=abb49(36)
      acd49(57)=acd49(49)*acd49(48)
      acd49(58)=acd49(47)*acd49(46)
      acd49(59)=acd49(33)*acd49(42)
      acd49(60)=acd49(29)*acd49(41)
      acd49(61)=acd49(25)*acd49(40)
      acd49(62)=acd49(7)*acd49(45)
      acd49(63)=acd49(43)*acd49(5)
      acd49(64)=acd49(39)*acd49(13)
      acd49(57)=-acd49(57)-acd49(58)-acd49(59)-acd49(60)+acd49(50)-acd49(61)-ac&
      &d49(62)+acd49(63)-acd49(64)
      acd49(58)=acd49(11)*acd49(57)
      acd49(59)=acd49(49)*acd49(52)
      acd49(60)=acd49(47)*acd49(51)
      acd49(61)=acd49(33)*acd49(35)
      acd49(62)=acd49(29)*acd49(31)
      acd49(63)=acd49(25)*acd49(27)
      acd49(64)=acd49(18)*acd49(45)
      acd49(65)=acd49(19)*acd49(13)
      acd49(66)=2.0_ki*acd49(37)
      acd49(67)=acd49(66)*acd49(5)
      acd49(59)=acd49(63)+acd49(64)+acd49(65)-acd49(67)+acd49(59)+acd49(60)+acd&
      &49(61)+acd49(62)
      acd49(60)=2.0_ki*acd49(38)
      acd49(61)=-acd49(11)*acd49(60)
      acd49(61)=acd49(61)-acd49(59)
      acd49(61)=acd49(2)*acd49(61)
      acd49(62)=acd49(43)*acd49(8)
      acd49(63)=acd49(39)*acd49(16)
      acd49(62)=-acd49(56)+acd49(62)+acd49(63)
      acd49(63)=-acd49(18)*acd49(62)
      acd49(64)=acd49(7)*acd49(8)
      acd49(64)=acd49(64)+acd49(9)
      acd49(65)=-acd49(64)*acd49(66)
      acd49(67)=acd49(35)*acd49(34)
      acd49(68)=-acd49(31)*acd49(30)
      acd49(69)=acd49(27)*acd49(26)
      acd49(70)=acd49(7)*acd49(16)
      acd49(70)=acd49(70)-acd49(17)
      acd49(71)=-acd49(19)*acd49(70)
      acd49(58)=acd49(61)+acd49(58)+acd49(71)+acd49(65)+acd49(69)+acd49(67)+acd&
      &49(68)+acd49(63)
      acd49(58)=acd49(21)*acd49(58)
      acd49(61)=acd49(49)*acd49(54)
      acd49(63)=acd49(47)*acd49(53)
      acd49(65)=acd49(33)*acd49(32)
      acd49(67)=acd49(29)*acd49(28)
      acd49(68)=acd49(25)*acd49(23)
      acd49(69)=acd49(22)*acd49(45)
      acd49(71)=acd49(10)*acd49(13)
      acd49(72)=2.0_ki*acd49(36)
      acd49(73)=acd49(72)*acd49(5)
      acd49(60)=acd49(60)*acd49(20)
      acd49(60)=acd49(69)+acd49(71)-acd49(73)+acd49(60)+acd49(61)+acd49(67)+acd&
      &49(68)+acd49(63)+acd49(65)
      acd49(61)=-acd49(2)*acd49(60)
      acd49(57)=acd49(20)*acd49(57)
      acd49(63)=acd49(39)-acd49(41)
      acd49(63)=acd49(63)*acd49(12)
      acd49(65)=acd49(24)*acd49(40)
      acd49(67)=acd49(4)*acd49(43)
      acd49(63)=acd49(63)-acd49(44)+acd49(65)-acd49(67)
      acd49(65)=acd49(2)*acd49(63)
      acd49(67)=acd49(43)*acd49(6)
      acd49(68)=-acd49(39)*acd49(15)
      acd49(65)=acd49(65)+acd49(68)+acd49(55)+acd49(67)
      acd49(67)=2.0_ki*acd49(21)
      acd49(65)=acd49(65)*acd49(67)
      acd49(62)=-acd49(22)*acd49(62)
      acd49(68)=-acd49(64)*acd49(72)
      acd49(69)=acd49(32)*acd49(34)
      acd49(71)=-acd49(28)*acd49(30)
      acd49(73)=acd49(23)*acd49(26)
      acd49(70)=-acd49(10)*acd49(70)
      acd49(57)=acd49(65)+acd49(61)+acd49(57)+acd49(70)+acd49(68)+acd49(73)+acd&
      &49(69)+acd49(71)+acd49(62)
      acd49(57)=acd49(14)*acd49(57)
      acd49(60)=-acd49(11)*acd49(60)
      acd49(59)=-acd49(20)*acd49(59)
      acd49(61)=acd49(20)*acd49(63)
      acd49(62)=acd49(10)-acd49(28)
      acd49(62)=acd49(62)*acd49(12)
      acd49(65)=acd49(24)*acd49(23)
      acd49(68)=acd49(72)*acd49(4)
      acd49(62)=acd49(62)+acd49(65)-acd49(68)
      acd49(65)=acd49(2)*acd49(62)
      acd49(68)=acd49(6)*acd49(72)
      acd49(69)=-acd49(10)*acd49(15)
      acd49(61)=acd49(65)+acd49(61)+acd49(68)+acd49(69)
      acd49(61)=acd49(14)*acd49(61)
      acd49(65)=-acd49(37)*acd49(22)
      acd49(68)=-acd49(36)*acd49(18)
      acd49(65)=acd49(68)+acd49(65)
      acd49(65)=acd49(8)*acd49(65)
      acd49(64)=-acd49(1)*acd49(64)
      acd49(61)=acd49(61)+acd49(65)+acd49(64)
      acd49(63)=acd49(11)*acd49(63)
      acd49(64)=acd49(19)-acd49(31)
      acd49(64)=acd49(64)*acd49(12)
      acd49(65)=acd49(24)*acd49(27)
      acd49(68)=acd49(66)*acd49(4)
      acd49(64)=acd49(64)+acd49(65)-acd49(68)
      acd49(65)=acd49(2)*acd49(64)
      acd49(66)=acd49(6)*acd49(66)
      acd49(68)=-acd49(19)*acd49(15)
      acd49(63)=acd49(65)+acd49(63)+acd49(66)+acd49(68)
      acd49(63)=acd49(63)*acd49(67)
      acd49(64)=acd49(20)*acd49(64)
      acd49(62)=acd49(11)*acd49(62)
      acd49(65)=acd49(2)*acd49(1)
      acd49(66)=2.0_ki*acd49(4)
      acd49(66)=-acd49(66)*acd49(65)
      acd49(67)=2.0_ki*acd49(1)
      acd49(67)=acd49(6)*acd49(67)
      acd49(62)=acd49(66)+acd49(62)+acd49(67)+acd49(64)
      acd49(62)=acd49(3)*acd49(62)
      acd49(64)=-acd49(19)*acd49(22)
      acd49(66)=-acd49(10)*acd49(18)
      acd49(64)=acd49(66)+acd49(64)
      acd49(64)=acd49(16)*acd49(64)
      acd49(66)=2.0_ki*acd49(5)
      acd49(65)=acd49(66)*acd49(65)
      acd49(59)=acd49(62)+acd49(63)+acd49(65)+acd49(60)+acd49(59)+acd49(64)+2.0&
      &_ki*acd49(61)
      acd49(59)=acd49(3)*acd49(59)
      brack=acd49(57)+acd49(58)+acd49(59)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd49
      complex(ki) :: brack
      acd49(1)=d(iv1,iv2)
      acd49(2)=spvak2k1(iv3)
      acd49(3)=dotproduct(qshift,spvak2k5)
      acd49(4)=abb49(16)
      acd49(5)=abb49(27)
      acd49(6)=spvak2k5(iv3)
      acd49(7)=dotproduct(qshift,spvak2k1)
      acd49(8)=abb49(18)
      acd49(9)=dotproduct(qshift,spvak2l4)
      acd49(10)=abb49(35)
      acd49(11)=abb49(14)
      acd49(12)=spvak2l4(iv3)
      acd49(13)=d(iv1,iv3)
      acd49(14)=spvak2k1(iv2)
      acd49(15)=spvak2k5(iv2)
      acd49(16)=spvak2l4(iv2)
      acd49(17)=d(iv2,iv3)
      acd49(18)=spvak2k1(iv1)
      acd49(19)=spvak2k5(iv1)
      acd49(20)=spvak2l4(iv1)
      acd49(21)=k1(iv1)
      acd49(22)=abb49(23)
      acd49(23)=abb49(20)
      acd49(24)=abb49(33)
      acd49(25)=abb49(34)
      acd49(26)=k1(iv2)
      acd49(27)=k1(iv3)
      acd49(28)=k2(iv1)
      acd49(29)=abb49(17)
      acd49(30)=abb49(11)
      acd49(31)=k2(iv2)
      acd49(32)=k2(iv3)
      acd49(33)=l4(iv1)
      acd49(34)=abb49(13)
      acd49(35)=l4(iv2)
      acd49(36)=l4(iv3)
      acd49(37)=k5(iv1)
      acd49(38)=abb49(19)
      acd49(39)=k5(iv2)
      acd49(40)=k5(iv3)
      acd49(41)=qshift(iv1)
      acd49(42)=qshift(iv2)
      acd49(43)=qshift(iv3)
      acd49(44)=abb49(9)
      acd49(45)=dotproduct(k1,qshift)
      acd49(46)=dotproduct(k2,qshift)
      acd49(47)=dotproduct(l4,qshift)
      acd49(48)=dotproduct(qshift,qshift)
      acd49(49)=abb49(10)
      acd49(50)=abb49(12)
      acd49(51)=spvak1k5(iv3)
      acd49(52)=abb49(25)
      acd49(53)=spval4k5(iv3)
      acd49(54)=abb49(8)
      acd49(55)=spvak1k5(iv2)
      acd49(56)=spval4k5(iv2)
      acd49(57)=spvak1k5(iv1)
      acd49(58)=spval4k5(iv1)
      acd49(59)=acd49(54)*acd49(53)
      acd49(60)=acd49(52)*acd49(51)
      acd49(61)=acd49(38)*acd49(40)
      acd49(62)=acd49(34)*acd49(36)
      acd49(63)=acd49(30)*acd49(32)
      acd49(64)=acd49(12)*acd49(50)
      acd49(65)=acd49(27)*acd49(23)
      acd49(66)=2.0_ki*acd49(5)
      acd49(67)=acd49(66)*acd49(43)
      acd49(59)=acd49(60)+acd49(61)+acd49(62)+acd49(63)-acd49(67)+acd49(59)+acd&
      &49(64)+acd49(65)
      acd49(60)=acd49(14)*acd49(59)
      acd49(61)=acd49(54)*acd49(56)
      acd49(62)=acd49(52)*acd49(55)
      acd49(63)=acd49(38)*acd49(39)
      acd49(64)=acd49(34)*acd49(35)
      acd49(65)=acd49(30)*acd49(31)
      acd49(67)=acd49(16)*acd49(50)
      acd49(68)=acd49(26)*acd49(23)
      acd49(69)=acd49(66)*acd49(42)
      acd49(61)=acd49(62)+acd49(63)+acd49(64)+acd49(65)-acd49(69)+acd49(61)+acd&
      &49(67)+acd49(68)
      acd49(62)=2.0_ki*acd49(44)
      acd49(63)=acd49(14)*acd49(62)
      acd49(63)=acd49(63)+acd49(61)
      acd49(63)=acd49(2)*acd49(63)
      acd49(64)=acd49(27)-acd49(36)
      acd49(65)=acd49(64)*acd49(22)
      acd49(67)=acd49(29)*acd49(32)
      acd49(68)=2.0_ki*acd49(4)
      acd49(69)=acd49(68)*acd49(43)
      acd49(65)=-acd49(69)+acd49(65)+acd49(67)
      acd49(67)=-acd49(14)*acd49(65)
      acd49(69)=acd49(26)-acd49(35)
      acd49(70)=acd49(69)*acd49(22)
      acd49(71)=acd49(29)*acd49(31)
      acd49(72)=acd49(68)*acd49(42)
      acd49(70)=-acd49(72)+acd49(70)+acd49(71)
      acd49(71)=-acd49(2)*acd49(70)
      acd49(72)=acd49(4)*acd49(7)
      acd49(72)=acd49(72)-acd49(8)
      acd49(73)=acd49(17)*acd49(72)
      acd49(67)=acd49(71)+2.0_ki*acd49(73)+acd49(67)
      acd49(71)=2.0_ki*acd49(3)
      acd49(67)=acd49(67)*acd49(71)
      acd49(73)=acd49(43)*acd49(16)
      acd49(74)=acd49(42)*acd49(12)
      acd49(75)=acd49(17)*acd49(9)
      acd49(73)=acd49(75)+acd49(73)+acd49(74)
      acd49(74)=2.0_ki*acd49(10)
      acd49(73)=acd49(73)*acd49(74)
      acd49(75)=acd49(27)*acd49(16)
      acd49(76)=acd49(26)*acd49(12)
      acd49(75)=acd49(75)+acd49(76)
      acd49(75)=acd49(25)*acd49(75)
      acd49(76)=acd49(66)*acd49(7)
      acd49(76)=-acd49(76)+2.0_ki*acd49(11)
      acd49(77)=acd49(17)*acd49(76)
      acd49(60)=acd49(67)+acd49(63)+acd49(60)+acd49(73)+acd49(77)+acd49(75)
      acd49(60)=acd49(19)*acd49(60)
      acd49(63)=acd49(54)*acd49(58)
      acd49(67)=acd49(52)*acd49(57)
      acd49(73)=acd49(38)*acd49(37)
      acd49(75)=acd49(34)*acd49(33)
      acd49(77)=acd49(30)*acd49(28)
      acd49(78)=acd49(20)*acd49(50)
      acd49(79)=acd49(21)*acd49(23)
      acd49(62)=acd49(62)*acd49(18)
      acd49(66)=acd49(66)*acd49(41)
      acd49(62)=acd49(63)+acd49(67)+acd49(73)+acd49(75)+acd49(77)+acd49(78)+acd&
      &49(79)+acd49(62)-acd49(66)
      acd49(63)=acd49(2)*acd49(62)
      acd49(59)=acd49(18)*acd49(59)
      acd49(66)=acd49(45)-acd49(47)
      acd49(66)=acd49(66)*acd49(22)
      acd49(67)=acd49(29)*acd49(46)
      acd49(73)=acd49(4)*acd49(48)
      acd49(66)=-acd49(66)-acd49(67)+acd49(73)+acd49(49)
      acd49(67)=acd49(2)*acd49(66)
      acd49(73)=acd49(22)*acd49(7)
      acd49(64)=-acd49(64)*acd49(73)
      acd49(75)=2.0_ki*acd49(43)
      acd49(75)=-acd49(8)*acd49(75)
      acd49(77)=acd49(27)*acd49(24)
      acd49(78)=acd49(7)*acd49(29)
      acd49(79)=-acd49(32)*acd49(78)
      acd49(80)=acd49(68)*acd49(7)
      acd49(81)=acd49(43)*acd49(80)
      acd49(64)=acd49(67)+acd49(64)+acd49(81)+acd49(79)+acd49(75)+acd49(77)
      acd49(67)=2.0_ki*acd49(19)
      acd49(64)=acd49(64)*acd49(67)
      acd49(65)=-acd49(18)*acd49(65)
      acd49(75)=acd49(21)-acd49(33)
      acd49(77)=acd49(75)*acd49(22)
      acd49(79)=acd49(29)*acd49(28)
      acd49(68)=acd49(68)*acd49(41)
      acd49(68)=-acd49(68)+acd49(77)+acd49(79)
      acd49(77)=-acd49(2)*acd49(68)
      acd49(79)=acd49(13)*acd49(72)
      acd49(65)=acd49(77)+2.0_ki*acd49(79)+acd49(65)
      acd49(65)=acd49(65)*acd49(71)
      acd49(77)=acd49(43)*acd49(20)
      acd49(79)=acd49(41)*acd49(12)
      acd49(81)=acd49(13)*acd49(9)
      acd49(77)=acd49(81)+acd49(77)+acd49(79)
      acd49(77)=acd49(77)*acd49(74)
      acd49(79)=acd49(27)*acd49(20)
      acd49(81)=acd49(21)*acd49(12)
      acd49(79)=acd49(79)+acd49(81)
      acd49(79)=acd49(25)*acd49(79)
      acd49(81)=acd49(13)*acd49(76)
      acd49(59)=acd49(64)+acd49(65)+acd49(63)+acd49(59)+acd49(77)+acd49(81)+acd&
      &49(79)
      acd49(59)=acd49(15)*acd49(59)
      acd49(62)=acd49(14)*acd49(62)
      acd49(61)=acd49(18)*acd49(61)
      acd49(63)=acd49(14)*acd49(66)
      acd49(64)=-acd49(69)*acd49(73)
      acd49(65)=2.0_ki*acd49(42)
      acd49(65)=-acd49(8)*acd49(65)
      acd49(69)=acd49(26)*acd49(24)
      acd49(77)=-acd49(31)*acd49(78)
      acd49(79)=acd49(42)*acd49(80)
      acd49(63)=acd49(63)+acd49(64)+acd49(79)+acd49(77)+acd49(65)+acd49(69)
      acd49(63)=acd49(63)*acd49(67)
      acd49(64)=acd49(18)*acd49(66)
      acd49(65)=-acd49(75)*acd49(73)
      acd49(66)=2.0_ki*acd49(41)
      acd49(66)=-acd49(8)*acd49(66)
      acd49(67)=acd49(21)*acd49(24)
      acd49(69)=-acd49(28)*acd49(78)
      acd49(73)=acd49(41)*acd49(80)
      acd49(64)=acd49(64)+acd49(65)+acd49(73)+acd49(69)+acd49(66)+acd49(67)
      acd49(64)=acd49(15)*acd49(64)
      acd49(65)=-acd49(18)*acd49(70)
      acd49(66)=-acd49(14)*acd49(68)
      acd49(67)=acd49(1)*acd49(72)
      acd49(65)=acd49(66)+2.0_ki*acd49(67)+acd49(65)
      acd49(65)=acd49(65)*acd49(71)
      acd49(66)=acd49(42)*acd49(20)
      acd49(67)=acd49(41)*acd49(16)
      acd49(68)=acd49(1)*acd49(9)
      acd49(66)=acd49(68)+acd49(66)+acd49(67)
      acd49(66)=acd49(66)*acd49(74)
      acd49(67)=acd49(26)*acd49(20)
      acd49(68)=acd49(21)*acd49(16)
      acd49(67)=acd49(67)+acd49(68)
      acd49(67)=acd49(25)*acd49(67)
      acd49(68)=acd49(1)*acd49(76)
      acd49(61)=2.0_ki*acd49(64)+acd49(63)+acd49(65)+acd49(62)+acd49(61)+acd49(&
      &66)+acd49(68)+acd49(67)
      acd49(61)=acd49(6)*acd49(61)
      acd49(62)=acd49(18)*acd49(17)
      acd49(63)=acd49(14)*acd49(13)
      acd49(64)=acd49(2)*acd49(1)
      acd49(62)=acd49(64)+acd49(62)+acd49(63)
      acd49(63)=acd49(3)*acd49(4)
      acd49(63)=acd49(63)-acd49(5)
      acd49(62)=acd49(62)*acd49(63)
      acd49(63)=acd49(17)*acd49(20)
      acd49(64)=acd49(13)*acd49(16)
      acd49(65)=acd49(1)*acd49(12)
      acd49(63)=acd49(65)+acd49(63)+acd49(64)
      acd49(63)=acd49(10)*acd49(63)
      acd49(62)=acd49(63)+acd49(62)
      acd49(62)=acd49(62)*acd49(71)
      brack=acd49(59)+acd49(60)+acd49(61)+acd49(62)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd49
      complex(ki) :: brack
      acd49(1)=d(iv1,iv2)
      acd49(2)=spvak2k1(iv3)
      acd49(3)=spvak2k5(iv4)
      acd49(4)=dotproduct(qshift,spvak2k5)
      acd49(5)=abb49(16)
      acd49(6)=abb49(27)
      acd49(7)=spvak2k1(iv4)
      acd49(8)=spvak2k5(iv3)
      acd49(9)=dotproduct(qshift,spvak2k1)
      acd49(10)=abb49(18)
      acd49(11)=spvak2l4(iv4)
      acd49(12)=abb49(35)
      acd49(13)=spvak2l4(iv3)
      acd49(14)=d(iv1,iv3)
      acd49(15)=spvak2k1(iv2)
      acd49(16)=spvak2k5(iv2)
      acd49(17)=spvak2l4(iv2)
      acd49(18)=d(iv1,iv4)
      acd49(19)=d(iv2,iv3)
      acd49(20)=spvak2k1(iv1)
      acd49(21)=spvak2k5(iv1)
      acd49(22)=spvak2l4(iv1)
      acd49(23)=d(iv2,iv4)
      acd49(24)=d(iv3,iv4)
      acd49(25)=k1(iv1)
      acd49(26)=abb49(23)
      acd49(27)=k1(iv2)
      acd49(28)=k1(iv3)
      acd49(29)=k1(iv4)
      acd49(30)=k2(iv1)
      acd49(31)=abb49(17)
      acd49(32)=k2(iv2)
      acd49(33)=k2(iv3)
      acd49(34)=k2(iv4)
      acd49(35)=l4(iv1)
      acd49(36)=l4(iv2)
      acd49(37)=l4(iv3)
      acd49(38)=l4(iv4)
      acd49(39)=qshift(iv1)
      acd49(40)=qshift(iv2)
      acd49(41)=qshift(iv3)
      acd49(42)=qshift(iv4)
      acd49(43)=acd49(19)*acd49(3)
      acd49(44)=acd49(23)*acd49(8)
      acd49(45)=acd49(24)*acd49(16)
      acd49(43)=acd49(45)+acd49(43)+acd49(44)
      acd49(44)=acd49(5)*acd49(21)
      acd49(45)=-acd49(44)*acd49(43)
      acd49(46)=acd49(14)*acd49(3)
      acd49(47)=acd49(18)*acd49(8)
      acd49(46)=acd49(46)+acd49(47)
      acd49(47)=acd49(5)*acd49(16)
      acd49(48)=-acd49(47)*acd49(46)
      acd49(49)=acd49(1)*acd49(3)
      acd49(50)=acd49(5)*acd49(8)
      acd49(51)=-acd49(50)*acd49(49)
      acd49(45)=acd49(51)+acd49(45)+acd49(48)
      acd49(45)=acd49(9)*acd49(45)
      acd49(48)=acd49(21)*acd49(43)
      acd49(51)=acd49(16)*acd49(46)
      acd49(52)=acd49(8)*acd49(49)
      acd49(48)=acd49(52)+acd49(48)+acd49(51)
      acd49(48)=acd49(10)*acd49(48)
      acd49(51)=acd49(2)*acd49(3)
      acd49(52)=acd49(7)*acd49(8)
      acd49(51)=acd49(51)+acd49(52)
      acd49(52)=-acd49(47)*acd49(51)
      acd49(53)=acd49(15)*acd49(3)
      acd49(54)=-acd49(50)*acd49(53)
      acd49(52)=acd49(54)+acd49(52)
      acd49(52)=acd49(39)*acd49(52)
      acd49(54)=-acd49(44)*acd49(51)
      acd49(55)=acd49(20)*acd49(3)
      acd49(56)=-acd49(50)*acd49(55)
      acd49(54)=acd49(56)+acd49(54)
      acd49(54)=acd49(40)*acd49(54)
      acd49(56)=acd49(7)*acd49(16)
      acd49(56)=acd49(56)+acd49(53)
      acd49(57)=-acd49(44)*acd49(56)
      acd49(58)=-acd49(47)*acd49(55)
      acd49(57)=acd49(58)+acd49(57)
      acd49(57)=acd49(41)*acd49(57)
      acd49(58)=acd49(2)*acd49(16)
      acd49(59)=acd49(15)*acd49(8)
      acd49(58)=acd49(58)+acd49(59)
      acd49(59)=-acd49(44)*acd49(58)
      acd49(60)=acd49(20)*acd49(8)
      acd49(61)=-acd49(47)*acd49(60)
      acd49(59)=acd49(61)+acd49(59)
      acd49(59)=acd49(42)*acd49(59)
      acd49(45)=acd49(45)+acd49(48)+acd49(52)+acd49(54)+acd49(57)+acd49(59)
      acd49(48)=acd49(16)*acd49(51)
      acd49(52)=acd49(8)*acd49(53)
      acd49(48)=acd49(52)+acd49(48)
      acd49(48)=acd49(30)*acd49(48)
      acd49(52)=acd49(21)*acd49(51)
      acd49(54)=acd49(3)*acd49(60)
      acd49(52)=acd49(54)+acd49(52)
      acd49(52)=acd49(32)*acd49(52)
      acd49(54)=acd49(21)*acd49(56)
      acd49(57)=acd49(20)*acd49(16)
      acd49(59)=acd49(3)*acd49(57)
      acd49(54)=acd49(59)+acd49(54)
      acd49(54)=acd49(33)*acd49(54)
      acd49(59)=acd49(21)*acd49(58)
      acd49(61)=acd49(8)*acd49(57)
      acd49(59)=acd49(61)+acd49(59)
      acd49(59)=acd49(34)*acd49(59)
      acd49(48)=acd49(59)+acd49(54)+acd49(52)+acd49(48)
      acd49(48)=acd49(31)*acd49(48)
      acd49(52)=acd49(26)*acd49(21)
      acd49(54)=acd49(52)*acd49(51)
      acd49(59)=acd49(26)*acd49(8)
      acd49(61)=acd49(55)*acd49(59)
      acd49(54)=acd49(54)+acd49(61)
      acd49(61)=-acd49(36)+acd49(27)
      acd49(54)=acd49(54)*acd49(61)
      acd49(61)=acd49(26)*acd49(16)
      acd49(62)=acd49(61)*acd49(51)
      acd49(53)=acd49(53)*acd49(59)
      acd49(53)=acd49(53)+acd49(62)
      acd49(59)=-acd49(35)+acd49(25)
      acd49(53)=acd49(53)*acd49(59)
      acd49(59)=acd49(52)*acd49(56)
      acd49(62)=acd49(55)*acd49(61)
      acd49(59)=acd49(62)+acd49(59)
      acd49(62)=-acd49(37)+acd49(28)
      acd49(59)=acd49(59)*acd49(62)
      acd49(52)=acd49(52)*acd49(58)
      acd49(61)=acd49(60)*acd49(61)
      acd49(52)=acd49(61)+acd49(52)
      acd49(61)=-acd49(38)+acd49(29)
      acd49(52)=acd49(52)*acd49(61)
      acd49(61)=acd49(5)*acd49(3)
      acd49(62)=-acd49(2)*acd49(61)
      acd49(63)=-acd49(7)*acd49(50)
      acd49(62)=acd49(62)+acd49(63)
      acd49(63)=2.0_ki*acd49(4)
      acd49(62)=acd49(62)*acd49(63)
      acd49(51)=acd49(6)*acd49(51)
      acd49(51)=acd49(62)+acd49(51)
      acd49(51)=acd49(1)*acd49(51)
      acd49(62)=-acd49(7)*acd49(47)
      acd49(64)=-acd49(15)*acd49(61)
      acd49(62)=acd49(62)+acd49(64)
      acd49(62)=acd49(62)*acd49(63)
      acd49(56)=acd49(6)*acd49(56)
      acd49(56)=acd49(62)+acd49(56)
      acd49(56)=acd49(14)*acd49(56)
      acd49(62)=-acd49(2)*acd49(47)
      acd49(64)=-acd49(15)*acd49(50)
      acd49(62)=acd49(62)+acd49(64)
      acd49(62)=acd49(62)*acd49(63)
      acd49(58)=acd49(6)*acd49(58)
      acd49(58)=acd49(62)+acd49(58)
      acd49(58)=acd49(18)*acd49(58)
      acd49(62)=-acd49(7)*acd49(44)
      acd49(61)=-acd49(20)*acd49(61)
      acd49(61)=acd49(62)+acd49(61)
      acd49(61)=acd49(61)*acd49(63)
      acd49(62)=acd49(7)*acd49(21)
      acd49(55)=acd49(62)+acd49(55)
      acd49(55)=acd49(6)*acd49(55)
      acd49(55)=acd49(61)+acd49(55)
      acd49(55)=acd49(19)*acd49(55)
      acd49(61)=-acd49(2)*acd49(44)
      acd49(50)=-acd49(20)*acd49(50)
      acd49(50)=acd49(61)+acd49(50)
      acd49(50)=acd49(50)*acd49(63)
      acd49(61)=acd49(2)*acd49(21)
      acd49(60)=acd49(61)+acd49(60)
      acd49(60)=acd49(6)*acd49(60)
      acd49(50)=acd49(50)+acd49(60)
      acd49(50)=acd49(23)*acd49(50)
      acd49(44)=-acd49(15)*acd49(44)
      acd49(47)=-acd49(20)*acd49(47)
      acd49(44)=acd49(44)+acd49(47)
      acd49(44)=acd49(44)*acd49(63)
      acd49(47)=acd49(15)*acd49(21)
      acd49(47)=acd49(47)+acd49(57)
      acd49(47)=acd49(6)*acd49(47)
      acd49(44)=acd49(44)+acd49(47)
      acd49(44)=acd49(24)*acd49(44)
      acd49(47)=-acd49(1)*acd49(12)*acd49(8)
      acd49(57)=acd49(12)*acd49(16)
      acd49(60)=-acd49(14)*acd49(57)
      acd49(61)=acd49(12)*acd49(21)
      acd49(62)=-acd49(19)*acd49(61)
      acd49(47)=acd49(62)+acd49(47)+acd49(60)
      acd49(47)=acd49(11)*acd49(47)
      acd49(49)=-acd49(12)*acd49(49)
      acd49(57)=-acd49(18)*acd49(57)
      acd49(60)=-acd49(23)*acd49(61)
      acd49(49)=acd49(60)+acd49(49)+acd49(57)
      acd49(49)=acd49(13)*acd49(49)
      acd49(43)=-acd49(22)*acd49(12)*acd49(43)
      acd49(46)=-acd49(12)*acd49(46)
      acd49(57)=-acd49(24)*acd49(61)
      acd49(46)=acd49(57)+acd49(46)
      acd49(46)=acd49(17)*acd49(46)
      acd49(43)=acd49(43)+acd49(46)+acd49(49)+acd49(47)+acd49(44)+acd49(50)+acd&
      &49(55)+acd49(58)+acd49(51)+acd49(56)+acd49(48)+acd49(52)+acd49(59)+acd49&
      &(53)+acd49(54)+2.0_ki*acd49(45)
      brack=2.0_ki*acd49(43)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd49
      complex(ki) :: brack
      acd49(1)=d(iv1,iv2)
      acd49(2)=spvak2k1(iv3)
      acd49(3)=spvak2k5(iv4)
      acd49(4)=spvak2k5(iv5)
      acd49(5)=abb49(16)
      acd49(6)=spvak2k1(iv4)
      acd49(7)=spvak2k5(iv3)
      acd49(8)=spvak2k1(iv5)
      acd49(9)=d(iv1,iv3)
      acd49(10)=spvak2k1(iv2)
      acd49(11)=spvak2k5(iv2)
      acd49(12)=d(iv1,iv4)
      acd49(13)=d(iv1,iv5)
      acd49(14)=d(iv2,iv3)
      acd49(15)=spvak2k1(iv1)
      acd49(16)=spvak2k5(iv1)
      acd49(17)=d(iv2,iv4)
      acd49(18)=d(iv2,iv5)
      acd49(19)=d(iv3,iv4)
      acd49(20)=d(iv3,iv5)
      acd49(21)=d(iv4,iv5)
      acd49(22)=acd49(10)*acd49(20)
      acd49(23)=acd49(8)*acd49(14)
      acd49(24)=acd49(2)*acd49(18)
      acd49(22)=acd49(24)+acd49(22)+acd49(23)
      acd49(22)=acd49(16)*acd49(22)
      acd49(23)=acd49(15)*acd49(20)
      acd49(24)=acd49(8)*acd49(9)
      acd49(25)=acd49(2)*acd49(13)
      acd49(23)=acd49(25)+acd49(23)+acd49(24)
      acd49(23)=acd49(11)*acd49(23)
      acd49(24)=acd49(15)*acd49(18)
      acd49(25)=acd49(10)*acd49(13)
      acd49(26)=acd49(8)*acd49(1)
      acd49(24)=acd49(26)+acd49(24)+acd49(25)
      acd49(24)=acd49(7)*acd49(24)
      acd49(25)=acd49(15)*acd49(14)
      acd49(26)=acd49(10)*acd49(9)
      acd49(27)=acd49(2)*acd49(1)
      acd49(25)=acd49(27)+acd49(25)+acd49(26)
      acd49(25)=acd49(4)*acd49(25)
      acd49(22)=acd49(25)+acd49(24)+acd49(22)+acd49(23)
      acd49(22)=acd49(3)*acd49(22)
      acd49(23)=acd49(10)*acd49(19)
      acd49(24)=acd49(6)*acd49(14)
      acd49(25)=acd49(2)*acd49(17)
      acd49(23)=acd49(25)+acd49(23)+acd49(24)
      acd49(23)=acd49(16)*acd49(23)
      acd49(24)=acd49(15)*acd49(19)
      acd49(25)=acd49(6)*acd49(9)
      acd49(26)=acd49(2)*acd49(12)
      acd49(24)=acd49(26)+acd49(24)+acd49(25)
      acd49(24)=acd49(11)*acd49(24)
      acd49(25)=acd49(15)*acd49(17)
      acd49(26)=acd49(10)*acd49(12)
      acd49(27)=acd49(6)*acd49(1)
      acd49(25)=acd49(27)+acd49(25)+acd49(26)
      acd49(25)=acd49(7)*acd49(25)
      acd49(23)=acd49(25)+acd49(23)+acd49(24)
      acd49(23)=acd49(4)*acd49(23)
      acd49(24)=acd49(10)*acd49(21)
      acd49(25)=acd49(8)*acd49(17)
      acd49(26)=acd49(6)*acd49(18)
      acd49(24)=acd49(26)+acd49(24)+acd49(25)
      acd49(24)=acd49(16)*acd49(24)
      acd49(25)=acd49(15)*acd49(21)
      acd49(26)=acd49(8)*acd49(12)
      acd49(27)=acd49(6)*acd49(13)
      acd49(25)=acd49(27)+acd49(25)+acd49(26)
      acd49(25)=acd49(11)*acd49(25)
      acd49(24)=acd49(24)+acd49(25)
      acd49(24)=acd49(7)*acd49(24)
      acd49(25)=acd49(8)*acd49(19)
      acd49(26)=acd49(6)*acd49(20)
      acd49(27)=acd49(2)*acd49(21)
      acd49(25)=acd49(27)+acd49(25)+acd49(26)
      acd49(25)=acd49(11)*acd49(16)*acd49(25)
      acd49(22)=acd49(22)+acd49(23)+acd49(25)+acd49(24)
      brack=4.0_ki*acd49(22)*acd49(5)
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd49h1
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
end module     p0_gg_hhg_d49h1l1d
