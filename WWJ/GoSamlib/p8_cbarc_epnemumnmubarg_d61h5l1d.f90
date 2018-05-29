module     p8_cbarc_epnemumnmubarg_d61h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity5d61h5l1d.f90
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
   public :: derivative , reconstruct_d61
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd61h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(32) :: acd61
      complex(ki) :: brack
      acd61(1)=dotproduct(k1,qshift)
      acd61(2)=dotproduct(qshift,spvak5k6)
      acd61(3)=abb61(12)
      acd61(4)=dotproduct(k2,qshift)
      acd61(5)=abb61(21)
      acd61(6)=dotproduct(k3,qshift)
      acd61(7)=dotproduct(k4,qshift)
      acd61(8)=dotproduct(k5,qshift)
      acd61(9)=abb61(15)
      acd61(10)=abb61(18)
      acd61(11)=dotproduct(k6,qshift)
      acd61(12)=dotproduct(qshift,qshift)
      acd61(13)=abb61(10)
      acd61(14)=dotproduct(qshift,spvak1k5)
      acd61(15)=abb61(13)
      acd61(16)=dotproduct(qshift,spvak1k6)
      acd61(17)=abb61(16)
      acd61(18)=dotproduct(qshift,spvak4k2)
      acd61(19)=abb61(11)
      acd61(20)=dotproduct(qshift,spvak4k3)
      acd61(21)=abb61(19)
      acd61(22)=dotproduct(qshift,spvak7k2)
      acd61(23)=abb61(14)
      acd61(24)=abb61(8)
      acd61(25)=abb61(9)
      acd61(26)=acd61(7)+acd61(6)-acd61(4)
      acd61(26)=acd61(26)*acd61(5)
      acd61(27)=acd61(3)*acd61(1)
      acd61(28)=acd61(15)*acd61(14)
      acd61(29)=acd61(17)*acd61(16)
      acd61(30)=acd61(19)*acd61(18)
      acd61(31)=acd61(21)*acd61(20)
      acd61(32)=acd61(23)*acd61(22)
      acd61(26)=acd61(26)-acd61(24)+acd61(32)+acd61(31)+acd61(30)+acd61(29)+acd&
      &61(28)+acd61(27)
      acd61(26)=acd61(2)*acd61(26)
      acd61(27)=-acd61(11)-acd61(8)
      acd61(28)=acd61(9)*acd61(2)
      acd61(28)=acd61(28)-acd61(10)
      acd61(27)=acd61(28)*acd61(27)
      acd61(28)=acd61(13)*acd61(12)
      acd61(29)=-acd61(25)*acd61(16)
      brack=acd61(26)+acd61(27)+acd61(28)+acd61(29)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd61h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(45) :: acd61
      complex(ki) :: brack
      acd61(1)=k1(iv1)
      acd61(2)=dotproduct(qshift,spvak5k6)
      acd61(3)=abb61(12)
      acd61(4)=k2(iv1)
      acd61(5)=abb61(21)
      acd61(6)=k3(iv1)
      acd61(7)=k4(iv1)
      acd61(8)=k5(iv1)
      acd61(9)=abb61(15)
      acd61(10)=abb61(18)
      acd61(11)=k6(iv1)
      acd61(12)=qshift(iv1)
      acd61(13)=abb61(10)
      acd61(14)=spvak5k6(iv1)
      acd61(15)=dotproduct(k1,qshift)
      acd61(16)=dotproduct(k2,qshift)
      acd61(17)=dotproduct(k3,qshift)
      acd61(18)=dotproduct(k4,qshift)
      acd61(19)=dotproduct(k5,qshift)
      acd61(20)=dotproduct(k6,qshift)
      acd61(21)=dotproduct(qshift,spvak1k5)
      acd61(22)=abb61(13)
      acd61(23)=dotproduct(qshift,spvak1k6)
      acd61(24)=abb61(16)
      acd61(25)=dotproduct(qshift,spvak4k2)
      acd61(26)=abb61(11)
      acd61(27)=dotproduct(qshift,spvak4k3)
      acd61(28)=abb61(19)
      acd61(29)=dotproduct(qshift,spvak7k2)
      acd61(30)=abb61(14)
      acd61(31)=abb61(8)
      acd61(32)=spvak1k5(iv1)
      acd61(33)=spvak1k6(iv1)
      acd61(34)=abb61(9)
      acd61(35)=spvak4k2(iv1)
      acd61(36)=spvak4k3(iv1)
      acd61(37)=spvak7k2(iv1)
      acd61(38)=-acd61(20)-acd61(19)
      acd61(38)=acd61(38)*acd61(9)
      acd61(39)=acd61(18)+acd61(17)-acd61(16)
      acd61(39)=acd61(39)*acd61(5)
      acd61(40)=acd61(15)*acd61(3)
      acd61(41)=acd61(21)*acd61(22)
      acd61(42)=acd61(23)*acd61(24)
      acd61(43)=acd61(25)*acd61(26)
      acd61(44)=acd61(27)*acd61(28)
      acd61(45)=acd61(29)*acd61(30)
      acd61(38)=acd61(39)+acd61(38)-acd61(31)+acd61(45)+acd61(44)+acd61(43)+acd&
      &61(42)+acd61(41)+acd61(40)
      acd61(38)=acd61(14)*acd61(38)
      acd61(39)=acd61(7)+acd61(6)-acd61(4)
      acd61(39)=acd61(39)*acd61(5)
      acd61(40)=acd61(33)*acd61(24)
      acd61(41)=acd61(1)*acd61(3)
      acd61(42)=acd61(32)*acd61(22)
      acd61(43)=acd61(35)*acd61(26)
      acd61(44)=acd61(36)*acd61(28)
      acd61(45)=acd61(37)*acd61(30)
      acd61(39)=acd61(39)+acd61(45)+acd61(44)+acd61(43)+acd61(42)+acd61(41)+acd&
      &61(40)
      acd61(39)=acd61(2)*acd61(39)
      acd61(40)=-acd61(11)-acd61(8)
      acd61(41)=acd61(9)*acd61(2)
      acd61(41)=acd61(41)-acd61(10)
      acd61(40)=acd61(41)*acd61(40)
      acd61(41)=acd61(13)*acd61(12)
      acd61(42)=-acd61(34)*acd61(33)
      brack=acd61(38)+acd61(39)+acd61(40)+2.0_ki*acd61(41)+acd61(42)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd61h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(43) :: acd61
      complex(ki) :: brack
      acd61(1)=d(iv1,iv2)
      acd61(2)=abb61(10)
      acd61(3)=k1(iv1)
      acd61(4)=spvak5k6(iv2)
      acd61(5)=abb61(12)
      acd61(6)=k1(iv2)
      acd61(7)=spvak5k6(iv1)
      acd61(8)=k2(iv1)
      acd61(9)=abb61(21)
      acd61(10)=k2(iv2)
      acd61(11)=k3(iv1)
      acd61(12)=k3(iv2)
      acd61(13)=k4(iv1)
      acd61(14)=k4(iv2)
      acd61(15)=k5(iv1)
      acd61(16)=abb61(15)
      acd61(17)=k5(iv2)
      acd61(18)=k6(iv1)
      acd61(19)=k6(iv2)
      acd61(20)=spvak1k5(iv2)
      acd61(21)=abb61(13)
      acd61(22)=spvak1k6(iv2)
      acd61(23)=abb61(16)
      acd61(24)=spvak4k2(iv2)
      acd61(25)=abb61(11)
      acd61(26)=spvak4k3(iv2)
      acd61(27)=abb61(19)
      acd61(28)=spvak7k2(iv2)
      acd61(29)=abb61(14)
      acd61(30)=spvak1k5(iv1)
      acd61(31)=spvak1k6(iv1)
      acd61(32)=spvak4k2(iv1)
      acd61(33)=spvak4k3(iv1)
      acd61(34)=spvak7k2(iv1)
      acd61(35)=-acd61(18)-acd61(15)
      acd61(35)=acd61(35)*acd61(16)
      acd61(36)=acd61(13)+acd61(11)-acd61(8)
      acd61(36)=acd61(36)*acd61(9)
      acd61(37)=acd61(3)*acd61(5)
      acd61(38)=acd61(30)*acd61(21)
      acd61(39)=acd61(31)*acd61(23)
      acd61(40)=acd61(32)*acd61(25)
      acd61(41)=acd61(33)*acd61(27)
      acd61(42)=acd61(34)*acd61(29)
      acd61(35)=acd61(36)+acd61(35)+acd61(42)+acd61(41)+acd61(40)+acd61(39)+acd&
      &61(38)+acd61(37)
      acd61(35)=acd61(4)*acd61(35)
      acd61(36)=-acd61(19)-acd61(17)
      acd61(36)=acd61(36)*acd61(16)
      acd61(37)=acd61(14)+acd61(12)-acd61(10)
      acd61(37)=acd61(37)*acd61(9)
      acd61(38)=acd61(6)*acd61(5)
      acd61(39)=acd61(20)*acd61(21)
      acd61(40)=acd61(22)*acd61(23)
      acd61(41)=acd61(24)*acd61(25)
      acd61(42)=acd61(26)*acd61(27)
      acd61(43)=acd61(28)*acd61(29)
      acd61(36)=acd61(37)+acd61(36)+acd61(43)+acd61(42)+acd61(41)+acd61(40)+acd&
      &61(39)+acd61(38)
      acd61(36)=acd61(7)*acd61(36)
      acd61(37)=acd61(2)*acd61(1)
      brack=acd61(35)+acd61(36)+2.0_ki*acd61(37)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd61h5
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
      qshift = -k3-k7-k6-k5-k4
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
!---#[ subroutine reconstruct_d61:
   subroutine     reconstruct_d61(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_61:
      coeffs%coeffs_61%c0 = derivative(czip)
      coeffs%coeffs_61%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_61%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_61%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_61%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_61%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_61%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_61%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_61%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_61%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_61%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_61%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_61%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_61%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_61%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_61:
   end subroutine reconstruct_d61
!---#] subroutine reconstruct_d61:
end module     p8_cbarc_epnemumnmubarg_d61h5l1d
