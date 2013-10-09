module     p5_usbar_epnebbbarg_d40h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d40h0l1d.f90
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
   public :: derivative , reconstruct_d40
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd40h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd40
      complex(ki) :: brack
      acd40(1)=abb40(27)
      brack=acd40(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd40h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(30) :: acd40
      complex(ki) :: brack
      acd40(1)=k1(iv1)
      acd40(2)=abb40(46)
      acd40(3)=k2(iv1)
      acd40(4)=abb40(14)
      acd40(5)=k3(iv1)
      acd40(6)=k4(iv1)
      acd40(7)=l5(iv1)
      acd40(8)=abb40(40)
      acd40(9)=l6(iv1)
      acd40(10)=k7(iv1)
      acd40(11)=abb40(39)
      acd40(12)=spvak4k1(iv1)
      acd40(13)=abb40(22)
      acd40(14)=spvak4k3(iv1)
      acd40(15)=abb40(20)
      acd40(16)=spval5k2(iv1)
      acd40(17)=abb40(10)
      acd40(18)=spval6k2(iv1)
      acd40(19)=abb40(17)
      acd40(20)=spvak7k2(iv1)
      acd40(21)=abb40(15)
      acd40(22)=-acd40(9)-acd40(7)
      acd40(22)=acd40(8)*acd40(22)
      acd40(23)=acd40(6)+acd40(5)-acd40(1)
      acd40(23)=acd40(2)*acd40(23)
      acd40(24)=acd40(4)*acd40(3)
      acd40(25)=acd40(11)*acd40(10)
      acd40(26)=acd40(13)*acd40(12)
      acd40(27)=acd40(15)*acd40(14)
      acd40(28)=acd40(17)*acd40(16)
      acd40(29)=acd40(19)*acd40(18)
      acd40(30)=acd40(21)*acd40(20)
      brack=acd40(22)+acd40(23)+acd40(24)+acd40(25)+acd40(26)+acd40(27)+acd40(2&
      &8)+acd40(29)+acd40(30)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd40h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd40
      complex(ki) :: brack
      acd40(1)=d(iv1,iv2)
      acd40(2)=abb40(13)
      acd40(3)=k1(iv1)
      acd40(4)=spval5k2(iv2)
      acd40(5)=abb40(11)
      acd40(6)=spval6k2(iv2)
      acd40(7)=abb40(30)
      acd40(8)=k1(iv2)
      acd40(9)=spval5k2(iv1)
      acd40(10)=spval6k2(iv1)
      acd40(11)=k3(iv1)
      acd40(12)=k3(iv2)
      acd40(13)=k4(iv1)
      acd40(14)=k4(iv2)
      acd40(15)=spvak4k1(iv2)
      acd40(16)=abb40(16)
      acd40(17)=spvak4k3(iv2)
      acd40(18)=abb40(21)
      acd40(19)=spvak7k1(iv2)
      acd40(20)=abb40(12)
      acd40(21)=spvak7k3(iv2)
      acd40(22)=abb40(19)
      acd40(23)=spvak4k1(iv1)
      acd40(24)=spvak4k3(iv1)
      acd40(25)=spvak7k1(iv1)
      acd40(26)=spvak7k3(iv1)
      acd40(27)=abb40(18)
      acd40(28)=abb40(23)
      acd40(29)=abb40(32)
      acd40(30)=abb40(35)
      acd40(31)=acd40(21)*acd40(30)
      acd40(32)=acd40(19)*acd40(29)
      acd40(33)=acd40(17)*acd40(28)
      acd40(34)=acd40(15)*acd40(27)
      acd40(35)=-acd40(14)+acd40(8)-acd40(12)
      acd40(36)=acd40(7)*acd40(35)
      acd40(31)=acd40(36)+acd40(34)+acd40(33)+acd40(31)+acd40(32)
      acd40(31)=acd40(10)*acd40(31)
      acd40(32)=acd40(21)*acd40(22)
      acd40(33)=acd40(19)*acd40(20)
      acd40(34)=acd40(17)*acd40(18)
      acd40(36)=acd40(15)*acd40(16)
      acd40(35)=acd40(5)*acd40(35)
      acd40(32)=acd40(35)+acd40(36)+acd40(34)+acd40(32)+acd40(33)
      acd40(32)=acd40(9)*acd40(32)
      acd40(33)=acd40(26)*acd40(30)
      acd40(34)=acd40(25)*acd40(29)
      acd40(35)=acd40(24)*acd40(28)
      acd40(36)=acd40(23)*acd40(27)
      acd40(37)=-acd40(13)+acd40(3)-acd40(11)
      acd40(38)=acd40(7)*acd40(37)
      acd40(33)=acd40(38)+acd40(36)+acd40(35)+acd40(33)+acd40(34)
      acd40(33)=acd40(6)*acd40(33)
      acd40(34)=acd40(22)*acd40(26)
      acd40(35)=acd40(20)*acd40(25)
      acd40(36)=acd40(18)*acd40(24)
      acd40(38)=acd40(16)*acd40(23)
      acd40(37)=acd40(5)*acd40(37)
      acd40(34)=acd40(37)+acd40(38)+acd40(36)+acd40(34)+acd40(35)
      acd40(34)=acd40(4)*acd40(34)
      acd40(35)=acd40(1)*acd40(2)
      brack=acd40(31)+acd40(32)+acd40(33)+acd40(34)+2.0_ki*acd40(35)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd40h0
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
!---#[ subroutine reconstruct_d40:
   subroutine     reconstruct_d40(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_40:
      coeffs%coeffs_40%c0 = derivative(czip)
      coeffs%coeffs_40%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_40%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_40%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_40%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_40%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_40%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_40%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_40%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_40%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_40%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_40%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_40%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_40%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_40%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_40:
   end subroutine reconstruct_d40
!---#] subroutine reconstruct_d40:
end module     p5_usbar_epnebbbarg_d40h0l1d
