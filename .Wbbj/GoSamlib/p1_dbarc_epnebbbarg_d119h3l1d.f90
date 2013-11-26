module     p1_dbarc_epnebbbarg_d119h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d119h3l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d119
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd119h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd119
      complex(ki) :: brack
      acd119(1)=abb119(13)
      brack=acd119(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd119h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd119
      complex(ki) :: brack
      acd119(1)=k2(iv1)
      acd119(2)=abb119(10)
      acd119(3)=l6(iv1)
      acd119(4)=abb119(22)
      acd119(5)=spvak1k2(iv1)
      acd119(6)=abb119(9)
      acd119(7)=spvak1l6(iv1)
      acd119(8)=abb119(14)
      acd119(9)=spvak2l6(iv1)
      acd119(10)=abb119(25)
      acd119(11)=spvak4k2(iv1)
      acd119(12)=abb119(23)
      acd119(13)=spvak4l6(iv1)
      acd119(14)=abb119(20)
      acd119(15)=-acd119(2)*acd119(1)
      acd119(16)=-acd119(4)*acd119(3)
      acd119(17)=-acd119(6)*acd119(5)
      acd119(18)=-acd119(8)*acd119(7)
      acd119(19)=-acd119(10)*acd119(9)
      acd119(20)=-acd119(12)*acd119(11)
      acd119(21)=-acd119(14)*acd119(13)
      brack=acd119(15)+acd119(16)+acd119(17)+acd119(18)+acd119(19)+acd119(20)+a&
      &cd119(21)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd119h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd119
      complex(ki) :: brack
      acd119(1)=d(iv1,iv2)
      acd119(2)=abb119(22)
      acd119(3)=k2(iv1)
      acd119(4)=spvak1k2(iv2)
      acd119(5)=abb119(12)
      acd119(6)=spvak4k2(iv2)
      acd119(7)=abb119(17)
      acd119(8)=k2(iv2)
      acd119(9)=spvak1k2(iv1)
      acd119(10)=spvak4k2(iv1)
      acd119(11)=spvak2l5(iv2)
      acd119(12)=abb119(16)
      acd119(13)=spvak2k7(iv2)
      acd119(14)=abb119(18)
      acd119(15)=spvak2e7(iv2)
      acd119(16)=abb119(11)
      acd119(17)=spvak2l5(iv1)
      acd119(18)=spvak2k7(iv1)
      acd119(19)=spvak2e7(iv1)
      acd119(20)=abb119(15)
      acd119(21)=abb119(29)
      acd119(22)=abb119(19)
      acd119(23)=acd119(15)*acd119(22)
      acd119(24)=acd119(13)*acd119(21)
      acd119(25)=acd119(11)*acd119(20)
      acd119(26)=acd119(7)*acd119(8)
      acd119(23)=acd119(26)+acd119(25)+acd119(23)+acd119(24)
      acd119(23)=acd119(10)*acd119(23)
      acd119(24)=acd119(15)*acd119(16)
      acd119(25)=acd119(13)*acd119(14)
      acd119(26)=acd119(11)*acd119(12)
      acd119(27)=acd119(5)*acd119(8)
      acd119(24)=acd119(27)+acd119(26)+acd119(24)+acd119(25)
      acd119(24)=acd119(9)*acd119(24)
      acd119(25)=acd119(19)*acd119(22)
      acd119(26)=acd119(18)*acd119(21)
      acd119(27)=acd119(17)*acd119(20)
      acd119(28)=acd119(3)*acd119(7)
      acd119(25)=acd119(28)+acd119(27)+acd119(25)+acd119(26)
      acd119(25)=acd119(6)*acd119(25)
      acd119(26)=acd119(16)*acd119(19)
      acd119(27)=acd119(14)*acd119(18)
      acd119(28)=acd119(12)*acd119(17)
      acd119(29)=acd119(3)*acd119(5)
      acd119(26)=acd119(29)+acd119(28)+acd119(26)+acd119(27)
      acd119(26)=acd119(4)*acd119(26)
      acd119(27)=acd119(1)*acd119(2)
      brack=acd119(23)+acd119(24)+acd119(25)+acd119(26)+2.0_ki*acd119(27)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd119h3
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
!---#[ subroutine reconstruct_d119:
   subroutine     reconstruct_d119(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_119:
      coeffs%coeffs_119%c0 = derivative(czip)
      coeffs%coeffs_119%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_119%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_119%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_119%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_119%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_119%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_119%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_119%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_119%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_119%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_119%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_119%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_119%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_119%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_119:
   end subroutine reconstruct_d119
!---#] subroutine reconstruct_d119:
end module     p1_dbarc_epnebbbarg_d119h3l1d
