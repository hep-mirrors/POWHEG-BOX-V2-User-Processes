module     p3_usbar_epnebbbar_d9h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p3_usbar_epnebbbar/helicity1d9h1l1d.f90
   ! generator: buildfortran_d.py
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d9
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd9h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd9
      complex(ki) :: brack
      acd9(1)=dotproduct(qshift,qshift)
      acd9(2)=abb9(10)
      acd9(3)=dotproduct(qshift,spvak2k1)
      acd9(4)=dotproduct(qshift,spvak4k3)
      acd9(5)=abb9(7)
      acd9(6)=dotproduct(qshift,spval6k1)
      acd9(7)=abb9(12)
      acd9(8)=dotproduct(qshift,spvak2k3)
      acd9(9)=abb9(13)
      acd9(10)=dotproduct(qshift,spval6k3)
      acd9(11)=abb9(17)
      acd9(12)=acd9(6)*acd9(7)
      acd9(13)=acd9(3)*acd9(5)
      acd9(12)=acd9(12)+acd9(13)
      acd9(12)=acd9(4)*acd9(12)
      acd9(13)=-acd9(10)*acd9(11)
      acd9(14)=-acd9(8)*acd9(9)
      acd9(15)=acd9(1)*acd9(2)
      brack=acd9(12)+acd9(13)+acd9(14)+acd9(15)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd9h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(19) :: acd9
      complex(ki) :: brack
      acd9(1)=qshift(iv1)
      acd9(2)=abb9(10)
      acd9(3)=spvak2k1(iv1)
      acd9(4)=dotproduct(qshift,spvak4k3)
      acd9(5)=abb9(7)
      acd9(6)=spvak4k3(iv1)
      acd9(7)=dotproduct(qshift,spvak2k1)
      acd9(8)=dotproduct(qshift,spval6k1)
      acd9(9)=abb9(12)
      acd9(10)=spvak2k3(iv1)
      acd9(11)=abb9(13)
      acd9(12)=spval6k1(iv1)
      acd9(13)=spval6k3(iv1)
      acd9(14)=abb9(17)
      acd9(15)=-acd9(9)*acd9(8)
      acd9(16)=-acd9(5)*acd9(7)
      acd9(15)=acd9(16)+acd9(15)
      acd9(15)=acd9(6)*acd9(15)
      acd9(16)=-acd9(9)*acd9(12)
      acd9(17)=-acd9(5)*acd9(3)
      acd9(16)=acd9(16)+acd9(17)
      acd9(16)=acd9(4)*acd9(16)
      acd9(17)=acd9(13)*acd9(14)
      acd9(18)=acd9(10)*acd9(11)
      acd9(19)=acd9(1)*acd9(2)
      brack=acd9(15)+acd9(16)+acd9(17)+acd9(18)-2.0_ki*acd9(19)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd9h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(13) :: acd9
      complex(ki) :: brack
      acd9(1)=d(iv1,iv2)
      acd9(2)=abb9(10)
      acd9(3)=spvak2k1(iv1)
      acd9(4)=spvak4k3(iv2)
      acd9(5)=abb9(7)
      acd9(6)=spvak2k1(iv2)
      acd9(7)=spvak4k3(iv1)
      acd9(8)=spval6k1(iv2)
      acd9(9)=abb9(12)
      acd9(10)=spval6k1(iv1)
      acd9(11)=acd9(9)*acd9(8)
      acd9(12)=acd9(5)*acd9(6)
      acd9(11)=acd9(12)+acd9(11)
      acd9(11)=acd9(7)*acd9(11)
      acd9(12)=acd9(9)*acd9(10)
      acd9(13)=acd9(5)*acd9(3)
      acd9(12)=acd9(12)+acd9(13)
      acd9(12)=acd9(4)*acd9(12)
      acd9(13)=acd9(1)*acd9(2)
      brack=acd9(11)+acd9(12)+2.0_ki*acd9(13)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd9h1
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
!---#[ subroutine reconstruct_d9:
   subroutine     reconstruct_d9(coeffs)
      use p3_usbar_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_9:
      coeffs%coeffs_9%c0 = derivative(czip)
      coeffs%coeffs_9%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_9%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_9%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_9%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_9%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_9%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_9%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_9%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_9%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_9%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_9%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_9%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_9%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_9%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_9:
   end subroutine reconstruct_d9
!---#] subroutine reconstruct_d9:
end module     p3_usbar_epnebbbar_d9h1l1d
