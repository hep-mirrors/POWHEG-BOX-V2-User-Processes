module     p0_dbard_epnemumnmubarg_d595h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity1d595h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d595
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd595
      complex(ki) :: brack
      acd595(1)=abb595(16)
      brack=acd595(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd595
      complex(ki) :: brack
      acd595(1)=k2(iv1)
      acd595(2)=abb595(14)
      acd595(3)=k7(iv1)
      acd595(4)=abb595(17)
      acd595(5)=spvak2k7(iv1)
      acd595(6)=abb595(8)
      acd595(7)=spvak5k6(iv1)
      acd595(8)=abb595(15)
      acd595(9)=spvak7k2(iv1)
      acd595(10)=abb595(18)
      acd595(11)=acd595(2)*acd595(1)
      acd595(12)=acd595(4)*acd595(3)
      acd595(13)=acd595(6)*acd595(5)
      acd595(14)=acd595(8)*acd595(7)
      acd595(15)=acd595(10)*acd595(9)
      brack=acd595(11)+acd595(12)+acd595(13)+acd595(14)+acd595(15)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd595
      complex(ki) :: brack
      acd595(1)=d(iv1,iv2)
      acd595(2)=abb595(11)
      acd595(3)=k2(iv1)
      acd595(4)=k2(iv2)
      acd595(5)=abb595(27)
      acd595(6)=k5(iv2)
      acd595(7)=k6(iv2)
      acd595(8)=spvak2k7(iv2)
      acd595(9)=abb595(29)
      acd595(10)=spvak5k2(iv2)
      acd595(11)=abb595(25)
      acd595(12)=spvak5k6(iv2)
      acd595(13)=abb595(19)
      acd595(14)=k5(iv1)
      acd595(15)=k6(iv1)
      acd595(16)=spvak2k7(iv1)
      acd595(17)=spvak5k2(iv1)
      acd595(18)=spvak5k6(iv1)
      acd595(19)=abb595(12)
      acd595(20)=k7(iv1)
      acd595(21)=abb595(21)
      acd595(22)=k7(iv2)
      acd595(23)=abb595(9)
      acd595(24)=abb595(22)
      acd595(25)=spvak1k2(iv2)
      acd595(26)=abb595(30)
      acd595(27)=spvak1k6(iv2)
      acd595(28)=abb595(20)
      acd595(29)=spvak4k2(iv2)
      acd595(30)=abb595(26)
      acd595(31)=spvak4k6(iv2)
      acd595(32)=abb595(28)
      acd595(33)=spvak1k2(iv1)
      acd595(34)=spvak1k6(iv1)
      acd595(35)=spvak4k2(iv1)
      acd595(36)=spvak4k6(iv1)
      acd595(37)=acd595(32)*acd595(31)
      acd595(38)=acd595(30)*acd595(29)
      acd595(39)=acd595(28)*acd595(27)
      acd595(40)=acd595(26)*acd595(25)
      acd595(41)=acd595(10)*acd595(23)
      acd595(42)=acd595(12)*acd595(24)
      acd595(43)=acd595(6)+acd595(7)
      acd595(44)=-acd595(19)*acd595(43)
      acd595(45)=acd595(4)*acd595(9)
      acd595(37)=acd595(45)+acd595(44)+acd595(42)+acd595(41)+acd595(40)+acd595(&
      &39)+acd595(37)+acd595(38)
      acd595(37)=acd595(16)*acd595(37)
      acd595(38)=acd595(32)*acd595(36)
      acd595(39)=acd595(30)*acd595(35)
      acd595(40)=acd595(28)*acd595(34)
      acd595(41)=acd595(26)*acd595(33)
      acd595(42)=acd595(17)*acd595(23)
      acd595(44)=acd595(18)*acd595(24)
      acd595(45)=acd595(14)+acd595(15)
      acd595(46)=-acd595(19)*acd595(45)
      acd595(47)=acd595(3)*acd595(9)
      acd595(38)=acd595(47)+acd595(46)+acd595(44)+acd595(42)+acd595(41)+acd595(&
      &40)+acd595(38)+acd595(39)
      acd595(38)=acd595(8)*acd595(38)
      acd595(39)=acd595(11)*acd595(17)
      acd595(40)=acd595(18)*acd595(13)
      acd595(41)=-acd595(5)*acd595(45)
      acd595(39)=acd595(41)+acd595(39)+acd595(40)
      acd595(39)=acd595(4)*acd595(39)
      acd595(40)=2.0_ki*acd595(4)-acd595(43)
      acd595(40)=acd595(5)*acd595(40)
      acd595(41)=acd595(10)*acd595(11)
      acd595(42)=acd595(12)*acd595(13)
      acd595(40)=acd595(41)+acd595(42)+acd595(40)
      acd595(40)=acd595(3)*acd595(40)
      acd595(41)=acd595(18)*acd595(22)
      acd595(42)=acd595(12)*acd595(20)
      acd595(41)=acd595(42)+acd595(41)
      acd595(41)=acd595(21)*acd595(41)
      acd595(42)=acd595(1)*acd595(2)
      brack=acd595(37)+acd595(38)+acd595(39)+acd595(40)+acd595(41)+2.0_ki*acd59&
      &5(42)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd595
      complex(ki) :: brack
      acd595(1)=d(iv1,iv2)
      acd595(2)=k2(iv3)
      acd595(3)=abb595(13)
      acd595(4)=spvak2k7(iv3)
      acd595(5)=abb595(10)
      acd595(6)=spvak5k2(iv3)
      acd595(7)=abb595(24)
      acd595(8)=spvak5k6(iv3)
      acd595(9)=abb595(23)
      acd595(10)=d(iv1,iv3)
      acd595(11)=k2(iv2)
      acd595(12)=spvak2k7(iv2)
      acd595(13)=spvak5k2(iv2)
      acd595(14)=spvak5k6(iv2)
      acd595(15)=d(iv2,iv3)
      acd595(16)=k2(iv1)
      acd595(17)=spvak2k7(iv1)
      acd595(18)=spvak5k2(iv1)
      acd595(19)=spvak5k6(iv1)
      acd595(20)=spvak1k2(iv3)
      acd595(21)=abb595(7)
      acd595(22)=spvak4k2(iv3)
      acd595(23)=abb595(6)
      acd595(24)=spvak1k2(iv2)
      acd595(25)=spvak4k2(iv2)
      acd595(26)=spvak1k2(iv1)
      acd595(27)=spvak4k2(iv1)
      acd595(28)=acd595(17)*acd595(14)
      acd595(29)=acd595(19)*acd595(12)
      acd595(28)=acd595(28)+acd595(29)
      acd595(29)=acd595(20)*acd595(28)
      acd595(30)=acd595(17)*acd595(8)
      acd595(31)=acd595(19)*acd595(4)
      acd595(30)=acd595(30)+acd595(31)
      acd595(31)=acd595(24)*acd595(30)
      acd595(32)=acd595(12)*acd595(8)
      acd595(33)=acd595(14)*acd595(4)
      acd595(32)=acd595(32)+acd595(33)
      acd595(33)=acd595(26)*acd595(32)
      acd595(29)=acd595(33)+acd595(31)+acd595(29)
      acd595(29)=acd595(21)*acd595(29)
      acd595(28)=acd595(22)*acd595(28)
      acd595(30)=acd595(25)*acd595(30)
      acd595(31)=acd595(27)*acd595(32)
      acd595(28)=acd595(31)+acd595(30)+acd595(28)
      acd595(28)=acd595(23)*acd595(28)
      acd595(30)=acd595(1)*acd595(4)
      acd595(31)=acd595(10)*acd595(12)
      acd595(32)=acd595(15)*acd595(17)
      acd595(30)=acd595(32)+acd595(30)+acd595(31)
      acd595(30)=acd595(5)*acd595(30)
      acd595(31)=acd595(1)*acd595(8)
      acd595(32)=acd595(10)*acd595(14)
      acd595(33)=acd595(15)*acd595(19)
      acd595(31)=acd595(33)+acd595(31)+acd595(32)
      acd595(31)=acd595(9)*acd595(31)
      acd595(30)=acd595(30)+acd595(31)
      acd595(31)=acd595(6)*acd595(1)
      acd595(32)=acd595(13)*acd595(10)
      acd595(33)=acd595(18)*acd595(15)
      acd595(31)=acd595(33)+acd595(32)+acd595(31)
      acd595(32)=2.0_ki*acd595(7)
      acd595(31)=acd595(32)*acd595(31)
      acd595(32)=acd595(2)*acd595(1)
      acd595(33)=acd595(11)*acd595(10)
      acd595(34)=acd595(16)*acd595(15)
      acd595(32)=acd595(34)+acd595(33)+acd595(32)
      acd595(33)=2.0_ki*acd595(3)
      acd595(32)=acd595(33)*acd595(32)
      brack=acd595(28)+acd595(29)+2.0_ki*acd595(30)+acd595(31)+acd595(32)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd595h1
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
!---#[ subroutine reconstruct_d595:
   subroutine     reconstruct_d595(coeffs)
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_595:
      coeffs%coeffs_595%c0 = derivative(czip)
      coeffs%coeffs_595%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_595%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_595%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_595%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_595%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_595%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_595%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_595%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_595%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_595%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_595%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_595%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_595%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_595%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_595%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_595%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_595%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_595%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_595%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_595%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_595%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_595%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_595%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_595%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_595%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_595%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_595%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_595%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_595%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_595%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_595%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_595%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_595%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_595%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_595:
   end subroutine reconstruct_d595
!---#] subroutine reconstruct_d595:
end module     p0_dbard_epnemumnmubarg_d595h1l1d
