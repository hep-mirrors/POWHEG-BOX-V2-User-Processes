module     p0_dbaru_epnebbbarg_d180h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d180h1l1d.f90
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
   public :: derivative , reconstruct_d180
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd180h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd180
      complex(ki) :: brack
      acd180(1)=abb180(30)
      brack=acd180(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd180h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd180
      complex(ki) :: brack
      acd180(1)=k2(iv1)
      acd180(2)=abb180(31)
      acd180(3)=l5(iv1)
      acd180(4)=abb180(39)
      acd180(5)=l6(iv1)
      acd180(6)=abb180(33)
      acd180(7)=k7(iv1)
      acd180(8)=spvak1k2(iv1)
      acd180(9)=abb180(22)
      acd180(10)=spvak1k3(iv1)
      acd180(11)=abb180(25)
      acd180(12)=spvak1l5(iv1)
      acd180(13)=abb180(17)
      acd180(14)=spvak2k3(iv1)
      acd180(15)=abb180(29)
      acd180(16)=spvak2l5(iv1)
      acd180(17)=abb180(18)
      acd180(18)=spvak2k7(iv1)
      acd180(19)=abb180(14)
      acd180(20)=spvak4k2(iv1)
      acd180(21)=abb180(32)
      acd180(22)=spvak4l5(iv1)
      acd180(23)=abb180(21)
      acd180(24)=spval6k7(iv1)
      acd180(25)=abb180(15)
      acd180(26)=-acd180(7)-acd180(5)
      acd180(26)=acd180(6)*acd180(26)
      acd180(27)=-acd180(2)*acd180(1)
      acd180(28)=-acd180(4)*acd180(3)
      acd180(29)=-acd180(9)*acd180(8)
      acd180(30)=-acd180(11)*acd180(10)
      acd180(31)=-acd180(13)*acd180(12)
      acd180(32)=-acd180(15)*acd180(14)
      acd180(33)=-acd180(17)*acd180(16)
      acd180(34)=-acd180(19)*acd180(18)
      acd180(35)=-acd180(21)*acd180(20)
      acd180(36)=-acd180(23)*acd180(22)
      acd180(37)=-acd180(25)*acd180(24)
      brack=acd180(26)+acd180(27)+acd180(28)+acd180(29)+acd180(30)+acd180(31)+a&
      &cd180(32)+acd180(33)+acd180(34)+acd180(35)+acd180(36)+acd180(37)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd180h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd180
      complex(ki) :: brack
      acd180(1)=d(iv1,iv2)
      acd180(2)=abb180(37)
      acd180(3)=k2(iv1)
      acd180(4)=spvak1k2(iv2)
      acd180(5)=abb180(28)
      acd180(6)=spvak1k3(iv2)
      acd180(7)=abb180(41)
      acd180(8)=spvak4k2(iv2)
      acd180(9)=abb180(42)
      acd180(10)=k2(iv2)
      acd180(11)=spvak1k2(iv1)
      acd180(12)=spvak1k3(iv1)
      acd180(13)=spvak4k2(iv1)
      acd180(14)=l6(iv1)
      acd180(15)=abb180(26)
      acd180(16)=abb180(36)
      acd180(17)=abb180(35)
      acd180(18)=l6(iv2)
      acd180(19)=k7(iv1)
      acd180(20)=k7(iv2)
      acd180(21)=spvak2l5(iv2)
      acd180(22)=abb180(40)
      acd180(23)=spvak2l6(iv2)
      acd180(24)=abb180(34)
      acd180(25)=spvak2k7(iv2)
      acd180(26)=abb180(19)
      acd180(27)=spval6l5(iv2)
      acd180(28)=abb180(38)
      acd180(29)=spval6k7(iv2)
      acd180(30)=abb180(23)
      acd180(31)=spvak2l5(iv1)
      acd180(32)=spvak2l6(iv1)
      acd180(33)=spvak2k7(iv1)
      acd180(34)=spval6l5(iv1)
      acd180(35)=spval6k7(iv1)
      acd180(36)=abb180(46)
      acd180(37)=abb180(47)
      acd180(38)=abb180(45)
      acd180(39)=abb180(44)
      acd180(40)=abb180(43)
      acd180(41)=abb180(24)
      acd180(42)=abb180(27)
      acd180(43)=abb180(20)
      acd180(44)=abb180(57)
      acd180(45)=abb180(16)
      acd180(46)=acd180(29)*acd180(45)
      acd180(47)=acd180(27)*acd180(44)
      acd180(48)=acd180(25)*acd180(43)
      acd180(49)=acd180(23)*acd180(42)
      acd180(50)=acd180(21)*acd180(41)
      acd180(51)=acd180(10)*acd180(9)
      acd180(52)=acd180(18)+acd180(20)
      acd180(53)=-acd180(17)*acd180(52)
      acd180(46)=acd180(53)+acd180(51)+acd180(50)+acd180(49)+acd180(48)+acd180(&
      &46)+acd180(47)
      acd180(46)=acd180(13)*acd180(46)
      acd180(47)=acd180(29)*acd180(40)
      acd180(48)=acd180(27)*acd180(39)
      acd180(49)=acd180(25)*acd180(38)
      acd180(50)=acd180(23)*acd180(37)
      acd180(51)=acd180(21)*acd180(36)
      acd180(53)=acd180(10)*acd180(7)
      acd180(54)=acd180(16)*acd180(52)
      acd180(47)=acd180(54)+acd180(53)+acd180(51)+acd180(50)+acd180(49)+acd180(&
      &47)+acd180(48)
      acd180(47)=acd180(12)*acd180(47)
      acd180(48)=acd180(29)*acd180(30)
      acd180(49)=acd180(27)*acd180(28)
      acd180(50)=acd180(25)*acd180(26)
      acd180(51)=acd180(23)*acd180(24)
      acd180(53)=acd180(21)*acd180(22)
      acd180(54)=acd180(10)*acd180(5)
      acd180(52)=-acd180(15)*acd180(52)
      acd180(48)=acd180(52)+acd180(54)+acd180(53)+acd180(51)+acd180(50)+acd180(&
      &48)+acd180(49)
      acd180(48)=acd180(11)*acd180(48)
      acd180(49)=acd180(35)*acd180(45)
      acd180(50)=acd180(34)*acd180(44)
      acd180(51)=acd180(33)*acd180(43)
      acd180(52)=acd180(32)*acd180(42)
      acd180(53)=acd180(31)*acd180(41)
      acd180(54)=acd180(3)*acd180(9)
      acd180(55)=acd180(14)+acd180(19)
      acd180(56)=-acd180(17)*acd180(55)
      acd180(49)=acd180(56)+acd180(54)+acd180(53)+acd180(52)+acd180(51)+acd180(&
      &49)+acd180(50)
      acd180(49)=acd180(8)*acd180(49)
      acd180(50)=acd180(35)*acd180(40)
      acd180(51)=acd180(34)*acd180(39)
      acd180(52)=acd180(33)*acd180(38)
      acd180(53)=acd180(32)*acd180(37)
      acd180(54)=acd180(31)*acd180(36)
      acd180(56)=acd180(3)*acd180(7)
      acd180(57)=acd180(16)*acd180(55)
      acd180(50)=acd180(57)+acd180(56)+acd180(54)+acd180(53)+acd180(52)+acd180(&
      &50)+acd180(51)
      acd180(50)=acd180(6)*acd180(50)
      acd180(51)=acd180(35)*acd180(30)
      acd180(52)=acd180(34)*acd180(28)
      acd180(53)=acd180(33)*acd180(26)
      acd180(54)=acd180(32)*acd180(24)
      acd180(56)=acd180(31)*acd180(22)
      acd180(57)=acd180(3)*acd180(5)
      acd180(55)=-acd180(15)*acd180(55)
      acd180(51)=acd180(55)+acd180(57)+acd180(56)+acd180(54)+acd180(53)+acd180(&
      &51)+acd180(52)
      acd180(51)=acd180(4)*acd180(51)
      acd180(52)=acd180(1)*acd180(2)
      brack=acd180(46)+acd180(47)+acd180(48)+acd180(49)+acd180(50)+acd180(51)+2&
      &.0_ki*acd180(52)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd180h1
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
!---#[ subroutine reconstruct_d180:
   subroutine     reconstruct_d180(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_180:
      coeffs%coeffs_180%c0 = derivative(czip)
      coeffs%coeffs_180%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_180%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_180%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_180%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_180%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_180%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_180%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_180%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_180%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_180%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_180%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_180%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_180%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_180%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_180:
   end subroutine reconstruct_d180
!---#] subroutine reconstruct_d180:
end module     p0_dbaru_epnebbbarg_d180h1l1d
