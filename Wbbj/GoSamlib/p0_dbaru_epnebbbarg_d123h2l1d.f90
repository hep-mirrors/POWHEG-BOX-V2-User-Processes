module     p0_dbaru_epnebbbarg_d123h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d123h2l1d.f90
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
   public :: derivative , reconstruct_d123
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd123h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd123
      complex(ki) :: brack
      acd123(1)=abb123(40)
      brack=acd123(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd123h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd123
      complex(ki) :: brack
      acd123(1)=k2(iv1)
      acd123(2)=abb123(14)
      acd123(3)=k7(iv1)
      acd123(4)=abb123(33)
      acd123(5)=spvak2k7(iv1)
      acd123(6)=abb123(10)
      acd123(7)=spvak4k3(iv1)
      acd123(8)=abb123(28)
      acd123(9)=spvak7k2(iv1)
      acd123(10)=abb123(13)
      acd123(11)=acd123(2)*acd123(1)
      acd123(12)=acd123(4)*acd123(3)
      acd123(13)=acd123(6)*acd123(5)
      acd123(14)=acd123(8)*acd123(7)
      acd123(15)=acd123(10)*acd123(9)
      brack=acd123(11)+acd123(12)+acd123(13)+acd123(14)+acd123(15)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd123h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd123
      complex(ki) :: brack
      acd123(1)=d(iv1,iv2)
      acd123(2)=abb123(16)
      acd123(3)=k2(iv1)
      acd123(4)=k2(iv2)
      acd123(5)=abb123(27)
      acd123(6)=k3(iv2)
      acd123(7)=k4(iv2)
      acd123(8)=spvak2k7(iv2)
      acd123(9)=abb123(18)
      acd123(10)=spvak4k2(iv2)
      acd123(11)=abb123(38)
      acd123(12)=spvak4k3(iv2)
      acd123(13)=abb123(23)
      acd123(14)=k3(iv1)
      acd123(15)=k4(iv1)
      acd123(16)=spvak2k7(iv1)
      acd123(17)=spvak4k2(iv1)
      acd123(18)=spvak4k3(iv1)
      acd123(19)=abb123(30)
      acd123(20)=k7(iv1)
      acd123(21)=abb123(29)
      acd123(22)=k7(iv2)
      acd123(23)=abb123(9)
      acd123(24)=abb123(20)
      acd123(25)=spvak1k2(iv2)
      acd123(26)=abb123(15)
      acd123(27)=spvak1k3(iv2)
      acd123(28)=abb123(12)
      acd123(29)=spvak2k3(iv2)
      acd123(30)=abb123(11)
      acd123(31)=spval5k2(iv2)
      acd123(32)=abb123(45)
      acd123(33)=spval5k3(iv2)
      acd123(34)=abb123(43)
      acd123(35)=spval6k2(iv2)
      acd123(36)=abb123(42)
      acd123(37)=spval6k3(iv2)
      acd123(38)=abb123(35)
      acd123(39)=spvak1k2(iv1)
      acd123(40)=spvak1k3(iv1)
      acd123(41)=spvak2k3(iv1)
      acd123(42)=spval5k2(iv1)
      acd123(43)=spval5k3(iv1)
      acd123(44)=spval6k2(iv1)
      acd123(45)=spval6k3(iv1)
      acd123(46)=acd123(38)*acd123(37)
      acd123(47)=acd123(36)*acd123(35)
      acd123(48)=acd123(34)*acd123(33)
      acd123(49)=acd123(32)*acd123(31)
      acd123(50)=acd123(30)*acd123(29)
      acd123(51)=acd123(28)*acd123(27)
      acd123(52)=acd123(26)*acd123(25)
      acd123(53)=acd123(10)*acd123(23)
      acd123(54)=acd123(12)*acd123(24)
      acd123(55)=acd123(6)+acd123(7)
      acd123(56)=acd123(19)*acd123(55)
      acd123(57)=acd123(4)*acd123(9)
      acd123(46)=acd123(57)+acd123(56)+acd123(54)+acd123(53)+acd123(52)+acd123(&
      &51)+acd123(50)+acd123(49)+acd123(48)+acd123(46)+acd123(47)
      acd123(46)=acd123(16)*acd123(46)
      acd123(47)=acd123(38)*acd123(45)
      acd123(48)=acd123(36)*acd123(44)
      acd123(49)=acd123(34)*acd123(43)
      acd123(50)=acd123(32)*acd123(42)
      acd123(51)=acd123(30)*acd123(41)
      acd123(52)=acd123(28)*acd123(40)
      acd123(53)=acd123(26)*acd123(39)
      acd123(54)=acd123(17)*acd123(23)
      acd123(56)=acd123(18)*acd123(24)
      acd123(57)=acd123(14)+acd123(15)
      acd123(58)=acd123(19)*acd123(57)
      acd123(59)=acd123(3)*acd123(9)
      acd123(47)=acd123(59)+acd123(58)+acd123(56)+acd123(54)+acd123(53)+acd123(&
      &52)+acd123(51)+acd123(50)+acd123(49)+acd123(47)+acd123(48)
      acd123(47)=acd123(8)*acd123(47)
      acd123(48)=acd123(11)*acd123(17)
      acd123(49)=acd123(18)*acd123(13)
      acd123(50)=-acd123(5)*acd123(57)
      acd123(48)=acd123(50)+acd123(48)+acd123(49)
      acd123(48)=acd123(4)*acd123(48)
      acd123(49)=2.0_ki*acd123(4)-acd123(55)
      acd123(49)=acd123(5)*acd123(49)
      acd123(50)=acd123(10)*acd123(11)
      acd123(51)=acd123(12)*acd123(13)
      acd123(49)=acd123(50)+acd123(51)+acd123(49)
      acd123(49)=acd123(3)*acd123(49)
      acd123(50)=acd123(18)*acd123(22)
      acd123(51)=acd123(12)*acd123(20)
      acd123(50)=acd123(51)+acd123(50)
      acd123(50)=acd123(21)*acd123(50)
      acd123(51)=acd123(1)*acd123(2)
      brack=acd123(46)+acd123(47)+acd123(48)+acd123(49)+acd123(50)+2.0_ki*acd12&
      &3(51)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd123h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd123
      complex(ki) :: brack
      acd123(1)=d(iv1,iv2)
      acd123(2)=k2(iv3)
      acd123(3)=abb123(17)
      acd123(4)=spvak2k7(iv3)
      acd123(5)=abb123(19)
      acd123(6)=spvak4k2(iv3)
      acd123(7)=abb123(37)
      acd123(8)=spvak4k3(iv3)
      acd123(9)=abb123(24)
      acd123(10)=d(iv1,iv3)
      acd123(11)=k2(iv2)
      acd123(12)=spvak2k7(iv2)
      acd123(13)=spvak4k2(iv2)
      acd123(14)=spvak4k3(iv2)
      acd123(15)=d(iv2,iv3)
      acd123(16)=k2(iv1)
      acd123(17)=spvak2k7(iv1)
      acd123(18)=spvak4k2(iv1)
      acd123(19)=spvak4k3(iv1)
      acd123(20)=abb123(21)
      acd123(21)=spvak1k2(iv3)
      acd123(22)=abb123(22)
      acd123(23)=spval5k2(iv3)
      acd123(24)=abb123(44)
      acd123(25)=spval6k2(iv3)
      acd123(26)=abb123(39)
      acd123(27)=spvak1k2(iv2)
      acd123(28)=spval5k2(iv2)
      acd123(29)=spval6k2(iv2)
      acd123(30)=spvak1k2(iv1)
      acd123(31)=spval5k2(iv1)
      acd123(32)=spval6k2(iv1)
      acd123(33)=acd123(26)*acd123(29)
      acd123(34)=acd123(24)*acd123(28)
      acd123(35)=acd123(22)*acd123(27)
      acd123(36)=acd123(20)*acd123(11)
      acd123(33)=acd123(33)+acd123(34)+acd123(35)-acd123(36)
      acd123(34)=-acd123(17)*acd123(33)
      acd123(35)=acd123(26)*acd123(32)
      acd123(36)=acd123(24)*acd123(31)
      acd123(37)=acd123(22)*acd123(30)
      acd123(38)=acd123(20)*acd123(16)
      acd123(35)=acd123(35)+acd123(36)+acd123(37)-acd123(38)
      acd123(36)=-acd123(12)*acd123(35)
      acd123(37)=2.0_ki*acd123(1)
      acd123(38)=acd123(9)*acd123(37)
      acd123(34)=acd123(36)+acd123(38)+acd123(34)
      acd123(34)=acd123(8)*acd123(34)
      acd123(33)=-acd123(19)*acd123(33)
      acd123(35)=-acd123(14)*acd123(35)
      acd123(36)=acd123(5)*acd123(37)
      acd123(33)=acd123(35)+acd123(36)+acd123(33)
      acd123(33)=acd123(4)*acd123(33)
      acd123(35)=acd123(7)*acd123(18)
      acd123(36)=acd123(3)*acd123(16)
      acd123(37)=acd123(19)*acd123(9)
      acd123(38)=acd123(17)*acd123(5)
      acd123(35)=acd123(38)+acd123(37)+acd123(35)+acd123(36)
      acd123(35)=acd123(15)*acd123(35)
      acd123(36)=acd123(7)*acd123(13)
      acd123(37)=acd123(3)*acd123(11)
      acd123(36)=acd123(36)+acd123(37)
      acd123(36)=acd123(10)*acd123(36)
      acd123(37)=acd123(7)*acd123(6)
      acd123(38)=acd123(2)*acd123(3)
      acd123(37)=acd123(37)+acd123(38)
      acd123(37)=acd123(1)*acd123(37)
      acd123(35)=acd123(37)+acd123(36)+acd123(35)
      acd123(36)=acd123(26)*acd123(25)
      acd123(37)=acd123(24)*acd123(23)
      acd123(38)=acd123(22)*acd123(21)
      acd123(39)=acd123(20)*acd123(2)
      acd123(36)=acd123(36)+acd123(37)+acd123(38)-acd123(39)
      acd123(37)=-acd123(17)*acd123(36)
      acd123(38)=2.0_ki*acd123(10)
      acd123(39)=acd123(9)*acd123(38)
      acd123(37)=acd123(39)+acd123(37)
      acd123(37)=acd123(14)*acd123(37)
      acd123(36)=-acd123(19)*acd123(36)
      acd123(38)=acd123(5)*acd123(38)
      acd123(36)=acd123(38)+acd123(36)
      acd123(36)=acd123(12)*acd123(36)
      brack=acd123(33)+acd123(34)+2.0_ki*acd123(35)+acd123(36)+acd123(37)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd123h2
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
!---#[ subroutine reconstruct_d123:
   subroutine     reconstruct_d123(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group20
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group20), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_123:
      coeffs%coeffs_123%c0 = derivative(czip)
      coeffs%coeffs_123%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_123%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_123%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_123%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_123%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_123%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_123%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_123%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_123%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_123%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_123%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_123%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_123%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_123%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_123%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_123%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_123%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_123%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_123%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_123%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_123%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_123%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_123%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_123%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_123%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_123%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_123%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_123%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_123%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_123%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_123%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_123%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_123%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_123%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_123:
   end subroutine reconstruct_d123
!---#] subroutine reconstruct_d123:
end module     p0_dbaru_epnebbbarg_d123h2l1d
