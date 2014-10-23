module     p0_dbaru_epnebbbarg_d13h6l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d13h6l1d.f90
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
   public :: derivative , reconstruct_d13
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd13h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd13
      complex(ki) :: brack
      acd13(1)=abb13(19)
      brack=acd13(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd13h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd13
      complex(ki) :: brack
      acd13(1)=k1(iv1)
      acd13(2)=abb13(37)
      acd13(3)=k2(iv1)
      acd13(4)=abb13(32)
      acd13(5)=l5(iv1)
      acd13(6)=abb13(52)
      acd13(7)=l6(iv1)
      acd13(8)=k7(iv1)
      acd13(9)=abb13(44)
      acd13(10)=spvak1k7(iv1)
      acd13(11)=abb13(20)
      acd13(12)=spvak4k3(iv1)
      acd13(13)=abb13(40)
      acd13(14)=spval5k2(iv1)
      acd13(15)=abb13(17)
      acd13(16)=spval5l6(iv1)
      acd13(17)=abb13(21)
      acd13(18)=spval6k2(iv1)
      acd13(19)=abb13(27)
      acd13(20)=spvak7k1(iv1)
      acd13(21)=abb13(28)
      acd13(22)=acd13(7)+acd13(5)
      acd13(22)=acd13(6)*acd13(22)
      acd13(23)=acd13(2)*acd13(1)
      acd13(24)=acd13(4)*acd13(3)
      acd13(25)=acd13(9)*acd13(8)
      acd13(26)=acd13(11)*acd13(10)
      acd13(27)=acd13(13)*acd13(12)
      acd13(28)=acd13(15)*acd13(14)
      acd13(29)=acd13(17)*acd13(16)
      acd13(30)=acd13(19)*acd13(18)
      acd13(31)=acd13(21)*acd13(20)
      brack=acd13(22)+acd13(23)+acd13(24)+acd13(25)+acd13(26)+acd13(27)+acd13(2&
      &8)+acd13(29)+acd13(30)+acd13(31)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd13h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(90) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=abb13(12)
      acd13(3)=k1(iv1)
      acd13(4)=k2(iv2)
      acd13(5)=abb13(67)
      acd13(6)=spval5l6(iv2)
      acd13(7)=abb13(63)
      acd13(8)=k1(iv2)
      acd13(9)=k2(iv1)
      acd13(10)=spval5l6(iv1)
      acd13(11)=l5(iv2)
      acd13(12)=abb13(69)
      acd13(13)=l6(iv2)
      acd13(14)=k7(iv2)
      acd13(15)=abb13(46)
      acd13(16)=abb13(74)
      acd13(17)=spvak1k2(iv2)
      acd13(18)=abb13(47)
      acd13(19)=spvak1k3(iv2)
      acd13(20)=abb13(13)
      acd13(21)=spvak1k7(iv2)
      acd13(22)=abb13(29)
      acd13(23)=spvak4k2(iv2)
      acd13(24)=abb13(11)
      acd13(25)=spvak4k3(iv2)
      acd13(26)=abb13(43)
      acd13(27)=spval5k2(iv2)
      acd13(28)=abb13(26)
      acd13(29)=spval6k2(iv2)
      acd13(30)=abb13(79)
      acd13(31)=spvak7k1(iv2)
      acd13(32)=abb13(54)
      acd13(33)=spvak7k2(iv2)
      acd13(34)=abb13(83)
      acd13(35)=spvak7k3(iv2)
      acd13(36)=abb13(78)
      acd13(37)=l5(iv1)
      acd13(38)=l6(iv1)
      acd13(39)=k7(iv1)
      acd13(40)=spvak1k2(iv1)
      acd13(41)=spvak1k3(iv1)
      acd13(42)=spvak1k7(iv1)
      acd13(43)=spvak4k2(iv1)
      acd13(44)=spvak4k3(iv1)
      acd13(45)=spval5k2(iv1)
      acd13(46)=spval6k2(iv1)
      acd13(47)=spvak7k1(iv1)
      acd13(48)=spvak7k2(iv1)
      acd13(49)=spvak7k3(iv1)
      acd13(50)=abb13(41)
      acd13(51)=abb13(35)
      acd13(52)=abb13(24)
      acd13(53)=abb13(31)
      acd13(54)=abb13(50)
      acd13(55)=abb13(51)
      acd13(56)=abb13(45)
      acd13(57)=abb13(39)
      acd13(58)=abb13(18)
      acd13(59)=abb13(36)
      acd13(60)=abb13(88)
      acd13(61)=abb13(60)
      acd13(62)=abb13(87)
      acd13(63)=abb13(84)
      acd13(64)=abb13(14)
      acd13(65)=abb13(16)
      acd13(66)=abb13(64)
      acd13(67)=abb13(25)
      acd13(68)=spvak1l6(iv2)
      acd13(69)=abb13(38)
      acd13(70)=spvak7l6(iv2)
      acd13(71)=abb13(58)
      acd13(72)=spvak1l6(iv1)
      acd13(73)=spvak7l6(iv1)
      acd13(74)=acd13(11)+acd13(13)
      acd13(75)=acd13(12)*acd13(74)
      acd13(76)=acd13(31)*acd13(32)
      acd13(77)=acd13(21)*acd13(22)
      acd13(78)=acd13(14)*acd13(15)
      acd13(79)=acd13(5)*acd13(8)
      acd13(80)=acd13(33)*acd13(34)
      acd13(81)=acd13(29)*acd13(30)
      acd13(82)=acd13(17)*acd13(18)
      acd13(83)=acd13(35)*acd13(36)
      acd13(84)=acd13(23)*acd13(24)
      acd13(85)=acd13(19)*acd13(20)
      acd13(86)=acd13(27)*acd13(28)
      acd13(87)=acd13(25)*acd13(26)
      acd13(88)=acd13(6)*acd13(16)
      acd13(75)=acd13(88)+acd13(87)+acd13(86)+acd13(85)+acd13(84)+acd13(83)+acd&
      &13(82)+acd13(81)+acd13(80)+acd13(79)+acd13(78)+acd13(76)+acd13(77)+acd13&
      &(75)
      acd13(75)=acd13(9)*acd13(75)
      acd13(76)=acd13(37)+acd13(38)
      acd13(77)=acd13(12)*acd13(76)
      acd13(78)=acd13(32)*acd13(47)
      acd13(79)=acd13(22)*acd13(42)
      acd13(80)=acd13(15)*acd13(39)
      acd13(81)=acd13(3)*acd13(5)
      acd13(82)=acd13(48)*acd13(34)
      acd13(83)=acd13(46)*acd13(30)
      acd13(84)=acd13(40)*acd13(18)
      acd13(85)=acd13(49)*acd13(36)
      acd13(86)=acd13(43)*acd13(24)
      acd13(87)=acd13(41)*acd13(20)
      acd13(88)=acd13(45)*acd13(28)
      acd13(89)=acd13(44)*acd13(26)
      acd13(90)=acd13(10)*acd13(16)
      acd13(77)=acd13(90)+acd13(89)+acd13(88)+acd13(87)+acd13(86)+acd13(85)+acd&
      &13(84)+acd13(83)+acd13(82)+acd13(81)+acd13(80)+acd13(78)+acd13(79)+acd13&
      &(77)
      acd13(77)=acd13(4)*acd13(77)
      acd13(78)=acd13(31)*acd13(61)
      acd13(79)=acd13(21)*acd13(57)
      acd13(80)=acd13(14)*acd13(54)
      acd13(81)=acd13(7)*acd13(8)
      acd13(82)=acd13(33)*acd13(62)
      acd13(83)=-acd13(29)*acd13(60)
      acd13(84)=acd13(17)*acd13(55)
      acd13(85)=acd13(35)*acd13(63)
      acd13(86)=acd13(23)*acd13(58)
      acd13(87)=acd13(19)*acd13(56)
      acd13(88)=acd13(27)*acd13(59)
      acd13(78)=acd13(88)+acd13(87)+acd13(86)+acd13(85)+acd13(84)+acd13(83)+acd&
      &13(82)+acd13(81)+acd13(80)+acd13(78)+acd13(79)
      acd13(78)=acd13(10)*acd13(78)
      acd13(79)=acd13(47)*acd13(61)
      acd13(80)=acd13(42)*acd13(57)
      acd13(81)=acd13(39)*acd13(54)
      acd13(82)=acd13(3)*acd13(7)
      acd13(83)=acd13(48)*acd13(62)
      acd13(84)=-acd13(46)*acd13(60)
      acd13(85)=acd13(40)*acd13(55)
      acd13(86)=acd13(49)*acd13(63)
      acd13(87)=acd13(43)*acd13(58)
      acd13(88)=acd13(41)*acd13(56)
      acd13(89)=acd13(45)*acd13(59)
      acd13(79)=acd13(89)+acd13(88)+acd13(87)+acd13(86)+acd13(85)+acd13(84)+acd&
      &13(83)+acd13(82)+acd13(81)+acd13(79)+acd13(80)
      acd13(79)=acd13(6)*acd13(79)
      acd13(80)=acd13(71)*acd13(70)
      acd13(81)=acd13(69)*acd13(68)
      acd13(82)=acd13(33)*acd13(67)
      acd13(83)=acd13(29)*acd13(66)
      acd13(84)=acd13(17)*acd13(64)
      acd13(85)=acd13(27)*acd13(65)
      acd13(80)=acd13(85)+acd13(84)+acd13(83)+acd13(82)+acd13(80)+acd13(81)
      acd13(80)=acd13(44)*acd13(80)
      acd13(81)=acd13(71)*acd13(73)
      acd13(82)=acd13(69)*acd13(72)
      acd13(83)=acd13(48)*acd13(67)
      acd13(84)=acd13(46)*acd13(66)
      acd13(85)=acd13(40)*acd13(64)
      acd13(86)=acd13(45)*acd13(65)
      acd13(81)=acd13(86)+acd13(85)+acd13(84)+acd13(83)+acd13(81)+acd13(82)
      acd13(81)=acd13(25)*acd13(81)
      acd13(82)=acd13(35)*acd13(53)
      acd13(83)=acd13(23)*acd13(51)
      acd13(84)=acd13(19)*acd13(50)
      acd13(85)=acd13(27)*acd13(52)
      acd13(82)=acd13(85)+acd13(84)-acd13(82)-acd13(83)
      acd13(76)=acd13(76)*acd13(82)
      acd13(82)=acd13(49)*acd13(53)
      acd13(83)=acd13(43)*acd13(51)
      acd13(84)=acd13(41)*acd13(50)
      acd13(85)=acd13(45)*acd13(52)
      acd13(82)=-acd13(82)-acd13(83)+acd13(84)+acd13(85)
      acd13(74)=acd13(82)*acd13(74)
      acd13(82)=acd13(1)*acd13(2)
      brack=acd13(74)+acd13(75)+acd13(76)+acd13(77)+acd13(78)+acd13(79)+acd13(8&
      &0)+acd13(81)+2.0_ki*acd13(82)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd13h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=k2(iv3)
      acd13(3)=abb13(22)
      acd13(4)=spvak1k3(iv3)
      acd13(5)=abb13(42)
      acd13(6)=spvak4k2(iv3)
      acd13(7)=abb13(15)
      acd13(8)=spvak4k3(iv3)
      acd13(9)=abb13(48)
      acd13(10)=spval5k2(iv3)
      acd13(11)=abb13(88)
      acd13(12)=spvak7k3(iv3)
      acd13(13)=abb13(82)
      acd13(14)=d(iv1,iv3)
      acd13(15)=k2(iv2)
      acd13(16)=spvak1k3(iv2)
      acd13(17)=spvak4k2(iv2)
      acd13(18)=spvak4k3(iv2)
      acd13(19)=spval5k2(iv2)
      acd13(20)=spvak7k3(iv2)
      acd13(21)=d(iv2,iv3)
      acd13(22)=k2(iv1)
      acd13(23)=spvak1k3(iv1)
      acd13(24)=spvak4k2(iv1)
      acd13(25)=spvak4k3(iv1)
      acd13(26)=spval5k2(iv1)
      acd13(27)=spvak7k3(iv1)
      acd13(28)=spvak1k2(iv3)
      acd13(29)=abb13(23)
      acd13(30)=spvak7k2(iv3)
      acd13(31)=abb13(49)
      acd13(32)=spvak1k2(iv2)
      acd13(33)=spvak7k2(iv2)
      acd13(34)=spvak1k2(iv1)
      acd13(35)=spvak7k2(iv1)
      acd13(36)=spval5l6(iv3)
      acd13(37)=abb13(33)
      acd13(38)=spval5l6(iv2)
      acd13(39)=abb13(30)
      acd13(40)=spval5l6(iv1)
      acd13(41)=acd13(15)*acd13(25)
      acd13(42)=acd13(22)*acd13(18)
      acd13(41)=acd13(41)+acd13(42)
      acd13(42)=acd13(28)*acd13(41)
      acd13(43)=acd13(2)*acd13(25)
      acd13(44)=acd13(22)*acd13(8)
      acd13(43)=acd13(43)+acd13(44)
      acd13(44)=acd13(32)*acd13(43)
      acd13(45)=acd13(2)*acd13(18)
      acd13(46)=acd13(15)*acd13(8)
      acd13(45)=acd13(45)+acd13(46)
      acd13(46)=acd13(34)*acd13(45)
      acd13(42)=acd13(46)+acd13(44)+acd13(42)
      acd13(42)=acd13(29)*acd13(42)
      acd13(41)=acd13(30)*acd13(41)
      acd13(43)=acd13(33)*acd13(43)
      acd13(44)=acd13(35)*acd13(45)
      acd13(41)=acd13(44)+acd13(43)+acd13(41)
      acd13(41)=acd13(31)*acd13(41)
      acd13(43)=acd13(2)*acd13(1)
      acd13(44)=acd13(15)*acd13(14)
      acd13(45)=acd13(22)*acd13(21)
      acd13(43)=acd13(45)+acd13(43)+acd13(44)
      acd13(43)=acd13(3)*acd13(43)
      acd13(44)=acd13(1)*acd13(8)
      acd13(45)=acd13(14)*acd13(18)
      acd13(46)=acd13(21)*acd13(25)
      acd13(44)=acd13(46)+acd13(44)+acd13(45)
      acd13(44)=acd13(9)*acd13(44)
      acd13(43)=acd13(43)+acd13(44)
      acd13(44)=acd13(23)*acd13(5)
      acd13(45)=acd13(24)*acd13(7)
      acd13(46)=acd13(26)*acd13(11)
      acd13(47)=acd13(27)*acd13(13)
      acd13(44)=acd13(47)+acd13(46)+acd13(45)+acd13(44)
      acd13(45)=2.0_ki*acd13(21)
      acd13(44)=acd13(45)*acd13(44)
      acd13(45)=acd13(16)*acd13(5)
      acd13(46)=acd13(17)*acd13(7)
      acd13(47)=acd13(19)*acd13(11)
      acd13(48)=acd13(20)*acd13(13)
      acd13(45)=acd13(48)+acd13(47)+acd13(46)+acd13(45)
      acd13(46)=2.0_ki*acd13(14)
      acd13(45)=acd13(46)*acd13(45)
      acd13(46)=acd13(4)*acd13(5)
      acd13(47)=acd13(6)*acd13(7)
      acd13(48)=acd13(10)*acd13(11)
      acd13(49)=acd13(12)*acd13(13)
      acd13(46)=acd13(49)+acd13(48)+acd13(47)+acd13(46)
      acd13(47)=2.0_ki*acd13(1)
      acd13(46)=acd13(47)*acd13(46)
      acd13(47)=acd13(34)*acd13(37)
      acd13(48)=acd13(35)*acd13(39)
      acd13(47)=acd13(47)-acd13(48)
      acd13(48)=acd13(18)*acd13(47)
      acd13(49)=acd13(33)*acd13(39)
      acd13(50)=acd13(32)*acd13(37)
      acd13(50)=acd13(50)-acd13(49)
      acd13(50)=acd13(25)*acd13(50)
      acd13(48)=acd13(50)+acd13(48)
      acd13(48)=acd13(36)*acd13(48)
      acd13(47)=acd13(8)*acd13(47)
      acd13(50)=acd13(30)*acd13(39)
      acd13(51)=acd13(28)*acd13(37)
      acd13(51)=acd13(51)-acd13(50)
      acd13(51)=acd13(25)*acd13(51)
      acd13(47)=acd13(51)+acd13(47)
      acd13(47)=acd13(38)*acd13(47)
      acd13(51)=acd13(28)*acd13(18)
      acd13(52)=acd13(32)*acd13(8)
      acd13(51)=acd13(52)+acd13(51)
      acd13(51)=acd13(37)*acd13(51)
      acd13(50)=-acd13(18)*acd13(50)
      acd13(49)=-acd13(8)*acd13(49)
      acd13(49)=acd13(49)+acd13(50)+acd13(51)
      acd13(49)=acd13(40)*acd13(49)
      brack=acd13(41)+acd13(42)+2.0_ki*acd13(43)+acd13(44)+acd13(45)+acd13(46)+&
      &acd13(47)+acd13(48)+acd13(49)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd13h6
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
!---#[ subroutine reconstruct_d13:
   subroutine     reconstruct_d13(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_13:
      coeffs%coeffs_13%c0 = derivative(czip)
      coeffs%coeffs_13%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_13%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_13%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_13%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_13%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_13%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_13%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_13%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_13%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_13%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_13%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_13%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_13%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_13%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_13%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_13%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_13%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_13%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_13%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_13%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_13%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_13%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_13%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_13%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_13%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_13%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_13%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_13%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_13%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_13%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_13%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_13%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_13%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_13%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_13:
   end subroutine reconstruct_d13
!---#] subroutine reconstruct_d13:
end module     p0_dbaru_epnebbbarg_d13h6l1d
