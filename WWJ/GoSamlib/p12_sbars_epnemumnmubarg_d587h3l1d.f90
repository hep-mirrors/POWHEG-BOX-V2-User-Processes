module     p12_sbars_epnemumnmubarg_d587h3l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity3d587h3l1d.f90
   ! generator: buildfortran_d.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond, d => metric_tensor
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
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd587h3
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
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd587h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd587
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd587h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd587
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd587h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd587
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd587h3
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
      use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group2
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
end module     p12_sbars_epnemumnmubarg_d587h3l1d
