module     p0_gg_hhg_d19h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d19h4l1d.f90
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
      use p0_gg_hhg_abbrevd19h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd19
      complex(ki) :: brack
      acd19(1)=abb19(22)
      brack=acd19(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd19h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd19
      complex(ki) :: brack
      acd19(1)=k2(iv1)
      acd19(2)=abb19(25)
      acd19(3)=k5(iv1)
      acd19(4)=abb19(27)
      acd19(5)=spvak1k5(iv1)
      acd19(6)=abb19(15)
      acd19(7)=spvak2l3(iv1)
      acd19(8)=abb19(18)
      acd19(9)=spvak2l4(iv1)
      acd19(10)=abb19(39)
      acd19(11)=spval3k5(iv1)
      acd19(12)=abb19(29)
      acd19(13)=spval4k5(iv1)
      acd19(14)=abb19(35)
      acd19(15)=acd19(2)*acd19(1)
      acd19(16)=acd19(4)*acd19(3)
      acd19(17)=acd19(6)*acd19(5)
      acd19(18)=acd19(8)*acd19(7)
      acd19(19)=acd19(10)*acd19(9)
      acd19(20)=acd19(12)*acd19(11)
      acd19(21)=acd19(14)*acd19(13)
      brack=acd19(15)+acd19(16)+acd19(17)+acd19(18)+acd19(19)+acd19(20)+acd19(2&
      &1)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd19h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd19
      complex(ki) :: brack
      acd19(1)=d(iv1,iv2)
      acd19(2)=abb19(12)
      acd19(3)=k2(iv1)
      acd19(4)=k2(iv2)
      acd19(5)=abb19(28)
      acd19(6)=spvak2l3(iv2)
      acd19(7)=abb19(19)
      acd19(8)=spval3k5(iv2)
      acd19(9)=abb19(20)
      acd19(10)=spval4k5(iv2)
      acd19(11)=abb19(21)
      acd19(12)=spvak2l3(iv1)
      acd19(13)=spval3k5(iv1)
      acd19(14)=spval4k5(iv1)
      acd19(15)=abb19(14)
      acd19(16)=spvak2l4(iv2)
      acd19(17)=abb19(32)
      acd19(18)=spvak2l4(iv1)
      acd19(19)=spvak1k2(iv1)
      acd19(20)=spvak2k5(iv2)
      acd19(21)=abb19(23)
      acd19(22)=spvak1k2(iv2)
      acd19(23)=spvak2k5(iv1)
      acd19(24)=spvak5k2(iv2)
      acd19(25)=abb19(13)
      acd19(26)=spvak5k2(iv1)
      acd19(27)=acd19(12)*acd19(7)
      acd19(28)=acd19(13)*acd19(9)
      acd19(29)=acd19(14)*acd19(11)
      acd19(30)=acd19(5)*acd19(3)
      acd19(27)=2.0_ki*acd19(30)+acd19(29)+acd19(28)+acd19(27)
      acd19(27)=acd19(4)*acd19(27)
      acd19(28)=acd19(7)*acd19(6)
      acd19(29)=acd19(9)*acd19(8)
      acd19(30)=acd19(11)*acd19(10)
      acd19(28)=acd19(30)+acd19(28)+acd19(29)
      acd19(28)=acd19(3)*acd19(28)
      acd19(29)=acd19(16)*acd19(13)
      acd19(30)=acd19(18)*acd19(8)
      acd19(29)=acd19(30)+acd19(29)
      acd19(29)=acd19(17)*acd19(29)
      acd19(30)=acd19(19)*acd19(20)
      acd19(31)=acd19(22)*acd19(23)
      acd19(30)=acd19(31)+acd19(30)
      acd19(30)=acd19(21)*acd19(30)
      acd19(31)=acd19(24)*acd19(23)
      acd19(32)=acd19(26)*acd19(20)
      acd19(31)=acd19(32)+acd19(31)
      acd19(31)=acd19(25)*acd19(31)
      acd19(32)=acd19(12)*acd19(10)
      acd19(33)=acd19(14)*acd19(6)
      acd19(32)=acd19(32)+acd19(33)
      acd19(32)=acd19(15)*acd19(32)
      acd19(33)=acd19(2)*acd19(1)
      brack=acd19(27)+acd19(28)+acd19(29)+acd19(30)+acd19(31)+acd19(32)+2.0_ki*&
      &acd19(33)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd19h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(30) :: acd19
      complex(ki) :: brack
      acd19(1)=d(iv1,iv2)
      acd19(2)=k2(iv3)
      acd19(3)=abb19(24)
      acd19(4)=spvak2l3(iv3)
      acd19(5)=abb19(10)
      acd19(6)=spvak2l4(iv3)
      acd19(7)=abb19(31)
      acd19(8)=spval3k5(iv3)
      acd19(9)=abb19(11)
      acd19(10)=spval4k5(iv3)
      acd19(11)=abb19(37)
      acd19(12)=d(iv1,iv3)
      acd19(13)=k2(iv2)
      acd19(14)=spvak2l3(iv2)
      acd19(15)=spvak2l4(iv2)
      acd19(16)=spval3k5(iv2)
      acd19(17)=spval4k5(iv2)
      acd19(18)=d(iv2,iv3)
      acd19(19)=k2(iv1)
      acd19(20)=spvak2l3(iv1)
      acd19(21)=spvak2l4(iv1)
      acd19(22)=spval3k5(iv1)
      acd19(23)=spval4k5(iv1)
      acd19(24)=acd19(2)*acd19(3)
      acd19(25)=acd19(4)*acd19(5)
      acd19(26)=acd19(6)*acd19(7)
      acd19(27)=acd19(8)*acd19(9)
      acd19(28)=acd19(10)*acd19(11)
      acd19(24)=acd19(28)+acd19(27)+acd19(26)+acd19(24)+acd19(25)
      acd19(24)=acd19(1)*acd19(24)
      acd19(25)=acd19(13)*acd19(3)
      acd19(26)=acd19(14)*acd19(5)
      acd19(27)=acd19(15)*acd19(7)
      acd19(28)=acd19(16)*acd19(9)
      acd19(29)=acd19(17)*acd19(11)
      acd19(25)=acd19(29)+acd19(28)+acd19(27)+acd19(26)+acd19(25)
      acd19(25)=acd19(12)*acd19(25)
      acd19(26)=acd19(19)*acd19(3)
      acd19(27)=acd19(20)*acd19(5)
      acd19(28)=acd19(21)*acd19(7)
      acd19(29)=acd19(22)*acd19(9)
      acd19(30)=acd19(23)*acd19(11)
      acd19(26)=acd19(30)+acd19(29)+acd19(28)+acd19(27)+acd19(26)
      acd19(26)=acd19(18)*acd19(26)
      acd19(24)=acd19(26)+acd19(25)+acd19(24)
      brack=2.0_ki*acd19(24)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd19h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(10) :: acd19
      complex(ki) :: brack
      acd19(1)=d(iv1,iv2)
      acd19(2)=d(iv3,iv4)
      acd19(3)=abb19(16)
      acd19(4)=d(iv1,iv3)
      acd19(5)=d(iv2,iv4)
      acd19(6)=d(iv1,iv4)
      acd19(7)=d(iv2,iv3)
      acd19(8)=-acd19(2)*acd19(1)
      acd19(9)=-acd19(5)*acd19(4)
      acd19(10)=-acd19(7)*acd19(6)
      acd19(8)=acd19(10)+acd19(8)+acd19(9)
      brack=8.0_ki*acd19(8)*acd19(3)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd19h4
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
end module     p0_gg_hhg_d19h4l1d
