module     p0_dbard_epnemumnmubarg_d971h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity5d971h5l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d971
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd971h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd971
      complex(ki) :: brack
      acd971(1)=dotproduct(k1,qshift)
      acd971(2)=abb971(17)
      acd971(3)=dotproduct(k2,qshift)
      acd971(4)=dotproduct(qshift,spvak7k2)
      acd971(5)=abb971(23)
      acd971(6)=abb971(32)
      acd971(7)=dotproduct(k3,qshift)
      acd971(8)=dotproduct(k4,qshift)
      acd971(9)=dotproduct(k5,qshift)
      acd971(10)=dotproduct(k6,qshift)
      acd971(11)=dotproduct(k7,qshift)
      acd971(12)=abb971(16)
      acd971(13)=dotproduct(qshift,qshift)
      acd971(14)=abb971(24)
      acd971(15)=dotproduct(qshift,spvak1k2)
      acd971(16)=abb971(12)
      acd971(17)=dotproduct(qshift,spvak1k6)
      acd971(18)=abb971(14)
      acd971(19)=dotproduct(qshift,spvak4k2)
      acd971(20)=abb971(13)
      acd971(21)=dotproduct(qshift,spvak4k6)
      acd971(22)=abb971(15)
      acd971(23)=dotproduct(qshift,spvak5k2)
      acd971(24)=abb971(11)
      acd971(25)=dotproduct(qshift,spvak5k6)
      acd971(26)=abb971(18)
      acd971(27)=abb971(10)
      acd971(28)=abb971(8)
      acd971(29)=abb971(9)
      acd971(30)=abb971(21)
      acd971(31)=acd971(16)*acd971(15)
      acd971(32)=acd971(18)*acd971(17)
      acd971(33)=acd971(20)*acd971(19)
      acd971(34)=acd971(22)*acd971(21)
      acd971(35)=acd971(24)*acd971(23)
      acd971(36)=acd971(26)*acd971(25)
      acd971(31)=-acd971(27)+acd971(36)+acd971(35)+acd971(34)+acd971(33)+acd971&
      &(32)+acd971(31)
      acd971(31)=acd971(4)*acd971(31)
      acd971(32)=-acd971(10)+acd971(3)-acd971(9)
      acd971(33)=acd971(5)*acd971(4)
      acd971(33)=acd971(33)+acd971(6)
      acd971(32)=acd971(33)*acd971(32)
      acd971(33)=-acd971(8)-acd971(7)+acd971(1)
      acd971(33)=acd971(2)*acd971(33)
      acd971(34)=-acd971(12)*acd971(11)
      acd971(35)=acd971(14)*acd971(13)
      acd971(36)=-acd971(28)*acd971(23)
      acd971(37)=-acd971(29)*acd971(25)
      brack=acd971(30)+acd971(31)+acd971(32)+acd971(33)+acd971(34)+acd971(35)+a&
      &cd971(36)+acd971(37)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd971h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd971
      complex(ki) :: brack
      acd971(1)=k1(iv1)
      acd971(2)=abb971(17)
      acd971(3)=k2(iv1)
      acd971(4)=dotproduct(qshift,spvak7k2)
      acd971(5)=abb971(23)
      acd971(6)=abb971(32)
      acd971(7)=k3(iv1)
      acd971(8)=k4(iv1)
      acd971(9)=k5(iv1)
      acd971(10)=k6(iv1)
      acd971(11)=k7(iv1)
      acd971(12)=abb971(16)
      acd971(13)=qshift(iv1)
      acd971(14)=abb971(24)
      acd971(15)=spvak7k2(iv1)
      acd971(16)=dotproduct(k2,qshift)
      acd971(17)=dotproduct(k5,qshift)
      acd971(18)=dotproduct(k6,qshift)
      acd971(19)=dotproduct(qshift,spvak1k2)
      acd971(20)=abb971(12)
      acd971(21)=dotproduct(qshift,spvak1k6)
      acd971(22)=abb971(14)
      acd971(23)=dotproduct(qshift,spvak4k2)
      acd971(24)=abb971(13)
      acd971(25)=dotproduct(qshift,spvak4k6)
      acd971(26)=abb971(15)
      acd971(27)=dotproduct(qshift,spvak5k2)
      acd971(28)=abb971(11)
      acd971(29)=dotproduct(qshift,spvak5k6)
      acd971(30)=abb971(18)
      acd971(31)=abb971(10)
      acd971(32)=spvak1k2(iv1)
      acd971(33)=spvak1k6(iv1)
      acd971(34)=spvak4k2(iv1)
      acd971(35)=spvak4k6(iv1)
      acd971(36)=spvak5k2(iv1)
      acd971(37)=abb971(8)
      acd971(38)=spvak5k6(iv1)
      acd971(39)=abb971(9)
      acd971(40)=acd971(18)+acd971(17)-acd971(16)
      acd971(40)=acd971(40)*acd971(5)
      acd971(41)=-acd971(19)*acd971(20)
      acd971(42)=-acd971(21)*acd971(22)
      acd971(43)=-acd971(23)*acd971(24)
      acd971(44)=-acd971(25)*acd971(26)
      acd971(45)=-acd971(27)*acd971(28)
      acd971(46)=-acd971(29)*acd971(30)
      acd971(40)=acd971(40)+acd971(31)+acd971(46)+acd971(45)+acd971(44)+acd971(&
      &43)+acd971(42)+acd971(41)
      acd971(40)=acd971(15)*acd971(40)
      acd971(41)=-acd971(36)*acd971(28)
      acd971(42)=-acd971(38)*acd971(30)
      acd971(43)=-acd971(32)*acd971(20)
      acd971(44)=-acd971(33)*acd971(22)
      acd971(45)=-acd971(34)*acd971(24)
      acd971(46)=-acd971(35)*acd971(26)
      acd971(41)=acd971(46)+acd971(45)+acd971(44)+acd971(43)+acd971(42)+acd971(&
      &41)
      acd971(41)=acd971(4)*acd971(41)
      acd971(42)=acd971(10)-acd971(3)+acd971(9)
      acd971(43)=acd971(5)*acd971(4)
      acd971(43)=acd971(43)+acd971(6)
      acd971(42)=acd971(43)*acd971(42)
      acd971(43)=acd971(8)+acd971(7)-acd971(1)
      acd971(43)=acd971(2)*acd971(43)
      acd971(44)=acd971(12)*acd971(11)
      acd971(45)=acd971(14)*acd971(13)
      acd971(46)=acd971(37)*acd971(36)
      acd971(47)=acd971(39)*acd971(38)
      brack=acd971(40)+acd971(41)+acd971(42)+acd971(43)+acd971(44)-2.0_ki*acd97&
      &1(45)+acd971(46)+acd971(47)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd971h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd971
      complex(ki) :: brack
      acd971(1)=d(iv1,iv2)
      acd971(2)=abb971(24)
      acd971(3)=k2(iv1)
      acd971(4)=spvak7k2(iv2)
      acd971(5)=abb971(23)
      acd971(6)=k2(iv2)
      acd971(7)=spvak7k2(iv1)
      acd971(8)=k5(iv1)
      acd971(9)=k5(iv2)
      acd971(10)=k6(iv1)
      acd971(11)=k6(iv2)
      acd971(12)=spvak1k2(iv2)
      acd971(13)=abb971(12)
      acd971(14)=spvak1k6(iv2)
      acd971(15)=abb971(14)
      acd971(16)=spvak4k2(iv2)
      acd971(17)=abb971(13)
      acd971(18)=spvak4k6(iv2)
      acd971(19)=abb971(15)
      acd971(20)=spvak5k2(iv2)
      acd971(21)=abb971(11)
      acd971(22)=spvak5k6(iv2)
      acd971(23)=abb971(18)
      acd971(24)=spvak1k2(iv1)
      acd971(25)=spvak1k6(iv1)
      acd971(26)=spvak4k2(iv1)
      acd971(27)=spvak4k6(iv1)
      acd971(28)=spvak5k2(iv1)
      acd971(29)=spvak5k6(iv1)
      acd971(30)=acd971(23)*acd971(22)
      acd971(31)=acd971(21)*acd971(20)
      acd971(32)=acd971(19)*acd971(18)
      acd971(33)=acd971(17)*acd971(16)
      acd971(34)=acd971(15)*acd971(14)
      acd971(35)=acd971(13)*acd971(12)
      acd971(36)=acd971(6)-acd971(11)-acd971(9)
      acd971(36)=acd971(5)*acd971(36)
      acd971(30)=acd971(36)+acd971(35)+acd971(34)+acd971(33)+acd971(32)+acd971(&
      &30)+acd971(31)
      acd971(30)=acd971(7)*acd971(30)
      acd971(31)=acd971(23)*acd971(29)
      acd971(32)=acd971(21)*acd971(28)
      acd971(33)=acd971(19)*acd971(27)
      acd971(34)=acd971(17)*acd971(26)
      acd971(35)=acd971(15)*acd971(25)
      acd971(36)=acd971(13)*acd971(24)
      acd971(37)=acd971(3)-acd971(10)-acd971(8)
      acd971(37)=acd971(5)*acd971(37)
      acd971(31)=acd971(37)+acd971(36)+acd971(35)+acd971(34)+acd971(33)+acd971(&
      &31)+acd971(32)
      acd971(31)=acd971(4)*acd971(31)
      acd971(32)=acd971(1)*acd971(2)
      brack=acd971(30)+acd971(31)+2.0_ki*acd971(32)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd971h5
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
      qshift = k7+k6+k5
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
!---#[ subroutine reconstruct_d971:
   subroutine     reconstruct_d971(coeffs)
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_971:
      coeffs%coeffs_971%c0 = derivative(czip)
      coeffs%coeffs_971%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_971%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_971%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_971%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_971%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_971%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_971%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_971%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_971%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_971%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_971%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_971%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_971%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_971%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_971:
   end subroutine reconstruct_d971
!---#] subroutine reconstruct_d971:
end module     p0_dbard_epnemumnmubarg_d971h5l1d
