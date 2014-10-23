module     p0_dbaru_epnebbbarg_d304h5l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d304h5l1d.f90
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
   public :: derivative , reconstruct_d304
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd304
      complex(ki) :: brack
      acd304(1)=dotproduct(k2,qshift)
      acd304(2)=dotproduct(qshift,spvak1k2)
      acd304(3)=abb304(11)
      acd304(4)=dotproduct(qshift,spvak4k2)
      acd304(5)=abb304(21)
      acd304(6)=dotproduct(qshift,spval6k2)
      acd304(7)=abb304(18)
      acd304(8)=dotproduct(qshift,spvak7k2)
      acd304(9)=abb304(14)
      acd304(10)=abb304(16)
      acd304(11)=dotproduct(l6,qshift)
      acd304(12)=abb304(30)
      acd304(13)=abb304(22)
      acd304(14)=abb304(13)
      acd304(15)=abb304(26)
      acd304(16)=dotproduct(qshift,qshift)
      acd304(17)=abb304(15)
      acd304(18)=abb304(27)
      acd304(19)=dotproduct(qshift,spval6l5)
      acd304(20)=abb304(17)
      acd304(21)=abb304(23)
      acd304(22)=abb304(19)
      acd304(23)=abb304(24)
      acd304(24)=abb304(10)
      acd304(25)=abb304(12)
      acd304(26)=abb304(25)
      acd304(27)=dotproduct(qshift,spval6k7)
      acd304(28)=abb304(20)
      acd304(29)=-acd304(4)*acd304(22)
      acd304(30)=-acd304(2)*acd304(20)
      acd304(29)=acd304(30)+acd304(29)+acd304(26)
      acd304(29)=acd304(19)*acd304(29)
      acd304(30)=acd304(27)*acd304(28)
      acd304(31)=acd304(11)*acd304(15)
      acd304(32)=acd304(6)*acd304(24)
      acd304(33)=acd304(1)*acd304(9)
      acd304(29)=acd304(33)+acd304(32)+acd304(30)+acd304(31)+acd304(29)
      acd304(29)=acd304(8)*acd304(29)
      acd304(30)=-acd304(16)*acd304(18)
      acd304(31)=acd304(11)*acd304(13)
      acd304(32)=acd304(19)*acd304(23)
      acd304(30)=acd304(32)+acd304(30)+acd304(31)
      acd304(30)=acd304(4)*acd304(30)
      acd304(31)=-acd304(16)*acd304(17)
      acd304(32)=acd304(11)*acd304(12)
      acd304(33)=acd304(19)*acd304(21)
      acd304(31)=acd304(33)+acd304(31)+acd304(32)
      acd304(31)=acd304(2)*acd304(31)
      acd304(32)=acd304(6)*acd304(7)
      acd304(33)=acd304(4)*acd304(5)
      acd304(34)=acd304(2)*acd304(3)
      acd304(32)=acd304(34)+acd304(33)-acd304(10)+acd304(32)
      acd304(32)=acd304(1)*acd304(32)
      acd304(33)=-acd304(11)-acd304(16)
      acd304(33)=acd304(14)*acd304(33)
      acd304(33)=-acd304(25)+acd304(33)
      acd304(33)=acd304(6)*acd304(33)
      brack=acd304(29)+acd304(30)+acd304(31)+acd304(32)+acd304(33)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd304
      complex(ki) :: brack
      acd304(1)=k2(iv1)
      acd304(2)=dotproduct(qshift,spvak1k2)
      acd304(3)=abb304(11)
      acd304(4)=dotproduct(qshift,spvak4k2)
      acd304(5)=abb304(21)
      acd304(6)=dotproduct(qshift,spval6k2)
      acd304(7)=abb304(18)
      acd304(8)=dotproduct(qshift,spvak7k2)
      acd304(9)=abb304(14)
      acd304(10)=abb304(16)
      acd304(11)=l6(iv1)
      acd304(12)=abb304(30)
      acd304(13)=abb304(22)
      acd304(14)=abb304(13)
      acd304(15)=abb304(26)
      acd304(16)=qshift(iv1)
      acd304(17)=abb304(15)
      acd304(18)=abb304(27)
      acd304(19)=spvak1k2(iv1)
      acd304(20)=dotproduct(k2,qshift)
      acd304(21)=dotproduct(l6,qshift)
      acd304(22)=dotproduct(qshift,qshift)
      acd304(23)=dotproduct(qshift,spval6l5)
      acd304(24)=abb304(17)
      acd304(25)=abb304(23)
      acd304(26)=spvak4k2(iv1)
      acd304(27)=abb304(19)
      acd304(28)=abb304(24)
      acd304(29)=spval6k2(iv1)
      acd304(30)=abb304(10)
      acd304(31)=abb304(12)
      acd304(32)=spvak7k2(iv1)
      acd304(33)=abb304(25)
      acd304(34)=dotproduct(qshift,spval6k7)
      acd304(35)=abb304(20)
      acd304(36)=spval6l5(iv1)
      acd304(37)=spval6k7(iv1)
      acd304(38)=acd304(4)*acd304(27)
      acd304(39)=acd304(2)*acd304(24)
      acd304(38)=-acd304(33)+acd304(38)+acd304(39)
      acd304(39)=-acd304(36)*acd304(38)
      acd304(40)=-acd304(26)*acd304(27)
      acd304(41)=-acd304(19)*acd304(24)
      acd304(40)=acd304(40)+acd304(41)
      acd304(40)=acd304(23)*acd304(40)
      acd304(41)=acd304(35)*acd304(37)
      acd304(42)=acd304(11)*acd304(15)
      acd304(43)=acd304(29)*acd304(30)
      acd304(44)=acd304(1)*acd304(9)
      acd304(39)=acd304(40)+acd304(44)+acd304(43)+acd304(41)+acd304(42)+acd304(&
      &39)
      acd304(39)=acd304(8)*acd304(39)
      acd304(40)=2.0_ki*acd304(16)
      acd304(41)=-acd304(18)*acd304(40)
      acd304(42)=acd304(11)*acd304(13)
      acd304(43)=acd304(36)*acd304(28)
      acd304(44)=acd304(1)*acd304(5)
      acd304(41)=acd304(44)+acd304(43)+acd304(41)+acd304(42)
      acd304(41)=acd304(4)*acd304(41)
      acd304(42)=-acd304(17)*acd304(40)
      acd304(43)=acd304(11)*acd304(12)
      acd304(44)=acd304(36)*acd304(25)
      acd304(45)=acd304(1)*acd304(3)
      acd304(42)=acd304(45)+acd304(44)+acd304(42)+acd304(43)
      acd304(42)=acd304(2)*acd304(42)
      acd304(43)=acd304(35)*acd304(34)
      acd304(44)=acd304(21)*acd304(15)
      acd304(45)=acd304(20)*acd304(9)
      acd304(46)=acd304(6)*acd304(30)
      acd304(43)=acd304(46)+acd304(45)+acd304(43)+acd304(44)
      acd304(43)=acd304(32)*acd304(43)
      acd304(44)=-acd304(22)*acd304(18)
      acd304(45)=acd304(21)*acd304(13)
      acd304(46)=acd304(20)*acd304(5)
      acd304(44)=acd304(46)+acd304(44)+acd304(45)
      acd304(44)=acd304(26)*acd304(44)
      acd304(45)=-acd304(22)*acd304(17)
      acd304(46)=acd304(21)*acd304(12)
      acd304(47)=acd304(20)*acd304(3)
      acd304(45)=acd304(47)+acd304(45)+acd304(46)
      acd304(45)=acd304(19)*acd304(45)
      acd304(38)=-acd304(32)*acd304(38)
      acd304(46)=acd304(26)*acd304(28)
      acd304(47)=acd304(19)*acd304(25)
      acd304(38)=acd304(38)+acd304(46)+acd304(47)
      acd304(38)=acd304(23)*acd304(38)
      acd304(46)=acd304(20)*acd304(7)
      acd304(47)=-acd304(22)-acd304(21)
      acd304(47)=acd304(14)*acd304(47)
      acd304(46)=acd304(47)-acd304(31)+acd304(46)
      acd304(46)=acd304(29)*acd304(46)
      acd304(40)=-acd304(40)-acd304(11)
      acd304(40)=acd304(6)*acd304(14)*acd304(40)
      acd304(47)=acd304(6)*acd304(7)
      acd304(47)=-acd304(10)+acd304(47)
      acd304(47)=acd304(1)*acd304(47)
      brack=acd304(38)+acd304(39)+acd304(40)+acd304(41)+acd304(42)+acd304(43)+a&
      &cd304(44)+acd304(45)+acd304(46)+acd304(47)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(54) :: acd304
      complex(ki) :: brack
      acd304(1)=d(iv1,iv2)
      acd304(2)=dotproduct(qshift,spvak1k2)
      acd304(3)=abb304(15)
      acd304(4)=dotproduct(qshift,spvak4k2)
      acd304(5)=abb304(27)
      acd304(6)=dotproduct(qshift,spval6k2)
      acd304(7)=abb304(13)
      acd304(8)=k2(iv1)
      acd304(9)=spvak1k2(iv2)
      acd304(10)=abb304(11)
      acd304(11)=spvak4k2(iv2)
      acd304(12)=abb304(21)
      acd304(13)=spval6k2(iv2)
      acd304(14)=abb304(18)
      acd304(15)=spvak7k2(iv2)
      acd304(16)=abb304(14)
      acd304(17)=k2(iv2)
      acd304(18)=spvak1k2(iv1)
      acd304(19)=spvak4k2(iv1)
      acd304(20)=spval6k2(iv1)
      acd304(21)=spvak7k2(iv1)
      acd304(22)=l6(iv1)
      acd304(23)=abb304(30)
      acd304(24)=abb304(22)
      acd304(25)=abb304(26)
      acd304(26)=l6(iv2)
      acd304(27)=qshift(iv1)
      acd304(28)=qshift(iv2)
      acd304(29)=dotproduct(qshift,spval6l5)
      acd304(30)=abb304(17)
      acd304(31)=spval6l5(iv2)
      acd304(32)=dotproduct(qshift,spvak7k2)
      acd304(33)=abb304(23)
      acd304(34)=spval6l5(iv1)
      acd304(35)=abb304(19)
      acd304(36)=abb304(24)
      acd304(37)=abb304(10)
      acd304(38)=abb304(25)
      acd304(39)=spval6k7(iv2)
      acd304(40)=abb304(20)
      acd304(41)=spval6k7(iv1)
      acd304(42)=acd304(35)*acd304(4)
      acd304(43)=acd304(30)*acd304(2)
      acd304(42)=-acd304(38)+acd304(42)+acd304(43)
      acd304(43)=-acd304(31)*acd304(42)
      acd304(44)=acd304(40)*acd304(39)
      acd304(45)=acd304(26)*acd304(25)
      acd304(46)=acd304(17)*acd304(16)
      acd304(47)=acd304(13)*acd304(37)
      acd304(48)=acd304(35)*acd304(29)
      acd304(49)=-acd304(11)*acd304(48)
      acd304(50)=acd304(30)*acd304(29)
      acd304(51)=-acd304(9)*acd304(50)
      acd304(43)=acd304(43)+acd304(51)+acd304(49)+acd304(47)+acd304(46)+acd304(&
      &44)+acd304(45)
      acd304(43)=acd304(21)*acd304(43)
      acd304(42)=-acd304(34)*acd304(42)
      acd304(44)=acd304(40)*acd304(41)
      acd304(45)=acd304(22)*acd304(25)
      acd304(46)=acd304(20)*acd304(37)
      acd304(47)=acd304(8)*acd304(16)
      acd304(48)=-acd304(19)*acd304(48)
      acd304(49)=-acd304(18)*acd304(50)
      acd304(42)=acd304(42)+acd304(49)+acd304(48)+acd304(47)+acd304(46)+acd304(&
      &44)+acd304(45)
      acd304(42)=acd304(15)*acd304(42)
      acd304(44)=2.0_ki*acd304(1)
      acd304(45)=-acd304(6)*acd304(44)
      acd304(46)=2.0_ki*acd304(28)
      acd304(47)=-acd304(46)-acd304(26)
      acd304(47)=acd304(20)*acd304(47)
      acd304(48)=2.0_ki*acd304(27)
      acd304(49)=-acd304(48)-acd304(22)
      acd304(49)=acd304(13)*acd304(49)
      acd304(45)=acd304(49)+acd304(45)+acd304(47)
      acd304(45)=acd304(7)*acd304(45)
      acd304(47)=-acd304(5)*acd304(46)
      acd304(49)=acd304(26)*acd304(24)
      acd304(50)=acd304(17)*acd304(12)
      acd304(47)=acd304(50)+acd304(47)+acd304(49)
      acd304(47)=acd304(19)*acd304(47)
      acd304(46)=-acd304(3)*acd304(46)
      acd304(49)=acd304(26)*acd304(23)
      acd304(50)=acd304(17)*acd304(10)
      acd304(46)=acd304(50)+acd304(46)+acd304(49)
      acd304(46)=acd304(18)*acd304(46)
      acd304(49)=-acd304(5)*acd304(48)
      acd304(50)=acd304(22)*acd304(24)
      acd304(51)=acd304(8)*acd304(12)
      acd304(49)=acd304(51)+acd304(49)+acd304(50)
      acd304(49)=acd304(11)*acd304(49)
      acd304(48)=-acd304(3)*acd304(48)
      acd304(50)=acd304(22)*acd304(23)
      acd304(51)=acd304(8)*acd304(10)
      acd304(48)=acd304(51)+acd304(48)+acd304(50)
      acd304(48)=acd304(9)*acd304(48)
      acd304(50)=acd304(17)*acd304(20)
      acd304(51)=acd304(8)*acd304(13)
      acd304(50)=acd304(51)+acd304(50)
      acd304(50)=acd304(14)*acd304(50)
      acd304(51)=-acd304(4)*acd304(5)
      acd304(52)=-acd304(2)*acd304(3)
      acd304(51)=acd304(51)+acd304(52)
      acd304(44)=acd304(51)*acd304(44)
      acd304(51)=acd304(35)*acd304(32)
      acd304(51)=acd304(51)-acd304(36)
      acd304(52)=-acd304(11)*acd304(51)
      acd304(53)=acd304(30)*acd304(32)
      acd304(53)=acd304(53)-acd304(33)
      acd304(54)=-acd304(9)*acd304(53)
      acd304(52)=acd304(52)+acd304(54)
      acd304(52)=acd304(34)*acd304(52)
      acd304(51)=-acd304(19)*acd304(51)
      acd304(53)=-acd304(18)*acd304(53)
      acd304(51)=acd304(51)+acd304(53)
      acd304(51)=acd304(31)*acd304(51)
      brack=acd304(42)+acd304(43)+acd304(44)+acd304(45)+acd304(46)+acd304(47)+a&
      &cd304(48)+acd304(49)+acd304(50)+acd304(51)+acd304(52)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(32) :: acd304
      complex(ki) :: brack
      acd304(1)=d(iv1,iv2)
      acd304(2)=spvak1k2(iv3)
      acd304(3)=abb304(15)
      acd304(4)=spvak4k2(iv3)
      acd304(5)=abb304(27)
      acd304(6)=spval6k2(iv3)
      acd304(7)=abb304(13)
      acd304(8)=d(iv1,iv3)
      acd304(9)=spvak1k2(iv2)
      acd304(10)=spvak4k2(iv2)
      acd304(11)=spval6k2(iv2)
      acd304(12)=d(iv2,iv3)
      acd304(13)=spvak1k2(iv1)
      acd304(14)=spvak4k2(iv1)
      acd304(15)=spval6k2(iv1)
      acd304(16)=spval6l5(iv2)
      acd304(17)=spvak7k2(iv3)
      acd304(18)=abb304(17)
      acd304(19)=spval6l5(iv3)
      acd304(20)=spvak7k2(iv2)
      acd304(21)=spval6l5(iv1)
      acd304(22)=spvak7k2(iv1)
      acd304(23)=abb304(19)
      acd304(24)=-acd304(2)*acd304(18)
      acd304(25)=-acd304(4)*acd304(23)
      acd304(24)=acd304(25)+acd304(24)
      acd304(25)=acd304(21)*acd304(20)
      acd304(26)=acd304(22)*acd304(16)
      acd304(25)=acd304(25)+acd304(26)
      acd304(24)=acd304(25)*acd304(24)
      acd304(25)=2.0_ki*acd304(3)
      acd304(25)=-acd304(2)*acd304(25)
      acd304(26)=2.0_ki*acd304(5)
      acd304(26)=-acd304(4)*acd304(26)
      acd304(27)=2.0_ki*acd304(7)
      acd304(27)=-acd304(6)*acd304(27)
      acd304(25)=acd304(27)+acd304(26)+acd304(25)
      acd304(25)=acd304(1)*acd304(25)
      acd304(26)=2.0_ki*acd304(8)
      acd304(27)=-acd304(11)*acd304(26)
      acd304(28)=2.0_ki*acd304(12)
      acd304(29)=-acd304(15)*acd304(28)
      acd304(27)=acd304(29)+acd304(27)
      acd304(27)=acd304(7)*acd304(27)
      acd304(29)=acd304(21)*acd304(17)
      acd304(30)=acd304(22)*acd304(19)
      acd304(29)=acd304(29)+acd304(30)
      acd304(30)=-acd304(18)*acd304(29)
      acd304(31)=-acd304(3)*acd304(26)
      acd304(30)=acd304(31)+acd304(30)
      acd304(30)=acd304(9)*acd304(30)
      acd304(29)=-acd304(23)*acd304(29)
      acd304(26)=-acd304(5)*acd304(26)
      acd304(26)=acd304(26)+acd304(29)
      acd304(26)=acd304(10)*acd304(26)
      acd304(29)=acd304(17)*acd304(16)
      acd304(31)=acd304(20)*acd304(19)
      acd304(29)=acd304(29)+acd304(31)
      acd304(31)=-acd304(18)*acd304(29)
      acd304(32)=-acd304(3)*acd304(28)
      acd304(31)=acd304(32)+acd304(31)
      acd304(31)=acd304(13)*acd304(31)
      acd304(29)=-acd304(23)*acd304(29)
      acd304(28)=-acd304(5)*acd304(28)
      acd304(28)=acd304(28)+acd304(29)
      acd304(28)=acd304(14)*acd304(28)
      brack=acd304(24)+acd304(25)+acd304(26)+acd304(27)+acd304(28)+acd304(30)+a&
      &cd304(31)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd304h5
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
!---#[ subroutine reconstruct_d304:
   subroutine     reconstruct_d304(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_304:
      coeffs%coeffs_304%c0 = derivative(czip)
      coeffs%coeffs_304%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_304%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_304%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_304%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_304%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_304%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_304%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_304%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_304%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_304%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_304%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_304%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_304%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_304%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_304%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_304%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_304%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_304%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_304%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_304%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_304%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_304%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_304%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_304%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_304%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_304%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_304%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_304%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_304%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_304%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_304%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_304%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_304%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_304%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_304:
   end subroutine reconstruct_d304
!---#] subroutine reconstruct_d304:
end module     p0_dbaru_epnebbbarg_d304h5l1d
