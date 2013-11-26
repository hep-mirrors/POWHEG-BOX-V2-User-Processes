module     p5_usbar_epnebbbarg_d119h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d119h1l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d119
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd119h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd119
      complex(ki) :: brack
      acd119(1)=abb119(27)
      brack=acd119(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd119h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd119
      complex(ki) :: brack
      acd119(1)=k1(iv1)
      acd119(2)=abb119(31)
      acd119(3)=k2(iv1)
      acd119(4)=abb119(13)
      acd119(5)=k3(iv1)
      acd119(6)=k4(iv1)
      acd119(7)=spvak2l5(iv1)
      acd119(8)=abb119(24)
      acd119(9)=spvak2k7(iv1)
      acd119(10)=abb119(25)
      acd119(11)=spvak4k1(iv1)
      acd119(12)=abb119(9)
      acd119(13)=spvak4k3(iv1)
      acd119(14)=abb119(26)
      acd119(15)=spval5k1(iv1)
      acd119(16)=abb119(38)
      acd119(17)=spval5k3(iv1)
      acd119(18)=abb119(54)
      acd119(19)=spval5l6(iv1)
      acd119(20)=abb119(34)
      acd119(21)=spval6k2(iv1)
      acd119(22)=abb119(57)
      acd119(23)=spval6l5(iv1)
      acd119(24)=abb119(78)
      acd119(25)=spval6k7(iv1)
      acd119(26)=abb119(75)
      acd119(27)=spvak7k1(iv1)
      acd119(28)=abb119(23)
      acd119(29)=spvak7k3(iv1)
      acd119(30)=abb119(36)
      acd119(31)=spvak7l6(iv1)
      acd119(32)=abb119(12)
      acd119(33)=spvae7k1(iv1)
      acd119(34)=abb119(55)
      acd119(35)=spvak2e7(iv1)
      acd119(36)=abb119(11)
      acd119(37)=spvae7k3(iv1)
      acd119(38)=abb119(69)
      acd119(39)=spval6e7(iv1)
      acd119(40)=abb119(19)
      acd119(41)=spvae7l6(iv1)
      acd119(42)=abb119(51)
      acd119(43)=acd119(6)+acd119(5)-acd119(1)
      acd119(43)=acd119(2)*acd119(43)
      acd119(44)=-acd119(4)*acd119(3)
      acd119(45)=-acd119(8)*acd119(7)
      acd119(46)=-acd119(10)*acd119(9)
      acd119(47)=-acd119(12)*acd119(11)
      acd119(48)=-acd119(14)*acd119(13)
      acd119(49)=-acd119(16)*acd119(15)
      acd119(50)=-acd119(18)*acd119(17)
      acd119(51)=-acd119(20)*acd119(19)
      acd119(52)=-acd119(22)*acd119(21)
      acd119(53)=-acd119(24)*acd119(23)
      acd119(54)=-acd119(26)*acd119(25)
      acd119(55)=-acd119(28)*acd119(27)
      acd119(56)=-acd119(30)*acd119(29)
      acd119(57)=-acd119(32)*acd119(31)
      acd119(58)=-acd119(34)*acd119(33)
      acd119(59)=-acd119(36)*acd119(35)
      acd119(60)=-acd119(38)*acd119(37)
      acd119(61)=-acd119(40)*acd119(39)
      acd119(62)=-acd119(42)*acd119(41)
      brack=acd119(43)+acd119(44)+acd119(45)+acd119(46)+acd119(47)+acd119(48)+a&
      &cd119(49)+acd119(50)+acd119(51)+acd119(52)+acd119(53)+acd119(54)+acd119(&
      &55)+acd119(56)+acd119(57)+acd119(58)+acd119(59)+acd119(60)+acd119(61)+ac&
      &d119(62)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd119h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(125) :: acd119
      complex(ki) :: brack
      acd119(1)=k1(iv1)
      acd119(2)=k2(iv2)
      acd119(3)=abb119(28)
      acd119(4)=spvak2l5(iv2)
      acd119(5)=abb119(15)
      acd119(6)=spvak2k7(iv2)
      acd119(7)=abb119(30)
      acd119(8)=spval6k2(iv2)
      acd119(9)=abb119(65)
      acd119(10)=spval6l5(iv2)
      acd119(11)=abb119(79)
      acd119(12)=spval6k7(iv2)
      acd119(13)=abb119(77)
      acd119(14)=spvak2e7(iv2)
      acd119(15)=abb119(20)
      acd119(16)=spval6e7(iv2)
      acd119(17)=abb119(67)
      acd119(18)=k1(iv2)
      acd119(19)=k2(iv1)
      acd119(20)=spvak2l5(iv1)
      acd119(21)=spvak2k7(iv1)
      acd119(22)=spval6k2(iv1)
      acd119(23)=spval6l5(iv1)
      acd119(24)=spval6k7(iv1)
      acd119(25)=spvak2e7(iv1)
      acd119(26)=spval6e7(iv1)
      acd119(27)=k3(iv2)
      acd119(28)=k4(iv2)
      acd119(29)=spvak4k1(iv2)
      acd119(30)=abb119(16)
      acd119(31)=spvak4k3(iv2)
      acd119(32)=abb119(40)
      acd119(33)=spval5k1(iv2)
      acd119(34)=abb119(70)
      acd119(35)=spval5k3(iv2)
      acd119(36)=abb119(56)
      acd119(37)=spval6k1(iv2)
      acd119(38)=abb119(66)
      acd119(39)=spval6k3(iv2)
      acd119(40)=abb119(80)
      acd119(41)=spvak7k1(iv2)
      acd119(42)=abb119(74)
      acd119(43)=spvak7k3(iv2)
      acd119(44)=abb119(39)
      acd119(45)=spvae7k1(iv2)
      acd119(46)=abb119(73)
      acd119(47)=spvae7k3(iv2)
      acd119(48)=abb119(71)
      acd119(49)=k3(iv1)
      acd119(50)=k4(iv1)
      acd119(51)=spvak4k1(iv1)
      acd119(52)=spvak4k3(iv1)
      acd119(53)=spval5k1(iv1)
      acd119(54)=spval5k3(iv1)
      acd119(55)=spval6k1(iv1)
      acd119(56)=spval6k3(iv1)
      acd119(57)=spvak7k1(iv1)
      acd119(58)=spvak7k3(iv1)
      acd119(59)=spvae7k1(iv1)
      acd119(60)=spvae7k3(iv1)
      acd119(61)=abb119(10)
      acd119(62)=abb119(35)
      acd119(63)=abb119(50)
      acd119(64)=abb119(48)
      acd119(65)=abb119(43)
      acd119(66)=abb119(44)
      acd119(67)=abb119(37)
      acd119(68)=abb119(32)
      acd119(69)=abb119(22)
      acd119(70)=abb119(53)
      acd119(71)=spvak2k1(iv2)
      acd119(72)=abb119(49)
      acd119(73)=spvak2k3(iv2)
      acd119(74)=abb119(58)
      acd119(75)=spvak2k1(iv1)
      acd119(76)=spvak2k3(iv1)
      acd119(77)=abb119(14)
      acd119(78)=abb119(33)
      acd119(79)=abb119(21)
      acd119(80)=abb119(46)
      acd119(81)=abb119(17)
      acd119(82)=abb119(45)
      acd119(83)=abb119(82)
      acd119(84)=abb119(81)
      acd119(85)=abb119(18)
      acd119(86)=abb119(41)
      acd119(87)=spval5k2(iv2)
      acd119(88)=abb119(29)
      acd119(89)=spvak7k2(iv2)
      acd119(90)=abb119(59)
      acd119(91)=spvae7k2(iv2)
      acd119(92)=abb119(47)
      acd119(93)=spval5k2(iv1)
      acd119(94)=spvak7k2(iv1)
      acd119(95)=spvae7k2(iv1)
      acd119(96)=abb119(60)
      acd119(97)=abb119(52)
      acd119(98)=abb119(42)
      acd119(99)=-acd119(28)+acd119(18)-acd119(27)
      acd119(100)=-acd119(3)*acd119(99)
      acd119(101)=acd119(48)*acd119(47)
      acd119(102)=acd119(46)*acd119(45)
      acd119(103)=acd119(44)*acd119(43)
      acd119(104)=acd119(42)*acd119(41)
      acd119(105)=acd119(36)*acd119(35)
      acd119(106)=acd119(34)*acd119(33)
      acd119(107)=acd119(39)*acd119(40)
      acd119(108)=acd119(37)*acd119(38)
      acd119(109)=acd119(31)*acd119(32)
      acd119(110)=acd119(29)*acd119(30)
      acd119(100)=acd119(110)+acd119(109)+acd119(108)+acd119(107)+acd119(106)+a&
      &cd119(105)+acd119(104)+acd119(103)+acd119(101)+acd119(102)+acd119(100)
      acd119(100)=acd119(19)*acd119(100)
      acd119(101)=-acd119(50)+acd119(1)-acd119(49)
      acd119(102)=-acd119(3)*acd119(101)
      acd119(103)=acd119(48)*acd119(60)
      acd119(104)=acd119(46)*acd119(59)
      acd119(105)=acd119(44)*acd119(58)
      acd119(106)=acd119(42)*acd119(57)
      acd119(107)=acd119(36)*acd119(54)
      acd119(108)=acd119(34)*acd119(53)
      acd119(109)=acd119(56)*acd119(40)
      acd119(110)=acd119(55)*acd119(38)
      acd119(111)=acd119(52)*acd119(32)
      acd119(112)=acd119(51)*acd119(30)
      acd119(102)=acd119(112)+acd119(111)+acd119(110)+acd119(109)+acd119(108)+a&
      &cd119(107)+acd119(106)+acd119(105)+acd119(103)+acd119(104)+acd119(102)
      acd119(102)=acd119(2)*acd119(102)
      acd119(103)=acd119(16)*acd119(17)
      acd119(104)=acd119(14)*acd119(15)
      acd119(105)=acd119(12)*acd119(13)
      acd119(106)=acd119(10)*acd119(11)
      acd119(107)=acd119(8)*acd119(9)
      acd119(108)=acd119(6)*acd119(7)
      acd119(109)=acd119(4)*acd119(5)
      acd119(103)=-acd119(109)+acd119(108)+acd119(107)-acd119(106)+acd119(105)+&
      &acd119(103)+acd119(104)
      acd119(101)=-acd119(103)*acd119(101)
      acd119(103)=acd119(26)*acd119(17)
      acd119(104)=acd119(25)*acd119(15)
      acd119(105)=acd119(24)*acd119(13)
      acd119(106)=acd119(23)*acd119(11)
      acd119(107)=acd119(22)*acd119(9)
      acd119(108)=acd119(21)*acd119(7)
      acd119(109)=acd119(20)*acd119(5)
      acd119(103)=-acd119(105)-acd119(104)-acd119(103)-acd119(107)-acd119(108)+&
      &acd119(106)+acd119(109)
      acd119(99)=acd119(103)*acd119(99)
      acd119(103)=acd119(16)*acd119(86)
      acd119(104)=acd119(14)*acd119(82)
      acd119(105)=acd119(12)*acd119(80)
      acd119(106)=acd119(10)*acd119(78)
      acd119(107)=acd119(8)*acd119(70)
      acd119(108)=acd119(6)*acd119(66)
      acd119(109)=acd119(4)*acd119(62)
      acd119(103)=acd119(109)+acd119(108)+acd119(107)+acd119(106)+acd119(105)+a&
      &cd119(103)+acd119(104)
      acd119(103)=acd119(52)*acd119(103)
      acd119(104)=acd119(16)*acd119(85)
      acd119(105)=acd119(14)*acd119(81)
      acd119(106)=acd119(12)*acd119(79)
      acd119(107)=acd119(10)*acd119(77)
      acd119(108)=acd119(8)*acd119(69)
      acd119(109)=acd119(6)*acd119(65)
      acd119(110)=acd119(4)*acd119(61)
      acd119(104)=acd119(110)+acd119(109)+acd119(108)+acd119(107)+acd119(106)+a&
      &cd119(104)+acd119(105)
      acd119(104)=acd119(51)*acd119(104)
      acd119(105)=acd119(26)*acd119(86)
      acd119(106)=acd119(25)*acd119(82)
      acd119(107)=acd119(24)*acd119(80)
      acd119(108)=acd119(23)*acd119(78)
      acd119(109)=acd119(22)*acd119(70)
      acd119(110)=acd119(21)*acd119(66)
      acd119(111)=acd119(20)*acd119(62)
      acd119(105)=acd119(111)+acd119(110)+acd119(109)+acd119(108)+acd119(107)+a&
      &cd119(105)+acd119(106)
      acd119(105)=acd119(31)*acd119(105)
      acd119(106)=acd119(26)*acd119(85)
      acd119(107)=acd119(25)*acd119(81)
      acd119(108)=acd119(24)*acd119(79)
      acd119(109)=acd119(23)*acd119(77)
      acd119(110)=acd119(22)*acd119(69)
      acd119(111)=acd119(21)*acd119(65)
      acd119(112)=acd119(20)*acd119(61)
      acd119(106)=acd119(112)+acd119(111)+acd119(110)+acd119(109)+acd119(108)+a&
      &cd119(106)+acd119(107)
      acd119(106)=acd119(29)*acd119(106)
      acd119(107)=acd119(91)*acd119(98)
      acd119(108)=acd119(89)*acd119(97)
      acd119(109)=acd119(87)*acd119(96)
      acd119(107)=acd119(109)+acd119(107)+acd119(108)
      acd119(107)=acd119(76)*acd119(107)
      acd119(108)=acd119(91)*acd119(92)
      acd119(109)=acd119(89)*acd119(90)
      acd119(110)=acd119(87)*acd119(88)
      acd119(108)=acd119(110)+acd119(108)+acd119(109)
      acd119(108)=acd119(75)*acd119(108)
      acd119(109)=acd119(95)*acd119(98)
      acd119(110)=acd119(94)*acd119(97)
      acd119(111)=acd119(93)*acd119(96)
      acd119(109)=acd119(111)+acd119(109)+acd119(110)
      acd119(109)=acd119(73)*acd119(109)
      acd119(110)=acd119(92)*acd119(95)
      acd119(111)=acd119(90)*acd119(94)
      acd119(112)=acd119(88)*acd119(93)
      acd119(110)=acd119(112)+acd119(110)+acd119(111)
      acd119(110)=acd119(71)*acd119(110)
      acd119(111)=acd119(73)*acd119(84)
      acd119(112)=-acd119(71)*acd119(83)
      acd119(111)=acd119(111)+acd119(112)
      acd119(111)=acd119(26)*acd119(111)
      acd119(112)=-acd119(39)*acd119(84)
      acd119(113)=acd119(37)*acd119(83)
      acd119(112)=acd119(112)+acd119(113)
      acd119(112)=acd119(25)*acd119(112)
      acd119(113)=acd119(73)*acd119(68)
      acd119(114)=-acd119(71)*acd119(67)
      acd119(113)=acd119(113)+acd119(114)
      acd119(113)=acd119(24)*acd119(113)
      acd119(114)=-acd119(73)*acd119(64)
      acd119(115)=acd119(71)*acd119(63)
      acd119(114)=acd119(114)+acd119(115)
      acd119(114)=acd119(23)*acd119(114)
      acd119(115)=acd119(73)*acd119(74)
      acd119(116)=acd119(71)*acd119(72)
      acd119(115)=acd119(115)+acd119(116)
      acd119(115)=acd119(22)*acd119(115)
      acd119(116)=-acd119(39)*acd119(68)
      acd119(117)=acd119(37)*acd119(67)
      acd119(116)=acd119(116)+acd119(117)
      acd119(116)=acd119(21)*acd119(116)
      acd119(117)=acd119(39)*acd119(64)
      acd119(118)=-acd119(37)*acd119(63)
      acd119(117)=acd119(117)+acd119(118)
      acd119(117)=acd119(20)*acd119(117)
      acd119(118)=acd119(76)*acd119(84)
      acd119(119)=-acd119(75)*acd119(83)
      acd119(118)=acd119(118)+acd119(119)
      acd119(118)=acd119(16)*acd119(118)
      acd119(119)=-acd119(56)*acd119(84)
      acd119(120)=acd119(55)*acd119(83)
      acd119(119)=acd119(119)+acd119(120)
      acd119(119)=acd119(14)*acd119(119)
      acd119(120)=acd119(76)*acd119(68)
      acd119(121)=-acd119(75)*acd119(67)
      acd119(120)=acd119(120)+acd119(121)
      acd119(120)=acd119(12)*acd119(120)
      acd119(121)=-acd119(76)*acd119(64)
      acd119(122)=acd119(75)*acd119(63)
      acd119(121)=acd119(121)+acd119(122)
      acd119(121)=acd119(10)*acd119(121)
      acd119(122)=acd119(76)*acd119(74)
      acd119(123)=acd119(75)*acd119(72)
      acd119(122)=acd119(122)+acd119(123)
      acd119(122)=acd119(8)*acd119(122)
      acd119(123)=-acd119(56)*acd119(68)
      acd119(124)=acd119(55)*acd119(67)
      acd119(123)=acd119(123)+acd119(124)
      acd119(123)=acd119(6)*acd119(123)
      acd119(124)=acd119(56)*acd119(64)
      acd119(125)=-acd119(55)*acd119(63)
      acd119(124)=acd119(124)+acd119(125)
      acd119(124)=acd119(4)*acd119(124)
      brack=acd119(99)+acd119(100)+acd119(101)+acd119(102)+acd119(103)+acd119(1&
      &04)+acd119(105)+acd119(106)+acd119(107)+acd119(108)+acd119(109)+acd119(1&
      &10)+acd119(111)+acd119(112)+acd119(113)+acd119(114)+acd119(115)+acd119(1&
      &16)+acd119(117)+acd119(118)+acd119(119)+acd119(120)+acd119(121)+acd119(1&
      &22)+acd119(123)+acd119(124)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd119h1
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
!---#[ subroutine reconstruct_d119:
   subroutine     reconstruct_d119(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_119:
      coeffs%coeffs_119%c0 = derivative(czip)
      coeffs%coeffs_119%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_119%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_119%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_119%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_119%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_119%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_119%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_119%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_119%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_119%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_119%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_119%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_119%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_119%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_119:
   end subroutine reconstruct_d119
!---#] subroutine reconstruct_d119:
end module     p5_usbar_epnebbbarg_d119h1l1d
