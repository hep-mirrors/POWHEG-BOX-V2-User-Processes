module     p0_gg_hhg_d8h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d8h4l1d.f90
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
   real(ki), dimension(4), private :: qshift
   public :: derivative
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd8h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(12) :: acd8
      complex(ki) :: brack
      acd8(1)=dotproduct(k2,qshift)
      acd8(2)=dotproduct(qshift,spvak1k2)
      acd8(3)=abb8(9)
      acd8(4)=dotproduct(qshift,qshift)
      acd8(5)=abb8(8)
      acd8(6)=dotproduct(qshift,spvak1k5)
      acd8(7)=dotproduct(qshift,spvak5k2)
      acd8(8)=abb8(10)
      acd8(9)=abb8(7)
      acd8(10)=acd8(3)*acd8(2)*acd8(1)
      acd8(11)=acd8(5)*acd8(4)
      acd8(12)=acd8(8)*acd8(7)*acd8(6)
      brack=acd8(9)+acd8(10)+acd8(11)+acd8(12)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd8h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd8
      complex(ki) :: brack
      acd8(1)=k2(iv1)
      acd8(2)=dotproduct(qshift,spvak1k2)
      acd8(3)=abb8(9)
      acd8(4)=qshift(iv1)
      acd8(5)=abb8(8)
      acd8(6)=spvak1k2(iv1)
      acd8(7)=dotproduct(k2,qshift)
      acd8(8)=spvak1k5(iv1)
      acd8(9)=dotproduct(qshift,spvak5k2)
      acd8(10)=abb8(10)
      acd8(11)=spvak5k2(iv1)
      acd8(12)=dotproduct(qshift,spvak1k5)
      acd8(13)=-acd8(2)*acd8(1)
      acd8(14)=-acd8(7)*acd8(6)
      acd8(13)=acd8(14)+acd8(13)
      acd8(13)=acd8(3)*acd8(13)
      acd8(14)=-acd8(9)*acd8(8)
      acd8(15)=-acd8(12)*acd8(11)
      acd8(14)=acd8(15)+acd8(14)
      acd8(14)=acd8(10)*acd8(14)
      acd8(15)=acd8(5)*acd8(4)
      brack=acd8(13)+acd8(14)-2.0_ki*acd8(15)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd8h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=abb8(8)
      acd8(3)=k2(iv1)
      acd8(4)=spvak1k2(iv2)
      acd8(5)=abb8(9)
      acd8(6)=k2(iv2)
      acd8(7)=spvak1k2(iv1)
      acd8(8)=spvak1k5(iv1)
      acd8(9)=spvak5k2(iv2)
      acd8(10)=abb8(10)
      acd8(11)=spvak1k5(iv2)
      acd8(12)=spvak5k2(iv1)
      acd8(13)=acd8(4)*acd8(3)
      acd8(14)=acd8(7)*acd8(6)
      acd8(13)=acd8(14)+acd8(13)
      acd8(13)=acd8(5)*acd8(13)
      acd8(14)=acd8(9)*acd8(8)
      acd8(15)=acd8(12)*acd8(11)
      acd8(14)=acd8(15)+acd8(14)
      acd8(14)=acd8(10)*acd8(14)
      acd8(15)=acd8(2)*acd8(1)
      brack=acd8(13)+acd8(14)+2.0_ki*acd8(15)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd8h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd8
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd8h4
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k2-k5
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
   end function derivative
!---#] function derivative:
end module     p0_gg_hhg_d8h4l1d
