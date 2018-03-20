module     p0_gg_hhg_d17h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d17h0l1d.f90
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
      use p0_gg_hhg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd17
      complex(ki) :: brack
      acd17(1)=dotproduct(k2,qshift)
      acd17(2)=dotproduct(k5,qshift)
      acd17(3)=abb17(17)
      acd17(4)=dotproduct(qshift,qshift)
      acd17(5)=abb17(25)
      acd17(6)=dotproduct(qshift,spvak2k5)
      acd17(7)=abb17(14)
      acd17(8)=dotproduct(qshift,spval3k5)
      acd17(9)=abb17(41)
      acd17(10)=dotproduct(qshift,spval4k5)
      acd17(11)=abb17(53)
      acd17(12)=abb17(31)
      acd17(13)=abb17(12)
      acd17(14)=dotproduct(qshift,spvak2l3)
      acd17(15)=abb17(57)
      acd17(16)=abb17(42)
      acd17(17)=abb17(28)
      acd17(18)=abb17(16)
      acd17(19)=abb17(54)
      acd17(20)=abb17(34)
      acd17(21)=dotproduct(qshift,spvak1k5)
      acd17(22)=abb17(19)
      acd17(23)=dotproduct(qshift,spvak2l4)
      acd17(24)=abb17(33)
      acd17(25)=abb17(39)
      acd17(26)=abb17(52)
      acd17(27)=abb17(47)
      acd17(28)=abb17(40)
      acd17(29)=abb17(13)
      acd17(30)=abb17(48)
      acd17(31)=dotproduct(qshift,spvak1k2)
      acd17(32)=abb17(15)
      acd17(33)=abb17(22)
      acd17(34)=abb17(11)
      acd17(35)=abb17(29)
      acd17(36)=abb17(43)
      acd17(37)=abb17(36)
      acd17(38)=abb17(51)
      acd17(39)=abb17(55)
      acd17(40)=dotproduct(qshift,spvak2k1)
      acd17(41)=abb17(23)
      acd17(42)=abb17(20)
      acd17(43)=abb17(58)
      acd17(44)=abb17(26)
      acd17(45)=abb17(21)
      acd17(46)=-acd17(4)+acd17(2)
      acd17(46)=acd17(13)*acd17(46)
      acd17(47)=-acd17(23)*acd17(24)
      acd17(48)=-acd17(10)*acd17(19)
      acd17(49)=-acd17(21)*acd17(22)
      acd17(50)=-acd17(14)*acd17(20)
      acd17(51)=-acd17(8)*acd17(18)
      acd17(52)=-acd17(1)*acd17(5)
      acd17(53)=-acd17(6)*acd17(17)
      acd17(46)=acd17(53)+acd17(52)+acd17(51)+acd17(50)+acd17(49)+acd17(48)+acd&
      &17(25)+acd17(47)+acd17(46)
      acd17(46)=acd17(4)*acd17(46)
      acd17(47)=acd17(31)*acd17(32)
      acd17(48)=acd17(23)*acd17(30)
      acd17(49)=acd17(21)*acd17(29)
      acd17(50)=acd17(14)*acd17(28)
      acd17(51)=acd17(8)*acd17(27)
      acd17(52)=acd17(1)*acd17(7)
      acd17(53)=acd17(6)*acd17(26)
      acd17(47)=acd17(53)+acd17(52)+acd17(51)+acd17(50)+acd17(49)+acd17(48)-acd&
      &17(33)+acd17(47)
      acd17(47)=acd17(6)*acd17(47)
      acd17(48)=acd17(10)*acd17(11)
      acd17(49)=acd17(2)*acd17(3)
      acd17(50)=acd17(8)*acd17(9)
      acd17(48)=acd17(50)+acd17(49)-acd17(12)+acd17(48)
      acd17(48)=acd17(1)*acd17(48)
      acd17(49)=acd17(10)*acd17(37)
      acd17(50)=acd17(2)*acd17(15)
      acd17(49)=acd17(50)-acd17(39)+acd17(49)
      acd17(49)=acd17(14)*acd17(49)
      acd17(50)=acd17(23)*acd17(35)
      acd17(51)=acd17(21)*acd17(34)
      acd17(50)=acd17(51)-acd17(36)+acd17(50)
      acd17(50)=acd17(8)*acd17(50)
      acd17(51)=-acd17(40)*acd17(44)
      acd17(52)=-acd17(23)*acd17(43)
      acd17(53)=-acd17(10)*acd17(38)
      acd17(54)=-acd17(2)*acd17(16)
      acd17(55)=acd17(40)*acd17(41)
      acd17(55)=-acd17(42)+acd17(55)
      acd17(55)=acd17(21)*acd17(55)
      brack=acd17(45)+acd17(46)+acd17(47)+acd17(48)+acd17(49)+acd17(50)+acd17(5&
      &1)+acd17(52)+acd17(53)+acd17(54)+acd17(55)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd17
      complex(ki) :: brack
      acd17(1)=k2(iv1)
      acd17(2)=dotproduct(k5,qshift)
      acd17(3)=abb17(17)
      acd17(4)=dotproduct(qshift,qshift)
      acd17(5)=abb17(25)
      acd17(6)=dotproduct(qshift,spvak2k5)
      acd17(7)=abb17(14)
      acd17(8)=dotproduct(qshift,spval3k5)
      acd17(9)=abb17(41)
      acd17(10)=dotproduct(qshift,spval4k5)
      acd17(11)=abb17(53)
      acd17(12)=abb17(31)
      acd17(13)=k5(iv1)
      acd17(14)=dotproduct(k2,qshift)
      acd17(15)=abb17(12)
      acd17(16)=dotproduct(qshift,spvak2l3)
      acd17(17)=abb17(57)
      acd17(18)=abb17(42)
      acd17(19)=qshift(iv1)
      acd17(20)=abb17(28)
      acd17(21)=abb17(16)
      acd17(22)=abb17(54)
      acd17(23)=abb17(34)
      acd17(24)=dotproduct(qshift,spvak1k5)
      acd17(25)=abb17(19)
      acd17(26)=dotproduct(qshift,spvak2l4)
      acd17(27)=abb17(33)
      acd17(28)=abb17(39)
      acd17(29)=spvak2k5(iv1)
      acd17(30)=abb17(52)
      acd17(31)=abb17(47)
      acd17(32)=abb17(40)
      acd17(33)=abb17(13)
      acd17(34)=abb17(48)
      acd17(35)=dotproduct(qshift,spvak1k2)
      acd17(36)=abb17(15)
      acd17(37)=abb17(22)
      acd17(38)=spval3k5(iv1)
      acd17(39)=abb17(11)
      acd17(40)=abb17(29)
      acd17(41)=abb17(43)
      acd17(42)=spval4k5(iv1)
      acd17(43)=abb17(36)
      acd17(44)=abb17(51)
      acd17(45)=spvak2l3(iv1)
      acd17(46)=abb17(55)
      acd17(47)=spvak1k5(iv1)
      acd17(48)=dotproduct(qshift,spvak2k1)
      acd17(49)=abb17(23)
      acd17(50)=abb17(20)
      acd17(51)=spvak2l4(iv1)
      acd17(52)=abb17(58)
      acd17(53)=spvak1k2(iv1)
      acd17(54)=spvak2k1(iv1)
      acd17(55)=abb17(26)
      acd17(56)=-acd17(51)*acd17(27)
      acd17(57)=-acd17(42)*acd17(22)
      acd17(58)=acd17(13)*acd17(15)
      acd17(59)=-acd17(47)*acd17(25)
      acd17(60)=-acd17(45)*acd17(23)
      acd17(61)=-acd17(38)*acd17(21)
      acd17(62)=-acd17(1)*acd17(5)
      acd17(63)=-acd17(29)*acd17(20)
      acd17(56)=acd17(63)+acd17(62)+acd17(61)+acd17(60)+acd17(59)+acd17(58)+acd&
      &17(56)+acd17(57)
      acd17(56)=acd17(4)*acd17(56)
      acd17(57)=-2.0_ki*acd17(4)+acd17(2)
      acd17(57)=acd17(15)*acd17(57)
      acd17(58)=-acd17(26)*acd17(27)
      acd17(59)=-acd17(10)*acd17(22)
      acd17(60)=-acd17(24)*acd17(25)
      acd17(61)=-acd17(16)*acd17(23)
      acd17(62)=-acd17(14)*acd17(5)
      acd17(63)=-acd17(8)*acd17(21)
      acd17(64)=-acd17(6)*acd17(20)
      acd17(57)=acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd17(60)+acd17(59)+acd&
      &17(28)+acd17(58)+acd17(57)
      acd17(57)=acd17(19)*acd17(57)
      acd17(58)=acd17(36)*acd17(35)
      acd17(59)=acd17(26)*acd17(34)
      acd17(60)=acd17(24)*acd17(33)
      acd17(61)=acd17(16)*acd17(32)
      acd17(62)=acd17(14)*acd17(7)
      acd17(63)=acd17(8)*acd17(31)
      acd17(64)=acd17(6)*acd17(30)
      acd17(58)=2.0_ki*acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd17(60)+acd17(&
      &59)-acd17(37)+acd17(58)
      acd17(58)=acd17(29)*acd17(58)
      acd17(59)=acd17(36)*acd17(53)
      acd17(60)=acd17(51)*acd17(34)
      acd17(61)=acd17(47)*acd17(33)
      acd17(62)=acd17(45)*acd17(32)
      acd17(63)=acd17(38)*acd17(31)
      acd17(64)=acd17(1)*acd17(7)
      acd17(59)=acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd17(59)+acd17(60)
      acd17(59)=acd17(6)*acd17(59)
      acd17(60)=acd17(26)*acd17(40)
      acd17(61)=acd17(24)*acd17(39)
      acd17(62)=acd17(14)*acd17(9)
      acd17(60)=acd17(62)+acd17(61)-acd17(41)+acd17(60)
      acd17(60)=acd17(38)*acd17(60)
      acd17(61)=acd17(10)*acd17(11)
      acd17(62)=acd17(2)*acd17(3)
      acd17(63)=acd17(8)*acd17(9)
      acd17(61)=acd17(63)+acd17(62)-acd17(12)+acd17(61)
      acd17(61)=acd17(1)*acd17(61)
      acd17(62)=acd17(10)*acd17(43)
      acd17(63)=acd17(2)*acd17(17)
      acd17(62)=acd17(63)-acd17(46)+acd17(62)
      acd17(62)=acd17(45)*acd17(62)
      acd17(63)=acd17(42)*acd17(11)
      acd17(64)=acd17(13)*acd17(3)
      acd17(63)=acd17(63)+acd17(64)
      acd17(63)=acd17(14)*acd17(63)
      acd17(64)=acd17(51)*acd17(40)
      acd17(65)=acd17(47)*acd17(39)
      acd17(64)=acd17(64)+acd17(65)
      acd17(64)=acd17(8)*acd17(64)
      acd17(65)=acd17(24)*acd17(49)
      acd17(65)=acd17(65)-acd17(55)
      acd17(65)=acd17(54)*acd17(65)
      acd17(66)=acd17(16)*acd17(43)
      acd17(66)=acd17(66)-acd17(44)
      acd17(66)=acd17(42)*acd17(66)
      acd17(67)=-acd17(51)*acd17(52)
      acd17(68)=acd17(16)*acd17(17)
      acd17(68)=-acd17(18)+acd17(68)
      acd17(68)=acd17(13)*acd17(68)
      acd17(69)=acd17(49)*acd17(48)
      acd17(69)=-acd17(50)+acd17(69)
      acd17(69)=acd17(47)*acd17(69)
      brack=acd17(56)+2.0_ki*acd17(57)+acd17(58)+acd17(59)+acd17(60)+acd17(61)+&
      &acd17(62)+acd17(63)+acd17(64)+acd17(65)+acd17(66)+acd17(67)+acd17(68)+ac&
      &d17(69)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=dotproduct(k2,qshift)
      acd17(3)=abb17(25)
      acd17(4)=dotproduct(k5,qshift)
      acd17(5)=abb17(12)
      acd17(6)=dotproduct(qshift,qshift)
      acd17(7)=dotproduct(qshift,spvak1k5)
      acd17(8)=abb17(19)
      acd17(9)=dotproduct(qshift,spvak2l3)
      acd17(10)=abb17(34)
      acd17(11)=dotproduct(qshift,spvak2l4)
      acd17(12)=abb17(33)
      acd17(13)=dotproduct(qshift,spvak2k5)
      acd17(14)=abb17(28)
      acd17(15)=dotproduct(qshift,spval3k5)
      acd17(16)=abb17(16)
      acd17(17)=dotproduct(qshift,spval4k5)
      acd17(18)=abb17(54)
      acd17(19)=abb17(39)
      acd17(20)=k2(iv1)
      acd17(21)=k5(iv2)
      acd17(22)=abb17(17)
      acd17(23)=qshift(iv2)
      acd17(24)=spvak2k5(iv2)
      acd17(25)=abb17(14)
      acd17(26)=spval3k5(iv2)
      acd17(27)=abb17(41)
      acd17(28)=spval4k5(iv2)
      acd17(29)=abb17(53)
      acd17(30)=k2(iv2)
      acd17(31)=k5(iv1)
      acd17(32)=qshift(iv1)
      acd17(33)=spvak2k5(iv1)
      acd17(34)=spval3k5(iv1)
      acd17(35)=spval4k5(iv1)
      acd17(36)=spvak2l3(iv2)
      acd17(37)=abb17(57)
      acd17(38)=spvak2l3(iv1)
      acd17(39)=spvak1k5(iv2)
      acd17(40)=spvak2l4(iv2)
      acd17(41)=spvak1k5(iv1)
      acd17(42)=spvak2l4(iv1)
      acd17(43)=abb17(13)
      acd17(44)=abb17(11)
      acd17(45)=spvak2k1(iv2)
      acd17(46)=abb17(23)
      acd17(47)=spvak2k1(iv1)
      acd17(48)=abb17(40)
      acd17(49)=abb17(36)
      acd17(50)=abb17(48)
      acd17(51)=abb17(29)
      acd17(52)=abb17(52)
      acd17(53)=abb17(47)
      acd17(54)=spvak1k2(iv2)
      acd17(55)=abb17(15)
      acd17(56)=spvak1k2(iv1)
      acd17(57)=-acd17(18)*acd17(28)
      acd17(58)=-acd17(12)*acd17(40)
      acd17(59)=-acd17(39)*acd17(8)
      acd17(60)=-acd17(36)*acd17(10)
      acd17(61)=-acd17(30)*acd17(3)
      acd17(62)=-acd17(26)*acd17(16)
      acd17(63)=acd17(5)*acd17(21)
      acd17(64)=-acd17(24)*acd17(14)
      acd17(57)=acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd17(60)+acd17(59)+acd&
      &17(57)+acd17(58)
      acd17(57)=acd17(32)*acd17(57)
      acd17(58)=-4.0_ki*acd17(32)+acd17(31)
      acd17(58)=acd17(5)*acd17(58)
      acd17(59)=-acd17(18)*acd17(35)
      acd17(60)=-acd17(12)*acd17(42)
      acd17(61)=-acd17(41)*acd17(8)
      acd17(62)=-acd17(38)*acd17(10)
      acd17(63)=-acd17(34)*acd17(16)
      acd17(64)=-acd17(20)*acd17(3)
      acd17(65)=-acd17(33)*acd17(14)
      acd17(58)=acd17(65)+acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd17(59)+acd&
      &17(60)+acd17(58)
      acd17(58)=acd17(23)*acd17(58)
      acd17(59)=-acd17(18)*acd17(17)
      acd17(60)=-acd17(16)*acd17(15)
      acd17(61)=-acd17(14)*acd17(13)
      acd17(62)=-acd17(12)*acd17(11)
      acd17(63)=-acd17(10)*acd17(9)
      acd17(64)=-acd17(8)*acd17(7)
      acd17(65)=-acd17(3)*acd17(2)
      acd17(66)=-2.0_ki*acd17(6)+acd17(4)
      acd17(66)=acd17(5)*acd17(66)
      acd17(59)=acd17(66)+acd17(65)+acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd&
      &17(60)+acd17(19)+acd17(59)
      acd17(59)=acd17(1)*acd17(59)
      acd17(57)=acd17(59)+acd17(57)+acd17(58)
      acd17(58)=acd17(55)*acd17(56)
      acd17(59)=acd17(42)*acd17(50)
      acd17(60)=acd17(41)*acd17(43)
      acd17(61)=acd17(38)*acd17(48)
      acd17(62)=acd17(34)*acd17(53)
      acd17(63)=acd17(20)*acd17(25)
      acd17(64)=acd17(33)*acd17(52)
      acd17(58)=2.0_ki*acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd17(60)+acd17(&
      &58)+acd17(59)
      acd17(58)=acd17(24)*acd17(58)
      acd17(59)=acd17(55)*acd17(54)
      acd17(60)=acd17(40)*acd17(50)
      acd17(61)=acd17(39)*acd17(43)
      acd17(62)=acd17(36)*acd17(48)
      acd17(63)=acd17(30)*acd17(25)
      acd17(64)=acd17(26)*acd17(53)
      acd17(59)=acd17(64)+acd17(63)+acd17(62)+acd17(61)+acd17(59)+acd17(60)
      acd17(59)=acd17(33)*acd17(59)
      acd17(60)=acd17(35)*acd17(29)
      acd17(61)=acd17(31)*acd17(22)
      acd17(62)=acd17(34)*acd17(27)
      acd17(60)=acd17(62)+acd17(60)+acd17(61)
      acd17(60)=acd17(30)*acd17(60)
      acd17(61)=acd17(28)*acd17(29)
      acd17(62)=acd17(21)*acd17(22)
      acd17(63)=acd17(26)*acd17(27)
      acd17(61)=acd17(63)+acd17(61)+acd17(62)
      acd17(61)=acd17(20)*acd17(61)
      acd17(62)=acd17(41)*acd17(45)
      acd17(63)=acd17(39)*acd17(47)
      acd17(62)=acd17(62)+acd17(63)
      acd17(62)=acd17(46)*acd17(62)
      acd17(63)=acd17(28)*acd17(49)
      acd17(64)=acd17(21)*acd17(37)
      acd17(63)=acd17(63)+acd17(64)
      acd17(63)=acd17(38)*acd17(63)
      acd17(64)=acd17(35)*acd17(49)
      acd17(65)=acd17(31)*acd17(37)
      acd17(64)=acd17(64)+acd17(65)
      acd17(64)=acd17(36)*acd17(64)
      acd17(65)=acd17(40)*acd17(51)
      acd17(66)=acd17(39)*acd17(44)
      acd17(65)=acd17(65)+acd17(66)
      acd17(65)=acd17(34)*acd17(65)
      acd17(66)=acd17(42)*acd17(51)
      acd17(67)=acd17(41)*acd17(44)
      acd17(66)=acd17(66)+acd17(67)
      acd17(66)=acd17(26)*acd17(66)
      brack=2.0_ki*acd17(57)+acd17(58)+acd17(59)+acd17(60)+acd17(61)+acd17(62)+&
      &acd17(63)+acd17(64)+acd17(65)+acd17(66)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(48) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=k2(iv3)
      acd17(3)=abb17(25)
      acd17(4)=k5(iv3)
      acd17(5)=abb17(12)
      acd17(6)=qshift(iv3)
      acd17(7)=spvak1k5(iv3)
      acd17(8)=abb17(19)
      acd17(9)=spvak2l3(iv3)
      acd17(10)=abb17(34)
      acd17(11)=spvak2l4(iv3)
      acd17(12)=abb17(33)
      acd17(13)=spvak2k5(iv3)
      acd17(14)=abb17(28)
      acd17(15)=spval3k5(iv3)
      acd17(16)=abb17(16)
      acd17(17)=spval4k5(iv3)
      acd17(18)=abb17(54)
      acd17(19)=d(iv1,iv3)
      acd17(20)=k2(iv2)
      acd17(21)=k5(iv2)
      acd17(22)=qshift(iv2)
      acd17(23)=spvak1k5(iv2)
      acd17(24)=spvak2l3(iv2)
      acd17(25)=spvak2l4(iv2)
      acd17(26)=spvak2k5(iv2)
      acd17(27)=spval3k5(iv2)
      acd17(28)=spval4k5(iv2)
      acd17(29)=d(iv2,iv3)
      acd17(30)=k2(iv1)
      acd17(31)=k5(iv1)
      acd17(32)=qshift(iv1)
      acd17(33)=spvak1k5(iv1)
      acd17(34)=spvak2l3(iv1)
      acd17(35)=spvak2l4(iv1)
      acd17(36)=spvak2k5(iv1)
      acd17(37)=spval3k5(iv1)
      acd17(38)=spval4k5(iv1)
      acd17(39)=-acd17(18)*acd17(38)
      acd17(40)=-acd17(16)*acd17(37)
      acd17(41)=-acd17(14)*acd17(36)
      acd17(42)=-acd17(12)*acd17(35)
      acd17(43)=-acd17(10)*acd17(34)
      acd17(44)=-acd17(8)*acd17(33)
      acd17(45)=-acd17(3)*acd17(30)
      acd17(46)=-4.0_ki*acd17(32)+acd17(31)
      acd17(46)=acd17(5)*acd17(46)
      acd17(39)=acd17(46)+acd17(45)+acd17(44)+acd17(43)+acd17(42)+acd17(41)+acd&
      &17(39)+acd17(40)
      acd17(39)=acd17(29)*acd17(39)
      acd17(40)=-acd17(18)*acd17(28)
      acd17(41)=-acd17(16)*acd17(27)
      acd17(42)=-acd17(14)*acd17(26)
      acd17(43)=-acd17(12)*acd17(25)
      acd17(44)=-acd17(10)*acd17(24)
      acd17(45)=-acd17(8)*acd17(23)
      acd17(46)=-acd17(3)*acd17(20)
      acd17(47)=-4.0_ki*acd17(22)+acd17(21)
      acd17(47)=acd17(5)*acd17(47)
      acd17(40)=acd17(47)+acd17(46)+acd17(45)+acd17(44)+acd17(43)+acd17(42)+acd&
      &17(40)+acd17(41)
      acd17(40)=acd17(19)*acd17(40)
      acd17(41)=-acd17(18)*acd17(17)
      acd17(42)=-acd17(16)*acd17(15)
      acd17(43)=-acd17(14)*acd17(13)
      acd17(44)=-acd17(12)*acd17(11)
      acd17(45)=-acd17(10)*acd17(9)
      acd17(46)=-acd17(8)*acd17(7)
      acd17(47)=-acd17(3)*acd17(2)
      acd17(48)=-4.0_ki*acd17(6)+acd17(4)
      acd17(48)=acd17(5)*acd17(48)
      acd17(41)=acd17(48)+acd17(47)+acd17(46)+acd17(45)+acd17(44)+acd17(43)+acd&
      &17(41)+acd17(42)
      acd17(41)=acd17(1)*acd17(41)
      acd17(39)=acd17(41)+acd17(39)+acd17(40)
      brack=2.0_ki*acd17(39)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(10) :: acd17
      complex(ki) :: brack
      acd17(1)=d(iv1,iv2)
      acd17(2)=d(iv3,iv4)
      acd17(3)=abb17(12)
      acd17(4)=d(iv1,iv3)
      acd17(5)=d(iv2,iv4)
      acd17(6)=d(iv1,iv4)
      acd17(7)=d(iv2,iv3)
      acd17(8)=-acd17(2)*acd17(1)
      acd17(9)=-acd17(5)*acd17(4)
      acd17(10)=-acd17(7)*acd17(6)
      acd17(8)=acd17(10)+acd17(8)+acd17(9)
      brack=8.0_ki*acd17(8)*acd17(3)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd17h0
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
end module     p0_gg_hhg_d17h0l1d
