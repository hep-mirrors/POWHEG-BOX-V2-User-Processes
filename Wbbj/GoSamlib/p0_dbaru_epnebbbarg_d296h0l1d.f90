module     p0_dbaru_epnebbbarg_d296h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d296h0l1d.f90
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
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d296
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd296h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd296
      complex(ki) :: brack
      acd296(1)=abb296(49)
      brack=acd296(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd296h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd296
      complex(ki) :: brack
      acd296(1)=k2(iv1)
      acd296(2)=abb296(22)
      acd296(3)=l6(iv1)
      acd296(4)=abb296(31)
      acd296(5)=k7(iv1)
      acd296(6)=abb296(60)
      acd296(7)=spvak2k7(iv1)
      acd296(8)=abb296(30)
      acd296(9)=spvak4k3(iv1)
      acd296(10)=abb296(19)
      acd296(11)=spval6k1(iv1)
      acd296(12)=abb296(17)
      acd296(13)=spval6k2(iv1)
      acd296(14)=abb296(14)
      acd296(15)=spval6l5(iv1)
      acd296(16)=abb296(18)
      acd296(17)=-acd296(2)*acd296(1)
      acd296(18)=-acd296(4)*acd296(3)
      acd296(19)=-acd296(6)*acd296(5)
      acd296(20)=-acd296(8)*acd296(7)
      acd296(21)=-acd296(10)*acd296(9)
      acd296(22)=-acd296(12)*acd296(11)
      acd296(23)=-acd296(14)*acd296(13)
      acd296(24)=-acd296(16)*acd296(15)
      brack=acd296(17)+acd296(18)+acd296(19)+acd296(20)+acd296(21)+acd296(22)+a&
      &cd296(23)+acd296(24)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd296h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd296
      complex(ki) :: brack
      acd296(1)=d(iv1,iv2)
      acd296(2)=abb296(36)
      acd296(3)=k2(iv1)
      acd296(4)=k2(iv2)
      acd296(5)=abb296(34)
      acd296(6)=l6(iv2)
      acd296(7)=abb296(67)
      acd296(8)=k7(iv2)
      acd296(9)=spvak2k7(iv2)
      acd296(10)=abb296(42)
      acd296(11)=spvak4k3(iv2)
      acd296(12)=abb296(20)
      acd296(13)=spval6k2(iv2)
      acd296(14)=abb296(13)
      acd296(15)=spval6k3(iv2)
      acd296(16)=abb296(66)
      acd296(17)=l6(iv1)
      acd296(18)=k7(iv1)
      acd296(19)=spvak2k7(iv1)
      acd296(20)=spvak4k3(iv1)
      acd296(21)=spval6k2(iv1)
      acd296(22)=spval6k3(iv1)
      acd296(23)=abb296(47)
      acd296(24)=abb296(25)
      acd296(25)=abb296(72)
      acd296(26)=abb296(10)
      acd296(27)=abb296(52)
      acd296(28)=spval6k1(iv2)
      acd296(29)=abb296(11)
      acd296(30)=spval6l5(iv2)
      acd296(31)=abb296(43)
      acd296(32)=spval6k1(iv1)
      acd296(33)=spval6l5(iv1)
      acd296(34)=abb296(48)
      acd296(35)=spval6k7(iv2)
      acd296(36)=abb296(71)
      acd296(37)=spval6k7(iv1)
      acd296(38)=spvak1k2(iv1)
      acd296(39)=abb296(16)
      acd296(40)=spvak1k2(iv2)
      acd296(41)=acd296(16)*acd296(15)
      acd296(42)=acd296(13)*acd296(14)
      acd296(43)=acd296(11)*acd296(12)
      acd296(44)=acd296(9)*acd296(10)
      acd296(45)=-acd296(8)+acd296(6)
      acd296(45)=acd296(7)*acd296(45)
      acd296(46)=acd296(4)*acd296(5)
      acd296(42)=2.0_ki*acd296(46)+acd296(45)+acd296(44)+acd296(43)+acd296(41)+&
      &acd296(42)
      acd296(42)=acd296(3)*acd296(42)
      acd296(43)=acd296(31)*acd296(30)
      acd296(44)=acd296(29)*acd296(28)
      acd296(45)=acd296(15)*acd296(27)
      acd296(46)=acd296(13)*acd296(26)
      acd296(47)=acd296(6)*acd296(23)
      acd296(43)=acd296(47)+acd296(46)+acd296(45)+acd296(43)+acd296(44)
      acd296(43)=acd296(19)*acd296(43)
      acd296(44)=acd296(31)*acd296(33)
      acd296(45)=acd296(29)*acd296(32)
      acd296(46)=acd296(22)*acd296(27)
      acd296(47)=acd296(21)*acd296(26)
      acd296(48)=acd296(17)*acd296(23)
      acd296(44)=acd296(48)+acd296(47)+acd296(46)+acd296(44)+acd296(45)
      acd296(44)=acd296(9)*acd296(44)
      acd296(45)=acd296(16)*acd296(22)
      acd296(46)=acd296(21)*acd296(14)
      acd296(47)=acd296(20)*acd296(12)
      acd296(48)=acd296(19)*acd296(10)
      acd296(49)=-acd296(18)+acd296(17)
      acd296(49)=acd296(7)*acd296(49)
      acd296(46)=acd296(49)+acd296(48)+acd296(45)+acd296(46)+acd296(47)
      acd296(46)=acd296(4)*acd296(46)
      acd296(47)=acd296(36)*acd296(37)
      acd296(48)=acd296(21)*acd296(34)
      acd296(49)=acd296(17)*acd296(24)
      acd296(47)=acd296(49)+acd296(47)+acd296(48)
      acd296(47)=acd296(11)*acd296(47)
      acd296(48)=acd296(37)*acd296(40)
      acd296(49)=acd296(35)*acd296(38)
      acd296(48)=acd296(49)+acd296(48)
      acd296(48)=acd296(39)*acd296(48)
      acd296(49)=acd296(35)*acd296(36)
      acd296(50)=acd296(6)*acd296(24)
      acd296(49)=acd296(50)+acd296(49)
      acd296(49)=acd296(20)*acd296(49)
      acd296(50)=acd296(20)*acd296(34)
      acd296(51)=acd296(18)*acd296(25)
      acd296(50)=acd296(50)+acd296(51)
      acd296(50)=acd296(13)*acd296(50)
      acd296(51)=acd296(21)*acd296(25)
      acd296(45)=acd296(51)-acd296(45)
      acd296(45)=acd296(8)*acd296(45)
      acd296(51)=-acd296(8)*acd296(17)
      acd296(52)=-acd296(6)*acd296(18)
      acd296(51)=acd296(51)+acd296(52)
      acd296(51)=acd296(7)*acd296(51)
      acd296(52)=acd296(1)*acd296(2)
      acd296(41)=-acd296(18)*acd296(41)
      brack=acd296(41)+acd296(42)+acd296(43)+acd296(44)+acd296(45)+acd296(46)+a&
      &cd296(47)+acd296(48)+acd296(49)+acd296(50)+acd296(51)+2.0_ki*acd296(52)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd296h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd296
      complex(ki) :: brack
      acd296(1)=d(iv1,iv2)
      acd296(2)=k2(iv3)
      acd296(3)=abb296(33)
      acd296(4)=l6(iv3)
      acd296(5)=abb296(37)
      acd296(6)=spvak4k3(iv3)
      acd296(7)=abb296(35)
      acd296(8)=spval6k2(iv3)
      acd296(9)=abb296(12)
      acd296(10)=spval6k3(iv3)
      acd296(11)=abb296(62)
      acd296(12)=d(iv1,iv3)
      acd296(13)=k2(iv2)
      acd296(14)=l6(iv2)
      acd296(15)=spvak4k3(iv2)
      acd296(16)=spval6k2(iv2)
      acd296(17)=spval6k3(iv2)
      acd296(18)=d(iv2,iv3)
      acd296(19)=k2(iv1)
      acd296(20)=l6(iv1)
      acd296(21)=spvak4k3(iv1)
      acd296(22)=spval6k2(iv1)
      acd296(23)=spval6k3(iv1)
      acd296(24)=abb296(32)
      acd296(25)=abb296(64)
      acd296(26)=spvak1k2(iv2)
      acd296(27)=spval6k7(iv3)
      acd296(28)=abb296(23)
      acd296(29)=spvak1k2(iv3)
      acd296(30)=spval6k7(iv2)
      acd296(31)=spvak1k2(iv1)
      acd296(32)=spval6k7(iv1)
      acd296(33)=k7(iv1)
      acd296(34)=k7(iv2)
      acd296(35)=k7(iv3)
      acd296(36)=spvak2k7(iv3)
      acd296(37)=abb296(15)
      acd296(38)=spvak2k7(iv2)
      acd296(39)=abb296(24)
      acd296(40)=spvak2k7(iv1)
      acd296(41)=abb296(21)
      acd296(42)=abb296(26)
      acd296(43)=abb296(27)
      acd296(44)=-acd296(11)*acd296(23)
      acd296(45)=-acd296(5)*acd296(20)
      acd296(46)=-acd296(22)*acd296(9)
      acd296(47)=-acd296(19)*acd296(3)
      acd296(44)=acd296(47)+acd296(46)+acd296(44)+acd296(45)
      acd296(44)=acd296(18)*acd296(44)
      acd296(45)=-acd296(11)*acd296(17)
      acd296(46)=-acd296(5)*acd296(14)
      acd296(47)=-acd296(16)*acd296(9)
      acd296(48)=-acd296(13)*acd296(3)
      acd296(45)=acd296(48)+acd296(47)+acd296(45)+acd296(46)
      acd296(45)=acd296(12)*acd296(45)
      acd296(46)=-acd296(10)*acd296(11)
      acd296(47)=-acd296(5)*acd296(4)
      acd296(48)=-acd296(8)*acd296(9)
      acd296(49)=-acd296(2)*acd296(3)
      acd296(46)=acd296(49)+acd296(48)+acd296(46)+acd296(47)
      acd296(46)=acd296(1)*acd296(46)
      acd296(44)=acd296(46)+acd296(45)+acd296(44)
      acd296(45)=acd296(42)*acd296(10)
      acd296(46)=acd296(8)*acd296(41)
      acd296(47)=acd296(27)*acd296(43)
      acd296(45)=acd296(47)+acd296(45)-acd296(46)
      acd296(46)=-acd296(40)*acd296(45)
      acd296(47)=acd296(6)*acd296(39)
      acd296(48)=-acd296(36)*acd296(43)
      acd296(48)=-acd296(47)+acd296(48)
      acd296(48)=acd296(32)*acd296(48)
      acd296(49)=acd296(42)*acd296(23)
      acd296(50)=acd296(22)*acd296(41)
      acd296(49)=acd296(49)-acd296(50)
      acd296(50)=-acd296(36)*acd296(49)
      acd296(51)=acd296(2)-acd296(35)
      acd296(52)=-acd296(32)*acd296(51)
      acd296(53)=acd296(19)-acd296(33)
      acd296(54)=-acd296(27)*acd296(53)
      acd296(52)=acd296(52)+acd296(54)
      acd296(52)=acd296(28)*acd296(52)
      acd296(54)=acd296(21)*acd296(39)
      acd296(55)=-acd296(27)*acd296(54)
      acd296(46)=acd296(52)+acd296(55)+acd296(50)+acd296(48)+acd296(46)
      acd296(46)=acd296(26)*acd296(46)
      acd296(48)=acd296(38)*acd296(37)
      acd296(50)=-acd296(13)*acd296(25)
      acd296(50)=-acd296(48)+acd296(50)
      acd296(50)=acd296(8)*acd296(50)
      acd296(52)=-acd296(16)*acd296(25)
      acd296(55)=2.0_ki*acd296(24)
      acd296(56)=-acd296(13)*acd296(55)
      acd296(52)=acd296(52)+acd296(56)
      acd296(52)=acd296(2)*acd296(52)
      acd296(56)=2.0_ki*acd296(7)
      acd296(57)=-acd296(18)*acd296(56)
      acd296(58)=acd296(36)*acd296(37)
      acd296(59)=-acd296(16)*acd296(58)
      acd296(50)=acd296(59)+acd296(52)+acd296(57)+acd296(50)
      acd296(50)=acd296(21)*acd296(50)
      acd296(52)=acd296(19)*acd296(25)
      acd296(57)=acd296(40)*acd296(37)
      acd296(52)=acd296(52)+acd296(57)
      acd296(57)=-acd296(8)*acd296(52)
      acd296(59)=acd296(22)*acd296(25)
      acd296(55)=acd296(55)*acd296(19)
      acd296(55)=acd296(59)+acd296(55)
      acd296(59)=-acd296(2)*acd296(55)
      acd296(60)=-acd296(12)*acd296(56)
      acd296(58)=-acd296(22)*acd296(58)
      acd296(57)=acd296(58)+acd296(59)+acd296(60)+acd296(57)
      acd296(57)=acd296(15)*acd296(57)
      acd296(52)=-acd296(16)*acd296(52)
      acd296(55)=-acd296(13)*acd296(55)
      acd296(56)=-acd296(1)*acd296(56)
      acd296(48)=-acd296(22)*acd296(48)
      acd296(48)=acd296(48)+acd296(55)+acd296(56)+acd296(52)
      acd296(48)=acd296(6)*acd296(48)
      acd296(45)=-acd296(38)*acd296(45)
      acd296(52)=acd296(42)*acd296(17)
      acd296(55)=acd296(16)*acd296(41)
      acd296(56)=acd296(30)*acd296(43)
      acd296(52)=acd296(56)+acd296(52)-acd296(55)
      acd296(55)=-acd296(36)*acd296(52)
      acd296(56)=acd296(15)*acd296(39)
      acd296(58)=-acd296(27)*acd296(56)
      acd296(47)=-acd296(30)*acd296(47)
      acd296(45)=acd296(47)+acd296(58)+acd296(55)+acd296(45)
      acd296(45)=acd296(31)*acd296(45)
      acd296(47)=-acd296(40)*acd296(52)
      acd296(52)=-acd296(38)*acd296(43)
      acd296(52)=-acd296(56)+acd296(52)
      acd296(52)=acd296(32)*acd296(52)
      acd296(49)=-acd296(38)*acd296(49)
      acd296(54)=-acd296(30)*acd296(54)
      acd296(47)=acd296(54)+acd296(49)+acd296(52)+acd296(47)
      acd296(47)=acd296(29)*acd296(47)
      acd296(49)=-acd296(30)*acd296(51)
      acd296(51)=acd296(13)-acd296(34)
      acd296(52)=-acd296(27)*acd296(51)
      acd296(49)=acd296(49)+acd296(52)
      acd296(49)=acd296(31)*acd296(49)
      acd296(51)=-acd296(32)*acd296(51)
      acd296(52)=-acd296(30)*acd296(53)
      acd296(51)=acd296(51)+acd296(52)
      acd296(51)=acd296(29)*acd296(51)
      acd296(49)=acd296(49)+acd296(51)
      acd296(49)=acd296(28)*acd296(49)
      brack=2.0_ki*acd296(44)+acd296(45)+acd296(46)+acd296(47)+acd296(48)+acd29&
      &6(49)+acd296(50)+acd296(57)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd296h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(43) :: acd296
      complex(ki) :: brack
      acd296(1)=d(iv1,iv2)
      acd296(2)=k2(iv3)
      acd296(3)=spvak4k3(iv4)
      acd296(4)=abb296(69)
      acd296(5)=k2(iv4)
      acd296(6)=spvak4k3(iv3)
      acd296(7)=spval6k2(iv4)
      acd296(8)=abb296(79)
      acd296(9)=spval6k2(iv3)
      acd296(10)=spvak1k2(iv3)
      acd296(11)=spval6k7(iv4)
      acd296(12)=abb296(21)
      acd296(13)=spvak1k2(iv4)
      acd296(14)=spval6k7(iv3)
      acd296(15)=d(iv1,iv3)
      acd296(16)=k2(iv2)
      acd296(17)=spvak4k3(iv2)
      acd296(18)=spval6k2(iv2)
      acd296(19)=spvak1k2(iv2)
      acd296(20)=spval6k7(iv2)
      acd296(21)=d(iv1,iv4)
      acd296(22)=d(iv2,iv3)
      acd296(23)=k2(iv1)
      acd296(24)=spvak4k3(iv1)
      acd296(25)=spval6k2(iv1)
      acd296(26)=spvak1k2(iv1)
      acd296(27)=spval6k7(iv1)
      acd296(28)=d(iv2,iv4)
      acd296(29)=d(iv3,iv4)
      acd296(30)=spvak2k7(iv4)
      acd296(31)=abb296(28)
      acd296(32)=spvak2k7(iv3)
      acd296(33)=spvak2k7(iv2)
      acd296(34)=spvak2k7(iv1)
      acd296(35)=acd296(29)*acd296(20)
      acd296(36)=acd296(28)*acd296(14)
      acd296(37)=acd296(22)*acd296(11)
      acd296(35)=acd296(37)+acd296(35)+acd296(36)
      acd296(35)=acd296(26)*acd296(35)
      acd296(36)=acd296(29)*acd296(27)
      acd296(37)=acd296(21)*acd296(14)
      acd296(38)=acd296(15)*acd296(11)
      acd296(36)=acd296(38)+acd296(36)+acd296(37)
      acd296(36)=acd296(19)*acd296(36)
      acd296(37)=acd296(22)*acd296(27)
      acd296(38)=acd296(15)*acd296(20)
      acd296(39)=acd296(1)*acd296(14)
      acd296(37)=acd296(39)+acd296(37)+acd296(38)
      acd296(37)=acd296(13)*acd296(37)
      acd296(38)=acd296(28)*acd296(27)
      acd296(39)=acd296(21)*acd296(20)
      acd296(40)=acd296(1)*acd296(11)
      acd296(38)=acd296(40)+acd296(38)+acd296(39)
      acd296(38)=acd296(10)*acd296(38)
      acd296(35)=acd296(38)+acd296(37)+acd296(35)+acd296(36)
      acd296(35)=acd296(12)*acd296(35)
      acd296(36)=acd296(18)*acd296(29)
      acd296(37)=acd296(9)*acd296(28)
      acd296(38)=acd296(7)*acd296(22)
      acd296(36)=acd296(38)+acd296(36)+acd296(37)
      acd296(36)=acd296(24)*acd296(36)
      acd296(37)=acd296(25)*acd296(29)
      acd296(38)=acd296(9)*acd296(21)
      acd296(39)=acd296(7)*acd296(15)
      acd296(37)=acd296(39)+acd296(37)+acd296(38)
      acd296(37)=acd296(17)*acd296(37)
      acd296(38)=acd296(25)*acd296(28)
      acd296(39)=acd296(18)*acd296(21)
      acd296(40)=acd296(7)*acd296(1)
      acd296(38)=acd296(40)+acd296(38)+acd296(39)
      acd296(38)=acd296(6)*acd296(38)
      acd296(36)=acd296(38)+acd296(36)+acd296(37)
      acd296(36)=acd296(8)*acd296(36)
      acd296(37)=acd296(29)*acd296(16)
      acd296(38)=acd296(28)*acd296(2)
      acd296(39)=acd296(22)*acd296(5)
      acd296(37)=acd296(39)+acd296(37)+acd296(38)
      acd296(37)=acd296(24)*acd296(37)
      acd296(38)=acd296(29)*acd296(23)
      acd296(39)=acd296(21)*acd296(2)
      acd296(40)=acd296(15)*acd296(5)
      acd296(38)=acd296(40)+acd296(38)+acd296(39)
      acd296(38)=acd296(17)*acd296(38)
      acd296(39)=acd296(28)*acd296(23)
      acd296(40)=acd296(21)*acd296(16)
      acd296(41)=acd296(1)*acd296(5)
      acd296(39)=acd296(41)+acd296(39)+acd296(40)
      acd296(39)=acd296(6)*acd296(39)
      acd296(37)=acd296(39)+acd296(37)+acd296(38)
      acd296(37)=acd296(4)*acd296(37)
      acd296(38)=acd296(25)*acd296(22)
      acd296(39)=acd296(18)*acd296(15)
      acd296(40)=acd296(9)*acd296(1)
      acd296(38)=acd296(40)+acd296(38)+acd296(39)
      acd296(38)=acd296(8)*acd296(38)
      acd296(39)=acd296(22)*acd296(23)
      acd296(40)=acd296(15)*acd296(16)
      acd296(41)=acd296(1)*acd296(2)
      acd296(39)=acd296(41)+acd296(39)+acd296(40)
      acd296(39)=acd296(4)*acd296(39)
      acd296(38)=acd296(38)+acd296(39)
      acd296(38)=acd296(3)*acd296(38)
      acd296(35)=acd296(38)+acd296(37)+acd296(35)+acd296(36)
      acd296(36)=acd296(13)*acd296(32)
      acd296(37)=acd296(10)*acd296(30)
      acd296(36)=acd296(36)+acd296(37)
      acd296(37)=acd296(18)*acd296(36)
      acd296(38)=acd296(19)*acd296(30)
      acd296(39)=acd296(13)*acd296(33)
      acd296(38)=acd296(38)+acd296(39)
      acd296(38)=acd296(9)*acd296(38)
      acd296(39)=acd296(19)*acd296(32)
      acd296(40)=acd296(10)*acd296(33)
      acd296(39)=acd296(39)+acd296(40)
      acd296(39)=acd296(7)*acd296(39)
      acd296(37)=acd296(39)+acd296(38)+acd296(37)
      acd296(37)=acd296(24)*acd296(37)
      acd296(36)=acd296(25)*acd296(36)
      acd296(38)=acd296(26)*acd296(30)
      acd296(39)=acd296(13)*acd296(34)
      acd296(38)=acd296(38)+acd296(39)
      acd296(38)=acd296(9)*acd296(38)
      acd296(39)=acd296(26)*acd296(32)
      acd296(40)=acd296(10)*acd296(34)
      acd296(39)=acd296(39)+acd296(40)
      acd296(39)=acd296(7)*acd296(39)
      acd296(36)=acd296(39)+acd296(38)+acd296(36)
      acd296(36)=acd296(17)*acd296(36)
      acd296(38)=acd296(19)*acd296(25)
      acd296(39)=acd296(18)*acd296(26)
      acd296(38)=acd296(38)+acd296(39)
      acd296(39)=acd296(30)*acd296(38)
      acd296(40)=acd296(25)*acd296(33)
      acd296(41)=acd296(18)*acd296(34)
      acd296(40)=acd296(40)+acd296(41)
      acd296(41)=acd296(13)*acd296(40)
      acd296(42)=acd296(26)*acd296(33)
      acd296(43)=acd296(19)*acd296(34)
      acd296(42)=acd296(42)+acd296(43)
      acd296(43)=acd296(7)*acd296(42)
      acd296(39)=acd296(43)+acd296(41)+acd296(39)
      acd296(39)=acd296(6)*acd296(39)
      acd296(38)=acd296(32)*acd296(38)
      acd296(40)=acd296(10)*acd296(40)
      acd296(41)=acd296(9)*acd296(42)
      acd296(38)=acd296(41)+acd296(40)+acd296(38)
      acd296(38)=acd296(3)*acd296(38)
      acd296(36)=acd296(38)+acd296(39)+acd296(37)+acd296(36)
      acd296(36)=acd296(31)*acd296(36)
      brack=2.0_ki*acd296(35)+acd296(36)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd296h0
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
      qshift = 0
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
!---#[ subroutine reconstruct_d296:
   subroutine     reconstruct_d296(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_296:
      coeffs%coeffs_296%c0 = derivative(czip)
      coeffs%coeffs_296%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_296%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_296%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_296%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_296%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_296%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_296%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_296%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_296%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_296%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_296%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_296%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_296%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_296%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_296%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_296%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_296%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_296%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_296%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_296%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_296%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_296%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_296%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_296%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_296%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_296%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_296%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_296%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_296%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_296%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_296%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_296%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_296%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_296%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_296%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_296%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_296%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_296%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_296%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_296%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_296%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_296%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_296%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_296%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_296%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_296%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_296%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_296%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_296%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_296%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_296%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_296%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_296%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_296%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_296%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_296%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_296%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_296%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_296%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_296%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_296%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_296%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_296%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_296%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_296%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_296%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_296%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_296%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_296%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_296:
   end subroutine reconstruct_d296
!---#] subroutine reconstruct_d296:
end module     p0_dbaru_epnebbbarg_d296h0l1d
