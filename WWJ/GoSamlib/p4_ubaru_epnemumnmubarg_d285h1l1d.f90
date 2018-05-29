module     p4_ubaru_epnemumnmubarg_d285h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity1d285h1l1d.f90
   ! generator: buildfortran_d.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d285
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd285h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(19) :: acd285
      complex(ki) :: brack
      acd285(1)=dotproduct(k7,qshift)
      acd285(2)=dotproduct(qshift,spvak4k3)
      acd285(3)=abb285(16)
      acd285(4)=dotproduct(qshift,qshift)
      acd285(5)=abb285(13)
      acd285(6)=dotproduct(qshift,spvak1k7)
      acd285(7)=abb285(8)
      acd285(8)=dotproduct(qshift,spvak2k7)
      acd285(9)=abb285(10)
      acd285(10)=dotproduct(qshift,spvak5k7)
      acd285(11)=abb285(17)
      acd285(12)=dotproduct(qshift,spvak1k3)
      acd285(13)=abb285(9)
      acd285(14)=dotproduct(qshift,spvak5k3)
      acd285(15)=abb285(11)
      acd285(16)=acd285(3)*acd285(1)
      acd285(17)=acd285(7)*acd285(6)
      acd285(18)=acd285(9)*acd285(8)
      acd285(19)=acd285(11)*acd285(10)
      acd285(16)=acd285(19)+acd285(18)+acd285(17)+acd285(16)
      acd285(16)=acd285(2)*acd285(16)
      acd285(17)=acd285(5)*acd285(4)
      acd285(18)=-acd285(13)*acd285(12)
      acd285(19)=-acd285(15)*acd285(14)
      brack=acd285(16)+acd285(17)+acd285(18)+acd285(19)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd285h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd285
      complex(ki) :: brack
      acd285(1)=k7(iv1)
      acd285(2)=dotproduct(qshift,spvak4k3)
      acd285(3)=abb285(16)
      acd285(4)=qshift(iv1)
      acd285(5)=abb285(13)
      acd285(6)=spvak4k3(iv1)
      acd285(7)=dotproduct(k7,qshift)
      acd285(8)=dotproduct(qshift,spvak1k7)
      acd285(9)=abb285(8)
      acd285(10)=dotproduct(qshift,spvak2k7)
      acd285(11)=abb285(10)
      acd285(12)=dotproduct(qshift,spvak5k7)
      acd285(13)=abb285(17)
      acd285(14)=spvak1k3(iv1)
      acd285(15)=abb285(9)
      acd285(16)=spvak1k7(iv1)
      acd285(17)=spvak2k7(iv1)
      acd285(18)=spvak5k7(iv1)
      acd285(19)=spvak5k3(iv1)
      acd285(20)=abb285(11)
      acd285(21)=-acd285(1)*acd285(3)
      acd285(22)=-acd285(16)*acd285(9)
      acd285(23)=-acd285(17)*acd285(11)
      acd285(24)=-acd285(18)*acd285(13)
      acd285(21)=acd285(24)+acd285(23)+acd285(22)+acd285(21)
      acd285(21)=acd285(2)*acd285(21)
      acd285(22)=-acd285(7)*acd285(3)
      acd285(23)=-acd285(8)*acd285(9)
      acd285(24)=-acd285(10)*acd285(11)
      acd285(25)=-acd285(12)*acd285(13)
      acd285(22)=acd285(25)+acd285(24)+acd285(23)+acd285(22)
      acd285(22)=acd285(6)*acd285(22)
      acd285(23)=acd285(5)*acd285(4)
      acd285(24)=acd285(15)*acd285(14)
      acd285(25)=acd285(20)*acd285(19)
      brack=acd285(21)+acd285(22)-2.0_ki*acd285(23)+acd285(24)+acd285(25)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd285h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd285
      complex(ki) :: brack
      acd285(1)=d(iv1,iv2)
      acd285(2)=abb285(13)
      acd285(3)=k7(iv1)
      acd285(4)=spvak4k3(iv2)
      acd285(5)=abb285(16)
      acd285(6)=k7(iv2)
      acd285(7)=spvak4k3(iv1)
      acd285(8)=spvak1k7(iv2)
      acd285(9)=abb285(8)
      acd285(10)=spvak2k7(iv2)
      acd285(11)=abb285(10)
      acd285(12)=spvak5k7(iv2)
      acd285(13)=abb285(17)
      acd285(14)=spvak1k7(iv1)
      acd285(15)=spvak2k7(iv1)
      acd285(16)=spvak5k7(iv1)
      acd285(17)=acd285(3)*acd285(5)
      acd285(18)=acd285(14)*acd285(9)
      acd285(19)=acd285(15)*acd285(11)
      acd285(20)=acd285(16)*acd285(13)
      acd285(17)=acd285(20)+acd285(19)+acd285(18)+acd285(17)
      acd285(17)=acd285(4)*acd285(17)
      acd285(18)=acd285(6)*acd285(5)
      acd285(19)=acd285(8)*acd285(9)
      acd285(20)=acd285(10)*acd285(11)
      acd285(21)=acd285(12)*acd285(13)
      acd285(18)=acd285(21)+acd285(20)+acd285(19)+acd285(18)
      acd285(18)=acd285(7)*acd285(18)
      acd285(19)=acd285(2)*acd285(1)
      brack=acd285(17)+acd285(18)+2.0_ki*acd285(19)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd285h1
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
!---#[ subroutine reconstruct_d285:
   subroutine     reconstruct_d285(coeffs)
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_285:
      coeffs%coeffs_285%c0 = derivative(czip)
      coeffs%coeffs_285%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_285%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_285%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_285%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_285%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_285%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_285%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_285%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_285%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_285%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_285%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_285%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_285%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_285%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_285:
   end subroutine reconstruct_d285
!---#] subroutine reconstruct_d285:
end module     p4_ubaru_epnemumnmubarg_d285h1l1d
