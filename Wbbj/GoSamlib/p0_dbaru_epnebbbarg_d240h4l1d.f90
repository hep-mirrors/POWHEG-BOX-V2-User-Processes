module     p0_dbaru_epnebbbarg_d240h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d240h4l1d.f90
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
   public :: derivative , reconstruct_d240
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd240h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd240
      complex(ki) :: brack
      acd240(1)=abb240(46)
      brack=acd240(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd240h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(48) :: acd240
      complex(ki) :: brack
      acd240(1)=k2(iv1)
      acd240(2)=abb240(21)
      acd240(3)=k3(iv1)
      acd240(4)=abb240(49)
      acd240(5)=k4(iv1)
      acd240(6)=l5(iv1)
      acd240(7)=abb240(22)
      acd240(8)=l6(iv1)
      acd240(9)=k7(iv1)
      acd240(10)=spvak1k2(iv1)
      acd240(11)=abb240(16)
      acd240(12)=spvak1l5(iv1)
      acd240(13)=abb240(34)
      acd240(14)=spvak1l6(iv1)
      acd240(15)=abb240(23)
      acd240(16)=spvak1k7(iv1)
      acd240(17)=abb240(42)
      acd240(18)=spvak4k2(iv1)
      acd240(19)=abb240(51)
      acd240(20)=spvak4k3(iv1)
      acd240(21)=abb240(76)
      acd240(22)=spval5k2(iv1)
      acd240(23)=abb240(18)
      acd240(24)=spval5k3(iv1)
      acd240(25)=abb240(57)
      acd240(26)=spval6k2(iv1)
      acd240(27)=abb240(28)
      acd240(28)=spval6k3(iv1)
      acd240(29)=abb240(36)
      acd240(30)=spvak7k2(iv1)
      acd240(31)=abb240(66)
      acd240(32)=spvak7k3(iv1)
      acd240(33)=abb240(26)
      acd240(34)=acd240(5)+acd240(3)
      acd240(34)=acd240(4)*acd240(34)
      acd240(35)=-acd240(9)-acd240(8)-acd240(6)
      acd240(35)=acd240(7)*acd240(35)
      acd240(36)=-acd240(2)*acd240(1)
      acd240(37)=-acd240(11)*acd240(10)
      acd240(38)=-acd240(13)*acd240(12)
      acd240(39)=-acd240(15)*acd240(14)
      acd240(40)=-acd240(17)*acd240(16)
      acd240(41)=-acd240(19)*acd240(18)
      acd240(42)=-acd240(21)*acd240(20)
      acd240(43)=-acd240(23)*acd240(22)
      acd240(44)=-acd240(25)*acd240(24)
      acd240(45)=-acd240(27)*acd240(26)
      acd240(46)=-acd240(29)*acd240(28)
      acd240(47)=-acd240(31)*acd240(30)
      acd240(48)=-acd240(33)*acd240(32)
      brack=acd240(34)+acd240(35)+acd240(36)+acd240(37)+acd240(38)+acd240(39)+a&
      &cd240(40)+acd240(41)+acd240(42)+acd240(43)+acd240(44)+acd240(45)+acd240(&
      &46)+acd240(47)+acd240(48)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd240h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd240
      complex(ki) :: brack
      acd240(1)=d(iv1,iv2)
      acd240(2)=abb240(25)
      acd240(3)=k2(iv1)
      acd240(4)=spval5k2(iv2)
      acd240(5)=abb240(40)
      acd240(6)=spval6k2(iv2)
      acd240(7)=abb240(73)
      acd240(8)=spvak7k2(iv2)
      acd240(9)=abb240(100)
      acd240(10)=k2(iv2)
      acd240(11)=spval5k2(iv1)
      acd240(12)=spval6k2(iv1)
      acd240(13)=spvak7k2(iv1)
      acd240(14)=k3(iv1)
      acd240(15)=k3(iv2)
      acd240(16)=k4(iv1)
      acd240(17)=k4(iv2)
      acd240(18)=spvak1k2(iv2)
      acd240(19)=abb240(20)
      acd240(20)=spvak1k3(iv2)
      acd240(21)=abb240(24)
      acd240(22)=spvak4k2(iv2)
      acd240(23)=abb240(19)
      acd240(24)=spvak4k3(iv2)
      acd240(25)=abb240(78)
      acd240(26)=spvak1k2(iv1)
      acd240(27)=spvak1k3(iv1)
      acd240(28)=spvak4k2(iv1)
      acd240(29)=spvak4k3(iv1)
      acd240(30)=abb240(17)
      acd240(31)=abb240(52)
      acd240(32)=abb240(50)
      acd240(33)=abb240(45)
      acd240(34)=abb240(27)
      acd240(35)=abb240(43)
      acd240(36)=abb240(41)
      acd240(37)=abb240(86)
      acd240(38)=acd240(24)*acd240(37)
      acd240(39)=acd240(22)*acd240(36)
      acd240(40)=acd240(20)*acd240(35)
      acd240(41)=acd240(18)*acd240(34)
      acd240(42)=-acd240(17)+acd240(10)-acd240(15)
      acd240(43)=-acd240(9)*acd240(42)
      acd240(38)=acd240(43)+acd240(41)+acd240(40)+acd240(38)+acd240(39)
      acd240(38)=acd240(13)*acd240(38)
      acd240(39)=acd240(24)*acd240(33)
      acd240(40)=acd240(22)*acd240(32)
      acd240(41)=acd240(20)*acd240(31)
      acd240(43)=acd240(18)*acd240(30)
      acd240(44)=-acd240(7)*acd240(42)
      acd240(39)=acd240(44)+acd240(43)+acd240(41)+acd240(39)+acd240(40)
      acd240(39)=acd240(12)*acd240(39)
      acd240(40)=acd240(24)*acd240(25)
      acd240(41)=acd240(22)*acd240(23)
      acd240(43)=acd240(20)*acd240(21)
      acd240(44)=acd240(18)*acd240(19)
      acd240(42)=-acd240(5)*acd240(42)
      acd240(40)=acd240(42)+acd240(44)+acd240(43)+acd240(40)+acd240(41)
      acd240(40)=acd240(11)*acd240(40)
      acd240(41)=acd240(29)*acd240(37)
      acd240(42)=acd240(28)*acd240(36)
      acd240(43)=acd240(27)*acd240(35)
      acd240(44)=acd240(26)*acd240(34)
      acd240(45)=-acd240(16)+acd240(3)-acd240(14)
      acd240(46)=-acd240(9)*acd240(45)
      acd240(41)=acd240(46)+acd240(44)+acd240(43)+acd240(41)+acd240(42)
      acd240(41)=acd240(8)*acd240(41)
      acd240(42)=acd240(29)*acd240(33)
      acd240(43)=acd240(28)*acd240(32)
      acd240(44)=acd240(27)*acd240(31)
      acd240(46)=acd240(26)*acd240(30)
      acd240(47)=-acd240(7)*acd240(45)
      acd240(42)=acd240(47)+acd240(46)+acd240(44)+acd240(42)+acd240(43)
      acd240(42)=acd240(6)*acd240(42)
      acd240(43)=acd240(29)*acd240(25)
      acd240(44)=acd240(28)*acd240(23)
      acd240(46)=acd240(27)*acd240(21)
      acd240(47)=acd240(26)*acd240(19)
      acd240(45)=-acd240(5)*acd240(45)
      acd240(43)=acd240(45)+acd240(47)+acd240(46)+acd240(43)+acd240(44)
      acd240(43)=acd240(4)*acd240(43)
      acd240(44)=acd240(1)*acd240(2)
      brack=acd240(38)+acd240(39)+acd240(40)+acd240(41)+acd240(42)+acd240(43)+2&
      &.0_ki*acd240(44)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd240h4
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
!---#[ subroutine reconstruct_d240:
   subroutine     reconstruct_d240(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_240:
      coeffs%coeffs_240%c0 = derivative(czip)
      coeffs%coeffs_240%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_240%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_240%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_240%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_240%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_240%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_240%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_240%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_240%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_240%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_240%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_240%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_240%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_240%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_240:
   end subroutine reconstruct_d240
!---#] subroutine reconstruct_d240:
end module     p0_dbaru_epnebbbarg_d240h4l1d
