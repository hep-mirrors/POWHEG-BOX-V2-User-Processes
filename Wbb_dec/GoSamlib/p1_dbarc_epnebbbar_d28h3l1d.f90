module     p1_dbarc_epnebbbar_d28h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p1_dbarc_epnebbbar/helicity3d28h3l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d28
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd28h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd28
      complex(ki) :: brack
      acd28(1)=abb28(14)
      brack=acd28(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd28h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd28
      complex(ki) :: brack
      acd28(1)=k2(iv1)
      acd28(2)=abb28(7)
      acd28(3)=l5(iv1)
      acd28(4)=abb28(21)
      acd28(5)=spvak1k2(iv1)
      acd28(6)=abb28(11)
      acd28(7)=spvak1l5(iv1)
      acd28(8)=abb28(8)
      acd28(9)=spvak2l5(iv1)
      acd28(10)=abb28(17)
      acd28(11)=spvak4k2(iv1)
      acd28(12)=abb28(12)
      acd28(13)=spvak4l5(iv1)
      acd28(14)=abb28(9)
      acd28(15)=-acd28(2)*acd28(1)
      acd28(16)=-acd28(4)*acd28(3)
      acd28(17)=-acd28(6)*acd28(5)
      acd28(18)=-acd28(8)*acd28(7)
      acd28(19)=-acd28(10)*acd28(9)
      acd28(20)=-acd28(12)*acd28(11)
      acd28(21)=-acd28(14)*acd28(13)
      brack=acd28(15)+acd28(16)+acd28(17)+acd28(18)+acd28(19)+acd28(20)+acd28(2&
      &1)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd28h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd28
      complex(ki) :: brack
      acd28(1)=k2(iv1)
      acd28(2)=spvak1l5(iv2)
      acd28(3)=abb28(19)
      acd28(4)=spvak4l5(iv2)
      acd28(5)=abb28(10)
      acd28(6)=k2(iv2)
      acd28(7)=spvak1l5(iv1)
      acd28(8)=spvak4l5(iv1)
      acd28(9)=spvak1k2(iv1)
      acd28(10)=spvak2l5(iv2)
      acd28(11)=abb28(16)
      acd28(12)=spvak2l6(iv2)
      acd28(13)=abb28(15)
      acd28(14)=spvak1k2(iv2)
      acd28(15)=spvak2l5(iv1)
      acd28(16)=spvak2l6(iv1)
      acd28(17)=spvak4k2(iv2)
      acd28(18)=abb28(18)
      acd28(19)=spvak4k2(iv1)
      acd28(20)=abb28(13)
      acd28(21)=acd28(12)*acd28(20)
      acd28(22)=acd28(10)*acd28(18)
      acd28(21)=acd28(22)+acd28(21)
      acd28(21)=acd28(19)*acd28(21)
      acd28(22)=acd28(16)*acd28(20)
      acd28(23)=acd28(15)*acd28(18)
      acd28(22)=acd28(22)+acd28(23)
      acd28(22)=acd28(17)*acd28(22)
      acd28(23)=acd28(13)*acd28(16)
      acd28(24)=acd28(11)*acd28(15)
      acd28(23)=acd28(24)+acd28(23)
      acd28(23)=acd28(14)*acd28(23)
      acd28(24)=acd28(5)*acd28(8)
      acd28(25)=acd28(3)*acd28(7)
      acd28(24)=acd28(25)+acd28(24)
      acd28(24)=acd28(6)*acd28(24)
      acd28(25)=acd28(12)*acd28(13)
      acd28(26)=acd28(10)*acd28(11)
      acd28(25)=acd28(25)+acd28(26)
      acd28(25)=acd28(9)*acd28(25)
      acd28(26)=acd28(5)*acd28(4)
      acd28(27)=acd28(3)*acd28(2)
      acd28(26)=acd28(26)+acd28(27)
      acd28(26)=acd28(1)*acd28(26)
      brack=acd28(21)+acd28(22)+acd28(23)+acd28(24)+acd28(25)+acd28(26)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd28h3
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d28:
   subroutine     reconstruct_d28(coeffs)
      use p1_dbarc_epnebbbar_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_28:
      coeffs%coeffs_28%c0 = derivative(czip)
      coeffs%coeffs_28%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_28%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_28%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_28%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_28%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_28%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_28%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_28%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_28%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_28%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_28%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_28%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_28%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_28%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_28:
   end subroutine reconstruct_d28
!---#] subroutine reconstruct_d28:
end module     p1_dbarc_epnebbbar_d28h3l1d
