module     p4_ubaru_epnemumnmubarg_d33h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity1d33h1l1d.f90
   ! generator: buildfortran_d.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d33
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd33h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd33
      complex(ki) :: brack
      acd33(1)=abb33(10)
      brack=acd33(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd33h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd33
      complex(ki) :: brack
      acd33(1)=k1(iv1)
      acd33(2)=abb33(21)
      acd33(3)=k2(iv1)
      acd33(4)=abb33(29)
      acd33(5)=k3(iv1)
      acd33(6)=abb33(24)
      acd33(7)=k4(iv1)
      acd33(8)=spvak1k7(iv1)
      acd33(9)=abb33(7)
      acd33(10)=spvak3k2(iv1)
      acd33(11)=abb33(20)
      acd33(12)=spvak4k2(iv1)
      acd33(13)=abb33(8)
      acd33(14)=spvak4k3(iv1)
      acd33(15)=abb33(13)
      acd33(16)=spvak5k6(iv1)
      acd33(17)=abb33(16)
      acd33(18)=acd33(7)+acd33(5)
      acd33(18)=acd33(6)*acd33(18)
      acd33(19)=acd33(2)*acd33(1)
      acd33(20)=acd33(4)*acd33(3)
      acd33(21)=acd33(9)*acd33(8)
      acd33(22)=acd33(11)*acd33(10)
      acd33(23)=acd33(13)*acd33(12)
      acd33(24)=acd33(15)*acd33(14)
      acd33(25)=acd33(17)*acd33(16)
      brack=acd33(18)+acd33(19)+acd33(20)+acd33(21)+acd33(22)+acd33(23)+acd33(2&
      &4)+acd33(25)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd33h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(54) :: acd33
      complex(ki) :: brack
      acd33(1)=d(iv1,iv2)
      acd33(2)=abb33(11)
      acd33(3)=k1(iv1)
      acd33(4)=spvak4k3(iv2)
      acd33(5)=abb33(22)
      acd33(6)=k1(iv2)
      acd33(7)=spvak4k3(iv1)
      acd33(8)=k2(iv1)
      acd33(9)=spvak1k6(iv2)
      acd33(10)=abb33(23)
      acd33(11)=spvak4k2(iv2)
      acd33(12)=abb33(15)
      acd33(13)=spvak5k2(iv2)
      acd33(14)=abb33(35)
      acd33(15)=spvak5k6(iv2)
      acd33(16)=abb33(30)
      acd33(17)=k2(iv2)
      acd33(18)=spvak1k6(iv1)
      acd33(19)=spvak4k2(iv1)
      acd33(20)=spvak5k2(iv1)
      acd33(21)=spvak5k6(iv1)
      acd33(22)=k3(iv1)
      acd33(23)=k3(iv2)
      acd33(24)=k4(iv1)
      acd33(25)=k4(iv2)
      acd33(26)=abb33(26)
      acd33(27)=abb33(37)
      acd33(28)=abb33(14)
      acd33(29)=spvak1k2(iv2)
      acd33(30)=abb33(25)
      acd33(31)=spvak1k7(iv2)
      acd33(32)=abb33(12)
      acd33(33)=spvak3k2(iv2)
      acd33(34)=abb33(19)
      acd33(35)=spvak7k2(iv2)
      acd33(36)=abb33(38)
      acd33(37)=spvak1k2(iv1)
      acd33(38)=spvak1k7(iv1)
      acd33(39)=spvak3k2(iv1)
      acd33(40)=spvak7k2(iv1)
      acd33(41)=abb33(17)
      acd33(42)=abb33(27)
      acd33(43)=spvak1k3(iv2)
      acd33(44)=abb33(9)
      acd33(45)=spvak1k3(iv1)
      acd33(46)=-acd33(17)-acd33(6)
      acd33(46)=acd33(5)*acd33(46)
      acd33(47)=acd33(36)*acd33(35)
      acd33(48)=acd33(34)*acd33(33)
      acd33(49)=acd33(32)*acd33(31)
      acd33(50)=acd33(29)*acd33(30)
      acd33(51)=acd33(13)*acd33(28)
      acd33(52)=acd33(9)*acd33(26)
      acd33(53)=acd33(11)*acd33(27)
      acd33(46)=acd33(53)+acd33(52)+acd33(51)+acd33(50)+acd33(49)+acd33(47)+acd&
      &33(48)+acd33(46)
      acd33(46)=acd33(7)*acd33(46)
      acd33(47)=-acd33(8)-acd33(3)
      acd33(47)=acd33(5)*acd33(47)
      acd33(48)=acd33(36)*acd33(40)
      acd33(49)=acd33(34)*acd33(39)
      acd33(50)=acd33(32)*acd33(38)
      acd33(51)=acd33(30)*acd33(37)
      acd33(52)=acd33(20)*acd33(28)
      acd33(53)=acd33(18)*acd33(26)
      acd33(54)=acd33(19)*acd33(27)
      acd33(47)=acd33(54)+acd33(53)+acd33(52)+acd33(51)+acd33(50)+acd33(48)+acd&
      &33(49)+acd33(47)
      acd33(47)=acd33(4)*acd33(47)
      acd33(48)=acd33(44)*acd33(43)
      acd33(49)=acd33(29)*acd33(42)
      acd33(50)=acd33(17)*acd33(16)
      acd33(51)=acd33(11)*acd33(41)
      acd33(48)=acd33(51)+acd33(50)+acd33(48)+acd33(49)
      acd33(48)=acd33(21)*acd33(48)
      acd33(49)=acd33(44)*acd33(45)
      acd33(50)=acd33(37)*acd33(42)
      acd33(51)=acd33(19)*acd33(41)
      acd33(52)=acd33(8)*acd33(16)
      acd33(49)=acd33(52)+acd33(51)+acd33(49)+acd33(50)
      acd33(49)=acd33(15)*acd33(49)
      acd33(50)=-acd33(17)+acd33(23)+acd33(25)
      acd33(51)=acd33(20)*acd33(50)
      acd33(52)=-acd33(8)+acd33(22)+acd33(24)
      acd33(53)=acd33(13)*acd33(52)
      acd33(51)=acd33(53)+acd33(51)
      acd33(51)=acd33(14)*acd33(51)
      acd33(53)=-acd33(19)*acd33(50)
      acd33(54)=-acd33(11)*acd33(52)
      acd33(53)=acd33(54)+acd33(53)
      acd33(53)=acd33(12)*acd33(53)
      acd33(50)=-acd33(18)*acd33(50)
      acd33(52)=-acd33(9)*acd33(52)
      acd33(50)=acd33(52)+acd33(50)
      acd33(50)=acd33(10)*acd33(50)
      acd33(52)=acd33(1)*acd33(2)
      brack=acd33(46)+acd33(47)+acd33(48)+acd33(49)+acd33(50)+acd33(51)+2.0_ki*&
      &acd33(52)+acd33(53)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd33h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(32) :: acd33
      complex(ki) :: brack
      acd33(1)=d(iv1,iv2)
      acd33(2)=spvak1k6(iv3)
      acd33(3)=abb33(18)
      acd33(4)=spvak4k2(iv3)
      acd33(5)=abb33(19)
      acd33(6)=spvak5k2(iv3)
      acd33(7)=abb33(34)
      acd33(8)=spvak5k6(iv3)
      acd33(9)=abb33(33)
      acd33(10)=d(iv1,iv3)
      acd33(11)=spvak1k6(iv2)
      acd33(12)=spvak4k2(iv2)
      acd33(13)=spvak5k2(iv2)
      acd33(14)=spvak5k6(iv2)
      acd33(15)=d(iv2,iv3)
      acd33(16)=spvak1k6(iv1)
      acd33(17)=spvak4k2(iv1)
      acd33(18)=spvak5k2(iv1)
      acd33(19)=spvak5k6(iv1)
      acd33(20)=spvak1k2(iv2)
      acd33(21)=spvak4k3(iv3)
      acd33(22)=abb33(31)
      acd33(23)=spvak1k2(iv3)
      acd33(24)=spvak4k3(iv2)
      acd33(25)=spvak1k2(iv1)
      acd33(26)=spvak4k3(iv1)
      acd33(27)=acd33(9)*acd33(19)
      acd33(28)=acd33(7)*acd33(18)
      acd33(29)=-acd33(5)*acd33(17)
      acd33(30)=acd33(3)*acd33(16)
      acd33(27)=acd33(30)+acd33(29)+acd33(27)+acd33(28)
      acd33(27)=acd33(15)*acd33(27)
      acd33(28)=acd33(9)*acd33(14)
      acd33(29)=acd33(7)*acd33(13)
      acd33(30)=-acd33(5)*acd33(12)
      acd33(31)=acd33(3)*acd33(11)
      acd33(28)=acd33(31)+acd33(30)+acd33(28)+acd33(29)
      acd33(28)=acd33(10)*acd33(28)
      acd33(29)=acd33(8)*acd33(9)
      acd33(30)=acd33(7)*acd33(6)
      acd33(31)=-acd33(5)*acd33(4)
      acd33(32)=acd33(3)*acd33(2)
      acd33(29)=acd33(32)+acd33(31)+acd33(29)+acd33(30)
      acd33(29)=acd33(1)*acd33(29)
      acd33(27)=acd33(29)+acd33(27)+acd33(28)
      acd33(28)=acd33(23)*acd33(24)
      acd33(29)=acd33(20)*acd33(21)
      acd33(28)=acd33(28)+acd33(29)
      acd33(28)=acd33(19)*acd33(28)
      acd33(29)=acd33(23)*acd33(26)
      acd33(30)=acd33(21)*acd33(25)
      acd33(29)=acd33(29)+acd33(30)
      acd33(29)=acd33(14)*acd33(29)
      acd33(30)=acd33(24)*acd33(25)
      acd33(31)=acd33(20)*acd33(26)
      acd33(30)=acd33(30)+acd33(31)
      acd33(30)=acd33(8)*acd33(30)
      acd33(28)=acd33(30)+acd33(28)+acd33(29)
      acd33(28)=acd33(22)*acd33(28)
      brack=2.0_ki*acd33(27)+acd33(28)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd33h1
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
!---#[ subroutine reconstruct_d33:
   subroutine     reconstruct_d33(coeffs)
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_33:
      coeffs%coeffs_33%c0 = derivative(czip)
      coeffs%coeffs_33%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_33%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_33%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_33%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_33%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_33%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_33%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_33%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_33%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_33%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_33%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_33%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_33%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_33%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_33%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_33%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_33%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_33%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_33%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_33%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_33%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_33%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_33%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_33%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_33%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_33%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_33%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_33%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_33%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_33%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_33%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_33%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_33%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_33%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_33:
   end subroutine reconstruct_d33
!---#] subroutine reconstruct_d33:
end module     p4_ubaru_epnemumnmubarg_d33h1l1d
