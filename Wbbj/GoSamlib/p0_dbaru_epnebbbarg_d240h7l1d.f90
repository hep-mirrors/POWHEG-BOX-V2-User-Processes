module     p0_dbaru_epnebbbarg_d240h7l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d240h7l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d240
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd240h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd240
      complex(ki) :: brack
      acd240(1)=abb240(26)
      brack=acd240(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd240h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(82) :: acd240
      complex(ki) :: brack
      acd240(1)=k2(iv1)
      acd240(2)=abb240(20)
      acd240(3)=k3(iv1)
      acd240(4)=abb240(139)
      acd240(5)=k4(iv1)
      acd240(6)=l5(iv1)
      acd240(7)=abb240(58)
      acd240(8)=l6(iv1)
      acd240(9)=abb240(38)
      acd240(10)=k7(iv1)
      acd240(11)=abb240(52)
      acd240(12)=spvak1k2(iv1)
      acd240(13)=abb240(16)
      acd240(14)=spvak1l5(iv1)
      acd240(15)=abb240(18)
      acd240(16)=spvak1l6(iv1)
      acd240(17)=abb240(53)
      acd240(18)=spvak1k7(iv1)
      acd240(19)=abb240(64)
      acd240(20)=spvak2k3(iv1)
      acd240(21)=abb240(50)
      acd240(22)=spvak2l5(iv1)
      acd240(23)=abb240(22)
      acd240(24)=spvak2l6(iv1)
      acd240(25)=abb240(51)
      acd240(26)=spvak4k2(iv1)
      acd240(27)=abb240(129)
      acd240(28)=spvak4k3(iv1)
      acd240(29)=abb240(40)
      acd240(30)=spvak4l5(iv1)
      acd240(31)=abb240(96)
      acd240(32)=spvak4l6(iv1)
      acd240(33)=abb240(132)
      acd240(34)=spvak4k7(iv1)
      acd240(35)=abb240(77)
      acd240(36)=spval5k2(iv1)
      acd240(37)=abb240(49)
      acd240(38)=spval5k3(iv1)
      acd240(39)=abb240(90)
      acd240(40)=spval5l6(iv1)
      acd240(41)=abb240(19)
      acd240(42)=spval6k2(iv1)
      acd240(43)=abb240(41)
      acd240(44)=spval6k3(iv1)
      acd240(45)=abb240(146)
      acd240(46)=spval6l5(iv1)
      acd240(47)=abb240(48)
      acd240(48)=spvak7k2(iv1)
      acd240(49)=abb240(29)
      acd240(50)=spvak7k3(iv1)
      acd240(51)=abb240(60)
      acd240(52)=spvak7l5(iv1)
      acd240(53)=abb240(23)
      acd240(54)=spvak7l6(iv1)
      acd240(55)=abb240(34)
      acd240(56)=acd240(5)+acd240(3)
      acd240(56)=acd240(4)*acd240(56)
      acd240(57)=-acd240(2)*acd240(1)
      acd240(58)=-acd240(7)*acd240(6)
      acd240(59)=-acd240(9)*acd240(8)
      acd240(60)=-acd240(11)*acd240(10)
      acd240(61)=-acd240(13)*acd240(12)
      acd240(62)=-acd240(15)*acd240(14)
      acd240(63)=-acd240(17)*acd240(16)
      acd240(64)=-acd240(19)*acd240(18)
      acd240(65)=-acd240(21)*acd240(20)
      acd240(66)=-acd240(23)*acd240(22)
      acd240(67)=-acd240(25)*acd240(24)
      acd240(68)=-acd240(27)*acd240(26)
      acd240(69)=-acd240(29)*acd240(28)
      acd240(70)=-acd240(31)*acd240(30)
      acd240(71)=-acd240(33)*acd240(32)
      acd240(72)=-acd240(35)*acd240(34)
      acd240(73)=-acd240(37)*acd240(36)
      acd240(74)=-acd240(39)*acd240(38)
      acd240(75)=-acd240(41)*acd240(40)
      acd240(76)=-acd240(43)*acd240(42)
      acd240(77)=-acd240(45)*acd240(44)
      acd240(78)=-acd240(47)*acd240(46)
      acd240(79)=-acd240(49)*acd240(48)
      acd240(80)=-acd240(51)*acd240(50)
      acd240(81)=-acd240(53)*acd240(52)
      acd240(82)=-acd240(55)*acd240(54)
      brack=acd240(56)+acd240(57)+acd240(58)+acd240(59)+acd240(60)+acd240(61)+a&
      &cd240(62)+acd240(63)+acd240(64)+acd240(65)+acd240(66)+acd240(67)+acd240(&
      &68)+acd240(69)+acd240(70)+acd240(71)+acd240(72)+acd240(73)+acd240(74)+ac&
      &d240(75)+acd240(76)+acd240(77)+acd240(78)+acd240(79)+acd240(80)+acd240(8&
      &1)+acd240(82)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd240h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(106) :: acd240
      complex(ki) :: brack
      acd240(1)=d(iv1,iv2)
      acd240(2)=abb240(30)
      acd240(3)=k2(iv1)
      acd240(4)=k2(iv2)
      acd240(5)=abb240(56)
      acd240(6)=k3(iv2)
      acd240(7)=k4(iv2)
      acd240(8)=l5(iv2)
      acd240(9)=abb240(397)
      acd240(10)=l6(iv2)
      acd240(11)=abb240(195)
      acd240(12)=k7(iv2)
      acd240(13)=abb240(436)
      acd240(14)=spvak1k2(iv2)
      acd240(15)=abb240(17)
      acd240(16)=spvak1k3(iv2)
      acd240(17)=abb240(94)
      acd240(18)=spvak2l5(iv2)
      acd240(19)=abb240(35)
      acd240(20)=spvak2l6(iv2)
      acd240(21)=abb240(108)
      acd240(22)=spvak4k2(iv2)
      acd240(23)=abb240(103)
      acd240(24)=spvak4k3(iv2)
      acd240(25)=abb240(135)
      acd240(26)=spval5l6(iv2)
      acd240(27)=abb240(84)
      acd240(28)=spvak7k2(iv2)
      acd240(29)=abb240(46)
      acd240(30)=spvak7l6(iv2)
      acd240(31)=abb240(89)
      acd240(32)=k3(iv1)
      acd240(33)=k4(iv1)
      acd240(34)=l5(iv1)
      acd240(35)=l6(iv1)
      acd240(36)=k7(iv1)
      acd240(37)=spvak1k2(iv1)
      acd240(38)=spvak1k3(iv1)
      acd240(39)=spvak2l5(iv1)
      acd240(40)=spvak2l6(iv1)
      acd240(41)=spvak4k2(iv1)
      acd240(42)=spvak4k3(iv1)
      acd240(43)=spval5l6(iv1)
      acd240(44)=spvak7k2(iv1)
      acd240(45)=spvak7l6(iv1)
      acd240(46)=abb240(33)
      acd240(47)=abb240(79)
      acd240(48)=abb240(153)
      acd240(49)=abb240(288)
      acd240(50)=abb240(36)
      acd240(51)=abb240(186)
      acd240(52)=abb240(234)
      acd240(53)=abb240(67)
      acd240(54)=abb240(231)
      acd240(55)=abb240(269)
      acd240(56)=abb240(37)
      acd240(57)=abb240(32)
      acd240(58)=abb240(31)
      acd240(59)=abb240(21)
      acd240(60)=abb240(24)
      acd240(61)=spval6l5(iv2)
      acd240(62)=abb240(28)
      acd240(63)=spvak7l5(iv2)
      acd240(64)=abb240(27)
      acd240(65)=spval6l5(iv1)
      acd240(66)=spvak7l5(iv1)
      acd240(67)=abb240(44)
      acd240(68)=abb240(118)
      acd240(69)=abb240(114)
      acd240(70)=abb240(111)
      acd240(71)=abb240(104)
      acd240(72)=abb240(116)
      acd240(73)=abb240(107)
      acd240(74)=abb240(83)
      acd240(75)=abb240(25)
      acd240(76)=abb240(74)
      acd240(77)=abb240(126)
      acd240(78)=abb240(185)
      acd240(79)=abb240(113)
      acd240(80)=abb240(47)
      acd240(81)=abb240(142)
      acd240(82)=abb240(160)
      acd240(83)=abb240(267)
      acd240(84)=abb240(266)
      acd240(85)=abb240(156)
      acd240(86)=acd240(63)*acd240(82)
      acd240(87)=acd240(61)*acd240(81)
      acd240(88)=acd240(30)*acd240(80)
      acd240(89)=acd240(28)*acd240(79)
      acd240(90)=acd240(26)*acd240(78)
      acd240(91)=acd240(20)*acd240(76)
      acd240(92)=acd240(18)*acd240(74)
      acd240(93)=acd240(12)*acd240(54)
      acd240(94)=acd240(10)*acd240(51)
      acd240(95)=acd240(8)*acd240(48)
      acd240(86)=acd240(95)+acd240(94)+acd240(93)+acd240(92)+acd240(91)+acd240(&
      &90)+acd240(89)+acd240(88)+acd240(86)+acd240(87)
      acd240(86)=acd240(41)*acd240(86)
      acd240(87)=acd240(63)*acd240(64)
      acd240(88)=acd240(61)*acd240(62)
      acd240(89)=acd240(30)*acd240(60)
      acd240(90)=acd240(28)*acd240(59)
      acd240(91)=acd240(26)*acd240(58)
      acd240(92)=acd240(20)*acd240(57)
      acd240(93)=acd240(18)*acd240(56)
      acd240(94)=acd240(12)*acd240(53)
      acd240(95)=acd240(10)*acd240(50)
      acd240(96)=acd240(8)*acd240(46)
      acd240(87)=acd240(96)+acd240(95)+acd240(94)+acd240(93)+acd240(92)+acd240(&
      &91)+acd240(90)+acd240(89)+acd240(87)+acd240(88)
      acd240(87)=acd240(37)*acd240(87)
      acd240(88)=acd240(66)*acd240(82)
      acd240(89)=acd240(65)*acd240(81)
      acd240(90)=acd240(45)*acd240(80)
      acd240(91)=acd240(44)*acd240(79)
      acd240(92)=acd240(43)*acd240(78)
      acd240(93)=acd240(40)*acd240(76)
      acd240(94)=acd240(39)*acd240(74)
      acd240(95)=acd240(36)*acd240(54)
      acd240(96)=acd240(35)*acd240(51)
      acd240(97)=acd240(34)*acd240(48)
      acd240(88)=acd240(97)+acd240(96)+acd240(95)+acd240(94)+acd240(93)+acd240(&
      &92)+acd240(91)+acd240(90)+acd240(88)+acd240(89)
      acd240(88)=acd240(22)*acd240(88)
      acd240(89)=acd240(66)*acd240(64)
      acd240(90)=acd240(65)*acd240(62)
      acd240(91)=acd240(45)*acd240(60)
      acd240(92)=acd240(44)*acd240(59)
      acd240(93)=acd240(43)*acd240(58)
      acd240(94)=acd240(40)*acd240(57)
      acd240(95)=acd240(39)*acd240(56)
      acd240(96)=acd240(36)*acd240(53)
      acd240(97)=acd240(35)*acd240(50)
      acd240(98)=acd240(34)*acd240(46)
      acd240(89)=acd240(98)+acd240(97)+acd240(96)+acd240(95)+acd240(94)+acd240(&
      &93)+acd240(92)+acd240(91)+acd240(89)+acd240(90)
      acd240(89)=acd240(14)*acd240(89)
      acd240(90)=acd240(45)*acd240(31)
      acd240(91)=acd240(44)*acd240(29)
      acd240(92)=acd240(43)*acd240(27)
      acd240(93)=acd240(40)*acd240(21)
      acd240(94)=acd240(39)*acd240(19)
      acd240(95)=acd240(36)*acd240(13)
      acd240(96)=acd240(35)*acd240(11)
      acd240(97)=acd240(34)*acd240(9)
      acd240(90)=acd240(93)+acd240(92)+acd240(91)-acd240(90)-acd240(96)-acd240(&
      &97)+acd240(94)+acd240(95)
      acd240(91)=acd240(6)+acd240(7)
      acd240(92)=-acd240(90)*acd240(91)
      acd240(93)=acd240(30)*acd240(31)
      acd240(94)=acd240(28)*acd240(29)
      acd240(95)=acd240(26)*acd240(27)
      acd240(96)=acd240(20)*acd240(21)
      acd240(97)=acd240(18)*acd240(19)
      acd240(98)=acd240(12)*acd240(13)
      acd240(99)=acd240(10)*acd240(11)
      acd240(100)=acd240(8)*acd240(9)
      acd240(93)=acd240(100)+acd240(99)-acd240(98)-acd240(97)-acd240(96)-acd240&
      &(95)+acd240(93)-acd240(94)
      acd240(94)=acd240(32)+acd240(33)
      acd240(95)=acd240(93)*acd240(94)
      acd240(96)=acd240(30)*acd240(85)
      acd240(97)=acd240(28)*acd240(84)
      acd240(98)=acd240(26)*acd240(83)
      acd240(99)=acd240(20)*acd240(77)
      acd240(100)=acd240(18)*acd240(75)
      acd240(101)=acd240(12)*acd240(55)
      acd240(102)=acd240(10)*acd240(52)
      acd240(103)=acd240(8)*acd240(49)
      acd240(96)=acd240(103)+acd240(102)+acd240(101)+acd240(100)+acd240(99)+acd&
      &240(98)+acd240(96)+acd240(97)
      acd240(96)=acd240(42)*acd240(96)
      acd240(97)=acd240(45)*acd240(85)
      acd240(98)=acd240(44)*acd240(84)
      acd240(99)=acd240(43)*acd240(83)
      acd240(100)=acd240(40)*acd240(77)
      acd240(101)=acd240(39)*acd240(75)
      acd240(102)=acd240(36)*acd240(55)
      acd240(103)=acd240(35)*acd240(52)
      acd240(104)=acd240(34)*acd240(49)
      acd240(97)=acd240(104)+acd240(103)+acd240(102)+acd240(101)+acd240(100)+ac&
      &d240(99)+acd240(97)+acd240(98)
      acd240(97)=acd240(24)*acd240(97)
      acd240(98)=-acd240(8)-acd240(10)+acd240(12)
      acd240(98)=acd240(47)*acd240(98)
      acd240(99)=acd240(63)*acd240(73)
      acd240(100)=acd240(61)*acd240(72)
      acd240(101)=acd240(30)*acd240(71)
      acd240(102)=acd240(28)*acd240(70)
      acd240(103)=acd240(26)*acd240(69)
      acd240(104)=acd240(20)*acd240(68)
      acd240(105)=acd240(18)*acd240(67)
      acd240(98)=acd240(105)+acd240(104)+acd240(103)+acd240(102)+acd240(101)+ac&
      &d240(99)+acd240(100)+acd240(98)
      acd240(98)=acd240(38)*acd240(98)
      acd240(99)=-acd240(34)-acd240(35)+acd240(36)
      acd240(99)=acd240(47)*acd240(99)
      acd240(100)=acd240(66)*acd240(73)
      acd240(101)=acd240(65)*acd240(72)
      acd240(102)=acd240(45)*acd240(71)
      acd240(103)=acd240(44)*acd240(70)
      acd240(104)=acd240(43)*acd240(69)
      acd240(105)=acd240(40)*acd240(68)
      acd240(106)=acd240(39)*acd240(67)
      acd240(99)=acd240(106)+acd240(105)+acd240(104)+acd240(103)+acd240(102)+ac&
      &d240(100)+acd240(101)+acd240(99)
      acd240(99)=acd240(16)*acd240(99)
      acd240(94)=acd240(5)*acd240(94)
      acd240(100)=acd240(42)*acd240(25)
      acd240(101)=acd240(41)*acd240(23)
      acd240(102)=acd240(38)*acd240(17)
      acd240(103)=acd240(37)*acd240(15)
      acd240(90)=acd240(103)+acd240(102)+acd240(101)+acd240(100)+acd240(90)+acd&
      &240(94)
      acd240(90)=acd240(4)*acd240(90)
      acd240(91)=-2.0_ki*acd240(4)+acd240(91)
      acd240(91)=acd240(5)*acd240(91)
      acd240(94)=acd240(24)*acd240(25)
      acd240(100)=acd240(22)*acd240(23)
      acd240(101)=acd240(16)*acd240(17)
      acd240(102)=acd240(14)*acd240(15)
      acd240(91)=acd240(102)+acd240(101)+acd240(100)+acd240(94)+acd240(91)-acd2&
      &40(93)
      acd240(91)=acd240(3)*acd240(91)
      acd240(93)=acd240(1)*acd240(2)
      brack=acd240(86)+acd240(87)+acd240(88)+acd240(89)+acd240(90)+acd240(91)+a&
      &cd240(92)+2.0_ki*acd240(93)+acd240(95)+acd240(96)+acd240(97)+acd240(98)+&
      &acd240(99)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd240h7
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d240:
   subroutine     reconstruct_d240(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_240:
      coeffs%coeffs_240%c0 = derivative(czip)
      coeffs%coeffs_240%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_240%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_240%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_240%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_240%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_240%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_240%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_240%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_240%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_240%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_240%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_240%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_240%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_240%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_240:
   end subroutine reconstruct_d240
!---#] subroutine reconstruct_d240:
end module     p0_dbaru_epnebbbarg_d240h7l1d
