module     p0_dbaru_epnebbbarg_d306h5l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d306h5l1d.f90
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
   public :: derivative , reconstruct_d306
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd306h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd306
      complex(ki) :: brack
      acd306(1)=dotproduct(k2,qshift)
      acd306(2)=dotproduct(qshift,spvak1k2)
      acd306(3)=dotproduct(qshift,spvak7k2)
      acd306(4)=abb306(16)
      acd306(5)=abb306(31)
      acd306(6)=dotproduct(qshift,spvak4k2)
      acd306(7)=abb306(29)
      acd306(8)=abb306(15)
      acd306(9)=abb306(28)
      acd306(10)=dotproduct(qshift,spval6k2)
      acd306(11)=abb306(24)
      acd306(12)=abb306(18)
      acd306(13)=dotproduct(l5,qshift)
      acd306(14)=abb306(20)
      acd306(15)=dotproduct(k7,qshift)
      acd306(16)=dotproduct(qshift,qshift)
      acd306(17)=abb306(30)
      acd306(18)=abb306(26)
      acd306(19)=abb306(21)
      acd306(20)=abb306(13)
      acd306(21)=dotproduct(qshift,spval6l5)
      acd306(22)=abb306(10)
      acd306(23)=abb306(9)
      acd306(24)=abb306(14)
      acd306(25)=abb306(11)
      acd306(26)=abb306(19)
      acd306(27)=dotproduct(qshift,spvak1l5)
      acd306(28)=dotproduct(qshift,spvak4l5)
      acd306(29)=abb306(25)
      acd306(30)=abb306(12)
      acd306(31)=abb306(27)
      acd306(32)=abb306(22)
      acd306(33)=abb306(17)
      acd306(34)=acd306(27)*acd306(22)
      acd306(35)=acd306(28)*acd306(25)
      acd306(34)=acd306(29)+acd306(35)+acd306(34)
      acd306(34)=acd306(34)*acd306(10)
      acd306(35)=-acd306(25)*acd306(21)
      acd306(36)=-acd306(7)*acd306(1)
      acd306(35)=acd306(26)+acd306(36)+acd306(35)
      acd306(35)=acd306(35)*acd306(6)
      acd306(36)=-acd306(22)*acd306(21)
      acd306(37)=-acd306(4)*acd306(1)
      acd306(36)=acd306(23)+acd306(37)+acd306(36)
      acd306(36)=acd306(36)*acd306(2)
      acd306(37)=acd306(8)*acd306(1)
      acd306(38)=acd306(14)*acd306(13)
      acd306(34)=acd306(37)+acd306(36)+acd306(35)+acd306(34)-acd306(30)+acd306(&
      &38)
      acd306(34)=acd306(3)*acd306(34)
      acd306(35)=-acd306(5)*acd306(2)
      acd306(36)=-acd306(9)*acd306(6)
      acd306(37)=acd306(11)*acd306(10)
      acd306(35)=acd306(12)+acd306(37)+acd306(35)+acd306(36)
      acd306(36)=acd306(15)+acd306(1)
      acd306(35)=acd306(36)*acd306(35)
      acd306(36)=acd306(17)*acd306(2)
      acd306(37)=acd306(18)*acd306(6)
      acd306(38)=-acd306(19)*acd306(10)
      acd306(36)=-acd306(20)+acd306(38)+acd306(37)+acd306(36)
      acd306(36)=acd306(16)*acd306(36)
      acd306(37)=-acd306(24)*acd306(2)
      acd306(38)=-acd306(31)*acd306(6)
      acd306(39)=-acd306(32)*acd306(10)
      brack=acd306(33)+acd306(34)+acd306(35)+acd306(36)+acd306(37)+acd306(38)+a&
      &cd306(39)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd306h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd306
      complex(ki) :: brack
      acd306(1)=k2(iv1)
      acd306(2)=dotproduct(qshift,spvak1k2)
      acd306(3)=dotproduct(qshift,spvak7k2)
      acd306(4)=abb306(16)
      acd306(5)=abb306(31)
      acd306(6)=dotproduct(qshift,spvak4k2)
      acd306(7)=abb306(29)
      acd306(8)=abb306(15)
      acd306(9)=abb306(28)
      acd306(10)=dotproduct(qshift,spval6k2)
      acd306(11)=abb306(24)
      acd306(12)=abb306(18)
      acd306(13)=l5(iv1)
      acd306(14)=abb306(20)
      acd306(15)=k7(iv1)
      acd306(16)=qshift(iv1)
      acd306(17)=abb306(30)
      acd306(18)=abb306(26)
      acd306(19)=abb306(21)
      acd306(20)=abb306(13)
      acd306(21)=spvak1k2(iv1)
      acd306(22)=dotproduct(k2,qshift)
      acd306(23)=dotproduct(k7,qshift)
      acd306(24)=dotproduct(qshift,qshift)
      acd306(25)=dotproduct(qshift,spval6l5)
      acd306(26)=abb306(10)
      acd306(27)=abb306(9)
      acd306(28)=abb306(14)
      acd306(29)=spvak7k2(iv1)
      acd306(30)=dotproduct(l5,qshift)
      acd306(31)=abb306(11)
      acd306(32)=abb306(19)
      acd306(33)=dotproduct(qshift,spvak1l5)
      acd306(34)=dotproduct(qshift,spvak4l5)
      acd306(35)=abb306(25)
      acd306(36)=abb306(12)
      acd306(37)=spvak4k2(iv1)
      acd306(38)=abb306(27)
      acd306(39)=spval6k2(iv1)
      acd306(40)=abb306(22)
      acd306(41)=spval6l5(iv1)
      acd306(42)=spvak1l5(iv1)
      acd306(43)=spvak4l5(iv1)
      acd306(44)=acd306(31)*acd306(34)
      acd306(45)=acd306(26)*acd306(33)
      acd306(44)=acd306(35)+acd306(44)+acd306(45)
      acd306(45)=acd306(39)*acd306(44)
      acd306(46)=-acd306(37)*acd306(7)
      acd306(47)=-acd306(21)*acd306(4)
      acd306(46)=acd306(46)+acd306(47)
      acd306(46)=acd306(22)*acd306(46)
      acd306(47)=acd306(31)*acd306(43)
      acd306(48)=acd306(26)*acd306(42)
      acd306(47)=acd306(47)+acd306(48)
      acd306(47)=acd306(10)*acd306(47)
      acd306(48)=-acd306(31)*acd306(41)
      acd306(49)=-acd306(1)*acd306(7)
      acd306(48)=acd306(48)+acd306(49)
      acd306(48)=acd306(6)*acd306(48)
      acd306(49)=-acd306(26)*acd306(41)
      acd306(50)=-acd306(1)*acd306(4)
      acd306(49)=acd306(49)+acd306(50)
      acd306(49)=acd306(2)*acd306(49)
      acd306(50)=acd306(14)*acd306(13)
      acd306(51)=acd306(31)*acd306(25)
      acd306(51)=acd306(51)-acd306(32)
      acd306(52)=-acd306(37)*acd306(51)
      acd306(53)=acd306(26)*acd306(25)
      acd306(53)=acd306(53)-acd306(27)
      acd306(54)=-acd306(21)*acd306(53)
      acd306(55)=acd306(1)*acd306(8)
      acd306(45)=acd306(49)+acd306(48)+acd306(47)+acd306(46)+acd306(55)+acd306(&
      &54)+acd306(52)+acd306(50)+acd306(45)
      acd306(45)=acd306(3)*acd306(45)
      acd306(44)=acd306(10)*acd306(44)
      acd306(46)=-acd306(22)*acd306(7)
      acd306(46)=acd306(46)-acd306(51)
      acd306(46)=acd306(6)*acd306(46)
      acd306(47)=-acd306(22)*acd306(4)
      acd306(47)=acd306(47)-acd306(53)
      acd306(47)=acd306(2)*acd306(47)
      acd306(48)=acd306(14)*acd306(30)
      acd306(49)=acd306(22)*acd306(8)
      acd306(44)=acd306(47)+acd306(46)+acd306(44)+acd306(49)-acd306(36)+acd306(&
      &48)
      acd306(44)=acd306(29)*acd306(44)
      acd306(46)=acd306(39)*acd306(11)
      acd306(47)=-acd306(37)*acd306(9)
      acd306(48)=-acd306(21)*acd306(5)
      acd306(46)=acd306(48)+acd306(46)+acd306(47)
      acd306(46)=acd306(22)*acd306(46)
      acd306(47)=-acd306(24)*acd306(19)
      acd306(48)=acd306(11)*acd306(23)
      acd306(47)=acd306(48)-acd306(40)+acd306(47)
      acd306(47)=acd306(39)*acd306(47)
      acd306(48)=acd306(24)*acd306(18)
      acd306(49)=-acd306(9)*acd306(23)
      acd306(48)=acd306(49)-acd306(38)+acd306(48)
      acd306(48)=acd306(37)*acd306(48)
      acd306(49)=acd306(24)*acd306(17)
      acd306(50)=-acd306(5)*acd306(23)
      acd306(49)=acd306(50)-acd306(28)+acd306(49)
      acd306(49)=acd306(21)*acd306(49)
      acd306(50)=acd306(1)+acd306(15)
      acd306(51)=acd306(11)*acd306(50)
      acd306(52)=2.0_ki*acd306(16)
      acd306(53)=-acd306(19)*acd306(52)
      acd306(51)=acd306(53)+acd306(51)
      acd306(51)=acd306(10)*acd306(51)
      acd306(53)=-acd306(9)*acd306(50)
      acd306(54)=acd306(18)*acd306(52)
      acd306(53)=acd306(54)+acd306(53)
      acd306(53)=acd306(6)*acd306(53)
      acd306(54)=-acd306(5)*acd306(50)
      acd306(55)=acd306(17)*acd306(52)
      acd306(54)=acd306(55)+acd306(54)
      acd306(54)=acd306(2)*acd306(54)
      acd306(50)=acd306(12)*acd306(50)
      acd306(52)=-acd306(20)*acd306(52)
      brack=acd306(44)+acd306(45)+acd306(46)+acd306(47)+acd306(48)+acd306(49)+a&
      &cd306(50)+acd306(51)+acd306(52)+acd306(53)+acd306(54)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd306h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd306
      complex(ki) :: brack
      acd306(1)=d(iv1,iv2)
      acd306(2)=dotproduct(qshift,spvak1k2)
      acd306(3)=abb306(30)
      acd306(4)=dotproduct(qshift,spvak4k2)
      acd306(5)=abb306(26)
      acd306(6)=dotproduct(qshift,spval6k2)
      acd306(7)=abb306(21)
      acd306(8)=abb306(13)
      acd306(9)=k2(iv1)
      acd306(10)=spvak1k2(iv2)
      acd306(11)=dotproduct(qshift,spvak7k2)
      acd306(12)=abb306(16)
      acd306(13)=abb306(31)
      acd306(14)=spvak4k2(iv2)
      acd306(15)=abb306(29)
      acd306(16)=abb306(28)
      acd306(17)=spval6k2(iv2)
      acd306(18)=abb306(24)
      acd306(19)=spvak7k2(iv2)
      acd306(20)=abb306(15)
      acd306(21)=k2(iv2)
      acd306(22)=spvak1k2(iv1)
      acd306(23)=spvak4k2(iv1)
      acd306(24)=spval6k2(iv1)
      acd306(25)=spvak7k2(iv1)
      acd306(26)=l5(iv1)
      acd306(27)=abb306(20)
      acd306(28)=l5(iv2)
      acd306(29)=k7(iv1)
      acd306(30)=k7(iv2)
      acd306(31)=qshift(iv1)
      acd306(32)=qshift(iv2)
      acd306(33)=dotproduct(k2,qshift)
      acd306(34)=dotproduct(qshift,spval6l5)
      acd306(35)=abb306(10)
      acd306(36)=abb306(9)
      acd306(37)=spval6l5(iv2)
      acd306(38)=spval6l5(iv1)
      acd306(39)=abb306(11)
      acd306(40)=abb306(19)
      acd306(41)=dotproduct(qshift,spvak1l5)
      acd306(42)=dotproduct(qshift,spvak4l5)
      acd306(43)=abb306(25)
      acd306(44)=spvak1l5(iv2)
      acd306(45)=spvak4l5(iv2)
      acd306(46)=spvak1l5(iv1)
      acd306(47)=spvak4l5(iv1)
      acd306(48)=acd306(6)*acd306(45)
      acd306(49)=-acd306(4)*acd306(37)
      acd306(50)=acd306(17)*acd306(42)
      acd306(51)=-acd306(14)*acd306(34)
      acd306(48)=acd306(51)+acd306(50)+acd306(48)+acd306(49)
      acd306(48)=acd306(39)*acd306(48)
      acd306(49)=acd306(6)*acd306(44)
      acd306(50)=-acd306(2)*acd306(37)
      acd306(51)=acd306(17)*acd306(41)
      acd306(52)=-acd306(10)*acd306(34)
      acd306(49)=acd306(52)+acd306(51)+acd306(49)+acd306(50)
      acd306(49)=acd306(35)*acd306(49)
      acd306(50)=acd306(15)*acd306(4)
      acd306(51)=acd306(12)*acd306(2)
      acd306(50)=-acd306(20)+acd306(50)+acd306(51)
      acd306(51)=-acd306(21)*acd306(50)
      acd306(52)=acd306(27)*acd306(28)
      acd306(53)=acd306(17)*acd306(43)
      acd306(54)=acd306(15)*acd306(33)
      acd306(54)=acd306(54)-acd306(40)
      acd306(55)=-acd306(14)*acd306(54)
      acd306(56)=acd306(12)*acd306(33)
      acd306(56)=acd306(56)-acd306(36)
      acd306(57)=-acd306(10)*acd306(56)
      acd306(48)=acd306(49)+acd306(48)+acd306(57)+acd306(55)+acd306(53)+acd306(&
      &52)+acd306(51)
      acd306(48)=acd306(25)*acd306(48)
      acd306(49)=acd306(6)*acd306(47)
      acd306(51)=-acd306(4)*acd306(38)
      acd306(52)=acd306(24)*acd306(42)
      acd306(53)=-acd306(23)*acd306(34)
      acd306(49)=acd306(53)+acd306(52)+acd306(49)+acd306(51)
      acd306(49)=acd306(39)*acd306(49)
      acd306(51)=acd306(6)*acd306(46)
      acd306(52)=-acd306(2)*acd306(38)
      acd306(53)=acd306(24)*acd306(41)
      acd306(55)=-acd306(22)*acd306(34)
      acd306(51)=acd306(55)+acd306(53)+acd306(51)+acd306(52)
      acd306(51)=acd306(35)*acd306(51)
      acd306(50)=-acd306(9)*acd306(50)
      acd306(52)=acd306(27)*acd306(26)
      acd306(53)=acd306(24)*acd306(43)
      acd306(54)=-acd306(23)*acd306(54)
      acd306(55)=-acd306(22)*acd306(56)
      acd306(49)=acd306(51)+acd306(49)+acd306(50)+acd306(55)+acd306(54)+acd306(&
      &52)+acd306(53)
      acd306(49)=acd306(19)*acd306(49)
      acd306(50)=acd306(24)*acd306(45)
      acd306(51)=-acd306(23)*acd306(37)
      acd306(52)=acd306(17)*acd306(47)
      acd306(53)=-acd306(14)*acd306(38)
      acd306(50)=acd306(53)+acd306(52)+acd306(50)+acd306(51)
      acd306(50)=acd306(39)*acd306(50)
      acd306(51)=acd306(24)*acd306(44)
      acd306(52)=-acd306(22)*acd306(37)
      acd306(53)=acd306(17)*acd306(46)
      acd306(54)=-acd306(10)*acd306(38)
      acd306(51)=acd306(54)+acd306(53)+acd306(51)+acd306(52)
      acd306(51)=acd306(35)*acd306(51)
      acd306(52)=-acd306(23)*acd306(15)
      acd306(53)=-acd306(22)*acd306(12)
      acd306(52)=acd306(52)+acd306(53)
      acd306(52)=acd306(21)*acd306(52)
      acd306(53)=-acd306(14)*acd306(15)
      acd306(54)=-acd306(10)*acd306(12)
      acd306(53)=acd306(53)+acd306(54)
      acd306(53)=acd306(9)*acd306(53)
      acd306(50)=acd306(51)+acd306(50)+acd306(52)+acd306(53)
      acd306(50)=acd306(11)*acd306(50)
      acd306(51)=-acd306(6)*acd306(7)
      acd306(52)=acd306(4)*acd306(5)
      acd306(53)=acd306(2)*acd306(3)
      acd306(51)=acd306(53)+acd306(52)-acd306(8)+acd306(51)
      acd306(51)=acd306(1)*acd306(51)
      acd306(52)=acd306(24)*acd306(18)
      acd306(53)=-acd306(23)*acd306(16)
      acd306(54)=-acd306(22)*acd306(13)
      acd306(52)=acd306(54)+acd306(52)+acd306(53)
      acd306(52)=acd306(21)*acd306(52)
      acd306(53)=acd306(17)*acd306(18)
      acd306(54)=-acd306(14)*acd306(16)
      acd306(55)=-acd306(10)*acd306(13)
      acd306(53)=acd306(55)+acd306(53)+acd306(54)
      acd306(53)=acd306(9)*acd306(53)
      acd306(54)=2.0_ki*acd306(32)
      acd306(55)=-acd306(7)*acd306(54)
      acd306(56)=acd306(18)*acd306(30)
      acd306(55)=acd306(55)+acd306(56)
      acd306(55)=acd306(24)*acd306(55)
      acd306(56)=acd306(5)*acd306(54)
      acd306(57)=-acd306(16)*acd306(30)
      acd306(56)=acd306(56)+acd306(57)
      acd306(56)=acd306(23)*acd306(56)
      acd306(54)=acd306(3)*acd306(54)
      acd306(57)=-acd306(13)*acd306(30)
      acd306(54)=acd306(54)+acd306(57)
      acd306(54)=acd306(22)*acd306(54)
      acd306(57)=2.0_ki*acd306(31)
      acd306(58)=-acd306(7)*acd306(57)
      acd306(59)=acd306(18)*acd306(29)
      acd306(58)=acd306(58)+acd306(59)
      acd306(58)=acd306(17)*acd306(58)
      acd306(59)=acd306(5)*acd306(57)
      acd306(60)=-acd306(16)*acd306(29)
      acd306(59)=acd306(59)+acd306(60)
      acd306(59)=acd306(14)*acd306(59)
      acd306(57)=acd306(3)*acd306(57)
      acd306(60)=-acd306(13)*acd306(29)
      acd306(57)=acd306(57)+acd306(60)
      acd306(57)=acd306(10)*acd306(57)
      brack=acd306(48)+acd306(49)+acd306(50)+2.0_ki*acd306(51)+acd306(52)+acd30&
      &6(53)+acd306(54)+acd306(55)+acd306(56)+acd306(57)+acd306(58)+acd306(59)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd306h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd306
      complex(ki) :: brack
      acd306(1)=d(iv1,iv2)
      acd306(2)=spvak1k2(iv3)
      acd306(3)=abb306(30)
      acd306(4)=spvak4k2(iv3)
      acd306(5)=abb306(26)
      acd306(6)=spval6k2(iv3)
      acd306(7)=abb306(21)
      acd306(8)=d(iv1,iv3)
      acd306(9)=spvak1k2(iv2)
      acd306(10)=spvak4k2(iv2)
      acd306(11)=spval6k2(iv2)
      acd306(12)=d(iv2,iv3)
      acd306(13)=spvak1k2(iv1)
      acd306(14)=spvak4k2(iv1)
      acd306(15)=spval6k2(iv1)
      acd306(16)=k2(iv1)
      acd306(17)=spvak7k2(iv3)
      acd306(18)=abb306(16)
      acd306(19)=spvak7k2(iv2)
      acd306(20)=abb306(29)
      acd306(21)=k2(iv2)
      acd306(22)=spvak7k2(iv1)
      acd306(23)=k2(iv3)
      acd306(24)=spval6l5(iv3)
      acd306(25)=abb306(10)
      acd306(26)=spval6l5(iv2)
      acd306(27)=spval6l5(iv1)
      acd306(28)=abb306(11)
      acd306(29)=spvak1l5(iv3)
      acd306(30)=spvak4l5(iv3)
      acd306(31)=spvak1l5(iv2)
      acd306(32)=spvak4l5(iv2)
      acd306(33)=spvak1l5(iv1)
      acd306(34)=spvak4l5(iv1)
      acd306(35)=-acd306(15)*acd306(7)
      acd306(36)=acd306(14)*acd306(5)
      acd306(37)=acd306(13)*acd306(3)
      acd306(35)=acd306(37)+acd306(35)+acd306(36)
      acd306(35)=acd306(12)*acd306(35)
      acd306(36)=-acd306(11)*acd306(7)
      acd306(37)=acd306(10)*acd306(5)
      acd306(38)=acd306(9)*acd306(3)
      acd306(36)=acd306(38)+acd306(37)+acd306(36)
      acd306(36)=acd306(8)*acd306(36)
      acd306(37)=-acd306(6)*acd306(7)
      acd306(38)=acd306(4)*acd306(5)
      acd306(39)=acd306(2)*acd306(3)
      acd306(37)=acd306(39)+acd306(38)+acd306(37)
      acd306(37)=acd306(1)*acd306(37)
      acd306(35)=acd306(37)+acd306(36)+acd306(35)
      acd306(36)=acd306(11)*acd306(30)
      acd306(37)=-acd306(10)*acd306(24)
      acd306(38)=acd306(6)*acd306(32)
      acd306(39)=-acd306(4)*acd306(26)
      acd306(36)=acd306(39)+acd306(38)+acd306(36)+acd306(37)
      acd306(36)=acd306(28)*acd306(36)
      acd306(37)=acd306(11)*acd306(29)
      acd306(38)=-acd306(9)*acd306(24)
      acd306(39)=acd306(6)*acd306(31)
      acd306(40)=-acd306(2)*acd306(26)
      acd306(37)=acd306(40)+acd306(39)+acd306(37)+acd306(38)
      acd306(37)=acd306(25)*acd306(37)
      acd306(38)=-acd306(10)*acd306(23)
      acd306(39)=-acd306(4)*acd306(21)
      acd306(38)=acd306(38)+acd306(39)
      acd306(38)=acd306(20)*acd306(38)
      acd306(39)=-acd306(9)*acd306(23)
      acd306(40)=-acd306(2)*acd306(21)
      acd306(39)=acd306(39)+acd306(40)
      acd306(39)=acd306(18)*acd306(39)
      acd306(36)=acd306(37)+acd306(36)+acd306(38)+acd306(39)
      acd306(36)=acd306(22)*acd306(36)
      acd306(37)=acd306(15)*acd306(30)
      acd306(38)=-acd306(14)*acd306(24)
      acd306(39)=acd306(6)*acd306(34)
      acd306(40)=-acd306(4)*acd306(27)
      acd306(37)=acd306(40)+acd306(39)+acd306(37)+acd306(38)
      acd306(37)=acd306(28)*acd306(37)
      acd306(38)=acd306(15)*acd306(29)
      acd306(39)=-acd306(13)*acd306(24)
      acd306(40)=acd306(6)*acd306(33)
      acd306(41)=-acd306(2)*acd306(27)
      acd306(38)=acd306(41)+acd306(40)+acd306(38)+acd306(39)
      acd306(38)=acd306(25)*acd306(38)
      acd306(39)=-acd306(14)*acd306(23)
      acd306(40)=-acd306(4)*acd306(16)
      acd306(39)=acd306(39)+acd306(40)
      acd306(39)=acd306(20)*acd306(39)
      acd306(40)=-acd306(13)*acd306(23)
      acd306(41)=-acd306(2)*acd306(16)
      acd306(40)=acd306(40)+acd306(41)
      acd306(40)=acd306(18)*acd306(40)
      acd306(37)=acd306(38)+acd306(37)+acd306(39)+acd306(40)
      acd306(37)=acd306(19)*acd306(37)
      acd306(38)=acd306(15)*acd306(32)
      acd306(39)=-acd306(14)*acd306(26)
      acd306(40)=acd306(11)*acd306(34)
      acd306(41)=-acd306(10)*acd306(27)
      acd306(38)=acd306(41)+acd306(40)+acd306(38)+acd306(39)
      acd306(38)=acd306(28)*acd306(38)
      acd306(39)=acd306(15)*acd306(31)
      acd306(40)=-acd306(13)*acd306(26)
      acd306(41)=acd306(11)*acd306(33)
      acd306(42)=-acd306(9)*acd306(27)
      acd306(39)=acd306(42)+acd306(41)+acd306(39)+acd306(40)
      acd306(39)=acd306(25)*acd306(39)
      acd306(40)=-acd306(14)*acd306(21)
      acd306(41)=-acd306(10)*acd306(16)
      acd306(40)=acd306(40)+acd306(41)
      acd306(40)=acd306(20)*acd306(40)
      acd306(41)=-acd306(13)*acd306(21)
      acd306(42)=-acd306(9)*acd306(16)
      acd306(41)=acd306(41)+acd306(42)
      acd306(41)=acd306(18)*acd306(41)
      acd306(38)=acd306(39)+acd306(38)+acd306(40)+acd306(41)
      acd306(38)=acd306(17)*acd306(38)
      brack=2.0_ki*acd306(35)+acd306(36)+acd306(37)+acd306(38)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd306h5
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
!---#[ subroutine reconstruct_d306:
   subroutine     reconstruct_d306(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group19
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group19), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_306:
      coeffs%coeffs_306%c0 = derivative(czip)
      coeffs%coeffs_306%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_306%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_306%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_306%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_306%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_306%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_306%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_306%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_306%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_306%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_306%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_306%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_306%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_306%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_306%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_306%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_306%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_306%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_306%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_306%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_306%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_306%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_306%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_306%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_306%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_306%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_306%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_306%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_306%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_306%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_306%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_306%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_306%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_306%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_306:
   end subroutine reconstruct_d306
!---#] subroutine reconstruct_d306:
end module     p0_dbaru_epnebbbarg_d306h5l1d
