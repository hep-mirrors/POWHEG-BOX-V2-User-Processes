module     p8_cbarc_epnemumnmubarg_d517h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity1d517h1l1d.f90
   ! generator: buildfortran_d.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d517
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd517h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd517
      complex(ki) :: brack
      acd517(1)=abb517(34)
      brack=acd517(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd517h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(9) :: acd517
      complex(ki) :: brack
      acd517(1)=k2(iv1)
      acd517(2)=abb517(24)
      acd517(3)=k7(iv1)
      acd517(4)=abb517(49)
      acd517(5)=spvak2k7(iv1)
      acd517(6)=abb517(20)
      acd517(7)=acd517(2)*acd517(1)
      acd517(8)=acd517(4)*acd517(3)
      acd517(9)=acd517(6)*acd517(5)
      brack=acd517(7)+acd517(8)+acd517(9)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd517h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(13) :: acd517
      complex(ki) :: brack
      acd517(1)=d(iv1,iv2)
      acd517(2)=abb517(28)
      acd517(3)=k2(iv1)
      acd517(4)=spvak2k7(iv2)
      acd517(5)=abb517(14)
      acd517(6)=k2(iv2)
      acd517(7)=spvak2k7(iv1)
      acd517(8)=spvak7k2(iv2)
      acd517(9)=abb517(15)
      acd517(10)=spvak7k2(iv1)
      acd517(11)=acd517(3)*acd517(4)
      acd517(12)=acd517(6)*acd517(7)
      acd517(11)=acd517(12)+acd517(11)
      acd517(11)=acd517(5)*acd517(11)
      acd517(12)=acd517(8)*acd517(7)
      acd517(13)=acd517(10)*acd517(4)
      acd517(12)=acd517(13)+acd517(12)
      acd517(12)=acd517(9)*acd517(12)
      acd517(13)=acd517(2)*acd517(1)
      brack=acd517(11)+acd517(12)+2.0_ki*acd517(13)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd517h1
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
!---#[ subroutine reconstruct_d517:
   subroutine     reconstruct_d517(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_517:
      coeffs%coeffs_517%c0 = derivative(czip)
      coeffs%coeffs_517%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_517%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_517%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_517%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_517%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_517%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_517%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_517%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_517%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_517%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_517%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_517%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_517%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_517%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_517:
   end subroutine reconstruct_d517
!---#] subroutine reconstruct_d517:
end module     p8_cbarc_epnemumnmubarg_d517h1l1d
