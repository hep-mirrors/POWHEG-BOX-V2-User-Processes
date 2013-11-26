module     p1_dbarc_epnebbbarg_d12h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d12h3l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d12
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd12h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd12
      complex(ki) :: brack
      acd12(1)=abb12(10)
      brack=acd12(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd12h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd12
      complex(ki) :: brack
      acd12(1)=k1(iv1)
      acd12(2)=abb12(47)
      acd12(3)=k2(iv1)
      acd12(4)=abb12(33)
      acd12(5)=k3(iv1)
      acd12(6)=abb12(29)
      acd12(7)=k4(iv1)
      acd12(8)=k7(iv1)
      acd12(9)=abb12(25)
      acd12(10)=spvak1k7(iv1)
      acd12(11)=abb12(16)
      acd12(12)=spvak2l5(iv1)
      acd12(13)=abb12(30)
      acd12(14)=spvak2l6(iv1)
      acd12(15)=abb12(37)
      acd12(16)=spvak3k2(iv1)
      acd12(17)=abb12(22)
      acd12(18)=spvak4k2(iv1)
      acd12(19)=abb12(7)
      acd12(20)=spvak4k3(iv1)
      acd12(21)=abb12(14)
      acd12(22)=spvak7k1(iv1)
      acd12(23)=abb12(12)
      acd12(24)=acd12(7)+acd12(5)
      acd12(24)=acd12(6)*acd12(24)
      acd12(25)=acd12(2)*acd12(1)
      acd12(26)=acd12(4)*acd12(3)
      acd12(27)=acd12(9)*acd12(8)
      acd12(28)=acd12(11)*acd12(10)
      acd12(29)=acd12(13)*acd12(12)
      acd12(30)=acd12(15)*acd12(14)
      acd12(31)=acd12(17)*acd12(16)
      acd12(32)=acd12(19)*acd12(18)
      acd12(33)=acd12(21)*acd12(20)
      acd12(34)=acd12(23)*acd12(22)
      brack=acd12(24)+acd12(25)+acd12(26)+acd12(27)+acd12(28)+acd12(29)+acd12(3&
      &0)+acd12(31)+acd12(32)+acd12(33)+acd12(34)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd12h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd12
      complex(ki) :: brack
      acd12(1)=d(iv1,iv2)
      acd12(2)=abb12(18)
      acd12(3)=k1(iv1)
      acd12(4)=spvak4k3(iv2)
      acd12(5)=abb12(42)
      acd12(6)=k1(iv2)
      acd12(7)=spvak4k3(iv1)
      acd12(8)=k2(iv1)
      acd12(9)=k2(iv2)
      acd12(10)=abb12(45)
      acd12(11)=k3(iv2)
      acd12(12)=k4(iv2)
      acd12(13)=abb12(32)
      acd12(14)=spvak1l5(iv2)
      acd12(15)=abb12(36)
      acd12(16)=spvak1l6(iv2)
      acd12(17)=abb12(31)
      acd12(18)=spvak2l5(iv2)
      acd12(19)=abb12(43)
      acd12(20)=spvak2l6(iv2)
      acd12(21)=abb12(57)
      acd12(22)=spvak4k2(iv2)
      acd12(23)=abb12(17)
      acd12(24)=spvak7l5(iv2)
      acd12(25)=abb12(51)
      acd12(26)=spvak7l6(iv2)
      acd12(27)=abb12(49)
      acd12(28)=k3(iv1)
      acd12(29)=k4(iv1)
      acd12(30)=spvak1l5(iv1)
      acd12(31)=spvak1l6(iv1)
      acd12(32)=spvak2l5(iv1)
      acd12(33)=spvak2l6(iv1)
      acd12(34)=spvak4k2(iv1)
      acd12(35)=spvak7l5(iv1)
      acd12(36)=spvak7l6(iv1)
      acd12(37)=k7(iv1)
      acd12(38)=abb12(19)
      acd12(39)=k7(iv2)
      acd12(40)=abb12(46)
      acd12(41)=abb12(35)
      acd12(42)=abb12(26)
      acd12(43)=abb12(55)
      acd12(44)=abb12(54)
      acd12(45)=spvak1k2(iv2)
      acd12(46)=abb12(24)
      acd12(47)=spvak1k7(iv2)
      acd12(48)=abb12(28)
      acd12(49)=spvak7k2(iv2)
      acd12(50)=abb12(56)
      acd12(51)=spvak3k2(iv2)
      acd12(52)=abb12(9)
      acd12(53)=spvak7k1(iv2)
      acd12(54)=abb12(38)
      acd12(55)=spvak1k2(iv1)
      acd12(56)=spvak1k7(iv1)
      acd12(57)=spvak7k2(iv1)
      acd12(58)=spvak3k2(iv1)
      acd12(59)=spvak7k1(iv1)
      acd12(60)=abb12(13)
      acd12(61)=abb12(27)
      acd12(62)=spvak1k3(iv2)
      acd12(63)=abb12(23)
      acd12(64)=abb12(52)
      acd12(65)=spvak7k3(iv2)
      acd12(66)=abb12(59)
      acd12(67)=spvak1k3(iv1)
      acd12(68)=spvak7k3(iv1)
      acd12(69)=abb12(21)
      acd12(70)=abb12(34)
      acd12(71)=abb12(48)
      acd12(72)=abb12(50)
      acd12(73)=abb12(58)
      acd12(74)=acd12(54)*acd12(53)
      acd12(75)=-acd12(52)*acd12(51)
      acd12(76)=acd12(48)*acd12(47)
      acd12(77)=acd12(38)*acd12(39)
      acd12(78)=acd12(5)*acd12(6)
      acd12(79)=acd12(49)*acd12(50)
      acd12(80)=acd12(45)*acd12(46)
      acd12(81)=acd12(26)*acd12(44)
      acd12(82)=acd12(24)*acd12(43)
      acd12(83)=acd12(16)*acd12(41)
      acd12(84)=acd12(14)*acd12(40)
      acd12(85)=acd12(22)*acd12(42)
      acd12(86)=acd12(9)*acd12(13)
      acd12(74)=acd12(86)+acd12(85)+acd12(84)+acd12(83)+acd12(82)+acd12(81)+acd&
      &12(80)+acd12(79)+acd12(78)+acd12(77)+acd12(76)+acd12(74)+acd12(75)
      acd12(74)=acd12(7)*acd12(74)
      acd12(75)=acd12(54)*acd12(59)
      acd12(76)=-acd12(52)*acd12(58)
      acd12(77)=acd12(48)*acd12(56)
      acd12(78)=acd12(38)*acd12(37)
      acd12(79)=acd12(5)*acd12(3)
      acd12(80)=acd12(57)*acd12(50)
      acd12(81)=acd12(55)*acd12(46)
      acd12(82)=acd12(36)*acd12(44)
      acd12(83)=acd12(35)*acd12(43)
      acd12(84)=acd12(31)*acd12(41)
      acd12(85)=acd12(30)*acd12(40)
      acd12(86)=acd12(34)*acd12(42)
      acd12(87)=acd12(8)*acd12(13)
      acd12(75)=acd12(87)+acd12(86)+acd12(85)+acd12(84)+acd12(83)+acd12(82)+acd&
      &12(81)+acd12(80)+acd12(79)+acd12(78)+acd12(77)+acd12(75)+acd12(76)
      acd12(75)=acd12(4)*acd12(75)
      acd12(76)=acd12(27)*acd12(36)
      acd12(77)=acd12(25)*acd12(35)
      acd12(78)=acd12(23)*acd12(34)
      acd12(79)=acd12(17)*acd12(31)
      acd12(80)=acd12(15)*acd12(30)
      acd12(76)=acd12(80)+acd12(76)+acd12(77)+acd12(78)+acd12(79)
      acd12(77)=acd12(11)+acd12(12)
      acd12(78)=acd12(76)*acd12(77)
      acd12(79)=acd12(68)*acd12(73)
      acd12(80)=acd12(67)*acd12(71)
      acd12(81)=acd12(57)*acd12(72)
      acd12(82)=acd12(55)*acd12(70)
      acd12(83)=acd12(34)*acd12(69)
      acd12(79)=acd12(83)+acd12(82)+acd12(81)+acd12(79)+acd12(80)
      acd12(79)=acd12(20)*acd12(79)
      acd12(80)=acd12(66)*acd12(68)
      acd12(81)=acd12(63)*acd12(67)
      acd12(82)=acd12(57)*acd12(64)
      acd12(83)=acd12(55)*acd12(61)
      acd12(84)=acd12(34)*acd12(60)
      acd12(80)=acd12(84)+acd12(83)+acd12(82)+acd12(80)+acd12(81)
      acd12(80)=acd12(18)*acd12(80)
      acd12(81)=acd12(28)+acd12(29)
      acd12(82)=acd12(10)*acd12(81)
      acd12(83)=acd12(33)*acd12(21)
      acd12(84)=acd12(32)*acd12(19)
      acd12(76)=acd12(83)+acd12(84)-acd12(76)+acd12(82)
      acd12(76)=acd12(9)*acd12(76)
      acd12(82)=acd12(27)*acd12(26)
      acd12(83)=acd12(25)*acd12(24)
      acd12(84)=acd12(17)*acd12(16)
      acd12(85)=acd12(15)*acd12(14)
      acd12(82)=acd12(82)+acd12(83)+acd12(84)+acd12(85)
      acd12(77)=-2.0_ki*acd12(9)+acd12(77)
      acd12(77)=acd12(10)*acd12(77)
      acd12(83)=-acd12(22)*acd12(23)
      acd12(84)=acd12(20)*acd12(21)
      acd12(85)=acd12(18)*acd12(19)
      acd12(77)=acd12(85)+acd12(84)+acd12(83)+acd12(77)-acd12(82)
      acd12(77)=acd12(8)*acd12(77)
      acd12(82)=acd12(81)*acd12(82)
      acd12(83)=acd12(65)*acd12(73)
      acd12(84)=acd12(62)*acd12(71)
      acd12(85)=acd12(49)*acd12(72)
      acd12(86)=acd12(45)*acd12(70)
      acd12(83)=acd12(86)+acd12(85)+acd12(83)+acd12(84)
      acd12(83)=acd12(33)*acd12(83)
      acd12(84)=acd12(65)*acd12(66)
      acd12(85)=acd12(62)*acd12(63)
      acd12(86)=acd12(49)*acd12(64)
      acd12(87)=acd12(45)*acd12(61)
      acd12(84)=acd12(87)+acd12(86)+acd12(84)+acd12(85)
      acd12(84)=acd12(32)*acd12(84)
      acd12(85)=acd12(33)*acd12(69)
      acd12(86)=acd12(32)*acd12(60)
      acd12(81)=acd12(23)*acd12(81)
      acd12(81)=acd12(81)+acd12(85)+acd12(86)
      acd12(81)=acd12(22)*acd12(81)
      acd12(85)=acd12(1)*acd12(2)
      brack=acd12(74)+acd12(75)+acd12(76)+acd12(77)+acd12(78)+acd12(79)+acd12(8&
      &0)+acd12(81)+acd12(82)+acd12(83)+acd12(84)+2.0_ki*acd12(85)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd12h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd12
      complex(ki) :: brack
      acd12(1)=d(iv1,iv2)
      acd12(2)=k2(iv3)
      acd12(3)=abb12(44)
      acd12(4)=spvak1l5(iv3)
      acd12(5)=abb12(27)
      acd12(6)=spvak1l6(iv3)
      acd12(7)=abb12(34)
      acd12(8)=spvak2l5(iv3)
      acd12(9)=abb12(40)
      acd12(10)=spvak2l6(iv3)
      acd12(11)=abb12(41)
      acd12(12)=spvak4k2(iv3)
      acd12(13)=abb12(9)
      acd12(14)=spvak7l5(iv3)
      acd12(15)=abb12(52)
      acd12(16)=spvak7l6(iv3)
      acd12(17)=abb12(50)
      acd12(18)=d(iv1,iv3)
      acd12(19)=k2(iv2)
      acd12(20)=spvak1l5(iv2)
      acd12(21)=spvak1l6(iv2)
      acd12(22)=spvak2l5(iv2)
      acd12(23)=spvak2l6(iv2)
      acd12(24)=spvak4k2(iv2)
      acd12(25)=spvak7l5(iv2)
      acd12(26)=spvak7l6(iv2)
      acd12(27)=d(iv2,iv3)
      acd12(28)=k2(iv1)
      acd12(29)=spvak1l5(iv1)
      acd12(30)=spvak1l6(iv1)
      acd12(31)=spvak2l5(iv1)
      acd12(32)=spvak2l6(iv1)
      acd12(33)=spvak4k2(iv1)
      acd12(34)=spvak7l5(iv1)
      acd12(35)=spvak7l6(iv1)
      acd12(36)=spvak1k2(iv2)
      acd12(37)=spvak4k3(iv3)
      acd12(38)=abb12(11)
      acd12(39)=spvak1k2(iv3)
      acd12(40)=spvak4k3(iv2)
      acd12(41)=spvak7k2(iv3)
      acd12(42)=abb12(15)
      acd12(43)=spvak7k2(iv2)
      acd12(44)=spvak1k2(iv1)
      acd12(45)=spvak4k3(iv1)
      acd12(46)=spvak7k2(iv1)
      acd12(47)=abb12(20)
      acd12(48)=abb12(8)
      acd12(49)=acd12(28)*acd12(3)
      acd12(50)=acd12(29)*acd12(5)
      acd12(51)=acd12(30)*acd12(7)
      acd12(52)=acd12(33)*acd12(13)
      acd12(53)=acd12(34)*acd12(15)
      acd12(54)=acd12(35)*acd12(17)
      acd12(49)=acd12(54)+acd12(53)+acd12(52)+acd12(51)+acd12(50)+acd12(49)
      acd12(50)=2.0_ki*acd12(27)
      acd12(49)=acd12(50)*acd12(49)
      acd12(50)=acd12(19)*acd12(3)
      acd12(51)=acd12(20)*acd12(5)
      acd12(52)=acd12(21)*acd12(7)
      acd12(53)=acd12(24)*acd12(13)
      acd12(54)=acd12(25)*acd12(15)
      acd12(55)=acd12(26)*acd12(17)
      acd12(50)=acd12(55)+acd12(54)+acd12(53)+acd12(52)+acd12(51)+acd12(50)
      acd12(51)=2.0_ki*acd12(18)
      acd12(50)=acd12(51)*acd12(50)
      acd12(51)=acd12(2)*acd12(3)
      acd12(52)=acd12(4)*acd12(5)
      acd12(53)=acd12(6)*acd12(7)
      acd12(54)=acd12(12)*acd12(13)
      acd12(55)=acd12(14)*acd12(15)
      acd12(56)=acd12(16)*acd12(17)
      acd12(51)=acd12(56)+acd12(55)+acd12(54)+acd12(53)+acd12(52)+acd12(51)
      acd12(52)=2.0_ki*acd12(1)
      acd12(51)=acd12(52)*acd12(51)
      acd12(52)=acd12(8)*acd12(1)
      acd12(53)=acd12(22)*acd12(18)
      acd12(54)=acd12(31)*acd12(27)
      acd12(52)=acd12(54)+acd12(52)+acd12(53)
      acd12(52)=acd12(9)*acd12(52)
      acd12(53)=acd12(10)*acd12(1)
      acd12(54)=acd12(23)*acd12(18)
      acd12(55)=acd12(32)*acd12(27)
      acd12(53)=acd12(55)+acd12(53)+acd12(54)
      acd12(53)=acd12(11)*acd12(53)
      acd12(52)=acd12(52)+acd12(53)
      acd12(53)=acd12(8)*acd12(45)
      acd12(54)=acd12(31)*acd12(37)
      acd12(53)=acd12(53)+acd12(54)
      acd12(54)=acd12(38)*acd12(53)
      acd12(55)=acd12(10)*acd12(45)
      acd12(56)=acd12(32)*acd12(37)
      acd12(56)=acd12(56)+acd12(55)
      acd12(56)=acd12(47)*acd12(56)
      acd12(54)=acd12(56)+acd12(54)
      acd12(54)=acd12(36)*acd12(54)
      acd12(56)=acd12(22)*acd12(45)
      acd12(57)=acd12(31)*acd12(40)
      acd12(56)=acd12(56)+acd12(57)
      acd12(57)=acd12(38)*acd12(56)
      acd12(58)=acd12(23)*acd12(45)
      acd12(59)=acd12(32)*acd12(40)
      acd12(59)=acd12(59)+acd12(58)
      acd12(59)=acd12(47)*acd12(59)
      acd12(57)=acd12(59)+acd12(57)
      acd12(57)=acd12(39)*acd12(57)
      acd12(56)=acd12(42)*acd12(56)
      acd12(58)=acd12(48)*acd12(58)
      acd12(59)=acd12(32)*acd12(48)
      acd12(60)=acd12(40)*acd12(59)
      acd12(56)=acd12(60)+acd12(58)+acd12(56)
      acd12(56)=acd12(41)*acd12(56)
      acd12(53)=acd12(42)*acd12(53)
      acd12(55)=acd12(48)*acd12(55)
      acd12(58)=acd12(37)*acd12(59)
      acd12(53)=acd12(58)+acd12(55)+acd12(53)
      acd12(53)=acd12(43)*acd12(53)
      acd12(55)=acd12(8)*acd12(40)
      acd12(58)=acd12(22)*acd12(37)
      acd12(55)=acd12(55)+acd12(58)
      acd12(58)=acd12(38)*acd12(55)
      acd12(59)=acd12(10)*acd12(40)
      acd12(60)=acd12(23)*acd12(37)
      acd12(59)=acd12(59)+acd12(60)
      acd12(60)=acd12(47)*acd12(59)
      acd12(58)=acd12(60)+acd12(58)
      acd12(58)=acd12(44)*acd12(58)
      acd12(55)=acd12(42)*acd12(55)
      acd12(59)=acd12(48)*acd12(59)
      acd12(55)=acd12(59)+acd12(55)
      acd12(55)=acd12(46)*acd12(55)
      brack=acd12(49)+acd12(50)+acd12(51)+2.0_ki*acd12(52)+acd12(53)+acd12(54)+&
      &acd12(55)+acd12(56)+acd12(57)+acd12(58)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd12h3
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
!---#[ subroutine reconstruct_d12:
   subroutine     reconstruct_d12(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_12:
      coeffs%coeffs_12%c0 = derivative(czip)
      coeffs%coeffs_12%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_12%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_12%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_12%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_12%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_12%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_12%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_12%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_12%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_12%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_12%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_12%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_12%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_12%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_12%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_12%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_12%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_12%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_12%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_12%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_12%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_12%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_12%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_12%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_12%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_12%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_12%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_12%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_12%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_12%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_12%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_12%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_12%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_12%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_12:
   end subroutine reconstruct_d12
!---#] subroutine reconstruct_d12:
end module     p1_dbarc_epnebbbarg_d12h3l1d
