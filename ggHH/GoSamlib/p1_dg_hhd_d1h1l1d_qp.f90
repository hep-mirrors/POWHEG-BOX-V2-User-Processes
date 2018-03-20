module     p1_dg_hhd_d1h1l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity1d1h1l1d_qp.f90
   ! generator: buildfortran_d.py
   use p1_dg_hhd_config, only: ki => ki_qp
   use p1_dg_hhd_util_qp, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd1h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(8) :: acd1
      complex(ki) :: brack
      acd1(1)=dotproduct(qshift,qshift)
      acd1(2)=abb1(9)
      acd1(3)=dotproduct(qshift,spvak1k2)
      acd1(4)=dotproduct(qshift,spvak5k1)
      acd1(5)=abb1(6)
      acd1(6)=abb1(10)
      acd1(7)=acd1(2)*acd1(1)
      acd1(8)=acd1(5)*acd1(4)*acd1(3)
      brack=acd1(6)+acd1(7)+acd1(8)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd1h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(9) :: acd1
      complex(ki) :: brack
      acd1(1)=qshift(iv1)
      acd1(2)=abb1(9)
      acd1(3)=spvak1k2(iv1)
      acd1(4)=dotproduct(qshift,spvak5k1)
      acd1(5)=abb1(6)
      acd1(6)=spvak5k1(iv1)
      acd1(7)=dotproduct(qshift,spvak1k2)
      acd1(8)=acd1(4)*acd1(3)
      acd1(9)=acd1(7)*acd1(6)
      acd1(8)=acd1(9)+acd1(8)
      acd1(8)=acd1(5)*acd1(8)
      acd1(9)=acd1(2)*acd1(1)
      brack=acd1(8)+2.0_ki*acd1(9)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd1h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(9) :: acd1
      complex(ki) :: brack
      acd1(1)=d(iv1,iv2)
      acd1(2)=abb1(9)
      acd1(3)=spvak1k2(iv1)
      acd1(4)=spvak5k1(iv2)
      acd1(5)=abb1(6)
      acd1(6)=spvak1k2(iv2)
      acd1(7)=spvak5k1(iv1)
      acd1(8)=acd1(4)*acd1(3)
      acd1(9)=acd1(7)*acd1(6)
      acd1(8)=acd1(9)+acd1(8)
      acd1(8)=acd1(5)*acd1(8)
      acd1(9)=acd1(2)*acd1(1)
      brack=acd1(8)+2.0_ki*acd1(9)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd1h1_qp
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
      use p1_dg_hhd_abbrevd1h1_qp
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
end module     p1_dg_hhd_d1h1l1d_qp
