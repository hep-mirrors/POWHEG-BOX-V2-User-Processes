module     p12_sbars_epnemumnmubarg_d599h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity1d599h1l1d.f90
   ! generator: buildfortran_d.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d599
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd599h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd599
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd599h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd599
      complex(ki) :: brack
      acd599(1)=k2(iv1)
      acd599(2)=abb599(10)
      acd599(3)=spvak1k6(iv1)
      acd599(4)=abb599(22)
      acd599(5)=spvak1k7(iv1)
      acd599(6)=abb599(31)
      acd599(7)=spvak4k6(iv1)
      acd599(8)=abb599(24)
      acd599(9)=spvak4k7(iv1)
      acd599(10)=abb599(25)
      acd599(11)=spvak7k2(iv1)
      acd599(12)=abb599(8)
      acd599(13)=-acd599(2)*acd599(1)
      acd599(14)=-acd599(4)*acd599(3)
      acd599(15)=-acd599(6)*acd599(5)
      acd599(16)=-acd599(8)*acd599(7)
      acd599(17)=-acd599(10)*acd599(9)
      acd599(18)=-acd599(12)*acd599(11)
      brack=acd599(13)+acd599(14)+acd599(15)+acd599(16)+acd599(17)+acd599(18)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd599h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd599
      complex(ki) :: brack
      acd599(1)=d(iv1,iv2)
      acd599(2)=abb599(17)
      acd599(3)=k2(iv1)
      acd599(4)=k7(iv2)
      acd599(5)=abb599(13)
      acd599(6)=k2(iv2)
      acd599(7)=k7(iv1)
      acd599(8)=spvak1k6(iv2)
      acd599(9)=abb599(9)
      acd599(10)=spvak4k6(iv2)
      acd599(11)=abb599(28)
      acd599(12)=spvak5k2(iv2)
      acd599(13)=abb599(21)
      acd599(14)=spvak1k6(iv1)
      acd599(15)=spvak4k6(iv1)
      acd599(16)=spvak5k2(iv1)
      acd599(17)=spvak2k7(iv2)
      acd599(18)=abb599(15)
      acd599(19)=spvak2k7(iv1)
      acd599(20)=abb599(16)
      acd599(21)=abb599(7)
      acd599(22)=spvak1k7(iv2)
      acd599(23)=abb599(12)
      acd599(24)=spvak4k7(iv2)
      acd599(25)=abb599(30)
      acd599(26)=spvak7k2(iv2)
      acd599(27)=abb599(11)
      acd599(28)=spvak1k7(iv1)
      acd599(29)=spvak4k7(iv1)
      acd599(30)=spvak7k2(iv1)
      acd599(31)=spvak5k6(iv2)
      acd599(32)=abb599(19)
      acd599(33)=spvak5k6(iv1)
      acd599(34)=abb599(26)
      acd599(35)=acd599(27)*acd599(26)
      acd599(36)=acd599(24)*acd599(25)
      acd599(37)=acd599(22)*acd599(23)
      acd599(38)=acd599(12)*acd599(21)
      acd599(39)=acd599(10)*acd599(20)
      acd599(40)=acd599(8)*acd599(18)
      acd599(35)=acd599(40)+acd599(39)+acd599(38)+acd599(37)+acd599(35)+acd599(&
      &36)
      acd599(35)=acd599(19)*acd599(35)
      acd599(36)=acd599(27)*acd599(30)
      acd599(37)=acd599(25)*acd599(29)
      acd599(38)=acd599(23)*acd599(28)
      acd599(39)=acd599(16)*acd599(21)
      acd599(40)=acd599(15)*acd599(20)
      acd599(41)=acd599(14)*acd599(18)
      acd599(36)=acd599(41)+acd599(40)+acd599(39)+acd599(38)+acd599(36)+acd599(&
      &37)
      acd599(36)=acd599(17)*acd599(36)
      acd599(37)=acd599(12)*acd599(13)
      acd599(38)=acd599(10)*acd599(11)
      acd599(39)=acd599(8)*acd599(9)
      acd599(40)=acd599(5)*acd599(6)
      acd599(37)=acd599(40)+acd599(39)+acd599(37)+acd599(38)
      acd599(37)=acd599(7)*acd599(37)
      acd599(38)=acd599(13)*acd599(16)
      acd599(39)=acd599(11)*acd599(15)
      acd599(40)=acd599(9)*acd599(14)
      acd599(41)=acd599(5)*acd599(3)
      acd599(38)=acd599(41)+acd599(40)+acd599(38)+acd599(39)
      acd599(38)=acd599(4)*acd599(38)
      acd599(39)=-acd599(24)*acd599(34)
      acd599(40)=-acd599(22)*acd599(32)
      acd599(39)=acd599(40)+acd599(39)
      acd599(39)=acd599(33)*acd599(39)
      acd599(40)=-acd599(29)*acd599(34)
      acd599(41)=-acd599(28)*acd599(32)
      acd599(40)=acd599(41)+acd599(40)
      acd599(40)=acd599(31)*acd599(40)
      acd599(41)=acd599(1)*acd599(2)
      brack=acd599(35)+acd599(36)+acd599(37)+acd599(38)+acd599(39)+acd599(40)+2&
      &.0_ki*acd599(41)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd599h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd599
      complex(ki) :: brack
      acd599(1)=d(iv1,iv2)
      acd599(2)=k2(iv3)
      acd599(3)=abb599(11)
      acd599(4)=spvak1k6(iv3)
      acd599(5)=abb599(27)
      acd599(6)=spvak4k6(iv3)
      acd599(7)=abb599(29)
      acd599(8)=spvak5k2(iv3)
      acd599(9)=abb599(14)
      acd599(10)=spvak5k6(iv3)
      acd599(11)=abb599(20)
      acd599(12)=d(iv1,iv3)
      acd599(13)=k2(iv2)
      acd599(14)=spvak1k6(iv2)
      acd599(15)=spvak4k6(iv2)
      acd599(16)=spvak5k2(iv2)
      acd599(17)=spvak5k6(iv2)
      acd599(18)=d(iv2,iv3)
      acd599(19)=k2(iv1)
      acd599(20)=spvak1k6(iv1)
      acd599(21)=spvak4k6(iv1)
      acd599(22)=spvak5k2(iv1)
      acd599(23)=spvak5k6(iv1)
      acd599(24)=spvak1k2(iv2)
      acd599(25)=spvak2k7(iv3)
      acd599(26)=abb599(18)
      acd599(27)=spvak1k2(iv3)
      acd599(28)=spvak2k7(iv2)
      acd599(29)=spvak4k2(iv3)
      acd599(30)=abb599(23)
      acd599(31)=spvak4k2(iv2)
      acd599(32)=spvak1k2(iv1)
      acd599(33)=spvak2k7(iv1)
      acd599(34)=spvak4k2(iv1)
      acd599(35)=acd599(25)*acd599(23)
      acd599(36)=acd599(33)*acd599(10)
      acd599(35)=acd599(35)+acd599(36)
      acd599(36)=acd599(24)*acd599(35)
      acd599(37)=acd599(28)*acd599(23)
      acd599(38)=acd599(33)*acd599(17)
      acd599(37)=acd599(37)+acd599(38)
      acd599(38)=acd599(27)*acd599(37)
      acd599(39)=acd599(25)*acd599(17)
      acd599(40)=acd599(28)*acd599(10)
      acd599(39)=acd599(39)+acd599(40)
      acd599(40)=acd599(32)*acd599(39)
      acd599(36)=acd599(40)+acd599(38)+acd599(36)
      acd599(36)=acd599(26)*acd599(36)
      acd599(37)=acd599(29)*acd599(37)
      acd599(35)=acd599(31)*acd599(35)
      acd599(38)=acd599(34)*acd599(39)
      acd599(35)=acd599(38)+acd599(35)+acd599(37)
      acd599(35)=acd599(30)*acd599(35)
      acd599(37)=acd599(19)*acd599(3)
      acd599(38)=-acd599(20)*acd599(5)
      acd599(39)=-acd599(21)*acd599(7)
      acd599(40)=-acd599(22)*acd599(9)
      acd599(37)=acd599(40)+acd599(39)+acd599(38)+acd599(37)
      acd599(38)=2.0_ki*acd599(18)
      acd599(37)=acd599(38)*acd599(37)
      acd599(38)=acd599(13)*acd599(3)
      acd599(39)=-acd599(14)*acd599(5)
      acd599(40)=-acd599(15)*acd599(7)
      acd599(41)=-acd599(16)*acd599(9)
      acd599(38)=acd599(41)+acd599(40)+acd599(39)+acd599(38)
      acd599(39)=2.0_ki*acd599(12)
      acd599(38)=acd599(39)*acd599(38)
      acd599(39)=acd599(2)*acd599(3)
      acd599(40)=-acd599(4)*acd599(5)
      acd599(41)=-acd599(6)*acd599(7)
      acd599(42)=-acd599(8)*acd599(9)
      acd599(39)=acd599(42)+acd599(41)+acd599(40)+acd599(39)
      acd599(40)=2.0_ki*acd599(1)
      acd599(39)=acd599(40)*acd599(39)
      acd599(40)=-acd599(10)*acd599(1)
      acd599(41)=-acd599(17)*acd599(12)
      acd599(42)=-acd599(23)*acd599(18)
      acd599(40)=acd599(42)+acd599(40)+acd599(41)
      acd599(40)=acd599(11)*acd599(40)
      brack=acd599(35)+acd599(36)+acd599(37)+acd599(38)+acd599(39)+2.0_ki*acd59&
      &9(40)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd599h1
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
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
      if(present(i3)) then
          iv3=i3
          deg=3
      else
          iv3=1
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
      if(deg.eq.3) then
         numerator = cond(epspow.eq.t1,brack_4,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d599:
   subroutine     reconstruct_d599(coeffs)
      use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_599:
      coeffs%coeffs_599%c0 = derivative(czip)
      coeffs%coeffs_599%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_599%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_599%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_599%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_599%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_599%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_599%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_599%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_599%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_599%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_599%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_599%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_599%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_599%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_599%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_599%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_599%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_599%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_599%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_599%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_599%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_599%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_599%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_599%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_599%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_599%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_599%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_599%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_599%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_599%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_599%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_599%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_599%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_599%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_599:
   end subroutine reconstruct_d599
!---#] subroutine reconstruct_d599:
end module     p12_sbars_epnemumnmubarg_d599h1l1d
