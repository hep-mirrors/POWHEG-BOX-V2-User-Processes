module     p0_dbaru_epnebbbarg_d73h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d73h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d73
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd73h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd73
      complex(ki) :: brack
      acd73(1)=abb73(21)
      brack=acd73(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd73h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd73
      complex(ki) :: brack
      acd73(1)=k2(iv1)
      acd73(2)=abb73(19)
      acd73(3)=l6(iv1)
      acd73(4)=abb73(35)
      acd73(5)=spvak4k3(iv1)
      acd73(6)=abb73(17)
      acd73(7)=spval6k2(iv1)
      acd73(8)=abb73(8)
      acd73(9)=spval6k3(iv1)
      acd73(10)=abb73(38)
      acd73(11)=acd73(2)*acd73(1)
      acd73(12)=acd73(4)*acd73(3)
      acd73(13)=acd73(6)*acd73(5)
      acd73(14)=acd73(8)*acd73(7)
      acd73(15)=acd73(10)*acd73(9)
      brack=acd73(11)+acd73(12)+acd73(13)+acd73(14)+acd73(15)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd73h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd73
      complex(ki) :: brack
      acd73(1)=d(iv1,iv2)
      acd73(2)=abb73(34)
      acd73(3)=k2(iv1)
      acd73(4)=spvak4k2(iv2)
      acd73(5)=abb73(14)
      acd73(6)=spvak4k3(iv2)
      acd73(7)=abb73(20)
      acd73(8)=spval6k2(iv2)
      acd73(9)=abb73(16)
      acd73(10)=k2(iv2)
      acd73(11)=spvak4k2(iv1)
      acd73(12)=spvak4k3(iv1)
      acd73(13)=spval6k2(iv1)
      acd73(14)=l6(iv1)
      acd73(15)=l6(iv2)
      acd73(16)=abb73(11)
      acd73(17)=spvak1k2(iv2)
      acd73(18)=abb73(13)
      acd73(19)=spvak1k2(iv1)
      acd73(20)=spval6k3(iv2)
      acd73(21)=abb73(12)
      acd73(22)=spval6k3(iv1)
      acd73(23)=acd73(15)+acd73(10)
      acd73(23)=acd73(23)*acd73(12)
      acd73(24)=acd73(14)+acd73(3)
      acd73(24)=acd73(24)*acd73(6)
      acd73(23)=acd73(24)+acd73(23)
      acd73(23)=acd73(7)*acd73(23)
      acd73(24)=acd73(4)*acd73(3)
      acd73(25)=acd73(11)*acd73(10)
      acd73(24)=acd73(25)+acd73(24)
      acd73(24)=acd73(5)*acd73(24)
      acd73(25)=acd73(17)*acd73(13)
      acd73(26)=acd73(19)*acd73(8)
      acd73(25)=acd73(26)+acd73(25)
      acd73(25)=acd73(18)*acd73(25)
      acd73(26)=acd73(20)*acd73(19)
      acd73(27)=acd73(22)*acd73(17)
      acd73(26)=acd73(27)+acd73(26)
      acd73(26)=acd73(21)*acd73(26)
      acd73(27)=acd73(8)*acd73(3)
      acd73(28)=acd73(13)*acd73(10)
      acd73(27)=acd73(27)+acd73(28)
      acd73(27)=acd73(9)*acd73(27)
      acd73(28)=acd73(12)*acd73(8)
      acd73(29)=acd73(13)*acd73(6)
      acd73(28)=acd73(28)+acd73(29)
      acd73(28)=acd73(16)*acd73(28)
      acd73(29)=acd73(2)*acd73(1)
      brack=acd73(23)+acd73(24)+acd73(25)+acd73(26)+acd73(27)+acd73(28)+2.0_ki*&
      &acd73(29)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd73h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd73
      complex(ki) :: brack
      acd73(1)=d(iv1,iv2)
      acd73(2)=spvak4k2(iv3)
      acd73(3)=abb73(22)
      acd73(4)=spval6k2(iv3)
      acd73(5)=abb73(15)
      acd73(6)=d(iv1,iv3)
      acd73(7)=spvak4k2(iv2)
      acd73(8)=spval6k2(iv2)
      acd73(9)=d(iv2,iv3)
      acd73(10)=spvak4k2(iv1)
      acd73(11)=spval6k2(iv1)
      acd73(12)=spvak1k2(iv1)
      acd73(13)=spvak4k3(iv2)
      acd73(14)=spval6l5(iv3)
      acd73(15)=abb73(7)
      acd73(16)=spval6k7(iv3)
      acd73(17)=abb73(9)
      acd73(18)=spval6e7(iv3)
      acd73(19)=abb73(10)
      acd73(20)=spvak4k3(iv3)
      acd73(21)=spval6l5(iv2)
      acd73(22)=spval6k7(iv2)
      acd73(23)=spval6e7(iv2)
      acd73(24)=spvak1k2(iv2)
      acd73(25)=spvak4k3(iv1)
      acd73(26)=spval6l5(iv1)
      acd73(27)=spval6k7(iv1)
      acd73(28)=spval6e7(iv1)
      acd73(29)=spvak1k2(iv3)
      acd73(30)=acd73(14)*acd73(15)
      acd73(31)=acd73(16)*acd73(17)
      acd73(32)=acd73(18)*acd73(19)
      acd73(30)=acd73(32)+acd73(30)+acd73(31)
      acd73(31)=acd73(13)*acd73(12)
      acd73(32)=acd73(25)*acd73(24)
      acd73(31)=acd73(31)+acd73(32)
      acd73(30)=acd73(31)*acd73(30)
      acd73(31)=acd73(21)*acd73(15)
      acd73(32)=acd73(22)*acd73(17)
      acd73(33)=acd73(23)*acd73(19)
      acd73(31)=acd73(33)+acd73(32)+acd73(31)
      acd73(32)=acd73(20)*acd73(12)
      acd73(33)=acd73(29)*acd73(25)
      acd73(32)=acd73(32)+acd73(33)
      acd73(31)=acd73(32)*acd73(31)
      acd73(32)=acd73(26)*acd73(15)
      acd73(33)=acd73(27)*acd73(17)
      acd73(34)=acd73(28)*acd73(19)
      acd73(32)=acd73(34)+acd73(33)+acd73(32)
      acd73(33)=acd73(24)*acd73(20)
      acd73(34)=acd73(29)*acd73(13)
      acd73(33)=acd73(33)+acd73(34)
      acd73(32)=acd73(33)*acd73(32)
      acd73(33)=acd73(4)*acd73(1)
      acd73(34)=acd73(8)*acd73(6)
      acd73(35)=acd73(11)*acd73(9)
      acd73(33)=acd73(35)+acd73(34)+acd73(33)
      acd73(34)=2.0_ki*acd73(5)
      acd73(33)=acd73(34)*acd73(33)
      acd73(34)=acd73(2)*acd73(1)
      acd73(35)=acd73(7)*acd73(6)
      acd73(36)=acd73(10)*acd73(9)
      acd73(34)=acd73(36)+acd73(35)+acd73(34)
      acd73(35)=2.0_ki*acd73(3)
      acd73(34)=acd73(35)*acd73(34)
      brack=acd73(30)+acd73(31)+acd73(32)+acd73(33)+acd73(34)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd73h0
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
!---#[ subroutine reconstruct_d73:
   subroutine     reconstruct_d73(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_73:
      coeffs%coeffs_73%c0 = derivative(czip)
      coeffs%coeffs_73%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_73%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_73%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_73%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_73%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_73%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_73%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_73%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_73%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_73%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_73%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_73%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_73%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_73%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_73%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_73%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_73%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_73%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_73%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_73%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_73%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_73%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_73%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_73%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_73%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_73%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_73%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_73%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_73%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_73%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_73%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_73%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_73%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_73%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_73:
   end subroutine reconstruct_d73
!---#] subroutine reconstruct_d73:
end module     p0_dbaru_epnebbbarg_d73h0l1d
