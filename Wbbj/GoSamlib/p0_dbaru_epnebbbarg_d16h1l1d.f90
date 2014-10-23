module     p0_dbaru_epnebbbarg_d16h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d16h1l1d.f90
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
   public :: derivative , reconstruct_d16
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd16h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd16
      complex(ki) :: brack
      acd16(1)=dotproduct(k2,qshift)
      acd16(2)=dotproduct(qshift,qshift)
      acd16(3)=abb16(27)
      acd16(4)=dotproduct(qshift,spvak1k2)
      acd16(5)=dotproduct(qshift,spvak4k3)
      acd16(6)=abb16(22)
      acd16(7)=dotproduct(qshift,spvak1k3)
      acd16(8)=abb16(11)
      acd16(9)=dotproduct(k3,qshift)
      acd16(10)=dotproduct(qshift,spval6k2)
      acd16(11)=abb16(37)
      acd16(12)=dotproduct(qshift,spval6l5)
      acd16(13)=abb16(19)
      acd16(14)=dotproduct(k4,qshift)
      acd16(15)=dotproduct(l5,qshift)
      acd16(16)=abb16(35)
      acd16(17)=abb16(20)
      acd16(18)=dotproduct(l6,qshift)
      acd16(19)=abb16(28)
      acd16(20)=abb16(36)
      acd16(21)=abb16(29)
      acd16(22)=dotproduct(qshift,spvak4k2)
      acd16(23)=abb16(15)
      acd16(24)=abb16(17)
      acd16(25)=abb16(10)
      acd16(26)=abb16(16)
      acd16(27)=abb16(14)
      acd16(28)=abb16(38)
      acd16(29)=dotproduct(qshift,spval5k2)
      acd16(30)=abb16(12)
      acd16(31)=abb16(21)
      acd16(32)=abb16(24)
      acd16(33)=abb16(23)
      acd16(34)=abb16(13)
      acd16(35)=abb16(18)
      acd16(36)=acd16(15)+acd16(18)
      acd16(37)=-acd16(16)*acd16(36)
      acd16(38)=-acd16(1)*acd16(6)
      acd16(38)=acd16(38)+acd16(26)
      acd16(38)=acd16(4)*acd16(38)
      acd16(39)=acd16(29)*acd16(30)
      acd16(40)=acd16(10)*acd16(27)
      acd16(41)=-acd16(2)*acd16(19)
      acd16(42)=-acd16(4)*acd16(25)
      acd16(42)=acd16(28)+acd16(42)
      acd16(42)=acd16(12)*acd16(42)
      acd16(37)=acd16(42)+acd16(41)+acd16(40)+acd16(39)+acd16(38)+acd16(37)
      acd16(37)=acd16(5)*acd16(37)
      acd16(38)=-acd16(22)*acd16(23)
      acd16(39)=-acd16(1)*acd16(3)
      acd16(40)=-acd16(10)*acd16(20)
      acd16(38)=acd16(40)+acd16(39)+acd16(24)+acd16(38)
      acd16(38)=acd16(2)*acd16(38)
      acd16(39)=acd16(9)+acd16(14)
      acd16(40)=-acd16(13)*acd16(39)
      acd16(41)=acd16(7)*acd16(31)
      acd16(42)=-acd16(2)*acd16(21)
      acd16(40)=acd16(42)+acd16(41)-acd16(34)+acd16(40)
      acd16(40)=acd16(12)*acd16(40)
      acd16(36)=acd16(17)*acd16(36)
      acd16(41)=acd16(1)*acd16(8)
      acd16(41)=acd16(41)-acd16(32)
      acd16(41)=acd16(7)*acd16(41)
      acd16(42)=-acd16(29)*acd16(35)
      acd16(39)=acd16(11)*acd16(39)
      acd16(39)=-acd16(33)+acd16(39)
      acd16(39)=acd16(10)*acd16(39)
      brack=acd16(36)+acd16(37)+acd16(38)+acd16(39)+acd16(40)+acd16(41)+acd16(4&
      &2)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd16h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd16
      complex(ki) :: brack
      acd16(1)=k2(iv1)
      acd16(2)=dotproduct(qshift,qshift)
      acd16(3)=abb16(27)
      acd16(4)=dotproduct(qshift,spvak1k2)
      acd16(5)=dotproduct(qshift,spvak4k3)
      acd16(6)=abb16(22)
      acd16(7)=dotproduct(qshift,spvak1k3)
      acd16(8)=abb16(11)
      acd16(9)=k3(iv1)
      acd16(10)=dotproduct(qshift,spval6k2)
      acd16(11)=abb16(37)
      acd16(12)=dotproduct(qshift,spval6l5)
      acd16(13)=abb16(19)
      acd16(14)=k4(iv1)
      acd16(15)=l5(iv1)
      acd16(16)=abb16(35)
      acd16(17)=abb16(20)
      acd16(18)=l6(iv1)
      acd16(19)=qshift(iv1)
      acd16(20)=dotproduct(k2,qshift)
      acd16(21)=abb16(28)
      acd16(22)=abb16(36)
      acd16(23)=abb16(29)
      acd16(24)=dotproduct(qshift,spvak4k2)
      acd16(25)=abb16(15)
      acd16(26)=abb16(17)
      acd16(27)=spvak1k2(iv1)
      acd16(28)=abb16(10)
      acd16(29)=abb16(16)
      acd16(30)=spvak4k3(iv1)
      acd16(31)=dotproduct(l5,qshift)
      acd16(32)=dotproduct(l6,qshift)
      acd16(33)=abb16(14)
      acd16(34)=abb16(38)
      acd16(35)=dotproduct(qshift,spval5k2)
      acd16(36)=abb16(12)
      acd16(37)=spvak1k3(iv1)
      acd16(38)=abb16(21)
      acd16(39)=abb16(24)
      acd16(40)=spval6k2(iv1)
      acd16(41)=dotproduct(k3,qshift)
      acd16(42)=dotproduct(k4,qshift)
      acd16(43)=abb16(23)
      acd16(44)=spval6l5(iv1)
      acd16(45)=abb16(13)
      acd16(46)=spvak4k2(iv1)
      acd16(47)=spval5k2(iv1)
      acd16(48)=abb16(18)
      acd16(49)=acd16(20)*acd16(6)
      acd16(49)=acd16(49)-acd16(29)
      acd16(50)=-acd16(12)*acd16(28)
      acd16(50)=acd16(50)-acd16(49)
      acd16(50)=acd16(27)*acd16(50)
      acd16(51)=acd16(36)*acd16(47)
      acd16(52)=acd16(15)+acd16(18)
      acd16(53)=-acd16(16)*acd16(52)
      acd16(54)=acd16(40)*acd16(33)
      acd16(55)=-acd16(4)*acd16(1)*acd16(6)
      acd16(56)=2.0_ki*acd16(19)
      acd16(57)=-acd16(21)*acd16(56)
      acd16(58)=acd16(4)*acd16(28)
      acd16(58)=acd16(58)-acd16(34)
      acd16(59)=-acd16(44)*acd16(58)
      acd16(50)=acd16(59)+acd16(57)+acd16(55)+acd16(54)+acd16(53)+acd16(51)+acd&
      &16(50)
      acd16(50)=acd16(5)*acd16(50)
      acd16(51)=acd16(36)*acd16(35)
      acd16(53)=-acd16(32)-acd16(31)
      acd16(53)=acd16(16)*acd16(53)
      acd16(54)=acd16(10)*acd16(33)
      acd16(49)=-acd16(4)*acd16(49)
      acd16(55)=-acd16(2)*acd16(21)
      acd16(57)=-acd16(12)*acd16(58)
      acd16(49)=acd16(57)+acd16(55)+acd16(49)+acd16(54)+acd16(51)+acd16(53)
      acd16(49)=acd16(30)*acd16(49)
      acd16(51)=-acd16(25)*acd16(46)
      acd16(53)=-acd16(1)*acd16(3)
      acd16(54)=-acd16(40)*acd16(22)
      acd16(51)=acd16(54)+acd16(51)+acd16(53)
      acd16(51)=acd16(2)*acd16(51)
      acd16(53)=-acd16(25)*acd16(24)
      acd16(54)=-acd16(20)*acd16(3)
      acd16(55)=-acd16(10)*acd16(22)
      acd16(53)=acd16(55)+acd16(54)+acd16(26)+acd16(53)
      acd16(53)=acd16(53)*acd16(56)
      acd16(54)=acd16(7)*acd16(38)
      acd16(55)=acd16(41)+acd16(42)
      acd16(57)=-acd16(13)*acd16(55)
      acd16(58)=-acd16(2)*acd16(23)
      acd16(54)=acd16(58)+acd16(57)-acd16(45)+acd16(54)
      acd16(54)=acd16(44)*acd16(54)
      acd16(57)=acd16(37)*acd16(38)
      acd16(58)=acd16(9)+acd16(14)
      acd16(59)=-acd16(13)*acd16(58)
      acd16(56)=-acd16(23)*acd16(56)
      acd16(56)=acd16(56)+acd16(57)+acd16(59)
      acd16(56)=acd16(12)*acd16(56)
      acd16(52)=acd16(17)*acd16(52)
      acd16(57)=acd16(20)*acd16(8)
      acd16(57)=acd16(57)-acd16(39)
      acd16(57)=acd16(37)*acd16(57)
      acd16(59)=-acd16(47)*acd16(48)
      acd16(60)=acd16(1)*acd16(7)*acd16(8)
      acd16(58)=acd16(10)*acd16(11)*acd16(58)
      acd16(55)=acd16(11)*acd16(55)
      acd16(55)=-acd16(43)+acd16(55)
      acd16(55)=acd16(40)*acd16(55)
      brack=acd16(49)+acd16(50)+acd16(51)+acd16(52)+acd16(53)+acd16(54)+acd16(5&
      &5)+acd16(56)+acd16(57)+acd16(58)+acd16(59)+acd16(60)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd16h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd16
      complex(ki) :: brack
      acd16(1)=d(iv1,iv2)
      acd16(2)=dotproduct(k2,qshift)
      acd16(3)=abb16(27)
      acd16(4)=dotproduct(qshift,spvak4k2)
      acd16(5)=abb16(15)
      acd16(6)=dotproduct(qshift,spvak4k3)
      acd16(7)=abb16(28)
      acd16(8)=dotproduct(qshift,spval6k2)
      acd16(9)=abb16(36)
      acd16(10)=dotproduct(qshift,spval6l5)
      acd16(11)=abb16(29)
      acd16(12)=abb16(17)
      acd16(13)=k2(iv1)
      acd16(14)=qshift(iv2)
      acd16(15)=spvak4k3(iv2)
      acd16(16)=dotproduct(qshift,spvak1k2)
      acd16(17)=abb16(22)
      acd16(18)=spvak1k2(iv2)
      acd16(19)=spvak1k3(iv2)
      acd16(20)=abb16(11)
      acd16(21)=k2(iv2)
      acd16(22)=qshift(iv1)
      acd16(23)=spvak4k3(iv1)
      acd16(24)=spvak1k2(iv1)
      acd16(25)=spvak1k3(iv1)
      acd16(26)=k3(iv1)
      acd16(27)=spval6k2(iv2)
      acd16(28)=abb16(37)
      acd16(29)=spval6l5(iv2)
      acd16(30)=abb16(19)
      acd16(31)=k3(iv2)
      acd16(32)=spval6k2(iv1)
      acd16(33)=spval6l5(iv1)
      acd16(34)=k4(iv1)
      acd16(35)=k4(iv2)
      acd16(36)=l5(iv1)
      acd16(37)=abb16(35)
      acd16(38)=l5(iv2)
      acd16(39)=l6(iv1)
      acd16(40)=l6(iv2)
      acd16(41)=spvak4k2(iv2)
      acd16(42)=spvak4k2(iv1)
      acd16(43)=abb16(14)
      acd16(44)=abb16(10)
      acd16(45)=abb16(38)
      acd16(46)=abb16(16)
      acd16(47)=spval5k2(iv2)
      acd16(48)=abb16(12)
      acd16(49)=spval5k2(iv1)
      acd16(50)=abb16(21)
      acd16(51)=-acd16(16)*acd16(21)
      acd16(52)=-acd16(18)*acd16(2)
      acd16(51)=acd16(51)+acd16(52)
      acd16(51)=acd16(17)*acd16(51)
      acd16(52)=acd16(44)*acd16(10)
      acd16(52)=acd16(52)-acd16(46)
      acd16(53)=-acd16(18)*acd16(52)
      acd16(54)=acd16(48)*acd16(47)
      acd16(55)=-acd16(40)-acd16(38)
      acd16(55)=acd16(37)*acd16(55)
      acd16(56)=acd16(27)*acd16(43)
      acd16(57)=2.0_ki*acd16(14)
      acd16(58)=-acd16(7)*acd16(57)
      acd16(59)=acd16(44)*acd16(16)
      acd16(59)=acd16(59)-acd16(45)
      acd16(60)=-acd16(29)*acd16(59)
      acd16(51)=acd16(60)+acd16(51)+acd16(58)+acd16(56)+acd16(54)+acd16(55)+acd&
      &16(53)
      acd16(51)=acd16(23)*acd16(51)
      acd16(53)=-acd16(13)*acd16(16)
      acd16(54)=-acd16(24)*acd16(2)
      acd16(53)=acd16(53)+acd16(54)
      acd16(53)=acd16(17)*acd16(53)
      acd16(52)=-acd16(24)*acd16(52)
      acd16(54)=acd16(48)*acd16(49)
      acd16(55)=-acd16(39)-acd16(36)
      acd16(55)=acd16(37)*acd16(55)
      acd16(56)=acd16(32)*acd16(43)
      acd16(58)=2.0_ki*acd16(22)
      acd16(60)=-acd16(7)*acd16(58)
      acd16(59)=-acd16(33)*acd16(59)
      acd16(52)=acd16(59)+acd16(53)+acd16(60)+acd16(56)+acd16(54)+acd16(55)+acd&
      &16(52)
      acd16(52)=acd16(15)*acd16(52)
      acd16(53)=-acd16(10)*acd16(11)
      acd16(54)=-acd16(9)*acd16(8)
      acd16(55)=-acd16(5)*acd16(4)
      acd16(56)=-acd16(2)*acd16(3)
      acd16(59)=-acd16(6)*acd16(7)
      acd16(53)=acd16(59)+acd16(56)+acd16(55)+acd16(54)+acd16(12)+acd16(53)
      acd16(53)=acd16(1)*acd16(53)
      acd16(54)=acd16(19)*acd16(50)
      acd16(55)=acd16(31)+acd16(35)
      acd16(56)=-acd16(30)*acd16(55)
      acd16(59)=-acd16(11)*acd16(57)
      acd16(60)=acd16(44)*acd16(6)
      acd16(61)=-acd16(18)*acd16(60)
      acd16(54)=acd16(61)+acd16(59)+acd16(54)+acd16(56)
      acd16(54)=acd16(33)*acd16(54)
      acd16(56)=acd16(25)*acd16(50)
      acd16(59)=acd16(26)+acd16(34)
      acd16(61)=-acd16(30)*acd16(59)
      acd16(62)=-acd16(11)*acd16(58)
      acd16(60)=-acd16(24)*acd16(60)
      acd16(56)=acd16(60)+acd16(62)+acd16(56)+acd16(61)
      acd16(56)=acd16(29)*acd16(56)
      acd16(60)=-acd16(5)*acd16(41)
      acd16(61)=-acd16(27)*acd16(9)
      acd16(62)=-acd16(21)*acd16(3)
      acd16(60)=acd16(62)+acd16(60)+acd16(61)
      acd16(58)=acd16(60)*acd16(58)
      acd16(60)=-acd16(5)*acd16(42)
      acd16(61)=-acd16(32)*acd16(9)
      acd16(62)=-acd16(13)*acd16(3)
      acd16(60)=acd16(62)+acd16(60)+acd16(61)
      acd16(57)=acd16(60)*acd16(57)
      acd16(60)=acd16(21)*acd16(25)
      acd16(61)=acd16(13)*acd16(19)
      acd16(60)=acd16(61)+acd16(60)
      acd16(60)=acd16(20)*acd16(60)
      acd16(55)=acd16(32)*acd16(55)
      acd16(59)=acd16(27)*acd16(59)
      acd16(55)=acd16(55)+acd16(59)
      acd16(55)=acd16(28)*acd16(55)
      acd16(59)=-acd16(24)*acd16(21)
      acd16(61)=-acd16(18)*acd16(13)
      acd16(59)=acd16(59)+acd16(61)
      acd16(59)=acd16(17)*acd16(6)*acd16(59)
      brack=acd16(51)+acd16(52)+2.0_ki*acd16(53)+acd16(54)+acd16(55)+acd16(56)+&
      &acd16(57)+acd16(58)+acd16(59)+acd16(60)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd16h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd16
      complex(ki) :: brack
      acd16(1)=d(iv1,iv2)
      acd16(2)=k2(iv3)
      acd16(3)=abb16(27)
      acd16(4)=spvak4k2(iv3)
      acd16(5)=abb16(15)
      acd16(6)=spvak4k3(iv3)
      acd16(7)=abb16(28)
      acd16(8)=spval6k2(iv3)
      acd16(9)=abb16(36)
      acd16(10)=spval6l5(iv3)
      acd16(11)=abb16(29)
      acd16(12)=d(iv1,iv3)
      acd16(13)=k2(iv2)
      acd16(14)=spvak4k2(iv2)
      acd16(15)=spvak4k3(iv2)
      acd16(16)=spval6k2(iv2)
      acd16(17)=spval6l5(iv2)
      acd16(18)=d(iv2,iv3)
      acd16(19)=k2(iv1)
      acd16(20)=spvak4k2(iv1)
      acd16(21)=spvak4k3(iv1)
      acd16(22)=spval6k2(iv1)
      acd16(23)=spval6l5(iv1)
      acd16(24)=spvak1k2(iv3)
      acd16(25)=abb16(22)
      acd16(26)=spvak1k2(iv2)
      acd16(27)=spvak1k2(iv1)
      acd16(28)=abb16(10)
      acd16(29)=-acd16(3)*acd16(2)
      acd16(30)=-acd16(11)*acd16(10)
      acd16(31)=-acd16(4)*acd16(5)
      acd16(32)=-acd16(8)*acd16(9)
      acd16(29)=acd16(32)+acd16(31)+acd16(30)+acd16(29)
      acd16(30)=2.0_ki*acd16(1)
      acd16(29)=acd16(30)*acd16(29)
      acd16(30)=-acd16(2)*acd16(25)
      acd16(31)=-acd16(10)*acd16(28)
      acd16(30)=acd16(31)+acd16(30)
      acd16(31)=acd16(26)*acd16(21)
      acd16(32)=acd16(27)*acd16(15)
      acd16(31)=acd16(31)+acd16(32)
      acd16(30)=acd16(31)*acd16(30)
      acd16(31)=-acd16(6)*acd16(1)
      acd16(32)=-acd16(15)*acd16(12)
      acd16(33)=-acd16(21)*acd16(18)
      acd16(31)=acd16(33)+acd16(31)+acd16(32)
      acd16(31)=acd16(7)*acd16(31)
      acd16(32)=-acd16(20)*acd16(5)
      acd16(33)=-acd16(22)*acd16(9)
      acd16(32)=acd16(33)+acd16(32)
      acd16(33)=2.0_ki*acd16(18)
      acd16(32)=acd16(33)*acd16(32)
      acd16(34)=-acd16(14)*acd16(5)
      acd16(35)=-acd16(16)*acd16(9)
      acd16(34)=acd16(35)+acd16(34)
      acd16(35)=2.0_ki*acd16(12)
      acd16(34)=acd16(35)*acd16(34)
      acd16(36)=acd16(24)*acd16(21)
      acd16(37)=acd16(27)*acd16(6)
      acd16(36)=acd16(36)+acd16(37)
      acd16(37)=-acd16(25)*acd16(36)
      acd16(38)=-acd16(3)*acd16(35)
      acd16(37)=acd16(38)+acd16(37)
      acd16(37)=acd16(13)*acd16(37)
      acd16(36)=-acd16(28)*acd16(36)
      acd16(35)=-acd16(11)*acd16(35)
      acd16(35)=acd16(35)+acd16(36)
      acd16(35)=acd16(17)*acd16(35)
      acd16(36)=acd16(24)*acd16(15)
      acd16(38)=acd16(26)*acd16(6)
      acd16(36)=acd16(36)+acd16(38)
      acd16(38)=-acd16(25)*acd16(36)
      acd16(39)=-acd16(3)*acd16(33)
      acd16(38)=acd16(39)+acd16(38)
      acd16(38)=acd16(19)*acd16(38)
      acd16(36)=-acd16(28)*acd16(36)
      acd16(33)=-acd16(11)*acd16(33)
      acd16(33)=acd16(33)+acd16(36)
      acd16(33)=acd16(23)*acd16(33)
      brack=acd16(29)+acd16(30)+2.0_ki*acd16(31)+acd16(32)+acd16(33)+acd16(34)+&
      &acd16(35)+acd16(37)+acd16(38)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd16h1
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d16:
   subroutine     reconstruct_d16(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_16:
      coeffs%coeffs_16%c0 = derivative(czip)
      coeffs%coeffs_16%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_16%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_16%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_16%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_16%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_16%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_16%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_16%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_16%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_16%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_16%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_16%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_16%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_16%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_16%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_16%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_16%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_16%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_16%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_16%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_16%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_16%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_16%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_16%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_16%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_16%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_16%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_16%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_16%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_16%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_16%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_16%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_16%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_16%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_16:
   end subroutine reconstruct_d16
!---#] subroutine reconstruct_d16:
end module     p0_dbaru_epnebbbarg_d16h1l1d
