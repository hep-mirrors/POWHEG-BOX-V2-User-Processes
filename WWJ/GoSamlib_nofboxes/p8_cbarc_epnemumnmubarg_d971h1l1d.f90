module     p8_cbarc_epnemumnmubarg_d971h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity1d971h1l1d.f90
   ! generator: buildfortran_d.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d971
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd971h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd971
      complex(ki) :: brack
      acd971(1)=abb971(23)
      brack=acd971(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd971h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(23) :: acd971
      complex(ki) :: brack
      acd971(1)=k2(iv1)
      acd971(2)=abb971(29)
      acd971(3)=k3(iv1)
      acd971(4)=k4(iv1)
      acd971(5)=k7(iv1)
      acd971(6)=abb971(25)
      acd971(7)=spvak1k7(iv1)
      acd971(8)=abb971(8)
      acd971(9)=spvak2k7(iv1)
      acd971(10)=abb971(19)
      acd971(11)=spvak4k2(iv1)
      acd971(12)=abb971(14)
      acd971(13)=spvak4k3(iv1)
      acd971(14)=abb971(9)
      acd971(15)=spvak5k7(iv1)
      acd971(16)=abb971(35)
      acd971(17)=acd971(4)-acd971(1)+acd971(3)
      acd971(17)=acd971(2)*acd971(17)
      acd971(18)=-acd971(6)*acd971(5)
      acd971(19)=-acd971(8)*acd971(7)
      acd971(20)=-acd971(10)*acd971(9)
      acd971(21)=-acd971(12)*acd971(11)
      acd971(22)=-acd971(14)*acd971(13)
      acd971(23)=-acd971(16)*acd971(15)
      brack=acd971(17)+acd971(18)+acd971(19)+acd971(20)+acd971(21)+acd971(22)+a&
      &cd971(23)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd971h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd971
      complex(ki) :: brack
      acd971(1)=d(iv1,iv2)
      acd971(2)=abb971(16)
      acd971(3)=k2(iv1)
      acd971(4)=spvak2k7(iv2)
      acd971(5)=abb971(12)
      acd971(6)=k2(iv2)
      acd971(7)=spvak2k7(iv1)
      acd971(8)=k3(iv1)
      acd971(9)=k3(iv2)
      acd971(10)=k4(iv1)
      acd971(11)=k4(iv2)
      acd971(12)=spvak1k2(iv2)
      acd971(13)=abb971(13)
      acd971(14)=spvak1k3(iv2)
      acd971(15)=abb971(10)
      acd971(16)=spvak4k2(iv2)
      acd971(17)=abb971(11)
      acd971(18)=spvak4k3(iv2)
      acd971(19)=abb971(24)
      acd971(20)=spvak5k2(iv2)
      acd971(21)=abb971(17)
      acd971(22)=spvak5k3(iv2)
      acd971(23)=abb971(22)
      acd971(24)=spvak1k2(iv1)
      acd971(25)=spvak1k3(iv1)
      acd971(26)=spvak4k2(iv1)
      acd971(27)=spvak4k3(iv1)
      acd971(28)=spvak5k2(iv1)
      acd971(29)=spvak5k3(iv1)
      acd971(30)=acd971(23)*acd971(22)
      acd971(31)=acd971(21)*acd971(20)
      acd971(32)=acd971(19)*acd971(18)
      acd971(33)=acd971(17)*acd971(16)
      acd971(34)=acd971(15)*acd971(14)
      acd971(35)=acd971(13)*acd971(12)
      acd971(36)=acd971(6)-acd971(11)-acd971(9)
      acd971(36)=acd971(5)*acd971(36)
      acd971(30)=acd971(36)+acd971(35)+acd971(34)+acd971(33)+acd971(32)+acd971(&
      &30)+acd971(31)
      acd971(30)=acd971(7)*acd971(30)
      acd971(31)=acd971(23)*acd971(29)
      acd971(32)=acd971(21)*acd971(28)
      acd971(33)=acd971(19)*acd971(27)
      acd971(34)=acd971(17)*acd971(26)
      acd971(35)=acd971(15)*acd971(25)
      acd971(36)=acd971(13)*acd971(24)
      acd971(37)=acd971(3)-acd971(10)-acd971(8)
      acd971(37)=acd971(5)*acd971(37)
      acd971(31)=acd971(37)+acd971(36)+acd971(35)+acd971(34)+acd971(33)+acd971(&
      &31)+acd971(32)
      acd971(31)=acd971(4)*acd971(31)
      acd971(32)=acd971(1)*acd971(2)
      brack=acd971(30)+acd971(31)+2.0_ki*acd971(32)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd971h1
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
!---#[ subroutine reconstruct_d971:
   subroutine     reconstruct_d971(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_971:
      coeffs%coeffs_971%c0 = derivative(czip)
      coeffs%coeffs_971%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_971%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_971%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_971%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_971%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_971%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_971%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_971%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_971%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_971%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_971%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_971%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_971%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_971%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_971:
   end subroutine reconstruct_d971
!---#] subroutine reconstruct_d971:
end module     p8_cbarc_epnemumnmubarg_d971h1l1d
