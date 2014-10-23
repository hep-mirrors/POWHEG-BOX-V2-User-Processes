module     p0_dbaru_epnebbbarg_d104h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d104h4l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d104
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd104
      complex(ki) :: brack
      acd104(1)=dotproduct(k1,qshift)
      acd104(2)=abb104(45)
      acd104(3)=dotproduct(k3,qshift)
      acd104(4)=dotproduct(qshift,spvak4k2)
      acd104(5)=abb104(17)
      acd104(6)=dotproduct(qshift,spval5k2)
      acd104(7)=abb104(82)
      acd104(8)=dotproduct(qshift,spval6k2)
      acd104(9)=abb104(75)
      acd104(10)=dotproduct(qshift,spvak7k2)
      acd104(11)=abb104(74)
      acd104(12)=abb104(61)
      acd104(13)=dotproduct(k4,qshift)
      acd104(14)=dotproduct(l5,qshift)
      acd104(15)=dotproduct(l6,qshift)
      acd104(16)=dotproduct(k7,qshift)
      acd104(17)=dotproduct(qshift,qshift)
      acd104(18)=abb104(16)
      acd104(19)=abb104(80)
      acd104(20)=abb104(66)
      acd104(21)=abb104(69)
      acd104(22)=abb104(35)
      acd104(23)=dotproduct(qshift,spvak4k3)
      acd104(24)=abb104(18)
      acd104(25)=dotproduct(qshift,spvak1k2)
      acd104(26)=abb104(23)
      acd104(27)=abb104(13)
      acd104(28)=dotproduct(qshift,spvak1k3)
      acd104(29)=abb104(25)
      acd104(30)=abb104(78)
      acd104(31)=abb104(22)
      acd104(32)=abb104(14)
      acd104(33)=abb104(24)
      acd104(34)=abb104(77)
      acd104(35)=abb104(21)
      acd104(36)=abb104(11)
      acd104(37)=abb104(20)
      acd104(38)=abb104(68)
      acd104(39)=abb104(15)
      acd104(40)=abb104(26)
      acd104(41)=dotproduct(qshift,spvak3k2)
      acd104(42)=abb104(12)
      acd104(43)=abb104(19)
      acd104(44)=-acd104(26)*acd104(6)
      acd104(45)=-acd104(31)*acd104(8)
      acd104(46)=-acd104(35)*acd104(10)
      acd104(44)=acd104(39)+acd104(46)+acd104(45)+acd104(44)
      acd104(44)=acd104(44)*acd104(25)
      acd104(45)=acd104(24)*acd104(4)
      acd104(46)=acd104(27)*acd104(6)
      acd104(47)=acd104(32)*acd104(8)
      acd104(48)=acd104(36)*acd104(10)
      acd104(49)=acd104(41)*acd104(18)
      acd104(44)=acd104(48)+acd104(47)+acd104(46)+acd104(44)-acd104(42)+acd104(&
      &49)+acd104(45)
      acd104(44)=acd104(23)*acd104(44)
      acd104(45)=-acd104(5)*acd104(4)
      acd104(46)=-acd104(7)*acd104(6)
      acd104(47)=-acd104(9)*acd104(8)
      acd104(48)=acd104(11)*acd104(10)
      acd104(45)=acd104(48)+acd104(47)+acd104(46)+acd104(12)+acd104(45)
      acd104(46)=acd104(13)+acd104(3)
      acd104(45)=acd104(46)*acd104(45)
      acd104(46)=-acd104(18)*acd104(4)
      acd104(47)=-acd104(19)*acd104(6)
      acd104(48)=-acd104(20)*acd104(8)
      acd104(49)=-acd104(21)*acd104(10)
      acd104(46)=acd104(22)+acd104(49)+acd104(48)+acd104(47)+acd104(46)
      acd104(46)=acd104(17)*acd104(46)
      acd104(47)=acd104(29)*acd104(6)
      acd104(48)=acd104(33)*acd104(8)
      acd104(49)=acd104(37)*acd104(10)
      acd104(47)=-acd104(43)+acd104(49)+acd104(48)+acd104(47)
      acd104(47)=acd104(28)*acd104(47)
      acd104(48)=-acd104(16)-acd104(15)-acd104(14)-acd104(1)
      acd104(48)=acd104(2)*acd104(48)
      acd104(49)=-acd104(30)*acd104(6)
      acd104(50)=-acd104(34)*acd104(8)
      acd104(51)=-acd104(38)*acd104(10)
      acd104(52)=-acd104(40)*acd104(25)
      brack=acd104(44)+acd104(45)+acd104(46)+acd104(47)+acd104(48)+acd104(49)+a&
      &cd104(50)+acd104(51)+acd104(52)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd104
      complex(ki) :: brack
      acd104(1)=k1(iv1)
      acd104(2)=abb104(45)
      acd104(3)=k3(iv1)
      acd104(4)=dotproduct(qshift,spvak4k2)
      acd104(5)=abb104(17)
      acd104(6)=dotproduct(qshift,spval5k2)
      acd104(7)=abb104(82)
      acd104(8)=dotproduct(qshift,spval6k2)
      acd104(9)=abb104(75)
      acd104(10)=dotproduct(qshift,spvak7k2)
      acd104(11)=abb104(74)
      acd104(12)=abb104(61)
      acd104(13)=k4(iv1)
      acd104(14)=l5(iv1)
      acd104(15)=l6(iv1)
      acd104(16)=k7(iv1)
      acd104(17)=qshift(iv1)
      acd104(18)=abb104(16)
      acd104(19)=abb104(80)
      acd104(20)=abb104(66)
      acd104(21)=abb104(69)
      acd104(22)=abb104(35)
      acd104(23)=spvak4k2(iv1)
      acd104(24)=dotproduct(k3,qshift)
      acd104(25)=dotproduct(k4,qshift)
      acd104(26)=dotproduct(qshift,qshift)
      acd104(27)=dotproduct(qshift,spvak4k3)
      acd104(28)=abb104(18)
      acd104(29)=spval5k2(iv1)
      acd104(30)=dotproduct(qshift,spvak1k2)
      acd104(31)=abb104(23)
      acd104(32)=abb104(13)
      acd104(33)=dotproduct(qshift,spvak1k3)
      acd104(34)=abb104(25)
      acd104(35)=abb104(78)
      acd104(36)=spval6k2(iv1)
      acd104(37)=abb104(22)
      acd104(38)=abb104(14)
      acd104(39)=abb104(24)
      acd104(40)=abb104(77)
      acd104(41)=spvak7k2(iv1)
      acd104(42)=abb104(21)
      acd104(43)=abb104(11)
      acd104(44)=abb104(20)
      acd104(45)=abb104(68)
      acd104(46)=spvak1k2(iv1)
      acd104(47)=abb104(15)
      acd104(48)=abb104(26)
      acd104(49)=spvak4k3(iv1)
      acd104(50)=dotproduct(qshift,spvak3k2)
      acd104(51)=abb104(12)
      acd104(52)=spvak1k3(iv1)
      acd104(53)=abb104(19)
      acd104(54)=spvak3k2(iv1)
      acd104(55)=acd104(10)*acd104(42)
      acd104(56)=acd104(8)*acd104(37)
      acd104(57)=acd104(6)*acd104(31)
      acd104(55)=acd104(57)+acd104(56)+acd104(55)-acd104(47)
      acd104(55)=acd104(46)*acd104(55)
      acd104(56)=acd104(41)*acd104(42)
      acd104(57)=acd104(36)*acd104(37)
      acd104(56)=acd104(56)+acd104(57)
      acd104(56)=acd104(30)*acd104(56)
      acd104(57)=-acd104(23)*acd104(28)
      acd104(58)=-acd104(18)*acd104(54)
      acd104(59)=-acd104(41)*acd104(43)
      acd104(60)=-acd104(36)*acd104(38)
      acd104(61)=acd104(30)*acd104(31)
      acd104(61)=acd104(61)-acd104(32)
      acd104(62)=acd104(29)*acd104(61)
      acd104(55)=acd104(62)+acd104(56)+acd104(60)+acd104(59)+acd104(57)+acd104(&
      &58)+acd104(55)
      acd104(55)=acd104(27)*acd104(55)
      acd104(56)=-acd104(18)*acd104(50)
      acd104(57)=-acd104(4)*acd104(28)
      acd104(58)=-acd104(30)*acd104(47)
      acd104(59)=acd104(30)*acd104(42)
      acd104(59)=-acd104(43)+acd104(59)
      acd104(59)=acd104(10)*acd104(59)
      acd104(60)=acd104(30)*acd104(37)
      acd104(60)=-acd104(38)+acd104(60)
      acd104(60)=acd104(8)*acd104(60)
      acd104(61)=acd104(6)*acd104(61)
      acd104(56)=acd104(61)+acd104(60)+acd104(59)+acd104(58)+acd104(57)+acd104(&
      &51)+acd104(56)
      acd104(56)=acd104(49)*acd104(56)
      acd104(57)=-acd104(33)*acd104(44)
      acd104(58)=acd104(26)*acd104(21)
      acd104(59)=acd104(24)+acd104(25)
      acd104(60)=-acd104(11)*acd104(59)
      acd104(57)=acd104(60)+acd104(58)+acd104(45)+acd104(57)
      acd104(57)=acd104(41)*acd104(57)
      acd104(58)=-acd104(33)*acd104(39)
      acd104(60)=acd104(26)*acd104(20)
      acd104(61)=acd104(9)*acd104(59)
      acd104(58)=acd104(61)+acd104(60)+acd104(40)+acd104(58)
      acd104(58)=acd104(36)*acd104(58)
      acd104(60)=-acd104(33)*acd104(34)
      acd104(61)=acd104(26)*acd104(19)
      acd104(62)=acd104(7)*acd104(59)
      acd104(60)=acd104(62)+acd104(61)+acd104(35)+acd104(60)
      acd104(60)=acd104(29)*acd104(60)
      acd104(61)=acd104(3)+acd104(13)
      acd104(62)=-acd104(11)*acd104(61)
      acd104(63)=-acd104(52)*acd104(44)
      acd104(64)=2.0_ki*acd104(17)
      acd104(65)=acd104(21)*acd104(64)
      acd104(62)=acd104(63)+acd104(65)+acd104(62)
      acd104(62)=acd104(10)*acd104(62)
      acd104(63)=acd104(9)*acd104(61)
      acd104(65)=-acd104(52)*acd104(39)
      acd104(66)=acd104(20)*acd104(64)
      acd104(63)=acd104(65)+acd104(66)+acd104(63)
      acd104(63)=acd104(8)*acd104(63)
      acd104(65)=acd104(7)*acd104(61)
      acd104(66)=-acd104(52)*acd104(34)
      acd104(67)=acd104(19)*acd104(64)
      acd104(65)=acd104(66)+acd104(67)+acd104(65)
      acd104(65)=acd104(6)*acd104(65)
      acd104(66)=acd104(4)*acd104(5)
      acd104(66)=acd104(66)-acd104(12)
      acd104(61)=acd104(66)*acd104(61)
      acd104(66)=acd104(18)*acd104(26)
      acd104(59)=acd104(5)*acd104(59)
      acd104(59)=acd104(59)+acd104(66)
      acd104(59)=acd104(23)*acd104(59)
      acd104(66)=acd104(4)*acd104(18)
      acd104(66)=-acd104(22)+acd104(66)
      acd104(64)=acd104(66)*acd104(64)
      acd104(66)=acd104(52)*acd104(53)
      acd104(67)=acd104(1)+acd104(14)+acd104(16)+acd104(15)
      acd104(67)=acd104(2)*acd104(67)
      acd104(68)=acd104(46)*acd104(48)
      brack=acd104(55)+acd104(56)+acd104(57)+acd104(58)+acd104(59)+acd104(60)+a&
      &cd104(61)+acd104(62)+acd104(63)+acd104(64)+acd104(65)+acd104(66)+acd104(&
      &67)+acd104(68)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd104
      complex(ki) :: brack
      acd104(1)=d(iv1,iv2)
      acd104(2)=dotproduct(qshift,spvak4k2)
      acd104(3)=abb104(16)
      acd104(4)=dotproduct(qshift,spval5k2)
      acd104(5)=abb104(80)
      acd104(6)=dotproduct(qshift,spval6k2)
      acd104(7)=abb104(66)
      acd104(8)=dotproduct(qshift,spvak7k2)
      acd104(9)=abb104(69)
      acd104(10)=abb104(35)
      acd104(11)=k3(iv1)
      acd104(12)=spvak4k2(iv2)
      acd104(13)=abb104(17)
      acd104(14)=spval5k2(iv2)
      acd104(15)=abb104(82)
      acd104(16)=spval6k2(iv2)
      acd104(17)=abb104(75)
      acd104(18)=spvak7k2(iv2)
      acd104(19)=abb104(74)
      acd104(20)=k3(iv2)
      acd104(21)=spvak4k2(iv1)
      acd104(22)=spval5k2(iv1)
      acd104(23)=spval6k2(iv1)
      acd104(24)=spvak7k2(iv1)
      acd104(25)=k4(iv1)
      acd104(26)=k4(iv2)
      acd104(27)=qshift(iv1)
      acd104(28)=qshift(iv2)
      acd104(29)=spvak4k3(iv2)
      acd104(30)=abb104(18)
      acd104(31)=spvak4k3(iv1)
      acd104(32)=spvak1k2(iv2)
      acd104(33)=dotproduct(qshift,spvak4k3)
      acd104(34)=abb104(23)
      acd104(35)=dotproduct(qshift,spvak1k2)
      acd104(36)=abb104(13)
      acd104(37)=spvak1k3(iv2)
      acd104(38)=abb104(25)
      acd104(39)=spvak1k2(iv1)
      acd104(40)=spvak1k3(iv1)
      acd104(41)=abb104(22)
      acd104(42)=abb104(14)
      acd104(43)=abb104(24)
      acd104(44)=abb104(21)
      acd104(45)=abb104(11)
      acd104(46)=abb104(20)
      acd104(47)=abb104(15)
      acd104(48)=spvak3k2(iv2)
      acd104(49)=spvak3k2(iv1)
      acd104(50)=acd104(44)*acd104(8)
      acd104(51)=acd104(41)*acd104(6)
      acd104(52)=acd104(34)*acd104(4)
      acd104(50)=acd104(51)+acd104(50)+acd104(52)-acd104(47)
      acd104(51)=-acd104(32)*acd104(50)
      acd104(52)=acd104(12)*acd104(30)
      acd104(53)=acd104(3)*acd104(48)
      acd104(54)=acd104(35)*acd104(44)
      acd104(54)=acd104(54)-acd104(45)
      acd104(55)=-acd104(18)*acd104(54)
      acd104(56)=acd104(35)*acd104(41)
      acd104(56)=acd104(56)-acd104(42)
      acd104(57)=-acd104(16)*acd104(56)
      acd104(58)=acd104(34)*acd104(35)
      acd104(58)=acd104(58)-acd104(36)
      acd104(59)=-acd104(14)*acd104(58)
      acd104(51)=acd104(59)+acd104(57)+acd104(55)+acd104(51)+acd104(52)+acd104(&
      &53)
      acd104(51)=acd104(31)*acd104(51)
      acd104(50)=-acd104(39)*acd104(50)
      acd104(52)=acd104(21)*acd104(30)
      acd104(53)=acd104(3)*acd104(49)
      acd104(54)=-acd104(24)*acd104(54)
      acd104(55)=-acd104(23)*acd104(56)
      acd104(56)=-acd104(22)*acd104(58)
      acd104(50)=acd104(56)+acd104(55)+acd104(54)+acd104(50)+acd104(52)+acd104(&
      &53)
      acd104(50)=acd104(29)*acd104(50)
      acd104(52)=-acd104(8)*acd104(9)
      acd104(53)=-acd104(6)*acd104(7)
      acd104(54)=-acd104(4)*acd104(5)
      acd104(55)=-acd104(3)*acd104(2)
      acd104(52)=acd104(55)+acd104(54)+acd104(53)+acd104(10)+acd104(52)
      acd104(52)=acd104(1)*acd104(52)
      acd104(53)=-acd104(21)*acd104(28)
      acd104(54)=-acd104(12)*acd104(27)
      acd104(53)=acd104(53)+acd104(54)
      acd104(53)=acd104(3)*acd104(53)
      acd104(52)=acd104(53)+acd104(52)
      acd104(53)=acd104(37)*acd104(46)
      acd104(54)=2.0_ki*acd104(28)
      acd104(55)=-acd104(9)*acd104(54)
      acd104(56)=acd104(20)+acd104(26)
      acd104(57)=acd104(19)*acd104(56)
      acd104(58)=acd104(32)*acd104(33)
      acd104(59)=-acd104(44)*acd104(58)
      acd104(53)=acd104(59)+acd104(57)+acd104(53)+acd104(55)
      acd104(53)=acd104(24)*acd104(53)
      acd104(55)=acd104(37)*acd104(43)
      acd104(57)=-acd104(7)*acd104(54)
      acd104(59)=-acd104(17)*acd104(56)
      acd104(60)=-acd104(41)*acd104(58)
      acd104(55)=acd104(60)+acd104(59)+acd104(55)+acd104(57)
      acd104(55)=acd104(23)*acd104(55)
      acd104(57)=acd104(37)*acd104(38)
      acd104(54)=-acd104(5)*acd104(54)
      acd104(59)=-acd104(15)*acd104(56)
      acd104(58)=-acd104(34)*acd104(58)
      acd104(54)=acd104(58)+acd104(59)+acd104(57)+acd104(54)
      acd104(54)=acd104(22)*acd104(54)
      acd104(57)=acd104(11)+acd104(25)
      acd104(58)=acd104(19)*acd104(57)
      acd104(59)=acd104(40)*acd104(46)
      acd104(60)=2.0_ki*acd104(27)
      acd104(61)=-acd104(9)*acd104(60)
      acd104(62)=acd104(39)*acd104(33)
      acd104(63)=-acd104(44)*acd104(62)
      acd104(58)=acd104(63)+acd104(59)+acd104(61)+acd104(58)
      acd104(58)=acd104(18)*acd104(58)
      acd104(59)=-acd104(17)*acd104(57)
      acd104(61)=acd104(40)*acd104(43)
      acd104(63)=-acd104(7)*acd104(60)
      acd104(64)=-acd104(41)*acd104(62)
      acd104(59)=acd104(64)+acd104(61)+acd104(63)+acd104(59)
      acd104(59)=acd104(16)*acd104(59)
      acd104(61)=-acd104(15)*acd104(57)
      acd104(63)=acd104(40)*acd104(38)
      acd104(60)=-acd104(5)*acd104(60)
      acd104(62)=-acd104(34)*acd104(62)
      acd104(60)=acd104(62)+acd104(63)+acd104(60)+acd104(61)
      acd104(60)=acd104(14)*acd104(60)
      acd104(57)=-acd104(12)*acd104(57)
      acd104(56)=-acd104(21)*acd104(56)
      acd104(56)=acd104(56)+acd104(57)
      acd104(56)=acd104(13)*acd104(56)
      brack=acd104(50)+acd104(51)+2.0_ki*acd104(52)+acd104(53)+acd104(54)+acd10&
      &4(55)+acd104(56)+acd104(58)+acd104(59)+acd104(60)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd104
      complex(ki) :: brack
      acd104(1)=d(iv1,iv2)
      acd104(2)=spvak4k2(iv3)
      acd104(3)=abb104(16)
      acd104(4)=spval5k2(iv3)
      acd104(5)=abb104(80)
      acd104(6)=spval6k2(iv3)
      acd104(7)=abb104(66)
      acd104(8)=spvak7k2(iv3)
      acd104(9)=abb104(69)
      acd104(10)=d(iv1,iv3)
      acd104(11)=spvak4k2(iv2)
      acd104(12)=spval5k2(iv2)
      acd104(13)=spval6k2(iv2)
      acd104(14)=spvak7k2(iv2)
      acd104(15)=d(iv2,iv3)
      acd104(16)=spvak4k2(iv1)
      acd104(17)=spval5k2(iv1)
      acd104(18)=spval6k2(iv1)
      acd104(19)=spvak7k2(iv1)
      acd104(20)=spvak1k2(iv2)
      acd104(21)=spvak4k3(iv3)
      acd104(22)=abb104(23)
      acd104(23)=spvak1k2(iv3)
      acd104(24)=spvak4k3(iv2)
      acd104(25)=spvak1k2(iv1)
      acd104(26)=spvak4k3(iv1)
      acd104(27)=abb104(22)
      acd104(28)=abb104(21)
      acd104(29)=acd104(5)*acd104(4)
      acd104(30)=acd104(7)*acd104(6)
      acd104(31)=acd104(9)*acd104(8)
      acd104(32)=acd104(2)*acd104(3)
      acd104(29)=acd104(32)+acd104(31)+acd104(30)+acd104(29)
      acd104(30)=2.0_ki*acd104(1)
      acd104(29)=acd104(30)*acd104(29)
      acd104(30)=acd104(4)*acd104(22)
      acd104(31)=acd104(6)*acd104(27)
      acd104(32)=acd104(8)*acd104(28)
      acd104(30)=acd104(30)+acd104(32)+acd104(31)
      acd104(31)=acd104(25)*acd104(24)
      acd104(32)=acd104(26)*acd104(20)
      acd104(31)=acd104(31)+acd104(32)
      acd104(30)=acd104(31)*acd104(30)
      acd104(31)=2.0_ki*acd104(10)
      acd104(32)=acd104(11)*acd104(31)
      acd104(33)=2.0_ki*acd104(15)
      acd104(34)=acd104(16)*acd104(33)
      acd104(32)=acd104(34)+acd104(32)
      acd104(32)=acd104(3)*acd104(32)
      acd104(34)=acd104(25)*acd104(21)
      acd104(35)=acd104(26)*acd104(23)
      acd104(34)=acd104(34)+acd104(35)
      acd104(35)=acd104(22)*acd104(34)
      acd104(36)=acd104(5)*acd104(31)
      acd104(35)=acd104(36)+acd104(35)
      acd104(35)=acd104(12)*acd104(35)
      acd104(36)=acd104(27)*acd104(34)
      acd104(37)=acd104(7)*acd104(31)
      acd104(36)=acd104(36)+acd104(37)
      acd104(36)=acd104(13)*acd104(36)
      acd104(34)=acd104(28)*acd104(34)
      acd104(31)=acd104(9)*acd104(31)
      acd104(31)=acd104(34)+acd104(31)
      acd104(31)=acd104(14)*acd104(31)
      acd104(34)=acd104(21)*acd104(20)
      acd104(37)=acd104(24)*acd104(23)
      acd104(34)=acd104(34)+acd104(37)
      acd104(37)=acd104(22)*acd104(34)
      acd104(38)=acd104(5)*acd104(33)
      acd104(37)=acd104(38)+acd104(37)
      acd104(37)=acd104(17)*acd104(37)
      acd104(38)=acd104(27)*acd104(34)
      acd104(39)=acd104(7)*acd104(33)
      acd104(38)=acd104(38)+acd104(39)
      acd104(38)=acd104(18)*acd104(38)
      acd104(34)=acd104(28)*acd104(34)
      acd104(33)=acd104(9)*acd104(33)
      acd104(33)=acd104(34)+acd104(33)
      acd104(33)=acd104(19)*acd104(33)
      brack=acd104(29)+acd104(30)+acd104(31)+acd104(32)+acd104(33)+acd104(35)+a&
      &cd104(36)+acd104(37)+acd104(38)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h4
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
      qshift = -k3+k2-k4
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
!---#[ subroutine reconstruct_d104:
   subroutine     reconstruct_d104(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_104:
      coeffs%coeffs_104%c0 = derivative(czip)
      coeffs%coeffs_104%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_104%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_104%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_104%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_104%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_104%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_104%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_104%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_104%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_104%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_104%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_104%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_104%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_104%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_104%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_104%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_104%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_104%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_104%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_104%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_104%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_104%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_104%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_104%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_104%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_104%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_104%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_104%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_104%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_104%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_104%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_104%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_104%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_104%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_104:
   end subroutine reconstruct_d104
!---#] subroutine reconstruct_d104:
end module     p0_dbaru_epnebbbarg_d104h4l1d
