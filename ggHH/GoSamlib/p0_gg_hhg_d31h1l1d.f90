module     p0_gg_hhg_d31h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d31h1l1d.f90
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
      use p0_gg_hhg_abbrevd31h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(6) :: acd31
      complex(ki) :: brack
      acd31(1)=dotproduct(qshift,spvak2k1)
      acd31(2)=dotproduct(qshift,spvak2k5)
      acd31(3)=abb31(7)
      acd31(4)=abb31(8)
      acd31(5)=abb31(9)
      acd31(6)=-acd31(2)*acd31(3)
      acd31(6)=acd31(6)+acd31(4)
      acd31(6)=acd31(1)*acd31(6)
      acd31(6)=-acd31(5)+acd31(6)
      brack=acd31(6)*acd31(2)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd31h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(9) :: acd31
      complex(ki) :: brack
      acd31(1)=spvak2k1(iv1)
      acd31(2)=dotproduct(qshift,spvak2k5)
      acd31(3)=abb31(7)
      acd31(4)=abb31(8)
      acd31(5)=spvak2k5(iv1)
      acd31(6)=dotproduct(qshift,spvak2k1)
      acd31(7)=abb31(9)
      acd31(8)=acd31(3)*acd31(2)**2
      acd31(9)=-acd31(4)*acd31(2)
      acd31(8)=acd31(8)+acd31(9)
      acd31(8)=acd31(1)*acd31(8)
      acd31(9)=acd31(3)*acd31(2)
      acd31(9)=2.0_ki*acd31(9)-acd31(4)
      acd31(9)=acd31(6)*acd31(9)
      acd31(9)=acd31(7)+acd31(9)
      acd31(9)=acd31(5)*acd31(9)
      brack=acd31(8)+acd31(9)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd31h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(11) :: acd31
      complex(ki) :: brack
      acd31(1)=spvak2k1(iv1)
      acd31(2)=spvak2k5(iv2)
      acd31(3)=dotproduct(qshift,spvak2k5)
      acd31(4)=abb31(7)
      acd31(5)=abb31(8)
      acd31(6)=spvak2k1(iv2)
      acd31(7)=spvak2k5(iv1)
      acd31(8)=dotproduct(qshift,spvak2k1)
      acd31(9)=-acd31(1)*acd31(2)
      acd31(10)=-acd31(6)*acd31(7)
      acd31(9)=acd31(10)+acd31(9)
      acd31(10)=2.0_ki*acd31(4)
      acd31(11)=acd31(10)*acd31(3)
      acd31(11)=acd31(11)-acd31(5)
      acd31(9)=acd31(11)*acd31(9)
      acd31(10)=-acd31(8)*acd31(7)*acd31(2)*acd31(10)
      brack=acd31(9)+acd31(10)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd31h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(9) :: acd31
      complex(ki) :: brack
      acd31(1)=spvak2k1(iv1)
      acd31(2)=spvak2k5(iv2)
      acd31(3)=spvak2k5(iv3)
      acd31(4)=abb31(7)
      acd31(5)=spvak2k1(iv2)
      acd31(6)=spvak2k5(iv1)
      acd31(7)=spvak2k1(iv3)
      acd31(8)=acd31(5)*acd31(3)
      acd31(9)=acd31(7)*acd31(2)
      acd31(8)=acd31(9)+acd31(8)
      acd31(8)=acd31(8)*acd31(6)
      acd31(9)=acd31(1)*acd31(2)*acd31(3)
      acd31(8)=acd31(9)+acd31(8)
      brack=2.0_ki*acd31(8)*acd31(4)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd31h1
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
      use p0_gg_hhg_abbrevd31h1
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
end module     p0_gg_hhg_d31h1l1d
