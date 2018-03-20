module     p0_gg_hhg_d6h3l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d6h3l1d_qp.f90
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
      use p0_gg_hhg_abbrevd6h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(17) :: acd6
      complex(ki) :: brack
      acd6(1)=dotproduct(k2,qshift)
      acd6(2)=abb6(11)
      acd6(3)=dotproduct(qshift,qshift)
      acd6(4)=abb6(9)
      acd6(5)=dotproduct(qshift,spvak1k2)
      acd6(6)=abb6(12)
      acd6(7)=dotproduct(qshift,spvak2k1)
      acd6(8)=dotproduct(qshift,spvak5k2)
      acd6(9)=abb6(7)
      acd6(10)=dotproduct(qshift,spvak2k5)
      acd6(11)=abb6(8)
      acd6(12)=abb6(13)
      acd6(13)=abb6(10)
      acd6(14)=acd6(9)*acd6(7)
      acd6(15)=acd6(11)*acd6(10)
      acd6(14)=-acd6(12)+acd6(15)+acd6(14)
      acd6(14)=acd6(8)*acd6(14)
      acd6(15)=-acd6(2)*acd6(1)
      acd6(16)=acd6(4)*acd6(3)
      acd6(17)=-acd6(6)*acd6(5)
      brack=acd6(13)+acd6(14)+acd6(15)+acd6(16)+acd6(17)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd6h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(20) :: acd6
      complex(ki) :: brack
      acd6(1)=k2(iv1)
      acd6(2)=abb6(11)
      acd6(3)=qshift(iv1)
      acd6(4)=abb6(9)
      acd6(5)=spvak1k2(iv1)
      acd6(6)=abb6(12)
      acd6(7)=spvak2k1(iv1)
      acd6(8)=dotproduct(qshift,spvak5k2)
      acd6(9)=abb6(7)
      acd6(10)=spvak5k2(iv1)
      acd6(11)=dotproduct(qshift,spvak2k1)
      acd6(12)=dotproduct(qshift,spvak2k5)
      acd6(13)=abb6(8)
      acd6(14)=abb6(13)
      acd6(15)=spvak2k5(iv1)
      acd6(16)=acd6(7)*acd6(9)
      acd6(17)=acd6(15)*acd6(13)
      acd6(16)=acd6(17)+acd6(16)
      acd6(16)=acd6(8)*acd6(16)
      acd6(17)=acd6(11)*acd6(9)
      acd6(18)=acd6(12)*acd6(13)
      acd6(17)=-acd6(14)+acd6(18)+acd6(17)
      acd6(17)=acd6(10)*acd6(17)
      acd6(18)=-acd6(2)*acd6(1)
      acd6(19)=acd6(4)*acd6(3)
      acd6(20)=-acd6(6)*acd6(5)
      brack=acd6(16)+acd6(17)+acd6(18)+2.0_ki*acd6(19)+acd6(20)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd6h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(13) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=abb6(9)
      acd6(3)=spvak2k1(iv1)
      acd6(4)=spvak5k2(iv2)
      acd6(5)=abb6(7)
      acd6(6)=spvak2k1(iv2)
      acd6(7)=spvak5k2(iv1)
      acd6(8)=spvak2k5(iv2)
      acd6(9)=abb6(8)
      acd6(10)=spvak2k5(iv1)
      acd6(11)=acd6(3)*acd6(4)
      acd6(12)=acd6(6)*acd6(7)
      acd6(11)=acd6(12)+acd6(11)
      acd6(11)=acd6(5)*acd6(11)
      acd6(12)=acd6(8)*acd6(7)
      acd6(13)=acd6(10)*acd6(4)
      acd6(12)=acd6(13)+acd6(12)
      acd6(12)=acd6(9)*acd6(12)
      acd6(13)=acd6(2)*acd6(1)
      brack=acd6(11)+acd6(12)+2.0_ki*acd6(13)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd6h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd6
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd6h3_qp
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
end module     p0_gg_hhg_d6h3l1d_qp
