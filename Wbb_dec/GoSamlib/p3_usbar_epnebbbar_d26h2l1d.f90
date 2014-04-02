module     p3_usbar_epnebbbar_d26h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p3_usbar_epnebbbar/helicity2d26h2l1d.f90
   ! generator: buildfortran_d.py
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d26
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd26h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd26
      complex(ki) :: brack
      acd26(1)=dotproduct(k1,qshift)
      acd26(2)=dotproduct(qshift,spvak2k3)
      acd26(3)=abb26(23)
      acd26(4)=dotproduct(qshift,spvak2l6)
      acd26(5)=abb26(37)
      acd26(6)=abb26(22)
      acd26(7)=dotproduct(k2,qshift)
      acd26(8)=abb26(24)
      acd26(9)=abb26(39)
      acd26(10)=dotproduct(qshift,spvak4k3)
      acd26(11)=abb26(13)
      acd26(12)=dotproduct(qshift,spval5k1)
      acd26(13)=abb26(25)
      acd26(14)=dotproduct(qshift,spval5l6)
      acd26(15)=abb26(29)
      acd26(16)=abb26(20)
      acd26(17)=dotproduct(l5,qshift)
      acd26(18)=dotproduct(l6,qshift)
      acd26(19)=abb26(32)
      acd26(20)=dotproduct(qshift,qshift)
      acd26(21)=abb26(34)
      acd26(22)=abb26(41)
      acd26(23)=abb26(15)
      acd26(24)=abb26(12)
      acd26(25)=abb26(42)
      acd26(26)=abb26(9)
      acd26(27)=abb26(11)
      acd26(28)=dotproduct(qshift,spval5k2)
      acd26(29)=abb26(26)
      acd26(30)=dotproduct(qshift,spval5k3)
      acd26(31)=abb26(28)
      acd26(32)=dotproduct(qshift,spvak2k1)
      acd26(33)=abb26(33)
      acd26(34)=abb26(10)
      acd26(35)=abb26(18)
      acd26(36)=abb26(31)
      acd26(37)=dotproduct(qshift,spvak1l6)
      acd26(38)=abb26(14)
      acd26(39)=dotproduct(qshift,spvak4l6)
      acd26(40)=abb26(17)
      acd26(41)=abb26(8)
      acd26(42)=abb26(19)
      acd26(43)=acd26(13)*acd26(7)
      acd26(44)=acd26(19)*acd26(18)
      acd26(45)=acd26(24)*acd26(2)
      acd26(46)=acd26(27)*acd26(4)
      acd26(47)=acd26(36)*acd26(14)
      acd26(48)=acd26(38)*acd26(37)
      acd26(49)=acd26(40)*acd26(39)
      acd26(43)=acd26(49)+acd26(48)+acd26(47)+acd26(46)+acd26(45)+acd26(44)+acd&
      &26(43)
      acd26(43)=acd26(12)*acd26(43)
      acd26(44)=acd26(9)*acd26(7)
      acd26(45)=-acd26(22)*acd26(20)
      acd26(46)=acd26(26)*acd26(10)
      acd26(47)=acd26(29)*acd26(28)
      acd26(48)=acd26(30)*acd26(25)
      acd26(44)=-acd26(31)+acd26(48)+acd26(47)+acd26(46)+acd26(45)+acd26(44)
      acd26(44)=acd26(4)*acd26(44)
      acd26(45)=acd26(8)*acd26(2)
      acd26(46)=acd26(11)*acd26(10)
      acd26(47)=acd26(15)*acd26(14)
      acd26(45)=-acd26(16)+acd26(47)+acd26(46)+acd26(45)
      acd26(45)=acd26(7)*acd26(45)
      acd26(46)=acd26(3)*acd26(2)
      acd26(47)=-acd26(5)*acd26(4)
      acd26(46)=-acd26(6)+acd26(46)+acd26(47)
      acd26(47)=acd26(17)-acd26(1)
      acd26(46)=acd26(47)*acd26(46)
      acd26(47)=acd26(33)*acd26(14)
      acd26(47)=acd26(34)+acd26(47)
      acd26(47)=acd26(47)*acd26(10)
      acd26(47)=-acd26(41)+acd26(47)
      acd26(47)=acd26(32)*acd26(47)
      acd26(48)=-acd26(21)*acd26(2)
      acd26(48)=acd26(23)+acd26(48)
      acd26(48)=acd26(20)*acd26(48)
      acd26(49)=-acd26(25)*acd26(14)*acd26(2)
      acd26(50)=-acd26(35)*acd26(10)
      brack=acd26(42)+acd26(43)+acd26(44)+acd26(45)+acd26(46)+acd26(47)+acd26(4&
      &8)+acd26(49)+acd26(50)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd26h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd26
      complex(ki) :: brack
      acd26(1)=k1(iv1)
      acd26(2)=dotproduct(qshift,spvak2k3)
      acd26(3)=abb26(23)
      acd26(4)=dotproduct(qshift,spvak2l6)
      acd26(5)=abb26(37)
      acd26(6)=abb26(22)
      acd26(7)=k2(iv1)
      acd26(8)=abb26(24)
      acd26(9)=abb26(39)
      acd26(10)=dotproduct(qshift,spvak4k3)
      acd26(11)=abb26(13)
      acd26(12)=dotproduct(qshift,spval5k1)
      acd26(13)=abb26(25)
      acd26(14)=dotproduct(qshift,spval5l6)
      acd26(15)=abb26(29)
      acd26(16)=abb26(20)
      acd26(17)=l5(iv1)
      acd26(18)=l6(iv1)
      acd26(19)=abb26(32)
      acd26(20)=qshift(iv1)
      acd26(21)=abb26(34)
      acd26(22)=abb26(41)
      acd26(23)=abb26(15)
      acd26(24)=spvak2k3(iv1)
      acd26(25)=dotproduct(k1,qshift)
      acd26(26)=dotproduct(k2,qshift)
      acd26(27)=dotproduct(l5,qshift)
      acd26(28)=dotproduct(qshift,qshift)
      acd26(29)=abb26(12)
      acd26(30)=abb26(42)
      acd26(31)=spvak2l6(iv1)
      acd26(32)=abb26(9)
      acd26(33)=abb26(11)
      acd26(34)=dotproduct(qshift,spval5k2)
      acd26(35)=abb26(26)
      acd26(36)=dotproduct(qshift,spval5k3)
      acd26(37)=abb26(28)
      acd26(38)=spvak4k3(iv1)
      acd26(39)=dotproduct(qshift,spvak2k1)
      acd26(40)=abb26(33)
      acd26(41)=abb26(10)
      acd26(42)=abb26(18)
      acd26(43)=spval5k1(iv1)
      acd26(44)=dotproduct(l6,qshift)
      acd26(45)=abb26(31)
      acd26(46)=dotproduct(qshift,spvak1l6)
      acd26(47)=abb26(14)
      acd26(48)=dotproduct(qshift,spvak4l6)
      acd26(49)=abb26(17)
      acd26(50)=spval5l6(iv1)
      acd26(51)=spvak1l6(iv1)
      acd26(52)=spvak2k1(iv1)
      acd26(53)=abb26(8)
      acd26(54)=spval5k2(iv1)
      acd26(55)=spval5k3(iv1)
      acd26(56)=spvak4l6(iv1)
      acd26(57)=acd26(35)*acd26(54)
      acd26(58)=2.0_ki*acd26(20)
      acd26(59)=-acd26(22)*acd26(58)
      acd26(60)=acd26(30)*acd26(55)
      acd26(61)=acd26(1)-acd26(17)
      acd26(62)=acd26(5)*acd26(61)
      acd26(63)=acd26(38)*acd26(32)
      acd26(64)=acd26(7)*acd26(9)
      acd26(65)=acd26(43)*acd26(33)
      acd26(57)=acd26(65)+acd26(64)+acd26(63)+acd26(62)+acd26(60)+acd26(57)+acd&
      &26(59)
      acd26(57)=acd26(4)*acd26(57)
      acd26(59)=acd26(35)*acd26(34)
      acd26(60)=-acd26(22)*acd26(28)
      acd26(62)=acd26(30)*acd26(36)
      acd26(63)=acd26(25)-acd26(27)
      acd26(64)=acd26(5)*acd26(63)
      acd26(65)=acd26(26)*acd26(9)
      acd26(66)=acd26(10)*acd26(32)
      acd26(67)=acd26(12)*acd26(33)
      acd26(59)=acd26(67)+acd26(66)+acd26(65)+acd26(64)+acd26(62)+acd26(60)-acd&
      &26(37)+acd26(59)
      acd26(59)=acd26(31)*acd26(59)
      acd26(60)=acd26(49)*acd26(48)
      acd26(62)=acd26(47)*acd26(46)
      acd26(64)=acd26(19)*acd26(44)
      acd26(65)=acd26(26)*acd26(13)
      acd26(66)=acd26(14)*acd26(45)
      acd26(67)=acd26(2)*acd26(29)
      acd26(60)=acd26(67)+acd26(66)+acd26(65)+acd26(64)+acd26(60)+acd26(62)
      acd26(60)=acd26(43)*acd26(60)
      acd26(62)=acd26(49)*acd26(56)
      acd26(64)=acd26(47)*acd26(51)
      acd26(65)=acd26(19)*acd26(18)
      acd26(66)=acd26(50)*acd26(45)
      acd26(67)=acd26(24)*acd26(29)
      acd26(68)=acd26(7)*acd26(13)
      acd26(62)=acd26(68)+acd26(67)+acd26(66)+acd26(65)+acd26(62)+acd26(64)
      acd26(62)=acd26(12)*acd26(62)
      acd26(64)=-acd26(21)*acd26(28)
      acd26(63)=-acd26(3)*acd26(63)
      acd26(65)=acd26(26)*acd26(8)
      acd26(66)=-acd26(14)*acd26(30)
      acd26(63)=acd26(66)+acd26(65)+acd26(64)+acd26(63)
      acd26(63)=acd26(24)*acd26(63)
      acd26(64)=-acd26(21)*acd26(58)
      acd26(65)=-acd26(30)*acd26(50)
      acd26(66)=-acd26(3)*acd26(61)
      acd26(67)=acd26(7)*acd26(8)
      acd26(64)=acd26(67)+acd26(66)+acd26(64)+acd26(65)
      acd26(64)=acd26(2)*acd26(64)
      acd26(65)=acd26(50)*acd26(15)
      acd26(66)=acd26(38)*acd26(11)
      acd26(65)=acd26(65)+acd26(66)
      acd26(65)=acd26(26)*acd26(65)
      acd26(66)=acd26(14)*acd26(40)
      acd26(66)=acd26(66)+acd26(41)
      acd26(67)=acd26(52)*acd26(66)
      acd26(68)=acd26(50)*acd26(39)*acd26(40)
      acd26(67)=acd26(68)+acd26(67)
      acd26(67)=acd26(10)*acd26(67)
      acd26(68)=acd26(14)*acd26(15)
      acd26(69)=acd26(10)*acd26(11)
      acd26(68)=acd26(69)-acd26(16)+acd26(68)
      acd26(68)=acd26(7)*acd26(68)
      acd26(61)=acd26(6)*acd26(61)
      acd26(66)=acd26(39)*acd26(66)
      acd26(66)=-acd26(42)+acd26(66)
      acd26(66)=acd26(38)*acd26(66)
      acd26(69)=-acd26(52)*acd26(53)
      acd26(58)=acd26(23)*acd26(58)
      brack=acd26(57)+acd26(58)+acd26(59)+acd26(60)+acd26(61)+acd26(62)+acd26(6&
      &3)+acd26(64)+acd26(65)+acd26(66)+acd26(67)+acd26(68)+acd26(69)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd26h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd26
      complex(ki) :: brack
      acd26(1)=d(iv1,iv2)
      acd26(2)=dotproduct(qshift,spvak2k3)
      acd26(3)=abb26(34)
      acd26(4)=dotproduct(qshift,spvak2l6)
      acd26(5)=abb26(41)
      acd26(6)=abb26(15)
      acd26(7)=k1(iv1)
      acd26(8)=spvak2k3(iv2)
      acd26(9)=abb26(23)
      acd26(10)=spvak2l6(iv2)
      acd26(11)=abb26(37)
      acd26(12)=k1(iv2)
      acd26(13)=spvak2k3(iv1)
      acd26(14)=spvak2l6(iv1)
      acd26(15)=k2(iv1)
      acd26(16)=abb26(24)
      acd26(17)=abb26(39)
      acd26(18)=spvak4k3(iv2)
      acd26(19)=abb26(13)
      acd26(20)=spval5k1(iv2)
      acd26(21)=abb26(25)
      acd26(22)=spval5l6(iv2)
      acd26(23)=abb26(29)
      acd26(24)=k2(iv2)
      acd26(25)=spvak4k3(iv1)
      acd26(26)=spval5k1(iv1)
      acd26(27)=spval5l6(iv1)
      acd26(28)=l5(iv1)
      acd26(29)=l5(iv2)
      acd26(30)=l6(iv1)
      acd26(31)=abb26(32)
      acd26(32)=l6(iv2)
      acd26(33)=qshift(iv1)
      acd26(34)=qshift(iv2)
      acd26(35)=abb26(12)
      acd26(36)=abb26(42)
      acd26(37)=abb26(9)
      acd26(38)=abb26(11)
      acd26(39)=spval5k2(iv2)
      acd26(40)=abb26(26)
      acd26(41)=spval5k3(iv2)
      acd26(42)=spval5k2(iv1)
      acd26(43)=spval5k3(iv1)
      acd26(44)=dotproduct(qshift,spvak2k1)
      acd26(45)=abb26(33)
      acd26(46)=spvak2k1(iv2)
      acd26(47)=dotproduct(qshift,spval5l6)
      acd26(48)=abb26(10)
      acd26(49)=spvak2k1(iv1)
      acd26(50)=abb26(31)
      acd26(51)=spvak1l6(iv2)
      acd26(52)=abb26(14)
      acd26(53)=spvak4l6(iv2)
      acd26(54)=abb26(17)
      acd26(55)=spvak1l6(iv1)
      acd26(56)=spvak4l6(iv1)
      acd26(57)=dotproduct(qshift,spvak4k3)
      acd26(58)=acd26(40)*acd26(39)
      acd26(59)=2.0_ki*acd26(5)
      acd26(60)=-acd26(34)*acd26(59)
      acd26(61)=acd26(36)*acd26(41)
      acd26(62)=acd26(12)-acd26(29)
      acd26(63)=acd26(11)*acd26(62)
      acd26(64)=acd26(24)*acd26(17)
      acd26(65)=acd26(18)*acd26(37)
      acd26(66)=acd26(20)*acd26(38)
      acd26(58)=acd26(66)+acd26(65)+acd26(64)+acd26(63)+acd26(61)+acd26(58)+acd&
      &26(60)
      acd26(58)=acd26(14)*acd26(58)
      acd26(60)=acd26(40)*acd26(42)
      acd26(59)=-acd26(33)*acd26(59)
      acd26(61)=acd26(36)*acd26(43)
      acd26(63)=acd26(7)-acd26(28)
      acd26(64)=acd26(11)*acd26(63)
      acd26(65)=acd26(25)*acd26(37)
      acd26(66)=acd26(15)*acd26(17)
      acd26(67)=acd26(26)*acd26(38)
      acd26(59)=acd26(67)+acd26(66)+acd26(65)+acd26(64)+acd26(61)+acd26(60)+acd&
      &26(59)
      acd26(59)=acd26(10)*acd26(59)
      acd26(60)=acd26(54)*acd26(53)
      acd26(61)=acd26(52)*acd26(51)
      acd26(64)=acd26(31)*acd26(32)
      acd26(65)=acd26(24)*acd26(21)
      acd26(66)=acd26(22)*acd26(50)
      acd26(67)=acd26(8)*acd26(35)
      acd26(60)=acd26(67)+acd26(66)+acd26(65)+acd26(64)+acd26(60)+acd26(61)
      acd26(60)=acd26(26)*acd26(60)
      acd26(61)=acd26(54)*acd26(56)
      acd26(64)=acd26(52)*acd26(55)
      acd26(65)=acd26(31)*acd26(30)
      acd26(66)=acd26(27)*acd26(50)
      acd26(67)=acd26(15)*acd26(21)
      acd26(68)=acd26(13)*acd26(35)
      acd26(61)=acd26(68)+acd26(67)+acd26(66)+acd26(65)+acd26(61)+acd26(64)
      acd26(61)=acd26(20)*acd26(61)
      acd26(64)=acd26(49)*acd26(57)
      acd26(65)=acd26(25)*acd26(44)
      acd26(64)=acd26(64)+acd26(65)
      acd26(64)=acd26(22)*acd26(64)
      acd26(65)=acd26(49)*acd26(47)
      acd26(66)=acd26(27)*acd26(44)
      acd26(65)=acd26(65)+acd26(66)
      acd26(65)=acd26(18)*acd26(65)
      acd26(66)=acd26(27)*acd26(46)*acd26(57)
      acd26(67)=acd26(25)*acd26(46)
      acd26(68)=acd26(47)*acd26(67)
      acd26(64)=acd26(65)+acd26(64)+acd26(66)+acd26(68)
      acd26(64)=acd26(45)*acd26(64)
      acd26(65)=2.0_ki*acd26(3)
      acd26(66)=-acd26(34)*acd26(65)
      acd26(62)=-acd26(9)*acd26(62)
      acd26(68)=acd26(24)*acd26(16)
      acd26(69)=-acd26(22)*acd26(36)
      acd26(62)=acd26(69)+acd26(68)+acd26(66)+acd26(62)
      acd26(62)=acd26(13)*acd26(62)
      acd26(65)=-acd26(33)*acd26(65)
      acd26(63)=-acd26(9)*acd26(63)
      acd26(66)=-acd26(27)*acd26(36)
      acd26(68)=acd26(15)*acd26(16)
      acd26(63)=acd26(68)+acd26(66)+acd26(65)+acd26(63)
      acd26(63)=acd26(8)*acd26(63)
      acd26(65)=acd26(18)*acd26(49)
      acd26(65)=acd26(65)+acd26(67)
      acd26(65)=acd26(48)*acd26(65)
      acd26(66)=-acd26(5)*acd26(4)
      acd26(67)=-acd26(3)*acd26(2)
      acd26(66)=acd26(67)+acd26(6)+acd26(66)
      acd26(66)=acd26(1)*acd26(66)
      acd26(67)=acd26(27)*acd26(23)
      acd26(68)=acd26(25)*acd26(19)
      acd26(67)=acd26(67)+acd26(68)
      acd26(67)=acd26(24)*acd26(67)
      acd26(68)=acd26(22)*acd26(23)
      acd26(69)=acd26(18)*acd26(19)
      acd26(68)=acd26(68)+acd26(69)
      acd26(68)=acd26(15)*acd26(68)
      brack=acd26(58)+acd26(59)+acd26(60)+acd26(61)+acd26(62)+acd26(63)+acd26(6&
      &4)+acd26(65)+2.0_ki*acd26(66)+acd26(67)+acd26(68)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd26h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd26
      complex(ki) :: brack
      acd26(1)=d(iv1,iv2)
      acd26(2)=spvak2k3(iv3)
      acd26(3)=abb26(34)
      acd26(4)=spvak2l6(iv3)
      acd26(5)=abb26(41)
      acd26(6)=d(iv1,iv3)
      acd26(7)=spvak2k3(iv2)
      acd26(8)=spvak2l6(iv2)
      acd26(9)=d(iv2,iv3)
      acd26(10)=spvak2k3(iv1)
      acd26(11)=spvak2l6(iv1)
      acd26(12)=spvak2k1(iv1)
      acd26(13)=spvak4k3(iv2)
      acd26(14)=spval5l6(iv3)
      acd26(15)=abb26(33)
      acd26(16)=spvak4k3(iv3)
      acd26(17)=spval5l6(iv2)
      acd26(18)=spvak2k1(iv2)
      acd26(19)=spvak4k3(iv1)
      acd26(20)=spval5l6(iv1)
      acd26(21)=spvak2k1(iv3)
      acd26(22)=-acd26(9)*acd26(11)
      acd26(23)=-acd26(6)*acd26(8)
      acd26(24)=-acd26(1)*acd26(4)
      acd26(22)=acd26(24)+acd26(22)+acd26(23)
      acd26(22)=acd26(5)*acd26(22)
      acd26(23)=-acd26(9)*acd26(10)
      acd26(24)=-acd26(6)*acd26(7)
      acd26(25)=-acd26(1)*acd26(2)
      acd26(23)=acd26(25)+acd26(23)+acd26(24)
      acd26(23)=acd26(3)*acd26(23)
      acd26(22)=acd26(22)+acd26(23)
      acd26(23)=acd26(17)*acd26(19)
      acd26(24)=acd26(13)*acd26(20)
      acd26(23)=acd26(24)+acd26(23)
      acd26(23)=acd26(21)*acd26(23)
      acd26(24)=acd26(16)*acd26(20)
      acd26(25)=acd26(14)*acd26(19)
      acd26(24)=acd26(25)+acd26(24)
      acd26(24)=acd26(18)*acd26(24)
      acd26(25)=acd26(16)*acd26(17)
      acd26(26)=acd26(13)*acd26(14)
      acd26(25)=acd26(25)+acd26(26)
      acd26(25)=acd26(12)*acd26(25)
      acd26(23)=acd26(25)+acd26(24)+acd26(23)
      acd26(23)=acd26(15)*acd26(23)
      brack=2.0_ki*acd26(22)+acd26(23)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd26h2
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k6
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d26:
   subroutine     reconstruct_d26(coeffs)
      use p3_usbar_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_26:
      coeffs%coeffs_26%c0 = derivative(czip)
      coeffs%coeffs_26%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_26%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_26%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_26%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_26%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_26%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_26%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_26%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_26%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_26%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_26%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_26%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_26%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_26%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_26%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_26%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_26%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_26%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_26%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_26%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_26%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_26%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_26%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_26%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_26%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_26%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_26%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_26%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_26%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_26%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_26%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_26%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_26%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_26%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_26:
   end subroutine reconstruct_d26
!---#] subroutine reconstruct_d26:
end module     p3_usbar_epnebbbar_d26h2l1d
