module     p0_dbaru_epnebbbarg_d101h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d101h4l1d.f90
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
   public :: derivative , reconstruct_d101
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd101h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd101
      complex(ki) :: brack
      acd101(1)=dotproduct(k1,qshift)
      acd101(2)=abb101(23)
      acd101(3)=dotproduct(k2,qshift)
      acd101(4)=dotproduct(qshift,spvak1k2)
      acd101(5)=abb101(30)
      acd101(6)=dotproduct(qshift,spval6k2)
      acd101(7)=abb101(44)
      acd101(8)=dotproduct(qshift,spvak7k2)
      acd101(9)=abb101(55)
      acd101(10)=abb101(28)
      acd101(11)=dotproduct(k3,qshift)
      acd101(12)=abb101(41)
      acd101(13)=abb101(52)
      acd101(14)=dotproduct(k4,qshift)
      acd101(15)=dotproduct(l6,qshift)
      acd101(16)=abb101(12)
      acd101(17)=dotproduct(k7,qshift)
      acd101(18)=abb101(11)
      acd101(19)=abb101(14)
      acd101(20)=dotproduct(qshift,spvak4k2)
      acd101(21)=abb101(13)
      acd101(22)=dotproduct(qshift,spvak4k3)
      acd101(23)=abb101(20)
      acd101(24)=dotproduct(qshift,spval5k2)
      acd101(25)=abb101(17)
      acd101(26)=abb101(21)
      acd101(27)=abb101(19)
      acd101(28)=abb101(32)
      acd101(29)=abb101(63)
      acd101(30)=dotproduct(qshift,spvak1k3)
      acd101(31)=abb101(31)
      acd101(32)=dotproduct(qshift,spval5k3)
      acd101(33)=abb101(60)
      acd101(34)=abb101(40)
      acd101(35)=abb101(24)
      acd101(36)=abb101(25)
      acd101(37)=abb101(62)
      acd101(38)=abb101(29)
      acd101(39)=abb101(59)
      acd101(40)=abb101(51)
      acd101(41)=abb101(15)
      acd101(42)=abb101(16)
      acd101(43)=abb101(34)
      acd101(44)=abb101(37)
      acd101(45)=abb101(58)
      acd101(46)=dotproduct(qshift,spval5l6)
      acd101(47)=abb101(36)
      acd101(48)=dotproduct(qshift,spval5k7)
      acd101(49)=abb101(57)
      acd101(50)=abb101(22)
      acd101(51)=acd101(11)+acd101(14)
      acd101(52)=-acd101(12)*acd101(51)
      acd101(53)=-acd101(17)-acd101(15)
      acd101(53)=acd101(16)*acd101(53)
      acd101(54)=acd101(22)*acd101(23)
      acd101(55)=acd101(20)*acd101(21)
      acd101(56)=acd101(3)*acd101(5)
      acd101(57)=acd101(24)*acd101(25)
      acd101(58)=acd101(8)*acd101(19)
      acd101(59)=acd101(6)*acd101(18)
      acd101(52)=acd101(59)+acd101(58)+acd101(57)+acd101(56)+acd101(55)+acd101(&
      &54)-acd101(26)+acd101(53)+acd101(52)
      acd101(52)=acd101(4)*acd101(52)
      acd101(53)=acd101(51)-acd101(3)
      acd101(54)=-acd101(9)*acd101(53)
      acd101(55)=acd101(32)*acd101(39)
      acd101(56)=acd101(30)*acd101(38)
      acd101(57)=acd101(22)*acd101(36)
      acd101(58)=acd101(20)*acd101(35)
      acd101(59)=acd101(24)*acd101(37)
      acd101(54)=acd101(59)+acd101(58)+acd101(57)+acd101(56)-acd101(40)+acd101(&
      &55)+acd101(54)
      acd101(54)=acd101(8)*acd101(54)
      acd101(53)=acd101(7)*acd101(53)
      acd101(55)=acd101(32)*acd101(33)
      acd101(56)=acd101(30)*acd101(31)
      acd101(57)=acd101(22)*acd101(28)
      acd101(58)=acd101(20)*acd101(27)
      acd101(59)=acd101(24)*acd101(29)
      acd101(53)=acd101(59)+acd101(58)+acd101(57)+acd101(56)-acd101(34)+acd101(&
      &55)+acd101(53)
      acd101(53)=acd101(6)*acd101(53)
      acd101(51)=-acd101(13)*acd101(51)
      acd101(55)=-acd101(48)*acd101(49)
      acd101(56)=-acd101(46)*acd101(47)
      acd101(57)=-acd101(1)*acd101(2)
      acd101(58)=-acd101(32)*acd101(45)
      acd101(59)=-acd101(22)*acd101(42)
      acd101(60)=-acd101(20)*acd101(41)
      acd101(61)=-acd101(3)*acd101(10)
      acd101(62)=acd101(30)*acd101(43)
      acd101(62)=-acd101(44)+acd101(62)
      acd101(62)=acd101(24)*acd101(62)
      brack=acd101(50)+acd101(51)+acd101(52)+acd101(53)+acd101(54)+acd101(55)+a&
      &cd101(56)+acd101(57)+acd101(58)+acd101(59)+acd101(60)+acd101(61)+acd101(&
      &62)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd101h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(78) :: acd101
      complex(ki) :: brack
      acd101(1)=k1(iv1)
      acd101(2)=abb101(23)
      acd101(3)=k2(iv1)
      acd101(4)=dotproduct(qshift,spvak1k2)
      acd101(5)=abb101(30)
      acd101(6)=dotproduct(qshift,spval6k2)
      acd101(7)=abb101(44)
      acd101(8)=dotproduct(qshift,spvak7k2)
      acd101(9)=abb101(55)
      acd101(10)=abb101(28)
      acd101(11)=k3(iv1)
      acd101(12)=abb101(41)
      acd101(13)=abb101(52)
      acd101(14)=k4(iv1)
      acd101(15)=l6(iv1)
      acd101(16)=abb101(12)
      acd101(17)=k7(iv1)
      acd101(18)=spvak1k2(iv1)
      acd101(19)=dotproduct(k2,qshift)
      acd101(20)=dotproduct(k3,qshift)
      acd101(21)=dotproduct(k4,qshift)
      acd101(22)=dotproduct(l6,qshift)
      acd101(23)=dotproduct(k7,qshift)
      acd101(24)=abb101(11)
      acd101(25)=abb101(14)
      acd101(26)=dotproduct(qshift,spvak4k2)
      acd101(27)=abb101(13)
      acd101(28)=dotproduct(qshift,spvak4k3)
      acd101(29)=abb101(20)
      acd101(30)=dotproduct(qshift,spval5k2)
      acd101(31)=abb101(17)
      acd101(32)=abb101(21)
      acd101(33)=spval6k2(iv1)
      acd101(34)=abb101(19)
      acd101(35)=abb101(32)
      acd101(36)=abb101(63)
      acd101(37)=dotproduct(qshift,spvak1k3)
      acd101(38)=abb101(31)
      acd101(39)=dotproduct(qshift,spval5k3)
      acd101(40)=abb101(60)
      acd101(41)=abb101(40)
      acd101(42)=spvak7k2(iv1)
      acd101(43)=abb101(24)
      acd101(44)=abb101(25)
      acd101(45)=abb101(62)
      acd101(46)=abb101(29)
      acd101(47)=abb101(59)
      acd101(48)=abb101(51)
      acd101(49)=spvak4k2(iv1)
      acd101(50)=abb101(15)
      acd101(51)=spvak4k3(iv1)
      acd101(52)=abb101(16)
      acd101(53)=spval5k2(iv1)
      acd101(54)=abb101(34)
      acd101(55)=abb101(37)
      acd101(56)=spvak1k3(iv1)
      acd101(57)=spval5k3(iv1)
      acd101(58)=abb101(58)
      acd101(59)=spval5l6(iv1)
      acd101(60)=abb101(36)
      acd101(61)=spval5k7(iv1)
      acd101(62)=abb101(57)
      acd101(63)=acd101(11)+acd101(14)
      acd101(64)=-acd101(12)*acd101(63)
      acd101(65)=acd101(51)*acd101(29)
      acd101(66)=acd101(49)*acd101(27)
      acd101(67)=-acd101(17)-acd101(15)
      acd101(67)=acd101(16)*acd101(67)
      acd101(68)=acd101(3)*acd101(5)
      acd101(69)=acd101(53)*acd101(31)
      acd101(70)=acd101(42)*acd101(25)
      acd101(71)=acd101(33)*acd101(24)
      acd101(64)=acd101(71)+acd101(70)+acd101(69)+acd101(68)+acd101(67)+acd101(&
      &65)+acd101(66)+acd101(64)
      acd101(64)=acd101(4)*acd101(64)
      acd101(65)=acd101(28)*acd101(29)
      acd101(66)=acd101(26)*acd101(27)
      acd101(67)=acd101(19)*acd101(5)
      acd101(68)=acd101(30)*acd101(31)
      acd101(69)=-acd101(23)-acd101(22)
      acd101(69)=acd101(16)*acd101(69)
      acd101(70)=acd101(20)+acd101(21)
      acd101(71)=-acd101(12)*acd101(70)
      acd101(72)=acd101(8)*acd101(25)
      acd101(73)=acd101(6)*acd101(24)
      acd101(65)=acd101(73)+acd101(72)+acd101(71)+acd101(69)+acd101(68)+acd101(&
      &67)+acd101(66)-acd101(32)+acd101(65)
      acd101(65)=acd101(18)*acd101(65)
      acd101(66)=acd101(57)*acd101(47)
      acd101(67)=acd101(56)*acd101(46)
      acd101(68)=acd101(51)*acd101(44)
      acd101(69)=acd101(49)*acd101(43)
      acd101(71)=acd101(53)*acd101(45)
      acd101(72)=acd101(3)-acd101(63)
      acd101(73)=acd101(9)*acd101(72)
      acd101(66)=acd101(73)+acd101(71)+acd101(69)+acd101(68)+acd101(66)+acd101(&
      &67)
      acd101(66)=acd101(8)*acd101(66)
      acd101(67)=acd101(57)*acd101(40)
      acd101(68)=acd101(56)*acd101(38)
      acd101(69)=acd101(51)*acd101(35)
      acd101(71)=acd101(49)*acd101(34)
      acd101(73)=acd101(53)*acd101(36)
      acd101(72)=-acd101(7)*acd101(72)
      acd101(67)=acd101(72)+acd101(73)+acd101(71)+acd101(69)+acd101(67)+acd101(&
      &68)
      acd101(67)=acd101(6)*acd101(67)
      acd101(68)=acd101(39)*acd101(47)
      acd101(69)=acd101(37)*acd101(46)
      acd101(71)=acd101(28)*acd101(44)
      acd101(72)=acd101(26)*acd101(43)
      acd101(73)=acd101(30)*acd101(45)
      acd101(70)=acd101(70)-acd101(19)
      acd101(74)=-acd101(9)*acd101(70)
      acd101(68)=acd101(74)+acd101(73)+acd101(72)+acd101(71)+acd101(69)-acd101(&
      &48)+acd101(68)
      acd101(68)=acd101(42)*acd101(68)
      acd101(69)=acd101(39)*acd101(40)
      acd101(71)=acd101(37)*acd101(38)
      acd101(72)=acd101(28)*acd101(35)
      acd101(73)=acd101(26)*acd101(34)
      acd101(74)=acd101(30)*acd101(36)
      acd101(70)=acd101(7)*acd101(70)
      acd101(69)=acd101(70)+acd101(74)+acd101(73)+acd101(72)+acd101(71)-acd101(&
      &41)+acd101(69)
      acd101(69)=acd101(33)*acd101(69)
      acd101(63)=-acd101(13)*acd101(63)
      acd101(70)=-acd101(61)*acd101(62)
      acd101(71)=-acd101(59)*acd101(60)
      acd101(72)=-acd101(1)*acd101(2)
      acd101(73)=-acd101(57)*acd101(58)
      acd101(74)=-acd101(51)*acd101(52)
      acd101(75)=-acd101(49)*acd101(50)
      acd101(76)=acd101(30)*acd101(56)*acd101(54)
      acd101(77)=-acd101(3)*acd101(10)
      acd101(78)=acd101(37)*acd101(54)
      acd101(78)=-acd101(55)+acd101(78)
      acd101(78)=acd101(53)*acd101(78)
      brack=acd101(63)+acd101(64)+acd101(65)+acd101(66)+acd101(67)+acd101(68)+a&
      &cd101(69)+acd101(70)+acd101(71)+acd101(72)+acd101(73)+acd101(74)+acd101(&
      &75)+acd101(76)+acd101(77)+acd101(78)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd101h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd101
      complex(ki) :: brack
      acd101(1)=k2(iv1)
      acd101(2)=spvak1k2(iv2)
      acd101(3)=abb101(30)
      acd101(4)=spval6k2(iv2)
      acd101(5)=abb101(44)
      acd101(6)=spvak7k2(iv2)
      acd101(7)=abb101(55)
      acd101(8)=k2(iv2)
      acd101(9)=spvak1k2(iv1)
      acd101(10)=spval6k2(iv1)
      acd101(11)=spvak7k2(iv1)
      acd101(12)=k3(iv1)
      acd101(13)=abb101(41)
      acd101(14)=k3(iv2)
      acd101(15)=k4(iv1)
      acd101(16)=k4(iv2)
      acd101(17)=l6(iv1)
      acd101(18)=abb101(12)
      acd101(19)=l6(iv2)
      acd101(20)=k7(iv1)
      acd101(21)=k7(iv2)
      acd101(22)=abb101(11)
      acd101(23)=abb101(14)
      acd101(24)=spvak4k2(iv2)
      acd101(25)=abb101(13)
      acd101(26)=spvak4k3(iv2)
      acd101(27)=abb101(20)
      acd101(28)=spval5k2(iv2)
      acd101(29)=abb101(17)
      acd101(30)=spvak4k2(iv1)
      acd101(31)=spvak4k3(iv1)
      acd101(32)=spval5k2(iv1)
      acd101(33)=abb101(19)
      acd101(34)=abb101(32)
      acd101(35)=abb101(63)
      acd101(36)=spvak1k3(iv2)
      acd101(37)=abb101(31)
      acd101(38)=spval5k3(iv2)
      acd101(39)=abb101(60)
      acd101(40)=spvak1k3(iv1)
      acd101(41)=spval5k3(iv1)
      acd101(42)=abb101(24)
      acd101(43)=abb101(25)
      acd101(44)=abb101(62)
      acd101(45)=abb101(29)
      acd101(46)=abb101(59)
      acd101(47)=abb101(34)
      acd101(48)=acd101(26)*acd101(27)
      acd101(49)=acd101(24)*acd101(25)
      acd101(50)=acd101(8)*acd101(3)
      acd101(51)=acd101(28)*acd101(29)
      acd101(52)=-acd101(21)-acd101(19)
      acd101(52)=acd101(18)*acd101(52)
      acd101(53)=acd101(14)+acd101(16)
      acd101(54)=-acd101(13)*acd101(53)
      acd101(55)=acd101(6)*acd101(23)
      acd101(56)=acd101(4)*acd101(22)
      acd101(48)=acd101(56)+acd101(55)+acd101(54)+acd101(52)+acd101(51)+acd101(&
      &50)+acd101(48)+acd101(49)
      acd101(48)=acd101(9)*acd101(48)
      acd101(49)=acd101(31)*acd101(27)
      acd101(50)=acd101(30)*acd101(25)
      acd101(51)=acd101(1)*acd101(3)
      acd101(52)=acd101(32)*acd101(29)
      acd101(54)=-acd101(20)-acd101(17)
      acd101(54)=acd101(18)*acd101(54)
      acd101(55)=acd101(12)+acd101(15)
      acd101(56)=-acd101(13)*acd101(55)
      acd101(57)=acd101(11)*acd101(23)
      acd101(58)=acd101(10)*acd101(22)
      acd101(49)=acd101(58)+acd101(57)+acd101(56)+acd101(54)+acd101(52)+acd101(&
      &51)+acd101(49)+acd101(50)
      acd101(49)=acd101(2)*acd101(49)
      acd101(50)=acd101(38)*acd101(46)
      acd101(51)=acd101(36)*acd101(45)
      acd101(52)=acd101(26)*acd101(43)
      acd101(54)=acd101(24)*acd101(42)
      acd101(56)=acd101(28)*acd101(44)
      acd101(53)=acd101(53)-acd101(8)
      acd101(57)=-acd101(7)*acd101(53)
      acd101(50)=acd101(57)+acd101(56)+acd101(54)+acd101(52)+acd101(50)+acd101(&
      &51)
      acd101(50)=acd101(11)*acd101(50)
      acd101(51)=acd101(38)*acd101(39)
      acd101(52)=acd101(36)*acd101(37)
      acd101(54)=acd101(26)*acd101(34)
      acd101(56)=acd101(24)*acd101(33)
      acd101(57)=acd101(28)*acd101(35)
      acd101(53)=acd101(5)*acd101(53)
      acd101(51)=acd101(53)+acd101(57)+acd101(56)+acd101(54)+acd101(51)+acd101(&
      &52)
      acd101(51)=acd101(10)*acd101(51)
      acd101(52)=acd101(41)*acd101(46)
      acd101(53)=acd101(40)*acd101(45)
      acd101(54)=acd101(31)*acd101(43)
      acd101(56)=acd101(30)*acd101(42)
      acd101(57)=acd101(32)*acd101(44)
      acd101(55)=acd101(55)-acd101(1)
      acd101(58)=-acd101(7)*acd101(55)
      acd101(52)=acd101(58)+acd101(57)+acd101(56)+acd101(54)+acd101(52)+acd101(&
      &53)
      acd101(52)=acd101(6)*acd101(52)
      acd101(53)=acd101(39)*acd101(41)
      acd101(54)=acd101(40)*acd101(37)
      acd101(56)=acd101(31)*acd101(34)
      acd101(57)=acd101(30)*acd101(33)
      acd101(58)=acd101(32)*acd101(35)
      acd101(55)=acd101(5)*acd101(55)
      acd101(53)=acd101(55)+acd101(58)+acd101(57)+acd101(56)+acd101(53)+acd101(&
      &54)
      acd101(53)=acd101(4)*acd101(53)
      acd101(54)=acd101(32)*acd101(36)
      acd101(55)=acd101(28)*acd101(40)
      acd101(54)=acd101(54)+acd101(55)
      acd101(54)=acd101(47)*acd101(54)
      brack=acd101(48)+acd101(49)+acd101(50)+acd101(51)+acd101(52)+acd101(53)+a&
      &cd101(54)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd101h4
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
      qshift = -k7-k6-k5
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
!---#[ subroutine reconstruct_d101:
   subroutine     reconstruct_d101(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_101:
      coeffs%coeffs_101%c0 = derivative(czip)
      coeffs%coeffs_101%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_101%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_101%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_101%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_101%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_101%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_101%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_101%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_101%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_101%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_101%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_101%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_101%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_101%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_101:
   end subroutine reconstruct_d101
!---#] subroutine reconstruct_d101:
end module     p0_dbaru_epnebbbarg_d101h4l1d
