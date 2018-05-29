module     p0_dbard_epnemumnmubarg_d37h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d37h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d37
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd37h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd37
      complex(ki) :: brack
      acd37(1)=dotproduct(k1,qshift)
      acd37(2)=dotproduct(k7,qshift)
      acd37(3)=abb37(45)
      acd37(4)=dotproduct(qshift,spvak1k3)
      acd37(5)=abb37(18)
      acd37(6)=dotproduct(qshift,spvak2k7)
      acd37(7)=abb37(25)
      acd37(8)=dotproduct(qshift,spvak4k3)
      acd37(9)=abb37(28)
      acd37(10)=dotproduct(qshift,spvak5k6)
      acd37(11)=abb37(53)
      acd37(12)=abb37(8)
      acd37(13)=dotproduct(k2,qshift)
      acd37(14)=abb37(51)
      acd37(15)=dotproduct(k3,qshift)
      acd37(16)=abb37(41)
      acd37(17)=dotproduct(k4,qshift)
      acd37(18)=dotproduct(qshift,qshift)
      acd37(19)=abb37(29)
      acd37(20)=abb37(20)
      acd37(21)=abb37(14)
      acd37(22)=abb37(52)
      acd37(23)=abb37(27)
      acd37(24)=abb37(33)
      acd37(25)=abb37(16)
      acd37(26)=abb37(23)
      acd37(27)=abb37(19)
      acd37(28)=abb37(13)
      acd37(29)=abb37(12)
      acd37(30)=abb37(26)
      acd37(31)=abb37(17)
      acd37(32)=abb37(9)
      acd37(33)=abb37(30)
      acd37(34)=abb37(7)
      acd37(35)=dotproduct(qshift,spvak1k7)
      acd37(36)=abb37(31)
      acd37(37)=abb37(44)
      acd37(38)=dotproduct(qshift,spvak1k4)
      acd37(39)=dotproduct(qshift,spvak1k6)
      acd37(40)=abb37(32)
      acd37(41)=abb37(10)
      acd37(42)=abb37(24)
      acd37(43)=abb37(11)
      acd37(44)=acd37(24)*acd37(4)
      acd37(45)=-acd37(19)*acd37(2)
      acd37(46)=-acd37(25)*acd37(6)
      acd37(47)=-acd37(26)*acd37(8)
      acd37(44)=acd37(27)+acd37(47)+acd37(46)+acd37(45)+acd37(44)
      acd37(44)=acd37(18)*acd37(44)
      acd37(45)=-acd37(20)*acd37(2)
      acd37(46)=-acd37(31)*acd37(6)
      acd37(47)=-acd37(36)*acd37(35)
      acd37(45)=acd37(37)+acd37(47)+acd37(46)+acd37(45)
      acd37(45)=acd37(45)*acd37(8)
      acd37(45)=-acd37(42)+acd37(45)
      acd37(45)=acd37(10)*acd37(45)
      acd37(46)=acd37(17)+acd37(15)
      acd37(47)=acd37(46)-acd37(1)
      acd37(48)=acd37(3)*acd37(47)
      acd37(49)=acd37(21)*acd37(8)
      acd37(50)=acd37(22)*acd37(10)
      acd37(48)=-acd37(23)+acd37(50)+acd37(49)+acd37(48)
      acd37(48)=acd37(2)*acd37(48)
      acd37(49)=acd37(7)*acd37(47)
      acd37(50)=acd37(32)*acd37(8)
      acd37(51)=acd37(33)*acd37(10)
      acd37(49)=-acd37(34)+acd37(51)+acd37(50)+acd37(49)
      acd37(49)=acd37(6)*acd37(49)
      acd37(50)=acd37(28)*acd37(4)
      acd37(51)=acd37(38)*acd37(24)
      acd37(52)=acd37(40)*acd37(39)
      acd37(50)=-acd37(41)+acd37(52)+acd37(51)+acd37(50)
      acd37(50)=acd37(8)*acd37(50)
      acd37(47)=-acd37(5)*acd37(47)
      acd37(51)=acd37(29)*acd37(10)
      acd37(47)=acd37(47)-acd37(30)+acd37(51)
      acd37(47)=acd37(4)*acd37(47)
      acd37(51)=acd37(9)*acd37(8)
      acd37(52)=acd37(11)*acd37(10)
      acd37(52)=-acd37(12)+acd37(52)+acd37(51)
      acd37(52)=acd37(1)*acd37(52)
      acd37(51)=-acd37(14)-acd37(51)
      acd37(51)=acd37(13)*acd37(51)
      acd37(46)=-acd37(16)*acd37(46)
      brack=acd37(43)+acd37(44)+acd37(45)+acd37(46)+acd37(47)+acd37(48)+acd37(4&
      &9)+acd37(50)+acd37(51)+acd37(52)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd37h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd37
      complex(ki) :: brack
      acd37(1)=k1(iv1)
      acd37(2)=dotproduct(k7,qshift)
      acd37(3)=abb37(45)
      acd37(4)=dotproduct(qshift,spvak1k3)
      acd37(5)=abb37(18)
      acd37(6)=dotproduct(qshift,spvak2k7)
      acd37(7)=abb37(25)
      acd37(8)=dotproduct(qshift,spvak4k3)
      acd37(9)=abb37(28)
      acd37(10)=dotproduct(qshift,spvak5k6)
      acd37(11)=abb37(53)
      acd37(12)=abb37(8)
      acd37(13)=k2(iv1)
      acd37(14)=abb37(51)
      acd37(15)=k3(iv1)
      acd37(16)=abb37(41)
      acd37(17)=k4(iv1)
      acd37(18)=k7(iv1)
      acd37(19)=dotproduct(k1,qshift)
      acd37(20)=dotproduct(k3,qshift)
      acd37(21)=dotproduct(k4,qshift)
      acd37(22)=dotproduct(qshift,qshift)
      acd37(23)=abb37(29)
      acd37(24)=abb37(20)
      acd37(25)=abb37(14)
      acd37(26)=abb37(52)
      acd37(27)=abb37(27)
      acd37(28)=qshift(iv1)
      acd37(29)=abb37(33)
      acd37(30)=abb37(16)
      acd37(31)=abb37(23)
      acd37(32)=abb37(19)
      acd37(33)=spvak1k3(iv1)
      acd37(34)=abb37(13)
      acd37(35)=abb37(12)
      acd37(36)=abb37(26)
      acd37(37)=spvak2k7(iv1)
      acd37(38)=abb37(17)
      acd37(39)=abb37(9)
      acd37(40)=abb37(30)
      acd37(41)=abb37(7)
      acd37(42)=spvak4k3(iv1)
      acd37(43)=dotproduct(k2,qshift)
      acd37(44)=dotproduct(qshift,spvak1k7)
      acd37(45)=abb37(31)
      acd37(46)=abb37(44)
      acd37(47)=dotproduct(qshift,spvak1k4)
      acd37(48)=dotproduct(qshift,spvak1k6)
      acd37(49)=abb37(32)
      acd37(50)=abb37(10)
      acd37(51)=spvak5k6(iv1)
      acd37(52)=abb37(24)
      acd37(53)=spvak1k4(iv1)
      acd37(54)=spvak1k6(iv1)
      acd37(55)=spvak1k7(iv1)
      acd37(56)=acd37(45)*acd37(44)
      acd37(57)=acd37(6)*acd37(38)
      acd37(58)=acd37(2)*acd37(24)
      acd37(56)=acd37(56)+acd37(57)+acd37(58)-acd37(46)
      acd37(57)=acd37(51)*acd37(56)
      acd37(58)=acd37(45)*acd37(55)
      acd37(59)=acd37(37)*acd37(38)
      acd37(60)=acd37(18)*acd37(24)
      acd37(58)=acd37(60)+acd37(58)+acd37(59)
      acd37(58)=acd37(10)*acd37(58)
      acd37(59)=-acd37(1)+acd37(13)
      acd37(59)=acd37(9)*acd37(59)
      acd37(60)=-acd37(49)*acd37(54)
      acd37(61)=-acd37(29)*acd37(53)
      acd37(62)=2.0_ki*acd37(28)
      acd37(63)=acd37(31)*acd37(62)
      acd37(64)=-acd37(33)*acd37(34)
      acd37(65)=-acd37(37)*acd37(39)
      acd37(66)=-acd37(18)*acd37(25)
      acd37(57)=acd37(58)+acd37(57)+acd37(66)+acd37(65)+acd37(64)+acd37(63)+acd&
      &37(60)+acd37(61)+acd37(59)
      acd37(57)=acd37(8)*acd37(57)
      acd37(56)=acd37(10)*acd37(56)
      acd37(58)=-acd37(19)+acd37(43)
      acd37(58)=acd37(9)*acd37(58)
      acd37(59)=-acd37(49)*acd37(48)
      acd37(60)=-acd37(29)*acd37(47)
      acd37(61)=acd37(22)*acd37(31)
      acd37(63)=-acd37(4)*acd37(34)
      acd37(64)=-acd37(6)*acd37(39)
      acd37(65)=-acd37(2)*acd37(25)
      acd37(56)=acd37(56)+acd37(65)+acd37(64)+acd37(63)+acd37(61)+acd37(60)+acd&
      &37(50)+acd37(59)+acd37(58)
      acd37(56)=acd37(42)*acd37(56)
      acd37(58)=-acd37(19)*acd37(11)
      acd37(59)=-acd37(4)*acd37(35)
      acd37(60)=-acd37(6)*acd37(40)
      acd37(61)=-acd37(2)*acd37(26)
      acd37(58)=acd37(61)+acd37(60)+acd37(59)+acd37(52)+acd37(58)
      acd37(58)=acd37(51)*acd37(58)
      acd37(59)=-acd37(1)*acd37(11)
      acd37(60)=-acd37(33)*acd37(35)
      acd37(61)=-acd37(37)*acd37(40)
      acd37(63)=-acd37(18)*acd37(26)
      acd37(59)=acd37(63)+acd37(61)+acd37(59)+acd37(60)
      acd37(59)=acd37(10)*acd37(59)
      acd37(60)=-acd37(29)*acd37(62)
      acd37(61)=acd37(15)+acd37(17)
      acd37(63)=acd37(5)*acd37(61)
      acd37(60)=acd37(60)+acd37(63)
      acd37(60)=acd37(4)*acd37(60)
      acd37(63)=-acd37(22)*acd37(29)
      acd37(64)=-acd37(21)+acd37(19)-acd37(20)
      acd37(65)=-acd37(5)*acd37(64)
      acd37(63)=acd37(65)+acd37(36)+acd37(63)
      acd37(63)=acd37(33)*acd37(63)
      acd37(65)=acd37(22)*acd37(30)
      acd37(66)=acd37(7)*acd37(64)
      acd37(65)=acd37(66)+acd37(41)+acd37(65)
      acd37(65)=acd37(37)*acd37(65)
      acd37(66)=acd37(22)*acd37(23)
      acd37(64)=acd37(3)*acd37(64)
      acd37(64)=acd37(64)+acd37(27)+acd37(66)
      acd37(64)=acd37(18)*acd37(64)
      acd37(66)=acd37(61)-acd37(1)
      acd37(67)=-acd37(7)*acd37(66)
      acd37(68)=acd37(30)*acd37(62)
      acd37(67)=acd37(68)+acd37(67)
      acd37(67)=acd37(6)*acd37(67)
      acd37(66)=-acd37(3)*acd37(66)
      acd37(68)=acd37(23)*acd37(62)
      acd37(66)=acd37(68)+acd37(66)
      acd37(66)=acd37(2)*acd37(66)
      acd37(61)=acd37(16)*acd37(61)
      acd37(68)=acd37(13)*acd37(14)
      acd37(62)=-acd37(32)*acd37(62)
      acd37(69)=-acd37(4)*acd37(5)
      acd37(69)=acd37(12)+acd37(69)
      acd37(69)=acd37(1)*acd37(69)
      brack=acd37(56)+acd37(57)+acd37(58)+acd37(59)+acd37(60)+acd37(61)+acd37(6&
      &2)+acd37(63)+acd37(64)+acd37(65)+acd37(66)+acd37(67)+acd37(68)+acd37(69)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd37h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd37
      complex(ki) :: brack
      acd37(1)=d(iv1,iv2)
      acd37(2)=dotproduct(k7,qshift)
      acd37(3)=abb37(29)
      acd37(4)=dotproduct(qshift,spvak1k3)
      acd37(5)=abb37(33)
      acd37(6)=dotproduct(qshift,spvak2k7)
      acd37(7)=abb37(16)
      acd37(8)=dotproduct(qshift,spvak4k3)
      acd37(9)=abb37(23)
      acd37(10)=abb37(19)
      acd37(11)=k1(iv1)
      acd37(12)=k7(iv2)
      acd37(13)=abb37(45)
      acd37(14)=spvak1k3(iv2)
      acd37(15)=abb37(18)
      acd37(16)=spvak2k7(iv2)
      acd37(17)=abb37(25)
      acd37(18)=spvak4k3(iv2)
      acd37(19)=abb37(28)
      acd37(20)=spvak5k6(iv2)
      acd37(21)=abb37(53)
      acd37(22)=k1(iv2)
      acd37(23)=k7(iv1)
      acd37(24)=spvak1k3(iv1)
      acd37(25)=spvak2k7(iv1)
      acd37(26)=spvak4k3(iv1)
      acd37(27)=spvak5k6(iv1)
      acd37(28)=k2(iv1)
      acd37(29)=k2(iv2)
      acd37(30)=k3(iv1)
      acd37(31)=k3(iv2)
      acd37(32)=k4(iv1)
      acd37(33)=k4(iv2)
      acd37(34)=qshift(iv2)
      acd37(35)=dotproduct(qshift,spvak5k6)
      acd37(36)=abb37(20)
      acd37(37)=abb37(14)
      acd37(38)=abb37(52)
      acd37(39)=qshift(iv1)
      acd37(40)=abb37(13)
      acd37(41)=abb37(12)
      acd37(42)=abb37(17)
      acd37(43)=abb37(9)
      acd37(44)=abb37(30)
      acd37(45)=dotproduct(qshift,spvak1k7)
      acd37(46)=abb37(31)
      acd37(47)=abb37(44)
      acd37(48)=spvak1k4(iv2)
      acd37(49)=spvak1k6(iv2)
      acd37(50)=abb37(32)
      acd37(51)=spvak1k7(iv2)
      acd37(52)=spvak1k4(iv1)
      acd37(53)=spvak1k6(iv1)
      acd37(54)=spvak1k7(iv1)
      acd37(55)=acd37(46)*acd37(45)
      acd37(56)=acd37(42)*acd37(6)
      acd37(57)=acd37(36)*acd37(2)
      acd37(55)=acd37(55)+acd37(56)+acd37(57)-acd37(47)
      acd37(56)=-acd37(20)*acd37(55)
      acd37(57)=acd37(22)-acd37(29)
      acd37(57)=acd37(19)*acd37(57)
      acd37(58)=acd37(50)*acd37(49)
      acd37(59)=2.0_ki*acd37(34)
      acd37(60)=-acd37(9)*acd37(59)
      acd37(61)=acd37(5)*acd37(48)
      acd37(62)=acd37(35)*acd37(46)
      acd37(63)=-acd37(51)*acd37(62)
      acd37(64)=acd37(14)*acd37(40)
      acd37(65)=acd37(35)*acd37(42)
      acd37(65)=acd37(65)-acd37(43)
      acd37(66)=-acd37(16)*acd37(65)
      acd37(67)=acd37(35)*acd37(36)
      acd37(67)=acd37(67)-acd37(37)
      acd37(68)=-acd37(12)*acd37(67)
      acd37(56)=acd37(56)+acd37(68)+acd37(66)+acd37(64)+acd37(63)+acd37(61)+acd&
      &37(58)+acd37(60)+acd37(57)
      acd37(56)=acd37(26)*acd37(56)
      acd37(55)=-acd37(27)*acd37(55)
      acd37(57)=acd37(11)-acd37(28)
      acd37(57)=acd37(19)*acd37(57)
      acd37(58)=acd37(50)*acd37(53)
      acd37(60)=2.0_ki*acd37(39)
      acd37(61)=-acd37(9)*acd37(60)
      acd37(63)=acd37(5)*acd37(52)
      acd37(62)=-acd37(54)*acd37(62)
      acd37(64)=acd37(24)*acd37(40)
      acd37(65)=-acd37(25)*acd37(65)
      acd37(66)=-acd37(23)*acd37(67)
      acd37(55)=acd37(55)+acd37(66)+acd37(65)+acd37(64)+acd37(62)+acd37(63)+acd&
      &37(58)+acd37(61)+acd37(57)
      acd37(55)=acd37(18)*acd37(55)
      acd37(57)=acd37(22)*acd37(21)
      acd37(58)=acd37(14)*acd37(41)
      acd37(61)=acd37(8)*acd37(46)
      acd37(62)=-acd37(51)*acd37(61)
      acd37(63)=acd37(8)*acd37(42)
      acd37(63)=acd37(63)-acd37(44)
      acd37(64)=-acd37(16)*acd37(63)
      acd37(65)=acd37(8)*acd37(36)
      acd37(65)=acd37(65)-acd37(38)
      acd37(66)=-acd37(12)*acd37(65)
      acd37(57)=acd37(66)+acd37(64)+acd37(62)+acd37(57)+acd37(58)
      acd37(57)=acd37(27)*acd37(57)
      acd37(58)=acd37(11)*acd37(21)
      acd37(62)=acd37(24)*acd37(41)
      acd37(61)=-acd37(54)*acd37(61)
      acd37(63)=-acd37(25)*acd37(63)
      acd37(64)=-acd37(23)*acd37(65)
      acd37(58)=acd37(64)+acd37(63)+acd37(61)+acd37(58)+acd37(62)
      acd37(58)=acd37(20)*acd37(58)
      acd37(61)=-acd37(6)*acd37(7)
      acd37(62)=-acd37(2)*acd37(3)
      acd37(63)=acd37(5)*acd37(4)
      acd37(61)=acd37(63)+acd37(62)+acd37(10)+acd37(61)
      acd37(61)=acd37(1)*acd37(61)
      acd37(62)=acd37(24)*acd37(5)*acd37(34)
      acd37(61)=acd37(61)+acd37(62)
      acd37(62)=acd37(5)*acd37(60)
      acd37(63)=-acd37(32)+acd37(11)-acd37(30)
      acd37(64)=acd37(15)*acd37(63)
      acd37(62)=acd37(62)+acd37(64)
      acd37(62)=acd37(14)*acd37(62)
      acd37(64)=-acd37(7)*acd37(59)
      acd37(65)=-acd37(33)+acd37(22)-acd37(31)
      acd37(66)=-acd37(17)*acd37(65)
      acd37(64)=acd37(64)+acd37(66)
      acd37(64)=acd37(25)*acd37(64)
      acd37(59)=-acd37(3)*acd37(59)
      acd37(66)=-acd37(13)*acd37(65)
      acd37(59)=acd37(59)+acd37(66)
      acd37(59)=acd37(23)*acd37(59)
      acd37(66)=-acd37(7)*acd37(60)
      acd37(67)=-acd37(17)*acd37(63)
      acd37(66)=acd37(66)+acd37(67)
      acd37(66)=acd37(16)*acd37(66)
      acd37(60)=-acd37(3)*acd37(60)
      acd37(63)=-acd37(13)*acd37(63)
      acd37(60)=acd37(60)+acd37(63)
      acd37(60)=acd37(12)*acd37(60)
      acd37(63)=acd37(15)*acd37(24)*acd37(65)
      acd37(65)=2.0_ki*acd37(9)
      acd37(65)=-acd37(8)*acd37(1)*acd37(65)
      brack=acd37(55)+acd37(56)+acd37(57)+acd37(58)+acd37(59)+acd37(60)+2.0_ki*&
      &acd37(61)+acd37(62)+acd37(63)+acd37(64)+acd37(65)+acd37(66)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd37h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd37
      complex(ki) :: brack
      acd37(1)=d(iv1,iv2)
      acd37(2)=k7(iv3)
      acd37(3)=abb37(29)
      acd37(4)=spvak1k3(iv3)
      acd37(5)=abb37(33)
      acd37(6)=spvak2k7(iv3)
      acd37(7)=abb37(16)
      acd37(8)=spvak4k3(iv3)
      acd37(9)=abb37(23)
      acd37(10)=d(iv1,iv3)
      acd37(11)=k7(iv2)
      acd37(12)=spvak1k3(iv2)
      acd37(13)=spvak2k7(iv2)
      acd37(14)=spvak4k3(iv2)
      acd37(15)=d(iv2,iv3)
      acd37(16)=k7(iv1)
      acd37(17)=spvak1k3(iv1)
      acd37(18)=spvak2k7(iv1)
      acd37(19)=spvak4k3(iv1)
      acd37(20)=spvak5k6(iv3)
      acd37(21)=abb37(20)
      acd37(22)=spvak5k6(iv2)
      acd37(23)=spvak5k6(iv1)
      acd37(24)=abb37(17)
      acd37(25)=spvak1k7(iv3)
      acd37(26)=abb37(31)
      acd37(27)=spvak1k7(iv2)
      acd37(28)=spvak1k7(iv1)
      acd37(29)=acd37(22)*acd37(19)
      acd37(30)=acd37(23)*acd37(14)
      acd37(29)=acd37(29)+acd37(30)
      acd37(30)=acd37(25)*acd37(29)
      acd37(31)=acd37(20)*acd37(19)
      acd37(32)=acd37(23)*acd37(8)
      acd37(31)=acd37(31)+acd37(32)
      acd37(32)=acd37(27)*acd37(31)
      acd37(33)=acd37(20)*acd37(14)
      acd37(34)=acd37(22)*acd37(8)
      acd37(33)=acd37(33)+acd37(34)
      acd37(34)=acd37(28)*acd37(33)
      acd37(30)=acd37(34)+acd37(32)+acd37(30)
      acd37(30)=acd37(26)*acd37(30)
      acd37(32)=-acd37(4)*acd37(1)
      acd37(34)=-acd37(12)*acd37(10)
      acd37(35)=-acd37(17)*acd37(15)
      acd37(32)=acd37(35)+acd37(34)+acd37(32)
      acd37(34)=2.0_ki*acd37(5)
      acd37(32)=acd37(34)*acd37(32)
      acd37(34)=acd37(1)*acd37(8)
      acd37(35)=acd37(10)*acd37(14)
      acd37(36)=acd37(15)*acd37(19)
      acd37(34)=acd37(36)+acd37(34)+acd37(35)
      acd37(34)=acd37(9)*acd37(34)
      acd37(35)=acd37(21)*acd37(29)
      acd37(36)=2.0_ki*acd37(3)
      acd37(37)=acd37(1)*acd37(36)
      acd37(35)=acd37(35)+acd37(37)
      acd37(35)=acd37(2)*acd37(35)
      acd37(29)=acd37(24)*acd37(29)
      acd37(37)=2.0_ki*acd37(7)
      acd37(38)=acd37(1)*acd37(37)
      acd37(29)=acd37(38)+acd37(29)
      acd37(29)=acd37(6)*acd37(29)
      acd37(38)=acd37(21)*acd37(31)
      acd37(39)=acd37(10)*acd37(36)
      acd37(38)=acd37(39)+acd37(38)
      acd37(38)=acd37(11)*acd37(38)
      acd37(31)=acd37(24)*acd37(31)
      acd37(39)=acd37(10)*acd37(37)
      acd37(31)=acd37(31)+acd37(39)
      acd37(31)=acd37(13)*acd37(31)
      acd37(39)=acd37(21)*acd37(33)
      acd37(36)=acd37(15)*acd37(36)
      acd37(36)=acd37(36)+acd37(39)
      acd37(36)=acd37(16)*acd37(36)
      acd37(33)=acd37(24)*acd37(33)
      acd37(37)=acd37(15)*acd37(37)
      acd37(33)=acd37(33)+acd37(37)
      acd37(33)=acd37(18)*acd37(33)
      brack=acd37(29)+acd37(30)+acd37(31)+acd37(32)+acd37(33)+2.0_ki*acd37(34)+&
      &acd37(35)+acd37(36)+acd37(38)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd37h1
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
!---#[ subroutine reconstruct_d37:
   subroutine     reconstruct_d37(coeffs)
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_37:
      coeffs%coeffs_37%c0 = derivative(czip)
      coeffs%coeffs_37%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_37%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_37%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_37%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_37%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_37%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_37%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_37%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_37%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_37%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_37%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_37%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_37%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_37%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_37%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_37%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_37%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_37%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_37%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_37%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_37%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_37%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_37%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_37%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_37%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_37%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_37%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_37%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_37%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_37%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_37%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_37%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_37%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_37%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_37:
   end subroutine reconstruct_d37
!---#] subroutine reconstruct_d37:
end module     p0_dbard_epnemumnmubarg_d37h1l1d
