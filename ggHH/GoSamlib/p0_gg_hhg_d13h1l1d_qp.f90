module     p0_gg_hhg_d13h1l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d13h1l1d_qp.f90
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
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(30) :: acd13
      complex(ki) :: brack
      acd13(1)=dotproduct(qshift,qshift)
      acd13(2)=dotproduct(qshift,spvak2k1)
      acd13(3)=dotproduct(qshift,spvak2k5)
      acd13(4)=abb13(19)
      acd13(5)=abb13(18)
      acd13(6)=abb13(16)
      acd13(7)=abb13(17)
      acd13(8)=abb13(21)
      acd13(9)=dotproduct(qshift,spvak2l4)
      acd13(10)=abb13(22)
      acd13(11)=dotproduct(qshift,spval3l4)
      acd13(12)=abb13(20)
      acd13(13)=abb13(15)
      acd13(14)=dotproduct(qshift,spvak2l3)
      acd13(15)=abb13(12)
      acd13(16)=dotproduct(qshift,spval4l3)
      acd13(17)=abb13(25)
      acd13(18)=abb13(33)
      acd13(19)=abb13(13)
      acd13(20)=abb13(14)
      acd13(21)=abb13(11)
      acd13(22)=abb13(24)
      acd13(23)=abb13(27)
      acd13(24)=acd13(11)*acd13(12)
      acd13(25)=acd13(9)*acd13(10)
      acd13(26)=-acd13(1)*acd13(5)
      acd13(27)=acd13(1)*acd13(4)
      acd13(27)=acd13(8)+acd13(27)
      acd13(27)=acd13(3)*acd13(27)
      acd13(24)=acd13(27)+acd13(26)+acd13(25)-acd13(13)+acd13(24)
      acd13(24)=acd13(2)*acd13(24)
      acd13(25)=acd13(16)*acd13(17)
      acd13(26)=acd13(14)*acd13(15)
      acd13(27)=-acd13(1)*acd13(6)
      acd13(25)=acd13(27)+acd13(26)-acd13(18)+acd13(25)
      acd13(25)=acd13(3)*acd13(25)
      acd13(26)=-acd13(16)*acd13(22)
      acd13(27)=-acd13(14)*acd13(21)
      acd13(28)=-acd13(11)*acd13(20)
      acd13(29)=-acd13(9)*acd13(19)
      acd13(30)=acd13(1)*acd13(7)
      brack=acd13(23)+acd13(24)+acd13(25)+acd13(26)+acd13(27)+acd13(28)+acd13(2&
      &9)+acd13(30)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd13
      complex(ki) :: brack
      acd13(1)=qshift(iv1)
      acd13(2)=dotproduct(qshift,spvak2k1)
      acd13(3)=dotproduct(qshift,spvak2k5)
      acd13(4)=abb13(19)
      acd13(5)=abb13(18)
      acd13(6)=abb13(16)
      acd13(7)=abb13(17)
      acd13(8)=spvak2k1(iv1)
      acd13(9)=dotproduct(qshift,qshift)
      acd13(10)=abb13(21)
      acd13(11)=dotproduct(qshift,spvak2l4)
      acd13(12)=abb13(22)
      acd13(13)=dotproduct(qshift,spval3l4)
      acd13(14)=abb13(20)
      acd13(15)=abb13(15)
      acd13(16)=spvak2k5(iv1)
      acd13(17)=dotproduct(qshift,spvak2l3)
      acd13(18)=abb13(12)
      acd13(19)=dotproduct(qshift,spval4l3)
      acd13(20)=abb13(25)
      acd13(21)=abb13(33)
      acd13(22)=spvak2l4(iv1)
      acd13(23)=abb13(13)
      acd13(24)=spval3l4(iv1)
      acd13(25)=abb13(14)
      acd13(26)=spvak2l3(iv1)
      acd13(27)=abb13(11)
      acd13(28)=spval4l3(iv1)
      acd13(29)=abb13(24)
      acd13(30)=-acd13(20)*acd13(28)
      acd13(31)=-acd13(18)*acd13(26)
      acd13(32)=2.0_ki*acd13(1)
      acd13(33)=acd13(6)*acd13(32)
      acd13(34)=acd13(9)*acd13(4)
      acd13(34)=acd13(34)+acd13(10)
      acd13(35)=-acd13(8)*acd13(34)
      acd13(30)=acd13(35)+acd13(33)+acd13(30)+acd13(31)
      acd13(30)=acd13(3)*acd13(30)
      acd13(31)=-acd13(3)*acd13(4)
      acd13(31)=acd13(31)+acd13(5)
      acd13(31)=acd13(32)*acd13(31)
      acd13(33)=-acd13(14)*acd13(24)
      acd13(35)=-acd13(12)*acd13(22)
      acd13(34)=-acd13(16)*acd13(34)
      acd13(31)=acd13(34)+acd13(33)+acd13(35)+acd13(31)
      acd13(31)=acd13(2)*acd13(31)
      acd13(33)=-acd13(20)*acd13(19)
      acd13(34)=-acd13(18)*acd13(17)
      acd13(35)=acd13(9)*acd13(6)
      acd13(33)=acd13(35)+acd13(34)+acd13(21)+acd13(33)
      acd13(33)=acd13(16)*acd13(33)
      acd13(34)=-acd13(14)*acd13(13)
      acd13(35)=-acd13(12)*acd13(11)
      acd13(36)=acd13(9)*acd13(5)
      acd13(34)=acd13(36)+acd13(35)+acd13(15)+acd13(34)
      acd13(34)=acd13(8)*acd13(34)
      acd13(35)=acd13(28)*acd13(29)
      acd13(36)=acd13(26)*acd13(27)
      acd13(37)=acd13(24)*acd13(25)
      acd13(38)=acd13(22)*acd13(23)
      acd13(32)=-acd13(7)*acd13(32)
      brack=acd13(30)+acd13(31)+acd13(32)+acd13(33)+acd13(34)+acd13(35)+acd13(3&
      &6)+acd13(37)+acd13(38)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=dotproduct(qshift,spvak2k1)
      acd13(3)=dotproduct(qshift,spvak2k5)
      acd13(4)=abb13(19)
      acd13(5)=abb13(18)
      acd13(6)=abb13(16)
      acd13(7)=abb13(17)
      acd13(8)=qshift(iv1)
      acd13(9)=spvak2k1(iv2)
      acd13(10)=spvak2k5(iv2)
      acd13(11)=qshift(iv2)
      acd13(12)=spvak2k1(iv1)
      acd13(13)=spvak2k5(iv1)
      acd13(14)=dotproduct(qshift,qshift)
      acd13(15)=abb13(21)
      acd13(16)=spvak2l4(iv2)
      acd13(17)=abb13(22)
      acd13(18)=spval3l4(iv2)
      acd13(19)=abb13(20)
      acd13(20)=spvak2l4(iv1)
      acd13(21)=spval3l4(iv1)
      acd13(22)=spvak2l3(iv2)
      acd13(23)=abb13(12)
      acd13(24)=spval4l3(iv2)
      acd13(25)=abb13(25)
      acd13(26)=spvak2l3(iv1)
      acd13(27)=spval4l3(iv1)
      acd13(28)=acd13(2)*acd13(1)
      acd13(29)=-acd13(8)*acd13(9)
      acd13(30)=-acd13(11)*acd13(12)
      acd13(29)=acd13(30)-acd13(28)+acd13(29)
      acd13(29)=acd13(5)*acd13(29)
      acd13(30)=acd13(3)*acd13(1)
      acd13(31)=-acd13(8)*acd13(10)
      acd13(32)=-acd13(11)*acd13(13)
      acd13(30)=acd13(32)-acd13(30)+acd13(31)
      acd13(30)=acd13(6)*acd13(30)
      acd13(31)=acd13(3)*acd13(4)
      acd13(28)=acd13(31)*acd13(28)
      acd13(32)=acd13(2)*acd13(4)
      acd13(33)=acd13(10)*acd13(32)
      acd13(34)=acd13(9)*acd13(31)
      acd13(33)=acd13(33)+acd13(34)
      acd13(33)=acd13(8)*acd13(33)
      acd13(32)=acd13(13)*acd13(32)
      acd13(31)=acd13(12)*acd13(31)
      acd13(31)=acd13(32)+acd13(31)
      acd13(31)=acd13(11)*acd13(31)
      acd13(32)=acd13(7)*acd13(1)
      acd13(28)=acd13(32)+acd13(30)+acd13(29)+acd13(31)+acd13(28)+acd13(33)
      acd13(29)=acd13(12)*acd13(10)
      acd13(30)=acd13(13)*acd13(9)
      acd13(29)=acd13(29)+acd13(30)
      acd13(30)=acd13(14)*acd13(4)
      acd13(30)=acd13(15)+acd13(30)
      acd13(29)=acd13(29)*acd13(30)
      acd13(30)=acd13(16)*acd13(12)
      acd13(31)=acd13(20)*acd13(9)
      acd13(30)=acd13(31)+acd13(30)
      acd13(30)=acd13(17)*acd13(30)
      acd13(31)=acd13(18)*acd13(12)
      acd13(32)=acd13(21)*acd13(9)
      acd13(31)=acd13(32)+acd13(31)
      acd13(31)=acd13(19)*acd13(31)
      acd13(32)=acd13(22)*acd13(13)
      acd13(33)=acd13(26)*acd13(10)
      acd13(32)=acd13(33)+acd13(32)
      acd13(32)=acd13(23)*acd13(32)
      acd13(33)=acd13(24)*acd13(13)
      acd13(34)=acd13(27)*acd13(10)
      acd13(33)=acd13(34)+acd13(33)
      acd13(33)=acd13(25)*acd13(33)
      brack=2.0_ki*acd13(28)+acd13(29)+acd13(30)+acd13(31)+acd13(32)+acd13(33)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=spvak2k1(iv3)
      acd13(3)=dotproduct(qshift,spvak2k5)
      acd13(4)=abb13(19)
      acd13(5)=abb13(18)
      acd13(6)=spvak2k5(iv3)
      acd13(7)=dotproduct(qshift,spvak2k1)
      acd13(8)=abb13(16)
      acd13(9)=d(iv1,iv3)
      acd13(10)=spvak2k1(iv2)
      acd13(11)=spvak2k5(iv2)
      acd13(12)=d(iv2,iv3)
      acd13(13)=spvak2k1(iv1)
      acd13(14)=spvak2k5(iv1)
      acd13(15)=qshift(iv1)
      acd13(16)=qshift(iv2)
      acd13(17)=qshift(iv3)
      acd13(18)=-acd13(11)*acd13(13)
      acd13(19)=-acd13(10)*acd13(14)
      acd13(18)=acd13(19)+acd13(18)
      acd13(18)=acd13(17)*acd13(18)
      acd13(19)=-acd13(14)*acd13(7)
      acd13(20)=-acd13(13)*acd13(3)
      acd13(19)=acd13(19)+acd13(20)
      acd13(19)=acd13(12)*acd13(19)
      acd13(20)=-acd13(11)*acd13(7)
      acd13(21)=-acd13(10)*acd13(3)
      acd13(20)=acd13(20)+acd13(21)
      acd13(20)=acd13(9)*acd13(20)
      acd13(21)=-acd13(13)*acd13(16)
      acd13(22)=-acd13(10)*acd13(15)
      acd13(21)=acd13(21)+acd13(22)
      acd13(21)=acd13(6)*acd13(21)
      acd13(22)=-acd13(14)*acd13(16)
      acd13(23)=-acd13(11)*acd13(15)
      acd13(22)=acd13(22)+acd13(23)
      acd13(22)=acd13(2)*acd13(22)
      acd13(23)=-acd13(6)*acd13(7)
      acd13(24)=-acd13(2)*acd13(3)
      acd13(23)=acd13(23)+acd13(24)
      acd13(23)=acd13(1)*acd13(23)
      acd13(18)=acd13(23)+acd13(22)+acd13(21)+acd13(20)+acd13(19)+acd13(18)
      acd13(18)=acd13(4)*acd13(18)
      acd13(19)=acd13(14)*acd13(8)
      acd13(20)=acd13(13)*acd13(5)
      acd13(19)=acd13(19)+acd13(20)
      acd13(19)=acd13(12)*acd13(19)
      acd13(20)=acd13(11)*acd13(8)
      acd13(21)=acd13(10)*acd13(5)
      acd13(20)=acd13(20)+acd13(21)
      acd13(20)=acd13(9)*acd13(20)
      acd13(21)=acd13(6)*acd13(8)
      acd13(22)=acd13(2)*acd13(5)
      acd13(21)=acd13(21)+acd13(22)
      acd13(21)=acd13(1)*acd13(21)
      acd13(18)=acd13(18)+acd13(21)+acd13(19)+acd13(20)
      brack=2.0_ki*acd13(18)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=spvak2k1(iv3)
      acd13(3)=spvak2k5(iv4)
      acd13(4)=abb13(19)
      acd13(5)=spvak2k1(iv4)
      acd13(6)=spvak2k5(iv3)
      acd13(7)=d(iv1,iv3)
      acd13(8)=spvak2k1(iv2)
      acd13(9)=spvak2k5(iv2)
      acd13(10)=d(iv1,iv4)
      acd13(11)=d(iv2,iv3)
      acd13(12)=spvak2k1(iv1)
      acd13(13)=spvak2k5(iv1)
      acd13(14)=d(iv2,iv4)
      acd13(15)=d(iv3,iv4)
      acd13(16)=acd13(13)*acd13(11)
      acd13(17)=acd13(9)*acd13(7)
      acd13(18)=acd13(6)*acd13(1)
      acd13(16)=acd13(18)+acd13(16)+acd13(17)
      acd13(16)=acd13(5)*acd13(16)
      acd13(17)=acd13(13)*acd13(14)
      acd13(18)=acd13(9)*acd13(10)
      acd13(19)=acd13(3)*acd13(1)
      acd13(17)=acd13(19)+acd13(17)+acd13(18)
      acd13(17)=acd13(2)*acd13(17)
      acd13(18)=acd13(9)*acd13(12)
      acd13(19)=acd13(8)*acd13(13)
      acd13(18)=acd13(18)+acd13(19)
      acd13(18)=acd13(15)*acd13(18)
      acd13(19)=acd13(12)*acd13(14)
      acd13(20)=acd13(8)*acd13(10)
      acd13(19)=acd13(19)+acd13(20)
      acd13(19)=acd13(6)*acd13(19)
      acd13(20)=acd13(12)*acd13(11)
      acd13(21)=acd13(8)*acd13(7)
      acd13(20)=acd13(20)+acd13(21)
      acd13(20)=acd13(3)*acd13(20)
      acd13(16)=acd13(17)+acd13(20)+acd13(16)+acd13(19)+acd13(18)
      brack=2.0_ki*acd13(16)*acd13(4)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd13h1_qp
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
      qshift = k3+k5
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
end module     p0_gg_hhg_d13h1l1d_qp
