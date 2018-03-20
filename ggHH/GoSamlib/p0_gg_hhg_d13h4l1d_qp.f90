module     p0_gg_hhg_d13h4l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d13h4l1d_qp.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_util_qp, only: cond, d => metric_tensor
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd13
      complex(ki) :: brack
      acd13(1)=dotproduct(k2,qshift)
      acd13(2)=dotproduct(qshift,qshift)
      acd13(3)=dotproduct(qshift,spvak5k2)
      acd13(4)=abb13(40)
      acd13(5)=abb13(23)
      acd13(6)=abb13(67)
      acd13(7)=dotproduct(qshift,spvak1k2)
      acd13(8)=abb13(10)
      acd13(9)=dotproduct(qshift,spval4k2)
      acd13(10)=abb13(44)
      acd13(11)=dotproduct(qshift,spval4l3)
      acd13(12)=abb13(43)
      acd13(13)=abb13(36)
      acd13(14)=abb13(13)
      acd13(15)=abb13(49)
      acd13(16)=dotproduct(qshift,spvak5k1)
      acd13(17)=abb13(51)
      acd13(18)=abb13(22)
      acd13(19)=abb13(11)
      acd13(20)=abb13(16)
      acd13(21)=abb13(29)
      acd13(22)=dotproduct(qshift,spval3k2)
      acd13(23)=abb13(52)
      acd13(24)=dotproduct(qshift,spval3l4)
      acd13(25)=abb13(26)
      acd13(26)=abb13(33)
      acd13(27)=abb13(12)
      acd13(28)=abb13(35)
      acd13(29)=abb13(34)
      acd13(30)=dotproduct(qshift,spvak2l3)
      acd13(31)=abb13(14)
      acd13(32)=abb13(30)
      acd13(33)=abb13(19)
      acd13(34)=abb13(18)
      acd13(35)=abb13(31)
      acd13(36)=abb13(55)
      acd13(37)=abb13(62)
      acd13(38)=abb13(32)
      acd13(39)=dotproduct(qshift,spvak1l3)
      acd13(40)=abb13(27)
      acd13(41)=dotproduct(qshift,spval3k1)
      acd13(42)=abb13(46)
      acd13(43)=abb13(17)
      acd13(44)=abb13(25)
      acd13(45)=dotproduct(qshift,spvak5l4)
      acd13(46)=abb13(42)
      acd13(47)=abb13(21)
      acd13(48)=-acd13(16)*acd13(17)
      acd13(49)=acd13(3)*acd13(14)
      acd13(48)=acd13(49)-acd13(18)+acd13(48)
      acd13(48)=acd13(2)*acd13(48)
      acd13(49)=acd13(30)*acd13(31)
      acd13(50)=acd13(11)*acd13(28)
      acd13(51)=acd13(9)*acd13(27)
      acd13(52)=acd13(16)*acd13(29)
      acd13(53)=acd13(1)*acd13(8)
      acd13(54)=acd13(3)*acd13(21)
      acd13(48)=acd13(48)+acd13(54)+acd13(53)+acd13(52)+acd13(51)+acd13(50)-acd&
      &13(32)+acd13(49)
      acd13(48)=acd13(7)*acd13(48)
      acd13(49)=acd13(24)*acd13(25)
      acd13(50)=acd13(22)*acd13(23)
      acd13(51)=acd13(1)*acd13(6)
      acd13(49)=acd13(51)+acd13(50)-acd13(26)+acd13(49)
      acd13(49)=acd13(3)*acd13(49)
      acd13(50)=-acd13(16)*acd13(19)
      acd13(51)=-acd13(1)*acd13(5)
      acd13(52)=acd13(1)*acd13(4)
      acd13(52)=-acd13(15)+acd13(52)
      acd13(52)=acd13(3)*acd13(52)
      acd13(50)=acd13(52)+acd13(51)+acd13(20)+acd13(50)
      acd13(50)=acd13(2)*acd13(50)
      acd13(51)=acd13(24)*acd13(36)
      acd13(52)=acd13(22)*acd13(35)
      acd13(51)=acd13(52)-acd13(37)+acd13(51)
      acd13(51)=acd13(16)*acd13(51)
      acd13(52)=acd13(11)*acd13(12)
      acd13(53)=acd13(9)*acd13(10)
      acd13(52)=acd13(53)-acd13(13)+acd13(52)
      acd13(52)=acd13(1)*acd13(52)
      acd13(53)=-acd13(45)*acd13(46)
      acd13(54)=-acd13(41)*acd13(42)
      acd13(55)=-acd13(39)*acd13(40)
      acd13(56)=-acd13(30)*acd13(38)
      acd13(57)=-acd13(24)*acd13(44)
      acd13(58)=-acd13(22)*acd13(43)
      acd13(59)=-acd13(11)*acd13(34)
      acd13(60)=-acd13(9)*acd13(33)
      brack=acd13(47)+acd13(48)+acd13(49)+acd13(50)+acd13(51)+acd13(52)+acd13(5&
      &3)+acd13(54)+acd13(55)+acd13(56)+acd13(57)+acd13(58)+acd13(59)+acd13(60)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd13
      complex(ki) :: brack
      acd13(1)=k2(iv1)
      acd13(2)=dotproduct(qshift,qshift)
      acd13(3)=dotproduct(qshift,spvak5k2)
      acd13(4)=abb13(40)
      acd13(5)=abb13(23)
      acd13(6)=abb13(67)
      acd13(7)=dotproduct(qshift,spvak1k2)
      acd13(8)=abb13(10)
      acd13(9)=dotproduct(qshift,spval4k2)
      acd13(10)=abb13(44)
      acd13(11)=dotproduct(qshift,spval4l3)
      acd13(12)=abb13(43)
      acd13(13)=abb13(36)
      acd13(14)=qshift(iv1)
      acd13(15)=dotproduct(k2,qshift)
      acd13(16)=abb13(13)
      acd13(17)=abb13(49)
      acd13(18)=dotproduct(qshift,spvak5k1)
      acd13(19)=abb13(51)
      acd13(20)=abb13(22)
      acd13(21)=abb13(11)
      acd13(22)=abb13(16)
      acd13(23)=spvak5k2(iv1)
      acd13(24)=abb13(29)
      acd13(25)=dotproduct(qshift,spval3k2)
      acd13(26)=abb13(52)
      acd13(27)=dotproduct(qshift,spval3l4)
      acd13(28)=abb13(26)
      acd13(29)=abb13(33)
      acd13(30)=spvak1k2(iv1)
      acd13(31)=abb13(12)
      acd13(32)=abb13(35)
      acd13(33)=abb13(34)
      acd13(34)=dotproduct(qshift,spvak2l3)
      acd13(35)=abb13(14)
      acd13(36)=abb13(30)
      acd13(37)=spval4k2(iv1)
      acd13(38)=abb13(19)
      acd13(39)=spval4l3(iv1)
      acd13(40)=abb13(18)
      acd13(41)=spvak5k1(iv1)
      acd13(42)=abb13(31)
      acd13(43)=abb13(55)
      acd13(44)=abb13(62)
      acd13(45)=spvak2l3(iv1)
      acd13(46)=abb13(32)
      acd13(47)=spvak1l3(iv1)
      acd13(48)=abb13(27)
      acd13(49)=spval3k1(iv1)
      acd13(50)=abb13(46)
      acd13(51)=spval3k2(iv1)
      acd13(52)=abb13(17)
      acd13(53)=spval3l4(iv1)
      acd13(54)=abb13(25)
      acd13(55)=spvak5l4(iv1)
      acd13(56)=abb13(42)
      acd13(57)=acd13(18)*acd13(19)
      acd13(58)=acd13(3)*acd13(16)
      acd13(57)=-acd13(58)+acd13(57)+acd13(20)
      acd13(58)=2.0_ki*acd13(14)
      acd13(59)=acd13(58)*acd13(57)
      acd13(60)=acd13(41)*acd13(19)
      acd13(61)=-acd13(23)*acd13(16)
      acd13(60)=acd13(60)+acd13(61)
      acd13(60)=acd13(2)*acd13(60)
      acd13(61)=-acd13(35)*acd13(45)
      acd13(62)=-acd13(39)*acd13(32)
      acd13(63)=-acd13(37)*acd13(31)
      acd13(64)=-acd13(41)*acd13(33)
      acd13(65)=-acd13(1)*acd13(8)
      acd13(66)=-acd13(23)*acd13(24)
      acd13(59)=acd13(60)+acd13(66)+acd13(65)+acd13(64)+acd13(63)+acd13(61)+acd&
      &13(62)+acd13(59)
      acd13(59)=acd13(7)*acd13(59)
      acd13(60)=-acd13(35)*acd13(34)
      acd13(61)=-acd13(11)*acd13(32)
      acd13(62)=-acd13(9)*acd13(31)
      acd13(63)=-acd13(18)*acd13(33)
      acd13(64)=-acd13(15)*acd13(8)
      acd13(65)=-acd13(3)*acd13(24)
      acd13(60)=acd13(65)+acd13(64)+acd13(63)+acd13(62)+acd13(61)+acd13(36)+acd&
      &13(60)
      acd13(60)=acd13(30)*acd13(60)
      acd13(61)=acd13(15)*acd13(4)
      acd13(61)=acd13(61)-acd13(17)
      acd13(62)=-acd13(61)*acd13(58)
      acd13(63)=-acd13(53)*acd13(28)
      acd13(64)=-acd13(51)*acd13(26)
      acd13(65)=-acd13(1)*acd13(6)
      acd13(62)=acd13(62)+acd13(65)+acd13(63)+acd13(64)
      acd13(62)=acd13(3)*acd13(62)
      acd13(57)=acd13(30)*acd13(57)
      acd13(63)=-acd13(3)*acd13(4)
      acd13(63)=acd13(63)+acd13(5)
      acd13(63)=acd13(1)*acd13(63)
      acd13(64)=acd13(41)*acd13(21)
      acd13(61)=-acd13(23)*acd13(61)
      acd13(57)=acd13(57)+acd13(61)+acd13(64)+acd13(63)
      acd13(57)=acd13(2)*acd13(57)
      acd13(61)=-acd13(27)*acd13(28)
      acd13(63)=-acd13(25)*acd13(26)
      acd13(64)=-acd13(15)*acd13(6)
      acd13(61)=acd13(64)+acd13(63)+acd13(29)+acd13(61)
      acd13(61)=acd13(23)*acd13(61)
      acd13(63)=-acd13(27)*acd13(43)
      acd13(64)=-acd13(25)*acd13(42)
      acd13(63)=acd13(64)+acd13(44)+acd13(63)
      acd13(63)=acd13(41)*acd13(63)
      acd13(64)=-acd13(53)*acd13(43)
      acd13(65)=-acd13(51)*acd13(42)
      acd13(64)=acd13(64)+acd13(65)
      acd13(64)=acd13(18)*acd13(64)
      acd13(65)=-acd13(39)*acd13(12)
      acd13(66)=-acd13(37)*acd13(10)
      acd13(65)=acd13(65)+acd13(66)
      acd13(65)=acd13(15)*acd13(65)
      acd13(66)=-acd13(11)*acd13(12)
      acd13(67)=-acd13(9)*acd13(10)
      acd13(66)=acd13(67)+acd13(13)+acd13(66)
      acd13(66)=acd13(1)*acd13(66)
      acd13(67)=acd13(18)*acd13(21)
      acd13(68)=acd13(15)*acd13(5)
      acd13(67)=acd13(68)-acd13(22)+acd13(67)
      acd13(58)=acd13(67)*acd13(58)
      acd13(67)=acd13(55)*acd13(56)
      acd13(68)=acd13(49)*acd13(50)
      acd13(69)=acd13(47)*acd13(48)
      acd13(70)=acd13(45)*acd13(46)
      acd13(71)=acd13(53)*acd13(54)
      acd13(72)=acd13(51)*acd13(52)
      acd13(73)=acd13(39)*acd13(40)
      acd13(74)=acd13(37)*acd13(38)
      brack=acd13(57)+acd13(58)+acd13(59)+acd13(60)+acd13(61)+acd13(62)+acd13(6&
      &3)+acd13(64)+acd13(65)+acd13(66)+acd13(67)+acd13(68)+acd13(69)+acd13(70)&
      &+acd13(71)+acd13(72)+acd13(73)+acd13(74)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=dotproduct(k2,qshift)
      acd13(3)=dotproduct(qshift,spvak5k2)
      acd13(4)=abb13(40)
      acd13(5)=abb13(23)
      acd13(6)=dotproduct(qshift,spvak1k2)
      acd13(7)=abb13(13)
      acd13(8)=abb13(49)
      acd13(9)=dotproduct(qshift,spvak5k1)
      acd13(10)=abb13(51)
      acd13(11)=abb13(22)
      acd13(12)=abb13(11)
      acd13(13)=abb13(16)
      acd13(14)=k2(iv1)
      acd13(15)=qshift(iv2)
      acd13(16)=spvak5k2(iv2)
      acd13(17)=dotproduct(qshift,qshift)
      acd13(18)=abb13(67)
      acd13(19)=spvak1k2(iv2)
      acd13(20)=abb13(10)
      acd13(21)=spval4k2(iv2)
      acd13(22)=abb13(44)
      acd13(23)=spval4l3(iv2)
      acd13(24)=abb13(43)
      acd13(25)=k2(iv2)
      acd13(26)=qshift(iv1)
      acd13(27)=spvak5k2(iv1)
      acd13(28)=spvak1k2(iv1)
      acd13(29)=spval4k2(iv1)
      acd13(30)=spval4l3(iv1)
      acd13(31)=spvak5k1(iv2)
      acd13(32)=spvak5k1(iv1)
      acd13(33)=abb13(29)
      acd13(34)=spval3k2(iv2)
      acd13(35)=abb13(52)
      acd13(36)=spval3l4(iv2)
      acd13(37)=abb13(26)
      acd13(38)=spval3k2(iv1)
      acd13(39)=spval3l4(iv1)
      acd13(40)=abb13(34)
      acd13(41)=abb13(12)
      acd13(42)=abb13(35)
      acd13(43)=spvak2l3(iv2)
      acd13(44)=abb13(14)
      acd13(45)=spvak2l3(iv1)
      acd13(46)=abb13(31)
      acd13(47)=abb13(55)
      acd13(48)=acd13(10)*acd13(9)
      acd13(48)=acd13(48)+acd13(11)
      acd13(49)=acd13(3)*acd13(7)
      acd13(49)=acd13(48)-acd13(49)
      acd13(50)=2.0_ki*acd13(15)
      acd13(51)=-acd13(49)*acd13(50)
      acd13(52)=acd13(10)*acd13(17)
      acd13(52)=acd13(52)-acd13(40)
      acd13(53)=-acd13(31)*acd13(52)
      acd13(54)=acd13(44)*acd13(43)
      acd13(55)=acd13(23)*acd13(42)
      acd13(56)=acd13(21)*acd13(41)
      acd13(57)=acd13(25)*acd13(20)
      acd13(58)=acd13(7)*acd13(17)
      acd13(58)=acd13(58)+acd13(33)
      acd13(59)=acd13(16)*acd13(58)
      acd13(51)=acd13(51)+acd13(59)+acd13(57)+acd13(56)+acd13(54)+acd13(55)+acd&
      &13(53)
      acd13(51)=acd13(28)*acd13(51)
      acd13(53)=2.0_ki*acd13(26)
      acd13(49)=-acd13(49)*acd13(53)
      acd13(52)=-acd13(32)*acd13(52)
      acd13(54)=acd13(44)*acd13(45)
      acd13(55)=acd13(30)*acd13(42)
      acd13(56)=acd13(29)*acd13(41)
      acd13(57)=acd13(14)*acd13(20)
      acd13(58)=acd13(27)*acd13(58)
      acd13(49)=acd13(49)+acd13(58)+acd13(57)+acd13(56)+acd13(54)+acd13(55)+acd&
      &13(52)
      acd13(49)=acd13(19)*acd13(49)
      acd13(52)=acd13(6)*acd13(7)
      acd13(54)=acd13(4)*acd13(2)
      acd13(52)=-acd13(8)+acd13(52)+acd13(54)
      acd13(54)=acd13(3)*acd13(52)
      acd13(55)=-acd13(9)*acd13(12)
      acd13(56)=-acd13(2)*acd13(5)
      acd13(48)=-acd13(6)*acd13(48)
      acd13(48)=acd13(54)+acd13(48)+acd13(56)+acd13(13)+acd13(55)
      acd13(48)=acd13(1)*acd13(48)
      acd13(54)=acd13(4)*acd13(17)
      acd13(54)=acd13(54)+acd13(18)
      acd13(55)=acd13(25)*acd13(54)
      acd13(56)=acd13(36)*acd13(37)
      acd13(57)=acd13(34)*acd13(35)
      acd13(55)=acd13(56)+acd13(57)+acd13(55)
      acd13(55)=acd13(27)*acd13(55)
      acd13(54)=acd13(14)*acd13(54)
      acd13(56)=acd13(37)*acd13(39)
      acd13(57)=acd13(35)*acd13(38)
      acd13(54)=acd13(56)+acd13(57)+acd13(54)
      acd13(54)=acd13(16)*acd13(54)
      acd13(56)=acd13(16)*acd13(52)
      acd13(57)=acd13(6)*acd13(10)
      acd13(57)=acd13(57)+acd13(12)
      acd13(58)=-acd13(31)*acd13(57)
      acd13(59)=acd13(3)*acd13(4)
      acd13(59)=acd13(59)-acd13(5)
      acd13(60)=acd13(25)*acd13(59)
      acd13(56)=acd13(56)+acd13(60)+acd13(58)
      acd13(53)=acd13(56)*acd13(53)
      acd13(52)=acd13(27)*acd13(52)
      acd13(56)=-acd13(32)*acd13(57)
      acd13(57)=acd13(14)*acd13(59)
      acd13(52)=acd13(52)+acd13(57)+acd13(56)
      acd13(50)=acd13(52)*acd13(50)
      acd13(52)=acd13(36)*acd13(47)
      acd13(56)=acd13(34)*acd13(46)
      acd13(52)=acd13(52)+acd13(56)
      acd13(52)=acd13(32)*acd13(52)
      acd13(56)=acd13(39)*acd13(47)
      acd13(57)=acd13(38)*acd13(46)
      acd13(56)=acd13(56)+acd13(57)
      acd13(56)=acd13(31)*acd13(56)
      acd13(57)=acd13(24)*acd13(30)
      acd13(58)=acd13(22)*acd13(29)
      acd13(57)=acd13(57)+acd13(58)
      acd13(57)=acd13(25)*acd13(57)
      acd13(58)=acd13(23)*acd13(24)
      acd13(59)=acd13(21)*acd13(22)
      acd13(58)=acd13(58)+acd13(59)
      acd13(58)=acd13(14)*acd13(58)
      brack=2.0_ki*acd13(48)+acd13(49)+acd13(50)+acd13(51)+acd13(52)+acd13(53)+&
      &acd13(54)+acd13(55)+acd13(56)+acd13(57)+acd13(58)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(44) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=k2(iv3)
      acd13(3)=dotproduct(qshift,spvak5k2)
      acd13(4)=abb13(40)
      acd13(5)=abb13(23)
      acd13(6)=spvak5k2(iv3)
      acd13(7)=dotproduct(k2,qshift)
      acd13(8)=dotproduct(qshift,spvak1k2)
      acd13(9)=abb13(13)
      acd13(10)=abb13(49)
      acd13(11)=spvak1k2(iv3)
      acd13(12)=dotproduct(qshift,spvak5k1)
      acd13(13)=abb13(51)
      acd13(14)=abb13(22)
      acd13(15)=spvak5k1(iv3)
      acd13(16)=abb13(11)
      acd13(17)=d(iv1,iv3)
      acd13(18)=k2(iv2)
      acd13(19)=spvak5k2(iv2)
      acd13(20)=spvak1k2(iv2)
      acd13(21)=spvak5k1(iv2)
      acd13(22)=d(iv2,iv3)
      acd13(23)=k2(iv1)
      acd13(24)=spvak5k2(iv1)
      acd13(25)=spvak1k2(iv1)
      acd13(26)=spvak5k1(iv1)
      acd13(27)=qshift(iv2)
      acd13(28)=qshift(iv3)
      acd13(29)=qshift(iv1)
      acd13(30)=acd13(11)*acd13(1)
      acd13(31)=acd13(20)*acd13(17)
      acd13(32)=acd13(25)*acd13(22)
      acd13(30)=acd13(30)+acd13(31)+acd13(32)
      acd13(31)=-acd13(3)*acd13(9)
      acd13(32)=acd13(12)*acd13(13)
      acd13(31)=acd13(14)+acd13(32)+acd13(31)
      acd13(30)=acd13(30)*acd13(31)
      acd13(31)=acd13(6)*acd13(1)
      acd13(32)=acd13(19)*acd13(17)
      acd13(33)=acd13(24)*acd13(22)
      acd13(31)=acd13(33)+acd13(31)+acd13(32)
      acd13(32)=-acd13(8)*acd13(9)
      acd13(33)=-acd13(7)*acd13(4)
      acd13(32)=acd13(10)+acd13(33)+acd13(32)
      acd13(31)=acd13(31)*acd13(32)
      acd13(32)=acd13(3)*acd13(4)
      acd13(33)=-acd13(1)*acd13(32)
      acd13(34)=acd13(24)*acd13(4)
      acd13(35)=-acd13(27)*acd13(34)
      acd13(36)=acd13(29)*acd13(4)
      acd13(37)=-acd13(19)*acd13(36)
      acd13(33)=acd13(37)+acd13(33)+acd13(35)
      acd13(33)=acd13(2)*acd13(33)
      acd13(35)=acd13(8)*acd13(13)
      acd13(37)=acd13(1)*acd13(35)
      acd13(38)=acd13(25)*acd13(13)
      acd13(39)=acd13(27)*acd13(38)
      acd13(40)=acd13(20)*acd13(13)
      acd13(41)=acd13(29)*acd13(40)
      acd13(37)=acd13(41)+acd13(37)+acd13(39)
      acd13(37)=acd13(15)*acd13(37)
      acd13(39)=-acd13(17)*acd13(32)
      acd13(34)=-acd13(28)*acd13(34)
      acd13(36)=-acd13(6)*acd13(36)
      acd13(34)=acd13(36)+acd13(39)+acd13(34)
      acd13(34)=acd13(18)*acd13(34)
      acd13(36)=acd13(17)*acd13(35)
      acd13(38)=acd13(28)*acd13(38)
      acd13(39)=acd13(11)*acd13(13)
      acd13(41)=acd13(29)*acd13(39)
      acd13(36)=acd13(41)+acd13(36)+acd13(38)
      acd13(36)=acd13(21)*acd13(36)
      acd13(35)=acd13(22)*acd13(35)
      acd13(38)=acd13(27)*acd13(39)
      acd13(39)=acd13(28)*acd13(40)
      acd13(35)=acd13(39)+acd13(35)+acd13(38)
      acd13(35)=acd13(26)*acd13(35)
      acd13(38)=acd13(2)*acd13(1)
      acd13(39)=acd13(18)*acd13(17)
      acd13(40)=acd13(23)*acd13(22)
      acd13(38)=acd13(40)+acd13(38)+acd13(39)
      acd13(38)=acd13(5)*acd13(38)
      acd13(39)=acd13(15)*acd13(1)
      acd13(40)=acd13(21)*acd13(17)
      acd13(41)=acd13(26)*acd13(22)
      acd13(39)=acd13(41)+acd13(39)+acd13(40)
      acd13(39)=acd13(16)*acd13(39)
      acd13(40)=acd13(24)*acd13(9)
      acd13(41)=-acd13(11)*acd13(40)
      acd13(42)=acd13(25)*acd13(9)
      acd13(43)=-acd13(6)*acd13(42)
      acd13(41)=acd13(41)+acd13(43)
      acd13(41)=acd13(27)*acd13(41)
      acd13(40)=-acd13(20)*acd13(40)
      acd13(42)=-acd13(19)*acd13(42)
      acd13(40)=acd13(40)+acd13(42)
      acd13(40)=acd13(28)*acd13(40)
      acd13(42)=-acd13(19)*acd13(11)
      acd13(43)=-acd13(20)*acd13(6)
      acd13(42)=acd13(42)+acd13(43)
      acd13(42)=acd13(29)*acd13(9)*acd13(42)
      acd13(43)=-acd13(27)*acd13(6)
      acd13(44)=-acd13(28)*acd13(19)
      acd13(43)=acd13(44)+acd13(43)
      acd13(43)=acd13(4)*acd13(43)
      acd13(32)=-acd13(22)*acd13(32)
      acd13(32)=acd13(32)+acd13(43)
      acd13(32)=acd13(23)*acd13(32)
      acd13(30)=acd13(39)+acd13(38)+acd13(35)+acd13(32)+acd13(36)+acd13(34)+acd&
      &13(37)+acd13(33)+acd13(42)+acd13(40)+acd13(41)+acd13(31)+acd13(30)
      brack=2.0_ki*acd13(30)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=k2(iv3)
      acd13(3)=spvak5k2(iv4)
      acd13(4)=abb13(40)
      acd13(5)=k2(iv4)
      acd13(6)=spvak5k2(iv3)
      acd13(7)=spvak1k2(iv4)
      acd13(8)=abb13(13)
      acd13(9)=spvak1k2(iv3)
      acd13(10)=spvak5k1(iv4)
      acd13(11)=abb13(51)
      acd13(12)=spvak5k1(iv3)
      acd13(13)=d(iv1,iv3)
      acd13(14)=k2(iv2)
      acd13(15)=spvak5k2(iv2)
      acd13(16)=spvak1k2(iv2)
      acd13(17)=spvak5k1(iv2)
      acd13(18)=d(iv1,iv4)
      acd13(19)=d(iv2,iv3)
      acd13(20)=k2(iv1)
      acd13(21)=spvak5k2(iv1)
      acd13(22)=spvak1k2(iv1)
      acd13(23)=spvak5k1(iv1)
      acd13(24)=d(iv2,iv4)
      acd13(25)=d(iv3,iv4)
      acd13(26)=acd13(19)*acd13(22)
      acd13(27)=acd13(13)*acd13(16)
      acd13(26)=acd13(26)+acd13(27)
      acd13(27)=-acd13(10)*acd13(26)
      acd13(28)=-acd13(25)*acd13(17)
      acd13(29)=-acd13(24)*acd13(12)
      acd13(28)=acd13(28)+acd13(29)
      acd13(28)=acd13(22)*acd13(28)
      acd13(29)=-acd13(25)*acd13(23)
      acd13(30)=-acd13(18)*acd13(12)
      acd13(29)=acd13(29)+acd13(30)
      acd13(29)=acd13(16)*acd13(29)
      acd13(30)=-acd13(24)*acd13(23)
      acd13(31)=-acd13(18)*acd13(17)
      acd13(30)=acd13(30)+acd13(31)
      acd13(30)=acd13(9)*acd13(30)
      acd13(31)=-acd13(19)*acd13(23)
      acd13(32)=-acd13(13)*acd13(17)
      acd13(31)=acd13(31)+acd13(32)
      acd13(31)=acd13(7)*acd13(31)
      acd13(32)=-acd13(9)*acd13(10)
      acd13(33)=-acd13(7)*acd13(12)
      acd13(32)=acd13(32)+acd13(33)
      acd13(32)=acd13(1)*acd13(32)
      acd13(27)=acd13(32)+acd13(31)+acd13(30)+acd13(29)+acd13(28)+acd13(27)
      acd13(27)=acd13(11)*acd13(27)
      acd13(28)=acd13(16)*acd13(21)
      acd13(29)=acd13(15)*acd13(22)
      acd13(28)=acd13(28)+acd13(29)
      acd13(28)=acd13(25)*acd13(28)
      acd13(29)=acd13(21)*acd13(24)
      acd13(30)=acd13(15)*acd13(18)
      acd13(29)=acd13(29)+acd13(30)
      acd13(29)=acd13(9)*acd13(29)
      acd13(30)=acd13(19)*acd13(21)
      acd13(31)=acd13(13)*acd13(15)
      acd13(30)=acd13(30)+acd13(31)
      acd13(31)=acd13(7)*acd13(30)
      acd13(32)=acd13(22)*acd13(24)
      acd13(33)=acd13(16)*acd13(18)
      acd13(32)=acd13(32)+acd13(33)
      acd13(32)=acd13(6)*acd13(32)
      acd13(26)=acd13(3)*acd13(26)
      acd13(33)=acd13(6)*acd13(7)
      acd13(34)=acd13(3)*acd13(9)
      acd13(33)=acd13(33)+acd13(34)
      acd13(33)=acd13(1)*acd13(33)
      acd13(26)=acd13(33)+acd13(26)+acd13(32)+acd13(31)+acd13(29)+acd13(28)
      acd13(26)=acd13(8)*acd13(26)
      acd13(28)=acd13(5)*acd13(30)
      acd13(29)=acd13(25)*acd13(14)
      acd13(30)=acd13(24)*acd13(2)
      acd13(29)=acd13(29)+acd13(30)
      acd13(29)=acd13(21)*acd13(29)
      acd13(30)=acd13(25)*acd13(20)
      acd13(31)=acd13(18)*acd13(2)
      acd13(30)=acd13(30)+acd13(31)
      acd13(30)=acd13(15)*acd13(30)
      acd13(31)=acd13(24)*acd13(20)
      acd13(32)=acd13(18)*acd13(14)
      acd13(31)=acd13(31)+acd13(32)
      acd13(31)=acd13(6)*acd13(31)
      acd13(32)=acd13(19)*acd13(20)
      acd13(33)=acd13(13)*acd13(14)
      acd13(32)=acd13(32)+acd13(33)
      acd13(32)=acd13(3)*acd13(32)
      acd13(33)=acd13(6)*acd13(5)
      acd13(34)=acd13(3)*acd13(2)
      acd13(33)=acd13(33)+acd13(34)
      acd13(33)=acd13(1)*acd13(33)
      acd13(28)=acd13(33)+acd13(32)+acd13(31)+acd13(30)+acd13(29)+acd13(28)
      acd13(28)=acd13(4)*acd13(28)
      acd13(26)=acd13(28)+acd13(27)+acd13(26)
      brack=2.0_ki*acd13(26)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd13h4_qp
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
      qshift = k3+k5
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
end module     p0_gg_hhg_d13h4l1d_qp
