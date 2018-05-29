module     p4_ubaru_epnemumnmubarg_d607h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity1d607h1l1d.f90
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
   public :: derivative , reconstruct_d607
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd607
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd607
      complex(ki) :: brack
      acd607(1)=k2(iv1)
      acd607(2)=abb607(10)
      acd607(3)=spvak1k3(iv1)
      acd607(4)=abb607(18)
      acd607(5)=spvak1k7(iv1)
      acd607(6)=abb607(22)
      acd607(7)=spvak5k3(iv1)
      acd607(8)=abb607(24)
      acd607(9)=spvak5k7(iv1)
      acd607(10)=abb607(25)
      acd607(11)=spvak7k2(iv1)
      acd607(12)=abb607(8)
      acd607(13)=-acd607(2)*acd607(1)
      acd607(14)=-acd607(4)*acd607(3)
      acd607(15)=-acd607(6)*acd607(5)
      acd607(16)=-acd607(8)*acd607(7)
      acd607(17)=-acd607(10)*acd607(9)
      acd607(18)=-acd607(12)*acd607(11)
      brack=acd607(13)+acd607(14)+acd607(15)+acd607(16)+acd607(17)+acd607(18)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd607
      complex(ki) :: brack
      acd607(1)=d(iv1,iv2)
      acd607(2)=abb607(17)
      acd607(3)=k2(iv1)
      acd607(4)=k7(iv2)
      acd607(5)=abb607(13)
      acd607(6)=k2(iv2)
      acd607(7)=k7(iv1)
      acd607(8)=spvak1k3(iv2)
      acd607(9)=abb607(9)
      acd607(10)=spvak4k2(iv2)
      acd607(11)=abb607(30)
      acd607(12)=spvak5k3(iv2)
      acd607(13)=abb607(27)
      acd607(14)=spvak1k3(iv1)
      acd607(15)=spvak4k2(iv1)
      acd607(16)=spvak5k3(iv1)
      acd607(17)=spvak2k7(iv2)
      acd607(18)=abb607(15)
      acd607(19)=spvak2k7(iv1)
      acd607(20)=abb607(7)
      acd607(21)=abb607(16)
      acd607(22)=spvak1k7(iv2)
      acd607(23)=abb607(19)
      acd607(24)=spvak5k7(iv2)
      acd607(25)=abb607(31)
      acd607(26)=spvak7k2(iv2)
      acd607(27)=abb607(11)
      acd607(28)=spvak1k7(iv1)
      acd607(29)=spvak5k7(iv1)
      acd607(30)=spvak7k2(iv1)
      acd607(31)=spvak4k3(iv2)
      acd607(32)=abb607(21)
      acd607(33)=spvak4k3(iv1)
      acd607(34)=abb607(29)
      acd607(35)=acd607(27)*acd607(26)
      acd607(36)=acd607(24)*acd607(25)
      acd607(37)=acd607(22)*acd607(23)
      acd607(38)=acd607(12)*acd607(21)
      acd607(39)=acd607(10)*acd607(20)
      acd607(40)=acd607(8)*acd607(18)
      acd607(35)=acd607(40)+acd607(39)+acd607(38)+acd607(37)+acd607(35)+acd607(&
      &36)
      acd607(35)=acd607(19)*acd607(35)
      acd607(36)=acd607(27)*acd607(30)
      acd607(37)=acd607(25)*acd607(29)
      acd607(38)=acd607(23)*acd607(28)
      acd607(39)=acd607(16)*acd607(21)
      acd607(40)=acd607(15)*acd607(20)
      acd607(41)=acd607(14)*acd607(18)
      acd607(36)=acd607(41)+acd607(40)+acd607(39)+acd607(38)+acd607(36)+acd607(&
      &37)
      acd607(36)=acd607(17)*acd607(36)
      acd607(37)=acd607(12)*acd607(13)
      acd607(38)=acd607(10)*acd607(11)
      acd607(39)=acd607(8)*acd607(9)
      acd607(40)=acd607(5)*acd607(6)
      acd607(37)=acd607(40)+acd607(39)+acd607(37)+acd607(38)
      acd607(37)=acd607(7)*acd607(37)
      acd607(38)=acd607(13)*acd607(16)
      acd607(39)=acd607(11)*acd607(15)
      acd607(40)=acd607(9)*acd607(14)
      acd607(41)=acd607(5)*acd607(3)
      acd607(38)=acd607(41)+acd607(40)+acd607(38)+acd607(39)
      acd607(38)=acd607(4)*acd607(38)
      acd607(39)=acd607(24)*acd607(34)
      acd607(40)=-acd607(22)*acd607(32)
      acd607(39)=acd607(40)+acd607(39)
      acd607(39)=acd607(33)*acd607(39)
      acd607(40)=acd607(29)*acd607(34)
      acd607(41)=-acd607(28)*acd607(32)
      acd607(40)=acd607(41)+acd607(40)
      acd607(40)=acd607(31)*acd607(40)
      acd607(41)=acd607(1)*acd607(2)
      brack=acd607(35)+acd607(36)+acd607(37)+acd607(38)+acd607(39)+acd607(40)+2&
      &.0_ki*acd607(41)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd607
      complex(ki) :: brack
      acd607(1)=d(iv1,iv2)
      acd607(2)=k2(iv3)
      acd607(3)=abb607(11)
      acd607(4)=spvak1k3(iv3)
      acd607(5)=abb607(26)
      acd607(6)=spvak4k2(iv3)
      acd607(7)=abb607(14)
      acd607(8)=spvak4k3(iv3)
      acd607(9)=abb607(20)
      acd607(10)=spvak5k3(iv3)
      acd607(11)=abb607(28)
      acd607(12)=d(iv1,iv3)
      acd607(13)=k2(iv2)
      acd607(14)=spvak1k3(iv2)
      acd607(15)=spvak4k2(iv2)
      acd607(16)=spvak4k3(iv2)
      acd607(17)=spvak5k3(iv2)
      acd607(18)=d(iv2,iv3)
      acd607(19)=k2(iv1)
      acd607(20)=spvak1k3(iv1)
      acd607(21)=spvak4k2(iv1)
      acd607(22)=spvak4k3(iv1)
      acd607(23)=spvak5k3(iv1)
      acd607(24)=spvak1k2(iv2)
      acd607(25)=spvak2k7(iv3)
      acd607(26)=abb607(12)
      acd607(27)=spvak1k2(iv3)
      acd607(28)=spvak2k7(iv2)
      acd607(29)=spvak5k2(iv3)
      acd607(30)=abb607(23)
      acd607(31)=spvak5k2(iv2)
      acd607(32)=spvak1k2(iv1)
      acd607(33)=spvak2k7(iv1)
      acd607(34)=spvak5k2(iv1)
      acd607(35)=acd607(25)*acd607(22)
      acd607(36)=acd607(33)*acd607(8)
      acd607(35)=acd607(35)+acd607(36)
      acd607(36)=acd607(24)*acd607(35)
      acd607(37)=acd607(28)*acd607(22)
      acd607(38)=acd607(33)*acd607(16)
      acd607(37)=acd607(37)+acd607(38)
      acd607(38)=acd607(27)*acd607(37)
      acd607(39)=acd607(25)*acd607(16)
      acd607(40)=acd607(28)*acd607(8)
      acd607(39)=acd607(39)+acd607(40)
      acd607(40)=acd607(32)*acd607(39)
      acd607(36)=acd607(40)+acd607(38)+acd607(36)
      acd607(36)=acd607(26)*acd607(36)
      acd607(37)=-acd607(29)*acd607(37)
      acd607(35)=-acd607(31)*acd607(35)
      acd607(38)=-acd607(34)*acd607(39)
      acd607(35)=acd607(38)+acd607(35)+acd607(37)
      acd607(35)=acd607(30)*acd607(35)
      acd607(37)=acd607(19)*acd607(3)
      acd607(38)=-acd607(20)*acd607(5)
      acd607(39)=-acd607(21)*acd607(7)
      acd607(40)=-acd607(23)*acd607(11)
      acd607(37)=acd607(40)+acd607(39)+acd607(38)+acd607(37)
      acd607(38)=2.0_ki*acd607(18)
      acd607(37)=acd607(38)*acd607(37)
      acd607(38)=acd607(13)*acd607(3)
      acd607(39)=-acd607(14)*acd607(5)
      acd607(40)=-acd607(15)*acd607(7)
      acd607(41)=-acd607(17)*acd607(11)
      acd607(38)=acd607(41)+acd607(40)+acd607(39)+acd607(38)
      acd607(39)=2.0_ki*acd607(12)
      acd607(38)=acd607(39)*acd607(38)
      acd607(39)=acd607(2)*acd607(3)
      acd607(40)=-acd607(4)*acd607(5)
      acd607(41)=-acd607(6)*acd607(7)
      acd607(42)=-acd607(10)*acd607(11)
      acd607(39)=acd607(42)+acd607(41)+acd607(40)+acd607(39)
      acd607(40)=2.0_ki*acd607(1)
      acd607(39)=acd607(40)*acd607(39)
      acd607(40)=-acd607(8)*acd607(1)
      acd607(41)=-acd607(16)*acd607(12)
      acd607(42)=-acd607(22)*acd607(18)
      acd607(40)=acd607(42)+acd607(40)+acd607(41)
      acd607(40)=acd607(9)*acd607(40)
      brack=acd607(35)+acd607(36)+acd607(37)+acd607(38)+acd607(39)+2.0_ki*acd60&
      &7(40)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd607h1
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
!---#[ subroutine reconstruct_d607:
   subroutine     reconstruct_d607(coeffs)
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_607:
      coeffs%coeffs_607%c0 = derivative(czip)
      coeffs%coeffs_607%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_607%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_607%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_607%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_607%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_607%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_607%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_607%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_607%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_607%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_607%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_607%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_607%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_607%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_607%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_607%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_607%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_607%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_607%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_607%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_607%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_607%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_607%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_607%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_607%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_607%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_607%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_607%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_607%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_607%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_607%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_607%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_607%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_607%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_607:
   end subroutine reconstruct_d607
!---#] subroutine reconstruct_d607:
end module     p4_ubaru_epnemumnmubarg_d607h1l1d
