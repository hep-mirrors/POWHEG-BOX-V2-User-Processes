module     p0_dbaru_epnebbbarg_d176h7l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d176h7l1d.f90
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
   public :: derivative , reconstruct_d176
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd176h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd176
      complex(ki) :: brack
      acd176(1)=abb176(18)
      brack=acd176(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd176h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd176
      complex(ki) :: brack
      acd176(1)=k2(iv1)
      acd176(2)=abb176(15)
      acd176(3)=l5(iv1)
      acd176(4)=abb176(25)
      acd176(5)=l6(iv1)
      acd176(6)=abb176(23)
      acd176(7)=k7(iv1)
      acd176(8)=abb176(21)
      acd176(9)=spvak1k2(iv1)
      acd176(10)=abb176(22)
      acd176(11)=spvak1k3(iv1)
      acd176(12)=abb176(29)
      acd176(13)=spvak1l5(iv1)
      acd176(14)=abb176(33)
      acd176(15)=spvak1l6(iv1)
      acd176(16)=abb176(36)
      acd176(17)=spvak2k3(iv1)
      acd176(18)=abb176(40)
      acd176(19)=spvak2l5(iv1)
      acd176(20)=abb176(28)
      acd176(21)=spvak2l6(iv1)
      acd176(22)=abb176(17)
      acd176(23)=spvak2k7(iv1)
      acd176(24)=abb176(64)
      acd176(25)=spvak4k2(iv1)
      acd176(26)=abb176(50)
      acd176(27)=spvak4l5(iv1)
      acd176(28)=abb176(44)
      acd176(29)=spvak4l6(iv1)
      acd176(30)=abb176(24)
      acd176(31)=spval5k2(iv1)
      acd176(32)=abb176(14)
      acd176(33)=spval5k3(iv1)
      acd176(34)=abb176(41)
      acd176(35)=spval5l6(iv1)
      acd176(36)=abb176(35)
      acd176(37)=spval5k7(iv1)
      acd176(38)=abb176(30)
      acd176(39)=spvak7k2(iv1)
      acd176(40)=abb176(26)
      acd176(41)=spvak7k3(iv1)
      acd176(42)=abb176(20)
      acd176(43)=spvak7l5(iv1)
      acd176(44)=abb176(19)
      acd176(45)=spvak7l6(iv1)
      acd176(46)=abb176(16)
      acd176(47)=acd176(2)*acd176(1)
      acd176(48)=acd176(4)*acd176(3)
      acd176(49)=acd176(6)*acd176(5)
      acd176(50)=acd176(8)*acd176(7)
      acd176(51)=acd176(10)*acd176(9)
      acd176(52)=acd176(12)*acd176(11)
      acd176(53)=acd176(14)*acd176(13)
      acd176(54)=acd176(16)*acd176(15)
      acd176(55)=acd176(18)*acd176(17)
      acd176(56)=acd176(20)*acd176(19)
      acd176(57)=acd176(22)*acd176(21)
      acd176(58)=acd176(24)*acd176(23)
      acd176(59)=acd176(26)*acd176(25)
      acd176(60)=acd176(28)*acd176(27)
      acd176(61)=acd176(30)*acd176(29)
      acd176(62)=acd176(32)*acd176(31)
      acd176(63)=acd176(34)*acd176(33)
      acd176(64)=acd176(36)*acd176(35)
      acd176(65)=acd176(38)*acd176(37)
      acd176(66)=acd176(40)*acd176(39)
      acd176(67)=acd176(42)*acd176(41)
      acd176(68)=acd176(44)*acd176(43)
      acd176(69)=acd176(46)*acd176(45)
      brack=acd176(47)+acd176(48)+acd176(49)+acd176(50)+acd176(51)+acd176(52)+a&
      &cd176(53)+acd176(54)+acd176(55)+acd176(56)+acd176(57)+acd176(58)+acd176(&
      &59)+acd176(60)+acd176(61)+acd176(62)+acd176(63)+acd176(64)+acd176(65)+ac&
      &d176(66)+acd176(67)+acd176(68)+acd176(69)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd176h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd176
      complex(ki) :: brack
      acd176(1)=d(iv1,iv2)
      acd176(2)=abb176(27)
      acd176(3)=k2(iv1)
      acd176(4)=spvak1k2(iv2)
      acd176(5)=abb176(32)
      acd176(6)=spvak1k3(iv2)
      acd176(7)=abb176(42)
      acd176(8)=spvak4k2(iv2)
      acd176(9)=abb176(57)
      acd176(10)=k2(iv2)
      acd176(11)=spvak1k2(iv1)
      acd176(12)=spvak1k3(iv1)
      acd176(13)=spvak4k2(iv1)
      acd176(14)=spvak2l5(iv2)
      acd176(15)=abb176(34)
      acd176(16)=spval5l6(iv2)
      acd176(17)=abb176(38)
      acd176(18)=spvak7l6(iv2)
      acd176(19)=abb176(37)
      acd176(20)=spvak2l5(iv1)
      acd176(21)=spval5l6(iv1)
      acd176(22)=spvak7l6(iv1)
      acd176(23)=abb176(52)
      acd176(24)=abb176(51)
      acd176(25)=abb176(49)
      acd176(26)=abb176(31)
      acd176(27)=abb176(58)
      acd176(28)=abb176(43)
      acd176(29)=acd176(18)*acd176(28)
      acd176(30)=acd176(16)*acd176(27)
      acd176(31)=acd176(14)*acd176(26)
      acd176(32)=acd176(10)*acd176(9)
      acd176(29)=acd176(32)+acd176(31)+acd176(29)+acd176(30)
      acd176(29)=acd176(13)*acd176(29)
      acd176(30)=acd176(18)*acd176(25)
      acd176(31)=acd176(16)*acd176(24)
      acd176(32)=acd176(14)*acd176(23)
      acd176(33)=acd176(10)*acd176(7)
      acd176(30)=acd176(33)+acd176(32)+acd176(30)+acd176(31)
      acd176(30)=acd176(12)*acd176(30)
      acd176(31)=acd176(18)*acd176(19)
      acd176(32)=acd176(16)*acd176(17)
      acd176(33)=acd176(14)*acd176(15)
      acd176(34)=acd176(10)*acd176(5)
      acd176(31)=acd176(34)+acd176(33)+acd176(31)+acd176(32)
      acd176(31)=acd176(11)*acd176(31)
      acd176(32)=acd176(22)*acd176(28)
      acd176(33)=acd176(21)*acd176(27)
      acd176(34)=acd176(20)*acd176(26)
      acd176(35)=acd176(3)*acd176(9)
      acd176(32)=acd176(35)+acd176(34)+acd176(32)+acd176(33)
      acd176(32)=acd176(8)*acd176(32)
      acd176(33)=acd176(22)*acd176(25)
      acd176(34)=acd176(21)*acd176(24)
      acd176(35)=acd176(20)*acd176(23)
      acd176(36)=acd176(3)*acd176(7)
      acd176(33)=acd176(36)+acd176(35)+acd176(33)+acd176(34)
      acd176(33)=acd176(6)*acd176(33)
      acd176(34)=acd176(22)*acd176(19)
      acd176(35)=acd176(21)*acd176(17)
      acd176(36)=acd176(20)*acd176(15)
      acd176(37)=acd176(3)*acd176(5)
      acd176(34)=acd176(37)+acd176(36)+acd176(34)+acd176(35)
      acd176(34)=acd176(4)*acd176(34)
      acd176(35)=acd176(1)*acd176(2)
      brack=acd176(29)+acd176(30)+acd176(31)+acd176(32)+acd176(33)+acd176(34)+2&
      &.0_ki*acd176(35)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd176h7
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
!---#[ subroutine reconstruct_d176:
   subroutine     reconstruct_d176(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_176:
      coeffs%coeffs_176%c0 = derivative(czip)
      coeffs%coeffs_176%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_176%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_176%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_176%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_176%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_176%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_176%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_176%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_176%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_176%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_176%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_176%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_176%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_176%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_176:
   end subroutine reconstruct_d176
!---#] subroutine reconstruct_d176:
end module     p0_dbaru_epnebbbarg_d176h7l1d
