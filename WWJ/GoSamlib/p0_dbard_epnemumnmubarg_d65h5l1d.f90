module     p0_dbard_epnemumnmubarg_d65h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity5d65h5l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d65
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd65h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd65
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd65h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd65
      complex(ki) :: brack
      acd65(1)=k1(iv1)
      acd65(2)=abb65(123)
      acd65(3)=k2(iv1)
      acd65(4)=abb65(249)
      acd65(5)=k3(iv1)
      acd65(6)=abb65(233)
      acd65(7)=k4(iv1)
      acd65(8)=k5(iv1)
      acd65(9)=k6(iv1)
      acd65(10)=k7(iv1)
      acd65(11)=abb65(205)
      acd65(12)=spvak1k2(iv1)
      acd65(13)=abb65(15)
      acd65(14)=spvak1k3(iv1)
      acd65(15)=abb65(85)
      acd65(16)=spvak1k4(iv1)
      acd65(17)=abb65(227)
      acd65(18)=spvak1k5(iv1)
      acd65(19)=abb65(154)
      acd65(20)=spvak1k6(iv1)
      acd65(21)=abb65(84)
      acd65(22)=spvak4k3(iv1)
      acd65(23)=abb65(173)
      acd65(24)=spvak4k6(iv1)
      acd65(25)=abb65(101)
      acd65(26)=spvak5k3(iv1)
      acd65(27)=abb65(385)
      acd65(28)=spvak5k6(iv1)
      acd65(29)=abb65(378)
      acd65(30)=spvak7k2(iv1)
      acd65(31)=abb65(33)
      acd65(32)=spvak7k3(iv1)
      acd65(33)=abb65(269)
      acd65(34)=spvak7k4(iv1)
      acd65(35)=abb65(311)
      acd65(36)=spvak7k5(iv1)
      acd65(37)=abb65(309)
      acd65(38)=spvak7k6(iv1)
      acd65(39)=abb65(291)
      acd65(40)=acd65(9)+acd65(8)-acd65(7)-acd65(5)
      acd65(40)=acd65(6)*acd65(40)
      acd65(41)=-acd65(2)*acd65(1)
      acd65(42)=-acd65(4)*acd65(3)
      acd65(43)=-acd65(11)*acd65(10)
      acd65(44)=-acd65(13)*acd65(12)
      acd65(45)=-acd65(15)*acd65(14)
      acd65(46)=-acd65(17)*acd65(16)
      acd65(47)=-acd65(19)*acd65(18)
      acd65(48)=-acd65(21)*acd65(20)
      acd65(49)=-acd65(23)*acd65(22)
      acd65(50)=-acd65(25)*acd65(24)
      acd65(51)=-acd65(27)*acd65(26)
      acd65(52)=-acd65(29)*acd65(28)
      acd65(53)=-acd65(31)*acd65(30)
      acd65(54)=-acd65(33)*acd65(32)
      acd65(55)=-acd65(35)*acd65(34)
      acd65(56)=-acd65(37)*acd65(36)
      acd65(57)=-acd65(39)*acd65(38)
      brack=acd65(40)+acd65(41)+acd65(42)+acd65(43)+acd65(44)+acd65(45)+acd65(4&
      &6)+acd65(47)+acd65(48)+acd65(49)+acd65(50)+acd65(51)+acd65(52)+acd65(53)&
      &+acd65(54)+acd65(55)+acd65(56)+acd65(57)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd65h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(114) :: acd65
      complex(ki) :: brack
      acd65(1)=k1(iv1)
      acd65(2)=spvak1k2(iv2)
      acd65(3)=abb65(69)
      acd65(4)=spvak3k2(iv2)
      acd65(5)=abb65(32)
      acd65(6)=spvak4k2(iv2)
      acd65(7)=abb65(220)
      acd65(8)=spvak5k2(iv2)
      acd65(9)=abb65(394)
      acd65(10)=spvak6k2(iv2)
      acd65(11)=abb65(251)
      acd65(12)=spvak7k2(iv2)
      acd65(13)=abb65(13)
      acd65(14)=k1(iv2)
      acd65(15)=spvak1k2(iv1)
      acd65(16)=spvak3k2(iv1)
      acd65(17)=spvak4k2(iv1)
      acd65(18)=spvak5k2(iv1)
      acd65(19)=spvak6k2(iv1)
      acd65(20)=spvak7k2(iv1)
      acd65(21)=k2(iv1)
      acd65(22)=abb65(68)
      acd65(23)=k2(iv2)
      acd65(24)=k3(iv1)
      acd65(25)=abb65(45)
      acd65(26)=abb65(367)
      acd65(27)=k3(iv2)
      acd65(28)=k4(iv1)
      acd65(29)=k4(iv2)
      acd65(30)=k5(iv1)
      acd65(31)=k5(iv2)
      acd65(32)=k6(iv1)
      acd65(33)=k6(iv2)
      acd65(34)=k7(iv1)
      acd65(35)=abb65(40)
      acd65(36)=abb65(362)
      acd65(37)=k7(iv2)
      acd65(38)=abb65(14)
      acd65(39)=abb65(21)
      acd65(40)=abb65(12)
      acd65(41)=abb65(30)
      acd65(42)=abb65(22)
      acd65(43)=abb65(17)
      acd65(44)=spvak4k3(iv2)
      acd65(45)=abb65(53)
      acd65(46)=spvak4k6(iv2)
      acd65(47)=abb65(37)
      acd65(48)=spvak5k3(iv2)
      acd65(49)=abb65(28)
      acd65(50)=spvak5k6(iv2)
      acd65(51)=abb65(25)
      acd65(52)=spvak7k1(iv2)
      acd65(53)=abb65(20)
      acd65(54)=spvak7k3(iv2)
      acd65(55)=abb65(42)
      acd65(56)=spvak7k4(iv2)
      acd65(57)=abb65(92)
      acd65(58)=spvak7k5(iv2)
      acd65(59)=abb65(94)
      acd65(60)=spvak7k6(iv2)
      acd65(61)=abb65(56)
      acd65(62)=spvak4k3(iv1)
      acd65(63)=spvak4k6(iv1)
      acd65(64)=spvak5k3(iv1)
      acd65(65)=spvak5k6(iv1)
      acd65(66)=spvak7k1(iv1)
      acd65(67)=spvak7k3(iv1)
      acd65(68)=spvak7k4(iv1)
      acd65(69)=spvak7k5(iv1)
      acd65(70)=spvak7k6(iv1)
      acd65(71)=abb65(52)
      acd65(72)=abb65(16)
      acd65(73)=abb65(27)
      acd65(74)=abb65(41)
      acd65(75)=abb65(78)
      acd65(76)=abb65(229)
      acd65(77)=abb65(38)
      acd65(78)=abb65(386)
      acd65(79)=abb65(383)
      acd65(80)=spvak1k3(iv2)
      acd65(81)=abb65(115)
      acd65(82)=spvak1k4(iv2)
      acd65(83)=abb65(176)
      acd65(84)=spvak1k5(iv2)
      acd65(85)=abb65(184)
      acd65(86)=spvak1k6(iv2)
      acd65(87)=abb65(129)
      acd65(88)=spvak1k7(iv2)
      acd65(89)=abb65(60)
      acd65(90)=spvak1k3(iv1)
      acd65(91)=spvak1k4(iv1)
      acd65(92)=spvak1k5(iv1)
      acd65(93)=spvak1k6(iv1)
      acd65(94)=spvak1k7(iv1)
      acd65(95)=acd65(61)*acd65(70)
      acd65(96)=acd65(59)*acd65(69)
      acd65(97)=acd65(57)*acd65(68)
      acd65(98)=acd65(55)*acd65(67)
      acd65(99)=acd65(53)*acd65(66)
      acd65(100)=acd65(51)*acd65(65)
      acd65(101)=acd65(49)*acd65(64)
      acd65(102)=acd65(47)*acd65(63)
      acd65(103)=acd65(45)*acd65(62)
      acd65(104)=acd65(19)*acd65(42)
      acd65(105)=acd65(18)*acd65(41)
      acd65(106)=acd65(17)*acd65(40)
      acd65(107)=acd65(16)*acd65(39)
      acd65(108)=acd65(34)*acd65(35)
      acd65(109)=acd65(21)*acd65(22)
      acd65(110)=acd65(1)*acd65(3)
      acd65(111)=-acd65(24)-acd65(28)+acd65(30)+acd65(32)
      acd65(112)=acd65(25)*acd65(111)
      acd65(113)=acd65(20)*acd65(43)
      acd65(114)=acd65(15)*acd65(38)
      acd65(95)=2.0_ki*acd65(114)+acd65(113)+acd65(112)+acd65(110)+acd65(109)+a&
      &cd65(108)+acd65(107)+acd65(106)+acd65(105)+acd65(104)+acd65(103)+acd65(1&
      &02)+acd65(101)+acd65(100)+acd65(99)+acd65(98)+acd65(97)+acd65(95)+acd65(&
      &96)
      acd65(95)=acd65(2)*acd65(95)
      acd65(96)=acd65(1)+acd65(21)
      acd65(96)=acd65(13)*acd65(96)
      acd65(97)=acd65(89)*acd65(94)
      acd65(98)=acd65(87)*acd65(93)
      acd65(99)=acd65(85)*acd65(92)
      acd65(100)=acd65(83)*acd65(91)
      acd65(101)=acd65(81)*acd65(90)
      acd65(102)=acd65(65)*acd65(79)
      acd65(103)=acd65(64)*acd65(78)
      acd65(104)=acd65(63)*acd65(77)
      acd65(105)=acd65(62)*acd65(76)
      acd65(106)=acd65(19)*acd65(74)
      acd65(107)=acd65(18)*acd65(73)
      acd65(108)=acd65(17)*acd65(72)
      acd65(109)=acd65(16)*acd65(71)
      acd65(110)=acd65(34)*acd65(36)
      acd65(111)=-acd65(26)*acd65(111)
      acd65(112)=acd65(20)*acd65(75)
      acd65(113)=acd65(15)*acd65(43)
      acd65(96)=acd65(113)+2.0_ki*acd65(112)+acd65(111)+acd65(110)+acd65(109)+a&
      &cd65(108)+acd65(107)+acd65(106)+acd65(105)+acd65(104)+acd65(103)+acd65(1&
      &02)+acd65(101)+acd65(100)+acd65(99)+acd65(97)+acd65(98)+acd65(96)
      acd65(96)=acd65(12)*acd65(96)
      acd65(97)=acd65(61)*acd65(60)
      acd65(98)=acd65(59)*acd65(58)
      acd65(99)=acd65(57)*acd65(56)
      acd65(100)=acd65(55)*acd65(54)
      acd65(101)=acd65(53)*acd65(52)
      acd65(102)=acd65(50)*acd65(51)
      acd65(103)=acd65(48)*acd65(49)
      acd65(104)=acd65(46)*acd65(47)
      acd65(105)=acd65(44)*acd65(45)
      acd65(106)=acd65(10)*acd65(42)
      acd65(107)=acd65(8)*acd65(41)
      acd65(108)=acd65(6)*acd65(40)
      acd65(109)=acd65(4)*acd65(39)
      acd65(110)=acd65(37)*acd65(35)
      acd65(111)=acd65(23)*acd65(22)
      acd65(112)=acd65(14)*acd65(3)
      acd65(113)=-acd65(27)-acd65(29)+acd65(31)+acd65(33)
      acd65(114)=acd65(25)*acd65(113)
      acd65(97)=acd65(114)+acd65(112)+acd65(111)+acd65(110)+acd65(109)+acd65(10&
      &8)+acd65(107)+acd65(106)+acd65(105)+acd65(104)+acd65(103)+acd65(102)+acd&
      &65(101)+acd65(100)+acd65(99)+acd65(97)+acd65(98)
      acd65(97)=acd65(15)*acd65(97)
      acd65(98)=acd65(14)+acd65(23)
      acd65(99)=acd65(13)*acd65(98)
      acd65(100)=acd65(89)*acd65(88)
      acd65(101)=acd65(87)*acd65(86)
      acd65(102)=acd65(85)*acd65(84)
      acd65(103)=acd65(83)*acd65(82)
      acd65(104)=acd65(81)*acd65(80)
      acd65(105)=acd65(50)*acd65(79)
      acd65(106)=acd65(48)*acd65(78)
      acd65(107)=acd65(46)*acd65(77)
      acd65(108)=acd65(44)*acd65(76)
      acd65(109)=acd65(10)*acd65(74)
      acd65(110)=acd65(8)*acd65(73)
      acd65(111)=acd65(6)*acd65(72)
      acd65(112)=acd65(4)*acd65(71)
      acd65(114)=acd65(37)*acd65(36)
      acd65(113)=-acd65(26)*acd65(113)
      acd65(99)=acd65(113)+acd65(114)+acd65(112)+acd65(111)+acd65(110)+acd65(10&
      &9)+acd65(108)+acd65(107)+acd65(106)+acd65(105)+acd65(104)+acd65(103)+acd&
      &65(102)+acd65(100)+acd65(101)+acd65(99)
      acd65(99)=acd65(20)*acd65(99)
      acd65(100)=acd65(11)*acd65(10)
      acd65(101)=acd65(9)*acd65(8)
      acd65(102)=-acd65(7)*acd65(6)
      acd65(103)=-acd65(5)*acd65(4)
      acd65(100)=acd65(103)+acd65(102)+acd65(100)+acd65(101)
      acd65(100)=acd65(1)*acd65(100)
      acd65(101)=acd65(21)+acd65(34)
      acd65(102)=acd65(10)*acd65(101)
      acd65(98)=acd65(98)+acd65(37)
      acd65(103)=acd65(19)*acd65(98)
      acd65(102)=acd65(103)+acd65(102)
      acd65(102)=acd65(11)*acd65(102)
      acd65(103)=acd65(8)*acd65(101)
      acd65(104)=acd65(18)*acd65(98)
      acd65(103)=acd65(104)+acd65(103)
      acd65(103)=acd65(9)*acd65(103)
      acd65(104)=-acd65(6)*acd65(101)
      acd65(105)=-acd65(17)*acd65(98)
      acd65(104)=acd65(105)+acd65(104)
      acd65(104)=acd65(7)*acd65(104)
      acd65(101)=-acd65(4)*acd65(101)
      acd65(98)=-acd65(16)*acd65(98)
      acd65(98)=acd65(98)+acd65(101)
      acd65(98)=acd65(5)*acd65(98)
      brack=acd65(95)+acd65(96)+acd65(97)+acd65(98)+acd65(99)+acd65(100)+acd65(&
      &102)+acd65(103)+acd65(104)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd65h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd65
      complex(ki) :: brack
      acd65(1)=d(iv1,iv2)
      acd65(2)=spvak1k2(iv3)
      acd65(3)=abb65(82)
      acd65(4)=spvak3k2(iv3)
      acd65(5)=abb65(39)
      acd65(6)=spvak4k2(iv3)
      acd65(7)=abb65(87)
      acd65(8)=spvak5k2(iv3)
      acd65(9)=abb65(79)
      acd65(10)=spvak6k2(iv3)
      acd65(11)=abb65(295)
      acd65(12)=spvak7k2(iv3)
      acd65(13)=abb65(43)
      acd65(14)=d(iv1,iv3)
      acd65(15)=spvak1k2(iv2)
      acd65(16)=spvak3k2(iv2)
      acd65(17)=spvak4k2(iv2)
      acd65(18)=spvak5k2(iv2)
      acd65(19)=spvak6k2(iv2)
      acd65(20)=spvak7k2(iv2)
      acd65(21)=d(iv2,iv3)
      acd65(22)=spvak1k2(iv1)
      acd65(23)=spvak3k2(iv1)
      acd65(24)=spvak4k2(iv1)
      acd65(25)=spvak5k2(iv1)
      acd65(26)=spvak6k2(iv1)
      acd65(27)=spvak7k2(iv1)
      acd65(28)=-acd65(2)*acd65(3)
      acd65(29)=-acd65(4)*acd65(5)
      acd65(30)=-acd65(6)*acd65(7)
      acd65(31)=-acd65(8)*acd65(9)
      acd65(32)=-acd65(10)*acd65(11)
      acd65(33)=-acd65(12)*acd65(13)
      acd65(28)=acd65(33)+acd65(32)+acd65(31)+acd65(30)+acd65(28)+acd65(29)
      acd65(28)=acd65(1)*acd65(28)
      acd65(29)=-acd65(15)*acd65(3)
      acd65(30)=-acd65(16)*acd65(5)
      acd65(31)=-acd65(17)*acd65(7)
      acd65(32)=-acd65(18)*acd65(9)
      acd65(33)=-acd65(19)*acd65(11)
      acd65(34)=-acd65(20)*acd65(13)
      acd65(29)=acd65(34)+acd65(33)+acd65(32)+acd65(31)+acd65(30)+acd65(29)
      acd65(29)=acd65(14)*acd65(29)
      acd65(30)=-acd65(22)*acd65(3)
      acd65(31)=-acd65(23)*acd65(5)
      acd65(32)=-acd65(24)*acd65(7)
      acd65(33)=-acd65(25)*acd65(9)
      acd65(34)=-acd65(26)*acd65(11)
      acd65(35)=-acd65(27)*acd65(13)
      acd65(30)=acd65(35)+acd65(34)+acd65(33)+acd65(32)+acd65(31)+acd65(30)
      acd65(30)=acd65(21)*acd65(30)
      acd65(28)=acd65(30)+acd65(29)+acd65(28)
      brack=2.0_ki*acd65(28)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd65h5
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
!---#[ subroutine reconstruct_d65:
   subroutine     reconstruct_d65(coeffs)
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_65:
      coeffs%coeffs_65%c0 = derivative(czip)
      coeffs%coeffs_65%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_65%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_65%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_65%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_65%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_65%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_65%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_65%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_65%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_65%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_65%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_65%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_65%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_65%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_65%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_65%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_65%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_65%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_65%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_65%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_65%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_65%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_65%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_65%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_65%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_65%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_65%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_65%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_65%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_65%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_65%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_65%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_65%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_65%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_65:
   end subroutine reconstruct_d65
!---#] subroutine reconstruct_d65:
end module     p0_dbard_epnemumnmubarg_d65h5l1d
