module     p0_dbaru_epnebbbarg_d109h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d109h2l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d109
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd109h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd109
      complex(ki) :: brack
      acd109(1)=dotproduct(k2,qshift)
      acd109(2)=dotproduct(k7,qshift)
      acd109(3)=abb109(42)
      acd109(4)=dotproduct(qshift,spvak1k7)
      acd109(5)=abb109(29)
      acd109(6)=dotproduct(qshift,spvak2k7)
      acd109(7)=abb109(22)
      acd109(8)=dotproduct(qshift,spvak4k7)
      acd109(9)=abb109(41)
      acd109(10)=abb109(16)
      acd109(11)=dotproduct(qshift,spvak1l6)
      acd109(12)=abb109(28)
      acd109(13)=dotproduct(qshift,spvak4l6)
      acd109(14)=abb109(46)
      acd109(15)=abb109(37)
      acd109(16)=dotproduct(qshift,spval5l6)
      acd109(17)=abb109(33)
      acd109(18)=abb109(25)
      acd109(19)=abb109(23)
      acd109(20)=abb109(15)
      acd109(21)=dotproduct(qshift,spvak1k2)
      acd109(22)=dotproduct(qshift,spvak4k2)
      acd109(23)=abb109(19)
      acd109(24)=abb109(45)
      acd109(25)=abb109(34)
      acd109(26)=dotproduct(qshift,spval5k7)
      acd109(27)=abb109(17)
      acd109(28)=abb109(24)
      acd109(29)=abb109(11)
      acd109(30)=dotproduct(qshift,spvak1l5)
      acd109(31)=abb109(30)
      acd109(32)=abb109(27)
      acd109(33)=dotproduct(qshift,spvak2l5)
      acd109(34)=abb109(32)
      acd109(35)=abb109(14)
      acd109(36)=dotproduct(qshift,spvak4l5)
      acd109(37)=abb109(50)
      acd109(38)=abb109(18)
      acd109(39)=-acd109(9)*acd109(22)
      acd109(40)=-acd109(5)*acd109(21)
      acd109(41)=acd109(13)*acd109(20)
      acd109(42)=acd109(11)*acd109(19)
      acd109(43)=acd109(1)*acd109(7)
      acd109(39)=acd109(43)+acd109(42)+acd109(41)+acd109(40)-acd109(23)+acd109(&
      &39)
      acd109(39)=acd109(6)*acd109(39)
      acd109(40)=acd109(8)*acd109(9)
      acd109(41)=acd109(4)*acd109(5)
      acd109(42)=acd109(2)*acd109(3)
      acd109(40)=acd109(42)+acd109(41)-acd109(10)+acd109(40)
      acd109(40)=acd109(1)*acd109(40)
      acd109(41)=acd109(13)*acd109(14)
      acd109(42)=acd109(11)*acd109(12)
      acd109(41)=acd109(42)-acd109(15)+acd109(41)
      acd109(41)=acd109(2)*acd109(41)
      acd109(42)=-acd109(36)*acd109(37)
      acd109(43)=-acd109(33)*acd109(34)
      acd109(44)=-acd109(30)*acd109(31)
      acd109(45)=-acd109(22)*acd109(35)
      acd109(46)=-acd109(21)*acd109(29)
      acd109(47)=-acd109(26)*acd109(32)
      acd109(48)=acd109(16)*acd109(24)
      acd109(48)=-acd109(25)+acd109(48)
      acd109(48)=acd109(8)*acd109(48)
      acd109(49)=acd109(16)*acd109(17)
      acd109(49)=-acd109(18)+acd109(49)
      acd109(49)=acd109(4)*acd109(49)
      acd109(50)=-acd109(26)*acd109(24)
      acd109(50)=-acd109(28)+acd109(50)
      acd109(50)=acd109(13)*acd109(50)
      acd109(51)=-acd109(26)*acd109(17)
      acd109(51)=-acd109(27)+acd109(51)
      acd109(51)=acd109(11)*acd109(51)
      brack=acd109(38)+acd109(39)+acd109(40)+acd109(41)+acd109(42)+acd109(43)+a&
      &cd109(44)+acd109(45)+acd109(46)+acd109(47)+acd109(48)+acd109(49)+acd109(&
      &50)+acd109(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd109h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd109
      complex(ki) :: brack
      acd109(1)=k2(iv1)
      acd109(2)=dotproduct(k7,qshift)
      acd109(3)=abb109(42)
      acd109(4)=dotproduct(qshift,spvak1k7)
      acd109(5)=abb109(29)
      acd109(6)=dotproduct(qshift,spvak2k7)
      acd109(7)=abb109(22)
      acd109(8)=dotproduct(qshift,spvak4k7)
      acd109(9)=abb109(41)
      acd109(10)=abb109(16)
      acd109(11)=k7(iv1)
      acd109(12)=dotproduct(k2,qshift)
      acd109(13)=dotproduct(qshift,spvak1l6)
      acd109(14)=abb109(28)
      acd109(15)=dotproduct(qshift,spvak4l6)
      acd109(16)=abb109(46)
      acd109(17)=abb109(37)
      acd109(18)=spvak1k7(iv1)
      acd109(19)=dotproduct(qshift,spval5l6)
      acd109(20)=abb109(33)
      acd109(21)=abb109(25)
      acd109(22)=spvak2k7(iv1)
      acd109(23)=abb109(23)
      acd109(24)=abb109(15)
      acd109(25)=dotproduct(qshift,spvak1k2)
      acd109(26)=dotproduct(qshift,spvak4k2)
      acd109(27)=abb109(19)
      acd109(28)=spvak4k7(iv1)
      acd109(29)=abb109(45)
      acd109(30)=abb109(34)
      acd109(31)=spvak1l6(iv1)
      acd109(32)=dotproduct(qshift,spval5k7)
      acd109(33)=abb109(17)
      acd109(34)=spvak4l6(iv1)
      acd109(35)=abb109(24)
      acd109(36)=spvak1k2(iv1)
      acd109(37)=abb109(11)
      acd109(38)=spvak1l5(iv1)
      acd109(39)=abb109(30)
      acd109(40)=spval5k7(iv1)
      acd109(41)=abb109(27)
      acd109(42)=spval5l6(iv1)
      acd109(43)=spvak2l5(iv1)
      acd109(44)=abb109(32)
      acd109(45)=spvak4k2(iv1)
      acd109(46)=abb109(14)
      acd109(47)=spvak4l5(iv1)
      acd109(48)=abb109(50)
      acd109(49)=-acd109(15)*acd109(24)
      acd109(50)=-acd109(13)*acd109(23)
      acd109(51)=-acd109(12)*acd109(7)
      acd109(52)=acd109(9)*acd109(26)
      acd109(53)=acd109(5)*acd109(25)
      acd109(49)=acd109(53)+acd109(52)+acd109(51)+acd109(50)+acd109(27)+acd109(&
      &49)
      acd109(49)=acd109(22)*acd109(49)
      acd109(50)=-acd109(8)*acd109(42)
      acd109(51)=-acd109(28)*acd109(19)
      acd109(52)=acd109(15)*acd109(40)
      acd109(53)=acd109(34)*acd109(32)
      acd109(50)=acd109(53)+acd109(52)+acd109(50)+acd109(51)
      acd109(50)=acd109(29)*acd109(50)
      acd109(51)=-acd109(4)*acd109(42)
      acd109(52)=-acd109(18)*acd109(19)
      acd109(53)=acd109(13)*acd109(40)
      acd109(54)=acd109(31)*acd109(32)
      acd109(51)=acd109(54)+acd109(53)+acd109(51)+acd109(52)
      acd109(51)=acd109(20)*acd109(51)
      acd109(52)=-acd109(34)*acd109(24)
      acd109(53)=-acd109(31)*acd109(23)
      acd109(54)=acd109(9)*acd109(45)
      acd109(55)=acd109(5)*acd109(36)
      acd109(52)=acd109(55)+acd109(54)+acd109(52)+acd109(53)
      acd109(52)=acd109(6)*acd109(52)
      acd109(53)=-acd109(2)*acd109(3)
      acd109(54)=-acd109(9)*acd109(8)
      acd109(55)=-acd109(5)*acd109(4)
      acd109(56)=-acd109(6)*acd109(7)
      acd109(53)=acd109(56)+acd109(55)+acd109(54)+acd109(10)+acd109(53)
      acd109(53)=acd109(1)*acd109(53)
      acd109(54)=-acd109(15)*acd109(16)
      acd109(55)=-acd109(13)*acd109(14)
      acd109(56)=-acd109(12)*acd109(3)
      acd109(54)=acd109(56)+acd109(55)+acd109(17)+acd109(54)
      acd109(54)=acd109(11)*acd109(54)
      acd109(55)=-acd109(9)*acd109(28)
      acd109(56)=-acd109(5)*acd109(18)
      acd109(55)=acd109(56)+acd109(55)
      acd109(55)=acd109(12)*acd109(55)
      acd109(56)=acd109(47)*acd109(48)
      acd109(57)=acd109(43)*acd109(44)
      acd109(58)=acd109(38)*acd109(39)
      acd109(59)=acd109(45)*acd109(46)
      acd109(60)=acd109(36)*acd109(37)
      acd109(61)=acd109(40)*acd109(41)
      acd109(62)=acd109(28)*acd109(30)
      acd109(63)=acd109(18)*acd109(21)
      acd109(64)=-acd109(2)*acd109(16)
      acd109(64)=acd109(35)+acd109(64)
      acd109(64)=acd109(34)*acd109(64)
      acd109(65)=-acd109(2)*acd109(14)
      acd109(65)=acd109(33)+acd109(65)
      acd109(65)=acd109(31)*acd109(65)
      brack=acd109(49)+acd109(50)+acd109(51)+acd109(52)+acd109(53)+acd109(54)+a&
      &cd109(55)+acd109(56)+acd109(57)+acd109(58)+acd109(59)+acd109(60)+acd109(&
      &61)+acd109(62)+acd109(63)+acd109(64)+acd109(65)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd109h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd109
      complex(ki) :: brack
      acd109(1)=k2(iv1)
      acd109(2)=k7(iv2)
      acd109(3)=abb109(42)
      acd109(4)=spvak1k7(iv2)
      acd109(5)=abb109(29)
      acd109(6)=spvak2k7(iv2)
      acd109(7)=abb109(22)
      acd109(8)=spvak4k7(iv2)
      acd109(9)=abb109(41)
      acd109(10)=k2(iv2)
      acd109(11)=k7(iv1)
      acd109(12)=spvak1k7(iv1)
      acd109(13)=spvak2k7(iv1)
      acd109(14)=spvak4k7(iv1)
      acd109(15)=spvak1l6(iv2)
      acd109(16)=abb109(28)
      acd109(17)=spvak4l6(iv2)
      acd109(18)=abb109(46)
      acd109(19)=spvak1l6(iv1)
      acd109(20)=spvak4l6(iv1)
      acd109(21)=spval5l6(iv2)
      acd109(22)=abb109(33)
      acd109(23)=spval5l6(iv1)
      acd109(24)=abb109(23)
      acd109(25)=abb109(15)
      acd109(26)=spvak1k2(iv2)
      acd109(27)=spvak4k2(iv2)
      acd109(28)=spvak1k2(iv1)
      acd109(29)=spvak4k2(iv1)
      acd109(30)=abb109(45)
      acd109(31)=spval5k7(iv2)
      acd109(32)=spval5k7(iv1)
      acd109(33)=acd109(17)*acd109(25)
      acd109(34)=acd109(15)*acd109(24)
      acd109(35)=acd109(10)*acd109(7)
      acd109(36)=-acd109(9)*acd109(27)
      acd109(37)=-acd109(5)*acd109(26)
      acd109(33)=acd109(37)+acd109(36)+acd109(35)+acd109(33)+acd109(34)
      acd109(33)=acd109(13)*acd109(33)
      acd109(34)=acd109(20)*acd109(25)
      acd109(35)=acd109(19)*acd109(24)
      acd109(36)=-acd109(9)*acd109(29)
      acd109(37)=-acd109(5)*acd109(28)
      acd109(38)=acd109(1)*acd109(7)
      acd109(34)=acd109(38)+acd109(37)+acd109(36)+acd109(34)+acd109(35)
      acd109(34)=acd109(6)*acd109(34)
      acd109(35)=acd109(14)*acd109(21)
      acd109(36)=acd109(8)*acd109(23)
      acd109(37)=-acd109(20)*acd109(31)
      acd109(38)=-acd109(17)*acd109(32)
      acd109(35)=acd109(38)+acd109(37)+acd109(35)+acd109(36)
      acd109(35)=acd109(30)*acd109(35)
      acd109(36)=acd109(12)*acd109(21)
      acd109(37)=acd109(4)*acd109(23)
      acd109(38)=-acd109(19)*acd109(31)
      acd109(39)=-acd109(15)*acd109(32)
      acd109(36)=acd109(39)+acd109(38)+acd109(36)+acd109(37)
      acd109(36)=acd109(22)*acd109(36)
      acd109(37)=acd109(11)*acd109(3)
      acd109(38)=acd109(9)*acd109(14)
      acd109(39)=acd109(5)*acd109(12)
      acd109(37)=acd109(39)+acd109(38)+acd109(37)
      acd109(37)=acd109(10)*acd109(37)
      acd109(38)=acd109(2)*acd109(3)
      acd109(39)=acd109(9)*acd109(8)
      acd109(40)=acd109(5)*acd109(4)
      acd109(38)=acd109(40)+acd109(38)+acd109(39)
      acd109(38)=acd109(1)*acd109(38)
      acd109(39)=acd109(17)*acd109(18)
      acd109(40)=acd109(15)*acd109(16)
      acd109(39)=acd109(39)+acd109(40)
      acd109(39)=acd109(11)*acd109(39)
      acd109(40)=acd109(20)*acd109(18)
      acd109(41)=acd109(19)*acd109(16)
      acd109(40)=acd109(40)+acd109(41)
      acd109(40)=acd109(2)*acd109(40)
      brack=acd109(33)+acd109(34)+acd109(35)+acd109(36)+acd109(37)+acd109(38)+a&
      &cd109(39)+acd109(40)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd109h2
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
      qshift = k5
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
!---#[ subroutine reconstruct_d109:
   subroutine     reconstruct_d109(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group11
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group11), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_109:
      coeffs%coeffs_109%c0 = derivative(czip)
      coeffs%coeffs_109%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_109%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_109%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_109%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_109%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_109%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_109%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_109%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_109%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_109%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_109%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_109%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_109%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_109%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_109:
   end subroutine reconstruct_d109
!---#] subroutine reconstruct_d109:
end module     p0_dbaru_epnebbbarg_d109h2l1d
