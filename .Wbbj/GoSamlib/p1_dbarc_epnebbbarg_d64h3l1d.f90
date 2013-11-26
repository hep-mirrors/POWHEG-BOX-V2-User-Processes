module     p1_dbarc_epnebbbarg_d64h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d64h3l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d64
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd64h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(22) :: acd64
      complex(ki) :: brack
      acd64(1)=dotproduct(k2,qshift)
      acd64(2)=abb64(15)
      acd64(3)=dotproduct(l5,qshift)
      acd64(4)=abb64(31)
      acd64(5)=dotproduct(l6,qshift)
      acd64(6)=abb64(30)
      acd64(7)=dotproduct(qshift,spvak2l5)
      acd64(8)=abb64(11)
      acd64(9)=dotproduct(qshift,spvak2l6)
      acd64(10)=abb64(23)
      acd64(11)=dotproduct(qshift,spval5l6)
      acd64(12)=abb64(21)
      acd64(13)=dotproduct(qshift,spval6l5)
      acd64(14)=abb64(16)
      acd64(15)=abb64(29)
      acd64(16)=-acd64(2)*acd64(1)
      acd64(17)=-acd64(4)*acd64(3)
      acd64(18)=-acd64(6)*acd64(5)
      acd64(19)=-acd64(8)*acd64(7)
      acd64(20)=-acd64(10)*acd64(9)
      acd64(21)=-acd64(12)*acd64(11)
      acd64(22)=-acd64(14)*acd64(13)
      brack=acd64(15)+acd64(16)+acd64(17)+acd64(18)+acd64(19)+acd64(20)+acd64(2&
      &1)+acd64(22)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd64h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd64
      complex(ki) :: brack
      acd64(1)=k2(iv1)
      acd64(2)=abb64(15)
      acd64(3)=l5(iv1)
      acd64(4)=abb64(31)
      acd64(5)=l6(iv1)
      acd64(6)=abb64(30)
      acd64(7)=spvak2l5(iv1)
      acd64(8)=abb64(11)
      acd64(9)=spvak2l6(iv1)
      acd64(10)=abb64(23)
      acd64(11)=spval5l6(iv1)
      acd64(12)=abb64(21)
      acd64(13)=spval6l5(iv1)
      acd64(14)=abb64(16)
      acd64(15)=acd64(2)*acd64(1)
      acd64(16)=acd64(4)*acd64(3)
      acd64(17)=acd64(6)*acd64(5)
      acd64(18)=acd64(8)*acd64(7)
      acd64(19)=acd64(10)*acd64(9)
      acd64(20)=acd64(12)*acd64(11)
      acd64(21)=acd64(14)*acd64(13)
      brack=acd64(15)+acd64(16)+acd64(17)+acd64(18)+acd64(19)+acd64(20)+acd64(2&
      &1)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd64h3
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k6+k5
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d64:
   subroutine     reconstruct_d64(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_64:
      coeffs%coeffs_64%c0 = derivative(czip)
      coeffs%coeffs_64%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_64%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_64%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_64%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_64:
   end subroutine reconstruct_d64
!---#] subroutine reconstruct_d64:
end module     p1_dbarc_epnebbbarg_d64h3l1d
