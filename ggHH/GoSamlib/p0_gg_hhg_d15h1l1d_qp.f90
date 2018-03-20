module     p0_gg_hhg_d15h1l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d15h1l1d_qp.f90
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
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd15h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(30) :: acd15
      complex(ki) :: brack
      acd15(1)=dotproduct(qshift,qshift)
      acd15(2)=dotproduct(qshift,spvak2k1)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(19)
      acd15(5)=abb15(20)
      acd15(6)=abb15(16)
      acd15(7)=abb15(17)
      acd15(8)=abb15(22)
      acd15(9)=dotproduct(qshift,spvak2l3)
      acd15(10)=abb15(13)
      acd15(11)=dotproduct(qshift,spval4l3)
      acd15(12)=abb15(21)
      acd15(13)=abb15(12)
      acd15(14)=dotproduct(qshift,spvak2l4)
      acd15(15)=abb15(15)
      acd15(16)=dotproduct(qshift,spval3l4)
      acd15(17)=abb15(25)
      acd15(18)=abb15(33)
      acd15(19)=abb15(11)
      acd15(20)=abb15(14)
      acd15(21)=abb15(18)
      acd15(22)=abb15(24)
      acd15(23)=abb15(27)
      acd15(24)=acd15(11)*acd15(12)
      acd15(25)=acd15(9)*acd15(10)
      acd15(26)=-acd15(1)*acd15(5)
      acd15(27)=acd15(1)*acd15(4)
      acd15(27)=acd15(8)+acd15(27)
      acd15(27)=acd15(3)*acd15(27)
      acd15(24)=acd15(27)+acd15(26)+acd15(25)-acd15(13)+acd15(24)
      acd15(24)=acd15(2)*acd15(24)
      acd15(25)=acd15(16)*acd15(17)
      acd15(26)=acd15(14)*acd15(15)
      acd15(27)=-acd15(1)*acd15(6)
      acd15(25)=acd15(27)+acd15(26)-acd15(18)+acd15(25)
      acd15(25)=acd15(3)*acd15(25)
      acd15(26)=-acd15(16)*acd15(22)
      acd15(27)=-acd15(14)*acd15(21)
      acd15(28)=-acd15(11)*acd15(20)
      acd15(29)=-acd15(9)*acd15(19)
      acd15(30)=acd15(1)*acd15(7)
      brack=acd15(23)+acd15(24)+acd15(25)+acd15(26)+acd15(27)+acd15(28)+acd15(2&
      &9)+acd15(30)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd15h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd15
      complex(ki) :: brack
      acd15(1)=qshift(iv1)
      acd15(2)=dotproduct(qshift,spvak2k1)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(19)
      acd15(5)=abb15(20)
      acd15(6)=abb15(16)
      acd15(7)=abb15(17)
      acd15(8)=spvak2k1(iv1)
      acd15(9)=dotproduct(qshift,qshift)
      acd15(10)=abb15(22)
      acd15(11)=dotproduct(qshift,spvak2l3)
      acd15(12)=abb15(13)
      acd15(13)=dotproduct(qshift,spval4l3)
      acd15(14)=abb15(21)
      acd15(15)=abb15(12)
      acd15(16)=spvak2k5(iv1)
      acd15(17)=dotproduct(qshift,spvak2l4)
      acd15(18)=abb15(15)
      acd15(19)=dotproduct(qshift,spval3l4)
      acd15(20)=abb15(25)
      acd15(21)=abb15(33)
      acd15(22)=spvak2l3(iv1)
      acd15(23)=abb15(11)
      acd15(24)=spval4l3(iv1)
      acd15(25)=abb15(14)
      acd15(26)=spvak2l4(iv1)
      acd15(27)=abb15(18)
      acd15(28)=spval3l4(iv1)
      acd15(29)=abb15(24)
      acd15(30)=acd15(20)*acd15(28)
      acd15(31)=acd15(18)*acd15(26)
      acd15(32)=2.0_ki*acd15(1)
      acd15(33)=-acd15(6)*acd15(32)
      acd15(34)=acd15(9)*acd15(4)
      acd15(34)=acd15(34)+acd15(10)
      acd15(35)=acd15(8)*acd15(34)
      acd15(30)=acd15(35)+acd15(33)+acd15(30)+acd15(31)
      acd15(30)=acd15(3)*acd15(30)
      acd15(31)=acd15(3)*acd15(4)
      acd15(31)=acd15(31)-acd15(5)
      acd15(31)=acd15(32)*acd15(31)
      acd15(33)=acd15(14)*acd15(24)
      acd15(35)=acd15(12)*acd15(22)
      acd15(34)=acd15(16)*acd15(34)
      acd15(31)=acd15(34)+acd15(33)+acd15(35)+acd15(31)
      acd15(31)=acd15(2)*acd15(31)
      acd15(33)=acd15(20)*acd15(19)
      acd15(34)=acd15(18)*acd15(17)
      acd15(35)=-acd15(9)*acd15(6)
      acd15(33)=acd15(35)+acd15(34)-acd15(21)+acd15(33)
      acd15(33)=acd15(16)*acd15(33)
      acd15(34)=acd15(14)*acd15(13)
      acd15(35)=acd15(12)*acd15(11)
      acd15(36)=-acd15(9)*acd15(5)
      acd15(34)=acd15(36)+acd15(35)-acd15(15)+acd15(34)
      acd15(34)=acd15(8)*acd15(34)
      acd15(35)=-acd15(28)*acd15(29)
      acd15(36)=-acd15(26)*acd15(27)
      acd15(37)=-acd15(24)*acd15(25)
      acd15(38)=-acd15(22)*acd15(23)
      acd15(32)=acd15(7)*acd15(32)
      brack=acd15(30)+acd15(31)+acd15(32)+acd15(33)+acd15(34)+acd15(35)+acd15(3&
      &6)+acd15(37)+acd15(38)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd15h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=dotproduct(qshift,spvak2k1)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(19)
      acd15(5)=abb15(20)
      acd15(6)=abb15(16)
      acd15(7)=abb15(17)
      acd15(8)=qshift(iv1)
      acd15(9)=spvak2k1(iv2)
      acd15(10)=spvak2k5(iv2)
      acd15(11)=qshift(iv2)
      acd15(12)=spvak2k1(iv1)
      acd15(13)=spvak2k5(iv1)
      acd15(14)=dotproduct(qshift,qshift)
      acd15(15)=abb15(22)
      acd15(16)=spvak2l3(iv2)
      acd15(17)=abb15(13)
      acd15(18)=spval4l3(iv2)
      acd15(19)=abb15(21)
      acd15(20)=spvak2l3(iv1)
      acd15(21)=spval4l3(iv1)
      acd15(22)=spvak2l4(iv2)
      acd15(23)=abb15(15)
      acd15(24)=spval3l4(iv2)
      acd15(25)=abb15(25)
      acd15(26)=spvak2l4(iv1)
      acd15(27)=spval3l4(iv1)
      acd15(28)=acd15(2)*acd15(1)
      acd15(29)=-acd15(8)*acd15(9)
      acd15(30)=-acd15(11)*acd15(12)
      acd15(29)=acd15(30)-acd15(28)+acd15(29)
      acd15(29)=acd15(5)*acd15(29)
      acd15(30)=acd15(3)*acd15(1)
      acd15(31)=-acd15(8)*acd15(10)
      acd15(32)=-acd15(11)*acd15(13)
      acd15(30)=acd15(32)-acd15(30)+acd15(31)
      acd15(30)=acd15(6)*acd15(30)
      acd15(31)=acd15(3)*acd15(4)
      acd15(28)=acd15(31)*acd15(28)
      acd15(32)=acd15(2)*acd15(4)
      acd15(33)=acd15(10)*acd15(32)
      acd15(34)=acd15(9)*acd15(31)
      acd15(33)=acd15(33)+acd15(34)
      acd15(33)=acd15(8)*acd15(33)
      acd15(32)=acd15(13)*acd15(32)
      acd15(31)=acd15(12)*acd15(31)
      acd15(31)=acd15(32)+acd15(31)
      acd15(31)=acd15(11)*acd15(31)
      acd15(32)=acd15(7)*acd15(1)
      acd15(28)=acd15(32)+acd15(30)+acd15(29)+acd15(31)+acd15(28)+acd15(33)
      acd15(29)=acd15(12)*acd15(10)
      acd15(30)=acd15(13)*acd15(9)
      acd15(29)=acd15(29)+acd15(30)
      acd15(30)=acd15(14)*acd15(4)
      acd15(30)=acd15(15)+acd15(30)
      acd15(29)=acd15(29)*acd15(30)
      acd15(30)=acd15(16)*acd15(12)
      acd15(31)=acd15(20)*acd15(9)
      acd15(30)=acd15(31)+acd15(30)
      acd15(30)=acd15(17)*acd15(30)
      acd15(31)=acd15(18)*acd15(12)
      acd15(32)=acd15(21)*acd15(9)
      acd15(31)=acd15(32)+acd15(31)
      acd15(31)=acd15(19)*acd15(31)
      acd15(32)=acd15(22)*acd15(13)
      acd15(33)=acd15(26)*acd15(10)
      acd15(32)=acd15(33)+acd15(32)
      acd15(32)=acd15(23)*acd15(32)
      acd15(33)=acd15(24)*acd15(13)
      acd15(34)=acd15(27)*acd15(10)
      acd15(33)=acd15(34)+acd15(33)
      acd15(33)=acd15(25)*acd15(33)
      brack=2.0_ki*acd15(28)+acd15(29)+acd15(30)+acd15(31)+acd15(32)+acd15(33)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd15h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=spvak2k1(iv3)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(19)
      acd15(5)=abb15(20)
      acd15(6)=spvak2k5(iv3)
      acd15(7)=dotproduct(qshift,spvak2k1)
      acd15(8)=abb15(16)
      acd15(9)=d(iv1,iv3)
      acd15(10)=spvak2k1(iv2)
      acd15(11)=spvak2k5(iv2)
      acd15(12)=d(iv2,iv3)
      acd15(13)=spvak2k1(iv1)
      acd15(14)=spvak2k5(iv1)
      acd15(15)=qshift(iv1)
      acd15(16)=qshift(iv2)
      acd15(17)=qshift(iv3)
      acd15(18)=acd15(11)*acd15(13)
      acd15(19)=acd15(10)*acd15(14)
      acd15(18)=acd15(19)+acd15(18)
      acd15(18)=acd15(17)*acd15(18)
      acd15(19)=acd15(14)*acd15(7)
      acd15(20)=acd15(13)*acd15(3)
      acd15(19)=acd15(19)+acd15(20)
      acd15(19)=acd15(12)*acd15(19)
      acd15(20)=acd15(11)*acd15(7)
      acd15(21)=acd15(10)*acd15(3)
      acd15(20)=acd15(20)+acd15(21)
      acd15(20)=acd15(9)*acd15(20)
      acd15(21)=acd15(13)*acd15(16)
      acd15(22)=acd15(10)*acd15(15)
      acd15(21)=acd15(21)+acd15(22)
      acd15(21)=acd15(6)*acd15(21)
      acd15(22)=acd15(14)*acd15(16)
      acd15(23)=acd15(11)*acd15(15)
      acd15(22)=acd15(22)+acd15(23)
      acd15(22)=acd15(2)*acd15(22)
      acd15(23)=acd15(6)*acd15(7)
      acd15(24)=acd15(2)*acd15(3)
      acd15(23)=acd15(23)+acd15(24)
      acd15(23)=acd15(1)*acd15(23)
      acd15(18)=acd15(23)+acd15(22)+acd15(21)+acd15(20)+acd15(19)+acd15(18)
      acd15(18)=acd15(4)*acd15(18)
      acd15(19)=-acd15(14)*acd15(8)
      acd15(20)=-acd15(13)*acd15(5)
      acd15(19)=acd15(19)+acd15(20)
      acd15(19)=acd15(12)*acd15(19)
      acd15(20)=-acd15(11)*acd15(8)
      acd15(21)=-acd15(10)*acd15(5)
      acd15(20)=acd15(20)+acd15(21)
      acd15(20)=acd15(9)*acd15(20)
      acd15(21)=-acd15(6)*acd15(8)
      acd15(22)=-acd15(2)*acd15(5)
      acd15(21)=acd15(21)+acd15(22)
      acd15(21)=acd15(1)*acd15(21)
      acd15(18)=acd15(18)+acd15(21)+acd15(19)+acd15(20)
      brack=2.0_ki*acd15(18)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd15h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=spvak2k1(iv3)
      acd15(3)=spvak2k5(iv4)
      acd15(4)=abb15(19)
      acd15(5)=spvak2k1(iv4)
      acd15(6)=spvak2k5(iv3)
      acd15(7)=d(iv1,iv3)
      acd15(8)=spvak2k1(iv2)
      acd15(9)=spvak2k5(iv2)
      acd15(10)=d(iv1,iv4)
      acd15(11)=d(iv2,iv3)
      acd15(12)=spvak2k1(iv1)
      acd15(13)=spvak2k5(iv1)
      acd15(14)=d(iv2,iv4)
      acd15(15)=d(iv3,iv4)
      acd15(16)=acd15(13)*acd15(11)
      acd15(17)=acd15(9)*acd15(7)
      acd15(18)=acd15(6)*acd15(1)
      acd15(16)=acd15(18)+acd15(16)+acd15(17)
      acd15(16)=acd15(5)*acd15(16)
      acd15(17)=acd15(13)*acd15(14)
      acd15(18)=acd15(9)*acd15(10)
      acd15(19)=acd15(3)*acd15(1)
      acd15(17)=acd15(19)+acd15(17)+acd15(18)
      acd15(17)=acd15(2)*acd15(17)
      acd15(18)=acd15(9)*acd15(12)
      acd15(19)=acd15(8)*acd15(13)
      acd15(18)=acd15(18)+acd15(19)
      acd15(18)=acd15(15)*acd15(18)
      acd15(19)=acd15(12)*acd15(14)
      acd15(20)=acd15(8)*acd15(10)
      acd15(19)=acd15(19)+acd15(20)
      acd15(19)=acd15(6)*acd15(19)
      acd15(20)=acd15(12)*acd15(11)
      acd15(21)=acd15(8)*acd15(7)
      acd15(20)=acd15(20)+acd15(21)
      acd15(20)=acd15(3)*acd15(20)
      acd15(16)=acd15(17)+acd15(20)+acd15(16)+acd15(19)+acd15(18)
      brack=2.0_ki*acd15(16)*acd15(4)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd15h1_qp
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
      qshift = -k3
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
end module     p0_gg_hhg_d15h1l1d_qp
