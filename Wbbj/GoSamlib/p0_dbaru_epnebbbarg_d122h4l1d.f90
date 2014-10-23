module     p0_dbaru_epnebbbarg_d122h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d122h4l1d.f90
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
   public :: derivative , reconstruct_d122
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd122h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd122
      complex(ki) :: brack
      acd122(1)=dotproduct(k2,qshift)
      acd122(2)=dotproduct(qshift,spvak1k2)
      acd122(3)=abb122(31)
      acd122(4)=dotproduct(qshift,spval6k2)
      acd122(5)=abb122(30)
      acd122(6)=dotproduct(qshift,spvak7k2)
      acd122(7)=abb122(67)
      acd122(8)=abb122(25)
      acd122(9)=dotproduct(k3,qshift)
      acd122(10)=dotproduct(qshift,spvak4k2)
      acd122(11)=abb122(29)
      acd122(12)=abb122(37)
      acd122(13)=dotproduct(k4,qshift)
      acd122(14)=dotproduct(l6,qshift)
      acd122(15)=abb122(33)
      acd122(16)=dotproduct(k7,qshift)
      acd122(17)=dotproduct(qshift,qshift)
      acd122(18)=abb122(45)
      acd122(19)=abb122(34)
      acd122(20)=abb122(32)
      acd122(21)=abb122(28)
      acd122(22)=abb122(13)
      acd122(23)=dotproduct(qshift,spvak1l6)
      acd122(24)=abb122(23)
      acd122(25)=dotproduct(qshift,spvak4k3)
      acd122(26)=abb122(26)
      acd122(27)=dotproduct(qshift,spvak7k3)
      acd122(28)=abb122(16)
      acd122(29)=abb122(24)
      acd122(30)=abb122(14)
      acd122(31)=dotproduct(qshift,spvak1k7)
      acd122(32)=abb122(21)
      acd122(33)=dotproduct(qshift,spval6k3)
      acd122(34)=abb122(27)
      acd122(35)=abb122(19)
      acd122(36)=abb122(20)
      acd122(37)=abb122(18)
      acd122(38)=dotproduct(qshift,spvak1k3)
      acd122(39)=abb122(12)
      acd122(40)=dotproduct(qshift,spvak3k2)
      acd122(41)=abb122(22)
      acd122(42)=abb122(17)
      acd122(43)=dotproduct(qshift,spval5k2)
      acd122(44)=abb122(52)
      acd122(45)=abb122(61)
      acd122(46)=abb122(47)
      acd122(47)=dotproduct(qshift,spval6l5)
      acd122(48)=abb122(46)
      acd122(49)=dotproduct(qshift,spvak7l5)
      acd122(50)=abb122(51)
      acd122(51)=abb122(15)
      acd122(52)=acd122(9)+acd122(13)
      acd122(53)=acd122(52)-acd122(1)
      acd122(54)=-acd122(7)*acd122(53)
      acd122(55)=-acd122(28)*acd122(33)
      acd122(56)=acd122(24)*acd122(31)
      acd122(57)=acd122(25)*acd122(32)
      acd122(58)=acd122(2)*acd122(20)
      acd122(59)=acd122(10)*acd122(30)
      acd122(54)=acd122(59)+acd122(58)+acd122(57)+acd122(56)-acd122(34)+acd122(&
      &55)+acd122(54)
      acd122(54)=acd122(6)*acd122(54)
      acd122(53)=acd122(5)*acd122(53)
      acd122(55)=acd122(27)*acd122(28)
      acd122(56)=acd122(24)*acd122(23)
      acd122(57)=acd122(25)*acd122(26)
      acd122(58)=acd122(2)*acd122(19)
      acd122(59)=acd122(10)*acd122(22)
      acd122(53)=acd122(59)+acd122(58)+acd122(57)+acd122(56)-acd122(29)+acd122(&
      &55)+acd122(53)
      acd122(53)=acd122(4)*acd122(53)
      acd122(55)=-acd122(11)*acd122(52)
      acd122(56)=acd122(25)*acd122(36)
      acd122(57)=acd122(10)*acd122(35)
      acd122(55)=acd122(57)+acd122(56)-acd122(37)+acd122(55)
      acd122(55)=acd122(10)*acd122(55)
      acd122(56)=-acd122(16)-acd122(14)
      acd122(56)=acd122(15)*acd122(56)
      acd122(57)=acd122(1)*acd122(3)
      acd122(56)=acd122(57)-acd122(21)+acd122(56)
      acd122(56)=acd122(2)*acd122(56)
      acd122(52)=-acd122(12)*acd122(52)
      acd122(57)=-acd122(49)*acd122(50)
      acd122(58)=-acd122(47)*acd122(48)
      acd122(59)=-acd122(43)*acd122(44)
      acd122(60)=-acd122(38)*acd122(39)
      acd122(61)=acd122(17)*acd122(18)
      acd122(62)=-acd122(33)*acd122(46)
      acd122(63)=-acd122(27)*acd122(45)
      acd122(64)=-acd122(1)*acd122(8)
      acd122(65)=acd122(40)*acd122(41)
      acd122(65)=-acd122(42)+acd122(65)
      acd122(65)=acd122(25)*acd122(65)
      brack=acd122(51)+acd122(52)+acd122(53)+acd122(54)+acd122(55)+acd122(56)+a&
      &cd122(57)+acd122(58)+acd122(59)+acd122(60)+acd122(61)+acd122(62)+acd122(&
      &63)+acd122(64)+acd122(65)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd122h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(84) :: acd122
      complex(ki) :: brack
      acd122(1)=k2(iv1)
      acd122(2)=dotproduct(qshift,spvak1k2)
      acd122(3)=abb122(31)
      acd122(4)=dotproduct(qshift,spval6k2)
      acd122(5)=abb122(30)
      acd122(6)=dotproduct(qshift,spvak7k2)
      acd122(7)=abb122(67)
      acd122(8)=abb122(25)
      acd122(9)=k3(iv1)
      acd122(10)=dotproduct(qshift,spvak4k2)
      acd122(11)=abb122(29)
      acd122(12)=abb122(37)
      acd122(13)=k4(iv1)
      acd122(14)=l6(iv1)
      acd122(15)=abb122(33)
      acd122(16)=k7(iv1)
      acd122(17)=qshift(iv1)
      acd122(18)=abb122(45)
      acd122(19)=spvak1k2(iv1)
      acd122(20)=dotproduct(k2,qshift)
      acd122(21)=dotproduct(l6,qshift)
      acd122(22)=dotproduct(k7,qshift)
      acd122(23)=abb122(34)
      acd122(24)=abb122(32)
      acd122(25)=abb122(28)
      acd122(26)=spval6k2(iv1)
      acd122(27)=dotproduct(k3,qshift)
      acd122(28)=dotproduct(k4,qshift)
      acd122(29)=abb122(13)
      acd122(30)=dotproduct(qshift,spvak1l6)
      acd122(31)=abb122(23)
      acd122(32)=dotproduct(qshift,spvak4k3)
      acd122(33)=abb122(26)
      acd122(34)=dotproduct(qshift,spvak7k3)
      acd122(35)=abb122(16)
      acd122(36)=abb122(24)
      acd122(37)=spvak7k2(iv1)
      acd122(38)=abb122(14)
      acd122(39)=dotproduct(qshift,spvak1k7)
      acd122(40)=abb122(21)
      acd122(41)=dotproduct(qshift,spval6k3)
      acd122(42)=abb122(27)
      acd122(43)=spvak4k2(iv1)
      acd122(44)=abb122(19)
      acd122(45)=abb122(20)
      acd122(46)=abb122(18)
      acd122(47)=spvak1k3(iv1)
      acd122(48)=abb122(12)
      acd122(49)=spvak1l6(iv1)
      acd122(50)=spvak1k7(iv1)
      acd122(51)=spvak3k2(iv1)
      acd122(52)=abb122(22)
      acd122(53)=spvak4k3(iv1)
      acd122(54)=dotproduct(qshift,spvak3k2)
      acd122(55)=abb122(17)
      acd122(56)=spval5k2(iv1)
      acd122(57)=abb122(52)
      acd122(58)=spvak7k3(iv1)
      acd122(59)=abb122(61)
      acd122(60)=spval6k3(iv1)
      acd122(61)=abb122(47)
      acd122(62)=spval6l5(iv1)
      acd122(63)=abb122(46)
      acd122(64)=spvak7l5(iv1)
      acd122(65)=abb122(51)
      acd122(66)=acd122(35)*acd122(60)
      acd122(67)=-acd122(31)*acd122(50)
      acd122(68)=-acd122(53)*acd122(40)
      acd122(69)=-acd122(19)*acd122(24)
      acd122(70)=acd122(9)+acd122(13)
      acd122(71)=acd122(1)-acd122(70)
      acd122(72)=-acd122(7)*acd122(71)
      acd122(73)=-acd122(43)*acd122(38)
      acd122(66)=acd122(73)+acd122(72)+acd122(69)+acd122(68)+acd122(66)+acd122(&
      &67)
      acd122(66)=acd122(6)*acd122(66)
      acd122(67)=-acd122(35)*acd122(58)
      acd122(68)=-acd122(31)*acd122(49)
      acd122(69)=-acd122(53)*acd122(33)
      acd122(72)=-acd122(19)*acd122(23)
      acd122(71)=acd122(5)*acd122(71)
      acd122(73)=-acd122(43)*acd122(29)
      acd122(67)=acd122(73)+acd122(71)+acd122(72)+acd122(69)+acd122(67)+acd122(&
      &68)
      acd122(67)=acd122(4)*acd122(67)
      acd122(68)=acd122(35)*acd122(41)
      acd122(69)=-acd122(32)*acd122(40)
      acd122(71)=-acd122(31)*acd122(39)
      acd122(72)=-acd122(2)*acd122(24)
      acd122(73)=-acd122(10)*acd122(38)
      acd122(74)=acd122(27)+acd122(28)
      acd122(75)=acd122(74)-acd122(20)
      acd122(76)=acd122(7)*acd122(75)
      acd122(68)=acd122(76)+acd122(73)+acd122(72)+acd122(71)+acd122(69)+acd122(&
      &42)+acd122(68)
      acd122(68)=acd122(37)*acd122(68)
      acd122(69)=-acd122(35)*acd122(34)
      acd122(71)=-acd122(32)*acd122(33)
      acd122(72)=-acd122(31)*acd122(30)
      acd122(73)=-acd122(2)*acd122(23)
      acd122(76)=-acd122(10)*acd122(29)
      acd122(75)=-acd122(5)*acd122(75)
      acd122(69)=acd122(75)+acd122(76)+acd122(73)+acd122(72)+acd122(71)+acd122(&
      &36)+acd122(69)
      acd122(69)=acd122(26)*acd122(69)
      acd122(71)=-acd122(32)*acd122(45)
      acd122(72)=acd122(11)*acd122(74)
      acd122(73)=acd122(10)*acd122(44)
      acd122(71)=-2.0_ki*acd122(73)+acd122(72)+acd122(46)+acd122(71)
      acd122(71)=acd122(43)*acd122(71)
      acd122(72)=acd122(16)+acd122(14)
      acd122(72)=acd122(15)*acd122(72)
      acd122(73)=-acd122(1)*acd122(3)
      acd122(72)=acd122(72)+acd122(73)
      acd122(72)=acd122(2)*acd122(72)
      acd122(73)=-acd122(20)*acd122(3)
      acd122(74)=acd122(22)+acd122(21)
      acd122(74)=acd122(15)*acd122(74)
      acd122(73)=acd122(74)+acd122(25)+acd122(73)
      acd122(73)=acd122(19)*acd122(73)
      acd122(74)=acd122(11)*acd122(70)
      acd122(75)=-acd122(53)*acd122(45)
      acd122(74)=acd122(75)+acd122(74)
      acd122(74)=acd122(10)*acd122(74)
      acd122(70)=acd122(12)*acd122(70)
      acd122(75)=acd122(64)*acd122(65)
      acd122(76)=acd122(62)*acd122(63)
      acd122(77)=acd122(56)*acd122(57)
      acd122(78)=acd122(47)*acd122(48)
      acd122(79)=acd122(17)*acd122(18)
      acd122(80)=acd122(60)*acd122(61)
      acd122(81)=acd122(58)*acd122(59)
      acd122(82)=-acd122(32)*acd122(52)*acd122(51)
      acd122(83)=acd122(1)*acd122(8)
      acd122(84)=-acd122(52)*acd122(54)
      acd122(84)=acd122(55)+acd122(84)
      acd122(84)=acd122(53)*acd122(84)
      brack=acd122(66)+acd122(67)+acd122(68)+acd122(69)+acd122(70)+acd122(71)+a&
      &cd122(72)+acd122(73)+acd122(74)+acd122(75)+acd122(76)+acd122(77)+acd122(&
      &78)-2.0_ki*acd122(79)+acd122(80)+acd122(81)+acd122(82)+acd122(83)+acd122&
      &(84)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd122h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd122
      complex(ki) :: brack
      acd122(1)=d(iv1,iv2)
      acd122(2)=abb122(45)
      acd122(3)=k2(iv1)
      acd122(4)=spvak1k2(iv2)
      acd122(5)=abb122(31)
      acd122(6)=spval6k2(iv2)
      acd122(7)=abb122(30)
      acd122(8)=spvak7k2(iv2)
      acd122(9)=abb122(67)
      acd122(10)=k2(iv2)
      acd122(11)=spvak1k2(iv1)
      acd122(12)=spval6k2(iv1)
      acd122(13)=spvak7k2(iv1)
      acd122(14)=k3(iv1)
      acd122(15)=spvak4k2(iv2)
      acd122(16)=abb122(29)
      acd122(17)=k3(iv2)
      acd122(18)=spvak4k2(iv1)
      acd122(19)=k4(iv1)
      acd122(20)=k4(iv2)
      acd122(21)=l6(iv1)
      acd122(22)=abb122(33)
      acd122(23)=l6(iv2)
      acd122(24)=k7(iv1)
      acd122(25)=k7(iv2)
      acd122(26)=abb122(34)
      acd122(27)=abb122(32)
      acd122(28)=abb122(13)
      acd122(29)=spvak1l6(iv2)
      acd122(30)=abb122(23)
      acd122(31)=spvak4k3(iv2)
      acd122(32)=abb122(26)
      acd122(33)=spvak7k3(iv2)
      acd122(34)=abb122(16)
      acd122(35)=spvak1l6(iv1)
      acd122(36)=spvak4k3(iv1)
      acd122(37)=spvak7k3(iv1)
      acd122(38)=abb122(14)
      acd122(39)=spvak1k7(iv2)
      acd122(40)=abb122(21)
      acd122(41)=spval6k3(iv2)
      acd122(42)=spvak1k7(iv1)
      acd122(43)=spval6k3(iv1)
      acd122(44)=abb122(19)
      acd122(45)=abb122(20)
      acd122(46)=spvak3k2(iv1)
      acd122(47)=abb122(22)
      acd122(48)=spvak3k2(iv2)
      acd122(49)=-acd122(34)*acd122(41)
      acd122(50)=acd122(31)*acd122(40)
      acd122(51)=acd122(30)*acd122(39)
      acd122(52)=acd122(4)*acd122(27)
      acd122(53)=acd122(15)*acd122(38)
      acd122(54)=acd122(17)+acd122(20)
      acd122(55)=acd122(54)-acd122(10)
      acd122(56)=-acd122(9)*acd122(55)
      acd122(49)=acd122(56)+acd122(53)+acd122(52)+acd122(51)+acd122(49)+acd122(&
      &50)
      acd122(49)=acd122(13)*acd122(49)
      acd122(50)=acd122(34)*acd122(33)
      acd122(51)=acd122(31)*acd122(32)
      acd122(52)=acd122(30)*acd122(29)
      acd122(53)=acd122(4)*acd122(26)
      acd122(56)=acd122(15)*acd122(28)
      acd122(55)=acd122(7)*acd122(55)
      acd122(50)=acd122(55)+acd122(56)+acd122(53)+acd122(52)+acd122(50)+acd122(&
      &51)
      acd122(50)=acd122(12)*acd122(50)
      acd122(51)=acd122(36)*acd122(40)
      acd122(52)=-acd122(34)*acd122(43)
      acd122(53)=acd122(30)*acd122(42)
      acd122(55)=acd122(11)*acd122(27)
      acd122(56)=acd122(18)*acd122(38)
      acd122(57)=acd122(14)+acd122(19)
      acd122(58)=acd122(57)-acd122(3)
      acd122(59)=-acd122(9)*acd122(58)
      acd122(51)=acd122(59)+acd122(56)+acd122(55)+acd122(53)+acd122(51)+acd122(&
      &52)
      acd122(51)=acd122(8)*acd122(51)
      acd122(52)=acd122(36)*acd122(32)
      acd122(53)=acd122(34)*acd122(37)
      acd122(55)=acd122(30)*acd122(35)
      acd122(56)=acd122(11)*acd122(26)
      acd122(59)=acd122(18)*acd122(28)
      acd122(58)=acd122(7)*acd122(58)
      acd122(52)=acd122(58)+acd122(59)+acd122(56)+acd122(55)+acd122(52)+acd122(&
      &53)
      acd122(52)=acd122(6)*acd122(52)
      acd122(53)=acd122(36)*acd122(45)
      acd122(55)=-acd122(16)*acd122(57)
      acd122(56)=acd122(18)*acd122(44)
      acd122(53)=2.0_ki*acd122(56)+acd122(53)+acd122(55)
      acd122(53)=acd122(15)*acd122(53)
      acd122(55)=acd122(36)*acd122(48)
      acd122(56)=acd122(31)*acd122(46)
      acd122(55)=acd122(56)+acd122(55)
      acd122(55)=acd122(47)*acd122(55)
      acd122(56)=acd122(10)*acd122(5)
      acd122(57)=-acd122(25)-acd122(23)
      acd122(57)=acd122(22)*acd122(57)
      acd122(56)=acd122(56)+acd122(57)
      acd122(56)=acd122(11)*acd122(56)
      acd122(57)=acd122(3)*acd122(5)
      acd122(58)=-acd122(24)-acd122(21)
      acd122(58)=acd122(22)*acd122(58)
      acd122(57)=acd122(57)+acd122(58)
      acd122(57)=acd122(4)*acd122(57)
      acd122(58)=acd122(31)*acd122(45)
      acd122(54)=-acd122(16)*acd122(54)
      acd122(54)=acd122(58)+acd122(54)
      acd122(54)=acd122(18)*acd122(54)
      acd122(58)=acd122(1)*acd122(2)
      brack=acd122(49)+acd122(50)+acd122(51)+acd122(52)+acd122(53)+acd122(54)+a&
      &cd122(55)+acd122(56)+acd122(57)+2.0_ki*acd122(58)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h4
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
      qshift = k7+k6+k5
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
!---#[ subroutine reconstruct_d122:
   subroutine     reconstruct_d122(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_122:
      coeffs%coeffs_122%c0 = derivative(czip)
      coeffs%coeffs_122%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_122%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_122%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_122%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_122%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_122%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_122%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_122%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_122%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_122%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_122%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_122%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_122%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_122%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_122:
   end subroutine reconstruct_d122
!---#] subroutine reconstruct_d122:
end module     p0_dbaru_epnebbbarg_d122h4l1d
