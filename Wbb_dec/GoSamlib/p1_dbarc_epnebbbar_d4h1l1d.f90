module     p1_dbarc_epnebbbar_d4h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p1_dbarc_epnebbbar/helicity1d4h1l1d.f90
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
   public :: derivative , reconstruct_d4
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd4h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd4
      complex(ki) :: brack
      acd4(1)=abb4(20)
      brack=acd4(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd4h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd4
      complex(ki) :: brack
      acd4(1)=k2(iv1)
      acd4(2)=abb4(19)
      acd4(3)=l5(iv1)
      acd4(4)=abb4(25)
      acd4(5)=l6(iv1)
      acd4(6)=spvak1k2(iv1)
      acd4(7)=abb4(13)
      acd4(8)=spvak1l5(iv1)
      acd4(9)=abb4(14)
      acd4(10)=spvak4k2(iv1)
      acd4(11)=abb4(9)
      acd4(12)=spvak4l5(iv1)
      acd4(13)=abb4(10)
      acd4(14)=spval5k2(iv1)
      acd4(15)=abb4(12)
      acd4(16)=spval6k2(iv1)
      acd4(17)=abb4(11)
      acd4(18)=spval6l5(iv1)
      acd4(19)=abb4(29)
      acd4(20)=acd4(5)+acd4(3)
      acd4(20)=acd4(4)*acd4(20)
      acd4(21)=acd4(2)*acd4(1)
      acd4(22)=acd4(7)*acd4(6)
      acd4(23)=acd4(9)*acd4(8)
      acd4(24)=acd4(11)*acd4(10)
      acd4(25)=acd4(13)*acd4(12)
      acd4(26)=acd4(15)*acd4(14)
      acd4(27)=acd4(17)*acd4(16)
      acd4(28)=acd4(19)*acd4(18)
      brack=acd4(20)+acd4(21)+acd4(22)+acd4(23)+acd4(24)+acd4(25)+acd4(26)+acd4&
      &(27)+acd4(28)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd4h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(19) :: acd4
      complex(ki) :: brack
      acd4(1)=d(iv1,iv2)
      acd4(2)=abb4(16)
      acd4(3)=k2(iv1)
      acd4(4)=spvak1k2(iv2)
      acd4(5)=abb4(15)
      acd4(6)=spvak4k2(iv2)
      acd4(7)=abb4(26)
      acd4(8)=k2(iv2)
      acd4(9)=spvak1k2(iv1)
      acd4(10)=spvak4k2(iv1)
      acd4(11)=spval6l5(iv2)
      acd4(12)=abb4(8)
      acd4(13)=spval6l5(iv1)
      acd4(14)=abb4(17)
      acd4(15)=acd4(5)*acd4(4)
      acd4(16)=acd4(7)*acd4(6)
      acd4(15)=acd4(15)+acd4(16)
      acd4(15)=acd4(3)*acd4(15)
      acd4(16)=acd4(9)*acd4(5)
      acd4(17)=acd4(10)*acd4(7)
      acd4(16)=acd4(17)+acd4(16)
      acd4(16)=acd4(8)*acd4(16)
      acd4(17)=acd4(11)*acd4(9)
      acd4(18)=acd4(13)*acd4(4)
      acd4(17)=acd4(18)+acd4(17)
      acd4(17)=acd4(12)*acd4(17)
      acd4(18)=acd4(11)*acd4(10)
      acd4(19)=acd4(13)*acd4(6)
      acd4(18)=acd4(18)+acd4(19)
      acd4(18)=acd4(14)*acd4(18)
      acd4(19)=acd4(2)*acd4(1)
      brack=acd4(15)+acd4(16)+acd4(17)+acd4(18)+2.0_ki*acd4(19)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd4h1
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
!---#[ subroutine reconstruct_d4:
   subroutine     reconstruct_d4(coeffs)
      use p1_dbarc_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_4:
      coeffs%coeffs_4%c0 = derivative(czip)
      coeffs%coeffs_4%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_4%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_4%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_4%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_4%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_4%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_4%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_4%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_4%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_4%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_4%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_4%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_4%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_4%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_4:
   end subroutine reconstruct_d4
!---#] subroutine reconstruct_d4:
end module     p1_dbarc_epnebbbar_d4h1l1d
