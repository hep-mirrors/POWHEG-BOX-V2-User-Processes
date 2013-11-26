module     p1_dbarc_epnebbbarg_d40h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d40h3l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
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
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd40h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd40
      complex(ki) :: brack
      acd40(1)=abb40(13)
      brack=acd40(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd40h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd40
      complex(ki) :: brack
      acd40(1)=k2(iv1)
      acd40(2)=abb40(50)
      acd40(3)=l5(iv1)
      acd40(4)=abb40(57)
      acd40(5)=l6(iv1)
      acd40(6)=k7(iv1)
      acd40(7)=abb40(63)
      acd40(8)=e7(iv1)
      acd40(9)=abb40(37)
      acd40(10)=spvak1l5(iv1)
      acd40(11)=abb40(14)
      acd40(12)=spvak1l6(iv1)
      acd40(13)=abb40(19)
      acd40(14)=spvak2l5(iv1)
      acd40(15)=abb40(26)
      acd40(16)=spvak2l6(iv1)
      acd40(17)=abb40(25)
      acd40(18)=spvak4l5(iv1)
      acd40(19)=abb40(20)
      acd40(20)=spvak4l6(iv1)
      acd40(21)=abb40(40)
      acd40(22)=spvae7k2(iv1)
      acd40(23)=abb40(10)
      acd40(24)=acd40(5)+acd40(3)
      acd40(24)=acd40(4)*acd40(24)
      acd40(25)=acd40(2)*acd40(1)
      acd40(26)=acd40(7)*acd40(6)
      acd40(27)=acd40(9)*acd40(8)
      acd40(28)=acd40(11)*acd40(10)
      acd40(29)=acd40(13)*acd40(12)
      acd40(30)=acd40(15)*acd40(14)
      acd40(31)=acd40(17)*acd40(16)
      acd40(32)=acd40(19)*acd40(18)
      acd40(33)=acd40(21)*acd40(20)
      acd40(34)=acd40(23)*acd40(22)
      brack=acd40(24)+acd40(25)+acd40(26)+acd40(27)+acd40(28)+acd40(29)+acd40(3&
      &0)+acd40(31)+acd40(32)+acd40(33)+acd40(34)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd40h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd40
      complex(ki) :: brack
      acd40(1)=d(iv1,iv2)
      acd40(2)=abb40(17)
      acd40(3)=k2(iv1)
      acd40(4)=spvak2l5(iv2)
      acd40(5)=abb40(12)
      acd40(6)=spvak2l6(iv2)
      acd40(7)=abb40(15)
      acd40(8)=k2(iv2)
      acd40(9)=spvak2l5(iv1)
      acd40(10)=spvak2l6(iv1)
      acd40(11)=k7(iv1)
      acd40(12)=k7(iv2)
      acd40(13)=e7(iv1)
      acd40(14)=abb40(38)
      acd40(15)=abb40(45)
      acd40(16)=e7(iv2)
      acd40(17)=spvak1k7(iv2)
      acd40(18)=abb40(28)
      acd40(19)=spvak4k7(iv2)
      acd40(20)=abb40(27)
      acd40(21)=spvae7k2(iv2)
      acd40(22)=abb40(22)
      acd40(23)=spvak1k7(iv1)
      acd40(24)=spvak4k7(iv1)
      acd40(25)=spvae7k2(iv1)
      acd40(26)=abb40(23)
      acd40(27)=abb40(11)
      acd40(28)=abb40(18)
      acd40(29)=acd40(21)*acd40(28)
      acd40(30)=acd40(19)*acd40(27)
      acd40(31)=acd40(17)*acd40(26)
      acd40(32)=acd40(15)*acd40(16)
      acd40(33)=acd40(8)-acd40(12)
      acd40(34)=-acd40(7)*acd40(33)
      acd40(29)=acd40(34)+acd40(32)+acd40(31)+acd40(29)+acd40(30)
      acd40(29)=acd40(10)*acd40(29)
      acd40(30)=acd40(21)*acd40(22)
      acd40(31)=acd40(19)*acd40(20)
      acd40(32)=acd40(17)*acd40(18)
      acd40(34)=acd40(14)*acd40(16)
      acd40(33)=-acd40(5)*acd40(33)
      acd40(30)=acd40(33)+acd40(34)+acd40(32)+acd40(30)+acd40(31)
      acd40(30)=acd40(9)*acd40(30)
      acd40(31)=acd40(25)*acd40(28)
      acd40(32)=acd40(24)*acd40(27)
      acd40(33)=acd40(23)*acd40(26)
      acd40(34)=acd40(13)*acd40(15)
      acd40(35)=acd40(3)-acd40(11)
      acd40(36)=-acd40(7)*acd40(35)
      acd40(31)=acd40(36)+acd40(34)+acd40(33)+acd40(31)+acd40(32)
      acd40(31)=acd40(6)*acd40(31)
      acd40(32)=acd40(22)*acd40(25)
      acd40(33)=acd40(20)*acd40(24)
      acd40(34)=acd40(18)*acd40(23)
      acd40(36)=acd40(13)*acd40(14)
      acd40(35)=-acd40(5)*acd40(35)
      acd40(32)=acd40(35)+acd40(36)+acd40(34)+acd40(32)+acd40(33)
      acd40(32)=acd40(4)*acd40(32)
      acd40(33)=acd40(1)*acd40(2)
      brack=acd40(29)+acd40(30)+acd40(31)+acd40(32)+2.0_ki*acd40(33)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd40h3
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
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group15
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
end module     p1_dbarc_epnebbbarg_d40h3l1d
