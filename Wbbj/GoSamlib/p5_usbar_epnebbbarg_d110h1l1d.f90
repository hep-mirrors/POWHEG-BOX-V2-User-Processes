module     p5_usbar_epnebbbarg_d110h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d110h1l1d.f90
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
   public :: derivative , reconstruct_d110
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd110h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd110
      complex(ki) :: brack
      acd110(1)=dotproduct(k1,qshift)
      acd110(2)=dotproduct(qshift,spval6l5)
      acd110(3)=abb110(40)
      acd110(4)=dotproduct(qshift,spvak7k2)
      acd110(5)=abb110(28)
      acd110(6)=dotproduct(qshift,spvak7l5)
      acd110(7)=abb110(41)
      acd110(8)=abb110(37)
      acd110(9)=dotproduct(k2,qshift)
      acd110(10)=dotproduct(qshift,spvak7k1)
      acd110(11)=abb110(43)
      acd110(12)=dotproduct(qshift,spvak7k3)
      acd110(13)=abb110(42)
      acd110(14)=dotproduct(k3,qshift)
      acd110(15)=dotproduct(k4,qshift)
      acd110(16)=dotproduct(l6,qshift)
      acd110(17)=abb110(26)
      acd110(18)=dotproduct(k7,qshift)
      acd110(19)=abb110(34)
      acd110(20)=abb110(23)
      acd110(21)=abb110(25)
      acd110(22)=dotproduct(qshift,spvak4k1)
      acd110(23)=abb110(10)
      acd110(24)=dotproduct(qshift,spvak4k3)
      acd110(25)=abb110(12)
      acd110(26)=dotproduct(qshift,spvak2k1)
      acd110(27)=abb110(22)
      acd110(28)=dotproduct(qshift,spvak2k3)
      acd110(29)=abb110(21)
      acd110(30)=abb110(19)
      acd110(31)=abb110(20)
      acd110(32)=abb110(27)
      acd110(33)=abb110(13)
      acd110(34)=abb110(15)
      acd110(35)=dotproduct(qshift,spval6k1)
      acd110(36)=dotproduct(qshift,spval6k3)
      acd110(37)=abb110(39)
      acd110(38)=abb110(14)
      acd110(39)=abb110(16)
      acd110(40)=abb110(11)
      acd110(41)=abb110(18)
      acd110(42)=dotproduct(qshift,spval6k2)
      acd110(43)=abb110(17)
      acd110(44)=dotproduct(qshift,spvak7l6)
      acd110(45)=abb110(32)
      acd110(46)=abb110(9)
      acd110(47)=-acd110(20)*acd110(10)
      acd110(48)=acd110(21)*acd110(12)
      acd110(49)=acd110(23)*acd110(22)
      acd110(50)=acd110(25)*acd110(24)
      acd110(47)=acd110(50)+acd110(49)+acd110(48)+acd110(47)
      acd110(47)=acd110(2)*acd110(47)
      acd110(48)=acd110(27)*acd110(26)
      acd110(49)=acd110(29)*acd110(28)
      acd110(50)=acd110(30)*acd110(22)
      acd110(51)=acd110(31)*acd110(24)
      acd110(48)=-acd110(32)+acd110(51)+acd110(50)+acd110(49)+acd110(48)
      acd110(48)=acd110(4)*acd110(48)
      acd110(49)=acd110(33)*acd110(22)
      acd110(50)=acd110(34)*acd110(24)
      acd110(51)=acd110(35)*acd110(20)
      acd110(52)=-acd110(36)*acd110(21)
      acd110(49)=-acd110(37)+acd110(52)+acd110(51)+acd110(50)+acd110(49)
      acd110(49)=acd110(6)*acd110(49)
      acd110(50)=-acd110(3)*acd110(2)
      acd110(51)=acd110(5)*acd110(4)
      acd110(52)=acd110(7)*acd110(6)
      acd110(50)=acd110(8)+acd110(52)+acd110(50)+acd110(51)
      acd110(51)=-acd110(1)+acd110(15)+acd110(14)
      acd110(50)=acd110(51)*acd110(50)
      acd110(51)=acd110(11)*acd110(10)
      acd110(52)=acd110(13)*acd110(12)
      acd110(51)=acd110(52)+acd110(51)
      acd110(51)=acd110(9)*acd110(51)
      acd110(52)=-acd110(17)*acd110(16)
      acd110(53)=-acd110(19)*acd110(18)
      acd110(54)=-acd110(38)*acd110(26)
      acd110(55)=-acd110(39)*acd110(28)
      acd110(56)=-acd110(40)*acd110(22)
      acd110(57)=-acd110(41)*acd110(24)
      acd110(58)=-acd110(43)*acd110(42)
      acd110(59)=-acd110(45)*acd110(44)
      brack=acd110(46)+acd110(47)+acd110(48)+acd110(49)+acd110(50)+acd110(51)+a&
      &cd110(52)+acd110(53)+acd110(54)+acd110(55)+acd110(56)+acd110(57)+acd110(&
      &58)+acd110(59)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd110h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(77) :: acd110
      complex(ki) :: brack
      acd110(1)=k1(iv1)
      acd110(2)=dotproduct(qshift,spval6l5)
      acd110(3)=abb110(40)
      acd110(4)=dotproduct(qshift,spvak7k2)
      acd110(5)=abb110(28)
      acd110(6)=dotproduct(qshift,spvak7l5)
      acd110(7)=abb110(41)
      acd110(8)=abb110(37)
      acd110(9)=k2(iv1)
      acd110(10)=dotproduct(qshift,spvak7k1)
      acd110(11)=abb110(43)
      acd110(12)=dotproduct(qshift,spvak7k3)
      acd110(13)=abb110(42)
      acd110(14)=k3(iv1)
      acd110(15)=k4(iv1)
      acd110(16)=l6(iv1)
      acd110(17)=abb110(26)
      acd110(18)=k7(iv1)
      acd110(19)=abb110(34)
      acd110(20)=spval6l5(iv1)
      acd110(21)=dotproduct(k1,qshift)
      acd110(22)=dotproduct(k3,qshift)
      acd110(23)=dotproduct(k4,qshift)
      acd110(24)=abb110(23)
      acd110(25)=abb110(25)
      acd110(26)=dotproduct(qshift,spvak4k1)
      acd110(27)=abb110(10)
      acd110(28)=dotproduct(qshift,spvak4k3)
      acd110(29)=abb110(12)
      acd110(30)=spvak7k2(iv1)
      acd110(31)=dotproduct(qshift,spvak2k1)
      acd110(32)=abb110(22)
      acd110(33)=dotproduct(qshift,spvak2k3)
      acd110(34)=abb110(21)
      acd110(35)=abb110(19)
      acd110(36)=abb110(20)
      acd110(37)=abb110(27)
      acd110(38)=spvak7l5(iv1)
      acd110(39)=abb110(13)
      acd110(40)=abb110(15)
      acd110(41)=dotproduct(qshift,spval6k1)
      acd110(42)=dotproduct(qshift,spval6k3)
      acd110(43)=abb110(39)
      acd110(44)=spvak7k1(iv1)
      acd110(45)=dotproduct(k2,qshift)
      acd110(46)=spvak7k3(iv1)
      acd110(47)=spvak2k1(iv1)
      acd110(48)=abb110(14)
      acd110(49)=spvak2k3(iv1)
      acd110(50)=abb110(16)
      acd110(51)=spvak4k1(iv1)
      acd110(52)=abb110(11)
      acd110(53)=spvak4k3(iv1)
      acd110(54)=abb110(18)
      acd110(55)=spval6k1(iv1)
      acd110(56)=spval6k2(iv1)
      acd110(57)=abb110(17)
      acd110(58)=spval6k3(iv1)
      acd110(59)=spvak7l6(iv1)
      acd110(60)=abb110(32)
      acd110(61)=-acd110(28)*acd110(29)
      acd110(62)=-acd110(26)*acd110(27)
      acd110(63)=-acd110(25)*acd110(12)
      acd110(64)=acd110(24)*acd110(10)
      acd110(65)=-acd110(23)+acd110(21)-acd110(22)
      acd110(66)=-acd110(3)*acd110(65)
      acd110(61)=acd110(66)+acd110(64)+acd110(63)+acd110(61)+acd110(62)
      acd110(61)=acd110(20)*acd110(61)
      acd110(62)=-acd110(53)*acd110(40)
      acd110(63)=-acd110(51)*acd110(39)
      acd110(64)=acd110(25)*acd110(58)
      acd110(66)=-acd110(24)*acd110(55)
      acd110(67)=-acd110(15)+acd110(1)-acd110(14)
      acd110(68)=acd110(7)*acd110(67)
      acd110(62)=acd110(68)+acd110(66)+acd110(64)+acd110(62)+acd110(63)
      acd110(62)=acd110(6)*acd110(62)
      acd110(63)=-acd110(34)*acd110(49)
      acd110(64)=-acd110(32)*acd110(47)
      acd110(66)=-acd110(53)*acd110(36)
      acd110(68)=-acd110(51)*acd110(35)
      acd110(69)=acd110(5)*acd110(67)
      acd110(63)=acd110(69)+acd110(68)+acd110(66)+acd110(63)+acd110(64)
      acd110(63)=acd110(4)*acd110(63)
      acd110(64)=-acd110(53)*acd110(29)
      acd110(66)=-acd110(51)*acd110(27)
      acd110(68)=-acd110(25)*acd110(46)
      acd110(69)=acd110(24)*acd110(44)
      acd110(70)=-acd110(3)*acd110(67)
      acd110(64)=acd110(70)+acd110(69)+acd110(68)+acd110(64)+acd110(66)
      acd110(64)=acd110(2)*acd110(64)
      acd110(66)=-acd110(28)*acd110(40)
      acd110(68)=-acd110(26)*acd110(39)
      acd110(69)=acd110(25)*acd110(42)
      acd110(70)=-acd110(24)*acd110(41)
      acd110(71)=acd110(7)*acd110(65)
      acd110(66)=acd110(71)+acd110(70)+acd110(69)+acd110(68)+acd110(43)+acd110(&
      &66)
      acd110(66)=acd110(38)*acd110(66)
      acd110(68)=-acd110(34)*acd110(33)
      acd110(69)=-acd110(32)*acd110(31)
      acd110(70)=-acd110(28)*acd110(36)
      acd110(71)=-acd110(26)*acd110(35)
      acd110(65)=acd110(5)*acd110(65)
      acd110(65)=acd110(65)+acd110(71)+acd110(70)+acd110(69)+acd110(37)+acd110(&
      &68)
      acd110(65)=acd110(30)*acd110(65)
      acd110(68)=-acd110(13)*acd110(46)
      acd110(69)=-acd110(11)*acd110(44)
      acd110(68)=acd110(69)+acd110(68)
      acd110(68)=acd110(45)*acd110(68)
      acd110(69)=-acd110(12)*acd110(13)
      acd110(70)=-acd110(10)*acd110(11)
      acd110(69)=acd110(69)+acd110(70)
      acd110(69)=acd110(9)*acd110(69)
      acd110(67)=acd110(8)*acd110(67)
      acd110(70)=acd110(59)*acd110(60)
      acd110(71)=acd110(56)*acd110(57)
      acd110(72)=acd110(18)*acd110(19)
      acd110(73)=acd110(16)*acd110(17)
      acd110(74)=acd110(49)*acd110(50)
      acd110(75)=acd110(47)*acd110(48)
      acd110(76)=acd110(53)*acd110(54)
      acd110(77)=acd110(51)*acd110(52)
      brack=acd110(61)+acd110(62)+acd110(63)+acd110(64)+acd110(65)+acd110(66)+a&
      &cd110(67)+acd110(68)+acd110(69)+acd110(70)+acd110(71)+acd110(72)+acd110(&
      &73)+acd110(74)+acd110(75)+acd110(76)+acd110(77)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd110h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd110
      complex(ki) :: brack
      acd110(1)=k1(iv1)
      acd110(2)=spval6l5(iv2)
      acd110(3)=abb110(40)
      acd110(4)=spvak7k2(iv2)
      acd110(5)=abb110(28)
      acd110(6)=spvak7l5(iv2)
      acd110(7)=abb110(41)
      acd110(8)=k1(iv2)
      acd110(9)=spval6l5(iv1)
      acd110(10)=spvak7k2(iv1)
      acd110(11)=spvak7l5(iv1)
      acd110(12)=k2(iv1)
      acd110(13)=spvak7k1(iv2)
      acd110(14)=abb110(43)
      acd110(15)=spvak7k3(iv2)
      acd110(16)=abb110(42)
      acd110(17)=k2(iv2)
      acd110(18)=spvak7k1(iv1)
      acd110(19)=spvak7k3(iv1)
      acd110(20)=k3(iv1)
      acd110(21)=k3(iv2)
      acd110(22)=k4(iv1)
      acd110(23)=k4(iv2)
      acd110(24)=abb110(23)
      acd110(25)=abb110(25)
      acd110(26)=spvak4k1(iv2)
      acd110(27)=abb110(10)
      acd110(28)=spvak4k3(iv2)
      acd110(29)=abb110(12)
      acd110(30)=spvak4k1(iv1)
      acd110(31)=spvak4k3(iv1)
      acd110(32)=spvak2k1(iv2)
      acd110(33)=abb110(22)
      acd110(34)=spvak2k3(iv2)
      acd110(35)=abb110(21)
      acd110(36)=abb110(19)
      acd110(37)=abb110(20)
      acd110(38)=spvak2k1(iv1)
      acd110(39)=spvak2k3(iv1)
      acd110(40)=abb110(13)
      acd110(41)=abb110(15)
      acd110(42)=spval6k1(iv2)
      acd110(43)=spval6k3(iv2)
      acd110(44)=spval6k1(iv1)
      acd110(45)=spval6k3(iv1)
      acd110(46)=acd110(28)*acd110(41)
      acd110(47)=acd110(26)*acd110(40)
      acd110(48)=-acd110(25)*acd110(43)
      acd110(49)=acd110(24)*acd110(42)
      acd110(50)=-acd110(23)+acd110(8)-acd110(21)
      acd110(51)=-acd110(7)*acd110(50)
      acd110(46)=acd110(51)+acd110(49)+acd110(48)+acd110(46)+acd110(47)
      acd110(46)=acd110(11)*acd110(46)
      acd110(47)=acd110(35)*acd110(34)
      acd110(48)=acd110(33)*acd110(32)
      acd110(49)=acd110(28)*acd110(37)
      acd110(51)=acd110(26)*acd110(36)
      acd110(52)=-acd110(5)*acd110(50)
      acd110(47)=acd110(52)+acd110(51)+acd110(49)+acd110(47)+acd110(48)
      acd110(47)=acd110(10)*acd110(47)
      acd110(48)=acd110(28)*acd110(29)
      acd110(49)=acd110(26)*acd110(27)
      acd110(51)=acd110(25)*acd110(15)
      acd110(52)=-acd110(24)*acd110(13)
      acd110(50)=acd110(3)*acd110(50)
      acd110(48)=acd110(50)+acd110(52)+acd110(51)+acd110(48)+acd110(49)
      acd110(48)=acd110(9)*acd110(48)
      acd110(49)=acd110(31)*acd110(41)
      acd110(50)=acd110(30)*acd110(40)
      acd110(51)=-acd110(25)*acd110(45)
      acd110(52)=acd110(24)*acd110(44)
      acd110(53)=-acd110(22)+acd110(1)-acd110(20)
      acd110(54)=-acd110(7)*acd110(53)
      acd110(49)=acd110(54)+acd110(52)+acd110(51)+acd110(49)+acd110(50)
      acd110(49)=acd110(6)*acd110(49)
      acd110(50)=acd110(35)*acd110(39)
      acd110(51)=acd110(33)*acd110(38)
      acd110(52)=acd110(31)*acd110(37)
      acd110(54)=acd110(30)*acd110(36)
      acd110(55)=-acd110(5)*acd110(53)
      acd110(50)=acd110(55)+acd110(54)+acd110(52)+acd110(50)+acd110(51)
      acd110(50)=acd110(4)*acd110(50)
      acd110(51)=acd110(31)*acd110(29)
      acd110(52)=acd110(30)*acd110(27)
      acd110(54)=acd110(25)*acd110(19)
      acd110(55)=-acd110(24)*acd110(18)
      acd110(53)=acd110(3)*acd110(53)
      acd110(51)=acd110(53)+acd110(55)+acd110(54)+acd110(51)+acd110(52)
      acd110(51)=acd110(2)*acd110(51)
      acd110(52)=acd110(16)*acd110(19)
      acd110(53)=acd110(14)*acd110(18)
      acd110(52)=acd110(52)+acd110(53)
      acd110(52)=acd110(17)*acd110(52)
      acd110(53)=acd110(15)*acd110(16)
      acd110(54)=acd110(13)*acd110(14)
      acd110(53)=acd110(53)+acd110(54)
      acd110(53)=acd110(12)*acd110(53)
      brack=acd110(46)+acd110(47)+acd110(48)+acd110(49)+acd110(50)+acd110(51)+a&
      &cd110(52)+acd110(53)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd110h1
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
      qshift = k6
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
!---#[ subroutine reconstruct_d110:
   subroutine     reconstruct_d110(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_110:
      coeffs%coeffs_110%c0 = derivative(czip)
      coeffs%coeffs_110%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_110%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_110%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_110%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_110%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_110%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_110%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_110%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_110%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_110%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_110%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_110%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_110%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_110%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_110:
   end subroutine reconstruct_d110
!---#] subroutine reconstruct_d110:
end module     p5_usbar_epnebbbarg_d110h1l1d
