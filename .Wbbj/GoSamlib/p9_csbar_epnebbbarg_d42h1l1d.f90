module     p9_csbar_epnebbbarg_d42h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d42h1l1d.f90
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
   public :: derivative , reconstruct_d42
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd42h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd42
      complex(ki) :: brack
      acd42(1)=dotproduct(k1,qshift)
      acd42(2)=dotproduct(qshift,spvak4k3)
      acd42(3)=abb42(12)
      acd42(4)=dotproduct(k7,qshift)
      acd42(5)=dotproduct(e7,qshift)
      acd42(6)=abb42(10)
      acd42(7)=dotproduct(qshift,qshift)
      acd42(8)=abb42(26)
      acd42(9)=dotproduct(qshift,spvak2k1)
      acd42(10)=abb42(15)
      acd42(11)=dotproduct(qshift,spvak2k7)
      acd42(12)=abb42(13)
      acd42(13)=dotproduct(qshift,spval6k1)
      acd42(14)=abb42(11)
      acd42(15)=dotproduct(qshift,spval6k7)
      acd42(16)=abb42(9)
      acd42(17)=dotproduct(qshift,spvae7k1)
      acd42(18)=abb42(8)
      acd42(19)=dotproduct(qshift,spvak2k3)
      acd42(20)=abb42(14)
      acd42(21)=dotproduct(qshift,spval6k3)
      acd42(22)=abb42(25)
      acd42(23)=acd42(1)-acd42(4)
      acd42(23)=acd42(23)*acd42(3)
      acd42(24)=acd42(6)*acd42(5)
      acd42(25)=acd42(10)*acd42(9)
      acd42(26)=acd42(12)*acd42(11)
      acd42(27)=acd42(14)*acd42(13)
      acd42(28)=acd42(16)*acd42(15)
      acd42(29)=acd42(18)*acd42(17)
      acd42(23)=acd42(23)+acd42(29)+acd42(28)+acd42(27)+acd42(26)+acd42(25)+acd&
      &42(24)
      acd42(23)=acd42(2)*acd42(23)
      acd42(24)=acd42(8)*acd42(7)
      acd42(25)=-acd42(20)*acd42(19)
      acd42(26)=-acd42(22)*acd42(21)
      brack=acd42(23)+acd42(24)+acd42(25)+acd42(26)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd42h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd42
      complex(ki) :: brack
      acd42(1)=k1(iv1)
      acd42(2)=dotproduct(qshift,spvak4k3)
      acd42(3)=abb42(12)
      acd42(4)=k7(iv1)
      acd42(5)=e7(iv1)
      acd42(6)=abb42(10)
      acd42(7)=qshift(iv1)
      acd42(8)=abb42(26)
      acd42(9)=spvak4k3(iv1)
      acd42(10)=dotproduct(k1,qshift)
      acd42(11)=dotproduct(k7,qshift)
      acd42(12)=dotproduct(e7,qshift)
      acd42(13)=dotproduct(qshift,spvak2k1)
      acd42(14)=abb42(15)
      acd42(15)=dotproduct(qshift,spvak2k7)
      acd42(16)=abb42(13)
      acd42(17)=dotproduct(qshift,spval6k1)
      acd42(18)=abb42(11)
      acd42(19)=dotproduct(qshift,spval6k7)
      acd42(20)=abb42(9)
      acd42(21)=dotproduct(qshift,spvae7k1)
      acd42(22)=abb42(8)
      acd42(23)=spvak2k1(iv1)
      acd42(24)=spvak2k3(iv1)
      acd42(25)=abb42(14)
      acd42(26)=spvak2k7(iv1)
      acd42(27)=spval6k1(iv1)
      acd42(28)=spval6k7(iv1)
      acd42(29)=spvae7k1(iv1)
      acd42(30)=spval6k3(iv1)
      acd42(31)=abb42(25)
      acd42(32)=-acd42(22)*acd42(21)
      acd42(33)=-acd42(20)*acd42(19)
      acd42(34)=-acd42(18)*acd42(17)
      acd42(35)=-acd42(16)*acd42(15)
      acd42(36)=-acd42(14)*acd42(13)
      acd42(37)=-acd42(6)*acd42(12)
      acd42(38)=acd42(11)-acd42(10)
      acd42(38)=acd42(3)*acd42(38)
      acd42(32)=acd42(38)+acd42(37)+acd42(36)+acd42(35)+acd42(34)+acd42(32)+acd&
      &42(33)
      acd42(32)=acd42(9)*acd42(32)
      acd42(33)=-acd42(22)*acd42(29)
      acd42(34)=-acd42(20)*acd42(28)
      acd42(35)=-acd42(18)*acd42(27)
      acd42(36)=-acd42(16)*acd42(26)
      acd42(37)=-acd42(14)*acd42(23)
      acd42(38)=-acd42(6)*acd42(5)
      acd42(39)=acd42(4)-acd42(1)
      acd42(39)=acd42(3)*acd42(39)
      acd42(33)=acd42(39)+acd42(38)+acd42(37)+acd42(36)+acd42(35)+acd42(33)+acd&
      &42(34)
      acd42(33)=acd42(2)*acd42(33)
      acd42(34)=acd42(30)*acd42(31)
      acd42(35)=acd42(24)*acd42(25)
      acd42(36)=acd42(7)*acd42(8)
      brack=acd42(32)+acd42(33)+acd42(34)+acd42(35)-2.0_ki*acd42(36)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd42h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd42
      complex(ki) :: brack
      acd42(1)=d(iv1,iv2)
      acd42(2)=abb42(26)
      acd42(3)=k1(iv1)
      acd42(4)=spvak4k3(iv2)
      acd42(5)=abb42(12)
      acd42(6)=k1(iv2)
      acd42(7)=spvak4k3(iv1)
      acd42(8)=k7(iv1)
      acd42(9)=k7(iv2)
      acd42(10)=e7(iv1)
      acd42(11)=abb42(10)
      acd42(12)=e7(iv2)
      acd42(13)=spvak2k1(iv2)
      acd42(14)=abb42(15)
      acd42(15)=spvak2k7(iv2)
      acd42(16)=abb42(13)
      acd42(17)=spval6k1(iv2)
      acd42(18)=abb42(11)
      acd42(19)=spval6k7(iv2)
      acd42(20)=abb42(9)
      acd42(21)=spvae7k1(iv2)
      acd42(22)=abb42(8)
      acd42(23)=spvak2k1(iv1)
      acd42(24)=spvak2k7(iv1)
      acd42(25)=spval6k1(iv1)
      acd42(26)=spval6k7(iv1)
      acd42(27)=spvae7k1(iv1)
      acd42(28)=acd42(22)*acd42(21)
      acd42(29)=acd42(20)*acd42(19)
      acd42(30)=acd42(18)*acd42(17)
      acd42(31)=acd42(16)*acd42(15)
      acd42(32)=acd42(14)*acd42(13)
      acd42(33)=acd42(11)*acd42(12)
      acd42(34)=-acd42(9)+acd42(6)
      acd42(34)=acd42(5)*acd42(34)
      acd42(28)=acd42(34)+acd42(33)+acd42(32)+acd42(31)+acd42(30)+acd42(28)+acd&
      &42(29)
      acd42(28)=acd42(7)*acd42(28)
      acd42(29)=acd42(22)*acd42(27)
      acd42(30)=acd42(20)*acd42(26)
      acd42(31)=acd42(18)*acd42(25)
      acd42(32)=acd42(16)*acd42(24)
      acd42(33)=acd42(14)*acd42(23)
      acd42(34)=acd42(11)*acd42(10)
      acd42(35)=-acd42(8)+acd42(3)
      acd42(35)=acd42(5)*acd42(35)
      acd42(29)=acd42(35)+acd42(34)+acd42(33)+acd42(32)+acd42(31)+acd42(29)+acd&
      &42(30)
      acd42(29)=acd42(4)*acd42(29)
      acd42(30)=acd42(1)*acd42(2)
      brack=acd42(28)+acd42(29)+2.0_ki*acd42(30)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd42h1
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
      qshift = -k3+k2-k4
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
!---#[ subroutine reconstruct_d42:
   subroutine     reconstruct_d42(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_42:
      coeffs%coeffs_42%c0 = derivative(czip)
      coeffs%coeffs_42%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_42%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_42%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_42%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_42%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_42%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_42%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_42%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_42%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_42%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_42%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_42%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_42%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_42%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_42:
   end subroutine reconstruct_d42
!---#] subroutine reconstruct_d42:
end module     p9_csbar_epnebbbarg_d42h1l1d
