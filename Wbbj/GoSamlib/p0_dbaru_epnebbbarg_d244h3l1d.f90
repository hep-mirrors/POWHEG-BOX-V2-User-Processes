module     p0_dbaru_epnebbbarg_d244h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d244h3l1d.f90
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
   public :: derivative , reconstruct_d244
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd244h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(72) :: acd244
      complex(ki) :: brack
      acd244(1)=dotproduct(k2,qshift)
      acd244(2)=abb244(61)
      acd244(3)=dotproduct(l5,qshift)
      acd244(4)=abb244(113)
      acd244(5)=dotproduct(l6,qshift)
      acd244(6)=dotproduct(k7,qshift)
      acd244(7)=dotproduct(qshift,qshift)
      acd244(8)=abb244(35)
      acd244(9)=dotproduct(qshift,spvak1k2)
      acd244(10)=dotproduct(qshift,spvak2l5)
      acd244(11)=abb244(30)
      acd244(12)=dotproduct(qshift,spvak2l6)
      acd244(13)=abb244(27)
      acd244(14)=dotproduct(qshift,spvak2k7)
      acd244(15)=abb244(25)
      acd244(16)=dotproduct(qshift,spvak1k3)
      acd244(17)=abb244(24)
      acd244(18)=dotproduct(qshift,spvak4k2)
      acd244(19)=abb244(23)
      acd244(20)=abb244(22)
      acd244(21)=abb244(36)
      acd244(22)=abb244(20)
      acd244(23)=abb244(19)
      acd244(24)=abb244(28)
      acd244(25)=abb244(80)
      acd244(26)=abb244(16)
      acd244(27)=dotproduct(qshift,spvak1l5)
      acd244(28)=abb244(18)
      acd244(29)=dotproduct(qshift,spvak1l6)
      acd244(30)=abb244(17)
      acd244(31)=dotproduct(qshift,spvak1k7)
      acd244(32)=abb244(33)
      acd244(33)=dotproduct(qshift,spvak2k3)
      acd244(34)=abb244(29)
      acd244(35)=dotproduct(qshift,spvak4l5)
      acd244(36)=abb244(21)
      acd244(37)=dotproduct(qshift,spvak4l6)
      acd244(38)=abb244(37)
      acd244(39)=dotproduct(qshift,spvak4k7)
      acd244(40)=abb244(38)
      acd244(41)=dotproduct(qshift,spval5k2)
      acd244(42)=abb244(98)
      acd244(43)=dotproduct(qshift,spval5k3)
      acd244(44)=abb244(81)
      acd244(45)=dotproduct(qshift,spval6k2)
      acd244(46)=abb244(140)
      acd244(47)=dotproduct(qshift,spval6k3)
      acd244(48)=abb244(115)
      acd244(49)=dotproduct(qshift,spvak7k2)
      acd244(50)=abb244(130)
      acd244(51)=dotproduct(qshift,spvak7k3)
      acd244(52)=abb244(75)
      acd244(53)=abb244(26)
      acd244(54)=acd244(11)*acd244(9)
      acd244(55)=acd244(17)*acd244(16)
      acd244(56)=acd244(19)*acd244(18)
      acd244(54)=-acd244(20)+acd244(56)+acd244(55)+acd244(54)
      acd244(54)=acd244(10)*acd244(54)
      acd244(55)=acd244(13)*acd244(9)
      acd244(56)=acd244(21)*acd244(16)
      acd244(57)=acd244(22)*acd244(18)
      acd244(55)=-acd244(23)+acd244(57)+acd244(56)+acd244(55)
      acd244(55)=acd244(12)*acd244(55)
      acd244(56)=acd244(15)*acd244(9)
      acd244(57)=acd244(24)*acd244(16)
      acd244(58)=acd244(25)*acd244(18)
      acd244(56)=-acd244(26)+acd244(58)+acd244(57)+acd244(56)
      acd244(56)=acd244(14)*acd244(56)
      acd244(57)=-acd244(6)-acd244(5)-acd244(3)
      acd244(57)=acd244(4)*acd244(57)
      acd244(58)=-acd244(2)*acd244(1)
      acd244(59)=acd244(8)*acd244(7)
      acd244(60)=-acd244(28)*acd244(27)
      acd244(61)=-acd244(30)*acd244(29)
      acd244(62)=-acd244(32)*acd244(31)
      acd244(63)=-acd244(34)*acd244(33)
      acd244(64)=-acd244(36)*acd244(35)
      acd244(65)=-acd244(38)*acd244(37)
      acd244(66)=-acd244(40)*acd244(39)
      acd244(67)=-acd244(42)*acd244(41)
      acd244(68)=-acd244(44)*acd244(43)
      acd244(69)=-acd244(46)*acd244(45)
      acd244(70)=-acd244(48)*acd244(47)
      acd244(71)=-acd244(50)*acd244(49)
      acd244(72)=-acd244(52)*acd244(51)
      brack=acd244(53)+acd244(54)+acd244(55)+acd244(56)+acd244(57)+acd244(58)+a&
      &cd244(59)+acd244(60)+acd244(61)+acd244(62)+acd244(63)+acd244(64)+acd244(&
      &65)+acd244(66)+acd244(67)+acd244(68)+acd244(69)+acd244(70)+acd244(71)+ac&
      &d244(72)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd244h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd244
      complex(ki) :: brack
      acd244(1)=k2(iv1)
      acd244(2)=abb244(61)
      acd244(3)=l5(iv1)
      acd244(4)=abb244(113)
      acd244(5)=l6(iv1)
      acd244(6)=k7(iv1)
      acd244(7)=qshift(iv1)
      acd244(8)=abb244(35)
      acd244(9)=spvak1k2(iv1)
      acd244(10)=dotproduct(qshift,spvak2l5)
      acd244(11)=abb244(30)
      acd244(12)=dotproduct(qshift,spvak2l6)
      acd244(13)=abb244(27)
      acd244(14)=dotproduct(qshift,spvak2k7)
      acd244(15)=abb244(25)
      acd244(16)=spvak2l5(iv1)
      acd244(17)=dotproduct(qshift,spvak1k2)
      acd244(18)=dotproduct(qshift,spvak1k3)
      acd244(19)=abb244(24)
      acd244(20)=dotproduct(qshift,spvak4k2)
      acd244(21)=abb244(23)
      acd244(22)=abb244(22)
      acd244(23)=spvak2l6(iv1)
      acd244(24)=abb244(36)
      acd244(25)=abb244(20)
      acd244(26)=abb244(19)
      acd244(27)=spvak2k7(iv1)
      acd244(28)=abb244(28)
      acd244(29)=abb244(80)
      acd244(30)=abb244(16)
      acd244(31)=spvak1k3(iv1)
      acd244(32)=spvak1l5(iv1)
      acd244(33)=abb244(18)
      acd244(34)=spvak1l6(iv1)
      acd244(35)=abb244(17)
      acd244(36)=spvak1k7(iv1)
      acd244(37)=abb244(33)
      acd244(38)=spvak2k3(iv1)
      acd244(39)=abb244(29)
      acd244(40)=spvak4k2(iv1)
      acd244(41)=spvak4l5(iv1)
      acd244(42)=abb244(21)
      acd244(43)=spvak4l6(iv1)
      acd244(44)=abb244(37)
      acd244(45)=spvak4k7(iv1)
      acd244(46)=abb244(38)
      acd244(47)=spval5k2(iv1)
      acd244(48)=abb244(98)
      acd244(49)=spval5k3(iv1)
      acd244(50)=abb244(81)
      acd244(51)=spval6k2(iv1)
      acd244(52)=abb244(140)
      acd244(53)=spval6k3(iv1)
      acd244(54)=abb244(115)
      acd244(55)=spvak7k2(iv1)
      acd244(56)=abb244(130)
      acd244(57)=spvak7k3(iv1)
      acd244(58)=abb244(75)
      acd244(59)=acd244(14)*acd244(15)
      acd244(60)=acd244(12)*acd244(13)
      acd244(61)=acd244(10)*acd244(11)
      acd244(59)=acd244(61)+acd244(59)+acd244(60)
      acd244(59)=acd244(9)*acd244(59)
      acd244(60)=acd244(20)*acd244(29)
      acd244(61)=acd244(18)*acd244(28)
      acd244(62)=acd244(17)*acd244(15)
      acd244(60)=acd244(62)+acd244(61)-acd244(30)+acd244(60)
      acd244(60)=acd244(27)*acd244(60)
      acd244(61)=acd244(20)*acd244(25)
      acd244(62)=acd244(18)*acd244(24)
      acd244(63)=acd244(17)*acd244(13)
      acd244(61)=acd244(63)+acd244(62)-acd244(26)+acd244(61)
      acd244(61)=acd244(23)*acd244(61)
      acd244(62)=acd244(20)*acd244(21)
      acd244(63)=acd244(18)*acd244(19)
      acd244(64)=acd244(17)*acd244(11)
      acd244(62)=acd244(64)+acd244(63)-acd244(22)+acd244(62)
      acd244(62)=acd244(16)*acd244(62)
      acd244(63)=acd244(40)*acd244(29)
      acd244(64)=acd244(31)*acd244(28)
      acd244(63)=acd244(63)+acd244(64)
      acd244(63)=acd244(14)*acd244(63)
      acd244(64)=acd244(40)*acd244(25)
      acd244(65)=acd244(31)*acd244(24)
      acd244(64)=acd244(64)+acd244(65)
      acd244(64)=acd244(12)*acd244(64)
      acd244(65)=acd244(40)*acd244(21)
      acd244(66)=acd244(31)*acd244(19)
      acd244(65)=acd244(65)+acd244(66)
      acd244(65)=acd244(10)*acd244(65)
      acd244(66)=-acd244(57)*acd244(58)
      acd244(67)=-acd244(55)*acd244(56)
      acd244(68)=-acd244(53)*acd244(54)
      acd244(69)=-acd244(51)*acd244(52)
      acd244(70)=-acd244(49)*acd244(50)
      acd244(71)=-acd244(47)*acd244(48)
      acd244(72)=-acd244(45)*acd244(46)
      acd244(73)=-acd244(43)*acd244(44)
      acd244(74)=-acd244(41)*acd244(42)
      acd244(75)=-acd244(38)*acd244(39)
      acd244(76)=-acd244(36)*acd244(37)
      acd244(77)=-acd244(34)*acd244(35)
      acd244(78)=-acd244(32)*acd244(33)
      acd244(79)=acd244(7)*acd244(8)
      acd244(80)=-acd244(1)*acd244(2)
      acd244(81)=-acd244(3)-acd244(6)-acd244(5)
      acd244(81)=acd244(4)*acd244(81)
      brack=acd244(59)+acd244(60)+acd244(61)+acd244(62)+acd244(63)+acd244(64)+a&
      &cd244(65)+acd244(66)+acd244(67)+acd244(68)+acd244(69)+acd244(70)+acd244(&
      &71)+acd244(72)+acd244(73)+acd244(74)+acd244(75)+acd244(76)+acd244(77)+ac&
      &d244(78)+2.0_ki*acd244(79)+acd244(80)+acd244(81)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd244h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(32) :: acd244
      complex(ki) :: brack
      acd244(1)=d(iv1,iv2)
      acd244(2)=abb244(35)
      acd244(3)=spvak1k2(iv1)
      acd244(4)=spvak2l5(iv2)
      acd244(5)=abb244(30)
      acd244(6)=spvak2l6(iv2)
      acd244(7)=abb244(27)
      acd244(8)=spvak2k7(iv2)
      acd244(9)=abb244(25)
      acd244(10)=spvak1k2(iv2)
      acd244(11)=spvak2l5(iv1)
      acd244(12)=spvak2l6(iv1)
      acd244(13)=spvak2k7(iv1)
      acd244(14)=spvak1k3(iv2)
      acd244(15)=abb244(24)
      acd244(16)=spvak4k2(iv2)
      acd244(17)=abb244(23)
      acd244(18)=spvak1k3(iv1)
      acd244(19)=spvak4k2(iv1)
      acd244(20)=abb244(36)
      acd244(21)=abb244(20)
      acd244(22)=abb244(28)
      acd244(23)=abb244(80)
      acd244(24)=acd244(13)*acd244(9)
      acd244(25)=acd244(12)*acd244(7)
      acd244(26)=acd244(11)*acd244(5)
      acd244(24)=acd244(26)+acd244(24)+acd244(25)
      acd244(24)=acd244(10)*acd244(24)
      acd244(25)=acd244(8)*acd244(9)
      acd244(26)=acd244(6)*acd244(7)
      acd244(27)=acd244(4)*acd244(5)
      acd244(25)=acd244(27)+acd244(25)+acd244(26)
      acd244(25)=acd244(3)*acd244(25)
      acd244(26)=acd244(16)*acd244(23)
      acd244(27)=acd244(14)*acd244(22)
      acd244(26)=acd244(26)+acd244(27)
      acd244(26)=acd244(13)*acd244(26)
      acd244(27)=acd244(16)*acd244(21)
      acd244(28)=acd244(14)*acd244(20)
      acd244(27)=acd244(27)+acd244(28)
      acd244(27)=acd244(12)*acd244(27)
      acd244(28)=acd244(16)*acd244(17)
      acd244(29)=acd244(14)*acd244(15)
      acd244(28)=acd244(28)+acd244(29)
      acd244(28)=acd244(11)*acd244(28)
      acd244(29)=acd244(19)*acd244(23)
      acd244(30)=acd244(18)*acd244(22)
      acd244(29)=acd244(29)+acd244(30)
      acd244(29)=acd244(8)*acd244(29)
      acd244(30)=acd244(19)*acd244(21)
      acd244(31)=acd244(18)*acd244(20)
      acd244(30)=acd244(30)+acd244(31)
      acd244(30)=acd244(6)*acd244(30)
      acd244(31)=acd244(19)*acd244(17)
      acd244(32)=acd244(18)*acd244(15)
      acd244(31)=acd244(31)+acd244(32)
      acd244(31)=acd244(4)*acd244(31)
      acd244(32)=acd244(1)*acd244(2)
      brack=acd244(24)+acd244(25)+acd244(26)+acd244(27)+acd244(28)+acd244(29)+a&
      &cd244(30)+acd244(31)+2.0_ki*acd244(32)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd244h3
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
      qshift = k7+k6
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
!---#[ subroutine reconstruct_d244:
   subroutine     reconstruct_d244(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_244:
      coeffs%coeffs_244%c0 = derivative(czip)
      coeffs%coeffs_244%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_244%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_244%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_244%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_244%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_244%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_244%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_244%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_244%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_244%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_244%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_244%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_244%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_244%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_244:
   end subroutine reconstruct_d244
!---#] subroutine reconstruct_d244:
end module     p0_dbaru_epnebbbarg_d244h3l1d
