module     p5_usbar_epnebbbarg_d119h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d119h2l1d.f90
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
   public :: derivative , reconstruct_d119
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd119h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd119
      complex(ki) :: brack
      acd119(1)=abb119(21)
      brack=acd119(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd119h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd119
      complex(ki) :: brack
      acd119(1)=k1(iv1)
      acd119(2)=abb119(30)
      acd119(3)=k2(iv1)
      acd119(4)=abb119(34)
      acd119(5)=k3(iv1)
      acd119(6)=k4(iv1)
      acd119(7)=spvak2l5(iv1)
      acd119(8)=abb119(10)
      acd119(9)=spvak2l6(iv1)
      acd119(10)=abb119(13)
      acd119(11)=spvak2k7(iv1)
      acd119(12)=abb119(16)
      acd119(13)=spvak4k1(iv1)
      acd119(14)=abb119(11)
      acd119(15)=spvak4k3(iv1)
      acd119(16)=abb119(14)
      acd119(17)=spval5l6(iv1)
      acd119(18)=abb119(23)
      acd119(19)=spvak7l6(iv1)
      acd119(20)=abb119(20)
      acd119(21)=spvak2e7(iv1)
      acd119(22)=abb119(36)
      acd119(23)=spvae7l6(iv1)
      acd119(24)=abb119(35)
      acd119(25)=acd119(6)+acd119(5)-acd119(1)
      acd119(25)=acd119(2)*acd119(25)
      acd119(26)=-acd119(4)*acd119(3)
      acd119(27)=-acd119(8)*acd119(7)
      acd119(28)=-acd119(10)*acd119(9)
      acd119(29)=-acd119(12)*acd119(11)
      acd119(30)=-acd119(14)*acd119(13)
      acd119(31)=-acd119(16)*acd119(15)
      acd119(32)=-acd119(18)*acd119(17)
      acd119(33)=-acd119(20)*acd119(19)
      acd119(34)=-acd119(22)*acd119(21)
      acd119(35)=-acd119(24)*acd119(23)
      brack=acd119(25)+acd119(26)+acd119(27)+acd119(28)+acd119(29)+acd119(30)+a&
      &cd119(31)+acd119(32)+acd119(33)+acd119(34)+acd119(35)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd119h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd119
      complex(ki) :: brack
      acd119(1)=k1(iv1)
      acd119(2)=spvak2l6(iv2)
      acd119(3)=abb119(15)
      acd119(4)=k1(iv2)
      acd119(5)=spvak2l6(iv1)
      acd119(6)=k3(iv1)
      acd119(7)=k3(iv2)
      acd119(8)=k4(iv1)
      acd119(9)=k4(iv2)
      acd119(10)=spvak4k1(iv2)
      acd119(11)=abb119(8)
      acd119(12)=spvak4k3(iv2)
      acd119(13)=abb119(9)
      acd119(14)=spval5k1(iv2)
      acd119(15)=abb119(28)
      acd119(16)=spval5k3(iv2)
      acd119(17)=abb119(19)
      acd119(18)=spvak7k1(iv2)
      acd119(19)=abb119(32)
      acd119(20)=spvak7k3(iv2)
      acd119(21)=abb119(31)
      acd119(22)=spvae7k1(iv2)
      acd119(23)=abb119(29)
      acd119(24)=spvae7k3(iv2)
      acd119(25)=abb119(25)
      acd119(26)=spvak4k1(iv1)
      acd119(27)=spvak4k3(iv1)
      acd119(28)=spval5k1(iv1)
      acd119(29)=spval5k3(iv1)
      acd119(30)=spvak7k1(iv1)
      acd119(31)=spvak7k3(iv1)
      acd119(32)=spvae7k1(iv1)
      acd119(33)=spvae7k3(iv1)
      acd119(34)=spvak2k1(iv1)
      acd119(35)=spval5l6(iv2)
      acd119(36)=spvak7l6(iv2)
      acd119(37)=spvae7l6(iv2)
      acd119(38)=spvak2k1(iv2)
      acd119(39)=spval5l6(iv1)
      acd119(40)=spvak7l6(iv1)
      acd119(41)=spvae7l6(iv1)
      acd119(42)=spvak2k3(iv2)
      acd119(43)=spvak2k3(iv1)
      acd119(44)=acd119(13)*acd119(12)
      acd119(45)=acd119(11)*acd119(10)
      acd119(46)=acd119(25)*acd119(24)
      acd119(47)=-acd119(23)*acd119(22)
      acd119(48)=-acd119(21)*acd119(20)
      acd119(49)=acd119(19)*acd119(18)
      acd119(50)=acd119(17)*acd119(16)
      acd119(51)=-acd119(15)*acd119(14)
      acd119(52)=-acd119(4)+acd119(9)+acd119(7)
      acd119(52)=acd119(3)*acd119(52)
      acd119(44)=acd119(52)+acd119(51)+acd119(50)+acd119(49)+acd119(48)+acd119(&
      &47)+acd119(46)+acd119(44)+acd119(45)
      acd119(44)=acd119(5)*acd119(44)
      acd119(45)=acd119(13)*acd119(27)
      acd119(46)=acd119(11)*acd119(26)
      acd119(47)=acd119(25)*acd119(33)
      acd119(48)=-acd119(23)*acd119(32)
      acd119(49)=-acd119(21)*acd119(31)
      acd119(50)=acd119(19)*acd119(30)
      acd119(51)=acd119(17)*acd119(29)
      acd119(52)=-acd119(15)*acd119(28)
      acd119(53)=-acd119(1)+acd119(8)+acd119(6)
      acd119(53)=acd119(3)*acd119(53)
      acd119(45)=acd119(53)+acd119(52)+acd119(51)+acd119(50)+acd119(49)+acd119(&
      &48)+acd119(47)+acd119(45)+acd119(46)
      acd119(45)=acd119(2)*acd119(45)
      acd119(46)=-acd119(43)*acd119(37)
      acd119(47)=-acd119(42)*acd119(41)
      acd119(46)=acd119(46)+acd119(47)
      acd119(46)=acd119(25)*acd119(46)
      acd119(47)=acd119(38)*acd119(41)
      acd119(48)=acd119(34)*acd119(37)
      acd119(47)=acd119(47)+acd119(48)
      acd119(47)=acd119(23)*acd119(47)
      acd119(48)=acd119(43)*acd119(36)
      acd119(49)=acd119(42)*acd119(40)
      acd119(48)=acd119(48)+acd119(49)
      acd119(48)=acd119(21)*acd119(48)
      acd119(49)=-acd119(38)*acd119(40)
      acd119(50)=-acd119(34)*acd119(36)
      acd119(49)=acd119(49)+acd119(50)
      acd119(49)=acd119(19)*acd119(49)
      acd119(50)=-acd119(43)*acd119(35)
      acd119(51)=-acd119(42)*acd119(39)
      acd119(50)=acd119(50)+acd119(51)
      acd119(50)=acd119(17)*acd119(50)
      acd119(51)=acd119(38)*acd119(39)
      acd119(52)=acd119(34)*acd119(35)
      acd119(51)=acd119(51)+acd119(52)
      acd119(51)=acd119(15)*acd119(51)
      brack=acd119(44)+acd119(45)+acd119(46)+acd119(47)+acd119(48)+acd119(49)+a&
      &cd119(50)+acd119(51)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd119h2
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
!---#[ subroutine reconstruct_d119:
   subroutine     reconstruct_d119(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_119:
      coeffs%coeffs_119%c0 = derivative(czip)
      coeffs%coeffs_119%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_119%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_119%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_119%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_119%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_119%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_119%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_119%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_119%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_119%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_119%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_119%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_119%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_119%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_119:
   end subroutine reconstruct_d119
!---#] subroutine reconstruct_d119:
end module     p5_usbar_epnebbbarg_d119h2l1d
