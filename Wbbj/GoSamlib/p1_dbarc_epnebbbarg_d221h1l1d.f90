module     p1_dbarc_epnebbbarg_d221h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d221h1l1d.f90
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
   public :: derivative , reconstruct_d221
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd221h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd221
      complex(ki) :: brack
      acd221(1)=abb221(13)
      brack=acd221(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd221h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(78) :: acd221
      complex(ki) :: brack
      acd221(1)=k2(iv1)
      acd221(2)=abb221(16)
      acd221(3)=l6(iv1)
      acd221(4)=abb221(26)
      acd221(5)=k7(iv1)
      acd221(6)=abb221(95)
      acd221(7)=e7(iv1)
      acd221(8)=abb221(18)
      acd221(9)=spvak1l6(iv1)
      acd221(10)=abb221(25)
      acd221(11)=spvak1k7(iv1)
      acd221(12)=abb221(21)
      acd221(13)=spvak2k3(iv1)
      acd221(14)=abb221(20)
      acd221(15)=spvak2l6(iv1)
      acd221(16)=abb221(19)
      acd221(17)=spvak2k7(iv1)
      acd221(18)=abb221(28)
      acd221(19)=spvak4l6(iv1)
      acd221(20)=abb221(27)
      acd221(21)=spvak4k7(iv1)
      acd221(22)=abb221(30)
      acd221(23)=spval6k2(iv1)
      acd221(24)=abb221(24)
      acd221(25)=spval6k3(iv1)
      acd221(26)=abb221(34)
      acd221(27)=spval6k7(iv1)
      acd221(28)=abb221(23)
      acd221(29)=spvak7k2(iv1)
      acd221(30)=abb221(46)
      acd221(31)=spvak7k3(iv1)
      acd221(32)=abb221(42)
      acd221(33)=spvak7l6(iv1)
      acd221(34)=abb221(35)
      acd221(35)=spvak1e7(iv1)
      acd221(36)=abb221(43)
      acd221(37)=spvak2e7(iv1)
      acd221(38)=abb221(36)
      acd221(39)=spvae7k2(iv1)
      acd221(40)=abb221(14)
      acd221(41)=spvae7k3(iv1)
      acd221(42)=abb221(52)
      acd221(43)=spvak4e7(iv1)
      acd221(44)=abb221(48)
      acd221(45)=spval6e7(iv1)
      acd221(46)=abb221(15)
      acd221(47)=spvae7l6(iv1)
      acd221(48)=abb221(41)
      acd221(49)=spvak7e7(iv1)
      acd221(50)=abb221(38)
      acd221(51)=spvae7k7(iv1)
      acd221(52)=abb221(22)
      acd221(53)=-acd221(2)*acd221(1)
      acd221(54)=-acd221(4)*acd221(3)
      acd221(55)=-acd221(6)*acd221(5)
      acd221(56)=-acd221(8)*acd221(7)
      acd221(57)=-acd221(10)*acd221(9)
      acd221(58)=-acd221(12)*acd221(11)
      acd221(59)=-acd221(14)*acd221(13)
      acd221(60)=-acd221(16)*acd221(15)
      acd221(61)=-acd221(18)*acd221(17)
      acd221(62)=-acd221(20)*acd221(19)
      acd221(63)=-acd221(22)*acd221(21)
      acd221(64)=-acd221(24)*acd221(23)
      acd221(65)=-acd221(26)*acd221(25)
      acd221(66)=-acd221(28)*acd221(27)
      acd221(67)=-acd221(30)*acd221(29)
      acd221(68)=-acd221(32)*acd221(31)
      acd221(69)=-acd221(34)*acd221(33)
      acd221(70)=-acd221(36)*acd221(35)
      acd221(71)=-acd221(38)*acd221(37)
      acd221(72)=-acd221(40)*acd221(39)
      acd221(73)=-acd221(42)*acd221(41)
      acd221(74)=-acd221(44)*acd221(43)
      acd221(75)=-acd221(46)*acd221(45)
      acd221(76)=-acd221(48)*acd221(47)
      acd221(77)=-acd221(50)*acd221(49)
      acd221(78)=-acd221(52)*acd221(51)
      brack=acd221(53)+acd221(54)+acd221(55)+acd221(56)+acd221(57)+acd221(58)+a&
      &cd221(59)+acd221(60)+acd221(61)+acd221(62)+acd221(63)+acd221(64)+acd221(&
      &65)+acd221(66)+acd221(67)+acd221(68)+acd221(69)+acd221(70)+acd221(71)+ac&
      &d221(72)+acd221(73)+acd221(74)+acd221(75)+acd221(76)+acd221(77)+acd221(7&
      &8)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd221h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd221
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd221h1
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
!---#[ subroutine reconstruct_d221:
   subroutine     reconstruct_d221(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_221:
      coeffs%coeffs_221%c0 = derivative(czip)
      coeffs%coeffs_221%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_221%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_221%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_221%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_221%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_221%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_221%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_221%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_221%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_221%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_221%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_221%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_221%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_221%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_221:
   end subroutine reconstruct_d221
!---#] subroutine reconstruct_d221:
end module     p1_dbarc_epnebbbarg_d221h1l1d
