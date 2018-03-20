module     p0_gg_hhg_d4h4l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d4h4l1d_qp.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_util_qp, only: cond, d => metric_tensor
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd4h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(13) :: acd4
      complex(ki) :: brack
      acd4(1)=dotproduct(k2,qshift)
      acd4(2)=dotproduct(qshift,spvak5k2)
      acd4(3)=abb4(14)
      acd4(4)=dotproduct(qshift,qshift)
      acd4(5)=abb4(11)
      acd4(6)=dotproduct(qshift,spvak1k2)
      acd4(7)=abb4(7)
      acd4(8)=dotproduct(qshift,spvak5k1)
      acd4(9)=abb4(8)
      acd4(10)=abb4(13)
      acd4(11)=acd4(7)*acd4(2)
      acd4(12)=acd4(9)*acd4(8)
      acd4(11)=acd4(12)+acd4(11)
      acd4(11)=acd4(6)*acd4(11)
      acd4(12)=acd4(3)*acd4(1)*acd4(2)
      acd4(13)=-acd4(5)*acd4(4)
      brack=acd4(10)+acd4(11)+acd4(12)+acd4(13)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd4h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(17) :: acd4
      complex(ki) :: brack
      acd4(1)=k2(iv1)
      acd4(2)=dotproduct(qshift,spvak5k2)
      acd4(3)=abb4(14)
      acd4(4)=qshift(iv1)
      acd4(5)=abb4(11)
      acd4(6)=spvak5k2(iv1)
      acd4(7)=dotproduct(k2,qshift)
      acd4(8)=dotproduct(qshift,spvak1k2)
      acd4(9)=abb4(7)
      acd4(10)=spvak1k2(iv1)
      acd4(11)=dotproduct(qshift,spvak5k1)
      acd4(12)=abb4(8)
      acd4(13)=spvak5k1(iv1)
      acd4(14)=-acd4(1)*acd4(2)
      acd4(15)=-acd4(7)*acd4(6)
      acd4(14)=acd4(15)+acd4(14)
      acd4(14)=acd4(3)*acd4(14)
      acd4(15)=-acd4(8)*acd4(6)
      acd4(16)=-acd4(10)*acd4(2)
      acd4(15)=acd4(15)+acd4(16)
      acd4(15)=acd4(9)*acd4(15)
      acd4(16)=-acd4(11)*acd4(10)
      acd4(17)=-acd4(13)*acd4(8)
      acd4(16)=acd4(17)+acd4(16)
      acd4(16)=acd4(12)*acd4(16)
      acd4(17)=acd4(5)*acd4(4)
      brack=acd4(14)+acd4(15)+acd4(16)+2.0_ki*acd4(17)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd4h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(17) :: acd4
      complex(ki) :: brack
      acd4(1)=d(iv1,iv2)
      acd4(2)=abb4(11)
      acd4(3)=k2(iv1)
      acd4(4)=spvak5k2(iv2)
      acd4(5)=abb4(14)
      acd4(6)=k2(iv2)
      acd4(7)=spvak5k2(iv1)
      acd4(8)=spvak1k2(iv2)
      acd4(9)=abb4(7)
      acd4(10)=spvak1k2(iv1)
      acd4(11)=spvak5k1(iv2)
      acd4(12)=abb4(8)
      acd4(13)=spvak5k1(iv1)
      acd4(14)=acd4(3)*acd4(4)
      acd4(15)=acd4(6)*acd4(7)
      acd4(14)=acd4(15)+acd4(14)
      acd4(14)=acd4(5)*acd4(14)
      acd4(15)=acd4(8)*acd4(7)
      acd4(16)=acd4(10)*acd4(4)
      acd4(15)=acd4(15)+acd4(16)
      acd4(15)=acd4(9)*acd4(15)
      acd4(16)=acd4(11)*acd4(10)
      acd4(17)=acd4(13)*acd4(8)
      acd4(16)=acd4(17)+acd4(16)
      acd4(16)=acd4(12)*acd4(16)
      acd4(17)=acd4(2)*acd4(1)
      brack=acd4(14)+acd4(15)+acd4(16)-2.0_ki*acd4(17)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd4h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd4
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd4h4_qp
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
      qshift = k3+k5+k4
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
end module     p0_gg_hhg_d4h4l1d_qp
