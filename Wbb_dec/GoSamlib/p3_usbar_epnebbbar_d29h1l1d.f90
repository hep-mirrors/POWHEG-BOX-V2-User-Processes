module     p3_usbar_epnebbbar_d29h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p3_usbar_epnebbbar/helicity1d29h1l1d.f90
   ! generator: buildfortran_d.py
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d29
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd29h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd29
      complex(ki) :: brack
      acd29(1)=abb29(17)
      brack=acd29(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd29h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd29
      complex(ki) :: brack
      acd29(1)=k1(iv1)
      acd29(2)=abb29(20)
      acd29(3)=k2(iv1)
      acd29(4)=abb29(16)
      acd29(5)=k3(iv1)
      acd29(6)=k4(iv1)
      acd29(7)=spvak2k1(iv1)
      acd29(8)=abb29(9)
      acd29(9)=spvak2k3(iv1)
      acd29(10)=abb29(13)
      acd29(11)=spvak2l5(iv1)
      acd29(12)=abb29(21)
      acd29(13)=spvak2l6(iv1)
      acd29(14)=abb29(23)
      acd29(15)=spvak4k1(iv1)
      acd29(16)=abb29(12)
      acd29(17)=spvak4k3(iv1)
      acd29(18)=abb29(24)
      acd29(19)=spval6l5(iv1)
      acd29(20)=abb29(37)
      acd29(21)=-acd29(19)*acd29(20)
      acd29(22)=-acd29(17)*acd29(18)
      acd29(23)=-acd29(15)*acd29(16)
      acd29(24)=-acd29(13)*acd29(14)
      acd29(25)=-acd29(11)*acd29(12)
      acd29(26)=-acd29(9)*acd29(10)
      acd29(27)=-acd29(7)*acd29(8)
      acd29(28)=-acd29(3)*acd29(4)
      acd29(29)=-acd29(1)+acd29(6)+acd29(5)
      acd29(29)=acd29(2)*acd29(29)
      brack=acd29(21)+acd29(22)+acd29(23)+acd29(24)+acd29(25)+acd29(26)+acd29(2&
      &7)+acd29(28)+acd29(29)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_abbrevd29h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(45) :: acd29
      complex(ki) :: brack
      acd29(1)=k1(iv1)
      acd29(2)=k2(iv2)
      acd29(3)=abb29(31)
      acd29(4)=spvak2l5(iv2)
      acd29(5)=abb29(22)
      acd29(6)=spval6l5(iv2)
      acd29(7)=abb29(10)
      acd29(8)=k1(iv2)
      acd29(9)=k2(iv1)
      acd29(10)=spvak2l5(iv1)
      acd29(11)=spval6l5(iv1)
      acd29(12)=k3(iv2)
      acd29(13)=k4(iv2)
      acd29(14)=spvak4k1(iv2)
      acd29(15)=abb29(11)
      acd29(16)=spvak4k3(iv2)
      acd29(17)=abb29(18)
      acd29(18)=k3(iv1)
      acd29(19)=k4(iv1)
      acd29(20)=spvak4k1(iv1)
      acd29(21)=spvak4k3(iv1)
      acd29(22)=abb29(7)
      acd29(23)=abb29(8)
      acd29(24)=spval6k1(iv2)
      acd29(25)=abb29(15)
      acd29(26)=spval6k3(iv2)
      acd29(27)=abb29(25)
      acd29(28)=spval6k1(iv1)
      acd29(29)=spval6k3(iv1)
      acd29(30)=abb29(19)
      acd29(31)=abb29(27)
      acd29(32)=spvak2k1(iv2)
      acd29(33)=spvak2k3(iv2)
      acd29(34)=spvak2k1(iv1)
      acd29(35)=spvak2k3(iv1)
      acd29(36)=acd29(16)*acd29(31)
      acd29(37)=acd29(14)*acd29(30)
      acd29(38)=acd29(27)*acd29(33)
      acd29(39)=-acd29(25)*acd29(32)
      acd29(40)=-acd29(13)+acd29(8)-acd29(12)
      acd29(41)=acd29(7)*acd29(40)
      acd29(36)=acd29(41)+acd29(39)+acd29(38)+acd29(36)+acd29(37)
      acd29(36)=acd29(11)*acd29(36)
      acd29(37)=acd29(16)*acd29(23)
      acd29(38)=acd29(14)*acd29(22)
      acd29(39)=-acd29(27)*acd29(26)
      acd29(41)=acd29(25)*acd29(24)
      acd29(42)=-acd29(5)*acd29(40)
      acd29(37)=acd29(42)+acd29(41)+acd29(39)+acd29(37)+acd29(38)
      acd29(37)=acd29(10)*acd29(37)
      acd29(38)=acd29(21)*acd29(31)
      acd29(39)=acd29(20)*acd29(30)
      acd29(41)=acd29(27)*acd29(35)
      acd29(42)=-acd29(25)*acd29(34)
      acd29(43)=-acd29(19)+acd29(1)-acd29(18)
      acd29(44)=acd29(7)*acd29(43)
      acd29(38)=acd29(44)+acd29(42)+acd29(41)+acd29(38)+acd29(39)
      acd29(38)=acd29(6)*acd29(38)
      acd29(39)=acd29(21)*acd29(23)
      acd29(41)=acd29(20)*acd29(22)
      acd29(42)=-acd29(27)*acd29(29)
      acd29(44)=acd29(25)*acd29(28)
      acd29(45)=-acd29(5)*acd29(43)
      acd29(39)=acd29(45)+acd29(44)+acd29(42)+acd29(39)+acd29(41)
      acd29(39)=acd29(4)*acd29(39)
      acd29(41)=acd29(16)*acd29(17)
      acd29(42)=acd29(14)*acd29(15)
      acd29(41)=acd29(41)+acd29(42)
      acd29(41)=acd29(9)*acd29(41)
      acd29(42)=acd29(21)*acd29(17)
      acd29(44)=acd29(20)*acd29(15)
      acd29(42)=acd29(42)+acd29(44)
      acd29(42)=acd29(2)*acd29(42)
      acd29(40)=-acd29(9)*acd29(40)
      acd29(43)=-acd29(2)*acd29(43)
      acd29(40)=acd29(40)+acd29(43)
      acd29(40)=acd29(3)*acd29(40)
      brack=acd29(36)+acd29(37)+acd29(38)+acd29(39)+acd29(40)+acd29(41)+acd29(4&
      &2)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_abbrevd29h1
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
!---#[ subroutine reconstruct_d29:
   subroutine     reconstruct_d29(coeffs)
      use p3_usbar_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_29:
      coeffs%coeffs_29%c0 = derivative(czip)
      coeffs%coeffs_29%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_29%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_29%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_29%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_29%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_29%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_29%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_29%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_29%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_29%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_29%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_29%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_29%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_29%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_29:
   end subroutine reconstruct_d29
!---#] subroutine reconstruct_d29:
end module     p3_usbar_epnebbbar_d29h1l1d
