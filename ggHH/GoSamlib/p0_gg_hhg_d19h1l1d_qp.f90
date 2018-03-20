module     p0_gg_hhg_d19h1l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d19h1l1d_qp.f90
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
      use p0_gg_hhg_abbrevd19h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd19
      complex(ki) :: brack
      acd19(1)=abb19(20)
      brack=acd19(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd19h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(12) :: acd19
      complex(ki) :: brack
      acd19(1)=spvak2k1(iv1)
      acd19(2)=abb19(18)
      acd19(3)=spvak2l3(iv1)
      acd19(4)=abb19(12)
      acd19(5)=spvak2l4(iv1)
      acd19(6)=abb19(31)
      acd19(7)=spvak2k5(iv1)
      acd19(8)=abb19(22)
      acd19(9)=acd19(2)*acd19(1)
      acd19(10)=acd19(4)*acd19(3)
      acd19(11)=acd19(6)*acd19(5)
      acd19(12)=acd19(8)*acd19(7)
      brack=acd19(9)+acd19(10)+acd19(11)+acd19(12)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd19h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd19
      complex(ki) :: brack
      acd19(1)=spvak2k1(iv1)
      acd19(2)=spvak2l3(iv2)
      acd19(3)=abb19(15)
      acd19(4)=spvak2k5(iv2)
      acd19(5)=abb19(19)
      acd19(6)=spvak2k1(iv2)
      acd19(7)=spvak2l3(iv1)
      acd19(8)=spvak2k5(iv1)
      acd19(9)=abb19(16)
      acd19(10)=spval4k5(iv2)
      acd19(11)=abb19(14)
      acd19(12)=spval4k5(iv1)
      acd19(13)=abb19(13)
      acd19(14)=spvak2l4(iv2)
      acd19(15)=abb19(27)
      acd19(16)=spvak2l4(iv1)
      acd19(17)=spval3k5(iv2)
      acd19(18)=abb19(21)
      acd19(19)=spval3k5(iv1)
      acd19(20)=acd19(15)*acd19(16)
      acd19(21)=acd19(1)*acd19(5)
      acd19(22)=acd19(7)*acd19(9)
      acd19(23)=acd19(8)*acd19(13)
      acd19(20)=2.0_ki*acd19(23)+acd19(22)+acd19(20)+acd19(21)
      acd19(20)=acd19(4)*acd19(20)
      acd19(21)=acd19(14)*acd19(15)
      acd19(22)=acd19(5)*acd19(6)
      acd19(23)=acd19(2)*acd19(9)
      acd19(21)=acd19(23)+acd19(21)+acd19(22)
      acd19(21)=acd19(8)*acd19(21)
      acd19(22)=acd19(16)*acd19(17)
      acd19(23)=acd19(14)*acd19(19)
      acd19(22)=acd19(22)+acd19(23)
      acd19(22)=acd19(18)*acd19(22)
      acd19(23)=acd19(11)*acd19(10)
      acd19(24)=acd19(3)*acd19(6)
      acd19(23)=acd19(23)+acd19(24)
      acd19(23)=acd19(7)*acd19(23)
      acd19(24)=acd19(11)*acd19(12)
      acd19(25)=acd19(1)*acd19(3)
      acd19(24)=acd19(24)+acd19(25)
      acd19(24)=acd19(2)*acd19(24)
      brack=acd19(20)+acd19(21)+acd19(22)+acd19(23)+acd19(24)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd19h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd19
      complex(ki) :: brack
      acd19(1)=d(iv1,iv2)
      acd19(2)=spvak2l3(iv3)
      acd19(3)=abb19(11)
      acd19(4)=spvak2l4(iv3)
      acd19(5)=abb19(30)
      acd19(6)=d(iv1,iv3)
      acd19(7)=spvak2l3(iv2)
      acd19(8)=spvak2l4(iv2)
      acd19(9)=d(iv2,iv3)
      acd19(10)=spvak2l3(iv1)
      acd19(11)=spvak2l4(iv1)
      acd19(12)=acd19(2)*acd19(1)
      acd19(13)=acd19(7)*acd19(6)
      acd19(14)=acd19(10)*acd19(9)
      acd19(12)=acd19(14)+acd19(13)+acd19(12)
      acd19(12)=acd19(3)*acd19(12)
      acd19(13)=-acd19(4)*acd19(1)
      acd19(14)=-acd19(8)*acd19(6)
      acd19(15)=-acd19(11)*acd19(9)
      acd19(13)=acd19(15)+acd19(14)+acd19(13)
      acd19(13)=acd19(5)*acd19(13)
      acd19(12)=acd19(13)+acd19(12)
      brack=2.0_ki*acd19(12)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd19h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd19
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd19h1_qp
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
end module     p0_gg_hhg_d19h1l1d_qp
