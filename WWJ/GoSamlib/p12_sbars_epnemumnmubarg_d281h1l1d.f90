module     p12_sbars_epnemumnmubarg_d281h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity1d281h1l1d.f90
   ! generator: buildfortran_d.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d281
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd281h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(19) :: acd281
      complex(ki) :: brack
      acd281(1)=dotproduct(k7,qshift)
      acd281(2)=dotproduct(qshift,spvak5k6)
      acd281(3)=abb281(15)
      acd281(4)=dotproduct(qshift,qshift)
      acd281(5)=abb281(13)
      acd281(6)=dotproduct(qshift,spvak1k7)
      acd281(7)=abb281(8)
      acd281(8)=dotproduct(qshift,spvak2k7)
      acd281(9)=abb281(10)
      acd281(10)=dotproduct(qshift,spvak4k7)
      acd281(11)=abb281(16)
      acd281(12)=dotproduct(qshift,spvak1k6)
      acd281(13)=abb281(9)
      acd281(14)=dotproduct(qshift,spvak4k6)
      acd281(15)=abb281(11)
      acd281(16)=acd281(3)*acd281(1)
      acd281(17)=acd281(7)*acd281(6)
      acd281(18)=acd281(9)*acd281(8)
      acd281(19)=acd281(11)*acd281(10)
      acd281(16)=acd281(19)+acd281(18)+acd281(17)+acd281(16)
      acd281(16)=acd281(2)*acd281(16)
      acd281(17)=acd281(5)*acd281(4)
      acd281(18)=-acd281(13)*acd281(12)
      acd281(19)=-acd281(15)*acd281(14)
      brack=acd281(16)+acd281(17)+acd281(18)+acd281(19)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd281h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd281
      complex(ki) :: brack
      acd281(1)=k7(iv1)
      acd281(2)=dotproduct(qshift,spvak5k6)
      acd281(3)=abb281(15)
      acd281(4)=qshift(iv1)
      acd281(5)=abb281(13)
      acd281(6)=spvak5k6(iv1)
      acd281(7)=dotproduct(k7,qshift)
      acd281(8)=dotproduct(qshift,spvak1k7)
      acd281(9)=abb281(8)
      acd281(10)=dotproduct(qshift,spvak2k7)
      acd281(11)=abb281(10)
      acd281(12)=dotproduct(qshift,spvak4k7)
      acd281(13)=abb281(16)
      acd281(14)=spvak1k6(iv1)
      acd281(15)=abb281(9)
      acd281(16)=spvak1k7(iv1)
      acd281(17)=spvak2k7(iv1)
      acd281(18)=spvak4k6(iv1)
      acd281(19)=abb281(11)
      acd281(20)=spvak4k7(iv1)
      acd281(21)=-acd281(1)*acd281(3)
      acd281(22)=-acd281(16)*acd281(9)
      acd281(23)=-acd281(17)*acd281(11)
      acd281(24)=-acd281(20)*acd281(13)
      acd281(21)=acd281(24)+acd281(23)+acd281(22)+acd281(21)
      acd281(21)=acd281(2)*acd281(21)
      acd281(22)=-acd281(7)*acd281(3)
      acd281(23)=-acd281(8)*acd281(9)
      acd281(24)=-acd281(10)*acd281(11)
      acd281(25)=-acd281(12)*acd281(13)
      acd281(22)=acd281(25)+acd281(24)+acd281(23)+acd281(22)
      acd281(22)=acd281(6)*acd281(22)
      acd281(23)=acd281(5)*acd281(4)
      acd281(24)=acd281(15)*acd281(14)
      acd281(25)=acd281(19)*acd281(18)
      brack=acd281(21)+acd281(22)-2.0_ki*acd281(23)+acd281(24)+acd281(25)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd281h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd281
      complex(ki) :: brack
      acd281(1)=d(iv1,iv2)
      acd281(2)=abb281(13)
      acd281(3)=k7(iv1)
      acd281(4)=spvak5k6(iv2)
      acd281(5)=abb281(15)
      acd281(6)=k7(iv2)
      acd281(7)=spvak5k6(iv1)
      acd281(8)=spvak1k7(iv2)
      acd281(9)=abb281(8)
      acd281(10)=spvak2k7(iv2)
      acd281(11)=abb281(10)
      acd281(12)=spvak4k7(iv2)
      acd281(13)=abb281(16)
      acd281(14)=spvak1k7(iv1)
      acd281(15)=spvak2k7(iv1)
      acd281(16)=spvak4k7(iv1)
      acd281(17)=acd281(3)*acd281(5)
      acd281(18)=acd281(14)*acd281(9)
      acd281(19)=acd281(15)*acd281(11)
      acd281(20)=acd281(16)*acd281(13)
      acd281(17)=acd281(20)+acd281(19)+acd281(18)+acd281(17)
      acd281(17)=acd281(4)*acd281(17)
      acd281(18)=acd281(6)*acd281(5)
      acd281(19)=acd281(8)*acd281(9)
      acd281(20)=acd281(10)*acd281(11)
      acd281(21)=acd281(12)*acd281(13)
      acd281(18)=acd281(21)+acd281(20)+acd281(19)+acd281(18)
      acd281(18)=acd281(7)*acd281(18)
      acd281(19)=acd281(2)*acd281(1)
      brack=acd281(17)+acd281(18)+2.0_ki*acd281(19)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd281h1
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
      qshift = k7
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
!---#[ subroutine reconstruct_d281:
   subroutine     reconstruct_d281(coeffs)
      use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_281:
      coeffs%coeffs_281%c0 = derivative(czip)
      coeffs%coeffs_281%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_281%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_281%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_281%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_281%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_281%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_281%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_281%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_281%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_281%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_281%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_281%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_281%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_281%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_281:
   end subroutine reconstruct_d281
!---#] subroutine reconstruct_d281:
end module     p12_sbars_epnemumnmubarg_d281h1l1d
