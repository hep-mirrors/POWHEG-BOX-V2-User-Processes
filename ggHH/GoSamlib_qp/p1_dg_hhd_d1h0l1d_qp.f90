module p1_dg_hhd_d1h0l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p1_dg_hhd/helicity0d1h0l1d.f90
   ! generator: buildfortran_d.py
   use p1_dg_hhd_config_qp, only: ki
   use p1_dg_hhd_util_qp, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d1
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd1h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(5) :: acd1
      complex(ki) :: brack
      acd1(1)=dotproduct(qshift,spvak2k1)
      acd1(2)=dotproduct(qshift,spvak5k1)
      acd1(3)=abb1(6)
      acd1(4)=abb1(7)
      acd1(5)=acd1(3)*acd1(2)*acd1(1)
      brack=acd1(4)+acd1(5)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd1h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(7) :: acd1
      complex(ki) :: brack
      acd1(1)=spvak2k1(iv1)
      acd1(2)=dotproduct(qshift,spvak5k1)
      acd1(3)=abb1(6)
      acd1(4)=spvak5k1(iv1)
      acd1(5)=dotproduct(qshift,spvak2k1)
      acd1(6)=acd1(2)*acd1(1)
      acd1(7)=acd1(5)*acd1(4)
      acd1(6)=acd1(6)+acd1(7)
      brack=acd1(6)*acd1(3)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd1h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(7) :: acd1
      complex(ki) :: brack
      acd1(1)=spvak2k1(iv1)
      acd1(2)=spvak5k1(iv2)
      acd1(3)=abb1(6)
      acd1(4)=spvak2k1(iv2)
      acd1(5)=spvak5k1(iv1)
      acd1(6)=acd1(2)*acd1(1)
      acd1(7)=acd1(5)*acd1(4)
      acd1(6)=acd1(6)+acd1(7)
      brack=acd1(6)*acd1(3)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd1h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd1
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd1h0_qp
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
!---#[ subroutine reconstruct_d1:
   subroutine     reconstruct_d1(coeffs)
      use p1_dg_hhd_groups_qp, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_1:
      coeffs%coeffs_1%c0 = derivative(czip)
      coeffs%coeffs_1%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_1%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_1%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_1%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_1%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_1%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_1%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_1%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_1%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_1%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_1%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_1%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_1%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_1%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_1%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_1%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_1%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_1%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_1%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_1%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_1%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_1%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_1%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_1%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_1%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_1%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_1%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_1%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_1%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_1%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_1%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_1%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_1%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_1%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_1:
   end subroutine reconstruct_d1
!---#] subroutine reconstruct_d1:
end module p1_dg_hhd_d1h0l1d_qp
