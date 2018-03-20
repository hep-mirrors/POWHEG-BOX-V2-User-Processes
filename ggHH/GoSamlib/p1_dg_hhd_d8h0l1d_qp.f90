module     p1_dg_hhd_d8h0l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity0d8h0l1d_qp.f90
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
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd8h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd8
      complex(ki) :: brack
      acd8(1)=abb8(11)
      brack=acd8(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd8h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd8
      complex(ki) :: brack
      acd8(1)=k2(iv1)
      acd8(2)=abb8(24)
      acd8(3)=spvak2k1(iv1)
      acd8(4)=abb8(18)
      acd8(5)=spvak2l4(iv1)
      acd8(6)=abb8(31)
      acd8(7)=spval3k1(iv1)
      acd8(8)=abb8(28)
      acd8(9)=spval4k1(iv1)
      acd8(10)=abb8(29)
      acd8(11)=spvak5k1(iv1)
      acd8(12)=abb8(15)
      acd8(13)=-acd8(2)*acd8(1)
      acd8(14)=-acd8(4)*acd8(3)
      acd8(15)=-acd8(6)*acd8(5)
      acd8(16)=-acd8(8)*acd8(7)
      acd8(17)=-acd8(10)*acd8(9)
      acd8(18)=-acd8(12)*acd8(11)
      brack=acd8(13)+acd8(14)+acd8(15)+acd8(16)+acd8(17)+acd8(18)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd8h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=abb8(12)
      acd8(3)=k2(iv1)
      acd8(4)=spvak2k1(iv2)
      acd8(5)=abb8(22)
      acd8(6)=spvak5k1(iv2)
      acd8(7)=abb8(23)
      acd8(8)=k2(iv2)
      acd8(9)=spvak2k1(iv1)
      acd8(10)=spvak5k1(iv1)
      acd8(11)=abb8(13)
      acd8(12)=abb8(16)
      acd8(13)=spval4k1(iv2)
      acd8(14)=abb8(10)
      acd8(15)=spval4k1(iv1)
      acd8(16)=spvak2l4(iv2)
      acd8(17)=abb8(17)
      acd8(18)=spvak2l4(iv1)
      acd8(19)=abb8(21)
      acd8(20)=acd8(14)*acd8(15)
      acd8(21)=acd8(3)*acd8(5)
      acd8(22)=acd8(10)*acd8(12)
      acd8(23)=acd8(9)*acd8(11)
      acd8(20)=2.0_ki*acd8(23)+acd8(22)+acd8(20)+acd8(21)
      acd8(20)=acd8(4)*acd8(20)
      acd8(21)=acd8(13)*acd8(14)
      acd8(22)=acd8(5)*acd8(8)
      acd8(23)=acd8(6)*acd8(12)
      acd8(21)=acd8(23)+acd8(21)+acd8(22)
      acd8(21)=acd8(9)*acd8(21)
      acd8(22)=-acd8(15)*acd8(16)
      acd8(23)=-acd8(13)*acd8(18)
      acd8(22)=acd8(23)+acd8(22)
      acd8(22)=acd8(19)*acd8(22)
      acd8(23)=acd8(16)*acd8(17)
      acd8(24)=acd8(7)*acd8(8)
      acd8(23)=acd8(23)+acd8(24)
      acd8(23)=acd8(10)*acd8(23)
      acd8(24)=acd8(17)*acd8(18)
      acd8(25)=acd8(3)*acd8(7)
      acd8(24)=acd8(24)+acd8(25)
      acd8(24)=acd8(6)*acd8(24)
      acd8(25)=acd8(1)*acd8(2)
      brack=acd8(20)+acd8(21)+acd8(22)+acd8(23)+acd8(24)+2.0_ki*acd8(25)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd8h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=spvak2k1(iv3)
      acd8(3)=abb8(20)
      acd8(4)=spvak5k1(iv3)
      acd8(5)=abb8(9)
      acd8(6)=d(iv1,iv3)
      acd8(7)=spvak2k1(iv2)
      acd8(8)=spvak5k1(iv2)
      acd8(9)=d(iv2,iv3)
      acd8(10)=spvak2k1(iv1)
      acd8(11)=spvak5k1(iv1)
      acd8(12)=k2(iv1)
      acd8(13)=abb8(27)
      acd8(14)=k2(iv2)
      acd8(15)=k2(iv3)
      acd8(16)=spvak5k2(iv3)
      acd8(17)=abb8(14)
      acd8(18)=spvak5k2(iv2)
      acd8(19)=spval4k1(iv2)
      acd8(20)=spvak5l4(iv3)
      acd8(21)=abb8(26)
      acd8(22)=spval4k1(iv3)
      acd8(23)=spvak5l4(iv2)
      acd8(24)=spvak5k2(iv1)
      acd8(25)=spval4k1(iv1)
      acd8(26)=spvak5l4(iv1)
      acd8(27)=spvak2l4(iv3)
      acd8(28)=spvak2l4(iv2)
      acd8(29)=spvak2l4(iv1)
      acd8(30)=-acd8(22)*acd8(28)
      acd8(31)=-acd8(19)*acd8(27)
      acd8(30)=acd8(30)+acd8(31)
      acd8(30)=acd8(11)*acd8(30)
      acd8(31)=-acd8(25)*acd8(27)
      acd8(32)=-acd8(22)*acd8(29)
      acd8(31)=acd8(31)+acd8(32)
      acd8(31)=acd8(8)*acd8(31)
      acd8(32)=-acd8(25)*acd8(28)
      acd8(33)=-acd8(19)*acd8(29)
      acd8(32)=acd8(32)+acd8(33)
      acd8(32)=acd8(4)*acd8(32)
      acd8(33)=-acd8(22)*acd8(23)
      acd8(34)=-acd8(19)*acd8(20)
      acd8(33)=acd8(33)+acd8(34)
      acd8(33)=acd8(10)*acd8(33)
      acd8(34)=-acd8(25)*acd8(20)
      acd8(35)=-acd8(22)*acd8(26)
      acd8(34)=acd8(34)+acd8(35)
      acd8(34)=acd8(7)*acd8(34)
      acd8(35)=-acd8(25)*acd8(23)
      acd8(36)=-acd8(19)*acd8(26)
      acd8(35)=acd8(35)+acd8(36)
      acd8(35)=acd8(2)*acd8(35)
      acd8(30)=acd8(35)+acd8(34)+acd8(33)+acd8(32)+acd8(30)+acd8(31)
      acd8(30)=acd8(21)*acd8(30)
      acd8(31)=-acd8(11)*acd8(9)
      acd8(32)=-acd8(8)*acd8(6)
      acd8(33)=-acd8(4)*acd8(1)
      acd8(31)=acd8(33)+acd8(31)+acd8(32)
      acd8(31)=acd8(5)*acd8(31)
      acd8(32)=-acd8(11)*acd8(15)
      acd8(33)=-acd8(4)*acd8(12)
      acd8(32)=acd8(32)+acd8(33)
      acd8(32)=acd8(13)*acd8(32)
      acd8(33)=2.0_ki*acd8(3)
      acd8(34)=-acd8(6)*acd8(33)
      acd8(35)=2.0_ki*acd8(17)
      acd8(36)=-acd8(10)*acd8(16)*acd8(35)
      acd8(32)=acd8(36)+acd8(34)+acd8(32)
      acd8(32)=acd8(7)*acd8(32)
      acd8(34)=-acd8(10)*acd8(18)
      acd8(36)=-acd8(7)*acd8(24)
      acd8(34)=acd8(36)+acd8(34)
      acd8(34)=acd8(35)*acd8(34)
      acd8(35)=-acd8(11)*acd8(14)
      acd8(36)=-acd8(8)*acd8(12)
      acd8(35)=acd8(35)+acd8(36)
      acd8(35)=acd8(13)*acd8(35)
      acd8(36)=-acd8(1)*acd8(33)
      acd8(34)=acd8(36)+acd8(35)+acd8(34)
      acd8(34)=acd8(2)*acd8(34)
      acd8(35)=-acd8(8)*acd8(15)
      acd8(36)=-acd8(4)*acd8(14)
      acd8(35)=acd8(35)+acd8(36)
      acd8(35)=acd8(13)*acd8(35)
      acd8(33)=-acd8(9)*acd8(33)
      acd8(33)=acd8(33)+acd8(35)
      acd8(33)=acd8(10)*acd8(33)
      brack=acd8(30)+2.0_ki*acd8(31)+acd8(32)+acd8(33)+acd8(34)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd8h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=spvak2k1(iv3)
      acd8(3)=spvak5k1(iv4)
      acd8(4)=abb8(25)
      acd8(5)=spvak2k1(iv4)
      acd8(6)=spvak5k1(iv3)
      acd8(7)=d(iv1,iv3)
      acd8(8)=spvak2k1(iv2)
      acd8(9)=spvak5k1(iv2)
      acd8(10)=d(iv1,iv4)
      acd8(11)=d(iv2,iv3)
      acd8(12)=spvak2k1(iv1)
      acd8(13)=spvak5k1(iv1)
      acd8(14)=d(iv2,iv4)
      acd8(15)=d(iv3,iv4)
      acd8(16)=acd8(13)*acd8(11)
      acd8(17)=acd8(9)*acd8(7)
      acd8(18)=acd8(6)*acd8(1)
      acd8(16)=acd8(18)+acd8(16)+acd8(17)
      acd8(16)=acd8(5)*acd8(16)
      acd8(17)=acd8(13)*acd8(14)
      acd8(18)=acd8(9)*acd8(10)
      acd8(19)=acd8(3)*acd8(1)
      acd8(17)=acd8(19)+acd8(17)+acd8(18)
      acd8(17)=acd8(2)*acd8(17)
      acd8(18)=acd8(9)*acd8(12)
      acd8(19)=acd8(8)*acd8(13)
      acd8(18)=acd8(18)+acd8(19)
      acd8(18)=acd8(15)*acd8(18)
      acd8(19)=acd8(12)*acd8(14)
      acd8(20)=acd8(8)*acd8(10)
      acd8(19)=acd8(19)+acd8(20)
      acd8(19)=acd8(6)*acd8(19)
      acd8(20)=acd8(12)*acd8(11)
      acd8(21)=acd8(8)*acd8(7)
      acd8(20)=acd8(20)+acd8(21)
      acd8(20)=acd8(3)*acd8(20)
      acd8(16)=acd8(17)+acd8(20)+acd8(16)+acd8(19)+acd8(18)
      brack=2.0_ki*acd8(16)*acd8(4)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd8h0_qp
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
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
      if(present(i4)) then
          iv4=i4
          deg=4
      else
          iv4=1
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
      if(deg.eq.4) then
         numerator = cond(epspow.eq.t1,brack_5,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
end module     p1_dg_hhd_d8h0l1d_qp
