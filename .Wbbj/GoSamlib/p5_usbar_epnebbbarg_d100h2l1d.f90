module     p5_usbar_epnebbbarg_d100h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d100h2l1d.f90
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
   public :: derivative , reconstruct_d100
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd100h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd100
      complex(ki) :: brack
      acd100(1)=abb100(21)
      brack=acd100(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd100h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(45) :: acd100
      complex(ki) :: brack
      acd100(1)=k1(iv1)
      acd100(2)=abb100(69)
      acd100(3)=k2(iv1)
      acd100(4)=abb100(22)
      acd100(5)=k3(iv1)
      acd100(6)=k4(iv1)
      acd100(7)=l6(iv1)
      acd100(8)=abb100(68)
      acd100(9)=k7(iv1)
      acd100(10)=e7(iv1)
      acd100(11)=abb100(67)
      acd100(12)=spvak4k1(iv1)
      acd100(13)=abb100(31)
      acd100(14)=spvak4k3(iv1)
      acd100(15)=abb100(39)
      acd100(16)=spval5k1(iv1)
      acd100(17)=abb100(59)
      acd100(18)=spval5k3(iv1)
      acd100(19)=abb100(34)
      acd100(20)=spval5l6(iv1)
      acd100(21)=abb100(25)
      acd100(22)=spval5k7(iv1)
      acd100(23)=abb100(28)
      acd100(24)=spval6k2(iv1)
      acd100(25)=abb100(41)
      acd100(26)=spvak7k2(iv1)
      acd100(27)=abb100(92)
      acd100(28)=spvak2e7(iv1)
      acd100(29)=abb100(23)
      acd100(30)=spvae7l6(iv1)
      acd100(31)=abb100(89)
      acd100(32)=acd100(9)+acd100(7)
      acd100(32)=acd100(8)*acd100(32)
      acd100(33)=-acd100(6)-acd100(5)+acd100(1)
      acd100(33)=acd100(2)*acd100(33)
      acd100(34)=acd100(4)*acd100(3)
      acd100(35)=acd100(11)*acd100(10)
      acd100(36)=acd100(13)*acd100(12)
      acd100(37)=acd100(15)*acd100(14)
      acd100(38)=acd100(17)*acd100(16)
      acd100(39)=acd100(19)*acd100(18)
      acd100(40)=acd100(21)*acd100(20)
      acd100(41)=acd100(23)*acd100(22)
      acd100(42)=acd100(25)*acd100(24)
      acd100(43)=acd100(27)*acd100(26)
      acd100(44)=acd100(29)*acd100(28)
      acd100(45)=acd100(31)*acd100(30)
      brack=acd100(32)+acd100(33)+acd100(34)+acd100(35)+acd100(36)+acd100(37)+a&
      &cd100(38)+acd100(39)+acd100(40)+acd100(41)+acd100(42)+acd100(43)+acd100(&
      &44)+acd100(45)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd100h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(122) :: acd100
      complex(ki) :: brack
      acd100(1)=k1(iv1)
      acd100(2)=k2(iv2)
      acd100(3)=abb100(43)
      acd100(4)=l6(iv2)
      acd100(5)=abb100(86)
      acd100(6)=k7(iv2)
      acd100(7)=e7(iv2)
      acd100(8)=abb100(77)
      acd100(9)=spvak2l6(iv2)
      acd100(10)=abb100(18)
      acd100(11)=spvak2k7(iv2)
      acd100(12)=abb100(20)
      acd100(13)=spvak2e7(iv2)
      acd100(14)=abb100(26)
      acd100(15)=spvae7l6(iv2)
      acd100(16)=abb100(11)
      acd100(17)=k1(iv2)
      acd100(18)=k2(iv1)
      acd100(19)=l6(iv1)
      acd100(20)=k7(iv1)
      acd100(21)=e7(iv1)
      acd100(22)=spvak2l6(iv1)
      acd100(23)=spvak2k7(iv1)
      acd100(24)=spvak2e7(iv1)
      acd100(25)=spvae7l6(iv1)
      acd100(26)=abb100(79)
      acd100(27)=k3(iv2)
      acd100(28)=k4(iv2)
      acd100(29)=abb100(36)
      acd100(30)=abb100(27)
      acd100(31)=abb100(30)
      acd100(32)=abb100(15)
      acd100(33)=spvak4k1(iv2)
      acd100(34)=abb100(33)
      acd100(35)=spvak4k3(iv2)
      acd100(36)=abb100(45)
      acd100(37)=spval5k1(iv2)
      acd100(38)=abb100(94)
      acd100(39)=spval5k3(iv2)
      acd100(40)=abb100(38)
      acd100(41)=k3(iv1)
      acd100(42)=k4(iv1)
      acd100(43)=spvak4k1(iv1)
      acd100(44)=spvak4k3(iv1)
      acd100(45)=spval5k1(iv1)
      acd100(46)=spval5k3(iv1)
      acd100(47)=abb100(40)
      acd100(48)=abb100(53)
      acd100(49)=abb100(56)
      acd100(50)=abb100(60)
      acd100(51)=abb100(14)
      acd100(52)=abb100(32)
      acd100(53)=abb100(57)
      acd100(54)=abb100(49)
      acd100(55)=abb100(10)
      acd100(56)=abb100(35)
      acd100(57)=abb100(42)
      acd100(58)=abb100(29)
      acd100(59)=abb100(16)
      acd100(60)=abb100(17)
      acd100(61)=abb100(96)
      acd100(62)=abb100(93)
      acd100(63)=abb100(9)
      acd100(64)=abb100(50)
      acd100(65)=abb100(61)
      acd100(66)=abb100(66)
      acd100(67)=spvak2k1(iv1)
      acd100(68)=spval5k2(iv2)
      acd100(69)=abb100(12)
      acd100(70)=spval5l6(iv2)
      acd100(71)=abb100(19)
      acd100(72)=spval5k7(iv2)
      acd100(73)=abb100(24)
      acd100(74)=spval6k2(iv2)
      acd100(75)=abb100(37)
      acd100(76)=spvak7k2(iv2)
      acd100(77)=abb100(54)
      acd100(78)=spvae7k2(iv2)
      acd100(79)=abb100(13)
      acd100(80)=spval5e7(iv2)
      acd100(81)=spvak2k1(iv2)
      acd100(82)=spval5k2(iv1)
      acd100(83)=spval5l6(iv1)
      acd100(84)=spval5k7(iv1)
      acd100(85)=spval6k2(iv1)
      acd100(86)=spvak7k2(iv1)
      acd100(87)=spvae7k2(iv1)
      acd100(88)=spval5e7(iv1)
      acd100(89)=spvak2k3(iv2)
      acd100(90)=abb100(52)
      acd100(91)=spvak2k3(iv1)
      acd100(92)=abb100(51)
      acd100(93)=abb100(48)
      acd100(94)=abb100(47)
      acd100(95)=abb100(46)
      acd100(96)=abb100(44)
      acd100(97)=acd100(19)+acd100(20)
      acd100(98)=acd100(29)*acd100(97)
      acd100(99)=acd100(41)+acd100(42)
      acd100(100)=acd100(99)-acd100(1)
      acd100(101)=acd100(3)*acd100(100)
      acd100(102)=acd100(46)*acd100(40)
      acd100(103)=acd100(45)*acd100(38)
      acd100(104)=acd100(44)*acd100(36)
      acd100(105)=acd100(43)*acd100(34)
      acd100(106)=acd100(25)*acd100(32)
      acd100(107)=acd100(24)*acd100(31)
      acd100(108)=acd100(21)*acd100(30)
      acd100(109)=acd100(18)*acd100(26)
      acd100(98)=2.0_ki*acd100(109)+acd100(108)+acd100(107)+acd100(106)+acd100(&
      &105)+acd100(104)+acd100(102)+acd100(103)+acd100(101)+acd100(98)
      acd100(98)=acd100(2)*acd100(98)
      acd100(101)=acd100(4)+acd100(6)
      acd100(102)=acd100(29)*acd100(101)
      acd100(103)=acd100(27)+acd100(28)
      acd100(104)=acd100(103)-acd100(17)
      acd100(105)=acd100(3)*acd100(104)
      acd100(106)=acd100(39)*acd100(40)
      acd100(107)=acd100(37)*acd100(38)
      acd100(108)=acd100(35)*acd100(36)
      acd100(109)=acd100(33)*acd100(34)
      acd100(110)=acd100(15)*acd100(32)
      acd100(111)=acd100(13)*acd100(31)
      acd100(112)=acd100(7)*acd100(30)
      acd100(102)=acd100(112)+acd100(111)+acd100(110)+acd100(109)+acd100(108)+a&
      &cd100(106)+acd100(107)+acd100(105)+acd100(102)
      acd100(102)=acd100(18)*acd100(102)
      acd100(105)=acd100(78)*acd100(96)
      acd100(106)=acd100(76)*acd100(95)
      acd100(107)=acd100(74)*acd100(94)
      acd100(108)=acd100(72)*acd100(93)
      acd100(109)=acd100(70)*acd100(92)
      acd100(110)=acd100(68)*acd100(90)
      acd100(111)=-acd100(62)*acd100(80)
      acd100(105)=acd100(111)+acd100(110)+acd100(109)+acd100(108)+acd100(107)+a&
      &cd100(105)+acd100(106)
      acd100(105)=acd100(91)*acd100(105)
      acd100(106)=acd100(87)*acd100(96)
      acd100(107)=acd100(86)*acd100(95)
      acd100(108)=acd100(85)*acd100(94)
      acd100(109)=acd100(84)*acd100(93)
      acd100(110)=acd100(83)*acd100(92)
      acd100(111)=acd100(82)*acd100(90)
      acd100(112)=-acd100(62)*acd100(88)
      acd100(106)=acd100(112)+acd100(111)+acd100(110)+acd100(109)+acd100(108)+a&
      &cd100(106)+acd100(107)
      acd100(106)=acd100(89)*acd100(106)
      acd100(107)=acd100(79)*acd100(87)
      acd100(108)=acd100(77)*acd100(86)
      acd100(109)=acd100(75)*acd100(85)
      acd100(110)=acd100(73)*acd100(84)
      acd100(111)=acd100(71)*acd100(83)
      acd100(112)=acd100(69)*acd100(82)
      acd100(113)=acd100(61)*acd100(88)
      acd100(107)=acd100(113)+acd100(112)+acd100(111)+acd100(110)+acd100(109)+a&
      &cd100(107)+acd100(108)
      acd100(107)=acd100(81)*acd100(107)
      acd100(108)=acd100(78)*acd100(79)
      acd100(109)=acd100(76)*acd100(77)
      acd100(110)=acd100(74)*acd100(75)
      acd100(111)=acd100(72)*acd100(73)
      acd100(112)=acd100(70)*acd100(71)
      acd100(113)=acd100(68)*acd100(69)
      acd100(114)=acd100(61)*acd100(80)
      acd100(108)=acd100(114)+acd100(113)+acd100(112)+acd100(111)+acd100(110)+a&
      &cd100(108)+acd100(109)
      acd100(108)=acd100(67)*acd100(108)
      acd100(109)=acd100(16)*acd100(103)
      acd100(110)=acd100(39)*acd100(66)
      acd100(111)=acd100(37)*acd100(65)
      acd100(112)=acd100(35)*acd100(64)
      acd100(113)=acd100(33)*acd100(63)
      acd100(109)=acd100(113)+acd100(112)+acd100(110)+acd100(111)+acd100(109)
      acd100(109)=acd100(25)*acd100(109)
      acd100(110)=acd100(14)*acd100(103)
      acd100(111)=acd100(39)*acd100(62)
      acd100(112)=-acd100(37)*acd100(61)
      acd100(113)=acd100(35)*acd100(60)
      acd100(114)=acd100(33)*acd100(59)
      acd100(110)=acd100(114)+acd100(113)+acd100(111)+acd100(112)+acd100(110)
      acd100(110)=acd100(24)*acd100(110)
      acd100(111)=acd100(8)*acd100(103)
      acd100(112)=acd100(39)*acd100(54)
      acd100(113)=acd100(37)*acd100(53)
      acd100(114)=acd100(35)*acd100(52)
      acd100(115)=acd100(33)*acd100(51)
      acd100(111)=acd100(115)+acd100(114)+acd100(112)+acd100(113)+acd100(111)
      acd100(111)=acd100(21)*acd100(111)
      acd100(112)=acd100(16)*acd100(99)
      acd100(113)=acd100(46)*acd100(66)
      acd100(114)=acd100(45)*acd100(65)
      acd100(115)=acd100(44)*acd100(64)
      acd100(116)=acd100(43)*acd100(63)
      acd100(112)=acd100(116)+acd100(115)+acd100(113)+acd100(114)+acd100(112)
      acd100(112)=acd100(15)*acd100(112)
      acd100(113)=acd100(14)*acd100(99)
      acd100(114)=acd100(46)*acd100(62)
      acd100(115)=-acd100(45)*acd100(61)
      acd100(116)=acd100(44)*acd100(60)
      acd100(117)=acd100(43)*acd100(59)
      acd100(113)=acd100(117)+acd100(116)+acd100(114)+acd100(115)+acd100(113)
      acd100(113)=acd100(13)*acd100(113)
      acd100(114)=acd100(8)*acd100(99)
      acd100(115)=acd100(46)*acd100(54)
      acd100(116)=acd100(45)*acd100(53)
      acd100(117)=acd100(44)*acd100(52)
      acd100(118)=acd100(43)*acd100(51)
      acd100(114)=acd100(118)+acd100(117)+acd100(115)+acd100(116)+acd100(114)
      acd100(114)=acd100(7)*acd100(114)
      acd100(115)=acd100(46)*acd100(50)
      acd100(116)=acd100(45)*acd100(49)
      acd100(117)=acd100(44)*acd100(48)
      acd100(118)=acd100(43)*acd100(47)
      acd100(115)=-acd100(115)+acd100(116)+acd100(117)-acd100(118)
      acd100(115)=-acd100(115)*acd100(101)
      acd100(116)=acd100(39)*acd100(50)
      acd100(117)=acd100(37)*acd100(49)
      acd100(118)=acd100(35)*acd100(48)
      acd100(119)=acd100(33)*acd100(47)
      acd100(116)=acd100(119)-acd100(118)+acd100(116)-acd100(117)
      acd100(116)=acd100(116)*acd100(97)
      acd100(117)=acd100(12)*acd100(23)
      acd100(118)=acd100(10)*acd100(22)
      acd100(117)=acd100(117)-acd100(118)
      acd100(118)=-acd100(25)*acd100(16)
      acd100(119)=-acd100(24)*acd100(14)
      acd100(120)=-acd100(21)*acd100(8)
      acd100(118)=acd100(120)+acd100(119)+acd100(118)-acd100(117)
      acd100(118)=acd100(17)*acd100(118)
      acd100(119)=acd100(12)*acd100(11)
      acd100(120)=acd100(10)*acd100(9)
      acd100(119)=acd100(119)-acd100(120)
      acd100(120)=-acd100(15)*acd100(16)
      acd100(121)=-acd100(13)*acd100(14)
      acd100(122)=-acd100(7)*acd100(8)
      acd100(120)=acd100(122)+acd100(121)+acd100(120)-acd100(119)
      acd100(120)=acd100(1)*acd100(120)
      acd100(100)=acd100(101)*acd100(100)
      acd100(97)=acd100(97)*acd100(104)
      acd100(97)=acd100(97)+acd100(100)
      acd100(97)=acd100(5)*acd100(97)
      acd100(100)=acd100(117)*acd100(103)
      acd100(99)=acd100(119)*acd100(99)
      acd100(101)=acd100(11)*acd100(58)
      acd100(103)=acd100(9)*acd100(56)
      acd100(101)=acd100(101)+acd100(103)
      acd100(101)=acd100(44)*acd100(101)
      acd100(103)=acd100(11)*acd100(57)
      acd100(104)=acd100(9)*acd100(55)
      acd100(103)=acd100(103)+acd100(104)
      acd100(103)=acd100(43)*acd100(103)
      acd100(104)=acd100(23)*acd100(58)
      acd100(117)=acd100(22)*acd100(56)
      acd100(104)=acd100(104)+acd100(117)
      acd100(104)=acd100(35)*acd100(104)
      acd100(117)=acd100(23)*acd100(57)
      acd100(119)=acd100(22)*acd100(55)
      acd100(117)=acd100(117)+acd100(119)
      acd100(117)=acd100(33)*acd100(117)
      brack=acd100(97)+acd100(98)+acd100(99)+acd100(100)+acd100(101)+acd100(102&
      &)+acd100(103)+acd100(104)+acd100(105)+acd100(106)+acd100(107)+acd100(108&
      &)+acd100(109)+acd100(110)+acd100(111)+acd100(112)+acd100(113)+acd100(114&
      &)+acd100(115)+acd100(116)+acd100(117)+acd100(118)+acd100(120)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd100h2
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
!---#[ subroutine reconstruct_d100:
   subroutine     reconstruct_d100(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_100:
      coeffs%coeffs_100%c0 = derivative(czip)
      coeffs%coeffs_100%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_100%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_100%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_100%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_100%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_100%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_100%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_100%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_100%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_100%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_100%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_100%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_100%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_100%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_100:
   end subroutine reconstruct_d100
!---#] subroutine reconstruct_d100:
end module     p5_usbar_epnebbbarg_d100h2l1d
