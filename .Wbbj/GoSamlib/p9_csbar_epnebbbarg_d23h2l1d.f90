module     p9_csbar_epnebbbarg_d23h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d23h2l1d.f90
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
   public :: derivative , reconstruct_d23
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd23h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd23
      complex(ki) :: brack
      acd23(1)=dotproduct(k1,qshift)
      acd23(2)=dotproduct(qshift,spvak4k3)
      acd23(3)=abb23(16)
      acd23(4)=dotproduct(k3,qshift)
      acd23(5)=abb23(31)
      acd23(6)=dotproduct(qshift,qshift)
      acd23(7)=abb23(32)
      acd23(8)=dotproduct(qshift,spvak3k1)
      acd23(9)=abb23(14)
      acd23(10)=dotproduct(qshift,spvak4k1)
      acd23(11)=abb23(30)
      acd23(12)=abb23(45)
      acd23(13)=dotproduct(qshift,spvak1k3)
      acd23(14)=abb23(15)
      acd23(15)=acd23(3)*acd23(1)
      acd23(16)=acd23(9)*acd23(8)
      acd23(17)=acd23(11)*acd23(10)
      acd23(15)=-acd23(12)+acd23(17)+acd23(16)+acd23(15)
      acd23(15)=acd23(2)*acd23(15)
      acd23(16)=-acd23(5)*acd23(4)
      acd23(17)=acd23(7)*acd23(6)
      acd23(18)=-acd23(14)*acd23(13)
      brack=acd23(15)+acd23(16)+acd23(17)+acd23(18)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd23h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(23) :: acd23
      complex(ki) :: brack
      acd23(1)=k1(iv1)
      acd23(2)=dotproduct(qshift,spvak4k3)
      acd23(3)=abb23(16)
      acd23(4)=k3(iv1)
      acd23(5)=abb23(31)
      acd23(6)=qshift(iv1)
      acd23(7)=abb23(32)
      acd23(8)=spvak4k3(iv1)
      acd23(9)=dotproduct(k1,qshift)
      acd23(10)=dotproduct(qshift,spvak3k1)
      acd23(11)=abb23(14)
      acd23(12)=dotproduct(qshift,spvak4k1)
      acd23(13)=abb23(30)
      acd23(14)=abb23(45)
      acd23(15)=spvak1k3(iv1)
      acd23(16)=abb23(15)
      acd23(17)=spvak3k1(iv1)
      acd23(18)=spvak4k1(iv1)
      acd23(19)=-acd23(1)*acd23(3)
      acd23(20)=-acd23(17)*acd23(11)
      acd23(21)=-acd23(18)*acd23(13)
      acd23(19)=acd23(21)+acd23(20)+acd23(19)
      acd23(19)=acd23(2)*acd23(19)
      acd23(20)=-acd23(9)*acd23(3)
      acd23(21)=-acd23(10)*acd23(11)
      acd23(22)=-acd23(12)*acd23(13)
      acd23(20)=acd23(14)+acd23(22)+acd23(21)+acd23(20)
      acd23(20)=acd23(8)*acd23(20)
      acd23(21)=acd23(5)*acd23(4)
      acd23(22)=acd23(7)*acd23(6)
      acd23(23)=acd23(16)*acd23(15)
      brack=acd23(19)+acd23(20)+acd23(21)-2.0_ki*acd23(22)+acd23(23)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd23h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(17) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=abb23(32)
      acd23(3)=k1(iv1)
      acd23(4)=spvak4k3(iv2)
      acd23(5)=abb23(16)
      acd23(6)=k1(iv2)
      acd23(7)=spvak4k3(iv1)
      acd23(8)=spvak3k1(iv2)
      acd23(9)=abb23(14)
      acd23(10)=spvak4k1(iv2)
      acd23(11)=abb23(30)
      acd23(12)=spvak3k1(iv1)
      acd23(13)=spvak4k1(iv1)
      acd23(14)=acd23(3)*acd23(5)
      acd23(15)=acd23(12)*acd23(9)
      acd23(16)=acd23(13)*acd23(11)
      acd23(14)=acd23(16)+acd23(15)+acd23(14)
      acd23(14)=acd23(4)*acd23(14)
      acd23(15)=acd23(6)*acd23(5)
      acd23(16)=acd23(8)*acd23(9)
      acd23(17)=acd23(10)*acd23(11)
      acd23(15)=acd23(17)+acd23(16)+acd23(15)
      acd23(15)=acd23(7)*acd23(15)
      acd23(16)=acd23(2)*acd23(1)
      brack=acd23(14)+acd23(15)+2.0_ki*acd23(16)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd23h2
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
!---#[ subroutine reconstruct_d23:
   subroutine     reconstruct_d23(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_23:
      coeffs%coeffs_23%c0 = derivative(czip)
      coeffs%coeffs_23%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_23%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_23%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_23%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_23%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_23%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_23%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_23%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_23%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_23%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_23%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_23%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_23%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_23%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_23:
   end subroutine reconstruct_d23
!---#] subroutine reconstruct_d23:
end module     p9_csbar_epnebbbarg_d23h2l1d
