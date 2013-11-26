module     p9_csbar_epnebbbarg_d58h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d58h3l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d58
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd58h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(19) :: acd58
      complex(ki) :: brack
      acd58(1)=dotproduct(k1,qshift)
      acd58(2)=abb58(17)
      acd58(3)=dotproduct(k7,qshift)
      acd58(4)=abb58(22)
      acd58(5)=dotproduct(e7,qshift)
      acd58(6)=abb58(13)
      acd58(7)=dotproduct(qshift,spvak1k7)
      acd58(8)=abb58(10)
      acd58(9)=dotproduct(qshift,spvak7k1)
      acd58(10)=abb58(9)
      acd58(11)=dotproduct(qshift,spvae7k1)
      acd58(12)=abb58(8)
      acd58(13)=abb58(14)
      acd58(14)=-acd58(2)*acd58(1)
      acd58(15)=-acd58(4)*acd58(3)
      acd58(16)=-acd58(6)*acd58(5)
      acd58(17)=-acd58(8)*acd58(7)
      acd58(18)=-acd58(10)*acd58(9)
      acd58(19)=-acd58(12)*acd58(11)
      brack=acd58(13)+acd58(14)+acd58(15)+acd58(16)+acd58(17)+acd58(18)+acd58(1&
      &9)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd58h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd58
      complex(ki) :: brack
      acd58(1)=k1(iv1)
      acd58(2)=abb58(17)
      acd58(3)=k7(iv1)
      acd58(4)=abb58(22)
      acd58(5)=e7(iv1)
      acd58(6)=abb58(13)
      acd58(7)=spvak1k7(iv1)
      acd58(8)=abb58(10)
      acd58(9)=spvak7k1(iv1)
      acd58(10)=abb58(9)
      acd58(11)=spvae7k1(iv1)
      acd58(12)=abb58(8)
      acd58(13)=-acd58(2)*acd58(1)
      acd58(14)=-acd58(4)*acd58(3)
      acd58(15)=-acd58(6)*acd58(5)
      acd58(16)=-acd58(8)*acd58(7)
      acd58(17)=-acd58(10)*acd58(9)
      acd58(18)=-acd58(12)*acd58(11)
      brack=acd58(13)+acd58(14)+acd58(15)+acd58(16)+acd58(17)+acd58(18)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd58h3
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k6-k5
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
!---#[ subroutine reconstruct_d58:
   subroutine     reconstruct_d58(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_58:
      coeffs%coeffs_58%c0 = derivative(czip)
      coeffs%coeffs_58%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_58%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_58%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_58%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_58:
   end subroutine reconstruct_d58
!---#] subroutine reconstruct_d58:
end module     p9_csbar_epnebbbarg_d58h3l1d
