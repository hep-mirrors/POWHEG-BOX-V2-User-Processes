module     p0_dbaru_epnebbbarg_d308h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d308h3l1d.f90
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
   public :: derivative , reconstruct_d308
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd308
      complex(ki) :: brack
      acd308(1)=dotproduct(k2,qshift)
      acd308(2)=abb308(44)
      acd308(3)=dotproduct(l6,qshift)
      acd308(4)=abb308(42)
      acd308(5)=dotproduct(k7,qshift)
      acd308(6)=abb308(41)
      acd308(7)=dotproduct(qshift,qshift)
      acd308(8)=abb308(10)
      acd308(9)=dotproduct(qshift,spvak1l6)
      acd308(10)=abb308(26)
      acd308(11)=dotproduct(qshift,spvak2l6)
      acd308(12)=abb308(12)
      acd308(13)=dotproduct(qshift,spvak2k7)
      acd308(14)=abb308(28)
      acd308(15)=dotproduct(qshift,spvak4l6)
      acd308(16)=abb308(52)
      acd308(17)=abb308(19)
      acd308(18)=abb308(23)
      acd308(19)=abb308(55)
      acd308(20)=abb308(36)
      acd308(21)=abb308(21)
      acd308(22)=abb308(64)
      acd308(23)=abb308(14)
      acd308(24)=abb308(13)
      acd308(25)=abb308(33)
      acd308(26)=abb308(27)
      acd308(27)=abb308(20)
      acd308(28)=abb308(18)
      acd308(29)=abb308(22)
      acd308(30)=abb308(35)
      acd308(31)=abb308(31)
      acd308(32)=dotproduct(qshift,spvak1k2)
      acd308(33)=dotproduct(qshift,spvak2l5)
      acd308(34)=abb308(24)
      acd308(35)=abb308(30)
      acd308(36)=dotproduct(qshift,spvak4k2)
      acd308(37)=abb308(25)
      acd308(38)=abb308(17)
      acd308(39)=dotproduct(qshift,spvak7k2)
      acd308(40)=abb308(15)
      acd308(41)=dotproduct(qshift,spvak7l6)
      acd308(42)=abb308(29)
      acd308(43)=abb308(11)
      acd308(44)=abb308(48)
      acd308(45)=abb308(16)
      acd308(46)=abb308(34)
      acd308(47)=-acd308(33)*acd308(37)
      acd308(47)=acd308(47)+acd308(38)
      acd308(47)=acd308(36)*acd308(47)
      acd308(48)=acd308(41)*acd308(42)
      acd308(49)=acd308(39)*acd308(40)
      acd308(50)=-acd308(33)*acd308(34)
      acd308(50)=acd308(35)+acd308(50)
      acd308(50)=acd308(32)*acd308(50)
      acd308(51)=acd308(15)*acd308(31)
      acd308(52)=acd308(9)*acd308(26)
      acd308(53)=acd308(3)*acd308(18)
      acd308(54)=-acd308(7)*acd308(24)
      acd308(55)=acd308(5)*acd308(21)
      acd308(56)=acd308(11)*acd308(28)
      acd308(57)=acd308(1)*acd308(14)
      acd308(58)=acd308(13)*acd308(30)
      acd308(47)=acd308(58)+acd308(57)+acd308(56)+acd308(55)+acd308(54)+acd308(&
      &53)+acd308(52)+acd308(51)+acd308(50)+acd308(49)-acd308(43)+acd308(48)+ac&
      &d308(47)
      acd308(47)=acd308(13)*acd308(47)
      acd308(48)=acd308(15)*acd308(16)
      acd308(49)=acd308(9)*acd308(10)
      acd308(50)=acd308(3)*acd308(4)
      acd308(51)=-acd308(7)*acd308(8)
      acd308(52)=acd308(5)*acd308(6)
      acd308(53)=acd308(11)*acd308(12)
      acd308(54)=acd308(1)*acd308(2)
      acd308(48)=acd308(54)+acd308(53)+acd308(52)+acd308(51)+acd308(50)+acd308(&
      &49)-acd308(17)+acd308(48)
      acd308(48)=acd308(1)*acd308(48)
      acd308(49)=-acd308(7)*acd308(23)
      acd308(50)=acd308(5)*acd308(20)
      acd308(49)=acd308(50)-acd308(29)+acd308(49)
      acd308(49)=acd308(11)*acd308(49)
      acd308(50)=-acd308(39)*acd308(45)
      acd308(51)=-acd308(15)*acd308(44)
      acd308(52)=-acd308(9)*acd308(27)
      acd308(53)=-acd308(3)*acd308(19)
      acd308(54)=acd308(7)*acd308(25)
      acd308(55)=-acd308(5)*acd308(22)
      brack=acd308(46)+acd308(47)+acd308(48)+acd308(49)+acd308(50)+acd308(51)+a&
      &cd308(52)+acd308(53)+acd308(54)+acd308(55)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd308
      complex(ki) :: brack
      acd308(1)=k2(iv1)
      acd308(2)=dotproduct(k2,qshift)
      acd308(3)=abb308(44)
      acd308(4)=dotproduct(l6,qshift)
      acd308(5)=abb308(42)
      acd308(6)=dotproduct(k7,qshift)
      acd308(7)=abb308(41)
      acd308(8)=dotproduct(qshift,qshift)
      acd308(9)=abb308(10)
      acd308(10)=dotproduct(qshift,spvak1l6)
      acd308(11)=abb308(26)
      acd308(12)=dotproduct(qshift,spvak2l6)
      acd308(13)=abb308(12)
      acd308(14)=dotproduct(qshift,spvak2k7)
      acd308(15)=abb308(28)
      acd308(16)=dotproduct(qshift,spvak4l6)
      acd308(17)=abb308(52)
      acd308(18)=abb308(19)
      acd308(19)=l6(iv1)
      acd308(20)=abb308(23)
      acd308(21)=abb308(55)
      acd308(22)=k7(iv1)
      acd308(23)=abb308(36)
      acd308(24)=abb308(21)
      acd308(25)=abb308(64)
      acd308(26)=qshift(iv1)
      acd308(27)=abb308(14)
      acd308(28)=abb308(13)
      acd308(29)=abb308(33)
      acd308(30)=spvak1l6(iv1)
      acd308(31)=abb308(27)
      acd308(32)=abb308(20)
      acd308(33)=spvak2l6(iv1)
      acd308(34)=abb308(18)
      acd308(35)=abb308(22)
      acd308(36)=spvak2k7(iv1)
      acd308(37)=abb308(35)
      acd308(38)=abb308(31)
      acd308(39)=dotproduct(qshift,spvak1k2)
      acd308(40)=dotproduct(qshift,spvak2l5)
      acd308(41)=abb308(24)
      acd308(42)=abb308(30)
      acd308(43)=dotproduct(qshift,spvak4k2)
      acd308(44)=abb308(25)
      acd308(45)=abb308(17)
      acd308(46)=dotproduct(qshift,spvak7k2)
      acd308(47)=abb308(15)
      acd308(48)=dotproduct(qshift,spvak7l6)
      acd308(49)=abb308(29)
      acd308(50)=abb308(11)
      acd308(51)=spvak4l6(iv1)
      acd308(52)=abb308(48)
      acd308(53)=spvak1k2(iv1)
      acd308(54)=spvak2l5(iv1)
      acd308(55)=spvak4k2(iv1)
      acd308(56)=spvak7k2(iv1)
      acd308(57)=abb308(16)
      acd308(58)=spvak7l6(iv1)
      acd308(59)=acd308(43)*acd308(44)
      acd308(60)=acd308(39)*acd308(41)
      acd308(59)=acd308(59)+acd308(60)
      acd308(60)=-acd308(54)*acd308(59)
      acd308(61)=-acd308(44)*acd308(55)
      acd308(62)=-acd308(41)*acd308(53)
      acd308(61)=acd308(61)+acd308(62)
      acd308(61)=acd308(40)*acd308(61)
      acd308(62)=acd308(49)*acd308(58)
      acd308(63)=acd308(47)*acd308(56)
      acd308(64)=acd308(45)*acd308(55)
      acd308(65)=acd308(42)*acd308(53)
      acd308(66)=acd308(51)*acd308(38)
      acd308(67)=acd308(30)*acd308(31)
      acd308(68)=acd308(19)*acd308(20)
      acd308(69)=2.0_ki*acd308(26)
      acd308(70)=-acd308(28)*acd308(69)
      acd308(71)=acd308(22)*acd308(24)
      acd308(72)=acd308(33)*acd308(34)
      acd308(73)=acd308(1)*acd308(15)
      acd308(74)=acd308(36)*acd308(37)
      acd308(60)=2.0_ki*acd308(74)+acd308(73)+acd308(72)+acd308(71)+acd308(70)+&
      &acd308(61)+acd308(68)+acd308(67)+acd308(66)+acd308(65)+acd308(64)+acd308&
      &(62)+acd308(63)+acd308(60)
      acd308(60)=acd308(14)*acd308(60)
      acd308(59)=-acd308(40)*acd308(59)
      acd308(61)=acd308(49)*acd308(48)
      acd308(62)=acd308(47)*acd308(46)
      acd308(63)=acd308(16)*acd308(38)
      acd308(64)=acd308(10)*acd308(31)
      acd308(65)=acd308(4)*acd308(20)
      acd308(66)=acd308(43)*acd308(45)
      acd308(67)=acd308(39)*acd308(42)
      acd308(68)=-acd308(8)*acd308(28)
      acd308(70)=acd308(6)*acd308(24)
      acd308(71)=acd308(12)*acd308(34)
      acd308(72)=acd308(2)*acd308(15)
      acd308(59)=acd308(72)+acd308(71)+acd308(59)+acd308(70)+acd308(68)+acd308(&
      &67)+acd308(66)+acd308(65)+acd308(64)+acd308(63)+acd308(62)-acd308(50)+ac&
      &d308(61)
      acd308(59)=acd308(36)*acd308(59)
      acd308(61)=acd308(16)*acd308(17)
      acd308(62)=acd308(10)*acd308(11)
      acd308(63)=acd308(4)*acd308(5)
      acd308(64)=-acd308(8)*acd308(9)
      acd308(65)=acd308(6)*acd308(7)
      acd308(66)=acd308(12)*acd308(13)
      acd308(67)=acd308(2)*acd308(3)
      acd308(61)=2.0_ki*acd308(67)+acd308(66)+acd308(65)+acd308(64)+acd308(63)+&
      &acd308(62)-acd308(18)+acd308(61)
      acd308(61)=acd308(1)*acd308(61)
      acd308(62)=acd308(51)*acd308(17)
      acd308(63)=acd308(30)*acd308(11)
      acd308(64)=acd308(19)*acd308(5)
      acd308(65)=-acd308(9)*acd308(69)
      acd308(66)=acd308(22)*acd308(7)
      acd308(67)=acd308(33)*acd308(13)
      acd308(62)=acd308(67)+acd308(66)+acd308(65)+acd308(64)+acd308(62)+acd308(&
      &63)
      acd308(62)=acd308(2)*acd308(62)
      acd308(63)=-acd308(27)*acd308(69)
      acd308(64)=acd308(22)*acd308(23)
      acd308(63)=acd308(63)+acd308(64)
      acd308(63)=acd308(12)*acd308(63)
      acd308(64)=-acd308(8)*acd308(27)
      acd308(65)=acd308(6)*acd308(23)
      acd308(64)=acd308(65)-acd308(35)+acd308(64)
      acd308(64)=acd308(33)*acd308(64)
      acd308(65)=-acd308(56)*acd308(57)
      acd308(66)=-acd308(51)*acd308(52)
      acd308(67)=-acd308(30)*acd308(32)
      acd308(68)=-acd308(19)*acd308(21)
      acd308(69)=acd308(29)*acd308(69)
      acd308(70)=-acd308(22)*acd308(25)
      brack=acd308(59)+acd308(60)+acd308(61)+acd308(62)+acd308(63)+acd308(64)+a&
      &cd308(65)+acd308(66)+acd308(67)+acd308(68)+acd308(69)+acd308(70)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(72) :: acd308
      complex(ki) :: brack
      acd308(1)=d(iv1,iv2)
      acd308(2)=dotproduct(k2,qshift)
      acd308(3)=abb308(10)
      acd308(4)=dotproduct(qshift,spvak2l6)
      acd308(5)=abb308(14)
      acd308(6)=dotproduct(qshift,spvak2k7)
      acd308(7)=abb308(13)
      acd308(8)=abb308(33)
      acd308(9)=k2(iv1)
      acd308(10)=k2(iv2)
      acd308(11)=abb308(44)
      acd308(12)=l6(iv2)
      acd308(13)=abb308(42)
      acd308(14)=k7(iv2)
      acd308(15)=abb308(41)
      acd308(16)=qshift(iv2)
      acd308(17)=spvak2l6(iv2)
      acd308(18)=abb308(12)
      acd308(19)=spvak2k7(iv2)
      acd308(20)=abb308(28)
      acd308(21)=spvak1l6(iv2)
      acd308(22)=abb308(26)
      acd308(23)=spvak4l6(iv2)
      acd308(24)=abb308(52)
      acd308(25)=l6(iv1)
      acd308(26)=k7(iv1)
      acd308(27)=qshift(iv1)
      acd308(28)=spvak2l6(iv1)
      acd308(29)=spvak2k7(iv1)
      acd308(30)=spvak1l6(iv1)
      acd308(31)=spvak4l6(iv1)
      acd308(32)=abb308(23)
      acd308(33)=abb308(36)
      acd308(34)=abb308(21)
      acd308(35)=abb308(18)
      acd308(36)=abb308(35)
      acd308(37)=abb308(27)
      acd308(38)=abb308(31)
      acd308(39)=spvak1k2(iv2)
      acd308(40)=dotproduct(qshift,spvak2l5)
      acd308(41)=abb308(24)
      acd308(42)=abb308(30)
      acd308(43)=spvak2l5(iv2)
      acd308(44)=dotproduct(qshift,spvak1k2)
      acd308(45)=dotproduct(qshift,spvak4k2)
      acd308(46)=abb308(25)
      acd308(47)=spvak4k2(iv2)
      acd308(48)=abb308(17)
      acd308(49)=spvak7k2(iv2)
      acd308(50)=abb308(15)
      acd308(51)=spvak7l6(iv2)
      acd308(52)=abb308(29)
      acd308(53)=spvak1k2(iv1)
      acd308(54)=spvak2l5(iv1)
      acd308(55)=spvak4k2(iv1)
      acd308(56)=spvak7k2(iv1)
      acd308(57)=spvak7l6(iv1)
      acd308(58)=-acd308(54)*acd308(45)
      acd308(59)=-acd308(40)*acd308(55)
      acd308(58)=acd308(58)+acd308(59)
      acd308(58)=acd308(46)*acd308(58)
      acd308(59)=-acd308(54)*acd308(44)
      acd308(60)=-acd308(40)*acd308(53)
      acd308(59)=acd308(59)+acd308(60)
      acd308(59)=acd308(41)*acd308(59)
      acd308(60)=acd308(52)*acd308(57)
      acd308(61)=acd308(50)*acd308(56)
      acd308(62)=acd308(31)*acd308(38)
      acd308(63)=acd308(30)*acd308(37)
      acd308(64)=acd308(25)*acd308(32)
      acd308(65)=acd308(55)*acd308(48)
      acd308(66)=acd308(53)*acd308(42)
      acd308(67)=acd308(26)*acd308(34)
      acd308(68)=2.0_ki*acd308(7)
      acd308(69)=-acd308(27)*acd308(68)
      acd308(70)=acd308(28)*acd308(35)
      acd308(71)=acd308(9)*acd308(20)
      acd308(72)=acd308(29)*acd308(36)
      acd308(58)=2.0_ki*acd308(72)+acd308(71)+acd308(59)+acd308(58)+acd308(70)+&
      &acd308(69)+acd308(67)+acd308(66)+acd308(65)+acd308(64)+acd308(63)+acd308&
      &(62)+acd308(60)+acd308(61)
      acd308(58)=acd308(19)*acd308(58)
      acd308(59)=-acd308(43)*acd308(45)
      acd308(60)=-acd308(40)*acd308(47)
      acd308(59)=acd308(59)+acd308(60)
      acd308(59)=acd308(46)*acd308(59)
      acd308(60)=-acd308(43)*acd308(44)
      acd308(61)=-acd308(40)*acd308(39)
      acd308(60)=acd308(60)+acd308(61)
      acd308(60)=acd308(41)*acd308(60)
      acd308(61)=acd308(52)*acd308(51)
      acd308(62)=acd308(50)*acd308(49)
      acd308(63)=acd308(23)*acd308(38)
      acd308(64)=acd308(21)*acd308(37)
      acd308(65)=acd308(12)*acd308(32)
      acd308(66)=acd308(47)*acd308(48)
      acd308(67)=acd308(39)*acd308(42)
      acd308(69)=acd308(14)*acd308(34)
      acd308(70)=-acd308(16)*acd308(68)
      acd308(71)=acd308(17)*acd308(35)
      acd308(72)=acd308(10)*acd308(20)
      acd308(59)=acd308(72)+acd308(60)+acd308(59)+acd308(71)+acd308(70)+acd308(&
      &69)+acd308(67)+acd308(66)+acd308(65)+acd308(64)+acd308(63)+acd308(61)+ac&
      &d308(62)
      acd308(59)=acd308(29)*acd308(59)
      acd308(60)=acd308(23)*acd308(24)
      acd308(61)=acd308(21)*acd308(22)
      acd308(62)=acd308(12)*acd308(13)
      acd308(63)=acd308(14)*acd308(15)
      acd308(64)=2.0_ki*acd308(16)
      acd308(65)=-acd308(3)*acd308(64)
      acd308(66)=acd308(17)*acd308(18)
      acd308(67)=acd308(10)*acd308(11)
      acd308(60)=2.0_ki*acd308(67)+acd308(66)+acd308(65)+acd308(63)+acd308(62)+&
      &acd308(60)+acd308(61)
      acd308(60)=acd308(9)*acd308(60)
      acd308(61)=acd308(24)*acd308(31)
      acd308(62)=acd308(22)*acd308(30)
      acd308(63)=acd308(13)*acd308(25)
      acd308(65)=acd308(26)*acd308(15)
      acd308(66)=2.0_ki*acd308(27)
      acd308(67)=-acd308(3)*acd308(66)
      acd308(69)=acd308(28)*acd308(18)
      acd308(61)=acd308(69)+acd308(67)+acd308(65)+acd308(63)+acd308(61)+acd308(&
      &62)
      acd308(61)=acd308(10)*acd308(61)
      acd308(62)=-acd308(54)*acd308(47)
      acd308(63)=-acd308(43)*acd308(55)
      acd308(62)=acd308(62)+acd308(63)
      acd308(62)=acd308(46)*acd308(62)
      acd308(63)=-acd308(54)*acd308(39)
      acd308(65)=-acd308(43)*acd308(53)
      acd308(63)=acd308(63)+acd308(65)
      acd308(63)=acd308(41)*acd308(63)
      acd308(65)=-acd308(1)*acd308(68)
      acd308(62)=acd308(63)+acd308(62)+acd308(65)
      acd308(62)=acd308(6)*acd308(62)
      acd308(63)=acd308(14)*acd308(33)
      acd308(64)=-acd308(5)*acd308(64)
      acd308(63)=acd308(63)+acd308(64)
      acd308(63)=acd308(28)*acd308(63)
      acd308(64)=acd308(26)*acd308(33)
      acd308(65)=-acd308(5)*acd308(66)
      acd308(64)=acd308(64)+acd308(65)
      acd308(64)=acd308(17)*acd308(64)
      acd308(65)=-acd308(5)*acd308(4)
      acd308(66)=-acd308(3)*acd308(2)
      acd308(65)=acd308(66)+acd308(8)+acd308(65)
      acd308(66)=2.0_ki*acd308(1)
      acd308(65)=acd308(65)*acd308(66)
      brack=acd308(58)+acd308(59)+acd308(60)+acd308(61)+acd308(62)+acd308(63)+a&
      &cd308(64)+acd308(65)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd308
      complex(ki) :: brack
      acd308(1)=d(iv1,iv2)
      acd308(2)=k2(iv3)
      acd308(3)=abb308(10)
      acd308(4)=spvak2l6(iv3)
      acd308(5)=abb308(14)
      acd308(6)=spvak2k7(iv3)
      acd308(7)=abb308(13)
      acd308(8)=d(iv1,iv3)
      acd308(9)=k2(iv2)
      acd308(10)=spvak2l6(iv2)
      acd308(11)=spvak2k7(iv2)
      acd308(12)=d(iv2,iv3)
      acd308(13)=k2(iv1)
      acd308(14)=spvak2l6(iv1)
      acd308(15)=spvak2k7(iv1)
      acd308(16)=spvak1k2(iv2)
      acd308(17)=spvak2l5(iv3)
      acd308(18)=abb308(24)
      acd308(19)=spvak1k2(iv3)
      acd308(20)=spvak2l5(iv2)
      acd308(21)=spvak4k2(iv3)
      acd308(22)=abb308(25)
      acd308(23)=spvak4k2(iv2)
      acd308(24)=spvak1k2(iv1)
      acd308(25)=spvak2l5(iv1)
      acd308(26)=spvak4k2(iv1)
      acd308(27)=acd308(17)*acd308(15)
      acd308(28)=acd308(25)*acd308(6)
      acd308(27)=acd308(27)+acd308(28)
      acd308(28)=-acd308(16)*acd308(27)
      acd308(29)=acd308(20)*acd308(15)
      acd308(30)=acd308(25)*acd308(11)
      acd308(29)=acd308(29)+acd308(30)
      acd308(30)=-acd308(19)*acd308(29)
      acd308(31)=acd308(17)*acd308(11)
      acd308(32)=acd308(20)*acd308(6)
      acd308(31)=acd308(31)+acd308(32)
      acd308(32)=-acd308(24)*acd308(31)
      acd308(28)=acd308(32)+acd308(30)+acd308(28)
      acd308(28)=acd308(18)*acd308(28)
      acd308(29)=-acd308(21)*acd308(29)
      acd308(27)=-acd308(23)*acd308(27)
      acd308(30)=-acd308(26)*acd308(31)
      acd308(27)=acd308(30)+acd308(27)+acd308(29)
      acd308(27)=acd308(22)*acd308(27)
      acd308(29)=-acd308(4)*acd308(1)
      acd308(30)=-acd308(10)*acd308(8)
      acd308(31)=-acd308(14)*acd308(12)
      acd308(29)=acd308(31)+acd308(30)+acd308(29)
      acd308(30)=2.0_ki*acd308(5)
      acd308(29)=acd308(30)*acd308(29)
      acd308(30)=-acd308(2)*acd308(1)
      acd308(31)=-acd308(9)*acd308(8)
      acd308(32)=-acd308(13)*acd308(12)
      acd308(30)=acd308(32)+acd308(31)+acd308(30)
      acd308(31)=2.0_ki*acd308(3)
      acd308(30)=acd308(31)*acd308(30)
      acd308(31)=-acd308(1)*acd308(6)
      acd308(32)=-acd308(8)*acd308(11)
      acd308(33)=-acd308(12)*acd308(15)
      acd308(31)=acd308(33)+acd308(31)+acd308(32)
      acd308(31)=acd308(7)*acd308(31)
      brack=acd308(27)+acd308(28)+acd308(29)+acd308(30)+2.0_ki*acd308(31)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd308h3
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
      qshift = -k7
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
!---#[ subroutine reconstruct_d308:
   subroutine     reconstruct_d308(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group20
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group20), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_308:
      coeffs%coeffs_308%c0 = derivative(czip)
      coeffs%coeffs_308%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_308%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_308%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_308%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_308%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_308%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_308%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_308%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_308%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_308%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_308%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_308%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_308%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_308%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_308%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_308%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_308%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_308%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_308%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_308%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_308%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_308%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_308%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_308%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_308%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_308%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_308%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_308%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_308%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_308%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_308%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_308%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_308%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_308%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_308:
   end subroutine reconstruct_d308
!---#] subroutine reconstruct_d308:
end module     p0_dbaru_epnebbbarg_d308h3l1d
