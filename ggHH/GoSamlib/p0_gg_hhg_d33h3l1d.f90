module     p0_gg_hhg_d33h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d33h3l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond, d => metric_tensor
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
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd33h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd33
      complex(ki) :: brack
      acd33(1)=dotproduct(k2,qshift)
      acd33(2)=dotproduct(k5,qshift)
      acd33(3)=abb33(18)
      acd33(4)=dotproduct(qshift,spvak2k1)
      acd33(5)=abb33(19)
      acd33(6)=dotproduct(qshift,spvak5k1)
      acd33(7)=abb33(15)
      acd33(8)=abb33(17)
      acd33(9)=abb33(9)
      acd33(10)=dotproduct(qshift,spvak2k5)
      acd33(11)=abb33(11)
      acd33(12)=abb33(12)
      acd33(13)=dotproduct(qshift,qshift)
      acd33(14)=abb33(14)
      acd33(15)=abb33(6)
      acd33(16)=dotproduct(qshift,spvak5k2)
      acd33(17)=abb33(8)
      acd33(18)=abb33(7)
      acd33(19)=abb33(16)
      acd33(20)=abb33(20)
      acd33(21)=abb33(10)
      acd33(22)=abb33(13)
      acd33(23)=-acd33(13)*acd33(14)
      acd33(24)=acd33(6)*acd33(15)
      acd33(25)=acd33(2)*acd33(9)
      acd33(26)=acd33(1)*acd33(5)
      acd33(27)=-acd33(10)*acd33(16)*acd33(17)
      acd33(23)=acd33(27)+acd33(26)+acd33(25)+acd33(24)-acd33(18)+acd33(23)
      acd33(23)=acd33(4)*acd33(23)
      acd33(24)=acd33(6)*acd33(7)
      acd33(25)=acd33(2)*acd33(3)
      acd33(24)=acd33(25)-acd33(8)+acd33(24)
      acd33(24)=acd33(1)*acd33(24)
      acd33(25)=acd33(2)-acd33(13)
      acd33(25)=acd33(11)*acd33(25)
      acd33(26)=acd33(6)*acd33(19)
      acd33(25)=acd33(26)-acd33(21)+acd33(25)
      acd33(25)=acd33(10)*acd33(25)
      acd33(26)=-acd33(6)*acd33(20)
      acd33(27)=-acd33(2)*acd33(12)
      brack=acd33(22)+acd33(23)+acd33(24)+acd33(25)+acd33(26)+acd33(27)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd33h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd33
      complex(ki) :: brack
      acd33(1)=k2(iv1)
      acd33(2)=dotproduct(k5,qshift)
      acd33(3)=abb33(18)
      acd33(4)=dotproduct(qshift,spvak2k1)
      acd33(5)=abb33(19)
      acd33(6)=dotproduct(qshift,spvak5k1)
      acd33(7)=abb33(15)
      acd33(8)=abb33(17)
      acd33(9)=k5(iv1)
      acd33(10)=dotproduct(k2,qshift)
      acd33(11)=abb33(9)
      acd33(12)=dotproduct(qshift,spvak2k5)
      acd33(13)=abb33(11)
      acd33(14)=abb33(12)
      acd33(15)=qshift(iv1)
      acd33(16)=abb33(14)
      acd33(17)=spvak2k1(iv1)
      acd33(18)=dotproduct(qshift,qshift)
      acd33(19)=abb33(6)
      acd33(20)=dotproduct(qshift,spvak5k2)
      acd33(21)=abb33(8)
      acd33(22)=abb33(7)
      acd33(23)=spvak5k1(iv1)
      acd33(24)=abb33(16)
      acd33(25)=abb33(20)
      acd33(26)=spvak2k5(iv1)
      acd33(27)=abb33(10)
      acd33(28)=spvak5k2(iv1)
      acd33(29)=2.0_ki*acd33(15)
      acd33(30)=-acd33(16)*acd33(29)
      acd33(31)=acd33(23)*acd33(19)
      acd33(32)=acd33(9)*acd33(11)
      acd33(33)=acd33(1)*acd33(5)
      acd33(34)=-acd33(26)*acd33(21)*acd33(20)
      acd33(35)=acd33(12)*acd33(21)
      acd33(36)=-acd33(28)*acd33(35)
      acd33(30)=acd33(36)+acd33(34)+acd33(33)+acd33(32)+acd33(30)+acd33(31)
      acd33(30)=acd33(4)*acd33(30)
      acd33(31)=-acd33(16)*acd33(18)
      acd33(32)=acd33(10)*acd33(5)
      acd33(33)=acd33(6)*acd33(19)
      acd33(34)=acd33(2)*acd33(11)
      acd33(35)=-acd33(20)*acd33(35)
      acd33(31)=acd33(35)+acd33(34)+acd33(33)+acd33(32)-acd33(22)+acd33(31)
      acd33(31)=acd33(17)*acd33(31)
      acd33(32)=acd33(6)*acd33(7)
      acd33(33)=acd33(2)*acd33(3)
      acd33(32)=acd33(33)-acd33(8)+acd33(32)
      acd33(32)=acd33(1)*acd33(32)
      acd33(33)=acd33(6)*acd33(24)
      acd33(34)=-acd33(18)+acd33(2)
      acd33(34)=acd33(13)*acd33(34)
      acd33(33)=acd33(34)-acd33(27)+acd33(33)
      acd33(33)=acd33(26)*acd33(33)
      acd33(29)=acd33(9)-acd33(29)
      acd33(29)=acd33(13)*acd33(29)
      acd33(34)=acd33(23)*acd33(24)
      acd33(29)=acd33(34)+acd33(29)
      acd33(29)=acd33(12)*acd33(29)
      acd33(34)=acd33(10)*acd33(7)
      acd33(34)=-acd33(25)+acd33(34)
      acd33(34)=acd33(23)*acd33(34)
      acd33(35)=acd33(10)*acd33(3)
      acd33(35)=-acd33(14)+acd33(35)
      acd33(35)=acd33(9)*acd33(35)
      brack=acd33(29)+acd33(30)+acd33(31)+acd33(32)+acd33(33)+acd33(34)+acd33(3&
      &5)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd33h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd33
      complex(ki) :: brack
      acd33(1)=d(iv1,iv2)
      acd33(2)=dotproduct(qshift,spvak2k1)
      acd33(3)=abb33(14)
      acd33(4)=dotproduct(qshift,spvak2k5)
      acd33(5)=abb33(11)
      acd33(6)=k2(iv1)
      acd33(7)=k5(iv2)
      acd33(8)=abb33(18)
      acd33(9)=spvak2k1(iv2)
      acd33(10)=abb33(19)
      acd33(11)=spvak5k1(iv2)
      acd33(12)=abb33(15)
      acd33(13)=k2(iv2)
      acd33(14)=k5(iv1)
      acd33(15)=spvak2k1(iv1)
      acd33(16)=spvak5k1(iv1)
      acd33(17)=abb33(9)
      acd33(18)=spvak2k5(iv2)
      acd33(19)=spvak2k5(iv1)
      acd33(20)=qshift(iv1)
      acd33(21)=qshift(iv2)
      acd33(22)=dotproduct(qshift,spvak5k2)
      acd33(23)=abb33(8)
      acd33(24)=abb33(6)
      acd33(25)=spvak5k2(iv2)
      acd33(26)=spvak5k2(iv1)
      acd33(27)=abb33(16)
      acd33(28)=-acd33(4)*acd33(25)
      acd33(29)=-acd33(18)*acd33(22)
      acd33(28)=acd33(28)+acd33(29)
      acd33(28)=acd33(23)*acd33(28)
      acd33(29)=acd33(13)*acd33(10)
      acd33(30)=acd33(11)*acd33(24)
      acd33(31)=acd33(7)*acd33(17)
      acd33(32)=2.0_ki*acd33(3)
      acd33(33)=-acd33(21)*acd33(32)
      acd33(28)=acd33(28)+acd33(33)+acd33(31)+acd33(29)+acd33(30)
      acd33(28)=acd33(15)*acd33(28)
      acd33(29)=-acd33(4)*acd33(26)
      acd33(30)=-acd33(19)*acd33(22)
      acd33(29)=acd33(29)+acd33(30)
      acd33(29)=acd33(23)*acd33(29)
      acd33(30)=acd33(16)*acd33(24)
      acd33(31)=acd33(14)*acd33(17)
      acd33(33)=acd33(6)*acd33(10)
      acd33(34)=-acd33(20)*acd33(32)
      acd33(29)=acd33(29)+acd33(34)+acd33(33)+acd33(30)+acd33(31)
      acd33(29)=acd33(9)*acd33(29)
      acd33(30)=2.0_ki*acd33(1)
      acd33(30)=-acd33(4)*acd33(30)
      acd33(31)=acd33(7)-2.0_ki*acd33(21)
      acd33(31)=acd33(19)*acd33(31)
      acd33(33)=acd33(14)-2.0_ki*acd33(20)
      acd33(33)=acd33(18)*acd33(33)
      acd33(30)=acd33(33)+acd33(30)+acd33(31)
      acd33(30)=acd33(5)*acd33(30)
      acd33(31)=-acd33(19)*acd33(25)
      acd33(33)=-acd33(18)*acd33(26)
      acd33(31)=acd33(31)+acd33(33)
      acd33(31)=acd33(23)*acd33(31)
      acd33(32)=-acd33(1)*acd33(32)
      acd33(31)=acd33(31)+acd33(32)
      acd33(31)=acd33(2)*acd33(31)
      acd33(32)=acd33(19)*acd33(11)
      acd33(33)=acd33(18)*acd33(16)
      acd33(32)=acd33(33)+acd33(32)
      acd33(32)=acd33(27)*acd33(32)
      acd33(33)=acd33(16)*acd33(12)
      acd33(34)=acd33(14)*acd33(8)
      acd33(33)=acd33(33)+acd33(34)
      acd33(33)=acd33(13)*acd33(33)
      acd33(34)=acd33(11)*acd33(12)
      acd33(35)=acd33(7)*acd33(8)
      acd33(34)=acd33(34)+acd33(35)
      acd33(34)=acd33(6)*acd33(34)
      brack=acd33(28)+acd33(29)+acd33(30)+acd33(31)+acd33(32)+acd33(33)+acd33(3&
      &4)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd33h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(20) :: acd33
      complex(ki) :: brack
      acd33(1)=d(iv1,iv2)
      acd33(2)=spvak2k1(iv3)
      acd33(3)=abb33(14)
      acd33(4)=spvak2k5(iv3)
      acd33(5)=abb33(11)
      acd33(6)=d(iv1,iv3)
      acd33(7)=spvak2k1(iv2)
      acd33(8)=spvak2k5(iv2)
      acd33(9)=d(iv2,iv3)
      acd33(10)=spvak2k1(iv1)
      acd33(11)=spvak2k5(iv1)
      acd33(12)=spvak5k2(iv3)
      acd33(13)=abb33(8)
      acd33(14)=spvak5k2(iv2)
      acd33(15)=spvak5k2(iv1)
      acd33(16)=-acd33(11)*acd33(9)
      acd33(17)=-acd33(8)*acd33(6)
      acd33(18)=-acd33(4)*acd33(1)
      acd33(16)=acd33(18)+acd33(16)+acd33(17)
      acd33(16)=acd33(5)*acd33(16)
      acd33(17)=-acd33(10)*acd33(9)
      acd33(18)=-acd33(7)*acd33(6)
      acd33(19)=-acd33(2)*acd33(1)
      acd33(17)=acd33(19)+acd33(17)+acd33(18)
      acd33(17)=acd33(3)*acd33(17)
      acd33(16)=acd33(17)+acd33(16)
      acd33(17)=-acd33(8)*acd33(10)
      acd33(18)=-acd33(7)*acd33(11)
      acd33(17)=acd33(17)+acd33(18)
      acd33(17)=acd33(12)*acd33(17)
      acd33(18)=-acd33(10)*acd33(14)
      acd33(19)=-acd33(7)*acd33(15)
      acd33(18)=acd33(18)+acd33(19)
      acd33(18)=acd33(4)*acd33(18)
      acd33(19)=-acd33(11)*acd33(14)
      acd33(20)=-acd33(8)*acd33(15)
      acd33(19)=acd33(19)+acd33(20)
      acd33(19)=acd33(2)*acd33(19)
      acd33(17)=acd33(19)+acd33(18)+acd33(17)
      acd33(17)=acd33(13)*acd33(17)
      brack=2.0_ki*acd33(16)+acd33(17)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd33h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd33
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd33h3
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
end module     p0_gg_hhg_d33h3l1d
