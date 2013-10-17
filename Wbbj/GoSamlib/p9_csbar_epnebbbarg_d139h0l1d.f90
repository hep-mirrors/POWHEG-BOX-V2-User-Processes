module     p9_csbar_epnebbbarg_d139h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d139h0l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d139
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd139h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd139
      complex(ki) :: brack
      acd139(1)=dotproduct(k1,qshift)
      acd139(2)=dotproduct(e7,qshift)
      acd139(3)=abb139(13)
      acd139(4)=abb139(10)
      acd139(5)=dotproduct(k7,qshift)
      acd139(6)=abb139(9)
      acd139(7)=dotproduct(qshift,spvak7k1)
      acd139(8)=abb139(12)
      acd139(9)=abb139(28)
      acd139(10)=dotproduct(qshift,qshift)
      acd139(11)=abb139(14)
      acd139(12)=abb139(11)
      acd139(13)=dotproduct(qshift,spvak1k7)
      acd139(14)=abb139(16)
      acd139(15)=dotproduct(qshift,spvae7k1)
      acd139(16)=abb139(26)
      acd139(17)=abb139(15)
      acd139(18)=acd139(3)*acd139(1)
      acd139(19)=acd139(8)*acd139(7)
      acd139(18)=-acd139(9)+acd139(19)+acd139(18)
      acd139(18)=acd139(2)*acd139(18)
      acd139(19)=-acd139(4)*acd139(1)
      acd139(20)=-acd139(6)*acd139(5)
      acd139(21)=acd139(11)*acd139(10)
      acd139(22)=-acd139(12)*acd139(7)
      acd139(23)=-acd139(14)*acd139(13)
      acd139(24)=-acd139(16)*acd139(15)
      brack=acd139(17)+acd139(18)+acd139(19)+acd139(20)+acd139(21)+acd139(22)+a&
      &cd139(23)+acd139(24)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd139h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd139
      complex(ki) :: brack
      acd139(1)=k1(iv1)
      acd139(2)=dotproduct(e7,qshift)
      acd139(3)=abb139(13)
      acd139(4)=abb139(10)
      acd139(5)=k7(iv1)
      acd139(6)=abb139(9)
      acd139(7)=e7(iv1)
      acd139(8)=dotproduct(k1,qshift)
      acd139(9)=dotproduct(qshift,spvak7k1)
      acd139(10)=abb139(12)
      acd139(11)=abb139(28)
      acd139(12)=qshift(iv1)
      acd139(13)=abb139(14)
      acd139(14)=spvak7k1(iv1)
      acd139(15)=abb139(11)
      acd139(16)=spvak1k7(iv1)
      acd139(17)=abb139(16)
      acd139(18)=spvae7k1(iv1)
      acd139(19)=abb139(26)
      acd139(20)=-acd139(8)*acd139(3)
      acd139(21)=-acd139(9)*acd139(10)
      acd139(20)=acd139(11)+acd139(21)+acd139(20)
      acd139(20)=acd139(7)*acd139(20)
      acd139(21)=-acd139(3)*acd139(2)
      acd139(21)=acd139(4)+acd139(21)
      acd139(21)=acd139(1)*acd139(21)
      acd139(22)=-acd139(10)*acd139(2)
      acd139(22)=acd139(15)+acd139(22)
      acd139(22)=acd139(14)*acd139(22)
      acd139(23)=acd139(6)*acd139(5)
      acd139(24)=acd139(13)*acd139(12)
      acd139(25)=acd139(17)*acd139(16)
      acd139(26)=acd139(19)*acd139(18)
      brack=acd139(20)+acd139(21)+acd139(22)+acd139(23)-2.0_ki*acd139(24)+acd13&
      &9(25)+acd139(26)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd139h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(13) :: acd139
      complex(ki) :: brack
      acd139(1)=d(iv1,iv2)
      acd139(2)=abb139(14)
      acd139(3)=k1(iv1)
      acd139(4)=e7(iv2)
      acd139(5)=abb139(13)
      acd139(6)=k1(iv2)
      acd139(7)=e7(iv1)
      acd139(8)=spvak7k1(iv2)
      acd139(9)=abb139(12)
      acd139(10)=spvak7k1(iv1)
      acd139(11)=acd139(3)*acd139(4)
      acd139(12)=acd139(6)*acd139(7)
      acd139(11)=acd139(12)+acd139(11)
      acd139(11)=acd139(5)*acd139(11)
      acd139(12)=acd139(8)*acd139(7)
      acd139(13)=acd139(10)*acd139(4)
      acd139(12)=acd139(13)+acd139(12)
      acd139(12)=acd139(9)*acd139(12)
      acd139(13)=acd139(2)*acd139(1)
      brack=acd139(11)+acd139(12)+2.0_ki*acd139(13)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd139h0
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
      qshift = -k3+k2-k7-k4
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
!---#[ subroutine reconstruct_d139:
   subroutine     reconstruct_d139(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_139:
      coeffs%coeffs_139%c0 = derivative(czip)
      coeffs%coeffs_139%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_139%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_139%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_139%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_139%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_139%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_139%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_139%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_139%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_139%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_139%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_139%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_139%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_139%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_139:
   end subroutine reconstruct_d139
!---#] subroutine reconstruct_d139:
end module     p9_csbar_epnebbbarg_d139h0l1d