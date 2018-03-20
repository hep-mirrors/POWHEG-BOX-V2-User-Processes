module     p0_gg_hhg_d31h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d31h4l1d.f90
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
      use p0_gg_hhg_abbrevd31h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd31
      complex(ki) :: brack
      acd31(1)=dotproduct(k2,qshift)
      acd31(2)=abb31(19)
      acd31(3)=dotproduct(k5,qshift)
      acd31(4)=dotproduct(qshift,spvak1k2)
      acd31(5)=abb31(16)
      acd31(6)=dotproduct(qshift,spvak1k5)
      acd31(7)=abb31(6)
      acd31(8)=dotproduct(qshift,spvak5k2)
      acd31(9)=abb31(8)
      acd31(10)=abb31(18)
      acd31(11)=abb31(14)
      acd31(12)=dotproduct(qshift,qshift)
      acd31(13)=abb31(13)
      acd31(14)=dotproduct(qshift,spvak2k5)
      acd31(15)=abb31(9)
      acd31(16)=dotproduct(qshift,spvak2k1)
      acd31(17)=abb31(12)
      acd31(18)=abb31(15)
      acd31(19)=abb31(7)
      acd31(20)=abb31(10)
      acd31(21)=abb31(11)
      acd31(22)=-acd31(1)-acd31(3)
      acd31(22)=acd31(2)*acd31(22)
      acd31(23)=acd31(6)*acd31(7)
      acd31(24)=acd31(4)*acd31(5)
      acd31(25)=-acd31(8)*acd31(9)
      acd31(22)=acd31(25)+acd31(24)-acd31(10)+acd31(23)+acd31(22)
      acd31(22)=acd31(1)*acd31(22)
      acd31(23)=-acd31(3)-acd31(12)
      acd31(23)=acd31(9)*acd31(23)
      acd31(24)=acd31(6)*acd31(18)
      acd31(25)=-acd31(4)*acd31(14)*acd31(15)
      acd31(23)=acd31(25)+acd31(24)-acd31(20)+acd31(23)
      acd31(23)=acd31(8)*acd31(23)
      acd31(24)=acd31(12)*acd31(13)
      acd31(25)=-acd31(6)*acd31(19)
      acd31(26)=acd31(4)*acd31(16)*acd31(17)
      acd31(27)=-acd31(3)*acd31(11)
      brack=acd31(21)+acd31(22)+acd31(23)+acd31(24)+acd31(25)+acd31(26)+acd31(2&
      &7)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd31h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd31
      complex(ki) :: brack
      acd31(1)=k2(iv1)
      acd31(2)=dotproduct(k2,qshift)
      acd31(3)=abb31(19)
      acd31(4)=dotproduct(k5,qshift)
      acd31(5)=dotproduct(qshift,spvak1k2)
      acd31(6)=abb31(16)
      acd31(7)=dotproduct(qshift,spvak1k5)
      acd31(8)=abb31(6)
      acd31(9)=dotproduct(qshift,spvak5k2)
      acd31(10)=abb31(8)
      acd31(11)=abb31(18)
      acd31(12)=k5(iv1)
      acd31(13)=abb31(14)
      acd31(14)=qshift(iv1)
      acd31(15)=abb31(13)
      acd31(16)=spvak1k2(iv1)
      acd31(17)=dotproduct(qshift,spvak2k5)
      acd31(18)=abb31(9)
      acd31(19)=dotproduct(qshift,spvak2k1)
      acd31(20)=abb31(12)
      acd31(21)=spvak1k5(iv1)
      acd31(22)=abb31(15)
      acd31(23)=abb31(7)
      acd31(24)=spvak5k2(iv1)
      acd31(25)=dotproduct(qshift,qshift)
      acd31(26)=abb31(10)
      acd31(27)=spvak2k1(iv1)
      acd31(28)=spvak2k5(iv1)
      acd31(29)=-acd31(21)*acd31(22)
      acd31(30)=acd31(16)*acd31(18)*acd31(17)
      acd31(31)=acd31(5)*acd31(18)
      acd31(32)=acd31(28)*acd31(31)
      acd31(33)=2.0_ki*acd31(14)
      acd31(34)=acd31(33)+acd31(12)
      acd31(34)=acd31(10)*acd31(34)
      acd31(29)=acd31(34)+acd31(32)+acd31(29)+acd31(30)
      acd31(29)=acd31(9)*acd31(29)
      acd31(30)=2.0_ki*acd31(2)+acd31(4)
      acd31(30)=acd31(3)*acd31(30)
      acd31(32)=-acd31(7)*acd31(8)
      acd31(34)=-acd31(5)*acd31(6)
      acd31(35)=acd31(9)*acd31(10)
      acd31(30)=acd31(35)+acd31(34)+acd31(11)+acd31(32)+acd31(30)
      acd31(30)=acd31(1)*acd31(30)
      acd31(32)=-acd31(7)*acd31(22)
      acd31(31)=acd31(17)*acd31(31)
      acd31(34)=acd31(2)+acd31(25)+acd31(4)
      acd31(34)=acd31(10)*acd31(34)
      acd31(31)=acd31(34)+acd31(31)+acd31(26)+acd31(32)
      acd31(31)=acd31(24)*acd31(31)
      acd31(32)=-acd31(21)*acd31(8)
      acd31(34)=-acd31(16)*acd31(6)
      acd31(35)=acd31(3)*acd31(12)
      acd31(32)=acd31(35)+acd31(32)+acd31(34)
      acd31(32)=acd31(2)*acd31(32)
      acd31(34)=-acd31(16)*acd31(19)
      acd31(35)=-acd31(5)*acd31(27)
      acd31(34)=acd31(35)+acd31(34)
      acd31(34)=acd31(20)*acd31(34)
      acd31(33)=-acd31(15)*acd31(33)
      acd31(35)=acd31(21)*acd31(23)
      acd31(36)=acd31(12)*acd31(13)
      brack=acd31(29)+acd31(30)+acd31(31)+acd31(32)+acd31(33)+acd31(34)+acd31(3&
      &5)+acd31(36)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd31h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd31
      complex(ki) :: brack
      acd31(1)=d(iv1,iv2)
      acd31(2)=dotproduct(qshift,spvak5k2)
      acd31(3)=abb31(8)
      acd31(4)=abb31(13)
      acd31(5)=k2(iv1)
      acd31(6)=k2(iv2)
      acd31(7)=abb31(19)
      acd31(8)=k5(iv2)
      acd31(9)=spvak5k2(iv2)
      acd31(10)=spvak1k2(iv2)
      acd31(11)=abb31(16)
      acd31(12)=spvak1k5(iv2)
      acd31(13)=abb31(6)
      acd31(14)=k5(iv1)
      acd31(15)=spvak5k2(iv1)
      acd31(16)=spvak1k2(iv1)
      acd31(17)=spvak1k5(iv1)
      acd31(18)=qshift(iv1)
      acd31(19)=qshift(iv2)
      acd31(20)=dotproduct(qshift,spvak2k5)
      acd31(21)=abb31(9)
      acd31(22)=abb31(15)
      acd31(23)=spvak2k5(iv2)
      acd31(24)=dotproduct(qshift,spvak1k2)
      acd31(25)=spvak2k5(iv1)
      acd31(26)=spvak2k1(iv2)
      acd31(27)=abb31(12)
      acd31(28)=spvak2k1(iv1)
      acd31(29)=acd31(13)*acd31(17)
      acd31(30)=-acd31(7)*acd31(14)
      acd31(31)=acd31(16)*acd31(11)
      acd31(29)=acd31(31)+acd31(29)+acd31(30)
      acd31(29)=acd31(6)*acd31(29)
      acd31(30)=-2.0_ki*acd31(6)-acd31(8)
      acd31(30)=acd31(7)*acd31(30)
      acd31(31)=acd31(12)*acd31(13)
      acd31(32)=acd31(10)*acd31(11)
      acd31(30)=acd31(32)+acd31(31)+acd31(30)
      acd31(30)=acd31(5)*acd31(30)
      acd31(31)=2.0_ki*acd31(1)
      acd31(32)=-acd31(2)*acd31(31)
      acd31(33)=-acd31(6)-2.0_ki*acd31(19)-acd31(8)
      acd31(33)=acd31(15)*acd31(33)
      acd31(34)=-acd31(5)-2.0_ki*acd31(18)-acd31(14)
      acd31(34)=acd31(9)*acd31(34)
      acd31(32)=acd31(34)+acd31(32)+acd31(33)
      acd31(32)=acd31(3)*acd31(32)
      acd31(33)=acd31(16)*acd31(26)
      acd31(34)=acd31(10)*acd31(28)
      acd31(33)=acd31(34)+acd31(33)
      acd31(33)=acd31(27)*acd31(33)
      acd31(34)=-acd31(16)*acd31(23)
      acd31(35)=-acd31(10)*acd31(25)
      acd31(34)=acd31(34)+acd31(35)
      acd31(34)=acd31(21)*acd31(2)*acd31(34)
      acd31(35)=-acd31(23)*acd31(24)
      acd31(36)=-acd31(10)*acd31(20)
      acd31(35)=acd31(35)+acd31(36)
      acd31(35)=acd31(21)*acd31(35)
      acd31(36)=acd31(12)*acd31(22)
      acd31(35)=acd31(36)+acd31(35)
      acd31(35)=acd31(15)*acd31(35)
      acd31(36)=-acd31(24)*acd31(25)
      acd31(37)=-acd31(16)*acd31(20)
      acd31(36)=acd31(36)+acd31(37)
      acd31(36)=acd31(21)*acd31(36)
      acd31(37)=acd31(17)*acd31(22)
      acd31(36)=acd31(37)+acd31(36)
      acd31(36)=acd31(9)*acd31(36)
      acd31(31)=acd31(4)*acd31(31)
      brack=acd31(29)+acd31(30)+acd31(31)+acd31(32)+acd31(33)+acd31(34)+acd31(3&
      &5)+acd31(36)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd31h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd31
      complex(ki) :: brack
      acd31(1)=d(iv1,iv2)
      acd31(2)=spvak5k2(iv3)
      acd31(3)=abb31(8)
      acd31(4)=d(iv1,iv3)
      acd31(5)=spvak5k2(iv2)
      acd31(6)=d(iv2,iv3)
      acd31(7)=spvak5k2(iv1)
      acd31(8)=spvak1k2(iv2)
      acd31(9)=spvak2k5(iv3)
      acd31(10)=abb31(9)
      acd31(11)=spvak1k2(iv3)
      acd31(12)=spvak2k5(iv2)
      acd31(13)=spvak1k2(iv1)
      acd31(14)=spvak2k5(iv1)
      acd31(15)=acd31(11)*acd31(12)
      acd31(16)=acd31(8)*acd31(9)
      acd31(15)=acd31(15)+acd31(16)
      acd31(15)=acd31(7)*acd31(15)
      acd31(16)=acd31(11)*acd31(14)
      acd31(17)=acd31(9)*acd31(13)
      acd31(16)=acd31(16)+acd31(17)
      acd31(16)=acd31(5)*acd31(16)
      acd31(17)=acd31(12)*acd31(13)
      acd31(18)=acd31(8)*acd31(14)
      acd31(17)=acd31(17)+acd31(18)
      acd31(17)=acd31(2)*acd31(17)
      acd31(15)=acd31(17)+acd31(15)+acd31(16)
      acd31(15)=acd31(10)*acd31(15)
      acd31(16)=acd31(7)*acd31(6)
      acd31(17)=acd31(5)*acd31(4)
      acd31(18)=acd31(2)*acd31(1)
      acd31(16)=acd31(18)+acd31(16)+acd31(17)
      acd31(16)=acd31(3)*acd31(16)
      brack=acd31(15)+2.0_ki*acd31(16)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd31h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd31
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd31h4
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
      qshift = k2
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
end module     p0_gg_hhg_d31h4l1d
