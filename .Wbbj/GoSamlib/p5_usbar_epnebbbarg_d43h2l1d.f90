module     p5_usbar_epnebbbarg_d43h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d43h2l1d.f90
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
   public :: derivative , reconstruct_d43
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd43h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd43
      complex(ki) :: brack
      acd43(1)=dotproduct(k1,qshift)
      acd43(2)=dotproduct(qshift,spvak4k3)
      acd43(3)=abb43(19)
      acd43(4)=dotproduct(k2,qshift)
      acd43(5)=abb43(21)
      acd43(6)=dotproduct(k3,qshift)
      acd43(7)=abb43(27)
      acd43(8)=dotproduct(k4,qshift)
      acd43(9)=dotproduct(l5,qshift)
      acd43(10)=dotproduct(l6,qshift)
      acd43(11)=dotproduct(qshift,qshift)
      acd43(12)=abb43(20)
      acd43(13)=dotproduct(qshift,spvak2k1)
      acd43(14)=abb43(12)
      acd43(15)=dotproduct(qshift,spval5k1)
      acd43(16)=abb43(10)
      acd43(17)=dotproduct(qshift,spval5l6)
      acd43(18)=abb43(11)
      acd43(19)=dotproduct(qshift,spvak7k1)
      acd43(20)=abb43(25)
      acd43(21)=dotproduct(qshift,spvak7k2)
      acd43(22)=abb43(14)
      acd43(23)=dotproduct(qshift,spvak7l5)
      acd43(24)=abb43(23)
      acd43(25)=dotproduct(qshift,spvak7l6)
      acd43(26)=abb43(22)
      acd43(27)=abb43(16)
      acd43(28)=dotproduct(qshift,spvak7k3)
      acd43(29)=abb43(26)
      acd43(30)=acd43(10)+acd43(9)-acd43(1)
      acd43(30)=acd43(30)*acd43(3)
      acd43(31)=acd43(5)*acd43(4)
      acd43(32)=acd43(14)*acd43(13)
      acd43(33)=acd43(16)*acd43(15)
      acd43(34)=acd43(18)*acd43(17)
      acd43(35)=acd43(20)*acd43(19)
      acd43(36)=acd43(22)*acd43(21)
      acd43(37)=acd43(24)*acd43(23)
      acd43(38)=acd43(26)*acd43(25)
      acd43(30)=acd43(30)-acd43(27)+acd43(38)+acd43(37)+acd43(36)+acd43(35)+acd&
      &43(34)+acd43(33)+acd43(32)+acd43(31)
      acd43(30)=acd43(2)*acd43(30)
      acd43(31)=acd43(8)+acd43(6)
      acd43(31)=acd43(7)*acd43(31)
      acd43(32)=acd43(12)*acd43(11)
      acd43(33)=-acd43(29)*acd43(28)
      brack=acd43(30)+acd43(31)+acd43(32)+acd43(33)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd43h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd43
      complex(ki) :: brack
      acd43(1)=k1(iv1)
      acd43(2)=dotproduct(qshift,spvak4k3)
      acd43(3)=abb43(19)
      acd43(4)=k2(iv1)
      acd43(5)=abb43(21)
      acd43(6)=k3(iv1)
      acd43(7)=abb43(27)
      acd43(8)=k4(iv1)
      acd43(9)=l5(iv1)
      acd43(10)=l6(iv1)
      acd43(11)=qshift(iv1)
      acd43(12)=abb43(20)
      acd43(13)=spvak4k3(iv1)
      acd43(14)=dotproduct(k1,qshift)
      acd43(15)=dotproduct(k2,qshift)
      acd43(16)=dotproduct(l5,qshift)
      acd43(17)=dotproduct(l6,qshift)
      acd43(18)=dotproduct(qshift,spvak2k1)
      acd43(19)=abb43(12)
      acd43(20)=dotproduct(qshift,spval5k1)
      acd43(21)=abb43(10)
      acd43(22)=dotproduct(qshift,spval5l6)
      acd43(23)=abb43(11)
      acd43(24)=dotproduct(qshift,spvak7k1)
      acd43(25)=abb43(25)
      acd43(26)=dotproduct(qshift,spvak7k2)
      acd43(27)=abb43(14)
      acd43(28)=dotproduct(qshift,spvak7l5)
      acd43(29)=abb43(23)
      acd43(30)=dotproduct(qshift,spvak7l6)
      acd43(31)=abb43(22)
      acd43(32)=abb43(16)
      acd43(33)=spvak2k1(iv1)
      acd43(34)=spval5k1(iv1)
      acd43(35)=spval5l6(iv1)
      acd43(36)=spvak7k1(iv1)
      acd43(37)=spvak7k2(iv1)
      acd43(38)=spvak7l5(iv1)
      acd43(39)=spvak7l6(iv1)
      acd43(40)=spvak7k3(iv1)
      acd43(41)=abb43(26)
      acd43(42)=acd43(31)*acd43(39)
      acd43(43)=acd43(29)*acd43(38)
      acd43(44)=acd43(27)*acd43(37)
      acd43(45)=acd43(25)*acd43(36)
      acd43(46)=acd43(23)*acd43(35)
      acd43(47)=acd43(21)*acd43(34)
      acd43(48)=acd43(19)*acd43(33)
      acd43(49)=acd43(5)*acd43(4)
      acd43(50)=-acd43(1)+acd43(10)+acd43(9)
      acd43(50)=acd43(3)*acd43(50)
      acd43(42)=acd43(50)+acd43(49)+acd43(48)+acd43(47)+acd43(46)+acd43(45)+acd&
      &43(44)+acd43(42)+acd43(43)
      acd43(42)=acd43(2)*acd43(42)
      acd43(43)=acd43(31)*acd43(30)
      acd43(44)=acd43(29)*acd43(28)
      acd43(45)=acd43(27)*acd43(26)
      acd43(46)=acd43(25)*acd43(24)
      acd43(47)=acd43(23)*acd43(22)
      acd43(48)=acd43(21)*acd43(20)
      acd43(49)=acd43(19)*acd43(18)
      acd43(50)=acd43(5)*acd43(15)
      acd43(51)=-acd43(14)+acd43(17)+acd43(16)
      acd43(51)=acd43(3)*acd43(51)
      acd43(43)=acd43(51)+acd43(50)+acd43(49)+acd43(48)+acd43(47)+acd43(46)+acd&
      &43(45)+acd43(44)-acd43(32)+acd43(43)
      acd43(43)=acd43(13)*acd43(43)
      acd43(44)=-acd43(40)*acd43(41)
      acd43(45)=acd43(11)*acd43(12)
      acd43(46)=acd43(8)+acd43(6)
      acd43(46)=acd43(7)*acd43(46)
      brack=acd43(42)+acd43(43)+acd43(44)+2.0_ki*acd43(45)+acd43(46)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd43h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(45) :: acd43
      complex(ki) :: brack
      acd43(1)=d(iv1,iv2)
      acd43(2)=abb43(20)
      acd43(3)=k1(iv1)
      acd43(4)=spvak4k3(iv2)
      acd43(5)=abb43(19)
      acd43(6)=k1(iv2)
      acd43(7)=spvak4k3(iv1)
      acd43(8)=k2(iv1)
      acd43(9)=abb43(21)
      acd43(10)=k2(iv2)
      acd43(11)=l5(iv1)
      acd43(12)=l5(iv2)
      acd43(13)=l6(iv1)
      acd43(14)=l6(iv2)
      acd43(15)=spvak2k1(iv2)
      acd43(16)=abb43(12)
      acd43(17)=spval5k1(iv2)
      acd43(18)=abb43(10)
      acd43(19)=spval5l6(iv2)
      acd43(20)=abb43(11)
      acd43(21)=spvak7k1(iv2)
      acd43(22)=abb43(25)
      acd43(23)=spvak7k2(iv2)
      acd43(24)=abb43(14)
      acd43(25)=spvak7l5(iv2)
      acd43(26)=abb43(23)
      acd43(27)=spvak7l6(iv2)
      acd43(28)=abb43(22)
      acd43(29)=spvak2k1(iv1)
      acd43(30)=spval5k1(iv1)
      acd43(31)=spval5l6(iv1)
      acd43(32)=spvak7k1(iv1)
      acd43(33)=spvak7k2(iv1)
      acd43(34)=spvak7l5(iv1)
      acd43(35)=spvak7l6(iv1)
      acd43(36)=acd43(28)*acd43(27)
      acd43(37)=acd43(26)*acd43(25)
      acd43(38)=acd43(24)*acd43(23)
      acd43(39)=acd43(22)*acd43(21)
      acd43(40)=acd43(20)*acd43(19)
      acd43(41)=acd43(18)*acd43(17)
      acd43(42)=acd43(16)*acd43(15)
      acd43(43)=acd43(9)*acd43(10)
      acd43(44)=-acd43(6)+acd43(14)+acd43(12)
      acd43(44)=acd43(5)*acd43(44)
      acd43(36)=acd43(44)+acd43(43)+acd43(42)+acd43(41)+acd43(40)+acd43(39)+acd&
      &43(38)+acd43(36)+acd43(37)
      acd43(36)=acd43(7)*acd43(36)
      acd43(37)=acd43(28)*acd43(35)
      acd43(38)=acd43(26)*acd43(34)
      acd43(39)=acd43(24)*acd43(33)
      acd43(40)=acd43(22)*acd43(32)
      acd43(41)=acd43(20)*acd43(31)
      acd43(42)=acd43(18)*acd43(30)
      acd43(43)=acd43(16)*acd43(29)
      acd43(44)=acd43(9)*acd43(8)
      acd43(45)=-acd43(3)+acd43(13)+acd43(11)
      acd43(45)=acd43(5)*acd43(45)
      acd43(37)=acd43(45)+acd43(44)+acd43(43)+acd43(42)+acd43(41)+acd43(40)+acd&
      &43(39)+acd43(37)+acd43(38)
      acd43(37)=acd43(4)*acd43(37)
      acd43(38)=acd43(1)*acd43(2)
      brack=acd43(36)+acd43(37)+2.0_ki*acd43(38)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd43h2
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
      qshift = -k2+k7
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
!---#[ subroutine reconstruct_d43:
   subroutine     reconstruct_d43(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_43:
      coeffs%coeffs_43%c0 = derivative(czip)
      coeffs%coeffs_43%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_43%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_43%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_43%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_43%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_43%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_43%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_43%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_43%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_43%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_43%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_43%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_43%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_43%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_43:
   end subroutine reconstruct_d43
!---#] subroutine reconstruct_d43:
end module     p5_usbar_epnebbbarg_d43h2l1d
