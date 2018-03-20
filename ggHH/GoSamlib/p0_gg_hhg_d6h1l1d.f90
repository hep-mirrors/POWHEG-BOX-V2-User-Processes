module     p0_gg_hhg_d6h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d6h1l1d.f90
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
      use p0_gg_hhg_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(6) :: acd6
      complex(ki) :: brack
      acd6(1)=dotproduct(qshift,spvak2k1)
      acd6(2)=dotproduct(qshift,spvak2k5)
      acd6(3)=abb6(8)
      acd6(4)=abb6(9)
      acd6(5)=acd6(1)*acd6(3)
      acd6(6)=acd6(2)*acd6(4)
      acd6(5)=acd6(5)+acd6(6)
      brack=acd6(5)*acd6(2)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(8) :: acd6
      complex(ki) :: brack
      acd6(1)=spvak2k1(iv1)
      acd6(2)=dotproduct(qshift,spvak2k5)
      acd6(3)=abb6(8)
      acd6(4)=spvak2k5(iv1)
      acd6(5)=dotproduct(qshift,spvak2k1)
      acd6(6)=abb6(9)
      acd6(7)=acd6(5)*acd6(3)
      acd6(8)=acd6(6)*acd6(2)
      acd6(7)=2.0_ki*acd6(8)+acd6(7)
      acd6(7)=acd6(4)*acd6(7)
      acd6(8)=acd6(1)*acd6(3)*acd6(2)
      brack=acd6(7)+acd6(8)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(8) :: acd6
      complex(ki) :: brack
      acd6(1)=spvak2k1(iv1)
      acd6(2)=spvak2k5(iv2)
      acd6(3)=abb6(8)
      acd6(4)=spvak2k1(iv2)
      acd6(5)=spvak2k5(iv1)
      acd6(6)=abb6(9)
      acd6(7)=acd6(4)*acd6(3)
      acd6(8)=acd6(6)*acd6(2)
      acd6(7)=2.0_ki*acd6(8)+acd6(7)
      acd6(7)=acd6(5)*acd6(7)
      acd6(8)=acd6(1)*acd6(3)*acd6(2)
      brack=acd6(7)+acd6(8)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd6
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd6h1
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
end module     p0_gg_hhg_d6h1l1d
