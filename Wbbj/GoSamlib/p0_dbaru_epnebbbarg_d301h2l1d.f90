module     p0_dbaru_epnebbbarg_d301h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d301h2l1d.f90
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
   public :: derivative , reconstruct_d301
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd301h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd301
      complex(ki) :: brack
      acd301(1)=abb301(11)
      brack=acd301(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd301h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd301
      complex(ki) :: brack
      acd301(1)=k2(iv1)
      acd301(2)=abb301(23)
      acd301(3)=l5(iv1)
      acd301(4)=abb301(9)
      acd301(5)=e7(iv1)
      acd301(6)=abb301(20)
      acd301(7)=spvak1l6(iv1)
      acd301(8)=abb301(39)
      acd301(9)=spvak1k7(iv1)
      acd301(10)=abb301(18)
      acd301(11)=spvak4l6(iv1)
      acd301(12)=abb301(40)
      acd301(13)=spvak4k7(iv1)
      acd301(14)=abb301(36)
      acd301(15)=spval5k2(iv1)
      acd301(16)=abb301(17)
      acd301(17)=spval5k7(iv1)
      acd301(18)=abb301(14)
      acd301(19)=spvak7k2(iv1)
      acd301(20)=abb301(13)
      acd301(21)=spvae7k2(iv1)
      acd301(22)=abb301(15)
      acd301(23)=acd301(2)*acd301(1)
      acd301(24)=acd301(4)*acd301(3)
      acd301(25)=acd301(6)*acd301(5)
      acd301(26)=acd301(8)*acd301(7)
      acd301(27)=acd301(10)*acd301(9)
      acd301(28)=acd301(12)*acd301(11)
      acd301(29)=acd301(14)*acd301(13)
      acd301(30)=acd301(16)*acd301(15)
      acd301(31)=acd301(18)*acd301(17)
      acd301(32)=acd301(20)*acd301(19)
      acd301(33)=acd301(22)*acd301(21)
      brack=acd301(23)+acd301(24)+acd301(25)+acd301(26)+acd301(27)+acd301(28)+a&
      &cd301(29)+acd301(30)+acd301(31)+acd301(32)+acd301(33)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd301h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd301
      complex(ki) :: brack
      acd301(1)=d(iv1,iv2)
      acd301(2)=abb301(25)
      acd301(3)=k2(iv1)
      acd301(4)=spvak1l6(iv2)
      acd301(5)=abb301(24)
      acd301(6)=spvak4l6(iv2)
      acd301(7)=abb301(41)
      acd301(8)=spvak1e7(iv2)
      acd301(9)=abb301(31)
      acd301(10)=spvak4e7(iv2)
      acd301(11)=abb301(28)
      acd301(12)=k2(iv2)
      acd301(13)=spvak1l6(iv1)
      acd301(14)=spvak4l6(iv1)
      acd301(15)=spvak1e7(iv1)
      acd301(16)=spvak4e7(iv1)
      acd301(17)=l5(iv1)
      acd301(18)=e7(iv2)
      acd301(19)=abb301(22)
      acd301(20)=l5(iv2)
      acd301(21)=e7(iv1)
      acd301(22)=spvak1k2(iv2)
      acd301(23)=abb301(19)
      acd301(24)=spvak4k2(iv2)
      acd301(25)=abb301(43)
      acd301(26)=spval5k2(iv2)
      acd301(27)=abb301(12)
      acd301(28)=spvak1k2(iv1)
      acd301(29)=spvak4k2(iv1)
      acd301(30)=spval5k2(iv1)
      acd301(31)=spval5k7(iv2)
      acd301(32)=abb301(33)
      acd301(33)=spval5k7(iv1)
      acd301(34)=abb301(35)
      acd301(35)=abb301(30)
      acd301(36)=abb301(27)
      acd301(37)=abb301(7)
      acd301(38)=abb301(6)
      acd301(39)=spvak1k7(iv2)
      acd301(40)=abb301(37)
      acd301(41)=spvak2l6(iv2)
      acd301(42)=abb301(10)
      acd301(43)=spvak4k7(iv2)
      acd301(44)=abb301(38)
      acd301(45)=spvak7l6(iv2)
      acd301(46)=abb301(34)
      acd301(47)=spvae7l6(iv2)
      acd301(48)=abb301(16)
      acd301(49)=spvak1k7(iv1)
      acd301(50)=spvak2l6(iv1)
      acd301(51)=spvak4k7(iv1)
      acd301(52)=spvak7l6(iv1)
      acd301(53)=spvae7l6(iv1)
      acd301(54)=spval5l6(iv2)
      acd301(55)=spval5l6(iv1)
      acd301(56)=acd301(48)*acd301(47)
      acd301(57)=acd301(46)*acd301(45)
      acd301(58)=acd301(43)*acd301(44)
      acd301(59)=acd301(42)*acd301(41)
      acd301(60)=acd301(39)*acd301(40)
      acd301(61)=acd301(24)*acd301(38)
      acd301(62)=acd301(22)*acd301(37)
      acd301(63)=acd301(10)*acd301(36)
      acd301(64)=acd301(8)*acd301(35)
      acd301(65)=acd301(18)*acd301(27)
      acd301(56)=acd301(65)+acd301(64)+acd301(63)+acd301(62)+acd301(61)+acd301(&
      &60)+acd301(59)+acd301(58)+acd301(56)+acd301(57)
      acd301(56)=acd301(30)*acd301(56)
      acd301(57)=acd301(48)*acd301(53)
      acd301(58)=acd301(46)*acd301(52)
      acd301(59)=acd301(44)*acd301(51)
      acd301(60)=acd301(42)*acd301(50)
      acd301(61)=acd301(40)*acd301(49)
      acd301(62)=acd301(29)*acd301(38)
      acd301(63)=acd301(28)*acd301(37)
      acd301(64)=acd301(16)*acd301(36)
      acd301(65)=acd301(15)*acd301(35)
      acd301(66)=acd301(21)*acd301(27)
      acd301(57)=acd301(66)+acd301(65)+acd301(64)+acd301(63)+acd301(62)+acd301(&
      &61)+acd301(60)+acd301(59)+acd301(57)+acd301(58)
      acd301(57)=acd301(26)*acd301(57)
      acd301(58)=-acd301(51)*acd301(54)
      acd301(59)=-acd301(43)*acd301(55)
      acd301(60)=acd301(14)*acd301(31)
      acd301(61)=acd301(6)*acd301(33)
      acd301(58)=acd301(61)+acd301(60)+acd301(58)+acd301(59)
      acd301(58)=acd301(34)*acd301(58)
      acd301(59)=-acd301(49)*acd301(54)
      acd301(60)=-acd301(39)*acd301(55)
      acd301(61)=acd301(13)*acd301(31)
      acd301(62)=acd301(4)*acd301(33)
      acd301(59)=acd301(62)+acd301(61)+acd301(59)+acd301(60)
      acd301(59)=acd301(32)*acd301(59)
      acd301(60)=acd301(11)*acd301(16)
      acd301(61)=acd301(9)*acd301(15)
      acd301(62)=acd301(7)*acd301(14)
      acd301(63)=acd301(5)*acd301(13)
      acd301(60)=acd301(63)+acd301(62)+acd301(60)+acd301(61)
      acd301(60)=acd301(12)*acd301(60)
      acd301(61)=acd301(10)*acd301(11)
      acd301(62)=acd301(8)*acd301(9)
      acd301(63)=acd301(6)*acd301(7)
      acd301(64)=acd301(4)*acd301(5)
      acd301(61)=acd301(64)+acd301(63)+acd301(61)+acd301(62)
      acd301(61)=acd301(3)*acd301(61)
      acd301(62)=acd301(24)*acd301(25)
      acd301(63)=acd301(22)*acd301(23)
      acd301(64)=acd301(19)*acd301(20)
      acd301(62)=acd301(64)+acd301(62)+acd301(63)
      acd301(62)=acd301(21)*acd301(62)
      acd301(63)=acd301(25)*acd301(29)
      acd301(64)=acd301(23)*acd301(28)
      acd301(65)=acd301(19)*acd301(17)
      acd301(63)=acd301(65)+acd301(63)+acd301(64)
      acd301(63)=acd301(18)*acd301(63)
      acd301(64)=acd301(1)*acd301(2)
      brack=acd301(56)+acd301(57)+acd301(58)+acd301(59)+acd301(60)+acd301(61)+a&
      &cd301(62)+acd301(63)+2.0_ki*acd301(64)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd301h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd301
      complex(ki) :: brack
      acd301(1)=d(iv1,iv2)
      acd301(2)=spvak1l6(iv3)
      acd301(3)=abb301(8)
      acd301(4)=spvak4l6(iv3)
      acd301(5)=abb301(42)
      acd301(6)=spvak1e7(iv3)
      acd301(7)=abb301(32)
      acd301(8)=spvak4e7(iv3)
      acd301(9)=abb301(29)
      acd301(10)=d(iv1,iv3)
      acd301(11)=spvak1l6(iv2)
      acd301(12)=spvak4l6(iv2)
      acd301(13)=spvak1e7(iv2)
      acd301(14)=spvak4e7(iv2)
      acd301(15)=d(iv2,iv3)
      acd301(16)=spvak1l6(iv1)
      acd301(17)=spvak4l6(iv1)
      acd301(18)=spvak1e7(iv1)
      acd301(19)=spvak4e7(iv1)
      acd301(20)=e7(iv1)
      acd301(21)=spvak1k2(iv2)
      acd301(22)=spval5l6(iv3)
      acd301(23)=abb301(26)
      acd301(24)=spvak1k2(iv3)
      acd301(25)=spval5l6(iv2)
      acd301(26)=spvak4k2(iv3)
      acd301(27)=abb301(44)
      acd301(28)=spvak4k2(iv2)
      acd301(29)=e7(iv2)
      acd301(30)=spvak1k2(iv1)
      acd301(31)=spval5l6(iv1)
      acd301(32)=spvak4k2(iv1)
      acd301(33)=e7(iv3)
      acd301(34)=acd301(22)*acd301(20)
      acd301(35)=acd301(33)*acd301(31)
      acd301(34)=acd301(34)+acd301(35)
      acd301(35)=acd301(21)*acd301(34)
      acd301(36)=acd301(25)*acd301(20)
      acd301(37)=acd301(31)*acd301(29)
      acd301(36)=acd301(36)+acd301(37)
      acd301(37)=acd301(24)*acd301(36)
      acd301(38)=acd301(29)*acd301(22)
      acd301(39)=acd301(33)*acd301(25)
      acd301(38)=acd301(38)+acd301(39)
      acd301(39)=acd301(30)*acd301(38)
      acd301(35)=acd301(39)+acd301(35)+acd301(37)
      acd301(35)=acd301(23)*acd301(35)
      acd301(36)=acd301(26)*acd301(36)
      acd301(34)=acd301(28)*acd301(34)
      acd301(37)=acd301(32)*acd301(38)
      acd301(34)=acd301(37)+acd301(34)+acd301(36)
      acd301(34)=acd301(27)*acd301(34)
      acd301(36)=acd301(16)*acd301(3)
      acd301(37)=acd301(17)*acd301(5)
      acd301(38)=acd301(18)*acd301(7)
      acd301(39)=acd301(19)*acd301(9)
      acd301(36)=acd301(39)+acd301(38)+acd301(37)+acd301(36)
      acd301(37)=2.0_ki*acd301(15)
      acd301(36)=acd301(37)*acd301(36)
      acd301(37)=acd301(11)*acd301(3)
      acd301(38)=acd301(12)*acd301(5)
      acd301(39)=acd301(13)*acd301(7)
      acd301(40)=acd301(14)*acd301(9)
      acd301(37)=acd301(40)+acd301(39)+acd301(38)+acd301(37)
      acd301(38)=2.0_ki*acd301(10)
      acd301(37)=acd301(38)*acd301(37)
      acd301(38)=acd301(2)*acd301(3)
      acd301(39)=acd301(4)*acd301(5)
      acd301(40)=acd301(6)*acd301(7)
      acd301(41)=acd301(8)*acd301(9)
      acd301(38)=acd301(41)+acd301(40)+acd301(39)+acd301(38)
      acd301(39)=2.0_ki*acd301(1)
      acd301(38)=acd301(39)*acd301(38)
      brack=acd301(34)+acd301(35)+acd301(36)+acd301(37)+acd301(38)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd301h2
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
!---#[ subroutine reconstruct_d301:
   subroutine     reconstruct_d301(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group11
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group11), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_301:
      coeffs%coeffs_301%c0 = derivative(czip)
      coeffs%coeffs_301%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_301%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_301%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_301%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_301%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_301%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_301%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_301%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_301%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_301%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_301%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_301%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_301%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_301%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_301%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_301%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_301%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_301%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_301%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_301%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_301%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_301%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_301%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_301%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_301%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_301%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_301%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_301%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_301%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_301%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_301%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_301%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_301%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_301%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_301:
   end subroutine reconstruct_d301
!---#] subroutine reconstruct_d301:
end module     p0_dbaru_epnebbbarg_d301h2l1d
