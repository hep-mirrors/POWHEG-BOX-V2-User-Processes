module     p9_csbar_epnebbbarg_d8h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d8h3l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d8
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd8h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd8
      complex(ki) :: brack
      acd8(1)=dotproduct(e7,qshift)
      acd8(2)=abb8(12)
      acd8(3)=dotproduct(qshift,spvak2k1)
      acd8(4)=abb8(9)
      acd8(5)=dotproduct(qshift,spvak2k3)
      acd8(6)=abb8(14)
      acd8(7)=dotproduct(qshift,spvak2l5)
      acd8(8)=abb8(11)
      acd8(9)=dotproduct(qshift,spvak2l6)
      acd8(10)=abb8(8)
      acd8(11)=dotproduct(qshift,spvak4k1)
      acd8(12)=abb8(22)
      acd8(13)=dotproduct(qshift,spvak4l6)
      acd8(14)=abb8(27)
      acd8(15)=dotproduct(qshift,spvak2e7)
      acd8(16)=abb8(26)
      acd8(17)=dotproduct(qshift,spvae7l6)
      acd8(18)=abb8(19)
      acd8(19)=abb8(10)
      acd8(20)=-acd8(2)*acd8(1)
      acd8(21)=-acd8(4)*acd8(3)
      acd8(22)=-acd8(6)*acd8(5)
      acd8(23)=-acd8(8)*acd8(7)
      acd8(24)=-acd8(10)*acd8(9)
      acd8(25)=-acd8(12)*acd8(11)
      acd8(26)=-acd8(14)*acd8(13)
      acd8(27)=-acd8(16)*acd8(15)
      acd8(28)=-acd8(18)*acd8(17)
      brack=acd8(19)+acd8(20)+acd8(21)+acd8(22)+acd8(23)+acd8(24)+acd8(25)+acd8&
      &(26)+acd8(27)+acd8(28)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd8h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd8
      complex(ki) :: brack
      acd8(1)=e7(iv1)
      acd8(2)=abb8(12)
      acd8(3)=spvak2k1(iv1)
      acd8(4)=abb8(9)
      acd8(5)=spvak2k3(iv1)
      acd8(6)=abb8(14)
      acd8(7)=spvak2l5(iv1)
      acd8(8)=abb8(11)
      acd8(9)=spvak2l6(iv1)
      acd8(10)=abb8(8)
      acd8(11)=spvak4k1(iv1)
      acd8(12)=abb8(22)
      acd8(13)=spvak4l6(iv1)
      acd8(14)=abb8(27)
      acd8(15)=spvak2e7(iv1)
      acd8(16)=abb8(26)
      acd8(17)=spvae7l6(iv1)
      acd8(18)=abb8(19)
      acd8(19)=-acd8(2)*acd8(1)
      acd8(20)=-acd8(4)*acd8(3)
      acd8(21)=-acd8(6)*acd8(5)
      acd8(22)=-acd8(8)*acd8(7)
      acd8(23)=-acd8(10)*acd8(9)
      acd8(24)=-acd8(12)*acd8(11)
      acd8(25)=-acd8(14)*acd8(13)
      acd8(26)=-acd8(16)*acd8(15)
      acd8(27)=-acd8(18)*acd8(17)
      brack=acd8(19)+acd8(20)+acd8(21)+acd8(22)+acd8(23)+acd8(24)+acd8(25)+acd8&
      &(26)+acd8(27)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd8h3
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k6
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
!---#[ subroutine reconstruct_d8:
   subroutine     reconstruct_d8(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_8:
      coeffs%coeffs_8%c0 = derivative(czip)
      coeffs%coeffs_8%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_8%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_8%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_8%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_8:
   end subroutine reconstruct_d8
!---#] subroutine reconstruct_d8:
end module     p9_csbar_epnebbbarg_d8h3l1d
