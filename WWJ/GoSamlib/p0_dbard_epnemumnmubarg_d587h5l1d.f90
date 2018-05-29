module     p0_dbard_epnemumnmubarg_d587h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity5d587h5l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d587
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd587h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd587
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd587h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd587
      complex(ki) :: brack
      acd587(1)=spvak1k5(iv1)
      acd587(2)=abb587(21)
      acd587(3)=spvak1k6(iv1)
      acd587(4)=abb587(29)
      acd587(5)=spvak4k5(iv1)
      acd587(6)=abb587(25)
      acd587(7)=spvak4k6(iv1)
      acd587(8)=abb587(22)
      acd587(9)=spvak5k2(iv1)
      acd587(10)=abb587(17)
      acd587(11)=spvak6k2(iv1)
      acd587(12)=abb587(8)
      acd587(13)=acd587(2)*acd587(1)
      acd587(14)=acd587(4)*acd587(3)
      acd587(15)=acd587(6)*acd587(5)
      acd587(16)=acd587(8)*acd587(7)
      acd587(17)=acd587(10)*acd587(9)
      acd587(18)=acd587(12)*acd587(11)
      brack=acd587(13)+acd587(14)+acd587(15)+acd587(16)+acd587(17)+acd587(18)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd587h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd587
      complex(ki) :: brack
      acd587(1)=d(iv1,iv2)
      acd587(2)=abb587(10)
      acd587(3)=k5(iv1)
      acd587(4)=spvak1k2(iv2)
      acd587(5)=abb587(15)
      acd587(6)=spvak4k2(iv2)
      acd587(7)=abb587(26)
      acd587(8)=spvak5k2(iv2)
      acd587(9)=abb587(19)
      acd587(10)=spvak7k2(iv2)
      acd587(11)=abb587(16)
      acd587(12)=k5(iv2)
      acd587(13)=spvak1k2(iv1)
      acd587(14)=spvak4k2(iv1)
      acd587(15)=spvak5k2(iv1)
      acd587(16)=spvak7k2(iv1)
      acd587(17)=k6(iv1)
      acd587(18)=k6(iv2)
      acd587(19)=spvak5k6(iv2)
      acd587(20)=abb587(9)
      acd587(21)=spvak5k6(iv1)
      acd587(22)=abb587(7)
      acd587(23)=abb587(12)
      acd587(24)=abb587(11)
      acd587(25)=spvak1k6(iv2)
      acd587(26)=abb587(23)
      acd587(27)=spvak4k6(iv2)
      acd587(28)=abb587(24)
      acd587(29)=spvak1k6(iv1)
      acd587(30)=spvak4k6(iv1)
      acd587(31)=spvak6k2(iv2)
      acd587(32)=spvak6k2(iv1)
      acd587(33)=acd587(11)*acd587(16)
      acd587(34)=acd587(13)*acd587(5)
      acd587(35)=acd587(14)*acd587(7)
      acd587(36)=-acd587(15)*acd587(9)
      acd587(33)=acd587(36)+acd587(35)+acd587(34)+acd587(33)
      acd587(34)=acd587(18)+acd587(12)
      acd587(33)=acd587(34)*acd587(33)
      acd587(34)=acd587(11)*acd587(10)
      acd587(35)=acd587(4)*acd587(5)
      acd587(36)=acd587(6)*acd587(7)
      acd587(37)=-acd587(8)*acd587(9)
      acd587(34)=acd587(37)+acd587(36)+acd587(35)+acd587(34)
      acd587(35)=acd587(17)+acd587(3)
      acd587(34)=acd587(35)*acd587(34)
      acd587(35)=acd587(31)*acd587(21)
      acd587(36)=acd587(32)*acd587(19)
      acd587(35)=acd587(36)+acd587(35)
      acd587(35)=acd587(9)*acd587(35)
      acd587(36)=acd587(25)*acd587(16)
      acd587(37)=acd587(29)*acd587(10)
      acd587(36)=acd587(37)+acd587(36)
      acd587(36)=acd587(26)*acd587(36)
      acd587(37)=acd587(27)*acd587(16)
      acd587(38)=acd587(30)*acd587(10)
      acd587(37)=acd587(38)+acd587(37)
      acd587(37)=acd587(28)*acd587(37)
      acd587(38)=acd587(4)*acd587(21)
      acd587(39)=acd587(13)*acd587(19)
      acd587(38)=acd587(38)+acd587(39)
      acd587(38)=acd587(20)*acd587(38)
      acd587(39)=acd587(6)*acd587(21)
      acd587(40)=acd587(14)*acd587(19)
      acd587(39)=acd587(39)+acd587(40)
      acd587(39)=acd587(22)*acd587(39)
      acd587(40)=acd587(8)*acd587(21)
      acd587(41)=acd587(15)*acd587(19)
      acd587(40)=acd587(40)+acd587(41)
      acd587(40)=acd587(23)*acd587(40)
      acd587(41)=acd587(19)*acd587(16)
      acd587(42)=acd587(21)*acd587(10)
      acd587(41)=acd587(41)+acd587(42)
      acd587(41)=acd587(24)*acd587(41)
      acd587(42)=acd587(2)*acd587(1)
      brack=acd587(33)+acd587(34)+acd587(35)+acd587(36)+acd587(37)+acd587(38)+a&
      &cd587(39)+acd587(40)+acd587(41)+2.0_ki*acd587(42)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd587h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd587
      complex(ki) :: brack
      acd587(1)=d(iv1,iv2)
      acd587(2)=spvak1k2(iv3)
      acd587(3)=abb587(14)
      acd587(4)=spvak4k2(iv3)
      acd587(5)=abb587(27)
      acd587(6)=spvak5k2(iv3)
      acd587(7)=abb587(20)
      acd587(8)=spvak7k2(iv3)
      acd587(9)=abb587(16)
      acd587(10)=d(iv1,iv3)
      acd587(11)=spvak1k2(iv2)
      acd587(12)=spvak4k2(iv2)
      acd587(13)=spvak5k2(iv2)
      acd587(14)=spvak7k2(iv2)
      acd587(15)=d(iv2,iv3)
      acd587(16)=spvak1k2(iv1)
      acd587(17)=spvak4k2(iv1)
      acd587(18)=spvak5k2(iv1)
      acd587(19)=spvak7k2(iv1)
      acd587(20)=spvak5k6(iv3)
      acd587(21)=abb587(13)
      acd587(22)=spvak5k6(iv2)
      acd587(23)=spvak5k6(iv1)
      acd587(24)=abb587(18)
      acd587(25)=acd587(6)*acd587(1)
      acd587(26)=acd587(13)*acd587(10)
      acd587(27)=acd587(18)*acd587(15)
      acd587(25)=acd587(27)+acd587(26)+acd587(25)
      acd587(26)=2.0_ki*acd587(7)
      acd587(25)=acd587(26)*acd587(25)
      acd587(26)=-acd587(1)*acd587(8)
      acd587(27)=-acd587(10)*acd587(14)
      acd587(28)=-acd587(15)*acd587(19)
      acd587(26)=acd587(28)+acd587(26)+acd587(27)
      acd587(26)=acd587(9)*acd587(26)
      acd587(27)=acd587(22)*acd587(19)
      acd587(28)=acd587(23)*acd587(14)
      acd587(27)=acd587(27)+acd587(28)
      acd587(28)=acd587(21)*acd587(27)
      acd587(29)=2.0_ki*acd587(3)
      acd587(30)=acd587(1)*acd587(29)
      acd587(28)=acd587(28)+acd587(30)
      acd587(28)=acd587(2)*acd587(28)
      acd587(27)=acd587(24)*acd587(27)
      acd587(30)=2.0_ki*acd587(5)
      acd587(31)=acd587(1)*acd587(30)
      acd587(27)=acd587(31)+acd587(27)
      acd587(27)=acd587(4)*acd587(27)
      acd587(31)=acd587(20)*acd587(19)
      acd587(32)=acd587(23)*acd587(8)
      acd587(31)=acd587(31)+acd587(32)
      acd587(32)=acd587(21)*acd587(31)
      acd587(33)=acd587(10)*acd587(29)
      acd587(32)=acd587(33)+acd587(32)
      acd587(32)=acd587(11)*acd587(32)
      acd587(31)=acd587(24)*acd587(31)
      acd587(33)=acd587(10)*acd587(30)
      acd587(31)=acd587(33)+acd587(31)
      acd587(31)=acd587(12)*acd587(31)
      acd587(33)=acd587(20)*acd587(14)
      acd587(34)=acd587(22)*acd587(8)
      acd587(33)=acd587(33)+acd587(34)
      acd587(34)=acd587(21)*acd587(33)
      acd587(29)=acd587(15)*acd587(29)
      acd587(29)=acd587(29)+acd587(34)
      acd587(29)=acd587(16)*acd587(29)
      acd587(33)=acd587(24)*acd587(33)
      acd587(30)=acd587(15)*acd587(30)
      acd587(30)=acd587(30)+acd587(33)
      acd587(30)=acd587(17)*acd587(30)
      brack=acd587(25)+2.0_ki*acd587(26)+acd587(27)+acd587(28)+acd587(29)+acd58&
      &7(30)+acd587(31)+acd587(32)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd587h5
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
!---#[ subroutine reconstruct_d587:
   subroutine     reconstruct_d587(coeffs)
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_587:
      coeffs%coeffs_587%c0 = derivative(czip)
      coeffs%coeffs_587%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_587%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_587%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_587%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_587%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_587%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_587%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_587%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_587%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_587%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_587%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_587%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_587%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_587%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_587%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_587%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_587%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_587%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_587%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_587%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_587%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_587%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_587%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_587%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_587%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_587%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_587%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_587%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_587%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_587%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_587%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_587%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_587%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_587%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_587:
   end subroutine reconstruct_d587
!---#] subroutine reconstruct_d587:
end module     p0_dbard_epnemumnmubarg_d587h5l1d
