module     p0_gg_hhg_d35h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d35h4l1d.f90
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
      use p0_gg_hhg_abbrevd35h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd35
      complex(ki) :: brack
      acd35(1)=dotproduct(k2,qshift)
      acd35(2)=abb35(16)
      acd35(3)=dotproduct(qshift,spvak1k2)
      acd35(4)=abb35(9)
      acd35(5)=dotproduct(qshift,spvak1k5)
      acd35(6)=abb35(21)
      acd35(7)=dotproduct(qshift,spvak5k2)
      acd35(8)=abb35(10)
      acd35(9)=abb35(15)
      acd35(10)=dotproduct(k5,qshift)
      acd35(11)=abb35(11)
      acd35(12)=dotproduct(qshift,qshift)
      acd35(13)=abb35(17)
      acd35(14)=abb35(6)
      acd35(15)=dotproduct(qshift,spvak2k5)
      acd35(16)=abb35(7)
      acd35(17)=abb35(8)
      acd35(18)=abb35(12)
      acd35(19)=abb35(14)
      acd35(20)=abb35(19)
      acd35(21)=abb35(13)
      acd35(22)=-acd35(1)+acd35(12)
      acd35(22)=acd35(4)*acd35(22)
      acd35(23)=acd35(10)*acd35(11)
      acd35(24)=-acd35(7)*acd35(15)*acd35(16)
      acd35(25)=acd35(5)*acd35(14)
      acd35(22)=acd35(25)+acd35(24)-acd35(17)+acd35(23)+acd35(22)
      acd35(22)=acd35(3)*acd35(22)
      acd35(23)=acd35(7)*acd35(8)
      acd35(24)=acd35(5)*acd35(6)
      acd35(25)=acd35(1)*acd35(2)
      acd35(23)=acd35(25)+acd35(24)-acd35(9)+acd35(23)
      acd35(23)=acd35(1)*acd35(23)
      acd35(24)=acd35(12)*acd35(13)
      acd35(25)=-acd35(7)*acd35(20)
      acd35(26)=acd35(7)*acd35(18)
      acd35(26)=-acd35(19)+acd35(26)
      acd35(26)=acd35(5)*acd35(26)
      brack=acd35(21)+acd35(22)+acd35(23)+acd35(24)+acd35(25)+acd35(26)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd35h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd35
      complex(ki) :: brack
      acd35(1)=k2(iv1)
      acd35(2)=dotproduct(k2,qshift)
      acd35(3)=abb35(16)
      acd35(4)=dotproduct(qshift,spvak1k2)
      acd35(5)=abb35(9)
      acd35(6)=dotproduct(qshift,spvak1k5)
      acd35(7)=abb35(21)
      acd35(8)=dotproduct(qshift,spvak5k2)
      acd35(9)=abb35(10)
      acd35(10)=abb35(15)
      acd35(11)=k5(iv1)
      acd35(12)=abb35(11)
      acd35(13)=qshift(iv1)
      acd35(14)=abb35(17)
      acd35(15)=spvak1k2(iv1)
      acd35(16)=dotproduct(k5,qshift)
      acd35(17)=dotproduct(qshift,qshift)
      acd35(18)=abb35(6)
      acd35(19)=dotproduct(qshift,spvak2k5)
      acd35(20)=abb35(7)
      acd35(21)=abb35(8)
      acd35(22)=spvak1k5(iv1)
      acd35(23)=abb35(12)
      acd35(24)=abb35(14)
      acd35(25)=spvak5k2(iv1)
      acd35(26)=abb35(19)
      acd35(27)=spvak2k5(iv1)
      acd35(28)=2.0_ki*acd35(13)
      acd35(29)=-acd35(1)+acd35(28)
      acd35(29)=acd35(5)*acd35(29)
      acd35(30)=acd35(12)*acd35(11)
      acd35(31)=-acd35(25)*acd35(20)*acd35(19)
      acd35(32)=acd35(22)*acd35(18)
      acd35(33)=acd35(8)*acd35(20)
      acd35(34)=-acd35(27)*acd35(33)
      acd35(29)=acd35(34)+acd35(32)+acd35(30)+acd35(31)+acd35(29)
      acd35(29)=acd35(4)*acd35(29)
      acd35(30)=-acd35(2)+acd35(17)
      acd35(30)=acd35(5)*acd35(30)
      acd35(31)=acd35(12)*acd35(16)
      acd35(32)=acd35(6)*acd35(18)
      acd35(33)=-acd35(19)*acd35(33)
      acd35(30)=acd35(33)+acd35(32)-acd35(21)+acd35(31)+acd35(30)
      acd35(30)=acd35(15)*acd35(30)
      acd35(31)=acd35(6)*acd35(7)
      acd35(32)=acd35(8)*acd35(9)
      acd35(33)=acd35(2)*acd35(3)
      acd35(31)=2.0_ki*acd35(33)+acd35(32)-acd35(10)+acd35(31)
      acd35(31)=acd35(1)*acd35(31)
      acd35(32)=acd35(25)*acd35(9)
      acd35(33)=acd35(22)*acd35(7)
      acd35(32)=acd35(32)+acd35(33)
      acd35(32)=acd35(2)*acd35(32)
      acd35(33)=acd35(8)*acd35(23)
      acd35(33)=acd35(33)-acd35(24)
      acd35(33)=acd35(22)*acd35(33)
      acd35(28)=acd35(14)*acd35(28)
      acd35(34)=acd35(6)*acd35(23)
      acd35(34)=-acd35(26)+acd35(34)
      acd35(34)=acd35(25)*acd35(34)
      brack=acd35(28)+acd35(29)+acd35(30)+acd35(31)+acd35(32)+acd35(33)+acd35(3&
      &4)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd35h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd35
      complex(ki) :: brack
      acd35(1)=d(iv1,iv2)
      acd35(2)=dotproduct(qshift,spvak1k2)
      acd35(3)=abb35(9)
      acd35(4)=abb35(17)
      acd35(5)=k2(iv1)
      acd35(6)=k2(iv2)
      acd35(7)=abb35(16)
      acd35(8)=spvak1k2(iv2)
      acd35(9)=spvak1k5(iv2)
      acd35(10)=abb35(21)
      acd35(11)=spvak5k2(iv2)
      acd35(12)=abb35(10)
      acd35(13)=spvak1k2(iv1)
      acd35(14)=spvak1k5(iv1)
      acd35(15)=spvak5k2(iv1)
      acd35(16)=k5(iv1)
      acd35(17)=abb35(11)
      acd35(18)=k5(iv2)
      acd35(19)=qshift(iv1)
      acd35(20)=qshift(iv2)
      acd35(21)=abb35(6)
      acd35(22)=dotproduct(qshift,spvak2k5)
      acd35(23)=abb35(7)
      acd35(24)=spvak2k5(iv2)
      acd35(25)=dotproduct(qshift,spvak5k2)
      acd35(26)=spvak2k5(iv1)
      acd35(27)=abb35(12)
      acd35(28)=-acd35(24)*acd35(25)
      acd35(29)=-acd35(11)*acd35(22)
      acd35(28)=acd35(28)+acd35(29)
      acd35(28)=acd35(23)*acd35(28)
      acd35(29)=acd35(17)*acd35(18)
      acd35(30)=acd35(9)*acd35(21)
      acd35(31)=2.0_ki*acd35(20)-acd35(6)
      acd35(31)=acd35(3)*acd35(31)
      acd35(28)=acd35(28)+acd35(31)+acd35(29)+acd35(30)
      acd35(28)=acd35(13)*acd35(28)
      acd35(29)=-acd35(25)*acd35(26)
      acd35(30)=-acd35(15)*acd35(22)
      acd35(29)=acd35(29)+acd35(30)
      acd35(29)=acd35(23)*acd35(29)
      acd35(30)=acd35(17)*acd35(16)
      acd35(31)=acd35(14)*acd35(21)
      acd35(32)=2.0_ki*acd35(19)-acd35(5)
      acd35(32)=acd35(3)*acd35(32)
      acd35(29)=acd35(29)+acd35(32)+acd35(30)+acd35(31)
      acd35(29)=acd35(8)*acd35(29)
      acd35(30)=acd35(9)*acd35(10)
      acd35(31)=acd35(11)*acd35(12)
      acd35(32)=acd35(6)*acd35(7)
      acd35(30)=2.0_ki*acd35(32)+acd35(30)+acd35(31)
      acd35(30)=acd35(5)*acd35(30)
      acd35(31)=acd35(15)*acd35(9)
      acd35(32)=acd35(11)*acd35(14)
      acd35(31)=acd35(32)+acd35(31)
      acd35(31)=acd35(27)*acd35(31)
      acd35(32)=acd35(3)*acd35(2)
      acd35(32)=acd35(32)+acd35(4)
      acd35(33)=2.0_ki*acd35(1)
      acd35(32)=acd35(33)*acd35(32)
      acd35(33)=acd35(14)*acd35(10)
      acd35(34)=acd35(15)*acd35(12)
      acd35(33)=acd35(33)+acd35(34)
      acd35(33)=acd35(6)*acd35(33)
      acd35(34)=-acd35(15)*acd35(24)
      acd35(35)=-acd35(11)*acd35(26)
      acd35(34)=acd35(34)+acd35(35)
      acd35(34)=acd35(23)*acd35(2)*acd35(34)
      brack=acd35(28)+acd35(29)+acd35(30)+acd35(31)+acd35(32)+acd35(33)+acd35(3&
      &4)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd35h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd35
      complex(ki) :: brack
      acd35(1)=d(iv1,iv2)
      acd35(2)=spvak1k2(iv3)
      acd35(3)=abb35(9)
      acd35(4)=d(iv1,iv3)
      acd35(5)=spvak1k2(iv2)
      acd35(6)=d(iv2,iv3)
      acd35(7)=spvak1k2(iv1)
      acd35(8)=spvak2k5(iv2)
      acd35(9)=spvak5k2(iv3)
      acd35(10)=abb35(7)
      acd35(11)=spvak2k5(iv3)
      acd35(12)=spvak5k2(iv2)
      acd35(13)=spvak2k5(iv1)
      acd35(14)=spvak5k2(iv1)
      acd35(15)=-acd35(11)*acd35(12)
      acd35(16)=-acd35(8)*acd35(9)
      acd35(15)=acd35(15)+acd35(16)
      acd35(15)=acd35(7)*acd35(15)
      acd35(16)=-acd35(11)*acd35(14)
      acd35(17)=-acd35(9)*acd35(13)
      acd35(16)=acd35(16)+acd35(17)
      acd35(16)=acd35(5)*acd35(16)
      acd35(17)=-acd35(12)*acd35(13)
      acd35(18)=-acd35(8)*acd35(14)
      acd35(17)=acd35(17)+acd35(18)
      acd35(17)=acd35(2)*acd35(17)
      acd35(15)=acd35(17)+acd35(15)+acd35(16)
      acd35(15)=acd35(10)*acd35(15)
      acd35(16)=acd35(7)*acd35(6)
      acd35(17)=acd35(5)*acd35(4)
      acd35(18)=acd35(2)*acd35(1)
      acd35(16)=acd35(18)+acd35(16)+acd35(17)
      acd35(16)=acd35(3)*acd35(16)
      brack=acd35(15)+2.0_ki*acd35(16)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd35h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd35
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd35h4
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
      qshift = -k2+k5
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
end module     p0_gg_hhg_d35h4l1d
