module     p0_dbaru_epnebbbarg_d229h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d229h4l1d.f90
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
   public :: derivative , reconstruct_d229
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd229h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd229
      complex(ki) :: brack
      acd229(1)=dotproduct(k1,qshift)
      acd229(2)=abb229(125)
      acd229(3)=dotproduct(k2,qshift)
      acd229(4)=dotproduct(qshift,spval5k2)
      acd229(5)=abb229(62)
      acd229(6)=dotproduct(qshift,spval6k2)
      acd229(7)=abb229(68)
      acd229(8)=dotproduct(qshift,spvak7k2)
      acd229(9)=abb229(36)
      acd229(10)=abb229(50)
      acd229(11)=dotproduct(k3,qshift)
      acd229(12)=abb229(202)
      acd229(13)=dotproduct(k4,qshift)
      acd229(14)=dotproduct(l5,qshift)
      acd229(15)=abb229(85)
      acd229(16)=dotproduct(l6,qshift)
      acd229(17)=dotproduct(k7,qshift)
      acd229(18)=dotproduct(qshift,qshift)
      acd229(19)=abb229(22)
      acd229(20)=dotproduct(qshift,spvak1k2)
      acd229(21)=abb229(24)
      acd229(22)=dotproduct(qshift,spvak1k3)
      acd229(23)=abb229(33)
      acd229(24)=dotproduct(qshift,spvak4k2)
      acd229(25)=abb229(25)
      acd229(26)=dotproduct(qshift,spvak4k3)
      acd229(27)=abb229(58)
      acd229(28)=abb229(31)
      acd229(29)=abb229(29)
      acd229(30)=abb229(32)
      acd229(31)=abb229(18)
      acd229(32)=abb229(49)
      acd229(33)=abb229(35)
      acd229(34)=abb229(19)
      acd229(35)=abb229(30)
      acd229(36)=abb229(15)
      acd229(37)=abb229(23)
      acd229(38)=abb229(17)
      acd229(39)=abb229(20)
      acd229(40)=abb229(27)
      acd229(41)=abb229(16)
      acd229(42)=abb229(26)
      acd229(43)=abb229(21)
      acd229(44)=acd229(11)+acd229(13)
      acd229(45)=acd229(44)-acd229(3)
      acd229(46)=-acd229(9)*acd229(45)
      acd229(47)=acd229(26)*acd229(37)
      acd229(48)=acd229(24)*acd229(36)
      acd229(49)=acd229(22)*acd229(35)
      acd229(50)=acd229(20)*acd229(34)
      acd229(46)=acd229(50)+acd229(49)+acd229(48)-acd229(38)+acd229(47)+acd229(&
      &46)
      acd229(46)=acd229(8)*acd229(46)
      acd229(47)=-acd229(7)*acd229(45)
      acd229(48)=acd229(26)*acd229(32)
      acd229(49)=acd229(24)*acd229(31)
      acd229(50)=acd229(22)*acd229(30)
      acd229(51)=acd229(20)*acd229(29)
      acd229(47)=acd229(51)+acd229(50)+acd229(49)-acd229(33)+acd229(48)+acd229(&
      &47)
      acd229(47)=acd229(6)*acd229(47)
      acd229(45)=acd229(5)*acd229(45)
      acd229(48)=acd229(26)*acd229(27)
      acd229(49)=acd229(24)*acd229(25)
      acd229(50)=acd229(22)*acd229(23)
      acd229(51)=acd229(20)*acd229(21)
      acd229(45)=acd229(51)+acd229(50)+acd229(49)-acd229(28)+acd229(48)+acd229(&
      &45)
      acd229(45)=acd229(4)*acd229(45)
      acd229(44)=acd229(12)*acd229(44)
      acd229(48)=acd229(18)*acd229(19)
      acd229(49)=-acd229(1)*acd229(2)
      acd229(50)=acd229(14)+acd229(17)+acd229(16)
      acd229(50)=acd229(15)*acd229(50)
      acd229(51)=-acd229(26)*acd229(42)
      acd229(52)=-acd229(24)*acd229(41)
      acd229(53)=-acd229(22)*acd229(40)
      acd229(54)=-acd229(20)*acd229(39)
      acd229(55)=-acd229(3)*acd229(10)
      brack=acd229(43)+acd229(44)+acd229(45)+acd229(46)+acd229(47)+acd229(48)+a&
      &cd229(49)+acd229(50)+acd229(51)+acd229(52)+acd229(53)+acd229(54)+acd229(&
      &55)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd229h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd229
      complex(ki) :: brack
      acd229(1)=k1(iv1)
      acd229(2)=abb229(125)
      acd229(3)=k2(iv1)
      acd229(4)=dotproduct(qshift,spval5k2)
      acd229(5)=abb229(62)
      acd229(6)=dotproduct(qshift,spval6k2)
      acd229(7)=abb229(68)
      acd229(8)=dotproduct(qshift,spvak7k2)
      acd229(9)=abb229(36)
      acd229(10)=abb229(50)
      acd229(11)=k3(iv1)
      acd229(12)=abb229(202)
      acd229(13)=k4(iv1)
      acd229(14)=l5(iv1)
      acd229(15)=abb229(85)
      acd229(16)=l6(iv1)
      acd229(17)=k7(iv1)
      acd229(18)=qshift(iv1)
      acd229(19)=abb229(22)
      acd229(20)=spval5k2(iv1)
      acd229(21)=dotproduct(k2,qshift)
      acd229(22)=dotproduct(k3,qshift)
      acd229(23)=dotproduct(k4,qshift)
      acd229(24)=dotproduct(qshift,spvak1k2)
      acd229(25)=abb229(24)
      acd229(26)=dotproduct(qshift,spvak1k3)
      acd229(27)=abb229(33)
      acd229(28)=dotproduct(qshift,spvak4k2)
      acd229(29)=abb229(25)
      acd229(30)=dotproduct(qshift,spvak4k3)
      acd229(31)=abb229(58)
      acd229(32)=abb229(31)
      acd229(33)=spval6k2(iv1)
      acd229(34)=abb229(29)
      acd229(35)=abb229(32)
      acd229(36)=abb229(18)
      acd229(37)=abb229(49)
      acd229(38)=abb229(35)
      acd229(39)=spvak7k2(iv1)
      acd229(40)=abb229(19)
      acd229(41)=abb229(30)
      acd229(42)=abb229(15)
      acd229(43)=abb229(23)
      acd229(44)=abb229(17)
      acd229(45)=spvak1k2(iv1)
      acd229(46)=abb229(20)
      acd229(47)=spvak1k3(iv1)
      acd229(48)=abb229(27)
      acd229(49)=spvak4k2(iv1)
      acd229(50)=abb229(16)
      acd229(51)=spvak4k3(iv1)
      acd229(52)=abb229(26)
      acd229(53)=-acd229(51)*acd229(43)
      acd229(54)=-acd229(49)*acd229(42)
      acd229(55)=-acd229(47)*acd229(41)
      acd229(56)=-acd229(45)*acd229(40)
      acd229(57)=acd229(11)+acd229(13)
      acd229(58)=acd229(3)-acd229(57)
      acd229(59)=-acd229(9)*acd229(58)
      acd229(53)=acd229(59)+acd229(56)+acd229(55)+acd229(53)+acd229(54)
      acd229(53)=acd229(8)*acd229(53)
      acd229(54)=-acd229(51)*acd229(37)
      acd229(55)=-acd229(49)*acd229(36)
      acd229(56)=-acd229(47)*acd229(35)
      acd229(59)=-acd229(45)*acd229(34)
      acd229(60)=-acd229(7)*acd229(58)
      acd229(54)=acd229(60)+acd229(59)+acd229(56)+acd229(54)+acd229(55)
      acd229(54)=acd229(6)*acd229(54)
      acd229(55)=-acd229(51)*acd229(31)
      acd229(56)=-acd229(49)*acd229(29)
      acd229(59)=-acd229(47)*acd229(27)
      acd229(60)=-acd229(45)*acd229(25)
      acd229(58)=acd229(5)*acd229(58)
      acd229(55)=acd229(58)+acd229(60)+acd229(59)+acd229(55)+acd229(56)
      acd229(55)=acd229(4)*acd229(55)
      acd229(56)=-acd229(30)*acd229(43)
      acd229(58)=-acd229(28)*acd229(42)
      acd229(59)=-acd229(26)*acd229(41)
      acd229(60)=-acd229(24)*acd229(40)
      acd229(61)=-acd229(23)+acd229(21)-acd229(22)
      acd229(62)=-acd229(9)*acd229(61)
      acd229(56)=acd229(62)+acd229(60)+acd229(59)+acd229(58)+acd229(44)+acd229(&
      &56)
      acd229(56)=acd229(39)*acd229(56)
      acd229(58)=-acd229(30)*acd229(37)
      acd229(59)=-acd229(28)*acd229(36)
      acd229(60)=-acd229(26)*acd229(35)
      acd229(62)=-acd229(24)*acd229(34)
      acd229(63)=-acd229(7)*acd229(61)
      acd229(58)=acd229(63)+acd229(62)+acd229(60)+acd229(59)+acd229(38)+acd229(&
      &58)
      acd229(58)=acd229(33)*acd229(58)
      acd229(59)=-acd229(30)*acd229(31)
      acd229(60)=-acd229(28)*acd229(29)
      acd229(62)=-acd229(26)*acd229(27)
      acd229(63)=-acd229(24)*acd229(25)
      acd229(61)=acd229(5)*acd229(61)
      acd229(59)=acd229(61)+acd229(63)+acd229(62)+acd229(60)+acd229(32)+acd229(&
      &59)
      acd229(59)=acd229(20)*acd229(59)
      acd229(57)=-acd229(12)*acd229(57)
      acd229(60)=acd229(18)*acd229(19)
      acd229(61)=acd229(1)*acd229(2)
      acd229(62)=-acd229(14)-acd229(17)-acd229(16)
      acd229(62)=acd229(15)*acd229(62)
      acd229(63)=acd229(51)*acd229(52)
      acd229(64)=acd229(49)*acd229(50)
      acd229(65)=acd229(47)*acd229(48)
      acd229(66)=acd229(45)*acd229(46)
      acd229(67)=acd229(3)*acd229(10)
      brack=acd229(53)+acd229(54)+acd229(55)+acd229(56)+acd229(57)+acd229(58)+a&
      &cd229(59)-2.0_ki*acd229(60)+acd229(61)+acd229(62)+acd229(63)+acd229(64)+&
      &acd229(65)+acd229(66)+acd229(67)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd229h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd229
      complex(ki) :: brack
      acd229(1)=d(iv1,iv2)
      acd229(2)=abb229(22)
      acd229(3)=k2(iv1)
      acd229(4)=spval5k2(iv2)
      acd229(5)=abb229(62)
      acd229(6)=spval6k2(iv2)
      acd229(7)=abb229(68)
      acd229(8)=spvak7k2(iv2)
      acd229(9)=abb229(36)
      acd229(10)=k2(iv2)
      acd229(11)=spval5k2(iv1)
      acd229(12)=spval6k2(iv1)
      acd229(13)=spvak7k2(iv1)
      acd229(14)=k3(iv1)
      acd229(15)=k3(iv2)
      acd229(16)=k4(iv1)
      acd229(17)=k4(iv2)
      acd229(18)=spvak1k2(iv2)
      acd229(19)=abb229(24)
      acd229(20)=spvak1k3(iv2)
      acd229(21)=abb229(33)
      acd229(22)=spvak4k2(iv2)
      acd229(23)=abb229(25)
      acd229(24)=spvak4k3(iv2)
      acd229(25)=abb229(58)
      acd229(26)=spvak1k2(iv1)
      acd229(27)=spvak1k3(iv1)
      acd229(28)=spvak4k2(iv1)
      acd229(29)=spvak4k3(iv1)
      acd229(30)=abb229(29)
      acd229(31)=abb229(32)
      acd229(32)=abb229(18)
      acd229(33)=abb229(49)
      acd229(34)=abb229(19)
      acd229(35)=abb229(30)
      acd229(36)=abb229(15)
      acd229(37)=abb229(23)
      acd229(38)=acd229(24)*acd229(37)
      acd229(39)=acd229(22)*acd229(36)
      acd229(40)=acd229(20)*acd229(35)
      acd229(41)=acd229(18)*acd229(34)
      acd229(42)=-acd229(17)+acd229(10)-acd229(15)
      acd229(43)=acd229(9)*acd229(42)
      acd229(38)=acd229(43)+acd229(41)+acd229(40)+acd229(38)+acd229(39)
      acd229(38)=acd229(13)*acd229(38)
      acd229(39)=acd229(24)*acd229(33)
      acd229(40)=acd229(22)*acd229(32)
      acd229(41)=acd229(20)*acd229(31)
      acd229(43)=acd229(18)*acd229(30)
      acd229(44)=acd229(7)*acd229(42)
      acd229(39)=acd229(44)+acd229(43)+acd229(41)+acd229(39)+acd229(40)
      acd229(39)=acd229(12)*acd229(39)
      acd229(40)=acd229(24)*acd229(25)
      acd229(41)=acd229(22)*acd229(23)
      acd229(43)=acd229(20)*acd229(21)
      acd229(44)=acd229(18)*acd229(19)
      acd229(42)=-acd229(5)*acd229(42)
      acd229(40)=acd229(42)+acd229(44)+acd229(43)+acd229(40)+acd229(41)
      acd229(40)=acd229(11)*acd229(40)
      acd229(41)=acd229(29)*acd229(37)
      acd229(42)=acd229(28)*acd229(36)
      acd229(43)=acd229(27)*acd229(35)
      acd229(44)=acd229(26)*acd229(34)
      acd229(45)=-acd229(16)+acd229(3)-acd229(14)
      acd229(46)=acd229(9)*acd229(45)
      acd229(41)=acd229(46)+acd229(44)+acd229(43)+acd229(41)+acd229(42)
      acd229(41)=acd229(8)*acd229(41)
      acd229(42)=acd229(29)*acd229(33)
      acd229(43)=acd229(28)*acd229(32)
      acd229(44)=acd229(27)*acd229(31)
      acd229(46)=acd229(26)*acd229(30)
      acd229(47)=acd229(7)*acd229(45)
      acd229(42)=acd229(47)+acd229(46)+acd229(44)+acd229(42)+acd229(43)
      acd229(42)=acd229(6)*acd229(42)
      acd229(43)=acd229(29)*acd229(25)
      acd229(44)=acd229(28)*acd229(23)
      acd229(46)=acd229(27)*acd229(21)
      acd229(47)=acd229(26)*acd229(19)
      acd229(45)=-acd229(5)*acd229(45)
      acd229(43)=acd229(45)+acd229(47)+acd229(46)+acd229(43)+acd229(44)
      acd229(43)=acd229(4)*acd229(43)
      acd229(44)=acd229(1)*acd229(2)
      brack=acd229(38)+acd229(39)+acd229(40)+acd229(41)+acd229(42)+acd229(43)+2&
      &.0_ki*acd229(44)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h4
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
      qshift = -k3+k2-k4
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
!---#[ subroutine reconstruct_d229:
   subroutine     reconstruct_d229(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_229:
      coeffs%coeffs_229%c0 = derivative(czip)
      coeffs%coeffs_229%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_229%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_229%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_229%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_229%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_229%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_229%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_229%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_229%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_229%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_229%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_229%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_229%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_229%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_229:
   end subroutine reconstruct_d229
!---#] subroutine reconstruct_d229:
end module     p0_dbaru_epnebbbarg_d229h4l1d
