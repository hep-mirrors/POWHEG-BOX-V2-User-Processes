module     p0_gg_hhg_d15h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d15h3l1d.f90
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
      use p0_gg_hhg_abbrevd15h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd15
      complex(ki) :: brack
      acd15(1)=dotproduct(k2,qshift)
      acd15(2)=dotproduct(qshift,qshift)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(40)
      acd15(5)=abb15(23)
      acd15(6)=abb15(74)
      acd15(7)=dotproduct(qshift,spvak2k1)
      acd15(8)=abb15(10)
      acd15(9)=dotproduct(qshift,spvak2l3)
      acd15(10)=abb15(19)
      acd15(11)=dotproduct(qshift,spval4l3)
      acd15(12)=abb15(62)
      acd15(13)=abb15(36)
      acd15(14)=abb15(13)
      acd15(15)=abb15(26)
      acd15(16)=dotproduct(qshift,spvak1k5)
      acd15(17)=abb15(51)
      acd15(18)=abb15(22)
      acd15(19)=abb15(11)
      acd15(20)=abb15(16)
      acd15(21)=abb15(35)
      acd15(22)=dotproduct(qshift,spvak2l4)
      acd15(23)=abb15(73)
      acd15(24)=dotproduct(qshift,spval3l4)
      acd15(25)=abb15(64)
      acd15(26)=abb15(33)
      acd15(27)=abb15(20)
      acd15(28)=abb15(24)
      acd15(29)=abb15(18)
      acd15(30)=dotproduct(qshift,spval4k2)
      acd15(31)=abb15(29)
      acd15(32)=abb15(30)
      acd15(33)=abb15(17)
      acd15(34)=abb15(27)
      acd15(35)=abb15(14)
      acd15(36)=abb15(12)
      acd15(37)=abb15(28)
      acd15(38)=dotproduct(qshift,spvak1l4)
      acd15(39)=abb15(31)
      acd15(40)=abb15(32)
      acd15(41)=abb15(25)
      acd15(42)=abb15(66)
      acd15(43)=dotproduct(qshift,spval3k5)
      acd15(44)=abb15(42)
      acd15(45)=dotproduct(qshift,spval4k1)
      acd15(46)=abb15(67)
      acd15(47)=abb15(21)
      acd15(48)=-acd15(16)*acd15(17)
      acd15(49)=acd15(3)*acd15(14)
      acd15(48)=acd15(49)-acd15(18)+acd15(48)
      acd15(48)=acd15(2)*acd15(48)
      acd15(49)=acd15(30)*acd15(31)
      acd15(50)=acd15(11)*acd15(28)
      acd15(51)=acd15(9)*acd15(27)
      acd15(52)=acd15(16)*acd15(29)
      acd15(53)=acd15(1)*acd15(8)
      acd15(54)=acd15(3)*acd15(21)
      acd15(48)=acd15(48)+acd15(54)+acd15(53)+acd15(52)+acd15(51)+acd15(50)-acd&
      &15(32)+acd15(49)
      acd15(48)=acd15(7)*acd15(48)
      acd15(49)=acd15(24)*acd15(25)
      acd15(50)=acd15(22)*acd15(23)
      acd15(51)=acd15(1)*acd15(6)
      acd15(49)=acd15(51)+acd15(50)-acd15(26)+acd15(49)
      acd15(49)=acd15(3)*acd15(49)
      acd15(50)=-acd15(16)*acd15(19)
      acd15(51)=-acd15(1)*acd15(5)
      acd15(52)=acd15(1)*acd15(4)
      acd15(52)=-acd15(15)+acd15(52)
      acd15(52)=acd15(3)*acd15(52)
      acd15(50)=acd15(52)+acd15(51)+acd15(20)+acd15(50)
      acd15(50)=acd15(2)*acd15(50)
      acd15(51)=acd15(24)*acd15(36)
      acd15(52)=acd15(22)*acd15(35)
      acd15(51)=acd15(52)-acd15(37)+acd15(51)
      acd15(51)=acd15(16)*acd15(51)
      acd15(52)=acd15(11)*acd15(12)
      acd15(53)=acd15(9)*acd15(10)
      acd15(52)=acd15(53)-acd15(13)+acd15(52)
      acd15(52)=acd15(1)*acd15(52)
      acd15(53)=-acd15(45)*acd15(46)
      acd15(54)=-acd15(43)*acd15(44)
      acd15(55)=-acd15(38)*acd15(39)
      acd15(56)=-acd15(30)*acd15(42)
      acd15(57)=-acd15(24)*acd15(41)
      acd15(58)=-acd15(22)*acd15(40)
      acd15(59)=-acd15(11)*acd15(34)
      acd15(60)=-acd15(9)*acd15(33)
      brack=acd15(47)+acd15(48)+acd15(49)+acd15(50)+acd15(51)+acd15(52)+acd15(5&
      &3)+acd15(54)+acd15(55)+acd15(56)+acd15(57)+acd15(58)+acd15(59)+acd15(60)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd15h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd15
      complex(ki) :: brack
      acd15(1)=k2(iv1)
      acd15(2)=dotproduct(qshift,qshift)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(40)
      acd15(5)=abb15(23)
      acd15(6)=abb15(74)
      acd15(7)=dotproduct(qshift,spvak2k1)
      acd15(8)=abb15(10)
      acd15(9)=dotproduct(qshift,spvak2l3)
      acd15(10)=abb15(19)
      acd15(11)=dotproduct(qshift,spval4l3)
      acd15(12)=abb15(62)
      acd15(13)=abb15(36)
      acd15(14)=qshift(iv1)
      acd15(15)=dotproduct(k2,qshift)
      acd15(16)=abb15(13)
      acd15(17)=abb15(26)
      acd15(18)=dotproduct(qshift,spvak1k5)
      acd15(19)=abb15(51)
      acd15(20)=abb15(22)
      acd15(21)=abb15(11)
      acd15(22)=abb15(16)
      acd15(23)=spvak2k5(iv1)
      acd15(24)=abb15(35)
      acd15(25)=dotproduct(qshift,spvak2l4)
      acd15(26)=abb15(73)
      acd15(27)=dotproduct(qshift,spval3l4)
      acd15(28)=abb15(64)
      acd15(29)=abb15(33)
      acd15(30)=spvak2k1(iv1)
      acd15(31)=abb15(20)
      acd15(32)=abb15(24)
      acd15(33)=abb15(18)
      acd15(34)=dotproduct(qshift,spval4k2)
      acd15(35)=abb15(29)
      acd15(36)=abb15(30)
      acd15(37)=spvak2l3(iv1)
      acd15(38)=abb15(17)
      acd15(39)=spval4l3(iv1)
      acd15(40)=abb15(27)
      acd15(41)=spvak1k5(iv1)
      acd15(42)=abb15(14)
      acd15(43)=abb15(12)
      acd15(44)=abb15(28)
      acd15(45)=spvak1l4(iv1)
      acd15(46)=abb15(31)
      acd15(47)=spvak2l4(iv1)
      acd15(48)=abb15(32)
      acd15(49)=spval3l4(iv1)
      acd15(50)=abb15(25)
      acd15(51)=spval4k2(iv1)
      acd15(52)=abb15(66)
      acd15(53)=spval3k5(iv1)
      acd15(54)=abb15(42)
      acd15(55)=spval4k1(iv1)
      acd15(56)=abb15(67)
      acd15(57)=acd15(18)*acd15(19)
      acd15(58)=acd15(3)*acd15(16)
      acd15(57)=-acd15(58)+acd15(57)+acd15(20)
      acd15(58)=2.0_ki*acd15(14)
      acd15(59)=-acd15(58)*acd15(57)
      acd15(60)=-acd15(41)*acd15(19)
      acd15(61)=acd15(23)*acd15(16)
      acd15(60)=acd15(60)+acd15(61)
      acd15(60)=acd15(2)*acd15(60)
      acd15(61)=acd15(35)*acd15(51)
      acd15(62)=acd15(39)*acd15(32)
      acd15(63)=acd15(37)*acd15(31)
      acd15(64)=acd15(41)*acd15(33)
      acd15(65)=acd15(1)*acd15(8)
      acd15(66)=acd15(23)*acd15(24)
      acd15(59)=acd15(60)+acd15(66)+acd15(65)+acd15(64)+acd15(63)+acd15(61)+acd&
      &15(62)+acd15(59)
      acd15(59)=acd15(7)*acd15(59)
      acd15(60)=acd15(35)*acd15(34)
      acd15(61)=acd15(11)*acd15(32)
      acd15(62)=acd15(9)*acd15(31)
      acd15(63)=acd15(18)*acd15(33)
      acd15(64)=acd15(15)*acd15(8)
      acd15(65)=acd15(3)*acd15(24)
      acd15(60)=acd15(65)+acd15(64)+acd15(63)+acd15(62)+acd15(61)-acd15(36)+acd&
      &15(60)
      acd15(60)=acd15(30)*acd15(60)
      acd15(61)=acd15(15)*acd15(4)
      acd15(61)=acd15(61)-acd15(17)
      acd15(62)=acd15(61)*acd15(58)
      acd15(63)=acd15(49)*acd15(28)
      acd15(64)=acd15(47)*acd15(26)
      acd15(65)=acd15(1)*acd15(6)
      acd15(62)=acd15(62)+acd15(65)+acd15(63)+acd15(64)
      acd15(62)=acd15(3)*acd15(62)
      acd15(57)=-acd15(30)*acd15(57)
      acd15(63)=acd15(3)*acd15(4)
      acd15(63)=acd15(63)-acd15(5)
      acd15(63)=acd15(1)*acd15(63)
      acd15(64)=-acd15(41)*acd15(21)
      acd15(61)=acd15(23)*acd15(61)
      acd15(57)=acd15(57)+acd15(61)+acd15(64)+acd15(63)
      acd15(57)=acd15(2)*acd15(57)
      acd15(61)=acd15(27)*acd15(28)
      acd15(63)=acd15(25)*acd15(26)
      acd15(64)=acd15(15)*acd15(6)
      acd15(61)=acd15(64)+acd15(63)-acd15(29)+acd15(61)
      acd15(61)=acd15(23)*acd15(61)
      acd15(63)=acd15(27)*acd15(43)
      acd15(64)=acd15(25)*acd15(42)
      acd15(63)=acd15(64)-acd15(44)+acd15(63)
      acd15(63)=acd15(41)*acd15(63)
      acd15(64)=acd15(49)*acd15(43)
      acd15(65)=acd15(47)*acd15(42)
      acd15(64)=acd15(64)+acd15(65)
      acd15(64)=acd15(18)*acd15(64)
      acd15(65)=acd15(39)*acd15(12)
      acd15(66)=acd15(37)*acd15(10)
      acd15(65)=acd15(65)+acd15(66)
      acd15(65)=acd15(15)*acd15(65)
      acd15(66)=acd15(11)*acd15(12)
      acd15(67)=acd15(9)*acd15(10)
      acd15(66)=acd15(67)-acd15(13)+acd15(66)
      acd15(66)=acd15(1)*acd15(66)
      acd15(67)=-acd15(18)*acd15(21)
      acd15(68)=-acd15(15)*acd15(5)
      acd15(67)=acd15(68)+acd15(22)+acd15(67)
      acd15(58)=acd15(67)*acd15(58)
      acd15(67)=-acd15(55)*acd15(56)
      acd15(68)=-acd15(53)*acd15(54)
      acd15(69)=-acd15(45)*acd15(46)
      acd15(70)=-acd15(51)*acd15(52)
      acd15(71)=-acd15(49)*acd15(50)
      acd15(72)=-acd15(47)*acd15(48)
      acd15(73)=-acd15(39)*acd15(40)
      acd15(74)=-acd15(37)*acd15(38)
      brack=acd15(57)+acd15(58)+acd15(59)+acd15(60)+acd15(61)+acd15(62)+acd15(6&
      &3)+acd15(64)+acd15(65)+acd15(66)+acd15(67)+acd15(68)+acd15(69)+acd15(70)&
      &+acd15(71)+acd15(72)+acd15(73)+acd15(74)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd15h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=dotproduct(k2,qshift)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(40)
      acd15(5)=abb15(23)
      acd15(6)=dotproduct(qshift,spvak2k1)
      acd15(7)=abb15(13)
      acd15(8)=abb15(26)
      acd15(9)=dotproduct(qshift,spvak1k5)
      acd15(10)=abb15(51)
      acd15(11)=abb15(11)
      acd15(12)=abb15(22)
      acd15(13)=abb15(16)
      acd15(14)=k2(iv1)
      acd15(15)=qshift(iv2)
      acd15(16)=spvak2k5(iv2)
      acd15(17)=dotproduct(qshift,qshift)
      acd15(18)=abb15(74)
      acd15(19)=spvak2k1(iv2)
      acd15(20)=abb15(10)
      acd15(21)=spvak2l3(iv2)
      acd15(22)=abb15(19)
      acd15(23)=spval4l3(iv2)
      acd15(24)=abb15(62)
      acd15(25)=k2(iv2)
      acd15(26)=qshift(iv1)
      acd15(27)=spvak2k5(iv1)
      acd15(28)=spvak2k1(iv1)
      acd15(29)=spvak2l3(iv1)
      acd15(30)=spval4l3(iv1)
      acd15(31)=spvak1k5(iv2)
      acd15(32)=spvak1k5(iv1)
      acd15(33)=abb15(35)
      acd15(34)=spvak2l4(iv2)
      acd15(35)=abb15(73)
      acd15(36)=spval3l4(iv2)
      acd15(37)=abb15(64)
      acd15(38)=spvak2l4(iv1)
      acd15(39)=spval3l4(iv1)
      acd15(40)=abb15(18)
      acd15(41)=abb15(14)
      acd15(42)=abb15(12)
      acd15(43)=abb15(20)
      acd15(44)=abb15(24)
      acd15(45)=spval4k2(iv2)
      acd15(46)=abb15(29)
      acd15(47)=spval4k2(iv1)
      acd15(48)=acd15(10)*acd15(9)
      acd15(48)=acd15(48)+acd15(12)
      acd15(49)=acd15(3)*acd15(7)
      acd15(49)=acd15(48)-acd15(49)
      acd15(50)=2.0_ki*acd15(15)
      acd15(51)=-acd15(49)*acd15(50)
      acd15(52)=acd15(10)*acd15(17)
      acd15(52)=acd15(52)-acd15(40)
      acd15(53)=-acd15(31)*acd15(52)
      acd15(54)=acd15(46)*acd15(45)
      acd15(55)=acd15(23)*acd15(44)
      acd15(56)=acd15(21)*acd15(43)
      acd15(57)=acd15(25)*acd15(20)
      acd15(58)=acd15(7)*acd15(17)
      acd15(58)=acd15(58)+acd15(33)
      acd15(59)=acd15(16)*acd15(58)
      acd15(51)=acd15(51)+acd15(59)+acd15(57)+acd15(56)+acd15(54)+acd15(55)+acd&
      &15(53)
      acd15(51)=acd15(28)*acd15(51)
      acd15(53)=2.0_ki*acd15(26)
      acd15(49)=-acd15(49)*acd15(53)
      acd15(52)=-acd15(32)*acd15(52)
      acd15(54)=acd15(46)*acd15(47)
      acd15(55)=acd15(30)*acd15(44)
      acd15(56)=acd15(29)*acd15(43)
      acd15(57)=acd15(14)*acd15(20)
      acd15(58)=acd15(27)*acd15(58)
      acd15(49)=acd15(49)+acd15(58)+acd15(57)+acd15(56)+acd15(54)+acd15(55)+acd&
      &15(52)
      acd15(49)=acd15(19)*acd15(49)
      acd15(52)=acd15(6)*acd15(7)
      acd15(54)=acd15(4)*acd15(2)
      acd15(52)=-acd15(8)+acd15(52)+acd15(54)
      acd15(54)=acd15(3)*acd15(52)
      acd15(55)=-acd15(9)*acd15(11)
      acd15(56)=-acd15(2)*acd15(5)
      acd15(48)=-acd15(6)*acd15(48)
      acd15(48)=acd15(54)+acd15(48)+acd15(56)+acd15(13)+acd15(55)
      acd15(48)=acd15(1)*acd15(48)
      acd15(54)=acd15(4)*acd15(17)
      acd15(54)=acd15(54)+acd15(18)
      acd15(55)=acd15(25)*acd15(54)
      acd15(56)=acd15(36)*acd15(37)
      acd15(57)=acd15(34)*acd15(35)
      acd15(55)=acd15(56)+acd15(57)+acd15(55)
      acd15(55)=acd15(27)*acd15(55)
      acd15(54)=acd15(14)*acd15(54)
      acd15(56)=acd15(37)*acd15(39)
      acd15(57)=acd15(35)*acd15(38)
      acd15(54)=acd15(56)+acd15(57)+acd15(54)
      acd15(54)=acd15(16)*acd15(54)
      acd15(56)=acd15(16)*acd15(52)
      acd15(57)=acd15(6)*acd15(10)
      acd15(57)=acd15(57)+acd15(11)
      acd15(58)=-acd15(31)*acd15(57)
      acd15(59)=acd15(3)*acd15(4)
      acd15(59)=acd15(59)-acd15(5)
      acd15(60)=acd15(25)*acd15(59)
      acd15(56)=acd15(56)+acd15(60)+acd15(58)
      acd15(53)=acd15(56)*acd15(53)
      acd15(52)=acd15(27)*acd15(52)
      acd15(56)=-acd15(32)*acd15(57)
      acd15(57)=acd15(14)*acd15(59)
      acd15(52)=acd15(52)+acd15(57)+acd15(56)
      acd15(50)=acd15(52)*acd15(50)
      acd15(52)=acd15(36)*acd15(42)
      acd15(56)=acd15(34)*acd15(41)
      acd15(52)=acd15(52)+acd15(56)
      acd15(52)=acd15(32)*acd15(52)
      acd15(56)=acd15(39)*acd15(42)
      acd15(57)=acd15(38)*acd15(41)
      acd15(56)=acd15(56)+acd15(57)
      acd15(56)=acd15(31)*acd15(56)
      acd15(57)=acd15(24)*acd15(30)
      acd15(58)=acd15(22)*acd15(29)
      acd15(57)=acd15(57)+acd15(58)
      acd15(57)=acd15(25)*acd15(57)
      acd15(58)=acd15(23)*acd15(24)
      acd15(59)=acd15(21)*acd15(22)
      acd15(58)=acd15(58)+acd15(59)
      acd15(58)=acd15(14)*acd15(58)
      brack=2.0_ki*acd15(48)+acd15(49)+acd15(50)+acd15(51)+acd15(52)+acd15(53)+&
      &acd15(54)+acd15(55)+acd15(56)+acd15(57)+acd15(58)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd15h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(44) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=k2(iv3)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(40)
      acd15(5)=abb15(23)
      acd15(6)=spvak2k5(iv3)
      acd15(7)=dotproduct(k2,qshift)
      acd15(8)=dotproduct(qshift,spvak2k1)
      acd15(9)=abb15(13)
      acd15(10)=abb15(26)
      acd15(11)=spvak1k5(iv3)
      acd15(12)=abb15(51)
      acd15(13)=abb15(11)
      acd15(14)=spvak2k1(iv3)
      acd15(15)=dotproduct(qshift,spvak1k5)
      acd15(16)=abb15(22)
      acd15(17)=d(iv1,iv3)
      acd15(18)=k2(iv2)
      acd15(19)=spvak2k5(iv2)
      acd15(20)=spvak1k5(iv2)
      acd15(21)=spvak2k1(iv2)
      acd15(22)=d(iv2,iv3)
      acd15(23)=k2(iv1)
      acd15(24)=spvak2k5(iv1)
      acd15(25)=spvak1k5(iv1)
      acd15(26)=spvak2k1(iv1)
      acd15(27)=qshift(iv2)
      acd15(28)=qshift(iv3)
      acd15(29)=qshift(iv1)
      acd15(30)=acd15(14)*acd15(1)
      acd15(31)=acd15(21)*acd15(17)
      acd15(32)=acd15(26)*acd15(22)
      acd15(30)=acd15(30)+acd15(31)+acd15(32)
      acd15(31)=acd15(3)*acd15(9)
      acd15(32)=-acd15(15)*acd15(12)
      acd15(31)=-acd15(16)+acd15(32)+acd15(31)
      acd15(30)=acd15(30)*acd15(31)
      acd15(31)=acd15(6)*acd15(1)
      acd15(32)=acd15(19)*acd15(17)
      acd15(33)=acd15(24)*acd15(22)
      acd15(31)=acd15(33)+acd15(31)+acd15(32)
      acd15(32)=acd15(8)*acd15(9)
      acd15(33)=acd15(7)*acd15(4)
      acd15(32)=-acd15(10)+acd15(33)+acd15(32)
      acd15(31)=acd15(31)*acd15(32)
      acd15(32)=acd15(3)*acd15(4)
      acd15(33)=acd15(1)*acd15(32)
      acd15(34)=acd15(24)*acd15(4)
      acd15(35)=acd15(27)*acd15(34)
      acd15(36)=acd15(29)*acd15(4)
      acd15(37)=acd15(19)*acd15(36)
      acd15(33)=acd15(37)+acd15(33)+acd15(35)
      acd15(33)=acd15(2)*acd15(33)
      acd15(35)=acd15(8)*acd15(12)
      acd15(37)=-acd15(1)*acd15(35)
      acd15(38)=acd15(26)*acd15(12)
      acd15(39)=-acd15(27)*acd15(38)
      acd15(40)=acd15(21)*acd15(12)
      acd15(41)=-acd15(29)*acd15(40)
      acd15(37)=acd15(41)+acd15(37)+acd15(39)
      acd15(37)=acd15(11)*acd15(37)
      acd15(39)=acd15(17)*acd15(32)
      acd15(34)=acd15(28)*acd15(34)
      acd15(36)=acd15(6)*acd15(36)
      acd15(34)=acd15(36)+acd15(39)+acd15(34)
      acd15(34)=acd15(18)*acd15(34)
      acd15(36)=-acd15(17)*acd15(35)
      acd15(38)=-acd15(28)*acd15(38)
      acd15(39)=acd15(14)*acd15(12)
      acd15(41)=-acd15(29)*acd15(39)
      acd15(36)=acd15(41)+acd15(36)+acd15(38)
      acd15(36)=acd15(20)*acd15(36)
      acd15(35)=-acd15(22)*acd15(35)
      acd15(38)=-acd15(27)*acd15(39)
      acd15(39)=-acd15(28)*acd15(40)
      acd15(35)=acd15(39)+acd15(35)+acd15(38)
      acd15(35)=acd15(25)*acd15(35)
      acd15(38)=-acd15(2)*acd15(1)
      acd15(39)=-acd15(18)*acd15(17)
      acd15(40)=-acd15(23)*acd15(22)
      acd15(38)=acd15(40)+acd15(38)+acd15(39)
      acd15(38)=acd15(5)*acd15(38)
      acd15(39)=-acd15(11)*acd15(1)
      acd15(40)=-acd15(20)*acd15(17)
      acd15(41)=-acd15(25)*acd15(22)
      acd15(39)=acd15(41)+acd15(39)+acd15(40)
      acd15(39)=acd15(13)*acd15(39)
      acd15(40)=acd15(24)*acd15(9)
      acd15(41)=acd15(14)*acd15(40)
      acd15(42)=acd15(26)*acd15(9)
      acd15(43)=acd15(6)*acd15(42)
      acd15(41)=acd15(41)+acd15(43)
      acd15(41)=acd15(27)*acd15(41)
      acd15(40)=acd15(21)*acd15(40)
      acd15(42)=acd15(19)*acd15(42)
      acd15(40)=acd15(40)+acd15(42)
      acd15(40)=acd15(28)*acd15(40)
      acd15(42)=acd15(19)*acd15(14)
      acd15(43)=acd15(21)*acd15(6)
      acd15(42)=acd15(42)+acd15(43)
      acd15(42)=acd15(29)*acd15(9)*acd15(42)
      acd15(43)=acd15(27)*acd15(6)
      acd15(44)=acd15(28)*acd15(19)
      acd15(43)=acd15(44)+acd15(43)
      acd15(43)=acd15(4)*acd15(43)
      acd15(32)=acd15(22)*acd15(32)
      acd15(32)=acd15(32)+acd15(43)
      acd15(32)=acd15(23)*acd15(32)
      acd15(30)=acd15(39)+acd15(38)+acd15(35)+acd15(32)+acd15(36)+acd15(34)+acd&
      &15(37)+acd15(33)+acd15(42)+acd15(40)+acd15(41)+acd15(31)+acd15(30)
      brack=2.0_ki*acd15(30)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd15h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=k2(iv3)
      acd15(3)=spvak2k5(iv4)
      acd15(4)=abb15(40)
      acd15(5)=k2(iv4)
      acd15(6)=spvak2k5(iv3)
      acd15(7)=spvak2k1(iv4)
      acd15(8)=abb15(13)
      acd15(9)=spvak2k1(iv3)
      acd15(10)=spvak1k5(iv3)
      acd15(11)=abb15(51)
      acd15(12)=spvak1k5(iv4)
      acd15(13)=d(iv1,iv3)
      acd15(14)=k2(iv2)
      acd15(15)=spvak2k5(iv2)
      acd15(16)=spvak2k1(iv2)
      acd15(17)=spvak1k5(iv2)
      acd15(18)=d(iv1,iv4)
      acd15(19)=d(iv2,iv3)
      acd15(20)=k2(iv1)
      acd15(21)=spvak2k5(iv1)
      acd15(22)=spvak2k1(iv1)
      acd15(23)=spvak1k5(iv1)
      acd15(24)=d(iv2,iv4)
      acd15(25)=d(iv3,iv4)
      acd15(26)=acd15(19)*acd15(22)
      acd15(27)=acd15(13)*acd15(16)
      acd15(26)=acd15(26)+acd15(27)
      acd15(27)=-acd15(12)*acd15(26)
      acd15(28)=-acd15(25)*acd15(17)
      acd15(29)=-acd15(24)*acd15(10)
      acd15(28)=acd15(28)+acd15(29)
      acd15(28)=acd15(22)*acd15(28)
      acd15(29)=-acd15(25)*acd15(23)
      acd15(30)=-acd15(18)*acd15(10)
      acd15(29)=acd15(29)+acd15(30)
      acd15(29)=acd15(16)*acd15(29)
      acd15(30)=-acd15(24)*acd15(23)
      acd15(31)=-acd15(18)*acd15(17)
      acd15(30)=acd15(30)+acd15(31)
      acd15(30)=acd15(9)*acd15(30)
      acd15(31)=-acd15(19)*acd15(23)
      acd15(32)=-acd15(13)*acd15(17)
      acd15(31)=acd15(31)+acd15(32)
      acd15(31)=acd15(7)*acd15(31)
      acd15(32)=-acd15(9)*acd15(12)
      acd15(33)=-acd15(7)*acd15(10)
      acd15(32)=acd15(32)+acd15(33)
      acd15(32)=acd15(1)*acd15(32)
      acd15(27)=acd15(32)+acd15(31)+acd15(30)+acd15(29)+acd15(28)+acd15(27)
      acd15(27)=acd15(11)*acd15(27)
      acd15(28)=acd15(16)*acd15(21)
      acd15(29)=acd15(15)*acd15(22)
      acd15(28)=acd15(28)+acd15(29)
      acd15(28)=acd15(25)*acd15(28)
      acd15(29)=acd15(21)*acd15(24)
      acd15(30)=acd15(15)*acd15(18)
      acd15(29)=acd15(29)+acd15(30)
      acd15(29)=acd15(9)*acd15(29)
      acd15(30)=acd15(19)*acd15(21)
      acd15(31)=acd15(13)*acd15(15)
      acd15(30)=acd15(30)+acd15(31)
      acd15(31)=acd15(7)*acd15(30)
      acd15(32)=acd15(22)*acd15(24)
      acd15(33)=acd15(16)*acd15(18)
      acd15(32)=acd15(32)+acd15(33)
      acd15(32)=acd15(6)*acd15(32)
      acd15(26)=acd15(3)*acd15(26)
      acd15(33)=acd15(6)*acd15(7)
      acd15(34)=acd15(3)*acd15(9)
      acd15(33)=acd15(33)+acd15(34)
      acd15(33)=acd15(1)*acd15(33)
      acd15(26)=acd15(33)+acd15(26)+acd15(32)+acd15(31)+acd15(29)+acd15(28)
      acd15(26)=acd15(8)*acd15(26)
      acd15(28)=acd15(5)*acd15(30)
      acd15(29)=acd15(25)*acd15(14)
      acd15(30)=acd15(24)*acd15(2)
      acd15(29)=acd15(29)+acd15(30)
      acd15(29)=acd15(21)*acd15(29)
      acd15(30)=acd15(25)*acd15(20)
      acd15(31)=acd15(18)*acd15(2)
      acd15(30)=acd15(30)+acd15(31)
      acd15(30)=acd15(15)*acd15(30)
      acd15(31)=acd15(24)*acd15(20)
      acd15(32)=acd15(18)*acd15(14)
      acd15(31)=acd15(31)+acd15(32)
      acd15(31)=acd15(6)*acd15(31)
      acd15(32)=acd15(19)*acd15(20)
      acd15(33)=acd15(13)*acd15(14)
      acd15(32)=acd15(32)+acd15(33)
      acd15(32)=acd15(3)*acd15(32)
      acd15(33)=acd15(6)*acd15(5)
      acd15(34)=acd15(3)*acd15(2)
      acd15(33)=acd15(33)+acd15(34)
      acd15(33)=acd15(1)*acd15(33)
      acd15(28)=acd15(33)+acd15(32)+acd15(31)+acd15(30)+acd15(29)+acd15(28)
      acd15(28)=acd15(4)*acd15(28)
      acd15(26)=acd15(28)+acd15(27)+acd15(26)
      brack=2.0_ki*acd15(26)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd15h3
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
end module     p0_gg_hhg_d15h3l1d
