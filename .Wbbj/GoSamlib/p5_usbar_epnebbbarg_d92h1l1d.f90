module     p5_usbar_epnebbbarg_d92h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d92h1l1d.f90
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
   public :: derivative , reconstruct_d92
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd92h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd92
      complex(ki) :: brack
      acd92(1)=dotproduct(k1,qshift)
      acd92(2)=dotproduct(k2,qshift)
      acd92(3)=abb92(37)
      acd92(4)=dotproduct(qshift,spval6l5)
      acd92(5)=abb92(46)
      acd92(6)=abb92(18)
      acd92(7)=dotproduct(qshift,spvak2k1)
      acd92(8)=abb92(14)
      acd92(9)=dotproduct(qshift,spval5k1)
      acd92(10)=abb92(36)
      acd92(11)=dotproduct(qshift,spval6k1)
      acd92(12)=abb92(59)
      acd92(13)=abb92(12)
      acd92(14)=dotproduct(l5,qshift)
      acd92(15)=abb92(28)
      acd92(16)=abb92(22)
      acd92(17)=abb92(23)
      acd92(18)=abb92(38)
      acd92(19)=abb92(41)
      acd92(20)=abb92(11)
      acd92(21)=abb92(34)
      acd92(22)=dotproduct(qshift,spvak1l5)
      acd92(23)=abb92(17)
      acd92(24)=dotproduct(qshift,spvak2l5)
      acd92(25)=abb92(26)
      acd92(26)=abb92(16)
      acd92(27)=abb92(13)
      acd92(28)=abb92(15)
      acd92(29)=acd92(24)*acd92(17)
      acd92(30)=acd92(12)*acd92(2)
      acd92(31)=acd92(15)*acd92(14)
      acd92(32)=acd92(23)*acd92(22)
      acd92(29)=-acd92(25)+acd92(32)+acd92(31)+acd92(30)+acd92(29)
      acd92(29)=acd92(11)*acd92(29)
      acd92(30)=acd92(3)*acd92(1)
      acd92(31)=acd92(8)*acd92(7)
      acd92(32)=acd92(10)*acd92(9)
      acd92(30)=-acd92(13)+acd92(32)+acd92(31)+acd92(30)
      acd92(30)=acd92(2)*acd92(30)
      acd92(31)=-acd92(17)*acd92(7)
      acd92(32)=acd92(5)*acd92(1)
      acd92(33)=acd92(18)*acd92(9)
      acd92(31)=-acd92(19)+acd92(33)+acd92(32)+acd92(31)
      acd92(31)=acd92(4)*acd92(31)
      acd92(32)=-acd92(6)*acd92(1)
      acd92(33)=-acd92(16)*acd92(14)
      acd92(34)=-acd92(20)*acd92(7)
      acd92(35)=-acd92(21)*acd92(9)
      acd92(36)=-acd92(26)*acd92(22)
      acd92(37)=-acd92(27)*acd92(24)
      brack=acd92(28)+acd92(29)+acd92(30)+acd92(31)+acd92(32)+acd92(33)+acd92(3&
      &4)+acd92(35)+acd92(36)+acd92(37)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd92h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(48) :: acd92
      complex(ki) :: brack
      acd92(1)=k1(iv1)
      acd92(2)=dotproduct(k2,qshift)
      acd92(3)=abb92(37)
      acd92(4)=dotproduct(qshift,spval6l5)
      acd92(5)=abb92(46)
      acd92(6)=abb92(18)
      acd92(7)=k2(iv1)
      acd92(8)=dotproduct(k1,qshift)
      acd92(9)=dotproduct(qshift,spvak2k1)
      acd92(10)=abb92(14)
      acd92(11)=dotproduct(qshift,spval5k1)
      acd92(12)=abb92(36)
      acd92(13)=dotproduct(qshift,spval6k1)
      acd92(14)=abb92(59)
      acd92(15)=abb92(12)
      acd92(16)=l5(iv1)
      acd92(17)=abb92(28)
      acd92(18)=abb92(22)
      acd92(19)=spval6l5(iv1)
      acd92(20)=abb92(23)
      acd92(21)=abb92(38)
      acd92(22)=abb92(41)
      acd92(23)=spvak2k1(iv1)
      acd92(24)=abb92(11)
      acd92(25)=spval5k1(iv1)
      acd92(26)=abb92(34)
      acd92(27)=spval6k1(iv1)
      acd92(28)=dotproduct(l5,qshift)
      acd92(29)=dotproduct(qshift,spvak1l5)
      acd92(30)=abb92(17)
      acd92(31)=dotproduct(qshift,spvak2l5)
      acd92(32)=abb92(26)
      acd92(33)=spvak1l5(iv1)
      acd92(34)=abb92(16)
      acd92(35)=spvak2l5(iv1)
      acd92(36)=abb92(13)
      acd92(37)=-acd92(30)*acd92(29)
      acd92(38)=-acd92(17)*acd92(28)
      acd92(39)=-acd92(20)*acd92(31)
      acd92(40)=-acd92(2)*acd92(14)
      acd92(37)=acd92(40)+acd92(39)+acd92(38)+acd92(32)+acd92(37)
      acd92(37)=acd92(27)*acd92(37)
      acd92(38)=-acd92(11)*acd92(12)
      acd92(39)=-acd92(9)*acd92(10)
      acd92(40)=-acd92(3)*acd92(8)
      acd92(41)=-acd92(13)*acd92(14)
      acd92(38)=acd92(41)+acd92(40)+acd92(39)+acd92(15)+acd92(38)
      acd92(38)=acd92(7)*acd92(38)
      acd92(39)=-acd92(11)*acd92(21)
      acd92(40)=-acd92(5)*acd92(8)
      acd92(41)=acd92(20)*acd92(9)
      acd92(39)=acd92(41)+acd92(40)+acd92(22)+acd92(39)
      acd92(39)=acd92(19)*acd92(39)
      acd92(40)=-acd92(30)*acd92(33)
      acd92(41)=-acd92(16)*acd92(17)
      acd92(42)=-acd92(20)*acd92(35)
      acd92(40)=acd92(42)+acd92(40)+acd92(41)
      acd92(40)=acd92(13)*acd92(40)
      acd92(41)=-acd92(25)*acd92(12)
      acd92(42)=-acd92(23)*acd92(10)
      acd92(43)=-acd92(1)*acd92(3)
      acd92(41)=acd92(43)+acd92(41)+acd92(42)
      acd92(41)=acd92(2)*acd92(41)
      acd92(42)=-acd92(25)*acd92(21)
      acd92(43)=acd92(20)*acd92(23)
      acd92(42)=acd92(43)+acd92(42)
      acd92(42)=acd92(4)*acd92(42)
      acd92(43)=acd92(35)*acd92(36)
      acd92(44)=acd92(33)*acd92(34)
      acd92(45)=acd92(16)*acd92(18)
      acd92(46)=acd92(25)*acd92(26)
      acd92(47)=acd92(23)*acd92(24)
      acd92(48)=-acd92(4)*acd92(5)
      acd92(48)=acd92(6)+acd92(48)
      acd92(48)=acd92(1)*acd92(48)
      brack=acd92(37)+acd92(38)+acd92(39)+acd92(40)+acd92(41)+acd92(42)+acd92(4&
      &3)+acd92(44)+acd92(45)+acd92(46)+acd92(47)+acd92(48)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd92h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd92
      complex(ki) :: brack
      acd92(1)=k1(iv1)
      acd92(2)=k2(iv2)
      acd92(3)=abb92(37)
      acd92(4)=spval6l5(iv2)
      acd92(5)=abb92(46)
      acd92(6)=k1(iv2)
      acd92(7)=k2(iv1)
      acd92(8)=spval6l5(iv1)
      acd92(9)=spvak2k1(iv2)
      acd92(10)=abb92(14)
      acd92(11)=spval5k1(iv2)
      acd92(12)=abb92(36)
      acd92(13)=spval6k1(iv2)
      acd92(14)=abb92(59)
      acd92(15)=spvak2k1(iv1)
      acd92(16)=spval5k1(iv1)
      acd92(17)=spval6k1(iv1)
      acd92(18)=l5(iv1)
      acd92(19)=abb92(28)
      acd92(20)=l5(iv2)
      acd92(21)=abb92(23)
      acd92(22)=abb92(38)
      acd92(23)=spvak1l5(iv2)
      acd92(24)=abb92(17)
      acd92(25)=spvak2l5(iv2)
      acd92(26)=spvak1l5(iv1)
      acd92(27)=spvak2l5(iv1)
      acd92(28)=acd92(11)*acd92(12)
      acd92(29)=acd92(9)*acd92(10)
      acd92(30)=acd92(3)*acd92(6)
      acd92(31)=acd92(13)*acd92(14)
      acd92(28)=acd92(31)+acd92(30)+acd92(28)+acd92(29)
      acd92(28)=acd92(7)*acd92(28)
      acd92(29)=acd92(12)*acd92(16)
      acd92(30)=acd92(10)*acd92(15)
      acd92(31)=acd92(1)*acd92(3)
      acd92(32)=acd92(17)*acd92(14)
      acd92(29)=acd92(32)+acd92(31)+acd92(29)+acd92(30)
      acd92(29)=acd92(2)*acd92(29)
      acd92(30)=acd92(24)*acd92(23)
      acd92(31)=acd92(19)*acd92(20)
      acd92(32)=acd92(21)*acd92(25)
      acd92(30)=acd92(32)+acd92(30)+acd92(31)
      acd92(30)=acd92(17)*acd92(30)
      acd92(31)=acd92(24)*acd92(26)
      acd92(32)=acd92(19)*acd92(18)
      acd92(33)=acd92(21)*acd92(27)
      acd92(31)=acd92(33)+acd92(31)+acd92(32)
      acd92(31)=acd92(13)*acd92(31)
      acd92(32)=acd92(11)*acd92(22)
      acd92(33)=acd92(5)*acd92(6)
      acd92(32)=acd92(32)+acd92(33)
      acd92(32)=acd92(8)*acd92(32)
      acd92(33)=acd92(16)*acd92(22)
      acd92(34)=acd92(1)*acd92(5)
      acd92(33)=acd92(33)+acd92(34)
      acd92(33)=acd92(4)*acd92(33)
      acd92(34)=-acd92(8)*acd92(9)
      acd92(35)=-acd92(4)*acd92(15)
      acd92(34)=acd92(34)+acd92(35)
      acd92(34)=acd92(21)*acd92(34)
      brack=acd92(28)+acd92(29)+acd92(30)+acd92(31)+acd92(32)+acd92(33)+acd92(3&
      &4)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd92h1
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
!---#[ subroutine reconstruct_d92:
   subroutine     reconstruct_d92(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_92:
      coeffs%coeffs_92%c0 = derivative(czip)
      coeffs%coeffs_92%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_92%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_92%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_92%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_92%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_92%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_92%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_92%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_92%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_92%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_92%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_92%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_92%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_92%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_92:
   end subroutine reconstruct_d92
!---#] subroutine reconstruct_d92:
end module     p5_usbar_epnebbbarg_d92h1l1d
