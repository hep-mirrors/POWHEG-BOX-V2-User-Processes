module     p0_dbaru_epnebbbarg_d63h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d63h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d63
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd63h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd63
      complex(ki) :: brack
      acd63(1)=dotproduct(k1,qshift)
      acd63(2)=abb63(29)
      acd63(3)=dotproduct(k2,qshift)
      acd63(4)=abb63(24)
      acd63(5)=dotproduct(k3,qshift)
      acd63(6)=abb63(63)
      acd63(7)=dotproduct(k4,qshift)
      acd63(8)=abb63(111)
      acd63(9)=dotproduct(l5,qshift)
      acd63(10)=abb63(94)
      acd63(11)=dotproduct(l6,qshift)
      acd63(12)=dotproduct(k7,qshift)
      acd63(13)=abb63(47)
      acd63(14)=dotproduct(e7,qshift)
      acd63(15)=abb63(25)
      acd63(16)=dotproduct(qshift,spvak1k3)
      acd63(17)=abb63(15)
      acd63(18)=dotproduct(qshift,spvak1k4)
      acd63(19)=abb63(20)
      acd63(20)=dotproduct(qshift,spvak4k1)
      acd63(21)=abb63(14)
      acd63(22)=dotproduct(qshift,spvak4k3)
      acd63(23)=abb63(17)
      acd63(24)=dotproduct(qshift,spval5k2)
      acd63(25)=abb63(13)
      acd63(26)=dotproduct(qshift,spval5l6)
      acd63(27)=abb63(40)
      acd63(28)=dotproduct(qshift,spval5k7)
      acd63(29)=abb63(30)
      acd63(30)=dotproduct(qshift,spval6k2)
      acd63(31)=abb63(18)
      acd63(32)=dotproduct(qshift,spval6l5)
      acd63(33)=abb63(37)
      acd63(34)=dotproduct(qshift,spval6k7)
      acd63(35)=abb63(59)
      acd63(36)=dotproduct(qshift,spvak7k2)
      acd63(37)=abb63(21)
      acd63(38)=dotproduct(qshift,spvae7k2)
      acd63(39)=abb63(12)
      acd63(40)=dotproduct(qshift,spval5e7)
      acd63(41)=abb63(38)
      acd63(42)=dotproduct(qshift,spval6e7)
      acd63(43)=abb63(57)
      acd63(44)=abb63(19)
      acd63(45)=-acd63(11)-acd63(9)
      acd63(45)=acd63(10)*acd63(45)
      acd63(46)=-acd63(2)*acd63(1)
      acd63(47)=-acd63(4)*acd63(3)
      acd63(48)=-acd63(6)*acd63(5)
      acd63(49)=-acd63(8)*acd63(7)
      acd63(50)=-acd63(13)*acd63(12)
      acd63(51)=-acd63(15)*acd63(14)
      acd63(52)=-acd63(17)*acd63(16)
      acd63(53)=-acd63(19)*acd63(18)
      acd63(54)=-acd63(21)*acd63(20)
      acd63(55)=-acd63(23)*acd63(22)
      acd63(56)=-acd63(25)*acd63(24)
      acd63(57)=-acd63(27)*acd63(26)
      acd63(58)=-acd63(29)*acd63(28)
      acd63(59)=-acd63(31)*acd63(30)
      acd63(60)=-acd63(33)*acd63(32)
      acd63(61)=-acd63(35)*acd63(34)
      acd63(62)=-acd63(37)*acd63(36)
      acd63(63)=-acd63(39)*acd63(38)
      acd63(64)=-acd63(41)*acd63(40)
      acd63(65)=-acd63(43)*acd63(42)
      brack=acd63(44)+acd63(45)+acd63(46)+acd63(47)+acd63(48)+acd63(49)+acd63(5&
      &0)+acd63(51)+acd63(52)+acd63(53)+acd63(54)+acd63(55)+acd63(56)+acd63(57)&
      &+acd63(58)+acd63(59)+acd63(60)+acd63(61)+acd63(62)+acd63(63)+acd63(64)+a&
      &cd63(65)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd63h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd63
      complex(ki) :: brack
      acd63(1)=k1(iv1)
      acd63(2)=abb63(29)
      acd63(3)=k2(iv1)
      acd63(4)=abb63(24)
      acd63(5)=k3(iv1)
      acd63(6)=abb63(63)
      acd63(7)=k4(iv1)
      acd63(8)=abb63(111)
      acd63(9)=l5(iv1)
      acd63(10)=abb63(94)
      acd63(11)=l6(iv1)
      acd63(12)=k7(iv1)
      acd63(13)=abb63(47)
      acd63(14)=e7(iv1)
      acd63(15)=abb63(25)
      acd63(16)=spvak1k3(iv1)
      acd63(17)=abb63(15)
      acd63(18)=spvak1k4(iv1)
      acd63(19)=abb63(20)
      acd63(20)=spvak4k1(iv1)
      acd63(21)=abb63(14)
      acd63(22)=spvak4k3(iv1)
      acd63(23)=abb63(17)
      acd63(24)=spval5k2(iv1)
      acd63(25)=abb63(13)
      acd63(26)=spval5l6(iv1)
      acd63(27)=abb63(40)
      acd63(28)=spval5k7(iv1)
      acd63(29)=abb63(30)
      acd63(30)=spval6k2(iv1)
      acd63(31)=abb63(18)
      acd63(32)=spval6l5(iv1)
      acd63(33)=abb63(37)
      acd63(34)=spval6k7(iv1)
      acd63(35)=abb63(59)
      acd63(36)=spvak7k2(iv1)
      acd63(37)=abb63(21)
      acd63(38)=spvae7k2(iv1)
      acd63(39)=abb63(12)
      acd63(40)=spval5e7(iv1)
      acd63(41)=abb63(38)
      acd63(42)=spval6e7(iv1)
      acd63(43)=abb63(57)
      acd63(44)=acd63(11)+acd63(9)
      acd63(44)=acd63(10)*acd63(44)
      acd63(45)=acd63(2)*acd63(1)
      acd63(46)=acd63(4)*acd63(3)
      acd63(47)=acd63(6)*acd63(5)
      acd63(48)=acd63(8)*acd63(7)
      acd63(49)=acd63(13)*acd63(12)
      acd63(50)=acd63(15)*acd63(14)
      acd63(51)=acd63(17)*acd63(16)
      acd63(52)=acd63(19)*acd63(18)
      acd63(53)=acd63(21)*acd63(20)
      acd63(54)=acd63(23)*acd63(22)
      acd63(55)=acd63(25)*acd63(24)
      acd63(56)=acd63(27)*acd63(26)
      acd63(57)=acd63(29)*acd63(28)
      acd63(58)=acd63(31)*acd63(30)
      acd63(59)=acd63(33)*acd63(32)
      acd63(60)=acd63(35)*acd63(34)
      acd63(61)=acd63(37)*acd63(36)
      acd63(62)=acd63(39)*acd63(38)
      acd63(63)=acd63(41)*acd63(40)
      acd63(64)=acd63(43)*acd63(42)
      brack=acd63(44)+acd63(45)+acd63(46)+acd63(47)+acd63(48)+acd63(49)+acd63(5&
      &0)+acd63(51)+acd63(52)+acd63(53)+acd63(54)+acd63(55)+acd63(56)+acd63(57)&
      &+acd63(58)+acd63(59)+acd63(60)+acd63(61)+acd63(62)+acd63(63)+acd63(64)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd63h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k2
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d63:
   subroutine     reconstruct_d63(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_63:
      coeffs%coeffs_63%c0 = derivative(czip)
      coeffs%coeffs_63%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_63%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_63%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_63%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_63:
   end subroutine reconstruct_d63
!---#] subroutine reconstruct_d63:
end module     p0_dbaru_epnebbbarg_d63h0l1d
