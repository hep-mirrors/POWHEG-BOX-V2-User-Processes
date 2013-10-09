module     p5_usbar_epnebbbarg_d93h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d93h0l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d93
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd93h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd93
      complex(ki) :: brack
      acd93(1)=dotproduct(k1,qshift)
      acd93(2)=dotproduct(qshift,spval6k2)
      acd93(3)=abb93(31)
      acd93(4)=abb93(23)
      acd93(5)=dotproduct(k2,qshift)
      acd93(6)=abb93(19)
      acd93(7)=dotproduct(l6,qshift)
      acd93(8)=abb93(29)
      acd93(9)=dotproduct(qshift,qshift)
      acd93(10)=abb93(20)
      acd93(11)=dotproduct(qshift,spvak2k1)
      acd93(12)=abb93(15)
      acd93(13)=dotproduct(qshift,spval5k1)
      acd93(14)=abb93(21)
      acd93(15)=dotproduct(qshift,spval6k1)
      acd93(16)=abb93(14)
      acd93(17)=abb93(17)
      acd93(18)=dotproduct(qshift,spvak1k2)
      acd93(19)=abb93(11)
      acd93(20)=dotproduct(qshift,spval5k2)
      acd93(21)=abb93(16)
      acd93(22)=abb93(13)
      acd93(23)=abb93(18)
      acd93(24)=acd93(3)*acd93(1)
      acd93(25)=acd93(12)*acd93(11)
      acd93(26)=acd93(14)*acd93(13)
      acd93(27)=acd93(16)*acd93(15)
      acd93(24)=-acd93(17)+acd93(27)+acd93(26)+acd93(25)+acd93(24)
      acd93(24)=acd93(2)*acd93(24)
      acd93(25)=-acd93(4)*acd93(1)
      acd93(26)=-acd93(6)*acd93(5)
      acd93(27)=-acd93(8)*acd93(7)
      acd93(28)=acd93(10)*acd93(9)
      acd93(29)=-acd93(19)*acd93(18)
      acd93(30)=-acd93(21)*acd93(20)
      acd93(31)=-acd93(22)*acd93(15)
      brack=acd93(23)+acd93(24)+acd93(25)+acd93(26)+acd93(27)+acd93(28)+acd93(2&
      &9)+acd93(30)+acd93(31)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd93h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd93
      complex(ki) :: brack
      acd93(1)=k1(iv1)
      acd93(2)=dotproduct(qshift,spval6k2)
      acd93(3)=abb93(31)
      acd93(4)=abb93(23)
      acd93(5)=k2(iv1)
      acd93(6)=abb93(19)
      acd93(7)=l6(iv1)
      acd93(8)=abb93(29)
      acd93(9)=qshift(iv1)
      acd93(10)=abb93(20)
      acd93(11)=spval6k2(iv1)
      acd93(12)=dotproduct(k1,qshift)
      acd93(13)=dotproduct(qshift,spvak2k1)
      acd93(14)=abb93(15)
      acd93(15)=dotproduct(qshift,spval5k1)
      acd93(16)=abb93(21)
      acd93(17)=dotproduct(qshift,spval6k1)
      acd93(18)=abb93(14)
      acd93(19)=abb93(17)
      acd93(20)=spvak1k2(iv1)
      acd93(21)=abb93(11)
      acd93(22)=spvak2k1(iv1)
      acd93(23)=spval5k1(iv1)
      acd93(24)=spval5k2(iv1)
      acd93(25)=abb93(16)
      acd93(26)=spval6k1(iv1)
      acd93(27)=abb93(13)
      acd93(28)=-acd93(3)*acd93(1)
      acd93(29)=-acd93(26)*acd93(18)
      acd93(30)=-acd93(22)*acd93(14)
      acd93(31)=-acd93(23)*acd93(16)
      acd93(28)=acd93(31)+acd93(30)+acd93(28)+acd93(29)
      acd93(28)=acd93(2)*acd93(28)
      acd93(29)=-acd93(12)*acd93(3)
      acd93(30)=-acd93(13)*acd93(14)
      acd93(31)=-acd93(15)*acd93(16)
      acd93(32)=-acd93(17)*acd93(18)
      acd93(29)=acd93(19)+acd93(32)+acd93(31)+acd93(30)+acd93(29)
      acd93(29)=acd93(11)*acd93(29)
      acd93(30)=acd93(4)*acd93(1)
      acd93(31)=acd93(6)*acd93(5)
      acd93(32)=acd93(8)*acd93(7)
      acd93(33)=acd93(10)*acd93(9)
      acd93(34)=acd93(21)*acd93(20)
      acd93(35)=acd93(25)*acd93(24)
      acd93(36)=acd93(27)*acd93(26)
      brack=acd93(28)+acd93(29)+acd93(30)+acd93(31)+acd93(32)-2.0_ki*acd93(33)+&
      &acd93(34)+acd93(35)+acd93(36)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd93h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd93
      complex(ki) :: brack
      acd93(1)=d(iv1,iv2)
      acd93(2)=abb93(20)
      acd93(3)=k1(iv1)
      acd93(4)=spval6k2(iv2)
      acd93(5)=abb93(31)
      acd93(6)=k1(iv2)
      acd93(7)=spval6k2(iv1)
      acd93(8)=spvak2k1(iv2)
      acd93(9)=abb93(15)
      acd93(10)=spval5k1(iv2)
      acd93(11)=abb93(21)
      acd93(12)=spval6k1(iv2)
      acd93(13)=abb93(14)
      acd93(14)=spvak2k1(iv1)
      acd93(15)=spval5k1(iv1)
      acd93(16)=spval6k1(iv1)
      acd93(17)=acd93(3)*acd93(5)
      acd93(18)=acd93(14)*acd93(9)
      acd93(19)=acd93(15)*acd93(11)
      acd93(20)=acd93(16)*acd93(13)
      acd93(17)=acd93(20)+acd93(19)+acd93(18)+acd93(17)
      acd93(17)=acd93(4)*acd93(17)
      acd93(18)=acd93(6)*acd93(5)
      acd93(19)=acd93(8)*acd93(9)
      acd93(20)=acd93(10)*acd93(11)
      acd93(21)=acd93(12)*acd93(13)
      acd93(18)=acd93(21)+acd93(20)+acd93(19)+acd93(18)
      acd93(18)=acd93(7)*acd93(18)
      acd93(19)=acd93(2)*acd93(1)
      brack=acd93(17)+acd93(18)+2.0_ki*acd93(19)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd93h0
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
      qshift = k6+k5
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
!---#[ subroutine reconstruct_d93:
   subroutine     reconstruct_d93(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_93:
      coeffs%coeffs_93%c0 = derivative(czip)
      coeffs%coeffs_93%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_93%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_93%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_93%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_93%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_93%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_93%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_93%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_93%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_93%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_93%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_93%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_93%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_93%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_93:
   end subroutine reconstruct_d93
!---#] subroutine reconstruct_d93:
end module     p5_usbar_epnebbbarg_d93h0l1d
