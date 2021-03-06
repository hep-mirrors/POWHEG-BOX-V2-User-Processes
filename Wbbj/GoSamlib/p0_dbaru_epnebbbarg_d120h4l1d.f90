module     p0_dbaru_epnebbbarg_d120h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d120h4l1d.f90
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
   public :: derivative , reconstruct_d120
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd120h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd120
      complex(ki) :: brack
      acd120(1)=dotproduct(k1,qshift)
      acd120(2)=abb120(26)
      acd120(3)=dotproduct(k2,qshift)
      acd120(4)=dotproduct(qshift,spvak1k2)
      acd120(5)=abb120(29)
      acd120(6)=dotproduct(qshift,spval6k2)
      acd120(7)=abb120(43)
      acd120(8)=abb120(18)
      acd120(9)=dotproduct(k3,qshift)
      acd120(10)=abb120(23)
      acd120(11)=dotproduct(k4,qshift)
      acd120(12)=dotproduct(qshift,spvak4k2)
      acd120(13)=abb120(10)
      acd120(14)=dotproduct(qshift,spvak4k3)
      acd120(15)=abb120(16)
      acd120(16)=dotproduct(qshift,spval5k3)
      acd120(17)=abb120(25)
      acd120(18)=dotproduct(qshift,spval6k3)
      acd120(19)=abb120(24)
      acd120(20)=dotproduct(qshift,spvak7k3)
      acd120(21)=abb120(20)
      acd120(22)=abb120(28)
      acd120(23)=abb120(15)
      acd120(24)=abb120(19)
      acd120(25)=dotproduct(qshift,spvak1k3)
      acd120(26)=abb120(41)
      acd120(27)=abb120(11)
      acd120(28)=abb120(14)
      acd120(29)=abb120(39)
      acd120(30)=abb120(37)
      acd120(31)=dotproduct(qshift,spval5k2)
      acd120(32)=dotproduct(qshift,spvak7k2)
      acd120(33)=abb120(32)
      acd120(34)=abb120(38)
      acd120(35)=dotproduct(qshift,spval5l6)
      acd120(36)=abb120(21)
      acd120(37)=dotproduct(qshift,spvak7l6)
      acd120(38)=abb120(27)
      acd120(39)=abb120(12)
      acd120(40)=acd120(17)*acd120(16)
      acd120(41)=-acd120(21)*acd120(20)
      acd120(42)=acd120(13)*acd120(12)
      acd120(43)=acd120(15)*acd120(14)
      acd120(44)=acd120(18)*acd120(19)
      acd120(40)=-acd120(22)+acd120(44)+acd120(43)+acd120(42)+acd120(41)+acd120&
      &(40)
      acd120(40)=acd120(4)*acd120(40)
      acd120(41)=-acd120(19)*acd120(25)
      acd120(42)=acd120(23)*acd120(12)
      acd120(43)=acd120(24)*acd120(14)
      acd120(41)=-acd120(26)+acd120(43)+acd120(42)+acd120(41)
      acd120(41)=acd120(6)*acd120(41)
      acd120(42)=acd120(5)*acd120(4)
      acd120(43)=acd120(7)*acd120(6)
      acd120(42)=acd120(42)+acd120(43)
      acd120(43)=-acd120(10)-acd120(42)
      acd120(44)=acd120(11)+acd120(9)
      acd120(43)=acd120(44)*acd120(43)
      acd120(42)=-acd120(8)+acd120(42)
      acd120(42)=acd120(3)*acd120(42)
      acd120(44)=-acd120(17)*acd120(25)
      acd120(44)=-acd120(33)+acd120(44)
      acd120(44)=acd120(31)*acd120(44)
      acd120(45)=acd120(21)*acd120(25)
      acd120(45)=-acd120(34)+acd120(45)
      acd120(45)=acd120(32)*acd120(45)
      acd120(46)=-acd120(2)*acd120(1)
      acd120(47)=-acd120(27)*acd120(12)
      acd120(48)=-acd120(28)*acd120(14)
      acd120(49)=-acd120(29)*acd120(16)
      acd120(50)=-acd120(30)*acd120(20)
      acd120(51)=-acd120(36)*acd120(35)
      acd120(52)=-acd120(38)*acd120(37)
      brack=acd120(39)+acd120(40)+acd120(41)+acd120(42)+acd120(43)+acd120(44)+a&
      &cd120(45)+acd120(46)+acd120(47)+acd120(48)+acd120(49)+acd120(50)+acd120(&
      &51)+acd120(52)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd120h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd120
      complex(ki) :: brack
      acd120(1)=k1(iv1)
      acd120(2)=abb120(26)
      acd120(3)=k2(iv1)
      acd120(4)=dotproduct(qshift,spvak1k2)
      acd120(5)=abb120(29)
      acd120(6)=dotproduct(qshift,spval6k2)
      acd120(7)=abb120(43)
      acd120(8)=abb120(18)
      acd120(9)=k3(iv1)
      acd120(10)=abb120(23)
      acd120(11)=k4(iv1)
      acd120(12)=spvak1k2(iv1)
      acd120(13)=dotproduct(k2,qshift)
      acd120(14)=dotproduct(k3,qshift)
      acd120(15)=dotproduct(k4,qshift)
      acd120(16)=dotproduct(qshift,spvak4k2)
      acd120(17)=abb120(10)
      acd120(18)=dotproduct(qshift,spvak4k3)
      acd120(19)=abb120(16)
      acd120(20)=dotproduct(qshift,spval5k3)
      acd120(21)=abb120(25)
      acd120(22)=dotproduct(qshift,spval6k3)
      acd120(23)=abb120(24)
      acd120(24)=dotproduct(qshift,spvak7k3)
      acd120(25)=abb120(20)
      acd120(26)=abb120(28)
      acd120(27)=spval6k2(iv1)
      acd120(28)=abb120(15)
      acd120(29)=abb120(19)
      acd120(30)=dotproduct(qshift,spvak1k3)
      acd120(31)=abb120(41)
      acd120(32)=spvak4k2(iv1)
      acd120(33)=abb120(11)
      acd120(34)=spvak4k3(iv1)
      acd120(35)=abb120(14)
      acd120(36)=spval5k3(iv1)
      acd120(37)=abb120(39)
      acd120(38)=spval6k3(iv1)
      acd120(39)=spvak7k3(iv1)
      acd120(40)=abb120(37)
      acd120(41)=spvak1k3(iv1)
      acd120(42)=dotproduct(qshift,spval5k2)
      acd120(43)=dotproduct(qshift,spvak7k2)
      acd120(44)=spval5k2(iv1)
      acd120(45)=abb120(32)
      acd120(46)=spvak7k2(iv1)
      acd120(47)=abb120(38)
      acd120(48)=spval5l6(iv1)
      acd120(49)=abb120(21)
      acd120(50)=spvak7l6(iv1)
      acd120(51)=abb120(27)
      acd120(52)=-acd120(34)*acd120(19)
      acd120(53)=-acd120(32)*acd120(17)
      acd120(54)=acd120(25)*acd120(39)
      acd120(55)=-acd120(23)*acd120(38)
      acd120(56)=-acd120(21)*acd120(36)
      acd120(57)=acd120(9)+acd120(11)
      acd120(58)=acd120(3)-acd120(57)
      acd120(59)=-acd120(5)*acd120(58)
      acd120(52)=acd120(59)+acd120(56)+acd120(55)+acd120(54)+acd120(52)+acd120(&
      &53)
      acd120(52)=acd120(4)*acd120(52)
      acd120(53)=-acd120(18)*acd120(19)
      acd120(54)=-acd120(16)*acd120(17)
      acd120(55)=acd120(25)*acd120(24)
      acd120(56)=-acd120(23)*acd120(22)
      acd120(59)=-acd120(21)*acd120(20)
      acd120(60)=-acd120(15)+acd120(13)-acd120(14)
      acd120(61)=-acd120(5)*acd120(60)
      acd120(53)=acd120(61)+acd120(59)+acd120(56)+acd120(55)+acd120(54)+acd120(&
      &26)+acd120(53)
      acd120(53)=acd120(12)*acd120(53)
      acd120(54)=-acd120(34)*acd120(29)
      acd120(55)=-acd120(32)*acd120(28)
      acd120(56)=acd120(23)*acd120(41)
      acd120(58)=-acd120(7)*acd120(58)
      acd120(54)=acd120(58)+acd120(56)+acd120(54)+acd120(55)
      acd120(54)=acd120(6)*acd120(54)
      acd120(55)=-acd120(18)*acd120(29)
      acd120(56)=-acd120(16)*acd120(28)
      acd120(58)=acd120(23)*acd120(30)
      acd120(59)=-acd120(7)*acd120(60)
      acd120(55)=acd120(59)+acd120(58)+acd120(56)+acd120(31)+acd120(55)
      acd120(55)=acd120(27)*acd120(55)
      acd120(56)=-acd120(41)*acd120(43)
      acd120(58)=-acd120(30)*acd120(46)
      acd120(56)=acd120(56)+acd120(58)
      acd120(56)=acd120(25)*acd120(56)
      acd120(58)=acd120(41)*acd120(42)
      acd120(59)=acd120(30)*acd120(44)
      acd120(58)=acd120(58)+acd120(59)
      acd120(58)=acd120(21)*acd120(58)
      acd120(57)=acd120(10)*acd120(57)
      acd120(59)=acd120(50)*acd120(51)
      acd120(60)=acd120(48)*acd120(49)
      acd120(61)=acd120(1)*acd120(2)
      acd120(62)=acd120(46)*acd120(47)
      acd120(63)=acd120(44)*acd120(45)
      acd120(64)=acd120(39)*acd120(40)
      acd120(65)=acd120(36)*acd120(37)
      acd120(66)=acd120(34)*acd120(35)
      acd120(67)=acd120(32)*acd120(33)
      acd120(68)=acd120(3)*acd120(8)
      brack=acd120(52)+acd120(53)+acd120(54)+acd120(55)+acd120(56)+acd120(57)+a&
      &cd120(58)+acd120(59)+acd120(60)+acd120(61)+acd120(62)+acd120(63)+acd120(&
      &64)+acd120(65)+acd120(66)+acd120(67)+acd120(68)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd120h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(44) :: acd120
      complex(ki) :: brack
      acd120(1)=k2(iv1)
      acd120(2)=spvak1k2(iv2)
      acd120(3)=abb120(29)
      acd120(4)=spval6k2(iv2)
      acd120(5)=abb120(43)
      acd120(6)=k2(iv2)
      acd120(7)=spvak1k2(iv1)
      acd120(8)=spval6k2(iv1)
      acd120(9)=k3(iv1)
      acd120(10)=k3(iv2)
      acd120(11)=k4(iv1)
      acd120(12)=k4(iv2)
      acd120(13)=spvak4k2(iv2)
      acd120(14)=abb120(10)
      acd120(15)=spvak4k3(iv2)
      acd120(16)=abb120(16)
      acd120(17)=spval5k3(iv2)
      acd120(18)=abb120(25)
      acd120(19)=spval6k3(iv2)
      acd120(20)=abb120(24)
      acd120(21)=spvak7k3(iv2)
      acd120(22)=abb120(20)
      acd120(23)=spvak4k2(iv1)
      acd120(24)=spvak4k3(iv1)
      acd120(25)=spval5k3(iv1)
      acd120(26)=spval6k3(iv1)
      acd120(27)=spvak7k3(iv1)
      acd120(28)=abb120(15)
      acd120(29)=abb120(19)
      acd120(30)=spvak1k3(iv2)
      acd120(31)=spvak1k3(iv1)
      acd120(32)=spval5k2(iv2)
      acd120(33)=spvak7k2(iv2)
      acd120(34)=spval5k2(iv1)
      acd120(35)=spvak7k2(iv1)
      acd120(36)=acd120(15)*acd120(16)
      acd120(37)=acd120(13)*acd120(14)
      acd120(38)=-acd120(22)*acd120(21)
      acd120(39)=acd120(20)*acd120(19)
      acd120(40)=acd120(18)*acd120(17)
      acd120(41)=-acd120(12)+acd120(6)-acd120(10)
      acd120(42)=acd120(3)*acd120(41)
      acd120(36)=acd120(42)+acd120(40)+acd120(39)+acd120(38)+acd120(36)+acd120(&
      &37)
      acd120(36)=acd120(7)*acd120(36)
      acd120(37)=acd120(16)*acd120(24)
      acd120(38)=acd120(14)*acd120(23)
      acd120(39)=-acd120(22)*acd120(27)
      acd120(40)=acd120(20)*acd120(26)
      acd120(42)=acd120(18)*acd120(25)
      acd120(43)=-acd120(11)+acd120(1)-acd120(9)
      acd120(44)=acd120(3)*acd120(43)
      acd120(37)=acd120(44)+acd120(42)+acd120(40)+acd120(39)+acd120(37)+acd120(&
      &38)
      acd120(37)=acd120(2)*acd120(37)
      acd120(38)=acd120(15)*acd120(29)
      acd120(39)=acd120(13)*acd120(28)
      acd120(40)=-acd120(20)*acd120(30)
      acd120(41)=acd120(5)*acd120(41)
      acd120(38)=acd120(41)+acd120(40)+acd120(38)+acd120(39)
      acd120(38)=acd120(8)*acd120(38)
      acd120(39)=acd120(24)*acd120(29)
      acd120(40)=acd120(23)*acd120(28)
      acd120(41)=-acd120(20)*acd120(31)
      acd120(42)=acd120(5)*acd120(43)
      acd120(39)=acd120(42)+acd120(41)+acd120(39)+acd120(40)
      acd120(39)=acd120(4)*acd120(39)
      acd120(40)=acd120(31)*acd120(33)
      acd120(41)=acd120(30)*acd120(35)
      acd120(40)=acd120(40)+acd120(41)
      acd120(40)=acd120(22)*acd120(40)
      acd120(41)=-acd120(31)*acd120(32)
      acd120(42)=-acd120(30)*acd120(34)
      acd120(41)=acd120(41)+acd120(42)
      acd120(41)=acd120(18)*acd120(41)
      brack=acd120(36)+acd120(37)+acd120(38)+acd120(39)+acd120(40)+acd120(41)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd120h4
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
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_120:
      coeffs%coeffs_120%c0 = derivative(czip)
      coeffs%coeffs_120%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_120%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_120%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_120%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_120%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_120%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_120%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_120%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_120%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_120%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_120%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_120%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_120%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_120%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_120:
   end subroutine reconstruct_d120
!---#] subroutine reconstruct_d120:
end module     p0_dbaru_epnebbbarg_d120h4l1d
