module     p0_dbaru_epnebbbarg_d225h6l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d225h6l1d.f90
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
   public :: derivative , reconstruct_d225
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd225h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(77) :: acd225
      complex(ki) :: brack
      acd225(1)=dotproduct(k1,qshift)
      acd225(2)=abb225(65)
      acd225(3)=dotproduct(k2,qshift)
      acd225(4)=dotproduct(qshift,spvak1k2)
      acd225(5)=abb225(29)
      acd225(6)=dotproduct(qshift,spvak4k2)
      acd225(7)=abb225(50)
      acd225(8)=abb225(126)
      acd225(9)=dotproduct(k3,qshift)
      acd225(10)=abb225(101)
      acd225(11)=dotproduct(k4,qshift)
      acd225(12)=abb225(37)
      acd225(13)=dotproduct(l5,qshift)
      acd225(14)=abb225(24)
      acd225(15)=abb225(43)
      acd225(16)=abb225(156)
      acd225(17)=dotproduct(l6,qshift)
      acd225(18)=abb225(26)
      acd225(19)=abb225(38)
      acd225(20)=dotproduct(k7,qshift)
      acd225(21)=abb225(35)
      acd225(22)=abb225(46)
      acd225(23)=abb225(144)
      acd225(24)=dotproduct(qshift,qshift)
      acd225(25)=abb225(22)
      acd225(26)=dotproduct(qshift,spval5k2)
      acd225(27)=abb225(27)
      acd225(28)=dotproduct(qshift,spval5l6)
      acd225(29)=abb225(19)
      acd225(30)=dotproduct(qshift,spval6k2)
      acd225(31)=abb225(31)
      acd225(32)=dotproduct(qshift,spvak7k2)
      acd225(33)=abb225(17)
      acd225(34)=dotproduct(qshift,spvak7l6)
      acd225(35)=abb225(14)
      acd225(36)=abb225(23)
      acd225(37)=abb225(40)
      acd225(38)=abb225(20)
      acd225(39)=abb225(86)
      acd225(40)=abb225(28)
      acd225(41)=abb225(51)
      acd225(42)=abb225(30)
      acd225(43)=abb225(18)
      acd225(44)=abb225(16)
      acd225(45)=abb225(21)
      acd225(46)=abb225(15)
      acd225(47)=abb225(155)
      acd225(48)=dotproduct(qshift,spvak1k3)
      acd225(49)=abb225(44)
      acd225(50)=dotproduct(qshift,spvak1k4)
      acd225(51)=abb225(42)
      acd225(52)=dotproduct(qshift,spvak3k2)
      acd225(53)=abb225(36)
      acd225(54)=dotproduct(qshift,spvak4k1)
      acd225(55)=abb225(52)
      acd225(56)=dotproduct(qshift,spvak4k3)
      acd225(57)=abb225(25)
      acd225(58)=abb225(104)
      acd225(59)=acd225(5)*acd225(3)
      acd225(60)=acd225(14)*acd225(13)
      acd225(61)=acd225(18)*acd225(17)
      acd225(62)=acd225(21)*acd225(20)
      acd225(63)=acd225(27)*acd225(26)
      acd225(64)=acd225(29)*acd225(28)
      acd225(65)=acd225(31)*acd225(30)
      acd225(66)=acd225(33)*acd225(32)
      acd225(67)=acd225(35)*acd225(34)
      acd225(59)=-acd225(36)+acd225(67)+acd225(66)+acd225(65)+acd225(64)+acd225&
      &(63)+acd225(62)+acd225(61)+acd225(60)+acd225(59)
      acd225(59)=acd225(4)*acd225(59)
      acd225(60)=acd225(7)*acd225(3)
      acd225(61)=acd225(15)*acd225(13)
      acd225(62)=acd225(19)*acd225(17)
      acd225(63)=acd225(22)*acd225(20)
      acd225(64)=acd225(37)*acd225(26)
      acd225(65)=acd225(38)*acd225(28)
      acd225(66)=acd225(39)*acd225(30)
      acd225(67)=acd225(40)*acd225(32)
      acd225(68)=acd225(41)*acd225(34)
      acd225(60)=-acd225(42)+acd225(68)+acd225(67)+acd225(66)+acd225(65)+acd225&
      &(64)+acd225(63)+acd225(62)+acd225(61)+acd225(60)
      acd225(60)=acd225(6)*acd225(60)
      acd225(61)=-acd225(13)-acd225(17)
      acd225(61)=acd225(16)*acd225(61)
      acd225(62)=-acd225(2)*acd225(1)
      acd225(63)=-acd225(8)*acd225(3)
      acd225(64)=-acd225(10)*acd225(9)
      acd225(65)=-acd225(12)*acd225(11)
      acd225(66)=-acd225(23)*acd225(20)
      acd225(67)=acd225(25)*acd225(24)
      acd225(68)=-acd225(43)*acd225(26)
      acd225(69)=-acd225(44)*acd225(28)
      acd225(70)=-acd225(45)*acd225(30)
      acd225(71)=-acd225(46)*acd225(32)
      acd225(72)=-acd225(47)*acd225(34)
      acd225(73)=-acd225(49)*acd225(48)
      acd225(74)=-acd225(51)*acd225(50)
      acd225(75)=-acd225(53)*acd225(52)
      acd225(76)=-acd225(55)*acd225(54)
      acd225(77)=-acd225(57)*acd225(56)
      brack=acd225(58)+acd225(59)+acd225(60)+acd225(61)+acd225(62)+acd225(63)+a&
      &cd225(64)+acd225(65)+acd225(66)+acd225(67)+acd225(68)+acd225(69)+acd225(&
      &70)+acd225(71)+acd225(72)+acd225(73)+acd225(74)+acd225(75)+acd225(76)+ac&
      &d225(77)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd225h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(89) :: acd225
      complex(ki) :: brack
      acd225(1)=k1(iv1)
      acd225(2)=abb225(65)
      acd225(3)=k2(iv1)
      acd225(4)=dotproduct(qshift,spvak1k2)
      acd225(5)=abb225(29)
      acd225(6)=dotproduct(qshift,spvak4k2)
      acd225(7)=abb225(50)
      acd225(8)=abb225(126)
      acd225(9)=k3(iv1)
      acd225(10)=abb225(101)
      acd225(11)=k4(iv1)
      acd225(12)=abb225(37)
      acd225(13)=l5(iv1)
      acd225(14)=abb225(24)
      acd225(15)=abb225(43)
      acd225(16)=abb225(156)
      acd225(17)=l6(iv1)
      acd225(18)=abb225(26)
      acd225(19)=abb225(38)
      acd225(20)=k7(iv1)
      acd225(21)=abb225(35)
      acd225(22)=abb225(46)
      acd225(23)=abb225(144)
      acd225(24)=qshift(iv1)
      acd225(25)=abb225(22)
      acd225(26)=spvak1k2(iv1)
      acd225(27)=dotproduct(k2,qshift)
      acd225(28)=dotproduct(l5,qshift)
      acd225(29)=dotproduct(l6,qshift)
      acd225(30)=dotproduct(k7,qshift)
      acd225(31)=dotproduct(qshift,spval5k2)
      acd225(32)=abb225(27)
      acd225(33)=dotproduct(qshift,spval5l6)
      acd225(34)=abb225(19)
      acd225(35)=dotproduct(qshift,spval6k2)
      acd225(36)=abb225(31)
      acd225(37)=dotproduct(qshift,spvak7k2)
      acd225(38)=abb225(17)
      acd225(39)=dotproduct(qshift,spvak7l6)
      acd225(40)=abb225(14)
      acd225(41)=abb225(23)
      acd225(42)=spvak4k2(iv1)
      acd225(43)=abb225(40)
      acd225(44)=abb225(20)
      acd225(45)=abb225(86)
      acd225(46)=abb225(28)
      acd225(47)=abb225(51)
      acd225(48)=abb225(30)
      acd225(49)=spval5k2(iv1)
      acd225(50)=abb225(18)
      acd225(51)=spval5l6(iv1)
      acd225(52)=abb225(16)
      acd225(53)=spval6k2(iv1)
      acd225(54)=abb225(21)
      acd225(55)=spvak7k2(iv1)
      acd225(56)=abb225(15)
      acd225(57)=spvak7l6(iv1)
      acd225(58)=abb225(155)
      acd225(59)=spvak1k3(iv1)
      acd225(60)=abb225(44)
      acd225(61)=spvak1k4(iv1)
      acd225(62)=abb225(42)
      acd225(63)=spvak3k2(iv1)
      acd225(64)=abb225(36)
      acd225(65)=spvak4k1(iv1)
      acd225(66)=abb225(52)
      acd225(67)=spvak4k3(iv1)
      acd225(68)=abb225(25)
      acd225(69)=acd225(57)*acd225(47)
      acd225(70)=acd225(55)*acd225(46)
      acd225(71)=acd225(53)*acd225(45)
      acd225(72)=acd225(51)*acd225(44)
      acd225(73)=acd225(49)*acd225(43)
      acd225(74)=acd225(20)*acd225(22)
      acd225(75)=acd225(17)*acd225(19)
      acd225(76)=acd225(13)*acd225(15)
      acd225(77)=acd225(3)*acd225(7)
      acd225(69)=acd225(77)+acd225(76)+acd225(75)+acd225(74)+acd225(73)+acd225(&
      &72)+acd225(71)+acd225(69)+acd225(70)
      acd225(69)=acd225(6)*acd225(69)
      acd225(70)=acd225(57)*acd225(40)
      acd225(71)=acd225(55)*acd225(38)
      acd225(72)=acd225(53)*acd225(36)
      acd225(73)=acd225(51)*acd225(34)
      acd225(74)=acd225(49)*acd225(32)
      acd225(75)=acd225(20)*acd225(21)
      acd225(76)=acd225(17)*acd225(18)
      acd225(77)=acd225(13)*acd225(14)
      acd225(78)=acd225(3)*acd225(5)
      acd225(70)=acd225(78)+acd225(77)+acd225(76)+acd225(75)+acd225(74)+acd225(&
      &73)+acd225(72)+acd225(70)+acd225(71)
      acd225(70)=acd225(4)*acd225(70)
      acd225(71)=acd225(39)*acd225(47)
      acd225(72)=acd225(37)*acd225(46)
      acd225(73)=acd225(35)*acd225(45)
      acd225(74)=acd225(33)*acd225(44)
      acd225(75)=acd225(31)*acd225(43)
      acd225(76)=acd225(22)*acd225(30)
      acd225(77)=acd225(19)*acd225(29)
      acd225(78)=acd225(15)*acd225(28)
      acd225(79)=acd225(7)*acd225(27)
      acd225(71)=acd225(79)+acd225(78)+acd225(77)+acd225(76)+acd225(75)+acd225(&
      &74)+acd225(73)+acd225(72)-acd225(48)+acd225(71)
      acd225(71)=acd225(42)*acd225(71)
      acd225(72)=acd225(39)*acd225(40)
      acd225(73)=acd225(37)*acd225(38)
      acd225(74)=acd225(35)*acd225(36)
      acd225(75)=acd225(33)*acd225(34)
      acd225(76)=acd225(31)*acd225(32)
      acd225(77)=acd225(21)*acd225(30)
      acd225(78)=acd225(18)*acd225(29)
      acd225(79)=acd225(14)*acd225(28)
      acd225(80)=acd225(5)*acd225(27)
      acd225(72)=acd225(80)+acd225(79)+acd225(78)+acd225(77)+acd225(76)+acd225(&
      &75)+acd225(74)+acd225(73)-acd225(41)+acd225(72)
      acd225(72)=acd225(26)*acd225(72)
      acd225(73)=-acd225(13)-acd225(17)
      acd225(73)=acd225(16)*acd225(73)
      acd225(74)=-acd225(67)*acd225(68)
      acd225(75)=-acd225(65)*acd225(66)
      acd225(76)=-acd225(63)*acd225(64)
      acd225(77)=-acd225(61)*acd225(62)
      acd225(78)=-acd225(59)*acd225(60)
      acd225(79)=acd225(24)*acd225(25)
      acd225(80)=-acd225(11)*acd225(12)
      acd225(81)=-acd225(9)*acd225(10)
      acd225(82)=-acd225(1)*acd225(2)
      acd225(83)=-acd225(57)*acd225(58)
      acd225(84)=-acd225(55)*acd225(56)
      acd225(85)=-acd225(53)*acd225(54)
      acd225(86)=-acd225(51)*acd225(52)
      acd225(87)=-acd225(49)*acd225(50)
      acd225(88)=-acd225(20)*acd225(23)
      acd225(89)=-acd225(3)*acd225(8)
      brack=acd225(69)+acd225(70)+acd225(71)+acd225(72)+acd225(73)+acd225(74)+a&
      &cd225(75)+acd225(76)+acd225(77)+acd225(78)+2.0_ki*acd225(79)+acd225(80)+&
      &acd225(81)+acd225(82)+acd225(83)+acd225(84)+acd225(85)+acd225(86)+acd225&
      &(87)+acd225(88)+acd225(89)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd225h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(54) :: acd225
      complex(ki) :: brack
      acd225(1)=d(iv1,iv2)
      acd225(2)=abb225(22)
      acd225(3)=k2(iv1)
      acd225(4)=spvak1k2(iv2)
      acd225(5)=abb225(29)
      acd225(6)=spvak4k2(iv2)
      acd225(7)=abb225(50)
      acd225(8)=k2(iv2)
      acd225(9)=spvak1k2(iv1)
      acd225(10)=spvak4k2(iv1)
      acd225(11)=l5(iv1)
      acd225(12)=abb225(24)
      acd225(13)=abb225(43)
      acd225(14)=l5(iv2)
      acd225(15)=l6(iv1)
      acd225(16)=abb225(26)
      acd225(17)=abb225(38)
      acd225(18)=l6(iv2)
      acd225(19)=k7(iv1)
      acd225(20)=abb225(35)
      acd225(21)=abb225(46)
      acd225(22)=k7(iv2)
      acd225(23)=spval5k2(iv2)
      acd225(24)=abb225(27)
      acd225(25)=spval5l6(iv2)
      acd225(26)=abb225(19)
      acd225(27)=spval6k2(iv2)
      acd225(28)=abb225(31)
      acd225(29)=spvak7k2(iv2)
      acd225(30)=abb225(17)
      acd225(31)=spvak7l6(iv2)
      acd225(32)=abb225(14)
      acd225(33)=spval5k2(iv1)
      acd225(34)=spval5l6(iv1)
      acd225(35)=spval6k2(iv1)
      acd225(36)=spvak7k2(iv1)
      acd225(37)=spvak7l6(iv1)
      acd225(38)=abb225(40)
      acd225(39)=abb225(20)
      acd225(40)=abb225(86)
      acd225(41)=abb225(28)
      acd225(42)=abb225(51)
      acd225(43)=acd225(31)*acd225(42)
      acd225(44)=acd225(29)*acd225(41)
      acd225(45)=acd225(27)*acd225(40)
      acd225(46)=acd225(25)*acd225(39)
      acd225(47)=acd225(23)*acd225(38)
      acd225(48)=acd225(21)*acd225(22)
      acd225(49)=acd225(17)*acd225(18)
      acd225(50)=acd225(13)*acd225(14)
      acd225(51)=acd225(7)*acd225(8)
      acd225(43)=acd225(51)+acd225(50)+acd225(49)+acd225(48)+acd225(47)+acd225(&
      &46)+acd225(45)+acd225(43)+acd225(44)
      acd225(43)=acd225(10)*acd225(43)
      acd225(44)=acd225(31)*acd225(32)
      acd225(45)=acd225(29)*acd225(30)
      acd225(46)=acd225(27)*acd225(28)
      acd225(47)=acd225(25)*acd225(26)
      acd225(48)=acd225(23)*acd225(24)
      acd225(49)=acd225(20)*acd225(22)
      acd225(50)=acd225(16)*acd225(18)
      acd225(51)=acd225(12)*acd225(14)
      acd225(52)=acd225(5)*acd225(8)
      acd225(44)=acd225(52)+acd225(51)+acd225(50)+acd225(49)+acd225(48)+acd225(&
      &47)+acd225(46)+acd225(44)+acd225(45)
      acd225(44)=acd225(9)*acd225(44)
      acd225(45)=acd225(37)*acd225(42)
      acd225(46)=acd225(36)*acd225(41)
      acd225(47)=acd225(35)*acd225(40)
      acd225(48)=acd225(34)*acd225(39)
      acd225(49)=acd225(33)*acd225(38)
      acd225(50)=acd225(19)*acd225(21)
      acd225(51)=acd225(15)*acd225(17)
      acd225(52)=acd225(11)*acd225(13)
      acd225(53)=acd225(3)*acd225(7)
      acd225(45)=acd225(53)+acd225(52)+acd225(51)+acd225(50)+acd225(49)+acd225(&
      &48)+acd225(47)+acd225(45)+acd225(46)
      acd225(45)=acd225(6)*acd225(45)
      acd225(46)=acd225(32)*acd225(37)
      acd225(47)=acd225(30)*acd225(36)
      acd225(48)=acd225(28)*acd225(35)
      acd225(49)=acd225(26)*acd225(34)
      acd225(50)=acd225(24)*acd225(33)
      acd225(51)=acd225(19)*acd225(20)
      acd225(52)=acd225(15)*acd225(16)
      acd225(53)=acd225(11)*acd225(12)
      acd225(54)=acd225(3)*acd225(5)
      acd225(46)=acd225(54)+acd225(53)+acd225(52)+acd225(51)+acd225(50)+acd225(&
      &49)+acd225(48)+acd225(46)+acd225(47)
      acd225(46)=acd225(4)*acd225(46)
      acd225(47)=acd225(1)*acd225(2)
      brack=acd225(43)+acd225(44)+acd225(45)+acd225(46)+2.0_ki*acd225(47)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd225h6
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d225:
   subroutine     reconstruct_d225(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_225:
      coeffs%coeffs_225%c0 = derivative(czip)
      coeffs%coeffs_225%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_225%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_225%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_225%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_225%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_225%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_225%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_225%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_225%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_225%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_225%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_225%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_225%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_225%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_225:
   end subroutine reconstruct_d225
!---#] subroutine reconstruct_d225:
end module     p0_dbaru_epnebbbarg_d225h6l1d
