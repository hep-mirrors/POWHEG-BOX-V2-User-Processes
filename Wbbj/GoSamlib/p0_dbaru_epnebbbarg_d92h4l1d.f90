module     p0_dbaru_epnebbbarg_d92h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d92h4l1d.f90
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
   public :: derivative , reconstruct_d92
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd92h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd92
      complex(ki) :: brack
      acd92(1)=dotproduct(k1,qshift)
      acd92(2)=dotproduct(qshift,spval6k2)
      acd92(3)=abb92(34)
      acd92(4)=dotproduct(qshift,spvak7k2)
      acd92(5)=abb92(61)
      acd92(6)=abb92(25)
      acd92(7)=dotproduct(k2,qshift)
      acd92(8)=abb92(39)
      acd92(9)=dotproduct(qshift,spvak1k2)
      acd92(10)=abb92(21)
      acd92(11)=dotproduct(qshift,spval5k2)
      acd92(12)=abb92(35)
      acd92(13)=abb92(28)
      acd92(14)=dotproduct(k3,qshift)
      acd92(15)=abb92(48)
      acd92(16)=abb92(80)
      acd92(17)=dotproduct(k4,qshift)
      acd92(18)=dotproduct(l5,qshift)
      acd92(19)=abb92(56)
      acd92(20)=dotproduct(l6,qshift)
      acd92(21)=abb92(52)
      acd92(22)=dotproduct(qshift,qshift)
      acd92(23)=abb92(44)
      acd92(24)=abb92(17)
      acd92(25)=dotproduct(qshift,spvak4k2)
      acd92(26)=abb92(50)
      acd92(27)=dotproduct(qshift,spvak4k3)
      acd92(28)=abb92(45)
      acd92(29)=abb92(15)
      acd92(30)=abb92(23)
      acd92(31)=abb92(40)
      acd92(32)=abb92(22)
      acd92(33)=abb92(12)
      acd92(34)=abb92(16)
      acd92(35)=abb92(14)
      acd92(36)=abb92(26)
      acd92(37)=abb92(54)
      acd92(38)=abb92(20)
      acd92(39)=abb92(13)
      acd92(40)=abb92(41)
      acd92(41)=dotproduct(qshift,spvak1l5)
      acd92(42)=abb92(30)
      acd92(43)=dotproduct(qshift,spvak1l6)
      acd92(44)=abb92(51)
      acd92(45)=dotproduct(qshift,spval6k1)
      acd92(46)=abb92(32)
      acd92(47)=dotproduct(qshift,spval6l5)
      acd92(48)=abb92(46)
      acd92(49)=abb92(19)
      acd92(50)=acd92(14)+acd92(17)
      acd92(51)=-acd92(15)*acd92(50)
      acd92(52)=-acd92(1)+acd92(18)+acd92(20)
      acd92(53)=-acd92(3)*acd92(52)
      acd92(54)=acd92(27)*acd92(28)
      acd92(55)=acd92(25)*acd92(26)
      acd92(56)=acd92(7)*acd92(8)
      acd92(57)=acd92(4)*acd92(24)
      acd92(51)=acd92(57)+acd92(56)+acd92(55)+acd92(54)-acd92(29)+acd92(53)+acd&
      &92(51)
      acd92(51)=acd92(2)*acd92(51)
      acd92(53)=acd92(50)-acd92(7)
      acd92(54)=acd92(12)*acd92(53)
      acd92(55)=acd92(27)*acd92(37)
      acd92(56)=acd92(25)*acd92(36)
      acd92(54)=acd92(56)-acd92(38)+acd92(55)+acd92(54)
      acd92(54)=acd92(11)*acd92(54)
      acd92(53)=-acd92(10)*acd92(53)
      acd92(55)=acd92(27)*acd92(34)
      acd92(56)=acd92(25)*acd92(33)
      acd92(53)=acd92(56)-acd92(35)+acd92(55)+acd92(53)
      acd92(53)=acd92(9)*acd92(53)
      acd92(52)=-acd92(5)*acd92(52)
      acd92(55)=acd92(11)*acd92(31)
      acd92(56)=acd92(9)*acd92(30)
      acd92(52)=acd92(56)+acd92(55)-acd92(32)+acd92(52)
      acd92(52)=acd92(4)*acd92(52)
      acd92(50)=-acd92(16)*acd92(50)
      acd92(55)=-acd92(47)*acd92(48)
      acd92(56)=-acd92(45)*acd92(46)
      acd92(57)=-acd92(43)*acd92(44)
      acd92(58)=-acd92(41)*acd92(42)
      acd92(59)=acd92(22)*acd92(23)
      acd92(60)=-acd92(20)*acd92(21)
      acd92(61)=-acd92(18)*acd92(19)
      acd92(62)=-acd92(1)*acd92(6)
      acd92(63)=-acd92(27)*acd92(40)
      acd92(64)=-acd92(25)*acd92(39)
      acd92(65)=-acd92(7)*acd92(13)
      brack=acd92(49)+acd92(50)+acd92(51)+acd92(52)+acd92(53)+acd92(54)+acd92(5&
      &5)+acd92(56)+acd92(57)+acd92(58)+acd92(59)+acd92(60)+acd92(61)+acd92(62)&
      &+acd92(63)+acd92(64)+acd92(65)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd92h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd92
      complex(ki) :: brack
      acd92(1)=k1(iv1)
      acd92(2)=dotproduct(qshift,spval6k2)
      acd92(3)=abb92(34)
      acd92(4)=dotproduct(qshift,spvak7k2)
      acd92(5)=abb92(61)
      acd92(6)=abb92(25)
      acd92(7)=k2(iv1)
      acd92(8)=abb92(39)
      acd92(9)=dotproduct(qshift,spvak1k2)
      acd92(10)=abb92(21)
      acd92(11)=dotproduct(qshift,spval5k2)
      acd92(12)=abb92(35)
      acd92(13)=abb92(28)
      acd92(14)=k3(iv1)
      acd92(15)=abb92(48)
      acd92(16)=abb92(80)
      acd92(17)=k4(iv1)
      acd92(18)=l5(iv1)
      acd92(19)=abb92(56)
      acd92(20)=l6(iv1)
      acd92(21)=abb92(52)
      acd92(22)=qshift(iv1)
      acd92(23)=abb92(44)
      acd92(24)=spval6k2(iv1)
      acd92(25)=dotproduct(k1,qshift)
      acd92(26)=dotproduct(k2,qshift)
      acd92(27)=dotproduct(k3,qshift)
      acd92(28)=dotproduct(k4,qshift)
      acd92(29)=dotproduct(l5,qshift)
      acd92(30)=dotproduct(l6,qshift)
      acd92(31)=abb92(17)
      acd92(32)=dotproduct(qshift,spvak4k2)
      acd92(33)=abb92(50)
      acd92(34)=dotproduct(qshift,spvak4k3)
      acd92(35)=abb92(45)
      acd92(36)=abb92(15)
      acd92(37)=spvak7k2(iv1)
      acd92(38)=abb92(23)
      acd92(39)=abb92(40)
      acd92(40)=abb92(22)
      acd92(41)=spvak1k2(iv1)
      acd92(42)=abb92(12)
      acd92(43)=abb92(16)
      acd92(44)=abb92(14)
      acd92(45)=spval5k2(iv1)
      acd92(46)=abb92(26)
      acd92(47)=abb92(54)
      acd92(48)=abb92(20)
      acd92(49)=spvak4k2(iv1)
      acd92(50)=abb92(13)
      acd92(51)=spvak4k3(iv1)
      acd92(52)=abb92(41)
      acd92(53)=spvak1l5(iv1)
      acd92(54)=abb92(30)
      acd92(55)=spvak1l6(iv1)
      acd92(56)=abb92(51)
      acd92(57)=spval6k1(iv1)
      acd92(58)=abb92(32)
      acd92(59)=spval6l5(iv1)
      acd92(60)=abb92(46)
      acd92(61)=acd92(14)+acd92(17)
      acd92(62)=acd92(15)*acd92(61)
      acd92(63)=-acd92(51)*acd92(35)
      acd92(64)=-acd92(49)*acd92(33)
      acd92(65)=-acd92(7)*acd92(8)
      acd92(66)=-acd92(20)+acd92(1)-acd92(18)
      acd92(67)=-acd92(3)*acd92(66)
      acd92(68)=-acd92(37)*acd92(31)
      acd92(62)=acd92(68)+acd92(67)+acd92(65)+acd92(63)+acd92(64)+acd92(62)
      acd92(62)=acd92(2)*acd92(62)
      acd92(63)=-acd92(34)*acd92(35)
      acd92(64)=-acd92(32)*acd92(33)
      acd92(65)=-acd92(26)*acd92(8)
      acd92(67)=acd92(27)+acd92(28)
      acd92(68)=acd92(15)*acd92(67)
      acd92(69)=-acd92(4)*acd92(31)
      acd92(70)=-acd92(30)+acd92(25)-acd92(29)
      acd92(71)=-acd92(3)*acd92(70)
      acd92(63)=acd92(71)+acd92(69)+acd92(68)+acd92(65)+acd92(64)+acd92(36)+acd&
      &92(63)
      acd92(63)=acd92(24)*acd92(63)
      acd92(64)=-acd92(34)*acd92(47)
      acd92(65)=-acd92(32)*acd92(46)
      acd92(67)=acd92(67)-acd92(26)
      acd92(68)=-acd92(12)*acd92(67)
      acd92(69)=-acd92(4)*acd92(39)
      acd92(64)=acd92(69)+acd92(68)+acd92(65)+acd92(48)+acd92(64)
      acd92(64)=acd92(45)*acd92(64)
      acd92(65)=-acd92(34)*acd92(43)
      acd92(68)=-acd92(32)*acd92(42)
      acd92(67)=acd92(10)*acd92(67)
      acd92(69)=-acd92(4)*acd92(38)
      acd92(65)=acd92(69)+acd92(67)+acd92(68)+acd92(44)+acd92(65)
      acd92(65)=acd92(41)*acd92(65)
      acd92(67)=-acd92(51)*acd92(47)
      acd92(68)=-acd92(49)*acd92(46)
      acd92(69)=acd92(7)-acd92(61)
      acd92(71)=acd92(12)*acd92(69)
      acd92(67)=acd92(71)+acd92(67)+acd92(68)
      acd92(67)=acd92(11)*acd92(67)
      acd92(68)=-acd92(51)*acd92(43)
      acd92(71)=-acd92(49)*acd92(42)
      acd92(69)=-acd92(10)*acd92(69)
      acd92(68)=acd92(69)+acd92(68)+acd92(71)
      acd92(68)=acd92(9)*acd92(68)
      acd92(69)=-acd92(11)*acd92(39)
      acd92(71)=-acd92(9)*acd92(38)
      acd92(70)=-acd92(5)*acd92(70)
      acd92(69)=acd92(70)+acd92(71)+acd92(40)+acd92(69)
      acd92(69)=acd92(37)*acd92(69)
      acd92(61)=acd92(16)*acd92(61)
      acd92(70)=acd92(59)*acd92(60)
      acd92(71)=acd92(57)*acd92(58)
      acd92(72)=acd92(55)*acd92(56)
      acd92(73)=acd92(53)*acd92(54)
      acd92(74)=acd92(22)*acd92(23)
      acd92(75)=acd92(20)*acd92(21)
      acd92(76)=acd92(18)*acd92(19)
      acd92(77)=acd92(1)*acd92(6)
      acd92(78)=acd92(51)*acd92(52)
      acd92(79)=acd92(49)*acd92(50)
      acd92(80)=acd92(7)*acd92(13)
      acd92(66)=-acd92(4)*acd92(5)*acd92(66)
      brack=acd92(61)+acd92(62)+acd92(63)+acd92(64)+acd92(65)+acd92(66)+acd92(6&
      &7)+acd92(68)+acd92(69)+acd92(70)+acd92(71)+acd92(72)+acd92(73)-2.0_ki*ac&
      &d92(74)+acd92(75)+acd92(76)+acd92(77)+acd92(78)+acd92(79)+acd92(80)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd92h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd92
      complex(ki) :: brack
      acd92(1)=d(iv1,iv2)
      acd92(2)=abb92(44)
      acd92(3)=k1(iv1)
      acd92(4)=spval6k2(iv2)
      acd92(5)=abb92(34)
      acd92(6)=spvak7k2(iv2)
      acd92(7)=abb92(61)
      acd92(8)=k1(iv2)
      acd92(9)=spval6k2(iv1)
      acd92(10)=spvak7k2(iv1)
      acd92(11)=k2(iv1)
      acd92(12)=abb92(39)
      acd92(13)=spvak1k2(iv2)
      acd92(14)=abb92(21)
      acd92(15)=spval5k2(iv2)
      acd92(16)=abb92(35)
      acd92(17)=k2(iv2)
      acd92(18)=spvak1k2(iv1)
      acd92(19)=spval5k2(iv1)
      acd92(20)=k3(iv1)
      acd92(21)=abb92(48)
      acd92(22)=k3(iv2)
      acd92(23)=k4(iv1)
      acd92(24)=k4(iv2)
      acd92(25)=l5(iv1)
      acd92(26)=l5(iv2)
      acd92(27)=l6(iv1)
      acd92(28)=l6(iv2)
      acd92(29)=abb92(17)
      acd92(30)=spvak4k2(iv2)
      acd92(31)=abb92(50)
      acd92(32)=spvak4k3(iv2)
      acd92(33)=abb92(45)
      acd92(34)=spvak4k2(iv1)
      acd92(35)=spvak4k3(iv1)
      acd92(36)=abb92(23)
      acd92(37)=abb92(40)
      acd92(38)=abb92(12)
      acd92(39)=abb92(16)
      acd92(40)=abb92(26)
      acd92(41)=abb92(54)
      acd92(42)=acd92(32)*acd92(33)
      acd92(43)=acd92(30)*acd92(31)
      acd92(44)=acd92(17)*acd92(12)
      acd92(45)=acd92(22)+acd92(24)
      acd92(46)=-acd92(21)*acd92(45)
      acd92(47)=acd92(6)*acd92(29)
      acd92(48)=-acd92(28)+acd92(8)-acd92(26)
      acd92(49)=acd92(5)*acd92(48)
      acd92(42)=acd92(49)+acd92(47)+acd92(46)+acd92(44)+acd92(42)+acd92(43)
      acd92(42)=acd92(9)*acd92(42)
      acd92(43)=acd92(35)*acd92(33)
      acd92(44)=acd92(34)*acd92(31)
      acd92(46)=acd92(11)*acd92(12)
      acd92(47)=acd92(20)+acd92(23)
      acd92(49)=-acd92(21)*acd92(47)
      acd92(50)=acd92(10)*acd92(29)
      acd92(51)=-acd92(27)+acd92(3)-acd92(25)
      acd92(52)=acd92(5)*acd92(51)
      acd92(43)=acd92(52)+acd92(50)+acd92(49)+acd92(46)+acd92(43)+acd92(44)
      acd92(43)=acd92(4)*acd92(43)
      acd92(44)=acd92(32)*acd92(41)
      acd92(46)=acd92(30)*acd92(40)
      acd92(45)=acd92(45)-acd92(17)
      acd92(49)=acd92(16)*acd92(45)
      acd92(44)=acd92(49)+acd92(44)+acd92(46)
      acd92(44)=acd92(19)*acd92(44)
      acd92(46)=acd92(32)*acd92(39)
      acd92(49)=acd92(30)*acd92(38)
      acd92(45)=-acd92(14)*acd92(45)
      acd92(45)=acd92(45)+acd92(46)+acd92(49)
      acd92(45)=acd92(18)*acd92(45)
      acd92(46)=acd92(15)*acd92(37)
      acd92(49)=acd92(13)*acd92(36)
      acd92(48)=acd92(7)*acd92(48)
      acd92(46)=acd92(48)+acd92(46)+acd92(49)
      acd92(46)=acd92(10)*acd92(46)
      acd92(48)=acd92(35)*acd92(41)
      acd92(49)=acd92(34)*acd92(40)
      acd92(47)=acd92(47)-acd92(11)
      acd92(50)=acd92(16)*acd92(47)
      acd92(48)=acd92(50)+acd92(48)+acd92(49)
      acd92(48)=acd92(15)*acd92(48)
      acd92(49)=acd92(35)*acd92(39)
      acd92(50)=acd92(34)*acd92(38)
      acd92(47)=-acd92(14)*acd92(47)
      acd92(47)=acd92(47)+acd92(49)+acd92(50)
      acd92(47)=acd92(13)*acd92(47)
      acd92(49)=acd92(19)*acd92(37)
      acd92(50)=acd92(18)*acd92(36)
      acd92(51)=acd92(7)*acd92(51)
      acd92(49)=acd92(51)+acd92(49)+acd92(50)
      acd92(49)=acd92(6)*acd92(49)
      acd92(50)=acd92(1)*acd92(2)
      brack=acd92(42)+acd92(43)+acd92(44)+acd92(45)+acd92(46)+acd92(47)+acd92(4&
      &8)+acd92(49)+2.0_ki*acd92(50)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h4
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
      qshift = k6+k5
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
!---#[ subroutine reconstruct_d92:
   subroutine     reconstruct_d92(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_92:
      coeffs%coeffs_92%c0 = derivative(czip)
      coeffs%coeffs_92%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_92%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_92%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_92%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_92%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_92%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_92%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_92%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_92%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_92%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_92%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_92%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_92%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_92%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_92:
   end subroutine reconstruct_d92
!---#] subroutine reconstruct_d92:
end module     p0_dbaru_epnebbbarg_d92h4l1d
