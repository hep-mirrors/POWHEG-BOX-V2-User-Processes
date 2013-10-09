module     p9_csbar_epnebbbarg_d120h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d120h1l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d120
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd120h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd120
      complex(ki) :: brack
      acd120(1)=dotproduct(k1,qshift)
      acd120(2)=abb120(13)
      acd120(3)=dotproduct(k2,qshift)
      acd120(4)=abb120(18)
      acd120(5)=dotproduct(l6,qshift)
      acd120(6)=abb120(16)
      acd120(7)=dotproduct(qshift,qshift)
      acd120(8)=abb120(27)
      acd120(9)=dotproduct(qshift,spvak2k1)
      acd120(10)=dotproduct(qshift,spval6k2)
      acd120(11)=abb120(22)
      acd120(12)=dotproduct(qshift,spval6l5)
      acd120(13)=abb120(25)
      acd120(14)=dotproduct(qshift,spval6k7)
      acd120(15)=abb120(26)
      acd120(16)=dotproduct(qshift,spval6e7)
      acd120(17)=abb120(24)
      acd120(18)=abb120(15)
      acd120(19)=dotproduct(qshift,spvak4k1)
      acd120(20)=abb120(23)
      acd120(21)=abb120(14)
      acd120(22)=abb120(20)
      acd120(23)=abb120(21)
      acd120(24)=abb120(19)
      acd120(25)=abb120(17)
      acd120(26)=dotproduct(qshift,spvak4k2)
      acd120(27)=abb120(12)
      acd120(28)=dotproduct(qshift,spval6k1)
      acd120(29)=abb120(10)
      acd120(30)=abb120(11)
      acd120(31)=acd120(11)*acd120(10)
      acd120(32)=acd120(13)*acd120(12)
      acd120(33)=acd120(15)*acd120(14)
      acd120(34)=acd120(17)*acd120(16)
      acd120(31)=-acd120(18)+acd120(34)+acd120(33)+acd120(32)+acd120(31)
      acd120(31)=acd120(9)*acd120(31)
      acd120(32)=acd120(20)*acd120(10)
      acd120(33)=acd120(22)*acd120(12)
      acd120(34)=acd120(23)*acd120(14)
      acd120(35)=acd120(24)*acd120(16)
      acd120(32)=-acd120(25)+acd120(35)+acd120(34)+acd120(33)+acd120(32)
      acd120(32)=acd120(19)*acd120(32)
      acd120(33)=-acd120(2)*acd120(1)
      acd120(34)=-acd120(4)*acd120(3)
      acd120(35)=-acd120(6)*acd120(5)
      acd120(36)=acd120(8)*acd120(7)
      acd120(37)=-acd120(21)*acd120(10)
      acd120(38)=-acd120(27)*acd120(26)
      acd120(39)=-acd120(29)*acd120(28)
      brack=acd120(30)+acd120(31)+acd120(32)+acd120(33)+acd120(34)+acd120(35)+a&
      &cd120(36)+acd120(37)+acd120(38)+acd120(39)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd120h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(46) :: acd120
      complex(ki) :: brack
      acd120(1)=k1(iv1)
      acd120(2)=abb120(13)
      acd120(3)=k2(iv1)
      acd120(4)=abb120(18)
      acd120(5)=l6(iv1)
      acd120(6)=abb120(16)
      acd120(7)=qshift(iv1)
      acd120(8)=abb120(27)
      acd120(9)=spvak2k1(iv1)
      acd120(10)=dotproduct(qshift,spval6k2)
      acd120(11)=abb120(22)
      acd120(12)=dotproduct(qshift,spval6l5)
      acd120(13)=abb120(25)
      acd120(14)=dotproduct(qshift,spval6k7)
      acd120(15)=abb120(26)
      acd120(16)=dotproduct(qshift,spval6e7)
      acd120(17)=abb120(24)
      acd120(18)=abb120(15)
      acd120(19)=spval6k2(iv1)
      acd120(20)=dotproduct(qshift,spvak2k1)
      acd120(21)=dotproduct(qshift,spvak4k1)
      acd120(22)=abb120(23)
      acd120(23)=abb120(14)
      acd120(24)=spval6l5(iv1)
      acd120(25)=abb120(20)
      acd120(26)=spval6k7(iv1)
      acd120(27)=abb120(21)
      acd120(28)=spval6e7(iv1)
      acd120(29)=abb120(19)
      acd120(30)=spvak4k1(iv1)
      acd120(31)=abb120(17)
      acd120(32)=spvak4k2(iv1)
      acd120(33)=abb120(12)
      acd120(34)=spval6k1(iv1)
      acd120(35)=abb120(10)
      acd120(36)=-acd120(28)*acd120(29)
      acd120(37)=-acd120(26)*acd120(27)
      acd120(38)=-acd120(24)*acd120(25)
      acd120(39)=-acd120(19)*acd120(22)
      acd120(36)=acd120(39)+acd120(38)+acd120(36)+acd120(37)
      acd120(36)=acd120(21)*acd120(36)
      acd120(37)=-acd120(17)*acd120(28)
      acd120(38)=-acd120(15)*acd120(26)
      acd120(39)=-acd120(13)*acd120(24)
      acd120(40)=-acd120(19)*acd120(11)
      acd120(37)=acd120(40)+acd120(39)+acd120(37)+acd120(38)
      acd120(37)=acd120(20)*acd120(37)
      acd120(38)=-acd120(16)*acd120(29)
      acd120(39)=-acd120(14)*acd120(27)
      acd120(40)=-acd120(12)*acd120(25)
      acd120(41)=-acd120(10)*acd120(22)
      acd120(38)=acd120(41)+acd120(40)+acd120(39)+acd120(31)+acd120(38)
      acd120(38)=acd120(30)*acd120(38)
      acd120(39)=-acd120(16)*acd120(17)
      acd120(40)=-acd120(14)*acd120(15)
      acd120(41)=-acd120(12)*acd120(13)
      acd120(42)=-acd120(10)*acd120(11)
      acd120(39)=acd120(42)+acd120(41)+acd120(40)+acd120(18)+acd120(39)
      acd120(39)=acd120(9)*acd120(39)
      acd120(40)=acd120(34)*acd120(35)
      acd120(41)=acd120(32)*acd120(33)
      acd120(42)=acd120(7)*acd120(8)
      acd120(43)=acd120(5)*acd120(6)
      acd120(44)=acd120(3)*acd120(4)
      acd120(45)=acd120(1)*acd120(2)
      acd120(46)=acd120(19)*acd120(23)
      brack=acd120(36)+acd120(37)+acd120(38)+acd120(39)+acd120(40)+acd120(41)-2&
      &.0_ki*acd120(42)+acd120(43)+acd120(44)+acd120(45)+acd120(46)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd120h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd120
      complex(ki) :: brack
      acd120(1)=d(iv1,iv2)
      acd120(2)=abb120(27)
      acd120(3)=spvak2k1(iv1)
      acd120(4)=spval6k2(iv2)
      acd120(5)=abb120(22)
      acd120(6)=spval6l5(iv2)
      acd120(7)=abb120(25)
      acd120(8)=spval6k7(iv2)
      acd120(9)=abb120(26)
      acd120(10)=spval6e7(iv2)
      acd120(11)=abb120(24)
      acd120(12)=spvak2k1(iv2)
      acd120(13)=spval6k2(iv1)
      acd120(14)=spval6l5(iv1)
      acd120(15)=spval6k7(iv1)
      acd120(16)=spval6e7(iv1)
      acd120(17)=spvak4k1(iv2)
      acd120(18)=abb120(23)
      acd120(19)=spvak4k1(iv1)
      acd120(20)=abb120(20)
      acd120(21)=abb120(21)
      acd120(22)=abb120(19)
      acd120(23)=acd120(10)*acd120(22)
      acd120(24)=acd120(8)*acd120(21)
      acd120(25)=acd120(6)*acd120(20)
      acd120(26)=acd120(4)*acd120(18)
      acd120(23)=acd120(26)+acd120(25)+acd120(23)+acd120(24)
      acd120(23)=acd120(19)*acd120(23)
      acd120(24)=acd120(16)*acd120(22)
      acd120(25)=acd120(15)*acd120(21)
      acd120(26)=acd120(14)*acd120(20)
      acd120(27)=acd120(13)*acd120(18)
      acd120(24)=acd120(27)+acd120(26)+acd120(24)+acd120(25)
      acd120(24)=acd120(17)*acd120(24)
      acd120(25)=acd120(11)*acd120(16)
      acd120(26)=acd120(9)*acd120(15)
      acd120(27)=acd120(7)*acd120(14)
      acd120(28)=acd120(5)*acd120(13)
      acd120(25)=acd120(28)+acd120(27)+acd120(25)+acd120(26)
      acd120(25)=acd120(12)*acd120(25)
      acd120(26)=acd120(10)*acd120(11)
      acd120(27)=acd120(8)*acd120(9)
      acd120(28)=acd120(6)*acd120(7)
      acd120(29)=acd120(4)*acd120(5)
      acd120(26)=acd120(29)+acd120(28)+acd120(26)+acd120(27)
      acd120(26)=acd120(3)*acd120(26)
      acd120(27)=acd120(1)*acd120(2)
      brack=acd120(23)+acd120(24)+acd120(25)+acd120(26)+2.0_ki*acd120(27)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd120h1
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
!---#[ subroutine reconstruct_d120:
   subroutine     reconstruct_d120(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_120:
      coeffs%coeffs_120%c0 = derivative(czip)
      coeffs%coeffs_120%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_120%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_120%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_120%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_120%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_120%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_120%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_120%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_120%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_120%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_120%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_120%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_120%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_120%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_120:
   end subroutine reconstruct_d120
!---#] subroutine reconstruct_d120:
end module     p9_csbar_epnebbbarg_d120h1l1d
