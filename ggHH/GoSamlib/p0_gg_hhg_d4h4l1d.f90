module     p0_gg_hhg_d4h4l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d4h4l1d.f90
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
   public :: derivative , reconstruct_d4
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd4h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(11) :: acd4
      complex(ki) :: brack
      acd4(1)=dotproduct(k1,qshift)
      acd4(2)=dotproduct(qshift,spvak5k2)
      acd4(3)=abb4(9)
      acd4(4)=dotproduct(k2,qshift)
      acd4(5)=dotproduct(qshift,qshift)
      acd4(6)=abb4(12)
      acd4(7)=dotproduct(qshift,spvak1k2)
      acd4(8)=abb4(7)
      acd4(9)=abb4(10)
      acd4(10)=acd4(1)-acd4(4)
      acd4(10)=acd4(10)*acd4(3)
      acd4(11)=acd4(8)*acd4(7)
      acd4(10)=acd4(11)+acd4(10)
      acd4(10)=acd4(2)*acd4(10)
      acd4(11)=acd4(6)*acd4(5)
      brack=acd4(9)+acd4(10)+acd4(11)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd4h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd4
      complex(ki) :: brack
      acd4(1)=k1(iv1)
      acd4(2)=dotproduct(qshift,spvak5k2)
      acd4(3)=abb4(9)
      acd4(4)=k2(iv1)
      acd4(5)=qshift(iv1)
      acd4(6)=abb4(12)
      acd4(7)=spvak5k2(iv1)
      acd4(8)=dotproduct(k1,qshift)
      acd4(9)=dotproduct(k2,qshift)
      acd4(10)=dotproduct(qshift,spvak1k2)
      acd4(11)=abb4(7)
      acd4(12)=spvak1k2(iv1)
      acd4(13)=acd4(9)-acd4(8)
      acd4(13)=acd4(13)*acd4(7)
      acd4(14)=-acd4(1)+acd4(4)
      acd4(14)=acd4(14)*acd4(2)
      acd4(13)=acd4(14)+acd4(13)
      acd4(13)=acd4(3)*acd4(13)
      acd4(14)=-acd4(10)*acd4(7)
      acd4(15)=-acd4(12)*acd4(2)
      acd4(14)=acd4(15)+acd4(14)
      acd4(14)=acd4(11)*acd4(14)
      acd4(15)=acd4(6)*acd4(5)
      brack=acd4(13)+acd4(14)-2.0_ki*acd4(15)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd4h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd4
      complex(ki) :: brack
      acd4(1)=d(iv1,iv2)
      acd4(2)=abb4(12)
      acd4(3)=k1(iv1)
      acd4(4)=spvak5k2(iv2)
      acd4(5)=abb4(9)
      acd4(6)=k1(iv2)
      acd4(7)=spvak5k2(iv1)
      acd4(8)=k2(iv1)
      acd4(9)=k2(iv2)
      acd4(10)=spvak1k2(iv2)
      acd4(11)=abb4(7)
      acd4(12)=spvak1k2(iv1)
      acd4(13)=-acd4(9)+acd4(6)
      acd4(13)=acd4(13)*acd4(7)
      acd4(14)=-acd4(8)+acd4(3)
      acd4(14)=acd4(14)*acd4(4)
      acd4(13)=acd4(14)+acd4(13)
      acd4(13)=acd4(5)*acd4(13)
      acd4(14)=acd4(10)*acd4(7)
      acd4(15)=acd4(12)*acd4(4)
      acd4(14)=acd4(15)+acd4(14)
      acd4(14)=acd4(11)*acd4(14)
      acd4(15)=acd4(2)*acd4(1)
      brack=acd4(13)+acd4(14)+2.0_ki*acd4(15)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd4h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd4
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd4h4
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
      qshift = k3+k5+k4
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
!---#[ subroutine reconstruct_d4:
   subroutine     reconstruct_d4(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_4:
      coeffs%coeffs_4%c0 = derivative(czip)
      coeffs%coeffs_4%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_4%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_4%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_4%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_4%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_4%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_4%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_4%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_4%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_4%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_4%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_4%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_4%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_4%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_4%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_4%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_4%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_4%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_4%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_4%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_4%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_4%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_4%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_4%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_4%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_4%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_4%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_4%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_4%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_4%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_4%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_4%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_4%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_4%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_4:
   end subroutine reconstruct_d4
!---#] subroutine reconstruct_d4:
end module     p0_gg_hhg_d4h4l1d
