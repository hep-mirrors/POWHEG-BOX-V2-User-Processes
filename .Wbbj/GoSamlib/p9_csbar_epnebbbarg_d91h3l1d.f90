module     p9_csbar_epnebbbarg_d91h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d91h3l1d.f90
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
   public :: derivative , reconstruct_d91
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd91h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd91
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd91h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd91
      complex(ki) :: brack
      acd91(1)=k1(iv1)
      acd91(2)=abb91(36)
      acd91(3)=k2(iv1)
      acd91(4)=abb91(41)
      acd91(5)=k3(iv1)
      acd91(6)=abb91(51)
      acd91(7)=k4(iv1)
      acd91(8)=l5(iv1)
      acd91(9)=abb91(44)
      acd91(10)=l6(iv1)
      acd91(11)=k7(iv1)
      acd91(12)=abb91(38)
      acd91(13)=e7(iv1)
      acd91(14)=abb91(22)
      acd91(15)=spvak2l5(iv1)
      acd91(16)=abb91(14)
      acd91(17)=spvak2l6(iv1)
      acd91(18)=abb91(17)
      acd91(19)=spvak4k1(iv1)
      acd91(20)=abb91(15)
      acd91(21)=spvak4k3(iv1)
      acd91(22)=abb91(29)
      acd91(23)=spvae7k1(iv1)
      acd91(24)=abb91(27)
      acd91(25)=-acd91(7)-acd91(5)
      acd91(25)=acd91(6)*acd91(25)
      acd91(26)=-acd91(10)-acd91(8)
      acd91(26)=acd91(9)*acd91(26)
      acd91(27)=-acd91(2)*acd91(1)
      acd91(28)=-acd91(4)*acd91(3)
      acd91(29)=-acd91(12)*acd91(11)
      acd91(30)=-acd91(14)*acd91(13)
      acd91(31)=-acd91(16)*acd91(15)
      acd91(32)=-acd91(18)*acd91(17)
      acd91(33)=-acd91(20)*acd91(19)
      acd91(34)=-acd91(22)*acd91(21)
      acd91(35)=-acd91(24)*acd91(23)
      brack=acd91(25)+acd91(26)+acd91(27)+acd91(28)+acd91(29)+acd91(30)+acd91(3&
      &1)+acd91(32)+acd91(33)+acd91(34)+acd91(35)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd91h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(43) :: acd91
      complex(ki) :: brack
      acd91(1)=k1(iv1)
      acd91(2)=spvak2l6(iv2)
      acd91(3)=abb91(24)
      acd91(4)=k1(iv2)
      acd91(5)=spvak2l6(iv1)
      acd91(6)=k2(iv1)
      acd91(7)=abb91(31)
      acd91(8)=k2(iv2)
      acd91(9)=k3(iv1)
      acd91(10)=abb91(37)
      acd91(11)=k3(iv2)
      acd91(12)=k4(iv1)
      acd91(13)=k4(iv2)
      acd91(14)=l5(iv1)
      acd91(15)=abb91(28)
      acd91(16)=l5(iv2)
      acd91(17)=l6(iv1)
      acd91(18)=l6(iv2)
      acd91(19)=k7(iv1)
      acd91(20)=abb91(32)
      acd91(21)=k7(iv2)
      acd91(22)=e7(iv1)
      acd91(23)=abb91(20)
      acd91(24)=e7(iv2)
      acd91(25)=spvak4k1(iv2)
      acd91(26)=abb91(12)
      acd91(27)=spvak4k3(iv2)
      acd91(28)=abb91(13)
      acd91(29)=spvae7k1(iv2)
      acd91(30)=abb91(11)
      acd91(31)=spvak4k1(iv1)
      acd91(32)=spvak4k3(iv1)
      acd91(33)=spvae7k1(iv1)
      acd91(34)=-acd91(17)-acd91(14)
      acd91(34)=acd91(34)*acd91(15)
      acd91(35)=-acd91(12)-acd91(9)
      acd91(35)=acd91(35)*acd91(10)
      acd91(36)=acd91(1)*acd91(3)
      acd91(37)=acd91(6)*acd91(7)
      acd91(38)=acd91(19)*acd91(20)
      acd91(39)=acd91(22)*acd91(23)
      acd91(40)=acd91(31)*acd91(26)
      acd91(41)=acd91(32)*acd91(28)
      acd91(42)=acd91(33)*acd91(30)
      acd91(34)=acd91(35)+acd91(34)+acd91(42)+acd91(41)+acd91(40)+acd91(39)+acd&
      &91(38)+acd91(37)+acd91(36)
      acd91(34)=acd91(2)*acd91(34)
      acd91(35)=-acd91(18)-acd91(16)
      acd91(35)=acd91(35)*acd91(15)
      acd91(36)=-acd91(13)-acd91(11)
      acd91(36)=acd91(36)*acd91(10)
      acd91(37)=acd91(4)*acd91(3)
      acd91(38)=acd91(8)*acd91(7)
      acd91(39)=acd91(21)*acd91(20)
      acd91(40)=acd91(24)*acd91(23)
      acd91(41)=acd91(25)*acd91(26)
      acd91(42)=acd91(27)*acd91(28)
      acd91(43)=acd91(29)*acd91(30)
      acd91(35)=acd91(36)+acd91(35)+acd91(43)+acd91(42)+acd91(41)+acd91(40)+acd&
      &91(39)+acd91(38)+acd91(37)
      acd91(35)=acd91(5)*acd91(35)
      brack=acd91(34)+acd91(35)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd91h3
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
!---#[ subroutine reconstruct_d91:
   subroutine     reconstruct_d91(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_91:
      coeffs%coeffs_91%c0 = derivative(czip)
      coeffs%coeffs_91%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_91%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_91%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_91%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_91%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_91%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_91%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_91%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_91%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_91%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_91%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_91%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_91%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_91%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_91:
   end subroutine reconstruct_d91
!---#] subroutine reconstruct_d91:
end module     p9_csbar_epnebbbarg_d91h3l1d
