module     p1_dg_hhd_d6h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity3d6h3l1d.f90
   ! generator: buildfortran_d.py
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_util, only: cond, d => metric_tensor
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
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd6
      complex(ki) :: brack
      acd6(1)=abb6(11)
      brack=acd6(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd6
      complex(ki) :: brack
      acd6(1)=k2(iv1)
      acd6(2)=abb6(24)
      acd6(3)=spvak1k2(iv1)
      acd6(4)=abb6(18)
      acd6(5)=spvak1l3(iv1)
      acd6(6)=abb6(29)
      acd6(7)=spvak1l4(iv1)
      acd6(8)=abb6(30)
      acd6(9)=spvak1k5(iv1)
      acd6(10)=abb6(15)
      acd6(11)=spval3k2(iv1)
      acd6(12)=abb6(26)
      acd6(13)=-acd6(2)*acd6(1)
      acd6(14)=-acd6(4)*acd6(3)
      acd6(15)=-acd6(6)*acd6(5)
      acd6(16)=-acd6(8)*acd6(7)
      acd6(17)=-acd6(10)*acd6(9)
      acd6(18)=-acd6(12)*acd6(11)
      brack=acd6(13)+acd6(14)+acd6(15)+acd6(16)+acd6(17)+acd6(18)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=abb6(12)
      acd6(3)=k2(iv1)
      acd6(4)=spvak1k2(iv2)
      acd6(5)=abb6(22)
      acd6(6)=spvak1k5(iv2)
      acd6(7)=abb6(23)
      acd6(8)=k2(iv2)
      acd6(9)=spvak1k2(iv1)
      acd6(10)=spvak1k5(iv1)
      acd6(11)=abb6(13)
      acd6(12)=abb6(16)
      acd6(13)=spvak1l3(iv2)
      acd6(14)=abb6(10)
      acd6(15)=spvak1l3(iv1)
      acd6(16)=spval3k2(iv2)
      acd6(17)=abb6(17)
      acd6(18)=spval3k2(iv1)
      acd6(19)=abb6(21)
      acd6(20)=acd6(14)*acd6(15)
      acd6(21)=acd6(3)*acd6(5)
      acd6(22)=acd6(10)*acd6(12)
      acd6(23)=acd6(9)*acd6(11)
      acd6(20)=2.0_ki*acd6(23)+acd6(22)+acd6(20)+acd6(21)
      acd6(20)=acd6(4)*acd6(20)
      acd6(21)=acd6(13)*acd6(14)
      acd6(22)=acd6(5)*acd6(8)
      acd6(23)=acd6(6)*acd6(12)
      acd6(21)=acd6(23)+acd6(21)+acd6(22)
      acd6(21)=acd6(9)*acd6(21)
      acd6(22)=-acd6(15)*acd6(16)
      acd6(23)=-acd6(13)*acd6(18)
      acd6(22)=acd6(23)+acd6(22)
      acd6(22)=acd6(19)*acd6(22)
      acd6(23)=acd6(16)*acd6(17)
      acd6(24)=acd6(7)*acd6(8)
      acd6(23)=acd6(23)+acd6(24)
      acd6(23)=acd6(10)*acd6(23)
      acd6(24)=acd6(17)*acd6(18)
      acd6(25)=acd6(3)*acd6(7)
      acd6(24)=acd6(24)+acd6(25)
      acd6(24)=acd6(6)*acd6(24)
      acd6(25)=acd6(1)*acd6(2)
      brack=acd6(20)+acd6(21)+acd6(22)+acd6(23)+acd6(24)+2.0_ki*acd6(25)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=spvak1k2(iv3)
      acd6(3)=abb6(20)
      acd6(4)=spvak1k5(iv3)
      acd6(5)=abb6(9)
      acd6(6)=d(iv1,iv3)
      acd6(7)=spvak1k2(iv2)
      acd6(8)=spvak1k5(iv2)
      acd6(9)=d(iv2,iv3)
      acd6(10)=spvak1k2(iv1)
      acd6(11)=spvak1k5(iv1)
      acd6(12)=k2(iv1)
      acd6(13)=abb6(25)
      acd6(14)=k2(iv2)
      acd6(15)=k2(iv3)
      acd6(16)=spvak2k5(iv3)
      acd6(17)=abb6(14)
      acd6(18)=spvak2k5(iv2)
      acd6(19)=spvak1l3(iv2)
      acd6(20)=spval3k5(iv3)
      acd6(21)=abb6(28)
      acd6(22)=spvak1l3(iv3)
      acd6(23)=spval3k5(iv2)
      acd6(24)=spvak2k5(iv1)
      acd6(25)=spvak1l3(iv1)
      acd6(26)=spval3k5(iv1)
      acd6(27)=spval3k2(iv3)
      acd6(28)=spval3k2(iv2)
      acd6(29)=spval3k2(iv1)
      acd6(30)=-acd6(22)*acd6(28)
      acd6(31)=-acd6(19)*acd6(27)
      acd6(30)=acd6(30)+acd6(31)
      acd6(30)=acd6(11)*acd6(30)
      acd6(31)=-acd6(25)*acd6(27)
      acd6(32)=-acd6(22)*acd6(29)
      acd6(31)=acd6(31)+acd6(32)
      acd6(31)=acd6(8)*acd6(31)
      acd6(32)=-acd6(25)*acd6(28)
      acd6(33)=-acd6(19)*acd6(29)
      acd6(32)=acd6(32)+acd6(33)
      acd6(32)=acd6(4)*acd6(32)
      acd6(33)=-acd6(22)*acd6(23)
      acd6(34)=-acd6(19)*acd6(20)
      acd6(33)=acd6(33)+acd6(34)
      acd6(33)=acd6(10)*acd6(33)
      acd6(34)=-acd6(25)*acd6(20)
      acd6(35)=-acd6(22)*acd6(26)
      acd6(34)=acd6(34)+acd6(35)
      acd6(34)=acd6(7)*acd6(34)
      acd6(35)=-acd6(25)*acd6(23)
      acd6(36)=-acd6(19)*acd6(26)
      acd6(35)=acd6(35)+acd6(36)
      acd6(35)=acd6(2)*acd6(35)
      acd6(30)=acd6(35)+acd6(34)+acd6(33)+acd6(32)+acd6(30)+acd6(31)
      acd6(30)=acd6(21)*acd6(30)
      acd6(31)=-acd6(11)*acd6(9)
      acd6(32)=-acd6(8)*acd6(6)
      acd6(33)=-acd6(4)*acd6(1)
      acd6(31)=acd6(33)+acd6(31)+acd6(32)
      acd6(31)=acd6(5)*acd6(31)
      acd6(32)=-acd6(11)*acd6(15)
      acd6(33)=-acd6(4)*acd6(12)
      acd6(32)=acd6(32)+acd6(33)
      acd6(32)=acd6(13)*acd6(32)
      acd6(33)=2.0_ki*acd6(3)
      acd6(34)=-acd6(6)*acd6(33)
      acd6(35)=2.0_ki*acd6(17)
      acd6(36)=-acd6(10)*acd6(16)*acd6(35)
      acd6(32)=acd6(36)+acd6(34)+acd6(32)
      acd6(32)=acd6(7)*acd6(32)
      acd6(34)=-acd6(10)*acd6(18)
      acd6(36)=-acd6(7)*acd6(24)
      acd6(34)=acd6(36)+acd6(34)
      acd6(34)=acd6(35)*acd6(34)
      acd6(35)=-acd6(11)*acd6(14)
      acd6(36)=-acd6(8)*acd6(12)
      acd6(35)=acd6(35)+acd6(36)
      acd6(35)=acd6(13)*acd6(35)
      acd6(36)=-acd6(1)*acd6(33)
      acd6(34)=acd6(36)+acd6(35)+acd6(34)
      acd6(34)=acd6(2)*acd6(34)
      acd6(35)=-acd6(8)*acd6(15)
      acd6(36)=-acd6(4)*acd6(14)
      acd6(35)=acd6(35)+acd6(36)
      acd6(35)=acd6(13)*acd6(35)
      acd6(33)=-acd6(9)*acd6(33)
      acd6(33)=acd6(33)+acd6(35)
      acd6(33)=acd6(10)*acd6(33)
      brack=acd6(30)+2.0_ki*acd6(31)+acd6(32)+acd6(33)+acd6(34)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=spvak1k2(iv3)
      acd6(3)=spvak1k5(iv4)
      acd6(4)=abb6(27)
      acd6(5)=spvak1k2(iv4)
      acd6(6)=spvak1k5(iv3)
      acd6(7)=d(iv1,iv3)
      acd6(8)=spvak1k2(iv2)
      acd6(9)=spvak1k5(iv2)
      acd6(10)=d(iv1,iv4)
      acd6(11)=d(iv2,iv3)
      acd6(12)=spvak1k2(iv1)
      acd6(13)=spvak1k5(iv1)
      acd6(14)=d(iv2,iv4)
      acd6(15)=d(iv3,iv4)
      acd6(16)=acd6(13)*acd6(11)
      acd6(17)=acd6(9)*acd6(7)
      acd6(18)=acd6(6)*acd6(1)
      acd6(16)=acd6(18)+acd6(16)+acd6(17)
      acd6(16)=acd6(5)*acd6(16)
      acd6(17)=acd6(13)*acd6(14)
      acd6(18)=acd6(9)*acd6(10)
      acd6(19)=acd6(3)*acd6(1)
      acd6(17)=acd6(19)+acd6(17)+acd6(18)
      acd6(17)=acd6(2)*acd6(17)
      acd6(18)=acd6(9)*acd6(12)
      acd6(19)=acd6(8)*acd6(13)
      acd6(18)=acd6(18)+acd6(19)
      acd6(18)=acd6(15)*acd6(18)
      acd6(19)=acd6(12)*acd6(14)
      acd6(20)=acd6(8)*acd6(10)
      acd6(19)=acd6(19)+acd6(20)
      acd6(19)=acd6(6)*acd6(19)
      acd6(20)=acd6(12)*acd6(11)
      acd6(21)=acd6(8)*acd6(7)
      acd6(20)=acd6(20)+acd6(21)
      acd6(20)=acd6(3)*acd6(20)
      acd6(16)=acd6(17)+acd6(20)+acd6(16)+acd6(19)+acd6(18)
      brack=2.0_ki*acd6(16)*acd6(4)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p1_dg_hhd_globalsl1, only: epspow
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_abbrevd6h3
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
end module     p1_dg_hhd_d6h3l1d
