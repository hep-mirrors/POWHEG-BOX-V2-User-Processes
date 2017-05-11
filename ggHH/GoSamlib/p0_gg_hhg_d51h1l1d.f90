module     p0_gg_hhg_d51h1l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d51h1l1d.f90
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
   public :: derivative , reconstruct_d51
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd51h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd51
      complex(ki) :: brack
      acd51(1)=dotproduct(k1,qshift)
      acd51(2)=dotproduct(qshift,spvak2k1)
      acd51(3)=dotproduct(qshift,spvak2k5)
      acd51(4)=abb51(30)
      acd51(5)=abb51(19)
      acd51(6)=dotproduct(k2,qshift)
      acd51(7)=abb51(36)
      acd51(8)=abb51(10)
      acd51(9)=abb51(25)
      acd51(10)=abb51(12)
      acd51(11)=dotproduct(qshift,spvak2l3)
      acd51(12)=abb51(24)
      acd51(13)=abb51(14)
      acd51(14)=dotproduct(l3,qshift)
      acd51(15)=abb51(18)
      acd51(16)=abb51(32)
      acd51(17)=abb51(34)
      acd51(18)=dotproduct(k5,qshift)
      acd51(19)=abb51(16)
      acd51(20)=abb51(33)
      acd51(21)=dotproduct(qshift,qshift)
      acd51(22)=abb51(28)
      acd51(23)=abb51(27)
      acd51(24)=abb51(11)
      acd51(25)=abb51(41)
      acd51(26)=abb51(44)
      acd51(27)=abb51(9)
      acd51(28)=abb51(20)
      acd51(29)=abb51(22)
      acd51(30)=abb51(8)
      acd51(31)=dotproduct(qshift,spvak1k5)
      acd51(32)=abb51(13)
      acd51(33)=dotproduct(qshift,spval3k5)
      acd51(34)=abb51(21)
      acd51(35)=abb51(15)
      acd51(36)=abb51(17)
      acd51(37)=abb51(43)
      acd51(38)=abb51(46)
      acd51(39)=abb51(26)
      acd51(40)=abb51(45)
      acd51(41)=abb51(23)
      acd51(42)=-acd51(33)*acd51(34)
      acd51(43)=-acd51(31)*acd51(32)
      acd51(44)=-acd51(18)*acd51(19)
      acd51(45)=-acd51(1)*acd51(4)
      acd51(46)=-acd51(14)*acd51(16)
      acd51(47)=-acd51(11)*acd51(30)
      acd51(48)=acd51(21)*acd51(23)
      acd51(49)=-acd51(6)*acd51(8)
      acd51(50)=-acd51(2)*acd51(28)
      acd51(42)=acd51(50)+acd51(49)+acd51(48)+acd51(47)+acd51(46)+acd51(45)+acd&
      &51(44)+acd51(43)+acd51(35)+acd51(42)
      acd51(42)=acd51(2)*acd51(42)
      acd51(43)=acd51(14)*acd51(15)
      acd51(44)=-acd51(21)*acd51(22)
      acd51(45)=acd51(6)*acd51(7)
      acd51(43)=acd51(45)+acd51(44)-acd51(29)+acd51(43)
      acd51(43)=acd51(2)*acd51(43)
      acd51(43)=acd51(37)+acd51(43)
      acd51(43)=acd51(3)*acd51(43)
      acd51(44)=acd51(18)*acd51(20)
      acd51(45)=acd51(1)*acd51(5)
      acd51(46)=acd51(14)*acd51(17)
      acd51(47)=acd51(11)*acd51(38)
      acd51(48)=-acd51(21)*acd51(25)
      acd51(49)=acd51(6)*acd51(10)
      acd51(42)=acd51(43)+acd51(42)+acd51(49)+acd51(48)+acd51(47)+acd51(46)+acd&
      &51(45)-acd51(39)+acd51(44)
      acd51(42)=acd51(3)*acd51(42)
      acd51(43)=-acd51(21)*acd51(24)
      acd51(44)=acd51(6)*acd51(9)
      acd51(43)=acd51(44)-acd51(36)+acd51(43)
      acd51(43)=acd51(2)*acd51(43)
      acd51(44)=-acd51(11)*acd51(40)
      acd51(45)=acd51(11)*acd51(26)
      acd51(45)=acd51(27)+acd51(45)
      acd51(45)=acd51(21)*acd51(45)
      acd51(46)=acd51(11)*acd51(12)
      acd51(46)=-acd51(13)+acd51(46)
      acd51(46)=acd51(6)*acd51(46)
      brack=acd51(41)+acd51(42)+acd51(43)+acd51(44)+acd51(45)+acd51(46)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd51h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(63) :: acd51
      complex(ki) :: brack
      acd51(1)=k1(iv1)
      acd51(2)=dotproduct(qshift,spvak2k1)
      acd51(3)=dotproduct(qshift,spvak2k5)
      acd51(4)=abb51(30)
      acd51(5)=abb51(19)
      acd51(6)=k2(iv1)
      acd51(7)=abb51(36)
      acd51(8)=abb51(10)
      acd51(9)=abb51(25)
      acd51(10)=abb51(12)
      acd51(11)=dotproduct(qshift,spvak2l3)
      acd51(12)=abb51(24)
      acd51(13)=abb51(14)
      acd51(14)=l3(iv1)
      acd51(15)=abb51(18)
      acd51(16)=abb51(32)
      acd51(17)=abb51(34)
      acd51(18)=k5(iv1)
      acd51(19)=abb51(16)
      acd51(20)=abb51(33)
      acd51(21)=qshift(iv1)
      acd51(22)=abb51(28)
      acd51(23)=abb51(27)
      acd51(24)=abb51(11)
      acd51(25)=abb51(41)
      acd51(26)=abb51(44)
      acd51(27)=abb51(9)
      acd51(28)=spvak2k1(iv1)
      acd51(29)=dotproduct(k1,qshift)
      acd51(30)=dotproduct(k2,qshift)
      acd51(31)=dotproduct(l3,qshift)
      acd51(32)=dotproduct(k5,qshift)
      acd51(33)=dotproduct(qshift,qshift)
      acd51(34)=abb51(20)
      acd51(35)=abb51(22)
      acd51(36)=abb51(8)
      acd51(37)=dotproduct(qshift,spvak1k5)
      acd51(38)=abb51(13)
      acd51(39)=dotproduct(qshift,spval3k5)
      acd51(40)=abb51(21)
      acd51(41)=abb51(15)
      acd51(42)=abb51(17)
      acd51(43)=spvak2k5(iv1)
      acd51(44)=abb51(43)
      acd51(45)=abb51(46)
      acd51(46)=abb51(26)
      acd51(47)=spvak2l3(iv1)
      acd51(48)=abb51(45)
      acd51(49)=spvak1k5(iv1)
      acd51(50)=spval3k5(iv1)
      acd51(51)=acd51(31)*acd51(15)
      acd51(52)=acd51(33)*acd51(22)
      acd51(53)=acd51(30)*acd51(7)
      acd51(51)=acd51(51)-acd51(52)+acd51(53)-acd51(35)
      acd51(52)=2.0_ki*acd51(43)
      acd51(53)=-acd51(51)*acd51(52)
      acd51(54)=acd51(40)*acd51(50)
      acd51(55)=acd51(38)*acd51(49)
      acd51(56)=acd51(19)*acd51(18)
      acd51(57)=acd51(14)*acd51(16)
      acd51(58)=acd51(4)*acd51(1)
      acd51(59)=acd51(47)*acd51(36)
      acd51(60)=2.0_ki*acd51(21)
      acd51(61)=-acd51(23)*acd51(60)
      acd51(62)=acd51(6)*acd51(8)
      acd51(63)=acd51(28)*acd51(34)
      acd51(53)=acd51(53)+2.0_ki*acd51(63)+acd51(62)+acd51(61)+acd51(59)+acd51(&
      &58)+acd51(57)+acd51(56)+acd51(54)+acd51(55)
      acd51(53)=acd51(2)*acd51(53)
      acd51(54)=acd51(40)*acd51(39)
      acd51(55)=acd51(38)*acd51(37)
      acd51(56)=acd51(19)*acd51(32)
      acd51(57)=acd51(4)*acd51(29)
      acd51(58)=acd51(31)*acd51(16)
      acd51(59)=acd51(11)*acd51(36)
      acd51(61)=acd51(33)*acd51(23)
      acd51(62)=acd51(30)*acd51(8)
      acd51(54)=acd51(58)+acd51(59)-acd51(61)+acd51(62)+acd51(54)+acd51(56)+acd&
      &51(57)+acd51(55)-acd51(41)
      acd51(55)=acd51(28)*acd51(54)
      acd51(51)=-acd51(28)*acd51(51)
      acd51(56)=-acd51(14)*acd51(15)
      acd51(57)=acd51(22)*acd51(60)
      acd51(58)=-acd51(6)*acd51(7)
      acd51(56)=acd51(58)+acd51(56)+acd51(57)
      acd51(56)=acd51(2)*acd51(56)
      acd51(51)=acd51(51)+acd51(56)
      acd51(51)=acd51(3)*acd51(51)
      acd51(56)=-acd51(18)*acd51(20)
      acd51(57)=-acd51(1)*acd51(5)
      acd51(58)=-acd51(14)*acd51(17)
      acd51(59)=-acd51(47)*acd51(45)
      acd51(61)=acd51(25)*acd51(60)
      acd51(62)=-acd51(6)*acd51(10)
      acd51(52)=-acd51(44)*acd51(52)
      acd51(51)=acd51(51)+acd51(53)+acd51(52)+acd51(55)+acd51(62)+acd51(61)+acd&
      &51(59)+acd51(58)+acd51(56)+acd51(57)
      acd51(51)=acd51(3)*acd51(51)
      acd51(52)=acd51(2)*acd51(34)
      acd51(52)=acd51(52)+acd51(54)
      acd51(52)=acd51(43)*acd51(52)
      acd51(53)=acd51(24)*acd51(60)
      acd51(54)=-acd51(6)*acd51(9)
      acd51(52)=acd51(53)+acd51(54)+acd51(52)
      acd51(52)=acd51(2)*acd51(52)
      acd51(53)=-acd51(32)*acd51(20)
      acd51(54)=-acd51(29)*acd51(5)
      acd51(55)=-acd51(31)*acd51(17)
      acd51(56)=-acd51(11)*acd51(45)
      acd51(57)=acd51(33)*acd51(25)
      acd51(58)=-acd51(30)*acd51(10)
      acd51(53)=acd51(58)+acd51(57)+acd51(56)+acd51(55)+acd51(54)+acd51(46)+acd&
      &51(53)
      acd51(53)=acd51(43)*acd51(53)
      acd51(54)=-acd51(33)*acd51(26)
      acd51(55)=-acd51(30)*acd51(12)
      acd51(54)=acd51(55)+acd51(54)+acd51(48)
      acd51(54)=acd51(47)*acd51(54)
      acd51(55)=-acd51(11)*acd51(26)
      acd51(55)=-acd51(27)+acd51(55)
      acd51(55)=acd51(55)*acd51(60)
      acd51(56)=acd51(33)*acd51(24)
      acd51(57)=-acd51(30)*acd51(9)
      acd51(56)=acd51(57)+acd51(42)+acd51(56)
      acd51(56)=acd51(28)*acd51(56)
      acd51(57)=-acd51(11)*acd51(12)
      acd51(57)=acd51(13)+acd51(57)
      acd51(57)=acd51(6)*acd51(57)
      brack=acd51(51)+acd51(52)+acd51(53)+acd51(54)+acd51(55)+acd51(56)+acd51(5&
      &7)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd51h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(73) :: acd51
      complex(ki) :: brack
      acd51(1)=d(iv1,iv2)
      acd51(2)=dotproduct(qshift,spvak2k1)
      acd51(3)=dotproduct(qshift,spvak2k5)
      acd51(4)=abb51(28)
      acd51(5)=abb51(27)
      acd51(6)=abb51(11)
      acd51(7)=abb51(41)
      acd51(8)=dotproduct(qshift,spvak2l3)
      acd51(9)=abb51(44)
      acd51(10)=abb51(9)
      acd51(11)=k1(iv1)
      acd51(12)=spvak2k1(iv2)
      acd51(13)=abb51(30)
      acd51(14)=spvak2k5(iv2)
      acd51(15)=abb51(19)
      acd51(16)=k1(iv2)
      acd51(17)=spvak2k1(iv1)
      acd51(18)=spvak2k5(iv1)
      acd51(19)=k2(iv1)
      acd51(20)=abb51(36)
      acd51(21)=abb51(10)
      acd51(22)=abb51(25)
      acd51(23)=abb51(12)
      acd51(24)=spvak2l3(iv2)
      acd51(25)=abb51(24)
      acd51(26)=k2(iv2)
      acd51(27)=spvak2l3(iv1)
      acd51(28)=l3(iv1)
      acd51(29)=abb51(18)
      acd51(30)=abb51(32)
      acd51(31)=abb51(34)
      acd51(32)=l3(iv2)
      acd51(33)=k5(iv1)
      acd51(34)=abb51(16)
      acd51(35)=abb51(33)
      acd51(36)=k5(iv2)
      acd51(37)=qshift(iv1)
      acd51(38)=qshift(iv2)
      acd51(39)=abb51(20)
      acd51(40)=dotproduct(k1,qshift)
      acd51(41)=dotproduct(k2,qshift)
      acd51(42)=dotproduct(l3,qshift)
      acd51(43)=dotproduct(k5,qshift)
      acd51(44)=dotproduct(qshift,qshift)
      acd51(45)=abb51(22)
      acd51(46)=abb51(8)
      acd51(47)=dotproduct(qshift,spvak1k5)
      acd51(48)=abb51(13)
      acd51(49)=dotproduct(qshift,spval3k5)
      acd51(50)=abb51(21)
      acd51(51)=abb51(15)
      acd51(52)=spvak1k5(iv2)
      acd51(53)=spval3k5(iv2)
      acd51(54)=spvak1k5(iv1)
      acd51(55)=spval3k5(iv1)
      acd51(56)=abb51(43)
      acd51(57)=abb51(46)
      acd51(58)=acd51(50)*acd51(49)
      acd51(59)=acd51(48)*acd51(47)
      acd51(60)=acd51(46)*acd51(8)
      acd51(61)=acd51(34)*acd51(43)
      acd51(62)=acd51(30)*acd51(42)
      acd51(63)=acd51(21)*acd51(41)
      acd51(64)=acd51(13)*acd51(40)
      acd51(65)=acd51(5)*acd51(44)
      acd51(58)=acd51(61)+acd51(62)+acd51(63)+acd51(64)+acd51(58)-acd51(65)-acd&
      &51(51)+acd51(59)+acd51(60)
      acd51(59)=-acd51(12)*acd51(58)
      acd51(60)=acd51(50)*acd51(53)
      acd51(61)=acd51(48)*acd51(52)
      acd51(62)=acd51(46)*acd51(24)
      acd51(63)=acd51(34)*acd51(36)
      acd51(64)=acd51(30)*acd51(32)
      acd51(65)=acd51(13)*acd51(16)
      acd51(66)=acd51(26)*acd51(21)
      acd51(67)=2.0_ki*acd51(38)
      acd51(68)=acd51(67)*acd51(5)
      acd51(60)=acd51(61)+acd51(62)+acd51(63)+acd51(64)+acd51(65)+acd51(60)+acd&
      &51(66)-acd51(68)
      acd51(61)=2.0_ki*acd51(39)
      acd51(62)=-acd51(12)*acd51(61)
      acd51(62)=acd51(62)-acd51(60)
      acd51(62)=acd51(2)*acd51(62)
      acd51(63)=acd51(36)*acd51(35)
      acd51(64)=acd51(16)*acd51(15)
      acd51(65)=acd51(32)*acd51(31)
      acd51(66)=acd51(24)*acd51(57)
      acd51(68)=-acd51(7)*acd51(67)
      acd51(69)=acd51(26)*acd51(23)
      acd51(59)=acd51(62)+acd51(59)+acd51(69)+acd51(68)+acd51(66)+acd51(65)+acd&
      &51(63)+acd51(64)
      acd51(59)=acd51(18)*acd51(59)
      acd51(62)=acd51(50)*acd51(55)
      acd51(63)=acd51(48)*acd51(54)
      acd51(64)=acd51(46)*acd51(27)
      acd51(65)=acd51(34)*acd51(33)
      acd51(66)=acd51(30)*acd51(28)
      acd51(68)=acd51(13)*acd51(11)
      acd51(69)=acd51(19)*acd51(21)
      acd51(70)=2.0_ki*acd51(37)
      acd51(71)=acd51(70)*acd51(5)
      acd51(61)=acd51(61)*acd51(17)
      acd51(61)=acd51(65)+acd51(66)+acd51(68)+acd51(61)+acd51(62)+acd51(69)-acd&
      &51(71)+acd51(63)+acd51(64)
      acd51(62)=-acd51(2)*acd51(61)
      acd51(58)=-acd51(17)*acd51(58)
      acd51(63)=acd51(29)*acd51(42)
      acd51(64)=acd51(20)*acd51(41)
      acd51(65)=acd51(4)*acd51(44)
      acd51(63)=-acd51(63)-acd51(64)+acd51(65)+acd51(45)
      acd51(64)=-acd51(2)*acd51(63)
      acd51(64)=acd51(56)+acd51(64)
      acd51(65)=2.0_ki*acd51(18)
      acd51(64)=acd51(64)*acd51(65)
      acd51(66)=acd51(33)*acd51(35)
      acd51(68)=acd51(11)*acd51(15)
      acd51(69)=acd51(28)*acd51(31)
      acd51(71)=acd51(27)*acd51(57)
      acd51(72)=-acd51(7)*acd51(70)
      acd51(73)=acd51(19)*acd51(23)
      acd51(58)=acd51(64)+acd51(62)+acd51(58)+acd51(73)+acd51(72)+acd51(71)+acd&
      &51(69)+acd51(66)+acd51(68)
      acd51(58)=acd51(14)*acd51(58)
      acd51(61)=-acd51(12)*acd51(61)
      acd51(60)=-acd51(17)*acd51(60)
      acd51(62)=-acd51(12)*acd51(63)
      acd51(64)=acd51(29)*acd51(32)
      acd51(66)=acd51(20)*acd51(26)
      acd51(68)=acd51(67)*acd51(4)
      acd51(64)=-acd51(68)+acd51(64)+acd51(66)
      acd51(66)=acd51(2)*acd51(64)
      acd51(62)=acd51(62)+acd51(66)
      acd51(62)=acd51(62)*acd51(65)
      acd51(63)=-acd51(17)*acd51(63)
      acd51(65)=acd51(29)*acd51(28)
      acd51(66)=acd51(19)*acd51(20)
      acd51(68)=acd51(70)*acd51(4)
      acd51(65)=-acd51(68)+acd51(65)+acd51(66)
      acd51(66)=acd51(2)*acd51(65)
      acd51(63)=acd51(63)+acd51(66)
      acd51(63)=acd51(14)*acd51(63)
      acd51(64)=acd51(17)*acd51(64)
      acd51(65)=acd51(12)*acd51(65)
      acd51(66)=acd51(2)*acd51(1)
      acd51(68)=2.0_ki*acd51(4)
      acd51(68)=-acd51(68)*acd51(66)
      acd51(64)=acd51(68)+acd51(64)+acd51(65)
      acd51(64)=acd51(3)*acd51(64)
      acd51(65)=2.0_ki*acd51(5)
      acd51(65)=acd51(65)*acd51(66)
      acd51(66)=2.0_ki*acd51(1)
      acd51(68)=-acd51(7)*acd51(66)
      acd51(60)=acd51(64)+2.0_ki*acd51(63)+acd51(62)+acd51(65)+acd51(61)+acd51(&
      &68)+acd51(60)
      acd51(60)=acd51(3)*acd51(60)
      acd51(61)=acd51(26)*acd51(27)
      acd51(62)=acd51(19)*acd51(24)
      acd51(61)=acd51(62)+acd51(61)
      acd51(61)=acd51(25)*acd51(61)
      acd51(62)=acd51(38)*acd51(27)
      acd51(63)=acd51(37)*acd51(24)
      acd51(62)=acd51(63)+acd51(62)
      acd51(62)=acd51(9)*acd51(62)
      acd51(63)=acd51(8)*acd51(9)
      acd51(63)=acd51(10)+acd51(63)
      acd51(63)=acd51(1)*acd51(63)
      acd51(62)=acd51(63)+acd51(62)
      acd51(63)=-acd51(6)*acd51(67)
      acd51(64)=acd51(26)*acd51(22)
      acd51(63)=acd51(63)+acd51(64)
      acd51(63)=acd51(17)*acd51(63)
      acd51(64)=-acd51(6)*acd51(70)
      acd51(65)=acd51(19)*acd51(22)
      acd51(64)=acd51(64)+acd51(65)
      acd51(64)=acd51(12)*acd51(64)
      acd51(65)=-acd51(2)*acd51(6)*acd51(66)
      brack=acd51(58)+acd51(59)+acd51(60)+acd51(61)+2.0_ki*acd51(62)+acd51(63)+&
      &acd51(64)+acd51(65)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd51h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(72) :: acd51
      complex(ki) :: brack
      acd51(1)=d(iv1,iv2)
      acd51(2)=spvak2k1(iv3)
      acd51(3)=dotproduct(qshift,spvak2k5)
      acd51(4)=abb51(28)
      acd51(5)=abb51(27)
      acd51(6)=abb51(11)
      acd51(7)=spvak2k5(iv3)
      acd51(8)=dotproduct(qshift,spvak2k1)
      acd51(9)=abb51(41)
      acd51(10)=spvak2l3(iv3)
      acd51(11)=abb51(44)
      acd51(12)=d(iv1,iv3)
      acd51(13)=spvak2k1(iv2)
      acd51(14)=spvak2k5(iv2)
      acd51(15)=spvak2l3(iv2)
      acd51(16)=d(iv2,iv3)
      acd51(17)=spvak2k1(iv1)
      acd51(18)=spvak2k5(iv1)
      acd51(19)=spvak2l3(iv1)
      acd51(20)=k1(iv1)
      acd51(21)=abb51(30)
      acd51(22)=k1(iv2)
      acd51(23)=k1(iv3)
      acd51(24)=k2(iv1)
      acd51(25)=abb51(36)
      acd51(26)=abb51(10)
      acd51(27)=k2(iv2)
      acd51(28)=k2(iv3)
      acd51(29)=l3(iv1)
      acd51(30)=abb51(18)
      acd51(31)=abb51(32)
      acd51(32)=l3(iv2)
      acd51(33)=l3(iv3)
      acd51(34)=k5(iv1)
      acd51(35)=abb51(16)
      acd51(36)=k5(iv2)
      acd51(37)=k5(iv3)
      acd51(38)=qshift(iv1)
      acd51(39)=qshift(iv2)
      acd51(40)=qshift(iv3)
      acd51(41)=abb51(20)
      acd51(42)=dotproduct(k2,qshift)
      acd51(43)=dotproduct(l3,qshift)
      acd51(44)=dotproduct(qshift,qshift)
      acd51(45)=abb51(22)
      acd51(46)=abb51(8)
      acd51(47)=spvak1k5(iv3)
      acd51(48)=abb51(13)
      acd51(49)=spval3k5(iv3)
      acd51(50)=abb51(21)
      acd51(51)=spvak1k5(iv2)
      acd51(52)=spval3k5(iv2)
      acd51(53)=spvak1k5(iv1)
      acd51(54)=spval3k5(iv1)
      acd51(55)=acd51(30)*acd51(33)
      acd51(56)=acd51(25)*acd51(28)
      acd51(55)=acd51(55)+acd51(56)
      acd51(56)=2.0_ki*acd51(4)
      acd51(57)=acd51(56)*acd51(40)
      acd51(57)=acd51(55)-acd51(57)
      acd51(58)=2.0_ki*acd51(3)
      acd51(57)=acd51(57)*acd51(58)
      acd51(59)=acd51(50)*acd51(49)
      acd51(60)=acd51(48)*acd51(47)
      acd51(61)=acd51(46)*acd51(10)
      acd51(62)=acd51(35)*acd51(37)
      acd51(63)=acd51(31)*acd51(33)
      acd51(64)=acd51(26)*acd51(28)
      acd51(65)=acd51(21)*acd51(23)
      acd51(66)=2.0_ki*acd51(5)
      acd51(67)=acd51(66)*acd51(40)
      acd51(57)=-acd51(67)+acd51(60)+acd51(61)+acd51(62)+acd51(63)-acd51(57)+ac&
      &d51(59)+acd51(64)+acd51(65)
      acd51(59)=acd51(13)*acd51(57)
      acd51(60)=acd51(30)*acd51(32)
      acd51(61)=acd51(25)*acd51(27)
      acd51(60)=acd51(60)+acd51(61)
      acd51(61)=acd51(56)*acd51(39)
      acd51(61)=acd51(60)-acd51(61)
      acd51(61)=acd51(61)*acd51(58)
      acd51(62)=acd51(50)*acd51(52)
      acd51(63)=acd51(48)*acd51(51)
      acd51(64)=acd51(46)*acd51(15)
      acd51(65)=acd51(35)*acd51(36)
      acd51(67)=acd51(31)*acd51(32)
      acd51(68)=acd51(26)*acd51(27)
      acd51(69)=acd51(21)*acd51(22)
      acd51(70)=acd51(66)*acd51(39)
      acd51(61)=-acd51(70)+acd51(63)+acd51(64)+acd51(65)+acd51(67)-acd51(61)+ac&
      &d51(62)+acd51(68)+acd51(69)
      acd51(62)=2.0_ki*acd51(41)
      acd51(63)=acd51(13)*acd51(62)
      acd51(63)=acd51(63)+acd51(61)
      acd51(63)=acd51(2)*acd51(63)
      acd51(64)=acd51(8)*acd51(5)
      acd51(65)=acd51(56)*acd51(8)
      acd51(67)=acd51(3)*acd51(65)
      acd51(64)=-acd51(9)+acd51(64)-acd51(67)
      acd51(67)=-acd51(16)*acd51(64)
      acd51(59)=acd51(63)+2.0_ki*acd51(67)+acd51(59)
      acd51(59)=acd51(18)*acd51(59)
      acd51(63)=acd51(30)*acd51(29)
      acd51(67)=acd51(25)*acd51(24)
      acd51(63)=acd51(63)+acd51(67)
      acd51(56)=acd51(56)*acd51(38)
      acd51(56)=acd51(63)-acd51(56)
      acd51(56)=acd51(56)*acd51(58)
      acd51(58)=acd51(50)*acd51(54)
      acd51(67)=acd51(48)*acd51(53)
      acd51(68)=acd51(46)*acd51(19)
      acd51(69)=acd51(35)*acd51(34)
      acd51(70)=acd51(31)*acd51(29)
      acd51(71)=acd51(26)*acd51(24)
      acd51(72)=acd51(21)*acd51(20)
      acd51(66)=acd51(66)*acd51(38)
      acd51(62)=acd51(62)*acd51(17)
      acd51(56)=acd51(62)+acd51(58)+acd51(67)+acd51(68)+acd51(69)-acd51(56)+acd&
      &51(70)+acd51(71)+acd51(72)-acd51(66)
      acd51(58)=acd51(2)*acd51(56)
      acd51(57)=acd51(17)*acd51(57)
      acd51(62)=acd51(30)*acd51(43)
      acd51(66)=acd51(25)*acd51(42)
      acd51(67)=acd51(4)*acd51(44)
      acd51(62)=-acd51(66)-acd51(62)+acd51(67)+acd51(45)
      acd51(66)=acd51(2)*acd51(62)
      acd51(55)=-acd51(8)*acd51(55)
      acd51(67)=acd51(40)*acd51(65)
      acd51(55)=acd51(66)+acd51(55)+acd51(67)
      acd51(66)=2.0_ki*acd51(18)
      acd51(55)=acd51(55)*acd51(66)
      acd51(67)=-acd51(12)*acd51(64)
      acd51(55)=acd51(55)+acd51(58)+2.0_ki*acd51(67)+acd51(57)
      acd51(55)=acd51(14)*acd51(55)
      acd51(56)=acd51(13)*acd51(56)
      acd51(57)=acd51(17)*acd51(61)
      acd51(58)=acd51(17)*acd51(62)
      acd51(61)=-acd51(8)*acd51(63)
      acd51(63)=acd51(38)*acd51(65)
      acd51(58)=acd51(58)+acd51(61)+acd51(63)
      acd51(58)=acd51(14)*acd51(58)
      acd51(61)=-acd51(1)*acd51(64)
      acd51(58)=acd51(61)+acd51(58)
      acd51(61)=acd51(13)*acd51(62)
      acd51(60)=-acd51(8)*acd51(60)
      acd51(62)=acd51(39)*acd51(65)
      acd51(60)=acd51(61)+acd51(60)+acd51(62)
      acd51(60)=acd51(60)*acd51(66)
      acd51(56)=acd51(60)+acd51(56)+acd51(57)+2.0_ki*acd51(58)
      acd51(56)=acd51(7)*acd51(56)
      acd51(57)=-acd51(16)*acd51(19)
      acd51(58)=-acd51(12)*acd51(15)
      acd51(60)=-acd51(1)*acd51(10)
      acd51(57)=acd51(60)+acd51(57)+acd51(58)
      acd51(57)=acd51(11)*acd51(57)
      acd51(58)=acd51(3)*acd51(4)
      acd51(58)=acd51(58)-acd51(5)
      acd51(58)=acd51(58)*acd51(3)
      acd51(58)=acd51(58)+acd51(6)
      acd51(60)=acd51(17)*acd51(16)*acd51(58)
      acd51(61)=acd51(13)*acd51(12)*acd51(58)
      acd51(58)=acd51(2)*acd51(1)*acd51(58)
      acd51(57)=acd51(58)+acd51(61)+acd51(60)+acd51(57)
      brack=acd51(55)+acd51(56)+2.0_ki*acd51(57)+acd51(59)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd51h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd51
      complex(ki) :: brack
      acd51(1)=d(iv1,iv2)
      acd51(2)=spvak2k1(iv3)
      acd51(3)=spvak2k5(iv4)
      acd51(4)=dotproduct(qshift,spvak2k5)
      acd51(5)=abb51(28)
      acd51(6)=abb51(27)
      acd51(7)=spvak2k1(iv4)
      acd51(8)=spvak2k5(iv3)
      acd51(9)=dotproduct(qshift,spvak2k1)
      acd51(10)=d(iv1,iv3)
      acd51(11)=spvak2k1(iv2)
      acd51(12)=spvak2k5(iv2)
      acd51(13)=d(iv1,iv4)
      acd51(14)=d(iv2,iv3)
      acd51(15)=spvak2k1(iv1)
      acd51(16)=spvak2k5(iv1)
      acd51(17)=d(iv2,iv4)
      acd51(18)=d(iv3,iv4)
      acd51(19)=k2(iv1)
      acd51(20)=abb51(36)
      acd51(21)=k2(iv2)
      acd51(22)=k2(iv3)
      acd51(23)=k2(iv4)
      acd51(24)=l3(iv1)
      acd51(25)=abb51(18)
      acd51(26)=l3(iv2)
      acd51(27)=l3(iv3)
      acd51(28)=l3(iv4)
      acd51(29)=qshift(iv1)
      acd51(30)=qshift(iv2)
      acd51(31)=qshift(iv3)
      acd51(32)=qshift(iv4)
      acd51(33)=acd51(2)*acd51(3)
      acd51(34)=acd51(7)*acd51(8)
      acd51(33)=acd51(33)+acd51(34)
      acd51(34)=acd51(12)*acd51(5)
      acd51(35)=-acd51(34)*acd51(33)
      acd51(36)=acd51(11)*acd51(3)
      acd51(37)=acd51(8)*acd51(5)
      acd51(38)=-acd51(37)*acd51(36)
      acd51(35)=acd51(38)+acd51(35)
      acd51(35)=acd51(29)*acd51(35)
      acd51(38)=acd51(16)*acd51(5)
      acd51(39)=-acd51(38)*acd51(33)
      acd51(40)=acd51(15)*acd51(3)
      acd51(41)=-acd51(37)*acd51(40)
      acd51(39)=acd51(41)+acd51(39)
      acd51(39)=acd51(30)*acd51(39)
      acd51(41)=acd51(7)*acd51(12)
      acd51(36)=acd51(41)+acd51(36)
      acd51(42)=-acd51(38)*acd51(36)
      acd51(43)=-acd51(34)*acd51(40)
      acd51(42)=acd51(43)+acd51(42)
      acd51(42)=acd51(31)*acd51(42)
      acd51(43)=acd51(2)*acd51(12)
      acd51(44)=acd51(11)*acd51(8)
      acd51(45)=acd51(43)+acd51(44)
      acd51(46)=-acd51(38)*acd51(45)
      acd51(47)=acd51(15)*acd51(8)
      acd51(48)=-acd51(34)*acd51(47)
      acd51(46)=acd51(48)+acd51(46)
      acd51(46)=acd51(32)*acd51(46)
      acd51(35)=acd51(35)+acd51(39)+acd51(42)+acd51(46)
      acd51(39)=acd51(12)*acd51(33)
      acd51(42)=acd51(44)*acd51(3)
      acd51(39)=acd51(39)+acd51(42)
      acd51(42)=acd51(19)*acd51(39)
      acd51(44)=acd51(16)*acd51(33)
      acd51(46)=acd51(47)*acd51(3)
      acd51(44)=acd51(44)+acd51(46)
      acd51(46)=acd51(21)*acd51(44)
      acd51(48)=acd51(11)*acd51(16)
      acd51(49)=acd51(15)*acd51(12)
      acd51(48)=acd51(48)+acd51(49)
      acd51(49)=acd51(48)*acd51(3)
      acd51(41)=acd51(41)*acd51(16)
      acd51(41)=acd51(49)+acd51(41)
      acd51(49)=acd51(22)*acd51(41)
      acd51(50)=acd51(48)*acd51(8)
      acd51(43)=acd51(43)*acd51(16)
      acd51(43)=acd51(50)+acd51(43)
      acd51(50)=acd51(23)*acd51(43)
      acd51(42)=acd51(50)+acd51(49)+acd51(46)+acd51(42)
      acd51(42)=acd51(20)*acd51(42)
      acd51(39)=acd51(24)*acd51(39)
      acd51(44)=acd51(26)*acd51(44)
      acd51(41)=acd51(27)*acd51(41)
      acd51(43)=acd51(28)*acd51(43)
      acd51(39)=acd51(43)+acd51(41)+acd51(44)+acd51(39)
      acd51(39)=acd51(25)*acd51(39)
      acd51(41)=acd51(3)*acd51(5)
      acd51(43)=-acd51(2)*acd51(41)
      acd51(44)=-acd51(7)*acd51(37)
      acd51(43)=acd51(43)+acd51(44)
      acd51(44)=2.0_ki*acd51(4)
      acd51(43)=acd51(43)*acd51(44)
      acd51(33)=acd51(6)*acd51(33)
      acd51(46)=2.0_ki*acd51(9)
      acd51(49)=acd51(46)*acd51(3)
      acd51(50)=-acd51(37)*acd51(49)
      acd51(33)=acd51(50)+acd51(43)+acd51(33)
      acd51(33)=acd51(1)*acd51(33)
      acd51(43)=-acd51(7)*acd51(34)
      acd51(50)=-acd51(11)*acd51(41)
      acd51(43)=acd51(43)+acd51(50)
      acd51(43)=acd51(43)*acd51(44)
      acd51(36)=acd51(6)*acd51(36)
      acd51(49)=-acd51(34)*acd51(49)
      acd51(36)=acd51(49)+acd51(43)+acd51(36)
      acd51(36)=acd51(10)*acd51(36)
      acd51(43)=-acd51(2)*acd51(34)
      acd51(49)=-acd51(11)*acd51(37)
      acd51(43)=acd51(43)+acd51(49)
      acd51(43)=acd51(43)*acd51(44)
      acd51(45)=acd51(6)*acd51(45)
      acd51(49)=-acd51(8)*acd51(46)*acd51(34)
      acd51(43)=acd51(49)+acd51(43)+acd51(45)
      acd51(43)=acd51(13)*acd51(43)
      acd51(45)=-acd51(7)*acd51(38)
      acd51(41)=-acd51(15)*acd51(41)
      acd51(41)=acd51(45)+acd51(41)
      acd51(41)=acd51(41)*acd51(44)
      acd51(45)=acd51(7)*acd51(16)
      acd51(40)=acd51(45)+acd51(40)
      acd51(40)=acd51(6)*acd51(40)
      acd51(45)=acd51(46)*acd51(38)
      acd51(46)=-acd51(3)*acd51(45)
      acd51(40)=acd51(46)+acd51(41)+acd51(40)
      acd51(40)=acd51(14)*acd51(40)
      acd51(41)=-acd51(2)*acd51(38)
      acd51(37)=-acd51(15)*acd51(37)
      acd51(37)=acd51(41)+acd51(37)
      acd51(37)=acd51(37)*acd51(44)
      acd51(41)=acd51(2)*acd51(16)
      acd51(41)=acd51(41)+acd51(47)
      acd51(41)=acd51(6)*acd51(41)
      acd51(46)=-acd51(8)*acd51(45)
      acd51(37)=acd51(46)+acd51(37)+acd51(41)
      acd51(37)=acd51(17)*acd51(37)
      acd51(38)=-acd51(11)*acd51(38)
      acd51(34)=-acd51(15)*acd51(34)
      acd51(34)=acd51(38)+acd51(34)
      acd51(34)=acd51(34)*acd51(44)
      acd51(38)=acd51(6)*acd51(48)
      acd51(41)=-acd51(12)*acd51(45)
      acd51(34)=acd51(41)+acd51(34)+acd51(38)
      acd51(34)=acd51(18)*acd51(34)
      acd51(33)=acd51(34)+acd51(37)+acd51(40)+acd51(43)+acd51(33)+acd51(36)+acd&
      &51(39)+acd51(42)+2.0_ki*acd51(35)
      brack=2.0_ki*acd51(33)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd51h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd51
      complex(ki) :: brack
      acd51(1)=d(iv1,iv2)
      acd51(2)=spvak2k1(iv3)
      acd51(3)=spvak2k5(iv4)
      acd51(4)=spvak2k5(iv5)
      acd51(5)=abb51(28)
      acd51(6)=spvak2k1(iv4)
      acd51(7)=spvak2k5(iv3)
      acd51(8)=spvak2k1(iv5)
      acd51(9)=d(iv1,iv3)
      acd51(10)=spvak2k1(iv2)
      acd51(11)=spvak2k5(iv2)
      acd51(12)=d(iv1,iv4)
      acd51(13)=d(iv1,iv5)
      acd51(14)=d(iv2,iv3)
      acd51(15)=spvak2k1(iv1)
      acd51(16)=spvak2k5(iv1)
      acd51(17)=d(iv2,iv4)
      acd51(18)=d(iv2,iv5)
      acd51(19)=d(iv3,iv4)
      acd51(20)=d(iv3,iv5)
      acd51(21)=d(iv4,iv5)
      acd51(22)=acd51(10)*acd51(20)
      acd51(23)=acd51(8)*acd51(14)
      acd51(24)=acd51(2)*acd51(18)
      acd51(22)=acd51(24)+acd51(22)+acd51(23)
      acd51(22)=acd51(16)*acd51(22)
      acd51(23)=acd51(15)*acd51(20)
      acd51(24)=acd51(8)*acd51(9)
      acd51(25)=acd51(2)*acd51(13)
      acd51(23)=acd51(25)+acd51(23)+acd51(24)
      acd51(23)=acd51(11)*acd51(23)
      acd51(24)=acd51(15)*acd51(18)
      acd51(25)=acd51(10)*acd51(13)
      acd51(26)=acd51(8)*acd51(1)
      acd51(24)=acd51(26)+acd51(24)+acd51(25)
      acd51(24)=acd51(7)*acd51(24)
      acd51(25)=acd51(15)*acd51(14)
      acd51(26)=acd51(10)*acd51(9)
      acd51(27)=acd51(2)*acd51(1)
      acd51(25)=acd51(27)+acd51(25)+acd51(26)
      acd51(25)=acd51(4)*acd51(25)
      acd51(22)=acd51(25)+acd51(24)+acd51(22)+acd51(23)
      acd51(22)=acd51(3)*acd51(22)
      acd51(23)=acd51(10)*acd51(19)
      acd51(24)=acd51(6)*acd51(14)
      acd51(25)=acd51(2)*acd51(17)
      acd51(23)=acd51(25)+acd51(23)+acd51(24)
      acd51(23)=acd51(16)*acd51(23)
      acd51(24)=acd51(15)*acd51(19)
      acd51(25)=acd51(6)*acd51(9)
      acd51(26)=acd51(2)*acd51(12)
      acd51(24)=acd51(26)+acd51(24)+acd51(25)
      acd51(24)=acd51(11)*acd51(24)
      acd51(25)=acd51(15)*acd51(17)
      acd51(26)=acd51(10)*acd51(12)
      acd51(27)=acd51(6)*acd51(1)
      acd51(25)=acd51(27)+acd51(25)+acd51(26)
      acd51(25)=acd51(7)*acd51(25)
      acd51(23)=acd51(25)+acd51(23)+acd51(24)
      acd51(23)=acd51(4)*acd51(23)
      acd51(24)=acd51(10)*acd51(21)
      acd51(25)=acd51(8)*acd51(17)
      acd51(26)=acd51(6)*acd51(18)
      acd51(24)=acd51(26)+acd51(24)+acd51(25)
      acd51(24)=acd51(16)*acd51(24)
      acd51(25)=acd51(15)*acd51(21)
      acd51(26)=acd51(8)*acd51(12)
      acd51(27)=acd51(6)*acd51(13)
      acd51(25)=acd51(27)+acd51(25)+acd51(26)
      acd51(25)=acd51(11)*acd51(25)
      acd51(24)=acd51(24)+acd51(25)
      acd51(24)=acd51(7)*acd51(24)
      acd51(25)=acd51(8)*acd51(19)
      acd51(26)=acd51(6)*acd51(20)
      acd51(27)=acd51(2)*acd51(21)
      acd51(25)=acd51(27)+acd51(25)+acd51(26)
      acd51(25)=acd51(11)*acd51(16)*acd51(25)
      acd51(22)=acd51(22)+acd51(23)+acd51(25)+acd51(24)
      brack=4.0_ki*acd51(22)*acd51(5)
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd51h1
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
!---#[ subroutine reconstruct_d51:
   subroutine     reconstruct_d51(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 5 case :
      !---[# reconstruct coeffs%coeffs_51:
      coeffs%coeffs_51%c0 = derivative(czip)
      coeffs%coeffs_51%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_51%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_51%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_51%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_51%c1(1,5) = derivative(czip,1,1,1,1,1)/120.0_ki
      coeffs%coeffs_51%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_51%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_51%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_51%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_51%c1(2,5) = -derivative(czip,2,2,2,2,2)/120.0_ki
      coeffs%coeffs_51%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_51%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_51%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_51%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_51%c1(3,5) = -derivative(czip,3,3,3,3,3)/120.0_ki
      coeffs%coeffs_51%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_51%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_51%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_51%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_51%c1(4,5) = -derivative(czip,4,4,4,4,4)/120.0_ki
      coeffs%coeffs_51%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_51%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_51%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_51%c2(1,4) = derivative(czip,1,2,2,2,2)/24.0_ki
      coeffs%coeffs_51%c2(1,5) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_51%c2(1,6) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_51%c2(1,7) = -derivative(czip,1,1,2,2,2)/12.0_ki
      coeffs%coeffs_51%c2(1,8) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_51%c2(1,9) = derivative(czip,1,1,1,2,2)/12.0_ki
      coeffs%coeffs_51%c2(1,10) = -derivative(czip,1,1,1,1,2)/24.0_ki
      coeffs%coeffs_51%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_51%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_51%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_51%c2(2,4) = derivative(czip,1,3,3,3,3)/24.0_ki
      coeffs%coeffs_51%c2(2,5) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_51%c2(2,6) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_51%c2(2,7) = -derivative(czip,1,1,3,3,3)/12.0_ki
      coeffs%coeffs_51%c2(2,8) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_51%c2(2,9) = derivative(czip,1,1,1,3,3)/12.0_ki
      coeffs%coeffs_51%c2(2,10) = -derivative(czip,1,1,1,1,3)/24.0_ki
      coeffs%coeffs_51%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_51%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_51%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_51%c2(3,4) = derivative(czip,1,4,4,4,4)/24.0_ki
      coeffs%coeffs_51%c2(3,5) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_51%c2(3,6) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_51%c2(3,7) = -derivative(czip,1,1,4,4,4)/12.0_ki
      coeffs%coeffs_51%c2(3,8) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_51%c2(3,9) = derivative(czip,1,1,1,4,4)/12.0_ki
      coeffs%coeffs_51%c2(3,10) = -derivative(czip,1,1,1,1,4)/24.0_ki
      coeffs%coeffs_51%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_51%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_51%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_51%c2(4,4) = -derivative(czip,2,3,3,3,3)/24.0_ki
      coeffs%coeffs_51%c2(4,5) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_51%c2(4,6) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_51%c2(4,7) = -derivative(czip,2,2,3,3,3)/12.0_ki
      coeffs%coeffs_51%c2(4,8) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_51%c2(4,9) = -derivative(czip,2,2,2,3,3)/12.0_ki
      coeffs%coeffs_51%c2(4,10) = -derivative(czip,2,2,2,2,3)/24.0_ki
      coeffs%coeffs_51%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_51%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_51%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_51%c2(5,4) = -derivative(czip,2,4,4,4,4)/24.0_ki
      coeffs%coeffs_51%c2(5,5) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_51%c2(5,6) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_51%c2(5,7) = -derivative(czip,2,2,4,4,4)/12.0_ki
      coeffs%coeffs_51%c2(5,8) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_51%c2(5,9) = -derivative(czip,2,2,2,4,4)/12.0_ki
      coeffs%coeffs_51%c2(5,10) = -derivative(czip,2,2,2,2,4)/24.0_ki
      coeffs%coeffs_51%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_51%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_51%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_51%c2(6,4) = -derivative(czip,3,4,4,4,4)/24.0_ki
      coeffs%coeffs_51%c2(6,5) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_51%c2(6,6) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_51%c2(6,7) = -derivative(czip,3,3,4,4,4)/12.0_ki
      coeffs%coeffs_51%c2(6,8) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_51%c2(6,9) = -derivative(czip,3,3,3,4,4)/12.0_ki
      coeffs%coeffs_51%c2(6,10) = -derivative(czip,3,3,3,3,4)/24.0_ki
      coeffs%coeffs_51%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_51%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_51%c3(1,3) = derivative(czip,1,2,3,3,3)/6.0_ki
      coeffs%coeffs_51%c3(1,4) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_51%c3(1,5) = derivative(czip,1,2,2,3,3)/4.0_ki
      coeffs%coeffs_51%c3(1,6) = derivative(czip,1,2,2,2,3)/6.0_ki
      coeffs%coeffs_51%c3(1,7) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_51%c3(1,8) = -derivative(czip,1,1,2,3,3)/4.0_ki
      coeffs%coeffs_51%c3(1,9) = -derivative(czip,1,1,2,2,3)/4.0_ki
      coeffs%coeffs_51%c3(1,10) = derivative(czip,1,1,1,2,3)/6.0_ki
      coeffs%coeffs_51%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_51%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_51%c3(2,3) = derivative(czip,1,2,4,4,4)/6.0_ki
      coeffs%coeffs_51%c3(2,4) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_51%c3(2,5) = derivative(czip,1,2,2,4,4)/4.0_ki
      coeffs%coeffs_51%c3(2,6) = derivative(czip,1,2,2,2,4)/6.0_ki
      coeffs%coeffs_51%c3(2,7) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_51%c3(2,8) = -derivative(czip,1,1,2,4,4)/4.0_ki
      coeffs%coeffs_51%c3(2,9) = -derivative(czip,1,1,2,2,4)/4.0_ki
      coeffs%coeffs_51%c3(2,10) = derivative(czip,1,1,1,2,4)/6.0_ki
      coeffs%coeffs_51%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_51%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_51%c3(3,3) = derivative(czip,1,3,4,4,4)/6.0_ki
      coeffs%coeffs_51%c3(3,4) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_51%c3(3,5) = derivative(czip,1,3,3,4,4)/4.0_ki
      coeffs%coeffs_51%c3(3,6) = derivative(czip,1,3,3,3,4)/6.0_ki
      coeffs%coeffs_51%c3(3,7) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_51%c3(3,8) = -derivative(czip,1,1,3,4,4)/4.0_ki
      coeffs%coeffs_51%c3(3,9) = -derivative(czip,1,1,3,3,4)/4.0_ki
      coeffs%coeffs_51%c3(3,10) = derivative(czip,1,1,1,3,4)/6.0_ki
      coeffs%coeffs_51%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_51%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_51%c3(4,3) = -derivative(czip,2,3,4,4,4)/6.0_ki
      coeffs%coeffs_51%c3(4,4) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_51%c3(4,5) = -derivative(czip,2,3,3,4,4)/4.0_ki
      coeffs%coeffs_51%c3(4,6) = -derivative(czip,2,3,3,3,4)/6.0_ki
      coeffs%coeffs_51%c3(4,7) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_51%c3(4,8) = -derivative(czip,2,2,3,4,4)/4.0_ki
      coeffs%coeffs_51%c3(4,9) = -derivative(czip,2,2,3,3,4)/4.0_ki
      coeffs%coeffs_51%c3(4,10) = -derivative(czip,2,2,2,3,4)/6.0_ki
      coeffs%coeffs_51%c4(1,1) = -derivative(czip,1,2,3,4)
      coeffs%coeffs_51%c4(1,2) = derivative(czip,1,2,3,4,4)/2.0_ki
      coeffs%coeffs_51%c4(1,3) = derivative(czip,1,2,3,3,4)/2.0_ki
      coeffs%coeffs_51%c4(1,4) = derivative(czip,1,2,2,3,4)/2.0_ki
      coeffs%coeffs_51%c4(1,5) = -derivative(czip,1,1,2,3,4)/2.0_ki
      !---#] reconstruct coeffs%coeffs_51:
   end subroutine reconstruct_d51
!---#] subroutine reconstruct_d51:
end module     p0_gg_hhg_d51h1l1d
