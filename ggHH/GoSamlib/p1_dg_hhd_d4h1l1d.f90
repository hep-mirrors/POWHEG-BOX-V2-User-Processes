module     p1_dg_hhd_d4h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity1d4h1l1d.f90
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
      use p1_dg_hhd_abbrevd4h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd4
      complex(ki) :: brack
      acd4(1)=abb4(14)
      brack=acd4(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd4h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd4
      complex(ki) :: brack
      acd4(1)=k1(iv1)
      acd4(2)=abb4(13)
      acd4(3)=k2(iv1)
      acd4(4)=abb4(29)
      acd4(5)=spvak1k2(iv1)
      acd4(6)=abb4(22)
      acd4(7)=spvak1l3(iv1)
      acd4(8)=abb4(39)
      acd4(9)=spvak1l4(iv1)
      acd4(10)=abb4(35)
      acd4(11)=spval3k2(iv1)
      acd4(12)=abb4(17)
      acd4(13)=spval4k2(iv1)
      acd4(14)=abb4(33)
      acd4(15)=spvak5k2(iv1)
      acd4(16)=abb4(19)
      acd4(17)=acd4(2)*acd4(1)
      acd4(18)=acd4(4)*acd4(3)
      acd4(19)=acd4(6)*acd4(5)
      acd4(20)=acd4(8)*acd4(7)
      acd4(21)=acd4(10)*acd4(9)
      acd4(22)=acd4(12)*acd4(11)
      acd4(23)=acd4(14)*acd4(13)
      acd4(24)=acd4(16)*acd4(15)
      brack=acd4(17)+acd4(18)+acd4(19)+acd4(20)+acd4(21)+acd4(22)+acd4(23)+acd4&
      &(24)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd4h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd4
      complex(ki) :: brack
      acd4(1)=d(iv1,iv2)
      acd4(2)=abb4(23)
      acd4(3)=k2(iv1)
      acd4(4)=spvak1k2(iv2)
      acd4(5)=abb4(11)
      acd4(6)=spvak1l3(iv2)
      acd4(7)=abb4(28)
      acd4(8)=spvak1l4(iv2)
      acd4(9)=abb4(36)
      acd4(10)=spvak5k2(iv2)
      acd4(11)=abb4(24)
      acd4(12)=k2(iv2)
      acd4(13)=spvak1k2(iv1)
      acd4(14)=spvak1l3(iv1)
      acd4(15)=spvak1l4(iv1)
      acd4(16)=spvak5k2(iv1)
      acd4(17)=spval3k2(iv2)
      acd4(18)=abb4(15)
      acd4(19)=spval4k2(iv2)
      acd4(20)=abb4(18)
      acd4(21)=spvak5k1(iv2)
      acd4(22)=abb4(10)
      acd4(23)=spval3k2(iv1)
      acd4(24)=spval4k2(iv1)
      acd4(25)=spvak5k1(iv1)
      acd4(26)=abb4(41)
      acd4(27)=abb4(38)
      acd4(28)=abb4(9)
      acd4(29)=acd4(11)*acd4(16)
      acd4(30)=acd4(9)*acd4(15)
      acd4(31)=acd4(7)*acd4(14)
      acd4(32)=acd4(13)*acd4(5)
      acd4(29)=acd4(32)+acd4(31)+acd4(29)+acd4(30)
      acd4(29)=acd4(12)*acd4(29)
      acd4(30)=acd4(10)*acd4(11)
      acd4(31)=acd4(8)*acd4(9)
      acd4(32)=acd4(6)*acd4(7)
      acd4(33)=acd4(4)*acd4(5)
      acd4(30)=acd4(33)+acd4(32)+acd4(30)+acd4(31)
      acd4(30)=acd4(3)*acd4(30)
      acd4(31)=acd4(22)*acd4(21)
      acd4(32)=acd4(19)*acd4(20)
      acd4(33)=acd4(17)*acd4(18)
      acd4(31)=acd4(33)+acd4(31)+acd4(32)
      acd4(31)=acd4(13)*acd4(31)
      acd4(32)=acd4(22)*acd4(25)
      acd4(33)=acd4(20)*acd4(24)
      acd4(34)=acd4(23)*acd4(18)
      acd4(32)=acd4(34)+acd4(32)+acd4(33)
      acd4(32)=acd4(4)*acd4(32)
      acd4(33)=acd4(14)*acd4(19)
      acd4(34)=acd4(6)*acd4(24)
      acd4(33)=acd4(34)+acd4(33)
      acd4(33)=acd4(26)*acd4(33)
      acd4(34)=-acd4(10)*acd4(28)
      acd4(35)=acd4(8)*acd4(27)
      acd4(34)=acd4(34)+acd4(35)
      acd4(34)=acd4(23)*acd4(34)
      acd4(35)=-acd4(16)*acd4(28)
      acd4(36)=acd4(15)*acd4(27)
      acd4(35)=acd4(35)+acd4(36)
      acd4(35)=acd4(17)*acd4(35)
      acd4(36)=acd4(1)*acd4(2)
      brack=acd4(29)+acd4(30)+acd4(31)+acd4(32)+acd4(33)+acd4(34)+acd4(35)+2.0_&
      &ki*acd4(36)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd4h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(40) :: acd4
      complex(ki) :: brack
      acd4(1)=d(iv1,iv2)
      acd4(2)=k2(iv3)
      acd4(3)=abb4(30)
      acd4(4)=spvak1k2(iv3)
      acd4(5)=abb4(16)
      acd4(6)=spvak1l3(iv3)
      acd4(7)=abb4(40)
      acd4(8)=spvak1l4(iv3)
      acd4(9)=abb4(37)
      acd4(10)=spval3k2(iv3)
      acd4(11)=abb4(34)
      acd4(12)=spval4k2(iv3)
      acd4(13)=abb4(31)
      acd4(14)=spvak5k2(iv3)
      acd4(15)=abb4(25)
      acd4(16)=d(iv1,iv3)
      acd4(17)=k2(iv2)
      acd4(18)=spvak1k2(iv2)
      acd4(19)=spvak1l3(iv2)
      acd4(20)=spvak1l4(iv2)
      acd4(21)=spval3k2(iv2)
      acd4(22)=spval4k2(iv2)
      acd4(23)=spvak5k2(iv2)
      acd4(24)=d(iv2,iv3)
      acd4(25)=k2(iv1)
      acd4(26)=spvak1k2(iv1)
      acd4(27)=spvak1l3(iv1)
      acd4(28)=spvak1l4(iv1)
      acd4(29)=spval3k2(iv1)
      acd4(30)=spval4k2(iv1)
      acd4(31)=spvak5k2(iv1)
      acd4(32)=acd4(2)*acd4(3)
      acd4(33)=acd4(4)*acd4(5)
      acd4(34)=acd4(6)*acd4(7)
      acd4(35)=acd4(8)*acd4(9)
      acd4(36)=acd4(10)*acd4(11)
      acd4(37)=-acd4(12)*acd4(13)
      acd4(38)=acd4(14)*acd4(15)
      acd4(32)=acd4(38)+acd4(37)+acd4(36)+acd4(35)+acd4(34)+acd4(32)+acd4(33)
      acd4(32)=acd4(1)*acd4(32)
      acd4(33)=acd4(17)*acd4(3)
      acd4(34)=acd4(18)*acd4(5)
      acd4(35)=acd4(19)*acd4(7)
      acd4(36)=acd4(20)*acd4(9)
      acd4(37)=acd4(21)*acd4(11)
      acd4(38)=-acd4(22)*acd4(13)
      acd4(39)=acd4(23)*acd4(15)
      acd4(33)=acd4(39)+acd4(38)+acd4(37)+acd4(36)+acd4(35)+acd4(34)+acd4(33)
      acd4(33)=acd4(16)*acd4(33)
      acd4(34)=acd4(25)*acd4(3)
      acd4(35)=acd4(26)*acd4(5)
      acd4(36)=acd4(27)*acd4(7)
      acd4(37)=acd4(28)*acd4(9)
      acd4(38)=acd4(29)*acd4(11)
      acd4(39)=-acd4(30)*acd4(13)
      acd4(40)=acd4(31)*acd4(15)
      acd4(34)=acd4(40)+acd4(39)+acd4(38)+acd4(37)+acd4(36)+acd4(35)+acd4(34)
      acd4(34)=acd4(24)*acd4(34)
      acd4(32)=acd4(34)+acd4(33)+acd4(32)
      brack=2.0_ki*acd4(32)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd4h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(10) :: acd4
      complex(ki) :: brack
      acd4(1)=d(iv1,iv2)
      acd4(2)=d(iv3,iv4)
      acd4(3)=abb4(32)
      acd4(4)=d(iv1,iv3)
      acd4(5)=d(iv2,iv4)
      acd4(6)=d(iv1,iv4)
      acd4(7)=d(iv2,iv3)
      acd4(8)=acd4(2)*acd4(1)
      acd4(9)=acd4(5)*acd4(4)
      acd4(10)=acd4(7)*acd4(6)
      acd4(8)=acd4(10)+acd4(8)+acd4(9)
      brack=8.0_ki*acd4(8)*acd4(3)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p1_dg_hhd_globalsl1, only: epspow
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_abbrevd4h1
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
end module     p1_dg_hhd_d4h1l1d
