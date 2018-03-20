module     p0_gg_hhg_d23h1l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d23h1l1d_qp.f90
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
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd23
      complex(ki) :: brack
      acd23(1)=abb23(20)
      brack=acd23(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(12) :: acd23
      complex(ki) :: brack
      acd23(1)=spvak2k1(iv1)
      acd23(2)=abb23(17)
      acd23(3)=spvak2l3(iv1)
      acd23(4)=abb23(15)
      acd23(5)=spvak2l4(iv1)
      acd23(6)=abb23(18)
      acd23(7)=spvak2k5(iv1)
      acd23(8)=abb23(24)
      acd23(9)=-acd23(2)*acd23(1)
      acd23(10)=-acd23(4)*acd23(3)
      acd23(11)=-acd23(6)*acd23(5)
      acd23(12)=-acd23(8)*acd23(7)
      brack=acd23(9)+acd23(10)+acd23(11)+acd23(12)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd23
      complex(ki) :: brack
      acd23(1)=k2(iv1)
      acd23(2)=spvak2k5(iv2)
      acd23(3)=abb23(31)
      acd23(4)=k2(iv2)
      acd23(5)=spvak2k5(iv1)
      acd23(6)=abb23(13)
      acd23(7)=spvak2k1(iv2)
      acd23(8)=abb23(16)
      acd23(9)=spval4k5(iv2)
      acd23(10)=abb23(29)
      acd23(11)=spvak2l4(iv2)
      acd23(12)=abb23(11)
      acd23(13)=spvak2k1(iv1)
      acd23(14)=spval4k5(iv1)
      acd23(15)=spvak2l4(iv1)
      acd23(16)=abb23(19)
      acd23(17)=acd23(8)*acd23(7)
      acd23(18)=acd23(10)*acd23(9)
      acd23(19)=acd23(4)*acd23(3)
      acd23(20)=acd23(6)*acd23(2)
      acd23(21)=acd23(11)*acd23(12)
      acd23(17)=acd23(21)+2.0_ki*acd23(20)+acd23(19)+acd23(17)+acd23(18)
      acd23(17)=acd23(5)*acd23(17)
      acd23(18)=acd23(13)*acd23(8)
      acd23(19)=acd23(14)*acd23(10)
      acd23(20)=acd23(1)*acd23(3)
      acd23(21)=acd23(15)*acd23(12)
      acd23(18)=acd23(21)+acd23(20)+acd23(19)+acd23(18)
      acd23(18)=acd23(2)*acd23(18)
      acd23(19)=acd23(13)*acd23(9)
      acd23(20)=acd23(14)*acd23(7)
      acd23(19)=acd23(19)+acd23(20)
      acd23(19)=acd23(16)*acd23(19)
      brack=acd23(17)+acd23(18)+acd23(19)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=spvak2k1(iv3)
      acd23(3)=abb23(22)
      acd23(4)=spvak2k5(iv3)
      acd23(5)=abb23(25)
      acd23(6)=d(iv1,iv3)
      acd23(7)=spvak2k1(iv2)
      acd23(8)=spvak2k5(iv2)
      acd23(9)=d(iv2,iv3)
      acd23(10)=spvak2k1(iv1)
      acd23(11)=spvak2k5(iv1)
      acd23(12)=k2(iv1)
      acd23(13)=abb23(23)
      acd23(14)=abb23(34)
      acd23(15)=k2(iv2)
      acd23(16)=k2(iv3)
      acd23(17)=spvak2l4(iv2)
      acd23(18)=spval4k5(iv3)
      acd23(19)=abb23(14)
      acd23(20)=spvak2l4(iv3)
      acd23(21)=spval4k5(iv2)
      acd23(22)=spvak2l4(iv1)
      acd23(23)=spval4k5(iv1)
      acd23(24)=abb23(21)
      acd23(25)=spval4k1(iv3)
      acd23(26)=spval4k1(iv2)
      acd23(27)=spval4k1(iv1)
      acd23(28)=-acd23(3)*acd23(2)
      acd23(29)=-acd23(5)*acd23(4)
      acd23(28)=acd23(28)+acd23(29)
      acd23(28)=acd23(1)*acd23(28)
      acd23(29)=-acd23(3)*acd23(7)
      acd23(30)=-acd23(5)*acd23(8)
      acd23(29)=acd23(29)+acd23(30)
      acd23(29)=acd23(6)*acd23(29)
      acd23(30)=-acd23(3)*acd23(10)
      acd23(31)=-acd23(5)*acd23(11)
      acd23(30)=acd23(30)+acd23(31)
      acd23(30)=acd23(9)*acd23(30)
      acd23(28)=acd23(30)+acd23(28)+acd23(29)
      acd23(29)=acd23(17)*acd23(11)
      acd23(30)=acd23(22)*acd23(8)
      acd23(29)=acd23(29)+acd23(30)
      acd23(29)=acd23(24)*acd23(29)
      acd23(30)=acd23(22)*acd23(19)
      acd23(31)=-acd23(7)*acd23(30)
      acd23(32)=acd23(17)*acd23(19)
      acd23(33)=-acd23(10)*acd23(32)
      acd23(29)=acd23(33)+acd23(29)+acd23(31)
      acd23(29)=acd23(18)*acd23(29)
      acd23(31)=acd23(20)*acd23(11)
      acd23(33)=acd23(22)*acd23(4)
      acd23(31)=acd23(31)+acd23(33)
      acd23(31)=acd23(24)*acd23(31)
      acd23(33)=-acd23(2)*acd23(30)
      acd23(34)=acd23(20)*acd23(19)
      acd23(35)=-acd23(10)*acd23(34)
      acd23(31)=acd23(35)+acd23(31)+acd23(33)
      acd23(31)=acd23(21)*acd23(31)
      acd23(33)=acd23(17)*acd23(4)
      acd23(35)=acd23(20)*acd23(8)
      acd23(33)=acd23(33)+acd23(35)
      acd23(33)=acd23(24)*acd23(33)
      acd23(35)=-acd23(2)*acd23(32)
      acd23(36)=-acd23(7)*acd23(34)
      acd23(33)=acd23(36)+acd23(33)+acd23(35)
      acd23(33)=acd23(23)*acd23(33)
      acd23(35)=2.0_ki*acd23(14)
      acd23(36)=acd23(35)*acd23(8)
      acd23(37)=acd23(7)*acd23(13)
      acd23(36)=acd23(36)+acd23(37)
      acd23(37)=-acd23(4)*acd23(36)
      acd23(38)=acd23(2)*acd23(13)
      acd23(39)=-acd23(8)*acd23(38)
      acd23(37)=acd23(39)+acd23(37)
      acd23(37)=acd23(12)*acd23(37)
      acd23(35)=acd23(35)*acd23(4)
      acd23(35)=-acd23(35)-acd23(38)
      acd23(35)=acd23(11)*acd23(35)
      acd23(38)=acd23(10)*acd23(13)
      acd23(39)=-acd23(4)*acd23(38)
      acd23(35)=acd23(39)+acd23(35)
      acd23(35)=acd23(15)*acd23(35)
      acd23(36)=-acd23(11)*acd23(36)
      acd23(38)=-acd23(8)*acd23(38)
      acd23(36)=acd23(38)+acd23(36)
      acd23(36)=acd23(16)*acd23(36)
      acd23(38)=-acd23(11)*acd23(32)
      acd23(39)=-acd23(8)*acd23(30)
      acd23(38)=acd23(38)+acd23(39)
      acd23(38)=acd23(25)*acd23(38)
      acd23(39)=-acd23(11)*acd23(34)
      acd23(30)=-acd23(4)*acd23(30)
      acd23(30)=acd23(39)+acd23(30)
      acd23(30)=acd23(26)*acd23(30)
      acd23(32)=-acd23(4)*acd23(32)
      acd23(34)=-acd23(8)*acd23(34)
      acd23(32)=acd23(32)+acd23(34)
      acd23(32)=acd23(27)*acd23(32)
      brack=2.0_ki*acd23(28)+acd23(29)+acd23(30)+acd23(31)+acd23(32)+acd23(33)+&
      &acd23(35)+acd23(36)+acd23(37)+acd23(38)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=spvak2k1(iv3)
      acd23(3)=spvak2k5(iv4)
      acd23(4)=abb23(12)
      acd23(5)=spvak2k1(iv4)
      acd23(6)=spvak2k5(iv3)
      acd23(7)=abb23(21)
      acd23(8)=d(iv1,iv3)
      acd23(9)=spvak2k1(iv2)
      acd23(10)=spvak2k5(iv2)
      acd23(11)=d(iv1,iv4)
      acd23(12)=d(iv2,iv3)
      acd23(13)=spvak2k1(iv1)
      acd23(14)=spvak2k5(iv1)
      acd23(15)=d(iv2,iv4)
      acd23(16)=d(iv3,iv4)
      acd23(17)=2.0_ki*acd23(7)
      acd23(18)=acd23(17)*acd23(6)
      acd23(19)=acd23(2)*acd23(4)
      acd23(18)=-acd23(18)+acd23(19)
      acd23(18)=acd23(1)*acd23(18)
      acd23(20)=acd23(9)*acd23(4)
      acd23(21)=acd23(8)*acd23(20)
      acd23(22)=acd23(13)*acd23(4)
      acd23(23)=acd23(12)*acd23(22)
      acd23(18)=acd23(23)+acd23(21)+acd23(18)
      acd23(18)=acd23(3)*acd23(18)
      acd23(21)=acd23(17)*acd23(10)
      acd23(23)=-acd23(3)*acd23(21)
      acd23(24)=acd23(5)*acd23(4)
      acd23(25)=acd23(10)*acd23(24)
      acd23(23)=acd23(23)+acd23(25)
      acd23(23)=acd23(8)*acd23(23)
      acd23(21)=acd23(20)-acd23(21)
      acd23(21)=acd23(6)*acd23(21)
      acd23(25)=acd23(10)*acd23(19)
      acd23(21)=acd23(25)+acd23(21)
      acd23(21)=acd23(11)*acd23(21)
      acd23(17)=acd23(17)*acd23(14)
      acd23(25)=-acd23(3)*acd23(17)
      acd23(26)=acd23(14)*acd23(24)
      acd23(25)=acd23(25)+acd23(26)
      acd23(25)=acd23(12)*acd23(25)
      acd23(17)=acd23(17)-acd23(22)
      acd23(22)=-acd23(6)*acd23(17)
      acd23(19)=acd23(14)*acd23(19)
      acd23(19)=acd23(19)+acd23(22)
      acd23(19)=acd23(15)*acd23(19)
      acd23(17)=-acd23(10)*acd23(17)
      acd23(20)=acd23(14)*acd23(20)
      acd23(17)=acd23(20)+acd23(17)
      acd23(17)=acd23(16)*acd23(17)
      acd23(20)=acd23(24)*acd23(1)*acd23(6)
      acd23(17)=acd23(17)+acd23(19)+acd23(25)+acd23(21)+acd23(23)+acd23(20)+acd&
      &23(18)
      brack=2.0_ki*acd23(17)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd23h1_qp
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
end module     p0_gg_hhg_d23h1l1d_qp
